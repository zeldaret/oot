
build/src/overlays/actors/ovl_Boss_Ganon/z_boss_ganon.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808D6870>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afb00018 	sw	s0,24(sp)
       8:	3c100001 	lui	s0,0x1
       c:	afbf001c 	sw	ra,28(sp)
      10:	02048021 	addu	s0,s0,a0
      14:	44877000 	mtc1	a3,$f14
      18:	8e101e10 	lw	s0,7696(s0)
      1c:	00001025 	move	v0,zero
      20:	920e0000 	lbu	t6,0(s0)
      24:	24420001 	addiu	v0,v0,1
      28:	00021400 	sll	v0,v0,0x10
      2c:	15c0003c 	bnez	t6,120 <func_808D6870+0x120>
      30:	00021403 	sra	v0,v0,0x10
      34:	240f0009 	li	t7,9
      38:	a20f0000 	sb	t7,0(s0)
      3c:	8cb90000 	lw	t9,0(a1)
      40:	3c0a0000 	lui	t2,0x0
      44:	254a0000 	addiu	t2,t2,0
      48:	ae190004 	sw	t9,4(s0)
      4c:	8cb80004 	lw	t8,4(a1)
      50:	3c01bfc0 	lui	at,0xbfc0
      54:	44812000 	mtc1	at,$f4
      58:	ae180008 	sw	t8,8(s0)
      5c:	8cb90008 	lw	t9,8(a1)
      60:	3c010000 	lui	at,0x0
      64:	ae19000c 	sw	t9,12(s0)
      68:	8cc90000 	lw	t1,0(a2)
      6c:	ae090010 	sw	t1,16(s0)
      70:	8cc80004 	lw	t0,4(a2)
      74:	ae080014 	sw	t0,20(s0)
      78:	8cc90008 	lw	t1,8(a2)
      7c:	ae090018 	sw	t1,24(s0)
      80:	8d4c0000 	lw	t4,0(t2)
      84:	ae0c001c 	sw	t4,28(s0)
      88:	8d4b0004 	lw	t3,4(t2)
      8c:	ae0b0020 	sw	t3,32(s0)
      90:	8d4c0008 	lw	t4,8(t2)
      94:	e60e0034 	swc1	$f14,52(s0)
      98:	e6040020 	swc1	$f4,32(s0)
      9c:	ae0c0024 	sw	t4,36(s0)
      a0:	0c000000 	jal	0 <func_808D6870>
      a4:	c42c0000 	lwc1	$f12,0(at)
      a8:	e6000044 	swc1	$f0,68(s0)
      ac:	3c010000 	lui	at,0x0
      b0:	0c000000 	jal	0 <func_808D6870>
      b4:	c42c0000 	lwc1	$f12,0(at)
      b8:	e6000048 	swc1	$f0,72(s0)
      bc:	3c010000 	lui	at,0x0
      c0:	0c000000 	jal	0 <func_808D6870>
      c4:	c42c0000 	lwc1	$f12,0(at)
      c8:	4600018d 	trunc.w.s	$f6,$f0
      cc:	3c080000 	lui	t0,0x0
      d0:	25080000 	addiu	t0,t0,0
      d4:	3c0141a0 	lui	at,0x41a0
      d8:	440e3000 	mfc1	t6,$f6
      dc:	44816000 	mtc1	at,$f12
      e0:	000e7c00 	sll	t7,t6,0x10
      e4:	000fc403 	sra	t8,t7,0x10
      e8:	0018c880 	sll	t9,t8,0x2
      ec:	0338c823 	subu	t9,t9,t8
      f0:	03281021 	addu	v0,t9,t0
      f4:	90490000 	lbu	t1,0(v0)
      f8:	a2090028 	sb	t1,40(s0)
      fc:	904a0001 	lbu	t2,1(v0)
     100:	a20a0029 	sb	t2,41(s0)
     104:	904b0002 	lbu	t3,2(v0)
     108:	0c000000 	jal	0 <func_808D6870>
     10c:	a20b002a 	sb	t3,42(s0)
     110:	4600020d 	trunc.w.s	$f8,$f0
     114:	440f4000 	mfc1	t7,$f8
     118:	10000004 	b	12c <func_808D6870+0x12c>
     11c:	a20f0001 	sb	t7,1(s0)
     120:	284100c8 	slti	at,v0,200
     124:	1420ffbe 	bnez	at,20 <func_808D6870+0x20>
     128:	2610004c 	addiu	s0,s0,76
     12c:	8fbf001c 	lw	ra,28(sp)
     130:	8fb00018 	lw	s0,24(sp)
     134:	27bd0020 	addiu	sp,sp,32
     138:	03e00008 	jr	ra
     13c:	00000000 	nop

00000140 <func_808D69B0>:
     140:	27bdffe0 	addiu	sp,sp,-32
     144:	3c030001 	lui	v1,0x1
     148:	afbf0014 	sw	ra,20(sp)
     14c:	00641821 	addu	v1,v1,a0
     150:	8c631e10 	lw	v1,7696(v1)
     154:	00001025 	move	v0,zero
     158:	906e0000 	lbu	t6,0(v1)
     15c:	24420001 	addiu	v0,v0,1
     160:	00021400 	sll	v0,v0,0x10
     164:	15c0002e 	bnez	t6,220 <func_808D69B0+0xe0>
     168:	00021403 	sra	v0,v0,0x10
     16c:	240f0001 	li	t7,1
     170:	a06f0000 	sb	t7,0(v1)
     174:	8cb90000 	lw	t9,0(a1)
     178:	3c01447a 	lui	at,0x447a
     17c:	44813000 	mtc1	at,$f6
     180:	ac790004 	sw	t9,4(v1)
     184:	8cb80004 	lw	t8,4(a1)
     188:	3c0142c8 	lui	at,0x42c8
     18c:	44816000 	mtc1	at,$f12
     190:	ac780008 	sw	t8,8(v1)
     194:	8cb90008 	lw	t9,8(a1)
     198:	ac79000c 	sw	t9,12(v1)
     19c:	8cc90000 	lw	t1,0(a2)
     1a0:	ac690010 	sw	t1,16(v1)
     1a4:	8cc80004 	lw	t0,4(a2)
     1a8:	ac680014 	sw	t0,20(v1)
     1ac:	8cc90008 	lw	t1,8(a2)
     1b0:	ac690018 	sw	t1,24(v1)
     1b4:	8ceb0000 	lw	t3,0(a3)
     1b8:	ac6b001c 	sw	t3,28(v1)
     1bc:	8cea0004 	lw	t2,4(a3)
     1c0:	ac6a0020 	sw	t2,32(v1)
     1c4:	8ceb0008 	lw	t3,8(a3)
     1c8:	ac6b0024 	sw	t3,36(v1)
     1cc:	c7a40030 	lwc1	$f4,48(sp)
     1d0:	46062203 	div.s	$f8,$f4,$f6
     1d4:	e4680034 	swc1	$f8,52(v1)
     1d8:	0c000000 	jal	0 <func_808D6870>
     1dc:	afa30018 	sw	v1,24(sp)
     1e0:	4600028d 	trunc.w.s	$f10,$f0
     1e4:	8fa30018 	lw	v1,24(sp)
     1e8:	3c014120 	lui	at,0x4120
     1ec:	44816000 	mtc1	at,$f12
     1f0:	440f5000 	mfc1	t7,$f10
     1f4:	00000000 	nop
     1f8:	25f800c8 	addiu	t8,t7,200
     1fc:	a478002e 	sh	t8,46(v1)
     200:	87b90036 	lh	t9,54(sp)
     204:	0c000000 	jal	0 <func_808D6870>
     208:	a4790030 	sh	t9,48(v1)
     20c:	4600040d 	trunc.w.s	$f16,$f0
     210:	8fa30018 	lw	v1,24(sp)
     214:	440b8000 	mfc1	t3,$f16
     218:	10000004 	b	22c <func_808D69B0+0xec>
     21c:	a06b0001 	sb	t3,1(v1)
     220:	28410096 	slti	at,v0,150
     224:	1420ffcc 	bnez	at,158 <func_808D69B0+0x18>
     228:	2463004c 	addiu	v1,v1,76
     22c:	8fbf0014 	lw	ra,20(sp)
     230:	27bd0020 	addiu	sp,sp,32
     234:	03e00008 	jr	ra
     238:	00000000 	nop

0000023c <func_808D6AAC>:
     23c:	27bdffe0 	addiu	sp,sp,-32
     240:	afb00018 	sw	s0,24(sp)
     244:	3c100001 	lui	s0,0x1
     248:	afbf001c 	sw	ra,28(sp)
     24c:	02048021 	addu	s0,s0,a0
     250:	8e101e10 	lw	s0,7696(s0)
     254:	00001025 	move	v0,zero
     258:	920e0000 	lbu	t6,0(s0)
     25c:	24420001 	addiu	v0,v0,1
     260:	00021400 	sll	v0,v0,0x10
     264:	15c0003e 	bnez	t6,360 <func_808D6AAC+0x124>
     268:	00021403 	sra	v0,v0,0x10
     26c:	240f0002 	li	t7,2
     270:	a20f0000 	sb	t7,0(s0)
     274:	8cb90000 	lw	t9,0(a1)
     278:	3c01447a 	lui	at,0x447a
     27c:	44813000 	mtc1	at,$f6
     280:	ae190004 	sw	t9,4(s0)
     284:	8cb80004 	lw	t8,4(a1)
     288:	3c013f80 	lui	at,0x3f80
     28c:	44815000 	mtc1	at,$f10
     290:	ae180008 	sw	t8,8(s0)
     294:	8cb90008 	lw	t9,8(a1)
     298:	3c0142c8 	lui	at,0x42c8
     29c:	44816000 	mtc1	at,$f12
     2a0:	ae19000c 	sw	t9,12(s0)
     2a4:	8cc90000 	lw	t1,0(a2)
     2a8:	ae090010 	sw	t1,16(s0)
     2ac:	8cc80004 	lw	t0,4(a2)
     2b0:	ae080014 	sw	t0,20(s0)
     2b4:	8cc90008 	lw	t1,8(a2)
     2b8:	ae090018 	sw	t1,24(s0)
     2bc:	8ceb0000 	lw	t3,0(a3)
     2c0:	ae0b001c 	sw	t3,28(s0)
     2c4:	8cea0004 	lw	t2,4(a3)
     2c8:	ae0a0020 	sw	t2,32(s0)
     2cc:	8ceb0008 	lw	t3,8(a3)
     2d0:	ae0b0024 	sw	t3,36(s0)
     2d4:	c7a40030 	lwc1	$f4,48(sp)
     2d8:	e60a0038 	swc1	$f10,56(s0)
     2dc:	46062203 	div.s	$f8,$f4,$f6
     2e0:	e6080034 	swc1	$f8,52(s0)
     2e4:	c7b20034 	lwc1	$f18,52(sp)
     2e8:	0c000000 	jal	0 <func_808D6870>
     2ec:	e6120040 	swc1	$f18,64(s0)
     2f0:	4600010d 	trunc.w.s	$f4,$f0
     2f4:	3c014120 	lui	at,0x4120
     2f8:	44816000 	mtc1	at,$f12
     2fc:	440f2000 	mfc1	t7,$f4
     300:	00000000 	nop
     304:	25f800c8 	addiu	t8,t7,200
     308:	a618002e 	sh	t8,46(s0)
     30c:	87b9003a 	lh	t9,58(sp)
     310:	0c000000 	jal	0 <func_808D6870>
     314:	a6190030 	sh	t9,48(s0)
     318:	4600018d 	trunc.w.s	$f6,$f0
     31c:	c60c0018 	lwc1	$f12,24(s0)
     320:	c60e0010 	lwc1	$f14,16(s0)
     324:	440b3000 	mfc1	t3,$f6
     328:	0c000000 	jal	0 <func_808D6870>
     32c:	a20b0001 	sb	t3,1(s0)
     330:	c6100010 	lwc1	$f16,16(s0)
     334:	c6020018 	lwc1	$f2,24(s0)
     338:	e6000048 	swc1	$f0,72(s0)
     33c:	46108202 	mul.s	$f8,$f16,$f16
     340:	c60e0014 	lwc1	$f14,20(s0)
     344:	46021282 	mul.s	$f10,$f2,$f2
     348:	460a4000 	add.s	$f0,$f8,$f10
     34c:	0c000000 	jal	0 <func_808D6870>
     350:	46000304 	sqrt.s	$f12,$f0
     354:	46000487 	neg.s	$f18,$f0
     358:	10000004 	b	36c <func_808D6AAC+0x130>
     35c:	e6120044 	swc1	$f18,68(s0)
     360:	28410096 	slti	at,v0,150
     364:	1420ffbc 	bnez	at,258 <func_808D6AAC+0x1c>
     368:	2610004c 	addiu	s0,s0,76
     36c:	8fbf001c 	lw	ra,28(sp)
     370:	8fb00018 	lw	s0,24(sp)
     374:	27bd0020 	addiu	sp,sp,32
     378:	03e00008 	jr	ra
     37c:	00000000 	nop

00000380 <func_808D6BF0>:
     380:	afa60008 	sw	a2,8(sp)
     384:	3c020001 	lui	v0,0x1
     388:	00063400 	sll	a2,a2,0x10
     38c:	00441021 	addu	v0,v0,a0
     390:	44856000 	mtc1	a1,$f12
     394:	00063403 	sra	a2,a2,0x10
     398:	8c421e10 	lw	v0,7696(v0)
     39c:	00001825 	move	v1,zero
     3a0:	904e0000 	lbu	t6,0(v0)
     3a4:	55c00022 	bnezl	t6,430 <func_808D6BF0+0xb0>
     3a8:	24630001 	addiu	v1,v1,1
     3ac:	3c030000 	lui	v1,0x0
     3b0:	240f0003 	li	t7,3
     3b4:	24630000 	addiu	v1,v1,0
     3b8:	a04f0000 	sb	t7,0(v0)
     3bc:	8c790000 	lw	t9,0(v1)
     3c0:	3c01c4fa 	lui	at,0xc4fa
     3c4:	44812000 	mtc1	at,$f4
     3c8:	ac590004 	sw	t9,4(v0)
     3cc:	8c780004 	lw	t8,4(v1)
     3d0:	3c01447a 	lui	at,0x447a
     3d4:	44813000 	mtc1	at,$f6
     3d8:	ac580008 	sw	t8,8(v0)
     3dc:	8c790008 	lw	t9,8(v1)
     3e0:	e4440008 	swc1	$f4,8(v0)
     3e4:	46066203 	div.s	$f8,$f12,$f6
     3e8:	ac59000c 	sw	t9,12(v0)
     3ec:	8c690000 	lw	t1,0(v1)
     3f0:	ac490010 	sw	t1,16(v0)
     3f4:	8c680004 	lw	t0,4(v1)
     3f8:	ac480014 	sw	t0,20(v0)
     3fc:	8c690008 	lw	t1,8(v1)
     400:	ac490018 	sw	t1,24(v0)
     404:	8c6b0000 	lw	t3,0(v1)
     408:	ac4b001c 	sw	t3,28(v0)
     40c:	8c6a0004 	lw	t2,4(v1)
     410:	ac4a0020 	sw	t2,32(v0)
     414:	8c6b0008 	lw	t3,8(v1)
     418:	e4480034 	swc1	$f8,52(v0)
     41c:	a446002e 	sh	a2,46(v0)
     420:	a0400001 	sb	zero,1(v0)
     424:	03e00008 	jr	ra
     428:	ac4b0024 	sw	t3,36(v0)
     42c:	24630001 	addiu	v1,v1,1
     430:	00031c00 	sll	v1,v1,0x10
     434:	00031c03 	sra	v1,v1,0x10
     438:	2861004b 	slti	at,v1,75
     43c:	1420ffd8 	bnez	at,3a0 <func_808D6BF0+0x20>
     440:	2442004c 	addiu	v0,v0,76
     444:	03e00008 	jr	ra
     448:	00000000 	nop

0000044c <func_808D6CBC>:
     44c:	3c020001 	lui	v0,0x1
     450:	afa7000c 	sw	a3,12(sp)
     454:	00441021 	addu	v0,v0,a0
     458:	44856000 	mtc1	a1,$f12
     45c:	44867000 	mtc1	a2,$f14
     460:	8c421e10 	lw	v0,7696(v0)
     464:	00001825 	move	v1,zero
     468:	904e0000 	lbu	t6,0(v0)
     46c:	55c00019 	bnezl	t6,4d4 <func_808D6CBC+0x88>
     470:	24630001 	addiu	v1,v1,1
     474:	3c030000 	lui	v1,0x0
     478:	240f0004 	li	t7,4
     47c:	24630000 	addiu	v1,v1,0
     480:	a04f0000 	sb	t7,0(v0)
     484:	8c790000 	lw	t9,0(v1)
     488:	ac590010 	sw	t9,16(v0)
     48c:	8c780004 	lw	t8,4(v1)
     490:	ac580014 	sw	t8,20(v0)
     494:	8c790008 	lw	t9,8(v1)
     498:	ac590018 	sw	t9,24(v0)
     49c:	8c690000 	lw	t1,0(v1)
     4a0:	ac49001c 	sw	t1,28(v0)
     4a4:	8c680004 	lw	t0,4(v1)
     4a8:	ac480020 	sw	t0,32(v0)
     4ac:	8c690008 	lw	t1,8(v1)
     4b0:	a440002e 	sh	zero,46(v0)
     4b4:	e44c0034 	swc1	$f12,52(v0)
     4b8:	e44e0048 	swc1	$f14,72(v0)
     4bc:	ac490024 	sw	t1,36(v0)
     4c0:	c7a4000c 	lwc1	$f4,12(sp)
     4c4:	a0400001 	sb	zero,1(v0)
     4c8:	03e00008 	jr	ra
     4cc:	e444003c 	swc1	$f4,60(v0)
     4d0:	24630001 	addiu	v1,v1,1
     4d4:	00031c00 	sll	v1,v1,0x10
     4d8:	00031c03 	sra	v1,v1,0x10
     4dc:	28610096 	slti	at,v1,150
     4e0:	1420ffe1 	bnez	at,468 <func_808D6CBC+0x1c>
     4e4:	2442004c 	addiu	v0,v0,76
     4e8:	03e00008 	jr	ra
     4ec:	00000000 	nop

000004f0 <func_808D6D60>:
     4f0:	27bdffe0 	addiu	sp,sp,-32
     4f4:	3c020001 	lui	v0,0x1
     4f8:	afbf0014 	sw	ra,20(sp)
     4fc:	afa7002c 	sw	a3,44(sp)
     500:	00441021 	addu	v0,v0,a0
     504:	44867000 	mtc1	a2,$f14
     508:	8c421e10 	lw	v0,7696(v0)
     50c:	00001825 	move	v1,zero
     510:	904e0000 	lbu	t6,0(v0)
     514:	24630001 	addiu	v1,v1,1
     518:	00031c00 	sll	v1,v1,0x10
     51c:	15c0002a 	bnez	t6,5c8 <func_808D6D60+0xd8>
     520:	00031c03 	sra	v1,v1,0x10
     524:	240f0005 	li	t7,5
     528:	a04f0000 	sb	t7,0(v0)
     52c:	8cb90000 	lw	t9,0(a1)
     530:	3c030000 	lui	v1,0x0
     534:	24630000 	addiu	v1,v1,0
     538:	ac590004 	sw	t9,4(v0)
     53c:	8cb80004 	lw	t8,4(a1)
     540:	3c013f80 	lui	at,0x3f80
     544:	44812000 	mtc1	at,$f4
     548:	ac580008 	sw	t8,8(v0)
     54c:	8cb90008 	lw	t9,8(a1)
     550:	3c0142c8 	lui	at,0x42c8
     554:	44816000 	mtc1	at,$f12
     558:	ac59000c 	sw	t9,12(v0)
     55c:	8c690000 	lw	t1,0(v1)
     560:	ac490010 	sw	t1,16(v0)
     564:	8c680004 	lw	t0,4(v1)
     568:	ac480014 	sw	t0,20(v0)
     56c:	8c690008 	lw	t1,8(v1)
     570:	ac490018 	sw	t1,24(v0)
     574:	8c6b0000 	lw	t3,0(v1)
     578:	ac4b001c 	sw	t3,28(v0)
     57c:	8c6a0004 	lw	t2,4(v1)
     580:	ac4a0020 	sw	t2,32(v0)
     584:	8c6b0008 	lw	t3,8(v1)
     588:	e44e0034 	swc1	$f14,52(v0)
     58c:	e4440040 	swc1	$f4,64(v0)
     590:	ac4b0024 	sw	t3,36(v0)
     594:	c7a6002c 	lwc1	$f6,44(sp)
     598:	e4460038 	swc1	$f6,56(v0)
     59c:	0c000000 	jal	0 <func_808D6870>
     5a0:	afa20018 	sw	v0,24(sp)
     5a4:	8fa20018 	lw	v0,24(sp)
     5a8:	4600020d 	trunc.w.s	$f8,$f0
     5ac:	a440002c 	sh	zero,44(v0)
     5b0:	9043002d 	lbu	v1,45(v0)
     5b4:	440d4000 	mfc1	t5,$f8
     5b8:	a0430001 	sb	v1,1(v0)
     5bc:	a443002e 	sh	v1,46(v0)
     5c0:	10000004 	b	5d4 <func_808D6D60+0xe4>
     5c4:	a44d0030 	sh	t5,48(v0)
     5c8:	28610096 	slti	at,v1,150
     5cc:	1420ffd0 	bnez	at,510 <func_808D6D60+0x20>
     5d0:	2442004c 	addiu	v0,v0,76
     5d4:	8fbf0014 	lw	ra,20(sp)
     5d8:	27bd0020 	addiu	sp,sp,32
     5dc:	03e00008 	jr	ra
     5e0:	00000000 	nop

000005e4 <func_808D6E54>:
     5e4:	27bdffd8 	addiu	sp,sp,-40
     5e8:	87ae003a 	lh	t6,58(sp)
     5ec:	3c030001 	lui	v1,0x1
     5f0:	afbf0014 	sw	ra,20(sp)
     5f4:	000e7880 	sll	t7,t6,0x2
     5f8:	afa70034 	sw	a3,52(sp)
     5fc:	00641821 	addu	v1,v1,a0
     600:	01ee7821 	addu	t7,t7,t6
     604:	8c631e10 	lw	v1,7696(v1)
     608:	000f7880 	sll	t7,t7,0x2
     60c:	01ee7823 	subu	t7,t7,t6
     610:	000f7880 	sll	t7,t7,0x2
     614:	24180006 	li	t8,6
     618:	006f1021 	addu	v0,v1,t7
     61c:	a0580000 	sb	t8,0(v0)
     620:	8ca80000 	lw	t0,0(a1)
     624:	44867000 	mtc1	a2,$f14
     628:	3c060000 	lui	a2,0x0
     62c:	ac480004 	sw	t0,4(v0)
     630:	8cb90004 	lw	t9,4(a1)
     634:	24c60000 	addiu	a2,a2,0
     638:	3c013f80 	lui	at,0x3f80
     63c:	ac590008 	sw	t9,8(v0)
     640:	8ca80008 	lw	t0,8(a1)
     644:	44812000 	mtc1	at,$f4
     648:	3c0142c8 	lui	at,0x42c8
     64c:	ac48000c 	sw	t0,12(v0)
     650:	8cca0000 	lw	t2,0(a2)
     654:	44816000 	mtc1	at,$f12
     658:	ac4a0010 	sw	t2,16(v0)
     65c:	8cc90004 	lw	t1,4(a2)
     660:	ac490014 	sw	t1,20(v0)
     664:	8cca0008 	lw	t2,8(a2)
     668:	ac4a0018 	sw	t2,24(v0)
     66c:	8ccc0000 	lw	t4,0(a2)
     670:	ac4c001c 	sw	t4,28(v0)
     674:	8ccb0004 	lw	t3,4(a2)
     678:	ac4b0020 	sw	t3,32(v0)
     67c:	8ccc0008 	lw	t4,8(a2)
     680:	e44e0034 	swc1	$f14,52(v0)
     684:	e4440040 	swc1	$f4,64(v0)
     688:	ac4c0024 	sw	t4,36(v0)
     68c:	c7a60034 	lwc1	$f6,52(sp)
     690:	e4460038 	swc1	$f6,56(v0)
     694:	0c000000 	jal	0 <func_808D6870>
     698:	afa2001c 	sw	v0,28(sp)
     69c:	8fa2001c 	lw	v0,28(sp)
     6a0:	4600020d 	trunc.w.s	$f8,$f0
     6a4:	a440002c 	sh	zero,44(v0)
     6a8:	9043002d 	lbu	v1,45(v0)
     6ac:	440e4000 	mfc1	t6,$f8
     6b0:	a0430001 	sb	v1,1(v0)
     6b4:	a443002e 	sh	v1,46(v0)
     6b8:	a44e0030 	sh	t6,48(v0)
     6bc:	8fbf0014 	lw	ra,20(sp)
     6c0:	27bd0028 	addiu	sp,sp,40
     6c4:	03e00008 	jr	ra
     6c8:	00000000 	nop

000006cc <func_808D6F3C>:
     6cc:	27bdffe0 	addiu	sp,sp,-32
     6d0:	3c020001 	lui	v0,0x1
     6d4:	afbf0014 	sw	ra,20(sp)
     6d8:	afa7002c 	sw	a3,44(sp)
     6dc:	00441021 	addu	v0,v0,a0
     6e0:	44867000 	mtc1	a2,$f14
     6e4:	8c421e10 	lw	v0,7696(v0)
     6e8:	00001825 	move	v1,zero
     6ec:	904e0000 	lbu	t6,0(v0)
     6f0:	24630001 	addiu	v1,v1,1
     6f4:	00031c00 	sll	v1,v1,0x10
     6f8:	15c0002b 	bnez	t6,7a8 <func_808D6F3C+0xdc>
     6fc:	00031c03 	sra	v1,v1,0x10
     700:	240f0007 	li	t7,7
     704:	a04f0000 	sb	t7,0(v0)
     708:	8cb90000 	lw	t9,0(a1)
     70c:	3c030000 	lui	v1,0x0
     710:	24630000 	addiu	v1,v1,0
     714:	ac590004 	sw	t9,4(v0)
     718:	8cb80004 	lw	t8,4(a1)
     71c:	240c00ff 	li	t4,255
     720:	3c010000 	lui	at,0x0
     724:	ac580008 	sw	t8,8(v0)
     728:	8cb90008 	lw	t9,8(a1)
     72c:	ac59000c 	sw	t9,12(v0)
     730:	8c690000 	lw	t1,0(v1)
     734:	ac490010 	sw	t1,16(v0)
     738:	8c680004 	lw	t0,4(v1)
     73c:	ac480014 	sw	t0,20(v0)
     740:	8c690008 	lw	t1,8(v1)
     744:	ac490018 	sw	t1,24(v0)
     748:	8c6b0000 	lw	t3,0(v1)
     74c:	ac4b001c 	sw	t3,28(v0)
     750:	8c6a0004 	lw	t2,4(v1)
     754:	ac4a0020 	sw	t2,32(v0)
     758:	8c6b0008 	lw	t3,8(v1)
     75c:	a44c002c 	sh	t4,44(v0)
     760:	ac4b0024 	sw	t3,36(v0)
     764:	c4240000 	lwc1	$f4,0(at)
     768:	e44e0034 	swc1	$f14,52(v0)
     76c:	3c0142c8 	lui	at,0x42c8
     770:	e4440040 	swc1	$f4,64(v0)
     774:	c7a6002c 	lwc1	$f6,44(sp)
     778:	44816000 	mtc1	at,$f12
     77c:	e4460038 	swc1	$f6,56(v0)
     780:	0c000000 	jal	0 <func_808D6870>
     784:	afa20018 	sw	v0,24(sp)
     788:	4600020d 	trunc.w.s	$f8,$f0
     78c:	8fa20018 	lw	v0,24(sp)
     790:	300f00ff 	andi	t7,zero,0xff
     794:	440e4000 	mfc1	t6,$f8
     798:	a44f002e 	sh	t7,46(v0)
     79c:	a0400001 	sb	zero,1(v0)
     7a0:	10000004 	b	7b4 <func_808D6F3C+0xe8>
     7a4:	a44e0030 	sh	t6,48(v0)
     7a8:	28610096 	slti	at,v1,150
     7ac:	1420ffcf 	bnez	at,6ec <func_808D6F3C+0x20>
     7b0:	2442004c 	addiu	v0,v0,76
     7b4:	8fbf0014 	lw	ra,20(sp)
     7b8:	27bd0020 	addiu	sp,sp,32
     7bc:	03e00008 	jr	ra
     7c0:	00000000 	nop

000007c4 <func_808D7034>:
     7c4:	3c020001 	lui	v0,0x1
     7c8:	00441021 	addu	v0,v0,a0
     7cc:	44866000 	mtc1	a2,$f12
     7d0:	8c421e10 	lw	v0,7696(v0)
     7d4:	00001825 	move	v1,zero
     7d8:	904e0000 	lbu	t6,0(v0)
     7dc:	15c00020 	bnez	t6,860 <func_808D7034+0x9c>
     7e0:	240f0008 	li	t7,8
     7e4:	a04f0000 	sb	t7,0(v0)
     7e8:	8cb90000 	lw	t9,0(a1)
     7ec:	3c030000 	lui	v1,0x0
     7f0:	24630000 	addiu	v1,v1,0
     7f4:	ac590004 	sw	t9,4(v0)
     7f8:	8cb80004 	lw	t8,4(a1)
     7fc:	3c01447a 	lui	at,0x447a
     800:	44813000 	mtc1	at,$f6
     804:	ac580008 	sw	t8,8(v0)
     808:	8cb90008 	lw	t9,8(a1)
     80c:	46066203 	div.s	$f8,$f12,$f6
     810:	44802000 	mtc1	zero,$f4
     814:	ac59000c 	sw	t9,12(v0)
     818:	8c690000 	lw	t1,0(v1)
     81c:	ac490010 	sw	t1,16(v0)
     820:	8c680004 	lw	t0,4(v1)
     824:	ac480014 	sw	t0,20(v0)
     828:	8c690008 	lw	t1,8(v1)
     82c:	ac490018 	sw	t1,24(v0)
     830:	8c6b0000 	lw	t3,0(v1)
     834:	ac4b001c 	sw	t3,28(v0)
     838:	8c6a0004 	lw	t2,4(v1)
     83c:	ac4a0020 	sw	t2,32(v0)
     840:	8c6b0008 	lw	t3,8(v1)
     844:	e4480034 	swc1	$f8,52(v0)
     848:	a0400001 	sb	zero,1(v0)
     84c:	a440002c 	sh	zero,44(v0)
     850:	a440002e 	sh	zero,46(v0)
     854:	e4440038 	swc1	$f4,56(v0)
     858:	03e00008 	jr	ra
     85c:	ac4b0024 	sw	t3,36(v0)
     860:	24630001 	addiu	v1,v1,1
     864:	00031c00 	sll	v1,v1,0x10
     868:	00031c03 	sra	v1,v1,0x10
     86c:	28610096 	slti	at,v1,150
     870:	1420ffd9 	bnez	at,7d8 <func_808D7034+0x14>
     874:	2442004c 	addiu	v0,v0,76
     878:	03e00008 	jr	ra
     87c:	00000000 	nop

00000880 <func_808D70F0>:
     880:	c4840000 	lwc1	$f4,0(a0)
     884:	4600218d 	trunc.w.s	$f6,$f4
     888:	440f3000 	mfc1	t7,$f6
     88c:	00000000 	nop
     890:	a4af0046 	sh	t7,70(a1)
     894:	c4880004 	lwc1	$f8,4(a0)
     898:	4600428d 	trunc.w.s	$f10,$f8
     89c:	44195000 	mfc1	t9,$f10
     8a0:	00000000 	nop
     8a4:	a4b90048 	sh	t9,72(a1)
     8a8:	c4900008 	lwc1	$f16,8(a0)
     8ac:	4600848d 	trunc.w.s	$f18,$f16
     8b0:	44099000 	mfc1	t1,$f18
     8b4:	03e00008 	jr	ra
     8b8:	a4a9004a 	sh	t1,74(a1)

000008bc <func_808D712C>:
     8bc:	27bdffe8 	addiu	sp,sp,-24
     8c0:	3c010001 	lui	at,0x1
     8c4:	afa40018 	sw	a0,24(sp)
     8c8:	342117a4 	ori	at,at,0x17a4
     8cc:	afa5001c 	sw	a1,28(sp)
     8d0:	00a12021 	addu	a0,a1,at
     8d4:	afbf0014 	sw	ra,20(sp)
     8d8:	00062c00 	sll	a1,a2,0x10
     8dc:	0c000000 	jal	0 <func_808D6870>
     8e0:	00052c03 	sra	a1,a1,0x10
     8e4:	8fae0018 	lw	t6,24(sp)
     8e8:	0002c100 	sll	t8,v0,0x4
     8ec:	0302c021 	addu	t8,t8,v0
     8f0:	adc2014c 	sw	v0,332(t6)
     8f4:	8faf001c 	lw	t7,28(sp)
     8f8:	0018c080 	sll	t8,t8,0x2
     8fc:	3c080001 	lui	t0,0x1
     900:	01f8c821 	addu	t9,t7,t8
     904:	01194021 	addu	t0,t0,t9
     908:	8d0817b4 	lw	t0,6068(t0)
     90c:	8fbf0014 	lw	ra,20(sp)
     910:	3c018000 	lui	at,0x8000
     914:	01014821 	addu	t1,t0,at
     918:	3c010000 	lui	at,0x0
     91c:	ac290018 	sw	t1,24(at)
     920:	03e00008 	jr	ra
     924:	27bd0018 	addiu	sp,sp,24

00000928 <BossGanon_Init>:
     928:	27bdff90 	addiu	sp,sp,-112
     92c:	afbf003c 	sw	ra,60(sp)
     930:	afb10038 	sw	s1,56(sp)
     934:	afb00034 	sw	s0,52(sp)
     938:	848e001c 	lh	t6,28(a0)
     93c:	00808025 	move	s0,a0
     940:	00a08825 	move	s1,a1
     944:	29c10064 	slti	at,t6,100
     948:	1020007c 	beqz	at,b3c <BossGanon_Init+0x214>
     94c:	8ca31c44 	lw	v1,7236(a1)
     950:	00a02025 	move	a0,a1
     954:	0c000000 	jal	0 <func_808D6870>
     958:	24050014 	li	a1,20
     95c:	3c040000 	lui	a0,0x0
     960:	3c010001 	lui	at,0x1
     964:	24840000 	addiu	a0,a0,0
     968:	00310821 	addu	at,at,s1
     96c:	ac241e10 	sw	a0,7696(at)
     970:	00001025 	move	v0,zero
     974:	2403004c 	li	v1,76
     978:	00430019 	multu	v0,v1
     97c:	24420001 	addiu	v0,v0,1
     980:	00021400 	sll	v0,v0,0x10
     984:	00021403 	sra	v0,v0,0x10
     988:	284100c8 	slti	at,v0,200
     98c:	00007812 	mflo	t7
     990:	008fc021 	addu	t8,a0,t7
     994:	1420fff8 	bnez	at,978 <BossGanon_Init+0x50>
     998:	a3000000 	sb	zero,0(t8)
     99c:	3c010000 	lui	at,0x0
     9a0:	ac300000 	sw	s0,0(at)
     9a4:	24190028 	li	t9,40
     9a8:	3c050000 	lui	a1,0x0
     9ac:	a21900af 	sb	t9,175(s0)
     9b0:	24a50000 	addiu	a1,a1,0
     9b4:	0c000000 	jal	0 <func_808D6870>
     9b8:	02002025 	move	a0,s0
     9bc:	44801000 	mtc1	zero,$f2
     9c0:	260400b4 	addiu	a0,s0,180
     9c4:	00003025 	move	a2,zero
     9c8:	44051000 	mfc1	a1,$f2
     9cc:	44071000 	mfc1	a3,$f2
     9d0:	0c000000 	jal	0 <func_808D6870>
     9d4:	00000000 	nop
     9d8:	3c053c23 	lui	a1,0x3c23
     9dc:	34a5d70a 	ori	a1,a1,0xd70a
     9e0:	0c000000 	jal	0 <func_808D6870>
     9e4:	02002025 	move	a0,s0
     9e8:	3c060601 	lui	a2,0x601
     9ec:	24c614e8 	addiu	a2,a2,5352
     9f0:	02202025 	move	a0,s1
     9f4:	26050150 	addiu	a1,s0,336
     9f8:	00003825 	move	a3,zero
     9fc:	afa00010 	sw	zero,16(sp)
     a00:	afa00014 	sw	zero,20(sp)
     a04:	0c000000 	jal	0 <func_808D6870>
     a08:	afa00018 	sw	zero,24(sp)
     a0c:	26050610 	addiu	a1,s0,1552
     a10:	afa50044 	sw	a1,68(sp)
     a14:	0c000000 	jal	0 <func_808D6870>
     a18:	02202025 	move	a0,s1
     a1c:	3c070000 	lui	a3,0x0
     a20:	8fa50044 	lw	a1,68(sp)
     a24:	24e70000 	addiu	a3,a3,0
     a28:	02202025 	move	a0,s1
     a2c:	0c000000 	jal	0 <func_808D6870>
     a30:	02003025 	move	a2,s0
     a34:	8608001c 	lh	t0,28(s0)
     a38:	24010001 	li	at,1
     a3c:	02202825 	move	a1,s1
     a40:	11010006 	beq	t0,at,a5c <BossGanon_Init+0x134>
     a44:	02202025 	move	a0,s1
     a48:	0c000000 	jal	0 <func_808D6870>
     a4c:	02002025 	move	a0,s0
     a50:	240900ff 	li	t1,255
     a54:	10000021 	b	adc <BossGanon_Init+0x1b4>
     a58:	a6090718 	sh	t1,1816(s0)
     a5c:	0c000000 	jal	0 <func_808D6870>
     a60:	24050037 	li	a1,55
     a64:	0002182b 	sltu	v1,zero,v0
     a68:	10600010 	beqz	v1,aac <BossGanon_Init+0x184>
     a6c:	02002025 	move	a0,s0
     a70:	862200a4 	lh	v0,164(s1)
     a74:	3843004f 	xori	v1,v0,0x4f
     a78:	2c630001 	sltiu	v1,v1,1
     a7c:	1460000b 	bnez	v1,aac <BossGanon_Init+0x184>
     a80:	00000000 	nop
     a84:	3843001a 	xori	v1,v0,0x1a
     a88:	2c630001 	sltiu	v1,v1,1
     a8c:	14600007 	bnez	v1,aac <BossGanon_Init+0x184>
     a90:	00000000 	nop
     a94:	3843000e 	xori	v1,v0,0xe
     a98:	2c630001 	sltiu	v1,v1,1
     a9c:	14600003 	bnez	v1,aac <BossGanon_Init+0x184>
     aa0:	00000000 	nop
     aa4:	3843000f 	xori	v1,v0,0xf
     aa8:	2c630001 	sltiu	v1,v1,1
     aac:	14600005 	bnez	v1,ac4 <BossGanon_Init+0x19c>
     ab0:	00000000 	nop
     ab4:	0c000000 	jal	0 <func_808D6870>
     ab8:	02202825 	move	a1,s1
     abc:	10000005 	b	ad4 <BossGanon_Init+0x1ac>
     ac0:	02002025 	move	a0,s0
     ac4:	0c000000 	jal	0 <func_808D6870>
     ac8:	02002025 	move	a0,s0
     acc:	100000fa 	b	eb8 <BossGanon_Init+0x590>
     ad0:	8fbf003c 	lw	ra,60(sp)
     ad4:	0c000000 	jal	0 <func_808D6870>
     ad8:	02202825 	move	a1,s1
     adc:	44800000 	mtc1	zero,$f0
     ae0:	26241c24 	addiu	a0,s1,7204
     ae4:	240a0001 	li	t2,1
     ae8:	afaa0028 	sw	t2,40(sp)
     aec:	afa40044 	sw	a0,68(sp)
     af0:	02002825 	move	a1,s0
     af4:	02203025 	move	a2,s1
     af8:	2407016f 	li	a3,367
     afc:	afa0001c 	sw	zero,28(sp)
     b00:	afa00020 	sw	zero,32(sp)
     b04:	afa00024 	sw	zero,36(sp)
     b08:	e7a00010 	swc1	$f0,16(sp)
     b0c:	e7a00014 	swc1	$f0,20(sp)
     b10:	0c000000 	jal	0 <func_808D6870>
     b14:	e7a00018 	swc1	$f0,24(sp)
     b18:	3c010000 	lui	at,0x0
     b1c:	ac220000 	sw	v0,0(at)
     b20:	02202025 	move	a0,s1
     b24:	8fa50044 	lw	a1,68(sp)
     b28:	02003025 	move	a2,s0
     b2c:	0c000000 	jal	0 <func_808D6870>
     b30:	24070009 	li	a3,9
     b34:	100000e0 	b	eb8 <BossGanon_Init+0x590>
     b38:	8fbf003c 	lw	ra,60(sp)
     b3c:	8e0b0004 	lw	t3,4(s0)
     b40:	2401fffe 	li	at,-2
     b44:	8602001c 	lh	v0,28(s0)
     b48:	01616024 	and	t4,t3,at
     b4c:	3c01437f 	lui	at,0x437f
     b50:	44812000 	mtc1	at,$f4
     b54:	284100c8 	slti	at,v0,200
     b58:	ae0c0004 	sw	t4,4(s0)
     b5c:	1420008e 	bnez	at,d98 <BossGanon_Init+0x470>
     b60:	e60401cc 	swc1	$f4,460(s0)
     b64:	2401012c 	li	at,300
     b68:	14410009 	bne	v0,at,b90 <BossGanon_Init+0x268>
     b6c:	3c0d0000 	lui	t5,0x0
     b70:	3c0e0000 	lui	t6,0x0
     b74:	25ad0000 	addiu	t5,t5,0
     b78:	25ce0000 	addiu	t6,t6,0
     b7c:	240f0002 	li	t7,2
     b80:	ae0d0130 	sw	t5,304(s0)
     b84:	ae0e0134 	sw	t6,308(s0)
     b88:	100000ca 	b	eb4 <BossGanon_Init+0x58c>
     b8c:	a60f01a8 	sh	t7,424(s0)
     b90:	24010190 	li	at,400
     b94:	14410009 	bne	v0,at,bbc <BossGanon_Init+0x294>
     b98:	3c180000 	lui	t8,0x0
     b9c:	3c190000 	lui	t9,0x0
     ba0:	27180000 	addiu	t8,t8,0
     ba4:	27390000 	addiu	t9,t9,0
     ba8:	24080001 	li	t0,1
     bac:	ae180130 	sw	t8,304(s0)
     bb0:	ae190134 	sw	t9,308(s0)
     bb4:	100000bf 	b	eb4 <BossGanon_Init+0x58c>
     bb8:	a60801a8 	sh	t0,424(s0)
     bbc:	28410104 	slti	at,v0,260
     bc0:	1420002c 	bnez	at,c74 <BossGanon_Init+0x34c>
     bc4:	3c090000 	lui	t1,0x0
     bc8:	860c001c 	lh	t4,28(s0)
     bcc:	3c0a0000 	lui	t2,0x0
     bd0:	25290000 	addiu	t1,t1,0
     bd4:	000c6823 	negu	t5,t4
     bd8:	000d7040 	sll	t6,t5,0x1
     bdc:	254a0000 	addiu	t2,t2,0
     be0:	240b000a 	li	t3,10
     be4:	25cf0208 	addiu	t7,t6,520
     be8:	ae090130 	sw	t1,304(s0)
     bec:	ae0a0134 	sw	t2,308(s0)
     bf0:	a60b01c2 	sh	t3,450(s0)
     bf4:	a60f01a2 	sh	t7,418(s0)
     bf8:	00001025 	move	v0,zero
     bfc:	26040024 	addiu	a0,s0,36
     c00:	2403000c 	li	v1,12
     c04:	00430019 	multu	v0,v1
     c08:	8c890000 	lw	t1,0(a0)
     c0c:	24420001 	addiu	v0,v0,1
     c10:	00021400 	sll	v0,v0,0x10
     c14:	00021403 	sra	v0,v0,0x10
     c18:	2841000f 	slti	at,v0,15
     c1c:	0000c012 	mflo	t8
     c20:	0218c821 	addu	t9,s0,t8
     c24:	af2902ec 	sw	t1,748(t9)
     c28:	8c880004 	lw	t0,4(a0)
     c2c:	af2802f0 	sw	t0,752(t9)
     c30:	8c890008 	lw	t1,8(a0)
     c34:	1420fff3 	bnez	at,c04 <BossGanon_Init+0x2dc>
     c38:	af2902f4 	sw	t1,756(t9)
     c3c:	240a0003 	li	t2,3
     c40:	a60a01b8 	sh	t2,440(s0)
     c44:	26050610 	addiu	a1,s0,1552
     c48:	afa50044 	sw	a1,68(sp)
     c4c:	0c000000 	jal	0 <func_808D6870>
     c50:	02202025 	move	a0,s1
     c54:	3c070000 	lui	a3,0x0
     c58:	8fa50044 	lw	a1,68(sp)
     c5c:	24e70000 	addiu	a3,a3,0
     c60:	02202025 	move	a0,s1
     c64:	0c000000 	jal	0 <func_808D6870>
     c68:	02003025 	move	a2,s0
     c6c:	10000092 	b	eb8 <BossGanon_Init+0x590>
     c70:	8fbf003c 	lw	ra,60(sp)
     c74:	284100fa 	slti	at,v0,250
     c78:	14200021 	bnez	at,d00 <BossGanon_Init+0x3d8>
     c7c:	3c090000 	lui	t1,0x0
     c80:	3c0b0000 	lui	t3,0x0
     c84:	3c0c0000 	lui	t4,0x0
     c88:	256b0000 	addiu	t3,t3,0
     c8c:	258c0000 	addiu	t4,t4,0
     c90:	ae0b0130 	sw	t3,304(s0)
     c94:	ae0c0134 	sw	t4,308(s0)
     c98:	3c010000 	lui	at,0x0
     c9c:	0c000000 	jal	0 <func_808D6870>
     ca0:	c42c0000 	lwc1	$f12,0(at)
     ca4:	4600018d 	trunc.w.s	$f6,$f0
     ca8:	44801000 	mtc1	zero,$f2
     cac:	00001025 	move	v0,zero
     cb0:	26040024 	addiu	a0,s0,36
     cb4:	440e3000 	mfc1	t6,$f6
     cb8:	2403000c 	li	v1,12
     cbc:	a60e01a2 	sh	t6,418(s0)
     cc0:	00430019 	multu	v0,v1
     cc4:	8c880000 	lw	t0,0(a0)
     cc8:	24420001 	addiu	v0,v0,1
     ccc:	00021400 	sll	v0,v0,0x10
     cd0:	00021403 	sra	v0,v0,0x10
     cd4:	2841000f 	slti	at,v0,15
     cd8:	00007812 	mflo	t7
     cdc:	020fc021 	addu	t8,s0,t7
     ce0:	af0802ec 	sw	t0,748(t8)
     ce4:	8c990004 	lw	t9,4(a0)
     ce8:	af1902f0 	sw	t9,752(t8)
     cec:	8c880008 	lw	t0,8(a0)
     cf0:	1420fff3 	bnez	at,cc0 <BossGanon_Init+0x398>
     cf4:	af0802f4 	sw	t0,756(t8)
     cf8:	1000006e 	b	eb4 <BossGanon_Init+0x58c>
     cfc:	e60201cc 	swc1	$f2,460(s0)
     d00:	3c014130 	lui	at,0x4130
     d04:	44814000 	mtc1	at,$f8
     d08:	860b001c 	lh	t3,28(s0)
     d0c:	3c0a0000 	lui	t2,0x0
     d10:	25290000 	addiu	t1,t1,0
     d14:	254a0000 	addiu	t2,t2,0
     d18:	240100c8 	li	at,200
     d1c:	ae090130 	sw	t1,304(s0)
     d20:	ae0a0134 	sw	t2,308(s0)
     d24:	15610004 	bne	t3,at,d38 <BossGanon_Init+0x410>
     d28:	e6080068 	swc1	$f8,104(s0)
     d2c:	240c0007 	li	t4,7
     d30:	1000000a 	b	d5c <BossGanon_Init+0x434>
     d34:	a60c01b6 	sh	t4,438(s0)
     d38:	3c014040 	lui	at,0x4040
     d3c:	44816000 	mtc1	at,$f12
     d40:	0c000000 	jal	0 <func_808D6870>
     d44:	00000000 	nop
     d48:	4600028d 	trunc.w.s	$f10,$f0
     d4c:	44185000 	mfc1	t8,$f10
     d50:	00000000 	nop
     d54:	27190003 	addiu	t9,t8,3
     d58:	a61901b6 	sh	t9,438(s0)
     d5c:	3c010000 	lui	at,0x0
     d60:	c42c0000 	lwc1	$f12,0(at)
     d64:	00001025 	move	v0,zero
     d68:	2403000c 	li	v1,12
     d6c:	00430019 	multu	v0,v1
     d70:	24420001 	addiu	v0,v0,1
     d74:	00021400 	sll	v0,v0,0x10
     d78:	00021403 	sra	v0,v0,0x10
     d7c:	2841000f 	slti	at,v0,15
     d80:	00004012 	mflo	t0
     d84:	02084821 	addu	t1,s0,t0
     d88:	1420fff8 	bnez	at,d6c <BossGanon_Init+0x444>
     d8c:	e52c02f0 	swc1	$f12,752(t1)
     d90:	10000049 	b	eb8 <BossGanon_Init+0x590>
     d94:	8fbf003c 	lw	ra,60(sp)
     d98:	3c014140 	lui	at,0x4140
     d9c:	44819000 	mtc1	at,$f18
     da0:	3c0a0000 	lui	t2,0x0
     da4:	3c0b0000 	lui	t3,0x0
     da8:	254a0000 	addiu	t2,t2,0
     dac:	256b0000 	addiu	t3,t3,0
     db0:	ae0a0130 	sw	t2,304(s0)
     db4:	ae0b0134 	sw	t3,308(s0)
     db8:	e6120068 	swc1	$f18,104(s0)
     dbc:	3c0141f0 	lui	at,0x41f0
     dc0:	c4640024 	lwc1	$f4,36(v1)
     dc4:	c6060024 	lwc1	$f6,36(s0)
     dc8:	44815000 	mtc1	at,$f10
     dcc:	c4680028 	lwc1	$f8,40(v1)
     dd0:	46062381 	sub.s	$f14,$f4,$f6
     dd4:	c6040028 	lwc1	$f4,40(s0)
     dd8:	460a4480 	add.s	$f18,$f8,$f10
     ddc:	46049181 	sub.s	$f6,$f18,$f4
     de0:	e7a60058 	swc1	$f6,88(sp)
     de4:	c60a002c 	lwc1	$f10,44(s0)
     de8:	c468002c 	lwc1	$f8,44(v1)
     dec:	e7ae005c 	swc1	$f14,92(sp)
     df0:	460a4301 	sub.s	$f12,$f8,$f10
     df4:	0c000000 	jal	0 <func_808D6870>
     df8:	e7ac0054 	swc1	$f12,84(sp)
     dfc:	c7a2005c 	lwc1	$f2,92(sp)
     e00:	c7b00054 	lwc1	$f16,84(sp)
     e04:	a6020032 	sh	v0,50(s0)
     e08:	46021482 	mul.s	$f18,$f2,$f2
     e0c:	c7ae0058 	lwc1	$f14,88(sp)
     e10:	46108102 	mul.s	$f4,$f16,$f16
     e14:	46049000 	add.s	$f0,$f18,$f4
     e18:	0c000000 	jal	0 <func_808D6870>
     e1c:	46000304 	sqrt.s	$f12,$f0
     e20:	0c000000 	jal	0 <func_808D6870>
     e24:	a6020030 	sh	v0,48(s0)
     e28:	44801000 	mtc1	zero,$f2
     e2c:	3c010000 	lui	at,0x0
     e30:	4602003c 	c.lt.s	$f0,$f2
     e34:	00000000 	nop
     e38:	45020013 	bc1fl	e88 <BossGanon_Init+0x560>
     e3c:	240f0003 	li	t7,3
     e40:	0c000000 	jal	0 <func_808D6870>
     e44:	c42c0000 	lwc1	$f12,0(at)
     e48:	4600018d 	trunc.w.s	$f6,$f0
     e4c:	860c0032 	lh	t4,50(s0)
     e50:	3c010000 	lui	at,0x0
     e54:	c42c0000 	lwc1	$f12,0(at)
     e58:	44183000 	mfc1	t8,$f6
     e5c:	00000000 	nop
     e60:	0198c821 	addu	t9,t4,t8
     e64:	0c000000 	jal	0 <func_808D6870>
     e68:	a6190032 	sh	t9,50(s0)
     e6c:	4600020d 	trunc.w.s	$f8,$f0
     e70:	86080030 	lh	t0,48(s0)
     e74:	440d4000 	mfc1	t5,$f8
     e78:	00000000 	nop
     e7c:	010d7021 	addu	t6,t0,t5
     e80:	a60e0030 	sh	t6,48(s0)
     e84:	240f0003 	li	t7,3
     e88:	a60f01b8 	sh	t7,440(s0)
     e8c:	26050610 	addiu	a1,s0,1552
     e90:	afa50044 	sw	a1,68(sp)
     e94:	0c000000 	jal	0 <func_808D6870>
     e98:	02202025 	move	a0,s1
     e9c:	3c070000 	lui	a3,0x0
     ea0:	8fa50044 	lw	a1,68(sp)
     ea4:	24e70000 	addiu	a3,a3,0
     ea8:	02202025 	move	a0,s1
     eac:	0c000000 	jal	0 <func_808D6870>
     eb0:	02003025 	move	a2,s0
     eb4:	8fbf003c 	lw	ra,60(sp)
     eb8:	8fb00034 	lw	s0,52(sp)
     ebc:	8fb10038 	lw	s1,56(sp)
     ec0:	03e00008 	jr	ra
     ec4:	27bd0070 	addiu	sp,sp,112

00000ec8 <BossGanon_Destroy>:
     ec8:	27bdffe8 	addiu	sp,sp,-24
     ecc:	afbf0014 	sw	ra,20(sp)
     ed0:	afa5001c 	sw	a1,28(sp)
     ed4:	8482001c 	lh	v0,28(a0)
     ed8:	00803025 	move	a2,a0
     edc:	24c50610 	addiu	a1,a2,1552
     ee0:	284100c8 	slti	at,v0,200
     ee4:	14200004 	bnez	at,ef8 <BossGanon_Destroy+0x30>
     ee8:	8fa4001c 	lw	a0,28(sp)
     eec:	28410104 	slti	at,v0,260
     ef0:	54200006 	bnezl	at,f0c <BossGanon_Destroy+0x44>
     ef4:	28410064 	slti	at,v0,100
     ef8:	0c000000 	jal	0 <func_808D6870>
     efc:	afa60018 	sw	a2,24(sp)
     f00:	8fa60018 	lw	a2,24(sp)
     f04:	84c2001c 	lh	v0,28(a2)
     f08:	28410064 	slti	at,v0,100
     f0c:	10200003 	beqz	at,f1c <BossGanon_Destroy+0x54>
     f10:	24c40150 	addiu	a0,a2,336
     f14:	0c000000 	jal	0 <func_808D6870>
     f18:	8fa5001c 	lw	a1,28(sp)
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	27bd0018 	addiu	sp,sp,24
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <func_808D779C>:
     f2c:	27bdffd0 	addiu	sp,sp,-48
     f30:	afb00018 	sw	s0,24(sp)
     f34:	3c010001 	lui	at,0x1
     f38:	00808025 	move	s0,a0
     f3c:	342117a4 	ori	at,at,0x17a4
     f40:	afbf001c 	sw	ra,28(sp)
     f44:	afa50034 	sw	a1,52(sp)
     f48:	00a12021 	addu	a0,a1,at
     f4c:	afa40024 	sw	a0,36(sp)
     f50:	0c000000 	jal	0 <func_808D6870>
     f54:	2405017d 	li	a1,381
     f58:	8fa40024 	lw	a0,36(sp)
     f5c:	04410005 	bgez	v0,f74 <func_808D779C+0x48>
     f60:	00403825 	move	a3,v0
     f64:	0c000000 	jal	0 <func_808D6870>
     f68:	02002025 	move	a0,s0
     f6c:	10000023 	b	ffc <func_808D779C+0xd0>
     f70:	8fbf001c 	lw	ra,28(sp)
     f74:	00e02825 	move	a1,a3
     f78:	0c000000 	jal	0 <func_808D6870>
     f7c:	afa70028 	sw	a3,40(sp)
     f80:	1040001a 	beqz	v0,fec <func_808D779C+0xc0>
     f84:	8fa70028 	lw	a3,40(sp)
     f88:	3c0e0000 	lui	t6,0x0
     f8c:	25ce0000 	addiu	t6,t6,0
     f90:	240f0001 	li	t7,1
     f94:	ae0e0194 	sw	t6,404(s0)
     f98:	a20f0198 	sb	t7,408(s0)
     f9c:	ae07014c 	sw	a3,332(s0)
     fa0:	8fb80034 	lw	t8,52(sp)
     fa4:	0007c900 	sll	t9,a3,0x4
     fa8:	0327c821 	addu	t9,t9,a3
     fac:	0019c880 	sll	t9,t9,0x2
     fb0:	3c090001 	lui	t1,0x1
     fb4:	03194021 	addu	t0,t8,t9
     fb8:	01284821 	addu	t1,t1,t0
     fbc:	8d2917b4 	lw	t1,6068(t1)
     fc0:	3c018000 	lui	at,0x8000
     fc4:	3c050600 	lui	a1,0x600
     fc8:	01215021 	addu	t2,t1,at
     fcc:	3c010000 	lui	at,0x0
     fd0:	ac2a0018 	sw	t2,24(at)
     fd4:	24a55ffc 	addiu	a1,a1,24572
     fd8:	26040150 	addiu	a0,s0,336
     fdc:	0c000000 	jal	0 <func_808D6870>
     fe0:	24060000 	li	a2,0
     fe4:	10000005 	b	ffc <func_808D779C+0xd0>
     fe8:	8fbf001c 	lw	ra,28(sp)
     fec:	3c0b0000 	lui	t3,0x0
     ff0:	256b0000 	addiu	t3,t3,0
     ff4:	ae0b0194 	sw	t3,404(s0)
     ff8:	8fbf001c 	lw	ra,28(sp)
     ffc:	8fb00018 	lw	s0,24(sp)
    1000:	27bd0030 	addiu	sp,sp,48
    1004:	03e00008 	jr	ra
    1008:	00000000 	nop

0000100c <func_808D787C>:
    100c:	afa50004 	sw	a1,4(sp)
    1010:	30a500ff 	andi	a1,a1,0xff
    1014:	00057080 	sll	t6,a1,0x2
    1018:	01c57023 	subu	t6,t6,a1
    101c:	3c0f0000 	lui	t7,0x0
    1020:	25ef0000 	addiu	t7,t7,0
    1024:	000e7080 	sll	t6,t6,0x2
    1028:	01cf1021 	addu	v0,t6,t7
    102c:	84580000 	lh	t8,0(v0)
    1030:	44982000 	mtc1	t8,$f4
    1034:	00000000 	nop
    1038:	468021a0 	cvt.s.w	$f6,$f4
    103c:	e4860680 	swc1	$f6,1664(a0)
    1040:	84590002 	lh	t9,2(v0)
    1044:	44994000 	mtc1	t9,$f8
    1048:	00000000 	nop
    104c:	468042a0 	cvt.s.w	$f10,$f8
    1050:	e48a0684 	swc1	$f10,1668(a0)
    1054:	84480004 	lh	t0,4(v0)
    1058:	44888000 	mtc1	t0,$f16
    105c:	00000000 	nop
    1060:	468084a0 	cvt.s.w	$f18,$f16
    1064:	e4920688 	swc1	$f18,1672(a0)
    1068:	84490006 	lh	t1,6(v0)
    106c:	44892000 	mtc1	t1,$f4
    1070:	00000000 	nop
    1074:	468021a0 	cvt.s.w	$f6,$f4
    1078:	e486068c 	swc1	$f6,1676(a0)
    107c:	844a0008 	lh	t2,8(v0)
    1080:	448a4000 	mtc1	t2,$f8
    1084:	00000000 	nop
    1088:	468042a0 	cvt.s.w	$f10,$f8
    108c:	e48a0690 	swc1	$f10,1680(a0)
    1090:	844b000a 	lh	t3,10(v0)
    1094:	448b8000 	mtc1	t3,$f16
    1098:	00000000 	nop
    109c:	468084a0 	cvt.s.w	$f18,$f16
    10a0:	03e00008 	jr	ra
    10a4:	e4920694 	swc1	$f18,1684(a0)

000010a8 <func_808D7918>:
    10a8:	27bdff90 	addiu	sp,sp,-112
    10ac:	afbf003c 	sw	ra,60(sp)
    10b0:	afb00038 	sw	s0,56(sp)
    10b4:	a3a0006f 	sb	zero,111(sp)
    10b8:	8cae1c44 	lw	t6,7236(a1)
    10bc:	3c080001 	lui	t0,0x1
    10c0:	3c018000 	lui	at,0x8000
    10c4:	afae0068 	sw	t6,104(sp)
    10c8:	8c8f014c 	lw	t7,332(a0)
    10cc:	3c020000 	lui	v0,0x0
    10d0:	24420000 	addiu	v0,v0,0
    10d4:	000fc100 	sll	t8,t7,0x4
    10d8:	030fc021 	addu	t8,t8,t7
    10dc:	0018c080 	sll	t8,t8,0x2
    10e0:	00b8c821 	addu	t9,a1,t8
    10e4:	01194021 	addu	t0,t0,t9
    10e8:	8d0817b4 	lw	t0,6068(t0)
    10ec:	44805000 	mtc1	zero,$f10
    10f0:	00808025 	move	s0,a0
    10f4:	01014821 	addu	t1,t0,at
    10f8:	3c010000 	lui	at,0x0
    10fc:	ac290018 	sw	t1,24(at)
    1100:	3c01c000 	lui	at,0xc000
    1104:	44812000 	mtc1	at,$f4
    1108:	8c4a0000 	lw	t2,0(v0)
    110c:	3c013e80 	lui	at,0x3e80
    1110:	44813000 	mtc1	at,$f6
    1114:	e54416b0 	swc1	$f4,5808(t2)
    1118:	8c4b0000 	lw	t3,0(v0)
    111c:	3c01bf80 	lui	at,0xbf80
    1120:	44814000 	mtc1	at,$f8
    1124:	e56616b4 	swc1	$f6,5812(t3)
    1128:	8c4c0000 	lw	t4,0(v0)
    112c:	24840150 	addiu	a0,a0,336
    1130:	e58816b8 	swc1	$f8,5816(t4)
    1134:	8c4d0000 	lw	t5,0(v0)
    1138:	e5aa16d0 	swc1	$f10,5840(t5)
    113c:	8c8e0524 	lw	t6,1316(a0)
    1140:	25cf0001 	addiu	t7,t6,1
    1144:	ac8f0524 	sw	t7,1316(a0)
    1148:	afa50074 	sw	a1,116(sp)
    114c:	0c000000 	jal	0 <func_808D6870>
    1150:	afa4004c 	sw	a0,76(sp)
    1154:	96180678 	lhu	t8,1656(s0)
    1158:	2f010017 	sltiu	at,t8,23
    115c:	10200541 	beqz	at,2664 <L808D8ED4>
    1160:	0018c080 	sll	t8,t8,0x2
    1164:	3c010000 	lui	at,0x0
    1168:	00380821 	addu	at,at,t8
    116c:	8c380000 	lw	t8,0(at)
    1170:	03000008 	jr	t8
    1174:	00000000 	nop

00001178 <L808D79E8>:
    1178:	8fa20068 	lw	v0,104(sp)
    117c:	3c0143d7 	lui	at,0x43d7
    1180:	44800000 	mtc1	zero,$f0
    1184:	44818000 	mtc1	at,$f16
    1188:	8fa40074 	lw	a0,116(sp)
    118c:	3c0142e0 	lui	at,0x42e0
    1190:	44819000 	mtc1	at,$f18
    1194:	e4400024 	swc1	$f0,36(v0)
    1198:	e4400028 	swc1	$f0,40(v0)
    119c:	e450002c 	swc1	$f16,44(v0)
    11a0:	3c010000 	lui	at,0x0
    11a4:	e6000024 	swc1	$f0,36(s0)
    11a8:	e6120028 	swc1	$f18,40(s0)
    11ac:	c4240000 	lwc1	$f4,0(at)
    11b0:	3c010000 	lui	at,0x0
    11b4:	24851d64 	addiu	a1,a0,7524
    11b8:	e604002c 	swc1	$f4,44(s0)
    11bc:	c4260000 	lwc1	$f6,0(at)
    11c0:	a60000b6 	sh	zero,182(s0)
    11c4:	0c000000 	jal	0 <func_808D6870>
    11c8:	e60600bc 	swc1	$f6,188(s0)
    11cc:	8fa40074 	lw	a0,116(sp)
    11d0:	02002825 	move	a1,s0
    11d4:	0c000000 	jal	0 <func_808D6870>
    11d8:	24060008 	li	a2,8
    11dc:	0c000000 	jal	0 <func_808D6870>
    11e0:	8fa40074 	lw	a0,116(sp)
    11e4:	a602067a 	sh	v0,1658(s0)
    11e8:	8fa40074 	lw	a0,116(sp)
    11ec:	00002825 	move	a1,zero
    11f0:	0c000000 	jal	0 <func_808D6870>
    11f4:	24060001 	li	a2,1
    11f8:	8fa40074 	lw	a0,116(sp)
    11fc:	8605067a 	lh	a1,1658(s0)
    1200:	0c000000 	jal	0 <func_808D6870>
    1204:	24060007 	li	a2,7
    1208:	3c014270 	lui	at,0x4270
    120c:	44814000 	mtc1	at,$f8
    1210:	3c190000 	lui	t9,0x0
    1214:	24090011 	li	t1,17
    1218:	e60806f4 	swc1	$f8,1780(s0)
    121c:	97390ee2 	lhu	t9,3810(t9)
    1220:	240d0001 	li	t5,1
    1224:	02002025 	move	a0,s0
    1228:	33280100 	andi	t0,t9,0x100
    122c:	11000020 	beqz	t0,12b0 <L808D79E8+0x138>
    1230:	00002825 	move	a1,zero
    1234:	a6090678 	sh	t1,1656(s0)
    1238:	ae000674 	sw	zero,1652(s0)
    123c:	3c0141a0 	lui	at,0x41a0
    1240:	44815000 	mtc1	at,$f10
    1244:	8faa0068 	lw	t2,104(sp)
    1248:	3c050601 	lui	a1,0x601
    124c:	24a589f8 	addiu	a1,a1,-30216
    1250:	e54a002c 	swc1	$f10,44(t2)
    1254:	a200071a 	sb	zero,1818(s0)
    1258:	8fa4004c 	lw	a0,76(sp)
    125c:	0c000000 	jal	0 <func_808D6870>
    1260:	3c06c0a0 	lui	a2,0xc0a0
    1264:	3c01447a 	lui	at,0x447a
    1268:	44818000 	mtc1	at,$f16
    126c:	02002025 	move	a0,s0
    1270:	2405000b 	li	a1,11
    1274:	0c000000 	jal	0 <func_808D6870>
    1278:	e61001cc 	swc1	$f16,460(s0)
    127c:	24020002 	li	v0,2
    1280:	240b006e 	li	t3,110
    1284:	a2020198 	sb	v0,408(s0)
    1288:	a60b01ba 	sh	t3,442(s0)
    128c:	240c0140 	li	t4,320
    1290:	3c010000 	lui	at,0x0
    1294:	3c041000 	lui	a0,0x1000
    1298:	a42c1424 	sh	t4,5156(at)
    129c:	0c000000 	jal	0 <func_808D6870>
    12a0:	348400ff 	ori	a0,a0,0xff
    12a4:	8fa40074 	lw	a0,116(sp)
    12a8:	1000001b 	b	1318 <L808D79E8+0x1a0>
    12ac:	24841c24 	addiu	a0,a0,7204
    12b0:	0c000000 	jal	0 <func_808D6870>
    12b4:	a20d071a 	sb	t5,1818(s0)
    12b8:	8fa60074 	lw	a2,116(sp)
    12bc:	240e0001 	li	t6,1
    12c0:	a60e0678 	sh	t6,1656(s0)
    12c4:	3c01435c 	lui	at,0x435c
    12c8:	44812000 	mtc1	at,$f4
    12cc:	3c01c316 	lui	at,0xc316
    12d0:	44813000 	mtc1	at,$f6
    12d4:	44809000 	mtc1	zero,$f18
    12d8:	240f2000 	li	t7,8192
    12dc:	24c41c24 	addiu	a0,a2,7204
    12e0:	afa40050 	sw	a0,80(sp)
    12e4:	afaf0028 	sw	t7,40(sp)
    12e8:	afa00024 	sw	zero,36(sp)
    12ec:	afa00020 	sw	zero,32(sp)
    12f0:	afa0001c 	sw	zero,28(sp)
    12f4:	02002825 	move	a1,s0
    12f8:	24070179 	li	a3,377
    12fc:	e7a40014 	swc1	$f4,20(sp)
    1300:	e7a60018 	swc1	$f6,24(sp)
    1304:	0c000000 	jal	0 <func_808D6870>
    1308:	e7b20010 	swc1	$f18,16(sp)
    130c:	3c010000 	lui	at,0x0
    1310:	ac220000 	sw	v0,0(at)
    1314:	8fa40050 	lw	a0,80(sp)
    1318:	44800000 	mtc1	zero,$f0
    131c:	24180001 	li	t8,1
    1320:	afb80028 	sw	t8,40(sp)
    1324:	02002825 	move	a1,s0
    1328:	8fa60074 	lw	a2,116(sp)
    132c:	2407015e 	li	a3,350
    1330:	afa0001c 	sw	zero,28(sp)
    1334:	afa00020 	sw	zero,32(sp)
    1338:	afa00024 	sw	zero,36(sp)
    133c:	e7a00010 	swc1	$f0,16(sp)
    1340:	e7a00014 	swc1	$f0,20(sp)
    1344:	0c000000 	jal	0 <func_808D6870>
    1348:	e7a00018 	swc1	$f0,24(sp)
    134c:	3c014264 	lui	at,0x4264
    1350:	3c190000 	lui	t9,0x0
    1354:	8f390000 	lw	t9,0(t9)
    1358:	44814000 	mtc1	at,$f8
    135c:	00000000 	nop
    1360:	e72816ac 	swc1	$f8,5804(t9)

00001364 <L808D7BD4>:
    1364:	8e090674 	lw	t1,1652(s0)
    1368:	24080003 	li	t0,3
    136c:	24010046 	li	at,70
    1370:	152104bc 	bne	t1,at,2664 <L808D8ED4>
    1374:	a20801a0 	sb	t0,416(s0)
    1378:	240a0002 	li	t2,2
    137c:	a60a0678 	sh	t2,1656(s0)
    1380:	100004b8 	b	2664 <L808D8ED4>
    1384:	ae000674 	sw	zero,1652(s0)

00001388 <L808D7BF8>:
    1388:	02002025 	move	a0,s0
    138c:	0c000000 	jal	0 <func_808D6870>
    1390:	24050001 	li	a1,1
    1394:	8e030674 	lw	v1,1652(s0)
    1398:	2401000a 	li	at,10
    139c:	8fa40074 	lw	a0,116(sp)
    13a0:	14610004 	bne	v1,at,13b4 <L808D7BF8+0x2c>
    13a4:	02002825 	move	a1,s0
    13a8:	0c000000 	jal	0 <func_808D6870>
    13ac:	24060005 	li	a2,5
    13b0:	8e030674 	lw	v1,1652(s0)
    13b4:	2401000d 	li	at,13
    13b8:	14610007 	bne	v1,at,13d8 <L808D7BF8+0x50>
    13bc:	8fa40068 	lw	a0,104(sp)
    13c0:	8c8c0678 	lw	t4,1656(a0)
    13c4:	95850092 	lhu	a1,146(t4)
    13c8:	24a56816 	addiu	a1,a1,26646
    13cc:	0c000000 	jal	0 <func_808D6870>
    13d0:	30a5ffff 	andi	a1,a1,0xffff
    13d4:	8e030674 	lw	v1,1652(s0)
    13d8:	24010023 	li	at,35
    13dc:	146104a1 	bne	v1,at,2664 <L808D8ED4>
    13e0:	240d0003 	li	t5,3
    13e4:	3c014270 	lui	at,0x4270
    13e8:	44818000 	mtc1	at,$f16
    13ec:	3c014396 	lui	at,0x4396
    13f0:	44805000 	mtc1	zero,$f10
    13f4:	44819000 	mtc1	at,$f18
    13f8:	44802000 	mtc1	zero,$f4
    13fc:	a60d0678 	sh	t5,1656(s0)
    1400:	ae000674 	sw	zero,1652(s0)
    1404:	3c010000 	lui	at,0x0
    1408:	e6100684 	swc1	$f16,1668(s0)
    140c:	e60a0680 	swc1	$f10,1664(s0)
    1410:	e6120688 	swc1	$f18,1672(s0)
    1414:	e604068c 	swc1	$f4,1676(s0)
    1418:	c4260000 	lwc1	$f6,0(at)
    141c:	e6060704 	swc1	$f6,1796(s0)

00001420 <L808D7C90>:
    1420:	a20001a0 	sb	zero,416(s0)
    1424:	8fae0074 	lw	t6,116(sp)
    1428:	44804000 	mtc1	zero,$f8
    142c:	3c010001 	lui	at,0x1
    1430:	002e0821 	addu	at,at,t6
    1434:	e4280afc 	swc1	$f8,2812(at)
    1438:	0c000000 	jal	0 <func_808D6870>
    143c:	c60c0704 	lwc1	$f12,1796(s0)
    1440:	3c014396 	lui	at,0x4396
    1444:	44815000 	mtc1	at,$f10
    1448:	c6120684 	lwc1	$f18,1668(s0)
    144c:	c60c0704 	lwc1	$f12,1796(s0)
    1450:	460a0402 	mul.s	$f16,$f0,$f10
    1454:	46128100 	add.s	$f4,$f16,$f18
    1458:	0c000000 	jal	0 <func_808D6870>
    145c:	e6040690 	swc1	$f4,1680(s0)
    1460:	3c01c396 	lui	at,0xc396
    1464:	44813000 	mtc1	at,$f6
    1468:	c60a0688 	lwc1	$f10,1672(s0)
    146c:	3c063d4c 	lui	a2,0x3d4c
    1470:	46060202 	mul.s	$f8,$f0,$f6
    1474:	34c6cccd 	ori	a2,a2,0xcccd
    1478:	26040704 	addiu	a0,s0,1796
    147c:	3c053e80 	lui	a1,0x3e80
    1480:	8e0706b4 	lw	a3,1716(s0)
    1484:	460a4400 	add.s	$f16,$f8,$f10
    1488:	0c000000 	jal	0 <func_808D6870>
    148c:	e6100694 	swc1	$f16,1684(s0)
    1490:	3c053c23 	lui	a1,0x3c23
    1494:	3c0738d1 	lui	a3,0x38d1
    1498:	34e7b717 	ori	a3,a3,0xb717
    149c:	34a5d70a 	ori	a1,a1,0xd70a
    14a0:	260406b4 	addiu	a0,s0,1716
    14a4:	0c000000 	jal	0 <func_808D6870>
    14a8:	3c063f80 	lui	a2,0x3f80
    14ac:	8e0f0674 	lw	t7,1652(s0)
    14b0:	240100c8 	li	at,200
    14b4:	8fa40074 	lw	a0,116(sp)
    14b8:	15e1046a 	bne	t7,at,2664 <L808D8ED4>
    14bc:	02002825 	move	a1,s0
    14c0:	0c000000 	jal	0 <func_808D6870>
    14c4:	24060008 	li	a2,8
    14c8:	24180004 	li	t8,4
    14cc:	a6180678 	sh	t8,1656(s0)
    14d0:	02002025 	move	a0,s0
    14d4:	0c000000 	jal	0 <func_808D6870>
    14d8:	24050002 	li	a1,2
    14dc:	ae000674 	sw	zero,1652(s0)

000014e0 <L808D7D50>:
    14e0:	8e030674 	lw	v1,1652(s0)
    14e4:	2401000a 	li	at,10
    14e8:	24190004 	li	t9,4
    14ec:	10600004 	beqz	v1,1500 <L808D7D50+0x20>
    14f0:	24080023 	li	t0,35
    14f4:	10610002 	beq	v1,at,1500 <L808D7D50+0x20>
    14f8:	24010014 	li	at,20
    14fc:	1461000b 	bne	v1,at,152c <L808D7D50+0x4c>
    1500:	3c014288 	lui	at,0x4288
    1504:	44812000 	mtc1	at,$f4
    1508:	3c01430e 	lui	at,0x430e
    150c:	c6120684 	lwc1	$f18,1668(s0)
    1510:	44815000 	mtc1	at,$f10
    1514:	c6080688 	lwc1	$f8,1672(s0)
    1518:	46049180 	add.s	$f6,$f18,$f4
    151c:	8e030674 	lw	v1,1652(s0)
    1520:	460a4401 	sub.s	$f16,$f8,$f10
    1524:	e6060684 	swc1	$f6,1668(s0)
    1528:	e6100688 	swc1	$f16,1672(s0)
    152c:	2c610014 	sltiu	at,v1,20
    1530:	14200003 	bnez	at,1540 <L808D7D50+0x60>
    1534:	02002025 	move	a0,s0
    1538:	10000002 	b	1544 <L808D7D50+0x64>
    153c:	a21901a0 	sb	t9,416(s0)
    1540:	a20801a0 	sb	t0,416(s0)
    1544:	8e090674 	lw	t1,1652(s0)
    1548:	2401003c 	li	at,60
    154c:	55210446 	bnel	t1,at,2668 <L808D8ED4+0x4>
    1550:	8605067a 	lh	a1,1658(s0)
    1554:	0c000000 	jal	0 <func_808D6870>
    1558:	24050001 	li	a1,1
    155c:	240a0005 	li	t2,5
    1560:	a60a0678 	sh	t2,1656(s0)
    1564:	1000043f 	b	2664 <L808D8ED4>
    1568:	ae000674 	sw	zero,1652(s0)

0000156c <L808D7DDC>:
    156c:	8e030674 	lw	v1,1652(s0)
    1570:	240b0005 	li	t3,5
    1574:	a20b01a0 	sb	t3,416(s0)
    1578:	2c610032 	sltiu	at,v1,50
    157c:	10200007 	beqz	at,159c <L808D7DDC+0x30>
    1580:	8fac0074 	lw	t4,116(sp)
    1584:	3c013f80 	lui	at,0x3f80
    1588:	44819000 	mtc1	at,$f18
    158c:	3c010001 	lui	at,0x1
    1590:	002c0821 	addu	at,at,t4
    1594:	e4320afc 	swc1	$f18,2812(at)
    1598:	8e030674 	lw	v1,1652(s0)
    159c:	2401000a 	li	at,10
    15a0:	14610005 	bne	v1,at,15b8 <L808D7DDC+0x4c>
    15a4:	8fa40074 	lw	a0,116(sp)
    15a8:	02002825 	move	a1,s0
    15ac:	0c000000 	jal	0 <func_808D6870>
    15b0:	2406004b 	li	a2,75
    15b4:	8e030674 	lw	v1,1652(s0)
    15b8:	24010046 	li	at,70
    15bc:	14610429 	bne	v1,at,2664 <L808D8ED4>
    15c0:	02002025 	move	a0,s0
    15c4:	0c000000 	jal	0 <func_808D6870>
    15c8:	24050003 	li	a1,3
    15cc:	240d0006 	li	t5,6
    15d0:	240e0003 	li	t6,3
    15d4:	a60d0678 	sh	t5,1656(s0)
    15d8:	ae000674 	sw	zero,1652(s0)
    15dc:	10000421 	b	2664 <L808D8ED4>
    15e0:	a20e01a0 	sb	t6,416(s0)

000015e4 <L808D7E54>:
    15e4:	8e180674 	lw	t8,1652(s0)
    15e8:	240f0003 	li	t7,3
    15ec:	2401001e 	li	at,30
    15f0:	1701041c 	bne	t8,at,2664 <L808D8ED4>
    15f4:	a20f01a0 	sb	t7,416(s0)
    15f8:	24190007 	li	t9,7
    15fc:	a6190678 	sh	t9,1656(s0)
    1600:	ae000674 	sw	zero,1652(s0)
    1604:	02002025 	move	a0,s0
    1608:	0c000000 	jal	0 <func_808D6870>
    160c:	24050004 	li	a1,4
    1610:	3c014120 	lui	at,0x4120
    1614:	44812000 	mtc1	at,$f4
    1618:	3c01437f 	lui	at,0x437f
    161c:	44814000 	mtc1	at,$f8
    1620:	3c0142c8 	lui	at,0x42c8
    1624:	44803000 	mtc1	zero,$f6
    1628:	44815000 	mtc1	at,$f10
    162c:	a60001ae 	sh	zero,430(s0)
    1630:	240428c1 	li	a0,10433
    1634:	e60401e0 	swc1	$f4,480(s0)
    1638:	e60801d4 	swc1	$f8,468(s0)
    163c:	e60601d8 	swc1	$f6,472(s0)
    1640:	0c000000 	jal	0 <func_808D6870>
    1644:	e60a01dc 	swc1	$f10,476(s0)
    1648:	8fa80074 	lw	t0,116(sp)
    164c:	44808000 	mtc1	zero,$f16
    1650:	3c010001 	lui	at,0x1
    1654:	00280821 	addu	at,at,t0
    1658:	e4300afc 	swc1	$f16,2812(at)

0000165c <L808D7ECC>:
    165c:	24090006 	li	t1,6
    1660:	a20901a0 	sb	t1,416(s0)
    1664:	260401d8 	addiu	a0,s0,472
    1668:	3c05437f 	lui	a1,0x437f
    166c:	3c063f80 	lui	a2,0x3f80
    1670:	0c000000 	jal	0 <func_808D6870>
    1674:	3c074120 	lui	a3,0x4120
    1678:	3c053ecc 	lui	a1,0x3ecc
    167c:	3c073e99 	lui	a3,0x3e99
    1680:	34e7999a 	ori	a3,a3,0x999a
    1684:	34a5cccd 	ori	a1,a1,0xcccd
    1688:	260401e0 	addiu	a0,s0,480
    168c:	0c000000 	jal	0 <func_808D6870>
    1690:	3c063f80 	lui	a2,0x3f80
    1694:	3c074023 	lui	a3,0x4023
    1698:	34e73333 	ori	a3,a3,0x3333
    169c:	260401d4 	addiu	a0,s0,468
    16a0:	3c05432a 	lui	a1,0x432a
    16a4:	0c000000 	jal	0 <func_808D6870>
    16a8:	3c063f80 	lui	a2,0x3f80
    16ac:	260401dc 	addiu	a0,s0,476
    16b0:	3c054348 	lui	a1,0x4348
    16b4:	3c063f80 	lui	a2,0x3f80
    16b8:	0c000000 	jal	0 <func_808D6870>
    16bc:	3c074040 	lui	a3,0x4040
    16c0:	8e030674 	lw	v1,1652(s0)
    16c4:	240a0041 	li	t2,65
    16c8:	02002025 	move	a0,s0
    16cc:	2c61001e 	sltiu	at,v1,30
    16d0:	54200004 	bnezl	at,16e4 <L808D7ECC+0x88>
    16d4:	2401001e 	li	at,30
    16d8:	a20a01a0 	sb	t2,416(s0)
    16dc:	8e030674 	lw	v1,1652(s0)
    16e0:	2401001e 	li	at,30
    16e4:	14610006 	bne	v1,at,1700 <L808D7ECC+0xa4>
    16e8:	8fab0074 	lw	t3,116(sp)
    16ec:	3c013f80 	lui	at,0x3f80
    16f0:	44819000 	mtc1	at,$f18
    16f4:	3c010001 	lui	at,0x1
    16f8:	002b0821 	addu	at,at,t3
    16fc:	e4320afc 	swc1	$f18,2812(at)
    1700:	0c000000 	jal	0 <func_808D6870>
    1704:	24050004 	li	a1,4
    1708:	3c0140a0 	lui	at,0x40a0
    170c:	44813000 	mtc1	at,$f6
    1710:	c6040680 	lwc1	$f4,1664(s0)
    1714:	3c01c120 	lui	at,0xc120
    1718:	44818000 	mtc1	at,$f16
    171c:	46062200 	add.s	$f8,$f4,$f6
    1720:	3c014190 	lui	at,0x4190
    1724:	c60a0688 	lwc1	$f10,1672(s0)
    1728:	44813000 	mtc1	at,$f6
    172c:	c604068c 	lwc1	$f4,1676(s0)
    1730:	e6080680 	swc1	$f8,1664(s0)
    1734:	46105480 	add.s	$f18,$f10,$f16
    1738:	8e0c0674 	lw	t4,1652(s0)
    173c:	2401003c 	li	at,60
    1740:	46062200 	add.s	$f8,$f4,$f6
    1744:	e6120688 	swc1	$f18,1672(s0)
    1748:	240d0008 	li	t5,8
    174c:	158103c5 	bne	t4,at,2664 <L808D8ED4>
    1750:	e608068c 	swc1	$f8,1676(s0)
    1754:	a60d0678 	sh	t5,1656(s0)
    1758:	100003c2 	b	2664 <L808D8ED4>
    175c:	ae000674 	sw	zero,1652(s0)

00001760 <L808D7FD0>:
    1760:	240e0003 	li	t6,3
    1764:	a20e01a0 	sb	t6,416(s0)
    1768:	02002025 	move	a0,s0
    176c:	0c000000 	jal	0 <func_808D6870>
    1770:	24050005 	li	a1,5
    1774:	8e0f0674 	lw	t7,1652(s0)
    1778:	2401001e 	li	at,30
    177c:	24180009 	li	t8,9
    1780:	15e103b8 	bne	t7,at,2664 <L808D8ED4>
    1784:	02002825 	move	a1,s0
    1788:	a6180678 	sh	t8,1656(s0)
    178c:	ae000674 	sw	zero,1652(s0)
    1790:	8fa40074 	lw	a0,116(sp)
    1794:	0c000000 	jal	0 <func_808D6870>
    1798:	24060008 	li	a2,8
    179c:	3c190000 	lui	t9,0x0
    17a0:	8f390000 	lw	t9,0(t9)
    17a4:	3c014120 	lui	at,0x4120
    17a8:	44815000 	mtc1	at,$f10
    17ac:	3c01437f 	lui	at,0x437f
    17b0:	44819000 	mtc1	at,$f18
    17b4:	a32003c8 	sb	zero,968(t9)
    17b8:	3c0142c8 	lui	at,0x42c8
    17bc:	44808000 	mtc1	zero,$f16
    17c0:	44812000 	mtc1	at,$f4
    17c4:	24080001 	li	t0,1
    17c8:	a60801ae 	sh	t0,430(s0)
    17cc:	240428c1 	li	a0,10433
    17d0:	e60a01e0 	swc1	$f10,480(s0)
    17d4:	e61201d4 	swc1	$f18,468(s0)
    17d8:	e61001d8 	swc1	$f16,472(s0)
    17dc:	0c000000 	jal	0 <func_808D6870>
    17e0:	e60401dc 	swc1	$f4,476(s0)
    17e4:	8fa90074 	lw	t1,116(sp)
    17e8:	44803000 	mtc1	zero,$f6
    17ec:	3c010001 	lui	at,0x1
    17f0:	00290821 	addu	at,at,t1
    17f4:	e4260afc 	swc1	$f6,2812(at)

000017f8 <L808D8068>:
    17f8:	240a0007 	li	t2,7
    17fc:	a20a01a0 	sb	t2,416(s0)
    1800:	02002025 	move	a0,s0
    1804:	0c000000 	jal	0 <func_808D6870>
    1808:	24050006 	li	a1,6
    180c:	260401d8 	addiu	a0,s0,472
    1810:	3c05437f 	lui	a1,0x437f
    1814:	3c063f80 	lui	a2,0x3f80
    1818:	0c000000 	jal	0 <func_808D6870>
    181c:	3c074120 	lui	a3,0x4120
    1820:	3c053ecc 	lui	a1,0x3ecc
    1824:	3c073e99 	lui	a3,0x3e99
    1828:	34e7999a 	ori	a3,a3,0x999a
    182c:	34a5cccd 	ori	a1,a1,0xcccd
    1830:	260401e0 	addiu	a0,s0,480
    1834:	0c000000 	jal	0 <func_808D6870>
    1838:	3c063f80 	lui	a2,0x3f80
    183c:	3c074023 	lui	a3,0x4023
    1840:	34e73333 	ori	a3,a3,0x3333
    1844:	260401d4 	addiu	a0,s0,468
    1848:	3c05432a 	lui	a1,0x432a
    184c:	0c000000 	jal	0 <func_808D6870>
    1850:	3c063f80 	lui	a2,0x3f80
    1854:	260401dc 	addiu	a0,s0,476
    1858:	3c054348 	lui	a1,0x4348
    185c:	3c063f80 	lui	a2,0x3f80
    1860:	0c000000 	jal	0 <func_808D6870>
    1864:	3c074040 	lui	a3,0x4040
    1868:	8e030674 	lw	v1,1652(s0)
    186c:	2401001e 	li	at,30
    1870:	3c0c0000 	lui	t4,0x0
    1874:	14610005 	bne	v1,at,188c <L808D8068+0x94>
    1878:	240d004b 	li	t5,75
    187c:	8d8c0000 	lw	t4,0(t4)
    1880:	240b0001 	li	t3,1
    1884:	a18b03c8 	sb	t3,968(t4)
    1888:	8e030674 	lw	v1,1652(s0)
    188c:	2c610020 	sltiu	at,v1,32
    1890:	14200003 	bnez	at,18a0 <L808D8068+0xa8>
    1894:	240f000a 	li	t7,10
    1898:	a20d01a0 	sb	t5,416(s0)
    189c:	8e030674 	lw	v1,1652(s0)
    18a0:	24010020 	li	at,32
    18a4:	14610007 	bne	v1,at,18c4 <L808D8068+0xcc>
    18a8:	8fae0074 	lw	t6,116(sp)
    18ac:	3c013f80 	lui	at,0x3f80
    18b0:	44814000 	mtc1	at,$f8
    18b4:	3c010001 	lui	at,0x1
    18b8:	002e0821 	addu	at,at,t6
    18bc:	e4280afc 	swc1	$f8,2812(at)
    18c0:	8e030674 	lw	v1,1652(s0)
    18c4:	24010032 	li	at,50
    18c8:	54610367 	bnel	v1,at,2668 <L808D8ED4+0x4>
    18cc:	8605067a 	lh	a1,1658(s0)
    18d0:	a60f0678 	sh	t7,1656(s0)
    18d4:	10000363 	b	2664 <L808D8ED4>
    18d8:	ae000674 	sw	zero,1652(s0)

000018dc <L808D814C>:
    18dc:	24180003 	li	t8,3
    18e0:	a21801a0 	sb	t8,416(s0)
    18e4:	02002025 	move	a0,s0
    18e8:	0c000000 	jal	0 <func_808D6870>
    18ec:	24050007 	li	a1,7
    18f0:	8e190674 	lw	t9,1652(s0)
    18f4:	24010028 	li	at,40
    18f8:	2408000b 	li	t0,11
    18fc:	5721035a 	bnel	t9,at,2668 <L808D8ED4+0x4>
    1900:	8605067a 	lh	a1,1658(s0)
    1904:	44805000 	mtc1	zero,$f10
    1908:	a6080678 	sh	t0,1656(s0)
    190c:	ae000674 	sw	zero,1652(s0)
    1910:	10000354 	b	2664 <L808D8ED4>
    1914:	e60a01d8 	swc1	$f10,472(s0)

00001918 <L808D8188>:
    1918:	24090003 	li	t1,3
    191c:	a20901a0 	sb	t1,416(s0)
    1920:	02002025 	move	a0,s0
    1924:	0c000000 	jal	0 <func_808D6870>
    1928:	24050008 	li	a1,8
    192c:	3c0141a0 	lui	at,0x41a0
    1930:	44818000 	mtc1	at,$f16
    1934:	8faa0068 	lw	t2,104(sp)
    1938:	24010014 	li	at,20
    193c:	02002825 	move	a1,s0
    1940:	e550002c 	swc1	$f16,44(t2)
    1944:	8e030674 	lw	v1,1652(s0)
    1948:	8fa40074 	lw	a0,116(sp)
    194c:	54610007 	bnel	v1,at,196c <L808D8188+0x54>
    1950:	24010019 	li	at,25
    1954:	0c000000 	jal	0 <func_808D6870>
    1958:	24060017 	li	a2,23
    195c:	0c000000 	jal	0 <func_808D6870>
    1960:	2404000b 	li	a0,11
    1964:	8e030674 	lw	v1,1652(s0)
    1968:	24010019 	li	at,25
    196c:	14610004 	bne	v1,at,1980 <L808D8188+0x68>
    1970:	240b0140 	li	t3,320
    1974:	3c010000 	lui	at,0x0
    1978:	a42b1424 	sh	t3,5156(at)
    197c:	8e030674 	lw	v1,1652(s0)
    1980:	24010064 	li	at,100
    1984:	54610005 	bnel	v1,at,199c <L808D8188+0x84>
    1988:	24010078 	li	at,120
    198c:	0c000000 	jal	0 <func_808D6870>
    1990:	24040001 	li	a0,1
    1994:	8e030674 	lw	v1,1652(s0)
    1998:	24010078 	li	at,120
    199c:	14610331 	bne	v1,at,2664 <L808D8ED4>
    19a0:	240c000c 	li	t4,12
    19a4:	a60c0678 	sh	t4,1656(s0)
    19a8:	1000032e 	b	2664 <L808D8ED4>
    19ac:	ae000674 	sw	zero,1652(s0)

000019b0 <L808D8220>:
    19b0:	240d0003 	li	t5,3
    19b4:	a20d01a0 	sb	t5,416(s0)
    19b8:	02002025 	move	a0,s0
    19bc:	0c000000 	jal	0 <func_808D6870>
    19c0:	24050009 	li	a1,9
    19c4:	8e030674 	lw	v1,1652(s0)
    19c8:	2401001e 	li	at,30
    19cc:	3c041001 	lui	a0,0x1001
    19d0:	54610010 	bnel	v1,at,1a14 <L808D8220+0x64>
    19d4:	2c61001f 	sltiu	at,v1,31
    19d8:	0c000000 	jal	0 <func_808D6870>
    19dc:	348400ff 	ori	a0,a0,0xff
    19e0:	3c040600 	lui	a0,0x600
    19e4:	0c000000 	jal	0 <func_808D6870>
    19e8:	24844f64 	addiu	a0,a0,20324
    19ec:	44829000 	mtc1	v0,$f18
    19f0:	3c050600 	lui	a1,0x600
    19f4:	24a54f64 	addiu	a1,a1,20324
    19f8:	46809120 	cvt.s.w	$f4,$f18
    19fc:	3c06c0a0 	lui	a2,0xc0a0
    1a00:	e60401cc 	swc1	$f4,460(s0)
    1a04:	0c000000 	jal	0 <func_808D6870>
    1a08:	8fa4004c 	lw	a0,76(sp)
    1a0c:	8e030674 	lw	v1,1652(s0)
    1a10:	2c61001f 	sltiu	at,v1,31
    1a14:	1420000d 	bnez	at,1a4c <L808D8220+0x9c>
    1a18:	8fa4004c 	lw	a0,76(sp)
    1a1c:	0c000000 	jal	0 <func_808D6870>
    1a20:	8e0501cc 	lw	a1,460(s0)
    1a24:	10400009 	beqz	v0,1a4c <L808D8220+0x9c>
    1a28:	8fa4004c 	lw	a0,76(sp)
    1a2c:	3c050600 	lui	a1,0x600
    1a30:	24a56af4 	addiu	a1,a1,27380
    1a34:	0c000000 	jal	0 <func_808D6870>
    1a38:	24060000 	li	a2,0
    1a3c:	3c01447a 	lui	at,0x447a
    1a40:	44813000 	mtc1	at,$f6
    1a44:	00000000 	nop
    1a48:	e60601cc 	swc1	$f6,460(s0)
    1a4c:	8e030674 	lw	v1,1652(s0)
    1a50:	24010050 	li	at,80
    1a54:	8fa40074 	lw	a0,116(sp)
    1a58:	14610004 	bne	v1,at,1a6c <L808D8220+0xbc>
    1a5c:	240570c8 	li	a1,28872
    1a60:	0c000000 	jal	0 <func_808D6870>
    1a64:	00003025 	move	a2,zero
    1a68:	8e030674 	lw	v1,1652(s0)
    1a6c:	2c6100b5 	sltiu	at,v1,181
    1a70:	142002fc 	bnez	at,2664 <L808D8ED4>
    1a74:	8fa40074 	lw	a0,116(sp)
    1a78:	0c000000 	jal	0 <func_808D6870>
    1a7c:	248420d8 	addiu	a0,a0,8408
    1a80:	144002f8 	bnez	v0,2664 <L808D8ED4>
    1a84:	240e000f 	li	t6,15
    1a88:	a60e0678 	sh	t6,1656(s0)
    1a8c:	ae000674 	sw	zero,1652(s0)
    1a90:	100002f4 	b	2664 <L808D8ED4>
    1a94:	a200071a 	sb	zero,1818(s0)

00001a98 <L808D8308>:
    1a98:	a20001a0 	sb	zero,416(s0)
    1a9c:	8faf0074 	lw	t7,116(sp)
    1aa0:	44804000 	mtc1	zero,$f8
    1aa4:	3c010001 	lui	at,0x1
    1aa8:	002f0821 	addu	at,at,t7
    1aac:	02002025 	move	a0,s0
    1ab0:	2405000a 	li	a1,10
    1ab4:	0c000000 	jal	0 <func_808D6870>
    1ab8:	e4280afc 	swc1	$f8,2812(at)
    1abc:	8e030674 	lw	v1,1652(s0)
    1ac0:	2401001e 	li	at,30
    1ac4:	8fa40074 	lw	a0,116(sp)
    1ac8:	14610004 	bne	v1,at,1adc <L808D8308+0x44>
    1acc:	240570c9 	li	a1,28873
    1ad0:	0c000000 	jal	0 <func_808D6870>
    1ad4:	00003025 	move	a2,zero
    1ad8:	8e030674 	lw	v1,1652(s0)
    1adc:	2c610065 	sltiu	at,v1,101
    1ae0:	142002e0 	bnez	at,2664 <L808D8ED4>
    1ae4:	8fa40074 	lw	a0,116(sp)
    1ae8:	0c000000 	jal	0 <func_808D6870>
    1aec:	248420d8 	addiu	a0,a0,8408
    1af0:	144002dc 	bnez	v0,2664 <L808D8ED4>
    1af4:	24180010 	li	t8,16
    1af8:	a6180678 	sh	t8,1656(s0)
    1afc:	ae000674 	sw	zero,1652(s0)
    1b00:	02002025 	move	a0,s0
    1b04:	0c000000 	jal	0 <func_808D6870>
    1b08:	2405000b 	li	a1,11
    1b0c:	24020002 	li	v0,2
    1b10:	a2020198 	sb	v0,408(s0)
    1b14:	3c190000 	lui	t9,0x0
    1b18:	8f390000 	lw	t9,0(t9)
    1b1c:	2408006e 	li	t0,110
    1b20:	24090003 	li	t1,3
    1b24:	a32203c8 	sb	v0,968(t9)
    1b28:	a60801ba 	sh	t0,442(s0)
    1b2c:	100002cd 	b	2664 <L808D8ED4>
    1b30:	a20901a0 	sb	t1,416(s0)

00001b34 <L808D83A4>:
    1b34:	8e030674 	lw	v1,1652(s0)
    1b38:	240a0003 	li	t2,3
    1b3c:	a20a01a0 	sb	t2,416(s0)
    1b40:	2c610015 	sltiu	at,v1,21
    1b44:	10200010 	beqz	at,1b88 <L808D83A4+0x54>
    1b48:	8fa4004c 	lw	a0,76(sp)
    1b4c:	24010014 	li	at,20
    1b50:	1461001d 	bne	v1,at,1bc8 <L808D83A4+0x94>
    1b54:	8fa4004c 	lw	a0,76(sp)
    1b58:	3c050600 	lui	a1,0x600
    1b5c:	24a54304 	addiu	a1,a1,17156
    1b60:	0c000000 	jal	0 <func_808D6870>
    1b64:	3c06c0a0 	lui	a2,0xc0a0
    1b68:	3c040600 	lui	a0,0x600
    1b6c:	0c000000 	jal	0 <func_808D6870>
    1b70:	24844304 	addiu	a0,a0,17156
    1b74:	44825000 	mtc1	v0,$f10
    1b78:	00000000 	nop
    1b7c:	46805420 	cvt.s.w	$f16,$f10
    1b80:	10000011 	b	1bc8 <L808D83A4+0x94>
    1b84:	e61001cc 	swc1	$f16,460(s0)
    1b88:	0c000000 	jal	0 <func_808D6870>
    1b8c:	8e0501cc 	lw	a1,460(s0)
    1b90:	1040000d 	beqz	v0,1bc8 <L808D83A4+0x94>
    1b94:	8fa40074 	lw	a0,116(sp)
    1b98:	240570ca 	li	a1,28874
    1b9c:	0c000000 	jal	0 <func_808D6870>
    1ba0:	00003025 	move	a2,zero
    1ba4:	3c050601 	lui	a1,0x601
    1ba8:	24a589f8 	addiu	a1,a1,-30216
    1bac:	8fa4004c 	lw	a0,76(sp)
    1bb0:	0c000000 	jal	0 <func_808D6870>
    1bb4:	3c06c0a0 	lui	a2,0xc0a0
    1bb8:	3c01447a 	lui	at,0x447a
    1bbc:	44819000 	mtc1	at,$f18
    1bc0:	00000000 	nop
    1bc4:	e61201cc 	swc1	$f18,460(s0)
    1bc8:	8e0b0674 	lw	t3,1652(s0)
    1bcc:	8fa40074 	lw	a0,116(sp)
    1bd0:	2d610065 	sltiu	at,t3,101
    1bd4:	542002a4 	bnezl	at,2668 <L808D8ED4+0x4>
    1bd8:	8605067a 	lh	a1,1658(s0)
    1bdc:	0c000000 	jal	0 <func_808D6870>
    1be0:	248420d8 	addiu	a0,a0,8408
    1be4:	1440029f 	bnez	v0,2664 <L808D8ED4>
    1be8:	240c0011 	li	t4,17
    1bec:	a60c0678 	sh	t4,1656(s0)
    1bf0:	1000029c 	b	2664 <L808D8ED4>
    1bf4:	ae000674 	sw	zero,1652(s0)

00001bf8 <L808D8468>:
    1bf8:	8e030674 	lw	v1,1652(s0)
    1bfc:	240d0003 	li	t5,3
    1c00:	24010014 	li	at,20
    1c04:	1461000d 	bne	v1,at,1c3c <L808D8468+0x44>
    1c08:	a20d01a0 	sb	t5,416(s0)
    1c0c:	3c050600 	lui	a1,0x600
    1c10:	24a51f58 	addiu	a1,a1,8024
    1c14:	8fa4004c 	lw	a0,76(sp)
    1c18:	0c000000 	jal	0 <func_808D6870>
    1c1c:	3c06c0a0 	lui	a2,0xc0a0
    1c20:	3c040600 	lui	a0,0x600
    1c24:	0c000000 	jal	0 <func_808D6870>
    1c28:	24841f58 	addiu	a0,a0,8024
    1c2c:	44822000 	mtc1	v0,$f4
    1c30:	8e030674 	lw	v1,1652(s0)
    1c34:	468021a0 	cvt.s.w	$f6,$f4
    1c38:	e60601cc 	swc1	$f6,460(s0)
    1c3c:	2c61000b 	sltiu	at,v1,11
    1c40:	14200288 	bnez	at,2664 <L808D8ED4>
    1c44:	2401003e 	li	at,62
    1c48:	14610006 	bne	v1,at,1c64 <L808D8468+0x6c>
    1c4c:	3c0e0000 	lui	t6,0x0
    1c50:	3c0141a0 	lui	at,0x41a0
    1c54:	44814000 	mtc1	at,$f8
    1c58:	8dce0000 	lw	t6,0(t6)
    1c5c:	e5c816bc 	swc1	$f8,5820(t6)
    1c60:	8e030674 	lw	v1,1652(s0)
    1c64:	24010039 	li	at,57
    1c68:	14610003 	bne	v1,at,1c78 <L808D8468+0x80>
    1c6c:	02002025 	move	a0,s0
    1c70:	0c000000 	jal	0 <func_808D6870>
    1c74:	240528c7 	li	a1,10439
    1c78:	c60006ec 	lwc1	$f0,1772(s0)
    1c7c:	3c063dcc 	lui	a2,0x3dcc
    1c80:	34c6cccd 	ori	a2,a2,0xcccd
    1c84:	46000280 	add.s	$f10,$f0,$f0
    1c88:	260406f4 	addiu	a0,s0,1780
    1c8c:	3c0542dc 	lui	a1,0x42dc
    1c90:	44075000 	mfc1	a3,$f10
    1c94:	0c000000 	jal	0 <func_808D6870>
    1c98:	00000000 	nop
    1c9c:	3c010000 	lui	at,0x0
    1ca0:	c4320000 	lwc1	$f18,0(at)
    1ca4:	c61006ec 	lwc1	$f16,1772(s0)
    1ca8:	3c063dcc 	lui	a2,0x3dcc
    1cac:	34c6cccd 	ori	a2,a2,0xcccd
    1cb0:	46128102 	mul.s	$f4,$f16,$f18
    1cb4:	26040688 	addiu	a0,s0,1672
    1cb8:	3c05c391 	lui	a1,0xc391
    1cbc:	44072000 	mfc1	a3,$f4
    1cc0:	0c000000 	jal	0 <func_808D6870>
    1cc4:	00000000 	nop
    1cc8:	3c073d4c 	lui	a3,0x3d4c
    1ccc:	34e7cccd 	ori	a3,a3,0xcccd
    1cd0:	260406ec 	addiu	a0,s0,1772
    1cd4:	3c053f40 	lui	a1,0x3f40
    1cd8:	0c000000 	jal	0 <func_808D6870>
    1cdc:	3c063f80 	lui	a2,0x3f80
    1ce0:	8e0f0674 	lw	t7,1652(s0)
    1ce4:	24010046 	li	at,70
    1ce8:	24180012 	li	t8,18
    1cec:	15e1025d 	bne	t7,at,2664 <L808D8ED4>
    1cf0:	02002025 	move	a0,s0
    1cf4:	3c014270 	lui	at,0x4270
    1cf8:	44813000 	mtc1	at,$f6
    1cfc:	a6180678 	sh	t8,1656(s0)
    1d00:	ae000674 	sw	zero,1652(s0)
    1d04:	2405000c 	li	a1,12
    1d08:	0c000000 	jal	0 <func_808D6870>
    1d0c:	e60606f4 	swc1	$f6,1780(s0)
    1d10:	8fa40074 	lw	a0,116(sp)
    1d14:	240570cb 	li	a1,28875
    1d18:	0c000000 	jal	0 <func_808D6870>
    1d1c:	00003025 	move	a2,zero
    1d20:	10000251 	b	2668 <L808D8ED4+0x4>
    1d24:	8605067a 	lh	a1,1658(s0)

00001d28 <L808D8598>:
    1d28:	24190003 	li	t9,3
    1d2c:	a21901a0 	sb	t9,416(s0)
    1d30:	02002025 	move	a0,s0
    1d34:	0c000000 	jal	0 <func_808D6870>
    1d38:	2405000c 	li	a1,12
    1d3c:	3c01c0c0 	lui	at,0xc0c0
    1d40:	44815000 	mtc1	at,$f10
    1d44:	c6080684 	lwc1	$f8,1668(s0)
    1d48:	3c0140c0 	lui	at,0x40c0
    1d4c:	44812000 	mtc1	at,$f4
    1d50:	460a4400 	add.s	$f16,$f8,$f10
    1d54:	3c0140a0 	lui	at,0x40a0
    1d58:	c6120688 	lwc1	$f18,1672(s0)
    1d5c:	44815000 	mtc1	at,$f10
    1d60:	c60801cc 	lwc1	$f8,460(s0)
    1d64:	e6100684 	swc1	$f16,1668(s0)
    1d68:	46049180 	add.s	$f6,$f18,$f4
    1d6c:	460a4401 	sub.s	$f16,$f8,$f10
    1d70:	e6060688 	swc1	$f6,1672(s0)
    1d74:	8fa4004c 	lw	a0,76(sp)
    1d78:	44058000 	mfc1	a1,$f16
    1d7c:	0c000000 	jal	0 <func_808D6870>
    1d80:	00000000 	nop
    1d84:	10400009 	beqz	v0,1dac <L808D8598+0x84>
    1d88:	8fa4004c 	lw	a0,76(sp)
    1d8c:	3c050600 	lui	a1,0x600
    1d90:	24a53018 	addiu	a1,a1,12312
    1d94:	0c000000 	jal	0 <func_808D6870>
    1d98:	3c06c0a0 	lui	a2,0xc0a0
    1d9c:	3c01447a 	lui	at,0x447a
    1da0:	44819000 	mtc1	at,$f18
    1da4:	00000000 	nop
    1da8:	e61201cc 	swc1	$f18,460(s0)
    1dac:	8e080674 	lw	t0,1652(s0)
    1db0:	8fa40074 	lw	a0,116(sp)
    1db4:	2d010033 	sltiu	at,t0,51
    1db8:	5420022b 	bnezl	at,2668 <L808D8ED4+0x4>
    1dbc:	8605067a 	lh	a1,1658(s0)
    1dc0:	0c000000 	jal	0 <func_808D6870>
    1dc4:	248420d8 	addiu	a0,a0,8408
    1dc8:	14400226 	bnez	v0,2664 <L808D8ED4>
    1dcc:	24090013 	li	t1,19
    1dd0:	a6090678 	sh	t1,1656(s0)
    1dd4:	ae000674 	sw	zero,1652(s0)
    1dd8:	8fa40074 	lw	a0,116(sp)
    1ddc:	240570cc 	li	a1,28876
    1de0:	0c000000 	jal	0 <func_808D6870>
    1de4:	00003025 	move	a2,zero
    1de8:	3c050600 	lui	a1,0x600
    1dec:	24a57268 	addiu	a1,a1,29288
    1df0:	8fa4004c 	lw	a0,76(sp)
    1df4:	0c000000 	jal	0 <func_808D6870>
    1df8:	3c06c0a0 	lui	a2,0xc0a0
    1dfc:	3c014120 	lui	at,0x4120
    1e00:	44812000 	mtc1	at,$f4
    1e04:	3c01437f 	lui	at,0x437f
    1e08:	44814000 	mtc1	at,$f8
    1e0c:	3c0142c8 	lui	at,0x42c8
    1e10:	44803000 	mtc1	zero,$f6
    1e14:	44815000 	mtc1	at,$f10
    1e18:	240a0002 	li	t2,2
    1e1c:	a60a01ae 	sh	t2,430(s0)
    1e20:	e60401e0 	swc1	$f4,480(s0)
    1e24:	e60801d4 	swc1	$f8,468(s0)
    1e28:	e60601d8 	swc1	$f6,472(s0)
    1e2c:	e60a01dc 	swc1	$f10,476(s0)
    1e30:	8fab0074 	lw	t3,116(sp)
    1e34:	44808000 	mtc1	zero,$f16
    1e38:	3c010001 	lui	at,0x1
    1e3c:	002b0821 	addu	at,at,t3
    1e40:	e4300afc 	swc1	$f16,2812(at)

00001e44 <L808D86B4>:
    1e44:	8e030674 	lw	v1,1652(s0)
    1e48:	240c0008 	li	t4,8
    1e4c:	a20c01a0 	sb	t4,416(s0)
    1e50:	2c61003c 	sltiu	at,v1,60
    1e54:	1420000b 	bnez	at,1e84 <L808D86B4+0x40>
    1e58:	02002025 	move	a0,s0
    1e5c:	240d0009 	li	t5,9
    1e60:	2401003c 	li	at,60
    1e64:	14610007 	bne	v1,at,1e84 <L808D86B4+0x40>
    1e68:	a20d01a0 	sb	t5,416(s0)
    1e6c:	3c013f80 	lui	at,0x3f80
    1e70:	44819000 	mtc1	at,$f18
    1e74:	8fae0074 	lw	t6,116(sp)
    1e78:	3c010001 	lui	at,0x1
    1e7c:	002e0821 	addu	at,at,t6
    1e80:	e4320afc 	swc1	$f18,2812(at)
    1e84:	0c000000 	jal	0 <func_808D6870>
    1e88:	2405000c 	li	a1,12
    1e8c:	3c01c0c0 	lui	at,0xc0c0
    1e90:	44813000 	mtc1	at,$f6
    1e94:	3c0140c0 	lui	at,0x40c0
    1e98:	c6040684 	lwc1	$f4,1668(s0)
    1e9c:	44818000 	mtc1	at,$f16
    1ea0:	c60a0688 	lwc1	$f10,1672(s0)
    1ea4:	8e030674 	lw	v1,1652(s0)
    1ea8:	46062200 	add.s	$f8,$f4,$f6
    1eac:	2c61001e 	sltiu	at,v1,30
    1eb0:	46105480 	add.s	$f18,$f10,$f16
    1eb4:	e6080684 	swc1	$f8,1668(s0)
    1eb8:	1420001e 	bnez	at,1f34 <L808D86B4+0xf0>
    1ebc:	e6120688 	swc1	$f18,1672(s0)
    1ec0:	2401001e 	li	at,30
    1ec4:	54610004 	bnel	v1,at,1ed8 <L808D86B4+0x94>
    1ec8:	260401d8 	addiu	a0,s0,472
    1ecc:	0c000000 	jal	0 <func_808D6870>
    1ed0:	240428c1 	li	a0,10433
    1ed4:	260401d8 	addiu	a0,s0,472
    1ed8:	3c05437f 	lui	a1,0x437f
    1edc:	3c063f80 	lui	a2,0x3f80
    1ee0:	0c000000 	jal	0 <func_808D6870>
    1ee4:	3c074120 	lui	a3,0x4120
    1ee8:	3c053f19 	lui	a1,0x3f19
    1eec:	3c073e99 	lui	a3,0x3e99
    1ef0:	34e7999a 	ori	a3,a3,0x999a
    1ef4:	34a5999a 	ori	a1,a1,0x999a
    1ef8:	260401e0 	addiu	a0,s0,480
    1efc:	0c000000 	jal	0 <func_808D6870>
    1f00:	3c063f80 	lui	a2,0x3f80
    1f04:	3c074023 	lui	a3,0x4023
    1f08:	34e73333 	ori	a3,a3,0x3333
    1f0c:	260401d4 	addiu	a0,s0,468
    1f10:	3c05432a 	lui	a1,0x432a
    1f14:	0c000000 	jal	0 <func_808D6870>
    1f18:	3c063f80 	lui	a2,0x3f80
    1f1c:	260401dc 	addiu	a0,s0,476
    1f20:	3c054348 	lui	a1,0x4348
    1f24:	3c063f80 	lui	a2,0x3f80
    1f28:	0c000000 	jal	0 <func_808D6870>
    1f2c:	3c074040 	lui	a3,0x4040
    1f30:	8e030674 	lw	v1,1652(s0)
    1f34:	24010011 	li	at,17
    1f38:	14610006 	bne	v1,at,1f54 <L808D86B4+0x110>
    1f3c:	8fa4004c 	lw	a0,76(sp)
    1f40:	3c050600 	lui	a1,0x600
    1f44:	24a57a64 	addiu	a1,a1,31332
    1f48:	0c000000 	jal	0 <func_808D6870>
    1f4c:	3c06c0a0 	lui	a2,0xc0a0
    1f50:	8e030674 	lw	v1,1652(s0)
    1f54:	2c610051 	sltiu	at,v1,81
    1f58:	142001c2 	bnez	at,2664 <L808D8ED4>
    1f5c:	8fa40074 	lw	a0,116(sp)
    1f60:	0c000000 	jal	0 <func_808D6870>
    1f64:	248420d8 	addiu	a0,a0,8408
    1f68:	144001be 	bnez	v0,2664 <L808D8ED4>
    1f6c:	3c0143c8 	lui	at,0x43c8
    1f70:	44810000 	mtc1	at,$f0
    1f74:	3c0142c8 	lui	at,0x42c8
    1f78:	44816000 	mtc1	at,$f12
    1f7c:	3c014248 	lui	at,0x4248
    1f80:	44817000 	mtc1	at,$f14
    1f84:	c6040680 	lwc1	$f4,1664(s0)
    1f88:	c6080684 	lwc1	$f8,1668(s0)
    1f8c:	c6100688 	lwc1	$f16,1672(s0)
    1f90:	460e2181 	sub.s	$f6,$f4,$f14
    1f94:	c604068c 	lwc1	$f4,1676(s0)
    1f98:	44801000 	mtc1	zero,$f2
    1f9c:	460c4281 	sub.s	$f10,$f8,$f12
    1fa0:	e60606bc 	swc1	$f6,1724(s0)
    1fa4:	c6080690 	lwc1	$f8,1680(s0)
    1fa8:	46008480 	add.s	$f18,$f16,$f0
    1fac:	e60a06c0 	swc1	$f10,1728(s0)
    1fb0:	c60a0694 	lwc1	$f10,1684(s0)
    1fb4:	46002180 	add.s	$f6,$f4,$f0
    1fb8:	240f0014 	li	t7,20
    1fbc:	a60f0678 	sh	t7,1656(s0)
    1fc0:	ae000674 	sw	zero,1652(s0)
    1fc4:	e61206c4 	swc1	$f18,1732(s0)
    1fc8:	e60606d4 	swc1	$f6,1748(s0)
    1fcc:	3c010000 	lui	at,0x0
    1fd0:	e60006ac 	swc1	$f0,1708(s0)
    1fd4:	e60006b0 	swc1	$f0,1712(s0)
    1fd8:	e60c06a8 	swc1	$f12,1704(s0)
    1fdc:	e60e06a4 	swc1	$f14,1700(s0)
    1fe0:	e60206ec 	swc1	$f2,1772(s0)
    1fe4:	e60806d8 	swc1	$f8,1752(s0)
    1fe8:	e60a06dc 	swc1	$f10,1756(s0)
    1fec:	c4300000 	lwc1	$f16,0(at)
    1ff0:	3c010000 	lui	at,0x0
    1ff4:	e60201e4 	swc1	$f2,484(s0)
    1ff8:	e61006f0 	swc1	$f16,1776(s0)
    1ffc:	c4320000 	lwc1	$f18,0(at)
    2000:	02002025 	move	a0,s0
    2004:	240539d5 	li	a1,14805
    2008:	0c000000 	jal	0 <func_808D6870>
    200c:	e61201e8 	swc1	$f18,488(s0)
    2010:	10000195 	b	2668 <L808D8ED4+0x4>
    2014:	8605067a 	lh	a1,1658(s0)

00002018 <L808D8888>:
    2018:	2418000a 	li	t8,10
    201c:	a21801a0 	sb	t8,416(s0)
    2020:	24190001 	li	t9,1
    2024:	3c053e19 	lui	a1,0x3e19
    2028:	3c073c75 	lui	a3,0x3c75
    202c:	a3b9006f 	sb	t9,111(sp)
    2030:	34e7c28f 	ori	a3,a3,0xc28f
    2034:	34a5999a 	ori	a1,a1,0x999a
    2038:	260406ec 	addiu	a0,s0,1772
    203c:	0c000000 	jal	0 <func_808D6870>
    2040:	3c063f80 	lui	a2,0x3f80
    2044:	8e030674 	lw	v1,1652(s0)
    2048:	260401e4 	addiu	a0,s0,484
    204c:	3c05437f 	lui	a1,0x437f
    2050:	2c610029 	sltiu	at,v1,41
    2054:	1020000b 	beqz	at,2084 <L808D8888+0x6c>
    2058:	3c063f80 	lui	a2,0x3f80
    205c:	0c000000 	jal	0 <func_808D6870>
    2060:	3c0740d0 	lui	a3,0x40d0
    2064:	3c053e4c 	lui	a1,0x3e4c
    2068:	3c073ccc 	lui	a3,0x3ccc
    206c:	34e7cccd 	ori	a3,a3,0xcccd
    2070:	34a5cccd 	ori	a1,a1,0xcccd
    2074:	260401e8 	addiu	a0,s0,488
    2078:	0c000000 	jal	0 <func_808D6870>
    207c:	3c063f80 	lui	a2,0x3f80
    2080:	8e030674 	lw	v1,1652(s0)
    2084:	2c610015 	sltiu	at,v1,21
    2088:	14200004 	bnez	at,209c <L808D8888+0x84>
    208c:	02002025 	move	a0,s0
    2090:	0c000000 	jal	0 <func_808D6870>
    2094:	24053057 	li	a1,12375
    2098:	8e030674 	lw	v1,1652(s0)
    209c:	2c610015 	sltiu	at,v1,21
    20a0:	14200009 	bnez	at,20c8 <L808D8888+0xb0>
    20a4:	8fa40074 	lw	a0,116(sp)
    20a8:	3c05442f 	lui	a1,0x442f
    20ac:	0c000000 	jal	0 <func_808D6870>
    20b0:	24060002 	li	a2,2
    20b4:	8fa40074 	lw	a0,116(sp)
    20b8:	3c05442f 	lui	a1,0x442f
    20bc:	0c000000 	jal	0 <func_808D6870>
    20c0:	24060002 	li	a2,2
    20c4:	8e030674 	lw	v1,1652(s0)
    20c8:	2401001e 	li	at,30
    20cc:	14610005 	bne	v1,at,20e4 <L808D8888+0xcc>
    20d0:	8fa40074 	lw	a0,116(sp)
    20d4:	02002825 	move	a1,s0
    20d8:	0c000000 	jal	0 <func_808D6870>
    20dc:	2406004a 	li	a2,74
    20e0:	8e030674 	lw	v1,1652(s0)
    20e4:	2c610033 	sltiu	at,v1,51
    20e8:	1420015e 	bnez	at,2664 <L808D8ED4>
    20ec:	24080015 	li	t0,21
    20f0:	44802000 	mtc1	zero,$f4
    20f4:	a6080678 	sh	t0,1656(s0)
    20f8:	ae000674 	sw	zero,1652(s0)
    20fc:	3c010000 	lui	at,0x0
    2100:	e60401d8 	swc1	$f4,472(s0)
    2104:	c4260000 	lwc1	$f6,0(at)
    2108:	1000000e 	b	2144 <L808D8980+0x34>
    210c:	e60601e8 	swc1	$f6,488(s0)

00002110 <L808D8980>:
    2110:	2409000b 	li	t1,11
    2114:	a20901a0 	sb	t1,416(s0)
    2118:	02002025 	move	a0,s0
    211c:	0c000000 	jal	0 <func_808D6870>
    2120:	24053057 	li	a1,12375
    2124:	8fa40074 	lw	a0,116(sp)
    2128:	3c05442f 	lui	a1,0x442f
    212c:	0c000000 	jal	0 <func_808D6870>
    2130:	24060002 	li	a2,2
    2134:	8fa40074 	lw	a0,116(sp)
    2138:	3c05442f 	lui	a1,0x442f
    213c:	0c000000 	jal	0 <func_808D6870>
    2140:	24060002 	li	a2,2
    2144:	3c01c1f0 	lui	at,0xc1f0
    2148:	44814000 	mtc1	at,$f8
    214c:	3c014214 	lui	at,0x4214
    2150:	44815000 	mtc1	at,$f10
    2154:	3c01c1f0 	lui	at,0xc1f0
    2158:	44818000 	mtc1	at,$f16
    215c:	3c01c120 	lui	at,0xc120
    2160:	44819000 	mtc1	at,$f18
    2164:	3c014234 	lui	at,0x4234
    2168:	44812000 	mtc1	at,$f4
    216c:	8e030674 	lw	v1,1652(s0)
    2170:	44803000 	mtc1	zero,$f6
    2174:	2401000d 	li	at,13
    2178:	e6080680 	swc1	$f8,1664(s0)
    217c:	e60a0684 	swc1	$f10,1668(s0)
    2180:	e6100688 	swc1	$f16,1672(s0)
    2184:	e612068c 	swc1	$f18,1676(s0)
    2188:	e6040690 	swc1	$f4,1680(s0)
    218c:	14610006 	bne	v1,at,21a8 <L808D8980+0x98>
    2190:	e6060694 	swc1	$f6,1684(s0)
    2194:	8fa40074 	lw	a0,116(sp)
    2198:	240570cd 	li	a1,28877
    219c:	0c000000 	jal	0 <func_808D6870>
    21a0:	00003025 	move	a2,zero
    21a4:	8e030674 	lw	v1,1652(s0)
    21a8:	2c610079 	sltiu	at,v1,121
    21ac:	5420012e 	bnezl	at,2668 <L808D8ED4+0x4>
    21b0:	8605067a 	lh	a1,1658(s0)
    21b4:	8fa40074 	lw	a0,116(sp)
    21b8:	0c000000 	jal	0 <func_808D6870>
    21bc:	248420d8 	addiu	a0,a0,8408
    21c0:	14400128 	bnez	v0,2664 <L808D8ED4>
    21c4:	240a0016 	li	t2,22
    21c8:	3c014120 	lui	at,0x4120
    21cc:	44815000 	mtc1	at,$f10
    21d0:	c60801fc 	lwc1	$f8,508(s0)
    21d4:	3c0141f0 	lui	at,0x41f0
    21d8:	44812000 	mtc1	at,$f4
    21dc:	c6120200 	lwc1	$f18,512(s0)
    21e0:	460a4401 	sub.s	$f16,$f8,$f10
    21e4:	3c01437f 	lui	at,0x437f
    21e8:	c6080204 	lwc1	$f8,516(s0)
    21ec:	46049180 	add.s	$f6,$f18,$f4
    21f0:	44815000 	mtc1	at,$f10
    21f4:	240b001e 	li	t3,30
    21f8:	240c00fe 	li	t4,254
    21fc:	a60a0678 	sh	t2,1656(s0)
    2200:	ae000674 	sw	zero,1652(s0)
    2204:	a60b01ba 	sh	t3,442(s0)
    2208:	a60c0718 	sh	t4,1816(s0)
    220c:	e610068c 	swc1	$f16,1676(s0)
    2210:	e6060690 	swc1	$f6,1680(s0)
    2214:	3c010000 	lui	at,0x0
    2218:	e6080694 	swc1	$f8,1684(s0)
    221c:	e60a01e4 	swc1	$f10,484(s0)
    2220:	c4300000 	lwc1	$f16,0(at)
    2224:	e61001e8 	swc1	$f16,488(s0)

00002228 <L808D8A98>:
    2228:	8e0d0674 	lw	t5,1652(s0)
    222c:	260401e4 	addiu	a0,s0,484
    2230:	240e000c 	li	t6,12
    2234:	2da1001f 	sltiu	at,t5,31
    2238:	14200003 	bnez	at,2248 <L808D8A98+0x20>
    223c:	3c053f80 	lui	a1,0x3f80
    2240:	10000002 	b	224c <L808D8A98+0x24>
    2244:	a20001a0 	sb	zero,416(s0)
    2248:	a20e01a0 	sb	t6,416(s0)
    224c:	0c000000 	jal	0 <func_808D6870>
    2250:	3c064120 	lui	a2,0x4120
    2254:	3c01c1f0 	lui	at,0xc1f0
    2258:	44819000 	mtc1	at,$f18
    225c:	3c014309 	lui	at,0x4309
    2260:	44812000 	mtc1	at,$f4
    2264:	3c01c2dc 	lui	at,0xc2dc
    2268:	44813000 	mtc1	at,$f6
    226c:	3c0141f0 	lui	at,0x41f0
    2270:	44815000 	mtc1	at,$f10
    2274:	c6080200 	lwc1	$f8,512(s0)
    2278:	3c063dcc 	lui	a2,0x3dcc
    227c:	34c6cccd 	ori	a2,a2,0xcccd
    2280:	460a4400 	add.s	$f16,$f8,$f10
    2284:	26040690 	addiu	a0,s0,1680
    2288:	3c0741a0 	lui	a3,0x41a0
    228c:	e6120680 	swc1	$f18,1664(s0)
    2290:	44058000 	mfc1	a1,$f16
    2294:	e6040684 	swc1	$f4,1668(s0)
    2298:	0c000000 	jal	0 <func_808D6870>
    229c:	e6060688 	swc1	$f6,1672(s0)
    22a0:	3c014120 	lui	at,0x4120
    22a4:	44812000 	mtc1	at,$f4
    22a8:	c61201fc 	lwc1	$f18,508(s0)
    22ac:	2604068c 	addiu	a0,s0,1676
    22b0:	3c063dcc 	lui	a2,0x3dcc
    22b4:	46049181 	sub.s	$f6,$f18,$f4
    22b8:	34c6cccd 	ori	a2,a2,0xcccd
    22bc:	afa40048 	sw	a0,72(sp)
    22c0:	3c0740a0 	lui	a3,0x40a0
    22c4:	44053000 	mfc1	a1,$f6
    22c8:	0c000000 	jal	0 <func_808D6870>
    22cc:	00000000 	nop
    22d0:	8e030674 	lw	v1,1652(s0)
    22d4:	24010014 	li	at,20
    22d8:	02002025 	move	a0,s0
    22dc:	14610018 	bne	v1,at,2340 <L808D8A98+0x118>
    22e0:	8fa50074 	lw	a1,116(sp)
    22e4:	0c000000 	jal	0 <func_808D6870>
    22e8:	2406017c 	li	a2,380
    22ec:	3c050601 	lui	a1,0x601
    22f0:	24a58a88 	addiu	a1,a1,-30072
    22f4:	8fa4004c 	lw	a0,76(sp)
    22f8:	0c000000 	jal	0 <func_808D6870>
    22fc:	24060000 	li	a2,0
    2300:	0c000000 	jal	0 <func_808D6870>
    2304:	8fa4004c 	lw	a0,76(sp)
    2308:	44804000 	mtc1	zero,$f8
    230c:	3c014190 	lui	at,0x4190
    2310:	3c0f0000 	lui	t7,0x0
    2314:	e60800bc 	swc1	$f8,188(s0)
    2318:	8def0000 	lw	t7,0(t7)
    231c:	44815000 	mtc1	at,$f10
    2320:	02002025 	move	a0,s0
    2324:	240528c7 	li	a1,10439
    2328:	0c000000 	jal	0 <func_808D6870>
    232c:	e5ea16c4 	swc1	$f10,5828(t7)
    2330:	a2000198 	sb	zero,408(s0)
    2334:	0c000000 	jal	0 <func_808D6870>
    2338:	24040064 	li	a0,100
    233c:	8e030674 	lw	v1,1652(s0)
    2340:	24010032 	li	at,50
    2344:	14610034 	bne	v1,at,2418 <L808D8A98+0x1f0>
    2348:	8fa40074 	lw	a0,116(sp)
    234c:	3c010001 	lui	at,0x1
    2350:	342117a4 	ori	at,at,0x17a4
    2354:	00812021 	addu	a0,a0,at
    2358:	0c000000 	jal	0 <func_808D6870>
    235c:	240500e1 	li	a1,225
    2360:	8fb80074 	lw	t8,116(sp)
    2364:	0002c900 	sll	t9,v0,0x4
    2368:	0322c821 	addu	t9,t9,v0
    236c:	0019c880 	sll	t9,t9,0x2
    2370:	3c090001 	lui	t1,0x1
    2374:	03194021 	addu	t0,t8,t9
    2378:	01284821 	addu	t1,t1,t0
    237c:	8d2917b4 	lw	t1,6068(t1)
    2380:	3c030000 	lui	v1,0x0
    2384:	3c018000 	lui	at,0x8000
    2388:	24630000 	addiu	v1,v1,0
    238c:	01215021 	addu	t2,t1,at
    2390:	ac6a0018 	sw	t2,24(v1)
    2394:	3c040000 	lui	a0,0x0
    2398:	94840ee2 	lhu	a0,3810(a0)
    239c:	3c020601 	lui	v0,0x601
    23a0:	2442cf00 	addiu	v0,v0,-12544
    23a4:	308b0100 	andi	t3,a0,0x100
    23a8:	15600017 	bnez	t3,2408 <L808D8A98+0x1e0>
    23ac:	00026900 	sll	t5,v0,0x4
    23b0:	000d7702 	srl	t6,t5,0x1c
    23b4:	000e7880 	sll	t7,t6,0x2
    23b8:	006fc021 	addu	t8,v1,t7
    23bc:	3c0100ff 	lui	at,0xff
    23c0:	8f190000 	lw	t9,0(t8)
    23c4:	3421ffff 	ori	at,at,0xffff
    23c8:	00414024 	and	t0,v0,at
    23cc:	8fa40074 	lw	a0,116(sp)
    23d0:	3c018000 	lui	at,0x8000
    23d4:	240900b4 	li	t1,180
    23d8:	240a0080 	li	t2,128
    23dc:	240b0028 	li	t3,40
    23e0:	03283021 	addu	a2,t9,t0
    23e4:	00c13021 	addu	a2,a2,at
    23e8:	afab0018 	sw	t3,24(sp)
    23ec:	afaa0014 	sw	t2,20(sp)
    23f0:	afa90010 	sw	t1,16(sp)
    23f4:	240700a0 	li	a3,160
    23f8:	0c000000 	jal	0 <func_808D6870>
    23fc:	24851d4c 	addiu	a1,a0,7500
    2400:	3c040000 	lui	a0,0x0
    2404:	94840ee2 	lhu	a0,3810(a0)
    2408:	348c0100 	ori	t4,a0,0x100
    240c:	3c010000 	lui	at,0x0
    2410:	a42c0ee2 	sh	t4,3810(at)
    2414:	8e030674 	lw	v1,1652(s0)
    2418:	2c610014 	sltiu	at,v1,20
    241c:	1420004f 	bnez	at,255c <L808D8A98+0x334>
    2420:	240d0001 	li	t5,1
    2424:	a20d0199 	sb	t5,409(s0)
    2428:	02002025 	move	a0,s0
    242c:	0c000000 	jal	0 <func_808D6870>
    2430:	24053056 	li	a1,12374
    2434:	3c063d4c 	lui	a2,0x3d4c
    2438:	34c6cccd 	ori	a2,a2,0xcccd
    243c:	26040028 	addiu	a0,s0,40
    2440:	3c054364 	lui	a1,0x4364
    2444:	0c000000 	jal	0 <func_808D6870>
    2448:	3c074000 	lui	a3,0x4000
    244c:	3c063d4c 	lui	a2,0x3d4c
    2450:	34c6cccd 	ori	a2,a2,0xcccd
    2454:	2604002c 	addiu	a0,s0,44
    2458:	3c05c366 	lui	a1,0xc366
    245c:	0c000000 	jal	0 <func_808D6870>
    2460:	3c074080 	lui	a3,0x4080
    2464:	3c020000 	lui	v0,0x0
    2468:	24420000 	addiu	v0,v0,0
    246c:	3c01c040 	lui	at,0xc040
    2470:	44810000 	mtc1	at,$f0
    2474:	8c4e0000 	lw	t6,0(v0)
    2478:	3c013e80 	lui	at,0x3e80
    247c:	44818000 	mtc1	at,$f16
    2480:	e5c016b0 	swc1	$f0,5808(t6)
    2484:	8c4f0000 	lw	t7,0(v0)
    2488:	e5f016b4 	swc1	$f16,5812(t7)
    248c:	8c580000 	lw	t8,0(v0)
    2490:	e70016b8 	swc1	$f0,5816(t8)
    2494:	8e040674 	lw	a0,1652(s0)
    2498:	00800821 	move	at,a0
    249c:	00042080 	sll	a0,a0,0x2
    24a0:	00812023 	subu	a0,a0,at
    24a4:	00042100 	sll	a0,a0,0x4
    24a8:	00812023 	subu	a0,a0,at
    24ac:	000420c0 	sll	a0,a0,0x3
    24b0:	00812023 	subu	a0,a0,at
    24b4:	00042080 	sll	a0,a0,0x2
    24b8:	00042400 	sll	a0,a0,0x10
    24bc:	0c000000 	jal	0 <func_808D6870>
    24c0:	00042403 	sra	a0,a0,0x10
    24c4:	c61201c8 	lwc1	$f18,456(s0)
    24c8:	3c010000 	lui	at,0x0
    24cc:	c4260000 	lwc1	$f6,0(at)
    24d0:	46009102 	mul.s	$f4,$f18,$f0
    24d4:	8e040674 	lw	a0,1652(s0)
    24d8:	c6080028 	lwc1	$f8,40(s0)
    24dc:	00800821 	move	at,a0
    24e0:	000420c0 	sll	a0,a0,0x3
    24e4:	00812023 	subu	a0,a0,at
    24e8:	46062082 	mul.s	$f2,$f4,$f6
    24ec:	00042140 	sll	a0,a0,0x5
    24f0:	00812021 	addu	a0,a0,at
    24f4:	000420c0 	sll	a0,a0,0x3
    24f8:	00042400 	sll	a0,a0,0x10
    24fc:	00042403 	sra	a0,a0,0x10
    2500:	46024280 	add.s	$f10,$f8,$f2
    2504:	e6020060 	swc1	$f2,96(s0)
    2508:	0c000000 	jal	0 <func_808D6870>
    250c:	e60a0028 	swc1	$f10,40(s0)
    2510:	c61001c8 	lwc1	$f16,456(s0)
    2514:	3c013f80 	lui	at,0x3f80
    2518:	44816000 	mtc1	at,$f12
    251c:	46008482 	mul.s	$f18,$f16,$f0
    2520:	3c014248 	lui	at,0x4248
    2524:	44817000 	mtc1	at,$f14
    2528:	3c013f00 	lui	at,0x3f00
    252c:	44812000 	mtc1	at,$f4
    2530:	c6060100 	lwc1	$f6,256(s0)
    2534:	44066000 	mfc1	a2,$f12
    2538:	46049082 	mul.s	$f2,$f18,$f4
    253c:	44076000 	mfc1	a3,$f12
    2540:	44057000 	mfc1	a1,$f14
    2544:	260401c8 	addiu	a0,s0,456
    2548:	46061201 	sub.s	$f8,$f2,$f6
    254c:	e6020024 	swc1	$f2,36(s0)
    2550:	0c000000 	jal	0 <func_808D6870>
    2554:	e608005c 	swc1	$f8,92(s0)
    2558:	8e030674 	lw	v1,1652(s0)
    255c:	2c61001f 	sltiu	at,v1,31
    2560:	14200008 	bnez	at,2584 <L808D8A98+0x35c>
    2564:	00002825 	move	a1,zero
    2568:	86190718 	lh	t9,1816(s0)
    256c:	2728fffb 	addiu	t0,t9,-5
    2570:	a6080718 	sh	t0,1816(s0)
    2574:	86090718 	lh	t1,1816(s0)
    2578:	05230003 	bgezl	t1,2588 <L808D8A98+0x360>
    257c:	8e0a0674 	lw	t2,1652(s0)
    2580:	a6000718 	sh	zero,1816(s0)
    2584:	8e0a0674 	lw	t2,1652(s0)
    2588:	24010078 	li	at,120
    258c:	15410028 	bne	t2,at,2630 <L808D8A98+0x408>
    2590:	00000000 	nop
    2594:	0c000000 	jal	0 <func_808D6870>
    2598:	8fa40074 	lw	a0,116(sp)
    259c:	26030680 	addiu	v1,s0,1664
    25a0:	8c6c0000 	lw	t4,0(v1)
    25a4:	00003025 	move	a2,zero
    25a8:	ac4c005c 	sw	t4,92(v0)
    25ac:	8c6b0004 	lw	t3,4(v1)
    25b0:	ac4b0060 	sw	t3,96(v0)
    25b4:	8c6c0008 	lw	t4,8(v1)
    25b8:	ac4c0064 	sw	t4,100(v0)
    25bc:	8c6e0000 	lw	t6,0(v1)
    25c0:	ac4e0074 	sw	t6,116(v0)
    25c4:	8c6d0004 	lw	t5,4(v1)
    25c8:	ac4d0078 	sw	t5,120(v0)
    25cc:	8c6e0008 	lw	t6,8(v1)
    25d0:	ac4e007c 	sw	t6,124(v0)
    25d4:	8faf0048 	lw	t7,72(sp)
    25d8:	8df90000 	lw	t9,0(t7)
    25dc:	ac590050 	sw	t9,80(v0)
    25e0:	8df80004 	lw	t8,4(t7)
    25e4:	ac580054 	sw	t8,84(v0)
    25e8:	8df90008 	lw	t9,8(t7)
    25ec:	ac590058 	sw	t9,88(v0)
    25f0:	8605067a 	lh	a1,1658(s0)
    25f4:	0c000000 	jal	0 <func_808D6870>
    25f8:	8fa40074 	lw	a0,116(sp)
    25fc:	8fa40074 	lw	a0,116(sp)
    2600:	a600067a 	sh	zero,1658(s0)
    2604:	8608067a 	lh	t0,1658(s0)
    2608:	24851d64 	addiu	a1,a0,7524
    260c:	0c000000 	jal	0 <func_808D6870>
    2610:	a6080678 	sh	t0,1656(s0)
    2614:	8fa40074 	lw	a0,116(sp)
    2618:	02002825 	move	a1,s0
    261c:	0c000000 	jal	0 <func_808D6870>
    2620:	24060007 	li	a2,7
    2624:	02002025 	move	a0,s0
    2628:	0c000000 	jal	0 <func_808D6870>
    262c:	8fa50074 	lw	a1,116(sp)
    2630:	3c030000 	lui	v1,0x0
    2634:	24630000 	addiu	v1,v1,0
    2638:	8c620000 	lw	v0,0(v1)
    263c:	5040000a 	beqzl	v0,2668 <L808D8ED4+0x4>
    2640:	8605067a 	lh	a1,1658(s0)
    2644:	44800000 	mtc1	zero,$f0
    2648:	3c0143af 	lui	at,0x43af
    264c:	44815000 	mtc1	at,$f10
    2650:	e4400024 	swc1	$f0,36(v0)
    2654:	8c690000 	lw	t1,0(v1)
    2658:	e52a0028 	swc1	$f10,40(t1)
    265c:	8c6a0000 	lw	t2,0(v1)
    2660:	e540002c 	swc1	$f0,44(t2)

00002664 <L808D8ED4>:
    2664:	8605067a 	lh	a1,1658(s0)
    2668:	260b068c 	addiu	t3,s0,1676
    266c:	50a0004a 	beqzl	a1,2798 <L808D8ED4+0x134>
    2670:	8fbf003c 	lw	ra,60(sp)
    2674:	93ad006f 	lbu	t5,111(sp)
    2678:	260c0680 	addiu	t4,s0,1664
    267c:	afac0044 	sw	t4,68(sp)
    2680:	11a0003c 	beqz	t5,2774 <L808D8ED4+0x110>
    2684:	afab0048 	sw	t3,72(sp)
    2688:	c61006a4 	lwc1	$f16,1700(s0)
    268c:	c61206ec 	lwc1	$f18,1772(s0)
    2690:	8e0506bc 	lw	a1,1724(s0)
    2694:	8e0606f0 	lw	a2,1776(s0)
    2698:	46128102 	mul.s	$f4,$f16,$f18
    269c:	260e0688 	addiu	t6,s0,1672
    26a0:	260f0690 	addiu	t7,s0,1680
    26a4:	afaf004c 	sw	t7,76(sp)
    26a8:	afae0050 	sw	t6,80(sp)
    26ac:	01802025 	move	a0,t4
    26b0:	44072000 	mfc1	a3,$f4
    26b4:	0c000000 	jal	0 <func_808D6870>
    26b8:	00000000 	nop
    26bc:	c60606a8 	lwc1	$f6,1704(s0)
    26c0:	c60806ec 	lwc1	$f8,1772(s0)
    26c4:	26040684 	addiu	a0,s0,1668
    26c8:	8e0506c0 	lw	a1,1728(s0)
    26cc:	46083282 	mul.s	$f10,$f6,$f8
    26d0:	8e0606f0 	lw	a2,1776(s0)
    26d4:	44075000 	mfc1	a3,$f10
    26d8:	0c000000 	jal	0 <func_808D6870>
    26dc:	00000000 	nop
    26e0:	c61006ac 	lwc1	$f16,1708(s0)
    26e4:	c61206ec 	lwc1	$f18,1772(s0)
    26e8:	8fa40050 	lw	a0,80(sp)
    26ec:	8e0506c4 	lw	a1,1732(s0)
    26f0:	46128102 	mul.s	$f4,$f16,$f18
    26f4:	8e0606f0 	lw	a2,1776(s0)
    26f8:	44072000 	mfc1	a3,$f4
    26fc:	0c000000 	jal	0 <func_808D6870>
    2700:	00000000 	nop
    2704:	c60606b0 	lwc1	$f6,1712(s0)
    2708:	c60806ec 	lwc1	$f8,1772(s0)
    270c:	8fa40048 	lw	a0,72(sp)
    2710:	8e0506d4 	lw	a1,1748(s0)
    2714:	46083282 	mul.s	$f10,$f6,$f8
    2718:	8e0606f0 	lw	a2,1776(s0)
    271c:	44075000 	mfc1	a3,$f10
    2720:	0c000000 	jal	0 <func_808D6870>
    2724:	00000000 	nop
    2728:	c61006b4 	lwc1	$f16,1716(s0)
    272c:	c61206ec 	lwc1	$f18,1772(s0)
    2730:	8fa4004c 	lw	a0,76(sp)
    2734:	8e0506d8 	lw	a1,1752(s0)
    2738:	46128102 	mul.s	$f4,$f16,$f18
    273c:	8e0606f0 	lw	a2,1776(s0)
    2740:	44072000 	mfc1	a3,$f4
    2744:	0c000000 	jal	0 <func_808D6870>
    2748:	00000000 	nop
    274c:	c60606b8 	lwc1	$f6,1720(s0)
    2750:	c60806ec 	lwc1	$f8,1772(s0)
    2754:	26040694 	addiu	a0,s0,1684
    2758:	8e0506dc 	lw	a1,1756(s0)
    275c:	46083282 	mul.s	$f10,$f6,$f8
    2760:	8e0606f0 	lw	a2,1776(s0)
    2764:	44075000 	mfc1	a3,$f10
    2768:	0c000000 	jal	0 <func_808D6870>
    276c:	00000000 	nop
    2770:	8605067a 	lh	a1,1658(s0)
    2774:	8fa40074 	lw	a0,116(sp)
    2778:	8fa60048 	lw	a2,72(sp)
    277c:	0c000000 	jal	0 <func_808D6870>
    2780:	8fa70044 	lw	a3,68(sp)
    2784:	8fa40074 	lw	a0,116(sp)
    2788:	8605067a 	lh	a1,1658(s0)
    278c:	0c000000 	jal	0 <func_808D6870>
    2790:	8e0606f4 	lw	a2,1780(s0)
    2794:	8fbf003c 	lw	ra,60(sp)
    2798:	8fb00038 	lw	s0,56(sp)
    279c:	27bd0070 	addiu	sp,sp,112
    27a0:	03e00008 	jr	ra
    27a4:	00000000 	nop

000027a8 <func_808D9018>:
    27a8:	27bdffd0 	addiu	sp,sp,-48
    27ac:	afb00018 	sw	s0,24(sp)
    27b0:	3c010001 	lui	at,0x1
    27b4:	00808025 	move	s0,a0
    27b8:	342117a4 	ori	at,at,0x17a4
    27bc:	afbf001c 	sw	ra,28(sp)
    27c0:	afa50034 	sw	a1,52(sp)
    27c4:	00a12021 	addu	a0,a1,at
    27c8:	afa40024 	sw	a0,36(sp)
    27cc:	0c000000 	jal	0 <func_808D6870>
    27d0:	2405017d 	li	a1,381
    27d4:	8fa40024 	lw	a0,36(sp)
    27d8:	00402825 	move	a1,v0
    27dc:	0c000000 	jal	0 <func_808D6870>
    27e0:	afa20028 	sw	v0,40(sp)
    27e4:	10400023 	beqz	v0,2874 <func_808D9018+0xcc>
    27e8:	8fa30028 	lw	v1,40(sp)
    27ec:	a6000678 	sh	zero,1656(s0)
    27f0:	860f0678 	lh	t7,1656(s0)
    27f4:	3c0e0000 	lui	t6,0x0
    27f8:	25ce0000 	addiu	t6,t6,0
    27fc:	24180001 	li	t8,1
    2800:	ae0e0194 	sw	t6,404(s0)
    2804:	a2180198 	sb	t8,408(s0)
    2808:	ae03014c 	sw	v1,332(s0)
    280c:	ae0f0674 	sw	t7,1652(s0)
    2810:	8fb90034 	lw	t9,52(sp)
    2814:	00034100 	sll	t0,v1,0x4
    2818:	01034021 	addu	t0,t0,v1
    281c:	00084080 	sll	t0,t0,0x2
    2820:	3c0a0001 	lui	t2,0x1
    2824:	03284821 	addu	t1,t9,t0
    2828:	01495021 	addu	t2,t2,t1
    282c:	8d4a17b4 	lw	t2,6068(t2)
    2830:	3c018000 	lui	at,0x8000
    2834:	3c050601 	lui	a1,0x601
    2838:	01415821 	addu	t3,t2,at
    283c:	3c010000 	lui	at,0x0
    2840:	ac2b0018 	sw	t3,24(at)
    2844:	24a5ea00 	addiu	a1,a1,-5632
    2848:	26040150 	addiu	a0,s0,336
    284c:	0c000000 	jal	0 <func_808D6870>
    2850:	24060000 	li	a2,0
    2854:	3c040601 	lui	a0,0x601
    2858:	0c000000 	jal	0 <func_808D6870>
    285c:	2484ea00 	addiu	a0,a0,-5632
    2860:	44822000 	mtc1	v0,$f4
    2864:	44804000 	mtc1	zero,$f8
    2868:	468021a0 	cvt.s.w	$f6,$f4
    286c:	e6080508 	swc1	$f8,1288(s0)
    2870:	e60601cc 	swc1	$f6,460(s0)
    2874:	8fbf001c 	lw	ra,28(sp)
    2878:	8fb00018 	lw	s0,24(sp)
    287c:	27bd0030 	addiu	sp,sp,48
    2880:	03e00008 	jr	ra
    2884:	00000000 	nop

00002888 <func_808D90F8>:
    2888:	27bdffd0 	addiu	sp,sp,-48
    288c:	afb00018 	sw	s0,24(sp)
    2890:	3c010001 	lui	at,0x1
    2894:	00808025 	move	s0,a0
    2898:	342117a4 	ori	at,at,0x17a4
    289c:	afbf001c 	sw	ra,28(sp)
    28a0:	afa50034 	sw	a1,52(sp)
    28a4:	00a12021 	addu	a0,a1,at
    28a8:	afa40024 	sw	a0,36(sp)
    28ac:	0c000000 	jal	0 <func_808D6870>
    28b0:	2405017d 	li	a1,381
    28b4:	8fa40024 	lw	a0,36(sp)
    28b8:	00402825 	move	a1,v0
    28bc:	0c000000 	jal	0 <func_808D6870>
    28c0:	afa20028 	sw	v0,40(sp)
    28c4:	10400028 	beqz	v0,2968 <func_808D90F8+0xe0>
    28c8:	8fa30028 	lw	v1,40(sp)
    28cc:	ae03014c 	sw	v1,332(s0)
    28d0:	8fae0034 	lw	t6,52(sp)
    28d4:	00037900 	sll	t7,v1,0x4
    28d8:	01e37821 	addu	t7,t7,v1
    28dc:	000f7880 	sll	t7,t7,0x2
    28e0:	3c190001 	lui	t9,0x1
    28e4:	01cfc021 	addu	t8,t6,t7
    28e8:	0338c821 	addu	t9,t9,t8
    28ec:	8f3917b4 	lw	t9,6068(t9)
    28f0:	3c018000 	lui	at,0x8000
    28f4:	3c050601 	lui	a1,0x601
    28f8:	03214021 	addu	t0,t9,at
    28fc:	3c010000 	lui	at,0x0
    2900:	ac280018 	sw	t0,24(at)
    2904:	24a5ea00 	addiu	a1,a1,-5632
    2908:	26040150 	addiu	a0,s0,336
    290c:	0c000000 	jal	0 <func_808D6870>
    2910:	24060000 	li	a2,0
    2914:	3c040601 	lui	a0,0x601
    2918:	0c000000 	jal	0 <func_808D6870>
    291c:	2484ea00 	addiu	a0,a0,-5632
    2920:	44822000 	mtc1	v0,$f4
    2924:	3c090000 	lui	t1,0x0
    2928:	3c030000 	lui	v1,0x0
    292c:	468021a0 	cvt.s.w	$f6,$f4
    2930:	25290000 	addiu	t1,t1,0
    2934:	240a0064 	li	t2,100
    2938:	240b0001 	li	t3,1
    293c:	24630000 	addiu	v1,v1,0
    2940:	ae090194 	sw	t1,404(s0)
    2944:	e60601cc 	swc1	$f6,460(s0)
    2948:	ae000674 	sw	zero,1652(s0)
    294c:	a60a0678 	sh	t2,1656(s0)
    2950:	a20b0198 	sb	t3,408(s0)
    2954:	846c13f4 	lh	t4,5108(v1)
    2958:	846d002e 	lh	t5,46(v1)
    295c:	a06c0033 	sb	t4,51(v1)
    2960:	10000004 	b	2974 <func_808D90F8+0xec>
    2964:	a46d0030 	sh	t5,48(v1)
    2968:	3c0e0000 	lui	t6,0x0
    296c:	25ce0000 	addiu	t6,t6,0
    2970:	ae0e0194 	sw	t6,404(s0)
    2974:	8fbf001c 	lw	ra,28(sp)
    2978:	8fb00018 	lw	s0,24(sp)
    297c:	27bd0030 	addiu	sp,sp,48
    2980:	03e00008 	jr	ra
    2984:	00000000 	nop

00002988 <func_808D91F8>:
    2988:	27bdffc0 	addiu	sp,sp,-64
    298c:	3c020200 	lui	v0,0x200
    2990:	3c030200 	lui	v1,0x200
    2994:	24426c18 	addiu	v0,v0,27672
    2998:	24637418 	addiu	v1,v1,29720
    299c:	3c050000 	lui	a1,0x0
    29a0:	00027100 	sll	t6,v0,0x4
    29a4:	00035900 	sll	t3,v1,0x4
    29a8:	24a50000 	addiu	a1,a1,0
    29ac:	000e7f02 	srl	t7,t6,0x1c
    29b0:	000b6702 	srl	t4,t3,0x1c
    29b4:	000fc080 	sll	t8,t7,0x2
    29b8:	000c6880 	sll	t5,t4,0x2
    29bc:	3c0600ff 	lui	a2,0xff
    29c0:	00b8c821 	addu	t9,a1,t8
    29c4:	00ad7021 	addu	t6,a1,t5
    29c8:	8f280000 	lw	t0,0(t9)
    29cc:	8dcf0000 	lw	t7,0(t6)
    29d0:	34c6ffff 	ori	a2,a2,0xffff
    29d4:	afb50030 	sw	s5,48(sp)
    29d8:	3c078000 	lui	a3,0x8000
    29dc:	00464824 	and	t1,v0,a2
    29e0:	0066c024 	and	t8,v1,a2
    29e4:	afb70038 	sw	s7,56(sp)
    29e8:	afb60034 	sw	s6,52(sp)
    29ec:	afb4002c 	sw	s4,44(sp)
    29f0:	afb30028 	sw	s3,40(sp)
    29f4:	afb20024 	sw	s2,36(sp)
    29f8:	afb0001c 	sw	s0,28(sp)
    29fc:	f7b40010 	sdc1	$f20,16(sp)
    2a00:	3c150000 	lui	s5,0x0
    2a04:	3c010000 	lui	at,0x0
    2a08:	01095021 	addu	t2,t0,t1
    2a0c:	01f8c821 	addu	t9,t7,t8
    2a10:	309400ff 	andi	s4,a0,0xff
    2a14:	afbf003c 	sw	ra,60(sp)
    2a18:	afb10020 	sw	s1,32(sp)
    2a1c:	afa40040 	sw	a0,64(sp)
    2a20:	01479021 	addu	s2,t2,a3
    2a24:	03279821 	addu	s3,t9,a3
    2a28:	c4340000 	lwc1	$f20,0(at)
    2a2c:	26b50000 	addiu	s5,s5,0
    2a30:	00008025 	move	s0,zero
    2a34:	24160002 	li	s6,2
    2a38:	24170001 	li	s7,1
    2a3c:	02128821 	addu	s1,s0,s2
    2a40:	92280000 	lbu	t0,0(s1)
    2a44:	51000010 	beqzl	t0,2a88 <func_808D91F8+0x100>
    2a48:	26100001 	addiu	s0,s0,1
    2a4c:	0c000000 	jal	0 <func_808D6870>
    2a50:	00000000 	nop
    2a54:	4614003c 	c.lt.s	$f0,$f20
    2a58:	02b04821 	addu	t1,s5,s0
    2a5c:	4502000a 	bc1fl	2a88 <func_808D91F8+0x100>
    2a60:	26100001 	addiu	s0,s0,1
    2a64:	912a0000 	lbu	t2,0(t1)
    2a68:	02701021 	addu	v0,s3,s0
    2a6c:	51400004 	beqzl	t2,2a80 <func_808D91F8+0xf8>
    2a70:	a0570000 	sb	s7,0(v0)
    2a74:	56d40004 	bnel	s6,s4,2a88 <func_808D91F8+0x100>
    2a78:	26100001 	addiu	s0,s0,1
    2a7c:	a0570000 	sb	s7,0(v0)
    2a80:	a2370000 	sb	s7,0(s1)
    2a84:	26100001 	addiu	s0,s0,1
    2a88:	00108400 	sll	s0,s0,0x10
    2a8c:	00108403 	sra	s0,s0,0x10
    2a90:	2a010800 	slti	at,s0,2048
    2a94:	5420ffea 	bnezl	at,2a40 <func_808D91F8+0xb8>
    2a98:	02128821 	addu	s1,s0,s2
    2a9c:	8fbf003c 	lw	ra,60(sp)
    2aa0:	d7b40010 	ldc1	$f20,16(sp)
    2aa4:	8fb0001c 	lw	s0,28(sp)
    2aa8:	8fb10020 	lw	s1,32(sp)
    2aac:	8fb20024 	lw	s2,36(sp)
    2ab0:	8fb30028 	lw	s3,40(sp)
    2ab4:	8fb4002c 	lw	s4,44(sp)
    2ab8:	8fb50030 	lw	s5,48(sp)
    2abc:	8fb60034 	lw	s6,52(sp)
    2ac0:	8fb70038 	lw	s7,56(sp)
    2ac4:	03e00008 	jr	ra
    2ac8:	27bd0040 	addiu	sp,sp,64

00002acc <func_808D933C>:
    2acc:	27bdff50 	addiu	sp,sp,-176
    2ad0:	afbf003c 	sw	ra,60(sp)
    2ad4:	afb00038 	sw	s0,56(sp)
    2ad8:	a3a000ad 	sb	zero,173(sp)
    2adc:	8cae1c44 	lw	t6,7236(a1)
    2ae0:	3c090001 	lui	t1,0x1
    2ae4:	3c018000 	lui	at,0x8000
    2ae8:	afae00a8 	sw	t6,168(sp)
    2aec:	8c8f014c 	lw	t7,332(a0)
    2af0:	00808025 	move	s0,a0
    2af4:	24840150 	addiu	a0,a0,336
    2af8:	000fc100 	sll	t8,t7,0x4
    2afc:	030fc021 	addu	t8,t8,t7
    2b00:	0018c080 	sll	t8,t8,0x2
    2b04:	00b8c821 	addu	t9,a1,t8
    2b08:	01394821 	addu	t1,t1,t9
    2b0c:	8d2917b4 	lw	t1,6068(t1)
    2b10:	01215021 	addu	t2,t1,at
    2b14:	3c010000 	lui	at,0x0
    2b18:	ac2a0018 	sw	t2,24(at)
    2b1c:	8c8b0524 	lw	t3,1316(a0)
    2b20:	256c0001 	addiu	t4,t3,1
    2b24:	ac8c0524 	sw	t4,1316(a0)
    2b28:	afa500b4 	sw	a1,180(sp)
    2b2c:	0c000000 	jal	0 <func_808D6870>
    2b30:	afa40054 	sw	a0,84(sp)
    2b34:	86040678 	lh	a0,1656(s0)
    2b38:	28810420 	slti	at,a0,1056
    2b3c:	14200008 	bnez	at,2b60 <func_808D933C+0x94>
    2b40:	00801825 	move	v1,a0
    2b44:	24010420 	li	at,1056
    2b48:	1061047c 	beq	v1,at,3d3c <L808DA450+0x15c>
    2b4c:	24010421 	li	at,1057
    2b50:	506104a7 	beql	v1,at,3df0 <L808DA450+0x210>
    2b54:	8e040674 	lw	a0,1652(s0)
    2b58:	100005e9 	b	4300 <L808DAB60+0x10>
    2b5c:	28810064 	slti	at,a0,100
    2b60:	2861006e 	slti	at,v1,110
    2b64:	14200006 	bnez	at,2b80 <func_808D933C+0xb4>
    2b68:	246dff9c 	addiu	t5,v1,-100
    2b6c:	2401041f 	li	at,1055
    2b70:	5061044d 	beql	v1,at,3ca8 <L808DA450+0xc8>
    2b74:	8e040674 	lw	a0,1652(s0)
    2b78:	100005e1 	b	4300 <L808DAB60+0x10>
    2b7c:	28810064 	slti	at,a0,100
    2b80:	2861000a 	slti	at,v1,10
    2b84:	14200009 	bnez	at,2bac <func_808D933C+0xe0>
    2b88:	00037080 	sll	t6,v1,0x2
    2b8c:	2da1000a 	sltiu	at,t5,10
    2b90:	102005da 	beqz	at,42fc <L808DAB60+0xc>
    2b94:	000d6880 	sll	t5,t5,0x2
    2b98:	3c010000 	lui	at,0x0
    2b9c:	002d0821 	addu	at,at,t5
    2ba0:	8c2d0000 	lw	t5,0(at)
    2ba4:	01a00008 	jr	t5
    2ba8:	00000000 	nop
    2bac:	2c61000a 	sltiu	at,v1,10
    2bb0:	102005d2 	beqz	at,42fc <L808DAB60+0xc>
    2bb4:	3c010000 	lui	at,0x0
    2bb8:	002e0821 	addu	at,at,t6
    2bbc:	8c2e0000 	lw	t6,0(at)
    2bc0:	01c00008 	jr	t6
    2bc4:	00000000 	nop

00002bc8 <L808D9438>:
    2bc8:	8fa400b4 	lw	a0,180(sp)
    2bcc:	0c000000 	jal	0 <func_808D6870>
    2bd0:	24851d64 	addiu	a1,a0,7524
    2bd4:	8fa400b4 	lw	a0,180(sp)
    2bd8:	02002825 	move	a1,s0
    2bdc:	0c000000 	jal	0 <func_808D6870>
    2be0:	24060008 	li	a2,8
    2be4:	0c000000 	jal	0 <func_808D6870>
    2be8:	8fa400b4 	lw	a0,180(sp)
    2bec:	a602067a 	sh	v0,1658(s0)
    2bf0:	8fa400b4 	lw	a0,180(sp)
    2bf4:	00002825 	move	a1,zero
    2bf8:	0c000000 	jal	0 <func_808D6870>
    2bfc:	24060001 	li	a2,1
    2c00:	8fa400b4 	lw	a0,180(sp)
    2c04:	8605067a 	lh	a1,1658(s0)
    2c08:	0c000000 	jal	0 <func_808D6870>
    2c0c:	24060007 	li	a2,7
    2c10:	3c01428c 	lui	at,0x428c
    2c14:	44812000 	mtc1	at,$f4
    2c18:	3c01c2a0 	lui	at,0xc2a0
    2c1c:	44801000 	mtc1	zero,$f2
    2c20:	44813000 	mtc1	at,$f6
    2c24:	3c010000 	lui	at,0x0
    2c28:	e6040028 	swc1	$f4,40(s0)
    2c2c:	e6020024 	swc1	$f2,36(s0)
    2c30:	e606002c 	swc1	$f6,44(s0)
    2c34:	c4280000 	lwc1	$f8,0(at)
    2c38:	240f0001 	li	t7,1
    2c3c:	24180001 	li	t8,1
    2c40:	a60000b6 	sh	zero,182(s0)
    2c44:	a60f0678 	sh	t7,1656(s0)
    2c48:	ae000674 	sw	zero,1652(s0)
    2c4c:	a218071a 	sb	t8,1818(s0)
    2c50:	e60800bc 	swc1	$f8,188(s0)

00002c54 <L808D94C4>:
    2c54:	8fa200a8 	lw	v0,168(sp)
    2c58:	3c01c120 	lui	at,0xc120
    2c5c:	44815000 	mtc1	at,$f10
    2c60:	3c0142e6 	lui	at,0x42e6
    2c64:	44801000 	mtc1	zero,$f2
    2c68:	44818000 	mtc1	at,$f16
    2c6c:	24198000 	li	t9,-32768
    2c70:	a45900b6 	sh	t9,182(v0)
    2c74:	e44a0024 	swc1	$f10,36(v0)
    2c78:	e4420028 	swc1	$f2,40(v0)
    2c7c:	e450002c 	swc1	$f16,44(v0)
    2c80:	8e030674 	lw	v1,1652(s0)
    2c84:	2409000d 	li	t1,13
    2c88:	a20901a0 	sb	t1,416(s0)
    2c8c:	2c61001e 	sltiu	at,v1,30
    2c90:	10200005 	beqz	at,2ca8 <L808D94C4+0x54>
    2c94:	8faa00b4 	lw	t2,180(sp)
    2c98:	3c010001 	lui	at,0x1
    2c9c:	002a0821 	addu	at,at,t2
    2ca0:	e4220afc 	swc1	$f2,2812(at)
    2ca4:	8e030674 	lw	v1,1652(s0)
    2ca8:	2c610002 	sltiu	at,v1,2
    2cac:	14200004 	bnez	at,2cc0 <L808D94C4+0x6c>
    2cb0:	8fab00b4 	lw	t3,180(sp)
    2cb4:	3c010001 	lui	at,0x1
    2cb8:	002b0821 	addu	at,at,t3
    2cbc:	a0200b05 	sb	zero,2821(at)
    2cc0:	3c01c248 	lui	at,0xc248
    2cc4:	44810000 	mtc1	at,$f0
    2cc8:	3c014248 	lui	at,0x4248
    2ccc:	44819000 	mtc1	at,$f18
    2cd0:	3c0141f0 	lui	at,0x41f0
    2cd4:	44814000 	mtc1	at,$f8
    2cd8:	c6060200 	lwc1	$f6,512(s0)
    2cdc:	c60401fc 	lwc1	$f4,508(s0)
    2ce0:	c6100204 	lwc1	$f16,516(s0)
    2ce4:	46083280 	add.s	$f10,$f6,$f8
    2ce8:	e6000680 	swc1	$f0,1664(s0)
    2cec:	e6000688 	swc1	$f0,1672(s0)
    2cf0:	e6120684 	swc1	$f18,1668(s0)
    2cf4:	e60a0690 	swc1	$f10,1680(s0)
    2cf8:	e604068c 	swc1	$f4,1676(s0)
    2cfc:	e6100694 	swc1	$f16,1684(s0)
    2d00:	8fa40054 	lw	a0,84(sp)
    2d04:	0c000000 	jal	0 <func_808D6870>
    2d08:	8e0501cc 	lw	a1,460(s0)
    2d0c:	10400008 	beqz	v0,2d30 <L808D94C4+0xdc>
    2d10:	8fa40054 	lw	a0,84(sp)
    2d14:	3c050601 	lui	a1,0x601
    2d18:	24a5f19c 	addiu	a1,a1,-3684
    2d1c:	0c000000 	jal	0 <func_808D6870>
    2d20:	24060000 	li	a2,0
    2d24:	240c0002 	li	t4,2
    2d28:	a60c0678 	sh	t4,1656(s0)
    2d2c:	ae000674 	sw	zero,1652(s0)
    2d30:	10000572 	b	42fc <L808DAB60+0xc>
    2d34:	86040678 	lh	a0,1656(s0)

00002d38 <L808D95A8>:
    2d38:	3c01c2c8 	lui	at,0xc2c8
    2d3c:	44819000 	mtc1	at,$f18
    2d40:	3c0141a0 	lui	at,0x41a0
    2d44:	44812000 	mtc1	at,$f4
    2d48:	3c01c302 	lui	at,0xc302
    2d4c:	44813000 	mtc1	at,$f6
    2d50:	3c014220 	lui	at,0x4220
    2d54:	e6120680 	swc1	$f18,1664(s0)
    2d58:	44819000 	mtc1	at,$f18
    2d5c:	c6100204 	lwc1	$f16,516(s0)
    2d60:	8e0e0674 	lw	t6,1652(s0)
    2d64:	e6040684 	swc1	$f4,1668(s0)
    2d68:	46128100 	add.s	$f4,$f16,$f18
    2d6c:	c60801fc 	lwc1	$f8,508(s0)
    2d70:	c60a0200 	lwc1	$f10,512(s0)
    2d74:	240d000d 	li	t5,13
    2d78:	2dc1001e 	sltiu	at,t6,30
    2d7c:	a20d01a0 	sb	t5,416(s0)
    2d80:	e6040694 	swc1	$f4,1684(s0)
    2d84:	e6060688 	swc1	$f6,1672(s0)
    2d88:	e608068c 	swc1	$f8,1676(s0)
    2d8c:	1420000c 	bnez	at,2dc0 <L808D95A8+0x88>
    2d90:	e60a0690 	swc1	$f10,1680(s0)
    2d94:	240f0003 	li	t7,3
    2d98:	a60f0678 	sh	t7,1656(s0)
    2d9c:	ae000674 	sw	zero,1652(s0)
    2da0:	8fa400b4 	lw	a0,180(sp)
    2da4:	240570ce 	li	a1,28878
    2da8:	0c000000 	jal	0 <func_808D6870>
    2dac:	00003025 	move	a2,zero
    2db0:	3c01447a 	lui	at,0x447a
    2db4:	44813000 	mtc1	at,$f6
    2db8:	00000000 	nop
    2dbc:	e60601cc 	swc1	$f6,460(s0)
    2dc0:	861801a2 	lh	t8,418(s0)
    2dc4:	02002025 	move	a0,s0
    2dc8:	3319001f 	andi	t9,t8,0x1f
    2dcc:	17200003 	bnez	t9,2ddc <L808D95A8+0xa4>
    2dd0:	00000000 	nop
    2dd4:	0c000000 	jal	0 <func_808D6870>
    2dd8:	240539d1 	li	a1,14801
    2ddc:	10000547 	b	42fc <L808DAB60+0xc>
    2de0:	86040678 	lh	a0,1656(s0)

00002de4 <L808D9654>:
    2de4:	3c0142c8 	lui	at,0x42c8
    2de8:	44814000 	mtc1	at,$f8
    2dec:	c60001cc 	lwc1	$f0,460(s0)
    2df0:	2409000e 	li	t1,14
    2df4:	a20901a0 	sb	t1,416(s0)
    2df8:	4600403c 	c.lt.s	$f8,$f0
    2dfc:	00000000 	nop
    2e00:	4502000a 	bc1fl	2e2c <L808D9654+0x48>
    2e04:	c6120200 	lwc1	$f18,512(s0)
    2e08:	860a01a2 	lh	t2,418(s0)
    2e0c:	02002025 	move	a0,s0
    2e10:	314b001f 	andi	t3,t2,0x1f
    2e14:	55600005 	bnezl	t3,2e2c <L808D9654+0x48>
    2e18:	c6120200 	lwc1	$f18,512(s0)
    2e1c:	0c000000 	jal	0 <func_808D6870>
    2e20:	240539d1 	li	a1,14801
    2e24:	c60001cc 	lwc1	$f0,460(s0)
    2e28:	c6120200 	lwc1	$f18,512(s0)
    2e2c:	c61001fc 	lwc1	$f16,508(s0)
    2e30:	3c0140e0 	lui	at,0x40e0
    2e34:	44817000 	mtc1	at,$f14
    2e38:	3c014250 	lui	at,0x4250
    2e3c:	44816000 	mtc1	at,$f12
    2e40:	3c01c170 	lui	at,0xc170
    2e44:	44815000 	mtc1	at,$f10
    2e48:	3c0140a0 	lui	at,0x40a0
    2e4c:	44814000 	mtc1	at,$f8
    2e50:	3c0141f0 	lui	at,0x41f0
    2e54:	44813000 	mtc1	at,$f6
    2e58:	46088201 	sub.s	$f8,$f16,$f8
    2e5c:	c6100204 	lwc1	$f16,516(s0)
    2e60:	3c014120 	lui	at,0x4120
    2e64:	46069180 	add.s	$f6,$f18,$f6
    2e68:	44819000 	mtc1	at,$f18
    2e6c:	3c0142c8 	lui	at,0x42c8
    2e70:	44812000 	mtc1	at,$f4
    2e74:	46123481 	sub.s	$f18,$f6,$f18
    2e78:	e60e0680 	swc1	$f14,1664(s0)
    2e7c:	e60c0684 	swc1	$f12,1668(s0)
    2e80:	4600203c 	c.lt.s	$f4,$f0
    2e84:	e60a0688 	swc1	$f10,1672(s0)
    2e88:	e608068c 	swc1	$f8,1676(s0)
    2e8c:	e6120690 	swc1	$f18,1680(s0)
    2e90:	45000019 	bc1f	2ef8 <L808D9654+0x114>
    2e94:	e6100694 	swc1	$f16,1684(s0)
    2e98:	8e0c0674 	lw	t4,1652(s0)
    2e9c:	8fa400b4 	lw	a0,180(sp)
    2ea0:	2d810065 	sltiu	at,t4,101
    2ea4:	54200015 	bnezl	at,2efc <L808D9654+0x118>
    2ea8:	3c014180 	lui	at,0x4180
    2eac:	0c000000 	jal	0 <func_808D6870>
    2eb0:	248420d8 	addiu	a0,a0,8408
    2eb4:	14400010 	bnez	v0,2ef8 <L808D9654+0x114>
    2eb8:	8fa40054 	lw	a0,84(sp)
    2ebc:	3c050601 	lui	a1,0x601
    2ec0:	24a5b668 	addiu	a1,a1,-18840
    2ec4:	0c000000 	jal	0 <func_808D6870>
    2ec8:	24060000 	li	a2,0
    2ecc:	3c040601 	lui	a0,0x601
    2ed0:	0c000000 	jal	0 <func_808D6870>
    2ed4:	2484b668 	addiu	a0,a0,-18840
    2ed8:	44825000 	mtc1	v0,$f10
    2edc:	02002025 	move	a0,s0
    2ee0:	240539d2 	li	a1,14802
    2ee4:	46805420 	cvt.s.w	$f16,$f10
    2ee8:	0c000000 	jal	0 <func_808D6870>
    2eec:	e61001cc 	swc1	$f16,460(s0)
    2ef0:	10000057 	b	3050 <L808D9654+0x26c>
    2ef4:	00000000 	nop
    2ef8:	3c014180 	lui	at,0x4180
    2efc:	44812000 	mtc1	at,$f4
    2f00:	c61201cc 	lwc1	$f18,460(s0)
    2f04:	8fa40054 	lw	a0,84(sp)
    2f08:	46049181 	sub.s	$f6,$f18,$f4
    2f0c:	44053000 	mfc1	a1,$f6
    2f10:	0c000000 	jal	0 <func_808D6870>
    2f14:	00000000 	nop
    2f18:	10400041 	beqz	v0,3020 <L808D9654+0x23c>
    2f1c:	00001025 	move	v0,zero
    2f20:	3c0140a0 	lui	at,0x40a0
    2f24:	44816000 	mtc1	at,$f12
    2f28:	0c000000 	jal	0 <func_808D6870>
    2f2c:	a7a200ae 	sh	v0,174(sp)
    2f30:	3c013fc0 	lui	at,0x3fc0
    2f34:	44816000 	mtc1	at,$f12
    2f38:	0c000000 	jal	0 <func_808D6870>
    2f3c:	e7a00098 	swc1	$f0,152(sp)
    2f40:	3c013f80 	lui	at,0x3f80
    2f44:	44814000 	mtc1	at,$f8
    2f48:	3c0140a0 	lui	at,0x40a0
    2f4c:	44816000 	mtc1	at,$f12
    2f50:	46080280 	add.s	$f10,$f0,$f8
    2f54:	0c000000 	jal	0 <func_808D6870>
    2f58:	e7aa009c 	swc1	$f10,156(sp)
    2f5c:	3c014000 	lui	at,0x4000
    2f60:	44818000 	mtc1	at,$f16
    2f64:	44801000 	mtc1	zero,$f2
    2f68:	3c01bf80 	lui	at,0xbf80
    2f6c:	46100480 	add.s	$f18,$f0,$f16
    2f70:	44812000 	mtc1	at,$f4
    2f74:	e7a2008c 	swc1	$f2,140(sp)
    2f78:	e7a20094 	swc1	$f2,148(sp)
    2f7c:	e7b200a0 	swc1	$f18,160(sp)
    2f80:	e7a40090 	swc1	$f4,144(sp)
    2f84:	c6060208 	lwc1	$f6,520(s0)
    2f88:	3c014120 	lui	at,0x4120
    2f8c:	44815000 	mtc1	at,$f10
    2f90:	e7a60080 	swc1	$f6,128(sp)
    2f94:	c608020c 	lwc1	$f8,524(s0)
    2f98:	3c014248 	lui	at,0x4248
    2f9c:	44816000 	mtc1	at,$f12
    2fa0:	460a4401 	sub.s	$f16,$f8,$f10
    2fa4:	e7b00084 	swc1	$f16,132(sp)
    2fa8:	c6120210 	lwc1	$f18,528(s0)
    2fac:	0c000000 	jal	0 <func_808D6870>
    2fb0:	e7b20088 	swc1	$f18,136(sp)
    2fb4:	4600010d 	trunc.w.s	$f4,$f0
    2fb8:	3c0d0000 	lui	t5,0x0
    2fbc:	3c0e0000 	lui	t6,0x0
    2fc0:	25ce0000 	addiu	t6,t6,0
    2fc4:	44182000 	mfc1	t8,$f4
    2fc8:	25ad0000 	addiu	t5,t5,0
    2fcc:	240b0011 	li	t3,17
    2fd0:	0018cc00 	sll	t9,t8,0x10
    2fd4:	00194c03 	sra	t1,t9,0x10
    2fd8:	252a0032 	addiu	t2,t1,50
    2fdc:	afaa0018 	sw	t2,24(sp)
    2fe0:	afab0020 	sw	t3,32(sp)
    2fe4:	afad0010 	sw	t5,16(sp)
    2fe8:	afae0014 	sw	t6,20(sp)
    2fec:	8fa400b4 	lw	a0,180(sp)
    2ff0:	27a50080 	addiu	a1,sp,128
    2ff4:	27a60098 	addiu	a2,sp,152
    2ff8:	27a7008c 	addiu	a3,sp,140
    2ffc:	0c000000 	jal	0 <func_808D6870>
    3000:	afa0001c 	sw	zero,28(sp)
    3004:	87a200ae 	lh	v0,174(sp)
    3008:	24420001 	addiu	v0,v0,1
    300c:	00021400 	sll	v0,v0,0x10
    3010:	00021403 	sra	v0,v0,0x10
    3014:	28410028 	slti	at,v0,40
    3018:	5420ffc2 	bnezl	at,2f24 <L808D9654+0x140>
    301c:	3c0140a0 	lui	at,0x40a0
    3020:	8fa40054 	lw	a0,84(sp)
    3024:	0c000000 	jal	0 <func_808D6870>
    3028:	8e0501cc 	lw	a1,460(s0)
    302c:	10400008 	beqz	v0,3050 <L808D9654+0x26c>
    3030:	8fa40054 	lw	a0,84(sp)
    3034:	3c050601 	lui	a1,0x601
    3038:	24a5be38 	addiu	a1,a1,-16840
    303c:	0c000000 	jal	0 <func_808D6870>
    3040:	24060000 	li	a2,0
    3044:	240c0004 	li	t4,4
    3048:	a60c0678 	sh	t4,1656(s0)
    304c:	ae000674 	sw	zero,1652(s0)
    3050:	100004aa 	b	42fc <L808DAB60+0xc>
    3054:	86040678 	lh	a0,1656(s0)

00003058 <L808D98C8>:
    3058:	8e0e0674 	lw	t6,1652(s0)
    305c:	240d000e 	li	t5,14
    3060:	2401001e 	li	at,30
    3064:	15c10008 	bne	t6,at,3088 <L808D98C8+0x30>
    3068:	a20d01a0 	sb	t5,416(s0)
    306c:	8fa400b4 	lw	a0,180(sp)
    3070:	240570cf 	li	a1,28879
    3074:	0c000000 	jal	0 <func_808D6870>
    3078:	00003025 	move	a2,zero
    307c:	240f0005 	li	t7,5
    3080:	a60f0678 	sh	t7,1656(s0)
    3084:	ae000674 	sw	zero,1652(s0)
    3088:	1000049c 	b	42fc <L808DAB60+0xc>
    308c:	86040678 	lh	a0,1656(s0)

00003090 <L808D9900>:
    3090:	8e190674 	lw	t9,1652(s0)
    3094:	2418000e 	li	t8,14
    3098:	a21801a0 	sb	t8,416(s0)
    309c:	2f210047 	sltiu	at,t9,71
    30a0:	1420004e 	bnez	at,31dc <L808D9900+0x14c>
    30a4:	8fa400b4 	lw	a0,180(sp)
    30a8:	0c000000 	jal	0 <func_808D6870>
    30ac:	248420d8 	addiu	a0,a0,8408
    30b0:	1440004a 	bnez	v0,31dc <L808D9900+0x14c>
    30b4:	24090006 	li	t1,6
    30b8:	a6090678 	sh	t1,1656(s0)
    30bc:	ae000674 	sw	zero,1652(s0)
    30c0:	3c050601 	lui	a1,0x601
    30c4:	24a50298 	addiu	a1,a1,664
    30c8:	8fa40054 	lw	a0,84(sp)
    30cc:	0c000000 	jal	0 <func_808D6870>
    30d0:	24060000 	li	a2,0
    30d4:	3c040601 	lui	a0,0x601
    30d8:	0c000000 	jal	0 <func_808D6870>
    30dc:	24840298 	addiu	a0,a0,664
    30e0:	44829000 	mtc1	v0,$f18
    30e4:	c61001fc 	lwc1	$f16,508(s0)
    30e8:	c60e0200 	lwc1	$f14,512(s0)
    30ec:	468094a0 	cvt.s.w	$f18,$f18
    30f0:	c60c0680 	lwc1	$f12,1664(s0)
    30f4:	3c014140 	lui	at,0x4140
    30f8:	44815000 	mtc1	at,$f10
    30fc:	c6080684 	lwc1	$f8,1668(s0)
    3100:	3c0140e0 	lui	at,0x40e0
    3104:	44813000 	mtc1	at,$f6
    3108:	e61201cc 	swc1	$f18,460(s0)
    310c:	3c010000 	lui	at,0x0
    3110:	46066301 	sub.s	$f12,$f12,$f6
    3114:	c4320000 	lwc1	$f18,0(at)
    3118:	c6040688 	lwc1	$f4,1672(s0)
    311c:	3c01428c 	lui	at,0x428c
    3120:	44811000 	mtc1	at,$f2
    3124:	46006305 	abs.s	$f12,$f12
    3128:	460a4201 	sub.s	$f8,$f8,$f10
    312c:	e60206c4 	swc1	$f2,1732(s0)
    3130:	c60206c4 	lwc1	$f2,1732(s0)
    3134:	c6000204 	lwc1	$f0,516(s0)
    3138:	3c0140a0 	lui	at,0x40a0
    313c:	46004205 	abs.s	$f8,$f8
    3140:	46022081 	sub.s	$f2,$f4,$f2
    3144:	44812000 	mtc1	at,$f4
    3148:	3c0141f0 	lui	at,0x41f0
    314c:	e60006dc 	swc1	$f0,1756(s0)
    3150:	46048101 	sub.s	$f4,$f16,$f4
    3154:	44818000 	mtc1	at,$f16
    3158:	c600068c 	lwc1	$f0,1676(s0)
    315c:	3c014120 	lui	at,0x4120
    3160:	46107400 	add.s	$f16,$f14,$f16
    3164:	44817000 	mtc1	at,$f14
    3168:	e60406d4 	swc1	$f4,1748(s0)
    316c:	c60406d4 	lwc1	$f4,1748(s0)
    3170:	460e8381 	sub.s	$f14,$f16,$f14
    3174:	44808000 	mtc1	zero,$f16
    3178:	e61206f0 	swc1	$f18,1776(s0)
    317c:	c6120690 	lwc1	$f18,1680(s0)
    3180:	46001085 	abs.s	$f2,$f2
    3184:	46040101 	sub.s	$f4,$f0,$f4
    3188:	e60e06d8 	swc1	$f14,1752(s0)
    318c:	c60e06d8 	lwc1	$f14,1752(s0)
    3190:	c6000694 	lwc1	$f0,1684(s0)
    3194:	46002105 	abs.s	$f4,$f4
    3198:	460e9381 	sub.s	$f14,$f18,$f14
    319c:	c61206dc 	lwc1	$f18,1756(s0)
    31a0:	e61006ec 	swc1	$f16,1772(s0)
    31a4:	e60606bc 	swc1	$f6,1724(s0)
    31a8:	46007385 	abs.s	$f14,$f14
    31ac:	46120481 	sub.s	$f18,$f0,$f18
    31b0:	e60a06c0 	swc1	$f10,1728(s0)
    31b4:	e60c06a4 	swc1	$f12,1700(s0)
    31b8:	e60806a8 	swc1	$f8,1704(s0)
    31bc:	46009485 	abs.s	$f18,$f18
    31c0:	e60206ac 	swc1	$f2,1708(s0)
    31c4:	e60406b0 	swc1	$f4,1712(s0)
    31c8:	e60e06b4 	swc1	$f14,1716(s0)
    31cc:	e61206b8 	swc1	$f18,1720(s0)
    31d0:	02002025 	move	a0,s0
    31d4:	0c000000 	jal	0 <func_808D6870>
    31d8:	240539d3 	li	a1,14803
    31dc:	10000447 	b	42fc <L808DAB60+0xc>
    31e0:	86040678 	lh	a0,1656(s0)

000031e4 <L808D9A54>:
    31e4:	240a000e 	li	t2,14
    31e8:	a20a01a0 	sb	t2,416(s0)
    31ec:	240b0001 	li	t3,1
    31f0:	3c053e4c 	lui	a1,0x3e4c
    31f4:	3c073c23 	lui	a3,0x3c23
    31f8:	a3ab00ad 	sb	t3,173(sp)
    31fc:	34e7d70a 	ori	a3,a3,0xd70a
    3200:	34a5cccd 	ori	a1,a1,0xcccd
    3204:	260406ec 	addiu	a0,s0,1772
    3208:	0c000000 	jal	0 <func_808D6870>
    320c:	3c063f80 	lui	a2,0x3f80
    3210:	8fa40054 	lw	a0,84(sp)
    3214:	0c000000 	jal	0 <func_808D6870>
    3218:	8e0501cc 	lw	a1,460(s0)
    321c:	10400014 	beqz	v0,3270 <L808D9A54+0x8c>
    3220:	8fa40054 	lw	a0,84(sp)
    3224:	3c050601 	lui	a1,0x601
    3228:	24a50514 	addiu	a1,a1,1300
    322c:	0c000000 	jal	0 <func_808D6870>
    3230:	24060000 	li	a2,0
    3234:	3c01447a 	lui	at,0x447a
    3238:	44800000 	mtc1	zero,$f0
    323c:	44813000 	mtc1	at,$f6
    3240:	240c0007 	li	t4,7
    3244:	240d000f 	li	t5,15
    3248:	a60c0678 	sh	t4,1656(s0)
    324c:	ae000674 	sw	zero,1652(s0)
    3250:	a60002e8 	sh	zero,744(s0)
    3254:	a20d01a0 	sb	t5,416(s0)
    3258:	e6000508 	swc1	$f0,1288(s0)
    325c:	e60601cc 	swc1	$f6,460(s0)
    3260:	8fae00b4 	lw	t6,180(sp)
    3264:	3c010001 	lui	at,0x1
    3268:	002e0821 	addu	at,at,t6
    326c:	e4200afc 	swc1	$f0,2812(at)
    3270:	10000422 	b	42fc <L808DAB60+0xc>
    3274:	86040678 	lh	a0,1656(s0)

00003278 <L808D9AE8>:
    3278:	8e030674 	lw	v1,1652(s0)
    327c:	8faf00b4 	lw	t7,180(sp)
    3280:	24180008 	li	t8,8
    3284:	2c61000a 	sltiu	at,v1,10
    3288:	50200007 	beqzl	at,32a8 <L808D9AE8+0x30>
    328c:	2401001e 	li	at,30
    3290:	44804000 	mtc1	zero,$f8
    3294:	3c010001 	lui	at,0x1
    3298:	002f0821 	addu	at,at,t7
    329c:	e4280afc 	swc1	$f8,2812(at)
    32a0:	8e030674 	lw	v1,1652(s0)
    32a4:	2401001e 	li	at,30
    32a8:	54610028 	bnel	v1,at,334c <L808D9B34+0x88>
    32ac:	2419000f 	li	t9,15
    32b0:	44805000 	mtc1	zero,$f10
    32b4:	a6180678 	sh	t8,1656(s0)
    32b8:	ae000674 	sw	zero,1652(s0)
    32bc:	10000022 	b	3348 <L808D9B34+0x84>
    32c0:	e60a070c 	swc1	$f10,1804(s0)

000032c4 <L808D9B34>:
    32c4:	3c01c270 	lui	at,0xc270
    32c8:	44818000 	mtc1	at,$f16
    32cc:	3c0142a0 	lui	at,0x42a0
    32d0:	44819000 	mtc1	at,$f18
    32d4:	3c01c302 	lui	at,0xc302
    32d8:	44812000 	mtc1	at,$f4
    32dc:	8e040674 	lw	a0,1652(s0)
    32e0:	3c01428c 	lui	at,0x428c
    32e4:	44813000 	mtc1	at,$f6
    32e8:	00800821 	move	at,a0
    32ec:	00042080 	sll	a0,a0,0x2
    32f0:	00812023 	subu	a0,a0,at
    32f4:	000420c0 	sll	a0,a0,0x3
    32f8:	00812021 	addu	a0,a0,at
    32fc:	00042080 	sll	a0,a0,0x2
    3300:	44800000 	mtc1	zero,$f0
    3304:	00812023 	subu	a0,a0,at
    3308:	00042200 	sll	a0,a0,0x8
    330c:	00042400 	sll	a0,a0,0x10
    3310:	00042403 	sra	a0,a0,0x10
    3314:	e6100680 	swc1	$f16,1664(s0)
    3318:	e6120684 	swc1	$f18,1668(s0)
    331c:	e6040688 	swc1	$f4,1672(s0)
    3320:	e6060694 	swc1	$f6,1684(s0)
    3324:	e600068c 	swc1	$f0,1676(s0)
    3328:	0c000000 	jal	0 <func_808D6870>
    332c:	e6000690 	swc1	$f0,1680(s0)
    3330:	3c010000 	lui	at,0x0
    3334:	c4280000 	lwc1	$f8,0(at)
    3338:	24042098 	li	a0,8344
    333c:	46080282 	mul.s	$f10,$f0,$f8
    3340:	0c000000 	jal	0 <func_808D6870>
    3344:	e60a070c 	swc1	$f10,1804(s0)
    3348:	2419000f 	li	t9,15
    334c:	a21901a0 	sb	t9,416(s0)
    3350:	02002025 	move	a0,s0
    3354:	0c000000 	jal	0 <func_808D6870>
    3358:	24053163 	li	a1,12643
    335c:	24020001 	li	v0,1
    3360:	2403000a 	li	v1,10
    3364:	00024840 	sll	t1,v0,0x1
    3368:	24420001 	addiu	v0,v0,1
    336c:	00021400 	sll	v0,v0,0x10
    3370:	00021403 	sra	v0,v0,0x10
    3374:	2841000f 	slti	at,v0,15
    3378:	02095021 	addu	t2,s0,t1
    337c:	1420fff9 	bnez	at,3364 <L808D9B34+0xa0>
    3380:	a54304e4 	sh	v1,1252(t2)
    3384:	240b4e20 	li	t3,20000
    3388:	3c063d4c 	lui	a2,0x3d4c
    338c:	3c073dcc 	lui	a3,0x3dcc
    3390:	a60b02e6 	sh	t3,742(s0)
    3394:	34e7cccd 	ori	a3,a3,0xcccd
    3398:	34c6cccd 	ori	a2,a2,0xcccd
    339c:	26040508 	addiu	a0,s0,1288
    33a0:	0c000000 	jal	0 <func_808D6870>
    33a4:	3c0540a0 	lui	a1,0x40a0
    33a8:	8e0c0674 	lw	t4,1652(s0)
    33ac:	2401001e 	li	at,30
    33b0:	240d0009 	li	t5,9
    33b4:	15810019 	bne	t4,at,341c <L808D9B34+0x158>
    33b8:	3c01c1f0 	lui	at,0xc1f0
    33bc:	44818000 	mtc1	at,$f16
    33c0:	3c014220 	lui	at,0x4220
    33c4:	44819000 	mtc1	at,$f18
    33c8:	3c014270 	lui	at,0x4270
    33cc:	44812000 	mtc1	at,$f4
    33d0:	3c0143f6 	lui	at,0x43f6
    33d4:	44813000 	mtc1	at,$f6
    33d8:	3c01422c 	lui	at,0x422c
    33dc:	44814000 	mtc1	at,$f8
    33e0:	3c014411 	lui	at,0x4411
    33e4:	44815000 	mtc1	at,$f10
    33e8:	3c014120 	lui	at,0x4120
    33ec:	e6100680 	swc1	$f16,1664(s0)
    33f0:	e6120684 	swc1	$f18,1668(s0)
    33f4:	44808000 	mtc1	zero,$f16
    33f8:	44819000 	mtc1	at,$f18
    33fc:	a60d0678 	sh	t5,1656(s0)
    3400:	ae000674 	sw	zero,1652(s0)
    3404:	e6040688 	swc1	$f4,1672(s0)
    3408:	e606068c 	swc1	$f6,1676(s0)
    340c:	e6080690 	swc1	$f8,1680(s0)
    3410:	e60a0694 	swc1	$f10,1684(s0)
    3414:	e61006ec 	swc1	$f16,1772(s0)
    3418:	e6120710 	swc1	$f18,1808(s0)
    341c:	100003b7 	b	42fc <L808DAB60+0xc>
    3420:	86040678 	lh	a0,1656(s0)

00003424 <L808D9C94>:
    3424:	02002025 	move	a0,s0
    3428:	0c000000 	jal	0 <func_808D6870>
    342c:	24053163 	li	a1,12643
    3430:	8e030674 	lw	v1,1652(s0)
    3434:	24010002 	li	at,2
    3438:	8fa400b4 	lw	a0,180(sp)
    343c:	14610004 	bne	v1,at,3450 <L808D9C94+0x2c>
    3440:	02002825 	move	a1,s0
    3444:	0c000000 	jal	0 <func_808D6870>
    3448:	24060039 	li	a2,57
    344c:	8e030674 	lw	v1,1652(s0)
    3450:	2c610033 	sltiu	at,v1,51
    3454:	1420003a 	bnez	at,3540 <L808D9C94+0x11c>
    3458:	26040710 	addiu	a0,s0,1808
    345c:	3c063e4c 	lui	a2,0x3e4c
    3460:	34c6cccd 	ori	a2,a2,0xcccd
    3464:	0c000000 	jal	0 <func_808D6870>
    3468:	3c053f80 	lui	a1,0x3f80
    346c:	3c0141f0 	lui	at,0x41f0
    3470:	44813000 	mtc1	at,$f6
    3474:	c60406ec 	lwc1	$f4,1772(s0)
    3478:	3c063d4c 	lui	a2,0x3d4c
    347c:	34c6cccd 	ori	a2,a2,0xcccd
    3480:	46062202 	mul.s	$f8,$f4,$f6
    3484:	26040680 	addiu	a0,s0,1664
    3488:	3c054387 	lui	a1,0x4387
    348c:	44074000 	mfc1	a3,$f8
    3490:	0c000000 	jal	0 <func_808D6870>
    3494:	00000000 	nop
    3498:	3c0141a0 	lui	at,0x41a0
    349c:	44818000 	mtc1	at,$f16
    34a0:	c60a06ec 	lwc1	$f10,1772(s0)
    34a4:	3c063d4c 	lui	a2,0x3d4c
    34a8:	34c6cccd 	ori	a2,a2,0xcccd
    34ac:	46105482 	mul.s	$f18,$f10,$f16
    34b0:	26040688 	addiu	a0,s0,1672
    34b4:	3c054382 	lui	a1,0x4382
    34b8:	44079000 	mfc1	a3,$f18
    34bc:	0c000000 	jal	0 <func_808D6870>
    34c0:	00000000 	nop
    34c4:	3c0140c0 	lui	at,0x40c0
    34c8:	44813000 	mtc1	at,$f6
    34cc:	c60406ec 	lwc1	$f4,1772(s0)
    34d0:	3c063d4c 	lui	a2,0x3d4c
    34d4:	34c6cccd 	ori	a2,a2,0xcccd
    34d8:	46062202 	mul.s	$f8,$f4,$f6
    34dc:	26040690 	addiu	a0,s0,1680
    34e0:	3c0542ce 	lui	a1,0x42ce
    34e4:	44074000 	mfc1	a3,$f8
    34e8:	0c000000 	jal	0 <func_808D6870>
    34ec:	00000000 	nop
    34f0:	3c0141a0 	lui	at,0x41a0
    34f4:	44818000 	mtc1	at,$f16
    34f8:	c60a06ec 	lwc1	$f10,1772(s0)
    34fc:	3c063d4c 	lui	a2,0x3d4c
    3500:	34c6cccd 	ori	a2,a2,0xcccd
    3504:	46105482 	mul.s	$f18,$f10,$f16
    3508:	26040694 	addiu	a0,s0,1684
    350c:	3c05438c 	lui	a1,0x438c
    3510:	44079000 	mfc1	a3,$f18
    3514:	0c000000 	jal	0 <func_808D6870>
    3518:	00000000 	nop
    351c:	3c013f80 	lui	at,0x3f80
    3520:	44810000 	mtc1	at,$f0
    3524:	3c073c23 	lui	a3,0x3c23
    3528:	34e7d70a 	ori	a3,a3,0xd70a
    352c:	44050000 	mfc1	a1,$f0
    3530:	44060000 	mfc1	a2,$f0
    3534:	0c000000 	jal	0 <func_808D6870>
    3538:	260406ec 	addiu	a0,s0,1772
    353c:	8e030674 	lw	v1,1652(s0)
    3540:	00032080 	sll	a0,v1,0x2
    3544:	00832023 	subu	a0,a0,v1
    3548:	000420c0 	sll	a0,a0,0x3
    354c:	00832021 	addu	a0,a0,v1
    3550:	00042080 	sll	a0,a0,0x2
    3554:	00832023 	subu	a0,a0,v1
    3558:	00042200 	sll	a0,a0,0x8
    355c:	00042400 	sll	a0,a0,0x10
    3560:	0c000000 	jal	0 <func_808D6870>
    3564:	00042403 	sra	a0,a0,0x10
    3568:	c6040710 	lwc1	$f4,1808(s0)
    356c:	24042098 	li	a0,8344
    3570:	46040182 	mul.s	$f6,$f0,$f4
    3574:	0c000000 	jal	0 <func_808D6870>
    3578:	e606070c 	swc1	$f6,1804(s0)
    357c:	8e0e0674 	lw	t6,1652(s0)
    3580:	240f0001 	li	t7,1
    3584:	24190010 	li	t9,16
    3588:	2dc10064 	sltiu	at,t6,100
    358c:	10200005 	beqz	at,35a4 <L808D9C94+0x180>
    3590:	24090002 	li	t1,2
    3594:	2418000f 	li	t8,15
    3598:	a20f071b 	sb	t7,1819(s0)
    359c:	10000003 	b	35ac <L808D9C94+0x188>
    35a0:	a21801a0 	sb	t8,416(s0)
    35a4:	a21901a0 	sb	t9,416(s0)
    35a8:	a209071b 	sb	t1,1819(s0)
    35ac:	8e030674 	lw	v1,1652(s0)
    35b0:	26040714 	addiu	a0,s0,1812
    35b4:	3c05437f 	lui	a1,0x437f
    35b8:	2c610082 	sltiu	at,v1,130
    35bc:	14200004 	bnez	at,35d0 <L808D9C94+0x1ac>
    35c0:	3c063f80 	lui	a2,0x3f80
    35c4:	0c000000 	jal	0 <func_808D6870>
    35c8:	3c0740a0 	lui	a3,0x40a0
    35cc:	8e030674 	lw	v1,1652(s0)
    35d0:	240100b4 	li	at,180
    35d4:	1461000f 	bne	v1,at,3614 <L808D9C94+0x1f0>
    35d8:	8fab00b4 	lw	t3,180(sp)
    35dc:	3c010001 	lui	at,0x1
    35e0:	002b0821 	addu	at,at,t3
    35e4:	240a0014 	li	t2,20
    35e8:	a02a1e15 	sb	t2,7701(at)
    35ec:	8fad00b4 	lw	t5,180(sp)
    35f0:	3c010001 	lui	at,0x1
    35f4:	240c043f 	li	t4,1087
    35f8:	002d0821 	addu	at,at,t5
    35fc:	a42c1e1a 	sh	t4,7706(at)
    3600:	8faf00b4 	lw	t7,180(sp)
    3604:	3c010001 	lui	at,0x1
    3608:	240e0005 	li	t6,5
    360c:	002f0821 	addu	at,at,t7
    3610:	a02e1e5e 	sb	t6,7774(at)
    3614:	10000339 	b	42fc <L808DAB60+0xc>
    3618:	86040678 	lh	a0,1656(s0)

0000361c <L808D9E8C>:
    361c:	8fa400b4 	lw	a0,180(sp)
    3620:	0c000000 	jal	0 <func_808D6870>
    3624:	24851d64 	addiu	a1,a0,7524
    3628:	8fa400b4 	lw	a0,180(sp)
    362c:	02002825 	move	a1,s0
    3630:	0c000000 	jal	0 <func_808D6870>
    3634:	24060008 	li	a2,8
    3638:	0c000000 	jal	0 <func_808D6870>
    363c:	8fa400b4 	lw	a0,180(sp)
    3640:	a602067a 	sh	v0,1658(s0)
    3644:	8fa400b4 	lw	a0,180(sp)
    3648:	00002825 	move	a1,zero
    364c:	0c000000 	jal	0 <func_808D6870>
    3650:	24060001 	li	a2,1
    3654:	8fa400b4 	lw	a0,180(sp)
    3658:	8605067a 	lh	a1,1658(s0)
    365c:	0c000000 	jal	0 <func_808D6870>
    3660:	24060007 	li	a2,7
    3664:	3c050601 	lui	a1,0x601
    3668:	24a5addc 	addiu	a1,a1,-21028
    366c:	8fa40054 	lw	a0,84(sp)
    3670:	0c000000 	jal	0 <func_808D6870>
    3674:	24060000 	li	a2,0
    3678:	3c040601 	lui	a0,0x601
    367c:	0c000000 	jal	0 <func_808D6870>
    3680:	2484ea00 	addiu	a0,a0,-5632
    3684:	44824000 	mtc1	v0,$f8
    3688:	8fa600b4 	lw	a2,180(sp)
    368c:	44800000 	mtc1	zero,$f0
    3690:	468042a0 	cvt.s.w	$f10,$f8
    3694:	24180065 	li	t8,101
    3698:	a6180678 	sh	t8,1656(s0)
    369c:	e600016c 	swc1	$f0,364(s0)
    36a0:	3c010000 	lui	at,0x0
    36a4:	24192000 	li	t9,8192
    36a8:	e60a01cc 	swc1	$f10,460(s0)
    36ac:	c4300000 	lwc1	$f16,0(at)
    36b0:	afb90028 	sw	t9,40(sp)
    36b4:	afa00024 	sw	zero,36(sp)
    36b8:	afa00020 	sw	zero,32(sp)
    36bc:	afa0001c 	sw	zero,28(sp)
    36c0:	02002825 	move	a1,s0
    36c4:	24070179 	li	a3,377
    36c8:	24c41c24 	addiu	a0,a2,7204
    36cc:	e7a00018 	swc1	$f0,24(sp)
    36d0:	e7a00010 	swc1	$f0,16(sp)
    36d4:	0c000000 	jal	0 <func_808D6870>
    36d8:	e7b00014 	swc1	$f16,20(sp)
    36dc:	3c01c3ec 	lui	at,0xc3ec
    36e0:	44810000 	mtc1	at,$f0
    36e4:	3c010000 	lui	at,0x0
    36e8:	c4220000 	lwc1	$f2,0(at)
    36ec:	8fa400a8 	lw	a0,168(sp)
    36f0:	3c080000 	lui	t0,0x0
    36f4:	25080000 	addiu	t0,t0,0
    36f8:	ad020000 	sw	v0,0(t0)
    36fc:	3c010000 	lui	at,0x0
    3700:	e4800024 	swc1	$f0,36(a0)
    3704:	c4320000 	lwc1	$f18,0(at)
    3708:	3c01c302 	lui	at,0xc302
    370c:	44812000 	mtc1	at,$f4
    3710:	24098000 	li	t1,-32768
    3714:	a48900b6 	sh	t1,182(a0)
    3718:	e4920028 	swc1	$f18,40(a0)
    371c:	e484002c 	swc1	$f4,44(a0)
    3720:	3c010000 	lui	at,0x0
    3724:	e6000024 	swc1	$f0,36(s0)
    3728:	c4260000 	lwc1	$f6,0(at)
    372c:	3c01c3c8 	lui	at,0xc3c8
    3730:	44814000 	mtc1	at,$f8
    3734:	3c010000 	lui	at,0x0
    3738:	e6060028 	swc1	$f6,40(s0)
    373c:	e608002c 	swc1	$f8,44(s0)
    3740:	c42a0000 	lwc1	$f10,0(at)
    3744:	3c01c320 	lui	at,0xc320
    3748:	44818000 	mtc1	at,$f16
    374c:	3c01c2c8 	lui	at,0xc2c8
    3750:	44819000 	mtc1	at,$f18
    3754:	3c030000 	lui	v1,0x0
    3758:	24630000 	addiu	v1,v1,0
    375c:	a60000b6 	sh	zero,182(s0)
    3760:	3c01c000 	lui	at,0xc000
    3764:	e6000680 	swc1	$f0,1664(s0)
    3768:	e600068c 	swc1	$f0,1676(s0)
    376c:	e6020684 	swc1	$f2,1668(s0)
    3770:	e6020690 	swc1	$f2,1680(s0)
    3774:	e60a00bc 	swc1	$f10,188(s0)
    3778:	e6100688 	swc1	$f16,1672(s0)
    377c:	e6120694 	swc1	$f18,1684(s0)
    3780:	8c6a0000 	lw	t2,0(v1)
    3784:	44812000 	mtc1	at,$f4
    3788:	3c013e80 	lui	at,0x3e80
    378c:	44813000 	mtc1	at,$f6
    3790:	e54416b0 	swc1	$f4,5808(t2)
    3794:	8c6b0000 	lw	t3,0(v1)
    3798:	3c01bf80 	lui	at,0xbf80
    379c:	44814000 	mtc1	at,$f8
    37a0:	e56616b4 	swc1	$f6,5812(t3)
    37a4:	8c6c0000 	lw	t4,0(v1)
    37a8:	44805000 	mtc1	zero,$f10
    37ac:	3c010000 	lui	at,0x0
    37b0:	e58816b8 	swc1	$f8,5816(t4)
    37b4:	8c6d0000 	lw	t5,0(v1)
    37b8:	240f0014 	li	t7,20
    37bc:	e5aa16d0 	swc1	$f10,5840(t5)
    37c0:	8c6e0000 	lw	t6,0(v1)
    37c4:	c4300000 	lwc1	$f16,0(at)
    37c8:	3c01437f 	lui	at,0x437f
    37cc:	44819000 	mtc1	at,$f18
    37d0:	e5d016ac 	swc1	$f16,5804(t6)
    37d4:	8c780000 	lw	t8,0(v1)
    37d8:	3c013f80 	lui	at,0x3f80
    37dc:	44812000 	mtc1	at,$f4
    37e0:	a30f1704 	sb	t7,5892(t8)
    37e4:	e6120714 	swc1	$f18,1812(s0)
    37e8:	8fb900b4 	lw	t9,180(sp)
    37ec:	3c010001 	lui	at,0x1
    37f0:	00390821 	addu	at,at,t9
    37f4:	e4240afc 	swc1	$f4,2812(at)

000037f8 <L808DA068>:
    37f8:	3c010000 	lui	at,0x0
    37fc:	c4260000 	lwc1	$f6,0(at)
    3800:	8fa900a8 	lw	t1,168(sp)
    3804:	26040714 	addiu	a0,s0,1812
    3808:	3c053f80 	lui	a1,0x3f80
    380c:	3c0640a0 	lui	a2,0x40a0
    3810:	0c000000 	jal	0 <func_808D6870>
    3814:	e5260028 	swc1	$f6,40(t1)
    3818:	8e0a0674 	lw	t2,1652(s0)
    381c:	26040688 	addiu	a0,s0,1672
    3820:	3c05c402 	lui	a1,0xc402
    3824:	2d410029 	sltiu	at,t2,41
    3828:	1420003d 	bnez	at,3920 <L808DA068+0x128>
    382c:	3c063dcc 	lui	a2,0x3dcc
    3830:	34c6cccd 	ori	a2,a2,0xcccd
    3834:	0c000000 	jal	0 <func_808D6870>
    3838:	8e0706ec 	lw	a3,1772(s0)
    383c:	3c073dcc 	lui	a3,0x3dcc
    3840:	34e7cccd 	ori	a3,a3,0xcccd
    3844:	260406ec 	addiu	a0,s0,1772
    3848:	3c0540a0 	lui	a1,0x40a0
    384c:	0c000000 	jal	0 <func_808D6870>
    3850:	3c063f80 	lui	a2,0x3f80
    3854:	8e030674 	lw	v1,1652(s0)
    3858:	24010096 	li	at,150
    385c:	02002025 	move	a0,s0
    3860:	14610004 	bne	v1,at,3874 <L808DA068+0x7c>
    3864:	3c013f80 	lui	at,0x3f80
    3868:	44814000 	mtc1	at,$f8
    386c:	8e030674 	lw	v1,1652(s0)
    3870:	e608016c 	swc1	$f8,364(s0)
    3874:	240100a0 	li	at,160
    3878:	54610005 	bnel	v1,at,3890 <L808DA068+0x98>
    387c:	240100bb 	li	at,187
    3880:	0c000000 	jal	0 <func_808D6870>
    3884:	240508c5 	li	a1,2245
    3888:	8e030674 	lw	v1,1652(s0)
    388c:	240100bb 	li	at,187
    3890:	14610004 	bne	v1,at,38a4 <L808DA068+0xac>
    3894:	02002025 	move	a0,s0
    3898:	0c000000 	jal	0 <func_808D6870>
    389c:	2405083e 	li	a1,2110
    38a0:	8e030674 	lw	v1,1652(s0)
    38a4:	240100b4 	li	at,180
    38a8:	14610004 	bne	v1,at,38bc <L808DA068+0xc4>
    38ac:	02002025 	move	a0,s0
    38b0:	0c000000 	jal	0 <func_808D6870>
    38b4:	240528c7 	li	a1,10439
    38b8:	8e030674 	lw	v1,1652(s0)
    38bc:	240100be 	li	at,190
    38c0:	54610013 	bnel	v1,at,3910 <L808DA068+0x118>
    38c4:	240100e6 	li	at,230
    38c8:	8e0c0024 	lw	t4,36(s0)
    38cc:	27a50074 	addiu	a1,sp,116
    38d0:	3c010000 	lui	at,0x0
    38d4:	acac0000 	sw	t4,0(a1)
    38d8:	8e0b0028 	lw	t3,40(s0)
    38dc:	3c063e4c 	lui	a2,0x3e4c
    38e0:	3c073f33 	lui	a3,0x3f33
    38e4:	acab0004 	sw	t3,4(a1)
    38e8:	8e0c002c 	lw	t4,44(s0)
    38ec:	34e73333 	ori	a3,a3,0x3333
    38f0:	34c6cccd 	ori	a2,a2,0xcccd
    38f4:	acac0008 	sw	t4,8(a1)
    38f8:	c42a0000 	lwc1	$f10,0(at)
    38fc:	8fa400b4 	lw	a0,180(sp)
    3900:	0c000000 	jal	0 <func_808D6870>
    3904:	e7aa0078 	swc1	$f10,120(sp)
    3908:	8e030674 	lw	v1,1652(s0)
    390c:	240100e6 	li	at,230
    3910:	14610003 	bne	v1,at,3920 <L808DA068+0x128>
    3914:	240d0066 	li	t5,102
    3918:	a60d0678 	sh	t5,1656(s0)
    391c:	ae000674 	sw	zero,1652(s0)
    3920:	10000276 	b	42fc <L808DAB60+0xc>
    3924:	86040678 	lh	a0,1656(s0)

00003928 <L808DA198>:
    3928:	3c01c3ec 	lui	at,0xc3ec
    392c:	44810000 	mtc1	at,$f0
    3930:	3c010000 	lui	at,0x0
    3934:	c4220000 	lwc1	$f2,0(at)
    3938:	3c01c307 	lui	at,0xc307
    393c:	44816000 	mtc1	at,$f12
    3940:	3c010000 	lui	at,0x0
    3944:	c4300000 	lwc1	$f16,0(at)
    3948:	8fae00a8 	lw	t6,168(sp)
    394c:	3c01c3dd 	lui	at,0xc3dd
    3950:	44819000 	mtc1	at,$f18
    3954:	e5d00028 	swc1	$f16,40(t6)
    3958:	8e030674 	lw	v1,1652(s0)
    395c:	24010005 	li	at,5
    3960:	e600068c 	swc1	$f0,1676(s0)
    3964:	e6020684 	swc1	$f2,1668(s0)
    3968:	e6020690 	swc1	$f2,1680(s0)
    396c:	e60c0688 	swc1	$f12,1672(s0)
    3970:	e60c0694 	swc1	$f12,1684(s0)
    3974:	14610008 	bne	v1,at,3998 <L808DA198+0x70>
    3978:	e6120680 	swc1	$f18,1664(s0)
    397c:	8fa400b4 	lw	a0,180(sp)
    3980:	02002825 	move	a1,s0
    3984:	0c000000 	jal	0 <func_808D6870>
    3988:	2406004c 	li	a2,76
    398c:	3c01c3ec 	lui	at,0xc3ec
    3990:	44810000 	mtc1	at,$f0
    3994:	8e030674 	lw	v1,1652(s0)
    3998:	24010046 	li	at,70
    399c:	14610007 	bne	v1,at,39bc <L808DA198+0x94>
    39a0:	8fa400b4 	lw	a0,180(sp)
    39a4:	02002825 	move	a1,s0
    39a8:	0c000000 	jal	0 <func_808D6870>
    39ac:	2406004d 	li	a2,77
    39b0:	3c01c3ec 	lui	at,0xc3ec
    39b4:	44810000 	mtc1	at,$f0
    39b8:	8e030674 	lw	v1,1652(s0)
    39bc:	2401005a 	li	at,90
    39c0:	14610012 	bne	v1,at,3a0c <L808DA198+0xe4>
    39c4:	3c080000 	lui	t0,0x0
    39c8:	240f0067 	li	t7,103
    39cc:	25080000 	addiu	t0,t0,0
    39d0:	a60f0678 	sh	t7,1656(s0)
    39d4:	ae000674 	sw	zero,1652(s0)
    39d8:	8d180000 	lw	t8,0(t0)
    39dc:	3c014588 	lui	at,0x4588
    39e0:	44812000 	mtc1	at,$f4
    39e4:	e7000024 	swc1	$f0,36(t8)
    39e8:	8d190000 	lw	t9,0(t0)
    39ec:	3c01c348 	lui	at,0xc348
    39f0:	44813000 	mtc1	at,$f6
    39f4:	e7240028 	swc1	$f4,40(t9)
    39f8:	8d090000 	lw	t1,0(t0)
    39fc:	240a0003 	li	t2,3
    3a00:	e526002c 	swc1	$f6,44(t1)
    3a04:	8d0b0000 	lw	t3,0(t0)
    3a08:	a16a03c8 	sb	t2,968(t3)
    3a0c:	1000023b 	b	42fc <L808DAB60+0xc>
    3a10:	86040678 	lh	a0,1656(s0)

00003a14 <L808DA284>:
    3a14:	3c080000 	lui	t0,0x0
    3a18:	25080000 	addiu	t0,t0,0
    3a1c:	8d040000 	lw	a0,0(t0)
    3a20:	0c000000 	jal	0 <func_808D6870>
    3a24:	240520d5 	li	a1,8405
    3a28:	3c080000 	lui	t0,0x0
    3a2c:	25080000 	addiu	t0,t0,0
    3a30:	8d040000 	lw	a0,0(t0)
    3a34:	3c054580 	lui	a1,0x4580
    3a38:	3c063d4c 	lui	a2,0x3d4c
    3a3c:	34c6cccd 	ori	a2,a2,0xcccd
    3a40:	34a53000 	ori	a1,a1,0x3000
    3a44:	3c073fc0 	lui	a3,0x3fc0
    3a48:	0c000000 	jal	0 <func_808D6870>
    3a4c:	24840028 	addiu	a0,a0,40
    3a50:	3c01c372 	lui	at,0xc372
    3a54:	44814000 	mtc1	at,$f8
    3a58:	3c010000 	lui	at,0x0
    3a5c:	3c080000 	lui	t0,0x0
    3a60:	e6080680 	swc1	$f8,1664(s0)
    3a64:	c42a0000 	lwc1	$f10,0(at)
    3a68:	3c01c33e 	lui	at,0xc33e
    3a6c:	44818000 	mtc1	at,$f16
    3a70:	25080000 	addiu	t0,t0,0
    3a74:	e60a0684 	swc1	$f10,1668(s0)
    3a78:	e6100688 	swc1	$f16,1672(s0)
    3a7c:	8d0c0000 	lw	t4,0(t0)
    3a80:	3c014220 	lui	at,0x4220
    3a84:	44813000 	mtc1	at,$f6
    3a88:	c5920024 	lwc1	$f18,36(t4)
    3a8c:	3c0140a0 	lui	at,0x40a0
    3a90:	44815000 	mtc1	at,$f10
    3a94:	e612068c 	swc1	$f18,1676(s0)
    3a98:	8d0d0000 	lw	t5,0(t0)
    3a9c:	8e0f0674 	lw	t7,1652(s0)
    3aa0:	240100c8 	li	at,200
    3aa4:	c5a40028 	lwc1	$f4,40(t5)
    3aa8:	46062200 	add.s	$f8,$f4,$f6
    3aac:	460a4400 	add.s	$f16,$f8,$f10
    3ab0:	e6100690 	swc1	$f16,1680(s0)
    3ab4:	8d0e0000 	lw	t6,0(t0)
    3ab8:	c5d2002c 	lwc1	$f18,44(t6)
    3abc:	15e10009 	bne	t7,at,3ae4 <L808DA284+0xd0>
    3ac0:	e6120694 	swc1	$f18,1684(s0)
    3ac4:	3c010000 	lui	at,0x0
    3ac8:	c4240000 	lwc1	$f4,0(at)
    3acc:	8d180000 	lw	t8,0(t0)
    3ad0:	24190068 	li	t9,104
    3ad4:	e7040028 	swc1	$f4,40(t8)
    3ad8:	a6190678 	sh	t9,1656(s0)
    3adc:	10000003 	b	3aec <L808DA35C>
    3ae0:	ae000674 	sw	zero,1652(s0)
    3ae4:	10000205 	b	42fc <L808DAB60+0xc>
    3ae8:	86040678 	lh	a0,1656(s0)

00003aec <L808DA35C>:
    3aec:	3c01c3d8 	lui	at,0xc3d8
    3af0:	44813000 	mtc1	at,$f6
    3af4:	3c010000 	lui	at,0x0
    3af8:	3c080000 	lui	t0,0x0
    3afc:	e6060680 	swc1	$f6,1664(s0)
    3b00:	c4280000 	lwc1	$f8,0(at)
    3b04:	3c01c348 	lui	at,0xc348
    3b08:	44815000 	mtc1	at,$f10
    3b0c:	25080000 	addiu	t0,t0,0
    3b10:	e6080684 	swc1	$f8,1668(s0)
    3b14:	e60a0688 	swc1	$f10,1672(s0)
    3b18:	8d090000 	lw	t1,0(t0)
    3b1c:	3c014220 	lui	at,0x4220
    3b20:	44812000 	mtc1	at,$f4
    3b24:	c5300024 	lwc1	$f16,36(t1)
    3b28:	3c0140a0 	lui	at,0x40a0
    3b2c:	44814000 	mtc1	at,$f8
    3b30:	e610068c 	swc1	$f16,1676(s0)
    3b34:	8d0a0000 	lw	t2,0(t0)
    3b38:	8e030674 	lw	v1,1652(s0)
    3b3c:	3c063d4c 	lui	a2,0x3d4c
    3b40:	c5520028 	lwc1	$f18,40(t2)
    3b44:	2c61000a 	sltiu	at,v1,10
    3b48:	34c6cccd 	ori	a2,a2,0xcccd
    3b4c:	46049180 	add.s	$f6,$f18,$f4
    3b50:	3c053f80 	lui	a1,0x3f80
    3b54:	46083280 	add.s	$f10,$f6,$f8
    3b58:	e60a0690 	swc1	$f10,1680(s0)
    3b5c:	8d0b0000 	lw	t3,0(t0)
    3b60:	c570002c 	lwc1	$f16,44(t3)
    3b64:	14200009 	bnez	at,3b8c <L808DA35C+0xa0>
    3b68:	e6100694 	swc1	$f16,1684(s0)
    3b6c:	8fa400b4 	lw	a0,180(sp)
    3b70:	3c010001 	lui	at,0x1
    3b74:	34210afc 	ori	at,at,0xafc
    3b78:	0c000000 	jal	0 <func_808D6870>
    3b7c:	00812021 	addu	a0,a0,at
    3b80:	3c080000 	lui	t0,0x0
    3b84:	25080000 	addiu	t0,t0,0
    3b88:	8e030674 	lw	v1,1652(s0)
    3b8c:	2401000a 	li	at,10
    3b90:	14610005 	bne	v1,at,3ba8 <L808DA35C+0xbc>
    3b94:	24180069 	li	t8,105
    3b98:	8d0d0000 	lw	t5,0(t0)
    3b9c:	240c0008 	li	t4,8
    3ba0:	a1ac03c8 	sb	t4,968(t5)
    3ba4:	8e030674 	lw	v1,1652(s0)
    3ba8:	24010032 	li	at,50
    3bac:	54610006 	bnel	v1,at,3bc8 <L808DA35C+0xdc>
    3bb0:	24010064 	li	at,100
    3bb4:	8d0f0000 	lw	t7,0(t0)
    3bb8:	240e0004 	li	t6,4
    3bbc:	a1ee03c8 	sb	t6,968(t7)
    3bc0:	8e030674 	lw	v1,1652(s0)
    3bc4:	24010064 	li	at,100
    3bc8:	14610003 	bne	v1,at,3bd8 <L808DA35C+0xec>
    3bcc:	00000000 	nop
    3bd0:	a6180678 	sh	t8,1656(s0)
    3bd4:	ae000674 	sw	zero,1652(s0)
    3bd8:	100001c8 	b	42fc <L808DAB60+0xc>
    3bdc:	86040678 	lh	a0,1656(s0)

00003be0 <L808DA450>:
    3be0:	3c0140a0 	lui	at,0x40a0
    3be4:	44810000 	mtc1	at,$f0
    3be8:	3c01c3e1 	lui	at,0xc3e1
    3bec:	44819000 	mtc1	at,$f18
    3bf0:	3c010000 	lui	at,0x0
    3bf4:	3c080000 	lui	t0,0x0
    3bf8:	e6120680 	swc1	$f18,1664(s0)
    3bfc:	c4240000 	lwc1	$f4,0(at)
    3c00:	3c01c336 	lui	at,0xc336
    3c04:	44813000 	mtc1	at,$f6
    3c08:	25080000 	addiu	t0,t0,0
    3c0c:	e6040684 	swc1	$f4,1668(s0)
    3c10:	e6060688 	swc1	$f6,1672(s0)
    3c14:	8d190000 	lw	t9,0(t0)
    3c18:	3c014220 	lui	at,0x4220
    3c1c:	44819000 	mtc1	at,$f18
    3c20:	c7280024 	lwc1	$f8,36(t9)
    3c24:	3c0141c8 	lui	at,0x41c8
    3c28:	8e030674 	lw	v1,1652(s0)
    3c2c:	46004281 	sub.s	$f10,$f8,$f0
    3c30:	240570d0 	li	a1,28880
    3c34:	00003025 	move	a2,zero
    3c38:	e60a068c 	swc1	$f10,1676(s0)
    3c3c:	8d090000 	lw	t1,0(t0)
    3c40:	44815000 	mtc1	at,$f10
    3c44:	2401000a 	li	at,10
    3c48:	c5300028 	lwc1	$f16,40(t1)
    3c4c:	46128100 	add.s	$f4,$f16,$f18
    3c50:	46002180 	add.s	$f6,$f4,$f0
    3c54:	e6060690 	swc1	$f6,1680(s0)
    3c58:	8d0a0000 	lw	t2,0(t0)
    3c5c:	c548002c 	lwc1	$f8,44(t2)
    3c60:	460a4401 	sub.s	$f16,$f8,$f10
    3c64:	14610004 	bne	v1,at,3c78 <L808DA450+0x98>
    3c68:	e6100694 	swc1	$f16,1684(s0)
    3c6c:	0c000000 	jal	0 <func_808D6870>
    3c70:	8fa400b4 	lw	a0,180(sp)
    3c74:	8e030674 	lw	v1,1652(s0)
    3c78:	2c610065 	sltiu	at,v1,101
    3c7c:	14200007 	bnez	at,3c9c <L808DA450+0xbc>
    3c80:	8fa400b4 	lw	a0,180(sp)
    3c84:	0c000000 	jal	0 <func_808D6870>
    3c88:	248420d8 	addiu	a0,a0,8408
    3c8c:	14400003 	bnez	v0,3c9c <L808DA450+0xbc>
    3c90:	240b041f 	li	t3,1055
    3c94:	a60b0678 	sh	t3,1656(s0)
    3c98:	ae000674 	sw	zero,1652(s0)
    3c9c:	10000197 	b	42fc <L808DAB60+0xc>
    3ca0:	86040678 	lh	a0,1656(s0)
    3ca4:	8e040674 	lw	a0,1652(s0)
    3ca8:	00800821 	move	at,a0
    3cac:	00042080 	sll	a0,a0,0x2
    3cb0:	00812023 	subu	a0,a0,at
    3cb4:	000420c0 	sll	a0,a0,0x3
    3cb8:	00812021 	addu	a0,a0,at
    3cbc:	00042080 	sll	a0,a0,0x2
    3cc0:	00812023 	subu	a0,a0,at
    3cc4:	00042200 	sll	a0,a0,0x8
    3cc8:	00042400 	sll	a0,a0,0x10
    3ccc:	0c000000 	jal	0 <func_808D6870>
    3cd0:	00042403 	sra	a0,a0,0x10
    3cd4:	3c010000 	lui	at,0x0
    3cd8:	c4320000 	lwc1	$f18,0(at)
    3cdc:	24042098 	li	a0,8344
    3ce0:	46120102 	mul.s	$f4,$f0,$f18
    3ce4:	0c000000 	jal	0 <func_808D6870>
    3ce8:	e604070c 	swc1	$f4,1804(s0)
    3cec:	8e030674 	lw	v1,1652(s0)
    3cf0:	24010014 	li	at,20
    3cf4:	3c080000 	lui	t0,0x0
    3cf8:	14610009 	bne	v1,at,3d20 <L808DA450+0x140>
    3cfc:	25080000 	addiu	t0,t0,0
    3d00:	8d0d0000 	lw	t5,0(t0)
    3d04:	240c0005 	li	t4,5
    3d08:	02002825 	move	a1,s0
    3d0c:	a1ac03c8 	sb	t4,968(t5)
    3d10:	8fa400b4 	lw	a0,180(sp)
    3d14:	0c000000 	jal	0 <func_808D6870>
    3d18:	24060039 	li	a2,57
    3d1c:	8e030674 	lw	v1,1652(s0)
    3d20:	24010028 	li	at,40
    3d24:	14610003 	bne	v1,at,3d34 <L808DA450+0x154>
    3d28:	240e0420 	li	t6,1056
    3d2c:	a60e0678 	sh	t6,1656(s0)
    3d30:	ae000674 	sw	zero,1652(s0)
    3d34:	10000171 	b	42fc <L808DAB60+0xc>
    3d38:	86040678 	lh	a0,1656(s0)
    3d3c:	8e040674 	lw	a0,1652(s0)
    3d40:	00800821 	move	at,a0
    3d44:	00042080 	sll	a0,a0,0x2
    3d48:	00812023 	subu	a0,a0,at
    3d4c:	000420c0 	sll	a0,a0,0x3
    3d50:	00812021 	addu	a0,a0,at
    3d54:	00042080 	sll	a0,a0,0x2
    3d58:	00812023 	subu	a0,a0,at
    3d5c:	00042200 	sll	a0,a0,0x8
    3d60:	00042400 	sll	a0,a0,0x10
    3d64:	0c000000 	jal	0 <func_808D6870>
    3d68:	00042403 	sra	a0,a0,0x10
    3d6c:	3c010000 	lui	at,0x0
    3d70:	c4260000 	lwc1	$f6,0(at)
    3d74:	24042098 	li	a0,8344
    3d78:	46060202 	mul.s	$f8,$f0,$f6
    3d7c:	0c000000 	jal	0 <func_808D6870>
    3d80:	e608070c 	swc1	$f8,1804(s0)
    3d84:	3c010000 	lui	at,0x0
    3d88:	c42a0000 	lwc1	$f10,0(at)
    3d8c:	3c014581 	lui	at,0x4581
    3d90:	44818000 	mtc1	at,$f16
    3d94:	3c01c322 	lui	at,0xc322
    3d98:	44819000 	mtc1	at,$f18
    3d9c:	3c01c3d0 	lui	at,0xc3d0
    3da0:	44812000 	mtc1	at,$f4
    3da4:	3c010000 	lui	at,0x0
    3da8:	e60a0680 	swc1	$f10,1664(s0)
    3dac:	e6100684 	swc1	$f16,1668(s0)
    3db0:	e6120688 	swc1	$f18,1672(s0)
    3db4:	e604068c 	swc1	$f4,1676(s0)
    3db8:	c4260000 	lwc1	$f6,0(at)
    3dbc:	8e0f0674 	lw	t7,1652(s0)
    3dc0:	3c01c296 	lui	at,0xc296
    3dc4:	44814000 	mtc1	at,$f8
    3dc8:	2de10029 	sltiu	at,t7,41
    3dcc:	e6060690 	swc1	$f6,1680(s0)
    3dd0:	14200004 	bnez	at,3de4 <L808DA450+0x204>
    3dd4:	e6080694 	swc1	$f8,1684(s0)
    3dd8:	24180421 	li	t8,1057
    3ddc:	a6180678 	sh	t8,1656(s0)
    3de0:	ae000674 	sw	zero,1652(s0)
    3de4:	10000145 	b	42fc <L808DAB60+0xc>
    3de8:	86040678 	lh	a0,1656(s0)
    3dec:	8e040674 	lw	a0,1652(s0)
    3df0:	00800821 	move	at,a0
    3df4:	00042080 	sll	a0,a0,0x2
    3df8:	00812023 	subu	a0,a0,at
    3dfc:	000420c0 	sll	a0,a0,0x3
    3e00:	00812021 	addu	a0,a0,at
    3e04:	00042080 	sll	a0,a0,0x2
    3e08:	00812023 	subu	a0,a0,at
    3e0c:	00042200 	sll	a0,a0,0x8
    3e10:	00042400 	sll	a0,a0,0x10
    3e14:	0c000000 	jal	0 <func_808D6870>
    3e18:	00042403 	sra	a0,a0,0x10
    3e1c:	3c014248 	lui	at,0x4248
    3e20:	44815000 	mtc1	at,$f10
    3e24:	c61006f0 	lwc1	$f16,1776(s0)
    3e28:	24042098 	li	a0,8344
    3e2c:	46105482 	mul.s	$f18,$f10,$f16
    3e30:	00000000 	nop
    3e34:	46120102 	mul.s	$f4,$f0,$f18
    3e38:	0c000000 	jal	0 <func_808D6870>
    3e3c:	e604070c 	swc1	$f4,1804(s0)
    3e40:	3c010000 	lui	at,0x0
    3e44:	c4280000 	lwc1	$f8,0(at)
    3e48:	c60606f0 	lwc1	$f6,1776(s0)
    3e4c:	3c063dcc 	lui	a2,0x3dcc
    3e50:	34c6cccd 	ori	a2,a2,0xcccd
    3e54:	46083282 	mul.s	$f10,$f6,$f8
    3e58:	26040680 	addiu	a0,s0,1664
    3e5c:	3c05c496 	lui	a1,0xc496
    3e60:	44075000 	mfc1	a3,$f10
    3e64:	0c000000 	jal	0 <func_808D6870>
    3e68:	00000000 	nop
    3e6c:	3c0142e2 	lui	at,0x42e2
    3e70:	44819000 	mtc1	at,$f18
    3e74:	c61006f0 	lwc1	$f16,1776(s0)
    3e78:	3c054584 	lui	a1,0x4584
    3e7c:	3c063dcc 	lui	a2,0x3dcc
    3e80:	46128102 	mul.s	$f4,$f16,$f18
    3e84:	34c6cccd 	ori	a2,a2,0xcccd
    3e88:	34a58800 	ori	a1,a1,0x8800
    3e8c:	26040684 	addiu	a0,s0,1668
    3e90:	44072000 	mfc1	a3,$f4
    3e94:	0c000000 	jal	0 <func_808D6870>
    3e98:	00000000 	nop
    3e9c:	3c010000 	lui	at,0x0
    3ea0:	c4280000 	lwc1	$f8,0(at)
    3ea4:	c60606f0 	lwc1	$f6,1776(s0)
    3ea8:	3c063dcc 	lui	a2,0x3dcc
    3eac:	34c6cccd 	ori	a2,a2,0xcccd
    3eb0:	46083282 	mul.s	$f10,$f6,$f8
    3eb4:	26040688 	addiu	a0,s0,1672
    3eb8:	3c05c483 	lui	a1,0xc483
    3ebc:	44075000 	mfc1	a3,$f10
    3ec0:	0c000000 	jal	0 <func_808D6870>
    3ec4:	00000000 	nop
    3ec8:	3c053d4c 	lui	a1,0x3d4c
    3ecc:	3c073a83 	lui	a3,0x3a83
    3ed0:	34e7126f 	ori	a3,a3,0x126f
    3ed4:	34a5cccd 	ori	a1,a1,0xcccd
    3ed8:	260406f0 	addiu	a0,s0,1776
    3edc:	0c000000 	jal	0 <func_808D6870>
    3ee0:	3c063f80 	lui	a2,0x3f80
    3ee4:	8e190674 	lw	t9,1652(s0)
    3ee8:	2409006a 	li	t1,106
    3eec:	240a003c 	li	t2,60
    3ef0:	2f210051 	sltiu	at,t9,81
    3ef4:	14200003 	bnez	at,3f04 <L808DA450+0x324>
    3ef8:	00000000 	nop
    3efc:	a6090678 	sh	t1,1656(s0)
    3f00:	ae0a0674 	sw	t2,1652(s0)
    3f04:	100000fd 	b	42fc <L808DAB60+0xc>
    3f08:	86040678 	lh	a0,1656(s0)

00003f0c <L808DA77C>:
    3f0c:	3c0140a0 	lui	at,0x40a0
    3f10:	44810000 	mtc1	at,$f0
    3f14:	3c01c3e1 	lui	at,0xc3e1
    3f18:	44818000 	mtc1	at,$f16
    3f1c:	3c010000 	lui	at,0x0
    3f20:	3c080000 	lui	t0,0x0
    3f24:	e6100680 	swc1	$f16,1664(s0)
    3f28:	c4320000 	lwc1	$f18,0(at)
    3f2c:	3c01c336 	lui	at,0xc336
    3f30:	44812000 	mtc1	at,$f4
    3f34:	25080000 	addiu	t0,t0,0
    3f38:	e6120684 	swc1	$f18,1668(s0)
    3f3c:	e6040688 	swc1	$f4,1672(s0)
    3f40:	8d0b0000 	lw	t3,0(t0)
    3f44:	3c014220 	lui	at,0x4220
    3f48:	44818000 	mtc1	at,$f16
    3f4c:	c5660024 	lwc1	$f6,36(t3)
    3f50:	8e040674 	lw	a0,1652(s0)
    3f54:	3c0141c8 	lui	at,0x41c8
    3f58:	46003201 	sub.s	$f8,$f6,$f0
    3f5c:	e608068c 	swc1	$f8,1676(s0)
    3f60:	8d0c0000 	lw	t4,0(t0)
    3f64:	44814000 	mtc1	at,$f8
    3f68:	00800821 	move	at,a0
    3f6c:	c58a0028 	lwc1	$f10,40(t4)
    3f70:	00042080 	sll	a0,a0,0x2
    3f74:	00812023 	subu	a0,a0,at
    3f78:	46105480 	add.s	$f18,$f10,$f16
    3f7c:	000420c0 	sll	a0,a0,0x3
    3f80:	00812021 	addu	a0,a0,at
    3f84:	00042080 	sll	a0,a0,0x2
    3f88:	46009100 	add.s	$f4,$f18,$f0
    3f8c:	00812023 	subu	a0,a0,at
    3f90:	00042200 	sll	a0,a0,0x8
    3f94:	00042400 	sll	a0,a0,0x10
    3f98:	e6040690 	swc1	$f4,1680(s0)
    3f9c:	8d0d0000 	lw	t5,0(t0)
    3fa0:	00042403 	sra	a0,a0,0x10
    3fa4:	c5a6002c 	lwc1	$f6,44(t5)
    3fa8:	46083281 	sub.s	$f10,$f6,$f8
    3fac:	0c000000 	jal	0 <func_808D6870>
    3fb0:	e60a0694 	swc1	$f10,1684(s0)
    3fb4:	3c010000 	lui	at,0x0
    3fb8:	c4300000 	lwc1	$f16,0(at)
    3fbc:	24042098 	li	a0,8344
    3fc0:	46100482 	mul.s	$f18,$f0,$f16
    3fc4:	0c000000 	jal	0 <func_808D6870>
    3fc8:	e612070c 	swc1	$f18,1804(s0)
    3fcc:	8e030674 	lw	v1,1652(s0)
    3fd0:	3c080000 	lui	t0,0x0
    3fd4:	24010046 	li	at,70
    3fd8:	14610005 	bne	v1,at,3ff0 <L808DA77C+0xe4>
    3fdc:	25080000 	addiu	t0,t0,0
    3fe0:	8d0f0000 	lw	t7,0(t0)
    3fe4:	240e0006 	li	t6,6
    3fe8:	a1ee03c8 	sb	t6,968(t7)
    3fec:	8e030674 	lw	v1,1652(s0)
    3ff0:	2401005a 	li	at,90
    3ff4:	14610005 	bne	v1,at,400c <L808DA77C+0x100>
    3ff8:	8fa400b4 	lw	a0,180(sp)
    3ffc:	240570d1 	li	a1,28881
    4000:	0c000000 	jal	0 <func_808D6870>
    4004:	00003025 	move	a2,zero
    4008:	8e030674 	lw	v1,1652(s0)
    400c:	2c610097 	sltiu	at,v1,151
    4010:	1420000f 	bnez	at,4050 <L808DA77C+0x144>
    4014:	8fa400b4 	lw	a0,180(sp)
    4018:	0c000000 	jal	0 <func_808D6870>
    401c:	248420d8 	addiu	a0,a0,8408
    4020:	1440000b 	bnez	v0,4050 <L808DA77C+0x144>
    4024:	2418006b 	li	t8,107
    4028:	a6180678 	sh	t8,1656(s0)
    402c:	ae000674 	sw	zero,1652(s0)
    4030:	8fa400b4 	lw	a0,180(sp)
    4034:	240570d2 	li	a1,28882
    4038:	0c000000 	jal	0 <func_808D6870>
    403c:	00003025 	move	a2,zero
    4040:	8fa400b4 	lw	a0,180(sp)
    4044:	02002825 	move	a1,s0
    4048:	0c000000 	jal	0 <func_808D6870>
    404c:	24060039 	li	a2,57
    4050:	100000aa 	b	42fc <L808DAB60+0xc>
    4054:	86040678 	lh	a0,1656(s0)

00004058 <L808DA8C8>:
    4058:	8e040674 	lw	a0,1652(s0)
    405c:	00800821 	move	at,a0
    4060:	00042080 	sll	a0,a0,0x2
    4064:	00812023 	subu	a0,a0,at
    4068:	000420c0 	sll	a0,a0,0x3
    406c:	00812021 	addu	a0,a0,at
    4070:	00042080 	sll	a0,a0,0x2
    4074:	00812023 	subu	a0,a0,at
    4078:	00042200 	sll	a0,a0,0x8
    407c:	00042400 	sll	a0,a0,0x10
    4080:	0c000000 	jal	0 <func_808D6870>
    4084:	00042403 	sra	a0,a0,0x10
    4088:	3c010000 	lui	at,0x0
    408c:	c4240000 	lwc1	$f4,0(at)
    4090:	24042098 	li	a0,8344
    4094:	46040182 	mul.s	$f6,$f0,$f4
    4098:	0c000000 	jal	0 <func_808D6870>
    409c:	e606070c 	swc1	$f6,1804(s0)
    40a0:	3c0140a0 	lui	at,0x40a0
    40a4:	44810000 	mtc1	at,$f0
    40a8:	3c01c3be 	lui	at,0xc3be
    40ac:	44814000 	mtc1	at,$f8
    40b0:	3c010000 	lui	at,0x0
    40b4:	3c080000 	lui	t0,0x0
    40b8:	e6080680 	swc1	$f8,1664(s0)
    40bc:	c42a0000 	lwc1	$f10,0(at)
    40c0:	3c01c372 	lui	at,0xc372
    40c4:	44818000 	mtc1	at,$f16
    40c8:	25080000 	addiu	t0,t0,0
    40cc:	e60a0684 	swc1	$f10,1668(s0)
    40d0:	e6100688 	swc1	$f16,1672(s0)
    40d4:	8d190000 	lw	t9,0(t0)
    40d8:	3c0141f0 	lui	at,0x41f0
    40dc:	44813000 	mtc1	at,$f6
    40e0:	c7320024 	lwc1	$f18,36(t9)
    40e4:	3c014220 	lui	at,0x4220
    40e8:	44818000 	mtc1	at,$f16
    40ec:	46009101 	sub.s	$f4,$f18,$f0
    40f0:	3c0141a0 	lui	at,0x41a0
    40f4:	8e0b0674 	lw	t3,1652(s0)
    40f8:	46062201 	sub.s	$f8,$f4,$f6
    40fc:	44813000 	mtc1	at,$f6
    4100:	3c0141c8 	lui	at,0x41c8
    4104:	e608068c 	swc1	$f8,1676(s0)
    4108:	8d090000 	lw	t1,0(t0)
    410c:	c52a0028 	lwc1	$f10,40(t1)
    4110:	46105480 	add.s	$f18,$f10,$f16
    4114:	44818000 	mtc1	at,$f16
    4118:	3c0142a0 	lui	at,0x42a0
    411c:	46009100 	add.s	$f4,$f18,$f0
    4120:	46062201 	sub.s	$f8,$f4,$f6
    4124:	44812000 	mtc1	at,$f4
    4128:	2d610033 	sltiu	at,t3,51
    412c:	e6080690 	swc1	$f8,1680(s0)
    4130:	8d0a0000 	lw	t2,0(t0)
    4134:	c54a002c 	lwc1	$f10,44(t2)
    4138:	46105481 	sub.s	$f18,$f10,$f16
    413c:	46049180 	add.s	$f6,$f18,$f4
    4140:	1420000d 	bnez	at,4178 <L808DA8C8+0x120>
    4144:	e6060694 	swc1	$f6,1684(s0)
    4148:	8fa400b4 	lw	a0,180(sp)
    414c:	0c000000 	jal	0 <func_808D6870>
    4150:	248420d8 	addiu	a0,a0,8408
    4154:	3c080000 	lui	t0,0x0
    4158:	14400007 	bnez	v0,4178 <L808DA8C8+0x120>
    415c:	25080000 	addiu	t0,t0,0
    4160:	8d0d0000 	lw	t5,0(t0)
    4164:	240c0007 	li	t4,7
    4168:	240e006c 	li	t6,108
    416c:	a1ac03c8 	sb	t4,968(t5)
    4170:	a60e0678 	sh	t6,1656(s0)
    4174:	ae000674 	sw	zero,1652(s0)
    4178:	10000060 	b	42fc <L808DAB60+0xc>
    417c:	86040678 	lh	a0,1656(s0)

00004180 <L808DA9F0>:
    4180:	8e040674 	lw	a0,1652(s0)
    4184:	00800821 	move	at,a0
    4188:	00042080 	sll	a0,a0,0x2
    418c:	00812023 	subu	a0,a0,at
    4190:	000420c0 	sll	a0,a0,0x3
    4194:	00812021 	addu	a0,a0,at
    4198:	00042080 	sll	a0,a0,0x2
    419c:	00812023 	subu	a0,a0,at
    41a0:	00042200 	sll	a0,a0,0x8
    41a4:	00042400 	sll	a0,a0,0x10
    41a8:	0c000000 	jal	0 <func_808D6870>
    41ac:	00042403 	sra	a0,a0,0x10
    41b0:	3c010000 	lui	at,0x0
    41b4:	c4280000 	lwc1	$f8,0(at)
    41b8:	24042098 	li	a0,8344
    41bc:	46080282 	mul.s	$f10,$f0,$f8
    41c0:	0c000000 	jal	0 <func_808D6870>
    41c4:	e60a070c 	swc1	$f10,1804(s0)
    41c8:	3c080000 	lui	t0,0x0
    41cc:	25080000 	addiu	t0,t0,0
    41d0:	8d0f0000 	lw	t7,0(t0)
    41d4:	3c0140a0 	lui	at,0x40a0
    41d8:	44810000 	mtc1	at,$f0
    41dc:	c5f00024 	lwc1	$f16,36(t7)
    41e0:	3c0141f0 	lui	at,0x41f0
    41e4:	44812000 	mtc1	at,$f4
    41e8:	46008481 	sub.s	$f18,$f16,$f0
    41ec:	3c014220 	lui	at,0x4220
    41f0:	44815000 	mtc1	at,$f10
    41f4:	3c0141a0 	lui	at,0x41a0
    41f8:	46049181 	sub.s	$f6,$f18,$f4
    41fc:	44812000 	mtc1	at,$f4
    4200:	3c0141c8 	lui	at,0x41c8
    4204:	8e090674 	lw	t1,1652(s0)
    4208:	e606068c 	swc1	$f6,1676(s0)
    420c:	8d180000 	lw	t8,0(t0)
    4210:	00002825 	move	a1,zero
    4214:	c7080028 	lwc1	$f8,40(t8)
    4218:	460a4400 	add.s	$f16,$f8,$f10
    421c:	44815000 	mtc1	at,$f10
    4220:	3c0142a0 	lui	at,0x42a0
    4224:	46008480 	add.s	$f18,$f16,$f0
    4228:	46049181 	sub.s	$f6,$f18,$f4
    422c:	44819000 	mtc1	at,$f18
    4230:	2d210033 	sltiu	at,t1,51
    4234:	e6060690 	swc1	$f6,1680(s0)
    4238:	8d190000 	lw	t9,0(t0)
    423c:	c728002c 	lwc1	$f8,44(t9)
    4240:	460a4401 	sub.s	$f16,$f8,$f10
    4244:	46128100 	add.s	$f4,$f16,$f18
    4248:	14200027 	bnez	at,42e8 <L808DA9F0+0x168>
    424c:	e6040694 	swc1	$f4,1684(s0)
    4250:	0c000000 	jal	0 <func_808D6870>
    4254:	8fa400b4 	lw	a0,180(sp)
    4258:	26030680 	addiu	v1,s0,1664
    425c:	8c6b0000 	lw	t3,0(v1)
    4260:	00003025 	move	a2,zero
    4264:	ac4b005c 	sw	t3,92(v0)
    4268:	8c6a0004 	lw	t2,4(v1)
    426c:	ac4a0060 	sw	t2,96(v0)
    4270:	8c6b0008 	lw	t3,8(v1)
    4274:	ac4b0064 	sw	t3,100(v0)
    4278:	8c6d0000 	lw	t5,0(v1)
    427c:	ac4d0074 	sw	t5,116(v0)
    4280:	8c6c0004 	lw	t4,4(v1)
    4284:	ac4c0078 	sw	t4,120(v0)
    4288:	8c6d0008 	lw	t5,8(v1)
    428c:	ac4d007c 	sw	t5,124(v0)
    4290:	8e0f068c 	lw	t7,1676(s0)
    4294:	ac4f0050 	sw	t7,80(v0)
    4298:	8e0e0690 	lw	t6,1680(s0)
    429c:	ac4e0054 	sw	t6,84(v0)
    42a0:	8e0f0694 	lw	t7,1684(s0)
    42a4:	ac4f0058 	sw	t7,88(v0)
    42a8:	8605067a 	lh	a1,1658(s0)
    42ac:	0c000000 	jal	0 <func_808D6870>
    42b0:	8fa400b4 	lw	a0,180(sp)
    42b4:	8fa400b4 	lw	a0,180(sp)
    42b8:	2418006d 	li	t8,109
    42bc:	a6180678 	sh	t8,1656(s0)
    42c0:	a600067a 	sh	zero,1658(s0)
    42c4:	0c000000 	jal	0 <func_808D6870>
    42c8:	24851d64 	addiu	a1,a0,7524
    42cc:	8fa400b4 	lw	a0,180(sp)
    42d0:	02002825 	move	a1,s0
    42d4:	0c000000 	jal	0 <func_808D6870>
    42d8:	24060007 	li	a2,7
    42dc:	8fa400b4 	lw	a0,180(sp)
    42e0:	0c000000 	jal	0 <func_808D6870>
    42e4:	24050037 	li	a1,55
    42e8:	10000004 	b	42fc <L808DAB60+0xc>
    42ec:	86040678 	lh	a0,1656(s0)

000042f0 <L808DAB60>:
    42f0:	0c000000 	jal	0 <func_808D6870>
    42f4:	24042098 	li	a0,8344
    42f8:	86040678 	lh	a0,1656(s0)
    42fc:	28810064 	slti	at,a0,100
    4300:	14200002 	bnez	at,430c <L808DAB60+0x1c>
    4304:	24190014 	li	t9,20
    4308:	a21901a0 	sb	t9,416(s0)
    430c:	8609067a 	lh	t1,1658(s0)
    4310:	260a0680 	addiu	t2,s0,1664
    4314:	51200054 	beqzl	t1,4468 <L808DAB60+0x178>
    4318:	8fbf003c 	lw	ra,60(sp)
    431c:	93ac00ad 	lbu	t4,173(sp)
    4320:	260b068c 	addiu	t3,s0,1676
    4324:	afab0044 	sw	t3,68(sp)
    4328:	1180003e 	beqz	t4,4424 <L808DAB60+0x134>
    432c:	afaa0058 	sw	t2,88(sp)
    4330:	c60606a4 	lwc1	$f6,1700(s0)
    4334:	c60806ec 	lwc1	$f8,1772(s0)
    4338:	8e0506bc 	lw	a1,1724(s0)
    433c:	8e0606f0 	lw	a2,1776(s0)
    4340:	46083282 	mul.s	$f10,$f6,$f8
    4344:	260d0688 	addiu	t5,s0,1672
    4348:	260e0690 	addiu	t6,s0,1680
    434c:	260f0694 	addiu	t7,s0,1684
    4350:	26180684 	addiu	t8,s0,1668
    4354:	afb80048 	sw	t8,72(sp)
    4358:	afaf004c 	sw	t7,76(sp)
    435c:	44075000 	mfc1	a3,$f10
    4360:	afae0050 	sw	t6,80(sp)
    4364:	afad0054 	sw	t5,84(sp)
    4368:	0c000000 	jal	0 <func_808D6870>
    436c:	01402025 	move	a0,t2
    4370:	c61006a8 	lwc1	$f16,1704(s0)
    4374:	c61206ec 	lwc1	$f18,1772(s0)
    4378:	8fa40048 	lw	a0,72(sp)
    437c:	8e0506c0 	lw	a1,1728(s0)
    4380:	46128102 	mul.s	$f4,$f16,$f18
    4384:	8e0606f0 	lw	a2,1776(s0)
    4388:	44072000 	mfc1	a3,$f4
    438c:	0c000000 	jal	0 <func_808D6870>
    4390:	00000000 	nop
    4394:	c60606ac 	lwc1	$f6,1708(s0)
    4398:	c60806ec 	lwc1	$f8,1772(s0)
    439c:	8fa40054 	lw	a0,84(sp)
    43a0:	8e0506c4 	lw	a1,1732(s0)
    43a4:	46083282 	mul.s	$f10,$f6,$f8
    43a8:	8e0606f0 	lw	a2,1776(s0)
    43ac:	44075000 	mfc1	a3,$f10
    43b0:	0c000000 	jal	0 <func_808D6870>
    43b4:	00000000 	nop
    43b8:	c61006b0 	lwc1	$f16,1712(s0)
    43bc:	c61206ec 	lwc1	$f18,1772(s0)
    43c0:	8fa40044 	lw	a0,68(sp)
    43c4:	8e0506d4 	lw	a1,1748(s0)
    43c8:	46128102 	mul.s	$f4,$f16,$f18
    43cc:	8e0606f0 	lw	a2,1776(s0)
    43d0:	44072000 	mfc1	a3,$f4
    43d4:	0c000000 	jal	0 <func_808D6870>
    43d8:	00000000 	nop
    43dc:	c60606b4 	lwc1	$f6,1716(s0)
    43e0:	c60806ec 	lwc1	$f8,1772(s0)
    43e4:	8fa40050 	lw	a0,80(sp)
    43e8:	8e0506d8 	lw	a1,1752(s0)
    43ec:	46083282 	mul.s	$f10,$f6,$f8
    43f0:	8e0606f0 	lw	a2,1776(s0)
    43f4:	44075000 	mfc1	a3,$f10
    43f8:	0c000000 	jal	0 <func_808D6870>
    43fc:	00000000 	nop
    4400:	c61006b8 	lwc1	$f16,1720(s0)
    4404:	c61206ec 	lwc1	$f18,1772(s0)
    4408:	8fa4004c 	lw	a0,76(sp)
    440c:	8e0506dc 	lw	a1,1756(s0)
    4410:	46128102 	mul.s	$f4,$f16,$f18
    4414:	8e0606f0 	lw	a2,1776(s0)
    4418:	44072000 	mfc1	a3,$f4
    441c:	0c000000 	jal	0 <func_808D6870>
    4420:	00000000 	nop
    4424:	8fb90044 	lw	t9,68(sp)
    4428:	27a60064 	addiu	a2,sp,100
    442c:	8f2a0000 	lw	t2,0(t9)
    4430:	acca0000 	sw	t2,0(a2)
    4434:	8f290004 	lw	t1,4(t9)
    4438:	acc90004 	sw	t1,4(a2)
    443c:	8f2a0008 	lw	t2,8(t9)
    4440:	acca0008 	sw	t2,8(a2)
    4444:	c7a60068 	lwc1	$f6,104(sp)
    4448:	c608070c 	lwc1	$f8,1804(s0)
    444c:	8fa70058 	lw	a3,88(sp)
    4450:	8fa400b4 	lw	a0,180(sp)
    4454:	46083280 	add.s	$f10,$f6,$f8
    4458:	e7aa0068 	swc1	$f10,104(sp)
    445c:	0c000000 	jal	0 <func_808D6870>
    4460:	8605067a 	lh	a1,1658(s0)
    4464:	8fbf003c 	lw	ra,60(sp)
    4468:	8fb00038 	lw	s0,56(sp)
    446c:	27bd00b0 	addiu	sp,sp,176
    4470:	03e00008 	jr	ra
    4474:	00000000 	nop

00004478 <func_808DACE8>:
    4478:	afa50004 	sw	a1,4(sp)
    447c:	44800000 	mtc1	zero,$f0
    4480:	3c0142c8 	lui	at,0x42c8
    4484:	44812000 	mtc1	at,$f4
    4488:	3c0f0000 	lui	t7,0x0
    448c:	240e0028 	li	t6,40
    4490:	25ef0000 	addiu	t7,t7,0
    4494:	a48001c2 	sh	zero,450(a0)
    4498:	a48e01b6 	sh	t6,438(a0)
    449c:	ac8f0194 	sw	t7,404(a0)
    44a0:	e480005c 	swc1	$f0,92(a0)
    44a4:	e4800060 	swc1	$f0,96(a0)
    44a8:	03e00008 	jr	ra
    44ac:	e48401d0 	swc1	$f4,464(a0)

000044b0 <func_808DAD20>:
    44b0:	27bdff78 	addiu	sp,sp,-136
    44b4:	afb10030 	sw	s1,48(sp)
    44b8:	afb0002c 	sw	s0,44(sp)
    44bc:	00808825 	move	s1,a0
    44c0:	afbf0034 	sw	ra,52(sp)
    44c4:	24900150 	addiu	s0,a0,336
    44c8:	f7b40020 	sdc1	$f20,32(sp)
    44cc:	afa5008c 	sw	a1,140(sp)
    44d0:	0c000000 	jal	0 <func_808D6870>
    44d4:	02002025 	move	a0,s0
    44d8:	962e01c2 	lhu	t6,450(s1)
    44dc:	2dc10005 	sltiu	at,t6,5
    44e0:	1020011a 	beqz	at,494c <L808DB174+0x48>
    44e4:	000e7080 	sll	t6,t6,0x2
    44e8:	3c010000 	lui	at,0x0
    44ec:	002e0821 	addu	at,at,t6
    44f0:	8c2e0000 	lw	t6,0(at)
    44f4:	01c00008 	jr	t6
    44f8:	00000000 	nop

000044fc <L808DAD6C>:
    44fc:	862401a2 	lh	a0,418(s1)
    4500:	00800821 	move	at,a0
    4504:	00042080 	sll	a0,a0,0x2
    4508:	00812021 	addu	a0,a0,at
    450c:	00042200 	sll	a0,a0,0x8
    4510:	00042400 	sll	a0,a0,0x10
    4514:	0c000000 	jal	0 <func_808D6870>
    4518:	00042403 	sra	a0,a0,0x10
    451c:	862401a2 	lh	a0,418(s1)
    4520:	c62401d0 	lwc1	$f4,464(s1)
    4524:	00800821 	move	at,a0
    4528:	000420c0 	sll	a0,a0,0x3
    452c:	00812023 	subu	a0,a0,at
    4530:	00042200 	sll	a0,a0,0x8
    4534:	00042400 	sll	a0,a0,0x10
    4538:	46002502 	mul.s	$f20,$f4,$f0
    453c:	0c000000 	jal	0 <func_808D6870>
    4540:	00042403 	sra	a0,a0,0x10
    4544:	c62601d0 	lwc1	$f6,464(s1)
    4548:	4405a000 	mfc1	a1,$f20
    454c:	3c063d4c 	lui	a2,0x3d4c
    4550:	46003202 	mul.s	$f8,$f6,$f0
    4554:	34c6cccd 	ori	a2,a2,0xcccd
    4558:	26240024 	addiu	a0,s1,36
    455c:	e7a80078 	swc1	$f8,120(sp)
    4560:	0c000000 	jal	0 <func_808D6870>
    4564:	8e2701c8 	lw	a3,456(s1)
    4568:	3c063d4c 	lui	a2,0x3d4c
    456c:	34c6cccd 	ori	a2,a2,0xcccd
    4570:	2624002c 	addiu	a0,s1,44
    4574:	8fa50078 	lw	a1,120(sp)
    4578:	0c000000 	jal	0 <func_808D6870>
    457c:	8e2701c8 	lw	a3,456(s1)
    4580:	262401d0 	addiu	a0,s1,464
    4584:	24050000 	li	a1,0
    4588:	3c063f80 	lui	a2,0x3f80
    458c:	0c000000 	jal	0 <func_808D6870>
    4590:	3c073fc0 	lui	a3,0x3fc0
    4594:	862201b6 	lh	v0,438(s1)
    4598:	24010005 	li	at,5
    459c:	02202025 	move	a0,s1
    45a0:	54410005 	bnel	v0,at,45b8 <L808DAD6C+0xbc>
    45a4:	2841000e 	slti	at,v0,14
    45a8:	0c000000 	jal	0 <func_808D6870>
    45ac:	240539cb 	li	a1,14795
    45b0:	862201b6 	lh	v0,438(s1)
    45b4:	2841000e 	slti	at,v0,14
    45b8:	10200013 	beqz	at,4608 <L808DAD6C+0x10c>
    45bc:	3c01437a 	lui	at,0x437a
    45c0:	4481a000 	mtc1	at,$f20
    45c4:	3c010000 	lui	at,0x0
    45c8:	0c000000 	jal	0 <func_808D6870>
    45cc:	c42c0000 	lwc1	$f12,0(at)
    45d0:	3c010000 	lui	at,0x0
    45d4:	c4300000 	lwc1	$f16,0(at)
    45d8:	c62a0258 	lwc1	$f10,600(s1)
    45dc:	26240254 	addiu	a0,s1,596
    45e0:	46100480 	add.s	$f18,$f0,$f16
    45e4:	3c0540e0 	lui	a1,0x40e0
    45e8:	3c063f00 	lui	a2,0x3f00
    45ec:	3c073f80 	lui	a3,0x3f80
    45f0:	46125100 	add.s	$f4,$f10,$f18
    45f4:	0c000000 	jal	0 <func_808D6870>
    45f8:	e6240258 	swc1	$f4,600(s1)
    45fc:	240f0001 	li	t7,1
    4600:	10000004 	b	4614 <L808DAD6C+0x118>
    4604:	a22f01a0 	sb	t7,416(s1)
    4608:	3c014348 	lui	at,0x4348
    460c:	4481a000 	mtc1	at,$f20
    4610:	00000000 	nop
    4614:	4405a000 	mfc1	a1,$f20
    4618:	3c063dcc 	lui	a2,0x3dcc
    461c:	34c6cccd 	ori	a2,a2,0xcccd
    4620:	26240028 	addiu	a0,s1,40
    4624:	0c000000 	jal	0 <func_808D6870>
    4628:	8e270060 	lw	a3,96(s1)
    462c:	3c013f80 	lui	at,0x3f80
    4630:	44810000 	mtc1	at,$f0
    4634:	26240060 	addiu	a0,s1,96
    4638:	3c0541a0 	lui	a1,0x41a0
    463c:	44060000 	mfc1	a2,$f0
    4640:	44070000 	mfc1	a3,$f0
    4644:	0c000000 	jal	0 <func_808D6870>
    4648:	00000000 	nop
    464c:	862201b6 	lh	v0,438(s1)
    4650:	2401000e 	li	at,14
    4654:	3c040600 	lui	a0,0x600
    4658:	1441000e 	bne	v0,at,4694 <L808DAD6C+0x198>
    465c:	00000000 	nop
    4660:	0c000000 	jal	0 <func_808D6870>
    4664:	24842d2c 	addiu	a0,a0,11564
    4668:	44823000 	mtc1	v0,$f6
    466c:	3c050600 	lui	a1,0x600
    4670:	24a52d2c 	addiu	a1,a1,11564
    4674:	46803220 	cvt.s.w	$f8,$f6
    4678:	02002025 	move	a0,s0
    467c:	24060000 	li	a2,0
    4680:	0c000000 	jal	0 <func_808D6870>
    4684:	e62801cc 	swc1	$f8,460(s1)
    4688:	44808000 	mtc1	zero,$f16
    468c:	862201b6 	lh	v0,438(s1)
    4690:	e6300060 	swc1	$f16,96(s1)
    4694:	144000ad 	bnez	v0,494c <L808DB174+0x48>
    4698:	24180001 	li	t8,1
    469c:	44805000 	mtc1	zero,$f10
    46a0:	a63801c2 	sh	t8,450(s1)
    46a4:	100000a9 	b	494c <L808DB174+0x48>
    46a8:	e62a0060 	swc1	$f10,96(s1)

000046ac <L808DAF1C>:
    46ac:	3c01bf80 	lui	at,0xbf80
    46b0:	3c190000 	lui	t9,0x0
    46b4:	8f390000 	lw	t9,0(t9)
    46b8:	44819000 	mtc1	at,$f18
    46bc:	24080001 	li	t0,1
    46c0:	26240060 	addiu	a0,s1,96
    46c4:	e73216c8 	swc1	$f18,5832(t9)
    46c8:	a22801a0 	sb	t0,416(s1)
    46cc:	3c05c248 	lui	a1,0xc248
    46d0:	3c063f80 	lui	a2,0x3f80
    46d4:	0c000000 	jal	0 <func_808D6870>
    46d8:	3c074120 	lui	a3,0x4120
    46dc:	c6240028 	lwc1	$f4,40(s1)
    46e0:	c6260060 	lwc1	$f6,96(s1)
    46e4:	3c014270 	lui	at,0x4270
    46e8:	44810000 	mtc1	at,$f0
    46ec:	46062200 	add.s	$f8,$f4,$f6
    46f0:	24090002 	li	t1,2
    46f4:	240a000a 	li	t2,10
    46f8:	02202025 	move	a0,s1
    46fc:	e6280028 	swc1	$f8,40(s1)
    4700:	c6300028 	lwc1	$f16,40(s1)
    4704:	2406000a 	li	a2,10
    4708:	24070014 	li	a3,20
    470c:	4600803c 	c.lt.s	$f16,$f0
    4710:	00000000 	nop
    4714:	4502008e 	bc1fl	4950 <L808DB174+0x4c>
    4718:	8622019c 	lh	v0,412(s1)
    471c:	e6200028 	swc1	$f0,40(s1)
    4720:	a62901c2 	sh	t1,450(s1)
    4724:	a62a01b6 	sh	t2,438(s1)
    4728:	0c000000 	jal	0 <func_808D6870>
    472c:	8fa5008c 	lw	a1,140(sp)
    4730:	240b0023 	li	t3,35
    4734:	a62b019c 	sh	t3,412(s1)
    4738:	a220019e 	sb	zero,414(s1)
    473c:	02202025 	move	a0,s1
    4740:	0c000000 	jal	0 <func_808D6870>
    4744:	24053915 	li	a1,14613
    4748:	44805000 	mtc1	zero,$f10
    474c:	8e2e0260 	lw	t6,608(s1)
    4750:	27ac0060 	addiu	t4,sp,96
    4754:	e62a0254 	swc1	$f10,596(s1)
    4758:	ad8e0000 	sw	t6,0(t4)
    475c:	8e2d0264 	lw	t5,612(s1)
    4760:	44809000 	mtc1	zero,$f18
    4764:	3c0141c8 	lui	at,0x41c8
    4768:	ad8d0004 	sw	t5,4(t4)
    476c:	8e2e0268 	lw	t6,616(s1)
    4770:	4481a000 	mtc1	at,$f20
    4774:	00008025 	move	s0,zero
    4778:	ad8e0008 	sw	t6,8(t4)
    477c:	e7b20064 	swc1	$f18,100(sp)
    4780:	0c000000 	jal	0 <func_808D6870>
    4784:	4600a306 	mov.s	$f12,$f20
    4788:	3c014188 	lui	at,0x4188
    478c:	44816000 	mtc1	at,$f12
    4790:	0c000000 	jal	0 <func_808D6870>
    4794:	e7a0006c 	swc1	$f0,108(sp)
    4798:	e7a00070 	swc1	$f0,112(sp)
    479c:	0c000000 	jal	0 <func_808D6870>
    47a0:	4600a306 	mov.s	$f12,$f20
    47a4:	3c014396 	lui	at,0x4396
    47a8:	44816000 	mtc1	at,$f12
    47ac:	0c000000 	jal	0 <func_808D6870>
    47b0:	e7a00074 	swc1	$f0,116(sp)
    47b4:	3c0143fa 	lui	at,0x43fa
    47b8:	44812000 	mtc1	at,$f4
    47bc:	3c014150 	lui	at,0x4150
    47c0:	44814000 	mtc1	at,$f8
    47c4:	46040180 	add.s	$f6,$f0,$f4
    47c8:	3c070000 	lui	a3,0x0
    47cc:	240f001e 	li	t7,30
    47d0:	afaf0018 	sw	t7,24(sp)
    47d4:	24e70000 	addiu	a3,a3,0
    47d8:	e7a60010 	swc1	$f6,16(sp)
    47dc:	8fa4008c 	lw	a0,140(sp)
    47e0:	27a50060 	addiu	a1,sp,96
    47e4:	27a6006c 	addiu	a2,sp,108
    47e8:	0c000000 	jal	0 <func_808D6870>
    47ec:	e7a80014 	swc1	$f8,20(sp)
    47f0:	26100001 	addiu	s0,s0,1
    47f4:	00108400 	sll	s0,s0,0x10
    47f8:	00108403 	sra	s0,s0,0x10
    47fc:	2a010050 	slti	at,s0,80
    4800:	1420ffdf 	bnez	at,4780 <L808DAF1C+0xd4>
    4804:	00000000 	nop
    4808:	10000051 	b	4950 <L808DB174+0x4c>
    480c:	8622019c 	lh	v0,412(s1)

00004810 <L808DB080>:
    4810:	863901b6 	lh	t9,438(s1)
    4814:	24180001 	li	t8,1
    4818:	a23801a0 	sb	t8,416(s1)
    481c:	1720004b 	bnez	t9,494c <L808DB174+0x48>
    4820:	3c040600 	lui	a0,0x600
    4824:	0c000000 	jal	0 <func_808D6870>
    4828:	2484343c 	addiu	a0,a0,13372
    482c:	44828000 	mtc1	v0,$f16
    4830:	3c050600 	lui	a1,0x600
    4834:	24a5343c 	addiu	a1,a1,13372
    4838:	468082a0 	cvt.s.w	$f10,$f16
    483c:	02002025 	move	a0,s0
    4840:	24060000 	li	a2,0
    4844:	0c000000 	jal	0 <func_808D6870>
    4848:	e62a01cc 	swc1	$f10,460(s1)
    484c:	44809000 	mtc1	zero,$f18
    4850:	24080003 	li	t0,3
    4854:	24090001 	li	t1,1
    4858:	a62801c2 	sh	t0,450(s1)
    485c:	a229019f 	sb	t1,415(s1)
    4860:	1000003a 	b	494c <L808DB174+0x48>
    4864:	e6320060 	swc1	$f18,96(s1)

00004868 <L808DB0D8>:
    4868:	3c063dcc 	lui	a2,0x3dcc
    486c:	34c6cccd 	ori	a2,a2,0xcccd
    4870:	26240028 	addiu	a0,s1,40
    4874:	3c054316 	lui	a1,0x4316
    4878:	0c000000 	jal	0 <func_808D6870>
    487c:	8e270060 	lw	a3,96(s1)
    4880:	26240060 	addiu	a0,s1,96
    4884:	3c0541a0 	lui	a1,0x41a0
    4888:	3c063f80 	lui	a2,0x3f80
    488c:	0c000000 	jal	0 <func_808D6870>
    4890:	3c073f80 	lui	a3,0x3f80
    4894:	02002025 	move	a0,s0
    4898:	0c000000 	jal	0 <func_808D6870>
    489c:	8e2501cc 	lw	a1,460(s1)
    48a0:	1040002a 	beqz	v0,494c <L808DB174+0x48>
    48a4:	3c040601 	lui	a0,0x601
    48a8:	0c000000 	jal	0 <func_808D6870>
    48ac:	24848a88 	addiu	a0,a0,-30072
    48b0:	44822000 	mtc1	v0,$f4
    48b4:	3c050601 	lui	a1,0x601
    48b8:	24a58a88 	addiu	a1,a1,-30072
    48bc:	468021a0 	cvt.s.w	$f6,$f4
    48c0:	02002025 	move	a0,s0
    48c4:	24060000 	li	a2,0
    48c8:	0c000000 	jal	0 <func_808D6870>
    48cc:	e62601cc 	swc1	$f6,460(s1)
    48d0:	0c000000 	jal	0 <func_808D6870>
    48d4:	02002025 	move	a0,s0
    48d8:	3c014190 	lui	at,0x4190
    48dc:	3c0a0000 	lui	t2,0x0
    48e0:	8d4a0000 	lw	t2,0(t2)
    48e4:	44814000 	mtc1	at,$f8
    48e8:	02202025 	move	a0,s1
    48ec:	240528c7 	li	a1,10439
    48f0:	0c000000 	jal	0 <func_808D6870>
    48f4:	e54816c4 	swc1	$f8,5828(t2)
    48f8:	240b0004 	li	t3,4
    48fc:	10000013 	b	494c <L808DB174+0x48>
    4900:	a62b01c2 	sh	t3,450(s1)

00004904 <L808DB174>:
    4904:	3c063dcc 	lui	a2,0x3dcc
    4908:	34c6cccd 	ori	a2,a2,0xcccd
    490c:	26240028 	addiu	a0,s1,40
    4910:	3c054316 	lui	a1,0x4316
    4914:	0c000000 	jal	0 <func_808D6870>
    4918:	8e270060 	lw	a3,96(s1)
    491c:	26240060 	addiu	a0,s1,96
    4920:	3c0541a0 	lui	a1,0x41a0
    4924:	3c063f80 	lui	a2,0x3f80
    4928:	0c000000 	jal	0 <func_808D6870>
    492c:	3c073f80 	lui	a3,0x3f80
    4930:	02002025 	move	a0,s0
    4934:	0c000000 	jal	0 <func_808D6870>
    4938:	8e2501cc 	lw	a1,460(s1)
    493c:	10400003 	beqz	v0,494c <L808DB174+0x48>
    4940:	02202025 	move	a0,s1
    4944:	0c000000 	jal	0 <func_808D6870>
    4948:	8fa5008c 	lw	a1,140(sp)
    494c:	8622019c 	lh	v0,412(s1)
    4950:	24010023 	li	at,35
    4954:	10410005 	beq	v0,at,496c <L808DB174+0x68>
    4958:	2401001e 	li	at,30
    495c:	10410003 	beq	v0,at,496c <L808DB174+0x68>
    4960:	24010019 	li	at,25
    4964:	54410013 	bnel	v0,at,49b4 <L808DB174+0xb0>
    4968:	24010023 	li	at,35
    496c:	8e2d0024 	lw	t5,36(s1)
    4970:	27a50054 	addiu	a1,sp,84
    4974:	44808000 	mtc1	zero,$f16
    4978:	acad0000 	sw	t5,0(a1)
    497c:	8e2c0028 	lw	t4,40(s1)
    4980:	24060000 	li	a2,0
    4984:	3c074040 	lui	a3,0x4040
    4988:	acac0004 	sw	t4,4(a1)
    498c:	8e2d002c 	lw	t5,44(s1)
    4990:	acad0008 	sw	t5,8(a1)
    4994:	e7b00058 	swc1	$f16,88(sp)
    4998:	862e019c 	lh	t6,412(s1)
    499c:	8fa4008c 	lw	a0,140(sp)
    49a0:	25cfffe7 	addiu	t7,t6,-25
    49a4:	0c000000 	jal	0 <func_808D6870>
    49a8:	afaf0010 	sw	t7,16(sp)
    49ac:	8622019c 	lh	v0,412(s1)
    49b0:	24010023 	li	at,35
    49b4:	5441000f 	bnel	v0,at,49f4 <L808DB174+0xf0>
    49b8:	8fbf0034 	lw	ra,52(sp)
    49bc:	8e390024 	lw	t9,36(s1)
    49c0:	27a50048 	addiu	a1,sp,72
    49c4:	44805000 	mtc1	zero,$f10
    49c8:	acb90000 	sw	t9,0(a1)
    49cc:	8e380028 	lw	t8,40(s1)
    49d0:	24060000 	li	a2,0
    49d4:	3c074040 	lui	a3,0x4040
    49d8:	acb80004 	sw	t8,4(a1)
    49dc:	8e39002c 	lw	t9,44(s1)
    49e0:	acb90008 	sw	t9,8(a1)
    49e4:	8fa4008c 	lw	a0,140(sp)
    49e8:	0c000000 	jal	0 <func_808D6870>
    49ec:	e7aa004c 	swc1	$f10,76(sp)
    49f0:	8fbf0034 	lw	ra,52(sp)
    49f4:	d7b40020 	ldc1	$f20,32(sp)
    49f8:	8fb0002c 	lw	s0,44(sp)
    49fc:	8fb10030 	lw	s1,48(sp)
    4a00:	03e00008 	jr	ra
    4a04:	27bd0088 	addiu	sp,sp,136

00004a08 <func_808DB278>:
    4a08:	27bdffe8 	addiu	sp,sp,-24
    4a0c:	afbf0014 	sw	ra,20(sp)
    4a10:	afa5001c 	sw	a1,28(sp)
    4a14:	44800000 	mtc1	zero,$f0
    4a18:	3c0142c8 	lui	at,0x42c8
    4a1c:	44812000 	mtc1	at,$f4
    4a20:	240e001e 	li	t6,30
    4a24:	a48001c2 	sh	zero,450(a0)
    4a28:	a48e01b6 	sh	t6,438(a0)
    4a2c:	3c010000 	lui	at,0x0
    4a30:	e480005c 	swc1	$f0,92(a0)
    4a34:	e4800060 	swc1	$f0,96(a0)
    4a38:	e48401d0 	swc1	$f4,464(a0)
    4a3c:	afa40018 	sw	a0,24(sp)
    4a40:	0c000000 	jal	0 <func_808D6870>
    4a44:	c42c0000 	lwc1	$f12,0(at)
    4a48:	4600018d 	trunc.w.s	$f6,$f0
    4a4c:	8fa40018 	lw	a0,24(sp)
    4a50:	3c190000 	lui	t9,0x0
    4a54:	27390000 	addiu	t9,t9,0
    4a58:	44183000 	mfc1	t8,$f6
    4a5c:	a48001ac 	sh	zero,428(a0)
    4a60:	ac990194 	sw	t9,404(a0)
    4a64:	a49801aa 	sh	t8,426(a0)
    4a68:	8fbf0014 	lw	ra,20(sp)
    4a6c:	27bd0018 	addiu	sp,sp,24
    4a70:	03e00008 	jr	ra
    4a74:	00000000 	nop

00004a78 <func_808DB2E8>:
    4a78:	27bdff68 	addiu	sp,sp,-152
    4a7c:	afb10048 	sw	s1,72(sp)
    4a80:	00808825 	move	s1,a0
    4a84:	afbf004c 	sw	ra,76(sp)
    4a88:	24840150 	addiu	a0,a0,336
    4a8c:	afb00044 	sw	s0,68(sp)
    4a90:	f7b60038 	sdc1	$f22,56(sp)
    4a94:	f7b40030 	sdc1	$f20,48(sp)
    4a98:	afa5009c 	sw	a1,156(sp)
    4a9c:	0c000000 	jal	0 <func_808D6870>
    4aa0:	afa4005c 	sw	a0,92(sp)
    4aa4:	862401a2 	lh	a0,418(s1)
    4aa8:	00800821 	move	at,a0
    4aac:	00042080 	sll	a0,a0,0x2
    4ab0:	00812021 	addu	a0,a0,at
    4ab4:	00042200 	sll	a0,a0,0x8
    4ab8:	00042400 	sll	a0,a0,0x10
    4abc:	0c000000 	jal	0 <func_808D6870>
    4ac0:	00042403 	sra	a0,a0,0x10
    4ac4:	862401a2 	lh	a0,418(s1)
    4ac8:	c62401d0 	lwc1	$f4,464(s1)
    4acc:	00800821 	move	at,a0
    4ad0:	000420c0 	sll	a0,a0,0x3
    4ad4:	00812023 	subu	a0,a0,at
    4ad8:	00042200 	sll	a0,a0,0x8
    4adc:	00042400 	sll	a0,a0,0x10
    4ae0:	46002502 	mul.s	$f20,$f4,$f0
    4ae4:	0c000000 	jal	0 <func_808D6870>
    4ae8:	00042403 	sra	a0,a0,0x10
    4aec:	c62601d0 	lwc1	$f6,464(s1)
    4af0:	4405a000 	mfc1	a1,$f20
    4af4:	3c063d4c 	lui	a2,0x3d4c
    4af8:	46003582 	mul.s	$f22,$f6,$f0
    4afc:	34c6cccd 	ori	a2,a2,0xcccd
    4b00:	26240024 	addiu	a0,s1,36
    4b04:	0c000000 	jal	0 <func_808D6870>
    4b08:	8e2701c8 	lw	a3,456(s1)
    4b0c:	4405b000 	mfc1	a1,$f22
    4b10:	3c063d4c 	lui	a2,0x3d4c
    4b14:	34c6cccd 	ori	a2,a2,0xcccd
    4b18:	2624002c 	addiu	a0,s1,44
    4b1c:	0c000000 	jal	0 <func_808D6870>
    4b20:	8e2701c8 	lw	a3,456(s1)
    4b24:	3c013f80 	lui	at,0x3f80
    4b28:	4481a000 	mtc1	at,$f20
    4b2c:	4480b000 	mtc1	zero,$f22
    4b30:	262401d0 	addiu	a0,s1,464
    4b34:	4406a000 	mfc1	a2,$f20
    4b38:	4405b000 	mfc1	a1,$f22
    4b3c:	0c000000 	jal	0 <func_808D6870>
    4b40:	3c073fc0 	lui	a3,0x3fc0
    4b44:	3c063d4c 	lui	a2,0x3d4c
    4b48:	34c6cccd 	ori	a2,a2,0xcccd
    4b4c:	26240028 	addiu	a0,s1,40
    4b50:	3c054348 	lui	a1,0x4348
    4b54:	0c000000 	jal	0 <func_808D6870>
    4b58:	8e270060 	lw	a3,96(s1)
    4b5c:	4406a000 	mfc1	a2,$f20
    4b60:	4407a000 	mfc1	a3,$f20
    4b64:	26240060 	addiu	a0,s1,96
    4b68:	0c000000 	jal	0 <func_808D6870>
    4b6c:	3c0541a0 	lui	a1,0x41a0
    4b70:	962e01c2 	lhu	t6,450(s1)
    4b74:	2dc10006 	sltiu	at,t6,6
    4b78:	102001ba 	beqz	at,5264 <L808DBAB0+0x24>
    4b7c:	000e7080 	sll	t6,t6,0x2
    4b80:	3c010000 	lui	at,0x0
    4b84:	002e0821 	addu	at,at,t6
    4b88:	8c2e0000 	lw	t6,0(at)
    4b8c:	01c00008 	jr	t6
    4b90:	00000000 	nop

00004b94 <L808DB404>:
    4b94:	862f01b6 	lh	t7,438(s1)
    4b98:	3c100600 	lui	s0,0x600
    4b9c:	26101b0c 	addiu	s0,s0,6924
    4ba0:	55e001b1 	bnezl	t7,5268 <L808DBAB0+0x28>
    4ba4:	8fbf004c 	lw	ra,76(sp)
    4ba8:	0c000000 	jal	0 <func_808D6870>
    4bac:	02002025 	move	a0,s0
    4bb0:	44824000 	mtc1	v0,$f8
    4bb4:	4406b000 	mfc1	a2,$f22
    4bb8:	02002825 	move	a1,s0
    4bbc:	468042a0 	cvt.s.w	$f10,$f8
    4bc0:	e62a01cc 	swc1	$f10,460(s1)
    4bc4:	0c000000 	jal	0 <func_808D6870>
    4bc8:	8fa4005c 	lw	a0,92(sp)
    4bcc:	24180001 	li	t8,1
    4bd0:	100001a4 	b	5264 <L808DBAB0+0x24>
    4bd4:	a63801c2 	sh	t8,450(s1)

00004bd8 <L808DB448>:
    4bd8:	8fa4005c 	lw	a0,92(sp)
    4bdc:	0c000000 	jal	0 <func_808D6870>
    4be0:	8e2501cc 	lw	a1,460(s1)
    4be4:	1040019f 	beqz	v0,5264 <L808DBAB0+0x24>
    4be8:	3c100600 	lui	s0,0x600
    4bec:	26101ff8 	addiu	s0,s0,8184
    4bf0:	0c000000 	jal	0 <func_808D6870>
    4bf4:	02002025 	move	a0,s0
    4bf8:	44828000 	mtc1	v0,$f16
    4bfc:	4406b000 	mfc1	a2,$f22
    4c00:	02002825 	move	a1,s0
    4c04:	468084a0 	cvt.s.w	$f18,$f16
    4c08:	e63201cc 	swc1	$f18,460(s1)
    4c0c:	0c000000 	jal	0 <func_808D6870>
    4c10:	8fa4005c 	lw	a0,92(sp)
    4c14:	24190002 	li	t9,2
    4c18:	24080064 	li	t0,100
    4c1c:	a63901c2 	sh	t9,450(s1)
    4c20:	10000190 	b	5264 <L808DBAB0+0x24>
    4c24:	a62801b6 	sh	t0,438(s1)

00004c28 <L808DB498>:
    4c28:	24090002 	li	t1,2
    4c2c:	a22901a0 	sb	t1,416(s1)
    4c30:	02202025 	move	a0,s1
    4c34:	0c000000 	jal	0 <func_808D6870>
    4c38:	2405316c 	li	a1,12652
    4c3c:	3c014248 	lui	at,0x4248
    4c40:	44814000 	mtc1	at,$f8
    4c44:	c62602f0 	lwc1	$f6,752(s1)
    4c48:	3c0141f0 	lui	at,0x41f0
    4c4c:	c62402ec 	lwc1	$f4,748(s1)
    4c50:	46083280 	add.s	$f10,$f6,$f8
    4c54:	44818000 	mtc1	at,$f16
    4c58:	e6240278 	swc1	$f4,632(s1)
    4c5c:	c62402f4 	lwc1	$f4,756(s1)
    4c60:	46105480 	add.s	$f18,$f10,$f16
    4c64:	26240284 	addiu	a0,s1,644
    4c68:	3c063dcc 	lui	a2,0x3dcc
    4c6c:	3c073bc4 	lui	a3,0x3bc4
    4c70:	e632027c 	swc1	$f18,636(s1)
    4c74:	e6240280 	swc1	$f4,640(s1)
    4c78:	afa40054 	sw	a0,84(sp)
    4c7c:	34e79ba6 	ori	a3,a3,0x9ba6
    4c80:	34c6cccd 	ori	a2,a2,0xcccd
    4c84:	0c000000 	jal	0 <func_808D6870>
    4c88:	3c053e80 	lui	a1,0x3e80
    4c8c:	3c01437f 	lui	at,0x437f
    4c90:	44810000 	mtc1	at,$f0
    4c94:	4406a000 	mfc1	a2,$f20
    4c98:	26240288 	addiu	a0,s1,648
    4c9c:	44050000 	mfc1	a1,$f0
    4ca0:	44070000 	mfc1	a3,$f0
    4ca4:	0c000000 	jal	0 <func_808D6870>
    4ca8:	00000000 	nop
    4cac:	3c063dcc 	lui	a2,0x3dcc
    4cb0:	3c073bc4 	lui	a3,0x3bc4
    4cb4:	34e79ba6 	ori	a3,a3,0x9ba6
    4cb8:	34c6cccd 	ori	a2,a2,0xcccd
    4cbc:	2624028c 	addiu	a0,s1,652
    4cc0:	0c000000 	jal	0 <func_808D6870>
    4cc4:	3c053e80 	lui	a1,0x3e80
    4cc8:	862201b6 	lh	v0,438(s1)
    4ccc:	28410015 	slti	at,v0,21
    4cd0:	14200008 	bnez	at,4cf4 <L808DB498+0xcc>
    4cd4:	2841003c 	slti	at,v0,60
    4cd8:	10200006 	beqz	at,4cf4 <L808DB498+0xcc>
    4cdc:	26240290 	addiu	a0,s1,656
    4ce0:	4406a000 	mfc1	a2,$f20
    4ce4:	3c05437f 	lui	a1,0x437f
    4ce8:	0c000000 	jal	0 <func_808D6870>
    4cec:	3c074170 	lui	a3,0x4170
    4cf0:	862201b6 	lh	v0,438(s1)
    4cf4:	14400017 	bnez	v0,4d54 <L808DB498+0x12c>
    4cf8:	262400b6 	addiu	a0,s1,182
    4cfc:	3c100600 	lui	s0,0x600
    4d00:	26100540 	addiu	s0,s0,1344
    4d04:	0c000000 	jal	0 <func_808D6870>
    4d08:	02002025 	move	a0,s0
    4d0c:	44823000 	mtc1	v0,$f6
    4d10:	4406b000 	mfc1	a2,$f22
    4d14:	02002825 	move	a1,s0
    4d18:	46803220 	cvt.s.w	$f8,$f6
    4d1c:	e62801cc 	swc1	$f8,460(s1)
    4d20:	0c000000 	jal	0 <func_808D6870>
    4d24:	8fa4005c 	lw	a0,92(sp)
    4d28:	240a0003 	li	t2,3
    4d2c:	240b0006 	li	t3,6
    4d30:	240c000f 	li	t4,15
    4d34:	a62a01c2 	sh	t2,450(s1)
    4d38:	a62b01b6 	sh	t3,438(s1)
    4d3c:	a62c01b8 	sh	t4,440(s1)
    4d40:	02202025 	move	a0,s1
    4d44:	0c000000 	jal	0 <func_808D6870>
    4d48:	240539d5 	li	a1,14805
    4d4c:	10000146 	b	5268 <L808DBAB0+0x28>
    4d50:	8fbf004c 	lw	ra,76(sp)
    4d54:	8625008a 	lh	a1,138(s1)
    4d58:	24060005 	li	a2,5
    4d5c:	0c000000 	jal	0 <func_808D6870>
    4d60:	240703e8 	li	a3,1000
    4d64:	862201b6 	lh	v0,438(s1)
    4d68:	00008025 	move	s0,zero
    4d6c:	2841fffc 	slti	at,v0,-4
    4d70:	1020000f 	beqz	at,4db0 <L808DB498+0x188>
    4d74:	00106880 	sll	t5,s0,0x2
    4d78:	022d2021 	addu	a0,s1,t5
    4d7c:	4405b000 	mfc1	a1,$f22
    4d80:	4406a000 	mfc1	a2,$f20
    4d84:	24840294 	addiu	a0,a0,660
    4d88:	0c000000 	jal	0 <func_808D6870>
    4d8c:	3c074220 	lui	a3,0x4220
    4d90:	26100001 	addiu	s0,s0,1
    4d94:	00108400 	sll	s0,s0,0x10
    4d98:	00108403 	sra	s0,s0,0x10
    4d9c:	2a01000f 	slti	at,s0,15
    4da0:	5420fff5 	bnezl	at,4d78 <L808DB498+0x150>
    4da4:	00106880 	sll	t5,s0,0x2
    4da8:	1000001d 	b	4e20 <L808DB498+0x1f8>
    4dac:	862201b6 	lh	v0,438(s1)
    4db0:	28410007 	slti	at,v0,7
    4db4:	14200019 	bnez	at,4e1c <L808DB498+0x1f4>
    4db8:	2841001a 	slti	at,v0,26
    4dbc:	50200018 	beqzl	at,4e20 <L808DB498+0x1f8>
    4dc0:	862201b6 	lh	v0,438(s1)
    4dc4:	862201ac 	lh	v0,428(s1)
    4dc8:	2841000f 	slti	at,v0,15
    4dcc:	10200003 	beqz	at,4ddc <L808DB498+0x1b4>
    4dd0:	244e0001 	addiu	t6,v0,1
    4dd4:	a62e01ac 	sh	t6,428(s1)
    4dd8:	862201ac 	lh	v0,428(s1)
    4ddc:	1840000f 	blez	v0,4e1c <L808DB498+0x1f4>
    4de0:	00008025 	move	s0,zero
    4de4:	00107880 	sll	t7,s0,0x2
    4de8:	022f2021 	addu	a0,s1,t7
    4dec:	4406a000 	mfc1	a2,$f20
    4df0:	24840294 	addiu	a0,a0,660
    4df4:	3c054348 	lui	a1,0x4348
    4df8:	0c000000 	jal	0 <func_808D6870>
    4dfc:	3c074220 	lui	a3,0x4220
    4e00:	863801ac 	lh	t8,428(s1)
    4e04:	26100001 	addiu	s0,s0,1
    4e08:	00108400 	sll	s0,s0,0x10
    4e0c:	00108403 	sra	s0,s0,0x10
    4e10:	0218082a 	slt	at,s0,t8
    4e14:	5420fff4 	bnezl	at,4de8 <L808DB498+0x1c0>
    4e18:	00107880 	sll	t7,s0,0x2
    4e1c:	862201b6 	lh	v0,438(s1)
    4e20:	8fa40054 	lw	a0,84(sp)
    4e24:	3c053ecc 	lui	a1,0x3ecc
    4e28:	2841001f 	slti	at,v0,31
    4e2c:	1020000a 	beqz	at,4e58 <L808DB498+0x230>
    4e30:	3c013f00 	lui	at,0x3f00
    4e34:	4481a000 	mtc1	at,$f20
    4e38:	3c073c8b 	lui	a3,0x3c8b
    4e3c:	34e74396 	ori	a3,a3,0x4396
    4e40:	4406a000 	mfc1	a2,$f20
    4e44:	0c000000 	jal	0 <func_808D6870>
    4e48:	34a5cccd 	ori	a1,a1,0xcccd
    4e4c:	c62a0284 	lwc1	$f10,644(s1)
    4e50:	862201b6 	lh	v0,438(s1)
    4e54:	e62a028c 	swc1	$f10,652(s1)
    4e58:	2841001f 	slti	at,v0,31
    4e5c:	10200013 	beqz	at,4eac <L808DB498+0x284>
    4e60:	262402d0 	addiu	a0,s1,720
    4e64:	3c063dcc 	lui	a2,0x3dcc
    4e68:	34c6cccd 	ori	a2,a2,0xcccd
    4e6c:	3c054234 	lui	a1,0x4234
    4e70:	0c000000 	jal	0 <func_808D6870>
    4e74:	3c074120 	lui	a3,0x4120
    4e78:	8e2b0278 	lw	t3,632(s1)
    4e7c:	24190001 	li	t9,1
    4e80:	24080002 	li	t0,2
    4e84:	3c090000 	lui	t1,0x0
    4e88:	a639066e 	sh	t9,1646(s1)
    4e8c:	a228066c 	sb	t0,1644(s1)
    4e90:	25290000 	addiu	t1,t1,0
    4e94:	ad2b0000 	sw	t3,0(t1)
    4e98:	8e2a027c 	lw	t2,636(s1)
    4e9c:	ad2a0004 	sw	t2,4(t1)
    4ea0:	8e2b0280 	lw	t3,640(s1)
    4ea4:	ad2b0008 	sw	t3,8(t1)
    4ea8:	862201b6 	lh	v0,438(s1)
    4eac:	2401002f 	li	at,47
    4eb0:	14410003 	bne	v0,at,4ec0 <L808DB498+0x298>
    4eb4:	240c0001 	li	t4,1
    4eb8:	a22c0274 	sb	t4,628(s1)
    4ebc:	862201b6 	lh	v0,438(s1)
    4ec0:	2401002e 	li	at,46
    4ec4:	14410003 	bne	v0,at,4ed4 <L808DB498+0x2ac>
    4ec8:	240d0002 	li	t5,2
    4ecc:	a22d0274 	sb	t5,628(s1)
    4ed0:	862201b6 	lh	v0,438(s1)
    4ed4:	2401002d 	li	at,45
    4ed8:	14410003 	bne	v0,at,4ee8 <L808DB498+0x2c0>
    4edc:	240e0003 	li	t6,3
    4ee0:	a22e0274 	sb	t6,628(s1)
    4ee4:	862201b6 	lh	v0,438(s1)
    4ee8:	2401002c 	li	at,44
    4eec:	14410003 	bne	v0,at,4efc <L808DB498+0x2d4>
    4ef0:	240f0004 	li	t7,4
    4ef4:	a22f0274 	sb	t7,628(s1)
    4ef8:	862201b6 	lh	v0,438(s1)
    4efc:	2401002b 	li	at,43
    4f00:	14410003 	bne	v0,at,4f10 <L808DB498+0x2e8>
    4f04:	24180005 	li	t8,5
    4f08:	a2380274 	sb	t8,628(s1)
    4f0c:	862201b6 	lh	v0,438(s1)
    4f10:	2401002a 	li	at,42
    4f14:	14410003 	bne	v0,at,4f24 <L808DB498+0x2fc>
    4f18:	24190006 	li	t9,6
    4f1c:	a2390274 	sb	t9,628(s1)
    4f20:	862201b6 	lh	v0,438(s1)
    4f24:	2841001f 	slti	at,v0,31
    4f28:	142000ce 	bnez	at,5264 <L808DBAB0+0x24>
    4f2c:	3c014120 	lui	at,0x4120
    4f30:	44816000 	mtc1	at,$f12
    4f34:	0c000000 	jal	0 <func_808D6870>
    4f38:	e7b60074 	swc1	$f22,116(sp)
    4f3c:	3c014316 	lui	at,0x4316
    4f40:	44818000 	mtc1	at,$f16
    4f44:	e7b6007c 	swc1	$f22,124(sp)
    4f48:	3c014700 	lui	at,0x4700
    4f4c:	46100480 	add.s	$f18,$f0,$f16
    4f50:	44814000 	mtc1	at,$f8
    4f54:	3c010000 	lui	at,0x0
    4f58:	c4300000 	lwc1	$f16,0(at)
    4f5c:	e7b20078 	swc1	$f18,120(sp)
    4f60:	8628008a 	lh	t0,138(s1)
    4f64:	00002825 	move	a1,zero
    4f68:	44882000 	mtc1	t0,$f4
    4f6c:	00000000 	nop
    4f70:	468021a0 	cvt.s.w	$f6,$f4
    4f74:	46083283 	div.s	$f10,$f6,$f8
    4f78:	46105302 	mul.s	$f12,$f10,$f16
    4f7c:	0c000000 	jal	0 <func_808D6870>
    4f80:	00000000 	nop
    4f84:	3c014780 	lui	at,0x4780
    4f88:	44816000 	mtc1	at,$f12
    4f8c:	0c000000 	jal	0 <func_808D6870>
    4f90:	00000000 	nop
    4f94:	46000306 	mov.s	$f12,$f0
    4f98:	0c000000 	jal	0 <func_808D6870>
    4f9c:	24050001 	li	a1,1
    4fa0:	27a40074 	addiu	a0,sp,116
    4fa4:	0c000000 	jal	0 <func_808D6870>
    4fa8:	27a50068 	addiu	a1,sp,104
    4fac:	c6320278 	lwc1	$f18,632(s1)
    4fb0:	c7a40068 	lwc1	$f4,104(sp)
    4fb4:	c7aa006c 	lwc1	$f10,108(sp)
    4fb8:	8fa4009c 	lw	a0,156(sp)
    4fbc:	46049180 	add.s	$f6,$f18,$f4
    4fc0:	c7a40070 	lwc1	$f4,112(sp)
    4fc4:	27a50080 	addiu	a1,sp,128
    4fc8:	3c0641a0 	lui	a2,0x41a0
    4fcc:	e7a60080 	swc1	$f6,128(sp)
    4fd0:	c628027c 	lwc1	$f8,636(s1)
    4fd4:	460a4400 	add.s	$f16,$f8,$f10
    4fd8:	e7b00084 	swc1	$f16,132(sp)
    4fdc:	c6320280 	lwc1	$f18,640(s1)
    4fe0:	46049180 	add.s	$f6,$f18,$f4
    4fe4:	0c000000 	jal	0 <func_808D6870>
    4fe8:	e7a60088 	swc1	$f6,136(sp)
    4fec:	1000009e 	b	5268 <L808DBAB0+0x28>
    4ff0:	8fbf004c 	lw	ra,76(sp)

00004ff4 <L808DB864>:
    4ff4:	24090002 	li	t1,2
    4ff8:	a22901a0 	sb	t1,416(s1)
    4ffc:	00008025 	move	s0,zero
    5000:	00105080 	sll	t2,s0,0x2
    5004:	022a2021 	addu	a0,s1,t2
    5008:	4405b000 	mfc1	a1,$f22
    500c:	4406a000 	mfc1	a2,$f20
    5010:	24840294 	addiu	a0,a0,660
    5014:	0c000000 	jal	0 <func_808D6870>
    5018:	3c074220 	lui	a3,0x4220
    501c:	26100001 	addiu	s0,s0,1
    5020:	00108400 	sll	s0,s0,0x10
    5024:	00108403 	sra	s0,s0,0x10
    5028:	2a01000f 	slti	at,s0,15
    502c:	5420fff5 	bnezl	at,5004 <L808DB864+0x10>
    5030:	00105080 	sll	t2,s0,0x2
    5034:	862201b6 	lh	v0,438(s1)
    5038:	24010001 	li	at,1
    503c:	3c0b0000 	lui	t3,0x0
    5040:	14410008 	bne	v0,at,5064 <L808DB864+0x70>
    5044:	02202025 	move	a0,s1
    5048:	3c014170 	lui	at,0x4170
    504c:	44814000 	mtc1	at,$f8
    5050:	8d6b0000 	lw	t3,0(t3)
    5054:	240528c7 	li	a1,10439
    5058:	0c000000 	jal	0 <func_808D6870>
    505c:	e56816c0 	swc1	$f8,5824(t3)
    5060:	862201b6 	lh	v0,438(s1)
    5064:	1440001c 	bnez	v0,50d8 <L808DB864+0xe4>
    5068:	26240284 	addiu	a0,s1,644
    506c:	4405a000 	mfc1	a1,$f20
    5070:	3c063da3 	lui	a2,0x3da3
    5074:	0c000000 	jal	0 <func_808D6870>
    5078:	34c6d70a 	ori	a2,a2,0xd70a
    507c:	c62a0284 	lwc1	$f10,644(s1)
    5080:	4405a000 	mfc1	a1,$f20
    5084:	262402d0 	addiu	a0,s1,720
    5088:	3c064120 	lui	a2,0x4120
    508c:	0c000000 	jal	0 <func_808D6870>
    5090:	e62a028c 	swc1	$f10,652(s1)
    5094:	3c013f00 	lui	at,0x3f00
    5098:	4481a000 	mtc1	at,$f20
    509c:	26240278 	addiu	a0,s1,632
    50a0:	8e2501fc 	lw	a1,508(s1)
    50a4:	4406a000 	mfc1	a2,$f20
    50a8:	0c000000 	jal	0 <func_808D6870>
    50ac:	3c0741f0 	lui	a3,0x41f0
    50b0:	4406a000 	mfc1	a2,$f20
    50b4:	2624027c 	addiu	a0,s1,636
    50b8:	8e250200 	lw	a1,512(s1)
    50bc:	0c000000 	jal	0 <func_808D6870>
    50c0:	3c0741f0 	lui	a3,0x41f0
    50c4:	4406a000 	mfc1	a2,$f20
    50c8:	26240280 	addiu	a0,s1,640
    50cc:	8e250204 	lw	a1,516(s1)
    50d0:	0c000000 	jal	0 <func_808D6870>
    50d4:	3c0741f0 	lui	a3,0x41f0
    50d8:	862c01b8 	lh	t4,440(s1)
    50dc:	3c100600 	lui	s0,0x600
    50e0:	26100fe8 	addiu	s0,s0,4072
    50e4:	55800060 	bnezl	t4,5268 <L808DBAB0+0x28>
    50e8:	8fbf004c 	lw	ra,76(sp)
    50ec:	0c000000 	jal	0 <func_808D6870>
    50f0:	02002025 	move	a0,s0
    50f4:	44828000 	mtc1	v0,$f16
    50f8:	4406b000 	mfc1	a2,$f22
    50fc:	02002825 	move	a1,s0
    5100:	468084a0 	cvt.s.w	$f18,$f16
    5104:	e63201cc 	swc1	$f18,460(s1)
    5108:	0c000000 	jal	0 <func_808D6870>
    510c:	8fa4005c 	lw	a0,92(sp)
    5110:	240d0004 	li	t5,4
    5114:	a62d01c2 	sh	t5,450(s1)
    5118:	e6360288 	swc1	$f22,648(s1)
    511c:	e6360290 	swc1	$f22,656(s1)
    5120:	e6360284 	swc1	$f22,644(s1)
    5124:	1000004f 	b	5264 <L808DBAB0+0x24>
    5128:	e636028c 	swc1	$f22,652(s1)

0000512c <L808DB99C>:
    512c:	240e0002 	li	t6,2
    5130:	a22e01a0 	sb	t6,416(s1)
    5134:	8fa4005c 	lw	a0,92(sp)
    5138:	0c000000 	jal	0 <func_808D6870>
    513c:	3c0540a0 	lui	a1,0x40a0
    5140:	10400021 	beqz	v0,51c8 <L808DB99C+0x9c>
    5144:	8fa6009c 	lw	a2,156(sp)
    5148:	24c41c24 	addiu	a0,a2,7204
    514c:	afa40058 	sw	a0,88(sp)
    5150:	00008025 	move	s0,zero
    5154:	c62401fc 	lwc1	$f4,508(s1)
    5158:	26180104 	addiu	t8,s0,260
    515c:	8fa40058 	lw	a0,88(sp)
    5160:	e7a40010 	swc1	$f4,16(sp)
    5164:	c6260200 	lwc1	$f6,512(s1)
    5168:	8fa6009c 	lw	a2,156(sp)
    516c:	02202825 	move	a1,s1
    5170:	e7a60014 	swc1	$f6,20(sp)
    5174:	c6280204 	lwc1	$f8,516(s1)
    5178:	afa0001c 	sw	zero,28(sp)
    517c:	240700e8 	li	a3,232
    5180:	e7a80018 	swc1	$f8,24(sp)
    5184:	862f008a 	lh	t7,138(s1)
    5188:	afb80028 	sw	t8,40(sp)
    518c:	afa00024 	sw	zero,36(sp)
    5190:	0c000000 	jal	0 <func_808D6870>
    5194:	afaf0020 	sw	t7,32(sp)
    5198:	26100001 	addiu	s0,s0,1
    519c:	00108400 	sll	s0,s0,0x10
    51a0:	00108403 	sra	s0,s0,0x10
    51a4:	2a010005 	slti	at,s0,5
    51a8:	5420ffeb 	bnezl	at,5158 <L808DB99C+0x2c>
    51ac:	c62401fc 	lwc1	$f4,508(s1)
    51b0:	02202025 	move	a0,s1
    51b4:	0c000000 	jal	0 <func_808D6870>
    51b8:	240539d4 	li	a1,14804
    51bc:	02202025 	move	a0,s1
    51c0:	0c000000 	jal	0 <func_808D6870>
    51c4:	2405396d 	li	a1,14701
    51c8:	8fa4005c 	lw	a0,92(sp)
    51cc:	0c000000 	jal	0 <func_808D6870>
    51d0:	3c054040 	lui	a1,0x4040
    51d4:	10400008 	beqz	v0,51f8 <L808DB99C+0xcc>
    51d8:	3c0141d0 	lui	at,0x41d0
    51dc:	3c190000 	lui	t9,0x0
    51e0:	8f390000 	lw	t9,0(t9)
    51e4:	44815000 	mtc1	at,$f10
    51e8:	02202025 	move	a0,s1
    51ec:	240528c7 	li	a1,10439
    51f0:	0c000000 	jal	0 <func_808D6870>
    51f4:	e72a16c4 	swc1	$f10,5828(t9)
    51f8:	8fa4005c 	lw	a0,92(sp)
    51fc:	0c000000 	jal	0 <func_808D6870>
    5200:	8e2501cc 	lw	a1,460(s1)
    5204:	10400017 	beqz	v0,5264 <L808DBAB0+0x24>
    5208:	3c100600 	lui	s0,0x600
    520c:	26101440 	addiu	s0,s0,5184
    5210:	0c000000 	jal	0 <func_808D6870>
    5214:	02002025 	move	a0,s0
    5218:	44828000 	mtc1	v0,$f16
    521c:	4406b000 	mfc1	a2,$f22
    5220:	02002825 	move	a1,s0
    5224:	468084a0 	cvt.s.w	$f18,$f16
    5228:	e63201cc 	swc1	$f18,460(s1)
    522c:	0c000000 	jal	0 <func_808D6870>
    5230:	8fa4005c 	lw	a0,92(sp)
    5234:	24080005 	li	t0,5
    5238:	1000000a 	b	5264 <L808DBAB0+0x24>
    523c:	a62801c2 	sh	t0,450(s1)

00005240 <L808DBAB0>:
    5240:	24090002 	li	t1,2
    5244:	a22901a0 	sb	t1,416(s1)
    5248:	8fa4005c 	lw	a0,92(sp)
    524c:	0c000000 	jal	0 <func_808D6870>
    5250:	8e2501cc 	lw	a1,460(s1)
    5254:	10400003 	beqz	v0,5264 <L808DBAB0+0x24>
    5258:	02202025 	move	a0,s1
    525c:	0c000000 	jal	0 <func_808D6870>
    5260:	8fa5009c 	lw	a1,156(sp)
    5264:	8fbf004c 	lw	ra,76(sp)
    5268:	d7b40030 	ldc1	$f20,48(sp)
    526c:	d7b60038 	ldc1	$f22,56(sp)
    5270:	8fb00044 	lw	s0,68(sp)
    5274:	8fb10048 	lw	s1,72(sp)
    5278:	03e00008 	jr	ra
    527c:	27bd0098 	addiu	sp,sp,152

00005280 <func_808DBAF0>:
    5280:	27bdffe0 	addiu	sp,sp,-32
    5284:	afbf001c 	sw	ra,28(sp)
    5288:	afb00018 	sw	s0,24(sp)
    528c:	00808025 	move	s0,a0
    5290:	0c000000 	jal	0 <func_808D6870>
    5294:	2406017c 	li	a2,380
    5298:	3c050601 	lui	a1,0x601
    529c:	24a59a14 	addiu	a1,a1,-26092
    52a0:	26040150 	addiu	a0,s0,336
    52a4:	0c000000 	jal	0 <func_808D6870>
    52a8:	3c06c120 	lui	a2,0xc120
    52ac:	44802000 	mtc1	zero,$f4
    52b0:	3c0e0000 	lui	t6,0x0
    52b4:	3c014280 	lui	at,0x4280
    52b8:	25ce0000 	addiu	t6,t6,0
    52bc:	44816000 	mtc1	at,$f12
    52c0:	ae0e0194 	sw	t6,404(s0)
    52c4:	0c000000 	jal	0 <func_808D6870>
    52c8:	e60401c8 	swc1	$f4,456(s0)
    52cc:	4600018d 	trunc.w.s	$f6,$f0
    52d0:	a60001c2 	sh	zero,450(s0)
    52d4:	3c014000 	lui	at,0x4000
    52d8:	3c0a0000 	lui	t2,0x0
    52dc:	44083000 	mfc1	t0,$f6
    52e0:	44814000 	mtc1	at,$f8
    52e4:	2509001e 	addiu	t1,t0,30
    52e8:	a60901b6 	sh	t1,438(s0)
    52ec:	8d4a0000 	lw	t2,0(t2)
    52f0:	e54816ac 	swc1	$f8,5804(t2)
    52f4:	8fbf001c 	lw	ra,28(sp)
    52f8:	8fb00018 	lw	s0,24(sp)
    52fc:	27bd0020 	addiu	sp,sp,32
    5300:	03e00008 	jr	ra
    5304:	00000000 	nop

00005308 <func_808DBB78>:
    5308:	27bdffd0 	addiu	sp,sp,-48
    530c:	afbf001c 	sw	ra,28(sp)
    5310:	afb00018 	sw	s0,24(sp)
    5314:	8ca31c44 	lw	v1,7236(a1)
    5318:	3c020000 	lui	v0,0x0
    531c:	240e0001 	li	t6,1
    5320:	24420000 	addiu	v0,v0,0
    5324:	3c01c040 	lui	at,0xc040
    5328:	a08e0199 	sb	t6,409(a0)
    532c:	44810000 	mtc1	at,$f0
    5330:	8c4f0000 	lw	t7,0(v0)
    5334:	3c013e80 	lui	at,0x3e80
    5338:	44812000 	mtc1	at,$f4
    533c:	e5e016b0 	swc1	$f0,5808(t7)
    5340:	8c580000 	lw	t8,0(v0)
    5344:	3c0141a0 	lui	at,0x41a0
    5348:	44813000 	mtc1	at,$f6
    534c:	e70416b4 	swc1	$f4,5812(t8)
    5350:	8c590000 	lw	t9,0(v0)
    5354:	00808025 	move	s0,a0
    5358:	24840150 	addiu	a0,a0,336
    535c:	e72016b8 	swc1	$f0,5816(t9)
    5360:	8c480000 	lw	t0,0(v0)
    5364:	e50616d0 	swc1	$f6,5840(t0)
    5368:	afa50034 	sw	a1,52(sp)
    536c:	0c000000 	jal	0 <func_808D6870>
    5370:	afa30020 	sw	v1,32(sp)
    5374:	860901c2 	lh	t1,450(s0)
    5378:	8fa30020 	lw	v1,32(sp)
    537c:	8fa50034 	lw	a1,52(sp)
    5380:	55200056 	bnezl	t1,54dc <func_808DBB78+0x1d4>
    5384:	860401a2 	lh	a0,418(s0)
    5388:	c4680028 	lwc1	$f8,40(v1)
    538c:	44805000 	mtc1	zero,$f10
    5390:	00000000 	nop
    5394:	460a403c 	c.lt.s	$f8,$f10
    5398:	00000000 	nop
    539c:	4503004f 	bc1tl	54dc <func_808DBB78+0x1d4>
    53a0:	860401a2 	lh	a0,418(s0)
    53a4:	8c62067c 	lw	v0,1660(v1)
    53a8:	30422000 	andi	v0,v0,0x2000
    53ac:	54400014 	bnezl	v0,5400 <func_808DBB78+0xf8>
    53b0:	860a01b6 	lh	t2,438(s0)
    53b4:	c4600024 	lwc1	$f0,36(v1)
    53b8:	3c0142dc 	lui	at,0x42dc
    53bc:	44811000 	mtc1	at,$f2
    53c0:	46000005 	abs.s	$f0,$f0
    53c4:	4602003c 	c.lt.s	$f0,$f2
    53c8:	00000000 	nop
    53cc:	4502000c 	bc1fl	5400 <func_808DBB78+0xf8>
    53d0:	860a01b6 	lh	t2,438(s0)
    53d4:	c460002c 	lwc1	$f0,44(v1)
    53d8:	46000005 	abs.s	$f0,$f0
    53dc:	4602003c 	c.lt.s	$f0,$f2
    53e0:	00000000 	nop
    53e4:	45020006 	bc1fl	5400 <func_808DBB78+0xf8>
    53e8:	860a01b6 	lh	t2,438(s0)
    53ec:	0c000000 	jal	0 <func_808D6870>
    53f0:	02002025 	move	a0,s0
    53f4:	10000039 	b	54dc <func_808DBB78+0x1d4>
    53f8:	860401a2 	lh	a0,418(s0)
    53fc:	860a01b6 	lh	t2,438(s0)
    5400:	55400036 	bnezl	t2,54dc <func_808DBB78+0x1d4>
    5404:	860401a2 	lh	a0,418(s0)
    5408:	14400033 	bnez	v0,54d8 <func_808DBB78+0x1d0>
    540c:	3c0141f0 	lui	at,0x41f0
    5410:	44816000 	mtc1	at,$f12
    5414:	0c000000 	jal	0 <func_808D6870>
    5418:	afa50034 	sw	a1,52(sp)
    541c:	4600040d 	trunc.w.s	$f16,$f0
    5420:	821800af 	lb	t8,175(s0)
    5424:	8fa50034 	lw	a1,52(sp)
    5428:	440e8000 	mfc1	t6,$f16
    542c:	2b010014 	slti	at,t8,20
    5430:	25cf001e 	addiu	t7,t6,30
    5434:	14200005 	bnez	at,544c <func_808DBB78+0x144>
    5438:	a60f01b6 	sh	t7,438(s0)
    543c:	0c000000 	jal	0 <func_808D6870>
    5440:	02002025 	move	a0,s0
    5444:	10000025 	b	54dc <func_808DBB78+0x1d4>
    5448:	860401a2 	lh	a0,418(s0)
    544c:	0c000000 	jal	0 <func_808D6870>
    5450:	afa50034 	sw	a1,52(sp)
    5454:	3c013f00 	lui	at,0x3f00
    5458:	44819000 	mtc1	at,$f18
    545c:	8fa50034 	lw	a1,52(sp)
    5460:	4600903e 	c.le.s	$f18,$f0
    5464:	00000000 	nop
    5468:	45000019 	bc1f	54d0 <func_808DBB78+0x1c8>
    546c:	00000000 	nop
    5470:	0c000000 	jal	0 <func_808D6870>
    5474:	afa50034 	sw	a1,52(sp)
    5478:	3c013f00 	lui	at,0x3f00
    547c:	44812000 	mtc1	at,$f4
    5480:	3c0143af 	lui	at,0x43af
    5484:	8fa50034 	lw	a1,52(sp)
    5488:	4600203e 	c.le.s	$f4,$f0
    548c:	00000000 	nop
    5490:	45010007 	bc1t	54b0 <func_808DBB78+0x1a8>
    5494:	00000000 	nop
    5498:	44813000 	mtc1	at,$f6
    549c:	c6080090 	lwc1	$f8,144(s0)
    54a0:	4608303c 	c.lt.s	$f6,$f8
    54a4:	00000000 	nop
    54a8:	45000005 	bc1f	54c0 <func_808DBB78+0x1b8>
    54ac:	00000000 	nop
    54b0:	0c000000 	jal	0 <func_808D6870>
    54b4:	02002025 	move	a0,s0
    54b8:	10000008 	b	54dc <func_808DBB78+0x1d4>
    54bc:	860401a2 	lh	a0,418(s0)
    54c0:	0c000000 	jal	0 <func_808D6870>
    54c4:	02002025 	move	a0,s0
    54c8:	10000004 	b	54dc <func_808DBB78+0x1d4>
    54cc:	860401a2 	lh	a0,418(s0)
    54d0:	0c000000 	jal	0 <func_808D6870>
    54d4:	02002025 	move	a0,s0
    54d8:	860401a2 	lh	a0,418(s0)
    54dc:	00800821 	move	at,a0
    54e0:	00042080 	sll	a0,a0,0x2
    54e4:	00812021 	addu	a0,a0,at
    54e8:	00042200 	sll	a0,a0,0x8
    54ec:	00042400 	sll	a0,a0,0x10
    54f0:	0c000000 	jal	0 <func_808D6870>
    54f4:	00042403 	sra	a0,a0,0x10
    54f8:	3c0142c8 	lui	at,0x42c8
    54fc:	44815000 	mtc1	at,$f10
    5500:	00000000 	nop
    5504:	460a0402 	mul.s	$f16,$f0,$f10
    5508:	e7b0002c 	swc1	$f16,44(sp)
    550c:	860401a2 	lh	a0,418(s0)
    5510:	00800821 	move	at,a0
    5514:	000420c0 	sll	a0,a0,0x3
    5518:	00812023 	subu	a0,a0,at
    551c:	00042200 	sll	a0,a0,0x8
    5520:	00042400 	sll	a0,a0,0x10
    5524:	0c000000 	jal	0 <func_808D6870>
    5528:	00042403 	sra	a0,a0,0x10
    552c:	3c0142c8 	lui	at,0x42c8
    5530:	44819000 	mtc1	at,$f18
    5534:	3c063d4c 	lui	a2,0x3d4c
    5538:	34c6cccd 	ori	a2,a2,0xcccd
    553c:	46120102 	mul.s	$f4,$f0,$f18
    5540:	26040024 	addiu	a0,s0,36
    5544:	8fa5002c 	lw	a1,44(sp)
    5548:	e7a40024 	swc1	$f4,36(sp)
    554c:	0c000000 	jal	0 <func_808D6870>
    5550:	8e0701c8 	lw	a3,456(s0)
    5554:	3c010000 	lui	at,0x0
    5558:	c4280000 	lwc1	$f8,0(at)
    555c:	c60601c8 	lwc1	$f6,456(s0)
    5560:	3c063d4c 	lui	a2,0x3d4c
    5564:	34c6cccd 	ori	a2,a2,0xcccd
    5568:	46083282 	mul.s	$f10,$f6,$f8
    556c:	26040028 	addiu	a0,s0,40
    5570:	3c054316 	lui	a1,0x4316
    5574:	44075000 	mfc1	a3,$f10
    5578:	0c000000 	jal	0 <func_808D6870>
    557c:	00000000 	nop
    5580:	3c063d4c 	lui	a2,0x3d4c
    5584:	34c6cccd 	ori	a2,a2,0xcccd
    5588:	2604002c 	addiu	a0,s0,44
    558c:	8fa50024 	lw	a1,36(sp)
    5590:	0c000000 	jal	0 <func_808D6870>
    5594:	8e0701c8 	lw	a3,456(s0)
    5598:	260401c8 	addiu	a0,s0,456
    559c:	3c054248 	lui	a1,0x4248
    55a0:	3c063f80 	lui	a2,0x3f80
    55a4:	0c000000 	jal	0 <func_808D6870>
    55a8:	3c073f00 	lui	a3,0x3f00
    55ac:	860401a2 	lh	a0,418(s0)
    55b0:	c6100024 	lwc1	$f16,36(s0)
    55b4:	c6120100 	lwc1	$f18,256(s0)
    55b8:	00800821 	move	at,a0
    55bc:	00042080 	sll	a0,a0,0x2
    55c0:	00812023 	subu	a0,a0,at
    55c4:	c606002c 	lwc1	$f6,44(s0)
    55c8:	c6080108 	lwc1	$f8,264(s0)
    55cc:	00042100 	sll	a0,a0,0x4
    55d0:	00812023 	subu	a0,a0,at
    55d4:	000420c0 	sll	a0,a0,0x3
    55d8:	46128101 	sub.s	$f4,$f16,$f18
    55dc:	00812023 	subu	a0,a0,at
    55e0:	00042080 	sll	a0,a0,0x2
    55e4:	46083281 	sub.s	$f10,$f6,$f8
    55e8:	00042400 	sll	a0,a0,0x10
    55ec:	e604005c 	swc1	$f4,92(s0)
    55f0:	00042403 	sra	a0,a0,0x10
    55f4:	0c000000 	jal	0 <func_808D6870>
    55f8:	e60a0064 	swc1	$f10,100(s0)
    55fc:	c61001c8 	lwc1	$f16,456(s0)
    5600:	3c010000 	lui	at,0x0
    5604:	c4240000 	lwc1	$f4,0(at)
    5608:	46008482 	mul.s	$f18,$f16,$f0
    560c:	c6060028 	lwc1	$f6,40(s0)
    5610:	260400b6 	addiu	a0,s0,182
    5614:	8605008a 	lh	a1,138(s0)
    5618:	24060005 	li	a2,5
    561c:	24070bb8 	li	a3,3000
    5620:	46049082 	mul.s	$f2,$f18,$f4
    5624:	46023200 	add.s	$f8,$f6,$f2
    5628:	e6020060 	swc1	$f2,96(s0)
    562c:	0c000000 	jal	0 <func_808D6870>
    5630:	e6080028 	swc1	$f8,40(s0)
    5634:	260400e4 	addiu	a0,s0,228
    5638:	0c000000 	jal	0 <func_808D6870>
    563c:	240530a4 	li	a1,12452
    5640:	8fbf001c 	lw	ra,28(sp)
    5644:	8fb00018 	lw	s0,24(sp)
    5648:	27bd0030 	addiu	sp,sp,48
    564c:	03e00008 	jr	ra
    5650:	00000000 	nop

00005654 <func_808DBEC4>:
    5654:	27bdffe0 	addiu	sp,sp,-32
    5658:	afbf001c 	sw	ra,28(sp)
    565c:	afb00018 	sw	s0,24(sp)
    5660:	00808025 	move	s0,a0
    5664:	0c000000 	jal	0 <func_808D6870>
    5668:	2406017c 	li	a2,380
    566c:	3c040601 	lui	a0,0x601
    5670:	0c000000 	jal	0 <func_808D6870>
    5674:	2484aa24 	addiu	a0,a0,-21980
    5678:	44822000 	mtc1	v0,$f4
    567c:	3c050601 	lui	a1,0x601
    5680:	24a5aa24 	addiu	a1,a1,-21980
    5684:	468021a0 	cvt.s.w	$f6,$f4
    5688:	26040150 	addiu	a0,s0,336
    568c:	3c06c040 	lui	a2,0xc040
    5690:	0c000000 	jal	0 <func_808D6870>
    5694:	e60601cc 	swc1	$f6,460(s0)
    5698:	3c0e0000 	lui	t6,0x0
    569c:	25ce0000 	addiu	t6,t6,0
    56a0:	240f0019 	li	t7,25
    56a4:	ae0e0194 	sw	t6,404(s0)
    56a8:	a60f01b6 	sh	t7,438(s0)
    56ac:	8fbf001c 	lw	ra,28(sp)
    56b0:	8fb00018 	lw	s0,24(sp)
    56b4:	27bd0020 	addiu	sp,sp,32
    56b8:	03e00008 	jr	ra
    56bc:	00000000 	nop

000056c0 <func_808DBF30>:
    56c0:	27bdffe0 	addiu	sp,sp,-32
    56c4:	afb00018 	sw	s0,24(sp)
    56c8:	00808025 	move	s0,a0
    56cc:	afbf001c 	sw	ra,28(sp)
    56d0:	afa50024 	sw	a1,36(sp)
    56d4:	0c000000 	jal	0 <func_808D6870>
    56d8:	24840150 	addiu	a0,a0,336
    56dc:	3c030000 	lui	v1,0x0
    56e0:	24630000 	addiu	v1,v1,0
    56e4:	3c01c040 	lui	at,0xc040
    56e8:	44812000 	mtc1	at,$f4
    56ec:	8c6e0000 	lw	t6,0(v1)
    56f0:	3c013fa0 	lui	at,0x3fa0
    56f4:	44813000 	mtc1	at,$f6
    56f8:	e5c416b0 	swc1	$f4,5808(t6)
    56fc:	8c6f0000 	lw	t7,0(v1)
    5700:	3c01c000 	lui	at,0xc000
    5704:	44814000 	mtc1	at,$f8
    5708:	e5e616b4 	swc1	$f6,5812(t7)
    570c:	8c780000 	lw	t8,0(v1)
    5710:	3c014120 	lui	at,0x4120
    5714:	44815000 	mtc1	at,$f10
    5718:	e70816b8 	swc1	$f8,5816(t8)
    571c:	8c790000 	lw	t9,0(v1)
    5720:	24080001 	li	t0,1
    5724:	2409000a 	li	t1,10
    5728:	e72a16d0 	swc1	$f10,5840(t9)
    572c:	860201b6 	lh	v0,438(s0)
    5730:	28410011 	slti	at,v0,17
    5734:	50200004 	beqzl	at,5748 <func_808DBF30+0x88>
    5738:	24010011 	li	at,17
    573c:	a20801a0 	sb	t0,416(s0)
    5740:	860201b6 	lh	v0,438(s0)
    5744:	24010011 	li	at,17
    5748:	5441000b 	bnel	v0,at,5778 <func_808DBF30+0xb8>
    574c:	2841000a 	slti	at,v0,10
    5750:	a609026c 	sh	t1,620(s0)
    5754:	3c010000 	lui	at,0x0
    5758:	0c000000 	jal	0 <func_808D6870>
    575c:	c42c0000 	lwc1	$f12,0(at)
    5760:	e6000270 	swc1	$f0,624(s0)
    5764:	02002025 	move	a0,s0
    5768:	0c000000 	jal	0 <func_808D6870>
    576c:	24053867 	li	a1,14439
    5770:	860201b6 	lh	v0,438(s0)
    5774:	2841000a 	slti	at,v0,10
    5778:	10200014 	beqz	at,57cc <func_808DBF30+0x10c>
    577c:	3c010000 	lui	at,0x0
    5780:	0c000000 	jal	0 <func_808D6870>
    5784:	c42c0000 	lwc1	$f12,0(at)
    5788:	3c010000 	lui	at,0x0
    578c:	c4320000 	lwc1	$f18,0(at)
    5790:	c6100258 	lwc1	$f16,600(s0)
    5794:	26040254 	addiu	a0,s0,596
    5798:	46120100 	add.s	$f4,$f0,$f18
    579c:	3c054120 	lui	a1,0x4120
    57a0:	3c063f00 	lui	a2,0x3f00
    57a4:	3c073fa0 	lui	a3,0x3fa0
    57a8:	46048180 	add.s	$f6,$f16,$f4
    57ac:	0c000000 	jal	0 <func_808D6870>
    57b0:	e6060258 	swc1	$f6,600(s0)
    57b4:	860a01b6 	lh	t2,438(s0)
    57b8:	02002025 	move	a0,s0
    57bc:	55400004 	bnezl	t2,57d0 <func_808DBF30+0x110>
    57c0:	260400b6 	addiu	a0,s0,182
    57c4:	0c000000 	jal	0 <func_808D6870>
    57c8:	8fa50024 	lw	a1,36(sp)
    57cc:	260400b6 	addiu	a0,s0,182
    57d0:	8605008a 	lh	a1,138(s0)
    57d4:	24060005 	li	a2,5
    57d8:	0c000000 	jal	0 <func_808D6870>
    57dc:	240707d0 	li	a3,2000
    57e0:	c6080024 	lwc1	$f8,36(s0)
    57e4:	c60a005c 	lwc1	$f10,92(s0)
    57e8:	c610002c 	lwc1	$f16,44(s0)
    57ec:	c6040064 	lwc1	$f4,100(s0)
    57f0:	460a4480 	add.s	$f18,$f8,$f10
    57f4:	2604005c 	addiu	a0,s0,92
    57f8:	3c053f80 	lui	a1,0x3f80
    57fc:	46048180 	add.s	$f6,$f16,$f4
    5800:	e6120024 	swc1	$f18,36(s0)
    5804:	3c063f00 	lui	a2,0x3f00
    5808:	0c000000 	jal	0 <func_808D6870>
    580c:	e606002c 	swc1	$f6,44(s0)
    5810:	26040064 	addiu	a0,s0,100
    5814:	3c053f80 	lui	a1,0x3f80
    5818:	0c000000 	jal	0 <func_808D6870>
    581c:	3c063f00 	lui	a2,0x3f00
    5820:	860401a2 	lh	a0,418(s0)
    5824:	00800821 	move	at,a0
    5828:	00042080 	sll	a0,a0,0x2
    582c:	00812023 	subu	a0,a0,at
    5830:	00042100 	sll	a0,a0,0x4
    5834:	00812023 	subu	a0,a0,at
    5838:	000420c0 	sll	a0,a0,0x3
    583c:	00812023 	subu	a0,a0,at
    5840:	00042080 	sll	a0,a0,0x2
    5844:	00042400 	sll	a0,a0,0x10
    5848:	0c000000 	jal	0 <func_808D6870>
    584c:	00042403 	sra	a0,a0,0x10
    5850:	46000080 	add.s	$f2,$f0,$f0
    5854:	c6080028 	lwc1	$f8,40(s0)
    5858:	46024280 	add.s	$f10,$f8,$f2
    585c:	e6020060 	swc1	$f2,96(s0)
    5860:	e60a0028 	swc1	$f10,40(s0)
    5864:	8fbf001c 	lw	ra,28(sp)
    5868:	8fb00018 	lw	s0,24(sp)
    586c:	27bd0020 	addiu	sp,sp,32
    5870:	03e00008 	jr	ra
    5874:	00000000 	nop

00005878 <func_808DC0E8>:
    5878:	27bdffe8 	addiu	sp,sp,-24
    587c:	afbf0014 	sw	ra,20(sp)
    5880:	afa40018 	sw	a0,24(sp)
    5884:	0c000000 	jal	0 <func_808D6870>
    5888:	2406017c 	li	a2,380
    588c:	3c040600 	lui	a0,0x600
    5890:	0c000000 	jal	0 <func_808D6870>
    5894:	2484738c 	addiu	a0,a0,29580
    5898:	44822000 	mtc1	v0,$f4
    589c:	8fa30018 	lw	v1,24(sp)
    58a0:	3c050600 	lui	a1,0x600
    58a4:	468021a0 	cvt.s.w	$f6,$f4
    58a8:	24a5738c 	addiu	a1,a1,29580
    58ac:	24060000 	li	a2,0
    58b0:	24640150 	addiu	a0,v1,336
    58b4:	0c000000 	jal	0 <func_808D6870>
    58b8:	e46601cc 	swc1	$f6,460(v1)
    58bc:	8faf0018 	lw	t7,24(sp)
    58c0:	3c0e0000 	lui	t6,0x0
    58c4:	25ce0000 	addiu	t6,t6,0
    58c8:	adee0194 	sw	t6,404(t7)
    58cc:	8fbf0014 	lw	ra,20(sp)
    58d0:	27bd0018 	addiu	sp,sp,24
    58d4:	03e00008 	jr	ra
    58d8:	00000000 	nop

000058dc <func_808DC14C>:
    58dc:	27bdffb0 	addiu	sp,sp,-80
    58e0:	afb00038 	sw	s0,56(sp)
    58e4:	00808025 	move	s0,a0
    58e8:	afbf003c 	sw	ra,60(sp)
    58ec:	24840150 	addiu	a0,a0,336
    58f0:	afa50054 	sw	a1,84(sp)
    58f4:	0c000000 	jal	0 <func_808D6870>
    58f8:	afa40044 	sw	a0,68(sp)
    58fc:	3c063e4c 	lui	a2,0x3e4c
    5900:	34c6cccd 	ori	a2,a2,0xcccd
    5904:	26040254 	addiu	a0,s0,596
    5908:	0c000000 	jal	0 <func_808D6870>
    590c:	3c053f80 	lui	a1,0x3f80
    5910:	860201c2 	lh	v0,450(s0)
    5914:	240e0001 	li	t6,1
    5918:	10400005 	beqz	v0,5930 <func_808DC14C+0x54>
    591c:	24010001 	li	at,1
    5920:	50410047 	beql	v0,at,5a40 <func_808DC14C+0x164>
    5924:	920d01c0 	lbu	t5,448(s0)
    5928:	10000071 	b	5af0 <func_808DC14C+0x214>
    592c:	260400b6 	addiu	a0,s0,182
    5930:	a20e01a0 	sb	t6,416(s0)
    5934:	8fa40044 	lw	a0,68(sp)
    5938:	0c000000 	jal	0 <func_808D6870>
    593c:	8e0501cc 	lw	a1,460(s0)
    5940:	10400007 	beqz	v0,5960 <func_808DC14C+0x84>
    5944:	240f0001 	li	t7,1
    5948:	a60f01c2 	sh	t7,450(s0)
    594c:	3c050601 	lui	a1,0x601
    5950:	24a59a14 	addiu	a1,a1,-26092
    5954:	8fa40044 	lw	a0,68(sp)
    5958:	0c000000 	jal	0 <func_808D6870>
    595c:	24060000 	li	a2,0
    5960:	3c014140 	lui	at,0x4140
    5964:	44810000 	mtc1	at,$f0
    5968:	c6040168 	lwc1	$f4,360(s0)
    596c:	3c080000 	lui	t0,0x0
    5970:	44050000 	mfc1	a1,$f0
    5974:	4600203e 	c.le.s	$f4,$f0
    5978:	24180002 	li	t8,2
    597c:	24190002 	li	t9,2
    5980:	25080000 	addiu	t0,t0,0
    5984:	45000009 	bc1f	59ac <func_808DC14C+0xd0>
    5988:	00000000 	nop
    598c:	8e0a0260 	lw	t2,608(s0)
    5990:	a618066e 	sh	t8,1646(s0)
    5994:	a219066c 	sb	t9,1644(s0)
    5998:	ad0a0000 	sw	t2,0(t0)
    599c:	8e090264 	lw	t1,612(s0)
    59a0:	ad090004 	sw	t1,4(t0)
    59a4:	8e0a0268 	lw	t2,616(s0)
    59a8:	ad0a0008 	sw	t2,8(t0)
    59ac:	0c000000 	jal	0 <func_808D6870>
    59b0:	8fa40044 	lw	a0,68(sp)
    59b4:	10400004 	beqz	v0,59c8 <func_808DC14C+0xec>
    59b8:	3c054130 	lui	a1,0x4130
    59bc:	44803000 	mtc1	zero,$f6
    59c0:	00000000 	nop
    59c4:	e6060254 	swc1	$f6,596(s0)
    59c8:	0c000000 	jal	0 <func_808D6870>
    59cc:	8fa40044 	lw	a0,68(sp)
    59d0:	10400046 	beqz	v0,5aec <func_808DC14C+0x210>
    59d4:	240b0001 	li	t3,1
    59d8:	a20b025c 	sb	t3,604(s0)
    59dc:	02002025 	move	a0,s0
    59e0:	0c000000 	jal	0 <func_808D6870>
    59e4:	240539c9 	li	a1,14793
    59e8:	02002025 	move	a0,s0
    59ec:	0c000000 	jal	0 <func_808D6870>
    59f0:	24053825 	li	a1,14373
    59f4:	c6080260 	lwc1	$f8,608(s0)
    59f8:	8fa60054 	lw	a2,84(sp)
    59fc:	240c0064 	li	t4,100
    5a00:	e7a80010 	swc1	$f8,16(sp)
    5a04:	c60a0264 	lwc1	$f10,612(s0)
    5a08:	02002825 	move	a1,s0
    5a0c:	240700e8 	li	a3,232
    5a10:	e7aa0014 	swc1	$f10,20(sp)
    5a14:	c6100268 	lwc1	$f16,616(s0)
    5a18:	afac0028 	sw	t4,40(sp)
    5a1c:	afa00024 	sw	zero,36(sp)
    5a20:	afa00020 	sw	zero,32(sp)
    5a24:	afa0001c 	sw	zero,28(sp)
    5a28:	24c41c24 	addiu	a0,a2,7204
    5a2c:	0c000000 	jal	0 <func_808D6870>
    5a30:	e7b00018 	swc1	$f16,24(sp)
    5a34:	1000002e 	b	5af0 <func_808DC14C+0x214>
    5a38:	260400b6 	addiu	a0,s0,182
    5a3c:	920d01c0 	lbu	t5,448(s0)
    5a40:	51a0002b 	beqzl	t5,5af0 <func_808DC14C+0x214>
    5a44:	260400b6 	addiu	a0,s0,182
    5a48:	0c000000 	jal	0 <func_808D6870>
    5a4c:	00000000 	nop
    5a50:	3c010000 	lui	at,0x0
    5a54:	c4320000 	lwc1	$f18,0(at)
    5a58:	3c040000 	lui	a0,0x0
    5a5c:	46120102 	mul.s	$f4,$f0,$f18
    5a60:	4600218d 	trunc.w.s	$f6,$f4
    5a64:	44023000 	mfc1	v0,$f6
    5a68:	00000000 	nop
    5a6c:	00027c00 	sll	t7,v0,0x10
    5a70:	000fc403 	sra	t8,t7,0x10
    5a74:	0018c880 	sll	t9,t8,0x2
    5a78:	00992021 	addu	a0,a0,t9
    5a7c:	8c840000 	lw	a0,0(a0)
    5a80:	0c000000 	jal	0 <func_808D6870>
    5a84:	a7a2004e 	sh	v0,78(sp)
    5a88:	44824000 	mtc1	v0,$f8
    5a8c:	3c050000 	lui	a1,0x0
    5a90:	24060000 	li	a2,0
    5a94:	468042a0 	cvt.s.w	$f10,$f8
    5a98:	e60a01cc 	swc1	$f10,460(s0)
    5a9c:	87a8004e 	lh	t0,78(sp)
    5aa0:	8fa40044 	lw	a0,68(sp)
    5aa4:	00084880 	sll	t1,t0,0x2
    5aa8:	00a92821 	addu	a1,a1,t1
    5aac:	0c000000 	jal	0 <func_808D6870>
    5ab0:	8ca50000 	lw	a1,0(a1)
    5ab4:	87aa004e 	lh	t2,78(sp)
    5ab8:	3c0c0000 	lui	t4,0x0
    5abc:	3c0d0000 	lui	t5,0x0
    5ac0:	000a5840 	sll	t3,t2,0x1
    5ac4:	018b6021 	addu	t4,t4,t3
    5ac8:	858c0000 	lh	t4,0(t4)
    5acc:	8dad0000 	lw	t5,0(t5)
    5ad0:	02002025 	move	a0,s0
    5ad4:	448c8000 	mtc1	t4,$f16
    5ad8:	240528c7 	li	a1,10439
    5adc:	468084a0 	cvt.s.w	$f18,$f16
    5ae0:	0c000000 	jal	0 <func_808D6870>
    5ae4:	e5b216bc 	swc1	$f18,5820(t5)
    5ae8:	a20001c0 	sb	zero,448(s0)
    5aec:	260400b6 	addiu	a0,s0,182
    5af0:	8605008a 	lh	a1,138(s0)
    5af4:	24060005 	li	a2,5
    5af8:	0c000000 	jal	0 <func_808D6870>
    5afc:	240707d0 	li	a3,2000
    5b00:	c6040024 	lwc1	$f4,36(s0)
    5b04:	c606005c 	lwc1	$f6,92(s0)
    5b08:	c60a002c 	lwc1	$f10,44(s0)
    5b0c:	c6100064 	lwc1	$f16,100(s0)
    5b10:	46062200 	add.s	$f8,$f4,$f6
    5b14:	44800000 	mtc1	zero,$f0
    5b18:	2604005c 	addiu	a0,s0,92
    5b1c:	46105480 	add.s	$f18,$f10,$f16
    5b20:	e6080024 	swc1	$f8,36(s0)
    5b24:	44050000 	mfc1	a1,$f0
    5b28:	3c063f80 	lui	a2,0x3f80
    5b2c:	e612002c 	swc1	$f18,44(s0)
    5b30:	3c073f00 	lui	a3,0x3f00
    5b34:	0c000000 	jal	0 <func_808D6870>
    5b38:	e7a00010 	swc1	$f0,16(sp)
    5b3c:	44802000 	mtc1	zero,$f4
    5b40:	26040064 	addiu	a0,s0,100
    5b44:	24050000 	li	a1,0
    5b48:	3c063f80 	lui	a2,0x3f80
    5b4c:	3c073f00 	lui	a3,0x3f00
    5b50:	0c000000 	jal	0 <func_808D6870>
    5b54:	e7a40010 	swc1	$f4,16(sp)
    5b58:	860401a2 	lh	a0,418(s0)
    5b5c:	00800821 	move	at,a0
    5b60:	00042080 	sll	a0,a0,0x2
    5b64:	00812023 	subu	a0,a0,at
    5b68:	00042100 	sll	a0,a0,0x4
    5b6c:	00812023 	subu	a0,a0,at
    5b70:	000420c0 	sll	a0,a0,0x3
    5b74:	00812023 	subu	a0,a0,at
    5b78:	00042080 	sll	a0,a0,0x2
    5b7c:	00042400 	sll	a0,a0,0x10
    5b80:	0c000000 	jal	0 <func_808D6870>
    5b84:	00042403 	sra	a0,a0,0x10
    5b88:	46000080 	add.s	$f2,$f0,$f0
    5b8c:	c6060028 	lwc1	$f6,40(s0)
    5b90:	46023200 	add.s	$f8,$f6,$f2
    5b94:	e6020060 	swc1	$f2,96(s0)
    5b98:	e6080028 	swc1	$f8,40(s0)
    5b9c:	8fbf003c 	lw	ra,60(sp)
    5ba0:	8fb00038 	lw	s0,56(sp)
    5ba4:	27bd0050 	addiu	sp,sp,80
    5ba8:	03e00008 	jr	ra
    5bac:	00000000 	nop

00005bb0 <func_808DC420>:
    5bb0:	27bdffd8 	addiu	sp,sp,-40
    5bb4:	afbf001c 	sw	ra,28(sp)
    5bb8:	afb00018 	sw	s0,24(sp)
    5bbc:	8c8e0194 	lw	t6,404(a0)
    5bc0:	3c020000 	lui	v0,0x0
    5bc4:	24420000 	addiu	v0,v0,0
    5bc8:	144e0003 	bne	v0,t6,5bd8 <func_808DC420+0x28>
    5bcc:	00808025 	move	s0,a0
    5bd0:	848f01c2 	lh	t7,450(a0)
    5bd4:	11e00011 	beqz	t7,5c1c <func_808DC420+0x6c>
    5bd8:	02002025 	move	a0,s0
    5bdc:	2406017c 	li	a2,380
    5be0:	0c000000 	jal	0 <func_808D6870>
    5be4:	afa20024 	sw	v0,36(sp)
    5be8:	3c040601 	lui	a0,0x601
    5bec:	0c000000 	jal	0 <func_808D6870>
    5bf0:	24849d5c 	addiu	a0,a0,-25252
    5bf4:	44822000 	mtc1	v0,$f4
    5bf8:	3c050601 	lui	a1,0x601
    5bfc:	24a59d5c 	addiu	a1,a1,-25252
    5c00:	468021a0 	cvt.s.w	$f6,$f4
    5c04:	26040150 	addiu	a0,s0,336
    5c08:	24060000 	li	a2,0
    5c0c:	0c000000 	jal	0 <func_808D6870>
    5c10:	e60601cc 	swc1	$f6,460(s0)
    5c14:	8fb80024 	lw	t8,36(sp)
    5c18:	ae180194 	sw	t8,404(s0)
    5c1c:	2419000a 	li	t9,10
    5c20:	a61901b6 	sh	t9,438(s0)
    5c24:	860801b6 	lh	t0,438(s0)
    5c28:	a60001c2 	sh	zero,450(s0)
    5c2c:	3c090000 	lui	t1,0x0
    5c30:	44884000 	mtc1	t0,$f8
    5c34:	8d290000 	lw	t1,0(t1)
    5c38:	02002025 	move	a0,s0
    5c3c:	468042a0 	cvt.s.w	$f10,$f8
    5c40:	240528c7 	li	a1,10439
    5c44:	0c000000 	jal	0 <func_808D6870>
    5c48:	e52a16c0 	swc1	$f10,5824(t1)
    5c4c:	44808000 	mtc1	zero,$f16
    5c50:	00000000 	nop
    5c54:	e6100254 	swc1	$f16,596(s0)
    5c58:	8fbf001c 	lw	ra,28(sp)
    5c5c:	8fb00018 	lw	s0,24(sp)
    5c60:	27bd0028 	addiu	sp,sp,40
    5c64:	03e00008 	jr	ra
    5c68:	00000000 	nop

00005c6c <func_808DC4DC>:
    5c6c:	27bdffe0 	addiu	sp,sp,-32
    5c70:	afb10018 	sw	s1,24(sp)
    5c74:	afb00014 	sw	s0,20(sp)
    5c78:	afbf001c 	sw	ra,28(sp)
    5c7c:	afa50024 	sw	a1,36(sp)
    5c80:	240e0009 	li	t6,9
    5c84:	00808025 	move	s0,a0
    5c88:	a08e0624 	sb	t6,1572(a0)
    5c8c:	24910150 	addiu	s1,a0,336
    5c90:	0c000000 	jal	0 <func_808D6870>
    5c94:	02202025 	move	a0,s1
    5c98:	3c030000 	lui	v1,0x0
    5c9c:	24630000 	addiu	v1,v1,0
    5ca0:	3c01c110 	lui	at,0xc110
    5ca4:	44812000 	mtc1	at,$f4
    5ca8:	8c6f0000 	lw	t7,0(v1)
    5cac:	3c013e80 	lui	at,0x3e80
    5cb0:	44813000 	mtc1	at,$f6
    5cb4:	e5e416b0 	swc1	$f4,5808(t7)
    5cb8:	8c780000 	lw	t8,0(v1)
    5cbc:	3c01c000 	lui	at,0xc000
    5cc0:	44814000 	mtc1	at,$f8
    5cc4:	e70616b4 	swc1	$f6,5812(t8)
    5cc8:	8c790000 	lw	t9,0(v1)
    5ccc:	3c014150 	lui	at,0x4150
    5cd0:	44815000 	mtc1	at,$f10
    5cd4:	e72816b8 	swc1	$f8,5816(t9)
    5cd8:	8c680000 	lw	t0,0(v1)
    5cdc:	3c01c150 	lui	at,0xc150
    5ce0:	e50a16d0 	swc1	$f10,5840(t0)
    5ce4:	860901c2 	lh	t1,450(s0)
    5ce8:	5520001e 	bnezl	t1,5d64 <func_808DC4DC+0xf8>
    5cec:	44813000 	mtc1	at,$f6
    5cf0:	860a01b6 	lh	t2,438(s0)
    5cf4:	240b0001 	li	t3,1
    5cf8:	02202025 	move	a0,s1
    5cfc:	15400022 	bnez	t2,5d88 <func_808DC4DC+0x11c>
    5d00:	3c050601 	lui	a1,0x601
    5d04:	a60b01c2 	sh	t3,450(s0)
    5d08:	24a5a598 	addiu	a1,a1,-23144
    5d0c:	0c000000 	jal	0 <func_808D6870>
    5d10:	24060000 	li	a2,0
    5d14:	3c040601 	lui	a0,0x601
    5d18:	0c000000 	jal	0 <func_808D6870>
    5d1c:	2484a598 	addiu	a0,a0,-23144
    5d20:	44828000 	mtc1	v0,$f16
    5d24:	02202025 	move	a0,s1
    5d28:	468084a0 	cvt.s.w	$f18,$f16
    5d2c:	0c000000 	jal	0 <func_808D6870>
    5d30:	e61201cc 	swc1	$f18,460(s0)
    5d34:	3c030000 	lui	v1,0x0
    5d38:	24630000 	addiu	v1,v1,0
    5d3c:	3c014170 	lui	at,0x4170
    5d40:	44812000 	mtc1	at,$f4
    5d44:	8c6c0000 	lw	t4,0(v1)
    5d48:	02002025 	move	a0,s0
    5d4c:	240528c7 	li	a1,10439
    5d50:	0c000000 	jal	0 <func_808D6870>
    5d54:	e58416c4 	swc1	$f4,5828(t4)
    5d58:	1000000c 	b	5d8c <func_808DC4DC+0x120>
    5d5c:	c6080024 	lwc1	$f8,36(s0)
    5d60:	44813000 	mtc1	at,$f6
    5d64:	8c6d0000 	lw	t5,0(v1)
    5d68:	02202025 	move	a0,s1
    5d6c:	e5a616b8 	swc1	$f6,5816(t5)
    5d70:	0c000000 	jal	0 <func_808D6870>
    5d74:	8e0501cc 	lw	a1,460(s0)
    5d78:	10400003 	beqz	v0,5d88 <func_808DC4DC+0x11c>
    5d7c:	02002025 	move	a0,s0
    5d80:	0c000000 	jal	0 <func_808D6870>
    5d84:	8fa50024 	lw	a1,36(sp)
    5d88:	c6080024 	lwc1	$f8,36(s0)
    5d8c:	c60a005c 	lwc1	$f10,92(s0)
    5d90:	c6120028 	lwc1	$f18,40(s0)
    5d94:	c6040060 	lwc1	$f4,96(s0)
    5d98:	460a4400 	add.s	$f16,$f8,$f10
    5d9c:	c60a0064 	lwc1	$f10,100(s0)
    5da0:	c608002c 	lwc1	$f8,44(s0)
    5da4:	46049180 	add.s	$f6,$f18,$f4
    5da8:	e6100024 	swc1	$f16,36(s0)
    5dac:	2604005c 	addiu	a0,s0,92
    5db0:	460a4400 	add.s	$f16,$f8,$f10
    5db4:	e6060028 	swc1	$f6,40(s0)
    5db8:	3c053f80 	lui	a1,0x3f80
    5dbc:	3c063f00 	lui	a2,0x3f00
    5dc0:	0c000000 	jal	0 <func_808D6870>
    5dc4:	e610002c 	swc1	$f16,44(s0)
    5dc8:	26040060 	addiu	a0,s0,96
    5dcc:	3c053f80 	lui	a1,0x3f80
    5dd0:	0c000000 	jal	0 <func_808D6870>
    5dd4:	3c063f00 	lui	a2,0x3f00
    5dd8:	26040064 	addiu	a0,s0,100
    5ddc:	3c053f80 	lui	a1,0x3f80
    5de0:	0c000000 	jal	0 <func_808D6870>
    5de4:	3c063f00 	lui	a2,0x3f00
    5de8:	8fbf001c 	lw	ra,28(sp)
    5dec:	8fb00014 	lw	s0,20(sp)
    5df0:	8fb10018 	lw	s1,24(sp)
    5df4:	03e00008 	jr	ra
    5df8:	27bd0020 	addiu	sp,sp,32

00005dfc <func_808DC66C>:
    5dfc:	27bdffe0 	addiu	sp,sp,-32
    5e00:	afbf001c 	sw	ra,28(sp)
    5e04:	afb00018 	sw	s0,24(sp)
    5e08:	00808025 	move	s0,a0
    5e0c:	0c000000 	jal	0 <func_808D6870>
    5e10:	2406017c 	li	a2,380
    5e14:	3c040601 	lui	a0,0x601
    5e18:	0c000000 	jal	0 <func_808D6870>
    5e1c:	24848128 	addiu	a0,a0,-32472
    5e20:	44822000 	mtc1	v0,$f4
    5e24:	3c050601 	lui	a1,0x601
    5e28:	24a58128 	addiu	a1,a1,-32472
    5e2c:	468021a0 	cvt.s.w	$f6,$f4
    5e30:	26040150 	addiu	a0,s0,336
    5e34:	24060000 	li	a2,0
    5e38:	0c000000 	jal	0 <func_808D6870>
    5e3c:	e60601cc 	swc1	$f6,460(s0)
    5e40:	3c040000 	lui	a0,0x0
    5e44:	240e0046 	li	t6,70
    5e48:	24840000 	addiu	a0,a0,0
    5e4c:	a60e01b6 	sh	t6,438(s0)
    5e50:	8c8f0000 	lw	t7,0(a0)
    5e54:	44804000 	mtc1	zero,$f8
    5e58:	3c0b0000 	lui	t3,0x0
    5e5c:	44800000 	mtc1	zero,$f0
    5e60:	e5e816c0 	swc1	$f8,5824(t7)
    5e64:	8c830000 	lw	v1,0(a0)
    5e68:	24020001 	li	v0,1
    5e6c:	240a0050 	li	t2,80
    5e70:	c46a16c0 	lwc1	$f10,5824(v1)
    5e74:	256b0000 	addiu	t3,t3,0
    5e78:	240c000f 	li	t4,15
    5e7c:	e46a16bc 	swc1	$f10,5820(v1)
    5e80:	3c030000 	lui	v1,0x0
    5e84:	24630000 	addiu	v1,v1,0
    5e88:	0062c021 	addu	t8,v1,v0
    5e8c:	00024040 	sll	t0,v0,0x1
    5e90:	24420001 	addiu	v0,v0,1
    5e94:	00021400 	sll	v0,v0,0x10
    5e98:	93190000 	lbu	t9,0(t8)
    5e9c:	00021403 	sra	v0,v0,0x10
    5ea0:	2841000f 	slti	at,v0,15
    5ea4:	02084821 	addu	t1,s0,t0
    5ea8:	1420fff7 	bnez	at,5e88 <func_808DC66C+0x8c>
    5eac:	a53904e4 	sh	t9,1252(t1)
    5eb0:	3c0140c0 	lui	at,0x40c0
    5eb4:	44818000 	mtc1	at,$f16
    5eb8:	a60a02e6 	sh	t2,742(s0)
    5ebc:	a60002e8 	sh	zero,744(s0)
    5ec0:	ae0b0194 	sw	t3,404(s0)
    5ec4:	e6000064 	swc1	$f0,100(s0)
    5ec8:	e600005c 	swc1	$f0,92(s0)
    5ecc:	a60001c2 	sh	zero,450(s0)
    5ed0:	a60c01a6 	sh	t4,422(s0)
    5ed4:	e6100508 	swc1	$f16,1288(s0)
    5ed8:	8fbf001c 	lw	ra,28(sp)
    5edc:	8fb00018 	lw	s0,24(sp)
    5ee0:	27bd0020 	addiu	sp,sp,32
    5ee4:	03e00008 	jr	ra
    5ee8:	00000000 	nop

00005eec <func_808DC75C>:
    5eec:	27bdffa0 	addiu	sp,sp,-96
    5ef0:	afb30038 	sw	s3,56(sp)
    5ef4:	00809825 	move	s3,a0
    5ef8:	afbf003c 	sw	ra,60(sp)
    5efc:	afb20034 	sw	s2,52(sp)
    5f00:	24840150 	addiu	a0,a0,336
    5f04:	00a09025 	move	s2,a1
    5f08:	afb10030 	sw	s1,48(sp)
    5f0c:	afb0002c 	sw	s0,44(sp)
    5f10:	f7b60020 	sdc1	$f22,32(sp)
    5f14:	f7b40018 	sdc1	$f20,24(sp)
    5f18:	0c000000 	jal	0 <func_808D6870>
    5f1c:	afa40048 	sw	a0,72(sp)
    5f20:	866301c2 	lh	v1,450(s3)
    5f24:	02402025 	move	a0,s2
    5f28:	3c0544bb 	lui	a1,0x44bb
    5f2c:	14600016 	bnez	v1,5f88 <func_808DC75C+0x9c>
    5f30:	24010001 	li	at,1
    5f34:	34a58000 	ori	a1,a1,0x8000
    5f38:	0c000000 	jal	0 <func_808D6870>
    5f3c:	00003025 	move	a2,zero
    5f40:	8fa40048 	lw	a0,72(sp)
    5f44:	0c000000 	jal	0 <func_808D6870>
    5f48:	8e6501cc 	lw	a1,460(s3)
    5f4c:	10400063 	beqz	v0,60dc <func_808DC75C+0x1f0>
    5f50:	3c100601 	lui	s0,0x601
    5f54:	26108f44 	addiu	s0,s0,-28860
    5f58:	0c000000 	jal	0 <func_808D6870>
    5f5c:	02002025 	move	a0,s0
    5f60:	44822000 	mtc1	v0,$f4
    5f64:	02002825 	move	a1,s0
    5f68:	24060000 	li	a2,0
    5f6c:	468021a0 	cvt.s.w	$f6,$f4
    5f70:	e66601cc 	swc1	$f6,460(s3)
    5f74:	0c000000 	jal	0 <func_808D6870>
    5f78:	8fa40048 	lw	a0,72(sp)
    5f7c:	240e0001 	li	t6,1
    5f80:	10000056 	b	60dc <func_808DC75C+0x1f0>
    5f84:	a66e01c2 	sh	t6,450(s3)
    5f88:	14610025 	bne	v1,at,6020 <func_808DC75C+0x134>
    5f8c:	8fa40048 	lw	a0,72(sp)
    5f90:	02402025 	move	a0,s2
    5f94:	3c05447a 	lui	a1,0x447a
    5f98:	0c000000 	jal	0 <func_808D6870>
    5f9c:	00003025 	move	a2,zero
    5fa0:	866f01b6 	lh	t7,438(s3)
    5fa4:	3c100601 	lui	s0,0x601
    5fa8:	26108a88 	addiu	s0,s0,-30072
    5fac:	55e0004c 	bnezl	t7,60e0 <func_808DC75C+0x1f4>
    5fb0:	866401a2 	lh	a0,418(s3)
    5fb4:	0c000000 	jal	0 <func_808D6870>
    5fb8:	02002025 	move	a0,s0
    5fbc:	44824000 	mtc1	v0,$f8
    5fc0:	02002825 	move	a1,s0
    5fc4:	24060000 	li	a2,0
    5fc8:	468042a0 	cvt.s.w	$f10,$f8
    5fcc:	e66a01cc 	swc1	$f10,460(s3)
    5fd0:	0c000000 	jal	0 <func_808D6870>
    5fd4:	8fa40048 	lw	a0,72(sp)
    5fd8:	24180002 	li	t8,2
    5fdc:	a67801c2 	sh	t8,450(s3)
    5fe0:	0c000000 	jal	0 <func_808D6870>
    5fe4:	8fa40048 	lw	a0,72(sp)
    5fe8:	3c014190 	lui	at,0x4190
    5fec:	3c190000 	lui	t9,0x0
    5ff0:	8f390000 	lw	t9,0(t9)
    5ff4:	44818000 	mtc1	at,$f16
    5ff8:	02602025 	move	a0,s3
    5ffc:	240528c7 	li	a1,10439
    6000:	0c000000 	jal	0 <func_808D6870>
    6004:	e73016c4 	swc1	$f16,5828(t9)
    6008:	02602025 	move	a0,s3
    600c:	0c000000 	jal	0 <func_808D6870>
    6010:	240539cf 	li	a1,14799
    6014:	24080082 	li	t0,130
    6018:	10000030 	b	60dc <func_808DC75C+0x1f0>
    601c:	a66801ba 	sh	t0,442(s3)
    6020:	0c000000 	jal	0 <func_808D6870>
    6024:	3c0540e0 	lui	a1,0x40e0
    6028:	10400025 	beqz	v0,60c0 <func_808DC75C+0x1d4>
    602c:	00008025 	move	s0,zero
    6030:	3c0143fa 	lui	at,0x43fa
    6034:	4481b000 	mtc1	at,$f22
    6038:	3c0141c8 	lui	at,0x41c8
    603c:	4481a000 	mtc1	at,$f20
    6040:	267101fc 	addiu	s1,s3,508
    6044:	0c000000 	jal	0 <func_808D6870>
    6048:	4600a306 	mov.s	$f12,$f20
    604c:	e7a00050 	swc1	$f0,80(sp)
    6050:	0c000000 	jal	0 <func_808D6870>
    6054:	4600a306 	mov.s	$f12,$f20
    6058:	e7a00054 	swc1	$f0,84(sp)
    605c:	0c000000 	jal	0 <func_808D6870>
    6060:	4600a306 	mov.s	$f12,$f20
    6064:	3c014348 	lui	at,0x4348
    6068:	44816000 	mtc1	at,$f12
    606c:	0c000000 	jal	0 <func_808D6870>
    6070:	e7a00058 	swc1	$f0,88(sp)
    6074:	46160480 	add.s	$f18,$f0,$f22
    6078:	3c070000 	lui	a3,0x0
    607c:	24090014 	li	t1,20
    6080:	afa90014 	sw	t1,20(sp)
    6084:	24e70000 	addiu	a3,a3,0
    6088:	e7b20010 	swc1	$f18,16(sp)
    608c:	02402025 	move	a0,s2
    6090:	02202825 	move	a1,s1
    6094:	0c000000 	jal	0 <func_808D6870>
    6098:	27a60050 	addiu	a2,sp,80
    609c:	26100001 	addiu	s0,s0,1
    60a0:	00108400 	sll	s0,s0,0x10
    60a4:	00108403 	sra	s0,s0,0x10
    60a8:	2a010064 	slti	at,s0,100
    60ac:	1420ffe5 	bnez	at,6044 <func_808DC75C+0x158>
    60b0:	00000000 	nop
    60b4:	02602025 	move	a0,s3
    60b8:	0c000000 	jal	0 <func_808D6870>
    60bc:	24050806 	li	a1,2054
    60c0:	8fa40048 	lw	a0,72(sp)
    60c4:	0c000000 	jal	0 <func_808D6870>
    60c8:	8e6501cc 	lw	a1,460(s3)
    60cc:	10400003 	beqz	v0,60dc <func_808DC75C+0x1f0>
    60d0:	02602025 	move	a0,s3
    60d4:	0c000000 	jal	0 <func_808D6870>
    60d8:	02402825 	move	a1,s2
    60dc:	866401a2 	lh	a0,418(s3)
    60e0:	00800821 	move	at,a0
    60e4:	00042080 	sll	a0,a0,0x2
    60e8:	00812023 	subu	a0,a0,at
    60ec:	00042100 	sll	a0,a0,0x4
    60f0:	00812023 	subu	a0,a0,at
    60f4:	000420c0 	sll	a0,a0,0x3
    60f8:	00812023 	subu	a0,a0,at
    60fc:	00042080 	sll	a0,a0,0x2
    6100:	00042400 	sll	a0,a0,0x10
    6104:	0c000000 	jal	0 <func_808D6870>
    6108:	00042403 	sra	a0,a0,0x10
    610c:	46000080 	add.s	$f2,$f0,$f0
    6110:	c6640028 	lwc1	$f4,40(s3)
    6114:	46022180 	add.s	$f6,$f4,$f2
    6118:	e6620060 	swc1	$f2,96(s3)
    611c:	e6660028 	swc1	$f6,40(s3)
    6120:	8fbf003c 	lw	ra,60(sp)
    6124:	8fb30038 	lw	s3,56(sp)
    6128:	8fb20034 	lw	s2,52(sp)
    612c:	8fb10030 	lw	s1,48(sp)
    6130:	8fb0002c 	lw	s0,44(sp)
    6134:	d7b60020 	ldc1	$f22,32(sp)
    6138:	d7b40018 	ldc1	$f20,24(sp)
    613c:	03e00008 	jr	ra
    6140:	27bd0060 	addiu	sp,sp,96

00006144 <func_808DC9B4>:
    6144:	27bdff90 	addiu	sp,sp,-112
    6148:	afbf005c 	sw	ra,92(sp)
    614c:	afb30058 	sw	s3,88(sp)
    6150:	afb20054 	sw	s2,84(sp)
    6154:	afb10050 	sw	s1,80(sp)
    6158:	afb0004c 	sw	s0,76(sp)
    615c:	f7b80040 	sdc1	$f24,64(sp)
    6160:	f7b60038 	sdc1	$f22,56(sp)
    6164:	f7b40030 	sdc1	$f20,48(sp)
    6168:	8c8e0194 	lw	t6,404(a0)
    616c:	3c020000 	lui	v0,0x0
    6170:	24420000 	addiu	v0,v0,0
    6174:	00808825 	move	s1,a0
    6178:	104e005a 	beq	v0,t6,62e4 <func_808DC9B4+0x1a0>
    617c:	00a09825 	move	s3,a1
    6180:	2406017c 	li	a2,380
    6184:	0c000000 	jal	0 <func_808D6870>
    6188:	afa20060 	sw	v0,96(sp)
    618c:	3c100600 	lui	s0,0x600
    6190:	26104884 	addiu	s0,s0,18564
    6194:	0c000000 	jal	0 <func_808D6870>
    6198:	02002025 	move	a0,s0
    619c:	44822000 	mtc1	v0,$f4
    61a0:	4480c000 	mtc1	zero,$f24
    61a4:	26240150 	addiu	a0,s1,336
    61a8:	468021a0 	cvt.s.w	$f6,$f4
    61ac:	4406c000 	mfc1	a2,$f24
    61b0:	02002825 	move	a1,s0
    61b4:	0c000000 	jal	0 <func_808D6870>
    61b8:	e62601cc 	swc1	$f6,460(s1)
    61bc:	3c020000 	lui	v0,0x0
    61c0:	24420000 	addiu	v0,v0,0
    61c4:	8c4f0000 	lw	t7,0(v0)
    61c8:	44804000 	mtc1	zero,$f8
    61cc:	3c01c080 	lui	at,0xc080
    61d0:	44818000 	mtc1	at,$f16
    61d4:	e5e816c0 	swc1	$f8,5824(t7)
    61d8:	8c430000 	lw	v1,0(v0)
    61dc:	3c013f40 	lui	at,0x3f40
    61e0:	44819000 	mtc1	at,$f18
    61e4:	c46a16c0 	lwc1	$f10,5824(v1)
    61e8:	3c01c040 	lui	at,0xc040
    61ec:	44812000 	mtc1	at,$f4
    61f0:	e46a16bc 	swc1	$f10,5820(v1)
    61f4:	8fb80060 	lw	t8,96(sp)
    61f8:	e638005c 	swc1	$f24,92(s1)
    61fc:	e6380060 	swc1	$f24,96(s1)
    6200:	e6380064 	swc1	$f24,100(s1)
    6204:	a62001c2 	sh	zero,450(s1)
    6208:	ae380194 	sw	t8,404(s1)
    620c:	8c590000 	lw	t9,0(v0)
    6210:	3c0141a0 	lui	at,0x41a0
    6214:	44813000 	mtc1	at,$f6
    6218:	e73016b0 	swc1	$f16,5808(t9)
    621c:	8c480000 	lw	t0,0(v0)
    6220:	3c014700 	lui	at,0x4700
    6224:	4481b000 	mtc1	at,$f22
    6228:	e51216b4 	swc1	$f18,5812(t0)
    622c:	8c490000 	lw	t1,0(v0)
    6230:	00008025 	move	s0,zero
    6234:	26721c24 	addiu	s2,s3,7204
    6238:	e52416b8 	swc1	$f4,5816(t1)
    623c:	8c4a0000 	lw	t2,0(v0)
    6240:	e54616d0 	swc1	$f6,5840(t2)
    6244:	0c000000 	jal	0 <func_808D6870>
    6248:	4600b306 	mov.s	$f12,$f22
    624c:	46000506 	mov.s	$f20,$f0
    6250:	0c000000 	jal	0 <func_808D6870>
    6254:	4600b306 	mov.s	$f12,$f22
    6258:	c62801fc 	lwc1	$f8,508(s1)
    625c:	4600a48d 	trunc.w.s	$f18,$f20
    6260:	260900c8 	addiu	t1,s0,200
    6264:	e7a80010 	swc1	$f8,16(sp)
    6268:	c62a0200 	lwc1	$f10,512(s1)
    626c:	4600010d 	trunc.w.s	$f4,$f0
    6270:	440c9000 	mfc1	t4,$f18
    6274:	e7aa0014 	swc1	$f10,20(sp)
    6278:	c6300204 	lwc1	$f16,516(s1)
    627c:	440e2000 	mfc1	t6,$f4
    6280:	afac001c 	sw	t4,28(sp)
    6284:	e7b00018 	swc1	$f16,24(sp)
    6288:	8639008a 	lh	t9,138(s1)
    628c:	000e7c00 	sll	t7,t6,0x10
    6290:	000fc403 	sra	t8,t7,0x10
    6294:	03194021 	addu	t0,t8,t9
    6298:	afa80020 	sw	t0,32(sp)
    629c:	afa90028 	sw	t1,40(sp)
    62a0:	afa00024 	sw	zero,36(sp)
    62a4:	02402025 	move	a0,s2
    62a8:	02202825 	move	a1,s1
    62ac:	02603025 	move	a2,s3
    62b0:	0c000000 	jal	0 <func_808D6870>
    62b4:	240700e8 	li	a3,232
    62b8:	26100001 	addiu	s0,s0,1
    62bc:	00108400 	sll	s0,s0,0x10
    62c0:	00108403 	sra	s0,s0,0x10
    62c4:	2a01000a 	slti	at,s0,10
    62c8:	1420ffde 	bnez	at,6244 <func_808DC9B4+0x100>
    62cc:	00000000 	nop
    62d0:	a62001a4 	sh	zero,420(s1)
    62d4:	e6380288 	swc1	$f24,648(s1)
    62d8:	e6380290 	swc1	$f24,656(s1)
    62dc:	e6380284 	swc1	$f24,644(s1)
    62e0:	e638028c 	swc1	$f24,652(s1)
    62e4:	8fbf005c 	lw	ra,92(sp)
    62e8:	d7b40030 	ldc1	$f20,48(sp)
    62ec:	d7b60038 	ldc1	$f22,56(sp)
    62f0:	d7b80040 	ldc1	$f24,64(sp)
    62f4:	8fb0004c 	lw	s0,76(sp)
    62f8:	8fb10050 	lw	s1,80(sp)
    62fc:	8fb20054 	lw	s2,84(sp)
    6300:	8fb30058 	lw	s3,88(sp)
    6304:	03e00008 	jr	ra
    6308:	27bd0070 	addiu	sp,sp,112

0000630c <func_808DCB7C>:
    630c:	27bdffb0 	addiu	sp,sp,-80
    6310:	afbf002c 	sw	ra,44(sp)
    6314:	afb10028 	sw	s1,40(sp)
    6318:	afb00024 	sw	s0,36(sp)
    631c:	f7b40018 	sdc1	$f20,24(sp)
    6320:	afa50054 	sw	a1,84(sp)
    6324:	848e01bc 	lh	t6,444(a0)
    6328:	00808825 	move	s1,a0
    632c:	55c00005 	bnezl	t6,6344 <func_808DCB7C+0x38>
    6330:	26240150 	addiu	a0,s1,336
    6334:	8c8f0004 	lw	t7,4(a0)
    6338:	35f80001 	ori	t8,t7,0x1
    633c:	ac980004 	sw	t8,4(a0)
    6340:	26240150 	addiu	a0,s1,336
    6344:	0c000000 	jal	0 <func_808D6870>
    6348:	afa40038 	sw	a0,56(sp)
    634c:	c6240028 	lwc1	$f4,40(s1)
    6350:	c6260060 	lwc1	$f6,96(s1)
    6354:	862301a4 	lh	v1,420(s1)
    6358:	24190001 	li	t9,1
    635c:	46062200 	add.s	$f8,$f4,$f6
    6360:	28610028 	slti	at,v1,40
    6364:	a23901a0 	sb	t9,416(s1)
    6368:	1020000a 	beqz	at,6394 <func_808DCB7C+0x88>
    636c:	e6280028 	swc1	$f8,40(s1)
    6370:	3c010000 	lui	at,0x0
    6374:	c4200000 	lwc1	$f0,0(at)
    6378:	26240508 	addiu	a0,s1,1288
    637c:	3c054080 	lui	a1,0x4080
    6380:	44060000 	mfc1	a2,$f0
    6384:	44070000 	mfc1	a3,$f0
    6388:	0c000000 	jal	0 <func_808D6870>
    638c:	00000000 	nop
    6390:	862301a4 	lh	v1,420(s1)
    6394:	28610028 	slti	at,v1,40
    6398:	1420000a 	bnez	at,63c4 <func_808DCB7C+0xb8>
    639c:	28610037 	slti	at,v1,55
    63a0:	50200009 	beqzl	at,63c8 <func_808DCB7C+0xbc>
    63a4:	4480a000 	mtc1	zero,$f20
    63a8:	4480a000 	mtc1	zero,$f20
    63ac:	26240508 	addiu	a0,s1,1288
    63b0:	3c063f80 	lui	a2,0x3f80
    63b4:	4405a000 	mfc1	a1,$f20
    63b8:	0c000000 	jal	0 <func_808D6870>
    63bc:	3c073f00 	lui	a3,0x3f00
    63c0:	862301a4 	lh	v1,420(s1)
    63c4:	4480a000 	mtc1	zero,$f20
    63c8:	28610037 	slti	at,v1,55
    63cc:	14200009 	bnez	at,63f4 <func_808DCB7C+0xe8>
    63d0:	3c063dcc 	lui	a2,0x3dcc
    63d4:	3c073e19 	lui	a3,0x3e19
    63d8:	34e7999a 	ori	a3,a3,0x999a
    63dc:	26240508 	addiu	a0,s1,1288
    63e0:	3c0540a0 	lui	a1,0x40a0
    63e4:	0c000000 	jal	0 <func_808D6870>
    63e8:	34c6cccd 	ori	a2,a2,0xcccd
    63ec:	24080001 	li	t0,1
    63f0:	a22802e4 	sb	t0,740(s1)
    63f4:	962901c2 	lhu	t1,450(s1)
    63f8:	2d210009 	sltiu	at,t1,9
    63fc:	10200118 	beqz	at,6860 <L808DD000+0xd0>
    6400:	00094880 	sll	t1,t1,0x2
    6404:	3c010000 	lui	at,0x0
    6408:	00290821 	addu	at,at,t1
    640c:	8c290000 	lw	t1,0(at)
    6410:	01200008 	jr	t1
    6414:	00000000 	nop

00006418 <L808DCC88>:
    6418:	8fa40038 	lw	a0,56(sp)
    641c:	0c000000 	jal	0 <func_808D6870>
    6420:	8e2501cc 	lw	a1,460(s1)
    6424:	1040010e 	beqz	v0,6860 <L808DD000+0xd0>
    6428:	3c100600 	lui	s0,0x600
    642c:	26104da8 	addiu	s0,s0,19880
    6430:	240a0001 	li	t2,1
    6434:	a62a01c2 	sh	t2,450(s1)
    6438:	0c000000 	jal	0 <func_808D6870>
    643c:	02002025 	move	a0,s0
    6440:	44825000 	mtc1	v0,$f10
    6444:	4406a000 	mfc1	a2,$f20
    6448:	02002825 	move	a1,s0
    644c:	46805420 	cvt.s.w	$f16,$f10
    6450:	e63001cc 	swc1	$f16,460(s1)
    6454:	0c000000 	jal	0 <func_808D6870>
    6458:	8fa40038 	lw	a0,56(sp)
    645c:	10000101 	b	6864 <L808DD000+0xd4>
    6460:	8fbf002c 	lw	ra,44(sp)

00006464 <L808DCCD4>:
    6464:	8fa40038 	lw	a0,56(sp)
    6468:	0c000000 	jal	0 <func_808D6870>
    646c:	8e2501cc 	lw	a1,460(s1)
    6470:	104000fb 	beqz	v0,6860 <L808DD000+0xd0>
    6474:	3c100600 	lui	s0,0x600
    6478:	26103d40 	addiu	s0,s0,15680
    647c:	240b0002 	li	t3,2
    6480:	a62b01c2 	sh	t3,450(s1)
    6484:	0c000000 	jal	0 <func_808D6870>
    6488:	02002025 	move	a0,s0
    648c:	44829000 	mtc1	v0,$f18
    6490:	4406a000 	mfc1	a2,$f20
    6494:	02002825 	move	a1,s0
    6498:	46809120 	cvt.s.w	$f4,$f18
    649c:	e62401cc 	swc1	$f4,460(s1)
    64a0:	0c000000 	jal	0 <func_808D6870>
    64a4:	8fa40038 	lw	a0,56(sp)
    64a8:	100000ee 	b	6864 <L808DD000+0xd4>
    64ac:	8fbf002c 	lw	ra,44(sp)

000064b0 <L808DCD20>:
    64b0:	3c0c0000 	lui	t4,0x0
    64b4:	8d8c0000 	lw	t4,0(t4)
    64b8:	3c014220 	lui	at,0x4220
    64bc:	44810000 	mtc1	at,$f0
    64c0:	e59416d0 	swc1	$f20,5840(t4)
    64c4:	c6300028 	lwc1	$f16,40(s1)
    64c8:	3c013f00 	lui	at,0x3f00
    64cc:	44814000 	mtc1	at,$f8
    64d0:	c6260060 	lwc1	$f6,96(s1)
    64d4:	4600803c 	c.lt.s	$f16,$f0
    64d8:	3c100600 	lui	s0,0x600
    64dc:	46083281 	sub.s	$f10,$f6,$f8
    64e0:	261063cc 	addiu	s0,s0,25548
    64e4:	240d0003 	li	t5,3
    64e8:	450000dd 	bc1f	6860 <L808DD000+0xd0>
    64ec:	e62a0060 	swc1	$f10,96(s1)
    64f0:	e6200028 	swc1	$f0,40(s1)
    64f4:	e6340060 	swc1	$f20,96(s1)
    64f8:	a62d01c2 	sh	t5,450(s1)
    64fc:	0c000000 	jal	0 <func_808D6870>
    6500:	02002025 	move	a0,s0
    6504:	44829000 	mtc1	v0,$f18
    6508:	4406a000 	mfc1	a2,$f20
    650c:	02002825 	move	a1,s0
    6510:	46809120 	cvt.s.w	$f4,$f18
    6514:	e62401cc 	swc1	$f4,460(s1)
    6518:	0c000000 	jal	0 <func_808D6870>
    651c:	8fa40038 	lw	a0,56(sp)
    6520:	8e2f0004 	lw	t7,4(s1)
    6524:	240e0046 	li	t6,70
    6528:	a62e01b6 	sh	t6,438(s1)
    652c:	35f80400 	ori	t8,t7,0x400
    6530:	100000cb 	b	6860 <L808DD000+0xd0>
    6534:	ae380004 	sw	t8,4(s1)

00006538 <L808DCDA8>:
    6538:	863901b6 	lh	t9,438(s1)
    653c:	24010044 	li	at,68
    6540:	24080001 	li	t0,1
    6544:	57210003 	bnel	t9,at,6554 <L808DCDA8+0x1c>
    6548:	8fa40038 	lw	a0,56(sp)
    654c:	a228019f 	sb	t0,415(s1)
    6550:	8fa40038 	lw	a0,56(sp)
    6554:	0c000000 	jal	0 <func_808D6870>
    6558:	8e2501cc 	lw	a1,460(s1)
    655c:	104000c0 	beqz	v0,6860 <L808DD000+0xd0>
    6560:	3c100600 	lui	s0,0x600
    6564:	261069a0 	addiu	s0,s0,27040
    6568:	24090004 	li	t1,4
    656c:	a62901c2 	sh	t1,450(s1)
    6570:	0c000000 	jal	0 <func_808D6870>
    6574:	02002025 	move	a0,s0
    6578:	44823000 	mtc1	v0,$f6
    657c:	4406a000 	mfc1	a2,$f20
    6580:	02002825 	move	a1,s0
    6584:	46803220 	cvt.s.w	$f8,$f6
    6588:	e62801cc 	swc1	$f8,460(s1)
    658c:	0c000000 	jal	0 <func_808D6870>
    6590:	8fa40038 	lw	a0,56(sp)
    6594:	100000b3 	b	6864 <L808DD000+0xd4>
    6598:	8fbf002c 	lw	ra,44(sp)

0000659c <L808DCE0C>:
    659c:	8fa40038 	lw	a0,56(sp)
    65a0:	0c000000 	jal	0 <func_808D6870>
    65a4:	3c0540a0 	lui	a1,0x40a0
    65a8:	10400003 	beqz	v0,65b8 <L808DCE0C+0x1c>
    65ac:	02202025 	move	a0,s1
    65b0:	0c000000 	jal	0 <func_808D6870>
    65b4:	240539ce 	li	a1,14798
    65b8:	862a01b6 	lh	t2,438(s1)
    65bc:	3c100600 	lui	s0,0x600
    65c0:	261058c4 	addiu	s0,s0,22724
    65c4:	154000a6 	bnez	t2,6860 <L808DD000+0xd0>
    65c8:	240b0005 	li	t3,5
    65cc:	a62b01c2 	sh	t3,450(s1)
    65d0:	0c000000 	jal	0 <func_808D6870>
    65d4:	02002025 	move	a0,s0
    65d8:	44825000 	mtc1	v0,$f10
    65dc:	4406a000 	mfc1	a2,$f20
    65e0:	02002825 	move	a1,s0
    65e4:	46805420 	cvt.s.w	$f16,$f10
    65e8:	e63001cc 	swc1	$f16,460(s1)
    65ec:	0c000000 	jal	0 <func_808D6870>
    65f0:	8fa40038 	lw	a0,56(sp)
    65f4:	3c014120 	lui	at,0x4120
    65f8:	240c0050 	li	t4,80
    65fc:	4481a000 	mtc1	at,$f20
    6600:	a62c02d4 	sh	t4,724(s1)
    6604:	24100001 	li	s0,1
    6608:	0c000000 	jal	0 <func_808D6870>
    660c:	4600a306 	mov.s	$f12,$f20
    6610:	4600048d 	trunc.w.s	$f18,$f0
    6614:	00107840 	sll	t7,s0,0x1
    6618:	26100001 	addiu	s0,s0,1
    661c:	00108400 	sll	s0,s0,0x10
    6620:	440e9000 	mfc1	t6,$f18
    6624:	00108403 	sra	s0,s0,0x10
    6628:	2a01000f 	slti	at,s0,15
    662c:	022fc021 	addu	t8,s1,t7
    6630:	1420fff5 	bnez	at,6608 <L808DCE0C+0x6c>
    6634:	a70e04e4 	sh	t6,1252(t8)
    6638:	8e280004 	lw	t0,4(s1)
    663c:	2401fbff 	li	at,-1025
    6640:	24190050 	li	t9,80
    6644:	01014824 	and	t1,t0,at
    6648:	a63902e6 	sh	t9,742(s1)
    664c:	a62002e8 	sh	zero,744(s1)
    6650:	10000083 	b	6860 <L808DD000+0xd0>
    6654:	ae290004 	sw	t1,4(s1)

00006658 <L808DCEC8>:
    6658:	8fa40054 	lw	a0,84(sp)
    665c:	3c05447a 	lui	a1,0x447a
    6660:	0c000000 	jal	0 <func_808D6870>
    6664:	00003025 	move	a2,zero
    6668:	8fa40038 	lw	a0,56(sp)
    666c:	0c000000 	jal	0 <func_808D6870>
    6670:	8e2501cc 	lw	a1,460(s1)
    6674:	1040007a 	beqz	v0,6860 <L808DD000+0xd0>
    6678:	3c100600 	lui	s0,0x600
    667c:	26106028 	addiu	s0,s0,24616
    6680:	240a0006 	li	t2,6
    6684:	a62a01c2 	sh	t2,450(s1)
    6688:	0c000000 	jal	0 <func_808D6870>
    668c:	02002025 	move	a0,s0
    6690:	44822000 	mtc1	v0,$f4
    6694:	4406a000 	mfc1	a2,$f20
    6698:	02002825 	move	a1,s0
    669c:	468021a0 	cvt.s.w	$f6,$f4
    66a0:	e62601cc 	swc1	$f6,460(s1)
    66a4:	0c000000 	jal	0 <func_808D6870>
    66a8:	8fa40038 	lw	a0,56(sp)
    66ac:	3c0141a0 	lui	at,0x41a0
    66b0:	3c0b0000 	lui	t3,0x0
    66b4:	8d6b0000 	lw	t3,0(t3)
    66b8:	44814000 	mtc1	at,$f8
    66bc:	240c0001 	li	t4,1
    66c0:	e56816d0 	swc1	$f8,5840(t3)
    66c4:	10000066 	b	6860 <L808DD000+0xd0>
    66c8:	a22c019f 	sb	t4,415(s1)

000066cc <L808DCF3C>:
    66cc:	3c063dcc 	lui	a2,0x3dcc
    66d0:	a22001a0 	sb	zero,416(s1)
    66d4:	34c6cccd 	ori	a2,a2,0xcccd
    66d8:	26240028 	addiu	a0,s1,40
    66dc:	3c054348 	lui	a1,0x4348
    66e0:	0c000000 	jal	0 <func_808D6870>
    66e4:	3c07447a 	lui	a3,0x447a
    66e8:	8fa40038 	lw	a0,56(sp)
    66ec:	0c000000 	jal	0 <func_808D6870>
    66f0:	8e2501cc 	lw	a1,460(s1)
    66f4:	1040005a 	beqz	v0,6860 <L808DD000+0xd0>
    66f8:	240d0007 	li	t5,7
    66fc:	10000058 	b	6860 <L808DD000+0xd0>
    6700:	a62d01c2 	sh	t5,450(s1)

00006704 <L808DCF74>:
    6704:	3c063d4c 	lui	a2,0x3d4c
    6708:	a22001a0 	sb	zero,416(s1)
    670c:	34c6cccd 	ori	a2,a2,0xcccd
    6710:	26240028 	addiu	a0,s1,40
    6714:	3c054316 	lui	a1,0x4316
    6718:	0c000000 	jal	0 <func_808D6870>
    671c:	3c0741f0 	lui	a3,0x41f0
    6720:	3c100601 	lui	s0,0x601
    6724:	26108a88 	addiu	s0,s0,-30072
    6728:	0c000000 	jal	0 <func_808D6870>
    672c:	02002025 	move	a0,s0
    6730:	44825000 	mtc1	v0,$f10
    6734:	4406a000 	mfc1	a2,$f20
    6738:	02002825 	move	a1,s0
    673c:	46805420 	cvt.s.w	$f16,$f10
    6740:	e63001cc 	swc1	$f16,460(s1)
    6744:	0c000000 	jal	0 <func_808D6870>
    6748:	8fa40038 	lw	a0,56(sp)
    674c:	240f0008 	li	t7,8
    6750:	a62f01c2 	sh	t7,450(s1)
    6754:	0c000000 	jal	0 <func_808D6870>
    6758:	8fa40038 	lw	a0,56(sp)
    675c:	3c014190 	lui	at,0x4190
    6760:	3c0e0000 	lui	t6,0x0
    6764:	8dce0000 	lw	t6,0(t6)
    6768:	44819000 	mtc1	at,$f18
    676c:	02202025 	move	a0,s1
    6770:	240528c7 	li	a1,10439
    6774:	0c000000 	jal	0 <func_808D6870>
    6778:	e5d216c4 	swc1	$f18,5828(t6)
    677c:	02202025 	move	a0,s1
    6780:	0c000000 	jal	0 <func_808D6870>
    6784:	240539cf 	li	a1,14799
    6788:	10000036 	b	6864 <L808DD000+0xd4>
    678c:	8fbf002c 	lw	ra,44(sp)

00006790 <L808DD000>:
    6790:	a22001a0 	sb	zero,416(s1)
    6794:	8fa40038 	lw	a0,56(sp)
    6798:	0c000000 	jal	0 <func_808D6870>
    679c:	3c0540e0 	lui	a1,0x40e0
    67a0:	10400028 	beqz	v0,6844 <L808DD000+0xb4>
    67a4:	00008025 	move	s0,zero
    67a8:	3c0141c8 	lui	at,0x41c8
    67ac:	263801fc 	addiu	t8,s1,508
    67b0:	4481a000 	mtc1	at,$f20
    67b4:	afb80034 	sw	t8,52(sp)
    67b8:	0c000000 	jal	0 <func_808D6870>
    67bc:	4600a306 	mov.s	$f12,$f20
    67c0:	e7a00040 	swc1	$f0,64(sp)
    67c4:	0c000000 	jal	0 <func_808D6870>
    67c8:	4600a306 	mov.s	$f12,$f20
    67cc:	e7a00044 	swc1	$f0,68(sp)
    67d0:	0c000000 	jal	0 <func_808D6870>
    67d4:	4600a306 	mov.s	$f12,$f20
    67d8:	3c014348 	lui	at,0x4348
    67dc:	44816000 	mtc1	at,$f12
    67e0:	0c000000 	jal	0 <func_808D6870>
    67e4:	e7a00048 	swc1	$f0,72(sp)
    67e8:	3c0143fa 	lui	at,0x43fa
    67ec:	44812000 	mtc1	at,$f4
    67f0:	3c070000 	lui	a3,0x0
    67f4:	24190014 	li	t9,20
    67f8:	46040180 	add.s	$f6,$f0,$f4
    67fc:	afb90014 	sw	t9,20(sp)
    6800:	24e70000 	addiu	a3,a3,0
    6804:	8fa40054 	lw	a0,84(sp)
    6808:	e7a60010 	swc1	$f6,16(sp)
    680c:	8fa50034 	lw	a1,52(sp)
    6810:	0c000000 	jal	0 <func_808D6870>
    6814:	27a60040 	addiu	a2,sp,64
    6818:	26100001 	addiu	s0,s0,1
    681c:	00108400 	sll	s0,s0,0x10
    6820:	00108403 	sra	s0,s0,0x10
    6824:	2a010064 	slti	at,s0,100
    6828:	1420ffe3 	bnez	at,67b8 <L808DD000+0x28>
    682c:	00000000 	nop
    6830:	02202025 	move	a0,s1
    6834:	0c000000 	jal	0 <func_808D6870>
    6838:	24050806 	li	a1,2054
    683c:	24080032 	li	t0,50
    6840:	a62801bc 	sh	t0,444(s1)
    6844:	8fa40038 	lw	a0,56(sp)
    6848:	0c000000 	jal	0 <func_808D6870>
    684c:	8e2501cc 	lw	a1,460(s1)
    6850:	10400003 	beqz	v0,6860 <L808DD000+0xd0>
    6854:	02202025 	move	a0,s1
    6858:	0c000000 	jal	0 <func_808D6870>
    685c:	8fa50054 	lw	a1,84(sp)
    6860:	8fbf002c 	lw	ra,44(sp)
    6864:	d7b40018 	ldc1	$f20,24(sp)
    6868:	8fb00024 	lw	s0,36(sp)
    686c:	8fb10028 	lw	s1,40(sp)
    6870:	03e00008 	jr	ra
    6874:	27bd0050 	addiu	sp,sp,80

00006878 <func_808DD0E8>:
    6878:	27bdffe8 	addiu	sp,sp,-24
    687c:	afbf0014 	sw	ra,20(sp)
    6880:	afa40018 	sw	a0,24(sp)
    6884:	0c000000 	jal	0 <func_808D6870>
    6888:	2406017c 	li	a2,380
    688c:	3c040601 	lui	a0,0x601
    6890:	0c000000 	jal	0 <func_808D6870>
    6894:	248496b0 	addiu	a0,a0,-26960
    6898:	44822000 	mtc1	v0,$f4
    689c:	8fa30018 	lw	v1,24(sp)
    68a0:	3c050601 	lui	a1,0x601
    68a4:	468021a0 	cvt.s.w	$f6,$f4
    68a8:	24a596b0 	addiu	a1,a1,-26960
    68ac:	24060000 	li	a2,0
    68b0:	24640150 	addiu	a0,v1,336
    68b4:	0c000000 	jal	0 <func_808D6870>
    68b8:	e46601cc 	swc1	$f6,460(v1)
    68bc:	8faf0018 	lw	t7,24(sp)
    68c0:	3c0e0000 	lui	t6,0x0
    68c4:	25ce0000 	addiu	t6,t6,0
    68c8:	adee0194 	sw	t6,404(t7)
    68cc:	8fbf0014 	lw	ra,20(sp)
    68d0:	27bd0018 	addiu	sp,sp,24
    68d4:	03e00008 	jr	ra
    68d8:	00000000 	nop

000068dc <func_808DD14C>:
    68dc:	27bdffd8 	addiu	sp,sp,-40
    68e0:	afbf001c 	sw	ra,28(sp)
    68e4:	afb00018 	sw	s0,24(sp)
    68e8:	afa5002c 	sw	a1,44(sp)
    68ec:	8c8e0004 	lw	t6,4(a0)
    68f0:	00808025 	move	s0,a0
    68f4:	24840150 	addiu	a0,a0,336
    68f8:	35cf0001 	ori	t7,t6,0x1
    68fc:	ac8ffeb4 	sw	t7,-332(a0)
    6900:	0c000000 	jal	0 <func_808D6870>
    6904:	afa40024 	sw	a0,36(sp)
    6908:	861801a4 	lh	t8,420(s0)
    690c:	26040508 	addiu	a0,s0,1288
    6910:	3c0540a0 	lui	a1,0x40a0
    6914:	2b010037 	slti	at,t8,55
    6918:	14200007 	bnez	at,6938 <func_808DD14C+0x5c>
    691c:	3c063dcc 	lui	a2,0x3dcc
    6920:	3c073e19 	lui	a3,0x3e19
    6924:	34e7999a 	ori	a3,a3,0x999a
    6928:	0c000000 	jal	0 <func_808D6870>
    692c:	34c6cccd 	ori	a2,a2,0xcccd
    6930:	24190001 	li	t9,1
    6934:	a21902e4 	sb	t9,740(s0)
    6938:	8fa40024 	lw	a0,36(sp)
    693c:	0c000000 	jal	0 <func_808D6870>
    6940:	8e0501cc 	lw	a1,460(s0)
    6944:	10400010 	beqz	v0,6988 <func_808DD14C+0xac>
    6948:	3c080000 	lui	t0,0x0
    694c:	25080000 	addiu	t0,t0,0
    6950:	24090004 	li	t1,4
    6954:	3c040600 	lui	a0,0x600
    6958:	ae080194 	sw	t0,404(s0)
    695c:	a60901c2 	sh	t1,450(s0)
    6960:	0c000000 	jal	0 <func_808D6870>
    6964:	248469a0 	addiu	a0,a0,27040
    6968:	44822000 	mtc1	v0,$f4
    696c:	3c050600 	lui	a1,0x600
    6970:	24a569a0 	addiu	a1,a1,27040
    6974:	468021a0 	cvt.s.w	$f6,$f4
    6978:	24060000 	li	a2,0
    697c:	e60601cc 	swc1	$f6,460(s0)
    6980:	0c000000 	jal	0 <func_808D6870>
    6984:	8fa40024 	lw	a0,36(sp)
    6988:	8fbf001c 	lw	ra,28(sp)
    698c:	8fb00018 	lw	s0,24(sp)
    6990:	27bd0028 	addiu	sp,sp,40
    6994:	03e00008 	jr	ra
    6998:	00000000 	nop

0000699c <func_808DD20C>:
    699c:	27bdff98 	addiu	sp,sp,-104
    69a0:	afbf003c 	sw	ra,60(sp)
    69a4:	afb50038 	sw	s5,56(sp)
    69a8:	afb40034 	sw	s4,52(sp)
    69ac:	afb30030 	sw	s3,48(sp)
    69b0:	afb2002c 	sw	s2,44(sp)
    69b4:	afb10028 	sw	s1,40(sp)
    69b8:	afb00024 	sw	s0,36(sp)
    69bc:	f7b40018 	sdc1	$f20,24(sp)
    69c0:	afa5006c 	sw	a1,108(sp)
    69c4:	90830621 	lbu	v1,1569(a0)
    69c8:	0080a825 	move	s5,a0
    69cc:	240f0002 	li	t7,2
    69d0:	306e0002 	andi	t6,v1,0x2
    69d4:	11c000d8 	beqz	t6,6d38 <func_808DD20C+0x39c>
    69d8:	3078fffd 	andi	t8,v1,0xfffd
    69dc:	8c820194 	lw	v0,404(a0)
    69e0:	3c190000 	lui	t9,0x0
    69e4:	27390000 	addiu	t9,t9,0
    69e8:	a48f02d4 	sh	t7,724(a0)
    69ec:	a0980621 	sb	t8,1569(a0)
    69f0:	13220005 	beq	t9,v0,6a08 <func_808DD20C+0x6c>
    69f4:	8c93064c 	lw	s3,1612(a0)
    69f8:	3c080000 	lui	t0,0x0
    69fc:	25080000 	addiu	t0,t0,0
    6a00:	1502000f 	bne	t0,v0,6a40 <func_808DD20C+0xa4>
    6a04:	3c0c0000 	lui	t4,0x0
    6a08:	8e690000 	lw	t1,0(s3)
    6a0c:	02a02025 	move	a0,s5
    6a10:	312a2000 	andi	t2,t1,0x2000
    6a14:	514000c9 	beqzl	t2,6d3c <func_808DD20C+0x3a0>
    6a18:	8fbf003c 	lw	ra,60(sp)
    6a1c:	0c000000 	jal	0 <func_808D6870>
    6a20:	8fa5006c 	lw	a1,108(sp)
    6a24:	a6a001ba 	sh	zero,442(s5)
    6a28:	02a02025 	move	a0,s5
    6a2c:	0c000000 	jal	0 <func_808D6870>
    6a30:	240539cc 	li	a1,14796
    6a34:	240b000f 	li	t3,15
    6a38:	100000bf 	b	6d38 <func_808DD20C+0x39c>
    6a3c:	a6ab01a6 	sh	t3,422(s5)
    6a40:	258c0000 	addiu	t4,t4,0
    6a44:	5582008b 	bnel	t4,v0,6c74 <func_808DD20C+0x2d8>
    6a48:	8e6d0000 	lw	t5,0(s3)
    6a4c:	86ad01c2 	lh	t5,450(s5)
    6a50:	29a10003 	slti	at,t5,3
    6a54:	54200087 	bnezl	at,6c74 <func_808DD20C+0x2d8>
    6a58:	8e6d0000 	lw	t5,0(s3)
    6a5c:	8e6e0000 	lw	t6,0(s3)
    6a60:	0000a025 	move	s4,zero
    6a64:	00009025 	move	s2,zero
    6a68:	31cf0080 	andi	t7,t6,0x80
    6a6c:	15e000b2 	bnez	t7,6d38 <func_808DD20C+0x39c>
    6a70:	26b001fc 	addiu	s0,s5,508
    6a74:	3c0141a0 	lui	at,0x41a0
    6a78:	4481a000 	mtc1	at,$f20
    6a7c:	27b10050 	addiu	s1,sp,80
    6a80:	0c000000 	jal	0 <func_808D6870>
    6a84:	4600a306 	mov.s	$f12,$f20
    6a88:	e7a00050 	swc1	$f0,80(sp)
    6a8c:	0c000000 	jal	0 <func_808D6870>
    6a90:	4600a306 	mov.s	$f12,$f20
    6a94:	e7a00054 	swc1	$f0,84(sp)
    6a98:	0c000000 	jal	0 <func_808D6870>
    6a9c:	4600a306 	mov.s	$f12,$f20
    6aa0:	3c014348 	lui	at,0x4348
    6aa4:	44816000 	mtc1	at,$f12
    6aa8:	0c000000 	jal	0 <func_808D6870>
    6aac:	e7a00058 	swc1	$f0,88(sp)
    6ab0:	3c0143fa 	lui	at,0x43fa
    6ab4:	44812000 	mtc1	at,$f4
    6ab8:	3c070000 	lui	a3,0x0
    6abc:	2418001e 	li	t8,30
    6ac0:	46040180 	add.s	$f6,$f0,$f4
    6ac4:	afb80014 	sw	t8,20(sp)
    6ac8:	24e70000 	addiu	a3,a3,0
    6acc:	8fa4006c 	lw	a0,108(sp)
    6ad0:	e7a60010 	swc1	$f6,16(sp)
    6ad4:	02002825 	move	a1,s0
    6ad8:	0c000000 	jal	0 <func_808D6870>
    6adc:	02203025 	move	a2,s1
    6ae0:	26520001 	addiu	s2,s2,1
    6ae4:	00129400 	sll	s2,s2,0x10
    6ae8:	00129403 	sra	s2,s2,0x10
    6aec:	2a41001e 	slti	at,s2,30
    6af0:	1420ffe3 	bnez	at,6a80 <func_808DD20C+0xe4>
    6af4:	00000000 	nop
    6af8:	0c000000 	jal	0 <func_808D6870>
    6afc:	8e640000 	lw	a0,0(s3)
    6b00:	14400003 	bnez	v0,6b10 <func_808DD20C+0x174>
    6b04:	304300ff 	andi	v1,v0,0xff
    6b08:	10000002 	b	6b14 <func_808DD20C+0x178>
    6b0c:	24030002 	li	v1,2
    6b10:	24140001 	li	s4,1
    6b14:	92a200af 	lbu	v0,175(s5)
    6b18:	3c130000 	lui	s3,0x0
    6b1c:	26730000 	addiu	s3,s3,0
    6b20:	0002ce00 	sll	t9,v0,0x18
    6b24:	00194603 	sra	t0,t9,0x18
    6b28:	29010003 	slti	at,t0,3
    6b2c:	10200002 	beqz	at,6b38 <func_808DD20C+0x19c>
    6b30:	00009025 	move	s2,zero
    6b34:	12800002 	beqz	s4,6b40 <func_808DD20C+0x1a4>
    6b38:	00434823 	subu	t1,v0,v1
    6b3c:	a2a900af 	sb	t1,175(s5)
    6b40:	3c014170 	lui	at,0x4170
    6b44:	4481a000 	mtc1	at,$f20
    6b48:	2414000c 	li	s4,12
    6b4c:	24110001 	li	s1,1
    6b50:	0c000000 	jal	0 <func_808D6870>
    6b54:	4600a306 	mov.s	$f12,$f20
    6b58:	02340019 	multu	s1,s4
    6b5c:	001258c0 	sll	t3,s2,0x3
    6b60:	01725823 	subu	t3,t3,s2
    6b64:	8e6a0000 	lw	t2,0(s3)
    6b68:	000b58c0 	sll	t3,t3,0x3
    6b6c:	01725821 	addu	t3,t3,s2
    6b70:	000b58c0 	sll	t3,t3,0x3
    6b74:	014b6021 	addu	t4,t2,t3
    6b78:	4600a306 	mov.s	$f12,$f20
    6b7c:	00008012 	mflo	s0
    6b80:	01906821 	addu	t5,t4,s0
    6b84:	0c000000 	jal	0 <func_808D6870>
    6b88:	e5a00278 	swc1	$f0,632(t5)
    6b8c:	001278c0 	sll	t7,s2,0x3
    6b90:	01f27823 	subu	t7,t7,s2
    6b94:	8e6e0000 	lw	t6,0(s3)
    6b98:	000f78c0 	sll	t7,t7,0x3
    6b9c:	26310001 	addiu	s1,s1,1
    6ba0:	01f27821 	addu	t7,t7,s2
    6ba4:	00118c00 	sll	s1,s1,0x10
    6ba8:	000f78c0 	sll	t7,t7,0x3
    6bac:	00118c03 	sra	s1,s1,0x10
    6bb0:	01cfc021 	addu	t8,t6,t7
    6bb4:	2a21000c 	slti	at,s1,12
    6bb8:	0310c821 	addu	t9,t8,s0
    6bbc:	1420ffe4 	bnez	at,6b50 <func_808DD20C+0x1b4>
    6bc0:	e7200280 	swc1	$f0,640(t9)
    6bc4:	26520001 	addiu	s2,s2,1
    6bc8:	00129400 	sll	s2,s2,0x10
    6bcc:	00129403 	sra	s2,s2,0x10
    6bd0:	2a41000c 	slti	at,s2,12
    6bd4:	5420ffde 	bnezl	at,6b50 <func_808DD20C+0x1b4>
    6bd8:	24110001 	li	s1,1
    6bdc:	82a800af 	lb	t0,175(s5)
    6be0:	8fa5006c 	lw	a1,108(sp)
    6be4:	02a02025 	move	a0,s5
    6be8:	1d000013 	bgtz	t0,6c38 <func_808DD20C+0x29c>
    6bec:	00000000 	nop
    6bf0:	0c000000 	jal	0 <func_808D6870>
    6bf4:	02a02025 	move	a0,s5
    6bf8:	02a02025 	move	a0,s5
    6bfc:	0c000000 	jal	0 <func_808D6870>
    6c00:	240539d0 	li	a1,14800
    6c04:	02a02025 	move	a0,s5
    6c08:	0c000000 	jal	0 <func_808D6870>
    6c0c:	24053827 	li	a1,14375
    6c10:	3c040000 	lui	a0,0x0
    6c14:	24840000 	addiu	a0,a0,0
    6c18:	0c000000 	jal	0 <func_808D6870>
    6c1c:	2405388b 	li	a1,14475
    6c20:	3c041001 	lui	a0,0x1001
    6c24:	0c000000 	jal	0 <func_808D6870>
    6c28:	348400ff 	ori	a0,a0,0xff
    6c2c:	24090004 	li	t1,4
    6c30:	10000041 	b	6d38 <func_808DD20C+0x39c>
    6c34:	a6a901c4 	sh	t1,452(s5)
    6c38:	0c000000 	jal	0 <func_808D6870>
    6c3c:	240539cd 	li	a1,14797
    6c40:	02a02025 	move	a0,s5
    6c44:	0c000000 	jal	0 <func_808D6870>
    6c48:	24053919 	li	a1,14617
    6c4c:	02a02025 	move	a0,s5
    6c50:	0c000000 	jal	0 <func_808D6870>
    6c54:	8fa5006c 	lw	a1,108(sp)
    6c58:	240a000f 	li	t2,15
    6c5c:	a6aa01a6 	sh	t2,422(s5)
    6c60:	8e6c0000 	lw	t4,0(s3)
    6c64:	240b0001 	li	t3,1
    6c68:	10000033 	b	6d38 <func_808DD20C+0x39c>
    6c6c:	a18b1704 	sb	t3,5892(t4)
    6c70:	8e6d0000 	lw	t5,0(s3)
    6c74:	3c010001 	lui	at,0x1
    6c78:	3421f8a4 	ori	at,at,0xf8a4
    6c7c:	01a17024 	and	t6,t5,at
    6c80:	11c0002d 	beqz	t6,6d38 <func_808DD20C+0x39c>
    6c84:	02a02025 	move	a0,s5
    6c88:	0c000000 	jal	0 <func_808D6870>
    6c8c:	00002825 	move	a1,zero
    6c90:	3c014170 	lui	at,0x4170
    6c94:	3c130000 	lui	s3,0x0
    6c98:	4481a000 	mtc1	at,$f20
    6c9c:	26730000 	addiu	s3,s3,0
    6ca0:	00009025 	move	s2,zero
    6ca4:	2414000c 	li	s4,12
    6ca8:	24110001 	li	s1,1
    6cac:	0c000000 	jal	0 <func_808D6870>
    6cb0:	4600a306 	mov.s	$f12,$f20
    6cb4:	02340019 	multu	s1,s4
    6cb8:	0012c0c0 	sll	t8,s2,0x3
    6cbc:	0312c023 	subu	t8,t8,s2
    6cc0:	8e6f0000 	lw	t7,0(s3)
    6cc4:	0018c0c0 	sll	t8,t8,0x3
    6cc8:	0312c021 	addu	t8,t8,s2
    6ccc:	0018c0c0 	sll	t8,t8,0x3
    6cd0:	01f8c821 	addu	t9,t7,t8
    6cd4:	4600a306 	mov.s	$f12,$f20
    6cd8:	00008012 	mflo	s0
    6cdc:	03304021 	addu	t0,t9,s0
    6ce0:	0c000000 	jal	0 <func_808D6870>
    6ce4:	e5000278 	swc1	$f0,632(t0)
    6ce8:	001250c0 	sll	t2,s2,0x3
    6cec:	01525023 	subu	t2,t2,s2
    6cf0:	8e690000 	lw	t1,0(s3)
    6cf4:	000a50c0 	sll	t2,t2,0x3
    6cf8:	26310001 	addiu	s1,s1,1
    6cfc:	01525021 	addu	t2,t2,s2
    6d00:	00118c00 	sll	s1,s1,0x10
    6d04:	000a50c0 	sll	t2,t2,0x3
    6d08:	00118c03 	sra	s1,s1,0x10
    6d0c:	012a5821 	addu	t3,t1,t2
    6d10:	2a21000c 	slti	at,s1,12
    6d14:	01706021 	addu	t4,t3,s0
    6d18:	1420ffe4 	bnez	at,6cac <func_808DD20C+0x310>
    6d1c:	e5800280 	swc1	$f0,640(t4)
    6d20:	26520001 	addiu	s2,s2,1
    6d24:	00129400 	sll	s2,s2,0x10
    6d28:	00129403 	sra	s2,s2,0x10
    6d2c:	2a41000c 	slti	at,s2,12
    6d30:	5420ffde 	bnezl	at,6cac <func_808DD20C+0x310>
    6d34:	24110001 	li	s1,1
    6d38:	8fbf003c 	lw	ra,60(sp)
    6d3c:	d7b40018 	ldc1	$f20,24(sp)
    6d40:	8fb00024 	lw	s0,36(sp)
    6d44:	8fb10028 	lw	s1,40(sp)
    6d48:	8fb2002c 	lw	s2,44(sp)
    6d4c:	8fb30030 	lw	s3,48(sp)
    6d50:	8fb40034 	lw	s4,52(sp)
    6d54:	8fb50038 	lw	s5,56(sp)
    6d58:	03e00008 	jr	ra
    6d5c:	27bd0068 	addiu	sp,sp,104

00006d60 <BossGanon_Update>:
    6d60:	27bdfed0 	addiu	sp,sp,-304
    6d64:	afbf0074 	sw	ra,116(sp)
    6d68:	afb60070 	sw	s6,112(sp)
    6d6c:	afb5006c 	sw	s5,108(sp)
    6d70:	afb40068 	sw	s4,104(sp)
    6d74:	afb30064 	sw	s3,100(sp)
    6d78:	afb20060 	sw	s2,96(sp)
    6d7c:	afb1005c 	sw	s1,92(sp)
    6d80:	afb00058 	sw	s0,88(sp)
    6d84:	f7ba0050 	sdc1	$f26,80(sp)
    6d88:	f7b80048 	sdc1	$f24,72(sp)
    6d8c:	f7b60040 	sdc1	$f22,64(sp)
    6d90:	f7b40038 	sdc1	$f20,56(sp)
    6d94:	8c830194 	lw	v1,404(a0)
    6d98:	3c0e0000 	lui	t6,0x0
    6d9c:	25ce0000 	addiu	t6,t6,0
    6da0:	0080a825 	move	s5,a0
    6da4:	00a0b025 	move	s6,a1
    6da8:	11c30009 	beq	t6,v1,6dd0 <BossGanon_Update+0x70>
    6dac:	8cb31c44 	lw	s3,7236(a1)
    6db0:	3c0f0000 	lui	t7,0x0
    6db4:	25ef0000 	addiu	t7,t7,0
    6db8:	51e30006 	beql	t7,v1,6dd4 <BossGanon_Update+0x74>
    6dbc:	8eb8014c 	lw	t8,332(s5)
    6dc0:	0c000000 	jal	0 <func_808D6870>
    6dc4:	2406017c 	li	a2,380
    6dc8:	1000000e 	b	6e04 <BossGanon_Update+0xa4>
    6dcc:	92a4071b 	lbu	a0,1819(s5)
    6dd0:	8eb8014c 	lw	t8,332(s5)
    6dd4:	3c090001 	lui	t1,0x1
    6dd8:	3c018000 	lui	at,0x8000
    6ddc:	0018c900 	sll	t9,t8,0x4
    6de0:	0338c821 	addu	t9,t9,t8
    6de4:	0019c880 	sll	t9,t9,0x2
    6de8:	02d94021 	addu	t0,s6,t9
    6dec:	01284821 	addu	t1,t1,t0
    6df0:	8d2917b4 	lw	t1,6068(t1)
    6df4:	01215021 	addu	t2,t1,at
    6df8:	3c010000 	lui	at,0x0
    6dfc:	ac2a0018 	sw	t2,24(at)
    6e00:	92a4071b 	lbu	a0,1819(s5)
    6e04:	50800049 	beqzl	a0,6f2c <BossGanon_Update+0x1cc>
    6e08:	3c013f80 	lui	at,0x3f80
    6e0c:	0c000000 	jal	0 <func_808D6870>
    6e10:	00000000 	nop
    6e14:	3c013f80 	lui	at,0x3f80
    6e18:	4481d000 	mtc1	at,$f26
    6e1c:	4480c000 	mtc1	zero,$f24
    6e20:	3c010000 	lui	at,0x0
    6e24:	c4360000 	lwc1	$f22,0(at)
    6e28:	3c010000 	lui	at,0x0
    6e2c:	c4340000 	lwc1	$f20,0(at)
    6e30:	00008825 	move	s1,zero
    6e34:	27b200f4 	addiu	s2,sp,244
    6e38:	27b00100 	addiu	s0,sp,256
    6e3c:	e7b800f8 	swc1	$f24,248(sp)
    6e40:	3c014370 	lui	at,0x4370
    6e44:	44816000 	mtc1	at,$f12
    6e48:	0c000000 	jal	0 <func_808D6870>
    6e4c:	00000000 	nop
    6e50:	3c0141a0 	lui	at,0x41a0
    6e54:	44812000 	mtc1	at,$f4
    6e58:	00000000 	nop
    6e5c:	46040180 	add.s	$f6,$f0,$f4
    6e60:	0c000000 	jal	0 <func_808D6870>
    6e64:	e7a60104 	swc1	$f6,260(sp)
    6e68:	3c013f00 	lui	at,0x3f00
    6e6c:	44814000 	mtc1	at,$f8
    6e70:	00000000 	nop
    6e74:	4608003c 	c.lt.s	$f0,$f8
    6e78:	00000000 	nop
    6e7c:	4502000e 	bc1fl	6eb8 <BossGanon_Update+0x158>
    6e80:	e7b40108 	swc1	$f20,264(sp)
    6e84:	e7b40100 	swc1	$f20,256(sp)
    6e88:	0c000000 	jal	0 <func_808D6870>
    6e8c:	4600b306 	mov.s	$f12,$f22
    6e90:	3c014000 	lui	at,0x4000
    6e94:	44816000 	mtc1	at,$f12
    6e98:	0c000000 	jal	0 <func_808D6870>
    6e9c:	e7a00108 	swc1	$f0,264(sp)
    6ea0:	e7a000f4 	swc1	$f0,244(sp)
    6ea4:	0c000000 	jal	0 <func_808D6870>
    6ea8:	4600d306 	mov.s	$f12,$f26
    6eac:	1000000c 	b	6ee0 <BossGanon_Update+0x180>
    6eb0:	e7a000fc 	swc1	$f0,252(sp)
    6eb4:	e7b40108 	swc1	$f20,264(sp)
    6eb8:	0c000000 	jal	0 <func_808D6870>
    6ebc:	4600b306 	mov.s	$f12,$f22
    6ec0:	3c014000 	lui	at,0x4000
    6ec4:	44816000 	mtc1	at,$f12
    6ec8:	0c000000 	jal	0 <func_808D6870>
    6ecc:	e7a00100 	swc1	$f0,256(sp)
    6ed0:	e7a000fc 	swc1	$f0,252(sp)
    6ed4:	0c000000 	jal	0 <func_808D6870>
    6ed8:	4600d306 	mov.s	$f12,$f26
    6edc:	e7a000f4 	swc1	$f0,244(sp)
    6ee0:	3c010000 	lui	at,0x0
    6ee4:	0c000000 	jal	0 <func_808D6870>
    6ee8:	c42c0000 	lwc1	$f12,0(at)
    6eec:	3c010000 	lui	at,0x0
    6ef0:	c42a0000 	lwc1	$f10,0(at)
    6ef4:	02c02025 	move	a0,s6
    6ef8:	02002825 	move	a1,s0
    6efc:	460a0400 	add.s	$f16,$f0,$f10
    6f00:	02403025 	move	a2,s2
    6f04:	44078000 	mfc1	a3,$f16
    6f08:	0c000000 	jal	0 <func_808D6870>
    6f0c:	00000000 	nop
    6f10:	26310001 	addiu	s1,s1,1
    6f14:	00118c00 	sll	s1,s1,0x10
    6f18:	00118c03 	sra	s1,s1,0x10
    6f1c:	2a21000a 	slti	at,s1,10
    6f20:	5420ffc8 	bnezl	at,6e44 <BossGanon_Update+0xe4>
    6f24:	3c014370 	lui	at,0x4370
    6f28:	3c013f80 	lui	at,0x3f80
    6f2c:	4481d000 	mtc1	at,$f26
    6f30:	240b0003 	li	t3,3
    6f34:	a2ab0624 	sb	t3,1572(s5)
    6f38:	3c01c040 	lui	at,0xc040
    6f3c:	3c0c0000 	lui	t4,0x0
    6f40:	8d8c0000 	lw	t4,0(t4)
    6f44:	44819000 	mtc1	at,$f18
    6f48:	2401fffe 	li	at,-2
    6f4c:	3c090000 	lui	t1,0x0
    6f50:	e59216c8 	swc1	$f18,5832(t4)
    6f54:	8ead0004 	lw	t5,4(s5)
    6f58:	86af01a2 	lh	t7,418(s5)
    6f5c:	86b901a4 	lh	t9,420(s5)
    6f60:	8ea30194 	lw	v1,404(s5)
    6f64:	4480c000 	mtc1	zero,$f24
    6f68:	25290000 	addiu	t1,t1,0
    6f6c:	01a17024 	and	t6,t5,at
    6f70:	25f80001 	addiu	t8,t7,1
    6f74:	27280001 	addiu	t0,t9,1
    6f78:	a2a002e4 	sb	zero,740(s5)
    6f7c:	aeae0004 	sw	t6,4(s5)
    6f80:	a6b801a2 	sh	t8,418(s5)
    6f84:	11230005 	beq	t1,v1,6f9c <BossGanon_Update+0x23c>
    6f88:	a6a801a4 	sh	t0,420(s5)
    6f8c:	3c0a0000 	lui	t2,0x0
    6f90:	254a0000 	addiu	t2,t2,0
    6f94:	55430009 	bnel	t2,v1,6fbc <BossGanon_Update+0x25c>
    6f98:	02a02025 	move	a0,s5
    6f9c:	926b0a73 	lbu	t3,2675(s3)
    6fa0:	02a02025 	move	a0,s5
    6fa4:	51600005 	beqzl	t3,6fbc <BossGanon_Update+0x25c>
    6fa8:	02a02025 	move	a0,s5
    6fac:	0c000000 	jal	0 <func_808D6870>
    6fb0:	02c02825 	move	a1,s6
    6fb4:	8ea30194 	lw	v1,404(s5)
    6fb8:	02a02025 	move	a0,s5
    6fbc:	0060f809 	jalr	v1
    6fc0:	02c02825 	move	a1,s6
    6fc4:	00008825 	move	s1,zero
    6fc8:	00116040 	sll	t4,s1,0x1
    6fcc:	02ac1021 	addu	v0,s5,t4
    6fd0:	844301b6 	lh	v1,438(v0)
    6fd4:	26310001 	addiu	s1,s1,1
    6fd8:	00118c00 	sll	s1,s1,0x10
    6fdc:	10600003 	beqz	v1,6fec <BossGanon_Update+0x28c>
    6fe0:	00118c03 	sra	s1,s1,0x10
    6fe4:	246dffff 	addiu	t5,v1,-1
    6fe8:	a44d01b6 	sh	t5,438(v0)
    6fec:	2a210005 	slti	at,s1,5
    6ff0:	5420fff6 	bnezl	at,6fcc <BossGanon_Update+0x26c>
    6ff4:	00116040 	sll	t4,s1,0x1
    6ff8:	86a201a6 	lh	v0,422(s5)
    6ffc:	02a02025 	move	a0,s5
    7000:	10400002 	beqz	v0,700c <BossGanon_Update+0x2ac>
    7004:	244effff 	addiu	t6,v0,-1
    7008:	a6ae01a6 	sh	t6,422(s5)
    700c:	86a202d4 	lh	v0,724(s5)
    7010:	10400002 	beqz	v0,701c <BossGanon_Update+0x2bc>
    7014:	244fffff 	addiu	t7,v0,-1
    7018:	a6af02d4 	sh	t7,724(s5)
    701c:	86a202e8 	lh	v0,744(s5)
    7020:	10400002 	beqz	v0,702c <BossGanon_Update+0x2cc>
    7024:	2458ffff 	addiu	t8,v0,-1
    7028:	a6b802e8 	sh	t8,744(s5)
    702c:	86a202e6 	lh	v0,742(s5)
    7030:	10400002 	beqz	v0,703c <BossGanon_Update+0x2dc>
    7034:	2459ffff 	addiu	t9,v0,-1
    7038:	a6b902e6 	sh	t9,742(s5)
    703c:	86a2019c 	lh	v0,412(s5)
    7040:	10400002 	beqz	v0,704c <BossGanon_Update+0x2ec>
    7044:	2448ffff 	addiu	t0,v0,-1
    7048:	a6a8019c 	sh	t0,412(s5)
    704c:	86a90678 	lh	t1,1656(s5)
    7050:	55200024 	bnezl	t1,70e4 <BossGanon_Update+0x384>
    7054:	92ae0199 	lbu	t6,409(s5)
    7058:	0c000000 	jal	0 <func_808D6870>
    705c:	02c02825 	move	a1,s6
    7060:	26b00610 	addiu	s0,s5,1552
    7064:	02002825 	move	a1,s0
    7068:	0c000000 	jal	0 <func_808D6870>
    706c:	26a401fc 	addiu	a0,s5,508
    7070:	3c010001 	lui	at,0x1
    7074:	34211e60 	ori	at,at,0x1e60
    7078:	02c18821 	addu	s1,s6,at
    707c:	02202825 	move	a1,s1
    7080:	02c02025 	move	a0,s6
    7084:	0c000000 	jal	0 <func_808D6870>
    7088:	02003025 	move	a2,s0
    708c:	86aa02d4 	lh	t2,724(s5)
    7090:	02c02025 	move	a0,s6
    7094:	02202825 	move	a1,s1
    7098:	55400012 	bnezl	t2,70e4 <BossGanon_Update+0x384>
    709c:	92ae0199 	lbu	t6,409(s5)
    70a0:	0c000000 	jal	0 <func_808D6870>
    70a4:	02003025 	move	a2,s0
    70a8:	8ea30194 	lw	v1,404(s5)
    70ac:	3c0b0000 	lui	t3,0x0
    70b0:	256b0000 	addiu	t3,t3,0
    70b4:	1163000a 	beq	t3,v1,70e0 <BossGanon_Update+0x380>
    70b8:	3c0c0000 	lui	t4,0x0
    70bc:	258c0000 	addiu	t4,t4,0
    70c0:	11830007 	beq	t4,v1,70e0 <BossGanon_Update+0x380>
    70c4:	3c0d0000 	lui	t5,0x0
    70c8:	25ad0000 	addiu	t5,t5,0
    70cc:	11a30004 	beq	t5,v1,70e0 <BossGanon_Update+0x380>
    70d0:	02c02025 	move	a0,s6
    70d4:	02202825 	move	a1,s1
    70d8:	0c000000 	jal	0 <func_808D6870>
    70dc:	02003025 	move	a2,s0
    70e0:	92ae0199 	lbu	t6,409(s5)
    70e4:	51c00030 	beqzl	t6,71a8 <BossGanon_Update+0x448>
    70e8:	4600c506 	mov.s	$f20,$f24
    70ec:	86a400b6 	lh	a0,182(s5)
    70f0:	00042023 	negu	a0,a0
    70f4:	00042400 	sll	a0,a0,0x10
    70f8:	0c000000 	jal	0 <func_808D6870>
    70fc:	00042403 	sra	a0,a0,0x10
    7100:	86a400b6 	lh	a0,182(s5)
    7104:	46000506 	mov.s	$f20,$f0
    7108:	00042023 	negu	a0,a0
    710c:	00042400 	sll	a0,a0,0x10
    7110:	0c000000 	jal	0 <func_808D6870>
    7114:	00042403 	sra	a0,a0,0x10
    7118:	c6a20064 	lwc1	$f2,100(s5)
    711c:	c6ac005c 	lwc1	$f12,92(s5)
    7120:	3c014396 	lui	at,0x4396
    7124:	46141102 	mul.s	$f4,$f2,$f20
    7128:	44817000 	mtc1	at,$f14
    712c:	4600a287 	neg.s	$f10,$f20
    7130:	460c0182 	mul.s	$f6,$f0,$f12
    7134:	46062200 	add.s	$f8,$f4,$f6
    7138:	460e4582 	mul.s	$f22,$f8,$f14
    713c:	00000000 	nop
    7140:	460c5402 	mul.s	$f16,$f10,$f12
    7144:	00000000 	nop
    7148:	46020482 	mul.s	$f18,$f0,$f2
    714c:	46128100 	add.s	$f4,$f16,$f18
    7150:	460e2182 	mul.s	$f6,$f4,$f14
    7154:	e7a60120 	swc1	$f6,288(sp)
    7158:	86a401a2 	lh	a0,418(s5)
    715c:	00800821 	move	at,a0
    7160:	000420c0 	sll	a0,a0,0x3
    7164:	00812021 	addu	a0,a0,at
    7168:	000420c0 	sll	a0,a0,0x3
    716c:	00812023 	subu	a0,a0,at
    7170:	000420c0 	sll	a0,a0,0x3
    7174:	00812023 	subu	a0,a0,at
    7178:	00042080 	sll	a0,a0,0x2
    717c:	00042400 	sll	a0,a0,0x10
    7180:	0c000000 	jal	0 <func_808D6870>
    7184:	00042403 	sra	a0,a0,0x10
    7188:	3c01c3fa 	lui	at,0xc3fa
    718c:	44814000 	mtc1	at,$f8
    7190:	3c0143fa 	lui	at,0x43fa
    7194:	44818000 	mtc1	at,$f16
    7198:	46080282 	mul.s	$f10,$f0,$f8
    719c:	10000004 	b	71b0 <BossGanon_Update+0x450>
    71a0:	46105501 	sub.s	$f20,$f10,$f16
    71a4:	4600c506 	mov.s	$f20,$f24
    71a8:	4600c586 	mov.s	$f22,$f24
    71ac:	e7b80120 	swc1	$f24,288(sp)
    71b0:	a2a00199 	sb	zero,409(s5)
    71b4:	4405b000 	mfc1	a1,$f22
    71b8:	4406d000 	mfc1	a2,$f26
    71bc:	e7b80010 	swc1	$f24,16(sp)
    71c0:	26a4050c 	addiu	a0,s5,1292
    71c4:	0c000000 	jal	0 <func_808D6870>
    71c8:	3c074416 	lui	a3,0x4416
    71cc:	4406d000 	mfc1	a2,$f26
    71d0:	26a40510 	addiu	a0,s5,1296
    71d4:	8fa50120 	lw	a1,288(sp)
    71d8:	3c074416 	lui	a3,0x4416
    71dc:	0c000000 	jal	0 <func_808D6870>
    71e0:	e7b80010 	swc1	$f24,16(sp)
    71e4:	4405a000 	mfc1	a1,$f20
    71e8:	4406d000 	mfc1	a2,$f26
    71ec:	26a40514 	addiu	a0,s5,1300
    71f0:	3c0742c8 	lui	a3,0x42c8
    71f4:	0c000000 	jal	0 <func_808D6870>
    71f8:	e7b80010 	swc1	$f24,16(sp)
    71fc:	86a201ba 	lh	v0,442(s5)
    7200:	24010001 	li	at,1
    7204:	02a02025 	move	a0,s5
    7208:	54410005 	bnel	v0,at,7220 <BossGanon_Update+0x4c0>
    720c:	24010064 	li	at,100
    7210:	0c000000 	jal	0 <func_808D6870>
    7214:	240539c7 	li	a1,14791
    7218:	86a201ba 	lh	v0,442(s5)
    721c:	24010064 	li	at,100
    7220:	14410004 	bne	v0,at,7234 <BossGanon_Update+0x4d4>
    7224:	02a02025 	move	a0,s5
    7228:	0c000000 	jal	0 <func_808D6870>
    722c:	240539d6 	li	a1,14806
    7230:	a6a001ba 	sh	zero,442(s5)
    7234:	86af02e6 	lh	t7,742(s5)
    7238:	3c010000 	lui	at,0x0
    723c:	55e00005 	bnezl	t7,7254 <BossGanon_Update+0x4f4>
    7240:	24110001 	li	s1,1
    7244:	86b802e8 	lh	t8,744(s5)
    7248:	53000029 	beqzl	t8,72f0 <BossGanon_Update+0x590>
    724c:	92ac019f 	lbu	t4,415(s5)
    7250:	24110001 	li	s1,1
    7254:	c4340000 	lwc1	$f20,0(at)
    7258:	0011c840 	sll	t9,s1,0x1
    725c:	02b91021 	addu	v0,s5,t9
    7260:	844304e4 	lh	v1,1252(v0)
    7264:	00115080 	sll	t2,s1,0x2
    7268:	02aa2021 	addu	a0,s5,t2
    726c:	1060000b 	beqz	v1,729c <BossGanon_Update+0x53c>
    7270:	2468ffff 	addiu	t0,v1,-1
    7274:	00114880 	sll	t1,s1,0x2
    7278:	a44804e4 	sh	t0,1252(v0)
    727c:	02a92021 	addu	a0,s5,t1
    7280:	4406d000 	mfc1	a2,$f26
    7284:	2484049c 	addiu	a0,a0,1180
    7288:	8ea50508 	lw	a1,1288(s5)
    728c:	0c000000 	jal	0 <func_808D6870>
    7290:	3c074000 	lui	a3,0x4000
    7294:	10000006 	b	72b0 <BossGanon_Update+0x550>
    7298:	26310001 	addiu	s1,s1,1
    729c:	4405d000 	mfc1	a1,$f26
    72a0:	4406a000 	mfc1	a2,$f20
    72a4:	0c000000 	jal	0 <func_808D6870>
    72a8:	2484049c 	addiu	a0,a0,1180
    72ac:	26310001 	addiu	s1,s1,1
    72b0:	00118c00 	sll	s1,s1,0x10
    72b4:	00118c03 	sra	s1,s1,0x10
    72b8:	2a210012 	slti	at,s1,18
    72bc:	5420ffe7 	bnezl	at,725c <BossGanon_Update+0x4fc>
    72c0:	0011c840 	sll	t9,s1,0x1
    72c4:	86ab02e8 	lh	t3,744(s5)
    72c8:	266400e4 	addiu	a0,s3,228
    72cc:	51600008 	beqzl	t3,72f0 <BossGanon_Update+0x590>
    72d0:	92ac019f 	lbu	t4,415(s5)
    72d4:	0c000000 	jal	0 <func_808D6870>
    72d8:	24050068 	li	a1,104
    72dc:	02c02025 	move	a0,s6
    72e0:	3c05442f 	lui	a1,0x442f
    72e4:	0c000000 	jal	0 <func_808D6870>
    72e8:	24060001 	li	a2,1
    72ec:	92ac019f 	lbu	t4,415(s5)
    72f0:	27b000e8 	addiu	s0,sp,232
    72f4:	02c02025 	move	a0,s6
    72f8:	51800017 	beqzl	t4,7358 <BossGanon_Update+0x5f8>
    72fc:	86a2026c 	lh	v0,620(s5)
    7300:	8eae0024 	lw	t6,36(s5)
    7304:	a2a0019f 	sb	zero,415(s5)
    7308:	3c063e4c 	lui	a2,0x3e4c
    730c:	ae0e0000 	sw	t6,0(s0)
    7310:	8ead0028 	lw	t5,40(s5)
    7314:	3c073f33 	lui	a3,0x3f33
    7318:	34e73333 	ori	a3,a3,0x3333
    731c:	ae0d0004 	sw	t5,4(s0)
    7320:	8eae002c 	lw	t6,44(s5)
    7324:	34c6cccd 	ori	a2,a2,0xcccd
    7328:	02002825 	move	a1,s0
    732c:	ae0e0008 	sw	t6,8(s0)
    7330:	0c000000 	jal	0 <func_808D6870>
    7334:	e7b800ec 	swc1	$f24,236(sp)
    7338:	3c063e99 	lui	a2,0x3e99
    733c:	3c073f4c 	lui	a3,0x3f4c
    7340:	34e7cccd 	ori	a3,a3,0xcccd
    7344:	34c6999a 	ori	a2,a2,0x999a
    7348:	02c02025 	move	a0,s6
    734c:	0c000000 	jal	0 <func_808D6870>
    7350:	02002825 	move	a1,s0
    7354:	86a2026c 	lh	v0,620(s5)
    7358:	1040001f 	beqz	v0,73d8 <BossGanon_Update+0x678>
    735c:	244fffff 	addiu	t7,v0,-1
    7360:	a6af026c 	sh	t7,620(s5)
    7364:	86b8026c 	lh	t8,620(s5)
    7368:	17000006 	bnez	t8,7384 <BossGanon_Update+0x624>
    736c:	00000000 	nop
    7370:	4405d000 	mfc1	a1,$f26
    7374:	4406c000 	mfc1	a2,$f24
    7378:	4407c000 	mfc1	a3,$f24
    737c:	0c000000 	jal	0 <func_808D6870>
    7380:	02c02025 	move	a0,s6
    7384:	3c010000 	lui	at,0x0
    7388:	c4340000 	lwc1	$f20,0(at)
    738c:	0c000000 	jal	0 <func_808D6870>
    7390:	4600a306 	mov.s	$f12,$f20
    7394:	86b9026c 	lh	t9,620(s5)
    7398:	3c010000 	lui	at,0x0
    739c:	c6a60270 	lwc1	$f6,624(s5)
    73a0:	00194080 	sll	t0,t9,0x2
    73a4:	00280821 	addu	at,at,t0
    73a8:	c4320000 	lwc1	$f18,0(at)
    73ac:	3c010000 	lui	at,0x0
    73b0:	c42a0000 	lwc1	$f10,0(at)
    73b4:	46149102 	mul.s	$f4,$f18,$f20
    73b8:	4405d000 	mfc1	a1,$f26
    73bc:	460a0400 	add.s	$f16,$f0,$f10
    73c0:	02c02025 	move	a0,s6
    73c4:	44078000 	mfc1	a3,$f16
    73c8:	46062200 	add.s	$f8,$f4,$f6
    73cc:	44064000 	mfc1	a2,$f8
    73d0:	0c000000 	jal	0 <func_808D6870>
    73d4:	00000000 	nop
    73d8:	86a2019c 	lh	v0,412(s5)
    73dc:	5040004d 	beqzl	v0,7514 <BossGanon_Update+0x7b4>
    73e0:	8ed01c4c 	lw	s0,7244(s6)
    73e4:	92a9019e 	lbu	t1,414(s5)
    73e8:	29210004 	slti	at,t1,4
    73ec:	50200049 	beqzl	at,7514 <BossGanon_Update+0x7b4>
    73f0:	8ed01c4c 	lw	s0,7244(s6)
    73f4:	92aa019a 	lbu	t2,410(s5)
    73f8:	24010014 	li	at,20
    73fc:	55400025 	bnezl	t2,7494 <BossGanon_Update+0x734>
    7400:	2841001e 	slti	at,v0,30
    7404:	14410022 	bne	v0,at,7490 <BossGanon_Update+0x730>
    7408:	240b0001 	li	t3,1
    740c:	3c01c334 	lui	at,0xc334
    7410:	4481b000 	mtc1	at,$f22
    7414:	a2ab019a 	sb	t3,410(s5)
    7418:	3c0142f0 	lui	at,0x42f0
    741c:	4481a000 	mtc1	at,$f20
    7420:	e7b800d0 	swc1	$f24,208(sp)
    7424:	00009025 	move	s2,zero
    7428:	27b100cc 	addiu	s1,sp,204
    742c:	e7b600cc 	swc1	$f22,204(sp)
    7430:	00008025 	move	s0,zero
    7434:	e7b600d4 	swc1	$f22,212(sp)
    7438:	02a02025 	move	a0,s5
    743c:	02c02825 	move	a1,s6
    7440:	0c000000 	jal	0 <func_808D6870>
    7444:	02203025 	move	a2,s1
    7448:	c7b200d4 	lwc1	$f18,212(sp)
    744c:	26100001 	addiu	s0,s0,1
    7450:	00108400 	sll	s0,s0,0x10
    7454:	46149100 	add.s	$f4,$f18,$f20
    7458:	00108403 	sra	s0,s0,0x10
    745c:	2a010004 	slti	at,s0,4
    7460:	1420fff5 	bnez	at,7438 <BossGanon_Update+0x6d8>
    7464:	e7a400d4 	swc1	$f4,212(sp)
    7468:	c7a600cc 	lwc1	$f6,204(sp)
    746c:	26520001 	addiu	s2,s2,1
    7470:	00129400 	sll	s2,s2,0x10
    7474:	46143200 	add.s	$f8,$f6,$f20
    7478:	00129403 	sra	s2,s2,0x10
    747c:	2a410004 	slti	at,s2,4
    7480:	1420ffeb 	bnez	at,7430 <BossGanon_Update+0x6d0>
    7484:	e7a800cc 	swc1	$f8,204(sp)
    7488:	10000022 	b	7514 <BossGanon_Update+0x7b4>
    748c:	8ed01c4c 	lw	s0,7244(s6)
    7490:	2841001e 	slti	at,v0,30
    7494:	5020001f 	beqzl	at,7514 <BossGanon_Update+0x7b4>
    7498:	8ed01c4c 	lw	s0,7244(s6)
    749c:	e7b800d8 	swc1	$f24,216(sp)
    74a0:	e7b800dc 	swc1	$f24,220(sp)
    74a4:	86ac019c 	lh	t4,412(s5)
    74a8:	3c0141f0 	lui	at,0x41f0
    74ac:	44815000 	mtc1	at,$f10
    74b0:	448c8000 	mtc1	t4,$f16
    74b4:	3c014170 	lui	at,0x4170
    74b8:	44813000 	mtc1	at,$f6
    74bc:	468084a0 	cvt.s.w	$f18,$f16
    74c0:	3c010000 	lui	at,0x0
    74c4:	c42c0000 	lwc1	$f12,0(at)
    74c8:	46125101 	sub.s	$f4,$f10,$f18
    74cc:	46062202 	mul.s	$f8,$f4,$f6
    74d0:	0c000000 	jal	0 <func_808D6870>
    74d4:	e7a800e0 	swc1	$f8,224(sp)
    74d8:	46000306 	mov.s	$f12,$f0
    74dc:	0c000000 	jal	0 <func_808D6870>
    74e0:	00002825 	move	a1,zero
    74e4:	27b100cc 	addiu	s1,sp,204
    74e8:	02202825 	move	a1,s1
    74ec:	0c000000 	jal	0 <func_808D6870>
    74f0:	27a400d8 	addiu	a0,sp,216
    74f4:	02a02025 	move	a0,s5
    74f8:	02c02825 	move	a1,s6
    74fc:	0c000000 	jal	0 <func_808D6870>
    7500:	02203025 	move	a2,s1
    7504:	92ad019e 	lbu	t5,414(s5)
    7508:	01a27021 	addu	t6,t5,v0
    750c:	a2ae019e 	sb	t6,414(s5)
    7510:	8ed01c4c 	lw	s0,7244(s6)
    7514:	3c010000 	lui	at,0x0
    7518:	12000031 	beqz	s0,75e0 <BossGanon_Update+0x880>
    751c:	00000000 	nop
    7520:	c4360000 	lwc1	$f22,0(at)
    7524:	3c014270 	lui	at,0x4270
    7528:	4481a000 	mtc1	at,$f20
    752c:	27b400a4 	addiu	s4,sp,164
    7530:	27b300b0 	addiu	s3,sp,176
    7534:	27b200bc 	addiu	s2,sp,188
    7538:	860f001c 	lh	t7,28(s0)
    753c:	24010001 	li	at,1
    7540:	51e10004 	beql	t7,at,7554 <BossGanon_Update+0x7f4>
    7544:	00008825 	move	s1,zero
    7548:	10000023 	b	75d8 <BossGanon_Update+0x878>
    754c:	8e100124 	lw	s0,292(s0)
    7550:	00008825 	move	s1,zero
    7554:	44918000 	mtc1	s1,$f16
    7558:	e7b800bc 	swc1	$f24,188(sp)
    755c:	e7b800c0 	swc1	$f24,192(sp)
    7560:	468082a0 	cvt.s.w	$f10,$f16
    7564:	e7b400c4 	swc1	$f20,196(sp)
    7568:	00002825 	move	a1,zero
    756c:	46165302 	mul.s	$f12,$f10,$f22
    7570:	0c000000 	jal	0 <func_808D6870>
    7574:	00000000 	nop
    7578:	02402025 	move	a0,s2
    757c:	0c000000 	jal	0 <func_808D6870>
    7580:	02602825 	move	a1,s3
    7584:	c6120024 	lwc1	$f18,36(s0)
    7588:	c7a400b0 	lwc1	$f4,176(sp)
    758c:	c7aa00b8 	lwc1	$f10,184(sp)
    7590:	02a02025 	move	a0,s5
    7594:	46049180 	add.s	$f6,$f18,$f4
    7598:	02c02825 	move	a1,s6
    759c:	02803025 	move	a2,s4
    75a0:	e7a600a4 	swc1	$f6,164(sp)
    75a4:	c6080028 	lwc1	$f8,40(s0)
    75a8:	e7a800a8 	swc1	$f8,168(sp)
    75ac:	c610002c 	lwc1	$f16,44(s0)
    75b0:	460a8480 	add.s	$f18,$f16,$f10
    75b4:	0c000000 	jal	0 <func_808D6870>
    75b8:	e7b200ac 	swc1	$f18,172(sp)
    75bc:	26310001 	addiu	s1,s1,1
    75c0:	00118c00 	sll	s1,s1,0x10
    75c4:	00118c03 	sra	s1,s1,0x10
    75c8:	2a210008 	slti	at,s1,8
    75cc:	5420ffe2 	bnezl	at,7558 <BossGanon_Update+0x7f8>
    75d0:	44918000 	mtc1	s1,$f16
    75d4:	8e100124 	lw	s0,292(s0)
    75d8:	5600ffd8 	bnezl	s0,753c <BossGanon_Update+0x7dc>
    75dc:	860f001c 	lh	t7,28(s0)
    75e0:	0c000000 	jal	0 <func_808D6870>
    75e4:	02c02025 	move	a0,s6
    75e8:	8ec21c64 	lw	v0,7268(s6)
    75ec:	3c010001 	lui	at,0x1
    75f0:	24030106 	li	v1,262
    75f4:	1040000e 	beqz	v0,7630 <BossGanon_Update+0x8d0>
    75f8:	00360821 	addu	at,at,s6
    75fc:	84580000 	lh	t8,0(v0)
    7600:	50780004 	beql	v1,t8,7614 <BossGanon_Update+0x8b4>
    7604:	9059016e 	lbu	t9,366(v0)
    7608:	10000007 	b	7628 <BossGanon_Update+0x8c8>
    760c:	8c420124 	lw	v0,292(v0)
    7610:	9059016e 	lbu	t9,366(v0)
    7614:	13200003 	beqz	t9,7624 <BossGanon_Update+0x8c4>
    7618:	24080001 	li	t0,1
    761c:	10000004 	b	7630 <BossGanon_Update+0x8d0>
    7620:	a2a801a0 	sb	t0,416(s5)
    7624:	8c420124 	lw	v0,292(v0)
    7628:	5440fff5 	bnezl	v0,7600 <BossGanon_Update+0x8a0>
    762c:	84580000 	lh	t8,0(v0)
    7630:	a0200ae3 	sb	zero,2787(at)
    7634:	3c010001 	lui	at,0x1
    7638:	00360821 	addu	at,at,s6
    763c:	a0200ae2 	sb	zero,2786(at)
    7640:	3c010001 	lui	at,0x1
    7644:	24030002 	li	v1,2
    7648:	00360821 	addu	at,at,s6
    764c:	a0230b00 	sb	v1,2816(at)
    7650:	82a201a0 	lb	v0,416(s5)
    7654:	28410042 	slti	at,v0,66
    7658:	14200006 	bnez	at,7674 <BossGanon_Update+0x914>
    765c:	24490001 	addiu	t1,v0,1
    7660:	2401004b 	li	at,75
    7664:	10410080 	beq	v0,at,7868 <L808DE0B8+0x20>
    7668:	240a0004 	li	t2,4
    766c:	10000135 	b	7b44 <L808DE3B0+0x4>
    7670:	c6a00714 	lwc1	$f0,1812(s5)
    7674:	28410024 	slti	at,v0,36
    7678:	14200005 	bnez	at,7690 <BossGanon_Update+0x930>
    767c:	24010041 	li	at,65
    7680:	10410061 	beq	v0,at,7808 <L808DE058+0x20>
    7684:	24190003 	li	t9,3
    7688:	1000012e 	b	7b44 <L808DE3B0+0x4>
    768c:	c6a00714 	lwc1	$f0,1812(s5)
    7690:	2d210025 	sltiu	at,t1,37
    7694:	1020012a 	beqz	at,7b40 <L808DE3B0>
    7698:	00094880 	sll	t1,t1,0x2
    769c:	3c010000 	lui	at,0x0
    76a0:	00290821 	addu	at,at,t1
    76a4:	8c290000 	lw	t1,0(at)
    76a8:	01200008 	jr	t1
    76ac:	00000000 	nop

000076b0 <L808DDF20>:
    76b0:	3c010001 	lui	at,0x1
    76b4:	34210afc 	ori	at,at,0xafc
    76b8:	4405c000 	mfc1	a1,$f24
    76bc:	4406d000 	mfc1	a2,$f26
    76c0:	3c073ca3 	lui	a3,0x3ca3
    76c4:	34e7d70a 	ori	a3,a3,0xd70a
    76c8:	0c000000 	jal	0 <func_808D6870>
    76cc:	02c12021 	addu	a0,s6,at
    76d0:	1000011c 	b	7b44 <L808DE3B0+0x4>
    76d4:	c6a00714 	lwc1	$f0,1812(s5)

000076d8 <L808DDF48>:
    76d8:	3c010001 	lui	at,0x1
    76dc:	00360821 	addu	at,at,s6
    76e0:	240a0001 	li	t2,1
    76e4:	a02a0ae1 	sb	t2,2785(at)
    76e8:	3c010001 	lui	at,0x1
    76ec:	34210afc 	ori	at,at,0xafc
    76f0:	4405d000 	mfc1	a1,$f26
    76f4:	4406d000 	mfc1	a2,$f26
    76f8:	3c073dcc 	lui	a3,0x3dcc
    76fc:	34e7cccd 	ori	a3,a3,0xcccd
    7700:	0c000000 	jal	0 <func_808D6870>
    7704:	02c12021 	addu	a0,s6,at
    7708:	1000010e 	b	7b44 <L808DE3B0+0x4>
    770c:	c6a00714 	lwc1	$f0,1812(s5)

00007710 <L808DDF80>:
    7710:	3c010001 	lui	at,0x1
    7714:	00360821 	addu	at,at,s6
    7718:	240b0001 	li	t3,1
    771c:	a02b0ae1 	sb	t3,2785(at)
    7720:	3c010001 	lui	at,0x1
    7724:	34210afc 	ori	at,at,0xafc
    7728:	4405d000 	mfc1	a1,$f26
    772c:	4406d000 	mfc1	a2,$f26
    7730:	3c073ca3 	lui	a3,0x3ca3
    7734:	34e7d70a 	ori	a3,a3,0xd70a
    7738:	0c000000 	jal	0 <func_808D6870>
    773c:	02c12021 	addu	a0,s6,at
    7740:	10000100 	b	7b44 <L808DE3B0+0x4>
    7744:	c6a00714 	lwc1	$f0,1812(s5)

00007748 <L808DDFB8>:
    7748:	3c010001 	lui	at,0x1
    774c:	00360821 	addu	at,at,s6
    7750:	240c0003 	li	t4,3
    7754:	a02c0ae1 	sb	t4,2785(at)
    7758:	3c010001 	lui	at,0x1
    775c:	00360821 	addu	at,at,s6
    7760:	100000f7 	b	7b40 <L808DE3B0>
    7764:	e43a0afc 	swc1	$f26,2812(at)

00007768 <L808DDFD8>:
    7768:	3c010001 	lui	at,0x1
    776c:	00360821 	addu	at,at,s6
    7770:	a0200ae1 	sb	zero,2785(at)
    7774:	3c010001 	lui	at,0x1
    7778:	00360821 	addu	at,at,s6
    777c:	100000f0 	b	7b40 <L808DE3B0>
    7780:	e43a0afc 	swc1	$f26,2812(at)

00007784 <L808DDFF4>:
    7784:	3c010001 	lui	at,0x1
    7788:	00360821 	addu	at,at,s6
    778c:	240d0004 	li	t5,4
    7790:	a02d0ae1 	sb	t5,2785(at)
    7794:	3c010001 	lui	at,0x1
    7798:	00360821 	addu	at,at,s6
    779c:	100000e8 	b	7b40 <L808DE3B0>
    77a0:	e43a0afc 	swc1	$f26,2812(at)

000077a4 <L808DE014>:
    77a4:	3c010001 	lui	at,0x1
    77a8:	00360821 	addu	at,at,s6
    77ac:	240e0005 	li	t6,5
    77b0:	a02e0ae2 	sb	t6,2786(at)
    77b4:	3c010001 	lui	at,0x1
    77b8:	00360821 	addu	at,at,s6
    77bc:	240f0003 	li	t7,3
    77c0:	a02f0ae1 	sb	t7,2785(at)
    77c4:	3c010001 	lui	at,0x1
    77c8:	34210afc 	ori	at,at,0xafc
    77cc:	4405d000 	mfc1	a1,$f26
    77d0:	3c063d99 	lui	a2,0x3d99
    77d4:	34c6999a 	ori	a2,a2,0x999a
    77d8:	0c000000 	jal	0 <func_808D6870>
    77dc:	02c12021 	addu	a0,s6,at
    77e0:	100000d8 	b	7b44 <L808DE3B0+0x4>
    77e4:	c6a00714 	lwc1	$f0,1812(s5)

000077e8 <L808DE058>:
    77e8:	3c010001 	lui	at,0x1
    77ec:	00360821 	addu	at,at,s6
    77f0:	24180005 	li	t8,5
    77f4:	a0380ae2 	sb	t8,2786(at)
    77f8:	3c010001 	lui	at,0x1
    77fc:	00360821 	addu	at,at,s6
    7800:	100000cf 	b	7b40 <L808DE3B0>
    7804:	e4380afc 	swc1	$f24,2812(at)
    7808:	3c010001 	lui	at,0x1
    780c:	00360821 	addu	at,at,s6
    7810:	a0390ae2 	sb	t9,2786(at)
    7814:	3c010001 	lui	at,0x1
    7818:	00360821 	addu	at,at,s6
    781c:	24080006 	li	t0,6
    7820:	a0280ae1 	sb	t0,2785(at)
    7824:	3c010001 	lui	at,0x1
    7828:	34210afc 	ori	at,at,0xafc
    782c:	4405d000 	mfc1	a1,$f26
    7830:	3c063d4c 	lui	a2,0x3d4c
    7834:	34c6cccd 	ori	a2,a2,0xcccd
    7838:	0c000000 	jal	0 <func_808D6870>
    783c:	02c12021 	addu	a0,s6,at
    7840:	100000c0 	b	7b44 <L808DE3B0+0x4>
    7844:	c6a00714 	lwc1	$f0,1812(s5)

00007848 <L808DE0B8>:
    7848:	3c010001 	lui	at,0x1
    784c:	00360821 	addu	at,at,s6
    7850:	24090007 	li	t1,7
    7854:	a0290ae2 	sb	t1,2786(at)
    7858:	3c010001 	lui	at,0x1
    785c:	00360821 	addu	at,at,s6
    7860:	100000b7 	b	7b40 <L808DE3B0>
    7864:	e4380afc 	swc1	$f24,2812(at)
    7868:	3c010001 	lui	at,0x1
    786c:	00360821 	addu	at,at,s6
    7870:	a02a0ae2 	sb	t2,2786(at)
    7874:	3c010001 	lui	at,0x1
    7878:	00360821 	addu	at,at,s6
    787c:	240b0008 	li	t3,8
    7880:	a02b0ae1 	sb	t3,2785(at)
    7884:	3c010001 	lui	at,0x1
    7888:	34210afc 	ori	at,at,0xafc
    788c:	4405d000 	mfc1	a1,$f26
    7890:	3c063d4c 	lui	a2,0x3d4c
    7894:	34c6cccd 	ori	a2,a2,0xcccd
    7898:	0c000000 	jal	0 <func_808D6870>
    789c:	02c12021 	addu	a0,s6,at
    78a0:	100000a8 	b	7b44 <L808DE3B0+0x4>
    78a4:	c6a00714 	lwc1	$f0,1812(s5)

000078a8 <L808DE118>:
    78a8:	3c010001 	lui	at,0x1
    78ac:	00360821 	addu	at,at,s6
    78b0:	240c0003 	li	t4,3
    78b4:	a02c0ae2 	sb	t4,2786(at)
    78b8:	3c010001 	lui	at,0x1
    78bc:	00360821 	addu	at,at,s6
    78c0:	240d0009 	li	t5,9
    78c4:	a02d0ae1 	sb	t5,2785(at)
    78c8:	3c010001 	lui	at,0x1
    78cc:	34210afc 	ori	at,at,0xafc
    78d0:	4405d000 	mfc1	a1,$f26
    78d4:	4406d000 	mfc1	a2,$f26
    78d8:	3c073d4c 	lui	a3,0x3d4c
    78dc:	34e7cccd 	ori	a3,a3,0xcccd
    78e0:	0c000000 	jal	0 <func_808D6870>
    78e4:	02c12021 	addu	a0,s6,at
    78e8:	10000096 	b	7b44 <L808DE3B0+0x4>
    78ec:	c6a00714 	lwc1	$f0,1812(s5)

000078f0 <L808DE160>:
    78f0:	3c010001 	lui	at,0x1
    78f4:	00360821 	addu	at,at,s6
    78f8:	240e0003 	li	t6,3
    78fc:	a02e0ae2 	sb	t6,2786(at)
    7900:	3c010001 	lui	at,0x1
    7904:	00360821 	addu	at,at,s6
    7908:	240f000a 	li	t7,10
    790c:	a02f0ae1 	sb	t7,2785(at)
    7910:	3c010001 	lui	at,0x1
    7914:	34210afc 	ori	at,at,0xafc
    7918:	4405d000 	mfc1	a1,$f26
    791c:	3c063d4c 	lui	a2,0x3d4c
    7920:	34c6cccd 	ori	a2,a2,0xcccd
    7924:	0c000000 	jal	0 <func_808D6870>
    7928:	02c12021 	addu	a0,s6,at
    792c:	10000085 	b	7b44 <L808DE3B0+0x4>
    7930:	c6a00714 	lwc1	$f0,1812(s5)

00007934 <L808DE1A4>:
    7934:	3c010001 	lui	at,0x1
    7938:	00360821 	addu	at,at,s6
    793c:	24180003 	li	t8,3
    7940:	a0380ae2 	sb	t8,2786(at)
    7944:	3c010001 	lui	at,0x1
    7948:	00360821 	addu	at,at,s6
    794c:	2419000b 	li	t9,11
    7950:	a0390ae1 	sb	t9,2785(at)
    7954:	3c010001 	lui	at,0x1
    7958:	34210afc 	ori	at,at,0xafc
    795c:	4405d000 	mfc1	a1,$f26
    7960:	4406d000 	mfc1	a2,$f26
    7964:	3c073d4c 	lui	a3,0x3d4c
    7968:	34e7cccd 	ori	a3,a3,0xcccd
    796c:	0c000000 	jal	0 <func_808D6870>
    7970:	02c12021 	addu	a0,s6,at
    7974:	10000072 	b	7b40 <L808DE3B0>
    7978:	a6a001a4 	sh	zero,420(s5)

0000797c <L808DE1EC>:
    797c:	3c010001 	lui	at,0x1
    7980:	00360821 	addu	at,at,s6
    7984:	2408000c 	li	t0,12
    7988:	a0280ae2 	sb	t0,2786(at)
    798c:	3c010001 	lui	at,0x1
    7990:	00360821 	addu	at,at,s6
    7994:	2409000b 	li	t1,11
    7998:	a0290ae1 	sb	t1,2785(at)
    799c:	86a401a4 	lh	a0,420(s5)
    79a0:	00800821 	move	at,a0
    79a4:	00042080 	sll	a0,a0,0x2
    79a8:	00812023 	subu	a0,a0,at
    79ac:	000422c0 	sll	a0,a0,0xb
    79b0:	00042400 	sll	a0,a0,0x10
    79b4:	0c000000 	jal	0 <func_808D6870>
    79b8:	00042403 	sra	a0,a0,0x10
    79bc:	3c010001 	lui	at,0x1
    79c0:	34210afc 	ori	at,at,0xafc
    79c4:	02c12021 	addu	a0,s6,at
    79c8:	3c013f00 	lui	at,0x3f00
    79cc:	44812000 	mtc1	at,$f4
    79d0:	44814000 	mtc1	at,$f8
    79d4:	4406d000 	mfc1	a2,$f26
    79d8:	46040182 	mul.s	$f6,$f0,$f4
    79dc:	4407d000 	mfc1	a3,$f26
    79e0:	46083400 	add.s	$f16,$f6,$f8
    79e4:	44058000 	mfc1	a1,$f16
    79e8:	0c000000 	jal	0 <func_808D6870>
    79ec:	00000000 	nop
    79f0:	10000054 	b	7b44 <L808DE3B0+0x4>
    79f4:	c6a00714 	lwc1	$f0,1812(s5)

000079f8 <L808DE268>:
    79f8:	3c010001 	lui	at,0x1
    79fc:	00360821 	addu	at,at,s6
    7a00:	240a000c 	li	t2,12
    7a04:	a02a0ae2 	sb	t2,2786(at)
    7a08:	3c010001 	lui	at,0x1
    7a0c:	00360821 	addu	at,at,s6
    7a10:	240b0003 	li	t3,3
    7a14:	a02b0ae1 	sb	t3,2785(at)
    7a18:	3c010001 	lui	at,0x1
    7a1c:	34210afc 	ori	at,at,0xafc
    7a20:	4405d000 	mfc1	a1,$f26
    7a24:	4406d000 	mfc1	a2,$f26
    7a28:	3c073d4c 	lui	a3,0x3d4c
    7a2c:	34e7cccd 	ori	a3,a3,0xcccd
    7a30:	0c000000 	jal	0 <func_808D6870>
    7a34:	02c12021 	addu	a0,s6,at
    7a38:	10000042 	b	7b44 <L808DE3B0+0x4>
    7a3c:	c6a00714 	lwc1	$f0,1812(s5)

00007a40 <L808DE2B0>:
    7a40:	3c010001 	lui	at,0x1
    7a44:	00360821 	addu	at,at,s6
    7a48:	240c000d 	li	t4,13
    7a4c:	a02c0ae1 	sb	t4,2785(at)
    7a50:	3c010001 	lui	at,0x1
    7a54:	34210afc 	ori	at,at,0xafc
    7a58:	4405d000 	mfc1	a1,$f26
    7a5c:	4406d000 	mfc1	a2,$f26
    7a60:	3c073ccc 	lui	a3,0x3ccc
    7a64:	34e7cccd 	ori	a3,a3,0xcccd
    7a68:	0c000000 	jal	0 <func_808D6870>
    7a6c:	02c12021 	addu	a0,s6,at
    7a70:	10000034 	b	7b44 <L808DE3B0+0x4>
    7a74:	c6a00714 	lwc1	$f0,1812(s5)

00007a78 <L808DE2E8>:
    7a78:	3c010001 	lui	at,0x1
    7a7c:	00360821 	addu	at,at,s6
    7a80:	240d000e 	li	t5,14
    7a84:	a02d0ae1 	sb	t5,2785(at)
    7a88:	3c010001 	lui	at,0x1
    7a8c:	00360821 	addu	at,at,s6
    7a90:	1000002b 	b	7b40 <L808DE3B0>
    7a94:	e43a0afc 	swc1	$f26,2812(at)

00007a98 <L808DE308>:
    7a98:	3c010001 	lui	at,0x1
    7a9c:	00360821 	addu	at,at,s6
    7aa0:	240e000e 	li	t6,14
    7aa4:	a02e0ae2 	sb	t6,2786(at)
    7aa8:	3c010001 	lui	at,0x1
    7aac:	00360821 	addu	at,at,s6
    7ab0:	240f000f 	li	t7,15
    7ab4:	a02f0ae1 	sb	t7,2785(at)
    7ab8:	3c010001 	lui	at,0x1
    7abc:	34210afc 	ori	at,at,0xafc
    7ac0:	4405d000 	mfc1	a1,$f26
    7ac4:	4406d000 	mfc1	a2,$f26
    7ac8:	3c073c23 	lui	a3,0x3c23
    7acc:	34e7d70a 	ori	a3,a3,0xd70a
    7ad0:	0c000000 	jal	0 <func_808D6870>
    7ad4:	02c12021 	addu	a0,s6,at
    7ad8:	1000001a 	b	7b44 <L808DE3B0+0x4>
    7adc:	c6a00714 	lwc1	$f0,1812(s5)

00007ae0 <L808DE350>:
    7ae0:	3c010001 	lui	at,0x1
    7ae4:	00360821 	addu	at,at,s6
    7ae8:	24180010 	li	t8,16
    7aec:	a0380ae2 	sb	t8,2786(at)
    7af0:	3c010001 	lui	at,0x1
    7af4:	00360821 	addu	at,at,s6
    7af8:	2419000f 	li	t9,15
    7afc:	a0390ae1 	sb	t9,2785(at)
    7b00:	3c010001 	lui	at,0x1
    7b04:	34210afc 	ori	at,at,0xafc
    7b08:	4405d000 	mfc1	a1,$f26
    7b0c:	3c063d4c 	lui	a2,0x3d4c
    7b10:	34c6cccd 	ori	a2,a2,0xcccd
    7b14:	0c000000 	jal	0 <func_808D6870>
    7b18:	02c12021 	addu	a0,s6,at
    7b1c:	10000009 	b	7b44 <L808DE3B0+0x4>
    7b20:	c6a00714 	lwc1	$f0,1812(s5)

00007b24 <L808DE394>:
    7b24:	3c010001 	lui	at,0x1
    7b28:	00360821 	addu	at,at,s6
    7b2c:	a0230ae2 	sb	v1,2786(at)
    7b30:	3c010001 	lui	at,0x1
    7b34:	00360821 	addu	at,at,s6
    7b38:	24080001 	li	t0,1
    7b3c:	a0280ae1 	sb	t0,2785(at)

00007b40 <L808DE3B0>:
    7b40:	c6a00714 	lwc1	$f0,1812(s5)
    7b44:	44805000 	mtc1	zero,$f10
    7b48:	a2a001a0 	sb	zero,416(s5)
    7b4c:	240a0001 	li	t2,1
    7b50:	46005032 	c.eq.s	$f10,$f0
    7b54:	240300ff 	li	v1,255
    7b58:	240d0001 	li	t5,1
    7b5c:	3c063e99 	lui	a2,0x3e99
    7b60:	4501002a 	bc1t	7c0c <L808DE3B0+0xcc>
    7b64:	26a40670 	addiu	a0,s5,1648
    7b68:	4449f800 	cfc1	t1,$31
    7b6c:	44caf800 	ctc1	t2,$31
    7b70:	3c010001 	lui	at,0x1
    7b74:	02c11021 	addu	v0,s6,at
    7b78:	460004a4 	cvt.w.s	$f18,$f0
    7b7c:	3c014f00 	lui	at,0x4f00
    7b80:	444af800 	cfc1	t2,$31
    7b84:	00000000 	nop
    7b88:	314a0078 	andi	t2,t2,0x78
    7b8c:	51400013 	beqzl	t2,7bdc <L808DE3B0+0x9c>
    7b90:	440a9000 	mfc1	t2,$f18
    7b94:	44819000 	mtc1	at,$f18
    7b98:	240a0001 	li	t2,1
    7b9c:	46120481 	sub.s	$f18,$f0,$f18
    7ba0:	44caf800 	ctc1	t2,$31
    7ba4:	00000000 	nop
    7ba8:	460094a4 	cvt.w.s	$f18,$f18
    7bac:	444af800 	cfc1	t2,$31
    7bb0:	00000000 	nop
    7bb4:	314a0078 	andi	t2,t2,0x78
    7bb8:	15400005 	bnez	t2,7bd0 <L808DE3B0+0x90>
    7bbc:	00000000 	nop
    7bc0:	440a9000 	mfc1	t2,$f18
    7bc4:	3c018000 	lui	at,0x8000
    7bc8:	10000007 	b	7be8 <L808DE3B0+0xa8>
    7bcc:	01415025 	or	t2,t2,at
    7bd0:	10000005 	b	7be8 <L808DE3B0+0xa8>
    7bd4:	240affff 	li	t2,-1
    7bd8:	440a9000 	mfc1	t2,$f18
    7bdc:	00000000 	nop
    7be0:	0540fffb 	bltz	t2,7bd0 <L808DE3B0+0x90>
    7be4:	00000000 	nop
    7be8:	3c010001 	lui	at,0x1
    7bec:	44c9f800 	ctc1	t1,$31
    7bf0:	a04a0b09 	sb	t2,2825(v0)
    7bf4:	a0430b08 	sb	v1,2824(v0)
    7bf8:	a0430b07 	sb	v1,2823(v0)
    7bfc:	a0430b06 	sb	v1,2822(v0)
    7c00:	00360821 	addu	at,at,s6
    7c04:	1000001e 	b	7c80 <L808DE3B0+0x140>
    7c08:	a02d0b05 	sb	t5,2821(at)
    7c0c:	86ae01c4 	lh	t6,452(s5)
    7c10:	3c010001 	lui	at,0x1
    7c14:	02c11021 	addu	v0,s6,at
    7c18:	11c00017 	beqz	t6,7c78 <L808DE3B0+0x138>
    7c1c:	00360821 	addu	at,at,s6
    7c20:	3c010001 	lui	at,0x1
    7c24:	00360821 	addu	at,at,s6
    7c28:	240f0001 	li	t7,1
    7c2c:	a02f0b05 	sb	t7,2821(at)
    7c30:	3c010001 	lui	at,0x1
    7c34:	02c11021 	addu	v0,s6,at
    7c38:	240300ff 	li	v1,255
    7c3c:	a0430b08 	sb	v1,2824(v0)
    7c40:	a0430b07 	sb	v1,2823(v0)
    7c44:	a0430b06 	sb	v1,2822(v0)
    7c48:	86b901c4 	lh	t9,452(s5)
    7c4c:	24090064 	li	t1,100
    7c50:	33280001 	andi	t0,t9,0x1
    7c54:	51000004 	beqzl	t0,7c68 <L808DE3B0+0x128>
    7c58:	a0400b09 	sb	zero,2825(v0)
    7c5c:	10000002 	b	7c68 <L808DE3B0+0x128>
    7c60:	a0490b09 	sb	t1,2825(v0)
    7c64:	a0400b09 	sb	zero,2825(v0)
    7c68:	86aa01c4 	lh	t2,452(s5)
    7c6c:	254bffff 	addiu	t3,t2,-1
    7c70:	10000003 	b	7c80 <L808DE3B0+0x140>
    7c74:	a6ab01c4 	sh	t3,452(s5)
    7c78:	a0400b09 	sb	zero,2825(v0)
    7c7c:	a0200b05 	sb	zero,2821(at)
    7c80:	86a3066e 	lh	v1,1646(s5)
    7c84:	34c6999a 	ori	a2,a2,0x999a
    7c88:	3c074120 	lui	a3,0x4120
    7c8c:	50600019 	beqzl	v1,7cf4 <L808DE3B0+0x1b4>
    7c90:	4405d000 	mfc1	a1,$f26
    7c94:	92a2066c 	lbu	v0,1644(s5)
    7c98:	246dffff 	addiu	t5,v1,-1
    7c9c:	24010001 	li	at,1
    7ca0:	14410005 	bne	v0,at,7cb8 <L808DE3B0+0x178>
    7ca4:	a6ad066e 	sh	t5,1646(s5)
    7ca8:	3c014220 	lui	at,0x4220
    7cac:	44810000 	mtc1	at,$f0
    7cb0:	1000000b 	b	7ce0 <L808DE3B0+0x1a0>
    7cb4:	44050000 	mfc1	a1,$f0
    7cb8:	24010004 	li	at,4
    7cbc:	14410004 	bne	v0,at,7cd0 <L808DE3B0+0x190>
    7cc0:	3c0141c8 	lui	at,0x41c8
    7cc4:	44810000 	mtc1	at,$f0
    7cc8:	10000005 	b	7ce0 <L808DE3B0+0x1a0>
    7ccc:	44050000 	mfc1	a1,$f0
    7cd0:	3c014120 	lui	at,0x4120
    7cd4:	44810000 	mtc1	at,$f0
    7cd8:	00000000 	nop
    7cdc:	44050000 	mfc1	a1,$f0
    7ce0:	0c000000 	jal	0 <func_808D6870>
    7ce4:	26a40670 	addiu	a0,s5,1648
    7ce8:	1000000b 	b	7d18 <L808DE3B0+0x1d8>
    7cec:	92ae066c 	lbu	t6,1644(s5)
    7cf0:	4405d000 	mfc1	a1,$f26
    7cf4:	0c000000 	jal	0 <func_808D6870>
    7cf8:	3c0640a0 	lui	a2,0x40a0
    7cfc:	c6a40670 	lwc1	$f4,1648(s5)
    7d00:	4604c032 	c.eq.s	$f24,$f4
    7d04:	00000000 	nop
    7d08:	45020003 	bc1fl	7d18 <L808DE3B0+0x1d8>
    7d0c:	92ae066c 	lbu	t6,1644(s5)
    7d10:	a2a0066c 	sb	zero,1644(s5)
    7d14:	92ae066c 	lbu	t6,1644(s5)
    7d18:	240f0001 	li	t7,1
    7d1c:	3c010000 	lui	at,0x0
    7d20:	11c0001c 	beqz	t6,7d94 <L808DE3B0+0x254>
    7d24:	00000000 	nop
    7d28:	3c010000 	lui	at,0x0
    7d2c:	a02f0000 	sb	t7,0(at)
    7d30:	92b8066c 	lbu	t8,1644(s5)
    7d34:	24010001 	li	at,1
    7d38:	5701000a 	bnel	t8,at,7d64 <L808DE3B0+0x224>
    7d3c:	c6a60670 	lwc1	$f6,1648(s5)
    7d40:	8ea90024 	lw	t1,36(s5)
    7d44:	3c190000 	lui	t9,0x0
    7d48:	27390000 	addiu	t9,t9,0
    7d4c:	af290000 	sw	t1,0(t9)
    7d50:	8ea80028 	lw	t0,40(s5)
    7d54:	af280004 	sw	t0,4(t9)
    7d58:	8ea9002c 	lw	t1,44(s5)
    7d5c:	af290008 	sw	t1,8(t9)
    7d60:	c6a60670 	lwc1	$f6,1648(s5)
    7d64:	3c010000 	lui	at,0x0
    7d68:	4600320d 	trunc.w.s	$f8,$f6
    7d6c:	440b4000 	mfc1	t3,$f8
    7d70:	00000000 	nop
    7d74:	a42b0000 	sh	t3,0(at)
    7d78:	3c014120 	lui	at,0x4120
    7d7c:	44818000 	mtc1	at,$f16
    7d80:	3c010000 	lui	at,0x0
    7d84:	e4300000 	swc1	$f16,0(at)
    7d88:	3c010000 	lui	at,0x0
    7d8c:	10000002 	b	7d98 <L808DE3B0+0x258>
    7d90:	a4200000 	sh	zero,0(at)
    7d94:	a0200000 	sb	zero,0(at)
    7d98:	92a20274 	lbu	v0,628(s5)
    7d9c:	3c014248 	lui	at,0x4248
    7da0:	1040003a 	beqz	v0,7e8c <L808DE3B0+0x34c>
    7da4:	2451ffff 	addiu	s1,v0,-1
    7da8:	c6b202f0 	lwc1	$f18,752(s5)
    7dac:	44812000 	mtc1	at,$f4
    7db0:	3c0141f0 	lui	at,0x41f0
    7db4:	c6aa02ec 	lwc1	$f10,748(s5)
    7db8:	46049180 	add.s	$f6,$f18,$f4
    7dbc:	44814000 	mtc1	at,$f8
    7dc0:	00118c00 	sll	s1,s1,0x10
    7dc4:	00118c03 	sra	s1,s1,0x10
    7dc8:	44919000 	mtc1	s1,$f18
    7dcc:	46083400 	add.s	$f16,$f6,$f8
    7dd0:	e6aa0278 	swc1	$f10,632(s5)
    7dd4:	c6aa02f4 	lwc1	$f10,756(s5)
    7dd8:	46809520 	cvt.s.w	$f20,$f18
    7ddc:	e6b0027c 	swc1	$f16,636(s5)
    7de0:	3c010000 	lui	at,0x0
    7de4:	e6aa0280 	swc1	$f10,640(s5)
    7de8:	c4240000 	lwc1	$f4,0(at)
    7dec:	4604a582 	mul.s	$f22,$f20,$f4
    7df0:	0c000000 	jal	0 <func_808D6870>
    7df4:	4600b306 	mov.s	$f12,$f22
    7df8:	3c014416 	lui	at,0x4416
    7dfc:	44813000 	mtc1	at,$f6
    7e00:	4600b306 	mov.s	$f12,$f22
    7e04:	46060602 	mul.s	$f24,$f0,$f6
    7e08:	0c000000 	jal	0 <func_808D6870>
    7e0c:	00000000 	nop
    7e10:	c6a801fc 	lwc1	$f8,508(s5)
    7e14:	3c014416 	lui	at,0x4416
    7e18:	44812000 	mtc1	at,$f4
    7e1c:	46184400 	add.s	$f16,$f8,$f24
    7e20:	3c010000 	lui	at,0x0
    7e24:	46040182 	mul.s	$f6,$f0,$f4
    7e28:	263900fa 	addiu	t9,s1,250
    7e2c:	e7b00010 	swc1	$f16,16(sp)
    7e30:	c6aa0200 	lwc1	$f10,512(s5)
    7e34:	c4300000 	lwc1	$f16,0(at)
    7e38:	26c41c24 	addiu	a0,s6,7204
    7e3c:	e7aa0014 	swc1	$f10,20(sp)
    7e40:	4610a282 	mul.s	$f10,$f20,$f16
    7e44:	c6b20204 	lwc1	$f18,516(s5)
    7e48:	afb90028 	sw	t9,40(sp)
    7e4c:	afa00024 	sw	zero,36(sp)
    7e50:	afa0001c 	sw	zero,28(sp)
    7e54:	46069200 	add.s	$f8,$f18,$f6
    7e58:	02a02825 	move	a1,s5
    7e5c:	02c03025 	move	a2,s6
    7e60:	4600510d 	trunc.w.s	$f4,$f10
    7e64:	e7a80018 	swc1	$f8,24(sp)
    7e68:	240700e8 	li	a3,232
    7e6c:	440d2000 	mfc1	t5,$f4
    7e70:	00000000 	nop
    7e74:	000d7400 	sll	t6,t5,0x10
    7e78:	000e7c03 	sra	t7,t6,0x10
    7e7c:	25f86000 	addiu	t8,t7,24576
    7e80:	0c000000 	jal	0 <func_808D6870>
    7e84:	afb80020 	sw	t8,32(sp)
    7e88:	a2a00274 	sb	zero,628(s5)
    7e8c:	8fbf0074 	lw	ra,116(sp)
    7e90:	d7b40038 	ldc1	$f20,56(sp)
    7e94:	d7b60040 	ldc1	$f22,64(sp)
    7e98:	d7b80048 	ldc1	$f24,72(sp)
    7e9c:	d7ba0050 	ldc1	$f26,80(sp)
    7ea0:	8fb00058 	lw	s0,88(sp)
    7ea4:	8fb1005c 	lw	s1,92(sp)
    7ea8:	8fb20060 	lw	s2,96(sp)
    7eac:	8fb30064 	lw	s3,100(sp)
    7eb0:	8fb40068 	lw	s4,104(sp)
    7eb4:	8fb5006c 	lw	s5,108(sp)
    7eb8:	8fb60070 	lw	s6,112(sp)
    7ebc:	03e00008 	jr	ra
    7ec0:	27bd0130 	addiu	sp,sp,304

00007ec4 <func_808DE734>:
    7ec4:	24aefff6 	addiu	t6,a1,-10
    7ec8:	2dc10010 	sltiu	at,t6,16
    7ecc:	afa40000 	sw	a0,0(sp)
    7ed0:	1020008f 	beqz	at,8110 <L808DE980>
    7ed4:	afa7000c 	sw	a3,12(sp)
    7ed8:	000e7080 	sll	t6,t6,0x2
    7edc:	3c010000 	lui	at,0x0
    7ee0:	002e0821 	addu	at,at,t6
    7ee4:	8c2e0000 	lw	t6,0(at)
    7ee8:	01c00008 	jr	t6
    7eec:	00000000 	nop

00007ef0 <L808DE760>:
    7ef0:	8fa20014 	lw	v0,20(sp)
    7ef4:	3c180601 	lui	t8,0x601
    7ef8:	2718c9e8 	addiu	t8,t8,-13848
    7efc:	904f071a 	lbu	t7,1818(v0)
    7f00:	00001025 	move	v0,zero
    7f04:	11e00082 	beqz	t7,8110 <L808DE980>
    7f08:	00000000 	nop
    7f0c:	03e00008 	jr	ra
    7f10:	acd80000 	sw	t8,0(a2)

00007f14 <L808DE784>:
    7f14:	8fa30010 	lw	v1,16(sp)
    7f18:	8fa20014 	lw	v0,20(sp)
    7f1c:	84790002 	lh	t9,2(v1)
    7f20:	c444050c 	lwc1	$f4,1292(v0)
    7f24:	c4460514 	lwc1	$f6,1300(v0)
    7f28:	44995000 	mtc1	t9,$f10
    7f2c:	846a0004 	lh	t2,4(v1)
    7f30:	46062200 	add.s	$f8,$f4,$f6
    7f34:	448a3000 	mtc1	t2,$f6
    7f38:	46805420 	cvt.s.w	$f16,$f10
    7f3c:	468032a0 	cvt.s.w	$f10,$f6
    7f40:	46088480 	add.s	$f18,$f16,$f8
    7f44:	4600910d 	trunc.w.s	$f4,$f18
    7f48:	44092000 	mfc1	t1,$f4
    7f4c:	00000000 	nop
    7f50:	a4690002 	sh	t1,2(v1)
    7f54:	c4500510 	lwc1	$f16,1296(v0)
    7f58:	00001025 	move	v0,zero
    7f5c:	46105200 	add.s	$f8,$f10,$f16
    7f60:	4600448d 	trunc.w.s	$f18,$f8
    7f64:	440c9000 	mfc1	t4,$f18
    7f68:	03e00008 	jr	ra
    7f6c:	a46c0004 	sh	t4,4(v1)

00007f70 <L808DE7E0>:
    7f70:	8fa20014 	lw	v0,20(sp)
    7f74:	44802000 	mtc1	zero,$f4
    7f78:	8fa30010 	lw	v1,16(sp)
    7f7c:	c4400510 	lwc1	$f0,1296(v0)
    7f80:	4600203c 	c.lt.s	$f4,$f0
    7f84:	00000000 	nop
    7f88:	45000061 	bc1f	8110 <L808DE980>
    7f8c:	00000000 	nop
    7f90:	846d0004 	lh	t5,4(v1)
    7f94:	00001025 	move	v0,zero
    7f98:	448d3000 	mtc1	t5,$f6
    7f9c:	00000000 	nop
    7fa0:	468032a0 	cvt.s.w	$f10,$f6
    7fa4:	46005400 	add.s	$f16,$f10,$f0
    7fa8:	4600820d 	trunc.w.s	$f8,$f16
    7fac:	440f4000 	mfc1	t7,$f8
    7fb0:	03e00008 	jr	ra
    7fb4:	a46f0004 	sh	t7,4(v1)

00007fb8 <L808DE828>:
    7fb8:	8fa30010 	lw	v1,16(sp)
    7fbc:	8fa20014 	lw	v0,20(sp)
    7fc0:	84780002 	lh	t8,2(v1)
    7fc4:	c452050c 	lwc1	$f18,1292(v0)
    7fc8:	c4440514 	lwc1	$f4,1300(v0)
    7fcc:	44985000 	mtc1	t8,$f10
    7fd0:	84690004 	lh	t1,4(v1)
    7fd4:	46049180 	add.s	$f6,$f18,$f4
    7fd8:	44892000 	mtc1	t1,$f4
    7fdc:	46805420 	cvt.s.w	$f16,$f10
    7fe0:	468022a0 	cvt.s.w	$f10,$f4
    7fe4:	46068200 	add.s	$f8,$f16,$f6
    7fe8:	4600448d 	trunc.w.s	$f18,$f8
    7fec:	44089000 	mfc1	t0,$f18
    7ff0:	00000000 	nop
    7ff4:	a4680002 	sh	t0,2(v1)
    7ff8:	c4500510 	lwc1	$f16,1296(v0)
    7ffc:	00001025 	move	v0,zero
    8000:	46105180 	add.s	$f6,$f10,$f16
    8004:	4600320d 	trunc.w.s	$f8,$f6
    8008:	440b4000 	mfc1	t3,$f8
    800c:	03e00008 	jr	ra
    8010:	a46b0004 	sh	t3,4(v1)

00008014 <L808DE884>:
    8014:	8fa30010 	lw	v1,16(sp)
    8018:	8fa20014 	lw	v0,20(sp)
    801c:	846c0002 	lh	t4,2(v1)
    8020:	c452050c 	lwc1	$f18,1292(v0)
    8024:	c4440514 	lwc1	$f4,1300(v0)
    8028:	448c8000 	mtc1	t4,$f16
    802c:	846f0004 	lh	t7,4(v1)
    8030:	46049281 	sub.s	$f10,$f18,$f4
    8034:	448f2000 	mtc1	t7,$f4
    8038:	468081a0 	cvt.s.w	$f6,$f16
    803c:	46802420 	cvt.s.w	$f16,$f4
    8040:	460a3200 	add.s	$f8,$f6,$f10
    8044:	4600448d 	trunc.w.s	$f18,$f8
    8048:	440e9000 	mfc1	t6,$f18
    804c:	00000000 	nop
    8050:	a46e0002 	sh	t6,2(v1)
    8054:	c4460510 	lwc1	$f6,1296(v0)
    8058:	00001025 	move	v0,zero
    805c:	46068280 	add.s	$f10,$f16,$f6
    8060:	4600520d 	trunc.w.s	$f8,$f10
    8064:	44194000 	mfc1	t9,$f8
    8068:	03e00008 	jr	ra
    806c:	a4790004 	sh	t9,4(v1)

00008070 <L808DE8E0>:
    8070:	8fa20014 	lw	v0,20(sp)
    8074:	44809000 	mtc1	zero,$f18
    8078:	8fa30010 	lw	v1,16(sp)
    807c:	c4400510 	lwc1	$f0,1296(v0)
    8080:	4600903c 	c.lt.s	$f18,$f0
    8084:	00000000 	nop
    8088:	45000021 	bc1f	8110 <L808DE980>
    808c:	00000000 	nop
    8090:	84680004 	lh	t0,4(v1)
    8094:	00001025 	move	v0,zero
    8098:	44882000 	mtc1	t0,$f4
    809c:	00000000 	nop
    80a0:	46802420 	cvt.s.w	$f16,$f4
    80a4:	46008180 	add.s	$f6,$f16,$f0
    80a8:	4600328d 	trunc.w.s	$f10,$f6
    80ac:	440a5000 	mfc1	t2,$f10
    80b0:	03e00008 	jr	ra
    80b4:	a46a0004 	sh	t2,4(v1)

000080b8 <L808DE928>:
    80b8:	8fa30010 	lw	v1,16(sp)
    80bc:	8fa20014 	lw	v0,20(sp)
    80c0:	846b0002 	lh	t3,2(v1)
    80c4:	c448050c 	lwc1	$f8,1292(v0)
    80c8:	c4520514 	lwc1	$f18,1300(v0)
    80cc:	448b8000 	mtc1	t3,$f16
    80d0:	846e0004 	lh	t6,4(v1)
    80d4:	46124101 	sub.s	$f4,$f8,$f18
    80d8:	448e9000 	mtc1	t6,$f18
    80dc:	468081a0 	cvt.s.w	$f6,$f16
    80e0:	46809420 	cvt.s.w	$f16,$f18
    80e4:	46043280 	add.s	$f10,$f6,$f4
    80e8:	4600520d 	trunc.w.s	$f8,$f10
    80ec:	440d4000 	mfc1	t5,$f8
    80f0:	00000000 	nop
    80f4:	a46d0002 	sh	t5,2(v1)
    80f8:	c4460510 	lwc1	$f6,1296(v0)
    80fc:	46068100 	add.s	$f4,$f16,$f6
    8100:	4600228d 	trunc.w.s	$f10,$f4
    8104:	44185000 	mfc1	t8,$f10
    8108:	00000000 	nop
    810c:	a4780004 	sh	t8,4(v1)

00008110 <L808DE980>:
    8110:	03e00008 	jr	ra
    8114:	00001025 	move	v0,zero

00008118 <func_808DE988>:
    8118:	3c0e0000 	lui	t6,0x0
    811c:	27bdffa8 	addiu	sp,sp,-88
    8120:	25ce0000 	addiu	t6,t6,0
    8124:	afa60060 	sw	a2,96(sp)
    8128:	00ae1021 	addu	v0,a1,t6
    812c:	80460000 	lb	a2,0(v0)
    8130:	afbf0014 	sw	ra,20(sp)
    8134:	afa40058 	sw	a0,88(sp)
    8138:	04c0000c 	bltz	a2,816c <func_808DE988+0x54>
    813c:	afa70064 	sw	a3,100(sp)
    8140:	8fa30068 	lw	v1,104(sp)
    8144:	00067880 	sll	t7,a2,0x2
    8148:	01e67823 	subu	t7,t7,a2
    814c:	000f7880 	sll	t7,t7,0x2
    8150:	3c040000 	lui	a0,0x0
    8154:	006f2821 	addu	a1,v1,t7
    8158:	24a502ec 	addiu	a1,a1,748
    815c:	24840000 	addiu	a0,a0,0
    8160:	0c000000 	jal	0 <func_808D6870>
    8164:	afa20018 	sw	v0,24(sp)
    8168:	8fa20018 	lw	v0,24(sp)
    816c:	3c180000 	lui	t8,0x0
    8170:	27180000 	addiu	t8,t8,0
    8174:	14580007 	bne	v0,t8,8194 <func_808DE988+0x7c>
    8178:	8fa30068 	lw	v1,104(sp)
    817c:	3c040000 	lui	a0,0x0
    8180:	24840000 	addiu	a0,a0,0
    8184:	0c000000 	jal	0 <func_808D6870>
    8188:	246501fc 	addiu	a1,v1,508
    818c:	100000c9 	b	84b4 <func_808DE988+0x39c>
    8190:	8fbf0014 	lw	ra,20(sp)
    8194:	3c190000 	lui	t9,0x0
    8198:	27390000 	addiu	t9,t9,0
    819c:	14590007 	bne	v0,t9,81bc <func_808DE988+0xa4>
    81a0:	3c080000 	lui	t0,0x0
    81a4:	3c040000 	lui	a0,0x0
    81a8:	24840000 	addiu	a0,a0,0
    81ac:	0c000000 	jal	0 <func_808D6870>
    81b0:	24650038 	addiu	a1,v1,56
    81b4:	100000bf 	b	84b4 <func_808DE988+0x39c>
    81b8:	8fbf0014 	lw	ra,20(sp)
    81bc:	25080000 	addiu	t0,t0,0
    81c0:	1448003c 	bne	v0,t0,82b4 <func_808DE988+0x19c>
    81c4:	3c0d0000 	lui	t5,0x0
    81c8:	8fa90058 	lw	t1,88(sp)
    81cc:	3c060000 	lui	a2,0x0
    81d0:	24c60000 	addiu	a2,a2,0
    81d4:	8d250000 	lw	a1,0(t1)
    81d8:	27a4003c 	addiu	a0,sp,60
    81dc:	24071c17 	li	a3,7191
    81e0:	0c000000 	jal	0 <func_808D6870>
    81e4:	afa5004c 	sw	a1,76(sp)
    81e8:	8fa30068 	lw	v1,104(sp)
    81ec:	3c040000 	lui	a0,0x0
    81f0:	24840000 	addiu	a0,a0,0
    81f4:	0c000000 	jal	0 <func_808D6870>
    81f8:	24650208 	addiu	a1,v1,520
    81fc:	8fa7004c 	lw	a3,76(sp)
    8200:	3c0bda38 	lui	t3,0xda38
    8204:	356b0003 	ori	t3,t3,0x3
    8208:	8ce202d0 	lw	v0,720(a3)
    820c:	3c050000 	lui	a1,0x0
    8210:	24a50000 	addiu	a1,a1,0
    8214:	244a0008 	addiu	t2,v0,8
    8218:	acea02d0 	sw	t2,720(a3)
    821c:	ac4b0000 	sw	t3,0(v0)
    8220:	8fac0058 	lw	t4,88(sp)
    8224:	24061c1c 	li	a2,7196
    8228:	8d840000 	lw	a0,0(t4)
    822c:	0c000000 	jal	0 <func_808D6870>
    8230:	afa20038 	sw	v0,56(sp)
    8234:	8fa30038 	lw	v1,56(sp)
    8238:	3c040601 	lui	a0,0x601
    823c:	2484be90 	addiu	a0,a0,-16752
    8240:	ac620004 	sw	v0,4(v1)
    8244:	8fad004c 	lw	t5,76(sp)
    8248:	0004c100 	sll	t8,a0,0x4
    824c:	0018cf02 	srl	t9,t8,0x1c
    8250:	8da202d0 	lw	v0,720(t5)
    8254:	00194080 	sll	t0,t9,0x2
    8258:	3c0fde00 	lui	t7,0xde00
    825c:	244e0008 	addiu	t6,v0,8
    8260:	3c090000 	lui	t1,0x0
    8264:	adae02d0 	sw	t6,720(t5)
    8268:	01284821 	addu	t1,t1,t0
    826c:	3c0100ff 	lui	at,0xff
    8270:	ac4f0000 	sw	t7,0(v0)
    8274:	8d290000 	lw	t1,0(t1)
    8278:	3421ffff 	ori	at,at,0xffff
    827c:	00815024 	and	t2,a0,at
    8280:	3c018000 	lui	at,0x8000
    8284:	012a5821 	addu	t3,t1,t2
    8288:	01616021 	addu	t4,t3,at
    828c:	ac4c0004 	sw	t4,4(v0)
    8290:	8fae0058 	lw	t6,88(sp)
    8294:	3c060000 	lui	a2,0x0
    8298:	24c60000 	addiu	a2,a2,0
    829c:	27a4003c 	addiu	a0,sp,60
    82a0:	24071c1e 	li	a3,7198
    82a4:	0c000000 	jal	0 <func_808D6870>
    82a8:	8dc50000 	lw	a1,0(t6)
    82ac:	10000081 	b	84b4 <func_808DE988+0x39c>
    82b0:	8fbf0014 	lw	ra,20(sp)
    82b4:	25ad0000 	addiu	t5,t5,0
    82b8:	144d0007 	bne	v0,t5,82d8 <func_808DE988+0x1c0>
    82bc:	3c0f0000 	lui	t7,0x0
    82c0:	3c040000 	lui	a0,0x0
    82c4:	24840000 	addiu	a0,a0,0
    82c8:	0c000000 	jal	0 <func_808D6870>
    82cc:	24650238 	addiu	a1,v1,568
    82d0:	10000078 	b	84b4 <func_808DE988+0x39c>
    82d4:	8fbf0014 	lw	ra,20(sp)
    82d8:	25ef0000 	addiu	t7,t7,0
    82dc:	144f0018 	bne	v0,t7,8340 <func_808DE988+0x228>
    82e0:	3c080000 	lui	t0,0x0
    82e4:	3c040000 	lui	a0,0x0
    82e8:	24840000 	addiu	a0,a0,0
    82ec:	0c000000 	jal	0 <func_808D6870>
    82f0:	2465022c 	addiu	a1,v1,556
    82f4:	8fa30068 	lw	v1,104(sp)
    82f8:	3c040000 	lui	a0,0x0
    82fc:	24840000 	addiu	a0,a0,0
    8300:	9078025c 	lbu	t8,604(v1)
    8304:	57000005 	bnezl	t8,831c <func_808DE988+0x204>
    8308:	847901ae 	lh	t9,430(v1)
    830c:	0c000000 	jal	0 <func_808D6870>
    8310:	24650260 	addiu	a1,v1,608
    8314:	8fa30068 	lw	v1,104(sp)
    8318:	847901ae 	lh	t9,430(v1)
    831c:	24010002 	li	at,2
    8320:	a060025c 	sb	zero,604(v1)
    8324:	17210062 	bne	t9,at,84b0 <func_808DE988+0x398>
    8328:	3c040000 	lui	a0,0x0
    832c:	24840000 	addiu	a0,a0,0
    8330:	0c000000 	jal	0 <func_808D6870>
    8334:	246502d8 	addiu	a1,v1,728
    8338:	1000005e 	b	84b4 <func_808DE988+0x39c>
    833c:	8fbf0014 	lw	ra,20(sp)
    8340:	25080000 	addiu	t0,t0,0
    8344:	1448002b 	bne	v0,t0,83f4 <func_808DE988+0x2dc>
    8348:	3c0c0000 	lui	t4,0x0
    834c:	3c090000 	lui	t1,0x0
    8350:	25290000 	addiu	t1,t1,0
    8354:	8d2b0000 	lw	t3,0(t1)
    8358:	27a40028 	addiu	a0,sp,40
    835c:	24010001 	li	at,1
    8360:	ac8b0000 	sw	t3,0(a0)
    8364:	8d2a0004 	lw	t2,4(t1)
    8368:	ac8a0004 	sw	t2,4(a0)
    836c:	8d2b0008 	lw	t3,8(t1)
    8370:	ac8b0008 	sw	t3,8(a0)
    8374:	90620198 	lbu	v0,408(v1)
    8378:	c7a40028 	lwc1	$f4,40(sp)
    837c:	1441000d 	bne	v0,at,83b4 <func_808DE988+0x29c>
    8380:	3c01c396 	lui	at,0xc396
    8384:	44810000 	mtc1	at,$f0
    8388:	3c01442f 	lui	at,0x442f
    838c:	c7a8002c 	lwc1	$f8,44(sp)
    8390:	44819000 	mtc1	at,$f18
    8394:	c7b00030 	lwc1	$f16,48(sp)
    8398:	46002180 	add.s	$f6,$f4,$f0
    839c:	46004280 	add.s	$f10,$f8,$f0
    83a0:	e7a60028 	swc1	$f6,40(sp)
    83a4:	46128100 	add.s	$f4,$f16,$f18
    83a8:	e7aa002c 	swc1	$f10,44(sp)
    83ac:	1000000d 	b	83e4 <func_808DE988+0x2cc>
    83b0:	e7a40030 	swc1	$f4,48(sp)
    83b4:	24010002 	li	at,2
    83b8:	1441000a 	bne	v0,at,83e4 <func_808DE988+0x2cc>
    83bc:	c7a60028 	lwc1	$f6,40(sp)
    83c0:	3c01c396 	lui	at,0xc396
    83c4:	44810000 	mtc1	at,$f0
    83c8:	3c01442f 	lui	at,0x442f
    83cc:	44818000 	mtc1	at,$f16
    83d0:	c7aa0030 	lwc1	$f10,48(sp)
    83d4:	46003200 	add.s	$f8,$f6,$f0
    83d8:	46105480 	add.s	$f18,$f10,$f16
    83dc:	e7a80028 	swc1	$f8,40(sp)
    83e0:	e7b20030 	swc1	$f18,48(sp)
    83e4:	0c000000 	jal	0 <func_808D6870>
    83e8:	24650220 	addiu	a1,v1,544
    83ec:	10000031 	b	84b4 <func_808DE988+0x39c>
    83f0:	8fbf0014 	lw	ra,20(sp)
    83f4:	258c0000 	addiu	t4,t4,0
    83f8:	144c002d 	bne	v0,t4,84b0 <func_808DE988+0x398>
    83fc:	3c0e0000 	lui	t6,0x0
    8400:	25ce0000 	addiu	t6,t6,0
    8404:	8dcf0000 	lw	t7,0(t6)
    8408:	27a4001c 	addiu	a0,sp,28
    840c:	24010001 	li	at,1
    8410:	ac8f0000 	sw	t7,0(a0)
    8414:	8dcd0004 	lw	t5,4(t6)
    8418:	ac8d0004 	sw	t5,4(a0)
    841c:	8dcf0008 	lw	t7,8(t6)
    8420:	ac8f0008 	sw	t7,8(a0)
    8424:	90620198 	lbu	v0,408(v1)
    8428:	c7a4001c 	lwc1	$f4,28(sp)
    842c:	1441000d 	bne	v0,at,8464 <func_808DE988+0x34c>
    8430:	3c01c396 	lui	at,0xc396
    8434:	44810000 	mtc1	at,$f0
    8438:	3c01c42f 	lui	at,0xc42f
    843c:	c7a80020 	lwc1	$f8,32(sp)
    8440:	44819000 	mtc1	at,$f18
    8444:	c7b00024 	lwc1	$f16,36(sp)
    8448:	46002180 	add.s	$f6,$f4,$f0
    844c:	46004280 	add.s	$f10,$f8,$f0
    8450:	e7a6001c 	swc1	$f6,28(sp)
    8454:	46128100 	add.s	$f4,$f16,$f18
    8458:	e7aa0020 	swc1	$f10,32(sp)
    845c:	10000012 	b	84a8 <func_808DE988+0x390>
    8460:	e7a40024 	swc1	$f4,36(sp)
    8464:	24010002 	li	at,2
    8468:	1441000f 	bne	v0,at,84a8 <func_808DE988+0x390>
    846c:	c7a6001c 	lwc1	$f6,28(sp)
    8470:	3c01c396 	lui	at,0xc396
    8474:	44810000 	mtc1	at,$f0
    8478:	3c0142c8 	lui	at,0x42c8
    847c:	44818000 	mtc1	at,$f16
    8480:	46003200 	add.s	$f8,$f6,$f0
    8484:	3c01c42f 	lui	at,0xc42f
    8488:	c7aa0020 	lwc1	$f10,32(sp)
    848c:	44813000 	mtc1	at,$f6
    8490:	c7a40024 	lwc1	$f4,36(sp)
    8494:	e7a8001c 	swc1	$f8,28(sp)
    8498:	46105480 	add.s	$f18,$f10,$f16
    849c:	46062200 	add.s	$f8,$f4,$f6
    84a0:	e7b20020 	swc1	$f18,32(sp)
    84a4:	e7a80024 	swc1	$f8,36(sp)
    84a8:	0c000000 	jal	0 <func_808D6870>
    84ac:	24650214 	addiu	a1,v1,532
    84b0:	8fbf0014 	lw	ra,20(sp)
    84b4:	27bd0058 	addiu	sp,sp,88
    84b8:	03e00008 	jr	ra
    84bc:	00000000 	nop

000084c0 <func_808DED30>:
    84c0:	3c010000 	lui	at,0x0
    84c4:	ac240000 	sw	a0,0(at)
    84c8:	3c010000 	lui	at,0x0
    84cc:	ac250000 	sw	a1,0(at)
    84d0:	3c010000 	lui	at,0x0
    84d4:	03e00008 	jr	ra
    84d8:	ac260000 	sw	a2,0(at)

000084dc <func_808DED4C>:
    84dc:	3c020000 	lui	v0,0x0
    84e0:	24420000 	addiu	v0,v0,0
    84e4:	8c4e0000 	lw	t6,0(v0)
    84e8:	3c013f80 	lui	at,0x3f80
    84ec:	44810000 	mtc1	at,$f0
    84f0:	000e7880 	sll	t7,t6,0x2
    84f4:	01ee7823 	subu	t7,t7,t6
    84f8:	000f7880 	sll	t7,t7,0x2
    84fc:	01ee7823 	subu	t7,t7,t6
    8500:	000f7880 	sll	t7,t7,0x2
    8504:	01ee7823 	subu	t7,t7,t6
    8508:	000f7880 	sll	t7,t7,0x2
    850c:	2401763d 	li	at,30269
    8510:	01ee7823 	subu	t7,t7,t6
    8514:	01e1001a 	div	zero,t7,at
    8518:	3c030000 	lui	v1,0x0
    851c:	24630000 	addiu	v1,v1,0
    8520:	8c790000 	lw	t9,0(v1)
    8524:	00006810 	mfhi	t5
    8528:	24017663 	li	at,30307
    852c:	00194080 	sll	t0,t9,0x2
    8530:	01194023 	subu	t0,t0,t9
    8534:	00084080 	sll	t0,t0,0x2
    8538:	01194023 	subu	t0,t0,t9
    853c:	00084080 	sll	t0,t0,0x2
    8540:	01194023 	subu	t0,t0,t9
    8544:	00084080 	sll	t0,t0,0x2
    8548:	0101001a 	div	zero,t0,at
    854c:	3c040000 	lui	a0,0x0
    8550:	24840000 	addiu	a0,a0,0
    8554:	8c8a0000 	lw	t2,0(a0)
    8558:	00007010 	mfhi	t6
    855c:	24017673 	li	at,30323
    8560:	000a5880 	sll	t3,t2,0x2
    8564:	016a5821 	addu	t3,t3,t2
    8568:	000b5880 	sll	t3,t3,0x2
    856c:	016a5821 	addu	t3,t3,t2
    8570:	000b5880 	sll	t3,t3,0x2
    8574:	016a5821 	addu	t3,t3,t2
    8578:	000b5840 	sll	t3,t3,0x1
    857c:	0161001a 	div	zero,t3,at
    8580:	448d2000 	mtc1	t5,$f4
    8584:	448e8000 	mtc1	t6,$f16
    8588:	00007810 	mfhi	t7
    858c:	468021a0 	cvt.s.w	$f6,$f4
    8590:	ac4d0000 	sw	t5,0(v0)
    8594:	ac6e0000 	sw	t6,0(v1)
    8598:	ac8f0000 	sw	t7,0(a0)
    859c:	3c010000 	lui	at,0x0
    85a0:	468084a0 	cvt.s.w	$f18,$f16
    85a4:	c4280000 	lwc1	$f8,0(at)
    85a8:	3c010000 	lui	at,0x0
    85ac:	c4240000 	lwc1	$f4,0(at)
    85b0:	448f8000 	mtc1	t7,$f16
    85b4:	46083283 	div.s	$f10,$f6,$f8
    85b8:	3c010000 	lui	at,0x0
    85bc:	46049183 	div.s	$f6,$f18,$f4
    85c0:	c4240000 	lwc1	$f4,0(at)
    85c4:	468084a0 	cvt.s.w	$f18,$f16
    85c8:	46065200 	add.s	$f8,$f10,$f6
    85cc:	46049283 	div.s	$f10,$f18,$f4
    85d0:	460a4080 	add.s	$f2,$f8,$f10
    85d4:	4602003e 	c.le.s	$f0,$f2
    85d8:	00000000 	nop
    85dc:	45000006 	bc1f	85f8 <func_808DED4C+0x11c>
    85e0:	00000000 	nop
    85e4:	46001081 	sub.s	$f2,$f2,$f0
    85e8:	4602003e 	c.le.s	$f0,$f2
    85ec:	00000000 	nop
    85f0:	4503fffd 	bc1tl	85e8 <func_808DED4C+0x10c>
    85f4:	46001081 	sub.s	$f2,$f2,$f0
    85f8:	03e00008 	jr	ra
    85fc:	46001005 	abs.s	$f0,$f2

00008600 <func_808DEE70>:
    8600:	27bdff38 	addiu	sp,sp,-200
    8604:	afbf0064 	sw	ra,100(sp)
    8608:	afbe0060 	sw	s8,96(sp)
    860c:	afb7005c 	sw	s7,92(sp)
    8610:	afb60058 	sw	s6,88(sp)
    8614:	afb50054 	sw	s5,84(sp)
    8618:	afb40050 	sw	s4,80(sp)
    861c:	afb3004c 	sw	s3,76(sp)
    8620:	afb20048 	sw	s2,72(sp)
    8624:	afb10044 	sw	s1,68(sp)
    8628:	afb00040 	sw	s0,64(sp)
    862c:	f7b40038 	sdc1	$f20,56(sp)
    8630:	afa500cc 	sw	a1,204(sp)
    8634:	8cb10000 	lw	s1,0(a1)
    8638:	0080a025 	move	s4,a0
    863c:	3c060000 	lui	a2,0x0
    8640:	24c60000 	addiu	a2,a2,0
    8644:	27a400a8 	addiu	a0,sp,168
    8648:	24071cb6 	li	a3,7350
    864c:	0c000000 	jal	0 <func_808D6870>
    8650:	02202825 	move	a1,s1
    8654:	868f02e8 	lh	t7,744(s4)
    8658:	8fb900cc 	lw	t9,204(sp)
    865c:	15e00004 	bnez	t7,8670 <func_808DEE70+0x70>
    8660:	00000000 	nop
    8664:	869802e6 	lh	t8,742(s4)
    8668:	130000cd 	beqz	t8,89a0 <func_808DEE70+0x3a0>
    866c:	00000000 	nop
    8670:	0c000000 	jal	0 <func_808D6870>
    8674:	8f240000 	lw	a0,0(t9)
    8678:	8e2202d0 	lw	v0,720(s1)
    867c:	3c0afa00 	lui	t2,0xfa00
    8680:	240bffff 	li	t3,-1
    8684:	24490008 	addiu	t1,v0,8
    8688:	ae2902d0 	sw	t1,720(s1)
    868c:	ac4b0004 	sw	t3,4(v0)
    8690:	ac4a0000 	sw	t2,0(v0)
    8694:	8e2202d0 	lw	v0,720(s1)
    8698:	3c0dfb00 	lui	t5,0xfb00
    869c:	3c0effff 	lui	t6,0xffff
    86a0:	244c0008 	addiu	t4,v0,8
    86a4:	ae2c02d0 	sw	t4,720(s1)
    86a8:	ac4e0004 	sw	t6,4(v0)
    86ac:	ac4d0000 	sw	t5,0(v0)
    86b0:	8e2202d0 	lw	v0,720(s1)
    86b4:	3c180000 	lui	t8,0x0
    86b8:	27180000 	addiu	t8,t8,0
    86bc:	244f0008 	addiu	t7,v0,8
    86c0:	ae2f02d0 	sw	t7,720(s1)
    86c4:	3c15de00 	lui	s5,0xde00
    86c8:	ac550000 	sw	s5,0(v0)
    86cc:	ac580004 	sw	t8,4(v0)
    86d0:	869902e8 	lh	t9,744(s4)
    86d4:	8fb600cc 	lw	s6,204(sp)
    86d8:	24120001 	li	s2,1
    86dc:	1320003d 	beqz	t9,87d4 <func_808DEE70+0x1d4>
    86e0:	3c010001 	lui	at,0x1
    86e4:	8fa200cc 	lw	v0,204(sp)
    86e8:	3c010001 	lui	at,0x1
    86ec:	34211da0 	ori	at,at,0x1da0
    86f0:	8c431c44 	lw	v1,7236(v0)
    86f4:	0041b021 	addu	s6,v0,at
    86f8:	3c010000 	lui	at,0x0
    86fc:	3c130000 	lui	s3,0x0
    8700:	3c1eda38 	lui	s8,0xda38
    8704:	37de0003 	ori	s8,s8,0x3
    8708:	26730000 	addiu	s3,s3,0
    870c:	c4340000 	lwc1	$f20,0(at)
    8710:	00009025 	move	s2,zero
    8714:	2417000c 	li	s7,12
    8718:	afa30098 	sw	v1,152(sp)
    871c:	02570019 	multu	s2,s7
    8720:	8fa30098 	lw	v1,152(sp)
    8724:	00003825 	move	a3,zero
    8728:	00004812 	mflo	t1
    872c:	00691021 	addu	v0,v1,t1
    8730:	c44c0908 	lwc1	$f12,2312(v0)
    8734:	c44e090c 	lwc1	$f14,2316(v0)
    8738:	0c000000 	jal	0 <func_808D6870>
    873c:	8c460910 	lw	a2,2320(v0)
    8740:	0c000000 	jal	0 <func_808D6870>
    8744:	02c02025 	move	a0,s6
    8748:	00125080 	sll	t2,s2,0x2
    874c:	028a5821 	addu	t3,s4,t2
    8750:	c56c049c 	lwc1	$f12,1180(t3)
    8754:	24070001 	li	a3,1
    8758:	44066000 	mfc1	a2,$f12
    875c:	0c000000 	jal	0 <func_808D6870>
    8760:	46006386 	mov.s	$f14,$f12
    8764:	0c000000 	jal	0 <func_808D6870>
    8768:	4600a306 	mov.s	$f12,$f20
    876c:	46000306 	mov.s	$f12,$f0
    8770:	0c000000 	jal	0 <func_808D6870>
    8774:	24050001 	li	a1,1
    8778:	8e2202d0 	lw	v0,720(s1)
    877c:	3c050000 	lui	a1,0x0
    8780:	24a50000 	addiu	a1,a1,0
    8784:	244c0008 	addiu	t4,v0,8
    8788:	ae2c02d0 	sw	t4,720(s1)
    878c:	02202025 	move	a0,s1
    8790:	24061cd8 	li	a2,7384
    8794:	ac5e0000 	sw	s8,0(v0)
    8798:	0c000000 	jal	0 <func_808D6870>
    879c:	00408025 	move	s0,v0
    87a0:	ae020004 	sw	v0,4(s0)
    87a4:	8e2202d0 	lw	v0,720(s1)
    87a8:	26520001 	addiu	s2,s2,1
    87ac:	00129400 	sll	s2,s2,0x10
    87b0:	00129403 	sra	s2,s2,0x10
    87b4:	244d0008 	addiu	t5,v0,8
    87b8:	2a410012 	slti	at,s2,18
    87bc:	ae2d02d0 	sw	t5,720(s1)
    87c0:	ac530004 	sw	s3,4(v0)
    87c4:	1420ffd5 	bnez	at,871c <func_808DEE70+0x11c>
    87c8:	ac550000 	sw	s5,0(v0)
    87cc:	10000074 	b	89a0 <func_808DEE70+0x3a0>
    87d0:	00000000 	nop
    87d4:	34211da0 	ori	at,at,0x1da0
    87d8:	02c1b021 	addu	s6,s6,at
    87dc:	3c010000 	lui	at,0x0
    87e0:	3c1eda38 	lui	s8,0xda38
    87e4:	37de0003 	ori	s8,s8,0x3
    87e8:	c4340000 	lwc1	$f20,0(at)
    87ec:	2417000c 	li	s7,12
    87f0:	02570019 	multu	s2,s7
    87f4:	00003825 	move	a3,zero
    87f8:	00007012 	mflo	t6
    87fc:	028e1021 	addu	v0,s4,t6
    8800:	c44c02ec 	lwc1	$f12,748(v0)
    8804:	c44e02f0 	lwc1	$f14,752(v0)
    8808:	0c000000 	jal	0 <func_808D6870>
    880c:	8c4602f4 	lw	a2,756(v0)
    8810:	0c000000 	jal	0 <func_808D6870>
    8814:	02c02025 	move	a0,s6
    8818:	00127880 	sll	t7,s2,0x2
    881c:	028fc021 	addu	t8,s4,t7
    8820:	c70c049c 	lwc1	$f12,1180(t8)
    8824:	24070001 	li	a3,1
    8828:	44066000 	mfc1	a2,$f12
    882c:	0c000000 	jal	0 <func_808D6870>
    8830:	46006386 	mov.s	$f14,$f12
    8834:	929902e4 	lbu	t9,740(s4)
    8838:	57200007 	bnezl	t9,8858 <func_808DEE70+0x258>
    883c:	8e2202d0 	lw	v0,720(s1)
    8840:	0c000000 	jal	0 <func_808D6870>
    8844:	4600a306 	mov.s	$f12,$f20
    8848:	46000306 	mov.s	$f12,$f0
    884c:	0c000000 	jal	0 <func_808D6870>
    8850:	24050001 	li	a1,1
    8854:	8e2202d0 	lw	v0,720(s1)
    8858:	3c050000 	lui	a1,0x0
    885c:	24a50000 	addiu	a1,a1,0
    8860:	24490008 	addiu	t1,v0,8
    8864:	ae2902d0 	sw	t1,720(s1)
    8868:	02202025 	move	a0,s1
    886c:	24061ce9 	li	a2,7401
    8870:	ac5e0000 	sw	s8,0(v0)
    8874:	0c000000 	jal	0 <func_808D6870>
    8878:	00408025 	move	s0,v0
    887c:	ae020004 	sw	v0,4(s0)
    8880:	928a02e4 	lbu	t2,740(s4)
    8884:	3c080000 	lui	t0,0x0
    8888:	25080000 	addiu	t0,t0,0
    888c:	11400037 	beqz	t2,896c <func_808DEE70+0x36c>
    8890:	3c0cdb06 	lui	t4,0xdb06
    8894:	8e2202d0 	lw	v0,720(s1)
    8898:	358c0020 	ori	t4,t4,0x20
    889c:	240e0020 	li	t6,32
    88a0:	244b0008 	addiu	t3,v0,8
    88a4:	ae2b02d0 	sw	t3,720(s1)
    88a8:	ac4c0000 	sw	t4,0(v0)
    88ac:	8fad00cc 	lw	t5,204(sp)
    88b0:	240f0040 	li	t7,64
    88b4:	24180001 	li	t8,1
    88b8:	8da40000 	lw	a0,0(t5)
    88bc:	afa0001c 	sw	zero,28(sp)
    88c0:	afb80018 	sw	t8,24(sp)
    88c4:	afaf0014 	sw	t7,20(sp)
    88c8:	afae0010 	sw	t6,16(sp)
    88cc:	869901a2 	lh	t9,418(s4)
    88d0:	240c0040 	li	t4,64
    88d4:	240b0020 	li	t3,32
    88d8:	03324821 	addu	t1,t9,s2
    88dc:	00090823 	negu	at,t1
    88e0:	00015100 	sll	t2,at,0x4
    88e4:	01415023 	subu	t2,t2,at
    88e8:	afaa0020 	sw	t2,32(sp)
    88ec:	afab0024 	sw	t3,36(sp)
    88f0:	afac0028 	sw	t4,40(sp)
    88f4:	afa8006c 	sw	t0,108(sp)
    88f8:	00002825 	move	a1,zero
    88fc:	00003025 	move	a2,zero
    8900:	00003825 	move	a3,zero
    8904:	0c000000 	jal	0 <func_808D6870>
    8908:	00408025 	move	s0,v0
    890c:	8fa8006c 	lw	t0,108(sp)
    8910:	ae020004 	sw	v0,4(s0)
    8914:	8e2202d0 	lw	v0,720(s1)
    8918:	3c0fc8ff 	lui	t7,0xc8ff
    891c:	35efaaff 	ori	t7,t7,0xaaff
    8920:	244d0008 	addiu	t5,v0,8
    8924:	ae2d02d0 	sw	t5,720(s1)
    8928:	3c0efa00 	lui	t6,0xfa00
    892c:	ac4e0000 	sw	t6,0(v0)
    8930:	ac4f0004 	sw	t7,4(v0)
    8934:	8e2202d0 	lw	v0,720(s1)
    8938:	3c09ffff 	lui	t1,0xffff
    893c:	35290080 	ori	t1,t1,0x80
    8940:	24580008 	addiu	t8,v0,8
    8944:	ae3802d0 	sw	t8,720(s1)
    8948:	3c19fb00 	lui	t9,0xfb00
    894c:	ac590000 	sw	t9,0(v0)
    8950:	ac490004 	sw	t1,4(v0)
    8954:	8e2202d0 	lw	v0,720(s1)
    8958:	244a0008 	addiu	t2,v0,8
    895c:	ae2a02d0 	sw	t2,720(s1)
    8960:	ac480004 	sw	t0,4(v0)
    8964:	10000008 	b	8988 <func_808DEE70+0x388>
    8968:	ac550000 	sw	s5,0(v0)
    896c:	8e2202d0 	lw	v0,720(s1)
    8970:	3c130000 	lui	s3,0x0
    8974:	26730000 	addiu	s3,s3,0
    8978:	244b0008 	addiu	t3,v0,8
    897c:	ae2b02d0 	sw	t3,720(s1)
    8980:	ac530004 	sw	s3,4(v0)
    8984:	ac550000 	sw	s5,0(v0)
    8988:	26520001 	addiu	s2,s2,1
    898c:	00129400 	sll	s2,s2,0x10
    8990:	00129403 	sra	s2,s2,0x10
    8994:	2a41000f 	slti	at,s2,15
    8998:	1420ff95 	bnez	at,87f0 <func_808DEE70+0x1f0>
    899c:	00000000 	nop
    89a0:	3c060000 	lui	a2,0x0
    89a4:	24c60000 	addiu	a2,a2,0
    89a8:	27a400a8 	addiu	a0,sp,168
    89ac:	02202825 	move	a1,s1
    89b0:	0c000000 	jal	0 <func_808D6870>
    89b4:	24071d29 	li	a3,7465
    89b8:	8fbf0064 	lw	ra,100(sp)
    89bc:	d7b40038 	ldc1	$f20,56(sp)
    89c0:	8fb00040 	lw	s0,64(sp)
    89c4:	8fb10044 	lw	s1,68(sp)
    89c8:	8fb20048 	lw	s2,72(sp)
    89cc:	8fb3004c 	lw	s3,76(sp)
    89d0:	8fb40050 	lw	s4,80(sp)
    89d4:	8fb50054 	lw	s5,84(sp)
    89d8:	8fb60058 	lw	s6,88(sp)
    89dc:	8fb7005c 	lw	s7,92(sp)
    89e0:	8fbe0060 	lw	s8,96(sp)
    89e4:	03e00008 	jr	ra
    89e8:	27bd00c8 	addiu	sp,sp,200

000089ec <func_808DF25C>:
    89ec:	27bdff90 	addiu	sp,sp,-112
    89f0:	afbf001c 	sw	ra,28(sp)
    89f4:	afb10018 	sw	s1,24(sp)
    89f8:	afb00014 	sw	s0,20(sp)
    89fc:	afa50074 	sw	a1,116(sp)
    8a00:	8cb00000 	lw	s0,0(a1)
    8a04:	00808825 	move	s1,a0
    8a08:	3c060000 	lui	a2,0x0
    8a0c:	24c60000 	addiu	a2,a2,0
    8a10:	27a40050 	addiu	a0,sp,80
    8a14:	24071d34 	li	a3,7476
    8a18:	0c000000 	jal	0 <func_808D6870>
    8a1c:	02002825 	move	a1,s0
    8a20:	44802000 	mtc1	zero,$f4
    8a24:	c6260254 	lwc1	$f6,596(s1)
    8a28:	8faf0074 	lw	t7,116(sp)
    8a2c:	4606203c 	c.lt.s	$f4,$f6
    8a30:	00000000 	nop
    8a34:	4502008e 	bc1fl	8c70 <func_808DF25C+0x284>
    8a38:	8fbf001c 	lw	ra,28(sp)
    8a3c:	0c000000 	jal	0 <func_808D6870>
    8a40:	8de40000 	lw	a0,0(t7)
    8a44:	8e0202d0 	lw	v0,720(s0)
    8a48:	3c19fa00 	lui	t9,0xfa00
    8a4c:	2408ffff 	li	t0,-1
    8a50:	24580008 	addiu	t8,v0,8
    8a54:	ae1802d0 	sw	t8,720(s0)
    8a58:	ac480004 	sw	t0,4(v0)
    8a5c:	ac590000 	sw	t9,0(v0)
    8a60:	862901a2 	lh	t1,418(s1)
    8a64:	3c08de00 	lui	t0,0xde00
    8a68:	312a0001 	andi	t2,t1,0x1
    8a6c:	11400009 	beqz	t2,8a94 <func_808DF25C+0xa8>
    8a70:	3c090000 	lui	t1,0x0
    8a74:	8e0202d0 	lw	v0,720(s0)
    8a78:	3c0cfb00 	lui	t4,0xfb00
    8a7c:	3c0dffff 	lui	t5,0xffff
    8a80:	244b0008 	addiu	t3,v0,8
    8a84:	ae0b02d0 	sw	t3,720(s0)
    8a88:	ac4d0004 	sw	t5,4(v0)
    8a8c:	10000008 	b	8ab0 <func_808DF25C+0xc4>
    8a90:	ac4c0000 	sw	t4,0(v0)
    8a94:	8e0202d0 	lw	v0,720(s0)
    8a98:	3c0ffb00 	lui	t7,0xfb00
    8a9c:	3c1864ff 	lui	t8,0x64ff
    8aa0:	244e0008 	addiu	t6,v0,8
    8aa4:	ae0e02d0 	sw	t6,720(s0)
    8aa8:	ac580004 	sw	t8,4(v0)
    8aac:	ac4f0000 	sw	t7,0(v0)
    8ab0:	8e0202d0 	lw	v0,720(s0)
    8ab4:	25290000 	addiu	t1,t1,0
    8ab8:	00003825 	move	a3,zero
    8abc:	24590008 	addiu	t9,v0,8
    8ac0:	ae1902d0 	sw	t9,720(s0)
    8ac4:	ac490004 	sw	t1,4(v0)
    8ac8:	ac480000 	sw	t0,0(v0)
    8acc:	8e260268 	lw	a2,616(s1)
    8ad0:	c62e0264 	lwc1	$f14,612(s1)
    8ad4:	0c000000 	jal	0 <func_808D6870>
    8ad8:	c62c0260 	lwc1	$f12,608(s1)
    8adc:	8fa40074 	lw	a0,116(sp)
    8ae0:	3c010001 	lui	at,0x1
    8ae4:	34211da0 	ori	at,at,0x1da0
    8ae8:	0c000000 	jal	0 <func_808D6870>
    8aec:	00812021 	addu	a0,a0,at
    8af0:	c62c0254 	lwc1	$f12,596(s1)
    8af4:	24070001 	li	a3,1
    8af8:	44066000 	mfc1	a2,$f12
    8afc:	0c000000 	jal	0 <func_808D6870>
    8b00:	46006386 	mov.s	$f14,$f12
    8b04:	c62c0258 	lwc1	$f12,600(s1)
    8b08:	0c000000 	jal	0 <func_808D6870>
    8b0c:	24050001 	li	a1,1
    8b10:	8e0202d0 	lw	v0,720(s0)
    8b14:	3c0bda38 	lui	t3,0xda38
    8b18:	356b0003 	ori	t3,t3,0x3
    8b1c:	244a0008 	addiu	t2,v0,8
    8b20:	ae0a02d0 	sw	t2,720(s0)
    8b24:	3c050000 	lui	a1,0x0
    8b28:	ac4b0000 	sw	t3,0(v0)
    8b2c:	24a50000 	addiu	a1,a1,0
    8b30:	02002025 	move	a0,s0
    8b34:	24061d56 	li	a2,7510
    8b38:	0c000000 	jal	0 <func_808D6870>
    8b3c:	afa2003c 	sw	v0,60(sp)
    8b40:	8fa3003c 	lw	v1,60(sp)
    8b44:	3c0e0000 	lui	t6,0x0
    8b48:	25ce0000 	addiu	t6,t6,0
    8b4c:	ac620004 	sw	v0,4(v1)
    8b50:	8e0202d0 	lw	v0,720(s0)
    8b54:	3c0dde00 	lui	t5,0xde00
    8b58:	24040050 	li	a0,80
    8b5c:	244c0008 	addiu	t4,v0,8
    8b60:	ae0c02d0 	sw	t4,720(s0)
    8b64:	ac4e0004 	sw	t6,4(v0)
    8b68:	ac4d0000 	sw	t5,0(v0)
    8b6c:	862f01a2 	lh	t7,418(s1)
    8b70:	3c08e700 	lui	t0,0xe700
    8b74:	3c0afa00 	lui	t2,0xfa00
    8b78:	31f80001 	andi	t8,t7,0x1
    8b7c:	13000003 	beqz	t8,8b8c <func_808DF25C+0x1a0>
    8b80:	24019b00 	li	at,-25856
    8b84:	10000001 	b	8b8c <func_808DF25C+0x1a0>
    8b88:	24040064 	li	a0,100
    8b8c:	8e0202d0 	lw	v0,720(s0)
    8b90:	308b00ff 	andi	t3,a0,0xff
    8b94:	01616025 	or	t4,t3,at
    8b98:	24590008 	addiu	t9,v0,8
    8b9c:	ae1902d0 	sw	t9,720(s0)
    8ba0:	ac400004 	sw	zero,4(v0)
    8ba4:	ac480000 	sw	t0,0(v0)
    8ba8:	8e0202d0 	lw	v0,720(s0)
    8bac:	44807000 	mtc1	zero,$f14
    8bb0:	00003825 	move	a3,zero
    8bb4:	24490008 	addiu	t1,v0,8
    8bb8:	ae0902d0 	sw	t1,720(s0)
    8bbc:	ac4c0004 	sw	t4,4(v0)
    8bc0:	ac4a0000 	sw	t2,0(v0)
    8bc4:	8e260268 	lw	a2,616(s1)
    8bc8:	0c000000 	jal	0 <func_808D6870>
    8bcc:	c62c0260 	lwc1	$f12,608(s1)
    8bd0:	3c013f40 	lui	at,0x3f40
    8bd4:	44815000 	mtc1	at,$f10
    8bd8:	c6280254 	lwc1	$f8,596(s1)
    8bdc:	3c013f80 	lui	at,0x3f80
    8be0:	44817000 	mtc1	at,$f14
    8be4:	460a4302 	mul.s	$f12,$f8,$f10
    8be8:	24070001 	li	a3,1
    8bec:	44066000 	mfc1	a2,$f12
    8bf0:	0c000000 	jal	0 <func_808D6870>
    8bf4:	00000000 	nop
    8bf8:	8e0202d0 	lw	v0,720(s0)
    8bfc:	3c0eda38 	lui	t6,0xda38
    8c00:	35ce0003 	ori	t6,t6,0x3
    8c04:	244d0008 	addiu	t5,v0,8
    8c08:	ae0d02d0 	sw	t5,720(s0)
    8c0c:	ac4e0000 	sw	t6,0(v0)
    8c10:	8faf0074 	lw	t7,116(sp)
    8c14:	3c050000 	lui	a1,0x0
    8c18:	24a50000 	addiu	a1,a1,0
    8c1c:	8de40000 	lw	a0,0(t7)
    8c20:	24061d6b 	li	a2,7531
    8c24:	0c000000 	jal	0 <func_808D6870>
    8c28:	afa2002c 	sw	v0,44(sp)
    8c2c:	8fa3002c 	lw	v1,44(sp)
    8c30:	3c080000 	lui	t0,0x0
    8c34:	25080000 	addiu	t0,t0,0
    8c38:	ac620004 	sw	v0,4(v1)
    8c3c:	8e0202d0 	lw	v0,720(s0)
    8c40:	3c19de00 	lui	t9,0xde00
    8c44:	3c060000 	lui	a2,0x0
    8c48:	24580008 	addiu	t8,v0,8
    8c4c:	ae1802d0 	sw	t8,720(s0)
    8c50:	24c60000 	addiu	a2,a2,0
    8c54:	27a40050 	addiu	a0,sp,80
    8c58:	02002825 	move	a1,s0
    8c5c:	24071d6e 	li	a3,7534
    8c60:	ac480004 	sw	t0,4(v0)
    8c64:	0c000000 	jal	0 <func_808D6870>
    8c68:	ac590000 	sw	t9,0(v0)
    8c6c:	8fbf001c 	lw	ra,28(sp)
    8c70:	8fb00014 	lw	s0,20(sp)
    8c74:	8fb10018 	lw	s1,24(sp)
    8c78:	03e00008 	jr	ra
    8c7c:	27bd0070 	addiu	sp,sp,112

00008c80 <func_808DF4F0>:
    8c80:	27bdff28 	addiu	sp,sp,-216
    8c84:	afbf004c 	sw	ra,76(sp)
    8c88:	afb20048 	sw	s2,72(sp)
    8c8c:	afb10044 	sw	s1,68(sp)
    8c90:	afb00040 	sw	s0,64(sp)
    8c94:	f7b40038 	sdc1	$f20,56(sp)
    8c98:	afa500dc 	sw	a1,220(sp)
    8c9c:	8cb10000 	lw	s1,0(a1)
    8ca0:	00809025 	move	s2,a0
    8ca4:	3c060000 	lui	a2,0x0
    8ca8:	24c60000 	addiu	a2,a2,0
    8cac:	27a400b4 	addiu	a0,sp,180
    8cb0:	24071d7c 	li	a3,7548
    8cb4:	0c000000 	jal	0 <func_808D6870>
    8cb8:	02202825 	move	a1,s1
    8cbc:	44802000 	mtc1	zero,$f4
    8cc0:	c6460284 	lwc1	$f6,644(s2)
    8cc4:	8faf00dc 	lw	t7,220(sp)
    8cc8:	4606203c 	c.lt.s	$f4,$f6
    8ccc:	00000000 	nop
    8cd0:	4502019d 	bc1fl	9348 <func_808DF4F0+0x6c8>
    8cd4:	8fbf004c 	lw	ra,76(sp)
    8cd8:	0c000000 	jal	0 <func_808D6870>
    8cdc:	8de40000 	lw	a0,0(t7)
    8ce0:	8e2302d0 	lw	v1,720(s1)
    8ce4:	3c19fa00 	lui	t9,0xfa00
    8ce8:	2401aa00 	li	at,-22016
    8cec:	24780008 	addiu	t8,v1,8
    8cf0:	ae3802d0 	sw	t8,720(s1)
    8cf4:	ac790000 	sw	t9,0(v1)
    8cf8:	c6480290 	lwc1	$f8,656(s2)
    8cfc:	3c18c8ff 	lui	t8,0xc8ff
    8d00:	37180080 	ori	t8,t8,0x80
    8d04:	4600428d 	trunc.w.s	$f10,$f8
    8d08:	3c0ffb00 	lui	t7,0xfb00
    8d0c:	3c08db06 	lui	t0,0xdb06
    8d10:	35080020 	ori	t0,t0,0x20
    8d14:	440b5000 	mfc1	t3,$f10
    8d18:	240a0040 	li	t2,64
    8d1c:	00002825 	move	a1,zero
    8d20:	316c00ff 	andi	t4,t3,0xff
    8d24:	01816825 	or	t5,t4,at
    8d28:	ac6d0004 	sw	t5,4(v1)
    8d2c:	8e2302d0 	lw	v1,720(s1)
    8d30:	240c0001 	li	t4,1
    8d34:	240b0040 	li	t3,64
    8d38:	246e0008 	addiu	t6,v1,8
    8d3c:	ae2e02d0 	sw	t6,720(s1)
    8d40:	ac780004 	sw	t8,4(v1)
    8d44:	ac6f0000 	sw	t7,0(v1)
    8d48:	8e3002d0 	lw	s0,720(s1)
    8d4c:	240f0040 	li	t7,64
    8d50:	240e0040 	li	t6,64
    8d54:	26190008 	addiu	t9,s0,8
    8d58:	ae3902d0 	sw	t9,720(s1)
    8d5c:	ae080000 	sw	t0,0(s0)
    8d60:	864201a2 	lh	v0,418(s2)
    8d64:	8fa900dc 	lw	t1,220(sp)
    8d68:	00003825 	move	a3,zero
    8d6c:	00026880 	sll	t5,v0,0x2
    8d70:	8d240000 	lw	a0,0(t1)
    8d74:	01a26821 	addu	t5,t5,v0
    8d78:	000d6840 	sll	t5,t5,0x1
    8d7c:	00020823 	negu	at,v0
    8d80:	00013040 	sll	a2,at,0x1
    8d84:	afad0020 	sw	t5,32(sp)
    8d88:	afaf0028 	sw	t7,40(sp)
    8d8c:	afae0024 	sw	t6,36(sp)
    8d90:	afa0001c 	sw	zero,28(sp)
    8d94:	afac0018 	sw	t4,24(sp)
    8d98:	afab0014 	sw	t3,20(sp)
    8d9c:	0c000000 	jal	0 <func_808D6870>
    8da0:	afaa0010 	sw	t2,16(sp)
    8da4:	ae020004 	sw	v0,4(s0)
    8da8:	8e460280 	lw	a2,640(s2)
    8dac:	c64e027c 	lwc1	$f14,636(s2)
    8db0:	c64c0278 	lwc1	$f12,632(s2)
    8db4:	0c000000 	jal	0 <func_808D6870>
    8db8:	00003825 	move	a3,zero
    8dbc:	8fa400dc 	lw	a0,220(sp)
    8dc0:	3c010001 	lui	at,0x1
    8dc4:	34211da0 	ori	at,at,0x1da0
    8dc8:	00812021 	addu	a0,a0,at
    8dcc:	0c000000 	jal	0 <func_808D6870>
    8dd0:	afa40054 	sw	a0,84(sp)
    8dd4:	c64c028c 	lwc1	$f12,652(s2)
    8dd8:	24070001 	li	a3,1
    8ddc:	44066000 	mfc1	a2,$f12
    8de0:	0c000000 	jal	0 <func_808D6870>
    8de4:	46006386 	mov.s	$f14,$f12
    8de8:	8e3002d0 	lw	s0,720(s1)
    8dec:	3c19da38 	lui	t9,0xda38
    8df0:	37390003 	ori	t9,t9,0x3
    8df4:	26180008 	addiu	t8,s0,8
    8df8:	ae3802d0 	sw	t8,720(s1)
    8dfc:	3c050000 	lui	a1,0x0
    8e00:	24a50000 	addiu	a1,a1,0
    8e04:	02202025 	move	a0,s1
    8e08:	24061da4 	li	a2,7588
    8e0c:	0c000000 	jal	0 <func_808D6870>
    8e10:	ae190000 	sw	t9,0(s0)
    8e14:	ae020004 	sw	v0,4(s0)
    8e18:	8e2302d0 	lw	v1,720(s1)
    8e1c:	3c0a0000 	lui	t2,0x0
    8e20:	254a0000 	addiu	t2,t2,0
    8e24:	24680008 	addiu	t0,v1,8
    8e28:	ae2802d0 	sw	t0,720(s1)
    8e2c:	3c09de00 	lui	t1,0xde00
    8e30:	ac690000 	sw	t1,0(v1)
    8e34:	ac6a0004 	sw	t2,4(v1)
    8e38:	8e460280 	lw	a2,640(s2)
    8e3c:	c64e027c 	lwc1	$f14,636(s2)
    8e40:	c64c0278 	lwc1	$f12,632(s2)
    8e44:	0c000000 	jal	0 <func_808D6870>
    8e48:	00003825 	move	a3,zero
    8e4c:	0c000000 	jal	0 <func_808D6870>
    8e50:	8fa40054 	lw	a0,84(sp)
    8e54:	c64c0284 	lwc1	$f12,644(s2)
    8e58:	24070001 	li	a3,1
    8e5c:	44066000 	mfc1	a2,$f12
    8e60:	0c000000 	jal	0 <func_808D6870>
    8e64:	46006386 	mov.s	$f14,$f12
    8e68:	8e3002d0 	lw	s0,720(s1)
    8e6c:	3c0cda38 	lui	t4,0xda38
    8e70:	358c0003 	ori	t4,t4,0x3
    8e74:	260b0008 	addiu	t3,s0,8
    8e78:	ae2b02d0 	sw	t3,720(s1)
    8e7c:	3c050000 	lui	a1,0x0
    8e80:	24a50000 	addiu	a1,a1,0
    8e84:	02202025 	move	a0,s1
    8e88:	24061db1 	li	a2,7601
    8e8c:	0c000000 	jal	0 <func_808D6870>
    8e90:	ae0c0000 	sw	t4,0(s0)
    8e94:	ae020004 	sw	v0,4(s0)
    8e98:	8e2302d0 	lw	v1,720(s1)
    8e9c:	3c0efa00 	lui	t6,0xfa00
    8ea0:	3c01ff00 	lui	at,0xff00
    8ea4:	246d0008 	addiu	t5,v1,8
    8ea8:	ae2d02d0 	sw	t5,720(s1)
    8eac:	ac6e0000 	sw	t6,0(v1)
    8eb0:	c6500288 	lwc1	$f16,648(s2)
    8eb4:	34216400 	ori	at,at,0x6400
    8eb8:	3c0cdb06 	lui	t4,0xdb06
    8ebc:	4600848d 	trunc.w.s	$f18,$f16
    8ec0:	358c0024 	ori	t4,t4,0x24
    8ec4:	240e0020 	li	t6,32
    8ec8:	240f0020 	li	t7,32
    8ecc:	44089000 	mfc1	t0,$f18
    8ed0:	24180001 	li	t8,1
    8ed4:	00002825 	move	a1,zero
    8ed8:	310900ff 	andi	t1,t0,0xff
    8edc:	01215025 	or	t2,t1,at
    8ee0:	ac6a0004 	sw	t2,4(v1)
    8ee4:	8e3002d0 	lw	s0,720(s1)
    8ee8:	240a0020 	li	t2,32
    8eec:	24090020 	li	t1,32
    8ef0:	260b0008 	addiu	t3,s0,8
    8ef4:	ae2b02d0 	sw	t3,720(s1)
    8ef8:	ae0c0000 	sw	t4,0(s0)
    8efc:	8fad00dc 	lw	t5,220(sp)
    8f00:	00003025 	move	a2,zero
    8f04:	00003825 	move	a3,zero
    8f08:	8da40000 	lw	a0,0(t5)
    8f0c:	afa0001c 	sw	zero,28(sp)
    8f10:	afb80018 	sw	t8,24(sp)
    8f14:	afaf0014 	sw	t7,20(sp)
    8f18:	afae0010 	sw	t6,16(sp)
    8f1c:	865901a2 	lh	t9,418(s2)
    8f20:	afaa0028 	sw	t2,40(sp)
    8f24:	afa90024 	sw	t1,36(sp)
    8f28:	00190823 	negu	at,t9
    8f2c:	00014080 	sll	t0,at,0x2
    8f30:	0c000000 	jal	0 <func_808D6870>
    8f34:	afa80020 	sw	t0,32(sp)
    8f38:	ae020004 	sw	v0,4(s0)
    8f3c:	8e2302d0 	lw	v1,720(s1)
    8f40:	3c0d0000 	lui	t5,0x0
    8f44:	25ad0000 	addiu	t5,t5,0
    8f48:	246b0008 	addiu	t3,v1,8
    8f4c:	ae2b02d0 	sw	t3,720(s1)
    8f50:	3c0cde00 	lui	t4,0xde00
    8f54:	ac6c0000 	sw	t4,0(v1)
    8f58:	ac6d0004 	sw	t5,4(v1)
    8f5c:	8e2302d0 	lw	v1,720(s1)
    8f60:	3c0ffa00 	lui	t7,0xfa00
    8f64:	3c0196aa 	lui	at,0x96aa
    8f68:	246e0008 	addiu	t6,v1,8
    8f6c:	ae2e02d0 	sw	t6,720(s1)
    8f70:	ac6f0000 	sw	t7,0(v1)
    8f74:	c6440288 	lwc1	$f4,648(s2)
    8f78:	3c0ddb06 	lui	t5,0xdb06
    8f7c:	35ad0028 	ori	t5,t5,0x28
    8f80:	4600218d 	trunc.w.s	$f6,$f4
    8f84:	240f0020 	li	t7,32
    8f88:	24180020 	li	t8,32
    8f8c:	24190001 	li	t9,1
    8f90:	44093000 	mfc1	t1,$f6
    8f94:	00002825 	move	a1,zero
    8f98:	00003025 	move	a2,zero
    8f9c:	312a00ff 	andi	t2,t1,0xff
    8fa0:	01415825 	or	t3,t2,at
    8fa4:	ac6b0004 	sw	t3,4(v1)
    8fa8:	8e3002d0 	lw	s0,720(s1)
    8fac:	240b0040 	li	t3,64
    8fb0:	240a0040 	li	t2,64
    8fb4:	260c0008 	addiu	t4,s0,8
    8fb8:	ae2c02d0 	sw	t4,720(s1)
    8fbc:	ae0d0000 	sw	t5,0(s0)
    8fc0:	8fae00dc 	lw	t6,220(sp)
    8fc4:	00003825 	move	a3,zero
    8fc8:	8dc40000 	lw	a0,0(t6)
    8fcc:	afb90018 	sw	t9,24(sp)
    8fd0:	afb80014 	sw	t8,20(sp)
    8fd4:	afaf0010 	sw	t7,16(sp)
    8fd8:	864201a2 	lh	v0,418(s2)
    8fdc:	afab0028 	sw	t3,40(sp)
    8fe0:	afaa0024 	sw	t2,36(sp)
    8fe4:	00020823 	negu	at,v0
    8fe8:	00014880 	sll	t1,at,0x2
    8fec:	01214821 	addu	t1,t1,at
    8ff0:	00094880 	sll	t1,t1,0x2
    8ff4:	00024040 	sll	t0,v0,0x1
    8ff8:	afa8001c 	sw	t0,28(sp)
    8ffc:	0c000000 	jal	0 <func_808D6870>
    9000:	afa90020 	sw	t1,32(sp)
    9004:	ae020004 	sw	v0,4(s0)
    9008:	8e2302d0 	lw	v1,720(s1)
    900c:	3c0d0000 	lui	t5,0x0
    9010:	25ad0000 	addiu	t5,t5,0
    9014:	246c0008 	addiu	t4,v1,8
    9018:	ae2c02d0 	sw	t4,720(s1)
    901c:	3c04de00 	lui	a0,0xde00
    9020:	ac640000 	sw	a0,0(v1)
    9024:	ac6d0004 	sw	t5,4(v1)
    9028:	8e2302d0 	lw	v1,720(s1)
    902c:	3c0ffa00 	lui	t7,0xfa00
    9030:	2418ffff 	li	t8,-1
    9034:	246e0008 	addiu	t6,v1,8
    9038:	ae2e02d0 	sw	t6,720(s1)
    903c:	ac780004 	sw	t8,4(v1)
    9040:	ac6f0000 	sw	t7,0(v1)
    9044:	8e2302d0 	lw	v1,720(s1)
    9048:	3c09ffff 	lui	t1,0xffff
    904c:	35296400 	ori	t1,t1,0x6400
    9050:	24790008 	addiu	t9,v1,8
    9054:	ae3902d0 	sw	t9,720(s1)
    9058:	3c08fb00 	lui	t0,0xfb00
    905c:	ac680000 	sw	t0,0(v1)
    9060:	ac690004 	sw	t1,4(v1)
    9064:	8e2302d0 	lw	v1,720(s1)
    9068:	3c0b0000 	lui	t3,0x0
    906c:	256b0000 	addiu	t3,t3,0
    9070:	246a0008 	addiu	t2,v1,8
    9074:	ae2a02d0 	sw	t2,720(s1)
    9078:	ac6b0004 	sw	t3,4(v1)
    907c:	ac640000 	sw	a0,0(v1)
    9080:	8e460280 	lw	a2,640(s2)
    9084:	c64e027c 	lwc1	$f14,636(s2)
    9088:	c64c0278 	lwc1	$f12,632(s2)
    908c:	0c000000 	jal	0 <func_808D6870>
    9090:	00003825 	move	a3,zero
    9094:	0c000000 	jal	0 <func_808D6870>
    9098:	8fa40054 	lw	a0,84(sp)
    909c:	c64c02d0 	lwc1	$f12,720(s2)
    90a0:	24070001 	li	a3,1
    90a4:	44066000 	mfc1	a2,$f12
    90a8:	0c000000 	jal	0 <func_808D6870>
    90ac:	46006386 	mov.s	$f14,$f12
    90b0:	864c01a2 	lh	t4,418(s2)
    90b4:	3c014120 	lui	at,0x4120
    90b8:	4481a000 	mtc1	at,$f20
    90bc:	448c4000 	mtc1	t4,$f8
    90c0:	3c01447a 	lui	at,0x447a
    90c4:	44819000 	mtc1	at,$f18
    90c8:	468042a0 	cvt.s.w	$f10,$f8
    90cc:	24050001 	li	a1,1
    90d0:	46145402 	mul.s	$f16,$f10,$f20
    90d4:	0c000000 	jal	0 <func_808D6870>
    90d8:	46128303 	div.s	$f12,$f16,$f18
    90dc:	8e3002d0 	lw	s0,720(s1)
    90e0:	3c0eda38 	lui	t6,0xda38
    90e4:	35ce0003 	ori	t6,t6,0x3
    90e8:	260d0008 	addiu	t5,s0,8
    90ec:	ae2d02d0 	sw	t5,720(s1)
    90f0:	3c050000 	lui	a1,0x0
    90f4:	24a50000 	addiu	a1,a1,0
    90f8:	02202025 	move	a0,s1
    90fc:	24061df9 	li	a2,7673
    9100:	0c000000 	jal	0 <func_808D6870>
    9104:	ae0e0000 	sw	t6,0(s0)
    9108:	ae020004 	sw	v0,4(s0)
    910c:	8e2302d0 	lw	v1,720(s1)
    9110:	3c190000 	lui	t9,0x0
    9114:	27390000 	addiu	t9,t9,0
    9118:	246f0008 	addiu	t7,v1,8
    911c:	ae2f02d0 	sw	t7,720(s1)
    9120:	3c18de00 	lui	t8,0xde00
    9124:	ac780000 	sw	t8,0(v1)
    9128:	ac790004 	sw	t9,4(v1)
    912c:	864401aa 	lh	a0,426(s2)
    9130:	240571ac 	li	a1,29100
    9134:	2406263a 	li	a2,9786
    9138:	0c000000 	jal	0 <func_808D6870>
    913c:	24840001 	addiu	a0,a0,1
    9140:	c64c0278 	lwc1	$f12,632(s2)
    9144:	c64e027c 	lwc1	$f14,636(s2)
    9148:	8e460280 	lw	a2,640(s2)
    914c:	0c000000 	jal	0 <func_808D6870>
    9150:	00003825 	move	a3,zero
    9154:	864801a2 	lh	t0,418(s2)
    9158:	3c01447a 	lui	at,0x447a
    915c:	44815000 	mtc1	at,$f10
    9160:	44882000 	mtc1	t0,$f4
    9164:	24050001 	li	a1,1
    9168:	468021a0 	cvt.s.w	$f6,$f4
    916c:	46143202 	mul.s	$f8,$f6,$f20
    9170:	0c000000 	jal	0 <func_808D6870>
    9174:	460a4303 	div.s	$f12,$f8,$f10
    9178:	8e2302d0 	lw	v1,720(s1)
    917c:	3c0afb00 	lui	t2,0xfb00
    9180:	3c0bc8ff 	lui	t3,0xc8ff
    9184:	24690008 	addiu	t1,v1,8
    9188:	ae2902d0 	sw	t1,720(s1)
    918c:	ac6b0004 	sw	t3,4(v1)
    9190:	ac6a0000 	sw	t2,0(v1)
    9194:	864c008a 	lh	t4,138(s2)
    9198:	3c014700 	lui	at,0x4700
    919c:	44812000 	mtc1	at,$f4
    91a0:	448c8000 	mtc1	t4,$f16
    91a4:	3c010000 	lui	at,0x0
    91a8:	c4280000 	lwc1	$f8,0(at)
    91ac:	468084a0 	cvt.s.w	$f18,$f16
    91b0:	3c0e0000 	lui	t6,0x0
    91b4:	25ce0000 	addiu	t6,t6,0
    91b8:	00008025 	move	s0,zero
    91bc:	46049183 	div.s	$f6,$f18,$f4
    91c0:	46083282 	mul.s	$f10,$f6,$f8
    91c4:	e7aa00d0 	swc1	$f10,208(sp)
    91c8:	864d01ac 	lh	t5,428(s2)
    91cc:	19a00057 	blez	t5,932c <func_808DF4F0+0x6ac>
    91d0:	00000000 	nop
    91d4:	afae0054 	sw	t6,84(sp)
    91d8:	0c000000 	jal	0 <func_808D6870>
    91dc:	00000000 	nop
    91e0:	8e2302d0 	lw	v1,720(s1)
    91e4:	3c013f00 	lui	at,0x3f00
    91e8:	44818000 	mtc1	at,$f16
    91ec:	3c010000 	lui	at,0x0
    91f0:	c4240000 	lwc1	$f4,0(at)
    91f4:	246f0008 	addiu	t7,v1,8
    91f8:	ae2f02d0 	sw	t7,720(s1)
    91fc:	3c18fa00 	lui	t8,0xfa00
    9200:	0010c880 	sll	t9,s0,0x2
    9204:	02594021 	addu	t0,s2,t9
    9208:	ac780000 	sw	t8,0(v1)
    920c:	46100481 	sub.s	$f18,$f0,$f16
    9210:	c50a0294 	lwc1	$f10,660(t0)
    9214:	3c013fc0 	lui	at,0x3fc0
    9218:	44814000 	mtc1	at,$f8
    921c:	4600540d 	trunc.w.s	$f16,$f10
    9220:	46049182 	mul.s	$f6,$f18,$f4
    9224:	2401ff00 	li	at,-256
    9228:	440c8000 	mfc1	t4,$f16
    922c:	00000000 	nop
    9230:	318d00ff 	andi	t5,t4,0xff
    9234:	01a17025 	or	t6,t5,at
    9238:	46083502 	mul.s	$f20,$f6,$f8
    923c:	0c000000 	jal	0 <func_808D6870>
    9240:	ac6e0004 	sw	t6,4(v1)
    9244:	c7b200d0 	lwc1	$f18,208(sp)
    9248:	24050001 	li	a1,1
    924c:	0c000000 	jal	0 <func_808D6870>
    9250:	4612a300 	add.s	$f12,$f20,$f18
    9254:	0c000000 	jal	0 <func_808D6870>
    9258:	00000000 	nop
    925c:	3c013f00 	lui	at,0x3f00
    9260:	44812000 	mtc1	at,$f4
    9264:	3c010000 	lui	at,0x0
    9268:	c4280000 	lwc1	$f8,0(at)
    926c:	46040181 	sub.s	$f6,$f0,$f4
    9270:	24050001 	li	a1,1
    9274:	46083302 	mul.s	$f12,$f6,$f8
    9278:	0c000000 	jal	0 <func_808D6870>
    927c:	00000000 	nop
    9280:	4600a306 	mov.s	$f12,$f20
    9284:	0c000000 	jal	0 <func_808D6870>
    9288:	24050001 	li	a1,1
    928c:	44806000 	mtc1	zero,$f12
    9290:	3c064248 	lui	a2,0x4248
    9294:	24070001 	li	a3,1
    9298:	0c000000 	jal	0 <func_808D6870>
    929c:	46006386 	mov.s	$f14,$f12
    92a0:	3c014080 	lui	at,0x4080
    92a4:	44816000 	mtc1	at,$f12
    92a8:	3c063f80 	lui	a2,0x3f80
    92ac:	24070001 	li	a3,1
    92b0:	0c000000 	jal	0 <func_808D6870>
    92b4:	46006386 	mov.s	$f14,$f12
    92b8:	8e2302d0 	lw	v1,720(s1)
    92bc:	3c18da38 	lui	t8,0xda38
    92c0:	37180003 	ori	t8,t8,0x3
    92c4:	246f0008 	addiu	t7,v1,8
    92c8:	ae2f02d0 	sw	t7,720(s1)
    92cc:	3c050000 	lui	a1,0x0
    92d0:	ac780000 	sw	t8,0(v1)
    92d4:	24a50000 	addiu	a1,a1,0
    92d8:	02202025 	move	a0,s1
    92dc:	24061e21 	li	a2,7713
    92e0:	0c000000 	jal	0 <func_808D6870>
    92e4:	afa30060 	sw	v1,96(sp)
    92e8:	8fa70060 	lw	a3,96(sp)
    92ec:	3c08de00 	lui	t0,0xde00
    92f0:	ace20004 	sw	v0,4(a3)
    92f4:	8e2302d0 	lw	v1,720(s1)
    92f8:	24790008 	addiu	t9,v1,8
    92fc:	ae3902d0 	sw	t9,720(s1)
    9300:	ac680000 	sw	t0,0(v1)
    9304:	8fa90054 	lw	t1,84(sp)
    9308:	0c000000 	jal	0 <func_808D6870>
    930c:	ac690004 	sw	t1,4(v1)
    9310:	864a01ac 	lh	t2,428(s2)
    9314:	26100001 	addiu	s0,s0,1
    9318:	00108400 	sll	s0,s0,0x10
    931c:	00108403 	sra	s0,s0,0x10
    9320:	020a082a 	slt	at,s0,t2
    9324:	1420ffac 	bnez	at,91d8 <func_808DF4F0+0x558>
    9328:	00000000 	nop
    932c:	3c060000 	lui	a2,0x0
    9330:	24c60000 	addiu	a2,a2,0
    9334:	27a400b4 	addiu	a0,sp,180
    9338:	02202825 	move	a1,s1
    933c:	0c000000 	jal	0 <func_808D6870>
    9340:	24071e29 	li	a3,7721
    9344:	8fbf004c 	lw	ra,76(sp)
    9348:	d7b40038 	ldc1	$f20,56(sp)
    934c:	8fb00040 	lw	s0,64(sp)
    9350:	8fb10044 	lw	s1,68(sp)
    9354:	8fb20048 	lw	s2,72(sp)
    9358:	03e00008 	jr	ra
    935c:	27bd00d8 	addiu	sp,sp,216

00009360 <func_808DFBD0>:
    9360:	27bdffa8 	addiu	sp,sp,-88
    9364:	afbf001c 	sw	ra,28(sp)
    9368:	afb10018 	sw	s1,24(sp)
    936c:	afb00014 	sw	s0,20(sp)
    9370:	afa5005c 	sw	a1,92(sp)
    9374:	c48601d8 	lwc1	$f6,472(a0)
    9378:	44802000 	mtc1	zero,$f4
    937c:	00808025 	move	s0,a0
    9380:	3c060000 	lui	a2,0x0
    9384:	4606203c 	c.lt.s	$f4,$f6
    9388:	24c60000 	addiu	a2,a2,0
    938c:	27a40040 	addiu	a0,sp,64
    9390:	450200ed 	bc1fl	9748 <func_808DFBD0+0x3e8>
    9394:	8fbf001c 	lw	ra,28(sp)
    9398:	8ca50000 	lw	a1,0(a1)
    939c:	24071e34 	li	a3,7732
    93a0:	0c000000 	jal	0 <func_808D6870>
    93a4:	00a08825 	move	s1,a1
    93a8:	0c000000 	jal	0 <func_808D6870>
    93ac:	00000000 	nop
    93b0:	8e2202d0 	lw	v0,720(s1)
    93b4:	3c18e700 	lui	t8,0xe700
    93b8:	3c08fa00 	lui	t0,0xfa00
    93bc:	244f0008 	addiu	t7,v0,8
    93c0:	ae2f02d0 	sw	t7,720(s1)
    93c4:	ac400004 	sw	zero,4(v0)
    93c8:	ac580000 	sw	t8,0(v0)
    93cc:	8e2302d0 	lw	v1,720(s1)
    93d0:	24180001 	li	t8,1
    93d4:	3c01ffff 	lui	at,0xffff
    93d8:	24790008 	addiu	t9,v1,8
    93dc:	ae3902d0 	sw	t9,720(s1)
    93e0:	ac680000 	sw	t0,0(v1)
    93e4:	c60801d8 	lwc1	$f8,472(s0)
    93e8:	c61001d4 	lwc1	$f16,468(s0)
    93ec:	00003825 	move	a3,zero
    93f0:	4600428d 	trunc.w.s	$f10,$f8
    93f4:	444ff800 	cfc1	t7,$31
    93f8:	44d8f800 	ctc1	t8,$31
    93fc:	440c5000 	mfc1	t4,$f10
    9400:	460084a4 	cvt.w.s	$f18,$f16
    9404:	318d00ff 	andi	t5,t4,0xff
    9408:	01a17025 	or	t6,t5,at
    940c:	3c014f00 	lui	at,0x4f00
    9410:	4458f800 	cfc1	t8,$31
    9414:	3c0cfb00 	lui	t4,0xfb00
    9418:	33180078 	andi	t8,t8,0x78
    941c:	53000013 	beqzl	t8,946c <func_808DFBD0+0x10c>
    9420:	44189000 	mfc1	t8,$f18
    9424:	44819000 	mtc1	at,$f18
    9428:	24180001 	li	t8,1
    942c:	46128481 	sub.s	$f18,$f16,$f18
    9430:	44d8f800 	ctc1	t8,$31
    9434:	00000000 	nop
    9438:	460094a4 	cvt.w.s	$f18,$f18
    943c:	4458f800 	cfc1	t8,$31
    9440:	00000000 	nop
    9444:	33180078 	andi	t8,t8,0x78
    9448:	17000005 	bnez	t8,9460 <func_808DFBD0+0x100>
    944c:	00000000 	nop
    9450:	44189000 	mfc1	t8,$f18
    9454:	3c018000 	lui	at,0x8000
    9458:	10000007 	b	9478 <func_808DFBD0+0x118>
    945c:	0301c025 	or	t8,t8,at
    9460:	10000005 	b	9478 <func_808DFBD0+0x118>
    9464:	2418ffff 	li	t8,-1
    9468:	44189000 	mfc1	t8,$f18
    946c:	00000000 	nop
    9470:	0700fffb 	bltz	t8,9460 <func_808DFBD0+0x100>
    9474:	00000000 	nop
    9478:	330800ff 	andi	t0,t8,0xff
    947c:	00084a00 	sll	t1,t0,0x8
    9480:	01c95025 	or	t2,t6,t1
    9484:	ac6a0004 	sw	t2,4(v1)
    9488:	8e2302d0 	lw	v1,720(s1)
    948c:	44cff800 	ctc1	t7,$31
    9490:	240f0001 	li	t7,1
    9494:	246b0008 	addiu	t3,v1,8
    9498:	ae2b02d0 	sw	t3,720(s1)
    949c:	ac6c0000 	sw	t4,0(v1)
    94a0:	444df800 	cfc1	t5,$31
    94a4:	44cff800 	ctc1	t7,$31
    94a8:	c60401dc 	lwc1	$f4,476(s0)
    94ac:	3c014f00 	lui	at,0x4f00
    94b0:	460021a4 	cvt.w.s	$f6,$f4
    94b4:	444ff800 	cfc1	t7,$31
    94b8:	00000000 	nop
    94bc:	31ef0078 	andi	t7,t7,0x78
    94c0:	51e00013 	beqzl	t7,9510 <func_808DFBD0+0x1b0>
    94c4:	440f3000 	mfc1	t7,$f6
    94c8:	44813000 	mtc1	at,$f6
    94cc:	240f0001 	li	t7,1
    94d0:	46062181 	sub.s	$f6,$f4,$f6
    94d4:	44cff800 	ctc1	t7,$31
    94d8:	00000000 	nop
    94dc:	460031a4 	cvt.w.s	$f6,$f6
    94e0:	444ff800 	cfc1	t7,$31
    94e4:	00000000 	nop
    94e8:	31ef0078 	andi	t7,t7,0x78
    94ec:	15e00005 	bnez	t7,9504 <func_808DFBD0+0x1a4>
    94f0:	00000000 	nop
    94f4:	440f3000 	mfc1	t7,$f6
    94f8:	3c018000 	lui	at,0x8000
    94fc:	10000007 	b	951c <func_808DFBD0+0x1bc>
    9500:	01e17825 	or	t7,t7,at
    9504:	10000005 	b	951c <func_808DFBD0+0x1bc>
    9508:	240fffff 	li	t7,-1
    950c:	440f3000 	mfc1	t7,$f6
    9510:	00000000 	nop
    9514:	05e0fffb 	bltz	t7,9504 <func_808DFBD0+0x1a4>
    9518:	00000000 	nop
    951c:	31f900ff 	andi	t9,t7,0xff
    9520:	00194400 	sll	t0,t9,0x10
    9524:	3c01ff00 	lui	at,0xff00
    9528:	01017025 	or	t6,t0,at
    952c:	35c90080 	ori	t1,t6,0x80
    9530:	ac690004 	sw	t1,4(v1)
    9534:	860201ae 	lh	v0,430(s0)
    9538:	44cdf800 	ctc1	t5,$31
    953c:	8faa005c 	lw	t2,92(sp)
    9540:	14400018 	bnez	v0,95a4 <func_808DFBD0+0x244>
    9544:	24010001 	li	at,1
    9548:	8d421c44 	lw	v0,7236(t2)
    954c:	3c010000 	lui	at,0x0
    9550:	8c4c0998 	lw	t4,2456(v0)
    9554:	ae0c02d8 	sw	t4,728(s0)
    9558:	8c4b099c 	lw	t3,2460(v0)
    955c:	c60802d8 	lwc1	$f8,728(s0)
    9560:	ae0b02dc 	sw	t3,732(s0)
    9564:	8c4c09a0 	lw	t4,2464(v0)
    9568:	c61202dc 	lwc1	$f18,732(s0)
    956c:	ae0c02e0 	sw	t4,736(s0)
    9570:	c42a0000 	lwc1	$f10,0(at)
    9574:	3c014040 	lui	at,0x4040
    9578:	44812000 	mtc1	at,$f4
    957c:	460a4400 	add.s	$f16,$f8,$f10
    9580:	3c01c000 	lui	at,0xc000
    9584:	44815000 	mtc1	at,$f10
    9588:	c60802e0 	lwc1	$f8,736(s0)
    958c:	e61002d8 	swc1	$f16,728(s0)
    9590:	46049180 	add.s	$f6,$f18,$f4
    9594:	460a4400 	add.s	$f16,$f8,$f10
    9598:	e60602dc 	swc1	$f6,732(s0)
    959c:	10000014 	b	95f0 <func_808DFBD0+0x290>
    95a0:	e61002e0 	swc1	$f16,736(s0)
    95a4:	14410012 	bne	v0,at,95f0 <func_808DFBD0+0x290>
    95a8:	3c0d0000 	lui	t5,0x0
    95ac:	8dad0000 	lw	t5,0(t5)
    95b0:	3c010000 	lui	at,0x0
    95b4:	8db8031c 	lw	t8,796(t5)
    95b8:	ae1802d8 	sw	t8,728(s0)
    95bc:	8daf0320 	lw	t7,800(t5)
    95c0:	ae0f02dc 	sw	t7,732(s0)
    95c4:	8db80324 	lw	t8,804(t5)
    95c8:	c61202dc 	lwc1	$f18,732(s0)
    95cc:	ae1802e0 	sw	t8,736(s0)
    95d0:	c4240000 	lwc1	$f4,0(at)
    95d4:	3c014080 	lui	at,0x4080
    95d8:	44815000 	mtc1	at,$f10
    95dc:	c60802e0 	lwc1	$f8,736(s0)
    95e0:	46049180 	add.s	$f6,$f18,$f4
    95e4:	460a4400 	add.s	$f16,$f8,$f10
    95e8:	e60602dc 	swc1	$f6,732(s0)
    95ec:	e61002e0 	swc1	$f16,736(s0)
    95f0:	c60c02d8 	lwc1	$f12,728(s0)
    95f4:	c60e02dc 	lwc1	$f14,732(s0)
    95f8:	0c000000 	jal	0 <func_808D6870>
    95fc:	8e0602e0 	lw	a2,736(s0)
    9600:	860201ae 	lh	v0,430(s0)
    9604:	24050001 	li	a1,1
    9608:	24010001 	li	at,1
    960c:	1440000a 	bnez	v0,9638 <func_808DFBD0+0x2d8>
    9610:	00000000 	nop
    9614:	3c010000 	lui	at,0x0
    9618:	0c000000 	jal	0 <func_808D6870>
    961c:	c42c0000 	lwc1	$f12,0(at)
    9620:	3c014080 	lui	at,0x4080
    9624:	44816000 	mtc1	at,$f12
    9628:	0c000000 	jal	0 <func_808D6870>
    962c:	24050001 	li	a1,1
    9630:	10000016 	b	968c <func_808DFBD0+0x32c>
    9634:	c60c01e0 	lwc1	$f12,480(s0)
    9638:	1441000f 	bne	v0,at,9678 <func_808DFBD0+0x318>
    963c:	8fa4005c 	lw	a0,92(sp)
    9640:	3c013fc0 	lui	at,0x3fc0
    9644:	44816000 	mtc1	at,$f12
    9648:	0c000000 	jal	0 <func_808D6870>
    964c:	24050001 	li	a1,1
    9650:	3c010000 	lui	at,0x0
    9654:	c42c0000 	lwc1	$f12,0(at)
    9658:	0c000000 	jal	0 <func_808D6870>
    965c:	24050001 	li	a1,1
    9660:	3c010000 	lui	at,0x0
    9664:	c42c0000 	lwc1	$f12,0(at)
    9668:	0c000000 	jal	0 <func_808D6870>
    966c:	24050001 	li	a1,1
    9670:	10000006 	b	968c <func_808DFBD0+0x32c>
    9674:	c60c01e0 	lwc1	$f12,480(s0)
    9678:	3c010001 	lui	at,0x1
    967c:	34211da0 	ori	at,at,0x1da0
    9680:	0c000000 	jal	0 <func_808D6870>
    9684:	00812021 	addu	a0,a0,at
    9688:	c60c01e0 	lwc1	$f12,480(s0)
    968c:	3c063f80 	lui	a2,0x3f80
    9690:	24070001 	li	a3,1
    9694:	0c000000 	jal	0 <func_808D6870>
    9698:	46006386 	mov.s	$f14,$f12
    969c:	8e2202d0 	lw	v0,720(s1)
    96a0:	3c08da38 	lui	t0,0xda38
    96a4:	35080003 	ori	t0,t0,0x3
    96a8:	24590008 	addiu	t9,v0,8
    96ac:	ae3902d0 	sw	t9,720(s1)
    96b0:	ac480000 	sw	t0,0(v0)
    96b4:	8fae005c 	lw	t6,92(sp)
    96b8:	3c050000 	lui	a1,0x0
    96bc:	24a50000 	addiu	a1,a1,0
    96c0:	24061e63 	li	a2,7779
    96c4:	00408025 	move	s0,v0
    96c8:	0c000000 	jal	0 <func_808D6870>
    96cc:	8dc40000 	lw	a0,0(t6)
    96d0:	ae020004 	sw	v0,4(s0)
    96d4:	8e2202d0 	lw	v0,720(s1)
    96d8:	3c040000 	lui	a0,0x0
    96dc:	24840000 	addiu	a0,a0,0
    96e0:	00045900 	sll	t3,a0,0x4
    96e4:	000b6702 	srl	t4,t3,0x1c
    96e8:	24490008 	addiu	t1,v0,8
    96ec:	ae2902d0 	sw	t1,720(s1)
    96f0:	000c6880 	sll	t5,t4,0x2
    96f4:	3c0ade00 	lui	t2,0xde00
    96f8:	3c0f0000 	lui	t7,0x0
    96fc:	01ed7821 	addu	t7,t7,t5
    9700:	3c0100ff 	lui	at,0xff
    9704:	ac4a0000 	sw	t2,0(v0)
    9708:	8def0000 	lw	t7,0(t7)
    970c:	3421ffff 	ori	at,at,0xffff
    9710:	0081c024 	and	t8,a0,at
    9714:	3c018000 	lui	at,0x8000
    9718:	01f8c821 	addu	t9,t7,t8
    971c:	03214021 	addu	t0,t9,at
    9720:	0c000000 	jal	0 <func_808D6870>
    9724:	ac480004 	sw	t0,4(v0)
    9728:	8fae005c 	lw	t6,92(sp)
    972c:	3c060000 	lui	a2,0x0
    9730:	24c60000 	addiu	a2,a2,0
    9734:	27a40040 	addiu	a0,sp,64
    9738:	24071e66 	li	a3,7782
    973c:	0c000000 	jal	0 <func_808D6870>
    9740:	8dc50000 	lw	a1,0(t6)
    9744:	8fbf001c 	lw	ra,28(sp)
    9748:	8fb00014 	lw	s0,20(sp)
    974c:	8fb10018 	lw	s1,24(sp)
    9750:	03e00008 	jr	ra
    9754:	27bd0058 	addiu	sp,sp,88

00009758 <func_808DFFC8>:
    9758:	27bdff88 	addiu	sp,sp,-120
    975c:	afbf003c 	sw	ra,60(sp)
    9760:	afb00038 	sw	s0,56(sp)
    9764:	afa40078 	sw	a0,120(sp)
    9768:	afa5007c 	sw	a1,124(sp)
    976c:	c48601e4 	lwc1	$f6,484(a0)
    9770:	44802000 	mtc1	zero,$f4
    9774:	3c060000 	lui	a2,0x0
    9778:	24c60000 	addiu	a2,a2,0
    977c:	4606203c 	c.lt.s	$f4,$f6
    9780:	27a40060 	addiu	a0,sp,96
    9784:	45020093 	bc1fl	99d4 <func_808DFFC8+0x27c>
    9788:	8fbf003c 	lw	ra,60(sp)
    978c:	8ca50000 	lw	a1,0(a1)
    9790:	24071e70 	li	a3,7792
    9794:	0c000000 	jal	0 <func_808D6870>
    9798:	00a08025 	move	s0,a1
    979c:	0c000000 	jal	0 <func_808D6870>
    97a0:	00000000 	nop
    97a4:	8e0202d0 	lw	v0,720(s0)
    97a8:	3c19e700 	lui	t9,0xe700
    97ac:	3c0adb06 	lui	t2,0xdb06
    97b0:	24580008 	addiu	t8,v0,8
    97b4:	ae1802d0 	sw	t8,720(s0)
    97b8:	ac590000 	sw	t9,0(v0)
    97bc:	ac400004 	sw	zero,4(v0)
    97c0:	8e0202d0 	lw	v0,720(s0)
    97c4:	354a0020 	ori	t2,t2,0x20
    97c8:	24190020 	li	t9,32
    97cc:	24490008 	addiu	t1,v0,8
    97d0:	ae0902d0 	sw	t1,720(s0)
    97d4:	ac4a0000 	sw	t2,0(v0)
    97d8:	8fac0078 	lw	t4,120(sp)
    97dc:	8fab007c 	lw	t3,124(sp)
    97e0:	24090020 	li	t1,32
    97e4:	858301a2 	lh	v1,418(t4)
    97e8:	8d640000 	lw	a0,0(t3)
    97ec:	240d0020 	li	t5,32
    97f0:	00030823 	negu	at,v1
    97f4:	000130c0 	sll	a2,at,0x3
    97f8:	0001c080 	sll	t8,at,0x2
    97fc:	240e0040 	li	t6,64
    9800:	240f0001 	li	t7,1
    9804:	afaf0018 	sw	t7,24(sp)
    9808:	afae0014 	sw	t6,20(sp)
    980c:	afb8001c 	sw	t8,28(sp)
    9810:	afa60020 	sw	a2,32(sp)
    9814:	afad0010 	sw	t5,16(sp)
    9818:	afa90028 	sw	t1,40(sp)
    981c:	afb90024 	sw	t9,36(sp)
    9820:	00002825 	move	a1,zero
    9824:	00003825 	move	a3,zero
    9828:	0c000000 	jal	0 <func_808D6870>
    982c:	afa20058 	sw	v0,88(sp)
    9830:	8fa80058 	lw	t0,88(sp)
    9834:	3c0bfa00 	lui	t3,0xfa00
    9838:	3c016400 	lui	at,0x6400
    983c:	ad020004 	sw	v0,4(t0)
    9840:	8e0202d0 	lw	v0,720(s0)
    9844:	8fa40078 	lw	a0,120(sp)
    9848:	3421c800 	ori	at,at,0xc800
    984c:	244a0008 	addiu	t2,v0,8
    9850:	ae0a02d0 	sw	t2,720(s0)
    9854:	ac4b0000 	sw	t3,0(v0)
    9858:	c48801e4 	lwc1	$f8,484(a0)
    985c:	3c0b8200 	lui	t3,0x8200
    9860:	356b0080 	ori	t3,t3,0x80
    9864:	4600428d 	trunc.w.s	$f10,$f8
    9868:	3c0afb00 	lui	t2,0xfb00
    986c:	00003825 	move	a3,zero
    9870:	3c06c316 	lui	a2,0xc316
    9874:	440f5000 	mfc1	t7,$f10
    9878:	00000000 	nop
    987c:	31f800ff 	andi	t8,t7,0xff
    9880:	0301c825 	or	t9,t8,at
    9884:	ac590004 	sw	t9,4(v0)
    9888:	8e0202d0 	lw	v0,720(s0)
    988c:	24010015 	li	at,21
    9890:	24490008 	addiu	t1,v0,8
    9894:	ae0902d0 	sw	t1,720(s0)
    9898:	ac4b0004 	sw	t3,4(v0)
    989c:	ac4a0000 	sw	t2,0(v0)
    98a0:	848c0678 	lh	t4,1656(a0)
    98a4:	1181000b 	beq	t4,at,98d4 <func_808DFFC8+0x17c>
    98a8:	3c0142d2 	lui	at,0x42d2
    98ac:	44817000 	mtc1	at,$f14
    98b0:	44806000 	mtc1	zero,$f12
    98b4:	0c000000 	jal	0 <func_808D6870>
    98b8:	3c06c3c8 	lui	a2,0xc3c8
    98bc:	3c010000 	lui	at,0x0
    98c0:	c42c0000 	lwc1	$f12,0(at)
    98c4:	0c000000 	jal	0 <func_808D6870>
    98c8:	24050001 	li	a1,1
    98cc:	10000010 	b	9910 <func_808DFFC8+0x1b8>
    98d0:	8fad0078 	lw	t5,120(sp)
    98d4:	3c01c248 	lui	at,0xc248
    98d8:	44816000 	mtc1	at,$f12
    98dc:	3c014248 	lui	at,0x4248
    98e0:	44817000 	mtc1	at,$f14
    98e4:	0c000000 	jal	0 <func_808D6870>
    98e8:	00003825 	move	a3,zero
    98ec:	3c010000 	lui	at,0x0
    98f0:	c42c0000 	lwc1	$f12,0(at)
    98f4:	0c000000 	jal	0 <func_808D6870>
    98f8:	24050001 	li	a1,1
    98fc:	3c010000 	lui	at,0x0
    9900:	c42c0000 	lwc1	$f12,0(at)
    9904:	0c000000 	jal	0 <func_808D6870>
    9908:	24050001 	li	a1,1
    990c:	8fad0078 	lw	t5,120(sp)
    9910:	24070001 	li	a3,1
    9914:	c5ac01e8 	lwc1	$f12,488(t5)
    9918:	44066000 	mfc1	a2,$f12
    991c:	0c000000 	jal	0 <func_808D6870>
    9920:	46006386 	mov.s	$f14,$f12
    9924:	8e0202d0 	lw	v0,720(s0)
    9928:	3c0fda38 	lui	t7,0xda38
    992c:	35ef0003 	ori	t7,t7,0x3
    9930:	244e0008 	addiu	t6,v0,8
    9934:	ae0e02d0 	sw	t6,720(s0)
    9938:	ac4f0000 	sw	t7,0(v0)
    993c:	8fb8007c 	lw	t8,124(sp)
    9940:	3c050000 	lui	a1,0x0
    9944:	24a50000 	addiu	a1,a1,0
    9948:	8f040000 	lw	a0,0(t8)
    994c:	24061ea1 	li	a2,7841
    9950:	0c000000 	jal	0 <func_808D6870>
    9954:	afa2004c 	sw	v0,76(sp)
    9958:	8fa3004c 	lw	v1,76(sp)
    995c:	3c040000 	lui	a0,0x0
    9960:	24840000 	addiu	a0,a0,0
    9964:	ac620004 	sw	v0,4(v1)
    9968:	8e0202d0 	lw	v0,720(s0)
    996c:	00045100 	sll	t2,a0,0x4
    9970:	000a5f02 	srl	t3,t2,0x1c
    9974:	24590008 	addiu	t9,v0,8
    9978:	ae1902d0 	sw	t9,720(s0)
    997c:	000b6080 	sll	t4,t3,0x2
    9980:	3c09de00 	lui	t1,0xde00
    9984:	3c0d0000 	lui	t5,0x0
    9988:	01ac6821 	addu	t5,t5,t4
    998c:	3c0100ff 	lui	at,0xff
    9990:	ac490000 	sw	t1,0(v0)
    9994:	8dad0000 	lw	t5,0(t5)
    9998:	3421ffff 	ori	at,at,0xffff
    999c:	00817024 	and	t6,a0,at
    99a0:	3c018000 	lui	at,0x8000
    99a4:	01ae7821 	addu	t7,t5,t6
    99a8:	01e1c021 	addu	t8,t7,at
    99ac:	0c000000 	jal	0 <func_808D6870>
    99b0:	ac580004 	sw	t8,4(v0)
    99b4:	8fb9007c 	lw	t9,124(sp)
    99b8:	3c060000 	lui	a2,0x0
    99bc:	24c60000 	addiu	a2,a2,0
    99c0:	27a40060 	addiu	a0,sp,96
    99c4:	24071ea4 	li	a3,7844
    99c8:	0c000000 	jal	0 <func_808D6870>
    99cc:	8f250000 	lw	a1,0(t9)
    99d0:	8fbf003c 	lw	ra,60(sp)
    99d4:	8fb00038 	lw	s0,56(sp)
    99d8:	27bd0078 	addiu	sp,sp,120
    99dc:	03e00008 	jr	ra
    99e0:	00000000 	nop

000099e4 <func_808E0254>:
    99e4:	27bdff70 	addiu	sp,sp,-144
    99e8:	f7bc0030 	sdc1	$f28,48(sp)
    99ec:	3c010000 	lui	at,0x0
    99f0:	c43c0000 	lwc1	$f28,0(at)
    99f4:	f7ba0028 	sdc1	$f26,40(sp)
    99f8:	3c014298 	lui	at,0x4298
    99fc:	4481d000 	mtc1	at,$f26
    9a00:	f7b80020 	sdc1	$f24,32(sp)
    9a04:	f7b60018 	sdc1	$f22,24(sp)
    9a08:	f7b40010 	sdc1	$f20,16(sp)
    9a0c:	3c0141f0 	lui	at,0x41f0
    9a10:	afb30048 	sw	s3,72(sp)
    9a14:	afb20044 	sw	s2,68(sp)
    9a18:	afb10040 	sw	s1,64(sp)
    9a1c:	afb0003c 	sw	s0,60(sp)
    9a20:	4486a000 	mtc1	a2,$f20
    9a24:	4481b000 	mtc1	at,$f22
    9a28:	4480c000 	mtc1	zero,$f24
    9a2c:	00a08025 	move	s0,a1
    9a30:	00808825 	move	s1,a0
    9a34:	afbf004c 	sw	ra,76(sp)
    9a38:	00009025 	move	s2,zero
    9a3c:	2413000c 	li	s3,12
    9a40:	87aa007e 	lh	t2,126(sp)
    9a44:	4618a032 	c.eq.s	$f20,$f24
    9a48:	00127040 	sll	t6,s2,0x1
    9a4c:	27a40068 	addiu	a0,sp,104
    9a50:	45030007 	bc1tl	9a70 <func_808E0254+0x8c>
    9a54:	4614c03c 	c.lt.s	$f24,$f20
    9a58:	3c0a0000 	lui	t2,0x0
    9a5c:	014e5021 	addu	t2,t2,t6
    9a60:	854a0000 	lh	t2,0(t2)
    9a64:	054200f7 	bltzl	t2,9e44 <func_808E0254+0x460>
    9a68:	26520001 	addiu	s2,s2,1
    9a6c:	4614c03c 	c.lt.s	$f24,$f20
    9a70:	00000000 	nop
    9a74:	45000023 	bc1f	9b04 <func_808E0254+0x120>
    9a78:	00000000 	nop
    9a7c:	01530019 	multu	t2,s3
    9a80:	00007812 	mflo	t7
    9a84:	022f1021 	addu	v0,s1,t7
    9a88:	c44402ec 	lwc1	$f4,748(v0)
    9a8c:	02530019 	multu	s2,s3
    9a90:	c44a02f0 	lwc1	$f10,752(v0)
    9a94:	0000c012 	mflo	t8
    9a98:	02381821 	addu	v1,s1,t8
    9a9c:	c46002ec 	lwc1	$f0,748(v1)
    9aa0:	c46202f0 	lwc1	$f2,752(v1)
    9aa4:	c46c02f4 	lwc1	$f12,756(v1)
    9aa8:	46002181 	sub.s	$f6,$f4,$f0
    9aac:	46025101 	sub.s	$f4,$f10,$f2
    9ab0:	46143202 	mul.s	$f8,$f6,$f20
    9ab4:	46004380 	add.s	$f14,$f8,$f0
    9ab8:	46142182 	mul.s	$f6,$f4,$f20
    9abc:	c44802f4 	lwc1	$f8,756(v0)
    9ac0:	460c4281 	sub.s	$f10,$f8,$f12
    9ac4:	46023400 	add.s	$f16,$f6,$f2
    9ac8:	c6260024 	lwc1	$f6,36(s1)
    9acc:	46145102 	mul.s	$f4,$f10,$f20
    9ad0:	46067201 	sub.s	$f8,$f14,$f6
    9ad4:	e7a80068 	swc1	$f8,104(sp)
    9ad8:	c62a0028 	lwc1	$f10,40(s1)
    9adc:	460c2480 	add.s	$f18,$f4,$f12
    9ae0:	460a8101 	sub.s	$f4,$f16,$f10
    9ae4:	461a2180 	add.s	$f6,$f4,$f26
    9ae8:	46163200 	add.s	$f8,$f6,$f22
    9aec:	46164280 	add.s	$f10,$f8,$f22
    9af0:	e7aa006c 	swc1	$f10,108(sp)
    9af4:	c624002c 	lwc1	$f4,44(s1)
    9af8:	46049181 	sub.s	$f6,$f18,$f4
    9afc:	10000013 	b	9b4c <func_808E0254+0x168>
    9b00:	e7a60070 	swc1	$f6,112(sp)
    9b04:	02530019 	multu	s2,s3
    9b08:	c62a0024 	lwc1	$f10,36(s1)
    9b0c:	0000c812 	mflo	t9
    9b10:	02391821 	addu	v1,s1,t9
    9b14:	c46802ec 	lwc1	$f8,748(v1)
    9b18:	460a4101 	sub.s	$f4,$f8,$f10
    9b1c:	e7a40068 	swc1	$f4,104(sp)
    9b20:	c6280028 	lwc1	$f8,40(s1)
    9b24:	c46602f0 	lwc1	$f6,752(v1)
    9b28:	46083281 	sub.s	$f10,$f6,$f8
    9b2c:	461a5100 	add.s	$f4,$f10,$f26
    9b30:	46162180 	add.s	$f6,$f4,$f22
    9b34:	46163200 	add.s	$f8,$f6,$f22
    9b38:	e7a8006c 	swc1	$f8,108(sp)
    9b3c:	c624002c 	lwc1	$f4,44(s1)
    9b40:	c46a02f4 	lwc1	$f10,756(v1)
    9b44:	46045181 	sub.s	$f6,$f10,$f4
    9b48:	e7a60070 	swc1	$f6,112(sp)
    9b4c:	0c000000 	jal	0 <func_808D6870>
    9b50:	27a5005c 	addiu	a1,sp,92
    9b54:	c7a0005c 	lwc1	$f0,92(sp)
    9b58:	c7a20060 	lwc1	$f2,96(sp)
    9b5c:	3c014200 	lui	at,0x4200
    9b60:	461c0002 	mul.s	$f0,$f0,$f28
    9b64:	44814000 	mtc1	at,$f8
    9b68:	3c020000 	lui	v0,0x0
    9b6c:	461c1082 	mul.s	$f2,$f2,$f28
    9b70:	00521021 	addu	v0,v0,s2
    9b74:	90420000 	lbu	v0,0(v0)
    9b78:	3c0b0000 	lui	t3,0x0
    9b7c:	3c0c0000 	lui	t4,0x0
    9b80:	46080280 	add.s	$f10,$f0,$f8
    9b84:	3c0d0000 	lui	t5,0x0
    9b88:	3c1f0000 	lui	ra,0x0
    9b8c:	4600118d 	trunc.w.s	$f6,$f2
    9b90:	24010002 	li	at,2
    9b94:	27ff0000 	addiu	ra,ra,0
    9b98:	4600510d 	trunc.w.s	$f4,$f10
    9b9c:	44083000 	mfc1	t0,$f6
    9ba0:	25ad0000 	addiu	t5,t5,0
    9ba4:	258c0000 	addiu	t4,t4,0
    9ba8:	44072000 	mfc1	a3,$f4
    9bac:	00084400 	sll	t0,t0,0x10
    9bb0:	00084403 	sra	t0,t0,0x10
    9bb4:	00084180 	sll	t0,t0,0x6
    9bb8:	00084400 	sll	t0,t0,0x10
    9bbc:	00073c00 	sll	a3,a3,0x10
    9bc0:	256b0000 	addiu	t3,t3,0
    9bc4:	240900ff 	li	t1,255
    9bc8:	00073c03 	sra	a3,a3,0x10
    9bcc:	00084403 	sra	t0,t0,0x10
    9bd0:	e7a20060 	swc1	$f2,96(sp)
    9bd4:	14410026 	bne	v0,at,9c70 <func_808E0254+0x28c>
    9bd8:	e7a0005c 	swc1	$f0,92(sp)
    9bdc:	00005025 	move	t2,zero
    9be0:	2405fe80 	li	a1,-384
    9be4:	000ac040 	sll	t8,t2,0x1
    9be8:	01783021 	addu	a2,t3,t8
    9bec:	84c40000 	lh	a0,0(a2)
    9bf0:	254a0001 	addiu	t2,t2,1
    9bf4:	000a5400 	sll	t2,t2,0x10
    9bf8:	00041823 	negu	v1,a0
    9bfc:	00031c00 	sll	v1,v1,0x10
    9c00:	00031c03 	sra	v1,v1,0x10
    9c04:	0064082a 	slt	at,v1,a0
    9c08:	10200012 	beqz	at,9c54 <func_808E0254+0x270>
    9c0c:	000a5403 	sra	t2,t2,0x10
    9c10:	00e3c821 	addu	t9,a3,v1
    9c14:	03287021 	addu	t6,t9,t0
    9c18:	01c51021 	addu	v0,t6,a1
    9c1c:	00021400 	sll	v0,v0,0x10
    9c20:	00021403 	sra	v0,v0,0x10
    9c24:	04400006 	bltz	v0,9c40 <func_808E0254+0x25c>
    9c28:	24630001 	addiu	v1,v1,1
    9c2c:	28411000 	slti	at,v0,4096
    9c30:	10200003 	beqz	at,9c40 <func_808E0254+0x25c>
    9c34:	02027821 	addu	t7,s0,v0
    9c38:	a1e90000 	sb	t1,0(t7)
    9c3c:	84c40000 	lh	a0,0(a2)
    9c40:	00031c00 	sll	v1,v1,0x10
    9c44:	00031c03 	sra	v1,v1,0x10
    9c48:	0064082a 	slt	at,v1,a0
    9c4c:	5420fff1 	bnezl	at,9c14 <func_808E0254+0x230>
    9c50:	00e3c821 	addu	t9,a3,v1
    9c54:	24a50040 	addiu	a1,a1,64
    9c58:	00052c00 	sll	a1,a1,0x10
    9c5c:	2941000c 	slti	at,t2,12
    9c60:	1420ffe0 	bnez	at,9be4 <func_808E0254+0x200>
    9c64:	00052c03 	sra	a1,a1,0x10
    9c68:	10000076 	b	9e44 <func_808E0254+0x460>
    9c6c:	26520001 	addiu	s2,s2,1
    9c70:	24010001 	li	at,1
    9c74:	14410025 	bne	v0,at,9d0c <func_808E0254+0x328>
    9c78:	00005025 	move	t2,zero
    9c7c:	2405ff00 	li	a1,-256
    9c80:	000ac040 	sll	t8,t2,0x1
    9c84:	01983021 	addu	a2,t4,t8
    9c88:	84c40000 	lh	a0,0(a2)
    9c8c:	254a0001 	addiu	t2,t2,1
    9c90:	000a5400 	sll	t2,t2,0x10
    9c94:	00041823 	negu	v1,a0
    9c98:	00031c00 	sll	v1,v1,0x10
    9c9c:	00031c03 	sra	v1,v1,0x10
    9ca0:	0064082a 	slt	at,v1,a0
    9ca4:	10200012 	beqz	at,9cf0 <func_808E0254+0x30c>
    9ca8:	000a5403 	sra	t2,t2,0x10
    9cac:	00e3c821 	addu	t9,a3,v1
    9cb0:	03287021 	addu	t6,t9,t0
    9cb4:	01c51021 	addu	v0,t6,a1
    9cb8:	00021400 	sll	v0,v0,0x10
    9cbc:	00021403 	sra	v0,v0,0x10
    9cc0:	04400006 	bltz	v0,9cdc <func_808E0254+0x2f8>
    9cc4:	24630001 	addiu	v1,v1,1
    9cc8:	28411000 	slti	at,v0,4096
    9ccc:	10200003 	beqz	at,9cdc <func_808E0254+0x2f8>
    9cd0:	02027821 	addu	t7,s0,v0
    9cd4:	a1e90000 	sb	t1,0(t7)
    9cd8:	84c40000 	lh	a0,0(a2)
    9cdc:	00031c00 	sll	v1,v1,0x10
    9ce0:	00031c03 	sra	v1,v1,0x10
    9ce4:	0064082a 	slt	at,v1,a0
    9ce8:	5420fff1 	bnezl	at,9cb0 <func_808E0254+0x2cc>
    9cec:	00e3c821 	addu	t9,a3,v1
    9cf0:	24a50040 	addiu	a1,a1,64
    9cf4:	00052c00 	sll	a1,a1,0x10
    9cf8:	29410008 	slti	at,t2,8
    9cfc:	1420ffe0 	bnez	at,9c80 <func_808E0254+0x29c>
    9d00:	00052c03 	sra	a1,a1,0x10
    9d04:	1000004f 	b	9e44 <func_808E0254+0x460>
    9d08:	26520001 	addiu	s2,s2,1
    9d0c:	14400028 	bnez	v0,9db0 <func_808E0254+0x3cc>
    9d10:	00005025 	move	t2,zero
    9d14:	00005025 	move	t2,zero
    9d18:	2405ff40 	li	a1,-192
    9d1c:	000ac040 	sll	t8,t2,0x1
    9d20:	01b83021 	addu	a2,t5,t8
    9d24:	84c20000 	lh	v0,0(a2)
    9d28:	254a0001 	addiu	t2,t2,1
    9d2c:	000a5400 	sll	t2,t2,0x10
    9d30:	00021823 	negu	v1,v0
    9d34:	00031c00 	sll	v1,v1,0x10
    9d38:	00031c03 	sra	v1,v1,0x10
    9d3c:	2444ffff 	addiu	a0,v0,-1
    9d40:	0064082a 	slt	at,v1,a0
    9d44:	10200013 	beqz	at,9d94 <func_808E0254+0x3b0>
    9d48:	000a5403 	sra	t2,t2,0x10
    9d4c:	00e3c821 	addu	t9,a3,v1
    9d50:	03287021 	addu	t6,t9,t0
    9d54:	01c51021 	addu	v0,t6,a1
    9d58:	00021400 	sll	v0,v0,0x10
    9d5c:	00021403 	sra	v0,v0,0x10
    9d60:	04400007 	bltz	v0,9d80 <func_808E0254+0x39c>
    9d64:	24630001 	addiu	v1,v1,1
    9d68:	28411000 	slti	at,v0,4096
    9d6c:	10200004 	beqz	at,9d80 <func_808E0254+0x39c>
    9d70:	02027821 	addu	t7,s0,v0
    9d74:	a1e90000 	sb	t1,0(t7)
    9d78:	84c40000 	lh	a0,0(a2)
    9d7c:	2484ffff 	addiu	a0,a0,-1
    9d80:	00031c00 	sll	v1,v1,0x10
    9d84:	00031c03 	sra	v1,v1,0x10
    9d88:	0064082a 	slt	at,v1,a0
    9d8c:	5420fff0 	bnezl	at,9d50 <func_808E0254+0x36c>
    9d90:	00e3c821 	addu	t9,a3,v1
    9d94:	24a50040 	addiu	a1,a1,64
    9d98:	00052c00 	sll	a1,a1,0x10
    9d9c:	29410007 	slti	at,t2,7
    9da0:	1420ffde 	bnez	at,9d1c <func_808E0254+0x338>
    9da4:	00052c03 	sra	a1,a1,0x10
    9da8:	10000026 	b	9e44 <func_808E0254+0x460>
    9dac:	26520001 	addiu	s2,s2,1
    9db0:	2405ff80 	li	a1,-128
    9db4:	000ac040 	sll	t8,t2,0x1
    9db8:	03f83021 	addu	a2,ra,t8
    9dbc:	84c20000 	lh	v0,0(a2)
    9dc0:	254a0001 	addiu	t2,t2,1
    9dc4:	000a5400 	sll	t2,t2,0x10
    9dc8:	00021823 	negu	v1,v0
    9dcc:	00031c00 	sll	v1,v1,0x10
    9dd0:	00031c03 	sra	v1,v1,0x10
    9dd4:	2444ffff 	addiu	a0,v0,-1
    9dd8:	0064082a 	slt	at,v1,a0
    9ddc:	10200013 	beqz	at,9e2c <func_808E0254+0x448>
    9de0:	000a5403 	sra	t2,t2,0x10
    9de4:	00e3c821 	addu	t9,a3,v1
    9de8:	03287021 	addu	t6,t9,t0
    9dec:	01c51021 	addu	v0,t6,a1
    9df0:	00021400 	sll	v0,v0,0x10
    9df4:	00021403 	sra	v0,v0,0x10
    9df8:	04400007 	bltz	v0,9e18 <func_808E0254+0x434>
    9dfc:	24630001 	addiu	v1,v1,1
    9e00:	28411000 	slti	at,v0,4096
    9e04:	10200004 	beqz	at,9e18 <func_808E0254+0x434>
    9e08:	02027821 	addu	t7,s0,v0
    9e0c:	a1e90000 	sb	t1,0(t7)
    9e10:	84c40000 	lh	a0,0(a2)
    9e14:	2484ffff 	addiu	a0,a0,-1
    9e18:	00031c00 	sll	v1,v1,0x10
    9e1c:	00031c03 	sra	v1,v1,0x10
    9e20:	0064082a 	slt	at,v1,a0
    9e24:	5420fff0 	bnezl	at,9de8 <func_808E0254+0x404>
    9e28:	00e3c821 	addu	t9,a3,v1
    9e2c:	24a50040 	addiu	a1,a1,64
    9e30:	00052c00 	sll	a1,a1,0x10
    9e34:	29410006 	slti	at,t2,6
    9e38:	1420ffde 	bnez	at,9db4 <func_808E0254+0x3d0>
    9e3c:	00052c03 	sra	a1,a1,0x10
    9e40:	26520001 	addiu	s2,s2,1
    9e44:	00129400 	sll	s2,s2,0x10
    9e48:	00129403 	sra	s2,s2,0x10
    9e4c:	2a41000f 	slti	at,s2,15
    9e50:	5420fefd 	bnezl	at,9a48 <func_808E0254+0x64>
    9e54:	4618a032 	c.eq.s	$f20,$f24
    9e58:	8fbf004c 	lw	ra,76(sp)
    9e5c:	a7aa007e 	sh	t2,126(sp)
    9e60:	d7b40010 	ldc1	$f20,16(sp)
    9e64:	d7b60018 	ldc1	$f22,24(sp)
    9e68:	d7b80020 	ldc1	$f24,32(sp)
    9e6c:	d7ba0028 	ldc1	$f26,40(sp)
    9e70:	d7bc0030 	ldc1	$f28,48(sp)
    9e74:	8fb0003c 	lw	s0,60(sp)
    9e78:	8fb10040 	lw	s1,64(sp)
    9e7c:	8fb20044 	lw	s2,68(sp)
    9e80:	8fb30048 	lw	s3,72(sp)
    9e84:	03e00008 	jr	ra
    9e88:	27bd0090 	addiu	sp,sp,144

00009e8c <func_808E06FC>:
    9e8c:	27bdff68 	addiu	sp,sp,-152
    9e90:	afb40050 	sw	s4,80(sp)
    9e94:	afb3004c 	sw	s3,76(sp)
    9e98:	afb10044 	sw	s1,68(sp)
    9e9c:	00808825 	move	s1,a0
    9ea0:	00a0a025 	move	s4,a1
    9ea4:	afbf0064 	sw	ra,100(sp)
    9ea8:	afbe0060 	sw	s8,96(sp)
    9eac:	afb7005c 	sw	s7,92(sp)
    9eb0:	afb60058 	sw	s6,88(sp)
    9eb4:	afb50054 	sw	s5,84(sp)
    9eb8:	afb20048 	sw	s2,72(sp)
    9ebc:	afb00040 	sw	s0,64(sp)
    9ec0:	f7bc0038 	sdc1	$f28,56(sp)
    9ec4:	f7ba0030 	sdc1	$f26,48(sp)
    9ec8:	f7b80028 	sdc1	$f24,40(sp)
    9ecc:	f7b60020 	sdc1	$f22,32(sp)
    9ed0:	f7b40018 	sdc1	$f20,24(sp)
    9ed4:	afa600a0 	sw	a2,160(sp)
    9ed8:	00801025 	move	v0,a0
    9edc:	00009825 	move	s3,zero
    9ee0:	26730001 	addiu	s3,s3,1
    9ee4:	00139c00 	sll	s3,s3,0x10
    9ee8:	00139c03 	sra	s3,s3,0x10
    9eec:	2a610400 	slti	at,s3,1024
    9ef0:	24420004 	addiu	v0,v0,4
    9ef4:	1420fffa 	bnez	at,9ee0 <func_808E06FC+0x54>
    9ef8:	ac40fffc 	sw	zero,-4(v0)
    9efc:	3c013f80 	lui	at,0x3f80
    9f00:	44816000 	mtc1	at,$f12
    9f04:	0c000000 	jal	0 <func_808D6870>
    9f08:	00002825 	move	a1,zero
    9f0c:	3c0140a0 	lui	at,0x40a0
    9f10:	4481a000 	mtc1	at,$f20
    9f14:	00009825 	move	s3,zero
    9f18:	44932000 	mtc1	s3,$f4
    9f1c:	02802025 	move	a0,s4
    9f20:	02202825 	move	a1,s1
    9f24:	468021a0 	cvt.s.w	$f6,$f4
    9f28:	46143203 	div.s	$f8,$f6,$f20
    9f2c:	44064000 	mfc1	a2,$f8
    9f30:	0c000000 	jal	0 <func_808D6870>
    9f34:	00000000 	nop
    9f38:	26730001 	addiu	s3,s3,1
    9f3c:	00139c00 	sll	s3,s3,0x10
    9f40:	00139c03 	sra	s3,s3,0x10
    9f44:	2a610006 	slti	at,s3,6
    9f48:	5420fff4 	bnezl	at,9f1c <func_808E06FC+0x90>
    9f4c:	44932000 	mtc1	s3,$f4
    9f50:	3c014200 	lui	at,0x4200
    9f54:	4481e000 	mtc1	at,$f28
    9f58:	3c0141f0 	lui	at,0x41f0
    9f5c:	4481d000 	mtc1	at,$f26
    9f60:	3c0142c8 	lui	at,0x42c8
    9f64:	4481c000 	mtc1	at,$f24
    9f68:	3c014298 	lui	at,0x4298
    9f6c:	4481b000 	mtc1	at,$f22
    9f70:	3c010000 	lui	at,0x0
    9f74:	3c150000 	lui	s5,0x0
    9f78:	26b50000 	addiu	s5,s5,0
    9f7c:	c4340000 	lwc1	$f20,0(at)
    9f80:	00009825 	move	s3,zero
    9f84:	27be0070 	addiu	s8,sp,112
    9f88:	27b7007c 	addiu	s7,sp,124
    9f8c:	2416000c 	li	s6,12
    9f90:	241000ff 	li	s0,255
    9f94:	00009025 	move	s2,zero
    9f98:	02560019 	multu	s2,s6
    9f9c:	001378c0 	sll	t7,s3,0x3
    9fa0:	01f37823 	subu	t7,t7,s3
    9fa4:	8eae0000 	lw	t6,0(s5)
    9fa8:	000f78c0 	sll	t7,t7,0x3
    9fac:	01f37821 	addu	t7,t7,s3
    9fb0:	000f78c0 	sll	t7,t7,0x3
    9fb4:	01cfc021 	addu	t8,t6,t7
    9fb8:	c6900024 	lwc1	$f16,36(s4)
    9fbc:	02e02025 	move	a0,s7
    9fc0:	0000c812 	mflo	t9
    9fc4:	03191021 	addu	v0,t8,t9
    9fc8:	c44a0158 	lwc1	$f10,344(v0)
    9fcc:	03c02825 	move	a1,s8
    9fd0:	46105481 	sub.s	$f18,$f10,$f16
    9fd4:	e7b2007c 	swc1	$f18,124(sp)
    9fd8:	c6860028 	lwc1	$f6,40(s4)
    9fdc:	c444015c 	lwc1	$f4,348(v0)
    9fe0:	46062201 	sub.s	$f8,$f4,$f6
    9fe4:	46164280 	add.s	$f10,$f8,$f22
    9fe8:	46185400 	add.s	$f16,$f10,$f24
    9fec:	461a8480 	add.s	$f18,$f16,$f26
    9ff0:	e7b20080 	swc1	$f18,128(sp)
    9ff4:	c686002c 	lwc1	$f6,44(s4)
    9ff8:	c4440160 	lwc1	$f4,352(v0)
    9ffc:	46062201 	sub.s	$f8,$f4,$f6
    a000:	0c000000 	jal	0 <func_808D6870>
    a004:	e7a80084 	swc1	$f8,132(sp)
    a008:	c7aa0070 	lwc1	$f10,112(sp)
    a00c:	c7b20074 	lwc1	$f18,116(sp)
    a010:	001358c0 	sll	t3,s3,0x3
    a014:	46145402 	mul.s	$f16,$f10,$f20
    a018:	01735823 	subu	t3,t3,s3
    a01c:	8eaa0000 	lw	t2,0(s5)
    a020:	46149102 	mul.s	$f4,$f18,$f20
    a024:	000b58c0 	sll	t3,t3,0x3
    a028:	01735821 	addu	t3,t3,s3
    a02c:	000b58c0 	sll	t3,t3,0x3
    a030:	014b6021 	addu	t4,t2,t3
    a034:	461c8180 	add.s	$f6,$f16,$f28
    a038:	e7b00070 	swc1	$f16,112(sp)
    a03c:	e7a40074 	swc1	$f4,116(sp)
    a040:	4600228d 	trunc.w.s	$f10,$f4
    a044:	01926821 	addu	t5,t4,s2
    a048:	91ae0308 	lbu	t6,776(t5)
    a04c:	4600320d 	trunc.w.s	$f8,$f6
    a050:	44065000 	mfc1	a2,$f10
    a054:	26520001 	addiu	s2,s2,1
    a058:	00129400 	sll	s2,s2,0x10
    a05c:	44054000 	mfc1	a1,$f8
    a060:	00063400 	sll	a2,a2,0x10
    a064:	00063403 	sra	a2,a2,0x10
    a068:	00063180 	sll	a2,a2,0x6
    a06c:	00063400 	sll	a2,a2,0x10
    a070:	00052c00 	sll	a1,a1,0x10
    a074:	00052c03 	sra	a1,a1,0x10
    a078:	15c0001e 	bnez	t6,a0f4 <func_808E06FC+0x268>
    a07c:	00063403 	sra	a2,a2,0x10
    a080:	2407ffff 	li	a3,-1
    a084:	2404ffc0 	li	a0,-64
    a088:	2403fffd 	li	v1,-3
    a08c:	00a37821 	addu	t7,a1,v1
    a090:	01e6c021 	addu	t8,t7,a2
    a094:	03041021 	addu	v0,t8,a0
    a098:	00021400 	sll	v0,v0,0x10
    a09c:	00021403 	sra	v0,v0,0x10
    a0a0:	04400005 	bltz	v0,a0b8 <func_808E06FC+0x22c>
    a0a4:	24630001 	addiu	v1,v1,1
    a0a8:	28411000 	slti	at,v0,4096
    a0ac:	10200002 	beqz	at,a0b8 <func_808E06FC+0x22c>
    a0b0:	0222c821 	addu	t9,s1,v0
    a0b4:	a3300000 	sb	s0,0(t9)
    a0b8:	00031c00 	sll	v1,v1,0x10
    a0bc:	00031c03 	sra	v1,v1,0x10
    a0c0:	28610004 	slti	at,v1,4
    a0c4:	5420fff2 	bnezl	at,a090 <func_808E06FC+0x204>
    a0c8:	00a37821 	addu	t7,a1,v1
    a0cc:	24e70001 	addiu	a3,a3,1
    a0d0:	00073c00 	sll	a3,a3,0x10
    a0d4:	00073c03 	sra	a3,a3,0x10
    a0d8:	24840040 	addiu	a0,a0,64
    a0dc:	00042400 	sll	a0,a0,0x10
    a0e0:	28e10002 	slti	at,a3,2
    a0e4:	1420ffe8 	bnez	at,a088 <func_808E06FC+0x1fc>
    a0e8:	00042403 	sra	a0,a0,0x10
    a0ec:	1000001d 	b	a164 <func_808E06FC+0x2d8>
    a0f0:	00129403 	sra	s2,s2,0x10
    a0f4:	2407ffff 	li	a3,-1
    a0f8:	2404ffc0 	li	a0,-64
    a0fc:	2403ffff 	li	v1,-1
    a100:	00a34021 	addu	t0,a1,v1
    a104:	01064821 	addu	t1,t0,a2
    a108:	01241021 	addu	v0,t1,a0
    a10c:	00021400 	sll	v0,v0,0x10
    a110:	00021403 	sra	v0,v0,0x10
    a114:	04400005 	bltz	v0,a12c <func_808E06FC+0x2a0>
    a118:	24630001 	addiu	v1,v1,1
    a11c:	28411000 	slti	at,v0,4096
    a120:	10200002 	beqz	at,a12c <func_808E06FC+0x2a0>
    a124:	02225021 	addu	t2,s1,v0
    a128:	a1500000 	sb	s0,0(t2)
    a12c:	00031c00 	sll	v1,v1,0x10
    a130:	00031c03 	sra	v1,v1,0x10
    a134:	28610002 	slti	at,v1,2
    a138:	5420fff2 	bnezl	at,a104 <func_808E06FC+0x278>
    a13c:	00a34021 	addu	t0,a1,v1
    a140:	24e70001 	addiu	a3,a3,1
    a144:	00073c00 	sll	a3,a3,0x10
    a148:	00073c03 	sra	a3,a3,0x10
    a14c:	24840040 	addiu	a0,a0,64
    a150:	00042400 	sll	a0,a0,0x10
    a154:	28e10002 	slti	at,a3,2
    a158:	1420ffe8 	bnez	at,a0fc <func_808E06FC+0x270>
    a15c:	00042403 	sra	a0,a0,0x10
    a160:	00129403 	sra	s2,s2,0x10
    a164:	2a41000c 	slti	at,s2,12
    a168:	1420ff8b 	bnez	at,9f98 <func_808E06FC+0x10c>
    a16c:	00000000 	nop
    a170:	26730001 	addiu	s3,s3,1
    a174:	00139c00 	sll	s3,s3,0x10
    a178:	00139c03 	sra	s3,s3,0x10
    a17c:	2a61000c 	slti	at,s3,12
    a180:	5420ff85 	bnezl	at,9f98 <func_808E06FC+0x10c>
    a184:	00009025 	move	s2,zero
    a188:	8fbf0064 	lw	ra,100(sp)
    a18c:	d7b40018 	ldc1	$f20,24(sp)
    a190:	d7b60020 	ldc1	$f22,32(sp)
    a194:	d7b80028 	ldc1	$f24,40(sp)
    a198:	d7ba0030 	ldc1	$f26,48(sp)
    a19c:	d7bc0038 	ldc1	$f28,56(sp)
    a1a0:	8fb00040 	lw	s0,64(sp)
    a1a4:	8fb10044 	lw	s1,68(sp)
    a1a8:	8fb20048 	lw	s2,72(sp)
    a1ac:	8fb3004c 	lw	s3,76(sp)
    a1b0:	8fb40050 	lw	s4,80(sp)
    a1b4:	8fb50054 	lw	s5,84(sp)
    a1b8:	8fb60058 	lw	s6,88(sp)
    a1bc:	8fb7005c 	lw	s7,92(sp)
    a1c0:	8fbe0060 	lw	s8,96(sp)
    a1c4:	03e00008 	jr	ra
    a1c8:	27bd0098 	addiu	sp,sp,152

0000a1cc <func_808E0A3C>:
    a1cc:	27bdff88 	addiu	sp,sp,-120
    a1d0:	afbf001c 	sw	ra,28(sp)
    a1d4:	afb00018 	sw	s0,24(sp)
    a1d8:	afa40078 	sw	a0,120(sp)
    a1dc:	afa5007c 	sw	a1,124(sp)
    a1e0:	afa60080 	sw	a2,128(sp)
    a1e4:	8cd00000 	lw	s0,0(a2)
    a1e8:	3c060000 	lui	a2,0x0
    a1ec:	24c60000 	addiu	a2,a2,0
    a1f0:	27a40058 	addiu	a0,sp,88
    a1f4:	240720b4 	li	a3,8372
    a1f8:	0c000000 	jal	0 <func_808D6870>
    a1fc:	02002825 	move	a1,s0
    a200:	8faf0080 	lw	t7,128(sp)
    a204:	0c000000 	jal	0 <func_808D6870>
    a208:	8de40000 	lw	a0,0(t7)
    a20c:	8e0202c0 	lw	v0,704(s0)
    a210:	8fa5007c 	lw	a1,124(sp)
    a214:	3c19fa00 	lui	t9,0xfa00
    a218:	24580008 	addiu	t8,v0,8
    a21c:	ae1802c0 	sw	t8,704(s0)
    a220:	24080032 	li	t0,50
    a224:	ac480004 	sw	t0,4(v0)
    a228:	ac590000 	sw	t9,0(v0)
    a22c:	8e0202c0 	lw	v0,704(s0)
    a230:	3c0afb00 	lui	t2,0xfb00
    a234:	24490008 	addiu	t1,v0,8
    a238:	ae0902c0 	sw	t1,704(s0)
    a23c:	ac400004 	sw	zero,4(v0)
    a240:	ac4a0000 	sw	t2,0(v0)
    a244:	84ab0678 	lh	t3,1656(a1)
    a248:	29610064 	slti	at,t3,100
    a24c:	10200017 	beqz	at,a2ac <func_808E0A3C+0xe0>
    a250:	3c014120 	lui	at,0x4120
    a254:	44813000 	mtc1	at,$f6
    a258:	c4a40028 	lwc1	$f4,40(a1)
    a25c:	44811000 	mtc1	at,$f2
    a260:	3c01428c 	lui	at,0x428c
    a264:	46062201 	sub.s	$f8,$f4,$f6
    a268:	44815000 	mtc1	at,$f10
    a26c:	3c01c0a0 	lui	at,0xc0a0
    a270:	44819000 	mtc1	at,$f18
    a274:	460a4400 	add.s	$f16,$f8,$f10
    a278:	c4a8002c 	lwc1	$f8,44(a1)
    a27c:	44807000 	mtc1	zero,$f14
    a280:	c4ac0024 	lwc1	$f12,36(a1)
    a284:	46128102 	mul.s	$f4,$f16,$f18
    a288:	00003825 	move	a3,zero
    a28c:	46022183 	div.s	$f6,$f4,$f2
    a290:	46023000 	add.s	$f0,$f6,$f2
    a294:	46004280 	add.s	$f10,$f8,$f0
    a298:	44065000 	mfc1	a2,$f10
    a29c:	0c000000 	jal	0 <func_808D6870>
    a2a0:	00000000 	nop
    a2a4:	1000000c 	b	a2d8 <func_808E0A3C+0x10c>
    a2a8:	00000000 	nop
    a2ac:	3c010000 	lui	at,0x0
    a2b0:	c42e0000 	lwc1	$f14,0(at)
    a2b4:	3c0141a0 	lui	at,0x41a0
    a2b8:	44819000 	mtc1	at,$f18
    a2bc:	c4b0002c 	lwc1	$f16,44(a1)
    a2c0:	c4ac0024 	lwc1	$f12,36(a1)
    a2c4:	00003825 	move	a3,zero
    a2c8:	46128101 	sub.s	$f4,$f16,$f18
    a2cc:	44062000 	mfc1	a2,$f4
    a2d0:	0c000000 	jal	0 <func_808D6870>
    a2d4:	00000000 	nop
    a2d8:	3c010000 	lui	at,0x0
    a2dc:	c42c0000 	lwc1	$f12,0(at)
    a2e0:	3c013f80 	lui	at,0x3f80
    a2e4:	44817000 	mtc1	at,$f14
    a2e8:	44066000 	mfc1	a2,$f12
    a2ec:	0c000000 	jal	0 <func_808D6870>
    a2f0:	24070001 	li	a3,1
    a2f4:	8e0202c0 	lw	v0,704(s0)
    a2f8:	3c0dda38 	lui	t5,0xda38
    a2fc:	35ad0003 	ori	t5,t5,0x3
    a300:	244c0008 	addiu	t4,v0,8
    a304:	ae0c02c0 	sw	t4,704(s0)
    a308:	ac4d0000 	sw	t5,0(v0)
    a30c:	8fae0080 	lw	t6,128(sp)
    a310:	3c050000 	lui	a1,0x0
    a314:	24a50000 	addiu	a1,a1,0
    a318:	8dc40000 	lw	a0,0(t6)
    a31c:	240620cc 	li	a2,8396
    a320:	0c000000 	jal	0 <func_808D6870>
    a324:	afa2004c 	sw	v0,76(sp)
    a328:	8fa3004c 	lw	v1,76(sp)
    a32c:	3c180000 	lui	t8,0x0
    a330:	27180000 	addiu	t8,t8,0
    a334:	ac620004 	sw	v0,4(v1)
    a338:	8e0202c0 	lw	v0,704(s0)
    a33c:	3c04de00 	lui	a0,0xde00
    a340:	3c08fd90 	lui	t0,0xfd90
    a344:	244f0008 	addiu	t7,v0,8
    a348:	ae0f02c0 	sw	t7,704(s0)
    a34c:	ac580004 	sw	t8,4(v0)
    a350:	ac440000 	sw	a0,0(v0)
    a354:	8e0202c0 	lw	v0,704(s0)
    a358:	3c0c0709 	lui	t4,0x709
    a35c:	358c8260 	ori	t4,t4,0x8260
    a360:	24590008 	addiu	t9,v0,8
    a364:	ae1902c0 	sw	t9,704(s0)
    a368:	ac480000 	sw	t0,0(v0)
    a36c:	8fa90078 	lw	t1,120(sp)
    a370:	3c0bf590 	lui	t3,0xf590
    a374:	3c0ee600 	lui	t6,0xe600
    a378:	ac490004 	sw	t1,4(v0)
    a37c:	8e0202c0 	lw	v0,704(s0)
    a380:	3c19077f 	lui	t9,0x77f
    a384:	3739f100 	ori	t9,t9,0xf100
    a388:	244a0008 	addiu	t2,v0,8
    a38c:	ae0a02c0 	sw	t2,704(s0)
    a390:	ac4c0004 	sw	t4,4(v0)
    a394:	ac4b0000 	sw	t3,0(v0)
    a398:	8e0202c0 	lw	v0,704(s0)
    a39c:	3c18f300 	lui	t8,0xf300
    a3a0:	3c09e700 	lui	t1,0xe700
    a3a4:	244d0008 	addiu	t5,v0,8
    a3a8:	ae0d02c0 	sw	t5,704(s0)
    a3ac:	ac400004 	sw	zero,4(v0)
    a3b0:	ac4e0000 	sw	t6,0(v0)
    a3b4:	8e0202c0 	lw	v0,704(s0)
    a3b8:	3c0bf588 	lui	t3,0xf588
    a3bc:	3c0c0009 	lui	t4,0x9
    a3c0:	244f0008 	addiu	t7,v0,8
    a3c4:	ae0f02c0 	sw	t7,704(s0)
    a3c8:	ac590004 	sw	t9,4(v0)
    a3cc:	ac580000 	sw	t8,0(v0)
    a3d0:	8e0202c0 	lw	v0,704(s0)
    a3d4:	358c8260 	ori	t4,t4,0x8260
    a3d8:	356b1000 	ori	t3,t3,0x1000
    a3dc:	24480008 	addiu	t0,v0,8
    a3e0:	ae0802c0 	sw	t0,704(s0)
    a3e4:	ac400004 	sw	zero,4(v0)
    a3e8:	ac490000 	sw	t1,0(v0)
    a3ec:	8e0202c0 	lw	v0,704(s0)
    a3f0:	3c0f000f 	lui	t7,0xf
    a3f4:	35efc0fc 	ori	t7,t7,0xc0fc
    a3f8:	244a0008 	addiu	t2,v0,8
    a3fc:	ae0a02c0 	sw	t2,704(s0)
    a400:	ac4c0004 	sw	t4,4(v0)
    a404:	ac4b0000 	sw	t3,0(v0)
    a408:	8e0202c0 	lw	v0,704(s0)
    a40c:	3c0ef200 	lui	t6,0xf200
    a410:	3c190000 	lui	t9,0x0
    a414:	244d0008 	addiu	t5,v0,8
    a418:	ae0d02c0 	sw	t5,704(s0)
    a41c:	ac4f0004 	sw	t7,4(v0)
    a420:	ac4e0000 	sw	t6,0(v0)
    a424:	8e0202c0 	lw	v0,704(s0)
    a428:	27390000 	addiu	t9,t9,0
    a42c:	3c060000 	lui	a2,0x0
    a430:	24580008 	addiu	t8,v0,8
    a434:	ae1802c0 	sw	t8,704(s0)
    a438:	ac440000 	sw	a0,0(v0)
    a43c:	27a40058 	addiu	a0,sp,88
    a440:	24c60000 	addiu	a2,a2,0
    a444:	02002825 	move	a1,s0
    a448:	240720ea 	li	a3,8426
    a44c:	0c000000 	jal	0 <func_808D6870>
    a450:	ac590004 	sw	t9,4(v0)
    a454:	8fbf001c 	lw	ra,28(sp)
    a458:	8fb00018 	lw	s0,24(sp)
    a45c:	27bd0078 	addiu	sp,sp,120
    a460:	03e00008 	jr	ra
    a464:	00000000 	nop

0000a468 <BossGanon_Draw>:
    a468:	27bdffa0 	addiu	sp,sp,-96
    a46c:	afb1002c 	sw	s1,44(sp)
    a470:	afb00028 	sw	s0,40(sp)
    a474:	00808025 	move	s0,a0
    a478:	afbf0034 	sw	ra,52(sp)
    a47c:	afb20030 	sw	s2,48(sp)
    a480:	00a08825 	move	s1,a1
    a484:	8ca40000 	lw	a0,0(a1)
    a488:	0c000000 	jal	0 <func_808D6870>
    a48c:	24051000 	li	a1,4096
    a490:	afa20054 	sw	v0,84(sp)
    a494:	8e250000 	lw	a1,0(s1)
    a498:	3c060000 	lui	a2,0x0
    a49c:	24c60000 	addiu	a2,a2,0
    a4a0:	27a40040 	addiu	a0,sp,64
    a4a4:	240723b2 	li	a3,9138
    a4a8:	0c000000 	jal	0 <func_808D6870>
    a4ac:	00a09025 	move	s2,a1
    a4b0:	0c000000 	jal	0 <func_808D6870>
    a4b4:	8e240000 	lw	a0,0(s1)
    a4b8:	0c000000 	jal	0 <func_808D6870>
    a4bc:	8e240000 	lw	a0,0(s1)
    a4c0:	860e01a6 	lh	t6,422(s0)
    a4c4:	31cf0002 	andi	t7,t6,0x2
    a4c8:	51e0000d 	beqzl	t7,a500 <BossGanon_Draw+0x98>
    a4cc:	8e4302d0 	lw	v1,720(s2)
    a4d0:	8e4402c0 	lw	a0,704(s2)
    a4d4:	24180384 	li	t8,900
    a4d8:	2419044b 	li	t9,1099
    a4dc:	afb90018 	sw	t9,24(sp)
    a4e0:	afb80014 	sw	t8,20(sp)
    a4e4:	afa00010 	sw	zero,16(sp)
    a4e8:	240500ff 	li	a1,255
    a4ec:	24060032 	li	a2,50
    a4f0:	0c000000 	jal	0 <func_808D6870>
    a4f4:	00003825 	move	a3,zero
    a4f8:	ae4202c0 	sw	v0,704(s2)
    a4fc:	8e4302d0 	lw	v1,720(s2)
    a500:	3c040601 	lui	a0,0x601
    a504:	24849a20 	addiu	a0,a0,-26080
    a508:	00045100 	sll	t2,a0,0x4
    a50c:	000a5f02 	srl	t3,t2,0x1c
    a510:	3c09db06 	lui	t1,0xdb06
    a514:	24680008 	addiu	t0,v1,8
    a518:	ae4802d0 	sw	t0,720(s2)
    a51c:	35290020 	ori	t1,t1,0x20
    a520:	000b6080 	sll	t4,t3,0x2
    a524:	3c0d0000 	lui	t5,0x0
    a528:	01ac6821 	addu	t5,t5,t4
    a52c:	3c0100ff 	lui	at,0xff
    a530:	ac690000 	sw	t1,0(v1)
    a534:	8dad0000 	lw	t5,0(t5)
    a538:	3421ffff 	ori	at,at,0xffff
    a53c:	00817024 	and	t6,a0,at
    a540:	3c018000 	lui	at,0x8000
    a544:	01ae7821 	addu	t7,t5,t6
    a548:	01e1c021 	addu	t8,t7,at
    a54c:	ac780004 	sw	t8,4(v1)
    a550:	92070152 	lbu	a3,338(s0)
    a554:	8e060170 	lw	a2,368(s0)
    a558:	8e050154 	lw	a1,340(s0)
    a55c:	3c080000 	lui	t0,0x0
    a560:	3c190000 	lui	t9,0x0
    a564:	27390000 	addiu	t9,t9,0
    a568:	25080000 	addiu	t0,t0,0
    a56c:	afa80014 	sw	t0,20(sp)
    a570:	afb90010 	sw	t9,16(sp)
    a574:	afb00018 	sw	s0,24(sp)
    a578:	0c000000 	jal	0 <func_808D6870>
    a57c:	02202025 	move	a0,s1
    a580:	3c0141f0 	lui	at,0x41f0
    a584:	44814000 	mtc1	at,$f8
    a588:	c60602fc 	lwc1	$f6,764(s0)
    a58c:	c60402f8 	lwc1	$f4,760(s0)
    a590:	c6100300 	lwc1	$f16,768(s0)
    a594:	46083280 	add.s	$f10,$f6,$f8
    a598:	e60402ec 	swc1	$f4,748(s0)
    a59c:	e61002f4 	swc1	$f16,756(s0)
    a5a0:	02202025 	move	a0,s1
    a5a4:	e60a02f0 	swc1	$f10,752(s0)
    a5a8:	0c000000 	jal	0 <func_808D6870>
    a5ac:	8e4502c0 	lw	a1,704(s2)
    a5b0:	ae4202c0 	sw	v0,704(s2)
    a5b4:	0c000000 	jal	0 <func_808D6870>
    a5b8:	02202025 	move	a0,s1
    a5bc:	3c020000 	lui	v0,0x0
    a5c0:	24420000 	addiu	v0,v0,0
    a5c4:	8c490000 	lw	t1,0(v0)
    a5c8:	8e0b0024 	lw	t3,36(s0)
    a5cc:	02002025 	move	a0,s0
    a5d0:	02202825 	move	a1,s1
    a5d4:	ad2b0024 	sw	t3,36(t1)
    a5d8:	8e0a0028 	lw	t2,40(s0)
    a5dc:	ad2a0028 	sw	t2,40(t1)
    a5e0:	8e0b002c 	lw	t3,44(s0)
    a5e4:	ad2b002c 	sw	t3,44(t1)
    a5e8:	8c4c0000 	lw	t4,0(v0)
    a5ec:	8e0e0214 	lw	t6,532(s0)
    a5f0:	ad8e16d4 	sw	t6,5844(t4)
    a5f4:	8e0d0218 	lw	t5,536(s0)
    a5f8:	ad8d16d8 	sw	t5,5848(t4)
    a5fc:	8e0e021c 	lw	t6,540(s0)
    a600:	ad8e16dc 	sw	t6,5852(t4)
    a604:	8c4f0000 	lw	t7,0(v0)
    a608:	8e190220 	lw	t9,544(s0)
    a60c:	adf916e0 	sw	t9,5856(t7)
    a610:	8e180224 	lw	t8,548(s0)
    a614:	adf816e4 	sw	t8,5860(t7)
    a618:	8e190228 	lw	t9,552(s0)
    a61c:	adf916e8 	sw	t9,5864(t7)
    a620:	8c480000 	lw	t0,0(v0)
    a624:	8e0a022c 	lw	t2,556(s0)
    a628:	ad0a16ec 	sw	t2,5868(t0)
    a62c:	8e090230 	lw	t1,560(s0)
    a630:	ad0916f0 	sw	t1,5872(t0)
    a634:	8e0a0234 	lw	t2,564(s0)
    a638:	ad0a16f4 	sw	t2,5876(t0)
    a63c:	8e0d0238 	lw	t5,568(s0)
    a640:	8c4b0000 	lw	t3,0(v0)
    a644:	ad6d16f8 	sw	t5,5880(t3)
    a648:	8e0c023c 	lw	t4,572(s0)
    a64c:	ad6c16fc 	sw	t4,5884(t3)
    a650:	8e0d0240 	lw	t5,576(s0)
    a654:	0c000000 	jal	0 <func_808D6870>
    a658:	ad6d1700 	sw	t5,5888(t3)
    a65c:	02002025 	move	a0,s0
    a660:	0c000000 	jal	0 <func_808D6870>
    a664:	02202825 	move	a1,s1
    a668:	02002025 	move	a0,s0
    a66c:	0c000000 	jal	0 <func_808D6870>
    a670:	02202825 	move	a1,s1
    a674:	02002025 	move	a0,s0
    a678:	0c000000 	jal	0 <func_808D6870>
    a67c:	02202825 	move	a1,s1
    a680:	02002025 	move	a0,s0
    a684:	0c000000 	jal	0 <func_808D6870>
    a688:	02202825 	move	a1,s1
    a68c:	8fa40054 	lw	a0,84(sp)
    a690:	02002825 	move	a1,s0
    a694:	0c000000 	jal	0 <func_808D6870>
    a698:	02203025 	move	a2,s1
    a69c:	8fa40054 	lw	a0,84(sp)
    a6a0:	02002825 	move	a1,s0
    a6a4:	0c000000 	jal	0 <func_808D6870>
    a6a8:	02203025 	move	a2,s1
    a6ac:	3c060000 	lui	a2,0x0
    a6b0:	24c60000 	addiu	a2,a2,0
    a6b4:	27a40040 	addiu	a0,sp,64
    a6b8:	8e250000 	lw	a1,0(s1)
    a6bc:	0c000000 	jal	0 <func_808D6870>
    a6c0:	240724b1 	li	a3,9393
    a6c4:	8fbf0034 	lw	ra,52(sp)
    a6c8:	8fb00028 	lw	s0,40(sp)
    a6cc:	8fb1002c 	lw	s1,44(sp)
    a6d0:	8fb20030 	lw	s2,48(sp)
    a6d4:	03e00008 	jr	ra
    a6d8:	27bd0060 	addiu	sp,sp,96

0000a6dc <func_808E0F4C>:
    a6dc:	27bdfff0 	addiu	sp,sp,-16
    a6e0:	f7b40008 	sdc1	$f20,8(sp)
    a6e4:	8ca31c64 	lw	v1,7268(a1)
    a6e8:	3c01c1a0 	lui	at,0xc1a0
    a6ec:	50600032 	beqzl	v1,a7b8 <func_808E0F4C+0xdc>
    a6f0:	00001025 	move	v0,zero
    a6f4:	4481a000 	mtc1	at,$f20
    a6f8:	3c0141a0 	lui	at,0x41a0
    a6fc:	44819000 	mtc1	at,$f18
    a700:	3c014270 	lui	at,0x4270
    a704:	44818000 	mtc1	at,$f16
    a708:	24020106 	li	v0,262
    a70c:	10640004 	beq	v1,a0,a720 <func_808E0F4C+0x44>
    a710:	00000000 	nop
    a714:	846e0000 	lh	t6,0(v1)
    a718:	504e0004 	beql	v0,t6,a72c <func_808E0F4C+0x50>
    a71c:	c4640024 	lwc1	$f4,36(v1)
    a720:	10000022 	b	a7ac <func_808E0F4C+0xd0>
    a724:	8c630124 	lw	v1,292(v1)
    a728:	c4640024 	lwc1	$f4,36(v1)
    a72c:	c4c60000 	lwc1	$f6,0(a2)
    a730:	c4680028 	lwc1	$f8,40(v1)
    a734:	c4ca0004 	lwc1	$f10,4(a2)
    a738:	46062081 	sub.s	$f2,$f4,$f6
    a73c:	c4c60008 	lwc1	$f6,8(a2)
    a740:	c464002c 	lwc1	$f4,44(v1)
    a744:	460a4301 	sub.s	$f12,$f8,$f10
    a748:	46001005 	abs.s	$f0,$f2
    a74c:	46062381 	sub.s	$f14,$f4,$f6
    a750:	4610003c 	c.lt.s	$f0,$f16
    a754:	00000000 	nop
    a758:	45020014 	bc1fl	a7ac <func_808E0F4C+0xd0>
    a75c:	8c630124 	lw	v1,292(v1)
    a760:	4612603c 	c.lt.s	$f12,$f18
    a764:	00000000 	nop
    a768:	45020010 	bc1fl	a7ac <func_808E0F4C+0xd0>
    a76c:	8c630124 	lw	v1,292(v1)
    a770:	460ca03c 	c.lt.s	$f20,$f12
    a774:	00000000 	nop
    a778:	4502000c 	bc1fl	a7ac <func_808E0F4C+0xd0>
    a77c:	8c630124 	lw	v1,292(v1)
    a780:	46007005 	abs.s	$f0,$f14
    a784:	4610003c 	c.lt.s	$f0,$f16
    a788:	00000000 	nop
    a78c:	45000006 	bc1f	a7a8 <func_808E0F4C+0xcc>
    a790:	240f0001 	li	t7,1
    a794:	2418000f 	li	t8,15
    a798:	a06f016a 	sb	t7,362(v1)
    a79c:	a078016c 	sb	t8,364(v1)
    a7a0:	10000005 	b	a7b8 <func_808E0F4C+0xdc>
    a7a4:	24020001 	li	v0,1
    a7a8:	8c630124 	lw	v1,292(v1)
    a7ac:	1460ffd7 	bnez	v1,a70c <func_808E0F4C+0x30>
    a7b0:	00000000 	nop
    a7b4:	00001025 	move	v0,zero
    a7b8:	d7b40008 	ldc1	$f20,8(sp)
    a7bc:	03e00008 	jr	ra
    a7c0:	27bd0010 	addiu	sp,sp,16

0000a7c4 <func_808E1034>:
    a7c4:	27bdff40 	addiu	sp,sp,-192
    a7c8:	afbf0034 	sw	ra,52(sp)
    a7cc:	afb10030 	sw	s1,48(sp)
    a7d0:	afb0002c 	sw	s0,44(sp)
    a7d4:	f7b40020 	sdc1	$f20,32(sp)
    a7d8:	afa500c4 	sw	a1,196(sp)
    a7dc:	a7a000ba 	sh	zero,186(sp)
    a7e0:	8caf1c44 	lw	t7,7236(a1)
    a7e4:	24070001 	li	a3,1
    a7e8:	00808825 	move	s1,a0
    a7ec:	afaf006c 	sw	t7,108(sp)
    a7f0:	849801a2 	lh	t8,418(a0)
    a7f4:	8c830118 	lw	v1,280(a0)
    a7f8:	240530a0 	li	a1,12448
    a7fc:	27190001 	addiu	t9,t8,1
    a800:	a49901a2 	sh	t9,418(a0)
    a804:	a06701a0 	sb	a3,416(v1)
    a808:	848201a8 	lh	v0,424(a0)
    a80c:	10400038 	beqz	v0,a8f0 <func_808E1034+0x12c>
    a810:	24010002 	li	at,2
    a814:	1441000b 	bne	v0,at,a844 <func_808E1034+0x80>
    a818:	248401cc 	addiu	a0,a0,460
    a81c:	3c053f80 	lui	a1,0x3f80
    a820:	0c000000 	jal	0 <func_808D6870>
    a824:	3c064120 	lui	a2,0x4120
    a828:	26240050 	addiu	a0,s1,80
    a82c:	3c0541f0 	lui	a1,0x41f0
    a830:	3c063f00 	lui	a2,0x3f00
    a834:	0c000000 	jal	0 <func_808D6870>
    a838:	3c0742c8 	lui	a3,0x42c8
    a83c:	10000020 	b	a8c0 <func_808E1034+0xfc>
    a840:	02202025 	move	a0,s1
    a844:	862900b6 	lh	t1,182(s1)
    a848:	3c0b0000 	lui	t3,0x0
    a84c:	256b0000 	addiu	t3,t3,0
    a850:	252a1000 	addiu	t2,t1,4096
    a854:	a62a00b6 	sh	t2,182(s1)
    a858:	a467066e 	sh	a3,1646(v1)
    a85c:	8e2d0024 	lw	t5,36(s1)
    a860:	262401cc 	addiu	a0,s1,460
    a864:	3c053f80 	lui	a1,0x3f80
    a868:	ad6d0000 	sw	t5,0(t3)
    a86c:	8e2c0028 	lw	t4,40(s1)
    a870:	3c0641f0 	lui	a2,0x41f0
    a874:	ad6c0004 	sw	t4,4(t3)
    a878:	8e2d002c 	lw	t5,44(s1)
    a87c:	0c000000 	jal	0 <func_808D6870>
    a880:	ad6d0008 	sw	t5,8(t3)
    a884:	26240050 	addiu	a0,s1,80
    a888:	3c0541a0 	lui	a1,0x41a0
    a88c:	3c063f00 	lui	a2,0x3f00
    a890:	0c000000 	jal	0 <func_808D6870>
    a894:	3c0742c8 	lui	a3,0x42c8
    a898:	3c010000 	lui	at,0x0
    a89c:	0c000000 	jal	0 <func_808D6870>
    a8a0:	c42c0000 	lwc1	$f12,0(at)
    a8a4:	3c010000 	lui	at,0x0
    a8a8:	c4260000 	lwc1	$f6,0(at)
    a8ac:	c62401c8 	lwc1	$f4,456(s1)
    a8b0:	46003200 	add.s	$f8,$f6,$f0
    a8b4:	46082280 	add.s	$f10,$f4,$f8
    a8b8:	e62a01c8 	swc1	$f10,456(s1)
    a8bc:	02202025 	move	a0,s1
    a8c0:	0c000000 	jal	0 <func_808D6870>
    a8c4:	8e250050 	lw	a1,80(s1)
    a8c8:	4480a000 	mtc1	zero,$f20
    a8cc:	c62601cc 	lwc1	$f6,460(s1)
    a8d0:	4606a032 	c.eq.s	$f20,$f6
    a8d4:	00000000 	nop
    a8d8:	4502027d 	bc1fl	b2d0 <L808E176C+0x3d4>
    a8dc:	8fbf0034 	lw	ra,52(sp)
    a8e0:	0c000000 	jal	0 <func_808D6870>
    a8e4:	02202025 	move	a0,s1
    a8e8:	10000279 	b	b2d0 <L808E176C+0x3d4>
    a8ec:	8fbf0034 	lw	ra,52(sp)
    a8f0:	02202025 	move	a0,s1
    a8f4:	0c000000 	jal	0 <func_808D6870>
    a8f8:	afa30064 	sw	v1,100(sp)
    a8fc:	862e01a2 	lh	t6,418(s1)
    a900:	3c0540c0 	lui	a1,0x40c0
    a904:	02202025 	move	a0,s1
    a908:	31cf0001 	andi	t7,t6,0x1
    a90c:	11e00005 	beqz	t7,a924 <func_808E1034+0x160>
    a910:	00000000 	nop
    a914:	0c000000 	jal	0 <func_808D6870>
    a918:	02202025 	move	a0,s1
    a91c:	10000003 	b	a92c <func_808E1034+0x168>
    a920:	00000000 	nop
    a924:	0c000000 	jal	0 <func_808D6870>
    a928:	3c0540a8 	lui	a1,0x40a8
    a92c:	0c000000 	jal	0 <func_808D6870>
    a930:	00000000 	nop
    a934:	3c010000 	lui	at,0x0
    a938:	c4240000 	lwc1	$f4,0(at)
    a93c:	863800b8 	lh	t8,184(s1)
    a940:	00008025 	move	s0,zero
    a944:	46040202 	mul.s	$f8,$f0,$f4
    a948:	4600428d 	trunc.w.s	$f10,$f8
    a94c:	440b5000 	mfc1	t3,$f10
    a950:	00000000 	nop
    a954:	030b6021 	addu	t4,t8,t3
    a958:	258d4000 	addiu	t5,t4,16384
    a95c:	a62d00b8 	sh	t5,184(s1)
    a960:	00107040 	sll	t6,s0,0x1
    a964:	022e1021 	addu	v0,s1,t6
    a968:	844301b6 	lh	v1,438(v0)
    a96c:	26100001 	addiu	s0,s0,1
    a970:	00108400 	sll	s0,s0,0x10
    a974:	10600003 	beqz	v1,a984 <func_808E1034+0x1c0>
    a978:	00108403 	sra	s0,s0,0x10
    a97c:	246fffff 	addiu	t7,v1,-1
    a980:	a44f01b6 	sh	t7,438(v0)
    a984:	2a010005 	slti	at,s0,5
    a988:	5420fff6 	bnezl	at,a964 <func_808E1034+0x1a0>
    a98c:	00107040 	sll	t6,s0,0x1
    a990:	8fa20064 	lw	v0,100(sp)
    a994:	c62c0024 	lwc1	$f12,36(s1)
    a998:	8fa3006c 	lw	v1,108(sp)
    a99c:	c44601fc 	lwc1	$f6,508(v0)
    a9a0:	3c014220 	lui	at,0x4220
    a9a4:	02202025 	move	a0,s1
    a9a8:	460c3101 	sub.s	$f4,$f6,$f12
    a9ac:	e7a40078 	swc1	$f4,120(sp)
    a9b0:	c6220028 	lwc1	$f2,40(s1)
    a9b4:	c4480200 	lwc1	$f8,512(v0)
    a9b8:	46024281 	sub.s	$f10,$f8,$f2
    a9bc:	e7aa0074 	swc1	$f10,116(sp)
    a9c0:	c620002c 	lwc1	$f0,44(s1)
    a9c4:	c4460204 	lwc1	$f6,516(v0)
    a9c8:	46003101 	sub.s	$f4,$f6,$f0
    a9cc:	44813000 	mtc1	at,$f6
    a9d0:	e7a40070 	swc1	$f4,112(sp)
    a9d4:	c46a0028 	lwc1	$f10,40(v1)
    a9d8:	c4680024 	lwc1	$f8,36(v1)
    a9dc:	46065100 	add.s	$f4,$f10,$f6
    a9e0:	460c4501 	sub.s	$f20,$f8,$f12
    a9e4:	46022201 	sub.s	$f8,$f4,$f2
    a9e8:	e7a80084 	swc1	$f8,132(sp)
    a9ec:	c46a002c 	lwc1	$f10,44(v1)
    a9f0:	46005181 	sub.s	$f6,$f10,$f0
    a9f4:	0c000000 	jal	0 <func_808D6870>
    a9f8:	e7a60080 	swc1	$f6,128(sp)
    a9fc:	0c000000 	jal	0 <func_808D6870>
    aa00:	02202025 	move	a0,s1
    aa04:	963901c2 	lhu	t9,450(s1)
    aa08:	c7b00078 	lwc1	$f16,120(sp)
    aa0c:	c7b20070 	lwc1	$f18,112(sp)
    aa10:	2f210005 	sltiu	at,t9,5
    aa14:	1020014a 	beqz	at,af40 <L808E176C+0x44>
    aa18:	0019c880 	sll	t9,t9,0x2
    aa1c:	3c010000 	lui	at,0x0
    aa20:	00390821 	addu	at,at,t9
    aa24:	8c390000 	lw	t9,0(at)
    aa28:	03200008 	jr	t9
    aa2c:	00000000 	nop

0000aa30 <L808E12A0>:
    aa30:	8fa8006c 	lw	t0,108(sp)
    aa34:	8fab0064 	lw	t3,100(sp)
    aa38:	8d09067c 	lw	t1,1660(t0)
    aa3c:	312a0002 	andi	t2,t1,0x2
    aa40:	51400020 	beqzl	t2,aac4 <L808E12A0+0x94>
    aa44:	c7a20080 	lwc1	$f2,128(sp)
    aa48:	856c008a 	lh	t4,138(t3)
    aa4c:	851800b6 	lh	t8,182(t0)
    aa50:	34018000 	li	at,0x8000
    aa54:	01817821 	addu	t7,t4,at
    aa58:	030f1023 	subu	v0,t8,t7
    aa5c:	00021400 	sll	v0,v0,0x10
    aa60:	00021403 	sra	v0,v0,0x10
    aa64:	04400003 	bltz	v0,aa74 <L808E12A0+0x44>
    aa68:	00021823 	negu	v1,v0
    aa6c:	10000001 	b	aa74 <L808E12A0+0x44>
    aa70:	00401825 	move	v1,v0
    aa74:	28612000 	slti	at,v1,8192
    aa78:	10200011 	beqz	at,aac0 <L808E12A0+0x90>
    aa7c:	c7ac0084 	lwc1	$f12,132(sp)
    aa80:	4614a102 	mul.s	$f4,$f20,$f20
    aa84:	c7a20080 	lwc1	$f2,128(sp)
    aa88:	3c0141c8 	lui	at,0x41c8
    aa8c:	460c6202 	mul.s	$f8,$f12,$f12
    aa90:	24030001 	li	v1,1
    aa94:	46021182 	mul.s	$f6,$f2,$f2
    aa98:	46082280 	add.s	$f10,$f4,$f8
    aa9c:	44812000 	mtc1	at,$f4
    aaa0:	46065000 	add.s	$f0,$f10,$f6
    aaa4:	46000004 	sqrt.s	$f0,$f0
    aaa8:	4604003e 	c.le.s	$f0,$f4
    aaac:	00000000 	nop
    aab0:	45020004 	bc1fl	aac4 <L808E12A0+0x94>
    aab4:	c7a20080 	lwc1	$f2,128(sp)
    aab8:	10000005 	b	aad0 <L808E12A0+0xa0>
    aabc:	92220621 	lbu	v0,1569(s1)
    aac0:	c7a20080 	lwc1	$f2,128(sp)
    aac4:	c7ac0084 	lwc1	$f12,132(sp)
    aac8:	00001825 	move	v1,zero
    aacc:	92220621 	lbu	v0,1569(s1)
    aad0:	00608025 	move	s0,v1
    aad4:	30590002 	andi	t9,v0,0x2
    aad8:	17200003 	bnez	t9,aae8 <L808E12A0+0xb8>
    aadc:	3049fffd 	andi	t1,v0,0xfffd
    aae0:	10600071 	beqz	v1,aca8 <L808E12A0+0x278>
    aae4:	00000000 	nop
    aae8:	8e24064c 	lw	a0,1612(s1)
    aaec:	14600017 	bnez	v1,ab4c <L808E12A0+0x11c>
    aaf0:	a2290621 	sb	t1,1569(s1)
    aaf4:	8c8a0000 	lw	t2,0(a0)
    aaf8:	3c070000 	lui	a3,0x0
    aafc:	24e70000 	addiu	a3,a3,0
    ab00:	000a5ac0 	sll	t3,t2,0xb
    ab04:	05610011 	bgez	t3,ab4c <L808E12A0+0x11c>
    ab08:	240c0002 	li	t4,2
    ab0c:	3c0d0000 	lui	t5,0x0
    ab10:	25ad0000 	addiu	t5,t5,0
    ab14:	a7ac00ba 	sh	t4,186(sp)
    ab18:	afad0014 	sw	t5,20(sp)
    ab1c:	2404180c 	li	a0,6156
    ab20:	250500e4 	addiu	a1,t0,228
    ab24:	24060004 	li	a2,4
    ab28:	0c000000 	jal	0 <func_808D6870>
    ab2c:	afa70010 	sw	a3,16(sp)
    ab30:	c62c008c 	lwc1	$f12,140(s1)
    ab34:	240500ff 	li	a1,255
    ab38:	24060014 	li	a2,20
    ab3c:	0c000000 	jal	0 <func_808D6870>
    ab40:	24070096 	li	a3,150
    ab44:	100000ff 	b	af44 <L808E176C+0x48>
    ab48:	4480a000 	mtc1	zero,$f20
    ab4c:	240e0001 	li	t6,1
    ab50:	a7ae00ba 	sh	t6,186(sp)
    ab54:	c7ac0070 	lwc1	$f12,112(sp)
    ab58:	0c000000 	jal	0 <func_808D6870>
    ab5c:	c7ae0078 	lwc1	$f14,120(sp)
    ab60:	c7b00078 	lwc1	$f16,120(sp)
    ab64:	c7b20070 	lwc1	$f18,112(sp)
    ab68:	a6220032 	sh	v0,50(s1)
    ab6c:	46108202 	mul.s	$f8,$f16,$f16
    ab70:	c7ae0074 	lwc1	$f14,116(sp)
    ab74:	46129282 	mul.s	$f10,$f18,$f18
    ab78:	460a4000 	add.s	$f0,$f8,$f10
    ab7c:	0c000000 	jal	0 <func_808D6870>
    ab80:	46000304 	sqrt.s	$f12,$f0
    ab84:	863801a4 	lh	t8,420(s1)
    ab88:	24190002 	li	t9,2
    ab8c:	a6220030 	sh	v0,48(s1)
    ab90:	270f0001 	addiu	t7,t8,1
    ab94:	a62f01a4 	sh	t7,420(s1)
    ab98:	a63901b8 	sh	t9,440(s1)
    ab9c:	8fa5006c 	lw	a1,108(sp)
    aba0:	3c070000 	lui	a3,0x0
    aba4:	3c090000 	lui	t1,0x0
    aba8:	24e70000 	addiu	a3,a3,0
    abac:	25290000 	addiu	t1,t1,0
    abb0:	afa90014 	sw	t1,20(sp)
    abb4:	afa70010 	sw	a3,16(sp)
    abb8:	2404182a 	li	a0,6186
    abbc:	24060004 	li	a2,4
    abc0:	0c000000 	jal	0 <func_808D6870>
    abc4:	24a500e4 	addiu	a1,a1,228
    abc8:	c62c008c 	lwc1	$f12,140(s1)
    abcc:	240500b4 	li	a1,180
    abd0:	24060014 	li	a2,20
    abd4:	0c000000 	jal	0 <func_808D6870>
    abd8:	24070064 	li	a3,100
    abdc:	16000024 	bnez	s0,ac70 <L808E12A0+0x240>
    abe0:	8faa0064 	lw	t2,100(sp)
    abe4:	3c010000 	lui	at,0x0
    abe8:	c4260000 	lwc1	$f6,0(at)
    abec:	c544008c 	lwc1	$f4,140(t2)
    abf0:	4604303c 	c.lt.s	$f6,$f4
    abf4:	00000000 	nop
    abf8:	45000008 	bc1f	ac1c <L808E12A0+0x1ec>
    abfc:	00000000 	nop
    ac00:	862b01a4 	lh	t3,420(s1)
    ac04:	240c0001 	li	t4,1
    ac08:	29610003 	slti	at,t3,3
    ac0c:	10200003 	beqz	at,ac1c <L808E12A0+0x1ec>
    ac10:	00000000 	nop
    ac14:	1000000e 	b	ac50 <L808E12A0+0x220>
    ac18:	a62c01c2 	sh	t4,450(s1)
    ac1c:	0c000000 	jal	0 <func_808D6870>
    ac20:	00000000 	nop
    ac24:	3c010000 	lui	at,0x0
    ac28:	c4280000 	lwc1	$f8,0(at)
    ac2c:	240d0001 	li	t5,1
    ac30:	240e0003 	li	t6,3
    ac34:	4608003c 	c.lt.s	$f0,$f8
    ac38:	00000000 	nop
    ac3c:	45020004 	bc1fl	ac50 <L808E12A0+0x220>
    ac40:	a62e01c2 	sh	t6,450(s1)
    ac44:	10000002 	b	ac50 <L808E12A0+0x220>
    ac48:	a62d01c2 	sh	t5,450(s1)
    ac4c:	a62e01c2 	sh	t6,450(s1)
    ac50:	8fb8006c 	lw	t8,108(sp)
    ac54:	830f0842 	lb	t7,2114(t8)
    ac58:	29e10018 	slti	at,t7,24
    ac5c:	142000b8 	bnez	at,af40 <L808E176C+0x44>
    ac60:	3c0141a0 	lui	at,0x41a0
    ac64:	44815000 	mtc1	at,$f10
    ac68:	100000b5 	b	af40 <L808E176C+0x44>
    ac6c:	e62a0068 	swc1	$f10,104(s1)
    ac70:	0c000000 	jal	0 <func_808D6870>
    ac74:	00000000 	nop
    ac78:	3c010000 	lui	at,0x0
    ac7c:	c4260000 	lwc1	$f6,0(at)
    ac80:	24190001 	li	t9,1
    ac84:	24090003 	li	t1,3
    ac88:	4606003c 	c.lt.s	$f0,$f6
    ac8c:	00000000 	nop
    ac90:	45000003 	bc1f	aca0 <L808E12A0+0x270>
    ac94:	00000000 	nop
    ac98:	100000a9 	b	af40 <L808E176C+0x44>
    ac9c:	a63901c2 	sh	t9,450(s1)
    aca0:	100000a7 	b	af40 <L808E176C+0x44>
    aca4:	a62901c2 	sh	t1,450(s1)
    aca8:	4614a102 	mul.s	$f4,$f20,$f20
    acac:	3c0141c8 	lui	at,0x41c8
    acb0:	240a0005 	li	t2,5
    acb4:	460c6202 	mul.s	$f8,$f12,$f12
    acb8:	02202825 	move	a1,s1
    acbc:	3c064040 	lui	a2,0x4040
    acc0:	46021182 	mul.s	$f6,$f2,$f2
    acc4:	240b0030 	li	t3,48
    acc8:	46082280 	add.s	$f10,$f4,$f8
    accc:	44812000 	mtc1	at,$f4
    acd0:	46065000 	add.s	$f0,$f10,$f6
    acd4:	46000004 	sqrt.s	$f0,$f0
    acd8:	4604003e 	c.le.s	$f0,$f4
    acdc:	00000000 	nop
    ace0:	45000023 	bc1f	ad70 <L808E12A0+0x340>
    ace4:	00000000 	nop
    ace8:	4480a000 	mtc1	zero,$f20
    acec:	a7aa00ba 	sh	t2,186(sp)
    acf0:	86270032 	lh	a3,50(s1)
    acf4:	afab0014 	sw	t3,20(sp)
    acf8:	8fa400c4 	lw	a0,196(sp)
    acfc:	0c000000 	jal	0 <func_808D6870>
    ad00:	e7b40010 	swc1	$f20,16(sp)
    ad04:	8fa400c4 	lw	a0,196(sp)
    ad08:	26250024 	addiu	a1,s1,36
    ad0c:	24060028 	li	a2,40
    ad10:	0c000000 	jal	0 <func_808D6870>
    ad14:	2407390b 	li	a3,14603
    ad18:	8fa30064 	lw	v1,100(sp)
    ad1c:	240c0014 	li	t4,20
    ad20:	3c020000 	lui	v0,0x0
    ad24:	24420000 	addiu	v0,v0,0
    ad28:	00008025 	move	s0,zero
    ad2c:	a46c01ba 	sh	t4,442(v1)
    ad30:	00506821 	addu	t5,v0,s0
    ad34:	0010c040 	sll	t8,s0,0x1
    ad38:	26100001 	addiu	s0,s0,1
    ad3c:	00108400 	sll	s0,s0,0x10
    ad40:	91ae0000 	lbu	t6,0(t5)
    ad44:	00108403 	sra	s0,s0,0x10
    ad48:	2a010012 	slti	at,s0,18
    ad4c:	00787821 	addu	t7,v1,t8
    ad50:	1420fff7 	bnez	at,ad30 <L808E12A0+0x300>
    ad54:	a5ee04e4 	sh	t6,1252(t7)
    ad58:	3c014080 	lui	at,0x4080
    ad5c:	44814000 	mtc1	at,$f8
    ad60:	2419003c 	li	t9,60
    ad64:	a46002e6 	sh	zero,742(v1)
    ad68:	a47902e8 	sh	t9,744(v1)
    ad6c:	e4680508 	swc1	$f8,1288(v1)
    ad70:	10000074 	b	af44 <L808E176C+0x48>
    ad74:	4480a000 	mtc1	zero,$f20

0000ad78 <L808E15E8>:
    ad78:	8faa0064 	lw	t2,100(sp)
    ad7c:	3c090000 	lui	t1,0x0
    ad80:	25290000 	addiu	t1,t1,0
    ad84:	8d4b0194 	lw	t3,404(t2)
    ad88:	552b006e 	bnel	t1,t3,af44 <L808E176C+0x48>
    ad8c:	4480a000 	mtc1	zero,$f20
    ad90:	854c01c2 	lh	t4,450(t2)
    ad94:	24010001 	li	at,1
    ad98:	c7ac0074 	lwc1	$f12,116(sp)
    ad9c:	15810068 	bne	t4,at,af40 <L808E176C+0x44>
    ada0:	3c014198 	lui	at,0x4198
    ada4:	44813000 	mtc1	at,$f6
    ada8:	c62a0068 	lwc1	$f10,104(s1)
    adac:	46108102 	mul.s	$f4,$f16,$f16
    adb0:	3c01432a 	lui	at,0x432a
    adb4:	460a303e 	c.le.s	$f6,$f10
    adb8:	460c6202 	mul.s	$f8,$f12,$f12
    adbc:	240d0001 	li	t5,1
    adc0:	8fb80064 	lw	t8,100(sp)
    adc4:	46129182 	mul.s	$f6,$f18,$f18
    adc8:	45000005 	bc1f	ade0 <L808E15E8+0x68>
    adcc:	240e0008 	li	t6,8
    add0:	3c01437a 	lui	at,0x437a
    add4:	44811000 	mtc1	at,$f2
    add8:	10000004 	b	adec <L808E15E8+0x74>
    addc:	46082280 	add.s	$f10,$f4,$f8
    ade0:	44811000 	mtc1	at,$f2
    ade4:	00000000 	nop
    ade8:	46082280 	add.s	$f10,$f4,$f8
    adec:	240f0002 	li	t7,2
    adf0:	46065000 	add.s	$f0,$f10,$f6
    adf4:	46000004 	sqrt.s	$f0,$f0
    adf8:	4602003c 	c.lt.s	$f0,$f2
    adfc:	00000000 	nop
    ae00:	45020050 	bc1fl	af44 <L808E176C+0x48>
    ae04:	4480a000 	mtc1	zero,$f20
    ae08:	a30d01c0 	sb	t5,448(t8)
    ae0c:	a62e01b6 	sh	t6,438(s1)
    ae10:	1000004b 	b	af40 <L808E176C+0x44>
    ae14:	a62f01c2 	sh	t7,450(s1)

0000ae18 <L808E1688>:
    ae18:	863901b6 	lh	t9,438(s1)
    ae1c:	24010001 	li	at,1
    ae20:	24090001 	li	t1,1
    ae24:	17210019 	bne	t9,at,ae8c <L808E16FC>
    ae28:	00000000 	nop
    ae2c:	a7a900ba 	sh	t1,186(sp)
    ae30:	c7ac0080 	lwc1	$f12,128(sp)
    ae34:	0c000000 	jal	0 <func_808D6870>
    ae38:	4600a386 	mov.s	$f14,$f20
    ae3c:	a6220032 	sh	v0,50(s1)
    ae40:	c7a40080 	lwc1	$f4,128(sp)
    ae44:	c7ae0084 	lwc1	$f14,132(sp)
    ae48:	46042202 	mul.s	$f8,$f4,$f4
    ae4c:	00000000 	nop
    ae50:	4614a282 	mul.s	$f10,$f20,$f20
    ae54:	46085000 	add.s	$f0,$f10,$f8
    ae58:	0c000000 	jal	0 <func_808D6870>
    ae5c:	46000304 	sqrt.s	$f12,$f0
    ae60:	240b0002 	li	t3,2
    ae64:	a6220030 	sh	v0,48(s1)
    ae68:	a62b01b8 	sh	t3,440(s1)
    ae6c:	02202025 	move	a0,s1
    ae70:	0c000000 	jal	0 <func_808D6870>
    ae74:	2405182a 	li	a1,6186
    ae78:	02202025 	move	a0,s1
    ae7c:	0c000000 	jal	0 <func_808D6870>
    ae80:	240539ca 	li	a1,14794
    ae84:	1000002e 	b	af40 <L808E176C+0x44>
    ae88:	a62001c2 	sh	zero,450(s1)

0000ae8c <L808E16FC>:
    ae8c:	46108182 	mul.s	$f6,$f16,$f16
    ae90:	c7a20074 	lwc1	$f2,116(sp)
    ae94:	3c0141f0 	lui	at,0x41f0
    ae98:	240a0003 	li	t2,3
    ae9c:	46021102 	mul.s	$f4,$f2,$f2
    aea0:	26250024 	addiu	a1,s1,36
    aea4:	24060028 	li	a2,40
    aea8:	46129202 	mul.s	$f8,$f18,$f18
    aeac:	240739cc 	li	a3,14796
    aeb0:	46043280 	add.s	$f10,$f6,$f4
    aeb4:	44813000 	mtc1	at,$f6
    aeb8:	46085000 	add.s	$f0,$f10,$f8
    aebc:	46000004 	sqrt.s	$f0,$f0
    aec0:	4606003c 	c.lt.s	$f0,$f6
    aec4:	00000000 	nop
    aec8:	4502001e 	bc1fl	af44 <L808E176C+0x48>
    aecc:	4480a000 	mtc1	zero,$f20
    aed0:	a7aa00ba 	sh	t2,186(sp)
    aed4:	8fa400c4 	lw	a0,196(sp)
    aed8:	0c000000 	jal	0 <func_808D6870>
    aedc:	afa50040 	sw	a1,64(sp)
    aee0:	8fa400c4 	lw	a0,196(sp)
    aee4:	8fa50040 	lw	a1,64(sp)
    aee8:	24060028 	li	a2,40
    aeec:	0c000000 	jal	0 <func_808D6870>
    aef0:	2407390b 	li	a3,14603
    aef4:	10000013 	b	af44 <L808E176C+0x48>
    aef8:	4480a000 	mtc1	zero,$f20

0000aefc <L808E176C>:
    aefc:	46108102 	mul.s	$f4,$f16,$f16
    af00:	c7a20074 	lwc1	$f2,116(sp)
    af04:	3c0142c8 	lui	at,0x42c8
    af08:	8fb80064 	lw	t8,100(sp)
    af0c:	46021282 	mul.s	$f10,$f2,$f2
    af10:	240e0004 	li	t6,4
    af14:	46129182 	mul.s	$f6,$f18,$f18
    af18:	460a2200 	add.s	$f8,$f4,$f10
    af1c:	44812000 	mtc1	at,$f4
    af20:	46064000 	add.s	$f0,$f8,$f6
    af24:	46000004 	sqrt.s	$f0,$f0
    af28:	4604003c 	c.lt.s	$f0,$f4
    af2c:	00000000 	nop
    af30:	45000003 	bc1f	af40 <L808E176C+0x44>
    af34:	240d0001 	li	t5,1
    af38:	a30d01c0 	sb	t5,448(t8)
    af3c:	a62e01c2 	sh	t6,450(s1)
    af40:	4480a000 	mtc1	zero,$f20
    af44:	26300610 	addiu	s0,s1,1552
    af48:	02002825 	move	a1,s0
    af4c:	0c000000 	jal	0 <func_808D6870>
    af50:	02202025 	move	a0,s1
    af54:	862f01b8 	lh	t7,440(s1)
    af58:	3c010001 	lui	at,0x1
    af5c:	8fa400c4 	lw	a0,196(sp)
    af60:	15e00004 	bnez	t7,af74 <L808E176C+0x78>
    af64:	34211e60 	ori	at,at,0x1e60
    af68:	00812821 	addu	a1,a0,at
    af6c:	0c000000 	jal	0 <func_808D6870>
    af70:	02003025 	move	a2,s0
    af74:	00008025 	move	s0,zero
    af78:	3c010000 	lui	at,0x0
    af7c:	c42a0000 	lwc1	$f10,0(at)
    af80:	3c0141f0 	lui	at,0x41f0
    af84:	44816000 	mtc1	at,$f12
    af88:	e7b400a8 	swc1	$f20,168(sp)
    af8c:	e7b400a0 	swc1	$f20,160(sp)
    af90:	e7b400b4 	swc1	$f20,180(sp)
    af94:	e7b400b0 	swc1	$f20,176(sp)
    af98:	e7b400ac 	swc1	$f20,172(sp)
    af9c:	0c000000 	jal	0 <func_808D6870>
    afa0:	e7aa00a4 	swc1	$f10,164(sp)
    afa4:	c6280024 	lwc1	$f8,36(s1)
    afa8:	3c0141f0 	lui	at,0x41f0
    afac:	44816000 	mtc1	at,$f12
    afb0:	46080180 	add.s	$f6,$f0,$f8
    afb4:	0c000000 	jal	0 <func_808D6870>
    afb8:	e7a60094 	swc1	$f6,148(sp)
    afbc:	c6240028 	lwc1	$f4,40(s1)
    afc0:	3c0141f0 	lui	at,0x41f0
    afc4:	44816000 	mtc1	at,$f12
    afc8:	46040280 	add.s	$f10,$f0,$f4
    afcc:	0c000000 	jal	0 <func_808D6870>
    afd0:	e7aa0098 	swc1	$f10,152(sp)
    afd4:	c628002c 	lwc1	$f8,44(s1)
    afd8:	3c0143fa 	lui	at,0x43fa
    afdc:	44816000 	mtc1	at,$f12
    afe0:	46080180 	add.s	$f6,$f0,$f8
    afe4:	0c000000 	jal	0 <func_808D6870>
    afe8:	e7a6009c 	swc1	$f6,156(sp)
    afec:	3c01442f 	lui	at,0x442f
    aff0:	44812000 	mtc1	at,$f4
    aff4:	2419001e 	li	t9,30
    aff8:	afb90014 	sw	t9,20(sp)
    affc:	46040280 	add.s	$f10,$f0,$f4
    b000:	8fa400c4 	lw	a0,196(sp)
    b004:	27a50094 	addiu	a1,sp,148
    b008:	27a600ac 	addiu	a2,sp,172
    b00c:	e7aa0010 	swc1	$f10,16(sp)
    b010:	0c000000 	jal	0 <func_808D6870>
    b014:	27a700a0 	addiu	a3,sp,160
    b018:	26100001 	addiu	s0,s0,1
    b01c:	00108400 	sll	s0,s0,0x10
    b020:	00108403 	sra	s0,s0,0x10
    b024:	2a010002 	slti	at,s0,2
    b028:	1420ffd3 	bnez	at,af78 <L808E176C+0x7c>
    b02c:	00000000 	nop
    b030:	3c014120 	lui	at,0x4120
    b034:	44813000 	mtc1	at,$f6
    b038:	c6280028 	lwc1	$f8,40(s1)
    b03c:	3c0141a0 	lui	at,0x41a0
    b040:	8fa400c4 	lw	a0,196(sp)
    b044:	4606403c 	c.lt.s	$f8,$f6
    b048:	02202825 	move	a1,s1
    b04c:	3c0741a0 	lui	a3,0x41a0
    b050:	24090004 	li	t1,4
    b054:	45020007 	bc1fl	b074 <L808E176C+0x178>
    b058:	c6200024 	lwc1	$f0,36(s1)
    b05c:	44812000 	mtc1	at,$f4
    b060:	4406a000 	mfc1	a2,$f20
    b064:	afa90014 	sw	t1,20(sp)
    b068:	0c000000 	jal	0 <func_808D6870>
    b06c:	e7a40010 	swc1	$f4,16(sp)
    b070:	c6200024 	lwc1	$f0,36(s1)
    b074:	3c010000 	lui	at,0x0
    b078:	c4220000 	lwc1	$f2,0(at)
    b07c:	46000005 	abs.s	$f0,$f0
    b080:	3c0143fa 	lui	at,0x43fa
    b084:	4600103c 	c.lt.s	$f2,$f0
    b088:	240b0004 	li	t3,4
    b08c:	4503000e 	bc1tl	b0c8 <L808E176C+0x1cc>
    b090:	a7ab00ba 	sh	t3,186(sp)
    b094:	44815000 	mtc1	at,$f10
    b098:	c6280028 	lwc1	$f8,40(s1)
    b09c:	4608503c 	c.lt.s	$f10,$f8
    b0a0:	00000000 	nop
    b0a4:	45030008 	bc1tl	b0c8 <L808E176C+0x1cc>
    b0a8:	a7ab00ba 	sh	t3,186(sp)
    b0ac:	c620002c 	lwc1	$f0,44(s1)
    b0b0:	46000005 	abs.s	$f0,$f0
    b0b4:	4600103c 	c.lt.s	$f2,$f0
    b0b8:	00000000 	nop
    b0bc:	45020003 	bc1fl	b0cc <L808E176C+0x1d0>
    b0c0:	87aa00ba 	lh	t2,186(sp)
    b0c4:	a7ab00ba 	sh	t3,186(sp)
    b0c8:	87aa00ba 	lh	t2,186(sp)
    b0cc:	87b800ba 	lh	t8,186(sp)
    b0d0:	24010001 	li	at,1
    b0d4:	15400005 	bnez	t2,b0ec <L808E176C+0x1f0>
    b0d8:	00000000 	nop
    b0dc:	962c0088 	lhu	t4,136(s1)
    b0e0:	318d0001 	andi	t5,t4,0x1
    b0e4:	51a0007a 	beqzl	t5,b2d0 <L808E176C+0x3d4>
    b0e8:	8fbf0034 	lw	ra,52(sp)
    b0ec:	17010011 	bne	t8,at,b134 <L808E176C+0x238>
    b0f0:	262f0024 	addiu	t7,s1,36
    b0f4:	3c0142c8 	lui	at,0x42c8
    b0f8:	44816000 	mtc1	at,$f12
    b0fc:	0c000000 	jal	0 <func_808D6870>
    b100:	00000000 	nop
    b104:	3c014396 	lui	at,0x4396
    b108:	44813000 	mtc1	at,$f6
    b10c:	3c014120 	lui	at,0x4120
    b110:	44815000 	mtc1	at,$f10
    b114:	46060100 	add.s	$f4,$f0,$f6
    b118:	3c0141c8 	lui	at,0x41c8
    b11c:	4481a000 	mtc1	at,$f20
    b120:	240e0028 	li	t6,40
    b124:	e7a40058 	swc1	$f4,88(sp)
    b128:	a7ae004e 	sh	t6,78(sp)
    b12c:	10000015 	b	b184 <L808E176C+0x288>
    b130:	e7aa0054 	swc1	$f10,84(sp)
    b134:	3c014348 	lui	at,0x4348
    b138:	44816000 	mtc1	at,$f12
    b13c:	0c000000 	jal	0 <func_808D6870>
    b140:	afaf0040 	sw	t7,64(sp)
    b144:	3c0143fa 	lui	at,0x43fa
    b148:	44814000 	mtc1	at,$f8
    b14c:	3c014170 	lui	at,0x4170
    b150:	44812000 	mtc1	at,$f4
    b154:	46080180 	add.s	$f6,$f0,$f8
    b158:	3c0141f0 	lui	at,0x41f0
    b15c:	4481a000 	mtc1	at,$f20
    b160:	24190046 	li	t9,70
    b164:	e7a60058 	swc1	$f6,88(sp)
    b168:	a7b9004e 	sh	t9,78(sp)
    b16c:	8fa400c4 	lw	a0,196(sp)
    b170:	8fa50040 	lw	a1,64(sp)
    b174:	24060050 	li	a2,80
    b178:	2407390b 	li	a3,14603
    b17c:	0c000000 	jal	0 <func_808D6870>
    b180:	e7a40054 	swc1	$f4,84(sp)
    b184:	87a9004e 	lh	t1,78(sp)
    b188:	00008025 	move	s0,zero
    b18c:	262b0024 	addiu	t3,s1,36
    b190:	5920002d 	blezl	t1,b248 <L808E176C+0x34c>
    b194:	87b800ba 	lh	t8,186(sp)
    b198:	afab0040 	sw	t3,64(sp)
    b19c:	87aa00ba 	lh	t2,186(sp)
    b1a0:	1140000b 	beqz	t2,b1d0 <L808E176C+0x2d4>
    b1a4:	00000000 	nop
    b1a8:	0c000000 	jal	0 <func_808D6870>
    b1ac:	4600a306 	mov.s	$f12,$f20
    b1b0:	e7a000ac 	swc1	$f0,172(sp)
    b1b4:	0c000000 	jal	0 <func_808D6870>
    b1b8:	4600a306 	mov.s	$f12,$f20
    b1bc:	e7a000b0 	swc1	$f0,176(sp)
    b1c0:	0c000000 	jal	0 <func_808D6870>
    b1c4:	4600a306 	mov.s	$f12,$f20
    b1c8:	1000000b 	b	b1f8 <L808E176C+0x2fc>
    b1cc:	e7a000b4 	swc1	$f0,180(sp)
    b1d0:	0c000000 	jal	0 <func_808D6870>
    b1d4:	4600a306 	mov.s	$f12,$f20
    b1d8:	3c0141c8 	lui	at,0x41c8
    b1dc:	44816000 	mtc1	at,$f12
    b1e0:	0c000000 	jal	0 <func_808D6870>
    b1e4:	e7a000ac 	swc1	$f0,172(sp)
    b1e8:	e7a000b0 	swc1	$f0,176(sp)
    b1ec:	0c000000 	jal	0 <func_808D6870>
    b1f0:	4600a306 	mov.s	$f12,$f20
    b1f4:	e7a000b4 	swc1	$f0,180(sp)
    b1f8:	c7aa0058 	lwc1	$f10,88(sp)
    b1fc:	c7a80054 	lwc1	$f8,84(sp)
    b200:	3c070000 	lui	a3,0x0
    b204:	240c001e 	li	t4,30
    b208:	afac0018 	sw	t4,24(sp)
    b20c:	24e70000 	addiu	a3,a3,0
    b210:	8fa400c4 	lw	a0,196(sp)
    b214:	8fa50040 	lw	a1,64(sp)
    b218:	27a600ac 	addiu	a2,sp,172
    b21c:	e7aa0010 	swc1	$f10,16(sp)
    b220:	0c000000 	jal	0 <func_808D6870>
    b224:	e7a80014 	swc1	$f8,20(sp)
    b228:	87ad004e 	lh	t5,78(sp)
    b22c:	26100001 	addiu	s0,s0,1
    b230:	00108400 	sll	s0,s0,0x10
    b234:	00108403 	sra	s0,s0,0x10
    b238:	020d082a 	slt	at,s0,t5
    b23c:	5420ffd8 	bnezl	at,b1a0 <L808E176C+0x2a4>
    b240:	87aa00ba 	lh	t2,186(sp)
    b244:	87b800ba 	lh	t8,186(sp)
    b248:	24020001 	li	v0,1
    b24c:	53020020 	beql	t8,v0,b2d0 <L808E176C+0x3d4>
    b250:	8fbf0034 	lw	ra,52(sp)
    b254:	a62201a8 	sh	v0,424(s1)
    b258:	87ae00ba 	lh	t6,186(sp)
    b25c:	8fa500c4 	lw	a1,196(sp)
    b260:	02202025 	move	a0,s1
    b264:	55c00004 	bnezl	t6,b278 <L808E176C+0x37c>
    b268:	87af00ba 	lh	t7,186(sp)
    b26c:	0c000000 	jal	0 <func_808D6870>
    b270:	26260024 	addiu	a2,s1,36
    b274:	87af00ba 	lh	t7,186(sp)
    b278:	24010003 	li	at,3
    b27c:	8fa40064 	lw	a0,100(sp)
    b280:	15e10005 	bne	t7,at,b298 <L808E176C+0x39c>
    b284:	8fa500c4 	lw	a1,196(sp)
    b288:	0c000000 	jal	0 <func_808D6870>
    b28c:	8fa40064 	lw	a0,100(sp)
    b290:	1000000f 	b	b2d0 <L808E176C+0x3d4>
    b294:	8fbf0034 	lw	ra,52(sp)
    b298:	8c890194 	lw	t1,404(a0)
    b29c:	3c190000 	lui	t9,0x0
    b2a0:	27390000 	addiu	t9,t9,0
    b2a4:	5729000a 	bnel	t9,t1,b2d0 <L808E176C+0x3d4>
    b2a8:	8fbf0034 	lw	ra,52(sp)
    b2ac:	0c000000 	jal	0 <func_808D6870>
    b2b0:	8fa500c4 	lw	a1,196(sp)
    b2b4:	87ab00ba 	lh	t3,186(sp)
    b2b8:	24010005 	li	at,5
    b2bc:	8fac0064 	lw	t4,100(sp)
    b2c0:	15610002 	bne	t3,at,b2cc <L808E176C+0x3d0>
    b2c4:	240a007d 	li	t2,125
    b2c8:	a58a01b6 	sh	t2,438(t4)
    b2cc:	8fbf0034 	lw	ra,52(sp)
    b2d0:	d7b40020 	ldc1	$f20,32(sp)
    b2d4:	8fb0002c 	lw	s0,44(sp)
    b2d8:	8fb10030 	lw	s1,48(sp)
    b2dc:	03e00008 	jr	ra
    b2e0:	27bd00c0 	addiu	sp,sp,192

0000b2e4 <func_808E1B54>:
    b2e4:	27bdff78 	addiu	sp,sp,-136
    b2e8:	afb40028 	sw	s4,40(sp)
    b2ec:	00a0a025 	move	s4,a1
    b2f0:	afbf002c 	sw	ra,44(sp)
    b2f4:	afb30024 	sw	s3,36(sp)
    b2f8:	afb20020 	sw	s2,32(sp)
    b2fc:	afb1001c 	sw	s1,28(sp)
    b300:	afb00018 	sw	s0,24(sp)
    b304:	8ca50000 	lw	a1,0(a1)
    b308:	00809825 	move	s3,a0
    b30c:	3c060000 	lui	a2,0x0
    b310:	24c60000 	addiu	a2,a2,0
    b314:	27a40064 	addiu	a0,sp,100
    b318:	24072679 	li	a3,9849
    b31c:	0c000000 	jal	0 <func_808D6870>
    b320:	00a09025 	move	s2,a1
    b324:	0c000000 	jal	0 <func_808D6870>
    b328:	8e840000 	lw	a0,0(s4)
    b32c:	866e01a2 	lh	t6,418(s3)
    b330:	3c010000 	lui	at,0x0
    b334:	31cf0001 	andi	t7,t6,0x1
    b338:	51e00008 	beqzl	t7,b35c <func_808E1B54+0x78>
    b33c:	c66801cc 	lwc1	$f8,460(s3)
    b340:	3c010000 	lui	at,0x0
    b344:	c4260000 	lwc1	$f6,0(at)
    b348:	c66401cc 	lwc1	$f4,460(s3)
    b34c:	46062002 	mul.s	$f0,$f4,$f6
    b350:	10000006 	b	b36c <func_808E1B54+0x88>
    b354:	4600040d 	trunc.w.s	$f16,$f0
    b358:	c66801cc 	lwc1	$f8,460(s3)
    b35c:	c42a0000 	lwc1	$f10,0(at)
    b360:	460a4002 	mul.s	$f0,$f8,$f10
    b364:	00000000 	nop
    b368:	4600040d 	trunc.w.s	$f16,$f0
    b36c:	8e4302d0 	lw	v1,720(s2)
    b370:	24019b00 	li	at,-25856
    b374:	3c11fa00 	lui	s1,0xfa00
    b378:	440a8000 	mfc1	t2,$f16
    b37c:	24780008 	addiu	t8,v1,8
    b380:	ae5802d0 	sw	t8,720(s2)
    b384:	314b00ff 	andi	t3,t2,0xff
    b388:	01616025 	or	t4,t3,at
    b38c:	ac6c0004 	sw	t4,4(v1)
    b390:	0c000000 	jal	0 <func_808D6870>
    b394:	ac710000 	sw	s1,0(v1)
    b398:	c66c0024 	lwc1	$f12,36(s3)
    b39c:	c66e0080 	lwc1	$f14,128(s3)
    b3a0:	8e66002c 	lw	a2,44(s3)
    b3a4:	0c000000 	jal	0 <func_808D6870>
    b3a8:	00003825 	move	a3,zero
    b3ac:	3c013f40 	lui	at,0x3f40
    b3b0:	44810000 	mtc1	at,$f0
    b3b4:	c6720050 	lwc1	$f18,80(s3)
    b3b8:	c6640058 	lwc1	$f4,88(s3)
    b3bc:	3c013f80 	lui	at,0x3f80
    b3c0:	46009302 	mul.s	$f12,$f18,$f0
    b3c4:	44817000 	mtc1	at,$f14
    b3c8:	24070001 	li	a3,1
    b3cc:	46002182 	mul.s	$f6,$f4,$f0
    b3d0:	44063000 	mfc1	a2,$f6
    b3d4:	0c000000 	jal	0 <func_808D6870>
    b3d8:	00000000 	nop
    b3dc:	8e5002d0 	lw	s0,720(s2)
    b3e0:	3c0eda38 	lui	t6,0xda38
    b3e4:	35ce0003 	ori	t6,t6,0x3
    b3e8:	260d0008 	addiu	t5,s0,8
    b3ec:	ae4d02d0 	sw	t5,720(s2)
    b3f0:	3c050000 	lui	a1,0x0
    b3f4:	ae0e0000 	sw	t6,0(s0)
    b3f8:	8e840000 	lw	a0,0(s4)
    b3fc:	24a50000 	addiu	a1,a1,0
    b400:	0c000000 	jal	0 <func_808D6870>
    b404:	24062693 	li	a2,9875
    b408:	ae020004 	sw	v0,4(s0)
    b40c:	8e4302d0 	lw	v1,720(s2)
    b410:	3c190000 	lui	t9,0x0
    b414:	27390000 	addiu	t9,t9,0
    b418:	246f0008 	addiu	t7,v1,8
    b41c:	ae4f02d0 	sw	t7,720(s2)
    b420:	3c18de00 	lui	t8,0xde00
    b424:	ac780000 	sw	t8,0(v1)
    b428:	0c000000 	jal	0 <func_808D6870>
    b42c:	ac790004 	sw	t9,4(v1)
    b430:	8e4302d0 	lw	v1,720(s2)
    b434:	3c0a0000 	lui	t2,0x0
    b438:	254a0000 	addiu	t2,t2,0
    b43c:	24680008 	addiu	t0,v1,8
    b440:	ae4802d0 	sw	t0,720(s2)
    b444:	3c09de00 	lui	t1,0xde00
    b448:	ac690000 	sw	t1,0(v1)
    b44c:	ac6a0004 	sw	t2,4(v1)
    b450:	8e4302d0 	lw	v1,720(s2)
    b454:	3c0ce700 	lui	t4,0xe700
    b458:	2401ff00 	li	at,-256
    b45c:	246b0008 	addiu	t3,v1,8
    b460:	ae4b02d0 	sw	t3,720(s2)
    b464:	ac600004 	sw	zero,4(v1)
    b468:	ac6c0000 	sw	t4,0(v1)
    b46c:	8e4302d0 	lw	v1,720(s2)
    b470:	3c0cffff 	lui	t4,0xffff
    b474:	3c0bfb00 	lui	t3,0xfb00
    b478:	246d0008 	addiu	t5,v1,8
    b47c:	ae4d02d0 	sw	t5,720(s2)
    b480:	ac710000 	sw	s1,0(v1)
    b484:	c66801cc 	lwc1	$f8,460(s3)
    b488:	3c0d0000 	lui	t5,0x0
    b48c:	25ad0000 	addiu	t5,t5,0
    b490:	4600428d 	trunc.w.s	$f10,$f8
    b494:	00008825 	move	s1,zero
    b498:	44195000 	mfc1	t9,$f10
    b49c:	00000000 	nop
    b4a0:	332800ff 	andi	t0,t9,0xff
    b4a4:	01014825 	or	t1,t0,at
    b4a8:	ac690004 	sw	t1,4(v1)
    b4ac:	8e4302d0 	lw	v1,720(s2)
    b4b0:	24010001 	li	at,1
    b4b4:	246a0008 	addiu	t2,v1,8
    b4b8:	ae4a02d0 	sw	t2,720(s2)
    b4bc:	ac6c0004 	sw	t4,4(v1)
    b4c0:	ac6b0000 	sw	t3,0(v1)
    b4c4:	866201a8 	lh	v0,424(s3)
    b4c8:	1441002b 	bne	v0,at,b578 <func_808E1B54+0x294>
    b4cc:	00000000 	nop
    b4d0:	afad0034 	sw	t5,52(sp)
    b4d4:	0c000000 	jal	0 <func_808D6870>
    b4d8:	00000000 	nop
    b4dc:	44918000 	mtc1	s1,$f16
    b4e0:	3c010000 	lui	at,0x0
    b4e4:	c4240000 	lwc1	$f4,0(at)
    b4e8:	468084a0 	cvt.s.w	$f18,$f16
    b4ec:	24050001 	li	a1,1
    b4f0:	46049302 	mul.s	$f12,$f18,$f4
    b4f4:	0c000000 	jal	0 <func_808D6870>
    b4f8:	00000000 	nop
    b4fc:	c66c01c8 	lwc1	$f12,456(s3)
    b500:	0c000000 	jal	0 <func_808D6870>
    b504:	24050001 	li	a1,1
    b508:	8e5002d0 	lw	s0,720(s2)
    b50c:	3c0fda38 	lui	t7,0xda38
    b510:	35ef0003 	ori	t7,t7,0x3
    b514:	260e0008 	addiu	t6,s0,8
    b518:	ae4e02d0 	sw	t6,720(s2)
    b51c:	3c050000 	lui	a1,0x0
    b520:	ae0f0000 	sw	t7,0(s0)
    b524:	8e840000 	lw	a0,0(s4)
    b528:	24a50000 	addiu	a1,a1,0
    b52c:	0c000000 	jal	0 <func_808D6870>
    b530:	240626ab 	li	a2,9899
    b534:	ae020004 	sw	v0,4(s0)
    b538:	8e4302d0 	lw	v1,720(s2)
    b53c:	3c19de00 	lui	t9,0xde00
    b540:	24780008 	addiu	t8,v1,8
    b544:	ae5802d0 	sw	t8,720(s2)
    b548:	ac790000 	sw	t9,0(v1)
    b54c:	8fa80034 	lw	t0,52(sp)
    b550:	0c000000 	jal	0 <func_808D6870>
    b554:	ac680004 	sw	t0,4(v1)
    b558:	26310001 	addiu	s1,s1,1
    b55c:	00118c00 	sll	s1,s1,0x10
    b560:	00118c03 	sra	s1,s1,0x10
    b564:	2a210008 	slti	at,s1,8
    b568:	1420ffda 	bnez	at,b4d4 <func_808E1B54+0x1f0>
    b56c:	00000000 	nop
    b570:	10000026 	b	b60c <func_808E1B54+0x328>
    b574:	00000000 	nop
    b578:	14400024 	bnez	v0,b60c <func_808E1B54+0x328>
    b57c:	3c010001 	lui	at,0x1
    b580:	34211da0 	ori	at,at,0x1da0
    b584:	0c000000 	jal	0 <func_808D6870>
    b588:	02812021 	addu	a0,s4,at
    b58c:	866900b8 	lh	t1,184(s3)
    b590:	3c014700 	lui	at,0x4700
    b594:	44815000 	mtc1	at,$f10
    b598:	44893000 	mtc1	t1,$f6
    b59c:	3c010000 	lui	at,0x0
    b5a0:	c4320000 	lwc1	$f18,0(at)
    b5a4:	46803220 	cvt.s.w	$f8,$f6
    b5a8:	24050001 	li	a1,1
    b5ac:	460a4403 	div.s	$f16,$f8,$f10
    b5b0:	46128302 	mul.s	$f12,$f16,$f18
    b5b4:	0c000000 	jal	0 <func_808D6870>
    b5b8:	00000000 	nop
    b5bc:	8e5002d0 	lw	s0,720(s2)
    b5c0:	3c0bda38 	lui	t3,0xda38
    b5c4:	356b0003 	ori	t3,t3,0x3
    b5c8:	260a0008 	addiu	t2,s0,8
    b5cc:	ae4a02d0 	sw	t2,720(s2)
    b5d0:	3c050000 	lui	a1,0x0
    b5d4:	ae0b0000 	sw	t3,0(s0)
    b5d8:	8e840000 	lw	a0,0(s4)
    b5dc:	24a50000 	addiu	a1,a1,0
    b5e0:	0c000000 	jal	0 <func_808D6870>
    b5e4:	240626b3 	li	a2,9907
    b5e8:	ae020004 	sw	v0,4(s0)
    b5ec:	8e4302d0 	lw	v1,720(s2)
    b5f0:	3c0e0000 	lui	t6,0x0
    b5f4:	25ce0000 	addiu	t6,t6,0
    b5f8:	246c0008 	addiu	t4,v1,8
    b5fc:	ae4c02d0 	sw	t4,720(s2)
    b600:	3c0dde00 	lui	t5,0xde00
    b604:	ac6d0000 	sw	t5,0(v1)
    b608:	ac6e0004 	sw	t6,4(v1)
    b60c:	3c060000 	lui	a2,0x0
    b610:	24c60000 	addiu	a2,a2,0
    b614:	27a40064 	addiu	a0,sp,100
    b618:	8e850000 	lw	a1,0(s4)
    b61c:	0c000000 	jal	0 <func_808D6870>
    b620:	240726b7 	li	a3,9911
    b624:	8fbf002c 	lw	ra,44(sp)
    b628:	8fb00018 	lw	s0,24(sp)
    b62c:	8fb1001c 	lw	s1,28(sp)
    b630:	8fb20020 	lw	s2,32(sp)
    b634:	8fb30024 	lw	s3,36(sp)
    b638:	8fb40028 	lw	s4,40(sp)
    b63c:	03e00008 	jr	ra
    b640:	27bd0088 	addiu	sp,sp,136

0000b644 <func_808E1EB4>:
    b644:	27bdff60 	addiu	sp,sp,-160
    b648:	afbf0054 	sw	ra,84(sp)
    b64c:	afb20050 	sw	s2,80(sp)
    b650:	afb1004c 	sw	s1,76(sp)
    b654:	afb00048 	sw	s0,72(sp)
    b658:	f7b60040 	sdc1	$f22,64(sp)
    b65c:	f7b40038 	sdc1	$f20,56(sp)
    b660:	afa500a4 	sw	a1,164(sp)
    b664:	848e01a2 	lh	t6,418(a0)
    b668:	8c920118 	lw	s2,280(a0)
    b66c:	24180001 	li	t8,1
    b670:	25cf0001 	addiu	t7,t6,1
    b674:	a48f01a2 	sh	t7,418(a0)
    b678:	00808825 	move	s1,a0
    b67c:	3c0540c0 	lui	a1,0x40c0
    b680:	0c000000 	jal	0 <func_808D6870>
    b684:	a25801a0 	sb	t8,416(s2)
    b688:	0c000000 	jal	0 <func_808D6870>
    b68c:	00000000 	nop
    b690:	3c010000 	lui	at,0x0
    b694:	c4240000 	lwc1	$f4,0(at)
    b698:	863900b8 	lh	t9,184(s1)
    b69c:	00008025 	move	s0,zero
    b6a0:	46040182 	mul.s	$f6,$f0,$f4
    b6a4:	4600320d 	trunc.w.s	$f8,$f6
    b6a8:	440b4000 	mfc1	t3,$f8
    b6ac:	00000000 	nop
    b6b0:	032b6021 	addu	t4,t9,t3
    b6b4:	258d4000 	addiu	t5,t4,16384
    b6b8:	a62d00b8 	sh	t5,184(s1)
    b6bc:	00107040 	sll	t6,s0,0x1
    b6c0:	022e1021 	addu	v0,s1,t6
    b6c4:	844301b6 	lh	v1,438(v0)
    b6c8:	26100001 	addiu	s0,s0,1
    b6cc:	00108400 	sll	s0,s0,0x10
    b6d0:	10600003 	beqz	v1,b6e0 <func_808E1EB4+0x9c>
    b6d4:	00108403 	sra	s0,s0,0x10
    b6d8:	246fffff 	addiu	t7,v1,-1
    b6dc:	a44f01b6 	sh	t7,438(v0)
    b6e0:	2a010005 	slti	at,s0,5
    b6e4:	5420fff6 	bnezl	at,b6c0 <func_808E1EB4+0x7c>
    b6e8:	00107040 	sll	t6,s0,0x1
    b6ec:	0c000000 	jal	0 <func_808D6870>
    b6f0:	02202025 	move	a0,s1
    b6f4:	0c000000 	jal	0 <func_808D6870>
    b6f8:	02202025 	move	a0,s1
    b6fc:	863801a6 	lh	t8,422(s1)
    b700:	27080001 	addiu	t0,t8,1
    b704:	a62801a6 	sh	t0,422(s1)
    b708:	862201a6 	lh	v0,422(s1)
    b70c:	2841000f 	slti	at,v0,15
    b710:	54200004 	bnezl	at,b724 <func_808E1EB4+0xe0>
    b714:	00024880 	sll	t1,v0,0x2
    b718:	a62001a6 	sh	zero,422(s1)
    b71c:	862201a6 	lh	v0,422(s1)
    b720:	00024880 	sll	t1,v0,0x2
    b724:	8e2b0024 	lw	t3,36(s1)
    b728:	01224823 	subu	t1,t1,v0
    b72c:	00094880 	sll	t1,t1,0x2
    b730:	02295021 	addu	t2,s1,t1
    b734:	ad4b02ec 	sw	t3,748(t2)
    b738:	8e390028 	lw	t9,40(s1)
    b73c:	24010001 	li	at,1
    b740:	ad5902f0 	sw	t9,752(t2)
    b744:	8e2b002c 	lw	t3,44(s1)
    b748:	ad4b02f4 	sw	t3,756(t2)
    b74c:	862301c2 	lh	v1,450(s1)
    b750:	14600007 	bnez	v1,b770 <func_808E1EB4+0x12c>
    b754:	00000000 	nop
    b758:	862c01b6 	lh	t4,438(s1)
    b75c:	240d0001 	li	t5,1
    b760:	558000ab 	bnezl	t4,ba10 <func_808E1EB4+0x3cc>
    b764:	8fbf0054 	lw	ra,84(sp)
    b768:	100000a8 	b	ba0c <func_808E1EB4+0x3c8>
    b76c:	a62d01c2 	sh	t5,450(s1)
    b770:	546100a2 	bnel	v1,at,b9fc <func_808E1EB4+0x3b8>
    b774:	862901b6 	lh	t1,438(s1)
    b778:	c64a01fc 	lwc1	$f10,508(s2)
    b77c:	c6320024 	lwc1	$f18,36(s1)
    b780:	c6480204 	lwc1	$f8,516(s2)
    b784:	c6440200 	lwc1	$f4,512(s2)
    b788:	46125501 	sub.s	$f20,$f10,$f18
    b78c:	c62a002c 	lwc1	$f10,44(s1)
    b790:	c6260028 	lwc1	$f6,40(s1)
    b794:	460a4381 	sub.s	$f14,$f8,$f10
    b798:	4600a306 	mov.s	$f12,$f20
    b79c:	46062581 	sub.s	$f22,$f4,$f6
    b7a0:	0c000000 	jal	0 <func_808D6870>
    b7a4:	e7ae0084 	swc1	$f14,132(sp)
    b7a8:	3c010000 	lui	at,0x0
    b7ac:	c4320000 	lwc1	$f18,0(at)
    b7b0:	c7b00084 	lwc1	$f16,132(sp)
    b7b4:	4600b306 	mov.s	$f12,$f22
    b7b8:	46120102 	mul.s	$f4,$f0,$f18
    b7bc:	00000000 	nop
    b7c0:	4614a202 	mul.s	$f8,$f20,$f20
    b7c4:	00000000 	nop
    b7c8:	46108282 	mul.s	$f10,$f16,$f16
    b7cc:	4600218d 	trunc.w.s	$f6,$f4
    b7d0:	460a4080 	add.s	$f2,$f8,$f10
    b7d4:	44103000 	mfc1	s0,$f6
    b7d8:	00000000 	nop
    b7dc:	00108400 	sll	s0,s0,0x10
    b7e0:	00108403 	sra	s0,s0,0x10
    b7e4:	46001384 	sqrt.s	$f14,$f2
    b7e8:	0c000000 	jal	0 <func_808D6870>
    b7ec:	e7a2005c 	swc1	$f2,92(sp)
    b7f0:	3c010000 	lui	at,0x0
    b7f4:	c4320000 	lwc1	$f18,0(at)
    b7f8:	26240030 	addiu	a0,s1,48
    b7fc:	24060001 	li	a2,1
    b800:	46120102 	mul.s	$f4,$f0,$f18
    b804:	24071000 	li	a3,4096
    b808:	4600218d 	trunc.w.s	$f6,$f4
    b80c:	44053000 	mfc1	a1,$f6
    b810:	00000000 	nop
    b814:	00052c00 	sll	a1,a1,0x10
    b818:	0c000000 	jal	0 <func_808D6870>
    b81c:	00052c03 	sra	a1,a1,0x10
    b820:	00102c00 	sll	a1,s0,0x10
    b824:	00052c03 	sra	a1,a1,0x10
    b828:	26240032 	addiu	a0,s1,50
    b82c:	24060001 	li	a2,1
    b830:	0c000000 	jal	0 <func_808D6870>
    b834:	24071000 	li	a3,4096
    b838:	4616b282 	mul.s	$f10,$f22,$f22
    b83c:	c7a8005c 	lwc1	$f8,92(sp)
    b840:	3c014220 	lui	at,0x4220
    b844:	44819000 	mtc1	at,$f18
    b848:	24180002 	li	t8,2
    b84c:	2408001e 	li	t0,30
    b850:	240100c8 	li	at,200
    b854:	460a4000 	add.s	$f0,$f8,$f10
    b858:	46000004 	sqrt.s	$f0,$f0
    b85c:	4612003c 	c.lt.s	$f0,$f18
    b860:	00000000 	nop
    b864:	4502006a 	bc1fl	ba10 <func_808E1EB4+0x3cc>
    b868:	8fbf0054 	lw	ra,84(sp)
    b86c:	8629001c 	lh	t1,28(s1)
    b870:	44802000 	mtc1	zero,$f4
    b874:	a63801c2 	sh	t8,450(s1)
    b878:	a62801b6 	sh	t0,438(s1)
    b87c:	1521005a 	bne	t1,at,b9e8 <func_808E1EB4+0x3a4>
    b880:	e6240068 	swc1	$f4,104(s1)
    b884:	0c000000 	jal	0 <func_808D6870>
    b888:	240439cd 	li	a0,14797
    b88c:	0c000000 	jal	0 <func_808D6870>
    b890:	24043827 	li	a0,14375
    b894:	3c010000 	lui	at,0x0
    b898:	c4360000 	lwc1	$f22,0(at)
    b89c:	3c0141c8 	lui	at,0x41c8
    b8a0:	264a01fc 	addiu	t2,s2,508
    b8a4:	4481a000 	mtc1	at,$f20
    b8a8:	afaa005c 	sw	t2,92(sp)
    b8ac:	00008025 	move	s0,zero
    b8b0:	0c000000 	jal	0 <func_808D6870>
    b8b4:	4600a306 	mov.s	$f12,$f20
    b8b8:	e7a00070 	swc1	$f0,112(sp)
    b8bc:	0c000000 	jal	0 <func_808D6870>
    b8c0:	4600a306 	mov.s	$f12,$f20
    b8c4:	e7a00074 	swc1	$f0,116(sp)
    b8c8:	0c000000 	jal	0 <func_808D6870>
    b8cc:	4600a306 	mov.s	$f12,$f20
    b8d0:	c7a60070 	lwc1	$f6,112(sp)
    b8d4:	c7aa0074 	lwc1	$f10,116(sp)
    b8d8:	3c0143fa 	lui	at,0x43fa
    b8dc:	46163202 	mul.s	$f8,$f6,$f22
    b8e0:	44816000 	mtc1	at,$f12
    b8e4:	e7a00078 	swc1	$f0,120(sp)
    b8e8:	46165482 	mul.s	$f18,$f10,$f22
    b8ec:	00000000 	nop
    b8f0:	46160102 	mul.s	$f4,$f0,$f22
    b8f4:	e7a80064 	swc1	$f8,100(sp)
    b8f8:	e7b20068 	swc1	$f18,104(sp)
    b8fc:	0c000000 	jal	0 <func_808D6870>
    b900:	e7a4006c 	swc1	$f4,108(sp)
    b904:	3c01447a 	lui	at,0x447a
    b908:	44813000 	mtc1	at,$f6
    b90c:	3c014170 	lui	at,0x4170
    b910:	44815000 	mtc1	at,$f10
    b914:	46060200 	add.s	$f8,$f0,$f6
    b918:	24190014 	li	t9,20
    b91c:	afb90018 	sw	t9,24(sp)
    b920:	8fa400a4 	lw	a0,164(sp)
    b924:	e7a80010 	swc1	$f8,16(sp)
    b928:	8fa5005c 	lw	a1,92(sp)
    b92c:	27a60070 	addiu	a2,sp,112
    b930:	27a70064 	addiu	a3,sp,100
    b934:	0c000000 	jal	0 <func_808D6870>
    b938:	e7aa0014 	swc1	$f10,20(sp)
    b93c:	26100001 	addiu	s0,s0,1
    b940:	00108400 	sll	s0,s0,0x10
    b944:	00108403 	sra	s0,s0,0x10
    b948:	2a010096 	slti	at,s0,150
    b94c:	1420ffd8 	bnez	at,b8b0 <func_808E1EB4+0x26c>
    b950:	00000000 	nop
    b954:	24100001 	li	s0,1
    b958:	240203e8 	li	v0,1000
    b95c:	00105840 	sll	t3,s0,0x1
    b960:	26100001 	addiu	s0,s0,1
    b964:	00108400 	sll	s0,s0,0x10
    b968:	00108403 	sra	s0,s0,0x10
    b96c:	2a01000f 	slti	at,s0,15
    b970:	024b6021 	addu	t4,s2,t3
    b974:	1420fff9 	bnez	at,b95c <func_808E1EB4+0x318>
    b978:	a58204e4 	sh	v0,1252(t4)
    b97c:	3c014120 	lui	at,0x4120
    b980:	44819000 	mtc1	at,$f18
    b984:	c64401fc 	lwc1	$f4,508(s2)
    b988:	240d0004 	li	t5,4
    b98c:	240e000a 	li	t6,10
    b990:	240f0001 	li	t7,1
    b994:	a64202e6 	sh	v0,742(s2)
    b998:	a64002e8 	sh	zero,744(s2)
    b99c:	a64d01c4 	sh	t5,452(s2)
    b9a0:	a64e066e 	sh	t6,1646(s2)
    b9a4:	a24f066c 	sb	t7,1644(s2)
    b9a8:	e6520508 	swc1	$f18,1288(s2)
    b9ac:	e7a40010 	swc1	$f4,16(sp)
    b9b0:	c6460200 	lwc1	$f6,512(s2)
    b9b4:	8fa600a4 	lw	a2,164(sp)
    b9b8:	2408012c 	li	t0,300
    b9bc:	e7a60014 	swc1	$f6,20(sp)
    b9c0:	c6480204 	lwc1	$f8,516(s2)
    b9c4:	afa80028 	sw	t0,40(sp)
    b9c8:	afa00024 	sw	zero,36(sp)
    b9cc:	afa00020 	sw	zero,32(sp)
    b9d0:	afa0001c 	sw	zero,28(sp)
    b9d4:	02402825 	move	a1,s2
    b9d8:	240700e8 	li	a3,232
    b9dc:	24c41c24 	addiu	a0,a2,7204
    b9e0:	0c000000 	jal	0 <func_808D6870>
    b9e4:	e7a80018 	swc1	$f8,24(sp)
    b9e8:	3c010000 	lui	at,0x0
    b9ec:	c42a0000 	lwc1	$f10,0(at)
    b9f0:	10000006 	b	ba0c <func_808E1EB4+0x3c8>
    b9f4:	e62a0028 	swc1	$f10,40(s1)
    b9f8:	862901b6 	lh	t1,438(s1)
    b9fc:	55200004 	bnezl	t1,ba10 <func_808E1EB4+0x3cc>
    ba00:	8fbf0054 	lw	ra,84(sp)
    ba04:	0c000000 	jal	0 <func_808D6870>
    ba08:	02202025 	move	a0,s1
    ba0c:	8fbf0054 	lw	ra,84(sp)
    ba10:	d7b40038 	ldc1	$f20,56(sp)
    ba14:	d7b60040 	ldc1	$f22,64(sp)
    ba18:	8fb00048 	lw	s0,72(sp)
    ba1c:	8fb1004c 	lw	s1,76(sp)
    ba20:	8fb20050 	lw	s2,80(sp)
    ba24:	03e00008 	jr	ra
    ba28:	27bd00a0 	addiu	sp,sp,160

0000ba2c <func_808E229C>:
    ba2c:	27bdff48 	addiu	sp,sp,-184
    ba30:	afb40058 	sw	s4,88(sp)
    ba34:	00a0a025 	move	s4,a1
    ba38:	afbf006c 	sw	ra,108(sp)
    ba3c:	afbe0068 	sw	s8,104(sp)
    ba40:	afb70064 	sw	s7,100(sp)
    ba44:	afb60060 	sw	s6,96(sp)
    ba48:	afb5005c 	sw	s5,92(sp)
    ba4c:	afb30054 	sw	s3,84(sp)
    ba50:	afb20050 	sw	s2,80(sp)
    ba54:	afb1004c 	sw	s1,76(sp)
    ba58:	afb00048 	sw	s0,72(sp)
    ba5c:	f7be0040 	sdc1	$f30,64(sp)
    ba60:	f7bc0038 	sdc1	$f28,56(sp)
    ba64:	f7ba0030 	sdc1	$f26,48(sp)
    ba68:	f7b80028 	sdc1	$f24,40(sp)
    ba6c:	f7b60020 	sdc1	$f22,32(sp)
    ba70:	f7b40018 	sdc1	$f20,24(sp)
    ba74:	8ca50000 	lw	a1,0(a1)
    ba78:	00809025 	move	s2,a0
    ba7c:	3c060000 	lui	a2,0x0
    ba80:	24c60000 	addiu	a2,a2,0
    ba84:	27a40094 	addiu	a0,sp,148
    ba88:	24072761 	li	a3,10081
    ba8c:	0c000000 	jal	0 <func_808D6870>
    ba90:	00a09825 	move	s3,a1
    ba94:	0c000000 	jal	0 <func_808D6870>
    ba98:	8e840000 	lw	a0,0(s4)
    ba9c:	8e6202d0 	lw	v0,720(s3)
    baa0:	3c0ffa00 	lui	t7,0xfa00
    baa4:	2418ffff 	li	t8,-1
    baa8:	244e0008 	addiu	t6,v0,8
    baac:	ae6e02d0 	sw	t6,720(s3)
    bab0:	ac580004 	sw	t8,4(v0)
    bab4:	ac4f0000 	sw	t7,0(v0)
    bab8:	8e6202d0 	lw	v0,720(s3)
    babc:	3c08fb00 	lui	t0,0xfb00
    bac0:	3c09ffff 	lui	t1,0xffff
    bac4:	24590008 	addiu	t9,v0,8
    bac8:	ae7902d0 	sw	t9,720(s3)
    bacc:	3c010001 	lui	at,0x1
    bad0:	ac490004 	sw	t1,4(v0)
    bad4:	ac480000 	sw	t0,0(v0)
    bad8:	8e6202d0 	lw	v0,720(s3)
    badc:	34211da0 	ori	at,at,0x1da0
    bae0:	0281b021 	addu	s6,s4,at
    bae4:	3c014700 	lui	at,0x4700
    bae8:	4481f000 	mtc1	at,$f30
    baec:	244a0008 	addiu	t2,v0,8
    baf0:	ae6a02d0 	sw	t2,720(s3)
    baf4:	3c0b0000 	lui	t3,0x0
    baf8:	3c014120 	lui	at,0x4120
    bafc:	256b0000 	addiu	t3,t3,0
    bb00:	3c17de00 	lui	s7,0xde00
    bb04:	4481e000 	mtc1	at,$f28
    bb08:	3c010000 	lui	at,0x0
    bb0c:	ac570000 	sw	s7,0(v0)
    bb10:	ac4b0004 	sw	t3,4(v0)
    bb14:	c43a0000 	lwc1	$f26,0(at)
    bb18:	3c013f80 	lui	at,0x3f80
    bb1c:	4481c000 	mtc1	at,$f24
    bb20:	3c010000 	lui	at,0x0
    bb24:	3c150000 	lui	s5,0x0
    bb28:	26b50000 	addiu	s5,s5,0
    bb2c:	c4360000 	lwc1	$f22,0(at)
    bb30:	24110009 	li	s1,9
    bb34:	241e000f 	li	s8,15
    bb38:	00401825 	move	v1,v0
    bb3c:	864c01a6 	lh	t4,422(s2)
    bb40:	00003825 	move	a3,zero
    bb44:	01916823 	subu	t5,t4,s1
    bb48:	25ae000f 	addiu	t6,t5,15
    bb4c:	01de001a 	div	zero,t6,s8
    bb50:	00001810 	mfhi	v1
    bb54:	00031c00 	sll	v1,v1,0x10
    bb58:	00031c03 	sra	v1,v1,0x10
    bb5c:	00037880 	sll	t7,v1,0x2
    bb60:	01e37823 	subu	t7,t7,v1
    bb64:	000f7880 	sll	t7,t7,0x2
    bb68:	024f1021 	addu	v0,s2,t7
    bb6c:	17c00002 	bnez	s8,bb78 <func_808E229C+0x14c>
    bb70:	00000000 	nop
    bb74:	0007000d 	break	0x7
    bb78:	2401ffff 	li	at,-1
    bb7c:	17c10004 	bne	s8,at,bb90 <func_808E229C+0x164>
    bb80:	3c018000 	lui	at,0x8000
    bb84:	15c10002 	bne	t6,at,bb90 <func_808E229C+0x164>
    bb88:	00000000 	nop
    bb8c:	0006000d 	break	0x6
    bb90:	c44c02ec 	lwc1	$f12,748(v0)
    bb94:	c44e02f0 	lwc1	$f14,752(v0)
    bb98:	0c000000 	jal	0 <func_808D6870>
    bb9c:	8c4602f4 	lw	a2,756(v0)
    bba0:	44912000 	mtc1	s1,$f4
    bba4:	c6480050 	lwc1	$f8,80(s2)
    bba8:	c64a0054 	lwc1	$f10,84(s2)
    bbac:	46802520 	cvt.s.w	$f20,$f4
    bbb0:	c6500058 	lwc1	$f16,88(s2)
    bbb4:	24070001 	li	a3,1
    bbb8:	461aa182 	mul.s	$f6,$f20,$f26
    bbbc:	4606c001 	sub.s	$f0,$f24,$f6
    bbc0:	46004302 	mul.s	$f12,$f8,$f0
    bbc4:	00000000 	nop
    bbc8:	46005382 	mul.s	$f14,$f10,$f0
    bbcc:	00000000 	nop
    bbd0:	46008482 	mul.s	$f18,$f16,$f0
    bbd4:	44069000 	mfc1	a2,$f18
    bbd8:	0c000000 	jal	0 <func_808D6870>
    bbdc:	00000000 	nop
    bbe0:	0c000000 	jal	0 <func_808D6870>
    bbe4:	02c02025 	move	a0,s6
    bbe8:	865800b8 	lh	t8,184(s2)
    bbec:	4616a002 	mul.s	$f0,$f20,$f22
    bbf0:	24050001 	li	a1,1
    bbf4:	44984000 	mtc1	t8,$f8
    bbf8:	00000000 	nop
    bbfc:	468042a0 	cvt.s.w	$f10,$f8
    bc00:	46000100 	add.s	$f4,$f0,$f0
    bc04:	461e5403 	div.s	$f16,$f10,$f30
    bc08:	461c2183 	div.s	$f6,$f4,$f28
    bc0c:	46168482 	mul.s	$f18,$f16,$f22
    bc10:	0c000000 	jal	0 <func_808D6870>
    bc14:	46123300 	add.s	$f12,$f6,$f18
    bc18:	8e6202d0 	lw	v0,720(s3)
    bc1c:	3c08da38 	lui	t0,0xda38
    bc20:	35080003 	ori	t0,t0,0x3
    bc24:	24590008 	addiu	t9,v0,8
    bc28:	ae7902d0 	sw	t9,720(s3)
    bc2c:	3c050000 	lui	a1,0x0
    bc30:	ac480000 	sw	t0,0(v0)
    bc34:	8e840000 	lw	a0,0(s4)
    bc38:	24a50000 	addiu	a1,a1,0
    bc3c:	2406277d 	li	a2,10109
    bc40:	0c000000 	jal	0 <func_808D6870>
    bc44:	00408025 	move	s0,v0
    bc48:	ae020004 	sw	v0,4(s0)
    bc4c:	8e6202d0 	lw	v0,720(s3)
    bc50:	2631ffff 	addiu	s1,s1,-1
    bc54:	00118c00 	sll	s1,s1,0x10
    bc58:	24490008 	addiu	t1,v0,8
    bc5c:	00118c03 	sra	s1,s1,0x10
    bc60:	ae6902d0 	sw	t1,720(s3)
    bc64:	ac550004 	sw	s5,4(v0)
    bc68:	ac570000 	sw	s7,0(v0)
    bc6c:	0621ffb3 	bgez	s1,bb3c <func_808E229C+0x110>
    bc70:	00401825 	move	v1,v0
    bc74:	3c060000 	lui	a2,0x0
    bc78:	24c60000 	addiu	a2,a2,0
    bc7c:	27a40094 	addiu	a0,sp,148
    bc80:	8e850000 	lw	a1,0(s4)
    bc84:	0c000000 	jal	0 <func_808D6870>
    bc88:	24072781 	li	a3,10113
    bc8c:	8fbf006c 	lw	ra,108(sp)
    bc90:	d7b40018 	ldc1	$f20,24(sp)
    bc94:	d7b60020 	ldc1	$f22,32(sp)
    bc98:	d7b80028 	ldc1	$f24,40(sp)
    bc9c:	d7ba0030 	ldc1	$f26,48(sp)
    bca0:	d7bc0038 	ldc1	$f28,56(sp)
    bca4:	d7be0040 	ldc1	$f30,64(sp)
    bca8:	8fb00048 	lw	s0,72(sp)
    bcac:	8fb1004c 	lw	s1,76(sp)
    bcb0:	8fb20050 	lw	s2,80(sp)
    bcb4:	8fb30054 	lw	s3,84(sp)
    bcb8:	8fb40058 	lw	s4,88(sp)
    bcbc:	8fb5005c 	lw	s5,92(sp)
    bcc0:	8fb60060 	lw	s6,96(sp)
    bcc4:	8fb70064 	lw	s7,100(sp)
    bcc8:	8fbe0068 	lw	s8,104(sp)
    bccc:	03e00008 	jr	ra
    bcd0:	27bd00b8 	addiu	sp,sp,184

0000bcd4 <func_808E2544>:
    bcd4:	27bdff60 	addiu	sp,sp,-160
    bcd8:	afbf0044 	sw	ra,68(sp)
    bcdc:	afb20040 	sw	s2,64(sp)
    bce0:	afb1003c 	sw	s1,60(sp)
    bce4:	afb00038 	sw	s0,56(sp)
    bce8:	afa500a4 	sw	a1,164(sp)
    bcec:	a3a0009f 	sb	zero,159(sp)
    bcf0:	8caf1c44 	lw	t7,7236(a1)
    bcf4:	8c920118 	lw	s2,280(a0)
    bcf8:	3c053c23 	lui	a1,0x3c23
    bcfc:	afaf0070 	sw	t7,112(sp)
    bd00:	849801a2 	lh	t8,418(a0)
    bd04:	00808825 	move	s1,a0
    bd08:	34a5d70a 	ori	a1,a1,0xd70a
    bd0c:	27190001 	addiu	t9,t8,1
    bd10:	0c000000 	jal	0 <func_808D6870>
    bd14:	a49901a2 	sh	t9,418(a0)
    bd18:	00008025 	move	s0,zero
    bd1c:	00104040 	sll	t0,s0,0x1
    bd20:	02281021 	addu	v0,s1,t0
    bd24:	844301b6 	lh	v1,438(v0)
    bd28:	26100001 	addiu	s0,s0,1
    bd2c:	00108400 	sll	s0,s0,0x10
    bd30:	10600003 	beqz	v1,bd40 <func_808E2544+0x6c>
    bd34:	00108403 	sra	s0,s0,0x10
    bd38:	2469ffff 	addiu	t1,v1,-1
    bd3c:	a44901b6 	sh	t1,438(v0)
    bd40:	2a010005 	slti	at,s0,5
    bd44:	5420fff6 	bnezl	at,bd20 <func_808E2544+0x4c>
    bd48:	00104040 	sll	t0,s0,0x1
    bd4c:	0c000000 	jal	0 <func_808D6870>
    bd50:	02202025 	move	a0,s1
    bd54:	0c000000 	jal	0 <func_808D6870>
    bd58:	02202025 	move	a0,s1
    bd5c:	862a01a6 	lh	t2,422(s1)
    bd60:	262c0024 	addiu	t4,s1,36
    bd64:	254b0001 	addiu	t3,t2,1
    bd68:	a62b01a6 	sh	t3,422(s1)
    bd6c:	862301a6 	lh	v1,422(s1)
    bd70:	2861000f 	slti	at,v1,15
    bd74:	54200004 	bnezl	at,bd88 <func_808E2544+0xb4>
    bd78:	3c014700 	lui	at,0x4700
    bd7c:	a62001a6 	sh	zero,422(s1)
    bd80:	862301a6 	lh	v1,422(s1)
    bd84:	3c014700 	lui	at,0x4700
    bd88:	afac0050 	sw	t4,80(sp)
    bd8c:	00036880 	sll	t5,v1,0x2
    bd90:	44810000 	mtc1	at,$f0
    bd94:	8d990000 	lw	t9,0(t4)
    bd98:	01a36823 	subu	t5,t5,v1
    bd9c:	3c010000 	lui	at,0x0
    bda0:	000d6880 	sll	t5,t5,0x2
    bda4:	c4220000 	lwc1	$f2,0(at)
    bda8:	022d7021 	addu	t6,s1,t5
    bdac:	add902ec 	sw	t9,748(t6)
    bdb0:	8d980004 	lw	t8,4(t4)
    bdb4:	add802f0 	sw	t8,752(t6)
    bdb8:	8d990008 	lw	t9,8(t4)
    bdbc:	add902f4 	sw	t9,756(t6)
    bdc0:	86280030 	lh	t0,48(s1)
    bdc4:	862901a6 	lh	t1,422(s1)
    bdc8:	44882000 	mtc1	t0,$f4
    bdcc:	00095080 	sll	t2,t1,0x2
    bdd0:	01495023 	subu	t2,t2,t1
    bdd4:	468021a0 	cvt.s.w	$f6,$f4
    bdd8:	000a5080 	sll	t2,t2,0x2
    bddc:	022a5821 	addu	t3,s1,t2
    bde0:	46003203 	div.s	$f8,$f6,$f0
    bde4:	46024282 	mul.s	$f10,$f8,$f2
    bde8:	e56a03c4 	swc1	$f10,964(t3)
    bdec:	862c0032 	lh	t4,50(s1)
    bdf0:	862d01a6 	lh	t5,422(s1)
    bdf4:	448c2000 	mtc1	t4,$f4
    bdf8:	000d7080 	sll	t6,t5,0x2
    bdfc:	01cd7023 	subu	t6,t6,t5
    be00:	468021a0 	cvt.s.w	$f6,$f4
    be04:	000e7080 	sll	t6,t6,0x2
    be08:	022e7821 	addu	t7,s1,t6
    be0c:	46003203 	div.s	$f8,$f6,$f0
    be10:	46024282 	mul.s	$f10,$f8,$f2
    be14:	e5ea03c8 	swc1	$f10,968(t7)
    be18:	862201c2 	lh	v0,450(s1)
    be1c:	2c41000d 	sltiu	at,v0,13
    be20:	10200276 	beqz	at,c7fc <L808E306C>
    be24:	0002c080 	sll	t8,v0,0x2
    be28:	3c010000 	lui	at,0x0
    be2c:	00380821 	addu	at,at,t8
    be30:	8c380000 	lw	t8,0(at)
    be34:	03000008 	jr	t8
    be38:	00000000 	nop

0000be3c <L808E26AC>:
    be3c:	3c014220 	lui	at,0x4220
    be40:	44810000 	mtc1	at,$f0
    be44:	262401cc 	addiu	a0,s1,460
    be48:	3c05437f 	lui	a1,0x437f
    be4c:	44070000 	mfc1	a3,$f0
    be50:	3c063f80 	lui	a2,0x3f80
    be54:	0c000000 	jal	0 <func_808D6870>
    be58:	e6200068 	swc1	$f0,104(s1)
    be5c:	c6440278 	lwc1	$f4,632(s2)
    be60:	c6260024 	lwc1	$f6,36(s1)
    be64:	c648027c 	lwc1	$f8,636(s2)
    be68:	c62a0028 	lwc1	$f10,40(s1)
    be6c:	46062301 	sub.s	$f12,$f4,$f6
    be70:	460a4101 	sub.s	$f4,$f8,$f10
    be74:	e7a40094 	swc1	$f4,148(sp)
    be78:	c628002c 	lwc1	$f8,44(s1)
    be7c:	c6460280 	lwc1	$f6,640(s2)
    be80:	e7ac0098 	swc1	$f12,152(sp)
    be84:	46083381 	sub.s	$f14,$f6,$f8
    be88:	0c000000 	jal	0 <func_808D6870>
    be8c:	e7ae0090 	swc1	$f14,144(sp)
    be90:	3c010000 	lui	at,0x0
    be94:	c42a0000 	lwc1	$f10,0(at)
    be98:	c7a20098 	lwc1	$f2,152(sp)
    be9c:	c7b20090 	lwc1	$f18,144(sp)
    bea0:	460a0102 	mul.s	$f4,$f0,$f10
    bea4:	c7ac0094 	lwc1	$f12,148(sp)
    bea8:	46021202 	mul.s	$f8,$f2,$f2
    beac:	00000000 	nop
    beb0:	46129282 	mul.s	$f10,$f18,$f18
    beb4:	4600218d 	trunc.w.s	$f6,$f4
    beb8:	460a4100 	add.s	$f4,$f8,$f10
    bebc:	44083000 	mfc1	t0,$f6
    bec0:	46002384 	sqrt.s	$f14,$f4
    bec4:	e7a40058 	swc1	$f4,88(sp)
    bec8:	a7a80080 	sh	t0,128(sp)
    becc:	0c000000 	jal	0 <func_808D6870>
    bed0:	e7ae008c 	swc1	$f14,140(sp)
    bed4:	3c0145c0 	lui	at,0x45c0
    bed8:	44816000 	mtc1	at,$f12
    bedc:	3c010000 	lui	at,0x0
    bee0:	c4260000 	lwc1	$f6,0(at)
    bee4:	3c01442f 	lui	at,0x442f
    bee8:	c7b0008c 	lwc1	$f16,140(sp)
    beec:	46060202 	mul.s	$f8,$f0,$f6
    bef0:	44812000 	mtc1	at,$f4
    bef4:	3c014120 	lui	at,0x4120
    bef8:	46048182 	mul.s	$f6,$f16,$f4
    befc:	4600428d 	trunc.w.s	$f10,$f8
    bf00:	44814000 	mtc1	at,$f8
    bf04:	00000000 	nop
    bf08:	46083383 	div.s	$f14,$f6,$f8
    bf0c:	44105000 	mfc1	s0,$f10
    bf10:	00000000 	nop
    bf14:	00108400 	sll	s0,s0,0x10
    bf18:	00108403 	sra	s0,s0,0x10
    bf1c:	460e603c 	c.lt.s	$f12,$f14
    bf20:	00000000 	nop
    bf24:	45020003 	bc1fl	bf34 <L808E26AC+0xf8>
    bf28:	862401a2 	lh	a0,418(s1)
    bf2c:	46006386 	mov.s	$f14,$f12
    bf30:	862401a2 	lh	a0,418(s1)
    bf34:	e7ae0084 	swc1	$f14,132(sp)
    bf38:	00800821 	move	at,a0
    bf3c:	00042100 	sll	a0,a0,0x4
    bf40:	00812021 	addu	a0,a0,at
    bf44:	00042240 	sll	a0,a0,0x9
    bf48:	00042400 	sll	a0,a0,0x10
    bf4c:	0c000000 	jal	0 <func_808D6870>
    bf50:	00042403 	sra	a0,a0,0x10
    bf54:	c7ae0084 	lwc1	$f14,132(sp)
    bf58:	44905000 	mtc1	s0,$f10
    bf5c:	262400b6 	addiu	a0,s1,182
    bf60:	460e0182 	mul.s	$f6,$f0,$f14
    bf64:	24060001 	li	a2,1
    bf68:	46805120 	cvt.s.w	$f4,$f10
    bf6c:	46062200 	add.s	$f8,$f4,$f6
    bf70:	c62406ec 	lwc1	$f4,1772(s1)
    bf74:	4600428d 	trunc.w.s	$f10,$f8
    bf78:	4600218d 	trunc.w.s	$f6,$f4
    bf7c:	44105000 	mfc1	s0,$f10
    bf80:	44073000 	mfc1	a3,$f6
    bf84:	00108400 	sll	s0,s0,0x10
    bf88:	00108403 	sra	s0,s0,0x10
    bf8c:	a6300030 	sh	s0,48(s1)
    bf90:	00073c00 	sll	a3,a3,0x10
    bf94:	00073c03 	sra	a3,a3,0x10
    bf98:	0c000000 	jal	0 <func_808D6870>
    bf9c:	87a50080 	lh	a1,128(sp)
    bfa0:	262406ec 	addiu	a0,s1,1772
    bfa4:	3c054580 	lui	a1,0x4580
    bfa8:	3c063f80 	lui	a2,0x3f80
    bfac:	0c000000 	jal	0 <func_808D6870>
    bfb0:	3c074380 	lui	a3,0x4380
    bfb4:	862401a2 	lh	a0,418(s1)
    bfb8:	00800821 	move	at,a0
    bfbc:	00042080 	sll	a0,a0,0x2
    bfc0:	00812023 	subu	a0,a0,at
    bfc4:	00042080 	sll	a0,a0,0x2
    bfc8:	00812021 	addu	a0,a0,at
    bfcc:	00042240 	sll	a0,a0,0x9
    bfd0:	00042400 	sll	a0,a0,0x10
    bfd4:	0c000000 	jal	0 <func_808D6870>
    bfd8:	00042403 	sra	a0,a0,0x10
    bfdc:	862c00b6 	lh	t4,182(s1)
    bfe0:	c7ae0084 	lwc1	$f14,132(sp)
    bfe4:	c7a20094 	lwc1	$f2,148(sp)
    bfe8:	448c5000 	mtc1	t4,$f10
    bfec:	460e0202 	mul.s	$f8,$f0,$f14
    bff0:	3c014234 	lui	at,0x4234
    bff4:	46805120 	cvt.s.w	$f4,$f10
    bff8:	46044180 	add.s	$f6,$f8,$f4
    bffc:	46021102 	mul.s	$f4,$f2,$f2
    c000:	4600328d 	trunc.w.s	$f10,$f6
    c004:	44813000 	mtc1	at,$f6
    c008:	440e5000 	mfc1	t6,$f10
    c00c:	00000000 	nop
    c010:	a62e0032 	sh	t6,50(s1)
    c014:	c7a80058 	lwc1	$f8,88(sp)
    c018:	46044000 	add.s	$f0,$f8,$f4
    c01c:	46000004 	sqrt.s	$f0,$f0
    c020:	4606003c 	c.lt.s	$f0,$f6
    c024:	00000000 	nop
    c028:	45000005 	bc1f	c040 <L808E26AC+0x204>
    c02c:	00000000 	nop
    c030:	44805000 	mtc1	zero,$f10
    c034:	240f0001 	li	t7,1
    c038:	a62f01c2 	sh	t7,450(s1)
    c03c:	e62a0068 	swc1	$f10,104(s1)
    c040:	100001ee 	b	c7fc <L808E306C>
    c044:	862201c2 	lh	v0,450(s1)

0000c048 <L808E28B8>:
    c048:	3c014220 	lui	at,0x4220
    c04c:	44810000 	mtc1	at,$f0
    c050:	262401cc 	addiu	a0,s1,460
    c054:	3c053f80 	lui	a1,0x3f80
    c058:	44060000 	mfc1	a2,$f0
    c05c:	0c000000 	jal	0 <func_808D6870>
    c060:	00000000 	nop
    c064:	44804000 	mtc1	zero,$f8
    c068:	c62401cc 	lwc1	$f4,460(s1)
    c06c:	46044032 	c.eq.s	$f8,$f4
    c070:	00000000 	nop
    c074:	45000003 	bc1f	c084 <L808E28B8+0x3c>
    c078:	00000000 	nop
    c07c:	0c000000 	jal	0 <func_808D6870>
    c080:	02202025 	move	a0,s1
    c084:	100001dd 	b	c7fc <L808E306C>
    c088:	862201c2 	lh	v0,450(s1)

0000c08c <L808E28FC>:
    c08c:	3c0141a0 	lui	at,0x41a0
    c090:	44813000 	mtc1	at,$f6
    c094:	3c01437f 	lui	at,0x437f
    c098:	44815000 	mtc1	at,$f10
    c09c:	2418000b 	li	t8,11
    c0a0:	2419000e 	li	t9,14
    c0a4:	2408000f 	li	t0,15
    c0a8:	24090014 	li	t1,20
    c0ac:	240afff6 	li	t2,-10
    c0b0:	a63801c2 	sh	t8,450(s1)
    c0b4:	a63901b6 	sh	t9,438(s1)
    c0b8:	a6280650 	sh	t0,1616(s1)
    c0bc:	a6290652 	sh	t1,1618(s1)
    c0c0:	a62a0654 	sh	t2,1620(s1)
    c0c4:	e6260068 	swc1	$f6,104(s1)
    c0c8:	e62a01cc 	swc1	$f10,460(s1)
    c0cc:	8fab0070 	lw	t3,112(sp)
    c0d0:	c6240024 	lwc1	$f4,36(s1)
    c0d4:	c62a002c 	lwc1	$f10,44(s1)
    c0d8:	8d6d0024 	lw	t5,36(t3)
    c0dc:	ae2d01f0 	sw	t5,496(s1)
    c0e0:	8d6c0028 	lw	t4,40(t3)
    c0e4:	c62801f0 	lwc1	$f8,496(s1)
    c0e8:	ae2c01f4 	sw	t4,500(s1)
    c0ec:	8d6d002c 	lw	t5,44(t3)
    c0f0:	46044301 	sub.s	$f12,$f8,$f4
    c0f4:	ae2d01f8 	sw	t5,504(s1)
    c0f8:	c62601f8 	lwc1	$f6,504(s1)
    c0fc:	0c000000 	jal	0 <func_808D6870>
    c100:	460a3381 	sub.s	$f14,$f6,$f10
    c104:	3c010000 	lui	at,0x0
    c108:	c4280000 	lwc1	$f8,0(at)
    c10c:	8628001c 	lh	t0,28(s1)
    c110:	3c01ffdf 	lui	at,0xffdf
    c114:	46080102 	mul.s	$f4,$f0,$f8
    c118:	00084b40 	sll	t1,t0,0xd
    c11c:	34214000 	ori	at,at,0x4000
    c120:	4600218d 	trunc.w.s	$f6,$f4
    c124:	44193000 	mfc1	t9,$f6
    c128:	00000000 	nop
    c12c:	03295021 	addu	t2,t9,t1
    c130:	01415821 	addu	t3,t2,at
    c134:	a62b00b6 	sh	t3,182(s1)

0000c138 <L808E29A8>:
    c138:	862c01b6 	lh	t4,438(s1)
    c13c:	8fad0070 	lw	t5,112(sp)
    c140:	5180003c 	beqzl	t4,c234 <L808E29A8+0xfc>
    c144:	c620008c 	lwc1	$f0,140(s1)
    c148:	8daf0024 	lw	t7,36(t5)
    c14c:	c6280024 	lwc1	$f8,36(s1)
    c150:	3c0141f0 	lui	at,0x41f0
    c154:	ae2f01f0 	sw	t7,496(s1)
    c158:	8dae0028 	lw	t6,40(t5)
    c15c:	c62a01f0 	lwc1	$f10,496(s1)
    c160:	44813000 	mtc1	at,$f6
    c164:	ae2e01f4 	sw	t6,500(s1)
    c168:	c62401f4 	lwc1	$f4,500(s1)
    c16c:	46085301 	sub.s	$f12,$f10,$f8
    c170:	c6280028 	lwc1	$f8,40(s1)
    c174:	8daf002c 	lw	t7,44(t5)
    c178:	46062280 	add.s	$f10,$f4,$f6
    c17c:	ae2f01f8 	sw	t7,504(s1)
    c180:	46085101 	sub.s	$f4,$f10,$f8
    c184:	e7a40094 	swc1	$f4,148(sp)
    c188:	c62a002c 	lwc1	$f10,44(s1)
    c18c:	c62601f8 	lwc1	$f6,504(s1)
    c190:	e7ac0098 	swc1	$f12,152(sp)
    c194:	460a3381 	sub.s	$f14,$f6,$f10
    c198:	0c000000 	jal	0 <func_808D6870>
    c19c:	e7ae0090 	swc1	$f14,144(sp)
    c1a0:	3c010000 	lui	at,0x0
    c1a4:	c4280000 	lwc1	$f8,0(at)
    c1a8:	c7a20098 	lwc1	$f2,152(sp)
    c1ac:	c7b20090 	lwc1	$f18,144(sp)
    c1b0:	46080102 	mul.s	$f4,$f0,$f8
    c1b4:	c7ac0094 	lwc1	$f12,148(sp)
    c1b8:	46021282 	mul.s	$f10,$f2,$f2
    c1bc:	00000000 	nop
    c1c0:	46129202 	mul.s	$f8,$f18,$f18
    c1c4:	4600218d 	trunc.w.s	$f6,$f4
    c1c8:	46085000 	add.s	$f0,$f10,$f8
    c1cc:	44083000 	mfc1	t0,$f6
    c1d0:	46000384 	sqrt.s	$f14,$f0
    c1d4:	0c000000 	jal	0 <func_808D6870>
    c1d8:	a7a80080 	sh	t0,128(sp)
    c1dc:	3c010000 	lui	at,0x0
    c1e0:	c4240000 	lwc1	$f4,0(at)
    c1e4:	c62806ec 	lwc1	$f8,1772(s1)
    c1e8:	262400b6 	addiu	a0,s1,182
    c1ec:	46040182 	mul.s	$f6,$f0,$f4
    c1f0:	4600410d 	trunc.w.s	$f4,$f8
    c1f4:	24060001 	li	a2,1
    c1f8:	44072000 	mfc1	a3,$f4
    c1fc:	4600328d 	trunc.w.s	$f10,$f6
    c200:	00073c00 	sll	a3,a3,0x10
    c204:	00073c03 	sra	a3,a3,0x10
    c208:	44095000 	mfc1	t1,$f10
    c20c:	00000000 	nop
    c210:	a62900b4 	sh	t1,180(s1)
    c214:	0c000000 	jal	0 <func_808D6870>
    c218:	87a50080 	lh	a1,128(sp)
    c21c:	262406ec 	addiu	a0,s1,1772
    c220:	3c054580 	lui	a1,0x4580
    c224:	3c063f80 	lui	a2,0x3f80
    c228:	0c000000 	jal	0 <func_808D6870>
    c22c:	3c074380 	lui	a3,0x4380
    c230:	c620008c 	lwc1	$f0,140(s1)
    c234:	3c014658 	lui	at,0x4658
    c238:	44816000 	mtc1	at,$f12
    c23c:	46000004 	sqrt.s	$f0,$f0
    c240:	3c014348 	lui	at,0x4348
    c244:	44813000 	mtc1	at,$f6
    c248:	3c014120 	lui	at,0x4120
    c24c:	44814000 	mtc1	at,$f8
    c250:	46060282 	mul.s	$f10,$f0,$f6
    c254:	46085383 	div.s	$f14,$f10,$f8
    c258:	460e603c 	c.lt.s	$f12,$f14
    c25c:	00000000 	nop
    c260:	45020003 	bc1fl	c270 <L808E29A8+0x138>
    c264:	862401a2 	lh	a0,418(s1)
    c268:	46006386 	mov.s	$f14,$f12
    c26c:	862401a2 	lh	a0,418(s1)
    c270:	e7ae0084 	swc1	$f14,132(sp)
    c274:	00800821 	move	at,a0
    c278:	00042080 	sll	a0,a0,0x2
    c27c:	00812023 	subu	a0,a0,at
    c280:	00042080 	sll	a0,a0,0x2
    c284:	00812021 	addu	a0,a0,at
    c288:	00042280 	sll	a0,a0,0xa
    c28c:	00042400 	sll	a0,a0,0x10
    c290:	0c000000 	jal	0 <func_808D6870>
    c294:	00042403 	sra	a0,a0,0x10
    c298:	c7ae0084 	lwc1	$f14,132(sp)
    c29c:	862b00b4 	lh	t3,180(s1)
    c2a0:	3c010000 	lui	at,0x0
    c2a4:	460e0102 	mul.s	$f4,$f0,$f14
    c2a8:	c4260000 	lwc1	$f6,0(at)
    c2ac:	448b4000 	mtc1	t3,$f8
    c2b0:	862401a2 	lh	a0,418(s1)
    c2b4:	00800821 	move	at,a0
    c2b8:	46062282 	mul.s	$f10,$f4,$f6
    c2bc:	00042080 	sll	a0,a0,0x2
    c2c0:	00812023 	subu	a0,a0,at
    c2c4:	00042080 	sll	a0,a0,0x2
    c2c8:	00812021 	addu	a0,a0,at
    c2cc:	00042240 	sll	a0,a0,0x9
    c2d0:	46804120 	cvt.s.w	$f4,$f8
    c2d4:	00042400 	sll	a0,a0,0x10
    c2d8:	00042403 	sra	a0,a0,0x10
    c2dc:	46045180 	add.s	$f6,$f10,$f4
    c2e0:	4600320d 	trunc.w.s	$f8,$f6
    c2e4:	440d4000 	mfc1	t5,$f8
    c2e8:	0c000000 	jal	0 <func_808D6870>
    c2ec:	a62d0030 	sh	t5,48(s1)
    c2f0:	862e00b6 	lh	t6,182(s1)
    c2f4:	c7ae0084 	lwc1	$f14,132(sp)
    c2f8:	448e2000 	mtc1	t6,$f4
    c2fc:	460e0282 	mul.s	$f10,$f0,$f14
    c300:	468021a0 	cvt.s.w	$f6,$f4
    c304:	46065200 	add.s	$f8,$f10,$f6
    c308:	4600410d 	trunc.w.s	$f4,$f8
    c30c:	44182000 	mfc1	t8,$f4
    c310:	00000000 	nop
    c314:	a6380032 	sh	t8,50(s1)
    c318:	8fa80070 	lw	t0,112(sp)
    c31c:	81190843 	lb	t9,2115(t0)
    c320:	5320001f 	beqzl	t9,c3a0 <L808E29A8+0x268>
    c324:	92230621 	lbu	v1,1569(s1)
    c328:	81090842 	lb	t1,2114(t0)
    c32c:	29210018 	slti	at,t1,24
    c330:	1420001a 	bnez	at,c39c <L808E29A8+0x264>
    c334:	3c0142a0 	lui	at,0x42a0
    c338:	44813000 	mtc1	at,$f6
    c33c:	c62a0090 	lwc1	$f10,144(s1)
    c340:	240a000c 	li	t2,12
    c344:	3c01c1f0 	lui	at,0xc1f0
    c348:	4606503c 	c.lt.s	$f10,$f6
    c34c:	02202025 	move	a0,s1
    c350:	263001f0 	addiu	s0,s1,496
    c354:	45020012 	bc1fl	c3a0 <L808E29A8+0x268>
    c358:	92230621 	lbu	v1,1569(s1)
    c35c:	44814000 	mtc1	at,$f8
    c360:	a62a01c2 	sh	t2,450(s1)
    c364:	0c000000 	jal	0 <func_808D6870>
    c368:	e6280068 	swc1	$f8,104(s1)
    c36c:	0c000000 	jal	0 <func_808D6870>
    c370:	02202025 	move	a0,s1
    c374:	8e4c01fc 	lw	t4,508(s2)
    c378:	240d000a 	li	t5,10
    c37c:	ae0c0000 	sw	t4,0(s0)
    c380:	8e4b0200 	lw	t3,512(s2)
    c384:	ae0b0004 	sw	t3,4(s0)
    c388:	8e4c0204 	lw	t4,516(s2)
    c38c:	ae0c0008 	sw	t4,8(s0)
    c390:	a3ad009f 	sb	t5,159(sp)
    c394:	10000119 	b	c7fc <L808E306C>
    c398:	862201c2 	lh	v0,450(s1)
    c39c:	92230621 	lbu	v1,1569(s1)
    c3a0:	306e0002 	andi	t6,v1,0x2
    c3a4:	51c00046 	beqzl	t6,c4c0 <L808E29A8+0x388>
    c3a8:	26300610 	addiu	s0,s1,1552
    c3ac:	8e22064c 	lw	v0,1612(s1)
    c3b0:	306ffffd 	andi	t7,v1,0xfffd
    c3b4:	a22f0621 	sb	t7,1569(s1)
    c3b8:	8c580000 	lw	t8,0(v0)
    c3bc:	0018cac0 	sll	t9,t8,0xb
    c3c0:	07230006 	bgezl	t9,c3dc <L808E29A8+0x2a4>
    c3c4:	c62c008c 	lwc1	$f12,140(s1)
    c3c8:	0c000000 	jal	0 <func_808D6870>
    c3cc:	8fa400a4 	lw	a0,164(sp)
    c3d0:	5040003b 	beqzl	v0,c4c0 <L808E29A8+0x388>
    c3d4:	26300610 	addiu	s0,s1,1552
    c3d8:	c62c008c 	lwc1	$f12,140(s1)
    c3dc:	240500b4 	li	a1,180
    c3e0:	24060014 	li	a2,20
    c3e4:	0c000000 	jal	0 <func_808D6870>
    c3e8:	24070064 	li	a3,100
    c3ec:	3c01c1f0 	lui	at,0xc1f0
    c3f0:	44812000 	mtc1	at,$f4
    c3f4:	2408000c 	li	t0,12
    c3f8:	a62801c2 	sh	t0,450(s1)
    c3fc:	02202025 	move	a0,s1
    c400:	0c000000 	jal	0 <func_808D6870>
    c404:	e6240068 	swc1	$f4,104(s1)
    c408:	0c000000 	jal	0 <func_808D6870>
    c40c:	02202025 	move	a0,s1
    c410:	3c01442f 	lui	at,0x442f
    c414:	44816000 	mtc1	at,$f12
    c418:	0c000000 	jal	0 <func_808D6870>
    c41c:	00000000 	nop
    c420:	c64a01fc 	lwc1	$f10,508(s2)
    c424:	3c014348 	lui	at,0x4348
    c428:	44816000 	mtc1	at,$f12
    c42c:	460a0180 	add.s	$f6,$f0,$f10
    c430:	0c000000 	jal	0 <func_808D6870>
    c434:	e62601f0 	swc1	$f6,496(s1)
    c438:	c6480200 	lwc1	$f8,512(s2)
    c43c:	3c01442f 	lui	at,0x442f
    c440:	44816000 	mtc1	at,$f12
    c444:	46080100 	add.s	$f4,$f0,$f8
    c448:	0c000000 	jal	0 <func_808D6870>
    c44c:	e62401f4 	swc1	$f4,500(s1)
    c450:	c62201f0 	lwc1	$f2,496(s1)
    c454:	c6280024 	lwc1	$f8,36(s1)
    c458:	c64a0204 	lwc1	$f10,516(s2)
    c45c:	3c0142c8 	lui	at,0x42c8
    c460:	46081101 	sub.s	$f4,$f2,$f8
    c464:	44818000 	mtc1	at,$f16
    c468:	c6280028 	lwc1	$f8,40(s1)
    c46c:	460a0180 	add.s	$f6,$f0,$f10
    c470:	46102282 	mul.s	$f10,$f4,$f16
    c474:	c62e01f4 	lwc1	$f14,500(s1)
    c478:	2409000a 	li	t1,10
    c47c:	e62601f8 	swc1	$f6,504(s1)
    c480:	c62c01f8 	lwc1	$f12,504(s1)
    c484:	46087101 	sub.s	$f4,$f14,$f8
    c488:	c628002c 	lwc1	$f8,44(s1)
    c48c:	460a1180 	add.s	$f6,$f2,$f10
    c490:	46102282 	mul.s	$f10,$f4,$f16
    c494:	46086101 	sub.s	$f4,$f12,$f8
    c498:	e62601f0 	swc1	$f6,496(s1)
    c49c:	460a7180 	add.s	$f6,$f14,$f10
    c4a0:	46102282 	mul.s	$f10,$f4,$f16
    c4a4:	e62601f4 	swc1	$f6,500(s1)
    c4a8:	460a6180 	add.s	$f6,$f12,$f10
    c4ac:	e62601f8 	swc1	$f6,504(s1)
    c4b0:	a3a9009f 	sb	t1,159(sp)
    c4b4:	100000d1 	b	c7fc <L808E306C>
    c4b8:	862201c2 	lh	v0,450(s1)
    c4bc:	26300610 	addiu	s0,s1,1552
    c4c0:	02002825 	move	a1,s0
    c4c4:	0c000000 	jal	0 <func_808D6870>
    c4c8:	02202025 	move	a0,s1
    c4cc:	862a01b8 	lh	t2,440(s1)
    c4d0:	3c010001 	lui	at,0x1
    c4d4:	34211e60 	ori	at,at,0x1e60
    c4d8:	15400004 	bnez	t2,c4ec <L808E29A8+0x3b4>
    c4dc:	8fa400a4 	lw	a0,164(sp)
    c4e0:	00812821 	addu	a1,a0,at
    c4e4:	0c000000 	jal	0 <func_808D6870>
    c4e8:	02003025 	move	a2,s0
    c4ec:	8fac0070 	lw	t4,112(sp)
    c4f0:	c6240024 	lwc1	$f4,36(s1)
    c4f4:	3c0141f0 	lui	at,0x41f0
    c4f8:	c5880024 	lwc1	$f8,36(t4)
    c4fc:	44813000 	mtc1	at,$f6
    c500:	c58a0028 	lwc1	$f10,40(t4)
    c504:	46044081 	sub.s	$f2,$f8,$f4
    c508:	c6240028 	lwc1	$f4,40(s1)
    c50c:	46065200 	add.s	$f8,$f10,$f6
    c510:	c626002c 	lwc1	$f6,44(s1)
    c514:	c58a002c 	lwc1	$f10,44(t4)
    c518:	46044381 	sub.s	$f14,$f8,$f4
    c51c:	46021202 	mul.s	$f8,$f2,$f2
    c520:	46065301 	sub.s	$f12,$f10,$f6
    c524:	460c6102 	mul.s	$f4,$f12,$f12
    c528:	46044280 	add.s	$f10,$f8,$f4
    c52c:	460e7182 	mul.s	$f6,$f14,$f14
    c530:	44814000 	mtc1	at,$f8
    c534:	46065000 	add.s	$f0,$f10,$f6
    c538:	46000004 	sqrt.s	$f0,$f0
    c53c:	4608003c 	c.lt.s	$f0,$f8
    c540:	00000000 	nop
    c544:	4500002c 	bc1f	c5f8 <L808E29A8+0x4c0>
    c548:	00000000 	nop
    c54c:	44802000 	mtc1	zero,$f4
    c550:	240d0001 	li	t5,1
    c554:	a62d01c2 	sh	t5,450(s1)
    c558:	e6240068 	swc1	$f4,104(s1)
    c55c:	864e01ba 	lh	t6,442(s2)
    c560:	8fa400a4 	lw	a0,164(sp)
    c564:	02202825 	move	a1,s1
    c568:	15c00023 	bnez	t6,c5f8 <L808E29A8+0x4c0>
    c56c:	3c064040 	lui	a2,0x4040
    c570:	44805000 	mtc1	zero,$f10
    c574:	86270032 	lh	a3,50(s1)
    c578:	240f0050 	li	t7,80
    c57c:	afaf0014 	sw	t7,20(sp)
    c580:	0c000000 	jal	0 <func_808D6870>
    c584:	e7aa0010 	swc1	$f10,16(sp)
    c588:	8fa400a4 	lw	a0,164(sp)
    c58c:	8fa50050 	lw	a1,80(sp)
    c590:	24060028 	li	a2,40
    c594:	0c000000 	jal	0 <func_808D6870>
    c598:	2407390b 	li	a3,14603
    c59c:	24180014 	li	t8,20
    c5a0:	3c020000 	lui	v0,0x0
    c5a4:	a65801ba 	sh	t8,442(s2)
    c5a8:	24420000 	addiu	v0,v0,0
    c5ac:	00008025 	move	s0,zero
    c5b0:	0050c821 	addu	t9,v0,s0
    c5b4:	00104840 	sll	t1,s0,0x1
    c5b8:	26100001 	addiu	s0,s0,1
    c5bc:	00108400 	sll	s0,s0,0x10
    c5c0:	93280000 	lbu	t0,0(t9)
    c5c4:	00108403 	sra	s0,s0,0x10
    c5c8:	2a010012 	slti	at,s0,18
    c5cc:	02495021 	addu	t2,s2,t1
    c5d0:	1420fff7 	bnez	at,c5b0 <L808E29A8+0x478>
    c5d4:	a54804e4 	sh	t0,1252(t2)
    c5d8:	3c014080 	lui	at,0x4080
    c5dc:	44813000 	mtc1	at,$f6
    c5e0:	240b003c 	li	t3,60
    c5e4:	a64002e6 	sh	zero,742(s2)
    c5e8:	a64b02e8 	sh	t3,744(s2)
    c5ec:	240c0028 	li	t4,40
    c5f0:	e6460508 	swc1	$f6,1288(s2)
    c5f4:	a3ac009f 	sb	t4,159(sp)
    c5f8:	10000080 	b	c7fc <L808E306C>
    c5fc:	862201c2 	lh	v0,450(s1)

0000c600 <L808E2E70>:
    c600:	3c0141a0 	lui	at,0x41a0
    c604:	44814000 	mtc1	at,$f8
    c608:	c62401f0 	lwc1	$f4,496(s1)
    c60c:	c62a0024 	lwc1	$f10,36(s1)
    c610:	e6280068 	swc1	$f8,104(s1)
    c614:	c6280028 	lwc1	$f8,40(s1)
    c618:	c62601f4 	lwc1	$f6,500(s1)
    c61c:	460a2301 	sub.s	$f12,$f4,$f10
    c620:	46083101 	sub.s	$f4,$f6,$f8
    c624:	e7a40094 	swc1	$f4,148(sp)
    c628:	c626002c 	lwc1	$f6,44(s1)
    c62c:	c62a01f8 	lwc1	$f10,504(s1)
    c630:	e7ac0098 	swc1	$f12,152(sp)
    c634:	46065381 	sub.s	$f14,$f10,$f6
    c638:	0c000000 	jal	0 <func_808D6870>
    c63c:	e7ae0090 	swc1	$f14,144(sp)
    c640:	3c010000 	lui	at,0x0
    c644:	c4280000 	lwc1	$f8,0(at)
    c648:	c7a20098 	lwc1	$f2,152(sp)
    c64c:	c7b20090 	lwc1	$f18,144(sp)
    c650:	46080102 	mul.s	$f4,$f0,$f8
    c654:	c7ac0094 	lwc1	$f12,148(sp)
    c658:	46021182 	mul.s	$f6,$f2,$f2
    c65c:	00000000 	nop
    c660:	46129202 	mul.s	$f8,$f18,$f18
    c664:	4600228d 	trunc.w.s	$f10,$f4
    c668:	46083000 	add.s	$f0,$f6,$f8
    c66c:	440e5000 	mfc1	t6,$f10
    c670:	46000384 	sqrt.s	$f14,$f0
    c674:	a7ae0080 	sh	t6,128(sp)
    c678:	0c000000 	jal	0 <func_808D6870>
    c67c:	e7ae008c 	swc1	$f14,140(sp)
    c680:	3c0145c0 	lui	at,0x45c0
    c684:	44816000 	mtc1	at,$f12
    c688:	3c010000 	lui	at,0x0
    c68c:	c4240000 	lwc1	$f4,0(at)
    c690:	3c01442f 	lui	at,0x442f
    c694:	c7b0008c 	lwc1	$f16,140(sp)
    c698:	46040282 	mul.s	$f10,$f0,$f4
    c69c:	44814000 	mtc1	at,$f8
    c6a0:	3c014120 	lui	at,0x4120
    c6a4:	46088102 	mul.s	$f4,$f16,$f8
    c6a8:	4600518d 	trunc.w.s	$f6,$f10
    c6ac:	44815000 	mtc1	at,$f10
    c6b0:	00000000 	nop
    c6b4:	460a2383 	div.s	$f14,$f4,$f10
    c6b8:	44103000 	mfc1	s0,$f6
    c6bc:	00000000 	nop
    c6c0:	00108400 	sll	s0,s0,0x10
    c6c4:	00108403 	sra	s0,s0,0x10
    c6c8:	460e603c 	c.lt.s	$f12,$f14
    c6cc:	00000000 	nop
    c6d0:	45020003 	bc1fl	c6e0 <L808E2E70+0xe0>
    c6d4:	862401a2 	lh	a0,418(s1)
    c6d8:	46006386 	mov.s	$f14,$f12
    c6dc:	862401a2 	lh	a0,418(s1)
    c6e0:	e7ae0084 	swc1	$f14,132(sp)
    c6e4:	00800821 	move	at,a0
    c6e8:	00042100 	sll	a0,a0,0x4
    c6ec:	00812021 	addu	a0,a0,at
    c6f0:	00042240 	sll	a0,a0,0x9
    c6f4:	00042400 	sll	a0,a0,0x10
    c6f8:	0c000000 	jal	0 <func_808D6870>
    c6fc:	00042403 	sra	a0,a0,0x10
    c700:	87b80080 	lh	t8,128(sp)
    c704:	c7ae0084 	lwc1	$f14,132(sp)
    c708:	44983000 	mtc1	t8,$f6
    c70c:	460e0102 	mul.s	$f4,$f0,$f14
    c710:	46803220 	cvt.s.w	$f8,$f6
    c714:	46044280 	add.s	$f10,$f8,$f4
    c718:	4600518d 	trunc.w.s	$f6,$f10
    c71c:	44093000 	mfc1	t1,$f6
    c720:	00000000 	nop
    c724:	a7a90080 	sh	t1,128(sp)
    c728:	862401a2 	lh	a0,418(s1)
    c72c:	00800821 	move	at,a0
    c730:	00042080 	sll	a0,a0,0x2
    c734:	00812023 	subu	a0,a0,at
    c738:	000422c0 	sll	a0,a0,0xb
    c73c:	00042400 	sll	a0,a0,0x10
    c740:	0c000000 	jal	0 <func_808D6870>
    c744:	00042403 	sra	a0,a0,0x10
    c748:	c7ae0084 	lwc1	$f14,132(sp)
    c74c:	44904000 	mtc1	s0,$f8
    c750:	3c014234 	lui	at,0x4234
    c754:	460e0282 	mul.s	$f10,$f0,$f14
    c758:	02402025 	move	a0,s2
    c75c:	46804120 	cvt.s.w	$f4,$f8
    c760:	460a2180 	add.s	$f6,$f4,$f10
    c764:	c62a0024 	lwc1	$f10,36(s1)
    c768:	4600320d 	trunc.w.s	$f8,$f6
    c76c:	44104000 	mfc1	s0,$f8
    c770:	c6280028 	lwc1	$f8,40(s1)
    c774:	00108400 	sll	s0,s0,0x10
    c778:	00108403 	sra	s0,s0,0x10
    c77c:	a6300030 	sh	s0,48(s1)
    c780:	87aa0080 	lh	t2,128(sp)
    c784:	a62a0032 	sh	t2,50(s1)
    c788:	c64401fc 	lwc1	$f4,508(s2)
    c78c:	c6460200 	lwc1	$f6,512(s2)
    c790:	460a2081 	sub.s	$f2,$f4,$f10
    c794:	c62a002c 	lwc1	$f10,44(s1)
    c798:	c6440204 	lwc1	$f4,516(s2)
    c79c:	46083401 	sub.s	$f16,$f6,$f8
    c7a0:	46021182 	mul.s	$f6,$f2,$f2
    c7a4:	460a2301 	sub.s	$f12,$f4,$f10
    c7a8:	460c6202 	mul.s	$f8,$f12,$f12
    c7ac:	46083100 	add.s	$f4,$f6,$f8
    c7b0:	46108282 	mul.s	$f10,$f16,$f16
    c7b4:	44813000 	mtc1	at,$f6
    c7b8:	460a2000 	add.s	$f0,$f4,$f10
    c7bc:	46000004 	sqrt.s	$f0,$f0
    c7c0:	4606003c 	c.lt.s	$f0,$f6
    c7c4:	00000000 	nop
    c7c8:	4502000c 	bc1fl	c7fc <L808E306C>
    c7cc:	862201c2 	lh	v0,450(s1)
    c7d0:	0c000000 	jal	0 <func_808D6870>
    c7d4:	8fa500a4 	lw	a1,164(sp)
    c7d8:	240b0096 	li	t3,150
    c7dc:	44804000 	mtc1	zero,$f8
    c7e0:	a62b01b6 	sh	t3,438(s1)
    c7e4:	240c0028 	li	t4,40
    c7e8:	a3ac009f 	sb	t4,159(sp)
    c7ec:	240d0001 	li	t5,1
    c7f0:	a62d01c2 	sh	t5,450(s1)
    c7f4:	e6280068 	swc1	$f8,104(s1)
    c7f8:	862201c2 	lh	v0,450(s1)

0000c7fc <L808E306C>:
    c7fc:	2841000b 	slti	at,v0,11
    c800:	1420003e 	bnez	at,c8fc <L808E306C+0x100>
    c804:	2401000c 	li	at,12
    c808:	14410005 	bne	v0,at,c820 <L808E306C+0x24>
    c80c:	c62c0024 	lwc1	$f12,36(s1)
    c810:	3c01c282 	lui	at,0xc282
    c814:	44818000 	mtc1	at,$f16
    c818:	10000003 	b	c828 <L808E306C+0x2c>
    c81c:	00000000 	nop
    c820:	44808000 	mtc1	zero,$f16
    c824:	00000000 	nop
    c828:	3c010000 	lui	at,0x0
    c82c:	c4240000 	lwc1	$f4,0(at)
    c830:	46006005 	abs.s	$f0,$f12
    c834:	240e0001 	li	t6,1
    c838:	46102080 	add.s	$f2,$f4,$f16
    c83c:	240f000a 	li	t7,10
    c840:	4600103c 	c.lt.s	$f2,$f0
    c844:	00000000 	nop
    c848:	45030015 	bc1tl	c8a0 <L808E306C+0xa4>
    c84c:	44804000 	mtc1	zero,$f8
    c850:	c620002c 	lwc1	$f0,44(s1)
    c854:	46000005 	abs.s	$f0,$f0
    c858:	4600103c 	c.lt.s	$f2,$f0
    c85c:	00000000 	nop
    c860:	4503000f 	bc1tl	c8a0 <L808E306C+0xa4>
    c864:	44804000 	mtc1	zero,$f8
    c868:	c6200028 	lwc1	$f0,40(s1)
    c86c:	44805000 	mtc1	zero,$f10
    c870:	3c0143e1 	lui	at,0x43e1
    c874:	460a003c 	c.lt.s	$f0,$f10
    c878:	00000000 	nop
    c87c:	45030008 	bc1tl	c8a0 <L808E306C+0xa4>
    c880:	44804000 	mtc1	zero,$f8
    c884:	44813000 	mtc1	at,$f6
    c888:	00000000 	nop
    c88c:	4600303c 	c.lt.s	$f6,$f0
    c890:	00000000 	nop
    c894:	4502001a 	bc1fl	c900 <L808E306C+0x104>
    c898:	93b9009f 	lbu	t9,159(sp)
    c89c:	44804000 	mtc1	zero,$f8
    c8a0:	a62e01c2 	sh	t6,450(s1)
    c8a4:	02202025 	move	a0,s1
    c8a8:	e6280068 	swc1	$f8,104(s1)
    c8ac:	a3af009f 	sb	t7,159(sp)
    c8b0:	8fa60050 	lw	a2,80(sp)
    c8b4:	0c000000 	jal	0 <func_808D6870>
    c8b8:	8fa500a4 	lw	a1,164(sp)
    c8bc:	c6240024 	lwc1	$f4,36(s1)
    c8c0:	8fa600a4 	lw	a2,164(sp)
    c8c4:	24180190 	li	t8,400
    c8c8:	e7a40010 	swc1	$f4,16(sp)
    c8cc:	c62a0028 	lwc1	$f10,40(s1)
    c8d0:	02402825 	move	a1,s2
    c8d4:	240700e8 	li	a3,232
    c8d8:	e7aa0014 	swc1	$f10,20(sp)
    c8dc:	c626002c 	lwc1	$f6,44(s1)
    c8e0:	afb80028 	sw	t8,40(sp)
    c8e4:	afa00024 	sw	zero,36(sp)
    c8e8:	afa00020 	sw	zero,32(sp)
    c8ec:	afa0001c 	sw	zero,28(sp)
    c8f0:	24c41c24 	addiu	a0,a2,7204
    c8f4:	0c000000 	jal	0 <func_808D6870>
    c8f8:	e7a60018 	swc1	$f6,24(sp)
    c8fc:	93b9009f 	lbu	t9,159(sp)
    c900:	8fa400a4 	lw	a0,164(sp)
    c904:	8fa50050 	lw	a1,80(sp)
    c908:	1320002e 	beqz	t9,c9c4 <L808E306C+0x1c8>
    c90c:	24060050 	li	a2,80
    c910:	0c000000 	jal	0 <func_808D6870>
    c914:	240738a2 	li	a3,14498
    c918:	93a2009f 	lbu	v0,159(sp)
    c91c:	00008025 	move	s0,zero
    c920:	58400029 	blezl	v0,c9c8 <L808E306C+0x1cc>
    c924:	8fbf0044 	lw	ra,68(sp)
    c928:	afa20058 	sw	v0,88(sp)
    c92c:	3c0141f0 	lui	at,0x41f0
    c930:	44816000 	mtc1	at,$f12
    c934:	0c000000 	jal	0 <func_808D6870>
    c938:	00000000 	nop
    c93c:	3c0141f0 	lui	at,0x41f0
    c940:	44816000 	mtc1	at,$f12
    c944:	0c000000 	jal	0 <func_808D6870>
    c948:	e7a00060 	swc1	$f0,96(sp)
    c94c:	3c0141f0 	lui	at,0x41f0
    c950:	44816000 	mtc1	at,$f12
    c954:	0c000000 	jal	0 <func_808D6870>
    c958:	e7a00064 	swc1	$f0,100(sp)
    c95c:	3c014348 	lui	at,0x4348
    c960:	44816000 	mtc1	at,$f12
    c964:	0c000000 	jal	0 <func_808D6870>
    c968:	e7a00068 	swc1	$f0,104(sp)
    c96c:	3c0143fa 	lui	at,0x43fa
    c970:	44814000 	mtc1	at,$f8
    c974:	3c014170 	lui	at,0x4170
    c978:	44815000 	mtc1	at,$f10
    c97c:	46080100 	add.s	$f4,$f0,$f8
    c980:	3c070000 	lui	a3,0x0
    c984:	2409001e 	li	t1,30
    c988:	afa90018 	sw	t1,24(sp)
    c98c:	24e70000 	addiu	a3,a3,0
    c990:	e7a40010 	swc1	$f4,16(sp)
    c994:	8fa400a4 	lw	a0,164(sp)
    c998:	8fa50050 	lw	a1,80(sp)
    c99c:	27a60060 	addiu	a2,sp,96
    c9a0:	0c000000 	jal	0 <func_808D6870>
    c9a4:	e7aa0014 	swc1	$f10,20(sp)
    c9a8:	8fa80058 	lw	t0,88(sp)
    c9ac:	26100001 	addiu	s0,s0,1
    c9b0:	00108400 	sll	s0,s0,0x10
    c9b4:	00108403 	sra	s0,s0,0x10
    c9b8:	0208082a 	slt	at,s0,t0
    c9bc:	5420ffdc 	bnezl	at,c930 <L808E306C+0x134>
    c9c0:	3c0141f0 	lui	at,0x41f0
    c9c4:	8fbf0044 	lw	ra,68(sp)
    c9c8:	8fb00038 	lw	s0,56(sp)
    c9cc:	8fb1003c 	lw	s1,60(sp)
    c9d0:	8fb20040 	lw	s2,64(sp)
    c9d4:	03e00008 	jr	ra
    c9d8:	27bd00a0 	addiu	sp,sp,160

0000c9dc <func_808E324C>:
    c9dc:	27bdff70 	addiu	sp,sp,-144
    c9e0:	afb20020 	sw	s2,32(sp)
    c9e4:	00809025 	move	s2,a0
    c9e8:	afbf003c 	sw	ra,60(sp)
    c9ec:	afbe0038 	sw	s8,56(sp)
    c9f0:	afb70034 	sw	s7,52(sp)
    c9f4:	afb60030 	sw	s6,48(sp)
    c9f8:	afb5002c 	sw	s5,44(sp)
    c9fc:	afb40028 	sw	s4,40(sp)
    ca00:	afb30024 	sw	s3,36(sp)
    ca04:	afb1001c 	sw	s1,28(sp)
    ca08:	afb00018 	sw	s0,24(sp)
    ca0c:	afa50094 	sw	a1,148(sp)
    ca10:	8ca40000 	lw	a0,0(a1)
    ca14:	0c000000 	jal	0 <func_808D6870>
    ca18:	24050300 	li	a1,768
    ca1c:	8faf0094 	lw	t7,148(sp)
    ca20:	3c060000 	lui	a2,0x0
    ca24:	00409825 	move	s3,v0
    ca28:	8de50000 	lw	a1,0(t7)
    ca2c:	24c60000 	addiu	a2,a2,0
    ca30:	27a4006c 	addiu	a0,sp,108
    ca34:	240728f9 	li	a3,10489
    ca38:	0c000000 	jal	0 <func_808D6870>
    ca3c:	00a0a025 	move	s4,a1
    ca40:	8fb80094 	lw	t8,148(sp)
    ca44:	0c000000 	jal	0 <func_808D6870>
    ca48:	8f040000 	lw	a0,0(t8)
    ca4c:	8e8302d0 	lw	v1,720(s4)
    ca50:	3c08fa00 	lui	t0,0xfa00
    ca54:	35080080 	ori	t0,t0,0x80
    ca58:	24790008 	addiu	t9,v1,8
    ca5c:	ae9902d0 	sw	t9,720(s4)
    ca60:	ac680000 	sw	t0,0(v1)
    ca64:	c64401cc 	lwc1	$f4,460(s2)
    ca68:	2401ff00 	li	at,-256
    ca6c:	3c1996ff 	lui	t9,0x96ff
    ca70:	4600218d 	trunc.w.s	$f6,$f4
    ca74:	37390080 	ori	t9,t9,0x80
    ca78:	3c18fb00 	lui	t8,0xfb00
    ca7c:	3c09db06 	lui	t1,0xdb06
    ca80:	440c3000 	mfc1	t4,$f6
    ca84:	35290034 	ori	t1,t1,0x34
    ca88:	3c1eda38 	lui	s8,0xda38
    ca8c:	318d00ff 	andi	t5,t4,0xff
    ca90:	01a17025 	or	t6,t5,at
    ca94:	ac6e0004 	sw	t6,4(v1)
    ca98:	8e8302d0 	lw	v1,720(s4)
    ca9c:	3c170000 	lui	s7,0x0
    caa0:	26f70000 	addiu	s7,s7,0
    caa4:	246f0008 	addiu	t7,v1,8
    caa8:	ae8f02d0 	sw	t7,720(s4)
    caac:	ac790004 	sw	t9,4(v1)
    cab0:	ac780000 	sw	t8,0(v1)
    cab4:	8e8302d0 	lw	v1,720(s4)
    cab8:	37de0003 	ori	s8,s8,0x3
    cabc:	00008825 	move	s1,zero
    cac0:	24680008 	addiu	t0,v1,8
    cac4:	ae8802d0 	sw	t0,720(s4)
    cac8:	2416000c 	li	s6,12
    cacc:	2415000f 	li	s5,15
    cad0:	ac730004 	sw	s3,4(v1)
    cad4:	ac690000 	sw	t1,0(v1)
    cad8:	00601025 	move	v0,v1
    cadc:	864a01a6 	lh	t2,422(s2)
    cae0:	00003825 	move	a3,zero
    cae4:	01515823 	subu	t3,t2,s1
    cae8:	256c000f 	addiu	t4,t3,15
    caec:	0195001a 	div	zero,t4,s5
    caf0:	00001010 	mfhi	v0
    caf4:	00021400 	sll	v0,v0,0x10
    caf8:	00021403 	sra	v0,v0,0x10
    cafc:	00560019 	multu	v0,s6
    cb00:	16a00002 	bnez	s5,cb0c <func_808E324C+0x130>
    cb04:	00000000 	nop
    cb08:	0007000d 	break	0x7
    cb0c:	2401ffff 	li	at,-1
    cb10:	16a10004 	bne	s5,at,cb24 <func_808E324C+0x148>
    cb14:	3c018000 	lui	at,0x8000
    cb18:	15810002 	bne	t4,at,cb24 <func_808E324C+0x148>
    cb1c:	00000000 	nop
    cb20:	0006000d 	break	0x6
    cb24:	00006812 	mflo	t5
    cb28:	024d8021 	addu	s0,s2,t5
    cb2c:	c60c02ec 	lwc1	$f12,748(s0)
    cb30:	c60e02f0 	lwc1	$f14,752(s0)
    cb34:	0c000000 	jal	0 <func_808D6870>
    cb38:	8e0602f4 	lw	a2,756(s0)
    cb3c:	c60c03c8 	lwc1	$f12,968(s0)
    cb40:	0c000000 	jal	0 <func_808D6870>
    cb44:	24050001 	li	a1,1
    cb48:	c60c03c4 	lwc1	$f12,964(s0)
    cb4c:	24050001 	li	a1,1
    cb50:	0c000000 	jal	0 <func_808D6870>
    cb54:	46006307 	neg.s	$f12,$f12
    cb58:	c64c0050 	lwc1	$f12,80(s2)
    cb5c:	c64e0054 	lwc1	$f14,84(s2)
    cb60:	8e460058 	lw	a2,88(s2)
    cb64:	0c000000 	jal	0 <func_808D6870>
    cb68:	24070001 	li	a3,1
    cb6c:	3c010000 	lui	at,0x0
    cb70:	c42c0000 	lwc1	$f12,0(at)
    cb74:	0c000000 	jal	0 <func_808D6870>
    cb78:	24050001 	li	a1,1
    cb7c:	3c050000 	lui	a1,0x0
    cb80:	24a50000 	addiu	a1,a1,0
    cb84:	02602025 	move	a0,s3
    cb88:	0c000000 	jal	0 <func_808D6870>
    cb8c:	24062918 	li	a2,10520
    cb90:	8e8302d0 	lw	v1,720(s4)
    cb94:	0011c880 	sll	t9,s1,0x2
    cb98:	26310001 	addiu	s1,s1,1
    cb9c:	246e0008 	addiu	t6,v1,8
    cba0:	ae8e02d0 	sw	t6,720(s4)
    cba4:	ac730004 	sw	s3,4(v1)
    cba8:	ac7e0000 	sw	s8,0(v1)
    cbac:	8e8302d0 	lw	v1,720(s4)
    cbb0:	3c18de00 	lui	t8,0xde00
    cbb4:	00118c00 	sll	s1,s1,0x10
    cbb8:	246f0008 	addiu	t7,v1,8
    cbbc:	ae8f02d0 	sw	t7,720(s4)
    cbc0:	02f94021 	addu	t0,s7,t9
    cbc4:	ac780000 	sw	t8,0(v1)
    cbc8:	8d090000 	lw	t1,0(t0)
    cbcc:	00118c03 	sra	s1,s1,0x10
    cbd0:	2a21000c 	slti	at,s1,12
    cbd4:	26730040 	addiu	s3,s3,64
    cbd8:	00601025 	move	v0,v1
    cbdc:	1420ffbf 	bnez	at,cadc <func_808E324C+0x100>
    cbe0:	ac690004 	sw	t1,4(v1)
    cbe4:	c64c0024 	lwc1	$f12,36(s2)
    cbe8:	c64e0028 	lwc1	$f14,40(s2)
    cbec:	8e46002c 	lw	a2,44(s2)
    cbf0:	0c000000 	jal	0 <func_808D6870>
    cbf4:	00003825 	move	a3,zero
    cbf8:	8fa40094 	lw	a0,148(sp)
    cbfc:	3c010001 	lui	at,0x1
    cc00:	34211da0 	ori	at,at,0x1da0
    cc04:	0c000000 	jal	0 <func_808D6870>
    cc08:	00812021 	addu	a0,a0,at
    cc0c:	3c014120 	lui	at,0x4120
    cc10:	44816000 	mtc1	at,$f12
    cc14:	24070001 	li	a3,1
    cc18:	44066000 	mfc1	a2,$f12
    cc1c:	0c000000 	jal	0 <func_808D6870>
    cc20:	46006386 	mov.s	$f14,$f12
    cc24:	3c010000 	lui	at,0x0
    cc28:	0c000000 	jal	0 <func_808D6870>
    cc2c:	c42c0000 	lwc1	$f12,0(at)
    cc30:	46000306 	mov.s	$f12,$f0
    cc34:	0c000000 	jal	0 <func_808D6870>
    cc38:	24050001 	li	a1,1
    cc3c:	8e9002d0 	lw	s0,720(s4)
    cc40:	3c050000 	lui	a1,0x0
    cc44:	24a50000 	addiu	a1,a1,0
    cc48:	260a0008 	addiu	t2,s0,8
    cc4c:	ae8a02d0 	sw	t2,720(s4)
    cc50:	ae1e0000 	sw	s8,0(s0)
    cc54:	8fab0094 	lw	t3,148(sp)
    cc58:	24062926 	li	a2,10534
    cc5c:	0c000000 	jal	0 <func_808D6870>
    cc60:	8d640000 	lw	a0,0(t3)
    cc64:	ae020004 	sw	v0,4(s0)
    cc68:	8e8302d0 	lw	v1,720(s4)
    cc6c:	3c0e0000 	lui	t6,0x0
    cc70:	25ce0000 	addiu	t6,t6,0
    cc74:	246c0008 	addiu	t4,v1,8
    cc78:	ae8c02d0 	sw	t4,720(s4)
    cc7c:	3c0dde00 	lui	t5,0xde00
    cc80:	ac6d0000 	sw	t5,0(v1)
    cc84:	ac6e0004 	sw	t6,4(v1)
    cc88:	8e8302d0 	lw	v1,720(s4)
    cc8c:	3c190000 	lui	t9,0x0
    cc90:	27390000 	addiu	t9,t9,0
    cc94:	246f0008 	addiu	t7,v1,8
    cc98:	ae8f02d0 	sw	t7,720(s4)
    cc9c:	3c18de00 	lui	t8,0xde00
    cca0:	ac780000 	sw	t8,0(v1)
    cca4:	ac790004 	sw	t9,4(v1)
    cca8:	8fa80094 	lw	t0,148(sp)
    ccac:	3c060000 	lui	a2,0x0
    ccb0:	24c60000 	addiu	a2,a2,0
    ccb4:	27a4006c 	addiu	a0,sp,108
    ccb8:	2407292d 	li	a3,10541
    ccbc:	0c000000 	jal	0 <func_808D6870>
    ccc0:	8d050000 	lw	a1,0(t0)
    ccc4:	8fbf003c 	lw	ra,60(sp)
    ccc8:	8fb00018 	lw	s0,24(sp)
    cccc:	8fb1001c 	lw	s1,28(sp)
    ccd0:	8fb20020 	lw	s2,32(sp)
    ccd4:	8fb30024 	lw	s3,36(sp)
    ccd8:	8fb40028 	lw	s4,40(sp)
    ccdc:	8fb5002c 	lw	s5,44(sp)
    cce0:	8fb60030 	lw	s6,48(sp)
    cce4:	8fb70034 	lw	s7,52(sp)
    cce8:	8fbe0038 	lw	s8,56(sp)
    ccec:	03e00008 	jr	ra
    ccf0:	27bd0090 	addiu	sp,sp,144

0000ccf4 <func_808E3564>:
    ccf4:	27bdff30 	addiu	sp,sp,-208
    ccf8:	afb00050 	sw	s0,80(sp)
    ccfc:	44800000 	mtc1	zero,$f0
    cd00:	afbf0074 	sw	ra,116(sp)
    cd04:	afbe0070 	sw	s8,112(sp)
    cd08:	afb7006c 	sw	s7,108(sp)
    cd0c:	afb60068 	sw	s6,104(sp)
    cd10:	afb50064 	sw	s5,100(sp)
    cd14:	afb40060 	sw	s4,96(sp)
    cd18:	afb3005c 	sw	s3,92(sp)
    cd1c:	afb20058 	sw	s2,88(sp)
    cd20:	afb10054 	sw	s1,84(sp)
    cd24:	f7be0048 	sdc1	$f30,72(sp)
    cd28:	f7bc0040 	sdc1	$f28,64(sp)
    cd2c:	f7ba0038 	sdc1	$f26,56(sp)
    cd30:	f7b80030 	sdc1	$f24,48(sp)
    cd34:	f7b60028 	sdc1	$f22,40(sp)
    cd38:	f7b40020 	sdc1	$f20,32(sp)
    cd3c:	afa400d0 	sw	a0,208(sp)
    cd40:	3c100001 	lui	s0,0x1
    cd44:	02048021 	addu	s0,s0,a0
    cd48:	8c971c44 	lw	s7,7236(a0)
    cd4c:	8e101e10 	lw	s0,7696(s0)
    cd50:	3c013f80 	lui	at,0x3f80
    cd54:	3c150000 	lui	s5,0x0
    cd58:	4481f000 	mtc1	at,$f30
    cd5c:	26b50000 	addiu	s5,s5,0
    cd60:	24130001 	li	s3,1
    cd64:	241400ff 	li	s4,255
    cd68:	24160002 	li	s6,2
    cd6c:	0000f025 	move	s8,zero
    cd70:	e7a000a0 	swc1	$f0,160(sp)
    cd74:	e7a000a4 	swc1	$f0,164(sp)
    cd78:	920f0000 	lbu	t7,0(s0)
    cd7c:	24010009 	li	at,9
    cd80:	51e001cd 	beqzl	t7,d4b8 <func_808E3564+0x7c4>
    cd84:	27de0001 	addiu	s8,s8,1
    cd88:	c6000010 	lwc1	$f0,16(s0)
    cd8c:	c6040004 	lwc1	$f4,4(s0)
    cd90:	c6020014 	lwc1	$f2,20(s0)
    cd94:	c6080008 	lwc1	$f8,8(s0)
    cd98:	c60c0018 	lwc1	$f12,24(s0)
    cd9c:	c610000c 	lwc1	$f16,12(s0)
    cda0:	46002180 	add.s	$f6,$f4,$f0
    cda4:	c604001c 	lwc1	$f4,28(s0)
    cda8:	92180001 	lbu	t8,1(s0)
    cdac:	46024280 	add.s	$f10,$f8,$f2
    cdb0:	c6080020 	lwc1	$f8,32(s0)
    cdb4:	e6060004 	swc1	$f6,4(s0)
    cdb8:	460c8480 	add.s	$f18,$f16,$f12
    cdbc:	c6100024 	lwc1	$f16,36(s0)
    cdc0:	e60a0008 	swc1	$f10,8(s0)
    cdc4:	46040180 	add.s	$f6,$f0,$f4
    cdc8:	e612000c 	swc1	$f18,12(s0)
    cdcc:	92020000 	lbu	v0,0(s0)
    cdd0:	46081280 	add.s	$f10,$f2,$f8
    cdd4:	27190001 	addiu	t9,t8,1
    cdd8:	a2190001 	sb	t9,1(s0)
    cddc:	46106480 	add.s	$f18,$f12,$f16
    cde0:	e6060010 	swc1	$f6,16(s0)
    cde4:	e60a0014 	swc1	$f10,20(s0)
    cde8:	14410011 	bne	v0,at,ce30 <func_808E3564+0x13c>
    cdec:	e6120018 	swc1	$f18,24(s0)
    cdf0:	3c010000 	lui	at,0x0
    cdf4:	c4260000 	lwc1	$f6,0(at)
    cdf8:	c6040044 	lwc1	$f4,68(s0)
    cdfc:	3c013f00 	lui	at,0x3f00
    ce00:	44818000 	mtc1	at,$f16
    ce04:	46062200 	add.s	$f8,$f4,$f6
    ce08:	44803000 	mtc1	zero,$f6
    ce0c:	c6040008 	lwc1	$f4,8(s0)
    ce10:	c60a0048 	lwc1	$f10,72(s0)
    ce14:	e6080044 	swc1	$f8,68(s0)
    ce18:	4606203c 	c.lt.s	$f4,$f6
    ce1c:	46105480 	add.s	$f18,$f10,$f16
    ce20:	450001a4 	bc1f	d4b4 <func_808E3564+0x7c0>
    ce24:	e6120048 	swc1	$f18,72(s0)
    ce28:	100001a2 	b	d4b4 <func_808E3564+0x7c0>
    ce2c:	a2000000 	sb	zero,0(s0)
    ce30:	1662001a 	bne	s3,v0,ce9c <func_808E3564+0x1a8>
    ce34:	24010008 	li	at,8
    ce38:	3c010000 	lui	at,0x0
    ce3c:	0c000000 	jal	0 <func_808D6870>
    ce40:	c42c0000 	lwc1	$f12,0(at)
    ce44:	3c010000 	lui	at,0x0
    ce48:	c42a0000 	lwc1	$f10,0(at)
    ce4c:	8608002e 	lh	t0,46(s0)
    ce50:	86090030 	lh	t1,48(s0)
    ce54:	460a0400 	add.s	$f16,$f0,$f10
    ce58:	c608003c 	lwc1	$f8,60(s0)
    ce5c:	01095023 	subu	t2,t0,t1
    ce60:	a60a002e 	sh	t2,46(s0)
    ce64:	46104480 	add.s	$f18,$f8,$f16
    ce68:	8602002e 	lh	v0,46(s0)
    ce6c:	1c400004 	bgtz	v0,ce80 <func_808E3564+0x18c>
    ce70:	e612003c 	swc1	$f18,60(s0)
    ce74:	a600002e 	sh	zero,46(s0)
    ce78:	8602002e 	lh	v0,46(s0)
    ce7c:	a2000000 	sb	zero,0(s0)
    ce80:	a602002c 	sh	v0,44(s0)
    ce84:	860b002c 	lh	t3,44(s0)
    ce88:	29610100 	slti	at,t3,256
    ce8c:	5420018a 	bnezl	at,d4b8 <func_808E3564+0x7c4>
    ce90:	27de0001 	addiu	s8,s8,1
    ce94:	10000187 	b	d4b4 <func_808E3564+0x7c0>
    ce98:	a614002c 	sh	s4,44(s0)
    ce9c:	1441003e 	bne	v0,at,cf98 <func_808E3564+0x2a4>
    cea0:	00000000 	nop
    cea4:	8ea50000 	lw	a1,0(s5)
    cea8:	c6060004 	lwc1	$f6,4(s0)
    ceac:	c612000c 	lwc1	$f18,12(s0)
    ceb0:	c4a40278 	lwc1	$f4,632(a1)
    ceb4:	c4b00280 	lwc1	$f16,640(a1)
    ceb8:	c6080008 	lwc1	$f8,8(s0)
    cebc:	46062501 	sub.s	$f20,$f4,$f6
    cec0:	c4aa027c 	lwc1	$f10,636(a1)
    cec4:	46128581 	sub.s	$f22,$f16,$f18
    cec8:	4600a306 	mov.s	$f12,$f20
    cecc:	46085601 	sub.s	$f24,$f10,$f8
    ced0:	0c000000 	jal	0 <func_808D6870>
    ced4:	4600b386 	mov.s	$f14,$f22
    ced8:	4614a682 	mul.s	$f26,$f20,$f20
    cedc:	e7a000b0 	swc1	$f0,176(sp)
    cee0:	4600c306 	mov.s	$f12,$f24
    cee4:	4616b702 	mul.s	$f28,$f22,$f22
    cee8:	461cd000 	add.s	$f0,$f26,$f28
    ceec:	0c000000 	jal	0 <func_808D6870>
    cef0:	46000384 	sqrt.s	$f14,$f0
    cef4:	c6040038 	lwc1	$f4,56(s0)
    cef8:	46000507 	neg.s	$f20,$f0
    cefc:	c7ac00b0 	lwc1	$f12,176(sp)
    cf00:	00002825 	move	a1,zero
    cf04:	0c000000 	jal	0 <func_808D6870>
    cf08:	e7a400a8 	swc1	$f4,168(sp)
    cf0c:	4600a306 	mov.s	$f12,$f20
    cf10:	0c000000 	jal	0 <func_808D6870>
    cf14:	24050001 	li	a1,1
    cf18:	27a400a0 	addiu	a0,sp,160
    cf1c:	0c000000 	jal	0 <func_808D6870>
    cf20:	26050010 	addiu	a1,s0,16
    cf24:	4406f000 	mfc1	a2,$f30
    cf28:	26040038 	addiu	a0,s0,56
    cf2c:	3c054120 	lui	a1,0x4120
    cf30:	0c000000 	jal	0 <func_808D6870>
    cf34:	3c073f00 	lui	a3,0x3f00
    cf38:	4618c182 	mul.s	$f6,$f24,$f24
    cf3c:	860c002c 	lh	t4,44(s0)
    cf40:	258d000a 	addiu	t5,t4,10
    cf44:	a60d002c 	sh	t5,44(s0)
    cf48:	860e002c 	lh	t6,44(s0)
    cf4c:	4606d280 	add.s	$f10,$f26,$f6
    cf50:	29c10100 	slti	at,t6,256
    cf54:	461c5000 	add.s	$f0,$f10,$f28
    cf58:	14200002 	bnez	at,cf64 <func_808E3564+0x270>
    cf5c:	46000004 	sqrt.s	$f0,$f0
    cf60:	a614002c 	sh	s4,44(s0)
    cf64:	3c0141a0 	lui	at,0x41a0
    cf68:	44814000 	mtc1	at,$f8
    cf6c:	00000000 	nop
    cf70:	4608003c 	c.lt.s	$f0,$f8
    cf74:	00000000 	nop
    cf78:	45010005 	bc1t	cf90 <func_808E3564+0x29c>
    cf7c:	00000000 	nop
    cf80:	920f0001 	lbu	t7,1(s0)
    cf84:	29e10047 	slti	at,t7,71
    cf88:	5420014b 	bnezl	at,d4b8 <func_808E3564+0x7c4>
    cf8c:	27de0001 	addiu	s8,s8,1
    cf90:	10000148 	b	d4b4 <func_808E3564+0x7c0>
    cf94:	a2000000 	sb	zero,0(s0)
    cf98:	16c20028 	bne	s6,v0,d03c <func_808E3564+0x348>
    cf9c:	24010003 	li	at,3
    cfa0:	3c010000 	lui	at,0x0
    cfa4:	0c000000 	jal	0 <func_808D6870>
    cfa8:	c42c0000 	lwc1	$f12,0(at)
    cfac:	3c010000 	lui	at,0x0
    cfb0:	c4320000 	lwc1	$f18,0(at)
    cfb4:	8618002e 	lh	t8,46(s0)
    cfb8:	86190030 	lh	t9,48(s0)
    cfbc:	46120100 	add.s	$f4,$f0,$f18
    cfc0:	c610003c 	lwc1	$f16,60(s0)
    cfc4:	03194023 	subu	t0,t8,t9
    cfc8:	a608002e 	sh	t0,46(s0)
    cfcc:	46048180 	add.s	$f6,$f16,$f4
    cfd0:	8602002e 	lh	v0,46(s0)
    cfd4:	1c400004 	bgtz	v0,cfe8 <func_808E3564+0x2f4>
    cfd8:	e606003c 	swc1	$f6,60(s0)
    cfdc:	a600002e 	sh	zero,46(s0)
    cfe0:	8602002e 	lh	v0,46(s0)
    cfe4:	a2000000 	sb	zero,0(s0)
    cfe8:	a602002c 	sh	v0,44(s0)
    cfec:	8609002c 	lh	t1,44(s0)
    cff0:	29210100 	slti	at,t1,256
    cff4:	54200003 	bnezl	at,d004 <func_808E3564+0x310>
    cff8:	3c014170 	lui	at,0x4170
    cffc:	a614002c 	sh	s4,44(s0)
    d000:	3c014170 	lui	at,0x4170
    d004:	44815000 	mtc1	at,$f10
    d008:	c6000040 	lwc1	$f0,64(s0)
    d00c:	3c014080 	lui	at,0x4080
    d010:	44819000 	mtc1	at,$f18
    d014:	460a0203 	div.s	$f8,$f0,$f10
    d018:	4406f000 	mfc1	a2,$f30
    d01c:	44050000 	mfc1	a1,$f0
    d020:	26040038 	addiu	a0,s0,56
    d024:	46124402 	mul.s	$f16,$f8,$f18
    d028:	44078000 	mfc1	a3,$f16
    d02c:	0c000000 	jal	0 <func_808D6870>
    d030:	00000000 	nop
    d034:	10000120 	b	d4b8 <func_808E3564+0x7c4>
    d038:	27de0001 	addiu	s8,s8,1
    d03c:	54410058 	bnel	v0,at,d1a0 <func_808E3564+0x4ac>
    d040:	24010004 	li	at,4
    d044:	860a002e 	lh	t2,46(s0)
    d048:	3c010000 	lui	at,0x0
    d04c:	15400028 	bnez	t2,d0f0 <func_808E3564+0x3fc>
    d050:	00000000 	nop
    d054:	3c010000 	lui	at,0x0
    d058:	0c000000 	jal	0 <func_808D6870>
    d05c:	c42c0000 	lwc1	$f12,0(at)
    d060:	4600010d 	trunc.w.s	$f4,$f0
    d064:	3c0141a0 	lui	at,0x41a0
    d068:	44816000 	mtc1	at,$f12
    d06c:	44112000 	mfc1	s1,$f4
    d070:	00000000 	nop
    d074:	00118c00 	sll	s1,s1,0x10
    d078:	00118c03 	sra	s1,s1,0x10
    d07c:	26310001 	addiu	s1,s1,1
    d080:	00118c00 	sll	s1,s1,0x10
    d084:	0c000000 	jal	0 <func_808D6870>
    d088:	00118c03 	sra	s1,s1,0x10
    d08c:	8eac0000 	lw	t4,0(s5)
    d090:	00119080 	sll	s2,s1,0x2
    d094:	02519023 	subu	s2,s2,s1
    d098:	00129080 	sll	s2,s2,0x2
    d09c:	01926821 	addu	t5,t4,s2
    d0a0:	c5a602ec 	lwc1	$f6,748(t5)
    d0a4:	3c0141a0 	lui	at,0x41a0
    d0a8:	44816000 	mtc1	at,$f12
    d0ac:	46060280 	add.s	$f10,$f0,$f6
    d0b0:	0c000000 	jal	0 <func_808D6870>
    d0b4:	e60a0004 	swc1	$f10,4(s0)
    d0b8:	8eae0000 	lw	t6,0(s5)
    d0bc:	3c0141a0 	lui	at,0x41a0
    d0c0:	44816000 	mtc1	at,$f12
    d0c4:	01d27821 	addu	t7,t6,s2
    d0c8:	c5e802f0 	lwc1	$f8,752(t7)
    d0cc:	46080480 	add.s	$f18,$f0,$f8
    d0d0:	0c000000 	jal	0 <func_808D6870>
    d0d4:	e6120008 	swc1	$f18,8(s0)
    d0d8:	8eb80000 	lw	t8,0(s5)
    d0dc:	0312c821 	addu	t9,t8,s2
    d0e0:	c73002f4 	lwc1	$f16,756(t9)
    d0e4:	46100100 	add.s	$f4,$f0,$f16
    d0e8:	1000001e 	b	d164 <func_808E3564+0x470>
    d0ec:	e604000c 	swc1	$f4,12(s0)
    d0f0:	0c000000 	jal	0 <func_808D6870>
    d0f4:	c42c0000 	lwc1	$f12,0(at)
    d0f8:	4600018d 	trunc.w.s	$f6,$f0
    d0fc:	3c014120 	lui	at,0x4120
    d100:	44816000 	mtc1	at,$f12
    d104:	44113000 	mfc1	s1,$f6
    d108:	00000000 	nop
    d10c:	00118c00 	sll	s1,s1,0x10
    d110:	0c000000 	jal	0 <func_808D6870>
    d114:	00118c03 	sra	s1,s1,0x10
    d118:	00114880 	sll	t1,s1,0x2
    d11c:	01314823 	subu	t1,t1,s1
    d120:	00094880 	sll	t1,t1,0x2
    d124:	02e99021 	addu	s2,s7,t1
    d128:	c64a0908 	lwc1	$f10,2312(s2)
    d12c:	3c014170 	lui	at,0x4170
    d130:	44816000 	mtc1	at,$f12
    d134:	460a0200 	add.s	$f8,$f0,$f10
    d138:	0c000000 	jal	0 <func_808D6870>
    d13c:	e6080004 	swc1	$f8,4(s0)
    d140:	c652090c 	lwc1	$f18,2316(s2)
    d144:	3c014120 	lui	at,0x4120
    d148:	44816000 	mtc1	at,$f12
    d14c:	46120400 	add.s	$f16,$f0,$f18
    d150:	0c000000 	jal	0 <func_808D6870>
    d154:	e6100008 	swc1	$f16,8(s0)
    d158:	c6440910 	lwc1	$f4,2320(s2)
    d15c:	46040180 	add.s	$f6,$f0,$f4
    d160:	e606000c 	swc1	$f6,12(s0)
    d164:	3c010000 	lui	at,0x0
    d168:	0c000000 	jal	0 <func_808D6870>
    d16c:	c42c0000 	lwc1	$f12,0(at)
    d170:	3c010000 	lui	at,0x0
    d174:	c4280000 	lwc1	$f8,0(at)
    d178:	c60a003c 	lwc1	$f10,60(s0)
    d17c:	920a0001 	lbu	t2,1(s0)
    d180:	46080480 	add.s	$f18,$f0,$f8
    d184:	29410015 	slti	at,t2,21
    d188:	46125400 	add.s	$f16,$f10,$f18
    d18c:	142000c9 	bnez	at,d4b4 <func_808E3564+0x7c0>
    d190:	e610003c 	swc1	$f16,60(s0)
    d194:	100000c7 	b	d4b4 <func_808E3564+0x7c0>
    d198:	a2000000 	sb	zero,0(s0)
    d19c:	24010004 	li	at,4
    d1a0:	54410020 	bnel	v0,at,d224 <func_808E3564+0x530>
    d1a4:	24010005 	li	at,5
    d1a8:	44802000 	mtc1	zero,$f4
    d1ac:	c606003c 	lwc1	$f6,60(s0)
    d1b0:	8fa400d0 	lw	a0,208(sp)
    d1b4:	3c010000 	lui	at,0x0
    d1b8:	46062032 	c.eq.s	$f4,$f6
    d1bc:	00000000 	nop
    d1c0:	4500000f 	bc1f	d200 <func_808E3564+0x50c>
    d1c4:	00000000 	nop
    d1c8:	0c000000 	jal	0 <func_808D6870>
    d1cc:	00002825 	move	a1,zero
    d1d0:	0c000000 	jal	0 <func_808D6870>
    d1d4:	00402025 	move	a0,v0
    d1d8:	44824000 	mtc1	v0,$f8
    d1dc:	3c014700 	lui	at,0x4700
    d1e0:	44819000 	mtc1	at,$f18
    d1e4:	468042a0 	cvt.s.w	$f10,$f8
    d1e8:	3c010000 	lui	at,0x0
    d1ec:	c4240000 	lwc1	$f4,0(at)
    d1f0:	46125403 	div.s	$f16,$f10,$f18
    d1f4:	46048182 	mul.s	$f6,$f16,$f4
    d1f8:	10000003 	b	d208 <func_808E3564+0x514>
    d1fc:	e6060044 	swc1	$f6,68(s0)
    d200:	c4280000 	lwc1	$f8,0(at)
    d204:	e6080044 	swc1	$f8,68(s0)
    d208:	920b0001 	lbu	t3,1(s0)
    d20c:	2961000d 	slti	at,t3,13
    d210:	542000a9 	bnezl	at,d4b8 <func_808E3564+0x7c4>
    d214:	27de0001 	addiu	s8,s8,1
    d218:	100000a6 	b	d4b4 <func_808E3564+0x7c0>
    d21c:	a2000000 	sb	zero,0(s0)
    d220:	24010005 	li	at,5
    d224:	1441002b 	bne	v0,at,d2d4 <func_808E3564+0x5e0>
    d228:	26040034 	addiu	a0,s0,52
    d22c:	860c0030 	lh	t4,48(s0)
    d230:	8602002e 	lh	v0,46(s0)
    d234:	4406f000 	mfc1	a2,$f30
    d238:	258d0001 	addiu	t5,t4,1
    d23c:	1440000b 	bnez	v0,d26c <func_808E3564+0x578>
    d240:	a60d0030 	sh	t5,48(s0)
    d244:	860e002c 	lh	t6,44(s0)
    d248:	25cf001a 	addiu	t7,t6,26
    d24c:	a60f002c 	sh	t7,44(s0)
    d250:	8618002c 	lh	t8,44(s0)
    d254:	2b010100 	slti	at,t8,256
    d258:	54200013 	bnezl	at,d2a8 <func_808E3564+0x5b4>
    d25c:	3c073c23 	lui	a3,0x3c23
    d260:	a614002c 	sh	s4,44(s0)
    d264:	1000000f 	b	d2a4 <func_808E3564+0x5b0>
    d268:	a613002e 	sh	s3,46(s0)
    d26c:	16620003 	bne	s3,v0,d27c <func_808E3564+0x588>
    d270:	00000000 	nop
    d274:	1000000b 	b	d2a4 <func_808E3564+0x5b0>
    d278:	a616002e 	sh	s6,46(s0)
    d27c:	56c2000a 	bnel	s6,v0,d2a8 <func_808E3564+0x5b4>
    d280:	3c073c23 	lui	a3,0x3c23
    d284:	8619002c 	lh	t9,44(s0)
    d288:	2728ffe6 	addiu	t0,t9,-26
    d28c:	a608002c 	sh	t0,44(s0)
    d290:	8609002c 	lh	t1,44(s0)
    d294:	05230004 	bgezl	t1,d2a8 <func_808E3564+0x5b4>
    d298:	3c073c23 	lui	a3,0x3c23
    d29c:	a600002c 	sh	zero,44(s0)
    d2a0:	a2000000 	sb	zero,0(s0)
    d2a4:	3c073c23 	lui	a3,0x3c23
    d2a8:	34e7d70a 	ori	a3,a3,0xd70a
    d2ac:	0c000000 	jal	0 <func_808D6870>
    d2b0:	8e050038 	lw	a1,56(s0)
    d2b4:	4406f000 	mfc1	a2,$f30
    d2b8:	3c073e19 	lui	a3,0x3e19
    d2bc:	34e7999a 	ori	a3,a3,0x999a
    d2c0:	26040040 	addiu	a0,s0,64
    d2c4:	0c000000 	jal	0 <func_808D6870>
    d2c8:	3c054080 	lui	a1,0x4080
    d2cc:	1000007a 	b	d4b8 <func_808E3564+0x7c4>
    d2d0:	27de0001 	addiu	s8,s8,1
    d2d4:	24010006 	li	at,6
    d2d8:	54410035 	bnel	v0,at,d3b0 <func_808E3564+0x6bc>
    d2dc:	24010007 	li	at,7
    d2e0:	57c00004 	bnezl	s8,d2f4 <func_808E3564+0x600>
    d2e4:	860a0030 	lh	t2,48(s0)
    d2e8:	0c000000 	jal	0 <func_808D6870>
    d2ec:	24043147 	li	a0,12615
    d2f0:	860a0030 	lh	t2,48(s0)
    d2f4:	8602002e 	lh	v0,46(s0)
    d2f8:	26040034 	addiu	a0,s0,52
    d2fc:	254b0001 	addiu	t3,t2,1
    d300:	1440000b 	bnez	v0,d330 <func_808E3564+0x63c>
    d304:	a60b0030 	sh	t3,48(s0)
    d308:	860c002c 	lh	t4,44(s0)
    d30c:	258d0064 	addiu	t5,t4,100
    d310:	a60d002c 	sh	t5,44(s0)
    d314:	860e002c 	lh	t6,44(s0)
    d318:	29c10100 	slti	at,t6,256
    d31c:	54200017 	bnezl	at,d37c <func_808E3564+0x688>
    d320:	4406f000 	mfc1	a2,$f30
    d324:	a614002c 	sh	s4,44(s0)
    d328:	10000013 	b	d378 <func_808E3564+0x684>
    d32c:	a613002e 	sh	s3,46(s0)
    d330:	16620007 	bne	s3,v0,d350 <func_808E3564+0x65c>
    d334:	00000000 	nop
    d338:	920f0001 	lbu	t7,1(s0)
    d33c:	29e10014 	slti	at,t7,20
    d340:	5420000e 	bnezl	at,d37c <func_808E3564+0x688>
    d344:	4406f000 	mfc1	a2,$f30
    d348:	1000000b 	b	d378 <func_808E3564+0x684>
    d34c:	a616002e 	sh	s6,46(s0)
    d350:	56c2000a 	bnel	s6,v0,d37c <func_808E3564+0x688>
    d354:	4406f000 	mfc1	a2,$f30
    d358:	8618002c 	lh	t8,44(s0)
    d35c:	2719ffe2 	addiu	t9,t8,-30
    d360:	a619002c 	sh	t9,44(s0)
    d364:	8608002c 	lh	t0,44(s0)
    d368:	05030004 	bgezl	t0,d37c <func_808E3564+0x688>
    d36c:	4406f000 	mfc1	a2,$f30
    d370:	a600002c 	sh	zero,44(s0)
    d374:	a2000000 	sb	zero,0(s0)
    d378:	4406f000 	mfc1	a2,$f30
    d37c:	3c073dcc 	lui	a3,0x3dcc
    d380:	34e7cccd 	ori	a3,a3,0xcccd
    d384:	0c000000 	jal	0 <func_808D6870>
    d388:	8e050038 	lw	a1,56(s0)
    d38c:	4405f000 	mfc1	a1,$f30
    d390:	4406f000 	mfc1	a2,$f30
    d394:	3c073e19 	lui	a3,0x3e19
    d398:	34e7999a 	ori	a3,a3,0x999a
    d39c:	0c000000 	jal	0 <func_808D6870>
    d3a0:	26040040 	addiu	a0,s0,64
    d3a4:	10000044 	b	d4b8 <func_808E3564+0x7c4>
    d3a8:	27de0001 	addiu	s8,s8,1
    d3ac:	24010007 	li	at,7
    d3b0:	14410040 	bne	v0,at,d4b4 <func_808E3564+0x7c0>
    d3b4:	26040034 	addiu	a0,s0,52
    d3b8:	860b002c 	lh	t3,44(s0)
    d3bc:	86090030 	lh	t1,48(s0)
    d3c0:	4406f000 	mfc1	a2,$f30
    d3c4:	256cffe2 	addiu	t4,t3,-30
    d3c8:	a60c002c 	sh	t4,44(s0)
    d3cc:	860d002c 	lh	t5,44(s0)
    d3d0:	252a0001 	addiu	t2,t1,1
    d3d4:	a60a0030 	sh	t2,48(s0)
    d3d8:	05a10003 	bgez	t5,d3e8 <func_808E3564+0x6f4>
    d3dc:	3c073e05 	lui	a3,0x3e05
    d3e0:	a600002c 	sh	zero,44(s0)
    d3e4:	a2000000 	sb	zero,0(s0)
    d3e8:	8e050038 	lw	a1,56(s0)
    d3ec:	0c000000 	jal	0 <func_808D6870>
    d3f0:	34e71eb8 	ori	a3,a3,0x1eb8
    d3f4:	920e0001 	lbu	t6,1(s0)
    d3f8:	29c10096 	slti	at,t6,150
    d3fc:	5020002e 	beqzl	at,d4b8 <func_808E3564+0x7c4>
    d400:	27de0001 	addiu	s8,s8,1
    d404:	c6e00028 	lwc1	$f0,40(s7)
    d408:	3c0140a0 	lui	at,0x40a0
    d40c:	44815000 	mtc1	at,$f10
    d410:	46000005 	abs.s	$f0,$f0
    d414:	460a003c 	c.lt.s	$f0,$f10
    d418:	00000000 	nop
    d41c:	45020026 	bc1fl	d4b8 <func_808E3564+0x7c4>
    d420:	27de0001 	addiu	s8,s8,1
    d424:	c6120004 	lwc1	$f18,4(s0)
    d428:	c6f00024 	lwc1	$f16,36(s7)
    d42c:	c604000c 	lwc1	$f4,12(s0)
    d430:	c6e6002c 	lwc1	$f6,44(s7)
    d434:	46109081 	sub.s	$f2,$f18,$f16
    d438:	3c014316 	lui	at,0x4316
    d43c:	44819000 	mtc1	at,$f18
    d440:	46062301 	sub.s	$f12,$f4,$f6
    d444:	46021202 	mul.s	$f8,$f2,$f2
    d448:	c60e0034 	lwc1	$f14,52(s0)
    d44c:	3c014396 	lui	at,0x4396
    d450:	460c6282 	mul.s	$f10,$f12,$f12
    d454:	460a4000 	add.s	$f0,$f8,$f10
    d458:	46127402 	mul.s	$f16,$f14,$f18
    d45c:	46000004 	sqrt.s	$f0,$f0
    d460:	4600803c 	c.lt.s	$f16,$f0
    d464:	00000000 	nop
    d468:	45020013 	bc1fl	d4b8 <func_808E3564+0x7c4>
    d46c:	27de0001 	addiu	s8,s8,1
    d470:	44812000 	mtc1	at,$f4
    d474:	240f0096 	li	t7,150
    d478:	3c0640e0 	lui	a2,0x40e0
    d47c:	46047182 	mul.s	$f6,$f14,$f4
    d480:	24180020 	li	t8,32
    d484:	4606003c 	c.lt.s	$f0,$f6
    d488:	00000000 	nop
    d48c:	4502000a 	bc1fl	d4b8 <func_808E3564+0x7c4>
    d490:	27de0001 	addiu	s8,s8,1
    d494:	a20f0001 	sb	t7,1(s0)
    d498:	8ea50000 	lw	a1,0(s5)
    d49c:	44804000 	mtc1	zero,$f8
    d4a0:	8fa400d0 	lw	a0,208(sp)
    d4a4:	84a7008a 	lh	a3,138(a1)
    d4a8:	afb80014 	sw	t8,20(sp)
    d4ac:	0c000000 	jal	0 <func_808D6870>
    d4b0:	e7a80010 	swc1	$f8,16(sp)
    d4b4:	27de0001 	addiu	s8,s8,1
    d4b8:	001ef400 	sll	s8,s8,0x10
    d4bc:	001ef403 	sra	s8,s8,0x10
    d4c0:	2bc100c8 	slti	at,s8,200
    d4c4:	1420fe2c 	bnez	at,cd78 <func_808E3564+0x84>
    d4c8:	2610004c 	addiu	s0,s0,76
    d4cc:	8fbf0074 	lw	ra,116(sp)
    d4d0:	d7b40020 	ldc1	$f20,32(sp)
    d4d4:	d7b60028 	ldc1	$f22,40(sp)
    d4d8:	d7b80030 	ldc1	$f24,48(sp)
    d4dc:	d7ba0038 	ldc1	$f26,56(sp)
    d4e0:	d7bc0040 	ldc1	$f28,64(sp)
    d4e4:	d7be0048 	ldc1	$f30,72(sp)
    d4e8:	8fb00050 	lw	s0,80(sp)
    d4ec:	8fb10054 	lw	s1,84(sp)
    d4f0:	8fb20058 	lw	s2,88(sp)
    d4f4:	8fb3005c 	lw	s3,92(sp)
    d4f8:	8fb40060 	lw	s4,96(sp)
    d4fc:	8fb50064 	lw	s5,100(sp)
    d500:	8fb60068 	lw	s6,104(sp)
    d504:	8fb7006c 	lw	s7,108(sp)
    d508:	8fbe0070 	lw	s8,112(sp)
    d50c:	03e00008 	jr	ra
    d510:	27bd00d0 	addiu	sp,sp,208

0000d514 <func_808E3D84>:
    d514:	27bdfe88 	addiu	sp,sp,-376
    d518:	afb1003c 	sw	s1,60(sp)
    d51c:	afbf005c 	sw	ra,92(sp)
    d520:	afbe0058 	sw	s8,88(sp)
    d524:	afb70054 	sw	s7,84(sp)
    d528:	afb60050 	sw	s6,80(sp)
    d52c:	afb5004c 	sw	s5,76(sp)
    d530:	afb40048 	sw	s4,72(sp)
    d534:	afb30044 	sw	s3,68(sp)
    d538:	afb20040 	sw	s2,64(sp)
    d53c:	afb00038 	sw	s0,56(sp)
    d540:	3c110001 	lui	s1,0x1
    d544:	8c900000 	lw	s0,0(a0)
    d548:	02248821 	addu	s1,s1,a0
    d54c:	8e311e10 	lw	s1,7696(s1)
    d550:	00809025 	move	s2,a0
    d554:	3c060000 	lui	a2,0x0
    d558:	00009825 	move	s3,zero
    d55c:	24c60000 	addiu	a2,a2,0
    d560:	afb20178 	sw	s2,376(sp)
    d564:	27a40150 	addiu	a0,sp,336
    d568:	24072a71 	li	a3,10865
    d56c:	02002825 	move	a1,s0
    d570:	0c000000 	jal	0 <func_808D6870>
    d574:	afb10164 	sw	s1,356(sp)
    d578:	8fae0178 	lw	t6,376(sp)
    d57c:	0c000000 	jal	0 <func_808D6870>
    d580:	8dc40000 	lw	a0,0(t6)
    d584:	3c1eda38 	lui	s8,0xda38
    d588:	37de0003 	ori	s8,s8,0x3
    d58c:	00009025 	move	s2,zero
    d590:	3c17e700 	lui	s7,0xe700
    d594:	24160009 	li	s6,9
    d598:	3c15fa00 	lui	s5,0xfa00
    d59c:	3c14de00 	lui	s4,0xde00
    d5a0:	922f0000 	lbu	t7,0(s1)
    d5a4:	3c180000 	lui	t8,0x0
    d5a8:	27180000 	addiu	t8,t8,0
    d5ac:	16cf004b 	bne	s6,t7,d6dc <func_808E3D84+0x1c8>
    d5b0:	00003825 	move	a3,zero
    d5b4:	afb8006c 	sw	t8,108(sp)
    d5b8:	8e0202c0 	lw	v0,704(s0)
    d5bc:	3c040000 	lui	a0,0x0
    d5c0:	24840000 	addiu	a0,a0,0
    d5c4:	24590008 	addiu	t9,v0,8
    d5c8:	ae1902c0 	sw	t9,704(s0)
    d5cc:	ac400004 	sw	zero,4(v0)
    d5d0:	16600008 	bnez	s3,d5f4 <func_808E3D84+0xe0>
    d5d4:	ac570000 	sw	s7,0(v0)
    d5d8:	8e0202c0 	lw	v0,704(s0)
    d5dc:	26730001 	addiu	s3,s3,1
    d5e0:	327300ff 	andi	s3,s3,0xff
    d5e4:	24490008 	addiu	t1,v0,8
    d5e8:	ae0902c0 	sw	t1,704(s0)
    d5ec:	ac440004 	sw	a0,4(v0)
    d5f0:	ac540000 	sw	s4,0(v0)
    d5f4:	922a0001 	lbu	t2,1(s1)
    d5f8:	314b0007 	andi	t3,t2,0x7
    d5fc:	51600011 	beqzl	t3,d644 <func_808E3D84+0x130>
    d600:	8e0202c0 	lw	v0,704(s0)
    d604:	8e0202c0 	lw	v0,704(s0)
    d608:	244c0008 	addiu	t4,v0,8
    d60c:	ae0c02c0 	sw	t4,704(s0)
    d610:	ac550000 	sw	s5,0(v0)
    d614:	92390029 	lbu	t9,41(s1)
    d618:	922e0028 	lbu	t6,40(s1)
    d61c:	922c002a 	lbu	t4,42(s1)
    d620:	00194c00 	sll	t1,t9,0x10
    d624:	000e7e00 	sll	t7,t6,0x18
    d628:	01e95025 	or	t2,t7,t1
    d62c:	000c6a00 	sll	t5,t4,0x8
    d630:	014d7025 	or	t6,t2,t5
    d634:	35d800ff 	ori	t8,t6,0xff
    d638:	10000007 	b	d658 <func_808E3D84+0x144>
    d63c:	ac580004 	sw	t8,4(v0)
    d640:	8e0202c0 	lw	v0,704(s0)
    d644:	240fffff 	li	t7,-1
    d648:	24590008 	addiu	t9,v0,8
    d64c:	ae1902c0 	sw	t9,704(s0)
    d650:	ac4f0004 	sw	t7,4(v0)
    d654:	ac550000 	sw	s5,0(v0)
    d658:	c62c0004 	lwc1	$f12,4(s1)
    d65c:	c62e0008 	lwc1	$f14,8(s1)
    d660:	0c000000 	jal	0 <func_808D6870>
    d664:	8e26000c 	lw	a2,12(s1)
    d668:	c62c0034 	lwc1	$f12,52(s1)
    d66c:	24070001 	li	a3,1
    d670:	44066000 	mfc1	a2,$f12
    d674:	0c000000 	jal	0 <func_808D6870>
    d678:	46006386 	mov.s	$f14,$f12
    d67c:	c62c0048 	lwc1	$f12,72(s1)
    d680:	0c000000 	jal	0 <func_808D6870>
    d684:	24050001 	li	a1,1
    d688:	c62c0044 	lwc1	$f12,68(s1)
    d68c:	0c000000 	jal	0 <func_808D6870>
    d690:	24050001 	li	a1,1
    d694:	8e0202c0 	lw	v0,704(s0)
    d698:	3c050000 	lui	a1,0x0
    d69c:	24a50000 	addiu	a1,a1,0
    d6a0:	24490008 	addiu	t1,v0,8
    d6a4:	ae0902c0 	sw	t1,704(s0)
    d6a8:	ac5e0000 	sw	s8,0(v0)
    d6ac:	02002025 	move	a0,s0
    d6b0:	24062a92 	li	a2,10898
    d6b4:	0c000000 	jal	0 <func_808D6870>
    d6b8:	afa2013c 	sw	v0,316(sp)
    d6bc:	8fa3013c 	lw	v1,316(sp)
    d6c0:	ac620004 	sw	v0,4(v1)
    d6c4:	8e0202c0 	lw	v0,704(s0)
    d6c8:	244b0008 	addiu	t3,v0,8
    d6cc:	ae0b02c0 	sw	t3,704(s0)
    d6d0:	ac540000 	sw	s4,0(v0)
    d6d4:	8fac006c 	lw	t4,108(sp)
    d6d8:	ac4c0004 	sw	t4,4(v0)
    d6dc:	26520001 	addiu	s2,s2,1
    d6e0:	00129400 	sll	s2,s2,0x10
    d6e4:	00129403 	sra	s2,s2,0x10
    d6e8:	2a4100c8 	slti	at,s2,200
    d6ec:	1420ffac 	bnez	at,d5a0 <func_808E3D84+0x8c>
    d6f0:	2631004c 	addiu	s1,s1,76
    d6f4:	00009825 	move	s3,zero
    d6f8:	8fb10164 	lw	s1,356(sp)
    d6fc:	00009025 	move	s2,zero
    d700:	3c16fb00 	lui	s6,0xfb00
    d704:	922a0000 	lbu	t2,0(s1)
    d708:	24010001 	li	at,1
    d70c:	8fad0178 	lw	t5,376(sp)
    d710:	15410046 	bne	t2,at,d82c <func_808E3D84+0x318>
    d714:	3c180000 	lui	t8,0x0
    d718:	3c010001 	lui	at,0x1
    d71c:	34211da0 	ori	at,at,0x1da0
    d720:	01a17021 	addu	t6,t5,at
    d724:	27180000 	addiu	t8,t8,0
    d728:	afb80068 	sw	t8,104(sp)
    d72c:	afae006c 	sw	t6,108(sp)
    d730:	8e0202d0 	lw	v0,720(s0)
    d734:	3c040000 	lui	a0,0x0
    d738:	24590008 	addiu	t9,v0,8
    d73c:	ae1902d0 	sw	t9,720(s0)
    d740:	ac400004 	sw	zero,4(v0)
    d744:	1660000f 	bnez	s3,d784 <func_808E3D84+0x270>
    d748:	ac570000 	sw	s7,0(v0)
    d74c:	8e0202d0 	lw	v0,720(s0)
    d750:	3c09ffff 	lui	t1,0xffff
    d754:	24840000 	addiu	a0,a0,0
    d758:	244f0008 	addiu	t7,v0,8
    d75c:	ae0f02d0 	sw	t7,720(s0)
    d760:	ac490004 	sw	t1,4(v0)
    d764:	ac560000 	sw	s6,0(v0)
    d768:	8e0202d0 	lw	v0,720(s0)
    d76c:	26730001 	addiu	s3,s3,1
    d770:	327300ff 	andi	s3,s3,0xff
    d774:	244b0008 	addiu	t3,v0,8
    d778:	ae0b02d0 	sw	t3,720(s0)
    d77c:	ac440004 	sw	a0,4(v0)
    d780:	ac540000 	sw	s4,0(v0)
    d784:	8e0202d0 	lw	v0,720(s0)
    d788:	2401ff00 	li	at,-256
    d78c:	00003825 	move	a3,zero
    d790:	244c0008 	addiu	t4,v0,8
    d794:	ae0c02d0 	sw	t4,720(s0)
    d798:	ac550000 	sw	s5,0(v0)
    d79c:	862a002c 	lh	t2,44(s1)
    d7a0:	314d00ff 	andi	t5,t2,0xff
    d7a4:	01a17025 	or	t6,t5,at
    d7a8:	ac4e0004 	sw	t6,4(v0)
    d7ac:	8e26000c 	lw	a2,12(s1)
    d7b0:	c62e0008 	lwc1	$f14,8(s1)
    d7b4:	0c000000 	jal	0 <func_808D6870>
    d7b8:	c62c0004 	lwc1	$f12,4(s1)
    d7bc:	0c000000 	jal	0 <func_808D6870>
    d7c0:	8fa4006c 	lw	a0,108(sp)
    d7c4:	c62c0034 	lwc1	$f12,52(s1)
    d7c8:	3c063f80 	lui	a2,0x3f80
    d7cc:	24070001 	li	a3,1
    d7d0:	0c000000 	jal	0 <func_808D6870>
    d7d4:	46006386 	mov.s	$f14,$f12
    d7d8:	c62c003c 	lwc1	$f12,60(s1)
    d7dc:	0c000000 	jal	0 <func_808D6870>
    d7e0:	24050001 	li	a1,1
    d7e4:	8e0202d0 	lw	v0,720(s0)
    d7e8:	3c050000 	lui	a1,0x0
    d7ec:	24a50000 	addiu	a1,a1,0
    d7f0:	24580008 	addiu	t8,v0,8
    d7f4:	ae1802d0 	sw	t8,720(s0)
    d7f8:	ac5e0000 	sw	s8,0(v0)
    d7fc:	02002025 	move	a0,s0
    d800:	24062ab4 	li	a2,10932
    d804:	0c000000 	jal	0 <func_808D6870>
    d808:	afa20124 	sw	v0,292(sp)
    d80c:	8fa30124 	lw	v1,292(sp)
    d810:	ac620004 	sw	v0,4(v1)
    d814:	8e0202d0 	lw	v0,720(s0)
    d818:	24590008 	addiu	t9,v0,8
    d81c:	ae1902d0 	sw	t9,720(s0)
    d820:	ac540000 	sw	s4,0(v0)
    d824:	8faf0068 	lw	t7,104(sp)
    d828:	ac4f0004 	sw	t7,4(v0)
    d82c:	26520001 	addiu	s2,s2,1
    d830:	00129400 	sll	s2,s2,0x10
    d834:	00129403 	sra	s2,s2,0x10
    d838:	2a410096 	slti	at,s2,150
    d83c:	1420ffb1 	bnez	at,d704 <func_808E3D84+0x1f0>
    d840:	2631004c 	addiu	s1,s1,76
    d844:	00009825 	move	s3,zero
    d848:	8fb10164 	lw	s1,356(sp)
    d84c:	00009025 	move	s2,zero
    d850:	92290000 	lbu	t1,0(s1)
    d854:	24010002 	li	at,2
    d858:	3c0b0000 	lui	t3,0x0
    d85c:	1521004c 	bne	t1,at,d990 <func_808E3D84+0x47c>
    d860:	256b0000 	addiu	t3,t3,0
    d864:	afab0068 	sw	t3,104(sp)
    d868:	8e0202d0 	lw	v0,720(s0)
    d86c:	3c040000 	lui	a0,0x0
    d870:	244c0008 	addiu	t4,v0,8
    d874:	ae0c02d0 	sw	t4,720(s0)
    d878:	ac400004 	sw	zero,4(v0)
    d87c:	1660000f 	bnez	s3,d8bc <func_808E3D84+0x3a8>
    d880:	ac570000 	sw	s7,0(v0)
    d884:	8e0202d0 	lw	v0,720(s0)
    d888:	3c0dffff 	lui	t5,0xffff
    d88c:	24840000 	addiu	a0,a0,0
    d890:	244a0008 	addiu	t2,v0,8
    d894:	ae0a02d0 	sw	t2,720(s0)
    d898:	ac4d0004 	sw	t5,4(v0)
    d89c:	ac560000 	sw	s6,0(v0)
    d8a0:	8e0202d0 	lw	v0,720(s0)
    d8a4:	26730001 	addiu	s3,s3,1
    d8a8:	327300ff 	andi	s3,s3,0xff
    d8ac:	244e0008 	addiu	t6,v0,8
    d8b0:	ae0e02d0 	sw	t6,720(s0)
    d8b4:	ac440004 	sw	a0,4(v0)
    d8b8:	ac540000 	sw	s4,0(v0)
    d8bc:	8e0202d0 	lw	v0,720(s0)
    d8c0:	2401ff00 	li	at,-256
    d8c4:	00003825 	move	a3,zero
    d8c8:	24580008 	addiu	t8,v0,8
    d8cc:	ae1802d0 	sw	t8,720(s0)
    d8d0:	ac550000 	sw	s5,0(v0)
    d8d4:	8639002c 	lh	t9,44(s1)
    d8d8:	332f00ff 	andi	t7,t9,0xff
    d8dc:	01e14825 	or	t1,t7,at
    d8e0:	ac490004 	sw	t1,4(v0)
    d8e4:	8e26000c 	lw	a2,12(s1)
    d8e8:	c62e0008 	lwc1	$f14,8(s1)
    d8ec:	0c000000 	jal	0 <func_808D6870>
    d8f0:	c62c0004 	lwc1	$f12,4(s1)
    d8f4:	c62c0048 	lwc1	$f12,72(s1)
    d8f8:	0c000000 	jal	0 <func_808D6870>
    d8fc:	24050001 	li	a1,1
    d900:	c62c0044 	lwc1	$f12,68(s1)
    d904:	0c000000 	jal	0 <func_808D6870>
    d908:	24050001 	li	a1,1
    d90c:	c62c003c 	lwc1	$f12,60(s1)
    d910:	0c000000 	jal	0 <func_808D6870>
    d914:	24050001 	li	a1,1
    d918:	c62c0034 	lwc1	$f12,52(s1)
    d91c:	c6240038 	lwc1	$f4,56(s1)
    d920:	24070001 	li	a3,1
    d924:	46006386 	mov.s	$f14,$f12
    d928:	460c2182 	mul.s	$f6,$f4,$f12
    d92c:	44063000 	mfc1	a2,$f6
    d930:	0c000000 	jal	0 <func_808D6870>
    d934:	00000000 	nop
    d938:	3c010000 	lui	at,0x0
    d93c:	c42c0000 	lwc1	$f12,0(at)
    d940:	0c000000 	jal	0 <func_808D6870>
    d944:	24050001 	li	a1,1
    d948:	8e0202d0 	lw	v0,720(s0)
    d94c:	3c050000 	lui	a1,0x0
    d950:	24a50000 	addiu	a1,a1,0
    d954:	244b0008 	addiu	t3,v0,8
    d958:	ae0b02d0 	sw	t3,720(s0)
    d95c:	ac5e0000 	sw	s8,0(v0)
    d960:	02002025 	move	a0,s0
    d964:	24062adb 	li	a2,10971
    d968:	0c000000 	jal	0 <func_808D6870>
    d96c:	afa2010c 	sw	v0,268(sp)
    d970:	8fa3010c 	lw	v1,268(sp)
    d974:	ac620004 	sw	v0,4(v1)
    d978:	8e0202d0 	lw	v0,720(s0)
    d97c:	244c0008 	addiu	t4,v0,8
    d980:	ae0c02d0 	sw	t4,720(s0)
    d984:	ac540000 	sw	s4,0(v0)
    d988:	8faa0068 	lw	t2,104(sp)
    d98c:	ac4a0004 	sw	t2,4(v0)
    d990:	26520001 	addiu	s2,s2,1
    d994:	00129400 	sll	s2,s2,0x10
    d998:	00129403 	sra	s2,s2,0x10
    d99c:	2a410096 	slti	at,s2,150
    d9a0:	1420ffab 	bnez	at,d850 <func_808E3D84+0x33c>
    d9a4:	2631004c 	addiu	s1,s1,76
    d9a8:	00009825 	move	s3,zero
    d9ac:	8fb10164 	lw	s1,356(sp)
    d9b0:	00009025 	move	s2,zero
    d9b4:	922d0000 	lbu	t5,0(s1)
    d9b8:	24010003 	li	at,3
    d9bc:	3c0e0000 	lui	t6,0x0
    d9c0:	15a1004e 	bne	t5,at,dafc <func_808E3D84+0x5e8>
    d9c4:	25ce0000 	addiu	t6,t6,0
    d9c8:	16600026 	bnez	s3,da64 <func_808E3D84+0x550>
    d9cc:	afae0070 	sw	t6,112(sp)
    d9d0:	8e0202d0 	lw	v0,720(s0)
    d9d4:	24010002 	li	at,2
    d9d8:	26730001 	addiu	s3,s3,1
    d9dc:	24580008 	addiu	t8,v0,8
    d9e0:	ae1802d0 	sw	t8,720(s0)
    d9e4:	ac400004 	sw	zero,4(v0)
    d9e8:	ac570000 	sw	s7,0(v0)
    d9ec:	8639002e 	lh	t9,46(s1)
    d9f0:	327300ff 	andi	s3,s3,0xff
    d9f4:	57210010 	bnel	t9,at,da38 <func_808E3D84+0x524>
    d9f8:	8e0202d0 	lw	v0,720(s0)
    d9fc:	8e0202d0 	lw	v0,720(s0)
    da00:	3c096400 	lui	t1,0x6400
    da04:	3529c8ff 	ori	t1,t1,0xc8ff
    da08:	244f0008 	addiu	t7,v0,8
    da0c:	ae0f02d0 	sw	t7,720(s0)
    da10:	ac490004 	sw	t1,4(v0)
    da14:	ac550000 	sw	s5,0(v0)
    da18:	8e0202d0 	lw	v0,720(s0)
    da1c:	3c0c8200 	lui	t4,0x8200
    da20:	244b0008 	addiu	t3,v0,8
    da24:	ae0b02d0 	sw	t3,720(s0)
    da28:	ac4c0004 	sw	t4,4(v0)
    da2c:	1000000d 	b	da64 <func_808E3D84+0x550>
    da30:	ac560000 	sw	s6,0(v0)
    da34:	8e0202d0 	lw	v0,720(s0)
    da38:	240dffff 	li	t5,-1
    da3c:	3c18ffff 	lui	t8,0xffff
    da40:	244a0008 	addiu	t2,v0,8
    da44:	ae0a02d0 	sw	t2,720(s0)
    da48:	ac4d0004 	sw	t5,4(v0)
    da4c:	ac550000 	sw	s5,0(v0)
    da50:	8e0202d0 	lw	v0,720(s0)
    da54:	244e0008 	addiu	t6,v0,8
    da58:	ae0e02d0 	sw	t6,720(s0)
    da5c:	ac580004 	sw	t8,4(v0)
    da60:	ac560000 	sw	s6,0(v0)
    da64:	c62c0004 	lwc1	$f12,4(s1)
    da68:	c62e0008 	lwc1	$f14,8(s1)
    da6c:	8e26000c 	lw	a2,12(s1)
    da70:	0c000000 	jal	0 <func_808D6870>
    da74:	00003825 	move	a3,zero
    da78:	c62c0034 	lwc1	$f12,52(s1)
    da7c:	3c063f80 	lui	a2,0x3f80
    da80:	24070001 	li	a3,1
    da84:	0c000000 	jal	0 <func_808D6870>
    da88:	46006386 	mov.s	$f14,$f12
    da8c:	3c010000 	lui	at,0x0
    da90:	c42a0000 	lwc1	$f10,0(at)
    da94:	c628003c 	lwc1	$f8,60(s1)
    da98:	24050001 	li	a1,1
    da9c:	460a4302 	mul.s	$f12,$f8,$f10
    daa0:	0c000000 	jal	0 <func_808D6870>
    daa4:	00000000 	nop
    daa8:	c62c003c 	lwc1	$f12,60(s1)
    daac:	0c000000 	jal	0 <func_808D6870>
    dab0:	24050001 	li	a1,1
    dab4:	8e0202d0 	lw	v0,720(s0)
    dab8:	3c050000 	lui	a1,0x0
    dabc:	24a50000 	addiu	a1,a1,0
    dac0:	24590008 	addiu	t9,v0,8
    dac4:	ae1902d0 	sw	t9,720(s0)
    dac8:	ac5e0000 	sw	s8,0(v0)
    dacc:	02002025 	move	a0,s0
    dad0:	24062b0f 	li	a2,11023
    dad4:	0c000000 	jal	0 <func_808D6870>
    dad8:	afa200f0 	sw	v0,240(sp)
    dadc:	8fa300f0 	lw	v1,240(sp)
    dae0:	ac620004 	sw	v0,4(v1)
    dae4:	8e0202d0 	lw	v0,720(s0)
    dae8:	244f0008 	addiu	t7,v0,8
    daec:	ae0f02d0 	sw	t7,720(s0)
    daf0:	ac540000 	sw	s4,0(v0)
    daf4:	8fa90070 	lw	t1,112(sp)
    daf8:	ac490004 	sw	t1,4(v0)
    dafc:	26520001 	addiu	s2,s2,1
    db00:	00129400 	sll	s2,s2,0x10
    db04:	00129403 	sra	s2,s2,0x10
    db08:	2a410096 	slti	at,s2,150
    db0c:	1420ffa9 	bnez	at,d9b4 <func_808E3D84+0x4a0>
    db10:	2631004c 	addiu	s1,s1,76
    db14:	8fb10164 	lw	s1,356(sp)
    db18:	00009025 	move	s2,zero
    db1c:	922b0000 	lbu	t3,0(s1)
    db20:	24010004 	li	at,4
    db24:	5561006f 	bnel	t3,at,dce4 <func_808E3D84+0x7d0>
    db28:	26520001 	addiu	s2,s2,1
    db2c:	8e0202d0 	lw	v0,720(s0)
    db30:	24050003 	li	a1,3
    db34:	3c180000 	lui	t8,0x0
    db38:	244c0008 	addiu	t4,v0,8
    db3c:	ae0c02d0 	sw	t4,720(s0)
    db40:	ac400004 	sw	zero,4(v0)
    db44:	ac570000 	sw	s7,0(v0)
    db48:	8e0202d0 	lw	v0,720(s0)
    db4c:	27180000 	addiu	t8,t8,0
    db50:	3c130000 	lui	s3,0x0
    db54:	244a0008 	addiu	t2,v0,8
    db58:	ae0a02d0 	sw	t2,720(s0)
    db5c:	ac550000 	sw	s5,0(v0)
    db60:	922d0001 	lbu	t5,1(s1)
    db64:	26730000 	addiu	s3,s3,0
    db68:	00003825 	move	a3,zero
    db6c:	01a50019 	multu	t5,a1
    db70:	00007012 	mflo	t6
    db74:	01d81821 	addu	v1,t6,t8
    db78:	906f0002 	lbu	t7,2(v1)
    db7c:	906c0000 	lbu	t4,0(v1)
    db80:	90780001 	lbu	t8,1(v1)
    db84:	000f4a00 	sll	t1,t7,0x8
    db88:	000c5600 	sll	t2,t4,0x18
    db8c:	012a6825 	or	t5,t1,t2
    db90:	0018cc00 	sll	t9,t8,0x10
    db94:	01b97825 	or	t7,t5,t9
    db98:	35eb00ff 	ori	t3,t7,0xff
    db9c:	ac4b0004 	sw	t3,4(v0)
    dba0:	8e0202d0 	lw	v0,720(s0)
    dba4:	3c0e0000 	lui	t6,0x0
    dba8:	25ce0000 	addiu	t6,t6,0
    dbac:	244c0008 	addiu	t4,v0,8
    dbb0:	ae0c02d0 	sw	t4,720(s0)
    dbb4:	ac560000 	sw	s6,0(v0)
    dbb8:	92290001 	lbu	t1,1(s1)
    dbbc:	01250019 	multu	t1,a1
    dbc0:	00005012 	mflo	t2
    dbc4:	014e1821 	addu	v1,t2,t6
    dbc8:	906d0002 	lbu	t5,2(v1)
    dbcc:	906b0000 	lbu	t3,0(v1)
    dbd0:	906e0001 	lbu	t6,1(v1)
    dbd4:	000dca00 	sll	t9,t5,0x8
    dbd8:	000b6600 	sll	t4,t3,0x18
    dbdc:	032c4825 	or	t1,t9,t4
    dbe0:	000ec400 	sll	t8,t6,0x10
    dbe4:	01386825 	or	t5,t1,t8
    dbe8:	ac4d0004 	sw	t5,4(v0)
    dbec:	3c020000 	lui	v0,0x0
    dbf0:	8c420000 	lw	v0,0(v0)
    dbf4:	c44c0260 	lwc1	$f12,608(v0)
    dbf8:	c44e0264 	lwc1	$f14,612(v0)
    dbfc:	0c000000 	jal	0 <func_808D6870>
    dc00:	8c460268 	lw	a2,616(v0)
    dc04:	c62c0048 	lwc1	$f12,72(s1)
    dc08:	0c000000 	jal	0 <func_808D6870>
    dc0c:	24050001 	li	a1,1
    dc10:	c62c003c 	lwc1	$f12,60(s1)
    dc14:	0c000000 	jal	0 <func_808D6870>
    dc18:	24050001 	li	a1,1
    dc1c:	c62c0034 	lwc1	$f12,52(s1)
    dc20:	24070001 	li	a3,1
    dc24:	44066000 	mfc1	a2,$f12
    dc28:	0c000000 	jal	0 <func_808D6870>
    dc2c:	46006386 	mov.s	$f14,$f12
    dc30:	c62c0044 	lwc1	$f12,68(s1)
    dc34:	0c000000 	jal	0 <func_808D6870>
    dc38:	24050001 	li	a1,1
    dc3c:	8e0202d0 	lw	v0,720(s0)
    dc40:	3c050000 	lui	a1,0x0
    dc44:	24a50000 	addiu	a1,a1,0
    dc48:	244f0008 	addiu	t7,v0,8
    dc4c:	ae0f02d0 	sw	t7,720(s0)
    dc50:	ac5e0000 	sw	s8,0(v0)
    dc54:	02002025 	move	a0,s0
    dc58:	24062b42 	li	a2,11074
    dc5c:	0c000000 	jal	0 <func_808D6870>
    dc60:	afa200dc 	sw	v0,220(sp)
    dc64:	8fa300dc 	lw	v1,220(sp)
    dc68:	3c19db06 	lui	t9,0xdb06
    dc6c:	37390020 	ori	t9,t9,0x20
    dc70:	ac620004 	sw	v0,4(v1)
    dc74:	8e0202d0 	lw	v0,720(s0)
    dc78:	3c040000 	lui	a0,0x0
    dc7c:	3c0f0000 	lui	t7,0x0
    dc80:	244b0008 	addiu	t3,v0,8
    dc84:	ae0b02d0 	sw	t3,720(s0)
    dc88:	ac590000 	sw	t9,0(v0)
    dc8c:	922c0001 	lbu	t4,1(s1)
    dc90:	3c0100ff 	lui	at,0xff
    dc94:	3421ffff 	ori	at,at,0xffff
    dc98:	000c5080 	sll	t2,t4,0x2
    dc9c:	008a2021 	addu	a0,a0,t2
    dca0:	8c840000 	lw	a0,0(a0)
    dca4:	00044900 	sll	t1,a0,0x4
    dca8:	0009c702 	srl	t8,t1,0x1c
    dcac:	00186880 	sll	t5,t8,0x2
    dcb0:	01ed7821 	addu	t7,t7,t5
    dcb4:	8def0000 	lw	t7,0(t7)
    dcb8:	00817024 	and	t6,a0,at
    dcbc:	3c018000 	lui	at,0x8000
    dcc0:	01cf5821 	addu	t3,t6,t7
    dcc4:	0161c821 	addu	t9,t3,at
    dcc8:	ac590004 	sw	t9,4(v0)
    dccc:	8e0202d0 	lw	v0,720(s0)
    dcd0:	244c0008 	addiu	t4,v0,8
    dcd4:	ae0c02d0 	sw	t4,720(s0)
    dcd8:	ac530004 	sw	s3,4(v0)
    dcdc:	ac540000 	sw	s4,0(v0)
    dce0:	26520001 	addiu	s2,s2,1
    dce4:	00129400 	sll	s2,s2,0x10
    dce8:	00129403 	sra	s2,s2,0x10
    dcec:	2a410096 	slti	at,s2,150
    dcf0:	1420ff8a 	bnez	at,db1c <func_808E3D84+0x608>
    dcf4:	2631004c 	addiu	s1,s1,76
    dcf8:	8fb10164 	lw	s1,356(sp)
    dcfc:	00009025 	move	s2,zero
    dd00:	922a0000 	lbu	t2,0(s1)
    dd04:	24010005 	li	at,5
    dd08:	3c130000 	lui	s3,0x0
    dd0c:	15410052 	bne	t2,at,de58 <func_808E3D84+0x944>
    dd10:	26730000 	addiu	s3,s3,0
    dd14:	8e0202d0 	lw	v0,720(s0)
    dd18:	3c0b6446 	lui	t3,0x6446
    dd1c:	356b0080 	ori	t3,t3,0x80
    dd20:	24490008 	addiu	t1,v0,8
    dd24:	ae0902d0 	sw	t1,720(s0)
    dd28:	ac570000 	sw	s7,0(v0)
    dd2c:	ac400004 	sw	zero,4(v0)
    dd30:	8e0202d0 	lw	v0,720(s0)
    dd34:	3c0cdb06 	lui	t4,0xdb06
    dd38:	358c0020 	ori	t4,t4,0x20
    dd3c:	24580008 	addiu	t8,v0,8
    dd40:	ae1802d0 	sw	t8,720(s0)
    dd44:	ac550000 	sw	s5,0(v0)
    dd48:	862d002c 	lh	t5,44(s1)
    dd4c:	24180040 	li	t8,64
    dd50:	24090020 	li	t1,32
    dd54:	31ae00ff 	andi	t6,t5,0xff
    dd58:	ac4e0004 	sw	t6,4(v0)
    dd5c:	8e0202d0 	lw	v0,720(s0)
    dd60:	240d0001 	li	t5,1
    dd64:	00002825 	move	a1,zero
    dd68:	244f0008 	addiu	t7,v0,8
    dd6c:	ae0f02d0 	sw	t7,720(s0)
    dd70:	ac560000 	sw	s6,0(v0)
    dd74:	ac4b0004 	sw	t3,4(v0)
    dd78:	8e0202d0 	lw	v0,720(s0)
    dd7c:	240b0020 	li	t3,32
    dd80:	00003825 	move	a3,zero
    dd84:	24590008 	addiu	t9,v0,8
    dd88:	ae1902d0 	sw	t9,720(s0)
    dd8c:	ac4c0000 	sw	t4,0(v0)
    dd90:	92230001 	lbu	v1,1(s1)
    dd94:	8faa0178 	lw	t2,376(sp)
    dd98:	24190020 	li	t9,32
    dd9c:	00030823 	negu	at,v1
    dda0:	8d440000 	lw	a0,0(t2)
    dda4:	00017880 	sll	t7,at,0x2
    dda8:	01e17821 	addu	t7,t7,at
    ddac:	000f7880 	sll	t7,t7,0x2
    ddb0:	00037040 	sll	t6,v1,0x1
    ddb4:	afae001c 	sw	t6,28(sp)
    ddb8:	afaf0020 	sw	t7,32(sp)
    ddbc:	afb90028 	sw	t9,40(sp)
    ddc0:	afab0024 	sw	t3,36(sp)
    ddc4:	afad0018 	sw	t5,24(sp)
    ddc8:	afb80014 	sw	t8,20(sp)
    ddcc:	afa90010 	sw	t1,16(sp)
    ddd0:	afa200c4 	sw	v0,196(sp)
    ddd4:	0c000000 	jal	0 <func_808D6870>
    ddd8:	00033080 	sll	a2,v1,0x2
    dddc:	8fa800c4 	lw	t0,196(sp)
    dde0:	00003825 	move	a3,zero
    dde4:	ad020004 	sw	v0,4(t0)
    dde8:	8e26000c 	lw	a2,12(s1)
    ddec:	c62e0008 	lwc1	$f14,8(s1)
    ddf0:	0c000000 	jal	0 <func_808D6870>
    ddf4:	c62c0004 	lwc1	$f12,4(s1)
    ddf8:	c62c0034 	lwc1	$f12,52(s1)
    ddfc:	c6300040 	lwc1	$f16,64(s1)
    de00:	24070001 	li	a3,1
    de04:	44066000 	mfc1	a2,$f12
    de08:	460c8382 	mul.s	$f14,$f16,$f12
    de0c:	0c000000 	jal	0 <func_808D6870>
    de10:	00000000 	nop
    de14:	8e0202d0 	lw	v0,720(s0)
    de18:	3c050000 	lui	a1,0x0
    de1c:	24a50000 	addiu	a1,a1,0
    de20:	244c0008 	addiu	t4,v0,8
    de24:	ae0c02d0 	sw	t4,720(s0)
    de28:	ac5e0000 	sw	s8,0(v0)
    de2c:	02002025 	move	a0,s0
    de30:	24062b71 	li	a2,11121
    de34:	0c000000 	jal	0 <func_808D6870>
    de38:	afa200c0 	sw	v0,192(sp)
    de3c:	8fa300c0 	lw	v1,192(sp)
    de40:	ac620004 	sw	v0,4(v1)
    de44:	8e0202d0 	lw	v0,720(s0)
    de48:	244a0008 	addiu	t2,v0,8
    de4c:	ae0a02d0 	sw	t2,720(s0)
    de50:	ac530004 	sw	s3,4(v0)
    de54:	ac540000 	sw	s4,0(v0)
    de58:	26520001 	addiu	s2,s2,1
    de5c:	00129400 	sll	s2,s2,0x10
    de60:	00129403 	sra	s2,s2,0x10
    de64:	2a410096 	slti	at,s2,150
    de68:	1420ffa5 	bnez	at,dd00 <func_808E3D84+0x7ec>
    de6c:	2631004c 	addiu	s1,s1,76
    de70:	8fb10164 	lw	s1,356(sp)
    de74:	00009025 	move	s2,zero
    de78:	92290000 	lbu	t1,0(s1)
    de7c:	24010006 	li	at,6
    de80:	3c130000 	lui	s3,0x0
    de84:	15210054 	bne	t1,at,dfd8 <func_808E3D84+0xac4>
    de88:	26730000 	addiu	s3,s3,0
    de8c:	8e0202d0 	lw	v0,720(s0)
    de90:	2401ff00 	li	at,-256
    de94:	3c0cc864 	lui	t4,0xc864
    de98:	24580008 	addiu	t8,v0,8
    de9c:	ae1802d0 	sw	t8,720(s0)
    dea0:	ac570000 	sw	s7,0(v0)
    dea4:	ac400004 	sw	zero,4(v0)
    dea8:	8e0202d0 	lw	v0,720(s0)
    deac:	358c0080 	ori	t4,t4,0x80
    deb0:	3c09db06 	lui	t1,0xdb06
    deb4:	244d0008 	addiu	t5,v0,8
    deb8:	ae0d02d0 	sw	t5,720(s0)
    debc:	ac550000 	sw	s5,0(v0)
    dec0:	862e002c 	lh	t6,44(s1)
    dec4:	35290020 	ori	t1,t1,0x20
    dec8:	240d0020 	li	t5,32
    decc:	31cf00ff 	andi	t7,t6,0xff
    ded0:	01e15825 	or	t3,t7,at
    ded4:	ac4b0004 	sw	t3,4(v0)
    ded8:	8e0202d0 	lw	v0,720(s0)
    dedc:	240f0001 	li	t7,1
    dee0:	240e0040 	li	t6,64
    dee4:	24590008 	addiu	t9,v0,8
    dee8:	ae1902d0 	sw	t9,720(s0)
    deec:	ac560000 	sw	s6,0(v0)
    def0:	ac4c0004 	sw	t4,4(v0)
    def4:	8e0202d0 	lw	v0,720(s0)
    def8:	240c0020 	li	t4,32
    defc:	00002825 	move	a1,zero
    df00:	244a0008 	addiu	t2,v0,8
    df04:	ae0a02d0 	sw	t2,720(s0)
    df08:	ac490000 	sw	t1,0(v0)
    df0c:	92230001 	lbu	v1,1(s1)
    df10:	8fb80178 	lw	t8,376(sp)
    df14:	240a0020 	li	t2,32
    df18:	00030823 	negu	at,v1
    df1c:	8f040000 	lw	a0,0(t8)
    df20:	0001c880 	sll	t9,at,0x2
    df24:	0321c821 	addu	t9,t9,at
    df28:	0019c880 	sll	t9,t9,0x2
    df2c:	00035840 	sll	t3,v1,0x1
    df30:	afab001c 	sw	t3,28(sp)
    df34:	afb90020 	sw	t9,32(sp)
    df38:	afaa0028 	sw	t2,40(sp)
    df3c:	afac0024 	sw	t4,36(sp)
    df40:	afaf0018 	sw	t7,24(sp)
    df44:	afae0014 	sw	t6,20(sp)
    df48:	afad0010 	sw	t5,16(sp)
    df4c:	00003825 	move	a3,zero
    df50:	afa200ac 	sw	v0,172(sp)
    df54:	0c000000 	jal	0 <func_808D6870>
    df58:	00033080 	sll	a2,v1,0x2
    df5c:	8fa800ac 	lw	t0,172(sp)
    df60:	00003825 	move	a3,zero
    df64:	ad020004 	sw	v0,4(t0)
    df68:	8e26000c 	lw	a2,12(s1)
    df6c:	c62e0008 	lwc1	$f14,8(s1)
    df70:	0c000000 	jal	0 <func_808D6870>
    df74:	c62c0004 	lwc1	$f12,4(s1)
    df78:	c62c0034 	lwc1	$f12,52(s1)
    df7c:	c6320040 	lwc1	$f18,64(s1)
    df80:	24070001 	li	a3,1
    df84:	44066000 	mfc1	a2,$f12
    df88:	460c9382 	mul.s	$f14,$f18,$f12
    df8c:	0c000000 	jal	0 <func_808D6870>
    df90:	00000000 	nop
    df94:	8e0202d0 	lw	v0,720(s0)
    df98:	3c050000 	lui	a1,0x0
    df9c:	24a50000 	addiu	a1,a1,0
    dfa0:	24490008 	addiu	t1,v0,8
    dfa4:	ae0902d0 	sw	t1,720(s0)
    dfa8:	ac5e0000 	sw	s8,0(v0)
    dfac:	02002025 	move	a0,s0
    dfb0:	24062b9d 	li	a2,11165
    dfb4:	0c000000 	jal	0 <func_808D6870>
    dfb8:	afa200a8 	sw	v0,168(sp)
    dfbc:	8fa300a8 	lw	v1,168(sp)
    dfc0:	ac620004 	sw	v0,4(v1)
    dfc4:	8e0202d0 	lw	v0,720(s0)
    dfc8:	24580008 	addiu	t8,v0,8
    dfcc:	ae1802d0 	sw	t8,720(s0)
    dfd0:	ac530004 	sw	s3,4(v0)
    dfd4:	ac540000 	sw	s4,0(v0)
    dfd8:	26520001 	addiu	s2,s2,1
    dfdc:	00129400 	sll	s2,s2,0x10
    dfe0:	00129403 	sra	s2,s2,0x10
    dfe4:	2a410096 	slti	at,s2,150
    dfe8:	1420ffa3 	bnez	at,de78 <func_808E3D84+0x964>
    dfec:	2631004c 	addiu	s1,s1,76
    dff0:	8fb10164 	lw	s1,356(sp)
    dff4:	00009025 	move	s2,zero
    dff8:	922d0000 	lbu	t5,0(s1)
    dffc:	24010007 	li	at,7
    e000:	3c130000 	lui	s3,0x0
    e004:	15a1005b 	bne	t5,at,e174 <func_808E3D84+0xc60>
    e008:	26730000 	addiu	s3,s3,0
    e00c:	8e0202d0 	lw	v0,720(s0)
    e010:	2401aa00 	li	at,-22016
    e014:	3c0996ff 	lui	t1,0x96ff
    e018:	244e0008 	addiu	t6,v0,8
    e01c:	ae0e02d0 	sw	t6,720(s0)
    e020:	ac570000 	sw	s7,0(v0)
    e024:	ac400004 	sw	zero,4(v0)
    e028:	8e0202d0 	lw	v0,720(s0)
    e02c:	35290080 	ori	t1,t1,0x80
    e030:	3c0ddb06 	lui	t5,0xdb06
    e034:	244f0008 	addiu	t7,v0,8
    e038:	ae0f02d0 	sw	t7,720(s0)
    e03c:	ac550000 	sw	s5,0(v0)
    e040:	862b002c 	lh	t3,44(s1)
    e044:	35ad0020 	ori	t5,t5,0x20
    e048:	240f0040 	li	t7,64
    e04c:	317900ff 	andi	t9,t3,0xff
    e050:	03216025 	or	t4,t9,at
    e054:	ac4c0004 	sw	t4,4(v0)
    e058:	8e0202d0 	lw	v0,720(s0)
    e05c:	240c0040 	li	t4,64
    e060:	24190001 	li	t9,1
    e064:	244a0008 	addiu	t2,v0,8
    e068:	ae0a02d0 	sw	t2,720(s0)
    e06c:	ac560000 	sw	s6,0(v0)
    e070:	ac490004 	sw	t1,4(v0)
    e074:	8e0202d0 	lw	v0,720(s0)
    e078:	240a0020 	li	t2,32
    e07c:	240b0020 	li	t3,32
    e080:	24580008 	addiu	t8,v0,8
    e084:	ae1802d0 	sw	t8,720(s0)
    e088:	ac4d0000 	sw	t5,0(v0)
    e08c:	8fae0178 	lw	t6,376(sp)
    e090:	92260001 	lbu	a2,1(s1)
    e094:	00002825 	move	a1,zero
    e098:	8dc40000 	lw	a0,0(t6)
    e09c:	00c00821 	move	at,a2
    e0a0:	00063080 	sll	a2,a2,0x2
    e0a4:	00c13023 	subu	a2,a2,at
    e0a8:	000630c0 	sll	a2,a2,0x3
    e0ac:	00c13021 	addu	a2,a2,at
    e0b0:	00063080 	sll	a2,a2,0x2
    e0b4:	afa6001c 	sw	a2,28(sp)
    e0b8:	afaa0028 	sw	t2,40(sp)
    e0bc:	afac0024 	sw	t4,36(sp)
    e0c0:	afa00020 	sw	zero,32(sp)
    e0c4:	afb90018 	sw	t9,24(sp)
    e0c8:	afab0014 	sw	t3,20(sp)
    e0cc:	afaf0010 	sw	t7,16(sp)
    e0d0:	00003825 	move	a3,zero
    e0d4:	0c000000 	jal	0 <func_808D6870>
    e0d8:	afa20094 	sw	v0,148(sp)
    e0dc:	8fa30094 	lw	v1,148(sp)
    e0e0:	00003825 	move	a3,zero
    e0e4:	ac620004 	sw	v0,4(v1)
    e0e8:	8e26000c 	lw	a2,12(s1)
    e0ec:	c62e0008 	lwc1	$f14,8(s1)
    e0f0:	0c000000 	jal	0 <func_808D6870>
    e0f4:	c62c0004 	lwc1	$f12,4(s1)
    e0f8:	3c014348 	lui	at,0x4348
    e0fc:	44810000 	mtc1	at,$f0
    e100:	c6240034 	lwc1	$f4,52(s1)
    e104:	3c010000 	lui	at,0x0
    e108:	c4220000 	lwc1	$f2,0(at)
    e10c:	46002182 	mul.s	$f6,$f4,$f0
    e110:	c6280040 	lwc1	$f8,64(s1)
    e114:	24070001 	li	a3,1
    e118:	46004282 	mul.s	$f10,$f8,$f0
    e11c:	46023303 	div.s	$f12,$f6,$f2
    e120:	46025383 	div.s	$f14,$f10,$f2
    e124:	44066000 	mfc1	a2,$f12
    e128:	0c000000 	jal	0 <func_808D6870>
    e12c:	00000000 	nop
    e130:	8e0202d0 	lw	v0,720(s0)
    e134:	3c050000 	lui	a1,0x0
    e138:	24a50000 	addiu	a1,a1,0
    e13c:	24490008 	addiu	t1,v0,8
    e140:	ae0902d0 	sw	t1,720(s0)
    e144:	ac5e0000 	sw	s8,0(v0)
    e148:	02002025 	move	a0,s0
    e14c:	24062bc9 	li	a2,11209
    e150:	0c000000 	jal	0 <func_808D6870>
    e154:	afa20090 	sw	v0,144(sp)
    e158:	8fa30090 	lw	v1,144(sp)
    e15c:	ac620004 	sw	v0,4(v1)
    e160:	8e0202d0 	lw	v0,720(s0)
    e164:	24580008 	addiu	t8,v0,8
    e168:	ae1802d0 	sw	t8,720(s0)
    e16c:	ac530004 	sw	s3,4(v0)
    e170:	ac540000 	sw	s4,0(v0)
    e174:	26520001 	addiu	s2,s2,1
    e178:	00129400 	sll	s2,s2,0x10
    e17c:	00129403 	sra	s2,s2,0x10
    e180:	2a410096 	slti	at,s2,150
    e184:	1420ff9c 	bnez	at,dff8 <func_808E3D84+0xae4>
    e188:	2631004c 	addiu	s1,s1,76
    e18c:	8fb10164 	lw	s1,356(sp)
    e190:	00009025 	move	s2,zero
    e194:	922d0000 	lbu	t5,0(s1)
    e198:	24010008 	li	at,8
    e19c:	8fae0178 	lw	t6,376(sp)
    e1a0:	15a10058 	bne	t5,at,e304 <func_808E3D84+0xdf0>
    e1a4:	3c130000 	lui	s3,0x0
    e1a8:	3c010001 	lui	at,0x1
    e1ac:	34211da0 	ori	at,at,0x1da0
    e1b0:	01c17821 	addu	t7,t6,at
    e1b4:	afaf006c 	sw	t7,108(sp)
    e1b8:	8e0202d0 	lw	v0,720(s0)
    e1bc:	3c0196aa 	lui	at,0x96aa
    e1c0:	240dff80 	li	t5,-128
    e1c4:	244b0008 	addiu	t3,v0,8
    e1c8:	ae0b02d0 	sw	t3,720(s0)
    e1cc:	ac570000 	sw	s7,0(v0)
    e1d0:	ac400004 	sw	zero,4(v0)
    e1d4:	8e0202d0 	lw	v0,720(s0)
    e1d8:	3c0fdb06 	lui	t7,0xdb06
    e1dc:	35ef0028 	ori	t7,t7,0x28
    e1e0:	24590008 	addiu	t9,v0,8
    e1e4:	ae1902d0 	sw	t9,720(s0)
    e1e8:	ac550000 	sw	s5,0(v0)
    e1ec:	862c002c 	lh	t4,44(s1)
    e1f0:	24190020 	li	t9,32
    e1f4:	26730000 	addiu	s3,s3,0
    e1f8:	318a00ff 	andi	t2,t4,0xff
    e1fc:	01414825 	or	t1,t2,at
    e200:	ac490004 	sw	t1,4(v0)
    e204:	8e0202d0 	lw	v0,720(s0)
    e208:	240a0001 	li	t2,1
    e20c:	240c0020 	li	t4,32
    e210:	24580008 	addiu	t8,v0,8
    e214:	ae1802d0 	sw	t8,720(s0)
    e218:	ac560000 	sw	s6,0(v0)
    e21c:	ac4d0004 	sw	t5,4(v0)
    e220:	8e0202d0 	lw	v0,720(s0)
    e224:	240d0040 	li	t5,64
    e228:	00002825 	move	a1,zero
    e22c:	244e0008 	addiu	t6,v0,8
    e230:	ae0e02d0 	sw	t6,720(s0)
    e234:	ac4f0000 	sw	t7,0(v0)
    e238:	8fab0178 	lw	t3,376(sp)
    e23c:	240e0040 	li	t6,64
    e240:	00003025 	move	a2,zero
    e244:	8d640000 	lw	a0,0(t3)
    e248:	afaa0018 	sw	t2,24(sp)
    e24c:	afac0014 	sw	t4,20(sp)
    e250:	afb90010 	sw	t9,16(sp)
    e254:	92230001 	lbu	v1,1(s1)
    e258:	afae0028 	sw	t6,40(sp)
    e25c:	afad0024 	sw	t5,36(sp)
    e260:	00030823 	negu	at,v1
    e264:	0001c080 	sll	t8,at,0x2
    e268:	0301c021 	addu	t8,t8,at
    e26c:	0018c080 	sll	t8,t8,0x2
    e270:	00034840 	sll	t1,v1,0x1
    e274:	afa9001c 	sw	t1,28(sp)
    e278:	afb80020 	sw	t8,32(sp)
    e27c:	00003825 	move	a3,zero
    e280:	0c000000 	jal	0 <func_808D6870>
    e284:	afa2007c 	sw	v0,124(sp)
    e288:	8fa8007c 	lw	t0,124(sp)
    e28c:	00003825 	move	a3,zero
    e290:	ad020004 	sw	v0,4(t0)
    e294:	8e26000c 	lw	a2,12(s1)
    e298:	c62e0008 	lwc1	$f14,8(s1)
    e29c:	0c000000 	jal	0 <func_808D6870>
    e2a0:	c62c0004 	lwc1	$f12,4(s1)
    e2a4:	0c000000 	jal	0 <func_808D6870>
    e2a8:	8fa4006c 	lw	a0,108(sp)
    e2ac:	c62c0034 	lwc1	$f12,52(s1)
    e2b0:	3c063f80 	lui	a2,0x3f80
    e2b4:	24070001 	li	a3,1
    e2b8:	0c000000 	jal	0 <func_808D6870>
    e2bc:	46006386 	mov.s	$f14,$f12
    e2c0:	8e0202d0 	lw	v0,720(s0)
    e2c4:	3c050000 	lui	a1,0x0
    e2c8:	24a50000 	addiu	a1,a1,0
    e2cc:	244f0008 	addiu	t7,v0,8
    e2d0:	ae0f02d0 	sw	t7,720(s0)
    e2d4:	ac5e0000 	sw	s8,0(v0)
    e2d8:	02002025 	move	a0,s0
    e2dc:	24062bf2 	li	a2,11250
    e2e0:	0c000000 	jal	0 <func_808D6870>
    e2e4:	afa20078 	sw	v0,120(sp)
    e2e8:	8fa30078 	lw	v1,120(sp)
    e2ec:	ac620004 	sw	v0,4(v1)
    e2f0:	8e0202d0 	lw	v0,720(s0)
    e2f4:	244b0008 	addiu	t3,v0,8
    e2f8:	ae0b02d0 	sw	t3,720(s0)
    e2fc:	ac530004 	sw	s3,4(v0)
    e300:	ac540000 	sw	s4,0(v0)
    e304:	26520001 	addiu	s2,s2,1
    e308:	00129400 	sll	s2,s2,0x10
    e30c:	00129403 	sra	s2,s2,0x10
    e310:	2a410096 	slti	at,s2,150
    e314:	1420ff9f 	bnez	at,e194 <func_808E3D84+0xc80>
    e318:	2631004c 	addiu	s1,s1,76
    e31c:	3c060000 	lui	a2,0x0
    e320:	24c60000 	addiu	a2,a2,0
    e324:	27a40150 	addiu	a0,sp,336
    e328:	02002825 	move	a1,s0
    e32c:	0c000000 	jal	0 <func_808D6870>
    e330:	24072bf7 	li	a3,11255
    e334:	8fbf005c 	lw	ra,92(sp)
    e338:	8fb00038 	lw	s0,56(sp)
    e33c:	8fb1003c 	lw	s1,60(sp)
    e340:	8fb20040 	lw	s2,64(sp)
    e344:	8fb30044 	lw	s3,68(sp)
    e348:	8fb40048 	lw	s4,72(sp)
    e34c:	8fb5004c 	lw	s5,76(sp)
    e350:	8fb60050 	lw	s6,80(sp)
    e354:	8fb70054 	lw	s7,84(sp)
    e358:	8fbe0058 	lw	s8,88(sp)
    e35c:	03e00008 	jr	ra
    e360:	27bd0178 	addiu	sp,sp,376
	...
