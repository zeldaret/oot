
build/src/overlays/actors/ovl_Boss_Tw/z_boss_tw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80938CD0>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afb00018 	sw	s0,24(sp)
       8:	87b00042 	lh	s0,66(sp)
       c:	3c030001 	lui	v1,0x1
      10:	afbf001c 	sw	ra,28(sp)
      14:	00641821 	addu	v1,v1,a0
      18:	8c631e10 	lw	v1,7696(v1)
      1c:	1a000030 	blez	s0,e0 <func_80938CD0+0xe0>
      20:	00001025 	move	v0,zero
      24:	906e0000 	lbu	t6,0(v1)
      28:	24420001 	addiu	v0,v0,1
      2c:	00021400 	sll	v0,v0,0x10
      30:	15c00028 	bnez	t6,d4 <func_80938CD0+0xd4>
      34:	00021403 	sra	v0,v0,0x10
      38:	240f0001 	li	t7,1
      3c:	a06f0000 	sb	t7,0(v1)
      40:	8cb90000 	lw	t9,0(a1)
      44:	3c01447a 	lui	at,0x447a
      48:	44813000 	mtc1	at,$f6
      4c:	ac790004 	sw	t9,4(v1)
      50:	8cb80004 	lw	t8,4(a1)
      54:	240c00ff 	li	t4,255
      58:	3c014120 	lui	at,0x4120
      5c:	ac780008 	sw	t8,8(v1)
      60:	8cb90008 	lw	t9,8(a1)
      64:	44816000 	mtc1	at,$f12
      68:	ac79000c 	sw	t9,12(v1)
      6c:	8cc90000 	lw	t1,0(a2)
      70:	ac690010 	sw	t1,16(v1)
      74:	8cc80004 	lw	t0,4(a2)
      78:	ac680014 	sw	t0,20(v1)
      7c:	8cc90008 	lw	t1,8(a2)
      80:	ac690018 	sw	t1,24(v1)
      84:	8ceb0000 	lw	t3,0(a3)
      88:	ac6b001c 	sw	t3,28(v1)
      8c:	8cea0004 	lw	t2,4(a3)
      90:	ac6a0020 	sw	t2,32(v1)
      94:	8ceb0008 	lw	t3,8(a3)
      98:	ac6b0024 	sw	t3,36(v1)
      9c:	c7a40038 	lwc1	$f4,56(sp)
      a0:	a46c002c 	sh	t4,44(v1)
      a4:	46062203 	div.s	$f8,$f4,$f6
      a8:	e4680034 	swc1	$f8,52(v1)
      ac:	0c000000 	jal	0 <func_80938CD0>
      b0:	afa30020 	sw	v1,32(sp)
      b4:	4600028d 	trunc.w.s	$f10,$f0
      b8:	8fa30020 	lw	v1,32(sp)
      bc:	44185000 	mfc1	t8,$f10
      c0:	00000000 	nop
      c4:	a0780001 	sb	t8,1(v1)
      c8:	87b9003e 	lh	t9,62(sp)
      cc:	10000004 	b	e0 <func_80938CD0+0xe0>
      d0:	a479002e 	sh	t9,46(v1)
      d4:	0050082a 	slt	at,v0,s0
      d8:	1420ffd2 	bnez	at,24 <func_80938CD0+0x24>
      dc:	24630048 	addiu	v1,v1,72
      e0:	8fbf001c 	lw	ra,28(sp)
      e4:	8fb00018 	lw	s0,24(sp)
      e8:	27bd0028 	addiu	sp,sp,40
      ec:	03e00008 	jr	ra
      f0:	00000000 	nop

000000f4 <func_80938DC4>:
      f4:	27bdffd8 	addiu	sp,sp,-40
      f8:	afb00018 	sw	s0,24(sp)
      fc:	87b0004a 	lh	s0,74(sp)
     100:	afa5002c 	sw	a1,44(sp)
     104:	3c030001 	lui	v1,0x1
     108:	00052c00 	sll	a1,a1,0x10
     10c:	afbf001c 	sw	ra,28(sp)
     110:	00641821 	addu	v1,v1,a0
     114:	00052c03 	sra	a1,a1,0x10
     118:	8c631e10 	lw	v1,7696(v1)
     11c:	1a00002f 	blez	s0,1dc <func_80938DC4+0xe8>
     120:	00001025 	move	v0,zero
     124:	906e0000 	lbu	t6,0(v1)
     128:	24420001 	addiu	v0,v0,1
     12c:	00021400 	sll	v0,v0,0x10
     130:	15c00027 	bnez	t6,1d0 <func_80938DC4+0xdc>
     134:	00021403 	sra	v0,v0,0x10
     138:	a0650000 	sb	a1,0(v1)
     13c:	8cd80000 	lw	t8,0(a2)
     140:	3c01447a 	lui	at,0x447a
     144:	44813000 	mtc1	at,$f6
     148:	ac780004 	sw	t8,4(v1)
     14c:	8ccf0004 	lw	t7,4(a2)
     150:	3c0142c8 	lui	at,0x42c8
     154:	44816000 	mtc1	at,$f12
     158:	ac6f0008 	sw	t7,8(v1)
     15c:	8cd80008 	lw	t8,8(a2)
     160:	ac78000c 	sw	t8,12(v1)
     164:	8ce80000 	lw	t0,0(a3)
     168:	ac680010 	sw	t0,16(v1)
     16c:	8cf90004 	lw	t9,4(a3)
     170:	ac790014 	sw	t9,20(v1)
     174:	8ce80008 	lw	t0,8(a3)
     178:	ac680018 	sw	t0,24(v1)
     17c:	8fa90038 	lw	t1,56(sp)
     180:	8d2b0000 	lw	t3,0(t1)
     184:	ac6b001c 	sw	t3,28(v1)
     188:	8d2a0004 	lw	t2,4(t1)
     18c:	ac6a0020 	sw	t2,32(v1)
     190:	8d2b0008 	lw	t3,8(t1)
     194:	ac6b0024 	sw	t3,36(v1)
     198:	c7a4003c 	lwc1	$f4,60(sp)
     19c:	46062203 	div.s	$f8,$f4,$f6
     1a0:	e4680034 	swc1	$f8,52(v1)
     1a4:	87ac0046 	lh	t4,70(sp)
     1a8:	a46c002e 	sh	t4,46(v1)
     1ac:	87ad0042 	lh	t5,66(sp)
     1b0:	a46d002c 	sh	t5,44(v1)
     1b4:	0c000000 	jal	0 <func_80938CD0>
     1b8:	afa30020 	sw	v1,32(sp)
     1bc:	4600028d 	trunc.w.s	$f10,$f0
     1c0:	8fa30020 	lw	v1,32(sp)
     1c4:	44195000 	mfc1	t9,$f10
     1c8:	10000004 	b	1dc <func_80938DC4+0xe8>
     1cc:	a0790001 	sb	t9,1(v1)
     1d0:	0050082a 	slt	at,v0,s0
     1d4:	1420ffd3 	bnez	at,124 <func_80938DC4+0x30>
     1d8:	24630048 	addiu	v1,v1,72
     1dc:	8fbf001c 	lw	ra,28(sp)
     1e0:	8fb00018 	lw	s0,24(sp)
     1e4:	27bd0028 	addiu	sp,sp,40
     1e8:	03e00008 	jr	ra
     1ec:	00000000 	nop

000001f0 <func_80938EC0>:
     1f0:	27bdffe0 	addiu	sp,sp,-32
     1f4:	44867000 	mtc1	a2,$f14
     1f8:	87a6003e 	lh	a2,62(sp)
     1fc:	3c030001 	lui	v1,0x1
     200:	afbf0014 	sw	ra,20(sp)
     204:	afa7002c 	sw	a3,44(sp)
     208:	00641821 	addu	v1,v1,a0
     20c:	8c631e10 	lw	v1,7696(v1)
     210:	18c00034 	blez	a2,2e4 <func_80938EC0+0xf4>
     214:	00001025 	move	v0,zero
     218:	906e0000 	lbu	t6,0(v1)
     21c:	24420001 	addiu	v0,v0,1
     220:	00021400 	sll	v0,v0,0x10
     224:	15c0002c 	bnez	t6,2d8 <func_80938EC0+0xe8>
     228:	00021403 	sra	v0,v0,0x10
     22c:	3c010000 	lui	at,0x0
     230:	c4200000 	lwc1	$f0,0(at)
     234:	240f0004 	li	t7,4
     238:	a06f0000 	sb	t7,0(v1)
     23c:	8cb90000 	lw	t9,0(a1)
     240:	3c020000 	lui	v0,0x0
     244:	24420000 	addiu	v0,v0,0
     248:	ac790004 	sw	t9,4(v1)
     24c:	8cb80004 	lw	t8,4(a1)
     250:	46007102 	mul.s	$f4,$f14,$f0
     254:	3c010000 	lui	at,0x0
     258:	ac780008 	sw	t8,8(v1)
     25c:	8cb90008 	lw	t9,8(a1)
     260:	ac79000c 	sw	t9,12(v1)
     264:	8c490000 	lw	t1,0(v0)
     268:	ac690010 	sw	t1,16(v1)
     26c:	8c480004 	lw	t0,4(v0)
     270:	ac680014 	sw	t0,20(v1)
     274:	8c490008 	lw	t1,8(v0)
     278:	ac690018 	sw	t1,24(v1)
     27c:	8c4b0000 	lw	t3,0(v0)
     280:	ac6b001c 	sw	t3,28(v1)
     284:	8c4a0004 	lw	t2,4(v0)
     288:	ac6a0020 	sw	t2,32(v1)
     28c:	8c4b0008 	lw	t3,8(v0)
     290:	e4640034 	swc1	$f4,52(v1)
     294:	ac6b0024 	sw	t3,36(v1)
     298:	c7a6002c 	lwc1	$f6,44(sp)
     29c:	46003202 	mul.s	$f8,$f6,$f0
     2a0:	e4680038 	swc1	$f8,56(v1)
     2a4:	87ac0036 	lh	t4,54(sp)
     2a8:	a46c002e 	sh	t4,46(v1)
     2ac:	87ad003a 	lh	t5,58(sp)
     2b0:	a46d0030 	sh	t5,48(v1)
     2b4:	87ae0032 	lh	t6,50(sp)
     2b8:	a46e002c 	sh	t6,44(v1)
     2bc:	afa30018 	sw	v1,24(sp)
     2c0:	0c000000 	jal	0 <func_80938CD0>
     2c4:	c42c0000 	lwc1	$f12,0(at)
     2c8:	8fa30018 	lw	v1,24(sp)
     2cc:	e460003c 	swc1	$f0,60(v1)
     2d0:	10000004 	b	2e4 <func_80938EC0+0xf4>
     2d4:	a0600001 	sb	zero,1(v1)
     2d8:	0046082a 	slt	at,v0,a2
     2dc:	1420ffce 	bnez	at,218 <func_80938EC0+0x28>
     2e0:	24630048 	addiu	v1,v1,72
     2e4:	8fbf0014 	lw	ra,20(sp)
     2e8:	27bd0020 	addiu	sp,sp,32
     2ec:	03e00008 	jr	ra
     2f0:	00000000 	nop

000002f4 <func_80938FC4>:
     2f4:	3c020001 	lui	v0,0x1
     2f8:	00441021 	addu	v0,v0,a0
     2fc:	8c421e10 	lw	v0,7696(v0)
     300:	00001825 	move	v1,zero
     304:	904e0000 	lbu	t6,0(v0)
     308:	24630001 	addiu	v1,v1,1
     30c:	00031c00 	sll	v1,v1,0x10
     310:	15c0001e 	bnez	t6,38c <func_80938FC4+0x98>
     314:	00031c03 	sra	v1,v1,0x10
     318:	3c030000 	lui	v1,0x0
     31c:	240f0005 	li	t7,5
     320:	24630000 	addiu	v1,v1,0
     324:	a04f0000 	sb	t7,0(v0)
     328:	8c790000 	lw	t9,0(v1)
     32c:	44800000 	mtc1	zero,$f0
     330:	240a0064 	li	t2,100
     334:	ac590010 	sw	t9,16(v0)
     338:	8c780004 	lw	t8,4(v1)
     33c:	240b0014 	li	t3,20
     340:	ac580014 	sw	t8,20(v0)
     344:	8c790008 	lw	t9,8(v1)
     348:	ac590018 	sw	t9,24(v0)
     34c:	8c690000 	lw	t1,0(v1)
     350:	ac49001c 	sw	t1,28(v0)
     354:	8c680004 	lw	t0,4(v1)
     358:	ac480020 	sw	t0,32(v0)
     35c:	8c690008 	lw	t1,8(v1)
     360:	a0400001 	sb	zero,1(v0)
     364:	ac450044 	sw	a1,68(v0)
     368:	e4400038 	swc1	$f0,56(v0)
     36c:	e4400034 	swc1	$f0,52(v0)
     370:	e440003c 	swc1	$f0,60(v0)
     374:	14a00003 	bnez	a1,384 <func_80938FC4+0x90>
     378:	ac490024 	sw	t1,36(v0)
     37c:	03e00008 	jr	ra
     380:	a44a002e 	sh	t2,46(v0)
     384:	03e00008 	jr	ra
     388:	a44b002e 	sh	t3,46(v0)
     38c:	28610096 	slti	at,v1,150
     390:	1420ffdc 	bnez	at,304 <func_80938FC4+0x10>
     394:	24420048 	addiu	v0,v0,72
     398:	03e00008 	jr	ra
     39c:	00000000 	nop

000003a0 <func_80939070>:
     3a0:	27bdffe0 	addiu	sp,sp,-32
     3a4:	3c020001 	lui	v0,0x1
     3a8:	afbf0014 	sw	ra,20(sp)
     3ac:	00441021 	addu	v0,v0,a0
     3b0:	8c421e10 	lw	v0,7696(v0)
     3b4:	00001825 	move	v1,zero
     3b8:	904e0000 	lbu	t6,0(v0)
     3bc:	24630001 	addiu	v1,v1,1
     3c0:	00031c00 	sll	v1,v1,0x10
     3c4:	15c00025 	bnez	t6,45c <func_80939070+0xbc>
     3c8:	00031c03 	sra	v1,v1,0x10
     3cc:	240f0006 	li	t7,6
     3d0:	a04f0000 	sb	t7,0(v0)
     3d4:	8cb90000 	lw	t9,0(a1)
     3d8:	3c01447a 	lui	at,0x447a
     3dc:	44816000 	mtc1	at,$f12
     3e0:	ac590004 	sw	t9,4(v0)
     3e4:	8cb80004 	lw	t8,4(a1)
     3e8:	ac580008 	sw	t8,8(v0)
     3ec:	8cb90008 	lw	t9,8(a1)
     3f0:	ac59000c 	sw	t9,12(v0)
     3f4:	8cc90000 	lw	t1,0(a2)
     3f8:	ac490010 	sw	t1,16(v0)
     3fc:	8cc80004 	lw	t0,4(a2)
     400:	ac480014 	sw	t0,20(v0)
     404:	8cc90008 	lw	t1,8(a2)
     408:	ac490018 	sw	t1,24(v0)
     40c:	8ceb0000 	lw	t3,0(a3)
     410:	ac4b001c 	sw	t3,28(v0)
     414:	8cea0004 	lw	t2,4(a3)
     418:	ac4a0020 	sw	t2,32(v0)
     41c:	8ceb0008 	lw	t3,8(a3)
     420:	ac4b0024 	sw	t3,36(v0)
     424:	c7a40030 	lwc1	$f4,48(sp)
     428:	460c2183 	div.s	$f6,$f4,$f12
     42c:	e4460034 	swc1	$f6,52(v0)
     430:	87ac0036 	lh	t4,54(sp)
     434:	a4400030 	sh	zero,48(v0)
     438:	a440002c 	sh	zero,44(v0)
     43c:	a44c002e 	sh	t4,46(v0)
     440:	0c000000 	jal	0 <func_80938CD0>
     444:	afa20018 	sw	v0,24(sp)
     448:	4600020d 	trunc.w.s	$f8,$f0
     44c:	8fa20018 	lw	v0,24(sp)
     450:	44184000 	mfc1	t8,$f8
     454:	10000004 	b	468 <func_80939070+0xc8>
     458:	a0580001 	sb	t8,1(v0)
     45c:	28610096 	slti	at,v1,150
     460:	1420ffd5 	bnez	at,3b8 <func_80939070+0x18>
     464:	24420048 	addiu	v0,v0,72
     468:	8fbf0014 	lw	ra,20(sp)
     46c:	27bd0020 	addiu	sp,sp,32
     470:	03e00008 	jr	ra
     474:	00000000 	nop

00000478 <func_80939148>:
     478:	27bdffe0 	addiu	sp,sp,-32
     47c:	3c030001 	lui	v1,0x1
     480:	afbf0014 	sw	ra,20(sp)
     484:	afa7002c 	sw	a3,44(sp)
     488:	00641821 	addu	v1,v1,a0
     48c:	44867000 	mtc1	a2,$f14
     490:	8c631e10 	lw	v1,7696(v1)
     494:	00001025 	move	v0,zero
     498:	906e0000 	lbu	t6,0(v1)
     49c:	24420001 	addiu	v0,v0,1
     4a0:	00021400 	sll	v0,v0,0x10
     4a4:	15c0002f 	bnez	t6,564 <func_80939148+0xec>
     4a8:	00021403 	sra	v0,v0,0x10
     4ac:	240f0007 	li	t7,7
     4b0:	a06f0000 	sb	t7,0(v1)
     4b4:	8cb90000 	lw	t9,0(a1)
     4b8:	3c01447a 	lui	at,0x447a
     4bc:	44812000 	mtc1	at,$f4
     4c0:	ac790004 	sw	t9,4(v1)
     4c4:	8cb80004 	lw	t8,4(a1)
     4c8:	3c020000 	lui	v0,0x0
     4cc:	24420000 	addiu	v0,v0,0
     4d0:	ac780008 	sw	t8,8(v1)
     4d4:	8cb90008 	lw	t9,8(a1)
     4d8:	46047183 	div.s	$f6,$f14,$f4
     4dc:	3c010000 	lui	at,0x0
     4e0:	ac79000c 	sw	t9,12(v1)
     4e4:	8c490000 	lw	t1,0(v0)
     4e8:	ac690010 	sw	t1,16(v1)
     4ec:	8c480004 	lw	t0,4(v0)
     4f0:	ac680014 	sw	t0,20(v1)
     4f4:	8c490008 	lw	t1,8(v0)
     4f8:	ac690018 	sw	t1,24(v1)
     4fc:	8c4b0000 	lw	t3,0(v0)
     500:	ac6b001c 	sw	t3,28(v1)
     504:	8c4a0004 	lw	t2,4(v0)
     508:	ac6a0020 	sw	t2,32(v1)
     50c:	8c4b0008 	lw	t3,8(v0)
     510:	e4660034 	swc1	$f6,52(v1)
     514:	ac6b0024 	sw	t3,36(v1)
     518:	87ac0032 	lh	t4,50(sp)
     51c:	a4600030 	sh	zero,48(v1)
     520:	a46c002e 	sh	t4,46(v1)
     524:	c7a8002c 	lwc1	$f8,44(sp)
     528:	e4680038 	swc1	$f8,56(v1)
     52c:	afa30018 	sw	v1,24(sp)
     530:	0c000000 	jal	0 <func_80938CD0>
     534:	c42c0000 	lwc1	$f12,0(at)
     538:	8fa30018 	lw	v1,24(sp)
     53c:	3c01447a 	lui	at,0x447a
     540:	44816000 	mtc1	at,$f12
     544:	e460003c 	swc1	$f0,60(v1)
     548:	0c000000 	jal	0 <func_80938CD0>
     54c:	a460002c 	sh	zero,44(v1)
     550:	4600028d 	trunc.w.s	$f10,$f0
     554:	8fa30018 	lw	v1,24(sp)
     558:	44185000 	mfc1	t8,$f10
     55c:	10000004 	b	570 <func_80939148+0xf8>
     560:	a0780001 	sb	t8,1(v1)
     564:	28410096 	slti	at,v0,150
     568:	1420ffcb 	bnez	at,498 <func_80939148+0x20>
     56c:	24630048 	addiu	v1,v1,72
     570:	8fbf0014 	lw	ra,20(sp)
     574:	27bd0020 	addiu	sp,sp,32
     578:	03e00008 	jr	ra
     57c:	00000000 	nop

00000580 <func_80939250>:
     580:	27bdffe0 	addiu	sp,sp,-32
     584:	3c020001 	lui	v0,0x1
     588:	afbf0014 	sw	ra,20(sp)
     58c:	00441021 	addu	v0,v0,a0
     590:	8c421e10 	lw	v0,7696(v0)
     594:	00001825 	move	v1,zero
     598:	904e0000 	lbu	t6,0(v0)
     59c:	24630001 	addiu	v1,v1,1
     5a0:	00031c00 	sll	v1,v1,0x10
     5a4:	15c00029 	bnez	t6,64c <func_80939250+0xcc>
     5a8:	00031c03 	sra	v1,v1,0x10
     5ac:	240f0008 	li	t7,8
     5b0:	a04f0000 	sb	t7,0(v0)
     5b4:	8cb90000 	lw	t9,0(a1)
     5b8:	3c01447a 	lui	at,0x447a
     5bc:	44816000 	mtc1	at,$f12
     5c0:	ac590004 	sw	t9,4(v0)
     5c4:	8cb80004 	lw	t8,4(a1)
     5c8:	ac580008 	sw	t8,8(v0)
     5cc:	8cb90008 	lw	t9,8(a1)
     5d0:	ac59000c 	sw	t9,12(v0)
     5d4:	8cc90000 	lw	t1,0(a2)
     5d8:	ac490010 	sw	t1,16(v0)
     5dc:	8cc80004 	lw	t0,4(a2)
     5e0:	ac480014 	sw	t0,20(v0)
     5e4:	8cc90008 	lw	t1,8(a2)
     5e8:	ac490018 	sw	t1,24(v0)
     5ec:	8ceb0000 	lw	t3,0(a3)
     5f0:	ac4b001c 	sw	t3,28(v0)
     5f4:	8cea0004 	lw	t2,4(a3)
     5f8:	ac4a0020 	sw	t2,32(v0)
     5fc:	8ceb0008 	lw	t3,8(a3)
     600:	ac4b0024 	sw	t3,36(v0)
     604:	c7a40030 	lwc1	$f4,48(sp)
     608:	460c2183 	div.s	$f6,$f4,$f12
     60c:	e4460034 	swc1	$f6,52(v0)
     610:	c7a80034 	lwc1	$f8,52(sp)
     614:	460c4283 	div.s	$f10,$f8,$f12
     618:	e44a0038 	swc1	$f10,56(v0)
     61c:	87ac003e 	lh	t4,62(sp)
     620:	a4400030 	sh	zero,48(v0)
     624:	a44c002e 	sh	t4,46(v0)
     628:	87ad003a 	lh	t5,58(sp)
     62c:	a44d002c 	sh	t5,44(v0)
     630:	0c000000 	jal	0 <func_80938CD0>
     634:	afa20018 	sw	v0,24(sp)
     638:	4600040d 	trunc.w.s	$f16,$f0
     63c:	8fa20018 	lw	v0,24(sp)
     640:	44198000 	mfc1	t9,$f16
     644:	10000004 	b	658 <func_80939250+0xd8>
     648:	a0590001 	sb	t9,1(v0)
     64c:	28610096 	slti	at,v1,150
     650:	1420ffd1 	bnez	at,598 <func_80939250+0x18>
     654:	24420048 	addiu	v0,v0,72
     658:	8fbf0014 	lw	ra,20(sp)
     65c:	27bd0020 	addiu	sp,sp,32
     660:	03e00008 	jr	ra
     664:	00000000 	nop

00000668 <func_80939338>:
     668:	27bdffa0 	addiu	sp,sp,-96
     66c:	afbf005c 	sw	ra,92(sp)
     670:	afb70058 	sw	s7,88(sp)
     674:	afb60054 	sw	s6,84(sp)
     678:	afb50050 	sw	s5,80(sp)
     67c:	afb4004c 	sw	s4,76(sp)
     680:	afb30048 	sw	s3,72(sp)
     684:	afb20044 	sw	s2,68(sp)
     688:	afb10040 	sw	s1,64(sp)
     68c:	afb0003c 	sw	s0,60(sp)
     690:	f7bc0030 	sdc1	$f28,48(sp)
     694:	f7ba0028 	sdc1	$f26,40(sp)
     698:	f7b80020 	sdc1	$f24,32(sp)
     69c:	f7b60018 	sdc1	$f22,24(sp)
     6a0:	f7b40010 	sdc1	$f20,16(sp)
     6a4:	afa60068 	sw	a2,104(sp)
     6a8:	8c821c44 	lw	v0,7236(a0)
     6ac:	3c150000 	lui	s5,0x0
     6b0:	26b50000 	addiu	s5,s5,0
     6b4:	8c4f09bc 	lw	t7,2492(v0)
     6b8:	3c010000 	lui	at,0x0
     6bc:	0006a400 	sll	s4,a2,0x10
     6c0:	aeaf0000 	sw	t7,0(s5)
     6c4:	8c4e09c0 	lw	t6,2496(v0)
     6c8:	3c120000 	lui	s2,0x0
     6cc:	4485b000 	mtc1	a1,$f22
     6d0:	aeae0004 	sw	t6,4(s5)
     6d4:	8c4f09c4 	lw	t7,2500(v0)
     6d8:	4480e000 	mtc1	zero,$f28
     6dc:	0014a403 	sra	s4,s4,0x10
     6e0:	aeaf0008 	sw	t7,8(s5)
     6e4:	845800b6 	lh	t8,182(v0)
     6e8:	26520000 	addiu	s2,s2,0
     6ec:	00008825 	move	s1,zero
     6f0:	a4380000 	sh	t8,0(at)
     6f4:	3c010001 	lui	at,0x1
     6f8:	00819821 	addu	s3,a0,at
     6fc:	3c010000 	lui	at,0x0
     700:	c43a0000 	lwc1	$f26,0(at)
     704:	3c010000 	lui	at,0x0
     708:	c4380000 	lwc1	$f24,0(at)
     70c:	3c01447a 	lui	at,0x447a
     710:	4481a000 	mtc1	at,$f20
     714:	24160009 	li	s6,9
     718:	241700ff 	li	s7,255
     71c:	8e701e10 	lw	s0,7696(s3)
     720:	00001025 	move	v0,zero
     724:	92190000 	lbu	t9,0(s0)
     728:	24420001 	addiu	v0,v0,1
     72c:	00021400 	sll	v0,v0,0x10
     730:	17200025 	bnez	t9,7c8 <func_80939338+0x160>
     734:	00021403 	sra	v0,v0,0x10
     738:	a2160000 	sb	s6,0(s0)
     73c:	8ea90000 	lw	t1,0(s5)
     740:	4614b283 	div.s	$f10,$f22,$f20
     744:	44912000 	mtc1	s1,$f4
     748:	ae090004 	sw	t1,4(s0)
     74c:	8ea80004 	lw	t0,4(s5)
     750:	468021a0 	cvt.s.w	$f6,$f4
     754:	4600a306 	mov.s	$f12,$f20
     758:	ae080008 	sw	t0,8(s0)
     75c:	8ea90008 	lw	t1,8(s5)
     760:	ae09000c 	sw	t1,12(s0)
     764:	8e4b0000 	lw	t3,0(s2)
     768:	ae0b0010 	sw	t3,16(s0)
     76c:	8e4a0004 	lw	t2,4(s2)
     770:	ae0a0014 	sw	t2,20(s0)
     774:	8e4b0008 	lw	t3,8(s2)
     778:	ae0b0018 	sw	t3,24(s0)
     77c:	8e4d0000 	lw	t5,0(s2)
     780:	46183202 	mul.s	$f8,$f6,$f24
     784:	ae0d001c 	sw	t5,28(s0)
     788:	8e4c0004 	lw	t4,4(s2)
     78c:	ae0c0020 	sw	t4,32(s0)
     790:	8e4d0008 	lw	t5,8(s2)
     794:	e608003c 	swc1	$f8,60(s0)
     798:	e61a0040 	swc1	$f26,64(s0)
     79c:	e61c0038 	swc1	$f28,56(s0)
     7a0:	e60a0034 	swc1	$f10,52(s0)
     7a4:	a614002e 	sh	s4,46(s0)
     7a8:	a6000030 	sh	zero,48(s0)
     7ac:	a617002c 	sh	s7,44(s0)
     7b0:	0c000000 	jal	0 <func_80938CD0>
     7b4:	ae0d0024 	sw	t5,36(s0)
     7b8:	4600040d 	trunc.w.s	$f16,$f0
     7bc:	44198000 	mfc1	t9,$f16
     7c0:	10000004 	b	7d4 <func_80939338+0x16c>
     7c4:	a2190001 	sb	t9,1(s0)
     7c8:	28410096 	slti	at,v0,150
     7cc:	1420ffd5 	bnez	at,724 <func_80939338+0xbc>
     7d0:	26100048 	addiu	s0,s0,72
     7d4:	26310001 	addiu	s1,s1,1
     7d8:	00118c00 	sll	s1,s1,0x10
     7dc:	00118c03 	sra	s1,s1,0x10
     7e0:	2a210008 	slti	at,s1,8
     7e4:	5420ffce 	bnezl	at,720 <func_80939338+0xb8>
     7e8:	8e701e10 	lw	s0,7696(s3)
     7ec:	8fbf005c 	lw	ra,92(sp)
     7f0:	d7b40010 	ldc1	$f20,16(sp)
     7f4:	d7b60018 	ldc1	$f22,24(sp)
     7f8:	d7b80020 	ldc1	$f24,32(sp)
     7fc:	d7ba0028 	ldc1	$f26,40(sp)
     800:	d7bc0030 	ldc1	$f28,48(sp)
     804:	8fb0003c 	lw	s0,60(sp)
     808:	8fb10040 	lw	s1,64(sp)
     80c:	8fb20044 	lw	s2,68(sp)
     810:	8fb30048 	lw	s3,72(sp)
     814:	8fb4004c 	lw	s4,76(sp)
     818:	8fb50050 	lw	s5,80(sp)
     81c:	8fb60054 	lw	s6,84(sp)
     820:	8fb70058 	lw	s7,88(sp)
     824:	03e00008 	jr	ra
     828:	27bd0060 	addiu	sp,sp,96

0000082c <func_809394FC>:
     82c:	27bdffa0 	addiu	sp,sp,-96
     830:	afbf005c 	sw	ra,92(sp)
     834:	afb70058 	sw	s7,88(sp)
     838:	afb60054 	sw	s6,84(sp)
     83c:	afb50050 	sw	s5,80(sp)
     840:	afb4004c 	sw	s4,76(sp)
     844:	afb30048 	sw	s3,72(sp)
     848:	afb20044 	sw	s2,68(sp)
     84c:	afb10040 	sw	s1,64(sp)
     850:	afb0003c 	sw	s0,60(sp)
     854:	f7bc0030 	sdc1	$f28,48(sp)
     858:	f7ba0028 	sdc1	$f26,40(sp)
     85c:	f7b80020 	sdc1	$f24,32(sp)
     860:	f7b60018 	sdc1	$f22,24(sp)
     864:	f7b40010 	sdc1	$f20,16(sp)
     868:	afa60068 	sw	a2,104(sp)
     86c:	8c821c44 	lw	v0,7236(a0)
     870:	3c150000 	lui	s5,0x0
     874:	26b50000 	addiu	s5,s5,0
     878:	8c4f09bc 	lw	t7,2492(v0)
     87c:	3c010000 	lui	at,0x0
     880:	0006a400 	sll	s4,a2,0x10
     884:	aeaf0000 	sw	t7,0(s5)
     888:	8c4e09c0 	lw	t6,2496(v0)
     88c:	3c120000 	lui	s2,0x0
     890:	4485b000 	mtc1	a1,$f22
     894:	aeae0004 	sw	t6,4(s5)
     898:	8c4f09c4 	lw	t7,2500(v0)
     89c:	4480e000 	mtc1	zero,$f28
     8a0:	0014a403 	sra	s4,s4,0x10
     8a4:	aeaf0008 	sw	t7,8(s5)
     8a8:	845800b6 	lh	t8,182(v0)
     8ac:	26520000 	addiu	s2,s2,0
     8b0:	00008825 	move	s1,zero
     8b4:	a4380000 	sh	t8,0(at)
     8b8:	3c010001 	lui	at,0x1
     8bc:	00819821 	addu	s3,a0,at
     8c0:	3c010000 	lui	at,0x0
     8c4:	c43a0000 	lwc1	$f26,0(at)
     8c8:	3c010000 	lui	at,0x0
     8cc:	c4380000 	lwc1	$f24,0(at)
     8d0:	3c01447a 	lui	at,0x447a
     8d4:	4481a000 	mtc1	at,$f20
     8d8:	2416000a 	li	s6,10
     8dc:	241700ff 	li	s7,255
     8e0:	8e701e10 	lw	s0,7696(s3)
     8e4:	00001025 	move	v0,zero
     8e8:	92190000 	lbu	t9,0(s0)
     8ec:	24420001 	addiu	v0,v0,1
     8f0:	00021400 	sll	v0,v0,0x10
     8f4:	17200025 	bnez	t9,98c <func_809394FC+0x160>
     8f8:	00021403 	sra	v0,v0,0x10
     8fc:	a2160000 	sb	s6,0(s0)
     900:	8ea90000 	lw	t1,0(s5)
     904:	4614b283 	div.s	$f10,$f22,$f20
     908:	44912000 	mtc1	s1,$f4
     90c:	ae090004 	sw	t1,4(s0)
     910:	8ea80004 	lw	t0,4(s5)
     914:	468021a0 	cvt.s.w	$f6,$f4
     918:	4600a306 	mov.s	$f12,$f20
     91c:	ae080008 	sw	t0,8(s0)
     920:	8ea90008 	lw	t1,8(s5)
     924:	ae09000c 	sw	t1,12(s0)
     928:	8e4b0000 	lw	t3,0(s2)
     92c:	ae0b0010 	sw	t3,16(s0)
     930:	8e4a0004 	lw	t2,4(s2)
     934:	ae0a0014 	sw	t2,20(s0)
     938:	8e4b0008 	lw	t3,8(s2)
     93c:	ae0b0018 	sw	t3,24(s0)
     940:	8e4d0000 	lw	t5,0(s2)
     944:	46183202 	mul.s	$f8,$f6,$f24
     948:	ae0d001c 	sw	t5,28(s0)
     94c:	8e4c0004 	lw	t4,4(s2)
     950:	ae0c0020 	sw	t4,32(s0)
     954:	8e4d0008 	lw	t5,8(s2)
     958:	e608003c 	swc1	$f8,60(s0)
     95c:	e61a0040 	swc1	$f26,64(s0)
     960:	e61c0038 	swc1	$f28,56(s0)
     964:	e60a0034 	swc1	$f10,52(s0)
     968:	a614002e 	sh	s4,46(s0)
     96c:	a6000030 	sh	zero,48(s0)
     970:	a617002c 	sh	s7,44(s0)
     974:	0c000000 	jal	0 <func_80938CD0>
     978:	ae0d0024 	sw	t5,36(s0)
     97c:	4600040d 	trunc.w.s	$f16,$f0
     980:	44198000 	mfc1	t9,$f16
     984:	10000004 	b	998 <func_809394FC+0x16c>
     988:	a2190001 	sb	t9,1(s0)
     98c:	28410096 	slti	at,v0,150
     990:	1420ffd5 	bnez	at,8e8 <func_809394FC+0xbc>
     994:	26100048 	addiu	s0,s0,72
     998:	26310001 	addiu	s1,s1,1
     99c:	00118c00 	sll	s1,s1,0x10
     9a0:	00118c03 	sra	s1,s1,0x10
     9a4:	2a210008 	slti	at,s1,8
     9a8:	5420ffce 	bnezl	at,8e4 <func_809394FC+0xb8>
     9ac:	8e701e10 	lw	s0,7696(s3)
     9b0:	8fbf005c 	lw	ra,92(sp)
     9b4:	d7b40010 	ldc1	$f20,16(sp)
     9b8:	d7b60018 	ldc1	$f22,24(sp)
     9bc:	d7b80020 	ldc1	$f24,32(sp)
     9c0:	d7ba0028 	ldc1	$f26,40(sp)
     9c4:	d7bc0030 	ldc1	$f28,48(sp)
     9c8:	8fb0003c 	lw	s0,60(sp)
     9cc:	8fb10040 	lw	s1,64(sp)
     9d0:	8fb20044 	lw	s2,68(sp)
     9d4:	8fb30048 	lw	s3,72(sp)
     9d8:	8fb4004c 	lw	s4,76(sp)
     9dc:	8fb50050 	lw	s5,80(sp)
     9e0:	8fb60054 	lw	s6,84(sp)
     9e4:	8fb70058 	lw	s7,88(sp)
     9e8:	03e00008 	jr	ra
     9ec:	27bd0060 	addiu	sp,sp,96

000009f0 <BossTw_Init>:
     9f0:	27bdffa8 	addiu	sp,sp,-88
     9f4:	afb10038 	sw	s1,56(sp)
     9f8:	00a08825 	move	s1,a1
     9fc:	afbf003c 	sw	ra,60(sp)
     a00:	afb00034 	sw	s0,52(sp)
     a04:	3c050000 	lui	a1,0x0
     a08:	00808025 	move	s0,a0
     a0c:	0c000000 	jal	0 <func_80938CD0>
     a10:	24a50000 	addiu	a1,a1,0
     a14:	44800000 	mtc1	zero,$f0
     a18:	260400b4 	addiu	a0,s0,180
     a1c:	00003025 	move	a2,zero
     a20:	44050000 	mfc1	a1,$f0
     a24:	44070000 	mfc1	a3,$f0
     a28:	0c000000 	jal	0 <func_80938CD0>
     a2c:	00000000 	nop
     a30:	860e001c 	lh	t6,28(s0)
     a34:	02002025 	move	a0,s0
     a38:	3c053ccc 	lui	a1,0x3ccc
     a3c:	29c10064 	slti	at,t6,100
     a40:	14200048 	bnez	at,b64 <BossTw_Init+0x174>
     a44:	00000000 	nop
     a48:	3c053c23 	lui	a1,0x3c23
     a4c:	34a5d70a 	ori	a1,a1,0xd70a
     a50:	0c000000 	jal	0 <func_80938CD0>
     a54:	02002025 	move	a0,s0
     a58:	8e190004 	lw	t9,4(s0)
     a5c:	3c0f0000 	lui	t7,0x0
     a60:	3c180000 	lui	t8,0x0
     a64:	2401fffe 	li	at,-2
     a68:	25ef0000 	addiu	t7,t7,0
     a6c:	27180000 	addiu	t8,t8,0
     a70:	03217024 	and	t6,t9,at
     a74:	ae0f0130 	sw	t7,304(s0)
     a78:	ae180134 	sw	t8,308(s0)
     a7c:	ae0e0004 	sw	t6,4(s0)
     a80:	260505ac 	addiu	a1,s0,1452
     a84:	afa50044 	sw	a1,68(sp)
     a88:	0c000000 	jal	0 <func_80938CD0>
     a8c:	02202025 	move	a0,s1
     a90:	3c070000 	lui	a3,0x0
     a94:	8fa50044 	lw	a1,68(sp)
     a98:	24e70000 	addiu	a3,a3,0
     a9c:	02202025 	move	a0,s1
     aa0:	0c000000 	jal	0 <func_80938CD0>
     aa4:	02003025 	move	a2,s0
     aa8:	8603001c 	lh	v1,28(s0)
     aac:	24010064 	li	at,100
     ab0:	3c0f0000 	lui	t7,0x0
     ab4:	10610003 	beq	v1,at,ac4 <BossTw_Init+0xd4>
     ab8:	25ef0000 	addiu	t7,t7,0
     abc:	24010065 	li	at,101
     ac0:	14610004 	bne	v1,at,ad4 <BossTw_Init+0xe4>
     ac4:	24180001 	li	t8,1
     ac8:	ae0f014c 	sw	t7,332(s0)
     acc:	10000022 	b	b58 <BossTw_Init+0x168>
     ad0:	a21805c8 	sb	t8,1480(s0)
     ad4:	24010066 	li	at,102
     ad8:	10610003 	beq	v1,at,ae8 <BossTw_Init+0xf8>
     adc:	3c190000 	lui	t9,0x0
     ae0:	24010067 	li	at,103
     ae4:	14610003 	bne	v1,at,af4 <BossTw_Init+0x104>
     ae8:	27390000 	addiu	t9,t9,0
     aec:	1000001a 	b	b58 <BossTw_Init+0x168>
     af0:	ae19014c 	sw	t9,332(s0)
     af4:	28610068 	slti	at,v1,104
     af8:	14200017 	bnez	at,b58 <BossTw_Init+0x168>
     afc:	3c0e0000 	lui	t6,0x0
     b00:	3c014300 	lui	at,0x4300
     b04:	44812000 	mtc1	at,$f4
     b08:	8618001c 	lh	t8,28(s0)
     b0c:	3c0f0000 	lui	t7,0x0
     b10:	25ce0000 	addiu	t6,t6,0
     b14:	25ef0000 	addiu	t7,t7,0
     b18:	24010068 	li	at,104
     b1c:	ae0e014c 	sw	t6,332(s0)
     b20:	ae0f0134 	sw	t7,308(s0)
     b24:	17010007 	bne	t8,at,b44 <BossTw_Init+0x154>
     b28:	e60401ac 	swc1	$f4,428(s0)
     b2c:	3c190000 	lui	t9,0x0
     b30:	8f390000 	lw	t9,0(t9)
     b34:	872e0032 	lh	t6,50(t9)
     b38:	25cf4000 	addiu	t7,t6,16384
     b3c:	10000006 	b	b58 <BossTw_Init+0x168>
     b40:	a60f0032 	sh	t7,50(s0)
     b44:	3c180000 	lui	t8,0x0
     b48:	8f180000 	lw	t8,0(t8)
     b4c:	87190032 	lh	t9,50(t8)
     b50:	272ec000 	addiu	t6,t9,-16384
     b54:	a60e0032 	sh	t6,50(s0)
     b58:	240f0096 	li	t7,150
     b5c:	100001a5 	b	11f4 <BossTw_Init+0x804>
     b60:	a60f017a 	sh	t7,378(s0)
     b64:	0c000000 	jal	0 <func_80938CD0>
     b68:	34a5cccc 	ori	a1,a1,0xcccc
     b6c:	241800ff 	li	t8,255
     b70:	a21800ae 	sb	t8,174(s0)
     b74:	a20000af 	sb	zero,175(s0)
     b78:	260505ac 	addiu	a1,s0,1452
     b7c:	afa50044 	sw	a1,68(sp)
     b80:	0c000000 	jal	0 <func_80938CD0>
     b84:	02202025 	move	a0,s1
     b88:	3c190000 	lui	t9,0x0
     b8c:	93390000 	lbu	t9,0(t9)
     b90:	3c020000 	lui	v0,0x0
     b94:	8fa50044 	lw	a1,68(sp)
     b98:	17200082 	bnez	t9,da4 <BossTw_Init+0x3b4>
     b9c:	24420000 	addiu	v0,v0,0
     ba0:	240e0001 	li	t6,1
     ba4:	3c010000 	lui	at,0x0
     ba8:	a02e0000 	sb	t6,0(at)
     bac:	3c010001 	lui	at,0x1
     bb0:	00310821 	addu	at,at,s1
     bb4:	240f0001 	li	t7,1
     bb8:	a02f0ae3 	sb	t7,2787(at)
     bbc:	3c010001 	lui	at,0x1
     bc0:	00310821 	addu	at,at,s1
     bc4:	24180001 	li	t8,1
     bc8:	a0380ae2 	sb	t8,2786(at)
     bcc:	3c010001 	lui	at,0x1
     bd0:	00310821 	addu	at,at,s1
     bd4:	24190001 	li	t9,1
     bd8:	44800000 	mtc1	zero,$f0
     bdc:	a0390ae1 	sb	t9,2785(at)
     be0:	3c010001 	lui	at,0x1
     be4:	3c090000 	lui	t1,0x0
     be8:	00310821 	addu	at,at,s1
     bec:	25290000 	addiu	t1,t1,0
     bf0:	e4200afc 	swc1	$f0,2812(at)
     bf4:	a1200000 	sb	zero,0(t1)
     bf8:	81380000 	lb	t8,0(t1)
     bfc:	3c0a0000 	lui	t2,0x0
     c00:	3c0b0000 	lui	t3,0x0
     c04:	256b0000 	addiu	t3,t3,0
     c08:	254a0000 	addiu	t2,t2,0
     c0c:	331900ff 	andi	t9,t8,0xff
     c10:	a5790000 	sh	t9,0(t3)
     c14:	a1580000 	sb	t8,0(t2)
     c18:	85780000 	lh	t8,0(t3)
     c1c:	3c030000 	lui	v1,0x0
     c20:	3c040000 	lui	a0,0x0
     c24:	3c060000 	lui	a2,0x0
     c28:	3c070000 	lui	a3,0x0
     c2c:	3c080000 	lui	t0,0x0
     c30:	3c0c0000 	lui	t4,0x0
     c34:	3c0d0000 	lui	t5,0x0
     c38:	3c1f0000 	lui	ra,0x0
     c3c:	27ff0000 	addiu	ra,ra,0
     c40:	25ad0000 	addiu	t5,t5,0
     c44:	258c0000 	addiu	t4,t4,0
     c48:	25080000 	addiu	t0,t0,0
     c4c:	24e70000 	addiu	a3,a3,0
     c50:	24c60000 	addiu	a2,a2,0
     c54:	24840000 	addiu	a0,a0,0
     c58:	24630000 	addiu	v1,v1,0
     c5c:	a0600000 	sb	zero,0(v1)
     c60:	a0800000 	sb	zero,0(a0)
     c64:	a0c00000 	sb	zero,0(a2)
     c68:	a0e00000 	sb	zero,0(a3)
     c6c:	a1000000 	sb	zero,0(t0)
     c70:	a0400000 	sb	zero,0(v0)
     c74:	3c010000 	lui	at,0x0
     c78:	a1980000 	sb	t8,0(t4)
     c7c:	a1b80000 	sb	t8,0(t5)
     c80:	a3f80000 	sb	t8,0(ra)
     c84:	331900ff 	andi	t9,t8,0xff
     c88:	a4390000 	sh	t9,0(at)
     c8c:	3c0e0000 	lui	t6,0x0
     c90:	85ce0000 	lh	t6,0(t6)
     c94:	3c010000 	lui	at,0x0
     c98:	afa50044 	sw	a1,68(sp)
     c9c:	a42e0000 	sh	t6,0(at)
     ca0:	3c010000 	lui	at,0x0
     ca4:	a02e0000 	sb	t6,0(at)
     ca8:	3c010000 	lui	at,0x0
     cac:	31d900ff 	andi	t9,t6,0xff
     cb0:	a4390000 	sh	t9,0(at)
     cb4:	3c010000 	lui	at,0x0
     cb8:	a4390000 	sh	t9,0(at)
     cbc:	3c010000 	lui	at,0x0
     cc0:	e4200000 	swc1	$f0,0(at)
     cc4:	c4260000 	lwc1	$f6,0(at)
     cc8:	3c010000 	lui	at,0x0
     ccc:	e4260000 	swc1	$f6,0(at)
     cd0:	3c010000 	lui	at,0x0
     cd4:	0c000000 	jal	0 <func_80938CD0>
     cd8:	c42c0000 	lwc1	$f12,0(at)
     cdc:	444ef800 	cfc1	t6,$31
     ce0:	240f0001 	li	t7,1
     ce4:	44cff800 	ctc1	t7,$31
     ce8:	3c040000 	lui	a0,0x0
     cec:	24840000 	addiu	a0,a0,0
     cf0:	46000224 	cvt.w.s	$f8,$f0
     cf4:	8fa50044 	lw	a1,68(sp)
     cf8:	3c014f00 	lui	at,0x4f00
     cfc:	00001025 	move	v0,zero
     d00:	444ff800 	cfc1	t7,$31
     d04:	24030048 	li	v1,72
     d08:	31ef0078 	andi	t7,t7,0x78
     d0c:	51e00013 	beqzl	t7,d5c <BossTw_Init+0x36c>
     d10:	440f4000 	mfc1	t7,$f8
     d14:	44814000 	mtc1	at,$f8
     d18:	240f0001 	li	t7,1
     d1c:	46080201 	sub.s	$f8,$f0,$f8
     d20:	44cff800 	ctc1	t7,$31
     d24:	00000000 	nop
     d28:	46004224 	cvt.w.s	$f8,$f8
     d2c:	444ff800 	cfc1	t7,$31
     d30:	00000000 	nop
     d34:	31ef0078 	andi	t7,t7,0x78
     d38:	15e00005 	bnez	t7,d50 <BossTw_Init+0x360>
     d3c:	00000000 	nop
     d40:	440f4000 	mfc1	t7,$f8
     d44:	3c018000 	lui	at,0x8000
     d48:	10000007 	b	d68 <BossTw_Init+0x378>
     d4c:	01e17825 	or	t7,t7,at
     d50:	10000005 	b	d68 <BossTw_Init+0x378>
     d54:	240fffff 	li	t7,-1
     d58:	440f4000 	mfc1	t7,$f8
     d5c:	00000000 	nop
     d60:	05e0fffb 	bltz	t7,d50 <BossTw_Init+0x360>
     d64:	00000000 	nop
     d68:	3c010000 	lui	at,0x0
     d6c:	a02f0000 	sb	t7,0(at)
     d70:	3c010001 	lui	at,0x1
     d74:	44cef800 	ctc1	t6,$31
     d78:	00310821 	addu	at,at,s1
     d7c:	ac241e10 	sw	a0,7696(at)
     d80:	00430019 	multu	v0,v1
     d84:	24420001 	addiu	v0,v0,1
     d88:	00021400 	sll	v0,v0,0x10
     d8c:	00021403 	sra	v0,v0,0x10
     d90:	28410096 	slti	at,v0,150
     d94:	0000c012 	mflo	t8
     d98:	0098c821 	addu	t9,a0,t8
     d9c:	1420fff8 	bnez	at,d80 <BossTw_Init+0x390>
     da0:	a3200000 	sb	zero,0(t9)
     da4:	8603001c 	lh	v1,28(s0)
     da8:	02202025 	move	a0,s1
     dac:	02003025 	move	a2,s0
     db0:	14600030 	bnez	v1,e74 <BossTw_Init+0x484>
     db4:	24010001 	li	at,1
     db8:	3c070000 	lui	a3,0x0
     dbc:	0c000000 	jal	0 <func_80938CD0>
     dc0:	24e70000 	addiu	a3,a3,0
     dc4:	240e0033 	li	t6,51
     dc8:	a20e0117 	sb	t6,279(s0)
     dcc:	26050568 	addiu	a1,s0,1384
     dd0:	3c060600 	lui	a2,0x600
     dd4:	3c070600 	lui	a3,0x600
     dd8:	24e76f28 	addiu	a3,a3,28456
     ddc:	24c670e0 	addiu	a2,a2,28896
     de0:	afa50048 	sw	a1,72(sp)
     de4:	afa00018 	sw	zero,24(sp)
     de8:	afa00014 	sw	zero,20(sp)
     dec:	afa00010 	sw	zero,16(sp)
     df0:	0c000000 	jal	0 <func_80938CD0>
     df4:	02202025 	move	a0,s1
     df8:	3c0f0000 	lui	t7,0x0
     dfc:	95ef0ee2 	lhu	t7,3810(t7)
     e00:	02202825 	move	a1,s1
     e04:	02002025 	move	a0,s0
     e08:	31f80020 	andi	t8,t7,0x20
     e0c:	1300000f 	beqz	t8,e4c <BossTw_Init+0x45c>
     e10:	00000000 	nop
     e14:	0c000000 	jal	0 <func_80938CD0>
     e18:	02002025 	move	a0,s0
     e1c:	3c01c416 	lui	at,0xc416
     e20:	44815000 	mtc1	at,$f10
     e24:	3c0143c8 	lui	at,0x43c8
     e28:	44818000 	mtc1	at,$f16
     e2c:	44809000 	mtc1	zero,$f18
     e30:	2404001b 	li	a0,27
     e34:	e60a0024 	swc1	$f10,36(s0)
     e38:	e6100028 	swc1	$f16,40(s0)
     e3c:	0c000000 	jal	0 <func_80938CD0>
     e40:	e612002c 	swc1	$f18,44(s0)
     e44:	10000003 	b	e54 <BossTw_Init+0x464>
     e48:	00000000 	nop
     e4c:	0c000000 	jal	0 <func_80938CD0>
     e50:	02202825 	move	a1,s1
     e54:	3c050600 	lui	a1,0x600
     e58:	24a56f28 	addiu	a1,a1,28456
     e5c:	8fa40048 	lw	a0,72(sp)
     e60:	0c000000 	jal	0 <func_80938CD0>
     e64:	3c06c040 	lui	a2,0xc040
     e68:	24190001 	li	t9,1
     e6c:	100000bf 	b	116c <BossTw_Init+0x77c>
     e70:	a2190564 	sb	t9,1380(s0)
     e74:	1461002f 	bne	v1,at,f34 <BossTw_Init+0x544>
     e78:	02202025 	move	a0,s1
     e7c:	3c070000 	lui	a3,0x0
     e80:	24e70000 	addiu	a3,a3,0
     e84:	02202025 	move	a0,s1
     e88:	0c000000 	jal	0 <func_80938CD0>
     e8c:	02003025 	move	a2,s0
     e90:	240e0032 	li	t6,50
     e94:	a20e0117 	sb	t6,279(s0)
     e98:	26050568 	addiu	a1,s0,1384
     e9c:	3c060602 	lui	a2,0x602
     ea0:	3c070600 	lui	a3,0x600
     ea4:	24e76f28 	addiu	a3,a3,28456
     ea8:	24c6f888 	addiu	a2,a2,-1912
     eac:	afa50048 	sw	a1,72(sp)
     eb0:	afa00018 	sw	zero,24(sp)
     eb4:	afa00014 	sw	zero,20(sp)
     eb8:	afa00010 	sw	zero,16(sp)
     ebc:	0c000000 	jal	0 <func_80938CD0>
     ec0:	02202025 	move	a0,s1
     ec4:	3c0f0000 	lui	t7,0x0
     ec8:	95ef0ee2 	lhu	t7,3810(t7)
     ecc:	02202825 	move	a1,s1
     ed0:	02002025 	move	a0,s0
     ed4:	31f80020 	andi	t8,t7,0x20
     ed8:	1300000c 	beqz	t8,f0c <BossTw_Init+0x51c>
     edc:	00000000 	nop
     ee0:	0c000000 	jal	0 <func_80938CD0>
     ee4:	02002025 	move	a0,s0
     ee8:	3c014416 	lui	at,0x4416
     eec:	44812000 	mtc1	at,$f4
     ef0:	3c0143c8 	lui	at,0x43c8
     ef4:	44813000 	mtc1	at,$f6
     ef8:	44804000 	mtc1	zero,$f8
     efc:	e6040024 	swc1	$f4,36(s0)
     f00:	e6060028 	swc1	$f6,40(s0)
     f04:	10000003 	b	f14 <BossTw_Init+0x524>
     f08:	e608002c 	swc1	$f8,44(s0)
     f0c:	0c000000 	jal	0 <func_80938CD0>
     f10:	02202825 	move	a1,s1
     f14:	3c050600 	lui	a1,0x600
     f18:	24a56f28 	addiu	a1,a1,28456
     f1c:	8fa40048 	lw	a0,72(sp)
     f20:	0c000000 	jal	0 <func_80938CD0>
     f24:	3c06c040 	lui	a2,0xc040
     f28:	24190001 	li	t9,1
     f2c:	1000008f 	b	116c <BossTw_Init+0x77c>
     f30:	a2190564 	sb	t9,1380(s0)
     f34:	3c070000 	lui	a3,0x0
     f38:	24e70000 	addiu	a3,a3,0
     f3c:	0c000000 	jal	0 <func_80938CD0>
     f40:	02003025 	move	a2,s0
     f44:	3c180000 	lui	t8,0x0
     f48:	3c190000 	lui	t9,0x0
     f4c:	240e005b 	li	t6,91
     f50:	240f0018 	li	t7,24
     f54:	27180000 	addiu	t8,t8,0
     f58:	27390000 	addiu	t9,t9,0
     f5c:	a20e0117 	sb	t6,279(s0)
     f60:	a20f00af 	sb	t7,175(s0)
     f64:	ae180130 	sw	t8,304(s0)
     f68:	ae190134 	sw	t9,308(s0)
     f6c:	26050568 	addiu	a1,s0,1384
     f70:	3c060603 	lui	a2,0x603
     f74:	3c070602 	lui	a3,0x602
     f78:	24e744b4 	addiu	a3,a3,17588
     f7c:	24c62020 	addiu	a2,a2,8224
     f80:	afa50048 	sw	a1,72(sp)
     f84:	afa00018 	sw	zero,24(sp)
     f88:	afa00014 	sw	zero,20(sp)
     f8c:	afa00010 	sw	zero,16(sp)
     f90:	0c000000 	jal	0 <func_80938CD0>
     f94:	02202025 	move	a0,s1
     f98:	3c050602 	lui	a1,0x602
     f9c:	24a544b4 	addiu	a1,a1,17588
     fa0:	8fa40048 	lw	a0,72(sp)
     fa4:	0c000000 	jal	0 <func_80938CD0>
     fa8:	3c06c040 	lui	a2,0xc040
     fac:	3c0e0000 	lui	t6,0x0
     fb0:	95ce0ee2 	lhu	t6,3810(t6)
     fb4:	02202825 	move	a1,s1
     fb8:	02002025 	move	a0,s0
     fbc:	31cf0020 	andi	t7,t6,0x20
     fc0:	11e00005 	beqz	t7,fd8 <BossTw_Init+0x5e8>
     fc4:	00000000 	nop
     fc8:	0c000000 	jal	0 <func_80938CD0>
     fcc:	02002025 	move	a0,s0
     fd0:	1000000b 	b	1000 <BossTw_Init+0x610>
     fd4:	24180002 	li	t8,2
     fd8:	0c000000 	jal	0 <func_80938CD0>
     fdc:	02202825 	move	a1,s1
     fe0:	3c01447a 	lui	at,0x447a
     fe4:	44805000 	mtc1	zero,$f10
     fe8:	44818000 	mtc1	at,$f16
     fec:	44809000 	mtc1	zero,$f18
     ff0:	e60a0024 	swc1	$f10,36(s0)
     ff4:	e6100028 	swc1	$f16,40(s0)
     ff8:	e612002c 	swc1	$f18,44(s0)
     ffc:	24180002 	li	t8,2
    1000:	a618001c 	sh	t8,28(s0)
    1004:	3c010000 	lui	at,0x0
    1008:	3c050001 	lui	a1,0x1
    100c:	ac300000 	sw	s0,0(at)
    1010:	00b12821 	addu	a1,a1,s1
    1014:	80a51cbc 	lb	a1,7356(a1)
    1018:	0c000000 	jal	0 <func_80938CD0>
    101c:	02202025 	move	a0,s1
    1020:	50400027 	beqzl	v0,10c0 <BossTw_Init+0x6d0>
    1024:	c6120024 	lwc1	$f18,36(s0)
    1028:	0c000000 	jal	0 <func_80938CD0>
    102c:	02002025 	move	a0,s0
    1030:	3c014416 	lui	at,0x4416
    1034:	44812000 	mtc1	at,$f4
    1038:	3c014366 	lui	at,0x4366
    103c:	44813000 	mtc1	at,$f6
    1040:	44804000 	mtc1	zero,$f8
    1044:	26241c24 	addiu	a0,s1,7204
    1048:	2419ffff 	li	t9,-1
    104c:	afb90028 	sw	t9,40(sp)
    1050:	afa40048 	sw	a0,72(sp)
    1054:	02002825 	move	a1,s0
    1058:	02203025 	move	a2,s1
    105c:	2407005d 	li	a3,93
    1060:	afa0001c 	sw	zero,28(sp)
    1064:	afa00020 	sw	zero,32(sp)
    1068:	afa00024 	sw	zero,36(sp)
    106c:	e7a40010 	swc1	$f4,16(sp)
    1070:	e7a60014 	swc1	$f6,20(sp)
    1074:	0c000000 	jal	0 <func_80938CD0>
    1078:	e7a80018 	swc1	$f8,24(sp)
    107c:	3c014366 	lui	at,0x4366
    1080:	44815000 	mtc1	at,$f10
    1084:	44808000 	mtc1	zero,$f16
    1088:	8fa40048 	lw	a0,72(sp)
    108c:	02202825 	move	a1,s1
    1090:	2406005f 	li	a2,95
    1094:	3c07c416 	lui	a3,0xc416
    1098:	afa00018 	sw	zero,24(sp)
    109c:	afa0001c 	sw	zero,28(sp)
    10a0:	afa00020 	sw	zero,32(sp)
    10a4:	afa00024 	sw	zero,36(sp)
    10a8:	e7aa0010 	swc1	$f10,16(sp)
    10ac:	0c000000 	jal	0 <func_80938CD0>
    10b0:	e7b00014 	swc1	$f16,20(sp)
    10b4:	1000002e 	b	1170 <BossTw_Init+0x780>
    10b8:	922f07af 	lbu	t7,1967(s1)
    10bc:	c6120024 	lwc1	$f18,36(s0)
    10c0:	26241c24 	addiu	a0,s1,7204
    10c4:	02002825 	move	a1,s0
    10c8:	e7b20010 	swc1	$f18,16(sp)
    10cc:	c6040028 	lwc1	$f4,40(s0)
    10d0:	02203025 	move	a2,s1
    10d4:	240700dc 	li	a3,220
    10d8:	e7a40014 	swc1	$f4,20(sp)
    10dc:	c606002c 	lwc1	$f6,44(s0)
    10e0:	afa40048 	sw	a0,72(sp)
    10e4:	afa00028 	sw	zero,40(sp)
    10e8:	afa00024 	sw	zero,36(sp)
    10ec:	afa00020 	sw	zero,32(sp)
    10f0:	afa0001c 	sw	zero,28(sp)
    10f4:	0c000000 	jal	0 <func_80938CD0>
    10f8:	e7a60018 	swc1	$f6,24(sp)
    10fc:	3c010000 	lui	at,0x0
    1100:	ac220000 	sw	v0,0(at)
    1104:	c6080024 	lwc1	$f8,36(s0)
    1108:	240e0001 	li	t6,1
    110c:	8fa40048 	lw	a0,72(sp)
    1110:	e7a80010 	swc1	$f8,16(sp)
    1114:	c60a0028 	lwc1	$f10,40(s0)
    1118:	02002825 	move	a1,s0
    111c:	02203025 	move	a2,s1
    1120:	e7aa0014 	swc1	$f10,20(sp)
    1124:	c610002c 	lwc1	$f16,44(s0)
    1128:	afae0028 	sw	t6,40(sp)
    112c:	afa00024 	sw	zero,36(sp)
    1130:	afa00020 	sw	zero,32(sp)
    1134:	afa0001c 	sw	zero,28(sp)
    1138:	240700dc 	li	a3,220
    113c:	0c000000 	jal	0 <func_80938CD0>
    1140:	e7b00018 	swc1	$f16,24(sp)
    1144:	3c040000 	lui	a0,0x0
    1148:	24840000 	addiu	a0,a0,0
    114c:	8c980000 	lw	t8,0(a0)
    1150:	3c030000 	lui	v1,0x0
    1154:	24630000 	addiu	v1,v1,0
    1158:	ac620000 	sw	v0,0(v1)
    115c:	af020118 	sw	v0,280(t8)
    1160:	8c6e0000 	lw	t6,0(v1)
    1164:	8c990000 	lw	t9,0(a0)
    1168:	add90118 	sw	t9,280(t6)
    116c:	922f07af 	lbu	t7,1967(s1)
    1170:	3c014f80 	lui	at,0x4f80
    1174:	448f9000 	mtc1	t7,$f18
    1178:	05e10004 	bgez	t7,118c <BossTw_Init+0x79c>
    117c:	46809120 	cvt.s.w	$f4,$f18
    1180:	44813000 	mtc1	at,$f6
    1184:	00000000 	nop
    1188:	46062100 	add.s	$f4,$f4,$f6
    118c:	e60401d4 	swc1	$f4,468(s0)
    1190:	923807b0 	lbu	t8,1968(s1)
    1194:	3c014f80 	lui	at,0x4f80
    1198:	44984000 	mtc1	t8,$f8
    119c:	07010004 	bgez	t8,11b0 <BossTw_Init+0x7c0>
    11a0:	468042a0 	cvt.s.w	$f10,$f8
    11a4:	44818000 	mtc1	at,$f16
    11a8:	00000000 	nop
    11ac:	46105280 	add.s	$f10,$f10,$f16
    11b0:	e60a01d8 	swc1	$f10,472(s0)
    11b4:	923907b1 	lbu	t9,1969(s1)
    11b8:	3c014f80 	lui	at,0x4f80
    11bc:	44999000 	mtc1	t9,$f18
    11c0:	07210004 	bgez	t9,11d4 <BossTw_Init+0x7e4>
    11c4:	468091a0 	cvt.s.w	$f6,$f18
    11c8:	44812000 	mtc1	at,$f4
    11cc:	00000000 	nop
    11d0:	46043180 	add.s	$f6,$f6,$f4
    11d4:	e60601dc 	swc1	$f6,476(s0)
    11d8:	862e07b2 	lh	t6,1970(s1)
    11dc:	3c01447a 	lui	at,0x447a
    11e0:	44815000 	mtc1	at,$f10
    11e4:	448e4000 	mtc1	t6,$f8
    11e8:	e60a01e4 	swc1	$f10,484(s0)
    11ec:	46804420 	cvt.s.w	$f16,$f8
    11f0:	e61001e0 	swc1	$f16,480(s0)
    11f4:	8fbf003c 	lw	ra,60(sp)
    11f8:	8fb00034 	lw	s0,52(sp)
    11fc:	8fb10038 	lw	s1,56(sp)
    1200:	03e00008 	jr	ra
    1204:	27bd0058 	addiu	sp,sp,88

00001208 <BossTw_Destroy>:
    1208:	27bdffe8 	addiu	sp,sp,-24
    120c:	afa40018 	sw	a0,24(sp)
    1210:	afa5001c 	sw	a1,28(sp)
    1214:	00a02025 	move	a0,a1
    1218:	8fa50018 	lw	a1,24(sp)
    121c:	afbf0014 	sw	ra,20(sp)
    1220:	0c000000 	jal	0 <func_80938CD0>
    1224:	24a505ac 	addiu	a1,a1,1452
    1228:	8fa30018 	lw	v1,24(sp)
    122c:	8462001c 	lh	v0,28(v1)
    1230:	24640568 	addiu	a0,v1,1384
    1234:	28410064 	slti	at,v0,100
    1238:	50200006 	beqzl	at,1254 <BossTw_Destroy+0x4c>
    123c:	24010002 	li	at,2
    1240:	0c000000 	jal	0 <func_80938CD0>
    1244:	8fa5001c 	lw	a1,28(sp)
    1248:	8fae0018 	lw	t6,24(sp)
    124c:	85c2001c 	lh	v0,28(t6)
    1250:	24010002 	li	at,2
    1254:	14410002 	bne	v0,at,1260 <BossTw_Destroy+0x58>
    1258:	3c010000 	lui	at,0x0
    125c:	a0200000 	sb	zero,0(at)
    1260:	8fbf0014 	lw	ra,20(sp)
    1264:	27bd0018 	addiu	sp,sp,24
    1268:	03e00008 	jr	ra
    126c:	00000000 	nop

00001270 <func_80939F40>:
    1270:	afa50004 	sw	a1,4(sp)
    1274:	8c820118 	lw	v0,280(a0)
    1278:	3c0e0000 	lui	t6,0x0
    127c:	25ce0000 	addiu	t6,t6,0
    1280:	10400008 	beqz	v0,12a4 <func_80939F40+0x34>
    1284:	ac8e014c 	sw	t6,332(a0)
    1288:	8c58014c 	lw	t8,332(v0)
    128c:	3c0f0000 	lui	t7,0x0
    1290:	25ef0000 	addiu	t7,t7,0
    1294:	15f80003 	bne	t7,t8,12a4 <func_80939F40+0x34>
    1298:	24190028 	li	t9,40
    129c:	10000003 	b	12ac <func_80939F40+0x3c>
    12a0:	a4990178 	sh	t9,376(a0)
    12a4:	2408003c 	li	t0,60
    12a8:	a4880178 	sh	t0,376(a0)
    12ac:	44802000 	mtc1	zero,$f4
    12b0:	03e00008 	jr	ra
    12b4:	e48404c8 	swc1	$f4,1224(a0)

000012b8 <func_80939F88>:
    12b8:	27bdffd8 	addiu	sp,sp,-40
    12bc:	afbf001c 	sw	ra,28(sp)
    12c0:	afb00018 	sw	s0,24(sp)
    12c4:	afa5002c 	sw	a1,44(sp)
    12c8:	8c8e0118 	lw	t6,280(a0)
    12cc:	00808025 	move	s0,a0
    12d0:	24840568 	addiu	a0,a0,1384
    12d4:	0c000000 	jal	0 <func_80938CD0>
    12d8:	afae0024 	sw	t6,36(sp)
    12dc:	3c013f80 	lui	at,0x3f80
    12e0:	44810000 	mtc1	at,$f0
    12e4:	26040068 	addiu	a0,s0,104
    12e8:	24050000 	li	a1,0
    12ec:	44060000 	mfc1	a2,$f0
    12f0:	44070000 	mfc1	a3,$f0
    12f4:	0c000000 	jal	0 <func_80938CD0>
    12f8:	00000000 	nop
    12fc:	c60404c8 	lwc1	$f4,1224(s0)
    1300:	260400b6 	addiu	a0,s0,182
    1304:	8605008a 	lh	a1,138(s0)
    1308:	4600218d 	trunc.w.s	$f6,$f4
    130c:	24060005 	li	a2,5
    1310:	44073000 	mfc1	a3,$f6
    1314:	00000000 	nop
    1318:	00073c00 	sll	a3,a3,0x10
    131c:	0c000000 	jal	0 <func_80938CD0>
    1320:	00073c03 	sra	a3,a3,0x10
    1324:	c60804c8 	lwc1	$f8,1224(s0)
    1328:	260400b4 	addiu	a0,s0,180
    132c:	00002825 	move	a1,zero
    1330:	4600428d 	trunc.w.s	$f10,$f8
    1334:	24060005 	li	a2,5
    1338:	44075000 	mfc1	a3,$f10
    133c:	00000000 	nop
    1340:	00073c00 	sll	a3,a3,0x10
    1344:	0c000000 	jal	0 <func_80938CD0>
    1348:	00073c03 	sra	a3,a3,0x10
    134c:	260404c8 	addiu	a0,s0,1224
    1350:	3c054580 	lui	a1,0x4580
    1354:	3c063f80 	lui	a2,0x3f80
    1358:	0c000000 	jal	0 <func_80938CD0>
    135c:	3c074348 	lui	a3,0x4348
    1360:	0c000000 	jal	0 <func_80938CD0>
    1364:	02002025 	move	a0,s0
    1368:	0c000000 	jal	0 <func_80938CD0>
    136c:	02002025 	move	a0,s0
    1370:	86190178 	lh	t9,376(s0)
    1374:	8fa90024 	lw	t1,36(sp)
    1378:	57200013 	bnezl	t9,13c8 <func_80939F88+0x110>
    137c:	8fbf001c 	lw	ra,28(sp)
    1380:	8d2a014c 	lw	t2,332(t1)
    1384:	3c080000 	lui	t0,0x0
    1388:	25080000 	addiu	t0,t0,0
    138c:	110a000b 	beq	t0,t2,13bc <func_80939F88+0x104>
    1390:	02002025 	move	a0,s0
    1394:	860b015e 	lh	t3,350(s0)
    1398:	11600008 	beqz	t3,13bc <func_80939F88+0x104>
    139c:	00000000 	nop
    13a0:	a600015e 	sh	zero,350(s0)
    13a4:	8fa5002c 	lw	a1,44(sp)
    13a8:	0c000000 	jal	0 <func_80938CD0>
    13ac:	02002025 	move	a0,s0
    13b0:	44808000 	mtc1	zero,$f16
    13b4:	10000003 	b	13c4 <func_80939F88+0x10c>
    13b8:	e6100068 	swc1	$f16,104(s0)
    13bc:	0c000000 	jal	0 <func_80938CD0>
    13c0:	8fa5002c 	lw	a1,44(sp)
    13c4:	8fbf001c 	lw	ra,28(sp)
    13c8:	8fb00018 	lw	s0,24(sp)
    13cc:	27bd0028 	addiu	sp,sp,40
    13d0:	03e00008 	jr	ra
    13d4:	00000000 	nop

000013d8 <func_8093A0A8>:
    13d8:	27bdffd8 	addiu	sp,sp,-40
    13dc:	afbf001c 	sw	ra,28(sp)
    13e0:	afb00018 	sw	s0,24(sp)
    13e4:	afa5002c 	sw	a1,44(sp)
    13e8:	8c8e0118 	lw	t6,280(a0)
    13ec:	44802000 	mtc1	zero,$f4
    13f0:	3c080000 	lui	t0,0x0
    13f4:	afae0024 	sw	t6,36(sp)
    13f8:	8c980004 	lw	t8,4(a0)
    13fc:	00808025 	move	s0,a0
    1400:	240f0001 	li	t7,1
    1404:	25080000 	addiu	t0,t0,0
    1408:	3c050600 	lui	a1,0x600
    140c:	37190001 	ori	t9,t8,0x1
    1410:	a08f05f8 	sb	t7,1528(a0)
    1414:	ac990004 	sw	t9,4(a0)
    1418:	ac88014c 	sw	t0,332(a0)
    141c:	24a56f28 	addiu	a1,a1,28456
    1420:	24840568 	addiu	a0,a0,1384
    1424:	3c06c120 	lui	a2,0xc120
    1428:	0c000000 	jal	0 <func_80938CD0>
    142c:	e484ff60 	swc1	$f4,-160(a0)
    1430:	0c000000 	jal	0 <func_80938CD0>
    1434:	00000000 	nop
    1438:	3c013f00 	lui	at,0x3f00
    143c:	44813000 	mtc1	at,$f6
    1440:	8fa20024 	lw	v0,36(sp)
    1444:	4606003c 	c.lt.s	$f0,$f6
    1448:	00000000 	nop
    144c:	45000026 	bc1f	14e8 <func_8093A0A8+0x110>
    1450:	00000000 	nop
    1454:	10400024 	beqz	v0,14e8 <func_8093A0A8+0x110>
    1458:	00000000 	nop
    145c:	8c4a014c 	lw	t2,332(v0)
    1460:	3c090000 	lui	t1,0x0
    1464:	25290000 	addiu	t1,t1,0
    1468:	152a001f 	bne	t1,t2,14e8 <func_8093A0A8+0x110>
    146c:	3c014348 	lui	at,0x4348
    1470:	44816000 	mtc1	at,$f12
    1474:	0c000000 	jal	0 <func_80938CD0>
    1478:	00000000 	nop
    147c:	8fab0024 	lw	t3,36(sp)
    1480:	3c014348 	lui	at,0x4348
    1484:	44816000 	mtc1	at,$f12
    1488:	c5680024 	lwc1	$f8,36(t3)
    148c:	46080280 	add.s	$f10,$f0,$f8
    1490:	0c000000 	jal	0 <func_80938CD0>
    1494:	e60a04b0 	swc1	$f10,1200(s0)
    1498:	3c0143aa 	lui	at,0x43aa
    149c:	44818000 	mtc1	at,$f16
    14a0:	3c014348 	lui	at,0x4348
    14a4:	44816000 	mtc1	at,$f12
    14a8:	46100480 	add.s	$f18,$f0,$f16
    14ac:	0c000000 	jal	0 <func_80938CD0>
    14b0:	e61204b4 	swc1	$f18,1204(s0)
    14b4:	8fac0024 	lw	t4,36(sp)
    14b8:	3c014248 	lui	at,0x4248
    14bc:	44816000 	mtc1	at,$f12
    14c0:	c584002c 	lwc1	$f4,44(t4)
    14c4:	46040180 	add.s	$f6,$f0,$f4
    14c8:	0c000000 	jal	0 <func_80938CD0>
    14cc:	e60604b8 	swc1	$f6,1208(s0)
    14d0:	4600020d 	trunc.w.s	$f8,$f0
    14d4:	44184000 	mfc1	t8,$f8
    14d8:	00000000 	nop
    14dc:	27190032 	addiu	t9,t8,50
    14e0:	10000039 	b	15c8 <func_8093A0A8+0x1f0>
    14e4:	a6190178 	sh	t9,376(s0)
    14e8:	0c000000 	jal	0 <func_80938CD0>
    14ec:	00000000 	nop
    14f0:	3c013f00 	lui	at,0x3f00
    14f4:	44815000 	mtc1	at,$f10
    14f8:	3c010000 	lui	at,0x0
    14fc:	460a003c 	c.lt.s	$f0,$f10
    1500:	00000000 	nop
    1504:	4500001a 	bc1f	1570 <func_8093A0A8+0x198>
    1508:	00000000 	nop
    150c:	3c014448 	lui	at,0x4448
    1510:	44816000 	mtc1	at,$f12
    1514:	0c000000 	jal	0 <func_80938CD0>
    1518:	00000000 	nop
    151c:	3c014348 	lui	at,0x4348
    1520:	44816000 	mtc1	at,$f12
    1524:	0c000000 	jal	0 <func_80938CD0>
    1528:	e60004b0 	swc1	$f0,1200(s0)
    152c:	3c0143aa 	lui	at,0x43aa
    1530:	44818000 	mtc1	at,$f16
    1534:	3c014448 	lui	at,0x4448
    1538:	44816000 	mtc1	at,$f12
    153c:	46100480 	add.s	$f18,$f0,$f16
    1540:	0c000000 	jal	0 <func_80938CD0>
    1544:	e61204b4 	swc1	$f18,1204(s0)
    1548:	3c014248 	lui	at,0x4248
    154c:	44816000 	mtc1	at,$f12
    1550:	0c000000 	jal	0 <func_80938CD0>
    1554:	e60004b8 	swc1	$f0,1208(s0)
    1558:	4600010d 	trunc.w.s	$f4,$f0
    155c:	440b2000 	mfc1	t3,$f4
    1560:	00000000 	nop
    1564:	256c0032 	addiu	t4,t3,50
    1568:	10000017 	b	15c8 <func_8093A0A8+0x1f0>
    156c:	a60c0178 	sh	t4,376(s0)
    1570:	0c000000 	jal	0 <func_80938CD0>
    1574:	c42c0000 	lwc1	$f12,0(at)
    1578:	4600018d 	trunc.w.s	$f6,$f0
    157c:	3c080000 	lui	t0,0x0
    1580:	25080000 	addiu	t0,t0,0
    1584:	240c00c8 	li	t4,200
    1588:	440e3000 	mfc1	t6,$f6
    158c:	240d0001 	li	t5,1
    1590:	000e7c00 	sll	t7,t6,0x10
    1594:	000fc403 	sra	t8,t7,0x10
    1598:	0018c880 	sll	t9,t8,0x2
    159c:	0338c823 	subu	t9,t9,t8
    15a0:	0019c880 	sll	t9,t9,0x2
    15a4:	03284821 	addu	t1,t9,t0
    15a8:	8d2b0000 	lw	t3,0(t1)
    15ac:	ae0b04b0 	sw	t3,1200(s0)
    15b0:	8d2a0004 	lw	t2,4(t1)
    15b4:	ae0a04b4 	sw	t2,1204(s0)
    15b8:	8d2b0008 	lw	t3,8(t1)
    15bc:	a60c0178 	sh	t4,376(s0)
    15c0:	a60d015e 	sh	t5,350(s0)
    15c4:	ae0b04b8 	sw	t3,1208(s0)
    15c8:	8fbf001c 	lw	ra,28(sp)
    15cc:	8fb00018 	lw	s0,24(sp)
    15d0:	27bd0028 	addiu	sp,sp,40
    15d4:	03e00008 	jr	ra
    15d8:	00000000 	nop

000015dc <func_8093A2AC>:
    15dc:	27bdffc0 	addiu	sp,sp,-64
    15e0:	afbf001c 	sw	ra,28(sp)
    15e4:	afb00018 	sw	s0,24(sp)
    15e8:	afa50044 	sw	a1,68(sp)
    15ec:	00808025 	move	s0,a0
    15f0:	0c000000 	jal	0 <func_80938CD0>
    15f4:	2405311f 	li	a1,12575
    15f8:	260404d0 	addiu	a0,s0,1232
    15fc:	24050000 	li	a1,0
    1600:	3c063f80 	lui	a2,0x3f80
    1604:	0c000000 	jal	0 <func_80938CD0>
    1608:	3c074120 	lui	a3,0x4120
    160c:	0c000000 	jal	0 <func_80938CD0>
    1610:	26040568 	addiu	a0,s0,1384
    1614:	c60804b4 	lwc1	$f8,1204(s0)
    1618:	c60a0028 	lwc1	$f10,40(s0)
    161c:	c60404b0 	lwc1	$f4,1200(s0)
    1620:	c6060024 	lwc1	$f6,36(s0)
    1624:	460a4481 	sub.s	$f18,$f8,$f10
    1628:	46062301 	sub.s	$f12,$f4,$f6
    162c:	e7b20038 	swc1	$f18,56(sp)
    1630:	c606002c 	lwc1	$f6,44(s0)
    1634:	c60404b8 	lwc1	$f4,1208(s0)
    1638:	e7ac003c 	swc1	$f12,60(sp)
    163c:	46062381 	sub.s	$f14,$f4,$f6
    1640:	0c000000 	jal	0 <func_80938CD0>
    1644:	e7ae0034 	swc1	$f14,52(sp)
    1648:	3c010000 	lui	at,0x0
    164c:	c4280000 	lwc1	$f8,0(at)
    1650:	c7a2003c 	lwc1	$f2,60(sp)
    1654:	c7b00034 	lwc1	$f16,52(sp)
    1658:	46080282 	mul.s	$f10,$f0,$f8
    165c:	c7ac0038 	lwc1	$f12,56(sp)
    1660:	46021202 	mul.s	$f8,$f2,$f2
    1664:	4600548d 	trunc.w.s	$f18,$f10
    1668:	46108282 	mul.s	$f10,$f16,$f16
    166c:	440f9000 	mfc1	t7,$f18
    1670:	00000000 	nop
    1674:	000fc400 	sll	t8,t7,0x10
    1678:	460a4000 	add.s	$f0,$f8,$f10
    167c:	0018cc03 	sra	t9,t8,0x10
    1680:	44992000 	mtc1	t9,$f4
    1684:	46000384 	sqrt.s	$f14,$f0
    1688:	468021a0 	cvt.s.w	$f6,$f4
    168c:	e7ae0028 	swc1	$f14,40(sp)
    1690:	0c000000 	jal	0 <func_80938CD0>
    1694:	e7a6002c 	swc1	$f6,44(sp)
    1698:	3c010000 	lui	at,0x0
    169c:	c4320000 	lwc1	$f18,0(at)
    16a0:	26040030 	addiu	a0,s0,48
    16a4:	2406000a 	li	a2,10
    16a8:	46120102 	mul.s	$f4,$f0,$f18
    16ac:	4600218d 	trunc.w.s	$f6,$f4
    16b0:	44093000 	mfc1	t1,$f6
    16b4:	00000000 	nop
    16b8:	00095400 	sll	t2,t1,0x10
    16bc:	000a5c03 	sra	t3,t2,0x10
    16c0:	448b4000 	mtc1	t3,$f8
    16c4:	00000000 	nop
    16c8:	468040a0 	cvt.s.w	$f2,$f8
    16cc:	e7a20030 	swc1	$f2,48(sp)
    16d0:	c61204c8 	lwc1	$f18,1224(s0)
    16d4:	4600128d 	trunc.w.s	$f10,$f2
    16d8:	4600910d 	trunc.w.s	$f4,$f18
    16dc:	44055000 	mfc1	a1,$f10
    16e0:	44072000 	mfc1	a3,$f4
    16e4:	00052c00 	sll	a1,a1,0x10
    16e8:	00052c03 	sra	a1,a1,0x10
    16ec:	00073c00 	sll	a3,a3,0x10
    16f0:	0c000000 	jal	0 <func_80938CD0>
    16f4:	00073c03 	sra	a3,a3,0x10
    16f8:	c7a6002c 	lwc1	$f6,44(sp)
    16fc:	c60a04c8 	lwc1	$f10,1224(s0)
    1700:	26040032 	addiu	a0,s0,50
    1704:	4600320d 	trunc.w.s	$f8,$f6
    1708:	2406000a 	li	a2,10
    170c:	4600548d 	trunc.w.s	$f18,$f10
    1710:	44054000 	mfc1	a1,$f8
    1714:	44079000 	mfc1	a3,$f18
    1718:	00052c00 	sll	a1,a1,0x10
    171c:	00052c03 	sra	a1,a1,0x10
    1720:	00073c00 	sll	a3,a3,0x10
    1724:	00073c03 	sra	a3,a3,0x10
    1728:	0c000000 	jal	0 <func_80938CD0>
    172c:	afa50024 	sw	a1,36(sp)
    1730:	c60404c8 	lwc1	$f4,1224(s0)
    1734:	8fa50024 	lw	a1,36(sp)
    1738:	260400b6 	addiu	a0,s0,182
    173c:	4600218d 	trunc.w.s	$f6,$f4
    1740:	2406000a 	li	a2,10
    1744:	44073000 	mfc1	a3,$f6
    1748:	00000000 	nop
    174c:	00073c00 	sll	a3,a3,0x10
    1750:	0c000000 	jal	0 <func_80938CD0>
    1754:	00073c03 	sra	a3,a3,0x10
    1758:	c7a80030 	lwc1	$f8,48(sp)
    175c:	c61204c8 	lwc1	$f18,1224(s0)
    1760:	260400b4 	addiu	a0,s0,180
    1764:	4600428d 	trunc.w.s	$f10,$f8
    1768:	2406000a 	li	a2,10
    176c:	4600910d 	trunc.w.s	$f4,$f18
    1770:	44055000 	mfc1	a1,$f10
    1774:	44072000 	mfc1	a3,$f4
    1778:	00052c00 	sll	a1,a1,0x10
    177c:	00052c03 	sra	a1,a1,0x10
    1780:	00073c00 	sll	a3,a3,0x10
    1784:	0c000000 	jal	0 <func_80938CD0>
    1788:	00073c03 	sra	a3,a3,0x10
    178c:	260404c8 	addiu	a0,s0,1224
    1790:	3c054580 	lui	a1,0x4580
    1794:	3c063f80 	lui	a2,0x3f80
    1798:	0c000000 	jal	0 <func_80938CD0>
    179c:	3c0742c8 	lui	a3,0x42c8
    17a0:	26040068 	addiu	a0,s0,104
    17a4:	3c054120 	lui	a1,0x4120
    17a8:	3c063f80 	lui	a2,0x3f80
    17ac:	0c000000 	jal	0 <func_80938CD0>
    17b0:	3c073f80 	lui	a3,0x3f80
    17b4:	0c000000 	jal	0 <func_80938CD0>
    17b8:	02002025 	move	a0,s0
    17bc:	0c000000 	jal	0 <func_80938CD0>
    17c0:	02002025 	move	a0,s0
    17c4:	86090178 	lh	t1,376(s0)
    17c8:	c7a60028 	lwc1	$f6,40(sp)
    17cc:	3c01428c 	lui	at,0x428c
    17d0:	11200007 	beqz	t1,17f0 <func_8093A2AC+0x214>
    17d4:	02002025 	move	a0,s0
    17d8:	44814000 	mtc1	at,$f8
    17dc:	00000000 	nop
    17e0:	4608303c 	c.lt.s	$f6,$f8
    17e4:	00000000 	nop
    17e8:	45020004 	bc1fl	17fc <func_8093A2AC+0x220>
    17ec:	8fbf001c 	lw	ra,28(sp)
    17f0:	0c000000 	jal	0 <func_80938CD0>
    17f4:	8fa50044 	lw	a1,68(sp)
    17f8:	8fbf001c 	lw	ra,28(sp)
    17fc:	8fb00018 	lw	s0,24(sp)
    1800:	27bd0040 	addiu	sp,sp,64
    1804:	03e00008 	jr	ra
    1808:	00000000 	nop

0000180c <func_8093A4DC>:
    180c:	27bdffe0 	addiu	sp,sp,-32
    1810:	afbf0014 	sw	ra,20(sp)
    1814:	afa50024 	sw	a1,36(sp)
    1818:	8caf1c44 	lw	t7,7236(a1)
    181c:	3c180000 	lui	t8,0x0
    1820:	27180000 	addiu	t8,t8,0
    1824:	afaf001c 	sw	t7,28(sp)
    1828:	00803825 	move	a3,a0
    182c:	ac98014c 	sw	t8,332(a0)
    1830:	3c050600 	lui	a1,0x600
    1834:	24a57688 	addiu	a1,a1,30344
    1838:	afa70020 	sw	a3,32(sp)
    183c:	24840568 	addiu	a0,a0,1384
    1840:	0c000000 	jal	0 <func_80938CD0>
    1844:	3c06c0a0 	lui	a2,0xc0a0
    1848:	3c040600 	lui	a0,0x600
    184c:	0c000000 	jal	0 <func_80938CD0>
    1850:	24847688 	addiu	a0,a0,30344
    1854:	44822000 	mtc1	v0,$f4
    1858:	8fa70020 	lw	a3,32(sp)
    185c:	24190046 	li	t9,70
    1860:	468021a0 	cvt.s.w	$f6,$f4
    1864:	a4f9017a 	sh	t9,378(a3)
    1868:	44800000 	mtc1	zero,$f0
    186c:	240bffff 	li	t3,-1
    1870:	3c010000 	lui	at,0x0
    1874:	8ced048c 	lw	t5,1164(a3)
    1878:	e4e601a4 	swc1	$f6,420(a3)
    187c:	8fa8001c 	lw	t0,28(sp)
    1880:	8cec0490 	lw	t4,1168(a3)
    1884:	8d0a0024 	lw	t2,36(t0)
    1888:	acea04b0 	sw	t2,1200(a3)
    188c:	8d090028 	lw	t1,40(t0)
    1890:	ace904b4 	sw	t1,1204(a3)
    1894:	8d0a002c 	lw	t2,44(t0)
    1898:	a4e00440 	sh	zero,1088(a3)
    189c:	a4eb04fc 	sh	t3,1276(a3)
    18a0:	e4e0052c 	swc1	$f0,1324(a3)
    18a4:	e4e00548 	swc1	$f0,1352(a3)
    18a8:	acea04b8 	sw	t2,1208(a3)
    18ac:	c4280000 	lwc1	$f8,0(at)
    18b0:	3c0144fa 	lui	at,0x44fa
    18b4:	aced050c 	sw	t5,1292(a3)
    18b8:	44815000 	mtc1	at,$f10
    18bc:	8ced0494 	lw	t5,1172(a3)
    18c0:	e4e004d4 	swc1	$f0,1236(a3)
    18c4:	e4e004d8 	swc1	$f0,1240(a3)
    18c8:	e4e004e4 	swc1	$f0,1252(a3)
    18cc:	e4e004ec 	swc1	$f0,1260(a3)
    18d0:	e4e004f0 	swc1	$f0,1264(a3)
    18d4:	acec0510 	sw	t4,1296(a3)
    18d8:	e4e804f8 	swc1	$f8,1272(a3)
    18dc:	aced0514 	sw	t5,1300(a3)
    18e0:	e4ea04e0 	swc1	$f10,1248(a3)
    18e4:	8fbf0014 	lw	ra,20(sp)
    18e8:	27bd0020 	addiu	sp,sp,32
    18ec:	03e00008 	jr	ra
    18f0:	00000000 	nop

000018f4 <func_8093A5C4>:
    18f4:	27bdff48 	addiu	sp,sp,-184
    18f8:	f7bc0050 	sdc1	$f28,80(sp)
    18fc:	3c014000 	lui	at,0x4000
    1900:	4481e000 	mtc1	at,$f28
    1904:	f7ba0048 	sdc1	$f26,72(sp)
    1908:	3c010000 	lui	at,0x0
    190c:	c43a0000 	lwc1	$f26,0(at)
    1910:	f7b80040 	sdc1	$f24,64(sp)
    1914:	3c014120 	lui	at,0x4120
    1918:	4481c000 	mtc1	at,$f24
    191c:	f7b60038 	sdc1	$f22,56(sp)
    1920:	3c013e80 	lui	at,0x3e80
    1924:	4481b000 	mtc1	at,$f22
    1928:	afb60074 	sw	s6,116(sp)
    192c:	f7b40030 	sdc1	$f20,48(sp)
    1930:	3c0141a0 	lui	at,0x41a0
    1934:	0006b400 	sll	s6,a2,0x10
    1938:	afb70078 	sw	s7,120(sp)
    193c:	afb50070 	sw	s5,112(sp)
    1940:	afb4006c 	sw	s4,108(sp)
    1944:	afb30068 	sw	s3,104(sp)
    1948:	afb20064 	sw	s2,100(sp)
    194c:	afb10060 	sw	s1,96(sp)
    1950:	afb0005c 	sw	s0,92(sp)
    1954:	4481a000 	mtc1	at,$f20
    1958:	00a09825 	move	s3,a1
    195c:	0080b825 	move	s7,a0
    1960:	0016b403 	sra	s6,s6,0x10
    1964:	afbf007c 	sw	ra,124(sp)
    1968:	afa600c0 	sw	a2,192(sp)
    196c:	00008025 	move	s0,zero
    1970:	27b100a4 	addiu	s1,sp,164
    1974:	24920500 	addiu	s2,a0,1280
    1978:	27b40098 	addiu	s4,sp,152
    197c:	27b5008c 	addiu	s5,sp,140
    1980:	0c000000 	jal	0 <func_80938CD0>
    1984:	4600a306 	mov.s	$f12,$f20
    1988:	e7a00098 	swc1	$f0,152(sp)
    198c:	0c000000 	jal	0 <func_80938CD0>
    1990:	4600c306 	mov.s	$f12,$f24
    1994:	e7a0009c 	swc1	$f0,156(sp)
    1998:	0c000000 	jal	0 <func_80938CD0>
    199c:	4600a306 	mov.s	$f12,$f20
    19a0:	e7a000a0 	swc1	$f0,160(sp)
    19a4:	e7ba0090 	swc1	$f26,144(sp)
    19a8:	0c000000 	jal	0 <func_80938CD0>
    19ac:	4600b306 	mov.s	$f12,$f22
    19b0:	e7a0008c 	swc1	$f0,140(sp)
    19b4:	0c000000 	jal	0 <func_80938CD0>
    19b8:	4600b306 	mov.s	$f12,$f22
    19bc:	e7a00094 	swc1	$f0,148(sp)
    19c0:	8e4f0000 	lw	t7,0(s2)
    19c4:	4600e306 	mov.s	$f12,$f28
    19c8:	ae2f0000 	sw	t7,0(s1)
    19cc:	8e4e0004 	lw	t6,4(s2)
    19d0:	ae2e0004 	sw	t6,4(s1)
    19d4:	8e4f0008 	lw	t7,8(s2)
    19d8:	0c000000 	jal	0 <func_80938CD0>
    19dc:	ae2f0008 	sw	t7,8(s1)
    19e0:	4600010d 	trunc.w.s	$f4,$f0
    19e4:	240b004b 	li	t3,75
    19e8:	afab0018 	sw	t3,24(sp)
    19ec:	02602025 	move	a0,s3
    19f0:	44192000 	mfc1	t9,$f4
    19f4:	02202825 	move	a1,s1
    19f8:	02803025 	move	a2,s4
    19fc:	00194400 	sll	t0,t9,0x10
    1a00:	00084c03 	sra	t1,t0,0x10
    1a04:	252a0008 	addiu	t2,t1,8
    1a08:	448a3000 	mtc1	t2,$f6
    1a0c:	02a03825 	move	a3,s5
    1a10:	afb60014 	sw	s6,20(sp)
    1a14:	46803220 	cvt.s.w	$f8,$f6
    1a18:	0c000000 	jal	0 <func_80938CD0>
    1a1c:	e7a80010 	swc1	$f8,16(sp)
    1a20:	26100001 	addiu	s0,s0,1
    1a24:	00108400 	sll	s0,s0,0x10
    1a28:	00108403 	sra	s0,s0,0x10
    1a2c:	2a010096 	slti	at,s0,150
    1a30:	1420ffd3 	bnez	at,1980 <func_8093A5C4+0x8c>
    1a34:	00000000 	nop
    1a38:	24010001 	li	at,1
    1a3c:	16c1003e 	bne	s6,at,1b38 <func_8093A5C4+0x244>
    1a40:	24190002 	li	t9,2
    1a44:	240c0001 	li	t4,1
    1a48:	3c010000 	lui	at,0x0
    1a4c:	a02c0000 	sb	t4,0(at)
    1a50:	c6ea0500 	lwc1	$f10,1280(s7)
    1a54:	240d0065 	li	t5,101
    1a58:	26641c24 	addiu	a0,s3,7204
    1a5c:	e7aa0010 	swc1	$f10,16(sp)
    1a60:	c6f00504 	lwc1	$f16,1284(s7)
    1a64:	02e02825 	move	a1,s7
    1a68:	02603025 	move	a2,s3
    1a6c:	e7b00014 	swc1	$f16,20(sp)
    1a70:	c6f20508 	lwc1	$f18,1288(s7)
    1a74:	afad0028 	sw	t5,40(sp)
    1a78:	afa00024 	sw	zero,36(sp)
    1a7c:	afa00020 	sw	zero,32(sp)
    1a80:	afa0001c 	sw	zero,28(sp)
    1a84:	240700dc 	li	a3,220
    1a88:	0c000000 	jal	0 <func_80938CD0>
    1a8c:	e7b20018 	swc1	$f18,24(sp)
    1a90:	10400067 	beqz	v0,1c30 <func_8093A5C4+0x33c>
    1a94:	3c0f0000 	lui	t7,0x0
    1a98:	8def0000 	lw	t7,0(t7)
    1a9c:	3c0e0000 	lui	t6,0x0
    1aa0:	25ce0000 	addiu	t6,t6,0
    1aa4:	8df8014c 	lw	t8,332(t7)
    1aa8:	3c030000 	lui	v1,0x0
    1aac:	24630000 	addiu	v1,v1,0
    1ab0:	15d80004 	bne	t6,t8,1ac4 <func_8093A5C4+0x1d0>
    1ab4:	3c01437f 	lui	at,0x437f
    1ab8:	24190064 	li	t9,100
    1abc:	10000003 	b	1acc <func_8093A5C4+0x1d8>
    1ac0:	a4590178 	sh	t9,376(v0)
    1ac4:	24080032 	li	t0,50
    1ac8:	a4480178 	sh	t0,376(v0)
    1acc:	44812000 	mtc1	at,$f4
    1ad0:	8c690000 	lw	t1,0(v1)
    1ad4:	3c013f80 	lui	at,0x3f80
    1ad8:	44813000 	mtc1	at,$f6
    1adc:	e52401b0 	swc1	$f4,432(t1)
    1ae0:	8c640000 	lw	a0,0(v1)
    1ae4:	3c010000 	lui	at,0x0
    1ae8:	24180004 	li	t8,4
    1aec:	c48001b0 	lwc1	$f0,432(a0)
    1af0:	e48001ac 	swc1	$f0,428(a0)
    1af4:	8c6a0000 	lw	t2,0(v1)
    1af8:	e54001a8 	swc1	$f0,424(t2)
    1afc:	8c6b0000 	lw	t3,0(v1)
    1b00:	e56601b4 	swc1	$f6,436(t3)
    1b04:	8c6c0000 	lw	t4,0(v1)
    1b08:	c4280000 	lwc1	$f8,0(at)
    1b0c:	3c010000 	lui	at,0x0
    1b10:	e58801b8 	swc1	$f8,440(t4)
    1b14:	8c4e0024 	lw	t6,36(v0)
    1b18:	8c6d0000 	lw	t5,0(v1)
    1b1c:	adae04bc 	sw	t6,1212(t5)
    1b20:	8c4f0028 	lw	t7,40(v0)
    1b24:	adaf04c0 	sw	t7,1216(t5)
    1b28:	8c4e002c 	lw	t6,44(v0)
    1b2c:	adae04c4 	sw	t6,1220(t5)
    1b30:	1000003f 	b	1c30 <func_8093A5C4+0x33c>
    1b34:	a0380000 	sb	t8,0(at)
    1b38:	3c010000 	lui	at,0x0
    1b3c:	a0390000 	sb	t9,0(at)
    1b40:	c6ea0500 	lwc1	$f10,1280(s7)
    1b44:	24080067 	li	t0,103
    1b48:	26641c24 	addiu	a0,s3,7204
    1b4c:	e7aa0010 	swc1	$f10,16(sp)
    1b50:	c6f00504 	lwc1	$f16,1284(s7)
    1b54:	02e02825 	move	a1,s7
    1b58:	02603025 	move	a2,s3
    1b5c:	e7b00014 	swc1	$f16,20(sp)
    1b60:	c6f20508 	lwc1	$f18,1288(s7)
    1b64:	afa80028 	sw	t0,40(sp)
    1b68:	afa00024 	sw	zero,36(sp)
    1b6c:	afa00020 	sw	zero,32(sp)
    1b70:	afa0001c 	sw	zero,28(sp)
    1b74:	240700dc 	li	a3,220
    1b78:	0c000000 	jal	0 <func_80938CD0>
    1b7c:	e7b20018 	swc1	$f18,24(sp)
    1b80:	1040002b 	beqz	v0,1c30 <func_8093A5C4+0x33c>
    1b84:	3c0a0000 	lui	t2,0x0
    1b88:	8d4a0000 	lw	t2,0(t2)
    1b8c:	3c090000 	lui	t1,0x0
    1b90:	25290000 	addiu	t1,t1,0
    1b94:	8d4b014c 	lw	t3,332(t2)
    1b98:	3c030000 	lui	v1,0x0
    1b9c:	24630000 	addiu	v1,v1,0
    1ba0:	152b0004 	bne	t1,t3,1bb4 <func_8093A5C4+0x2c0>
    1ba4:	3c014248 	lui	at,0x4248
    1ba8:	240c0064 	li	t4,100
    1bac:	10000003 	b	1bbc <func_8093A5C4+0x2c8>
    1bb0:	a44c0178 	sh	t4,376(v0)
    1bb4:	240d0032 	li	t5,50
    1bb8:	a44d0178 	sh	t5,376(v0)
    1bbc:	44812000 	mtc1	at,$f4
    1bc0:	8c6f0000 	lw	t7,0(v1)
    1bc4:	3c01437a 	lui	at,0x437a
    1bc8:	44813000 	mtc1	at,$f6
    1bcc:	e5e401b0 	swc1	$f4,432(t7)
    1bd0:	8c6e0000 	lw	t6,0(v1)
    1bd4:	3c010000 	lui	at,0x0
    1bd8:	240c0003 	li	t4,3
    1bdc:	e5c601a8 	swc1	$f6,424(t6)
    1be0:	8c780000 	lw	t8,0(v1)
    1be4:	c4280000 	lwc1	$f8,0(at)
    1be8:	3c013f80 	lui	at,0x3f80
    1bec:	44815000 	mtc1	at,$f10
    1bf0:	e70801b4 	swc1	$f8,436(t8)
    1bf4:	8c790000 	lw	t9,0(v1)
    1bf8:	3c01428c 	lui	at,0x428c
    1bfc:	44818000 	mtc1	at,$f16
    1c00:	e72a01bc 	swc1	$f10,444(t9)
    1c04:	8c680000 	lw	t0,0(v1)
    1c08:	3c010000 	lui	at,0x0
    1c0c:	e51001c4 	swc1	$f16,452(t0)
    1c10:	8c4b0024 	lw	t3,36(v0)
    1c14:	8c6a0000 	lw	t2,0(v1)
    1c18:	ad4b04bc 	sw	t3,1212(t2)
    1c1c:	8c490028 	lw	t1,40(v0)
    1c20:	ad4904c0 	sw	t1,1216(t2)
    1c24:	8c4b002c 	lw	t3,44(v0)
    1c28:	ad4b04c4 	sw	t3,1220(t2)
    1c2c:	a02c0000 	sb	t4,0(at)
    1c30:	8fbf007c 	lw	ra,124(sp)
    1c34:	d7b40030 	ldc1	$f20,48(sp)
    1c38:	d7b60038 	ldc1	$f22,56(sp)
    1c3c:	d7b80040 	ldc1	$f24,64(sp)
    1c40:	d7ba0048 	ldc1	$f26,72(sp)
    1c44:	d7bc0050 	ldc1	$f28,80(sp)
    1c48:	8fb0005c 	lw	s0,92(sp)
    1c4c:	8fb10060 	lw	s1,96(sp)
    1c50:	8fb20064 	lw	s2,100(sp)
    1c54:	8fb30068 	lw	s3,104(sp)
    1c58:	8fb4006c 	lw	s4,108(sp)
    1c5c:	8fb50070 	lw	s5,112(sp)
    1c60:	8fb60074 	lw	s6,116(sp)
    1c64:	8fb70078 	lw	s7,120(sp)
    1c68:	03e00008 	jr	ra
    1c6c:	27bd00b8 	addiu	sp,sp,184

00001c70 <func_8093A940>:
    1c70:	27bdffb0 	addiu	sp,sp,-80
    1c74:	afbf0024 	sw	ra,36(sp)
    1c78:	afb10020 	sw	s1,32(sp)
    1c7c:	afb0001c 	sw	s0,28(sp)
    1c80:	afa50054 	sw	a1,84(sp)
    1c84:	8cb11c44 	lw	s1,7236(a1)
    1c88:	c486048c 	lwc1	$f6,1164(a0)
    1c8c:	00808025 	move	s0,a0
    1c90:	c6240024 	lwc1	$f4,36(s1)
    1c94:	00002825 	move	a1,zero
    1c98:	46062201 	sub.s	$f8,$f4,$f6
    1c9c:	e7a80044 	swc1	$f8,68(sp)
    1ca0:	c4900490 	lwc1	$f16,1168(a0)
    1ca4:	c62a0028 	lwc1	$f10,40(s1)
    1ca8:	46105481 	sub.s	$f18,$f10,$f16
    1cac:	e7b20048 	swc1	$f18,72(sp)
    1cb0:	c4860494 	lwc1	$f6,1172(a0)
    1cb4:	c624002c 	lwc1	$f4,44(s1)
    1cb8:	46062201 	sub.s	$f8,$f4,$f6
    1cbc:	e7a8004c 	swc1	$f8,76(sp)
    1cc0:	c48c0518 	lwc1	$f12,1304(a0)
    1cc4:	0c000000 	jal	0 <func_80938CD0>
    1cc8:	46006307 	neg.s	$f12,$f12
    1ccc:	c60c051c 	lwc1	$f12,1308(s0)
    1cd0:	24050001 	li	a1,1
    1cd4:	0c000000 	jal	0 <func_80938CD0>
    1cd8:	46006307 	neg.s	$f12,$f12
    1cdc:	27a40044 	addiu	a0,sp,68
    1ce0:	0c000000 	jal	0 <func_80938CD0>
    1ce4:	27a50038 	addiu	a1,sp,56
    1ce8:	c7a00038 	lwc1	$f0,56(sp)
    1cec:	3c0141a0 	lui	at,0x41a0
    1cf0:	44815000 	mtc1	at,$f10
    1cf4:	46000005 	abs.s	$f0,$f0
    1cf8:	3c014248 	lui	at,0x4248
    1cfc:	460a003c 	c.lt.s	$f0,$f10
    1d00:	c7a0003c 	lwc1	$f0,60(sp)
    1d04:	00001025 	move	v0,zero
    1d08:	45000050 	bc1f	1e4c <func_8093A940+0x1dc>
    1d0c:	00000000 	nop
    1d10:	44818000 	mtc1	at,$f16
    1d14:	46000005 	abs.s	$f0,$f0
    1d18:	3c0142c8 	lui	at,0x42c8
    1d1c:	4610003c 	c.lt.s	$f0,$f16
    1d20:	c7a40040 	lwc1	$f4,64(sp)
    1d24:	45000049 	bc1f	1e4c <func_8093A940+0x1dc>
    1d28:	00000000 	nop
    1d2c:	44819000 	mtc1	at,$f18
    1d30:	00000000 	nop
    1d34:	4604903c 	c.lt.s	$f18,$f4
    1d38:	00000000 	nop
    1d3c:	45000043 	bc1f	1e4c <func_8093A940+0x1dc>
    1d40:	00000000 	nop
    1d44:	c606052c 	lwc1	$f6,1324(s0)
    1d48:	4606203e 	c.le.s	$f4,$f6
    1d4c:	00000000 	nop
    1d50:	4500003e 	bc1f	1e4c <func_8093A940+0x1dc>
    1d54:	00000000 	nop
    1d58:	3c020000 	lui	v0,0x0
    1d5c:	8c420000 	lw	v0,0(v0)
    1d60:	24180096 	li	t8,150
    1d64:	844f017c 	lh	t7,380(v0)
    1d68:	15e00036 	bnez	t7,1e44 <func_8093A940+0x1d4>
    1d6c:	00000000 	nop
    1d70:	a458017c 	sh	t8,380(v0)
    1d74:	c7a80044 	lwc1	$f8,68(sp)
    1d78:	c7b00048 	lwc1	$f16,72(sp)
    1d7c:	c7a4004c 	lwc1	$f4,76(sp)
    1d80:	46084282 	mul.s	$f10,$f8,$f8
    1d84:	860700b6 	lh	a3,182(s0)
    1d88:	24190020 	li	t9,32
    1d8c:	46108482 	mul.s	$f18,$f16,$f16
    1d90:	44808000 	mtc1	zero,$f16
    1d94:	02002825 	move	a1,s0
    1d98:	46042202 	mul.s	$f8,$f4,$f4
    1d9c:	3c064040 	lui	a2,0x4040
    1da0:	46125180 	add.s	$f6,$f10,$f18
    1da4:	46083000 	add.s	$f0,$f6,$f8
    1da8:	46000004 	sqrt.s	$f0,$f0
    1dac:	e600052c 	swc1	$f0,1324(s0)
    1db0:	afb90014 	sw	t9,20(sp)
    1db4:	8fa40054 	lw	a0,84(sp)
    1db8:	0c000000 	jal	0 <func_80938CD0>
    1dbc:	e7b00010 	swc1	$f16,16(sp)
    1dc0:	8608001c 	lh	t0,28(s0)
    1dc4:	3c020000 	lui	v0,0x0
    1dc8:	24420000 	addiu	v0,v0,0
    1dcc:	55000009 	bnezl	t0,1df4 <func_8093A940+0x184>
    1dd0:	922b0a60 	lbu	t3,2656(s1)
    1dd4:	90490000 	lbu	t1,0(v0)
    1dd8:	240a0001 	li	t2,1
    1ddc:	15200019 	bnez	t1,1e44 <func_8093A940+0x1d4>
    1de0:	00000000 	nop
    1de4:	a04a0000 	sb	t2,0(v0)
    1de8:	10000018 	b	1e4c <func_8093A940+0x1dc>
    1dec:	24020001 	li	v0,1
    1df0:	922b0a60 	lbu	t3,2656(s1)
    1df4:	00008025 	move	s0,zero
    1df8:	15600012 	bnez	t3,1e44 <func_8093A940+0x1d4>
    1dfc:	00002025 	move	a0,zero
    1e00:	0c000000 	jal	0 <func_80938CD0>
    1e04:	240500c8 	li	a1,200
    1e08:	02306021 	addu	t4,s1,s0
    1e0c:	26100001 	addiu	s0,s0,1
    1e10:	00108400 	sll	s0,s0,0x10
    1e14:	00108403 	sra	s0,s0,0x10
    1e18:	2a010012 	slti	at,s0,18
    1e1c:	1420fff7 	bnez	at,1dfc <func_8093A940+0x18c>
    1e20:	a1820a61 	sb	v0,2657(t4)
    1e24:	8e2e0678 	lw	t6,1656(s1)
    1e28:	240d0001 	li	t5,1
    1e2c:	a22d0a60 	sb	t5,2656(s1)
    1e30:	95c50092 	lhu	a1,146(t6)
    1e34:	02202025 	move	a0,s1
    1e38:	24a5681e 	addiu	a1,a1,26654
    1e3c:	0c000000 	jal	0 <func_80938CD0>
    1e40:	30a5ffff 	andi	a1,a1,0xffff
    1e44:	10000001 	b	1e4c <func_8093A940+0x1dc>
    1e48:	24020001 	li	v0,1
    1e4c:	8fbf0024 	lw	ra,36(sp)
    1e50:	8fb0001c 	lw	s0,28(sp)
    1e54:	8fb10020 	lw	s1,32(sp)
    1e58:	03e00008 	jr	ra
    1e5c:	27bd0050 	addiu	sp,sp,80

00001e60 <func_8093AB30>:
    1e60:	27bdffb8 	addiu	sp,sp,-72
    1e64:	afbf001c 	sw	ra,28(sp)
    1e68:	afb00018 	sw	s0,24(sp)
    1e6c:	afa5004c 	sw	a1,76(sp)
    1e70:	8ca21c44 	lw	v0,7236(a1)
    1e74:	00808025 	move	s0,a0
    1e78:	8c4f067c 	lw	t7,1660(v0)
    1e7c:	000fc240 	sll	t8,t7,0x9
    1e80:	07030093 	bgezl	t8,20d0 <func_8093AB30+0x270>
    1e84:	00001025 	move	v0,zero
    1e88:	845900b6 	lh	t9,182(v0)
    1e8c:	848800b6 	lh	t0,182(a0)
    1e90:	34018000 	li	at,0x8000
    1e94:	03281823 	subu	v1,t9,t0
    1e98:	00611821 	addu	v1,v1,at
    1e9c:	00031c00 	sll	v1,v1,0x10
    1ea0:	00031c03 	sra	v1,v1,0x10
    1ea4:	28612000 	slti	at,v1,8192
    1ea8:	10200088 	beqz	at,20cc <func_8093AB30+0x26c>
    1eac:	2861e001 	slti	at,v1,-8191
    1eb0:	54200087 	bnezl	at,20d0 <func_8093AB30+0x270>
    1eb4:	00001025 	move	v0,zero
    1eb8:	44800000 	mtc1	zero,$f0
    1ebc:	3c014120 	lui	at,0x4120
    1ec0:	44812000 	mtc1	at,$f4
    1ec4:	e7a0003c 	swc1	$f0,60(sp)
    1ec8:	e7a00040 	swc1	$f0,64(sp)
    1ecc:	e7a40044 	swc1	$f4,68(sp)
    1ed0:	844900b6 	lh	t1,182(v0)
    1ed4:	3c014700 	lui	at,0x4700
    1ed8:	44815000 	mtc1	at,$f10
    1edc:	44893000 	mtc1	t1,$f6
    1ee0:	3c010000 	lui	at,0x0
    1ee4:	c4320000 	lwc1	$f18,0(at)
    1ee8:	46803220 	cvt.s.w	$f8,$f6
    1eec:	afa2002c 	sw	v0,44(sp)
    1ef0:	00002825 	move	a1,zero
    1ef4:	460a4403 	div.s	$f16,$f8,$f10
    1ef8:	46128302 	mul.s	$f12,$f16,$f18
    1efc:	0c000000 	jal	0 <func_80938CD0>
    1f00:	00000000 	nop
    1f04:	27a4003c 	addiu	a0,sp,60
    1f08:	0c000000 	jal	0 <func_80938CD0>
    1f0c:	27a50030 	addiu	a1,sp,48
    1f10:	8fa2002c 	lw	v0,44(sp)
    1f14:	c7a60030 	lwc1	$f6,48(sp)
    1f18:	c60a048c 	lwc1	$f10,1164(s0)
    1f1c:	c4440024 	lwc1	$f4,36(v0)
    1f20:	00002825 	move	a1,zero
    1f24:	46062200 	add.s	$f8,$f4,$f6
    1f28:	c7a40034 	lwc1	$f4,52(sp)
    1f2c:	460a4401 	sub.s	$f16,$f8,$f10
    1f30:	e7b0003c 	swc1	$f16,60(sp)
    1f34:	c4520028 	lwc1	$f18,40(v0)
    1f38:	c6080490 	lwc1	$f8,1168(s0)
    1f3c:	46049180 	add.s	$f6,$f18,$f4
    1f40:	c7b20038 	lwc1	$f18,56(sp)
    1f44:	46083281 	sub.s	$f10,$f6,$f8
    1f48:	e7aa0040 	swc1	$f10,64(sp)
    1f4c:	c450002c 	lwc1	$f16,44(v0)
    1f50:	c6060494 	lwc1	$f6,1172(s0)
    1f54:	46128100 	add.s	$f4,$f16,$f18
    1f58:	46062201 	sub.s	$f8,$f4,$f6
    1f5c:	e7a80044 	swc1	$f8,68(sp)
    1f60:	c60c0518 	lwc1	$f12,1304(s0)
    1f64:	0c000000 	jal	0 <func_80938CD0>
    1f68:	46006307 	neg.s	$f12,$f12
    1f6c:	c60c051c 	lwc1	$f12,1308(s0)
    1f70:	24050001 	li	a1,1
    1f74:	0c000000 	jal	0 <func_80938CD0>
    1f78:	46006307 	neg.s	$f12,$f12
    1f7c:	27a4003c 	addiu	a0,sp,60
    1f80:	0c000000 	jal	0 <func_80938CD0>
    1f84:	27a50030 	addiu	a1,sp,48
    1f88:	c7a00030 	lwc1	$f0,48(sp)
    1f8c:	3c0141f0 	lui	at,0x41f0
    1f90:	44815000 	mtc1	at,$f10
    1f94:	46000005 	abs.s	$f0,$f0
    1f98:	3c01428c 	lui	at,0x428c
    1f9c:	460a003c 	c.lt.s	$f0,$f10
    1fa0:	c7a00034 	lwc1	$f0,52(sp)
    1fa4:	4502004a 	bc1fl	20d0 <func_8093AB30+0x270>
    1fa8:	00001025 	move	v0,zero
    1fac:	44818000 	mtc1	at,$f16
    1fb0:	46000005 	abs.s	$f0,$f0
    1fb4:	3c0142c8 	lui	at,0x42c8
    1fb8:	4610003c 	c.lt.s	$f0,$f16
    1fbc:	c7a40038 	lwc1	$f4,56(sp)
    1fc0:	45020043 	bc1fl	20d0 <func_8093AB30+0x270>
    1fc4:	00001025 	move	v0,zero
    1fc8:	44819000 	mtc1	at,$f18
    1fcc:	00000000 	nop
    1fd0:	4604903c 	c.lt.s	$f18,$f4
    1fd4:	00000000 	nop
    1fd8:	4502003d 	bc1fl	20d0 <func_8093AB30+0x270>
    1fdc:	00001025 	move	v0,zero
    1fe0:	c606052c 	lwc1	$f6,1324(s0)
    1fe4:	4606203e 	c.le.s	$f4,$f6
    1fe8:	00000000 	nop
    1fec:	45020038 	bc1fl	20d0 <func_8093AB30+0x270>
    1ff0:	00001025 	move	v0,zero
    1ff4:	0c000000 	jal	0 <func_80938CD0>
    1ff8:	8fa4004c 	lw	a0,76(sp)
    1ffc:	1040000d 	beqz	v0,2034 <func_8093AB30+0x1d4>
    2000:	3c030000 	lui	v1,0x0
    2004:	c7a8003c 	lwc1	$f8,60(sp)
    2008:	c7b00040 	lwc1	$f16,64(sp)
    200c:	c7a40044 	lwc1	$f4,68(sp)
    2010:	46084282 	mul.s	$f10,$f8,$f8
    2014:	24020001 	li	v0,1
    2018:	46108482 	mul.s	$f18,$f16,$f16
    201c:	46125180 	add.s	$f6,$f10,$f18
    2020:	46042202 	mul.s	$f8,$f4,$f4
    2024:	46083000 	add.s	$f0,$f6,$f8
    2028:	46000004 	sqrt.s	$f0,$f0
    202c:	10000028 	b	20d0 <func_8093AB30+0x270>
    2030:	e600052c 	swc1	$f0,1324(s0)
    2034:	90630000 	lbu	v1,0(v1)
    2038:	2861000b 	slti	at,v1,11
    203c:	14200003 	bnez	at,204c <func_8093AB30+0x1ec>
    2040:	00601025 	move	v0,v1
    2044:	10000022 	b	20d0 <func_8093AB30+0x270>
    2048:	00001025 	move	v0,zero
    204c:	14400010 	bnez	v0,2090 <func_8093AB30+0x230>
    2050:	8fa4004c 	lw	a0,76(sp)
    2054:	3c054120 	lui	a1,0x4120
    2058:	0c000000 	jal	0 <func_80938CD0>
    205c:	8606001c 	lh	a2,28(s0)
    2060:	3c013f80 	lui	at,0x3f80
    2064:	44818000 	mtc1	at,$f16
    2068:	8faa004c 	lw	t2,76(sp)
    206c:	3c010001 	lui	at,0x1
    2070:	240b000a 	li	t3,10
    2074:	002a0821 	addu	at,at,t2
    2078:	e4300afc 	swc1	$f16,2812(at)
    207c:	a60b0178 	sh	t3,376(s0)
    2080:	0c000000 	jal	0 <func_80938CD0>
    2084:	24041838 	li	a0,6200
    2088:	3c030000 	lui	v1,0x0
    208c:	90630000 	lbu	v1,0(v1)
    2090:	c7aa003c 	lwc1	$f10,60(sp)
    2094:	c7a40040 	lwc1	$f4,64(sp)
    2098:	c7b00044 	lwc1	$f16,68(sp)
    209c:	460a5482 	mul.s	$f18,$f10,$f10
    20a0:	246c0001 	addiu	t4,v1,1
    20a4:	3c010000 	lui	at,0x0
    20a8:	46042182 	mul.s	$f6,$f4,$f4
    20ac:	a02c0000 	sb	t4,0(at)
    20b0:	24020002 	li	v0,2
    20b4:	46108282 	mul.s	$f10,$f16,$f16
    20b8:	46069200 	add.s	$f8,$f18,$f6
    20bc:	460a4000 	add.s	$f0,$f8,$f10
    20c0:	46000004 	sqrt.s	$f0,$f0
    20c4:	10000002 	b	20d0 <func_8093AB30+0x270>
    20c8:	e600052c 	swc1	$f0,1324(s0)
    20cc:	00001025 	move	v0,zero
    20d0:	8fbf001c 	lw	ra,28(sp)
    20d4:	8fb00018 	lw	s0,24(sp)
    20d8:	27bd0048 	addiu	sp,sp,72
    20dc:	03e00008 	jr	ra
    20e0:	00000000 	nop

000020e4 <func_8093ADB4>:
    20e4:	27bdffc8 	addiu	sp,sp,-56
    20e8:	afbf001c 	sw	ra,28(sp)
    20ec:	afb00018 	sw	s0,24(sp)
    20f0:	c486050c 	lwc1	$f6,1292(a0)
    20f4:	c4a40000 	lwc1	$f4,0(a1)
    20f8:	00808025 	move	s0,a0
    20fc:	46062201 	sub.s	$f8,$f4,$f6
    2100:	e7a8002c 	swc1	$f8,44(sp)
    2104:	c4900510 	lwc1	$f16,1296(a0)
    2108:	c4aa0004 	lwc1	$f10,4(a1)
    210c:	46105481 	sub.s	$f18,$f10,$f16
    2110:	e7b20030 	swc1	$f18,48(sp)
    2114:	c4860514 	lwc1	$f6,1300(a0)
    2118:	c4a40008 	lwc1	$f4,8(a1)
    211c:	00002825 	move	a1,zero
    2120:	46062201 	sub.s	$f8,$f4,$f6
    2124:	e7a80034 	swc1	$f8,52(sp)
    2128:	c48c053c 	lwc1	$f12,1340(a0)
    212c:	0c000000 	jal	0 <func_80938CD0>
    2130:	46006307 	neg.s	$f12,$f12
    2134:	c60c0540 	lwc1	$f12,1344(s0)
    2138:	24050001 	li	a1,1
    213c:	0c000000 	jal	0 <func_80938CD0>
    2140:	46006307 	neg.s	$f12,$f12
    2144:	27a4002c 	addiu	a0,sp,44
    2148:	0c000000 	jal	0 <func_80938CD0>
    214c:	27a50020 	addiu	a1,sp,32
    2150:	c7a00020 	lwc1	$f0,32(sp)
    2154:	3c014248 	lui	at,0x4248
    2158:	44811000 	mtc1	at,$f2
    215c:	46000005 	abs.s	$f0,$f0
    2160:	00001025 	move	v0,zero
    2164:	4602003c 	c.lt.s	$f0,$f2
    2168:	c7a00024 	lwc1	$f0,36(sp)
    216c:	45000021 	bc1f	21f4 <func_8093ADB4+0x110>
    2170:	00000000 	nop
    2174:	46000005 	abs.s	$f0,$f0
    2178:	3c0142c8 	lui	at,0x42c8
    217c:	4602003c 	c.lt.s	$f0,$f2
    2180:	c7b00028 	lwc1	$f16,40(sp)
    2184:	4500001b 	bc1f	21f4 <func_8093ADB4+0x110>
    2188:	00000000 	nop
    218c:	44815000 	mtc1	at,$f10
    2190:	00000000 	nop
    2194:	4610503c 	c.lt.s	$f10,$f16
    2198:	00000000 	nop
    219c:	45000015 	bc1f	21f4 <func_8093ADB4+0x110>
    21a0:	00000000 	nop
    21a4:	c6120548 	lwc1	$f18,1352(s0)
    21a8:	c7a4002c 	lwc1	$f4,44(sp)
    21ac:	c7a80030 	lwc1	$f8,48(sp)
    21b0:	4612803e 	c.le.s	$f16,$f18
    21b4:	00000000 	nop
    21b8:	4500000e 	bc1f	21f4 <func_8093ADB4+0x110>
    21bc:	00000000 	nop
    21c0:	46042182 	mul.s	$f6,$f4,$f4
    21c4:	c7b00034 	lwc1	$f16,52(sp)
    21c8:	3c010000 	lui	at,0x0
    21cc:	46084282 	mul.s	$f10,$f8,$f8
    21d0:	c4280000 	lwc1	$f8,0(at)
    21d4:	24020001 	li	v0,1
    21d8:	46108102 	mul.s	$f4,$f16,$f16
    21dc:	460a3480 	add.s	$f18,$f6,$f10
    21e0:	46049000 	add.s	$f0,$f18,$f4
    21e4:	46000004 	sqrt.s	$f0,$f0
    21e8:	46080182 	mul.s	$f6,$f0,$f8
    21ec:	10000001 	b	21f4 <func_8093ADB4+0x110>
    21f0:	e6060548 	swc1	$f6,1352(s0)
    21f4:	8fbf001c 	lw	ra,28(sp)
    21f8:	8fb00018 	lw	s0,24(sp)
    21fc:	27bd0038 	addiu	sp,sp,56
    2200:	03e00008 	jr	ra
    2204:	00000000 	nop

00002208 <func_8093AED8>:
    2208:	27bdffc8 	addiu	sp,sp,-56
    220c:	afbf0014 	sw	ra,20(sp)
    2210:	c4900000 	lwc1	$f16,0(a0)
    2214:	3c0143af 	lui	at,0x43af
    2218:	44811000 	mtc1	at,$f2
    221c:	46008105 	abs.s	$f4,$f16
    2220:	e7a40024 	swc1	$f4,36(sp)
    2224:	c7a00024 	lwc1	$f0,36(sp)
    2228:	4602003c 	c.lt.s	$f0,$f2
    222c:	00000000 	nop
    2230:	4502001b 	bc1fl	22a0 <func_8093AED8+0x98>
    2234:	3c0142dc 	lui	at,0x42dc
    2238:	c4800008 	lwc1	$f0,8(a0)
    223c:	3c014370 	lui	at,0x4370
    2240:	46000005 	abs.s	$f0,$f0
    2244:	4602003c 	c.lt.s	$f0,$f2
    2248:	00000000 	nop
    224c:	45020014 	bc1fl	22a0 <func_8093AED8+0x98>
    2250:	3c0142dc 	lui	at,0x42dc
    2254:	44816000 	mtc1	at,$f12
    2258:	c4820004 	lwc1	$f2,4(a0)
    225c:	3c014348 	lui	at,0x4348
    2260:	460c103c 	c.lt.s	$f2,$f12
    2264:	00000000 	nop
    2268:	4502000d 	bc1fl	22a0 <func_8093AED8+0x98>
    226c:	3c0142dc 	lui	at,0x42dc
    2270:	44813000 	mtc1	at,$f6
    2274:	3c01420c 	lui	at,0x420c
    2278:	4602303c 	c.lt.s	$f6,$f2
    227c:	00000000 	nop
    2280:	45020004 	bc1fl	2294 <func_8093AED8+0x8c>
    2284:	44810000 	mtc1	at,$f0
    2288:	10000090 	b	24cc <func_8093AED8+0x2c4>
    228c:	46006006 	mov.s	$f0,$f12
    2290:	44810000 	mtc1	at,$f0
    2294:	1000008e 	b	24d0 <func_8093AED8+0x2c8>
    2298:	8fbf0014 	lw	ra,20(sp)
    229c:	3c0142dc 	lui	at,0x42dc
    22a0:	44816000 	mtc1	at,$f12
    22a4:	c7a00024 	lwc1	$f0,36(sp)
    22a8:	3c014416 	lui	at,0x4416
    22ac:	c48e0008 	lwc1	$f14,8(a0)
    22b0:	460c003c 	c.lt.s	$f0,$f12
    22b4:	c4820004 	lwc1	$f2,4(a0)
    22b8:	45020025 	bc1fl	2350 <func_8093AED8+0x148>
    22bc:	46007485 	abs.s	$f18,$f14
    22c0:	44814000 	mtc1	at,$f8
    22c4:	3c014416 	lui	at,0x4416
    22c8:	46087001 	sub.s	$f0,$f14,$f8
    22cc:	46000005 	abs.s	$f0,$f0
    22d0:	460c003c 	c.lt.s	$f0,$f12
    22d4:	00000000 	nop
    22d8:	45030009 	bc1tl	2300 <func_8093AED8+0xf8>
    22dc:	3c014366 	lui	at,0x4366
    22e0:	44815000 	mtc1	at,$f10
    22e4:	00000000 	nop
    22e8:	460a7000 	add.s	$f0,$f14,$f10
    22ec:	46000005 	abs.s	$f0,$f0
    22f0:	460c003c 	c.lt.s	$f0,$f12
    22f4:	00000000 	nop
    22f8:	45000014 	bc1f	234c <func_8093AED8+0x144>
    22fc:	3c014366 	lui	at,0x4366
    2300:	44812000 	mtc1	at,$f4
    2304:	3c01433e 	lui	at,0x433e
    2308:	4604103c 	c.lt.s	$f2,$f4
    230c:	00000000 	nop
    2310:	4502000f 	bc1fl	2350 <func_8093AED8+0x148>
    2314:	46007485 	abs.s	$f18,$f14
    2318:	44813000 	mtc1	at,$f6
    231c:	3c01420c 	lui	at,0x420c
    2320:	4602303c 	c.lt.s	$f6,$f2
    2324:	00000000 	nop
    2328:	45020006 	bc1fl	2344 <func_8093AED8+0x13c>
    232c:	44810000 	mtc1	at,$f0
    2330:	3c014366 	lui	at,0x4366
    2334:	44810000 	mtc1	at,$f0
    2338:	10000065 	b	24d0 <func_8093AED8+0x2c8>
    233c:	8fbf0014 	lw	ra,20(sp)
    2340:	44810000 	mtc1	at,$f0
    2344:	10000062 	b	24d0 <func_8093AED8+0x2c8>
    2348:	8fbf0014 	lw	ra,20(sp)
    234c:	46007485 	abs.s	$f18,$f14
    2350:	3c014416 	lui	at,0x4416
    2354:	460c903c 	c.lt.s	$f18,$f12
    2358:	00000000 	nop
    235c:	45020025 	bc1fl	23f4 <func_8093AED8+0x1ec>
    2360:	3c01c1a0 	lui	at,0xc1a0
    2364:	44814000 	mtc1	at,$f8
    2368:	3c014416 	lui	at,0x4416
    236c:	46088001 	sub.s	$f0,$f16,$f8
    2370:	46000005 	abs.s	$f0,$f0
    2374:	460c003c 	c.lt.s	$f0,$f12
    2378:	00000000 	nop
    237c:	45030009 	bc1tl	23a4 <func_8093AED8+0x19c>
    2380:	3c014366 	lui	at,0x4366
    2384:	44815000 	mtc1	at,$f10
    2388:	00000000 	nop
    238c:	460a8000 	add.s	$f0,$f16,$f10
    2390:	46000005 	abs.s	$f0,$f0
    2394:	460c003c 	c.lt.s	$f0,$f12
    2398:	00000000 	nop
    239c:	45000014 	bc1f	23f0 <func_8093AED8+0x1e8>
    23a0:	3c014366 	lui	at,0x4366
    23a4:	44812000 	mtc1	at,$f4
    23a8:	3c01433e 	lui	at,0x433e
    23ac:	4604103c 	c.lt.s	$f2,$f4
    23b0:	00000000 	nop
    23b4:	4502000f 	bc1fl	23f4 <func_8093AED8+0x1ec>
    23b8:	3c01c1a0 	lui	at,0xc1a0
    23bc:	44813000 	mtc1	at,$f6
    23c0:	3c01420c 	lui	at,0x420c
    23c4:	4602303c 	c.lt.s	$f6,$f2
    23c8:	00000000 	nop
    23cc:	45020006 	bc1fl	23e8 <func_8093AED8+0x1e0>
    23d0:	44810000 	mtc1	at,$f0
    23d4:	3c014366 	lui	at,0x4366
    23d8:	44810000 	mtc1	at,$f0
    23dc:	1000003c 	b	24d0 <func_8093AED8+0x2c8>
    23e0:	8fbf0014 	lw	ra,20(sp)
    23e4:	44810000 	mtc1	at,$f0
    23e8:	10000039 	b	24d0 <func_8093AED8+0x2c8>
    23ec:	8fbf0014 	lw	ra,20(sp)
    23f0:	3c01c1a0 	lui	at,0xc1a0
    23f4:	44814000 	mtc1	at,$f8
    23f8:	3c010000 	lui	at,0x0
    23fc:	c7a00024 	lwc1	$f0,36(sp)
    2400:	4608103c 	c.lt.s	$f2,$f8
    2404:	00000000 	nop
    2408:	45000004 	bc1f	241c <func_8093AED8+0x214>
    240c:	00000000 	nop
    2410:	44800000 	mtc1	zero,$f0
    2414:	1000002e 	b	24d0 <func_8093AED8+0x2c8>
    2418:	8fbf0014 	lw	ra,20(sp)
    241c:	c4220000 	lwc1	$f2,0(at)
    2420:	3c01420c 	lui	at,0x420c
    2424:	4600103c 	c.lt.s	$f2,$f0
    2428:	00000000 	nop
    242c:	45030006 	bc1tl	2448 <func_8093AED8+0x240>
    2430:	44810000 	mtc1	at,$f0
    2434:	4612103c 	c.lt.s	$f2,$f18
    2438:	00000000 	nop
    243c:	45000004 	bc1f	2450 <func_8093AED8+0x248>
    2440:	00000000 	nop
    2444:	44810000 	mtc1	at,$f0
    2448:	10000021 	b	24d0 <func_8093AED8+0x2c8>
    244c:	8fbf0014 	lw	ra,20(sp)
    2450:	0c000000 	jal	0 <func_80938CD0>
    2454:	afa40038 	sw	a0,56(sp)
    2458:	3c010000 	lui	at,0x0
    245c:	c42c0000 	lwc1	$f12,0(at)
    2460:	0c000000 	jal	0 <func_80938CD0>
    2464:	00002825 	move	a1,zero
    2468:	8fa40038 	lw	a0,56(sp)
    246c:	0c000000 	jal	0 <func_80938CD0>
    2470:	27a5002c 	addiu	a1,sp,44
    2474:	0c000000 	jal	0 <func_80938CD0>
    2478:	00000000 	nop
    247c:	c7a0002c 	lwc1	$f0,44(sp)
    2480:	3c014466 	lui	at,0x4466
    2484:	44811000 	mtc1	at,$f2
    2488:	46000005 	abs.s	$f0,$f0
    248c:	3c01420c 	lui	at,0x420c
    2490:	4600103c 	c.lt.s	$f2,$f0
    2494:	c7a00034 	lwc1	$f0,52(sp)
    2498:	45030007 	bc1tl	24b8 <func_8093AED8+0x2b0>
    249c:	44810000 	mtc1	at,$f0
    24a0:	46000005 	abs.s	$f0,$f0
    24a4:	4600103c 	c.lt.s	$f2,$f0
    24a8:	00000000 	nop
    24ac:	45020005 	bc1fl	24c4 <func_8093AED8+0x2bc>
    24b0:	3c01c2c8 	lui	at,0xc2c8
    24b4:	44810000 	mtc1	at,$f0
    24b8:	10000005 	b	24d0 <func_8093AED8+0x2c8>
    24bc:	8fbf0014 	lw	ra,20(sp)
    24c0:	3c01c2c8 	lui	at,0xc2c8
    24c4:	44810000 	mtc1	at,$f0
    24c8:	00000000 	nop
    24cc:	8fbf0014 	lw	ra,20(sp)
    24d0:	27bd0038 	addiu	sp,sp,56
    24d4:	03e00008 	jr	ra
    24d8:	00000000 	nop

000024dc <func_8093B1AC>:
    24dc:	27bdfeb0 	addiu	sp,sp,-336
    24e0:	afbf0064 	sw	ra,100(sp)
    24e4:	afb60060 	sw	s6,96(sp)
    24e8:	afb5005c 	sw	s5,92(sp)
    24ec:	afb40058 	sw	s4,88(sp)
    24f0:	afb30054 	sw	s3,84(sp)
    24f4:	afb20050 	sw	s2,80(sp)
    24f8:	afb1004c 	sw	s1,76(sp)
    24fc:	afb00048 	sw	s0,72(sp)
    2500:	f7ba0040 	sdc1	$f26,64(sp)
    2504:	f7b80038 	sdc1	$f24,56(sp)
    2508:	f7b60030 	sdc1	$f22,48(sp)
    250c:	f7b40028 	sdc1	$f20,40(sp)
    2510:	8cae1c44 	lw	t6,7236(a1)
    2514:	0080a825 	move	s5,a0
    2518:	00a0b025 	move	s6,a1
    251c:	afae0124 	sw	t6,292(sp)
    2520:	8c8f0118 	lw	t7,280(a0)
    2524:	3c063d4c 	lui	a2,0x3d4c
    2528:	34c6cccd 	ori	a2,a2,0xcccd
    252c:	afaf0120 	sw	t7,288(sp)
    2530:	8ea70068 	lw	a3,104(s5)
    2534:	3c0543c8 	lui	a1,0x43c8
    2538:	0c000000 	jal	0 <func_80938CD0>
    253c:	24840028 	addiu	a0,a0,40
    2540:	3c0140a0 	lui	at,0x40a0
    2544:	4481a000 	mtc1	at,$f20
    2548:	26a40068 	addiu	a0,s5,104
    254c:	3c063f80 	lui	a2,0x3f80
    2550:	4405a000 	mfc1	a1,$f20
    2554:	0c000000 	jal	0 <func_80938CD0>
    2558:	3c073e80 	lui	a3,0x3e80
    255c:	26a40568 	addiu	a0,s5,1384
    2560:	0c000000 	jal	0 <func_80938CD0>
    2564:	afa40074 	sw	a0,116(sp)
    2568:	3c010000 	lui	at,0x0
    256c:	c4260000 	lwc1	$f6,0(at)
    2570:	c6a40520 	lwc1	$f4,1312(s5)
    2574:	86b8017a 	lh	t8,378(s5)
    2578:	46062200 	add.s	$f8,$f4,$f6
    257c:	13000108 	beqz	t8,29a0 <func_8093B1AC+0x4c4>
    2580:	e6a80520 	swc1	$f8,1312(s5)
    2584:	c6aa04c8 	lwc1	$f10,1224(s5)
    2588:	26a400b6 	addiu	a0,s5,182
    258c:	86a5008a 	lh	a1,138(s5)
    2590:	4600548d 	trunc.w.s	$f18,$f10
    2594:	24060005 	li	a2,5
    2598:	44079000 	mfc1	a3,$f18
    259c:	00000000 	nop
    25a0:	00073c00 	sll	a3,a3,0x10
    25a4:	0c000000 	jal	0 <func_80938CD0>
    25a8:	00073c03 	sra	a3,a3,0x10
    25ac:	8fa30124 	lw	v1,292(sp)
    25b0:	26a404b0 	addiu	a0,s5,1200
    25b4:	3c063f80 	lui	a2,0x3f80
    25b8:	8c68067c 	lw	t0,1660(v1)
    25bc:	3c0743c8 	lui	a3,0x43c8
    25c0:	00084a40 	sll	t1,t0,0x9
    25c4:	05210020 	bgez	t1,2648 <func_8093B1AC+0x16c>
    25c8:	00000000 	nop
    25cc:	846a00b6 	lh	t2,182(v1)
    25d0:	86ab00b6 	lh	t3,182(s5)
    25d4:	34018000 	li	at,0x8000
    25d8:	014b1023 	subu	v0,t2,t3
    25dc:	00411021 	addu	v0,v0,at
    25e0:	00021400 	sll	v0,v0,0x10
    25e4:	00021403 	sra	v0,v0,0x10
    25e8:	28412000 	slti	at,v0,8192
    25ec:	10200016 	beqz	at,2648 <func_8093B1AC+0x16c>
    25f0:	2841e001 	slti	at,v0,-8191
    25f4:	14200014 	bnez	at,2648 <func_8093B1AC+0x16c>
    25f8:	00000000 	nop
    25fc:	26a404b0 	addiu	a0,s5,1200
    2600:	8c6509bc 	lw	a1,2492(v1)
    2604:	3c063f80 	lui	a2,0x3f80
    2608:	0c000000 	jal	0 <func_80938CD0>
    260c:	3c0743c8 	lui	a3,0x43c8
    2610:	8fac0124 	lw	t4,292(sp)
    2614:	26a404b4 	addiu	a0,s5,1204
    2618:	3c063f80 	lui	a2,0x3f80
    261c:	3c0743c8 	lui	a3,0x43c8
    2620:	0c000000 	jal	0 <func_80938CD0>
    2624:	8d8509c0 	lw	a1,2496(t4)
    2628:	8fad0124 	lw	t5,292(sp)
    262c:	26a404b8 	addiu	a0,s5,1208
    2630:	3c063f80 	lui	a2,0x3f80
    2634:	3c0743c8 	lui	a3,0x43c8
    2638:	0c000000 	jal	0 <func_80938CD0>
    263c:	8da509c4 	lw	a1,2500(t5)
    2640:	10000015 	b	2698 <func_8093B1AC+0x1bc>
    2644:	4480b000 	mtc1	zero,$f22
    2648:	0c000000 	jal	0 <func_80938CD0>
    264c:	8c650024 	lw	a1,36(v1)
    2650:	8fae0124 	lw	t6,292(sp)
    2654:	3c0141f0 	lui	at,0x41f0
    2658:	44813000 	mtc1	at,$f6
    265c:	c5c40028 	lwc1	$f4,40(t6)
    2660:	26a404b4 	addiu	a0,s5,1204
    2664:	3c063f80 	lui	a2,0x3f80
    2668:	46062200 	add.s	$f8,$f4,$f6
    266c:	3c0743c8 	lui	a3,0x43c8
    2670:	44054000 	mfc1	a1,$f8
    2674:	0c000000 	jal	0 <func_80938CD0>
    2678:	00000000 	nop
    267c:	8faf0124 	lw	t7,292(sp)
    2680:	26a404b8 	addiu	a0,s5,1208
    2684:	3c063f80 	lui	a2,0x3f80
    2688:	3c0743c8 	lui	a3,0x43c8
    268c:	0c000000 	jal	0 <func_80938CD0>
    2690:	8de5002c 	lw	a1,44(t7)
    2694:	4480b000 	mtc1	zero,$f22
    2698:	3c014120 	lui	at,0x4120
    269c:	4481a000 	mtc1	at,$f20
    26a0:	3c01437f 	lui	at,0x437f
    26a4:	4481d000 	mtc1	at,$f26
    26a8:	24180046 	li	t8,70
    26ac:	a6b80178 	sh	t8,376(s5)
    26b0:	3c010000 	lui	at,0x0
    26b4:	e6b60508 	swc1	$f22,1288(s5)
    26b8:	e6b60504 	swc1	$f22,1284(s5)
    26bc:	e6b60500 	swc1	$f22,1280(s5)
    26c0:	c4320000 	lwc1	$f18,0(at)
    26c4:	c6aa04f0 	lwc1	$f10,1264(s5)
    26c8:	c6a604ec 	lwc1	$f6,1260(s5)
    26cc:	26a404d8 	addiu	a0,s5,1240
    26d0:	46125102 	mul.s	$f4,$f10,$f18
    26d4:	4407a000 	mfc1	a3,$f20
    26d8:	4405d000 	mfc1	a1,$f26
    26dc:	3c063f80 	lui	a2,0x3f80
    26e0:	46043200 	add.s	$f8,$f6,$f4
    26e4:	e6a804ec 	swc1	$f8,1260(s5)
    26e8:	0c000000 	jal	0 <func_80938CD0>
    26ec:	afa4006c 	sw	a0,108(sp)
    26f0:	26a404f0 	addiu	a0,s5,1264
    26f4:	3c054248 	lui	a1,0x4248
    26f8:	3c063f80 	lui	a2,0x3f80
    26fc:	0c000000 	jal	0 <func_80938CD0>
    2700:	3c074000 	lui	a3,0x4000
    2704:	86a2017a 	lh	v0,378(s5)
    2708:	28410032 	slti	at,v0,50
    270c:	10200083 	beqz	at,291c <func_8093B1AC+0x440>
    2710:	2841000a 	slti	at,v0,10
    2714:	1020004f 	beqz	at,2854 <func_8093B1AC+0x378>
    2718:	24010009 	li	at,9
    271c:	1441000f 	bne	v0,at,275c <func_8093B1AC+0x280>
    2720:	24080003 	li	t0,3
    2724:	3c013f00 	lui	at,0x3f00
    2728:	44815000 	mtc1	at,$f10
    272c:	3c010001 	lui	at,0x1
    2730:	00360821 	addu	at,at,s6
    2734:	e42a0afc 	swc1	$f10,2812(at)
    2738:	86b9001c 	lh	t9,28(s5)
    273c:	3c010001 	lui	at,0x1
    2740:	00360821 	addu	at,at,s6
    2744:	01194823 	subu	t1,t0,t9
    2748:	a0290ae1 	sb	t1,2785(at)
    274c:	02a02025 	move	a0,s5
    2750:	0c000000 	jal	0 <func_80938CD0>
    2754:	24053913 	li	a1,14611
    2758:	86a2017a 	lh	v0,378(s5)
    275c:	24010005 	li	at,5
    2760:	14410005 	bne	v0,at,2778 <func_8093B1AC+0x29c>
    2764:	27b400f4 	addiu	s4,sp,244
    2768:	3c01437f 	lui	at,0x437f
    276c:	44819000 	mtc1	at,$f18
    2770:	86a2017a 	lh	v0,378(s5)
    2774:	e6b204d0 	swc1	$f18,1232(s5)
    2778:	28410005 	slti	at,v0,5
    277c:	14200035 	bnez	at,2854 <func_8093B1AC+0x378>
    2780:	27b30100 	addiu	s3,sp,256
    2784:	3c0141c8 	lui	at,0x41c8
    2788:	4481c000 	mtc1	at,$f24
    278c:	a7a0011a 	sh	zero,282(sp)
    2790:	27b2010c 	addiu	s2,sp,268
    2794:	2411000c 	li	s1,12
    2798:	00008025 	move	s0,zero
    279c:	02110019 	multu	s0,s1
    27a0:	4600a306 	mov.s	$f12,$f20
    27a4:	00005012 	mflo	t2
    27a8:	02aa1021 	addu	v0,s5,t2
    27ac:	c4460450 	lwc1	$f6,1104(v0)
    27b0:	e7a6010c 	swc1	$f6,268(sp)
    27b4:	c4440454 	lwc1	$f4,1108(v0)
    27b8:	e7a40110 	swc1	$f4,272(sp)
    27bc:	c4480458 	lwc1	$f8,1112(v0)
    27c0:	0c000000 	jal	0 <func_80938CD0>
    27c4:	e7a80114 	swc1	$f8,276(sp)
    27c8:	e7a00100 	swc1	$f0,256(sp)
    27cc:	0c000000 	jal	0 <func_80938CD0>
    27d0:	4600a306 	mov.s	$f12,$f20
    27d4:	e7a00104 	swc1	$f0,260(sp)
    27d8:	0c000000 	jal	0 <func_80938CD0>
    27dc:	4600a306 	mov.s	$f12,$f20
    27e0:	e7a00108 	swc1	$f0,264(sp)
    27e4:	e7b600f4 	swc1	$f22,244(sp)
    27e8:	e7b600f8 	swc1	$f22,248(sp)
    27ec:	e7b600fc 	swc1	$f22,252(sp)
    27f0:	0c000000 	jal	0 <func_80938CD0>
    27f4:	4600a306 	mov.s	$f12,$f20
    27f8:	46180280 	add.s	$f10,$f0,$f24
    27fc:	02c02025 	move	a0,s6
    2800:	02402825 	move	a1,s2
    2804:	02603025 	move	a2,s3
    2808:	e7aa0010 	swc1	$f10,16(sp)
    280c:	86ab001c 	lh	t3,28(s5)
    2810:	02803825 	move	a3,s4
    2814:	0c000000 	jal	0 <func_80938CD0>
    2818:	afab0014 	sw	t3,20(sp)
    281c:	26100001 	addiu	s0,s0,1
    2820:	00108400 	sll	s0,s0,0x10
    2824:	00108403 	sra	s0,s0,0x10
    2828:	2a010005 	slti	at,s0,5
    282c:	1420ffdb 	bnez	at,279c <func_8093B1AC+0x2c0>
    2830:	00000000 	nop
    2834:	87ac011a 	lh	t4,282(sp)
    2838:	258d0001 	addiu	t5,t4,1
    283c:	000d7400 	sll	t6,t5,0x10
    2840:	000e7c03 	sra	t7,t6,0x10
    2844:	29e10002 	slti	at,t7,2
    2848:	1420ffd3 	bnez	at,2798 <func_8093B1AC+0x2bc>
    284c:	a7ad011a 	sh	t5,282(sp)
    2850:	86a2017a 	lh	v0,378(s5)
    2854:	28410014 	slti	at,v0,20
    2858:	1020000f 	beqz	at,2898 <func_8093B1AC+0x3bc>
    285c:	26a404d4 	addiu	a0,s5,1236
    2860:	3c0141a0 	lui	at,0x41a0
    2864:	4481d000 	mtc1	at,$f26
    2868:	26a404d4 	addiu	a0,s5,1236
    286c:	24050000 	li	a1,0
    2870:	4407d000 	mfc1	a3,$f26
    2874:	0c000000 	jal	0 <func_80938CD0>
    2878:	3c063f80 	lui	a2,0x3f80
    287c:	8fa4006c 	lw	a0,108(sp)
    2880:	24050000 	li	a1,0
    2884:	3c063f80 	lui	a2,0x3f80
    2888:	0c000000 	jal	0 <func_80938CD0>
    288c:	3c0741f0 	lui	a3,0x41f0
    2890:	10000010 	b	28d4 <func_8093B1AC+0x3f8>
    2894:	00000000 	nop
    2898:	4405d000 	mfc1	a1,$f26
    289c:	4407a000 	mfc1	a3,$f20
    28a0:	0c000000 	jal	0 <func_80938CD0>
    28a4:	3c063f80 	lui	a2,0x3f80
    28a8:	86b8001c 	lh	t8,28(s5)
    28ac:	24010001 	li	at,1
    28b0:	2405310e 	li	a1,12558
    28b4:	17010005 	bne	t8,at,28cc <func_8093B1AC+0x3f0>
    28b8:	02a02025 	move	a0,s5
    28bc:	0c000000 	jal	0 <func_80938CD0>
    28c0:	02a02025 	move	a0,s5
    28c4:	10000003 	b	28d4 <func_8093B1AC+0x3f8>
    28c8:	00000000 	nop
    28cc:	0c000000 	jal	0 <func_80938CD0>
    28d0:	24053112 	li	a1,12562
    28d4:	3c010000 	lui	at,0x0
    28d8:	c4260000 	lwc1	$f6,0(at)
    28dc:	c6a004e4 	lwc1	$f0,1252(s5)
    28e0:	c6b204e8 	lwc1	$f18,1256(s5)
    28e4:	4405b000 	mfc1	a1,$f22
    28e8:	46060102 	mul.s	$f4,$f0,$f6
    28ec:	3c063dcc 	lui	a2,0x3dcc
    28f0:	44070000 	mfc1	a3,$f0
    28f4:	34c6cccd 	ori	a2,a2,0xcccd
    28f8:	26a404e0 	addiu	a0,s5,1248
    28fc:	46049200 	add.s	$f8,$f18,$f4
    2900:	0c000000 	jal	0 <func_80938CD0>
    2904:	e6a804e8 	swc1	$f8,1256(s5)
    2908:	26a404e4 	addiu	a0,s5,1252
    290c:	3c054248 	lui	a1,0x4248
    2910:	3c063f80 	lui	a2,0x3f80
    2914:	0c000000 	jal	0 <func_80938CD0>
    2918:	3c074000 	lui	a3,0x4000
    291c:	8fa40074 	lw	a0,116(sp)
    2920:	0c000000 	jal	0 <func_80938CD0>
    2924:	8ea501a4 	lw	a1,420(s5)
    2928:	10400008 	beqz	v0,294c <func_8093B1AC+0x470>
    292c:	8fa40074 	lw	a0,116(sp)
    2930:	3c050601 	lui	a1,0x601
    2934:	4406b000 	mfc1	a2,$f22
    2938:	0c000000 	jal	0 <func_80938CD0>
    293c:	24a59398 	addiu	a1,a1,-27752
    2940:	3c010000 	lui	at,0x0
    2944:	c42a0000 	lwc1	$f10,0(at)
    2948:	e6aa01a4 	swc1	$f10,420(s5)
    294c:	86a8017a 	lh	t0,378(s5)
    2950:	24010001 	li	at,1
    2954:	3c100600 	lui	s0,0x600
    2958:	1501000f 	bne	t0,at,2998 <func_8093B1AC+0x4bc>
    295c:	26103614 	addiu	s0,s0,13844
    2960:	4406b000 	mfc1	a2,$f22
    2964:	8fa40074 	lw	a0,116(sp)
    2968:	0c000000 	jal	0 <func_80938CD0>
    296c:	02002825 	move	a1,s0
    2970:	0c000000 	jal	0 <func_80938CD0>
    2974:	02002025 	move	a0,s0
    2978:	44823000 	mtc1	v0,$f6
    297c:	e6b604dc 	swc1	$f22,1244(s5)
    2980:	e6b604d8 	swc1	$f22,1240(s5)
    2984:	468034a0 	cvt.s.w	$f18,$f6
    2988:	e6b604d4 	swc1	$f22,1236(s5)
    298c:	3c010000 	lui	at,0x0
    2990:	e6b201a4 	swc1	$f18,420(s5)
    2994:	a0200000 	sb	zero,0(at)
    2998:	1000016e 	b	2f54 <func_8093B1AC+0xa78>
    299c:	26b3050c 	addiu	s3,s5,1292
    29a0:	8fa40074 	lw	a0,116(sp)
    29a4:	0c000000 	jal	0 <func_80938CD0>
    29a8:	8ea501a4 	lw	a1,420(s5)
    29ac:	5040000b 	beqzl	v0,29dc <func_8093B1AC+0x500>
    29b0:	c6a801a4 	lwc1	$f8,420(s5)
    29b4:	4480b000 	mtc1	zero,$f22
    29b8:	3c050600 	lui	a1,0x600
    29bc:	24a53e34 	addiu	a1,a1,15924
    29c0:	4406b000 	mfc1	a2,$f22
    29c4:	0c000000 	jal	0 <func_80938CD0>
    29c8:	8fa40074 	lw	a0,116(sp)
    29cc:	3c010000 	lui	at,0x0
    29d0:	c4240000 	lwc1	$f4,0(at)
    29d4:	e6a401a4 	swc1	$f4,420(s5)
    29d8:	c6a801a4 	lwc1	$f8,420(s5)
    29dc:	4480b000 	mtc1	zero,$f22
    29e0:	8fa40074 	lw	a0,116(sp)
    29e4:	46144281 	sub.s	$f10,$f8,$f20
    29e8:	44055000 	mfc1	a1,$f10
    29ec:	0c000000 	jal	0 <func_80938CD0>
    29f0:	00000000 	nop
    29f4:	50400007 	beqzl	v0,2a14 <func_8093B1AC+0x538>
    29f8:	3c014150 	lui	at,0x4150
    29fc:	86b9001c 	lh	t9,28(s5)
    2a00:	a6a004fc 	sh	zero,1276(s5)
    2a04:	3c010000 	lui	at,0x0
    2a08:	27290001 	addiu	t1,t9,1
    2a0c:	a0290000 	sb	t1,0(at)
    2a10:	3c014150 	lui	at,0x4150
    2a14:	44819000 	mtc1	at,$f18
    2a18:	c6a601a4 	lwc1	$f6,420(s5)
    2a1c:	8fa40074 	lw	a0,116(sp)
    2a20:	46123101 	sub.s	$f4,$f6,$f18
    2a24:	44052000 	mfc1	a1,$f4
    2a28:	0c000000 	jal	0 <func_80938CD0>
    2a2c:	00000000 	nop
    2a30:	10400006 	beqz	v0,2a4c <func_8093B1AC+0x570>
    2a34:	02a02025 	move	a0,s5
    2a38:	0c000000 	jal	0 <func_80938CD0>
    2a3c:	24053923 	li	a1,14627
    2a40:	02a02025 	move	a0,s5
    2a44:	0c000000 	jal	0 <func_80938CD0>
    2a48:	240539b3 	li	a1,14771
    2a4c:	c6a804b0 	lwc1	$f8,1200(s5)
    2a50:	c6aa048c 	lwc1	$f10,1164(s5)
    2a54:	c6a404b8 	lwc1	$f4,1208(s5)
    2a58:	c6a604b4 	lwc1	$f6,1204(s5)
    2a5c:	460a4501 	sub.s	$f20,$f8,$f10
    2a60:	c6a80494 	lwc1	$f8,1172(s5)
    2a64:	c6b20490 	lwc1	$f18,1168(s5)
    2a68:	46082601 	sub.s	$f24,$f4,$f8
    2a6c:	4600a306 	mov.s	$f12,$f20
    2a70:	46123681 	sub.s	$f26,$f6,$f18
    2a74:	0c000000 	jal	0 <func_80938CD0>
    2a78:	4600c386 	mov.s	$f14,$f24
    2a7c:	4614a082 	mul.s	$f2,$f20,$f20
    2a80:	e6a0051c 	swc1	$f0,1308(s5)
    2a84:	4600d306 	mov.s	$f12,$f26
    2a88:	4618c402 	mul.s	$f16,$f24,$f24
    2a8c:	e7a20074 	swc1	$f2,116(sp)
    2a90:	46101000 	add.s	$f0,$f2,$f16
    2a94:	e7b00070 	swc1	$f16,112(sp)
    2a98:	0c000000 	jal	0 <func_80938CD0>
    2a9c:	46000384 	sqrt.s	$f14,$f0
    2aa0:	86a204fc 	lh	v0,1276(s5)
    2aa4:	46000287 	neg.s	$f10,$f0
    2aa8:	c7b40074 	lwc1	$f20,116(sp)
    2aac:	c7b80070 	lwc1	$f24,112(sp)
    2ab0:	2401ffff 	li	at,-1
    2ab4:	10410007 	beq	v0,at,2ad4 <func_8093B1AC+0x5f8>
    2ab8:	e6aa0518 	swc1	$f10,1304(s5)
    2abc:	10400007 	beqz	v0,2adc <func_8093B1AC+0x600>
    2ac0:	24010001 	li	at,1
    2ac4:	504100a2 	beql	v0,at,2d50 <func_8093B1AC+0x874>
    2ac8:	96cd0014 	lhu	t5,20(s6)
    2acc:	10000104 	b	2ee0 <func_8093B1AC+0xa04>
    2ad0:	26b3050c 	addiu	s3,s5,1292
    2ad4:	10000102 	b	2ee0 <func_8093B1AC+0xa04>
    2ad8:	26b3050c 	addiu	s3,s5,1292
    2adc:	86aa0178 	lh	t2,376(s5)
    2ae0:	02a02025 	move	a0,s5
    2ae4:	51400076 	beqzl	t2,2cc0 <func_8093B1AC+0x7e4>
    2ae8:	3c010001 	lui	at,0x1
    2aec:	0c000000 	jal	0 <func_80938CD0>
    2af0:	02c02825 	move	a1,s6
    2af4:	24010001 	li	at,1
    2af8:	1441005e 	bne	v0,at,2c74 <func_8093B1AC+0x798>
    2afc:	3c0b0000 	lui	t3,0x0
    2b00:	256b0000 	addiu	t3,t3,0
    2b04:	8d6d0000 	lw	t5,0(t3)
    2b08:	27b300cc 	addiu	s3,sp,204
    2b0c:	3c014170 	lui	at,0x4170
    2b10:	ae6d0000 	sw	t5,0(s3)
    2b14:	8d6c0004 	lw	t4,4(t3)
    2b18:	4481a000 	mtc1	at,$f20
    2b1c:	00008025 	move	s0,zero
    2b20:	ae6c0004 	sw	t4,4(s3)
    2b24:	8d6d0008 	lw	t5,8(t3)
    2b28:	27b400d8 	addiu	s4,sp,216
    2b2c:	27b100e4 	addiu	s1,sp,228
    2b30:	ae6d0008 	sw	t5,8(s3)
    2b34:	8fb20124 	lw	s2,292(sp)
    2b38:	265209bc 	addiu	s2,s2,2492
    2b3c:	0c000000 	jal	0 <func_80938CD0>
    2b40:	4600a306 	mov.s	$f12,$f20
    2b44:	e7a000d8 	swc1	$f0,216(sp)
    2b48:	0c000000 	jal	0 <func_80938CD0>
    2b4c:	4600a306 	mov.s	$f12,$f20
    2b50:	e7a000dc 	swc1	$f0,220(sp)
    2b54:	0c000000 	jal	0 <func_80938CD0>
    2b58:	4600a306 	mov.s	$f12,$f20
    2b5c:	e7a000e0 	swc1	$f0,224(sp)
    2b60:	8e4f0000 	lw	t7,0(s2)
    2b64:	3c014000 	lui	at,0x4000
    2b68:	44816000 	mtc1	at,$f12
    2b6c:	ae2f0000 	sw	t7,0(s1)
    2b70:	8e4e0004 	lw	t6,4(s2)
    2b74:	ae2e0004 	sw	t6,4(s1)
    2b78:	8e4f0008 	lw	t7,8(s2)
    2b7c:	0c000000 	jal	0 <func_80938CD0>
    2b80:	ae2f0008 	sw	t7,8(s1)
    2b84:	4600018d 	trunc.w.s	$f6,$f0
    2b88:	240c0096 	li	t4,150
    2b8c:	02c02025 	move	a0,s6
    2b90:	02202825 	move	a1,s1
    2b94:	44083000 	mfc1	t0,$f6
    2b98:	02803025 	move	a2,s4
    2b9c:	02603825 	move	a3,s3
    2ba0:	0008cc00 	sll	t9,t0,0x10
    2ba4:	00194c03 	sra	t1,t9,0x10
    2ba8:	252a0005 	addiu	t2,t1,5
    2bac:	448a9000 	mtc1	t2,$f18
    2bb0:	00000000 	nop
    2bb4:	46809120 	cvt.s.w	$f4,$f18
    2bb8:	e7a40010 	swc1	$f4,16(sp)
    2bbc:	86ab001c 	lh	t3,28(s5)
    2bc0:	afac0018 	sw	t4,24(sp)
    2bc4:	0c000000 	jal	0 <func_80938CD0>
    2bc8:	afab0014 	sw	t3,20(sp)
    2bcc:	26100001 	addiu	s0,s0,1
    2bd0:	00108400 	sll	s0,s0,0x10
    2bd4:	00108403 	sra	s0,s0,0x10
    2bd8:	2a010096 	slti	at,s0,150
    2bdc:	1420ffd7 	bnez	at,2b3c <func_8093B1AC+0x660>
    2be0:	00000000 	nop
    2be4:	240d0001 	li	t5,1
    2be8:	a6ad04fc 	sh	t5,1276(s5)
    2bec:	8fa40124 	lw	a0,292(sp)
    2bf0:	2405180c 	li	a1,6156
    2bf4:	0c000000 	jal	0 <func_80938CD0>
    2bf8:	248400e4 	addiu	a0,a0,228
    2bfc:	8fa40124 	lw	a0,292(sp)
    2c00:	27a50128 	addiu	a1,sp,296
    2c04:	00003025 	move	a2,zero
    2c08:	0c000000 	jal	0 <func_80938CD0>
    2c0c:	24840a20 	addiu	a0,a0,2592
    2c10:	87ae012a 	lh	t6,298(sp)
    2c14:	87b80128 	lh	t8,296(sp)
    2c18:	34018000 	li	at,0x8000
    2c1c:	01c17821 	addu	t7,t6,at
    2c20:	00184823 	negu	t1,t8
    2c24:	a7af012a 	sh	t7,298(sp)
    2c28:	a7a90128 	sh	t1,296(sp)
    2c2c:	a6a90524 	sh	t1,1316(s5)
    2c30:	87aa012a 	lh	t2,298(sp)
    2c34:	3c013f80 	lui	at,0x3f80
    2c38:	44814000 	mtc1	at,$f8
    2c3c:	3c010001 	lui	at,0x1
    2c40:	e6b60500 	swc1	$f22,1280(s5)
    2c44:	e6b60504 	swc1	$f22,1284(s5)
    2c48:	e6b60508 	swc1	$f22,1288(s5)
    2c4c:	00360821 	addu	at,at,s6
    2c50:	a6aa0526 	sh	t2,1318(s5)
    2c54:	4600b306 	mov.s	$f12,$f22
    2c58:	24050064 	li	a1,100
    2c5c:	24060005 	li	a2,5
    2c60:	24070004 	li	a3,4
    2c64:	0c000000 	jal	0 <func_80938CD0>
    2c68:	e4280afc 	swc1	$f8,2812(at)
    2c6c:	10000014 	b	2cc0 <func_8093B1AC+0x7e4>
    2c70:	3c010001 	lui	at,0x1
    2c74:	14400011 	bnez	v0,2cbc <func_8093B1AC+0x7e0>
    2c78:	02a02025 	move	a0,s5
    2c7c:	0c000000 	jal	0 <func_80938CD0>
    2c80:	02c02825 	move	a1,s6
    2c84:	86ab0440 	lh	t3,1088(s5)
    2c88:	5560000d 	bnezl	t3,2cc0 <func_8093B1AC+0x7e4>
    2c8c:	3c010001 	lui	at,0x1
    2c90:	461ad282 	mul.s	$f10,$f26,$f26
    2c94:	26a4052c 	addiu	a0,s5,1324
    2c98:	3c063f80 	lui	a2,0x3f80
    2c9c:	3c074220 	lui	a3,0x4220
    2ca0:	460aa180 	add.s	$f6,$f20,$f10
    2ca4:	46183000 	add.s	$f0,$f6,$f24
    2ca8:	46000004 	sqrt.s	$f0,$f0
    2cac:	46000480 	add.s	$f18,$f0,$f0
    2cb0:	44059000 	mfc1	a1,$f18
    2cb4:	0c000000 	jal	0 <func_80938CD0>
    2cb8:	00000000 	nop
    2cbc:	3c010001 	lui	at,0x1
    2cc0:	34211d60 	ori	at,at,0x1d60
    2cc4:	26b3050c 	addiu	s3,s5,1292
    2cc8:	26b1054c 	addiu	s1,s5,1356
    2ccc:	02203025 	move	a2,s1
    2cd0:	02602825 	move	a1,s3
    2cd4:	02c12021 	addu	a0,s6,at
    2cd8:	0c000000 	jal	0 <func_80938CD0>
    2cdc:	26a700f0 	addiu	a3,s5,240
    2ce0:	86ac001c 	lh	t4,28(s5)
    2ce4:	24010001 	li	at,1
    2ce8:	3c100000 	lui	s0,0x0
    2cec:	1581000d 	bne	t4,at,2d24 <func_8093B1AC+0x848>
    2cf0:	26070000 	addiu	a3,s0,0
    2cf4:	3c100000 	lui	s0,0x0
    2cf8:	3c120000 	lui	s2,0x0
    2cfc:	26520000 	addiu	s2,s2,0
    2d00:	26070000 	addiu	a3,s0,0
    2d04:	afa70010 	sw	a3,16(sp)
    2d08:	afb20014 	sw	s2,20(sp)
    2d0c:	24043122 	li	a0,12578
    2d10:	02202825 	move	a1,s1
    2d14:	0c000000 	jal	0 <func_80938CD0>
    2d18:	24060004 	li	a2,4
    2d1c:	10000071 	b	2ee4 <func_8093B1AC+0xa08>
    2d20:	86a20178 	lh	v0,376(s5)
    2d24:	3c120000 	lui	s2,0x0
    2d28:	26520000 	addiu	s2,s2,0
    2d2c:	afb20014 	sw	s2,20(sp)
    2d30:	24043111 	li	a0,12561
    2d34:	02202825 	move	a1,s1
    2d38:	24060004 	li	a2,4
    2d3c:	0c000000 	jal	0 <func_80938CD0>
    2d40:	afa70010 	sw	a3,16(sp)
    2d44:	10000067 	b	2ee4 <func_8093B1AC+0xa08>
    2d48:	86a20178 	lh	v0,376(s5)
    2d4c:	96cd0014 	lhu	t5,20(s6)
    2d50:	2401ffef 	li	at,-17
    2d54:	01a17027 	nor	t6,t5,at
    2d58:	55c0002e 	bnezl	t6,2e14 <func_8093B1AC+0x938>
    2d5c:	a6a004fc 	sh	zero,1276(s5)
    2d60:	461ad102 	mul.s	$f4,$f26,$f26
    2d64:	8ed01c44 	lw	s0,7236(s6)
    2d68:	26a40548 	addiu	a0,s5,1352
    2d6c:	3c0544fa 	lui	a1,0x44fa
    2d70:	3c063f80 	lui	a2,0x3f80
    2d74:	3c074220 	lui	a3,0x4220
    2d78:	4604a200 	add.s	$f8,$f20,$f4
    2d7c:	46184000 	add.s	$f0,$f8,$f24
    2d80:	46000004 	sqrt.s	$f0,$f0
    2d84:	0c000000 	jal	0 <func_80938CD0>
    2d88:	e6a0052c 	swc1	$f0,1324(s5)
    2d8c:	26a404b0 	addiu	a0,s5,1200
    2d90:	8e0509bc 	lw	a1,2492(s0)
    2d94:	3c063f80 	lui	a2,0x3f80
    2d98:	0c000000 	jal	0 <func_80938CD0>
    2d9c:	3c0743c8 	lui	a3,0x43c8
    2da0:	26a404b4 	addiu	a0,s5,1204
    2da4:	8e0509c0 	lw	a1,2496(s0)
    2da8:	3c063f80 	lui	a2,0x3f80
    2dac:	0c000000 	jal	0 <func_80938CD0>
    2db0:	3c0743c8 	lui	a3,0x43c8
    2db4:	26a404b8 	addiu	a0,s5,1208
    2db8:	8e0509c4 	lw	a1,2500(s0)
    2dbc:	3c063f80 	lui	a2,0x3f80
    2dc0:	0c000000 	jal	0 <func_80938CD0>
    2dc4:	3c0743c8 	lui	a3,0x43c8
    2dc8:	86af0150 	lh	t7,336(s5)
    2dcc:	02c02025 	move	a0,s6
    2dd0:	260509bc 	addiu	a1,s0,2492
    2dd4:	31f80003 	andi	t8,t7,0x3
    2dd8:	1700000f 	bnez	t8,2e18 <func_8093B1AC+0x93c>
    2ddc:	3c063f00 	lui	a2,0x3f00
    2de0:	240800ff 	li	t0,255
    2de4:	afa80010 	sw	t0,16(sp)
    2de8:	86b9001c 	lh	t9,28(s5)
    2dec:	24090001 	li	t1,1
    2df0:	240a0096 	li	t2,150
    2df4:	afaa001c 	sw	t2,28(sp)
    2df8:	afa90018 	sw	t1,24(sp)
    2dfc:	3c074040 	lui	a3,0x4040
    2e00:	0c000000 	jal	0 <func_80938CD0>
    2e04:	afb90014 	sw	t9,20(sp)
    2e08:	10000004 	b	2e1c <func_8093B1AC+0x940>
    2e0c:	3c010001 	lui	at,0x1
    2e10:	a6a004fc 	sh	zero,1276(s5)
    2e14:	e6b60548 	swc1	$f22,1352(s5)
    2e18:	3c010001 	lui	at,0x1
    2e1c:	34211d60 	ori	at,at,0x1d60
    2e20:	26b10558 	addiu	s1,s5,1368
    2e24:	02203025 	move	a2,s1
    2e28:	02c12021 	addu	a0,s6,at
    2e2c:	26a50530 	addiu	a1,s5,1328
    2e30:	0c000000 	jal	0 <func_80938CD0>
    2e34:	26a700f0 	addiu	a3,s5,240
    2e38:	86ab001c 	lh	t3,28(s5)
    2e3c:	24010001 	li	at,1
    2e40:	3c100000 	lui	s0,0x0
    2e44:	15610015 	bne	t3,at,2e9c <func_8093B1AC+0x9c0>
    2e48:	26100000 	addiu	s0,s0,0
    2e4c:	3c100000 	lui	s0,0x0
    2e50:	3c120000 	lui	s2,0x0
    2e54:	26520000 	addiu	s2,s2,0
    2e58:	26100000 	addiu	s0,s0,0
    2e5c:	02003825 	move	a3,s0
    2e60:	afb00010 	sw	s0,16(sp)
    2e64:	afb20014 	sw	s2,20(sp)
    2e68:	24043122 	li	a0,12578
    2e6c:	02202825 	move	a1,s1
    2e70:	0c000000 	jal	0 <func_80938CD0>
    2e74:	24060004 	li	a2,4
    2e78:	24043117 	li	a0,12567
    2e7c:	02202825 	move	a1,s1
    2e80:	24060004 	li	a2,4
    2e84:	02003825 	move	a3,s0
    2e88:	afb00010 	sw	s0,16(sp)
    2e8c:	0c000000 	jal	0 <func_80938CD0>
    2e90:	afb20014 	sw	s2,20(sp)
    2e94:	10000012 	b	2ee0 <func_8093B1AC+0xa04>
    2e98:	26b3050c 	addiu	s3,s5,1292
    2e9c:	3c120000 	lui	s2,0x0
    2ea0:	26520000 	addiu	s2,s2,0
    2ea4:	afb20014 	sw	s2,20(sp)
    2ea8:	24043111 	li	a0,12561
    2eac:	02202825 	move	a1,s1
    2eb0:	24060004 	li	a2,4
    2eb4:	02003825 	move	a3,s0
    2eb8:	0c000000 	jal	0 <func_80938CD0>
    2ebc:	afb00010 	sw	s0,16(sp)
    2ec0:	24043118 	li	a0,12568
    2ec4:	02202825 	move	a1,s1
    2ec8:	24060004 	li	a2,4
    2ecc:	02003825 	move	a3,s0
    2ed0:	afb00010 	sw	s0,16(sp)
    2ed4:	0c000000 	jal	0 <func_80938CD0>
    2ed8:	afb20014 	sw	s2,20(sp)
    2edc:	26b3050c 	addiu	s3,s5,1292
    2ee0:	86a20178 	lh	v0,376(s5)
    2ee4:	3c040000 	lui	a0,0x0
    2ee8:	24840000 	addiu	a0,a0,0
    2eec:	14400009 	bnez	v0,2f14 <func_8093B1AC+0xa38>
    2ef0:	3c063f80 	lui	a2,0x3f80
    2ef4:	80830000 	lb	v1,0(a0)
    2ef8:	24010001 	li	at,1
    2efc:	10610003 	beq	v1,at,2f0c <func_8093B1AC+0xa30>
    2f00:	24010002 	li	at,2
    2f04:	14610003 	bne	v1,at,2f14 <func_8093B1AC+0xa38>
    2f08:	00000000 	nop
    2f0c:	a0800000 	sb	zero,0(a0)
    2f10:	86a20178 	lh	v0,376(s5)
    2f14:	1440000f 	bnez	v0,2f54 <func_8093B1AC+0xa78>
    2f18:	26a404f8 	addiu	a0,s5,1272
    2f1c:	4405b000 	mfc1	a1,$f22
    2f20:	3c073a03 	lui	a3,0x3a03
    2f24:	0c000000 	jal	0 <func_80938CD0>
    2f28:	34e7126f 	ori	a3,a3,0x126f
    2f2c:	c6aa04f8 	lwc1	$f10,1272(s5)
    2f30:	02a02025 	move	a0,s5
    2f34:	460ab032 	c.eq.s	$f22,$f10
    2f38:	00000000 	nop
    2f3c:	45020006 	bc1fl	2f58 <func_8093B1AC+0xa7c>
    2f40:	3c014120 	lui	at,0x4120
    2f44:	0c000000 	jal	0 <func_80938CD0>
    2f48:	02c02825 	move	a1,s6
    2f4c:	e6b60548 	swc1	$f22,1352(s5)
    2f50:	e6b6052c 	swc1	$f22,1324(s5)
    2f54:	3c014120 	lui	at,0x4120
    2f58:	4481a000 	mtc1	at,$f20
    2f5c:	3c0141c8 	lui	at,0x41c8
    2f60:	4481c000 	mtc1	at,$f24
    2f64:	3c0141a0 	lui	at,0x41a0
    2f68:	4481d000 	mtc1	at,$f26
    2f6c:	c6ac048c 	lwc1	$f12,1164(s5)
    2f70:	c6ae0490 	lwc1	$f14,1168(s5)
    2f74:	8ea60494 	lw	a2,1172(s5)
    2f78:	0c000000 	jal	0 <func_80938CD0>
    2f7c:	00003825 	move	a3,zero
    2f80:	c6ac051c 	lwc1	$f12,1308(s5)
    2f84:	0c000000 	jal	0 <func_80938CD0>
    2f88:	24050001 	li	a1,1
    2f8c:	c6ac0518 	lwc1	$f12,1304(s5)
    2f90:	0c000000 	jal	0 <func_80938CD0>
    2f94:	24050001 	li	a1,1
    2f98:	e7b60130 	swc1	$f22,304(sp)
    2f9c:	e7b60134 	swc1	$f22,308(sp)
    2fa0:	3c01c0a0 	lui	at,0xc0a0
    2fa4:	44819000 	mtc1	at,$f18
    2fa8:	c6a6052c 	lwc1	$f6,1324(s5)
    2fac:	27b20130 	addiu	s2,sp,304
    2fb0:	02402025 	move	a0,s2
    2fb4:	46123100 	add.s	$f4,$f6,$f18
    2fb8:	02602825 	move	a1,s3
    2fbc:	0c000000 	jal	0 <func_80938CD0>
    2fc0:	e7a40138 	swc1	$f4,312(sp)
    2fc4:	86ac0440 	lh	t4,1088(s5)
    2fc8:	55800019 	bnezl	t4,3030 <func_8093B1AC+0xb54>
    2fcc:	86a804fc 	lh	t0,1276(s5)
    2fd0:	86ad04fc 	lh	t5,1276(s5)
    2fd4:	55a00016 	bnezl	t5,3030 <func_8093B1AC+0xb54>
    2fd8:	86a804fc 	lh	t0,1276(s5)
    2fdc:	86ae0178 	lh	t6,376(s5)
    2fe0:	51c00013 	beqzl	t6,3030 <func_8093B1AC+0xb54>
    2fe4:	86a804fc 	lh	t0,1276(s5)
    2fe8:	0c000000 	jal	0 <func_80938CD0>
    2fec:	02602025 	move	a0,s3
    2ff0:	4600b03e 	c.le.s	$f22,$f0
    2ff4:	e6a00504 	swc1	$f0,1284(s5)
    2ff8:	240f0001 	li	t7,1
    2ffc:	02a02025 	move	a0,s5
    3000:	4500000a 	bc1f	302c <func_8093B1AC+0xb50>
    3004:	02c02825 	move	a1,s6
    3008:	c6a8050c 	lwc1	$f8,1292(s5)
    300c:	c6aa0514 	lwc1	$f10,1300(s5)
    3010:	a6af0440 	sh	t7,1088(s5)
    3014:	86a6001c 	lh	a2,28(s5)
    3018:	e6a80500 	swc1	$f8,1280(s5)
    301c:	0c000000 	jal	0 <func_80938CD0>
    3020:	e6aa0508 	swc1	$f10,1288(s5)
    3024:	24180014 	li	t8,20
    3028:	a6b80178 	sh	t8,376(s5)
    302c:	86a804fc 	lh	t0,1276(s5)
    3030:	24010001 	li	at,1
    3034:	5501010a 	bnel	t0,at,3460 <func_8093B1AC+0xf84>
    3038:	8fbf0064 	lw	ra,100(sp)
    303c:	86b90440 	lh	t9,1088(s5)
    3040:	8fa40124 	lw	a0,292(sp)
    3044:	26b30530 	addiu	s3,s5,1328
    3048:	17200026 	bnez	t9,30e4 <func_8093B1AC+0xc08>
    304c:	24840a20 	addiu	a0,a0,2592
    3050:	27a50128 	addiu	a1,sp,296
    3054:	0c000000 	jal	0 <func_80938CD0>
    3058:	00003025 	move	a2,zero
    305c:	87a50128 	lh	a1,296(sp)
    3060:	87a9012a 	lh	t1,298(sp)
    3064:	34018000 	li	at,0x8000
    3068:	00052823 	negu	a1,a1
    306c:	00052c00 	sll	a1,a1,0x10
    3070:	00052c03 	sra	a1,a1,0x10
    3074:	01215021 	addu	t2,t1,at
    3078:	a7aa012a 	sh	t2,298(sp)
    307c:	a7a50128 	sh	a1,296(sp)
    3080:	26a40524 	addiu	a0,s5,1316
    3084:	24060005 	li	a2,5
    3088:	0c000000 	jal	0 <func_80938CD0>
    308c:	24072000 	li	a3,8192
    3090:	26a40526 	addiu	a0,s5,1318
    3094:	87a5012a 	lh	a1,298(sp)
    3098:	24060005 	li	a2,5
    309c:	0c000000 	jal	0 <func_80938CD0>
    30a0:	24072000 	li	a3,8192
    30a4:	86ab0524 	lh	t3,1316(s5)
    30a8:	86ac0526 	lh	t4,1318(s5)
    30ac:	3c014700 	lui	at,0x4700
    30b0:	448b3000 	mtc1	t3,$f6
    30b4:	448c5000 	mtc1	t4,$f10
    30b8:	44810000 	mtc1	at,$f0
    30bc:	468034a0 	cvt.s.w	$f18,$f6
    30c0:	3c010000 	lui	at,0x0
    30c4:	c4220000 	lwc1	$f2,0(at)
    30c8:	468051a0 	cvt.s.w	$f6,$f10
    30cc:	46009103 	div.s	$f4,$f18,$f0
    30d0:	46003483 	div.s	$f18,$f6,$f0
    30d4:	46022202 	mul.s	$f8,$f4,$f2
    30d8:	e6a8053c 	swc1	$f8,1340(s5)
    30dc:	46029102 	mul.s	$f4,$f18,$f2
    30e0:	e6a40540 	swc1	$f4,1344(s5)
    30e4:	c6ac050c 	lwc1	$f12,1292(s5)
    30e8:	c6ae0510 	lwc1	$f14,1296(s5)
    30ec:	8ea60514 	lw	a2,1300(s5)
    30f0:	0c000000 	jal	0 <func_80938CD0>
    30f4:	00003825 	move	a3,zero
    30f8:	c6ac0540 	lwc1	$f12,1344(s5)
    30fc:	0c000000 	jal	0 <func_80938CD0>
    3100:	24050001 	li	a1,1
    3104:	c6ac053c 	lwc1	$f12,1340(s5)
    3108:	0c000000 	jal	0 <func_80938CD0>
    310c:	24050001 	li	a1,1
    3110:	e7b60130 	swc1	$f22,304(sp)
    3114:	e7b60134 	swc1	$f22,308(sp)
    3118:	3c01c32a 	lui	at,0xc32a
    311c:	44815000 	mtc1	at,$f10
    3120:	c6a80548 	lwc1	$f8,1352(s5)
    3124:	02402025 	move	a0,s2
    3128:	02602825 	move	a1,s3
    312c:	460a4180 	add.s	$f6,$f8,$f10
    3130:	0c000000 	jal	0 <func_80938CD0>
    3134:	e7a60138 	swc1	$f6,312(sp)
    3138:	86ad0440 	lh	t5,1088(s5)
    313c:	00008025 	move	s0,zero
    3140:	27b100bc 	addiu	s1,sp,188
    3144:	55a00061 	bnezl	t5,32cc <func_8093B1AC+0xdf0>
    3148:	02a02025 	move	a0,s5
    314c:	e7b60138 	swc1	$f22,312(sp)
    3150:	02402025 	move	a0,s2
    3154:	0c000000 	jal	0 <func_80938CD0>
    3158:	02202825 	move	a1,s1
    315c:	0c000000 	jal	0 <func_80938CD0>
    3160:	02202025 	move	a0,s1
    3164:	4600b03e 	c.le.s	$f22,$f0
    3168:	26100001 	addiu	s0,s0,1
    316c:	e6a00504 	swc1	$f0,1284(s5)
    3170:	00108400 	sll	s0,s0,0x10
    3174:	45000049 	bc1f	329c <func_8093B1AC+0xdc0>
    3178:	c7a80138 	lwc1	$f8,312(sp)
    317c:	3c01420c 	lui	at,0x420c
    3180:	44819000 	mtc1	at,$f18
    3184:	c6a40504 	lwc1	$f4,1284(s5)
    3188:	00008025 	move	s0,zero
    318c:	27b200a4 	addiu	s2,sp,164
    3190:	46049032 	c.eq.s	$f18,$f4
    3194:	27b100b0 	addiu	s1,sp,176
    3198:	45010016 	bc1t	31f4 <func_8093B1AC+0xd18>
    319c:	00000000 	nop
    31a0:	c6a8053c 	lwc1	$f8,1340(s5)
    31a4:	4608b03c 	c.lt.s	$f22,$f8
    31a8:	00000000 	nop
    31ac:	45000011 	bc1f	31f4 <func_8093B1AC+0xd18>
    31b0:	00000000 	nop
    31b4:	86ae0178 	lh	t6,376(s5)
    31b8:	240f0001 	li	t7,1
    31bc:	11c0000d 	beqz	t6,31f4 <func_8093B1AC+0xd18>
    31c0:	00000000 	nop
    31c4:	a6af0440 	sh	t7,1088(s5)
    31c8:	c7aa00bc 	lwc1	$f10,188(sp)
    31cc:	02a02025 	move	a0,s5
    31d0:	02c02825 	move	a1,s6
    31d4:	e6aa0500 	swc1	$f10,1280(s5)
    31d8:	c7a600c4 	lwc1	$f6,196(sp)
    31dc:	86a6001c 	lh	a2,28(s5)
    31e0:	0c000000 	jal	0 <func_80938CD0>
    31e4:	e6a60508 	swc1	$f6,1288(s5)
    31e8:	24180014 	li	t8,20
    31ec:	10000036 	b	32c8 <func_8093B1AC+0xdec>
    31f0:	a6b80178 	sh	t8,376(s5)
    31f4:	0c000000 	jal	0 <func_80938CD0>
    31f8:	4600d306 	mov.s	$f12,$f26
    31fc:	e7a000b0 	swc1	$f0,176(sp)
    3200:	0c000000 	jal	0 <func_80938CD0>
    3204:	4600d306 	mov.s	$f12,$f26
    3208:	e7a000b4 	swc1	$f0,180(sp)
    320c:	0c000000 	jal	0 <func_80938CD0>
    3210:	4600d306 	mov.s	$f12,$f26
    3214:	e7a000b8 	swc1	$f0,184(sp)
    3218:	e7b600a4 	swc1	$f22,164(sp)
    321c:	e7b600a8 	swc1	$f22,168(sp)
    3220:	e7b600ac 	swc1	$f22,172(sp)
    3224:	0c000000 	jal	0 <func_80938CD0>
    3228:	4600a306 	mov.s	$f12,$f20
    322c:	46180480 	add.s	$f18,$f0,$f24
    3230:	02c02025 	move	a0,s6
    3234:	02602825 	move	a1,s3
    3238:	02203025 	move	a2,s1
    323c:	e7b20010 	swc1	$f18,16(sp)
    3240:	86a8001c 	lh	t0,28(s5)
    3244:	02403825 	move	a3,s2
    3248:	0c000000 	jal	0 <func_80938CD0>
    324c:	afa80014 	sw	t0,20(sp)
    3250:	26100001 	addiu	s0,s0,1
    3254:	00108400 	sll	s0,s0,0x10
    3258:	00108403 	sra	s0,s0,0x10
    325c:	2a010005 	slti	at,s0,5
    3260:	1420ffe4 	bnez	at,31f4 <func_8093B1AC+0xd18>
    3264:	00000000 	nop
    3268:	c7a40138 	lwc1	$f4,312(sp)
    326c:	3c010001 	lui	at,0x1
    3270:	34210afc 	ori	at,at,0xafc
    3274:	3c053f4c 	lui	a1,0x3f4c
    3278:	3c073e4c 	lui	a3,0x3e4c
    327c:	34e7cccd 	ori	a3,a3,0xcccd
    3280:	34a5cccd 	ori	a1,a1,0xcccd
    3284:	02c12021 	addu	a0,s6,at
    3288:	3c063f80 	lui	a2,0x3f80
    328c:	0c000000 	jal	0 <func_80938CD0>
    3290:	e6a40548 	swc1	$f4,1352(s5)
    3294:	1000000d 	b	32cc <func_8093B1AC+0xdf0>
    3298:	02a02025 	move	a0,s5
    329c:	461a4280 	add.s	$f10,$f8,$f26
    32a0:	00108403 	sra	s0,s0,0x10
    32a4:	2a0100c8 	slti	at,s0,200
    32a8:	e7aa0138 	swc1	$f10,312(sp)
    32ac:	c6a60548 	lwc1	$f6,1352(s5)
    32b0:	460a303c 	c.lt.s	$f6,$f10
    32b4:	00000000 	nop
    32b8:	45030004 	bc1tl	32cc <func_8093B1AC+0xdf0>
    32bc:	02a02025 	move	a0,s5
    32c0:	5420ffa4 	bnezl	at,3154 <func_8093B1AC+0xc78>
    32c4:	02402025 	move	a0,s2
    32c8:	02a02025 	move	a0,s5
    32cc:	0c000000 	jal	0 <func_80938CD0>
    32d0:	26a50024 	addiu	a1,s5,36
    32d4:	50400012 	beqzl	v0,3320 <func_8093B1AC+0xe44>
    32d8:	8fa50120 	lw	a1,288(sp)
    32dc:	86b90150 	lh	t9,336(s5)
    32e0:	02c02025 	move	a0,s6
    32e4:	02602825 	move	a1,s3
    32e8:	33290003 	andi	t1,t9,0x3
    32ec:	1520000b 	bnez	t1,331c <func_8093B1AC+0xe40>
    32f0:	3c063f00 	lui	a2,0x3f00
    32f4:	240a00ff 	li	t2,255
    32f8:	afaa0010 	sw	t2,16(sp)
    32fc:	86ab001c 	lh	t3,28(s5)
    3300:	240c0001 	li	t4,1
    3304:	240d0096 	li	t5,150
    3308:	afad001c 	sw	t5,28(sp)
    330c:	afac0018 	sw	t4,24(sp)
    3310:	3c074040 	lui	a3,0x4040
    3314:	0c000000 	jal	0 <func_80938CD0>
    3318:	afab0014 	sw	t3,20(sp)
    331c:	8fa50120 	lw	a1,288(sp)
    3320:	02a02025 	move	a0,s5
    3324:	0c000000 	jal	0 <func_80938CD0>
    3328:	24a50024 	addiu	a1,a1,36
    332c:	1040004b 	beqz	v0,345c <func_8093B1AC+0xf80>
    3330:	8faf0120 	lw	t7,288(sp)
    3334:	8df8014c 	lw	t8,332(t7)
    3338:	3c0e0000 	lui	t6,0x0
    333c:	25ce0000 	addiu	t6,t6,0
    3340:	11d80046 	beq	t6,t8,345c <func_8093B1AC+0xf80>
    3344:	00008025 	move	s0,zero
    3348:	27b30080 	addiu	s3,sp,128
    334c:	27b2008c 	addiu	s2,sp,140
    3350:	27b10098 	addiu	s1,sp,152
    3354:	3c014248 	lui	at,0x4248
    3358:	44816000 	mtc1	at,$f12
    335c:	0c000000 	jal	0 <func_80938CD0>
    3360:	00000000 	nop
    3364:	8fa80120 	lw	t0,288(sp)
    3368:	3c014248 	lui	at,0x4248
    336c:	44816000 	mtc1	at,$f12
    3370:	c5120024 	lwc1	$f18,36(t0)
    3374:	46120100 	add.s	$f4,$f0,$f18
    3378:	0c000000 	jal	0 <func_80938CD0>
    337c:	e7a40098 	swc1	$f4,152(sp)
    3380:	8fb90120 	lw	t9,288(sp)
    3384:	3c014248 	lui	at,0x4248
    3388:	44816000 	mtc1	at,$f12
    338c:	c7280028 	lwc1	$f8,40(t9)
    3390:	46080180 	add.s	$f6,$f0,$f8
    3394:	0c000000 	jal	0 <func_80938CD0>
    3398:	e7a6009c 	swc1	$f6,156(sp)
    339c:	8fa90120 	lw	t1,288(sp)
    33a0:	4600d306 	mov.s	$f12,$f26
    33a4:	c52a002c 	lwc1	$f10,44(t1)
    33a8:	460a0480 	add.s	$f18,$f0,$f10
    33ac:	0c000000 	jal	0 <func_80938CD0>
    33b0:	e7b200a0 	swc1	$f18,160(sp)
    33b4:	e7a0008c 	swc1	$f0,140(sp)
    33b8:	0c000000 	jal	0 <func_80938CD0>
    33bc:	4600d306 	mov.s	$f12,$f26
    33c0:	e7a00090 	swc1	$f0,144(sp)
    33c4:	0c000000 	jal	0 <func_80938CD0>
    33c8:	4600d306 	mov.s	$f12,$f26
    33cc:	e7a00094 	swc1	$f0,148(sp)
    33d0:	e7b60080 	swc1	$f22,128(sp)
    33d4:	e7b60084 	swc1	$f22,132(sp)
    33d8:	e7b60088 	swc1	$f22,136(sp)
    33dc:	0c000000 	jal	0 <func_80938CD0>
    33e0:	4600a306 	mov.s	$f12,$f20
    33e4:	46180100 	add.s	$f4,$f0,$f24
    33e8:	02c02025 	move	a0,s6
    33ec:	02202825 	move	a1,s1
    33f0:	02403025 	move	a2,s2
    33f4:	e7a40010 	swc1	$f4,16(sp)
    33f8:	86aa001c 	lh	t2,28(s5)
    33fc:	02603825 	move	a3,s3
    3400:	0c000000 	jal	0 <func_80938CD0>
    3404:	afaa0014 	sw	t2,20(sp)
    3408:	26100001 	addiu	s0,s0,1
    340c:	00108400 	sll	s0,s0,0x10
    3410:	00108403 	sra	s0,s0,0x10
    3414:	2a010032 	slti	at,s0,50
    3418:	5420ffcf 	bnezl	at,3358 <func_8093B1AC+0xe7c>
    341c:	3c014248 	lui	at,0x4248
    3420:	8fa40120 	lw	a0,288(sp)
    3424:	0c000000 	jal	0 <func_80938CD0>
    3428:	02c02825 	move	a1,s6
    342c:	8fa40120 	lw	a0,288(sp)
    3430:	0c000000 	jal	0 <func_80938CD0>
    3434:	24053916 	li	a1,14614
    3438:	3c013f80 	lui	at,0x3f80
    343c:	44814000 	mtc1	at,$f8
    3440:	3c010001 	lui	at,0x1
    3444:	00360821 	addu	at,at,s6
    3448:	e4280afc 	swc1	$f8,2812(at)
    344c:	8fab0120 	lw	t3,288(sp)
    3450:	916c00af 	lbu	t4,175(t3)
    3454:	258d0001 	addiu	t5,t4,1
    3458:	a16d00af 	sb	t5,175(t3)
    345c:	8fbf0064 	lw	ra,100(sp)
    3460:	d7b40028 	ldc1	$f20,40(sp)
    3464:	d7b60030 	ldc1	$f22,48(sp)
    3468:	d7b80038 	ldc1	$f24,56(sp)
    346c:	d7ba0040 	ldc1	$f26,64(sp)
    3470:	8fb00048 	lw	s0,72(sp)
    3474:	8fb1004c 	lw	s1,76(sp)
    3478:	8fb20050 	lw	s2,80(sp)
    347c:	8fb30054 	lw	s3,84(sp)
    3480:	8fb40058 	lw	s4,88(sp)
    3484:	8fb5005c 	lw	s5,92(sp)
    3488:	8fb60060 	lw	s6,96(sp)
    348c:	03e00008 	jr	ra
    3490:	27bd0150 	addiu	sp,sp,336

00003494 <func_8093C164>:
    3494:	27bdffe8 	addiu	sp,sp,-24
    3498:	afa5001c 	sw	a1,28(sp)
    349c:	3c0e0000 	lui	t6,0x0
    34a0:	afbf0014 	sw	ra,20(sp)
    34a4:	25ce0000 	addiu	t6,t6,0
    34a8:	00803825 	move	a3,a0
    34ac:	ac8e014c 	sw	t6,332(a0)
    34b0:	3c050600 	lui	a1,0x600
    34b4:	24a54548 	addiu	a1,a1,17736
    34b8:	afa70018 	sw	a3,24(sp)
    34bc:	24840568 	addiu	a0,a0,1384
    34c0:	0c000000 	jal	0 <func_80938CD0>
    34c4:	24060000 	li	a2,0
    34c8:	3c040600 	lui	a0,0x600
    34cc:	0c000000 	jal	0 <func_80938CD0>
    34d0:	24844548 	addiu	a0,a0,17736
    34d4:	44822000 	mtc1	v0,$f4
    34d8:	8faf0018 	lw	t7,24(sp)
    34dc:	468021a0 	cvt.s.w	$f6,$f4
    34e0:	e5e601a4 	swc1	$f6,420(t7)
    34e4:	8fbf0014 	lw	ra,20(sp)
    34e8:	27bd0018 	addiu	sp,sp,24
    34ec:	03e00008 	jr	ra
    34f0:	00000000 	nop

000034f4 <func_8093C1C4>:
    34f4:	27bdffd8 	addiu	sp,sp,-40
    34f8:	afb00018 	sw	s0,24(sp)
    34fc:	00808025 	move	s0,a0
    3500:	afbf001c 	sw	ra,28(sp)
    3504:	24840568 	addiu	a0,a0,1384
    3508:	afa5002c 	sw	a1,44(sp)
    350c:	0c000000 	jal	0 <func_80938CD0>
    3510:	afa40024 	sw	a0,36(sp)
    3514:	260404d0 	addiu	a0,s0,1232
    3518:	24050000 	li	a1,0
    351c:	3c063f80 	lui	a2,0x3f80
    3520:	0c000000 	jal	0 <func_80938CD0>
    3524:	3c074120 	lui	a3,0x4120
    3528:	8fa40024 	lw	a0,36(sp)
    352c:	0c000000 	jal	0 <func_80938CD0>
    3530:	8e0501a4 	lw	a1,420(s0)
    3534:	10400010 	beqz	v0,3578 <func_8093C1C4+0x84>
    3538:	3c0e0000 	lui	t6,0x0
    353c:	8dce0000 	lw	t6,0(t6)
    3540:	8fa5002c 	lw	a1,44(sp)
    3544:	02002025 	move	a0,s0
    3548:	85cf017c 	lh	t7,380(t6)
    354c:	15e00005 	bnez	t7,3564 <func_8093C1C4+0x70>
    3550:	00000000 	nop
    3554:	0c000000 	jal	0 <func_80938CD0>
    3558:	02002025 	move	a0,s0
    355c:	10000004 	b	3570 <func_8093C1C4+0x7c>
    3560:	44802000 	mtc1	zero,$f4
    3564:	0c000000 	jal	0 <func_80938CD0>
    3568:	8fa5002c 	lw	a1,44(sp)
    356c:	44802000 	mtc1	zero,$f4
    3570:	00000000 	nop
    3574:	e60404d0 	swc1	$f4,1232(s0)
    3578:	8fbf001c 	lw	ra,28(sp)
    357c:	8fb00018 	lw	s0,24(sp)
    3580:	27bd0028 	addiu	sp,sp,40
    3584:	03e00008 	jr	ra
    3588:	00000000 	nop

0000358c <func_8093C25C>:
    358c:	27bdffe8 	addiu	sp,sp,-24
    3590:	afa5001c 	sw	a1,28(sp)
    3594:	3c0e0000 	lui	t6,0x0
    3598:	afbf0014 	sw	ra,20(sp)
    359c:	25ce0000 	addiu	t6,t6,0
    35a0:	00803825 	move	a3,a0
    35a4:	ac8e014c 	sw	t6,332(a0)
    35a8:	3c050600 	lui	a1,0x600
    35ac:	24a5578c 	addiu	a1,a1,22412
    35b0:	afa70018 	sw	a3,24(sp)
    35b4:	24840568 	addiu	a0,a0,1384
    35b8:	0c000000 	jal	0 <func_80938CD0>
    35bc:	24060000 	li	a2,0
    35c0:	8fa70018 	lw	a3,24(sp)
    35c4:	44802000 	mtc1	zero,$f4
    35c8:	240f0035 	li	t7,53
    35cc:	84f8001c 	lh	t8,28(a3)
    35d0:	24190014 	li	t9,20
    35d4:	a4ef0178 	sh	t7,376(a3)
    35d8:	17000002 	bnez	t8,35e4 <func_8093C25C+0x58>
    35dc:	e4e40068 	swc1	$f4,104(a3)
    35e0:	a4f9015c 	sh	t9,348(a3)
    35e4:	8fbf0014 	lw	ra,20(sp)
    35e8:	27bd0018 	addiu	sp,sp,24
    35ec:	03e00008 	jr	ra
    35f0:	00000000 	nop

000035f4 <func_8093C2C4>:
    35f4:	27bdff98 	addiu	sp,sp,-104
    35f8:	afb00030 	sw	s0,48(sp)
    35fc:	00808025 	move	s0,a0
    3600:	afbf0034 	sw	ra,52(sp)
    3604:	24840568 	addiu	a0,a0,1384
    3608:	afa5006c 	sw	a1,108(sp)
    360c:	0c000000 	jal	0 <func_80938CD0>
    3610:	afa4003c 	sw	a0,60(sp)
    3614:	860e0150 	lh	t6,336(s0)
    3618:	3c0142a0 	lui	at,0x42a0
    361c:	31cf0003 	andi	t7,t6,0x3
    3620:	55e00032 	bnezl	t7,36ec <func_8093C2C4+0xf8>
    3624:	8608001c 	lh	t0,28(s0)
    3628:	44816000 	mtc1	at,$f12
    362c:	0c000000 	jal	0 <func_80938CD0>
    3630:	00000000 	nop
    3634:	c6040024 	lwc1	$f4,36(s0)
    3638:	3c0142a0 	lui	at,0x42a0
    363c:	44816000 	mtc1	at,$f12
    3640:	46040180 	add.s	$f6,$f0,$f4
    3644:	0c000000 	jal	0 <func_80938CD0>
    3648:	e7a6005c 	swc1	$f6,92(sp)
    364c:	c6080028 	lwc1	$f8,40(s0)
    3650:	3c0142a0 	lui	at,0x42a0
    3654:	44816000 	mtc1	at,$f12
    3658:	46080280 	add.s	$f10,$f0,$f8
    365c:	0c000000 	jal	0 <func_80938CD0>
    3660:	e7aa0060 	swc1	$f10,96(sp)
    3664:	c610002c 	lwc1	$f16,44(s0)
    3668:	44801000 	mtc1	zero,$f2
    366c:	3c010000 	lui	at,0x0
    3670:	46100480 	add.s	$f18,$f0,$f16
    3674:	c4240000 	lwc1	$f4,0(at)
    3678:	3c014120 	lui	at,0x4120
    367c:	44816000 	mtc1	at,$f12
    3680:	e7b20064 	swc1	$f18,100(sp)
    3684:	e7a20050 	swc1	$f2,80(sp)
    3688:	e7a20054 	swc1	$f2,84(sp)
    368c:	e7a20058 	swc1	$f2,88(sp)
    3690:	e7a20044 	swc1	$f2,68(sp)
    3694:	e7a2004c 	swc1	$f2,76(sp)
    3698:	0c000000 	jal	0 <func_80938CD0>
    369c:	e7a40048 	swc1	$f4,72(sp)
    36a0:	3c014170 	lui	at,0x4170
    36a4:	44813000 	mtc1	at,$f6
    36a8:	8605001c 	lh	a1,28(s0)
    36ac:	27b80044 	addiu	t8,sp,68
    36b0:	46060200 	add.s	$f8,$f0,$f6
    36b4:	24a50002 	addiu	a1,a1,2
    36b8:	00052c00 	sll	a1,a1,0x10
    36bc:	24190096 	li	t9,150
    36c0:	afb90020 	sw	t9,32(sp)
    36c4:	00052c03 	sra	a1,a1,0x10
    36c8:	e7a80014 	swc1	$f8,20(sp)
    36cc:	afb80010 	sw	t8,16(sp)
    36d0:	afa0001c 	sw	zero,28(sp)
    36d4:	afa00018 	sw	zero,24(sp)
    36d8:	8fa4006c 	lw	a0,108(sp)
    36dc:	27a6005c 	addiu	a2,sp,92
    36e0:	0c000000 	jal	0 <func_80938CD0>
    36e4:	27a70050 	addiu	a3,sp,80
    36e8:	8608001c 	lh	t0,28(s0)
    36ec:	24010001 	li	at,1
    36f0:	260401d4 	addiu	a0,s0,468
    36f4:	15010019 	bne	t0,at,375c <func_8093C2C4+0x168>
    36f8:	3c05437f 	lui	a1,0x437f
    36fc:	3c063f80 	lui	a2,0x3f80
    3700:	0c000000 	jal	0 <func_80938CD0>
    3704:	3c0741f0 	lui	a3,0x41f0
    3708:	260401d8 	addiu	a0,s0,472
    370c:	3c05437f 	lui	a1,0x437f
    3710:	3c063f80 	lui	a2,0x3f80
    3714:	0c000000 	jal	0 <func_80938CD0>
    3718:	3c0741f0 	lui	a3,0x41f0
    371c:	260401dc 	addiu	a0,s0,476
    3720:	3c05437f 	lui	a1,0x437f
    3724:	3c063f80 	lui	a2,0x3f80
    3728:	0c000000 	jal	0 <func_80938CD0>
    372c:	3c0741f0 	lui	a3,0x41f0
    3730:	260401e0 	addiu	a0,s0,480
    3734:	3c054461 	lui	a1,0x4461
    3738:	3c063f80 	lui	a2,0x3f80
    373c:	0c000000 	jal	0 <func_80938CD0>
    3740:	3c0741f0 	lui	a3,0x41f0
    3744:	3c054489 	lui	a1,0x4489
    3748:	34a56000 	ori	a1,a1,0x6000
    374c:	260401e4 	addiu	a0,s0,484
    3750:	3c063f80 	lui	a2,0x3f80
    3754:	0c000000 	jal	0 <func_80938CD0>
    3758:	3c0741f0 	lui	a3,0x41f0
    375c:	86040150 	lh	a0,336(s0)
    3760:	00800821 	move	at,a0
    3764:	00042080 	sll	a0,a0,0x2
    3768:	00812023 	subu	a0,a0,at
    376c:	00042100 	sll	a0,a0,0x4
    3770:	00812023 	subu	a0,a0,at
    3774:	000420c0 	sll	a0,a0,0x3
    3778:	00812023 	subu	a0,a0,at
    377c:	00042080 	sll	a0,a0,0x2
    3780:	00042400 	sll	a0,a0,0x10
    3784:	0c000000 	jal	0 <func_80938CD0>
    3788:	00042403 	sra	a0,a0,0x10
    378c:	3c0141a0 	lui	at,0x41a0
    3790:	44815000 	mtc1	at,$f10
    3794:	3c0143af 	lui	at,0x43af
    3798:	44819000 	mtc1	at,$f18
    379c:	460a0402 	mul.s	$f16,$f0,$f10
    37a0:	3c014248 	lui	at,0x4248
    37a4:	44813000 	mtc1	at,$f6
    37a8:	3c063dcc 	lui	a2,0x3dcc
    37ac:	34c6cccd 	ori	a2,a2,0xcccd
    37b0:	26040028 	addiu	a0,s0,40
    37b4:	8e070068 	lw	a3,104(s0)
    37b8:	46128100 	add.s	$f4,$f16,$f18
    37bc:	46062200 	add.s	$f8,$f4,$f6
    37c0:	44054000 	mfc1	a1,$f8
    37c4:	0c000000 	jal	0 <func_80938CD0>
    37c8:	00000000 	nop
    37cc:	26040068 	addiu	a0,s0,104
    37d0:	3c0540a0 	lui	a1,0x40a0
    37d4:	3c063f80 	lui	a2,0x3f80
    37d8:	0c000000 	jal	0 <func_80938CD0>
    37dc:	3c073f80 	lui	a3,0x3f80
    37e0:	3c014248 	lui	at,0x4248
    37e4:	44810000 	mtc1	at,$f0
    37e8:	c60a0028 	lwc1	$f10,40(s0)
    37ec:	3c0142c8 	lui	at,0x42c8
    37f0:	44819000 	mtc1	at,$f18
    37f4:	46005401 	sub.s	$f16,$f10,$f0
    37f8:	24090004 	li	t1,4
    37fc:	44060000 	mfc1	a2,$f0
    3800:	44070000 	mfc1	a3,$f0
    3804:	e6100028 	swc1	$f16,40(s0)
    3808:	afa90014 	sw	t1,20(sp)
    380c:	8fa4006c 	lw	a0,108(sp)
    3810:	02002825 	move	a1,s0
    3814:	0c000000 	jal	0 <func_80938CD0>
    3818:	e7b20010 	swc1	$f18,16(sp)
    381c:	3c014248 	lui	at,0x4248
    3820:	44813000 	mtc1	at,$f6
    3824:	c6040028 	lwc1	$f4,40(s0)
    3828:	960a0088 	lhu	t2,136(s0)
    382c:	3c050600 	lui	a1,0x600
    3830:	46062200 	add.s	$f8,$f4,$f6
    3834:	314b0001 	andi	t3,t2,0x1
    3838:	24a56530 	addiu	a1,a1,25904
    383c:	11600004 	beqz	t3,3850 <func_8093C2C4+0x25c>
    3840:	e6080028 	swc1	$f8,40(s0)
    3844:	44805000 	mtc1	zero,$f10
    3848:	00000000 	nop
    384c:	e60a0068 	swc1	$f10,104(s0)
    3850:	86030178 	lh	v1,376(s0)
    3854:	24010001 	li	at,1
    3858:	8fa4003c 	lw	a0,60(sp)
    385c:	1461000a 	bne	v1,at,3888 <func_8093C2C4+0x294>
    3860:	00000000 	nop
    3864:	0c000000 	jal	0 <func_80938CD0>
    3868:	24060000 	li	a2,0
    386c:	3c040600 	lui	a0,0x600
    3870:	0c000000 	jal	0 <func_80938CD0>
    3874:	24846530 	addiu	a0,a0,25904
    3878:	44828000 	mtc1	v0,$f16
    387c:	86030178 	lh	v1,376(s0)
    3880:	468084a0 	cvt.s.w	$f18,$f16
    3884:	e61201a4 	swc1	$f18,420(s0)
    3888:	14600007 	bnez	v1,38a8 <func_8093C2C4+0x2b4>
    388c:	8fa4003c 	lw	a0,60(sp)
    3890:	0c000000 	jal	0 <func_80938CD0>
    3894:	8e0501a4 	lw	a1,420(s0)
    3898:	10400003 	beqz	v0,38a8 <func_8093C2C4+0x2b4>
    389c:	02002025 	move	a0,s0
    38a0:	0c000000 	jal	0 <func_80938CD0>
    38a4:	8fa5006c 	lw	a1,108(sp)
    38a8:	8fbf0034 	lw	ra,52(sp)
    38ac:	8fb00030 	lw	s0,48(sp)
    38b0:	27bd0068 	addiu	sp,sp,104
    38b4:	03e00008 	jr	ra
    38b8:	00000000 	nop

000038bc <func_8093C58C>:
    38bc:	27bdffe8 	addiu	sp,sp,-24
    38c0:	afa5001c 	sw	a1,28(sp)
    38c4:	3c0e0000 	lui	t6,0x0
    38c8:	afbf0014 	sw	ra,20(sp)
    38cc:	25ce0000 	addiu	t6,t6,0
    38d0:	00803825 	move	a3,a0
    38d4:	ac8e014c 	sw	t6,332(a0)
    38d8:	3c050601 	lui	a1,0x601
    38dc:	24a588c8 	addiu	a1,a1,-30520
    38e0:	afa70018 	sw	a3,24(sp)
    38e4:	24840568 	addiu	a0,a0,1384
    38e8:	0c000000 	jal	0 <func_80938CD0>
    38ec:	24060000 	li	a2,0
    38f0:	3c040601 	lui	a0,0x601
    38f4:	0c000000 	jal	0 <func_80938CD0>
    38f8:	248488c8 	addiu	a0,a0,-30520
    38fc:	44822000 	mtc1	v0,$f4
    3900:	8fa70018 	lw	a3,24(sp)
    3904:	44804000 	mtc1	zero,$f8
    3908:	468021a0 	cvt.s.w	$f6,$f4
    390c:	e4e80068 	swc1	$f8,104(a3)
    3910:	e4e601a4 	swc1	$f6,420(a3)
    3914:	8fbf0014 	lw	ra,20(sp)
    3918:	27bd0018 	addiu	sp,sp,24
    391c:	03e00008 	jr	ra
    3920:	00000000 	nop

00003924 <func_8093C5F4>:
    3924:	27bdffd8 	addiu	sp,sp,-40
    3928:	afb00018 	sw	s0,24(sp)
    392c:	00808025 	move	s0,a0
    3930:	afbf001c 	sw	ra,28(sp)
    3934:	24840568 	addiu	a0,a0,1384
    3938:	afa5002c 	sw	a1,44(sp)
    393c:	0c000000 	jal	0 <func_80938CD0>
    3940:	afa40024 	sw	a0,36(sp)
    3944:	8fa40024 	lw	a0,36(sp)
    3948:	0c000000 	jal	0 <func_80938CD0>
    394c:	3c054120 	lui	a1,0x4120
    3950:	5040000d 	beqzl	v0,3988 <func_8093C5F4+0x64>
    3954:	8fa40024 	lw	a0,36(sp)
    3958:	860e001c 	lh	t6,28(s0)
    395c:	24010001 	li	at,1
    3960:	240539b0 	li	a1,14768
    3964:	15c10005 	bne	t6,at,397c <func_8093C5F4+0x58>
    3968:	02002025 	move	a0,s0
    396c:	0c000000 	jal	0 <func_80938CD0>
    3970:	02002025 	move	a0,s0
    3974:	10000004 	b	3988 <func_8093C5F4+0x64>
    3978:	8fa40024 	lw	a0,36(sp)
    397c:	0c000000 	jal	0 <func_80938CD0>
    3980:	240539b1 	li	a1,14769
    3984:	8fa40024 	lw	a0,36(sp)
    3988:	0c000000 	jal	0 <func_80938CD0>
    398c:	8e0501a4 	lw	a1,420(s0)
    3990:	10400003 	beqz	v0,39a0 <func_8093C5F4+0x7c>
    3994:	02002025 	move	a0,s0
    3998:	0c000000 	jal	0 <func_80938CD0>
    399c:	8fa5002c 	lw	a1,44(sp)
    39a0:	8fbf001c 	lw	ra,28(sp)
    39a4:	8fb00018 	lw	s0,24(sp)
    39a8:	27bd0028 	addiu	sp,sp,40
    39ac:	03e00008 	jr	ra
    39b0:	00000000 	nop

000039b4 <func_8093C684>:
    39b4:	27bdffd8 	addiu	sp,sp,-40
    39b8:	afb00018 	sw	s0,24(sp)
    39bc:	afa5002c 	sw	a1,44(sp)
    39c0:	3c0e0000 	lui	t6,0x0
    39c4:	00808025 	move	s0,a0
    39c8:	afbf001c 	sw	ra,28(sp)
    39cc:	25ce0000 	addiu	t6,t6,0
    39d0:	ac8e014c 	sw	t6,332(a0)
    39d4:	24840568 	addiu	a0,a0,1384
    39d8:	3c050600 	lui	a1,0x600
    39dc:	24a57ca8 	addiu	a1,a1,31912
    39e0:	afa40024 	sw	a0,36(sp)
    39e4:	0c000000 	jal	0 <func_80938CD0>
    39e8:	3c06c040 	lui	a2,0xc040
    39ec:	3c040600 	lui	a0,0x600
    39f0:	0c000000 	jal	0 <func_80938CD0>
    39f4:	24847ca8 	addiu	a0,a0,31912
    39f8:	44822000 	mtc1	v0,$f4
    39fc:	44804000 	mtc1	zero,$f8
    3a00:	468021a0 	cvt.s.w	$f6,$f4
    3a04:	e6080068 	swc1	$f8,104(s0)
    3a08:	e60601a4 	swc1	$f6,420(s0)
    3a0c:	0c000000 	jal	0 <func_80938CD0>
    3a10:	8fa40024 	lw	a0,36(sp)
    3a14:	240f0014 	li	t7,20
    3a18:	a60f0178 	sh	t7,376(s0)
    3a1c:	8fbf001c 	lw	ra,28(sp)
    3a20:	8fb00018 	lw	s0,24(sp)
    3a24:	27bd0028 	addiu	sp,sp,40
    3a28:	03e00008 	jr	ra
    3a2c:	00000000 	nop

00003a30 <func_8093C700>:
    3a30:	27bdffd8 	addiu	sp,sp,-40
    3a34:	afbf001c 	sw	ra,28(sp)
    3a38:	afb00018 	sw	s0,24(sp)
    3a3c:	afa5002c 	sw	a1,44(sp)
    3a40:	84820178 	lh	v0,376(a0)
    3a44:	00808025 	move	s0,a0
    3a48:	240e0009 	li	t6,9
    3a4c:	5040000c 	beqzl	v0,3a80 <func_8093C700+0x50>
    3a50:	26040568 	addiu	a0,s0,1384
    3a54:	848f00b6 	lh	t7,182(a0)
    3a58:	30590003 	andi	t9,v0,0x3
    3a5c:	a08e05c0 	sb	t6,1472(a0)
    3a60:	25f8d000 	addiu	t8,t7,-12288
    3a64:	17200014 	bnez	t9,3ab8 <func_8093C700+0x88>
    3a68:	a49800b6 	sh	t8,182(a0)
    3a6c:	0c000000 	jal	0 <func_80938CD0>
    3a70:	24053921 	li	a1,14625
    3a74:	10000011 	b	3abc <func_8093C700+0x8c>
    3a78:	8fbf001c 	lw	ra,28(sp)
    3a7c:	26040568 	addiu	a0,s0,1384
    3a80:	0c000000 	jal	0 <func_80938CD0>
    3a84:	afa40024 	sw	a0,36(sp)
    3a88:	260400b6 	addiu	a0,s0,182
    3a8c:	86050032 	lh	a1,50(s0)
    3a90:	24060003 	li	a2,3
    3a94:	0c000000 	jal	0 <func_80938CD0>
    3a98:	24072000 	li	a3,8192
    3a9c:	8fa40024 	lw	a0,36(sp)
    3aa0:	0c000000 	jal	0 <func_80938CD0>
    3aa4:	8e0501a4 	lw	a1,420(s0)
    3aa8:	10400003 	beqz	v0,3ab8 <func_8093C700+0x88>
    3aac:	02002025 	move	a0,s0
    3ab0:	0c000000 	jal	0 <func_80938CD0>
    3ab4:	8fa5002c 	lw	a1,44(sp)
    3ab8:	8fbf001c 	lw	ra,28(sp)
    3abc:	8fb00018 	lw	s0,24(sp)
    3ac0:	27bd0028 	addiu	sp,sp,40
    3ac4:	03e00008 	jr	ra
    3ac8:	00000000 	nop

00003acc <func_8093C79C>:
    3acc:	27bdffe8 	addiu	sp,sp,-24
    3ad0:	44800000 	mtc1	zero,$f0
    3ad4:	afbf0014 	sw	ra,20(sp)
    3ad8:	afa5001c 	sw	a1,28(sp)
    3adc:	3c0e0000 	lui	t6,0x0
    3ae0:	25ce0000 	addiu	t6,t6,0
    3ae4:	3c050600 	lui	a1,0x600
    3ae8:	ac8e014c 	sw	t6,332(a0)
    3aec:	24a56f28 	addiu	a1,a1,28456
    3af0:	24840568 	addiu	a0,a0,1384
    3af4:	3c06c120 	lui	a2,0xc120
    3af8:	e480ff60 	swc1	$f0,-160(a0)
    3afc:	0c000000 	jal	0 <func_80938CD0>
    3b00:	e480fb00 	swc1	$f0,-1280(a0)
    3b04:	8fbf0014 	lw	ra,20(sp)
    3b08:	27bd0018 	addiu	sp,sp,24
    3b0c:	03e00008 	jr	ra
    3b10:	00000000 	nop

00003b14 <func_8093C7E4>:
    3b14:	27bdffe8 	addiu	sp,sp,-24
    3b18:	afbf0014 	sw	ra,20(sp)
    3b1c:	afa40018 	sw	a0,24(sp)
    3b20:	afa5001c 	sw	a1,28(sp)
    3b24:	24050000 	li	a1,0
    3b28:	248404d0 	addiu	a0,a0,1232
    3b2c:	3c063f80 	lui	a2,0x3f80
    3b30:	0c000000 	jal	0 <func_80938CD0>
    3b34:	3c074120 	lui	a3,0x4120
    3b38:	8fa40018 	lw	a0,24(sp)
    3b3c:	0c000000 	jal	0 <func_80938CD0>
    3b40:	24840568 	addiu	a0,a0,1384
    3b44:	8fbf0014 	lw	ra,20(sp)
    3b48:	27bd0018 	addiu	sp,sp,24
    3b4c:	03e00008 	jr	ra
    3b50:	00000000 	nop

00003b54 <func_8093C824>:
    3b54:	afa50004 	sw	a1,4(sp)
    3b58:	8c8f0004 	lw	t7,4(a0)
    3b5c:	3c01c4fa 	lui	at,0xc4fa
    3b60:	44812000 	mtc1	at,$f4
    3b64:	3c0e0000 	lui	t6,0x0
    3b68:	2401fffe 	li	at,-2
    3b6c:	25ce0000 	addiu	t6,t6,0
    3b70:	01e1c024 	and	t8,t7,at
    3b74:	ac8e014c 	sw	t6,332(a0)
    3b78:	a0800564 	sb	zero,1380(a0)
    3b7c:	ac980004 	sw	t8,4(a0)
    3b80:	03e00008 	jr	ra
    3b84:	e4840028 	swc1	$f4,40(a0)

00003b88 <func_8093C858>:
    3b88:	27bdffe8 	addiu	sp,sp,-24
    3b8c:	afbf0014 	sw	ra,20(sp)
    3b90:	afa5001c 	sw	a1,28(sp)
    3b94:	848e001c 	lh	t6,28(a0)
    3b98:	24010002 	li	at,2
    3b9c:	00803025 	move	a2,a0
    3ba0:	15c1001c 	bne	t6,at,3c14 <func_8093C858+0x8c>
    3ba4:	3c030000 	lui	v1,0x0
    3ba8:	8c630000 	lw	v1,0(v1)
    3bac:	3c020000 	lui	v0,0x0
    3bb0:	24420000 	addiu	v0,v0,0
    3bb4:	8c6f014c 	lw	t7,332(v1)
    3bb8:	3c040000 	lui	a0,0x0
    3bbc:	544f0016 	bnel	v0,t7,3c18 <func_8093C858+0x90>
    3bc0:	8fbf0014 	lw	ra,20(sp)
    3bc4:	8c840000 	lw	a0,0(a0)
    3bc8:	8c98014c 	lw	t8,332(a0)
    3bcc:	54580012 	bnel	v0,t8,3c18 <func_8093C858+0x90>
    3bd0:	8fbf0014 	lw	ra,20(sp)
    3bd4:	907900af 	lbu	t9,175(v1)
    3bd8:	908800af 	lbu	t0,175(a0)
    3bdc:	03284821 	addu	t1,t9,t0
    3be0:	29210004 	slti	at,t1,4
    3be4:	5420000c 	bnezl	at,3c18 <func_8093C858+0x90>
    3be8:	8fbf0014 	lw	ra,20(sp)
    3bec:	0c000000 	jal	0 <func_80938CD0>
    3bf0:	00c02025 	move	a0,a2
    3bf4:	3c040000 	lui	a0,0x0
    3bf8:	8c840000 	lw	a0,0(a0)
    3bfc:	0c000000 	jal	0 <func_80938CD0>
    3c00:	8fa5001c 	lw	a1,28(sp)
    3c04:	3c040000 	lui	a0,0x0
    3c08:	8c840000 	lw	a0,0(a0)
    3c0c:	0c000000 	jal	0 <func_80938CD0>
    3c10:	8fa5001c 	lw	a1,28(sp)
    3c14:	8fbf0014 	lw	ra,20(sp)
    3c18:	27bd0018 	addiu	sp,sp,24
    3c1c:	03e00008 	jr	ra
    3c20:	00000000 	nop

00003c24 <func_8093C8F4>:
    3c24:	afa50004 	sw	a1,4(sp)
    3c28:	3c0e0000 	lui	t6,0x0
    3c2c:	25ce0000 	addiu	t6,t6,0
    3c30:	ac8e014c 	sw	t6,332(a0)
    3c34:	a48005fa 	sh	zero,1530(a0)
    3c38:	03e00008 	jr	ra
    3c3c:	a4800440 	sh	zero,1088(a0)

00003c40 <func_8093C910>:
    3c40:	27bdff40 	addiu	sp,sp,-192
    3c44:	afbf003c 	sw	ra,60(sp)
    3c48:	afb20038 	sw	s2,56(sp)
    3c4c:	afb10034 	sw	s1,52(sp)
    3c50:	afb00030 	sw	s0,48(sp)
    3c54:	f7b60028 	sdc1	$f22,40(sp)
    3c58:	f7b40020 	sdc1	$f20,32(sp)
    3c5c:	8cae1c44 	lw	t6,7236(a1)
    3c60:	00808825 	move	s1,a0
    3c64:	00a09025 	move	s2,a1
    3c68:	afae00a0 	sw	t6,160(sp)
    3c6c:	848205fa 	lh	v0,1530(a0)
    3c70:	240f0001 	li	t7,1
    3c74:	02402025 	move	a0,s2
    3c78:	1040000a 	beqz	v0,3ca4 <func_8093C910+0x64>
    3c7c:	26451d64 	addiu	a1,s2,7524
    3c80:	24010001 	li	at,1
    3c84:	10410034 	beq	v0,at,3d58 <func_8093C910+0x118>
    3c88:	24010002 	li	at,2
    3c8c:	10410069 	beq	v0,at,3e34 <func_8093C910+0x1f4>
    3c90:	3c013f80 	lui	at,0x3f80
    3c94:	4481a000 	mtc1	at,$f20
    3c98:	4480b000 	mtc1	zero,$f22
    3c9c:	100000a6 	b	3f38 <func_8093C910+0x2f8>
    3ca0:	862505fc 	lh	a1,1532(s1)
    3ca4:	0c000000 	jal	0 <func_80938CD0>
    3ca8:	a62f05fa 	sh	t7,1530(s1)
    3cac:	02402025 	move	a0,s2
    3cb0:	02202825 	move	a1,s1
    3cb4:	0c000000 	jal	0 <func_80938CD0>
    3cb8:	24060039 	li	a2,57
    3cbc:	0c000000 	jal	0 <func_80938CD0>
    3cc0:	02402025 	move	a0,s2
    3cc4:	a62205fc 	sh	v0,1532(s1)
    3cc8:	02402025 	move	a0,s2
    3ccc:	00002825 	move	a1,zero
    3cd0:	0c000000 	jal	0 <func_80938CD0>
    3cd4:	24060001 	li	a2,1
    3cd8:	02402025 	move	a0,s2
    3cdc:	862505fc 	lh	a1,1532(s1)
    3ce0:	0c000000 	jal	0 <func_80938CD0>
    3ce4:	24060007 	li	a2,7
    3ce8:	3c014448 	lui	at,0x4448
    3cec:	44812000 	mtc1	at,$f4
    3cf0:	3c010000 	lui	at,0x0
    3cf4:	3c180000 	lui	t8,0x0
    3cf8:	e62406a4 	swc1	$f4,1700(s1)
    3cfc:	c4260000 	lwc1	$f6,0(at)
    3d00:	3c190000 	lui	t9,0x0
    3d04:	3c080000 	lui	t0,0x0
    3d08:	e62606ac 	swc1	$f6,1708(s1)
    3d0c:	8f180000 	lw	t8,0(t8)
    3d10:	3c090000 	lui	t1,0x0
    3d14:	4480b000 	mtc1	zero,$f22
    3d18:	a7000030 	sh	zero,48(t8)
    3d1c:	8f390000 	lw	t9,0(t9)
    3d20:	3c014416 	lui	at,0x4416
    3d24:	44814000 	mtc1	at,$f8
    3d28:	a72000b4 	sh	zero,180(t9)
    3d2c:	8d080000 	lw	t0,0(t0)
    3d30:	3c0410c8 	lui	a0,0x10c8
    3d34:	348400ff 	ori	a0,a0,0xff
    3d38:	a5000030 	sh	zero,48(t0)
    3d3c:	8d290000 	lw	t1,0(t1)
    3d40:	a52000b4 	sh	zero,180(t1)
    3d44:	e63601a8 	swc1	$f22,424(s1)
    3d48:	e63601ac 	swc1	$f22,428(s1)
    3d4c:	0c000000 	jal	0 <func_80938CD0>
    3d50:	e62801b0 	swc1	$f8,432(s1)
    3d54:	a6200152 	sh	zero,338(s1)
    3d58:	86220152 	lh	v0,338(s1)
    3d5c:	4480b000 	mtc1	zero,$f22
    3d60:	24010014 	li	at,20
    3d64:	14410005 	bne	v0,at,3d7c <func_8093C910+0x13c>
    3d68:	02402025 	move	a0,s2
    3d6c:	24056059 	li	a1,24665
    3d70:	0c000000 	jal	0 <func_80938CD0>
    3d74:	00003025 	move	a2,zero
    3d78:	86220152 	lh	v0,338(s1)
    3d7c:	24010050 	li	at,80
    3d80:	14410004 	bne	v0,at,3d94 <func_8093C910+0x154>
    3d84:	02402025 	move	a0,s2
    3d88:	2405605a 	li	a1,24666
    3d8c:	0c000000 	jal	0 <func_80938CD0>
    3d90:	00003025 	move	a2,zero
    3d94:	3c0143dc 	lui	at,0x43dc
    3d98:	44815000 	mtc1	at,$f10
    3d9c:	e636060c 	swc1	$f22,1548(s1)
    3da0:	e6360614 	swc1	$f22,1556(s1)
    3da4:	e62a0610 	swc1	$f10,1552(s1)
    3da8:	e7b600b0 	swc1	$f22,176(sp)
    3dac:	e7b600b4 	swc1	$f22,180(sp)
    3db0:	c63006a4 	lwc1	$f16,1700(s1)
    3db4:	00002825 	move	a1,zero
    3db8:	e7b000b8 	swc1	$f16,184(sp)
    3dbc:	0c000000 	jal	0 <func_80938CD0>
    3dc0:	c62c06ac 	lwc1	$f12,1708(s1)
    3dc4:	27a400b0 	addiu	a0,sp,176
    3dc8:	0c000000 	jal	0 <func_80938CD0>
    3dcc:	27a500a4 	addiu	a1,sp,164
    3dd0:	3c014396 	lui	at,0x4396
    3dd4:	c7b200a4 	lwc1	$f18,164(sp)
    3dd8:	44812000 	mtc1	at,$f4
    3ddc:	3c053e99 	lui	a1,0x3e99
    3de0:	e6320600 	swc1	$f18,1536(s1)
    3de4:	e6240604 	swc1	$f4,1540(s1)
    3de8:	c7a600ac 	lwc1	$f6,172(sp)
    3dec:	3c063ca3 	lui	a2,0x3ca3
    3df0:	3c073cf5 	lui	a3,0x3cf5
    3df4:	34e7c28f 	ori	a3,a3,0xc28f
    3df8:	34c6d70a 	ori	a2,a2,0xd70a
    3dfc:	34a5999a 	ori	a1,a1,0x999a
    3e00:	262406ac 	addiu	a0,s1,1708
    3e04:	0c000000 	jal	0 <func_80938CD0>
    3e08:	e6260608 	swc1	$f6,1544(s1)
    3e0c:	3c063dcc 	lui	a2,0x3dcc
    3e10:	34c6cccd 	ori	a2,a2,0xcccd
    3e14:	262406a4 	addiu	a0,s1,1700
    3e18:	3c054348 	lui	a1,0x4348
    3e1c:	0c000000 	jal	0 <func_80938CD0>
    3e20:	3c0740a0 	lui	a3,0x40a0
    3e24:	3c013f80 	lui	at,0x3f80
    3e28:	4481a000 	mtc1	at,$f20
    3e2c:	10000042 	b	3f38 <func_8093C910+0x2f8>
    3e30:	862505fc 	lh	a1,1532(s1)
    3e34:	4480b000 	mtc1	zero,$f22
    3e38:	00002825 	move	a1,zero
    3e3c:	e7b600b0 	swc1	$f22,176(sp)
    3e40:	e7b600b4 	swc1	$f22,180(sp)
    3e44:	c62806a4 	lwc1	$f8,1700(s1)
    3e48:	e7a800b8 	swc1	$f8,184(sp)
    3e4c:	0c000000 	jal	0 <func_80938CD0>
    3e50:	c62c06ac 	lwc1	$f12,1708(s1)
    3e54:	27a400b0 	addiu	a0,sp,176
    3e58:	0c000000 	jal	0 <func_80938CD0>
    3e5c:	27a500a4 	addiu	a1,sp,164
    3e60:	3c0141a0 	lui	at,0x41a0
    3e64:	44812000 	mtc1	at,$f4
    3e68:	c632069c 	lwc1	$f18,1692(s1)
    3e6c:	c7aa00a4 	lwc1	$f10,164(sp)
    3e70:	3c063dcc 	lui	a2,0x3dcc
    3e74:	46049182 	mul.s	$f6,$f18,$f4
    3e78:	e62a0600 	swc1	$f10,1536(s1)
    3e7c:	c7b000ac 	lwc1	$f16,172(sp)
    3e80:	34c6cccd 	ori	a2,a2,0xcccd
    3e84:	26240604 	addiu	a0,s1,1540
    3e88:	3c0543d2 	lui	a1,0x43d2
    3e8c:	e6300608 	swc1	$f16,1544(s1)
    3e90:	44073000 	mfc1	a3,$f6
    3e94:	0c000000 	jal	0 <func_80938CD0>
    3e98:	00000000 	nop
    3e9c:	3c0140c0 	lui	at,0x40c0
    3ea0:	44815000 	mtc1	at,$f10
    3ea4:	c628069c 	lwc1	$f8,1692(s1)
    3ea8:	3c063dcc 	lui	a2,0x3dcc
    3eac:	34c6cccd 	ori	a2,a2,0xcccd
    3eb0:	460a4402 	mul.s	$f16,$f8,$f10
    3eb4:	26240610 	addiu	a0,s1,1552
    3eb8:	3c0543eb 	lui	a1,0x43eb
    3ebc:	44078000 	mfc1	a3,$f16
    3ec0:	0c000000 	jal	0 <func_80938CD0>
    3ec4:	00000000 	nop
    3ec8:	3c053e99 	lui	a1,0x3e99
    3ecc:	3c063ca3 	lui	a2,0x3ca3
    3ed0:	3c073cf5 	lui	a3,0x3cf5
    3ed4:	34e7c28f 	ori	a3,a3,0xc28f
    3ed8:	34c6d70a 	ori	a2,a2,0xd70a
    3edc:	34a5999a 	ori	a1,a1,0x999a
    3ee0:	0c000000 	jal	0 <func_80938CD0>
    3ee4:	262406ac 	addiu	a0,s1,1708
    3ee8:	3c014200 	lui	at,0x4200
    3eec:	44812000 	mtc1	at,$f4
    3ef0:	c632069c 	lwc1	$f18,1692(s1)
    3ef4:	3c063dcc 	lui	a2,0x3dcc
    3ef8:	34c6cccd 	ori	a2,a2,0xcccd
    3efc:	46049182 	mul.s	$f6,$f18,$f4
    3f00:	262406a4 	addiu	a0,s1,1700
    3f04:	3c054270 	lui	a1,0x4270
    3f08:	44073000 	mfc1	a3,$f6
    3f0c:	0c000000 	jal	0 <func_80938CD0>
    3f10:	00000000 	nop
    3f14:	3c013f80 	lui	at,0x3f80
    3f18:	4481a000 	mtc1	at,$f20
    3f1c:	3c073dcc 	lui	a3,0x3dcc
    3f20:	34e7cccd 	ori	a3,a3,0xcccd
    3f24:	4405a000 	mfc1	a1,$f20
    3f28:	4406a000 	mfc1	a2,$f20
    3f2c:	0c000000 	jal	0 <func_80938CD0>
    3f30:	2624069c 	addiu	a0,s1,1692
    3f34:	862505fc 	lh	a1,1532(s1)
    3f38:	50a0000e 	beqzl	a1,3f74 <func_8093C910+0x334>
    3f3c:	86220440 	lh	v0,1088(s1)
    3f40:	922a05f9 	lbu	t2,1529(s1)
    3f44:	26270600 	addiu	a3,s1,1536
    3f48:	02402025 	move	a0,s2
    3f4c:	15400006 	bnez	t2,3f68 <func_8093C910+0x328>
    3f50:	26260630 	addiu	a2,s1,1584
    3f54:	02402025 	move	a0,s2
    3f58:	0c000000 	jal	0 <func_80938CD0>
    3f5c:	2626060c 	addiu	a2,s1,1548
    3f60:	10000004 	b	3f74 <func_8093C910+0x334>
    3f64:	86220440 	lh	v0,1088(s1)
    3f68:	0c000000 	jal	0 <func_80938CD0>
    3f6c:	26270624 	addiu	a3,s1,1572
    3f70:	86220440 	lh	v0,1088(s1)
    3f74:	24010001 	li	at,1
    3f78:	3c040000 	lui	a0,0x0
    3f7c:	10400008 	beqz	v0,3fa0 <func_8093C910+0x360>
    3f80:	2405311f 	li	a1,12575
    3f84:	10410122 	beq	v0,at,4410 <func_8093C910+0x7d0>
    3f88:	26300568 	addiu	s0,s1,1384
    3f8c:	24010002 	li	at,2
    3f90:	10410137 	beq	v0,at,4470 <func_8093C910+0x830>
    3f94:	00000000 	nop
    3f98:	100001d4 	b	46ec <func_8093C910+0xaac>
    3f9c:	8fbf003c 	lw	ra,60(sp)
    3fa0:	0c000000 	jal	0 <func_80938CD0>
    3fa4:	8c840000 	lw	a0,0(a0)
    3fa8:	3c040000 	lui	a0,0x0
    3fac:	8c840000 	lw	a0,0(a0)
    3fb0:	0c000000 	jal	0 <func_80938CD0>
    3fb4:	2405311f 	li	a1,12575
    3fb8:	3c0143c8 	lui	at,0x43c8
    3fbc:	c62801b0 	lwc1	$f8,432(s1)
    3fc0:	44815000 	mtc1	at,$f10
    3fc4:	e7b600b8 	swc1	$f22,184(sp)
    3fc8:	e7a800b0 	swc1	$f8,176(sp)
    3fcc:	e7aa00b4 	swc1	$f10,180(sp)
    3fd0:	c62c01a8 	lwc1	$f12,424(s1)
    3fd4:	0c000000 	jal	0 <func_80938CD0>
    3fd8:	00002825 	move	a1,zero
    3fdc:	27a400b0 	addiu	a0,sp,176
    3fe0:	0c000000 	jal	0 <func_80938CD0>
    3fe4:	27a500a4 	addiu	a1,sp,164
    3fe8:	3c020000 	lui	v0,0x0
    3fec:	24420000 	addiu	v0,v0,0
    3ff0:	8c4b0000 	lw	t3,0(v0)
    3ff4:	c7b000a4 	lwc1	$f16,164(sp)
    3ff8:	3c014700 	lui	at,0x4700
    3ffc:	44810000 	mtc1	at,$f0
    4000:	e5700024 	swc1	$f16,36(t3)
    4004:	c7b200a8 	lwc1	$f18,168(sp)
    4008:	8c4c0000 	lw	t4,0(v0)
    400c:	3c010000 	lui	at,0x0
    4010:	3c030000 	lui	v1,0x0
    4014:	e5920028 	swc1	$f18,40(t4)
    4018:	c7a400ac 	lwc1	$f4,172(sp)
    401c:	8c4d0000 	lw	t5,0(v0)
    4020:	24630000 	addiu	v1,v1,0
    4024:	4405b000 	mfc1	a1,$f22
    4028:	e5a4002c 	swc1	$f4,44(t5)
    402c:	c62601a8 	lwc1	$f6,424(s1)
    4030:	c4280000 	lwc1	$f8,0(at)
    4034:	8c580000 	lw	t8,0(v0)
    4038:	3c010000 	lui	at,0x0
    403c:	46083283 	div.s	$f10,$f6,$f8
    4040:	3c063dcc 	lui	a2,0x3dcc
    4044:	34c6cccd 	ori	a2,a2,0xcccd
    4048:	262401b0 	addiu	a0,s1,432
    404c:	3c0740e0 	lui	a3,0x40e0
    4050:	46005402 	mul.s	$f16,$f10,$f0
    4054:	4600848d 	trunc.w.s	$f18,$f16
    4058:	440f9000 	mfc1	t7,$f18
    405c:	00000000 	nop
    4060:	a70f00b6 	sh	t7,182(t8)
    4064:	c7a400a4 	lwc1	$f4,164(sp)
    4068:	8c790000 	lw	t9,0(v1)
    406c:	46002187 	neg.s	$f6,$f4
    4070:	e7260024 	swc1	$f6,36(t9)
    4074:	8c680000 	lw	t0,0(v1)
    4078:	c7a800a8 	lwc1	$f8,168(sp)
    407c:	e5080028 	swc1	$f8,40(t0)
    4080:	c7aa00ac 	lwc1	$f10,172(sp)
    4084:	8c690000 	lw	t1,0(v1)
    4088:	46005407 	neg.s	$f16,$f10
    408c:	e530002c 	swc1	$f16,44(t1)
    4090:	c4240000 	lwc1	$f4,0(at)
    4094:	c63201a8 	lwc1	$f18,424(s1)
    4098:	8c6c0000 	lw	t4,0(v1)
    409c:	46049183 	div.s	$f6,$f18,$f4
    40a0:	46003202 	mul.s	$f8,$f6,$f0
    40a4:	46004280 	add.s	$f10,$f8,$f0
    40a8:	4600540d 	trunc.w.s	$f16,$f10
    40ac:	440b8000 	mfc1	t3,$f16
    40b0:	0c000000 	jal	0 <func_80938CD0>
    40b4:	a58b00b6 	sh	t3,182(t4)
    40b8:	c63201a8 	lwc1	$f18,424(s1)
    40bc:	c62401ac 	lwc1	$f4,428(s1)
    40c0:	4406a000 	mfc1	a2,$f20
    40c4:	3c073b83 	lui	a3,0x3b83
    40c8:	46049181 	sub.s	$f6,$f18,$f4
    40cc:	34e7126e 	ori	a3,a3,0x126e
    40d0:	262401ac 	addiu	a0,s1,428
    40d4:	3c053f00 	lui	a1,0x3f00
    40d8:	0c000000 	jal	0 <func_80938CD0>
    40dc:	e62601a8 	swc1	$f6,424(s1)
    40e0:	3c014120 	lui	at,0x4120
    40e4:	44815000 	mtc1	at,$f10
    40e8:	c62801b0 	lwc1	$f8,432(s1)
    40ec:	460a403c 	c.lt.s	$f8,$f10
    40f0:	00000000 	nop
    40f4:	450000b5 	bc1f	43cc <func_8093C910+0x78c>
    40f8:	00000000 	nop
    40fc:	862d0166 	lh	t5,358(s1)
    4100:	3c040000 	lui	a0,0x0
    4104:	24053910 	li	a1,14608
    4108:	15a00005 	bnez	t5,4120 <func_8093C910+0x4e0>
    410c:	00000000 	nop
    4110:	0c000000 	jal	0 <func_80938CD0>
    4114:	8c840000 	lw	a0,0(a0)
    4118:	240e0001 	li	t6,1
    411c:	a62e0166 	sh	t6,358(s1)
    4120:	3c040000 	lui	a0,0x0
    4124:	8c840000 	lw	a0,0(a0)
    4128:	3c053ba3 	lui	a1,0x3ba3
    412c:	4406a000 	mfc1	a2,$f20
    4130:	3c0739c4 	lui	a3,0x39c4
    4134:	34e79ba9 	ori	a3,a3,0x9ba9
    4138:	34a5d70c 	ori	a1,a1,0xd70c
    413c:	0c000000 	jal	0 <func_80938CD0>
    4140:	24840050 	addiu	a0,a0,80
    4144:	00008025 	move	s0,zero
    4148:	3c0f0000 	lui	t7,0x0
    414c:	8def0000 	lw	t7,0(t7)
    4150:	3c010000 	lui	at,0x0
    4154:	c4320000 	lwc1	$f18,0(at)
    4158:	c5f00050 	lwc1	$f16,80(t7)
    415c:	46128502 	mul.s	$f20,$f16,$f18
    4160:	0c000000 	jal	0 <func_80938CD0>
    4164:	4614a300 	add.s	$f12,$f20,$f20
    4168:	3c010000 	lui	at,0x0
    416c:	c4240000 	lwc1	$f4,0(at)
    4170:	3c0143c8 	lui	at,0x43c8
    4174:	44813000 	mtc1	at,$f6
    4178:	3c0140a0 	lui	at,0x40a0
    417c:	44816000 	mtc1	at,$f12
    4180:	46003200 	add.s	$f8,$f6,$f0
    4184:	e7b6009c 	swc1	$f22,156(sp)
    4188:	e7a00090 	swc1	$f0,144(sp)
    418c:	e7a40094 	swc1	$f4,148(sp)
    4190:	0c000000 	jal	0 <func_80938CD0>
    4194:	e7a80098 	swc1	$f8,152(sp)
    4198:	4614a282 	mul.s	$f10,$f20,$f20
    419c:	c7a20090 	lwc1	$f2,144(sp)
    41a0:	e7a00054 	swc1	$f0,84(sp)
    41a4:	3c010000 	lui	at,0x0
    41a8:	46021402 	mul.s	$f16,$f2,$f2
    41ac:	c42c0000 	lwc1	$f12,0(at)
    41b0:	46105001 	sub.s	$f0,$f10,$f16
    41b4:	46000004 	sqrt.s	$f0,$f0
    41b8:	0c000000 	jal	0 <func_80938CD0>
    41bc:	e7a00058 	swc1	$f0,88(sp)
    41c0:	3c014120 	lui	at,0x4120
    41c4:	44812000 	mtc1	at,$f4
    41c8:	c7b20054 	lwc1	$f18,84(sp)
    41cc:	4600020d 	trunc.w.s	$f8,$f0
    41d0:	02402025 	move	a0,s2
    41d4:	27a50094 	addiu	a1,sp,148
    41d8:	46049180 	add.s	$f6,$f18,$f4
    41dc:	44194000 	mfc1	t9,$f8
    41e0:	8fa70058 	lw	a3,88(sp)
    41e4:	44063000 	mfc1	a2,$f6
    41e8:	0c000000 	jal	0 <func_80938CD0>
    41ec:	afb90010 	sw	t9,16(sp)
    41f0:	26100001 	addiu	s0,s0,1
    41f4:	00108400 	sll	s0,s0,0x10
    41f8:	00108403 	sra	s0,s0,0x10
    41fc:	2a010004 	slti	at,s0,4
    4200:	1420ffd1 	bnez	at,4148 <func_8093C910+0x508>
    4204:	00000000 	nop
    4208:	3c080000 	lui	t0,0x0
    420c:	8d080000 	lw	t0,0(t0)
    4210:	3c010000 	lui	at,0x0
    4214:	c42a0000 	lwc1	$f10,0(at)
    4218:	c5100050 	lwc1	$f16,80(t0)
    421c:	3c0143c8 	lui	at,0x43c8
    4220:	00008025 	move	s0,zero
    4224:	460a803e 	c.le.s	$f16,$f10
    4228:	26220024 	addiu	v0,s1,36
    422c:	45000067 	bc1f	43cc <func_8093C910+0x78c>
    4230:	00000000 	nop
    4234:	44819000 	mtc1	at,$f18
    4238:	3c0141c8 	lui	at,0x41c8
    423c:	4481a000 	mtc1	at,$f20
    4240:	e6320028 	swc1	$f18,40(s1)
    4244:	afa2004c 	sw	v0,76(sp)
    4248:	8fa2004c 	lw	v0,76(sp)
    424c:	27a90080 	addiu	t1,sp,128
    4250:	3c0141a0 	lui	at,0x41a0
    4254:	8c4b0000 	lw	t3,0(v0)
    4258:	44816000 	mtc1	at,$f12
    425c:	ad2b0000 	sw	t3,0(t1)
    4260:	8c4a0004 	lw	t2,4(v0)
    4264:	ad2a0004 	sw	t2,4(t1)
    4268:	8c4b0008 	lw	t3,8(v0)
    426c:	0c000000 	jal	0 <func_80938CD0>
    4270:	ad2b0008 	sw	t3,8(t1)
    4274:	3c0141a0 	lui	at,0x41a0
    4278:	44816000 	mtc1	at,$f12
    427c:	0c000000 	jal	0 <func_80938CD0>
    4280:	e7a00074 	swc1	$f0,116(sp)
    4284:	3c0141a0 	lui	at,0x41a0
    4288:	44816000 	mtc1	at,$f12
    428c:	0c000000 	jal	0 <func_80938CD0>
    4290:	e7a00078 	swc1	$f0,120(sp)
    4294:	c7a40080 	lwc1	$f4,128(sp)
    4298:	c7a60074 	lwc1	$f6,116(sp)
    429c:	c7aa0084 	lwc1	$f10,132(sp)
    42a0:	c7b00078 	lwc1	$f16,120(sp)
    42a4:	46062200 	add.s	$f8,$f4,$f6
    42a8:	c7a40088 	lwc1	$f4,136(sp)
    42ac:	3c014120 	lui	at,0x4120
    42b0:	46105480 	add.s	$f18,$f10,$f16
    42b4:	44816000 	mtc1	at,$f12
    42b8:	e7a0007c 	swc1	$f0,124(sp)
    42bc:	46002180 	add.s	$f6,$f4,$f0
    42c0:	e7a80080 	swc1	$f8,128(sp)
    42c4:	e7b20084 	swc1	$f18,132(sp)
    42c8:	e7b60068 	swc1	$f22,104(sp)
    42cc:	e7a60088 	swc1	$f6,136(sp)
    42d0:	e7b6006c 	swc1	$f22,108(sp)
    42d4:	0c000000 	jal	0 <func_80938CD0>
    42d8:	e7b60070 	swc1	$f22,112(sp)
    42dc:	c7aa0074 	lwc1	$f10,116(sp)
    42e0:	46140200 	add.s	$f8,$f0,$f20
    42e4:	02402025 	move	a0,s2
    42e8:	27a50080 	addiu	a1,sp,128
    42ec:	4616503c 	c.lt.s	$f10,$f22
    42f0:	e7a80010 	swc1	$f8,16(sp)
    42f4:	27a60074 	addiu	a2,sp,116
    42f8:	27a70068 	addiu	a3,sp,104
    42fc:	45000002 	bc1f	4308 <func_8093C910+0x6c8>
    4300:	00006025 	move	t4,zero
    4304:	240c0001 	li	t4,1
    4308:	0c000000 	jal	0 <func_80938CD0>
    430c:	afac0014 	sw	t4,20(sp)
    4310:	26100001 	addiu	s0,s0,1
    4314:	00108400 	sll	s0,s0,0x10
    4318:	00108403 	sra	s0,s0,0x10
    431c:	2a010032 	slti	at,s0,50
    4320:	5420ffca 	bnezl	at,424c <func_8093C910+0x60c>
    4324:	8fa2004c 	lw	v0,76(sp)
    4328:	8e2f0004 	lw	t7,4(s1)
    432c:	240d0001 	li	t5,1
    4330:	240e0001 	li	t6,1
    4334:	35f80001 	ori	t8,t7,0x1
    4338:	a62d0440 	sh	t5,1088(s1)
    433c:	a22e0564 	sb	t6,1380(s1)
    4340:	ae380004 	sw	t8,4(s1)
    4344:	a62000b6 	sh	zero,182(s1)
    4348:	3c040000 	lui	a0,0x0
    434c:	8c840000 	lw	a0,0(a0)
    4350:	0c000000 	jal	0 <func_80938CD0>
    4354:	02402825 	move	a1,s2
    4358:	3c040000 	lui	a0,0x0
    435c:	8c840000 	lw	a0,0(a0)
    4360:	0c000000 	jal	0 <func_80938CD0>
    4364:	02402825 	move	a1,s2
    4368:	4405b000 	mfc1	a1,$f22
    436c:	0c000000 	jal	0 <func_80938CD0>
    4370:	02202025 	move	a0,s1
    4374:	3c100604 	lui	s0,0x604
    4378:	26108e2c 	addiu	s0,s0,-29140
    437c:	4406b000 	mfc1	a2,$f22
    4380:	02002825 	move	a1,s0
    4384:	0c000000 	jal	0 <func_80938CD0>
    4388:	26240568 	addiu	a0,s1,1384
    438c:	0c000000 	jal	0 <func_80938CD0>
    4390:	02002025 	move	a0,s0
    4394:	44828000 	mtc1	v0,$f16
    4398:	24190032 	li	t9,50
    439c:	a6390178 	sh	t9,376(s1)
    43a0:	468084a0 	cvt.s.w	$f18,$f16
    43a4:	02402025 	move	a0,s2
    43a8:	02202825 	move	a1,s1
    43ac:	24060002 	li	a2,2
    43b0:	0c000000 	jal	0 <func_80938CD0>
    43b4:	e63201a4 	swc1	$f18,420(s1)
    43b8:	02202025 	move	a0,s1
    43bc:	0c000000 	jal	0 <func_80938CD0>
    43c0:	2405390d 	li	a1,14605
    43c4:	0c000000 	jal	0 <func_80938CD0>
    43c8:	2404001b 	li	a0,27
    43cc:	3c020000 	lui	v0,0x0
    43d0:	8c420000 	lw	v0,0(v0)
    43d4:	3c080000 	lui	t0,0x0
    43d8:	3c090000 	lui	t1,0x0
    43dc:	c4400050 	lwc1	$f0,80(v0)
    43e0:	3c0a0000 	lui	t2,0x0
    43e4:	3c0b0000 	lui	t3,0x0
    43e8:	e4400058 	swc1	$f0,88(v0)
    43ec:	8d080000 	lw	t0,0(t0)
    43f0:	e5000054 	swc1	$f0,84(t0)
    43f4:	8d290000 	lw	t1,0(t1)
    43f8:	e5200058 	swc1	$f0,88(t1)
    43fc:	8d4a0000 	lw	t2,0(t2)
    4400:	e5400054 	swc1	$f0,84(t2)
    4404:	8d6b0000 	lw	t3,0(t3)
    4408:	100000b7 	b	46e8 <func_8093C910+0xaa8>
    440c:	e5600050 	swc1	$f0,80(t3)
    4410:	02002025 	move	a0,s0
    4414:	0c000000 	jal	0 <func_80938CD0>
    4418:	8e2501a4 	lw	a1,420(s1)
    441c:	10400005 	beqz	v0,4434 <func_8093C910+0x7f4>
    4420:	02002025 	move	a0,s0
    4424:	3c050603 	lui	a1,0x603
    4428:	24a52bf8 	addiu	a1,a1,11256
    442c:	0c000000 	jal	0 <func_80938CD0>
    4430:	3c06c170 	lui	a2,0xc170
    4434:	240cffff 	li	t4,-1
    4438:	3c010000 	lui	at,0x0
    443c:	a02c0000 	sb	t4,0(at)
    4440:	3c010001 	lui	at,0x1
    4444:	00320821 	addu	at,at,s2
    4448:	240d0004 	li	t5,4
    444c:	a02d0ae1 	sb	t5,2785(at)
    4450:	3c010001 	lui	at,0x1
    4454:	34210afc 	ori	at,at,0xafc
    4458:	4405a000 	mfc1	a1,$f20
    445c:	4406a000 	mfc1	a2,$f20
    4460:	3c073dcc 	lui	a3,0x3dcc
    4464:	34e7cccd 	ori	a3,a3,0xcccd
    4468:	0c000000 	jal	0 <func_80938CD0>
    446c:	02412021 	addu	a0,s2,at
    4470:	0c000000 	jal	0 <func_80938CD0>
    4474:	26240568 	addiu	a0,s1,1384
    4478:	3c053be5 	lui	a1,0x3be5
    447c:	4406a000 	mfc1	a2,$f20
    4480:	3c073a37 	lui	a3,0x3a37
    4484:	34e78033 	ori	a3,a3,0x8033
    4488:	34a56040 	ori	a1,a1,0x6040
    448c:	0c000000 	jal	0 <func_80938CD0>
    4490:	26240050 	addiu	a0,s1,80
    4494:	c6200050 	lwc1	$f0,80(s1)
    4498:	862e0178 	lh	t6,376(s1)
    449c:	24010001 	li	at,1
    44a0:	e6200058 	swc1	$f0,88(s1)
    44a4:	15c10026 	bne	t6,at,4540 <func_8093C910+0x900>
    44a8:	e6200054 	swc1	$f0,84(s1)
    44ac:	8fa700a0 	lw	a3,160(sp)
    44b0:	3c014370 	lui	at,0x4370
    44b4:	44812000 	mtc1	at,$f4
    44b8:	240f0002 	li	t7,2
    44bc:	24180041 	li	t8,65
    44c0:	2419005a 	li	t9,90
    44c4:	24080032 	li	t0,50
    44c8:	a62f05fa 	sh	t7,1530(s1)
    44cc:	e636069c 	swc1	$f22,1692(s1)
    44d0:	a638017a 	sh	t8,378(s1)
    44d4:	a639017c 	sh	t9,380(s1)
    44d8:	a628017e 	sh	t0,382(s1)
    44dc:	3c014387 	lui	at,0x4387
    44e0:	24098000 	li	t1,-32768
    44e4:	44813000 	mtc1	at,$f6
    44e8:	a4e900b6 	sh	t1,182(a3)
    44ec:	84ea00b6 	lh	t2,182(a3)
    44f0:	3c014391 	lui	at,0x4391
    44f4:	44814000 	mtc1	at,$f8
    44f8:	3c01435e 	lui	at,0x435e
    44fc:	44815000 	mtc1	at,$f10
    4500:	e4f60024 	swc1	$f22,36(a3)
    4504:	e4e40028 	swc1	$f4,40(a3)
    4508:	e4e6002c 	swc1	$f6,44(a3)
    450c:	a4ea0032 	sh	t2,50(a3)
    4510:	e6360624 	swc1	$f22,1572(s1)
    4514:	e6280628 	swc1	$f8,1576(s1)
    4518:	e62a062c 	swc1	$f10,1580(s1)
    451c:	c4f00024 	lwc1	$f16,36(a3)
    4520:	3c014258 	lui	at,0x4258
    4524:	44812000 	mtc1	at,$f4
    4528:	e6300630 	swc1	$f16,1584(s1)
    452c:	c4f20028 	lwc1	$f18,40(a3)
    4530:	46049180 	add.s	$f6,$f18,$f4
    4534:	e6260634 	swc1	$f6,1588(s1)
    4538:	c4e8002c 	lwc1	$f8,44(a3)
    453c:	e6280638 	swc1	$f8,1592(s1)
    4540:	8623017e 	lh	v1,382(s1)
    4544:	24010013 	li	at,19
    4548:	8fa700a0 	lw	a3,160(sp)
    454c:	14610006 	bne	v1,at,4568 <func_8093C910+0x928>
    4550:	02402025 	move	a0,s2
    4554:	02202825 	move	a1,s1
    4558:	0c000000 	jal	0 <func_80938CD0>
    455c:	24060005 	li	a2,5
    4560:	8623017e 	lh	v1,382(s1)
    4564:	8fa700a0 	lw	a3,160(sp)
    4568:	24010010 	li	at,16
    456c:	14610008 	bne	v1,at,4590 <func_8093C910+0x950>
    4570:	00000000 	nop
    4574:	8ceb0678 	lw	t3,1656(a3)
    4578:	00e02025 	move	a0,a3
    457c:	95650092 	lhu	a1,146(t3)
    4580:	24a56816 	addiu	a1,a1,26646
    4584:	0c000000 	jal	0 <func_80938CD0>
    4588:	30a5ffff 	andi	a1,a1,0xffff
    458c:	8623017e 	lh	v1,382(s1)
    4590:	1060000c 	beqz	v1,45c4 <func_8093C910+0x984>
    4594:	28610014 	slti	at,v1,20
    4598:	1020000a 	beqz	at,45c4 <func_8093C910+0x984>
    459c:	240c0001 	li	t4,1
    45a0:	3c063e4c 	lui	a2,0x3e4c
    45a4:	a22c05f9 	sb	t4,1529(s1)
    45a8:	34c6cccd 	ori	a2,a2,0xcccd
    45ac:	2624062c 	addiu	a0,s1,1580
    45b0:	3c054372 	lui	a1,0x4372
    45b4:	0c000000 	jal	0 <func_80938CD0>
    45b8:	3c0742c8 	lui	a3,0x42c8
    45bc:	10000003 	b	45cc <func_8093C910+0x98c>
    45c0:	862d017a 	lh	t5,378(s1)
    45c4:	a22005f9 	sb	zero,1529(s1)
    45c8:	862d017a 	lh	t5,378(s1)
    45cc:	24020008 	li	v0,8
    45d0:	240439bb 	li	a0,14779
    45d4:	544d0004 	bnel	v0,t5,45e8 <func_8093C910+0x9a8>
    45d8:	8622017c 	lh	v0,380(s1)
    45dc:	0c000000 	jal	0 <func_80938CD0>
    45e0:	a6220162 	sh	v0,354(s1)
    45e4:	8622017c 	lh	v0,380(s1)
    45e8:	24010004 	li	at,4
    45ec:	240e0005 	li	t6,5
    45f0:	14410007 	bne	v0,at,4610 <func_8093C910+0x9d0>
    45f4:	02402025 	move	a0,s2
    45f8:	3c010000 	lui	at,0x0
    45fc:	a0200000 	sb	zero,0(at)
    4600:	3c010001 	lui	at,0x1
    4604:	00320821 	addu	at,at,s2
    4608:	a02e0ae2 	sb	t6,2786(at)
    460c:	8622017c 	lh	v0,380(s1)
    4610:	24010001 	li	at,1
    4614:	14410034 	bne	v0,at,46e8 <func_8093C910+0xaa8>
    4618:	00002825 	move	a1,zero
    461c:	264f1d64 	addiu	t7,s2,7524
    4620:	2638060c 	addiu	t8,s1,1548
    4624:	afb80048 	sw	t8,72(sp)
    4628:	afaf004c 	sw	t7,76(sp)
    462c:	0c000000 	jal	0 <func_80938CD0>
    4630:	26300600 	addiu	s0,s1,1536
    4634:	8e080000 	lw	t0,0(s0)
    4638:	02402025 	move	a0,s2
    463c:	00003025 	move	a2,zero
    4640:	ac48005c 	sw	t0,92(v0)
    4644:	8e190004 	lw	t9,4(s0)
    4648:	ac590060 	sw	t9,96(v0)
    464c:	8e080008 	lw	t0,8(s0)
    4650:	ac480064 	sw	t0,100(v0)
    4654:	8e0a0000 	lw	t2,0(s0)
    4658:	ac4a0074 	sw	t2,116(v0)
    465c:	8e090004 	lw	t1,4(s0)
    4660:	ac490078 	sw	t1,120(v0)
    4664:	8e0a0008 	lw	t2,8(s0)
    4668:	ac4a007c 	sw	t2,124(v0)
    466c:	8fab0048 	lw	t3,72(sp)
    4670:	8d6d0000 	lw	t5,0(t3)
    4674:	ac4d0050 	sw	t5,80(v0)
    4678:	8d6c0004 	lw	t4,4(t3)
    467c:	ac4c0054 	sw	t4,84(v0)
    4680:	8d6d0008 	lw	t5,8(t3)
    4684:	ac4d0058 	sw	t5,88(v0)
    4688:	0c000000 	jal	0 <func_80938CD0>
    468c:	862505fc 	lh	a1,1532(s1)
    4690:	a62005fc 	sh	zero,1532(s1)
    4694:	862e05fc 	lh	t6,1532(s1)
    4698:	02402025 	move	a0,s2
    469c:	a62e05fa 	sh	t6,1530(s1)
    46a0:	0c000000 	jal	0 <func_80938CD0>
    46a4:	8fa5004c 	lw	a1,76(sp)
    46a8:	02402025 	move	a0,s2
    46ac:	02202825 	move	a1,s1
    46b0:	0c000000 	jal	0 <func_80938CD0>
    46b4:	24060007 	li	a2,7
    46b8:	3c0f0000 	lui	t7,0x0
    46bc:	a6200154 	sh	zero,340(s1)
    46c0:	25ef0000 	addiu	t7,t7,0
    46c4:	8df90000 	lw	t9,0(t7)
    46c8:	02202025 	move	a0,s1
    46cc:	02402825 	move	a1,s2
    46d0:	ae3904b0 	sw	t9,1200(s1)
    46d4:	8df80004 	lw	t8,4(t7)
    46d8:	ae3804b4 	sw	t8,1204(s1)
    46dc:	8df90008 	lw	t9,8(t7)
    46e0:	0c000000 	jal	0 <func_80938CD0>
    46e4:	ae3904b8 	sw	t9,1208(s1)
    46e8:	8fbf003c 	lw	ra,60(sp)
    46ec:	d7b40020 	ldc1	$f20,32(sp)
    46f0:	d7b60028 	ldc1	$f22,40(sp)
    46f4:	8fb00030 	lw	s0,48(sp)
    46f8:	8fb10034 	lw	s1,52(sp)
    46fc:	8fb20038 	lw	s2,56(sp)
    4700:	03e00008 	jr	ra
    4704:	27bd00c0 	addiu	sp,sp,192

00004708 <func_8093D3D8>:
    4708:	27bdffe8 	addiu	sp,sp,-24
    470c:	afa5001c 	sw	a1,28(sp)
    4710:	3c0e0000 	lui	t6,0x0
    4714:	afbf0014 	sw	ra,20(sp)
    4718:	25ce0000 	addiu	t6,t6,0
    471c:	00803825 	move	a3,a0
    4720:	ac8e014c 	sw	t6,332(a0)
    4724:	3c050600 	lui	a1,0x600
    4728:	24a504a4 	addiu	a1,a1,1188
    472c:	afa70018 	sw	a3,24(sp)
    4730:	24840568 	addiu	a0,a0,1384
    4734:	0c000000 	jal	0 <func_80938CD0>
    4738:	3c06c040 	lui	a2,0xc040
    473c:	8faf0018 	lw	t7,24(sp)
    4740:	3c0141a0 	lui	at,0x41a0
    4744:	44816000 	mtc1	at,$f12
    4748:	0c000000 	jal	0 <func_80938CD0>
    474c:	a1e005f8 	sb	zero,1528(t7)
    4750:	4600010d 	trunc.w.s	$f4,$f0
    4754:	8fa80018 	lw	t0,24(sp)
    4758:	44192000 	mfc1	t9,$f4
    475c:	00000000 	nop
    4760:	a5190152 	sh	t9,338(t0)
    4764:	8fbf0014 	lw	ra,20(sp)
    4768:	27bd0018 	addiu	sp,sp,24
    476c:	03e00008 	jr	ra
    4770:	00000000 	nop

00004774 <func_8093D444>:
    4774:	27bdffd8 	addiu	sp,sp,-40
    4778:	afbf0024 	sw	ra,36(sp)
    477c:	afb00020 	sw	s0,32(sp)
    4780:	f7b40018 	sdc1	$f20,24(sp)
    4784:	afa5002c 	sw	a1,44(sp)
    4788:	848e0178 	lh	t6,376(a0)
    478c:	00808025 	move	s0,a0
    4790:	55c00004 	bnezl	t6,47a4 <func_8093D444+0x30>
    4794:	c60404c8 	lwc1	$f4,1224(s0)
    4798:	0c000000 	jal	0 <func_80938CD0>
    479c:	24840568 	addiu	a0,a0,1384
    47a0:	c60404c8 	lwc1	$f4,1224(s0)
    47a4:	260400b6 	addiu	a0,s0,182
    47a8:	86050164 	lh	a1,356(s0)
    47ac:	4600218d 	trunc.w.s	$f6,$f4
    47b0:	24060005 	li	a2,5
    47b4:	44073000 	mfc1	a3,$f6
    47b8:	00000000 	nop
    47bc:	00073c00 	sll	a3,a3,0x10
    47c0:	0c000000 	jal	0 <func_80938CD0>
    47c4:	00073c03 	sra	a3,a3,0x10
    47c8:	3c013f80 	lui	at,0x3f80
    47cc:	4481a000 	mtc1	at,$f20
    47d0:	260404c8 	addiu	a0,s0,1224
    47d4:	3c0546a0 	lui	a1,0x46a0
    47d8:	4406a000 	mfc1	a2,$f20
    47dc:	0c000000 	jal	0 <func_80938CD0>
    47e0:	3c07447a 	lui	a3,0x447a
    47e4:	3c180000 	lui	t8,0x0
    47e8:	8f180000 	lw	t8,0(t8)
    47ec:	260401d4 	addiu	a0,s0,468
    47f0:	3c0542c8 	lui	a1,0x42c8
    47f4:	87190152 	lh	t9,338(t8)
    47f8:	2b21008d 	slti	at,t9,141
    47fc:	5420001b 	bnezl	at,486c <func_8093D444+0xf8>
    4800:	8fbf0024 	lw	ra,36(sp)
    4804:	4406a000 	mfc1	a2,$f20
    4808:	0c000000 	jal	0 <func_80938CD0>
    480c:	3c074170 	lui	a3,0x4170
    4810:	4406a000 	mfc1	a2,$f20
    4814:	260401d8 	addiu	a0,s0,472
    4818:	3c05437f 	lui	a1,0x437f
    481c:	0c000000 	jal	0 <func_80938CD0>
    4820:	3c074170 	lui	a3,0x4170
    4824:	4406a000 	mfc1	a2,$f20
    4828:	260401dc 	addiu	a0,s0,476
    482c:	3c05437f 	lui	a1,0x437f
    4830:	0c000000 	jal	0 <func_80938CD0>
    4834:	3c074170 	lui	a3,0x4170
    4838:	3c054454 	lui	a1,0x4454
    483c:	4406a000 	mfc1	a2,$f20
    4840:	34a58000 	ori	a1,a1,0x8000
    4844:	260401e0 	addiu	a0,s0,480
    4848:	0c000000 	jal	0 <func_80938CD0>
    484c:	3c074170 	lui	a3,0x4170
    4850:	3c054489 	lui	a1,0x4489
    4854:	4406a000 	mfc1	a2,$f20
    4858:	34a56000 	ori	a1,a1,0x6000
    485c:	260401e4 	addiu	a0,s0,484
    4860:	0c000000 	jal	0 <func_80938CD0>
    4864:	3c074170 	lui	a3,0x4170
    4868:	8fbf0024 	lw	ra,36(sp)
    486c:	d7b40018 	ldc1	$f20,24(sp)
    4870:	8fb00020 	lw	s0,32(sp)
    4874:	03e00008 	jr	ra
    4878:	27bd0028 	addiu	sp,sp,40

0000487c <func_8093D54C>:
    487c:	afa50004 	sw	a1,4(sp)
    4880:	8c8f0004 	lw	t7,4(a0)
    4884:	3c01c4fa 	lui	at,0xc4fa
    4888:	44812000 	mtc1	at,$f4
    488c:	3c0e0000 	lui	t6,0x0
    4890:	2401fffe 	li	at,-2
    4894:	25ce0000 	addiu	t6,t6,0
    4898:	01e1c024 	and	t8,t7,at
    489c:	ac8e014c 	sw	t6,332(a0)
    48a0:	a0800564 	sb	zero,1380(a0)
    48a4:	ac980004 	sw	t8,4(a0)
    48a8:	03e00008 	jr	ra
    48ac:	e4840028 	swc1	$f4,40(a0)

000048b0 <func_8093D580>:
    48b0:	afa40000 	sw	a0,0(sp)
    48b4:	03e00008 	jr	ra
    48b8:	afa50004 	sw	a1,4(sp)

000048bc <func_8093D58C>:
    48bc:	afa50004 	sw	a1,4(sp)
    48c0:	8c8f0004 	lw	t7,4(a0)
    48c4:	3c01c4fa 	lui	at,0xc4fa
    48c8:	44812000 	mtc1	at,$f4
    48cc:	3c0e0000 	lui	t6,0x0
    48d0:	2401fffe 	li	at,-2
    48d4:	25ce0000 	addiu	t6,t6,0
    48d8:	01e1c024 	and	t8,t7,at
    48dc:	ac8e014c 	sw	t6,332(a0)
    48e0:	a0800564 	sb	zero,1380(a0)
    48e4:	ac980004 	sw	t8,4(a0)
    48e8:	03e00008 	jr	ra
    48ec:	e4840028 	swc1	$f4,40(a0)

000048f0 <func_8093D5C0>:
    48f0:	27bdff60 	addiu	sp,sp,-160
    48f4:	afbf0034 	sw	ra,52(sp)
    48f8:	afb30030 	sw	s3,48(sp)
    48fc:	afb2002c 	sw	s2,44(sp)
    4900:	afb10028 	sw	s1,40(sp)
    4904:	afb00024 	sw	s0,36(sp)
    4908:	afa500a4 	sw	a1,164(sp)
    490c:	a3a0009f 	sb	zero,159(sp)
    4910:	848205fe 	lh	v0,1534(a0)
    4914:	00808825 	move	s1,a0
    4918:	8cb01c44 	lw	s0,7236(a1)
    491c:	284100dd 	slti	at,v0,221
    4920:	14200006 	bnez	at,493c <func_8093D5C0+0x4c>
    4924:	28410276 	slti	at,v0,630
    4928:	50200005 	beqzl	at,4940 <func_8093D5C0+0x50>
    492c:	241300b4 	li	s3,180
    4930:	0c000000 	jal	0 <func_80938CD0>
    4934:	24043120 	li	a0,12576
    4938:	862205fe 	lh	v0,1534(s1)
    493c:	241300b4 	li	s3,180
    4940:	5662000d 	bnel	s3,v0,4978 <func_8093D5C0+0x88>
    4944:	963805fa 	lhu	t8,1530(s1)
    4948:	3c120000 	lui	s2,0x0
    494c:	26520000 	addiu	s2,s2,0
    4950:	02402025 	move	a0,s2
    4954:	0c000000 	jal	0 <func_80938CD0>
    4958:	240539b0 	li	a1,14768
    495c:	02402025 	move	a0,s2
    4960:	0c000000 	jal	0 <func_80938CD0>
    4964:	240539b1 	li	a1,14769
    4968:	0c000000 	jal	0 <func_80938CD0>
    496c:	24040061 	li	a0,97
    4970:	862205fe 	lh	v0,1534(s1)
    4974:	963805fa 	lhu	t8,1530(s1)
    4978:	244f0001 	addiu	t7,v0,1
    497c:	a62f05fe 	sh	t7,1534(s1)
    4980:	2f010015 	sltiu	at,t8,21
    4984:	102005a5 	beqz	at,601c <L8093ECEC>
    4988:	0018c080 	sll	t8,t8,0x2
    498c:	3c010000 	lui	at,0x0
    4990:	00380821 	addu	at,at,t8
    4994:	8c380000 	lw	t8,0(at)
    4998:	03000008 	jr	t8
    499c:	00000000 	nop

000049a0 <L8093D670>:
    49a0:	a62005fe 	sh	zero,1534(s1)
    49a4:	c6000024 	lwc1	$f0,36(s0)
    49a8:	c602002c 	lwc1	$f2,44(s0)
    49ac:	3c010000 	lui	at,0x0
    49b0:	46000102 	mul.s	$f4,$f0,$f0
    49b4:	c42a0000 	lwc1	$f10,0(at)
    49b8:	46021182 	mul.s	$f6,$f2,$f2
    49bc:	46062200 	add.s	$f8,$f4,$f6
    49c0:	460a403c 	c.lt.s	$f8,$f10
    49c4:	00000000 	nop
    49c8:	45020595 	bc1fl	6020 <L8093ECEC+0x4>
    49cc:	862505fc 	lh	a1,1532(s1)
    49d0:	44800000 	mtc1	zero,$f0
    49d4:	24190001 	li	t9,1
    49d8:	e600002c 	swc1	$f0,44(s0)
    49dc:	e6000024 	swc1	$f0,36(s0)
    49e0:	a63905fa 	sh	t9,1530(s1)
    49e4:	8fa400a4 	lw	a0,164(sp)
    49e8:	0c000000 	jal	0 <func_80938CD0>
    49ec:	24851d64 	addiu	a1,a0,7524
    49f0:	8fa400a4 	lw	a0,164(sp)
    49f4:	02202825 	move	a1,s1
    49f8:	0c000000 	jal	0 <func_80938CD0>
    49fc:	24060039 	li	a2,57
    4a00:	0c000000 	jal	0 <func_80938CD0>
    4a04:	8fa400a4 	lw	a0,164(sp)
    4a08:	a62205fc 	sh	v0,1532(s1)
    4a0c:	8fa400a4 	lw	a0,164(sp)
    4a10:	00002825 	move	a1,zero
    4a14:	0c000000 	jal	0 <func_80938CD0>
    4a18:	24060001 	li	a2,1
    4a1c:	8fa400a4 	lw	a0,164(sp)
    4a20:	862505fc 	lh	a1,1532(s1)
    4a24:	0c000000 	jal	0 <func_80938CD0>
    4a28:	24060007 	li	a2,7
    4a2c:	44809000 	mtc1	zero,$f18
    4a30:	3c0143e1 	lui	at,0x43e1
    4a34:	44818000 	mtc1	at,$f16
    4a38:	3c014461 	lui	at,0x4461
    4a3c:	44817000 	mtc1	at,$f14
    4a40:	3c0143af 	lui	at,0x43af
    4a44:	44816000 	mtc1	at,$f12
    4a48:	3c010000 	lui	at,0x0
    4a4c:	c42a0000 	lwc1	$f10,0(at)
    4a50:	44804000 	mtc1	zero,$f8
    4a54:	3c014348 	lui	at,0x4348
    4a58:	44813000 	mtc1	at,$f6
    4a5c:	46008105 	abs.s	$f4,$f16
    4a60:	460c7081 	sub.s	$f2,$f14,$f12
    4a64:	e6260608 	swc1	$f6,1544(s1)
    4a68:	c6260608 	lwc1	$f6,1544(s1)
    4a6c:	e62a0674 	swc1	$f10,1652(s1)
    4a70:	c62a0674 	lwc1	$f10,1652(s1)
    4a74:	46001085 	abs.s	$f2,$f2
    4a78:	3c014387 	lui	at,0x4387
    4a7c:	46065181 	sub.s	$f6,$f10,$f6
    4a80:	44815000 	mtc1	at,$f10
    4a84:	e632060c 	swc1	$f18,1548(s1)
    4a88:	c620060c 	lwc1	$f0,1548(s1)
    4a8c:	e62a0610 	swc1	$f10,1552(s1)
    4a90:	c62a0610 	lwc1	$f10,1552(s1)
    4a94:	46003185 	abs.s	$f6,$f6
    4a98:	e6320684 	swc1	$f18,1668(s1)
    4a9c:	3c014370 	lui	at,0x4370
    4aa0:	e6320614 	swc1	$f18,1556(s1)
    4aa4:	44819000 	mtc1	at,$f18
    4aa8:	3c01430c 	lui	at,0x430c
    4aac:	e6280600 	swc1	$f8,1536(s1)
    4ab0:	44814000 	mtc1	at,$f8
    4ab4:	e6320688 	swc1	$f18,1672(s1)
    4ab8:	c6320684 	lwc1	$f18,1668(s1)
    4abc:	e628068c 	swc1	$f8,1676(s1)
    4ac0:	c6280688 	lwc1	$f8,1672(s1)
    4ac4:	46009001 	sub.s	$f0,$f18,$f0
    4ac8:	c632068c 	lwc1	$f18,1676(s1)
    4acc:	e62c0604 	swc1	$f12,1540(s1)
    4ad0:	c62c0614 	lwc1	$f12,1556(s1)
    4ad4:	46000005 	abs.s	$f0,$f0
    4ad8:	460a4281 	sub.s	$f10,$f8,$f10
    4adc:	e630066c 	swc1	$f16,1644(s1)
    4ae0:	e62e0670 	swc1	$f14,1648(s1)
    4ae4:	e6240654 	swc1	$f4,1620(s1)
    4ae8:	46005285 	abs.s	$f10,$f10
    4aec:	460c9301 	sub.s	$f12,$f18,$f12
    4af0:	e6220658 	swc1	$f2,1624(s1)
    4af4:	e626065c 	swc1	$f6,1628(s1)
    4af8:	e6200660 	swc1	$f0,1632(s1)
    4afc:	46006305 	abs.s	$f12,$f12
    4b00:	e62a0664 	swc1	$f10,1636(s1)
    4b04:	e62c0668 	swc1	$f12,1640(s1)
    4b08:	3c010000 	lui	at,0x0
    4b0c:	c42c0000 	lwc1	$f12,0(at)
    4b10:	a6200150 	sh	zero,336(s1)
    4b14:	10000541 	b	601c <L8093ECEC>
    4b18:	e62c06a0 	swc1	$f12,1696(s1)

00004b1c <L8093D7EC>:
    4b1c:	24090001 	li	t1,1
    4b20:	a3a9009f 	sb	t1,159(sp)
    4b24:	862a0150 	lh	t2,336(s1)
    4b28:	2401001e 	li	at,30
    4b2c:	8fa400a4 	lw	a0,164(sp)
    4b30:	15410003 	bne	t2,at,4b40 <L8093D7EC+0x24>
    4b34:	24056048 	li	a1,24648
    4b38:	0c000000 	jal	0 <func_80938CD0>
    4b3c:	00003025 	move	a2,zero
    4b40:	3c053c23 	lui	a1,0x3c23
    4b44:	3c0738d1 	lui	a3,0x38d1
    4b48:	34e7b717 	ori	a3,a3,0xb717
    4b4c:	34a5d70a 	ori	a1,a1,0xd70a
    4b50:	2624069c 	addiu	a0,s1,1692
    4b54:	0c000000 	jal	0 <func_80938CD0>
    4b58:	3c063f80 	lui	a2,0x3f80
    4b5c:	86230150 	lh	v1,336(s1)
    4b60:	8fab00a4 	lw	t3,164(sp)
    4b64:	3c053f80 	lui	a1,0x3f80
    4b68:	28610065 	slti	at,v1,101
    4b6c:	1420000c 	bnez	at,4ba0 <L8093D7EC+0x84>
    4b70:	3c063f80 	lui	a2,0x3f80
    4b74:	3c010001 	lui	at,0x1
    4b78:	002b0821 	addu	at,at,t3
    4b7c:	a0200ae1 	sb	zero,2785(at)
    4b80:	8fa400a4 	lw	a0,164(sp)
    4b84:	3c010001 	lui	at,0x1
    4b88:	34210afc 	ori	at,at,0xafc
    4b8c:	3c073cf5 	lui	a3,0x3cf5
    4b90:	34e7c28f 	ori	a3,a3,0xc28f
    4b94:	0c000000 	jal	0 <func_80938CD0>
    4b98:	00812021 	addu	a0,a0,at
    4b9c:	86230150 	lh	v1,336(s1)
    4ba0:	56630005 	bnel	s3,v1,4bb8 <L8093D7EC+0x9c>
    4ba4:	286100b5 	slti	at,v1,181
    4ba8:	0c000000 	jal	0 <func_80938CD0>
    4bac:	2404390c 	li	a0,14604
    4bb0:	86230150 	lh	v1,336(s1)
    4bb4:	286100b5 	slti	at,v1,181
    4bb8:	14200518 	bnez	at,601c <L8093ECEC>
    4bbc:	262404d8 	addiu	a0,s1,1240
    4bc0:	3c010000 	lui	at,0x0
    4bc4:	c4280000 	lwc1	$f8,0(at)
    4bc8:	3c05437f 	lui	a1,0x437f
    4bcc:	3c063f80 	lui	a2,0x3f80
    4bd0:	3c0740a0 	lui	a3,0x40a0
    4bd4:	0c000000 	jal	0 <func_80938CD0>
    4bd8:	e62804e0 	swc1	$f8,1248(s1)
    4bdc:	862c0150 	lh	t4,336(s1)
    4be0:	3c120000 	lui	s2,0x0
    4be4:	26520000 	addiu	s2,s2,0
    4be8:	298100ec 	slti	at,t4,236
    4bec:	1420050b 	bnez	at,601c <L8093ECEC>
    4bf0:	24100001 	li	s0,1
    4bf4:	240d0002 	li	t5,2
    4bf8:	a62d05fa 	sh	t5,1530(s1)
    4bfc:	8e4e0000 	lw	t6,0(s2)
    4c00:	3c050600 	lui	a1,0x600
    4c04:	24a504a4 	addiu	a1,a1,1188
    4c08:	a1d00564 	sb	s0,1380(t6)
    4c0c:	8e440000 	lw	a0,0(s2)
    4c10:	24060000 	li	a2,0
    4c14:	0c000000 	jal	0 <func_80938CD0>
    4c18:	24840568 	addiu	a0,a0,1384
    4c1c:	3c014382 	lui	at,0x4382
    4c20:	44811000 	mtc1	at,$f2
    4c24:	3c01c1f0 	lui	at,0xc1f0
    4c28:	44816000 	mtc1	at,$f12
    4c2c:	44805000 	mtc1	zero,$f10
    4c30:	8e4f0000 	lw	t7,0(s2)
    4c34:	3c014416 	lui	at,0x4416
    4c38:	44817000 	mtc1	at,$f14
    4c3c:	3c0142a0 	lui	at,0x42a0
    4c40:	e5ea0024 	swc1	$f10,36(t7)
    4c44:	8e580000 	lw	t8,0(s2)
    4c48:	44812000 	mtc1	at,$f4
    4c4c:	24088000 	li	t0,-32768
    4c50:	3c0143eb 	lui	at,0x43eb
    4c54:	e7040028 	swc1	$f4,40(t8)
    4c58:	8e590000 	lw	t9,0(s2)
    4c5c:	44813000 	mtc1	at,$f6
    4c60:	3c014387 	lui	at,0x4387
    4c64:	e72e002c 	swc1	$f14,44(t9)
    4c68:	8e490000 	lw	t1,0(s2)
    4c6c:	44804000 	mtc1	zero,$f8
    4c70:	44815000 	mtc1	at,$f10
    4c74:	a5280032 	sh	t0,50(t1)
    4c78:	8e500000 	lw	s0,0(s2)
    4c7c:	3c053c75 	lui	a1,0x3c75
    4c80:	34a5c28e 	ori	a1,a1,0xc28e
    4c84:	860a0032 	lh	t2,50(s0)
    4c88:	a60a00b6 	sh	t2,182(s0)
    4c8c:	a6200150 	sh	zero,336(s1)
    4c90:	e6220604 	swc1	$f2,1540(s1)
    4c94:	e62c0600 	swc1	$f12,1536(s1)
    4c98:	e62e0614 	swc1	$f14,1556(s1)
    4c9c:	e6260608 	swc1	$f6,1544(s1)
    4ca0:	e628060c 	swc1	$f8,1548(s1)
    4ca4:	e62a0610 	swc1	$f10,1552(s1)
    4ca8:	0c000000 	jal	0 <func_80938CD0>
    4cac:	8e440000 	lw	a0,0(s2)
    4cb0:	100004db 	b	6020 <L8093ECEC+0x4>
    4cb4:	862505fc 	lh	a1,1532(s1)

00004cb8 <L8093D988>:
    4cb8:	3c120000 	lui	s2,0x0
    4cbc:	26520000 	addiu	s2,s2,0
    4cc0:	8e440000 	lw	a0,0(s2)
    4cc4:	0c000000 	jal	0 <func_80938CD0>
    4cc8:	24840568 	addiu	a0,a0,1384
    4ccc:	8e440000 	lw	a0,0(s2)
    4cd0:	3c063d4c 	lui	a2,0x3d4c
    4cd4:	34c6cccd 	ori	a2,a2,0xcccd
    4cd8:	3c054370 	lui	a1,0x4370
    4cdc:	3c0740a0 	lui	a3,0x40a0
    4ce0:	0c000000 	jal	0 <func_80938CD0>
    4ce4:	24840028 	addiu	a0,a0,40
    4ce8:	3c010000 	lui	at,0x0
    4cec:	c4200000 	lwc1	$f0,0(at)
    4cf0:	c6240600 	lwc1	$f4,1536(s1)
    4cf4:	c6280608 	lwc1	$f8,1544(s1)
    4cf8:	862b0150 	lh	t3,336(s1)
    4cfc:	46002181 	sub.s	$f6,$f4,$f0
    4d00:	240c0003 	li	t4,3
    4d04:	29610033 	slti	at,t3,51
    4d08:	46004280 	add.s	$f10,$f8,$f0
    4d0c:	e6260600 	swc1	$f6,1536(s1)
    4d10:	142004c2 	bnez	at,601c <L8093ECEC>
    4d14:	e62a0608 	swc1	$f10,1544(s1)
    4d18:	c6320600 	lwc1	$f18,1536(s1)
    4d1c:	44808000 	mtc1	zero,$f16
    4d20:	c62e0604 	lwc1	$f14,1540(s1)
    4d24:	c62c0608 	lwc1	$f12,1544(s1)
    4d28:	3c014382 	lui	at,0x4382
    4d2c:	44815000 	mtc1	at,$f10
    4d30:	3c01c1f0 	lui	at,0xc1f0
    4d34:	44814000 	mtc1	at,$f8
    4d38:	44803000 	mtc1	zero,$f6
    4d3c:	c624060c 	lwc1	$f4,1548(s1)
    4d40:	46124481 	sub.s	$f18,$f8,$f18
    4d44:	3c010000 	lui	at,0x0
    4d48:	c4220000 	lwc1	$f2,0(at)
    4d4c:	e628066c 	swc1	$f8,1644(s1)
    4d50:	46009485 	abs.s	$f18,$f18
    4d54:	460e5381 	sub.s	$f14,$f10,$f14
    4d58:	e62a0670 	swc1	$f10,1648(s1)
    4d5c:	e6300684 	swc1	$f16,1668(s1)
    4d60:	c6300610 	lwc1	$f16,1552(s1)
    4d64:	46007385 	abs.s	$f14,$f14
    4d68:	460c1301 	sub.s	$f12,$f2,$f12
    4d6c:	e6220674 	swc1	$f2,1652(s1)
    4d70:	a62c05fa 	sh	t4,1530(s1)
    4d74:	3c010000 	lui	at,0x0
    4d78:	c4220000 	lwc1	$f2,0(at)
    4d7c:	46006305 	abs.s	$f12,$f12
    4d80:	46043101 	sub.s	$f4,$f6,$f4
    4d84:	e6220688 	swc1	$f2,1672(s1)
    4d88:	c6220688 	lwc1	$f2,1672(s1)
    4d8c:	c6260614 	lwc1	$f6,1556(s1)
    4d90:	46002105 	abs.s	$f4,$f4
    4d94:	46101401 	sub.s	$f16,$f2,$f16
    4d98:	3c014411 	lui	at,0x4411
    4d9c:	44811000 	mtc1	at,$f2
    4da0:	44805000 	mtc1	zero,$f10
    4da4:	46008405 	abs.s	$f16,$f16
    4da8:	e622068c 	swc1	$f2,1676(s1)
    4dac:	c622068c 	lwc1	$f2,1676(s1)
    4db0:	e6320654 	swc1	$f18,1620(s1)
    4db4:	e62e0658 	swc1	$f14,1624(s1)
    4db8:	46061181 	sub.s	$f6,$f2,$f6
    4dbc:	e62c065c 	swc1	$f12,1628(s1)
    4dc0:	e6240660 	swc1	$f4,1632(s1)
    4dc4:	e6300664 	swc1	$f16,1636(s1)
    4dc8:	46003185 	abs.s	$f6,$f6
    4dcc:	e62a069c 	swc1	$f10,1692(s1)
    4dd0:	e6260668 	swc1	$f6,1640(s1)
    4dd4:	3c010000 	lui	at,0x0
    4dd8:	c4260000 	lwc1	$f6,0(at)
    4ddc:	a6200150 	sh	zero,336(s1)
    4de0:	1000048e 	b	601c <L8093ECEC>
    4de4:	e62606a0 	swc1	$f6,1696(s1)

00004de8 <L8093DAB8>:
    4de8:	3c120000 	lui	s2,0x0
    4dec:	26520000 	addiu	s2,s2,0
    4df0:	8e440000 	lw	a0,0(s2)
    4df4:	0c000000 	jal	0 <func_80938CD0>
    4df8:	24840568 	addiu	a0,a0,1384
    4dfc:	8e440000 	lw	a0,0(s2)
    4e00:	240d0001 	li	t5,1
    4e04:	3c063d4c 	lui	a2,0x3d4c
    4e08:	a3ad009f 	sb	t5,159(sp)
    4e0c:	34c6cccd 	ori	a2,a2,0xcccd
    4e10:	3c054370 	lui	a1,0x4370
    4e14:	3c0740a0 	lui	a3,0x40a0
    4e18:	0c000000 	jal	0 <func_80938CD0>
    4e1c:	24840028 	addiu	a0,a0,40
    4e20:	3c073ca3 	lui	a3,0x3ca3
    4e24:	34e7d70a 	ori	a3,a3,0xd70a
    4e28:	2624069c 	addiu	a0,s1,1692
    4e2c:	3c053f80 	lui	a1,0x3f80
    4e30:	0c000000 	jal	0 <func_80938CD0>
    4e34:	3c063f80 	lui	a2,0x3f80
    4e38:	86230150 	lh	v1,336(s1)
    4e3c:	2401001e 	li	at,30
    4e40:	8fa400a4 	lw	a0,164(sp)
    4e44:	14610004 	bne	v1,at,4e58 <L8093DAB8+0x70>
    4e48:	24056049 	li	a1,24649
    4e4c:	0c000000 	jal	0 <func_80938CD0>
    4e50:	00003025 	move	a2,zero
    4e54:	86230150 	lh	v1,336(s1)
    4e58:	28610051 	slti	at,v1,81
    4e5c:	1420046f 	bnez	at,601c <L8093ECEC>
    4e60:	240e0004 	li	t6,4
    4e64:	3c014382 	lui	at,0x4382
    4e68:	44811000 	mtc1	at,$f2
    4e6c:	3c01c2a0 	lui	at,0xc2a0
    4e70:	44816000 	mtc1	at,$f12
    4e74:	3c0143d7 	lui	at,0x43d7
    4e78:	44817000 	mtc1	at,$f14
    4e7c:	44804000 	mtc1	zero,$f8
    4e80:	a62e05fa 	sh	t6,1530(s1)
    4e84:	e6220670 	swc1	$f2,1648(s1)
    4e88:	e62c066c 	swc1	$f12,1644(s1)
    4e8c:	e62e0674 	swc1	$f14,1652(s1)
    4e90:	e6280068 	swc1	$f8,104(s1)
    4e94:	8e4f0000 	lw	t7,0(s2)
    4e98:	3c0141a0 	lui	at,0x41a0
    4e9c:	44813000 	mtc1	at,$f6
    4ea0:	c5ea0024 	lwc1	$f10,36(t7)
    4ea4:	3c010000 	lui	at,0x0
    4ea8:	3c100600 	lui	s0,0x600
    4eac:	e62a0684 	swc1	$f10,1668(s1)
    4eb0:	8e580000 	lw	t8,0(s2)
    4eb4:	26100aac 	addiu	s0,s0,2732
    4eb8:	02002825 	move	a1,s0
    4ebc:	c7040028 	lwc1	$f4,40(t8)
    4ec0:	24060000 	li	a2,0
    4ec4:	46062200 	add.s	$f8,$f4,$f6
    4ec8:	c6240600 	lwc1	$f4,1536(s1)
    4ecc:	c6260604 	lwc1	$f6,1540(s1)
    4ed0:	46046001 	sub.s	$f0,$f12,$f4
    4ed4:	e6280688 	swc1	$f8,1672(s1)
    4ed8:	8e590000 	lw	t9,0(s2)
    4edc:	c6280608 	lwc1	$f8,1544(s1)
    4ee0:	46000005 	abs.s	$f0,$f0
    4ee4:	c72a002c 	lwc1	$f10,44(t9)
    4ee8:	e6200654 	swc1	$f0,1620(s1)
    4eec:	46061001 	sub.s	$f0,$f2,$f6
    4ef0:	e62a068c 	swc1	$f10,1676(s1)
    4ef4:	c62a0684 	lwc1	$f10,1668(s1)
    4ef8:	c624060c 	lwc1	$f4,1548(s1)
    4efc:	46000005 	abs.s	$f0,$f0
    4f00:	c6260688 	lwc1	$f6,1672(s1)
    4f04:	e6200658 	swc1	$f0,1624(s1)
    4f08:	46087001 	sub.s	$f0,$f14,$f8
    4f0c:	c6280610 	lwc1	$f8,1552(s1)
    4f10:	46000005 	abs.s	$f0,$f0
    4f14:	e620065c 	swc1	$f0,1628(s1)
    4f18:	46045001 	sub.s	$f0,$f10,$f4
    4f1c:	c6240614 	lwc1	$f4,1556(s1)
    4f20:	c62a068c 	lwc1	$f10,1676(s1)
    4f24:	46000005 	abs.s	$f0,$f0
    4f28:	e6200660 	swc1	$f0,1632(s1)
    4f2c:	46083001 	sub.s	$f0,$f6,$f8
    4f30:	44803000 	mtc1	zero,$f6
    4f34:	46000005 	abs.s	$f0,$f0
    4f38:	e626069c 	swc1	$f6,1692(s1)
    4f3c:	e6200664 	swc1	$f0,1636(s1)
    4f40:	46045001 	sub.s	$f0,$f10,$f4
    4f44:	46000005 	abs.s	$f0,$f0
    4f48:	e6200668 	swc1	$f0,1640(s1)
    4f4c:	c4280000 	lwc1	$f8,0(at)
    4f50:	e62806a0 	swc1	$f8,1696(s1)
    4f54:	8e440000 	lw	a0,0(s2)
    4f58:	0c000000 	jal	0 <func_80938CD0>
    4f5c:	24840568 	addiu	a0,a0,1384
    4f60:	0c000000 	jal	0 <func_80938CD0>
    4f64:	02002025 	move	a0,s0
    4f68:	44825000 	mtc1	v0,$f10
    4f6c:	a6200150 	sh	zero,336(s1)
    4f70:	46805120 	cvt.s.w	$f4,$f10
    4f74:	10000429 	b	601c <L8093ECEC>
    4f78:	e62401a4 	swc1	$f4,420(s1)

00004f7c <L8093DC4C>:
    4f7c:	3c120000 	lui	s2,0x0
    4f80:	26520000 	addiu	s2,s2,0
    4f84:	8e440000 	lw	a0,0(s2)
    4f88:	24080001 	li	t0,1
    4f8c:	a3a8009f 	sb	t0,159(sp)
    4f90:	0c000000 	jal	0 <func_80938CD0>
    4f94:	24840568 	addiu	a0,a0,1384
    4f98:	8e490000 	lw	t1,0(s2)
    4f9c:	3c0143af 	lui	at,0x43af
    4fa0:	44818000 	mtc1	at,$f16
    4fa4:	3c0141a0 	lui	at,0x41a0
    4fa8:	44814000 	mtc1	at,$f8
    4fac:	c5260028 	lwc1	$f6,40(t1)
    4fb0:	3c063dcc 	lui	a2,0x3dcc
    4fb4:	44058000 	mfc1	a1,$f16
    4fb8:	46083280 	add.s	$f10,$f6,$f8
    4fbc:	34c6cccd 	ori	a2,a2,0xcccd
    4fc0:	8e270068 	lw	a3,104(s1)
    4fc4:	e62a0688 	swc1	$f10,1672(s1)
    4fc8:	8e440000 	lw	a0,0(s2)
    4fcc:	0c000000 	jal	0 <func_80938CD0>
    4fd0:	24840028 	addiu	a0,a0,40
    4fd4:	3c073f66 	lui	a3,0x3f66
    4fd8:	34e76666 	ori	a3,a3,0x6666
    4fdc:	26240068 	addiu	a0,s1,104
    4fe0:	3c054110 	lui	a1,0x4110
    4fe4:	0c000000 	jal	0 <func_80938CD0>
    4fe8:	3c063f80 	lui	a2,0x3f80
    4fec:	3c073ca3 	lui	a3,0x3ca3
    4ff0:	34e7d70a 	ori	a3,a3,0xd70a
    4ff4:	2624069c 	addiu	a0,s1,1692
    4ff8:	3c053f80 	lui	a1,0x3f80
    4ffc:	0c000000 	jal	0 <func_80938CD0>
    5000:	3c063f80 	lui	a2,0x3f80
    5004:	86230150 	lh	v1,336(s1)
    5008:	2861001e 	slti	at,v1,30
    500c:	142000f5 	bnez	at,53e4 <L8093DC4C+0x468>
    5010:	30780007 	andi	t8,v1,0x7
    5014:	2861002d 	slti	at,v1,45
    5018:	10200011 	beqz	at,5060 <L8093DC4C+0xe4>
    501c:	8fa400a4 	lw	a0,164(sp)
    5020:	8faa00a4 	lw	t2,164(sp)
    5024:	3c010001 	lui	at,0x1
    5028:	240b0002 	li	t3,2
    502c:	002a0821 	addu	at,at,t2
    5030:	a0200ae2 	sb	zero,2786(at)
    5034:	8fac00a4 	lw	t4,164(sp)
    5038:	3c010001 	lui	at,0x1
    503c:	002c0821 	addu	at,at,t4
    5040:	a02b0ae1 	sb	t3,2785(at)
    5044:	8fad00a4 	lw	t5,164(sp)
    5048:	3c013f80 	lui	at,0x3f80
    504c:	44812000 	mtc1	at,$f4
    5050:	3c010001 	lui	at,0x1
    5054:	002d0821 	addu	at,at,t5
    5058:	10000008 	b	507c <L8093DC4C+0x100>
    505c:	e4240afc 	swc1	$f4,2812(at)
    5060:	3c010001 	lui	at,0x1
    5064:	34210afc 	ori	at,at,0xafc
    5068:	3c063dcc 	lui	a2,0x3dcc
    506c:	34c6cccd 	ori	a2,a2,0xcccd
    5070:	00812021 	addu	a0,a0,at
    5074:	0c000000 	jal	0 <func_80938CD0>
    5078:	3c053f80 	lui	a1,0x3f80
    507c:	86230150 	lh	v1,336(s1)
    5080:	2401001e 	li	at,30
    5084:	00008025 	move	s0,zero
    5088:	14610041 	bne	v1,at,5190 <L8093DC4C+0x214>
    508c:	27b30074 	addiu	s3,sp,116
    5090:	3c014248 	lui	at,0x4248
    5094:	44816000 	mtc1	at,$f12
    5098:	0c000000 	jal	0 <func_80938CD0>
    509c:	00000000 	nop
    50a0:	8e4e0000 	lw	t6,0(s2)
    50a4:	3c014248 	lui	at,0x4248
    50a8:	44816000 	mtc1	at,$f12
    50ac:	c5c60024 	lwc1	$f6,36(t6)
    50b0:	46060200 	add.s	$f8,$f0,$f6
    50b4:	0c000000 	jal	0 <func_80938CD0>
    50b8:	e7a80074 	swc1	$f8,116(sp)
    50bc:	8e4f0000 	lw	t7,0(s2)
    50c0:	3c014248 	lui	at,0x4248
    50c4:	44816000 	mtc1	at,$f12
    50c8:	c5ea0028 	lwc1	$f10,40(t7)
    50cc:	460a0100 	add.s	$f4,$f0,$f10
    50d0:	0c000000 	jal	0 <func_80938CD0>
    50d4:	e7a40078 	swc1	$f4,120(sp)
    50d8:	8e580000 	lw	t8,0(s2)
    50dc:	3c0141a0 	lui	at,0x41a0
    50e0:	44816000 	mtc1	at,$f12
    50e4:	c706002c 	lwc1	$f6,44(t8)
    50e8:	46060200 	add.s	$f8,$f0,$f6
    50ec:	0c000000 	jal	0 <func_80938CD0>
    50f0:	e7a8007c 	swc1	$f8,124(sp)
    50f4:	3c0141a0 	lui	at,0x41a0
    50f8:	44816000 	mtc1	at,$f12
    50fc:	0c000000 	jal	0 <func_80938CD0>
    5100:	e7a00068 	swc1	$f0,104(sp)
    5104:	3c0141a0 	lui	at,0x41a0
    5108:	44816000 	mtc1	at,$f12
    510c:	0c000000 	jal	0 <func_80938CD0>
    5110:	e7a0006c 	swc1	$f0,108(sp)
    5114:	3c014120 	lui	at,0x4120
    5118:	44816000 	mtc1	at,$f12
    511c:	0c000000 	jal	0 <func_80938CD0>
    5120:	e7a00070 	swc1	$f0,112(sp)
    5124:	3c0141c8 	lui	at,0x41c8
    5128:	44815000 	mtc1	at,$f10
    512c:	3c070000 	lui	a3,0x0
    5130:	24190001 	li	t9,1
    5134:	460a0100 	add.s	$f4,$f0,$f10
    5138:	afb90014 	sw	t9,20(sp)
    513c:	24e70000 	addiu	a3,a3,0
    5140:	8fa400a4 	lw	a0,164(sp)
    5144:	e7a40010 	swc1	$f4,16(sp)
    5148:	02602825 	move	a1,s3
    514c:	0c000000 	jal	0 <func_80938CD0>
    5150:	27a60068 	addiu	a2,sp,104
    5154:	26100001 	addiu	s0,s0,1
    5158:	00108400 	sll	s0,s0,0x10
    515c:	00108403 	sra	s0,s0,0x10
    5160:	2a010032 	slti	at,s0,50
    5164:	5420ffcb 	bnezl	at,5094 <L8093DC4C+0x118>
    5168:	3c014248 	lui	at,0x4248
    516c:	8e440000 	lw	a0,0(s2)
    5170:	0c000000 	jal	0 <func_80938CD0>
    5174:	2405390d 	li	a1,14605
    5178:	8fa800a4 	lw	t0,164(sp)
    517c:	44803000 	mtc1	zero,$f6
    5180:	3c010001 	lui	at,0x1
    5184:	00280821 	addu	at,at,t0
    5188:	e4260afc 	swc1	$f6,2812(at)
    518c:	86230150 	lh	v1,336(s1)
    5190:	28610023 	slti	at,v1,35
    5194:	1420008a 	bnez	at,53c0 <L8093DC4C+0x444>
    5198:	28610032 	slti	at,v1,50
    519c:	10200019 	beqz	at,5204 <L8093DC4C+0x288>
    51a0:	00032140 	sll	a0,v1,0x5
    51a4:	00832021 	addu	a0,a0,v1
    51a8:	00042240 	sll	a0,a0,0x9
    51ac:	00042400 	sll	a0,a0,0x10
    51b0:	0c000000 	jal	0 <func_80938CD0>
    51b4:	00042403 	sra	a0,a0,0x10
    51b8:	3c0141a0 	lui	at,0x41a0
    51bc:	44814000 	mtc1	at,$f8
    51c0:	3c010000 	lui	at,0x0
    51c4:	c4240000 	lwc1	$f4,0(at)
    51c8:	46080282 	mul.s	$f10,$f0,$f8
    51cc:	3c010000 	lui	at,0x0
    51d0:	c4280000 	lwc1	$f8,0(at)
    51d4:	8e440000 	lw	a0,0(s2)
    51d8:	3c073ba3 	lui	a3,0x3ba3
    51dc:	34e7d70a 	ori	a3,a3,0xd70a
    51e0:	3c063f80 	lui	a2,0x3f80
    51e4:	46045183 	div.s	$f6,$f10,$f4
    51e8:	24840050 	addiu	a0,a0,80
    51ec:	46083280 	add.s	$f10,$f6,$f8
    51f0:	44055000 	mfc1	a1,$f10
    51f4:	0c000000 	jal	0 <func_80938CD0>
    51f8:	00000000 	nop
    51fc:	1000002e 	b	52b8 <L8093DC4C+0x33c>
    5200:	8e500000 	lw	s0,0(s2)
    5204:	24010032 	li	at,50
    5208:	1461000d 	bne	v1,at,5240 <L8093DC4C+0x2c4>
    520c:	3c100601 	lui	s0,0x601
    5210:	8e440000 	lw	a0,0(s2)
    5214:	261088c8 	addiu	s0,s0,-30520
    5218:	02002825 	move	a1,s0
    521c:	3c06c0a0 	lui	a2,0xc0a0
    5220:	0c000000 	jal	0 <func_80938CD0>
    5224:	24840568 	addiu	a0,a0,1384
    5228:	0c000000 	jal	0 <func_80938CD0>
    522c:	02002025 	move	a0,s0
    5230:	44822000 	mtc1	v0,$f4
    5234:	86230150 	lh	v1,336(s1)
    5238:	468021a0 	cvt.s.w	$f6,$f4
    523c:	e62601a4 	swc1	$f6,420(s1)
    5240:	2401003c 	li	at,60
    5244:	14610003 	bne	v1,at,5254 <L8093DC4C+0x2d8>
    5248:	240539b0 	li	a1,14768
    524c:	0c000000 	jal	0 <func_80938CD0>
    5250:	8e440000 	lw	a0,0(s2)
    5254:	8e440000 	lw	a0,0(s2)
    5258:	8e2501a4 	lw	a1,420(s1)
    525c:	0c000000 	jal	0 <func_80938CD0>
    5260:	24840568 	addiu	a0,a0,1384
    5264:	1040000a 	beqz	v0,5290 <L8093DC4C+0x314>
    5268:	3c050600 	lui	a1,0x600
    526c:	8e440000 	lw	a0,0(s2)
    5270:	24a56f28 	addiu	a1,a1,28456
    5274:	24060000 	li	a2,0
    5278:	0c000000 	jal	0 <func_80938CD0>
    527c:	24840568 	addiu	a0,a0,1384
    5280:	3c01447a 	lui	at,0x447a
    5284:	44814000 	mtc1	at,$f8
    5288:	00000000 	nop
    528c:	e62801a4 	swc1	$f8,420(s1)
    5290:	8e440000 	lw	a0,0(s2)
    5294:	3c053ccc 	lui	a1,0x3ccc
    5298:	3c063dcc 	lui	a2,0x3dcc
    529c:	3c073ba3 	lui	a3,0x3ba3
    52a0:	34e7d70a 	ori	a3,a3,0xd70a
    52a4:	34c6cccd 	ori	a2,a2,0xcccd
    52a8:	34a5cccc 	ori	a1,a1,0xcccc
    52ac:	0c000000 	jal	0 <func_80938CD0>
    52b0:	24840050 	addiu	a0,a0,80
    52b4:	8e500000 	lw	s0,0(s2)
    52b8:	02002025 	move	a0,s0
    52bc:	0c000000 	jal	0 <func_80938CD0>
    52c0:	8e050050 	lw	a1,80(s0)
    52c4:	8e4a0000 	lw	t2,0(s2)
    52c8:	24098000 	li	t1,-32768
    52cc:	24100001 	li	s0,1
    52d0:	a54900b6 	sh	t1,182(t2)
    52d4:	8e4b0000 	lw	t3,0(s2)
    52d8:	24040064 	li	a0,100
    52dc:	3c130000 	lui	s3,0x0
    52e0:	a17005f8 	sb	s0,1528(t3)
    52e4:	862c0150 	lh	t4,336(s1)
    52e8:	26730000 	addiu	s3,s3,0
    52ec:	240d000a 	li	t5,10
    52f0:	548c034b 	bnel	a0,t4,6020 <L8093ECEC+0x4>
    52f4:	862505fc 	lh	a1,1532(s1)
    52f8:	44805000 	mtc1	zero,$f10
    52fc:	a62d05fa 	sh	t5,1530(s1)
    5300:	a6200150 	sh	zero,336(s1)
    5304:	e62a06b0 	swc1	$f10,1712(s1)
    5308:	8e6e0000 	lw	t6,0(s3)
    530c:	3c050600 	lui	a1,0x600
    5310:	24a504a4 	addiu	a1,a1,1188
    5314:	a1d00564 	sb	s0,1380(t6)
    5318:	8e640000 	lw	a0,0(s3)
    531c:	24060000 	li	a2,0
    5320:	0c000000 	jal	0 <func_80938CD0>
    5324:	24840568 	addiu	a0,a0,1384
    5328:	3c014382 	lui	at,0x4382
    532c:	44811000 	mtc1	at,$f2
    5330:	3c01c1f0 	lui	at,0xc1f0
    5334:	44816000 	mtc1	at,$f12
    5338:	44802000 	mtc1	zero,$f4
    533c:	8e6f0000 	lw	t7,0(s3)
    5340:	3c01c416 	lui	at,0xc416
    5344:	44818000 	mtc1	at,$f16
    5348:	3c0142a0 	lui	at,0x42a0
    534c:	e5e40024 	swc1	$f4,36(t7)
    5350:	8e780000 	lw	t8,0(s3)
    5354:	44813000 	mtc1	at,$f6
    5358:	3c01c3eb 	lui	at,0xc3eb
    535c:	44814000 	mtc1	at,$f8
    5360:	e7060028 	swc1	$f6,40(t8)
    5364:	8e790000 	lw	t9,0(s3)
    5368:	3c014387 	lui	at,0x4387
    536c:	44805000 	mtc1	zero,$f10
    5370:	e730002c 	swc1	$f16,44(t9)
    5374:	8e680000 	lw	t0,0(s3)
    5378:	44812000 	mtc1	at,$f4
    537c:	3c053c75 	lui	a1,0x3c75
    5380:	a5000032 	sh	zero,50(t0)
    5384:	8e700000 	lw	s0,0(s3)
    5388:	34a5c28e 	ori	a1,a1,0xc28e
    538c:	86090032 	lh	t1,50(s0)
    5390:	a60900b6 	sh	t1,182(s0)
    5394:	a6200150 	sh	zero,336(s1)
    5398:	e6220604 	swc1	$f2,1540(s1)
    539c:	e62c0600 	swc1	$f12,1536(s1)
    53a0:	e6300614 	swc1	$f16,1556(s1)
    53a4:	e6280608 	swc1	$f8,1544(s1)
    53a8:	e62a060c 	swc1	$f10,1548(s1)
    53ac:	e6240610 	swc1	$f4,1552(s1)
    53b0:	0c000000 	jal	0 <func_80938CD0>
    53b4:	8e640000 	lw	a0,0(s3)
    53b8:	10000319 	b	6020 <L8093ECEC+0x4>
    53bc:	862505fc 	lh	a1,1532(s1)
    53c0:	c62606b0 	lwc1	$f6,1712(s1)
    53c4:	8e500000 	lw	s0,0(s2)
    53c8:	4600320d 	trunc.w.s	$f8,$f6
    53cc:	860a00b6 	lh	t2,182(s0)
    53d0:	440e4000 	mfc1	t6,$f8
    53d4:	00000000 	nop
    53d8:	014e7821 	addu	t7,t2,t6
    53dc:	1000030f 	b	601c <L8093ECEC>
    53e0:	a60f00b6 	sh	t7,182(s0)
    53e4:	17000003 	bnez	t8,53f4 <L8093DC4C+0x478>
    53e8:	24053921 	li	a1,14625
    53ec:	0c000000 	jal	0 <func_80938CD0>
    53f0:	8e440000 	lw	a0,0(s2)
    53f4:	c62a06b0 	lwc1	$f10,1712(s1)
    53f8:	8e500000 	lw	s0,0(s2)
    53fc:	262406b0 	addiu	a0,s1,1712
    5400:	4600510d 	trunc.w.s	$f4,$f10
    5404:	861900b6 	lh	t9,182(s0)
    5408:	3c054640 	lui	a1,0x4640
    540c:	3c063f80 	lui	a2,0x3f80
    5410:	440c2000 	mfc1	t4,$f4
    5414:	3c0743c0 	lui	a3,0x43c0
    5418:	032c6821 	addu	t5,t9,t4
    541c:	0c000000 	jal	0 <func_80938CD0>
    5420:	a60d00b6 	sh	t5,182(s0)
    5424:	8e440000 	lw	a0,0(s2)
    5428:	8e2501a4 	lw	a1,420(s1)
    542c:	0c000000 	jal	0 <func_80938CD0>
    5430:	24840568 	addiu	a0,a0,1384
    5434:	104002f9 	beqz	v0,601c <L8093ECEC>
    5438:	3c050600 	lui	a1,0x600
    543c:	8e440000 	lw	a0,0(s2)
    5440:	24a56f28 	addiu	a1,a1,28456
    5444:	24060000 	li	a2,0
    5448:	0c000000 	jal	0 <func_80938CD0>
    544c:	24840568 	addiu	a0,a0,1384
    5450:	3c01447a 	lui	at,0x447a
    5454:	44813000 	mtc1	at,$f6
    5458:	100002f0 	b	601c <L8093ECEC>
    545c:	e62601a4 	swc1	$f6,420(s1)

00005460 <L8093E130>:
    5460:	3c130000 	lui	s3,0x0
    5464:	26730000 	addiu	s3,s3,0
    5468:	8e640000 	lw	a0,0(s3)
    546c:	0c000000 	jal	0 <func_80938CD0>
    5470:	24840568 	addiu	a0,a0,1384
    5474:	8e640000 	lw	a0,0(s3)
    5478:	3c063d4c 	lui	a2,0x3d4c
    547c:	34c6cccd 	ori	a2,a2,0xcccd
    5480:	3c054370 	lui	a1,0x4370
    5484:	3c0740a0 	lui	a3,0x40a0
    5488:	0c000000 	jal	0 <func_80938CD0>
    548c:	24840028 	addiu	a0,a0,40
    5490:	3c010000 	lui	at,0x0
    5494:	c4200000 	lwc1	$f0,0(at)
    5498:	c6280600 	lwc1	$f8,1536(s1)
    549c:	c6240608 	lwc1	$f4,1544(s1)
    54a0:	862a0150 	lh	t2,336(s1)
    54a4:	46004281 	sub.s	$f10,$f8,$f0
    54a8:	240e000b 	li	t6,11
    54ac:	29410033 	slti	at,t2,51
    54b0:	46002181 	sub.s	$f6,$f4,$f0
    54b4:	e62a0600 	swc1	$f10,1536(s1)
    54b8:	142002d8 	bnez	at,601c <L8093ECEC>
    54bc:	e6260608 	swc1	$f6,1544(s1)
    54c0:	44809000 	mtc1	zero,$f18
    54c4:	c6300600 	lwc1	$f16,1536(s1)
    54c8:	c62e0604 	lwc1	$f14,1540(s1)
    54cc:	c62c0608 	lwc1	$f12,1544(s1)
    54d0:	3c014382 	lui	at,0x4382
    54d4:	44815000 	mtc1	at,$f10
    54d8:	3c01c1f0 	lui	at,0xc1f0
    54dc:	44814000 	mtc1	at,$f8
    54e0:	c626060c 	lwc1	$f6,1548(s1)
    54e4:	3c010000 	lui	at,0x0
    54e8:	46104401 	sub.s	$f16,$f8,$f16
    54ec:	c4240000 	lwc1	$f4,0(at)
    54f0:	e628066c 	swc1	$f8,1644(s1)
    54f4:	c6280610 	lwc1	$f8,1552(s1)
    54f8:	46008405 	abs.s	$f16,$f16
    54fc:	460e5381 	sub.s	$f14,$f10,$f14
    5500:	e62a0670 	swc1	$f10,1648(s1)
    5504:	a62e05fa 	sh	t6,1530(s1)
    5508:	e6240674 	swc1	$f4,1652(s1)
    550c:	46007385 	abs.s	$f14,$f14
    5510:	460c2301 	sub.s	$f12,$f4,$f12
    5514:	e6320684 	swc1	$f18,1668(s1)
    5518:	3c010000 	lui	at,0x0
    551c:	c4240000 	lwc1	$f4,0(at)
    5520:	46006305 	abs.s	$f12,$f12
    5524:	46069181 	sub.s	$f6,$f18,$f6
    5528:	e6240688 	swc1	$f4,1672(s1)
    552c:	c6240688 	lwc1	$f4,1672(s1)
    5530:	c62a0614 	lwc1	$f10,1556(s1)
    5534:	46003185 	abs.s	$f6,$f6
    5538:	46082201 	sub.s	$f8,$f4,$f8
    553c:	3c01c411 	lui	at,0xc411
    5540:	44812000 	mtc1	at,$f4
    5544:	e6300654 	swc1	$f16,1620(s1)
    5548:	46004205 	abs.s	$f8,$f8
    554c:	e624068c 	swc1	$f4,1676(s1)
    5550:	c624068c 	lwc1	$f4,1676(s1)
    5554:	e62e0658 	swc1	$f14,1624(s1)
    5558:	e62c065c 	swc1	$f12,1628(s1)
    555c:	460a2281 	sub.s	$f10,$f4,$f10
    5560:	e6260660 	swc1	$f6,1632(s1)
    5564:	e6280664 	swc1	$f8,1636(s1)
    5568:	e632069c 	swc1	$f18,1692(s1)
    556c:	46005285 	abs.s	$f10,$f10
    5570:	3c010000 	lui	at,0x0
    5574:	e62a0668 	swc1	$f10,1640(s1)
    5578:	c42a0000 	lwc1	$f10,0(at)
    557c:	a6200150 	sh	zero,336(s1)
    5580:	100002a6 	b	601c <L8093ECEC>
    5584:	e62a06a0 	swc1	$f10,1696(s1)

00005588 <L8093E258>:
    5588:	3c130000 	lui	s3,0x0
    558c:	26730000 	addiu	s3,s3,0
    5590:	8e640000 	lw	a0,0(s3)
    5594:	0c000000 	jal	0 <func_80938CD0>
    5598:	24840568 	addiu	a0,a0,1384
    559c:	8e640000 	lw	a0,0(s3)
    55a0:	240f0001 	li	t7,1
    55a4:	3c063d4c 	lui	a2,0x3d4c
    55a8:	a3af009f 	sb	t7,159(sp)
    55ac:	34c6cccd 	ori	a2,a2,0xcccd
    55b0:	3c054370 	lui	a1,0x4370
    55b4:	3c0740a0 	lui	a3,0x40a0
    55b8:	0c000000 	jal	0 <func_80938CD0>
    55bc:	24840028 	addiu	a0,a0,40
    55c0:	3c073ca3 	lui	a3,0x3ca3
    55c4:	34e7d70a 	ori	a3,a3,0xd70a
    55c8:	2624069c 	addiu	a0,s1,1692
    55cc:	3c053f80 	lui	a1,0x3f80
    55d0:	0c000000 	jal	0 <func_80938CD0>
    55d4:	3c063f80 	lui	a2,0x3f80
    55d8:	86230150 	lh	v1,336(s1)
    55dc:	2401001e 	li	at,30
    55e0:	8fa400a4 	lw	a0,164(sp)
    55e4:	14610004 	bne	v1,at,55f8 <L8093E258+0x70>
    55e8:	2405604a 	li	a1,24650
    55ec:	0c000000 	jal	0 <func_80938CD0>
    55f0:	00003025 	move	a2,zero
    55f4:	86230150 	lh	v1,336(s1)
    55f8:	28610051 	slti	at,v1,81
    55fc:	14200287 	bnez	at,601c <L8093ECEC>
    5600:	2418000c 	li	t8,12
    5604:	3c014382 	lui	at,0x4382
    5608:	44811000 	mtc1	at,$f2
    560c:	3c01c2a0 	lui	at,0xc2a0
    5610:	44816000 	mtc1	at,$f12
    5614:	3c01c3d7 	lui	at,0xc3d7
    5618:	44817000 	mtc1	at,$f14
    561c:	44808000 	mtc1	zero,$f16
    5620:	a63805fa 	sh	t8,1530(s1)
    5624:	e6220670 	swc1	$f2,1648(s1)
    5628:	e62c066c 	swc1	$f12,1644(s1)
    562c:	e62e0674 	swc1	$f14,1652(s1)
    5630:	e6300068 	swc1	$f16,104(s1)
    5634:	8e680000 	lw	t0,0(s3)
    5638:	3c0141a0 	lui	at,0x41a0
    563c:	44815000 	mtc1	at,$f10
    5640:	c5060024 	lwc1	$f6,36(t0)
    5644:	3c010000 	lui	at,0x0
    5648:	3c100600 	lui	s0,0x600
    564c:	e6260684 	swc1	$f6,1668(s1)
    5650:	8e690000 	lw	t1,0(s3)
    5654:	26100aac 	addiu	s0,s0,2732
    5658:	44068000 	mfc1	a2,$f16
    565c:	c5280028 	lwc1	$f8,40(t1)
    5660:	02002825 	move	a1,s0
    5664:	460a4100 	add.s	$f4,$f8,$f10
    5668:	c6280600 	lwc1	$f8,1536(s1)
    566c:	c62a0604 	lwc1	$f10,1540(s1)
    5670:	46086001 	sub.s	$f0,$f12,$f8
    5674:	e6240688 	swc1	$f4,1672(s1)
    5678:	8e6b0000 	lw	t3,0(s3)
    567c:	c6240608 	lwc1	$f4,1544(s1)
    5680:	46000005 	abs.s	$f0,$f0
    5684:	c566002c 	lwc1	$f6,44(t3)
    5688:	e6200654 	swc1	$f0,1620(s1)
    568c:	460a1001 	sub.s	$f0,$f2,$f10
    5690:	e626068c 	swc1	$f6,1676(s1)
    5694:	c6260684 	lwc1	$f6,1668(s1)
    5698:	c628060c 	lwc1	$f8,1548(s1)
    569c:	46000005 	abs.s	$f0,$f0
    56a0:	c62a0688 	lwc1	$f10,1672(s1)
    56a4:	e6200658 	swc1	$f0,1624(s1)
    56a8:	46047001 	sub.s	$f0,$f14,$f4
    56ac:	c6240610 	lwc1	$f4,1552(s1)
    56b0:	e630069c 	swc1	$f16,1692(s1)
    56b4:	46000005 	abs.s	$f0,$f0
    56b8:	e620065c 	swc1	$f0,1628(s1)
    56bc:	46083001 	sub.s	$f0,$f6,$f8
    56c0:	c6280614 	lwc1	$f8,1556(s1)
    56c4:	c626068c 	lwc1	$f6,1676(s1)
    56c8:	46000005 	abs.s	$f0,$f0
    56cc:	e6200660 	swc1	$f0,1632(s1)
    56d0:	46045001 	sub.s	$f0,$f10,$f4
    56d4:	46000005 	abs.s	$f0,$f0
    56d8:	e6200664 	swc1	$f0,1636(s1)
    56dc:	46083001 	sub.s	$f0,$f6,$f8
    56e0:	46000005 	abs.s	$f0,$f0
    56e4:	e6200668 	swc1	$f0,1640(s1)
    56e8:	c42a0000 	lwc1	$f10,0(at)
    56ec:	e62a06a0 	swc1	$f10,1696(s1)
    56f0:	8e640000 	lw	a0,0(s3)
    56f4:	0c000000 	jal	0 <func_80938CD0>
    56f8:	24840568 	addiu	a0,a0,1384
    56fc:	0c000000 	jal	0 <func_80938CD0>
    5700:	02002025 	move	a0,s0
    5704:	44822000 	mtc1	v0,$f4
    5708:	a6200150 	sh	zero,336(s1)
    570c:	468021a0 	cvt.s.w	$f6,$f4
    5710:	10000242 	b	601c <L8093ECEC>
    5714:	e62601a4 	swc1	$f6,420(s1)

00005718 <L8093E3E8>:
    5718:	3c130000 	lui	s3,0x0
    571c:	26730000 	addiu	s3,s3,0
    5720:	8e640000 	lw	a0,0(s3)
    5724:	24190001 	li	t9,1
    5728:	a3b9009f 	sb	t9,159(sp)
    572c:	0c000000 	jal	0 <func_80938CD0>
    5730:	24840568 	addiu	a0,a0,1384
    5734:	8e6c0000 	lw	t4,0(s3)
    5738:	3c0143af 	lui	at,0x43af
    573c:	44818000 	mtc1	at,$f16
    5740:	3c0141a0 	lui	at,0x41a0
    5744:	44815000 	mtc1	at,$f10
    5748:	c5880028 	lwc1	$f8,40(t4)
    574c:	3c063dcc 	lui	a2,0x3dcc
    5750:	44058000 	mfc1	a1,$f16
    5754:	460a4100 	add.s	$f4,$f8,$f10
    5758:	34c6cccd 	ori	a2,a2,0xcccd
    575c:	8e270068 	lw	a3,104(s1)
    5760:	e6240688 	swc1	$f4,1672(s1)
    5764:	8e640000 	lw	a0,0(s3)
    5768:	0c000000 	jal	0 <func_80938CD0>
    576c:	24840028 	addiu	a0,a0,40
    5770:	3c073f66 	lui	a3,0x3f66
    5774:	34e76666 	ori	a3,a3,0x6666
    5778:	26240068 	addiu	a0,s1,104
    577c:	3c054110 	lui	a1,0x4110
    5780:	0c000000 	jal	0 <func_80938CD0>
    5784:	3c063f80 	lui	a2,0x3f80
    5788:	3c013f80 	lui	at,0x3f80
    578c:	44810000 	mtc1	at,$f0
    5790:	3c073ca3 	lui	a3,0x3ca3
    5794:	34e7d70a 	ori	a3,a3,0xd70a
    5798:	44050000 	mfc1	a1,$f0
    579c:	44060000 	mfc1	a2,$f0
    57a0:	0c000000 	jal	0 <func_80938CD0>
    57a4:	2624069c 	addiu	a0,s1,1692
    57a8:	86230150 	lh	v1,336(s1)
    57ac:	2861001e 	slti	at,v1,30
    57b0:	142000d5 	bnez	at,5b08 <L8093E3E8+0x3f0>
    57b4:	306b0007 	andi	t3,v1,0x7
    57b8:	2861002d 	slti	at,v1,45
    57bc:	1020000d 	beqz	at,57f4 <L8093E3E8+0xdc>
    57c0:	8fa400a4 	lw	a0,164(sp)
    57c4:	8faa00a4 	lw	t2,164(sp)
    57c8:	3c010001 	lui	at,0x1
    57cc:	240d0003 	li	t5,3
    57d0:	002a0821 	addu	at,at,t2
    57d4:	a02d0ae1 	sb	t5,2785(at)
    57d8:	8fae00a4 	lw	t6,164(sp)
    57dc:	3c013f80 	lui	at,0x3f80
    57e0:	44813000 	mtc1	at,$f6
    57e4:	3c010001 	lui	at,0x1
    57e8:	002e0821 	addu	at,at,t6
    57ec:	10000008 	b	5810 <L8093E3E8+0xf8>
    57f0:	e4260afc 	swc1	$f6,2812(at)
    57f4:	3c010001 	lui	at,0x1
    57f8:	34210afc 	ori	at,at,0xafc
    57fc:	3c063dcc 	lui	a2,0x3dcc
    5800:	34c6cccd 	ori	a2,a2,0xcccd
    5804:	00812021 	addu	a0,a0,at
    5808:	0c000000 	jal	0 <func_80938CD0>
    580c:	3c053f80 	lui	a1,0x3f80
    5810:	86230150 	lh	v1,336(s1)
    5814:	2401001e 	li	at,30
    5818:	00008025 	move	s0,zero
    581c:	14610040 	bne	v1,at,5920 <L8093E3E8+0x208>
    5820:	27b2005c 	addiu	s2,sp,92
    5824:	3c014248 	lui	at,0x4248
    5828:	44816000 	mtc1	at,$f12
    582c:	0c000000 	jal	0 <func_80938CD0>
    5830:	00000000 	nop
    5834:	8e6f0000 	lw	t7,0(s3)
    5838:	3c014248 	lui	at,0x4248
    583c:	44816000 	mtc1	at,$f12
    5840:	c5e80024 	lwc1	$f8,36(t7)
    5844:	46080280 	add.s	$f10,$f0,$f8
    5848:	0c000000 	jal	0 <func_80938CD0>
    584c:	e7aa005c 	swc1	$f10,92(sp)
    5850:	8e780000 	lw	t8,0(s3)
    5854:	3c014248 	lui	at,0x4248
    5858:	44816000 	mtc1	at,$f12
    585c:	c7040028 	lwc1	$f4,40(t8)
    5860:	46040180 	add.s	$f6,$f0,$f4
    5864:	0c000000 	jal	0 <func_80938CD0>
    5868:	e7a60060 	swc1	$f6,96(sp)
    586c:	8e680000 	lw	t0,0(s3)
    5870:	3c0141a0 	lui	at,0x41a0
    5874:	44816000 	mtc1	at,$f12
    5878:	c508002c 	lwc1	$f8,44(t0)
    587c:	46080280 	add.s	$f10,$f0,$f8
    5880:	0c000000 	jal	0 <func_80938CD0>
    5884:	e7aa0064 	swc1	$f10,100(sp)
    5888:	3c0141a0 	lui	at,0x41a0
    588c:	44816000 	mtc1	at,$f12
    5890:	0c000000 	jal	0 <func_80938CD0>
    5894:	e7a00050 	swc1	$f0,80(sp)
    5898:	3c0141a0 	lui	at,0x41a0
    589c:	44816000 	mtc1	at,$f12
    58a0:	0c000000 	jal	0 <func_80938CD0>
    58a4:	e7a00054 	swc1	$f0,84(sp)
    58a8:	3c014120 	lui	at,0x4120
    58ac:	44816000 	mtc1	at,$f12
    58b0:	0c000000 	jal	0 <func_80938CD0>
    58b4:	e7a00058 	swc1	$f0,88(sp)
    58b8:	3c0141c8 	lui	at,0x41c8
    58bc:	44812000 	mtc1	at,$f4
    58c0:	3c070000 	lui	a3,0x0
    58c4:	24e70000 	addiu	a3,a3,0
    58c8:	46040180 	add.s	$f6,$f0,$f4
    58cc:	8fa400a4 	lw	a0,164(sp)
    58d0:	02402825 	move	a1,s2
    58d4:	27a60050 	addiu	a2,sp,80
    58d8:	e7a60010 	swc1	$f6,16(sp)
    58dc:	0c000000 	jal	0 <func_80938CD0>
    58e0:	afa00014 	sw	zero,20(sp)
    58e4:	26100001 	addiu	s0,s0,1
    58e8:	00108400 	sll	s0,s0,0x10
    58ec:	00108403 	sra	s0,s0,0x10
    58f0:	2a010032 	slti	at,s0,50
    58f4:	5420ffcc 	bnezl	at,5828 <L8093E3E8+0x110>
    58f8:	3c014248 	lui	at,0x4248
    58fc:	8e640000 	lw	a0,0(s3)
    5900:	0c000000 	jal	0 <func_80938CD0>
    5904:	2405390d 	li	a1,14605
    5908:	8fa900a4 	lw	t1,164(sp)
    590c:	44804000 	mtc1	zero,$f8
    5910:	3c010001 	lui	at,0x1
    5914:	00290821 	addu	at,at,t1
    5918:	e4280afc 	swc1	$f8,2812(at)
    591c:	86230150 	lh	v1,336(s1)
    5920:	28610023 	slti	at,v1,35
    5924:	1420006f 	bnez	at,5ae4 <L8093E3E8+0x3cc>
    5928:	28610032 	slti	at,v1,50
    592c:	10200019 	beqz	at,5994 <L8093E3E8+0x27c>
    5930:	00032140 	sll	a0,v1,0x5
    5934:	00832021 	addu	a0,a0,v1
    5938:	00042240 	sll	a0,a0,0x9
    593c:	00042400 	sll	a0,a0,0x10
    5940:	0c000000 	jal	0 <func_80938CD0>
    5944:	00042403 	sra	a0,a0,0x10
    5948:	3c0141a0 	lui	at,0x41a0
    594c:	44815000 	mtc1	at,$f10
    5950:	3c010000 	lui	at,0x0
    5954:	c4260000 	lwc1	$f6,0(at)
    5958:	460a0102 	mul.s	$f4,$f0,$f10
    595c:	3c010000 	lui	at,0x0
    5960:	c42a0000 	lwc1	$f10,0(at)
    5964:	8e640000 	lw	a0,0(s3)
    5968:	3c073ba3 	lui	a3,0x3ba3
    596c:	34e7d70a 	ori	a3,a3,0xd70a
    5970:	3c063f80 	lui	a2,0x3f80
    5974:	46062203 	div.s	$f8,$f4,$f6
    5978:	24840050 	addiu	a0,a0,80
    597c:	460a4100 	add.s	$f4,$f8,$f10
    5980:	44052000 	mfc1	a1,$f4
    5984:	0c000000 	jal	0 <func_80938CD0>
    5988:	00000000 	nop
    598c:	1000002e 	b	5a48 <L8093E3E8+0x330>
    5990:	8e700000 	lw	s0,0(s3)
    5994:	24010032 	li	at,50
    5998:	1461000d 	bne	v1,at,59d0 <L8093E3E8+0x2b8>
    599c:	3c100601 	lui	s0,0x601
    59a0:	8e640000 	lw	a0,0(s3)
    59a4:	261088c8 	addiu	s0,s0,-30520
    59a8:	02002825 	move	a1,s0
    59ac:	3c06c0a0 	lui	a2,0xc0a0
    59b0:	0c000000 	jal	0 <func_80938CD0>
    59b4:	24840568 	addiu	a0,a0,1384
    59b8:	0c000000 	jal	0 <func_80938CD0>
    59bc:	02002025 	move	a0,s0
    59c0:	44823000 	mtc1	v0,$f6
    59c4:	86230150 	lh	v1,336(s1)
    59c8:	46803220 	cvt.s.w	$f8,$f6
    59cc:	e62801a4 	swc1	$f8,420(s1)
    59d0:	2401003c 	li	at,60
    59d4:	14610003 	bne	v1,at,59e4 <L8093E3E8+0x2cc>
    59d8:	240539b1 	li	a1,14769
    59dc:	0c000000 	jal	0 <func_80938CD0>
    59e0:	8e640000 	lw	a0,0(s3)
    59e4:	8e640000 	lw	a0,0(s3)
    59e8:	8e2501a4 	lw	a1,420(s1)
    59ec:	0c000000 	jal	0 <func_80938CD0>
    59f0:	24840568 	addiu	a0,a0,1384
    59f4:	1040000a 	beqz	v0,5a20 <L8093E3E8+0x308>
    59f8:	3c050600 	lui	a1,0x600
    59fc:	8e640000 	lw	a0,0(s3)
    5a00:	24a56f28 	addiu	a1,a1,28456
    5a04:	24060000 	li	a2,0
    5a08:	0c000000 	jal	0 <func_80938CD0>
    5a0c:	24840568 	addiu	a0,a0,1384
    5a10:	3c01447a 	lui	at,0x447a
    5a14:	44815000 	mtc1	at,$f10
    5a18:	00000000 	nop
    5a1c:	e62a01a4 	swc1	$f10,420(s1)
    5a20:	8e640000 	lw	a0,0(s3)
    5a24:	3c053ccc 	lui	a1,0x3ccc
    5a28:	3c063dcc 	lui	a2,0x3dcc
    5a2c:	3c073ba3 	lui	a3,0x3ba3
    5a30:	34e7d70a 	ori	a3,a3,0xd70a
    5a34:	34c6cccd 	ori	a2,a2,0xcccd
    5a38:	34a5cccc 	ori	a1,a1,0xcccc
    5a3c:	0c000000 	jal	0 <func_80938CD0>
    5a40:	24840050 	addiu	a0,a0,80
    5a44:	8e700000 	lw	s0,0(s3)
    5a48:	02002025 	move	a0,s0
    5a4c:	0c000000 	jal	0 <func_80938CD0>
    5a50:	8e050050 	lw	a1,80(s0)
    5a54:	8e6b0000 	lw	t3,0(s3)
    5a58:	24100001 	li	s0,1
    5a5c:	24040064 	li	a0,100
    5a60:	a56000b6 	sh	zero,182(t3)
    5a64:	8e790000 	lw	t9,0(s3)
    5a68:	3c014416 	lui	at,0x4416
    5a6c:	240d0014 	li	t5,20
    5a70:	a33005f8 	sb	s0,1528(t9)
    5a74:	862c0150 	lh	t4,336(s1)
    5a78:	548c0169 	bnel	a0,t4,6020 <L8093ECEC+0x4>
    5a7c:	862505fc 	lh	a1,1532(s1)
    5a80:	44817000 	mtc1	at,$f14
    5a84:	3c014448 	lui	at,0x4448
    5a88:	44812000 	mtc1	at,$f4
    5a8c:	3c014396 	lui	at,0x4396
    5a90:	44813000 	mtc1	at,$f6
    5a94:	44800000 	mtc1	zero,$f0
    5a98:	3c0143c8 	lui	at,0x43c8
    5a9c:	44801000 	mtc1	zero,$f2
    5aa0:	44814000 	mtc1	at,$f8
    5aa4:	a62d05fa 	sh	t5,1530(s1)
    5aa8:	a6200150 	sh	zero,336(s1)
    5aac:	3c010000 	lui	at,0x0
    5ab0:	e62e01b0 	swc1	$f14,432(s1)
    5ab4:	e6240600 	swc1	$f4,1536(s1)
    5ab8:	e6260604 	swc1	$f6,1540(s1)
    5abc:	e6200608 	swc1	$f0,1544(s1)
    5ac0:	e6200614 	swc1	$f0,1556(s1)
    5ac4:	e622060c 	swc1	$f2,1548(s1)
    5ac8:	e6280610 	swc1	$f8,1552(s1)
    5acc:	c42a0000 	lwc1	$f10,0(at)
    5ad0:	e62201ac 	swc1	$f2,428(s1)
    5ad4:	e6220654 	swc1	$f2,1620(s1)
    5ad8:	e62204d8 	swc1	$f2,1240(s1)
    5adc:	1000014f 	b	601c <L8093ECEC>
    5ae0:	e62a01a8 	swc1	$f10,424(s1)
    5ae4:	c62406b0 	lwc1	$f4,1712(s1)
    5ae8:	8e700000 	lw	s0,0(s3)
    5aec:	4600218d 	trunc.w.s	$f6,$f4
    5af0:	860a00b6 	lh	t2,182(s0)
    5af4:	44083000 	mfc1	t0,$f6
    5af8:	00000000 	nop
    5afc:	01484821 	addu	t1,t2,t0
    5b00:	10000146 	b	601c <L8093ECEC>
    5b04:	a60900b6 	sh	t1,182(s0)
    5b08:	15600003 	bnez	t3,5b18 <L8093E3E8+0x400>
    5b0c:	24053921 	li	a1,14625
    5b10:	0c000000 	jal	0 <func_80938CD0>
    5b14:	8e640000 	lw	a0,0(s3)
    5b18:	c62806b0 	lwc1	$f8,1712(s1)
    5b1c:	8e700000 	lw	s0,0(s3)
    5b20:	262406b0 	addiu	a0,s1,1712
    5b24:	4600428d 	trunc.w.s	$f10,$f8
    5b28:	861900b6 	lh	t9,182(s0)
    5b2c:	3c054640 	lui	a1,0x4640
    5b30:	3c063f80 	lui	a2,0x3f80
    5b34:	440f5000 	mfc1	t7,$f10
    5b38:	3c0743c0 	lui	a3,0x43c0
    5b3c:	032fc021 	addu	t8,t9,t7
    5b40:	0c000000 	jal	0 <func_80938CD0>
    5b44:	a61800b6 	sh	t8,182(s0)
    5b48:	8e640000 	lw	a0,0(s3)
    5b4c:	8e2501a4 	lw	a1,420(s1)
    5b50:	0c000000 	jal	0 <func_80938CD0>
    5b54:	24840568 	addiu	a0,a0,1384
    5b58:	10400130 	beqz	v0,601c <L8093ECEC>
    5b5c:	3c050600 	lui	a1,0x600
    5b60:	8e640000 	lw	a0,0(s3)
    5b64:	24a56f28 	addiu	a1,a1,28456
    5b68:	24060000 	li	a2,0
    5b6c:	0c000000 	jal	0 <func_80938CD0>
    5b70:	24840568 	addiu	a0,a0,1384
    5b74:	3c01447a 	lui	at,0x447a
    5b78:	44812000 	mtc1	at,$f4
    5b7c:	10000127 	b	601c <L8093ECEC>
    5b80:	e62401a4 	swc1	$f4,420(s1)

00005b84 <L8093E854>:
    5b84:	86230150 	lh	v1,336(s1)
    5b88:	28610015 	slti	at,v1,21
    5b8c:	14200013 	bnez	at,5bdc <L8093E854+0x58>
    5b90:	28610078 	slti	at,v1,120
    5b94:	10200011 	beqz	at,5bdc <L8093E854+0x58>
    5b98:	24100001 	li	s0,1
    5b9c:	8faa00a4 	lw	t2,164(sp)
    5ba0:	3c013f80 	lui	at,0x3f80
    5ba4:	44810000 	mtc1	at,$f0
    5ba8:	3c010001 	lui	at,0x1
    5bac:	002a0821 	addu	at,at,t2
    5bb0:	a0300ae1 	sb	s0,2785(at)
    5bb4:	8fa400a4 	lw	a0,164(sp)
    5bb8:	3c010001 	lui	at,0x1
    5bbc:	34210afc 	ori	at,at,0xafc
    5bc0:	3c073c75 	lui	a3,0x3c75
    5bc4:	44050000 	mfc1	a1,$f0
    5bc8:	44060000 	mfc1	a2,$f0
    5bcc:	34e7c28f 	ori	a3,a3,0xc28f
    5bd0:	0c000000 	jal	0 <func_80938CD0>
    5bd4:	00812021 	addu	a0,a0,at
    5bd8:	86230150 	lh	v1,336(s1)
    5bdc:	2401005a 	li	at,90
    5be0:	14610005 	bne	v1,at,5bf8 <L8093E854+0x74>
    5be4:	24100001 	li	s0,1
    5be8:	3c04105a 	lui	a0,0x105a
    5bec:	0c000000 	jal	0 <func_80938CD0>
    5bf0:	348400ff 	ori	a0,a0,0xff
    5bf4:	86230150 	lh	v1,336(s1)
    5bf8:	24010078 	li	at,120
    5bfc:	1461002f 	bne	v1,at,5cbc <L8093E854+0x138>
    5c00:	3c020603 	lui	v0,0x603
    5c04:	8fa800a4 	lw	t0,164(sp)
    5c08:	3c010000 	lui	at,0x0
    5c0c:	a0200000 	sb	zero,0(at)
    5c10:	3c010001 	lui	at,0x1
    5c14:	00280821 	addu	at,at,t0
    5c18:	a0300ae2 	sb	s0,2786(at)
    5c1c:	8fa900a4 	lw	t1,164(sp)
    5c20:	3c010001 	lui	at,0x1
    5c24:	44803000 	mtc1	zero,$f6
    5c28:	00290821 	addu	at,at,t1
    5c2c:	a0300ae1 	sb	s0,2785(at)
    5c30:	8fab00a4 	lw	t3,164(sp)
    5c34:	2442e170 	addiu	v0,v0,-7824
    5c38:	3c010001 	lui	at,0x1
    5c3c:	00026900 	sll	t5,v0,0x4
    5c40:	000d7702 	srl	t6,t5,0x1c
    5c44:	002b0821 	addu	at,at,t3
    5c48:	000ec880 	sll	t9,t6,0x2
    5c4c:	3c0f0000 	lui	t7,0x0
    5c50:	e4260afc 	swc1	$f6,2812(at)
    5c54:	3c0100ff 	lui	at,0xff
    5c58:	01f97821 	addu	t7,t7,t9
    5c5c:	8def0000 	lw	t7,0(t7)
    5c60:	3421ffff 	ori	at,at,0xffff
    5c64:	0041c024 	and	t8,v0,at
    5c68:	8fa400a4 	lw	a0,164(sp)
    5c6c:	3c018000 	lui	at,0x8000
    5c70:	24090028 	li	t1,40
    5c74:	24080080 	li	t0,128
    5c78:	240a00b4 	li	t2,180
    5c7c:	01f83021 	addu	a2,t7,t8
    5c80:	00c13021 	addu	a2,a2,at
    5c84:	afaa0010 	sw	t2,16(sp)
    5c88:	afa80014 	sw	t0,20(sp)
    5c8c:	afa90018 	sw	t1,24(sp)
    5c90:	240700a0 	li	a3,160
    5c94:	0c000000 	jal	0 <func_80938CD0>
    5c98:	24851d4c 	addiu	a1,a0,7500
    5c9c:	3c020000 	lui	v0,0x0
    5ca0:	24420000 	addiu	v0,v0,0
    5ca4:	944b0ee2 	lhu	t3,3810(v0)
    5ca8:	2404001b 	li	a0,27
    5cac:	356c0020 	ori	t4,t3,0x20
    5cb0:	0c000000 	jal	0 <func_80938CD0>
    5cb4:	a44c0ee2 	sh	t4,3810(v0)
    5cb8:	86230150 	lh	v1,336(s1)
    5cbc:	286100a0 	slti	at,v1,160
    5cc0:	14200020 	bnez	at,5d44 <L8093E854+0x1c0>
    5cc4:	26300600 	addiu	s0,s1,1536
    5cc8:	240100a0 	li	at,160
    5ccc:	54610005 	bnel	v1,at,5ce4 <L8093E854+0x160>
    5cd0:	3c013f00 	lui	at,0x3f00
    5cd4:	44804000 	mtc1	zero,$f8
    5cd8:	00000000 	nop
    5cdc:	e6280654 	swc1	$f8,1620(s1)
    5ce0:	3c013f00 	lui	at,0x3f00
    5ce4:	44812000 	mtc1	at,$f4
    5ce8:	c62a0654 	lwc1	$f10,1620(s1)
    5cec:	26300600 	addiu	s0,s1,1536
    5cf0:	3c063d4c 	lui	a2,0x3d4c
    5cf4:	46045182 	mul.s	$f6,$f10,$f4
    5cf8:	34c6cccd 	ori	a2,a2,0xcccd
    5cfc:	02002025 	move	a0,s0
    5d00:	24050000 	li	a1,0
    5d04:	44073000 	mfc1	a3,$f6
    5d08:	0c000000 	jal	0 <func_80938CD0>
    5d0c:	00000000 	nop
    5d10:	3c063d4c 	lui	a2,0x3d4c
    5d14:	34c6cccd 	ori	a2,a2,0xcccd
    5d18:	26240608 	addiu	a0,s1,1544
    5d1c:	3c05447a 	lui	a1,0x447a
    5d20:	0c000000 	jal	0 <func_80938CD0>
    5d24:	8e270654 	lw	a3,1620(s1)
    5d28:	26240654 	addiu	a0,s1,1620
    5d2c:	3c054220 	lui	a1,0x4220
    5d30:	3c063f80 	lui	a2,0x3f80
    5d34:	0c000000 	jal	0 <func_80938CD0>
    5d38:	3c073f80 	lui	a3,0x3f80
    5d3c:	1000000d 	b	5d74 <L8093E854+0x1f0>
    5d40:	86230150 	lh	v1,336(s1)
    5d44:	3c063d4c 	lui	a2,0x3d4c
    5d48:	34c6cccd 	ori	a2,a2,0xcccd
    5d4c:	02002025 	move	a0,s0
    5d50:	3c054396 	lui	a1,0x4396
    5d54:	0c000000 	jal	0 <func_80938CD0>
    5d58:	8e270654 	lw	a3,1620(s1)
    5d5c:	26240654 	addiu	a0,s1,1620
    5d60:	3c0540a0 	lui	a1,0x40a0
    5d64:	3c063f80 	lui	a2,0x3f80
    5d68:	0c000000 	jal	0 <func_80938CD0>
    5d6c:	3c073f00 	lui	a3,0x3f00
    5d70:	86230150 	lh	v1,336(s1)
    5d74:	3c120000 	lui	s2,0x0
    5d78:	26520000 	addiu	s2,s2,0
    5d7c:	286100c8 	slti	at,v1,200
    5d80:	10200058 	beqz	at,5ee4 <L8093E854+0x360>
    5d84:	2405311f 	li	a1,12575
    5d88:	0c000000 	jal	0 <func_80938CD0>
    5d8c:	8e440000 	lw	a0,0(s2)
    5d90:	3c130000 	lui	s3,0x0
    5d94:	26730000 	addiu	s3,s3,0
    5d98:	8e640000 	lw	a0,0(s3)
    5d9c:	0c000000 	jal	0 <func_80938CD0>
    5da0:	2405311f 	li	a1,12575
    5da4:	3c0143c8 	lui	at,0x43c8
    5da8:	c62801b0 	lwc1	$f8,432(s1)
    5dac:	44815000 	mtc1	at,$f10
    5db0:	44802000 	mtc1	zero,$f4
    5db4:	e7a80090 	swc1	$f8,144(sp)
    5db8:	e7aa0094 	swc1	$f10,148(sp)
    5dbc:	e7a40098 	swc1	$f4,152(sp)
    5dc0:	c62c01a8 	lwc1	$f12,424(s1)
    5dc4:	0c000000 	jal	0 <func_80938CD0>
    5dc8:	00002825 	move	a1,zero
    5dcc:	27a40090 	addiu	a0,sp,144
    5dd0:	0c000000 	jal	0 <func_80938CD0>
    5dd4:	27a50084 	addiu	a1,sp,132
    5dd8:	3c014700 	lui	at,0x4700
    5ddc:	44810000 	mtc1	at,$f0
    5de0:	c7a60084 	lwc1	$f6,132(sp)
    5de4:	8e4d0000 	lw	t5,0(s2)
    5de8:	3c010000 	lui	at,0x0
    5dec:	c4220000 	lwc1	$f2,0(at)
    5df0:	e5a60024 	swc1	$f6,36(t5)
    5df4:	c7a80088 	lwc1	$f8,136(sp)
    5df8:	8e4e0000 	lw	t6,0(s2)
    5dfc:	3c063dcc 	lui	a2,0x3dcc
    5e00:	34c6cccd 	ori	a2,a2,0xcccd
    5e04:	e5c80028 	swc1	$f8,40(t6)
    5e08:	c7aa008c 	lwc1	$f10,140(sp)
    5e0c:	8e590000 	lw	t9,0(s2)
    5e10:	262401b0 	addiu	a0,s1,432
    5e14:	3c0542a0 	lui	a1,0x42a0
    5e18:	e72a002c 	swc1	$f10,44(t9)
    5e1c:	c62401a8 	lwc1	$f4,424(s1)
    5e20:	8e580000 	lw	t8,0(s2)
    5e24:	3c0740a0 	lui	a3,0x40a0
    5e28:	46022183 	div.s	$f6,$f4,$f2
    5e2c:	46003202 	mul.s	$f8,$f6,$f0
    5e30:	4600428d 	trunc.w.s	$f10,$f8
    5e34:	44025000 	mfc1	v0,$f10
    5e38:	00000000 	nop
    5e3c:	00021400 	sll	v0,v0,0x10
    5e40:	00021403 	sra	v0,v0,0x10
    5e44:	a70200b6 	sh	v0,182(t8)
    5e48:	8e4a0000 	lw	t2,0(s2)
    5e4c:	a5420032 	sh	v0,50(t2)
    5e50:	c7a40084 	lwc1	$f4,132(sp)
    5e54:	8e680000 	lw	t0,0(s3)
    5e58:	46002187 	neg.s	$f6,$f4
    5e5c:	e5060024 	swc1	$f6,36(t0)
    5e60:	8e690000 	lw	t1,0(s3)
    5e64:	c7a80088 	lwc1	$f8,136(sp)
    5e68:	e5280028 	swc1	$f8,40(t1)
    5e6c:	c7aa008c 	lwc1	$f10,140(sp)
    5e70:	8e6b0000 	lw	t3,0(s3)
    5e74:	46005107 	neg.s	$f4,$f10
    5e78:	e564002c 	swc1	$f4,44(t3)
    5e7c:	c62601a8 	lwc1	$f6,424(s1)
    5e80:	8e6d0000 	lw	t5,0(s3)
    5e84:	46023203 	div.s	$f8,$f6,$f2
    5e88:	46004282 	mul.s	$f10,$f8,$f0
    5e8c:	46005100 	add.s	$f4,$f10,$f0
    5e90:	4600218d 	trunc.w.s	$f6,$f4
    5e94:	44023000 	mfc1	v0,$f6
    5e98:	00000000 	nop
    5e9c:	00021400 	sll	v0,v0,0x10
    5ea0:	00021403 	sra	v0,v0,0x10
    5ea4:	a5a20032 	sh	v0,50(t5)
    5ea8:	8e6e0000 	lw	t6,0(s3)
    5eac:	0c000000 	jal	0 <func_80938CD0>
    5eb0:	a5c200b6 	sh	v0,182(t6)
    5eb4:	c62801a8 	lwc1	$f8,424(s1)
    5eb8:	c62a01ac 	lwc1	$f10,428(s1)
    5ebc:	3c053e4c 	lui	a1,0x3e4c
    5ec0:	3c073b03 	lui	a3,0x3b03
    5ec4:	460a4101 	sub.s	$f4,$f8,$f10
    5ec8:	34e7126c 	ori	a3,a3,0x126c
    5ecc:	34a5cccc 	ori	a1,a1,0xcccc
    5ed0:	262401ac 	addiu	a0,s1,428
    5ed4:	e62401a8 	swc1	$f4,424(s1)
    5ed8:	0c000000 	jal	0 <func_80938CD0>
    5edc:	3c063f80 	lui	a2,0x3f80
    5ee0:	86230150 	lh	v1,336(s1)
    5ee4:	3c120000 	lui	s2,0x0
    5ee8:	3c130000 	lui	s3,0x0
    5eec:	240100c8 	li	at,200
    5ef0:	26730000 	addiu	s3,s3,0
    5ef4:	14610021 	bne	v1,at,5f7c <L8093E854+0x3f8>
    5ef8:	26520000 	addiu	s2,s2,0
    5efc:	8e590000 	lw	t9,0(s2)
    5f00:	3c020000 	lui	v0,0x0
    5f04:	24420000 	addiu	v0,v0,0
    5f08:	af22014c 	sw	v0,332(t9)
    5f0c:	8e6f0000 	lw	t7,0(s3)
    5f10:	3c014416 	lui	at,0x4416
    5f14:	44817000 	mtc1	at,$f14
    5f18:	ade2014c 	sw	v0,332(t7)
    5f1c:	8e580000 	lw	t8,0(s2)
    5f20:	3c01c416 	lui	at,0xc416
    5f24:	44818000 	mtc1	at,$f16
    5f28:	3c0143c8 	lui	at,0x43c8
    5f2c:	e70e04b0 	swc1	$f14,1200(t8)
    5f30:	8e4a0000 	lw	t2,0(s2)
    5f34:	44813000 	mtc1	at,$f6
    5f38:	44800000 	mtc1	zero,$f0
    5f3c:	24040064 	li	a0,100
    5f40:	e54604b4 	swc1	$f6,1204(t2)
    5f44:	8e480000 	lw	t0,0(s2)
    5f48:	44814000 	mtc1	at,$f8
    5f4c:	e50004b8 	swc1	$f0,1208(t0)
    5f50:	8e490000 	lw	t1,0(s2)
    5f54:	a5240178 	sh	a0,376(t1)
    5f58:	8e6b0000 	lw	t3,0(s3)
    5f5c:	e57004b0 	swc1	$f16,1200(t3)
    5f60:	8e6c0000 	lw	t4,0(s3)
    5f64:	e58804b4 	swc1	$f8,1204(t4)
    5f68:	8e6d0000 	lw	t5,0(s3)
    5f6c:	e5a004b8 	swc1	$f0,1208(t5)
    5f70:	8e6e0000 	lw	t6,0(s3)
    5f74:	a5c40178 	sh	a0,376(t6)
    5f78:	86230150 	lh	v1,336(s1)
    5f7c:	24010104 	li	at,260
    5f80:	14610026 	bne	v1,at,601c <L8093ECEC>
    5f84:	8fa400a4 	lw	a0,164(sp)
    5f88:	0c000000 	jal	0 <func_80938CD0>
    5f8c:	00002825 	move	a1,zero
    5f90:	8e0f0000 	lw	t7,0(s0)
    5f94:	00003025 	move	a2,zero
    5f98:	ac4f005c 	sw	t7,92(v0)
    5f9c:	8e190004 	lw	t9,4(s0)
    5fa0:	ac590060 	sw	t9,96(v0)
    5fa4:	8e0f0008 	lw	t7,8(s0)
    5fa8:	ac4f0064 	sw	t7,100(v0)
    5fac:	8e0a0000 	lw	t2,0(s0)
    5fb0:	ac4a0074 	sw	t2,116(v0)
    5fb4:	8e180004 	lw	t8,4(s0)
    5fb8:	ac580078 	sw	t8,120(v0)
    5fbc:	8e0a0008 	lw	t2,8(s0)
    5fc0:	ac4a007c 	sw	t2,124(v0)
    5fc4:	8e29060c 	lw	t1,1548(s1)
    5fc8:	ac490050 	sw	t1,80(v0)
    5fcc:	8e280610 	lw	t0,1552(s1)
    5fd0:	ac480054 	sw	t0,84(v0)
    5fd4:	8e290614 	lw	t1,1556(s1)
    5fd8:	ac490058 	sw	t1,88(v0)
    5fdc:	862505fc 	lh	a1,1532(s1)
    5fe0:	0c000000 	jal	0 <func_80938CD0>
    5fe4:	8fa400a4 	lw	a0,164(sp)
    5fe8:	8fa400a4 	lw	a0,164(sp)
    5fec:	a62005fc 	sh	zero,1532(s1)
    5ff0:	862b05fc 	lh	t3,1532(s1)
    5ff4:	24851d64 	addiu	a1,a0,7524
    5ff8:	0c000000 	jal	0 <func_80938CD0>
    5ffc:	a62b05fa 	sh	t3,1530(s1)
    6000:	8fa400a4 	lw	a0,164(sp)
    6004:	02202825 	move	a1,s1
    6008:	0c000000 	jal	0 <func_80938CD0>
    600c:	24060007 	li	a2,7
    6010:	02202025 	move	a0,s1
    6014:	0c000000 	jal	0 <func_80938CD0>
    6018:	8fa500a4 	lw	a1,164(sp)

0000601c <L8093ECEC>:
    601c:	862505fc 	lh	a1,1532(s1)
    6020:	93ac009f 	lbu	t4,159(sp)
    6024:	10a0003f 	beqz	a1,6124 <L8093ECEC+0x108>
    6028:	26300600 	addiu	s0,s1,1536
    602c:	11800039 	beqz	t4,6114 <L8093ECEC+0xf8>
    6030:	2633060c 	addiu	s3,s1,1548
    6034:	c62a0654 	lwc1	$f10,1620(s1)
    6038:	c624069c 	lwc1	$f4,1692(s1)
    603c:	02002025 	move	a0,s0
    6040:	8e25066c 	lw	a1,1644(s1)
    6044:	46045182 	mul.s	$f6,$f10,$f4
    6048:	8e2606a0 	lw	a2,1696(s1)
    604c:	26320608 	addiu	s2,s1,1544
    6050:	44073000 	mfc1	a3,$f6
    6054:	0c000000 	jal	0 <func_80938CD0>
    6058:	00000000 	nop
    605c:	c6280658 	lwc1	$f8,1624(s1)
    6060:	c62a069c 	lwc1	$f10,1692(s1)
    6064:	26240604 	addiu	a0,s1,1540
    6068:	8e250670 	lw	a1,1648(s1)
    606c:	460a4102 	mul.s	$f4,$f8,$f10
    6070:	8e2606a0 	lw	a2,1696(s1)
    6074:	44072000 	mfc1	a3,$f4
    6078:	0c000000 	jal	0 <func_80938CD0>
    607c:	00000000 	nop
    6080:	c626065c 	lwc1	$f6,1628(s1)
    6084:	c628069c 	lwc1	$f8,1692(s1)
    6088:	02402025 	move	a0,s2
    608c:	8e250674 	lw	a1,1652(s1)
    6090:	46083282 	mul.s	$f10,$f6,$f8
    6094:	8e2606a0 	lw	a2,1696(s1)
    6098:	44075000 	mfc1	a3,$f10
    609c:	0c000000 	jal	0 <func_80938CD0>
    60a0:	00000000 	nop
    60a4:	c6240660 	lwc1	$f4,1632(s1)
    60a8:	c626069c 	lwc1	$f6,1692(s1)
    60ac:	02602025 	move	a0,s3
    60b0:	8e250684 	lw	a1,1668(s1)
    60b4:	46062202 	mul.s	$f8,$f4,$f6
    60b8:	8e2606a0 	lw	a2,1696(s1)
    60bc:	44074000 	mfc1	a3,$f8
    60c0:	0c000000 	jal	0 <func_80938CD0>
    60c4:	00000000 	nop
    60c8:	c62a0664 	lwc1	$f10,1636(s1)
    60cc:	c624069c 	lwc1	$f4,1692(s1)
    60d0:	26240610 	addiu	a0,s1,1552
    60d4:	8e250688 	lw	a1,1672(s1)
    60d8:	46045182 	mul.s	$f6,$f10,$f4
    60dc:	8e2606a0 	lw	a2,1696(s1)
    60e0:	44073000 	mfc1	a3,$f6
    60e4:	0c000000 	jal	0 <func_80938CD0>
    60e8:	00000000 	nop
    60ec:	c6280668 	lwc1	$f8,1640(s1)
    60f0:	c62a069c 	lwc1	$f10,1692(s1)
    60f4:	26240614 	addiu	a0,s1,1556
    60f8:	8e25068c 	lw	a1,1676(s1)
    60fc:	460a4102 	mul.s	$f4,$f8,$f10
    6100:	8e2606a0 	lw	a2,1696(s1)
    6104:	44072000 	mfc1	a3,$f4
    6108:	0c000000 	jal	0 <func_80938CD0>
    610c:	00000000 	nop
    6110:	862505fc 	lh	a1,1532(s1)
    6114:	8fa400a4 	lw	a0,164(sp)
    6118:	02603025 	move	a2,s3
    611c:	0c000000 	jal	0 <func_80938CD0>
    6120:	02003825 	move	a3,s0
    6124:	8fbf0034 	lw	ra,52(sp)
    6128:	8fb00024 	lw	s0,36(sp)
    612c:	8fb10028 	lw	s1,40(sp)
    6130:	8fb2002c 	lw	s2,44(sp)
    6134:	8fb30030 	lw	s3,48(sp)
    6138:	03e00008 	jr	ra
    613c:	27bd00a0 	addiu	sp,sp,160

00006140 <func_8093EE10>:
    6140:	27bdffc8 	addiu	sp,sp,-56
    6144:	afbf001c 	sw	ra,28(sp)
    6148:	afb00018 	sw	s0,24(sp)
    614c:	afa5003c 	sw	a1,60(sp)
    6150:	848e0150 	lh	t6,336(a0)
    6154:	00808025 	move	s0,a0
    6158:	31cf000f 	andi	t7,t6,0xf
    615c:	15e00003 	bnez	t7,616c <func_8093EE10+0x2c>
    6160:	00000000 	nop
    6164:	0c000000 	jal	0 <func_80938CD0>
    6168:	2405391e 	li	a1,14622
    616c:	3c180000 	lui	t8,0x0
    6170:	8f180000 	lw	t8,0(t8)
    6174:	871905fa 	lh	t9,1530(t8)
    6178:	2b210002 	slti	at,t9,2
    617c:	50200027 	beqzl	at,621c <func_8093EE10+0xdc>
    6180:	860d017a 	lh	t5,378(s0)
    6184:	86080178 	lh	t0,376(s0)
    6188:	24090014 	li	t1,20
    618c:	3c0142c8 	lui	at,0x42c8
    6190:	55000019 	bnezl	t0,61f8 <func_8093EE10+0xb8>
    6194:	3c014600 	lui	at,0x4600
    6198:	44816000 	mtc1	at,$f12
    619c:	0c000000 	jal	0 <func_80938CD0>
    61a0:	a6090178 	sh	t1,376(s0)
    61a4:	3c0a0000 	lui	t2,0x0
    61a8:	8d4a0000 	lw	t2,0(t2)
    61ac:	3c014248 	lui	at,0x4248
    61b0:	44816000 	mtc1	at,$f12
    61b4:	c5440024 	lwc1	$f4,36(t2)
    61b8:	46040180 	add.s	$f6,$f0,$f4
    61bc:	0c000000 	jal	0 <func_80938CD0>
    61c0:	e60604b0 	swc1	$f6,1200(s0)
    61c4:	3c0143c8 	lui	at,0x43c8
    61c8:	44814000 	mtc1	at,$f8
    61cc:	3c0142c8 	lui	at,0x42c8
    61d0:	44816000 	mtc1	at,$f12
    61d4:	46080280 	add.s	$f10,$f0,$f8
    61d8:	0c000000 	jal	0 <func_80938CD0>
    61dc:	e60a04b4 	swc1	$f10,1204(s0)
    61e0:	3c0b0000 	lui	t3,0x0
    61e4:	8d6b0000 	lw	t3,0(t3)
    61e8:	c572002c 	lwc1	$f18,44(t3)
    61ec:	46120100 	add.s	$f4,$f0,$f18
    61f0:	e60404b8 	swc1	$f4,1208(s0)
    61f4:	3c014600 	lui	at,0x4600
    61f8:	44813000 	mtc1	at,$f6
    61fc:	3c0140a0 	lui	at,0x40a0
    6200:	44814000 	mtc1	at,$f8
    6204:	240c000a 	li	t4,10
    6208:	a60c017a 	sh	t4,378(s0)
    620c:	e60604c8 	swc1	$f6,1224(s0)
    6210:	1000004a 	b	633c <func_8093EE10+0x1fc>
    6214:	e6080068 	swc1	$f8,104(s0)
    6218:	860d017a 	lh	t5,378(s0)
    621c:	24010009 	li	at,9
    6220:	00001025 	move	v0,zero
    6224:	15a10017 	bne	t5,at,6284 <func_8093EE10+0x144>
    6228:	26040024 	addiu	a0,s0,36
    622c:	3c010000 	lui	at,0x0
    6230:	c42a0000 	lwc1	$f10,0(at)
    6234:	44809000 	mtc1	zero,$f18
    6238:	44802000 	mtc1	zero,$f4
    623c:	2403000c 	li	v1,12
    6240:	e60a04b4 	swc1	$f10,1204(s0)
    6244:	e612002c 	swc1	$f18,44(s0)
    6248:	e6040024 	swc1	$f4,36(s0)
    624c:	00430019 	multu	v0,v1
    6250:	8c990000 	lw	t9,0(a0)
    6254:	24420001 	addiu	v0,v0,1
    6258:	00021400 	sll	v0,v0,0x10
    625c:	00021403 	sra	v0,v0,0x10
    6260:	28410032 	slti	at,v0,50
    6264:	00007012 	mflo	t6
    6268:	020e7821 	addu	t7,s0,t6
    626c:	adf901e8 	sw	t9,488(t7)
    6270:	8c980004 	lw	t8,4(a0)
    6274:	adf801ec 	sw	t8,492(t7)
    6278:	8c990008 	lw	t9,8(a0)
    627c:	1420fff3 	bnez	at,624c <func_8093EE10+0x10c>
    6280:	adf901f0 	sw	t9,496(t7)
    6284:	8608001c 	lh	t0,28(s0)
    6288:	24010069 	li	at,105
    628c:	3c020000 	lui	v0,0x0
    6290:	15010008 	bne	t0,at,62b4 <func_8093EE10+0x174>
    6294:	24420000 	addiu	v0,v0,0
    6298:	8c490000 	lw	t1,0(v0)
    629c:	c5260024 	lwc1	$f6,36(t1)
    62a0:	e60604b0 	swc1	$f6,1200(s0)
    62a4:	8c4a0000 	lw	t2,0(v0)
    62a8:	c548002c 	lwc1	$f8,44(t2)
    62ac:	10000009 	b	62d4 <func_8093EE10+0x194>
    62b0:	e60804b8 	swc1	$f8,1208(s0)
    62b4:	3c020000 	lui	v0,0x0
    62b8:	24420000 	addiu	v0,v0,0
    62bc:	8c4b0000 	lw	t3,0(v0)
    62c0:	c56a0024 	lwc1	$f10,36(t3)
    62c4:	e60a04b0 	swc1	$f10,1200(s0)
    62c8:	8c4c0000 	lw	t4,0(v0)
    62cc:	c592002c 	lwc1	$f18,44(t4)
    62d0:	e61204b8 	swc1	$f18,1208(s0)
    62d4:	3c054383 	lui	a1,0x4383
    62d8:	34a58000 	ori	a1,a1,0x8000
    62dc:	260404b4 	addiu	a0,s0,1204
    62e0:	3c063f80 	lui	a2,0x3f80
    62e4:	0c000000 	jal	0 <func_80938CD0>
    62e8:	3c074000 	lui	a3,0x4000
    62ec:	3c010000 	lui	at,0x0
    62f0:	c4240000 	lwc1	$f4,0(at)
    62f4:	c60604b4 	lwc1	$f6,1204(s0)
    62f8:	26040068 	addiu	a0,s0,104
    62fc:	24050000 	li	a1,0
    6300:	46062032 	c.eq.s	$f4,$f6
    6304:	3c063f80 	lui	a2,0x3f80
    6308:	3c073e4c 	lui	a3,0x3e4c
    630c:	4502000c 	bc1fl	6340 <func_8093EE10+0x200>
    6310:	c61204b4 	lwc1	$f18,1204(s0)
    6314:	0c000000 	jal	0 <func_80938CD0>
    6318:	34e7cccd 	ori	a3,a3,0xcccd
    631c:	3c0d0000 	lui	t5,0x0
    6320:	8dad0000 	lw	t5,0(t5)
    6324:	24010003 	li	at,3
    6328:	85ae05fa 	lh	t6,1530(t5)
    632c:	55c10004 	bnel	t6,at,6340 <func_8093EE10+0x200>
    6330:	c61204b4 	lwc1	$f18,1204(s0)
    6334:	0c000000 	jal	0 <func_80938CD0>
    6338:	02002025 	move	a0,s0
    633c:	c61204b4 	lwc1	$f18,1204(s0)
    6340:	c6040028 	lwc1	$f4,40(s0)
    6344:	c60804b0 	lwc1	$f8,1200(s0)
    6348:	c60a0024 	lwc1	$f10,36(s0)
    634c:	46049181 	sub.s	$f6,$f18,$f4
    6350:	460a4301 	sub.s	$f12,$f8,$f10
    6354:	e7a60030 	swc1	$f6,48(sp)
    6358:	c60a002c 	lwc1	$f10,44(s0)
    635c:	c60804b8 	lwc1	$f8,1208(s0)
    6360:	e7ac0034 	swc1	$f12,52(sp)
    6364:	460a4381 	sub.s	$f14,$f8,$f10
    6368:	0c000000 	jal	0 <func_80938CD0>
    636c:	e7ae002c 	swc1	$f14,44(sp)
    6370:	3c010000 	lui	at,0x0
    6374:	c4320000 	lwc1	$f18,0(at)
    6378:	c7a20034 	lwc1	$f2,52(sp)
    637c:	c7b0002c 	lwc1	$f16,44(sp)
    6380:	46120102 	mul.s	$f4,$f0,$f18
    6384:	c7ac0030 	lwc1	$f12,48(sp)
    6388:	46021202 	mul.s	$f8,$f2,$f2
    638c:	00000000 	nop
    6390:	46108282 	mul.s	$f10,$f16,$f16
    6394:	4600218d 	trunc.w.s	$f6,$f4
    6398:	460a4000 	add.s	$f0,$f8,$f10
    639c:	44183000 	mfc1	t8,$f6
    63a0:	46000384 	sqrt.s	$f14,$f0
    63a4:	0c000000 	jal	0 <func_80938CD0>
    63a8:	a7b80024 	sh	t8,36(sp)
    63ac:	3c010000 	lui	at,0x0
    63b0:	c4320000 	lwc1	$f18,0(at)
    63b4:	c60804c8 	lwc1	$f8,1224(s0)
    63b8:	26040030 	addiu	a0,s0,48
    63bc:	46120102 	mul.s	$f4,$f0,$f18
    63c0:	4600428d 	trunc.w.s	$f10,$f8
    63c4:	24060005 	li	a2,5
    63c8:	44075000 	mfc1	a3,$f10
    63cc:	4600218d 	trunc.w.s	$f6,$f4
    63d0:	00073c00 	sll	a3,a3,0x10
    63d4:	00073c03 	sra	a3,a3,0x10
    63d8:	44053000 	mfc1	a1,$f6
    63dc:	00000000 	nop
    63e0:	00052c00 	sll	a1,a1,0x10
    63e4:	0c000000 	jal	0 <func_80938CD0>
    63e8:	00052c03 	sra	a1,a1,0x10
    63ec:	c61204c8 	lwc1	$f18,1224(s0)
    63f0:	26040032 	addiu	a0,s0,50
    63f4:	87a50024 	lh	a1,36(sp)
    63f8:	4600910d 	trunc.w.s	$f4,$f18
    63fc:	24060005 	li	a2,5
    6400:	44072000 	mfc1	a3,$f4
    6404:	00000000 	nop
    6408:	00073c00 	sll	a3,a3,0x10
    640c:	0c000000 	jal	0 <func_80938CD0>
    6410:	00073c03 	sra	a3,a3,0x10
    6414:	0c000000 	jal	0 <func_80938CD0>
    6418:	02002025 	move	a0,s0
    641c:	0c000000 	jal	0 <func_80938CD0>
    6420:	02002025 	move	a0,s0
    6424:	8fbf001c 	lw	ra,28(sp)
    6428:	8fb00018 	lw	s0,24(sp)
    642c:	27bd0038 	addiu	sp,sp,56
    6430:	03e00008 	jr	ra
    6434:	00000000 	nop

00006438 <func_8093F108>:
    6438:	27bdffe0 	addiu	sp,sp,-32
    643c:	afb00018 	sw	s0,24(sp)
    6440:	afa50024 	sw	a1,36(sp)
    6444:	3c0e0000 	lui	t6,0x0
    6448:	00808025 	move	s0,a0
    644c:	afbf001c 	sw	ra,28(sp)
    6450:	25ce0000 	addiu	t6,t6,0
    6454:	3c050602 	lui	a1,0x602
    6458:	ac8e014c 	sw	t6,332(a0)
    645c:	24a54374 	addiu	a1,a1,17268
    6460:	24840568 	addiu	a0,a0,1384
    6464:	0c000000 	jal	0 <func_80938CD0>
    6468:	3c06c040 	lui	a2,0xc040
    646c:	8e180004 	lw	t8,4(s0)
    6470:	a6000440 	sh	zero,1088(s0)
    6474:	a6000152 	sh	zero,338(s0)
    6478:	860f00b6 	lh	t7,182(s0)
    647c:	86080440 	lh	t0,1088(s0)
    6480:	86090152 	lh	t1,338(s0)
    6484:	2401fffe 	li	at,-2
    6488:	240a2710 	li	t2,10000
    648c:	0301c824 	and	t9,t8,at
    6490:	ae190004 	sw	t9,4(s0)
    6494:	a60a015a 	sh	t2,346(s0)
    6498:	3c040000 	lui	a0,0x0
    649c:	a60f0032 	sh	t7,50(s0)
    64a0:	a60805fa 	sh	t0,1530(s0)
    64a4:	a6090150 	sh	t1,336(s0)
    64a8:	8fa50024 	lw	a1,36(sp)
    64ac:	0c000000 	jal	0 <func_80938CD0>
    64b0:	8c840000 	lw	a0,0(a0)
    64b4:	3c040000 	lui	a0,0x0
    64b8:	8c840000 	lw	a0,0(a0)
    64bc:	0c000000 	jal	0 <func_80938CD0>
    64c0:	8fa50024 	lw	a1,36(sp)
    64c4:	3c0c0000 	lui	t4,0x0
    64c8:	8d8c0000 	lw	t4,0(t4)
    64cc:	3c013f80 	lui	at,0x3f80
    64d0:	44812000 	mtc1	at,$f4
    64d4:	240b0008 	li	t3,8
    64d8:	a58b0178 	sh	t3,376(t4)
    64dc:	e60401d0 	swc1	$f4,464(s0)
    64e0:	8fbf001c 	lw	ra,28(sp)
    64e4:	8fb00018 	lw	s0,24(sp)
    64e8:	27bd0020 	addiu	sp,sp,32
    64ec:	03e00008 	jr	ra
    64f0:	00000000 	nop

000064f4 <func_8093F1C4>:
    64f4:	27bdffb8 	addiu	sp,sp,-72
    64f8:	afbf001c 	sw	ra,28(sp)
    64fc:	afb00018 	sw	s0,24(sp)
    6500:	afa5004c 	sw	a1,76(sp)
    6504:	a7a00038 	sh	zero,56(sp)
    6508:	a3a00037 	sb	zero,55(sp)
    650c:	a3a00036 	sb	zero,54(sp)
    6510:	a3a00035 	sb	zero,53(sp)
    6514:	84820152 	lh	v0,338(a0)
    6518:	24060050 	li	a2,80
    651c:	00808025 	move	s0,a0
    6520:	14c20003 	bne	a2,v0,6530 <func_8093F1C4+0x3c>
    6524:	00001825 	move	v1,zero
    6528:	240e0001 	li	t6,1
    652c:	a3ae0036 	sb	t6,54(sp)
    6530:	14c20004 	bne	a2,v0,6544 <func_8093F1C4+0x50>
    6534:	2401008c 	li	at,140
    6538:	240f0032 	li	t7,50
    653c:	2403604b 	li	v1,24651
    6540:	a3af0035 	sb	t7,53(sp)
    6544:	14410004 	bne	v0,at,6558 <func_8093F1C4+0x64>
    6548:	24180002 	li	t8,2
    654c:	24190002 	li	t9,2
    6550:	a3b90037 	sb	t9,55(sp)
    6554:	a3b80036 	sb	t8,54(sp)
    6558:	240100aa 	li	at,170
    655c:	54410011 	bnel	v0,at,65a4 <func_8093F1C4+0xb0>
    6560:	240100d2 	li	at,210
    6564:	3c020000 	lui	v0,0x0
    6568:	24420000 	addiu	v0,v0,0
    656c:	8c4a0000 	lw	t2,0(v0)
    6570:	24080003 	li	t0,3
    6574:	a3a80037 	sb	t0,55(sp)
    6578:	2409c000 	li	t1,-16384
    657c:	a5490164 	sh	t1,356(t2)
    6580:	8c4b0000 	lw	t3,0(v0)
    6584:	44802000 	mtc1	zero,$f4
    6588:	240539b4 	li	a1,14772
    658c:	e56404c8 	swc1	$f4,1224(t3)
    6590:	0c000000 	jal	0 <func_80938CD0>
    6594:	8c440000 	lw	a0,0(v0)
    6598:	2403604c 	li	v1,24652
    659c:	86020152 	lh	v0,338(s0)
    65a0:	240100d2 	li	at,210
    65a4:	14410004 	bne	v0,at,65b8 <func_8093F1C4+0xc4>
    65a8:	240c001e 	li	t4,30
    65ac:	3c010000 	lui	at,0x0
    65b0:	a42c0000 	sh	t4,0(at)
    65b4:	86020152 	lh	v0,338(s0)
    65b8:	2401010e 	li	at,270
    65bc:	54410012 	bnel	v0,at,6608 <func_8093F1C4+0x114>
    65c0:	24010122 	li	at,290
    65c4:	3c020000 	lui	v0,0x0
    65c8:	24420000 	addiu	v0,v0,0
    65cc:	8c4f0000 	lw	t7,0(v0)
    65d0:	240d0003 	li	t5,3
    65d4:	a3ad0036 	sb	t5,54(sp)
    65d8:	240e4000 	li	t6,16384
    65dc:	a5ee0164 	sh	t6,356(t7)
    65e0:	8c580000 	lw	t8,0(v0)
    65e4:	44803000 	mtc1	zero,$f6
    65e8:	240539b4 	li	a1,14772
    65ec:	e70604c8 	swc1	$f6,1224(t8)
    65f0:	a7a3003a 	sh	v1,58(sp)
    65f4:	0c000000 	jal	0 <func_80938CD0>
    65f8:	8c440000 	lw	a0,0(v0)
    65fc:	87a3003a 	lh	v1,58(sp)
    6600:	86020152 	lh	v0,338(s0)
    6604:	24010122 	li	at,290
    6608:	14410003 	bne	v0,at,6618 <func_8093F1C4+0x124>
    660c:	24190023 	li	t9,35
    6610:	2403604d 	li	v1,24653
    6614:	a3b90035 	sb	t9,53(sp)
    6618:	2401015e 	li	at,350
    661c:	14410018 	bne	v0,at,6680 <func_8093F1C4+0x18c>
    6620:	3c0a0000 	lui	t2,0x0
    6624:	8d4a0000 	lw	t2,0(t2)
    6628:	24080002 	li	t0,2
    662c:	24090002 	li	t1,2
    6630:	a3a90036 	sb	t1,54(sp)
    6634:	a3a80037 	sb	t0,55(sp)
    6638:	3c0b0000 	lui	t3,0x0
    663c:	a5400164 	sh	zero,356(t2)
    6640:	8d6b0000 	lw	t3,0(t3)
    6644:	3c0d0000 	lui	t5,0x0
    6648:	8dad0000 	lw	t5,0(t5)
    664c:	856c0164 	lh	t4,356(t3)
    6650:	3c0e0000 	lui	t6,0x0
    6654:	44804000 	mtc1	zero,$f8
    6658:	a5ac0164 	sh	t4,356(t5)
    665c:	8dce0000 	lw	t6,0(t6)
    6660:	3c0f0000 	lui	t7,0x0
    6664:	3c180000 	lui	t8,0x0
    6668:	e5c804c8 	swc1	$f8,1224(t6)
    666c:	8def0000 	lw	t7,0(t7)
    6670:	8f180000 	lw	t8,0(t8)
    6674:	c5ea04c8 	lwc1	$f10,1224(t7)
    6678:	e70a04c8 	swc1	$f10,1224(t8)
    667c:	86020152 	lh	v0,338(s0)
    6680:	2401017c 	li	at,380
    6684:	14410004 	bne	v0,at,6698 <func_8093F1C4+0x1a4>
    6688:	24190003 	li	t9,3
    668c:	24080003 	li	t0,3
    6690:	a3a80036 	sb	t0,54(sp)
    6694:	a3b90037 	sb	t9,55(sp)
    6698:	24010190 	li	at,400
    669c:	14410004 	bne	v0,at,66b0 <func_8093F1C4+0x1bc>
    66a0:	24090002 	li	t1,2
    66a4:	240a0002 	li	t2,2
    66a8:	a3aa0036 	sb	t2,54(sp)
    66ac:	a3a90037 	sb	t1,55(sp)
    66b0:	240101ae 	li	at,430
    66b4:	14410009 	bne	v0,at,66dc <func_8093F1C4+0x1e8>
    66b8:	240c01b3 	li	t4,435
    66bc:	3c010000 	lui	at,0x0
    66c0:	a42c0000 	sh	t4,0(at)
    66c4:	240b0004 	li	t3,4
    66c8:	3c010000 	lui	at,0x0
    66cc:	240d0001 	li	t5,1
    66d0:	a3ab0036 	sb	t3,54(sp)
    66d4:	a02d0000 	sb	t5,0(at)
    66d8:	86020152 	lh	v0,338(s0)
    66dc:	284101b9 	slti	at,v0,441
    66e0:	14200007 	bnez	at,6700 <func_8093F1C4+0x20c>
    66e4:	2841035c 	slti	at,v0,860
    66e8:	10200005 	beqz	at,6700 <func_8093F1C4+0x20c>
    66ec:	240431e7 	li	a0,12775
    66f0:	0c000000 	jal	0 <func_80938CD0>
    66f4:	a7a3003a 	sh	v1,58(sp)
    66f8:	87a3003a 	lh	v1,58(sp)
    66fc:	86020152 	lh	v0,338(s0)
    6700:	240101ae 	li	at,430
    6704:	14410002 	bne	v0,at,6710 <func_8093F1C4+0x21c>
    6708:	240401e0 	li	a0,480
    670c:	2403604e 	li	v1,24654
    6710:	14820008 	bne	a0,v0,6734 <func_8093F1C4+0x240>
    6714:	240101f4 	li	at,500
    6718:	3c180000 	lui	t8,0x0
    671c:	8f180000 	lw	t8,0(t8)
    6720:	240e0004 	li	t6,4
    6724:	a3ae0037 	sb	t6,55(sp)
    6728:	240fc000 	li	t7,-16384
    672c:	a70f0164 	sh	t7,356(t8)
    6730:	86020152 	lh	v0,338(s0)
    6734:	14410002 	bne	v0,at,6740 <func_8093F1C4+0x24c>
    6738:	24190002 	li	t9,2
    673c:	a3b90036 	sb	t9,54(sp)
    6740:	14820002 	bne	a0,v0,674c <func_8093F1C4+0x258>
    6744:	2408604f 	li	t0,24655
    6748:	a7a80038 	sh	t0,56(sp)
    674c:	24040212 	li	a0,530
    6750:	1482000d 	bne	a0,v0,6788 <func_8093F1C4+0x294>
    6754:	3c0b0000 	lui	t3,0x0
    6758:	8d6b0000 	lw	t3,0(t3)
    675c:	24090004 	li	t1,4
    6760:	a3a90036 	sb	t1,54(sp)
    6764:	240a4000 	li	t2,16384
    6768:	240c014f 	li	t4,335
    676c:	3c010000 	lui	at,0x0
    6770:	a56a0164 	sh	t2,356(t3)
    6774:	a42c0000 	sh	t4,0(at)
    6778:	3c010000 	lui	at,0x0
    677c:	240d0001 	li	t5,1
    6780:	a02d0000 	sb	t5,0(at)
    6784:	86020152 	lh	v0,338(s0)
    6788:	14820002 	bne	a0,v0,6794 <func_8093F1C4+0x2a0>
    678c:	24010244 	li	at,580
    6790:	24036050 	li	v1,24656
    6794:	14410002 	bne	v0,at,67a0 <func_8093F1C4+0x2ac>
    6798:	240e6051 	li	t6,24657
    679c:	a7ae0038 	sh	t6,56(sp)
    67a0:	2401026c 	li	at,620
    67a4:	54410003 	bnel	v0,at,67b4 <func_8093F1C4+0x2c0>
    67a8:	24010294 	li	at,660
    67ac:	24036052 	li	v1,24658
    67b0:	24010294 	li	at,660
    67b4:	14410002 	bne	v0,at,67c0 <func_8093F1C4+0x2cc>
    67b8:	240f6053 	li	t7,24659
    67bc:	a7af0038 	sh	t7,56(sp)
    67c0:	240102bc 	li	at,700
    67c4:	54410003 	bnel	v0,at,67d4 <func_8093F1C4+0x2e0>
    67c8:	240102e4 	li	at,740
    67cc:	24036054 	li	v1,24660
    67d0:	240102e4 	li	at,740
    67d4:	14410002 	bne	v0,at,67e0 <func_8093F1C4+0x2ec>
    67d8:	24186055 	li	t8,24661
    67dc:	a7b80038 	sh	t8,56(sp)
    67e0:	2401030c 	li	at,780
    67e4:	54410003 	bnel	v0,at,67f4 <func_8093F1C4+0x300>
    67e8:	24010334 	li	at,820
    67ec:	24036056 	li	v1,24662
    67f0:	24010334 	li	at,820
    67f4:	14410008 	bne	v0,at,6818 <func_8093F1C4+0x324>
    67f8:	24196057 	li	t9,24663
    67fc:	3c041050 	lui	a0,0x1050
    6800:	a7b90038 	sh	t9,56(sp)
    6804:	348400ff 	ori	a0,a0,0xff
    6808:	0c000000 	jal	0 <func_80938CD0>
    680c:	a7a3003a 	sh	v1,58(sp)
    6810:	87a3003a 	lh	v1,58(sp)
    6814:	86020152 	lh	v0,338(s0)
    6818:	2401035c 	li	at,860
    681c:	14410004 	bne	v0,at,6830 <func_8093F1C4+0x33c>
    6820:	24080003 	li	t0,3
    6824:	24090003 	li	t1,3
    6828:	a3a90036 	sb	t1,54(sp)
    682c:	a3a80037 	sb	t0,55(sp)
    6830:	24010384 	li	at,900
    6834:	1441000b 	bne	v0,at,6864 <func_8093F1C4+0x370>
    6838:	3c040000 	lui	a0,0x0
    683c:	8c840000 	lw	a0,0(a0)
    6840:	240539b5 	li	a1,14773
    6844:	0c000000 	jal	0 <func_80938CD0>
    6848:	a7a3003a 	sh	v1,58(sp)
    684c:	3c040000 	lui	a0,0x0
    6850:	8c840000 	lw	a0,0(a0)
    6854:	0c000000 	jal	0 <func_80938CD0>
    6858:	240539b5 	li	a1,14773
    685c:	87a3003a 	lh	v1,58(sp)
    6860:	86020152 	lh	v0,338(s0)
    6864:	240103a2 	li	at,930
    6868:	14410002 	bne	v0,at,6874 <func_8093F1C4+0x380>
    686c:	8fa4004c 	lw	a0,76(sp)
    6870:	24036058 	li	v1,24664
    6874:	1060000d 	beqz	v1,68ac <func_8093F1C4+0x3b8>
    6878:	3065ffff 	andi	a1,v1,0xffff
    687c:	0c000000 	jal	0 <func_80938CD0>
    6880:	00003025 	move	a2,zero
    6884:	93aa0035 	lbu	t2,53(sp)
    6888:	240b000a 	li	t3,10
    688c:	3c010000 	lui	at,0x0
    6890:	51400007 	beqzl	t2,68b0 <func_8093F1C4+0x3bc>
    6894:	87ac0038 	lh	t4,56(sp)
    6898:	a42b0000 	sh	t3,0(at)
    689c:	3c010000 	lui	at,0x0
    68a0:	a42a0000 	sh	t2,0(at)
    68a4:	3c010000 	lui	at,0x0
    68a8:	a0200000 	sb	zero,0(at)
    68ac:	87ac0038 	lh	t4,56(sp)
    68b0:	8fa4004c 	lw	a0,76(sp)
    68b4:	97a50038 	lhu	a1,56(sp)
    68b8:	51800004 	beqzl	t4,68cc <func_8093F1C4+0x3d8>
    68bc:	93a20037 	lbu	v0,55(sp)
    68c0:	0c000000 	jal	0 <func_80938CD0>
    68c4:	00003025 	move	a2,zero
    68c8:	93a20037 	lbu	v0,55(sp)
    68cc:	24010001 	li	at,1
    68d0:	3c040000 	lui	a0,0x0
    68d4:	1041000c 	beq	v0,at,6908 <func_8093F1C4+0x414>
    68d8:	3c050600 	lui	a1,0x600
    68dc:	24010002 	li	at,2
    68e0:	10410010 	beq	v0,at,6924 <func_8093F1C4+0x430>
    68e4:	3c040000 	lui	a0,0x0
    68e8:	24010003 	li	at,3
    68ec:	10410015 	beq	v0,at,6944 <func_8093F1C4+0x450>
    68f0:	3c040000 	lui	a0,0x0
    68f4:	24010004 	li	at,4
    68f8:	1041001a 	beq	v0,at,6964 <func_8093F1C4+0x470>
    68fc:	3c040000 	lui	a0,0x0
    6900:	1000001f 	b	6980 <func_8093F1C4+0x48c>
    6904:	93a20036 	lbu	v0,54(sp)
    6908:	8c840000 	lw	a0,0(a0)
    690c:	24a5230c 	addiu	a1,a1,8972
    6910:	3c06c0a0 	lui	a2,0xc0a0
    6914:	0c000000 	jal	0 <func_80938CD0>
    6918:	24840568 	addiu	a0,a0,1384
    691c:	10000018 	b	6980 <func_8093F1C4+0x48c>
    6920:	93a20036 	lbu	v0,54(sp)
    6924:	8c840000 	lw	a0,0(a0)
    6928:	3c050600 	lui	a1,0x600
    692c:	24a51d10 	addiu	a1,a1,7440
    6930:	3c06c0a0 	lui	a2,0xc0a0
    6934:	0c000000 	jal	0 <func_80938CD0>
    6938:	24840568 	addiu	a0,a0,1384
    693c:	10000010 	b	6980 <func_8093F1C4+0x48c>
    6940:	93a20036 	lbu	v0,54(sp)
    6944:	8c840000 	lw	a0,0(a0)
    6948:	3c050600 	lui	a1,0x600
    694c:	24a517e0 	addiu	a1,a1,6112
    6950:	3c06c0a0 	lui	a2,0xc0a0
    6954:	0c000000 	jal	0 <func_80938CD0>
    6958:	24840568 	addiu	a0,a0,1384
    695c:	10000008 	b	6980 <func_8093F1C4+0x48c>
    6960:	93a20036 	lbu	v0,54(sp)
    6964:	8c840000 	lw	a0,0(a0)
    6968:	3c050600 	lui	a1,0x600
    696c:	24a512a4 	addiu	a1,a1,4772
    6970:	3c06c0a0 	lui	a2,0xc0a0
    6974:	0c000000 	jal	0 <func_80938CD0>
    6978:	24840568 	addiu	a0,a0,1384
    697c:	93a20036 	lbu	v0,54(sp)
    6980:	24010001 	li	at,1
    6984:	3c040000 	lui	a0,0x0
    6988:	1041000c 	beq	v0,at,69bc <func_8093F1C4+0x4c8>
    698c:	3c050600 	lui	a1,0x600
    6990:	24010002 	li	at,2
    6994:	10410010 	beq	v0,at,69d8 <func_8093F1C4+0x4e4>
    6998:	3c040000 	lui	a0,0x0
    699c:	24010003 	li	at,3
    69a0:	10410015 	beq	v0,at,69f8 <func_8093F1C4+0x504>
    69a4:	3c040000 	lui	a0,0x0
    69a8:	24010004 	li	at,4
    69ac:	1041001a 	beq	v0,at,6a18 <func_8093F1C4+0x524>
    69b0:	3c040000 	lui	a0,0x0
    69b4:	1000001f 	b	6a34 <func_8093F1C4+0x540>
    69b8:	86020152 	lh	v0,338(s0)
    69bc:	8c840000 	lw	a0,0(a0)
    69c0:	24a5230c 	addiu	a1,a1,8972
    69c4:	3c06c0a0 	lui	a2,0xc0a0
    69c8:	0c000000 	jal	0 <func_80938CD0>
    69cc:	24840568 	addiu	a0,a0,1384
    69d0:	10000018 	b	6a34 <func_8093F1C4+0x540>
    69d4:	86020152 	lh	v0,338(s0)
    69d8:	8c840000 	lw	a0,0(a0)
    69dc:	3c050600 	lui	a1,0x600
    69e0:	24a51d10 	addiu	a1,a1,7440
    69e4:	3c06c0a0 	lui	a2,0xc0a0
    69e8:	0c000000 	jal	0 <func_80938CD0>
    69ec:	24840568 	addiu	a0,a0,1384
    69f0:	10000010 	b	6a34 <func_8093F1C4+0x540>
    69f4:	86020152 	lh	v0,338(s0)
    69f8:	8c840000 	lw	a0,0(a0)
    69fc:	3c050600 	lui	a1,0x600
    6a00:	24a517e0 	addiu	a1,a1,6112
    6a04:	3c06c0a0 	lui	a2,0xc0a0
    6a08:	0c000000 	jal	0 <func_80938CD0>
    6a0c:	24840568 	addiu	a0,a0,1384
    6a10:	10000008 	b	6a34 <func_8093F1C4+0x540>
    6a14:	86020152 	lh	v0,338(s0)
    6a18:	8c840000 	lw	a0,0(a0)
    6a1c:	3c050600 	lui	a1,0x600
    6a20:	24a512a4 	addiu	a1,a1,4772
    6a24:	3c06c0a0 	lui	a2,0xc0a0
    6a28:	0c000000 	jal	0 <func_80938CD0>
    6a2c:	24840568 	addiu	a0,a0,1384
    6a30:	86020152 	lh	v0,338(s0)
    6a34:	28410078 	slti	at,v0,120
    6a38:	14200009 	bnez	at,6a60 <func_8093F1C4+0x56c>
    6a3c:	284101f4 	slti	at,v0,500
    6a40:	10200007 	beqz	at,6a60 <func_8093F1C4+0x56c>
    6a44:	260401cc 	addiu	a0,s0,460
    6a48:	3c063dcc 	lui	a2,0x3dcc
    6a4c:	34c6cccd 	ori	a2,a2,0xcccd
    6a50:	3c05437f 	lui	a1,0x437f
    6a54:	0c000000 	jal	0 <func_80938CD0>
    6a58:	3c0740a0 	lui	a3,0x40a0
    6a5c:	86020152 	lh	v0,338(s0)
    6a60:	28410096 	slti	at,v0,150
    6a64:	542000a7 	bnezl	at,6d04 <func_8093F1C4+0x810>
    6a68:	8fbf001c 	lw	ra,28(sp)
    6a6c:	86040150 	lh	a0,336(s0)
    6a70:	00800821 	move	at,a0
    6a74:	00042140 	sll	a0,a0,0x5
    6a78:	00812023 	subu	a0,a0,at
    6a7c:	00042080 	sll	a0,a0,0x2
    6a80:	00812021 	addu	a0,a0,at
    6a84:	00042100 	sll	a0,a0,0x4
    6a88:	00042400 	sll	a0,a0,0x10
    6a8c:	0c000000 	jal	0 <func_80938CD0>
    6a90:	00042403 	sra	a0,a0,0x10
    6a94:	3c010000 	lui	at,0x0
    6a98:	c4300000 	lwc1	$f16,0(at)
    6a9c:	3c010000 	lui	at,0x0
    6aa0:	c4240000 	lwc1	$f4,0(at)
    6aa4:	46100482 	mul.s	$f18,$f0,$f16
    6aa8:	3c040000 	lui	a0,0x0
    6aac:	8c840000 	lw	a0,0(a0)
    6ab0:	3c063dcc 	lui	a2,0x3dcc
    6ab4:	3c073c23 	lui	a3,0x3c23
    6ab8:	34e7d70a 	ori	a3,a3,0xd70a
    6abc:	34c6cccd 	ori	a2,a2,0xcccd
    6ac0:	46049180 	add.s	$f6,$f18,$f4
    6ac4:	248401c8 	addiu	a0,a0,456
    6ac8:	44053000 	mfc1	a1,$f6
    6acc:	0c000000 	jal	0 <func_80938CD0>
    6ad0:	00000000 	nop
    6ad4:	86040150 	lh	a0,336(s0)
    6ad8:	00800821 	move	at,a0
    6adc:	00042080 	sll	a0,a0,0x2
    6ae0:	00812023 	subu	a0,a0,at
    6ae4:	00042080 	sll	a0,a0,0x2
    6ae8:	00812021 	addu	a0,a0,at
    6aec:	00042080 	sll	a0,a0,0x2
    6af0:	00812021 	addu	a0,a0,at
    6af4:	000420c0 	sll	a0,a0,0x3
    6af8:	00812021 	addu	a0,a0,at
    6afc:	00042080 	sll	a0,a0,0x2
    6b00:	00042400 	sll	a0,a0,0x10
    6b04:	0c000000 	jal	0 <func_80938CD0>
    6b08:	00042403 	sra	a0,a0,0x10
    6b0c:	3c010000 	lui	at,0x0
    6b10:	c4280000 	lwc1	$f8,0(at)
    6b14:	3c010000 	lui	at,0x0
    6b18:	c4300000 	lwc1	$f16,0(at)
    6b1c:	46080282 	mul.s	$f10,$f0,$f8
    6b20:	3c040000 	lui	a0,0x0
    6b24:	8c840000 	lw	a0,0(a0)
    6b28:	3c063dcc 	lui	a2,0x3dcc
    6b2c:	3c073c23 	lui	a3,0x3c23
    6b30:	34e7d70a 	ori	a3,a3,0xd70a
    6b34:	34c6cccd 	ori	a2,a2,0xcccd
    6b38:	46105480 	add.s	$f18,$f10,$f16
    6b3c:	248401c8 	addiu	a0,a0,456
    6b40:	44059000 	mfc1	a1,$f18
    6b44:	0c000000 	jal	0 <func_80938CD0>
    6b48:	00000000 	nop
    6b4c:	86020152 	lh	v0,338(s0)
    6b50:	3c0544fa 	lui	a1,0x44fa
    6b54:	3c063f80 	lui	a2,0x3f80
    6b58:	28410370 	slti	at,v0,880
    6b5c:	14200027 	bnez	at,6bfc <func_8093F1C4+0x708>
    6b60:	00022080 	sll	a0,v0,0x2
    6b64:	3c040000 	lui	a0,0x0
    6b68:	8c840000 	lw	a0,0(a0)
    6b6c:	8e070068 	lw	a3,104(s0)
    6b70:	0c000000 	jal	0 <func_80938CD0>
    6b74:	24840028 	addiu	a0,a0,40
    6b78:	3c040000 	lui	a0,0x0
    6b7c:	8c840000 	lw	a0,0(a0)
    6b80:	3c0544fa 	lui	a1,0x44fa
    6b84:	3c063f80 	lui	a2,0x3f80
    6b88:	8e070068 	lw	a3,104(s0)
    6b8c:	0c000000 	jal	0 <func_80938CD0>
    6b90:	24840028 	addiu	a0,a0,40
    6b94:	26040068 	addiu	a0,s0,104
    6b98:	3c054120 	lui	a1,0x4120
    6b9c:	3c063f80 	lui	a2,0x3f80
    6ba0:	0c000000 	jal	0 <func_80938CD0>
    6ba4:	3c073e80 	lui	a3,0x3e80
    6ba8:	860d0152 	lh	t5,338(s0)
    6bac:	260401d0 	addiu	a0,s0,464
    6bb0:	3c0540a0 	lui	a1,0x40a0
    6bb4:	29a103a2 	slti	at,t5,930
    6bb8:	1420000b 	bnez	at,6be8 <func_8093F1C4+0x6f4>
    6bbc:	3c063f80 	lui	a2,0x3f80
    6bc0:	3c073d4c 	lui	a3,0x3d4c
    6bc4:	260e01cc 	addiu	t6,s0,460
    6bc8:	afae0024 	sw	t6,36(sp)
    6bcc:	0c000000 	jal	0 <func_80938CD0>
    6bd0:	34e7cccd 	ori	a3,a3,0xcccd
    6bd4:	8fa40024 	lw	a0,36(sp)
    6bd8:	24050000 	li	a1,0
    6bdc:	3c063f80 	lui	a2,0x3f80
    6be0:	0c000000 	jal	0 <func_80938CD0>
    6be4:	3c074040 	lui	a3,0x4040
    6be8:	02002025 	move	a0,s0
    6bec:	0c000000 	jal	0 <func_80938CD0>
    6bf0:	24052086 	li	a1,8326
    6bf4:	10000043 	b	6d04 <func_8093F1C4+0x810>
    6bf8:	8fbf001c 	lw	ra,28(sp)
    6bfc:	00822023 	subu	a0,a0,v0
    6c00:	00042080 	sll	a0,a0,0x2
    6c04:	00822021 	addu	a0,a0,v0
    6c08:	00042080 	sll	a0,a0,0x2
    6c0c:	00822021 	addu	a0,a0,v0
    6c10:	000420c0 	sll	a0,a0,0x3
    6c14:	00822021 	addu	a0,a0,v0
    6c18:	00042080 	sll	a0,a0,0x2
    6c1c:	00042400 	sll	a0,a0,0x10
    6c20:	0c000000 	jal	0 <func_80938CD0>
    6c24:	00042403 	sra	a0,a0,0x10
    6c28:	3c010000 	lui	at,0x0
    6c2c:	c4240000 	lwc1	$f4,0(at)
    6c30:	3c014080 	lui	at,0x4080
    6c34:	44813000 	mtc1	at,$f6
    6c38:	3c0141a0 	lui	at,0x41a0
    6c3c:	44818000 	mtc1	at,$f16
    6c40:	46060202 	mul.s	$f8,$f0,$f6
    6c44:	3c040000 	lui	a0,0x0
    6c48:	8c840000 	lw	a0,0(a0)
    6c4c:	3c063dcc 	lui	a2,0x3dcc
    6c50:	34c6cccd 	ori	a2,a2,0xcccd
    6c54:	8e070068 	lw	a3,104(s0)
    6c58:	24840028 	addiu	a0,a0,40
    6c5c:	46082280 	add.s	$f10,$f4,$f8
    6c60:	46105480 	add.s	$f18,$f10,$f16
    6c64:	44059000 	mfc1	a1,$f18
    6c68:	0c000000 	jal	0 <func_80938CD0>
    6c6c:	00000000 	nop
    6c70:	86040152 	lh	a0,338(s0)
    6c74:	00800821 	move	at,a0
    6c78:	00042080 	sll	a0,a0,0x2
    6c7c:	00812023 	subu	a0,a0,at
    6c80:	00042100 	sll	a0,a0,0x4
    6c84:	00812023 	subu	a0,a0,at
    6c88:	000420c0 	sll	a0,a0,0x3
    6c8c:	00812023 	subu	a0,a0,at
    6c90:	00042080 	sll	a0,a0,0x2
    6c94:	00042400 	sll	a0,a0,0x10
    6c98:	0c000000 	jal	0 <func_80938CD0>
    6c9c:	00042403 	sra	a0,a0,0x10
    6ca0:	3c010000 	lui	at,0x0
    6ca4:	c4260000 	lwc1	$f6,0(at)
    6ca8:	3c014080 	lui	at,0x4080
    6cac:	44812000 	mtc1	at,$f4
    6cb0:	3c0141a0 	lui	at,0x41a0
    6cb4:	44818000 	mtc1	at,$f16
    6cb8:	46040202 	mul.s	$f8,$f0,$f4
    6cbc:	3c040000 	lui	a0,0x0
    6cc0:	8c840000 	lw	a0,0(a0)
    6cc4:	3c063dcc 	lui	a2,0x3dcc
    6cc8:	34c6cccd 	ori	a2,a2,0xcccd
    6ccc:	8e070068 	lw	a3,104(s0)
    6cd0:	24840028 	addiu	a0,a0,40
    6cd4:	46083280 	add.s	$f10,$f6,$f8
    6cd8:	46105480 	add.s	$f18,$f10,$f16
    6cdc:	44059000 	mfc1	a1,$f18
    6ce0:	0c000000 	jal	0 <func_80938CD0>
    6ce4:	00000000 	nop
    6ce8:	3c073d4c 	lui	a3,0x3d4c
    6cec:	34e7cccd 	ori	a3,a3,0xcccd
    6cf0:	26040068 	addiu	a0,s0,104
    6cf4:	3c053f80 	lui	a1,0x3f80
    6cf8:	0c000000 	jal	0 <func_80938CD0>
    6cfc:	3c063f80 	lui	a2,0x3f80
    6d00:	8fbf001c 	lw	ra,28(sp)
    6d04:	8fb00018 	lw	s0,24(sp)
    6d08:	27bd0048 	addiu	sp,sp,72
    6d0c:	03e00008 	jr	ra
    6d10:	00000000 	nop

00006d14 <func_8093F9E4>:
    6d14:	27bdff20 	addiu	sp,sp,-224
    6d18:	afb20044 	sw	s2,68(sp)
    6d1c:	afbf004c 	sw	ra,76(sp)
    6d20:	afb30048 	sw	s3,72(sp)
    6d24:	afb10040 	sw	s1,64(sp)
    6d28:	afb0003c 	sw	s0,60(sp)
    6d2c:	f7b40030 	sdc1	$f20,48(sp)
    6d30:	8cae1c44 	lw	t6,7236(a1)
    6d34:	00809025 	move	s2,a0
    6d38:	00a09825 	move	s3,a1
    6d3c:	00a02025 	move	a0,a1
    6d40:	00002825 	move	a1,zero
    6d44:	0c000000 	jal	0 <func_80938CD0>
    6d48:	afae00cc 	sw	t6,204(sp)
    6d4c:	26500568 	addiu	s0,s2,1384
    6d50:	afa200c8 	sw	v0,200(sp)
    6d54:	0c000000 	jal	0 <func_80938CD0>
    6d58:	02002025 	move	a0,s0
    6d5c:	864f0160 	lh	t7,352(s2)
    6d60:	240800ff 	li	t0,255
    6d64:	264401b4 	addiu	a0,s2,436
    6d68:	25f80014 	addiu	t8,t7,20
    6d6c:	a6580160 	sh	t8,352(s2)
    6d70:	86590160 	lh	t9,352(s2)
    6d74:	24050000 	li	a1,0
    6d78:	3c063f80 	lui	a2,0x3f80
    6d7c:	2b210100 	slti	at,t9,256
    6d80:	14200002 	bnez	at,6d8c <func_8093F9E4+0x78>
    6d84:	3c073d4c 	lui	a3,0x3d4c
    6d88:	a6480160 	sh	t0,352(s2)
    6d8c:	0c000000 	jal	0 <func_80938CD0>
    6d90:	34e7cccd 	ori	a3,a3,0xcccd
    6d94:	86420440 	lh	v0,1088(s2)
    6d98:	24090001 	li	t1,1
    6d9c:	a24905f8 	sb	t1,1528(s2)
    6da0:	10400005 	beqz	v0,6db8 <func_8093F9E4+0xa4>
    6da4:	24010001 	li	at,1
    6da8:	504100c9 	beql	v0,at,70d0 <func_8093F9E4+0x3bc>
    6dac:	964f05fa 	lhu	t7,1530(s2)
    6db0:	100000c7 	b	70d0 <func_8093F9E4+0x3bc>
    6db4:	964f05fa 	lhu	t7,1530(s2)
    6db8:	86420150 	lh	v0,336(s2)
    6dbc:	2401000f 	li	at,15
    6dc0:	02002025 	move	a0,s0
    6dc4:	14410005 	bne	v0,at,6ddc <func_8093F9E4+0xc8>
    6dc8:	3c050602 	lui	a1,0x602
    6dcc:	24a516dc 	addiu	a1,a1,5852
    6dd0:	0c000000 	jal	0 <func_80938CD0>
    6dd4:	3c06c040 	lui	a2,0xc040
    6dd8:	86420150 	lh	v0,336(s2)
    6ddc:	2841000f 	slti	at,v0,15
    6de0:	14200007 	bnez	at,6e00 <func_8093F9E4+0xec>
    6de4:	26440028 	addiu	a0,s2,40
    6de8:	3c063d4c 	lui	a2,0x3d4c
    6dec:	34c6cccd 	ori	a2,a2,0xcccd
    6df0:	3c0543c8 	lui	a1,0x43c8
    6df4:	0c000000 	jal	0 <func_80938CD0>
    6df8:	3c074120 	lui	a3,0x4120
    6dfc:	86420150 	lh	v0,336(s2)
    6e00:	28410037 	slti	at,v0,55
    6e04:	142000ae 	bnez	at,70c0 <func_8093F9E4+0x3ac>
    6e08:	240affff 	li	t2,-1
    6e0c:	24010037 	li	at,55
    6e10:	14410005 	bne	v0,at,6e28 <func_8093F9E4+0x114>
    6e14:	240b0005 	li	t3,5
    6e18:	44802000 	mtc1	zero,$f4
    6e1c:	3c010001 	lui	at,0x1
    6e20:	00330821 	addu	at,at,s3
    6e24:	e4240afc 	swc1	$f4,2812(at)
    6e28:	3c010000 	lui	at,0x0
    6e2c:	a02a0000 	sb	t2,0(at)
    6e30:	3c010001 	lui	at,0x1
    6e34:	00330821 	addu	at,at,s3
    6e38:	a02b0ae2 	sb	t3,2786(at)
    6e3c:	3c010001 	lui	at,0x1
    6e40:	00330821 	addu	at,at,s3
    6e44:	a0200ae1 	sb	zero,2785(at)
    6e48:	3c010001 	lui	at,0x1
    6e4c:	34210afc 	ori	at,at,0xafc
    6e50:	3c073c75 	lui	a3,0x3c75
    6e54:	34e7c28f 	ori	a3,a3,0xc28f
    6e58:	02612021 	addu	a0,s3,at
    6e5c:	3c053f80 	lui	a1,0x3f80
    6e60:	0c000000 	jal	0 <func_80938CD0>
    6e64:	3c063f80 	lui	a2,0x3f80
    6e68:	3c053983 	lui	a1,0x3983
    6e6c:	3c063dcc 	lui	a2,0x3dcc
    6e70:	3c073851 	lui	a3,0x3851
    6e74:	34e7b717 	ori	a3,a3,0xb717
    6e78:	34c6cccd 	ori	a2,a2,0xcccd
    6e7c:	34a5126e 	ori	a1,a1,0x126e
    6e80:	0c000000 	jal	0 <func_80938CD0>
    6e84:	26440050 	addiu	a0,s2,80
    6e88:	c6400068 	lwc1	$f0,104(s2)
    6e8c:	c64801b8 	lwc1	$f8,440(s2)
    6e90:	3c014780 	lui	at,0x4780
    6e94:	4600018d 	trunc.w.s	$f6,$f0
    6e98:	44816000 	mtc1	at,$f12
    6e9c:	864c00b6 	lh	t4,182(s2)
    6ea0:	46004280 	add.s	$f10,$f8,$f0
    6ea4:	44183000 	mfc1	t8,$f6
    6ea8:	e64a01b8 	swc1	$f10,440(s2)
    6eac:	c64201b8 	lwc1	$f2,440(s2)
    6eb0:	0198c821 	addu	t9,t4,t8
    6eb4:	a65900b6 	sh	t9,182(s2)
    6eb8:	4602603c 	c.lt.s	$f12,$f2
    6ebc:	00000000 	nop
    6ec0:	45020007 	bc1fl	6ee0 <func_8093F9E4+0x1cc>
    6ec4:	26440068 	addiu	a0,s2,104
    6ec8:	460c1401 	sub.s	$f16,$f2,$f12
    6ecc:	02402025 	move	a0,s2
    6ed0:	24053921 	li	a1,14625
    6ed4:	0c000000 	jal	0 <func_80938CD0>
    6ed8:	e65001b8 	swc1	$f16,440(s2)
    6edc:	26440068 	addiu	a0,s2,104
    6ee0:	3c054640 	lui	a1,0x4640
    6ee4:	3c063f80 	lui	a2,0x3f80
    6ee8:	0c000000 	jal	0 <func_80938CD0>
    6eec:	3c074380 	lui	a3,0x4380
    6ef0:	86480150 	lh	t0,336(s2)
    6ef4:	24010087 	li	at,135
    6ef8:	27a900a4 	addiu	t1,sp,164
    6efc:	15010070 	bne	t0,at,70c0 <func_8093F9E4+0x3ac>
    6f00:	3c0a0000 	lui	t2,0x0
    6f04:	254a0000 	addiu	t2,t2,0
    6f08:	8d4d0000 	lw	t5,0(t2)
    6f0c:	8d4b0004 	lw	t3,4(t2)
    6f10:	2404390d 	li	a0,14605
    6f14:	ad2d0000 	sw	t5,0(t1)
    6f18:	8d4d0008 	lw	t5,8(t2)
    6f1c:	ad2b0004 	sw	t3,4(t1)
    6f20:	0c000000 	jal	0 <func_80938CD0>
    6f24:	ad2d0008 	sw	t5,8(t1)
    6f28:	264e0024 	addiu	t6,s2,36
    6f2c:	afae0064 	sw	t6,100(sp)
    6f30:	00008025 	move	s0,zero
    6f34:	27b100bc 	addiu	s1,sp,188
    6f38:	3c0140a0 	lui	at,0x40a0
    6f3c:	44816000 	mtc1	at,$f12
    6f40:	0c000000 	jal	0 <func_80938CD0>
    6f44:	00000000 	nop
    6f48:	3c0140a0 	lui	at,0x40a0
    6f4c:	44816000 	mtc1	at,$f12
    6f50:	0c000000 	jal	0 <func_80938CD0>
    6f54:	e7a000b0 	swc1	$f0,176(sp)
    6f58:	3c0140a0 	lui	at,0x40a0
    6f5c:	44816000 	mtc1	at,$f12
    6f60:	0c000000 	jal	0 <func_80938CD0>
    6f64:	e7a000b4 	swc1	$f0,180(sp)
    6f68:	8faf0064 	lw	t7,100(sp)
    6f6c:	e7a000b8 	swc1	$f0,184(sp)
    6f70:	3c014000 	lui	at,0x4000
    6f74:	8df80000 	lw	t8,0(t7)
    6f78:	44816000 	mtc1	at,$f12
    6f7c:	ae380000 	sw	t8,0(s1)
    6f80:	8dec0004 	lw	t4,4(t7)
    6f84:	ae2c0004 	sw	t4,4(s1)
    6f88:	8df80008 	lw	t8,8(t7)
    6f8c:	ae380008 	sw	t8,8(s1)
    6f90:	c7b200bc 	lwc1	$f18,188(sp)
    6f94:	c7a400b0 	lwc1	$f4,176(sp)
    6f98:	c7a800c0 	lwc1	$f8,192(sp)
    6f9c:	c7aa00b4 	lwc1	$f10,180(sp)
    6fa0:	46049180 	add.s	$f6,$f18,$f4
    6fa4:	c7b200c4 	lwc1	$f18,196(sp)
    6fa8:	460a4400 	add.s	$f16,$f8,$f10
    6fac:	e7a600bc 	swc1	$f6,188(sp)
    6fb0:	46009100 	add.s	$f4,$f18,$f0
    6fb4:	e7b000c0 	swc1	$f16,192(sp)
    6fb8:	0c000000 	jal	0 <func_80938CD0>
    6fbc:	e7a400c4 	swc1	$f4,196(sp)
    6fc0:	3c010000 	lui	at,0x0
    6fc4:	c42c0000 	lwc1	$f12,0(at)
    6fc8:	0c000000 	jal	0 <func_80938CD0>
    6fcc:	46000506 	mov.s	$f20,$f0
    6fd0:	3c0140a0 	lui	at,0x40a0
    6fd4:	4600028d 	trunc.w.s	$f10,$f0
    6fd8:	44813000 	mtc1	at,$f6
    6fdc:	02602025 	move	a0,s3
    6fe0:	02202825 	move	a1,s1
    6fe4:	4606a200 	add.s	$f8,$f20,$f6
    6fe8:	44085000 	mfc1	t0,$f10
    6fec:	27a600b0 	addiu	a2,sp,176
    6ff0:	27a700a4 	addiu	a3,sp,164
    6ff4:	e7a80010 	swc1	$f8,16(sp)
    6ff8:	0c000000 	jal	0 <func_80938CD0>
    6ffc:	afa80014 	sw	t0,20(sp)
    7000:	26100001 	addiu	s0,s0,1
    7004:	00108400 	sll	s0,s0,0x10
    7008:	00108403 	sra	s0,s0,0x10
    700c:	2a010064 	slti	at,s0,100
    7010:	5420ffca 	bnezl	at,6f3c <func_8093F9E4+0x228>
    7014:	3c0140a0 	lui	at,0x40a0
    7018:	44808000 	mtc1	zero,$f16
    701c:	c6520024 	lwc1	$f18,36(s2)
    7020:	24090001 	li	t1,1
    7024:	a6490440 	sh	t1,1088(s2)
    7028:	a2400564 	sb	zero,1380(s2)
    702c:	e6500050 	swc1	$f16,80(s2)
    7030:	e7b20010 	swc1	$f18,16(sp)
    7034:	c6440028 	lwc1	$f4,40(s2)
    7038:	26701c24 	addiu	s0,s3,7204
    703c:	240a0069 	li	t2,105
    7040:	e7a40014 	swc1	$f4,20(sp)
    7044:	c646002c 	lwc1	$f6,44(s2)
    7048:	afaa0028 	sw	t2,40(sp)
    704c:	afa00024 	sw	zero,36(sp)
    7050:	afa00020 	sw	zero,32(sp)
    7054:	afa0001c 	sw	zero,28(sp)
    7058:	02002025 	move	a0,s0
    705c:	02402825 	move	a1,s2
    7060:	02603025 	move	a2,s3
    7064:	240700dc 	li	a3,220
    7068:	0c000000 	jal	0 <func_80938CD0>
    706c:	e7a60018 	swc1	$f6,24(sp)
    7070:	c6480024 	lwc1	$f8,36(s2)
    7074:	240b0068 	li	t3,104
    7078:	02002025 	move	a0,s0
    707c:	e7a80010 	swc1	$f8,16(sp)
    7080:	c64a0028 	lwc1	$f10,40(s2)
    7084:	02402825 	move	a1,s2
    7088:	02603025 	move	a2,s3
    708c:	e7aa0014 	swc1	$f10,20(sp)
    7090:	c650002c 	lwc1	$f16,44(s2)
    7094:	afab0028 	sw	t3,40(sp)
    7098:	afa00024 	sw	zero,36(sp)
    709c:	afa00020 	sw	zero,32(sp)
    70a0:	afa0001c 	sw	zero,28(sp)
    70a4:	240700dc 	li	a3,220
    70a8:	0c000000 	jal	0 <func_80938CD0>
    70ac:	e7b00018 	swc1	$f16,24(sp)
    70b0:	8e4d0004 	lw	t5,4(s2)
    70b4:	2401fffe 	li	at,-2
    70b8:	01a17024 	and	t6,t5,at
    70bc:	ae4e0004 	sw	t6,4(s2)
    70c0:	02402025 	move	a0,s2
    70c4:	0c000000 	jal	0 <func_80938CD0>
    70c8:	8e450050 	lw	a1,80(s2)
    70cc:	964f05fa 	lhu	t7,1530(s2)
    70d0:	2de10005 	sltiu	at,t7,5
    70d4:	1020023c 	beqz	at,79c8 <L80940690+0x8>
    70d8:	000f7880 	sll	t7,t7,0x2
    70dc:	3c010000 	lui	at,0x0
    70e0:	002f0821 	addu	at,at,t7
    70e4:	8c2f0000 	lw	t7,0(at)
    70e8:	01e00008 	jr	t7
    70ec:	00000000 	nop

000070f0 <L8093FDC0>:
    70f0:	240c0001 	li	t4,1
    70f4:	a64c05fa 	sh	t4,1530(s2)
    70f8:	02602025 	move	a0,s3
    70fc:	0c000000 	jal	0 <func_80938CD0>
    7100:	26651d64 	addiu	a1,s3,7524
    7104:	02602025 	move	a0,s3
    7108:	02402825 	move	a1,s2
    710c:	0c000000 	jal	0 <func_80938CD0>
    7110:	24060008 	li	a2,8
    7114:	0c000000 	jal	0 <func_80938CD0>
    7118:	02602025 	move	a0,s3
    711c:	a64205fc 	sh	v0,1532(s2)
    7120:	02602025 	move	a0,s3
    7124:	00002825 	move	a1,zero
    7128:	0c000000 	jal	0 <func_80938CD0>
    712c:	24060001 	li	a2,1
    7130:	02602025 	move	a0,s3
    7134:	864505fc 	lh	a1,1532(s2)
    7138:	0c000000 	jal	0 <func_80938CD0>
    713c:	24060007 	li	a2,7
    7140:	8fa300c8 	lw	v1,200(sp)
    7144:	3c041001 	lui	a0,0x1001
    7148:	348400ff 	ori	a0,a0,0xff
    714c:	8c79005c 	lw	t9,92(v1)
    7150:	ae590600 	sw	t9,1536(s2)
    7154:	8c780060 	lw	t8,96(v1)
    7158:	ae580604 	sw	t8,1540(s2)
    715c:	8c790064 	lw	t9,100(v1)
    7160:	ae590608 	sw	t9,1544(s2)
    7164:	8c690050 	lw	t1,80(v1)
    7168:	ae49060c 	sw	t1,1548(s2)
    716c:	8c680054 	lw	t0,84(v1)
    7170:	ae480610 	sw	t0,1552(s2)
    7174:	8c690058 	lw	t1,88(v1)
    7178:	0c000000 	jal	0 <func_80938CD0>
    717c:	ae490614 	sw	t1,1556(s2)
    7180:	10000212 	b	79cc <L80940690+0xc>
    7184:	864505fc 	lh	a1,1532(s2)

00007188 <L8093FE58>:
    7188:	0c000000 	jal	0 <func_80938CD0>
    718c:	86440032 	lh	a0,50(s2)
    7190:	3c014348 	lui	at,0x4348
    7194:	44819000 	mtc1	at,$f18
    7198:	00000000 	nop
    719c:	46120102 	mul.s	$f4,$f0,$f18
    71a0:	e7a400d0 	swc1	$f4,208(sp)
    71a4:	0c000000 	jal	0 <func_80938CD0>
    71a8:	86440032 	lh	a0,50(s2)
    71ac:	3c014248 	lui	at,0x4248
    71b0:	4481a000 	mtc1	at,$f20
    71b4:	3c014348 	lui	at,0x4348
    71b8:	44813000 	mtc1	at,$f6
    71bc:	c7b000d0 	lwc1	$f16,208(sp)
    71c0:	3c063dcc 	lui	a2,0x3dcc
    71c4:	46060202 	mul.s	$f8,$f0,$f6
    71c8:	4407a000 	mfc1	a3,$f20
    71cc:	34c6cccd 	ori	a2,a2,0xcccd
    71d0:	26440600 	addiu	a0,s2,1536
    71d4:	e7a800d8 	swc1	$f8,216(sp)
    71d8:	c64a0024 	lwc1	$f10,36(s2)
    71dc:	46105480 	add.s	$f18,$f10,$f16
    71e0:	44059000 	mfc1	a1,$f18
    71e4:	0c000000 	jal	0 <func_80938CD0>
    71e8:	00000000 	nop
    71ec:	3c063dcc 	lui	a2,0x3dcc
    71f0:	4407a000 	mfc1	a3,$f20
    71f4:	34c6cccd 	ori	a2,a2,0xcccd
    71f8:	26440604 	addiu	a0,s2,1540
    71fc:	0c000000 	jal	0 <func_80938CD0>
    7200:	3c054396 	lui	a1,0x4396
    7204:	c644002c 	lwc1	$f4,44(s2)
    7208:	c7a600d8 	lwc1	$f6,216(sp)
    720c:	3c063dcc 	lui	a2,0x3dcc
    7210:	4407a000 	mfc1	a3,$f20
    7214:	46062200 	add.s	$f8,$f4,$f6
    7218:	34c6cccd 	ori	a2,a2,0xcccd
    721c:	26440608 	addiu	a0,s2,1544
    7220:	44054000 	mfc1	a1,$f8
    7224:	0c000000 	jal	0 <func_80938CD0>
    7228:	00000000 	nop
    722c:	3c063dcc 	lui	a2,0x3dcc
    7230:	4407a000 	mfc1	a3,$f20
    7234:	34c6cccd 	ori	a2,a2,0xcccd
    7238:	2644060c 	addiu	a0,s2,1548
    723c:	0c000000 	jal	0 <func_80938CD0>
    7240:	8e450024 	lw	a1,36(s2)
    7244:	3c063dcc 	lui	a2,0x3dcc
    7248:	4407a000 	mfc1	a3,$f20
    724c:	34c6cccd 	ori	a2,a2,0xcccd
    7250:	26440610 	addiu	a0,s2,1552
    7254:	0c000000 	jal	0 <func_80938CD0>
    7258:	8e450028 	lw	a1,40(s2)
    725c:	3c063dcc 	lui	a2,0x3dcc
    7260:	4407a000 	mfc1	a3,$f20
    7264:	34c6cccd 	ori	a2,a2,0xcccd
    7268:	26440614 	addiu	a0,s2,1556
    726c:	0c000000 	jal	0 <func_80938CD0>
    7270:	8e45002c 	lw	a1,44(s2)
    7274:	864a0150 	lh	t2,336(s2)
    7278:	240100aa 	li	at,170
    727c:	8fa300cc 	lw	v1,204(sp)
    7280:	154101d1 	bne	t2,at,79c8 <L80940690+0x8>
    7284:	240b0002 	li	t3,2
    7288:	3c01432a 	lui	at,0x432a
    728c:	44810000 	mtc1	at,$f0
    7290:	3c014382 	lui	at,0x4382
    7294:	44801000 	mtc1	zero,$f2
    7298:	44815000 	mtc1	at,$f10
    729c:	3c01c220 	lui	at,0xc220
    72a0:	44818000 	mtc1	at,$f16
    72a4:	3c014370 	lui	at,0x4370
    72a8:	44819000 	mtc1	at,$f18
    72ac:	a64b05fa 	sh	t3,1530(s2)
    72b0:	a6400152 	sh	zero,338(s2)
    72b4:	3c0142b4 	lui	at,0x42b4
    72b8:	e6400608 	swc1	$f0,1544(s2)
    72bc:	e64006a4 	swc1	$f0,1700(s2)
    72c0:	e6420600 	swc1	$f2,1536(s2)
    72c4:	e642060c 	swc1	$f2,1548(s2)
    72c8:	e6420614 	swc1	$f2,1556(s2)
    72cc:	e64a0604 	swc1	$f10,1540(s2)
    72d0:	44812000 	mtc1	at,$f4
    72d4:	240d8000 	li	t5,-32768
    72d8:	a46d00b6 	sh	t5,182(v1)
    72dc:	3c01c214 	lui	at,0xc214
    72e0:	3c0e0000 	lui	t6,0x0
    72e4:	e4700024 	swc1	$f16,36(v1)
    72e8:	e4720028 	swc1	$f18,40(v1)
    72ec:	e464002c 	swc1	$f4,44(v1)
    72f0:	8dce0000 	lw	t6,0(t6)
    72f4:	44813000 	mtc1	at,$f6
    72f8:	3c014214 	lui	at,0x4214
    72fc:	3c0f0000 	lui	t7,0x0
    7300:	e5c60024 	swc1	$f6,36(t6)
    7304:	8def0000 	lw	t7,0(t7)
    7308:	44814000 	mtc1	at,$f8
    730c:	3c010000 	lui	at,0x0
    7310:	3c0c0000 	lui	t4,0x0
    7314:	e5e80024 	swc1	$f8,36(t7)
    7318:	8d8c0000 	lw	t4,0(t4)
    731c:	c42a0000 	lwc1	$f10,0(at)
    7320:	3c180000 	lui	t8,0x0
    7324:	3c190000 	lui	t9,0x0
    7328:	e58a0028 	swc1	$f10,40(t4)
    732c:	8f180000 	lw	t8,0(t8)
    7330:	8f390000 	lw	t9,0(t9)
    7334:	3c080000 	lui	t0,0x0
    7338:	c7100028 	lwc1	$f16,40(t8)
    733c:	3c014188 	lui	at,0x4188
    7340:	44812000 	mtc1	at,$f4
    7344:	e7300028 	swc1	$f16,40(t9)
    7348:	8d080000 	lw	t0,0(t0)
    734c:	3c090000 	lui	t1,0x0
    7350:	3c0a0000 	lui	t2,0x0
    7354:	c5120028 	lwc1	$f18,40(t0)
    7358:	3c0b0000 	lui	t3,0x0
    735c:	3c0d0000 	lui	t5,0x0
    7360:	46049180 	add.s	$f6,$f18,$f4
    7364:	3c0e0000 	lui	t6,0x0
    7368:	3c0f0000 	lui	t7,0x0
    736c:	3c0c0000 	lui	t4,0x0
    7370:	e6460610 	swc1	$f6,1552(s2)
    7374:	8d290000 	lw	t1,0(t1)
    7378:	3c180000 	lui	t8,0x0
    737c:	3c190000 	lui	t9,0x0
    7380:	e522002c 	swc1	$f2,44(t1)
    7384:	8d4a0000 	lw	t2,0(t2)
    7388:	8d6b0000 	lw	t3,0(t3)
    738c:	3c080000 	lui	t0,0x0
    7390:	c548002c 	lwc1	$f8,44(t2)
    7394:	3c050000 	lui	a1,0x0
    7398:	02602025 	move	a0,s3
    739c:	e568002c 	swc1	$f8,44(t3)
    73a0:	8dad0000 	lw	t5,0(t5)
    73a4:	24060001 	li	a2,1
    73a8:	a5a000b6 	sh	zero,182(t5)
    73ac:	8dce0000 	lw	t6,0(t6)
    73b0:	8def0000 	lw	t7,0(t7)
    73b4:	85c200b6 	lh	v0,182(t6)
    73b8:	a5e200b6 	sh	v0,182(t7)
    73bc:	8d8c0000 	lw	t4,0(t4)
    73c0:	a58200b4 	sh	v0,180(t4)
    73c4:	8f180000 	lw	t8,0(t8)
    73c8:	a70200b4 	sh	v0,180(t8)
    73cc:	8f390000 	lw	t9,0(t9)
    73d0:	a7220164 	sh	v0,356(t9)
    73d4:	8d080000 	lw	t0,0(t0)
    73d8:	a5020164 	sh	v0,356(t0)
    73dc:	0c000000 	jal	0 <func_80938CD0>
    73e0:	8ca50000 	lw	a1,0(a1)
    73e4:	3c040000 	lui	a0,0x0
    73e8:	8c840000 	lw	a0,0(a0)
    73ec:	8c890004 	lw	t1,4(a0)
    73f0:	352a0001 	ori	t2,t1,0x1
    73f4:	10000174 	b	79c8 <L80940690+0x8>
    73f8:	ac8a0004 	sw	t2,4(a0)

000073fc <L809400CC>:
    73fc:	864b0152 	lh	t3,338(s2)
    7400:	24010064 	li	at,100
    7404:	27ad0080 	addiu	t5,sp,128
    7408:	1561016f 	bne	t3,at,79c8 <L80940690+0x8>
    740c:	3c0e0000 	lui	t6,0x0
    7410:	25ce0000 	addiu	t6,t6,0
    7414:	8dcc0000 	lw	t4,0(t6)
    7418:	8dcf0004 	lw	t7,4(t6)
    741c:	3c014040 	lui	at,0x4040
    7420:	adac0000 	sw	t4,0(t5)
    7424:	8dcc0008 	lw	t4,8(t6)
    7428:	4481a000 	mtc1	at,$f20
    742c:	00008025 	move	s0,zero
    7430:	27b10098 	addiu	s1,sp,152
    7434:	adaf0004 	sw	t7,4(t5)
    7438:	adac0008 	sw	t4,8(t5)
    743c:	0c000000 	jal	0 <func_80938CD0>
    7440:	4600a306 	mov.s	$f12,$f20
    7444:	e7a0008c 	swc1	$f0,140(sp)
    7448:	0c000000 	jal	0 <func_80938CD0>
    744c:	4600a306 	mov.s	$f12,$f20
    7450:	e7a00090 	swc1	$f0,144(sp)
    7454:	0c000000 	jal	0 <func_80938CD0>
    7458:	4600a306 	mov.s	$f12,$f20
    745c:	3c180000 	lui	t8,0x0
    7460:	8f180000 	lw	t8,0(t8)
    7464:	e7a00094 	swc1	$f0,148(sp)
    7468:	3c014000 	lui	at,0x4000
    746c:	8f080024 	lw	t0,36(t8)
    7470:	44816000 	mtc1	at,$f12
    7474:	ae280000 	sw	t0,0(s1)
    7478:	8f190028 	lw	t9,40(t8)
    747c:	ae390004 	sw	t9,4(s1)
    7480:	8f08002c 	lw	t0,44(t8)
    7484:	ae280008 	sw	t0,8(s1)
    7488:	c7aa008c 	lwc1	$f10,140(sp)
    748c:	c7b20098 	lwc1	$f18,152(sp)
    7490:	c7a60090 	lwc1	$f6,144(sp)
    7494:	460a5400 	add.s	$f16,$f10,$f10
    7498:	c7aa009c 	lwc1	$f10,156(sp)
    749c:	46063200 	add.s	$f8,$f6,$f6
    74a0:	46109100 	add.s	$f4,$f18,$f16
    74a4:	c7b000a0 	lwc1	$f16,160(sp)
    74a8:	46085480 	add.s	$f18,$f10,$f8
    74ac:	e7a40098 	swc1	$f4,152(sp)
    74b0:	46000100 	add.s	$f4,$f0,$f0
    74b4:	e7b2009c 	swc1	$f18,156(sp)
    74b8:	46048180 	add.s	$f6,$f16,$f4
    74bc:	0c000000 	jal	0 <func_80938CD0>
    74c0:	e7a600a0 	swc1	$f6,160(sp)
    74c4:	3c0140a0 	lui	at,0x40a0
    74c8:	44815000 	mtc1	at,$f10
    74cc:	24090001 	li	t1,1
    74d0:	afa90014 	sw	t1,20(sp)
    74d4:	460a0200 	add.s	$f8,$f0,$f10
    74d8:	02602025 	move	a0,s3
    74dc:	02202825 	move	a1,s1
    74e0:	27a6008c 	addiu	a2,sp,140
    74e4:	e7a80010 	swc1	$f8,16(sp)
    74e8:	0c000000 	jal	0 <func_80938CD0>
    74ec:	27a70080 	addiu	a3,sp,128
    74f0:	0c000000 	jal	0 <func_80938CD0>
    74f4:	4600a306 	mov.s	$f12,$f20
    74f8:	e7a0008c 	swc1	$f0,140(sp)
    74fc:	0c000000 	jal	0 <func_80938CD0>
    7500:	4600a306 	mov.s	$f12,$f20
    7504:	e7a00090 	swc1	$f0,144(sp)
    7508:	0c000000 	jal	0 <func_80938CD0>
    750c:	4600a306 	mov.s	$f12,$f20
    7510:	3c0a0000 	lui	t2,0x0
    7514:	8d4a0000 	lw	t2,0(t2)
    7518:	e7a00094 	swc1	$f0,148(sp)
    751c:	3c014000 	lui	at,0x4000
    7520:	8d4d0024 	lw	t5,36(t2)
    7524:	44816000 	mtc1	at,$f12
    7528:	ae2d0000 	sw	t5,0(s1)
    752c:	8d4b0028 	lw	t3,40(t2)
    7530:	ae2b0004 	sw	t3,4(s1)
    7534:	8d4d002c 	lw	t5,44(t2)
    7538:	ae2d0008 	sw	t5,8(s1)
    753c:	c7b2008c 	lwc1	$f18,140(sp)
    7540:	c7a40098 	lwc1	$f4,152(sp)
    7544:	c7aa0090 	lwc1	$f10,144(sp)
    7548:	46129400 	add.s	$f16,$f18,$f18
    754c:	c7b2009c 	lwc1	$f18,156(sp)
    7550:	460a5200 	add.s	$f8,$f10,$f10
    7554:	46102180 	add.s	$f6,$f4,$f16
    7558:	c7b000a0 	lwc1	$f16,160(sp)
    755c:	46089100 	add.s	$f4,$f18,$f8
    7560:	e7a60098 	swc1	$f6,152(sp)
    7564:	46000180 	add.s	$f6,$f0,$f0
    7568:	e7a4009c 	swc1	$f4,156(sp)
    756c:	46068280 	add.s	$f10,$f16,$f6
    7570:	0c000000 	jal	0 <func_80938CD0>
    7574:	e7aa00a0 	swc1	$f10,160(sp)
    7578:	3c0140a0 	lui	at,0x40a0
    757c:	44819000 	mtc1	at,$f18
    7580:	02602025 	move	a0,s3
    7584:	02202825 	move	a1,s1
    7588:	46120200 	add.s	$f8,$f0,$f18
    758c:	27a6008c 	addiu	a2,sp,140
    7590:	27a70080 	addiu	a3,sp,128
    7594:	afa00014 	sw	zero,20(sp)
    7598:	0c000000 	jal	0 <func_80938CD0>
    759c:	e7a80010 	swc1	$f8,16(sp)
    75a0:	26100001 	addiu	s0,s0,1
    75a4:	00108400 	sll	s0,s0,0x10
    75a8:	00108403 	sra	s0,s0,0x10
    75ac:	2a010032 	slti	at,s0,50
    75b0:	1420ffa2 	bnez	at,743c <L809400CC+0x40>
    75b4:	00000000 	nop
    75b8:	3c040000 	lui	a0,0x0
    75bc:	8c840000 	lw	a0,0(a0)
    75c0:	0c000000 	jal	0 <func_80938CD0>
    75c4:	24050000 	li	a1,0
    75c8:	3c040000 	lui	a0,0x0
    75cc:	8c840000 	lw	a0,0(a0)
    75d0:	0c000000 	jal	0 <func_80938CD0>
    75d4:	24050000 	li	a1,0
    75d8:	3c0f0000 	lui	t7,0x0
    75dc:	8def0000 	lw	t7,0(t7)
    75e0:	240e0001 	li	t6,1
    75e4:	3c180000 	lui	t8,0x0
    75e8:	a1ee0564 	sb	t6,1380(t7)
    75ec:	8f180000 	lw	t8,0(t8)
    75f0:	240c0001 	li	t4,1
    75f4:	2404390d 	li	a0,14605
    75f8:	0c000000 	jal	0 <func_80938CD0>
    75fc:	a30c0564 	sb	t4,1380(t8)
    7600:	0c000000 	jal	0 <func_80938CD0>
    7604:	24040061 	li	a0,97
    7608:	44800000 	mtc1	zero,$f0
    760c:	24190003 	li	t9,3
    7610:	a65905fa 	sh	t9,1530(s2)
    7614:	a6400152 	sh	zero,338(s2)
    7618:	e64006a0 	swc1	$f0,1696(s2)
    761c:	e6400068 	swc1	$f0,104(s2)
    7620:	e64006b0 	swc1	$f0,1712(s2)
    7624:	100000e8 	b	79c8 <L80940690+0x8>
    7628:	e64006ac 	swc1	$f0,1708(s2)

0000762c <L809402FC>:
    762c:	3c010001 	lui	at,0x1
    7630:	34210afc 	ori	at,at,0xafc
    7634:	02618021 	addu	s0,s3,at
    7638:	02402025 	move	a0,s2
    763c:	0c000000 	jal	0 <func_80938CD0>
    7640:	02602825 	move	a1,s3
    7644:	86480152 	lh	t0,338(s2)
    7648:	24090001 	li	t1,1
    764c:	240a0001 	li	t2,1
    7650:	29010096 	slti	at,t0,150
    7654:	1020000e 	beqz	at,7690 <L809402FC+0x64>
    7658:	240b0006 	li	t3,6
    765c:	3c010001 	lui	at,0x1
    7660:	00330821 	addu	at,at,s3
    7664:	a0290ae2 	sb	t1,2786(at)
    7668:	3c010001 	lui	at,0x1
    766c:	00330821 	addu	at,at,s3
    7670:	3c063dcc 	lui	a2,0x3dcc
    7674:	a0200ae1 	sb	zero,2785(at)
    7678:	34c6cccd 	ori	a2,a2,0xcccd
    767c:	02002025 	move	a0,s0
    7680:	0c000000 	jal	0 <func_80938CD0>
    7684:	3c053f80 	lui	a1,0x3f80
    7688:	10000019 	b	76f0 <L809402FC+0xc4>
    768c:	00000000 	nop
    7690:	3c010001 	lui	at,0x1
    7694:	00330821 	addu	at,at,s3
    7698:	a02a0ae2 	sb	t2,2786(at)
    769c:	3c010001 	lui	at,0x1
    76a0:	00330821 	addu	at,at,s3
    76a4:	a02b0ae1 	sb	t3,2785(at)
    76a8:	86440152 	lh	a0,338(s2)
    76ac:	00042300 	sll	a0,a0,0xc
    76b0:	00042400 	sll	a0,a0,0x10
    76b4:	0c000000 	jal	0 <func_80938CD0>
    76b8:	00042403 	sra	a0,a0,0x10
    76bc:	3c013e80 	lui	at,0x3e80
    76c0:	44812000 	mtc1	at,$f4
    76c4:	3c013f40 	lui	at,0x3f40
    76c8:	44813000 	mtc1	at,$f6
    76cc:	46040402 	mul.s	$f16,$f0,$f4
    76d0:	3c073dcc 	lui	a3,0x3dcc
    76d4:	34e7cccd 	ori	a3,a3,0xcccd
    76d8:	02002025 	move	a0,s0
    76dc:	3c063f80 	lui	a2,0x3f80
    76e0:	46068280 	add.s	$f10,$f16,$f6
    76e4:	44055000 	mfc1	a1,$f10
    76e8:	0c000000 	jal	0 <func_80938CD0>
    76ec:	00000000 	nop
    76f0:	3c0d0000 	lui	t5,0x0
    76f4:	8dad0000 	lw	t5,0(t5)
    76f8:	3c014188 	lui	at,0x4188
    76fc:	44814000 	mtc1	at,$f8
    7700:	c5b20028 	lwc1	$f18,40(t5)
    7704:	3c063d4c 	lui	a2,0x3d4c
    7708:	34c6cccd 	ori	a2,a2,0xcccd
    770c:	46089100 	add.s	$f4,$f18,$f8
    7710:	26440610 	addiu	a0,s2,1552
    7714:	3c074120 	lui	a3,0x4120
    7718:	44052000 	mfc1	a1,$f4
    771c:	0c000000 	jal	0 <func_80938CD0>
    7720:	00000000 	nop
    7724:	864e0152 	lh	t6,338(s2)
    7728:	264406a4 	addiu	a0,s2,1700
    772c:	3c0542dc 	lui	a1,0x42dc
    7730:	29c10032 	slti	at,t6,50
    7734:	1420002e 	bnez	at,77f0 <L809402FC+0x1c4>
    7738:	3c063d4c 	lui	a2,0x3d4c
    773c:	34c6cccd 	ori	a2,a2,0xcccd
    7740:	0c000000 	jal	0 <func_80938CD0>
    7744:	8e4706a0 	lw	a3,1696(s2)
    7748:	3c013f80 	lui	at,0x3f80
    774c:	44810000 	mtc1	at,$f0
    7750:	3c073ccc 	lui	a3,0x3ccc
    7754:	34e7cccd 	ori	a3,a3,0xcccd
    7758:	44050000 	mfc1	a1,$f0
    775c:	44060000 	mfc1	a2,$f0
    7760:	0c000000 	jal	0 <func_80938CD0>
    7764:	264406a0 	addiu	a0,s2,1696
    7768:	0c000000 	jal	0 <func_80938CD0>
    776c:	c64c06ac 	lwc1	$f12,1708(s2)
    7770:	c65006a4 	lwc1	$f16,1700(s2)
    7774:	c64c06ac 	lwc1	$f12,1708(s2)
    7778:	46100182 	mul.s	$f6,$f0,$f16
    777c:	0c000000 	jal	0 <func_80938CD0>
    7780:	e6460600 	swc1	$f6,1536(s2)
    7784:	c64a06a4 	lwc1	$f10,1700(s2)
    7788:	86420152 	lh	v0,338(s2)
    778c:	460a0482 	mul.s	$f18,$f0,$f10
    7790:	28410097 	slti	at,v0,151
    7794:	14200016 	bnez	at,77f0 <L809402FC+0x1c4>
    7798:	e6520608 	swc1	$f18,1544(s2)
    779c:	c64806ac 	lwc1	$f8,1708(s2)
    77a0:	c64406b0 	lwc1	$f4,1712(s2)
    77a4:	28410320 	slti	at,v0,800
    77a8:	3c053c75 	lui	a1,0x3c75
    77ac:	46044400 	add.s	$f16,$f8,$f4
    77b0:	34a5c28f 	ori	a1,a1,0xc28f
    77b4:	264406b0 	addiu	a0,s2,1712
    77b8:	14200009 	bnez	at,77e0 <L809402FC+0x1b4>
    77bc:	e65006ac 	swc1	$f16,1708(s2)
    77c0:	3c0738d1 	lui	a3,0x38d1
    77c4:	34e7b717 	ori	a3,a3,0xb717
    77c8:	264406b0 	addiu	a0,s2,1712
    77cc:	24050000 	li	a1,0
    77d0:	0c000000 	jal	0 <func_80938CD0>
    77d4:	3c063f80 	lui	a2,0x3f80
    77d8:	10000005 	b	77f0 <L809402FC+0x1c4>
    77dc:	00000000 	nop
    77e0:	3c0738d1 	lui	a3,0x38d1
    77e4:	34e7b717 	ori	a3,a3,0xb717
    77e8:	0c000000 	jal	0 <func_80938CD0>
    77ec:	3c063f80 	lui	a2,0x3f80
    77f0:	3c040000 	lui	a0,0x0
    77f4:	8c840000 	lw	a0,0(a0)
    77f8:	3c053c23 	lui	a1,0x3c23
    77fc:	3c063dcc 	lui	a2,0x3dcc
    7800:	3c073a83 	lui	a3,0x3a83
    7804:	34e7126f 	ori	a3,a3,0x126f
    7808:	34c6cccd 	ori	a2,a2,0xcccd
    780c:	34a5d709 	ori	a1,a1,0xd709
    7810:	0c000000 	jal	0 <func_80938CD0>
    7814:	24840050 	addiu	a0,a0,80
    7818:	3c040000 	lui	a0,0x0
    781c:	8c840000 	lw	a0,0(a0)
    7820:	0c000000 	jal	0 <func_80938CD0>
    7824:	8c850050 	lw	a1,80(a0)
    7828:	3c0f0000 	lui	t7,0x0
    782c:	8def0000 	lw	t7,0(t7)
    7830:	3c040000 	lui	a0,0x0
    7834:	8c840000 	lw	a0,0(a0)
    7838:	0c000000 	jal	0 <func_80938CD0>
    783c:	8de50050 	lw	a1,80(t7)
    7840:	864c0152 	lh	t4,338(s2)
    7844:	02602025 	move	a0,s3
    7848:	00002825 	move	a1,zero
    784c:	298103fc 	slti	at,t4,1020
    7850:	5420005e 	bnezl	at,79cc <L80940690+0xc>
    7854:	864505fc 	lh	a1,1532(s2)
    7858:	0c000000 	jal	0 <func_80938CD0>
    785c:	26701c24 	addiu	s0,s3,7204
    7860:	26510600 	addiu	s1,s2,1536
    7864:	8e390000 	lw	t9,0(s1)
    7868:	02602025 	move	a0,s3
    786c:	00003025 	move	a2,zero
    7870:	ac59005c 	sw	t9,92(v0)
    7874:	8e380004 	lw	t8,4(s1)
    7878:	ac580060 	sw	t8,96(v0)
    787c:	8e390008 	lw	t9,8(s1)
    7880:	ac590064 	sw	t9,100(v0)
    7884:	8e290000 	lw	t1,0(s1)
    7888:	ac490074 	sw	t1,116(v0)
    788c:	8e280004 	lw	t0,4(s1)
    7890:	ac480078 	sw	t0,120(v0)
    7894:	8e290008 	lw	t1,8(s1)
    7898:	ac49007c 	sw	t1,124(v0)
    789c:	8e4b060c 	lw	t3,1548(s2)
    78a0:	ac4b0050 	sw	t3,80(v0)
    78a4:	8e4a0610 	lw	t2,1552(s2)
    78a8:	ac4a0054 	sw	t2,84(v0)
    78ac:	8e4b0614 	lw	t3,1556(s2)
    78b0:	ac4b0058 	sw	t3,88(v0)
    78b4:	0c000000 	jal	0 <func_80938CD0>
    78b8:	864505fc 	lh	a1,1532(s2)
    78bc:	240d0004 	li	t5,4
    78c0:	a64d05fa 	sh	t5,1530(s2)
    78c4:	a64005fc 	sh	zero,1532(s2)
    78c8:	02602025 	move	a0,s3
    78cc:	0c000000 	jal	0 <func_80938CD0>
    78d0:	26651d64 	addiu	a1,s3,7524
    78d4:	02602025 	move	a0,s3
    78d8:	02402825 	move	a1,s2
    78dc:	0c000000 	jal	0 <func_80938CD0>
    78e0:	24060007 	li	a2,7
    78e4:	0c000000 	jal	0 <func_80938CD0>
    78e8:	24040021 	li	a0,33
    78ec:	3c014416 	lui	at,0x4416
    78f0:	44813000 	mtc1	at,$f6
    78f4:	3c014366 	lui	at,0x4366
    78f8:	44815000 	mtc1	at,$f10
    78fc:	44809000 	mtc1	zero,$f18
    7900:	240effff 	li	t6,-1
    7904:	afae0028 	sw	t6,40(sp)
    7908:	02002025 	move	a0,s0
    790c:	02402825 	move	a1,s2
    7910:	02603025 	move	a2,s3
    7914:	2407005d 	li	a3,93
    7918:	afa0001c 	sw	zero,28(sp)
    791c:	afa00020 	sw	zero,32(sp)
    7920:	afa00024 	sw	zero,36(sp)
    7924:	e7a60010 	swc1	$f6,16(sp)
    7928:	e7aa0014 	swc1	$f10,20(sp)
    792c:	0c000000 	jal	0 <func_80938CD0>
    7930:	e7b20018 	swc1	$f18,24(sp)
    7934:	3c014366 	lui	at,0x4366
    7938:	44814000 	mtc1	at,$f8
    793c:	44802000 	mtc1	zero,$f4
    7940:	02002025 	move	a0,s0
    7944:	02602825 	move	a1,s3
    7948:	2406005f 	li	a2,95
    794c:	3c07c416 	lui	a3,0xc416
    7950:	afa00018 	sw	zero,24(sp)
    7954:	afa0001c 	sw	zero,28(sp)
    7958:	afa00020 	sw	zero,32(sp)
    795c:	afa00024 	sw	zero,36(sp)
    7960:	e7a80010 	swc1	$f8,16(sp)
    7964:	0c000000 	jal	0 <func_80938CD0>
    7968:	e7a40014 	swc1	$f4,20(sp)
    796c:	3c01c4fa 	lui	at,0xc4fa
    7970:	44818000 	mtc1	at,$f16
    7974:	44803000 	mtc1	zero,$f6
    7978:	3c030000 	lui	v1,0x0
    797c:	24630000 	addiu	v1,v1,0
    7980:	e6500028 	swc1	$f16,40(s2)
    7984:	e64601cc 	swc1	$f6,460(s2)
    7988:	8c6f0000 	lw	t7,0(v1)
    798c:	3c190000 	lui	t9,0x0
    7990:	3c050001 	lui	a1,0x1
    7994:	a1e00564 	sb	zero,1380(t7)
    7998:	8c6c0000 	lw	t4,0(v1)
    799c:	8f390000 	lw	t9,0(t9)
    79a0:	00b32821 	addu	a1,a1,s3
    79a4:	91980564 	lbu	t8,1380(t4)
    79a8:	02602025 	move	a0,s3
    79ac:	a3380564 	sb	t8,1380(t9)
    79b0:	0c000000 	jal	0 <func_80938CD0>
    79b4:	80a51cbc 	lb	a1,7356(a1)
    79b8:	10000004 	b	79cc <L80940690+0xc>
    79bc:	864505fc 	lh	a1,1532(s2)

000079c0 <L80940690>:
    79c0:	3c010000 	lui	at,0x0
    79c4:	a0200000 	sb	zero,0(at)
    79c8:	864505fc 	lh	a1,1532(s2)
    79cc:	26470600 	addiu	a3,s2,1536
    79d0:	2646060c 	addiu	a2,s2,1548
    79d4:	50a00004 	beqzl	a1,79e8 <L80940690+0x28>
    79d8:	8fbf004c 	lw	ra,76(sp)
    79dc:	0c000000 	jal	0 <func_80938CD0>
    79e0:	02602025 	move	a0,s3
    79e4:	8fbf004c 	lw	ra,76(sp)
    79e8:	d7b40030 	ldc1	$f20,48(sp)
    79ec:	8fb0003c 	lw	s0,60(sp)
    79f0:	8fb10040 	lw	s1,64(sp)
    79f4:	8fb20044 	lw	s2,68(sp)
    79f8:	8fb30048 	lw	s3,72(sp)
    79fc:	03e00008 	jr	ra
    7a00:	27bd00e0 	addiu	sp,sp,224

00007a04 <BossTw_Update>:
    7a04:	27bdff70 	addiu	sp,sp,-144
    7a08:	afbf004c 	sw	ra,76(sp)
    7a0c:	afb30048 	sw	s3,72(sp)
    7a10:	afb20044 	sw	s2,68(sp)
    7a14:	afb10040 	sw	s1,64(sp)
    7a18:	afb0003c 	sw	s0,60(sp)
    7a1c:	f7b80030 	sdc1	$f24,48(sp)
    7a20:	f7b60028 	sdc1	$f22,40(sp)
    7a24:	f7b40020 	sdc1	$f20,32(sp)
    7a28:	8cb21c44 	lw	s2,7236(a1)
    7a2c:	240e0003 	li	t6,3
    7a30:	a08e05c0 	sb	t6,1472(a0)
    7a34:	90af07af 	lbu	t7,1967(a1)
    7a38:	3c014120 	lui	at,0x4120
    7a3c:	4481a000 	mtc1	at,$f20
    7a40:	448f2000 	mtc1	t7,$f4
    7a44:	3c013f80 	lui	at,0x3f80
    7a48:	4481b000 	mtc1	at,$f22
    7a4c:	00808825 	move	s1,a0
    7a50:	00a09825 	move	s3,a1
    7a54:	248401d4 	addiu	a0,a0,468
    7a58:	05e10005 	bgez	t7,7a70 <BossTw_Update+0x6c>
    7a5c:	46802120 	cvt.s.w	$f4,$f4
    7a60:	3c014f80 	lui	at,0x4f80
    7a64:	44813000 	mtc1	at,$f6
    7a68:	00000000 	nop
    7a6c:	46062100 	add.s	$f4,$f4,$f6
    7a70:	44052000 	mfc1	a1,$f4
    7a74:	4406b000 	mfc1	a2,$f22
    7a78:	4407a000 	mfc1	a3,$f20
    7a7c:	0c000000 	jal	0 <func_80938CD0>
    7a80:	00000000 	nop
    7a84:	927807b0 	lbu	t8,1968(s3)
    7a88:	4406b000 	mfc1	a2,$f22
    7a8c:	4407a000 	mfc1	a3,$f20
    7a90:	44984000 	mtc1	t8,$f8
    7a94:	262401d8 	addiu	a0,s1,472
    7a98:	07010005 	bgez	t8,7ab0 <BossTw_Update+0xac>
    7a9c:	46804220 	cvt.s.w	$f8,$f8
    7aa0:	3c014f80 	lui	at,0x4f80
    7aa4:	44815000 	mtc1	at,$f10
    7aa8:	00000000 	nop
    7aac:	460a4200 	add.s	$f8,$f8,$f10
    7ab0:	44054000 	mfc1	a1,$f8
    7ab4:	0c000000 	jal	0 <func_80938CD0>
    7ab8:	00000000 	nop
    7abc:	927907b1 	lbu	t9,1969(s3)
    7ac0:	4406b000 	mfc1	a2,$f22
    7ac4:	4407a000 	mfc1	a3,$f20
    7ac8:	44998000 	mtc1	t9,$f16
    7acc:	262401dc 	addiu	a0,s1,476
    7ad0:	07210005 	bgez	t9,7ae8 <BossTw_Update+0xe4>
    7ad4:	46808420 	cvt.s.w	$f16,$f16
    7ad8:	3c014f80 	lui	at,0x4f80
    7adc:	44819000 	mtc1	at,$f18
    7ae0:	00000000 	nop
    7ae4:	46128400 	add.s	$f16,$f16,$f18
    7ae8:	44058000 	mfc1	a1,$f16
    7aec:	0c000000 	jal	0 <func_80938CD0>
    7af0:	00000000 	nop
    7af4:	866807b2 	lh	t0,1970(s3)
    7af8:	4406b000 	mfc1	a2,$f22
    7afc:	4407a000 	mfc1	a3,$f20
    7b00:	44882000 	mtc1	t0,$f4
    7b04:	262401e0 	addiu	a0,s1,480
    7b08:	46802120 	cvt.s.w	$f4,$f4
    7b0c:	44052000 	mfc1	a1,$f4
    7b10:	0c000000 	jal	0 <func_80938CD0>
    7b14:	00000000 	nop
    7b18:	4406b000 	mfc1	a2,$f22
    7b1c:	4407a000 	mfc1	a3,$f20
    7b20:	262401e4 	addiu	a0,s1,484
    7b24:	0c000000 	jal	0 <func_80938CD0>
    7b28:	3c05447a 	lui	a1,0x447a
    7b2c:	862d0156 	lh	t5,342(s1)
    7b30:	86290150 	lh	t1,336(s1)
    7b34:	862b0152 	lh	t3,338(s1)
    7b38:	25ae0001 	addiu	t6,t5,1
    7b3c:	a62e0156 	sh	t6,342(s1)
    7b40:	86220156 	lh	v0,342(s1)
    7b44:	252a0001 	addiu	t2,t1,1
    7b48:	256c0001 	addiu	t4,t3,1
    7b4c:	28410032 	slti	at,v0,50
    7b50:	a62a0150 	sh	t2,336(s1)
    7b54:	14200003 	bnez	at,7b64 <BossTw_Update+0x160>
    7b58:	a62c0152 	sh	t4,338(s1)
    7b5c:	a6200156 	sh	zero,342(s1)
    7b60:	86220156 	lh	v0,342(s1)
    7b64:	00027880 	sll	t7,v0,0x2
    7b68:	8e280024 	lw	t0,36(s1)
    7b6c:	01e27823 	subu	t7,t7,v0
    7b70:	000f7880 	sll	t7,t7,0x2
    7b74:	022fc021 	addu	t8,s1,t7
    7b78:	af0801e8 	sw	t0,488(t8)
    7b7c:	8e390028 	lw	t9,40(s1)
    7b80:	3c0e0000 	lui	t6,0x0
    7b84:	00008025 	move	s0,zero
    7b88:	af1901ec 	sw	t9,492(t8)
    7b8c:	8e28002c 	lw	t0,44(s1)
    7b90:	25ce0000 	addiu	t6,t6,0
    7b94:	af0801f0 	sw	t0,496(t8)
    7b98:	00104840 	sll	t1,s0,0x1
    7b9c:	02291021 	addu	v0,s1,t1
    7ba0:	84430178 	lh	v1,376(v0)
    7ba4:	26100001 	addiu	s0,s0,1
    7ba8:	00108400 	sll	s0,s0,0x10
    7bac:	10600003 	beqz	v1,7bbc <BossTw_Update+0x1b8>
    7bb0:	00108403 	sra	s0,s0,0x10
    7bb4:	246affff 	addiu	t2,v1,-1
    7bb8:	a44a0178 	sh	t2,376(v0)
    7bbc:	2a010005 	slti	at,s0,5
    7bc0:	5420fff6 	bnezl	at,7b9c <BossTw_Update+0x198>
    7bc4:	00104840 	sll	t1,s0,0x1
    7bc8:	8622015a 	lh	v0,346(s1)
    7bcc:	10400002 	beqz	v0,7bd8 <BossTw_Update+0x1d4>
    7bd0:	244bffff 	addiu	t3,v0,-1
    7bd4:	a62b015a 	sh	t3,346(s1)
    7bd8:	8622015c 	lh	v0,348(s1)
    7bdc:	10400002 	beqz	v0,7be8 <BossTw_Update+0x1e4>
    7be0:	244cffff 	addiu	t4,v0,-1
    7be4:	a62c015c 	sh	t4,348(s1)
    7be8:	8e30014c 	lw	s0,332(s1)
    7bec:	3c0d0000 	lui	t5,0x0
    7bf0:	25ad0000 	addiu	t5,t5,0
    7bf4:	51b00007 	beql	t5,s0,7c14 <BossTw_Update+0x210>
    7bf8:	865800b6 	lh	t8,182(s2)
    7bfc:	11d00004 	beq	t6,s0,7c10 <BossTw_Update+0x20c>
    7c00:	3c0f0000 	lui	t7,0x0
    7c04:	25ef0000 	addiu	t7,t7,0
    7c08:	55f00015 	bnel	t7,s0,7c60 <BossTw_Update+0x25c>
    7c0c:	02202025 	move	a0,s1
    7c10:	865800b6 	lh	t8,182(s2)
    7c14:	8639008a 	lh	t9,138(s1)
    7c18:	34018000 	li	at,0x8000
    7c1c:	03191023 	subu	v0,t8,t9
    7c20:	00411021 	addu	v0,v0,at
    7c24:	00021400 	sll	v0,v0,0x10
    7c28:	00021403 	sra	v0,v0,0x10
    7c2c:	28411000 	slti	at,v0,4096
    7c30:	1020000a 	beqz	at,7c5c <BossTw_Update+0x258>
    7c34:	2841f001 	slti	at,v0,-4095
    7c38:	54200009 	bnezl	at,7c60 <BossTw_Update+0x25c>
    7c3c:	02202025 	move	a0,s1
    7c40:	92480a73 	lbu	t0,2675(s2)
    7c44:	02202025 	move	a0,s1
    7c48:	51000005 	beqzl	t0,7c60 <BossTw_Update+0x25c>
    7c4c:	02202025 	move	a0,s1
    7c50:	0c000000 	jal	0 <func_80938CD0>
    7c54:	02602825 	move	a1,s3
    7c58:	8e30014c 	lw	s0,332(s1)
    7c5c:	02202025 	move	a0,s1
    7c60:	0200f809 	jalr	s0
    7c64:	02602825 	move	a1,s3
    7c68:	8e30014c 	lw	s0,332(s1)
    7c6c:	3c090000 	lui	t1,0x0
    7c70:	25290000 	addiu	t1,t1,0
    7c74:	113000f6 	beq	t1,s0,8050 <BossTw_Update+0x64c>
    7c78:	240a002d 	li	t2,45
    7c7c:	3c0b0000 	lui	t3,0x0
    7c80:	256b0000 	addiu	t3,t3,0
    7c84:	15700004 	bne	t3,s0,7c98 <BossTw_Update+0x294>
    7c88:	a62a05ec 	sh	t2,1516(s1)
    7c8c:	862c05ec 	lh	t4,1516(s1)
    7c90:	000c6840 	sll	t5,t4,0x1
    7c94:	a62d05ec 	sh	t5,1516(s1)
    7c98:	8638015a 	lh	t8,346(s1)
    7c9c:	240e0078 	li	t6,120
    7ca0:	240fffe2 	li	t7,-30
    7ca4:	a62e05ee 	sh	t6,1518(s1)
    7ca8:	17000015 	bnez	t8,7d00 <BossTw_Update+0x2fc>
    7cac:	a62f05f0 	sh	t7,1520(s1)
    7cb0:	922205bd 	lbu	v0,1469(s1)
    7cb4:	02202025 	move	a0,s1
    7cb8:	263005ac 	addiu	s0,s1,1452
    7cbc:	30590002 	andi	t9,v0,0x2
    7cc0:	13200002 	beqz	t9,7ccc <BossTw_Update+0x2c8>
    7cc4:	3048fffd 	andi	t0,v0,0xfffd
    7cc8:	a22805bd 	sb	t0,1469(s1)
    7ccc:	0c000000 	jal	0 <func_80938CD0>
    7cd0:	02002825 	move	a1,s0
    7cd4:	3c010001 	lui	at,0x1
    7cd8:	34211e60 	ori	at,at,0x1e60
    7cdc:	02619021 	addu	s2,s3,at
    7ce0:	02402825 	move	a1,s2
    7ce4:	02602025 	move	a0,s3
    7ce8:	0c000000 	jal	0 <func_80938CD0>
    7cec:	02003025 	move	a2,s0
    7cf0:	02602025 	move	a0,s3
    7cf4:	02402825 	move	a1,s2
    7cf8:	0c000000 	jal	0 <func_80938CD0>
    7cfc:	02003025 	move	a2,s0
    7d00:	8629001c 	lh	t1,28(s1)
    7d04:	3c01c170 	lui	at,0xc170
    7d08:	5520000e 	bnezl	t1,7d44 <BossTw_Update+0x340>
    7d0c:	c6280188 	lwc1	$f8,392(s1)
    7d10:	c6260188 	lwc1	$f6,392(s1)
    7d14:	3c0140e0 	lui	at,0x40e0
    7d18:	44818000 	mtc1	at,$f16
    7d1c:	c62a0198 	lwc1	$f10,408(s1)
    7d20:	c624019c 	lwc1	$f4,412(s1)
    7d24:	46163200 	add.s	$f8,$f6,$f22
    7d28:	46105481 	sub.s	$f18,$f10,$f16
    7d2c:	e6280188 	swc1	$f8,392(s1)
    7d30:	46162180 	add.s	$f6,$f4,$f22
    7d34:	e6320198 	swc1	$f18,408(s1)
    7d38:	1000000e 	b	7d74 <BossTw_Update+0x370>
    7d3c:	e626019c 	swc1	$f6,412(s1)
    7d40:	c6280188 	lwc1	$f8,392(s1)
    7d44:	44819000 	mtc1	at,$f18
    7d48:	c62a0190 	lwc1	$f10,400(s1)
    7d4c:	3c01c120 	lui	at,0xc120
    7d50:	e6280188 	swc1	$f8,392(s1)
    7d54:	c6300198 	lwc1	$f16,408(s1)
    7d58:	44814000 	mtc1	at,$f8
    7d5c:	c62601a0 	lwc1	$f6,416(s1)
    7d60:	e62a0190 	swc1	$f10,400(s1)
    7d64:	46128100 	add.s	$f4,$f16,$f18
    7d68:	46083280 	add.s	$f10,$f6,$f8
    7d6c:	e6240198 	swc1	$f4,408(s1)
    7d70:	e62a01a0 	swc1	$f10,416(s1)
    7d74:	862a0152 	lh	t2,338(s1)
    7d78:	314b001f 	andi	t3,t2,0x1f
    7d7c:	5560000c 	bnezl	t3,7db0 <BossTw_Update+0x3ac>
    7d80:	86220158 	lh	v0,344(s1)
    7d84:	0c000000 	jal	0 <func_80938CD0>
    7d88:	00000000 	nop
    7d8c:	3c010000 	lui	at,0x0
    7d90:	c4300000 	lwc1	$f16,0(at)
    7d94:	240c0004 	li	t4,4
    7d98:	4610003c 	c.lt.s	$f0,$f16
    7d9c:	00000000 	nop
    7da0:	45020003 	bc1fl	7db0 <BossTw_Update+0x3ac>
    7da4:	86220158 	lh	v0,344(s1)
    7da8:	a62c0158 	sh	t4,344(s1)
    7dac:	86220158 	lh	v0,344(s1)
    7db0:	3c0e0000 	lui	t6,0x0
    7db4:	00026840 	sll	t5,v0,0x1
    7db8:	01cd7021 	addu	t6,t6,t5
    7dbc:	85ce0000 	lh	t6,0(t6)
    7dc0:	244fffff 	addiu	t7,v0,-1
    7dc4:	10400002 	beqz	v0,7dd0 <BossTw_Update+0x3cc>
    7dc8:	a62e04cc 	sh	t6,1228(s1)
    7dcc:	a62f0158 	sh	t7,344(s1)
    7dd0:	8e39014c 	lw	t9,332(s1)
    7dd4:	3c180000 	lui	t8,0x0
    7dd8:	27180000 	addiu	t8,t8,0
    7ddc:	5319009d 	beql	t8,t9,8054 <BossTw_Update+0x650>
    7de0:	8fbf004c 	lw	ra,76(sp)
    7de4:	922805f8 	lbu	t0,1528(s1)
    7de8:	3c0a0000 	lui	t2,0x0
    7dec:	254a0000 	addiu	t2,t2,0
    7df0:	11000097 	beqz	t0,8050 <BossTw_Update+0x64c>
    7df4:	27a90068 	addiu	t1,sp,104
    7df8:	8d4c0000 	lw	t4,0(t2)
    7dfc:	8d4b0004 	lw	t3,4(t2)
    7e00:	3c0e0000 	lui	t6,0x0
    7e04:	ad2c0000 	sw	t4,0(t1)
    7e08:	8d4c0008 	lw	t4,8(t2)
    7e0c:	25ce0000 	addiu	t6,t6,0
    7e10:	ad2b0004 	sw	t3,4(t1)
    7e14:	ad2c0008 	sw	t4,8(t1)
    7e18:	8dd80000 	lw	t8,0(t6)
    7e1c:	27ad005c 	addiu	t5,sp,92
    7e20:	8dcf0004 	lw	t7,4(t6)
    7e24:	adb80000 	sw	t8,0(t5)
    7e28:	8dd80008 	lw	t8,8(t6)
    7e2c:	adaf0004 	sw	t7,4(t5)
    7e30:	44809000 	mtc1	zero,$f18
    7e34:	adb80008 	sw	t8,8(t5)
    7e38:	c62404d0 	lwc1	$f4,1232(s1)
    7e3c:	00008025 	move	s0,zero
    7e40:	26220450 	addiu	v0,s1,1104
    7e44:	4604903c 	c.lt.s	$f18,$f4
    7e48:	3c010000 	lui	at,0x0
    7e4c:	27b20074 	addiu	s2,sp,116
    7e50:	4502003f 	bc1fl	7f50 <BossTw_Update+0x54c>
    7e54:	3c01428c 	lui	at,0x428c
    7e58:	c4380000 	lwc1	$f24,0(at)
    7e5c:	3c013f00 	lui	at,0x3f00
    7e60:	4481b000 	mtc1	at,$f22
    7e64:	3c01428c 	lui	at,0x428c
    7e68:	4481a000 	mtc1	at,$f20
    7e6c:	afa20054 	sw	v0,84(sp)
    7e70:	8fa20054 	lw	v0,84(sp)
    7e74:	4600a306 	mov.s	$f12,$f20
    7e78:	8c480000 	lw	t0,0(v0)
    7e7c:	ae480000 	sw	t0,0(s2)
    7e80:	8c590004 	lw	t9,4(v0)
    7e84:	ae590004 	sw	t9,4(s2)
    7e88:	8c480008 	lw	t0,8(v0)
    7e8c:	0c000000 	jal	0 <func_80938CD0>
    7e90:	ae480008 	sw	t0,8(s2)
    7e94:	c7a60074 	lwc1	$f6,116(sp)
    7e98:	4600a306 	mov.s	$f12,$f20
    7e9c:	46003200 	add.s	$f8,$f6,$f0
    7ea0:	0c000000 	jal	0 <func_80938CD0>
    7ea4:	e7a80074 	swc1	$f8,116(sp)
    7ea8:	c7aa0078 	lwc1	$f10,120(sp)
    7eac:	4600a306 	mov.s	$f12,$f20
    7eb0:	46005400 	add.s	$f16,$f10,$f0
    7eb4:	0c000000 	jal	0 <func_80938CD0>
    7eb8:	e7b00078 	swc1	$f16,120(sp)
    7ebc:	c7b2007c 	lwc1	$f18,124(sp)
    7ec0:	e7b80060 	swc1	$f24,96(sp)
    7ec4:	4600b306 	mov.s	$f12,$f22
    7ec8:	46009100 	add.s	$f4,$f18,$f0
    7ecc:	0c000000 	jal	0 <func_80938CD0>
    7ed0:	e7a4007c 	swc1	$f4,124(sp)
    7ed4:	e7a0005c 	swc1	$f0,92(sp)
    7ed8:	0c000000 	jal	0 <func_80938CD0>
    7edc:	4600b306 	mov.s	$f12,$f22
    7ee0:	3c014000 	lui	at,0x4000
    7ee4:	44816000 	mtc1	at,$f12
    7ee8:	0c000000 	jal	0 <func_80938CD0>
    7eec:	e7a00064 	swc1	$f0,100(sp)
    7ef0:	4600018d 	trunc.w.s	$f6,$f0
    7ef4:	240f0025 	li	t7,37
    7ef8:	02602025 	move	a0,s3
    7efc:	02402825 	move	a1,s2
    7f00:	440a3000 	mfc1	t2,$f6
    7f04:	27a60068 	addiu	a2,sp,104
    7f08:	27a7005c 	addiu	a3,sp,92
    7f0c:	000a5c00 	sll	t3,t2,0x10
    7f10:	000b6403 	sra	t4,t3,0x10
    7f14:	258d0008 	addiu	t5,t4,8
    7f18:	448d4000 	mtc1	t5,$f8
    7f1c:	00000000 	nop
    7f20:	468042a0 	cvt.s.w	$f10,$f8
    7f24:	e7aa0010 	swc1	$f10,16(sp)
    7f28:	862e001c 	lh	t6,28(s1)
    7f2c:	afaf0018 	sw	t7,24(sp)
    7f30:	0c000000 	jal	0 <func_80938CD0>
    7f34:	afae0014 	sw	t6,20(sp)
    7f38:	26100001 	addiu	s0,s0,1
    7f3c:	00108400 	sll	s0,s0,0x10
    7f40:	00108403 	sra	s0,s0,0x10
    7f44:	5a00ffcb 	blezl	s0,7e74 <BossTw_Update+0x470>
    7f48:	8fa20054 	lw	v0,84(sp)
    7f4c:	3c01428c 	lui	at,0x428c
    7f50:	4481a000 	mtc1	at,$f20
    7f54:	3c013f00 	lui	at,0x3f00
    7f58:	4481b000 	mtc1	at,$f22
    7f5c:	3c010000 	lui	at,0x0
    7f60:	26220444 	addiu	v0,s1,1092
    7f64:	c4380000 	lwc1	$f24,0(at)
    7f68:	27b20074 	addiu	s2,sp,116
    7f6c:	afa20054 	sw	v0,84(sp)
    7f70:	00008025 	move	s0,zero
    7f74:	8fa20054 	lw	v0,84(sp)
    7f78:	4600a306 	mov.s	$f12,$f20
    7f7c:	8c590000 	lw	t9,0(v0)
    7f80:	ae590000 	sw	t9,0(s2)
    7f84:	8c580004 	lw	t8,4(v0)
    7f88:	ae580004 	sw	t8,4(s2)
    7f8c:	8c590008 	lw	t9,8(v0)
    7f90:	0c000000 	jal	0 <func_80938CD0>
    7f94:	ae590008 	sw	t9,8(s2)
    7f98:	c7b00074 	lwc1	$f16,116(sp)
    7f9c:	4600a306 	mov.s	$f12,$f20
    7fa0:	46008480 	add.s	$f18,$f16,$f0
    7fa4:	0c000000 	jal	0 <func_80938CD0>
    7fa8:	e7b20074 	swc1	$f18,116(sp)
    7fac:	c7a40078 	lwc1	$f4,120(sp)
    7fb0:	4600a306 	mov.s	$f12,$f20
    7fb4:	46002180 	add.s	$f6,$f4,$f0
    7fb8:	0c000000 	jal	0 <func_80938CD0>
    7fbc:	e7a60078 	swc1	$f6,120(sp)
    7fc0:	c7a8007c 	lwc1	$f8,124(sp)
    7fc4:	e7b80060 	swc1	$f24,96(sp)
    7fc8:	4600b306 	mov.s	$f12,$f22
    7fcc:	46004280 	add.s	$f10,$f8,$f0
    7fd0:	0c000000 	jal	0 <func_80938CD0>
    7fd4:	e7aa007c 	swc1	$f10,124(sp)
    7fd8:	e7a0005c 	swc1	$f0,92(sp)
    7fdc:	0c000000 	jal	0 <func_80938CD0>
    7fe0:	4600b306 	mov.s	$f12,$f22
    7fe4:	3c014000 	lui	at,0x4000
    7fe8:	44816000 	mtc1	at,$f12
    7fec:	0c000000 	jal	0 <func_80938CD0>
    7ff0:	e7a00064 	swc1	$f0,100(sp)
    7ff4:	4600040d 	trunc.w.s	$f16,$f0
    7ff8:	240e0025 	li	t6,37
    7ffc:	02602025 	move	a0,s3
    8000:	02402825 	move	a1,s2
    8004:	44098000 	mfc1	t1,$f16
    8008:	27a60068 	addiu	a2,sp,104
    800c:	27a7005c 	addiu	a3,sp,92
    8010:	00095400 	sll	t2,t1,0x10
    8014:	000a5c03 	sra	t3,t2,0x10
    8018:	256c0008 	addiu	t4,t3,8
    801c:	448c9000 	mtc1	t4,$f18
    8020:	00000000 	nop
    8024:	46809120 	cvt.s.w	$f4,$f18
    8028:	e7a40010 	swc1	$f4,16(sp)
    802c:	862d001c 	lh	t5,28(s1)
    8030:	afae0018 	sw	t6,24(sp)
    8034:	0c000000 	jal	0 <func_80938CD0>
    8038:	afad0014 	sw	t5,20(sp)
    803c:	26100001 	addiu	s0,s0,1
    8040:	00108400 	sll	s0,s0,0x10
    8044:	00108403 	sra	s0,s0,0x10
    8048:	5a00ffcb 	blezl	s0,7f78 <BossTw_Update+0x574>
    804c:	8fa20054 	lw	v0,84(sp)
    8050:	8fbf004c 	lw	ra,76(sp)
    8054:	d7b40020 	ldc1	$f20,32(sp)
    8058:	d7b60028 	ldc1	$f22,40(sp)
    805c:	d7b80030 	ldc1	$f24,48(sp)
    8060:	8fb0003c 	lw	s0,60(sp)
    8064:	8fb10040 	lw	s1,64(sp)
    8068:	8fb20044 	lw	s2,68(sp)
    806c:	8fb30048 	lw	s3,72(sp)
    8070:	03e00008 	jr	ra
    8074:	27bd0090 	addiu	sp,sp,144

00008078 <func_80940D48>:
    8078:	27bdff68 	addiu	sp,sp,-152
    807c:	afbf0044 	sw	ra,68(sp)
    8080:	afb30040 	sw	s3,64(sp)
    8084:	afb2003c 	sw	s2,60(sp)
    8088:	afb10038 	sw	s1,56(sp)
    808c:	afb00034 	sw	s0,52(sp)
    8090:	f7b60028 	sdc1	$f22,40(sp)
    8094:	f7b40020 	sdc1	$f20,32(sp)
    8098:	8cae1c44 	lw	t6,7236(a1)
    809c:	3c014120 	lui	at,0x4120
    80a0:	4481a000 	mtc1	at,$f20
    80a4:	afae0088 	sw	t6,136(sp)
    80a8:	8c8f0004 	lw	t7,4(a0)
    80ac:	2401fbff 	li	at,-1025
    80b0:	24190003 	li	t9,3
    80b4:	01e1c024 	and	t8,t7,at
    80b8:	ac980004 	sw	t8,4(a0)
    80bc:	a08005f8 	sb	zero,1528(a0)
    80c0:	a09905c0 	sb	t9,1472(a0)
    80c4:	90a807af 	lbu	t0,1967(a1)
    80c8:	00809025 	move	s2,a0
    80cc:	00a09825 	move	s3,a1
    80d0:	44882000 	mtc1	t0,$f4
    80d4:	248401d4 	addiu	a0,a0,468
    80d8:	05010005 	bgez	t0,80f0 <func_80940D48+0x78>
    80dc:	46802120 	cvt.s.w	$f4,$f4
    80e0:	3c014f80 	lui	at,0x4f80
    80e4:	44813000 	mtc1	at,$f6
    80e8:	00000000 	nop
    80ec:	46062100 	add.s	$f4,$f4,$f6
    80f0:	44052000 	mfc1	a1,$f4
    80f4:	4407a000 	mfc1	a3,$f20
    80f8:	0c000000 	jal	0 <func_80938CD0>
    80fc:	3c063f80 	lui	a2,0x3f80
    8100:	926907b0 	lbu	t1,1968(s3)
    8104:	4407a000 	mfc1	a3,$f20
    8108:	264401d8 	addiu	a0,s2,472
    810c:	44894000 	mtc1	t1,$f8
    8110:	3c014f80 	lui	at,0x4f80
    8114:	05210004 	bgez	t1,8128 <func_80940D48+0xb0>
    8118:	46804220 	cvt.s.w	$f8,$f8
    811c:	44815000 	mtc1	at,$f10
    8120:	00000000 	nop
    8124:	460a4200 	add.s	$f8,$f8,$f10
    8128:	44054000 	mfc1	a1,$f8
    812c:	0c000000 	jal	0 <func_80938CD0>
    8130:	3c063f80 	lui	a2,0x3f80
    8134:	926a07b1 	lbu	t2,1969(s3)
    8138:	4407a000 	mfc1	a3,$f20
    813c:	264401dc 	addiu	a0,s2,476
    8140:	448a8000 	mtc1	t2,$f16
    8144:	3c014f80 	lui	at,0x4f80
    8148:	05410004 	bgez	t2,815c <func_80940D48+0xe4>
    814c:	46808420 	cvt.s.w	$f16,$f16
    8150:	44819000 	mtc1	at,$f18
    8154:	00000000 	nop
    8158:	46128400 	add.s	$f16,$f16,$f18
    815c:	44058000 	mfc1	a1,$f16
    8160:	0c000000 	jal	0 <func_80938CD0>
    8164:	3c063f80 	lui	a2,0x3f80
    8168:	866b07b2 	lh	t3,1970(s3)
    816c:	4407a000 	mfc1	a3,$f20
    8170:	264401e0 	addiu	a0,s2,480
    8174:	448b2000 	mtc1	t3,$f4
    8178:	3c063f80 	lui	a2,0x3f80
    817c:	46802120 	cvt.s.w	$f4,$f4
    8180:	44052000 	mfc1	a1,$f4
    8184:	0c000000 	jal	0 <func_80938CD0>
    8188:	00000000 	nop
    818c:	4407a000 	mfc1	a3,$f20
    8190:	264401e4 	addiu	a0,s2,484
    8194:	3c05447a 	lui	a1,0x447a
    8198:	0c000000 	jal	0 <func_80938CD0>
    819c:	3c063f80 	lui	a2,0x3f80
    81a0:	864c0150 	lh	t4,336(s2)
    81a4:	864e0152 	lh	t6,338(s2)
    81a8:	00008025 	move	s0,zero
    81ac:	258d0001 	addiu	t5,t4,1
    81b0:	25cf0001 	addiu	t7,t6,1
    81b4:	a64d0150 	sh	t5,336(s2)
    81b8:	a64f0152 	sh	t7,338(s2)
    81bc:	0010c040 	sll	t8,s0,0x1
    81c0:	02581021 	addu	v0,s2,t8
    81c4:	84430178 	lh	v1,376(v0)
    81c8:	26100001 	addiu	s0,s0,1
    81cc:	00108400 	sll	s0,s0,0x10
    81d0:	10600003 	beqz	v1,81e0 <func_80940D48+0x168>
    81d4:	00108403 	sra	s0,s0,0x10
    81d8:	2479ffff 	addiu	t9,v1,-1
    81dc:	a4590178 	sh	t9,376(v0)
    81e0:	2a010005 	slti	at,s0,5
    81e4:	5420fff6 	bnezl	at,81c0 <func_80940D48+0x148>
    81e8:	0010c040 	sll	t8,s0,0x1
    81ec:	8642015a 	lh	v0,346(s2)
    81f0:	10400002 	beqz	v0,81fc <func_80940D48+0x184>
    81f4:	2448ffff 	addiu	t0,v0,-1
    81f8:	a648015a 	sh	t0,346(s2)
    81fc:	8642015c 	lh	v0,348(s2)
    8200:	10400002 	beqz	v0,820c <func_80940D48+0x194>
    8204:	2449ffff 	addiu	t1,v0,-1
    8208:	a649015c 	sh	t1,348(s2)
    820c:	8e59014c 	lw	t9,332(s2)
    8210:	02402025 	move	a0,s2
    8214:	02602825 	move	a1,s3
    8218:	0320f809 	jalr	t9
    821c:	00000000 	nop
    8220:	8e42014c 	lw	v0,332(s2)
    8224:	3c0a0000 	lui	t2,0x0
    8228:	254a0000 	addiu	t2,t2,0
    822c:	1142001d 	beq	t2,v0,82a4 <func_80940D48+0x22c>
    8230:	3c0b0000 	lui	t3,0x0
    8234:	256b0000 	addiu	t3,t3,0
    8238:	5162001b 	beql	t3,v0,82a8 <func_80940D48+0x230>
    823c:	86420158 	lh	v0,344(s2)
    8240:	924c0564 	lbu	t4,1380(s2)
    8244:	51800018 	beqzl	t4,82a8 <func_80940D48+0x230>
    8248:	86420158 	lh	v0,344(s2)
    824c:	924d05f8 	lbu	t5,1528(s2)
    8250:	8fae0088 	lw	t6,136(sp)
    8254:	55a00014 	bnezl	t5,82a8 <func_80940D48+0x230>
    8258:	86420158 	lh	v0,344(s2)
    825c:	85cf00b6 	lh	t7,182(t6)
    8260:	8658008a 	lh	t8,138(s2)
    8264:	34018000 	li	at,0x8000
    8268:	01f81023 	subu	v0,t7,t8
    826c:	00411021 	addu	v0,v0,at
    8270:	00021400 	sll	v0,v0,0x10
    8274:	00021403 	sra	v0,v0,0x10
    8278:	28411000 	slti	at,v0,4096
    827c:	10200009 	beqz	at,82a4 <func_80940D48+0x22c>
    8280:	2841f001 	slti	at,v0,-4095
    8284:	54200008 	bnezl	at,82a8 <func_80940D48+0x230>
    8288:	86420158 	lh	v0,344(s2)
    828c:	91c80a73 	lbu	t0,2675(t6)
    8290:	02402025 	move	a0,s2
    8294:	51000004 	beqzl	t0,82a8 <func_80940D48+0x230>
    8298:	86420158 	lh	v0,344(s2)
    829c:	0c000000 	jal	0 <func_80938CD0>
    82a0:	02602825 	move	a1,s3
    82a4:	86420158 	lh	v0,344(s2)
    82a8:	3c190000 	lui	t9,0x0
    82ac:	00024840 	sll	t1,v0,0x1
    82b0:	0329c821 	addu	t9,t9,t1
    82b4:	87390000 	lh	t9,0(t9)
    82b8:	244affff 	addiu	t2,v0,-1
    82bc:	10400002 	beqz	v0,82c8 <func_80940D48+0x250>
    82c0:	a65904cc 	sh	t9,1228(s2)
    82c4:	a64a0158 	sh	t2,344(s2)
    82c8:	864b0152 	lh	t3,338(s2)
    82cc:	316c001f 	andi	t4,t3,0x1f
    82d0:	55800011 	bnezl	t4,8318 <func_80940D48+0x2a0>
    82d4:	8e42014c 	lw	v0,332(s2)
    82d8:	8e4f014c 	lw	t7,332(s2)
    82dc:	3c0d0000 	lui	t5,0x0
    82e0:	25ad0000 	addiu	t5,t5,0
    82e4:	51af000c 	beql	t5,t7,8318 <func_80940D48+0x2a0>
    82e8:	8e42014c 	lw	v0,332(s2)
    82ec:	0c000000 	jal	0 <func_80938CD0>
    82f0:	00000000 	nop
    82f4:	3c010000 	lui	at,0x0
    82f8:	c4260000 	lwc1	$f6,0(at)
    82fc:	24180004 	li	t8,4
    8300:	4606003c 	c.lt.s	$f0,$f6
    8304:	00000000 	nop
    8308:	45020003 	bc1fl	8318 <func_80940D48+0x2a0>
    830c:	8e42014c 	lw	v0,332(s2)
    8310:	a6580158 	sh	t8,344(s2)
    8314:	8e42014c 	lw	v0,332(s2)
    8318:	3c0e0000 	lui	t6,0x0
    831c:	25ce0000 	addiu	t6,t6,0
    8320:	15c2000b 	bne	t6,v0,8350 <func_80940D48+0x2d8>
    8324:	3c0a0000 	lui	t2,0x0
    8328:	86420162 	lh	v0,354(s2)
    832c:	3c090000 	lui	t1,0x0
    8330:	00024040 	sll	t0,v0,0x1
    8334:	01284821 	addu	t1,t1,t0
    8338:	85290000 	lh	t1,0(t1)
    833c:	2459ffff 	addiu	t9,v0,-1
    8340:	1040000f 	beqz	v0,8380 <func_80940D48+0x308>
    8344:	a64904ce 	sh	t1,1230(s2)
    8348:	1000000d 	b	8380 <func_80940D48+0x308>
    834c:	a6590162 	sh	t9,354(s2)
    8350:	254a0000 	addiu	t2,t2,0
    8354:	15420004 	bne	t2,v0,8368 <func_80940D48+0x2f0>
    8358:	3c0c0000 	lui	t4,0x0
    835c:	240b0001 	li	t3,1
    8360:	a64b04cc 	sh	t3,1228(s2)
    8364:	8e42014c 	lw	v0,332(s2)
    8368:	258c0000 	addiu	t4,t4,0
    836c:	15820002 	bne	t4,v0,8378 <func_80940D48+0x300>
    8370:	240d0002 	li	t5,2
    8374:	a64d04cc 	sh	t5,1228(s2)
    8378:	864f04cc 	lh	t7,1228(s2)
    837c:	a64f04ce 	sh	t7,1230(s2)
    8380:	92580564 	lbu	t8,1380(s2)
    8384:	53000096 	beqzl	t8,85e0 <func_80940D48+0x568>
    8388:	8e4c014c 	lw	t4,332(s2)
    838c:	924e05f8 	lbu	t6,1528(s2)
    8390:	3c090000 	lui	t1,0x0
    8394:	25290000 	addiu	t1,t1,0
    8398:	15c00090 	bnez	t6,85dc <func_80940D48+0x564>
    839c:	3c013f80 	lui	at,0x3f80
    83a0:	8d2a0000 	lw	t2,0(t1)
    83a4:	27a80070 	addiu	t0,sp,112
    83a8:	8d390004 	lw	t9,4(t1)
    83ac:	ad0a0000 	sw	t2,0(t0)
    83b0:	8d2a0008 	lw	t2,8(t1)
    83b4:	44810000 	mtc1	at,$f0
    83b8:	ad190004 	sw	t9,4(t0)
    83bc:	ad0a0008 	sw	t2,8(t0)
    83c0:	86420160 	lh	v0,352(s2)
    83c4:	44050000 	mfc1	a1,$f0
    83c8:	44060000 	mfc1	a2,$f0
    83cc:	10400007 	beqz	v0,83ec <func_80940D48+0x374>
    83d0:	264401b4 	addiu	a0,s2,436
    83d4:	244bffec 	addiu	t3,v0,-20
    83d8:	a64b0160 	sh	t3,352(s2)
    83dc:	864c0160 	lh	t4,352(s2)
    83e0:	05830003 	bgezl	t4,83f0 <func_80940D48+0x378>
    83e4:	3c073d4c 	lui	a3,0x3d4c
    83e8:	a6400160 	sh	zero,352(s2)
    83ec:	3c073d4c 	lui	a3,0x3d4c
    83f0:	0c000000 	jal	0 <func_80938CD0>
    83f4:	34e7cccd 	ori	a3,a3,0xcccd
    83f8:	3c010000 	lui	at,0x0
    83fc:	c4280000 	lwc1	$f8,0(at)
    8400:	3c013f00 	lui	at,0x3f00
    8404:	4481b000 	mtc1	at,$f22
    8408:	3c0141f0 	lui	at,0x41f0
    840c:	26420498 	addiu	v0,s2,1176
    8410:	4481a000 	mtc1	at,$f20
    8414:	afa20050 	sw	v0,80(sp)
    8418:	00008025 	move	s0,zero
    841c:	27b1007c 	addiu	s1,sp,124
    8420:	e7a80068 	swc1	$f8,104(sp)
    8424:	8fa20050 	lw	v0,80(sp)
    8428:	4600a306 	mov.s	$f12,$f20
    842c:	8c4f0000 	lw	t7,0(v0)
    8430:	ae2f0000 	sw	t7,0(s1)
    8434:	8c4d0004 	lw	t5,4(v0)
    8438:	ae2d0004 	sw	t5,4(s1)
    843c:	8c4f0008 	lw	t7,8(v0)
    8440:	0c000000 	jal	0 <func_80938CD0>
    8444:	ae2f0008 	sw	t7,8(s1)
    8448:	c7aa007c 	lwc1	$f10,124(sp)
    844c:	4600a306 	mov.s	$f12,$f20
    8450:	46005400 	add.s	$f16,$f10,$f0
    8454:	0c000000 	jal	0 <func_80938CD0>
    8458:	e7b0007c 	swc1	$f16,124(sp)
    845c:	c7b20080 	lwc1	$f18,128(sp)
    8460:	4600a306 	mov.s	$f12,$f20
    8464:	46009100 	add.s	$f4,$f18,$f0
    8468:	0c000000 	jal	0 <func_80938CD0>
    846c:	e7a40080 	swc1	$f4,128(sp)
    8470:	c7a60084 	lwc1	$f6,132(sp)
    8474:	4600b306 	mov.s	$f12,$f22
    8478:	46003200 	add.s	$f8,$f6,$f0
    847c:	0c000000 	jal	0 <func_80938CD0>
    8480:	e7a80084 	swc1	$f8,132(sp)
    8484:	e7a00064 	swc1	$f0,100(sp)
    8488:	0c000000 	jal	0 <func_80938CD0>
    848c:	4600b306 	mov.s	$f12,$f22
    8490:	3c014000 	lui	at,0x4000
    8494:	44816000 	mtc1	at,$f12
    8498:	0c000000 	jal	0 <func_80938CD0>
    849c:	e7a0006c 	swc1	$f0,108(sp)
    84a0:	4600028d 	trunc.w.s	$f10,$f0
    84a4:	240a004b 	li	t2,75
    84a8:	afaa0018 	sw	t2,24(sp)
    84ac:	02602025 	move	a0,s3
    84b0:	440e5000 	mfc1	t6,$f10
    84b4:	02202825 	move	a1,s1
    84b8:	27a60070 	addiu	a2,sp,112
    84bc:	000e4400 	sll	t0,t6,0x10
    84c0:	00084c03 	sra	t1,t0,0x10
    84c4:	25390007 	addiu	t9,t1,7
    84c8:	44998000 	mtc1	t9,$f16
    84cc:	27a70064 	addiu	a3,sp,100
    84d0:	afa00014 	sw	zero,20(sp)
    84d4:	468084a0 	cvt.s.w	$f18,$f16
    84d8:	0c000000 	jal	0 <func_80938CD0>
    84dc:	e7b20010 	swc1	$f18,16(sp)
    84e0:	26100001 	addiu	s0,s0,1
    84e4:	00108400 	sll	s0,s0,0x10
    84e8:	00108403 	sra	s0,s0,0x10
    84ec:	2a010002 	slti	at,s0,2
    84f0:	5420ffcd 	bnezl	at,8428 <func_80940D48+0x3b0>
    84f4:	8fa20050 	lw	v0,80(sp)
    84f8:	264204a4 	addiu	v0,s2,1188
    84fc:	afa20050 	sw	v0,80(sp)
    8500:	00008025 	move	s0,zero
    8504:	8fa20050 	lw	v0,80(sp)
    8508:	4600a306 	mov.s	$f12,$f20
    850c:	8c4c0000 	lw	t4,0(v0)
    8510:	ae2c0000 	sw	t4,0(s1)
    8514:	8c4b0004 	lw	t3,4(v0)
    8518:	ae2b0004 	sw	t3,4(s1)
    851c:	8c4c0008 	lw	t4,8(v0)
    8520:	0c000000 	jal	0 <func_80938CD0>
    8524:	ae2c0008 	sw	t4,8(s1)
    8528:	c7a4007c 	lwc1	$f4,124(sp)
    852c:	4600a306 	mov.s	$f12,$f20
    8530:	46002180 	add.s	$f6,$f4,$f0
    8534:	0c000000 	jal	0 <func_80938CD0>
    8538:	e7a6007c 	swc1	$f6,124(sp)
    853c:	c7a80080 	lwc1	$f8,128(sp)
    8540:	4600a306 	mov.s	$f12,$f20
    8544:	46004280 	add.s	$f10,$f8,$f0
    8548:	0c000000 	jal	0 <func_80938CD0>
    854c:	e7aa0080 	swc1	$f10,128(sp)
    8550:	c7b00084 	lwc1	$f16,132(sp)
    8554:	4600b306 	mov.s	$f12,$f22
    8558:	46008480 	add.s	$f18,$f16,$f0
    855c:	0c000000 	jal	0 <func_80938CD0>
    8560:	e7b20084 	swc1	$f18,132(sp)
    8564:	e7a00064 	swc1	$f0,100(sp)
    8568:	0c000000 	jal	0 <func_80938CD0>
    856c:	4600b306 	mov.s	$f12,$f22
    8570:	3c014000 	lui	at,0x4000
    8574:	44816000 	mtc1	at,$f12
    8578:	0c000000 	jal	0 <func_80938CD0>
    857c:	e7a0006c 	swc1	$f0,108(sp)
    8580:	4600010d 	trunc.w.s	$f4,$f0
    8584:	24090001 	li	t1,1
    8588:	2419004b 	li	t9,75
    858c:	afb90018 	sw	t9,24(sp)
    8590:	440f2000 	mfc1	t7,$f4
    8594:	afa90014 	sw	t1,20(sp)
    8598:	02602025 	move	a0,s3
    859c:	000fc400 	sll	t8,t7,0x10
    85a0:	00187403 	sra	t6,t8,0x10
    85a4:	25c80007 	addiu	t0,t6,7
    85a8:	44883000 	mtc1	t0,$f6
    85ac:	02202825 	move	a1,s1
    85b0:	27a60070 	addiu	a2,sp,112
    85b4:	46803220 	cvt.s.w	$f8,$f6
    85b8:	27a70064 	addiu	a3,sp,100
    85bc:	0c000000 	jal	0 <func_80938CD0>
    85c0:	e7a80010 	swc1	$f8,16(sp)
    85c4:	26100001 	addiu	s0,s0,1
    85c8:	00108400 	sll	s0,s0,0x10
    85cc:	00108403 	sra	s0,s0,0x10
    85d0:	2a010002 	slti	at,s0,2
    85d4:	5420ffcc 	bnezl	at,8508 <func_80940D48+0x490>
    85d8:	8fa20050 	lw	v0,80(sp)
    85dc:	8e4c014c 	lw	t4,332(s2)
    85e0:	3c013f00 	lui	at,0x3f00
    85e4:	3c0b0000 	lui	t3,0x0
    85e8:	4481b000 	mtc1	at,$f22
    85ec:	240a0023 	li	t2,35
    85f0:	256b0000 	addiu	t3,t3,0
    85f4:	156c0004 	bne	t3,t4,8608 <func_80940D48+0x590>
    85f8:	a64a05ec 	sh	t2,1516(s2)
    85fc:	864d05ec 	lh	t5,1516(s2)
    8600:	000d7840 	sll	t7,t5,0x1
    8604:	a64f05ec 	sh	t7,1516(s2)
    8608:	24180096 	li	t8,150
    860c:	240effc4 	li	t6,-60
    8610:	a65805ee 	sh	t8,1518(s2)
    8614:	a64e05f0 	sh	t6,1520(s2)
    8618:	264505ac 	addiu	a1,s2,1452
    861c:	afa5004c 	sw	a1,76(sp)
    8620:	0c000000 	jal	0 <func_80938CD0>
    8624:	02402025 	move	a0,s2
    8628:	8648015a 	lh	t0,346(s2)
    862c:	55000040 	bnezl	t0,8730 <func_80940D48+0x6b8>
    8630:	3c010001 	lui	at,0x1
    8634:	8e59014c 	lw	t9,332(s2)
    8638:	3c090000 	lui	t1,0x0
    863c:	25290000 	addiu	t1,t1,0
    8640:	5139001f 	beql	t1,t9,86c0 <func_80940D48+0x648>
    8644:	924205bd 	lbu	v0,1469(s2)
    8648:	924a04f4 	lbu	t2,1268(s2)
    864c:	240b000a 	li	t3,10
    8650:	02402025 	move	a0,s2
    8654:	1140000a 	beqz	t2,8680 <func_80940D48+0x608>
    8658:	02602825 	move	a1,s3
    865c:	a24004f4 	sb	zero,1268(s2)
    8660:	a64b015c 	sh	t3,348(s2)
    8664:	0c000000 	jal	0 <func_80938CD0>
    8668:	00003025 	move	a2,zero
    866c:	02402025 	move	a0,s2
    8670:	0c000000 	jal	0 <func_80938CD0>
    8674:	2405391a 	li	a1,14618
    8678:	1000002d 	b	8730 <func_80940D48+0x6b8>
    867c:	3c010001 	lui	at,0x1
    8680:	924205bd 	lbu	v0,1469(s2)
    8684:	304c0002 	andi	t4,v0,0x2
    8688:	51800029 	beqzl	t4,8730 <func_80940D48+0x6b8>
    868c:	3c010001 	lui	at,0x1
    8690:	8e4305e8 	lw	v1,1512(s2)
    8694:	304dfffd 	andi	t5,v0,0xfffd
    8698:	a24d05bd 	sb	t5,1469(s2)
    869c:	8c6f0000 	lw	t7,0(v1)
    86a0:	3c010001 	lui	at,0x1
    86a4:	3421f824 	ori	at,at,0xf824
    86a8:	01e1c024 	and	t8,t7,at
    86ac:	53000020 	beqzl	t8,8730 <func_80940D48+0x6b8>
    86b0:	3c010001 	lui	at,0x1
    86b4:	1000001e 	b	8730 <func_80940D48+0x6b8>
    86b8:	3c010001 	lui	at,0x1
    86bc:	924205bd 	lbu	v0,1469(s2)
    86c0:	304e0002 	andi	t6,v0,0x2
    86c4:	11c00019 	beqz	t6,872c <func_80940D48+0x6b4>
    86c8:	3048fffd 	andi	t0,v0,0xfffd
    86cc:	8e5005e8 	lw	s0,1512(s2)
    86d0:	a24805bd 	sb	t0,1469(s2)
    86d4:	00008825 	move	s1,zero
    86d8:	0c000000 	jal	0 <func_80938CD0>
    86dc:	8e040000 	lw	a0,0(s0)
    86e0:	14400003 	bnez	v0,86f0 <func_80940D48+0x678>
    86e4:	304600ff 	andi	a2,v0,0xff
    86e8:	10000002 	b	86f4 <func_80940D48+0x67c>
    86ec:	24060002 	li	a2,2
    86f0:	24110001 	li	s1,1
    86f4:	8e090000 	lw	t1,0(s0)
    86f8:	02402025 	move	a0,s2
    86fc:	31390080 	andi	t9,t1,0x80
    8700:	5720000b 	bnezl	t9,8730 <func_80940D48+0x6b8>
    8704:	3c010001 	lui	at,0x1
    8708:	824a00af 	lb	t2,175(s2)
    870c:	29410003 	slti	at,t2,3
    8710:	10200004 	beqz	at,8724 <func_80940D48+0x6ac>
    8714:	00000000 	nop
    8718:	16200002 	bnez	s1,8724 <func_80940D48+0x6ac>
    871c:	00000000 	nop
    8720:	00003025 	move	a2,zero
    8724:	0c000000 	jal	0 <func_80938CD0>
    8728:	02602825 	move	a1,s3
    872c:	3c010001 	lui	at,0x1
    8730:	34211e60 	ori	at,at,0x1e60
    8734:	02618021 	addu	s0,s3,at
    8738:	02002825 	move	a1,s0
    873c:	02602025 	move	a0,s3
    8740:	0c000000 	jal	0 <func_80938CD0>
    8744:	8fa6004c 	lw	a2,76(sp)
    8748:	3c040000 	lui	a0,0x0
    874c:	0c000000 	jal	0 <func_80938CD0>
    8750:	24840000 	addiu	a0,a0,0
    8754:	02602025 	move	a0,s3
    8758:	02002825 	move	a1,s0
    875c:	0c000000 	jal	0 <func_80938CD0>
    8760:	8fa6004c 	lw	a2,76(sp)
    8764:	3c010001 	lui	at,0x1
    8768:	24100002 	li	s0,2
    876c:	00330821 	addu	at,at,s3
    8770:	a0300b00 	sb	s0,2816(at)
    8774:	3c0b0000 	lui	t3,0x0
    8778:	816b0000 	lb	t3,0(t3)
    877c:	256c0001 	addiu	t4,t3,1
    8780:	2d810007 	sltiu	at,t4,7
    8784:	10200070 	beqz	at,8948 <L80941618>
    8788:	000c6080 	sll	t4,t4,0x2
    878c:	3c010000 	lui	at,0x0
    8790:	002c0821 	addu	at,at,t4
    8794:	8c2c0000 	lw	t4,0(at)
    8798:	01800008 	jr	t4
    879c:	00000000 	nop

000087a0 <L80941470>:
    87a0:	3c010001 	lui	at,0x1
    87a4:	34210afc 	ori	at,at,0xafc
    87a8:	3c063ca3 	lui	a2,0x3ca3
    87ac:	34c6d70a 	ori	a2,a2,0xd70a
    87b0:	02612021 	addu	a0,s3,at
    87b4:	0c000000 	jal	0 <func_80938CD0>
    87b8:	3c053f80 	lui	a1,0x3f80
    87bc:	10000062 	b	8948 <L80941618>
    87c0:	00000000 	nop

000087c4 <L80941494>:
    87c4:	3c010001 	lui	at,0x1
    87c8:	00330821 	addu	at,at,s3
    87cc:	240d0003 	li	t5,3
    87d0:	a02d0ae1 	sb	t5,2785(at)
    87d4:	3c010001 	lui	at,0x1
    87d8:	34210afc 	ori	at,at,0xafc
    87dc:	4405b000 	mfc1	a1,$f22
    87e0:	3c073d4c 	lui	a3,0x3d4c
    87e4:	34e7cccd 	ori	a3,a3,0xcccd
    87e8:	02612021 	addu	a0,s3,at
    87ec:	0c000000 	jal	0 <func_80938CD0>
    87f0:	3c063f80 	lui	a2,0x3f80
    87f4:	10000054 	b	8948 <L80941618>
    87f8:	00000000 	nop

000087fc <L809414CC>:
    87fc:	3c010001 	lui	at,0x1
    8800:	00330821 	addu	at,at,s3
    8804:	a0300ae1 	sb	s0,2785(at)
    8808:	86440150 	lh	a0,336(s2)
    880c:	00800821 	move	at,a0
    8810:	00042080 	sll	a0,a0,0x2
    8814:	00812023 	subu	a0,a0,at
    8818:	00042300 	sll	a0,a0,0xc
    881c:	00042400 	sll	a0,a0,0x10
    8820:	0c000000 	jal	0 <func_80938CD0>
    8824:	00042403 	sra	a0,a0,0x10
    8828:	3c010001 	lui	at,0x1
    882c:	34210afc 	ori	at,at,0xafc
    8830:	02612021 	addu	a0,s3,at
    8834:	3c010000 	lui	at,0x0
    8838:	c42a0000 	lwc1	$f10,0(at)
    883c:	3c073d4c 	lui	a3,0x3d4c
    8840:	34e7cccd 	ori	a3,a3,0xcccd
    8844:	460a0402 	mul.s	$f16,$f0,$f10
    8848:	3c063f80 	lui	a2,0x3f80
    884c:	46168480 	add.s	$f18,$f16,$f22
    8850:	44059000 	mfc1	a1,$f18
    8854:	0c000000 	jal	0 <func_80938CD0>
    8858:	00000000 	nop
    885c:	1000003a 	b	8948 <L80941618>
    8860:	00000000 	nop

00008864 <L80941534>:
    8864:	3c013f80 	lui	at,0x3f80
    8868:	44810000 	mtc1	at,$f0
    886c:	3c010001 	lui	at,0x1
    8870:	00330821 	addu	at,at,s3
    8874:	240f0003 	li	t7,3
    8878:	a02f0ae1 	sb	t7,2785(at)
    887c:	3c010001 	lui	at,0x1
    8880:	34210afc 	ori	at,at,0xafc
    8884:	3c073dcc 	lui	a3,0x3dcc
    8888:	44050000 	mfc1	a1,$f0
    888c:	44060000 	mfc1	a2,$f0
    8890:	34e7cccd 	ori	a3,a3,0xcccd
    8894:	0c000000 	jal	0 <func_80938CD0>
    8898:	02612021 	addu	a0,s3,at
    889c:	1000002a 	b	8948 <L80941618>
    88a0:	00000000 	nop

000088a4 <L80941574>:
    88a4:	3c010001 	lui	at,0x1
    88a8:	00330821 	addu	at,at,s3
    88ac:	a0300ae1 	sb	s0,2785(at)
    88b0:	86440150 	lh	a0,336(s2)
    88b4:	00800821 	move	at,a0
    88b8:	00042140 	sll	a0,a0,0x5
    88bc:	00812023 	subu	a0,a0,at
    88c0:	00042240 	sll	a0,a0,0x9
    88c4:	00042400 	sll	a0,a0,0x10
    88c8:	0c000000 	jal	0 <func_80938CD0>
    88cc:	00042403 	sra	a0,a0,0x10
    88d0:	3c010001 	lui	at,0x1
    88d4:	34210afc 	ori	at,at,0xafc
    88d8:	02612021 	addu	a0,s3,at
    88dc:	3c010000 	lui	at,0x0
    88e0:	c4240000 	lwc1	$f4,0(at)
    88e4:	3c010000 	lui	at,0x0
    88e8:	c4280000 	lwc1	$f8,0(at)
    88ec:	46040182 	mul.s	$f6,$f0,$f4
    88f0:	3c073dcc 	lui	a3,0x3dcc
    88f4:	34e7cccd 	ori	a3,a3,0xcccd
    88f8:	3c063f80 	lui	a2,0x3f80
    88fc:	46083280 	add.s	$f10,$f6,$f8
    8900:	44055000 	mfc1	a1,$f10
    8904:	0c000000 	jal	0 <func_80938CD0>
    8908:	00000000 	nop
    890c:	1000000e 	b	8948 <L80941618>
    8910:	00000000 	nop

00008914 <L809415E4>:
    8914:	3c013f80 	lui	at,0x3f80
    8918:	44810000 	mtc1	at,$f0
    891c:	3c010001 	lui	at,0x1
    8920:	00330821 	addu	at,at,s3
    8924:	a0200ae1 	sb	zero,2785(at)
    8928:	3c010001 	lui	at,0x1
    892c:	34210afc 	ori	at,at,0xafc
    8930:	3c073d4c 	lui	a3,0x3d4c
    8934:	44050000 	mfc1	a1,$f0
    8938:	44060000 	mfc1	a2,$f0
    893c:	34e7cccd 	ori	a3,a3,0xcccd
    8940:	0c000000 	jal	0 <func_80938CD0>
    8944:	02612021 	addu	a0,s3,at

00008948 <L80941618>:
    8948:	0c000000 	jal	0 <func_80938CD0>
    894c:	02602025 	move	a0,s3
    8950:	3c020000 	lui	v0,0x0
    8954:	24420000 	addiu	v0,v0,0
    8958:	90580000 	lbu	t8,0(v0)
    895c:	24010001 	li	at,1
    8960:	02602025 	move	a0,s3
    8964:	17010012 	bne	t8,at,89b0 <L80941618+0x68>
    8968:	00002825 	move	a1,zero
    896c:	0c000000 	jal	0 <func_80938CD0>
    8970:	a0500000 	sb	s0,0(v0)
    8974:	8fb00088 	lw	s0,136(sp)
    8978:	24056806 	li	a1,26630
    897c:	261000e4 	addiu	s0,s0,228
    8980:	0c000000 	jal	0 <func_80938CD0>
    8984:	02002025 	move	a0,s0
    8988:	02002025 	move	a0,s0
    898c:	0c000000 	jal	0 <func_80938CD0>
    8990:	2405086e 	li	a1,2158
    8994:	3c020000 	lui	v0,0x0
    8998:	24420000 	addiu	v0,v0,0
    899c:	904e0000 	lbu	t6,0(v0)
    89a0:	24080004 	li	t0,4
    89a4:	51c00003 	beqzl	t6,89b4 <L80941618+0x6c>
    89a8:	8fa90088 	lw	t1,136(sp)
    89ac:	a0480000 	sb	t0,0(v0)
    89b0:	8fa90088 	lw	t1,136(sp)
    89b4:	3c020000 	lui	v0,0x0
    89b8:	24420000 	addiu	v0,v0,0
    89bc:	91390a60 	lbu	t9,2656(t1)
    89c0:	53200007 	beqzl	t9,89e0 <L80941618+0x98>
    89c4:	8fbf0044 	lw	ra,68(sp)
    89c8:	904a0000 	lbu	t2,0(v0)
    89cc:	240b0004 	li	t3,4
    89d0:	51400003 	beqzl	t2,89e0 <L80941618+0x98>
    89d4:	8fbf0044 	lw	ra,68(sp)
    89d8:	a04b0000 	sb	t3,0(v0)
    89dc:	8fbf0044 	lw	ra,68(sp)
    89e0:	d7b40020 	ldc1	$f20,32(sp)
    89e4:	d7b60028 	ldc1	$f22,40(sp)
    89e8:	8fb00034 	lw	s0,52(sp)
    89ec:	8fb10038 	lw	s1,56(sp)
    89f0:	8fb2003c 	lw	s2,60(sp)
    89f4:	8fb30040 	lw	s3,64(sp)
    89f8:	03e00008 	jr	ra
    89fc:	27bd0098 	addiu	sp,sp,152

00008a00 <func_809416D0>:
    8a00:	24010015 	li	at,21
    8a04:	afa40000 	sw	a0,0(sp)
    8a08:	14a1000e 	bne	a1,at,8a44 <func_809416D0+0x44>
    8a0c:	afa7000c 	sw	a3,12(sp)
    8a10:	8fa20014 	lw	v0,20(sp)
    8a14:	904e05f8 	lbu	t6,1528(v0)
    8a18:	55c0000b 	bnezl	t6,8a48 <func_809416D0+0x48>
    8a1c:	2401000e 	li	at,14
    8a20:	844f001c 	lh	t7,28(v0)
    8a24:	3c190601 	lui	t9,0x601
    8a28:	3c180601 	lui	t8,0x601
    8a2c:	15e00004 	bnez	t7,8a40 <func_809416D0+0x40>
    8a30:	273934b8 	addiu	t9,t9,13496
    8a34:	27182ce0 	addiu	t8,t8,11488
    8a38:	10000002 	b	8a44 <func_809416D0+0x44>
    8a3c:	acd80000 	sw	t8,0(a2)
    8a40:	acd90000 	sw	t9,0(a2)
    8a44:	2401000e 	li	at,14
    8a48:	14a10019 	bne	a1,at,8ab0 <func_809416D0+0xb0>
    8a4c:	8fa20014 	lw	v0,20(sp)
    8a50:	8c49014c 	lw	t1,332(v0)
    8a54:	3c080000 	lui	t0,0x0
    8a58:	25080000 	addiu	t0,t0,0
    8a5c:	55090005 	bnel	t0,t1,8a74 <func_809416D0+0x74>
    8a60:	44802000 	mtc1	zero,$f4
    8a64:	acc00000 	sw	zero,0(a2)
    8a68:	03e00008 	jr	ra
    8a6c:	00001025 	move	v0,zero
    8a70:	44802000 	mtc1	zero,$f4
    8a74:	c44604d0 	lwc1	$f6,1232(v0)
    8a78:	46062032 	c.eq.s	$f4,$f6
    8a7c:	00000000 	nop
    8a80:	4500000b 	bc1f	8ab0 <func_809416D0+0xb0>
    8a84:	00000000 	nop
    8a88:	844a001c 	lh	t2,28(v0)
    8a8c:	3c0c0601 	lui	t4,0x601
    8a90:	3c0b0601 	lui	t3,0x601
    8a94:	15400005 	bnez	t2,8aac <func_809416D0+0xac>
    8a98:	258c3310 	addiu	t4,t4,13072
    8a9c:	256b2b38 	addiu	t3,t3,11064
    8aa0:	accb0000 	sw	t3,0(a2)
    8aa4:	03e00008 	jr	ra
    8aa8:	00001025 	move	v0,zero
    8aac:	accc0000 	sw	t4,0(a2)
    8ab0:	03e00008 	jr	ra
    8ab4:	00001025 	move	v0,zero

00008ab8 <func_80941788>:
    8ab8:	27bdff90 	addiu	sp,sp,-112
    8abc:	afb10018 	sw	s1,24(sp)
    8ac0:	00a08825 	move	s1,a1
    8ac4:	afbf001c 	sw	ra,28(sp)
    8ac8:	afb00014 	sw	s0,20(sp)
    8acc:	afa40070 	sw	a0,112(sp)
    8ad0:	afa60078 	sw	a2,120(sp)
    8ad4:	afa7007c 	sw	a3,124(sp)
    8ad8:	8c850000 	lw	a1,0(a0)
    8adc:	3c060000 	lui	a2,0x0
    8ae0:	24c60000 	addiu	a2,a2,0
    8ae4:	27a40058 	addiu	a0,sp,88
    8ae8:	24071818 	li	a3,6168
    8aec:	0c000000 	jal	0 <func_80938CD0>
    8af0:	00a08025 	move	s0,a1
    8af4:	2401000e 	li	at,14
    8af8:	1221004c 	beq	s1,at,8c2c <func_80941788+0x174>
    8afc:	3c040000 	lui	a0,0x0
    8b00:	24010015 	li	at,21
    8b04:	162100ee 	bne	s1,at,8ec0 <func_80941788+0x408>
    8b08:	3c040000 	lui	a0,0x0
    8b0c:	8fb10080 	lw	s1,128(sp)
    8b10:	24840000 	addiu	a0,a0,0
    8b14:	0c000000 	jal	0 <func_80938CD0>
    8b18:	26250038 	addiu	a1,s1,56
    8b1c:	3c040000 	lui	a0,0x0
    8b20:	24840000 	addiu	a0,a0,0
    8b24:	0c000000 	jal	0 <func_80938CD0>
    8b28:	26250444 	addiu	a1,s1,1092
    8b2c:	922f05f8 	lbu	t7,1528(s1)
    8b30:	3c19da38 	lui	t9,0xda38
    8b34:	51e000e3 	beqzl	t7,8ec4 <func_80941788+0x40c>
    8b38:	8faa0070 	lw	t2,112(sp)
    8b3c:	8e0202d0 	lw	v0,720(s0)
    8b40:	37390003 	ori	t9,t9,0x3
    8b44:	3c050000 	lui	a1,0x0
    8b48:	24580008 	addiu	t8,v0,8
    8b4c:	ae1802d0 	sw	t8,720(s0)
    8b50:	ac590000 	sw	t9,0(v0)
    8b54:	8faa0070 	lw	t2,112(sp)
    8b58:	24a50000 	addiu	a1,a1,0
    8b5c:	2406182e 	li	a2,6190
    8b60:	8d440000 	lw	a0,0(t2)
    8b64:	0c000000 	jal	0 <func_80938CD0>
    8b68:	afa20054 	sw	v0,84(sp)
    8b6c:	8fa30054 	lw	v1,84(sp)
    8b70:	3c060000 	lui	a2,0x0
    8b74:	3c0700ff 	lui	a3,0xff
    8b78:	ac620004 	sw	v0,4(v1)
    8b7c:	862b001c 	lh	t3,28(s1)
    8b80:	34e7ffff 	ori	a3,a3,0xffff
    8b84:	24c60000 	addiu	a2,a2,0
    8b88:	15600017 	bnez	t3,8be8 <func_80941788+0x130>
    8b8c:	3c05de00 	lui	a1,0xde00
    8b90:	8e0202d0 	lw	v0,720(s0)
    8b94:	3c040601 	lui	a0,0x601
    8b98:	24843ae8 	addiu	a0,a0,15080
    8b9c:	00046900 	sll	t5,a0,0x4
    8ba0:	000d7702 	srl	t6,t5,0x1c
    8ba4:	3c060000 	lui	a2,0x0
    8ba8:	244c0008 	addiu	t4,v0,8
    8bac:	ae0c02d0 	sw	t4,720(s0)
    8bb0:	24c60000 	addiu	a2,a2,0
    8bb4:	000e7880 	sll	t7,t6,0x2
    8bb8:	3c05de00 	lui	a1,0xde00
    8bbc:	00cfc021 	addu	t8,a2,t7
    8bc0:	ac450000 	sw	a1,0(v0)
    8bc4:	8f190000 	lw	t9,0(t8)
    8bc8:	3c0700ff 	lui	a3,0xff
    8bcc:	34e7ffff 	ori	a3,a3,0xffff
    8bd0:	00875024 	and	t2,a0,a3
    8bd4:	3c088000 	lui	t0,0x8000
    8bd8:	032a5821 	addu	t3,t9,t2
    8bdc:	01686021 	addu	t4,t3,t0
    8be0:	100000b7 	b	8ec0 <func_80941788+0x408>
    8be4:	ac4c0004 	sw	t4,4(v0)
    8be8:	8e0202d0 	lw	v0,720(s0)
    8bec:	3c040601 	lui	a0,0x601
    8bf0:	24843d68 	addiu	a0,a0,15720
    8bf4:	00047100 	sll	t6,a0,0x4
    8bf8:	000e7f02 	srl	t7,t6,0x1c
    8bfc:	244d0008 	addiu	t5,v0,8
    8c00:	ae0d02d0 	sw	t5,720(s0)
    8c04:	000fc080 	sll	t8,t7,0x2
    8c08:	00d8c821 	addu	t9,a2,t8
    8c0c:	ac450000 	sw	a1,0(v0)
    8c10:	8f2a0000 	lw	t2,0(t9)
    8c14:	00875824 	and	t3,a0,a3
    8c18:	3c088000 	lui	t0,0x8000
    8c1c:	014b6021 	addu	t4,t2,t3
    8c20:	01886821 	addu	t5,t4,t0
    8c24:	100000a6 	b	8ec0 <func_80941788+0x408>
    8c28:	ac4d0004 	sw	t5,4(v0)
    8c2c:	8fb10080 	lw	s1,128(sp)
    8c30:	24840000 	addiu	a0,a0,0
    8c34:	0c000000 	jal	0 <func_80938CD0>
    8c38:	26250450 	addiu	a1,s1,1104
    8c3c:	3c040000 	lui	a0,0x0
    8c40:	24840000 	addiu	a0,a0,0
    8c44:	0c000000 	jal	0 <func_80938CD0>
    8c48:	2625045c 	addiu	a1,s1,1116
    8c4c:	3c040000 	lui	a0,0x0
    8c50:	24840000 	addiu	a0,a0,0
    8c54:	0c000000 	jal	0 <func_80938CD0>
    8c58:	26250468 	addiu	a1,s1,1128
    8c5c:	3c040000 	lui	a0,0x0
    8c60:	24840000 	addiu	a0,a0,0
    8c64:	0c000000 	jal	0 <func_80938CD0>
    8c68:	26250474 	addiu	a1,s1,1140
    8c6c:	3c040000 	lui	a0,0x0
    8c70:	24840000 	addiu	a0,a0,0
    8c74:	0c000000 	jal	0 <func_80938CD0>
    8c78:	26250480 	addiu	a1,s1,1152
    8c7c:	44802000 	mtc1	zero,$f4
    8c80:	c62604d0 	lwc1	$f6,1232(s1)
    8c84:	3c0fda38 	lui	t7,0xda38
    8c88:	4606203c 	c.lt.s	$f4,$f6
    8c8c:	00000000 	nop
    8c90:	4502008c 	bc1fl	8ec4 <func_80941788+0x40c>
    8c94:	8faa0070 	lw	t2,112(sp)
    8c98:	8e0202d0 	lw	v0,720(s0)
    8c9c:	35ef0003 	ori	t7,t7,0x3
    8ca0:	3c050000 	lui	a1,0x0
    8ca4:	244e0008 	addiu	t6,v0,8
    8ca8:	ae0e02d0 	sw	t6,720(s0)
    8cac:	ac4f0000 	sw	t7,0(v0)
    8cb0:	8fb80070 	lw	t8,112(sp)
    8cb4:	24a50000 	addiu	a1,a1,0
    8cb8:	2406184d 	li	a2,6221
    8cbc:	8f040000 	lw	a0,0(t8)
    8cc0:	0c000000 	jal	0 <func_80938CD0>
    8cc4:	afa20048 	sw	v0,72(sp)
    8cc8:	8fa30048 	lw	v1,72(sp)
    8ccc:	3c060000 	lui	a2,0x0
    8cd0:	24c60000 	addiu	a2,a2,0
    8cd4:	ac620004 	sw	v0,4(v1)
    8cd8:	8639001c 	lh	t9,28(s1)
    8cdc:	3c05de00 	lui	a1,0xde00
    8ce0:	3c09fa00 	lui	t1,0xfa00
    8ce4:	1720003c 	bnez	t9,8dd8 <func_80941788+0x320>
    8ce8:	3c016414 	lui	at,0x6414
    8cec:	8e0202d0 	lw	v0,720(s0)
    8cf0:	3c09fa00 	lui	t1,0xfa00
    8cf4:	3c01ffe1 	lui	at,0xffe1
    8cf8:	244a0008 	addiu	t2,v0,8
    8cfc:	ae0a02d0 	sw	t2,720(s0)
    8d00:	ac490000 	sw	t1,0(v0)
    8d04:	c62804d0 	lwc1	$f8,1232(s1)
    8d08:	3421ff00 	ori	at,at,0xff00
    8d0c:	3c040601 	lui	a0,0x601
    8d10:	4600428d 	trunc.w.s	$f10,$f8
    8d14:	24843e98 	addiu	a0,a0,16024
    8d18:	00045100 	sll	t2,a0,0x4
    8d1c:	000a5f02 	srl	t3,t2,0x1c
    8d20:	440e5000 	mfc1	t6,$f10
    8d24:	000b6080 	sll	t4,t3,0x2
    8d28:	00cc6821 	addu	t5,a2,t4
    8d2c:	31cf00ff 	andi	t7,t6,0xff
    8d30:	01e1c025 	or	t8,t7,at
    8d34:	ac580004 	sw	t8,4(v0)
    8d38:	8e0202d0 	lw	v0,720(s0)
    8d3c:	3c0700ff 	lui	a3,0xff
    8d40:	34e7ffff 	ori	a3,a3,0xffff
    8d44:	24590008 	addiu	t9,v0,8
    8d48:	ae1902d0 	sw	t9,720(s0)
    8d4c:	ac450000 	sw	a1,0(v0)
    8d50:	8dae0000 	lw	t6,0(t5)
    8d54:	00877824 	and	t7,a0,a3
    8d58:	3c088000 	lui	t0,0x8000
    8d5c:	01cfc021 	addu	t8,t6,t7
    8d60:	0308c821 	addu	t9,t8,t0
    8d64:	ac590004 	sw	t9,4(v0)
    8d68:	8e0202d0 	lw	v0,720(s0)
    8d6c:	3c01c3e1 	lui	at,0xc3e1
    8d70:	3421eb00 	ori	at,at,0xeb00
    8d74:	244a0008 	addiu	t2,v0,8
    8d78:	ae0a02d0 	sw	t2,720(s0)
    8d7c:	ac490000 	sw	t1,0(v0)
    8d80:	c63004d0 	lwc1	$f16,1232(s1)
    8d84:	3c040601 	lui	a0,0x601
    8d88:	24843f98 	addiu	a0,a0,16280
    8d8c:	4600848d 	trunc.w.s	$f18,$f16
    8d90:	00045100 	sll	t2,a0,0x4
    8d94:	000a5f02 	srl	t3,t2,0x1c
    8d98:	000b6080 	sll	t4,t3,0x2
    8d9c:	440e9000 	mfc1	t6,$f18
    8da0:	00cc6821 	addu	t5,a2,t4
    8da4:	31cf00ff 	andi	t7,t6,0xff
    8da8:	01e1c025 	or	t8,t7,at
    8dac:	ac580004 	sw	t8,4(v0)
    8db0:	8e0202d0 	lw	v0,720(s0)
    8db4:	00877824 	and	t7,a0,a3
    8db8:	24590008 	addiu	t9,v0,8
    8dbc:	ae1902d0 	sw	t9,720(s0)
    8dc0:	ac450000 	sw	a1,0(v0)
    8dc4:	8dae0000 	lw	t6,0(t5)
    8dc8:	01cfc021 	addu	t8,t6,t7
    8dcc:	0308c821 	addu	t9,t8,t0
    8dd0:	1000003b 	b	8ec0 <func_80941788+0x408>
    8dd4:	ac590004 	sw	t9,4(v0)
    8dd8:	8e0202d0 	lw	v0,720(s0)
    8ddc:	3c040601 	lui	a0,0x601
    8de0:	24844070 	addiu	a0,a0,16496
    8de4:	244a0008 	addiu	t2,v0,8
    8de8:	ae0a02d0 	sw	t2,720(s0)
    8dec:	ac490000 	sw	t1,0(v0)
    8df0:	c62404d0 	lwc1	$f4,1232(s1)
    8df4:	00045100 	sll	t2,a0,0x4
    8df8:	000a5f02 	srl	t3,t2,0x1c
    8dfc:	4600218d 	trunc.w.s	$f6,$f4
    8e00:	3c060000 	lui	a2,0x0
    8e04:	24c60000 	addiu	a2,a2,0
    8e08:	000b6080 	sll	t4,t3,0x2
    8e0c:	440e3000 	mfc1	t6,$f6
    8e10:	3c05de00 	lui	a1,0xde00
    8e14:	00cc6821 	addu	t5,a2,t4
    8e18:	31cf00ff 	andi	t7,t6,0xff
    8e1c:	01e1c025 	or	t8,t7,at
    8e20:	ac580004 	sw	t8,4(v0)
    8e24:	8e0202d0 	lw	v0,720(s0)
    8e28:	3c0700ff 	lui	a3,0xff
    8e2c:	34e7ffff 	ori	a3,a3,0xffff
    8e30:	24590008 	addiu	t9,v0,8
    8e34:	ae1902d0 	sw	t9,720(s0)
    8e38:	ac450000 	sw	a1,0(v0)
    8e3c:	8dae0000 	lw	t6,0(t5)
    8e40:	00877824 	and	t7,a0,a3
    8e44:	3c088000 	lui	t0,0x8000
    8e48:	01cfc021 	addu	t8,t6,t7
    8e4c:	0308c821 	addu	t9,t8,t0
    8e50:	ac590004 	sw	t9,4(v0)
    8e54:	8e0202d0 	lw	v0,720(s0)
    8e58:	3c01ff46 	lui	at,0xff46
    8e5c:	3c040601 	lui	a0,0x601
    8e60:	244a0008 	addiu	t2,v0,8
    8e64:	ae0a02d0 	sw	t2,720(s0)
    8e68:	ac490000 	sw	t1,0(v0)
    8e6c:	c62804d0 	lwc1	$f8,1232(s1)
    8e70:	24844158 	addiu	a0,a0,16728
    8e74:	00045100 	sll	t2,a0,0x4
    8e78:	4600428d 	trunc.w.s	$f10,$f8
    8e7c:	000a5f02 	srl	t3,t2,0x1c
    8e80:	000b6080 	sll	t4,t3,0x2
    8e84:	00cc6821 	addu	t5,a2,t4
    8e88:	440e5000 	mfc1	t6,$f10
    8e8c:	00000000 	nop
    8e90:	31cf00ff 	andi	t7,t6,0xff
    8e94:	01e1c025 	or	t8,t7,at
    8e98:	ac580004 	sw	t8,4(v0)
    8e9c:	8e0202d0 	lw	v0,720(s0)
    8ea0:	00877824 	and	t7,a0,a3
    8ea4:	24590008 	addiu	t9,v0,8
    8ea8:	ae1902d0 	sw	t9,720(s0)
    8eac:	ac450000 	sw	a1,0(v0)
    8eb0:	8dae0000 	lw	t6,0(t5)
    8eb4:	01cfc021 	addu	t8,t6,t7
    8eb8:	0308c821 	addu	t9,t8,t0
    8ebc:	ac590004 	sw	t9,4(v0)
    8ec0:	8faa0070 	lw	t2,112(sp)
    8ec4:	3c060000 	lui	a2,0x0
    8ec8:	24c60000 	addiu	a2,a2,0
    8ecc:	27a40058 	addiu	a0,sp,88
    8ed0:	2407185c 	li	a3,6236
    8ed4:	0c000000 	jal	0 <func_80938CD0>
    8ed8:	8d450000 	lw	a1,0(t2)
    8edc:	8fbf001c 	lw	ra,28(sp)
    8ee0:	8fb00014 	lw	s0,20(sp)
    8ee4:	8fb10018 	lw	s1,24(sp)
    8ee8:	03e00008 	jr	ra
    8eec:	27bd0070 	addiu	sp,sp,112

00008ef0 <func_80941BC0>:
    8ef0:	27bdff60 	addiu	sp,sp,-160
    8ef4:	afbf003c 	sw	ra,60(sp)
    8ef8:	afb00038 	sw	s0,56(sp)
    8efc:	afa400a0 	sw	a0,160(sp)
    8f00:	afa500a4 	sw	a1,164(sp)
    8f04:	8ca50000 	lw	a1,0(a1)
    8f08:	3c060000 	lui	a2,0x0
    8f0c:	24c60000 	addiu	a2,a2,0
    8f10:	27a40088 	addiu	a0,sp,136
    8f14:	240718c5 	li	a3,6341
    8f18:	0c000000 	jal	0 <func_80938CD0>
    8f1c:	00a08025 	move	s0,a1
    8f20:	0c000000 	jal	0 <func_80938CD0>
    8f24:	00000000 	nop
    8f28:	8faf00a4 	lw	t7,164(sp)
    8f2c:	0c000000 	jal	0 <func_80938CD0>
    8f30:	8de40000 	lw	a0,0(t7)
    8f34:	8fa200a0 	lw	v0,160(sp)
    8f38:	00003825 	move	a3,zero
    8f3c:	c44c04bc 	lwc1	$f12,1212(v0)
    8f40:	c44e04c0 	lwc1	$f14,1216(v0)
    8f44:	0c000000 	jal	0 <func_80938CD0>
    8f48:	8c4604c4 	lw	a2,1220(v0)
    8f4c:	8fb800a0 	lw	t8,160(sp)
    8f50:	24070001 	li	a3,1
    8f54:	c70c01b4 	lwc1	$f12,436(t8)
    8f58:	44066000 	mfc1	a2,$f12
    8f5c:	0c000000 	jal	0 <func_80938CD0>
    8f60:	46006386 	mov.s	$f14,$f12
    8f64:	8e0202d0 	lw	v0,720(s0)
    8f68:	3c0bda38 	lui	t3,0xda38
    8f6c:	356b0003 	ori	t3,t3,0x3
    8f70:	24590008 	addiu	t9,v0,8
    8f74:	ae1902d0 	sw	t9,720(s0)
    8f78:	ac4b0000 	sw	t3,0(v0)
    8f7c:	8fac00a4 	lw	t4,164(sp)
    8f80:	3c050000 	lui	a1,0x0
    8f84:	24a50000 	addiu	a1,a1,0
    8f88:	8d840000 	lw	a0,0(t4)
    8f8c:	240618d6 	li	a2,6358
    8f90:	0c000000 	jal	0 <func_80938CD0>
    8f94:	afa20084 	sw	v0,132(sp)
    8f98:	8fa30084 	lw	v1,132(sp)
    8f9c:	3c09fa00 	lui	t1,0xfa00
    8fa0:	2401ff00 	li	at,-256
    8fa4:	ac620004 	sw	v0,4(v1)
    8fa8:	8e0202d0 	lw	v0,720(s0)
    8fac:	8fa800a0 	lw	t0,160(sp)
    8fb0:	3c0e0028 	lui	t6,0x28
    8fb4:	244d0008 	addiu	t5,v0,8
    8fb8:	ae0d02d0 	sw	t5,720(s0)
    8fbc:	ac490000 	sw	t1,0(v0)
    8fc0:	c50401b0 	lwc1	$f4,432(t0)
    8fc4:	35ce1e50 	ori	t6,t6,0x1e50
    8fc8:	3c0afb00 	lui	t2,0xfb00
    8fcc:	4600218d 	trunc.w.s	$f6,$f4
    8fd0:	3c040602 	lui	a0,0x602
    8fd4:	2484bc00 	addiu	a0,a0,-17408
    8fd8:	3c18de00 	lui	t8,0xde00
    8fdc:	44193000 	mfc1	t9,$f6
    8fe0:	00000000 	nop
    8fe4:	332b00ff 	andi	t3,t9,0xff
    8fe8:	01616025 	or	t4,t3,at
    8fec:	ac4c0004 	sw	t4,4(v0)
    8ff0:	8e0202d0 	lw	v0,720(s0)
    8ff4:	0004c900 	sll	t9,a0,0x4
    8ff8:	00195f02 	srl	t3,t9,0x1c
    8ffc:	244d0008 	addiu	t5,v0,8
    9000:	ae0d02d0 	sw	t5,720(s0)
    9004:	ac4e0004 	sw	t6,4(v0)
    9008:	ac4a0000 	sw	t2,0(v0)
    900c:	8e0202d0 	lw	v0,720(s0)
    9010:	3c0d0000 	lui	t5,0x0
    9014:	000b6080 	sll	t4,t3,0x2
    9018:	244f0008 	addiu	t7,v0,8
    901c:	ae0f02d0 	sw	t7,720(s0)
    9020:	01ac6821 	addu	t5,t5,t4
    9024:	3c0100ff 	lui	at,0xff
    9028:	ac580000 	sw	t8,0(v0)
    902c:	8dad0000 	lw	t5,0(t5)
    9030:	3421ffff 	ori	at,at,0xffff
    9034:	00817024 	and	t6,a0,at
    9038:	3c018000 	lui	at,0x8000
    903c:	01ae7821 	addu	t7,t5,t6
    9040:	01e1c021 	addu	t8,t7,at
    9044:	ac580004 	sw	t8,4(v0)
    9048:	8e0302d0 	lw	v1,720(s0)
    904c:	24180001 	li	t8,1
    9050:	24790008 	addiu	t9,v1,8
    9054:	ae1902d0 	sw	t9,720(s0)
    9058:	ac690000 	sw	t1,0(v1)
    905c:	c50a01b0 	lwc1	$f10,432(t0)
    9060:	c50801bc 	lwc1	$f8,444(t0)
    9064:	4600540d 	trunc.w.s	$f16,$f10
    9068:	440c8000 	mfc1	t4,$f16
    906c:	00000000 	nop
    9070:	000c6c00 	sll	t5,t4,0x10
    9074:	000d7403 	sra	t6,t5,0x10
    9078:	448e9000 	mtc1	t6,$f18
    907c:	240dff80 	li	t5,-128
    9080:	46809120 	cvt.s.w	$f4,$f18
    9084:	46044182 	mul.s	$f6,$f8,$f4
    9088:	444ff800 	cfc1	t7,$31
    908c:	44d8f800 	ctc1	t8,$31
    9090:	00000000 	nop
    9094:	460032a4 	cvt.w.s	$f10,$f6
    9098:	4458f800 	cfc1	t8,$31
    909c:	00000000 	nop
    90a0:	33180078 	andi	t8,t8,0x78
    90a4:	13000012 	beqz	t8,90f0 <func_80941BC0+0x200>
    90a8:	3c014f00 	lui	at,0x4f00
    90ac:	44815000 	mtc1	at,$f10
    90b0:	24180001 	li	t8,1
    90b4:	460a3281 	sub.s	$f10,$f6,$f10
    90b8:	44d8f800 	ctc1	t8,$31
    90bc:	00000000 	nop
    90c0:	460052a4 	cvt.w.s	$f10,$f10
    90c4:	4458f800 	cfc1	t8,$31
    90c8:	00000000 	nop
    90cc:	33180078 	andi	t8,t8,0x78
    90d0:	17000005 	bnez	t8,90e8 <func_80941BC0+0x1f8>
    90d4:	00000000 	nop
    90d8:	44185000 	mfc1	t8,$f10
    90dc:	3c018000 	lui	at,0x8000
    90e0:	10000007 	b	9100 <func_80941BC0+0x210>
    90e4:	0301c025 	or	t8,t8,at
    90e8:	10000005 	b	9100 <func_80941BC0+0x210>
    90ec:	2418ffff 	li	t8,-1
    90f0:	44185000 	mfc1	t8,$f10
    90f4:	00000000 	nop
    90f8:	0700fffb 	bltz	t8,90e8 <func_80941BC0+0x1f8>
    90fc:	00000000 	nop
    9100:	3c01d7d7 	lui	at,0xd7d7
    9104:	3421d700 	ori	at,at,0xd700
    9108:	331900ff 	andi	t9,t8,0xff
    910c:	03215825 	or	t3,t9,at
    9110:	ac6b0004 	sw	t3,4(v1)
    9114:	8e0202d0 	lw	v0,720(s0)
    9118:	44cff800 	ctc1	t7,$31
    911c:	3c0fdb06 	lui	t7,0xdb06
    9120:	244c0008 	addiu	t4,v0,8
    9124:	ae0c02d0 	sw	t4,720(s0)
    9128:	ac4d0004 	sw	t5,4(v0)
    912c:	ac4a0000 	sw	t2,0(v0)
    9130:	8e0302d0 	lw	v1,720(s0)
    9134:	35ef0020 	ori	t7,t7,0x20
    9138:	240c0001 	li	t4,1
    913c:	246e0008 	addiu	t6,v1,8
    9140:	ae0e02d0 	sw	t6,720(s0)
    9144:	ac6f0000 	sw	t7,0(v1)
    9148:	8fb800a4 	lw	t8,164(sp)
    914c:	240b0040 	li	t3,64
    9150:	24190020 	li	t9,32
    9154:	8f040000 	lw	a0,0(t8)
    9158:	afac0018 	sw	t4,24(sp)
    915c:	afab0014 	sw	t3,20(sp)
    9160:	afb90010 	sw	t9,16(sp)
    9164:	240e0001 	li	t6,1
    9168:	444df800 	cfc1	t5,$31
    916c:	44cef800 	ctc1	t6,$31
    9170:	c51001c4 	lwc1	$f16,452(t0)
    9174:	240c0010 	li	t4,16
    9178:	00002825 	move	a1,zero
    917c:	460084a4 	cvt.w.s	$f18,$f16
    9180:	00003025 	move	a2,zero
    9184:	00003825 	move	a3,zero
    9188:	444ef800 	cfc1	t6,$31
    918c:	00000000 	nop
    9190:	31ce0078 	andi	t6,t6,0x78
    9194:	11c00012 	beqz	t6,91e0 <func_80941BC0+0x2f0>
    9198:	3c014f00 	lui	at,0x4f00
    919c:	44819000 	mtc1	at,$f18
    91a0:	240e0001 	li	t6,1
    91a4:	46128481 	sub.s	$f18,$f16,$f18
    91a8:	44cef800 	ctc1	t6,$31
    91ac:	00000000 	nop
    91b0:	460094a4 	cvt.w.s	$f18,$f18
    91b4:	444ef800 	cfc1	t6,$31
    91b8:	00000000 	nop
    91bc:	31ce0078 	andi	t6,t6,0x78
    91c0:	15c00005 	bnez	t6,91d8 <func_80941BC0+0x2e8>
    91c4:	00000000 	nop
    91c8:	440e9000 	mfc1	t6,$f18
    91cc:	3c018000 	lui	at,0x8000
    91d0:	10000007 	b	91f0 <func_80941BC0+0x300>
    91d4:	01c17025 	or	t6,t6,at
    91d8:	10000005 	b	91f0 <func_80941BC0+0x300>
    91dc:	240effff 	li	t6,-1
    91e0:	440e9000 	mfc1	t6,$f18
    91e4:	00000000 	nop
    91e8:	05c0fffb 	bltz	t6,91d8 <func_80941BC0+0x2e8>
    91ec:	00000000 	nop
    91f0:	31cf003f 	andi	t7,t6,0x3f
    91f4:	afaf001c 	sw	t7,28(sp)
    91f8:	85180152 	lh	t8,338(t0)
    91fc:	44cdf800 	ctc1	t5,$31
    9200:	240d0010 	li	t5,16
    9204:	0018c880 	sll	t9,t8,0x2
    9208:	332b003f 	andi	t3,t9,0x3f
    920c:	afab0020 	sw	t3,32(sp)
    9210:	afad0028 	sw	t5,40(sp)
    9214:	afa3006c 	sw	v1,108(sp)
    9218:	0c000000 	jal	0 <func_80938CD0>
    921c:	afac0024 	sw	t4,36(sp)
    9220:	8fa3006c 	lw	v1,108(sp)
    9224:	0c000000 	jal	0 <func_80938CD0>
    9228:	ac620004 	sw	v0,4(v1)
    922c:	8fae00a0 	lw	t6,160(sp)
    9230:	24050001 	li	a1,1
    9234:	0c000000 	jal	0 <func_80938CD0>
    9238:	c5cc01c0 	lwc1	$f12,448(t6)
    923c:	8e0202d0 	lw	v0,720(s0)
    9240:	3c18da38 	lui	t8,0xda38
    9244:	37180003 	ori	t8,t8,0x3
    9248:	244f0008 	addiu	t7,v0,8
    924c:	ae0f02d0 	sw	t7,720(s0)
    9250:	ac580000 	sw	t8,0(v0)
    9254:	8fb900a4 	lw	t9,164(sp)
    9258:	3c050000 	lui	a1,0x0
    925c:	24a50000 	addiu	a1,a1,0
    9260:	8f240000 	lw	a0,0(t9)
    9264:	24061917 	li	a2,6423
    9268:	0c000000 	jal	0 <func_80938CD0>
    926c:	afa20068 	sw	v0,104(sp)
    9270:	8fa30068 	lw	v1,104(sp)
    9274:	3c040602 	lui	a0,0x602
    9278:	2484c1c0 	addiu	a0,a0,-15936
    927c:	ac620004 	sw	v0,4(v1)
    9280:	8e0202d0 	lw	v0,720(s0)
    9284:	00046900 	sll	t5,a0,0x4
    9288:	000d7702 	srl	t6,t5,0x1c
    928c:	244b0008 	addiu	t3,v0,8
    9290:	ae0b02d0 	sw	t3,720(s0)
    9294:	000e7880 	sll	t7,t6,0x2
    9298:	3c0cde00 	lui	t4,0xde00
    929c:	3c180000 	lui	t8,0x0
    92a0:	030fc021 	addu	t8,t8,t7
    92a4:	3c0100ff 	lui	at,0xff
    92a8:	ac4c0000 	sw	t4,0(v0)
    92ac:	8f180000 	lw	t8,0(t8)
    92b0:	3421ffff 	ori	at,at,0xffff
    92b4:	0081c824 	and	t9,a0,at
    92b8:	3c018000 	lui	at,0x8000
    92bc:	03195821 	addu	t3,t8,t9
    92c0:	01616021 	addu	t4,t3,at
    92c4:	0c000000 	jal	0 <func_80938CD0>
    92c8:	ac4c0004 	sw	t4,4(v0)
    92cc:	8e0202d0 	lw	v0,720(s0)
    92d0:	3c0eda38 	lui	t6,0xda38
    92d4:	35ce0003 	ori	t6,t6,0x3
    92d8:	244d0008 	addiu	t5,v0,8
    92dc:	ae0d02d0 	sw	t5,720(s0)
    92e0:	ac4e0000 	sw	t6,0(v0)
    92e4:	8faf00a4 	lw	t7,164(sp)
    92e8:	3c050000 	lui	a1,0x0
    92ec:	24a50000 	addiu	a1,a1,0
    92f0:	8de40000 	lw	a0,0(t7)
    92f4:	2406191b 	li	a2,6427
    92f8:	0c000000 	jal	0 <func_80938CD0>
    92fc:	afa20060 	sw	v0,96(sp)
    9300:	8fa30060 	lw	v1,96(sp)
    9304:	3c19db06 	lui	t9,0xdb06
    9308:	37390034 	ori	t9,t9,0x34
    930c:	ac620004 	sw	v0,4(v1)
    9310:	8e0202d0 	lw	v0,720(s0)
    9314:	240d0020 	li	t5,32
    9318:	240e0040 	li	t6,64
    931c:	24580008 	addiu	t8,v0,8
    9320:	ae1802d0 	sw	t8,720(s0)
    9324:	ac590000 	sw	t9,0(v0)
    9328:	8fac00a0 	lw	t4,160(sp)
    932c:	8fab00a4 	lw	t3,164(sp)
    9330:	240f0001 	li	t7,1
    9334:	85830152 	lh	v1,338(t4)
    9338:	8d640000 	lw	a0,0(t3)
    933c:	afad0010 	sw	t5,16(sp)
    9340:	0003c023 	negu	t8,v1
    9344:	0018c840 	sll	t9,t8,0x1
    9348:	332b003f 	andi	t3,t9,0x3f
    934c:	240d0010 	li	t5,16
    9350:	240c0010 	li	t4,16
    9354:	000338c0 	sll	a3,v1,0x3
    9358:	30e700ff 	andi	a3,a3,0xff
    935c:	afac0024 	sw	t4,36(sp)
    9360:	afad0028 	sw	t5,40(sp)
    9364:	afab001c 	sw	t3,28(sp)
    9368:	afa00020 	sw	zero,32(sp)
    936c:	afaf0018 	sw	t7,24(sp)
    9370:	afae0014 	sw	t6,20(sp)
    9374:	00002825 	move	a1,zero
    9378:	afa2005c 	sw	v0,92(sp)
    937c:	0c000000 	jal	0 <func_80938CD0>
    9380:	3066007f 	andi	a2,v1,0x7f
    9384:	8fa8005c 	lw	t0,92(sp)
    9388:	3c0ffa00 	lui	t7,0xfa00
    938c:	3c01c3e1 	lui	at,0xc3e1
    9390:	ad020004 	sw	v0,4(t0)
    9394:	8e0202d0 	lw	v0,720(s0)
    9398:	3421eb00 	ori	at,at,0xeb00
    939c:	3c19fb00 	lui	t9,0xfb00
    93a0:	244e0008 	addiu	t6,v0,8
    93a4:	ae0e02d0 	sw	t6,720(s0)
    93a8:	ac4f0000 	sw	t7,0(v0)
    93ac:	8fb800a0 	lw	t8,160(sp)
    93b0:	240bff80 	li	t3,-128
    93b4:	3c040602 	lui	a0,0x602
    93b8:	c70801a8 	lwc1	$f8,424(t8)
    93bc:	2484a790 	addiu	a0,a0,-22640
    93c0:	4600410d 	trunc.w.s	$f4,$f8
    93c4:	440d2000 	mfc1	t5,$f4
    93c8:	00000000 	nop
    93cc:	31ae00ff 	andi	t6,t5,0xff
    93d0:	01c17825 	or	t7,t6,at
    93d4:	ac4f0004 	sw	t7,4(v0)
    93d8:	8e0202d0 	lw	v0,720(s0)
    93dc:	3c0ec810 	lui	t6,0xc810
    93e0:	3c0de200 	lui	t5,0xe200
    93e4:	24580008 	addiu	t8,v0,8
    93e8:	ae1802d0 	sw	t8,720(s0)
    93ec:	ac4b0004 	sw	t3,4(v0)
    93f0:	ac590000 	sw	t9,0(v0)
    93f4:	8e0202d0 	lw	v0,720(s0)
    93f8:	35ad001c 	ori	t5,t5,0x1c
    93fc:	35ce4f50 	ori	t6,t6,0x4f50
    9400:	244c0008 	addiu	t4,v0,8
    9404:	ae0c02d0 	sw	t4,720(s0)
    9408:	ac4e0004 	sw	t6,4(v0)
    940c:	ac4d0000 	sw	t5,0(v0)
    9410:	8e0202d0 	lw	v0,720(s0)
    9414:	3c190001 	lui	t9,0x1
    9418:	3c18d9ff 	lui	t8,0xd9ff
    941c:	244f0008 	addiu	t7,v0,8
    9420:	ae0f02d0 	sw	t7,720(s0)
    9424:	3718ffff 	ori	t8,t8,0xffff
    9428:	37390400 	ori	t9,t9,0x400
    942c:	ac590004 	sw	t9,4(v0)
    9430:	ac580000 	sw	t8,0(v0)
    9434:	8e0202d0 	lw	v0,720(s0)
    9438:	00046900 	sll	t5,a0,0x4
    943c:	000d7702 	srl	t6,t5,0x1c
    9440:	244b0008 	addiu	t3,v0,8
    9444:	ae0b02d0 	sw	t3,720(s0)
    9448:	000e7880 	sll	t7,t6,0x2
    944c:	3c180000 	lui	t8,0x0
    9450:	3c0cde00 	lui	t4,0xde00
    9454:	030fc021 	addu	t8,t8,t7
    9458:	3c0100ff 	lui	at,0xff
    945c:	ac4c0000 	sw	t4,0(v0)
    9460:	8f180000 	lw	t8,0(t8)
    9464:	3421ffff 	ori	at,at,0xffff
    9468:	0081c824 	and	t9,a0,at
    946c:	3c018000 	lui	at,0x8000
    9470:	03195821 	addu	t3,t8,t9
    9474:	01616021 	addu	t4,t3,at
    9478:	0c000000 	jal	0 <func_80938CD0>
    947c:	ac4c0004 	sw	t4,4(v0)
    9480:	8fad00a4 	lw	t5,164(sp)
    9484:	3c060000 	lui	a2,0x0
    9488:	24c60000 	addiu	a2,a2,0
    948c:	27a40088 	addiu	a0,sp,136
    9490:	2407193d 	li	a3,6461
    9494:	0c000000 	jal	0 <func_80938CD0>
    9498:	8da50000 	lw	a1,0(t5)
    949c:	8fbf003c 	lw	ra,60(sp)
    94a0:	8fb00038 	lw	s0,56(sp)
    94a4:	27bd00a0 	addiu	sp,sp,160
    94a8:	03e00008 	jr	ra
    94ac:	00000000 	nop

000094b0 <func_80942180>:
    94b0:	27bdff58 	addiu	sp,sp,-168
    94b4:	afbf003c 	sw	ra,60(sp)
    94b8:	afb00038 	sw	s0,56(sp)
    94bc:	afa400a8 	sw	a0,168(sp)
    94c0:	afa500ac 	sw	a1,172(sp)
    94c4:	8ca50000 	lw	a1,0(a1)
    94c8:	3c060000 	lui	a2,0x0
    94cc:	24c60000 	addiu	a2,a2,0
    94d0:	27a40090 	addiu	a0,sp,144
    94d4:	24071944 	li	a3,6468
    94d8:	0c000000 	jal	0 <func_80938CD0>
    94dc:	00a08025 	move	s0,a1
    94e0:	0c000000 	jal	0 <func_80938CD0>
    94e4:	00000000 	nop
    94e8:	8faf00ac 	lw	t7,172(sp)
    94ec:	0c000000 	jal	0 <func_80938CD0>
    94f0:	8de40000 	lw	a0,0(t7)
    94f4:	8fa200a8 	lw	v0,168(sp)
    94f8:	00003825 	move	a3,zero
    94fc:	c44c04bc 	lwc1	$f12,1212(v0)
    9500:	c44e04c0 	lwc1	$f14,1216(v0)
    9504:	0c000000 	jal	0 <func_80938CD0>
    9508:	8c4604c4 	lw	a2,1220(v0)
    950c:	8fb800a8 	lw	t8,168(sp)
    9510:	24070001 	li	a3,1
    9514:	c70c01b8 	lwc1	$f12,440(t8)
    9518:	44066000 	mfc1	a2,$f12
    951c:	0c000000 	jal	0 <func_80938CD0>
    9520:	46006386 	mov.s	$f14,$f12
    9524:	8e0202d0 	lw	v0,720(s0)
    9528:	3c09db06 	lui	t1,0xdb06
    952c:	35290020 	ori	t1,t1,0x20
    9530:	24590008 	addiu	t9,v0,8
    9534:	ae1902d0 	sw	t9,720(s0)
    9538:	ac490000 	sw	t1,0(v0)
    953c:	8fab00a8 	lw	t3,168(sp)
    9540:	8faa00ac 	lw	t2,172(sp)
    9544:	24090020 	li	t1,32
    9548:	85630150 	lh	v1,336(t3)
    954c:	8d440000 	lw	a0,0(t2)
    9550:	24190020 	li	t9,32
    9554:	00037840 	sll	t7,v1,0x1
    9558:	31f8007f 	andi	t8,t7,0x7f
    955c:	240c0020 	li	t4,32
    9560:	240d0020 	li	t5,32
    9564:	240e0001 	li	t6,1
    9568:	00033023 	negu	a2,v1
    956c:	30c6007f 	andi	a2,a2,0x7f
    9570:	afae0018 	sw	t6,24(sp)
    9574:	afad0014 	sw	t5,20(sp)
    9578:	afac0010 	sw	t4,16(sp)
    957c:	afb8001c 	sw	t8,28(sp)
    9580:	afb90024 	sw	t9,36(sp)
    9584:	afa90028 	sw	t1,40(sp)
    9588:	afa00020 	sw	zero,32(sp)
    958c:	00002825 	move	a1,zero
    9590:	00003825 	move	a3,zero
    9594:	0c000000 	jal	0 <func_80938CD0>
    9598:	afa2008c 	sw	v0,140(sp)
    959c:	8fa8008c 	lw	t0,140(sp)
    95a0:	3c0bda38 	lui	t3,0xda38
    95a4:	356b0003 	ori	t3,t3,0x3
    95a8:	ad020004 	sw	v0,4(t0)
    95ac:	8e0202d0 	lw	v0,720(s0)
    95b0:	3c050000 	lui	a1,0x0
    95b4:	24a50000 	addiu	a1,a1,0
    95b8:	244a0008 	addiu	t2,v0,8
    95bc:	ae0a02d0 	sw	t2,720(s0)
    95c0:	ac4b0000 	sw	t3,0(v0)
    95c4:	8fac00ac 	lw	t4,172(sp)
    95c8:	24061961 	li	a2,6497
    95cc:	8d840000 	lw	a0,0(t4)
    95d0:	0c000000 	jal	0 <func_80938CD0>
    95d4:	afa20088 	sw	v0,136(sp)
    95d8:	8fa30088 	lw	v1,136(sp)
    95dc:	3c0efa00 	lui	t6,0xfa00
    95e0:	3c016428 	lui	at,0x6428
    95e4:	ac620004 	sw	v0,4(v1)
    95e8:	8e0202d0 	lw	v0,720(s0)
    95ec:	3c19fff5 	lui	t9,0xfff5
    95f0:	3739ff80 	ori	t9,t9,0xff80
    95f4:	244d0008 	addiu	t5,v0,8
    95f8:	ae0d02d0 	sw	t5,720(s0)
    95fc:	ac4e0000 	sw	t6,0(v0)
    9600:	8faf00a8 	lw	t7,168(sp)
    9604:	3c0ee700 	lui	t6,0xe700
    9608:	3c18fb00 	lui	t8,0xfb00
    960c:	c5e401b0 	lwc1	$f4,432(t7)
    9610:	3c040602 	lui	a0,0x602
    9614:	24849d40 	addiu	a0,a0,-25280
    9618:	4600218d 	trunc.w.s	$f6,$f4
    961c:	440a3000 	mfc1	t2,$f6
    9620:	00000000 	nop
    9624:	314b00ff 	andi	t3,t2,0xff
    9628:	01616025 	or	t4,t3,at
    962c:	ac4c0004 	sw	t4,4(v0)
    9630:	8e0202d0 	lw	v0,720(s0)
    9634:	00045900 	sll	t3,a0,0x4
    9638:	000b6702 	srl	t4,t3,0x1c
    963c:	244d0008 	addiu	t5,v0,8
    9640:	ae0d02d0 	sw	t5,720(s0)
    9644:	ac400004 	sw	zero,4(v0)
    9648:	ac4e0000 	sw	t6,0(v0)
    964c:	8e0202d0 	lw	v0,720(s0)
    9650:	3c0e0000 	lui	t6,0x0
    9654:	000c6880 	sll	t5,t4,0x2
    9658:	244f0008 	addiu	t7,v0,8
    965c:	ae0f02d0 	sw	t7,720(s0)
    9660:	ac590004 	sw	t9,4(v0)
    9664:	ac580000 	sw	t8,0(v0)
    9668:	8e0202d0 	lw	v0,720(s0)
    966c:	3c0ade00 	lui	t2,0xde00
    9670:	01cd7021 	addu	t6,t6,t5
    9674:	24490008 	addiu	t1,v0,8
    9678:	ae0902d0 	sw	t1,720(s0)
    967c:	3c0100ff 	lui	at,0xff
    9680:	ac4a0000 	sw	t2,0(v0)
    9684:	8dce0000 	lw	t6,0(t6)
    9688:	3421ffff 	ori	at,at,0xffff
    968c:	00817824 	and	t7,a0,at
    9690:	3c018000 	lui	at,0x8000
    9694:	01cfc021 	addu	t8,t6,t7
    9698:	0301c821 	addu	t9,t8,at
    969c:	ac590004 	sw	t9,4(v0)
    96a0:	8fa400ac 	lw	a0,172(sp)
    96a4:	3c010001 	lui	at,0x1
    96a8:	34211da0 	ori	at,at,0x1da0
    96ac:	0c000000 	jal	0 <func_80938CD0>
    96b0:	00812021 	addu	a0,a0,at
    96b4:	8e0202d0 	lw	v0,720(s0)
    96b8:	3c0ada38 	lui	t2,0xda38
    96bc:	354a0003 	ori	t2,t2,0x3
    96c0:	24490008 	addiu	t1,v0,8
    96c4:	ae0902d0 	sw	t1,720(s0)
    96c8:	ac4a0000 	sw	t2,0(v0)
    96cc:	8fab00ac 	lw	t3,172(sp)
    96d0:	3c050000 	lui	a1,0x0
    96d4:	24a50000 	addiu	a1,a1,0
    96d8:	8d640000 	lw	a0,0(t3)
    96dc:	24061972 	li	a2,6514
    96e0:	0c000000 	jal	0 <func_80938CD0>
    96e4:	afa20074 	sw	v0,116(sp)
    96e8:	8fa30074 	lw	v1,116(sp)
    96ec:	3c0ddb06 	lui	t5,0xdb06
    96f0:	35ad0020 	ori	t5,t5,0x20
    96f4:	ac620004 	sw	v0,4(v1)
    96f8:	8e0202d0 	lw	v0,720(s0)
    96fc:	24180020 	li	t8,32
    9700:	24190040 	li	t9,64
    9704:	244c0008 	addiu	t4,v0,8
    9708:	ae0c02d0 	sw	t4,720(s0)
    970c:	ac4d0000 	sw	t5,0(v0)
    9710:	8faf00a8 	lw	t7,168(sp)
    9714:	8fae00ac 	lw	t6,172(sp)
    9718:	240d0040 	li	t5,64
    971c:	85e30150 	lh	v1,336(t7)
    9720:	8dc40000 	lw	a0,0(t6)
    9724:	240c0020 	li	t4,32
    9728:	00033823 	negu	a3,v1
    972c:	00e00821 	move	at,a3
    9730:	00073880 	sll	a3,a3,0x2
    9734:	00e13823 	subu	a3,a3,at
    9738:	00073840 	sll	a3,a3,0x1
    973c:	00035040 	sll	t2,v1,0x1
    9740:	314b007f 	andi	t3,t2,0x7f
    9744:	30e700ff 	andi	a3,a3,0xff
    9748:	24090001 	li	t1,1
    974c:	afa90018 	sw	t1,24(sp)
    9750:	afa70020 	sw	a3,32(sp)
    9754:	afab001c 	sw	t3,28(sp)
    9758:	afac0024 	sw	t4,36(sp)
    975c:	afad0028 	sw	t5,40(sp)
    9760:	afb90014 	sw	t9,20(sp)
    9764:	afb80010 	sw	t8,16(sp)
    9768:	00002825 	move	a1,zero
    976c:	afa20070 	sw	v0,112(sp)
    9770:	0c000000 	jal	0 <func_80938CD0>
    9774:	3066007f 	andi	a2,v1,0x7f
    9778:	8fa80070 	lw	t0,112(sp)
    977c:	3c0ffa00 	lui	t7,0xfa00
    9780:	3c015000 	lui	at,0x5000
    9784:	ad020004 	sw	v0,4(t0)
    9788:	8e0202d0 	lw	v0,720(s0)
    978c:	3c19fb00 	lui	t9,0xfb00
    9790:	24090064 	li	t1,100
    9794:	244e0008 	addiu	t6,v0,8
    9798:	ae0e02d0 	sw	t6,720(s0)
    979c:	ac4f0000 	sw	t7,0(v0)
    97a0:	8fb800a8 	lw	t8,168(sp)
    97a4:	3c0fe700 	lui	t7,0xe700
    97a8:	3c040602 	lui	a0,0x602
    97ac:	c70801ac 	lwc1	$f8,428(t8)
    97b0:	24848fc0 	addiu	a0,a0,-28736
    97b4:	00002825 	move	a1,zero
    97b8:	4600428d 	trunc.w.s	$f10,$f8
    97bc:	00003825 	move	a3,zero
    97c0:	440b5000 	mfc1	t3,$f10
    97c4:	00000000 	nop
    97c8:	316c00ff 	andi	t4,t3,0xff
    97cc:	01816825 	or	t5,t4,at
    97d0:	ac4d0004 	sw	t5,4(v0)
    97d4:	8e0202d0 	lw	v0,720(s0)
    97d8:	00046100 	sll	t4,a0,0x4
    97dc:	000c6f02 	srl	t5,t4,0x1c
    97e0:	244e0008 	addiu	t6,v0,8
    97e4:	ae0e02d0 	sw	t6,720(s0)
    97e8:	ac4f0000 	sw	t7,0(v0)
    97ec:	ac400004 	sw	zero,4(v0)
    97f0:	8e0202d0 	lw	v0,720(s0)
    97f4:	3c0f0000 	lui	t7,0x0
    97f8:	000d7080 	sll	t6,t5,0x2
    97fc:	24580008 	addiu	t8,v0,8
    9800:	ae1802d0 	sw	t8,720(s0)
    9804:	ac590000 	sw	t9,0(v0)
    9808:	ac490004 	sw	t1,4(v0)
    980c:	8e0202d0 	lw	v0,720(s0)
    9810:	3c0bde00 	lui	t3,0xde00
    9814:	01ee7821 	addu	t7,t7,t6
    9818:	244a0008 	addiu	t2,v0,8
    981c:	ae0a02d0 	sw	t2,720(s0)
    9820:	3c0100ff 	lui	at,0xff
    9824:	ac4b0000 	sw	t3,0(v0)
    9828:	8def0000 	lw	t7,0(t7)
    982c:	3421ffff 	ori	at,at,0xffff
    9830:	0081c024 	and	t8,a0,at
    9834:	3c018000 	lui	at,0x8000
    9838:	01f8c821 	addu	t9,t7,t8
    983c:	03214821 	addu	t1,t9,at
    9840:	ac490004 	sw	t1,4(v0)
    9844:	8e0202d0 	lw	v0,720(s0)
    9848:	3c0bdb06 	lui	t3,0xdb06
    984c:	356b0020 	ori	t3,t3,0x20
    9850:	244a0008 	addiu	t2,v0,8
    9854:	ae0a02d0 	sw	t2,720(s0)
    9858:	ac4b0000 	sw	t3,0(v0)
    985c:	8fad00a8 	lw	t5,168(sp)
    9860:	8fac00ac 	lw	t4,172(sp)
    9864:	240b0040 	li	t3,64
    9868:	85a30150 	lh	v1,336(t5)
    986c:	8d840000 	lw	a0,0(t4)
    9870:	240a0020 	li	t2,32
    9874:	00031823 	negu	v1,v1
    9878:	0003c880 	sll	t9,v1,0x2
    987c:	0323c821 	addu	t9,t9,v1
    9880:	0019c840 	sll	t9,t9,0x1
    9884:	00033080 	sll	a2,v1,0x2
    9888:	00c33023 	subu	a2,a2,v1
    988c:	332900ff 	andi	t1,t9,0xff
    9890:	24180001 	li	t8,1
    9894:	240f0020 	li	t7,32
    9898:	240e0020 	li	t6,32
    989c:	afae0010 	sw	t6,16(sp)
    98a0:	afaf0014 	sw	t7,20(sp)
    98a4:	afb80018 	sw	t8,24(sp)
    98a8:	afa90020 	sw	t1,32(sp)
    98ac:	30c6007f 	andi	a2,a2,0x7f
    98b0:	afaa0024 	sw	t2,36(sp)
    98b4:	afab0028 	sw	t3,40(sp)
    98b8:	afa0001c 	sw	zero,28(sp)
    98bc:	0c000000 	jal	0 <func_80938CD0>
    98c0:	afa2005c 	sw	v0,92(sp)
    98c4:	8fa8005c 	lw	t0,92(sp)
    98c8:	3c0dfa00 	lui	t5,0xfa00
    98cc:	3c010000 	lui	at,0x0
    98d0:	ad020004 	sw	v0,4(t0)
    98d4:	8e0202d0 	lw	v0,720(s0)
    98d8:	3c18c8eb 	lui	t8,0xc8eb
    98dc:	3718f080 	ori	t8,t8,0xf080
    98e0:	244c0008 	addiu	t4,v0,8
    98e4:	ae0c02d0 	sw	t4,720(s0)
    98e8:	ac4d0000 	sw	t5,0(v0)
    98ec:	8fae00a8 	lw	t6,168(sp)
    98f0:	c4320000 	lwc1	$f18,0(at)
    98f4:	3c016432 	lui	at,0x6432
    98f8:	c5d001a8 	lwc1	$f16,424(t6)
    98fc:	3c0de700 	lui	t5,0xe700
    9900:	3c0ffb00 	lui	t7,0xfb00
    9904:	46128102 	mul.s	$f4,$f16,$f18
    9908:	24070001 	li	a3,1
    990c:	4600218d 	trunc.w.s	$f6,$f4
    9910:	44093000 	mfc1	t1,$f6
    9914:	00000000 	nop
    9918:	312a00ff 	andi	t2,t1,0xff
    991c:	01415825 	or	t3,t2,at
    9920:	ac4b0004 	sw	t3,4(v0)
    9924:	8e0202d0 	lw	v0,720(s0)
    9928:	244c0008 	addiu	t4,v0,8
    992c:	ae0c02d0 	sw	t4,720(s0)
    9930:	ac400004 	sw	zero,4(v0)
    9934:	ac4d0000 	sw	t5,0(v0)
    9938:	8e0202d0 	lw	v0,720(s0)
    993c:	244e0008 	addiu	t6,v0,8
    9940:	ae0e02d0 	sw	t6,720(s0)
    9944:	ac580004 	sw	t8,4(v0)
    9948:	ac4f0000 	sw	t7,0(v0)
    994c:	8fb900a8 	lw	t9,168(sp)
    9950:	c72c01b4 	lwc1	$f12,436(t9)
    9954:	44066000 	mfc1	a2,$f12
    9958:	0c000000 	jal	0 <func_80938CD0>
    995c:	46006386 	mov.s	$f14,$f12
    9960:	8e0202d0 	lw	v0,720(s0)
    9964:	3c0ada38 	lui	t2,0xda38
    9968:	354a0003 	ori	t2,t2,0x3
    996c:	24490008 	addiu	t1,v0,8
    9970:	ae0902d0 	sw	t1,720(s0)
    9974:	ac4a0000 	sw	t2,0(v0)
    9978:	8fab00ac 	lw	t3,172(sp)
    997c:	3c050000 	lui	a1,0x0
    9980:	24a50000 	addiu	a1,a1,0
    9984:	8d640000 	lw	a0,0(t3)
    9988:	240619af 	li	a2,6575
    998c:	0c000000 	jal	0 <func_80938CD0>
    9990:	afa2004c 	sw	v0,76(sp)
    9994:	8fa3004c 	lw	v1,76(sp)
    9998:	3c040602 	lui	a0,0x602
    999c:	24849938 	addiu	a0,a0,-26312
    99a0:	ac620004 	sw	v0,4(v1)
    99a4:	8e0202d0 	lw	v0,720(s0)
    99a8:	00047100 	sll	t6,a0,0x4
    99ac:	000e7f02 	srl	t7,t6,0x1c
    99b0:	244c0008 	addiu	t4,v0,8
    99b4:	ae0c02d0 	sw	t4,720(s0)
    99b8:	000fc080 	sll	t8,t7,0x2
    99bc:	3c0dde00 	lui	t5,0xde00
    99c0:	3c190000 	lui	t9,0x0
    99c4:	0338c821 	addu	t9,t9,t8
    99c8:	3c0100ff 	lui	at,0xff
    99cc:	ac4d0000 	sw	t5,0(v0)
    99d0:	8f390000 	lw	t9,0(t9)
    99d4:	3421ffff 	ori	at,at,0xffff
    99d8:	00814824 	and	t1,a0,at
    99dc:	3c018000 	lui	at,0x8000
    99e0:	03295021 	addu	t2,t9,t1
    99e4:	01415821 	addu	t3,t2,at
    99e8:	0c000000 	jal	0 <func_80938CD0>
    99ec:	ac4b0004 	sw	t3,4(v0)
    99f0:	8fac00ac 	lw	t4,172(sp)
    99f4:	3c060000 	lui	a2,0x0
    99f8:	24c60000 	addiu	a2,a2,0
    99fc:	27a40090 	addiu	a0,sp,144
    9a00:	240719b3 	li	a3,6579
    9a04:	0c000000 	jal	0 <func_80938CD0>
    9a08:	8d850000 	lw	a1,0(t4)
    9a0c:	8fbf003c 	lw	ra,60(sp)
    9a10:	8fb00038 	lw	s0,56(sp)
    9a14:	27bd00a8 	addiu	sp,sp,168
    9a18:	03e00008 	jr	ra
    9a1c:	00000000 	nop

00009a20 <func_809426F0>:
    9a20:	27bdff40 	addiu	sp,sp,-192
    9a24:	afb40058 	sw	s4,88(sp)
    9a28:	00a0a025 	move	s4,a1
    9a2c:	afbf005c 	sw	ra,92(sp)
    9a30:	afb30054 	sw	s3,84(sp)
    9a34:	afb20050 	sw	s2,80(sp)
    9a38:	afb1004c 	sw	s1,76(sp)
    9a3c:	afb00048 	sw	s0,72(sp)
    9a40:	f7b60040 	sdc1	$f22,64(sp)
    9a44:	f7b40038 	sdc1	$f20,56(sp)
    9a48:	8ca50000 	lw	a1,0(a1)
    9a4c:	00809825 	move	s3,a0
    9a50:	3c060000 	lui	a2,0x0
    9a54:	24c60000 	addiu	a2,a2,0
    9a58:	27a400a4 	addiu	a0,sp,164
    9a5c:	240719bb 	li	a3,6587
    9a60:	0c000000 	jal	0 <func_80938CD0>
    9a64:	00a09025 	move	s2,a1
    9a68:	8e4202d0 	lw	v0,720(s2)
    9a6c:	3c0fdb06 	lui	t7,0xdb06
    9a70:	35ef0020 	ori	t7,t7,0x20
    9a74:	244e0008 	addiu	t6,v0,8
    9a78:	ae4e02d0 	sw	t6,720(s2)
    9a7c:	ac4f0000 	sw	t7,0(v0)
    9a80:	86670152 	lh	a3,338(s3)
    9a84:	8e840000 	lw	a0,0(s4)
    9a88:	24180020 	li	t8,32
    9a8c:	00073823 	negu	a3,a3
    9a90:	00e00821 	move	at,a3
    9a94:	00073900 	sll	a3,a3,0x4
    9a98:	00e13823 	subu	a3,a3,at
    9a9c:	24190040 	li	t9,64
    9aa0:	24080001 	li	t0,1
    9aa4:	24090040 	li	t1,64
    9aa8:	240a0040 	li	t2,64
    9aac:	afaa0028 	sw	t2,40(sp)
    9ab0:	afa90024 	sw	t1,36(sp)
    9ab4:	afa80018 	sw	t0,24(sp)
    9ab8:	afb90014 	sw	t9,20(sp)
    9abc:	30e700ff 	andi	a3,a3,0xff
    9ac0:	afb80010 	sw	t8,16(sp)
    9ac4:	afa00020 	sw	zero,32(sp)
    9ac8:	afa0001c 	sw	zero,28(sp)
    9acc:	00002825 	move	a1,zero
    9ad0:	00003025 	move	a2,zero
    9ad4:	0c000000 	jal	0 <func_80938CD0>
    9ad8:	00408025 	move	s0,v0
    9adc:	0c000000 	jal	0 <func_80938CD0>
    9ae0:	ae020004 	sw	v0,4(s0)
    9ae4:	4480b000 	mtc1	zero,$f22
    9ae8:	3c06459c 	lui	a2,0x459c
    9aec:	34c64000 	ori	a2,a2,0x4000
    9af0:	24070001 	li	a3,1
    9af4:	4600b306 	mov.s	$f12,$f22
    9af8:	0c000000 	jal	0 <func_80938CD0>
    9afc:	4600b386 	mov.s	$f14,$f22
    9b00:	3c0144fa 	lui	at,0x44fa
    9b04:	44813000 	mtc1	at,$f6
    9b08:	c66404e0 	lwc1	$f4,1248(s3)
    9b0c:	24070001 	li	a3,1
    9b10:	46062303 	div.s	$f12,$f4,$f6
    9b14:	44066000 	mfc1	a2,$f12
    9b18:	0c000000 	jal	0 <func_80938CD0>
    9b1c:	46006386 	mov.s	$f14,$f12
    9b20:	c66c04ec 	lwc1	$f12,1260(s3)
    9b24:	0c000000 	jal	0 <func_80938CD0>
    9b28:	24050001 	li	a1,1
    9b2c:	8e4202d0 	lw	v0,720(s2)
    9b30:	3c0cda38 	lui	t4,0xda38
    9b34:	358c0003 	ori	t4,t4,0x3
    9b38:	244b0008 	addiu	t3,v0,8
    9b3c:	ae4b02d0 	sw	t3,720(s2)
    9b40:	3c050000 	lui	a1,0x0
    9b44:	ac4c0000 	sw	t4,0(v0)
    9b48:	8e840000 	lw	a0,0(s4)
    9b4c:	24a50000 	addiu	a1,a1,0
    9b50:	240619d6 	li	a2,6614
    9b54:	0c000000 	jal	0 <func_80938CD0>
    9b58:	00408025 	move	s0,v0
    9b5c:	ae020004 	sw	v0,4(s0)
    9b60:	866d001c 	lh	t5,28(s3)
    9b64:	3c0187af 	lui	at,0x87af
    9b68:	3421a500 	ori	at,at,0xa500
    9b6c:	15a00021 	bnez	t5,9bf4 <func_809426F0+0x1d4>
    9b70:	3c10fa00 	lui	s0,0xfa00
    9b74:	8e4202d0 	lw	v0,720(s2)
    9b78:	3c040602 	lui	a0,0x602
    9b7c:	2484cee0 	addiu	a0,a0,-12576
    9b80:	244e0008 	addiu	t6,v0,8
    9b84:	ae4e02d0 	sw	t6,720(s2)
    9b88:	ac500000 	sw	s0,0(v0)
    9b8c:	c66804d8 	lwc1	$f8,1240(s3)
    9b90:	00046900 	sll	t5,a0,0x4
    9b94:	000d7702 	srl	t6,t5,0x1c
    9b98:	4600428d 	trunc.w.s	$f10,$f8
    9b9c:	3c110000 	lui	s1,0x0
    9ba0:	26310000 	addiu	s1,s1,0
    9ba4:	000e7880 	sll	t7,t6,0x2
    9ba8:	44085000 	mfc1	t0,$f10
    9bac:	3c0cde00 	lui	t4,0xde00
    9bb0:	022fc021 	addu	t8,s1,t7
    9bb4:	310900ff 	andi	t1,t0,0xff
    9bb8:	01215025 	or	t2,t1,at
    9bbc:	ac4a0004 	sw	t2,4(v0)
    9bc0:	8e4202d0 	lw	v0,720(s2)
    9bc4:	3c0100ff 	lui	at,0xff
    9bc8:	3421ffff 	ori	at,at,0xffff
    9bcc:	244b0008 	addiu	t3,v0,8
    9bd0:	ae4b02d0 	sw	t3,720(s2)
    9bd4:	ac4c0000 	sw	t4,0(v0)
    9bd8:	8f190000 	lw	t9,0(t8)
    9bdc:	00814024 	and	t0,a0,at
    9be0:	3c018000 	lui	at,0x8000
    9be4:	03284821 	addu	t1,t9,t0
    9be8:	01215021 	addu	t2,t1,at
    9bec:	10000022 	b	9c78 <func_809426F0+0x258>
    9bf0:	ac4a0004 	sw	t2,4(v0)
    9bf4:	8e4202d0 	lw	v0,720(s2)
    9bf8:	3c10fa00 	lui	s0,0xfa00
    9bfc:	3c01ffff 	lui	at,0xffff
    9c00:	244b0008 	addiu	t3,v0,8
    9c04:	ae4b02d0 	sw	t3,720(s2)
    9c08:	ac500000 	sw	s0,0(v0)
    9c0c:	c67004d8 	lwc1	$f16,1240(s3)
    9c10:	3c040602 	lui	a0,0x602
    9c14:	2484dbe8 	addiu	a0,a0,-9240
    9c18:	4600848d 	trunc.w.s	$f18,$f16
    9c1c:	00045100 	sll	t2,a0,0x4
    9c20:	000a5f02 	srl	t3,t2,0x1c
    9c24:	3c110000 	lui	s1,0x0
    9c28:	440f9000 	mfc1	t7,$f18
    9c2c:	26310000 	addiu	s1,s1,0
    9c30:	000b6080 	sll	t4,t3,0x2
    9c34:	31f800ff 	andi	t8,t7,0xff
    9c38:	0301c825 	or	t9,t8,at
    9c3c:	ac590004 	sw	t9,4(v0)
    9c40:	8e4202d0 	lw	v0,720(s2)
    9c44:	3c09de00 	lui	t1,0xde00
    9c48:	3c0100ff 	lui	at,0xff
    9c4c:	24480008 	addiu	t0,v0,8
    9c50:	ae4802d0 	sw	t0,720(s2)
    9c54:	022c6821 	addu	t5,s1,t4
    9c58:	ac490000 	sw	t1,0(v0)
    9c5c:	8dae0000 	lw	t6,0(t5)
    9c60:	3421ffff 	ori	at,at,0xffff
    9c64:	00817824 	and	t7,a0,at
    9c68:	3c018000 	lui	at,0x8000
    9c6c:	01cfc021 	addu	t8,t6,t7
    9c70:	0301c821 	addu	t9,t8,at
    9c74:	ac590004 	sw	t9,4(v0)
    9c78:	0c000000 	jal	0 <func_80938CD0>
    9c7c:	00000000 	nop
    9c80:	8668001c 	lh	t0,28(s3)
    9c84:	55000022 	bnezl	t0,9d10 <func_809426F0+0x2f0>
    9c88:	8e4202d0 	lw	v0,720(s2)
    9c8c:	8e4202d0 	lw	v0,720(s2)
    9c90:	3c01c3e1 	lui	at,0xc3e1
    9c94:	3421eb00 	ori	at,at,0xeb00
    9c98:	24490008 	addiu	t1,v0,8
    9c9c:	ae4902d0 	sw	t1,720(s2)
    9ca0:	ac500000 	sw	s0,0(v0)
    9ca4:	c66404d4 	lwc1	$f4,1236(s3)
    9ca8:	3c040602 	lui	a0,0x602
    9cac:	2484a998 	addiu	a0,a0,-22120
    9cb0:	4600218d 	trunc.w.s	$f6,$f4
    9cb4:	00044100 	sll	t0,a0,0x4
    9cb8:	00084f02 	srl	t1,t0,0x1c
    9cbc:	00095080 	sll	t2,t1,0x2
    9cc0:	440d3000 	mfc1	t5,$f6
    9cc4:	3c19de00 	lui	t9,0xde00
    9cc8:	022a5821 	addu	t3,s1,t2
    9ccc:	31ae00ff 	andi	t6,t5,0xff
    9cd0:	01c17825 	or	t7,t6,at
    9cd4:	ac4f0004 	sw	t7,4(v0)
    9cd8:	8e4202d0 	lw	v0,720(s2)
    9cdc:	3c0100ff 	lui	at,0xff
    9ce0:	3421ffff 	ori	at,at,0xffff
    9ce4:	24580008 	addiu	t8,v0,8
    9ce8:	ae5802d0 	sw	t8,720(s2)
    9cec:	ac590000 	sw	t9,0(v0)
    9cf0:	8d6c0000 	lw	t4,0(t3)
    9cf4:	00816824 	and	t5,a0,at
    9cf8:	3c018000 	lui	at,0x8000
    9cfc:	018d7021 	addu	t6,t4,t5
    9d00:	01c17821 	addu	t7,t6,at
    9d04:	10000015 	b	9d5c <func_809426F0+0x33c>
    9d08:	ac4f0004 	sw	t7,4(v0)
    9d0c:	8e4202d0 	lw	v0,720(s2)
    9d10:	3c01c814 	lui	at,0xc814
    9d14:	3c0fffd7 	lui	t7,0xffd7
    9d18:	24580008 	addiu	t8,v0,8
    9d1c:	ae5802d0 	sw	t8,720(s2)
    9d20:	ac500000 	sw	s0,0(v0)
    9d24:	c66804d4 	lwc1	$f8,1236(s3)
    9d28:	35efff80 	ori	t7,t7,0xff80
    9d2c:	3c0efb00 	lui	t6,0xfb00
    9d30:	4600428d 	trunc.w.s	$f10,$f8
    9d34:	440a5000 	mfc1	t2,$f10
    9d38:	00000000 	nop
    9d3c:	314b00ff 	andi	t3,t2,0xff
    9d40:	01616025 	or	t4,t3,at
    9d44:	ac4c0004 	sw	t4,4(v0)
    9d48:	8e4202d0 	lw	v0,720(s2)
    9d4c:	244d0008 	addiu	t5,v0,8
    9d50:	ae4d02d0 	sw	t5,720(s2)
    9d54:	ac4f0004 	sw	t7,4(v0)
    9d58:	ac4e0000 	sw	t6,0(v0)
    9d5c:	3c010001 	lui	at,0x1
    9d60:	34211da0 	ori	at,at,0x1da0
    9d64:	3c020602 	lui	v0,0x602
    9d68:	2442a430 	addiu	v0,v0,-23504
    9d6c:	0281c021 	addu	t8,s4,at
    9d70:	3c0100ff 	lui	at,0xff
    9d74:	0002c900 	sll	t9,v0,0x4
    9d78:	00194702 	srl	t0,t9,0x1c
    9d7c:	3421ffff 	ori	at,at,0xffff
    9d80:	3c0a0000 	lui	t2,0x0
    9d84:	254a0000 	addiu	t2,t2,0
    9d88:	00416024 	and	t4,v0,at
    9d8c:	00084880 	sll	t1,t0,0x2
    9d90:	012a5821 	addu	t3,t1,t2
    9d94:	3c010000 	lui	at,0x0
    9d98:	c4340000 	lwc1	$f20,0(at)
    9d9c:	afab0064 	sw	t3,100(sp)
    9da0:	afac0060 	sw	t4,96(sp)
    9da4:	afb8006c 	sw	t8,108(sp)
    9da8:	00008825 	move	s1,zero
    9dac:	0c000000 	jal	0 <func_80938CD0>
    9db0:	00000000 	nop
    9db4:	3c06459c 	lui	a2,0x459c
    9db8:	34c64000 	ori	a2,a2,0x4000
    9dbc:	4600b306 	mov.s	$f12,$f22
    9dc0:	4600b386 	mov.s	$f14,$f22
    9dc4:	0c000000 	jal	0 <func_80938CD0>
    9dc8:	24070001 	li	a3,1
    9dcc:	44918000 	mtc1	s1,$f16
    9dd0:	3c010000 	lui	at,0x0
    9dd4:	c4240000 	lwc1	$f4,0(at)
    9dd8:	468084a0 	cvt.s.w	$f18,$f16
    9ddc:	3c013e00 	lui	at,0x3e00
    9de0:	44814000 	mtc1	at,$f8
    9de4:	c67004e8 	lwc1	$f16,1256(s3)
    9de8:	24050001 	li	a1,1
    9dec:	46049002 	mul.s	$f0,$f18,$f4
    9df0:	46000180 	add.s	$f6,$f0,$f0
    9df4:	46083282 	mul.s	$f10,$f6,$f8
    9df8:	0c000000 	jal	0 <func_80938CD0>
    9dfc:	46105300 	add.s	$f12,$f10,$f16
    9e00:	3c013fc0 	lui	at,0x3fc0
    9e04:	44812000 	mtc1	at,$f4
    9e08:	c67204e0 	lwc1	$f18,1248(s3)
    9e0c:	4406b000 	mfc1	a2,$f22
    9e10:	4600b306 	mov.s	$f12,$f22
    9e14:	46049382 	mul.s	$f14,$f18,$f4
    9e18:	0c000000 	jal	0 <func_80938CD0>
    9e1c:	24070001 	li	a3,1
    9e20:	8e4202d0 	lw	v0,720(s2)
    9e24:	3c0edb06 	lui	t6,0xdb06
    9e28:	35ce0020 	ori	t6,t6,0x20
    9e2c:	244d0008 	addiu	t5,v0,8
    9e30:	ae4d02d0 	sw	t5,720(s2)
    9e34:	ac4e0000 	sw	t6,0(v0)
    9e38:	86630152 	lh	v1,338(s3)
    9e3c:	8e840000 	lw	a0,0(s4)
    9e40:	00114880 	sll	t1,s1,0x2
    9e44:	01314823 	subu	t1,t1,s1
    9e48:	000948c0 	sll	t1,t1,0x3
    9e4c:	0011c080 	sll	t8,s1,0x2
    9e50:	0003c823 	negu	t9,v1
    9e54:	00194100 	sll	t0,t9,0x4
    9e58:	0311c021 	addu	t8,t8,s1
    9e5c:	01314821 	addu	t1,t1,s1
    9e60:	00037880 	sll	t7,v1,0x2
    9e64:	00094840 	sll	t1,t1,0x1
    9e68:	0018c040 	sll	t8,t8,0x1
    9e6c:	01194023 	subu	t0,t0,t9
    9e70:	01e37823 	subu	t7,t7,v1
    9e74:	01f83021 	addu	a2,t7,t8
    9e78:	01093821 	addu	a3,t0,t1
    9e7c:	240e0020 	li	t6,32
    9e80:	240d0020 	li	t5,32
    9e84:	240a0020 	li	t2,32
    9e88:	240b0040 	li	t3,64
    9e8c:	240c0001 	li	t4,1
    9e90:	afac0018 	sw	t4,24(sp)
    9e94:	afab0014 	sw	t3,20(sp)
    9e98:	afaa0010 	sw	t2,16(sp)
    9e9c:	afad0024 	sw	t5,36(sp)
    9ea0:	afae0028 	sw	t6,40(sp)
    9ea4:	30e700ff 	andi	a3,a3,0xff
    9ea8:	30c6007f 	andi	a2,a2,0x7f
    9eac:	afa00020 	sw	zero,32(sp)
    9eb0:	afa0001c 	sw	zero,28(sp)
    9eb4:	00002825 	move	a1,zero
    9eb8:	0c000000 	jal	0 <func_80938CD0>
    9ebc:	00408025 	move	s0,v0
    9ec0:	4406a000 	mfc1	a2,$f20
    9ec4:	ae020004 	sw	v0,4(s0)
    9ec8:	4600a306 	mov.s	$f12,$f20
    9ecc:	4600a386 	mov.s	$f14,$f20
    9ed0:	0c000000 	jal	0 <func_80938CD0>
    9ed4:	24070001 	li	a3,1
    9ed8:	0c000000 	jal	0 <func_80938CD0>
    9edc:	8fa4006c 	lw	a0,108(sp)
    9ee0:	8e4202d0 	lw	v0,720(s2)
    9ee4:	3c18da38 	lui	t8,0xda38
    9ee8:	37180003 	ori	t8,t8,0x3
    9eec:	244f0008 	addiu	t7,v0,8
    9ef0:	ae4f02d0 	sw	t7,720(s2)
    9ef4:	3c050000 	lui	a1,0x0
    9ef8:	ac580000 	sw	t8,0(v0)
    9efc:	8e840000 	lw	a0,0(s4)
    9f00:	24a50000 	addiu	a1,a1,0
    9f04:	24061a5f 	li	a2,6751
    9f08:	0c000000 	jal	0 <func_80938CD0>
    9f0c:	00408025 	move	s0,v0
    9f10:	ae020004 	sw	v0,4(s0)
    9f14:	8e4202d0 	lw	v0,720(s2)
    9f18:	3c08de00 	lui	t0,0xde00
    9f1c:	3c018000 	lui	at,0x8000
    9f20:	24590008 	addiu	t9,v0,8
    9f24:	ae5902d0 	sw	t9,720(s2)
    9f28:	ac480000 	sw	t0,0(v0)
    9f2c:	8fa90064 	lw	t1,100(sp)
    9f30:	8fab0060 	lw	t3,96(sp)
    9f34:	8d2a0000 	lw	t2,0(t1)
    9f38:	014b6021 	addu	t4,t2,t3
    9f3c:	01816821 	addu	t5,t4,at
    9f40:	0c000000 	jal	0 <func_80938CD0>
    9f44:	ac4d0004 	sw	t5,4(v0)
    9f48:	26310001 	addiu	s1,s1,1
    9f4c:	00118c00 	sll	s1,s1,0x10
    9f50:	00118c03 	sra	s1,s1,0x10
    9f54:	2a210008 	slti	at,s1,8
    9f58:	1420ff94 	bnez	at,9dac <func_809426F0+0x38c>
    9f5c:	00000000 	nop
    9f60:	3c060000 	lui	a2,0x0
    9f64:	24c60000 	addiu	a2,a2,0
    9f68:	27a400a4 	addiu	a0,sp,164
    9f6c:	8e850000 	lw	a1,0(s4)
    9f70:	0c000000 	jal	0 <func_80938CD0>
    9f74:	24071a64 	li	a3,6756
    9f78:	8fbf005c 	lw	ra,92(sp)
    9f7c:	d7b40038 	ldc1	$f20,56(sp)
    9f80:	d7b60040 	ldc1	$f22,64(sp)
    9f84:	8fb00048 	lw	s0,72(sp)
    9f88:	8fb1004c 	lw	s1,76(sp)
    9f8c:	8fb20050 	lw	s2,80(sp)
    9f90:	8fb30054 	lw	s3,84(sp)
    9f94:	8fb40058 	lw	s4,88(sp)
    9f98:	03e00008 	jr	ra
    9f9c:	27bd00c0 	addiu	sp,sp,192

00009fa0 <func_80942C70>:
    9fa0:	27bdff88 	addiu	sp,sp,-120
    9fa4:	afbf0024 	sw	ra,36(sp)
    9fa8:	afb10020 	sw	s1,32(sp)
    9fac:	afb0001c 	sw	s0,28(sp)
    9fb0:	afa5007c 	sw	a1,124(sp)
    9fb4:	8ca50000 	lw	a1,0(a1)
    9fb8:	00808025 	move	s0,a0
    9fbc:	3c060000 	lui	a2,0x0
    9fc0:	24c60000 	addiu	a2,a2,0
    9fc4:	27a4005c 	addiu	a0,sp,92
    9fc8:	24071a6d 	li	a3,6765
    9fcc:	0c000000 	jal	0 <func_80938CD0>
    9fd0:	00a08825 	move	s1,a1
    9fd4:	44802000 	mtc1	zero,$f4
    9fd8:	c606052c 	lwc1	$f6,1324(s0)
    9fdc:	46062032 	c.eq.s	$f4,$f6
    9fe0:	00000000 	nop
    9fe4:	450300d1 	bc1tl	a32c <func_80942C70+0x38c>
    9fe8:	8fac007c 	lw	t4,124(sp)
    9fec:	0c000000 	jal	0 <func_80938CD0>
    9ff0:	00000000 	nop
    9ff4:	8e2202d0 	lw	v0,720(s1)
    9ff8:	3c18db06 	lui	t8,0xdb06
    9ffc:	37180030 	ori	t8,t8,0x30
    a000:	244f0008 	addiu	t7,v0,8
    a004:	ae2f02d0 	sw	t7,720(s1)
    a008:	ac580000 	sw	t8,0(v0)
    a00c:	86060150 	lh	a2,336(s0)
    a010:	8fb9007c 	lw	t9,124(sp)
    a014:	24090040 	li	t1,64
    a018:	00060823 	negu	at,a2
    a01c:	00013100 	sll	a2,at,0x4
    a020:	00c13023 	subu	a2,a2,at
    a024:	8f240000 	lw	a0,0(t9)
    a028:	afa90010 	sw	t1,16(sp)
    a02c:	30c600ff 	andi	a2,a2,0xff
    a030:	00002825 	move	a1,zero
    a034:	24070020 	li	a3,32
    a038:	0c000000 	jal	0 <func_80938CD0>
    a03c:	afa20058 	sw	v0,88(sp)
    a040:	8fa30058 	lw	v1,88(sp)
    a044:	3c0142c8 	lui	at,0x42c8
    a048:	44815000 	mtc1	at,$f10
    a04c:	ac620004 	sw	v0,4(v1)
    a050:	c60804f8 	lwc1	$f8,1272(s0)
    a054:	3c01437f 	lui	at,0x437f
    a058:	44819000 	mtc1	at,$f18
    a05c:	460a4402 	mul.s	$f16,$f8,$f10
    a060:	860b001c 	lh	t3,28(s0)
    a064:	24010001 	li	at,1
    a068:	3c0dfa00 	lui	t5,0xfa00
    a06c:	3c19fb00 	lui	t9,0xfb00
    a070:	3c0ffb00 	lui	t7,0xfb00
    a074:	00003825 	move	a3,zero
    a078:	46128102 	mul.s	$f4,$f16,$f18
    a07c:	4600218d 	trunc.w.s	$f6,$f4
    a080:	44043000 	mfc1	a0,$f6
    a084:	00000000 	nop
    a088:	00042400 	sll	a0,a0,0x10
    a08c:	15610012 	bne	t3,at,a0d8 <func_80942C70+0x138>
    a090:	00042403 	sra	a0,a0,0x10
    a094:	8e2202d0 	lw	v0,720(s1)
    a098:	3c01ffff 	lui	at,0xffff
    a09c:	34213c00 	ori	at,at,0x3c00
    a0a0:	244c0008 	addiu	t4,v0,8
    a0a4:	ae2c02d0 	sw	t4,720(s1)
    a0a8:	308e00ff 	andi	t6,a0,0xff
    a0ac:	01c17825 	or	t7,t6,at
    a0b0:	ac4f0004 	sw	t7,4(v0)
    a0b4:	ac4d0000 	sw	t5,0(v0)
    a0b8:	8e2202d0 	lw	v0,720(s1)
    a0bc:	3c09ff00 	lui	t1,0xff00
    a0c0:	35290080 	ori	t1,t1,0x80
    a0c4:	24580008 	addiu	t8,v0,8
    a0c8:	ae3802d0 	sw	t8,720(s1)
    a0cc:	ac490004 	sw	t1,4(v0)
    a0d0:	10000011 	b	a118 <func_80942C70+0x178>
    a0d4:	ac590000 	sw	t9,0(v0)
    a0d8:	8e2202d0 	lw	v0,720(s1)
    a0dc:	308c00ff 	andi	t4,a0,0xff
    a0e0:	2401ff00 	li	at,-256
    a0e4:	244a0008 	addiu	t2,v0,8
    a0e8:	ae2a02d0 	sw	t2,720(s1)
    a0ec:	01816825 	or	t5,t4,at
    a0f0:	3c0bfa00 	lui	t3,0xfa00
    a0f4:	ac4b0000 	sw	t3,0(v0)
    a0f8:	ac4d0004 	sw	t5,4(v0)
    a0fc:	8e2202d0 	lw	v0,720(s1)
    a100:	3c186464 	lui	t8,0x6464
    a104:	3718ff80 	ori	t8,t8,0xff80
    a108:	244e0008 	addiu	t6,v0,8
    a10c:	ae2e02d0 	sw	t6,720(s1)
    a110:	ac580004 	sw	t8,4(v0)
    a114:	ac4f0000 	sw	t7,0(v0)
    a118:	c60c048c 	lwc1	$f12,1164(s0)
    a11c:	c60e0490 	lwc1	$f14,1168(s0)
    a120:	0c000000 	jal	0 <func_80938CD0>
    a124:	8e060494 	lw	a2,1172(s0)
    a128:	c60c051c 	lwc1	$f12,1308(s0)
    a12c:	0c000000 	jal	0 <func_80938CD0>
    a130:	24050001 	li	a1,1
    a134:	c60c0518 	lwc1	$f12,1304(s0)
    a138:	0c000000 	jal	0 <func_80938CD0>
    a13c:	24050001 	li	a1,1
    a140:	c60c0520 	lwc1	$f12,1312(s0)
    a144:	0c000000 	jal	0 <func_80938CD0>
    a148:	24050001 	li	a1,1
    a14c:	3c010000 	lui	at,0x0
    a150:	c42a0000 	lwc1	$f10,0(at)
    a154:	c608052c 	lwc1	$f8,1324(s0)
    a158:	3c0142c4 	lui	at,0x42c4
    a15c:	44819000 	mtc1	at,$f18
    a160:	460a4402 	mul.s	$f16,$f8,$f10
    a164:	3c010000 	lui	at,0x0
    a168:	c4260000 	lwc1	$f6,0(at)
    a16c:	c60c04f8 	lwc1	$f12,1272(s0)
    a170:	24070001 	li	a3,1
    a174:	46006386 	mov.s	$f14,$f12
    a178:	46128102 	mul.s	$f4,$f16,$f18
    a17c:	46062203 	div.s	$f8,$f4,$f6
    a180:	44064000 	mfc1	a2,$f8
    a184:	0c000000 	jal	0 <func_80938CD0>
    a188:	00000000 	nop
    a18c:	8e2202d0 	lw	v0,720(s1)
    a190:	3c09da38 	lui	t1,0xda38
    a194:	35290003 	ori	t1,t1,0x3
    a198:	24590008 	addiu	t9,v0,8
    a19c:	ae3902d0 	sw	t9,720(s1)
    a1a0:	ac490000 	sw	t1,0(v0)
    a1a4:	8faa007c 	lw	t2,124(sp)
    a1a8:	3c050000 	lui	a1,0x0
    a1ac:	24a50000 	addiu	a1,a1,0
    a1b0:	8d440000 	lw	a0,0(t2)
    a1b4:	24061abe 	li	a2,6846
    a1b8:	0c000000 	jal	0 <func_80938CD0>
    a1bc:	afa20044 	sw	v0,68(sp)
    a1c0:	8fa30044 	lw	v1,68(sp)
    a1c4:	3c040602 	lui	a0,0x602
    a1c8:	2484ddf0 	addiu	a0,a0,-8720
    a1cc:	ac620004 	sw	v0,4(v1)
    a1d0:	8e2202d0 	lw	v0,720(s1)
    a1d4:	00046900 	sll	t5,a0,0x4
    a1d8:	000d7702 	srl	t6,t5,0x1c
    a1dc:	3c180000 	lui	t8,0x0
    a1e0:	244b0008 	addiu	t3,v0,8
    a1e4:	ae2b02d0 	sw	t3,720(s1)
    a1e8:	27180000 	addiu	t8,t8,0
    a1ec:	000e7880 	sll	t7,t6,0x2
    a1f0:	3c0cde00 	lui	t4,0xde00
    a1f4:	01f82821 	addu	a1,t7,t8
    a1f8:	3c0100ff 	lui	at,0xff
    a1fc:	ac4c0000 	sw	t4,0(v0)
    a200:	8cb90000 	lw	t9,0(a1)
    a204:	3421ffff 	ori	at,at,0xffff
    a208:	00814024 	and	t0,a0,at
    a20c:	3c018000 	lui	at,0x8000
    a210:	03284821 	addu	t1,t9,t0
    a214:	01215021 	addu	t2,t1,at
    a218:	3c014120 	lui	at,0x4120
    a21c:	ac4a0004 	sw	t2,4(v0)
    a220:	c6100548 	lwc1	$f16,1352(s0)
    a224:	44815000 	mtc1	at,$f10
    a228:	00003825 	move	a3,zero
    a22c:	4610503c 	c.lt.s	$f10,$f16
    a230:	00000000 	nop
    a234:	4500003a 	bc1f	a320 <func_80942C70+0x380>
    a238:	00000000 	nop
    a23c:	c60c050c 	lwc1	$f12,1292(s0)
    a240:	c60e0510 	lwc1	$f14,1296(s0)
    a244:	8e060514 	lw	a2,1300(s0)
    a248:	afa80030 	sw	t0,48(sp)
    a24c:	0c000000 	jal	0 <func_80938CD0>
    a250:	afa50034 	sw	a1,52(sp)
    a254:	c60c0540 	lwc1	$f12,1344(s0)
    a258:	0c000000 	jal	0 <func_80938CD0>
    a25c:	24050001 	li	a1,1
    a260:	c60c053c 	lwc1	$f12,1340(s0)
    a264:	0c000000 	jal	0 <func_80938CD0>
    a268:	24050001 	li	a1,1
    a26c:	c60c0520 	lwc1	$f12,1312(s0)
    a270:	0c000000 	jal	0 <func_80938CD0>
    a274:	24050001 	li	a1,1
    a278:	3c010000 	lui	at,0x0
    a27c:	c4240000 	lwc1	$f4,0(at)
    a280:	c6120548 	lwc1	$f18,1352(s0)
    a284:	3c0142c8 	lui	at,0x42c8
    a288:	44814000 	mtc1	at,$f8
    a28c:	46049182 	mul.s	$f6,$f18,$f4
    a290:	3c010000 	lui	at,0x0
    a294:	c4300000 	lwc1	$f16,0(at)
    a298:	c60c04f8 	lwc1	$f12,1272(s0)
    a29c:	24070001 	li	a3,1
    a2a0:	46006386 	mov.s	$f14,$f12
    a2a4:	46083282 	mul.s	$f10,$f6,$f8
    a2a8:	46105483 	div.s	$f18,$f10,$f16
    a2ac:	44069000 	mfc1	a2,$f18
    a2b0:	0c000000 	jal	0 <func_80938CD0>
    a2b4:	00000000 	nop
    a2b8:	8e2202d0 	lw	v0,720(s1)
    a2bc:	3c0cda38 	lui	t4,0xda38
    a2c0:	358c0003 	ori	t4,t4,0x3
    a2c4:	244b0008 	addiu	t3,v0,8
    a2c8:	ae2b02d0 	sw	t3,720(s1)
    a2cc:	ac4c0000 	sw	t4,0(v0)
    a2d0:	8fad007c 	lw	t5,124(sp)
    a2d4:	3c050000 	lui	a1,0x0
    a2d8:	24a50000 	addiu	a1,a1,0
    a2dc:	24061ad6 	li	a2,6870
    a2e0:	00408025 	move	s0,v0
    a2e4:	0c000000 	jal	0 <func_80938CD0>
    a2e8:	8da40000 	lw	a0,0(t5)
    a2ec:	ae020004 	sw	v0,4(s0)
    a2f0:	8e2202d0 	lw	v0,720(s1)
    a2f4:	3c0fde00 	lui	t7,0xde00
    a2f8:	3c018000 	lui	at,0x8000
    a2fc:	244e0008 	addiu	t6,v0,8
    a300:	ae2e02d0 	sw	t6,720(s1)
    a304:	ac4f0000 	sw	t7,0(v0)
    a308:	8fb80034 	lw	t8,52(sp)
    a30c:	8fa90030 	lw	t1,48(sp)
    a310:	8f190000 	lw	t9,0(t8)
    a314:	03295021 	addu	t2,t9,t1
    a318:	01415821 	addu	t3,t2,at
    a31c:	ac4b0004 	sw	t3,4(v0)
    a320:	0c000000 	jal	0 <func_80938CD0>
    a324:	00000000 	nop
    a328:	8fac007c 	lw	t4,124(sp)
    a32c:	3c060000 	lui	a2,0x0
    a330:	24c60000 	addiu	a2,a2,0
    a334:	27a4005c 	addiu	a0,sp,92
    a338:	24071ade 	li	a3,6878
    a33c:	0c000000 	jal	0 <func_80938CD0>
    a340:	8d850000 	lw	a1,0(t4)
    a344:	8fbf0024 	lw	ra,36(sp)
    a348:	8fb0001c 	lw	s0,28(sp)
    a34c:	8fb10020 	lw	s1,32(sp)
    a350:	03e00008 	jr	ra
    a354:	27bd0078 	addiu	sp,sp,120

0000a358 <func_80943028>:
    a358:	27bdffa8 	addiu	sp,sp,-88
    a35c:	afbf001c 	sw	ra,28(sp)
    a360:	afb10018 	sw	s1,24(sp)
    a364:	afb00014 	sw	s0,20(sp)
    a368:	afa5005c 	sw	a1,92(sp)
    a36c:	8ca50000 	lw	a1,0(a1)
    a370:	00808825 	move	s1,a0
    a374:	3c060000 	lui	a2,0x0
    a378:	24c60000 	addiu	a2,a2,0
    a37c:	27a40040 	addiu	a0,sp,64
    a380:	24071ae5 	li	a3,6885
    a384:	0c000000 	jal	0 <func_80938CD0>
    a388:	00a08025 	move	s0,a1
    a38c:	0c000000 	jal	0 <func_80938CD0>
    a390:	00000000 	nop
    a394:	3c014264 	lui	at,0x4264
    a398:	44813000 	mtc1	at,$f6
    a39c:	c6240028 	lwc1	$f4,40(s1)
    a3a0:	c62c0024 	lwc1	$f12,36(s1)
    a3a4:	8e26002c 	lw	a2,44(s1)
    a3a8:	00003825 	move	a3,zero
    a3ac:	0c000000 	jal	0 <func_80938CD0>
    a3b0:	46062380 	add.s	$f14,$f4,$f6
    a3b4:	c62c01c8 	lwc1	$f12,456(s1)
    a3b8:	24070001 	li	a3,1
    a3bc:	44066000 	mfc1	a2,$f12
    a3c0:	0c000000 	jal	0 <func_80938CD0>
    a3c4:	46006386 	mov.s	$f14,$f12
    a3c8:	8e0202d0 	lw	v0,720(s0)
    a3cc:	3c18fa00 	lui	t8,0xfa00
    a3d0:	2419ffff 	li	t9,-1
    a3d4:	244f0008 	addiu	t7,v0,8
    a3d8:	ae0f02d0 	sw	t7,720(s0)
    a3dc:	ac580000 	sw	t8,0(v0)
    a3e0:	ac590004 	sw	t9,4(v0)
    a3e4:	8e0202d0 	lw	v0,720(s0)
    a3e8:	3c09da38 	lui	t1,0xda38
    a3ec:	35290003 	ori	t1,t1,0x3
    a3f0:	24480008 	addiu	t0,v0,8
    a3f4:	ae0802d0 	sw	t0,720(s0)
    a3f8:	ac490000 	sw	t1,0(v0)
    a3fc:	8faa005c 	lw	t2,92(sp)
    a400:	3c050000 	lui	a1,0x0
    a404:	24a50000 	addiu	a1,a1,0
    a408:	8d440000 	lw	a0,0(t2)
    a40c:	24061afc 	li	a2,6908
    a410:	0c000000 	jal	0 <func_80938CD0>
    a414:	afa20038 	sw	v0,56(sp)
    a418:	8fa30038 	lw	v1,56(sp)
    a41c:	3c040602 	lui	a0,0x602
    a420:	2484f608 	addiu	a0,a0,-2552
    a424:	ac620004 	sw	v0,4(v1)
    a428:	8e0202d0 	lw	v0,720(s0)
    a42c:	00046900 	sll	t5,a0,0x4
    a430:	000d7702 	srl	t6,t5,0x1c
    a434:	244b0008 	addiu	t3,v0,8
    a438:	ae0b02d0 	sw	t3,720(s0)
    a43c:	000e7880 	sll	t7,t6,0x2
    a440:	3c0cde00 	lui	t4,0xde00
    a444:	3c180000 	lui	t8,0x0
    a448:	030fc021 	addu	t8,t8,t7
    a44c:	3c0100ff 	lui	at,0xff
    a450:	ac4c0000 	sw	t4,0(v0)
    a454:	8f180000 	lw	t8,0(t8)
    a458:	3421ffff 	ori	at,at,0xffff
    a45c:	0081c824 	and	t9,a0,at
    a460:	3c018000 	lui	at,0x8000
    a464:	03194021 	addu	t0,t8,t9
    a468:	01014821 	addu	t1,t0,at
    a46c:	ac490004 	sw	t1,4(v0)
    a470:	8faa005c 	lw	t2,92(sp)
    a474:	0c000000 	jal	0 <func_80938CD0>
    a478:	8d440000 	lw	a0,0(t2)
    a47c:	8e0202d0 	lw	v0,720(s0)
    a480:	3c0cfa00 	lui	t4,0xfa00
    a484:	240d00c8 	li	t5,200
    a488:	244b0008 	addiu	t3,v0,8
    a48c:	ae0b02d0 	sw	t3,720(s0)
    a490:	3c014370 	lui	at,0x4370
    a494:	44817000 	mtc1	at,$f14
    a498:	ac4d0004 	sw	t5,4(v0)
    a49c:	ac4c0000 	sw	t4,0(v0)
    a4a0:	8e26002c 	lw	a2,44(s1)
    a4a4:	c62c0024 	lwc1	$f12,36(s1)
    a4a8:	0c000000 	jal	0 <func_80938CD0>
    a4ac:	00003825 	move	a3,zero
    a4b0:	3c01457a 	lui	at,0x457a
    a4b4:	44815000 	mtc1	at,$f10
    a4b8:	c6280050 	lwc1	$f8,80(s1)
    a4bc:	3c0142c8 	lui	at,0x42c8
    a4c0:	44819000 	mtc1	at,$f18
    a4c4:	460a4402 	mul.s	$f16,$f8,$f10
    a4c8:	3c013f80 	lui	at,0x3f80
    a4cc:	44817000 	mtc1	at,$f14
    a4d0:	24070001 	li	a3,1
    a4d4:	46128303 	div.s	$f12,$f16,$f18
    a4d8:	44066000 	mfc1	a2,$f12
    a4dc:	0c000000 	jal	0 <func_80938CD0>
    a4e0:	00000000 	nop
    a4e4:	8e0202d0 	lw	v0,720(s0)
    a4e8:	3c0fda38 	lui	t7,0xda38
    a4ec:	35ef0003 	ori	t7,t7,0x3
    a4f0:	244e0008 	addiu	t6,v0,8
    a4f4:	ae0e02d0 	sw	t6,720(s0)
    a4f8:	ac4f0000 	sw	t7,0(v0)
    a4fc:	8fb8005c 	lw	t8,92(sp)
    a500:	3c050000 	lui	a1,0x0
    a504:	24a50000 	addiu	a1,a1,0
    a508:	8f040000 	lw	a0,0(t8)
    a50c:	24061b0e 	li	a2,6926
    a510:	0c000000 	jal	0 <func_80938CD0>
    a514:	afa2002c 	sw	v0,44(sp)
    a518:	8fa3002c 	lw	v1,44(sp)
    a51c:	3c040405 	lui	a0,0x405
    a520:	24849210 	addiu	a0,a0,-28144
    a524:	ac620004 	sw	v0,4(v1)
    a528:	8e0202d0 	lw	v0,720(s0)
    a52c:	00044900 	sll	t1,a0,0x4
    a530:	00095702 	srl	t2,t1,0x1c
    a534:	24590008 	addiu	t9,v0,8
    a538:	ae1902d0 	sw	t9,720(s0)
    a53c:	000a5880 	sll	t3,t2,0x2
    a540:	3c08de00 	lui	t0,0xde00
    a544:	3c0c0000 	lui	t4,0x0
    a548:	018b6021 	addu	t4,t4,t3
    a54c:	3c0100ff 	lui	at,0xff
    a550:	ac480000 	sw	t0,0(v0)
    a554:	8d8c0000 	lw	t4,0(t4)
    a558:	3421ffff 	ori	at,at,0xffff
    a55c:	00816824 	and	t5,a0,at
    a560:	3c018000 	lui	at,0x8000
    a564:	018d7021 	addu	t6,t4,t5
    a568:	01c17821 	addu	t7,t6,at
    a56c:	0c000000 	jal	0 <func_80938CD0>
    a570:	ac4f0004 	sw	t7,4(v0)
    a574:	8fb8005c 	lw	t8,92(sp)
    a578:	3c060000 	lui	a2,0x0
    a57c:	24c60000 	addiu	a2,a2,0
    a580:	27a40040 	addiu	a0,sp,64
    a584:	24071b15 	li	a3,6933
    a588:	0c000000 	jal	0 <func_80938CD0>
    a58c:	8f050000 	lw	a1,0(t8)
    a590:	8fbf001c 	lw	ra,28(sp)
    a594:	8fb00014 	lw	s0,20(sp)
    a598:	8fb10018 	lw	s1,24(sp)
    a59c:	03e00008 	jr	ra
    a5a0:	27bd0058 	addiu	sp,sp,88

0000a5a4 <BossTw_Draw>:
    a5a4:	27bdff70 	addiu	sp,sp,-144
    a5a8:	afbf0044 	sw	ra,68(sp)
    a5ac:	afb20040 	sw	s2,64(sp)
    a5b0:	afb1003c 	sw	s1,60(sp)
    a5b4:	afb00038 	sw	s0,56(sp)
    a5b8:	8cae1c44 	lw	t6,7236(a1)
    a5bc:	00a09025 	move	s2,a1
    a5c0:	00808025 	move	s0,a0
    a5c4:	afae0084 	sw	t6,132(sp)
    a5c8:	8ca50000 	lw	a1,0(a1)
    a5cc:	3c060000 	lui	a2,0x0
    a5d0:	24c60000 	addiu	a2,a2,0
    a5d4:	27a40070 	addiu	a0,sp,112
    a5d8:	24071b23 	li	a3,6947
    a5dc:	0c000000 	jal	0 <func_80938CD0>
    a5e0:	00a08825 	move	s1,a1
    a5e4:	920f0564 	lbu	t7,1380(s0)
    a5e8:	3c05db06 	lui	a1,0xdb06
    a5ec:	34a50028 	ori	a1,a1,0x28
    a5f0:	51e0013b 	beqzl	t7,aae0 <BossTw_Draw+0x53c>
    a5f4:	860a001c 	lh	t2,28(s0)
    a5f8:	8e2302c0 	lw	v1,704(s1)
    a5fc:	3c060000 	lui	a2,0x0
    a600:	24c60000 	addiu	a2,a2,0
    a604:	24780008 	addiu	t8,v1,8
    a608:	ae3802c0 	sw	t8,704(s1)
    a60c:	ac650000 	sw	a1,0(v1)
    a610:	861904cc 	lh	t9,1228(s0)
    a614:	3c080000 	lui	t0,0x0
    a618:	25080000 	addiu	t0,t0,0
    a61c:	00195080 	sll	t2,t9,0x2
    a620:	00ca5821 	addu	t3,a2,t2
    a624:	8d640000 	lw	a0,0(t3)
    a628:	3c0700ff 	lui	a3,0xff
    a62c:	34e7ffff 	ori	a3,a3,0xffff
    a630:	00046900 	sll	t5,a0,0x4
    a634:	000d7702 	srl	t6,t5,0x1c
    a638:	000e7880 	sll	t7,t6,0x2
    a63c:	010fc021 	addu	t8,t0,t7
    a640:	8f190000 	lw	t9,0(t8)
    a644:	00876024 	and	t4,a0,a3
    a648:	3c098000 	lui	t1,0x8000
    a64c:	01995021 	addu	t2,t4,t9
    a650:	01495821 	addu	t3,t2,t1
    a654:	ac6b0004 	sw	t3,4(v1)
    a658:	8e2202d0 	lw	v0,720(s1)
    a65c:	244d0008 	addiu	t5,v0,8
    a660:	ae2d02d0 	sw	t5,720(s1)
    a664:	ac450000 	sw	a1,0(v0)
    a668:	860e04cc 	lh	t6,1228(s0)
    a66c:	00002825 	move	a1,zero
    a670:	000e7880 	sll	t7,t6,0x2
    a674:	00cfc021 	addu	t8,a2,t7
    a678:	8f040000 	lw	a0,0(t8)
    a67c:	0004c900 	sll	t9,a0,0x4
    a680:	00195702 	srl	t2,t9,0x1c
    a684:	000a5880 	sll	t3,t2,0x2
    a688:	010b6821 	addu	t5,t0,t3
    a68c:	8dae0000 	lw	t6,0(t5)
    a690:	00876024 	and	t4,a0,a3
    a694:	3c0adb06 	lui	t2,0xdb06
    a698:	018e7821 	addu	t7,t4,t6
    a69c:	01e9c021 	addu	t8,t7,t1
    a6a0:	ac580004 	sw	t8,4(v0)
    a6a4:	8e2202d0 	lw	v0,720(s1)
    a6a8:	354a0020 	ori	t2,t2,0x20
    a6ac:	240f0001 	li	t7,1
    a6b0:	24590008 	addiu	t9,v0,8
    a6b4:	ae3902d0 	sw	t9,720(s1)
    a6b8:	ac4a0000 	sw	t2,0(v0)
    a6bc:	c6080194 	lwc1	$f8,404(s0)
    a6c0:	c6040184 	lwc1	$f4,388(s0)
    a6c4:	8e440000 	lw	a0,0(s2)
    a6c8:	240e0020 	li	t6,32
    a6cc:	240c0020 	li	t4,32
    a6d0:	afac0010 	sw	t4,16(sp)
    a6d4:	afae0014 	sw	t6,20(sp)
    a6d8:	afaf0018 	sw	t7,24(sp)
    a6dc:	c6120188 	lwc1	$f18,392(s0)
    a6e0:	4600218d 	trunc.w.s	$f6,$f4
    a6e4:	240a0020 	li	t2,32
    a6e8:	4600910d 	trunc.w.s	$f4,$f18
    a6ec:	44063000 	mfc1	a2,$f6
    a6f0:	4600428d 	trunc.w.s	$f10,$f8
    a6f4:	440b2000 	mfc1	t3,$f4
    a6f8:	00063400 	sll	a2,a2,0x10
    a6fc:	00063403 	sra	a2,a2,0x10
    a700:	316d007f 	andi	t5,t3,0x7f
    a704:	afad001c 	sw	t5,28(sp)
    a708:	c6060198 	lwc1	$f6,408(s0)
    a70c:	44075000 	mfc1	a3,$f10
    a710:	240b0040 	li	t3,64
    a714:	4600320d 	trunc.w.s	$f8,$f6
    a718:	00073c00 	sll	a3,a3,0x10
    a71c:	00073c03 	sra	a3,a3,0x10
    a720:	30e7007f 	andi	a3,a3,0x7f
    a724:	44184000 	mfc1	t8,$f8
    a728:	afab0028 	sw	t3,40(sp)
    a72c:	afaa0024 	sw	t2,36(sp)
    a730:	331900ff 	andi	t9,t8,0xff
    a734:	afb90020 	sw	t9,32(sp)
    a738:	30c6007f 	andi	a2,a2,0x7f
    a73c:	0c000000 	jal	0 <func_80938CD0>
    a740:	afa20064 	sw	v0,100(sp)
    a744:	8fa30064 	lw	v1,100(sp)
    a748:	3c0bdb06 	lui	t3,0xdb06
    a74c:	356b0024 	ori	t3,t3,0x24
    a750:	ac620004 	sw	v0,4(v1)
    a754:	860d001c 	lh	t5,28(s0)
    a758:	240e0020 	li	t6,32
    a75c:	55a0001d 	bnezl	t5,a7d4 <BossTw_Draw+0x230>
    a760:	8e2202d0 	lw	v0,720(s1)
    a764:	8e2202d0 	lw	v0,720(s1)
    a768:	3c0edb06 	lui	t6,0xdb06
    a76c:	35ce0024 	ori	t6,t6,0x24
    a770:	244c0008 	addiu	t4,v0,8
    a774:	ae2c02d0 	sw	t4,720(s1)
    a778:	ac4e0000 	sw	t6,0(v0)
    a77c:	c604019c 	lwc1	$f4,412(s0)
    a780:	c60a018c 	lwc1	$f10,396(s0)
    a784:	8e440000 	lw	a0,0(s2)
    a788:	4600218d 	trunc.w.s	$f6,$f4
    a78c:	24190040 	li	t9,64
    a790:	afb90010 	sw	t9,16(sp)
    a794:	4600548d 	trunc.w.s	$f18,$f10
    a798:	44063000 	mfc1	a2,$f6
    a79c:	24070020 	li	a3,32
    a7a0:	afa20060 	sw	v0,96(sp)
    a7a4:	44059000 	mfc1	a1,$f18
    a7a8:	00063400 	sll	a2,a2,0x10
    a7ac:	00063403 	sra	a2,a2,0x10
    a7b0:	00052c00 	sll	a1,a1,0x10
    a7b4:	00052c03 	sra	a1,a1,0x10
    a7b8:	30a5007f 	andi	a1,a1,0x7f
    a7bc:	0c000000 	jal	0 <func_80938CD0>
    a7c0:	30c600ff 	andi	a2,a2,0xff
    a7c4:	8fa30060 	lw	v1,96(sp)
    a7c8:	1000002a 	b	a874 <BossTw_Draw+0x2d0>
    a7cc:	ac620004 	sw	v0,4(v1)
    a7d0:	8e2202d0 	lw	v0,720(s1)
    a7d4:	240f0020 	li	t7,32
    a7d8:	24180001 	li	t8,1
    a7dc:	244a0008 	addiu	t2,v0,8
    a7e0:	ae2a02d0 	sw	t2,720(s1)
    a7e4:	ac4b0000 	sw	t3,0(v0)
    a7e8:	c612019c 	lwc1	$f18,412(s0)
    a7ec:	c608018c 	lwc1	$f8,396(s0)
    a7f0:	8e440000 	lw	a0,0(s2)
    a7f4:	afb80018 	sw	t8,24(sp)
    a7f8:	afaf0014 	sw	t7,20(sp)
    a7fc:	afae0010 	sw	t6,16(sp)
    a800:	c6060190 	lwc1	$f6,400(s0)
    a804:	4600428d 	trunc.w.s	$f10,$f8
    a808:	240b0020 	li	t3,32
    a80c:	00002825 	move	a1,zero
    a810:	4600320d 	trunc.w.s	$f8,$f6
    a814:	44065000 	mfc1	a2,$f10
    a818:	4600910d 	trunc.w.s	$f4,$f18
    a81c:	440d4000 	mfc1	t5,$f8
    a820:	00063400 	sll	a2,a2,0x10
    a824:	00063403 	sra	a2,a2,0x10
    a828:	31ac007f 	andi	t4,t5,0x7f
    a82c:	afac001c 	sw	t4,28(sp)
    a830:	c60a01a0 	lwc1	$f10,416(s0)
    a834:	44072000 	mfc1	a3,$f4
    a838:	240d0040 	li	t5,64
    a83c:	4600548d 	trunc.w.s	$f18,$f10
    a840:	00073c00 	sll	a3,a3,0x10
    a844:	00073c03 	sra	a3,a3,0x10
    a848:	30e7007f 	andi	a3,a3,0x7f
    a84c:	44199000 	mfc1	t9,$f18
    a850:	afad0028 	sw	t5,40(sp)
    a854:	afab0024 	sw	t3,36(sp)
    a858:	332a00ff 	andi	t2,t9,0xff
    a85c:	afaa0020 	sw	t2,32(sp)
    a860:	30c6007f 	andi	a2,a2,0x7f
    a864:	0c000000 	jal	0 <func_80938CD0>
    a868:	afa2005c 	sw	v0,92(sp)
    a86c:	8fa3005c 	lw	v1,92(sp)
    a870:	ac620004 	sw	v0,4(v1)
    a874:	0c000000 	jal	0 <func_80938CD0>
    a878:	8e440000 	lw	a0,0(s2)
    a87c:	0c000000 	jal	0 <func_80938CD0>
    a880:	8e440000 	lw	a0,0(s2)
    a884:	860c015c 	lh	t4,348(s0)
    a888:	24060032 	li	a2,50
    a88c:	00003825 	move	a3,zero
    a890:	318e0002 	andi	t6,t4,0x2
    a894:	11c0000b 	beqz	t6,a8c4 <BossTw_Draw+0x320>
    a898:	24050001 	li	a1,1
    a89c:	8e2402c0 	lw	a0,704(s1)
    a8a0:	240f0384 	li	t7,900
    a8a4:	2418044b 	li	t8,1099
    a8a8:	afb80018 	sw	t8,24(sp)
    a8ac:	afaf0014 	sw	t7,20(sp)
    a8b0:	afa00010 	sw	zero,16(sp)
    a8b4:	0c000000 	jal	0 <func_80938CD0>
    a8b8:	240500ff 	li	a1,255
    a8bc:	10000073 	b	aa8c <BossTw_Draw+0x4e8>
    a8c0:	ae2202c0 	sw	v0,704(s1)
    a8c4:	4459f800 	cfc1	t9,$31
    a8c8:	44c5f800 	ctc1	a1,$31
    a8cc:	c60401d4 	lwc1	$f4,468(s0)
    a8d0:	8e2402c0 	lw	a0,704(s1)
    a8d4:	3c014f00 	lui	at,0x4f00
    a8d8:	460021a4 	cvt.w.s	$f6,$f4
    a8dc:	4445f800 	cfc1	a1,$31
    a8e0:	00000000 	nop
    a8e4:	30a50078 	andi	a1,a1,0x78
    a8e8:	50a00013 	beqzl	a1,a938 <BossTw_Draw+0x394>
    a8ec:	44053000 	mfc1	a1,$f6
    a8f0:	44813000 	mtc1	at,$f6
    a8f4:	24050001 	li	a1,1
    a8f8:	46062181 	sub.s	$f6,$f4,$f6
    a8fc:	44c5f800 	ctc1	a1,$31
    a900:	00000000 	nop
    a904:	460031a4 	cvt.w.s	$f6,$f6
    a908:	4445f800 	cfc1	a1,$31
    a90c:	00000000 	nop
    a910:	30a50078 	andi	a1,a1,0x78
    a914:	14a00005 	bnez	a1,a92c <BossTw_Draw+0x388>
    a918:	00000000 	nop
    a91c:	44053000 	mfc1	a1,$f6
    a920:	3c018000 	lui	at,0x8000
    a924:	10000007 	b	a944 <BossTw_Draw+0x3a0>
    a928:	00a12825 	or	a1,a1,at
    a92c:	10000005 	b	a944 <BossTw_Draw+0x3a0>
    a930:	2405ffff 	li	a1,-1
    a934:	44053000 	mfc1	a1,$f6
    a938:	00000000 	nop
    a93c:	04a0fffb 	bltz	a1,a92c <BossTw_Draw+0x388>
    a940:	00000000 	nop
    a944:	44d9f800 	ctc1	t9,$31
    a948:	24060001 	li	a2,1
    a94c:	c60801d8 	lwc1	$f8,472(s0)
    a950:	3c014f00 	lui	at,0x4f00
    a954:	444af800 	cfc1	t2,$31
    a958:	44c6f800 	ctc1	a2,$31
    a95c:	00000000 	nop
    a960:	460042a4 	cvt.w.s	$f10,$f8
    a964:	4446f800 	cfc1	a2,$31
    a968:	00000000 	nop
    a96c:	30c60078 	andi	a2,a2,0x78
    a970:	50c00013 	beqzl	a2,a9c0 <BossTw_Draw+0x41c>
    a974:	44065000 	mfc1	a2,$f10
    a978:	44815000 	mtc1	at,$f10
    a97c:	24060001 	li	a2,1
    a980:	460a4281 	sub.s	$f10,$f8,$f10
    a984:	44c6f800 	ctc1	a2,$31
    a988:	00000000 	nop
    a98c:	460052a4 	cvt.w.s	$f10,$f10
    a990:	4446f800 	cfc1	a2,$31
    a994:	00000000 	nop
    a998:	30c60078 	andi	a2,a2,0x78
    a99c:	14c00005 	bnez	a2,a9b4 <BossTw_Draw+0x410>
    a9a0:	00000000 	nop
    a9a4:	44065000 	mfc1	a2,$f10
    a9a8:	3c018000 	lui	at,0x8000
    a9ac:	10000007 	b	a9cc <BossTw_Draw+0x428>
    a9b0:	00c13025 	or	a2,a2,at
    a9b4:	10000005 	b	a9cc <BossTw_Draw+0x428>
    a9b8:	2406ffff 	li	a2,-1
    a9bc:	44065000 	mfc1	a2,$f10
    a9c0:	00000000 	nop
    a9c4:	04c0fffb 	bltz	a2,a9b4 <BossTw_Draw+0x410>
    a9c8:	00000000 	nop
    a9cc:	44caf800 	ctc1	t2,$31
    a9d0:	24070001 	li	a3,1
    a9d4:	c61201dc 	lwc1	$f18,476(s0)
    a9d8:	3c014f00 	lui	at,0x4f00
    a9dc:	444bf800 	cfc1	t3,$31
    a9e0:	44c7f800 	ctc1	a3,$31
    a9e4:	00000000 	nop
    a9e8:	46009124 	cvt.w.s	$f4,$f18
    a9ec:	4447f800 	cfc1	a3,$31
    a9f0:	00000000 	nop
    a9f4:	30e70078 	andi	a3,a3,0x78
    a9f8:	50e00013 	beqzl	a3,aa48 <BossTw_Draw+0x4a4>
    a9fc:	44072000 	mfc1	a3,$f4
    aa00:	44812000 	mtc1	at,$f4
    aa04:	24070001 	li	a3,1
    aa08:	46049101 	sub.s	$f4,$f18,$f4
    aa0c:	44c7f800 	ctc1	a3,$31
    aa10:	00000000 	nop
    aa14:	46002124 	cvt.w.s	$f4,$f4
    aa18:	4447f800 	cfc1	a3,$31
    aa1c:	00000000 	nop
    aa20:	30e70078 	andi	a3,a3,0x78
    aa24:	14e00005 	bnez	a3,aa3c <BossTw_Draw+0x498>
    aa28:	00000000 	nop
    aa2c:	44072000 	mfc1	a3,$f4
    aa30:	3c018000 	lui	at,0x8000
    aa34:	10000007 	b	aa54 <BossTw_Draw+0x4b0>
    aa38:	00e13825 	or	a3,a3,at
    aa3c:	10000005 	b	aa54 <BossTw_Draw+0x4b0>
    aa40:	2407ffff 	li	a3,-1
    aa44:	44072000 	mfc1	a3,$f4
    aa48:	00000000 	nop
    aa4c:	04e0fffb 	bltz	a3,aa3c <BossTw_Draw+0x498>
    aa50:	00000000 	nop
    aa54:	afa00010 	sw	zero,16(sp)
    aa58:	c60601e0 	lwc1	$f6,480(s0)
    aa5c:	44cbf800 	ctc1	t3,$31
    aa60:	00000000 	nop
    aa64:	4600320d 	trunc.w.s	$f8,$f6
    aa68:	440c4000 	mfc1	t4,$f8
    aa6c:	00000000 	nop
    aa70:	afac0014 	sw	t4,20(sp)
    aa74:	c60a01e4 	lwc1	$f10,484(s0)
    aa78:	4600548d 	trunc.w.s	$f18,$f10
    aa7c:	440f9000 	mfc1	t7,$f18
    aa80:	0c000000 	jal	0 <func_80938CD0>
    aa84:	afaf0018 	sw	t7,24(sp)
    aa88:	ae2202c0 	sw	v0,704(s1)
    aa8c:	0c000000 	jal	0 <func_80938CD0>
    aa90:	00000000 	nop
    aa94:	8e05056c 	lw	a1,1388(s0)
    aa98:	8e060588 	lw	a2,1416(s0)
    aa9c:	9207056a 	lbu	a3,1386(s0)
    aaa0:	3c180000 	lui	t8,0x0
    aaa4:	3c190000 	lui	t9,0x0
    aaa8:	27390000 	addiu	t9,t9,0
    aaac:	27180000 	addiu	t8,t8,0
    aab0:	afb80010 	sw	t8,16(sp)
    aab4:	afb90014 	sw	t9,20(sp)
    aab8:	afb00018 	sw	s0,24(sp)
    aabc:	0c000000 	jal	0 <func_80938CD0>
    aac0:	02402025 	move	a0,s2
    aac4:	0c000000 	jal	0 <func_80938CD0>
    aac8:	00000000 	nop
    aacc:	02402025 	move	a0,s2
    aad0:	0c000000 	jal	0 <func_80938CD0>
    aad4:	8e2502c0 	lw	a1,704(s1)
    aad8:	ae2202c0 	sw	v0,704(s1)
    aadc:	860a001c 	lh	t2,28(s0)
    aae0:	02002025 	move	a0,s0
    aae4:	15400042 	bnez	t2,abf0 <BossTw_Draw+0x64c>
    aae8:	00000000 	nop
    aaec:	44800000 	mtc1	zero,$f0
    aaf0:	c60401a8 	lwc1	$f4,424(s0)
    aaf4:	02002025 	move	a0,s0
    aaf8:	4604003c 	c.lt.s	$f0,$f4
    aafc:	00000000 	nop
    ab00:	45000039 	bc1f	abe8 <BossTw_Draw+0x644>
    ab04:	00000000 	nop
    ab08:	c61001b0 	lwc1	$f16,432(s0)
    ab0c:	8fa20084 	lw	v0,132(sp)
    ab10:	4610003c 	c.lt.s	$f0,$f16
    ab14:	00000000 	nop
    ab18:	45000031 	bc1f	abe0 <BossTw_Draw+0x63c>
    ab1c:	00000000 	nop
    ab20:	c60a04c0 	lwc1	$f10,1216(s0)
    ab24:	c4520028 	lwc1	$f18,40(v0)
    ab28:	c60604bc 	lwc1	$f6,1212(s0)
    ab2c:	c4480024 	lwc1	$f8,36(v0)
    ab30:	46125081 	sub.s	$f2,$f10,$f18
    ab34:	3c014120 	lui	at,0x4120
    ab38:	c60404c4 	lwc1	$f4,1220(s0)
    ab3c:	46083301 	sub.s	$f12,$f6,$f8
    ab40:	44814000 	mtc1	at,$f8
    ab44:	c446002c 	lwc1	$f6,44(v0)
    ab48:	46001005 	abs.s	$f0,$f2
    ab4c:	4608003c 	c.lt.s	$f0,$f8
    ab50:	46062381 	sub.s	$f14,$f4,$f6
    ab54:	45000022 	bc1f	abe0 <BossTw_Draw+0x63c>
    ab58:	00000000 	nop
    ab5c:	944b0088 	lhu	t3,136(v0)
    ab60:	316d0001 	andi	t5,t3,0x1
    ab64:	11a0001e 	beqz	t5,abe0 <BossTw_Draw+0x63c>
    ab68:	00000000 	nop
    ab6c:	460c6282 	mul.s	$f10,$f12,$f12
    ab70:	3c010000 	lui	at,0x0
    ab74:	c4260000 	lwc1	$f6,0(at)
    ab78:	460e7482 	mul.s	$f18,$f14,$f14
    ab7c:	c60401b4 	lwc1	$f4,436(s0)
    ab80:	3c020000 	lui	v0,0x0
    ab84:	24420000 	addiu	v0,v0,0
    ab88:	46062202 	mul.s	$f8,$f4,$f6
    ab8c:	46125000 	add.s	$f0,$f10,$f18
    ab90:	46000004 	sqrt.s	$f0,$f0
    ab94:	4608003c 	c.lt.s	$f0,$f8
    ab98:	00000000 	nop
    ab9c:	45000010 	bc1f	abe0 <BossTw_Draw+0x63c>
    aba0:	00000000 	nop
    aba4:	904c0000 	lbu	t4,0(v0)
    aba8:	3c014348 	lui	at,0x4348
    abac:	1580000c 	bnez	t4,abe0 <BossTw_Draw+0x63c>
    abb0:	00000000 	nop
    abb4:	44815000 	mtc1	at,$f10
    abb8:	240e0001 	li	t6,1
    abbc:	3c180000 	lui	t8,0x0
    abc0:	4610503c 	c.lt.s	$f10,$f16
    abc4:	00000000 	nop
    abc8:	45000005 	bc1f	abe0 <BossTw_Draw+0x63c>
    abcc:	00000000 	nop
    abd0:	a04e0000 	sb	t6,0(v0)
    abd4:	8f180000 	lw	t8,0(t8)
    abd8:	240f0064 	li	t7,100
    abdc:	a70f017c 	sh	t7,380(t8)
    abe0:	0c000000 	jal	0 <func_80938CD0>
    abe4:	02402825 	move	a1,s2
    abe8:	10000004 	b	abfc <BossTw_Draw+0x658>
    abec:	92020564 	lbu	v0,1380(s0)
    abf0:	0c000000 	jal	0 <func_80938CD0>
    abf4:	02402825 	move	a1,s2
    abf8:	92020564 	lbu	v0,1380(s0)
    abfc:	10400014 	beqz	v0,ac50 <BossTw_Draw+0x6ac>
    ac00:	00000000 	nop
    ac04:	8e0a014c 	lw	t2,332(s0)
    ac08:	3c190000 	lui	t9,0x0
    ac0c:	27390000 	addiu	t9,t9,0
    ac10:	172a0006 	bne	t9,t2,ac2c <BossTw_Draw+0x688>
    ac14:	02002025 	move	a0,s0
    ac18:	02002025 	move	a0,s0
    ac1c:	0c000000 	jal	0 <func_80938CD0>
    ac20:	02402825 	move	a1,s2
    ac24:	1000000a 	b	ac50 <BossTw_Draw+0x6ac>
    ac28:	00000000 	nop
    ac2c:	0c000000 	jal	0 <func_80938CD0>
    ac30:	02402825 	move	a1,s2
    ac34:	3c040000 	lui	a0,0x0
    ac38:	24840000 	addiu	a0,a0,0
    ac3c:	0c000000 	jal	0 <func_80938CD0>
    ac40:	2605048c 	addiu	a1,s0,1164
    ac44:	02002025 	move	a0,s0
    ac48:	0c000000 	jal	0 <func_80938CD0>
    ac4c:	02402825 	move	a1,s2
    ac50:	3c060000 	lui	a2,0x0
    ac54:	24c60000 	addiu	a2,a2,0
    ac58:	27a40070 	addiu	a0,sp,112
    ac5c:	8e450000 	lw	a1,0(s2)
    ac60:	0c000000 	jal	0 <func_80938CD0>
    ac64:	24071bd3 	li	a3,7123
    ac68:	8fbf0044 	lw	ra,68(sp)
    ac6c:	8fb00038 	lw	s0,56(sp)
    ac70:	8fb1003c 	lw	s1,60(sp)
    ac74:	8fb20040 	lw	s2,64(sp)
    ac78:	03e00008 	jr	ra
    ac7c:	27bd0090 	addiu	sp,sp,144

0000ac80 <func_80943950>:
    ac80:	27bdff88 	addiu	sp,sp,-120
    ac84:	afbf0034 	sw	ra,52(sp)
    ac88:	afa40078 	sw	a0,120(sp)
    ac8c:	afa5007c 	sw	a1,124(sp)
    ac90:	afa60080 	sw	a2,128(sp)
    ac94:	afa70084 	sw	a3,132(sp)
    ac98:	8c850000 	lw	a1,0(a0)
    ac9c:	3c060000 	lui	a2,0x0
    aca0:	24c60000 	addiu	a2,a2,0
    aca4:	27a40060 	addiu	a0,sp,96
    aca8:	24071be3 	li	a3,7139
    acac:	0c000000 	jal	0 <func_80938CD0>
    acb0:	afa50070 	sw	a1,112(sp)
    acb4:	8faf007c 	lw	t7,124(sp)
    acb8:	8fa80070 	lw	t0,112(sp)
    acbc:	8faa0080 	lw	t2,128(sp)
    acc0:	25f8fff1 	addiu	t8,t7,-15
    acc4:	2f01001c 	sltiu	at,t8,28
    acc8:	102000e7 	beqz	at,b068 <L80943D38>
    accc:	afaf003c 	sw	t7,60(sp)
    acd0:	0018c080 	sll	t8,t8,0x2
    acd4:	3c010000 	lui	at,0x0
    acd8:	00380821 	addu	at,at,t8
    acdc:	8c380000 	lw	t8,0(at)
    ace0:	03000008 	jr	t8
    ace4:	00000000 	nop

0000ace8 <L809439B8>:
    ace8:	8d0202c0 	lw	v0,704(t0)
    acec:	3c0cdb06 	lui	t4,0xdb06
    acf0:	358c0030 	ori	t4,t4,0x30
    acf4:	24590008 	addiu	t9,v0,8
    acf8:	ad1902c0 	sw	t9,704(t0)
    acfc:	ac4c0000 	sw	t4,0(v0)
    ad00:	8fae008c 	lw	t6,140(sp)
    ad04:	8fad0078 	lw	t5,120(sp)
    ad08:	24190008 	li	t9,8
    ad0c:	85cf0150 	lh	t7,336(t6)
    ad10:	8da40000 	lw	a0,0(t5)
    ad14:	afa80070 	sw	t0,112(sp)
    ad18:	448f2000 	mtc1	t7,$f4
    ad1c:	afb90010 	sw	t9,16(sp)
    ad20:	00002825 	move	a1,zero
    ad24:	468021a0 	cvt.s.w	$f6,$f4
    ad28:	24070008 	li	a3,8
    ad2c:	afa2005c 	sw	v0,92(sp)
    ad30:	4600320d 	trunc.w.s	$f8,$f6
    ad34:	44064000 	mfc1	a2,$f8
    ad38:	00000000 	nop
    ad3c:	00063400 	sll	a2,a2,0x10
    ad40:	0c000000 	jal	0 <func_80938CD0>
    ad44:	00063403 	sra	a2,a2,0x10
    ad48:	8fa3005c 	lw	v1,92(sp)
    ad4c:	8fa80070 	lw	t0,112(sp)
    ad50:	8faa0080 	lw	t2,128(sp)
    ad54:	ac620004 	sw	v0,4(v1)
    ad58:	8d0202c0 	lw	v0,704(t0)
    ad5c:	8fab008c 	lw	t3,140(sp)
    ad60:	3c0ddb06 	lui	t5,0xdb06
    ad64:	244c0008 	addiu	t4,v0,8
    ad68:	35ad0020 	ori	t5,t5,0x20
    ad6c:	ad0c02c0 	sw	t4,704(t0)
    ad70:	ac4d0000 	sw	t5,0(v0)
    ad74:	856e04cc 	lh	t6,1228(t3)
    ad78:	3c050000 	lui	a1,0x0
    ad7c:	24a50000 	addiu	a1,a1,0
    ad80:	000e7880 	sll	t7,t6,0x2
    ad84:	00afc021 	addu	t8,a1,t7
    ad88:	8f040000 	lw	a0,0(t8)
    ad8c:	3c070000 	lui	a3,0x0
    ad90:	24e70000 	addiu	a3,a3,0
    ad94:	00046100 	sll	t4,a0,0x4
    ad98:	000c6f02 	srl	t5,t4,0x1c
    ad9c:	000d7080 	sll	t6,t5,0x2
    ada0:	00ee7821 	addu	t7,a3,t6
    ada4:	8df80000 	lw	t8,0(t7)
    ada8:	3c0600ff 	lui	a2,0xff
    adac:	34c6ffff 	ori	a2,a2,0xffff
    adb0:	0086c824 	and	t9,a0,a2
    adb4:	3c098000 	lui	t1,0x8000
    adb8:	03386021 	addu	t4,t9,t8
    adbc:	01896821 	addu	t5,t4,t1
    adc0:	ac4d0004 	sw	t5,4(v0)
    adc4:	8d0202c0 	lw	v0,704(t0)
    adc8:	3c0fdb06 	lui	t7,0xdb06
    adcc:	35ef0024 	ori	t7,t7,0x24
    add0:	244e0008 	addiu	t6,v0,8
    add4:	ad0e02c0 	sw	t6,704(t0)
    add8:	ac4f0000 	sw	t7,0(v0)
    addc:	857904ce 	lh	t9,1230(t3)
    ade0:	2401ff00 	li	at,-256
    ade4:	0019c080 	sll	t8,t9,0x2
    ade8:	00b86021 	addu	t4,a1,t8
    adec:	8d840000 	lw	a0,0(t4)
    adf0:	00047100 	sll	t6,a0,0x4
    adf4:	000e7f02 	srl	t7,t6,0x1c
    adf8:	000fc880 	sll	t9,t7,0x2
    adfc:	00f9c021 	addu	t8,a3,t9
    ae00:	8f0c0000 	lw	t4,0(t8)
    ae04:	00866824 	and	t5,a0,a2
    ae08:	3c18fb00 	lui	t8,0xfb00
    ae0c:	01ac7021 	addu	t6,t5,t4
    ae10:	01c97821 	addu	t7,t6,t1
    ae14:	ac4f0004 	sw	t7,4(v0)
    ae18:	8d0202c0 	lw	v0,704(t0)
    ae1c:	24590008 	addiu	t9,v0,8
    ae20:	ad1902c0 	sw	t9,704(t0)
    ae24:	ac580000 	sw	t8,0(v0)
    ae28:	856d0160 	lh	t5,352(t3)
    ae2c:	31ac00ff 	andi	t4,t5,0xff
    ae30:	01817025 	or	t6,t4,at
    ae34:	1000008c 	b	b068 <L80943D38>
    ae38:	ac4e0004 	sw	t6,4(v0)

0000ae3c <L80943B0C>:
    ae3c:	ad400000 	sw	zero,0(t2)
    ae40:	8d0202d0 	lw	v0,720(t0)
    ae44:	3c19db06 	lui	t9,0xdb06
    ae48:	37390028 	ori	t9,t9,0x28
    ae4c:	244f0008 	addiu	t7,v0,8
    ae50:	ad0f02d0 	sw	t7,720(t0)
    ae54:	ac590000 	sw	t9,0(v0)
    ae58:	8fb80078 	lw	t8,120(sp)
    ae5c:	8faf008c 	lw	t7,140(sp)
    ae60:	240d0020 	li	t5,32
    ae64:	8f040000 	lw	a0,0(t8)
    ae68:	240c0020 	li	t4,32
    ae6c:	240e0001 	li	t6,1
    ae70:	afae0018 	sw	t6,24(sp)
    ae74:	afac0014 	sw	t4,20(sp)
    ae78:	afa0001c 	sw	zero,28(sp)
    ae7c:	afad0010 	sw	t5,16(sp)
    ae80:	85f90150 	lh	t9,336(t7)
    ae84:	240e0040 	li	t6,64
    ae88:	afae0028 	sw	t6,40(sp)
    ae8c:	0019c023 	negu	t8,t9
    ae90:	00186900 	sll	t5,t8,0x4
    ae94:	01b86823 	subu	t5,t5,t8
    ae98:	afad0020 	sw	t5,32(sp)
    ae9c:	afac0024 	sw	t4,36(sp)
    aea0:	00002825 	move	a1,zero
    aea4:	00003025 	move	a2,zero
    aea8:	00003825 	move	a3,zero
    aeac:	0c000000 	jal	0 <func_80938CD0>
    aeb0:	afa2004c 	sw	v0,76(sp)
    aeb4:	8fa3004c 	lw	v1,76(sp)
    aeb8:	8faa0080 	lw	t2,128(sp)
    aebc:	1000006a 	b	b068 <L80943D38>
    aec0:	ac620004 	sw	v0,4(v1)

0000aec4 <L80943B94>:
    aec4:	ad400000 	sw	zero,0(t2)
    aec8:	8d0202d0 	lw	v0,720(t0)
    aecc:	3c19db06 	lui	t9,0xdb06
    aed0:	3739002c 	ori	t9,t9,0x2c
    aed4:	244f0008 	addiu	t7,v0,8
    aed8:	ad0f02d0 	sw	t7,720(t0)
    aedc:	ac590000 	sw	t9,0(v0)
    aee0:	8fb80078 	lw	t8,120(sp)
    aee4:	8faf008c 	lw	t7,140(sp)
    aee8:	240d0020 	li	t5,32
    aeec:	8f040000 	lw	a0,0(t8)
    aef0:	240c0020 	li	t4,32
    aef4:	240e0001 	li	t6,1
    aef8:	afae0018 	sw	t6,24(sp)
    aefc:	afac0014 	sw	t4,20(sp)
    af00:	afa0001c 	sw	zero,28(sp)
    af04:	afad0010 	sw	t5,16(sp)
    af08:	85f90150 	lh	t9,336(t7)
    af0c:	240e0040 	li	t6,64
    af10:	afae0028 	sw	t6,40(sp)
    af14:	0019c023 	negu	t8,t9
    af18:	00186880 	sll	t5,t8,0x2
    af1c:	01b86821 	addu	t5,t5,t8
    af20:	000d6840 	sll	t5,t5,0x1
    af24:	afad0020 	sw	t5,32(sp)
    af28:	afac0024 	sw	t4,36(sp)
    af2c:	00002825 	move	a1,zero
    af30:	00003025 	move	a2,zero
    af34:	00003825 	move	a3,zero
    af38:	0c000000 	jal	0 <func_80938CD0>
    af3c:	afa20048 	sw	v0,72(sp)
    af40:	8fa30048 	lw	v1,72(sp)
    af44:	8faa0080 	lw	t2,128(sp)
    af48:	10000047 	b	b068 <L80943D38>
    af4c:	ac620004 	sw	v0,4(v1)

0000af50 <L80943C20>:
    af50:	ad400000 	sw	zero,0(t2)
    af54:	8d0202d0 	lw	v0,720(t0)
    af58:	3c19db06 	lui	t9,0xdb06
    af5c:	37390020 	ori	t9,t9,0x20
    af60:	244f0008 	addiu	t7,v0,8
    af64:	ad0f02d0 	sw	t7,720(t0)
    af68:	ac590000 	sw	t9,0(v0)
    af6c:	8fb80078 	lw	t8,120(sp)
    af70:	8faf008c 	lw	t7,140(sp)
    af74:	240d0020 	li	t5,32
    af78:	8f040000 	lw	a0,0(t8)
    af7c:	240c0020 	li	t4,32
    af80:	240e0001 	li	t6,1
    af84:	afae0018 	sw	t6,24(sp)
    af88:	afac0014 	sw	t4,20(sp)
    af8c:	afad0010 	sw	t5,16(sp)
    af90:	85e30150 	lh	v1,336(t7)
    af94:	240c0040 	li	t4,64
    af98:	afac0028 	sw	t4,40(sp)
    af9c:	0003c823 	negu	t9,v1
    afa0:	0019c0c0 	sll	t8,t9,0x3
    afa4:	0319c023 	subu	t8,t8,t9
    afa8:	afb80020 	sw	t8,32(sp)
    afac:	afad0024 	sw	t5,36(sp)
    afb0:	00002825 	move	a1,zero
    afb4:	00003025 	move	a2,zero
    afb8:	00003825 	move	a3,zero
    afbc:	afa20044 	sw	v0,68(sp)
    afc0:	0c000000 	jal	0 <func_80938CD0>
    afc4:	afa3001c 	sw	v1,28(sp)
    afc8:	8fa90044 	lw	t1,68(sp)
    afcc:	8faa0080 	lw	t2,128(sp)
    afd0:	10000025 	b	b068 <L80943D38>
    afd4:	ad220004 	sw	v0,4(t1)

0000afd8 <L80943CA8>:
    afd8:	ad400000 	sw	zero,0(t2)
    afdc:	8d0202d0 	lw	v0,720(t0)
    afe0:	3c0fdb06 	lui	t7,0xdb06
    afe4:	35ef0024 	ori	t7,t7,0x24
    afe8:	244e0008 	addiu	t6,v0,8
    afec:	ad0e02d0 	sw	t6,720(t0)
    aff0:	ac4f0000 	sw	t7,0(v0)
    aff4:	8fb8008c 	lw	t8,140(sp)
    aff8:	8fb90078 	lw	t9,120(sp)
    affc:	240d0040 	li	t5,64
    b000:	87060150 	lh	a2,336(t8)
    b004:	8f240000 	lw	a0,0(t9)
    b008:	afad0010 	sw	t5,16(sp)
    b00c:	00002825 	move	a1,zero
    b010:	24070020 	li	a3,32
    b014:	0c000000 	jal	0 <func_80938CD0>
    b018:	afa20040 	sw	v0,64(sp)
    b01c:	8fa30040 	lw	v1,64(sp)
    b020:	8faa0080 	lw	t2,128(sp)
    b024:	10000010 	b	b068 <L80943D38>
    b028:	ac620004 	sw	v0,4(v1)

0000b02c <L80943CFC>:
    b02c:	8fac008c 	lw	t4,140(sp)
    b030:	3c0f0603 	lui	t7,0x603
    b034:	25efd940 	addiu	t7,t7,-9920
    b038:	918e05f8 	lbu	t6,1528(t4)
    b03c:	51c0000b 	beqzl	t6,b06c <L80943D38+0x4>
    b040:	8fab008c 	lw	t3,140(sp)
    b044:	10000008 	b	b068 <L80943D38>
    b048:	ad4f0000 	sw	t7,0(t2)

0000b04c <L80943D1C>:
    b04c:	8fb9008c 	lw	t9,140(sp)
    b050:	3c0d0603 	lui	t5,0x603
    b054:	25add890 	addiu	t5,t5,-10096
    b058:	933805f8 	lbu	t8,1528(t9)
    b05c:	53000003 	beqzl	t8,b06c <L80943D38+0x4>
    b060:	8fab008c 	lw	t3,140(sp)
    b064:	ad4d0000 	sw	t5,0(t2)

0000b068 <L80943D38>:
    b068:	8fab008c 	lw	t3,140(sp)
    b06c:	3c060000 	lui	a2,0x0
    b070:	8fae003c 	lw	t6,60(sp)
    b074:	916c05f8 	lbu	t4,1528(t3)
    b078:	24010022 	li	at,34
    b07c:	24c60000 	addiu	a2,a2,0
    b080:	11800006 	beqz	t4,b09c <L80943D38+0x34>
    b084:	27a40060 	addiu	a0,sp,96
    b088:	11c10003 	beq	t6,at,b098 <L80943D38+0x30>
    b08c:	24010028 	li	at,40
    b090:	55c10003 	bnel	t6,at,b0a0 <L80943D38+0x38>
    b094:	8faf0078 	lw	t7,120(sp)
    b098:	ad400000 	sw	zero,0(t2)
    b09c:	8faf0078 	lw	t7,120(sp)
    b0a0:	24071c53 	li	a3,7251
    b0a4:	0c000000 	jal	0 <func_80938CD0>
    b0a8:	8de50000 	lw	a1,0(t7)
    b0ac:	8fbf0034 	lw	ra,52(sp)
    b0b0:	27bd0078 	addiu	sp,sp,120
    b0b4:	00001025 	move	v0,zero
    b0b8:	03e00008 	jr	ra
    b0bc:	00000000 	nop

0000b0c0 <func_80943D90>:
    b0c0:	27bdffc0 	addiu	sp,sp,-64
    b0c4:	afbf0014 	sw	ra,20(sp)
    b0c8:	afa40040 	sw	a0,64(sp)
    b0cc:	afa50044 	sw	a1,68(sp)
    b0d0:	afa60048 	sw	a2,72(sp)
    b0d4:	afa7004c 	sw	a3,76(sp)
    b0d8:	8c850000 	lw	a1,0(a0)
    b0dc:	3c060000 	lui	a2,0x0
    b0e0:	24c60000 	addiu	a2,a2,0
    b0e4:	27a40028 	addiu	a0,sp,40
    b0e8:	24071c5e 	li	a3,7262
    b0ec:	0c000000 	jal	0 <func_80938CD0>
    b0f0:	afa50038 	sw	a1,56(sp)
    b0f4:	8faf0044 	lw	t7,68(sp)
    b0f8:	25f8fff1 	addiu	t8,t7,-15
    b0fc:	2f01001c 	sltiu	at,t8,28
    b100:	10200042 	beqz	at,b20c <L80943EDC>
    b104:	0018c080 	sll	t8,t8,0x2
    b108:	3c010000 	lui	at,0x0
    b10c:	00380821 	addu	at,at,t8
    b110:	8c380000 	lw	t8,0(at)
    b114:	03000008 	jr	t8
    b118:	00000000 	nop

0000b11c <L80943DEC>:
    b11c:	8fa50050 	lw	a1,80(sp)
    b120:	3c040000 	lui	a0,0x0
    b124:	24840000 	addiu	a0,a0,0
    b128:	0c000000 	jal	0 <func_80938CD0>
    b12c:	24a50498 	addiu	a1,a1,1176
    b130:	10000037 	b	b210 <L80943EDC+0x4>
    b134:	8fb80040 	lw	t8,64(sp)

0000b138 <L80943E08>:
    b138:	8fa50050 	lw	a1,80(sp)
    b13c:	3c040000 	lui	a0,0x0
    b140:	24840000 	addiu	a0,a0,0
    b144:	0c000000 	jal	0 <func_80938CD0>
    b148:	24a504a4 	addiu	a1,a1,1188
    b14c:	10000030 	b	b210 <L80943EDC+0x4>
    b150:	8fb80040 	lw	t8,64(sp)

0000b154 <L80943E24>:
    b154:	8fa50050 	lw	a1,80(sp)
    b158:	3c040000 	lui	a0,0x0
    b15c:	24840000 	addiu	a0,a0,0
    b160:	0c000000 	jal	0 <func_80938CD0>
    b164:	24a50038 	addiu	a1,a1,56
    b168:	8fa50050 	lw	a1,80(sp)
    b16c:	3c040000 	lui	a0,0x0
    b170:	24840000 	addiu	a0,a0,0
    b174:	0c000000 	jal	0 <func_80938CD0>
    b178:	24a50444 	addiu	a1,a1,1092
    b17c:	10000024 	b	b210 <L80943EDC+0x4>
    b180:	8fb80040 	lw	t8,64(sp)

0000b184 <L80943E54>:
    b184:	0c000000 	jal	0 <func_80938CD0>
    b188:	00000000 	nop
    b18c:	8fb90050 	lw	t9,80(sp)
    b190:	24070001 	li	a3,1
    b194:	c72c01b4 	lwc1	$f12,436(t9)
    b198:	44066000 	mfc1	a2,$f12
    b19c:	0c000000 	jal	0 <func_80938CD0>
    b1a0:	46006386 	mov.s	$f14,$f12
    b1a4:	8fa70038 	lw	a3,56(sp)
    b1a8:	3c09da38 	lui	t1,0xda38
    b1ac:	35290003 	ori	t1,t1,0x3
    b1b0:	8ce202d0 	lw	v0,720(a3)
    b1b4:	3c050000 	lui	a1,0x0
    b1b8:	24a50000 	addiu	a1,a1,0
    b1bc:	24480008 	addiu	t0,v0,8
    b1c0:	ace802d0 	sw	t0,720(a3)
    b1c4:	ac490000 	sw	t1,0(v0)
    b1c8:	8faa0040 	lw	t2,64(sp)
    b1cc:	24061c7f 	li	a2,7295
    b1d0:	8d440000 	lw	a0,0(t2)
    b1d4:	0c000000 	jal	0 <func_80938CD0>
    b1d8:	afa20024 	sw	v0,36(sp)
    b1dc:	8fa30024 	lw	v1,36(sp)
    b1e0:	0c000000 	jal	0 <func_80938CD0>
    b1e4:	ac620004 	sw	v0,4(v1)
    b1e8:	8fab0038 	lw	t3,56(sp)
    b1ec:	3c0dde00 	lui	t5,0xde00
    b1f0:	8d6202d0 	lw	v0,720(t3)
    b1f4:	244c0008 	addiu	t4,v0,8
    b1f8:	ad6c02d0 	sw	t4,720(t3)
    b1fc:	ac4d0000 	sw	t5,0(v0)
    b200:	8fae0048 	lw	t6,72(sp)
    b204:	8dcf0000 	lw	t7,0(t6)
    b208:	ac4f0004 	sw	t7,4(v0)

0000b20c <L80943EDC>:
    b20c:	8fb80040 	lw	t8,64(sp)
    b210:	3c060000 	lui	a2,0x0
    b214:	24c60000 	addiu	a2,a2,0
    b218:	27a40028 	addiu	a0,sp,40
    b21c:	24071c85 	li	a3,7301
    b220:	0c000000 	jal	0 <func_80938CD0>
    b224:	8f050000 	lw	a1,0(t8)
    b228:	8fbf0014 	lw	ra,20(sp)
    b22c:	27bd0040 	addiu	sp,sp,64
    b230:	03e00008 	jr	ra
    b234:	00000000 	nop

0000b238 <func_80943F08>:
    b238:	27bdff48 	addiu	sp,sp,-184
    b23c:	afbf003c 	sw	ra,60(sp)
    b240:	afb00038 	sw	s0,56(sp)
    b244:	afa400b8 	sw	a0,184(sp)
    b248:	afa500bc 	sw	a1,188(sp)
    b24c:	8caf1c44 	lw	t7,7236(a1)
    b250:	3c060000 	lui	a2,0x0
    b254:	24c60000 	addiu	a2,a2,0
    b258:	afaf00b0 	sw	t7,176(sp)
    b25c:	8ca50000 	lw	a1,0(a1)
    b260:	27a40098 	addiu	a0,sp,152
    b264:	24071c8f 	li	a3,7311
    b268:	0c000000 	jal	0 <func_80938CD0>
    b26c:	00a08025 	move	s0,a1
    b270:	0c000000 	jal	0 <func_80938CD0>
    b274:	00000000 	nop
    b278:	3c180000 	lui	t8,0x0
    b27c:	3c190000 	lui	t9,0x0
    b280:	93390000 	lbu	t9,0(t9)
    b284:	93180000 	lbu	t8,0(t8)
    b288:	24010001 	li	at,1
    b28c:	24041032 	li	a0,4146
    b290:	03194025 	or	t0,t8,t9
    b294:	00084400 	sll	t0,t0,0x10
    b298:	00084403 	sra	t0,t0,0x10
    b29c:	55010006 	bnel	t0,at,b2b8 <func_80943F08+0x80>
    b2a0:	24010002 	li	at,2
    b2a4:	0c000000 	jal	0 <func_80938CD0>
    b2a8:	a7a800ae 	sh	t0,174(sp)
    b2ac:	1000000e 	b	b2e8 <func_80943F08+0xb0>
    b2b0:	87a800ae 	lh	t0,174(sp)
    b2b4:	24010002 	li	at,2
    b2b8:	15010005 	bne	t0,at,b2d0 <func_80943F08+0x98>
    b2bc:	24041033 	li	a0,4147
    b2c0:	0c000000 	jal	0 <func_80938CD0>
    b2c4:	a7a800ae 	sh	t0,174(sp)
    b2c8:	10000007 	b	b2e8 <func_80943F08+0xb0>
    b2cc:	87a800ae 	lh	t0,174(sp)
    b2d0:	24010003 	li	at,3
    b2d4:	15010004 	bne	t0,at,b2e8 <func_80943F08+0xb0>
    b2d8:	24041034 	li	a0,4148
    b2dc:	0c000000 	jal	0 <func_80938CD0>
    b2e0:	a7a800ae 	sh	t0,174(sp)
    b2e4:	87a800ae 	lh	t0,174(sp)
    b2e8:	11000012 	beqz	t0,b334 <func_80943F08+0xfc>
    b2ec:	29010004 	slti	at,t0,4
    b2f0:	10200010 	beqz	at,b334 <func_80943F08+0xfc>
    b2f4:	3c040000 	lui	a0,0x0
    b2f8:	24840000 	addiu	a0,a0,0
    b2fc:	3c05437f 	lui	a1,0x437f
    b300:	3c063f80 	lui	a2,0x3f80
    b304:	3c0741a0 	lui	a3,0x41a0
    b308:	0c000000 	jal	0 <func_80938CD0>
    b30c:	a7a800ae 	sh	t0,174(sp)
    b310:	87a800ae 	lh	t0,174(sp)
    b314:	24020003 	li	v0,3
    b318:	5502001e 	bnel	t0,v0,b394 <func_80943F08+0x15c>
    b31c:	8fa400bc 	lw	a0,188(sp)
    b320:	01020019 	multu	t0,v0
    b324:	00004012 	mflo	t0
    b328:	00084400 	sll	t0,t0,0x10
    b32c:	10000018 	b	b390 <func_80943F08+0x158>
    b330:	00084403 	sra	t0,t0,0x10
    b334:	15000005 	bnez	t0,b34c <func_80943F08+0x114>
    b338:	3c040000 	lui	a0,0x0
    b33c:	44802000 	mtc1	zero,$f4
    b340:	3c010000 	lui	at,0x0
    b344:	10000012 	b	b390 <func_80943F08+0x158>
    b348:	e4240000 	swc1	$f4,0(at)
    b34c:	24840000 	addiu	a0,a0,0
    b350:	24050000 	li	a1,0
    b354:	3c063f80 	lui	a2,0x3f80
    b358:	0c000000 	jal	0 <func_80938CD0>
    b35c:	3c074120 	lui	a3,0x4120
    b360:	3c010000 	lui	at,0x0
    b364:	c4280000 	lwc1	$f8,0(at)
    b368:	44803000 	mtc1	zero,$f6
    b36c:	3c010000 	lui	at,0x0
    b370:	24080001 	li	t0,1
    b374:	46083032 	c.eq.s	$f6,$f8
    b378:	00000000 	nop
    b37c:	45000004 	bc1f	b390 <func_80943F08+0x158>
    b380:	00000000 	nop
    b384:	a0200000 	sb	zero,0(at)
    b388:	3c010000 	lui	at,0x0
    b38c:	a0200000 	sb	zero,0(at)
    b390:	8fa400bc 	lw	a0,188(sp)
    b394:	0c000000 	jal	0 <func_80938CD0>
    b398:	a7a800ae 	sh	t0,174(sp)
    b39c:	10400105 	beqz	v0,b7b4 <func_80943F08+0x57c>
    b3a0:	87a800ae 	lh	t0,174(sp)
    b3a4:	11000103 	beqz	t0,b7b4 <func_80943F08+0x57c>
    b3a8:	8fa400b0 	lw	a0,176(sp)
    b3ac:	24840a20 	addiu	a0,a0,2592
    b3b0:	00002825 	move	a1,zero
    b3b4:	0c000000 	jal	0 <func_80938CD0>
    b3b8:	a7a800ae 	sh	t0,174(sp)
    b3bc:	3c010000 	lui	at,0x0
    b3c0:	c42c0000 	lwc1	$f12,0(at)
    b3c4:	0c000000 	jal	0 <func_80938CD0>
    b3c8:	24050001 	li	a1,1
    b3cc:	8e0202d0 	lw	v0,720(s0)
    b3d0:	87a800ae 	lh	t0,174(sp)
    b3d4:	3c0bda38 	lui	t3,0xda38
    b3d8:	244a0008 	addiu	t2,v0,8
    b3dc:	ae0a02d0 	sw	t2,720(s0)
    b3e0:	356b0003 	ori	t3,t3,0x3
    b3e4:	ac4b0000 	sw	t3,0(v0)
    b3e8:	8fac00bc 	lw	t4,188(sp)
    b3ec:	3c050000 	lui	a1,0x0
    b3f0:	24a50000 	addiu	a1,a1,0
    b3f4:	8d840000 	lw	a0,0(t4)
    b3f8:	24061cc2 	li	a2,7362
    b3fc:	afa20094 	sw	v0,148(sp)
    b400:	0c000000 	jal	0 <func_80938CD0>
    b404:	a7a800ae 	sh	t0,174(sp)
    b408:	8fa30094 	lw	v1,148(sp)
    b40c:	87a800ae 	lh	t0,174(sp)
    b410:	24010aaa 	li	at,2730
    b414:	ac620004 	sw	v0,4(v1)
    b418:	8fad00b8 	lw	t5,184(sp)
    b41c:	85af0150 	lh	t7,336(t5)
    b420:	a7a800ae 	sh	t0,174(sp)
    b424:	01e10019 	multu	t7,at
    b428:	00007012 	mflo	t6
	...
    b434:	01c80019 	multu	t6,t0
    b438:	00002012 	mflo	a0
    b43c:	00042400 	sll	a0,a0,0x10
    b440:	0c000000 	jal	0 <func_80938CD0>
    b444:	00042403 	sra	a0,a0,0x10
    b448:	3c013f00 	lui	at,0x3f00
    b44c:	44816000 	mtc1	at,$f12
    b450:	3c010000 	lui	at,0x0
    b454:	c4220000 	lwc1	$f2,0(at)
    b458:	3c190000 	lui	t9,0x0
    b45c:	93390000 	lbu	t9,0(t9)
    b460:	46020282 	mul.s	$f10,$f0,$f2
    b464:	3c01e1ff 	lui	at,0xe1ff
    b468:	87a800ae 	lh	t0,174(sp)
    b46c:	3c0bfb00 	lui	t3,0xfb00
    b470:	3c0ede00 	lui	t6,0xde00
    b474:	3421ff00 	ori	at,at,0xff00
    b478:	3c0ffb00 	lui	t7,0xfb00
    b47c:	460c5402 	mul.s	$f16,$f10,$f12
    b480:	3c0ade00 	lui	t2,0xde00
    b484:	460c1482 	mul.s	$f18,$f2,$f12
    b488:	46128100 	add.s	$f4,$f16,$f18
    b48c:	4600218d 	trunc.w.s	$f6,$f4
    b490:	44043000 	mfc1	a0,$f6
    b494:	00000000 	nop
    b498:	00042400 	sll	a0,a0,0x10
    b49c:	13200064 	beqz	t9,b630 <func_80943F08+0x3f8>
    b4a0:	00042403 	sra	a0,a0,0x10
    b4a4:	8e0202d0 	lw	v0,720(s0)
    b4a8:	3c01fff5 	lui	at,0xfff5
    b4ac:	3421ff00 	ori	at,at,0xff00
    b4b0:	244a0008 	addiu	t2,v0,8
    b4b4:	ae0a02d0 	sw	t2,720(s0)
    b4b8:	308c00ff 	andi	t4,a0,0xff
    b4bc:	01816825 	or	t5,t4,at
    b4c0:	ac4d0004 	sw	t5,4(v0)
    b4c4:	ac4b0000 	sw	t3,0(v0)
    b4c8:	8e0202d0 	lw	v0,720(s0)
    b4cc:	3c040602 	lui	a0,0x602
    b4d0:	2484e0e0 	addiu	a0,a0,-7968
    b4d4:	0004c100 	sll	t8,a0,0x4
    b4d8:	0018cf02 	srl	t9,t8,0x1c
    b4dc:	244f0008 	addiu	t7,v0,8
    b4e0:	ae0f02d0 	sw	t7,720(s0)
    b4e4:	00195080 	sll	t2,t9,0x2
    b4e8:	3c0b0000 	lui	t3,0x0
    b4ec:	016a5821 	addu	t3,t3,t2
    b4f0:	3c0100ff 	lui	at,0xff
    b4f4:	ac4e0000 	sw	t6,0(v0)
    b4f8:	8d6b0000 	lw	t3,0(t3)
    b4fc:	3421ffff 	ori	at,at,0xffff
    b500:	00816024 	and	t4,a0,at
    b504:	3c018000 	lui	at,0x8000
    b508:	016c6821 	addu	t5,t3,t4
    b50c:	01a17821 	addu	t7,t5,at
    b510:	ac4f0004 	sw	t7,4(v0)
    b514:	8e0202d0 	lw	v0,720(s0)
    b518:	3c18db06 	lui	t8,0xdb06
    b51c:	37180020 	ori	t8,t8,0x20
    b520:	244e0008 	addiu	t6,v0,8
    b524:	ae0e02d0 	sw	t6,720(s0)
    b528:	ac580000 	sw	t8,0(v0)
    b52c:	8faa00b8 	lw	t2,184(sp)
    b530:	8fb900bc 	lw	t9,188(sp)
    b534:	240f0001 	li	t7,1
    b538:	85430150 	lh	v1,336(t2)
    b53c:	8f240000 	lw	a0,0(t9)
    b540:	240a0020 	li	t2,32
    b544:	00035840 	sll	t3,v1,0x1
    b548:	01680019 	multu	t3,t0
    b54c:	00037023 	negu	t6,v1
    b550:	000ec040 	sll	t8,t6,0x1
    b554:	240b0020 	li	t3,32
    b558:	240d0020 	li	t5,32
    b55c:	240c0020 	li	t4,32
    b560:	afac0010 	sw	t4,16(sp)
    b564:	afad0014 	sw	t5,20(sp)
    b568:	afab0028 	sw	t3,40(sp)
    b56c:	afaa0024 	sw	t2,36(sp)
    b570:	00003012 	mflo	a2
    b574:	afa00020 	sw	zero,32(sp)
    b578:	afaf0018 	sw	t7,24(sp)
    b57c:	03080019 	multu	t8,t0
    b580:	00002825 	move	a1,zero
    b584:	00003825 	move	a3,zero
    b588:	afa20088 	sw	v0,136(sp)
    b58c:	0000c812 	mflo	t9
    b590:	afb9001c 	sw	t9,28(sp)
    b594:	0c000000 	jal	0 <func_80938CD0>
    b598:	00000000 	nop
    b59c:	8fa90088 	lw	t1,136(sp)
    b5a0:	3c0dfa00 	lui	t5,0xfa00
    b5a4:	3c010000 	lui	at,0x0
    b5a8:	ad220004 	sw	v0,4(t1)
    b5ac:	8e0202d0 	lw	v0,720(s0)
    b5b0:	3c040602 	lui	a0,0x602
    b5b4:	2484e020 	addiu	a0,a0,-8160
    b5b8:	244c0008 	addiu	t4,v0,8
    b5bc:	ae0c02d0 	sw	t4,720(s0)
    b5c0:	ac4d0000 	sw	t5,0(v0)
    b5c4:	c4280000 	lwc1	$f8,0(at)
    b5c8:	3c016414 	lui	at,0x6414
    b5cc:	00047900 	sll	t7,a0,0x4
    b5d0:	4600428d 	trunc.w.s	$f10,$f8
    b5d4:	000f7702 	srl	t6,t7,0x1c
    b5d8:	000ec080 	sll	t8,t6,0x2
    b5dc:	3c0dde00 	lui	t5,0xde00
    b5e0:	44195000 	mfc1	t9,$f10
    b5e4:	00000000 	nop
    b5e8:	332a00ff 	andi	t2,t9,0xff
    b5ec:	01415825 	or	t3,t2,at
    b5f0:	ac4b0004 	sw	t3,4(v0)
    b5f4:	8e0202d0 	lw	v0,720(s0)
    b5f8:	3c190000 	lui	t9,0x0
    b5fc:	0338c821 	addu	t9,t9,t8
    b600:	244c0008 	addiu	t4,v0,8
    b604:	ae0c02d0 	sw	t4,720(s0)
    b608:	3c0100ff 	lui	at,0xff
    b60c:	ac4d0000 	sw	t5,0(v0)
    b610:	8f390000 	lw	t9,0(t9)
    b614:	3421ffff 	ori	at,at,0xffff
    b618:	00815024 	and	t2,a0,at
    b61c:	3c018000 	lui	at,0x8000
    b620:	032a5821 	addu	t3,t9,t2
    b624:	01616021 	addu	t4,t3,at
    b628:	10000062 	b	b7b4 <func_80943F08+0x57c>
    b62c:	ac4c0004 	sw	t4,4(v0)
    b630:	8e0202d0 	lw	v0,720(s0)
    b634:	308e00ff 	andi	t6,a0,0xff
    b638:	01c1c025 	or	t8,t6,at
    b63c:	244d0008 	addiu	t5,v0,8
    b640:	ae0d02d0 	sw	t5,720(s0)
    b644:	ac4f0000 	sw	t7,0(v0)
    b648:	ac580004 	sw	t8,4(v0)
    b64c:	8e0202d0 	lw	v0,720(s0)
    b650:	3c040602 	lui	a0,0x602
    b654:	2484e3a0 	addiu	a0,a0,-7264
    b658:	00045900 	sll	t3,a0,0x4
    b65c:	000b6702 	srl	t4,t3,0x1c
    b660:	24590008 	addiu	t9,v0,8
    b664:	ae1902d0 	sw	t9,720(s0)
    b668:	000c6880 	sll	t5,t4,0x2
    b66c:	3c0f0000 	lui	t7,0x0
    b670:	01ed7821 	addu	t7,t7,t5
    b674:	3c0100ff 	lui	at,0xff
    b678:	ac4a0000 	sw	t2,0(v0)
    b67c:	8def0000 	lw	t7,0(t7)
    b680:	3421ffff 	ori	at,at,0xffff
    b684:	00817024 	and	t6,a0,at
    b688:	3c018000 	lui	at,0x8000
    b68c:	01eec021 	addu	t8,t7,t6
    b690:	0301c821 	addu	t9,t8,at
    b694:	ac590004 	sw	t9,4(v0)
    b698:	8e0202d0 	lw	v0,720(s0)
    b69c:	3c0bdb06 	lui	t3,0xdb06
    b6a0:	356b0020 	ori	t3,t3,0x20
    b6a4:	244a0008 	addiu	t2,v0,8
    b6a8:	ae0a02d0 	sw	t2,720(s0)
    b6ac:	ac4b0000 	sw	t3,0(v0)
    b6b0:	8fad00b8 	lw	t5,184(sp)
    b6b4:	8fac00bc 	lw	t4,188(sp)
    b6b8:	240a0001 	li	t2,1
    b6bc:	85a30150 	lh	v1,336(t5)
    b6c0:	8d840000 	lw	a0,0(t4)
    b6c4:	240d0020 	li	t5,32
    b6c8:	00037823 	negu	t7,v1
    b6cc:	000f7080 	sll	t6,t7,0x2
    b6d0:	01cf7021 	addu	t6,t6,t7
    b6d4:	01c80019 	multu	t6,t0
    b6d8:	00035880 	sll	t3,v1,0x2
    b6dc:	240f0020 	li	t7,32
    b6e0:	24190040 	li	t9,64
    b6e4:	24180020 	li	t8,32
    b6e8:	afb80010 	sw	t8,16(sp)
    b6ec:	afb90014 	sw	t9,20(sp)
    b6f0:	afaf0028 	sw	t7,40(sp)
    b6f4:	afad0024 	sw	t5,36(sp)
    b6f8:	afa00020 	sw	zero,32(sp)
    b6fc:	00003812 	mflo	a3
    b700:	afaa0018 	sw	t2,24(sp)
    b704:	00002825 	move	a1,zero
    b708:	01680019 	multu	t3,t0
    b70c:	00003025 	move	a2,zero
    b710:	afa20074 	sw	v0,116(sp)
    b714:	00006012 	mflo	t4
    b718:	afac001c 	sw	t4,28(sp)
    b71c:	0c000000 	jal	0 <func_80938CD0>
    b720:	00000000 	nop
    b724:	8fa90074 	lw	t1,116(sp)
    b728:	3c18fa00 	lui	t8,0xfa00
    b72c:	3c010000 	lui	at,0x0
    b730:	ad220004 	sw	v0,4(t1)
    b734:	8e0202d0 	lw	v0,720(s0)
    b738:	3c040602 	lui	a0,0x602
    b73c:	2484e2c0 	addiu	a0,a0,-7488
    b740:	244e0008 	addiu	t6,v0,8
    b744:	ae0e02d0 	sw	t6,720(s0)
    b748:	ac580000 	sw	t8,0(v0)
    b74c:	c4300000 	lwc1	$f16,0(at)
    b750:	3c01afcd 	lui	at,0xafcd
    b754:	3421c300 	ori	at,at,0xc300
    b758:	4600848d 	trunc.w.s	$f18,$f16
    b75c:	0004c900 	sll	t9,a0,0x4
    b760:	00195702 	srl	t2,t9,0x1c
    b764:	000a5880 	sll	t3,t2,0x2
    b768:	440c9000 	mfc1	t4,$f18
    b76c:	3c18de00 	lui	t8,0xde00
    b770:	318d00ff 	andi	t5,t4,0xff
    b774:	01a17825 	or	t7,t5,at
    b778:	ac4f0004 	sw	t7,4(v0)
    b77c:	8e0202d0 	lw	v0,720(s0)
    b780:	3c0c0000 	lui	t4,0x0
    b784:	018b6021 	addu	t4,t4,t3
    b788:	244e0008 	addiu	t6,v0,8
    b78c:	ae0e02d0 	sw	t6,720(s0)
    b790:	3c0100ff 	lui	at,0xff
    b794:	ac580000 	sw	t8,0(v0)
    b798:	8d8c0000 	lw	t4,0(t4)
    b79c:	3421ffff 	ori	at,at,0xffff
    b7a0:	00816824 	and	t5,a0,at
    b7a4:	3c018000 	lui	at,0x8000
    b7a8:	018d7821 	addu	t7,t4,t5
    b7ac:	01e17021 	addu	t6,t7,at
    b7b0:	ac4e0004 	sw	t6,4(v0)
    b7b4:	3c030000 	lui	v1,0x0
    b7b8:	24630000 	addiu	v1,v1,0
    b7bc:	90620000 	lbu	v0,0(v1)
    b7c0:	3c040000 	lui	a0,0x0
    b7c4:	3c0a0000 	lui	t2,0x0
    b7c8:	10400015 	beqz	v0,b820 <func_80943F08+0x5e8>
    b7cc:	24840000 	addiu	a0,a0,0
    b7d0:	3c180000 	lui	t8,0x0
    b7d4:	87180000 	lh	t8,0(t8)
    b7d8:	3c040000 	lui	a0,0x0
    b7dc:	2459ffff 	addiu	t9,v0,-1
    b7e0:	1b000005 	blez	t8,b7f8 <func_80943F08+0x5c0>
    b7e4:	24840000 	addiu	a0,a0,0
    b7e8:	3c0142c8 	lui	at,0x42c8
    b7ec:	44810000 	mtc1	at,$f0
    b7f0:	10000005 	b	b808 <func_80943F08+0x5d0>
    b7f4:	44070000 	mfc1	a3,$f0
    b7f8:	3c014270 	lui	at,0x4270
    b7fc:	44810000 	mtc1	at,$f0
    b800:	00000000 	nop
    b804:	44070000 	mfc1	a3,$f0
    b808:	a0790000 	sb	t9,0(v1)
    b80c:	3c05437f 	lui	a1,0x437f
    b810:	0c000000 	jal	0 <func_80938CD0>
    b814:	3c063f80 	lui	a2,0x3f80
    b818:	1000000f 	b	b858 <func_80943F08+0x620>
    b81c:	00000000 	nop
    b820:	854a0000 	lh	t2,0(t2)
    b824:	3c0141a0 	lui	at,0x41a0
    b828:	24050000 	li	a1,0
    b82c:	59400006 	blezl	t2,b848 <func_80943F08+0x610>
    b830:	44810000 	mtc1	at,$f0
    b834:	3c014220 	lui	at,0x4220
    b838:	44810000 	mtc1	at,$f0
    b83c:	10000004 	b	b850 <func_80943F08+0x618>
    b840:	44070000 	mfc1	a3,$f0
    b844:	44810000 	mtc1	at,$f0
    b848:	00000000 	nop
    b84c:	44070000 	mfc1	a3,$f0
    b850:	0c000000 	jal	0 <func_80938CD0>
    b854:	3c063f80 	lui	a2,0x3f80
    b858:	0c000000 	jal	0 <func_80938CD0>
    b85c:	8fa400bc 	lw	a0,188(sp)
    b860:	10400094 	beqz	v0,bab4 <func_80943F08+0x87c>
    b864:	3c010000 	lui	at,0x0
    b868:	44802000 	mtc1	zero,$f4
    b86c:	c4260000 	lwc1	$f6,0(at)
    b870:	3c0b0000 	lui	t3,0x0
    b874:	4606203c 	c.lt.s	$f4,$f6
    b878:	00000000 	nop
    b87c:	4500008d 	bc1f	bab4 <func_80943F08+0x87c>
    b880:	00000000 	nop
    b884:	856b0000 	lh	t3,0(t3)
    b888:	8fa400b0 	lw	a0,176(sp)
    b88c:	3c013f80 	lui	at,0x3f80
    b890:	19600005 	blez	t3,b8a8 <func_80943F08+0x670>
    b894:	24840a20 	addiu	a0,a0,2592
    b898:	3c010000 	lui	at,0x0
    b89c:	c4280000 	lwc1	$f8,0(at)
    b8a0:	10000004 	b	b8b4 <func_80943F08+0x67c>
    b8a4:	e7a80060 	swc1	$f8,96(sp)
    b8a8:	44815000 	mtc1	at,$f10
    b8ac:	00000000 	nop
    b8b0:	e7aa0060 	swc1	$f10,96(sp)
    b8b4:	0c000000 	jal	0 <func_80938CD0>
    b8b8:	00002825 	move	a1,zero
    b8bc:	3c010000 	lui	at,0x0
    b8c0:	c42c0000 	lwc1	$f12,0(at)
    b8c4:	0c000000 	jal	0 <func_80938CD0>
    b8c8:	24050001 	li	a1,1
    b8cc:	c7ac0060 	lwc1	$f12,96(sp)
    b8d0:	24070001 	li	a3,1
    b8d4:	44066000 	mfc1	a2,$f12
    b8d8:	0c000000 	jal	0 <func_80938CD0>
    b8dc:	46006386 	mov.s	$f14,$f12
    b8e0:	8e0202d0 	lw	v0,720(s0)
    b8e4:	3c0dda38 	lui	t5,0xda38
    b8e8:	35ad0003 	ori	t5,t5,0x3
    b8ec:	244c0008 	addiu	t4,v0,8
    b8f0:	ae0c02d0 	sw	t4,720(s0)
    b8f4:	ac4d0000 	sw	t5,0(v0)
    b8f8:	8faf00bc 	lw	t7,188(sp)
    b8fc:	3c050000 	lui	a1,0x0
    b900:	24a50000 	addiu	a1,a1,0
    b904:	8de40000 	lw	a0,0(t7)
    b908:	24061d3e 	li	a2,7486
    b90c:	0c000000 	jal	0 <func_80938CD0>
    b910:	afa2005c 	sw	v0,92(sp)
    b914:	8fa3005c 	lw	v1,92(sp)
    b918:	3c0e0000 	lui	t6,0x0
    b91c:	00002825 	move	a1,zero
    b920:	ac620004 	sw	v0,4(v1)
    b924:	91ce0000 	lbu	t6,0(t6)
    b928:	00003025 	move	a2,zero
    b92c:	51c0001a 	beqzl	t6,b998 <func_80943F08+0x760>
    b930:	8e0202d0 	lw	v0,720(s0)
    b934:	8e0202d0 	lw	v0,720(s0)
    b938:	3c19fa00 	lui	t9,0xfa00
    b93c:	3c010000 	lui	at,0x0
    b940:	24580008 	addiu	t8,v0,8
    b944:	ae1802d0 	sw	t8,720(s0)
    b948:	ac590000 	sw	t9,0(v0)
    b94c:	c4300000 	lwc1	$f16,0(at)
    b950:	3c01ffdc 	lui	at,0xffdc
    b954:	34211400 	ori	at,at,0x1400
    b958:	4600848d 	trunc.w.s	$f18,$f16
    b95c:	3c0aff00 	lui	t2,0xff00
    b960:	354a146e 	ori	t2,t2,0x146e
    b964:	3c19fb00 	lui	t9,0xfb00
    b968:	440d9000 	mfc1	t5,$f18
    b96c:	00000000 	nop
    b970:	31af00ff 	andi	t7,t5,0xff
    b974:	01e17025 	or	t6,t7,at
    b978:	ac4e0004 	sw	t6,4(v0)
    b97c:	8e0202d0 	lw	v0,720(s0)
    b980:	24580008 	addiu	t8,v0,8
    b984:	ae1802d0 	sw	t8,720(s0)
    b988:	ac4a0004 	sw	t2,4(v0)
    b98c:	10000017 	b	b9ec <func_80943F08+0x7b4>
    b990:	ac590000 	sw	t9,0(v0)
    b994:	8e0202d0 	lw	v0,720(s0)
    b998:	3c0cfa00 	lui	t4,0xfa00
    b99c:	3c010000 	lui	at,0x0
    b9a0:	244b0008 	addiu	t3,v0,8
    b9a4:	ae0b02d0 	sw	t3,720(s0)
    b9a8:	ac4c0000 	sw	t4,0(v0)
    b9ac:	c4240000 	lwc1	$f4,0(at)
    b9b0:	2401ff00 	li	at,-256
    b9b4:	3c0db9e1 	lui	t5,0xb9e1
    b9b8:	4600218d 	trunc.w.s	$f6,$f4
    b9bc:	35adcd96 	ori	t5,t5,0xcd96
    b9c0:	3c0cfb00 	lui	t4,0xfb00
    b9c4:	44183000 	mfc1	t8,$f6
    b9c8:	00000000 	nop
    b9cc:	331900ff 	andi	t9,t8,0xff
    b9d0:	03215025 	or	t2,t9,at
    b9d4:	ac4a0004 	sw	t2,4(v0)
    b9d8:	8e0202d0 	lw	v0,720(s0)
    b9dc:	244b0008 	addiu	t3,v0,8
    b9e0:	ae0b02d0 	sw	t3,720(s0)
    b9e4:	ac4d0004 	sw	t5,4(v0)
    b9e8:	ac4c0000 	sw	t4,0(v0)
    b9ec:	8e0202d0 	lw	v0,720(s0)
    b9f0:	3c0edb06 	lui	t6,0xdb06
    b9f4:	35ce0020 	ori	t6,t6,0x20
    b9f8:	244f0008 	addiu	t7,v0,8
    b9fc:	ae0f02d0 	sw	t7,720(s0)
    ba00:	ac4e0000 	sw	t6,0(v0)
    ba04:	8fb900b8 	lw	t9,184(sp)
    ba08:	3c0b0000 	lui	t3,0x0
    ba0c:	856b0000 	lh	t3,0(t3)
    ba10:	872a0150 	lh	t2,336(t9)
    ba14:	8fb800bc 	lw	t8,188(sp)
    ba18:	240e0020 	li	t6,32
    ba1c:	014b0019 	multu	t2,t3
    ba20:	8f040000 	lw	a0,0(t8)
    ba24:	24180020 	li	t8,32
    ba28:	240f0001 	li	t7,1
    ba2c:	240c0020 	li	t4,32
    ba30:	240d0040 	li	t5,64
    ba34:	afad0014 	sw	t5,20(sp)
    ba38:	afac0010 	sw	t4,16(sp)
    ba3c:	afaf0018 	sw	t7,24(sp)
    ba40:	afb80028 	sw	t8,40(sp)
    ba44:	00003812 	mflo	a3
    ba48:	afa70020 	sw	a3,32(sp)
    ba4c:	afae0024 	sw	t6,36(sp)
    ba50:	afa0001c 	sw	zero,28(sp)
    ba54:	0c000000 	jal	0 <func_80938CD0>
    ba58:	afa20048 	sw	v0,72(sp)
    ba5c:	8fa30048 	lw	v1,72(sp)
    ba60:	3c040602 	lui	a0,0x602
    ba64:	2484e9f0 	addiu	a0,a0,-5648
    ba68:	ac620004 	sw	v0,4(v1)
    ba6c:	8e0202d0 	lw	v0,720(s0)
    ba70:	00045900 	sll	t3,a0,0x4
    ba74:	000b6702 	srl	t4,t3,0x1c
    ba78:	24590008 	addiu	t9,v0,8
    ba7c:	ae1902d0 	sw	t9,720(s0)
    ba80:	000c6880 	sll	t5,t4,0x2
    ba84:	3c0ade00 	lui	t2,0xde00
    ba88:	3c0f0000 	lui	t7,0x0
    ba8c:	01ed7821 	addu	t7,t7,t5
    ba90:	3c0100ff 	lui	at,0xff
    ba94:	ac4a0000 	sw	t2,0(v0)
    ba98:	8def0000 	lw	t7,0(t7)
    ba9c:	3421ffff 	ori	at,at,0xffff
    baa0:	00817024 	and	t6,a0,at
    baa4:	3c018000 	lui	at,0x8000
    baa8:	01eec021 	addu	t8,t7,t6
    baac:	0301c821 	addu	t9,t8,at
    bab0:	ac590004 	sw	t9,4(v0)
    bab4:	0c000000 	jal	0 <func_80938CD0>
    bab8:	00000000 	nop
    babc:	8faa00bc 	lw	t2,188(sp)
    bac0:	3c060000 	lui	a2,0x0
    bac4:	24c60000 	addiu	a2,a2,0
    bac8:	27a40098 	addiu	a0,sp,152
    bacc:	24071d6b 	li	a3,7531
    bad0:	0c000000 	jal	0 <func_80938CD0>
    bad4:	8d450000 	lw	a1,0(t2)
    bad8:	8fbf003c 	lw	ra,60(sp)
    badc:	8fb00038 	lw	s0,56(sp)
    bae0:	27bd00b8 	addiu	sp,sp,184
    bae4:	03e00008 	jr	ra
    bae8:	00000000 	nop

0000baec <func_809447BC>:
    baec:	27bdff68 	addiu	sp,sp,-152
    baf0:	afbf003c 	sw	ra,60(sp)
    baf4:	afb00038 	sw	s0,56(sp)
    baf8:	afa40098 	sw	a0,152(sp)
    bafc:	afa5009c 	sw	a1,156(sp)
    bb00:	8ca50000 	lw	a1,0(a1)
    bb04:	3c060000 	lui	a2,0x0
    bb08:	24c60000 	addiu	a2,a2,0
    bb0c:	27a40080 	addiu	a0,sp,128
    bb10:	24071d7a 	li	a3,7546
    bb14:	0c000000 	jal	0 <func_80938CD0>
    bb18:	00a08025 	move	s0,a1
    bb1c:	8faf009c 	lw	t7,156(sp)
    bb20:	0c000000 	jal	0 <func_80938CD0>
    bb24:	8de40000 	lw	a0,0(t7)
    bb28:	8e0202d0 	lw	v0,720(s0)
    bb2c:	3c19db06 	lui	t9,0xdb06
    bb30:	37390020 	ori	t9,t9,0x20
    bb34:	24580008 	addiu	t8,v0,8
    bb38:	ae1802d0 	sw	t8,720(s0)
    bb3c:	ac590000 	sw	t9,0(v0)
    bb40:	8faa0098 	lw	t2,152(sp)
    bb44:	8fa9009c 	lw	t1,156(sp)
    bb48:	240b0020 	li	t3,32
    bb4c:	85470150 	lh	a3,336(t2)
    bb50:	8d240000 	lw	a0,0(t1)
    bb54:	240c0040 	li	t4,64
    bb58:	00073823 	negu	a3,a3
    bb5c:	00e00821 	move	at,a3
    bb60:	00073900 	sll	a3,a3,0x4
    bb64:	240d0001 	li	t5,1
    bb68:	240e0040 	li	t6,64
    bb6c:	240f0040 	li	t7,64
    bb70:	afaf0028 	sw	t7,40(sp)
    bb74:	afae0024 	sw	t6,36(sp)
    bb78:	afad0018 	sw	t5,24(sp)
    bb7c:	00e13823 	subu	a3,a3,at
    bb80:	afac0014 	sw	t4,20(sp)
    bb84:	afa00020 	sw	zero,32(sp)
    bb88:	afa0001c 	sw	zero,28(sp)
    bb8c:	afab0010 	sw	t3,16(sp)
    bb90:	00002825 	move	a1,zero
    bb94:	00003025 	move	a2,zero
    bb98:	0c000000 	jal	0 <func_80938CD0>
    bb9c:	afa2007c 	sw	v0,124(sp)
    bba0:	8fa3007c 	lw	v1,124(sp)
    bba4:	0c000000 	jal	0 <func_80938CD0>
    bba8:	ac620004 	sw	v0,4(v1)
    bbac:	3c014368 	lui	at,0x4368
    bbb0:	44817000 	mtc1	at,$f14
    bbb4:	44806000 	mtc1	zero,$f12
    bbb8:	3c06c416 	lui	a2,0xc416
    bbbc:	0c000000 	jal	0 <func_80938CD0>
    bbc0:	00003825 	move	a3,zero
    bbc4:	8fb80098 	lw	t8,152(sp)
    bbc8:	24070001 	li	a3,1
    bbcc:	c70c04e0 	lwc1	$f12,1248(t8)
    bbd0:	44066000 	mfc1	a2,$f12
    bbd4:	0c000000 	jal	0 <func_80938CD0>
    bbd8:	46006386 	mov.s	$f14,$f12
    bbdc:	8e0202d0 	lw	v0,720(s0)
    bbe0:	3c09fa00 	lui	t1,0xfa00
    bbe4:	3c050000 	lui	a1,0x0
    bbe8:	24590008 	addiu	t9,v0,8
    bbec:	ae1902d0 	sw	t9,720(s0)
    bbf0:	ac490000 	sw	t1,0(v0)
    bbf4:	8faa0098 	lw	t2,152(sp)
    bbf8:	3c19da38 	lui	t9,0xda38
    bbfc:	37390003 	ori	t9,t9,0x3
    bc00:	c54404d8 	lwc1	$f4,1240(t2)
    bc04:	24a50000 	addiu	a1,a1,0
    bc08:	24061d9e 	li	a2,7582
    bc0c:	4600218d 	trunc.w.s	$f6,$f4
    bc10:	440e3000 	mfc1	t6,$f6
    bc14:	00000000 	nop
    bc18:	31cf00ff 	andi	t7,t6,0xff
    bc1c:	ac4f0004 	sw	t7,4(v0)
    bc20:	8e0202d0 	lw	v0,720(s0)
    bc24:	24580008 	addiu	t8,v0,8
    bc28:	ae1802d0 	sw	t8,720(s0)
    bc2c:	ac590000 	sw	t9,0(v0)
    bc30:	8fa9009c 	lw	t1,156(sp)
    bc34:	8d240000 	lw	a0,0(t1)
    bc38:	0c000000 	jal	0 <func_80938CD0>
    bc3c:	afa20074 	sw	v0,116(sp)
    bc40:	8fa30074 	lw	v1,116(sp)
    bc44:	3c040602 	lui	a0,0x602
    bc48:	2484ec68 	addiu	a0,a0,-5016
    bc4c:	ac620004 	sw	v0,4(v1)
    bc50:	8e0202d0 	lw	v0,720(s0)
    bc54:	00046100 	sll	t4,a0,0x4
    bc58:	000c6f02 	srl	t5,t4,0x1c
    bc5c:	3c0f0000 	lui	t7,0x0
    bc60:	244a0008 	addiu	t2,v0,8
    bc64:	ae0a02d0 	sw	t2,720(s0)
    bc68:	25ef0000 	addiu	t7,t7,0
    bc6c:	000d7080 	sll	t6,t5,0x2
    bc70:	3c0bde00 	lui	t3,0xde00
    bc74:	01cf2821 	addu	a1,t6,t7
    bc78:	3c0100ff 	lui	at,0xff
    bc7c:	ac4b0000 	sw	t3,0(v0)
    bc80:	8cb80000 	lw	t8,0(a1)
    bc84:	3421ffff 	ori	at,at,0xffff
    bc88:	00814024 	and	t0,a0,at
    bc8c:	3c018000 	lui	at,0x8000
    bc90:	0308c821 	addu	t9,t8,t0
    bc94:	03214821 	addu	t1,t9,at
    bc98:	ac490004 	sw	t1,4(v0)
    bc9c:	8e0202d0 	lw	v0,720(s0)
    bca0:	3c0bfa00 	lui	t3,0xfa00
    bca4:	3c0187af 	lui	at,0x87af
    bca8:	244a0008 	addiu	t2,v0,8
    bcac:	ae0a02d0 	sw	t2,720(s0)
    bcb0:	ac4b0000 	sw	t3,0(v0)
    bcb4:	8fac0098 	lw	t4,152(sp)
    bcb8:	44806000 	mtc1	zero,$f12
    bcbc:	3421a500 	ori	at,at,0xa500
    bcc0:	c58804d8 	lwc1	$f8,1240(t4)
    bcc4:	44066000 	mfc1	a2,$f12
    bcc8:	24070001 	li	a3,1
    bccc:	4600428d 	trunc.w.s	$f10,$f8
    bcd0:	44185000 	mfc1	t8,$f10
    bcd4:	00000000 	nop
    bcd8:	331900ff 	andi	t9,t8,0xff
    bcdc:	03214825 	or	t1,t9,at
    bce0:	3c014000 	lui	at,0x4000
    bce4:	44817000 	mtc1	at,$f14
    bce8:	ac490004 	sw	t1,4(v0)
    bcec:	afa80044 	sw	t0,68(sp)
    bcf0:	0c000000 	jal	0 <func_80938CD0>
    bcf4:	afa50048 	sw	a1,72(sp)
    bcf8:	3c010000 	lui	at,0x0
    bcfc:	c42c0000 	lwc1	$f12,0(at)
    bd00:	0c000000 	jal	0 <func_80938CD0>
    bd04:	24050001 	li	a1,1
    bd08:	8e0202d0 	lw	v0,720(s0)
    bd0c:	3c0bda38 	lui	t3,0xda38
    bd10:	356b0003 	ori	t3,t3,0x3
    bd14:	244a0008 	addiu	t2,v0,8
    bd18:	ae0a02d0 	sw	t2,720(s0)
    bd1c:	ac4b0000 	sw	t3,0(v0)
    bd20:	8fac009c 	lw	t4,156(sp)
    bd24:	3c050000 	lui	a1,0x0
    bd28:	24a50000 	addiu	a1,a1,0
    bd2c:	8d840000 	lw	a0,0(t4)
    bd30:	24061dac 	li	a2,7596
    bd34:	0c000000 	jal	0 <func_80938CD0>
    bd38:	afa20068 	sw	v0,104(sp)
    bd3c:	8fa30068 	lw	v1,104(sp)
    bd40:	3c040602 	lui	a0,0x602
    bd44:	2484cee0 	addiu	a0,a0,-12576
    bd48:	ac620004 	sw	v0,4(v1)
    bd4c:	8e0202d0 	lw	v0,720(s0)
    bd50:	00047900 	sll	t7,a0,0x4
    bd54:	000fc702 	srl	t8,t7,0x1c
    bd58:	244d0008 	addiu	t5,v0,8
    bd5c:	ae0d02d0 	sw	t5,720(s0)
    bd60:	0018c880 	sll	t9,t8,0x2
    bd64:	3c0ede00 	lui	t6,0xde00
    bd68:	3c090000 	lui	t1,0x0
    bd6c:	01394821 	addu	t1,t1,t9
    bd70:	3c0100ff 	lui	at,0xff
    bd74:	ac4e0000 	sw	t6,0(v0)
    bd78:	8d290000 	lw	t1,0(t1)
    bd7c:	3421ffff 	ori	at,at,0xffff
    bd80:	00815024 	and	t2,a0,at
    bd84:	3c018000 	lui	at,0x8000
    bd88:	012a5821 	addu	t3,t1,t2
    bd8c:	01616021 	addu	t4,t3,at
    bd90:	3c014368 	lui	at,0x4368
    bd94:	44817000 	mtc1	at,$f14
    bd98:	44806000 	mtc1	zero,$f12
    bd9c:	3c064416 	lui	a2,0x4416
    bda0:	00003825 	move	a3,zero
    bda4:	0c000000 	jal	0 <func_80938CD0>
    bda8:	ac4c0004 	sw	t4,4(v0)
    bdac:	8fad0098 	lw	t5,152(sp)
    bdb0:	24070001 	li	a3,1
    bdb4:	c5ac04e0 	lwc1	$f12,1248(t5)
    bdb8:	44066000 	mfc1	a2,$f12
    bdbc:	0c000000 	jal	0 <func_80938CD0>
    bdc0:	46006386 	mov.s	$f14,$f12
    bdc4:	8e0202d0 	lw	v0,720(s0)
    bdc8:	3c0ffa00 	lui	t7,0xfa00
    bdcc:	3c050000 	lui	a1,0x0
    bdd0:	244e0008 	addiu	t6,v0,8
    bdd4:	ae0e02d0 	sw	t6,720(s0)
    bdd8:	ac4f0000 	sw	t7,0(v0)
    bddc:	8fb80098 	lw	t8,152(sp)
    bde0:	3c0eda38 	lui	t6,0xda38
    bde4:	35ce0003 	ori	t6,t6,0x3
    bde8:	c71004d8 	lwc1	$f16,1240(t8)
    bdec:	24a50000 	addiu	a1,a1,0
    bdf0:	24061dc1 	li	a2,7617
    bdf4:	4600848d 	trunc.w.s	$f18,$f16
    bdf8:	440b9000 	mfc1	t3,$f18
    bdfc:	00000000 	nop
    be00:	316c00ff 	andi	t4,t3,0xff
    be04:	ac4c0004 	sw	t4,4(v0)
    be08:	8e0202d0 	lw	v0,720(s0)
    be0c:	244d0008 	addiu	t5,v0,8
    be10:	ae0d02d0 	sw	t5,720(s0)
    be14:	ac4e0000 	sw	t6,0(v0)
    be18:	8faf009c 	lw	t7,156(sp)
    be1c:	8de40000 	lw	a0,0(t7)
    be20:	0c000000 	jal	0 <func_80938CD0>
    be24:	afa2005c 	sw	v0,92(sp)
    be28:	8fa3005c 	lw	v1,92(sp)
    be2c:	3c19de00 	lui	t9,0xde00
    be30:	3c018000 	lui	at,0x8000
    be34:	ac620004 	sw	v0,4(v1)
    be38:	8e0202d0 	lw	v0,720(s0)
    be3c:	3c0ffa00 	lui	t7,0xfa00
    be40:	44806000 	mtc1	zero,$f12
    be44:	24580008 	addiu	t8,v0,8
    be48:	ae1802d0 	sw	t8,720(s0)
    be4c:	ac590000 	sw	t9,0(v0)
    be50:	8fa90048 	lw	t1,72(sp)
    be54:	8fab0044 	lw	t3,68(sp)
    be58:	24060000 	li	a2,0
    be5c:	8d2a0000 	lw	t2,0(t1)
    be60:	24070001 	li	a3,1
    be64:	014b6021 	addu	t4,t2,t3
    be68:	01816821 	addu	t5,t4,at
    be6c:	ac4d0004 	sw	t5,4(v0)
    be70:	8e0202d0 	lw	v0,720(s0)
    be74:	3c01ffff 	lui	at,0xffff
    be78:	244e0008 	addiu	t6,v0,8
    be7c:	ae0e02d0 	sw	t6,720(s0)
    be80:	ac4f0000 	sw	t7,0(v0)
    be84:	8fb80098 	lw	t8,152(sp)
    be88:	c70404d8 	lwc1	$f4,1240(t8)
    be8c:	4600218d 	trunc.w.s	$f6,$f4
    be90:	440b3000 	mfc1	t3,$f6
    be94:	00000000 	nop
    be98:	316c00ff 	andi	t4,t3,0xff
    be9c:	01816825 	or	t5,t4,at
    bea0:	3c014000 	lui	at,0x4000
    bea4:	44817000 	mtc1	at,$f14
    bea8:	0c000000 	jal	0 <func_80938CD0>
    beac:	ac4d0004 	sw	t5,4(v0)
    beb0:	3c010000 	lui	at,0x0
    beb4:	c42c0000 	lwc1	$f12,0(at)
    beb8:	0c000000 	jal	0 <func_80938CD0>
    bebc:	24050001 	li	a1,1
    bec0:	8e0202d0 	lw	v0,720(s0)
    bec4:	3c0fda38 	lui	t7,0xda38
    bec8:	35ef0003 	ori	t7,t7,0x3
    becc:	244e0008 	addiu	t6,v0,8
    bed0:	ae0e02d0 	sw	t6,720(s0)
    bed4:	ac4f0000 	sw	t7,0(v0)
    bed8:	8fb8009c 	lw	t8,156(sp)
    bedc:	3c050000 	lui	a1,0x0
    bee0:	24a50000 	addiu	a1,a1,0
    bee4:	8f040000 	lw	a0,0(t8)
    bee8:	24061dcf 	li	a2,7631
    beec:	0c000000 	jal	0 <func_80938CD0>
    bef0:	afa20050 	sw	v0,80(sp)
    bef4:	8fa30050 	lw	v1,80(sp)
    bef8:	3c040602 	lui	a0,0x602
    befc:	2484dbe8 	addiu	a0,a0,-9240
    bf00:	ac620004 	sw	v0,4(v1)
    bf04:	8e0202d0 	lw	v0,720(s0)
    bf08:	00045100 	sll	t2,a0,0x4
    bf0c:	000a5f02 	srl	t3,t2,0x1c
    bf10:	24590008 	addiu	t9,v0,8
    bf14:	ae1902d0 	sw	t9,720(s0)
    bf18:	000b6080 	sll	t4,t3,0x2
    bf1c:	3c09de00 	lui	t1,0xde00
    bf20:	3c0d0000 	lui	t5,0x0
    bf24:	01ac6821 	addu	t5,t5,t4
    bf28:	3c0100ff 	lui	at,0xff
    bf2c:	ac490000 	sw	t1,0(v0)
    bf30:	8dad0000 	lw	t5,0(t5)
    bf34:	3421ffff 	ori	at,at,0xffff
    bf38:	00817024 	and	t6,a0,at
    bf3c:	3c018000 	lui	at,0x8000
    bf40:	01ae7821 	addu	t7,t5,t6
    bf44:	01e1c021 	addu	t8,t7,at
    bf48:	0c000000 	jal	0 <func_80938CD0>
    bf4c:	ac580004 	sw	t8,4(v0)
    bf50:	8fb9009c 	lw	t9,156(sp)
    bf54:	3c060000 	lui	a2,0x0
    bf58:	24c60000 	addiu	a2,a2,0
    bf5c:	27a40080 	addiu	a0,sp,128
    bf60:	24071dd3 	li	a3,7635
    bf64:	0c000000 	jal	0 <func_80938CD0>
    bf68:	8f250000 	lw	a1,0(t9)
    bf6c:	8fbf003c 	lw	ra,60(sp)
    bf70:	8fb00038 	lw	s0,56(sp)
    bf74:	27bd0098 	addiu	sp,sp,152
    bf78:	03e00008 	jr	ra
    bf7c:	00000000 	nop

0000bf80 <func_80944C50>:
    bf80:	27bdff78 	addiu	sp,sp,-136
    bf84:	afbf003c 	sw	ra,60(sp)
    bf88:	afb00038 	sw	s0,56(sp)
    bf8c:	afa40088 	sw	a0,136(sp)
    bf90:	afa5008c 	sw	a1,140(sp)
    bf94:	8ca50000 	lw	a1,0(a1)
    bf98:	3c060000 	lui	a2,0x0
    bf9c:	24c60000 	addiu	a2,a2,0
    bfa0:	27a4006c 	addiu	a0,sp,108
    bfa4:	24071ddd 	li	a3,7645
    bfa8:	0c000000 	jal	0 <func_80938CD0>
    bfac:	00a08025 	move	s0,a1
    bfb0:	0c000000 	jal	0 <func_80938CD0>
    bfb4:	00000000 	nop
    bfb8:	44806000 	mtc1	zero,$f12
    bfbc:	3c010000 	lui	at,0x0
    bfc0:	c42e0000 	lwc1	$f14,0(at)
    bfc4:	44066000 	mfc1	a2,$f12
    bfc8:	0c000000 	jal	0 <func_80938CD0>
    bfcc:	00003825 	move	a3,zero
    bfd0:	3c010000 	lui	at,0x0
    bfd4:	c42c0000 	lwc1	$f12,0(at)
    bfd8:	24070001 	li	a3,1
    bfdc:	44066000 	mfc1	a2,$f12
    bfe0:	0c000000 	jal	0 <func_80938CD0>
    bfe4:	46006386 	mov.s	$f14,$f12
    bfe8:	0c000000 	jal	0 <func_80938CD0>
    bfec:	00000000 	nop
    bff0:	8faf0088 	lw	t7,136(sp)
    bff4:	24070001 	li	a3,1
    bff8:	c5ec01d0 	lwc1	$f12,464(t7)
    bffc:	44066000 	mfc1	a2,$f12
    c000:	0c000000 	jal	0 <func_80938CD0>
    c004:	46006386 	mov.s	$f14,$f12
    c008:	8e0202d0 	lw	v0,720(s0)
    c00c:	3c19da38 	lui	t9,0xda38
    c010:	37390003 	ori	t9,t9,0x3
    c014:	24580008 	addiu	t8,v0,8
    c018:	ae1802d0 	sw	t8,720(s0)
    c01c:	ac590000 	sw	t9,0(v0)
    c020:	8fa9008c 	lw	t1,140(sp)
    c024:	3c050000 	lui	a1,0x0
    c028:	24a50000 	addiu	a1,a1,0
    c02c:	8d240000 	lw	a0,0(t1)
    c030:	24061df7 	li	a2,7671
    c034:	0c000000 	jal	0 <func_80938CD0>
    c038:	afa20068 	sw	v0,104(sp)
    c03c:	8fa30068 	lw	v1,104(sp)
    c040:	3c040602 	lui	a0,0x602
    c044:	2484f390 	addiu	a0,a0,-3184
    c048:	ac620004 	sw	v0,4(v1)
    c04c:	8e0202d0 	lw	v0,720(s0)
    c050:	00046100 	sll	t4,a0,0x4
    c054:	000c6f02 	srl	t5,t4,0x1c
    c058:	244a0008 	addiu	t2,v0,8
    c05c:	ae0a02d0 	sw	t2,720(s0)
    c060:	000d7080 	sll	t6,t5,0x2
    c064:	3c0bde00 	lui	t3,0xde00
    c068:	3c0f0000 	lui	t7,0x0
    c06c:	01ee7821 	addu	t7,t7,t6
    c070:	3c0100ff 	lui	at,0xff
    c074:	ac4b0000 	sw	t3,0(v0)
    c078:	8def0000 	lw	t7,0(t7)
    c07c:	3421ffff 	ori	at,at,0xffff
    c080:	0081c024 	and	t8,a0,at
    c084:	3c018000 	lui	at,0x8000
    c088:	01f8c821 	addu	t9,t7,t8
    c08c:	03214821 	addu	t1,t9,at
    c090:	0c000000 	jal	0 <func_80938CD0>
    c094:	ac490004 	sw	t1,4(v0)
    c098:	8e0202d0 	lw	v0,720(s0)
    c09c:	3c0bdb06 	lui	t3,0xdb06
    c0a0:	356b0020 	ori	t3,t3,0x20
    c0a4:	244a0008 	addiu	t2,v0,8
    c0a8:	ae0a02d0 	sw	t2,720(s0)
    c0ac:	3c0d0000 	lui	t5,0x0
    c0b0:	ac4b0000 	sw	t3,0(v0)
    c0b4:	8dad0000 	lw	t5,0(t5)
    c0b8:	8fac008c 	lw	t4,140(sp)
    c0bc:	240e0020 	li	t6,32
    c0c0:	85a60150 	lh	a2,336(t5)
    c0c4:	8d840000 	lw	a0,0(t4)
    c0c8:	240f0020 	li	t7,32
    c0cc:	00063023 	negu	a2,a2
    c0d0:	00063040 	sll	a2,a2,0x1
    c0d4:	24180001 	li	t8,1
    c0d8:	24190020 	li	t9,32
    c0dc:	24090040 	li	t1,64
    c0e0:	afa90028 	sw	t1,40(sp)
    c0e4:	afb90024 	sw	t9,36(sp)
    c0e8:	afb80018 	sw	t8,24(sp)
    c0ec:	afa6001c 	sw	a2,28(sp)
    c0f0:	afaf0014 	sw	t7,20(sp)
    c0f4:	afa00020 	sw	zero,32(sp)
    c0f8:	afae0010 	sw	t6,16(sp)
    c0fc:	00002825 	move	a1,zero
    c100:	00003825 	move	a3,zero
    c104:	0c000000 	jal	0 <func_80938CD0>
    c108:	afa20060 	sw	v0,96(sp)
    c10c:	8fa30060 	lw	v1,96(sp)
    c110:	3c0bfa00 	lui	t3,0xfa00
    c114:	3c050000 	lui	a1,0x0
    c118:	ac620004 	sw	v0,4(v1)
    c11c:	8e0202d0 	lw	v0,720(s0)
    c120:	24a50000 	addiu	a1,a1,0
    c124:	24061e0e 	li	a2,7694
    c128:	244a0008 	addiu	t2,v0,8
    c12c:	ae0a02d0 	sw	t2,720(s0)
    c130:	ac4b0000 	sw	t3,0(v0)
    c134:	8fac0088 	lw	t4,136(sp)
    c138:	00401825 	move	v1,v0
    c13c:	c58401cc 	lwc1	$f4,460(t4)
    c140:	3c0cda38 	lui	t4,0xda38
    c144:	358c0003 	ori	t4,t4,0x3
    c148:	4600218d 	trunc.w.s	$f6,$f4
    c14c:	440e3000 	mfc1	t6,$f6
    c150:	00000000 	nop
    c154:	000e7c00 	sll	t7,t6,0x10
    c158:	000fc403 	sra	t8,t7,0x10
    c15c:	07010003 	bgez	t8,c16c <func_80944C50+0x1ec>
    c160:	0018c843 	sra	t9,t8,0x1
    c164:	27010001 	addiu	at,t8,1
    c168:	0001c843 	sra	t9,at,0x1
    c16c:	2401ff00 	li	at,-256
    c170:	332900ff 	andi	t1,t9,0xff
    c174:	01215025 	or	t2,t1,at
    c178:	ac6a0004 	sw	t2,4(v1)
    c17c:	8e0202d0 	lw	v0,720(s0)
    c180:	244b0008 	addiu	t3,v0,8
    c184:	ae0b02d0 	sw	t3,720(s0)
    c188:	ac4c0000 	sw	t4,0(v0)
    c18c:	8fad008c 	lw	t5,140(sp)
    c190:	8da40000 	lw	a0,0(t5)
    c194:	0c000000 	jal	0 <func_80938CD0>
    c198:	afa20058 	sw	v0,88(sp)
    c19c:	8fa30058 	lw	v1,88(sp)
    c1a0:	3c040602 	lui	a0,0x602
    c1a4:	2484f238 	addiu	a0,a0,-3528
    c1a8:	ac620004 	sw	v0,4(v1)
    c1ac:	8e0202d0 	lw	v0,720(s0)
    c1b0:	0004c100 	sll	t8,a0,0x4
    c1b4:	0018cf02 	srl	t9,t8,0x1c
    c1b8:	244e0008 	addiu	t6,v0,8
    c1bc:	ae0e02d0 	sw	t6,720(s0)
    c1c0:	00194880 	sll	t1,t9,0x2
    c1c4:	3c0fde00 	lui	t7,0xde00
    c1c8:	3c0a0000 	lui	t2,0x0
    c1cc:	01495021 	addu	t2,t2,t1
    c1d0:	3c0100ff 	lui	at,0xff
    c1d4:	ac4f0000 	sw	t7,0(v0)
    c1d8:	8d4a0000 	lw	t2,0(t2)
    c1dc:	3421ffff 	ori	at,at,0xffff
    c1e0:	00815824 	and	t3,a0,at
    c1e4:	3c018000 	lui	at,0x8000
    c1e8:	014b6021 	addu	t4,t2,t3
    c1ec:	01816821 	addu	t5,t4,at
    c1f0:	ac4d0004 	sw	t5,4(v0)
    c1f4:	8e0202d0 	lw	v0,720(s0)
    c1f8:	3c0fdb06 	lui	t7,0xdb06
    c1fc:	35ef0020 	ori	t7,t7,0x20
    c200:	244e0008 	addiu	t6,v0,8
    c204:	ae0e02d0 	sw	t6,720(s0)
    c208:	3c190000 	lui	t9,0x0
    c20c:	ac4f0000 	sw	t7,0(v0)
    c210:	8f390000 	lw	t9,0(t9)
    c214:	8fb8008c 	lw	t8,140(sp)
    c218:	240d0010 	li	t5,16
    c21c:	87230150 	lh	v1,336(t9)
    c220:	8f040000 	lw	a0,0(t8)
    c224:	240c0010 	li	t4,16
    c228:	00031823 	negu	v1,v1
    c22c:	00033080 	sll	a2,v1,0x2
    c230:	00033840 	sll	a3,v1,0x1
    c234:	240b0001 	li	t3,1
    c238:	240a0040 	li	t2,64
    c23c:	24090020 	li	t1,32
    c240:	afa90010 	sw	t1,16(sp)
    c244:	afaa0014 	sw	t2,20(sp)
    c248:	afab0018 	sw	t3,24(sp)
    c24c:	afa70020 	sw	a3,32(sp)
    c250:	00c33021 	addu	a2,a2,v1
    c254:	afac0024 	sw	t4,36(sp)
    c258:	afad0028 	sw	t5,40(sp)
    c25c:	afa0001c 	sw	zero,28(sp)
    c260:	00002825 	move	a1,zero
    c264:	0c000000 	jal	0 <func_80938CD0>
    c268:	afa20050 	sw	v0,80(sp)
    c26c:	8fa80050 	lw	t0,80(sp)
    c270:	3c0ffa00 	lui	t7,0xfa00
    c274:	3c010000 	lui	at,0x0
    c278:	ad020004 	sw	v0,4(t0)
    c27c:	8e0202d0 	lw	v0,720(s0)
    c280:	244e0008 	addiu	t6,v0,8
    c284:	ae0e02d0 	sw	t6,720(s0)
    c288:	ac4f0000 	sw	t7,0(v0)
    c28c:	8fb80088 	lw	t8,136(sp)
    c290:	c42a0000 	lwc1	$f10,0(at)
    c294:	2401ff00 	li	at,-256
    c298:	c70801cc 	lwc1	$f8,460(t8)
    c29c:	460a4402 	mul.s	$f16,$f8,$f10
    c2a0:	4600848d 	trunc.w.s	$f18,$f16
    c2a4:	440b9000 	mfc1	t3,$f18
    c2a8:	00000000 	nop
    c2ac:	316c00ff 	andi	t4,t3,0xff
    c2b0:	01816825 	or	t5,t4,at
    c2b4:	ac4d0004 	sw	t5,4(v0)
    c2b8:	8fae0088 	lw	t6,136(sp)
    c2bc:	3c013f80 	lui	at,0x3f80
    c2c0:	44817000 	mtc1	at,$f14
    c2c4:	3c014316 	lui	at,0x4316
    c2c8:	44813000 	mtc1	at,$f6
    c2cc:	c5c401cc 	lwc1	$f4,460(t6)
    c2d0:	46062303 	div.s	$f12,$f4,$f6
    c2d4:	460c703c 	c.lt.s	$f14,$f12
    c2d8:	00000000 	nop
    c2dc:	45020003 	bc1fl	c2ec <func_80944C50+0x36c>
    c2e0:	44066000 	mfc1	a2,$f12
    c2e4:	46007306 	mov.s	$f12,$f14
    c2e8:	44066000 	mfc1	a2,$f12
    c2ec:	0c000000 	jal	0 <func_80938CD0>
    c2f0:	24070001 	li	a3,1
    c2f4:	8e0202d0 	lw	v0,720(s0)
    c2f8:	3c18da38 	lui	t8,0xda38
    c2fc:	37180003 	ori	t8,t8,0x3
    c300:	244f0008 	addiu	t7,v0,8
    c304:	ae0f02d0 	sw	t7,720(s0)
    c308:	ac580000 	sw	t8,0(v0)
    c30c:	8fb9008c 	lw	t9,140(sp)
    c310:	3c050000 	lui	a1,0x0
    c314:	24a50000 	addiu	a1,a1,0
    c318:	8f240000 	lw	a0,0(t9)
    c31c:	24061e30 	li	a2,7728
    c320:	0c000000 	jal	0 <func_80938CD0>
    c324:	afa20048 	sw	v0,72(sp)
    c328:	8fa30048 	lw	v1,72(sp)
    c32c:	3c040602 	lui	a0,0x602
    c330:	2484eeb0 	addiu	a0,a0,-4432
    c334:	ac620004 	sw	v0,4(v1)
    c338:	8e0202d0 	lw	v0,720(s0)
    c33c:	00045900 	sll	t3,a0,0x4
    c340:	000b6702 	srl	t4,t3,0x1c
    c344:	24490008 	addiu	t1,v0,8
    c348:	ae0902d0 	sw	t1,720(s0)
    c34c:	000c6880 	sll	t5,t4,0x2
    c350:	3c0ade00 	lui	t2,0xde00
    c354:	3c0e0000 	lui	t6,0x0
    c358:	01cd7021 	addu	t6,t6,t5
    c35c:	3c0100ff 	lui	at,0xff
    c360:	ac4a0000 	sw	t2,0(v0)
    c364:	8dce0000 	lw	t6,0(t6)
    c368:	3421ffff 	ori	at,at,0xffff
    c36c:	00817824 	and	t7,a0,at
    c370:	3c018000 	lui	at,0x8000
    c374:	01cfc021 	addu	t8,t6,t7
    c378:	0301c821 	addu	t9,t8,at
    c37c:	0c000000 	jal	0 <func_80938CD0>
    c380:	ac590004 	sw	t9,4(v0)
    c384:	8fa9008c 	lw	t1,140(sp)
    c388:	3c060000 	lui	a2,0x0
    c38c:	24c60000 	addiu	a2,a2,0
    c390:	27a4006c 	addiu	a0,sp,108
    c394:	24071e34 	li	a3,7732
    c398:	0c000000 	jal	0 <func_80938CD0>
    c39c:	8d250000 	lw	a1,0(t1)
    c3a0:	8fbf003c 	lw	ra,60(sp)
    c3a4:	8fb00038 	lw	s0,56(sp)
    c3a8:	27bd0088 	addiu	sp,sp,136
    c3ac:	03e00008 	jr	ra
    c3b0:	00000000 	nop

0000c3b4 <func_80945084>:
    c3b4:	27bdffa8 	addiu	sp,sp,-88
    c3b8:	afb1002c 	sw	s1,44(sp)
    c3bc:	00a08825 	move	s1,a1
    c3c0:	afbf0034 	sw	ra,52(sp)
    c3c4:	afb20030 	sw	s2,48(sp)
    c3c8:	afb00028 	sw	s0,40(sp)
    c3cc:	8ca50000 	lw	a1,0(a1)
    c3d0:	00808025 	move	s0,a0
    c3d4:	3c060000 	lui	a2,0x0
    c3d8:	24c60000 	addiu	a2,a2,0
    c3dc:	27a4003c 	addiu	a0,sp,60
    c3e0:	24071e44 	li	a3,7748
    c3e4:	0c000000 	jal	0 <func_80938CD0>
    c3e8:	00a09025 	move	s2,a1
    c3ec:	920e0564 	lbu	t6,1380(s0)
    c3f0:	11c000a7 	beqz	t6,c690 <func_80945084+0x2dc>
    c3f4:	00000000 	nop
    c3f8:	0c000000 	jal	0 <func_80938CD0>
    c3fc:	8e240000 	lw	a0,0(s1)
    c400:	0c000000 	jal	0 <func_80938CD0>
    c404:	8e240000 	lw	a0,0(s1)
    c408:	860f015c 	lh	t7,348(s0)
    c40c:	24050001 	li	a1,1
    c410:	31f80002 	andi	t8,t7,0x2
    c414:	5300000e 	beqzl	t8,c450 <func_80945084+0x9c>
    c418:	4449f800 	cfc1	t1,$31
    c41c:	8e4402c0 	lw	a0,704(s2)
    c420:	24190384 	li	t9,900
    c424:	2408044b 	li	t0,1099
    c428:	afa80018 	sw	t0,24(sp)
    c42c:	afb90014 	sw	t9,20(sp)
    c430:	afa00010 	sw	zero,16(sp)
    c434:	240500ff 	li	a1,255
    c438:	24060032 	li	a2,50
    c43c:	0c000000 	jal	0 <func_80938CD0>
    c440:	00003825 	move	a3,zero
    c444:	10000073 	b	c614 <func_80945084+0x260>
    c448:	ae4202c0 	sw	v0,704(s2)
    c44c:	4449f800 	cfc1	t1,$31
    c450:	44c5f800 	ctc1	a1,$31
    c454:	c60401d4 	lwc1	$f4,468(s0)
    c458:	8e4402c0 	lw	a0,704(s2)
    c45c:	3c014f00 	lui	at,0x4f00
    c460:	460021a4 	cvt.w.s	$f6,$f4
    c464:	4445f800 	cfc1	a1,$31
    c468:	00000000 	nop
    c46c:	30a50078 	andi	a1,a1,0x78
    c470:	50a00013 	beqzl	a1,c4c0 <func_80945084+0x10c>
    c474:	44053000 	mfc1	a1,$f6
    c478:	44813000 	mtc1	at,$f6
    c47c:	24050001 	li	a1,1
    c480:	46062181 	sub.s	$f6,$f4,$f6
    c484:	44c5f800 	ctc1	a1,$31
    c488:	00000000 	nop
    c48c:	460031a4 	cvt.w.s	$f6,$f6
    c490:	4445f800 	cfc1	a1,$31
    c494:	00000000 	nop
    c498:	30a50078 	andi	a1,a1,0x78
    c49c:	14a00005 	bnez	a1,c4b4 <func_80945084+0x100>
    c4a0:	00000000 	nop
    c4a4:	44053000 	mfc1	a1,$f6
    c4a8:	3c018000 	lui	at,0x8000
    c4ac:	10000007 	b	c4cc <func_80945084+0x118>
    c4b0:	00a12825 	or	a1,a1,at
    c4b4:	10000005 	b	c4cc <func_80945084+0x118>
    c4b8:	2405ffff 	li	a1,-1
    c4bc:	44053000 	mfc1	a1,$f6
    c4c0:	00000000 	nop
    c4c4:	04a0fffb 	bltz	a1,c4b4 <func_80945084+0x100>
    c4c8:	00000000 	nop
    c4cc:	44c9f800 	ctc1	t1,$31
    c4d0:	24060001 	li	a2,1
    c4d4:	c60801d8 	lwc1	$f8,472(s0)
    c4d8:	3c014f00 	lui	at,0x4f00
    c4dc:	444af800 	cfc1	t2,$31
    c4e0:	44c6f800 	ctc1	a2,$31
    c4e4:	00000000 	nop
    c4e8:	460042a4 	cvt.w.s	$f10,$f8
    c4ec:	4446f800 	cfc1	a2,$31
    c4f0:	00000000 	nop
    c4f4:	30c60078 	andi	a2,a2,0x78
    c4f8:	50c00013 	beqzl	a2,c548 <func_80945084+0x194>
    c4fc:	44065000 	mfc1	a2,$f10
    c500:	44815000 	mtc1	at,$f10
    c504:	24060001 	li	a2,1
    c508:	460a4281 	sub.s	$f10,$f8,$f10
    c50c:	44c6f800 	ctc1	a2,$31
    c510:	00000000 	nop
    c514:	460052a4 	cvt.w.s	$f10,$f10
    c518:	4446f800 	cfc1	a2,$31
    c51c:	00000000 	nop
    c520:	30c60078 	andi	a2,a2,0x78
    c524:	14c00005 	bnez	a2,c53c <func_80945084+0x188>
    c528:	00000000 	nop
    c52c:	44065000 	mfc1	a2,$f10
    c530:	3c018000 	lui	at,0x8000
    c534:	10000007 	b	c554 <func_80945084+0x1a0>
    c538:	00c13025 	or	a2,a2,at
    c53c:	10000005 	b	c554 <func_80945084+0x1a0>
    c540:	2406ffff 	li	a2,-1
    c544:	44065000 	mfc1	a2,$f10
    c548:	00000000 	nop
    c54c:	04c0fffb 	bltz	a2,c53c <func_80945084+0x188>
    c550:	00000000 	nop
    c554:	44caf800 	ctc1	t2,$31
    c558:	24070001 	li	a3,1
    c55c:	c61001dc 	lwc1	$f16,476(s0)
    c560:	3c014f00 	lui	at,0x4f00
    c564:	444bf800 	cfc1	t3,$31
    c568:	44c7f800 	ctc1	a3,$31
    c56c:	00000000 	nop
    c570:	460084a4 	cvt.w.s	$f18,$f16
    c574:	4447f800 	cfc1	a3,$31
    c578:	00000000 	nop
    c57c:	30e70078 	andi	a3,a3,0x78
    c580:	50e00013 	beqzl	a3,c5d0 <func_80945084+0x21c>
    c584:	44079000 	mfc1	a3,$f18
    c588:	44819000 	mtc1	at,$f18
    c58c:	24070001 	li	a3,1
    c590:	46128481 	sub.s	$f18,$f16,$f18
    c594:	44c7f800 	ctc1	a3,$31
    c598:	00000000 	nop
    c59c:	460094a4 	cvt.w.s	$f18,$f18
    c5a0:	4447f800 	cfc1	a3,$31
    c5a4:	00000000 	nop
    c5a8:	30e70078 	andi	a3,a3,0x78
    c5ac:	14e00005 	bnez	a3,c5c4 <func_80945084+0x210>
    c5b0:	00000000 	nop
    c5b4:	44079000 	mfc1	a3,$f18
    c5b8:	3c018000 	lui	at,0x8000
    c5bc:	10000007 	b	c5dc <func_80945084+0x228>
    c5c0:	00e13825 	or	a3,a3,at
    c5c4:	10000005 	b	c5dc <func_80945084+0x228>
    c5c8:	2407ffff 	li	a3,-1
    c5cc:	44079000 	mfc1	a3,$f18
    c5d0:	00000000 	nop
    c5d4:	04e0fffb 	bltz	a3,c5c4 <func_80945084+0x210>
    c5d8:	00000000 	nop
    c5dc:	afa00010 	sw	zero,16(sp)
    c5e0:	c60401e0 	lwc1	$f4,480(s0)
    c5e4:	44cbf800 	ctc1	t3,$31
    c5e8:	00000000 	nop
    c5ec:	4600218d 	trunc.w.s	$f6,$f4
    c5f0:	440d3000 	mfc1	t5,$f6
    c5f4:	00000000 	nop
    c5f8:	afad0014 	sw	t5,20(sp)
    c5fc:	c60801e4 	lwc1	$f8,484(s0)
    c600:	4600428d 	trunc.w.s	$f10,$f8
    c604:	440f5000 	mfc1	t7,$f10
    c608:	0c000000 	jal	0 <func_80938CD0>
    c60c:	afaf0018 	sw	t7,24(sp)
    c610:	ae4202c0 	sw	v0,704(s2)
    c614:	0c000000 	jal	0 <func_80938CD0>
    c618:	00000000 	nop
    c61c:	8e05056c 	lw	a1,1388(s0)
    c620:	8e060588 	lw	a2,1416(s0)
    c624:	9207056a 	lbu	a3,1386(s0)
    c628:	3c180000 	lui	t8,0x0
    c62c:	3c190000 	lui	t9,0x0
    c630:	27390000 	addiu	t9,t9,0
    c634:	27180000 	addiu	t8,t8,0
    c638:	afb80010 	sw	t8,16(sp)
    c63c:	afb90014 	sw	t9,20(sp)
    c640:	afb00018 	sw	s0,24(sp)
    c644:	0c000000 	jal	0 <func_80938CD0>
    c648:	02202025 	move	a0,s1
    c64c:	0c000000 	jal	0 <func_80938CD0>
    c650:	00000000 	nop
    c654:	3c040000 	lui	a0,0x0
    c658:	24840000 	addiu	a0,a0,0
    c65c:	0c000000 	jal	0 <func_80938CD0>
    c660:	2605048c 	addiu	a1,s0,1164
    c664:	8e4402c0 	lw	a0,704(s2)
    c668:	922507af 	lbu	a1,1967(s1)
    c66c:	922607b0 	lbu	a2,1968(s1)
    c670:	922707b1 	lbu	a3,1969(s1)
    c674:	afa00010 	sw	zero,16(sp)
    c678:	862807b2 	lh	t0,1970(s1)
    c67c:	240903e8 	li	t1,1000
    c680:	afa90018 	sw	t1,24(sp)
    c684:	0c000000 	jal	0 <func_80938CD0>
    c688:	afa80014 	sw	t0,20(sp)
    c68c:	ae4202c0 	sw	v0,704(s2)
    c690:	0c000000 	jal	0 <func_80938CD0>
    c694:	02202025 	move	a0,s1
    c698:	02002025 	move	a0,s0
    c69c:	0c000000 	jal	0 <func_80938CD0>
    c6a0:	02202825 	move	a1,s1
    c6a4:	44808000 	mtc1	zero,$f16
    c6a8:	c61204d8 	lwc1	$f18,1240(s0)
    c6ac:	02002025 	move	a0,s0
    c6b0:	4612803c 	c.lt.s	$f16,$f18
    c6b4:	00000000 	nop
    c6b8:	45020004 	bc1fl	c6cc <func_80945084+0x318>
    c6bc:	44802000 	mtc1	zero,$f4
    c6c0:	0c000000 	jal	0 <func_80938CD0>
    c6c4:	02202825 	move	a1,s1
    c6c8:	44802000 	mtc1	zero,$f4
    c6cc:	c60601cc 	lwc1	$f6,460(s0)
    c6d0:	02002025 	move	a0,s0
    c6d4:	4606203c 	c.lt.s	$f4,$f6
    c6d8:	00000000 	nop
    c6dc:	45000003 	bc1f	c6ec <func_80945084+0x338>
    c6e0:	00000000 	nop
    c6e4:	0c000000 	jal	0 <func_80938CD0>
    c6e8:	02202825 	move	a1,s1
    c6ec:	3c060000 	lui	a2,0x0
    c6f0:	24c60000 	addiu	a2,a2,0
    c6f4:	27a4003c 	addiu	a0,sp,60
    c6f8:	8e250000 	lw	a1,0(s1)
    c6fc:	0c000000 	jal	0 <func_80938CD0>
    c700:	24071e7c 	li	a3,7804
    c704:	8fbf0034 	lw	ra,52(sp)
    c708:	8fb00028 	lw	s0,40(sp)
    c70c:	8fb1002c 	lw	s1,44(sp)
    c710:	8fb20030 	lw	s2,48(sp)
    c714:	03e00008 	jr	ra
    c718:	27bd0058 	addiu	sp,sp,88

0000c71c <func_809453EC>:
    c71c:	27bdff30 	addiu	sp,sp,-208
    c720:	afbf0034 	sw	ra,52(sp)
    c724:	afb10030 	sw	s1,48(sp)
    c728:	afb0002c 	sw	s0,44(sp)
    c72c:	f7b40020 	sdc1	$f20,32(sp)
    c730:	afa500d4 	sw	a1,212(sp)
    c734:	8caf1c44 	lw	t7,7236(a1)
    c738:	24010064 	li	at,100
    c73c:	00808825 	move	s1,a0
    c740:	afaf00b8 	sw	t7,184(sp)
    c744:	8482001c 	lh	v0,28(a0)
    c748:	10410005 	beq	v0,at,c760 <func_809453EC+0x44>
    c74c:	24010065 	li	at,101
    c750:	50410196 	beql	v0,at,cdac <func_809453EC+0x690>
    c754:	86220178 	lh	v0,376(s1)
    c758:	10000235 	b	d030 <func_809453EC+0x914>
    c75c:	8fbf0034 	lw	ra,52(sp)
    c760:	86220440 	lh	v0,1088(s1)
    c764:	24010001 	li	at,1
    c768:	02202025 	move	a0,s1
    c76c:	10400009 	beqz	v0,c794 <func_809453EC+0x78>
    c770:	3c053cf5 	lui	a1,0x3cf5
    c774:	1041004b 	beq	v0,at,c8a4 <func_809453EC+0x188>
    c778:	24010002 	li	at,2
    c77c:	1041017d 	beq	v0,at,cd74 <func_809453EC+0x658>
    c780:	2401000a 	li	at,10
    c784:	50410048 	beql	v0,at,c8a8 <func_809453EC+0x18c>
    c788:	86380178 	lh	t8,376(s1)
    c78c:	10000228 	b	d030 <func_809453EC+0x914>
    c790:	8fbf0034 	lw	ra,52(sp)
    c794:	0c000000 	jal	0 <func_80938CD0>
    c798:	34a5c28f 	ori	a1,a1,0xc28f
    c79c:	8fa200b8 	lw	v0,184(sp)
    c7a0:	24180001 	li	t8,1
    c7a4:	a6380440 	sh	t8,1088(s1)
    c7a8:	3c0141f0 	lui	at,0x41f0
    c7ac:	44815000 	mtc1	at,$f10
    c7b0:	c4480028 	lwc1	$f8,40(v0)
    c7b4:	c6260024 	lwc1	$f6,36(s1)
    c7b8:	c4440024 	lwc1	$f4,36(v0)
    c7bc:	460a4400 	add.s	$f16,$f8,$f10
    c7c0:	c6320028 	lwc1	$f18,40(s1)
    c7c4:	46062501 	sub.s	$f20,$f4,$f6
    c7c8:	46128101 	sub.s	$f4,$f16,$f18
    c7cc:	4600a306 	mov.s	$f12,$f20
    c7d0:	e7a400c4 	swc1	$f4,196(sp)
    c7d4:	c628002c 	lwc1	$f8,44(s1)
    c7d8:	c446002c 	lwc1	$f6,44(v0)
    c7dc:	46083381 	sub.s	$f14,$f6,$f8
    c7e0:	0c000000 	jal	0 <func_80938CD0>
    c7e4:	e7ae00c0 	swc1	$f14,192(sp)
    c7e8:	3c010000 	lui	at,0x0
    c7ec:	c42a0000 	lwc1	$f10,0(at)
    c7f0:	c7a200c0 	lwc1	$f2,192(sp)
    c7f4:	460a0402 	mul.s	$f16,$f0,$f10
    c7f8:	00000000 	nop
    c7fc:	4614a102 	mul.s	$f4,$f20,$f20
    c800:	00000000 	nop
    c804:	46021182 	mul.s	$f6,$f2,$f2
    c808:	4600848d 	trunc.w.s	$f18,$f16
    c80c:	46062000 	add.s	$f0,$f4,$f6
    c810:	44089000 	mfc1	t0,$f18
    c814:	00000000 	nop
    c818:	a6280032 	sh	t0,50(s1)
    c81c:	46000384 	sqrt.s	$f14,$f0
    c820:	0c000000 	jal	0 <func_80938CD0>
    c824:	c7ac00c4 	lwc1	$f12,196(sp)
    c828:	3c010000 	lui	at,0x0
    c82c:	c4280000 	lwc1	$f8,0(at)
    c830:	3c0141a0 	lui	at,0x41a0
    c834:	44819000 	mtc1	at,$f18
    c838:	46080282 	mul.s	$f10,$f0,$f8
    c83c:	00008025 	move	s0,zero
    c840:	26220024 	addiu	v0,s1,36
    c844:	e6320068 	swc1	$f18,104(s1)
    c848:	4600540d 	trunc.w.s	$f16,$f10
    c84c:	440a8000 	mfc1	t2,$f16
    c850:	00000000 	nop
    c854:	a62a0030 	sh	t2,48(s1)
    c858:	00105880 	sll	t3,s0,0x2
    c85c:	8c4e0000 	lw	t6,0(v0)
    c860:	01705823 	subu	t3,t3,s0
    c864:	000b5880 	sll	t3,t3,0x2
    c868:	022b6021 	addu	t4,s1,t3
    c86c:	ad8e01e8 	sw	t6,488(t4)
    c870:	8c4d0004 	lw	t5,4(v0)
    c874:	26100001 	addiu	s0,s0,1
    c878:	00108400 	sll	s0,s0,0x10
    c87c:	ad8d01ec 	sw	t5,492(t4)
    c880:	8c4e0008 	lw	t6,8(v0)
    c884:	00108403 	sra	s0,s0,0x10
    c888:	2a010032 	slti	at,s0,50
    c88c:	1420fff2 	bnez	at,c858 <func_809453EC+0x13c>
    c890:	ad8e01f0 	sw	t6,496(t4)
    c894:	3c01437f 	lui	at,0x437f
    c898:	44812000 	mtc1	at,$f4
    c89c:	00000000 	nop
    c8a0:	e62401ac 	swc1	$f4,428(s1)
    c8a4:	86380178 	lh	t8,376(s1)
    c8a8:	240f0001 	li	t7,1
    c8ac:	a22f0565 	sb	t7,1381(s1)
    c8b0:	1700000b 	bnez	t8,c8e0 <func_809453EC+0x1c4>
    c8b4:	26220024 	addiu	v0,s1,36
    c8b8:	02202025 	move	a0,s1
    c8bc:	0c000000 	jal	0 <func_80938CD0>
    c8c0:	afa20040 	sw	v0,64(sp)
    c8c4:	0c000000 	jal	0 <func_80938CD0>
    c8c8:	02202025 	move	a0,s1
    c8cc:	02202025 	move	a0,s1
    c8d0:	0c000000 	jal	0 <func_80938CD0>
    c8d4:	24053122 	li	a1,12578
    c8d8:	10000081 	b	cae0 <func_809453EC+0x3c4>
    c8dc:	00000000 	nop
    c8e0:	8fb000b8 	lw	s0,184(sp)
    c8e4:	3c01c4fa 	lui	at,0xc4fa
    c8e8:	44813000 	mtc1	at,$f6
    c8ec:	8e0809bc 	lw	t0,2492(s0)
    c8f0:	27a50094 	addiu	a1,sp,148
    c8f4:	00003025 	move	a2,zero
    c8f8:	ac480000 	sw	t0,0(v0)
    c8fc:	8e1909c0 	lw	t9,2496(s0)
    c900:	261009bc 	addiu	s0,s0,2492
    c904:	ac590004 	sw	t9,4(v0)
    c908:	8e080008 	lw	t0,8(s0)
    c90c:	ac480008 	sw	t0,8(v0)
    c910:	e6260028 	swc1	$f6,40(s1)
    c914:	8fa400b8 	lw	a0,184(sp)
    c918:	0c000000 	jal	0 <func_80938CD0>
    c91c:	24840a20 	addiu	a0,a0,2592
    c920:	87a50094 	lh	a1,148(sp)
    c924:	87a90096 	lh	t1,150(sp)
    c928:	34018000 	li	at,0x8000
    c92c:	00052823 	negu	a1,a1
    c930:	00052c00 	sll	a1,a1,0x10
    c934:	00052c03 	sra	a1,a1,0x10
    c938:	01215021 	addu	t2,t1,at
    c93c:	a7aa0096 	sh	t2,150(sp)
    c940:	a7a50094 	sh	a1,148(sp)
    c944:	26240524 	addiu	a0,s1,1316
    c948:	2406000a 	li	a2,10
    c94c:	0c000000 	jal	0 <func_80938CD0>
    c950:	24070800 	li	a3,2048
    c954:	26240526 	addiu	a0,s1,1318
    c958:	87a50096 	lh	a1,150(sp)
    c95c:	2406000a 	li	a2,10
    c960:	0c000000 	jal	0 <func_80938CD0>
    c964:	24070800 	li	a3,2048
    c968:	86220178 	lh	v0,376(s1)
    c96c:	24010032 	li	at,50
    c970:	240b000a 	li	t3,10
    c974:	1441000c 	bne	v0,at,c9a8 <func_809453EC+0x28c>
    c978:	240c0007 	li	t4,7
    c97c:	3c010000 	lui	at,0x0
    c980:	a02b0000 	sb	t3,0(at)
    c984:	3c010000 	lui	at,0x0
    c988:	a42c0000 	sh	t4,0(at)
    c98c:	3c013f80 	lui	at,0x3f80
    c990:	44814000 	mtc1	at,$f8
    c994:	8fad00d4 	lw	t5,212(sp)
    c998:	3c010001 	lui	at,0x1
    c99c:	002d0821 	addu	at,at,t5
    c9a0:	e4280afc 	swc1	$f8,2812(at)
    c9a4:	86220178 	lh	v0,376(s1)
    c9a8:	28410033 	slti	at,v0,51
    c9ac:	1020003f 	beqz	at,caac <func_809453EC+0x390>
    c9b0:	02202025 	move	a0,s1
    c9b4:	0c000000 	jal	0 <func_80938CD0>
    c9b8:	24053122 	li	a1,12578
    c9bc:	02202025 	move	a0,s1
    c9c0:	0c000000 	jal	0 <func_80938CD0>
    c9c4:	24053117 	li	a1,12567
    c9c8:	862e0526 	lh	t6,1318(s1)
    c9cc:	3c010000 	lui	at,0x0
    c9d0:	c4340000 	lwc1	$f20,0(at)
    c9d4:	448e5000 	mtc1	t6,$f10
    c9d8:	3c010000 	lui	at,0x0
    c9dc:	c4240000 	lwc1	$f4,0(at)
    c9e0:	46805420 	cvt.s.w	$f16,$f10
    c9e4:	00002825 	move	a1,zero
    c9e8:	46148483 	div.s	$f18,$f16,$f20
    c9ec:	46049302 	mul.s	$f12,$f18,$f4
    c9f0:	0c000000 	jal	0 <func_80938CD0>
    c9f4:	00000000 	nop
    c9f8:	862f0524 	lh	t7,1316(s1)
    c9fc:	3c010000 	lui	at,0x0
    ca00:	c4300000 	lwc1	$f16,0(at)
    ca04:	448f3000 	mtc1	t7,$f6
    ca08:	24050001 	li	a1,1
    ca0c:	46803220 	cvt.s.w	$f8,$f6
    ca10:	46144283 	div.s	$f10,$f8,$f20
    ca14:	46105302 	mul.s	$f12,$f10,$f16
    ca18:	0c000000 	jal	0 <func_80938CD0>
    ca1c:	00000000 	nop
    ca20:	4480a000 	mtc1	zero,$f20
    ca24:	3c014248 	lui	at,0x4248
    ca28:	44819000 	mtc1	at,$f18
    ca2c:	27a4009c 	addiu	a0,sp,156
    ca30:	27a500a8 	addiu	a1,sp,168
    ca34:	e7b4009c 	swc1	$f20,156(sp)
    ca38:	e7b400a0 	swc1	$f20,160(sp)
    ca3c:	0c000000 	jal	0 <func_80938CD0>
    ca40:	e7b200a4 	swc1	$f18,164(sp)
    ca44:	86220178 	lh	v0,376(s1)
    ca48:	8fa400d4 	lw	a0,212(sp)
    ca4c:	02002825 	move	a1,s0
    ca50:	00400821 	move	at,v0
    ca54:	00021080 	sll	v0,v0,0x2
    ca58:	00411021 	addu	v0,v0,at
    ca5c:	00021040 	sll	v0,v0,0x1
    ca60:	00021400 	sll	v0,v0,0x10
    ca64:	00021403 	sra	v0,v0,0x10
    ca68:	28410100 	slti	at,v0,256
    ca6c:	14200002 	bnez	at,ca78 <func_809453EC+0x35c>
    ca70:	27a600a8 	addiu	a2,sp,168
    ca74:	240200ff 	li	v0,255
    ca78:	3c014120 	lui	at,0x4120
    ca7c:	44812000 	mtc1	at,$f4
    ca80:	3c0142a0 	lui	at,0x42a0
    ca84:	44813000 	mtc1	at,$f6
    ca88:	3c070000 	lui	a3,0x0
    ca8c:	24180001 	li	t8,1
    ca90:	afb8001c 	sw	t8,28(sp)
    ca94:	24e70000 	addiu	a3,a3,0
    ca98:	afa20018 	sw	v0,24(sp)
    ca9c:	e7a40010 	swc1	$f4,16(sp)
    caa0:	0c000000 	jal	0 <func_80938CD0>
    caa4:	e7a60014 	swc1	$f6,20(sp)
    caa8:	86220178 	lh	v0,376(s1)
    caac:	24010001 	li	at,1
    cab0:	1441015e 	bne	v0,at,d02c <func_809453EC+0x910>
    cab4:	3c020000 	lui	v0,0x0
    cab8:	3c010000 	lui	at,0x0
    cabc:	24420000 	addiu	v0,v0,0
    cac0:	a0200000 	sb	zero,0(at)
    cac4:	90590000 	lbu	t9,0(v0)
    cac8:	02202025 	move	a0,s1
    cacc:	27280001 	addiu	t0,t9,1
    cad0:	0c000000 	jal	0 <func_80938CD0>
    cad4:	a0480000 	sb	t0,0(v0)
    cad8:	10000155 	b	d030 <func_809453EC+0x914>
    cadc:	8fbf0034 	lw	ra,52(sp)
    cae0:	0c000000 	jal	0 <func_80938CD0>
    cae4:	8fa40040 	lw	a0,64(sp)
    cae8:	4480a000 	mtc1	zero,$f20
    caec:	3c0e0000 	lui	t6,0x0
    caf0:	e6200504 	swc1	$f0,1284(s1)
    caf4:	4600a03e 	c.le.s	$f20,$f0
    caf8:	25ce0000 	addiu	t6,t6,0
    cafc:	27ad0060 	addiu	t5,sp,96
    cb00:	27b90054 	addiu	t9,sp,84
    cb04:	45000042 	bc1f	cc10 <func_809453EC+0x4f4>
    cb08:	3c080000 	lui	t0,0x0
    cb0c:	3c01420c 	lui	at,0x420c
    cb10:	44814000 	mtc1	at,$f8
    cb14:	c62a0504 	lwc1	$f10,1284(s1)
    cb18:	02202025 	move	a0,s1
    cb1c:	00008025 	move	s0,zero
    cb20:	460a4032 	c.eq.s	$f8,$f10
    cb24:	00000000 	nop
    cb28:	4501000a 	bc1t	cb54 <func_809453EC+0x438>
    cb2c:	00000000 	nop
    cb30:	c6300024 	lwc1	$f16,36(s1)
    cb34:	c632002c 	lwc1	$f18,44(s1)
    cb38:	24060001 	li	a2,1
    cb3c:	e6300500 	swc1	$f16,1280(s1)
    cb40:	e6320508 	swc1	$f18,1288(s1)
    cb44:	0c000000 	jal	0 <func_80938CD0>
    cb48:	8fa500d4 	lw	a1,212(sp)
    cb4c:	1000002c 	b	cc00 <func_809453EC+0x4e4>
    cb50:	240b0002 	li	t3,2
    cb54:	3c0141a0 	lui	at,0x41a0
    cb58:	44816000 	mtc1	at,$f12
    cb5c:	0c000000 	jal	0 <func_80938CD0>
    cb60:	00000000 	nop
    cb64:	3c0141a0 	lui	at,0x41a0
    cb68:	44816000 	mtc1	at,$f12
    cb6c:	0c000000 	jal	0 <func_80938CD0>
    cb70:	e7a00084 	swc1	$f0,132(sp)
    cb74:	3c0141a0 	lui	at,0x41a0
    cb78:	44816000 	mtc1	at,$f12
    cb7c:	0c000000 	jal	0 <func_80938CD0>
    cb80:	e7a00088 	swc1	$f0,136(sp)
    cb84:	3c014120 	lui	at,0x4120
    cb88:	44816000 	mtc1	at,$f12
    cb8c:	e7a0008c 	swc1	$f0,140(sp)
    cb90:	e7b40078 	swc1	$f20,120(sp)
    cb94:	e7b4007c 	swc1	$f20,124(sp)
    cb98:	0c000000 	jal	0 <func_80938CD0>
    cb9c:	e7b40080 	swc1	$f20,128(sp)
    cba0:	3c0141c8 	lui	at,0x41c8
    cba4:	44812000 	mtc1	at,$f4
    cba8:	8fa400d4 	lw	a0,212(sp)
    cbac:	8fa50040 	lw	a1,64(sp)
    cbb0:	46040180 	add.s	$f6,$f0,$f4
    cbb4:	27a60084 	addiu	a2,sp,132
    cbb8:	27a70078 	addiu	a3,sp,120
    cbbc:	e7a60010 	swc1	$f6,16(sp)
    cbc0:	86290566 	lh	t1,1382(s1)
    cbc4:	0c000000 	jal	0 <func_80938CD0>
    cbc8:	afa90014 	sw	t1,20(sp)
    cbcc:	26100001 	addiu	s0,s0,1
    cbd0:	00108400 	sll	s0,s0,0x10
    cbd4:	00108403 	sra	s0,s0,0x10
    cbd8:	2a010032 	slti	at,s0,50
    cbdc:	5420ffde 	bnezl	at,cb58 <func_809453EC+0x43c>
    cbe0:	3c0141a0 	lui	at,0x41a0
    cbe4:	3c013f00 	lui	at,0x3f00
    cbe8:	44814000 	mtc1	at,$f8
    cbec:	8faa00d4 	lw	t2,212(sp)
    cbf0:	3c010001 	lui	at,0x1
    cbf4:	002a0821 	addu	at,at,t2
    cbf8:	e4280afc 	swc1	$f8,2812(at)
    cbfc:	240b0002 	li	t3,2
    cc00:	240c0014 	li	t4,20
    cc04:	a62b0440 	sh	t3,1088(s1)
    cc08:	10000108 	b	d02c <func_809453EC+0x910>
    cc0c:	a62c0178 	sh	t4,376(s1)
    cc10:	8dd80000 	lw	t8,0(t6)
    cc14:	8dcf0004 	lw	t7,4(t6)
    cc18:	25080000 	addiu	t0,t0,0
    cc1c:	adb80000 	sw	t8,0(t5)
    cc20:	8dd80008 	lw	t8,8(t6)
    cc24:	adaf0004 	sw	t7,4(t5)
    cc28:	3c014220 	lui	at,0x4220
    cc2c:	adb80008 	sw	t8,8(t5)
    cc30:	8d0a0000 	lw	t2,0(t0)
    cc34:	8d090004 	lw	t1,4(t0)
    cc38:	4481a000 	mtc1	at,$f20
    cc3c:	af2a0000 	sw	t2,0(t9)
    cc40:	8d0a0008 	lw	t2,8(t0)
    cc44:	00008025 	move	s0,zero
    cc48:	af290004 	sw	t1,4(t9)
    cc4c:	af2a0008 	sw	t2,8(t9)
    cc50:	3c010000 	lui	at,0x0
    cc54:	0c000000 	jal	0 <func_80938CD0>
    cc58:	c42c0000 	lwc1	$f12,0(at)
    cc5c:	4600028d 	trunc.w.s	$f10,$f0
    cc60:	27ab006c 	addiu	t3,sp,108
    cc64:	4600a306 	mov.s	$f12,$f20
    cc68:	440d5000 	mfc1	t5,$f10
    cc6c:	00000000 	nop
    cc70:	000d7400 	sll	t6,t5,0x10
    cc74:	000e7c03 	sra	t7,t6,0x10
    cc78:	000fc080 	sll	t8,t7,0x2
    cc7c:	030fc023 	subu	t8,t8,t7
    cc80:	0018c080 	sll	t8,t8,0x2
    cc84:	0238c821 	addu	t9,s1,t8
    cc88:	8f2901e8 	lw	t1,488(t9)
    cc8c:	ad690000 	sw	t1,0(t3)
    cc90:	8f2801ec 	lw	t0,492(t9)
    cc94:	ad680004 	sw	t0,4(t3)
    cc98:	8f2901f0 	lw	t1,496(t9)
    cc9c:	0c000000 	jal	0 <func_80938CD0>
    cca0:	ad690008 	sw	t1,8(t3)
    cca4:	c7b0006c 	lwc1	$f16,108(sp)
    cca8:	4600a306 	mov.s	$f12,$f20
    ccac:	46008480 	add.s	$f18,$f16,$f0
    ccb0:	0c000000 	jal	0 <func_80938CD0>
    ccb4:	e7b2006c 	swc1	$f18,108(sp)
    ccb8:	c7a40070 	lwc1	$f4,112(sp)
    ccbc:	4600a306 	mov.s	$f12,$f20
    ccc0:	46002180 	add.s	$f6,$f4,$f0
    ccc4:	0c000000 	jal	0 <func_80938CD0>
    ccc8:	e7a60070 	swc1	$f6,112(sp)
    cccc:	c7a80074 	lwc1	$f8,116(sp)
    ccd0:	3c010000 	lui	at,0x0
    ccd4:	c4300000 	lwc1	$f16,0(at)
    ccd8:	46004280 	add.s	$f10,$f8,$f0
    ccdc:	3c013f00 	lui	at,0x3f00
    cce0:	44816000 	mtc1	at,$f12
    cce4:	e7b00058 	swc1	$f16,88(sp)
    cce8:	0c000000 	jal	0 <func_80938CD0>
    ccec:	e7aa0074 	swc1	$f10,116(sp)
    ccf0:	3c013f00 	lui	at,0x3f00
    ccf4:	44816000 	mtc1	at,$f12
    ccf8:	0c000000 	jal	0 <func_80938CD0>
    ccfc:	e7a00054 	swc1	$f0,84(sp)
    cd00:	3c014000 	lui	at,0x4000
    cd04:	44816000 	mtc1	at,$f12
    cd08:	0c000000 	jal	0 <func_80938CD0>
    cd0c:	e7a0005c 	swc1	$f0,92(sp)
    cd10:	4600048d 	trunc.w.s	$f18,$f0
    cd14:	24180001 	li	t8,1
    cd18:	240b004b 	li	t3,75
    cd1c:	afab0018 	sw	t3,24(sp)
    cd20:	440c9000 	mfc1	t4,$f18
    cd24:	afb80014 	sw	t8,20(sp)
    cd28:	8fa400d4 	lw	a0,212(sp)
    cd2c:	000c6c00 	sll	t5,t4,0x10
    cd30:	000d7403 	sra	t6,t5,0x10
    cd34:	25cf0008 	addiu	t7,t6,8
    cd38:	448f2000 	mtc1	t7,$f4
    cd3c:	27a5006c 	addiu	a1,sp,108
    cd40:	27a60060 	addiu	a2,sp,96
    cd44:	468021a0 	cvt.s.w	$f6,$f4
    cd48:	27a70054 	addiu	a3,sp,84
    cd4c:	0c000000 	jal	0 <func_80938CD0>
    cd50:	e7a60010 	swc1	$f6,16(sp)
    cd54:	26100001 	addiu	s0,s0,1
    cd58:	00108400 	sll	s0,s0,0x10
    cd5c:	00108403 	sra	s0,s0,0x10
    cd60:	2a01000a 	slti	at,s0,10
    cd64:	1420ffba 	bnez	at,cc50 <func_809453EC+0x534>
    cd68:	00000000 	nop
    cd6c:	100000b0 	b	d030 <func_809453EC+0x914>
    cd70:	8fbf0034 	lw	ra,52(sp)
    cd74:	4480a000 	mtc1	zero,$f20
    cd78:	262401ac 	addiu	a0,s1,428
    cd7c:	3c063f80 	lui	a2,0x3f80
    cd80:	4405a000 	mfc1	a1,$f20
    cd84:	0c000000 	jal	0 <func_80938CD0>
    cd88:	3c074170 	lui	a3,0x4170
    cd8c:	86390178 	lh	t9,376(s1)
    cd90:	572000a7 	bnezl	t9,d030 <func_809453EC+0x914>
    cd94:	8fbf0034 	lw	ra,52(sp)
    cd98:	0c000000 	jal	0 <func_80938CD0>
    cd9c:	02202025 	move	a0,s1
    cda0:	100000a3 	b	d030 <func_809453EC+0x914>
    cda4:	8fbf0034 	lw	ra,52(sp)
    cda8:	86220178 	lh	v0,376(s1)
    cdac:	24010001 	li	at,1
    cdb0:	3c080000 	lui	t0,0x0
    cdb4:	1040005b 	beqz	v0,cf24 <func_809453EC+0x808>
    cdb8:	3c090000 	lui	t1,0x0
    cdbc:	14410003 	bne	v0,at,cdcc <func_809453EC+0x6b0>
    cdc0:	02202025 	move	a0,s1
    cdc4:	3c010000 	lui	at,0x0
    cdc8:	a0200000 	sb	zero,0(at)
    cdcc:	91080000 	lbu	t0,0(t0)
    cdd0:	24010002 	li	at,2
    cdd4:	15010002 	bne	t0,at,cde0 <func_809453EC+0x6c4>
    cdd8:	00000000 	nop
    cddc:	a6200178 	sh	zero,376(s1)
    cde0:	0c000000 	jal	0 <func_80938CD0>
    cde4:	2405310f 	li	a1,12559
    cde8:	3c100000 	lui	s0,0x0
    cdec:	8fa600b8 	lw	a2,184(sp)
    cdf0:	26100000 	addiu	s0,s0,0
    cdf4:	8e020000 	lw	v0,0(s0)
    cdf8:	90c90a60 	lbu	t1,2656(a2)
    cdfc:	c4ca0024 	lwc1	$f10,36(a2)
    ce00:	c4d20028 	lwc1	$f18,40(a2)
    ce04:	c4c6002c 	lwc1	$f6,44(a2)
    ce08:	c44804bc 	lwc1	$f8,1212(v0)
    ce0c:	c45004c0 	lwc1	$f16,1216(v0)
    ce10:	c44404c4 	lwc1	$f4,1220(v0)
    ce14:	460a4501 	sub.s	$f20,$f8,$f10
    ce18:	46128301 	sub.s	$f12,$f16,$f18
    ce1c:	15200037 	bnez	t1,cefc <func_809453EC+0x7e0>
    ce20:	46062081 	sub.s	$f2,$f4,$f6
    ce24:	94ca0088 	lhu	t2,136(a2)
    ce28:	3c014120 	lui	at,0x4120
    ce2c:	314c0001 	andi	t4,t2,0x1
    ce30:	51800033 	beqzl	t4,cf00 <func_809453EC+0x7e4>
    ce34:	3c053d23 	lui	a1,0x3d23
    ce38:	44814000 	mtc1	at,$f8
    ce3c:	46006005 	abs.s	$f0,$f12
    ce40:	4608003c 	c.lt.s	$f0,$f8
    ce44:	00000000 	nop
    ce48:	4502002d 	bc1fl	cf00 <func_809453EC+0x7e4>
    ce4c:	3c053d23 	lui	a1,0x3d23
    ce50:	4614a282 	mul.s	$f10,$f20,$f20
    ce54:	3c010000 	lui	at,0x0
    ce58:	c4240000 	lwc1	$f4,0(at)
    ce5c:	46021402 	mul.s	$f16,$f2,$f2
    ce60:	c45201b8 	lwc1	$f18,440(v0)
    ce64:	00001825 	move	v1,zero
    ce68:	46049182 	mul.s	$f6,$f18,$f4
    ce6c:	46105000 	add.s	$f0,$f10,$f16
    ce70:	46000004 	sqrt.s	$f0,$f0
    ce74:	4606003c 	c.lt.s	$f0,$f6
    ce78:	00000000 	nop
    ce7c:	4500001f 	bc1f	cefc <func_809453EC+0x7e0>
    ce80:	00002025 	move	a0,zero
    ce84:	240500c8 	li	a1,200
    ce88:	0c000000 	jal	0 <func_80938CD0>
    ce8c:	a7a30052 	sh	v1,82(sp)
    ce90:	87a30052 	lh	v1,82(sp)
    ce94:	8fa400b8 	lw	a0,184(sp)
    ce98:	00836821 	addu	t5,a0,v1
    ce9c:	24630001 	addiu	v1,v1,1
    cea0:	00031c00 	sll	v1,v1,0x10
    cea4:	00031c03 	sra	v1,v1,0x10
    cea8:	28610012 	slti	at,v1,18
    ceac:	1420fff4 	bnez	at,ce80 <func_809453EC+0x764>
    ceb0:	a1a20a61 	sb	v0,2657(t5)
    ceb4:	240e0001 	li	t6,1
    ceb8:	a08e0a60 	sb	t6,2656(a0)
    cebc:	862f0168 	lh	t7,360(s1)
    cec0:	15e00008 	bnez	t7,cee4 <func_809453EC+0x7c8>
    cec4:	00000000 	nop
    cec8:	8c980678 	lw	t8,1656(a0)
    cecc:	97050092 	lhu	a1,146(t8)
    ced0:	24a5681e 	addiu	a1,a1,26654
    ced4:	0c000000 	jal	0 <func_80938CD0>
    ced8:	30a5ffff 	andi	a1,a1,0xffff
    cedc:	240b0028 	li	t3,40
    cee0:	a62b0168 	sh	t3,360(s1)
    cee4:	3c080000 	lui	t0,0x0
    cee8:	8d080000 	lw	t0,0(t0)
    ceec:	24190064 	li	t9,100
    cef0:	3c020000 	lui	v0,0x0
    cef4:	a519017c 	sh	t9,380(t0)
    cef8:	8c420000 	lw	v0,0(v0)
    cefc:	3c053d23 	lui	a1,0x3d23
    cf00:	3c063dcc 	lui	a2,0x3dcc
    cf04:	3c073b03 	lui	a3,0x3b03
    cf08:	34e7126f 	ori	a3,a3,0x126f
    cf0c:	34c6cccd 	ori	a2,a2,0xcccd
    cf10:	34a5d70a 	ori	a1,a1,0xd70a
    cf14:	0c000000 	jal	0 <func_80938CD0>
    cf18:	244401b8 	addiu	a0,v0,440
    cf1c:	10000044 	b	d030 <func_809453EC+0x914>
    cf20:	8fbf0034 	lw	ra,52(sp)
    cf24:	91290000 	lbu	t1,0(t1)
    cf28:	24010002 	li	at,2
    cf2c:	15210004 	bne	t1,at,cf40 <func_809453EC+0x824>
    cf30:	3c014040 	lui	at,0x4040
    cf34:	44814000 	mtc1	at,$f8
    cf38:	10000005 	b	cf50 <func_809453EC+0x834>
    cf3c:	e7a8004c 	swc1	$f8,76(sp)
    cf40:	3c013f80 	lui	at,0x3f80
    cf44:	44815000 	mtc1	at,$f10
    cf48:	00000000 	nop
    cf4c:	e7aa004c 	swc1	$f10,76(sp)
    cf50:	3c014120 	lui	at,0x4120
    cf54:	44818000 	mtc1	at,$f16
    cf58:	c7b2004c 	lwc1	$f18,76(sp)
    cf5c:	4480a000 	mtc1	zero,$f20
    cf60:	3c100000 	lui	s0,0x0
    cf64:	46128102 	mul.s	$f4,$f16,$f18
    cf68:	26100000 	addiu	s0,s0,0
    cf6c:	8e040000 	lw	a0,0(s0)
    cf70:	4405a000 	mfc1	a1,$f20
    cf74:	3c063f80 	lui	a2,0x3f80
    cf78:	248401a8 	addiu	a0,a0,424
    cf7c:	44072000 	mfc1	a3,$f4
    cf80:	0c000000 	jal	0 <func_80938CD0>
    cf84:	00000000 	nop
    cf88:	3c010000 	lui	at,0x0
    cf8c:	c4260000 	lwc1	$f6,0(at)
    cf90:	c7a8004c 	lwc1	$f8,76(sp)
    cf94:	8e040000 	lw	a0,0(s0)
    cf98:	4405a000 	mfc1	a1,$f20
    cf9c:	46083282 	mul.s	$f10,$f6,$f8
    cfa0:	3c063f80 	lui	a2,0x3f80
    cfa4:	248401b4 	addiu	a0,a0,436
    cfa8:	44075000 	mfc1	a3,$f10
    cfac:	0c000000 	jal	0 <func_80938CD0>
    cfb0:	00000000 	nop
    cfb4:	3c014040 	lui	at,0x4040
    cfb8:	44818000 	mtc1	at,$f16
    cfbc:	c7b2004c 	lwc1	$f18,76(sp)
    cfc0:	8e040000 	lw	a0,0(s0)
    cfc4:	4405a000 	mfc1	a1,$f20
    cfc8:	46128102 	mul.s	$f4,$f16,$f18
    cfcc:	3c063f80 	lui	a2,0x3f80
    cfd0:	248401ac 	addiu	a0,a0,428
    cfd4:	44072000 	mfc1	a3,$f4
    cfd8:	0c000000 	jal	0 <func_80938CD0>
    cfdc:	00000000 	nop
    cfe0:	3c0140c0 	lui	at,0x40c0
    cfe4:	44813000 	mtc1	at,$f6
    cfe8:	c7a8004c 	lwc1	$f8,76(sp)
    cfec:	8e040000 	lw	a0,0(s0)
    cff0:	4405a000 	mfc1	a1,$f20
    cff4:	46083282 	mul.s	$f10,$f6,$f8
    cff8:	3c063f80 	lui	a2,0x3f80
    cffc:	248401b0 	addiu	a0,a0,432
    d000:	44075000 	mfc1	a3,$f10
    d004:	0c000000 	jal	0 <func_80938CD0>
    d008:	00000000 	nop
    d00c:	8e0a0000 	lw	t2,0(s0)
    d010:	c55001ac 	lwc1	$f16,428(t2)
    d014:	4614803e 	c.le.s	$f16,$f20
    d018:	00000000 	nop
    d01c:	45020004 	bc1fl	d030 <func_809453EC+0x914>
    d020:	8fbf0034 	lw	ra,52(sp)
    d024:	0c000000 	jal	0 <func_80938CD0>
    d028:	02202025 	move	a0,s1
    d02c:	8fbf0034 	lw	ra,52(sp)
    d030:	d7b40020 	ldc1	$f20,32(sp)
    d034:	8fb0002c 	lw	s0,44(sp)
    d038:	8fb10030 	lw	s1,48(sp)
    d03c:	03e00008 	jr	ra
    d040:	27bd00d0 	addiu	sp,sp,208

0000d044 <func_80945D14>:
    d044:	27bdfed8 	addiu	sp,sp,-296
    d048:	afbf0044 	sw	ra,68(sp)
    d04c:	afb20040 	sw	s2,64(sp)
    d050:	afb1003c 	sw	s1,60(sp)
    d054:	afb00038 	sw	s0,56(sp)
    d058:	f7b40030 	sdc1	$f20,48(sp)
    d05c:	8cae1c44 	lw	t6,7236(a1)
    d060:	24010066 	li	at,102
    d064:	00808825 	move	s1,a0
    d068:	afae0110 	sw	t6,272(sp)
    d06c:	8482001c 	lh	v0,28(a0)
    d070:	00a09025 	move	s2,a1
    d074:	10410005 	beq	v0,at,d08c <func_80945D14+0x48>
    d078:	24010067 	li	at,103
    d07c:	50410191 	beql	v0,at,d6c4 <func_80945D14+0x680>
    d080:	86220178 	lh	v0,376(s1)
    d084:	100002c3 	b	db94 <func_80945D14+0xb50>
    d088:	8fbf0044 	lw	ra,68(sp)
    d08c:	86220440 	lh	v0,1088(s1)
    d090:	24010001 	li	at,1
    d094:	02202025 	move	a0,s1
    d098:	10400009 	beqz	v0,d0c0 <func_80945D14+0x7c>
    d09c:	3c053cf5 	lui	a1,0x3cf5
    d0a0:	1041004b 	beq	v0,at,d1d0 <func_80945D14+0x18c>
    d0a4:	24010002 	li	at,2
    d0a8:	10410178 	beq	v0,at,d68c <func_80945D14+0x648>
    d0ac:	2401000a 	li	at,10
    d0b0:	50410048 	beql	v0,at,d1d4 <func_80945D14+0x190>
    d0b4:	862f0178 	lh	t7,376(s1)
    d0b8:	100002b6 	b	db94 <func_80945D14+0xb50>
    d0bc:	8fbf0044 	lw	ra,68(sp)
    d0c0:	0c000000 	jal	0 <func_80938CD0>
    d0c4:	34a5c28f 	ori	a1,a1,0xc28f
    d0c8:	8fa20110 	lw	v0,272(sp)
    d0cc:	240f0001 	li	t7,1
    d0d0:	a62f0440 	sh	t7,1088(s1)
    d0d4:	3c0141f0 	lui	at,0x41f0
    d0d8:	44815000 	mtc1	at,$f10
    d0dc:	c4480028 	lwc1	$f8,40(v0)
    d0e0:	c6260024 	lwc1	$f6,36(s1)
    d0e4:	c4440024 	lwc1	$f4,36(v0)
    d0e8:	460a4400 	add.s	$f16,$f8,$f10
    d0ec:	c6320028 	lwc1	$f18,40(s1)
    d0f0:	46062501 	sub.s	$f20,$f4,$f6
    d0f4:	46128101 	sub.s	$f4,$f16,$f18
    d0f8:	4600a306 	mov.s	$f12,$f20
    d0fc:	e7a4011c 	swc1	$f4,284(sp)
    d100:	c628002c 	lwc1	$f8,44(s1)
    d104:	c446002c 	lwc1	$f6,44(v0)
    d108:	46083381 	sub.s	$f14,$f6,$f8
    d10c:	0c000000 	jal	0 <func_80938CD0>
    d110:	e7ae0118 	swc1	$f14,280(sp)
    d114:	3c010000 	lui	at,0x0
    d118:	c42a0000 	lwc1	$f10,0(at)
    d11c:	c7a20118 	lwc1	$f2,280(sp)
    d120:	460a0402 	mul.s	$f16,$f0,$f10
    d124:	00000000 	nop
    d128:	4614a102 	mul.s	$f4,$f20,$f20
    d12c:	00000000 	nop
    d130:	46021182 	mul.s	$f6,$f2,$f2
    d134:	4600848d 	trunc.w.s	$f18,$f16
    d138:	46062000 	add.s	$f0,$f4,$f6
    d13c:	44199000 	mfc1	t9,$f18
    d140:	00000000 	nop
    d144:	a6390032 	sh	t9,50(s1)
    d148:	46000384 	sqrt.s	$f14,$f0
    d14c:	0c000000 	jal	0 <func_80938CD0>
    d150:	c7ac011c 	lwc1	$f12,284(sp)
    d154:	3c010000 	lui	at,0x0
    d158:	c4280000 	lwc1	$f8,0(at)
    d15c:	3c0141a0 	lui	at,0x41a0
    d160:	44819000 	mtc1	at,$f18
    d164:	46080282 	mul.s	$f10,$f0,$f8
    d168:	00008025 	move	s0,zero
    d16c:	26220024 	addiu	v0,s1,36
    d170:	e6320068 	swc1	$f18,104(s1)
    d174:	4600540d 	trunc.w.s	$f16,$f10
    d178:	44098000 	mfc1	t1,$f16
    d17c:	00000000 	nop
    d180:	a6290030 	sh	t1,48(s1)
    d184:	00105080 	sll	t2,s0,0x2
    d188:	8c4d0000 	lw	t5,0(v0)
    d18c:	01505023 	subu	t2,t2,s0
    d190:	000a5080 	sll	t2,t2,0x2
    d194:	022a5821 	addu	t3,s1,t2
    d198:	ad6d01e8 	sw	t5,488(t3)
    d19c:	8c4c0004 	lw	t4,4(v0)
    d1a0:	26100001 	addiu	s0,s0,1
    d1a4:	00108400 	sll	s0,s0,0x10
    d1a8:	ad6c01ec 	sw	t4,492(t3)
    d1ac:	8c4d0008 	lw	t5,8(v0)
    d1b0:	00108403 	sra	s0,s0,0x10
    d1b4:	2a010032 	slti	at,s0,50
    d1b8:	1420fff2 	bnez	at,d184 <func_80945D14+0x140>
    d1bc:	ad6d01f0 	sw	t5,496(t3)
    d1c0:	3c01437f 	lui	at,0x437f
    d1c4:	44812000 	mtc1	at,$f4
    d1c8:	00000000 	nop
    d1cc:	e62401ac 	swc1	$f4,428(s1)
    d1d0:	862f0178 	lh	t7,376(s1)
    d1d4:	240e0001 	li	t6,1
    d1d8:	a22e0565 	sb	t6,1381(s1)
    d1dc:	15e0000b 	bnez	t7,d20c <func_80945D14+0x1c8>
    d1e0:	26220024 	addiu	v0,s1,36
    d1e4:	02202025 	move	a0,s1
    d1e8:	0c000000 	jal	0 <func_80938CD0>
    d1ec:	afa20050 	sw	v0,80(sp)
    d1f0:	0c000000 	jal	0 <func_80938CD0>
    d1f4:	02202025 	move	a0,s1
    d1f8:	02202025 	move	a0,s1
    d1fc:	0c000000 	jal	0 <func_80938CD0>
    d200:	24053111 	li	a1,12561
    d204:	1000007f 	b	d404 <func_80945D14+0x3c0>
    d208:	00000000 	nop
    d20c:	8fb00110 	lw	s0,272(sp)
    d210:	3c01c4fa 	lui	at,0xc4fa
    d214:	44813000 	mtc1	at,$f6
    d218:	8e1909bc 	lw	t9,2492(s0)
    d21c:	27a500ec 	addiu	a1,sp,236
    d220:	00003025 	move	a2,zero
    d224:	ac590000 	sw	t9,0(v0)
    d228:	8e1809c0 	lw	t8,2496(s0)
    d22c:	261009bc 	addiu	s0,s0,2492
    d230:	ac580004 	sw	t8,4(v0)
    d234:	8e190008 	lw	t9,8(s0)
    d238:	ac590008 	sw	t9,8(v0)
    d23c:	e6260028 	swc1	$f6,40(s1)
    d240:	8fa40110 	lw	a0,272(sp)
    d244:	0c000000 	jal	0 <func_80938CD0>
    d248:	24840a20 	addiu	a0,a0,2592
    d24c:	87a500ec 	lh	a1,236(sp)
    d250:	87a800ee 	lh	t0,238(sp)
    d254:	34018000 	li	at,0x8000
    d258:	00052823 	negu	a1,a1
    d25c:	00052c00 	sll	a1,a1,0x10
    d260:	00052c03 	sra	a1,a1,0x10
    d264:	01014821 	addu	t1,t0,at
    d268:	a7a900ee 	sh	t1,238(sp)
    d26c:	a7a500ec 	sh	a1,236(sp)
    d270:	26240524 	addiu	a0,s1,1316
    d274:	2406000a 	li	a2,10
    d278:	0c000000 	jal	0 <func_80938CD0>
    d27c:	24070800 	li	a3,2048
    d280:	26240526 	addiu	a0,s1,1318
    d284:	87a500ee 	lh	a1,238(sp)
    d288:	2406000a 	li	a2,10
    d28c:	0c000000 	jal	0 <func_80938CD0>
    d290:	24070800 	li	a3,2048
    d294:	86220178 	lh	v0,376(s1)
    d298:	24010032 	li	at,50
    d29c:	240a000a 	li	t2,10
    d2a0:	1441000b 	bne	v0,at,d2d0 <func_80945D14+0x28c>
    d2a4:	240b0007 	li	t3,7
    d2a8:	3c010000 	lui	at,0x0
    d2ac:	a02a0000 	sb	t2,0(at)
    d2b0:	3c010000 	lui	at,0x0
    d2b4:	a42b0000 	sh	t3,0(at)
    d2b8:	3c013f80 	lui	at,0x3f80
    d2bc:	44814000 	mtc1	at,$f8
    d2c0:	3c010001 	lui	at,0x1
    d2c4:	00320821 	addu	at,at,s2
    d2c8:	e4280afc 	swc1	$f8,2812(at)
    d2cc:	86220178 	lh	v0,376(s1)
    d2d0:	28410033 	slti	at,v0,51
    d2d4:	1020003e 	beqz	at,d3d0 <func_80945D14+0x38c>
    d2d8:	02202025 	move	a0,s1
    d2dc:	0c000000 	jal	0 <func_80938CD0>
    d2e0:	24053111 	li	a1,12561
    d2e4:	02202025 	move	a0,s1
    d2e8:	0c000000 	jal	0 <func_80938CD0>
    d2ec:	24053118 	li	a1,12568
    d2f0:	862c0526 	lh	t4,1318(s1)
    d2f4:	3c010000 	lui	at,0x0
    d2f8:	c4340000 	lwc1	$f20,0(at)
    d2fc:	448c5000 	mtc1	t4,$f10
    d300:	3c010000 	lui	at,0x0
    d304:	c4320000 	lwc1	$f18,0(at)
    d308:	46805420 	cvt.s.w	$f16,$f10
    d30c:	00002825 	move	a1,zero
    d310:	46128103 	div.s	$f4,$f16,$f18
    d314:	46142302 	mul.s	$f12,$f4,$f20
    d318:	0c000000 	jal	0 <func_80938CD0>
    d31c:	00000000 	nop
    d320:	862d0524 	lh	t5,1316(s1)
    d324:	3c010000 	lui	at,0x0
    d328:	c42a0000 	lwc1	$f10,0(at)
    d32c:	448d3000 	mtc1	t5,$f6
    d330:	24050001 	li	a1,1
    d334:	46803220 	cvt.s.w	$f8,$f6
    d338:	460a4403 	div.s	$f16,$f8,$f10
    d33c:	46148302 	mul.s	$f12,$f16,$f20
    d340:	0c000000 	jal	0 <func_80938CD0>
    d344:	00000000 	nop
    d348:	4480a000 	mtc1	zero,$f20
    d34c:	3c014248 	lui	at,0x4248
    d350:	44819000 	mtc1	at,$f18
    d354:	27a400f4 	addiu	a0,sp,244
    d358:	27a50100 	addiu	a1,sp,256
    d35c:	e7b400f4 	swc1	$f20,244(sp)
    d360:	e7b400f8 	swc1	$f20,248(sp)
    d364:	0c000000 	jal	0 <func_80938CD0>
    d368:	e7b200fc 	swc1	$f18,252(sp)
    d36c:	86220178 	lh	v0,376(s1)
    d370:	02402025 	move	a0,s2
    d374:	02002825 	move	a1,s0
    d378:	00400821 	move	at,v0
    d37c:	00021080 	sll	v0,v0,0x2
    d380:	00411021 	addu	v0,v0,at
    d384:	00021040 	sll	v0,v0,0x1
    d388:	00021400 	sll	v0,v0,0x10
    d38c:	00021403 	sra	v0,v0,0x10
    d390:	28410100 	slti	at,v0,256
    d394:	14200002 	bnez	at,d3a0 <func_80945D14+0x35c>
    d398:	27a60100 	addiu	a2,sp,256
    d39c:	240200ff 	li	v0,255
    d3a0:	3c014120 	lui	at,0x4120
    d3a4:	44812000 	mtc1	at,$f4
    d3a8:	3c0142a0 	lui	at,0x42a0
    d3ac:	44813000 	mtc1	at,$f6
    d3b0:	3c070000 	lui	a3,0x0
    d3b4:	24e70000 	addiu	a3,a3,0
    d3b8:	afa20018 	sw	v0,24(sp)
    d3bc:	afa0001c 	sw	zero,28(sp)
    d3c0:	e7a40010 	swc1	$f4,16(sp)
    d3c4:	0c000000 	jal	0 <func_80938CD0>
    d3c8:	e7a60014 	swc1	$f6,20(sp)
    d3cc:	86220178 	lh	v0,376(s1)
    d3d0:	24010001 	li	at,1
    d3d4:	144101ee 	bne	v0,at,db90 <func_80945D14+0xb4c>
    d3d8:	3c020000 	lui	v0,0x0
    d3dc:	3c010000 	lui	at,0x0
    d3e0:	24420000 	addiu	v0,v0,0
    d3e4:	a0200000 	sb	zero,0(at)
    d3e8:	904e0000 	lbu	t6,0(v0)
    d3ec:	02202025 	move	a0,s1
    d3f0:	25cf0001 	addiu	t7,t6,1
    d3f4:	0c000000 	jal	0 <func_80938CD0>
    d3f8:	a04f0000 	sb	t7,0(v0)
    d3fc:	100001e5 	b	db94 <func_80945D14+0xb50>
    d400:	8fbf0044 	lw	ra,68(sp)
    d404:	0c000000 	jal	0 <func_80938CD0>
    d408:	8fa40050 	lw	a0,80(sp)
    d40c:	4480a000 	mtc1	zero,$f20
    d410:	3c0a0000 	lui	t2,0x0
    d414:	e6200504 	swc1	$f0,1284(s1)
    d418:	4600a03e 	c.le.s	$f20,$f0
    d41c:	254a0000 	addiu	t2,t2,0
    d420:	27a900b8 	addiu	t1,sp,184
    d424:	27ad00ac 	addiu	t5,sp,172
    d428:	45000040 	bc1f	d52c <func_80945D14+0x4e8>
    d42c:	3c0e0000 	lui	t6,0x0
    d430:	3c01420c 	lui	at,0x420c
    d434:	44814000 	mtc1	at,$f8
    d438:	c62a0504 	lwc1	$f10,1284(s1)
    d43c:	02202025 	move	a0,s1
    d440:	02402825 	move	a1,s2
    d444:	460a4032 	c.eq.s	$f8,$f10
    d448:	00008025 	move	s0,zero
    d44c:	45010009 	bc1t	d474 <func_80945D14+0x430>
    d450:	00000000 	nop
    d454:	c6300024 	lwc1	$f16,36(s1)
    d458:	c632002c 	lwc1	$f18,44(s1)
    d45c:	00003025 	move	a2,zero
    d460:	e6300500 	swc1	$f16,1280(s1)
    d464:	0c000000 	jal	0 <func_80938CD0>
    d468:	e6320508 	swc1	$f18,1288(s1)
    d46c:	1000002b 	b	d51c <func_80945D14+0x4d8>
    d470:	24190002 	li	t9,2
    d474:	3c0141a0 	lui	at,0x41a0
    d478:	44816000 	mtc1	at,$f12
    d47c:	0c000000 	jal	0 <func_80938CD0>
    d480:	00000000 	nop
    d484:	3c0141a0 	lui	at,0x41a0
    d488:	44816000 	mtc1	at,$f12
    d48c:	0c000000 	jal	0 <func_80938CD0>
    d490:	e7a000dc 	swc1	$f0,220(sp)
    d494:	3c0141a0 	lui	at,0x41a0
    d498:	44816000 	mtc1	at,$f12
    d49c:	0c000000 	jal	0 <func_80938CD0>
    d4a0:	e7a000e0 	swc1	$f0,224(sp)
    d4a4:	3c014120 	lui	at,0x4120
    d4a8:	44816000 	mtc1	at,$f12
    d4ac:	e7a000e4 	swc1	$f0,228(sp)
    d4b0:	e7b400d0 	swc1	$f20,208(sp)
    d4b4:	e7b400d4 	swc1	$f20,212(sp)
    d4b8:	0c000000 	jal	0 <func_80938CD0>
    d4bc:	e7b400d8 	swc1	$f20,216(sp)
    d4c0:	3c0141c8 	lui	at,0x41c8
    d4c4:	44812000 	mtc1	at,$f4
    d4c8:	02402025 	move	a0,s2
    d4cc:	8fa50050 	lw	a1,80(sp)
    d4d0:	46040180 	add.s	$f6,$f0,$f4
    d4d4:	27a600dc 	addiu	a2,sp,220
    d4d8:	27a700d0 	addiu	a3,sp,208
    d4dc:	e7a60010 	swc1	$f6,16(sp)
    d4e0:	86380566 	lh	t8,1382(s1)
    d4e4:	0c000000 	jal	0 <func_80938CD0>
    d4e8:	afb80014 	sw	t8,20(sp)
    d4ec:	26100001 	addiu	s0,s0,1
    d4f0:	00108400 	sll	s0,s0,0x10
    d4f4:	00108403 	sra	s0,s0,0x10
    d4f8:	2a010032 	slti	at,s0,50
    d4fc:	5420ffde 	bnezl	at,d478 <func_80945D14+0x434>
    d500:	3c0141a0 	lui	at,0x41a0
    d504:	3c013f00 	lui	at,0x3f00
    d508:	44814000 	mtc1	at,$f8
    d50c:	3c010001 	lui	at,0x1
    d510:	00320821 	addu	at,at,s2
    d514:	e4280afc 	swc1	$f8,2812(at)
    d518:	24190002 	li	t9,2
    d51c:	24080014 	li	t0,20
    d520:	a6390440 	sh	t9,1088(s1)
    d524:	1000019a 	b	db90 <func_80945D14+0xb4c>
    d528:	a6280178 	sh	t0,376(s1)
    d52c:	8d4c0000 	lw	t4,0(t2)
    d530:	8d4b0004 	lw	t3,4(t2)
    d534:	25ce0000 	addiu	t6,t6,0
    d538:	ad2c0000 	sw	t4,0(t1)
    d53c:	8d4c0008 	lw	t4,8(t2)
    d540:	ad2b0004 	sw	t3,4(t1)
    d544:	3c014220 	lui	at,0x4220
    d548:	ad2c0008 	sw	t4,8(t1)
    d54c:	8dd80000 	lw	t8,0(t6)
    d550:	8dcf0004 	lw	t7,4(t6)
    d554:	4481a000 	mtc1	at,$f20
    d558:	adb80000 	sw	t8,0(t5)
    d55c:	8dd80008 	lw	t8,8(t6)
    d560:	00008025 	move	s0,zero
    d564:	adaf0004 	sw	t7,4(t5)
    d568:	adb80008 	sw	t8,8(t5)
    d56c:	3c010000 	lui	at,0x0
    d570:	0c000000 	jal	0 <func_80938CD0>
    d574:	c42c0000 	lwc1	$f12,0(at)
    d578:	4600028d 	trunc.w.s	$f10,$f0
    d57c:	27b900c4 	addiu	t9,sp,196
    d580:	4600a306 	mov.s	$f12,$f20
    d584:	44095000 	mfc1	t1,$f10
    d588:	00000000 	nop
    d58c:	00095400 	sll	t2,t1,0x10
    d590:	000a5c03 	sra	t3,t2,0x10
    d594:	000b6080 	sll	t4,t3,0x2
    d598:	018b6023 	subu	t4,t4,t3
    d59c:	000c6080 	sll	t4,t4,0x2
    d5a0:	022c6821 	addu	t5,s1,t4
    d5a4:	8daf01e8 	lw	t7,488(t5)
    d5a8:	af2f0000 	sw	t7,0(t9)
    d5ac:	8dae01ec 	lw	t6,492(t5)
    d5b0:	af2e0004 	sw	t6,4(t9)
    d5b4:	8daf01f0 	lw	t7,496(t5)
    d5b8:	0c000000 	jal	0 <func_80938CD0>
    d5bc:	af2f0008 	sw	t7,8(t9)
    d5c0:	c7b000c4 	lwc1	$f16,196(sp)
    d5c4:	4600a306 	mov.s	$f12,$f20
    d5c8:	46008480 	add.s	$f18,$f16,$f0
    d5cc:	0c000000 	jal	0 <func_80938CD0>
    d5d0:	e7b200c4 	swc1	$f18,196(sp)
    d5d4:	c7a400c8 	lwc1	$f4,200(sp)
    d5d8:	4600a306 	mov.s	$f12,$f20
    d5dc:	46002180 	add.s	$f6,$f4,$f0
    d5e0:	0c000000 	jal	0 <func_80938CD0>
    d5e4:	e7a600c8 	swc1	$f6,200(sp)
    d5e8:	c7a800cc 	lwc1	$f8,204(sp)
    d5ec:	3c010000 	lui	at,0x0
    d5f0:	c4300000 	lwc1	$f16,0(at)
    d5f4:	46004280 	add.s	$f10,$f8,$f0
    d5f8:	3c013f00 	lui	at,0x3f00
    d5fc:	44816000 	mtc1	at,$f12
    d600:	e7b000b0 	swc1	$f16,176(sp)
    d604:	0c000000 	jal	0 <func_80938CD0>
    d608:	e7aa00cc 	swc1	$f10,204(sp)
    d60c:	3c013f00 	lui	at,0x3f00
    d610:	44816000 	mtc1	at,$f12
    d614:	0c000000 	jal	0 <func_80938CD0>
    d618:	e7a000ac 	swc1	$f0,172(sp)
    d61c:	3c014000 	lui	at,0x4000
    d620:	44816000 	mtc1	at,$f12
    d624:	0c000000 	jal	0 <func_80938CD0>
    d628:	e7a000b4 	swc1	$f0,180(sp)
    d62c:	4600048d 	trunc.w.s	$f18,$f0
    d630:	240c004b 	li	t4,75
    d634:	afac0018 	sw	t4,24(sp)
    d638:	02402025 	move	a0,s2
    d63c:	44089000 	mfc1	t0,$f18
    d640:	27a500c4 	addiu	a1,sp,196
    d644:	27a600b8 	addiu	a2,sp,184
    d648:	00084c00 	sll	t1,t0,0x10
    d64c:	00095403 	sra	t2,t1,0x10
    d650:	254b0008 	addiu	t3,t2,8
    d654:	448b2000 	mtc1	t3,$f4
    d658:	27a700ac 	addiu	a3,sp,172
    d65c:	afa00014 	sw	zero,20(sp)
    d660:	468021a0 	cvt.s.w	$f6,$f4
    d664:	0c000000 	jal	0 <func_80938CD0>
    d668:	e7a60010 	swc1	$f6,16(sp)
    d66c:	26100001 	addiu	s0,s0,1
    d670:	00108400 	sll	s0,s0,0x10
    d674:	00108403 	sra	s0,s0,0x10
    d678:	2a01000a 	slti	at,s0,10
    d67c:	1420ffbb 	bnez	at,d56c <func_80945D14+0x528>
    d680:	00000000 	nop
    d684:	10000143 	b	db94 <func_80945D14+0xb50>
    d688:	8fbf0044 	lw	ra,68(sp)
    d68c:	4480a000 	mtc1	zero,$f20
    d690:	262401ac 	addiu	a0,s1,428
    d694:	3c063f80 	lui	a2,0x3f80
    d698:	4405a000 	mfc1	a1,$f20
    d69c:	0c000000 	jal	0 <func_80938CD0>
    d6a0:	3c074170 	lui	a3,0x4170
    d6a4:	86390178 	lh	t9,376(s1)
    d6a8:	5720013a 	bnezl	t9,db94 <func_80945D14+0xb50>
    d6ac:	8fbf0044 	lw	ra,68(sp)
    d6b0:	0c000000 	jal	0 <func_80938CD0>
    d6b4:	02202025 	move	a0,s1
    d6b8:	10000136 	b	db94 <func_80945D14+0xb50>
    d6bc:	8fbf0044 	lw	ra,68(sp)
    d6c0:	86220178 	lh	v0,376(s1)
    d6c4:	24030001 	li	v1,1
    d6c8:	3c0d0000 	lui	t5,0x0
    d6cc:	104000b8 	beqz	v0,d9b0 <func_80945D14+0x96c>
    d6d0:	3c190000 	lui	t9,0x0
    d6d4:	14620003 	bne	v1,v0,d6e4 <func_80945D14+0x6a0>
    d6d8:	02202025 	move	a0,s1
    d6dc:	3c010000 	lui	at,0x0
    d6e0:	a0200000 	sb	zero,0(at)
    d6e4:	91ad0000 	lbu	t5,0(t5)
    d6e8:	146d0002 	bne	v1,t5,d6f4 <func_80945D14+0x6b0>
    d6ec:	00000000 	nop
    d6f0:	a6200178 	sh	zero,376(s1)
    d6f4:	0c000000 	jal	0 <func_80938CD0>
    d6f8:	240520b2 	li	a1,8370
    d6fc:	3c0f0000 	lui	t7,0x0
    d700:	8def0000 	lw	t7,0(t7)
    d704:	3c0e0000 	lui	t6,0x0
    d708:	25ce0000 	addiu	t6,t6,0
    d70c:	8df8014c 	lw	t8,332(t7)
    d710:	24020014 	li	v0,20
    d714:	15d80003 	bne	t6,t8,d724 <func_80945D14+0x6e0>
    d718:	00000000 	nop
    d71c:	10000001 	b	d724 <func_80945D14+0x6e0>
    d720:	24020046 	li	v0,70
    d724:	86280178 	lh	t0,376(s1)
    d728:	0048082a 	slt	at,v0,t0
    d72c:	10200060 	beqz	at,d8b0 <func_80945D14+0x86c>
    d730:	3c0143a0 	lui	at,0x43a0
    d734:	4481a000 	mtc1	at,$f20
    d738:	0c000000 	jal	0 <func_80938CD0>
    d73c:	4600a306 	mov.s	$f12,$f20
    d740:	3c090000 	lui	t1,0x0
    d744:	8d290000 	lw	t1,0(t1)
    d748:	4600a306 	mov.s	$f12,$f20
    d74c:	c52804bc 	lwc1	$f8,1212(t1)
    d750:	46080280 	add.s	$f10,$f0,$f8
    d754:	0c000000 	jal	0 <func_80938CD0>
    d758:	e7aa009c 	swc1	$f10,156(sp)
    d75c:	3c020000 	lui	v0,0x0
    d760:	8c420000 	lw	v0,0(v0)
    d764:	4480a000 	mtc1	zero,$f20
    d768:	3c010000 	lui	at,0x0
    d76c:	c45004c4 	lwc1	$f16,1220(v0)
    d770:	c4260000 	lwc1	$f6,0(at)
    d774:	3c0140a0 	lui	at,0x40a0
    d778:	46100480 	add.s	$f18,$f0,$f16
    d77c:	44816000 	mtc1	at,$f12
    d780:	e7b200a4 	swc1	$f18,164(sp)
    d784:	c44404c0 	lwc1	$f4,1216(v0)
    d788:	e7b40090 	swc1	$f20,144(sp)
    d78c:	e7b40094 	swc1	$f20,148(sp)
    d790:	e7b40098 	swc1	$f20,152(sp)
    d794:	e7b40084 	swc1	$f20,132(sp)
    d798:	e7b4008c 	swc1	$f20,140(sp)
    d79c:	e7a60088 	swc1	$f6,136(sp)
    d7a0:	0c000000 	jal	0 <func_80938CD0>
    d7a4:	e7a400a0 	swc1	$f4,160(sp)
    d7a8:	3c0141a0 	lui	at,0x41a0
    d7ac:	44814000 	mtc1	at,$f8
    d7b0:	27b0009c 	addiu	s0,sp,156
    d7b4:	27aa0084 	addiu	t2,sp,132
    d7b8:	46080280 	add.s	$f10,$f0,$f8
    d7bc:	240b0050 	li	t3,80
    d7c0:	afab0020 	sw	t3,32(sp)
    d7c4:	afaa0010 	sw	t2,16(sp)
    d7c8:	e7aa0014 	swc1	$f10,20(sp)
    d7cc:	02003025 	move	a2,s0
    d7d0:	02402025 	move	a0,s2
    d7d4:	24050003 	li	a1,3
    d7d8:	27a70090 	addiu	a3,sp,144
    d7dc:	afa00018 	sw	zero,24(sp)
    d7e0:	0c000000 	jal	0 <func_80938CD0>
    d7e4:	afa0001c 	sw	zero,28(sp)
    d7e8:	3c014120 	lui	at,0x4120
    d7ec:	44816000 	mtc1	at,$f12
    d7f0:	0c000000 	jal	0 <func_80938CD0>
    d7f4:	00000000 	nop
    d7f8:	3c014120 	lui	at,0x4120
    d7fc:	44816000 	mtc1	at,$f12
    d800:	0c000000 	jal	0 <func_80938CD0>
    d804:	e7a00090 	swc1	$f0,144(sp)
    d808:	3c014040 	lui	at,0x4040
    d80c:	44816000 	mtc1	at,$f12
    d810:	0c000000 	jal	0 <func_80938CD0>
    d814:	e7a00098 	swc1	$f0,152(sp)
    d818:	3c013f00 	lui	at,0x3f00
    d81c:	44811000 	mtc1	at,$f2
    d820:	3c014040 	lui	at,0x4040
    d824:	44818000 	mtc1	at,$f16
    d828:	c7a60090 	lwc1	$f6,144(sp)
    d82c:	3c020000 	lui	v0,0x0
    d830:	46100480 	add.s	$f18,$f0,$f16
    d834:	46023202 	mul.s	$f8,$f6,$f2
    d838:	8c420000 	lw	v0,0(v0)
    d83c:	3c0140a0 	lui	at,0x40a0
    d840:	e7b20094 	swc1	$f18,148(sp)
    d844:	c44404bc 	lwc1	$f4,1212(v0)
    d848:	c7b20098 	lwc1	$f18,152(sp)
    d84c:	44816000 	mtc1	at,$f12
    d850:	46082280 	add.s	$f10,$f4,$f8
    d854:	46029182 	mul.s	$f6,$f18,$f2
    d858:	e7aa009c 	swc1	$f10,156(sp)
    d85c:	c45004c4 	lwc1	$f16,1220(v0)
    d860:	46068100 	add.s	$f4,$f16,$f6
    d864:	0c000000 	jal	0 <func_80938CD0>
    d868:	e7a400a4 	swc1	$f4,164(sp)
    d86c:	3c014170 	lui	at,0x4170
    d870:	44814000 	mtc1	at,$f8
    d874:	27ac0084 	addiu	t4,sp,132
    d878:	241900ff 	li	t9,255
    d87c:	46080280 	add.s	$f10,$f0,$f8
    d880:	240d0002 	li	t5,2
    d884:	240f0082 	li	t7,130
    d888:	afaf0020 	sw	t7,32(sp)
    d88c:	afad001c 	sw	t5,28(sp)
    d890:	e7aa0014 	swc1	$f10,20(sp)
    d894:	afb90018 	sw	t9,24(sp)
    d898:	afac0010 	sw	t4,16(sp)
    d89c:	02402025 	move	a0,s2
    d8a0:	24050003 	li	a1,3
    d8a4:	02003025 	move	a2,s0
    d8a8:	0c000000 	jal	0 <func_80938CD0>
    d8ac:	27a70090 	addiu	a3,sp,144
    d8b0:	3c040000 	lui	a0,0x0
    d8b4:	8c840000 	lw	a0,0(a0)
    d8b8:	3c0542a0 	lui	a1,0x42a0
    d8bc:	3c063f80 	lui	a2,0x3f80
    d8c0:	3c074040 	lui	a3,0x4040
    d8c4:	0c000000 	jal	0 <func_80938CD0>
    d8c8:	248401a8 	addiu	a0,a0,424
    d8cc:	3c040000 	lui	a0,0x0
    d8d0:	8c840000 	lw	a0,0(a0)
    d8d4:	3c05437f 	lui	a1,0x437f
    d8d8:	3c063f80 	lui	a2,0x3f80
    d8dc:	3c074120 	lui	a3,0x4120
    d8e0:	0c000000 	jal	0 <func_80938CD0>
    d8e4:	248401b0 	addiu	a0,a0,432
    d8e8:	3c040000 	lui	a0,0x0
    d8ec:	8c840000 	lw	a0,0(a0)
    d8f0:	3c053d23 	lui	a1,0x3d23
    d8f4:	3c063dcc 	lui	a2,0x3dcc
    d8f8:	3c073b03 	lui	a3,0x3b03
    d8fc:	34e7126f 	ori	a3,a3,0x126f
    d900:	34c6cccd 	ori	a2,a2,0xcccd
    d904:	34a5d70a 	ori	a1,a1,0xd70a
    d908:	0c000000 	jal	0 <func_80938CD0>
    d90c:	248401b4 	addiu	a0,a0,436
    d910:	3c040000 	lui	a0,0x0
    d914:	8c840000 	lw	a0,0(a0)
    d918:	3c05428c 	lui	a1,0x428c
    d91c:	3c063f80 	lui	a2,0x3f80
    d920:	3c0740a0 	lui	a3,0x40a0
    d924:	0c000000 	jal	0 <func_80938CD0>
    d928:	248401c4 	addiu	a0,a0,452
    d92c:	86220178 	lh	v0,376(s1)
    d930:	24010046 	li	at,70
    d934:	3c0e0000 	lui	t6,0x0
    d938:	10410002 	beq	v0,at,d944 <func_80945D14+0x900>
    d93c:	2401001e 	li	at,30
    d940:	14410005 	bne	v0,at,d958 <func_80945D14+0x914>
    d944:	3c014120 	lui	at,0x4120
    d948:	44819000 	mtc1	at,$f18
    d94c:	8dce0000 	lw	t6,0(t6)
    d950:	e5d201c4 	swc1	$f18,452(t6)
    d954:	86220178 	lh	v0,376(s1)
    d958:	30580003 	andi	t8,v0,0x3
    d95c:	1700008c 	bnez	t8,db90 <func_80945D14+0xb4c>
    d960:	3c010000 	lui	at,0x0
    d964:	0c000000 	jal	0 <func_80938CD0>
    d968:	c42c0000 	lwc1	$f12,0(at)
    d96c:	4600040d 	trunc.w.s	$f16,$f0
    d970:	3c010000 	lui	at,0x0
    d974:	c4340000 	lwc1	$f20,0(at)
    d978:	3c014120 	lui	at,0x4120
    d97c:	44098000 	mfc1	t1,$f16
    d980:	44815000 	mtc1	at,$f10
    d984:	3c0c0000 	lui	t4,0x0
    d988:	00095400 	sll	t2,t1,0x10
    d98c:	000a5c03 	sra	t3,t2,0x10
    d990:	448b3000 	mtc1	t3,$f6
    d994:	8d8c0000 	lw	t4,0(t4)
    d998:	468030a0 	cvt.s.w	$f2,$f6
    d99c:	46021100 	add.s	$f4,$f2,$f2
    d9a0:	46142202 	mul.s	$f8,$f4,$f20
    d9a4:	460a4483 	div.s	$f18,$f8,$f10
    d9a8:	10000079 	b	db90 <func_80945D14+0xb4c>
    d9ac:	e59201c0 	swc1	$f18,448(t4)
    d9b0:	93390000 	lbu	t9,0(t9)
    d9b4:	24010001 	li	at,1
    d9b8:	3c020000 	lui	v0,0x0
    d9bc:	5721004a 	bnel	t9,at,dae8 <func_80945D14+0xaa4>
    d9c0:	3c013f80 	lui	at,0x3f80
    d9c4:	3c020000 	lui	v0,0x0
    d9c8:	8c420000 	lw	v0,0(v0)
    d9cc:	3c013f80 	lui	at,0x3f80
    d9d0:	44818000 	mtc1	at,$f16
    d9d4:	c44601b0 	lwc1	$f6,432(v0)
    d9d8:	4606803c 	c.lt.s	$f16,$f6
    d9dc:	00000000 	nop
    d9e0:	4502003c 	bc1fl	dad4 <func_80945D14+0xa90>
    d9e4:	3c014040 	lui	at,0x4040
    d9e8:	4480a000 	mtc1	zero,$f20
    d9ec:	00008025 	move	s0,zero
    d9f0:	3c01438c 	lui	at,0x438c
    d9f4:	44816000 	mtc1	at,$f12
    d9f8:	0c000000 	jal	0 <func_80938CD0>
    d9fc:	00000000 	nop
    da00:	3c0d0000 	lui	t5,0x0
    da04:	8dad0000 	lw	t5,0(t5)
    da08:	3c01438c 	lui	at,0x438c
    da0c:	44816000 	mtc1	at,$f12
    da10:	c5a404bc 	lwc1	$f4,1212(t5)
    da14:	46040200 	add.s	$f8,$f0,$f4
    da18:	0c000000 	jal	0 <func_80938CD0>
    da1c:	e7a80074 	swc1	$f8,116(sp)
    da20:	3c020000 	lui	v0,0x0
    da24:	8c420000 	lw	v0,0(v0)
    da28:	3c0141f0 	lui	at,0x41f0
    da2c:	44813000 	mtc1	at,$f6
    da30:	c44a04c4 	lwc1	$f10,1220(v0)
    da34:	3c010000 	lui	at,0x0
    da38:	c4280000 	lwc1	$f8,0(at)
    da3c:	460a0480 	add.s	$f18,$f0,$f10
    da40:	3c0140a0 	lui	at,0x40a0
    da44:	44816000 	mtc1	at,$f12
    da48:	e7b2007c 	swc1	$f18,124(sp)
    da4c:	c45004c0 	lwc1	$f16,1216(v0)
    da50:	e7b40068 	swc1	$f20,104(sp)
    da54:	e7b4006c 	swc1	$f20,108(sp)
    da58:	46068100 	add.s	$f4,$f16,$f6
    da5c:	e7b40070 	swc1	$f20,112(sp)
    da60:	e7b4005c 	swc1	$f20,92(sp)
    da64:	e7b40064 	swc1	$f20,100(sp)
    da68:	e7a40078 	swc1	$f4,120(sp)
    da6c:	0c000000 	jal	0 <func_80938CD0>
    da70:	e7a80060 	swc1	$f8,96(sp)
    da74:	3c0141a0 	lui	at,0x41a0
    da78:	44815000 	mtc1	at,$f10
    da7c:	27af005c 	addiu	t7,sp,92
    da80:	240e0050 	li	t6,80
    da84:	460a0480 	add.s	$f18,$f0,$f10
    da88:	afae0020 	sw	t6,32(sp)
    da8c:	afaf0010 	sw	t7,16(sp)
    da90:	02402025 	move	a0,s2
    da94:	e7b20014 	swc1	$f18,20(sp)
    da98:	24050003 	li	a1,3
    da9c:	27a60074 	addiu	a2,sp,116
    daa0:	27a70068 	addiu	a3,sp,104
    daa4:	afa00018 	sw	zero,24(sp)
    daa8:	0c000000 	jal	0 <func_80938CD0>
    daac:	afa0001c 	sw	zero,28(sp)
    dab0:	26100001 	addiu	s0,s0,1
    dab4:	00108400 	sll	s0,s0,0x10
    dab8:	00108403 	sra	s0,s0,0x10
    dabc:	2a010003 	slti	at,s0,3
    dac0:	5420ffcc 	bnezl	at,d9f4 <func_80945D14+0x9b0>
    dac4:	3c01438c 	lui	at,0x438c
    dac8:	3c020000 	lui	v0,0x0
    dacc:	8c420000 	lw	v0,0(v0)
    dad0:	3c014040 	lui	at,0x4040
    dad4:	4480a000 	mtc1	zero,$f20
    dad8:	44810000 	mtc1	at,$f0
    dadc:	10000005 	b	daf4 <func_80945D14+0xab0>
    dae0:	00000000 	nop
    dae4:	3c013f80 	lui	at,0x3f80
    dae8:	44810000 	mtc1	at,$f0
    daec:	4480a000 	mtc1	zero,$f20
    daf0:	8c420000 	lw	v0,0(v0)
    daf4:	3c010000 	lui	at,0x0
    daf8:	c4300000 	lwc1	$f16,0(at)
    dafc:	4405a000 	mfc1	a1,$f20
    db00:	244401bc 	addiu	a0,v0,444
    db04:	46008182 	mul.s	$f6,$f16,$f0
    db08:	3c063f80 	lui	a2,0x3f80
    db0c:	e7a00080 	swc1	$f0,128(sp)
    db10:	44073000 	mfc1	a3,$f6
    db14:	0c000000 	jal	0 <func_80938CD0>
    db18:	00000000 	nop
    db1c:	3c0140a0 	lui	at,0x40a0
    db20:	c7a00080 	lwc1	$f0,128(sp)
    db24:	44812000 	mtc1	at,$f4
    db28:	3c040000 	lui	a0,0x0
    db2c:	8c840000 	lw	a0,0(a0)
    db30:	46002202 	mul.s	$f8,$f4,$f0
    db34:	4405a000 	mfc1	a1,$f20
    db38:	3c063f80 	lui	a2,0x3f80
    db3c:	248401b0 	addiu	a0,a0,432
    db40:	44074000 	mfc1	a3,$f8
    db44:	0c000000 	jal	0 <func_80938CD0>
    db48:	00000000 	nop
    db4c:	c7a00080 	lwc1	$f0,128(sp)
    db50:	3c040000 	lui	a0,0x0
    db54:	8c840000 	lw	a0,0(a0)
    db58:	4405a000 	mfc1	a1,$f20
    db5c:	44070000 	mfc1	a3,$f0
    db60:	3c063f80 	lui	a2,0x3f80
    db64:	0c000000 	jal	0 <func_80938CD0>
    db68:	248401a8 	addiu	a0,a0,424
    db6c:	3c180000 	lui	t8,0x0
    db70:	8f180000 	lw	t8,0(t8)
    db74:	c70a01a8 	lwc1	$f10,424(t8)
    db78:	4614503e 	c.le.s	$f10,$f20
    db7c:	00000000 	nop
    db80:	45020004 	bc1fl	db94 <func_80945D14+0xb50>
    db84:	8fbf0044 	lw	ra,68(sp)
    db88:	0c000000 	jal	0 <func_80938CD0>
    db8c:	02202025 	move	a0,s1
    db90:	8fbf0044 	lw	ra,68(sp)
    db94:	d7b40030 	ldc1	$f20,48(sp)
    db98:	8fb00038 	lw	s0,56(sp)
    db9c:	8fb1003c 	lw	s1,60(sp)
    dba0:	8fb20040 	lw	s2,64(sp)
    dba4:	03e00008 	jr	ra
    dba8:	27bd0128 	addiu	sp,sp,296

0000dbac <func_8094687C>:
    dbac:	27bdffd8 	addiu	sp,sp,-40
    dbb0:	afbf001c 	sw	ra,28(sp)
    dbb4:	afb00018 	sw	s0,24(sp)
    dbb8:	afa5002c 	sw	a1,44(sp)
    dbbc:	8caf1c44 	lw	t7,7236(a1)
    dbc0:	24010001 	li	at,1
    dbc4:	00808025 	move	s0,a0
    dbc8:	afaf0024 	sw	t7,36(sp)
    dbcc:	84980440 	lh	t8,1088(a0)
    dbd0:	00003025 	move	a2,zero
    dbd4:	57010092 	bnel	t8,at,de20 <func_8094687C+0x274>
    dbd8:	8fbf001c 	lw	ra,28(sp)
    dbdc:	908305bd 	lbu	v1,1469(a0)
    dbe0:	30790002 	andi	t9,v1,0x2
    dbe4:	1320008d 	beqz	t9,de1c <func_8094687C+0x270>
    dbe8:	3068fffd 	andi	t0,v1,0xfffd
    dbec:	920905bc 	lbu	t1,1468(s0)
    dbf0:	8e0205e8 	lw	v0,1512(s0)
    dbf4:	a20805bd 	sb	t0,1469(s0)
    dbf8:	312afffd 	andi	t2,t1,0xfffd
    dbfc:	a20a05bc 	sb	t2,1468(s0)
    dc00:	8c4b0000 	lw	t3,0(v0)
    dc04:	240d0007 	li	t5,7
    dc08:	3c013f80 	lui	at,0x3f80
    dc0c:	000b62c0 	sll	t4,t3,0xb
    dc10:	05810082 	bgez	t4,de1c <func_8094687C+0x270>
    dc14:	24050064 	li	a1,100
    dc18:	a60d015a 	sh	t5,346(s0)
    dc1c:	8fae002c 	lw	t6,44(sp)
    dc20:	44812000 	mtc1	at,$f4
    dc24:	3c010001 	lui	at,0x1
    dc28:	44806000 	mtc1	zero,$f12
    dc2c:	002e0821 	addu	at,at,t6
    dc30:	24060005 	li	a2,5
    dc34:	24070004 	li	a3,4
    dc38:	0c000000 	jal	0 <func_80938CD0>
    dc3c:	e4240afc 	swc1	$f4,2812(at)
    dc40:	0c000000 	jal	0 <func_80938CD0>
    dc44:	8fa4002c 	lw	a0,44(sp)
    dc48:	10400062 	beqz	v0,ddd4 <func_8094687C+0x228>
    dc4c:	8fa4002c 	lw	a0,44(sp)
    dc50:	860f0566 	lh	t7,1382(s0)
    dc54:	24010001 	li	at,1
    dc58:	3c070000 	lui	a3,0x0
    dc5c:	15e1001f 	bne	t7,at,dcdc <func_8094687C+0x130>
    dc60:	24e70000 	addiu	a3,a3,0
    dc64:	3c030000 	lui	v1,0x0
    dc68:	24630000 	addiu	v1,v1,0
    dc6c:	90780000 	lbu	t8,0(v1)
    dc70:	24060001 	li	a2,1
    dc74:	3c054120 	lui	a1,0x4120
    dc78:	13000007 	beqz	t8,dc98 <func_8094687C+0xec>
    dc7c:	00000000 	nop
    dc80:	a0600000 	sb	zero,0(v1)
    dc84:	0c000000 	jal	0 <func_80938CD0>
    dc88:	3c054120 	lui	a1,0x4120
    dc8c:	3c070000 	lui	a3,0x0
    dc90:	1000000f 	b	dcd0 <func_8094687C+0x124>
    dc94:	24e70000 	addiu	a3,a3,0
    dc98:	0c000000 	jal	0 <func_80938CD0>
    dc9c:	24060001 	li	a2,1
    dca0:	3c070000 	lui	a3,0x0
    dca4:	24e70000 	addiu	a3,a3,0
    dca8:	90f90000 	lbu	t9,0(a3)
    dcac:	3c010000 	lui	at,0x0
    dcb0:	240cfff9 	li	t4,-7
    dcb4:	27290001 	addiu	t1,t9,1
    dcb8:	00095040 	sll	t2,t1,0x1
    dcbc:	a0e90000 	sb	t1,0(a3)
    dcc0:	254b0008 	addiu	t3,t2,8
    dcc4:	a02b0000 	sb	t3,0(at)
    dcc8:	3c010000 	lui	at,0x0
    dccc:	a42c0000 	sh	t4,0(at)
    dcd0:	3c020000 	lui	v0,0x0
    dcd4:	1000001f 	b	dd54 <func_8094687C+0x1a8>
    dcd8:	90420000 	lbu	v0,0(v0)
    dcdc:	90ed0000 	lbu	t5,0(a3)
    dce0:	00003025 	move	a2,zero
    dce4:	3c054120 	lui	a1,0x4120
    dce8:	11a00009 	beqz	t5,dd10 <func_8094687C+0x164>
    dcec:	00000000 	nop
    dcf0:	a0e00000 	sb	zero,0(a3)
    dcf4:	0c000000 	jal	0 <func_80938CD0>
    dcf8:	3c054120 	lui	a1,0x4120
    dcfc:	3c070000 	lui	a3,0x0
    dd00:	3c020000 	lui	v0,0x0
    dd04:	90420000 	lbu	v0,0(v0)
    dd08:	10000012 	b	dd54 <func_8094687C+0x1a8>
    dd0c:	24e70000 	addiu	a3,a3,0
    dd10:	0c000000 	jal	0 <func_80938CD0>
    dd14:	00003025 	move	a2,zero
    dd18:	3c030000 	lui	v1,0x0
    dd1c:	24630000 	addiu	v1,v1,0
    dd20:	906e0000 	lbu	t6,0(v1)
    dd24:	3c010000 	lui	at,0x0
    dd28:	3c070000 	lui	a3,0x0
    dd2c:	25cf0001 	addiu	t7,t6,1
    dd30:	31e200ff 	andi	v0,t7,0xff
    dd34:	0002c040 	sll	t8,v0,0x1
    dd38:	a06f0000 	sb	t7,0(v1)
    dd3c:	27190008 	addiu	t9,t8,8
    dd40:	a0390000 	sb	t9,0(at)
    dd44:	3c010000 	lui	at,0x0
    dd48:	2408fff9 	li	t0,-7
    dd4c:	24e70000 	addiu	a3,a3,0
    dd50:	a4280000 	sh	t0,0(at)
    dd54:	28410003 	slti	at,v0,3
    dd58:	10200006 	beqz	at,dd74 <func_8094687C+0x1c8>
    dd5c:	240a0050 	li	t2,80
    dd60:	90e90000 	lbu	t1,0(a3)
    dd64:	24190002 	li	t9,2
    dd68:	24080014 	li	t0,20
    dd6c:	29210003 	slti	at,t1,3
    dd70:	14200013 	bnez	at,ddc0 <func_8094687C+0x214>
    dd74:	240b000a 	li	t3,10
    dd78:	a60a0178 	sh	t2,376(s0)
    dd7c:	a60b0440 	sh	t3,1088(s0)
    dd80:	8fa40024 	lw	a0,36(sp)
    dd84:	26050524 	addiu	a1,s0,1316
    dd88:	00003025 	move	a2,zero
    dd8c:	0c000000 	jal	0 <func_80938CD0>
    dd90:	24840a20 	addiu	a0,a0,2592
    dd94:	860c0526 	lh	t4,1318(s0)
    dd98:	860e0524 	lh	t6,1316(s0)
    dd9c:	34018000 	li	at,0x8000
    dda0:	01816821 	addu	t5,t4,at
    dda4:	000e7823 	negu	t7,t6
    dda8:	a60d0526 	sh	t5,1318(s0)
    ddac:	a60f0524 	sh	t7,1316(s0)
    ddb0:	3c010000 	lui	at,0x0
    ddb4:	24180008 	li	t8,8
    ddb8:	10000017 	b	de18 <func_8094687C+0x26c>
    ddbc:	a0380000 	sb	t8,0(at)
    ddc0:	a6190440 	sh	t9,1088(s0)
    ddc4:	a6080178 	sh	t0,376(s0)
    ddc8:	3c010000 	lui	at,0x0
    ddcc:	10000012 	b	de18 <func_8094687C+0x26c>
    ddd0:	a0200000 	sb	zero,0(at)
    ddd4:	3c054120 	lui	a1,0x4120
    ddd8:	0c000000 	jal	0 <func_80938CD0>
    dddc:	86060566 	lh	a2,1382(s0)
    dde0:	24090002 	li	t1,2
    dde4:	240a0014 	li	t2,20
    dde8:	3c030000 	lui	v1,0x0
    ddec:	3c070000 	lui	a3,0x0
    ddf0:	a6090440 	sh	t1,1088(s0)
    ddf4:	a60a0178 	sh	t2,376(s0)
    ddf8:	3c010000 	lui	at,0x0
    ddfc:	24e70000 	addiu	a3,a3,0
    de00:	24630000 	addiu	v1,v1,0
    de04:	a0200000 	sb	zero,0(at)
    de08:	a0600000 	sb	zero,0(v1)
    de0c:	a0e00000 	sb	zero,0(a3)
    de10:	0c000000 	jal	0 <func_80938CD0>
    de14:	24041838 	li	a0,6200
    de18:	24060001 	li	a2,1
    de1c:	8fbf001c 	lw	ra,28(sp)
    de20:	8fb00018 	lw	s0,24(sp)
    de24:	27bd0028 	addiu	sp,sp,40
    de28:	03e00008 	jr	ra
    de2c:	00c01025 	move	v0,a2

0000de30 <func_80946B00>:
    de30:	27bdffc8 	addiu	sp,sp,-56
    de34:	afbf001c 	sw	ra,28(sp)
    de38:	afb00018 	sw	s0,24(sp)
    de3c:	afa5003c 	sw	a1,60(sp)
    de40:	84880156 	lh	t0,342(a0)
    de44:	848e0150 	lh	t6,336(a0)
    de48:	84980152 	lh	t8,338(a0)
    de4c:	25090001 	addiu	t1,t0,1
    de50:	a4890156 	sh	t1,342(a0)
    de54:	84820156 	lh	v0,342(a0)
    de58:	25cf0001 	addiu	t7,t6,1
    de5c:	27190001 	addiu	t9,t8,1
    de60:	2841001e 	slti	at,v0,30
    de64:	00808025 	move	s0,a0
    de68:	a48f0150 	sh	t7,336(a0)
    de6c:	14200003 	bnez	at,de7c <func_80946B00+0x4c>
    de70:	a4990152 	sh	t9,338(a0)
    de74:	a4800156 	sh	zero,342(a0)
    de78:	84820156 	lh	v0,342(a0)
    de7c:	26060024 	addiu	a2,s0,36
    de80:	00025080 	sll	t2,v0,0x2
    de84:	8ccd0000 	lw	t5,0(a2)
    de88:	01425023 	subu	t2,t2,v0
    de8c:	000a5080 	sll	t2,t2,0x2
    de90:	020a5821 	addu	t3,s0,t2
    de94:	ad6d01e8 	sw	t5,488(t3)
    de98:	8ccc0004 	lw	t4,4(a2)
    de9c:	02002025 	move	a0,s0
    dea0:	ad6c01ec 	sw	t4,492(t3)
    dea4:	8ccd0008 	lw	t5,8(a2)
    dea8:	ad6d01f0 	sw	t5,496(t3)
    deac:	afa60020 	sw	a2,32(sp)
    deb0:	8e19014c 	lw	t9,332(s0)
    deb4:	8fa5003c 	lw	a1,60(sp)
    deb8:	0320f809 	jalr	t9
    debc:	00000000 	nop
    dec0:	8fa60020 	lw	a2,32(sp)
    dec4:	00001025 	move	v0,zero
    dec8:	00027040 	sll	t6,v0,0x1
    decc:	020e1821 	addu	v1,s0,t6
    ded0:	84640178 	lh	a0,376(v1)
    ded4:	24420001 	addiu	v0,v0,1
    ded8:	00021400 	sll	v0,v0,0x10
    dedc:	10800003 	beqz	a0,deec <func_80946B00+0xbc>
    dee0:	00021403 	sra	v0,v0,0x10
    dee4:	248fffff 	addiu	t7,a0,-1
    dee8:	a46f0178 	sh	t7,376(v1)
    deec:	28410005 	slti	at,v0,5
    def0:	5420fff6 	bnezl	at,decc <func_80946B00+0x9c>
    def4:	00027040 	sll	t6,v0,0x1
    def8:	8602015a 	lh	v0,346(s0)
    defc:	10400002 	beqz	v0,df08 <func_80946B00+0xd8>
    df00:	2458ffff 	addiu	t8,v0,-1
    df04:	a618015a 	sh	t8,346(s0)
    df08:	86020168 	lh	v0,360(s0)
    df0c:	10400002 	beqz	v0,df18 <func_80946B00+0xe8>
    df10:	2448ffff 	addiu	t0,v0,-1
    df14:	a6080168 	sh	t0,360(s0)
    df18:	8cca0000 	lw	t2,0(a2)
    df1c:	260505ac 	addiu	a1,s0,1452
    df20:	02002025 	move	a0,s0
    df24:	ae0a0038 	sw	t2,56(s0)
    df28:	8cc90004 	lw	t1,4(a2)
    df2c:	ae09003c 	sw	t1,60(s0)
    df30:	8cca0008 	lw	t2,8(a2)
    df34:	ae0a0040 	sw	t2,64(s0)
    df38:	0c000000 	jal	0 <func_80938CD0>
    df3c:	afa50024 	sw	a1,36(sp)
    df40:	920b0565 	lbu	t3,1381(s0)
    df44:	51600014 	beqzl	t3,df98 <func_80946B00+0x168>
    df48:	a2000565 	sb	zero,1381(s0)
    df4c:	860c015a 	lh	t4,346(s0)
    df50:	02002025 	move	a0,s0
    df54:	55800010 	bnezl	t4,df98 <func_80946B00+0x168>
    df58:	a2000565 	sb	zero,1381(s0)
    df5c:	0c000000 	jal	0 <func_80938CD0>
    df60:	8fa5003c 	lw	a1,60(sp)
    df64:	1440000b 	bnez	v0,df94 <func_80946B00+0x164>
    df68:	8fa4003c 	lw	a0,60(sp)
    df6c:	3c010001 	lui	at,0x1
    df70:	34211e60 	ori	at,at,0x1e60
    df74:	00812821 	addu	a1,a0,at
    df78:	afa50028 	sw	a1,40(sp)
    df7c:	0c000000 	jal	0 <func_80938CD0>
    df80:	8fa60024 	lw	a2,36(sp)
    df84:	8fa50028 	lw	a1,40(sp)
    df88:	8fa4003c 	lw	a0,60(sp)
    df8c:	0c000000 	jal	0 <func_80938CD0>
    df90:	8fa60024 	lw	a2,36(sp)
    df94:	a2000565 	sb	zero,1381(s0)
    df98:	8fbf001c 	lw	ra,28(sp)
    df9c:	8fb00018 	lw	s0,24(sp)
    dfa0:	27bd0038 	addiu	sp,sp,56
    dfa4:	03e00008 	jr	ra
    dfa8:	00000000 	nop

0000dfac <func_80946C7C>:
    dfac:	27bdff30 	addiu	sp,sp,-208
    dfb0:	afb40058 	sw	s4,88(sp)
    dfb4:	00a0a025 	move	s4,a1
    dfb8:	afbf006c 	sw	ra,108(sp)
    dfbc:	afbe0068 	sw	s8,104(sp)
    dfc0:	afb70064 	sw	s7,100(sp)
    dfc4:	afb60060 	sw	s6,96(sp)
    dfc8:	afb5005c 	sw	s5,92(sp)
    dfcc:	afb30054 	sw	s3,84(sp)
    dfd0:	afb20050 	sw	s2,80(sp)
    dfd4:	afb1004c 	sw	s1,76(sp)
    dfd8:	afb00048 	sw	s0,72(sp)
    dfdc:	f7b60040 	sdc1	$f22,64(sp)
    dfe0:	f7b40038 	sdc1	$f20,56(sp)
    dfe4:	8ca50000 	lw	a1,0(a1)
    dfe8:	00809825 	move	s3,a0
    dfec:	3c060000 	lui	a2,0x0
    dff0:	24c60000 	addiu	a2,a2,0
    dff4:	27a400ac 	addiu	a0,sp,172
    dff8:	24072272 	li	a3,8818
    dffc:	0c000000 	jal	0 <func_80938CD0>
    e000:	00a09025 	move	s2,a1
    e004:	0c000000 	jal	0 <func_80938CD0>
    e008:	8e840000 	lw	a0,0(s4)
    e00c:	8662001c 	lh	v0,28(s3)
    e010:	24010064 	li	at,100
    e014:	3c0ffa00 	lui	t7,0xfa00
    e018:	1041000b 	beq	v0,at,e048 <func_80946C7C+0x9c>
    e01c:	3c0dfb00 	lui	t5,0xfb00
    e020:	24010065 	li	at,101
    e024:	1041013e 	beq	v0,at,e520 <func_80946C7C+0x574>
    e028:	24010066 	li	at,102
    e02c:	1041009b 	beq	v0,at,e29c <func_80946C7C+0x2f0>
    e030:	3c0ffa00 	lui	t7,0xfa00
    e034:	24010067 	li	at,103
    e038:	10410139 	beq	v0,at,e520 <func_80946C7C+0x574>
    e03c:	00000000 	nop
    e040:	10000137 	b	e520 <func_80946C7C+0x574>
    e044:	00000000 	nop
    e048:	8e4202d0 	lw	v0,720(s2)
    e04c:	3c01c814 	lui	at,0xc814
    e050:	3c080000 	lui	t0,0x0
    e054:	244e0008 	addiu	t6,v0,8
    e058:	ae4e02d0 	sw	t6,720(s2)
    e05c:	ac4f0000 	sw	t7,0(v0)
    e060:	c66401ac 	lwc1	$f4,428(s3)
    e064:	3c0effd7 	lui	t6,0xffd7
    e068:	35ceff80 	ori	t6,t6,0xff80
    e06c:	4600218d 	trunc.w.s	$f6,$f4
    e070:	25080000 	addiu	t0,t0,0
    e074:	3c15db06 	lui	s5,0xdb06
    e078:	36b50020 	ori	s5,s5,0x20
    e07c:	44093000 	mfc1	t1,$f6
    e080:	24100009 	li	s0,9
    e084:	241e000f 	li	s8,15
    e088:	312a00ff 	andi	t2,t1,0xff
    e08c:	01415825 	or	t3,t2,at
    e090:	ac4b0004 	sw	t3,4(v0)
    e094:	8e4202d0 	lw	v0,720(s2)
    e098:	3c0100ff 	lui	at,0xff
    e09c:	3421ffff 	ori	at,at,0xffff
    e0a0:	244c0008 	addiu	t4,v0,8
    e0a4:	ae4c02d0 	sw	t4,720(s2)
    e0a8:	ac4e0004 	sw	t6,4(v0)
    e0ac:	ac4d0000 	sw	t5,0(v0)
    e0b0:	3c020602 	lui	v0,0x602
    e0b4:	2442a430 	addiu	v0,v0,-23504
    e0b8:	00415024 	and	t2,v0,at
    e0bc:	3c010001 	lui	at,0x1
    e0c0:	34211da0 	ori	at,at,0x1da0
    e0c4:	02815821 	addu	t3,s4,at
    e0c8:	3c010000 	lui	at,0x0
    e0cc:	00027900 	sll	t7,v0,0x4
    e0d0:	000fc702 	srl	t8,t7,0x1c
    e0d4:	c4360000 	lwc1	$f22,0(at)
    e0d8:	3c013f80 	lui	at,0x3f80
    e0dc:	0018c880 	sll	t9,t8,0x2
    e0e0:	03284821 	addu	t1,t9,t0
    e0e4:	4481a000 	mtc1	at,$f20
    e0e8:	afa90078 	sw	t1,120(sp)
    e0ec:	afab0070 	sw	t3,112(sp)
    e0f0:	afaa0074 	sw	t2,116(sp)
    e0f4:	2417000a 	li	s7,10
    e0f8:	24160003 	li	s6,3
    e0fc:	8e4202d0 	lw	v0,720(s2)
    e100:	0010c880 	sll	t9,s0,0x2
    e104:	0330c823 	subu	t9,t9,s0
    e108:	244c0008 	addiu	t4,v0,8
    e10c:	ae4c02d0 	sw	t4,720(s2)
    e110:	ac550000 	sw	s5,0(v0)
    e114:	86630150 	lh	v1,336(s3)
    e118:	8e840000 	lw	a0,0(s4)
    e11c:	0019c8c0 	sll	t9,t9,0x3
    e120:	00760019 	multu	v1,s6
    e124:	00037823 	negu	t7,v1
    e128:	0330c821 	addu	t9,t9,s0
    e12c:	0019c840 	sll	t9,t9,0x1
    e130:	240c0020 	li	t4,32
    e134:	24080020 	li	t0,32
    e138:	24090040 	li	t1,64
    e13c:	240a0001 	li	t2,1
    e140:	240b0020 	li	t3,32
    e144:	afab0024 	sw	t3,36(sp)
    e148:	00006812 	mflo	t5
    e14c:	afaa0018 	sw	t2,24(sp)
    e150:	afa90014 	sw	t1,20(sp)
    e154:	02170019 	multu	s0,s7
    e158:	afa80010 	sw	t0,16(sp)
    e15c:	afac0028 	sw	t4,40(sp)
    e160:	afa00020 	sw	zero,32(sp)
    e164:	afa0001c 	sw	zero,28(sp)
    e168:	00002825 	move	a1,zero
    e16c:	00408825 	move	s1,v0
    e170:	00007012 	mflo	t6
    e174:	01ae3021 	addu	a2,t5,t6
    e178:	30c6007f 	andi	a2,a2,0x7f
    e17c:	01fe0019 	multu	t7,s8
    e180:	0000c012 	mflo	t8
    e184:	03193821 	addu	a3,t8,t9
    e188:	0c000000 	jal	0 <func_80938CD0>
    e18c:	30e700ff 	andi	a3,a3,0xff
    e190:	ae220004 	sw	v0,4(s1)
    e194:	866d0156 	lh	t5,342(s3)
    e198:	2401001e 	li	at,30
    e19c:	00003825 	move	a3,zero
    e1a0:	01b01823 	subu	v1,t5,s0
    e1a4:	2463001e 	addiu	v1,v1,30
    e1a8:	0061001a 	div	zero,v1,at
    e1ac:	00001810 	mfhi	v1
    e1b0:	00031c00 	sll	v1,v1,0x10
    e1b4:	00031c03 	sra	v1,v1,0x10
    e1b8:	00037080 	sll	t6,v1,0x2
    e1bc:	01c37023 	subu	t6,t6,v1
    e1c0:	000e7080 	sll	t6,t6,0x2
    e1c4:	026e1021 	addu	v0,s3,t6
    e1c8:	c44c01e8 	lwc1	$f12,488(v0)
    e1cc:	c44e01ec 	lwc1	$f14,492(v0)
    e1d0:	0c000000 	jal	0 <func_80938CD0>
    e1d4:	8c4601f0 	lw	a2,496(v0)
    e1d8:	44904000 	mtc1	s0,$f8
    e1dc:	c6720050 	lwc1	$f18,80(s3)
    e1e0:	c6640054 	lwc1	$f4,84(s3)
    e1e4:	468042a0 	cvt.s.w	$f10,$f8
    e1e8:	c6660058 	lwc1	$f6,88(s3)
    e1ec:	24070001 	li	a3,1
    e1f0:	46165402 	mul.s	$f16,$f10,$f22
    e1f4:	4610a001 	sub.s	$f0,$f20,$f16
    e1f8:	46009302 	mul.s	$f12,$f18,$f0
    e1fc:	00000000 	nop
    e200:	46002382 	mul.s	$f14,$f4,$f0
    e204:	00000000 	nop
    e208:	46003202 	mul.s	$f8,$f6,$f0
    e20c:	44064000 	mfc1	a2,$f8
    e210:	0c000000 	jal	0 <func_80938CD0>
    e214:	00000000 	nop
    e218:	0c000000 	jal	0 <func_80938CD0>
    e21c:	8fa40070 	lw	a0,112(sp)
    e220:	8e4202d0 	lw	v0,720(s2)
    e224:	3c18da38 	lui	t8,0xda38
    e228:	37180003 	ori	t8,t8,0x3
    e22c:	244f0008 	addiu	t7,v0,8
    e230:	ae4f02d0 	sw	t7,720(s2)
    e234:	3c050000 	lui	a1,0x0
    e238:	ac580000 	sw	t8,0(v0)
    e23c:	8e840000 	lw	a0,0(s4)
    e240:	24a50000 	addiu	a1,a1,0
    e244:	240622a1 	li	a2,8865
    e248:	0c000000 	jal	0 <func_80938CD0>
    e24c:	00408825 	move	s1,v0
    e250:	ae220004 	sw	v0,4(s1)
    e254:	8e4202d0 	lw	v0,720(s2)
    e258:	3c08de00 	lui	t0,0xde00
    e25c:	2610ffff 	addiu	s0,s0,-1
    e260:	24590008 	addiu	t9,v0,8
    e264:	ae5902d0 	sw	t9,720(s2)
    e268:	ac480000 	sw	t0,0(v0)
    e26c:	8fa90078 	lw	t1,120(sp)
    e270:	8fab0074 	lw	t3,116(sp)
    e274:	00108400 	sll	s0,s0,0x10
    e278:	8d2a0000 	lw	t2,0(t1)
    e27c:	3c018000 	lui	at,0x8000
    e280:	00108403 	sra	s0,s0,0x10
    e284:	014b6021 	addu	t4,t2,t3
    e288:	01816821 	addu	t5,t4,at
    e28c:	0601ff9b 	bgez	s0,e0fc <func_80946C7C+0x150>
    e290:	ac4d0004 	sw	t5,4(v0)
    e294:	100000a2 	b	e520 <func_80946C7C+0x574>
    e298:	00000000 	nop
    e29c:	8e4202d0 	lw	v0,720(s2)
    e2a0:	3c01c3e1 	lui	at,0xc3e1
    e2a4:	3421eb00 	ori	at,at,0xeb00
    e2a8:	244e0008 	addiu	t6,v0,8
    e2ac:	ae4e02d0 	sw	t6,720(s2)
    e2b0:	ac4f0000 	sw	t7,0(v0)
    e2b4:	c66a01ac 	lwc1	$f10,428(s3)
    e2b8:	3c040602 	lui	a0,0x602
    e2bc:	2484a998 	addiu	a0,a0,-22120
    e2c0:	4600540d 	trunc.w.s	$f16,$f10
    e2c4:	00047100 	sll	t6,a0,0x4
    e2c8:	000e7f02 	srl	t7,t6,0x1c
    e2cc:	000fc080 	sll	t8,t7,0x2
    e2d0:	44098000 	mfc1	t1,$f16
    e2d4:	3c0dde00 	lui	t5,0xde00
    e2d8:	3c190000 	lui	t9,0x0
    e2dc:	312a00ff 	andi	t2,t1,0xff
    e2e0:	01415825 	or	t3,t2,at
    e2e4:	ac4b0004 	sw	t3,4(v0)
    e2e8:	8e4202d0 	lw	v0,720(s2)
    e2ec:	3c0100ff 	lui	at,0xff
    e2f0:	0338c821 	addu	t9,t9,t8
    e2f4:	244c0008 	addiu	t4,v0,8
    e2f8:	ae4c02d0 	sw	t4,720(s2)
    e2fc:	ac4d0000 	sw	t5,0(v0)
    e300:	8f390000 	lw	t9,0(t9)
    e304:	3421ffff 	ori	at,at,0xffff
    e308:	00814024 	and	t0,a0,at
    e30c:	3c018000 	lui	at,0x8000
    e310:	03284821 	addu	t1,t9,t0
    e314:	01215021 	addu	t2,t1,at
    e318:	ac4a0004 	sw	t2,4(v0)
    e31c:	3c020602 	lui	v0,0x602
    e320:	3c0100ff 	lui	at,0xff
    e324:	3421ffff 	ori	at,at,0xffff
    e328:	2442ab00 	addiu	v0,v0,-21760
    e32c:	0041c024 	and	t8,v0,at
    e330:	3c010001 	lui	at,0x1
    e334:	34211da0 	ori	at,at,0x1da0
    e338:	0281c821 	addu	t9,s4,at
    e33c:	3c010000 	lui	at,0x0
    e340:	00025900 	sll	t3,v0,0x4
    e344:	000b6702 	srl	t4,t3,0x1c
    e348:	c4360000 	lwc1	$f22,0(at)
    e34c:	3c0e0000 	lui	t6,0x0
    e350:	25ce0000 	addiu	t6,t6,0
    e354:	3c013f80 	lui	at,0x3f80
    e358:	000c6880 	sll	t5,t4,0x2
    e35c:	01ae7821 	addu	t7,t5,t6
    e360:	3c15db06 	lui	s5,0xdb06
    e364:	4481a000 	mtc1	at,$f20
    e368:	36b50020 	ori	s5,s5,0x20
    e36c:	afaf0078 	sw	t7,120(sp)
    e370:	afb90070 	sw	t9,112(sp)
    e374:	afb80074 	sw	t8,116(sp)
    e378:	24100009 	li	s0,9
    e37c:	241e000f 	li	s8,15
    e380:	2417000a 	li	s7,10
    e384:	24160003 	li	s6,3
    e388:	8e4202d0 	lw	v0,720(s2)
    e38c:	00106880 	sll	t5,s0,0x2
    e390:	01b06823 	subu	t5,t5,s0
    e394:	24480008 	addiu	t0,v0,8
    e398:	ae4802d0 	sw	t0,720(s2)
    e39c:	ac550000 	sw	s5,0(v0)
    e3a0:	86630150 	lh	v1,336(s3)
    e3a4:	8e840000 	lw	a0,0(s4)
    e3a8:	000d68c0 	sll	t5,t5,0x3
    e3ac:	00760019 	multu	v1,s6
    e3b0:	00035823 	negu	t3,v1
    e3b4:	01b06821 	addu	t5,t5,s0
    e3b8:	000d6840 	sll	t5,t5,0x1
    e3bc:	24080020 	li	t0,32
    e3c0:	240e0020 	li	t6,32
    e3c4:	240f0040 	li	t7,64
    e3c8:	24180001 	li	t8,1
    e3cc:	24190020 	li	t9,32
    e3d0:	afb90024 	sw	t9,36(sp)
    e3d4:	00004812 	mflo	t1
    e3d8:	afb80018 	sw	t8,24(sp)
    e3dc:	afaf0014 	sw	t7,20(sp)
    e3e0:	02170019 	multu	s0,s7
    e3e4:	afae0010 	sw	t6,16(sp)
    e3e8:	afa80028 	sw	t0,40(sp)
    e3ec:	afa00020 	sw	zero,32(sp)
    e3f0:	afa0001c 	sw	zero,28(sp)
    e3f4:	00002825 	move	a1,zero
    e3f8:	00408825 	move	s1,v0
    e3fc:	00005012 	mflo	t2
    e400:	012a3021 	addu	a2,t1,t2
    e404:	30c6007f 	andi	a2,a2,0x7f
    e408:	017e0019 	multu	t3,s8
    e40c:	00006012 	mflo	t4
    e410:	018d3821 	addu	a3,t4,t5
    e414:	0c000000 	jal	0 <func_80938CD0>
    e418:	30e700ff 	andi	a3,a3,0xff
    e41c:	ae220004 	sw	v0,4(s1)
    e420:	86690156 	lh	t1,342(s3)
    e424:	2401001e 	li	at,30
    e428:	00003825 	move	a3,zero
    e42c:	01301823 	subu	v1,t1,s0
    e430:	2463001e 	addiu	v1,v1,30
    e434:	0061001a 	div	zero,v1,at
    e438:	00001810 	mfhi	v1
    e43c:	00031c00 	sll	v1,v1,0x10
    e440:	00031c03 	sra	v1,v1,0x10
    e444:	00035080 	sll	t2,v1,0x2
    e448:	01435023 	subu	t2,t2,v1
    e44c:	000a5080 	sll	t2,t2,0x2
    e450:	026a1021 	addu	v0,s3,t2
    e454:	c44c01e8 	lwc1	$f12,488(v0)
    e458:	c44e01ec 	lwc1	$f14,492(v0)
    e45c:	0c000000 	jal	0 <func_80938CD0>
    e460:	8c4601f0 	lw	a2,496(v0)
    e464:	44909000 	mtc1	s0,$f18
    e468:	c6680050 	lwc1	$f8,80(s3)
    e46c:	c66a0054 	lwc1	$f10,84(s3)
    e470:	46809120 	cvt.s.w	$f4,$f18
    e474:	c6700058 	lwc1	$f16,88(s3)
    e478:	24070001 	li	a3,1
    e47c:	46162182 	mul.s	$f6,$f4,$f22
    e480:	4606a001 	sub.s	$f0,$f20,$f6
    e484:	46004302 	mul.s	$f12,$f8,$f0
    e488:	00000000 	nop
    e48c:	46005382 	mul.s	$f14,$f10,$f0
    e490:	00000000 	nop
    e494:	46008482 	mul.s	$f18,$f16,$f0
    e498:	44069000 	mfc1	a2,$f18
    e49c:	0c000000 	jal	0 <func_80938CD0>
    e4a0:	00000000 	nop
    e4a4:	0c000000 	jal	0 <func_80938CD0>
    e4a8:	8fa40070 	lw	a0,112(sp)
    e4ac:	8e4202d0 	lw	v0,720(s2)
    e4b0:	3c0cda38 	lui	t4,0xda38
    e4b4:	358c0003 	ori	t4,t4,0x3
    e4b8:	244b0008 	addiu	t3,v0,8
    e4bc:	ae4b02d0 	sw	t3,720(s2)
    e4c0:	3c050000 	lui	a1,0x0
    e4c4:	ac4c0000 	sw	t4,0(v0)
    e4c8:	8e840000 	lw	a0,0(s4)
    e4cc:	24a50000 	addiu	a1,a1,0
    e4d0:	2406232c 	li	a2,9004
    e4d4:	0c000000 	jal	0 <func_80938CD0>
    e4d8:	00408825 	move	s1,v0
    e4dc:	ae220004 	sw	v0,4(s1)
    e4e0:	8e4202d0 	lw	v0,720(s2)
    e4e4:	3c0ede00 	lui	t6,0xde00
    e4e8:	2610ffff 	addiu	s0,s0,-1
    e4ec:	244d0008 	addiu	t5,v0,8
    e4f0:	ae4d02d0 	sw	t5,720(s2)
    e4f4:	ac4e0000 	sw	t6,0(v0)
    e4f8:	8faf0078 	lw	t7,120(sp)
    e4fc:	8fb90074 	lw	t9,116(sp)
    e500:	00108400 	sll	s0,s0,0x10
    e504:	8df80000 	lw	t8,0(t7)
    e508:	3c018000 	lui	at,0x8000
    e50c:	00108403 	sra	s0,s0,0x10
    e510:	03194021 	addu	t0,t8,t9
    e514:	01014821 	addu	t1,t0,at
    e518:	0601ff9b 	bgez	s0,e388 <func_80946C7C+0x3dc>
    e51c:	ac490004 	sw	t1,4(v0)
    e520:	3c060000 	lui	a2,0x0
    e524:	24c60000 	addiu	a2,a2,0
    e528:	27a400ac 	addiu	a0,sp,172
    e52c:	8e850000 	lw	a1,0(s4)
    e530:	0c000000 	jal	0 <func_80938CD0>
    e534:	24072335 	li	a3,9013
    e538:	8fbf006c 	lw	ra,108(sp)
    e53c:	d7b40038 	ldc1	$f20,56(sp)
    e540:	d7b60040 	ldc1	$f22,64(sp)
    e544:	8fb00048 	lw	s0,72(sp)
    e548:	8fb1004c 	lw	s1,76(sp)
    e54c:	8fb20050 	lw	s2,80(sp)
    e550:	8fb30054 	lw	s3,84(sp)
    e554:	8fb40058 	lw	s4,88(sp)
    e558:	8fb5005c 	lw	s5,92(sp)
    e55c:	8fb60060 	lw	s6,96(sp)
    e560:	8fb70064 	lw	s7,100(sp)
    e564:	8fbe0068 	lw	s8,104(sp)
    e568:	03e00008 	jr	ra
    e56c:	27bd00d0 	addiu	sp,sp,208

0000e570 <func_80947240>:
    e570:	27bdff30 	addiu	sp,sp,-208
    e574:	afb40058 	sw	s4,88(sp)
    e578:	00a0a025 	move	s4,a1
    e57c:	afbf006c 	sw	ra,108(sp)
    e580:	afbe0068 	sw	s8,104(sp)
    e584:	afb70064 	sw	s7,100(sp)
    e588:	afb60060 	sw	s6,96(sp)
    e58c:	afb5005c 	sw	s5,92(sp)
    e590:	afb30054 	sw	s3,84(sp)
    e594:	afb20050 	sw	s2,80(sp)
    e598:	afb1004c 	sw	s1,76(sp)
    e59c:	afb00048 	sw	s0,72(sp)
    e5a0:	f7b60040 	sdc1	$f22,64(sp)
    e5a4:	f7b40038 	sdc1	$f20,56(sp)
    e5a8:	8ca50000 	lw	a1,0(a1)
    e5ac:	00809825 	move	s3,a0
    e5b0:	3c060000 	lui	a2,0x0
    e5b4:	24c60000 	addiu	a2,a2,0
    e5b8:	27a400ac 	addiu	a0,sp,172
    e5bc:	24072344 	li	a3,9028
    e5c0:	0c000000 	jal	0 <func_80938CD0>
    e5c4:	00a09025 	move	s2,a1
    e5c8:	0c000000 	jal	0 <func_80938CD0>
    e5cc:	8e840000 	lw	a0,0(s4)
    e5d0:	866e001c 	lh	t6,28(s3)
    e5d4:	24010069 	li	at,105
    e5d8:	3c18fa00 	lui	t8,0xfa00
    e5dc:	15c10098 	bne	t6,at,e840 <func_80947240+0x2d0>
    e5e0:	3c040602 	lui	a0,0x602
    e5e4:	8e4202d0 	lw	v0,720(s2)
    e5e8:	3c18fa00 	lui	t8,0xfa00
    e5ec:	3c01c814 	lui	at,0xc814
    e5f0:	244f0008 	addiu	t7,v0,8
    e5f4:	ae4f02d0 	sw	t7,720(s2)
    e5f8:	ac580000 	sw	t8,0(v0)
    e5fc:	c66401ac 	lwc1	$f4,428(s3)
    e600:	3c0fffd7 	lui	t7,0xffd7
    e604:	35efff80 	ori	t7,t7,0xff80
    e608:	4600218d 	trunc.w.s	$f6,$f4
    e60c:	3c0efb00 	lui	t6,0xfb00
    e610:	3c090000 	lui	t1,0x0
    e614:	25290000 	addiu	t1,t1,0
    e618:	440a3000 	mfc1	t2,$f6
    e61c:	3c15db06 	lui	s5,0xdb06
    e620:	36b50020 	ori	s5,s5,0x20
    e624:	314b00ff 	andi	t3,t2,0xff
    e628:	01616025 	or	t4,t3,at
    e62c:	ac4c0004 	sw	t4,4(v0)
    e630:	8e4202d0 	lw	v0,720(s2)
    e634:	3c0100ff 	lui	at,0xff
    e638:	3421ffff 	ori	at,at,0xffff
    e63c:	244d0008 	addiu	t5,v0,8
    e640:	ae4d02d0 	sw	t5,720(s2)
    e644:	ac4f0004 	sw	t7,4(v0)
    e648:	ac4e0000 	sw	t6,0(v0)
    e64c:	3c020602 	lui	v0,0x602
    e650:	2442a430 	addiu	v0,v0,-23504
    e654:	00415824 	and	t3,v0,at
    e658:	3c010001 	lui	at,0x1
    e65c:	34211da0 	ori	at,at,0x1da0
    e660:	02816021 	addu	t4,s4,at
    e664:	3c010000 	lui	at,0x0
    e668:	0002c100 	sll	t8,v0,0x4
    e66c:	0018cf02 	srl	t9,t8,0x1c
    e670:	c4360000 	lwc1	$f22,0(at)
    e674:	3c013f80 	lui	at,0x3f80
    e678:	00194080 	sll	t0,t9,0x2
    e67c:	01095021 	addu	t2,t0,t1
    e680:	4481a000 	mtc1	at,$f20
    e684:	afaa007c 	sw	t2,124(sp)
    e688:	afac0074 	sw	t4,116(sp)
    e68c:	afab0078 	sw	t3,120(sp)
    e690:	24100009 	li	s0,9
    e694:	241e000f 	li	s8,15
    e698:	2417000a 	li	s7,10
    e69c:	24160003 	li	s6,3
    e6a0:	8e4202d0 	lw	v0,720(s2)
    e6a4:	00104080 	sll	t0,s0,0x2
    e6a8:	01104023 	subu	t0,t0,s0
    e6ac:	244d0008 	addiu	t5,v0,8
    e6b0:	ae4d02d0 	sw	t5,720(s2)
    e6b4:	ac550000 	sw	s5,0(v0)
    e6b8:	86630150 	lh	v1,336(s3)
    e6bc:	8e840000 	lw	a0,0(s4)
    e6c0:	000840c0 	sll	t0,t0,0x3
    e6c4:	00760019 	multu	v1,s6
    e6c8:	0003c023 	negu	t8,v1
    e6cc:	01104021 	addu	t0,t0,s0
    e6d0:	00084040 	sll	t0,t0,0x1
    e6d4:	240d0020 	li	t5,32
    e6d8:	24090020 	li	t1,32
    e6dc:	240a0040 	li	t2,64
    e6e0:	240b0001 	li	t3,1
    e6e4:	240c0020 	li	t4,32
    e6e8:	afac0024 	sw	t4,36(sp)
    e6ec:	00007012 	mflo	t6
    e6f0:	afab0018 	sw	t3,24(sp)
    e6f4:	afaa0014 	sw	t2,20(sp)
    e6f8:	02170019 	multu	s0,s7
    e6fc:	afa90010 	sw	t1,16(sp)
    e700:	afad0028 	sw	t5,40(sp)
    e704:	afa00020 	sw	zero,32(sp)
    e708:	afa0001c 	sw	zero,28(sp)
    e70c:	00002825 	move	a1,zero
    e710:	00408825 	move	s1,v0
    e714:	00007812 	mflo	t7
    e718:	01cf3021 	addu	a2,t6,t7
    e71c:	30c6007f 	andi	a2,a2,0x7f
    e720:	031e0019 	multu	t8,s8
    e724:	0000c812 	mflo	t9
    e728:	03283821 	addu	a3,t9,t0
    e72c:	0c000000 	jal	0 <func_80938CD0>
    e730:	30e700ff 	andi	a3,a3,0xff
    e734:	ae220004 	sw	v0,4(s1)
    e738:	866e0156 	lh	t6,342(s3)
    e73c:	2401001e 	li	at,30
    e740:	00003825 	move	a3,zero
    e744:	01d01823 	subu	v1,t6,s0
    e748:	2463001e 	addiu	v1,v1,30
    e74c:	0061001a 	div	zero,v1,at
    e750:	00001810 	mfhi	v1
    e754:	00031c00 	sll	v1,v1,0x10
    e758:	00031c03 	sra	v1,v1,0x10
    e75c:	00037880 	sll	t7,v1,0x2
    e760:	01e37823 	subu	t7,t7,v1
    e764:	000f7880 	sll	t7,t7,0x2
    e768:	026f1021 	addu	v0,s3,t7
    e76c:	c44c01e8 	lwc1	$f12,488(v0)
    e770:	c44e01ec 	lwc1	$f14,492(v0)
    e774:	0c000000 	jal	0 <func_80938CD0>
    e778:	8c4601f0 	lw	a2,496(v0)
    e77c:	44904000 	mtc1	s0,$f8
    e780:	c6720050 	lwc1	$f18,80(s3)
    e784:	c6640054 	lwc1	$f4,84(s3)
    e788:	468042a0 	cvt.s.w	$f10,$f8
    e78c:	c6660058 	lwc1	$f6,88(s3)
    e790:	24070001 	li	a3,1
    e794:	46165402 	mul.s	$f16,$f10,$f22
    e798:	4610a001 	sub.s	$f0,$f20,$f16
    e79c:	46009302 	mul.s	$f12,$f18,$f0
    e7a0:	00000000 	nop
    e7a4:	46002382 	mul.s	$f14,$f4,$f0
    e7a8:	00000000 	nop
    e7ac:	46003202 	mul.s	$f8,$f6,$f0
    e7b0:	44064000 	mfc1	a2,$f8
    e7b4:	0c000000 	jal	0 <func_80938CD0>
    e7b8:	00000000 	nop
    e7bc:	0c000000 	jal	0 <func_80938CD0>
    e7c0:	8fa40074 	lw	a0,116(sp)
    e7c4:	8e4202d0 	lw	v0,720(s2)
    e7c8:	3c19da38 	lui	t9,0xda38
    e7cc:	37390003 	ori	t9,t9,0x3
    e7d0:	24580008 	addiu	t8,v0,8
    e7d4:	ae5802d0 	sw	t8,720(s2)
    e7d8:	3c050000 	lui	a1,0x0
    e7dc:	ac590000 	sw	t9,0(v0)
    e7e0:	8e840000 	lw	a0,0(s4)
    e7e4:	24a50000 	addiu	a1,a1,0
    e7e8:	2406236f 	li	a2,9071
    e7ec:	0c000000 	jal	0 <func_80938CD0>
    e7f0:	00408825 	move	s1,v0
    e7f4:	ae220004 	sw	v0,4(s1)
    e7f8:	8e4202d0 	lw	v0,720(s2)
    e7fc:	3c09de00 	lui	t1,0xde00
    e800:	2610ffff 	addiu	s0,s0,-1
    e804:	24480008 	addiu	t0,v0,8
    e808:	ae4802d0 	sw	t0,720(s2)
    e80c:	ac490000 	sw	t1,0(v0)
    e810:	8faa007c 	lw	t2,124(sp)
    e814:	8fac0078 	lw	t4,120(sp)
    e818:	00108400 	sll	s0,s0,0x10
    e81c:	8d4b0000 	lw	t3,0(t2)
    e820:	3c018000 	lui	at,0x8000
    e824:	00108403 	sra	s0,s0,0x10
    e828:	016c6821 	addu	t5,t3,t4
    e82c:	01a17021 	addu	t6,t5,at
    e830:	0601ff9b 	bgez	s0,e6a0 <func_80947240+0x130>
    e834:	ac4e0004 	sw	t6,4(v0)
    e838:	100000a1 	b	eac0 <func_80947240+0x550>
    e83c:	00000000 	nop
    e840:	8e4202d0 	lw	v0,720(s2)
    e844:	3c01c3e1 	lui	at,0xc3e1
    e848:	3421eb00 	ori	at,at,0xeb00
    e84c:	244f0008 	addiu	t7,v0,8
    e850:	ae4f02d0 	sw	t7,720(s2)
    e854:	ac580000 	sw	t8,0(v0)
    e858:	c66a01ac 	lwc1	$f10,428(s3)
    e85c:	2484a998 	addiu	a0,a0,-22120
    e860:	00047900 	sll	t7,a0,0x4
    e864:	4600540d 	trunc.w.s	$f16,$f10
    e868:	000fc702 	srl	t8,t7,0x1c
    e86c:	0018c880 	sll	t9,t8,0x2
    e870:	3c0ede00 	lui	t6,0xde00
    e874:	440a8000 	mfc1	t2,$f16
    e878:	3c080000 	lui	t0,0x0
    e87c:	01194021 	addu	t0,t0,t9
    e880:	314b00ff 	andi	t3,t2,0xff
    e884:	01616025 	or	t4,t3,at
    e888:	ac4c0004 	sw	t4,4(v0)
    e88c:	8e4202d0 	lw	v0,720(s2)
    e890:	3c0100ff 	lui	at,0xff
    e894:	3421ffff 	ori	at,at,0xffff
    e898:	244d0008 	addiu	t5,v0,8
    e89c:	ae4d02d0 	sw	t5,720(s2)
    e8a0:	ac4e0000 	sw	t6,0(v0)
    e8a4:	8d080000 	lw	t0,0(t0)
    e8a8:	00814824 	and	t1,a0,at
    e8ac:	3c018000 	lui	at,0x8000
    e8b0:	01095021 	addu	t2,t0,t1
    e8b4:	01415821 	addu	t3,t2,at
    e8b8:	ac4b0004 	sw	t3,4(v0)
    e8bc:	3c020602 	lui	v0,0x602
    e8c0:	3c0100ff 	lui	at,0xff
    e8c4:	3421ffff 	ori	at,at,0xffff
    e8c8:	2442ab00 	addiu	v0,v0,-21760
    e8cc:	0041c824 	and	t9,v0,at
    e8d0:	3c010001 	lui	at,0x1
    e8d4:	34211da0 	ori	at,at,0x1da0
    e8d8:	02814021 	addu	t0,s4,at
    e8dc:	3c010000 	lui	at,0x0
    e8e0:	00026100 	sll	t4,v0,0x4
    e8e4:	000c6f02 	srl	t5,t4,0x1c
    e8e8:	c4360000 	lwc1	$f22,0(at)
    e8ec:	3c0f0000 	lui	t7,0x0
    e8f0:	25ef0000 	addiu	t7,t7,0
    e8f4:	3c013f80 	lui	at,0x3f80
    e8f8:	000d7080 	sll	t6,t5,0x2
    e8fc:	01cfc021 	addu	t8,t6,t7
    e900:	3c15db06 	lui	s5,0xdb06
    e904:	4481a000 	mtc1	at,$f20
    e908:	36b50020 	ori	s5,s5,0x20
    e90c:	afb8007c 	sw	t8,124(sp)
    e910:	afa80074 	sw	t0,116(sp)
    e914:	afb90078 	sw	t9,120(sp)
    e918:	24100009 	li	s0,9
    e91c:	241e000f 	li	s8,15
    e920:	2417000a 	li	s7,10
    e924:	24160003 	li	s6,3
    e928:	8e4202d0 	lw	v0,720(s2)
    e92c:	00107080 	sll	t6,s0,0x2
    e930:	01d07023 	subu	t6,t6,s0
    e934:	24490008 	addiu	t1,v0,8
    e938:	ae4902d0 	sw	t1,720(s2)
    e93c:	ac550000 	sw	s5,0(v0)
    e940:	86630150 	lh	v1,336(s3)
    e944:	8e840000 	lw	a0,0(s4)
    e948:	000e70c0 	sll	t6,t6,0x3
    e94c:	00760019 	multu	v1,s6
    e950:	00036023 	negu	t4,v1
    e954:	01d07021 	addu	t6,t6,s0
    e958:	000e7040 	sll	t6,t6,0x1
    e95c:	24090020 	li	t1,32
    e960:	240f0020 	li	t7,32
    e964:	24180040 	li	t8,64
    e968:	24190001 	li	t9,1
    e96c:	24080020 	li	t0,32
    e970:	afa80024 	sw	t0,36(sp)
    e974:	00005012 	mflo	t2
    e978:	afb90018 	sw	t9,24(sp)
    e97c:	afb80014 	sw	t8,20(sp)
    e980:	02170019 	multu	s0,s7
    e984:	afaf0010 	sw	t7,16(sp)
    e988:	afa90028 	sw	t1,40(sp)
    e98c:	afa00020 	sw	zero,32(sp)
    e990:	afa0001c 	sw	zero,28(sp)
    e994:	00002825 	move	a1,zero
    e998:	00408825 	move	s1,v0
    e99c:	00005812 	mflo	t3
    e9a0:	014b3021 	addu	a2,t2,t3
    e9a4:	30c6007f 	andi	a2,a2,0x7f
    e9a8:	019e0019 	multu	t4,s8
    e9ac:	00006812 	mflo	t5
    e9b0:	01ae3821 	addu	a3,t5,t6
    e9b4:	0c000000 	jal	0 <func_80938CD0>
    e9b8:	30e700ff 	andi	a3,a3,0xff
    e9bc:	ae220004 	sw	v0,4(s1)
    e9c0:	866a0156 	lh	t2,342(s3)
    e9c4:	2401001e 	li	at,30
    e9c8:	00003825 	move	a3,zero
    e9cc:	01501823 	subu	v1,t2,s0
    e9d0:	2463001e 	addiu	v1,v1,30
    e9d4:	0061001a 	div	zero,v1,at
    e9d8:	00001810 	mfhi	v1
    e9dc:	00031c00 	sll	v1,v1,0x10
    e9e0:	00031c03 	sra	v1,v1,0x10
    e9e4:	00035880 	sll	t3,v1,0x2
    e9e8:	01635823 	subu	t3,t3,v1
    e9ec:	000b5880 	sll	t3,t3,0x2
    e9f0:	026b1021 	addu	v0,s3,t3
    e9f4:	c44c01e8 	lwc1	$f12,488(v0)
    e9f8:	c44e01ec 	lwc1	$f14,492(v0)
    e9fc:	0c000000 	jal	0 <func_80938CD0>
    ea00:	8c4601f0 	lw	a2,496(v0)
    ea04:	44909000 	mtc1	s0,$f18
    ea08:	c6680050 	lwc1	$f8,80(s3)
    ea0c:	c66a0054 	lwc1	$f10,84(s3)
    ea10:	46809120 	cvt.s.w	$f4,$f18
    ea14:	c6700058 	lwc1	$f16,88(s3)
    ea18:	24070001 	li	a3,1
    ea1c:	46162182 	mul.s	$f6,$f4,$f22
    ea20:	4606a001 	sub.s	$f0,$f20,$f6
    ea24:	46004302 	mul.s	$f12,$f8,$f0
    ea28:	00000000 	nop
    ea2c:	46005382 	mul.s	$f14,$f10,$f0
    ea30:	00000000 	nop
    ea34:	46008482 	mul.s	$f18,$f16,$f0
    ea38:	44069000 	mfc1	a2,$f18
    ea3c:	0c000000 	jal	0 <func_80938CD0>
    ea40:	00000000 	nop
    ea44:	0c000000 	jal	0 <func_80938CD0>
    ea48:	8fa40074 	lw	a0,116(sp)
    ea4c:	8e4202d0 	lw	v0,720(s2)
    ea50:	3c0dda38 	lui	t5,0xda38
    ea54:	35ad0003 	ori	t5,t5,0x3
    ea58:	244c0008 	addiu	t4,v0,8
    ea5c:	ae4c02d0 	sw	t4,720(s2)
    ea60:	3c050000 	lui	a1,0x0
    ea64:	ac4d0000 	sw	t5,0(v0)
    ea68:	8e840000 	lw	a0,0(s4)
    ea6c:	24a50000 	addiu	a1,a1,0
    ea70:	24062393 	li	a2,9107
    ea74:	0c000000 	jal	0 <func_80938CD0>
    ea78:	00408825 	move	s1,v0
    ea7c:	ae220004 	sw	v0,4(s1)
    ea80:	8e4202d0 	lw	v0,720(s2)
    ea84:	3c0fde00 	lui	t7,0xde00
    ea88:	2610ffff 	addiu	s0,s0,-1
    ea8c:	244e0008 	addiu	t6,v0,8
    ea90:	ae4e02d0 	sw	t6,720(s2)
    ea94:	ac4f0000 	sw	t7,0(v0)
    ea98:	8fb8007c 	lw	t8,124(sp)
    ea9c:	8fa80078 	lw	t0,120(sp)
    eaa0:	00108400 	sll	s0,s0,0x10
    eaa4:	8f190000 	lw	t9,0(t8)
    eaa8:	3c018000 	lui	at,0x8000
    eaac:	00108403 	sra	s0,s0,0x10
    eab0:	03284821 	addu	t1,t9,t0
    eab4:	01215021 	addu	t2,t1,at
    eab8:	0601ff9b 	bgez	s0,e928 <func_80947240+0x3b8>
    eabc:	ac4a0004 	sw	t2,4(v0)
    eac0:	3c060000 	lui	a2,0x0
    eac4:	24c60000 	addiu	a2,a2,0
    eac8:	27a400ac 	addiu	a0,sp,172
    eacc:	8e850000 	lw	a1,0(s4)
    ead0:	0c000000 	jal	0 <func_80938CD0>
    ead4:	24072397 	li	a3,9111
    ead8:	8fbf006c 	lw	ra,108(sp)
    eadc:	d7b40038 	ldc1	$f20,56(sp)
    eae0:	d7b60040 	ldc1	$f22,64(sp)
    eae4:	8fb00048 	lw	s0,72(sp)
    eae8:	8fb1004c 	lw	s1,76(sp)
    eaec:	8fb20050 	lw	s2,80(sp)
    eaf0:	8fb30054 	lw	s3,84(sp)
    eaf4:	8fb40058 	lw	s4,88(sp)
    eaf8:	8fb5005c 	lw	s5,92(sp)
    eafc:	8fb60060 	lw	s6,96(sp)
    eb00:	8fb70064 	lw	s7,100(sp)
    eb04:	8fbe0068 	lw	s8,104(sp)
    eb08:	03e00008 	jr	ra
    eb0c:	27bd00d0 	addiu	sp,sp,208

0000eb10 <func_809477E0>:
    eb10:	27bdfed8 	addiu	sp,sp,-296
    eb14:	3c010001 	lui	at,0x1
    eb18:	00811021 	addu	v0,a0,at
    eb1c:	f7be0058 	sdc1	$f30,88(sp)
    eb20:	3c01428c 	lui	at,0x428c
    eb24:	4481f000 	mtc1	at,$f30
    eb28:	f7bc0050 	sdc1	$f28,80(sp)
    eb2c:	f7ba0048 	sdc1	$f26,72(sp)
    eb30:	3c014120 	lui	at,0x4120
    eb34:	afbf0084 	sw	ra,132(sp)
    eb38:	afbe0080 	sw	s8,128(sp)
    eb3c:	afb7007c 	sw	s7,124(sp)
    eb40:	afb60078 	sw	s6,120(sp)
    eb44:	afb50074 	sw	s5,116(sp)
    eb48:	afb40070 	sw	s4,112(sp)
    eb4c:	afb3006c 	sw	s3,108(sp)
    eb50:	afb20068 	sw	s2,104(sp)
    eb54:	afb10064 	sw	s1,100(sp)
    eb58:	afb00060 	sw	s0,96(sp)
    eb5c:	f7b80040 	sdc1	$f24,64(sp)
    eb60:	f7b60038 	sdc1	$f22,56(sp)
    eb64:	f7b40030 	sdc1	$f20,48(sp)
    eb68:	4481e000 	mtc1	at,$f28
    eb6c:	3c01420c 	lui	at,0x420c
    eb70:	8c511e10 	lw	s1,7696(v0)
    eb74:	8c971c44 	lw	s7,7236(a0)
    eb78:	4481d000 	mtc1	at,$f26
    eb7c:	3c0141a0 	lui	at,0x41a0
    eb80:	3c120000 	lui	s2,0x0
    eb84:	3c1e0000 	lui	s8,0x0
    eb88:	4481c000 	mtc1	at,$f24
    eb8c:	4480a000 	mtc1	zero,$f20
    eb90:	00809825 	move	s3,a0
    eb94:	a3a00113 	sb	zero,275(sp)
    eb98:	27de0000 	addiu	s8,s8,0
    eb9c:	26520000 	addiu	s2,s2,0
    eba0:	afa20094 	sw	v0,148(sp)
    eba4:	a7a00110 	sh	zero,272(sp)
    eba8:	27b400f4 	addiu	s4,sp,244
    ebac:	27b500e8 	addiu	s5,sp,232
    ebb0:	27b600dc 	addiu	s6,sp,220
    ebb4:	922e0000 	lbu	t6,0(s1)
    ebb8:	24010001 	li	at,1
    ebbc:	51c0030d 	beqzl	t6,f7f4 <func_809477E0+0xce4>
    ebc0:	87a20110 	lh	v0,272(sp)
    ebc4:	c6200010 	lwc1	$f0,16(s1)
    ebc8:	c6240004 	lwc1	$f4,4(s1)
    ebcc:	c6220014 	lwc1	$f2,20(s1)
    ebd0:	c6280008 	lwc1	$f8,8(s1)
    ebd4:	c62c0018 	lwc1	$f12,24(s1)
    ebd8:	c630000c 	lwc1	$f16,12(s1)
    ebdc:	46002180 	add.s	$f6,$f4,$f0
    ebe0:	c624001c 	lwc1	$f4,28(s1)
    ebe4:	922f0001 	lbu	t7,1(s1)
    ebe8:	46024280 	add.s	$f10,$f8,$f2
    ebec:	c6280020 	lwc1	$f8,32(s1)
    ebf0:	e6260004 	swc1	$f6,4(s1)
    ebf4:	460c8480 	add.s	$f18,$f16,$f12
    ebf8:	c6300024 	lwc1	$f16,36(s1)
    ebfc:	e62a0008 	swc1	$f10,8(s1)
    ec00:	46040180 	add.s	$f6,$f0,$f4
    ec04:	e632000c 	swc1	$f18,12(s1)
    ec08:	92220000 	lbu	v0,0(s1)
    ec0c:	46081280 	add.s	$f10,$f2,$f8
    ec10:	25f80001 	addiu	t8,t7,1
    ec14:	a2380001 	sb	t8,1(s1)
    ec18:	46106480 	add.s	$f18,$f12,$f16
    ec1c:	e6260010 	swc1	$f6,16(s1)
    ec20:	e62a0014 	swc1	$f10,20(s1)
    ec24:	14410022 	bne	v0,at,ecb0 <func_809477E0+0x1a0>
    ec28:	e6320018 	swc1	$f18,24(s1)
    ec2c:	330300ff 	andi	v1,t8,0xff
    ec30:	8639002e 	lh	t9,46(s1)
    ec34:	04610004 	bgez	v1,ec48 <func_809477E0+0x138>
    ec38:	30630003 	andi	v1,v1,0x3
    ec3c:	10600002 	beqz	v1,ec48 <func_809477E0+0x138>
    ec40:	00000000 	nop
    ec44:	2463fffc 	addiu	v1,v1,-4
    ec48:	00031c00 	sll	v1,v1,0x10
    ec4c:	17200004 	bnez	t9,ec60 <func_809477E0+0x150>
    ec50:	00031c03 	sra	v1,v1,0x10
    ec54:	24630004 	addiu	v1,v1,4
    ec58:	00031c00 	sll	v1,v1,0x10
    ec5c:	00031c03 	sra	v1,v1,0x10
    ec60:	00034080 	sll	t0,v1,0x2
    ec64:	3c090000 	lui	t1,0x0
    ec68:	25290000 	addiu	t1,t1,0
    ec6c:	01034023 	subu	t0,t0,v1
    ec70:	01091021 	addu	v0,t0,t1
    ec74:	904a0000 	lbu	t2,0(v0)
    ec78:	862d002c 	lh	t5,44(s1)
    ec7c:	a22a0028 	sb	t2,40(s1)
    ec80:	904b0001 	lbu	t3,1(v0)
    ec84:	25aeffec 	addiu	t6,t5,-20
    ec88:	a22b0029 	sb	t3,41(s1)
    ec8c:	904c0002 	lbu	t4,2(v0)
    ec90:	a62e002c 	sh	t6,44(s1)
    ec94:	862f002c 	lh	t7,44(s1)
    ec98:	a22c002a 	sb	t4,42(s1)
    ec9c:	5de002d5 	bgtzl	t7,f7f4 <func_809477E0+0xce4>
    eca0:	87a20110 	lh	v0,272(sp)
    eca4:	a620002c 	sh	zero,44(s1)
    eca8:	100002d1 	b	f7f0 <func_809477E0+0xce0>
    ecac:	a2200000 	sb	zero,0(s1)
    ecb0:	24010003 	li	at,3
    ecb4:	10410003 	beq	v0,at,ecc4 <func_809477E0+0x1b4>
    ecb8:	24010002 	li	at,2
    ecbc:	54410025 	bnel	v0,at,ed54 <func_809477E0+0x244>
    ecc0:	24010006 	li	at,6
    ecc4:	8622002e 	lh	v0,46(s1)
    ecc8:	24010002 	li	at,2
    eccc:	1441000a 	bne	v0,at,ecf8 <func_809477E0+0x1e8>
    ecd0:	00000000 	nop
    ecd4:	8638002c 	lh	t8,44(s1)
    ecd8:	2719ffec 	addiu	t9,t8,-20
    ecdc:	a639002c 	sh	t9,44(s1)
    ece0:	8628002c 	lh	t0,44(s1)
    ece4:	5d0002c3 	bgtzl	t0,f7f4 <func_809477E0+0xce4>
    ece8:	87a20110 	lh	v0,272(sp)
    ecec:	a620002c 	sh	zero,44(s1)
    ecf0:	100002bf 	b	f7f0 <func_809477E0+0xce0>
    ecf4:	a2200000 	sb	zero,0(s1)
    ecf8:	5440000d 	bnezl	v0,ed30 <func_809477E0+0x220>
    ecfc:	862e002c 	lh	t6,44(s1)
    ed00:	8629002c 	lh	t1,44(s1)
    ed04:	252a000a 	addiu	t2,t1,10
    ed08:	a62a002c 	sh	t2,44(s1)
    ed0c:	862b002c 	lh	t3,44(s1)
    ed10:	29610064 	slti	at,t3,100
    ed14:	542002b7 	bnezl	at,f7f4 <func_809477E0+0xce4>
    ed18:	87a20110 	lh	v0,272(sp)
    ed1c:	862c002e 	lh	t4,46(s1)
    ed20:	258d0001 	addiu	t5,t4,1
    ed24:	100002b2 	b	f7f0 <func_809477E0+0xce0>
    ed28:	a62d002e 	sh	t5,46(s1)
    ed2c:	862e002c 	lh	t6,44(s1)
    ed30:	25cffffd 	addiu	t7,t6,-3
    ed34:	a62f002c 	sh	t7,44(s1)
    ed38:	8638002c 	lh	t8,44(s1)
    ed3c:	5f0002ad 	bgtzl	t8,f7f4 <func_809477E0+0xce4>
    ed40:	87a20110 	lh	v0,272(sp)
    ed44:	a620002c 	sh	zero,44(s1)
    ed48:	100002a9 	b	f7f0 <func_809477E0+0xce0>
    ed4c:	a2200000 	sb	zero,0(s1)
    ed50:	24010006 	li	at,6
    ed54:	5441001e 	bnel	v0,at,edd0 <func_809477E0+0x2c0>
    ed58:	24010008 	li	at,8
    ed5c:	86390030 	lh	t9,48(s1)
    ed60:	87a90110 	lh	t1,272(sp)
    ed64:	5320000d 	beqzl	t9,ed9c <func_809477E0+0x28c>
    ed68:	862e002c 	lh	t6,44(s1)
    ed6c:	8628002c 	lh	t0,44(s1)
    ed70:	312a0007 	andi	t2,t1,0x7
    ed74:	010a5823 	subu	t3,t0,t2
    ed78:	256cfff3 	addiu	t4,t3,-13
    ed7c:	a62c002c 	sh	t4,44(s1)
    ed80:	862d002c 	lh	t5,44(s1)
    ed84:	5da0029b 	bgtzl	t5,f7f4 <func_809477E0+0xce4>
    ed88:	87a20110 	lh	v0,272(sp)
    ed8c:	a620002c 	sh	zero,44(s1)
    ed90:	10000297 	b	f7f0 <func_809477E0+0xce0>
    ed94:	a2200000 	sb	zero,0(s1)
    ed98:	862e002c 	lh	t6,44(s1)
    ed9c:	25cf012c 	addiu	t7,t6,300
    eda0:	a62f002c 	sh	t7,44(s1)
    eda4:	8638002c 	lh	t8,44(s1)
    eda8:	2b0100ff 	slti	at,t8,255
    edac:	54200291 	bnezl	at,f7f4 <func_809477E0+0xce4>
    edb0:	87a20110 	lh	v0,272(sp)
    edb4:	86290030 	lh	t1,48(s1)
    edb8:	241900ff 	li	t9,255
    edbc:	a639002c 	sh	t9,44(s1)
    edc0:	25280001 	addiu	t0,t1,1
    edc4:	1000028a 	b	f7f0 <func_809477E0+0xce0>
    edc8:	a6280030 	sh	t0,48(s1)
    edcc:	24010008 	li	at,8
    edd0:	14410070 	bne	v0,at,ef94 <func_809477E0+0x484>
    edd4:	240a0001 	li	t2,1
    edd8:	3c010000 	lui	at,0x0
    eddc:	a02a0000 	sb	t2,0(at)
    ede0:	862b0030 	lh	t3,48(s1)
    ede4:	3c100000 	lui	s0,0x0
    ede8:	3c063dcc 	lui	a2,0x3dcc
    edec:	256c0001 	addiu	t4,t3,1
    edf0:	a62c0030 	sh	t4,48(s1)
    edf4:	862d0030 	lh	t5,48(s1)
    edf8:	26100000 	addiu	s0,s0,0
    edfc:	34c6cccd 	ori	a2,a2,0xcccd
    ee00:	29a1001f 	slti	at,t5,31
    ee04:	14200009 	bnez	at,ee2c <func_809477E0+0x31c>
    ee08:	26240034 	addiu	a0,s1,52
    ee0c:	862e002c 	lh	t6,44(s1)
    ee10:	25cffff6 	addiu	t7,t6,-10
    ee14:	a62f002c 	sh	t7,44(s1)
    ee18:	8638002c 	lh	t8,44(s1)
    ee1c:	5f000004 	bgtzl	t8,ee30 <func_809477E0+0x320>
    ee20:	3c073b44 	lui	a3,0x3b44
    ee24:	a620002c 	sh	zero,44(s1)
    ee28:	a2200000 	sb	zero,0(s1)
    ee2c:	3c073b44 	lui	a3,0x3b44
    ee30:	34e79ba6 	ori	a3,a3,0x9ba6
    ee34:	0c000000 	jal	0 <func_80938CD0>
    ee38:	8e250038 	lw	a1,56(s1)
    ee3c:	8e420000 	lw	v0,0(s2)
    ee40:	c62a0008 	lwc1	$f10,8(s1)
    ee44:	c6260004 	lwc1	$f6,4(s1)
    ee48:	c4480028 	lwc1	$f8,40(v0)
    ee4c:	c4440024 	lwc1	$f4,36(v0)
    ee50:	3c013f00 	lui	at,0x3f00
    ee54:	460a4401 	sub.s	$f16,$f8,$f10
    ee58:	44819000 	mtc1	at,$f18
    ee5c:	8c59014c 	lw	t9,332(v0)
    ee60:	46062001 	sub.s	$f0,$f4,$f6
    ee64:	c626000c 	lwc1	$f6,12(s1)
    ee68:	c444002c 	lwc1	$f4,44(v0)
    ee6c:	46128082 	mul.s	$f2,$f16,$f18
    ee70:	1219025f 	beq	s0,t9,f7f0 <func_809477E0+0xce0>
    ee74:	46062301 	sub.s	$f12,$f4,$f6
    ee78:	46000202 	mul.s	$f8,$f0,$f0
    ee7c:	3c014561 	lui	at,0x4561
    ee80:	44813000 	mtc1	at,$f6
    ee84:	46021282 	mul.s	$f10,$f2,$f2
    ee88:	00008025 	move	s0,zero
    ee8c:	460c6482 	mul.s	$f18,$f12,$f12
    ee90:	460a4400 	add.s	$f16,$f8,$f10
    ee94:	46128100 	add.s	$f4,$f16,$f18
    ee98:	4606203c 	c.lt.s	$f4,$f6
    ee9c:	00000000 	nop
    eea0:	45020254 	bc1fl	f7f4 <func_809477E0+0xce4>
    eea4:	87a20110 	lh	v0,272(sp)
    eea8:	0c000000 	jal	0 <func_80938CD0>
    eeac:	4600d306 	mov.s	$f12,$f26
    eeb0:	8e490000 	lw	t1,0(s2)
    eeb4:	4600f306 	mov.s	$f12,$f30
    eeb8:	c5280024 	lwc1	$f8,36(t1)
    eebc:	46080280 	add.s	$f10,$f0,$f8
    eec0:	0c000000 	jal	0 <func_80938CD0>
    eec4:	e7aa00f4 	swc1	$f10,244(sp)
    eec8:	8e480000 	lw	t0,0(s2)
    eecc:	4600d306 	mov.s	$f12,$f26
    eed0:	c5100028 	lwc1	$f16,40(t0)
    eed4:	46100480 	add.s	$f18,$f0,$f16
    eed8:	0c000000 	jal	0 <func_80938CD0>
    eedc:	e7b200f8 	swc1	$f18,248(sp)
    eee0:	8e4a0000 	lw	t2,0(s2)
    eee4:	4600c306 	mov.s	$f12,$f24
    eee8:	c544002c 	lwc1	$f4,44(t2)
    eeec:	46040180 	add.s	$f6,$f0,$f4
    eef0:	0c000000 	jal	0 <func_80938CD0>
    eef4:	e7a600fc 	swc1	$f6,252(sp)
    eef8:	e7a000e8 	swc1	$f0,232(sp)
    eefc:	0c000000 	jal	0 <func_80938CD0>
    ef00:	4600c306 	mov.s	$f12,$f24
    ef04:	e7a000ec 	swc1	$f0,236(sp)
    ef08:	0c000000 	jal	0 <func_80938CD0>
    ef0c:	4600c306 	mov.s	$f12,$f24
    ef10:	e7a000f0 	swc1	$f0,240(sp)
    ef14:	e7b400dc 	swc1	$f20,220(sp)
    ef18:	e7b400e0 	swc1	$f20,224(sp)
    ef1c:	e7b400e4 	swc1	$f20,228(sp)
    ef20:	0c000000 	jal	0 <func_80938CD0>
    ef24:	4600e306 	mov.s	$f12,$f28
    ef28:	3c0141c8 	lui	at,0x41c8
    ef2c:	44814000 	mtc1	at,$f8
    ef30:	02602025 	move	a0,s3
    ef34:	02802825 	move	a1,s4
    ef38:	46080280 	add.s	$f10,$f0,$f8
    ef3c:	02a03025 	move	a2,s5
    ef40:	02c03825 	move	a3,s6
    ef44:	e7aa0010 	swc1	$f10,16(sp)
    ef48:	862b002e 	lh	t3,46(s1)
    ef4c:	0c000000 	jal	0 <func_80938CD0>
    ef50:	afab0014 	sw	t3,20(sp)
    ef54:	26100001 	addiu	s0,s0,1
    ef58:	00108400 	sll	s0,s0,0x10
    ef5c:	00108403 	sra	s0,s0,0x10
    ef60:	2a010032 	slti	at,s0,50
    ef64:	1420ffd0 	bnez	at,eea8 <func_809477E0+0x398>
    ef68:	00000000 	nop
    ef6c:	3c013f80 	lui	at,0x3f80
    ef70:	8e4d0000 	lw	t5,0(s2)
    ef74:	44818000 	mtc1	at,$f16
    ef78:	240c0001 	li	t4,1
    ef7c:	3c010001 	lui	at,0x1
    ef80:	00330821 	addu	at,at,s3
    ef84:	a1ac04f4 	sb	t4,1268(t5)
    ef88:	e4300afc 	swc1	$f16,2812(at)
    ef8c:	10000218 	b	f7f0 <func_809477E0+0xce0>
    ef90:	a2200000 	sb	zero,0(s1)
    ef94:	24010007 	li	at,7
    ef98:	54410029 	bnel	v0,at,f040 <func_809477E0+0x530>
    ef9c:	24010009 	li	at,9
    efa0:	e7b4011c 	swc1	$f20,284(sp)
    efa4:	c6320008 	lwc1	$f18,8(s1)
    efa8:	8e4e0000 	lw	t6,0(s2)
    efac:	00002825 	move	a1,zero
    efb0:	e7b20120 	swc1	$f18,288(sp)
    efb4:	c6240038 	lwc1	$f4,56(s1)
    efb8:	e7a40124 	swc1	$f4,292(sp)
    efbc:	c626003c 	lwc1	$f6,60(s1)
    efc0:	c5c801a8 	lwc1	$f8,424(t6)
    efc4:	0c000000 	jal	0 <func_80938CD0>
    efc8:	46083300 	add.s	$f12,$f6,$f8
    efcc:	27a4011c 	addiu	a0,sp,284
    efd0:	0c000000 	jal	0 <func_80938CD0>
    efd4:	26250004 	addiu	a1,s1,4
    efd8:	862f0030 	lh	t7,48(s1)
    efdc:	51e0000b 	beqzl	t7,f00c <func_809477E0+0x4fc>
    efe0:	8628002c 	lh	t0,44(s1)
    efe4:	8638002c 	lh	t8,44(s1)
    efe8:	2719ffc4 	addiu	t9,t8,-60
    efec:	a639002c 	sh	t9,44(s1)
    eff0:	8629002c 	lh	t1,44(s1)
    eff4:	5d2001ff 	bgtzl	t1,f7f4 <func_809477E0+0xce4>
    eff8:	87a20110 	lh	v0,272(sp)
    effc:	a620002c 	sh	zero,44(s1)
    f000:	100001fb 	b	f7f0 <func_809477E0+0xce0>
    f004:	a2200000 	sb	zero,0(s1)
    f008:	8628002c 	lh	t0,44(s1)
    f00c:	250a003c 	addiu	t2,t0,60
    f010:	a62a002c 	sh	t2,44(s1)
    f014:	862b002c 	lh	t3,44(s1)
    f018:	296100ff 	slti	at,t3,255
    f01c:	542001f5 	bnezl	at,f7f4 <func_809477E0+0xce4>
    f020:	87a20110 	lh	v0,272(sp)
    f024:	862d0030 	lh	t5,48(s1)
    f028:	240c00ff 	li	t4,255
    f02c:	a62c002c 	sh	t4,44(s1)
    f030:	25ae0001 	addiu	t6,t5,1
    f034:	100001ee 	b	f7f0 <func_809477E0+0xce0>
    f038:	a62e0030 	sh	t6,48(s1)
    f03c:	24010009 	li	at,9
    f040:	5441008e 	bnel	v0,at,f27c <func_809477E0+0x76c>
    f044:	2401000a 	li	at,10
    f048:	862f0030 	lh	t7,48(s1)
    f04c:	3c190000 	lui	t9,0x0
    f050:	3c014700 	lui	at,0x4700
    f054:	25f80001 	addiu	t8,t7,1
    f058:	a6380030 	sh	t8,48(s1)
    f05c:	87390000 	lh	t9,0(t9)
    f060:	44813000 	mtc1	at,$f6
    f064:	e7b4011c 	swc1	$f20,284(sp)
    f068:	44999000 	mtc1	t9,$f18
    f06c:	e7b40120 	swc1	$f20,288(sp)
    f070:	c62a0038 	lwc1	$f10,56(s1)
    f074:	46809120 	cvt.s.w	$f4,$f18
    f078:	3c010000 	lui	at,0x0
    f07c:	00002825 	move	a1,zero
    f080:	46005407 	neg.s	$f16,$f10
    f084:	46062203 	div.s	$f8,$f4,$f6
    f088:	c42a0000 	lwc1	$f10,0(at)
    f08c:	e7b00124 	swc1	$f16,292(sp)
    f090:	460a4302 	mul.s	$f12,$f8,$f10
    f094:	0c000000 	jal	0 <func_80938CD0>
    f098:	00000000 	nop
    f09c:	3c010000 	lui	at,0x0
    f0a0:	c42c0000 	lwc1	$f12,0(at)
    f0a4:	0c000000 	jal	0 <func_80938CD0>
    f0a8:	24050001 	li	a1,1
    f0ac:	c62c003c 	lwc1	$f12,60(s1)
    f0b0:	0c000000 	jal	0 <func_80938CD0>
    f0b4:	24050001 	li	a1,1
    f0b8:	c62c0040 	lwc1	$f12,64(s1)
    f0bc:	0c000000 	jal	0 <func_80938CD0>
    f0c0:	24050001 	li	a1,1
    f0c4:	26300004 	addiu	s0,s1,4
    f0c8:	02002825 	move	a1,s0
    f0cc:	0c000000 	jal	0 <func_80938CD0>
    f0d0:	27a4011c 	addiu	a0,sp,284
    f0d4:	c6300004 	lwc1	$f16,4(s1)
    f0d8:	c7d20000 	lwc1	$f18,0(s8)
    f0dc:	c6260008 	lwc1	$f6,8(s1)
    f0e0:	86290030 	lh	t1,48(s1)
    f0e4:	46128100 	add.s	$f4,$f16,$f18
    f0e8:	c630000c 	lwc1	$f16,12(s1)
    f0ec:	2921000a 	slti	at,t1,10
    f0f0:	3c054248 	lui	a1,0x4248
    f0f4:	e6240004 	swc1	$f4,4(s1)
    f0f8:	c7c80004 	lwc1	$f8,4(s8)
    f0fc:	3c063f00 	lui	a2,0x3f00
    f100:	3c0742c8 	lui	a3,0x42c8
    f104:	46083280 	add.s	$f10,$f6,$f8
    f108:	26240040 	addiu	a0,s1,64
    f10c:	e62a0008 	swc1	$f10,8(s1)
    f110:	c7d20008 	lwc1	$f18,8(s8)
    f114:	46128100 	add.s	$f4,$f16,$f18
    f118:	10200005 	beqz	at,f130 <func_809477E0+0x620>
    f11c:	e624000c 	swc1	$f4,12(s1)
    f120:	0c000000 	jal	0 <func_80938CD0>
    f124:	26240038 	addiu	a0,s1,56
    f128:	10000047 	b	f248 <func_809477E0+0x738>
    f12c:	3c014120 	lui	at,0x4120
    f130:	4405a000 	mfc1	a1,$f20
    f134:	4407e000 	mfc1	a3,$f28
    f138:	0c000000 	jal	0 <func_80938CD0>
    f13c:	3c063f00 	lui	a2,0x3f00
    f140:	4407e000 	mfc1	a3,$f28
    f144:	26240038 	addiu	a0,s1,56
    f148:	3c05447a 	lui	a1,0x447a
    f14c:	0c000000 	jal	0 <func_80938CD0>
    f150:	3c063f80 	lui	a2,0x3f80
    f154:	86220030 	lh	v0,48(s1)
    f158:	28410010 	slti	at,v0,16
    f15c:	14200039 	bnez	at,f244 <func_809477E0+0x734>
    f160:	24010010 	li	at,16
    f164:	1441002f 	bne	v0,at,f224 <func_809477E0+0x714>
    f168:	93a80113 	lbu	t0,275(sp)
    f16c:	1500002d 	bnez	t0,f224 <func_809477E0+0x714>
    f170:	240a0001 	li	t2,1
    f174:	a3aa0113 	sb	t2,275(sp)
    f178:	8e0d0000 	lw	t5,0(s0)
    f17c:	27ab00d0 	addiu	t3,sp,208
    f180:	3c014220 	lui	at,0x4220
    f184:	ad6d0000 	sw	t5,0(t3)
    f188:	8e0c0004 	lw	t4,4(s0)
    f18c:	44813000 	mtc1	at,$f6
    f190:	3c01c248 	lui	at,0xc248
    f194:	ad6c0004 	sw	t4,4(t3)
    f198:	8e0d0008 	lw	t5,8(s0)
    f19c:	ad6d0008 	sw	t5,8(t3)
    f1a0:	c6280008 	lwc1	$f8,8(s1)
    f1a4:	4608303c 	c.lt.s	$f6,$f8
    f1a8:	00000000 	nop
    f1ac:	45020006 	bc1fl	f1c8 <func_809477E0+0x6b8>
    f1b0:	44818000 	mtc1	at,$f16
    f1b4:	3c01435c 	lui	at,0x435c
    f1b8:	44815000 	mtc1	at,$f10
    f1bc:	10000004 	b	f1d0 <func_809477E0+0x6c0>
    f1c0:	e7aa00d4 	swc1	$f10,212(sp)
    f1c4:	44818000 	mtc1	at,$f16
    f1c8:	00000000 	nop
    f1cc:	e7b000d4 	swc1	$f16,212(sp)
    f1d0:	0c000000 	jal	0 <func_80938CD0>
    f1d4:	27a400d0 	addiu	a0,sp,208
    f1d8:	4600a03e 	c.le.s	$f20,$f0
    f1dc:	8e4e0000 	lw	t6,0(s2)
    f1e0:	45000010 	bc1f	f224 <func_809477E0+0x714>
    f1e4:	e5c00504 	swc1	$f0,1284(t6)
    f1e8:	8e420000 	lw	v0,0(s2)
    f1ec:	c4520504 	lwc1	$f18,1284(v0)
    f1f0:	4612d032 	c.eq.s	$f26,$f18
    f1f4:	00000000 	nop
    f1f8:	4503000b 	bc1tl	f228 <func_809477E0+0x718>
    f1fc:	8638002c 	lh	t8,44(s1)
    f200:	c6240004 	lwc1	$f4,4(s1)
    f204:	02602825 	move	a1,s3
    f208:	e4440500 	swc1	$f4,1280(v0)
    f20c:	8e4f0000 	lw	t7,0(s2)
    f210:	c626000c 	lwc1	$f6,12(s1)
    f214:	e5e60508 	swc1	$f6,1288(t7)
    f218:	8626002e 	lh	a2,46(s1)
    f21c:	0c000000 	jal	0 <func_80938CD0>
    f220:	8e440000 	lw	a0,0(s2)
    f224:	8638002c 	lh	t8,44(s1)
    f228:	2719fed4 	addiu	t9,t8,-300
    f22c:	a639002c 	sh	t9,44(s1)
    f230:	8629002c 	lh	t1,44(s1)
    f234:	5d200004 	bgtzl	t1,f248 <func_809477E0+0x738>
    f238:	3c014120 	lui	at,0x4120
    f23c:	a620002c 	sh	zero,44(s1)
    f240:	a2200000 	sb	zero,0(s1)
    f244:	3c014120 	lui	at,0x4120
    f248:	44814000 	mtc1	at,$f8
    f24c:	3c060000 	lui	a2,0x0
    f250:	24c60000 	addiu	a2,a2,0
    f254:	e7a80010 	swc1	$f8,16(sp)
    f258:	8628002e 	lh	t0,46(s1)
    f25c:	00c03825 	move	a3,a2
    f260:	02602025 	move	a0,s3
    f264:	02002825 	move	a1,s0
    f268:	0c000000 	jal	0 <func_80938CD0>
    f26c:	afa80014 	sw	t0,20(sp)
    f270:	10000160 	b	f7f4 <func_809477E0+0xce4>
    f274:	87a20110 	lh	v0,272(sp)
    f278:	2401000a 	li	at,10
    f27c:	5441005a 	bnel	v0,at,f3e8 <func_809477E0+0x8d8>
    f280:	24010004 	li	at,4
    f284:	862a0030 	lh	t2,48(s1)
    f288:	3c0c0000 	lui	t4,0x0
    f28c:	3c014700 	lui	at,0x4700
    f290:	254b0001 	addiu	t3,t2,1
    f294:	a62b0030 	sh	t3,48(s1)
    f298:	858c0000 	lh	t4,0(t4)
    f29c:	44813000 	mtc1	at,$f6
    f2a0:	e7b4011c 	swc1	$f20,284(sp)
    f2a4:	448c9000 	mtc1	t4,$f18
    f2a8:	e7b40120 	swc1	$f20,288(sp)
    f2ac:	c62a0038 	lwc1	$f10,56(s1)
    f2b0:	46809120 	cvt.s.w	$f4,$f18
    f2b4:	3c010000 	lui	at,0x0
    f2b8:	00002825 	move	a1,zero
    f2bc:	46005407 	neg.s	$f16,$f10
    f2c0:	46062203 	div.s	$f8,$f4,$f6
    f2c4:	c42a0000 	lwc1	$f10,0(at)
    f2c8:	e7b00124 	swc1	$f16,292(sp)
    f2cc:	460a4302 	mul.s	$f12,$f8,$f10
    f2d0:	0c000000 	jal	0 <func_80938CD0>
    f2d4:	00000000 	nop
    f2d8:	3c010000 	lui	at,0x0
    f2dc:	c42c0000 	lwc1	$f12,0(at)
    f2e0:	0c000000 	jal	0 <func_80938CD0>
    f2e4:	24050001 	li	a1,1
    f2e8:	c62c003c 	lwc1	$f12,60(s1)
    f2ec:	0c000000 	jal	0 <func_80938CD0>
    f2f0:	24050001 	li	a1,1
    f2f4:	c62c0040 	lwc1	$f12,64(s1)
    f2f8:	0c000000 	jal	0 <func_80938CD0>
    f2fc:	24050001 	li	a1,1
    f300:	26300004 	addiu	s0,s1,4
    f304:	02002825 	move	a1,s0
    f308:	0c000000 	jal	0 <func_80938CD0>
    f30c:	27a4011c 	addiu	a0,sp,284
    f310:	c6300004 	lwc1	$f16,4(s1)
    f314:	c7d20000 	lwc1	$f18,0(s8)
    f318:	c6260008 	lwc1	$f6,8(s1)
    f31c:	862d0030 	lh	t5,48(s1)
    f320:	46128100 	add.s	$f4,$f16,$f18
    f324:	c630000c 	lwc1	$f16,12(s1)
    f328:	3c063e4c 	lui	a2,0x3e4c
    f32c:	29a10005 	slti	at,t5,5
    f330:	e6240004 	swc1	$f4,4(s1)
    f334:	c7c80004 	lwc1	$f8,4(s8)
    f338:	3c054220 	lui	a1,0x4220
    f33c:	3c0742c8 	lui	a3,0x42c8
    f340:	46083280 	add.s	$f10,$f6,$f8
    f344:	34c6cccd 	ori	a2,a2,0xcccd
    f348:	26240038 	addiu	a0,s1,56
    f34c:	e62a0008 	swc1	$f10,8(s1)
    f350:	c7d20008 	lwc1	$f18,8(s8)
    f354:	46128100 	add.s	$f4,$f16,$f18
    f358:	10200006 	beqz	at,f374 <func_809477E0+0x864>
    f35c:	e624000c 	swc1	$f4,12(s1)
    f360:	26240038 	addiu	a0,s1,56
    f364:	0c000000 	jal	0 <func_80938CD0>
    f368:	3c063f00 	lui	a2,0x3f00
    f36c:	10000011 	b	f3b4 <func_809477E0+0x8a4>
    f370:	3c014120 	lui	at,0x4120
    f374:	4405a000 	mfc1	a1,$f20
    f378:	0c000000 	jal	0 <func_80938CD0>
    f37c:	3c0740a0 	lui	a3,0x40a0
    f380:	862e0030 	lh	t6,48(s1)
    f384:	29c1000b 	slti	at,t6,11
    f388:	5420000a 	bnezl	at,f3b4 <func_809477E0+0x8a4>
    f38c:	3c014120 	lui	at,0x4120
    f390:	862f002c 	lh	t7,44(s1)
    f394:	25f8ffe2 	addiu	t8,t7,-30
    f398:	a638002c 	sh	t8,44(s1)
    f39c:	8639002c 	lh	t9,44(s1)
    f3a0:	5f200004 	bgtzl	t9,f3b4 <func_809477E0+0x8a4>
    f3a4:	3c014120 	lui	at,0x4120
    f3a8:	a620002c 	sh	zero,44(s1)
    f3ac:	a2200000 	sb	zero,0(s1)
    f3b0:	3c014120 	lui	at,0x4120
    f3b4:	44813000 	mtc1	at,$f6
    f3b8:	3c060000 	lui	a2,0x0
    f3bc:	24c60000 	addiu	a2,a2,0
    f3c0:	e7a60010 	swc1	$f6,16(sp)
    f3c4:	8629002e 	lh	t1,46(s1)
    f3c8:	00c03825 	move	a3,a2
    f3cc:	02602025 	move	a0,s3
    f3d0:	02002825 	move	a1,s0
    f3d4:	0c000000 	jal	0 <func_80938CD0>
    f3d8:	afa90014 	sw	t1,20(sp)
    f3dc:	10000105 	b	f7f4 <func_809477E0+0xce4>
    f3e0:	87a20110 	lh	v0,272(sp)
    f3e4:	24010004 	li	at,4
    f3e8:	54410026 	bnel	v0,at,f484 <func_809477E0+0x974>
    f3ec:	24010005 	li	at,5
    f3f0:	86280030 	lh	t0,48(s1)
    f3f4:	3c063dcc 	lui	a2,0x3dcc
    f3f8:	34c6cccd 	ori	a2,a2,0xcccd
    f3fc:	15000014 	bnez	t0,f450 <func_809477E0+0x940>
    f400:	26240034 	addiu	a0,s1,52
    f404:	3c063d4c 	lui	a2,0x3d4c
    f408:	34c6cccd 	ori	a2,a2,0xcccd
    f40c:	26240034 	addiu	a0,s1,52
    f410:	8e250038 	lw	a1,56(s1)
    f414:	0c000000 	jal	0 <func_80938CD0>
    f418:	3c073f80 	lui	a3,0x3f80
    f41c:	922a0001 	lbu	t2,1(s1)
    f420:	29410010 	slti	at,t2,16
    f424:	542000f3 	bnezl	at,f7f4 <func_809477E0+0xce4>
    f428:	87a20110 	lh	v0,272(sp)
    f42c:	862b002c 	lh	t3,44(s1)
    f430:	256cfff6 	addiu	t4,t3,-10
    f434:	a62c002c 	sh	t4,44(s1)
    f438:	862d002c 	lh	t5,44(s1)
    f43c:	5da000ed 	bgtzl	t5,f7f4 <func_809477E0+0xce4>
    f440:	87a20110 	lh	v0,272(sp)
    f444:	a620002c 	sh	zero,44(s1)
    f448:	100000e9 	b	f7f0 <func_809477E0+0xce0>
    f44c:	a2200000 	sb	zero,0(s1)
    f450:	8e250038 	lw	a1,56(s1)
    f454:	0c000000 	jal	0 <func_80938CD0>
    f458:	3c074000 	lui	a3,0x4000
    f45c:	862e002c 	lh	t6,44(s1)
    f460:	25cffff1 	addiu	t7,t6,-15
    f464:	a62f002c 	sh	t7,44(s1)
    f468:	8638002c 	lh	t8,44(s1)
    f46c:	5f0000e1 	bgtzl	t8,f7f4 <func_809477E0+0xce4>
    f470:	87a20110 	lh	v0,272(sp)
    f474:	a620002c 	sh	zero,44(s1)
    f478:	100000dd 	b	f7f0 <func_809477E0+0xce0>
    f47c:	a2200000 	sb	zero,0(s1)
    f480:	24010005 	li	at,5
    f484:	544100db 	bnel	v0,at,f7f4 <func_809477E0+0xce4>
    f488:	87a20110 	lh	v0,272(sp)
    f48c:	8639002e 	lh	t9,46(s1)
    f490:	92290001 	lbu	t1,1(s1)
    f494:	3c0e0000 	lui	t6,0x0
    f498:	26240038 	addiu	a0,s1,56
    f49c:	0329082a 	slt	at,t9,t1
    f4a0:	1020002a 	beqz	at,f54c <func_809477E0+0xa3c>
    f4a4:	3c053f4c 	lui	a1,0x3f4c
    f4a8:	8e280044 	lw	t0,68(s1)
    f4ac:	3c013f80 	lui	at,0x3f80
    f4b0:	44810000 	mtc1	at,$f0
    f4b4:	15000004 	bnez	t0,f4c8 <func_809477E0+0x9b8>
    f4b8:	3c0a0000 	lui	t2,0x0
    f4bc:	914a0000 	lbu	t2,0(t2)
    f4c0:	24010001 	li	at,1
    f4c4:	15410007 	bne	t2,at,f4e4 <func_809477E0+0x9d4>
    f4c8:	3c013f80 	lui	at,0x3f80
    f4cc:	44814000 	mtc1	at,$f8
    f4d0:	3c014040 	lui	at,0x4040
    f4d4:	44815000 	mtc1	at,$f10
    f4d8:	00000000 	nop
    f4dc:	460a4002 	mul.s	$f0,$f8,$f10
    f4e0:	00000000 	nop
    f4e4:	3c010000 	lui	at,0x0
    f4e8:	c4300000 	lwc1	$f16,0(at)
    f4ec:	4405a000 	mfc1	a1,$f20
    f4f0:	26240034 	addiu	a0,s1,52
    f4f4:	46008482 	mul.s	$f18,$f16,$f0
    f4f8:	3c063f80 	lui	a2,0x3f80
    f4fc:	44079000 	mfc1	a3,$f18
    f500:	0c000000 	jal	0 <func_80938CD0>
    f504:	00000000 	nop
    f508:	c6240034 	lwc1	$f4,52(s1)
    f50c:	4604a032 	c.eq.s	$f20,$f4
    f510:	00000000 	nop
    f514:	450200b7 	bc1fl	f7f4 <func_809477E0+0xce4>
    f518:	87a20110 	lh	v0,272(sp)
    f51c:	8e2b0044 	lw	t3,68(s1)
    f520:	a2200000 	sb	zero,0(s1)
    f524:	556000b3 	bnezl	t3,f7f4 <func_809477E0+0xce4>
    f528:	87a20110 	lh	v0,272(sp)
    f52c:	8eec0680 	lw	t4,1664(s7)
    f530:	3c01ffff 	lui	at,0xffff
    f534:	34217fff 	ori	at,at,0x7fff
    f538:	01816824 	and	t5,t4,at
    f53c:	aeed0680 	sw	t5,1664(s7)
    f540:	3c010000 	lui	at,0x0
    f544:	100000aa 	b	f7f0 <func_809477E0+0xce0>
    f548:	a0200000 	sb	zero,0(at)
    f54c:	91ce0000 	lbu	t6,0(t6)
    f550:	24010001 	li	at,1
    f554:	34a5cccd 	ori	a1,a1,0xcccd
    f558:	15c10003 	bne	t6,at,f568 <func_809477E0+0xa58>
    f55c:	3c063e4c 	lui	a2,0x3e4c
    f560:	240f0064 	li	t7,100
    f564:	a22f0001 	sb	t7,1(s1)
    f568:	3c073d23 	lui	a3,0x3d23
    f56c:	34e7d70a 	ori	a3,a3,0xd70a
    f570:	0c000000 	jal	0 <func_80938CD0>
    f574:	34c6cccd 	ori	a2,a2,0xcccd
    f578:	8e380044 	lw	t8,68(s1)
    f57c:	3c053d2c 	lui	a1,0x3d2c
    f580:	34a50831 	ori	a1,a1,0x831
    f584:	1700003b 	bnez	t8,f674 <func_809477E0+0xb64>
    f588:	26240034 	addiu	a0,s1,52
    f58c:	3c053c44 	lui	a1,0x3c44
    f590:	3c073b03 	lui	a3,0x3b03
    f594:	34e7126f 	ori	a3,a3,0x126f
    f598:	34a59ba6 	ori	a1,a1,0x9ba6
    f59c:	26240034 	addiu	a0,s1,52
    f5a0:	0c000000 	jal	0 <func_80938CD0>
    f5a4:	3c063f80 	lui	a2,0x3f80
    f5a8:	c626003c 	lwc1	$f6,60(s1)
    f5ac:	c6280038 	lwc1	$f8,56(s1)
    f5b0:	3c010000 	lui	at,0x0
    f5b4:	3c0b0000 	lui	t3,0x0
    f5b8:	46083280 	add.s	$f10,$f6,$f8
    f5bc:	e62a003c 	swc1	$f10,60(s1)
    f5c0:	c4300000 	lwc1	$f16,0(at)
    f5c4:	c620003c 	lwc1	$f0,60(s1)
    f5c8:	3c010000 	lui	at,0x0
    f5cc:	4600803e 	c.le.s	$f16,$f0
    f5d0:	00000000 	nop
    f5d4:	45020009 	bc1fl	f5fc <func_809477E0+0xaec>
    f5d8:	8ee80680 	lw	t0,1664(s7)
    f5dc:	c4320000 	lwc1	$f18,0(at)
    f5e0:	46120101 	sub.s	$f4,$f0,$f18
    f5e4:	e624003c 	swc1	$f4,60(s1)
    f5e8:	8ef90680 	lw	t9,1664(s7)
    f5ec:	37298000 	ori	t1,t9,0x8000
    f5f0:	10000006 	b	f60c <func_809477E0+0xafc>
    f5f4:	aee90680 	sw	t1,1664(s7)
    f5f8:	8ee80680 	lw	t0,1664(s7)
    f5fc:	3c01ffff 	lui	at,0xffff
    f600:	34217fff 	ori	at,at,0x7fff
    f604:	01015024 	and	t2,t0,at
    f608:	aeea0680 	sw	t2,1664(s7)
    f60c:	8d6b0000 	lw	t3,0(t3)
    f610:	3c014348 	lui	at,0x4348
    f614:	c56001b0 	lwc1	$f0,432(t3)
    f618:	4600e03c 	c.lt.s	$f28,$f0
    f61c:	00000000 	nop
    f620:	45020009 	bc1fl	f648 <func_809477E0+0xb38>
    f624:	8fad0094 	lw	t5,148(sp)
    f628:	44813000 	mtc1	at,$f6
    f62c:	240c0064 	li	t4,100
    f630:	4606003c 	c.lt.s	$f0,$f6
    f634:	00000000 	nop
    f638:	45020003 	bc1fl	f648 <func_809477E0+0xb38>
    f63c:	8fad0094 	lw	t5,148(sp)
    f640:	a22c0001 	sb	t4,1(s1)
    f644:	8fad0094 	lw	t5,148(sp)
    f648:	8dae1de4 	lw	t6,7652(t5)
    f64c:	31cf0001 	andi	t7,t6,0x1
    f650:	15e0000c 	bnez	t7,f684 <func_809477E0+0xb74>
    f654:	00000000 	nop
    f658:	8db91d58 	lw	t9,7512(t5)
    f65c:	02602025 	move	a0,s3
    f660:	2405ffff 	li	a1,-1
    f664:	0320f809 	jalr	t9
    f668:	00000000 	nop
    f66c:	10000005 	b	f684 <func_809477E0+0xb74>
    f670:	00000000 	nop
    f674:	3c073b03 	lui	a3,0x3b03
    f678:	34e7126f 	ori	a3,a3,0x126f
    f67c:	0c000000 	jal	0 <func_80938CD0>
    f680:	3c063f80 	lui	a2,0x3f80
    f684:	3c010000 	lui	at,0x0
    f688:	c4280000 	lwc1	$f8,0(at)
    f68c:	c62a0038 	lwc1	$f10,56(s1)
    f690:	460a403c 	c.lt.s	$f8,$f10
    f694:	00000000 	nop
    f698:	45020056 	bc1fl	f7f4 <func_809477E0+0xce4>
    f69c:	87a20110 	lh	v0,272(sp)
    f6a0:	92380001 	lbu	t8,1(s1)
    f6a4:	3c010000 	lui	at,0x0
    f6a8:	33090007 	andi	t1,t8,0x7
    f6ac:	55200051 	bnezl	t1,f7f4 <func_809477E0+0xce4>
    f6b0:	87a20110 	lh	v0,272(sp)
    f6b4:	0c000000 	jal	0 <func_80938CD0>
    f6b8:	c42c0000 	lwc1	$f12,0(at)
    f6bc:	4600040d 	trunc.w.s	$f16,$f0
    f6c0:	8e220044 	lw	v0,68(s1)
    f6c4:	3c014220 	lui	at,0x4220
    f6c8:	44038000 	mfc1	v1,$f16
    f6cc:	00408025 	move	s0,v0
    f6d0:	00031c00 	sll	v1,v1,0x10
    f6d4:	1440001b 	bnez	v0,f744 <func_809477E0+0xc34>
    f6d8:	00031c03 	sra	v1,v1,0x10
    f6dc:	3c0140a0 	lui	at,0x40a0
    f6e0:	44816000 	mtc1	at,$f12
    f6e4:	4600e586 	mov.s	$f22,$f28
    f6e8:	0c000000 	jal	0 <func_80938CD0>
    f6ec:	a7a300a6 	sh	v1,166(sp)
    f6f0:	87a300a6 	lh	v1,166(sp)
    f6f4:	3c0140a0 	lui	at,0x40a0
    f6f8:	44816000 	mtc1	at,$f12
    f6fc:	00035080 	sll	t2,v1,0x2
    f700:	01435023 	subu	t2,t2,v1
    f704:	000a5080 	sll	t2,t2,0x2
    f708:	02ea8021 	addu	s0,s7,t2
    f70c:	c6120908 	lwc1	$f18,2312(s0)
    f710:	46120100 	add.s	$f4,$f0,$f18
    f714:	0c000000 	jal	0 <func_80938CD0>
    f718:	e7a400c0 	swc1	$f4,192(sp)
    f71c:	c606090c 	lwc1	$f6,2316(s0)
    f720:	3c0140a0 	lui	at,0x40a0
    f724:	44816000 	mtc1	at,$f12
    f728:	46060200 	add.s	$f8,$f0,$f6
    f72c:	0c000000 	jal	0 <func_80938CD0>
    f730:	e7a800c4 	swc1	$f8,196(sp)
    f734:	c60a0910 	lwc1	$f10,2320(s0)
    f738:	460a0400 	add.s	$f16,$f0,$f10
    f73c:	10000013 	b	f78c <func_809477E0+0xc7c>
    f740:	e7b000c8 	swc1	$f16,200(sp)
    f744:	44816000 	mtc1	at,$f12
    f748:	0c000000 	jal	0 <func_80938CD0>
    f74c:	4600c586 	mov.s	$f22,$f24
    f750:	c6120024 	lwc1	$f18,36(s0)
    f754:	3c014220 	lui	at,0x4220
    f758:	44816000 	mtc1	at,$f12
    f75c:	46120100 	add.s	$f4,$f0,$f18
    f760:	0c000000 	jal	0 <func_80938CD0>
    f764:	e7a400c0 	swc1	$f4,192(sp)
    f768:	c6060028 	lwc1	$f6,40(s0)
    f76c:	3c014220 	lui	at,0x4220
    f770:	44816000 	mtc1	at,$f12
    f774:	46060200 	add.s	$f8,$f0,$f6
    f778:	0c000000 	jal	0 <func_80938CD0>
    f77c:	e7a800c4 	swc1	$f8,196(sp)
    f780:	c60a002c 	lwc1	$f10,44(s0)
    f784:	460a0400 	add.s	$f16,$f0,$f10
    f788:	e7b000c8 	swc1	$f16,200(sp)
    f78c:	3c010000 	lui	at,0x0
    f790:	c4320000 	lwc1	$f18,0(at)
    f794:	3c013f00 	lui	at,0x3f00
    f798:	44812000 	mtc1	at,$f4
    f79c:	e7b400b4 	swc1	$f20,180(sp)
    f7a0:	e7b400b8 	swc1	$f20,184(sp)
    f7a4:	4604b302 	mul.s	$f12,$f22,$f4
    f7a8:	e7b400bc 	swc1	$f20,188(sp)
    f7ac:	e7b400a8 	swc1	$f20,168(sp)
    f7b0:	e7b400b0 	swc1	$f20,176(sp)
    f7b4:	0c000000 	jal	0 <func_80938CD0>
    f7b8:	e7b200ac 	swc1	$f18,172(sp)
    f7bc:	46160180 	add.s	$f6,$f0,$f22
    f7c0:	27ab00a8 	addiu	t3,sp,168
    f7c4:	240c0096 	li	t4,150
    f7c8:	afac0020 	sw	t4,32(sp)
    f7cc:	afab0010 	sw	t3,16(sp)
    f7d0:	e7a60014 	swc1	$f6,20(sp)
    f7d4:	02602025 	move	a0,s3
    f7d8:	24050003 	li	a1,3
    f7dc:	27a600c0 	addiu	a2,sp,192
    f7e0:	27a700b4 	addiu	a3,sp,180
    f7e4:	afa00018 	sw	zero,24(sp)
    f7e8:	0c000000 	jal	0 <func_80938CD0>
    f7ec:	afa0001c 	sw	zero,28(sp)
    f7f0:	87a20110 	lh	v0,272(sp)
    f7f4:	26310048 	addiu	s1,s1,72
    f7f8:	24420001 	addiu	v0,v0,1
    f7fc:	00021400 	sll	v0,v0,0x10
    f800:	00021403 	sra	v0,v0,0x10
    f804:	28410096 	slti	at,v0,150
    f808:	1420fcea 	bnez	at,ebb4 <func_809477E0+0xa4>
    f80c:	a7a20110 	sh	v0,272(sp)
    f810:	8fbf0084 	lw	ra,132(sp)
    f814:	d7b40030 	ldc1	$f20,48(sp)
    f818:	d7b60038 	ldc1	$f22,56(sp)
    f81c:	d7b80040 	ldc1	$f24,64(sp)
    f820:	d7ba0048 	ldc1	$f26,72(sp)
    f824:	d7bc0050 	ldc1	$f28,80(sp)
    f828:	d7be0058 	ldc1	$f30,88(sp)
    f82c:	8fb00060 	lw	s0,96(sp)
    f830:	8fb10064 	lw	s1,100(sp)
    f834:	8fb20068 	lw	s2,104(sp)
    f838:	8fb3006c 	lw	s3,108(sp)
    f83c:	8fb40070 	lw	s4,112(sp)
    f840:	8fb50074 	lw	s5,116(sp)
    f844:	8fb60078 	lw	s6,120(sp)
    f848:	8fb7007c 	lw	s7,124(sp)
    f84c:	8fbe0080 	lw	s8,128(sp)
    f850:	03e00008 	jr	ra
    f854:	27bd0128 	addiu	sp,sp,296

0000f858 <func_80948528>:
    f858:	3c010000 	lui	at,0x0
    f85c:	ac240000 	sw	a0,0(at)
    f860:	3c010000 	lui	at,0x0
    f864:	ac250000 	sw	a1,0(at)
    f868:	3c010000 	lui	at,0x0
    f86c:	03e00008 	jr	ra
    f870:	ac260000 	sw	a2,0(at)

0000f874 <func_80948544>:
    f874:	3c020000 	lui	v0,0x0
    f878:	24420000 	addiu	v0,v0,0
    f87c:	8c4e0000 	lw	t6,0(v0)
    f880:	3c013f80 	lui	at,0x3f80
    f884:	44810000 	mtc1	at,$f0
    f888:	000e7880 	sll	t7,t6,0x2
    f88c:	01ee7823 	subu	t7,t7,t6
    f890:	000f7880 	sll	t7,t7,0x2
    f894:	01ee7823 	subu	t7,t7,t6
    f898:	000f7880 	sll	t7,t7,0x2
    f89c:	01ee7823 	subu	t7,t7,t6
    f8a0:	000f7880 	sll	t7,t7,0x2
    f8a4:	2401763d 	li	at,30269
    f8a8:	01ee7823 	subu	t7,t7,t6
    f8ac:	01e1001a 	div	zero,t7,at
    f8b0:	3c030000 	lui	v1,0x0
    f8b4:	24630000 	addiu	v1,v1,0
    f8b8:	8c790000 	lw	t9,0(v1)
    f8bc:	00006810 	mfhi	t5
    f8c0:	24017663 	li	at,30307
    f8c4:	00194080 	sll	t0,t9,0x2
    f8c8:	01194023 	subu	t0,t0,t9
    f8cc:	00084080 	sll	t0,t0,0x2
    f8d0:	01194023 	subu	t0,t0,t9
    f8d4:	00084080 	sll	t0,t0,0x2
    f8d8:	01194023 	subu	t0,t0,t9
    f8dc:	00084080 	sll	t0,t0,0x2
    f8e0:	0101001a 	div	zero,t0,at
    f8e4:	3c040000 	lui	a0,0x0
    f8e8:	24840000 	addiu	a0,a0,0
    f8ec:	8c8a0000 	lw	t2,0(a0)
    f8f0:	00007010 	mfhi	t6
    f8f4:	24017673 	li	at,30323
    f8f8:	000a5880 	sll	t3,t2,0x2
    f8fc:	016a5821 	addu	t3,t3,t2
    f900:	000b5880 	sll	t3,t3,0x2
    f904:	016a5821 	addu	t3,t3,t2
    f908:	000b5880 	sll	t3,t3,0x2
    f90c:	016a5821 	addu	t3,t3,t2
    f910:	000b5840 	sll	t3,t3,0x1
    f914:	0161001a 	div	zero,t3,at
    f918:	448d2000 	mtc1	t5,$f4
    f91c:	448e8000 	mtc1	t6,$f16
    f920:	00007810 	mfhi	t7
    f924:	468021a0 	cvt.s.w	$f6,$f4
    f928:	ac4d0000 	sw	t5,0(v0)
    f92c:	ac6e0000 	sw	t6,0(v1)
    f930:	ac8f0000 	sw	t7,0(a0)
    f934:	3c010000 	lui	at,0x0
    f938:	468084a0 	cvt.s.w	$f18,$f16
    f93c:	c4280000 	lwc1	$f8,0(at)
    f940:	3c010000 	lui	at,0x0
    f944:	c4240000 	lwc1	$f4,0(at)
    f948:	448f8000 	mtc1	t7,$f16
    f94c:	46083283 	div.s	$f10,$f6,$f8
    f950:	3c010000 	lui	at,0x0
    f954:	46049183 	div.s	$f6,$f18,$f4
    f958:	c4240000 	lwc1	$f4,0(at)
    f95c:	468084a0 	cvt.s.w	$f18,$f16
    f960:	46065200 	add.s	$f8,$f10,$f6
    f964:	46049283 	div.s	$f10,$f18,$f4
    f968:	460a4080 	add.s	$f2,$f8,$f10
    f96c:	4602003e 	c.le.s	$f0,$f2
    f970:	00000000 	nop
    f974:	45000006 	bc1f	f990 <func_80948544+0x11c>
    f978:	00000000 	nop
    f97c:	46001081 	sub.s	$f2,$f2,$f0
    f980:	4602003e 	c.le.s	$f0,$f2
    f984:	00000000 	nop
    f988:	4503fffd 	bc1tl	f980 <func_80948544+0x10c>
    f98c:	46001081 	sub.s	$f2,$f2,$f0
    f990:	03e00008 	jr	ra
    f994:	46001005 	abs.s	$f0,$f2

0000f998 <func_80948668>:
    f998:	27bdfe70 	addiu	sp,sp,-400
    f99c:	afbf008c 	sw	ra,140(sp)
    f9a0:	afbe0088 	sw	s8,136(sp)
    f9a4:	afb70084 	sw	s7,132(sp)
    f9a8:	afb60080 	sw	s6,128(sp)
    f9ac:	afb5007c 	sw	s5,124(sp)
    f9b0:	afb40078 	sw	s4,120(sp)
    f9b4:	afb30074 	sw	s3,116(sp)
    f9b8:	afb20070 	sw	s2,112(sp)
    f9bc:	afb1006c 	sw	s1,108(sp)
    f9c0:	afb00068 	sw	s0,104(sp)
    f9c4:	f7be0060 	sdc1	$f30,96(sp)
    f9c8:	f7bc0058 	sdc1	$f28,88(sp)
    f9cc:	f7ba0050 	sdc1	$f26,80(sp)
    f9d0:	f7b80048 	sdc1	$f24,72(sp)
    f9d4:	f7b60040 	sdc1	$f22,64(sp)
    f9d8:	f7b40038 	sdc1	$f20,56(sp)
    f9dc:	a3a0018f 	sb	zero,399(sp)
    f9e0:	8c8e1c44 	lw	t6,7236(a0)
    f9e4:	3c150001 	lui	s5,0x1
    f9e8:	02a4a821 	addu	s5,s5,a0
    f9ec:	afae0180 	sw	t6,384(sp)
    f9f0:	8c930000 	lw	s3,0(a0)
    f9f4:	8eb51e10 	lw	s5,7696(s5)
    f9f8:	00808025 	move	s0,a0
    f9fc:	3c060000 	lui	a2,0x0
    fa00:	24c60000 	addiu	a2,a2,0
    fa04:	afb00190 	sw	s0,400(sp)
    fa08:	27a4015c 	addiu	a0,sp,348
    fa0c:	24072578 	li	a3,9592
    fa10:	02602825 	move	a1,s3
    fa14:	0c000000 	jal	0 <func_80938CD0>
    fa18:	afb50174 	sw	s5,372(sp)
    fa1c:	8faf0190 	lw	t7,400(sp)
    fa20:	0c000000 	jal	0 <func_80938CD0>
    fa24:	8de40000 	lw	a0,0(t7)
    fa28:	3c013f80 	lui	at,0x3f80
    fa2c:	3c120000 	lui	s2,0x0
    fa30:	4481f000 	mtc1	at,$f30
    fa34:	26520000 	addiu	s2,s2,0
    fa38:	00004025 	move	t0,zero
    fa3c:	92b80000 	lbu	t8,0(s5)
    fa40:	24010001 	li	at,1
    fa44:	93a5018f 	lbu	a1,399(sp)
    fa48:	17010042 	bne	t8,at,fb54 <func_80948668+0x1bc>
    fa4c:	8fb40190 	lw	s4,400(sp)
    fa50:	3c010001 	lui	at,0x1
    fa54:	34211da0 	ori	at,at,0x1da0
    fa58:	3c110602 	lui	s1,0x602
    fa5c:	2631a5a8 	addiu	s1,s1,-23128
    fa60:	14a0000b 	bnez	a1,fa90 <func_80948668+0xf8>
    fa64:	0281a021 	addu	s4,s4,at
    fa68:	8e6302d0 	lw	v1,720(s3)
    fa6c:	3c040602 	lui	a0,0x602
    fa70:	2484a528 	addiu	a0,a0,-23256
    fa74:	24790008 	addiu	t9,v1,8
    fa78:	ae7902d0 	sw	t9,720(s3)
    fa7c:	3c09de00 	lui	t1,0xde00
    fa80:	24a50001 	addiu	a1,a1,1
    fa84:	30a500ff 	andi	a1,a1,0xff
    fa88:	ac690000 	sw	t1,0(v1)
    fa8c:	ac640004 	sw	a0,4(v1)
    fa90:	8e6302d0 	lw	v1,720(s3)
    fa94:	3c0bfa00 	lui	t3,0xfa00
    fa98:	00003825 	move	a3,zero
    fa9c:	246a0008 	addiu	t2,v1,8
    faa0:	ae6a02d0 	sw	t2,720(s3)
    faa4:	ac6b0000 	sw	t3,0(v1)
    faa8:	92b80029 	lbu	t8,41(s5)
    faac:	92ad0028 	lbu	t5,40(s5)
    fab0:	92ab002a 	lbu	t3,42(s5)
    fab4:	86af002c 	lh	t7,44(s5)
    fab8:	0018cc00 	sll	t9,t8,0x10
    fabc:	000d7600 	sll	t6,t5,0x18
    fac0:	01d94825 	or	t1,t6,t9
    fac4:	000b6200 	sll	t4,t3,0x8
    fac8:	012c6825 	or	t5,t1,t4
    facc:	31f800ff 	andi	t8,t7,0xff
    fad0:	01b87025 	or	t6,t5,t8
    fad4:	ac6e0004 	sw	t6,4(v1)
    fad8:	8ea6000c 	lw	a2,12(s5)
    fadc:	c6ae0008 	lwc1	$f14,8(s5)
    fae0:	c6ac0004 	lwc1	$f12,4(s5)
    fae4:	a7a8018c 	sh	t0,396(sp)
    fae8:	0c000000 	jal	0 <func_80938CD0>
    faec:	a3a5018f 	sb	a1,399(sp)
    faf0:	0c000000 	jal	0 <func_80938CD0>
    faf4:	02802025 	move	a0,s4
    faf8:	c6ac0034 	lwc1	$f12,52(s5)
    fafc:	4406f000 	mfc1	a2,$f30
    fb00:	24070001 	li	a3,1
    fb04:	0c000000 	jal	0 <func_80938CD0>
    fb08:	46006386 	mov.s	$f14,$f12
    fb0c:	8e7002d0 	lw	s0,720(s3)
    fb10:	3c0ada38 	lui	t2,0xda38
    fb14:	354a0003 	ori	t2,t2,0x3
    fb18:	26190008 	addiu	t9,s0,8
    fb1c:	ae7902d0 	sw	t9,720(s3)
    fb20:	02602025 	move	a0,s3
    fb24:	02402825 	move	a1,s2
    fb28:	24062591 	li	a2,9617
    fb2c:	0c000000 	jal	0 <func_80938CD0>
    fb30:	ae0a0000 	sw	t2,0(s0)
    fb34:	ae020004 	sw	v0,4(s0)
    fb38:	8e6302d0 	lw	v1,720(s3)
    fb3c:	3c09de00 	lui	t1,0xde00
    fb40:	246b0008 	addiu	t3,v1,8
    fb44:	ae6b02d0 	sw	t3,720(s3)
    fb48:	ac710004 	sw	s1,4(v1)
    fb4c:	ac690000 	sw	t1,0(v1)
    fb50:	87a8018c 	lh	t0,396(sp)
    fb54:	25080001 	addiu	t0,t0,1
    fb58:	00084400 	sll	t0,t0,0x10
    fb5c:	00084403 	sra	t0,t0,0x10
    fb60:	29010096 	slti	at,t0,150
    fb64:	1420ffb5 	bnez	at,fa3c <func_80948668+0xa4>
    fb68:	26b50048 	addiu	s5,s5,72
    fb6c:	3c110000 	lui	s1,0x0
    fb70:	00003825 	move	a3,zero
    fb74:	8fb50174 	lw	s5,372(sp)
    fb78:	26310000 	addiu	s1,s1,0
    fb7c:	00003025 	move	a2,zero
    fb80:	92ac0000 	lbu	t4,0(s5)
    fb84:	24010003 	li	at,3
    fb88:	8fb40190 	lw	s4,400(sp)
    fb8c:	15810072 	bne	t4,at,fd58 <func_80948668+0x3c0>
    fb90:	3c020602 	lui	v0,0x602
    fb94:	3c010001 	lui	at,0x1
    fb98:	34211da0 	ori	at,at,0x1da0
    fb9c:	2442ab00 	addiu	v0,v0,-21760
    fba0:	00027900 	sll	t7,v0,0x4
    fba4:	0281a021 	addu	s4,s4,at
    fba8:	3c0100ff 	lui	at,0xff
    fbac:	000f6f02 	srl	t5,t7,0x1c
    fbb0:	3c0e0000 	lui	t6,0x0
    fbb4:	25ce0000 	addiu	t6,t6,0
    fbb8:	000dc080 	sll	t8,t5,0x2
    fbbc:	3421ffff 	ori	at,at,0xffff
    fbc0:	0041b824 	and	s7,v0,at
    fbc4:	14e00016 	bnez	a3,fc20 <func_80948668+0x288>
    fbc8:	030eb021 	addu	s6,t8,t6
    fbcc:	8e6302d0 	lw	v1,720(s3)
    fbd0:	3c020602 	lui	v0,0x602
    fbd4:	2442a998 	addiu	v0,v0,-22120
    fbd8:	0002c900 	sll	t9,v0,0x4
    fbdc:	00195702 	srl	t2,t9,0x1c
    fbe0:	24690008 	addiu	t1,v1,8
    fbe4:	ae6902d0 	sw	t1,720(s3)
    fbe8:	000a5880 	sll	t3,t2,0x2
    fbec:	3c0cde00 	lui	t4,0xde00
    fbf0:	016e2021 	addu	a0,t3,t6
    fbf4:	3c0100ff 	lui	at,0xff
    fbf8:	ac6c0000 	sw	t4,0(v1)
    fbfc:	8c8f0000 	lw	t7,0(a0)
    fc00:	3421ffff 	ori	at,at,0xffff
    fc04:	00412824 	and	a1,v0,at
    fc08:	3c018000 	lui	at,0x8000
    fc0c:	01e56821 	addu	t5,t7,a1
    fc10:	01a1c021 	addu	t8,t5,at
    fc14:	24e70001 	addiu	a3,a3,1
    fc18:	30e700ff 	andi	a3,a3,0xff
    fc1c:	ac780004 	sw	t8,4(v1)
    fc20:	8e6302d0 	lw	v1,720(s3)
    fc24:	3c0afa00 	lui	t2,0xfa00
    fc28:	3c01c3e1 	lui	at,0xc3e1
    fc2c:	24790008 	addiu	t9,v1,8
    fc30:	ae7902d0 	sw	t9,720(s3)
    fc34:	ac6a0000 	sw	t2,0(v1)
    fc38:	86ab002c 	lh	t3,44(s5)
    fc3c:	3421eb00 	ori	at,at,0xeb00
    fc40:	3c0fdb06 	lui	t7,0xdb06
    fc44:	316e00ff 	andi	t6,t3,0xff
    fc48:	01c14825 	or	t1,t6,at
    fc4c:	ac690004 	sw	t1,4(v1)
    fc50:	a3a7018f 	sb	a3,399(sp)
    fc54:	a7a6018c 	sh	a2,396(sp)
    fc58:	8e7002d0 	lw	s0,720(s3)
    fc5c:	35ef0020 	ori	t7,t7,0x20
    fc60:	240e0020 	li	t6,32
    fc64:	260c0008 	addiu	t4,s0,8
    fc68:	ae6c02d0 	sw	t4,720(s3)
    fc6c:	ae0f0000 	sw	t7,0(s0)
    fc70:	92a20001 	lbu	v0,1(s5)
    fc74:	8fad0190 	lw	t5,400(sp)
    fc78:	240b0020 	li	t3,32
    fc7c:	00023080 	sll	a2,v0,0x2
    fc80:	8da40000 	lw	a0,0(t5)
    fc84:	00023900 	sll	a3,v0,0x4
    fc88:	240a0001 	li	t2,1
    fc8c:	24190040 	li	t9,64
    fc90:	24180020 	li	t8,32
    fc94:	00e23823 	subu	a3,a3,v0
    fc98:	00c23023 	subu	a2,a2,v0
    fc9c:	30c6007f 	andi	a2,a2,0x7f
    fca0:	30e700ff 	andi	a3,a3,0xff
    fca4:	afb80010 	sw	t8,16(sp)
    fca8:	afb90014 	sw	t9,20(sp)
    fcac:	afaa0018 	sw	t2,24(sp)
    fcb0:	afae0028 	sw	t6,40(sp)
    fcb4:	afab0024 	sw	t3,36(sp)
    fcb8:	afa00020 	sw	zero,32(sp)
    fcbc:	afa0001c 	sw	zero,28(sp)
    fcc0:	0c000000 	jal	0 <func_80938CD0>
    fcc4:	00002825 	move	a1,zero
    fcc8:	ae020004 	sw	v0,4(s0)
    fccc:	8ea6000c 	lw	a2,12(s5)
    fcd0:	c6ae0008 	lwc1	$f14,8(s5)
    fcd4:	c6ac0004 	lwc1	$f12,4(s5)
    fcd8:	0c000000 	jal	0 <func_80938CD0>
    fcdc:	00003825 	move	a3,zero
    fce0:	0c000000 	jal	0 <func_80938CD0>
    fce4:	02802025 	move	a0,s4
    fce8:	c6ac0034 	lwc1	$f12,52(s5)
    fcec:	4406f000 	mfc1	a2,$f30
    fcf0:	24070001 	li	a3,1
    fcf4:	0c000000 	jal	0 <func_80938CD0>
    fcf8:	46006386 	mov.s	$f14,$f12
    fcfc:	8e7002d0 	lw	s0,720(s3)
    fd00:	3c0cda38 	lui	t4,0xda38
    fd04:	358c0003 	ori	t4,t4,0x3
    fd08:	26090008 	addiu	t1,s0,8
    fd0c:	ae6902d0 	sw	t1,720(s3)
    fd10:	02602025 	move	a0,s3
    fd14:	02202825 	move	a1,s1
    fd18:	240625bc 	li	a2,9660
    fd1c:	0c000000 	jal	0 <func_80938CD0>
    fd20:	ae0c0000 	sw	t4,0(s0)
    fd24:	ae020004 	sw	v0,4(s0)
    fd28:	8e6302d0 	lw	v1,720(s3)
    fd2c:	3c0dde00 	lui	t5,0xde00
    fd30:	3c018000 	lui	at,0x8000
    fd34:	246f0008 	addiu	t7,v1,8
    fd38:	ae6f02d0 	sw	t7,720(s3)
    fd3c:	ac6d0000 	sw	t5,0(v1)
    fd40:	8ed80000 	lw	t8,0(s6)
    fd44:	0317c821 	addu	t9,t8,s7
    fd48:	03215021 	addu	t2,t9,at
    fd4c:	ac6a0004 	sw	t2,4(v1)
    fd50:	87a6018c 	lh	a2,396(sp)
    fd54:	93a7018f 	lbu	a3,399(sp)
    fd58:	24c60001 	addiu	a2,a2,1
    fd5c:	00063400 	sll	a2,a2,0x10
    fd60:	00063403 	sra	a2,a2,0x10
    fd64:	28c10096 	slti	at,a2,150
    fd68:	1420ff85 	bnez	at,fb80 <func_80948668+0x1e8>
    fd6c:	26b50048 	addiu	s5,s5,72
    fd70:	3c170000 	lui	s7,0x0
    fd74:	8fb50174 	lw	s5,372(sp)
    fd78:	26f70000 	addiu	s7,s7,0
    fd7c:	00002025 	move	a0,zero
    fd80:	a3a0018f 	sb	zero,399(sp)
    fd84:	24160002 	li	s6,2
    fd88:	92ab0000 	lbu	t3,0(s5)
    fd8c:	3c010001 	lui	at,0x1
    fd90:	34211da0 	ori	at,at,0x1da0
    fd94:	16cb006b 	bne	s6,t3,ff44 <func_80948668+0x5ac>
    fd98:	8fb40190 	lw	s4,400(sp)
    fd9c:	3c020602 	lui	v0,0x602
    fda0:	2442a430 	addiu	v0,v0,-23504
    fda4:	93ad018f 	lbu	t5,399(sp)
    fda8:	00027100 	sll	t6,v0,0x4
    fdac:	0281a021 	addu	s4,s4,at
    fdb0:	3c0100ff 	lui	at,0xff
    fdb4:	000e4f02 	srl	t1,t6,0x1c
    fdb8:	3c0f0000 	lui	t7,0x0
    fdbc:	25ef0000 	addiu	t7,t7,0
    fdc0:	00096080 	sll	t4,t1,0x2
    fdc4:	3421ffff 	ori	at,at,0xffff
    fdc8:	00419024 	and	s2,v0,at
    fdcc:	15a00012 	bnez	t5,fe18 <func_80948668+0x480>
    fdd0:	018f8821 	addu	s1,t4,t7
    fdd4:	8e6302d0 	lw	v1,720(s3)
    fdd8:	3c19e700 	lui	t9,0xe700
    fddc:	3c0effd7 	lui	t6,0xffd7
    fde0:	24780008 	addiu	t8,v1,8
    fde4:	ae7802d0 	sw	t8,720(s3)
    fde8:	ac600004 	sw	zero,4(v1)
    fdec:	ac790000 	sw	t9,0(v1)
    fdf0:	8e6302d0 	lw	v1,720(s3)
    fdf4:	35ceff80 	ori	t6,t6,0xff80
    fdf8:	3c0bfb00 	lui	t3,0xfb00
    fdfc:	246a0008 	addiu	t2,v1,8
    fe00:	ae6a02d0 	sw	t2,720(s3)
    fe04:	ac6e0004 	sw	t6,4(v1)
    fe08:	ac6b0000 	sw	t3,0(v1)
    fe0c:	93a9018f 	lbu	t1,399(sp)
    fe10:	252c0001 	addiu	t4,t1,1
    fe14:	a3ac018f 	sb	t4,399(sp)
    fe18:	8e6302d0 	lw	v1,720(s3)
    fe1c:	3c0dfa00 	lui	t5,0xfa00
    fe20:	3c01c814 	lui	at,0xc814
    fe24:	246f0008 	addiu	t7,v1,8
    fe28:	ae6f02d0 	sw	t7,720(s3)
    fe2c:	ac6d0000 	sw	t5,0(v1)
    fe30:	86b8002c 	lh	t8,44(s5)
    fe34:	3c0edb06 	lui	t6,0xdb06
    fe38:	35ce0020 	ori	t6,t6,0x20
    fe3c:	331900ff 	andi	t9,t8,0xff
    fe40:	03215025 	or	t2,t9,at
    fe44:	ac6a0004 	sw	t2,4(v1)
    fe48:	a7a4018c 	sh	a0,396(sp)
    fe4c:	8e7002d0 	lw	s0,720(s3)
    fe50:	24190020 	li	t9,32
    fe54:	24180020 	li	t8,32
    fe58:	260b0008 	addiu	t3,s0,8
    fe5c:	ae6b02d0 	sw	t3,720(s3)
    fe60:	ae0e0000 	sw	t6,0(s0)
    fe64:	92a20001 	lbu	v0,1(s5)
    fe68:	8fa90190 	lw	t1,400(sp)
    fe6c:	240d0001 	li	t5,1
    fe70:	00023080 	sll	a2,v0,0x2
    fe74:	8d240000 	lw	a0,0(t1)
    fe78:	00023900 	sll	a3,v0,0x4
    fe7c:	240f0040 	li	t7,64
    fe80:	240c0020 	li	t4,32
    fe84:	00e23823 	subu	a3,a3,v0
    fe88:	00c23023 	subu	a2,a2,v0
    fe8c:	30c6007f 	andi	a2,a2,0x7f
    fe90:	30e700ff 	andi	a3,a3,0xff
    fe94:	afac0010 	sw	t4,16(sp)
    fe98:	afaf0014 	sw	t7,20(sp)
    fe9c:	afb90028 	sw	t9,40(sp)
    fea0:	afb80024 	sw	t8,36(sp)
    fea4:	afa00020 	sw	zero,32(sp)
    fea8:	afa0001c 	sw	zero,28(sp)
    feac:	afad0018 	sw	t5,24(sp)
    feb0:	0c000000 	jal	0 <func_80938CD0>
    feb4:	00002825 	move	a1,zero
    feb8:	ae020004 	sw	v0,4(s0)
    febc:	8ea6000c 	lw	a2,12(s5)
    fec0:	c6ae0008 	lwc1	$f14,8(s5)
    fec4:	c6ac0004 	lwc1	$f12,4(s5)
    fec8:	0c000000 	jal	0 <func_80938CD0>
    fecc:	00003825 	move	a3,zero
    fed0:	0c000000 	jal	0 <func_80938CD0>
    fed4:	02802025 	move	a0,s4
    fed8:	c6ac0034 	lwc1	$f12,52(s5)
    fedc:	4406f000 	mfc1	a2,$f30
    fee0:	24070001 	li	a3,1
    fee4:	0c000000 	jal	0 <func_80938CD0>
    fee8:	46006386 	mov.s	$f14,$f12
    feec:	8e7002d0 	lw	s0,720(s3)
    fef0:	3c0bda38 	lui	t3,0xda38
    fef4:	356b0003 	ori	t3,t3,0x3
    fef8:	260a0008 	addiu	t2,s0,8
    fefc:	ae6a02d0 	sw	t2,720(s3)
    ff00:	02602025 	move	a0,s3
    ff04:	02e02825 	move	a1,s7
    ff08:	240625ed 	li	a2,9709
    ff0c:	0c000000 	jal	0 <func_80938CD0>
    ff10:	ae0b0000 	sw	t3,0(s0)
    ff14:	ae020004 	sw	v0,4(s0)
    ff18:	8e6302d0 	lw	v1,720(s3)
    ff1c:	3c09de00 	lui	t1,0xde00
    ff20:	3c018000 	lui	at,0x8000
    ff24:	246e0008 	addiu	t6,v1,8
    ff28:	ae6e02d0 	sw	t6,720(s3)
    ff2c:	ac690000 	sw	t1,0(v1)
    ff30:	8e2c0000 	lw	t4,0(s1)
    ff34:	01927821 	addu	t7,t4,s2
    ff38:	01e16821 	addu	t5,t7,at
    ff3c:	ac6d0004 	sw	t5,4(v1)
    ff40:	87a4018c 	lh	a0,396(sp)
    ff44:	24840001 	addiu	a0,a0,1
    ff48:	00042400 	sll	a0,a0,0x10
    ff4c:	00042403 	sra	a0,a0,0x10
    ff50:	28810096 	slti	at,a0,150
    ff54:	1420ff8c 	bnez	at,fd88 <func_80948668+0x3f0>
    ff58:	26b50048 	addiu	s5,s5,72
    ff5c:	3c010000 	lui	at,0x0
    ff60:	c4380000 	lwc1	$f24,0(at)
    ff64:	3c014270 	lui	at,0x4270
    ff68:	3c17db06 	lui	s7,0xdb06
    ff6c:	4481b000 	mtc1	at,$f22
    ff70:	4480a000 	mtc1	zero,$f20
    ff74:	00001825 	move	v1,zero
    ff78:	8fb50174 	lw	s5,372(sp)
    ff7c:	36f70034 	ori	s7,s7,0x34
    ff80:	00002025 	move	a0,zero
    ff84:	241efffe 	li	s8,-2
    ff88:	24160004 	li	s6,4
    ff8c:	92b80000 	lbu	t8,0(s5)
    ff90:	3c010001 	lui	at,0x1
    ff94:	34211da0 	ori	at,at,0x1da0
    ff98:	16d800a7 	bne	s6,t8,10238 <func_80948668+0x8a0>
    ff9c:	8fb40190 	lw	s4,400(sp)
    ffa0:	3c020602 	lui	v0,0x602
    ffa4:	2442a790 	addiu	v0,v0,-22640
    ffa8:	0002c900 	sll	t9,v0,0x4
    ffac:	0281a021 	addu	s4,s4,at
    ffb0:	3c0100ff 	lui	at,0xff
    ffb4:	00195702 	srl	t2,t9,0x1c
    ffb8:	3c0e0000 	lui	t6,0x0
    ffbc:	25ce0000 	addiu	t6,t6,0
    ffc0:	000a5880 	sll	t3,t2,0x2
    ffc4:	3421ffff 	ori	at,at,0xffff
    ffc8:	00419024 	and	s2,v0,at
    ffcc:	14600003 	bnez	v1,ffdc <func_80948668+0x644>
    ffd0:	016e8821 	addu	s1,t3,t6
    ffd4:	24630001 	addiu	v1,v1,1
    ffd8:	306300ff 	andi	v1,v1,0xff
    ffdc:	a3a3018f 	sb	v1,399(sp)
    ffe0:	a7a4018c 	sh	a0,396(sp)
    ffe4:	8e7002d0 	lw	s0,720(s3)
    ffe8:	240f0020 	li	t7,32
    ffec:	240d0040 	li	t5,64
    fff0:	26090008 	addiu	t1,s0,8
    fff4:	ae6902d0 	sw	t1,720(s3)
    fff8:	ae170000 	sw	s7,0(s0)
    fffc:	92a20001 	lbu	v0,1(s5)
   10000:	8fac0190 	lw	t4,400(sp)
   10004:	24180001 	li	t8,1
   10008:	005e0019 	multu	v0,s8
   1000c:	8d840000 	lw	a0,0(t4)
   10010:	240b0010 	li	t3,16
   10014:	240e0010 	li	t6,16
   10018:	000238c0 	sll	a3,v0,0x3
   1001c:	30e700ff 	andi	a3,a3,0xff
   10020:	afae0028 	sw	t6,40(sp)
   10024:	afab0024 	sw	t3,36(sp)
   10028:	afa00020 	sw	zero,32(sp)
   1002c:	afb80018 	sw	t8,24(sp)
   10030:	0000c812 	mflo	t9
   10034:	332a007f 	andi	t2,t9,0x7f
   10038:	afaa001c 	sw	t2,28(sp)
   1003c:	afad0014 	sw	t5,20(sp)
   10040:	afaf0010 	sw	t7,16(sp)
   10044:	00002825 	move	a1,zero
   10048:	0c000000 	jal	0 <func_80938CD0>
   1004c:	3046007f 	andi	a2,v0,0x7f
   10050:	ae020004 	sw	v0,4(s0)
   10054:	86a9002e 	lh	t1,46(s5)
   10058:	24010001 	li	at,1
   1005c:	00003825 	move	a3,zero
   10060:	5521001b 	bnel	t1,at,100d0 <func_80948668+0x738>
   10064:	8e6302d0 	lw	v1,720(s3)
   10068:	8e6302d0 	lw	v1,720(s3)
   1006c:	3c0ffa00 	lui	t7,0xfa00
   10070:	3c01ff41 	lui	at,0xff41
   10074:	246c0008 	addiu	t4,v1,8
   10078:	ae6c02d0 	sw	t4,720(s3)
   1007c:	ac6f0000 	sw	t7,0(v1)
   10080:	86ad002c 	lh	t5,44(s5)
   10084:	3c0be700 	lui	t3,0xe700
   10088:	3c0cffff 	lui	t4,0xffff
   1008c:	31b800ff 	andi	t8,t5,0xff
   10090:	0301c825 	or	t9,t8,at
   10094:	ac790004 	sw	t9,4(v1)
   10098:	8e6302d0 	lw	v1,720(s3)
   1009c:	358c0080 	ori	t4,t4,0x80
   100a0:	3c09fb00 	lui	t1,0xfb00
   100a4:	246a0008 	addiu	t2,v1,8
   100a8:	ae6a02d0 	sw	t2,720(s3)
   100ac:	ac600004 	sw	zero,4(v1)
   100b0:	ac6b0000 	sw	t3,0(v1)
   100b4:	8e6302d0 	lw	v1,720(s3)
   100b8:	246e0008 	addiu	t6,v1,8
   100bc:	ae6e02d0 	sw	t6,720(s3)
   100c0:	ac6c0004 	sw	t4,4(v1)
   100c4:	10000013 	b	10114 <func_80948668+0x77c>
   100c8:	ac690000 	sw	t1,0(v1)
   100cc:	8e6302d0 	lw	v1,720(s3)
   100d0:	3c0dfa00 	lui	t5,0xfa00
   100d4:	3c01c3e1 	lui	at,0xc3e1
   100d8:	246f0008 	addiu	t7,v1,8
   100dc:	ae6f02d0 	sw	t7,720(s3)
   100e0:	ac6d0000 	sw	t5,0(v1)
   100e4:	86b8002c 	lh	t8,44(s5)
   100e8:	3421eb00 	ori	at,at,0xeb00
   100ec:	3c0efb00 	lui	t6,0xfb00
   100f0:	331900ff 	andi	t9,t8,0xff
   100f4:	03215025 	or	t2,t9,at
   100f8:	ac6a0004 	sw	t2,4(v1)
   100fc:	8e6302d0 	lw	v1,720(s3)
   10100:	2409ff80 	li	t1,-128
   10104:	246b0008 	addiu	t3,v1,8
   10108:	ae6b02d0 	sw	t3,720(s3)
   1010c:	ac690004 	sw	t1,4(v1)
   10110:	ac6e0000 	sw	t6,0(v1)
   10114:	c6ac0004 	lwc1	$f12,4(s5)
   10118:	c6ae0008 	lwc1	$f14,8(s5)
   1011c:	0c000000 	jal	0 <func_80938CD0>
   10120:	8ea6000c 	lw	a2,12(s5)
   10124:	0c000000 	jal	0 <func_80938CD0>
   10128:	02802025 	move	a0,s4
   1012c:	86ac0030 	lh	t4,48(s5)
   10130:	24070001 	li	a3,1
   10134:	55800009 	bnezl	t4,1015c <func_80948668+0x7c4>
   10138:	4406a000 	mfc1	a2,$f20
   1013c:	4406b000 	mfc1	a2,$f22
   10140:	4600a306 	mov.s	$f12,$f20
   10144:	4600a386 	mov.s	$f14,$f20
   10148:	0c000000 	jal	0 <func_80938CD0>
   1014c:	24070001 	li	a3,1
   10150:	10000006 	b	1016c <func_80948668+0x7d4>
   10154:	c6ac003c 	lwc1	$f12,60(s5)
   10158:	4406a000 	mfc1	a2,$f20
   1015c:	4600a306 	mov.s	$f12,$f20
   10160:	0c000000 	jal	0 <func_80938CD0>
   10164:	4600a386 	mov.s	$f14,$f20
   10168:	c6ac003c 	lwc1	$f12,60(s5)
   1016c:	0c000000 	jal	0 <func_80938CD0>
   10170:	24050001 	li	a1,1
   10174:	4600c306 	mov.s	$f12,$f24
   10178:	0c000000 	jal	0 <func_80938CD0>
   1017c:	24050001 	li	a1,1
   10180:	c6ac0034 	lwc1	$f12,52(s5)
   10184:	4600f386 	mov.s	$f14,$f30
   10188:	24070001 	li	a3,1
   1018c:	44066000 	mfc1	a2,$f12
   10190:	0c000000 	jal	0 <func_80938CD0>
   10194:	00000000 	nop
   10198:	8e7002d0 	lw	s0,720(s3)
   1019c:	3c0dda38 	lui	t5,0xda38
   101a0:	35ad0003 	ori	t5,t5,0x3
   101a4:	260f0008 	addiu	t7,s0,8
   101a8:	ae6f02d0 	sw	t7,720(s3)
   101ac:	3c050000 	lui	a1,0x0
   101b0:	24a50000 	addiu	a1,a1,0
   101b4:	02602025 	move	a0,s3
   101b8:	2406262f 	li	a2,9775
   101bc:	0c000000 	jal	0 <func_80938CD0>
   101c0:	ae0d0000 	sw	t5,0(s0)
   101c4:	ae020004 	sw	v0,4(s0)
   101c8:	8e6302d0 	lw	v1,720(s3)
   101cc:	3c19e200 	lui	t9,0xe200
   101d0:	3c0a0c18 	lui	t2,0xc18
   101d4:	24780008 	addiu	t8,v1,8
   101d8:	ae7802d0 	sw	t8,720(s3)
   101dc:	354a49d8 	ori	t2,t2,0x49d8
   101e0:	3739001c 	ori	t9,t9,0x1c
   101e4:	ac790000 	sw	t9,0(v1)
   101e8:	ac6a0004 	sw	t2,4(v1)
   101ec:	8e6302d0 	lw	v1,720(s3)
   101f0:	3c0ed9fe 	lui	t6,0xd9fe
   101f4:	35cefbff 	ori	t6,t6,0xfbff
   101f8:	246b0008 	addiu	t3,v1,8
   101fc:	ae6b02d0 	sw	t3,720(s3)
   10200:	ac600004 	sw	zero,4(v1)
   10204:	ac6e0000 	sw	t6,0(v1)
   10208:	8e6302d0 	lw	v1,720(s3)
   1020c:	3c0cde00 	lui	t4,0xde00
   10210:	3c018000 	lui	at,0x8000
   10214:	24690008 	addiu	t1,v1,8
   10218:	ae6902d0 	sw	t1,720(s3)
   1021c:	ac6c0000 	sw	t4,0(v1)
   10220:	8e2f0000 	lw	t7,0(s1)
   10224:	01f26821 	addu	t5,t7,s2
   10228:	01a1c021 	addu	t8,t5,at
   1022c:	ac780004 	sw	t8,4(v1)
   10230:	93a3018f 	lbu	v1,399(sp)
   10234:	87a4018c 	lh	a0,396(sp)
   10238:	24840001 	addiu	a0,a0,1
   1023c:	00042400 	sll	a0,a0,0x10
   10240:	00042403 	sra	a0,a0,0x10
   10244:	28810096 	slti	at,a0,150
   10248:	1420ff50 	bnez	at,ff8c <func_80948668+0x5f4>
   1024c:	26b50048 	addiu	s5,s5,72
   10250:	3c010000 	lui	at,0x0
   10254:	c43c0000 	lwc1	$f28,0(at)
   10258:	3c0141f0 	lui	at,0x41f0
   1025c:	4481d000 	mtc1	at,$f26
   10260:	3c013f00 	lui	at,0x3f00
   10264:	3c1e0000 	lui	s8,0x0
   10268:	4481c000 	mtc1	at,$f24
   1026c:	8fb50174 	lw	s5,372(sp)
   10270:	27de0000 	addiu	s8,s8,0
   10274:	a7a0018c 	sh	zero,396(sp)
   10278:	a3a0018f 	sb	zero,399(sp)
   1027c:	92b90000 	lbu	t9,0(s5)
   10280:	24010005 	li	at,5
   10284:	93aa018f 	lbu	t2,399(sp)
   10288:	572100a3 	bnel	t9,at,10518 <func_80948668+0xb80>
   1028c:	87b8018c 	lh	t8,396(sp)
   10290:	1540003e 	bnez	t2,1038c <func_80948668+0x9f4>
   10294:	00009025 	move	s2,zero
   10298:	8e6302d0 	lw	v1,720(s3)
   1029c:	3c020602 	lui	v0,0x602
   102a0:	2442aa50 	addiu	v0,v0,-21936
   102a4:	00025900 	sll	t3,v0,0x4
   102a8:	000b7702 	srl	t6,t3,0x1c
   102ac:	3c0c0000 	lui	t4,0x0
   102b0:	246f0008 	addiu	t7,v1,8
   102b4:	ae6f02d0 	sw	t7,720(s3)
   102b8:	258c0000 	addiu	t4,t4,0
   102bc:	000e4880 	sll	t1,t6,0x2
   102c0:	3c0dde00 	lui	t5,0xde00
   102c4:	012c2021 	addu	a0,t1,t4
   102c8:	3c0100ff 	lui	at,0xff
   102cc:	ac6d0000 	sw	t5,0(v1)
   102d0:	8c980000 	lw	t8,0(a0)
   102d4:	3421ffff 	ori	at,at,0xffff
   102d8:	00412824 	and	a1,v0,at
   102dc:	3c018000 	lui	at,0x8000
   102e0:	0305c821 	addu	t9,t8,a1
   102e4:	03215021 	addu	t2,t9,at
   102e8:	ac6a0004 	sw	t2,4(v1)
   102ec:	8e6302d0 	lw	v1,720(s3)
   102f0:	3c09c3e1 	lui	t1,0xc3e1
   102f4:	3529ebff 	ori	t1,t1,0xebff
   102f8:	246b0008 	addiu	t3,v1,8
   102fc:	ae6b02d0 	sw	t3,720(s3)
   10300:	3c0efa00 	lui	t6,0xfa00
   10304:	ac6e0000 	sw	t6,0(v1)
   10308:	ac690004 	sw	t1,4(v1)
   1030c:	8e7002d0 	lw	s0,720(s3)
   10310:	3c0fdb06 	lui	t7,0xdb06
   10314:	35ef0020 	ori	t7,t7,0x20
   10318:	260c0008 	addiu	t4,s0,8
   1031c:	ae6c02d0 	sw	t4,720(s3)
   10320:	ae0f0000 	sw	t7,0(s0)
   10324:	8fad0190 	lw	t5,400(sp)
   10328:	240e0020 	li	t6,32
   1032c:	240b0020 	li	t3,32
   10330:	8da40000 	lw	a0,0(t5)
   10334:	240a0001 	li	t2,1
   10338:	24190040 	li	t9,64
   1033c:	24180020 	li	t8,32
   10340:	afb80010 	sw	t8,16(sp)
   10344:	afb90014 	sw	t9,20(sp)
   10348:	afaa0018 	sw	t2,24(sp)
   1034c:	afae0028 	sw	t6,40(sp)
   10350:	afab0024 	sw	t3,36(sp)
   10354:	afa00020 	sw	zero,32(sp)
   10358:	afa0001c 	sw	zero,28(sp)
   1035c:	00002825 	move	a1,zero
   10360:	00003025 	move	a2,zero
   10364:	0c000000 	jal	0 <func_80938CD0>
   10368:	00003825 	move	a3,zero
   1036c:	ae020004 	sw	v0,4(s0)
   10370:	93a9018f 	lbu	t1,399(sp)
   10374:	24040001 	li	a0,1
   10378:	240571ac 	li	a1,29100
   1037c:	252c0001 	addiu	t4,t1,1
   10380:	a3ac018f 	sb	t4,399(sp)
   10384:	0c000000 	jal	0 <func_80938CD0>
   10388:	2406263a 	li	a2,9786
   1038c:	8eb10044 	lw	s1,68(s5)
   10390:	3c020602 	lui	v0,0x602
   10394:	24140014 	li	s4,20
   10398:	16200003 	bnez	s1,103a8 <func_80948668+0xa10>
   1039c:	2442ab00 	addiu	v0,v0,-21760
   103a0:	10000001 	b	103a8 <func_80948668+0xa10>
   103a4:	24140046 	li	s4,70
   103a8:	1a80005a 	blez	s4,10514 <func_80948668+0xb7c>
   103ac:	00027900 	sll	t7,v0,0x4
   103b0:	000f6f02 	srl	t5,t7,0x1c
   103b4:	3c190000 	lui	t9,0x0
   103b8:	3c0100ff 	lui	at,0xff
   103bc:	3421ffff 	ori	at,at,0xffff
   103c0:	27390000 	addiu	t9,t9,0
   103c4:	000dc080 	sll	t8,t5,0x2
   103c8:	0319b021 	addu	s6,t8,t9
   103cc:	0041b824 	and	s7,v0,at
   103d0:	0c000000 	jal	0 <func_80938CD0>
   103d4:	00000000 	nop
   103d8:	44924000 	mtc1	s2,$f8
   103dc:	46180101 	sub.s	$f4,$f0,$f24
   103e0:	c6a60038 	lwc1	$f6,56(s5)
   103e4:	468042a0 	cvt.s.w	$f10,$f8
   103e8:	461a2502 	mul.s	$f20,$f4,$f26
   103ec:	00000000 	nop
   103f0:	460a3582 	mul.s	$f22,$f6,$f10
   103f4:	0c000000 	jal	0 <func_80938CD0>
   103f8:	00000000 	nop
   103fc:	46180401 	sub.s	$f16,$f0,$f24
   10400:	8fa20180 	lw	v0,384(sp)
   10404:	461a8082 	mul.s	$f2,$f16,$f26
   10408:	5220000d 	beqzl	s1,10440 <func_80948668+0xaa8>
   1040c:	c452002c 	lwc1	$f18,44(v0)
   10410:	c628002c 	lwc1	$f8,44(s1)
   10414:	c6320024 	lwc1	$f18,36(s1)
   10418:	c6240028 	lwc1	$f4,40(s1)
   1041c:	46024180 	add.s	$f6,$f8,$f2
   10420:	00003825 	move	a3,zero
   10424:	46149300 	add.s	$f12,$f18,$f20
   10428:	44063000 	mfc1	a2,$f6
   1042c:	0c000000 	jal	0 <func_80938CD0>
   10430:	46162380 	add.s	$f14,$f4,$f22
   10434:	1000000b 	b	10464 <func_80948668+0xacc>
   10438:	c6ac0034 	lwc1	$f12,52(s5)
   1043c:	c452002c 	lwc1	$f18,44(v0)
   10440:	c44a0024 	lwc1	$f10,36(v0)
   10444:	c4500028 	lwc1	$f16,40(v0)
   10448:	46029100 	add.s	$f4,$f18,$f2
   1044c:	00003825 	move	a3,zero
   10450:	46145300 	add.s	$f12,$f10,$f20
   10454:	44062000 	mfc1	a2,$f4
   10458:	0c000000 	jal	0 <func_80938CD0>
   1045c:	46168380 	add.s	$f14,$f16,$f22
   10460:	c6ac0034 	lwc1	$f12,52(s5)
   10464:	24070001 	li	a3,1
   10468:	44066000 	mfc1	a2,$f12
   1046c:	0c000000 	jal	0 <func_80938CD0>
   10470:	46006386 	mov.s	$f14,$f12
   10474:	0c000000 	jal	0 <func_80938CD0>
   10478:	00000000 	nop
   1047c:	461c0302 	mul.s	$f12,$f0,$f28
   10480:	0c000000 	jal	0 <func_80938CD0>
   10484:	24050001 	li	a1,1
   10488:	0c000000 	jal	0 <func_80938CD0>
   1048c:	00000000 	nop
   10490:	46180201 	sub.s	$f8,$f0,$f24
   10494:	24050001 	li	a1,1
   10498:	461c4182 	mul.s	$f6,$f8,$f28
   1049c:	00000000 	nop
   104a0:	46183302 	mul.s	$f12,$f6,$f24
   104a4:	0c000000 	jal	0 <func_80938CD0>
   104a8:	00000000 	nop
   104ac:	8e7002d0 	lw	s0,720(s3)
   104b0:	3c0bda38 	lui	t3,0xda38
   104b4:	356b0003 	ori	t3,t3,0x3
   104b8:	260a0008 	addiu	t2,s0,8
   104bc:	ae6a02d0 	sw	t2,720(s3)
   104c0:	02602025 	move	a0,s3
   104c4:	03c02825 	move	a1,s8
   104c8:	2406267f 	li	a2,9855
   104cc:	0c000000 	jal	0 <func_80938CD0>
   104d0:	ae0b0000 	sw	t3,0(s0)
   104d4:	ae020004 	sw	v0,4(s0)
   104d8:	8e6302d0 	lw	v1,720(s3)
   104dc:	3c09de00 	lui	t1,0xde00
   104e0:	26520001 	addiu	s2,s2,1
   104e4:	246e0008 	addiu	t6,v1,8
   104e8:	ae6e02d0 	sw	t6,720(s3)
   104ec:	ac690000 	sw	t1,0(v1)
   104f0:	8ecc0000 	lw	t4,0(s6)
   104f4:	00129400 	sll	s2,s2,0x10
   104f8:	3c018000 	lui	at,0x8000
   104fc:	01977821 	addu	t7,t4,s7
   10500:	00129403 	sra	s2,s2,0x10
   10504:	01e16821 	addu	t5,t7,at
   10508:	0254082a 	slt	at,s2,s4
   1050c:	1420ffb0 	bnez	at,103d0 <func_80948668+0xa38>
   10510:	ac6d0004 	sw	t5,4(v1)
   10514:	87b8018c 	lh	t8,396(sp)
   10518:	26b50048 	addiu	s5,s5,72
   1051c:	27190001 	addiu	t9,t8,1
   10520:	00195400 	sll	t2,t9,0x10
   10524:	000a5c03 	sra	t3,t2,0x10
   10528:	29610096 	slti	at,t3,150
   1052c:	1420ff53 	bnez	at,1027c <func_80948668+0x8e4>
   10530:	a7b9018c 	sh	t9,396(sp)
   10534:	3c1e0000 	lui	s8,0x0
   10538:	8fb50174 	lw	s5,372(sp)
   1053c:	27de0000 	addiu	s8,s8,0
   10540:	a7a0018c 	sh	zero,396(sp)
   10544:	92ae0000 	lbu	t6,0(s5)
   10548:	8fb40190 	lw	s4,400(sp)
   1054c:	29c10006 	slti	at,t6,6
   10550:	542000a4 	bnezl	at,107e4 <func_80948668+0xe4c>
   10554:	87a9018c 	lh	t1,396(sp)
   10558:	86a9002e 	lh	t1,46(s5)
   1055c:	3c010001 	lui	at,0x1
   10560:	34211da0 	ori	at,at,0x1da0
   10564:	15200022 	bnez	t1,105f0 <func_80948668+0xc58>
   10568:	0281a021 	addu	s4,s4,at
   1056c:	8e6302d0 	lw	v1,720(s3)
   10570:	3c0afa00 	lui	t2,0xfa00
   10574:	3c020602 	lui	v0,0x602
   10578:	24790008 	addiu	t9,v1,8
   1057c:	ae7902d0 	sw	t9,720(s3)
   10580:	3c0100ff 	lui	at,0xff
   10584:	ac6a0000 	sw	t2,0(v1)
   10588:	86ab002c 	lh	t3,44(s5)
   1058c:	3421ffff 	ori	at,at,0xffff
   10590:	2442a998 	addiu	v0,v0,-22120
   10594:	00412824 	and	a1,v0,at
   10598:	3c01c3e1 	lui	at,0xc3e1
   1059c:	3421eb00 	ori	at,at,0xeb00
   105a0:	316e00ff 	andi	t6,t3,0xff
   105a4:	01c14825 	or	t1,t6,at
   105a8:	ac690004 	sw	t1,4(v1)
   105ac:	8e6302d0 	lw	v1,720(s3)
   105b0:	00026100 	sll	t4,v0,0x4
   105b4:	000c7f02 	srl	t7,t4,0x1c
   105b8:	000f6880 	sll	t5,t7,0x2
   105bc:	3c180000 	lui	t8,0x0
   105c0:	246c0008 	addiu	t4,v1,8
   105c4:	27180000 	addiu	t8,t8,0
   105c8:	ae6c02d0 	sw	t4,720(s3)
   105cc:	3c0fde00 	lui	t7,0xde00
   105d0:	01b82021 	addu	a0,t5,t8
   105d4:	ac6f0000 	sw	t7,0(v1)
   105d8:	8c8d0000 	lw	t5,0(a0)
   105dc:	3c018000 	lui	at,0x8000
   105e0:	01a5c021 	addu	t8,t5,a1
   105e4:	0301c821 	addu	t9,t8,at
   105e8:	10000019 	b	10650 <func_80948668+0xcb8>
   105ec:	ac790004 	sw	t9,4(v1)
   105f0:	8e6302d0 	lw	v1,720(s3)
   105f4:	3c0bfa00 	lui	t3,0xfa00
   105f8:	3c01c814 	lui	at,0xc814
   105fc:	246a0008 	addiu	t2,v1,8
   10600:	ae6a02d0 	sw	t2,720(s3)
   10604:	ac6b0000 	sw	t3,0(v1)
   10608:	86ae002c 	lh	t6,44(s5)
   1060c:	3c0de700 	lui	t5,0xe700
   10610:	3c0affd7 	lui	t2,0xffd7
   10614:	31c900ff 	andi	t1,t6,0xff
   10618:	01216025 	or	t4,t1,at
   1061c:	ac6c0004 	sw	t4,4(v1)
   10620:	8e6302d0 	lw	v1,720(s3)
   10624:	354aff80 	ori	t2,t2,0xff80
   10628:	3c19fb00 	lui	t9,0xfb00
   1062c:	246f0008 	addiu	t7,v1,8
   10630:	ae6f02d0 	sw	t7,720(s3)
   10634:	ac600004 	sw	zero,4(v1)
   10638:	ac6d0000 	sw	t5,0(v1)
   1063c:	8e6302d0 	lw	v1,720(s3)
   10640:	24780008 	addiu	t8,v1,8
   10644:	ae7802d0 	sw	t8,720(s3)
   10648:	ac6a0004 	sw	t2,4(v1)
   1064c:	ac790000 	sw	t9,0(v1)
   10650:	8e7002d0 	lw	s0,720(s3)
   10654:	3c0edb06 	lui	t6,0xdb06
   10658:	35ce0020 	ori	t6,t6,0x20
   1065c:	260b0008 	addiu	t3,s0,8
   10660:	ae6b02d0 	sw	t3,720(s3)
   10664:	ae0e0000 	sw	t6,0(s0)
   10668:	92a20001 	lbu	v0,1(s5)
   1066c:	8fa90190 	lw	t1,400(sp)
   10670:	240c0020 	li	t4,32
   10674:	00023823 	negu	a3,v0
   10678:	8d240000 	lw	a0,0(t1)
   1067c:	00e00821 	move	at,a3
   10680:	00073900 	sll	a3,a3,0x4
   10684:	00023080 	sll	a2,v0,0x2
   10688:	00e13823 	subu	a3,a3,at
   1068c:	240f0040 	li	t7,64
   10690:	240d0001 	li	t5,1
   10694:	24180020 	li	t8,32
   10698:	24190020 	li	t9,32
   1069c:	00c23023 	subu	a2,a2,v0
   106a0:	30c6007f 	andi	a2,a2,0x7f
   106a4:	afb90028 	sw	t9,40(sp)
   106a8:	afb80024 	sw	t8,36(sp)
   106ac:	afad0018 	sw	t5,24(sp)
   106b0:	afaf0014 	sw	t7,20(sp)
   106b4:	30e700ff 	andi	a3,a3,0xff
   106b8:	afa00020 	sw	zero,32(sp)
   106bc:	afa0001c 	sw	zero,28(sp)
   106c0:	afac0010 	sw	t4,16(sp)
   106c4:	0c000000 	jal	0 <func_80938CD0>
   106c8:	00002825 	move	a1,zero
   106cc:	ae020004 	sw	v0,4(s0)
   106d0:	8ea6000c 	lw	a2,12(s5)
   106d4:	c6ae0008 	lwc1	$f14,8(s5)
   106d8:	c6ac0004 	lwc1	$f12,4(s5)
   106dc:	0c000000 	jal	0 <func_80938CD0>
   106e0:	00003825 	move	a3,zero
   106e4:	0c000000 	jal	0 <func_80938CD0>
   106e8:	02802025 	move	a0,s4
   106ec:	c6ac0034 	lwc1	$f12,52(s5)
   106f0:	4406f000 	mfc1	a2,$f30
   106f4:	24070001 	li	a3,1
   106f8:	0c000000 	jal	0 <func_80938CD0>
   106fc:	46006386 	mov.s	$f14,$f12
   10700:	8e7002d0 	lw	s0,720(s3)
   10704:	3c0bda38 	lui	t3,0xda38
   10708:	356b0003 	ori	t3,t3,0x3
   1070c:	260a0008 	addiu	t2,s0,8
   10710:	ae6a02d0 	sw	t2,720(s3)
   10714:	02602025 	move	a0,s3
   10718:	03c02825 	move	a1,s8
   1071c:	240626b7 	li	a2,9911
   10720:	0c000000 	jal	0 <func_80938CD0>
   10724:	ae0b0000 	sw	t3,0(s0)
   10728:	ae020004 	sw	v0,4(s0)
   1072c:	86ae002e 	lh	t6,46(s5)
   10730:	3c020602 	lui	v0,0x602
   10734:	2442a430 	addiu	v0,v0,-23504
   10738:	15c00017 	bnez	t6,10798 <func_80948668+0xe00>
   1073c:	00024900 	sll	t1,v0,0x4
   10740:	8e6302d0 	lw	v1,720(s3)
   10744:	3c020602 	lui	v0,0x602
   10748:	2442ab00 	addiu	v0,v0,-21760
   1074c:	00024900 	sll	t1,v0,0x4
   10750:	00096702 	srl	t4,t1,0x1c
   10754:	3c0d0000 	lui	t5,0x0
   10758:	24780008 	addiu	t8,v1,8
   1075c:	ae7802d0 	sw	t8,720(s3)
   10760:	25ad0000 	addiu	t5,t5,0
   10764:	000c7880 	sll	t7,t4,0x2
   10768:	3c19de00 	lui	t9,0xde00
   1076c:	01edb021 	addu	s6,t7,t5
   10770:	3c0100ff 	lui	at,0xff
   10774:	ac790000 	sw	t9,0(v1)
   10778:	8eca0000 	lw	t2,0(s6)
   1077c:	3421ffff 	ori	at,at,0xffff
   10780:	0041b824 	and	s7,v0,at
   10784:	3c018000 	lui	at,0x8000
   10788:	01575821 	addu	t3,t2,s7
   1078c:	01617021 	addu	t6,t3,at
   10790:	10000013 	b	107e0 <func_80948668+0xe48>
   10794:	ac6e0004 	sw	t6,4(v1)
   10798:	8e6302d0 	lw	v1,720(s3)
   1079c:	00096702 	srl	t4,t1,0x1c
   107a0:	3c0d0000 	lui	t5,0x0
   107a4:	24780008 	addiu	t8,v1,8
   107a8:	ae7802d0 	sw	t8,720(s3)
   107ac:	25ad0000 	addiu	t5,t5,0
   107b0:	000c7880 	sll	t7,t4,0x2
   107b4:	3c19de00 	lui	t9,0xde00
   107b8:	01ed8821 	addu	s1,t7,t5
   107bc:	3c0100ff 	lui	at,0xff
   107c0:	ac790000 	sw	t9,0(v1)
   107c4:	8e2a0000 	lw	t2,0(s1)
   107c8:	3421ffff 	ori	at,at,0xffff
   107cc:	00419024 	and	s2,v0,at
   107d0:	3c018000 	lui	at,0x8000
   107d4:	01525821 	addu	t3,t2,s2
   107d8:	01617021 	addu	t6,t3,at
   107dc:	ac6e0004 	sw	t6,4(v1)
   107e0:	87a9018c 	lh	t1,396(sp)
   107e4:	26b50048 	addiu	s5,s5,72
   107e8:	252c0001 	addiu	t4,t1,1
   107ec:	000c7c00 	sll	t7,t4,0x10
   107f0:	000f6c03 	sra	t5,t7,0x10
   107f4:	29a10096 	slti	at,t5,150
   107f8:	1420ff52 	bnez	at,10544 <func_80948668+0xbac>
   107fc:	a7ac018c 	sh	t4,396(sp)
   10800:	3c060000 	lui	a2,0x0
   10804:	24c60000 	addiu	a2,a2,0
   10808:	27a4015c 	addiu	a0,sp,348
   1080c:	02602825 	move	a1,s3
   10810:	0c000000 	jal	0 <func_80938CD0>
   10814:	240726c0 	li	a3,9920
   10818:	8fbf008c 	lw	ra,140(sp)
   1081c:	d7b40038 	ldc1	$f20,56(sp)
   10820:	d7b60040 	ldc1	$f22,64(sp)
   10824:	d7b80048 	ldc1	$f24,72(sp)
   10828:	d7ba0050 	ldc1	$f26,80(sp)
   1082c:	d7bc0058 	ldc1	$f28,88(sp)
   10830:	d7be0060 	ldc1	$f30,96(sp)
   10834:	8fb00068 	lw	s0,104(sp)
   10838:	8fb1006c 	lw	s1,108(sp)
   1083c:	8fb20070 	lw	s2,112(sp)
   10840:	8fb30074 	lw	s3,116(sp)
   10844:	8fb40078 	lw	s4,120(sp)
   10848:	8fb5007c 	lw	s5,124(sp)
   1084c:	8fb60080 	lw	s6,128(sp)
   10850:	8fb70084 	lw	s7,132(sp)
   10854:	8fbe0088 	lw	s8,136(sp)
   10858:	03e00008 	jr	ra
   1085c:	27bd0190 	addiu	sp,sp,400

00010860 <func_80949530>:
   10860:	27bdffe8 	addiu	sp,sp,-24
   10864:	afa5001c 	sw	a1,28(sp)
   10868:	3c0e0000 	lui	t6,0x0
   1086c:	afbf0014 	sw	ra,20(sp)
   10870:	25ce0000 	addiu	t6,t6,0
   10874:	00803825 	move	a3,a0
   10878:	ac8e014c 	sw	t6,332(a0)
   1087c:	3c050603 	lui	a1,0x603
   10880:	24a52bf8 	addiu	a1,a1,11256
   10884:	afa70018 	sw	a3,24(sp)
   10888:	24840568 	addiu	a0,a0,1384
   1088c:	0c000000 	jal	0 <func_80938CD0>
   10890:	3c06c040 	lui	a2,0xc040
   10894:	3c0142c8 	lui	at,0x42c8
   10898:	44816000 	mtc1	at,$f12
   1089c:	0c000000 	jal	0 <func_80938CD0>
   108a0:	00000000 	nop
   108a4:	4600010d 	trunc.w.s	$f4,$f0
   108a8:	8fa70018 	lw	a3,24(sp)
   108ac:	44803000 	mtc1	zero,$f6
   108b0:	24190019 	li	t9,25
   108b4:	44182000 	mfc1	t8,$f4
   108b8:	a4f9017a 	sh	t9,378(a3)
   108bc:	e4e604c8 	swc1	$f6,1224(a3)
   108c0:	a4f80150 	sh	t8,336(a3)
   108c4:	8fbf0014 	lw	ra,20(sp)
   108c8:	27bd0018 	addiu	sp,sp,24
   108cc:	03e00008 	jr	ra
   108d0:	00000000 	nop

000108d4 <func_809495A4>:
   108d4:	27bdffe0 	addiu	sp,sp,-32
   108d8:	afb00018 	sw	s0,24(sp)
   108dc:	00808025 	move	s0,a0
   108e0:	afbf001c 	sw	ra,28(sp)
   108e4:	afa50024 	sw	a1,36(sp)
   108e8:	0c000000 	jal	0 <func_80938CD0>
   108ec:	24840568 	addiu	a0,a0,1384
   108f0:	c600005c 	lwc1	$f0,92(s0)
   108f4:	3c013fc0 	lui	at,0x3fc0
   108f8:	44812000 	mtc1	at,$f4
   108fc:	46000005 	abs.s	$f0,$f0
   10900:	3c063dcc 	lui	a2,0x3dcc
   10904:	46040182 	mul.s	$f6,$f0,$f4
   10908:	34c6cccd 	ori	a2,a2,0xcccd
   1090c:	26040024 	addiu	a0,s0,36
   10910:	8e0504b0 	lw	a1,1200(s0)
   10914:	44073000 	mfc1	a3,$f6
   10918:	0c000000 	jal	0 <func_80938CD0>
   1091c:	00000000 	nop
   10920:	c6000060 	lwc1	$f0,96(s0)
   10924:	3c013fc0 	lui	at,0x3fc0
   10928:	44814000 	mtc1	at,$f8
   1092c:	46000005 	abs.s	$f0,$f0
   10930:	3c063dcc 	lui	a2,0x3dcc
   10934:	46080282 	mul.s	$f10,$f0,$f8
   10938:	34c6cccd 	ori	a2,a2,0xcccd
   1093c:	26040028 	addiu	a0,s0,40
   10940:	8e0504b4 	lw	a1,1204(s0)
   10944:	44075000 	mfc1	a3,$f10
   10948:	0c000000 	jal	0 <func_80938CD0>
   1094c:	00000000 	nop
   10950:	260404b4 	addiu	a0,s0,1204
   10954:	3c0543be 	lui	a1,0x43be
   10958:	3c063f80 	lui	a2,0x3f80
   1095c:	0c000000 	jal	0 <func_80938CD0>
   10960:	3c074000 	lui	a3,0x4000
   10964:	c6000064 	lwc1	$f0,100(s0)
   10968:	3c013fc0 	lui	at,0x3fc0
   1096c:	44818000 	mtc1	at,$f16
   10970:	46000005 	abs.s	$f0,$f0
   10974:	3c063dcc 	lui	a2,0x3dcc
   10978:	46100482 	mul.s	$f18,$f0,$f16
   1097c:	34c6cccd 	ori	a2,a2,0xcccd
   10980:	2604002c 	addiu	a0,s0,44
   10984:	8e0504b8 	lw	a1,1208(s0)
   10988:	44079000 	mfc1	a3,$f18
   1098c:	0c000000 	jal	0 <func_80938CD0>
   10990:	00000000 	nop
   10994:	860e017a 	lh	t6,378(s0)
   10998:	24010001 	li	at,1
   1099c:	02002025 	move	a0,s0
   109a0:	55c10004 	bnel	t6,at,109b4 <func_809495A4+0xe0>
   109a4:	c60404c8 	lwc1	$f4,1224(s0)
   109a8:	0c000000 	jal	0 <func_80938CD0>
   109ac:	8fa50024 	lw	a1,36(sp)
   109b0:	c60404c8 	lwc1	$f4,1224(s0)
   109b4:	260400b6 	addiu	a0,s0,182
   109b8:	8605008a 	lh	a1,138(s0)
   109bc:	4600218d 	trunc.w.s	$f6,$f4
   109c0:	24060005 	li	a2,5
   109c4:	44073000 	mfc1	a3,$f6
   109c8:	00000000 	nop
   109cc:	00073c00 	sll	a3,a3,0x10
   109d0:	0c000000 	jal	0 <func_80938CD0>
   109d4:	00073c03 	sra	a3,a3,0x10
   109d8:	260404c8 	addiu	a0,s0,1224
   109dc:	3c054580 	lui	a1,0x4580
   109e0:	3c063f80 	lui	a2,0x3f80
   109e4:	0c000000 	jal	0 <func_80938CD0>
   109e8:	3c0743af 	lui	a3,0x43af
   109ec:	8fbf001c 	lw	ra,28(sp)
   109f0:	8fb00018 	lw	s0,24(sp)
   109f4:	27bd0020 	addiu	sp,sp,32
   109f8:	03e00008 	jr	ra
   109fc:	00000000 	nop

00010a00 <func_809496D0>:
   10a00:	27bdffe8 	addiu	sp,sp,-24
   10a04:	afa5001c 	sw	a1,28(sp)
   10a08:	3c0e0000 	lui	t6,0x0
   10a0c:	afbf0014 	sw	ra,20(sp)
   10a10:	25ce0000 	addiu	t6,t6,0
   10a14:	00803825 	move	a3,a0
   10a18:	ac8e014c 	sw	t6,332(a0)
   10a1c:	3c050603 	lui	a1,0x603
   10a20:	24a56fbc 	addiu	a1,a1,28604
   10a24:	afa70018 	sw	a3,24(sp)
   10a28:	24840568 	addiu	a0,a0,1384
   10a2c:	0c000000 	jal	0 <func_80938CD0>
   10a30:	3c06c0a0 	lui	a2,0xc0a0
   10a34:	3c040603 	lui	a0,0x603
   10a38:	0c000000 	jal	0 <func_80938CD0>
   10a3c:	24846fbc 	addiu	a0,a0,28604
   10a40:	44822000 	mtc1	v0,$f4
   10a44:	8fa70018 	lw	a3,24(sp)
   10a48:	468021a0 	cvt.s.w	$f6,$f4
   10a4c:	a4e00440 	sh	zero,1088(a3)
   10a50:	e4e601a4 	swc1	$f6,420(a3)
   10a54:	8fbf0014 	lw	ra,20(sp)
   10a58:	27bd0018 	addiu	sp,sp,24
   10a5c:	03e00008 	jr	ra
   10a60:	00000000 	nop

00010a64 <func_80949734>:
   10a64:	27bdffd0 	addiu	sp,sp,-48
   10a68:	afb00018 	sw	s0,24(sp)
   10a6c:	00808025 	move	s0,a0
   10a70:	afbf001c 	sw	ra,28(sp)
   10a74:	24840568 	addiu	a0,a0,1384
   10a78:	afa50034 	sw	a1,52(sp)
   10a7c:	0c000000 	jal	0 <func_80938CD0>
   10a80:	afa40024 	sw	a0,36(sp)
   10a84:	c600005c 	lwc1	$f0,92(s0)
   10a88:	3c013fc0 	lui	at,0x3fc0
   10a8c:	44812000 	mtc1	at,$f4
   10a90:	46000005 	abs.s	$f0,$f0
   10a94:	3c063cf5 	lui	a2,0x3cf5
   10a98:	46040182 	mul.s	$f6,$f0,$f4
   10a9c:	34c6c28f 	ori	a2,a2,0xc28f
   10aa0:	26040024 	addiu	a0,s0,36
   10aa4:	8e0504b0 	lw	a1,1200(s0)
   10aa8:	44073000 	mfc1	a3,$f6
   10aac:	0c000000 	jal	0 <func_80938CD0>
   10ab0:	00000000 	nop
   10ab4:	c6000060 	lwc1	$f0,96(s0)
   10ab8:	3c013fc0 	lui	at,0x3fc0
   10abc:	44814000 	mtc1	at,$f8
   10ac0:	46000005 	abs.s	$f0,$f0
   10ac4:	3c063cf5 	lui	a2,0x3cf5
   10ac8:	46080282 	mul.s	$f10,$f0,$f8
   10acc:	34c6c28f 	ori	a2,a2,0xc28f
   10ad0:	26040028 	addiu	a0,s0,40
   10ad4:	8e0504b4 	lw	a1,1204(s0)
   10ad8:	44075000 	mfc1	a3,$f10
   10adc:	0c000000 	jal	0 <func_80938CD0>
   10ae0:	00000000 	nop
   10ae4:	c6000064 	lwc1	$f0,100(s0)
   10ae8:	3c013fc0 	lui	at,0x3fc0
   10aec:	44818000 	mtc1	at,$f16
   10af0:	46000005 	abs.s	$f0,$f0
   10af4:	3c063cf5 	lui	a2,0x3cf5
   10af8:	46100482 	mul.s	$f18,$f0,$f16
   10afc:	34c6c28f 	ori	a2,a2,0xc28f
   10b00:	2604002c 	addiu	a0,s0,44
   10b04:	8e0504b8 	lw	a1,1208(s0)
   10b08:	44079000 	mfc1	a3,$f18
   10b0c:	0c000000 	jal	0 <func_80938CD0>
   10b10:	00000000 	nop
   10b14:	260400b6 	addiu	a0,s0,182
   10b18:	8605008a 	lh	a1,138(s0)
   10b1c:	24060005 	li	a2,5
   10b20:	0c000000 	jal	0 <func_80938CD0>
   10b24:	24071000 	li	a3,4096
   10b28:	8fa40024 	lw	a0,36(sp)
   10b2c:	0c000000 	jal	0 <func_80938CD0>
   10b30:	8e0501a4 	lw	a1,420(s0)
   10b34:	50400042 	beqzl	v0,10c40 <func_80949734+0x1dc>
   10b38:	8fbf001c 	lw	ra,28(sp)
   10b3c:	820e00af 	lb	t6,175(s0)
   10b40:	3c030000 	lui	v1,0x0
   10b44:	24630000 	addiu	v1,v1,0
   10b48:	29c1000a 	slti	at,t6,10
   10b4c:	10200026 	beqz	at,10be8 <func_80949734+0x184>
   10b50:	3c010000 	lui	at,0x0
   10b54:	0c000000 	jal	0 <func_80938CD0>
   10b58:	c42c0000 	lwc1	$f12,0(at)
   10b5c:	444ff800 	cfc1	t7,$31
   10b60:	24180001 	li	t8,1
   10b64:	44d8f800 	ctc1	t8,$31
   10b68:	3c014f00 	lui	at,0x4f00
   10b6c:	46000124 	cvt.w.s	$f4,$f0
   10b70:	4458f800 	cfc1	t8,$31
   10b74:	00000000 	nop
   10b78:	33180078 	andi	t8,t8,0x78
   10b7c:	53000013 	beqzl	t8,10bcc <func_80949734+0x168>
   10b80:	44182000 	mfc1	t8,$f4
   10b84:	44812000 	mtc1	at,$f4
   10b88:	24180001 	li	t8,1
   10b8c:	46040101 	sub.s	$f4,$f0,$f4
   10b90:	44d8f800 	ctc1	t8,$31
   10b94:	00000000 	nop
   10b98:	46002124 	cvt.w.s	$f4,$f4
   10b9c:	4458f800 	cfc1	t8,$31
   10ba0:	00000000 	nop
   10ba4:	33180078 	andi	t8,t8,0x78
   10ba8:	17000005 	bnez	t8,10bc0 <func_80949734+0x15c>
   10bac:	00000000 	nop
   10bb0:	44182000 	mfc1	t8,$f4
   10bb4:	3c018000 	lui	at,0x8000
   10bb8:	10000007 	b	10bd8 <func_80949734+0x174>
   10bbc:	0301c025 	or	t8,t8,at
   10bc0:	10000005 	b	10bd8 <func_80949734+0x174>
   10bc4:	2418ffff 	li	t8,-1
   10bc8:	44182000 	mfc1	t8,$f4
   10bcc:	00000000 	nop
   10bd0:	0700fffb 	bltz	t8,10bc0 <func_80949734+0x15c>
   10bd4:	00000000 	nop
   10bd8:	44cff800 	ctc1	t7,$31
   10bdc:	3c010000 	lui	at,0x0
   10be0:	10000013 	b	10c30 <func_80949734+0x1cc>
   10be4:	a0380000 	sb	t8,0(at)
   10be8:	90790000 	lbu	t9,0(v1)
   10bec:	3c040000 	lui	a0,0x0
   10bf0:	24840000 	addiu	a0,a0,0
   10bf4:	27280001 	addiu	t0,t9,1
   10bf8:	310900ff 	andi	t1,t0,0xff
   10bfc:	29210004 	slti	at,t1,4
   10c00:	14200006 	bnez	at,10c1c <func_80949734+0x1b8>
   10c04:	a0680000 	sb	t0,0(v1)
   10c08:	90820000 	lbu	v0,0(a0)
   10c0c:	240a0001 	li	t2,1
   10c10:	a06a0000 	sb	t2,0(v1)
   10c14:	2c420001 	sltiu	v0,v0,1
   10c18:	a0820000 	sb	v0,0(a0)
   10c1c:	3c040000 	lui	a0,0x0
   10c20:	24840000 	addiu	a0,a0,0
   10c24:	908b0000 	lbu	t3,0(a0)
   10c28:	3c010000 	lui	at,0x0
   10c2c:	a02b0000 	sb	t3,0(at)
   10c30:	02002025 	move	a0,s0
   10c34:	0c000000 	jal	0 <func_80938CD0>
   10c38:	8fa50034 	lw	a1,52(sp)
   10c3c:	8fbf001c 	lw	ra,28(sp)
   10c40:	8fb00018 	lw	s0,24(sp)
   10c44:	27bd0030 	addiu	sp,sp,48
   10c48:	03e00008 	jr	ra
   10c4c:	00000000 	nop

00010c50 <func_80949920>:
   10c50:	27bdffe8 	addiu	sp,sp,-24
   10c54:	3c0e0000 	lui	t6,0x0
   10c58:	afbf0014 	sw	ra,20(sp)
   10c5c:	afa5001c 	sw	a1,28(sp)
   10c60:	25ce0000 	addiu	t6,t6,0
   10c64:	ac8e014c 	sw	t6,332(a0)
   10c68:	3c0f0000 	lui	t7,0x0
   10c6c:	91ef0000 	lbu	t7,0(t7)
   10c70:	3c050602 	lui	a1,0x602
   10c74:	00803825 	move	a3,a0
   10c78:	15e00009 	bnez	t7,10ca0 <func_80949920+0x50>
   10c7c:	24a53750 	addiu	a1,a1,14160
   10c80:	3c050602 	lui	a1,0x602
   10c84:	24a52700 	addiu	a1,a1,9984
   10c88:	24840568 	addiu	a0,a0,1384
   10c8c:	24060000 	li	a2,0
   10c90:	0c000000 	jal	0 <func_80938CD0>
   10c94:	afa70018 	sw	a3,24(sp)
   10c98:	10000005 	b	10cb0 <func_80949920+0x60>
   10c9c:	00000000 	nop
   10ca0:	24e40568 	addiu	a0,a3,1384
   10ca4:	24060000 	li	a2,0
   10ca8:	0c000000 	jal	0 <func_80938CD0>
   10cac:	afa70018 	sw	a3,24(sp)
   10cb0:	3c040602 	lui	a0,0x602
   10cb4:	0c000000 	jal	0 <func_80938CD0>
   10cb8:	24843750 	addiu	a0,a0,14160
   10cbc:	44822000 	mtc1	v0,$f4
   10cc0:	8fb80018 	lw	t8,24(sp)
   10cc4:	468021a0 	cvt.s.w	$f6,$f4
   10cc8:	e70601a4 	swc1	$f6,420(t8)
   10ccc:	8fbf0014 	lw	ra,20(sp)
   10cd0:	27bd0018 	addiu	sp,sp,24
   10cd4:	03e00008 	jr	ra
   10cd8:	00000000 	nop

00010cdc <func_809499AC>:
   10cdc:	27bdff68 	addiu	sp,sp,-152
   10ce0:	afb60060 	sw	s6,96(sp)
   10ce4:	0080b025 	move	s6,a0
   10ce8:	afbf0064 	sw	ra,100(sp)
   10cec:	afb5005c 	sw	s5,92(sp)
   10cf0:	24840568 	addiu	a0,a0,1384
   10cf4:	00a0a825 	move	s5,a1
   10cf8:	afb40058 	sw	s4,88(sp)
   10cfc:	afb30054 	sw	s3,84(sp)
   10d00:	afb20050 	sw	s2,80(sp)
   10d04:	afb1004c 	sw	s1,76(sp)
   10d08:	afb00048 	sw	s0,72(sp)
   10d0c:	f7b60040 	sdc1	$f22,64(sp)
   10d10:	f7b40038 	sdc1	$f20,56(sp)
   10d14:	0c000000 	jal	0 <func_80938CD0>
   10d18:	afa40068 	sw	a0,104(sp)
   10d1c:	8fa40068 	lw	a0,104(sp)
   10d20:	0c000000 	jal	0 <func_80938CD0>
   10d24:	3c054100 	lui	a1,0x4100
   10d28:	10400006 	beqz	v0,10d44 <func_809499AC+0x68>
   10d2c:	02c02025 	move	a0,s6
   10d30:	0c000000 	jal	0 <func_80938CD0>
   10d34:	24053923 	li	a1,14627
   10d38:	02c02025 	move	a0,s6
   10d3c:	0c000000 	jal	0 <func_80938CD0>
   10d40:	240539b8 	li	a1,14776
   10d44:	8fa40068 	lw	a0,104(sp)
   10d48:	0c000000 	jal	0 <func_80938CD0>
   10d4c:	3c054140 	lui	a1,0x4140
   10d50:	1040005e 	beqz	v0,10ecc <func_809499AC+0x1f0>
   10d54:	3c0e0000 	lui	t6,0x0
   10d58:	91ce0000 	lbu	t6,0(t6)
   10d5c:	24100066 	li	s0,102
   10d60:	26d30498 	addiu	s3,s6,1176
   10d64:	11c00004 	beqz	t6,10d78 <func_809499AC+0x9c>
   10d68:	00000000 	nop
   10d6c:	24100064 	li	s0,100
   10d70:	10000001 	b	10d78 <func_809499AC+0x9c>
   10d74:	26d304a4 	addiu	s3,s6,1188
   10d78:	c6640000 	lwc1	$f4,0(s3)
   10d7c:	26a41c24 	addiu	a0,s5,7204
   10d80:	02c02825 	move	a1,s6
   10d84:	e7a40010 	swc1	$f4,16(sp)
   10d88:	c6660004 	lwc1	$f6,4(s3)
   10d8c:	02a03025 	move	a2,s5
   10d90:	240700dc 	li	a3,220
   10d94:	e7a60014 	swc1	$f6,20(sp)
   10d98:	c6680008 	lwc1	$f8,8(s3)
   10d9c:	afb00028 	sw	s0,40(sp)
   10da0:	afa00024 	sw	zero,36(sp)
   10da4:	afa00020 	sw	zero,32(sp)
   10da8:	afa0001c 	sw	zero,28(sp)
   10dac:	0c000000 	jal	0 <func_80938CD0>
   10db0:	e7a80018 	swc1	$f8,24(sp)
   10db4:	10400007 	beqz	v0,10dd4 <func_809499AC+0xf8>
   10db8:	0040a025 	move	s4,v0
   10dbc:	24010066 	li	at,102
   10dc0:	16010003 	bne	s0,at,10dd0 <func_809499AC+0xf4>
   10dc4:	240f0001 	li	t7,1
   10dc8:	10000002 	b	10dd4 <func_809499AC+0xf8>
   10dcc:	a4400566 	sh	zero,1382(v0)
   10dd0:	a44f0566 	sh	t7,1382(v0)
   10dd4:	84580566 	lh	t8,1382(v0)
   10dd8:	3c010000 	lui	at,0x0
   10ddc:	3c080000 	lui	t0,0x0
   10de0:	27190001 	addiu	t9,t8,1
   10de4:	a0390000 	sb	t9,0(at)
   10de8:	25080000 	addiu	t0,t0,0
   10dec:	8d0a0000 	lw	t2,0(t0)
   10df0:	27b1007c 	addiu	s1,sp,124
   10df4:	3c0b0000 	lui	t3,0x0
   10df8:	ae2a0000 	sw	t2,0(s1)
   10dfc:	8d090004 	lw	t1,4(t0)
   10e00:	256b0000 	addiu	t3,t3,0
   10e04:	27b20070 	addiu	s2,sp,112
   10e08:	ae290004 	sw	t1,4(s1)
   10e0c:	8d0a0008 	lw	t2,8(t0)
   10e10:	3c014000 	lui	at,0x4000
   10e14:	4481b000 	mtc1	at,$f22
   10e18:	ae2a0008 	sw	t2,8(s1)
   10e1c:	8d6d0000 	lw	t5,0(t3)
   10e20:	3c0141f0 	lui	at,0x41f0
   10e24:	4481a000 	mtc1	at,$f20
   10e28:	ae4d0000 	sw	t5,0(s2)
   10e2c:	8d6c0004 	lw	t4,4(t3)
   10e30:	00008025 	move	s0,zero
   10e34:	ae4c0004 	sw	t4,4(s2)
   10e38:	8d6d0008 	lw	t5,8(t3)
   10e3c:	ae4d0008 	sw	t5,8(s2)
   10e40:	0c000000 	jal	0 <func_80938CD0>
   10e44:	4600a306 	mov.s	$f12,$f20
   10e48:	e7a0007c 	swc1	$f0,124(sp)
   10e4c:	0c000000 	jal	0 <func_80938CD0>
   10e50:	4600a306 	mov.s	$f12,$f20
   10e54:	e7a00080 	swc1	$f0,128(sp)
   10e58:	0c000000 	jal	0 <func_80938CD0>
   10e5c:	4600a306 	mov.s	$f12,$f20
   10e60:	e7a00084 	swc1	$f0,132(sp)
   10e64:	0c000000 	jal	0 <func_80938CD0>
   10e68:	4600b306 	mov.s	$f12,$f22
   10e6c:	4600028d 	trunc.w.s	$f10,$f0
   10e70:	240a004b 	li	t2,75
   10e74:	02a02025 	move	a0,s5
   10e78:	02602825 	move	a1,s3
   10e7c:	440f5000 	mfc1	t7,$f10
   10e80:	02203025 	move	a2,s1
   10e84:	02403825 	move	a3,s2
   10e88:	000fc400 	sll	t8,t7,0x10
   10e8c:	0018cc03 	sra	t9,t8,0x10
   10e90:	2728000b 	addiu	t0,t9,11
   10e94:	44888000 	mtc1	t0,$f16
   10e98:	00000000 	nop
   10e9c:	468084a0 	cvt.s.w	$f18,$f16
   10ea0:	e7b20010 	swc1	$f18,16(sp)
   10ea4:	86890566 	lh	t1,1382(s4)
   10ea8:	afaa0018 	sw	t2,24(sp)
   10eac:	0c000000 	jal	0 <func_80938CD0>
   10eb0:	afa90014 	sw	t1,20(sp)
   10eb4:	26100001 	addiu	s0,s0,1
   10eb8:	00108400 	sll	s0,s0,0x10
   10ebc:	00108403 	sra	s0,s0,0x10
   10ec0:	2a010064 	slti	at,s0,100
   10ec4:	1420ffde 	bnez	at,10e40 <func_809499AC+0x164>
   10ec8:	00000000 	nop
   10ecc:	8fa40068 	lw	a0,104(sp)
   10ed0:	0c000000 	jal	0 <func_80938CD0>
   10ed4:	8ec501a4 	lw	a1,420(s6)
   10ed8:	10400003 	beqz	v0,10ee8 <func_809499AC+0x20c>
   10edc:	02c02025 	move	a0,s6
   10ee0:	0c000000 	jal	0 <func_80938CD0>
   10ee4:	02a02825 	move	a1,s5
   10ee8:	26c400b6 	addiu	a0,s6,182
   10eec:	86c5008a 	lh	a1,138(s6)
   10ef0:	24060005 	li	a2,5
   10ef4:	0c000000 	jal	0 <func_80938CD0>
   10ef8:	24071000 	li	a3,4096
   10efc:	8fbf0064 	lw	ra,100(sp)
   10f00:	d7b40038 	ldc1	$f20,56(sp)
   10f04:	d7b60040 	ldc1	$f22,64(sp)
   10f08:	8fb00048 	lw	s0,72(sp)
   10f0c:	8fb1004c 	lw	s1,76(sp)
   10f10:	8fb20050 	lw	s2,80(sp)
   10f14:	8fb30054 	lw	s3,84(sp)
   10f18:	8fb40058 	lw	s4,88(sp)
   10f1c:	8fb5005c 	lw	s5,92(sp)
   10f20:	8fb60060 	lw	s6,96(sp)
   10f24:	03e00008 	jr	ra
   10f28:	27bd0098 	addiu	sp,sp,152

00010f2c <func_80949BFC>:
   10f2c:	27bdffe8 	addiu	sp,sp,-24
   10f30:	afa5001c 	sw	a1,28(sp)
   10f34:	3c0e0000 	lui	t6,0x0
   10f38:	afbf0014 	sw	ra,20(sp)
   10f3c:	25ce0000 	addiu	t6,t6,0
   10f40:	00803825 	move	a3,a0
   10f44:	ac8e014c 	sw	t6,332(a0)
   10f48:	3c050603 	lui	a1,0x603
   10f4c:	24a52bf8 	addiu	a1,a1,11256
   10f50:	afa70018 	sw	a3,24(sp)
   10f54:	24840568 	addiu	a0,a0,1384
   10f58:	0c000000 	jal	0 <func_80938CD0>
   10f5c:	3c06c120 	lui	a2,0xc120
   10f60:	8fa70018 	lw	a3,24(sp)
   10f64:	240f003c 	li	t7,60
   10f68:	a4ef017a 	sh	t7,378(a3)
   10f6c:	8fbf0014 	lw	ra,20(sp)
   10f70:	27bd0018 	addiu	sp,sp,24
   10f74:	03e00008 	jr	ra
   10f78:	00000000 	nop

00010f7c <func_80949C4C>:
   10f7c:	27bdffe0 	addiu	sp,sp,-32
   10f80:	afb00018 	sw	s0,24(sp)
   10f84:	00808025 	move	s0,a0
   10f88:	afbf001c 	sw	ra,28(sp)
   10f8c:	afa50024 	sw	a1,36(sp)
   10f90:	0c000000 	jal	0 <func_80938CD0>
   10f94:	24840568 	addiu	a0,a0,1384
   10f98:	860e017a 	lh	t6,378(s0)
   10f9c:	8fa50024 	lw	a1,36(sp)
   10fa0:	3c0f0000 	lui	t7,0x0
   10fa4:	15c0000f 	bnez	t6,10fe4 <func_80949C4C+0x68>
   10fa8:	00000000 	nop
   10fac:	91ef0000 	lbu	t7,0(t7)
   10fb0:	3c180000 	lui	t8,0x0
   10fb4:	15e0000b 	bnez	t7,10fe4 <func_80949C4C+0x68>
   10fb8:	00000000 	nop
   10fbc:	8f180000 	lw	t8,0(t8)
   10fc0:	8719017c 	lh	t9,380(t8)
   10fc4:	17200005 	bnez	t9,10fdc <func_80949C4C+0x60>
   10fc8:	00000000 	nop
   10fcc:	0c000000 	jal	0 <func_80938CD0>
   10fd0:	02002025 	move	a0,s0
   10fd4:	10000003 	b	10fe4 <func_80949C4C+0x68>
   10fd8:	00000000 	nop
   10fdc:	0c000000 	jal	0 <func_80938CD0>
   10fe0:	02002025 	move	a0,s0
   10fe4:	3c010000 	lui	at,0x0
   10fe8:	a0200000 	sb	zero,0(at)
   10fec:	8605008a 	lh	a1,138(s0)
   10ff0:	260400b6 	addiu	a0,s0,182
   10ff4:	24060005 	li	a2,5
   10ff8:	0c000000 	jal	0 <func_80938CD0>
   10ffc:	24071000 	li	a3,4096
   11000:	8fbf001c 	lw	ra,28(sp)
   11004:	8fb00018 	lw	s0,24(sp)
   11008:	27bd0020 	addiu	sp,sp,32
   1100c:	03e00008 	jr	ra
   11010:	00000000 	nop

00011014 <func_80949CE4>:
   11014:	27bdffd8 	addiu	sp,sp,-40
   11018:	3c0e0000 	lui	t6,0x0
   1101c:	25ce0000 	addiu	t6,t6,0
   11020:	afbf001c 	sw	ra,28(sp)
   11024:	afb00018 	sw	s0,24(sp)
   11028:	afa5002c 	sw	a1,44(sp)
   1102c:	afa60030 	sw	a2,48(sp)
   11030:	afae0024 	sw	t6,36(sp)
   11034:	8c8f014c 	lw	t7,332(a0)
   11038:	00808025 	move	s0,a0
   1103c:	2408000a 	li	t0,10
   11040:	11cf000e 	beq	t6,t7,1107c <func_80949CE4+0x68>
   11044:	24090014 	li	t1,20
   11048:	3c050603 	lui	a1,0x603
   1104c:	24a538f0 	addiu	a1,a1,14576
   11050:	24840568 	addiu	a0,a0,1384
   11054:	0c000000 	jal	0 <func_80938CD0>
   11058:	3c06c170 	lui	a2,0xc170
   1105c:	44802000 	mtc1	zero,$f4
   11060:	24180096 	li	t8,150
   11064:	24190014 	li	t9,20
   11068:	a6180178 	sh	t8,376(s0)
   1106c:	a619017a 	sh	t9,378(s0)
   11070:	a6000440 	sh	zero,1088(s0)
   11074:	1000002b 	b	11124 <func_80949CE4+0x110>
   11078:	e6040060 	swc1	$f4,96(s0)
   1107c:	3c050602 	lui	a1,0x602
   11080:	a608015c 	sh	t0,348(s0)
   11084:	a609015a 	sh	t1,346(s0)
   11088:	24a54374 	addiu	a1,a1,17268
   1108c:	26040568 	addiu	a0,s0,1384
   11090:	0c000000 	jal	0 <func_80938CD0>
   11094:	3c06c040 	lui	a2,0xc040
   11098:	3c040602 	lui	a0,0x602
   1109c:	0c000000 	jal	0 <func_80938CD0>
   110a0:	24844374 	addiu	a0,a0,17268
   110a4:	44823000 	mtc1	v0,$f6
   110a8:	240a0001 	li	t2,1
   110ac:	a60a0440 	sh	t2,1088(s0)
   110b0:	46803220 	cvt.s.w	$f8,$f6
   110b4:	920b00af 	lbu	t3,175(s0)
   110b8:	02002025 	move	a0,s0
   110bc:	e60801a4 	swc1	$f8,420(s0)
   110c0:	93ac0033 	lbu	t4,51(sp)
   110c4:	016c6823 	subu	t5,t3,t4
   110c8:	a20d00af 	sb	t5,175(s0)
   110cc:	820300af 	lb	v1,175(s0)
   110d0:	04610003 	bgez	v1,110e0 <func_80949CE4+0xcc>
   110d4:	00000000 	nop
   110d8:	a20000af 	sb	zero,175(s0)
   110dc:	820300af 	lb	v1,175(s0)
   110e0:	1c60000b 	bgtz	v1,11110 <func_80949CE4+0xfc>
   110e4:	8fa5002c 	lw	a1,44(sp)
   110e8:	0c000000 	jal	0 <func_80938CD0>
   110ec:	02002025 	move	a0,s0
   110f0:	8fa4002c 	lw	a0,44(sp)
   110f4:	0c000000 	jal	0 <func_80938CD0>
   110f8:	02002825 	move	a1,s0
   110fc:	02002025 	move	a0,s0
   11100:	0c000000 	jal	0 <func_80938CD0>
   11104:	2405391b 	li	a1,14619
   11108:	10000009 	b	11130 <func_80949CE4+0x11c>
   1110c:	8fbf001c 	lw	ra,28(sp)
   11110:	0c000000 	jal	0 <func_80938CD0>
   11114:	240539b7 	li	a1,14775
   11118:	02002025 	move	a0,s0
   1111c:	0c000000 	jal	0 <func_80938CD0>
   11120:	24053914 	li	a1,14612
   11124:	8fae0024 	lw	t6,36(sp)
   11128:	ae0e014c 	sw	t6,332(s0)
   1112c:	8fbf001c 	lw	ra,28(sp)
   11130:	8fb00018 	lw	s0,24(sp)
   11134:	27bd0028 	addiu	sp,sp,40
   11138:	03e00008 	jr	ra
   1113c:	00000000 	nop

00011140 <func_80949E10>:
   11140:	27bdff98 	addiu	sp,sp,-104
   11144:	afbf0034 	sw	ra,52(sp)
   11148:	afb00030 	sw	s0,48(sp)
   1114c:	afa5006c 	sw	a1,108(sp)
   11150:	8c8f0004 	lw	t7,4(a0)
   11154:	240e0001 	li	t6,1
   11158:	a08e05f8 	sb	t6,1528(a0)
   1115c:	35f80400 	ori	t8,t7,0x400
   11160:	ac980004 	sw	t8,4(a0)
   11164:	3c190000 	lui	t9,0x0
   11168:	93390000 	lbu	t9,0(t9)
   1116c:	00808025 	move	s0,a0
   11170:	24090002 	li	t1,2
   11174:	17200003 	bnez	t9,11184 <func_80949E10+0x44>
   11178:	24080003 	li	t0,3
   1117c:	10000002 	b	11188 <func_80949E10+0x48>
   11180:	a7a80066 	sh	t0,102(sp)
   11184:	a7a90066 	sh	t1,102(sp)
   11188:	860a0150 	lh	t2,336(s0)
   1118c:	3c0141a0 	lui	at,0x41a0
   11190:	314b0007 	andi	t3,t2,0x7
   11194:	55600031 	bnezl	t3,1125c <func_80949E10+0x11c>
   11198:	26040568 	addiu	a0,s0,1384
   1119c:	44816000 	mtc1	at,$f12
   111a0:	0c000000 	jal	0 <func_80938CD0>
   111a4:	00000000 	nop
   111a8:	c6040024 	lwc1	$f4,36(s0)
   111ac:	3c014220 	lui	at,0x4220
   111b0:	44816000 	mtc1	at,$f12
   111b4:	46040180 	add.s	$f6,$f0,$f4
   111b8:	0c000000 	jal	0 <func_80938CD0>
   111bc:	e7a60058 	swc1	$f6,88(sp)
   111c0:	c6080028 	lwc1	$f8,40(s0)
   111c4:	3c0141a0 	lui	at,0x41a0
   111c8:	44818000 	mtc1	at,$f16
   111cc:	46080280 	add.s	$f10,$f0,$f8
   111d0:	44816000 	mtc1	at,$f12
   111d4:	46105480 	add.s	$f18,$f10,$f16
   111d8:	0c000000 	jal	0 <func_80938CD0>
   111dc:	e7b2005c 	swc1	$f18,92(sp)
   111e0:	c604002c 	lwc1	$f4,44(s0)
   111e4:	44801000 	mtc1	zero,$f2
   111e8:	3c010000 	lui	at,0x0
   111ec:	46040180 	add.s	$f6,$f0,$f4
   111f0:	c4280000 	lwc1	$f8,0(at)
   111f4:	3c0140a0 	lui	at,0x40a0
   111f8:	44816000 	mtc1	at,$f12
   111fc:	e7a60060 	swc1	$f6,96(sp)
   11200:	e7a2004c 	swc1	$f2,76(sp)
   11204:	e7a20050 	swc1	$f2,80(sp)
   11208:	e7a20054 	swc1	$f2,84(sp)
   1120c:	e7a20040 	swc1	$f2,64(sp)
   11210:	e7a20048 	swc1	$f2,72(sp)
   11214:	0c000000 	jal	0 <func_80938CD0>
   11218:	e7a80044 	swc1	$f8,68(sp)
   1121c:	3c014120 	lui	at,0x4120
   11220:	44815000 	mtc1	at,$f10
   11224:	27ac0040 	addiu	t4,sp,64
   11228:	240d0096 	li	t5,150
   1122c:	460a0400 	add.s	$f16,$f0,$f10
   11230:	afad0020 	sw	t5,32(sp)
   11234:	afac0010 	sw	t4,16(sp)
   11238:	8fa4006c 	lw	a0,108(sp)
   1123c:	e7b00014 	swc1	$f16,20(sp)
   11240:	87a50066 	lh	a1,102(sp)
   11244:	27a60058 	addiu	a2,sp,88
   11248:	27a7004c 	addiu	a3,sp,76
   1124c:	afa00018 	sw	zero,24(sp)
   11250:	0c000000 	jal	0 <func_80938CD0>
   11254:	afa0001c 	sw	zero,28(sp)
   11258:	26040568 	addiu	a0,s0,1384
   1125c:	0c000000 	jal	0 <func_80938CD0>
   11260:	afa40038 	sw	a0,56(sp)
   11264:	860e0160 	lh	t6,352(s0)
   11268:	241900ff 	li	t9,255
   1126c:	260401b4 	addiu	a0,s0,436
   11270:	25cf0014 	addiu	t7,t6,20
   11274:	a60f0160 	sh	t7,352(s0)
   11278:	86180160 	lh	t8,352(s0)
   1127c:	24050000 	li	a1,0
   11280:	3c063f80 	lui	a2,0x3f80
   11284:	2b010100 	slti	at,t8,256
   11288:	14200002 	bnez	at,11294 <func_80949E10+0x154>
   1128c:	3c073d4c 	lui	a3,0x3d4c
   11290:	a6190160 	sh	t9,352(s0)
   11294:	0c000000 	jal	0 <func_80938CD0>
   11298:	34e7cccd 	ori	a3,a3,0xcccd
   1129c:	c6120028 	lwc1	$f18,40(s0)
   112a0:	c6040060 	lwc1	$f4,96(s0)
   112a4:	26040060 	addiu	a0,s0,96
   112a8:	3c05c0a0 	lui	a1,0xc0a0
   112ac:	46049180 	add.s	$f6,$f18,$f4
   112b0:	3c063f80 	lui	a2,0x3f80
   112b4:	3c073f00 	lui	a3,0x3f00
   112b8:	0c000000 	jal	0 <func_80938CD0>
   112bc:	e6060028 	swc1	$f6,40(s0)
   112c0:	3c014248 	lui	at,0x4248
   112c4:	44810000 	mtc1	at,$f0
   112c8:	3c0141f0 	lui	at,0x41f0
   112cc:	44815000 	mtc1	at,$f10
   112d0:	c6080028 	lwc1	$f8,40(s0)
   112d4:	3c0142c8 	lui	at,0x42c8
   112d8:	44819000 	mtc1	at,$f18
   112dc:	460a4401 	sub.s	$f16,$f8,$f10
   112e0:	24080004 	li	t0,4
   112e4:	44060000 	mfc1	a2,$f0
   112e8:	44070000 	mfc1	a3,$f0
   112ec:	e6100028 	swc1	$f16,40(s0)
   112f0:	afa80014 	sw	t0,20(sp)
   112f4:	8fa4006c 	lw	a0,108(sp)
   112f8:	02002825 	move	a1,s0
   112fc:	0c000000 	jal	0 <func_80938CD0>
   11300:	e7b20010 	swc1	$f18,16(sp)
   11304:	3c0141f0 	lui	at,0x41f0
   11308:	44813000 	mtc1	at,$f6
   1130c:	c6040028 	lwc1	$f4,40(s0)
   11310:	86090440 	lh	t1,1088(s0)
   11314:	46062200 	add.s	$f8,$f4,$f6
   11318:	15200018 	bnez	t1,1137c <func_80949E10+0x23c>
   1131c:	e6080028 	swc1	$f8,40(s0)
   11320:	860a017a 	lh	t2,378(s0)
   11324:	3c040603 	lui	a0,0x603
   11328:	240b0001 	li	t3,1
   1132c:	1540001f 	bnez	t2,113ac <func_80949E10+0x26c>
   11330:	248443b4 	addiu	a0,a0,17332
   11334:	0c000000 	jal	0 <func_80938CD0>
   11338:	a60b0440 	sh	t3,1088(s0)
   1133c:	44825000 	mtc1	v0,$f10
   11340:	44801000 	mtc1	zero,$f2
   11344:	3c050603 	lui	a1,0x603
   11348:	46805020 	cvt.s.w	$f0,$f10
   1134c:	240c0003 	li	t4,3
   11350:	44071000 	mfc1	a3,$f2
   11354:	24a543b4 	addiu	a1,a1,17332
   11358:	3c063f80 	lui	a2,0x3f80
   1135c:	e60001a4 	swc1	$f0,420(s0)
   11360:	afac0014 	sw	t4,20(sp)
   11364:	e7a00010 	swc1	$f0,16(sp)
   11368:	8fa40038 	lw	a0,56(sp)
   1136c:	0c000000 	jal	0 <func_80938CD0>
   11370:	e7a20018 	swc1	$f2,24(sp)
   11374:	1000000e 	b	113b0 <func_80949E10+0x270>
   11378:	960d0088 	lhu	t5,136(s0)
   1137c:	8fa40038 	lw	a0,56(sp)
   11380:	0c000000 	jal	0 <func_80938CD0>
   11384:	8e0501a4 	lw	a1,420(s0)
   11388:	10400008 	beqz	v0,113ac <func_80949E10+0x26c>
   1138c:	3c01447a 	lui	at,0x447a
   11390:	44818000 	mtc1	at,$f16
   11394:	3c050603 	lui	a1,0x603
   11398:	24a55030 	addiu	a1,a1,20528
   1139c:	e61001a4 	swc1	$f16,420(s0)
   113a0:	8fa40038 	lw	a0,56(sp)
   113a4:	0c000000 	jal	0 <func_80938CD0>
   113a8:	24060000 	li	a2,0
   113ac:	960d0088 	lhu	t5,136(s0)
   113b0:	02002025 	move	a0,s0
   113b4:	31ae0001 	andi	t6,t5,0x1
   113b8:	51c00005 	beqzl	t6,113d0 <func_80949E10+0x290>
   113bc:	860f0178 	lh	t7,376(s0)
   113c0:	44809000 	mtc1	zero,$f18
   113c4:	00000000 	nop
   113c8:	e6120060 	swc1	$f18,96(s0)
   113cc:	860f0178 	lh	t7,376(s0)
   113d0:	55e00004 	bnezl	t7,113e4 <func_80949E10+0x2a4>
   113d4:	8fbf0034 	lw	ra,52(sp)
   113d8:	0c000000 	jal	0 <func_80938CD0>
   113dc:	8fa5006c 	lw	a1,108(sp)
   113e0:	8fbf0034 	lw	ra,52(sp)
   113e4:	8fb00030 	lw	s0,48(sp)
   113e8:	27bd0068 	addiu	sp,sp,104
   113ec:	03e00008 	jr	ra
   113f0:	00000000 	nop

000113f4 <func_8094A0C4>:
   113f4:	27bdffe8 	addiu	sp,sp,-24
   113f8:	afa5001c 	sw	a1,28(sp)
   113fc:	afbf0014 	sw	ra,20(sp)
   11400:	00803825 	move	a3,a0
   11404:	3c050603 	lui	a1,0x603
   11408:	24a55988 	addiu	a1,a1,22920
   1140c:	afa70018 	sw	a3,24(sp)
   11410:	24840568 	addiu	a0,a0,1384
   11414:	0c000000 	jal	0 <func_80938CD0>
   11418:	24060000 	li	a2,0
   1141c:	3c040603 	lui	a0,0x603
   11420:	0c000000 	jal	0 <func_80938CD0>
   11424:	24845988 	addiu	a0,a0,22920
   11428:	44822000 	mtc1	v0,$f4
   1142c:	8fa70018 	lw	a3,24(sp)
   11430:	3c0e0000 	lui	t6,0x0
   11434:	468021a0 	cvt.s.w	$f6,$f4
   11438:	25ce0000 	addiu	t6,t6,0
   1143c:	240f0032 	li	t7,50
   11440:	acee014c 	sw	t6,332(a3)
   11444:	a4ef0178 	sh	t7,376(a3)
   11448:	e4e601a4 	swc1	$f6,420(a3)
   1144c:	8fbf0014 	lw	ra,20(sp)
   11450:	27bd0018 	addiu	sp,sp,24
   11454:	03e00008 	jr	ra
   11458:	00000000 	nop

0001145c <func_8094A12C>:
   1145c:	27bdffd8 	addiu	sp,sp,-40
   11460:	afb00018 	sw	s0,24(sp)
   11464:	00808025 	move	s0,a0
   11468:	afbf001c 	sw	ra,28(sp)
   1146c:	24840568 	addiu	a0,a0,1384
   11470:	afa5002c 	sw	a1,44(sp)
   11474:	0c000000 	jal	0 <func_80938CD0>
   11478:	afa40024 	sw	a0,36(sp)
   1147c:	3c063d4c 	lui	a2,0x3d4c
   11480:	34c6cccd 	ori	a2,a2,0xcccd
   11484:	26040028 	addiu	a0,s0,40
   11488:	8e0504b4 	lw	a1,1204(s0)
   1148c:	0c000000 	jal	0 <func_80938CD0>
   11490:	3c0740a0 	lui	a3,0x40a0
   11494:	8fa40024 	lw	a0,36(sp)
   11498:	0c000000 	jal	0 <func_80938CD0>
   1149c:	8e0501a4 	lw	a1,420(s0)
   114a0:	10400008 	beqz	v0,114c4 <func_8094A12C+0x68>
   114a4:	3c01447a 	lui	at,0x447a
   114a8:	44812000 	mtc1	at,$f4
   114ac:	3c050603 	lui	a1,0x603
   114b0:	24a52bf8 	addiu	a1,a1,11256
   114b4:	e60401a4 	swc1	$f4,420(s0)
   114b8:	8fa40024 	lw	a0,36(sp)
   114bc:	0c000000 	jal	0 <func_80938CD0>
   114c0:	24060000 	li	a2,0
   114c4:	860e0178 	lh	t6,376(s0)
   114c8:	02002025 	move	a0,s0
   114cc:	55c00004 	bnezl	t6,114e0 <func_8094A12C+0x84>
   114d0:	8fbf001c 	lw	ra,28(sp)
   114d4:	0c000000 	jal	0 <func_80938CD0>
   114d8:	8fa5002c 	lw	a1,44(sp)
   114dc:	8fbf001c 	lw	ra,28(sp)
   114e0:	8fb00018 	lw	s0,24(sp)
   114e4:	27bd0028 	addiu	sp,sp,40
   114e8:	03e00008 	jr	ra
   114ec:	00000000 	nop

000114f0 <func_8094A1C0>:
   114f0:	27bdffb0 	addiu	sp,sp,-80
   114f4:	f7ba0030 	sdc1	$f26,48(sp)
   114f8:	3c010000 	lui	at,0x0
   114fc:	afb40048 	sw	s4,72(sp)
   11500:	afb30044 	sw	s3,68(sp)
   11504:	afb20040 	sw	s2,64(sp)
   11508:	afb00038 	sw	s0,56(sp)
   1150c:	f7b80028 	sdc1	$f24,40(sp)
   11510:	c43a0000 	lwc1	$f26,0(at)
   11514:	afbf004c 	sw	ra,76(sp)
   11518:	afb1003c 	sw	s1,60(sp)
   1151c:	f7b60020 	sdc1	$f22,32(sp)
   11520:	f7b40018 	sdc1	$f20,24(sp)
   11524:	3c010000 	lui	at,0x0
   11528:	3c130000 	lui	s3,0x0
   1152c:	00808025 	move	s0,a0
   11530:	8cb11c44 	lw	s1,7236(a1)
   11534:	26730000 	addiu	s3,s3,0
   11538:	c4380000 	lwc1	$f24,0(at)
   1153c:	249204b0 	addiu	s2,a0,1200
   11540:	2414000c 	li	s4,12
   11544:	0c000000 	jal	0 <func_80938CD0>
   11548:	4600c306 	mov.s	$f12,$f24
   1154c:	4600010d 	trunc.w.s	$f4,$f0
   11550:	860e0154 	lh	t6,340(s0)
   11554:	44182000 	mfc1	t8,$f4
   11558:	00000000 	nop
   1155c:	0018cc00 	sll	t9,t8,0x10
   11560:	00194403 	sra	t0,t9,0x10
   11564:	25090001 	addiu	t1,t0,1
   11568:	00095400 	sll	t2,t1,0x10
   1156c:	000a5c03 	sra	t3,t2,0x10
   11570:	01cb6021 	addu	t4,t6,t3
   11574:	a60c0154 	sh	t4,340(s0)
   11578:	860d0154 	lh	t5,340(s0)
   1157c:	05a10004 	bgez	t5,11590 <func_8094A1C0+0xa0>
   11580:	31af0003 	andi	t7,t5,0x3
   11584:	11e00002 	beqz	t7,11590 <func_8094A1C0+0xa0>
   11588:	00000000 	nop
   1158c:	25effffc 	addiu	t7,t7,-4
   11590:	a60f0154 	sh	t7,340(s0)
   11594:	86180154 	lh	t8,340(s0)
   11598:	03140019 	multu	t8,s4
   1159c:	0000c812 	mflo	t9
   115a0:	02794021 	addu	t0,s3,t9
   115a4:	8d0a0000 	lw	t2,0(t0)
   115a8:	ae4a0000 	sw	t2,0(s2)
   115ac:	8d090004 	lw	t1,4(t0)
   115b0:	ae490004 	sw	t1,4(s2)
   115b4:	8d0a0008 	lw	t2,8(t0)
   115b8:	ae4a0008 	sw	t2,8(s2)
   115bc:	c6260024 	lwc1	$f6,36(s1)
   115c0:	c60204b0 	lwc1	$f2,1200(s0)
   115c4:	c628002c 	lwc1	$f8,44(s1)
   115c8:	c61004b8 	lwc1	$f16,1208(s0)
   115cc:	46061501 	sub.s	$f20,$f2,$f6
   115d0:	46088581 	sub.s	$f22,$f16,$f8
   115d4:	4614a282 	mul.s	$f10,$f20,$f20
   115d8:	00000000 	nop
   115dc:	4616b102 	mul.s	$f4,$f22,$f22
   115e0:	46045180 	add.s	$f6,$f10,$f4
   115e4:	4606d03c 	c.lt.s	$f26,$f6
   115e8:	00000000 	nop
   115ec:	4500ffd5 	bc1f	11544 <func_8094A1C0+0x54>
   115f0:	00000000 	nop
   115f4:	c6080024 	lwc1	$f8,36(s0)
   115f8:	c604002c 	lwc1	$f4,44(s0)
   115fc:	3c0143f0 	lui	at,0x43f0
   11600:	46081501 	sub.s	$f20,$f2,$f8
   11604:	44810000 	mtc1	at,$f0
   11608:	44809000 	mtc1	zero,$f18
   1160c:	46048581 	sub.s	$f22,$f16,$f4
   11610:	c60a0028 	lwc1	$f10,40(s0)
   11614:	3c0e0000 	lui	t6,0x0
   11618:	25ce0000 	addiu	t6,t6,0
   1161c:	ae0e014c 	sw	t6,332(s0)
   11620:	4600b386 	mov.s	$f14,$f22
   11624:	4600a306 	mov.s	$f12,$f20
   11628:	e60004b4 	swc1	$f0,1204(s0)
   1162c:	e61204c8 	swc1	$f18,1224(s0)
   11630:	e6120068 	swc1	$f18,104(s0)
   11634:	0c000000 	jal	0 <func_80938CD0>
   11638:	460a0601 	sub.s	$f24,$f0,$f10
   1163c:	3c010000 	lui	at,0x0
   11640:	c43a0000 	lwc1	$f26,0(at)
   11644:	4600c306 	mov.s	$f12,$f24
   11648:	461a0182 	mul.s	$f6,$f0,$f26
   1164c:	00000000 	nop
   11650:	4614a282 	mul.s	$f10,$f20,$f20
   11654:	00000000 	nop
   11658:	4616b102 	mul.s	$f4,$f22,$f22
   1165c:	4600320d 	trunc.w.s	$f8,$f6
   11660:	46045000 	add.s	$f0,$f10,$f4
   11664:	440c4000 	mfc1	t4,$f8
   11668:	46000384 	sqrt.s	$f14,$f0
   1166c:	0c000000 	jal	0 <func_80938CD0>
   11670:	a60c0032 	sh	t4,50(s0)
   11674:	461a0182 	mul.s	$f6,$f0,$f26
   11678:	3c050603 	lui	a1,0x603
   1167c:	24a52bf8 	addiu	a1,a1,11256
   11680:	26040568 	addiu	a0,s0,1384
   11684:	3c06c120 	lui	a2,0xc120
   11688:	4600320d 	trunc.w.s	$f8,$f6
   1168c:	440f4000 	mfc1	t7,$f8
   11690:	0c000000 	jal	0 <func_80938CD0>
   11694:	a60f0030 	sh	t7,48(s0)
   11698:	8fbf004c 	lw	ra,76(sp)
   1169c:	d7b40018 	ldc1	$f20,24(sp)
   116a0:	d7b60020 	ldc1	$f22,32(sp)
   116a4:	d7b80028 	ldc1	$f24,40(sp)
   116a8:	d7ba0030 	ldc1	$f26,48(sp)
   116ac:	8fb00038 	lw	s0,56(sp)
   116b0:	8fb1003c 	lw	s1,60(sp)
   116b4:	8fb20040 	lw	s2,64(sp)
   116b8:	8fb30044 	lw	s3,68(sp)
   116bc:	8fb40048 	lw	s4,72(sp)
   116c0:	03e00008 	jr	ra
   116c4:	27bd0050 	addiu	sp,sp,80

000116c8 <func_8094A398>:
   116c8:	27bdffc0 	addiu	sp,sp,-64
   116cc:	afbf001c 	sw	ra,28(sp)
   116d0:	afb00018 	sw	s0,24(sp)
   116d4:	afa50044 	sw	a1,68(sp)
   116d8:	00808025 	move	s0,a0
   116dc:	0c000000 	jal	0 <func_80938CD0>
   116e0:	2405311f 	li	a1,12575
   116e4:	0c000000 	jal	0 <func_80938CD0>
   116e8:	26040568 	addiu	a0,s0,1384
   116ec:	c60804b4 	lwc1	$f8,1204(s0)
   116f0:	c60a0028 	lwc1	$f10,40(s0)
   116f4:	c60404b0 	lwc1	$f4,1200(s0)
   116f8:	c6060024 	lwc1	$f6,36(s0)
   116fc:	460a4481 	sub.s	$f18,$f8,$f10
   11700:	46062301 	sub.s	$f12,$f4,$f6
   11704:	e7b20038 	swc1	$f18,56(sp)
   11708:	c606002c 	lwc1	$f6,44(s0)
   1170c:	c60404b8 	lwc1	$f4,1208(s0)
   11710:	e7ac003c 	swc1	$f12,60(sp)
   11714:	46062381 	sub.s	$f14,$f4,$f6
   11718:	0c000000 	jal	0 <func_80938CD0>
   1171c:	e7ae0034 	swc1	$f14,52(sp)
   11720:	3c010000 	lui	at,0x0
   11724:	c4280000 	lwc1	$f8,0(at)
   11728:	c7a2003c 	lwc1	$f2,60(sp)
   1172c:	c7b00034 	lwc1	$f16,52(sp)
   11730:	46080282 	mul.s	$f10,$f0,$f8
   11734:	c7ac0038 	lwc1	$f12,56(sp)
   11738:	46021202 	mul.s	$f8,$f2,$f2
   1173c:	4600548d 	trunc.w.s	$f18,$f10
   11740:	46108282 	mul.s	$f10,$f16,$f16
   11744:	440f9000 	mfc1	t7,$f18
   11748:	00000000 	nop
   1174c:	000fc400 	sll	t8,t7,0x10
   11750:	460a4000 	add.s	$f0,$f8,$f10
   11754:	0018cc03 	sra	t9,t8,0x10
   11758:	44992000 	mtc1	t9,$f4
   1175c:	46000384 	sqrt.s	$f14,$f0
   11760:	468021a0 	cvt.s.w	$f6,$f4
   11764:	e7ae0028 	swc1	$f14,40(sp)
   11768:	0c000000 	jal	0 <func_80938CD0>
   1176c:	e7a6002c 	swc1	$f6,44(sp)
   11770:	3c010000 	lui	at,0x0
   11774:	c4320000 	lwc1	$f18,0(at)
   11778:	26040030 	addiu	a0,s0,48
   1177c:	2406000a 	li	a2,10
   11780:	46120102 	mul.s	$f4,$f0,$f18
   11784:	4600218d 	trunc.w.s	$f6,$f4
   11788:	c60404c8 	lwc1	$f4,1224(s0)
   1178c:	44093000 	mfc1	t1,$f6
   11790:	4600218d 	trunc.w.s	$f6,$f4
   11794:	00095400 	sll	t2,t1,0x10
   11798:	000a5c03 	sra	t3,t2,0x10
   1179c:	448b4000 	mtc1	t3,$f8
   117a0:	44073000 	mfc1	a3,$f6
   117a4:	468042a0 	cvt.s.w	$f10,$f8
   117a8:	00073c00 	sll	a3,a3,0x10
   117ac:	00073c03 	sra	a3,a3,0x10
   117b0:	4600548d 	trunc.w.s	$f18,$f10
   117b4:	44059000 	mfc1	a1,$f18
   117b8:	00000000 	nop
   117bc:	00052c00 	sll	a1,a1,0x10
   117c0:	0c000000 	jal	0 <func_80938CD0>
   117c4:	00052c03 	sra	a1,a1,0x10
   117c8:	c7a8002c 	lwc1	$f8,44(sp)
   117cc:	c61204c8 	lwc1	$f18,1224(s0)
   117d0:	26040032 	addiu	a0,s0,50
   117d4:	4600428d 	trunc.w.s	$f10,$f8
   117d8:	2406000a 	li	a2,10
   117dc:	4600910d 	trunc.w.s	$f4,$f18
   117e0:	44055000 	mfc1	a1,$f10
   117e4:	44072000 	mfc1	a3,$f4
   117e8:	00052c00 	sll	a1,a1,0x10
   117ec:	00052c03 	sra	a1,a1,0x10
   117f0:	00073c00 	sll	a3,a3,0x10
   117f4:	00073c03 	sra	a3,a3,0x10
   117f8:	0c000000 	jal	0 <func_80938CD0>
   117fc:	afa50020 	sw	a1,32(sp)
   11800:	c60604c8 	lwc1	$f6,1224(s0)
   11804:	8fa50020 	lw	a1,32(sp)
   11808:	260400b6 	addiu	a0,s0,182
   1180c:	4600320d 	trunc.w.s	$f8,$f6
   11810:	2406000a 	li	a2,10
   11814:	44074000 	mfc1	a3,$f8
   11818:	00000000 	nop
   1181c:	00073c00 	sll	a3,a3,0x10
   11820:	0c000000 	jal	0 <func_80938CD0>
   11824:	00073c03 	sra	a3,a3,0x10
   11828:	260404c8 	addiu	a0,s0,1224
   1182c:	3c0544fa 	lui	a1,0x44fa
   11830:	3c063f80 	lui	a2,0x3f80
   11834:	0c000000 	jal	0 <func_80938CD0>
   11838:	3c0742c8 	lui	a3,0x42c8
   1183c:	26040068 	addiu	a0,s0,104
   11840:	3c0541f0 	lui	a1,0x41f0
   11844:	3c063f80 	lui	a2,0x3f80
   11848:	0c000000 	jal	0 <func_80938CD0>
   1184c:	3c074000 	lui	a3,0x4000
   11850:	0c000000 	jal	0 <func_80938CD0>
   11854:	02002025 	move	a0,s0
   11858:	c600005c 	lwc1	$f0,92(s0)
   1185c:	3c013fc0 	lui	at,0x3fc0
   11860:	44815000 	mtc1	at,$f10
   11864:	46000005 	abs.s	$f0,$f0
   11868:	3c063dcc 	lui	a2,0x3dcc
   1186c:	460a0482 	mul.s	$f18,$f0,$f10
   11870:	34c6cccd 	ori	a2,a2,0xcccd
   11874:	26040024 	addiu	a0,s0,36
   11878:	8e0504b0 	lw	a1,1200(s0)
   1187c:	44079000 	mfc1	a3,$f18
   11880:	0c000000 	jal	0 <func_80938CD0>
   11884:	00000000 	nop
   11888:	c6000060 	lwc1	$f0,96(s0)
   1188c:	3c013fc0 	lui	at,0x3fc0
   11890:	44812000 	mtc1	at,$f4
   11894:	46000005 	abs.s	$f0,$f0
   11898:	3c063dcc 	lui	a2,0x3dcc
   1189c:	46040182 	mul.s	$f6,$f0,$f4
   118a0:	34c6cccd 	ori	a2,a2,0xcccd
   118a4:	26040028 	addiu	a0,s0,40
   118a8:	8e0504b4 	lw	a1,1204(s0)
   118ac:	44073000 	mfc1	a3,$f6
   118b0:	0c000000 	jal	0 <func_80938CD0>
   118b4:	00000000 	nop
   118b8:	260404b4 	addiu	a0,s0,1204
   118bc:	3c0543be 	lui	a1,0x43be
   118c0:	3c063f80 	lui	a2,0x3f80
   118c4:	0c000000 	jal	0 <func_80938CD0>
   118c8:	3c074000 	lui	a3,0x4000
   118cc:	c6000064 	lwc1	$f0,100(s0)
   118d0:	3c013fc0 	lui	at,0x3fc0
   118d4:	44814000 	mtc1	at,$f8
   118d8:	46000005 	abs.s	$f0,$f0
   118dc:	3c063dcc 	lui	a2,0x3dcc
   118e0:	46080282 	mul.s	$f10,$f0,$f8
   118e4:	34c6cccd 	ori	a2,a2,0xcccd
   118e8:	2604002c 	addiu	a0,s0,44
   118ec:	8e0504b8 	lw	a1,1208(s0)
   118f0:	44075000 	mfc1	a3,$f10
   118f4:	0c000000 	jal	0 <func_80938CD0>
   118f8:	00000000 	nop
   118fc:	3c014348 	lui	at,0x4348
   11900:	44812000 	mtc1	at,$f4
   11904:	c7b20028 	lwc1	$f18,40(sp)
   11908:	02002025 	move	a0,s0
   1190c:	4604903c 	c.lt.s	$f18,$f4
   11910:	00000000 	nop
   11914:	45020004 	bc1fl	11928 <func_8094A398+0x260>
   11918:	8fbf001c 	lw	ra,28(sp)
   1191c:	0c000000 	jal	0 <func_80938CD0>
   11920:	8fa50044 	lw	a1,68(sp)
   11924:	8fbf001c 	lw	ra,28(sp)
   11928:	8fb00018 	lw	s0,24(sp)
   1192c:	27bd0040 	addiu	sp,sp,64
   11930:	03e00008 	jr	ra
   11934:	00000000 	nop

00011938 <func_8094A608>:
   11938:	27bdffe8 	addiu	sp,sp,-24
   1193c:	afa5001c 	sw	a1,28(sp)
   11940:	3c0e0000 	lui	t6,0x0
   11944:	afbf0014 	sw	ra,20(sp)
   11948:	25ce0000 	addiu	t6,t6,0
   1194c:	00803825 	move	a3,a0
   11950:	ac8e014c 	sw	t6,332(a0)
   11954:	3c050603 	lui	a1,0x603
   11958:	24a52bf8 	addiu	a1,a1,11256
   1195c:	afa70018 	sw	a3,24(sp)
   11960:	24840568 	addiu	a0,a0,1384
   11964:	0c000000 	jal	0 <func_80938CD0>
   11968:	24060000 	li	a2,0
   1196c:	8fa70018 	lw	a3,24(sp)
   11970:	44802000 	mtc1	zero,$f4
   11974:	240f0014 	li	t7,20
   11978:	a4ef0178 	sh	t7,376(a3)
   1197c:	e4e40068 	swc1	$f4,104(a3)
   11980:	8fbf0014 	lw	ra,20(sp)
   11984:	27bd0018 	addiu	sp,sp,24
   11988:	03e00008 	jr	ra
   1198c:	00000000 	nop

00011990 <func_8094A660>:
   11990:	27bdffe8 	addiu	sp,sp,-24
   11994:	afbf0014 	sw	ra,20(sp)
   11998:	00803025 	move	a2,a0
   1199c:	afa5001c 	sw	a1,28(sp)
   119a0:	afa60018 	sw	a2,24(sp)
   119a4:	0c000000 	jal	0 <func_80938CD0>
   119a8:	24840568 	addiu	a0,a0,1384
   119ac:	8fa60018 	lw	a2,24(sp)
   119b0:	240e0009 	li	t6,9
   119b4:	84c20178 	lh	v0,376(a2)
   119b8:	00c02025 	move	a0,a2
   119bc:	1040000c 	beqz	v0,119f0 <func_8094A660+0x60>
   119c0:	00000000 	nop
   119c4:	84cf00b6 	lh	t7,182(a2)
   119c8:	30590003 	andi	t9,v0,0x3
   119cc:	a0ce05c0 	sb	t6,1472(a2)
   119d0:	25f8d000 	addiu	t8,t7,-12288
   119d4:	17200008 	bnez	t9,119f8 <func_8094A660+0x68>
   119d8:	a4d800b6 	sh	t8,182(a2)
   119dc:	00c02025 	move	a0,a2
   119e0:	0c000000 	jal	0 <func_80938CD0>
   119e4:	24053921 	li	a1,14625
   119e8:	10000004 	b	119fc <func_8094A660+0x6c>
   119ec:	8fbf0014 	lw	ra,20(sp)
   119f0:	0c000000 	jal	0 <func_80938CD0>
   119f4:	8fa5001c 	lw	a1,28(sp)
   119f8:	8fbf0014 	lw	ra,20(sp)
   119fc:	27bd0018 	addiu	sp,sp,24
   11a00:	03e00008 	jr	ra
   11a04:	00000000 	nop

00011a08 <func_8094A6D8>:
   11a08:	27bdffe8 	addiu	sp,sp,-24
   11a0c:	afa5001c 	sw	a1,28(sp)
   11a10:	3c0e0000 	lui	t6,0x0
   11a14:	afbf0014 	sw	ra,20(sp)
   11a18:	25ce0000 	addiu	t6,t6,0
   11a1c:	00803825 	move	a3,a0
   11a20:	ac8e014c 	sw	t6,332(a0)
   11a24:	3c050604 	lui	a1,0x604
   11a28:	24a5a2d0 	addiu	a1,a1,-23856
   11a2c:	afa70018 	sw	a3,24(sp)
   11a30:	24840568 	addiu	a0,a0,1384
   11a34:	0c000000 	jal	0 <func_80938CD0>
   11a38:	24060000 	li	a2,0
   11a3c:	3c040604 	lui	a0,0x604
   11a40:	0c000000 	jal	0 <func_80938CD0>
   11a44:	2484a2d0 	addiu	a0,a0,-23856
   11a48:	44822000 	mtc1	v0,$f4
   11a4c:	8fa70018 	lw	a3,24(sp)
   11a50:	44804000 	mtc1	zero,$f8
   11a54:	468021a0 	cvt.s.w	$f6,$f4
   11a58:	e4e80068 	swc1	$f8,104(a3)
   11a5c:	e4e601a4 	swc1	$f6,420(a3)
   11a60:	8fbf0014 	lw	ra,20(sp)
   11a64:	27bd0018 	addiu	sp,sp,24
   11a68:	03e00008 	jr	ra
   11a6c:	00000000 	nop

00011a70 <func_8094A740>:
   11a70:	27bdffe0 	addiu	sp,sp,-32
   11a74:	afa40020 	sw	a0,32(sp)
   11a78:	afbf0014 	sw	ra,20(sp)
   11a7c:	24840568 	addiu	a0,a0,1384
   11a80:	afa50024 	sw	a1,36(sp)
   11a84:	0c000000 	jal	0 <func_80938CD0>
   11a88:	afa4001c 	sw	a0,28(sp)
   11a8c:	8fa4001c 	lw	a0,28(sp)
   11a90:	0c000000 	jal	0 <func_80938CD0>
   11a94:	3c054120 	lui	a1,0x4120
   11a98:	10400003 	beqz	v0,11aa8 <func_8094A740+0x38>
   11a9c:	8fa40020 	lw	a0,32(sp)
   11aa0:	0c000000 	jal	0 <func_80938CD0>
   11aa4:	240539b9 	li	a1,14777
   11aa8:	8fae0020 	lw	t6,32(sp)
   11aac:	8fa4001c 	lw	a0,28(sp)
   11ab0:	0c000000 	jal	0 <func_80938CD0>
   11ab4:	8dc501a4 	lw	a1,420(t6)
   11ab8:	10400003 	beqz	v0,11ac8 <func_8094A740+0x58>
   11abc:	8fa40020 	lw	a0,32(sp)
   11ac0:	0c000000 	jal	0 <func_80938CD0>
   11ac4:	8fa50024 	lw	a1,36(sp)
   11ac8:	8fbf0014 	lw	ra,20(sp)
   11acc:	27bd0020 	addiu	sp,sp,32
   11ad0:	03e00008 	jr	ra
   11ad4:	00000000 	nop
	...
