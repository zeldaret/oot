
build/src/overlays/actors/ovl_Boss_Sst/z_boss_sst.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BossSst_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afb10030 	sw	s1,48(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf0034 	sw	ra,52(sp)
      10:	afb0002c 	sw	s0,44(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <BossSst_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	260506b4 	addiu	a1,s0,1716
      28:	afa50044 	sw	a1,68(sp)
      2c:	0c000000 	jal	0 <BossSst_Init>
      30:	02202025 	move	a0,s1
      34:	260503d4 	addiu	a1,s0,980
      38:	afa50040 	sw	a1,64(sp)
      3c:	0c000000 	jal	0 <BossSst_Init>
      40:	02202025 	move	a0,s1
      44:	3c050000 	lui	a1,0x0
      48:	3c060000 	lui	a2,0x0
      4c:	24c60000 	addiu	a2,a2,0
      50:	24a50000 	addiu	a1,a1,0
      54:	0c000000 	jal	0 <BossSst_Init>
      58:	26040098 	addiu	a0,s0,152
      5c:	02202025 	move	a0,s1
      60:	0c000000 	jal	0 <BossSst_Init>
      64:	24050014 	li	a1,20
      68:	860e001c 	lh	t6,28(s0)
      6c:	2401ffff 	li	at,-1
      70:	02202025 	move	a0,s1
      74:	15c100ba 	bne	t6,at,360 <BossSst_Init+0x360>
      78:	8fa50040 	lw	a1,64(sp)
      7c:	3c020000 	lui	v0,0x0
      80:	24420000 	addiu	v0,v0,0
      84:	c4440004 	lwc1	$f4,4(v0)
      88:	c4460008 	lwc1	$f6,8(v0)
      8c:	26241c24 	addiu	a0,s1,7204
      90:	afa4003c 	sw	a0,60(sp)
      94:	8c470000 	lw	a3,0(v0)
      98:	02202825 	move	a1,s1
      9c:	24060166 	li	a2,358
      a0:	afa00018 	sw	zero,24(sp)
      a4:	afa0001c 	sw	zero,28(sp)
      a8:	afa00020 	sw	zero,32(sp)
      ac:	afa00024 	sw	zero,36(sp)
      b0:	e7a40010 	swc1	$f4,16(sp)
      b4:	0c000000 	jal	0 <BossSst_Init>
      b8:	e7a60014 	swc1	$f6,20(sp)
      bc:	3c010000 	lui	at,0x0
      c0:	3c060601 	lui	a2,0x601
      c4:	3c070601 	lui	a3,0x601
      c8:	260f01a8 	addiu	t7,s0,424
      cc:	261802b6 	addiu	t8,s0,694
      d0:	2419002d 	li	t9,45
      d4:	ac220000 	sw	v0,0(at)
      d8:	afb90018 	sw	t9,24(sp)
      dc:	afb80014 	sw	t8,20(sp)
      e0:	afaf0010 	sw	t7,16(sp)
      e4:	24e7e7b8 	addiu	a3,a3,-6216
      e8:	24c67c40 	addiu	a2,a2,31808
      ec:	02202025 	move	a0,s1
      f0:	0c000000 	jal	0 <BossSst_Init>
      f4:	2605014c 	addiu	a1,s0,332
      f8:	3c054788 	lui	a1,0x4788
      fc:	3c060000 	lui	a2,0x0
     100:	24c60000 	addiu	a2,a2,0
     104:	34a5b800 	ori	a1,a1,0xb800
     108:	260400b4 	addiu	a0,s0,180
     10c:	0c000000 	jal	0 <BossSst_Init>
     110:	3c0742be 	lui	a3,0x42be
     114:	3c070000 	lui	a3,0x0
     118:	260803f4 	addiu	t0,s0,1012
     11c:	afa80010 	sw	t0,16(sp)
     120:	24e70000 	addiu	a3,a3,0
     124:	02202025 	move	a0,s1
     128:	8fa50040 	lw	a1,64(sp)
     12c:	0c000000 	jal	0 <BossSst_Init>
     130:	02003025 	move	a2,s0
     134:	3c070000 	lui	a3,0x0
     138:	24e70000 	addiu	a3,a3,0
     13c:	02202025 	move	a0,s1
     140:	8fa50044 	lw	a1,68(sp)
     144:	0c000000 	jal	0 <BossSst_Init>
     148:	02003025 	move	a2,s0
     14c:	44800000 	mtc1	zero,$f0
     150:	3c010000 	lui	at,0x0
     154:	ac300000 	sw	s0,0(at)
     158:	e6000024 	swc1	$f0,36(s0)
     15c:	3c010000 	lui	at,0x0
     160:	e6000028 	swc1	$f0,40(s0)
     164:	c4280000 	lwc1	$f8,0(at)
     168:	8e0a0024 	lw	t2,36(s0)
     16c:	8e090028 	lw	t1,40(s0)
     170:	e608002c 	swc1	$f8,44(s0)
     174:	ae0a0008 	sw	t2,8(s0)
     178:	8e0a002c 	lw	t2,44(s0)
     17c:	3c050001 	lui	a1,0x1
     180:	a60000b6 	sh	zero,182(s0)
     184:	00b12821 	addu	a1,a1,s1
     188:	ae09000c 	sw	t1,12(s0)
     18c:	ae0a0010 	sw	t2,16(s0)
     190:	80a51cbc 	lb	a1,7356(a1)
     194:	0c000000 	jal	0 <BossSst_Init>
     198:	02202025 	move	a0,s1
     19c:	10400022 	beqz	v0,228 <BossSst_Init+0x228>
     1a0:	3c014348 	lui	at,0x4348
     1a4:	3c0143c8 	lui	at,0x43c8
     1a8:	44818000 	mtc1	at,$f16
     1ac:	44805000 	mtc1	zero,$f10
     1b0:	240bffff 	li	t3,-1
     1b4:	afab0024 	sw	t3,36(sp)
     1b8:	8fa4003c 	lw	a0,60(sp)
     1bc:	02202825 	move	a1,s1
     1c0:	2406005d 	li	a2,93
     1c4:	3c07c248 	lui	a3,0xc248
     1c8:	afa00018 	sw	zero,24(sp)
     1cc:	afa0001c 	sw	zero,28(sp)
     1d0:	afa00020 	sw	zero,32(sp)
     1d4:	e7b00014 	swc1	$f16,20(sp)
     1d8:	0c000000 	jal	0 <BossSst_Init>
     1dc:	e7aa0010 	swc1	$f10,16(sp)
     1e0:	3c01c348 	lui	at,0xc348
     1e4:	44812000 	mtc1	at,$f4
     1e8:	44809000 	mtc1	zero,$f18
     1ec:	8fa4003c 	lw	a0,60(sp)
     1f0:	02202825 	move	a1,s1
     1f4:	2406005f 	li	a2,95
     1f8:	3c07c248 	lui	a3,0xc248
     1fc:	afa00018 	sw	zero,24(sp)
     200:	afa0001c 	sw	zero,28(sp)
     204:	afa00020 	sw	zero,32(sp)
     208:	afa00024 	sw	zero,36(sp)
     20c:	e7a40014 	swc1	$f4,20(sp)
     210:	0c000000 	jal	0 <BossSst_Init>
     214:	e7b20010 	swc1	$f18,16(sp)
     218:	0c000000 	jal	0 <BossSst_Init>
     21c:	02002025 	move	a0,s0
     220:	10000094 	b	474 <BossSst_Init+0x474>
     224:	8fbf0034 	lw	ra,52(sp)
     228:	c6100028 	lwc1	$f16,40(s0)
     22c:	c6060024 	lwc1	$f6,36(s0)
     230:	44814000 	mtc1	at,$f8
     234:	3c0143c8 	lui	at,0x43c8
     238:	e7b00010 	swc1	$f16,16(sp)
     23c:	c612002c 	lwc1	$f18,44(s0)
     240:	44812000 	mtc1	at,$f4
     244:	46083280 	add.s	$f10,$f6,$f8
     248:	afa00018 	sw	zero,24(sp)
     24c:	8fa4003c 	lw	a0,60(sp)
     250:	46049180 	add.s	$f6,$f18,$f4
     254:	44075000 	mfc1	a3,$f10
     258:	02202825 	move	a1,s1
     25c:	240600e9 	li	a2,233
     260:	e7a60014 	swc1	$f6,20(sp)
     264:	860c00b6 	lh	t4,182(s0)
     268:	afa00024 	sw	zero,36(sp)
     26c:	afa00020 	sw	zero,32(sp)
     270:	0c000000 	jal	0 <BossSst_Init>
     274:	afac001c 	sw	t4,28(sp)
     278:	3c030000 	lui	v1,0x0
     27c:	24630000 	addiu	v1,v1,0
     280:	ac620000 	sw	v0,0(v1)
     284:	c6120028 	lwc1	$f18,40(s0)
     288:	3c01c348 	lui	at,0xc348
     28c:	44815000 	mtc1	at,$f10
     290:	c6080024 	lwc1	$f8,36(s0)
     294:	3c0143c8 	lui	at,0x43c8
     298:	e7b20010 	swc1	$f18,16(sp)
     29c:	c604002c 	lwc1	$f4,44(s0)
     2a0:	44813000 	mtc1	at,$f6
     2a4:	460a4400 	add.s	$f16,$f8,$f10
     2a8:	afa00018 	sw	zero,24(sp)
     2ac:	240e0001 	li	t6,1
     2b0:	46062200 	add.s	$f8,$f4,$f6
     2b4:	44078000 	mfc1	a3,$f16
     2b8:	8fa4003c 	lw	a0,60(sp)
     2bc:	02202825 	move	a1,s1
     2c0:	e7a80014 	swc1	$f8,20(sp)
     2c4:	860d00b6 	lh	t5,182(s0)
     2c8:	afae0024 	sw	t6,36(sp)
     2cc:	afa00020 	sw	zero,32(sp)
     2d0:	240600e9 	li	a2,233
     2d4:	0c000000 	jal	0 <BossSst_Init>
     2d8:	afad001c 	sw	t5,28(sp)
     2dc:	3c030000 	lui	v1,0x0
     2e0:	24630000 	addiu	v1,v1,0
     2e4:	8c780000 	lw	t8,0(v1)
     2e8:	ac620004 	sw	v0,4(v1)
     2ec:	2401fffe 	li	at,-2
     2f0:	af02011c 	sw	v0,284(t8)
     2f4:	8c680004 	lw	t0,4(v1)
     2f8:	8c790000 	lw	t9,0(v1)
     2fc:	3c0b0000 	lui	t3,0x0
     300:	3c0c0000 	lui	t4,0x0
     304:	ad19011c 	sw	t9,284(t0)
     308:	8e090004 	lw	t1,4(s0)
     30c:	256b0000 	addiu	t3,t3,0
     310:	258c0000 	addiu	t4,t4,0
     314:	01215024 	and	t2,t1,at
     318:	ae0a0004 	sw	t2,4(s0)
     31c:	ae0b0130 	sw	t3,304(s0)
     320:	ae0c0134 	sw	t4,308(s0)
     324:	3c010000 	lui	at,0x0
     328:	c42a0000 	lwc1	$f10,0(at)
     32c:	3c01457a 	lui	at,0x457a
     330:	44818000 	mtc1	at,$f16
     334:	02002025 	move	a0,s0
     338:	e60a03c4 	swc1	$f10,964(s0)
     33c:	0c000000 	jal	0 <BossSst_Init>
     340:	e610004c 	swc1	$f16,76(s0)
     344:	02202025 	move	a0,s1
     348:	8fa5003c 	lw	a1,60(sp)
     34c:	02003025 	move	a2,s0
     350:	0c000000 	jal	0 <BossSst_Init>
     354:	24070009 	li	a3,9
     358:	10000046 	b	474 <BossSst_Init+0x474>
     35c:	8fbf0034 	lw	ra,52(sp)
     360:	3c070000 	lui	a3,0x0
     364:	260d03f4 	addiu	t5,s0,1012
     368:	afad0010 	sw	t5,16(sp)
     36c:	24e70000 	addiu	a3,a3,0
     370:	0c000000 	jal	0 <BossSst_Init>
     374:	02003025 	move	a2,s0
     378:	3c070000 	lui	a3,0x0
     37c:	24e70000 	addiu	a3,a3,0
     380:	02202025 	move	a0,s1
     384:	8fa50044 	lw	a1,68(sp)
     388:	0c000000 	jal	0 <BossSst_Init>
     38c:	02003025 	move	a2,s0
     390:	860e001c 	lh	t6,28(s0)
     394:	02202025 	move	a0,s1
     398:	2605014c 	addiu	a1,s0,332
     39c:	15c00017 	bnez	t6,3fc <BossSst_Init+0x3fc>
     3a0:	3c060601 	lui	a2,0x601
     3a4:	3c060600 	lui	a2,0x600
     3a8:	3c070600 	lui	a3,0x600
     3ac:	260f01a8 	addiu	t7,s0,424
     3b0:	261802b6 	addiu	t8,s0,694
     3b4:	2419001b 	li	t9,27
     3b8:	afb90018 	sw	t9,24(sp)
     3bc:	afb80014 	sw	t8,20(sp)
     3c0:	afaf0010 	sw	t7,16(sp)
     3c4:	24e702e8 	addiu	a3,a3,744
     3c8:	24c64de0 	addiu	a2,a2,19936
     3cc:	02202025 	move	a0,s1
     3d0:	0c000000 	jal	0 <BossSst_Init>
     3d4:	2605014c 	addiu	a1,s0,332
     3d8:	8e0303f0 	lw	v1,1008(s0)
     3dc:	2404ffff 	li	a0,-1
     3e0:	a2040194 	sb	a0,404(s0)
     3e4:	8468002c 	lh	t0,44(v1)
     3e8:	01040019 	multu	t0,a0
     3ec:	00004812 	mflo	t1
     3f0:	a469002c 	sh	t1,44(v1)
     3f4:	1000000d 	b	42c <BossSst_Init+0x42c>
     3f8:	00000000 	nop
     3fc:	3c070600 	lui	a3,0x600
     400:	260a01a8 	addiu	t2,s0,424
     404:	260b02b6 	addiu	t3,s0,694
     408:	240c001b 	li	t4,27
     40c:	afac0018 	sw	t4,24(sp)
     410:	afab0014 	sw	t3,20(sp)
     414:	afaa0010 	sw	t2,16(sp)
     418:	24e75860 	addiu	a3,a3,22624
     41c:	0c000000 	jal	0 <BossSst_Init>
     420:	24c6a350 	addiu	a2,a2,-23728
     424:	240d0001 	li	t5,1
     428:	a20d0194 	sb	t5,404(s0)
     42c:	3c060000 	lui	a2,0x0
     430:	24c60000 	addiu	a2,a2,0
     434:	260400b4 	addiu	a0,s0,180
     438:	24050000 	li	a1,0
     43c:	0c000000 	jal	0 <BossSst_Init>
     440:	3c0742be 	lui	a3,0x42be
     444:	240ef254 	li	t6,-3500
     448:	8e0f0004 	lw	t7,4(s0)
     44c:	a60e019e 	sh	t6,414(s0)
     450:	3c010000 	lui	at,0x0
     454:	c4320000 	lwc1	$f18,0(at)
     458:	2401fffe 	li	at,-2
     45c:	01e1c024 	and	t8,t7,at
     460:	ae180004 	sw	t8,4(s0)
     464:	02002025 	move	a0,s0
     468:	0c000000 	jal	0 <BossSst_Init>
     46c:	e612004c 	swc1	$f18,76(s0)
     470:	8fbf0034 	lw	ra,52(sp)
     474:	8fb0002c 	lw	s0,44(sp)
     478:	8fb10030 	lw	s1,48(sp)
     47c:	03e00008 	jr	ra
     480:	27bd0050 	addiu	sp,sp,80

00000484 <BossSst_Destroy>:
     484:	27bdffe8 	addiu	sp,sp,-24
     488:	afa40018 	sw	a0,24(sp)
     48c:	afa5001c 	sw	a1,28(sp)
     490:	00a02025 	move	a0,a1
     494:	8fa50018 	lw	a1,24(sp)
     498:	afbf0014 	sw	ra,20(sp)
     49c:	0c000000 	jal	0 <BossSst_Init>
     4a0:	24a503d4 	addiu	a1,a1,980
     4a4:	8fa50018 	lw	a1,24(sp)
     4a8:	8fa4001c 	lw	a0,28(sp)
     4ac:	0c000000 	jal	0 <BossSst_Init>
     4b0:	24a506b4 	addiu	a1,a1,1716
     4b4:	8fa40018 	lw	a0,24(sp)
     4b8:	0c000000 	jal	0 <BossSst_Init>
     4bc:	248403c8 	addiu	a0,a0,968
     4c0:	8fbf0014 	lw	ra,20(sp)
     4c4:	27bd0018 	addiu	sp,sp,24
     4c8:	03e00008 	jr	ra
     4cc:	00000000 	nop

000004d0 <func_8092CAA0>:
     4d0:	3c020000 	lui	v0,0x0
     4d4:	24420000 	addiu	v0,v0,0
     4d8:	ac800134 	sw	zero,308(a0)
     4dc:	8c4e0000 	lw	t6,0(v0)
     4e0:	3c180000 	lui	t8,0x0
     4e4:	27180000 	addiu	t8,t8,0
     4e8:	adc00134 	sw	zero,308(t6)
     4ec:	8c4f0004 	lw	t7,4(v0)
     4f0:	ade00134 	sw	zero,308(t7)
     4f4:	a0800194 	sb	zero,404(a0)
     4f8:	03e00008 	jr	ra
     4fc:	ac980190 	sw	t8,400(a0)

00000500 <func_8092CAD0>:
     500:	27bdffe8 	addiu	sp,sp,-24
     504:	afbf0014 	sw	ra,20(sp)
     508:	3c01447a 	lui	at,0x447a
     50c:	44813000 	mtc1	at,$f6
     510:	c4840094 	lwc1	$f4,148(a0)
     514:	4606203c 	c.lt.s	$f4,$f6
     518:	00000000 	nop
     51c:	45020004 	bc1fl	530 <func_8092CAD0+0x30>
     520:	8fbf0014 	lw	ra,20(sp)
     524:	0c000000 	jal	0 <BossSst_Init>
     528:	00000000 	nop
     52c:	8fbf0014 	lw	ra,20(sp)
     530:	27bd0018 	addiu	sp,sp,24
     534:	03e00008 	jr	ra
     538:	00000000 	nop

0000053c <func_8092CB0C>:
     53c:	27bdffe0 	addiu	sp,sp,-32
     540:	afbf001c 	sw	ra,28(sp)
     544:	afb10018 	sw	s1,24(sp)
     548:	afb00014 	sw	s0,20(sp)
     54c:	8cb01c44 	lw	s0,7236(a1)
     550:	240e0263 	li	t6,611
     554:	3c030000 	lui	v1,0x0
     558:	a48e0198 	sh	t6,408(a0)
     55c:	a0800195 	sb	zero,405(a0)
     560:	24630000 	addiu	v1,v1,0
     564:	3c01447a 	lui	at,0x447a
     568:	c4640000 	lwc1	$f4,0(v1)
     56c:	44813000 	mtc1	at,$f6
     570:	44800000 	mtc1	zero,$f0
     574:	e6040024 	swc1	$f4,36(s0)
     578:	e6060028 	swc1	$f6,40(s0)
     57c:	c4680008 	lwc1	$f8,8(v1)
     580:	8e0f067c 	lw	t7,1660(s0)
     584:	24028000 	li	v0,-32768
     588:	00803025 	move	a2,a0
     58c:	35f80020 	ori	t8,t7,0x20
     590:	00a08825 	move	s1,a1
     594:	00a02025 	move	a0,a1
     598:	a60200b6 	sh	v0,182(s0)
     59c:	a602083e 	sh	v0,2110(s0)
     5a0:	a602083c 	sh	v0,2108(s0)
     5a4:	a6000894 	sh	zero,2196(s0)
     5a8:	ae18067c 	sw	t8,1660(s0)
     5ac:	e6000838 	swc1	$f0,2104(s0)
     5b0:	e6000060 	swc1	$f0,96(s0)
     5b4:	e608002c 	swc1	$f8,44(s0)
     5b8:	afa60020 	sw	a2,32(sp)
     5bc:	0c000000 	jal	0 <BossSst_Init>
     5c0:	24a51d64 	addiu	a1,a1,7524
     5c4:	02202025 	move	a0,s1
     5c8:	8fa50020 	lw	a1,32(sp)
     5cc:	0c000000 	jal	0 <BossSst_Init>
     5d0:	24060008 	li	a2,8
     5d4:	0c000000 	jal	0 <BossSst_Init>
     5d8:	02202025 	move	a0,s1
     5dc:	3c010000 	lui	at,0x0
     5e0:	a4220000 	sh	v0,0(at)
     5e4:	02202025 	move	a0,s1
     5e8:	00002825 	move	a1,zero
     5ec:	0c000000 	jal	0 <BossSst_Init>
     5f0:	24060001 	li	a2,1
     5f4:	3c050000 	lui	a1,0x0
     5f8:	84a50000 	lh	a1,0(a1)
     5fc:	02202025 	move	a0,s1
     600:	0c000000 	jal	0 <BossSst_Init>
     604:	24060007 	li	a2,7
     608:	3c040000 	lui	a0,0x0
     60c:	24840000 	addiu	a0,a0,0
     610:	0c000000 	jal	0 <BossSst_Init>
     614:	26050024 	addiu	a1,s0,36
     618:	3c190000 	lui	t9,0x0
     61c:	97390ee2 	lhu	t9,3810(t9)
     620:	02202025 	move	a0,s1
     624:	3c050000 	lui	a1,0x0
     628:	33280080 	andi	t0,t9,0x80
     62c:	11000005 	beqz	t0,644 <func_8092CB0C+0x108>
     630:	3c060000 	lui	a2,0x0
     634:	3c01c2c8 	lui	at,0xc2c8
     638:	44815000 	mtc1	at,$f10
     63c:	3c010000 	lui	at,0x0
     640:	e42a0000 	swc1	$f10,0(at)
     644:	3c070000 	lui	a3,0x0
     648:	24e70000 	addiu	a3,a3,0
     64c:	84a50000 	lh	a1,0(a1)
     650:	0c000000 	jal	0 <BossSst_Init>
     654:	24c60000 	addiu	a2,a2,0
     658:	3c041001 	lui	a0,0x1001
     65c:	0c000000 	jal	0 <BossSst_Init>
     660:	348400ff 	ori	a0,a0,0xff
     664:	8faa0020 	lw	t2,32(sp)
     668:	3c090000 	lui	t1,0x0
     66c:	25290000 	addiu	t1,t1,0
     670:	ad490190 	sw	t1,400(t2)
     674:	8fbf001c 	lw	ra,28(sp)
     678:	8fb10018 	lw	s1,24(sp)
     67c:	8fb00014 	lw	s0,20(sp)
     680:	03e00008 	jr	ra
     684:	27bd0020 	addiu	sp,sp,32

00000688 <func_8092CC58>:
     688:	27bdffb0 	addiu	sp,sp,-80
     68c:	afbf0034 	sw	ra,52(sp)
     690:	afb20030 	sw	s2,48(sp)
     694:	afb1002c 	sw	s1,44(sp)
     698:	afb00028 	sw	s0,40(sp)
     69c:	afa50054 	sw	a1,84(sp)
     6a0:	84860198 	lh	a2,408(a0)
     6a4:	00809025 	move	s2,a0
     6a8:	8ca71c44 	lw	a3,7236(a1)
     6ac:	10c00002 	beqz	a2,6b8 <func_8092CC58+0x30>
     6b0:	24cfffff 	addiu	t7,a2,-1
     6b4:	a48f0198 	sh	t7,408(a0)
     6b8:	2644014c 	addiu	a0,s2,332
     6bc:	afa40038 	sw	a0,56(sp)
     6c0:	0c000000 	jal	0 <BossSst_Init>
     6c4:	afa7004c 	sw	a3,76(sp)
     6c8:	10400008 	beqz	v0,6ec <func_8092CC58+0x64>
     6cc:	8fa7004c 	lw	a3,76(sp)
     6d0:	3c050601 	lui	a1,0x601
     6d4:	24a5dc2c 	addiu	a1,a1,-9172
     6d8:	8fa40038 	lw	a0,56(sp)
     6dc:	3c06c040 	lui	a2,0xc040
     6e0:	0c000000 	jal	0 <BossSst_Init>
     6e4:	afa7004c 	sw	a3,76(sp)
     6e8:	8fa7004c 	lw	a3,76(sp)
     6ec:	86460198 	lh	a2,408(s2)
     6f0:	54c00054 	bnezl	a2,844 <func_8092CC58+0x1bc>
     6f4:	28c10222 	slti	at,a2,546
     6f8:	3c060000 	lui	a2,0x0
     6fc:	24c60000 	addiu	a2,a2,0
     700:	8cc20004 	lw	v0,4(a2)
     704:	8fa40054 	lw	a0,84(sp)
     708:	2401ffdf 	li	at,-33
     70c:	8c580004 	lw	t8,4(v0)
     710:	24851d64 	addiu	a1,a0,7524
     714:	37190001 	ori	t9,t8,0x1
     718:	ac590004 	sw	t9,4(v0)
     71c:	8cc30000 	lw	v1,0(a2)
     720:	8c6a0004 	lw	t2,4(v1)
     724:	354b0001 	ori	t3,t2,0x1
     728:	ac6b0004 	sw	t3,4(v1)
     72c:	8cec067c 	lw	t4,1660(a3)
     730:	01816824 	and	t5,t4,at
     734:	0c000000 	jal	0 <BossSst_Init>
     738:	aced067c 	sw	t5,1660(a3)
     73c:	8fa40054 	lw	a0,84(sp)
     740:	02402825 	move	a1,s2
     744:	0c000000 	jal	0 <BossSst_Init>
     748:	24060007 	li	a2,7
     74c:	3c110000 	lui	s1,0x0
     750:	3c0141f0 	lui	at,0x41f0
     754:	44813000 	mtc1	at,$f6
     758:	26310000 	addiu	s1,s1,0
     75c:	3c014396 	lui	at,0x4396
     760:	c6240004 	lwc1	$f4,4(s1)
     764:	44818000 	mtc1	at,$f16
     768:	c62a0008 	lwc1	$f10,8(s1)
     76c:	46062200 	add.s	$f8,$f4,$f6
     770:	3c100000 	lui	s0,0x0
     774:	26100000 	addiu	s0,s0,0
     778:	46105480 	add.s	$f18,$f10,$f16
     77c:	e6280004 	swc1	$f8,4(s1)
     780:	3c050000 	lui	a1,0x0
     784:	02003825 	move	a3,s0
     788:	e6320008 	swc1	$f18,8(s1)
     78c:	84a50000 	lh	a1,0(a1)
     790:	02203025 	move	a2,s1
     794:	0c000000 	jal	0 <BossSst_Init>
     798:	8fa40054 	lw	a0,84(sp)
     79c:	3c060000 	lui	a2,0x0
     7a0:	84c60000 	lh	a2,0(a2)
     7a4:	8fa40054 	lw	a0,84(sp)
     7a8:	0c000000 	jal	0 <BossSst_Init>
     7ac:	00002825 	move	a1,zero
     7b0:	3c050000 	lui	a1,0x0
     7b4:	84a50000 	lh	a1,0(a1)
     7b8:	8fa40054 	lw	a0,84(sp)
     7bc:	0c000000 	jal	0 <BossSst_Init>
     7c0:	24060001 	li	a2,1
     7c4:	8fa40054 	lw	a0,84(sp)
     7c8:	00002825 	move	a1,zero
     7cc:	0c000000 	jal	0 <BossSst_Init>
     7d0:	24060007 	li	a2,7
     7d4:	3c050000 	lui	a1,0x0
     7d8:	84a50000 	lh	a1,0(a1)
     7dc:	0c000000 	jal	0 <BossSst_Init>
     7e0:	8fa40054 	lw	a0,84(sp)
     7e4:	3c050000 	lui	a1,0x0
     7e8:	24a50000 	addiu	a1,a1,0
     7ec:	94ae0ee2 	lhu	t6,3810(a1)
     7f0:	02402025 	move	a0,s2
     7f4:	35cf0080 	ori	t7,t6,0x80
     7f8:	0c000000 	jal	0 <BossSst_Init>
     7fc:	a4af0ee2 	sh	t7,3810(a1)
     800:	925803e6 	lbu	t8,998(s2)
     804:	3c040000 	lui	a0,0x0
     808:	24840000 	addiu	a0,a0,0
     80c:	37190001 	ori	t9,t8,0x1
     810:	a25903e6 	sb	t9,998(s2)
     814:	8c830000 	lw	v1,0(a0)
     818:	240e0070 	li	t6,112
     81c:	906a03e6 	lbu	t2,998(v1)
     820:	354b0001 	ori	t3,t2,0x1
     824:	a06b03e6 	sb	t3,998(v1)
     828:	8c820004 	lw	v0,4(a0)
     82c:	904c03e6 	lbu	t4,998(v0)
     830:	358d0001 	ori	t5,t4,0x1
     834:	a04d03e6 	sb	t5,998(v0)
     838:	10000308 	b	145c <func_8092CC58+0xdd4>
     83c:	a64e0198 	sh	t6,408(s2)
     840:	28c10222 	slti	at,a2,546
     844:	1420004f 	bnez	at,984 <func_8092CC58+0x2fc>
     848:	3c0142c8 	lui	at,0x42c8
     84c:	44812000 	mtc1	at,$f4
     850:	c4e60028 	lwc1	$f6,40(a3)
     854:	3c110000 	lui	s1,0x0
     858:	3c030000 	lui	v1,0x0
     85c:	4606203c 	c.lt.s	$f4,$f6
     860:	26310000 	addiu	s1,s1,0
     864:	24630000 	addiu	v1,v1,0
     868:	02202025 	move	a0,s1
     86c:	4500000b 	bc1f	89c <func_8092CC58+0x214>
     870:	24e50024 	addiu	a1,a3,36
     874:	c4680000 	lwc1	$f8,0(v1)
     878:	44808000 	mtc1	zero,$f16
     87c:	24028000 	li	v0,-32768
     880:	e4e80024 	swc1	$f8,36(a3)
     884:	c46a0008 	lwc1	$f10,8(v1)
     888:	a4e200b6 	sh	v0,182(a3)
     88c:	a4e2083e 	sh	v0,2110(a3)
     890:	a4e2083c 	sh	v0,2108(a3)
     894:	e4f00838 	swc1	$f16,2104(a3)
     898:	e4ea002c 	swc1	$f10,44(a3)
     89c:	0c000000 	jal	0 <BossSst_Init>
     8a0:	afa7004c 	sw	a3,76(sp)
     8a4:	8fa7004c 	lw	a3,76(sp)
     8a8:	44800000 	mtc1	zero,$f0
     8ac:	3c100000 	lui	s0,0x0
     8b0:	94ef0088 	lhu	t7,136(a3)
     8b4:	31f80002 	andi	t8,t7,0x2
     8b8:	13000030 	beqz	t8,97c <func_8092CC58+0x2f4>
     8bc:	00000000 	nop
     8c0:	82590195 	lb	t9,405(s2)
     8c4:	3c050000 	lui	a1,0x0
     8c8:	24020001 	li	v0,1
     8cc:	17200011 	bnez	t9,914 <func_8092CC58+0x28c>
     8d0:	24a50000 	addiu	a1,a1,0
     8d4:	3c100000 	lui	s0,0x0
     8d8:	26100000 	addiu	s0,s0,0
     8dc:	8e0a0000 	lw	t2,0(s0)
     8e0:	240500ff 	li	a1,255
     8e4:	24060014 	li	a2,20
     8e8:	a542001c 	sh	v0,28(t2)
     8ec:	a2420195 	sb	v0,405(s2)
     8f0:	c64c008c 	lwc1	$f12,140(s2)
     8f4:	0c000000 	jal	0 <BossSst_Init>
     8f8:	24070096 	li	a3,150
     8fc:	8e040000 	lw	a0,0(s0)
     900:	0c000000 	jal	0 <BossSst_Init>
     904:	24053951 	li	a1,14673
     908:	3c100000 	lui	s0,0x0
     90c:	100002d3 	b	145c <func_8092CC58+0xdd4>
     910:	26100000 	addiu	s0,s0,0
     914:	94ab0ee2 	lhu	t3,3810(a1)
     918:	3c020000 	lui	v0,0x0
     91c:	24420000 	addiu	v0,v0,0
     920:	316c0080 	andi	t4,t3,0x80
     924:	11800014 	beqz	t4,978 <func_8092CC58+0x2f0>
     928:	24190222 	li	t9,546
     92c:	3c0d0000 	lui	t5,0x0
     930:	8dad0000 	lw	t5,0(t5)
     934:	3c0e0000 	lui	t6,0x0
     938:	3c0f0000 	lui	t7,0x0
     93c:	ada20134 	sw	v0,308(t5)
     940:	8dce0000 	lw	t6,0(t6)
     944:	25ef0000 	addiu	t7,t7,0
     948:	241800b2 	li	t8,178
     94c:	adc20134 	sw	v0,308(t6)
     950:	3c01c292 	lui	at,0xc292
     954:	44819000 	mtc1	at,$f18
     958:	ae4f0134 	sw	t7,308(s2)
     95c:	a6580198 	sh	t8,408(s2)
     960:	3c100000 	lui	s0,0x0
     964:	e6200004 	swc1	$f0,4(s1)
     968:	e6200008 	swc1	$f0,8(s1)
     96c:	26100000 	addiu	s0,s0,0
     970:	100002ba 	b	145c <func_8092CC58+0xdd4>
     974:	e6320000 	swc1	$f18,0(s1)
     978:	a6590198 	sh	t9,408(s2)
     97c:	100002b7 	b	145c <func_8092CC58+0xdd4>
     980:	26100000 	addiu	s0,s0,0
     984:	28c101de 	slti	at,a2,478
     988:	14200010 	bnez	at,9cc <func_8092CC58+0x344>
     98c:	3c100000 	lui	s0,0x0
     990:	26100000 	addiu	s0,s0,0
     994:	3c014120 	lui	at,0x4120
     998:	44810000 	mtc1	at,$f0
     99c:	c6040000 	lwc1	$f4,0(s0)
     9a0:	c6080004 	lwc1	$f8,4(s0)
     9a4:	c6100008 	lwc1	$f16,8(s0)
     9a8:	46002180 	add.s	$f6,$f4,$f0
     9ac:	3c110000 	lui	s1,0x0
     9b0:	26310000 	addiu	s1,s1,0
     9b4:	46004280 	add.s	$f10,$f8,$f0
     9b8:	e6060000 	swc1	$f6,0(s0)
     9bc:	46008481 	sub.s	$f18,$f16,$f0
     9c0:	e60a0004 	swc1	$f10,4(s0)
     9c4:	100002a5 	b	145c <func_8092CC58+0xdd4>
     9c8:	e6120008 	swc1	$f18,8(s0)
     9cc:	28c101c0 	slti	at,a2,448
     9d0:	14200051 	bnez	at,b18 <func_8092CC58+0x490>
     9d4:	241001cc 	li	s0,460
     9d8:	16060015 	bne	s0,a2,a30 <func_8092CC58+0x3a8>
     9dc:	3c030000 	lui	v1,0x0
     9e0:	3c0a0000 	lui	t2,0x0
     9e4:	8d4a0000 	lw	t2,0(t2)
     9e8:	3c020000 	lui	v0,0x0
     9ec:	24420000 	addiu	v0,v0,0
     9f0:	3c0b0000 	lui	t3,0x0
     9f4:	ad420134 	sw	v0,308(t2)
     9f8:	8d6b0000 	lw	t3,0(t3)
     9fc:	3c0c0000 	lui	t4,0x0
     a00:	258c0000 	addiu	t4,t4,0
     a04:	ad620134 	sw	v0,308(t3)
     a08:	24630000 	addiu	v1,v1,0
     a0c:	ae4c0134 	sw	t4,308(s2)
     a10:	c4640000 	lwc1	$f4,0(v1)
     a14:	3c040000 	lui	a0,0x0
     a18:	e4e40024 	swc1	$f4,36(a3)
     a1c:	c4660008 	lwc1	$f6,8(v1)
     a20:	e4e6002c 	swc1	$f6,44(a3)
     a24:	0c000000 	jal	0 <BossSst_Init>
     a28:	8c840000 	lw	a0,0(a0)
     a2c:	86460198 	lh	a2,408(s2)
     a30:	28c101cd 	slti	at,a2,461
     a34:	14200011 	bnez	at,a7c <func_8092CC58+0x3f4>
     a38:	00000000 	nop
     a3c:	3c100000 	lui	s0,0x0
     a40:	26100000 	addiu	s0,s0,0
     a44:	3c014220 	lui	at,0x4220
     a48:	44811000 	mtc1	at,$f2
     a4c:	c6080000 	lwc1	$f8,0(s0)
     a50:	3c0141a0 	lui	at,0x41a0
     a54:	c6100004 	lwc1	$f16,4(s0)
     a58:	44813000 	mtc1	at,$f6
     a5c:	c6040008 	lwc1	$f4,8(s0)
     a60:	46024281 	sub.s	$f10,$f8,$f2
     a64:	46028481 	sub.s	$f18,$f16,$f2
     a68:	e60a0000 	swc1	$f10,0(s0)
     a6c:	46062200 	add.s	$f8,$f4,$f6
     a70:	e6120004 	swc1	$f18,4(s0)
     a74:	10000023 	b	b04 <func_8092CC58+0x47c>
     a78:	e6080008 	swc1	$f8,8(s0)
     a7c:	16060021 	bne	s0,a2,b04 <func_8092CC58+0x47c>
     a80:	3c020000 	lui	v0,0x0
     a84:	8c420000 	lw	v0,0(v0)
     a88:	3c110000 	lui	s1,0x0
     a8c:	3c014120 	lui	at,0x4120
     a90:	c44a0008 	lwc1	$f10,8(v0)
     a94:	44810000 	mtc1	at,$f0
     a98:	26310000 	addiu	s1,s1,0
     a9c:	3c0141a0 	lui	at,0x41a0
     aa0:	e62a0000 	swc1	$f10,0(s1)
     aa4:	44819000 	mtc1	at,$f18
     aa8:	c450000c 	lwc1	$f16,12(v0)
     aac:	3c014316 	lui	at,0x4316
     ab0:	3c100000 	lui	s0,0x0
     ab4:	46128101 	sub.s	$f4,$f16,$f18
     ab8:	44818000 	mtc1	at,$f16
     abc:	26100000 	addiu	s0,s0,0
     ac0:	3c0142c8 	lui	at,0x42c8
     ac4:	e6240004 	swc1	$f4,4(s1)
     ac8:	c4460010 	lwc1	$f6,16(v0)
     acc:	46003200 	add.s	$f8,$f6,$f0
     ad0:	44813000 	mtc1	at,$f6
     ad4:	3c0142a0 	lui	at,0x42a0
     ad8:	e6280008 	swc1	$f8,8(s1)
     adc:	c44a0008 	lwc1	$f10,8(v0)
     ae0:	46105480 	add.s	$f18,$f10,$f16
     ae4:	44818000 	mtc1	at,$f16
     ae8:	e6120000 	swc1	$f18,0(s0)
     aec:	c444000c 	lwc1	$f4,12(v0)
     af0:	46062200 	add.s	$f8,$f4,$f6
     af4:	e6080004 	swc1	$f8,4(s0)
     af8:	c44a0010 	lwc1	$f10,16(v0)
     afc:	46105480 	add.s	$f18,$f10,$f16
     b00:	e6120008 	swc1	$f18,8(s0)
     b04:	3c100000 	lui	s0,0x0
     b08:	3c110000 	lui	s1,0x0
     b0c:	26310000 	addiu	s1,s1,0
     b10:	10000252 	b	145c <func_8092CC58+0xdd4>
     b14:	26100000 	addiu	s0,s0,0
     b18:	28c10174 	slti	at,a2,372
     b1c:	14200068 	bnez	at,cc0 <func_8092CC58+0x638>
     b20:	240101bf 	li	at,447
     b24:	24c8fe8c 	addiu	t0,a2,-372
     b28:	14c10016 	bne	a2,at,b84 <func_8092CC58+0x4fc>
     b2c:	24090006 	li	t1,6
     b30:	8cee0024 	lw	t6,36(a3)
     b34:	3c110000 	lui	s1,0x0
     b38:	26310000 	addiu	s1,s1,0
     b3c:	ae2e0000 	sw	t6,0(s1)
     b40:	8ced0028 	lw	t5,40(a3)
     b44:	3c01c37a 	lui	at,0xc37a
     b48:	44812000 	mtc1	at,$f4
     b4c:	3c014320 	lui	at,0x4320
     b50:	44813000 	mtc1	at,$f6
     b54:	ae2d0004 	sw	t5,4(s1)
     b58:	8cee002c 	lw	t6,44(a3)
     b5c:	3c100000 	lui	s0,0x0
     b60:	3c01c33e 	lui	at,0xc33e
     b64:	44814000 	mtc1	at,$f8
     b68:	26100000 	addiu	s0,s0,0
     b6c:	e6040000 	swc1	$f4,0(s0)
     b70:	e6060004 	swc1	$f6,4(s0)
     b74:	ae2e0008 	sw	t6,8(s1)
     b78:	e6080008 	swc1	$f8,8(s0)
     b7c:	1000004b 	b	cac <func_8092CC58+0x624>
     b80:	86460198 	lh	a2,408(s2)
     b84:	2401000b 	li	at,11
     b88:	15010023 	bne	t0,at,c18 <func_8092CC58+0x590>
     b8c:	3c020000 	lui	v0,0x0
     b90:	8c420000 	lw	v0,0(v0)
     b94:	3c014120 	lui	at,0x4120
     b98:	44810000 	mtc1	at,$f0
     b9c:	3c0141f0 	lui	at,0x41f0
     ba0:	44818000 	mtc1	at,$f16
     ba4:	c44a0008 	lwc1	$f10,8(v0)
     ba8:	3c110000 	lui	s1,0x0
     bac:	26310000 	addiu	s1,s1,0
     bb0:	46105480 	add.s	$f18,$f10,$f16
     bb4:	3c0141a0 	lui	at,0x41a0
     bb8:	44814000 	mtc1	at,$f8
     bbc:	3c0142c8 	lui	at,0x42c8
     bc0:	e6320000 	swc1	$f18,0(s1)
     bc4:	c444000c 	lwc1	$f4,12(v0)
     bc8:	44819000 	mtc1	at,$f18
     bcc:	3c100000 	lui	s0,0x0
     bd0:	e6240004 	swc1	$f4,4(s1)
     bd4:	c4460010 	lwc1	$f6,16(v0)
     bd8:	26100000 	addiu	s0,s0,0
     bdc:	3c014352 	lui	at,0x4352
     be0:	46083280 	add.s	$f10,$f6,$f8
     be4:	e62a0008 	swc1	$f10,8(s1)
     be8:	c4500008 	lwc1	$f16,8(v0)
     bec:	46128100 	add.s	$f4,$f16,$f18
     bf0:	44818000 	mtc1	at,$f16
     bf4:	e6040000 	swc1	$f4,0(s0)
     bf8:	c446000c 	lwc1	$f6,12(v0)
     bfc:	46003200 	add.s	$f8,$f6,$f0
     c00:	e6080004 	swc1	$f8,4(s0)
     c04:	c44a0010 	lwc1	$f10,16(v0)
     c08:	46105481 	sub.s	$f18,$f10,$f16
     c0c:	e6120008 	swc1	$f18,8(s0)
     c10:	10000026 	b	cac <func_8092CC58+0x624>
     c14:	86460198 	lh	a2,408(s2)
     c18:	2401003e 	li	at,62
     c1c:	15010023 	bne	t0,at,cac <func_8092CC58+0x624>
     c20:	00000000 	nop
     c24:	3c030000 	lui	v1,0x0
     c28:	8c630000 	lw	v1,0(v1)
     c2c:	3c110000 	lui	s1,0x0
     c30:	26310000 	addiu	s1,s1,0
     c34:	c4640008 	lwc1	$f4,8(v1)
     c38:	3c014248 	lui	at,0x4248
     c3c:	44814000 	mtc1	at,$f8
     c40:	e6240000 	swc1	$f4,0(s1)
     c44:	c466000c 	lwc1	$f6,12(v1)
     c48:	3c0142c8 	lui	at,0x42c8
     c4c:	44819000 	mtc1	at,$f18
     c50:	46083280 	add.s	$f10,$f6,$f8
     c54:	3c0142dc 	lui	at,0x42dc
     c58:	44814000 	mtc1	at,$f8
     c5c:	3c100000 	lui	s0,0x0
     c60:	e62a0004 	swc1	$f10,4(s1)
     c64:	c4700010 	lwc1	$f16,16(v1)
     c68:	26100000 	addiu	s0,s0,0
     c6c:	3c014334 	lui	at,0x4334
     c70:	46128100 	add.s	$f4,$f16,$f18
     c74:	44819000 	mtc1	at,$f18
     c78:	3c01428c 	lui	at,0x428c
     c7c:	e6240008 	swc1	$f4,8(s1)
     c80:	c4660008 	lwc1	$f6,8(v1)
     c84:	46083280 	add.s	$f10,$f6,$f8
     c88:	44814000 	mtc1	at,$f8
     c8c:	e60a0000 	swc1	$f10,0(s0)
     c90:	c470000c 	lwc1	$f16,12(v1)
     c94:	46128100 	add.s	$f4,$f16,$f18
     c98:	e6040004 	swc1	$f4,4(s0)
     c9c:	c4660010 	lwc1	$f6,16(v1)
     ca0:	46083281 	sub.s	$f10,$f6,$f8
     ca4:	e60a0008 	swc1	$f10,8(s0)
     ca8:	86460198 	lh	a2,408(s2)
     cac:	3c100000 	lui	s0,0x0
     cb0:	3c110000 	lui	s1,0x0
     cb4:	26310000 	addiu	s1,s1,0
     cb8:	10000116 	b	1114 <func_8092CC58+0xa8c>
     cbc:	26100000 	addiu	s0,s0,0
     cc0:	28c10130 	slti	at,a2,304
     cc4:	1420004f 	bnez	at,e04 <func_8092CC58+0x77c>
     cc8:	24c8fed0 	addiu	t0,a2,-304
     ccc:	2401000b 	li	at,11
     cd0:	15010025 	bne	t0,at,d68 <func_8092CC58+0x6e0>
     cd4:	24090005 	li	t1,5
     cd8:	3c020000 	lui	v0,0x0
     cdc:	8c420000 	lw	v0,0(v0)
     ce0:	3c014220 	lui	at,0x4220
     ce4:	44811000 	mtc1	at,$f2
     ce8:	c4500008 	lwc1	$f16,8(v0)
     cec:	3c110000 	lui	s1,0x0
     cf0:	26310000 	addiu	s1,s1,0
     cf4:	46028480 	add.s	$f18,$f16,$f2
     cf8:	3c0142b4 	lui	at,0x42b4
     cfc:	44813000 	mtc1	at,$f6
     d00:	3c0141a0 	lui	at,0x41a0
     d04:	e6320000 	swc1	$f18,0(s1)
     d08:	c444000c 	lwc1	$f4,12(v0)
     d0c:	3c100000 	lui	s0,0x0
     d10:	26100000 	addiu	s0,s0,0
     d14:	46062201 	sub.s	$f8,$f4,$f6
     d18:	44812000 	mtc1	at,$f4
     d1c:	3c014352 	lui	at,0x4352
     d20:	e6280004 	swc1	$f8,4(s1)
     d24:	c44a0010 	lwc1	$f10,16(v0)
     d28:	46025401 	sub.s	$f16,$f10,$f2
     d2c:	44815000 	mtc1	at,$f10
     d30:	3c01432a 	lui	at,0x432a
     d34:	e6300008 	swc1	$f16,8(s1)
     d38:	c4520008 	lwc1	$f18,8(v0)
     d3c:	46049181 	sub.s	$f6,$f18,$f4
     d40:	44812000 	mtc1	at,$f4
     d44:	e6060000 	swc1	$f6,0(s0)
     d48:	c448000c 	lwc1	$f8,12(v0)
     d4c:	460a4400 	add.s	$f16,$f8,$f10
     d50:	e6100004 	swc1	$f16,4(s0)
     d54:	c4520010 	lwc1	$f18,16(v0)
     d58:	46049180 	add.s	$f6,$f18,$f4
     d5c:	e6060008 	swc1	$f6,8(s0)
     d60:	10000023 	b	df0 <func_8092CC58+0x768>
     d64:	86460198 	lh	a2,408(s2)
     d68:	24010170 	li	at,368
     d6c:	14c10020 	bne	a2,at,df0 <func_8092CC58+0x768>
     d70:	00000000 	nop
     d74:	3c030000 	lui	v1,0x0
     d78:	8c630000 	lw	v1,0(v1)
     d7c:	3c0141a0 	lui	at,0x41a0
     d80:	44815000 	mtc1	at,$f10
     d84:	c4680008 	lwc1	$f8,8(v1)
     d88:	3c110000 	lui	s1,0x0
     d8c:	26310000 	addiu	s1,s1,0
     d90:	460a4401 	sub.s	$f16,$f8,$f10
     d94:	3c01428c 	lui	at,0x428c
     d98:	44814000 	mtc1	at,$f8
     d9c:	3c100000 	lui	s0,0x0
     da0:	e6300000 	swc1	$f16,0(s1)
     da4:	c472000c 	lwc1	$f18,12(v1)
     da8:	26100000 	addiu	s0,s0,0
     dac:	3c01432a 	lui	at,0x432a
     db0:	e6320004 	swc1	$f18,4(s1)
     db4:	c4640010 	lwc1	$f4,16(v1)
     db8:	44819000 	mtc1	at,$f18
     dbc:	3c014316 	lui	at,0x4316
     dc0:	e6240008 	swc1	$f4,8(s1)
     dc4:	c4660008 	lwc1	$f6,8(v1)
     dc8:	46083281 	sub.s	$f10,$f6,$f8
     dcc:	44814000 	mtc1	at,$f8
     dd0:	e60a0000 	swc1	$f10,0(s0)
     dd4:	c470000c 	lwc1	$f16,12(v1)
     dd8:	46128100 	add.s	$f4,$f16,$f18
     ddc:	e6040004 	swc1	$f4,4(s0)
     de0:	c4660010 	lwc1	$f6,16(v1)
     de4:	46083280 	add.s	$f10,$f6,$f8
     de8:	e60a0008 	swc1	$f10,8(s0)
     dec:	86460198 	lh	a2,408(s2)
     df0:	3c100000 	lui	s0,0x0
     df4:	3c110000 	lui	s1,0x0
     df8:	26310000 	addiu	s1,s1,0
     dfc:	100000c5 	b	1114 <func_8092CC58+0xa8c>
     e00:	26100000 	addiu	s0,s0,0
     e04:	28c100f4 	slti	at,a2,244
     e08:	14200055 	bnez	at,f60 <func_8092CC58+0x8d8>
     e0c:	24c8ff0c 	addiu	t0,a2,-244
     e10:	2401000b 	li	at,11
     e14:	15010027 	bne	t0,at,eb4 <func_8092CC58+0x82c>
     e18:	24090004 	li	t1,4
     e1c:	3c014120 	lui	at,0x4120
     e20:	44810000 	mtc1	at,$f0
     e24:	3c020000 	lui	v0,0x0
     e28:	8c420000 	lw	v0,0(v0)
     e2c:	3c014220 	lui	at,0x4220
     e30:	44811000 	mtc1	at,$f2
     e34:	3c0141f0 	lui	at,0x41f0
     e38:	44819000 	mtc1	at,$f18
     e3c:	c4500008 	lwc1	$f16,8(v0)
     e40:	3c110000 	lui	s1,0x0
     e44:	26310000 	addiu	s1,s1,0
     e48:	46128100 	add.s	$f4,$f16,$f18
     e4c:	3c01428c 	lui	at,0x428c
     e50:	44814000 	mtc1	at,$f8
     e54:	3c0142dc 	lui	at,0x42dc
     e58:	e6240000 	swc1	$f4,0(s1)
     e5c:	c446000c 	lwc1	$f6,12(v0)
     e60:	3c100000 	lui	s0,0x0
     e64:	26100000 	addiu	s0,s0,0
     e68:	46083280 	add.s	$f10,$f6,$f8
     e6c:	44813000 	mtc1	at,$f6
     e70:	3c01430c 	lui	at,0x430c
     e74:	e62a0004 	swc1	$f10,4(s1)
     e78:	c4500010 	lwc1	$f16,16(v0)
     e7c:	46028480 	add.s	$f18,$f16,$f2
     e80:	44818000 	mtc1	at,$f16
     e84:	e6320008 	swc1	$f18,8(s1)
     e88:	c4440008 	lwc1	$f4,8(v0)
     e8c:	46062200 	add.s	$f8,$f4,$f6
     e90:	e6080000 	swc1	$f8,0(s0)
     e94:	c44a000c 	lwc1	$f10,12(v0)
     e98:	46105481 	sub.s	$f18,$f10,$f16
     e9c:	e6120004 	swc1	$f18,4(s0)
     ea0:	c4440010 	lwc1	$f4,16(v0)
     ea4:	46002181 	sub.s	$f6,$f4,$f0
     ea8:	e6060008 	swc1	$f6,8(s0)
     eac:	10000027 	b	f4c <func_8092CC58+0x8c4>
     eb0:	86460198 	lh	a2,408(s2)
     eb4:	2401012c 	li	at,300
     eb8:	14c10024 	bne	a2,at,f4c <func_8092CC58+0x8c4>
     ebc:	00000000 	nop
     ec0:	3c030000 	lui	v1,0x0
     ec4:	8c630000 	lw	v1,0(v1)
     ec8:	3c014302 	lui	at,0x4302
     ecc:	44810000 	mtc1	at,$f0
     ed0:	3c0141a0 	lui	at,0x41a0
     ed4:	44815000 	mtc1	at,$f10
     ed8:	c4680008 	lwc1	$f8,8(v1)
     edc:	3c110000 	lui	s1,0x0
     ee0:	26310000 	addiu	s1,s1,0
     ee4:	460a4401 	sub.s	$f16,$f8,$f10
     ee8:	3c0142a0 	lui	at,0x42a0
     eec:	44812000 	mtc1	at,$f4
     ef0:	3c0143a0 	lui	at,0x43a0
     ef4:	e6300000 	swc1	$f16,0(s1)
     ef8:	c472000c 	lwc1	$f18,12(v1)
     efc:	44815000 	mtc1	at,$f10
     f00:	3c100000 	lui	s0,0x0
     f04:	46049181 	sub.s	$f6,$f18,$f4
     f08:	26100000 	addiu	s0,s0,0
     f0c:	3c014316 	lui	at,0x4316
     f10:	e6260004 	swc1	$f6,4(s1)
     f14:	c4680010 	lwc1	$f8,16(v1)
     f18:	460a4400 	add.s	$f16,$f8,$f10
     f1c:	e6300008 	swc1	$f16,8(s1)
     f20:	c4720008 	lwc1	$f18,8(v1)
     f24:	44818000 	mtc1	at,$f16
     f28:	46009101 	sub.s	$f4,$f18,$f0
     f2c:	e6040000 	swc1	$f4,0(s0)
     f30:	c466000c 	lwc1	$f6,12(v1)
     f34:	46003200 	add.s	$f8,$f6,$f0
     f38:	e6080004 	swc1	$f8,4(s0)
     f3c:	c46a0010 	lwc1	$f10,16(v1)
     f40:	46105481 	sub.s	$f18,$f10,$f16
     f44:	e6120008 	swc1	$f18,8(s0)
     f48:	86460198 	lh	a2,408(s2)
     f4c:	3c100000 	lui	s0,0x0
     f50:	3c110000 	lui	s1,0x0
     f54:	26310000 	addiu	s1,s1,0
     f58:	1000006e 	b	1114 <func_8092CC58+0xa8c>
     f5c:	26100000 	addiu	s0,s0,0
     f60:	28c100c0 	slti	at,a2,192
     f64:	14200051 	bnez	at,10ac <func_8092CC58+0xa24>
     f68:	240100f0 	li	at,240
     f6c:	24c8ff40 	addiu	t0,a2,-192
     f70:	14c10027 	bne	a2,at,1010 <func_8092CC58+0x988>
     f74:	24090003 	li	t1,3
     f78:	3c014302 	lui	at,0x4302
     f7c:	44810000 	mtc1	at,$f0
     f80:	3c030000 	lui	v1,0x0
     f84:	8c630000 	lw	v1,0(v1)
     f88:	3c014220 	lui	at,0x4220
     f8c:	44811000 	mtc1	at,$f2
     f90:	3c01433e 	lui	at,0x433e
     f94:	44813000 	mtc1	at,$f6
     f98:	c4640008 	lwc1	$f4,8(v1)
     f9c:	3c110000 	lui	s1,0x0
     fa0:	26310000 	addiu	s1,s1,0
     fa4:	46062201 	sub.s	$f8,$f4,$f6
     fa8:	3c0142dc 	lui	at,0x42dc
     fac:	44818000 	mtc1	at,$f16
     fb0:	3c0142f0 	lui	at,0x42f0
     fb4:	e6280000 	swc1	$f8,0(s1)
     fb8:	c46a000c 	lwc1	$f10,12(v1)
     fbc:	3c100000 	lui	s0,0x0
     fc0:	26100000 	addiu	s0,s0,0
     fc4:	46105481 	sub.s	$f18,$f10,$f16
     fc8:	44815000 	mtc1	at,$f10
     fcc:	3c014248 	lui	at,0x4248
     fd0:	e6320004 	swc1	$f18,4(s1)
     fd4:	c4640010 	lwc1	$f4,16(v1)
     fd8:	46022180 	add.s	$f6,$f4,$f2
     fdc:	e6260008 	swc1	$f6,8(s1)
     fe0:	c4680008 	lwc1	$f8,8(v1)
     fe4:	460a4400 	add.s	$f16,$f8,$f10
     fe8:	44814000 	mtc1	at,$f8
     fec:	e6100000 	swc1	$f16,0(s0)
     ff0:	c472000c 	lwc1	$f18,12(v1)
     ff4:	46009100 	add.s	$f4,$f18,$f0
     ff8:	e6040004 	swc1	$f4,4(s0)
     ffc:	c4660010 	lwc1	$f6,16(v1)
    1000:	46083280 	add.s	$f10,$f6,$f8
    1004:	e60a0008 	swc1	$f10,8(s0)
    1008:	10000023 	b	1098 <func_8092CC58+0xa10>
    100c:	86460198 	lh	a2,408(s2)
    1010:	2401000c 	li	at,12
    1014:	15010020 	bne	t0,at,1098 <func_8092CC58+0xa10>
    1018:	00000000 	nop
    101c:	3c030000 	lui	v1,0x0
    1020:	24630000 	addiu	v1,v1,0
    1024:	c4700000 	lwc1	$f16,0(v1)
    1028:	c46c0004 	lwc1	$f12,4(v1)
    102c:	c4600008 	lwc1	$f0,8(v1)
    1030:	3c014248 	lui	at,0x4248
    1034:	44819000 	mtc1	at,$f18
    1038:	3c0142b4 	lui	at,0x42b4
    103c:	44812000 	mtc1	at,$f4
    1040:	46128080 	add.s	$f2,$f16,$f18
    1044:	3c014348 	lui	at,0x4348
    1048:	44814000 	mtc1	at,$f8
    104c:	46046181 	sub.s	$f6,$f12,$f4
    1050:	3c110000 	lui	s1,0x0
    1054:	26310000 	addiu	s1,s1,0
    1058:	46080281 	sub.s	$f10,$f0,$f8
    105c:	3c0143af 	lui	at,0x43af
    1060:	44818000 	mtc1	at,$f16
    1064:	3c100000 	lui	s0,0x0
    1068:	26100000 	addiu	s0,s0,0
    106c:	46106480 	add.s	$f18,$f12,$f16
    1070:	3c014316 	lui	at,0x4316
    1074:	44812000 	mtc1	at,$f4
    1078:	e6260004 	swc1	$f6,4(s1)
    107c:	e6220000 	swc1	$f2,0(s1)
    1080:	46040180 	add.s	$f6,$f0,$f4
    1084:	e62a0008 	swc1	$f10,8(s1)
    1088:	e6020000 	swc1	$f2,0(s0)
    108c:	e6120004 	swc1	$f18,4(s0)
    1090:	e6060008 	swc1	$f6,8(s0)
    1094:	86460198 	lh	a2,408(s2)
    1098:	3c100000 	lui	s0,0x0
    109c:	3c110000 	lui	s1,0x0
    10a0:	26310000 	addiu	s1,s1,0
    10a4:	1000001b 	b	1114 <func_8092CC58+0xa8c>
    10a8:	26100000 	addiu	s0,s0,0
    10ac:	28c10094 	slti	at,a2,148
    10b0:	14200007 	bnez	at,10d0 <func_8092CC58+0xa48>
    10b4:	3c110000 	lui	s1,0x0
    10b8:	3c100000 	lui	s0,0x0
    10bc:	24c8ff6c 	addiu	t0,a2,-148
    10c0:	26100000 	addiu	s0,s0,0
    10c4:	26310000 	addiu	s1,s1,0
    10c8:	10000012 	b	1114 <func_8092CC58+0xa8c>
    10cc:	24090002 	li	t1,2
    10d0:	28c10070 	slti	at,a2,112
    10d4:	14200008 	bnez	at,10f8 <func_8092CC58+0xa70>
    10d8:	00004825 	move	t1,zero
    10dc:	3c110000 	lui	s1,0x0
    10e0:	3c100000 	lui	s0,0x0
    10e4:	24c8ff90 	addiu	t0,a2,-112
    10e8:	26100000 	addiu	s0,s0,0
    10ec:	26310000 	addiu	s1,s1,0
    10f0:	10000008 	b	1114 <func_8092CC58+0xa8c>
    10f4:	24090001 	li	t1,1
    10f8:	2401001c 	li	at,28
    10fc:	00c1001a 	div	zero,a2,at
    1100:	00004010 	mfhi	t0
    1104:	3c110000 	lui	s1,0x0
    1108:	3c100000 	lui	s0,0x0
    110c:	26100000 	addiu	s0,s0,0
    1110:	26310000 	addiu	s1,s1,0
    1114:	28c100c7 	slti	at,a2,199
    1118:	502000b3 	beqzl	at,13e8 <func_8092CC58+0xd60>
    111c:	2401000c 	li	at,12
    1120:	3c050000 	lui	a1,0x0
    1124:	24a50000 	addiu	a1,a1,0
    1128:	94a30ee2 	lhu	v1,3810(a1)
    112c:	240f00c6 	li	t7,198
    1130:	01e61023 	subu	v0,t7,a2
    1134:	30630080 	andi	v1,v1,0x80
    1138:	1060001c 	beqz	v1,11ac <func_8092CC58+0xb24>
    113c:	2841002d 	slti	at,v0,45
    1140:	1020001a 	beqz	at,11ac <func_8092CC58+0xb24>
    1144:	3c010000 	lui	at,0x0
    1148:	c42a0000 	lwc1	$f10,0(at)
    114c:	3c014000 	lui	at,0x4000
    1150:	c6280000 	lwc1	$f8,0(s1)
    1154:	44812000 	mtc1	at,$f4
    1158:	c6320004 	lwc1	$f18,4(s1)
    115c:	460a4400 	add.s	$f16,$f8,$f10
    1160:	3c010000 	lui	at,0x0
    1164:	c6080000 	lwc1	$f8,0(s0)
    1168:	46049180 	add.s	$f6,$f18,$f4
    116c:	e6300000 	swc1	$f16,0(s1)
    1170:	c6120004 	lwc1	$f18,4(s0)
    1174:	e6260004 	swc1	$f6,4(s1)
    1178:	c42a0000 	lwc1	$f10,0(at)
    117c:	3c010000 	lui	at,0x0
    1180:	460a4401 	sub.s	$f16,$f8,$f10
    1184:	c6080008 	lwc1	$f8,8(s0)
    1188:	e6100000 	swc1	$f16,0(s0)
    118c:	c4240000 	lwc1	$f4,0(at)
    1190:	3c014120 	lui	at,0x4120
    1194:	44815000 	mtc1	at,$f10
    1198:	46049181 	sub.s	$f6,$f18,$f4
    119c:	460a4400 	add.s	$f16,$f8,$f10
    11a0:	e6060004 	swc1	$f6,4(s0)
    11a4:	1000008f 	b	13e4 <func_8092CC58+0xd5c>
    11a8:	e6100008 	swc1	$f16,8(s0)
    11ac:	28c10015 	slti	at,a2,21
    11b0:	1020001f 	beqz	at,1230 <func_8092CC58+0xba8>
    11b4:	3c0140e0 	lui	at,0x40e0
    11b8:	44812000 	mtc1	at,$f4
    11bc:	c6320004 	lwc1	$f18,4(s1)
    11c0:	3c014110 	lui	at,0x4110
    11c4:	44815000 	mtc1	at,$f10
    11c8:	46049181 	sub.s	$f6,$f18,$f4
    11cc:	3c0140d0 	lui	at,0x40d0
    11d0:	c6280008 	lwc1	$f8,8(s1)
    11d4:	44812000 	mtc1	at,$f4
    11d8:	c6120000 	lwc1	$f18,0(s0)
    11dc:	e6260004 	swc1	$f6,4(s1)
    11e0:	460a4400 	add.s	$f16,$f8,$f10
    11e4:	3c014080 	lui	at,0x4080
    11e8:	44815000 	mtc1	at,$f10
    11ec:	46049180 	add.s	$f6,$f18,$f4
    11f0:	3c014178 	lui	at,0x4178
    11f4:	c6080004 	lwc1	$f8,4(s0)
    11f8:	44812000 	mtc1	at,$f4
    11fc:	c6120008 	lwc1	$f18,8(s0)
    1200:	e6300008 	swc1	$f16,8(s1)
    1204:	e6060000 	swc1	$f6,0(s0)
    1208:	460a4400 	add.s	$f16,$f8,$f10
    120c:	24020001 	li	v0,1
    1210:	46049180 	add.s	$f6,$f18,$f4
    1214:	e6100004 	swc1	$f16,4(s0)
    1218:	e6060008 	swc1	$f6,8(s0)
    121c:	8e580004 	lw	t8,4(s2)
    1220:	a2420194 	sb	v0,404(s2)
    1224:	37190080 	ori	t9,t8,0x80
    1228:	1000006e 	b	13e4 <func_8092CC58+0xd5c>
    122c:	ae590004 	sw	t9,4(s2)
    1230:	28410028 	slti	at,v0,40
    1234:	1020001a 	beqz	at,12a0 <func_8092CC58+0xc18>
    1238:	3c013fa0 	lui	at,0x3fa0
    123c:	44815000 	mtc1	at,$f10
    1240:	c6280000 	lwc1	$f8,0(s1)
    1244:	3c014060 	lui	at,0x4060
    1248:	44812000 	mtc1	at,$f4
    124c:	460a4400 	add.s	$f16,$f8,$f10
    1250:	3c0140a0 	lui	at,0x40a0
    1254:	c6320004 	lwc1	$f18,4(s1)
    1258:	44815000 	mtc1	at,$f10
    125c:	c6280008 	lwc1	$f8,8(s1)
    1260:	e6300000 	swc1	$f16,0(s1)
    1264:	46049180 	add.s	$f6,$f18,$f4
    1268:	3c014000 	lui	at,0x4000
    126c:	44812000 	mtc1	at,$f4
    1270:	460a4400 	add.s	$f16,$f8,$f10
    1274:	3c014108 	lui	at,0x4108
    1278:	c6120000 	lwc1	$f18,0(s0)
    127c:	44815000 	mtc1	at,$f10
    1280:	c6080004 	lwc1	$f8,4(s0)
    1284:	e6260004 	swc1	$f6,4(s1)
    1288:	e6300008 	swc1	$f16,8(s1)
    128c:	46049180 	add.s	$f6,$f18,$f4
    1290:	460a4401 	sub.s	$f16,$f8,$f10
    1294:	e6060000 	swc1	$f6,0(s0)
    1298:	10000052 	b	13e4 <func_8092CC58+0xd5c>
    129c:	e6100004 	swc1	$f16,4(s0)
    12a0:	2841002d 	slti	at,v0,45
    12a4:	1420004f 	bnez	at,13e4 <func_8092CC58+0xd5c>
    12a8:	28410055 	slti	at,v0,85
    12ac:	1020001f 	beqz	at,132c <func_8092CC58+0xca4>
    12b0:	3c014020 	lui	at,0x4020
    12b4:	44812000 	mtc1	at,$f4
    12b8:	3c014088 	lui	at,0x4088
    12bc:	c6320000 	lwc1	$f18,0(s1)
    12c0:	44815000 	mtc1	at,$f10
    12c4:	c6280004 	lwc1	$f8,4(s1)
    12c8:	46049181 	sub.s	$f6,$f18,$f4
    12cc:	3c014140 	lui	at,0x4140
    12d0:	44812000 	mtc1	at,$f4
    12d4:	460a4400 	add.s	$f16,$f8,$f10
    12d8:	3c0140d0 	lui	at,0x40d0
    12dc:	c6320008 	lwc1	$f18,8(s1)
    12e0:	44815000 	mtc1	at,$f10
    12e4:	c6080000 	lwc1	$f8,0(s0)
    12e8:	e6260000 	swc1	$f6,0(s1)
    12ec:	e6300004 	swc1	$f16,4(s1)
    12f0:	46049181 	sub.s	$f6,$f18,$f4
    12f4:	3c013fa0 	lui	at,0x3fa0
    12f8:	44812000 	mtc1	at,$f4
    12fc:	460a4401 	sub.s	$f16,$f8,$f10
    1300:	3c014060 	lui	at,0x4060
    1304:	c6120004 	lwc1	$f18,4(s0)
    1308:	44815000 	mtc1	at,$f10
    130c:	c6080008 	lwc1	$f8,8(s0)
    1310:	e6260008 	swc1	$f6,8(s1)
    1314:	e6100000 	swc1	$f16,0(s0)
    1318:	46049180 	add.s	$f6,$f18,$f4
    131c:	460a4401 	sub.s	$f16,$f8,$f10
    1320:	e6060004 	swc1	$f6,4(s0)
    1324:	1000002f 	b	13e4 <func_8092CC58+0xd5c>
    1328:	e6100008 	swc1	$f16,8(s0)
    132c:	24010055 	li	at,85
    1330:	5441002d 	bnel	v0,at,13e8 <func_8092CC58+0xd60>
    1334:	2401000c 	li	at,12
    1338:	1460001c 	bnez	v1,13ac <func_8092CC58+0xd24>
    133c:	8fa40054 	lw	a0,84(sp)
    1340:	3c020601 	lui	v0,0x601
    1344:	24423d80 	addiu	v0,v0,15744
    1348:	00025900 	sll	t3,v0,0x4
    134c:	000b6702 	srl	t4,t3,0x1c
    1350:	000c6880 	sll	t5,t4,0x2
    1354:	3c0e0000 	lui	t6,0x0
    1358:	01cd7021 	addu	t6,t6,t5
    135c:	3c0100ff 	lui	at,0xff
    1360:	8dce0000 	lw	t6,0(t6)
    1364:	3421ffff 	ori	at,at,0xffff
    1368:	00417824 	and	t7,v0,at
    136c:	3c018000 	lui	at,0x8000
    1370:	241800b4 	li	t8,180
    1374:	24190080 	li	t9,128
    1378:	240a0028 	li	t2,40
    137c:	01cf3021 	addu	a2,t6,t7
    1380:	00c13021 	addu	a2,a2,at
    1384:	afaa0018 	sw	t2,24(sp)
    1388:	afb90014 	sw	t9,20(sp)
    138c:	afb80010 	sw	t8,16(sp)
    1390:	24851d4c 	addiu	a1,a0,7500
    1394:	240700a0 	li	a3,160
    1398:	afa80044 	sw	t0,68(sp)
    139c:	0c000000 	jal	0 <BossSst_Init>
    13a0:	afa90048 	sw	t1,72(sp)
    13a4:	8fa80044 	lw	t0,68(sp)
    13a8:	8fa90048 	lw	t1,72(sp)
    13ac:	2404001b 	li	a0,27
    13b0:	afa80044 	sw	t0,68(sp)
    13b4:	0c000000 	jal	0 <BossSst_Init>
    13b8:	afa90048 	sw	t1,72(sp)
    13bc:	3c050601 	lui	a1,0x601
    13c0:	24a5c288 	addiu	a1,a1,-15736
    13c4:	8fa40038 	lw	a0,56(sp)
    13c8:	0c000000 	jal	0 <BossSst_Init>
    13cc:	3c06c0a0 	lui	a2,0xc0a0
    13d0:	02402025 	move	a0,s2
    13d4:	0c000000 	jal	0 <BossSst_Init>
    13d8:	2405396b 	li	a1,14699
    13dc:	8fa80044 	lw	t0,68(sp)
    13e0:	8fa90048 	lw	t1,72(sp)
    13e4:	2401000c 	li	at,12
    13e8:	55010009 	bnel	t0,at,1410 <func_8092CC58+0xd88>
    13ec:	24020005 	li	v0,5
    13f0:	3c040000 	lui	a0,0x0
    13f4:	8c840000 	lw	a0,0(a0)
    13f8:	afa80044 	sw	t0,68(sp)
    13fc:	0c000000 	jal	0 <BossSst_Init>
    1400:	afa90048 	sw	t1,72(sp)
    1404:	8fa80044 	lw	t0,68(sp)
    1408:	8fa90048 	lw	t1,72(sp)
    140c:	24020005 	li	v0,5
    1410:	11020012 	beq	t0,v0,145c <func_8092CC58+0xdd4>
    1414:	00095840 	sll	t3,t1,0x1
    1418:	256c0007 	addiu	t4,t3,7
    141c:	010c001a 	div	zero,t0,t4
    1420:	00006810 	mfhi	t5
    1424:	3c040000 	lui	a0,0x0
    1428:	15800002 	bnez	t4,1434 <func_8092CC58+0xdac>
    142c:	00000000 	nop
    1430:	0007000d 	break	0x7
    1434:	2401ffff 	li	at,-1
    1438:	15810004 	bne	t4,at,144c <func_8092CC58+0xdc4>
    143c:	3c018000 	lui	at,0x8000
    1440:	15010002 	bne	t0,at,144c <func_8092CC58+0xdc4>
    1444:	00000000 	nop
    1448:	0006000d 	break	0x6
    144c:	544d0004 	bnel	v0,t5,1460 <func_8092CC58+0xdd8>
    1450:	8e4f0190 	lw	t7,400(s2)
    1454:	0c000000 	jal	0 <BossSst_Init>
    1458:	8c840000 	lw	a0,0(a0)
    145c:	8e4f0190 	lw	t7,400(s2)
    1460:	3c0e0000 	lui	t6,0x0
    1464:	25ce0000 	addiu	t6,t6,0
    1468:	11cf0006 	beq	t6,t7,1484 <func_8092CC58+0xdfc>
    146c:	3c050000 	lui	a1,0x0
    1470:	84a50000 	lh	a1,0(a1)
    1474:	8fa40054 	lw	a0,84(sp)
    1478:	02203025 	move	a2,s1
    147c:	0c000000 	jal	0 <BossSst_Init>
    1480:	02003825 	move	a3,s0
    1484:	8fbf0034 	lw	ra,52(sp)
    1488:	8fb00028 	lw	s0,40(sp)
    148c:	8fb1002c 	lw	s1,44(sp)
    1490:	8fb20030 	lw	s2,48(sp)
    1494:	03e00008 	jr	ra
    1498:	27bd0050 	addiu	sp,sp,80

0000149c <func_8092DA6C>:
    149c:	27bdffe8 	addiu	sp,sp,-24
    14a0:	afbf0014 	sw	ra,20(sp)
    14a4:	8c8e0154 	lw	t6,340(a0)
    14a8:	3c050601 	lui	a1,0x601
    14ac:	24a5dc2c 	addiu	a1,a1,-9172
    14b0:	10ae0006 	beq	a1,t6,14cc <func_8092DA6C+0x30>
    14b4:	00803825 	move	a3,a0
    14b8:	2484014c 	addiu	a0,a0,332
    14bc:	3c06c0a0 	lui	a2,0xc0a0
    14c0:	0c000000 	jal	0 <BossSst_Init>
    14c4:	afa70018 	sw	a3,24(sp)
    14c8:	8fa70018 	lw	a3,24(sp)
    14cc:	3c0f0000 	lui	t7,0x0
    14d0:	25ef0000 	addiu	t7,t7,0
    14d4:	acef0190 	sw	t7,400(a3)
    14d8:	8fbf0014 	lw	ra,20(sp)
    14dc:	27bd0018 	addiu	sp,sp,24
    14e0:	03e00008 	jr	ra
    14e4:	00000000 	nop

000014e8 <func_8092DAB8>:
    14e8:	27bdffe8 	addiu	sp,sp,-24
    14ec:	afbf0014 	sw	ra,20(sp)
    14f0:	afa40018 	sw	a0,24(sp)
    14f4:	afa5001c 	sw	a1,28(sp)
    14f8:	0c000000 	jal	0 <BossSst_Init>
    14fc:	2484014c 	addiu	a0,a0,332
    1500:	3c030000 	lui	v1,0x0
    1504:	24630000 	addiu	v1,v1,0
    1508:	8c6e0000 	lw	t6,0(v1)
    150c:	3c020000 	lui	v0,0x0
    1510:	24420000 	addiu	v0,v0,0
    1514:	85cf001c 	lh	t7,28(t6)
    1518:	000fc080 	sll	t8,t7,0x2
    151c:	0058c821 	addu	t9,v0,t8
    1520:	8f280000 	lw	t0,0(t9)
    1524:	5500000b 	bnezl	t0,1554 <func_8092DAB8+0x6c>
    1528:	8fbf0014 	lw	ra,20(sp)
    152c:	8c690004 	lw	t1,4(v1)
    1530:	852a001c 	lh	t2,28(t1)
    1534:	000a5880 	sll	t3,t2,0x2
    1538:	004b6021 	addu	t4,v0,t3
    153c:	8d8d0000 	lw	t5,0(t4)
    1540:	55a00004 	bnezl	t5,1554 <func_8092DAB8+0x6c>
    1544:	8fbf0014 	lw	ra,20(sp)
    1548:	0c000000 	jal	0 <BossSst_Init>
    154c:	8fa40018 	lw	a0,24(sp)
    1550:	8fbf0014 	lw	ra,20(sp)
    1554:	27bd0018 	addiu	sp,sp,24
    1558:	03e00008 	jr	ra
    155c:	00000000 	nop

00001560 <func_8092DB30>:
    1560:	3c0f0000 	lui	t7,0x0
    1564:	240e007f 	li	t6,127
    1568:	25ef0000 	addiu	t7,t7,0
    156c:	a48e0198 	sh	t6,408(a0)
    1570:	a0800195 	sb	zero,405(a0)
    1574:	03e00008 	jr	ra
    1578:	ac8f0190 	sw	t7,400(a0)

0000157c <func_8092DB4C>:
    157c:	27bdffe0 	addiu	sp,sp,-32
    1580:	afb00018 	sw	s0,24(sp)
    1584:	00808025 	move	s0,a0
    1588:	afbf001c 	sw	ra,28(sp)
    158c:	afa50024 	sw	a1,36(sp)
    1590:	0c000000 	jal	0 <BossSst_Init>
    1594:	2484014c 	addiu	a0,a0,332
    1598:	82030195 	lb	v1,405(s0)
    159c:	8fa60024 	lw	a2,36(sp)
    15a0:	3c0e0000 	lui	t6,0x0
    15a4:	14600019 	bnez	v1,160c <func_8092DB4C+0x90>
    15a8:	00000000 	nop
    15ac:	8dce0000 	lw	t6,0(t6)
    15b0:	3c040000 	lui	a0,0x0
    15b4:	24840000 	addiu	a0,a0,0
    15b8:	85cf001c 	lh	t7,28(t6)
    15bc:	24050001 	li	a1,1
    15c0:	3c080000 	lui	t0,0x0
    15c4:	000fc080 	sll	t8,t7,0x2
    15c8:	0098c821 	addu	t9,a0,t8
    15cc:	8f220000 	lw	v0,0(t9)
    15d0:	10a20003 	beq	a1,v0,15e0 <func_8092DB4C+0x64>
    15d4:	00000000 	nop
    15d8:	1440000c 	bnez	v0,160c <func_8092DB4C+0x90>
    15dc:	00000000 	nop
    15e0:	8d080000 	lw	t0,0(t0)
    15e4:	8509001c 	lh	t1,28(t0)
    15e8:	00095080 	sll	t2,t1,0x2
    15ec:	008a5821 	addu	t3,a0,t2
    15f0:	8d620000 	lw	v0,0(t3)
    15f4:	50a20004 	beql	a1,v0,1608 <func_8092DB4C+0x8c>
    15f8:	a2050195 	sb	a1,405(s0)
    15fc:	14400003 	bnez	v0,160c <func_8092DB4C+0x90>
    1600:	00000000 	nop
    1604:	a2050195 	sb	a1,405(s0)
    1608:	82030195 	lb	v1,405(s0)
    160c:	10600005 	beqz	v1,1624 <func_8092DB4C+0xa8>
    1610:	3c050000 	lui	a1,0x0
    1614:	86020198 	lh	v0,408(s0)
    1618:	10400002 	beqz	v0,1624 <func_8092DB4C+0xa8>
    161c:	244cffff 	addiu	t4,v0,-1
    1620:	a60c0198 	sh	t4,408(s0)
    1624:	860d0198 	lh	t5,408(s0)
    1628:	24a50000 	addiu	a1,a1,0
    162c:	15a00023 	bnez	t5,16bc <func_8092DB4C+0x140>
    1630:	00000000 	nop
    1634:	8cc21c44 	lw	v0,7236(a2)
    1638:	3c01c248 	lui	at,0xc248
    163c:	44812000 	mtc1	at,$f4
    1640:	c4460028 	lwc1	$f6,40(v0)
    1644:	2409001c 	li	t1,28
    1648:	4606203c 	c.lt.s	$f4,$f6
    164c:	00000000 	nop
    1650:	45000018 	bc1f	16b4 <func_8092DB4C+0x138>
    1654:	00000000 	nop
    1658:	8c4e067c 	lw	t6,1660(v0)
    165c:	31cf6080 	andi	t7,t6,0x6080
    1660:	15e00014 	bnez	t7,16b4 <func_8092DB4C+0x138>
    1664:	00000000 	nop
    1668:	0c000000 	jal	0 <BossSst_Init>
    166c:	00000000 	nop
    1670:	3c013f00 	lui	at,0x3f00
    1674:	44814000 	mtc1	at,$f8
    1678:	24050001 	li	a1,1
    167c:	0000c025 	move	t8,zero
    1680:	4608003e 	c.le.s	$f0,$f8
    1684:	3c080000 	lui	t0,0x0
    1688:	45020003 	bc1fl	1698 <func_8092DB4C+0x11c>
    168c:	0018c880 	sll	t9,t8,0x2
    1690:	24180001 	li	t8,1
    1694:	0018c880 	sll	t9,t8,0x2
    1698:	01194021 	addu	t0,t0,t9
    169c:	8d080000 	lw	t0,0(t0)
    16a0:	02002025 	move	a0,s0
    16a4:	0c000000 	jal	0 <BossSst_Init>
    16a8:	a1050195 	sb	a1,405(t0)
    16ac:	10000017 	b	170c <func_8092DB4C+0x190>
    16b0:	8fbf001c 	lw	ra,28(sp)
    16b4:	10000014 	b	1708 <func_8092DB4C+0x18c>
    16b8:	a6090198 	sh	t1,408(s0)
    16bc:	0c000000 	jal	0 <BossSst_Init>
    16c0:	8cc41c44 	lw	a0,7236(a2)
    16c4:	34018000 	li	at,0x8000
    16c8:	00412821 	addu	a1,v0,at
    16cc:	00052c00 	sll	a1,a1,0x10
    16d0:	00052c03 	sra	a1,a1,0x10
    16d4:	260400b6 	addiu	a0,s0,182
    16d8:	24060004 	li	a2,4
    16dc:	0c000000 	jal	0 <BossSst_Init>
    16e0:	24070400 	li	a3,1024
    16e4:	86020198 	lh	v0,408(s0)
    16e8:	2401001c 	li	at,28
    16ec:	02002025 	move	a0,s0
    16f0:	10410003 	beq	v0,at,1700 <func_8092DB4C+0x184>
    16f4:	24010054 	li	at,84
    16f8:	54410004 	bnel	v0,at,170c <func_8092DB4C+0x190>
    16fc:	8fbf001c 	lw	ra,28(sp)
    1700:	0c000000 	jal	0 <BossSst_Init>
    1704:	2405398e 	li	a1,14734
    1708:	8fbf001c 	lw	ra,28(sp)
    170c:	8fb00018 	lw	s0,24(sp)
    1710:	27bd0020 	addiu	sp,sp,32
    1714:	03e00008 	jr	ra
    1718:	00000000 	nop

0000171c <func_8092DCEC>:
    171c:	27bdffe8 	addiu	sp,sp,-24
    1720:	afbf0014 	sw	ra,20(sp)
    1724:	10a00008 	beqz	a1,1748 <func_8092DCEC+0x2c>
    1728:	afa40018 	sw	a0,24(sp)
    172c:	3c050601 	lui	a1,0x601
    1730:	24a5c9bc 	addiu	a1,a1,-13892
    1734:	2484014c 	addiu	a0,a0,332
    1738:	0c000000 	jal	0 <BossSst_Init>
    173c:	3c06c0a0 	lui	a2,0xc0a0
    1740:	10000008 	b	1764 <func_8092DCEC+0x48>
    1744:	8faf0018 	lw	t7,24(sp)
    1748:	8fa40018 	lw	a0,24(sp)
    174c:	3c050601 	lui	a1,0x601
    1750:	24a5c5b0 	addiu	a1,a1,-14928
    1754:	3c06c0a0 	lui	a2,0xc0a0
    1758:	0c000000 	jal	0 <BossSst_Init>
    175c:	2484014c 	addiu	a0,a0,332
    1760:	8faf0018 	lw	t7,24(sp)
    1764:	3c0e0000 	lui	t6,0x0
    1768:	25ce0000 	addiu	t6,t6,0
    176c:	adee0190 	sw	t6,400(t7)
    1770:	8fbf0014 	lw	ra,20(sp)
    1774:	27bd0018 	addiu	sp,sp,24
    1778:	03e00008 	jr	ra
    177c:	00000000 	nop

00001780 <func_8092DD50>:
    1780:	27bdffe8 	addiu	sp,sp,-24
    1784:	afa5001c 	sw	a1,28(sp)
    1788:	00802825 	move	a1,a0
    178c:	afbf0014 	sw	ra,20(sp)
    1790:	afa40018 	sw	a0,24(sp)
    1794:	afa50018 	sw	a1,24(sp)
    1798:	0c000000 	jal	0 <BossSst_Init>
    179c:	2484014c 	addiu	a0,a0,332
    17a0:	10400031 	beqz	v0,1868 <func_8092DD50+0xe8>
    17a4:	8fa50018 	lw	a1,24(sp)
    17a8:	3c040000 	lui	a0,0x0
    17ac:	24840000 	addiu	a0,a0,0
    17b0:	8c8e0000 	lw	t6,0(a0)
    17b4:	3c030000 	lui	v1,0x0
    17b8:	24630000 	addiu	v1,v1,0
    17bc:	85cf001c 	lh	t7,28(t6)
    17c0:	24060008 	li	a2,8
    17c4:	000fc080 	sll	t8,t7,0x2
    17c8:	0078c821 	addu	t9,v1,t8
    17cc:	8f220000 	lw	v0,0(t9)
    17d0:	54c2000d 	bnel	a2,v0,1808 <func_8092DD50+0x88>
    17d4:	24060009 	li	a2,9
    17d8:	8c880004 	lw	t0,4(a0)
    17dc:	8509001c 	lh	t1,28(t0)
    17e0:	00095080 	sll	t2,t1,0x2
    17e4:	006a5821 	addu	t3,v1,t2
    17e8:	8d6c0000 	lw	t4,0(t3)
    17ec:	54cc0006 	bnel	a2,t4,1808 <func_8092DD50+0x88>
    17f0:	24060009 	li	a2,9
    17f4:	0c000000 	jal	0 <BossSst_Init>
    17f8:	00a02025 	move	a0,a1
    17fc:	1000001b 	b	186c <func_8092DD50+0xec>
    1800:	8fbf0014 	lw	ra,20(sp)
    1804:	24060009 	li	a2,9
    1808:	10c20008 	beq	a2,v0,182c <func_8092DD50+0xac>
    180c:	00000000 	nop
    1810:	8c8d0004 	lw	t5,4(a0)
    1814:	85ae001c 	lh	t6,28(t5)
    1818:	000e7880 	sll	t7,t6,0x2
    181c:	006fc021 	addu	t8,v1,t7
    1820:	8f190000 	lw	t9,0(t8)
    1824:	54d90006 	bnel	a2,t9,1840 <func_8092DD50+0xc0>
    1828:	8ca90154 	lw	t1,340(a1)
    182c:	0c000000 	jal	0 <BossSst_Init>
    1830:	00a02025 	move	a0,a1
    1834:	1000000d 	b	186c <func_8092DD50+0xec>
    1838:	8fbf0014 	lw	ra,20(sp)
    183c:	8ca90154 	lw	t1,340(a1)
    1840:	3c080601 	lui	t0,0x601
    1844:	2508c9bc 	addiu	t0,t0,-13892
    1848:	15090005 	bne	t0,t1,1860 <func_8092DD50+0xe0>
    184c:	00000000 	nop
    1850:	0c000000 	jal	0 <BossSst_Init>
    1854:	00a02025 	move	a0,a1
    1858:	10000004 	b	186c <func_8092DD50+0xec>
    185c:	8fbf0014 	lw	ra,20(sp)
    1860:	0c000000 	jal	0 <BossSst_Init>
    1864:	00a02025 	move	a0,a1
    1868:	8fbf0014 	lw	ra,20(sp)
    186c:	27bd0018 	addiu	sp,sp,24
    1870:	03e00008 	jr	ra
    1874:	00000000 	nop

00001878 <func_8092DE48>:
    1878:	27bdffe8 	addiu	sp,sp,-24
    187c:	afbf0014 	sw	ra,20(sp)
    1880:	00803825 	move	a3,a0
    1884:	3c050601 	lui	a1,0x601
    1888:	24a5e7b8 	addiu	a1,a1,-6216
    188c:	afa70018 	sw	a3,24(sp)
    1890:	2484014c 	addiu	a0,a0,332
    1894:	0c000000 	jal	0 <BossSst_Init>
    1898:	3c06c0a0 	lui	a2,0xc0a0
    189c:	8fa70018 	lw	a3,24(sp)
    18a0:	44802000 	mtc1	zero,$f4
    18a4:	3c180000 	lui	t8,0x0
    18a8:	90ee06c5 	lbu	t6,1733(a3)
    18ac:	27180000 	addiu	t8,t8,0
    18b0:	acf80190 	sw	t8,400(a3)
    18b4:	35cf0001 	ori	t7,t6,0x1
    18b8:	a0ef06c5 	sb	t7,1733(a3)
    18bc:	e4e40068 	swc1	$f4,104(a3)
    18c0:	8fbf0014 	lw	ra,20(sp)
    18c4:	27bd0018 	addiu	sp,sp,24
    18c8:	03e00008 	jr	ra
    18cc:	00000000 	nop

000018d0 <func_8092DEA0>:
    18d0:	27bdffe0 	addiu	sp,sp,-32
    18d4:	afbf001c 	sw	ra,28(sp)
    18d8:	afa40020 	sw	a0,32(sp)
    18dc:	afa50024 	sw	a1,36(sp)
    18e0:	0c000000 	jal	0 <BossSst_Init>
    18e4:	2484014c 	addiu	a0,a0,332
    18e8:	3c040000 	lui	a0,0x0
    18ec:	24840000 	addiu	a0,a0,0
    18f0:	8c820000 	lw	v0,0(a0)
    18f4:	8fae0020 	lw	t6,32(sp)
    18f8:	24060004 	li	a2,4
    18fc:	804f0195 	lb	t7,405(v0)
    1900:	24070800 	li	a3,2048
    1904:	240a0400 	li	t2,1024
    1908:	11e00011 	beqz	t7,1950 <func_8092DEA0+0x80>
    190c:	01c04025 	move	t0,t6
    1910:	8c580190 	lw	t8,400(v0)
    1914:	3c030000 	lui	v1,0x0
    1918:	24630000 	addiu	v1,v1,0
    191c:	5478000d 	bnel	v1,t8,1954 <func_8092DEA0+0x84>
    1920:	8505008a 	lh	a1,138(t0)
    1924:	8c820004 	lw	v0,4(a0)
    1928:	80590195 	lb	t9,405(v0)
    192c:	53200009 	beqzl	t9,1954 <func_8092DEA0+0x84>
    1930:	8505008a 	lh	a1,138(t0)
    1934:	8c490190 	lw	t1,400(v0)
    1938:	54690006 	bnel	v1,t1,1954 <func_8092DEA0+0x84>
    193c:	8505008a 	lh	a1,138(t0)
    1940:	0c000000 	jal	0 <BossSst_Init>
    1944:	01c02025 	move	a0,t6
    1948:	10000006 	b	1964 <func_8092DEA0+0x94>
    194c:	8fbf001c 	lw	ra,28(sp)
    1950:	8505008a 	lh	a1,138(t0)
    1954:	afaa0010 	sw	t2,16(sp)
    1958:	0c000000 	jal	0 <BossSst_Init>
    195c:	250400b6 	addiu	a0,t0,182
    1960:	8fbf001c 	lw	ra,28(sp)
    1964:	27bd0020 	addiu	sp,sp,32
    1968:	03e00008 	jr	ra
    196c:	00000000 	nop

00001970 <func_8092DF40>:
    1970:	27bdffd0 	addiu	sp,sp,-48
    1974:	afb00028 	sw	s0,40(sp)
    1978:	00808025 	move	s0,a0
    197c:	afbf002c 	sw	ra,44(sp)
    1980:	3c040601 	lui	a0,0x601
    1984:	0c000000 	jal	0 <BossSst_Init>
    1988:	2484b0d8 	addiu	a0,a0,-20264
    198c:	44822000 	mtc1	v0,$f4
    1990:	3c01c0a0 	lui	at,0xc0a0
    1994:	44814000 	mtc1	at,$f8
    1998:	468021a0 	cvt.s.w	$f6,$f4
    199c:	3c050601 	lui	a1,0x601
    19a0:	240e0003 	li	t6,3
    19a4:	afae0014 	sw	t6,20(sp)
    19a8:	24a5b0d8 	addiu	a1,a1,-20264
    19ac:	2604014c 	addiu	a0,s0,332
    19b0:	e7a60010 	swc1	$f6,16(sp)
    19b4:	3c063f00 	lui	a2,0x3f00
    19b8:	24070000 	li	a3,0
    19bc:	0c000000 	jal	0 <BossSst_Init>
    19c0:	e7a80018 	swc1	$f8,24(sp)
    19c4:	3c040000 	lui	a0,0x0
    19c8:	8c840000 	lw	a0,0(a0)
    19cc:	0c000000 	jal	0 <BossSst_Init>
    19d0:	24050020 	li	a1,32
    19d4:	3c040000 	lui	a0,0x0
    19d8:	8c840000 	lw	a0,0(a0)
    19dc:	0c000000 	jal	0 <BossSst_Init>
    19e0:	24050020 	li	a1,32
    19e4:	920f03e4 	lbu	t7,996(s0)
    19e8:	3c014040 	lui	at,0x4040
    19ec:	44815000 	mtc1	at,$f10
    19f0:	35f80001 	ori	t8,t7,0x1
    19f4:	a21803e4 	sb	t8,996(s0)
    19f8:	3c010000 	lui	at,0x0
    19fc:	e60a0068 	swc1	$f10,104(s0)
    1a00:	c4300000 	lwc1	$f16,0(at)
    1a04:	3c190000 	lui	t9,0x0
    1a08:	27390000 	addiu	t9,t9,0
    1a0c:	a2000195 	sb	zero,405(s0)
    1a10:	ae190190 	sw	t9,400(s0)
    1a14:	e61003c4 	swc1	$f16,964(s0)
    1a18:	8fbf002c 	lw	ra,44(sp)
    1a1c:	8fb00028 	lw	s0,40(sp)
    1a20:	27bd0030 	addiu	sp,sp,48
    1a24:	03e00008 	jr	ra
    1a28:	00000000 	nop

00001a2c <func_8092DFFC>:
    1a2c:	27bdffc8 	addiu	sp,sp,-56
    1a30:	afb00020 	sw	s0,32(sp)
    1a34:	00808025 	move	s0,a0
    1a38:	afbf0024 	sw	ra,36(sp)
    1a3c:	2484014c 	addiu	a0,a0,332
    1a40:	afa5003c 	sw	a1,60(sp)
    1a44:	0c000000 	jal	0 <BossSst_Init>
    1a48:	afa4002c 	sw	a0,44(sp)
    1a4c:	afa20030 	sw	v0,48(sp)
    1a50:	820e0195 	lb	t6,405(s0)
    1a54:	8fa4002c 	lw	a0,44(sp)
    1a58:	55c0000d 	bnezl	t6,1a90 <func_8092DFFC+0x64>
    1a5c:	3c014234 	lui	at,0x4234
    1a60:	0c000000 	jal	0 <BossSst_Init>
    1a64:	3c0540c0 	lui	a1,0x40c0
    1a68:	10400008 	beqz	v0,1a8c <func_8092DFFC+0x60>
    1a6c:	240f0001 	li	t7,1
    1a70:	3c013e80 	lui	at,0x3e80
    1a74:	44812000 	mtc1	at,$f4
    1a78:	a20f0195 	sb	t7,405(s0)
    1a7c:	3c010000 	lui	at,0x0
    1a80:	e6040068 	swc1	$f4,104(s0)
    1a84:	c4260000 	lwc1	$f6,0(at)
    1a88:	e6060168 	swc1	$f6,360(s0)
    1a8c:	3c014234 	lui	at,0x4234
    1a90:	44811000 	mtc1	at,$f2
    1a94:	3c013fa0 	lui	at,0x3fa0
    1a98:	44815000 	mtc1	at,$f10
    1a9c:	c6080068 	lwc1	$f8,104(s0)
    1aa0:	3c063ecc 	lui	a2,0x3ecc
    1aa4:	3c013f80 	lui	at,0x3f80
    1aa8:	460a4402 	mul.s	$f16,$f8,$f10
    1aac:	34c6cccd 	ori	a2,a2,0xcccd
    1ab0:	260403c4 	addiu	a0,s0,964
    1ab4:	3c05c42f 	lui	a1,0xc42f
    1ab8:	e6100068 	swc1	$f16,104(s0)
    1abc:	c6000068 	lwc1	$f0,104(s0)
    1ac0:	4600103c 	c.lt.s	$f2,$f0
    1ac4:	00000000 	nop
    1ac8:	45020004 	bc1fl	1adc <func_8092DFFC+0xb0>
    1acc:	e6000068 	swc1	$f0,104(s0)
    1ad0:	10000002 	b	1adc <func_8092DFFC+0xb0>
    1ad4:	e6020068 	swc1	$f2,104(s0)
    1ad8:	e6000068 	swc1	$f0,104(s0)
    1adc:	82180195 	lb	t8,405(s0)
    1ae0:	13000037 	beqz	t8,1bc0 <func_8092DFFC+0x194>
    1ae4:	00000000 	nop
    1ae8:	44819000 	mtc1	at,$f18
    1aec:	3c054422 	lui	a1,0x4422
    1af0:	3c063ecc 	lui	a2,0x3ecc
    1af4:	8e070068 	lw	a3,104(s0)
    1af8:	34c6cccd 	ori	a2,a2,0xcccd
    1afc:	34a58000 	ori	a1,a1,0x8000
    1b00:	260403c4 	addiu	a0,s0,964
    1b04:	0c000000 	jal	0 <BossSst_Init>
    1b08:	e7b20010 	swc1	$f18,16(sp)
    1b0c:	3c010000 	lui	at,0x0
    1b10:	c42c0000 	lwc1	$f12,0(at)
    1b14:	3c014120 	lui	at,0x4120
    1b18:	44812000 	mtc1	at,$f4
    1b1c:	3c014334 	lui	at,0x4334
    1b20:	02002025 	move	a0,s0
    1b24:	4604003c 	c.lt.s	$f0,$f4
    1b28:	00000000 	nop
    1b2c:	45020006 	bc1fl	1b48 <func_8092DFFC+0x11c>
    1b30:	c60603c4 	lwc1	$f6,964(s0)
    1b34:	0c000000 	jal	0 <BossSst_Init>
    1b38:	e60c03c4 	swc1	$f12,964(s0)
    1b3c:	10000011 	b	1b84 <func_8092DFFC+0x158>
    1b40:	8fb90030 	lw	t9,48(sp)
    1b44:	c60603c4 	lwc1	$f6,964(s0)
    1b48:	44811000 	mtc1	at,$f2
    1b4c:	3c014040 	lui	at,0x4040
    1b50:	46066201 	sub.s	$f8,$f12,$f6
    1b54:	44815000 	mtc1	at,$f10
    1b58:	00000000 	nop
    1b5c:	460a4002 	mul.s	$f0,$f8,$f10
    1b60:	4600103c 	c.lt.s	$f2,$f0
    1b64:	00000000 	nop
    1b68:	45020003 	bc1fl	1b78 <func_8092DFFC+0x14c>
    1b6c:	c610000c 	lwc1	$f16,12(s0)
    1b70:	46001006 	mov.s	$f0,$f2
    1b74:	c610000c 	lwc1	$f16,12(s0)
    1b78:	46008481 	sub.s	$f18,$f16,$f0
    1b7c:	e6120028 	swc1	$f18,40(s0)
    1b80:	8fb90030 	lw	t9,48(sp)
    1b84:	3c030000 	lui	v1,0x0
    1b88:	24630000 	addiu	v1,v1,0
    1b8c:	17200008 	bnez	t9,1bb0 <func_8092DFFC+0x184>
    1b90:	3c0140a0 	lui	at,0x40a0
    1b94:	44810000 	mtc1	at,$f0
    1b98:	c4640008 	lwc1	$f4,8(v1)
    1b9c:	c4680014 	lwc1	$f8,20(v1)
    1ba0:	46002180 	add.s	$f6,$f4,$f0
    1ba4:	46004280 	add.s	$f10,$f8,$f0
    1ba8:	e4660008 	swc1	$f6,8(v1)
    1bac:	e46a0014 	swc1	$f10,20(v1)
    1bb0:	3c0140a0 	lui	at,0x40a0
    1bb4:	44810000 	mtc1	at,$f0
    1bb8:	10000017 	b	1c18 <func_8092DFFC+0x1ec>
    1bbc:	920903e4 	lbu	t1,996(s0)
    1bc0:	0c000000 	jal	0 <BossSst_Init>
    1bc4:	8e070068 	lw	a3,104(s0)
    1bc8:	3c014334 	lui	at,0x4334
    1bcc:	44811000 	mtc1	at,$f2
    1bd0:	c610000c 	lwc1	$f16,12(s0)
    1bd4:	26040028 	addiu	a0,s0,40
    1bd8:	3c0641a0 	lui	a2,0x41a0
    1bdc:	46028481 	sub.s	$f18,$f16,$f2
    1be0:	44059000 	mfc1	a1,$f18
    1be4:	0c000000 	jal	0 <BossSst_Init>
    1be8:	00000000 	nop
    1bec:	3c030000 	lui	v1,0x0
    1bf0:	24630000 	addiu	v1,v1,0
    1bf4:	3c0140a0 	lui	at,0x40a0
    1bf8:	44810000 	mtc1	at,$f0
    1bfc:	c4640004 	lwc1	$f4,4(v1)
    1c00:	c4680010 	lwc1	$f8,16(v1)
    1c04:	46002180 	add.s	$f6,$f4,$f0
    1c08:	46004280 	add.s	$f10,$f8,$f0
    1c0c:	e4660004 	swc1	$f6,4(v1)
    1c10:	e46a0010 	swc1	$f10,16(v1)
    1c14:	920903e4 	lbu	t1,996(s0)
    1c18:	3c0a0000 	lui	t2,0x0
    1c1c:	254a0000 	addiu	t2,t2,0
    1c20:	312b0002 	andi	t3,t1,0x2
    1c24:	11600014 	beqz	t3,1c78 <func_8092DFFC+0x24c>
    1c28:	312cfffc 	andi	t4,t1,0xfffc
    1c2c:	a20c03e4 	sb	t4,996(s0)
    1c30:	8d420000 	lw	v0,0(t2)
    1c34:	02002825 	move	a1,s0
    1c38:	3c064120 	lui	a2,0x4120
    1c3c:	904d03e4 	lbu	t5,996(v0)
    1c40:	31aefffc 	andi	t6,t5,0xfffc
    1c44:	a04e03e4 	sb	t6,996(v0)
    1c48:	8d430004 	lw	v1,4(t2)
    1c4c:	906f03e4 	lbu	t7,996(v1)
    1c50:	31f8fffc 	andi	t8,t7,0xfffc
    1c54:	a07803e4 	sb	t8,996(v1)
    1c58:	860700b6 	lh	a3,182(s0)
    1c5c:	e7a00010 	swc1	$f0,16(sp)
    1c60:	0c000000 	jal	0 <BossSst_Init>
    1c64:	8fa4003c 	lw	a0,60(sp)
    1c68:	8fb9003c 	lw	t9,60(sp)
    1c6c:	2405083e 	li	a1,2110
    1c70:	0c000000 	jal	0 <BossSst_Init>
    1c74:	8f241c44 	lw	a0,7236(t9)
    1c78:	8fbf0024 	lw	ra,36(sp)
    1c7c:	8fb00020 	lw	s0,32(sp)
    1c80:	27bd0038 	addiu	sp,sp,56
    1c84:	03e00008 	jr	ra
    1c88:	00000000 	nop

00001c8c <func_8092E25C>:
    1c8c:	27bdffe8 	addiu	sp,sp,-24
    1c90:	afbf0014 	sw	ra,20(sp)
    1c94:	00803825 	move	a3,a0
    1c98:	3c050601 	lui	a1,0x601
    1c9c:	24a5dc2c 	addiu	a1,a1,-9172
    1ca0:	afa70018 	sw	a3,24(sp)
    1ca4:	2484014c 	addiu	a0,a0,332
    1ca8:	0c000000 	jal	0 <BossSst_Init>
    1cac:	3c06c1a0 	lui	a2,0xc1a0
    1cb0:	3c050000 	lui	a1,0x0
    1cb4:	8fa40018 	lw	a0,24(sp)
    1cb8:	0c000000 	jal	0 <BossSst_Init>
    1cbc:	24a50000 	addiu	a1,a1,0
    1cc0:	8fa70018 	lw	a3,24(sp)
    1cc4:	3c01bf80 	lui	at,0xbf80
    1cc8:	44813000 	mtc1	at,$f6
    1ccc:	c4e403c4 	lwc1	$f4,964(a3)
    1cd0:	90ee03e4 	lbu	t6,996(a3)
    1cd4:	90f806c5 	lbu	t8,1733(a3)
    1cd8:	46062202 	mul.s	$f8,$f4,$f6
    1cdc:	3c080000 	lui	t0,0x0
    1ce0:	25080000 	addiu	t0,t0,0
    1ce4:	31cffffc 	andi	t7,t6,0xfffc
    1ce8:	3319fffe 	andi	t9,t8,0xfffe
    1cec:	a4e201a4 	sh	v0,420(a3)
    1cf0:	a0ef03e4 	sb	t7,996(a3)
    1cf4:	a0f906c5 	sb	t9,1733(a3)
    1cf8:	e4e803c4 	swc1	$f8,964(a3)
    1cfc:	ace80190 	sw	t0,400(a3)
    1d00:	8fbf0014 	lw	ra,20(sp)
    1d04:	27bd0018 	addiu	sp,sp,24
    1d08:	03e00008 	jr	ra
    1d0c:	00000000 	nop

00001d10 <func_8092E2E0>:
    1d10:	27bdffe0 	addiu	sp,sp,-32
    1d14:	afbf001c 	sw	ra,28(sp)
    1d18:	afa40020 	sw	a0,32(sp)
    1d1c:	afa50024 	sw	a1,36(sp)
    1d20:	0c000000 	jal	0 <BossSst_Init>
    1d24:	2484014c 	addiu	a0,a0,332
    1d28:	8fa30020 	lw	v1,32(sp)
    1d2c:	240e0100 	li	t6,256
    1d30:	24060004 	li	a2,4
    1d34:	846501a4 	lh	a1,420(v1)
    1d38:	afae0010 	sw	t6,16(sp)
    1d3c:	24070800 	li	a3,2048
    1d40:	0c000000 	jal	0 <BossSst_Init>
    1d44:	246400b6 	addiu	a0,v1,182
    1d48:	14400008 	bnez	v0,1d6c <func_8092E2E0+0x5c>
    1d4c:	3c040000 	lui	a0,0x0
    1d50:	0c000000 	jal	0 <BossSst_Init>
    1d54:	8c840000 	lw	a0,0(a0)
    1d58:	3c040000 	lui	a0,0x0
    1d5c:	0c000000 	jal	0 <BossSst_Init>
    1d60:	8c840000 	lw	a0,0(a0)
    1d64:	0c000000 	jal	0 <BossSst_Init>
    1d68:	8fa40020 	lw	a0,32(sp)
    1d6c:	8fbf001c 	lw	ra,28(sp)
    1d70:	27bd0020 	addiu	sp,sp,32
    1d74:	03e00008 	jr	ra
    1d78:	00000000 	nop

00001d7c <func_8092E34C>:
    1d7c:	27bdffe8 	addiu	sp,sp,-24
    1d80:	afbf0014 	sw	ra,20(sp)
    1d84:	00803825 	move	a3,a0
    1d88:	3c050601 	lui	a1,0x601
    1d8c:	24a5e7b8 	addiu	a1,a1,-6216
    1d90:	afa70018 	sw	a3,24(sp)
    1d94:	2484014c 	addiu	a0,a0,332
    1d98:	0c000000 	jal	0 <BossSst_Init>
    1d9c:	3c06c0a0 	lui	a2,0xc0a0
    1da0:	8fa70018 	lw	a3,24(sp)
    1da4:	3c180000 	lui	t8,0x0
    1da8:	27180000 	addiu	t8,t8,0
    1dac:	90ee06c5 	lbu	t6,1733(a3)
    1db0:	a0e00195 	sb	zero,405(a3)
    1db4:	acf80190 	sw	t8,400(a3)
    1db8:	35cf0001 	ori	t7,t6,0x1
    1dbc:	a0ef06c5 	sb	t7,1733(a3)
    1dc0:	8fbf0014 	lw	ra,20(sp)
    1dc4:	27bd0018 	addiu	sp,sp,24
    1dc8:	03e00008 	jr	ra
    1dcc:	00000000 	nop

00001dd0 <func_8092E3A0>:
    1dd0:	27bdffe8 	addiu	sp,sp,-24
    1dd4:	afa5001c 	sw	a1,28(sp)
    1dd8:	00802825 	move	a1,a0
    1ddc:	afbf0014 	sw	ra,20(sp)
    1de0:	afa40018 	sw	a0,24(sp)
    1de4:	afa50018 	sw	a1,24(sp)
    1de8:	0c000000 	jal	0 <BossSst_Init>
    1dec:	2484014c 	addiu	a0,a0,332
    1df0:	8fa50018 	lw	a1,24(sp)
    1df4:	80ae0195 	lb	t6,405(a1)
    1df8:	51c00004 	beqzl	t6,1e0c <func_8092E3A0+0x3c>
    1dfc:	8fbf0014 	lw	ra,20(sp)
    1e00:	0c000000 	jal	0 <BossSst_Init>
    1e04:	00a02025 	move	a0,a1
    1e08:	8fbf0014 	lw	ra,20(sp)
    1e0c:	27bd0018 	addiu	sp,sp,24
    1e10:	03e00008 	jr	ra
    1e14:	00000000 	nop

00001e18 <func_8092E3E8>:
    1e18:	27bdffe8 	addiu	sp,sp,-24
    1e1c:	afbf0014 	sw	ra,20(sp)
    1e20:	00803825 	move	a3,a0
    1e24:	3c050601 	lui	a1,0x601
    1e28:	24a5c288 	addiu	a1,a1,-15736
    1e2c:	afa70018 	sw	a3,24(sp)
    1e30:	2484014c 	addiu	a0,a0,332
    1e34:	0c000000 	jal	0 <BossSst_Init>
    1e38:	3c06c0a0 	lui	a2,0xc0a0
    1e3c:	8fa70018 	lw	a3,24(sp)
    1e40:	3c180000 	lui	t8,0x0
    1e44:	27180000 	addiu	t8,t8,0
    1e48:	90ee06c5 	lbu	t6,1733(a3)
    1e4c:	acf80190 	sw	t8,400(a3)
    1e50:	31cffffe 	andi	t7,t6,0xfffe
    1e54:	a0ef06c5 	sb	t7,1733(a3)
    1e58:	8fbf0014 	lw	ra,20(sp)
    1e5c:	27bd0018 	addiu	sp,sp,24
    1e60:	03e00008 	jr	ra
    1e64:	00000000 	nop

00001e68 <func_8092E438>:
    1e68:	27bdffe8 	addiu	sp,sp,-24
    1e6c:	afbf0014 	sw	ra,20(sp)
    1e70:	afa40018 	sw	a0,24(sp)
    1e74:	afa5001c 	sw	a1,28(sp)
    1e78:	0c000000 	jal	0 <BossSst_Init>
    1e7c:	2484014c 	addiu	a0,a0,332
    1e80:	50400004 	beqzl	v0,1e94 <func_8092E438+0x2c>
    1e84:	8fbf0014 	lw	ra,20(sp)
    1e88:	0c000000 	jal	0 <BossSst_Init>
    1e8c:	8fa40018 	lw	a0,24(sp)
    1e90:	8fbf0014 	lw	ra,20(sp)
    1e94:	27bd0018 	addiu	sp,sp,24
    1e98:	03e00008 	jr	ra
    1e9c:	00000000 	nop

00001ea0 <func_8092E470>:
    1ea0:	27bdffd8 	addiu	sp,sp,-40
    1ea4:	afb00020 	sw	s0,32(sp)
    1ea8:	00808025 	move	s0,a0
    1eac:	afbf0024 	sw	ra,36(sp)
    1eb0:	3c050601 	lui	a1,0x601
    1eb4:	24a5b6fc 	addiu	a1,a1,-18692
    1eb8:	2484014c 	addiu	a0,a0,332
    1ebc:	0c000000 	jal	0 <BossSst_Init>
    1ec0:	3c06c0a0 	lui	a2,0xc0a0
    1ec4:	3c040601 	lui	a0,0x601
    1ec8:	0c000000 	jal	0 <BossSst_Init>
    1ecc:	2484b6fc 	addiu	a0,a0,-18692
    1ed0:	02002025 	move	a0,s0
    1ed4:	00002825 	move	a1,zero
    1ed8:	240600ff 	li	a2,255
    1edc:	00003825 	move	a3,zero
    1ee0:	0c000000 	jal	0 <BossSst_Init>
    1ee4:	afa20010 	sw	v0,16(sp)
    1ee8:	920e03e4 	lbu	t6,996(s0)
    1eec:	921806c5 	lbu	t8,1733(s0)
    1ef0:	8e080004 	lw	t0,4(s0)
    1ef4:	2401ff7f 	li	at,-129
    1ef8:	31cffffc 	andi	t7,t6,0xfffc
    1efc:	3319fffe 	andi	t9,t8,0xfffe
    1f00:	01014824 	and	t1,t0,at
    1f04:	a20f03e4 	sb	t7,996(s0)
    1f08:	a21906c5 	sb	t9,1733(s0)
    1f0c:	a2000194 	sb	zero,404(s0)
    1f10:	ae090004 	sw	t1,4(s0)
    1f14:	02002025 	move	a0,s0
    1f18:	0c000000 	jal	0 <BossSst_Init>
    1f1c:	2405396e 	li	a1,14702
    1f20:	3c0a0000 	lui	t2,0x0
    1f24:	254a0000 	addiu	t2,t2,0
    1f28:	ae0a0190 	sw	t2,400(s0)
    1f2c:	8fbf0024 	lw	ra,36(sp)
    1f30:	8fb00020 	lw	s0,32(sp)
    1f34:	27bd0028 	addiu	sp,sp,40
    1f38:	03e00008 	jr	ra
    1f3c:	00000000 	nop

00001f40 <func_8092E510>:
    1f40:	27bdffc8 	addiu	sp,sp,-56
    1f44:	afb00020 	sw	s0,32(sp)
    1f48:	00808025 	move	s0,a0
    1f4c:	afbf0024 	sw	ra,36(sp)
    1f50:	afa5003c 	sw	a1,60(sp)
    1f54:	3c040000 	lui	a0,0x0
    1f58:	24840000 	addiu	a0,a0,0
    1f5c:	3c054416 	lui	a1,0x4416
    1f60:	0c000000 	jal	0 <BossSst_Init>
    1f64:	3c0641a0 	lui	a2,0x41a0
    1f68:	3c040000 	lui	a0,0x0
    1f6c:	24840000 	addiu	a0,a0,0
    1f70:	3c054416 	lui	a1,0x4416
    1f74:	0c000000 	jal	0 <BossSst_Init>
    1f78:	3c0641a0 	lui	a2,0x41a0
    1f7c:	3c040000 	lui	a0,0x0
    1f80:	24840000 	addiu	a0,a0,0
    1f84:	3c054348 	lui	a1,0x4348
    1f88:	0c000000 	jal	0 <BossSst_Init>
    1f8c:	3c0641a0 	lui	a2,0x41a0
    1f90:	3c040000 	lui	a0,0x0
    1f94:	24840000 	addiu	a0,a0,0
    1f98:	3c05c348 	lui	a1,0xc348
    1f9c:	0c000000 	jal	0 <BossSst_Init>
    1fa0:	3c0641a0 	lui	a2,0x41a0
    1fa4:	c6040060 	lwc1	$f4,96(s0)
    1fa8:	c606006c 	lwc1	$f6,108(s0)
    1fac:	2604014c 	addiu	a0,s0,332
    1fb0:	46062200 	add.s	$f8,$f4,$f6
    1fb4:	e6080060 	swc1	$f8,96(s0)
    1fb8:	0c000000 	jal	0 <BossSst_Init>
    1fbc:	afa40028 	sw	a0,40(sp)
    1fc0:	afa20030 	sw	v0,48(sp)
    1fc4:	3c0140c0 	lui	at,0x40c0
    1fc8:	c6000164 	lwc1	$f0,356(s0)
    1fcc:	44815000 	mtc1	at,$f10
    1fd0:	3c014130 	lui	at,0x4130
    1fd4:	460a003e 	c.le.s	$f0,$f10
    1fd8:	00000000 	nop
    1fdc:	45020016 	bc1fl	2038 <func_8092E510+0xf8>
    1fe0:	44819000 	mtc1	at,$f18
    1fe4:	3c010000 	lui	at,0x0
    1fe8:	c4300000 	lwc1	$f16,0(at)
    1fec:	46008302 	mul.s	$f12,$f16,$f0
    1ff0:	0c000000 	jal	0 <BossSst_Init>
    1ff4:	00000000 	nop
    1ff8:	3c014334 	lui	at,0x4334
    1ffc:	44812000 	mtc1	at,$f4
    2000:	3c0142c8 	lui	at,0x42c8
    2004:	44814000 	mtc1	at,$f8
    2008:	c612000c 	lwc1	$f18,12(s0)
    200c:	c6100028 	lwc1	$f16,40(s0)
    2010:	46080282 	mul.s	$f10,$f0,$f8
    2014:	46049181 	sub.s	$f6,$f18,$f4
    2018:	46065080 	add.s	$f2,$f10,$f6
    201c:	4602803c 	c.lt.s	$f16,$f2
    2020:	00000000 	nop
    2024:	45020029 	bc1fl	20cc <func_8092E510+0x18c>
    2028:	8fae0030 	lw	t6,48(sp)
    202c:	10000026 	b	20c8 <func_8092E510+0x188>
    2030:	e6020028 	swc1	$f2,40(s0)
    2034:	44819000 	mtc1	at,$f18
    2038:	3c014130 	lui	at,0x4130
    203c:	4612003e 	c.le.s	$f0,$f18
    2040:	00000000 	nop
    2044:	45020011 	bc1fl	208c <func_8092E510+0x14c>
    2048:	44814000 	mtc1	at,$f8
    204c:	3c010000 	lui	at,0x0
    2050:	c4240000 	lwc1	$f4,0(at)
    2054:	46002302 	mul.s	$f12,$f4,$f0
    2058:	0c000000 	jal	0 <BossSst_Init>
    205c:	00000000 	nop
    2060:	3c01437a 	lui	at,0x437a
    2064:	44815000 	mtc1	at,$f10
    2068:	3c01432a 	lui	at,0x432a
    206c:	44818000 	mtc1	at,$f16
    2070:	c608000c 	lwc1	$f8,12(s0)
    2074:	46100482 	mul.s	$f18,$f0,$f16
    2078:	460a4181 	sub.s	$f6,$f8,$f10
    207c:	46069100 	add.s	$f4,$f18,$f6
    2080:	10000011 	b	20c8 <func_8092E510+0x188>
    2084:	e6040028 	swc1	$f4,40(s0)
    2088:	44814000 	mtc1	at,$f8
    208c:	3c010000 	lui	at,0x0
    2090:	c4300000 	lwc1	$f16,0(at)
    2094:	46080281 	sub.s	$f10,$f0,$f8
    2098:	46105302 	mul.s	$f12,$f10,$f16
    209c:	0c000000 	jal	0 <BossSst_Init>
    20a0:	00000000 	nop
    20a4:	3c01437a 	lui	at,0x437a
    20a8:	44813000 	mtc1	at,$f6
    20ac:	3c014248 	lui	at,0x4248
    20b0:	44814000 	mtc1	at,$f8
    20b4:	c612000c 	lwc1	$f18,12(s0)
    20b8:	46080282 	mul.s	$f10,$f0,$f8
    20bc:	46069101 	sub.s	$f4,$f18,$f6
    20c0:	46045400 	add.s	$f16,$f10,$f4
    20c4:	e6100028 	swc1	$f16,40(s0)
    20c8:	8fae0030 	lw	t6,48(sp)
    20cc:	8fa40028 	lw	a0,40(sp)
    20d0:	55c00005 	bnezl	t6,20e8 <func_8092E510+0x1a8>
    20d4:	02002025 	move	a0,s0
    20d8:	0c000000 	jal	0 <BossSst_Init>
    20dc:	3c054130 	lui	a1,0x4130
    20e0:	10400003 	beqz	v0,20f0 <func_8092E510+0x1b0>
    20e4:	02002025 	move	a0,s0
    20e8:	0c000000 	jal	0 <BossSst_Init>
    20ec:	24053966 	li	a1,14694
    20f0:	3c01c3fa 	lui	at,0xc3fa
    20f4:	44810000 	mtc1	at,$f0
    20f8:	c61203c4 	lwc1	$f18,964(s0)
    20fc:	3c074248 	lui	a3,0x4248
    2100:	3c014040 	lui	at,0x4040
    2104:	4600903c 	c.lt.s	$f18,$f0
    2108:	26040068 	addiu	a0,s0,104
    210c:	24050000 	li	a1,0
    2110:	3c063f00 	lui	a2,0x3f00
    2114:	4502000b 	bc1fl	2144 <func_8092E510+0x204>
    2118:	44814000 	mtc1	at,$f8
    211c:	3c0140a0 	lui	at,0x40a0
    2120:	44813000 	mtc1	at,$f6
    2124:	44050000 	mfc1	a1,$f0
    2128:	260403c4 	addiu	a0,s0,964
    212c:	3c063f80 	lui	a2,0x3f80
    2130:	0c000000 	jal	0 <BossSst_Init>
    2134:	e7a60010 	swc1	$f6,16(sp)
    2138:	1000000a 	b	2164 <func_8092E510+0x224>
    213c:	3c0143c8 	lui	at,0x43c8
    2140:	44814000 	mtc1	at,$f8
    2144:	3c074170 	lui	a3,0x4170
    2148:	0c000000 	jal	0 <BossSst_Init>
    214c:	e7a80010 	swc1	$f8,16(sp)
    2150:	c60a03c4 	lwc1	$f10,964(s0)
    2154:	c6040068 	lwc1	$f4,104(s0)
    2158:	46045400 	add.s	$f16,$f10,$f4
    215c:	e61003c4 	swc1	$f16,964(s0)
    2160:	3c0143c8 	lui	at,0x43c8
    2164:	44811000 	mtc1	at,$f2
    2168:	c60003c4 	lwc1	$f0,964(s0)
    216c:	4600103c 	c.lt.s	$f2,$f0
    2170:	00000000 	nop
    2174:	45020004 	bc1fl	2188 <func_8092E510+0x248>
    2178:	e60003c4 	swc1	$f0,964(s0)
    217c:	10000002 	b	2188 <func_8092E510+0x248>
    2180:	e60203c4 	swc1	$f2,964(s0)
    2184:	e60003c4 	swc1	$f0,964(s0)
    2188:	c6120028 	lwc1	$f18,40(s0)
    218c:	c6060060 	lwc1	$f6,96(s0)
    2190:	46069200 	add.s	$f8,$f18,$f6
    2194:	e6080028 	swc1	$f8,40(s0)
    2198:	8faf0030 	lw	t7,48(sp)
    219c:	51e00004 	beqzl	t7,21b0 <func_8092E510+0x270>
    21a0:	8fbf0024 	lw	ra,36(sp)
    21a4:	0c000000 	jal	0 <BossSst_Init>
    21a8:	02002025 	move	a0,s0
    21ac:	8fbf0024 	lw	ra,36(sp)
    21b0:	8fb00020 	lw	s0,32(sp)
    21b4:	27bd0038 	addiu	sp,sp,56
    21b8:	03e00008 	jr	ra
    21bc:	00000000 	nop

000021c0 <func_8092E790>:
    21c0:	27bdffe8 	addiu	sp,sp,-24
    21c4:	afbf0014 	sw	ra,20(sp)
    21c8:	00803825 	move	a3,a0
    21cc:	3c050601 	lui	a1,0x601
    21d0:	24a5acd4 	addiu	a1,a1,-21292
    21d4:	afa70018 	sw	a3,24(sp)
    21d8:	2484014c 	addiu	a0,a0,332
    21dc:	0c000000 	jal	0 <BossSst_Init>
    21e0:	3c06c0a0 	lui	a2,0xc0a0
    21e4:	8fa70018 	lw	a3,24(sp)
    21e8:	44802000 	mtc1	zero,$f4
    21ec:	3c180fc0 	lui	t8,0xfc0
    21f0:	90ee06c5 	lbu	t6,1733(a3)
    21f4:	8ce203f0 	lw	v0,1008(a3)
    21f8:	37180702 	ori	t8,t8,0x702
    21fc:	35cf0001 	ori	t7,t6,0x1
    2200:	a0ef06c5 	sb	t7,1733(a3)
    2204:	acf806d4 	sw	t8,1748(a3)
    2208:	e4e40068 	swc1	$f4,104(a3)
    220c:	90590296 	lbu	t9,662(v0)
    2210:	3c0b0000 	lui	t3,0x0
    2214:	256b0000 	addiu	t3,t3,0
    2218:	37280005 	ori	t0,t9,0x5
    221c:	a0480296 	sb	t0,662(v0)
    2220:	8ce203f0 	lw	v0,1008(a3)
    2224:	3c0e0000 	lui	t6,0x0
    2228:	240d0032 	li	t5,50
    222c:	90490016 	lbu	t1,22(v0)
    2230:	25ce0000 	addiu	t6,t6,0
    2234:	312afffe 	andi	t2,t1,0xfffe
    2238:	a04a0016 	sb	t2,22(v0)
    223c:	8cec0190 	lw	t4,400(a3)
    2240:	516c0003 	beql	t3,t4,2250 <func_8092E790+0x90>
    2244:	acee0190 	sw	t6,400(a3)
    2248:	a4ed0198 	sh	t5,408(a3)
    224c:	acee0190 	sw	t6,400(a3)
    2250:	8fbf0014 	lw	ra,20(sp)
    2254:	27bd0018 	addiu	sp,sp,24
    2258:	03e00008 	jr	ra
    225c:	00000000 	nop

00002260 <func_8092E830>:
    2260:	27bdffe0 	addiu	sp,sp,-32
    2264:	afb00018 	sw	s0,24(sp)
    2268:	00808025 	move	s0,a0
    226c:	afbf001c 	sw	ra,28(sp)
    2270:	afa50024 	sw	a1,36(sp)
    2274:	0c000000 	jal	0 <BossSst_Init>
    2278:	2484014c 	addiu	a0,a0,332
    227c:	3c040000 	lui	a0,0x0
    2280:	24840000 	addiu	a0,a0,0
    2284:	3c054416 	lui	a1,0x4416
    2288:	0c000000 	jal	0 <BossSst_Init>
    228c:	3c0641a0 	lui	a2,0x41a0
    2290:	3c040000 	lui	a0,0x0
    2294:	24840000 	addiu	a0,a0,0
    2298:	3c054416 	lui	a1,0x4416
    229c:	0c000000 	jal	0 <BossSst_Init>
    22a0:	3c0641a0 	lui	a2,0x41a0
    22a4:	3c040000 	lui	a0,0x0
    22a8:	24840000 	addiu	a0,a0,0
    22ac:	3c054348 	lui	a1,0x4348
    22b0:	0c000000 	jal	0 <BossSst_Init>
    22b4:	3c0641a0 	lui	a2,0x41a0
    22b8:	3c040000 	lui	a0,0x0
    22bc:	24840000 	addiu	a0,a0,0
    22c0:	3c05c348 	lui	a1,0xc348
    22c4:	0c000000 	jal	0 <BossSst_Init>
    22c8:	3c0641a0 	lui	a2,0x41a0
    22cc:	8e0e0004 	lw	t6,4(s0)
    22d0:	24012000 	li	at,8192
    22d4:	31cf2000 	andi	t7,t6,0x2000
    22d8:	55e1000e 	bnel	t7,at,2314 <func_8092E830+0xb4>
    22dc:	86020198 	lh	v0,408(s0)
    22e0:	86180198 	lh	t8,408(s0)
    22e4:	24080032 	li	t0,50
    22e8:	27190002 	addiu	t9,t8,2
    22ec:	a6190198 	sh	t9,408(s0)
    22f0:	86020198 	lh	v0,408(s0)
    22f4:	28410033 	slti	at,v0,51
    22f8:	14200003 	bnez	at,2308 <func_8092E830+0xa8>
    22fc:	00000000 	nop
    2300:	10000012 	b	234c <func_8092E830+0xec>
    2304:	a6080198 	sh	t0,408(s0)
    2308:	10000010 	b	234c <func_8092E830+0xec>
    230c:	a6020198 	sh	v0,408(s0)
    2310:	86020198 	lh	v0,408(s0)
    2314:	3c040000 	lui	a0,0x0
    2318:	10400003 	beqz	v0,2328 <func_8092E830+0xc8>
    231c:	2449ffff 	addiu	t1,v0,-1
    2320:	a6090198 	sh	t1,408(s0)
    2324:	86020198 	lh	v0,408(s0)
    2328:	54400009 	bnezl	v0,2350 <func_8092E830+0xf0>
    232c:	8fbf001c 	lw	ra,28(sp)
    2330:	0c000000 	jal	0 <BossSst_Init>
    2334:	8c840000 	lw	a0,0(a0)
    2338:	3c040000 	lui	a0,0x0
    233c:	0c000000 	jal	0 <BossSst_Init>
    2340:	8c840000 	lw	a0,0(a0)
    2344:	0c000000 	jal	0 <BossSst_Init>
    2348:	02002025 	move	a0,s0
    234c:	8fbf001c 	lw	ra,28(sp)
    2350:	8fb00018 	lw	s0,24(sp)
    2354:	27bd0020 	addiu	sp,sp,32
    2358:	03e00008 	jr	ra
    235c:	00000000 	nop

00002360 <func_8092E930>:
    2360:	27bdffd8 	addiu	sp,sp,-40
    2364:	afb00020 	sw	s0,32(sp)
    2368:	00808025 	move	s0,a0
    236c:	afbf0024 	sw	ra,36(sp)
    2370:	3c050601 	lui	a1,0x601
    2374:	24a5cc6c 	addiu	a1,a1,-13204
    2378:	2484014c 	addiu	a0,a0,332
    237c:	0c000000 	jal	0 <BossSst_Init>
    2380:	3c06c040 	lui	a2,0xc040
    2384:	3c040601 	lui	a0,0x601
    2388:	0c000000 	jal	0 <BossSst_Init>
    238c:	2484cc6c 	addiu	a0,a0,-13204
    2390:	02002025 	move	a0,s0
    2394:	24054000 	li	a1,16384
    2398:	240600ff 	li	a2,255
    239c:	00003825 	move	a3,zero
    23a0:	0c000000 	jal	0 <BossSst_Init>
    23a4:	afa20010 	sw	v0,16(sp)
    23a8:	3c040601 	lui	a0,0x601
    23ac:	0c000000 	jal	0 <BossSst_Init>
    23b0:	2484cc6c 	addiu	a0,a0,-13204
    23b4:	3c040000 	lui	a0,0x0
    23b8:	8c840000 	lw	a0,0(a0)
    23bc:	24054000 	li	a1,16384
    23c0:	240600ff 	li	a2,255
    23c4:	00003825 	move	a3,zero
    23c8:	0c000000 	jal	0 <BossSst_Init>
    23cc:	afa20010 	sw	v0,16(sp)
    23d0:	3c040601 	lui	a0,0x601
    23d4:	0c000000 	jal	0 <BossSst_Init>
    23d8:	2484cc6c 	addiu	a0,a0,-13204
    23dc:	3c040000 	lui	a0,0x0
    23e0:	8c840000 	lw	a0,0(a0)
    23e4:	24054000 	li	a1,16384
    23e8:	240600ff 	li	a2,255
    23ec:	00003825 	move	a3,zero
    23f0:	0c000000 	jal	0 <BossSst_Init>
    23f4:	afa20010 	sw	v0,16(sp)
    23f8:	920e06c5 	lbu	t6,1733(s0)
    23fc:	02002025 	move	a0,s0
    2400:	24053969 	li	a1,14697
    2404:	31cffffe 	andi	t7,t6,0xfffe
    2408:	0c000000 	jal	0 <BossSst_Init>
    240c:	a20f06c5 	sb	t7,1733(s0)
    2410:	3c180000 	lui	t8,0x0
    2414:	27180000 	addiu	t8,t8,0
    2418:	ae180190 	sw	t8,400(s0)
    241c:	8fbf0024 	lw	ra,36(sp)
    2420:	8fb00020 	lw	s0,32(sp)
    2424:	27bd0028 	addiu	sp,sp,40
    2428:	03e00008 	jr	ra
    242c:	00000000 	nop

00002430 <func_8092EA00>:
    2430:	27bdffe8 	addiu	sp,sp,-24
    2434:	afbf0014 	sw	ra,20(sp)
    2438:	afa40018 	sw	a0,24(sp)
    243c:	afa5001c 	sw	a1,28(sp)
    2440:	84820198 	lh	v0,408(a0)
    2444:	00802825 	move	a1,a0
    2448:	10400002 	beqz	v0,2454 <func_8092EA00+0x24>
    244c:	244effff 	addiu	t6,v0,-1
    2450:	a48e0198 	sh	t6,408(a0)
    2454:	24a4014c 	addiu	a0,a1,332
    2458:	0c000000 	jal	0 <BossSst_Init>
    245c:	afa50018 	sw	a1,24(sp)
    2460:	10400003 	beqz	v0,2470 <func_8092EA00+0x40>
    2464:	8fa50018 	lw	a1,24(sp)
    2468:	0c000000 	jal	0 <BossSst_Init>
    246c:	00a02025 	move	a0,a1
    2470:	8fbf0014 	lw	ra,20(sp)
    2474:	27bd0018 	addiu	sp,sp,24
    2478:	03e00008 	jr	ra
    247c:	00000000 	nop

00002480 <func_8092EA50>:
    2480:	27bdffe8 	addiu	sp,sp,-24
    2484:	afbf0014 	sw	ra,20(sp)
    2488:	00803825 	move	a3,a0
    248c:	3c050601 	lui	a1,0x601
    2490:	24a5d458 	addiu	a1,a1,-11176
    2494:	afa70018 	sw	a3,24(sp)
    2498:	2484014c 	addiu	a0,a0,332
    249c:	0c000000 	jal	0 <BossSst_Init>
    24a0:	3c06c0a0 	lui	a2,0xc0a0
    24a4:	8fa70018 	lw	a3,24(sp)
    24a8:	3c18ffcf 	lui	t8,0xffcf
    24ac:	3718ffff 	ori	t8,t8,0xffff
    24b0:	90ee06c5 	lbu	t6,1733(a3)
    24b4:	8ce203f0 	lw	v0,1008(a3)
    24b8:	acf806d4 	sw	t8,1748(a3)
    24bc:	31cffffe 	andi	t7,t6,0xfffe
    24c0:	a0ef06c5 	sb	t7,1733(a3)
    24c4:	90590296 	lbu	t9,662(v0)
    24c8:	3c0140a0 	lui	at,0x40a0
    24cc:	44812000 	mtc1	at,$f4
    24d0:	3328fffa 	andi	t0,t9,0xfffa
    24d4:	a0480296 	sb	t0,662(v0)
    24d8:	8ce203f0 	lw	v0,1008(a3)
    24dc:	3c0c0000 	lui	t4,0x0
    24e0:	240b0001 	li	t3,1
    24e4:	90490016 	lbu	t1,22(v0)
    24e8:	258c0000 	addiu	t4,t4,0
    24ec:	352a0001 	ori	t2,t1,0x1
    24f0:	a04a0016 	sb	t2,22(v0)
    24f4:	a0eb0194 	sb	t3,404(a3)
    24f8:	acec0190 	sw	t4,400(a3)
    24fc:	e4e40068 	swc1	$f4,104(a3)
    2500:	8fbf0014 	lw	ra,20(sp)
    2504:	27bd0018 	addiu	sp,sp,24
    2508:	03e00008 	jr	ra
    250c:	00000000 	nop

00002510 <func_8092EAE0>:
    2510:	27bdffc8 	addiu	sp,sp,-56
    2514:	afb00020 	sw	s0,32(sp)
    2518:	00808025 	move	s0,a0
    251c:	afbf0024 	sw	ra,36(sp)
    2520:	afa5003c 	sw	a1,60(sp)
    2524:	0c000000 	jal	0 <BossSst_Init>
    2528:	2484014c 	addiu	a0,a0,332
    252c:	3c014120 	lui	at,0x4120
    2530:	afa20034 	sw	v0,52(sp)
    2534:	44811000 	mtc1	at,$f2
    2538:	c6000164 	lwc1	$f0,356(s0)
    253c:	3c05c422 	lui	a1,0xc422
    2540:	3c014248 	lui	at,0x4248
    2544:	4602003c 	c.lt.s	$f0,$f2
    2548:	34a58000 	ori	a1,a1,0x8000
    254c:	260403c4 	addiu	a0,s0,964
    2550:	3c063f80 	lui	a2,0x3f80
    2554:	45020018 	bc1fl	25b8 <func_8092EAE0+0xa8>
    2558:	44816000 	mtc1	at,$f12
    255c:	c6040028 	lwc1	$f4,40(s0)
    2560:	3c020000 	lui	v0,0x0
    2564:	24420000 	addiu	v0,v0,0
    2568:	46022180 	add.s	$f6,$f4,$f2
    256c:	3c014000 	lui	at,0x4000
    2570:	44812000 	mtc1	at,$f4
    2574:	3c05c43b 	lui	a1,0xc43b
    2578:	e6060028 	swc1	$f6,40(s0)
    257c:	c4480004 	lwc1	$f8,4(v0)
    2580:	c4500010 	lwc1	$f16,16(v0)
    2584:	34a58000 	ori	a1,a1,0x8000
    2588:	46024281 	sub.s	$f10,$f8,$f2
    258c:	260403c4 	addiu	a0,s0,964
    2590:	3c063f80 	lui	a2,0x3f80
    2594:	46028481 	sub.s	$f18,$f16,$f2
    2598:	e44a0004 	swc1	$f10,4(v0)
    259c:	e4520010 	swc1	$f18,16(v0)
    25a0:	8e070068 	lw	a3,104(s0)
    25a4:	0c000000 	jal	0 <BossSst_Init>
    25a8:	e7a40010 	swc1	$f4,16(sp)
    25ac:	10000021 	b	2634 <func_8092EAE0+0x124>
    25b0:	8fae0034 	lw	t6,52(sp)
    25b4:	44816000 	mtc1	at,$f12
    25b8:	3c013fa0 	lui	at,0x3fa0
    25bc:	44814000 	mtc1	at,$f8
    25c0:	c6060068 	lwc1	$f6,104(s0)
    25c4:	3c014000 	lui	at,0x4000
    25c8:	44818000 	mtc1	at,$f16
    25cc:	46083282 	mul.s	$f10,$f6,$f8
    25d0:	e60a0068 	swc1	$f10,104(s0)
    25d4:	c6000068 	lwc1	$f0,104(s0)
    25d8:	4600603c 	c.lt.s	$f12,$f0
    25dc:	00000000 	nop
    25e0:	45020004 	bc1fl	25f4 <func_8092EAE0+0xe4>
    25e4:	e6000068 	swc1	$f0,104(s0)
    25e8:	10000002 	b	25f4 <func_8092EAE0+0xe4>
    25ec:	e60c0068 	swc1	$f12,104(s0)
    25f0:	e6000068 	swc1	$f0,104(s0)
    25f4:	8e070068 	lw	a3,104(s0)
    25f8:	0c000000 	jal	0 <BossSst_Init>
    25fc:	e7b00010 	swc1	$f16,16(sp)
    2600:	3c014040 	lui	at,0x4040
    2604:	44819000 	mtc1	at,$f18
    2608:	e7a0002c 	swc1	$f0,44(sp)
    260c:	8e05000c 	lw	a1,12(s0)
    2610:	26040028 	addiu	a0,s0,40
    2614:	3c063f00 	lui	a2,0x3f00
    2618:	3c0741f0 	lui	a3,0x41f0
    261c:	0c000000 	jal	0 <BossSst_Init>
    2620:	e7b20010 	swc1	$f18,16(sp)
    2624:	c7a4002c 	lwc1	$f4,44(sp)
    2628:	46002180 	add.s	$f6,$f4,$f0
    262c:	e7a6002c 	swc1	$f6,44(sp)
    2630:	8fae0034 	lw	t6,52(sp)
    2634:	c7a8002c 	lwc1	$f8,44(sp)
    2638:	3c014120 	lui	at,0x4120
    263c:	51c00015 	beqzl	t6,2694 <func_8092EAE0+0x184>
    2640:	8fbf0024 	lw	ra,36(sp)
    2644:	44815000 	mtc1	at,$f10
    2648:	00000000 	nop
    264c:	460a403c 	c.lt.s	$f8,$f10
    2650:	00000000 	nop
    2654:	4502000f 	bc1fl	2694 <func_8092EAE0+0x184>
    2658:	8fbf0024 	lw	ra,36(sp)
    265c:	c610000c 	lwc1	$f16,12(s0)
    2660:	3c010000 	lui	at,0x0
    2664:	3c040000 	lui	a0,0x0
    2668:	e6100028 	swc1	$f16,40(s0)
    266c:	c4320000 	lwc1	$f18,0(at)
    2670:	e61203c4 	swc1	$f18,964(s0)
    2674:	0c000000 	jal	0 <BossSst_Init>
    2678:	8c840000 	lw	a0,0(a0)
    267c:	3c040000 	lui	a0,0x0
    2680:	0c000000 	jal	0 <BossSst_Init>
    2684:	8c840000 	lw	a0,0(a0)
    2688:	0c000000 	jal	0 <BossSst_Init>
    268c:	02002025 	move	a0,s0
    2690:	8fbf0024 	lw	ra,36(sp)
    2694:	8fb00020 	lw	s0,32(sp)
    2698:	27bd0038 	addiu	sp,sp,56
    269c:	03e00008 	jr	ra
    26a0:	00000000 	nop

000026a4 <func_8092EC74>:
    26a4:	27bdffd8 	addiu	sp,sp,-40
    26a8:	afbf0014 	sw	ra,20(sp)
    26ac:	10a00016 	beqz	a1,2708 <func_8092EC74+0x64>
    26b0:	afa5002c 	sw	a1,44(sp)
    26b4:	00053080 	sll	a2,a1,0x2
    26b8:	00c53023 	subu	a2,a2,a1
    26bc:	00063080 	sll	a2,a2,0x2
    26c0:	3c180000 	lui	t8,0x0
    26c4:	27180000 	addiu	t8,t8,0
    26c8:	24cffff4 	addiu	t7,a2,-12
    26cc:	3c040000 	lui	a0,0x0
    26d0:	24840000 	addiu	a0,a0,0
    26d4:	01f82821 	addu	a1,t7,t8
    26d8:	afa6001c 	sw	a2,28(sp)
    26dc:	0c000000 	jal	0 <BossSst_Init>
    26e0:	e7ac0028 	swc1	$f12,40(sp)
    26e4:	8fa6001c 	lw	a2,28(sp)
    26e8:	3c080000 	lui	t0,0x0
    26ec:	25080000 	addiu	t0,t0,0
    26f0:	3c040000 	lui	a0,0x0
    26f4:	24d9fff4 	addiu	t9,a2,-12
    26f8:	03282821 	addu	a1,t9,t0
    26fc:	0c000000 	jal	0 <BossSst_Init>
    2700:	24840000 	addiu	a0,a0,0
    2704:	c7ac0028 	lwc1	$f12,40(sp)
    2708:	8fa1002c 	lw	at,44(sp)
    270c:	3c090000 	lui	t1,0x0
    2710:	3c040000 	lui	a0,0x0
    2714:	00013080 	sll	a2,at,0x2
    2718:	00c13023 	subu	a2,a2,at
    271c:	00063080 	sll	a2,a2,0x2
    2720:	25290000 	addiu	t1,t1,0
    2724:	24840000 	addiu	a0,a0,0
    2728:	00c91021 	addu	v0,a2,t1
    272c:	c4440000 	lwc1	$f4,0(v0)
    2730:	c4860000 	lwc1	$f6,0(a0)
    2734:	3c010000 	lui	at,0x0
    2738:	3c0a0000 	lui	t2,0x0
    273c:	46062201 	sub.s	$f8,$f4,$f6
    2740:	3c050000 	lui	a1,0x0
    2744:	254a0000 	addiu	t2,t2,0
    2748:	24a50000 	addiu	a1,a1,0
    274c:	460c4282 	mul.s	$f10,$f8,$f12
    2750:	00ca1821 	addu	v1,a2,t2
    2754:	8fbf0014 	lw	ra,20(sp)
    2758:	e42a0000 	swc1	$f10,0(at)
    275c:	c4920004 	lwc1	$f18,4(a0)
    2760:	c4500004 	lwc1	$f16,4(v0)
    2764:	46128101 	sub.s	$f4,$f16,$f18
    2768:	460c2182 	mul.s	$f6,$f4,$f12
    276c:	e4260000 	swc1	$f6,0(at)
    2770:	c48a0008 	lwc1	$f10,8(a0)
    2774:	c4480008 	lwc1	$f8,8(v0)
    2778:	460a4401 	sub.s	$f16,$f8,$f10
    277c:	460c8482 	mul.s	$f18,$f16,$f12
    2780:	e4320000 	swc1	$f18,0(at)
    2784:	c4a60000 	lwc1	$f6,0(a1)
    2788:	c4640000 	lwc1	$f4,0(v1)
    278c:	3c010000 	lui	at,0x0
    2790:	46062201 	sub.s	$f8,$f4,$f6
    2794:	460c4282 	mul.s	$f10,$f8,$f12
    2798:	e42a0000 	swc1	$f10,0(at)
    279c:	c4b20004 	lwc1	$f18,4(a1)
    27a0:	c4700004 	lwc1	$f16,4(v1)
    27a4:	46128101 	sub.s	$f4,$f16,$f18
    27a8:	460c2182 	mul.s	$f6,$f4,$f12
    27ac:	e4260000 	swc1	$f6,0(at)
    27b0:	c4aa0008 	lwc1	$f10,8(a1)
    27b4:	c4680008 	lwc1	$f8,8(v1)
    27b8:	27bd0028 	addiu	sp,sp,40
    27bc:	460a4401 	sub.s	$f16,$f8,$f10
    27c0:	460c8482 	mul.s	$f18,$f16,$f12
    27c4:	03e00008 	jr	ra
    27c8:	e4320000 	swc1	$f18,0(at)

000027cc <func_8092ED9C>:
    27cc:	3c020000 	lui	v0,0x0
    27d0:	3c030000 	lui	v1,0x0
    27d4:	24420000 	addiu	v0,v0,0
    27d8:	c4520000 	lwc1	$f18,0(v0)
    27dc:	c4500004 	lwc1	$f16,4(v0)
    27e0:	c44e0008 	lwc1	$f14,8(v0)
    27e4:	3c060000 	lui	a2,0x0
    27e8:	24630000 	addiu	v1,v1,0
    27ec:	c46c0000 	lwc1	$f12,0(v1)
    27f0:	c46a0004 	lwc1	$f10,4(v1)
    27f4:	c4680008 	lwc1	$f8,8(v1)
    27f8:	3c070000 	lui	a3,0x0
    27fc:	24c60000 	addiu	a2,a2,0
    2800:	c4c60000 	lwc1	$f6,0(a2)
    2804:	c4c40004 	lwc1	$f4,4(a2)
    2808:	c4c20008 	lwc1	$f2,8(a2)
    280c:	46069180 	add.s	$f6,$f18,$f6
    2810:	24e70000 	addiu	a3,a3,0
    2814:	c4f20000 	lwc1	$f18,0(a3)
    2818:	46048100 	add.s	$f4,$f16,$f4
    281c:	c4f00004 	lwc1	$f16,4(a3)
    2820:	27bdffb8 	addiu	sp,sp,-72
    2824:	46027080 	add.s	$f2,$f14,$f2
    2828:	c4ee0008 	lwc1	$f14,8(a3)
    282c:	afb00018 	sw	s0,24(sp)
    2830:	46126480 	add.s	$f18,$f12,$f18
    2834:	afbf001c 	sw	ra,28(sp)
    2838:	00808025 	move	s0,a0
    283c:	46105400 	add.s	$f16,$f10,$f16
    2840:	afa5004c 	sw	a1,76(sp)
    2844:	e4460000 	swc1	$f6,0(v0)
    2848:	460e4380 	add.s	$f14,$f8,$f14
    284c:	e4440004 	swc1	$f4,4(v0)
    2850:	e4420008 	swc1	$f2,8(v0)
    2854:	e4720000 	swc1	$f18,0(v1)
    2858:	e4700004 	swc1	$f16,4(v1)
    285c:	e46e0008 	swc1	$f14,8(v1)
    2860:	0c000000 	jal	0 <BossSst_Init>
    2864:	848400b6 	lh	a0,182(a0)
    2868:	860400b6 	lh	a0,182(s0)
    286c:	0c000000 	jal	0 <BossSst_Init>
    2870:	e7a0002c 	swc1	$f0,44(sp)
    2874:	3c020000 	lui	v0,0x0
    2878:	24420000 	addiu	v0,v0,0
    287c:	c7b2002c 	lwc1	$f18,44(sp)
    2880:	c44c0008 	lwc1	$f12,8(v0)
    2884:	c4420000 	lwc1	$f2,0(v0)
    2888:	c6080024 	lwc1	$f8,36(s0)
    288c:	46126282 	mul.s	$f10,$f12,$f18
    2890:	3c01430c 	lui	at,0x430c
    2894:	3c030000 	lui	v1,0x0
    2898:	46001182 	mul.s	$f6,$f2,$f0
    289c:	24630000 	addiu	v1,v1,0
    28a0:	c4700008 	lwc1	$f16,8(v1)
    28a4:	c46e0000 	lwc1	$f14,0(v1)
    28a8:	3c050000 	lui	a1,0x0
    28ac:	460a4100 	add.s	$f4,$f8,$f10
    28b0:	84a50000 	lh	a1,0(a1)
    28b4:	8fa4004c 	lw	a0,76(sp)
    28b8:	27a6003c 	addiu	a2,sp,60
    28bc:	46062200 	add.s	$f8,$f4,$f6
    28c0:	44812000 	mtc1	at,$f4
    28c4:	27a70030 	addiu	a3,sp,48
    28c8:	e7a8003c 	swc1	$f8,60(sp)
    28cc:	c60a000c 	lwc1	$f10,12(s0)
    28d0:	c4480004 	lwc1	$f8,4(v0)
    28d4:	46045181 	sub.s	$f6,$f10,$f4
    28d8:	46083280 	add.s	$f10,$f6,$f8
    28dc:	46006182 	mul.s	$f6,$f12,$f0
    28e0:	e7aa0040 	swc1	$f10,64(sp)
    28e4:	46121282 	mul.s	$f10,$f2,$f18
    28e8:	c604002c 	lwc1	$f4,44(s0)
    28ec:	46062200 	add.s	$f8,$f4,$f6
    28f0:	460a4101 	sub.s	$f4,$f8,$f10
    28f4:	46128202 	mul.s	$f8,$f16,$f18
    28f8:	e7a40044 	swc1	$f4,68(sp)
    28fc:	46007102 	mul.s	$f4,$f14,$f0
    2900:	c6060024 	lwc1	$f6,36(s0)
    2904:	46083280 	add.s	$f10,$f6,$f8
    2908:	46045180 	add.s	$f6,$f10,$f4
    290c:	44815000 	mtc1	at,$f10
    2910:	e7a60030 	swc1	$f6,48(sp)
    2914:	c608000c 	lwc1	$f8,12(s0)
    2918:	c4660004 	lwc1	$f6,4(v1)
    291c:	460a4101 	sub.s	$f4,$f8,$f10
    2920:	46062200 	add.s	$f8,$f4,$f6
    2924:	46008102 	mul.s	$f4,$f16,$f0
    2928:	e7a80034 	swc1	$f8,52(sp)
    292c:	46127202 	mul.s	$f8,$f14,$f18
    2930:	c60a002c 	lwc1	$f10,44(s0)
    2934:	46045180 	add.s	$f6,$f10,$f4
    2938:	46083281 	sub.s	$f10,$f6,$f8
    293c:	0c000000 	jal	0 <BossSst_Init>
    2940:	e7aa0038 	swc1	$f10,56(sp)
    2944:	8fbf001c 	lw	ra,28(sp)
    2948:	8fb00018 	lw	s0,24(sp)
    294c:	27bd0048 	addiu	sp,sp,72
    2950:	03e00008 	jr	ra
    2954:	00000000 	nop

00002958 <func_8092EF28>:
    2958:	27bdffd0 	addiu	sp,sp,-48
    295c:	afbf0024 	sw	ra,36(sp)
    2960:	afb10020 	sw	s1,32(sp)
    2964:	afb0001c 	sw	s0,28(sp)
    2968:	8cae1c44 	lw	t6,7236(a1)
    296c:	00a08025 	move	s0,a1
    2970:	00808825 	move	s1,a0
    2974:	3c050601 	lui	a1,0x601
    2978:	24a5e7b8 	addiu	a1,a1,-6216
    297c:	2484014c 	addiu	a0,a0,332
    2980:	3c06c0a0 	lui	a2,0xc0a0
    2984:	0c000000 	jal	0 <BossSst_Init>
    2988:	afae002c 	sw	t6,44(sp)
    298c:	02202025 	move	a0,s1
    2990:	0c000000 	jal	0 <BossSst_Init>
    2994:	2405396f 	li	a1,14703
    2998:	240f003c 	li	t7,60
    299c:	afaf0010 	sw	t7,16(sp)
    29a0:	02202025 	move	a0,s1
    29a4:	24054000 	li	a1,16384
    29a8:	240600ff 	li	a2,255
    29ac:	0c000000 	jal	0 <BossSst_Init>
    29b0:	00003825 	move	a3,zero
    29b4:	3c040000 	lui	a0,0x0
    29b8:	2418003c 	li	t8,60
    29bc:	afb80010 	sw	t8,16(sp)
    29c0:	8c840000 	lw	a0,0(a0)
    29c4:	24054000 	li	a1,16384
    29c8:	240600ff 	li	a2,255
    29cc:	0c000000 	jal	0 <BossSst_Init>
    29d0:	00003825 	move	a3,zero
    29d4:	3c040000 	lui	a0,0x0
    29d8:	2419003c 	li	t9,60
    29dc:	afb90010 	sw	t9,16(sp)
    29e0:	8c840000 	lw	a0,0(a0)
    29e4:	24054000 	li	a1,16384
    29e8:	240600ff 	li	a2,255
    29ec:	0c000000 	jal	0 <BossSst_Init>
    29f0:	00003825 	move	a3,zero
    29f4:	922906c5 	lbu	t1,1733(s1)
    29f8:	922b03e6 	lbu	t3,998(s1)
    29fc:	3c060000 	lui	a2,0x0
    2a00:	2408003c 	li	t0,60
    2a04:	312afffe 	andi	t2,t1,0xfffe
    2a08:	316cfffe 	andi	t4,t3,0xfffe
    2a0c:	24c60000 	addiu	a2,a2,0
    2a10:	a6280198 	sh	t0,408(s1)
    2a14:	a22a06c5 	sb	t2,1733(s1)
    2a18:	a22c03e6 	sb	t4,998(s1)
    2a1c:	8cc20000 	lw	v0,0(a2)
    2a20:	3c041001 	lui	a0,0x1001
    2a24:	348400ff 	ori	a0,a0,0xff
    2a28:	904d03e6 	lbu	t5,998(v0)
    2a2c:	31aefffe 	andi	t6,t5,0xfffe
    2a30:	a04e03e6 	sb	t6,998(v0)
    2a34:	8cc30004 	lw	v1,4(a2)
    2a38:	906f03e6 	lbu	t7,998(v1)
    2a3c:	31f8fffe 	andi	t8,t7,0xfffe
    2a40:	0c000000 	jal	0 <BossSst_Init>
    2a44:	a07803e6 	sb	t8,998(v1)
    2a48:	0c000000 	jal	0 <BossSst_Init>
    2a4c:	02002025 	move	a0,s0
    2a50:	3c010000 	lui	at,0x0
    2a54:	a4220000 	sh	v0,0(at)
    2a58:	02002025 	move	a0,s0
    2a5c:	00002825 	move	a1,zero
    2a60:	0c000000 	jal	0 <BossSst_Init>
    2a64:	24060001 	li	a2,1
    2a68:	3c050000 	lui	a1,0x0
    2a6c:	84a50000 	lh	a1,0(a1)
    2a70:	02002025 	move	a0,s0
    2a74:	0c000000 	jal	0 <BossSst_Init>
    2a78:	24060007 	li	a2,7
    2a7c:	3c050000 	lui	a1,0x0
    2a80:	84a50000 	lh	a1,0(a1)
    2a84:	02002025 	move	a0,s0
    2a88:	0c000000 	jal	0 <BossSst_Init>
    2a8c:	00003025 	move	a2,zero
    2a90:	02002025 	move	a0,s0
    2a94:	8fa5002c 	lw	a1,44(sp)
    2a98:	0c000000 	jal	0 <BossSst_Init>
    2a9c:	24060008 	li	a2,8
    2aa0:	02002025 	move	a0,s0
    2aa4:	0c000000 	jal	0 <BossSst_Init>
    2aa8:	26051d64 	addiu	a1,s0,7524
    2aac:	861907a0 	lh	t9,1952(s0)
    2ab0:	3c040000 	lui	a0,0x0
    2ab4:	24840000 	addiu	a0,a0,0
    2ab8:	00194080 	sll	t0,t9,0x2
    2abc:	02084821 	addu	t1,s0,t0
    2ac0:	8d250790 	lw	a1,1936(t1)
    2ac4:	0c000000 	jal	0 <BossSst_Init>
    2ac8:	24a5005c 	addiu	a1,a1,92
    2acc:	3c0a0000 	lui	t2,0x0
    2ad0:	254a0000 	addiu	t2,t2,0
    2ad4:	ae2a0190 	sw	t2,400(s1)
    2ad8:	8fbf0024 	lw	ra,36(sp)
    2adc:	8fb10020 	lw	s1,32(sp)
    2ae0:	8fb0001c 	lw	s0,28(sp)
    2ae4:	03e00008 	jr	ra
    2ae8:	27bd0030 	addiu	sp,sp,48

00002aec <func_8092F0BC>:
    2aec:	27bdffd8 	addiu	sp,sp,-40
    2af0:	afb00014 	sw	s0,20(sp)
    2af4:	00808025 	move	s0,a0
    2af8:	afbf001c 	sw	ra,28(sp)
    2afc:	afb10018 	sw	s1,24(sp)
    2b00:	00a08825 	move	s1,a1
    2b04:	0c000000 	jal	0 <BossSst_Init>
    2b08:	2484014c 	addiu	a0,a0,332
    2b0c:	86030198 	lh	v1,408(s0)
    2b10:	3c01430c 	lui	at,0x430c
    2b14:	44813000 	mtc1	at,$f6
    2b18:	10600002 	beqz	v1,2b24 <func_8092F0BC+0x38>
    2b1c:	246effff 	addiu	t6,v1,-1
    2b20:	a60e0198 	sh	t6,408(s0)
    2b24:	c604000c 	lwc1	$f4,12(s0)
    2b28:	26040028 	addiu	a0,s0,40
    2b2c:	3c0641a0 	lui	a2,0x41a0
    2b30:	46062201 	sub.s	$f8,$f4,$f6
    2b34:	44054000 	mfc1	a1,$f8
    2b38:	0c000000 	jal	0 <BossSst_Init>
    2b3c:	00000000 	nop
    2b40:	86030198 	lh	v1,408(s0)
    2b44:	1460000b 	bnez	v1,2b74 <func_8092F0BC+0x88>
    2b48:	28610031 	slti	at,v1,49
    2b4c:	3c110000 	lui	s1,0x0
    2b50:	26310000 	addiu	s1,s1,0
    2b54:	0c000000 	jal	0 <BossSst_Init>
    2b58:	8e240000 	lw	a0,0(s1)
    2b5c:	0c000000 	jal	0 <BossSst_Init>
    2b60:	8e240004 	lw	a0,4(s1)
    2b64:	0c000000 	jal	0 <BossSst_Init>
    2b68:	02002025 	move	a0,s0
    2b6c:	1000006f 	b	2d2c <func_8092F0BC+0x240>
    2b70:	8fbf001c 	lw	ra,28(sp)
    2b74:	1420000d 	bnez	at,2bac <func_8092F0BC+0xc0>
    2b78:	02202025 	move	a0,s1
    2b7c:	3c050000 	lui	a1,0x0
    2b80:	3c070000 	lui	a3,0x0
    2b84:	24e70000 	addiu	a3,a3,0
    2b88:	84a50000 	lh	a1,0(a1)
    2b8c:	0c000000 	jal	0 <BossSst_Init>
    2b90:	26060038 	addiu	a2,s0,56
    2b94:	260403c4 	addiu	a0,s0,964
    2b98:	3c05c3af 	lui	a1,0xc3af
    2b9c:	0c000000 	jal	0 <BossSst_Init>
    2ba0:	3c064120 	lui	a2,0x4120
    2ba4:	10000061 	b	2d2c <func_8092F0BC+0x240>
    2ba8:	8fbf001c 	lw	ra,28(sp)
    2bac:	24010030 	li	at,48
    2bb0:	1461005b 	bne	v1,at,2d20 <func_8092F0BC+0x234>
    2bb4:	02002025 	move	a0,s0
    2bb8:	8e2f1c44 	lw	t7,7236(s1)
    2bbc:	afaf0024 	sw	t7,36(sp)
    2bc0:	0c000000 	jal	0 <BossSst_Init>
    2bc4:	860400b6 	lh	a0,182(s0)
    2bc8:	e7a00020 	swc1	$f0,32(sp)
    2bcc:	0c000000 	jal	0 <BossSst_Init>
    2bd0:	860400b6 	lh	a0,182(s0)
    2bd4:	3c0143c8 	lui	at,0x43c8
    2bd8:	44815000 	mtc1	at,$f10
    2bdc:	c7b00020 	lwc1	$f16,32(sp)
    2be0:	3c010000 	lui	at,0x0
    2be4:	c4240000 	lwc1	$f4,0(at)
    2be8:	46105482 	mul.s	$f18,$f10,$f16
    2bec:	3c01c2f0 	lui	at,0xc2f0
    2bf0:	44814000 	mtc1	at,$f8
    2bf4:	8fb80024 	lw	t8,36(sp)
    2bf8:	46080282 	mul.s	$f10,$f0,$f8
    2bfc:	46122180 	add.s	$f6,$f4,$f18
    2c00:	46065400 	add.s	$f16,$f10,$f6
    2c04:	e7100024 	swc1	$f16,36(t8)
    2c08:	0c000000 	jal	0 <BossSst_Init>
    2c0c:	860400b6 	lh	a0,182(s0)
    2c10:	e7a00020 	swc1	$f0,32(sp)
    2c14:	0c000000 	jal	0 <BossSst_Init>
    2c18:	860400b6 	lh	a0,182(s0)
    2c1c:	3c0143c8 	lui	at,0x43c8
    2c20:	44812000 	mtc1	at,$f4
    2c24:	c7b20020 	lwc1	$f18,32(sp)
    2c28:	3c01c2f0 	lui	at,0xc2f0
    2c2c:	44818000 	mtc1	at,$f16
    2c30:	46122202 	mul.s	$f8,$f4,$f18
    2c34:	3c050000 	lui	a1,0x0
    2c38:	24a50000 	addiu	a1,a1,0
    2c3c:	46100102 	mul.s	$f4,$f0,$f16
    2c40:	c4aa0008 	lwc1	$f10,8(a1)
    2c44:	8fa40024 	lw	a0,36(sp)
    2c48:	46085180 	add.s	$f6,$f10,$f8
    2c4c:	46043481 	sub.s	$f18,$f6,$f4
    2c50:	0c000000 	jal	0 <BossSst_Init>
    2c54:	e492002c 	swc1	$f18,44(a0)
    2c58:	8fb90024 	lw	t9,36(sp)
    2c5c:	3c050000 	lui	a1,0x0
    2c60:	24a50000 	addiu	a1,a1,0
    2c64:	a72200b6 	sh	v0,182(t9)
    2c68:	862807a0 	lh	t0,1952(s1)
    2c6c:	02002025 	move	a0,s0
    2c70:	00084880 	sll	t1,t0,0x2
    2c74:	02295021 	addu	t2,s1,t1
    2c78:	8d460790 	lw	a2,1936(t2)
    2c7c:	0c000000 	jal	0 <BossSst_Init>
    2c80:	24c6005c 	addiu	a2,a2,92
    2c84:	862b07a0 	lh	t3,1952(s1)
    2c88:	3c050000 	lui	a1,0x0
    2c8c:	24a50000 	addiu	a1,a1,0
    2c90:	000b6080 	sll	t4,t3,0x2
    2c94:	022c6821 	addu	t5,s1,t4
    2c98:	8da60790 	lw	a2,1936(t5)
    2c9c:	02002025 	move	a0,s0
    2ca0:	0c000000 	jal	0 <BossSst_Init>
    2ca4:	24c60050 	addiu	a2,a2,80
    2ca8:	3c01c3af 	lui	at,0xc3af
    2cac:	44815000 	mtc1	at,$f10
    2cb0:	860400b6 	lh	a0,182(s0)
    2cb4:	0c000000 	jal	0 <BossSst_Init>
    2cb8:	e60a03c4 	swc1	$f10,964(s0)
    2cbc:	3c010000 	lui	at,0x0
    2cc0:	c4280000 	lwc1	$f8,0(at)
    2cc4:	3c0143af 	lui	at,0x43af
    2cc8:	44818000 	mtc1	at,$f16
    2ccc:	860400b6 	lh	a0,182(s0)
    2cd0:	46100182 	mul.s	$f6,$f0,$f16
    2cd4:	46064101 	sub.s	$f4,$f8,$f6
    2cd8:	0c000000 	jal	0 <BossSst_Init>
    2cdc:	e6040024 	swc1	$f4,36(s0)
    2ce0:	3c010000 	lui	at,0x0
    2ce4:	c4320000 	lwc1	$f18,0(at)
    2ce8:	3c0143af 	lui	at,0x43af
    2cec:	44815000 	mtc1	at,$f10
    2cf0:	3c010000 	lui	at,0x0
    2cf4:	00002825 	move	a1,zero
    2cf8:	460a0402 	mul.s	$f16,$f0,$f10
    2cfc:	46109201 	sub.s	$f8,$f18,$f16
    2d00:	e608002c 	swc1	$f8,44(s0)
    2d04:	0c000000 	jal	0 <BossSst_Init>
    2d08:	c42c0000 	lwc1	$f12,0(at)
    2d0c:	02002025 	move	a0,s0
    2d10:	0c000000 	jal	0 <BossSst_Init>
    2d14:	02202825 	move	a1,s1
    2d18:	10000004 	b	2d2c <func_8092F0BC+0x240>
    2d1c:	8fbf001c 	lw	ra,28(sp)
    2d20:	0c000000 	jal	0 <BossSst_Init>
    2d24:	02202825 	move	a1,s1
    2d28:	8fbf001c 	lw	ra,28(sp)
    2d2c:	8fb00014 	lw	s0,20(sp)
    2d30:	8fb10018 	lw	s1,24(sp)
    2d34:	03e00008 	jr	ra
    2d38:	27bd0028 	addiu	sp,sp,40

00002d3c <func_8092F30C>:
    2d3c:	27bdffe8 	addiu	sp,sp,-24
    2d40:	afbf0014 	sw	ra,20(sp)
    2d44:	00803825 	move	a3,a0
    2d48:	3c050601 	lui	a1,0x601
    2d4c:	24a5e7b8 	addiu	a1,a1,-6216
    2d50:	afa70018 	sw	a3,24(sp)
    2d54:	2484014c 	addiu	a0,a0,332
    2d58:	0c000000 	jal	0 <BossSst_Init>
    2d5c:	3c06c0a0 	lui	a2,0xc0a0
    2d60:	8fa70018 	lw	a3,24(sp)
    2d64:	240e00a0 	li	t6,160
    2d68:	3c010000 	lui	at,0x0
    2d6c:	84ef00b6 	lh	t7,182(a3)
    2d70:	a4ee0198 	sh	t6,408(a3)
    2d74:	24050001 	li	a1,1
    2d78:	a4ef01a4 	sh	t7,420(a3)
    2d7c:	0c000000 	jal	0 <BossSst_Init>
    2d80:	c42c0000 	lwc1	$f12,0(at)
    2d84:	8fa70018 	lw	a3,24(sp)
    2d88:	3c180000 	lui	t8,0x0
    2d8c:	27180000 	addiu	t8,t8,0
    2d90:	acf80190 	sw	t8,400(a3)
    2d94:	8fbf0014 	lw	ra,20(sp)
    2d98:	27bd0018 	addiu	sp,sp,24
    2d9c:	03e00008 	jr	ra
    2da0:	00000000 	nop

00002da4 <func_8092F374>:
    2da4:	27bdffe8 	addiu	sp,sp,-24
    2da8:	afbf0014 	sw	ra,20(sp)
    2dac:	00803025 	move	a2,a0
    2db0:	afa5001c 	sw	a1,28(sp)
    2db4:	afa60018 	sw	a2,24(sp)
    2db8:	0c000000 	jal	0 <BossSst_Init>
    2dbc:	2484014c 	addiu	a0,a0,332
    2dc0:	8fa60018 	lw	a2,24(sp)
    2dc4:	84c20198 	lh	v0,408(a2)
    2dc8:	10400003 	beqz	v0,2dd8 <func_8092F374+0x34>
    2dcc:	244effff 	addiu	t6,v0,-1
    2dd0:	a4ce0198 	sh	t6,408(a2)
    2dd4:	84c20198 	lh	v0,408(a2)
    2dd8:	14400009 	bnez	v0,2e00 <func_8092F374+0x5c>
    2ddc:	28410050 	slti	at,v0,80
    2de0:	84cf01a4 	lh	t7,420(a2)
    2de4:	84d800b6 	lh	t8,182(a2)
    2de8:	15f80005 	bne	t7,t8,2e00 <func_8092F374+0x5c>
    2dec:	00000000 	nop
    2df0:	0c000000 	jal	0 <BossSst_Init>
    2df4:	00c02025 	move	a0,a2
    2df8:	10000006 	b	2e14 <func_8092F374+0x70>
    2dfc:	8fbf0014 	lw	ra,20(sp)
    2e00:	14200003 	bnez	at,2e10 <func_8092F374+0x6c>
    2e04:	00c02025 	move	a0,a2
    2e08:	0c000000 	jal	0 <BossSst_Init>
    2e0c:	8fa5001c 	lw	a1,28(sp)
    2e10:	8fbf0014 	lw	ra,20(sp)
    2e14:	27bd0018 	addiu	sp,sp,24
    2e18:	03e00008 	jr	ra
    2e1c:	00000000 	nop

00002e20 <func_8092F3F0>:
    2e20:	27bdffe8 	addiu	sp,sp,-24
    2e24:	afbf0014 	sw	ra,20(sp)
    2e28:	afa40018 	sw	a0,24(sp)
    2e2c:	240e00a0 	li	t6,160
    2e30:	a48e0198 	sh	t6,408(a0)
    2e34:	3c010000 	lui	at,0x0
    2e38:	c42c0000 	lwc1	$f12,0(at)
    2e3c:	0c000000 	jal	0 <BossSst_Init>
    2e40:	24050002 	li	a1,2
    2e44:	8fb90018 	lw	t9,24(sp)
    2e48:	3c180000 	lui	t8,0x0
    2e4c:	27180000 	addiu	t8,t8,0
    2e50:	af380190 	sw	t8,400(t9)
    2e54:	8fbf0014 	lw	ra,20(sp)
    2e58:	27bd0018 	addiu	sp,sp,24
    2e5c:	03e00008 	jr	ra
    2e60:	00000000 	nop

00002e64 <func_8092F434>:
    2e64:	27bdffe8 	addiu	sp,sp,-24
    2e68:	afbf0014 	sw	ra,20(sp)
    2e6c:	84860198 	lh	a2,408(a0)
    2e70:	24070050 	li	a3,80
    2e74:	10c00003 	beqz	a2,2e84 <func_8092F434+0x20>
    2e78:	24ceffff 	addiu	t6,a2,-1
    2e7c:	a48e0198 	sh	t6,408(a0)
    2e80:	84860198 	lh	a2,408(a0)
    2e84:	28c10050 	slti	at,a2,80
    2e88:	1420001c 	bnez	at,2efc <func_8092F434+0x98>
    2e8c:	00e66023 	subu	t4,a3,a2
    2e90:	24070050 	li	a3,80
    2e94:	14e60003 	bne	a3,a2,2ea4 <func_8092F434+0x40>
    2e98:	240f0001 	li	t7,1
    2e9c:	3c010000 	lui	at,0x0
    2ea0:	ac2f0000 	sw	t7,0(at)
    2ea4:	0c000000 	jal	0 <BossSst_Init>
    2ea8:	afa40018 	sw	a0,24(sp)
    2eac:	8fa40018 	lw	a0,24(sp)
    2eb0:	3c030000 	lui	v1,0x0
    2eb4:	24630000 	addiu	v1,v1,0
    2eb8:	84980198 	lh	t8,408(a0)
    2ebc:	24070050 	li	a3,80
    2ec0:	3c010000 	lui	at,0x0
    2ec4:	0018c880 	sll	t9,t8,0x2
    2ec8:	0338c823 	subu	t9,t9,t8
    2ecc:	272aff10 	addiu	t2,t9,-240
    2ed0:	a06a0002 	sb	t2,2(v1)
    2ed4:	a06a0001 	sb	t2,1(v1)
    2ed8:	a06a0000 	sb	t2,0(v1)
    2edc:	848b0198 	lh	t3,408(a0)
    2ee0:	24050003 	li	a1,3
    2ee4:	54eb0066 	bnel	a3,t3,3080 <func_8092F434+0x21c>
    2ee8:	8fbf0014 	lw	ra,20(sp)
    2eec:	0c000000 	jal	0 <BossSst_Init>
    2ef0:	c42c0000 	lwc1	$f12,0(at)
    2ef4:	10000062 	b	3080 <func_8092F434+0x21c>
    2ef8:	8fbf0014 	lw	ra,20(sp)
    2efc:	448c2000 	mtc1	t4,$f4
    2f00:	3c013f80 	lui	at,0x3f80
    2f04:	44814000 	mtc1	at,$f8
    2f08:	468021a0 	cvt.s.w	$f6,$f4
    2f0c:	240e0001 	li	t6,1
    2f10:	3c020000 	lui	v0,0x0
    2f14:	3c030000 	lui	v1,0x0
    2f18:	24630000 	addiu	v1,v1,0
    2f1c:	24420000 	addiu	v0,v0,0
    2f20:	46083282 	mul.s	$f10,$f6,$f8
    2f24:	3c014f00 	lui	at,0x4f00
    2f28:	444df800 	cfc1	t5,$31
    2f2c:	44cef800 	ctc1	t6,$31
    2f30:	00000000 	nop
    2f34:	46005424 	cvt.w.s	$f16,$f10
    2f38:	444ef800 	cfc1	t6,$31
    2f3c:	00000000 	nop
    2f40:	31ce0078 	andi	t6,t6,0x78
    2f44:	51c00013 	beqzl	t6,2f94 <func_8092F434+0x130>
    2f48:	440e8000 	mfc1	t6,$f16
    2f4c:	44818000 	mtc1	at,$f16
    2f50:	240e0001 	li	t6,1
    2f54:	46105401 	sub.s	$f16,$f10,$f16
    2f58:	44cef800 	ctc1	t6,$31
    2f5c:	00000000 	nop
    2f60:	46008424 	cvt.w.s	$f16,$f16
    2f64:	444ef800 	cfc1	t6,$31
    2f68:	00000000 	nop
    2f6c:	31ce0078 	andi	t6,t6,0x78
    2f70:	15c00005 	bnez	t6,2f88 <func_8092F434+0x124>
    2f74:	00000000 	nop
    2f78:	440e8000 	mfc1	t6,$f16
    2f7c:	3c018000 	lui	at,0x8000
    2f80:	10000007 	b	2fa0 <func_8092F434+0x13c>
    2f84:	01c17025 	or	t6,t6,at
    2f88:	10000005 	b	2fa0 <func_8092F434+0x13c>
    2f8c:	240effff 	li	t6,-1
    2f90:	440e8000 	mfc1	t6,$f16
    2f94:	00000000 	nop
    2f98:	05c0fffb 	bltz	t6,2f88 <func_8092F434+0x124>
    2f9c:	00000000 	nop
    2fa0:	a06e0002 	sb	t6,2(v1)
    2fa4:	848f0198 	lh	t7,408(a0)
    2fa8:	44cdf800 	ctc1	t5,$31
    2fac:	3c013e00 	lui	at,0x3e00
    2fb0:	00efc023 	subu	t8,a3,t7
    2fb4:	44989000 	mtc1	t8,$f18
    2fb8:	44813000 	mtc1	at,$f6
    2fbc:	24080001 	li	t0,1
    2fc0:	46809120 	cvt.s.w	$f4,$f18
    2fc4:	3c014f00 	lui	at,0x4f00
    2fc8:	46062202 	mul.s	$f8,$f4,$f6
    2fcc:	4459f800 	cfc1	t9,$31
    2fd0:	44c8f800 	ctc1	t0,$31
    2fd4:	00000000 	nop
    2fd8:	460042a4 	cvt.w.s	$f10,$f8
    2fdc:	4448f800 	cfc1	t0,$31
    2fe0:	00000000 	nop
    2fe4:	31080078 	andi	t0,t0,0x78
    2fe8:	51000013 	beqzl	t0,3038 <func_8092F434+0x1d4>
    2fec:	44085000 	mfc1	t0,$f10
    2ff0:	44815000 	mtc1	at,$f10
    2ff4:	24080001 	li	t0,1
    2ff8:	460a4281 	sub.s	$f10,$f8,$f10
    2ffc:	44c8f800 	ctc1	t0,$31
    3000:	00000000 	nop
    3004:	460052a4 	cvt.w.s	$f10,$f10
    3008:	4448f800 	cfc1	t0,$31
    300c:	00000000 	nop
    3010:	31080078 	andi	t0,t0,0x78
    3014:	15000005 	bnez	t0,302c <func_8092F434+0x1c8>
    3018:	00000000 	nop
    301c:	44085000 	mfc1	t0,$f10
    3020:	3c018000 	lui	at,0x8000
    3024:	10000007 	b	3044 <func_8092F434+0x1e0>
    3028:	01014025 	or	t0,t0,at
    302c:	10000005 	b	3044 <func_8092F434+0x1e0>
    3030:	2408ffff 	li	t0,-1
    3034:	44085000 	mfc1	t0,$f10
    3038:	00000000 	nop
    303c:	0500fffb 	bltz	t0,302c <func_8092F434+0x1c8>
    3040:	00000000 	nop
    3044:	44d9f800 	ctc1	t9,$31
    3048:	a0480002 	sb	t0,2(v0)
    304c:	a0480001 	sb	t0,1(v0)
    3050:	a0480000 	sb	t0,0(v0)
    3054:	a0680001 	sb	t0,1(v1)
    3058:	a0680000 	sb	t0,0(v1)
    305c:	0c000000 	jal	0 <BossSst_Init>
    3060:	afa40018 	sw	a0,24(sp)
    3064:	8fa40018 	lw	a0,24(sp)
    3068:	848d0198 	lh	t5,408(a0)
    306c:	55a00004 	bnezl	t5,3080 <func_8092F434+0x21c>
    3070:	8fbf0014 	lw	ra,20(sp)
    3074:	0c000000 	jal	0 <BossSst_Init>
    3078:	00000000 	nop
    307c:	8fbf0014 	lw	ra,20(sp)
    3080:	27bd0018 	addiu	sp,sp,24
    3084:	03e00008 	jr	ra
    3088:	00000000 	nop

0000308c <func_8092F65C>:
    308c:	3c013f80 	lui	at,0x3f80
    3090:	44812000 	mtc1	at,$f4
    3094:	27bdffe8 	addiu	sp,sp,-24
    3098:	afbf0014 	sw	ra,20(sp)
    309c:	afa40018 	sw	a0,24(sp)
    30a0:	e4840068 	swc1	$f4,104(a0)
    30a4:	3c040000 	lui	a0,0x0
    30a8:	3c050000 	lui	a1,0x0
    30ac:	24a50000 	addiu	a1,a1,0
    30b0:	0c000000 	jal	0 <BossSst_Init>
    30b4:	24840000 	addiu	a0,a0,0
    30b8:	3c040000 	lui	a0,0x0
    30bc:	3c050000 	lui	a1,0x0
    30c0:	24a50000 	addiu	a1,a1,0
    30c4:	0c000000 	jal	0 <BossSst_Init>
    30c8:	24840000 	addiu	a0,a0,0
    30cc:	44800000 	mtc1	zero,$f0
    30d0:	3c020000 	lui	v0,0x0
    30d4:	3c01c248 	lui	at,0xc248
    30d8:	44813000 	mtc1	at,$f6
    30dc:	24420000 	addiu	v0,v0,0
    30e0:	3c040000 	lui	a0,0x0
    30e4:	3c050000 	lui	a1,0x0
    30e8:	24a50000 	addiu	a1,a1,0
    30ec:	24840000 	addiu	a0,a0,0
    30f0:	e4400000 	swc1	$f0,0(v0)
    30f4:	e4400008 	swc1	$f0,8(v0)
    30f8:	0c000000 	jal	0 <BossSst_Init>
    30fc:	e4460004 	swc1	$f6,4(v0)
    3100:	8fb80018 	lw	t8,24(sp)
    3104:	3c0f0000 	lui	t7,0x0
    3108:	25ef0000 	addiu	t7,t7,0
    310c:	af0f0190 	sw	t7,400(t8)
    3110:	8fbf0014 	lw	ra,20(sp)
    3114:	27bd0018 	addiu	sp,sp,24
    3118:	03e00008 	jr	ra
    311c:	00000000 	nop

00003120 <func_8092F6F0>:
    3120:	27bdffe8 	addiu	sp,sp,-24
    3124:	afbf0014 	sw	ra,20(sp)
    3128:	afa5001c 	sw	a1,28(sp)
    312c:	3c013fc0 	lui	at,0x3fc0
    3130:	44813000 	mtc1	at,$f6
    3134:	c4840068 	lwc1	$f4,104(a0)
    3138:	00803825 	move	a3,a0
    313c:	3c014366 	lui	at,0x4366
    3140:	46062202 	mul.s	$f8,$f4,$f6
    3144:	44818000 	mtc1	at,$f16
    3148:	24840028 	addiu	a0,a0,40
    314c:	e4880040 	swc1	$f8,64(a0)
    3150:	c4ea000c 	lwc1	$f10,12(a3)
    3154:	8ce60068 	lw	a2,104(a3)
    3158:	afa70018 	sw	a3,24(sp)
    315c:	46105481 	sub.s	$f18,$f10,$f16
    3160:	44059000 	mfc1	a1,$f18
    3164:	0c000000 	jal	0 <BossSst_Init>
    3168:	00000000 	nop
    316c:	10400005 	beqz	v0,3184 <func_8092F6F0+0x64>
    3170:	8fa70018 	lw	a3,24(sp)
    3174:	00e02025 	move	a0,a3
    3178:	0c000000 	jal	0 <BossSst_Init>
    317c:	afa70018 	sw	a3,24(sp)
    3180:	8fa70018 	lw	a3,24(sp)
    3184:	3c014348 	lui	at,0x4348
    3188:	44812000 	mtc1	at,$f4
    318c:	3c010000 	lui	at,0x0
    3190:	c4260000 	lwc1	$f6,0(at)
    3194:	00e02025 	move	a0,a3
    3198:	4606203c 	c.lt.s	$f4,$f6
    319c:	00000000 	nop
    31a0:	45020004 	bc1fl	31b4 <func_8092F6F0+0x94>
    31a4:	8fbf0014 	lw	ra,20(sp)
    31a8:	0c000000 	jal	0 <BossSst_Init>
    31ac:	8fa5001c 	lw	a1,28(sp)
    31b0:	8fbf0014 	lw	ra,20(sp)
    31b4:	27bd0018 	addiu	sp,sp,24
    31b8:	03e00008 	jr	ra
    31bc:	00000000 	nop

000031c0 <func_8092F790>:
    31c0:	27bdffe8 	addiu	sp,sp,-24
    31c4:	afbf0014 	sw	ra,20(sp)
    31c8:	0c000000 	jal	0 <BossSst_Init>
    31cc:	afa40018 	sw	a0,24(sp)
    31d0:	8faf0018 	lw	t7,24(sp)
    31d4:	240e0050 	li	t6,80
    31d8:	3c010000 	lui	at,0x0
    31dc:	a5ee0198 	sh	t6,408(t7)
    31e0:	c42c0000 	lwc1	$f12,0(at)
    31e4:	0c000000 	jal	0 <BossSst_Init>
    31e8:	24050005 	li	a1,5
    31ec:	8fb90018 	lw	t9,24(sp)
    31f0:	3c180000 	lui	t8,0x0
    31f4:	27180000 	addiu	t8,t8,0
    31f8:	af380190 	sw	t8,400(t9)
    31fc:	8fbf0014 	lw	ra,20(sp)
    3200:	27bd0018 	addiu	sp,sp,24
    3204:	03e00008 	jr	ra
    3208:	00000000 	nop

0000320c <func_8092F7DC>:
    320c:	27bdffe8 	addiu	sp,sp,-24
    3210:	afbf0014 	sw	ra,20(sp)
    3214:	84820198 	lh	v0,408(a0)
    3218:	3c010000 	lui	at,0x0
    321c:	10400003 	beqz	v0,322c <func_8092F7DC+0x20>
    3220:	244effff 	addiu	t6,v0,-1
    3224:	a48e0198 	sh	t6,408(a0)
    3228:	84820198 	lh	v0,408(a0)
    322c:	c4200000 	lwc1	$f0,0(at)
    3230:	3c010000 	lui	at,0x0
    3234:	c4260000 	lwc1	$f6,0(at)
    3238:	c4840054 	lwc1	$f4,84(a0)
    323c:	c48a0050 	lwc1	$f10,80(a0)
    3240:	c4920058 	lwc1	$f18,88(a0)
    3244:	46062201 	sub.s	$f8,$f4,$f6
    3248:	3c010000 	lui	at,0x0
    324c:	46005400 	add.s	$f16,$f10,$f0
    3250:	e4880054 	swc1	$f8,84(a0)
    3254:	c4880054 	lwc1	$f8,84(a0)
    3258:	46009100 	add.s	$f4,$f18,$f0
    325c:	e4900050 	swc1	$f16,80(a0)
    3260:	c490000c 	lwc1	$f16,12(a0)
    3264:	e4840058 	swc1	$f4,88(a0)
    3268:	c4260000 	lwc1	$f6,0(at)
    326c:	46083282 	mul.s	$f10,$f6,$f8
    3270:	460a8481 	sub.s	$f18,$f16,$f10
    3274:	14400005 	bnez	v0,328c <func_8092F7DC+0x80>
    3278:	e4920028 	swc1	$f18,40(a0)
    327c:	0c000000 	jal	0 <BossSst_Init>
    3280:	00000000 	nop
    3284:	1000000c 	b	32b8 <func_8092F7DC+0xac>
    3288:	8fbf0014 	lw	ra,20(sp)
    328c:	44822000 	mtc1	v0,$f4
    3290:	3c0141a0 	lui	at,0x41a0
    3294:	44814000 	mtc1	at,$f8
    3298:	468021a0 	cvt.s.w	$f6,$f4
    329c:	4606403e 	c.le.s	$f8,$f6
    32a0:	00000000 	nop
    32a4:	45020004 	bc1fl	32b8 <func_8092F7DC+0xac>
    32a8:	8fbf0014 	lw	ra,20(sp)
    32ac:	0c000000 	jal	0 <BossSst_Init>
    32b0:	00000000 	nop
    32b4:	8fbf0014 	lw	ra,20(sp)
    32b8:	27bd0018 	addiu	sp,sp,24
    32bc:	03e00008 	jr	ra
    32c0:	00000000 	nop

000032c4 <func_8092F894>:
    32c4:	27bdffe8 	addiu	sp,sp,-24
    32c8:	afbf0014 	sw	ra,20(sp)
    32cc:	3c0e0000 	lui	t6,0x0
    32d0:	25ce0000 	addiu	t6,t6,0
    32d4:	240f0028 	li	t7,40
    32d8:	00802825 	move	a1,a0
    32dc:	ac8e0134 	sw	t6,308(a0)
    32e0:	a48f0198 	sh	t7,408(a0)
    32e4:	afa50018 	sw	a1,24(sp)
    32e8:	0c000000 	jal	0 <BossSst_Init>
    32ec:	24040021 	li	a0,33
    32f0:	3c010000 	lui	at,0x0
    32f4:	c42c0000 	lwc1	$f12,0(at)
    32f8:	0c000000 	jal	0 <BossSst_Init>
    32fc:	24050006 	li	a1,6
    3300:	8fb90018 	lw	t9,24(sp)
    3304:	3c180000 	lui	t8,0x0
    3308:	27180000 	addiu	t8,t8,0
    330c:	af380190 	sw	t8,400(t9)
    3310:	8fbf0014 	lw	ra,20(sp)
    3314:	27bd0018 	addiu	sp,sp,24
    3318:	03e00008 	jr	ra
    331c:	00000000 	nop

00003320 <func_8092F8F0>:
    3320:	27bdff78 	addiu	sp,sp,-136
    3324:	afbf0064 	sw	ra,100(sp)
    3328:	afb60060 	sw	s6,96(sp)
    332c:	afb5005c 	sw	s5,92(sp)
    3330:	afb40058 	sw	s4,88(sp)
    3334:	afb30054 	sw	s3,84(sp)
    3338:	afb20050 	sw	s2,80(sp)
    333c:	afb1004c 	sw	s1,76(sp)
    3340:	afb00048 	sw	s0,72(sp)
    3344:	f7b80040 	sdc1	$f24,64(sp)
    3348:	f7b60038 	sdc1	$f22,56(sp)
    334c:	f7b40030 	sdc1	$f20,48(sp)
    3350:	848e0198 	lh	t6,408(a0)
    3354:	90980196 	lbu	t8,406(a0)
    3358:	00808025 	move	s0,a0
    335c:	25cfffff 	addiu	t7,t6,-1
    3360:	00a0b025 	move	s6,a1
    3364:	1700002e 	bnez	t8,3420 <func_8092F8F0+0x100>
    3368:	a48f0198 	sh	t7,408(a0)
    336c:	84990198 	lh	t9,408(a0)
    3370:	2b21ff56 	slti	at,t9,-170
    3374:	10200028 	beqz	at,3418 <func_8092F8F0+0xf8>
    3378:	00000000 	nop
    337c:	0c000000 	jal	0 <BossSst_Init>
    3380:	00000000 	nop
    3384:	3c110000 	lui	s1,0x0
    3388:	26310000 	addiu	s1,s1,0
    338c:	86260000 	lh	a2,0(s1)
    3390:	02c02025 	move	a0,s6
    3394:	0c000000 	jal	0 <BossSst_Init>
    3398:	00002825 	move	a1,zero
    339c:	02c02025 	move	a0,s6
    33a0:	86250000 	lh	a1,0(s1)
    33a4:	0c000000 	jal	0 <BossSst_Init>
    33a8:	24060001 	li	a2,1
    33ac:	02c02025 	move	a0,s6
    33b0:	00002825 	move	a1,zero
    33b4:	0c000000 	jal	0 <BossSst_Init>
    33b8:	24060007 	li	a2,7
    33bc:	02c02025 	move	a0,s6
    33c0:	0c000000 	jal	0 <BossSst_Init>
    33c4:	86250000 	lh	a1,0(s1)
    33c8:	02c02025 	move	a0,s6
    33cc:	8ec51c44 	lw	a1,7236(s6)
    33d0:	0c000000 	jal	0 <BossSst_Init>
    33d4:	24060007 	li	a2,7
    33d8:	02c02025 	move	a0,s6
    33dc:	0c000000 	jal	0 <BossSst_Init>
    33e0:	26c51d64 	addiu	a1,s6,7524
    33e4:	0c000000 	jal	0 <BossSst_Init>
    33e8:	02002025 	move	a0,s0
    33ec:	3c110000 	lui	s1,0x0
    33f0:	26310000 	addiu	s1,s1,0
    33f4:	0c000000 	jal	0 <BossSst_Init>
    33f8:	8e240000 	lw	a0,0(s1)
    33fc:	0c000000 	jal	0 <BossSst_Init>
    3400:	8e240004 	lw	a0,4(s1)
    3404:	3c050001 	lui	a1,0x1
    3408:	00b62821 	addu	a1,a1,s6
    340c:	80a51cbc 	lb	a1,7356(a1)
    3410:	0c000000 	jal	0 <BossSst_Init>
    3414:	02c02025 	move	a0,s6
    3418:	10000042 	b	3524 <func_8092F8F0+0x204>
    341c:	92020724 	lbu	v0,1828(s0)
    3420:	92020724 	lbu	v0,1828(s0)
    3424:	26d11c24 	addiu	s1,s6,7204
    3428:	3c01c248 	lui	at,0xc248
    342c:	1440002b 	bnez	v0,34dc <func_8092F8F0+0x1bc>
    3430:	02202025 	move	a0,s1
    3434:	4481c000 	mtc1	at,$f24
    3438:	4480b000 	mtc1	zero,$f22
    343c:	2408ffff 	li	t0,-1
    3440:	4407c000 	mfc1	a3,$f24
    3444:	afa80024 	sw	t0,36(sp)
    3448:	02c02825 	move	a1,s6
    344c:	2406005d 	li	a2,93
    3450:	afa00018 	sw	zero,24(sp)
    3454:	afa0001c 	sw	zero,28(sp)
    3458:	afa00020 	sw	zero,32(sp)
    345c:	e7b60010 	swc1	$f22,16(sp)
    3460:	0c000000 	jal	0 <BossSst_Init>
    3464:	e7b60014 	swc1	$f22,20(sp)
    3468:	0c000000 	jal	0 <BossSst_Init>
    346c:	860400b6 	lh	a0,182(s0)
    3470:	46000506 	mov.s	$f20,$f0
    3474:	0c000000 	jal	0 <BossSst_Init>
    3478:	860400b6 	lh	a0,182(s0)
    347c:	3c014348 	lui	at,0x4348
    3480:	44811000 	mtc1	at,$f2
    3484:	02202025 	move	a0,s1
    3488:	02c02825 	move	a1,s6
    348c:	4602a102 	mul.s	$f4,$f20,$f2
    3490:	2406005f 	li	a2,95
    3494:	e7b60010 	swc1	$f22,16(sp)
    3498:	46020202 	mul.s	$f8,$f0,$f2
    349c:	afa00018 	sw	zero,24(sp)
    34a0:	afa0001c 	sw	zero,28(sp)
    34a4:	afa00020 	sw	zero,32(sp)
    34a8:	afa00024 	sw	zero,36(sp)
    34ac:	46182180 	add.s	$f6,$f4,$f24
    34b0:	e7a80014 	swc1	$f8,20(sp)
    34b4:	44073000 	mfc1	a3,$f6
    34b8:	0c000000 	jal	0 <BossSst_Init>
    34bc:	00000000 	nop
    34c0:	3c013f80 	lui	at,0x3f80
    34c4:	44816000 	mtc1	at,$f12
    34c8:	0c000000 	jal	0 <BossSst_Init>
    34cc:	24050007 	li	a1,7
    34d0:	a2000196 	sb	zero,406(s0)
    34d4:	10000013 	b	3524 <func_8092F8F0+0x204>
    34d8:	92020724 	lbu	v0,1828(s0)
    34dc:	86030198 	lh	v1,408(s0)
    34e0:	14600007 	bnez	v1,3500 <func_8092F8F0+0x1e0>
    34e4:	00000000 	nop
    34e8:	2403ffff 	li	v1,-1
    34ec:	a6000722 	sh	zero,1826(s0)
    34f0:	a603074a 	sh	v1,1866(s0)
    34f4:	a6030772 	sh	v1,1906(s0)
    34f8:	1000000a 	b	3524 <func_8092F8F0+0x204>
    34fc:	92020724 	lbu	v0,1828(s0)
    3500:	18600008 	blez	v1,3524 <func_8092F8F0+0x204>
    3504:	00000000 	nop
    3508:	86090722 	lh	t1,1826(s0)
    350c:	02002025 	move	a0,s0
    3510:	02c02825 	move	a1,s6
    3514:	252a0005 	addiu	t2,t1,5
    3518:	0c000000 	jal	0 <BossSst_Init>
    351c:	a60a0722 	sh	t2,1826(s0)
    3520:	92020724 	lbu	v0,1828(s0)
    3524:	3c010000 	lui	at,0x0
    3528:	a0220000 	sb	v0,0(at)
    352c:	920b0724 	lbu	t3,1828(s0)
    3530:	3c010000 	lui	at,0x0
    3534:	3c100000 	lui	s0,0x0
    3538:	a02b0000 	sb	t3,0(at)
    353c:	3c01c1e0 	lui	at,0xc1e0
    3540:	4481c000 	mtc1	at,$f24
    3544:	3c0140a0 	lui	at,0x40a0
    3548:	4481b000 	mtc1	at,$f22
    354c:	3c014448 	lui	at,0x4448
    3550:	3c140000 	lui	s4,0x0
    3554:	3c130000 	lui	s3,0x0
    3558:	4481a000 	mtc1	at,$f20
    355c:	26730000 	addiu	s3,s3,0
    3560:	26940000 	addiu	s4,s4,0
    3564:	26100000 	addiu	s0,s0,0
    3568:	00008825 	move	s1,zero
    356c:	24150005 	li	s5,5
    3570:	27b2007c 	addiu	s2,sp,124
    3574:	0c000000 	jal	0 <BossSst_Init>
    3578:	4600a306 	mov.s	$f12,$f20
    357c:	c60a0000 	lwc1	$f10,0(s0)
    3580:	460a0400 	add.s	$f16,$f0,$f10
    3584:	0c000000 	jal	0 <BossSst_Init>
    3588:	e7b0007c 	swc1	$f16,124(sp)
    358c:	46160482 	mul.s	$f18,$f0,$f22
    3590:	c6040004 	lwc1	$f4,4(s0)
    3594:	4600a306 	mov.s	$f12,$f20
    3598:	46182180 	add.s	$f6,$f4,$f24
    359c:	46069200 	add.s	$f8,$f18,$f6
    35a0:	0c000000 	jal	0 <BossSst_Init>
    35a4:	e7a80080 	swc1	$f8,128(sp)
    35a8:	c60a0008 	lwc1	$f10,8(s0)
    35ac:	240c03e8 	li	t4,1000
    35b0:	afac0014 	sw	t4,20(sp)
    35b4:	460a0400 	add.s	$f16,$f0,$f10
    35b8:	02c02025 	move	a0,s6
    35bc:	02402825 	move	a1,s2
    35c0:	02603025 	move	a2,s3
    35c4:	e7b00084 	swc1	$f16,132(sp)
    35c8:	02803825 	move	a3,s4
    35cc:	0c000000 	jal	0 <BossSst_Init>
    35d0:	afa00010 	sw	zero,16(sp)
    35d4:	26310001 	addiu	s1,s1,1
    35d8:	1635ffe6 	bne	s1,s5,3574 <func_8092F8F0+0x254>
    35dc:	00000000 	nop
    35e0:	8fbf0064 	lw	ra,100(sp)
    35e4:	d7b40030 	ldc1	$f20,48(sp)
    35e8:	d7b60038 	ldc1	$f22,56(sp)
    35ec:	d7b80040 	ldc1	$f24,64(sp)
    35f0:	8fb00048 	lw	s0,72(sp)
    35f4:	8fb1004c 	lw	s1,76(sp)
    35f8:	8fb20050 	lw	s2,80(sp)
    35fc:	8fb30054 	lw	s3,84(sp)
    3600:	8fb40058 	lw	s4,88(sp)
    3604:	8fb5005c 	lw	s5,92(sp)
    3608:	8fb60060 	lw	s6,96(sp)
    360c:	03e00008 	jr	ra
    3610:	27bd0088 	addiu	sp,sp,136

00003614 <func_8092FBE4>:
    3614:	27bdffe8 	addiu	sp,sp,-24
    3618:	afbf0014 	sw	ra,20(sp)
    361c:	848e001c 	lh	t6,28(a0)
    3620:	3c010000 	lui	at,0x0
    3624:	00803825 	move	a3,a0
    3628:	000e7880 	sll	t7,t6,0x2
    362c:	002f0821 	addu	at,at,t7
    3630:	ac200000 	sw	zero,0(at)
    3634:	909803e4 	lbu	t8,996(a0)
    3638:	3c050000 	lui	a1,0x0
    363c:	2484014c 	addiu	a0,a0,332
    3640:	3319fffc 	andi	t9,t8,0xfffc
    3644:	a0990298 	sb	t9,664(a0)
    3648:	84e8001c 	lh	t0,28(a3)
    364c:	afa70018 	sw	a3,24(sp)
    3650:	3c0640a0 	lui	a2,0x40a0
    3654:	00084880 	sll	t1,t0,0x2
    3658:	00a92821 	addu	a1,a1,t1
    365c:	0c000000 	jal	0 <BossSst_Init>
    3660:	8ca50000 	lw	a1,0(a1)
    3664:	8fa70018 	lw	a3,24(sp)
    3668:	3c0b0000 	lui	t3,0x0
    366c:	240a0014 	li	t2,20
    3670:	256b0000 	addiu	t3,t3,0
    3674:	a0e00195 	sb	zero,405(a3)
    3678:	a4ea0198 	sh	t2,408(a3)
    367c:	aceb0190 	sw	t3,400(a3)
    3680:	8fbf0014 	lw	ra,20(sp)
    3684:	27bd0018 	addiu	sp,sp,24
    3688:	03e00008 	jr	ra
    368c:	00000000 	nop

00003690 <func_8092FC60>:
    3690:	27bdffe0 	addiu	sp,sp,-32
    3694:	afb00018 	sw	s0,24(sp)
    3698:	00808025 	move	s0,a0
    369c:	afbf001c 	sw	ra,28(sp)
    36a0:	afa50024 	sw	a1,36(sp)
    36a4:	0c000000 	jal	0 <BossSst_Init>
    36a8:	2484014c 	addiu	a0,a0,332
    36ac:	26040028 	addiu	a0,s0,40
    36b0:	8e050080 	lw	a1,128(s0)
    36b4:	0c000000 	jal	0 <BossSst_Init>
    36b8:	3c0641a0 	lui	a2,0x41a0
    36bc:	26040024 	addiu	a0,s0,36
    36c0:	8e050008 	lw	a1,8(s0)
    36c4:	0c000000 	jal	0 <BossSst_Init>
    36c8:	3c063f80 	lui	a2,0x3f80
    36cc:	2604002c 	addiu	a0,s0,44
    36d0:	8e050010 	lw	a1,16(s0)
    36d4:	0c000000 	jal	0 <BossSst_Init>
    36d8:	3c063f80 	lui	a2,0x3f80
    36dc:	8e0e011c 	lw	t6,284(s0)
    36e0:	3c190000 	lui	t9,0x0
    36e4:	24010008 	li	at,8
    36e8:	85cf001c 	lh	t7,28(t6)
    36ec:	3c020000 	lui	v0,0x0
    36f0:	000fc080 	sll	t8,t7,0x2
    36f4:	0338c821 	addu	t9,t9,t8
    36f8:	8f390000 	lw	t9,0(t9)
    36fc:	17210019 	bne	t9,at,3764 <func_8092FC60+0xd4>
    3700:	00000000 	nop
    3704:	86020198 	lh	v0,408(s0)
    3708:	8fa80024 	lw	t0,36(sp)
    370c:	3c01c248 	lui	at,0xc248
    3710:	10400004 	beqz	v0,3724 <func_8092FC60+0x94>
    3714:	8d031c44 	lw	v1,7236(t0)
    3718:	2449ffff 	addiu	t1,v0,-1
    371c:	a6090198 	sh	t1,408(s0)
    3720:	86020198 	lh	v0,408(s0)
    3724:	54400032 	bnezl	v0,37f0 <func_8092FC60+0x160>
    3728:	8fbf001c 	lw	ra,28(sp)
    372c:	44812000 	mtc1	at,$f4
    3730:	c4660028 	lwc1	$f6,40(v1)
    3734:	4606203c 	c.lt.s	$f4,$f6
    3738:	00000000 	nop
    373c:	4502002c 	bc1fl	37f0 <func_8092FC60+0x160>
    3740:	8fbf001c 	lw	ra,28(sp)
    3744:	8c6a067c 	lw	t2,1660(v1)
    3748:	314b6080 	andi	t3,t2,0x6080
    374c:	55600028 	bnezl	t3,37f0 <func_8092FC60+0x160>
    3750:	8fbf001c 	lw	ra,28(sp)
    3754:	0c000000 	jal	0 <BossSst_Init>
    3758:	02002025 	move	a0,s0
    375c:	10000024 	b	37f0 <func_8092FC60+0x160>
    3760:	8fbf001c 	lw	ra,28(sp)
    3764:	8c420000 	lw	v0,0(v0)
    3768:	3c0c0000 	lui	t4,0x0
    376c:	258c0000 	addiu	t4,t4,0
    3770:	8c4d0190 	lw	t5,400(v0)
    3774:	558d001e 	bnel	t4,t5,37f0 <func_8092FC60+0x160>
    3778:	8fbf001c 	lw	ra,28(sp)
    377c:	8603001c 	lh	v1,28(s0)
    3780:	24010001 	li	at,1
    3784:	1461000c 	bne	v1,at,37b8 <func_8092FC60+0x128>
    3788:	00000000 	nop
    378c:	844e0198 	lh	t6,408(v0)
    3790:	2401001c 	li	at,28
    3794:	01c1001a 	div	zero,t6,at
    3798:	00007810 	mfhi	t7
    379c:	2401000c 	li	at,12
    37a0:	15e10005 	bne	t7,at,37b8 <func_8092FC60+0x128>
    37a4:	00000000 	nop
    37a8:	0c000000 	jal	0 <BossSst_Init>
    37ac:	02002025 	move	a0,s0
    37b0:	1000000f 	b	37f0 <func_8092FC60+0x160>
    37b4:	8fbf001c 	lw	ra,28(sp)
    37b8:	5460000d 	bnezl	v1,37f0 <func_8092FC60+0x160>
    37bc:	8fbf001c 	lw	ra,28(sp)
    37c0:	84430198 	lh	v1,408(v0)
    37c4:	24010007 	li	at,7
    37c8:	0061001a 	div	zero,v1,at
    37cc:	0000c010 	mfhi	t8
    37d0:	24010005 	li	at,5
    37d4:	17010005 	bne	t8,at,37ec <func_8092FC60+0x15c>
    37d8:	28610070 	slti	at,v1,112
    37dc:	50200004 	beqzl	at,37f0 <func_8092FC60+0x160>
    37e0:	8fbf001c 	lw	ra,28(sp)
    37e4:	0c000000 	jal	0 <BossSst_Init>
    37e8:	02002025 	move	a0,s0
    37ec:	8fbf001c 	lw	ra,28(sp)
    37f0:	8fb00018 	lw	s0,24(sp)
    37f4:	27bd0020 	addiu	sp,sp,32
    37f8:	03e00008 	jr	ra
    37fc:	00000000 	nop

00003800 <func_8092FDD0>:
    3800:	27bdffe8 	addiu	sp,sp,-24
    3804:	afbf0014 	sw	ra,20(sp)
    3808:	848f001c 	lh	t7,28(a0)
    380c:	3c010000 	lui	at,0x0
    3810:	240e0001 	li	t6,1
    3814:	000fc080 	sll	t8,t7,0x2
    3818:	00380821 	addu	at,at,t8
    381c:	00803825 	move	a3,a0
    3820:	ac2e0000 	sw	t6,0(at)
    3824:	84f9001c 	lh	t9,28(a3)
    3828:	3c050000 	lui	a1,0x0
    382c:	afa70018 	sw	a3,24(sp)
    3830:	00194080 	sll	t0,t9,0x2
    3834:	00a82821 	addu	a1,a1,t0
    3838:	8ca50000 	lw	a1,0(a1)
    383c:	2484014c 	addiu	a0,a0,332
    3840:	0c000000 	jal	0 <BossSst_Init>
    3844:	3c0640a0 	lui	a2,0x40a0
    3848:	8fa70018 	lw	a3,24(sp)
    384c:	3c0a0000 	lui	t2,0x0
    3850:	2409000c 	li	t1,12
    3854:	254a0000 	addiu	t2,t2,0
    3858:	a4e000b4 	sh	zero,180(a3)
    385c:	a4e90198 	sh	t1,408(a3)
    3860:	acea0190 	sw	t2,400(a3)
    3864:	8fbf0014 	lw	ra,20(sp)
    3868:	27bd0018 	addiu	sp,sp,24
    386c:	03e00008 	jr	ra
    3870:	00000000 	nop

00003874 <func_8092FE44>:
    3874:	27bdffe0 	addiu	sp,sp,-32
    3878:	afb00018 	sw	s0,24(sp)
    387c:	00808025 	move	s0,a0
    3880:	afbf001c 	sw	ra,28(sp)
    3884:	afa50024 	sw	a1,36(sp)
    3888:	0c000000 	jal	0 <BossSst_Init>
    388c:	2484014c 	addiu	a0,a0,332
    3890:	8e0e011c 	lw	t6,284(s0)
    3894:	3c190000 	lui	t9,0x0
    3898:	24010008 	li	at,8
    389c:	85cf001c 	lh	t7,28(t6)
    38a0:	000fc080 	sll	t8,t7,0x2
    38a4:	0338c821 	addu	t9,t9,t8
    38a8:	8f390000 	lw	t9,0(t9)
    38ac:	57210006 	bnel	t9,at,38c8 <func_8092FE44+0x54>
    38b0:	86020198 	lh	v0,408(s0)
    38b4:	0c000000 	jal	0 <BossSst_Init>
    38b8:	02002025 	move	a0,s0
    38bc:	1000003d 	b	39b4 <func_8092FE44+0x140>
    38c0:	8fbf001c 	lw	ra,28(sp)
    38c4:	86020198 	lh	v0,408(s0)
    38c8:	3c054334 	lui	a1,0x4334
    38cc:	26040028 	addiu	a0,s0,40
    38d0:	10400003 	beqz	v0,38e0 <func_8092FE44+0x6c>
    38d4:	2448ffff 	addiu	t0,v0,-1
    38d8:	a6080198 	sh	t0,408(s0)
    38dc:	86020198 	lh	v0,408(s0)
    38e0:	28410003 	slti	at,v0,3
    38e4:	5420000a 	bnezl	at,3910 <func_8092FE44+0x9c>
    38e8:	860b00b4 	lh	t3,180(s0)
    38ec:	860900b4 	lh	t1,180(s0)
    38f0:	26040028 	addiu	a0,s0,40
    38f4:	3c0641a0 	lui	a2,0x41a0
    38f8:	252aff00 	addiu	t2,t1,-256
    38fc:	0c000000 	jal	0 <BossSst_Init>
    3900:	a60a00b4 	sh	t2,180(s0)
    3904:	10000008 	b	3928 <func_8092FE44+0xb4>
    3908:	860d0198 	lh	t5,408(s0)
    390c:	860b00b4 	lh	t3,180(s0)
    3910:	24050000 	li	a1,0
    3914:	3c064270 	lui	a2,0x4270
    3918:	256c0300 	addiu	t4,t3,768
    391c:	0c000000 	jal	0 <BossSst_Init>
    3920:	a60c00b4 	sh	t4,180(s0)
    3924:	860d0198 	lh	t5,408(s0)
    3928:	3c0f0000 	lui	t7,0x0
    392c:	55a00021 	bnezl	t5,39b4 <func_8092FE44+0x140>
    3930:	8fbf001c 	lw	ra,28(sp)
    3934:	8def0000 	lw	t7,0(t7)
    3938:	240e0001 	li	t6,1
    393c:	3c190000 	lui	t9,0x0
    3940:	a5ee001c 	sh	t6,28(t7)
    3944:	8f390000 	lw	t9,0(t9)
    3948:	3c180000 	lui	t8,0x0
    394c:	27180000 	addiu	t8,t8,0
    3950:	8f280190 	lw	t0,400(t9)
    3954:	1708000c 	bne	t8,t0,3988 <func_8092FE44+0x114>
    3958:	00000000 	nop
    395c:	82090195 	lb	t1,405(s0)
    3960:	11200005 	beqz	t1,3978 <func_8092FE44+0x104>
    3964:	00000000 	nop
    3968:	0c000000 	jal	0 <BossSst_Init>
    396c:	02002025 	move	a0,s0
    3970:	10000008 	b	3994 <func_8092FE44+0x120>
    3974:	c60c008c 	lwc1	$f12,140(s0)
    3978:	0c000000 	jal	0 <BossSst_Init>
    397c:	02002025 	move	a0,s0
    3980:	10000004 	b	3994 <func_8092FE44+0x120>
    3984:	c60c008c 	lwc1	$f12,140(s0)
    3988:	0c000000 	jal	0 <BossSst_Init>
    398c:	02002025 	move	a0,s0
    3990:	c60c008c 	lwc1	$f12,140(s0)
    3994:	240500ff 	li	a1,255
    3998:	24060014 	li	a2,20
    399c:	0c000000 	jal	0 <BossSst_Init>
    39a0:	24070096 	li	a3,150
    39a4:	02002025 	move	a0,s0
    39a8:	0c000000 	jal	0 <BossSst_Init>
    39ac:	24053951 	li	a1,14673
    39b0:	8fbf001c 	lw	ra,28(sp)
    39b4:	8fb00018 	lw	s0,24(sp)
    39b8:	27bd0020 	addiu	sp,sp,32
    39bc:	03e00008 	jr	ra
    39c0:	00000000 	nop

000039c4 <func_8092FF94>:
    39c4:	3c0f0000 	lui	t7,0x0
    39c8:	8def0000 	lw	t7,0(t7)
    39cc:	27bdffe8 	addiu	sp,sp,-24
    39d0:	afbf0014 	sw	ra,20(sp)
    39d4:	240e0001 	li	t6,1
    39d8:	00803025 	move	a2,a0
    39dc:	a5ee001c 	sh	t6,28(t7)
    39e0:	84d8001c 	lh	t8,28(a2)
    39e4:	3c050000 	lui	a1,0x0
    39e8:	afa60018 	sw	a2,24(sp)
    39ec:	0018c880 	sll	t9,t8,0x2
    39f0:	00b92821 	addu	a1,a1,t9
    39f4:	8ca50000 	lw	a1,0(a1)
    39f8:	0c000000 	jal	0 <BossSst_Init>
    39fc:	2484014c 	addiu	a0,a0,332
    3a00:	8fa60018 	lw	a2,24(sp)
    3a04:	3c080000 	lui	t0,0x0
    3a08:	25080000 	addiu	t0,t0,0
    3a0c:	acc80190 	sw	t0,400(a2)
    3a10:	8fbf0014 	lw	ra,20(sp)
    3a14:	27bd0018 	addiu	sp,sp,24
    3a18:	03e00008 	jr	ra
    3a1c:	00000000 	nop

00003a20 <func_8092FFF0>:
    3a20:	27bdffd8 	addiu	sp,sp,-40
    3a24:	afb00020 	sw	s0,32(sp)
    3a28:	00808025 	move	s0,a0
    3a2c:	afbf0024 	sw	ra,36(sp)
    3a30:	afa5002c 	sw	a1,44(sp)
    3a34:	0c000000 	jal	0 <BossSst_Init>
    3a38:	2484014c 	addiu	a0,a0,332
    3a3c:	8e0e011c 	lw	t6,284(s0)
    3a40:	3c190000 	lui	t9,0x0
    3a44:	24010008 	li	at,8
    3a48:	85cf001c 	lh	t7,28(t6)
    3a4c:	26040028 	addiu	a0,s0,40
    3a50:	3c054220 	lui	a1,0x4220
    3a54:	000fc080 	sll	t8,t7,0x2
    3a58:	0338c821 	addu	t9,t9,t8
    3a5c:	8f390000 	lw	t9,0(t9)
    3a60:	3c063f00 	lui	a2,0x3f00
    3a64:	57210006 	bnel	t9,at,3a80 <func_8092FFF0+0x60>
    3a68:	3c014040 	lui	at,0x4040
    3a6c:	0c000000 	jal	0 <BossSst_Init>
    3a70:	02002025 	move	a0,s0
    3a74:	10000023 	b	3b04 <func_8092FFF0+0xe4>
    3a78:	8fbf0024 	lw	ra,36(sp)
    3a7c:	3c014040 	lui	at,0x4040
    3a80:	44812000 	mtc1	at,$f4
    3a84:	3c0741a0 	lui	a3,0x41a0
    3a88:	0c000000 	jal	0 <BossSst_Init>
    3a8c:	e7a40010 	swc1	$f4,16(sp)
    3a90:	260400b4 	addiu	a0,s0,180
    3a94:	2405f800 	li	a1,-2048
    3a98:	0c000000 	jal	0 <BossSst_Init>
    3a9c:	24060100 	li	a2,256
    3aa0:	26040024 	addiu	a0,s0,36
    3aa4:	8e050008 	lw	a1,8(s0)
    3aa8:	0c000000 	jal	0 <BossSst_Init>
    3aac:	3c063f80 	lui	a2,0x3f80
    3ab0:	2604002c 	addiu	a0,s0,44
    3ab4:	8e050010 	lw	a1,16(s0)
    3ab8:	0c000000 	jal	0 <BossSst_Init>
    3abc:	3c063f80 	lui	a2,0x3f80
    3ac0:	3c020000 	lui	v0,0x0
    3ac4:	8c420000 	lw	v0,0(v0)
    3ac8:	3c080000 	lui	t0,0x0
    3acc:	25080000 	addiu	t0,t0,0
    3ad0:	8c490190 	lw	t1,400(v0)
    3ad4:	5109000b 	beql	t0,t1,3b04 <func_8092FFF0+0xe4>
    3ad8:	8fbf0024 	lw	ra,36(sp)
    3adc:	844a0198 	lh	t2,408(v0)
    3ae0:	2401001c 	li	at,28
    3ae4:	0141001a 	div	zero,t2,at
    3ae8:	00005810 	mfhi	t3
    3aec:	2401000c 	li	at,12
    3af0:	55610004 	bnel	t3,at,3b04 <func_8092FFF0+0xe4>
    3af4:	8fbf0024 	lw	ra,36(sp)
    3af8:	0c000000 	jal	0 <BossSst_Init>
    3afc:	02002025 	move	a0,s0
    3b00:	8fbf0024 	lw	ra,36(sp)
    3b04:	8fb00020 	lw	s0,32(sp)
    3b08:	27bd0028 	addiu	sp,sp,40
    3b0c:	03e00008 	jr	ra
    3b10:	00000000 	nop

00003b14 <func_809300E4>:
    3b14:	27bdffe8 	addiu	sp,sp,-24
    3b18:	afbf0014 	sw	ra,20(sp)
    3b1c:	848f001c 	lh	t7,28(a0)
    3b20:	3c010000 	lui	at,0x0
    3b24:	240e0001 	li	t6,1
    3b28:	000fc080 	sll	t8,t7,0x2
    3b2c:	00380821 	addu	at,at,t8
    3b30:	00803825 	move	a3,a0
    3b34:	ac2e0000 	sw	t6,0(at)
    3b38:	84f9001c 	lh	t9,28(a3)
    3b3c:	3c050000 	lui	a1,0x0
    3b40:	afa70018 	sw	a3,24(sp)
    3b44:	00194080 	sll	t0,t9,0x2
    3b48:	00a82821 	addu	a1,a1,t0
    3b4c:	8ca50000 	lw	a1,0(a1)
    3b50:	2484014c 	addiu	a0,a0,332
    3b54:	0c000000 	jal	0 <BossSst_Init>
    3b58:	3c0640a0 	lui	a2,0x40a0
    3b5c:	8fa70018 	lw	a3,24(sp)
    3b60:	3c0a0000 	lui	t2,0x0
    3b64:	24090005 	li	t1,5
    3b68:	254a0000 	addiu	t2,t2,0
    3b6c:	a4e000b4 	sh	zero,180(a3)
    3b70:	a4e90198 	sh	t1,408(a3)
    3b74:	acea0190 	sw	t2,400(a3)
    3b78:	8fbf0014 	lw	ra,20(sp)
    3b7c:	27bd0018 	addiu	sp,sp,24
    3b80:	03e00008 	jr	ra
    3b84:	00000000 	nop

00003b88 <func_80930158>:
    3b88:	27bdffe0 	addiu	sp,sp,-32
    3b8c:	afb00018 	sw	s0,24(sp)
    3b90:	00808025 	move	s0,a0
    3b94:	afbf001c 	sw	ra,28(sp)
    3b98:	afa50024 	sw	a1,36(sp)
    3b9c:	0c000000 	jal	0 <BossSst_Init>
    3ba0:	2484014c 	addiu	a0,a0,332
    3ba4:	8e0e011c 	lw	t6,284(s0)
    3ba8:	3c190000 	lui	t9,0x0
    3bac:	24010008 	li	at,8
    3bb0:	85cf001c 	lh	t7,28(t6)
    3bb4:	000fc080 	sll	t8,t7,0x2
    3bb8:	0338c821 	addu	t9,t9,t8
    3bbc:	8f390000 	lw	t9,0(t9)
    3bc0:	57210006 	bnel	t9,at,3bdc <func_80930158+0x54>
    3bc4:	86020198 	lh	v0,408(s0)
    3bc8:	0c000000 	jal	0 <BossSst_Init>
    3bcc:	02002025 	move	a0,s0
    3bd0:	10000021 	b	3c58 <func_80930158+0xd0>
    3bd4:	8fbf001c 	lw	ra,28(sp)
    3bd8:	86020198 	lh	v0,408(s0)
    3bdc:	3c054270 	lui	a1,0x4270
    3be0:	26040028 	addiu	a0,s0,40
    3be4:	10400003 	beqz	v0,3bf4 <func_80930158+0x6c>
    3be8:	2448ffff 	addiu	t0,v0,-1
    3bec:	a6080198 	sh	t0,408(s0)
    3bf0:	86020198 	lh	v0,408(s0)
    3bf4:	5040000a 	beqzl	v0,3c20 <func_80930158+0x98>
    3bf8:	860b00b4 	lh	t3,180(s0)
    3bfc:	860900b4 	lh	t1,180(s0)
    3c00:	26040028 	addiu	a0,s0,40
    3c04:	3c064170 	lui	a2,0x4170
    3c08:	252afec0 	addiu	t2,t1,-320
    3c0c:	0c000000 	jal	0 <BossSst_Init>
    3c10:	a60a00b4 	sh	t2,180(s0)
    3c14:	10000008 	b	3c38 <func_80930158+0xb0>
    3c18:	860d0198 	lh	t5,408(s0)
    3c1c:	860b00b4 	lh	t3,180(s0)
    3c20:	24050000 	li	a1,0
    3c24:	3c064270 	lui	a2,0x4270
    3c28:	256c0500 	addiu	t4,t3,1280
    3c2c:	0c000000 	jal	0 <BossSst_Init>
    3c30:	a60c00b4 	sh	t4,180(s0)
    3c34:	860d0198 	lh	t5,408(s0)
    3c38:	02002025 	move	a0,s0
    3c3c:	55a00006 	bnezl	t5,3c58 <func_80930158+0xd0>
    3c40:	8fbf001c 	lw	ra,28(sp)
    3c44:	0c000000 	jal	0 <BossSst_Init>
    3c48:	24053950 	li	a1,14672
    3c4c:	0c000000 	jal	0 <BossSst_Init>
    3c50:	02002025 	move	a0,s0
    3c54:	8fbf001c 	lw	ra,28(sp)
    3c58:	8fb00018 	lw	s0,24(sp)
    3c5c:	27bd0020 	addiu	sp,sp,32
    3c60:	03e00008 	jr	ra
    3c64:	00000000 	nop

00003c68 <func_80930238>:
    3c68:	27bdffe8 	addiu	sp,sp,-24
    3c6c:	afbf0014 	sw	ra,20(sp)
    3c70:	00803025 	move	a2,a0
    3c74:	84ce001c 	lh	t6,28(a2)
    3c78:	3c050000 	lui	a1,0x0
    3c7c:	afa60018 	sw	a2,24(sp)
    3c80:	000e7880 	sll	t7,t6,0x2
    3c84:	00af2821 	addu	a1,a1,t7
    3c88:	8ca50000 	lw	a1,0(a1)
    3c8c:	0c000000 	jal	0 <BossSst_Init>
    3c90:	2484014c 	addiu	a0,a0,332
    3c94:	8fa60018 	lw	a2,24(sp)
    3c98:	3c180000 	lui	t8,0x0
    3c9c:	27180000 	addiu	t8,t8,0
    3ca0:	acd80190 	sw	t8,400(a2)
    3ca4:	8fbf0014 	lw	ra,20(sp)
    3ca8:	27bd0018 	addiu	sp,sp,24
    3cac:	03e00008 	jr	ra
    3cb0:	00000000 	nop

00003cb4 <func_80930284>:
    3cb4:	27bdffd8 	addiu	sp,sp,-40
    3cb8:	afb00020 	sw	s0,32(sp)
    3cbc:	00808025 	move	s0,a0
    3cc0:	afbf0024 	sw	ra,36(sp)
    3cc4:	afa5002c 	sw	a1,44(sp)
    3cc8:	0c000000 	jal	0 <BossSst_Init>
    3ccc:	2484014c 	addiu	a0,a0,332
    3cd0:	8e0e011c 	lw	t6,284(s0)
    3cd4:	3c190000 	lui	t9,0x0
    3cd8:	24010008 	li	at,8
    3cdc:	85cf001c 	lh	t7,28(t6)
    3ce0:	26040028 	addiu	a0,s0,40
    3ce4:	3c054220 	lui	a1,0x4220
    3ce8:	000fc080 	sll	t8,t7,0x2
    3cec:	0338c821 	addu	t9,t9,t8
    3cf0:	8f390000 	lw	t9,0(t9)
    3cf4:	3c063f00 	lui	a2,0x3f00
    3cf8:	57210006 	bnel	t9,at,3d14 <func_80930284+0x60>
    3cfc:	3c014040 	lui	at,0x4040
    3d00:	0c000000 	jal	0 <BossSst_Init>
    3d04:	02002025 	move	a0,s0
    3d08:	10000037 	b	3de8 <func_80930284+0x134>
    3d0c:	8fbf0024 	lw	ra,36(sp)
    3d10:	3c014040 	lui	at,0x4040
    3d14:	44812000 	mtc1	at,$f4
    3d18:	3c0741a0 	lui	a3,0x41a0
    3d1c:	0c000000 	jal	0 <BossSst_Init>
    3d20:	e7a40010 	swc1	$f4,16(sp)
    3d24:	260400b4 	addiu	a0,s0,180
    3d28:	2405fc00 	li	a1,-1024
    3d2c:	0c000000 	jal	0 <BossSst_Init>
    3d30:	240600a0 	li	a2,160
    3d34:	26040024 	addiu	a0,s0,36
    3d38:	8e050008 	lw	a1,8(s0)
    3d3c:	0c000000 	jal	0 <BossSst_Init>
    3d40:	3c063f80 	lui	a2,0x3f80
    3d44:	2604002c 	addiu	a0,s0,44
    3d48:	8e050010 	lw	a1,16(s0)
    3d4c:	0c000000 	jal	0 <BossSst_Init>
    3d50:	3c063f80 	lui	a2,0x3f80
    3d54:	3c020000 	lui	v0,0x0
    3d58:	8c420000 	lw	v0,0(v0)
    3d5c:	3c080000 	lui	t0,0x0
    3d60:	25080000 	addiu	t0,t0,0
    3d64:	8c430190 	lw	v1,400(v0)
    3d68:	3c0a0000 	lui	t2,0x0
    3d6c:	254a0000 	addiu	t2,t2,0
    3d70:	1503000c 	bne	t0,v1,3da4 <func_80930284+0xf0>
    3d74:	00000000 	nop
    3d78:	82090195 	lb	t1,405(s0)
    3d7c:	11200005 	beqz	t1,3d94 <func_80930284+0xe0>
    3d80:	00000000 	nop
    3d84:	0c000000 	jal	0 <BossSst_Init>
    3d88:	02002025 	move	a0,s0
    3d8c:	10000016 	b	3de8 <func_80930284+0x134>
    3d90:	8fbf0024 	lw	ra,36(sp)
    3d94:	0c000000 	jal	0 <BossSst_Init>
    3d98:	02002025 	move	a0,s0
    3d9c:	10000012 	b	3de8 <func_80930284+0x134>
    3da0:	8fbf0024 	lw	ra,36(sp)
    3da4:	51430010 	beql	t2,v1,3de8 <func_80930284+0x134>
    3da8:	8fbf0024 	lw	ra,36(sp)
    3dac:	84430198 	lh	v1,408(v0)
    3db0:	24010007 	li	at,7
    3db4:	24040005 	li	a0,5
    3db8:	0061001a 	div	zero,v1,at
    3dbc:	00005810 	mfhi	t3
    3dc0:	2401001c 	li	at,28
    3dc4:	548b0008 	bnel	a0,t3,3de8 <func_80930284+0x134>
    3dc8:	8fbf0024 	lw	ra,36(sp)
    3dcc:	0061001a 	div	zero,v1,at
    3dd0:	00006010 	mfhi	t4
    3dd4:	508c0004 	beql	a0,t4,3de8 <func_80930284+0x134>
    3dd8:	8fbf0024 	lw	ra,36(sp)
    3ddc:	0c000000 	jal	0 <BossSst_Init>
    3de0:	02002025 	move	a0,s0
    3de4:	8fbf0024 	lw	ra,36(sp)
    3de8:	8fb00020 	lw	s0,32(sp)
    3dec:	27bd0028 	addiu	sp,sp,40
    3df0:	03e00008 	jr	ra
    3df4:	00000000 	nop

00003df8 <func_809303C8>:
    3df8:	27bdffe8 	addiu	sp,sp,-24
    3dfc:	afbf0014 	sw	ra,20(sp)
    3e00:	848f001c 	lh	t7,28(a0)
    3e04:	3c010000 	lui	at,0x0
    3e08:	240e0002 	li	t6,2
    3e0c:	000fc080 	sll	t8,t7,0x2
    3e10:	00380821 	addu	at,at,t8
    3e14:	ac2e0000 	sw	t6,0(at)
    3e18:	909903e4 	lbu	t9,996(a0)
    3e1c:	00803825 	move	a3,a0
    3e20:	3c050000 	lui	a1,0x0
    3e24:	3328fffc 	andi	t0,t9,0xfffc
    3e28:	a08803e4 	sb	t0,996(a0)
    3e2c:	84e9001c 	lh	t1,28(a3)
    3e30:	afa70018 	sw	a3,24(sp)
    3e34:	2484014c 	addiu	a0,a0,332
    3e38:	00095080 	sll	t2,t1,0x2
    3e3c:	00aa2821 	addu	a1,a1,t2
    3e40:	8ca50000 	lw	a1,0(a1)
    3e44:	0c000000 	jal	0 <BossSst_Init>
    3e48:	3c0640c0 	lui	a2,0x40c0
    3e4c:	8fa70018 	lw	a3,24(sp)
    3e50:	3c0b0000 	lui	t3,0x0
    3e54:	256b0000 	addiu	t3,t3,0
    3e58:	aceb0190 	sw	t3,400(a3)
    3e5c:	8fbf0014 	lw	ra,20(sp)
    3e60:	27bd0018 	addiu	sp,sp,24
    3e64:	03e00008 	jr	ra
    3e68:	00000000 	nop

00003e6c <func_8093043C>:
    3e6c:	27bdffe8 	addiu	sp,sp,-24
    3e70:	afbf0014 	sw	ra,20(sp)
    3e74:	afa40018 	sw	a0,24(sp)
    3e78:	afa5001c 	sw	a1,28(sp)
    3e7c:	0c000000 	jal	0 <BossSst_Init>
    3e80:	2484014c 	addiu	a0,a0,332
    3e84:	50400004 	beqzl	v0,3e98 <func_8093043C+0x2c>
    3e88:	8fbf0014 	lw	ra,20(sp)
    3e8c:	0c000000 	jal	0 <BossSst_Init>
    3e90:	8fa40018 	lw	a0,24(sp)
    3e94:	8fbf0014 	lw	ra,20(sp)
    3e98:	27bd0018 	addiu	sp,sp,24
    3e9c:	03e00008 	jr	ra
    3ea0:	00000000 	nop

00003ea4 <func_80930474>:
    3ea4:	27bdffe8 	addiu	sp,sp,-24
    3ea8:	afbf0014 	sw	ra,20(sp)
    3eac:	848f001c 	lh	t7,28(a0)
    3eb0:	3c010000 	lui	at,0x0
    3eb4:	240e0002 	li	t6,2
    3eb8:	000fc080 	sll	t8,t7,0x2
    3ebc:	00380821 	addu	at,at,t8
    3ec0:	00803825 	move	a3,a0
    3ec4:	ac2e0000 	sw	t6,0(at)
    3ec8:	84f9001c 	lh	t9,28(a3)
    3ecc:	3c050000 	lui	a1,0x0
    3ed0:	afa70018 	sw	a3,24(sp)
    3ed4:	00194080 	sll	t0,t9,0x2
    3ed8:	00a82821 	addu	a1,a1,t0
    3edc:	8ca50000 	lw	a1,0(a1)
    3ee0:	2484014c 	addiu	a0,a0,332
    3ee4:	0c000000 	jal	0 <BossSst_Init>
    3ee8:	3c064120 	lui	a2,0x4120
    3eec:	8fa40018 	lw	a0,24(sp)
    3ef0:	00002825 	move	a1,zero
    3ef4:	908903e4 	lbu	t1,996(a0)
    3ef8:	908b03e5 	lbu	t3,997(a0)
    3efc:	8c8d0004 	lw	t5,4(a0)
    3f00:	312afffc 	andi	t2,t1,0xfffc
    3f04:	356c0001 	ori	t4,t3,0x1
    3f08:	35af0001 	ori	t7,t5,0x1
    3f0c:	a08a03e4 	sb	t2,996(a0)
    3f10:	a08c03e5 	sb	t4,997(a0)
    3f14:	0c000000 	jal	0 <BossSst_Init>
    3f18:	ac8f0004 	sw	t7,4(a0)
    3f1c:	8fa70018 	lw	a3,24(sp)
    3f20:	3c014040 	lui	at,0x4040
    3f24:	44812000 	mtc1	at,$f4
    3f28:	3c0e0000 	lui	t6,0x0
    3f2c:	25ce0000 	addiu	t6,t6,0
    3f30:	a4e00198 	sh	zero,408(a3)
    3f34:	acee0190 	sw	t6,400(a3)
    3f38:	e4e40068 	swc1	$f4,104(a3)
    3f3c:	8fbf0014 	lw	ra,20(sp)
    3f40:	27bd0018 	addiu	sp,sp,24
    3f44:	03e00008 	jr	ra
    3f48:	00000000 	nop

00003f4c <func_8093051C>:
    3f4c:	27bdffc0 	addiu	sp,sp,-64
    3f50:	afb00020 	sw	s0,32(sp)
    3f54:	00808025 	move	s0,a0
    3f58:	afbf0024 	sw	ra,36(sp)
    3f5c:	2484014c 	addiu	a0,a0,332
    3f60:	afa50044 	sw	a1,68(sp)
    3f64:	0c000000 	jal	0 <BossSst_Init>
    3f68:	afa4002c 	sw	a0,44(sp)
    3f6c:	3c014248 	lui	at,0x4248
    3f70:	44811000 	mtc1	at,$f2
    3f74:	3c010000 	lui	at,0x0
    3f78:	c4260000 	lwc1	$f6,0(at)
    3f7c:	c6040068 	lwc1	$f4,104(s0)
    3f80:	3c013f80 	lui	at,0x3f80
    3f84:	44815000 	mtc1	at,$f10
    3f88:	46062202 	mul.s	$f8,$f4,$f6
    3f8c:	3c063e99 	lui	a2,0x3e99
    3f90:	34c6999a 	ori	a2,a2,0x999a
    3f94:	26040024 	addiu	a0,s0,36
    3f98:	e6080068 	swc1	$f8,104(s0)
    3f9c:	c6000068 	lwc1	$f0,104(s0)
    3fa0:	4600103c 	c.lt.s	$f2,$f0
    3fa4:	00000000 	nop
    3fa8:	45020004 	bc1fl	3fbc <func_8093051C+0x70>
    3fac:	e6000068 	swc1	$f0,104(s0)
    3fb0:	10000002 	b	3fbc <func_8093051C+0x70>
    3fb4:	e6020068 	swc1	$f2,104(s0)
    3fb8:	e6000068 	swc1	$f0,104(s0)
    3fbc:	8e050008 	lw	a1,8(s0)
    3fc0:	8e070068 	lw	a3,104(s0)
    3fc4:	0c000000 	jal	0 <BossSst_Init>
    3fc8:	e7aa0010 	swc1	$f10,16(sp)
    3fcc:	e7a0003c 	swc1	$f0,60(sp)
    3fd0:	3c013f80 	lui	at,0x3f80
    3fd4:	44818000 	mtc1	at,$f16
    3fd8:	8e070068 	lw	a3,104(s0)
    3fdc:	8e050010 	lw	a1,16(s0)
    3fe0:	3c063e99 	lui	a2,0x3e99
    3fe4:	34c6999a 	ori	a2,a2,0x999a
    3fe8:	2604002c 	addiu	a0,s0,44
    3fec:	0c000000 	jal	0 <BossSst_Init>
    3ff0:	e7b00010 	swc1	$f16,16(sp)
    3ff4:	c7b2003c 	lwc1	$f18,60(sp)
    3ff8:	260400b6 	addiu	a0,s0,182
    3ffc:	24060200 	li	a2,512
    4000:	46009100 	add.s	$f4,$f18,$f0
    4004:	e7a4003c 	swc1	$f4,60(sp)
    4008:	86020198 	lh	v0,408(s0)
    400c:	10400028 	beqz	v0,40b0 <func_8093051C+0x164>
    4010:	00000000 	nop
    4014:	10400003 	beqz	v0,4024 <func_8093051C+0xd8>
    4018:	244effff 	addiu	t6,v0,-1
    401c:	a60e0198 	sh	t6,408(s0)
    4020:	86020198 	lh	v0,408(s0)
    4024:	44823000 	mtc1	v0,$f6
    4028:	3c010000 	lui	at,0x0
    402c:	c42a0000 	lwc1	$f10,0(at)
    4030:	46803220 	cvt.s.w	$f8,$f6
    4034:	3c013d80 	lui	at,0x3d80
    4038:	44819000 	mtc1	at,$f18
    403c:	460a4402 	mul.s	$f16,$f8,$f10
    4040:	00000000 	nop
    4044:	46128302 	mul.s	$f12,$f16,$f18
    4048:	0c000000 	jal	0 <BossSst_Init>
    404c:	00000000 	nop
    4050:	3c01437a 	lui	at,0x437a
    4054:	44812000 	mtc1	at,$f4
    4058:	c608000c 	lwc1	$f8,12(s0)
    405c:	86020198 	lh	v0,408(s0)
    4060:	46040182 	mul.s	$f6,$f0,$f4
    4064:	24010004 	li	at,4
    4068:	46083280 	add.s	$f10,$f6,$f8
    406c:	14400005 	bnez	v0,4084 <func_8093051C+0x138>
    4070:	e60a0028 	swc1	$f10,40(s0)
    4074:	0c000000 	jal	0 <BossSst_Init>
    4078:	02002025 	move	a0,s0
    407c:	1000003a 	b	4168 <func_8093051C+0x21c>
    4080:	8fbf0024 	lw	ra,36(sp)
    4084:	14410037 	bne	v0,at,4164 <func_8093051C+0x218>
    4088:	8fa4002c 	lw	a0,44(sp)
    408c:	860f001c 	lh	t7,28(s0)
    4090:	3c050000 	lui	a1,0x0
    4094:	3c064080 	lui	a2,0x4080
    4098:	000fc080 	sll	t8,t7,0x2
    409c:	00b82821 	addu	a1,a1,t8
    40a0:	0c000000 	jal	0 <BossSst_Init>
    40a4:	8ca50000 	lw	a1,0(a1)
    40a8:	1000002f 	b	4168 <func_8093051C+0x21c>
    40ac:	8fbf0024 	lw	ra,36(sp)
    40b0:	0c000000 	jal	0 <BossSst_Init>
    40b4:	86050016 	lh	a1,22(s0)
    40b8:	afa20038 	sw	v0,56(sp)
    40bc:	86050018 	lh	a1,24(s0)
    40c0:	260400b8 	addiu	a0,s0,184
    40c4:	0c000000 	jal	0 <BossSst_Init>
    40c8:	24060200 	li	a2,512
    40cc:	8fb90038 	lw	t9,56(sp)
    40d0:	260401a0 	addiu	a0,s0,416
    40d4:	00002825 	move	a1,zero
    40d8:	03224024 	and	t0,t9,v0
    40dc:	afa80038 	sw	t0,56(sp)
    40e0:	0c000000 	jal	0 <BossSst_Init>
    40e4:	24060800 	li	a2,2048
    40e8:	8fa90038 	lw	t1,56(sp)
    40ec:	02002025 	move	a0,s0
    40f0:	24053167 	li	a1,12647
    40f4:	01225024 	and	t2,t1,v0
    40f8:	0c000000 	jal	0 <BossSst_Init>
    40fc:	afaa0038 	sw	t2,56(sp)
    4100:	3c0140a0 	lui	at,0x40a0
    4104:	44818000 	mtc1	at,$f16
    4108:	26040028 	addiu	a0,s0,40
    410c:	3c05437a 	lui	a1,0x437a
    4110:	3c063f00 	lui	a2,0x3f00
    4114:	3c07428c 	lui	a3,0x428c
    4118:	0c000000 	jal	0 <BossSst_Init>
    411c:	e7b00010 	swc1	$f16,16(sp)
    4120:	3c013f80 	lui	at,0x3f80
    4124:	44819000 	mtc1	at,$f18
    4128:	8fab0038 	lw	t3,56(sp)
    412c:	4612003c 	c.lt.s	$f0,$f18
    4130:	00000000 	nop
    4134:	4502000c 	bc1fl	4168 <func_8093051C+0x21c>
    4138:	8fbf0024 	lw	ra,36(sp)
    413c:	11600009 	beqz	t3,4164 <func_8093051C+0x218>
    4140:	c7a4003c 	lwc1	$f4,60(sp)
    4144:	3c014120 	lui	at,0x4120
    4148:	44813000 	mtc1	at,$f6
    414c:	240c0008 	li	t4,8
    4150:	4606203c 	c.lt.s	$f4,$f6
    4154:	00000000 	nop
    4158:	45020003 	bc1fl	4168 <func_8093051C+0x21c>
    415c:	8fbf0024 	lw	ra,36(sp)
    4160:	a60c0198 	sh	t4,408(s0)
    4164:	8fbf0024 	lw	ra,36(sp)
    4168:	8fb00020 	lw	s0,32(sp)
    416c:	27bd0040 	addiu	sp,sp,64
    4170:	03e00008 	jr	ra
    4174:	00000000 	nop

00004178 <func_80930748>:
    4178:	27bdffe8 	addiu	sp,sp,-24
    417c:	afbf0014 	sw	ra,20(sp)
    4180:	848f001c 	lh	t7,28(a0)
    4184:	3c010000 	lui	at,0x0
    4188:	240e0003 	li	t6,3
    418c:	000fc080 	sll	t8,t7,0x2
    4190:	00380821 	addu	at,at,t8
    4194:	ac2e0000 	sw	t6,0(at)
    4198:	00803825 	move	a3,a0
    419c:	a4800198 	sh	zero,408(a0)
    41a0:	84f9001c 	lh	t9,28(a3)
    41a4:	3c050000 	lui	a1,0x0
    41a8:	afa70018 	sw	a3,24(sp)
    41ac:	00194080 	sll	t0,t9,0x2
    41b0:	00a82821 	addu	a1,a1,t0
    41b4:	8ca50000 	lw	a1,0(a1)
    41b8:	2484014c 	addiu	a0,a0,332
    41bc:	0c000000 	jal	0 <BossSst_Init>
    41c0:	3c064120 	lui	a2,0x4120
    41c4:	8fa70018 	lw	a3,24(sp)
    41c8:	3c090000 	lui	t1,0x0
    41cc:	25290000 	addiu	t1,t1,0
    41d0:	ace90190 	sw	t1,400(a3)
    41d4:	8fbf0014 	lw	ra,20(sp)
    41d8:	27bd0018 	addiu	sp,sp,24
    41dc:	03e00008 	jr	ra
    41e0:	00000000 	nop

000041e4 <func_809307B4>:
    41e4:	27bdffd8 	addiu	sp,sp,-40
    41e8:	afb00018 	sw	s0,24(sp)
    41ec:	00808025 	move	s0,a0
    41f0:	afbf001c 	sw	ra,28(sp)
    41f4:	afa5002c 	sw	a1,44(sp)
    41f8:	0c000000 	jal	0 <BossSst_Init>
    41fc:	2484014c 	addiu	a0,a0,332
    4200:	86030198 	lh	v1,408(s0)
    4204:	8faf002c 	lw	t7,44(sp)
    4208:	26040028 	addiu	a0,s0,40
    420c:	1060000b 	beqz	v1,423c <func_809307B4+0x58>
    4210:	3c054396 	lui	a1,0x4396
    4214:	10600003 	beqz	v1,4224 <func_809307B4+0x40>
    4218:	246effff 	addiu	t6,v1,-1
    421c:	a60e0198 	sh	t6,408(s0)
    4220:	86030198 	lh	v1,408(s0)
    4224:	54600027 	bnezl	v1,42c4 <func_809307B4+0xe0>
    4228:	8fbf001c 	lw	ra,28(sp)
    422c:	0c000000 	jal	0 <BossSst_Init>
    4230:	02002025 	move	a0,s0
    4234:	10000023 	b	42c4 <func_809307B4+0xe0>
    4238:	8fbf001c 	lw	ra,28(sp)
    423c:	8df81c44 	lw	t8,7236(t7)
    4240:	3c0641f0 	lui	a2,0x41f0
    4244:	0c000000 	jal	0 <BossSst_Init>
    4248:	afb80024 	sw	t8,36(sp)
    424c:	1040000a 	beqz	v0,4278 <func_809307B4+0x94>
    4250:	260400b4 	addiu	a0,s0,180
    4254:	3c01430c 	lui	at,0x430c
    4258:	44813000 	mtc1	at,$f6
    425c:	c6040090 	lwc1	$f4,144(s0)
    4260:	24190014 	li	t9,20
    4264:	4606203c 	c.lt.s	$f4,$f6
    4268:	00000000 	nop
    426c:	45020003 	bc1fl	427c <func_809307B4+0x98>
    4270:	2405f000 	li	a1,-4096
    4274:	a6190198 	sh	t9,408(s0)
    4278:	2405f000 	li	a1,-4096
    427c:	0c000000 	jal	0 <BossSst_Init>
    4280:	24060100 	li	a2,256
    4284:	8fa80024 	lw	t0,36(sp)
    4288:	26040024 	addiu	a0,s0,36
    428c:	3c063f00 	lui	a2,0x3f00
    4290:	3c074220 	lui	a3,0x4220
    4294:	0c000000 	jal	0 <BossSst_Init>
    4298:	8d050024 	lw	a1,36(t0)
    429c:	8fa90024 	lw	t1,36(sp)
    42a0:	2604002c 	addiu	a0,s0,44
    42a4:	3c063f00 	lui	a2,0x3f00
    42a8:	3c074220 	lui	a3,0x4220
    42ac:	0c000000 	jal	0 <BossSst_Init>
    42b0:	8d25002c 	lw	a1,44(t1)
    42b4:	02002025 	move	a0,s0
    42b8:	0c000000 	jal	0 <BossSst_Init>
    42bc:	24053167 	li	a1,12647
    42c0:	8fbf001c 	lw	ra,28(sp)
    42c4:	8fb00018 	lw	s0,24(sp)
    42c8:	27bd0028 	addiu	sp,sp,40
    42cc:	03e00008 	jr	ra
    42d0:	00000000 	nop

000042d4 <func_809308A4>:
    42d4:	27bdffe0 	addiu	sp,sp,-32
    42d8:	afbf001c 	sw	ra,28(sp)
    42dc:	afb00018 	sw	s0,24(sp)
    42e0:	848f001c 	lh	t7,28(a0)
    42e4:	3c010000 	lui	at,0x0
    42e8:	240e0003 	li	t6,3
    42ec:	000fc080 	sll	t8,t7,0x2
    42f0:	00380821 	addu	at,at,t8
    42f4:	ac2e0000 	sw	t6,0(at)
    42f8:	3c013f80 	lui	at,0x3f80
    42fc:	44812000 	mtc1	at,$f4
    4300:	00808025 	move	s0,a0
    4304:	3c050000 	lui	a1,0x0
    4308:	e4840060 	swc1	$f4,96(a0)
    430c:	8619001c 	lh	t9,28(s0)
    4310:	2484014c 	addiu	a0,a0,332
    4314:	3c064120 	lui	a2,0x4120
    4318:	00194080 	sll	t0,t9,0x2
    431c:	00a82821 	addu	a1,a1,t0
    4320:	0c000000 	jal	0 <BossSst_Init>
    4324:	8ca50000 	lw	a1,0(a1)
    4328:	02002025 	move	a0,s0
    432c:	0c000000 	jal	0 <BossSst_Init>
    4330:	24050020 	li	a1,32
    4334:	a2000195 	sb	zero,405(s0)
    4338:	02002025 	move	a0,s0
    433c:	0c000000 	jal	0 <BossSst_Init>
    4340:	24053953 	li	a1,14675
    4344:	3c090000 	lui	t1,0x0
    4348:	25290000 	addiu	t1,t1,0
    434c:	ae090190 	sw	t1,400(s0)
    4350:	8fbf001c 	lw	ra,28(sp)
    4354:	8fb00018 	lw	s0,24(sp)
    4358:	27bd0020 	addiu	sp,sp,32
    435c:	03e00008 	jr	ra
    4360:	00000000 	nop

00004364 <func_80930934>:
    4364:	27bdffd0 	addiu	sp,sp,-48
    4368:	afb00020 	sw	s0,32(sp)
    436c:	00808025 	move	s0,a0
    4370:	afbf0024 	sw	ra,36(sp)
    4374:	afa50034 	sw	a1,52(sp)
    4378:	0c000000 	jal	0 <BossSst_Init>
    437c:	2484014c 	addiu	a0,a0,332
    4380:	2604019e 	addiu	a0,s0,414
    4384:	2405f254 	li	a1,-3500
    4388:	0c000000 	jal	0 <BossSst_Init>
    438c:	240601f4 	li	a2,500
    4390:	260400b4 	addiu	a0,s0,180
    4394:	afa40028 	sw	a0,40(sp)
    4398:	00002825 	move	a1,zero
    439c:	0c000000 	jal	0 <BossSst_Init>
    43a0:	24061000 	li	a2,4096
    43a4:	260401a0 	addiu	a0,s0,416
    43a8:	00002825 	move	a1,zero
    43ac:	0c000000 	jal	0 <BossSst_Init>
    43b0:	24061000 	li	a2,4096
    43b4:	86030198 	lh	v1,408(s0)
    43b8:	50600015 	beqzl	v1,4410 <func_80930934+0xac>
    43bc:	82190195 	lb	t9,405(s0)
    43c0:	10600003 	beqz	v1,43d0 <func_80930934+0x6c>
    43c4:	246effff 	addiu	t6,v1,-1
    43c8:	a60e0198 	sh	t6,408(s0)
    43cc:	86030198 	lh	v1,408(s0)
    43d0:	54600059 	bnezl	v1,4538 <func_80930934+0x1d4>
    43d4:	8fbf0024 	lw	ra,36(sp)
    43d8:	920203e5 	lbu	v0,997(s0)
    43dc:	02002025 	move	a0,s0
    43e0:	304f0001 	andi	t7,v0,0x1
    43e4:	11e00005 	beqz	t7,43fc <func_80930934+0x98>
    43e8:	34580001 	ori	t8,v0,0x1
    43ec:	0c000000 	jal	0 <BossSst_Init>
    43f0:	02002025 	move	a0,s0
    43f4:	10000050 	b	4538 <func_80930934+0x1d4>
    43f8:	8fbf0024 	lw	ra,36(sp)
    43fc:	0c000000 	jal	0 <BossSst_Init>
    4400:	a21803e5 	sb	t8,997(s0)
    4404:	1000004c 	b	4538 <func_80930934+0x1d4>
    4408:	8fbf0024 	lw	ra,36(sp)
    440c:	82190195 	lb	t9,405(s0)
    4410:	3c013fc0 	lui	at,0x3fc0
    4414:	53200008 	beqzl	t9,4438 <func_80930934+0xd4>
    4418:	c6040060 	lwc1	$f4,96(s0)
    441c:	920903e4 	lbu	t1,996(s0)
    4420:	2408001e 	li	t0,30
    4424:	a6080198 	sh	t0,408(s0)
    4428:	312afffc 	andi	t2,t1,0xfffc
    442c:	1000001a 	b	4498 <func_80930934+0x134>
    4430:	a20a03e4 	sb	t2,996(s0)
    4434:	c6040060 	lwc1	$f4,96(s0)
    4438:	44813000 	mtc1	at,$f6
    443c:	26040028 	addiu	a0,s0,40
    4440:	8e050080 	lw	a1,128(s0)
    4444:	46062202 	mul.s	$f8,$f4,$f6
    4448:	e6080060 	swc1	$f8,96(s0)
    444c:	0c000000 	jal	0 <BossSst_Init>
    4450:	8e060060 	lw	a2,96(s0)
    4454:	10400010 	beqz	v0,4498 <func_80930934+0x134>
    4458:	240b0001 	li	t3,1
    445c:	a20b0195 	sb	t3,405(s0)
    4460:	02002025 	move	a0,s0
    4464:	0c000000 	jal	0 <BossSst_Init>
    4468:	24053950 	li	a1,14672
    446c:	0c000000 	jal	0 <BossSst_Init>
    4470:	02002025 	move	a0,s0
    4474:	920c06c4 	lbu	t4,1732(s0)
    4478:	02002025 	move	a0,s0
    447c:	260506b4 	addiu	a1,s0,1716
    4480:	358d0001 	ori	t5,t4,0x1
    4484:	0c000000 	jal	0 <BossSst_Init>
    4488:	a20d06c4 	sb	t5,1732(s0)
    448c:	3c0e0000 	lui	t6,0x0
    4490:	85ce0000 	lh	t6,0(t6)
    4494:	a60e06f4 	sh	t6,1780(s0)
    4498:	920f03e4 	lbu	t7,996(s0)
    449c:	8fb90034 	lw	t9,52(sp)
    44a0:	31f80002 	andi	t8,t7,0x2
    44a4:	53000020 	beqzl	t8,4528 <func_80930934+0x1c4>
    44a8:	8fa40028 	lw	a0,40(sp)
    44ac:	8f281c44 	lw	t0,7236(t9)
    44b0:	afa8002c 	sw	t0,44(sp)
    44b4:	0c000000 	jal	0 <BossSst_Init>
    44b8:	8604008a 	lh	a0,138(s0)
    44bc:	3c0142c8 	lui	at,0x42c8
    44c0:	44815000 	mtc1	at,$f10
    44c4:	c6120024 	lwc1	$f18,36(s0)
    44c8:	8fa9002c 	lw	t1,44(sp)
    44cc:	460a0402 	mul.s	$f16,$f0,$f10
    44d0:	46128100 	add.s	$f4,$f16,$f18
    44d4:	e5240024 	swc1	$f4,36(t1)
    44d8:	0c000000 	jal	0 <BossSst_Init>
    44dc:	8604008a 	lh	a0,138(s0)
    44e0:	3c0142c8 	lui	at,0x42c8
    44e4:	44813000 	mtc1	at,$f6
    44e8:	c60a002c 	lwc1	$f10,44(s0)
    44ec:	8faa002c 	lw	t2,44(sp)
    44f0:	46060202 	mul.s	$f8,$f0,$f6
    44f4:	44809000 	mtc1	zero,$f18
    44f8:	02002825 	move	a1,s0
    44fc:	3c0640a0 	lui	a2,0x40a0
    4500:	460a4400 	add.s	$f16,$f8,$f10
    4504:	e550002c 	swc1	$f16,44(t2)
    4508:	920b03e4 	lbu	t3,996(s0)
    450c:	8607008a 	lh	a3,138(s0)
    4510:	316cfffc 	andi	t4,t3,0xfffc
    4514:	a20c03e4 	sb	t4,996(s0)
    4518:	8fa40034 	lw	a0,52(sp)
    451c:	0c000000 	jal	0 <BossSst_Init>
    4520:	e7b20010 	swc1	$f18,16(sp)
    4524:	8fa40028 	lw	a0,40(sp)
    4528:	00002825 	move	a1,zero
    452c:	0c000000 	jal	0 <BossSst_Init>
    4530:	24060200 	li	a2,512
    4534:	8fbf0024 	lw	ra,36(sp)
    4538:	8fb00020 	lw	s0,32(sp)
    453c:	27bd0030 	addiu	sp,sp,48
    4540:	03e00008 	jr	ra
    4544:	00000000 	nop

00004548 <func_80930B18>:
    4548:	27bdffe0 	addiu	sp,sp,-32
    454c:	afbf001c 	sw	ra,28(sp)
    4550:	afb00018 	sw	s0,24(sp)
    4554:	848f001c 	lh	t7,28(a0)
    4558:	3c010000 	lui	at,0x0
    455c:	240e0004 	li	t6,4
    4560:	000fc080 	sll	t8,t7,0x2
    4564:	00380821 	addu	at,at,t8
    4568:	00808025 	move	s0,a0
    456c:	ac2e0000 	sw	t6,0(at)
    4570:	8619001c 	lh	t9,28(s0)
    4574:	3c050000 	lui	a1,0x0
    4578:	2484014c 	addiu	a0,a0,332
    457c:	00194080 	sll	t0,t9,0x2
    4580:	00a82821 	addu	a1,a1,t0
    4584:	8ca50000 	lw	a1,0(a1)
    4588:	0c000000 	jal	0 <BossSst_Init>
    458c:	3c064120 	lui	a2,0x4120
    4590:	3c050000 	lui	a1,0x0
    4594:	8ca50000 	lw	a1,0(a1)
    4598:	02002025 	move	a0,s0
    459c:	0c000000 	jal	0 <BossSst_Init>
    45a0:	24a50024 	addiu	a1,a1,36
    45a4:	e60003c4 	swc1	$f0,964(s0)
    45a8:	3c040000 	lui	a0,0x0
    45ac:	8c840000 	lw	a0,0(a0)
    45b0:	0c000000 	jal	0 <BossSst_Init>
    45b4:	26050024 	addiu	a1,s0,36
    45b8:	820a0194 	lb	t2,404(s0)
    45bc:	86090016 	lh	t1,22(s0)
    45c0:	3c0d0000 	lui	t5,0x0
    45c4:	000a5b40 	sll	t3,t2,0xd
    45c8:	25ad0000 	addiu	t5,t5,0
    45cc:	012b6021 	addu	t4,t1,t3
    45d0:	a6020032 	sh	v0,50(s0)
    45d4:	a60c01a4 	sh	t4,420(s0)
    45d8:	ae0d0190 	sw	t5,400(s0)
    45dc:	8fbf001c 	lw	ra,28(sp)
    45e0:	8fb00018 	lw	s0,24(sp)
    45e4:	27bd0020 	addiu	sp,sp,32
    45e8:	03e00008 	jr	ra
    45ec:	00000000 	nop

000045f0 <func_80930BC0>:
    45f0:	27bdffd8 	addiu	sp,sp,-40
    45f4:	afb0001c 	sw	s0,28(sp)
    45f8:	00808025 	move	s0,a0
    45fc:	afbf0024 	sw	ra,36(sp)
    4600:	afb10020 	sw	s1,32(sp)
    4604:	afa5002c 	sw	a1,44(sp)
    4608:	0c000000 	jal	0 <BossSst_Init>
    460c:	2484014c 	addiu	a0,a0,332
    4610:	26040028 	addiu	a0,s0,40
    4614:	3c054248 	lui	a1,0x4248
    4618:	0c000000 	jal	0 <BossSst_Init>
    461c:	3c064080 	lui	a2,0x4080
    4620:	00408825 	move	s1,v0
    4624:	260400b6 	addiu	a0,s0,182
    4628:	860501a4 	lh	a1,420(s0)
    462c:	0c000000 	jal	0 <BossSst_Init>
    4630:	24060200 	li	a2,512
    4634:	02228824 	and	s1,s1,v0
    4638:	26040032 	addiu	a0,s0,50
    463c:	860501a4 	lh	a1,420(s0)
    4640:	0c000000 	jal	0 <BossSst_Init>
    4644:	24060400 	li	a2,1024
    4648:	3c0e0000 	lui	t6,0x0
    464c:	8dce0000 	lw	t6,0(t6)
    4650:	3c013f80 	lui	at,0x3f80
    4654:	44812000 	mtc1	at,$f4
    4658:	8dc50090 	lw	a1,144(t6)
    465c:	02228824 	and	s1,s1,v0
    4660:	260403c4 	addiu	a0,s0,964
    4664:	3c063f00 	lui	a2,0x3f00
    4668:	3c074270 	lui	a3,0x4270
    466c:	0c000000 	jal	0 <BossSst_Init>
    4670:	e7a40010 	swc1	$f4,16(sp)
    4674:	3c014120 	lui	at,0x4120
    4678:	44813000 	mtc1	at,$f6
    467c:	00007825 	move	t7,zero
    4680:	4606003c 	c.lt.s	$f0,$f6
    4684:	00000000 	nop
    4688:	45020003 	bc1fl	4698 <func_80930BC0+0xa8>
    468c:	022f8824 	and	s1,s1,t7
    4690:	240f0001 	li	t7,1
    4694:	022f8824 	and	s1,s1,t7
    4698:	0c000000 	jal	0 <BossSst_Init>
    469c:	86040032 	lh	a0,50(s0)
    46a0:	c60803c4 	lwc1	$f8,964(s0)
    46a4:	3c180000 	lui	t8,0x0
    46a8:	8f180000 	lw	t8,0(t8)
    46ac:	46080282 	mul.s	$f10,$f0,$f8
    46b0:	86040032 	lh	a0,50(s0)
    46b4:	c7100024 	lwc1	$f16,36(t8)
    46b8:	46105480 	add.s	$f18,$f10,$f16
    46bc:	0c000000 	jal	0 <BossSst_Init>
    46c0:	e6120024 	swc1	$f18,36(s0)
    46c4:	c60403c4 	lwc1	$f4,964(s0)
    46c8:	3c190000 	lui	t9,0x0
    46cc:	8f390000 	lw	t9,0(t9)
    46d0:	46040182 	mul.s	$f6,$f0,$f4
    46d4:	02002025 	move	a0,s0
    46d8:	c728002c 	lwc1	$f8,44(t9)
    46dc:	46083280 	add.s	$f10,$f6,$f8
    46e0:	12200005 	beqz	s1,46f8 <func_80930BC0+0x108>
    46e4:	e60a002c 	swc1	$f10,44(s0)
    46e8:	0c000000 	jal	0 <BossSst_Init>
    46ec:	02002025 	move	a0,s0
    46f0:	10000004 	b	4704 <func_80930BC0+0x114>
    46f4:	8fbf0024 	lw	ra,36(sp)
    46f8:	0c000000 	jal	0 <BossSst_Init>
    46fc:	24053167 	li	a1,12647
    4700:	8fbf0024 	lw	ra,36(sp)
    4704:	8fb0001c 	lw	s0,28(sp)
    4708:	8fb10020 	lw	s1,32(sp)
    470c:	03e00008 	jr	ra
    4710:	27bd0028 	addiu	sp,sp,40

00004714 <func_80930CE4>:
    4714:	27bdffe0 	addiu	sp,sp,-32
    4718:	afb00018 	sw	s0,24(sp)
    471c:	00808025 	move	s0,a0
    4720:	afbf001c 	sw	ra,28(sp)
    4724:	860e001c 	lh	t6,28(s0)
    4728:	3c050000 	lui	a1,0x0
    472c:	2484014c 	addiu	a0,a0,332
    4730:	000e7880 	sll	t7,t6,0x2
    4734:	00af2821 	addu	a1,a1,t7
    4738:	8ca50000 	lw	a1,0(a1)
    473c:	0c000000 	jal	0 <BossSst_Init>
    4740:	3c0640a0 	lui	a2,0x40a0
    4744:	02002025 	move	a0,s0
    4748:	0c000000 	jal	0 <BossSst_Init>
    474c:	24050010 	li	a1,16
    4750:	82190194 	lb	t9,404(s0)
    4754:	86180016 	lh	t8,22(s0)
    4758:	240a0300 	li	t2,768
    475c:	00194340 	sll	t0,t9,0xd
    4760:	03084823 	subu	t1,t8,t0
    4764:	a60901a4 	sh	t1,420(s0)
    4768:	a60a019c 	sh	t2,412(s0)
    476c:	a600019a 	sh	zero,410(s0)
    4770:	a2000195 	sb	zero,405(s0)
    4774:	02002025 	move	a0,s0
    4778:	0c000000 	jal	0 <BossSst_Init>
    477c:	24053953 	li	a1,14675
    4780:	3c0b0000 	lui	t3,0x0
    4784:	256b0000 	addiu	t3,t3,0
    4788:	ae0b0190 	sw	t3,400(s0)
    478c:	8fbf001c 	lw	ra,28(sp)
    4790:	8fb00018 	lw	s0,24(sp)
    4794:	27bd0020 	addiu	sp,sp,32
    4798:	03e00008 	jr	ra
    479c:	00000000 	nop

000047a0 <func_80930D70>:
    47a0:	27bdffd0 	addiu	sp,sp,-48
    47a4:	afbf0024 	sw	ra,36(sp)
    47a8:	afb00020 	sw	s0,32(sp)
    47ac:	afa50034 	sw	a1,52(sp)
    47b0:	8caf1c44 	lw	t7,7236(a1)
    47b4:	00808025 	move	s0,a0
    47b8:	2484014c 	addiu	a0,a0,332
    47bc:	0c000000 	jal	0 <BossSst_Init>
    47c0:	afaf002c 	sw	t7,44(sp)
    47c4:	8618019a 	lh	t8,410(s0)
    47c8:	8604019c 	lh	a0,412(s0)
    47cc:	24060004 	li	a2,4
    47d0:	27190060 	addiu	t9,t8,96
    47d4:	a619019a 	sh	t9,410(s0)
    47d8:	8603019a 	lh	v1,410(s0)
    47dc:	24080010 	li	t0,16
    47e0:	0083082a 	slt	at,a0,v1
    47e4:	50200004 	beqzl	at,47f8 <func_80930D70+0x58>
    47e8:	a603019a 	sh	v1,410(s0)
    47ec:	10000002 	b	47f8 <func_80930D70+0x58>
    47f0:	a604019a 	sh	a0,410(s0)
    47f4:	a603019a 	sh	v1,410(s0)
    47f8:	860501a4 	lh	a1,420(s0)
    47fc:	8607019a 	lh	a3,410(s0)
    4800:	afa80010 	sw	t0,16(sp)
    4804:	0c000000 	jal	0 <BossSst_Init>
    4808:	260400b6 	addiu	a0,s0,182
    480c:	54400009 	bnezl	v0,4834 <func_80930D70+0x94>
    4810:	920203e4 	lbu	v0,996(s0)
    4814:	920903e6 	lbu	t1,998(s0)
    4818:	02002025 	move	a0,s0
    481c:	312afffb 	andi	t2,t1,0xfffb
    4820:	0c000000 	jal	0 <BossSst_Init>
    4824:	a20a03e6 	sb	t2,998(s0)
    4828:	1000002b 	b	48d8 <func_80930D70+0x138>
    482c:	820f0195 	lb	t7,405(s0)
    4830:	920203e4 	lbu	v0,996(s0)
    4834:	240d0001 	li	t5,1
    4838:	02002825 	move	a1,s0
    483c:	304b0002 	andi	t3,v0,0x2
    4840:	11600024 	beqz	t3,48d4 <func_80930D70+0x134>
    4844:	304cfffc 	andi	t4,v0,0xfffc
    4848:	820f0194 	lb	t7,404(s0)
    484c:	860e00b6 	lh	t6,182(s0)
    4850:	44802000 	mtc1	zero,$f4
    4854:	000fc0c0 	sll	t8,t7,0x3
    4858:	030fc023 	subu	t8,t8,t7
    485c:	0018c2c0 	sll	t8,t8,0xb
    4860:	01d83823 	subu	a3,t6,t8
    4864:	a20c03e4 	sb	t4,996(s0)
    4868:	a20d0195 	sb	t5,405(s0)
    486c:	00073c00 	sll	a3,a3,0x10
    4870:	00073c03 	sra	a3,a3,0x10
    4874:	8fa40034 	lw	a0,52(sp)
    4878:	3c0640a0 	lui	a2,0x40a0
    487c:	0c000000 	jal	0 <BossSst_Init>
    4880:	e7a40010 	swc1	$f4,16(sp)
    4884:	8fa4002c 	lw	a0,44(sp)
    4888:	0c000000 	jal	0 <BossSst_Init>
    488c:	2405083e 	li	a1,2110
    4890:	82020194 	lb	v0,404(s0)
    4894:	861900b6 	lh	t9,182(s0)
    4898:	860901a4 	lh	t1,420(s0)
    489c:	00024080 	sll	t0,v0,0x2
    48a0:	01024021 	addu	t0,t0,v0
    48a4:	00084280 	sll	t0,t0,0xa
    48a8:	03281823 	subu	v1,t9,t0
    48ac:	00031c00 	sll	v1,v1,0x10
    48b0:	00031c03 	sra	v1,v1,0x10
    48b4:	00695023 	subu	t2,v1,t1
    48b8:	000a5c00 	sll	t3,t2,0x10
    48bc:	000b6403 	sra	t4,t3,0x10
    48c0:	01820019 	multu	t4,v0
    48c4:	00006812 	mflo	t5
    48c8:	59a00003 	blezl	t5,48d8 <func_80930D70+0x138>
    48cc:	820f0195 	lb	t7,405(s0)
    48d0:	a60301a4 	sh	v1,420(s0)
    48d4:	820f0195 	lb	t7,405(s0)
    48d8:	920203e4 	lbu	v0,996(s0)
    48dc:	8fa3002c 	lw	v1,44(sp)
    48e0:	55e00018 	bnezl	t7,4944 <func_80930D70+0x1a4>
    48e4:	920a03e6 	lbu	t2,998(s0)
    48e8:	846e04da 	lh	t6,1242(v1)
    48ec:	3c014220 	lui	at,0x4220
    48f0:	44813000 	mtc1	at,$f6
    48f4:	448e4000 	mtc1	t6,$f8
    48f8:	3c013f80 	lui	at,0x3f80
    48fc:	468042a0 	cvt.s.w	$f10,$f8
    4900:	460a303c 	c.lt.s	$f6,$f10
    4904:	00000000 	nop
    4908:	45030008 	bc1tl	492c <func_80930D70+0x18c>
    490c:	921903e6 	lbu	t9,998(s0)
    4910:	44818000 	mtc1	at,$f16
    4914:	c4720028 	lwc1	$f18,40(v1)
    4918:	4612803c 	c.lt.s	$f16,$f18
    491c:	00000000 	nop
    4920:	45020008 	bc1fl	4944 <func_80930D70+0x1a4>
    4924:	920a03e6 	lbu	t2,998(s0)
    4928:	921903e6 	lbu	t9,998(s0)
    492c:	34580001 	ori	t8,v0,0x1
    4930:	a21803e4 	sb	t8,996(s0)
    4934:	3328fffb 	andi	t0,t9,0xfffb
    4938:	10000006 	b	4954 <func_80930D70+0x1b4>
    493c:	a20803e6 	sb	t0,998(s0)
    4940:	920a03e6 	lbu	t2,998(s0)
    4944:	3049fffe 	andi	t1,v0,0xfffe
    4948:	a20903e4 	sb	t1,996(s0)
    494c:	354b0004 	ori	t3,t2,0x4
    4950:	a20b03e6 	sb	t3,998(s0)
    4954:	0c000000 	jal	0 <BossSst_Init>
    4958:	860400b6 	lh	a0,182(s0)
    495c:	c60403c4 	lwc1	$f4,964(s0)
    4960:	3c0c0000 	lui	t4,0x0
    4964:	8d8c0000 	lw	t4,0(t4)
    4968:	46040202 	mul.s	$f8,$f0,$f4
    496c:	860400b6 	lh	a0,182(s0)
    4970:	c5860024 	lwc1	$f6,36(t4)
    4974:	46064280 	add.s	$f10,$f8,$f6
    4978:	0c000000 	jal	0 <BossSst_Init>
    497c:	e60a0024 	swc1	$f10,36(s0)
    4980:	c61003c4 	lwc1	$f16,964(s0)
    4984:	3c0d0000 	lui	t5,0x0
    4988:	8dad0000 	lw	t5,0(t5)
    498c:	46100482 	mul.s	$f18,$f0,$f16
    4990:	c5a4002c 	lwc1	$f4,44(t5)
    4994:	46049200 	add.s	$f8,$f18,$f4
    4998:	e608002c 	swc1	$f8,44(s0)
    499c:	8fbf0024 	lw	ra,36(sp)
    49a0:	8fb00020 	lw	s0,32(sp)
    49a4:	27bd0030 	addiu	sp,sp,48
    49a8:	03e00008 	jr	ra
    49ac:	00000000 	nop

000049b0 <func_80930F80>:
    49b0:	27bdffe8 	addiu	sp,sp,-24
    49b4:	afbf0014 	sw	ra,20(sp)
    49b8:	848f001c 	lh	t7,28(a0)
    49bc:	3c010000 	lui	at,0x0
    49c0:	240e0005 	li	t6,5
    49c4:	000fc080 	sll	t8,t7,0x2
    49c8:	00380821 	addu	at,at,t8
    49cc:	00803825 	move	a3,a0
    49d0:	ac2e0000 	sw	t6,0(at)
    49d4:	84f9001c 	lh	t9,28(a3)
    49d8:	3c050000 	lui	a1,0x0
    49dc:	afa70018 	sw	a3,24(sp)
    49e0:	00194080 	sll	t0,t9,0x2
    49e4:	00a82821 	addu	a1,a1,t0
    49e8:	8ca50000 	lw	a1,0(a1)
    49ec:	2484014c 	addiu	a0,a0,332
    49f0:	0c000000 	jal	0 <BossSst_Init>
    49f4:	3c064120 	lui	a2,0x4120
    49f8:	8fa70018 	lw	a3,24(sp)
    49fc:	3c090000 	lui	t1,0x0
    4a00:	25290000 	addiu	t1,t1,0
    4a04:	ace90190 	sw	t1,400(a3)
    4a08:	8fbf0014 	lw	ra,20(sp)
    4a0c:	27bd0018 	addiu	sp,sp,24
    4a10:	03e00008 	jr	ra
    4a14:	00000000 	nop

00004a18 <func_80930FE8>:
    4a18:	27bdffe0 	addiu	sp,sp,-32
    4a1c:	afbf0014 	sw	ra,20(sp)
    4a20:	afa50024 	sw	a1,36(sp)
    4a24:	00803825 	move	a3,a0
    4a28:	84e5008a 	lh	a1,138(a3)
    4a2c:	afa70020 	sw	a3,32(sp)
    4a30:	248400b6 	addiu	a0,a0,182
    4a34:	0c000000 	jal	0 <BossSst_Init>
    4a38:	24060400 	li	a2,1024
    4a3c:	8fa40020 	lw	a0,32(sp)
    4a40:	afa2001c 	sw	v0,28(sp)
    4a44:	0c000000 	jal	0 <BossSst_Init>
    4a48:	2484014c 	addiu	a0,a0,332
    4a4c:	10400005 	beqz	v0,4a64 <func_80930FE8+0x4c>
    4a50:	8fae001c 	lw	t6,28(sp)
    4a54:	51c00004 	beqzl	t6,4a68 <func_80930FE8+0x50>
    4a58:	8fbf0014 	lw	ra,20(sp)
    4a5c:	0c000000 	jal	0 <BossSst_Init>
    4a60:	8fa40020 	lw	a0,32(sp)
    4a64:	8fbf0014 	lw	ra,20(sp)
    4a68:	27bd0020 	addiu	sp,sp,32
    4a6c:	03e00008 	jr	ra
    4a70:	00000000 	nop

00004a74 <func_80931044>:
    4a74:	3c013f00 	lui	at,0x3f00
    4a78:	44812000 	mtc1	at,$f4
    4a7c:	27bdffe0 	addiu	sp,sp,-32
    4a80:	afb00018 	sw	s0,24(sp)
    4a84:	afbf001c 	sw	ra,28(sp)
    4a88:	00808025 	move	s0,a0
    4a8c:	e4840068 	swc1	$f4,104(a0)
    4a90:	860e001c 	lh	t6,28(s0)
    4a94:	3c050000 	lui	a1,0x0
    4a98:	2484014c 	addiu	a0,a0,332
    4a9c:	000e7880 	sll	t7,t6,0x2
    4aa0:	00af2821 	addu	a1,a1,t7
    4aa4:	8ca50000 	lw	a1,0(a1)
    4aa8:	0c000000 	jal	0 <BossSst_Init>
    4aac:	3c0640a0 	lui	a2,0x40a0
    4ab0:	02002025 	move	a0,s0
    4ab4:	0c000000 	jal	0 <BossSst_Init>
    4ab8:	24050001 	li	a1,1
    4abc:	82180194 	lb	t8,404(s0)
    4ac0:	02002025 	move	a0,s0
    4ac4:	24050010 	li	a1,16
    4ac8:	0018c980 	sll	t9,t8,0x6
    4acc:	0338c823 	subu	t9,t9,t8
    4ad0:	0019ca00 	sll	t9,t9,0x8
    4ad4:	0c000000 	jal	0 <BossSst_Init>
    4ad8:	a61901a6 	sh	t9,422(s0)
    4adc:	3c080000 	lui	t0,0x0
    4ae0:	25080000 	addiu	t0,t0,0
    4ae4:	ae080190 	sw	t0,400(s0)
    4ae8:	8fbf001c 	lw	ra,28(sp)
    4aec:	8fb00018 	lw	s0,24(sp)
    4af0:	27bd0020 	addiu	sp,sp,32
    4af4:	03e00008 	jr	ra
    4af8:	00000000 	nop

00004afc <func_809310CC>:
    4afc:	27bdffd8 	addiu	sp,sp,-40
    4b00:	afb00020 	sw	s0,32(sp)
    4b04:	00808025 	move	s0,a0
    4b08:	afbf0024 	sw	ra,36(sp)
    4b0c:	afa5002c 	sw	a1,44(sp)
    4b10:	0c000000 	jal	0 <BossSst_Init>
    4b14:	2484014c 	addiu	a0,a0,332
    4b18:	26040028 	addiu	a0,s0,40
    4b1c:	3c0542a0 	lui	a1,0x42a0
    4b20:	0c000000 	jal	0 <BossSst_Init>
    4b24:	3c0641a0 	lui	a2,0x41a0
    4b28:	260400b8 	addiu	a0,s0,184
    4b2c:	860501a6 	lh	a1,422(s0)
    4b30:	0c000000 	jal	0 <BossSst_Init>
    4b34:	24060400 	li	a2,1024
    4b38:	10400004 	beqz	v0,4b4c <func_809310CC+0x50>
    4b3c:	3c014248 	lui	at,0x4248
    4b40:	860e01a6 	lh	t6,422(s0)
    4b44:	000e7823 	negu	t7,t6
    4b48:	a60f01a6 	sh	t7,422(s0)
    4b4c:	44811000 	mtc1	at,$f2
    4b50:	3c013fa0 	lui	at,0x3fa0
    4b54:	44813000 	mtc1	at,$f6
    4b58:	c6040068 	lwc1	$f4,104(s0)
    4b5c:	46062202 	mul.s	$f8,$f4,$f6
    4b60:	e6080068 	swc1	$f8,104(s0)
    4b64:	c6000068 	lwc1	$f0,104(s0)
    4b68:	4600103c 	c.lt.s	$f2,$f0
    4b6c:	00000000 	nop
    4b70:	45020004 	bc1fl	4b84 <func_809310CC+0x88>
    4b74:	e6000068 	swc1	$f0,104(s0)
    4b78:	10000002 	b	4b84 <func_809310CC+0x88>
    4b7c:	e6020068 	swc1	$f2,104(s0)
    4b80:	e6000068 	swc1	$f0,104(s0)
    4b84:	0c000000 	jal	0 <BossSst_Init>
    4b88:	860400b6 	lh	a0,182(s0)
    4b8c:	c6100068 	lwc1	$f16,104(s0)
    4b90:	c60a0024 	lwc1	$f10,36(s0)
    4b94:	860400b6 	lh	a0,182(s0)
    4b98:	46008482 	mul.s	$f18,$f16,$f0
    4b9c:	46125100 	add.s	$f4,$f10,$f18
    4ba0:	0c000000 	jal	0 <BossSst_Init>
    4ba4:	e6040024 	swc1	$f4,36(s0)
    4ba8:	c6080068 	lwc1	$f8,104(s0)
    4bac:	c606002c 	lwc1	$f6,44(s0)
    4bb0:	96180088 	lhu	t8,136(s0)
    4bb4:	46004402 	mul.s	$f16,$f8,$f0
    4bb8:	33190008 	andi	t9,t8,0x8
    4bbc:	46103280 	add.s	$f10,$f6,$f16
    4bc0:	13200005 	beqz	t9,4bd8 <func_809310CC+0xdc>
    4bc4:	e60a002c 	swc1	$f10,44(s0)
    4bc8:	0c000000 	jal	0 <BossSst_Init>
    4bcc:	02002025 	move	a0,s0
    4bd0:	10000014 	b	4c24 <func_809310CC+0x128>
    4bd4:	02002025 	move	a0,s0
    4bd8:	920803e4 	lbu	t0,996(s0)
    4bdc:	8faa002c 	lw	t2,44(sp)
    4be0:	2405083e 	li	a1,2110
    4be4:	31090002 	andi	t1,t0,0x2
    4be8:	5120000e 	beqzl	t1,4c24 <func_809310CC+0x128>
    4bec:	02002025 	move	a0,s0
    4bf0:	0c000000 	jal	0 <BossSst_Init>
    4bf4:	8d441c44 	lw	a0,7236(t2)
    4bf8:	3c0140a0 	lui	at,0x40a0
    4bfc:	44819000 	mtc1	at,$f18
    4c00:	860700b6 	lh	a3,182(s0)
    4c04:	8fa4002c 	lw	a0,44(sp)
    4c08:	02002825 	move	a1,s0
    4c0c:	3c064120 	lui	a2,0x4120
    4c10:	0c000000 	jal	0 <BossSst_Init>
    4c14:	e7b20010 	swc1	$f18,16(sp)
    4c18:	0c000000 	jal	0 <BossSst_Init>
    4c1c:	02002025 	move	a0,s0
    4c20:	02002025 	move	a0,s0
    4c24:	0c000000 	jal	0 <BossSst_Init>
    4c28:	24053167 	li	a1,12647
    4c2c:	8fbf0024 	lw	ra,36(sp)
    4c30:	8fb00020 	lw	s0,32(sp)
    4c34:	27bd0028 	addiu	sp,sp,40
    4c38:	03e00008 	jr	ra
    4c3c:	00000000 	nop

00004c40 <func_80931210>:
    4c40:	27bdffe0 	addiu	sp,sp,-32
    4c44:	afbf001c 	sw	ra,28(sp)
    4c48:	afb00018 	sw	s0,24(sp)
    4c4c:	848e001c 	lh	t6,28(a0)
    4c50:	3c020000 	lui	v0,0x0
    4c54:	24420000 	addiu	v0,v0,0
    4c58:	000e7880 	sll	t7,t6,0x2
    4c5c:	24030006 	li	v1,6
    4c60:	004fc021 	addu	t8,v0,t7
    4c64:	af030000 	sw	v1,0(t8)
    4c68:	8c85011c 	lw	a1,284(a0)
    4c6c:	00808025 	move	s0,a0
    4c70:	84b9001c 	lh	t9,28(a1)
    4c74:	00194080 	sll	t0,t9,0x2
    4c78:	00484821 	addu	t1,v0,t0
    4c7c:	8d2a0000 	lw	t2,0(t1)
    4c80:	506a0004 	beql	v1,t2,4c94 <func_80931210+0x54>
    4c84:	860b001c 	lh	t3,28(s0)
    4c88:	0c000000 	jal	0 <BossSst_Init>
    4c8c:	00a02025 	move	a0,a1
    4c90:	860b001c 	lh	t3,28(s0)
    4c94:	3c050000 	lui	a1,0x0
    4c98:	2604014c 	addiu	a0,s0,332
    4c9c:	000b6080 	sll	t4,t3,0x2
    4ca0:	00ac2821 	addu	a1,a1,t4
    4ca4:	8ca50000 	lw	a1,0(a1)
    4ca8:	0c000000 	jal	0 <BossSst_Init>
    4cac:	3c064120 	lui	a2,0x4120
    4cb0:	3c050000 	lui	a1,0x0
    4cb4:	8ca50000 	lw	a1,0(a1)
    4cb8:	02002025 	move	a0,s0
    4cbc:	0c000000 	jal	0 <BossSst_Init>
    4cc0:	24a50024 	addiu	a1,a1,36
    4cc4:	e60003c4 	swc1	$f0,964(s0)
    4cc8:	3c040000 	lui	a0,0x0
    4ccc:	8c840000 	lw	a0,0(a0)
    4cd0:	0c000000 	jal	0 <BossSst_Init>
    4cd4:	26050024 	addiu	a1,s0,36
    4cd8:	82030194 	lb	v1,404(s0)
    4cdc:	860d0016 	lh	t5,22(s0)
    4ce0:	8e19011c 	lw	t9,284(s0)
    4ce4:	00037080 	sll	t6,v1,0x2
    4ce8:	01c37023 	subu	t6,t6,v1
    4cec:	000e72c0 	sll	t6,t6,0xb
    4cf0:	0003c380 	sll	t8,v1,0xe
    4cf4:	01ae7823 	subu	t7,t5,t6
    4cf8:	a6020032 	sh	v0,50(s0)
    4cfc:	a60f01a4 	sh	t7,420(s0)
    4d00:	a61801a6 	sh	t8,422(s0)
    4d04:	a6000198 	sh	zero,408(s0)
    4d08:	a2000195 	sb	zero,405(s0)
    4d0c:	3c080000 	lui	t0,0x0
    4d10:	25080000 	addiu	t0,t0,0
    4d14:	a3200195 	sb	zero,405(t9)
    4d18:	ae080190 	sw	t0,400(s0)
    4d1c:	8fbf001c 	lw	ra,28(sp)
    4d20:	8fb00018 	lw	s0,24(sp)
    4d24:	27bd0020 	addiu	sp,sp,32
    4d28:	03e00008 	jr	ra
    4d2c:	00000000 	nop

00004d30 <func_80931300>:
    4d30:	27bdffd8 	addiu	sp,sp,-40
    4d34:	afbf0024 	sw	ra,36(sp)
    4d38:	afb00020 	sw	s0,32(sp)
    4d3c:	afa5002c 	sw	a1,44(sp)
    4d40:	84820198 	lh	v0,408(a0)
    4d44:	00808025 	move	s0,a0
    4d48:	50400010 	beqzl	v0,4d8c <func_80931300+0x5c>
    4d4c:	82180195 	lb	t8,405(s0)
    4d50:	10400003 	beqz	v0,4d60 <func_80931300+0x30>
    4d54:	244effff 	addiu	t6,v0,-1
    4d58:	a48e0198 	sh	t6,408(a0)
    4d5c:	84820198 	lh	v0,408(a0)
    4d60:	5440006b 	bnezl	v0,4f10 <func_80931300+0x1e0>
    4d64:	8fbf0024 	lw	ra,36(sp)
    4d68:	0c000000 	jal	0 <BossSst_Init>
    4d6c:	02002025 	move	a0,s0
    4d70:	0c000000 	jal	0 <BossSst_Init>
    4d74:	8e04011c 	lw	a0,284(s0)
    4d78:	c60403c4 	lwc1	$f4,964(s0)
    4d7c:	8e0f011c 	lw	t7,284(s0)
    4d80:	10000062 	b	4f0c <func_80931300+0x1dc>
    4d84:	e5e403c4 	swc1	$f4,964(t7)
    4d88:	82180195 	lb	t8,405(s0)
    4d8c:	5700005a 	bnezl	t8,4ef8 <func_80931300+0x1c8>
    4d90:	8e0e011c 	lw	t6,284(s0)
    4d94:	0c000000 	jal	0 <BossSst_Init>
    4d98:	2604014c 	addiu	a0,s0,332
    4d9c:	a2020195 	sb	v0,405(s0)
    4da0:	260400b4 	addiu	a0,s0,180
    4da4:	00002825 	move	a1,zero
    4da8:	0c000000 	jal	0 <BossSst_Init>
    4dac:	24060600 	li	a2,1536
    4db0:	82190195 	lb	t9,405(s0)
    4db4:	260400b8 	addiu	a0,s0,184
    4db8:	860501a6 	lh	a1,422(s0)
    4dbc:	03224024 	and	t0,t9,v0
    4dc0:	a2080195 	sb	t0,405(s0)
    4dc4:	0c000000 	jal	0 <BossSst_Init>
    4dc8:	24060600 	li	a2,1536
    4dcc:	82090195 	lb	t1,405(s0)
    4dd0:	260400b6 	addiu	a0,s0,182
    4dd4:	860501a4 	lh	a1,420(s0)
    4dd8:	01225024 	and	t2,t1,v0
    4ddc:	a20a0195 	sb	t2,405(s0)
    4de0:	0c000000 	jal	0 <BossSst_Init>
    4de4:	24060200 	li	a2,512
    4de8:	820b0195 	lb	t3,405(s0)
    4dec:	26040032 	addiu	a0,s0,50
    4df0:	860501a4 	lh	a1,420(s0)
    4df4:	01626024 	and	t4,t3,v0
    4df8:	a20c0195 	sb	t4,405(s0)
    4dfc:	0c000000 	jal	0 <BossSst_Init>
    4e00:	24060400 	li	a2,1024
    4e04:	820d0195 	lb	t5,405(s0)
    4e08:	3c0f0000 	lui	t7,0x0
    4e0c:	3c013f80 	lui	at,0x3f80
    4e10:	01a27024 	and	t6,t5,v0
    4e14:	a20e0195 	sb	t6,405(s0)
    4e18:	8def0000 	lw	t7,0(t7)
    4e1c:	44813000 	mtc1	at,$f6
    4e20:	260403c4 	addiu	a0,s0,964
    4e24:	8de50090 	lw	a1,144(t7)
    4e28:	3c063f00 	lui	a2,0x3f00
    4e2c:	3c074248 	lui	a3,0x4248
    4e30:	0c000000 	jal	0 <BossSst_Init>
    4e34:	e7a60010 	swc1	$f6,16(sp)
    4e38:	3c014120 	lui	at,0x4120
    4e3c:	44814000 	mtc1	at,$f8
    4e40:	82180195 	lb	t8,405(s0)
    4e44:	0000c825 	move	t9,zero
    4e48:	4608003c 	c.lt.s	$f0,$f8
    4e4c:	26040028 	addiu	a0,s0,40
    4e50:	3c0542be 	lui	a1,0x42be
    4e54:	3c063f00 	lui	a2,0x3f00
    4e58:	45000002 	bc1f	4e64 <func_80931300+0x134>
    4e5c:	3c0741f0 	lui	a3,0x41f0
    4e60:	24190001 	li	t9,1
    4e64:	3c013f80 	lui	at,0x3f80
    4e68:	44815000 	mtc1	at,$f10
    4e6c:	03194024 	and	t0,t8,t9
    4e70:	a2080195 	sb	t0,405(s0)
    4e74:	0c000000 	jal	0 <BossSst_Init>
    4e78:	e7aa0010 	swc1	$f10,16(sp)
    4e7c:	3c013f80 	lui	at,0x3f80
    4e80:	44818000 	mtc1	at,$f16
    4e84:	82090195 	lb	t1,405(s0)
    4e88:	00005025 	move	t2,zero
    4e8c:	4610003c 	c.lt.s	$f0,$f16
    4e90:	00000000 	nop
    4e94:	45020003 	bc1fl	4ea4 <func_80931300+0x174>
    4e98:	012a5824 	and	t3,t1,t2
    4e9c:	240a0001 	li	t2,1
    4ea0:	012a5824 	and	t3,t1,t2
    4ea4:	a20b0195 	sb	t3,405(s0)
    4ea8:	0c000000 	jal	0 <BossSst_Init>
    4eac:	86040032 	lh	a0,50(s0)
    4eb0:	c61203c4 	lwc1	$f18,964(s0)
    4eb4:	3c0c0000 	lui	t4,0x0
    4eb8:	8d8c0000 	lw	t4,0(t4)
    4ebc:	46120102 	mul.s	$f4,$f0,$f18
    4ec0:	86040032 	lh	a0,50(s0)
    4ec4:	c5860024 	lwc1	$f6,36(t4)
    4ec8:	46062200 	add.s	$f8,$f4,$f6
    4ecc:	0c000000 	jal	0 <BossSst_Init>
    4ed0:	e6080024 	swc1	$f8,36(s0)
    4ed4:	c60a03c4 	lwc1	$f10,964(s0)
    4ed8:	3c0d0000 	lui	t5,0x0
    4edc:	8dad0000 	lw	t5,0(t5)
    4ee0:	460a0402 	mul.s	$f16,$f0,$f10
    4ee4:	c5b2002c 	lwc1	$f18,44(t5)
    4ee8:	46128100 	add.s	$f4,$f16,$f18
    4eec:	10000007 	b	4f0c <func_80931300+0x1dc>
    4ef0:	e604002c 	swc1	$f4,44(s0)
    4ef4:	8e0e011c 	lw	t6,284(s0)
    4ef8:	24180014 	li	t8,20
    4efc:	81cf0195 	lb	t7,405(t6)
    4f00:	51e00003 	beqzl	t7,4f10 <func_80931300+0x1e0>
    4f04:	8fbf0024 	lw	ra,36(sp)
    4f08:	a6180198 	sh	t8,408(s0)
    4f0c:	8fbf0024 	lw	ra,36(sp)
    4f10:	8fb00020 	lw	s0,32(sp)
    4f14:	27bd0028 	addiu	sp,sp,40
    4f18:	03e00008 	jr	ra
    4f1c:	00000000 	nop

00004f20 <func_809314F0>:
    4f20:	27bdffe8 	addiu	sp,sp,-24
    4f24:	afbf0014 	sw	ra,20(sp)
    4f28:	00803825 	move	a3,a0
    4f2c:	84ee001c 	lh	t6,28(a3)
    4f30:	3c050000 	lui	a1,0x0
    4f34:	afa70018 	sw	a3,24(sp)
    4f38:	000e7880 	sll	t7,t6,0x2
    4f3c:	00af2821 	addu	a1,a1,t7
    4f40:	8ca50000 	lw	a1,0(a1)
    4f44:	2484014c 	addiu	a0,a0,332
    4f48:	0c000000 	jal	0 <BossSst_Init>
    4f4c:	3c064040 	lui	a2,0x4040
    4f50:	8fa40018 	lw	a0,24(sp)
    4f54:	24180240 	li	t8,576
    4f58:	24050020 	li	a1,32
    4f5c:	a4800198 	sh	zero,408(a0)
    4f60:	a498019c 	sh	t8,412(a0)
    4f64:	a480019a 	sh	zero,410(a0)
    4f68:	0c000000 	jal	0 <BossSst_Init>
    4f6c:	a0800195 	sb	zero,405(a0)
    4f70:	8fa70018 	lw	a3,24(sp)
    4f74:	3c190000 	lui	t9,0x0
    4f78:	27390000 	addiu	t9,t9,0
    4f7c:	acf90190 	sw	t9,400(a3)
    4f80:	8fbf0014 	lw	ra,20(sp)
    4f84:	27bd0018 	addiu	sp,sp,24
    4f88:	03e00008 	jr	ra
    4f8c:	00000000 	nop

00004f90 <func_80931560>:
    4f90:	27bdffd8 	addiu	sp,sp,-40
    4f94:	afbf001c 	sw	ra,28(sp)
    4f98:	afb00018 	sw	s0,24(sp)
    4f9c:	afa5002c 	sw	a1,44(sp)
    4fa0:	8caf1c44 	lw	t7,7236(a1)
    4fa4:	00808025 	move	s0,a0
    4fa8:	2484014c 	addiu	a0,a0,332
    4fac:	0c000000 	jal	0 <BossSst_Init>
    4fb0:	afaf0024 	sw	t7,36(sp)
    4fb4:	86030198 	lh	v1,408(s0)
    4fb8:	50600024 	beqzl	v1,504c <func_80931560+0xbc>
    4fbc:	920303e4 	lbu	v1,996(s0)
    4fc0:	10600003 	beqz	v1,4fd0 <func_80931560+0x40>
    4fc4:	2478ffff 	addiu	t8,v1,-1
    4fc8:	a6180198 	sh	t8,408(s0)
    4fcc:	86030198 	lh	v1,408(s0)
    4fd0:	14600069 	bnez	v1,5178 <func_80931560+0x1e8>
    4fd4:	3c190000 	lui	t9,0x0
    4fd8:	8f390000 	lw	t9,0(t9)
    4fdc:	53200013 	beqzl	t9,502c <func_80931560+0x9c>
    4fe0:	02002025 	move	a0,s0
    4fe4:	0c000000 	jal	0 <BossSst_Init>
    4fe8:	00000000 	nop
    4fec:	3c013f00 	lui	at,0x3f00
    4ff0:	44812000 	mtc1	at,$f4
    4ff4:	8fa4002c 	lw	a0,44(sp)
    4ff8:	26050024 	addiu	a1,s0,36
    4ffc:	4604003c 	c.lt.s	$f0,$f4
    5000:	2402000f 	li	v0,15
    5004:	45000003 	bc1f	5014 <func_80931560+0x84>
    5008:	00000000 	nop
    500c:	10000001 	b	5014 <func_80931560+0x84>
    5010:	24020008 	li	v0,8
    5014:	00023400 	sll	a2,v0,0x10
    5018:	0c000000 	jal	0 <BossSst_Init>
    501c:	00063403 	sra	a2,a2,0x10
    5020:	3c010000 	lui	at,0x0
    5024:	ac200000 	sw	zero,0(at)
    5028:	02002025 	move	a0,s0
    502c:	8fa5002c 	lw	a1,44(sp)
    5030:	0c000000 	jal	0 <BossSst_Init>
    5034:	24060001 	li	a2,1
    5038:	0c000000 	jal	0 <BossSst_Init>
    503c:	02002025 	move	a0,s0
    5040:	1000004e 	b	517c <func_80931560+0x1ec>
    5044:	8fa20024 	lw	v0,36(sp)
    5048:	920303e4 	lbu	v1,996(s0)
    504c:	30680002 	andi	t0,v1,0x2
    5050:	5100000b 	beqzl	t0,5080 <func_80931560+0xf0>
    5054:	820c0195 	lb	t4,405(s0)
    5058:	8e02011c 	lw	v0,284(s0)
    505c:	3069fffc 	andi	t1,v1,0xfffc
    5060:	a20903e4 	sb	t1,996(s0)
    5064:	904a03e4 	lbu	t2,996(v0)
    5068:	02002025 	move	a0,s0
    506c:	314bfffc 	andi	t3,t2,0xfffc
    5070:	a04b03e4 	sb	t3,996(v0)
    5074:	0c000000 	jal	0 <BossSst_Init>
    5078:	8fa5002c 	lw	a1,44(sp)
    507c:	820c0195 	lb	t4,405(s0)
    5080:	260400b6 	addiu	a0,s0,182
    5084:	51800010 	beqzl	t4,50c8 <func_80931560+0x138>
    5088:	860a019a 	lh	t2,410(s0)
    508c:	920e03e4 	lbu	t6,996(s0)
    5090:	240d001e 	li	t5,30
    5094:	a60d0198 	sh	t5,408(s0)
    5098:	31cffffc 	andi	t7,t6,0xfffc
    509c:	a20f03e4 	sb	t7,996(s0)
    50a0:	8fb80024 	lw	t8,36(sp)
    50a4:	24090001 	li	t1,1
    50a8:	3c010000 	lui	at,0x0
    50ac:	8f190680 	lw	t9,1664(t8)
    50b0:	33280080 	andi	t0,t9,0x80
    50b4:	55000031 	bnezl	t0,517c <func_80931560+0x1ec>
    50b8:	8fa20024 	lw	v0,36(sp)
    50bc:	1000002e 	b	5178 <func_80931560+0x1e8>
    50c0:	ac290000 	sw	t1,0(at)
    50c4:	860a019a 	lh	t2,410(s0)
    50c8:	8603019c 	lh	v1,412(s0)
    50cc:	254b0040 	addiu	t3,t2,64
    50d0:	a60b019a 	sh	t3,410(s0)
    50d4:	8602019a 	lh	v0,410(s0)
    50d8:	0062082a 	slt	at,v1,v0
    50dc:	50200004 	beqzl	at,50f0 <func_80931560+0x160>
    50e0:	a602019a 	sh	v0,410(s0)
    50e4:	10000002 	b	50f0 <func_80931560+0x160>
    50e8:	a603019a 	sh	v1,410(s0)
    50ec:	a602019a 	sh	v0,410(s0)
    50f0:	86050016 	lh	a1,22(s0)
    50f4:	0c000000 	jal	0 <BossSst_Init>
    50f8:	8606019a 	lh	a2,410(s0)
    50fc:	1040000a 	beqz	v0,5128 <func_80931560+0x198>
    5100:	02002025 	move	a0,s0
    5104:	860c001c 	lh	t4,28(s0)
    5108:	02002025 	move	a0,s0
    510c:	55800004 	bnezl	t4,5120 <func_80931560+0x190>
    5110:	240d0001 	li	t5,1
    5114:	0c000000 	jal	0 <BossSst_Init>
    5118:	24053952 	li	a1,14674
    511c:	240d0001 	li	t5,1
    5120:	10000003 	b	5130 <func_80931560+0x1a0>
    5124:	a20d0195 	sb	t5,405(s0)
    5128:	0c000000 	jal	0 <BossSst_Init>
    512c:	24053167 	li	a1,12647
    5130:	0c000000 	jal	0 <BossSst_Init>
    5134:	860400b6 	lh	a0,182(s0)
    5138:	c60603c4 	lwc1	$f6,964(s0)
    513c:	3c0e0000 	lui	t6,0x0
    5140:	8dce0000 	lw	t6,0(t6)
    5144:	46060202 	mul.s	$f8,$f0,$f6
    5148:	860400b6 	lh	a0,182(s0)
    514c:	c5ca0024 	lwc1	$f10,36(t6)
    5150:	460a4400 	add.s	$f16,$f8,$f10
    5154:	0c000000 	jal	0 <BossSst_Init>
    5158:	e6100024 	swc1	$f16,36(s0)
    515c:	c61203c4 	lwc1	$f18,964(s0)
    5160:	3c0f0000 	lui	t7,0x0
    5164:	8def0000 	lw	t7,0(t7)
    5168:	46120102 	mul.s	$f4,$f0,$f18
    516c:	c5e6002c 	lwc1	$f6,44(t7)
    5170:	46062200 	add.s	$f8,$f4,$f6
    5174:	e608002c 	swc1	$f8,44(s0)
    5178:	8fa20024 	lw	v0,36(sp)
    517c:	8c580118 	lw	t8,280(v0)
    5180:	56180009 	bnel	s0,t8,51a8 <func_80931560+0x218>
    5184:	8fbf001c 	lw	ra,28(sp)
    5188:	a4400850 	sh	zero,2128(v0)
    518c:	8e080024 	lw	t0,36(s0)
    5190:	ac480024 	sw	t0,36(v0)
    5194:	8e190028 	lw	t9,40(s0)
    5198:	ac590028 	sw	t9,40(v0)
    519c:	8e08002c 	lw	t0,44(s0)
    51a0:	ac48002c 	sw	t0,44(v0)
    51a4:	8fbf001c 	lw	ra,28(sp)
    51a8:	8fb00018 	lw	s0,24(sp)
    51ac:	27bd0028 	addiu	sp,sp,40
    51b0:	03e00008 	jr	ra
    51b4:	00000000 	nop

000051b8 <func_80931788>:
    51b8:	27bdffe8 	addiu	sp,sp,-24
    51bc:	afbf0014 	sw	ra,20(sp)
    51c0:	808f0194 	lb	t7,404(a0)
    51c4:	848e0016 	lh	t6,22(a0)
    51c8:	00803825 	move	a3,a0
    51cc:	000fc300 	sll	t8,t7,0xc
    51d0:	01d8c823 	subu	t9,t6,t8
    51d4:	a49901a4 	sh	t9,420(a0)
    51d8:	84e8001c 	lh	t0,28(a3)
    51dc:	3c050000 	lui	a1,0x0
    51e0:	afa70018 	sw	a3,24(sp)
    51e4:	00084880 	sll	t1,t0,0x2
    51e8:	00a92821 	addu	a1,a1,t1
    51ec:	8ca50000 	lw	a1,0(a1)
    51f0:	2484014c 	addiu	a0,a0,332
    51f4:	0c000000 	jal	0 <BossSst_Init>
    51f8:	3c064120 	lui	a2,0x4120
    51fc:	8fa70018 	lw	a3,24(sp)
    5200:	3c0c0000 	lui	t4,0x0
    5204:	258c0000 	addiu	t4,t4,0
    5208:	90ea03e4 	lbu	t2,996(a3)
    520c:	acec0190 	sw	t4,400(a3)
    5210:	314bfffc 	andi	t3,t2,0xfffc
    5214:	a0eb03e4 	sb	t3,996(a3)
    5218:	8fbf0014 	lw	ra,20(sp)
    521c:	27bd0018 	addiu	sp,sp,24
    5220:	03e00008 	jr	ra
    5224:	00000000 	nop

00005228 <func_809317F8>:
    5228:	27bdffe0 	addiu	sp,sp,-32
    522c:	afb00018 	sw	s0,24(sp)
    5230:	00808025 	move	s0,a0
    5234:	afbf001c 	sw	ra,28(sp)
    5238:	afa50024 	sw	a1,36(sp)
    523c:	0c000000 	jal	0 <BossSst_Init>
    5240:	2484014c 	addiu	a0,a0,332
    5244:	260400b8 	addiu	a0,s0,184
    5248:	00002825 	move	a1,zero
    524c:	0c000000 	jal	0 <BossSst_Init>
    5250:	24060200 	li	a2,512
    5254:	260400b6 	addiu	a0,s0,182
    5258:	860501a4 	lh	a1,420(s0)
    525c:	0c000000 	jal	0 <BossSst_Init>
    5260:	24060100 	li	a2,256
    5264:	10400003 	beqz	v0,5274 <func_809317F8+0x4c>
    5268:	00000000 	nop
    526c:	0c000000 	jal	0 <BossSst_Init>
    5270:	02002025 	move	a0,s0
    5274:	0c000000 	jal	0 <BossSst_Init>
    5278:	860400b6 	lh	a0,182(s0)
    527c:	c60403c4 	lwc1	$f4,964(s0)
    5280:	3c0e0000 	lui	t6,0x0
    5284:	8dce0000 	lw	t6,0(t6)
    5288:	46040182 	mul.s	$f6,$f0,$f4
    528c:	860400b6 	lh	a0,182(s0)
    5290:	c5c80024 	lwc1	$f8,36(t6)
    5294:	46083280 	add.s	$f10,$f6,$f8
    5298:	0c000000 	jal	0 <BossSst_Init>
    529c:	e60a0024 	swc1	$f10,36(s0)
    52a0:	c61003c4 	lwc1	$f16,964(s0)
    52a4:	3c0f0000 	lui	t7,0x0
    52a8:	8def0000 	lw	t7,0(t7)
    52ac:	46100482 	mul.s	$f18,$f0,$f16
    52b0:	c5e4002c 	lwc1	$f4,44(t7)
    52b4:	46049180 	add.s	$f6,$f18,$f4
    52b8:	e606002c 	swc1	$f6,44(s0)
    52bc:	8fbf001c 	lw	ra,28(sp)
    52c0:	8fb00018 	lw	s0,24(sp)
    52c4:	27bd0020 	addiu	sp,sp,32
    52c8:	03e00008 	jr	ra
    52cc:	00000000 	nop

000052d0 <func_809318A0>:
    52d0:	27bdffe8 	addiu	sp,sp,-24
    52d4:	afbf0014 	sw	ra,20(sp)
    52d8:	848f001c 	lh	t7,28(a0)
    52dc:	3c010000 	lui	at,0x0
    52e0:	240e0007 	li	t6,7
    52e4:	000fc080 	sll	t8,t7,0x2
    52e8:	00380821 	addu	at,at,t8
    52ec:	00803825 	move	a3,a0
    52f0:	ac2e0000 	sw	t6,0(at)
    52f4:	84f9001c 	lh	t9,28(a3)
    52f8:	3c050000 	lui	a1,0x0
    52fc:	afa70018 	sw	a3,24(sp)
    5300:	00194080 	sll	t0,t9,0x2
    5304:	00a82821 	addu	a1,a1,t0
    5308:	8ca50000 	lw	a1,0(a1)
    530c:	2484014c 	addiu	a0,a0,332
    5310:	0c000000 	jal	0 <BossSst_Init>
    5314:	3c064120 	lui	a2,0x4120
    5318:	8fa70018 	lw	a3,24(sp)
    531c:	3c0b0000 	lui	t3,0x0
    5320:	256b0000 	addiu	t3,t3,0
    5324:	80e20194 	lb	v0,404(a3)
    5328:	aceb0190 	sw	t3,400(a3)
    532c:	00020823 	negu	at,v0
    5330:	00014880 	sll	t1,at,0x2
    5334:	01214821 	addu	t1,t1,at
    5338:	00094b00 	sll	t1,t1,0xc
    533c:	00025380 	sll	t2,v0,0xe
    5340:	a4e901a4 	sh	t1,420(a3)
    5344:	a4ea01a6 	sh	t2,422(a3)
    5348:	8fbf0014 	lw	ra,20(sp)
    534c:	27bd0018 	addiu	sp,sp,24
    5350:	03e00008 	jr	ra
    5354:	00000000 	nop

00005358 <func_80931928>:
    5358:	27bdffd0 	addiu	sp,sp,-48
    535c:	afb00020 	sw	s0,32(sp)
    5360:	00808025 	move	s0,a0
    5364:	afbf0024 	sw	ra,36(sp)
    5368:	afa50034 	sw	a1,52(sp)
    536c:	0c000000 	jal	0 <BossSst_Init>
    5370:	2484014c 	addiu	a0,a0,332
    5374:	860501a6 	lh	a1,422(s0)
    5378:	240e0100 	li	t6,256
    537c:	afae0010 	sw	t6,16(sp)
    5380:	260400b8 	addiu	a0,s0,184
    5384:	24060004 	li	a2,4
    5388:	0c000000 	jal	0 <BossSst_Init>
    538c:	24070800 	li	a3,2048
    5390:	2c4f0001 	sltiu	t7,v0,1
    5394:	afaf002c 	sw	t7,44(sp)
    5398:	861901a4 	lh	t9,420(s0)
    539c:	8618008a 	lh	t8,138(s0)
    53a0:	260400b6 	addiu	a0,s0,182
    53a4:	24060a00 	li	a2,2560
    53a8:	03192821 	addu	a1,t8,t9
    53ac:	00052c00 	sll	a1,a1,0x10
    53b0:	0c000000 	jal	0 <BossSst_Init>
    53b4:	00052c03 	sra	a1,a1,0x10
    53b8:	8fa8002c 	lw	t0,44(sp)
    53bc:	26040028 	addiu	a0,s0,40
    53c0:	3c0542be 	lui	a1,0x42be
    53c4:	01024824 	and	t1,t0,v0
    53c8:	afa9002c 	sw	t1,44(sp)
    53cc:	3c063f00 	lui	a2,0x3f00
    53d0:	0c000000 	jal	0 <BossSst_Init>
    53d4:	3c0741a0 	lui	a3,0x41a0
    53d8:	8faa002c 	lw	t2,44(sp)
    53dc:	51400004 	beqzl	t2,53f0 <func_80931928+0x98>
    53e0:	8fbf0024 	lw	ra,36(sp)
    53e4:	0c000000 	jal	0 <BossSst_Init>
    53e8:	02002025 	move	a0,s0
    53ec:	8fbf0024 	lw	ra,36(sp)
    53f0:	8fb00020 	lw	s0,32(sp)
    53f4:	27bd0030 	addiu	sp,sp,48
    53f8:	03e00008 	jr	ra
    53fc:	00000000 	nop

00005400 <func_809319D0>:
    5400:	27bdffe8 	addiu	sp,sp,-24
    5404:	afbf0014 	sw	ra,20(sp)
    5408:	00803825 	move	a3,a0
    540c:	84ee001c 	lh	t6,28(a3)
    5410:	3c050000 	lui	a1,0x0
    5414:	afa70018 	sw	a3,24(sp)
    5418:	000e7880 	sll	t7,t6,0x2
    541c:	00af2821 	addu	a1,a1,t7
    5420:	8ca50000 	lw	a1,0(a1)
    5424:	2484014c 	addiu	a0,a0,332
    5428:	0c000000 	jal	0 <BossSst_Init>
    542c:	3c0640a0 	lui	a2,0x40a0
    5430:	8fa40018 	lw	a0,24(sp)
    5434:	3c013f00 	lui	at,0x3f00
    5438:	44812000 	mtc1	at,$f4
    543c:	80990194 	lb	t9,404(a0)
    5440:	849800b6 	lh	t8,182(a0)
    5444:	240b001e 	li	t3,30
    5448:	00194380 	sll	t0,t9,0xe
    544c:	03084821 	addu	t1,t8,t0
    5450:	a4890032 	sh	t1,50(a0)
    5454:	848a0032 	lh	t2,50(a0)
    5458:	24050020 	li	a1,32
    545c:	a48b0198 	sh	t3,408(a0)
    5460:	e4840068 	swc1	$f4,104(a0)
    5464:	0c000000 	jal	0 <BossSst_Init>
    5468:	a48a01a4 	sh	t2,420(a0)
    546c:	8fa70018 	lw	a3,24(sp)
    5470:	3c0c0000 	lui	t4,0x0
    5474:	258c0000 	addiu	t4,t4,0
    5478:	acec0190 	sw	t4,400(a3)
    547c:	8fbf0014 	lw	ra,20(sp)
    5480:	27bd0018 	addiu	sp,sp,24
    5484:	03e00008 	jr	ra
    5488:	00000000 	nop

0000548c <func_80931A5C>:
    548c:	27bdffd0 	addiu	sp,sp,-48
    5490:	afbf0024 	sw	ra,36(sp)
    5494:	afb00020 	sw	s0,32(sp)
    5498:	afa50034 	sw	a1,52(sp)
    549c:	8caf1c44 	lw	t7,7236(a1)
    54a0:	00808025 	move	s0,a0
    54a4:	afaf002c 	sw	t7,44(sp)
    54a8:	84820198 	lh	v0,408(a0)
    54ac:	10400003 	beqz	v0,54bc <func_80931A5C+0x30>
    54b0:	2458ffff 	addiu	t8,v0,-1
    54b4:	a4980198 	sh	t8,408(a0)
    54b8:	84820198 	lh	v0,408(a0)
    54bc:	44822000 	mtc1	v0,$f4
    54c0:	3c010000 	lui	at,0x0
    54c4:	c4280000 	lwc1	$f8,0(at)
    54c8:	468021a0 	cvt.s.w	$f6,$f4
    54cc:	46083302 	mul.s	$f12,$f6,$f8
    54d0:	0c000000 	jal	0 <BossSst_Init>
    54d4:	00000000 	nop
    54d8:	82020194 	lb	v0,404(s0)
    54dc:	3c013f80 	lui	at,0x3f80
    54e0:	44815000 	mtc1	at,$f10
    54e4:	0002cb40 	sll	t9,v0,0xd
    54e8:	44999000 	mtc1	t9,$f18
    54ec:	860801a4 	lh	t0,420(s0)
    54f0:	46005401 	sub.s	$f16,$f10,$f0
    54f4:	860e0198 	lh	t6,408(s0)
    54f8:	44884000 	mtc1	t0,$f8
    54fc:	46809120 	cvt.s.w	$f4,$f18
    5500:	00026380 	sll	t4,v0,0xe
    5504:	29c10005 	slti	at,t6,5
    5508:	24050000 	li	a1,0
    550c:	3c063f00 	lui	a2,0x3f00
    5510:	468042a0 	cvt.s.w	$f10,$f8
    5514:	46048182 	mul.s	$f6,$f16,$f4
    5518:	3c0741c8 	lui	a3,0x41c8
    551c:	02002025 	move	a0,s0
    5520:	460a3480 	add.s	$f18,$f6,$f10
    5524:	4600940d 	trunc.w.s	$f16,$f18
    5528:	440a8000 	mfc1	t2,$f16
    552c:	00000000 	nop
    5530:	a60a0032 	sh	t2,50(s0)
    5534:	860b0032 	lh	t3,50(s0)
    5538:	016c6823 	subu	t5,t3,t4
    553c:	10200038 	beqz	at,5620 <func_80931A5C+0x194>
    5540:	a60d00b6 	sh	t5,182(s0)
    5544:	3c0140a0 	lui	at,0x40a0
    5548:	44812000 	mtc1	at,$f4
    554c:	26040068 	addiu	a0,s0,104
    5550:	0c000000 	jal	0 <BossSst_Init>
    5554:	e7a40010 	swc1	$f4,16(sp)
    5558:	0c000000 	jal	0 <BossSst_Init>
    555c:	2604014c 	addiu	a0,s0,332
    5560:	50400041 	beqzl	v0,5668 <func_80931A5C+0x1dc>
    5564:	920203e4 	lbu	v0,996(s0)
    5568:	920f03e4 	lbu	t7,996(s0)
    556c:	44804000 	mtc1	zero,$f8
    5570:	31f8fffc 	andi	t8,t7,0xfffc
    5574:	a21803e4 	sb	t8,996(s0)
    5578:	e6080068 	swc1	$f8,104(s0)
    557c:	8fb9002c 	lw	t9,44(sp)
    5580:	8f280680 	lw	t0,1664(t9)
    5584:	31090080 	andi	t1,t0,0x80
    5588:	11200012 	beqz	t1,55d4 <func_80931A5C+0x148>
    558c:	00000000 	nop
    5590:	0c000000 	jal	0 <BossSst_Init>
    5594:	00000000 	nop
    5598:	3c013f00 	lui	at,0x3f00
    559c:	44813000 	mtc1	at,$f6
    55a0:	00000000 	nop
    55a4:	4606003c 	c.lt.s	$f0,$f6
    55a8:	00000000 	nop
    55ac:	45000005 	bc1f	55c4 <func_80931A5C+0x138>
    55b0:	00000000 	nop
    55b4:	0c000000 	jal	0 <BossSst_Init>
    55b8:	02002025 	move	a0,s0
    55bc:	1000002a 	b	5668 <func_80931A5C+0x1dc>
    55c0:	920203e4 	lbu	v0,996(s0)
    55c4:	0c000000 	jal	0 <BossSst_Init>
    55c8:	02002025 	move	a0,s0
    55cc:	10000026 	b	5668 <func_80931A5C+0x1dc>
    55d0:	920203e4 	lbu	v0,996(s0)
    55d4:	0c000000 	jal	0 <BossSst_Init>
    55d8:	00000000 	nop
    55dc:	3c013f00 	lui	at,0x3f00
    55e0:	44815000 	mtc1	at,$f10
    55e4:	8fa40034 	lw	a0,52(sp)
    55e8:	26050024 	addiu	a1,s0,36
    55ec:	460a003c 	c.lt.s	$f0,$f10
    55f0:	2402000f 	li	v0,15
    55f4:	45000003 	bc1f	5604 <func_80931A5C+0x178>
    55f8:	00000000 	nop
    55fc:	10000001 	b	5604 <func_80931A5C+0x178>
    5600:	24020008 	li	v0,8
    5604:	00023400 	sll	a2,v0,0x10
    5608:	0c000000 	jal	0 <BossSst_Init>
    560c:	00063403 	sra	a2,a2,0x10
    5610:	0c000000 	jal	0 <BossSst_Init>
    5614:	02002025 	move	a0,s0
    5618:	10000013 	b	5668 <func_80931A5C+0x1dc>
    561c:	920203e4 	lbu	v0,996(s0)
    5620:	3c01428c 	lui	at,0x428c
    5624:	44811000 	mtc1	at,$f2
    5628:	3c010000 	lui	at,0x0
    562c:	c4300000 	lwc1	$f16,0(at)
    5630:	c6120068 	lwc1	$f18,104(s0)
    5634:	46109102 	mul.s	$f4,$f18,$f16
    5638:	e6040068 	swc1	$f4,104(s0)
    563c:	c6000068 	lwc1	$f0,104(s0)
    5640:	4600103c 	c.lt.s	$f2,$f0
    5644:	00000000 	nop
    5648:	45020004 	bc1fl	565c <func_80931A5C+0x1d0>
    564c:	e6000068 	swc1	$f0,104(s0)
    5650:	10000002 	b	565c <func_80931A5C+0x1d0>
    5654:	e6020068 	swc1	$f2,104(s0)
    5658:	e6000068 	swc1	$f0,104(s0)
    565c:	0c000000 	jal	0 <BossSst_Init>
    5660:	24053167 	li	a1,12647
    5664:	920203e4 	lbu	v0,996(s0)
    5668:	02002025 	move	a0,s0
    566c:	24053965 	li	a1,14693
    5670:	304a0002 	andi	t2,v0,0x2
    5674:	1140000e 	beqz	t2,56b0 <func_80931A5C+0x224>
    5678:	304bfffc 	andi	t3,v0,0xfffc
    567c:	0c000000 	jal	0 <BossSst_Init>
    5680:	a20b03e4 	sb	t3,996(s0)
    5684:	02002025 	move	a0,s0
    5688:	0c000000 	jal	0 <BossSst_Init>
    568c:	8fa50034 	lw	a1,52(sp)
    5690:	86020198 	lh	v0,408(s0)
    5694:	240c0005 	li	t4,5
    5698:	28410006 	slti	at,v0,6
    569c:	54200004 	bnezl	at,56b0 <func_80931A5C+0x224>
    56a0:	a6020198 	sh	v0,408(s0)
    56a4:	10000002 	b	56b0 <func_80931A5C+0x224>
    56a8:	a60c0198 	sh	t4,408(s0)
    56ac:	a6020198 	sh	v0,408(s0)
    56b0:	0c000000 	jal	0 <BossSst_Init>
    56b4:	86040032 	lh	a0,50(s0)
    56b8:	c6060068 	lwc1	$f6,104(s0)
    56bc:	c6080024 	lwc1	$f8,36(s0)
    56c0:	86040032 	lh	a0,50(s0)
    56c4:	46003282 	mul.s	$f10,$f6,$f0
    56c8:	460a4480 	add.s	$f18,$f8,$f10
    56cc:	0c000000 	jal	0 <BossSst_Init>
    56d0:	e6120024 	swc1	$f18,36(s0)
    56d4:	c6040068 	lwc1	$f4,104(s0)
    56d8:	c610002c 	lwc1	$f16,44(s0)
    56dc:	8fa2002c 	lw	v0,44(sp)
    56e0:	46002182 	mul.s	$f6,$f4,$f0
    56e4:	46068200 	add.s	$f8,$f16,$f6
    56e8:	e608002c 	swc1	$f8,44(s0)
    56ec:	8c4d0680 	lw	t5,1664(v0)
    56f0:	31ae0080 	andi	t6,t5,0x80
    56f4:	51c0000b 	beqzl	t6,5724 <func_80931A5C+0x298>
    56f8:	8fbf0024 	lw	ra,36(sp)
    56fc:	a4400850 	sh	zero,2128(v0)
    5700:	8e180024 	lw	t8,36(s0)
    5704:	ac580024 	sw	t8,36(v0)
    5708:	8e0f0028 	lw	t7,40(s0)
    570c:	ac4f0028 	sw	t7,40(v0)
    5710:	8e18002c 	lw	t8,44(s0)
    5714:	ac58002c 	sw	t8,44(v0)
    5718:	861900b6 	lh	t9,182(s0)
    571c:	a45900b6 	sh	t9,182(v0)
    5720:	8fbf0024 	lw	ra,36(sp)
    5724:	8fb00020 	lw	s0,32(sp)
    5728:	27bd0030 	addiu	sp,sp,48
    572c:	03e00008 	jr	ra
    5730:	00000000 	nop

00005734 <func_80931D04>:
    5734:	27bdffe8 	addiu	sp,sp,-24
    5738:	afbf0014 	sw	ra,20(sp)
    573c:	00803825 	move	a3,a0
    5740:	84ee001c 	lh	t6,28(a3)
    5744:	3c050000 	lui	a1,0x0
    5748:	afa70018 	sw	a3,24(sp)
    574c:	000e7880 	sll	t7,t6,0x2
    5750:	00af2821 	addu	a1,a1,t7
    5754:	8ca50000 	lw	a1,0(a1)
    5758:	2484014c 	addiu	a0,a0,332
    575c:	0c000000 	jal	0 <BossSst_Init>
    5760:	3c06c120 	lui	a2,0xc120
    5764:	8fa70018 	lw	a3,24(sp)
    5768:	3c190000 	lui	t9,0x0
    576c:	24180014 	li	t8,20
    5770:	27390000 	addiu	t9,t9,0
    5774:	a4f80198 	sh	t8,408(a3)
    5778:	acf90190 	sw	t9,400(a3)
    577c:	8fbf0014 	lw	ra,20(sp)
    5780:	27bd0018 	addiu	sp,sp,24
    5784:	03e00008 	jr	ra
    5788:	00000000 	nop

0000578c <func_80931D5C>:
    578c:	27bdffd8 	addiu	sp,sp,-40
    5790:	afb00018 	sw	s0,24(sp)
    5794:	afbf001c 	sw	ra,28(sp)
    5798:	afa5002c 	sw	a1,44(sp)
    579c:	8ca61c44 	lw	a2,7236(a1)
    57a0:	00808025 	move	s0,a0
    57a4:	2484014c 	addiu	a0,a0,332
    57a8:	afa40020 	sw	a0,32(sp)
    57ac:	0c000000 	jal	0 <BossSst_Init>
    57b0:	afa60024 	sw	a2,36(sp)
    57b4:	86030198 	lh	v1,408(s0)
    57b8:	8fa60024 	lw	a2,36(sp)
    57bc:	02002025 	move	a0,s0
    57c0:	10600002 	beqz	v1,57cc <func_80931D5C+0x40>
    57c4:	246fffff 	addiu	t7,v1,-1
    57c8:	a60f0198 	sh	t7,408(s0)
    57cc:	8cd80680 	lw	t8,1664(a2)
    57d0:	8fa5002c 	lw	a1,44(sp)
    57d4:	33190080 	andi	t9,t8,0x80
    57d8:	57200008 	bnezl	t9,57fc <func_80931D5C+0x70>
    57dc:	8e090024 	lw	t1,36(s0)
    57e0:	0c000000 	jal	0 <BossSst_Init>
    57e4:	24060001 	li	a2,1
    57e8:	0c000000 	jal	0 <BossSst_Init>
    57ec:	02002025 	move	a0,s0
    57f0:	10000027 	b	5890 <func_80931D5C+0x104>
    57f4:	8fbf001c 	lw	ra,28(sp)
    57f8:	8e090024 	lw	t1,36(s0)
    57fc:	240b0014 	li	t3,20
    5800:	3c0c0000 	lui	t4,0x0
    5804:	acc90024 	sw	t1,36(a2)
    5808:	8e080028 	lw	t0,40(s0)
    580c:	acc80028 	sw	t0,40(a2)
    5810:	8e09002c 	lw	t1,44(s0)
    5814:	acc9002c 	sw	t1,44(a2)
    5818:	860a0198 	lh	t2,408(s0)
    581c:	55400015 	bnezl	t2,5874 <func_80931D5C+0xe8>
    5820:	8fa40020 	lw	a0,32(sp)
    5824:	a60b0198 	sh	t3,408(s0)
    5828:	8d8c0004 	lw	t4,4(t4)
    582c:	24056825 	li	a1,26661
    5830:	00c02025 	move	a0,a2
    5834:	11800005 	beqz	t4,584c <func_80931D5C+0xc0>
    5838:	00000000 	nop
    583c:	0c000000 	jal	0 <BossSst_Init>
    5840:	00c02025 	move	a0,a2
    5844:	10000004 	b	5858 <func_80931D5C+0xcc>
    5848:	8fa4002c 	lw	a0,44(sp)
    584c:	0c000000 	jal	0 <BossSst_Init>
    5850:	24056805 	li	a1,26629
    5854:	8fa4002c 	lw	a0,44(sp)
    5858:	3c190001 	lui	t9,0x1
    585c:	2405fff8 	li	a1,-8
    5860:	0324c821 	addu	t9,t9,a0
    5864:	8f391d58 	lw	t9,7512(t9)
    5868:	0320f809 	jalr	t9
    586c:	00000000 	nop
    5870:	8fa40020 	lw	a0,32(sp)
    5874:	0c000000 	jal	0 <BossSst_Init>
    5878:	24050000 	li	a1,0
    587c:	10400003 	beqz	v0,588c <func_80931D5C+0x100>
    5880:	02002025 	move	a0,s0
    5884:	0c000000 	jal	0 <BossSst_Init>
    5888:	24053965 	li	a1,14693
    588c:	8fbf001c 	lw	ra,28(sp)
    5890:	8fb00018 	lw	s0,24(sp)
    5894:	27bd0028 	addiu	sp,sp,40
    5898:	03e00008 	jr	ra
    589c:	00000000 	nop

000058a0 <func_80931E70>:
    58a0:	27bdffe8 	addiu	sp,sp,-24
    58a4:	afbf0014 	sw	ra,20(sp)
    58a8:	00803825 	move	a3,a0
    58ac:	84ee001c 	lh	t6,28(a3)
    58b0:	3c050000 	lui	a1,0x0
    58b4:	afa70018 	sw	a3,24(sp)
    58b8:	000e7880 	sll	t7,t6,0x2
    58bc:	00af2821 	addu	a1,a1,t7
    58c0:	8ca50000 	lw	a1,0(a1)
    58c4:	2484014c 	addiu	a0,a0,332
    58c8:	0c000000 	jal	0 <BossSst_Init>
    58cc:	3c064120 	lui	a2,0x4120
    58d0:	8fa70018 	lw	a3,24(sp)
    58d4:	3c180000 	lui	t8,0x0
    58d8:	27180000 	addiu	t8,t8,0
    58dc:	acf80190 	sw	t8,400(a3)
    58e0:	8fbf0014 	lw	ra,20(sp)
    58e4:	27bd0018 	addiu	sp,sp,24
    58e8:	03e00008 	jr	ra
    58ec:	00000000 	nop

000058f0 <func_80931EC0>:
    58f0:	27bdffe8 	addiu	sp,sp,-24
    58f4:	afbf0014 	sw	ra,20(sp)
    58f8:	afa40018 	sw	a0,24(sp)
    58fc:	afa5001c 	sw	a1,28(sp)
    5900:	0c000000 	jal	0 <BossSst_Init>
    5904:	2484014c 	addiu	a0,a0,332
    5908:	50400004 	beqzl	v0,591c <func_80931EC0+0x2c>
    590c:	8fbf0014 	lw	ra,20(sp)
    5910:	0c000000 	jal	0 <BossSst_Init>
    5914:	8fa40018 	lw	a0,24(sp)
    5918:	8fbf0014 	lw	ra,20(sp)
    591c:	27bd0018 	addiu	sp,sp,24
    5920:	03e00008 	jr	ra
    5924:	00000000 	nop

00005928 <func_80931EF8>:
    5928:	27bdffe8 	addiu	sp,sp,-24
    592c:	afbf0014 	sw	ra,20(sp)
    5930:	240ec000 	li	t6,-16384
    5934:	240f0001 	li	t7,1
    5938:	00802825 	move	a1,a0
    593c:	a48e01a2 	sh	t6,418(a0)
    5940:	a48f0198 	sh	t7,408(a0)
    5944:	848400b6 	lh	a0,182(a0)
    5948:	0c000000 	jal	0 <BossSst_Init>
    594c:	afa50018 	sw	a1,24(sp)
    5950:	3c014348 	lui	at,0x4348
    5954:	44813000 	mtc1	at,$f6
    5958:	8fa50018 	lw	a1,24(sp)
    595c:	46060202 	mul.s	$f8,$f0,$f6
    5960:	c4a40024 	lwc1	$f4,36(a1)
    5964:	c4b00028 	lwc1	$f16,40(a1)
    5968:	84a400b6 	lh	a0,182(a1)
    596c:	e4b003cc 	swc1	$f16,972(a1)
    5970:	46082281 	sub.s	$f10,$f4,$f8
    5974:	0c000000 	jal	0 <BossSst_Init>
    5978:	e4aa03c8 	swc1	$f10,968(a1)
    597c:	3c014348 	lui	at,0x4348
    5980:	44813000 	mtc1	at,$f6
    5984:	8fa50018 	lw	a1,24(sp)
    5988:	3c180000 	lui	t8,0x0
    598c:	46060102 	mul.s	$f4,$f0,$f6
    5990:	c4b2002c 	lwc1	$f18,44(a1)
    5994:	27180000 	addiu	t8,t8,0
    5998:	acb80190 	sw	t8,400(a1)
    599c:	46049201 	sub.s	$f8,$f18,$f4
    59a0:	e4a803d0 	swc1	$f8,976(a1)
    59a4:	8fbf0014 	lw	ra,20(sp)
    59a8:	27bd0018 	addiu	sp,sp,24
    59ac:	03e00008 	jr	ra
    59b0:	00000000 	nop

000059b4 <func_80931F84>:
    59b4:	27bdffd0 	addiu	sp,sp,-48
    59b8:	afb0001c 	sw	s0,28(sp)
    59bc:	00808025 	move	s0,a0
    59c0:	afbf0024 	sw	ra,36(sp)
    59c4:	afb10020 	sw	s1,32(sp)
    59c8:	afa50034 	sw	a1,52(sp)
    59cc:	86060198 	lh	a2,408(s0)
    59d0:	8cb11c44 	lw	s1,7236(a1)
    59d4:	860501a2 	lh	a1,418(s0)
    59d8:	00c00821 	move	at,a2
    59dc:	000630c0 	sll	a2,a2,0x3
    59e0:	00c13023 	subu	a2,a2,at
    59e4:	000630c0 	sll	a2,a2,0x3
    59e8:	00c13021 	addu	a2,a2,at
    59ec:	00063080 	sll	a2,a2,0x2
    59f0:	24c601c8 	addiu	a2,a2,456
    59f4:	00063400 	sll	a2,a2,0x10
    59f8:	00063403 	sra	a2,a2,0x10
    59fc:	0c000000 	jal	0 <BossSst_Init>
    5a00:	248400b4 	addiu	a0,a0,180
    5a04:	50400027 	beqzl	v0,5aa4 <func_80931F84+0xf0>
    5a08:	860400b4 	lh	a0,180(s0)
    5a0c:	860f01a2 	lh	t7,418(s0)
    5a10:	51e00010 	beqzl	t7,5a54 <func_80931F84+0xa0>
    5a14:	86020198 	lh	v0,408(s0)
    5a18:	86180198 	lh	t8,408(s0)
    5a1c:	24010004 	li	at,4
    5a20:	a60001a2 	sh	zero,418(s0)
    5a24:	1701001e 	bne	t8,at,5aa0 <func_80931F84+0xec>
    5a28:	2604014c 	addiu	a0,s0,332
    5a2c:	8619001c 	lh	t9,28(s0)
    5a30:	3c050000 	lui	a1,0x0
    5a34:	3c064080 	lui	a2,0x4080
    5a38:	00194080 	sll	t0,t9,0x2
    5a3c:	00a82821 	addu	a1,a1,t0
    5a40:	0c000000 	jal	0 <BossSst_Init>
    5a44:	8ca50000 	lw	a1,0(a1)
    5a48:	10000016 	b	5aa4 <func_80931F84+0xf0>
    5a4c:	860400b4 	lh	a0,180(s0)
    5a50:	86020198 	lh	v0,408(s0)
    5a54:	24010004 	li	at,4
    5a58:	02002025 	move	a0,s0
    5a5c:	54410007 	bnel	v0,at,5a7c <func_80931F84+0xc8>
    5a60:	24010003 	li	at,3
    5a64:	a62000b4 	sh	zero,180(s1)
    5a68:	0c000000 	jal	0 <BossSst_Init>
    5a6c:	a62000b8 	sh	zero,184(s1)
    5a70:	10000098 	b	5cd4 <func_80931F84+0x320>
    5a74:	8fbf0024 	lw	ra,36(sp)
    5a78:	24010003 	li	at,3
    5a7c:	14410004 	bne	v0,at,5a90 <func_80931F84+0xdc>
    5a80:	240ac000 	li	t2,-16384
    5a84:	2409a000 	li	t1,-24576
    5a88:	10000002 	b	5a94 <func_80931F84+0xe0>
    5a8c:	a60901a2 	sh	t1,418(s0)
    5a90:	a60a01a2 	sh	t2,418(s0)
    5a94:	860b0198 	lh	t3,408(s0)
    5a98:	256c0001 	addiu	t4,t3,1
    5a9c:	a60c0198 	sh	t4,408(s0)
    5aa0:	860400b4 	lh	a0,180(s0)
    5aa4:	24844000 	addiu	a0,a0,16384
    5aa8:	00042400 	sll	a0,a0,0x10
    5aac:	0c000000 	jal	0 <BossSst_Init>
    5ab0:	00042403 	sra	a0,a0,0x10
    5ab4:	3c014348 	lui	at,0x4348
    5ab8:	44812000 	mtc1	at,$f4
    5abc:	c60803cc 	lwc1	$f8,972(s0)
    5ac0:	860400b4 	lh	a0,180(s0)
    5ac4:	46040182 	mul.s	$f6,$f0,$f4
    5ac8:	24844000 	addiu	a0,a0,16384
    5acc:	00042400 	sll	a0,a0,0x10
    5ad0:	00042403 	sra	a0,a0,0x10
    5ad4:	46083280 	add.s	$f10,$f6,$f8
    5ad8:	0c000000 	jal	0 <BossSst_Init>
    5adc:	e60a0028 	swc1	$f10,40(s0)
    5ae0:	3c014348 	lui	at,0x4348
    5ae4:	44818000 	mtc1	at,$f16
    5ae8:	00000000 	nop
    5aec:	46100482 	mul.s	$f18,$f0,$f16
    5af0:	e7b20028 	swc1	$f18,40(sp)
    5af4:	0c000000 	jal	0 <BossSst_Init>
    5af8:	860400b6 	lh	a0,182(s0)
    5afc:	c7a40028 	lwc1	$f4,40(sp)
    5b00:	c60803c8 	lwc1	$f8,968(s0)
    5b04:	860400b6 	lh	a0,182(s0)
    5b08:	46040182 	mul.s	$f6,$f0,$f4
    5b0c:	46083280 	add.s	$f10,$f6,$f8
    5b10:	0c000000 	jal	0 <BossSst_Init>
    5b14:	e60a0024 	swc1	$f10,36(s0)
    5b18:	c7b00028 	lwc1	$f16,40(sp)
    5b1c:	c60403d0 	lwc1	$f4,976(s0)
    5b20:	860d0198 	lh	t5,408(s0)
    5b24:	46100482 	mul.s	$f18,$f0,$f16
    5b28:	24010004 	li	at,4
    5b2c:	260400b8 	addiu	a0,s0,184
    5b30:	00002825 	move	a1,zero
    5b34:	46049180 	add.s	$f6,$f18,$f4
    5b38:	11a10009 	beq	t5,at,5b60 <func_80931F84+0x1ac>
    5b3c:	e606002c 	swc1	$f6,44(s0)
    5b40:	860e00b4 	lh	t6,180(s0)
    5b44:	82180194 	lb	t8,404(s0)
    5b48:	25cf4000 	addiu	t7,t6,16384
    5b4c:	01f80019 	multu	t7,t8
    5b50:	0000c812 	mflo	t9
    5b54:	a61900b8 	sh	t9,184(s0)
    5b58:	10000004 	b	5b6c <func_80931F84+0x1b8>
    5b5c:	8e280680 	lw	t0,1664(s1)
    5b60:	0c000000 	jal	0 <BossSst_Init>
    5b64:	24060800 	li	a2,2048
    5b68:	8e280680 	lw	t0,1664(s1)
    5b6c:	262400b4 	addiu	a0,s1,180
    5b70:	00002825 	move	a1,zero
    5b74:	31090080 	andi	t1,t0,0x80
    5b78:	1120000e 	beqz	t1,5bb4 <func_80931F84+0x200>
    5b7c:	00000000 	nop
    5b80:	a6200850 	sh	zero,2128(s1)
    5b84:	26240024 	addiu	a0,s1,36
    5b88:	0c000000 	jal	0 <BossSst_Init>
    5b8c:	26050024 	addiu	a1,s0,36
    5b90:	860a00b4 	lh	t2,180(s0)
    5b94:	a62a00b4 	sh	t2,180(s1)
    5b98:	820b0194 	lb	t3,404(s0)
    5b9c:	860d00b8 	lh	t5,184(s0)
    5ba0:	000b0823 	negu	at,t3
    5ba4:	00016380 	sll	t4,at,0xe
    5ba8:	018d7021 	addu	t6,t4,t5
    5bac:	10000017 	b	5c0c <func_80931F84+0x258>
    5bb0:	a62e00b8 	sh	t6,184(s1)
    5bb4:	0c000000 	jal	0 <BossSst_Init>
    5bb8:	24060600 	li	a2,1536
    5bbc:	262400b8 	addiu	a0,s1,184
    5bc0:	00002825 	move	a1,zero
    5bc4:	0c000000 	jal	0 <BossSst_Init>
    5bc8:	24060600 	li	a2,1536
    5bcc:	0c000000 	jal	0 <BossSst_Init>
    5bd0:	860400b6 	lh	a0,182(s0)
    5bd4:	3c0141a0 	lui	at,0x41a0
    5bd8:	44815000 	mtc1	at,$f10
    5bdc:	c6280024 	lwc1	$f8,36(s1)
    5be0:	46005402 	mul.s	$f16,$f10,$f0
    5be4:	46104480 	add.s	$f18,$f8,$f16
    5be8:	e6320024 	swc1	$f18,36(s1)
    5bec:	0c000000 	jal	0 <BossSst_Init>
    5bf0:	860400b6 	lh	a0,182(s0)
    5bf4:	3c0141a0 	lui	at,0x41a0
    5bf8:	44813000 	mtc1	at,$f6
    5bfc:	c624002c 	lwc1	$f4,44(s1)
    5c00:	46003282 	mul.s	$f10,$f6,$f0
    5c04:	460a2200 	add.s	$f8,$f4,$f10
    5c08:	e628002c 	swc1	$f8,44(s1)
    5c0c:	860f0198 	lh	t7,408(s0)
    5c10:	24010004 	li	at,4
    5c14:	55e1002c 	bnel	t7,at,5cc8 <func_80931F84+0x314>
    5c18:	02002025 	move	a0,s0
    5c1c:	861801a2 	lh	t8,418(s0)
    5c20:	57000029 	bnezl	t8,5cc8 <func_80931F84+0x314>
    5c24:	02002025 	move	a0,s0
    5c28:	0c000000 	jal	0 <BossSst_Init>
    5c2c:	2604014c 	addiu	a0,s0,332
    5c30:	50400025 	beqzl	v0,5cc8 <func_80931F84+0x314>
    5c34:	02002025 	move	a0,s0
    5c38:	8e390680 	lw	t9,1664(s1)
    5c3c:	02002025 	move	a0,s0
    5c40:	8fa50034 	lw	a1,52(sp)
    5c44:	33280080 	andi	t0,t9,0x80
    5c48:	5100001f 	beqzl	t0,5cc8 <func_80931F84+0x314>
    5c4c:	02002025 	move	a0,s0
    5c50:	0c000000 	jal	0 <BossSst_Init>
    5c54:	00003025 	move	a2,zero
    5c58:	0c000000 	jal	0 <BossSst_Init>
    5c5c:	860400b6 	lh	a0,182(s0)
    5c60:	3c01428c 	lui	at,0x428c
    5c64:	44819000 	mtc1	at,$f18
    5c68:	c6300024 	lwc1	$f16,36(s1)
    5c6c:	46009182 	mul.s	$f6,$f18,$f0
    5c70:	46068100 	add.s	$f4,$f16,$f6
    5c74:	e6240024 	swc1	$f4,36(s1)
    5c78:	0c000000 	jal	0 <BossSst_Init>
    5c7c:	860400b6 	lh	a0,182(s0)
    5c80:	3c01428c 	lui	at,0x428c
    5c84:	44814000 	mtc1	at,$f8
    5c88:	c62a002c 	lwc1	$f10,44(s1)
    5c8c:	3c014000 	lui	at,0x4000
    5c90:	46004482 	mul.s	$f18,$f8,$f0
    5c94:	44813000 	mtc1	at,$f6
    5c98:	02002825 	move	a1,s0
    5c9c:	3c064170 	lui	a2,0x4170
    5ca0:	46125400 	add.s	$f16,$f10,$f18
    5ca4:	e630002c 	swc1	$f16,44(s1)
    5ca8:	860700b6 	lh	a3,182(s0)
    5cac:	8fa40034 	lw	a0,52(sp)
    5cb0:	0c000000 	jal	0 <BossSst_Init>
    5cb4:	e7a60010 	swc1	$f6,16(sp)
    5cb8:	02202025 	move	a0,s1
    5cbc:	0c000000 	jal	0 <BossSst_Init>
    5cc0:	2405083e 	li	a1,2110
    5cc4:	02002025 	move	a0,s0
    5cc8:	0c000000 	jal	0 <BossSst_Init>
    5ccc:	24053167 	li	a1,12647
    5cd0:	8fbf0024 	lw	ra,36(sp)
    5cd4:	8fb0001c 	lw	s0,28(sp)
    5cd8:	8fb10020 	lw	s1,32(sp)
    5cdc:	03e00008 	jr	ra
    5ce0:	27bd0030 	addiu	sp,sp,48

00005ce4 <func_809322B4>:
    5ce4:	27bdffd8 	addiu	sp,sp,-40
    5ce8:	afbf0024 	sw	ra,36(sp)
    5cec:	afb00020 	sw	s0,32(sp)
    5cf0:	848f001c 	lh	t7,28(a0)
    5cf4:	3c010000 	lui	at,0x0
    5cf8:	240e0008 	li	t6,8
    5cfc:	000fc080 	sll	t8,t7,0x2
    5d00:	00380821 	addu	at,at,t8
    5d04:	00808025 	move	s0,a0
    5d08:	ac2e0000 	sw	t6,0(at)
    5d0c:	8619001c 	lh	t9,28(s0)
    5d10:	3c050000 	lui	a1,0x0
    5d14:	2484014c 	addiu	a0,a0,332
    5d18:	00194080 	sll	t0,t9,0x2
    5d1c:	00a82821 	addu	a1,a1,t0
    5d20:	8ca50000 	lw	a1,0(a1)
    5d24:	0c000000 	jal	0 <BossSst_Init>
    5d28:	3c064080 	lui	a2,0x4080
    5d2c:	24090024 	li	t1,36
    5d30:	a6090198 	sh	t1,408(s0)
    5d34:	260403c8 	addiu	a0,s0,968
    5d38:	0c000000 	jal	0 <BossSst_Init>
    5d3c:	26050024 	addiu	a1,s0,36
    5d40:	240a00c8 	li	t2,200
    5d44:	afaa0010 	sw	t2,16(sp)
    5d48:	02002025 	move	a0,s0
    5d4c:	00002825 	move	a1,zero
    5d50:	240600ff 	li	a2,255
    5d54:	0c000000 	jal	0 <BossSst_Init>
    5d58:	00003825 	move	a3,zero
    5d5c:	3c0b0000 	lui	t3,0x0
    5d60:	256b0000 	addiu	t3,t3,0
    5d64:	ae0b0190 	sw	t3,400(s0)
    5d68:	8fbf0024 	lw	ra,36(sp)
    5d6c:	8fb00020 	lw	s0,32(sp)
    5d70:	27bd0028 	addiu	sp,sp,40
    5d74:	03e00008 	jr	ra
    5d78:	00000000 	nop

00005d7c <func_8093234C>:
    5d7c:	27bdffd8 	addiu	sp,sp,-40
    5d80:	afb00018 	sw	s0,24(sp)
    5d84:	00808025 	move	s0,a0
    5d88:	afbf001c 	sw	ra,28(sp)
    5d8c:	2484014c 	addiu	a0,a0,332
    5d90:	afa5002c 	sw	a1,44(sp)
    5d94:	0c000000 	jal	0 <BossSst_Init>
    5d98:	afa40020 	sw	a0,32(sp)
    5d9c:	86020198 	lh	v0,408(s0)
    5da0:	8fa40020 	lw	a0,32(sp)
    5da4:	10400003 	beqz	v0,5db4 <func_8093234C+0x38>
    5da8:	244effff 	addiu	t6,v0,-1
    5dac:	a60e0198 	sh	t6,408(s0)
    5db0:	86020198 	lh	v0,408(s0)
    5db4:	04410004 	bgez	v0,5dc8 <func_8093234C+0x4c>
    5db8:	304f0003 	andi	t7,v0,0x3
    5dbc:	11e00002 	beqz	t7,5dc8 <func_8093234C+0x4c>
    5dc0:	00000000 	nop
    5dc4:	25effffc 	addiu	t7,t7,-4
    5dc8:	55e00019 	bnezl	t7,5e30 <func_8093234C+0xb4>
    5dcc:	3c0141a0 	lui	at,0x41a0
    5dd0:	04410004 	bgez	v0,5de4 <func_8093234C+0x68>
    5dd4:	30580007 	andi	t8,v0,0x7
    5dd8:	13000002 	beqz	t8,5de4 <func_8093234C+0x68>
    5ddc:	00000000 	nop
    5de0:	2718fff8 	addiu	t8,t8,-8
    5de4:	5300000b 	beqzl	t8,5e14 <func_8093234C+0x98>
    5de8:	8609001c 	lh	t1,28(s0)
    5dec:	8619001c 	lh	t9,28(s0)
    5df0:	3c050000 	lui	a1,0x0
    5df4:	3c064080 	lui	a2,0x4080
    5df8:	00194080 	sll	t0,t9,0x2
    5dfc:	00a82821 	addu	a1,a1,t0
    5e00:	0c000000 	jal	0 <BossSst_Init>
    5e04:	8ca50000 	lw	a1,0(a1)
    5e08:	10000009 	b	5e30 <func_8093234C+0xb4>
    5e0c:	3c0141a0 	lui	at,0x41a0
    5e10:	8609001c 	lh	t1,28(s0)
    5e14:	3c050000 	lui	a1,0x0
    5e18:	3c0640c0 	lui	a2,0x40c0
    5e1c:	00095080 	sll	t2,t1,0x2
    5e20:	00aa2821 	addu	a1,a1,t2
    5e24:	0c000000 	jal	0 <BossSst_Init>
    5e28:	8ca50000 	lw	a1,0(a1)
    5e2c:	3c0141a0 	lui	at,0x41a0
    5e30:	240b00c8 	li	t3,200
    5e34:	44816000 	mtc1	at,$f12
    5e38:	0c000000 	jal	0 <BossSst_Init>
    5e3c:	a20b0114 	sb	t3,276(s0)
    5e40:	c6040024 	lwc1	$f4,36(s0)
    5e44:	3c0141a0 	lui	at,0x41a0
    5e48:	44816000 	mtc1	at,$f12
    5e4c:	46002180 	add.s	$f6,$f4,$f0
    5e50:	0c000000 	jal	0 <BossSst_Init>
    5e54:	e6060024 	swc1	$f6,36(s0)
    5e58:	c6080028 	lwc1	$f8,40(s0)
    5e5c:	3c0141a0 	lui	at,0x41a0
    5e60:	44816000 	mtc1	at,$f12
    5e64:	46004280 	add.s	$f10,$f8,$f0
    5e68:	0c000000 	jal	0 <BossSst_Init>
    5e6c:	e60a0028 	swc1	$f10,40(s0)
    5e70:	3c0142c8 	lui	at,0x42c8
    5e74:	44813000 	mtc1	at,$f6
    5e78:	c6040080 	lwc1	$f4,128(s0)
    5e7c:	c6080028 	lwc1	$f8,40(s0)
    5e80:	c610002c 	lwc1	$f16,44(s0)
    5e84:	46062080 	add.s	$f2,$f4,$f6
    5e88:	26040028 	addiu	a0,s0,40
    5e8c:	46008480 	add.s	$f18,$f16,$f0
    5e90:	4602403c 	c.lt.s	$f8,$f2
    5e94:	e612002c 	swc1	$f18,44(s0)
    5e98:	45020005 	bc1fl	5eb0 <func_8093234C+0x134>
    5e9c:	860c0198 	lh	t4,408(s0)
    5ea0:	44051000 	mfc1	a1,$f2
    5ea4:	0c000000 	jal	0 <BossSst_Init>
    5ea8:	3c0641a0 	lui	a2,0x41a0
    5eac:	860c0198 	lh	t4,408(s0)
    5eb0:	55800004 	bnezl	t4,5ec4 <func_8093234C+0x148>
    5eb4:	8fbf001c 	lw	ra,28(sp)
    5eb8:	0c000000 	jal	0 <BossSst_Init>
    5ebc:	02002025 	move	a0,s0
    5ec0:	8fbf001c 	lw	ra,28(sp)
    5ec4:	8fb00018 	lw	s0,24(sp)
    5ec8:	27bd0028 	addiu	sp,sp,40
    5ecc:	03e00008 	jr	ra
    5ed0:	00000000 	nop

00005ed4 <func_809324A4>:
    5ed4:	27bdffe8 	addiu	sp,sp,-24
    5ed8:	afbf0014 	sw	ra,20(sp)
    5edc:	00803825 	move	a3,a0
    5ee0:	84ee001c 	lh	t6,28(a3)
    5ee4:	3c050000 	lui	a1,0x0
    5ee8:	afa70018 	sw	a3,24(sp)
    5eec:	000e7880 	sll	t7,t6,0x2
    5ef0:	00af2821 	addu	a1,a1,t7
    5ef4:	8ca50000 	lw	a1,0(a1)
    5ef8:	2484014c 	addiu	a0,a0,332
    5efc:	0c000000 	jal	0 <BossSst_Init>
    5f00:	3c064100 	lui	a2,0x4100
    5f04:	8fa70018 	lw	a3,24(sp)
    5f08:	3c180000 	lui	t8,0x0
    5f0c:	27180000 	addiu	t8,t8,0
    5f10:	acf80190 	sw	t8,400(a3)
    5f14:	8fbf0014 	lw	ra,20(sp)
    5f18:	27bd0018 	addiu	sp,sp,24
    5f1c:	03e00008 	jr	ra
    5f20:	00000000 	nop

00005f24 <func_809324F4>:
    5f24:	27bdffd0 	addiu	sp,sp,-48
    5f28:	afb00024 	sw	s0,36(sp)
    5f2c:	3c013f80 	lui	at,0x3f80
    5f30:	44812000 	mtc1	at,$f4
    5f34:	00808025 	move	s0,a0
    5f38:	afbf002c 	sw	ra,44(sp)
    5f3c:	afb10028 	sw	s1,40(sp)
    5f40:	f7b40018 	sdc1	$f20,24(sp)
    5f44:	afa50034 	sw	a1,52(sp)
    5f48:	8e050008 	lw	a1,8(s0)
    5f4c:	24840024 	addiu	a0,a0,36
    5f50:	3c063f00 	lui	a2,0x3f00
    5f54:	3c0741c8 	lui	a3,0x41c8
    5f58:	0c000000 	jal	0 <BossSst_Init>
    5f5c:	e7a40010 	swc1	$f4,16(sp)
    5f60:	3c013f80 	lui	at,0x3f80
    5f64:	44813000 	mtc1	at,$f6
    5f68:	8e050010 	lw	a1,16(s0)
    5f6c:	46000506 	mov.s	$f20,$f0
    5f70:	2604002c 	addiu	a0,s0,44
    5f74:	3c063f00 	lui	a2,0x3f00
    5f78:	3c0741c8 	lui	a3,0x41c8
    5f7c:	0c000000 	jal	0 <BossSst_Init>
    5f80:	e7a60010 	swc1	$f6,16(sp)
    5f84:	3c014348 	lui	at,0x4348
    5f88:	44815000 	mtc1	at,$f10
    5f8c:	c608000c 	lwc1	$f8,12(s0)
    5f90:	3c013f80 	lui	at,0x3f80
    5f94:	44819000 	mtc1	at,$f18
    5f98:	460a4400 	add.s	$f16,$f8,$f10
    5f9c:	3c063e4c 	lui	a2,0x3e4c
    5fa0:	34c6cccd 	ori	a2,a2,0xcccd
    5fa4:	4600a500 	add.s	$f20,$f20,$f0
    5fa8:	44058000 	mfc1	a1,$f16
    5fac:	26040028 	addiu	a0,s0,40
    5fb0:	3c0741f0 	lui	a3,0x41f0
    5fb4:	0c000000 	jal	0 <BossSst_Init>
    5fb8:	e7b20010 	swc1	$f18,16(sp)
    5fbc:	4600a500 	add.s	$f20,$f20,$f0
    5fc0:	260400b4 	addiu	a0,s0,180
    5fc4:	24054000 	li	a1,16384
    5fc8:	0c000000 	jal	0 <BossSst_Init>
    5fcc:	24060400 	li	a2,1024
    5fd0:	00408825 	move	s1,v0
    5fd4:	260400b8 	addiu	a0,s0,184
    5fd8:	00002825 	move	a1,zero
    5fdc:	0c000000 	jal	0 <BossSst_Init>
    5fe0:	24061000 	li	a2,4096
    5fe4:	02228824 	and	s1,s1,v0
    5fe8:	260400b6 	addiu	a0,s0,182
    5fec:	86050016 	lh	a1,22(s0)
    5ff0:	0c000000 	jal	0 <BossSst_Init>
    5ff4:	24060800 	li	a2,2048
    5ff8:	02228824 	and	s1,s1,v0
    5ffc:	2604019e 	addiu	a0,s0,414
    6000:	2405fa24 	li	a1,-1500
    6004:	0c000000 	jal	0 <BossSst_Init>
    6008:	240601f4 	li	a2,500
    600c:	82050194 	lb	a1,404(s0)
    6010:	02228824 	and	s1,s1,v0
    6014:	260401a0 	addiu	a0,s0,416
    6018:	00050823 	negu	at,a1
    601c:	00202825 	move	a1,at
    6020:	00052f40 	sll	a1,a1,0x1d
    6024:	00052c03 	sra	a1,a1,0x10
    6028:	0c000000 	jal	0 <BossSst_Init>
    602c:	24060800 	li	a2,2048
    6030:	3c0141f0 	lui	at,0x41f0
    6034:	44812000 	mtc1	at,$f4
    6038:	240e00c8 	li	t6,200
    603c:	02228824 	and	s1,s1,v0
    6040:	4604a03c 	c.lt.s	$f20,$f4
    6044:	a20e0114 	sb	t6,276(s0)
    6048:	02002025 	move	a0,s0
    604c:	45000007 	bc1f	606c <func_809324F4+0x148>
    6050:	00000000 	nop
    6054:	12200005 	beqz	s1,606c <func_809324F4+0x148>
    6058:	00000000 	nop
    605c:	0c000000 	jal	0 <BossSst_Init>
    6060:	02002025 	move	a0,s0
    6064:	10000004 	b	6078 <func_809324F4+0x154>
    6068:	8fbf002c 	lw	ra,44(sp)
    606c:	0c000000 	jal	0 <BossSst_Init>
    6070:	24053167 	li	a1,12647
    6074:	8fbf002c 	lw	ra,44(sp)
    6078:	d7b40018 	ldc1	$f20,24(sp)
    607c:	8fb00024 	lw	s0,36(sp)
    6080:	8fb10028 	lw	s1,40(sp)
    6084:	03e00008 	jr	ra
    6088:	27bd0030 	addiu	sp,sp,48

0000608c <func_8093265C>:
    608c:	3c0f0000 	lui	t7,0x0
    6090:	240e00c8 	li	t6,200
    6094:	25ef0000 	addiu	t7,t7,0
    6098:	a48e0198 	sh	t6,408(a0)
    609c:	03e00008 	jr	ra
    60a0:	ac8f0190 	sw	t7,400(a0)

000060a4 <func_80932674>:
    60a4:	27bdffe0 	addiu	sp,sp,-32
    60a8:	afb00018 	sw	s0,24(sp)
    60ac:	00808025 	move	s0,a0
    60b0:	afbf001c 	sw	ra,28(sp)
    60b4:	afa50024 	sw	a1,36(sp)
    60b8:	0c000000 	jal	0 <BossSst_Init>
    60bc:	2484014c 	addiu	a0,a0,332
    60c0:	86020198 	lh	v0,408(s0)
    60c4:	10400003 	beqz	v0,60d4 <func_80932674+0x30>
    60c8:	244effff 	addiu	t6,v0,-1
    60cc:	a60e0198 	sh	t6,408(s0)
    60d0:	86020198 	lh	v0,408(s0)
    60d4:	44822000 	mtc1	v0,$f4
    60d8:	3c010000 	lui	at,0x0
    60dc:	c4280000 	lwc1	$f8,0(at)
    60e0:	468021a0 	cvt.s.w	$f6,$f4
    60e4:	46083302 	mul.s	$f12,$f6,$f8
    60e8:	0c000000 	jal	0 <BossSst_Init>
    60ec:	00000000 	nop
    60f0:	3c014600 	lui	at,0x4600
    60f4:	44815000 	mtc1	at,$f10
    60f8:	3c014680 	lui	at,0x4680
    60fc:	44819000 	mtc1	at,$f18
    6100:	460a0402 	mul.s	$f16,$f0,$f10
    6104:	86190198 	lh	t9,408(s0)
    6108:	3c010000 	lui	at,0x0
    610c:	44994000 	mtc1	t9,$f8
    6110:	46128100 	add.s	$f4,$f16,$f18
    6114:	468042a0 	cvt.s.w	$f10,$f8
    6118:	4600218d 	trunc.w.s	$f6,$f4
    611c:	44183000 	mfc1	t8,$f6
    6120:	00000000 	nop
    6124:	a61800b4 	sh	t8,180(s0)
    6128:	c4300000 	lwc1	$f16,0(at)
    612c:	46105302 	mul.s	$f12,$f10,$f16
    6130:	0c000000 	jal	0 <BossSst_Init>
    6134:	00000000 	nop
    6138:	82080194 	lb	t0,404(s0)
    613c:	3c014620 	lui	at,0x4620
    6140:	44819000 	mtc1	at,$f18
    6144:	00080823 	negu	at,t0
    6148:	00014b40 	sll	t1,at,0xd
    614c:	44893000 	mtc1	t1,$f6
    6150:	46120102 	mul.s	$f4,$f0,$f18
    6154:	860c0198 	lh	t4,408(s0)
    6158:	02002025 	move	a0,s0
    615c:	46803220 	cvt.s.w	$f8,$f6
    6160:	46082280 	add.s	$f10,$f4,$f8
    6164:	4600540d 	trunc.w.s	$f16,$f10
    6168:	440b8000 	mfc1	t3,$f16
    616c:	00000000 	nop
    6170:	a60b01a0 	sh	t3,416(s0)
    6174:	05810004 	bgez	t4,6188 <func_80932674+0xe4>
    6178:	318d0007 	andi	t5,t4,0x7
    617c:	11a00002 	beqz	t5,6188 <func_80932674+0xe4>
    6180:	00000000 	nop
    6184:	25adfff8 	addiu	t5,t5,-8
    6188:	55a00004 	bnezl	t5,619c <func_80932674+0xf8>
    618c:	8e02011c 	lw	v0,284(s0)
    6190:	0c000000 	jal	0 <BossSst_Init>
    6194:	24053968 	li	a1,14696
    6198:	8e02011c 	lw	v0,284(s0)
    619c:	3c180000 	lui	t8,0x0
    61a0:	24010008 	li	at,8
    61a4:	844e001c 	lh	t6,28(v0)
    61a8:	000e7880 	sll	t7,t6,0x2
    61ac:	030fc021 	addu	t8,t8,t7
    61b0:	8f180000 	lw	t8,0(t8)
    61b4:	57010014 	bnel	t8,at,6208 <func_80932674+0x164>
    61b8:	860b0198 	lh	t3,408(s0)
    61bc:	8c430190 	lw	v1,400(v0)
    61c0:	3c190000 	lui	t9,0x0
    61c4:	27390000 	addiu	t9,t9,0
    61c8:	13230004 	beq	t9,v1,61dc <func_80932674+0x138>
    61cc:	3c080000 	lui	t0,0x0
    61d0:	25080000 	addiu	t0,t0,0
    61d4:	55030006 	bnel	t0,v1,61f0 <func_80932674+0x14c>
    61d8:	86090198 	lh	t1,408(s0)
    61dc:	0c000000 	jal	0 <BossSst_Init>
    61e0:	02002025 	move	a0,s0
    61e4:	10000010 	b	6228 <func_80932674+0x184>
    61e8:	8fbf001c 	lw	ra,28(sp)
    61ec:	86090198 	lh	t1,408(s0)
    61f0:	240a0050 	li	t2,80
    61f4:	5520000c 	bnezl	t1,6228 <func_80932674+0x184>
    61f8:	8fbf001c 	lw	ra,28(sp)
    61fc:	10000009 	b	6224 <func_80932674+0x180>
    6200:	a60a0198 	sh	t2,408(s0)
    6204:	860b0198 	lh	t3,408(s0)
    6208:	55600007 	bnezl	t3,6228 <func_80932674+0x184>
    620c:	8fbf001c 	lw	ra,28(sp)
    6210:	8e0c0004 	lw	t4,4(s0)
    6214:	02002025 	move	a0,s0
    6218:	358d0001 	ori	t5,t4,0x1
    621c:	0c000000 	jal	0 <BossSst_Init>
    6220:	ae0d0004 	sw	t5,4(s0)
    6224:	8fbf001c 	lw	ra,28(sp)
    6228:	8fb00018 	lw	s0,24(sp)
    622c:	27bd0020 	addiu	sp,sp,32
    6230:	03e00008 	jr	ra
    6234:	00000000 	nop

00006238 <func_80932808>:
    6238:	27bdffe8 	addiu	sp,sp,-24
    623c:	afbf0014 	sw	ra,20(sp)
    6240:	00803825 	move	a3,a0
    6244:	84ee001c 	lh	t6,28(a3)
    6248:	3c050000 	lui	a1,0x0
    624c:	afa70018 	sw	a3,24(sp)
    6250:	000e7880 	sll	t7,t6,0x2
    6254:	00af2821 	addu	a1,a1,t7
    6258:	8ca50000 	lw	a1,0(a1)
    625c:	2484014c 	addiu	a0,a0,332
    6260:	0c000000 	jal	0 <BossSst_Init>
    6264:	3c064120 	lui	a2,0x4120
    6268:	8fa70018 	lw	a3,24(sp)
    626c:	3c180000 	lui	t8,0x0
    6270:	27180000 	addiu	t8,t8,0
    6274:	a0e00195 	sb	zero,405(a3)
    6278:	acf80190 	sw	t8,400(a3)
    627c:	8fbf0014 	lw	ra,20(sp)
    6280:	27bd0018 	addiu	sp,sp,24
    6284:	03e00008 	jr	ra
    6288:	00000000 	nop

0000628c <func_8093285C>:
    628c:	27bdffd8 	addiu	sp,sp,-40
    6290:	afbf0024 	sw	ra,36(sp)
    6294:	afb00020 	sw	s0,32(sp)
    6298:	afa5002c 	sw	a1,44(sp)
    629c:	808e0195 	lb	t6,405(a0)
    62a0:	00808025 	move	s0,a0
    62a4:	55c00038 	bnezl	t6,6388 <func_8093285C+0xfc>
    62a8:	920903e4 	lbu	t1,996(s0)
    62ac:	0c000000 	jal	0 <BossSst_Init>
    62b0:	2484014c 	addiu	a0,a0,332
    62b4:	a2020195 	sb	v0,405(s0)
    62b8:	260400b4 	addiu	a0,s0,180
    62bc:	00002825 	move	a1,zero
    62c0:	0c000000 	jal	0 <BossSst_Init>
    62c4:	24060800 	li	a2,2048
    62c8:	820a0194 	lb	t2,404(s0)
    62cc:	86190016 	lh	t9,22(s0)
    62d0:	820f0195 	lb	t7,405(s0)
    62d4:	000a5b00 	sll	t3,t2,0xc
    62d8:	032b2821 	addu	a1,t9,t3
    62dc:	00052c00 	sll	a1,a1,0x10
    62e0:	01e2c024 	and	t8,t7,v0
    62e4:	a2180195 	sb	t8,405(s0)
    62e8:	00052c03 	sra	a1,a1,0x10
    62ec:	260400b6 	addiu	a0,s0,182
    62f0:	0c000000 	jal	0 <BossSst_Init>
    62f4:	24060800 	li	a2,2048
    62f8:	820c0195 	lb	t4,405(s0)
    62fc:	260401a0 	addiu	a0,s0,416
    6300:	00002825 	move	a1,zero
    6304:	01826824 	and	t5,t4,v0
    6308:	a20d0195 	sb	t5,405(s0)
    630c:	0c000000 	jal	0 <BossSst_Init>
    6310:	24060800 	li	a2,2048
    6314:	82050194 	lb	a1,404(s0)
    6318:	820e0195 	lb	t6,405(s0)
    631c:	260400b8 	addiu	a0,s0,184
    6320:	00a00821 	move	at,a1
    6324:	00052880 	sll	a1,a1,0x2
    6328:	00a12821 	addu	a1,a1,at
    632c:	00052ac0 	sll	a1,a1,0xb
    6330:	00052c00 	sll	a1,a1,0x10
    6334:	01c27824 	and	t7,t6,v0
    6338:	a20f0195 	sb	t7,405(s0)
    633c:	00052c03 	sra	a1,a1,0x10
    6340:	0c000000 	jal	0 <BossSst_Init>
    6344:	24060800 	li	a2,2048
    6348:	82180195 	lb	t8,405(s0)
    634c:	2604019e 	addiu	a0,s0,414
    6350:	2405f254 	li	a1,-3500
    6354:	03025024 	and	t2,t8,v0
    6358:	a20a0195 	sb	t2,405(s0)
    635c:	0c000000 	jal	0 <BossSst_Init>
    6360:	240601f4 	li	a2,500
    6364:	82190195 	lb	t9,405(s0)
    6368:	03225824 	and	t3,t9,v0
    636c:	a20b0195 	sb	t3,405(s0)
    6370:	820c0195 	lb	t4,405(s0)
    6374:	5180001f 	beqzl	t4,63f4 <func_8093285C+0x168>
    6378:	8fbf0024 	lw	ra,36(sp)
    637c:	1000001c 	b	63f0 <func_8093285C+0x164>
    6380:	a2000114 	sb	zero,276(s0)
    6384:	920903e4 	lbu	t1,996(s0)
    6388:	312d0002 	andi	t5,t1,0x2
    638c:	51a00019 	beqzl	t5,63f4 <func_8093285C+0x168>
    6390:	8fbf0024 	lw	ra,36(sp)
    6394:	8e02011c 	lw	v0,284(s0)
    6398:	312efffc 	andi	t6,t1,0xfffc
    639c:	a20e03e4 	sb	t6,996(s0)
    63a0:	904f03e4 	lbu	t7,996(v0)
    63a4:	3c030000 	lui	v1,0x0
    63a8:	3c0140a0 	lui	at,0x40a0
    63ac:	31f8fffc 	andi	t8,t7,0xfffc
    63b0:	a05803e4 	sb	t8,996(v0)
    63b4:	8c630000 	lw	v1,0(v1)
    63b8:	44812000 	mtc1	at,$f4
    63bc:	02002825 	move	a1,s0
    63c0:	906a03e4 	lbu	t2,996(v1)
    63c4:	3c064120 	lui	a2,0x4120
    63c8:	3159fffc 	andi	t9,t2,0xfffc
    63cc:	a07903e4 	sb	t9,996(v1)
    63d0:	860700b6 	lh	a3,182(s0)
    63d4:	8fa4002c 	lw	a0,44(sp)
    63d8:	0c000000 	jal	0 <BossSst_Init>
    63dc:	e7a40010 	swc1	$f4,16(sp)
    63e0:	8fab002c 	lw	t3,44(sp)
    63e4:	2405083e 	li	a1,2110
    63e8:	0c000000 	jal	0 <BossSst_Init>
    63ec:	8d641c44 	lw	a0,7236(t3)
    63f0:	8fbf0024 	lw	ra,36(sp)
    63f4:	8fb00020 	lw	s0,32(sp)
    63f8:	27bd0028 	addiu	sp,sp,40
    63fc:	03e00008 	jr	ra
    6400:	00000000 	nop

00006404 <func_809329D4>:
    6404:	27bdffd8 	addiu	sp,sp,-40
    6408:	afb00020 	sw	s0,32(sp)
    640c:	00808025 	move	s0,a0
    6410:	afbf0024 	sw	ra,36(sp)
    6414:	860e001c 	lh	t6,28(s0)
    6418:	3c050000 	lui	a1,0x0
    641c:	2484014c 	addiu	a0,a0,332
    6420:	000e7880 	sll	t7,t6,0x2
    6424:	00af2821 	addu	a1,a1,t7
    6428:	8ca50000 	lw	a1,0(a1)
    642c:	0c000000 	jal	0 <BossSst_Init>
    6430:	3c064120 	lui	a2,0x4120
    6434:	8e190190 	lw	t9,400(s0)
    6438:	3c180000 	lui	t8,0x0
    643c:	27180000 	addiu	t8,t8,0
    6440:	13190002 	beq	t8,t9,644c <func_809329D4+0x48>
    6444:	02002025 	move	a0,s0
    6448:	a2000195 	sb	zero,405(s0)
    644c:	920803e4 	lbu	t0,996(s0)
    6450:	920a03e5 	lbu	t2,997(s0)
    6454:	24050001 	li	a1,1
    6458:	3109fffc 	andi	t1,t0,0xfffc
    645c:	354b0001 	ori	t3,t2,0x1
    6460:	a20903e4 	sb	t1,996(s0)
    6464:	0c000000 	jal	0 <BossSst_Init>
    6468:	a20b03e5 	sb	t3,997(s0)
    646c:	3c040601 	lui	a0,0x601
    6470:	0c000000 	jal	0 <BossSst_Init>
    6474:	2484b6fc 	addiu	a0,a0,-18692
    6478:	02002025 	move	a0,s0
    647c:	00002825 	move	a1,zero
    6480:	240600ff 	li	a2,255
    6484:	00003825 	move	a3,zero
    6488:	0c000000 	jal	0 <BossSst_Init>
    648c:	afa20010 	sw	v0,16(sp)
    6490:	3c0c0000 	lui	t4,0x0
    6494:	258c0000 	addiu	t4,t4,0
    6498:	ae0c0190 	sw	t4,400(s0)
    649c:	8fbf0024 	lw	ra,36(sp)
    64a0:	8fb00020 	lw	s0,32(sp)
    64a4:	27bd0028 	addiu	sp,sp,40
    64a8:	03e00008 	jr	ra
    64ac:	00000000 	nop

000064b0 <func_80932A80>:
    64b0:	27bdffd8 	addiu	sp,sp,-40
    64b4:	afb00018 	sw	s0,24(sp)
    64b8:	00808025 	move	s0,a0
    64bc:	afbf001c 	sw	ra,28(sp)
    64c0:	2484014c 	addiu	a0,a0,332
    64c4:	afa5002c 	sw	a1,44(sp)
    64c8:	0c000000 	jal	0 <BossSst_Init>
    64cc:	afa40020 	sw	a0,32(sp)
    64d0:	3c0e0000 	lui	t6,0x0
    64d4:	8dce0000 	lw	t6,0(t6)
    64d8:	0c000000 	jal	0 <BossSst_Init>
    64dc:	85c400b6 	lh	a0,182(t6)
    64e0:	3c014348 	lui	at,0x4348
    64e4:	44812000 	mtc1	at,$f4
    64e8:	c6080010 	lwc1	$f8,16(s0)
    64ec:	2604002c 	addiu	a0,s0,44
    64f0:	46040182 	mul.s	$f6,$f0,$f4
    64f4:	3c063f00 	lui	a2,0x3f00
    64f8:	3c0741c8 	lui	a3,0x41c8
    64fc:	46083280 	add.s	$f10,$f6,$f8
    6500:	44055000 	mfc1	a1,$f10
    6504:	0c000000 	jal	0 <BossSst_Init>
    6508:	00000000 	nop
    650c:	3c0f0000 	lui	t7,0x0
    6510:	8def0000 	lw	t7,0(t7)
    6514:	0c000000 	jal	0 <BossSst_Init>
    6518:	85e400b6 	lh	a0,182(t7)
    651c:	3c014348 	lui	at,0x4348
    6520:	44818000 	mtc1	at,$f16
    6524:	c6040008 	lwc1	$f4,8(s0)
    6528:	26040024 	addiu	a0,s0,36
    652c:	46100482 	mul.s	$f18,$f0,$f16
    6530:	3c063f00 	lui	a2,0x3f00
    6534:	3c0741c8 	lui	a3,0x41c8
    6538:	46049180 	add.s	$f6,$f18,$f4
    653c:	44053000 	mfc1	a1,$f6
    6540:	0c000000 	jal	0 <BossSst_Init>
    6544:	00000000 	nop
    6548:	82180195 	lb	t8,405(s0)
    654c:	00002825 	move	a1,zero
    6550:	26040028 	addiu	a0,s0,40
    6554:	17000026 	bnez	t8,65f0 <func_80932A80+0x140>
    6558:	3c0641f0 	lui	a2,0x41f0
    655c:	260401a0 	addiu	a0,s0,416
    6560:	0c000000 	jal	0 <BossSst_Init>
    6564:	24060800 	li	a2,2048
    6568:	2604019e 	addiu	a0,s0,414
    656c:	2405f254 	li	a1,-3500
    6570:	0c000000 	jal	0 <BossSst_Init>
    6574:	240601f4 	li	a2,500
    6578:	260400b4 	addiu	a0,s0,180
    657c:	86050014 	lh	a1,20(s0)
    6580:	0c000000 	jal	0 <BossSst_Init>
    6584:	24060800 	li	a2,2048
    6588:	260400b8 	addiu	a0,s0,184
    658c:	86050018 	lh	a1,24(s0)
    6590:	0c000000 	jal	0 <BossSst_Init>
    6594:	24060800 	li	a2,2048
    6598:	260400b6 	addiu	a0,s0,182
    659c:	86050016 	lh	a1,22(s0)
    65a0:	0c000000 	jal	0 <BossSst_Init>
    65a4:	24060800 	li	a2,2048
    65a8:	3c080000 	lui	t0,0x0
    65ac:	8d080000 	lw	t0,0(t0)
    65b0:	3c190000 	lui	t9,0x0
    65b4:	27390000 	addiu	t9,t9,0
    65b8:	8d090190 	lw	t1,400(t0)
    65bc:	240a0001 	li	t2,1
    65c0:	3c050000 	lui	a1,0x0
    65c4:	1729000c 	bne	t9,t1,65f8 <func_80932A80+0x148>
    65c8:	3c064120 	lui	a2,0x4120
    65cc:	860b001c 	lh	t3,28(s0)
    65d0:	a20a0195 	sb	t2,405(s0)
    65d4:	8fa40020 	lw	a0,32(sp)
    65d8:	000b6080 	sll	t4,t3,0x2
    65dc:	00ac2821 	addu	a1,a1,t4
    65e0:	0c000000 	jal	0 <BossSst_Init>
    65e4:	8ca50000 	lw	a1,0(a1)
    65e8:	10000004 	b	65fc <func_80932A80+0x14c>
    65ec:	8fbf001c 	lw	ra,28(sp)
    65f0:	0c000000 	jal	0 <BossSst_Init>
    65f4:	8e050080 	lw	a1,128(s0)
    65f8:	8fbf001c 	lw	ra,28(sp)
    65fc:	8fb00018 	lw	s0,24(sp)
    6600:	27bd0028 	addiu	sp,sp,40
    6604:	03e00008 	jr	ra
    6608:	00000000 	nop

0000660c <func_80932BDC>:
    660c:	27bdffe8 	addiu	sp,sp,-24
    6610:	afbf0014 	sw	ra,20(sp)
    6614:	00803825 	move	a3,a0
    6618:	a48000b4 	sh	zero,180(a0)
    661c:	84ee001c 	lh	t6,28(a3)
    6620:	3c050000 	lui	a1,0x0
    6624:	afa70018 	sw	a3,24(sp)
    6628:	000e7880 	sll	t7,t6,0x2
    662c:	00af2821 	addu	a1,a1,t7
    6630:	8ca50000 	lw	a1,0(a1)
    6634:	2484014c 	addiu	a0,a0,332
    6638:	0c000000 	jal	0 <BossSst_Init>
    663c:	3c064040 	lui	a2,0x4040
    6640:	8fa70018 	lw	a3,24(sp)
    6644:	3c190000 	lui	t9,0x0
    6648:	24180006 	li	t8,6
    664c:	27390000 	addiu	t9,t9,0
    6650:	a4f80198 	sh	t8,408(a3)
    6654:	acf90190 	sw	t9,400(a3)
    6658:	8fbf0014 	lw	ra,20(sp)
    665c:	27bd0018 	addiu	sp,sp,24
    6660:	03e00008 	jr	ra
    6664:	00000000 	nop

00006668 <func_80932C38>:
    6668:	27bdffe0 	addiu	sp,sp,-32
    666c:	afbf001c 	sw	ra,28(sp)
    6670:	afb00018 	sw	s0,24(sp)
    6674:	afa50024 	sw	a1,36(sp)
    6678:	84820198 	lh	v0,408(a0)
    667c:	00808025 	move	s0,a0
    6680:	10400002 	beqz	v0,668c <func_80932C38+0x24>
    6684:	244effff 	addiu	t6,v0,-1
    6688:	a48e0198 	sh	t6,408(a0)
    668c:	0c000000 	jal	0 <BossSst_Init>
    6690:	2604014c 	addiu	a0,s0,332
    6694:	860f0198 	lh	t7,408(s0)
    6698:	26040028 	addiu	a0,s0,40
    669c:	29e10002 	slti	at,t7,2
    66a0:	1420000e 	bnez	at,66dc <func_80932C38+0x74>
    66a4:	3c014348 	lui	at,0x4348
    66a8:	44813000 	mtc1	at,$f6
    66ac:	c6040080 	lwc1	$f4,128(s0)
    66b0:	861800b4 	lh	t8,180(s0)
    66b4:	26040028 	addiu	a0,s0,40
    66b8:	46062200 	add.s	$f8,$f4,$f6
    66bc:	2719fe00 	addiu	t9,t8,-512
    66c0:	a61900b4 	sh	t9,180(s0)
    66c4:	3c064248 	lui	a2,0x4248
    66c8:	44054000 	mfc1	a1,$f8
    66cc:	0c000000 	jal	0 <BossSst_Init>
    66d0:	00000000 	nop
    66d4:	10000008 	b	66f8 <func_80932C38+0x90>
    66d8:	860a0198 	lh	t2,408(s0)
    66dc:	860800b4 	lh	t0,180(s0)
    66e0:	8e050080 	lw	a1,128(s0)
    66e4:	3c0642c8 	lui	a2,0x42c8
    66e8:	25090400 	addiu	t1,t0,1024
    66ec:	0c000000 	jal	0 <BossSst_Init>
    66f0:	a60900b4 	sh	t1,180(s0)
    66f4:	860a0198 	lh	t2,408(s0)
    66f8:	5540000d 	bnezl	t2,6730 <func_80932C38+0xc8>
    66fc:	8fbf001c 	lw	ra,28(sp)
    6700:	c60a0080 	lwc1	$f10,128(s0)
    6704:	44808000 	mtc1	zero,$f16
    6708:	02002025 	move	a0,s0
    670c:	460a803e 	c.le.s	$f16,$f10
    6710:	00000000 	nop
    6714:	45000003 	bc1f	6724 <func_80932C38+0xbc>
    6718:	00000000 	nop
    671c:	0c000000 	jal	0 <BossSst_Init>
    6720:	24053951 	li	a1,14673
    6724:	0c000000 	jal	0 <BossSst_Init>
    6728:	02002025 	move	a0,s0
    672c:	8fbf001c 	lw	ra,28(sp)
    6730:	8fb00018 	lw	s0,24(sp)
    6734:	27bd0020 	addiu	sp,sp,32
    6738:	03e00008 	jr	ra
    673c:	00000000 	nop

00006740 <func_80932D10>:
    6740:	27bdffe8 	addiu	sp,sp,-24
    6744:	afbf0014 	sw	ra,20(sp)
    6748:	848f001c 	lh	t7,28(a0)
    674c:	3c010000 	lui	at,0x0
    6750:	240e000b 	li	t6,11
    6754:	000fc080 	sll	t8,t7,0x2
    6758:	00380821 	addu	at,at,t8
    675c:	00803825 	move	a3,a0
    6760:	ac2e0000 	sw	t6,0(at)
    6764:	84f9001c 	lh	t9,28(a3)
    6768:	3c050000 	lui	a1,0x0
    676c:	afa70018 	sw	a3,24(sp)
    6770:	00194080 	sll	t0,t9,0x2
    6774:	00a82821 	addu	a1,a1,t0
    6778:	8ca50000 	lw	a1,0(a1)
    677c:	2484014c 	addiu	a0,a0,332
    6780:	0c000000 	jal	0 <BossSst_Init>
    6784:	3c064000 	lui	a2,0x4000
    6788:	8fa70018 	lw	a3,24(sp)
    678c:	240900a0 	li	t1,160
    6790:	240d0180 	li	t5,384
    6794:	84ea001c 	lh	t2,28(a3)
    6798:	3c0f0000 	lui	t7,0x0
    679c:	a4e000b4 	sh	zero,180(a3)
    67a0:	15400004 	bnez	t2,67b4 <func_80932D10+0x74>
    67a4:	a4e90198 	sh	t1,408(a3)
    67a8:	240bf800 	li	t3,-2048
    67ac:	10000004 	b	67c0 <func_80932D10+0x80>
    67b0:	a4eb01a2 	sh	t3,418(a3)
    67b4:	240cf800 	li	t4,-2048
    67b8:	a4e001a2 	sh	zero,418(a3)
    67bc:	a4ec00b4 	sh	t4,180(a3)
    67c0:	25ef0000 	addiu	t7,t7,0
    67c4:	a4ed019a 	sh	t5,410(a3)
    67c8:	acef0190 	sw	t7,400(a3)
    67cc:	8fbf0014 	lw	ra,20(sp)
    67d0:	27bd0018 	addiu	sp,sp,24
    67d4:	03e00008 	jr	ra
    67d8:	00000000 	nop

000067dc <func_80932DAC>:
    67dc:	27bdffd8 	addiu	sp,sp,-40
    67e0:	afbf001c 	sw	ra,28(sp)
    67e4:	afb00018 	sw	s0,24(sp)
    67e8:	afa5002c 	sw	a1,44(sp)
    67ec:	84820198 	lh	v0,408(a0)
    67f0:	00808025 	move	s0,a0
    67f4:	10400002 	beqz	v0,6800 <func_80932DAC+0x24>
    67f8:	244effff 	addiu	t6,v0,-1
    67fc:	a48e0198 	sh	t6,408(a0)
    6800:	2604014c 	addiu	a0,s0,332
    6804:	0c000000 	jal	0 <BossSst_Init>
    6808:	afa40020 	sw	a0,32(sp)
    680c:	3c0f0000 	lui	t7,0x0
    6810:	8def0000 	lw	t7,0(t7)
    6814:	0c000000 	jal	0 <BossSst_Init>
    6818:	85e400b6 	lh	a0,182(t7)
    681c:	3c014348 	lui	at,0x4348
    6820:	44812000 	mtc1	at,$f4
    6824:	c6080010 	lwc1	$f8,16(s0)
    6828:	2604002c 	addiu	a0,s0,44
    682c:	46040182 	mul.s	$f6,$f0,$f4
    6830:	3c063f00 	lui	a2,0x3f00
    6834:	3c0741c8 	lui	a3,0x41c8
    6838:	46083280 	add.s	$f10,$f6,$f8
    683c:	44055000 	mfc1	a1,$f10
    6840:	0c000000 	jal	0 <BossSst_Init>
    6844:	00000000 	nop
    6848:	3c180000 	lui	t8,0x0
    684c:	8f180000 	lw	t8,0(t8)
    6850:	0c000000 	jal	0 <BossSst_Init>
    6854:	870400b6 	lh	a0,182(t8)
    6858:	3c014348 	lui	at,0x4348
    685c:	44818000 	mtc1	at,$f16
    6860:	c6040008 	lwc1	$f4,8(s0)
    6864:	26040024 	addiu	a0,s0,36
    6868:	46100482 	mul.s	$f18,$f0,$f16
    686c:	3c063f00 	lui	a2,0x3f00
    6870:	3c0741c8 	lui	a3,0x41c8
    6874:	46049180 	add.s	$f6,$f18,$f4
    6878:	44053000 	mfc1	a1,$f6
    687c:	0c000000 	jal	0 <BossSst_Init>
    6880:	00000000 	nop
    6884:	260400b4 	addiu	a0,s0,180
    6888:	860501a2 	lh	a1,418(s0)
    688c:	0c000000 	jal	0 <BossSst_Init>
    6890:	8606019a 	lh	a2,410(s0)
    6894:	50400031 	beqzl	v0,695c <func_80932DAC+0x180>
    6898:	8619019a 	lh	t9,410(s0)
    689c:	861901a2 	lh	t9,418(s0)
    68a0:	3c050000 	lui	a1,0x0
    68a4:	3c0640a0 	lui	a2,0x40a0
    68a8:	1320000a 	beqz	t9,68d4 <func_80932DAC+0xf8>
    68ac:	02002025 	move	a0,s0
    68b0:	8608001c 	lh	t0,28(s0)
    68b4:	a60001a2 	sh	zero,418(s0)
    68b8:	8fa40020 	lw	a0,32(sp)
    68bc:	00084880 	sll	t1,t0,0x2
    68c0:	00a92821 	addu	a1,a1,t1
    68c4:	0c000000 	jal	0 <BossSst_Init>
    68c8:	8ca50000 	lw	a1,0(a1)
    68cc:	1000000e 	b	6908 <func_80932DAC+0x12c>
    68d0:	860d0198 	lh	t5,408(s0)
    68d4:	0c000000 	jal	0 <BossSst_Init>
    68d8:	24053951 	li	a1,14673
    68dc:	860b001c 	lh	t3,28(s0)
    68e0:	240af800 	li	t2,-2048
    68e4:	3c050000 	lui	a1,0x0
    68e8:	000b6080 	sll	t4,t3,0x2
    68ec:	a60a01a2 	sh	t2,418(s0)
    68f0:	00ac2821 	addu	a1,a1,t4
    68f4:	8ca50000 	lw	a1,0(a1)
    68f8:	8fa40020 	lw	a0,32(sp)
    68fc:	0c000000 	jal	0 <BossSst_Init>
    6900:	3c0640a0 	lui	a2,0x40a0
    6904:	860d0198 	lh	t5,408(s0)
    6908:	3c0142a0 	lui	at,0x42a0
    690c:	44818000 	mtc1	at,$f16
    6910:	448d4000 	mtc1	t5,$f8
    6914:	00000000 	nop
    6918:	468042a0 	cvt.s.w	$f10,$f8
    691c:	4610503c 	c.lt.s	$f10,$f16
    6920:	00000000 	nop
    6924:	4502000d 	bc1fl	695c <func_80932DAC+0x180>
    6928:	8619019a 	lh	t9,410(s0)
    692c:	860e019a 	lh	t6,410(s0)
    6930:	24180040 	li	t8,64
    6934:	25cfffc0 	addiu	t7,t6,-64
    6938:	a60f019a 	sh	t7,410(s0)
    693c:	8602019a 	lh	v0,410(s0)
    6940:	28410040 	slti	at,v0,64
    6944:	50200004 	beqzl	at,6958 <func_80932DAC+0x17c>
    6948:	a602019a 	sh	v0,410(s0)
    694c:	10000002 	b	6958 <func_80932DAC+0x17c>
    6950:	a618019a 	sh	t8,410(s0)
    6954:	a602019a 	sh	v0,410(s0)
    6958:	8619019a 	lh	t9,410(s0)
    695c:	3c013b80 	lui	at,0x3b80
    6960:	44813000 	mtc1	at,$f6
    6964:	44999000 	mtc1	t9,$f18
    6968:	3c013f00 	lui	at,0x3f00
    696c:	44815000 	mtc1	at,$f10
    6970:	46809120 	cvt.s.w	$f4,$f18
    6974:	3c014316 	lui	at,0x4316
    6978:	44819000 	mtc1	at,$f18
    697c:	860800b4 	lh	t0,180(s0)
    6980:	3c01ba00 	lui	at,0xba00
    6984:	86090198 	lh	t1,408(s0)
    6988:	46062202 	mul.s	$f8,$f4,$f6
    698c:	44813000 	mtc1	at,$f6
    6990:	460a4400 	add.s	$f16,$f8,$f10
    6994:	44885000 	mtc1	t0,$f10
    6998:	46128102 	mul.s	$f4,$f16,$f18
    699c:	46805420 	cvt.s.w	$f16,$f10
    69a0:	46062202 	mul.s	$f8,$f4,$f6
    69a4:	00000000 	nop
    69a8:	46104482 	mul.s	$f18,$f8,$f16
    69ac:	15200003 	bnez	t1,69bc <func_80932DAC+0x1e0>
    69b0:	e6120028 	swc1	$f18,40(s0)
    69b4:	0c000000 	jal	0 <BossSst_Init>
    69b8:	02002025 	move	a0,s0
    69bc:	8fbf001c 	lw	ra,28(sp)
    69c0:	8fb00018 	lw	s0,24(sp)
    69c4:	27bd0028 	addiu	sp,sp,40
    69c8:	03e00008 	jr	ra
    69cc:	00000000 	nop

000069d0 <func_80932FA0>:
    69d0:	27bdffe8 	addiu	sp,sp,-24
    69d4:	afbf0014 	sw	ra,20(sp)
    69d8:	00803825 	move	a3,a0
    69dc:	84ee001c 	lh	t6,28(a3)
    69e0:	3c050000 	lui	a1,0x0
    69e4:	afa70018 	sw	a3,24(sp)
    69e8:	000e7880 	sll	t7,t6,0x2
    69ec:	00af2821 	addu	a1,a1,t7
    69f0:	8ca50000 	lw	a1,0(a1)
    69f4:	2484014c 	addiu	a0,a0,332
    69f8:	0c000000 	jal	0 <BossSst_Init>
    69fc:	3c0640a0 	lui	a2,0x40a0
    6a00:	8fa70018 	lw	a3,24(sp)
    6a04:	3c180000 	lui	t8,0x0
    6a08:	27180000 	addiu	t8,t8,0
    6a0c:	acf80190 	sw	t8,400(a3)
    6a10:	8fbf0014 	lw	ra,20(sp)
    6a14:	27bd0018 	addiu	sp,sp,24
    6a18:	03e00008 	jr	ra
    6a1c:	00000000 	nop

00006a20 <func_80932FF0>:
    6a20:	27bdffe0 	addiu	sp,sp,-32
    6a24:	afb00018 	sw	s0,24(sp)
    6a28:	00808025 	move	s0,a0
    6a2c:	afbf001c 	sw	ra,28(sp)
    6a30:	afa50024 	sw	a1,36(sp)
    6a34:	0c000000 	jal	0 <BossSst_Init>
    6a38:	2484014c 	addiu	a0,a0,332
    6a3c:	260400b4 	addiu	a0,s0,180
    6a40:	2405f800 	li	a1,-2048
    6a44:	0c000000 	jal	0 <BossSst_Init>
    6a48:	8606019a 	lh	a2,410(s0)
    6a4c:	26040028 	addiu	a0,s0,40
    6a50:	3c0542b4 	lui	a1,0x42b4
    6a54:	0c000000 	jal	0 <BossSst_Init>
    6a58:	3c0640a0 	lui	a2,0x40a0
    6a5c:	3c0f0000 	lui	t7,0x0
    6a60:	8def0000 	lw	t7,0(t7)
    6a64:	3c0e0000 	lui	t6,0x0
    6a68:	25ce0000 	addiu	t6,t6,0
    6a6c:	8df80190 	lw	t8,400(t7)
    6a70:	55d80004 	bnel	t6,t8,6a84 <func_80932FF0+0x64>
    6a74:	8fbf001c 	lw	ra,28(sp)
    6a78:	0c000000 	jal	0 <BossSst_Init>
    6a7c:	02002025 	move	a0,s0
    6a80:	8fbf001c 	lw	ra,28(sp)
    6a84:	8fb00018 	lw	s0,24(sp)
    6a88:	27bd0020 	addiu	sp,sp,32
    6a8c:	03e00008 	jr	ra
    6a90:	00000000 	nop

00006a94 <func_80933064>:
    6a94:	27bdffe8 	addiu	sp,sp,-24
    6a98:	afbf0014 	sw	ra,20(sp)
    6a9c:	00803825 	move	a3,a0
    6aa0:	84ee001c 	lh	t6,28(a3)
    6aa4:	3c050000 	lui	a1,0x0
    6aa8:	afa70018 	sw	a3,24(sp)
    6aac:	000e7880 	sll	t7,t6,0x2
    6ab0:	00af2821 	addu	a1,a1,t7
    6ab4:	8ca50000 	lw	a1,0(a1)
    6ab8:	2484014c 	addiu	a0,a0,332
    6abc:	0c000000 	jal	0 <BossSst_Init>
    6ac0:	3c064040 	lui	a2,0x4040
    6ac4:	8fa70018 	lw	a3,24(sp)
    6ac8:	3c180000 	lui	t8,0x0
    6acc:	27180000 	addiu	t8,t8,0
    6ad0:	acf80190 	sw	t8,400(a3)
    6ad4:	8fbf0014 	lw	ra,20(sp)
    6ad8:	27bd0018 	addiu	sp,sp,24
    6adc:	03e00008 	jr	ra
    6ae0:	00000000 	nop

00006ae4 <func_809330B4>:
    6ae4:	27bdffe8 	addiu	sp,sp,-24
    6ae8:	afbf0014 	sw	ra,20(sp)
    6aec:	afa40018 	sw	a0,24(sp)
    6af0:	afa5001c 	sw	a1,28(sp)
    6af4:	0c000000 	jal	0 <BossSst_Init>
    6af8:	2484014c 	addiu	a0,a0,332
    6afc:	8fa40018 	lw	a0,24(sp)
    6b00:	00002825 	move	a1,zero
    6b04:	24060400 	li	a2,1024
    6b08:	0c000000 	jal	0 <BossSst_Init>
    6b0c:	248400b4 	addiu	a0,a0,180
    6b10:	3c020000 	lui	v0,0x0
    6b14:	24420000 	addiu	v0,v0,0
    6b18:	8c4e0000 	lw	t6,0(v0)
    6b1c:	3c014366 	lui	at,0x4366
    6b20:	44813000 	mtc1	at,$f6
    6b24:	c5c40028 	lwc1	$f4,40(t6)
    6b28:	8fa40018 	lw	a0,24(sp)
    6b2c:	3c0f0000 	lui	t7,0x0
    6b30:	46062200 	add.s	$f8,$f4,$f6
    6b34:	25ef0000 	addiu	t7,t7,0
    6b38:	e4880028 	swc1	$f8,40(a0)
    6b3c:	8c580000 	lw	t8,0(v0)
    6b40:	8f190190 	lw	t9,400(t8)
    6b44:	55f90004 	bnel	t7,t9,6b58 <func_809330B4+0x74>
    6b48:	8fbf0014 	lw	ra,20(sp)
    6b4c:	0c000000 	jal	0 <BossSst_Init>
    6b50:	00000000 	nop
    6b54:	8fbf0014 	lw	ra,20(sp)
    6b58:	27bd0018 	addiu	sp,sp,24
    6b5c:	03e00008 	jr	ra
    6b60:	00000000 	nop

00006b64 <func_80933134>:
    6b64:	27bdffe8 	addiu	sp,sp,-24
    6b68:	afbf0014 	sw	ra,20(sp)
    6b6c:	0c000000 	jal	0 <BossSst_Init>
    6b70:	afa40018 	sw	a0,24(sp)
    6b74:	8fa40018 	lw	a0,24(sp)
    6b78:	3c0f0000 	lui	t7,0x0
    6b7c:	240e0050 	li	t6,80
    6b80:	25ef0000 	addiu	t7,t7,0
    6b84:	ac8000c0 	sw	zero,192(a0)
    6b88:	a48e0198 	sh	t6,408(a0)
    6b8c:	ac8f0190 	sw	t7,400(a0)
    6b90:	8fbf0014 	lw	ra,20(sp)
    6b94:	27bd0018 	addiu	sp,sp,24
    6b98:	03e00008 	jr	ra
    6b9c:	00000000 	nop

00006ba0 <func_80933170>:
    6ba0:	27bdffe8 	addiu	sp,sp,-24
    6ba4:	afbf0014 	sw	ra,20(sp)
    6ba8:	afa5001c 	sw	a1,28(sp)
    6bac:	84820198 	lh	v0,408(a0)
    6bb0:	3c010000 	lui	at,0x0
    6bb4:	10400003 	beqz	v0,6bc4 <func_80933170+0x24>
    6bb8:	244effff 	addiu	t6,v0,-1
    6bbc:	a48e0198 	sh	t6,408(a0)
    6bc0:	84820198 	lh	v0,408(a0)
    6bc4:	c4200000 	lwc1	$f0,0(at)
    6bc8:	3c010000 	lui	at,0x0
    6bcc:	c4260000 	lwc1	$f6,0(at)
    6bd0:	c4840054 	lwc1	$f4,84(a0)
    6bd4:	c48a0050 	lwc1	$f10,80(a0)
    6bd8:	c4920058 	lwc1	$f18,88(a0)
    6bdc:	46062201 	sub.s	$f8,$f4,$f6
    6be0:	44803000 	mtc1	zero,$f6
    6be4:	46005400 	add.s	$f16,$f10,$f0
    6be8:	e4880054 	swc1	$f8,84(a0)
    6bec:	e4860028 	swc1	$f6,40(a0)
    6bf0:	46009100 	add.s	$f4,$f18,$f0
    6bf4:	e4900050 	swc1	$f16,80(a0)
    6bf8:	14400003 	bnez	v0,6c08 <func_80933170+0x68>
    6bfc:	e4840058 	swc1	$f4,88(a0)
    6c00:	0c000000 	jal	0 <BossSst_Init>
    6c04:	00000000 	nop
    6c08:	8fbf0014 	lw	ra,20(sp)
    6c0c:	27bd0018 	addiu	sp,sp,24
    6c10:	03e00008 	jr	ra
    6c14:	00000000 	nop

00006c18 <func_809331E8>:
    6c18:	3c0e0000 	lui	t6,0x0
    6c1c:	3c180000 	lui	t8,0x0
    6c20:	25ce0000 	addiu	t6,t6,0
    6c24:	240f0014 	li	t7,20
    6c28:	27180000 	addiu	t8,t8,0
    6c2c:	ac8e0134 	sw	t6,308(a0)
    6c30:	a48f0198 	sh	t7,408(a0)
    6c34:	a4800722 	sh	zero,1826(a0)
    6c38:	03e00008 	jr	ra
    6c3c:	ac980190 	sw	t8,400(a0)

00006c40 <func_80933210>:
    6c40:	afa50004 	sw	a1,4(sp)
    6c44:	84820198 	lh	v0,408(a0)
    6c48:	10400003 	beqz	v0,6c58 <func_80933210+0x18>
    6c4c:	244effff 	addiu	t6,v0,-1
    6c50:	a48e0198 	sh	t6,408(a0)
    6c54:	84820198 	lh	v0,408(a0)
    6c58:	14400002 	bnez	v0,6c64 <func_80933210+0x24>
    6c5c:	00000000 	nop
    6c60:	a0800196 	sb	zero,406(a0)
    6c64:	03e00008 	jr	ra
    6c68:	00000000 	nop

00006c6c <func_8093323C>:
    6c6c:	27bdffe8 	addiu	sp,sp,-24
    6c70:	afbf0014 	sw	ra,20(sp)
    6c74:	00803825 	move	a3,a0
    6c78:	84ee001c 	lh	t6,28(a3)
    6c7c:	3c050000 	lui	a1,0x0
    6c80:	afa70018 	sw	a3,24(sp)
    6c84:	000e7880 	sll	t7,t6,0x2
    6c88:	00af2821 	addu	a1,a1,t7
    6c8c:	8ca50000 	lw	a1,0(a1)
    6c90:	2484014c 	addiu	a0,a0,332
    6c94:	0c000000 	jal	0 <BossSst_Init>
    6c98:	3c064120 	lui	a2,0x4120
    6c9c:	8fa70018 	lw	a3,24(sp)
    6ca0:	3c180000 	lui	t8,0x0
    6ca4:	27180000 	addiu	t8,t8,0
    6ca8:	a0e00195 	sb	zero,405(a3)
    6cac:	acf80190 	sw	t8,400(a3)
    6cb0:	8fbf0014 	lw	ra,20(sp)
    6cb4:	27bd0018 	addiu	sp,sp,24
    6cb8:	03e00008 	jr	ra
    6cbc:	00000000 	nop

00006cc0 <func_80933290>:
    6cc0:	27bdffd0 	addiu	sp,sp,-48
    6cc4:	3c0140a0 	lui	at,0x40a0
    6cc8:	44812000 	mtc1	at,$f4
    6ccc:	afb00020 	sw	s0,32(sp)
    6cd0:	00808025 	move	s0,a0
    6cd4:	afbf0024 	sw	ra,36(sp)
    6cd8:	afa50034 	sw	a1,52(sp)
    6cdc:	3c05437a 	lui	a1,0x437a
    6ce0:	24840028 	addiu	a0,a0,40
    6ce4:	3c063f00 	lui	a2,0x3f00
    6ce8:	3c07428c 	lui	a3,0x428c
    6cec:	0c000000 	jal	0 <BossSst_Init>
    6cf0:	e7a40010 	swc1	$f4,16(sp)
    6cf4:	2604014c 	addiu	a0,s0,332
    6cf8:	0c000000 	jal	0 <BossSst_Init>
    6cfc:	afa4002c 	sw	a0,44(sp)
    6d00:	1040000d 	beqz	v0,6d38 <func_80933290+0x78>
    6d04:	8fa4002c 	lw	a0,44(sp)
    6d08:	820e0195 	lb	t6,405(s0)
    6d0c:	55c0000b 	bnezl	t6,6d3c <func_80933290+0x7c>
    6d10:	02002025 	move	a0,s0
    6d14:	860f001c 	lh	t7,28(s0)
    6d18:	3c050000 	lui	a1,0x0
    6d1c:	3c064120 	lui	a2,0x4120
    6d20:	000fc080 	sll	t8,t7,0x2
    6d24:	00b82821 	addu	a1,a1,t8
    6d28:	0c000000 	jal	0 <BossSst_Init>
    6d2c:	8ca50000 	lw	a1,0(a1)
    6d30:	24190001 	li	t9,1
    6d34:	a2190195 	sb	t9,405(s0)
    6d38:	02002025 	move	a0,s0
    6d3c:	0c000000 	jal	0 <BossSst_Init>
    6d40:	24053167 	li	a1,12647
    6d44:	8fbf0024 	lw	ra,36(sp)
    6d48:	8fb00020 	lw	s0,32(sp)
    6d4c:	27bd0030 	addiu	sp,sp,48
    6d50:	03e00008 	jr	ra
    6d54:	00000000 	nop

00006d58 <func_80933328>:
    6d58:	27bdffd8 	addiu	sp,sp,-40
    6d5c:	afbf0024 	sw	ra,36(sp)
    6d60:	afb00020 	sw	s0,32(sp)
    6d64:	848f001c 	lh	t7,28(a0)
    6d68:	3c010000 	lui	at,0x0
    6d6c:	00808025 	move	s0,a0
    6d70:	000fc080 	sll	t8,t7,0x2
    6d74:	00380821 	addu	at,at,t8
    6d78:	240e0009 	li	t6,9
    6d7c:	ac2e0000 	sw	t6,0(at)
    6d80:	26050024 	addiu	a1,s0,36
    6d84:	0c000000 	jal	0 <BossSst_Init>
    6d88:	248403c8 	addiu	a0,a0,968
    6d8c:	0c000000 	jal	0 <BossSst_Init>
    6d90:	8e04011c 	lw	a0,284(s0)
    6d94:	24190001 	li	t9,1
    6d98:	24080023 	li	t0,35
    6d9c:	a2000195 	sb	zero,405(s0)
    6da0:	a2190196 	sb	t9,406(s0)
    6da4:	a6080198 	sh	t0,408(s0)
    6da8:	a6000720 	sh	zero,1824(s0)
    6dac:	a6000748 	sh	zero,1864(s0)
    6db0:	24030002 	li	v1,2
    6db4:	26020050 	addiu	v0,s0,80
    6db8:	24040012 	li	a0,18
    6dbc:	24630004 	addiu	v1,v1,4
    6dc0:	a4400748 	sh	zero,1864(v0)
    6dc4:	a4400770 	sh	zero,1904(v0)
    6dc8:	a4400798 	sh	zero,1944(v0)
    6dcc:	244200a0 	addiu	v0,v0,160
    6dd0:	1464fffa 	bne	v1,a0,6dbc <func_80933328+0x64>
    6dd4:	a4400680 	sh	zero,1664(v0)
    6dd8:	02002025 	move	a0,s0
    6ddc:	0c000000 	jal	0 <BossSst_Init>
    6de0:	00002825 	move	a1,zero
    6de4:	2409000a 	li	t1,10
    6de8:	afa90010 	sw	t1,16(sp)
    6dec:	02002025 	move	a0,s0
    6df0:	00002825 	move	a1,zero
    6df4:	240600ff 	li	a2,255
    6df8:	0c000000 	jal	0 <BossSst_Init>
    6dfc:	00003825 	move	a3,zero
    6e00:	3c0a0000 	lui	t2,0x0
    6e04:	254a0000 	addiu	t2,t2,0
    6e08:	a600019a 	sh	zero,410(s0)
    6e0c:	ae0a0190 	sw	t2,400(s0)
    6e10:	8fbf0024 	lw	ra,36(sp)
    6e14:	8fb00020 	lw	s0,32(sp)
    6e18:	27bd0028 	addiu	sp,sp,40
    6e1c:	03e00008 	jr	ra
    6e20:	00000000 	nop

00006e24 <func_809333F4>:
    6e24:	27bdffd8 	addiu	sp,sp,-40
    6e28:	afbf001c 	sw	ra,28(sp)
    6e2c:	afb00018 	sw	s0,24(sp)
    6e30:	afa5002c 	sw	a1,44(sp)
    6e34:	84820198 	lh	v0,408(a0)
    6e38:	00808025 	move	s0,a0
    6e3c:	10400003 	beqz	v0,6e4c <func_809333F4+0x28>
    6e40:	244effff 	addiu	t6,v0,-1
    6e44:	a48e0198 	sh	t6,408(a0)
    6e48:	84820198 	lh	v0,408(a0)
    6e4c:	304f0001 	andi	t7,v0,0x1
    6e50:	11e00004 	beqz	t7,6e64 <func_809333F4+0x40>
    6e54:	02002025 	move	a0,s0
    6e58:	00022843 	sra	a1,v0,0x1
    6e5c:	0c000000 	jal	0 <BossSst_Init>
    6e60:	24a50001 	addiu	a1,a1,1
    6e64:	82180195 	lb	t8,405(s0)
    6e68:	5300000b 	beqzl	t8,6e98 <func_809333F4+0x74>
    6e6c:	860a019a 	lh	t2,410(s0)
    6e70:	0c000000 	jal	0 <BossSst_Init>
    6e74:	02002025 	move	a0,s0
    6e78:	0c000000 	jal	0 <BossSst_Init>
    6e7c:	02002025 	move	a0,s0
    6e80:	3c080000 	lui	t0,0x0
    6e84:	8d080000 	lw	t0,0(t0)
    6e88:	24190001 	li	t9,1
    6e8c:	10000038 	b	6f70 <func_809333F4+0x14c>
    6e90:	a1190195 	sb	t9,405(t0)
    6e94:	860a019a 	lh	t2,410(s0)
    6e98:	2409000a 	li	t1,10
    6e9c:	a2090114 	sb	t1,276(s0)
    6ea0:	51400034 	beqzl	t2,6f74 <func_809333F4+0x150>
    6ea4:	8fbf001c 	lw	ra,28(sp)
    6ea8:	8e0b011c 	lw	t3,284(s0)
    6eac:	0c000000 	jal	0 <BossSst_Init>
    6eb0:	856400b4 	lh	a0,180(t3)
    6eb4:	3c0140a0 	lui	at,0x40a0
    6eb8:	44812000 	mtc1	at,$f4
    6ebc:	8e0c011c 	lw	t4,284(s0)
    6ec0:	46040082 	mul.s	$f2,$f0,$f4
    6ec4:	858400b4 	lh	a0,180(t4)
    6ec8:	0c000000 	jal	0 <BossSst_Init>
    6ecc:	e7a20024 	swc1	$f2,36(sp)
    6ed0:	3c0140a0 	lui	at,0x40a0
    6ed4:	44813000 	mtc1	at,$f6
    6ed8:	860d019a 	lh	t5,410(s0)
    6edc:	c7a20024 	lwc1	$f2,36(sp)
    6ee0:	46060382 	mul.s	$f14,$f0,$f6
    6ee4:	31ae0001 	andi	t6,t5,0x1
    6ee8:	3c01bf80 	lui	at,0xbf80
    6eec:	11c00007 	beqz	t6,6f0c <func_809333F4+0xe8>
    6ef0:	46007306 	mov.s	$f12,$f14
    6ef4:	44810000 	mtc1	at,$f0
    6ef8:	00000000 	nop
    6efc:	46001082 	mul.s	$f2,$f2,$f0
    6f00:	00000000 	nop
    6f04:	46007302 	mul.s	$f12,$f14,$f0
    6f08:	00000000 	nop
    6f0c:	8e0f011c 	lw	t7,284(s0)
    6f10:	85e400b6 	lh	a0,182(t7)
    6f14:	e7ac0020 	swc1	$f12,32(sp)
    6f18:	0c000000 	jal	0 <BossSst_Init>
    6f1c:	e7a20024 	swc1	$f2,36(sp)
    6f20:	c7ac0020 	lwc1	$f12,32(sp)
    6f24:	c7a20024 	lwc1	$f2,36(sp)
    6f28:	c60a03c8 	lwc1	$f10,968(s0)
    6f2c:	460c0202 	mul.s	$f8,$f0,$f12
    6f30:	c61203cc 	lwc1	$f18,972(s0)
    6f34:	8e18011c 	lw	t8,284(s0)
    6f38:	46029100 	add.s	$f4,$f18,$f2
    6f3c:	460a4400 	add.s	$f16,$f8,$f10
    6f40:	e6040028 	swc1	$f4,40(s0)
    6f44:	e6100024 	swc1	$f16,36(s0)
    6f48:	0c000000 	jal	0 <BossSst_Init>
    6f4c:	870400b6 	lh	a0,182(t8)
    6f50:	c7ac0020 	lwc1	$f12,32(sp)
    6f54:	c60803d0 	lwc1	$f8,976(s0)
    6f58:	8619019a 	lh	t9,410(s0)
    6f5c:	460c0182 	mul.s	$f6,$f0,$f12
    6f60:	2728ffff 	addiu	t0,t9,-1
    6f64:	a608019a 	sh	t0,410(s0)
    6f68:	46083280 	add.s	$f10,$f6,$f8
    6f6c:	e60a002c 	swc1	$f10,44(s0)
    6f70:	8fbf001c 	lw	ra,28(sp)
    6f74:	8fb00018 	lw	s0,24(sp)
    6f78:	27bd0028 	addiu	sp,sp,40
    6f7c:	03e00008 	jr	ra
    6f80:	00000000 	nop

00006f84 <func_80933554>:
    6f84:	27bdffe0 	addiu	sp,sp,-32
    6f88:	afbf001c 	sw	ra,28(sp)
    6f8c:	afb00018 	sw	s0,24(sp)
    6f90:	848f001c 	lh	t7,28(a0)
    6f94:	3c010000 	lui	at,0x0
    6f98:	240e000a 	li	t6,10
    6f9c:	000fc080 	sll	t8,t7,0x2
    6fa0:	00380821 	addu	at,at,t8
    6fa4:	00808025 	move	s0,a0
    6fa8:	ac2e0000 	sw	t6,0(at)
    6fac:	8619001c 	lh	t9,28(s0)
    6fb0:	3c050000 	lui	a1,0x0
    6fb4:	2484014c 	addiu	a0,a0,332
    6fb8:	00194080 	sll	t0,t9,0x2
    6fbc:	00a82821 	addu	a1,a1,t0
    6fc0:	8ca50000 	lw	a1,0(a1)
    6fc4:	0c000000 	jal	0 <BossSst_Init>
    6fc8:	3c0640a0 	lui	a2,0x40a0
    6fcc:	92090196 	lbu	t1,406(s0)
    6fd0:	24010001 	li	at,1
    6fd4:	a2000195 	sb	zero,405(s0)
    6fd8:	15210002 	bne	t1,at,6fe4 <func_80933554+0x60>
    6fdc:	a2000114 	sb	zero,276(s0)
    6fe0:	a2000196 	sb	zero,406(s0)
    6fe4:	8e05011c 	lw	a1,284(s0)
    6fe8:	02002025 	move	a0,s0
    6fec:	0c000000 	jal	0 <BossSst_Init>
    6ff0:	24a503c8 	addiu	a1,a1,968
    6ff4:	8e05011c 	lw	a1,284(s0)
    6ff8:	e60003c4 	swc1	$f0,964(s0)
    6ffc:	02002025 	move	a0,s0
    7000:	0c000000 	jal	0 <BossSst_Init>
    7004:	24a503c8 	addiu	a1,a1,968
    7008:	a60201a4 	sh	v0,420(s0)
    700c:	02002025 	move	a0,s0
    7010:	0c000000 	jal	0 <BossSst_Init>
    7014:	24050001 	li	a1,1
    7018:	3c0a0000 	lui	t2,0x0
    701c:	254a0000 	addiu	t2,t2,0
    7020:	ae0a0190 	sw	t2,400(s0)
    7024:	8fbf001c 	lw	ra,28(sp)
    7028:	8fb00018 	lw	s0,24(sp)
    702c:	27bd0020 	addiu	sp,sp,32
    7030:	03e00008 	jr	ra
    7034:	00000000 	nop

00007038 <func_80933608>:
    7038:	27bdffe0 	addiu	sp,sp,-32
    703c:	afb00014 	sw	s0,20(sp)
    7040:	00808025 	move	s0,a0
    7044:	afbf001c 	sw	ra,28(sp)
    7048:	afb10018 	sw	s1,24(sp)
    704c:	afa50024 	sw	a1,36(sp)
    7050:	860501a4 	lh	a1,420(s0)
    7054:	248400b6 	addiu	a0,a0,182
    7058:	0c000000 	jal	0 <BossSst_Init>
    705c:	24060400 	li	a2,1024
    7060:	00408825 	move	s1,v0
    7064:	260400b4 	addiu	a0,s0,180
    7068:	24051000 	li	a1,4096
    706c:	0c000000 	jal	0 <BossSst_Init>
    7070:	24060400 	li	a2,1024
    7074:	02228824 	and	s1,s1,v0
    7078:	260400b8 	addiu	a0,s0,184
    707c:	00002825 	move	a1,zero
    7080:	0c000000 	jal	0 <BossSst_Init>
    7084:	24060800 	li	a2,2048
    7088:	02228824 	and	s1,s1,v0
    708c:	260401a0 	addiu	a0,s0,416
    7090:	00002825 	move	a1,zero
    7094:	0c000000 	jal	0 <BossSst_Init>
    7098:	24060400 	li	a2,1024
    709c:	8e0e011c 	lw	t6,284(s0)
    70a0:	3c014348 	lui	at,0x4348
    70a4:	44813000 	mtc1	at,$f6
    70a8:	c5c403cc 	lwc1	$f4,972(t6)
    70ac:	02228824 	and	s1,s1,v0
    70b0:	26040028 	addiu	a0,s0,40
    70b4:	46062200 	add.s	$f8,$f4,$f6
    70b8:	3c064248 	lui	a2,0x4248
    70bc:	44054000 	mfc1	a1,$f8
    70c0:	0c000000 	jal	0 <BossSst_Init>
    70c4:	00000000 	nop
    70c8:	02228824 	and	s1,s1,v0
    70cc:	260403c4 	addiu	a0,s0,964
    70d0:	3c0543c8 	lui	a1,0x43c8
    70d4:	0c000000 	jal	0 <BossSst_Init>
    70d8:	3c064270 	lui	a2,0x4270
    70dc:	02228824 	and	s1,s1,v0
    70e0:	0c000000 	jal	0 <BossSst_Init>
    70e4:	860401a4 	lh	a0,420(s0)
    70e8:	c61003c4 	lwc1	$f16,964(s0)
    70ec:	8e0f011c 	lw	t7,284(s0)
    70f0:	860401a4 	lh	a0,420(s0)
    70f4:	46100482 	mul.s	$f18,$f0,$f16
    70f8:	c5ea03c8 	lwc1	$f10,968(t7)
    70fc:	46125101 	sub.s	$f4,$f10,$f18
    7100:	0c000000 	jal	0 <BossSst_Init>
    7104:	e6040024 	swc1	$f4,36(s0)
    7108:	c60803c4 	lwc1	$f8,964(s0)
    710c:	8e18011c 	lw	t8,284(s0)
    7110:	2604014c 	addiu	a0,s0,332
    7114:	46080402 	mul.s	$f16,$f0,$f8
    7118:	c70603d0 	lwc1	$f6,976(t8)
    711c:	46103281 	sub.s	$f10,$f6,$f16
    7120:	0c000000 	jal	0 <BossSst_Init>
    7124:	e60a002c 	swc1	$f10,44(s0)
    7128:	50400006 	beqzl	v0,7144 <func_80933608+0x10c>
    712c:	8fbf001c 	lw	ra,28(sp)
    7130:	52200004 	beqzl	s1,7144 <func_80933608+0x10c>
    7134:	8fbf001c 	lw	ra,28(sp)
    7138:	0c000000 	jal	0 <BossSst_Init>
    713c:	02002025 	move	a0,s0
    7140:	8fbf001c 	lw	ra,28(sp)
    7144:	8fb00014 	lw	s0,20(sp)
    7148:	8fb10018 	lw	s1,24(sp)
    714c:	03e00008 	jr	ra
    7150:	27bd0020 	addiu	sp,sp,32

00007154 <func_80933724>:
    7154:	3c013f00 	lui	at,0x3f00
    7158:	44812000 	mtc1	at,$f4
    715c:	3c0f0000 	lui	t7,0x0
    7160:	240e0009 	li	t6,9
    7164:	25ef0000 	addiu	t7,t7,0
    7168:	a48e0198 	sh	t6,408(a0)
    716c:	ac8f0190 	sw	t7,400(a0)
    7170:	03e00008 	jr	ra
    7174:	e4840068 	swc1	$f4,104(a0)

00007178 <func_80933748>:
    7178:	27bdffe0 	addiu	sp,sp,-32
    717c:	afbf001c 	sw	ra,28(sp)
    7180:	afb00018 	sw	s0,24(sp)
    7184:	afa50024 	sw	a1,36(sp)
    7188:	848e0198 	lh	t6,408(a0)
    718c:	00808025 	move	s0,a0
    7190:	3c0542c8 	lui	a1,0x42c8
    7194:	31cf0001 	andi	t7,t6,0x1
    7198:	11e00025 	beqz	t7,7230 <func_80933748+0xb8>
    719c:	3c010000 	lui	at,0x0
    71a0:	3c014270 	lui	at,0x4270
    71a4:	44811000 	mtc1	at,$f2
    71a8:	3c013fc0 	lui	at,0x3fc0
    71ac:	44813000 	mtc1	at,$f6
    71b0:	c4840068 	lwc1	$f4,104(a0)
    71b4:	46062202 	mul.s	$f8,$f4,$f6
    71b8:	e4880068 	swc1	$f8,104(a0)
    71bc:	c4800068 	lwc1	$f0,104(a0)
    71c0:	4600103c 	c.lt.s	$f2,$f0
    71c4:	00000000 	nop
    71c8:	45020004 	bc1fl	71dc <func_80933748+0x64>
    71cc:	e6000068 	swc1	$f0,104(s0)
    71d0:	10000002 	b	71dc <func_80933748+0x64>
    71d4:	e4820068 	swc1	$f2,104(a0)
    71d8:	e6000068 	swc1	$f0,104(s0)
    71dc:	260403c4 	addiu	a0,s0,964
    71e0:	0c000000 	jal	0 <BossSst_Init>
    71e4:	8e060068 	lw	a2,104(s0)
    71e8:	10400024 	beqz	v0,727c <func_80933748+0x104>
    71ec:	00000000 	nop
    71f0:	0c000000 	jal	0 <BossSst_Init>
    71f4:	02002025 	move	a0,s0
    71f8:	86020198 	lh	v0,408(s0)
    71fc:	02002025 	move	a0,s0
    7200:	10400003 	beqz	v0,7210 <func_80933748+0x98>
    7204:	2458ffff 	addiu	t8,v0,-1
    7208:	a6180198 	sh	t8,408(s0)
    720c:	86020198 	lh	v0,408(s0)
    7210:	50400004 	beqzl	v0,7224 <func_80933748+0xac>
    7214:	8e08011c 	lw	t0,284(s0)
    7218:	0c000000 	jal	0 <BossSst_Init>
    721c:	240528cb 	li	a1,10443
    7220:	8e08011c 	lw	t0,284(s0)
    7224:	24190005 	li	t9,5
    7228:	10000014 	b	727c <func_80933748+0x104>
    722c:	a519019a 	sh	t9,410(t0)
    7230:	c60a0068 	lwc1	$f10,104(s0)
    7234:	c4300000 	lwc1	$f16,0(at)
    7238:	260403c4 	addiu	a0,s0,964
    723c:	3c0543fa 	lui	a1,0x43fa
    7240:	46105482 	mul.s	$f18,$f10,$f16
    7244:	e6120068 	swc1	$f18,104(s0)
    7248:	0c000000 	jal	0 <BossSst_Init>
    724c:	8e060068 	lw	a2,104(s0)
    7250:	3c014000 	lui	at,0x4000
    7254:	44813000 	mtc1	at,$f6
    7258:	c6040068 	lwc1	$f4,104(s0)
    725c:	4606203c 	c.lt.s	$f4,$f6
    7260:	00000000 	nop
    7264:	45000005 	bc1f	727c <func_80933748+0x104>
    7268:	00000000 	nop
    726c:	86020198 	lh	v0,408(s0)
    7270:	10400002 	beqz	v0,727c <func_80933748+0x104>
    7274:	2449ffff 	addiu	t1,v0,-1
    7278:	a6090198 	sh	t1,408(s0)
    727c:	0c000000 	jal	0 <BossSst_Init>
    7280:	860401a4 	lh	a0,420(s0)
    7284:	c60a03c4 	lwc1	$f10,964(s0)
    7288:	8e0a011c 	lw	t2,284(s0)
    728c:	860401a4 	lh	a0,420(s0)
    7290:	460a0402 	mul.s	$f16,$f0,$f10
    7294:	c54803c8 	lwc1	$f8,968(t2)
    7298:	46104481 	sub.s	$f18,$f8,$f16
    729c:	0c000000 	jal	0 <BossSst_Init>
    72a0:	e6120024 	swc1	$f18,36(s0)
    72a4:	c60203c4 	lwc1	$f2,964(s0)
    72a8:	8e02011c 	lw	v0,284(s0)
    72ac:	3c010000 	lui	at,0x0
    72b0:	46020182 	mul.s	$f6,$f0,$f2
    72b4:	c44403d0 	lwc1	$f4,976(v0)
    72b8:	860b0198 	lh	t3,408(s0)
    72bc:	240c0001 	li	t4,1
    72c0:	02002025 	move	a0,s0
    72c4:	46062281 	sub.s	$f10,$f4,$f6
    72c8:	e60a002c 	swc1	$f10,44(s0)
    72cc:	c4300000 	lwc1	$f16,0(at)
    72d0:	c44803cc 	lwc1	$f8,972(v0)
    72d4:	46101482 	mul.s	$f18,$f2,$f16
    72d8:	46124100 	add.s	$f4,$f8,$f18
    72dc:	15600003 	bnez	t3,72ec <func_80933748+0x174>
    72e0:	e6040028 	swc1	$f4,40(s0)
    72e4:	0c000000 	jal	0 <BossSst_Init>
    72e8:	a04c0195 	sb	t4,405(v0)
    72ec:	02002025 	move	a0,s0
    72f0:	0c000000 	jal	0 <BossSst_Init>
    72f4:	24053167 	li	a1,12647
    72f8:	8fbf001c 	lw	ra,28(sp)
    72fc:	8fb00018 	lw	s0,24(sp)
    7300:	27bd0020 	addiu	sp,sp,32
    7304:	03e00008 	jr	ra
    7308:	00000000 	nop

0000730c <func_809338DC>:
    730c:	27bdffe0 	addiu	sp,sp,-32
    7310:	00803825 	move	a3,a0
    7314:	00a02025 	move	a0,a1
    7318:	afbf0014 	sw	ra,20(sp)
    731c:	8ca51c44 	lw	a1,7236(a1)
    7320:	3c190001 	lui	t9,0x1
    7324:	0324c821 	addu	t9,t9,a0
    7328:	afa70020 	sw	a3,32(sp)
    732c:	afa5001c 	sw	a1,28(sp)
    7330:	8f391d4c 	lw	t9,7500(t9)
    7334:	0320f809 	jalr	t9
    7338:	00000000 	nop
    733c:	8fa5001c 	lw	a1,28(sp)
    7340:	10400015 	beqz	v0,7398 <func_809338DC+0x8c>
    7344:	8fa70020 	lw	a3,32(sp)
    7348:	90ae00af 	lbu	t6,175(a1)
    734c:	aca70118 	sw	a3,280(a1)
    7350:	59c00012 	blezl	t6,739c <func_809338DC+0x90>
    7354:	8fbf0014 	lw	ra,20(sp)
    7358:	90ef03e6 	lbu	t7,998(a3)
    735c:	84e8001c 	lh	t0,28(a3)
    7360:	3c0a0000 	lui	t2,0x0
    7364:	31f8fffe 	andi	t8,t7,0xfffe
    7368:	00084880 	sll	t1,t0,0x2
    736c:	a0f803e6 	sb	t8,998(a3)
    7370:	01495021 	addu	t2,t2,t1
    7374:	8d4a0000 	lw	t2,0(t2)
    7378:	24010006 	li	at,6
    737c:	2403fffe 	li	v1,-2
    7380:	55410006 	bnel	t2,at,739c <func_809338DC+0x90>
    7384:	8fbf0014 	lw	ra,20(sp)
    7388:	8ce2011c 	lw	v0,284(a3)
    738c:	904b03e6 	lbu	t3,998(v0)
    7390:	01636024 	and	t4,t3,v1
    7394:	a04c03e6 	sb	t4,998(v0)
    7398:	8fbf0014 	lw	ra,20(sp)
    739c:	27bd0020 	addiu	sp,sp,32
    73a0:	03e00008 	jr	ra
    73a4:	00000000 	nop

000073a8 <func_80933978>:
    73a8:	27bdffd8 	addiu	sp,sp,-40
    73ac:	afbf0024 	sw	ra,36(sp)
    73b0:	afb00020 	sw	s0,32(sp)
    73b4:	afa5002c 	sw	a1,44(sp)
    73b8:	8ca31c44 	lw	v1,7236(a1)
    73bc:	00808025 	move	s0,a0
    73c0:	24180064 	li	t8,100
    73c4:	8c6f0118 	lw	t7,280(v1)
    73c8:	548f0013 	bnel	a0,t7,7418 <func_80933978+0x70>
    73cc:	8fbf0024 	lw	ra,36(sp)
    73d0:	ac600118 	sw	zero,280(v1)
    73d4:	a4780850 	sh	t8,2128(v1)
    73d8:	909903e6 	lbu	t9,998(a0)
    73dc:	8c82011c 	lw	v0,284(a0)
    73e0:	02002825 	move	a1,s0
    73e4:	37280001 	ori	t0,t9,0x1
    73e8:	a08803e6 	sb	t0,998(a0)
    73ec:	904903e6 	lbu	t1,998(v0)
    73f0:	352a0001 	ori	t2,t1,0x1
    73f4:	10c00007 	beqz	a2,7414 <func_80933978+0x6c>
    73f8:	a04a03e6 	sb	t2,998(v0)
    73fc:	44800000 	mtc1	zero,$f0
    7400:	860700b6 	lh	a3,182(s0)
    7404:	8fa4002c 	lw	a0,44(sp)
    7408:	44060000 	mfc1	a2,$f0
    740c:	0c000000 	jal	0 <BossSst_Init>
    7410:	e7a00010 	swc1	$f0,16(sp)
    7414:	8fbf0024 	lw	ra,36(sp)
    7418:	8fb00020 	lw	s0,32(sp)
    741c:	27bd0028 	addiu	sp,sp,40
    7420:	03e00008 	jr	ra
    7424:	00000000 	nop

00007428 <func_809339F8>:
    7428:	27bdffd8 	addiu	sp,sp,-40
    742c:	afbf0014 	sw	ra,20(sp)
    7430:	00802825 	move	a1,a0
    7434:	848400b6 	lh	a0,182(a0)
    7438:	0c000000 	jal	0 <BossSst_Init>
    743c:	afa50028 	sw	a1,40(sp)
    7440:	8fa50028 	lw	a1,40(sp)
    7444:	84a400b6 	lh	a0,182(a1)
    7448:	0c000000 	jal	0 <BossSst_Init>
    744c:	e7a0001c 	swc1	$f0,28(sp)
    7450:	8fa50028 	lw	a1,40(sp)
    7454:	3c0e0000 	lui	t6,0x0
    7458:	25ce0000 	addiu	t6,t6,0
    745c:	8caf0190 	lw	t7,400(a1)
    7460:	3c060000 	lui	a2,0x0
    7464:	c7ac001c 	lwc1	$f12,28(sp)
    7468:	11cf000c 	beq	t6,t7,749c <func_809339F8+0x74>
    746c:	24c60000 	addiu	a2,a2,0
    7470:	c4a203c4 	lwc1	$f2,964(a1)
    7474:	3c020000 	lui	v0,0x0
    7478:	24420000 	addiu	v0,v0,0
    747c:	460c1102 	mul.s	$f4,$f2,$f12
    7480:	c4460000 	lwc1	$f6,0(v0)
    7484:	46001282 	mul.s	$f10,$f2,$f0
    7488:	46062200 	add.s	$f8,$f4,$f6
    748c:	e4a80024 	swc1	$f8,36(a1)
    7490:	c4440008 	lwc1	$f4,8(v0)
    7494:	46045180 	add.s	$f6,$f10,$f4
    7498:	e4a6002c 	swc1	$f6,44(a1)
    749c:	3c0143c8 	lui	at,0x43c8
    74a0:	44814000 	mtc1	at,$f8
    74a4:	44815000 	mtc1	at,$f10
    74a8:	3c01c348 	lui	at,0xc348
    74ac:	460c4382 	mul.s	$f14,$f8,$f12
    74b0:	3c030000 	lui	v1,0x0
    74b4:	3c040000 	lui	a0,0x0
    74b8:	3c070000 	lui	a3,0x0
    74bc:	44819000 	mtc1	at,$f18
    74c0:	46005402 	mul.s	$f16,$f10,$f0
    74c4:	24e70000 	addiu	a3,a3,0
    74c8:	24840000 	addiu	a0,a0,0
    74cc:	24630000 	addiu	v1,v1,0
    74d0:	c4660008 	lwc1	$f6,8(v1)
    74d4:	c4a40024 	lwc1	$f4,36(a1)
    74d8:	8cc20000 	lw	v0,0(a2)
    74dc:	460c3202 	mul.s	$f8,$f6,$f12
    74e0:	c4660000 	lwc1	$f6,0(v1)
    74e4:	80580194 	lb	t8,404(v0)
    74e8:	24c60004 	addiu	a2,a2,4
    74ec:	24840002 	addiu	a0,a0,2
    74f0:	46082280 	add.s	$f10,$f4,$f8
    74f4:	46003102 	mul.s	$f4,$f6,$f0
    74f8:	46045200 	add.s	$f8,$f10,$f4
    74fc:	e4480024 	swc1	$f8,36(v0)
    7500:	c4a60028 	lwc1	$f6,40(a1)
    7504:	c46a0004 	lwc1	$f10,4(v1)
    7508:	460a3100 	add.s	$f4,$f6,$f10
    750c:	e4440028 	swc1	$f4,40(v0)
    7510:	c4660008 	lwc1	$f6,8(v1)
    7514:	c4a8002c 	lwc1	$f8,44(a1)
    7518:	46003282 	mul.s	$f10,$f6,$f0
    751c:	c4660000 	lwc1	$f6,0(v1)
    7520:	460a4100 	add.s	$f4,$f8,$f10
    7524:	460c3202 	mul.s	$f8,$f6,$f12
    7528:	44983000 	mtc1	t8,$f6
    752c:	46082281 	sub.s	$f10,$f4,$f8
    7530:	46803120 	cvt.s.w	$f4,$f6
    7534:	e44a002c 	swc1	$f10,44(v0)
    7538:	c4a80024 	lwc1	$f8,36(a1)
    753c:	460e4280 	add.s	$f10,$f8,$f14
    7540:	46049082 	mul.s	$f2,$f18,$f4
    7544:	00000000 	nop
    7548:	46001182 	mul.s	$f6,$f2,$f0
    754c:	46065100 	add.s	$f4,$f10,$f6
    7550:	e4440008 	swc1	$f4,8(v0)
    7554:	c4a80028 	lwc1	$f8,40(a1)
    7558:	460c1102 	mul.s	$f4,$f2,$f12
    755c:	c4420080 	lwc1	$f2,128(v0)
    7560:	e448000c 	swc1	$f8,12(v0)
    7564:	c4aa002c 	lwc1	$f10,44(a1)
    7568:	46105180 	add.s	$f6,$f10,$f16
    756c:	c44a0028 	lwc1	$f10,40(v0)
    7570:	46043201 	sub.s	$f8,$f6,$f4
    7574:	4602503c 	c.lt.s	$f10,$f2
    7578:	e4480010 	swc1	$f8,16(v0)
    757c:	84b900b6 	lh	t9,182(a1)
    7580:	a4590016 	sh	t9,22(v0)
    7584:	84a900b6 	lh	t1,182(a1)
    7588:	8488fffe 	lh	t0,-2(a0)
    758c:	01095021 	addu	t2,t0,t1
    7590:	45000002 	bc1f	759c <func_809339F8+0x174>
    7594:	a44a00b6 	sh	t2,182(v0)
    7598:	e4420028 	swc1	$f2,40(v0)
    759c:	1487ffcc 	bne	a0,a3,74d0 <func_809339F8+0xa8>
    75a0:	2463000c 	addiu	v1,v1,12
    75a4:	8fbf0014 	lw	ra,20(sp)
    75a8:	27bd0028 	addiu	sp,sp,40
    75ac:	03e00008 	jr	ra
    75b0:	00000000 	nop

000075b4 <func_80933B84>:
    75b4:	27bdffe8 	addiu	sp,sp,-24
    75b8:	afbf0014 	sw	ra,20(sp)
    75bc:	0c000000 	jal	0 <BossSst_Init>
    75c0:	afa40018 	sw	a0,24(sp)
    75c4:	8fa40018 	lw	a0,24(sp)
    75c8:	3c0140c0 	lui	at,0x40c0
    75cc:	44812000 	mtc1	at,$f4
    75d0:	8c8e011c 	lw	t6,284(a0)
    75d4:	3c190000 	lui	t9,0x0
    75d8:	46040302 	mul.s	$f12,$f0,$f4
    75dc:	85cf001c 	lh	t7,28(t6)
    75e0:	24010008 	li	at,8
    75e4:	000fc080 	sll	t8,t7,0x2
    75e8:	0338c821 	addu	t9,t9,t8
    75ec:	8f390000 	lw	t9,0(t9)
    75f0:	46006086 	mov.s	$f2,$f12
    75f4:	1721000a 	bne	t9,at,7620 <func_80933B84+0x6c>
    75f8:	3c014080 	lui	at,0x4080
    75fc:	44810000 	mtc1	at,$f0
    7600:	3c010000 	lui	at,0x0
    7604:	c4260000 	lwc1	$f6,0(at)
    7608:	46066082 	mul.s	$f2,$f12,$f6
    760c:	4602003c 	c.lt.s	$f0,$f2
    7610:	00000000 	nop
    7614:	45020003 	bc1fl	7624 <func_80933B84+0x70>
    7618:	4600120d 	trunc.w.s	$f8,$f2
    761c:	46000086 	mov.s	$f2,$f0
    7620:	4600120d 	trunc.w.s	$f8,$f2
    7624:	24010001 	li	at,1
    7628:	44024000 	mfc1	v0,$f8
    762c:	00000000 	nop
    7630:	14400005 	bnez	v0,7648 <func_80933B84+0x94>
    7634:	00000000 	nop
    7638:	0c000000 	jal	0 <BossSst_Init>
    763c:	00000000 	nop
    7640:	10000018 	b	76a4 <func_80933B84+0xf0>
    7644:	8fbf0014 	lw	ra,20(sp)
    7648:	54410006 	bnel	v0,at,7664 <func_80933B84+0xb0>
    764c:	24010002 	li	at,2
    7650:	0c000000 	jal	0 <BossSst_Init>
    7654:	00000000 	nop
    7658:	10000012 	b	76a4 <func_80933B84+0xf0>
    765c:	8fbf0014 	lw	ra,20(sp)
    7660:	24010002 	li	at,2
    7664:	54410006 	bnel	v0,at,7680 <func_80933B84+0xcc>
    7668:	24010005 	li	at,5
    766c:	0c000000 	jal	0 <BossSst_Init>
    7670:	00000000 	nop
    7674:	1000000b 	b	76a4 <func_80933B84+0xf0>
    7678:	8fbf0014 	lw	ra,20(sp)
    767c:	24010005 	li	at,5
    7680:	14410005 	bne	v0,at,7698 <func_80933B84+0xe4>
    7684:	00000000 	nop
    7688:	0c000000 	jal	0 <BossSst_Init>
    768c:	00000000 	nop
    7690:	10000004 	b	76a4 <func_80933B84+0xf0>
    7694:	8fbf0014 	lw	ra,20(sp)
    7698:	0c000000 	jal	0 <BossSst_Init>
    769c:	00000000 	nop
    76a0:	8fbf0014 	lw	ra,20(sp)
    76a4:	27bd0018 	addiu	sp,sp,24
    76a8:	03e00008 	jr	ra
    76ac:	00000000 	nop

000076b0 <func_80933C80>:
    76b0:	908e03e4 	lbu	t6,996(a0)
    76b4:	8c9803f0 	lw	t8,1008(a0)
    76b8:	240300c0 	li	v1,192
    76bc:	35cf0001 	ori	t7,t6,0x1
    76c0:	a08f03e4 	sb	t7,996(a0)
    76c4:	a3050005 	sb	a1,5(t8)
    76c8:	8c9903f0 	lw	t9,1008(a0)
    76cc:	240202c0 	li	v0,704
    76d0:	a3250045 	sb	a1,69(t9)
    76d4:	8c8803f0 	lw	t0,1008(a0)
    76d8:	a1050085 	sb	a1,133(t0)
    76dc:	8c8903f0 	lw	t1,1008(a0)
    76e0:	01235021 	addu	t2,t1,v1
    76e4:	a1450005 	sb	a1,5(t2)
    76e8:	8c8b03f0 	lw	t3,1008(a0)
    76ec:	01636021 	addu	t4,t3,v1
    76f0:	a1850045 	sb	a1,69(t4)
    76f4:	8c8d03f0 	lw	t5,1008(a0)
    76f8:	01a37021 	addu	t6,t5,v1
    76fc:	a1c50085 	sb	a1,133(t6)
    7700:	8c8f03f0 	lw	t7,1008(a0)
    7704:	01e3c021 	addu	t8,t7,v1
    7708:	24630100 	addiu	v1,v1,256
    770c:	1462fff3 	bne	v1,v0,76dc <func_80933C80+0x2c>
    7710:	a30500c5 	sb	a1,197(t8)
    7714:	03e00008 	jr	ra
    7718:	00000000 	nop

0000771c <func_80933CEC>:
    771c:	908e03e5 	lbu	t6,997(a0)
    7720:	2401fffd 	li	at,-3
    7724:	2418000c 	li	t8,12
    7728:	01c17824 	and	t7,t6,at
    772c:	10a00005 	beqz	a1,7744 <func_80933CEC+0x28>
    7730:	a08f03e5 	sb	t7,997(a0)
    7734:	35e80004 	ori	t0,t7,0x4
    7738:	a09803e8 	sb	t8,1000(a0)
    773c:	03e00008 	jr	ra
    7740:	a08803e5 	sb	t0,997(a0)
    7744:	908903e5 	lbu	t1,997(a0)
    7748:	a08003e8 	sb	zero,1000(a0)
    774c:	312afffb 	andi	t2,t1,0xfffb
    7750:	a08a03e5 	sb	t2,997(a0)
    7754:	03e00008 	jr	ra
    7758:	00000000 	nop

0000775c <func_80933D2C>:
    775c:	27bdffe8 	addiu	sp,sp,-24
    7760:	afbf0014 	sw	ra,20(sp)
    7764:	afa5001c 	sw	a1,28(sp)
    7768:	30a5ffff 	andi	a1,a1,0xffff
    776c:	0c000000 	jal	0 <BossSst_Init>
    7770:	248403c8 	addiu	a0,a0,968
    7774:	8fbf0014 	lw	ra,20(sp)
    7778:	27bd0018 	addiu	sp,sp,24
    777c:	03e00008 	jr	ra
    7780:	00000000 	nop

00007784 <func_80933D54>:
    7784:	27bdffd8 	addiu	sp,sp,-40
    7788:	afbf001c 	sw	ra,28(sp)
    778c:	afb00018 	sw	s0,24(sp)
    7790:	afa5002c 	sw	a1,44(sp)
    7794:	908203e5 	lbu	v0,997(a0)
    7798:	00808025 	move	s0,a0
    779c:	304e0002 	andi	t6,v0,0x2
    77a0:	51c00057 	beqzl	t6,7900 <func_80933D54+0x17c>
    77a4:	8fbf001c 	lw	ra,28(sp)
    77a8:	908f03e8 	lbu	t7,1000(a0)
    77ac:	2401000c 	li	at,12
    77b0:	24180001 	li	t8,1
    77b4:	51e10052 	beql	t7,at,7900 <func_80933D54+0x17c>
    77b8:	8fbf001c 	lw	ra,28(sp)
    77bc:	afb80024 	sw	t8,36(sp)
    77c0:	908800b1 	lbu	t0,177(a0)
    77c4:	3059fffd 	andi	t9,v0,0xfffd
    77c8:	a09903e5 	sb	t9,997(a0)
    77cc:	15000004 	bnez	t0,77e0 <func_80933D54+0x5c>
    77d0:	24060001 	li	a2,1
    77d4:	908900b0 	lbu	t1,176(a0)
    77d8:	51200049 	beqzl	t1,7900 <func_80933D54+0x17c>
    77dc:	8fbf001c 	lw	ra,28(sp)
    77e0:	920a03e4 	lbu	t2,996(s0)
    77e4:	920c03e5 	lbu	t4,997(s0)
    77e8:	920e03e6 	lbu	t6,998(s0)
    77ec:	314bfffc 	andi	t3,t2,0xfffc
    77f0:	318dfffe 	andi	t5,t4,0xfffe
    77f4:	31cffffb 	andi	t7,t6,0xfffb
    77f8:	a20b03e4 	sb	t3,996(s0)
    77fc:	a20d03e5 	sb	t5,997(s0)
    7800:	a20f03e6 	sb	t7,998(s0)
    7804:	8fa5002c 	lw	a1,44(sp)
    7808:	0c000000 	jal	0 <BossSst_Init>
    780c:	02002025 	move	a0,s0
    7810:	8e04011c 	lw	a0,284(s0)
    7814:	3c080000 	lui	t0,0x0
    7818:	24010006 	li	at,6
    781c:	8498001c 	lh	t8,28(a0)
    7820:	8fa5002c 	lw	a1,44(sp)
    7824:	0018c880 	sll	t9,t8,0x2
    7828:	01194021 	addu	t0,t0,t9
    782c:	8d080000 	lw	t0,0(t0)
    7830:	55010006 	bnel	t0,at,784c <func_80933D54+0xc8>
    7834:	8e090004 	lw	t1,4(s0)
    7838:	0c000000 	jal	0 <BossSst_Init>
    783c:	24060001 	li	a2,1
    7840:	0c000000 	jal	0 <BossSst_Init>
    7844:	8e04011c 	lw	a0,284(s0)
    7848:	8e090004 	lw	t1,4(s0)
    784c:	920b00b1 	lbu	t3,177(s0)
    7850:	2401fffe 	li	at,-2
    7854:	01215024 	and	t2,t1,at
    7858:	24010003 	li	at,3
    785c:	15610005 	bne	t3,at,7874 <func_80933D54+0xf0>
    7860:	ae0a0004 	sw	t2,4(s0)
    7864:	0c000000 	jal	0 <BossSst_Init>
    7868:	02002025 	move	a0,s0
    786c:	1000000d 	b	78a4 <func_80933D54+0x120>
    7870:	00000000 	nop
    7874:	0c000000 	jal	0 <BossSst_Init>
    7878:	02002025 	move	a0,s0
    787c:	8e0c011c 	lw	t4,284(s0)
    7880:	3c0f0000 	lui	t7,0x0
    7884:	24010008 	li	at,8
    7888:	858d001c 	lh	t5,28(t4)
    788c:	000d7080 	sll	t6,t5,0x2
    7890:	01ee7821 	addu	t7,t7,t6
    7894:	8def0000 	lw	t7,0(t7)
    7898:	11e10002 	beq	t7,at,78a4 <func_80933D54+0x120>
    789c:	00000000 	nop
    78a0:	afa00024 	sw	zero,36(sp)
    78a4:	3c040000 	lui	a0,0x0
    78a8:	8c840000 	lw	a0,0(a0)
    78ac:	0c000000 	jal	0 <BossSst_Init>
    78b0:	8fa50024 	lw	a1,36(sp)
    78b4:	0c000000 	jal	0 <BossSst_Init>
    78b8:	00000000 	nop
    78bc:	3c013f00 	lui	at,0x3f00
    78c0:	44812000 	mtc1	at,$f4
    78c4:	8fa4002c 	lw	a0,44(sp)
    78c8:	26050024 	addiu	a1,s0,36
    78cc:	4604003c 	c.lt.s	$f0,$f4
    78d0:	2402000f 	li	v0,15
    78d4:	45000003 	bc1f	78e4 <func_80933D54+0x160>
    78d8:	00000000 	nop
    78dc:	10000001 	b	78e4 <func_80933D54+0x160>
    78e0:	24020008 	li	v0,8
    78e4:	00023400 	sll	a2,v0,0x10
    78e8:	0c000000 	jal	0 <BossSst_Init>
    78ec:	00063403 	sra	a2,a2,0x10
    78f0:	02002025 	move	a0,s0
    78f4:	0c000000 	jal	0 <BossSst_Init>
    78f8:	2405396a 	li	a1,14698
    78fc:	8fbf001c 	lw	ra,28(sp)
    7900:	8fb00018 	lw	s0,24(sp)
    7904:	27bd0028 	addiu	sp,sp,40
    7908:	03e00008 	jr	ra
    790c:	00000000 	nop

00007910 <func_80933EE0>:
    7910:	27bdffe8 	addiu	sp,sp,-24
    7914:	afbf0014 	sw	ra,20(sp)
    7918:	afa5001c 	sw	a1,28(sp)
    791c:	908206c5 	lbu	v0,1733(a0)
    7920:	00803025 	move	a2,a0
    7924:	304e0002 	andi	t6,v0,0x2
    7928:	51c00049 	beqzl	t6,7a50 <func_80933EE0+0x140>
    792c:	8fbf0014 	lw	ra,20(sp)
    7930:	909800b1 	lbu	t8,177(a0)
    7934:	304ffffd 	andi	t7,v0,0xfffd
    7938:	a08f06c5 	sb	t7,1733(a0)
    793c:	57000005 	bnezl	t8,7954 <func_80933EE0+0x44>
    7940:	8cc90190 	lw	t1,400(a2)
    7944:	909900b0 	lbu	t9,176(a0)
    7948:	53200041 	beqzl	t9,7a50 <func_80933EE0+0x140>
    794c:	8fbf0014 	lw	ra,20(sp)
    7950:	8cc90190 	lw	t1,400(a2)
    7954:	3c080000 	lui	t0,0x0
    7958:	25080000 	addiu	t0,t0,0
    795c:	15090018 	bne	t0,t1,79c0 <func_80933EE0+0xb0>
    7960:	00c02025 	move	a0,a2
    7964:	0c000000 	jal	0 <BossSst_Init>
    7968:	afa60018 	sw	a2,24(sp)
    796c:	1440000a 	bnez	v0,7998 <func_80933EE0+0x88>
    7970:	8fa60018 	lw	a2,24(sp)
    7974:	8fa4001c 	lw	a0,28(sp)
    7978:	00c02825 	move	a1,a2
    797c:	0c000000 	jal	0 <BossSst_Init>
    7980:	afa60018 	sw	a2,24(sp)
    7984:	8fa40018 	lw	a0,24(sp)
    7988:	0c000000 	jal	0 <BossSst_Init>
    798c:	8fa5001c 	lw	a1,28(sp)
    7990:	10000003 	b	79a0 <func_80933EE0+0x90>
    7994:	00000000 	nop
    7998:	0c000000 	jal	0 <BossSst_Init>
    799c:	00c02025 	move	a0,a2
    79a0:	3c040000 	lui	a0,0x0
    79a4:	0c000000 	jal	0 <BossSst_Init>
    79a8:	8c840000 	lw	a0,0(a0)
    79ac:	3c040000 	lui	a0,0x0
    79b0:	0c000000 	jal	0 <BossSst_Init>
    79b4:	8c840000 	lw	a0,0(a0)
    79b8:	10000025 	b	7a50 <func_80933EE0+0x140>
    79bc:	8fbf0014 	lw	ra,20(sp)
    79c0:	0c000000 	jal	0 <BossSst_Init>
    79c4:	00c02025 	move	a0,a2
    79c8:	3c040000 	lui	a0,0x0
    79cc:	8c840000 	lw	a0,0(a0)
    79d0:	3c030000 	lui	v1,0x0
    79d4:	24630000 	addiu	v1,v1,0
    79d8:	848a001c 	lh	t2,28(a0)
    79dc:	24020009 	li	v0,9
    79e0:	3c050000 	lui	a1,0x0
    79e4:	000a5880 	sll	t3,t2,0x2
    79e8:	006b6021 	addu	t4,v1,t3
    79ec:	8d8d0000 	lw	t5,0(t4)
    79f0:	144d0006 	bne	v0,t5,7a0c <func_80933EE0+0xfc>
    79f4:	00000000 	nop
    79f8:	0c000000 	jal	0 <BossSst_Init>
    79fc:	00000000 	nop
    7a00:	3c040000 	lui	a0,0x0
    7a04:	1000000c 	b	7a38 <func_80933EE0+0x128>
    7a08:	8c840000 	lw	a0,0(a0)
    7a0c:	8ca50000 	lw	a1,0(a1)
    7a10:	84ae001c 	lh	t6,28(a1)
    7a14:	000e7880 	sll	t7,t6,0x2
    7a18:	006fc021 	addu	t8,v1,t7
    7a1c:	8f190000 	lw	t9,0(t8)
    7a20:	14590005 	bne	v0,t9,7a38 <func_80933EE0+0x128>
    7a24:	00000000 	nop
    7a28:	0c000000 	jal	0 <BossSst_Init>
    7a2c:	00a02025 	move	a0,a1
    7a30:	3c040000 	lui	a0,0x0
    7a34:	8c840000 	lw	a0,0(a0)
    7a38:	0c000000 	jal	0 <BossSst_Init>
    7a3c:	00000000 	nop
    7a40:	3c040000 	lui	a0,0x0
    7a44:	0c000000 	jal	0 <BossSst_Init>
    7a48:	8c840000 	lw	a0,0(a0)
    7a4c:	8fbf0014 	lw	ra,20(sp)
    7a50:	27bd0018 	addiu	sp,sp,24
    7a54:	03e00008 	jr	ra
    7a58:	00000000 	nop

00007a5c <BossSst_Update>:
    7a5c:	27bdffc8 	addiu	sp,sp,-56
    7a60:	afbf0024 	sw	ra,36(sp)
    7a64:	afb10020 	sw	s1,32(sp)
    7a68:	afb0001c 	sw	s0,28(sp)
    7a6c:	908206c4 	lbu	v0,1732(a0)
    7a70:	00a08825 	move	s1,a1
    7a74:	00808025 	move	s0,a0
    7a78:	304e0001 	andi	t6,v0,0x1
    7a7c:	11c0002f 	beqz	t6,7b3c <BossSst_Update+0xe0>
    7a80:	02202825 	move	a1,s1
    7a84:	848f0720 	lh	t7,1824(a0)
    7a88:	3c180000 	lui	t8,0x0
    7a8c:	3049fffc 	andi	t1,v0,0xfffc
    7a90:	29e10005 	slti	at,t7,5
    7a94:	14200018 	bnez	at,7af8 <BossSst_Update+0x9c>
    7a98:	00000000 	nop
    7a9c:	87180000 	lh	t8,0(t8)
    7aa0:	9499076e 	lhu	t9,1902(a0)
    7aa4:	3c010000 	lui	at,0x0
    7aa8:	44982000 	mtc1	t8,$f4
    7aac:	44994000 	mtc1	t9,$f8
    7ab0:	c4220000 	lwc1	$f2,0(at)
    7ab4:	c4860090 	lwc1	$f6,144(a0)
    7ab8:	46802020 	cvt.s.w	$f0,$f4
    7abc:	07210005 	bgez	t9,7ad4 <BossSst_Update+0x78>
    7ac0:	468042a0 	cvt.s.w	$f10,$f8
    7ac4:	3c014f80 	lui	at,0x4f80
    7ac8:	44818000 	mtc1	at,$f16
    7acc:	00000000 	nop
    7ad0:	46105280 	add.s	$f10,$f10,$f16
    7ad4:	46025482 	mul.s	$f18,$f10,$f2
    7ad8:	30480002 	andi	t0,v0,0x2
    7adc:	46009102 	mul.s	$f4,$f18,$f0
    7ae0:	4604303c 	c.lt.s	$f6,$f4
    7ae4:	00000000 	nop
    7ae8:	45010003 	bc1t	7af8 <BossSst_Update+0x9c>
    7aec:	00000000 	nop
    7af0:	51000004 	beqzl	t0,7b04 <BossSst_Update+0xa8>
    7af4:	960a071e 	lhu	t2,1822(s0)
    7af8:	10000010 	b	7b3c <BossSst_Update+0xe0>
    7afc:	a20906c4 	sb	t1,1732(s0)
    7b00:	960a071e 	lhu	t2,1822(s0)
    7b04:	3c014f80 	lui	at,0x4f80
    7b08:	448a4000 	mtc1	t2,$f8
    7b0c:	05410004 	bgez	t2,7b20 <BossSst_Update+0xc4>
    7b10:	46804420 	cvt.s.w	$f16,$f8
    7b14:	44815000 	mtc1	at,$f10
    7b18:	00000000 	nop
    7b1c:	460a8400 	add.s	$f16,$f16,$f10
    7b20:	46028482 	mul.s	$f18,$f16,$f2
    7b24:	00000000 	nop
    7b28:	46009182 	mul.s	$f6,$f18,$f0
    7b2c:	4600310d 	trunc.w.s	$f4,$f6
    7b30:	440c2000 	mfc1	t4,$f4
    7b34:	00000000 	nop
    7b38:	a60c06f4 	sh	t4,1780(s0)
    7b3c:	0c000000 	jal	0 <BossSst_Init>
    7b40:	02002025 	move	a0,s0
    7b44:	8e190190 	lw	t9,400(s0)
    7b48:	02002025 	move	a0,s0
    7b4c:	02202825 	move	a1,s1
    7b50:	0320f809 	jalr	t9
    7b54:	00000000 	nop
    7b58:	44804000 	mtc1	zero,$f8
    7b5c:	240d0005 	li	t5,5
    7b60:	afad0014 	sw	t5,20(sp)
    7b64:	02202025 	move	a0,s1
    7b68:	02002825 	move	a1,s0
    7b6c:	3c064248 	lui	a2,0x4248
    7b70:	3c074302 	lui	a3,0x4302
    7b74:	0c000000 	jal	0 <BossSst_Init>
    7b78:	e7a80010 	swc1	$f8,16(sp)
    7b7c:	02002025 	move	a0,s0
    7b80:	0c000000 	jal	0 <BossSst_Init>
    7b84:	24050000 	li	a1,0
    7b88:	920e03e4 	lbu	t6,996(s0)
    7b8c:	3c010001 	lui	at,0x1
    7b90:	34211e60 	ori	at,at,0x1e60
    7b94:	31cf0001 	andi	t7,t6,0x1
    7b98:	11e00004 	beqz	t7,7bac <BossSst_Update+0x150>
    7b9c:	02202025 	move	a0,s1
    7ba0:	02212821 	addu	a1,s1,at
    7ba4:	0c000000 	jal	0 <BossSst_Init>
    7ba8:	260603d4 	addiu	a2,s0,980
    7bac:	3c180000 	lui	t8,0x0
    7bb0:	8f180000 	lw	t8,0(t8)
    7bb4:	3c080000 	lui	t0,0x0
    7bb8:	25080000 	addiu	t0,t0,0
    7bbc:	8f020190 	lw	v0,400(t8)
    7bc0:	3c090000 	lui	t1,0x0
    7bc4:	25290000 	addiu	t1,t1,0
    7bc8:	5102000d 	beql	t0,v0,7c00 <BossSst_Update+0x1a4>
    7bcc:	920c03e6 	lbu	t4,998(s0)
    7bd0:	5122000b 	beql	t1,v0,7c00 <BossSst_Update+0x1a4>
    7bd4:	920c03e6 	lbu	t4,998(s0)
    7bd8:	920a03e5 	lbu	t2,997(s0)
    7bdc:	3c010001 	lui	at,0x1
    7be0:	34211e60 	ori	at,at,0x1e60
    7be4:	314b0001 	andi	t3,t2,0x1
    7be8:	11600004 	beqz	t3,7bfc <BossSst_Update+0x1a0>
    7bec:	02202025 	move	a0,s1
    7bf0:	02212821 	addu	a1,s1,at
    7bf4:	0c000000 	jal	0 <BossSst_Init>
    7bf8:	260603d4 	addiu	a2,s0,980
    7bfc:	920c03e6 	lbu	t4,998(s0)
    7c00:	3c010001 	lui	at,0x1
    7c04:	34211e60 	ori	at,at,0x1e60
    7c08:	31990001 	andi	t9,t4,0x1
    7c0c:	13200004 	beqz	t9,7c20 <BossSst_Update+0x1c4>
    7c10:	02202025 	move	a0,s1
    7c14:	02212821 	addu	a1,s1,at
    7c18:	0c000000 	jal	0 <BossSst_Init>
    7c1c:	260603d4 	addiu	a2,s0,980
    7c20:	920d06c4 	lbu	t5,1732(s0)
    7c24:	3c010001 	lui	at,0x1
    7c28:	34211e60 	ori	at,at,0x1e60
    7c2c:	31ae0001 	andi	t6,t5,0x1
    7c30:	11c00004 	beqz	t6,7c44 <BossSst_Update+0x1e8>
    7c34:	02202025 	move	a0,s1
    7c38:	02212821 	addu	a1,s1,at
    7c3c:	0c000000 	jal	0 <BossSst_Init>
    7c40:	260606b4 	addiu	a2,s0,1716
    7c44:	860f001c 	lh	t7,28(s0)
    7c48:	3c020000 	lui	v0,0x0
    7c4c:	2401000b 	li	at,11
    7c50:	000fc080 	sll	t8,t7,0x2
    7c54:	00581021 	addu	v0,v0,t8
    7c58:	8c420000 	lw	v0,0(v0)
    7c5c:	50410014 	beql	v0,at,7cb0 <BossSst_Update+0x254>
    7c60:	860b09d2 	lh	t3,2514(s0)
    7c64:	10400011 	beqz	v0,7cac <BossSst_Update+0x250>
    7c68:	24010001 	li	at,1
    7c6c:	1041000f 	beq	v0,at,7cac <BossSst_Update+0x250>
    7c70:	24010009 	li	at,9
    7c74:	5041000e 	beql	v0,at,7cb0 <BossSst_Update+0x254>
    7c78:	860b09d2 	lh	t3,2514(s0)
    7c7c:	860809d2 	lh	t0,2514(s0)
    7c80:	240a0007 	li	t2,7
    7c84:	25090001 	addiu	t1,t0,1
    7c88:	a60909d2 	sh	t1,2514(s0)
    7c8c:	860209d2 	lh	v0,2514(s0)
    7c90:	28410008 	slti	at,v0,8
    7c94:	14200003 	bnez	at,7ca4 <BossSst_Update+0x248>
    7c98:	00000000 	nop
    7c9c:	1000000c 	b	7cd0 <BossSst_Update+0x274>
    7ca0:	a60a09d2 	sh	t2,2514(s0)
    7ca4:	1000000a 	b	7cd0 <BossSst_Update+0x274>
    7ca8:	a60209d2 	sh	v0,2514(s0)
    7cac:	860b09d2 	lh	t3,2514(s0)
    7cb0:	256cffff 	addiu	t4,t3,-1
    7cb4:	a60c09d2 	sh	t4,2514(s0)
    7cb8:	860209d2 	lh	v0,2514(s0)
    7cbc:	04430004 	bgezl	v0,7cd0 <BossSst_Update+0x274>
    7cc0:	a60209d2 	sh	v0,2514(s0)
    7cc4:	10000002 	b	7cd0 <BossSst_Update+0x274>
    7cc8:	a60009d2 	sh	zero,2514(s0)
    7ccc:	a60209d2 	sh	v0,2514(s0)
    7cd0:	861909d0 	lh	t9,2512(s0)
    7cd4:	26050024 	addiu	a1,s0,36
    7cd8:	001968c0 	sll	t5,t9,0x3
    7cdc:	01b96823 	subu	t5,t5,t9
    7ce0:	000d6880 	sll	t5,t5,0x2
    7ce4:	020d3021 	addu	a2,s0,t5
    7ce8:	24c409d4 	addiu	a0,a2,2516
    7cec:	0c000000 	jal	0 <BossSst_Init>
    7cf0:	afa4002c 	sw	a0,44(sp)
    7cf4:	8a0f00b4 	lwl	t7,180(s0)
    7cf8:	8fa6002c 	lw	a2,44(sp)
    7cfc:	9a0f00b7 	lwr	t7,183(s0)
    7d00:	24010007 	li	at,7
    7d04:	02002025 	move	a0,s0
    7d08:	a8cf000c 	swl	t7,12(a2)
    7d0c:	b8cf000f 	swr	t7,15(a2)
    7d10:	960f00b8 	lhu	t7,184(s0)
    7d14:	02202825 	move	a1,s1
    7d18:	a4cf0010 	sh	t7,16(a2)
    7d1c:	8618019e 	lh	t8,414(s0)
    7d20:	44985000 	mtc1	t8,$f10
    7d24:	00000000 	nop
    7d28:	46805420 	cvt.s.w	$f16,$f10
    7d2c:	e4d00014 	swc1	$f16,20(a2)
    7d30:	860801a0 	lh	t0,416(s0)
    7d34:	a4c80018 	sh	t0,24(a2)
    7d38:	860909d0 	lh	t1,2512(s0)
    7d3c:	252a0001 	addiu	t2,t1,1
    7d40:	0141001a 	div	zero,t2,at
    7d44:	00005810 	mfhi	t3
    7d48:	a60b09d0 	sh	t3,2512(s0)
    7d4c:	0c000000 	jal	0 <BossSst_Init>
    7d50:	00000000 	nop
    7d54:	8fbf0024 	lw	ra,36(sp)
    7d58:	8fb0001c 	lw	s0,28(sp)
    7d5c:	8fb10020 	lw	s1,32(sp)
    7d60:	03e00008 	jr	ra
    7d64:	27bd0038 	addiu	sp,sp,56

00007d68 <func_80934338>:
    7d68:	27bdffd0 	addiu	sp,sp,-48
    7d6c:	afb10018 	sw	s1,24(sp)
    7d70:	3c060000 	lui	a2,0x0
    7d74:	8cc60000 	lw	a2,0(a2)
    7d78:	00a08825 	move	s1,a1
    7d7c:	afbf001c 	sw	ra,28(sp)
    7d80:	afb00014 	sw	s0,20(sp)
    7d84:	3c050000 	lui	a1,0x0
    7d88:	00808025 	move	s0,a0
    7d8c:	24a50000 	addiu	a1,a1,0
    7d90:	0c000000 	jal	0 <BossSst_Init>
    7d94:	24c60024 	addiu	a2,a2,36
    7d98:	3c060000 	lui	a2,0x0
    7d9c:	8cc60000 	lw	a2,0(a2)
    7da0:	3c050000 	lui	a1,0x0
    7da4:	24a50000 	addiu	a1,a1,0
    7da8:	02002025 	move	a0,s0
    7dac:	0c000000 	jal	0 <BossSst_Init>
    7db0:	24c60024 	addiu	a2,a2,36
    7db4:	3c030000 	lui	v1,0x0
    7db8:	24630000 	addiu	v1,v1,0
    7dbc:	8c6e0000 	lw	t6,0(v1)
    7dc0:	861800b6 	lh	t8,182(s0)
    7dc4:	3c020000 	lui	v0,0x0
    7dc8:	85cf00b6 	lh	t7,182(t6)
    7dcc:	8c680004 	lw	t0,4(v1)
    7dd0:	24420000 	addiu	v0,v0,0
    7dd4:	01f8c823 	subu	t9,t7,t8
    7dd8:	a4590000 	sh	t9,0(v0)
    7ddc:	860a00b6 	lh	t2,182(s0)
    7de0:	850900b6 	lh	t1,182(t0)
    7de4:	02002025 	move	a0,s0
    7de8:	02202825 	move	a1,s1
    7dec:	012a5823 	subu	t3,t1,t2
    7df0:	0c000000 	jal	0 <BossSst_Init>
    7df4:	a44b0002 	sh	t3,2(v0)
    7df8:	8e190190 	lw	t9,400(s0)
    7dfc:	02002025 	move	a0,s0
    7e00:	02202825 	move	a1,s1
    7e04:	0320f809 	jalr	t9
    7e08:	00000000 	nop
    7e0c:	820c0194 	lb	t4,404(s0)
    7e10:	02202025 	move	a0,s1
    7e14:	260603d4 	addiu	a2,s0,980
    7e18:	51800010 	beqzl	t4,7e5c <func_80934338+0xf4>
    7e1c:	920a03e4 	lbu	t2,996(s0)
    7e20:	922d1c27 	lbu	t5,7207(s1)
    7e24:	51a00005 	beqzl	t5,7e3c <func_80934338+0xd4>
    7e28:	8e0f0004 	lw	t7,4(s0)
    7e2c:	920e0114 	lbu	t6,276(s0)
    7e30:	51c00007 	beqzl	t6,7e50 <func_80934338+0xe8>
    7e34:	8e080004 	lw	t0,4(s0)
    7e38:	8e0f0004 	lw	t7,4(s0)
    7e3c:	2401ff7f 	li	at,-129
    7e40:	01e1c024 	and	t8,t7,at
    7e44:	10000004 	b	7e58 <func_80934338+0xf0>
    7e48:	ae180004 	sw	t8,4(s0)
    7e4c:	8e080004 	lw	t0,4(s0)
    7e50:	35090080 	ori	t1,t0,0x80
    7e54:	ae090004 	sw	t1,4(s0)
    7e58:	920a03e4 	lbu	t2,996(s0)
    7e5c:	3c010001 	lui	at,0x1
    7e60:	34211e60 	ori	at,at,0x1e60
    7e64:	314b0001 	andi	t3,t2,0x1
    7e68:	51600004 	beqzl	t3,7e7c <func_80934338+0x114>
    7e6c:	8e020190 	lw	v0,400(s0)
    7e70:	0c000000 	jal	0 <BossSst_Init>
    7e74:	02212821 	addu	a1,s1,at
    7e78:	8e020190 	lw	v0,400(s0)
    7e7c:	3c190000 	lui	t9,0x0
    7e80:	27390000 	addiu	t9,t9,0
    7e84:	13220014 	beq	t9,v0,7ed8 <func_80934338+0x170>
    7e88:	3c0c0000 	lui	t4,0x0
    7e8c:	258c0000 	addiu	t4,t4,0
    7e90:	11820011 	beq	t4,v0,7ed8 <func_80934338+0x170>
    7e94:	3c010001 	lui	at,0x1
    7e98:	920d06c5 	lbu	t5,1733(s0)
    7e9c:	34211e60 	ori	at,at,0x1e60
    7ea0:	02212821 	addu	a1,s1,at
    7ea4:	31ae0001 	andi	t6,t5,0x1
    7ea8:	11c00008 	beqz	t6,7ecc <func_80934338+0x164>
    7eac:	260703d4 	addiu	a3,s0,980
    7eb0:	02202025 	move	a0,s1
    7eb4:	260606b4 	addiu	a2,s0,1716
    7eb8:	afa50024 	sw	a1,36(sp)
    7ebc:	0c000000 	jal	0 <BossSst_Init>
    7ec0:	afa70020 	sw	a3,32(sp)
    7ec4:	8fa50024 	lw	a1,36(sp)
    7ec8:	8fa70020 	lw	a3,32(sp)
    7ecc:	02202025 	move	a0,s1
    7ed0:	0c000000 	jal	0 <BossSst_Init>
    7ed4:	00e03025 	move	a2,a3
    7ed8:	920f03e6 	lbu	t7,998(s0)
    7edc:	3c010001 	lui	at,0x1
    7ee0:	34211e60 	ori	at,at,0x1e60
    7ee4:	31f80001 	andi	t8,t7,0x1
    7ee8:	13000004 	beqz	t8,7efc <func_80934338+0x194>
    7eec:	02202025 	move	a0,s1
    7ef0:	02212821 	addu	a1,s1,at
    7ef4:	0c000000 	jal	0 <BossSst_Init>
    7ef8:	260603d4 	addiu	a2,s0,980
    7efc:	0c000000 	jal	0 <BossSst_Init>
    7f00:	02002025 	move	a0,s0
    7f04:	82080194 	lb	t0,404(s0)
    7f08:	02002025 	move	a0,s0
    7f0c:	51000007 	beqzl	t0,7f2c <func_80934338+0x1c4>
    7f10:	8e020190 	lw	v0,400(s0)
    7f14:	8e030004 	lw	v1,4(s0)
    7f18:	24010080 	li	at,128
    7f1c:	30690080 	andi	t1,v1,0x80
    7f20:	5521001b 	bnel	t1,at,7f90 <func_80934338+0x228>
    7f24:	2401fffe 	li	at,-2
    7f28:	8e020190 	lw	v0,400(s0)
    7f2c:	3c0a0000 	lui	t2,0x0
    7f30:	254a0000 	addiu	t2,t2,0
    7f34:	11420010 	beq	t2,v0,7f78 <func_80934338+0x210>
    7f38:	8e030004 	lw	v1,4(s0)
    7f3c:	3c0b0000 	lui	t3,0x0
    7f40:	256b0000 	addiu	t3,t3,0
    7f44:	1162000c 	beq	t3,v0,7f78 <func_80934338+0x210>
    7f48:	3c190000 	lui	t9,0x0
    7f4c:	27390000 	addiu	t9,t9,0
    7f50:	13220009 	beq	t9,v0,7f78 <func_80934338+0x210>
    7f54:	3c0c0000 	lui	t4,0x0
    7f58:	258c0000 	addiu	t4,t4,0
    7f5c:	11820006 	beq	t4,v0,7f78 <func_80934338+0x210>
    7f60:	3c0d0000 	lui	t5,0x0
    7f64:	25ad0000 	addiu	t5,t5,0
    7f68:	11a20003 	beq	t5,v0,7f78 <func_80934338+0x210>
    7f6c:	3c0e0000 	lui	t6,0x0
    7f70:	25ce0000 	addiu	t6,t6,0
    7f74:	15c20005 	bne	t6,v0,7f8c <func_80934338+0x224>
    7f78:	346f0001 	ori	t7,v1,0x1
    7f7c:	3c020000 	lui	v0,0x0
    7f80:	24420000 	addiu	v0,v0,0
    7f84:	10000006 	b	7fa0 <func_80934338+0x238>
    7f88:	ae0f0004 	sw	t7,4(s0)
    7f8c:	2401fffe 	li	at,-2
    7f90:	0061c024 	and	t8,v1,at
    7f94:	3c020000 	lui	v0,0x0
    7f98:	24420000 	addiu	v0,v0,0
    7f9c:	ae180004 	sw	t8,4(s0)
    7fa0:	8e080190 	lw	t0,400(s0)
    7fa4:	54480004 	bnel	v0,t0,7fb8 <func_80934338+0x250>
    7fa8:	02002025 	move	a0,s0
    7fac:	0c000000 	jal	0 <BossSst_Init>
    7fb0:	2405318d 	li	a1,12685
    7fb4:	02002025 	move	a0,s0
    7fb8:	0c000000 	jal	0 <BossSst_Init>
    7fbc:	02202825 	move	a1,s1
    7fc0:	8fbf001c 	lw	ra,28(sp)
    7fc4:	8fb00014 	lw	s0,20(sp)
    7fc8:	8fb10018 	lw	s1,24(sp)
    7fcc:	03e00008 	jr	ra
    7fd0:	27bd0030 	addiu	sp,sp,48

00007fd4 <func_809345A4>:
    7fd4:	24010001 	li	at,1
    7fd8:	afa40000 	sw	a0,0(sp)
    7fdc:	14a1000e 	bne	a1,at,8018 <func_809345A4+0x44>
    7fe0:	afa60008 	sw	a2,8(sp)
    7fe4:	8fa20014 	lw	v0,20(sp)
    7fe8:	c4e40008 	lwc1	$f4,8(a3)
    7fec:	8fa30010 	lw	v1,16(sp)
    7ff0:	844e019e 	lh	t6,414(v0)
    7ff4:	448e3000 	mtc1	t6,$f6
    7ff8:	00000000 	nop
    7ffc:	46803220 	cvt.s.w	$f8,$f6
    8000:	46082280 	add.s	$f10,$f4,$f8
    8004:	e4ea0008 	swc1	$f10,8(a3)
    8008:	845801a0 	lh	t8,416(v0)
    800c:	846f0002 	lh	t7,2(v1)
    8010:	01f8c821 	addu	t9,t7,t8
    8014:	a4790002 	sh	t9,2(v1)
    8018:	03e00008 	jr	ra
    801c:	00001025 	move	v0,zero

00008020 <func_809345F0>:
    8020:	27bdffe8 	addiu	sp,sp,-24
    8024:	afa40018 	sw	a0,24(sp)
    8028:	afa5001c 	sw	a1,28(sp)
    802c:	00a02025 	move	a0,a1
    8030:	8fa50028 	lw	a1,40(sp)
    8034:	afbf0014 	sw	ra,20(sp)
    8038:	afa60020 	sw	a2,32(sp)
    803c:	afa70024 	sw	a3,36(sp)
    8040:	0c000000 	jal	0 <BossSst_Init>
    8044:	24a503d4 	addiu	a1,a1,980
    8048:	8fbf0014 	lw	ra,20(sp)
    804c:	27bd0018 	addiu	sp,sp,24
    8050:	03e00008 	jr	ra
    8054:	00000000 	nop

00008058 <func_80934628>:
    8058:	24010001 	li	at,1
    805c:	afa40000 	sw	a0,0(sp)
    8060:	14a1000b 	bne	a1,at,8090 <func_80934628+0x38>
    8064:	afa60008 	sw	a2,8(sp)
    8068:	8fa20014 	lw	v0,20(sp)
    806c:	c4e40008 	lwc1	$f4,8(a3)
    8070:	8fa30010 	lw	v1,16(sp)
    8074:	c4460014 	lwc1	$f6,20(v0)
    8078:	46062200 	add.s	$f8,$f4,$f6
    807c:	e4e80008 	swc1	$f8,8(a3)
    8080:	844f0018 	lh	t7,24(v0)
    8084:	846e0002 	lh	t6,2(v1)
    8088:	01cfc021 	addu	t8,t6,t7
    808c:	a4780002 	sh	t8,2(v1)
    8090:	03e00008 	jr	ra
    8094:	00001025 	move	v0,zero

00008098 <BossSst_Draw>:
    8098:	27bdff38 	addiu	sp,sp,-200
    809c:	afbf005c 	sw	ra,92(sp)
    80a0:	afbe0058 	sw	s8,88(sp)
    80a4:	afb70054 	sw	s7,84(sp)
    80a8:	afb60050 	sw	s6,80(sp)
    80ac:	afb5004c 	sw	s5,76(sp)
    80b0:	afb40048 	sw	s4,72(sp)
    80b4:	afb30044 	sw	s3,68(sp)
    80b8:	afb20040 	sw	s2,64(sp)
    80bc:	afb1003c 	sw	s1,60(sp)
    80c0:	afb00038 	sw	s0,56(sp)
    80c4:	f7b60030 	sdc1	$f22,48(sp)
    80c8:	f7b40028 	sdc1	$f20,40(sp)
    80cc:	afa500cc 	sw	a1,204(sp)
    80d0:	8ca50000 	lw	a1,0(a1)
    80d4:	00809825 	move	s3,a0
    80d8:	3c060000 	lui	a2,0x0
    80dc:	24c60000 	addiu	a2,a2,0
    80e0:	27a400b0 	addiu	a0,sp,176
    80e4:	240719a3 	li	a3,6563
    80e8:	0c000000 	jal	0 <BossSst_Init>
    80ec:	00a0a025 	move	s4,a1
    80f0:	8faf00cc 	lw	t7,204(sp)
    80f4:	0c000000 	jal	0 <BossSst_Init>
    80f8:	8de40000 	lw	a0,0(t7)
    80fc:	8e8202c0 	lw	v0,704(s4)
    8100:	3c19fa00 	lui	t9,0xfa00
    8104:	37390080 	ori	t9,t9,0x80
    8108:	24580008 	addiu	t8,v0,8
    810c:	ae9802c0 	sw	t8,704(s4)
    8110:	3c040000 	lui	a0,0x0
    8114:	24840000 	addiu	a0,a0,0
    8118:	ac590000 	sw	t9,0(v0)
    811c:	908c0001 	lbu	t4,1(a0)
    8120:	90890000 	lbu	t1,0(a0)
    8124:	90980002 	lbu	t8,2(a0)
    8128:	000c6c00 	sll	t5,t4,0x10
    812c:	00095600 	sll	t2,t1,0x18
    8130:	014d7025 	or	t6,t2,t5
    8134:	0018ca00 	sll	t9,t8,0x8
    8138:	01d94025 	or	t0,t6,t9
    813c:	350900ff 	ori	t1,t0,0xff
    8140:	3c0b0000 	lui	t3,0x0
    8144:	ac490004 	sw	t1,4(v0)
    8148:	8d6b0000 	lw	t3,0(t3)
    814c:	3c040000 	lui	a0,0x0
    8150:	24840000 	addiu	a0,a0,0
    8154:	1560000b 	bnez	t3,8184 <BossSst_Draw+0xec>
    8158:	3c18fb00 	lui	t8,0xfb00
    815c:	8e8202c0 	lw	v0,704(s4)
    8160:	3c0adb06 	lui	t2,0xdb06
    8164:	3c0d0000 	lui	t5,0x0
    8168:	244c0008 	addiu	t4,v0,8
    816c:	ae8c02c0 	sw	t4,704(s4)
    8170:	25ad0010 	addiu	t5,t5,16
    8174:	354a0020 	ori	t2,t2,0x20
    8178:	ac4a0000 	sw	t2,0(v0)
    817c:	10000017 	b	81dc <BossSst_Draw+0x144>
    8180:	ac4d0004 	sw	t5,4(v0)
    8184:	8e8202c0 	lw	v0,704(s4)
    8188:	3c09db06 	lui	t1,0xdb06
    818c:	35290020 	ori	t1,t1,0x20
    8190:	244f0008 	addiu	t7,v0,8
    8194:	ae8f02c0 	sw	t7,704(s4)
    8198:	ac580000 	sw	t8,0(v0)
    819c:	908b0001 	lbu	t3,1(a0)
    81a0:	90990000 	lbu	t9,0(a0)
    81a4:	908f0002 	lbu	t7,2(a0)
    81a8:	000b6400 	sll	t4,t3,0x10
    81ac:	00194600 	sll	t0,t9,0x18
    81b0:	010c5025 	or	t2,t0,t4
    81b4:	000fc200 	sll	t8,t7,0x8
    81b8:	01587025 	or	t6,t2,t8
    81bc:	ac4e0004 	sw	t6,4(v0)
    81c0:	8e8202c0 	lw	v0,704(s4)
    81c4:	3c0b0000 	lui	t3,0x0
    81c8:	256b0000 	addiu	t3,t3,0
    81cc:	24590008 	addiu	t9,v0,8
    81d0:	ae9902c0 	sw	t9,704(s4)
    81d4:	ac4b0004 	sw	t3,4(v0)
    81d8:	ac490000 	sw	t1,0(v0)
    81dc:	8e650150 	lw	a1,336(s3)
    81e0:	8e66016c 	lw	a2,364(s3)
    81e4:	9267014e 	lbu	a3,334(s3)
    81e8:	3c080000 	lui	t0,0x0
    81ec:	3c0c0000 	lui	t4,0x0
    81f0:	258c0000 	addiu	t4,t4,0
    81f4:	25080000 	addiu	t0,t0,0
    81f8:	afa80010 	sw	t0,16(sp)
    81fc:	afac0014 	sw	t4,20(sp)
    8200:	afb30018 	sw	s3,24(sp)
    8204:	0c000000 	jal	0 <BossSst_Init>
    8208:	8fa400cc 	lw	a0,204(sp)
    820c:	866d09d2 	lh	t5,2514(s3)
    8210:	8faf00cc 	lw	t7,204(sp)
    8214:	29a10002 	slti	at,t5,2
    8218:	5420007f 	bnezl	at,8418 <BossSst_Draw+0x380>
    821c:	8fa900cc 	lw	t1,204(sp)
    8220:	0c000000 	jal	0 <BossSst_Init>
    8224:	8de40000 	lw	a0,0(t7)
    8228:	866a09d0 	lh	t2,2512(s3)
    822c:	24030007 	li	v1,7
    8230:	2406001c 	li	a2,28
    8234:	25580004 	addiu	t8,t2,4
    8238:	0303001a 	div	zero,t8,v1
    823c:	0000a810 	mfhi	s5
    8240:	26b90002 	addiu	t9,s5,2
    8244:	866209d2 	lh	v0,2514(s3)
    8248:	02a60019 	multu	s5,a2
    824c:	00008825 	move	s1,zero
    8250:	00021043 	sra	v0,v0,0x1
    8254:	14600002 	bnez	v1,8260 <BossSst_Draw+0x1c8>
    8258:	00000000 	nop
    825c:	0007000d 	break	0x7
    8260:	2401ffff 	li	at,-1
    8264:	14610004 	bne	v1,at,8278 <BossSst_Draw+0x1e0>
    8268:	3c018000 	lui	at,0x8000
    826c:	17010002 	bne	t8,at,8278 <BossSst_Draw+0x1e0>
    8270:	00000000 	nop
    8274:	0006000d 	break	0x6
    8278:	00007012 	mflo	t6
    827c:	026e8021 	addu	s0,s3,t6
    8280:	261009d4 	addiu	s0,s0,2516
    8284:	0323001a 	div	zero,t9,v1
    8288:	00004810 	mfhi	t1
    828c:	afb0009c 	sw	s0,156(sp)
    8290:	14600002 	bnez	v1,829c <BossSst_Draw+0x204>
    8294:	00000000 	nop
    8298:	0007000d 	break	0x7
    829c:	2401ffff 	li	at,-1
    82a0:	14610004 	bne	v1,at,82b4 <BossSst_Draw+0x21c>
    82a4:	3c018000 	lui	at,0x8000
    82a8:	17210002 	bne	t9,at,82b4 <BossSst_Draw+0x21c>
    82ac:	00000000 	nop
    82b0:	0006000d 	break	0x6
    82b4:	01260019 	multu	t1,a2
    82b8:	3c014461 	lui	at,0x4461
    82bc:	00005812 	mflo	t3
    82c0:	026b2021 	addu	a0,s3,t3
    82c4:	18400053 	blez	v0,8414 <BossSst_Draw+0x37c>
    82c8:	248409d4 	addiu	a0,a0,2516
    82cc:	4481b000 	mtc1	at,$f22
    82d0:	3c010000 	lui	at,0x0
    82d4:	c4340000 	lwc1	$f20,0(at)
    82d8:	afa2008c 	sw	v0,140(sp)
    82dc:	0c000000 	jal	0 <BossSst_Init>
    82e0:	02002825 	move	a1,s0
    82e4:	4600b03c 	c.lt.s	$f22,$f0
    82e8:	3c120000 	lui	s2,0x0
    82ec:	26520000 	addiu	s2,s2,0
    82f0:	2607000c 	addiu	a3,s0,12
    82f4:	45000039 	bc1f	83dc <BossSst_Draw+0x344>
    82f8:	24080003 	li	t0,3
    82fc:	01111023 	subu	v0,t0,s1
    8300:	0002b080 	sll	s6,v0,0x2
    8304:	0002b880 	sll	s7,v0,0x2
    8308:	0002f100 	sll	s8,v0,0x4
    830c:	03c2f023 	subu	s8,s8,v0
    8310:	02e2b821 	addu	s7,s7,v0
    8314:	02c2b021 	addu	s6,s6,v0
    8318:	3c0c0000 	lui	t4,0x0
    831c:	258c0000 	addiu	t4,t4,0
    8320:	0016b040 	sll	s6,s6,0x1
    8324:	0017b880 	sll	s7,s7,0x2
    8328:	001ef040 	sll	s8,s8,0x1
    832c:	c60c0000 	lwc1	$f12,0(s0)
    8330:	c60e0004 	lwc1	$f14,4(s0)
    8334:	8e060008 	lw	a2,8(s0)
    8338:	afac0068 	sw	t4,104(sp)
    833c:	27de0046 	addiu	s8,s8,70
    8340:	26f70032 	addiu	s7,s7,50
    8344:	0c000000 	jal	0 <BossSst_Init>
    8348:	26d60014 	addiu	s6,s6,20
    834c:	4406a000 	mfc1	a2,$f20
    8350:	4600a306 	mov.s	$f12,$f20
    8354:	4600a386 	mov.s	$f14,$f20
    8358:	0c000000 	jal	0 <BossSst_Init>
    835c:	24070001 	li	a3,1
    8360:	8e8302d0 	lw	v1,720(s4)
    8364:	3c0fdb06 	lui	t7,0xdb06
    8368:	35ef0020 	ori	t7,t7,0x20
    836c:	246d0008 	addiu	t5,v1,8
    8370:	ae8d02d0 	sw	t5,720(s4)
    8374:	ac720004 	sw	s2,4(v1)
    8378:	ac6f0000 	sw	t7,0(v1)
    837c:	8e8302d0 	lw	v1,720(s4)
    8380:	32e900ff 	andi	t1,s7,0xff
    8384:	00095a00 	sll	t3,t1,0x8
    8388:	0016ce00 	sll	t9,s6,0x18
    838c:	246a0008 	addiu	t2,v1,8
    8390:	ae8a02d0 	sw	t2,720(s4)
    8394:	032b4025 	or	t0,t9,t3
    8398:	33cc00ff 	andi	t4,s8,0xff
    839c:	010c6825 	or	t5,t0,t4
    83a0:	3c18fa00 	lui	t8,0xfa00
    83a4:	ac780000 	sw	t8,0(v1)
    83a8:	ac6d0004 	sw	t5,4(v1)
    83ac:	8faf0068 	lw	t7,104(sp)
    83b0:	9267014e 	lbu	a3,334(s3)
    83b4:	8e66016c 	lw	a2,364(s3)
    83b8:	8e650150 	lw	a1,336(s3)
    83bc:	afb00018 	sw	s0,24(sp)
    83c0:	afa00014 	sw	zero,20(sp)
    83c4:	afaf0010 	sw	t7,16(sp)
    83c8:	8e8a02d0 	lw	t2,720(s4)
    83cc:	8fa400cc 	lw	a0,204(sp)
    83d0:	0c000000 	jal	0 <BossSst_Init>
    83d4:	afaa001c 	sw	t2,28(sp)
    83d8:	ae8202d0 	sw	v0,720(s4)
    83dc:	26b50005 	addiu	s5,s5,5
    83e0:	24010007 	li	at,7
    83e4:	02a1001a 	div	zero,s5,at
    83e8:	0000a810 	mfhi	s5
    83ec:	0015c0c0 	sll	t8,s5,0x3
    83f0:	0315c023 	subu	t8,t8,s5
    83f4:	8fae008c 	lw	t6,140(sp)
    83f8:	0018c080 	sll	t8,t8,0x2
    83fc:	02788021 	addu	s0,s3,t8
    8400:	26310001 	addiu	s1,s1,1
    8404:	8fa4009c 	lw	a0,156(sp)
    8408:	261009d4 	addiu	s0,s0,2516
    840c:	162effb3 	bne	s1,t6,82dc <BossSst_Draw+0x244>
    8410:	afb0009c 	sw	s0,156(sp)
    8414:	8fa900cc 	lw	t1,204(sp)
    8418:	3c060000 	lui	a2,0x0
    841c:	24c60000 	addiu	a2,a2,0
    8420:	27a400b0 	addiu	a0,sp,176
    8424:	240719fe 	li	a3,6654
    8428:	0c000000 	jal	0 <BossSst_Init>
    842c:	8d250000 	lw	a1,0(t1)
    8430:	02602025 	move	a0,s3
    8434:	0c000000 	jal	0 <BossSst_Init>
    8438:	8fa500cc 	lw	a1,204(sp)
    843c:	8fbf005c 	lw	ra,92(sp)
    8440:	d7b40028 	ldc1	$f20,40(sp)
    8444:	d7b60030 	ldc1	$f22,48(sp)
    8448:	8fb00038 	lw	s0,56(sp)
    844c:	8fb1003c 	lw	s1,60(sp)
    8450:	8fb20040 	lw	s2,64(sp)
    8454:	8fb30044 	lw	s3,68(sp)
    8458:	8fb40048 	lw	s4,72(sp)
    845c:	8fb5004c 	lw	s5,76(sp)
    8460:	8fb60050 	lw	s6,80(sp)
    8464:	8fb70054 	lw	s7,84(sp)
    8468:	8fbe0058 	lw	s8,88(sp)
    846c:	03e00008 	jr	ra
    8470:	27bd00c8 	addiu	sp,sp,200

00008474 <func_80934A44>:
    8474:	27bdffc8 	addiu	sp,sp,-56
    8478:	afa40038 	sw	a0,56(sp)
    847c:	8fa4004c 	lw	a0,76(sp)
    8480:	afbf0014 	sw	ra,20(sp)
    8484:	afa70044 	sw	a3,68(sp)
    8488:	8c8e0004 	lw	t6,4(a0)
    848c:	24010080 	li	at,128
    8490:	31cf0080 	andi	t7,t6,0x80
    8494:	51e10007 	beql	t7,at,84b4 <func_80934A44+0x40>
    8498:	8c820190 	lw	v0,400(a0)
    849c:	80980194 	lb	t8,404(a0)
    84a0:	53000004 	beqzl	t8,84b4 <func_80934A44+0x40>
    84a4:	8c820190 	lw	v0,400(a0)
    84a8:	100001ea 	b	8c54 <func_80934A44+0x7e0>
    84ac:	acc00000 	sw	zero,0(a2)
    84b0:	8c820190 	lw	v0,400(a0)
    84b4:	3c190000 	lui	t9,0x0
    84b8:	27390000 	addiu	t9,t9,0
    84bc:	17220166 	bne	t9,v0,8a58 <func_80934A44+0x5e4>
    84c0:	3c090000 	lui	t1,0x0
    84c4:	84820198 	lh	v0,408(a0)
    84c8:	2401000a 	li	at,10
    84cc:	0041001a 	div	zero,v0,at
    84d0:	00004012 	mflo	t0
    84d4:	25090001 	addiu	t1,t0,1
    84d8:	24010003 	li	at,3
    84dc:	10a10006 	beq	a1,at,84f8 <func_80934A44+0x84>
    84e0:	afa90030 	sw	t1,48(sp)
    84e4:	24010027 	li	at,39
    84e8:	10a10003 	beq	a1,at,84f8 <func_80934A44+0x84>
    84ec:	2401002a 	li	at,42
    84f0:	14a10070 	bne	a1,at,86b4 <func_80934A44+0x240>
    84f4:	24030005 	li	v1,5
    84f8:	44822000 	mtc1	v0,$f4
    84fc:	3c010000 	lui	at,0x0
    8500:	c4280000 	lwc1	$f8,0(at)
    8504:	468021a0 	cvt.s.w	$f6,$f4
    8508:	afa5003c 	sw	a1,60(sp)
    850c:	46083302 	mul.s	$f12,$f6,$f8
    8510:	0c000000 	jal	0 <BossSst_Init>
    8514:	00000000 	nop
    8518:	0c000000 	jal	0 <BossSst_Init>
    851c:	e7a00024 	swc1	$f0,36(sp)
    8520:	3c0144a0 	lui	at,0x44a0
    8524:	44818000 	mtc1	at,$f16
    8528:	3c014520 	lui	at,0x4520
    852c:	44812000 	mtc1	at,$f4
    8530:	46008482 	mul.s	$f18,$f16,$f0
    8534:	8faa0030 	lw	t2,48(sp)
    8538:	3c014180 	lui	at,0x4180
    853c:	44814000 	mtc1	at,$f8
    8540:	448a5000 	mtc1	t2,$f10
    8544:	8fa20048 	lw	v0,72(sp)
    8548:	8fa4004c 	lw	a0,76(sp)
    854c:	46049180 	add.s	$f6,$f18,$f4
    8550:	844b0000 	lh	t3,0(v0)
    8554:	c7b20024 	lwc1	$f18,36(sp)
    8558:	468050a0 	cvt.s.w	$f2,$f10
    855c:	24010005 	li	at,5
    8560:	46083283 	div.s	$f10,$f6,$f8
    8564:	448b3000 	mtc1	t3,$f6
    8568:	00000000 	nop
    856c:	46803220 	cvt.s.w	$f8,$f6
    8570:	46025402 	mul.s	$f16,$f10,$f2
    8574:	00000000 	nop
    8578:	46128102 	mul.s	$f4,$f16,$f18
    857c:	46044280 	add.s	$f10,$f8,$f4
    8580:	4600540d 	trunc.w.s	$f16,$f10
    8584:	440d8000 	mfc1	t5,$f16
    8588:	00000000 	nop
    858c:	a44d0000 	sh	t5,0(v0)
    8590:	848e0198 	lh	t6,408(a0)
    8594:	e7a2001c 	swc1	$f2,28(sp)
    8598:	01c1001a 	div	zero,t6,at
    859c:	00007810 	mfhi	t7
    85a0:	448f9000 	mtc1	t7,$f18
    85a4:	3c010000 	lui	at,0x0
    85a8:	c4280000 	lwc1	$f8,0(at)
    85ac:	468091a0 	cvt.s.w	$f6,$f18
    85b0:	46083302 	mul.s	$f12,$f6,$f8
    85b4:	0c000000 	jal	0 <BossSst_Init>
    85b8:	00000000 	nop
    85bc:	0c000000 	jal	0 <BossSst_Init>
    85c0:	e7a00024 	swc1	$f0,36(sp)
    85c4:	3c014580 	lui	at,0x4580
    85c8:	44811000 	mtc1	at,$f2
    85cc:	3c014500 	lui	at,0x4500
    85d0:	44812000 	mtc1	at,$f4
    85d4:	3c014180 	lui	at,0x4180
    85d8:	44819000 	mtc1	at,$f18
    85dc:	46002282 	mul.s	$f10,$f4,$f0
    85e0:	c7a8001c 	lwc1	$f8,28(sp)
    85e4:	8fa20048 	lw	v0,72(sp)
    85e8:	8fa5003c 	lw	a1,60(sp)
    85ec:	8fa4004c 	lw	a0,76(sp)
    85f0:	84580004 	lh	t8,4(v0)
    85f4:	24010003 	li	at,3
    85f8:	46025400 	add.s	$f16,$f10,$f2
    85fc:	c7aa0024 	lwc1	$f10,36(sp)
    8600:	46128183 	div.s	$f6,$f16,$f18
    8604:	46083102 	mul.s	$f4,$f6,$f8
    8608:	44983000 	mtc1	t8,$f6
    860c:	00000000 	nop
    8610:	46803220 	cvt.s.w	$f8,$f6
    8614:	460a2402 	mul.s	$f16,$f4,$f10
    8618:	46028480 	add.s	$f18,$f16,$f2
    861c:	46124101 	sub.s	$f4,$f8,$f18
    8620:	4600228d 	trunc.w.s	$f10,$f4
    8624:	44085000 	mfc1	t0,$f10
    8628:	14a1018a 	bne	a1,at,8c54 <func_80934A44+0x7e0>
    862c:	a4480004 	sh	t0,4(v0)
    8630:	84890198 	lh	t1,408(a0)
    8634:	3c010000 	lui	at,0x0
    8638:	c4280000 	lwc1	$f8,0(at)
    863c:	44898000 	mtc1	t1,$f16
    8640:	00000000 	nop
    8644:	468081a0 	cvt.s.w	$f6,$f16
    8648:	46083302 	mul.s	$f12,$f6,$f8
    864c:	0c000000 	jal	0 <BossSst_Init>
    8650:	00000000 	nop
    8654:	0c000000 	jal	0 <BossSst_Init>
    8658:	e7a00024 	swc1	$f0,36(sp)
    865c:	3c0144a0 	lui	at,0x44a0
    8660:	44819000 	mtc1	at,$f18
    8664:	3c014520 	lui	at,0x4520
    8668:	44815000 	mtc1	at,$f10
    866c:	46009102 	mul.s	$f4,$f18,$f0
    8670:	3c014180 	lui	at,0x4180
    8674:	44813000 	mtc1	at,$f6
    8678:	c7b2001c 	lwc1	$f18,28(sp)
    867c:	8fa20048 	lw	v0,72(sp)
    8680:	460a2400 	add.s	$f16,$f4,$f10
    8684:	844a0002 	lh	t2,2(v0)
    8688:	c7aa0024 	lwc1	$f10,36(sp)
    868c:	46068203 	div.s	$f8,$f16,$f6
    8690:	448a3000 	mtc1	t2,$f6
    8694:	46124102 	mul.s	$f4,$f8,$f18
    8698:	46803220 	cvt.s.w	$f8,$f6
    869c:	460a2402 	mul.s	$f16,$f4,$f10
    86a0:	46104480 	add.s	$f18,$f8,$f16
    86a4:	4600910d 	trunc.w.s	$f4,$f18
    86a8:	440c2000 	mfc1	t4,$f4
    86ac:	10000169 	b	8c54 <func_80934A44+0x7e0>
    86b0:	a44c0002 	sh	t4,2(v0)
    86b4:	10a30004 	beq	a1,v1,86c8 <func_80934A44+0x254>
    86b8:	00000000 	nop
    86bc:	24010006 	li	at,6
    86c0:	54a10076 	bnel	a1,at,889c <func_80934A44+0x428>
    86c4:	24010002 	li	at,2
    86c8:	0043001a 	div	zero,v0,v1
    86cc:	00006810 	mfhi	t5
    86d0:	448d5000 	mtc1	t5,$f10
    86d4:	14600002 	bnez	v1,86e0 <func_80934A44+0x26c>
    86d8:	00000000 	nop
    86dc:	0007000d 	break	0x7
    86e0:	2401ffff 	li	at,-1
    86e4:	14610004 	bne	v1,at,86f8 <func_80934A44+0x284>
    86e8:	3c018000 	lui	at,0x8000
    86ec:	14410002 	bne	v0,at,86f8 <func_80934A44+0x284>
    86f0:	00000000 	nop
    86f4:	0006000d 	break	0x6
    86f8:	468051a0 	cvt.s.w	$f6,$f10
    86fc:	3c010000 	lui	at,0x0
    8700:	c4280000 	lwc1	$f8,0(at)
    8704:	afa5003c 	sw	a1,60(sp)
    8708:	46083302 	mul.s	$f12,$f6,$f8
    870c:	0c000000 	jal	0 <BossSst_Init>
    8710:	00000000 	nop
    8714:	0c000000 	jal	0 <BossSst_Init>
    8718:	e7a00024 	swc1	$f0,36(sp)
    871c:	3c0144a0 	lui	at,0x44a0
    8720:	44817000 	mtc1	at,$f14
    8724:	3c014420 	lui	at,0x4420
    8728:	44819000 	mtc1	at,$f18
    872c:	3c014180 	lui	at,0x4180
    8730:	44813000 	mtc1	at,$f6
    8734:	46009102 	mul.s	$f4,$f18,$f0
    8738:	8fae0030 	lw	t6,48(sp)
    873c:	8fa20048 	lw	v0,72(sp)
    8740:	c7b20024 	lwc1	$f18,36(sp)
    8744:	448e8000 	mtc1	t6,$f16
    8748:	844f0004 	lh	t7,4(v0)
    874c:	8fa5003c 	lw	a1,60(sp)
    8750:	460e2280 	add.s	$f10,$f4,$f14
    8754:	8fa4004c 	lw	a0,76(sp)
    8758:	24010005 	li	at,5
    875c:	468080a0 	cvt.s.w	$f2,$f16
    8760:	46065203 	div.s	$f8,$f10,$f6
    8764:	448f3000 	mtc1	t7,$f6
    8768:	46024402 	mul.s	$f16,$f8,$f2
    876c:	46803220 	cvt.s.w	$f8,$f6
    8770:	46128102 	mul.s	$f4,$f16,$f18
    8774:	460e2280 	add.s	$f10,$f4,$f14
    8778:	460a4401 	sub.s	$f16,$f8,$f10
    877c:	4600848d 	trunc.w.s	$f18,$f16
    8780:	44199000 	mfc1	t9,$f18
    8784:	14a10133 	bne	a1,at,8c54 <func_80934A44+0x7e0>
    8788:	a4590004 	sh	t9,4(v0)
    878c:	84880198 	lh	t0,408(a0)
    8790:	3c010000 	lui	at,0x0
    8794:	c4280000 	lwc1	$f8,0(at)
    8798:	44882000 	mtc1	t0,$f4
    879c:	e7a2001c 	swc1	$f2,28(sp)
    87a0:	468021a0 	cvt.s.w	$f6,$f4
    87a4:	46083302 	mul.s	$f12,$f6,$f8
    87a8:	0c000000 	jal	0 <BossSst_Init>
    87ac:	00000000 	nop
    87b0:	0c000000 	jal	0 <BossSst_Init>
    87b4:	e7a00024 	swc1	$f0,36(sp)
    87b8:	3c0144a0 	lui	at,0x44a0
    87bc:	44815000 	mtc1	at,$f10
    87c0:	3c014520 	lui	at,0x4520
    87c4:	44819000 	mtc1	at,$f18
    87c8:	46005402 	mul.s	$f16,$f10,$f0
    87cc:	3c014180 	lui	at,0x4180
    87d0:	44813000 	mtc1	at,$f6
    87d4:	c7aa001c 	lwc1	$f10,28(sp)
    87d8:	8fa20048 	lw	v0,72(sp)
    87dc:	8fa4004c 	lw	a0,76(sp)
    87e0:	3c010000 	lui	at,0x0
    87e4:	46128100 	add.s	$f4,$f16,$f18
    87e8:	84490000 	lh	t1,0(v0)
    87ec:	c7b20024 	lwc1	$f18,36(sp)
    87f0:	46062203 	div.s	$f8,$f4,$f6
    87f4:	44893000 	mtc1	t1,$f6
    87f8:	460a4402 	mul.s	$f16,$f8,$f10
    87fc:	46803220 	cvt.s.w	$f8,$f6
    8800:	46128102 	mul.s	$f4,$f16,$f18
    8804:	46044280 	add.s	$f10,$f8,$f4
    8808:	4600540d 	trunc.w.s	$f16,$f10
    880c:	440b8000 	mfc1	t3,$f16
    8810:	00000000 	nop
    8814:	a44b0000 	sh	t3,0(v0)
    8818:	848c0198 	lh	t4,408(a0)
    881c:	c4280000 	lwc1	$f8,0(at)
    8820:	448c9000 	mtc1	t4,$f18
    8824:	00000000 	nop
    8828:	468091a0 	cvt.s.w	$f6,$f18
    882c:	46083302 	mul.s	$f12,$f6,$f8
    8830:	0c000000 	jal	0 <BossSst_Init>
    8834:	00000000 	nop
    8838:	0c000000 	jal	0 <BossSst_Init>
    883c:	e7a00024 	swc1	$f0,36(sp)
    8840:	3c0144a0 	lui	at,0x44a0
    8844:	44812000 	mtc1	at,$f4
    8848:	3c014520 	lui	at,0x4520
    884c:	44818000 	mtc1	at,$f16
    8850:	46002282 	mul.s	$f10,$f4,$f0
    8854:	3c014180 	lui	at,0x4180
    8858:	44813000 	mtc1	at,$f6
    885c:	c7a4001c 	lwc1	$f4,28(sp)
    8860:	8fa20048 	lw	v0,72(sp)
    8864:	46105480 	add.s	$f18,$f10,$f16
    8868:	844d0002 	lh	t5,2(v0)
    886c:	c7b00024 	lwc1	$f16,36(sp)
    8870:	46069203 	div.s	$f8,$f18,$f6
    8874:	448d3000 	mtc1	t5,$f6
    8878:	46044282 	mul.s	$f10,$f8,$f4
    887c:	46803220 	cvt.s.w	$f8,$f6
    8880:	46105482 	mul.s	$f18,$f10,$f16
    8884:	46124100 	add.s	$f4,$f8,$f18
    8888:	4600228d 	trunc.w.s	$f10,$f4
    888c:	440f5000 	mfc1	t7,$f10
    8890:	100000f0 	b	8c54 <func_80934A44+0x7e0>
    8894:	a44f0002 	sh	t7,2(v0)
    8898:	24010002 	li	at,2
    889c:	54a100ee 	bnel	a1,at,8c58 <func_80934A44+0x7e4>
    88a0:	8fbf0014 	lw	ra,20(sp)
    88a4:	44828000 	mtc1	v0,$f16
    88a8:	3c010000 	lui	at,0x0
    88ac:	c4280000 	lwc1	$f8,0(at)
    88b0:	468081a0 	cvt.s.w	$f6,$f16
    88b4:	46083302 	mul.s	$f12,$f6,$f8
    88b8:	0c000000 	jal	0 <BossSst_Init>
    88bc:	00000000 	nop
    88c0:	0c000000 	jal	0 <BossSst_Init>
    88c4:	e7a00024 	swc1	$f0,36(sp)
    88c8:	3c014400 	lui	at,0x4400
    88cc:	44812000 	mtc1	at,$f4
    88d0:	3c014480 	lui	at,0x4480
    88d4:	44818000 	mtc1	at,$f16
    88d8:	46002282 	mul.s	$f10,$f4,$f0
    88dc:	8fb80030 	lw	t8,48(sp)
    88e0:	3c014180 	lui	at,0x4180
    88e4:	44814000 	mtc1	at,$f8
    88e8:	44989000 	mtc1	t8,$f18
    88ec:	8fa20048 	lw	v0,72(sp)
    88f0:	8fa4004c 	lw	a0,76(sp)
    88f4:	46105180 	add.s	$f6,$f10,$f16
    88f8:	84590000 	lh	t9,0(v0)
    88fc:	c7aa0024 	lwc1	$f10,36(sp)
    8900:	468090a0 	cvt.s.w	$f2,$f18
    8904:	3c010000 	lui	at,0x0
    8908:	46083483 	div.s	$f18,$f6,$f8
    890c:	44993000 	mtc1	t9,$f6
    8910:	00000000 	nop
    8914:	46803220 	cvt.s.w	$f8,$f6
    8918:	46029102 	mul.s	$f4,$f18,$f2
    891c:	00000000 	nop
    8920:	460a2402 	mul.s	$f16,$f4,$f10
    8924:	46104480 	add.s	$f18,$f8,$f16
    8928:	4600910d 	trunc.w.s	$f4,$f18
    892c:	44092000 	mfc1	t1,$f4
    8930:	00000000 	nop
    8934:	a4490000 	sh	t1,0(v0)
    8938:	848a0198 	lh	t2,408(a0)
    893c:	c4280000 	lwc1	$f8,0(at)
    8940:	e7a2001c 	swc1	$f2,28(sp)
    8944:	448a5000 	mtc1	t2,$f10
    8948:	00000000 	nop
    894c:	468051a0 	cvt.s.w	$f6,$f10
    8950:	46083302 	mul.s	$f12,$f6,$f8
    8954:	0c000000 	jal	0 <BossSst_Init>
    8958:	00000000 	nop
    895c:	0c000000 	jal	0 <BossSst_Init>
    8960:	e7a00024 	swc1	$f0,36(sp)
    8964:	3c014400 	lui	at,0x4400
    8968:	44818000 	mtc1	at,$f16
    896c:	3c014480 	lui	at,0x4480
    8970:	44812000 	mtc1	at,$f4
    8974:	46008482 	mul.s	$f18,$f16,$f0
    8978:	3c014180 	lui	at,0x4180
    897c:	44813000 	mtc1	at,$f6
    8980:	c7b0001c 	lwc1	$f16,28(sp)
    8984:	8fa20048 	lw	v0,72(sp)
    8988:	8fa4004c 	lw	a0,76(sp)
    898c:	24010005 	li	at,5
    8990:	46049280 	add.s	$f10,$f18,$f4
    8994:	844b0002 	lh	t3,2(v0)
    8998:	c7a40024 	lwc1	$f4,36(sp)
    899c:	46065203 	div.s	$f8,$f10,$f6
    89a0:	448b3000 	mtc1	t3,$f6
    89a4:	46104482 	mul.s	$f18,$f8,$f16
    89a8:	46803220 	cvt.s.w	$f8,$f6
    89ac:	46049282 	mul.s	$f10,$f18,$f4
    89b0:	460a4400 	add.s	$f16,$f8,$f10
    89b4:	4600848d 	trunc.w.s	$f18,$f16
    89b8:	440d9000 	mfc1	t5,$f18
    89bc:	00000000 	nop
    89c0:	a44d0002 	sh	t5,2(v0)
    89c4:	848e0198 	lh	t6,408(a0)
    89c8:	01c1001a 	div	zero,t6,at
    89cc:	00007810 	mfhi	t7
    89d0:	448f2000 	mtc1	t7,$f4
    89d4:	3c010000 	lui	at,0x0
    89d8:	c4280000 	lwc1	$f8,0(at)
    89dc:	468021a0 	cvt.s.w	$f6,$f4
    89e0:	46083302 	mul.s	$f12,$f6,$f8
    89e4:	0c000000 	jal	0 <BossSst_Init>
    89e8:	00000000 	nop
    89ec:	0c000000 	jal	0 <BossSst_Init>
    89f0:	e7a00024 	swc1	$f0,36(sp)
    89f4:	3c014380 	lui	at,0x4380
    89f8:	44815000 	mtc1	at,$f10
    89fc:	3c014400 	lui	at,0x4400
    8a00:	44819000 	mtc1	at,$f18
    8a04:	46005402 	mul.s	$f16,$f10,$f0
    8a08:	3c014180 	lui	at,0x4180
    8a0c:	44813000 	mtc1	at,$f6
    8a10:	c7aa001c 	lwc1	$f10,28(sp)
    8a14:	8fa20048 	lw	v0,72(sp)
    8a18:	3c014400 	lui	at,0x4400
    8a1c:	46128100 	add.s	$f4,$f16,$f18
    8a20:	c7b20024 	lwc1	$f18,36(sp)
    8a24:	84580004 	lh	t8,4(v0)
    8a28:	46062203 	div.s	$f8,$f4,$f6
    8a2c:	44813000 	mtc1	at,$f6
    8a30:	460a4402 	mul.s	$f16,$f8,$f10
    8a34:	44985000 	mtc1	t8,$f10
    8a38:	46128102 	mul.s	$f4,$f16,$f18
    8a3c:	46805420 	cvt.s.w	$f16,$f10
    8a40:	46062200 	add.s	$f8,$f4,$f6
    8a44:	46088481 	sub.s	$f18,$f16,$f8
    8a48:	4600910d 	trunc.w.s	$f4,$f18
    8a4c:	44082000 	mfc1	t0,$f4
    8a50:	10000080 	b	8c54 <func_80934A44+0x7e0>
    8a54:	a4480004 	sh	t0,4(v0)
    8a58:	25290000 	addiu	t1,t1,0
    8a5c:	15220058 	bne	t1,v0,8bc0 <func_80934A44+0x74c>
    8a60:	00000000 	nop
    8a64:	84820198 	lh	v0,408(a0)
    8a68:	28410031 	slti	at,v0,49
    8a6c:	54200004 	bnezl	at,8a80 <func_80934A44+0x60c>
    8a70:	28410007 	slti	at,v0,7
    8a74:	10000007 	b	8a94 <func_80934A44+0x620>
    8a78:	2446ffdc 	addiu	a2,v0,-36
    8a7c:	28410007 	slti	at,v0,7
    8a80:	14200003 	bnez	at,8a90 <func_80934A44+0x61c>
    8a84:	00401825 	move	v1,v0
    8a88:	10000001 	b	8a90 <func_80934A44+0x61c>
    8a8c:	24030006 	li	v1,6
    8a90:	00033040 	sll	a2,v1,0x1
    8a94:	24010003 	li	at,3
    8a98:	10a10005 	beq	a1,at,8ab0 <func_80934A44+0x63c>
    8a9c:	24010027 	li	at,39
    8aa0:	10a10003 	beq	a1,at,8ab0 <func_80934A44+0x63c>
    8aa4:	2401002a 	li	at,42
    8aa8:	54a10016 	bnel	a1,at,8b04 <func_80934A44+0x690>
    8aac:	24010005 	li	at,5
    8ab0:	44863000 	mtc1	a2,$f6
    8ab4:	3c010000 	lui	at,0x0
    8ab8:	c4300000 	lwc1	$f16,0(at)
    8abc:	468032a0 	cvt.s.w	$f10,$f6
    8ac0:	46105302 	mul.s	$f12,$f10,$f16
    8ac4:	0c000000 	jal	0 <BossSst_Init>
    8ac8:	00000000 	nop
    8acc:	8fa20048 	lw	v0,72(sp)
    8ad0:	3c014600 	lui	at,0x4600
    8ad4:	44812000 	mtc1	at,$f4
    8ad8:	844a0004 	lh	t2,4(v0)
    8adc:	46002182 	mul.s	$f6,$f4,$f0
    8ae0:	448a4000 	mtc1	t2,$f8
    8ae4:	00000000 	nop
    8ae8:	468044a0 	cvt.s.w	$f18,$f8
    8aec:	46069281 	sub.s	$f10,$f18,$f6
    8af0:	4600540d 	trunc.w.s	$f16,$f10
    8af4:	440c8000 	mfc1	t4,$f16
    8af8:	10000056 	b	8c54 <func_80934A44+0x7e0>
    8afc:	a44c0004 	sh	t4,4(v0)
    8b00:	24010005 	li	at,5
    8b04:	10a10003 	beq	a1,at,8b14 <func_80934A44+0x6a0>
    8b08:	24010006 	li	at,6
    8b0c:	54a10016 	bnel	a1,at,8b68 <func_80934A44+0x6f4>
    8b10:	24010002 	li	at,2
    8b14:	44864000 	mtc1	a2,$f8
    8b18:	3c010000 	lui	at,0x0
    8b1c:	c4320000 	lwc1	$f18,0(at)
    8b20:	46804120 	cvt.s.w	$f4,$f8
    8b24:	46122302 	mul.s	$f12,$f4,$f18
    8b28:	0c000000 	jal	0 <BossSst_Init>
    8b2c:	00000000 	nop
    8b30:	8fa20048 	lw	v0,72(sp)
    8b34:	3c014520 	lui	at,0x4520
    8b38:	44818000 	mtc1	at,$f16
    8b3c:	844d0004 	lh	t5,4(v0)
    8b40:	46008202 	mul.s	$f8,$f16,$f0
    8b44:	448d3000 	mtc1	t5,$f6
    8b48:	00000000 	nop
    8b4c:	468032a0 	cvt.s.w	$f10,$f6
    8b50:	46085101 	sub.s	$f4,$f10,$f8
    8b54:	4600248d 	trunc.w.s	$f18,$f4
    8b58:	440f9000 	mfc1	t7,$f18
    8b5c:	1000003d 	b	8c54 <func_80934A44+0x7e0>
    8b60:	a44f0004 	sh	t7,4(v0)
    8b64:	24010002 	li	at,2
    8b68:	54a1003b 	bnel	a1,at,8c58 <func_80934A44+0x7e4>
    8b6c:	8fbf0014 	lw	ra,20(sp)
    8b70:	44863000 	mtc1	a2,$f6
    8b74:	3c010000 	lui	at,0x0
    8b78:	c42a0000 	lwc1	$f10,0(at)
    8b7c:	46803420 	cvt.s.w	$f16,$f6
    8b80:	460a8302 	mul.s	$f12,$f16,$f10
    8b84:	0c000000 	jal	0 <BossSst_Init>
    8b88:	00000000 	nop
    8b8c:	8fa20048 	lw	v0,72(sp)
    8b90:	3c014480 	lui	at,0x4480
    8b94:	44819000 	mtc1	at,$f18
    8b98:	84580004 	lh	t8,4(v0)
    8b9c:	46009182 	mul.s	$f6,$f18,$f0
    8ba0:	44984000 	mtc1	t8,$f8
    8ba4:	00000000 	nop
    8ba8:	46804120 	cvt.s.w	$f4,$f8
    8bac:	46062401 	sub.s	$f16,$f4,$f6
    8bb0:	4600828d 	trunc.w.s	$f10,$f16
    8bb4:	44085000 	mfc1	t0,$f10
    8bb8:	10000026 	b	8c54 <func_80934A44+0x7e0>
    8bbc:	a4480004 	sh	t0,4(v0)
    8bc0:	3c090000 	lui	t1,0x0
    8bc4:	25290000 	addiu	t1,t1,0
    8bc8:	11220006 	beq	t1,v0,8be4 <func_80934A44+0x770>
    8bcc:	3c0a0000 	lui	t2,0x0
    8bd0:	254a0000 	addiu	t2,t2,0
    8bd4:	11420003 	beq	t2,v0,8be4 <func_80934A44+0x770>
    8bd8:	3c0b0000 	lui	t3,0x0
    8bdc:	256b0000 	addiu	t3,t3,0
    8be0:	1562001c 	bne	t3,v0,8c54 <func_80934A44+0x7e0>
    8be4:	24010003 	li	at,3
    8be8:	10a10006 	beq	a1,at,8c04 <func_80934A44+0x790>
    8bec:	8fa20048 	lw	v0,72(sp)
    8bf0:	24010027 	li	at,39
    8bf4:	10a10003 	beq	a1,at,8c04 <func_80934A44+0x790>
    8bf8:	2401002a 	li	at,42
    8bfc:	54a10006 	bnel	a1,at,8c18 <func_80934A44+0x7a4>
    8c00:	24010005 	li	at,5
    8c04:	844c0004 	lh	t4,4(v0)
    8c08:	258df000 	addiu	t5,t4,-4096
    8c0c:	10000011 	b	8c54 <func_80934A44+0x7e0>
    8c10:	a44d0004 	sh	t5,4(v0)
    8c14:	24010005 	li	at,5
    8c18:	10a10004 	beq	a1,at,8c2c <func_80934A44+0x7b8>
    8c1c:	8fa20048 	lw	v0,72(sp)
    8c20:	24010006 	li	at,6
    8c24:	54a10006 	bnel	a1,at,8c40 <func_80934A44+0x7cc>
    8c28:	24010002 	li	at,2
    8c2c:	844e0004 	lh	t6,4(v0)
    8c30:	25cffb00 	addiu	t7,t6,-1280
    8c34:	10000007 	b	8c54 <func_80934A44+0x7e0>
    8c38:	a44f0004 	sh	t7,4(v0)
    8c3c:	24010002 	li	at,2
    8c40:	14a10004 	bne	a1,at,8c54 <func_80934A44+0x7e0>
    8c44:	8fa20048 	lw	v0,72(sp)
    8c48:	84580004 	lh	t8,4(v0)
    8c4c:	2719fe00 	addiu	t9,t8,-512
    8c50:	a4590004 	sh	t9,4(v0)
    8c54:	8fbf0014 	lw	ra,20(sp)
    8c58:	27bd0038 	addiu	sp,sp,56
    8c5c:	00001025 	move	v0,zero
    8c60:	03e00008 	jr	ra
    8c64:	00000000 	nop

00008c68 <func_80935238>:
    8c68:	27bdffd8 	addiu	sp,sp,-40
    8c6c:	24010008 	li	at,8
    8c70:	afbf0014 	sw	ra,20(sp)
    8c74:	afa40028 	sw	a0,40(sp)
    8c78:	afa5002c 	sw	a1,44(sp)
    8c7c:	afa60030 	sw	a2,48(sp)
    8c80:	14a1001a 	bne	a1,at,8cec <func_80935238+0x84>
    8c84:	afa70034 	sw	a3,52(sp)
    8c88:	8fa50038 	lw	a1,56(sp)
    8c8c:	3c040000 	lui	a0,0x0
    8c90:	24840000 	addiu	a0,a0,0
    8c94:	0c000000 	jal	0 <BossSst_Init>
    8c98:	24a50038 	addiu	a1,a1,56
    8c9c:	3c040000 	lui	a0,0x0
    8ca0:	24840000 	addiu	a0,a0,0
    8ca4:	0c000000 	jal	0 <BossSst_Init>
    8ca8:	27a50018 	addiu	a1,sp,24
    8cac:	c7a40018 	lwc1	$f4,24(sp)
    8cb0:	8fa20038 	lw	v0,56(sp)
    8cb4:	4600218d 	trunc.w.s	$f6,$f4
    8cb8:	44183000 	mfc1	t8,$f6
    8cbc:	00000000 	nop
    8cc0:	a45806fa 	sh	t8,1786(v0)
    8cc4:	c7a8001c 	lwc1	$f8,28(sp)
    8cc8:	4600428d 	trunc.w.s	$f10,$f8
    8ccc:	44085000 	mfc1	t0,$f10
    8cd0:	00000000 	nop
    8cd4:	a44806fc 	sh	t0,1788(v0)
    8cd8:	c7b00020 	lwc1	$f16,32(sp)
    8cdc:	4600848d 	trunc.w.s	$f18,$f16
    8ce0:	440a9000 	mfc1	t2,$f18
    8ce4:	00000000 	nop
    8ce8:	a44a06fe 	sh	t2,1790(v0)
    8cec:	8fa20038 	lw	v0,56(sp)
    8cf0:	8fa4002c 	lw	a0,44(sp)
    8cf4:	0c000000 	jal	0 <BossSst_Init>
    8cf8:	244503d4 	addiu	a1,v0,980
    8cfc:	8fbf0014 	lw	ra,20(sp)
    8d00:	27bd0028 	addiu	sp,sp,40
    8d04:	03e00008 	jr	ra
    8d08:	00000000 	nop

00008d0c <func_809352DC>:
    8d0c:	27bdff60 	addiu	sp,sp,-160
    8d10:	afbf002c 	sw	ra,44(sp)
    8d14:	afb10028 	sw	s1,40(sp)
    8d18:	afb00024 	sw	s0,36(sp)
    8d1c:	afa500a4 	sw	a1,164(sp)
    8d20:	8ca50000 	lw	a1,0(a1)
    8d24:	00808825 	move	s1,a0
    8d28:	3c060000 	lui	a2,0x0
    8d2c:	24c60000 	addiu	a2,a2,0
    8d30:	27a40084 	addiu	a0,sp,132
    8d34:	24071a9a 	li	a3,6810
    8d38:	0c000000 	jal	0 <BossSst_Init>
    8d3c:	00a08025 	move	s0,a1
    8d40:	8e2f0004 	lw	t7,4(s1)
    8d44:	24010080 	li	at,128
    8d48:	8fb900a4 	lw	t9,164(sp)
    8d4c:	31f80080 	andi	t8,t7,0x80
    8d50:	1301003c 	beq	t8,at,8e44 <func_809352DC+0x138>
    8d54:	8faa00a4 	lw	t2,164(sp)
    8d58:	0c000000 	jal	0 <BossSst_Init>
    8d5c:	8f240000 	lw	a0,0(t9)
    8d60:	8e0202c0 	lw	v0,704(s0)
    8d64:	3c09fa00 	lui	t1,0xfa00
    8d68:	35290080 	ori	t1,t1,0x80
    8d6c:	24480008 	addiu	t0,v0,8
    8d70:	ae0802c0 	sw	t0,704(s0)
    8d74:	3c040000 	lui	a0,0x0
    8d78:	24840000 	addiu	a0,a0,0
    8d7c:	ac490000 	sw	t1,0(v0)
    8d80:	908e0001 	lbu	t6,1(a0)
    8d84:	908b0000 	lbu	t3,0(a0)
    8d88:	90880002 	lbu	t0,2(a0)
    8d8c:	000e7c00 	sll	t7,t6,0x10
    8d90:	000b6600 	sll	t4,t3,0x18
    8d94:	018fc025 	or	t8,t4,t7
    8d98:	00084a00 	sll	t1,t0,0x8
    8d9c:	03095025 	or	t2,t8,t1
    8da0:	354b00ff 	ori	t3,t2,0xff
    8da4:	3c0d0000 	lui	t5,0x0
    8da8:	ac4b0004 	sw	t3,4(v0)
    8dac:	8dad0000 	lw	t5,0(t5)
    8db0:	3c040000 	lui	a0,0x0
    8db4:	24840000 	addiu	a0,a0,0
    8db8:	15a0000b 	bnez	t5,8de8 <func_809352DC+0xdc>
    8dbc:	3c08fb00 	lui	t0,0xfb00
    8dc0:	8e0202c0 	lw	v0,704(s0)
    8dc4:	3c0cdb06 	lui	t4,0xdb06
    8dc8:	3c0f0000 	lui	t7,0x0
    8dcc:	244e0008 	addiu	t6,v0,8
    8dd0:	ae0e02c0 	sw	t6,704(s0)
    8dd4:	25ef0010 	addiu	t7,t7,16
    8dd8:	358c0020 	ori	t4,t4,0x20
    8ddc:	ac4c0000 	sw	t4,0(v0)
    8de0:	1000002b 	b	8e90 <func_809352DC+0x184>
    8de4:	ac4f0004 	sw	t7,4(v0)
    8de8:	8e0202c0 	lw	v0,704(s0)
    8dec:	3c0bdb06 	lui	t3,0xdb06
    8df0:	356b0020 	ori	t3,t3,0x20
    8df4:	24590008 	addiu	t9,v0,8
    8df8:	ae1902c0 	sw	t9,704(s0)
    8dfc:	ac480000 	sw	t0,0(v0)
    8e00:	908d0001 	lbu	t5,1(a0)
    8e04:	90890000 	lbu	t1,0(a0)
    8e08:	90990002 	lbu	t9,2(a0)
    8e0c:	000d7400 	sll	t6,t5,0x10
    8e10:	00095600 	sll	t2,t1,0x18
    8e14:	014e6025 	or	t4,t2,t6
    8e18:	00194200 	sll	t0,t9,0x8
    8e1c:	0188c025 	or	t8,t4,t0
    8e20:	ac580004 	sw	t8,4(v0)
    8e24:	8e0202c0 	lw	v0,704(s0)
    8e28:	3c0d0000 	lui	t5,0x0
    8e2c:	25ad0000 	addiu	t5,t5,0
    8e30:	24490008 	addiu	t1,v0,8
    8e34:	ae0902c0 	sw	t1,704(s0)
    8e38:	ac4d0004 	sw	t5,4(v0)
    8e3c:	10000014 	b	8e90 <func_809352DC+0x184>
    8e40:	ac4b0000 	sw	t3,0(v0)
    8e44:	0c000000 	jal	0 <BossSst_Init>
    8e48:	8d440000 	lw	a0,0(t2)
    8e4c:	8e0202d0 	lw	v0,720(s0)
    8e50:	3c0ffa00 	lui	t7,0xfa00
    8e54:	35ef0080 	ori	t7,t7,0x80
    8e58:	244e0008 	addiu	t6,v0,8
    8e5c:	ae0e02d0 	sw	t6,720(s0)
    8e60:	2419ffff 	li	t9,-1
    8e64:	ac590004 	sw	t9,4(v0)
    8e68:	ac4f0000 	sw	t7,0(v0)
    8e6c:	8e0202d0 	lw	v0,720(s0)
    8e70:	3c08db06 	lui	t0,0xdb06
    8e74:	3c180000 	lui	t8,0x0
    8e78:	244c0008 	addiu	t4,v0,8
    8e7c:	ae0c02d0 	sw	t4,720(s0)
    8e80:	27180010 	addiu	t8,t8,16
    8e84:	35080020 	ori	t0,t0,0x20
    8e88:	ac480000 	sw	t0,0(v0)
    8e8c:	ac580004 	sw	t8,4(v0)
    8e90:	8e2b0190 	lw	t3,400(s1)
    8e94:	3c090000 	lui	t1,0x0
    8e98:	25290000 	addiu	t1,t1,0
    8e9c:	552b002a 	bnel	t1,t3,8f48 <func_809352DC+0x23c>
    8ea0:	8e2a0004 	lw	t2,4(s1)
    8ea4:	0c000000 	jal	0 <BossSst_Init>
    8ea8:	00000000 	nop
    8eac:	3c010000 	lui	at,0x0
    8eb0:	c4240000 	lwc1	$f4,0(at)
    8eb4:	46040182 	mul.s	$f6,$f0,$f4
    8eb8:	0c000000 	jal	0 <BossSst_Init>
    8ebc:	e7a60068 	swc1	$f6,104(sp)
    8ec0:	3c010000 	lui	at,0x0
    8ec4:	c4280000 	lwc1	$f8,0(at)
    8ec8:	24050001 	li	a1,1
    8ecc:	46080302 	mul.s	$f12,$f0,$f8
    8ed0:	0c000000 	jal	0 <BossSst_Init>
    8ed4:	e7ac0064 	swc1	$f12,100(sp)
    8ed8:	c7ac0068 	lwc1	$f12,104(sp)
    8edc:	0c000000 	jal	0 <BossSst_Init>
    8ee0:	24050001 	li	a1,1
    8ee4:	862d0198 	lh	t5,408(s1)
    8ee8:	3c013f80 	lui	at,0x3f80
    8eec:	44811000 	mtc1	at,$f2
    8ef0:	448d5000 	mtc1	t5,$f10
    8ef4:	3c010000 	lui	at,0x0
    8ef8:	c4300000 	lwc1	$f16,0(at)
    8efc:	46805020 	cvt.s.w	$f0,$f10
    8f00:	3c010000 	lui	at,0x0
    8f04:	c4240000 	lwc1	$f4,0(at)
    8f08:	24070001 	li	a3,1
    8f0c:	46100482 	mul.s	$f18,$f0,$f16
    8f10:	46029300 	add.s	$f12,$f18,$f2
    8f14:	46040182 	mul.s	$f6,$f0,$f4
    8f18:	44066000 	mfc1	a2,$f12
    8f1c:	0c000000 	jal	0 <BossSst_Init>
    8f20:	46061381 	sub.s	$f14,$f2,$f6
    8f24:	c7ac0068 	lwc1	$f12,104(sp)
    8f28:	24050001 	li	a1,1
    8f2c:	0c000000 	jal	0 <BossSst_Init>
    8f30:	46006307 	neg.s	$f12,$f12
    8f34:	c7ac0064 	lwc1	$f12,100(sp)
    8f38:	24050001 	li	a1,1
    8f3c:	0c000000 	jal	0 <BossSst_Init>
    8f40:	46006307 	neg.s	$f12,$f12
    8f44:	8e2a0004 	lw	t2,4(s1)
    8f48:	24010080 	li	at,128
    8f4c:	3c080000 	lui	t0,0x0
    8f50:	314e0080 	andi	t6,t2,0x80
    8f54:	11c10011 	beq	t6,at,8f9c <func_809352DC+0x290>
    8f58:	25080000 	addiu	t0,t0,0
    8f5c:	8e250150 	lw	a1,336(s1)
    8f60:	8e26016c 	lw	a2,364(s1)
    8f64:	9227014e 	lbu	a3,334(s1)
    8f68:	3c0f0000 	lui	t7,0x0
    8f6c:	3c190000 	lui	t9,0x0
    8f70:	27390000 	addiu	t9,t9,0
    8f74:	25ef0000 	addiu	t7,t7,0
    8f78:	afaf0010 	sw	t7,16(sp)
    8f7c:	afb90014 	sw	t9,20(sp)
    8f80:	afb10018 	sw	s1,24(sp)
    8f84:	8e0c02c0 	lw	t4,704(s0)
    8f88:	8fa400a4 	lw	a0,164(sp)
    8f8c:	0c000000 	jal	0 <BossSst_Init>
    8f90:	afac001c 	sw	t4,28(sp)
    8f94:	1000000e 	b	8fd0 <func_809352DC+0x2c4>
    8f98:	ae0202c0 	sw	v0,704(s0)
    8f9c:	8e250150 	lw	a1,336(s1)
    8fa0:	8e26016c 	lw	a2,364(s1)
    8fa4:	9227014e 	lbu	a3,334(s1)
    8fa8:	3c180000 	lui	t8,0x0
    8fac:	27180000 	addiu	t8,t8,0
    8fb0:	afb80014 	sw	t8,20(sp)
    8fb4:	afb10018 	sw	s1,24(sp)
    8fb8:	afa80010 	sw	t0,16(sp)
    8fbc:	8e0902d0 	lw	t1,720(s0)
    8fc0:	8fa400a4 	lw	a0,164(sp)
    8fc4:	0c000000 	jal	0 <BossSst_Init>
    8fc8:	afa9001c 	sw	t1,28(sp)
    8fcc:	ae0202d0 	sw	v0,720(s0)
    8fd0:	8e2d0190 	lw	t5,400(s1)
    8fd4:	3c0b0000 	lui	t3,0x0
    8fd8:	256b0000 	addiu	t3,t3,0
    8fdc:	556d0058 	bnel	t3,t5,9140 <func_809352DC+0x434>
    8fe0:	8fb900a4 	lw	t9,164(sp)
    8fe4:	86220198 	lh	v0,408(s1)
    8fe8:	28410072 	slti	at,v0,114
    8fec:	10200053 	beqz	at,913c <func_809352DC+0x430>
    8ff0:	28410015 	slti	at,v0,21
    8ff4:	14200051 	bnez	at,913c <func_809352DC+0x430>
    8ff8:	8faa00a4 	lw	t2,164(sp)
    8ffc:	0c000000 	jal	0 <BossSst_Init>
    9000:	8d440000 	lw	a0,0(t2)
    9004:	8e0202d0 	lw	v0,720(s0)
    9008:	3c0ffa00 	lui	t7,0xfa00
    900c:	241912ff 	li	t9,4863
    9010:	244e0008 	addiu	t6,v0,8
    9014:	ae0e02d0 	sw	t6,720(s0)
    9018:	ac590004 	sw	t9,4(v0)
    901c:	ac4f0000 	sw	t7,0(v0)
    9020:	862c0198 	lh	t4,408(s1)
    9024:	24180388 	li	t8,904
    9028:	3c0143e1 	lui	at,0x43e1
    902c:	000c40c0 	sll	t0,t4,0x3
    9030:	03081023 	subu	v0,t8,t0
    9034:	44825000 	mtc1	v0,$f10
    9038:	44810000 	mtc1	at,$f0
    903c:	3c01420c 	lui	at,0x420c
    9040:	46805420 	cvt.s.w	$f16,$f10
    9044:	44814000 	mtc1	at,$f8
    9048:	3c01c37a 	lui	at,0xc37a
    904c:	44819000 	mtc1	at,$f18
    9050:	3c01433e 	lui	at,0x433e
    9054:	44813000 	mtc1	at,$f6
    9058:	46128100 	add.s	$f4,$f16,$f18
    905c:	3c010001 	lui	at,0x1
    9060:	27a40054 	addiu	a0,sp,84
    9064:	27a50048 	addiu	a1,sp,72
    9068:	4604003c 	c.lt.s	$f0,$f4
    906c:	e7a40058 	swc1	$f4,88(sp)
    9070:	e7a80054 	swc1	$f8,84(sp)
    9074:	e7a6005c 	swc1	$f6,92(sp)
    9078:	45020003 	bc1fl	9088 <func_809352DC+0x37c>
    907c:	8fa600a4 	lw	a2,164(sp)
    9080:	e7a00058 	swc1	$f0,88(sp)
    9084:	8fa600a4 	lw	a2,164(sp)
    9088:	34211da0 	ori	at,at,0x1da0
    908c:	0c000000 	jal	0 <BossSst_Init>
    9090:	00c13021 	addu	a2,a2,at
    9094:	c6280024 	lwc1	$f8,36(s1)
    9098:	c7aa0048 	lwc1	$f10,72(sp)
    909c:	c626002c 	lwc1	$f6,44(s1)
    90a0:	c7a40050 	lwc1	$f4,80(sp)
    90a4:	460a4300 	add.s	$f12,$f8,$f10
    90a8:	c6300028 	lwc1	$f16,40(s1)
    90ac:	c7b2004c 	lwc1	$f18,76(sp)
    90b0:	46043200 	add.s	$f8,$f6,$f4
    90b4:	00003825 	move	a3,zero
    90b8:	46128380 	add.s	$f14,$f16,$f18
    90bc:	44064000 	mfc1	a2,$f8
    90c0:	0c000000 	jal	0 <BossSst_Init>
    90c4:	00000000 	nop
    90c8:	3c013f80 	lui	at,0x3f80
    90cc:	44816000 	mtc1	at,$f12
    90d0:	24070001 	li	a3,1
    90d4:	44066000 	mfc1	a2,$f12
    90d8:	0c000000 	jal	0 <BossSst_Init>
    90dc:	46006386 	mov.s	$f14,$f12
    90e0:	8e0202d0 	lw	v0,720(s0)
    90e4:	3c0bda38 	lui	t3,0xda38
    90e8:	356b0003 	ori	t3,t3,0x3
    90ec:	24490008 	addiu	t1,v0,8
    90f0:	ae0902d0 	sw	t1,720(s0)
    90f4:	ac4b0000 	sw	t3,0(v0)
    90f8:	8fad00a4 	lw	t5,164(sp)
    90fc:	3c050000 	lui	a1,0x0
    9100:	24a50000 	addiu	a1,a1,0
    9104:	8da40000 	lw	a0,0(t5)
    9108:	24061b16 	li	a2,6934
    910c:	0c000000 	jal	0 <BossSst_Init>
    9110:	afa20040 	sw	v0,64(sp)
    9114:	8fa30040 	lw	v1,64(sp)
    9118:	3c0f0000 	lui	t7,0x0
    911c:	25ef0000 	addiu	t7,t7,0
    9120:	ac620004 	sw	v0,4(v1)
    9124:	8e0202d0 	lw	v0,720(s0)
    9128:	3c0ede00 	lui	t6,0xde00
    912c:	244a0008 	addiu	t2,v0,8
    9130:	ae0a02d0 	sw	t2,720(s0)
    9134:	ac4f0004 	sw	t7,4(v0)
    9138:	ac4e0000 	sw	t6,0(v0)
    913c:	8fb900a4 	lw	t9,164(sp)
    9140:	3c060000 	lui	a2,0x0
    9144:	24c60000 	addiu	a2,a2,0
    9148:	27a40084 	addiu	a0,sp,132
    914c:	24071b1d 	li	a3,6941
    9150:	0c000000 	jal	0 <BossSst_Init>
    9154:	8f250000 	lw	a1,0(t9)
    9158:	8fa400a4 	lw	a0,164(sp)
    915c:	3c010001 	lui	at,0x1
    9160:	34211d60 	ori	at,at,0x1d60
    9164:	26250038 	addiu	a1,s1,56
    9168:	262603c8 	addiu	a2,s1,968
    916c:	0c000000 	jal	0 <BossSst_Init>
    9170:	00812021 	addu	a0,a0,at
    9174:	02202025 	move	a0,s1
    9178:	0c000000 	jal	0 <BossSst_Init>
    917c:	8fa500a4 	lw	a1,164(sp)
    9180:	8fbf002c 	lw	ra,44(sp)
    9184:	8fb00024 	lw	s0,36(sp)
    9188:	8fb10028 	lw	s1,40(sp)
    918c:	03e00008 	jr	ra
    9190:	27bd00a0 	addiu	sp,sp,160

00009194 <func_80935764>:
    9194:	27bdffd0 	addiu	sp,sp,-48
    9198:	afb00018 	sw	s0,24(sp)
    919c:	afbf001c 	sw	ra,28(sp)
    91a0:	240e0003 	li	t6,3
    91a4:	00808025 	move	s0,a0
    91a8:	a08e0196 	sb	t6,406(a0)
    91ac:	0c000000 	jal	0 <BossSst_Init>
    91b0:	848400b6 	lh	a0,182(a0)
    91b4:	860400b6 	lh	a0,182(s0)
    91b8:	0c000000 	jal	0 <BossSst_Init>
    91bc:	e7a00024 	swc1	$f0,36(sp)
    91c0:	3c030000 	lui	v1,0x0
    91c4:	3c070000 	lui	a3,0x0
    91c8:	44806000 	mtc1	zero,$f12
    91cc:	c7a20024 	lwc1	$f2,36(sp)
    91d0:	24e70000 	addiu	a3,a3,0
    91d4:	24630000 	addiu	v1,v1,0
    91d8:	02001025 	move	v0,s0
    91dc:	24060041 	li	a2,65
    91e0:	240500fe 	li	a1,254
    91e4:	240405aa 	li	a0,1450
    91e8:	c4680008 	lwc1	$f8,8(v1)
    91ec:	2463000c 	addiu	v1,v1,12
    91f0:	c6120024 	lwc1	$f18,36(s0)
    91f4:	46081402 	mul.s	$f16,$f2,$f8
    91f8:	10670019 	beq	v1,a3,9260 <func_80935764+0xcc>
    91fc:	c46efff4 	lwc1	$f14,-12(v1)
    9200:	460e0282 	mul.s	$f10,$f0,$f14
    9204:	46109200 	add.s	$f8,$f18,$f16
    9208:	e44c0704 	swc1	$f12,1796(v0)
    920c:	2463000c 	addiu	v1,v1,12
    9210:	24420028 	addiu	v0,v0,40
    9214:	460a4280 	add.s	$f10,$f8,$f10
    9218:	e44a06d8 	swc1	$f10,1752(v0)
    921c:	c46afff0 	lwc1	$f10,-16(v1)
    9220:	c468ffe8 	lwc1	$f8,-24(v1)
    9224:	c606002c 	lwc1	$f6,44(s0)
    9228:	460a0282 	mul.s	$f10,$f0,$f10
    922c:	a44406f6 	sh	a0,1782(v0)
    9230:	a04506fc 	sb	a1,1788(v0)
    9234:	46081202 	mul.s	$f8,$f2,$f8
    9238:	a44606fa 	sh	a2,1786(v0)
    923c:	460a3280 	add.s	$f10,$f6,$f10
    9240:	46085201 	sub.s	$f8,$f10,$f8
    9244:	e44806e0 	swc1	$f8,1760(v0)
    9248:	c468fffc 	lwc1	$f8,-4(v1)
    924c:	c6120024 	lwc1	$f18,36(s0)
    9250:	c46efff4 	lwc1	$f14,-12(v1)
    9254:	46081402 	mul.s	$f16,$f2,$f8
    9258:	1467ffe9 	bne	v1,a3,9200 <func_80935764+0x6c>
    925c:	00000000 	nop
    9260:	460e0282 	mul.s	$f10,$f0,$f14
    9264:	46109200 	add.s	$f8,$f18,$f16
    9268:	e44c0704 	swc1	$f12,1796(v0)
    926c:	24420028 	addiu	v0,v0,40
    9270:	460a4280 	add.s	$f10,$f8,$f10
    9274:	e44a06d8 	swc1	$f10,1752(v0)
    9278:	c46afffc 	lwc1	$f10,-4(v1)
    927c:	c468fff4 	lwc1	$f8,-12(v1)
    9280:	c606002c 	lwc1	$f6,44(s0)
    9284:	460a0282 	mul.s	$f10,$f0,$f10
    9288:	a44406f6 	sh	a0,1782(v0)
    928c:	a04506fc 	sb	a1,1788(v0)
    9290:	46081202 	mul.s	$f8,$f2,$f8
    9294:	a44606fa 	sh	a2,1786(v0)
    9298:	460a3280 	add.s	$f10,$f6,$f10
    929c:	46085201 	sub.s	$f8,$f10,$f8
    92a0:	e44806e0 	swc1	$f8,1760(v0)
    92a4:	240fffff 	li	t7,-1
    92a8:	a60f079a 	sh	t7,1946(s0)
    92ac:	8fbf001c 	lw	ra,28(sp)
    92b0:	8fb00018 	lw	s0,24(sp)
    92b4:	27bd0030 	addiu	sp,sp,48
    92b8:	03e00008 	jr	ra
    92bc:	00000000 	nop

000092c0 <func_80935890>:
    92c0:	27bdffe8 	addiu	sp,sp,-24
    92c4:	afbf0014 	sw	ra,20(sp)
    92c8:	240e0003 	li	t6,3
    92cc:	00802825 	move	a1,a0
    92d0:	a08e0196 	sb	t6,406(a0)
    92d4:	848400b6 	lh	a0,182(a0)
    92d8:	0c000000 	jal	0 <BossSst_Init>
    92dc:	afa50018 	sw	a1,24(sp)
    92e0:	8fa50018 	lw	a1,24(sp)
    92e4:	3c0141f0 	lui	at,0x41f0
    92e8:	44812000 	mtc1	at,$f4
    92ec:	80af0194 	lb	t7,404(a1)
    92f0:	c4b20024 	lwc1	$f18,36(a1)
    92f4:	46040182 	mul.s	$f6,$f0,$f4
    92f8:	448f4000 	mtc1	t7,$f8
    92fc:	84a400b6 	lh	a0,182(a1)
    9300:	468042a0 	cvt.s.w	$f10,$f8
    9304:	460a3402 	mul.s	$f16,$f6,$f10
    9308:	46128100 	add.s	$f4,$f16,$f18
    930c:	0c000000 	jal	0 <BossSst_Init>
    9310:	e4a40700 	swc1	$f4,1792(a1)
    9314:	8fa50018 	lw	a1,24(sp)
    9318:	3c0141f0 	lui	at,0x41f0
    931c:	44814000 	mtc1	at,$f8
    9320:	80b80194 	lb	t8,404(a1)
    9324:	c4a4002c 	lwc1	$f4,44(a1)
    9328:	46080182 	mul.s	$f6,$f0,$f8
    932c:	44985000 	mtc1	t8,$f10
    9330:	241908fc 	li	t9,2300
    9334:	240800fe 	li	t0,254
    9338:	24090005 	li	t1,5
    933c:	240affff 	li	t2,-1
    9340:	46805420 	cvt.s.w	$f16,$f10
    9344:	c4aa0028 	lwc1	$f10,40(a1)
    9348:	a4b9071e 	sh	t9,1822(a1)
    934c:	a0a80724 	sb	t0,1828(a1)
    9350:	a4a90722 	sh	t1,1826(a1)
    9354:	a4aa074a 	sh	t2,1866(a1)
    9358:	46103482 	mul.s	$f18,$f6,$f16
    935c:	e4aa0704 	swc1	$f10,1796(a1)
    9360:	46122201 	sub.s	$f8,$f4,$f18
    9364:	e4a80708 	swc1	$f8,1800(a1)
    9368:	8fbf0014 	lw	ra,20(sp)
    936c:	27bd0018 	addiu	sp,sp,24
    9370:	03e00008 	jr	ra
    9374:	00000000 	nop

00009378 <func_80935948>:
    9378:	27bdffc8 	addiu	sp,sp,-56
    937c:	afbf0034 	sw	ra,52(sp)
    9380:	afb40028 	sw	s4,40(sp)
    9384:	afb30024 	sw	s3,36(sp)
    9388:	afb00018 	sw	s0,24(sp)
    938c:	00808025 	move	s0,a0
    9390:	afb60030 	sw	s6,48(sp)
    9394:	afb5002c 	sw	s5,44(sp)
    9398:	afb20020 	sw	s2,32(sp)
    939c:	afb1001c 	sw	s1,28(sp)
    93a0:	24130078 	li	s3,120
    93a4:	241400fa 	li	s4,250
    93a8:	0c000000 	jal	0 <BossSst_Init>
    93ac:	24053964 	li	a1,14692
    93b0:	240e0002 	li	t6,2
    93b4:	a20e0196 	sb	t6,406(s0)
    93b8:	26110700 	addiu	s1,s0,1792
    93bc:	26150024 	addiu	s5,s0,36
    93c0:	24120012 	li	s2,18
    93c4:	24160018 	li	s6,24
    93c8:	02208025 	move	s0,s1
    93cc:	02202025 	move	a0,s1
    93d0:	0c000000 	jal	0 <BossSst_Init>
    93d4:	02a02825 	move	a1,s5
    93d8:	a6120020 	sh	s2,32(s0)
    93dc:	860f0020 	lh	t7,32(s0)
    93e0:	26520002 	addiu	s2,s2,2
    93e4:	a613001e 	sh	s3,30(s0)
    93e8:	028f001a 	div	zero,s4,t7
    93ec:	0000c012 	mflo	t8
    93f0:	26310028 	addiu	s1,s1,40
    93f4:	15e00002 	bnez	t7,9400 <func_80935948+0x88>
    93f8:	00000000 	nop
    93fc:	0007000d 	break	0x7
    9400:	2401ffff 	li	at,-1
    9404:	15e10004 	bne	t7,at,9418 <func_80935948+0xa0>
    9408:	3c018000 	lui	at,0x8000
    940c:	16810002 	bne	s4,at,9418 <func_80935948+0xa0>
    9410:	00000000 	nop
    9414:	0006000d 	break	0x6
    9418:	a2180024 	sb	t8,36(s0)
    941c:	2673ffce 	addiu	s3,s3,-50
    9420:	1656ffe9 	bne	s2,s6,93c8 <func_80935948+0x50>
    9424:	2694ffe7 	addiu	s4,s4,-25
    9428:	8fbf0034 	lw	ra,52(sp)
    942c:	8fb00018 	lw	s0,24(sp)
    9430:	8fb1001c 	lw	s1,28(sp)
    9434:	8fb20020 	lw	s2,32(sp)
    9438:	8fb30024 	lw	s3,36(sp)
    943c:	8fb40028 	lw	s4,40(sp)
    9440:	8fb5002c 	lw	s5,44(sp)
    9444:	8fb60030 	lw	s6,48(sp)
    9448:	03e00008 	jr	ra
    944c:	27bd0038 	addiu	sp,sp,56

00009450 <func_80935A20>:
    9450:	27bdffe0 	addiu	sp,sp,-32
    9454:	afb10018 	sw	s1,24(sp)
    9458:	28a1000b 	slti	at,a1,11
    945c:	00808825 	move	s1,a0
    9460:	afbf001c 	sw	ra,28(sp)
    9464:	10200025 	beqz	at,94fc <func_80935A20+0xac>
    9468:	afb00014 	sw	s0,20(sp)
    946c:	8c8e03f0 	lw	t6,1008(a0)
    9470:	00057980 	sll	t7,a1,0x6
    9474:	0005c080 	sll	t8,a1,0x2
    9478:	01cf1821 	addu	v1,t6,t7
    947c:	84790030 	lh	t9,48(v1)
    9480:	0305c021 	addu	t8,t8,a1
    9484:	0018c0c0 	sll	t8,t8,0x3
    9488:	44992000 	mtc1	t9,$f4
    948c:	00988021 	addu	s0,a0,t8
    9490:	24630030 	addiu	v1,v1,48
    9494:	468021a0 	cvt.s.w	$f6,$f4
    9498:	26100700 	addiu	s0,s0,1792
    949c:	3c0141c8 	lui	at,0x41c8
    94a0:	e6060000 	swc1	$f6,0(s0)
    94a4:	84680002 	lh	t0,2(v1)
    94a8:	44884000 	mtc1	t0,$f8
    94ac:	00000000 	nop
    94b0:	468042a0 	cvt.s.w	$f10,$f8
    94b4:	e60a0004 	swc1	$f10,4(s0)
    94b8:	84690004 	lh	t1,4(v1)
    94bc:	44898000 	mtc1	t1,$f16
    94c0:	00000000 	nop
    94c4:	468084a0 	cvt.s.w	$f18,$f16
    94c8:	14a0003e 	bnez	a1,95c4 <func_80935A20+0x174>
    94cc:	e6120008 	swc1	$f18,8(s0)
    94d0:	44810000 	mtc1	at,$f0
    94d4:	c6040000 	lwc1	$f4,0(s0)
    94d8:	c6080004 	lwc1	$f8,4(s0)
    94dc:	c6100008 	lwc1	$f16,8(s0)
    94e0:	46002181 	sub.s	$f6,$f4,$f0
    94e4:	46004281 	sub.s	$f10,$f8,$f0
    94e8:	e6060000 	swc1	$f6,0(s0)
    94ec:	46008481 	sub.s	$f18,$f16,$f0
    94f0:	e60a0004 	swc1	$f10,4(s0)
    94f4:	10000033 	b	95c4 <func_80935A20+0x174>
    94f8:	e6120008 	swc1	$f18,8(s0)
    94fc:	8e2303f0 	lw	v1,1008(s1)
    9500:	24a4fff5 	addiu	a0,a1,-11
    9504:	308a0001 	andi	t2,a0,0x1
    9508:	11400003 	beqz	t2,9518 <func_80935A20+0xc8>
    950c:	24630030 	addiu	v1,v1,48
    9510:	10000002 	b	951c <func_80935A20+0xcc>
    9514:	24020001 	li	v0,1
    9518:	2402ffff 	li	v0,-1
    951c:	44822000 	mtc1	v0,$f4
    9520:	846c0000 	lh	t4,0(v1)
    9524:	3c0141c8 	lui	at,0x41c8
    9528:	468021a0 	cvt.s.w	$f6,$f4
    952c:	44810000 	mtc1	at,$f0
    9530:	448c5000 	mtc1	t4,$f10
    9534:	00055880 	sll	t3,a1,0x2
    9538:	01655821 	addu	t3,t3,a1
    953c:	46805420 	cvt.s.w	$f16,$f10
    9540:	46003202 	mul.s	$f8,$f6,$f0
    9544:	000b58c0 	sll	t3,t3,0x3
    9548:	022b8021 	addu	s0,s1,t3
    954c:	308d0002 	andi	t5,a0,0x2
    9550:	26100700 	addiu	s0,s0,1792
    9554:	2402ffff 	li	v0,-1
    9558:	46104480 	add.s	$f18,$f8,$f16
    955c:	11a00003 	beqz	t5,956c <func_80935A20+0x11c>
    9560:	e6120000 	swc1	$f18,0(s0)
    9564:	10000001 	b	956c <func_80935A20+0x11c>
    9568:	24020001 	li	v0,1
    956c:	44822000 	mtc1	v0,$f4
    9570:	846e0002 	lh	t6,2(v1)
    9574:	308f0004 	andi	t7,a0,0x4
    9578:	468021a0 	cvt.s.w	$f6,$f4
    957c:	448e4000 	mtc1	t6,$f8
    9580:	2402ffff 	li	v0,-1
    9584:	46804420 	cvt.s.w	$f16,$f8
    9588:	46003282 	mul.s	$f10,$f6,$f0
    958c:	46105480 	add.s	$f18,$f10,$f16
    9590:	11e00003 	beqz	t7,95a0 <func_80935A20+0x150>
    9594:	e6120004 	swc1	$f18,4(s0)
    9598:	10000001 	b	95a0 <func_80935A20+0x150>
    959c:	24020001 	li	v0,1
    95a0:	44822000 	mtc1	v0,$f4
    95a4:	84780004 	lh	t8,4(v1)
    95a8:	468021a0 	cvt.s.w	$f6,$f4
    95ac:	44985000 	mtc1	t8,$f10
    95b0:	00000000 	nop
    95b4:	46805420 	cvt.s.w	$f16,$f10
    95b8:	46003202 	mul.s	$f8,$f6,$f0
    95bc:	46104480 	add.s	$f18,$f8,$f16
    95c0:	e6120008 	swc1	$f18,8(s0)
    95c4:	c6040000 	lwc1	$f4,0(s0)
    95c8:	c6260024 	lwc1	$f6,36(s1)
    95cc:	c6080004 	lwc1	$f8,4(s0)
    95d0:	46062281 	sub.s	$f10,$f4,$f6
    95d4:	c6040008 	lwc1	$f4,8(s0)
    95d8:	e60a0000 	swc1	$f10,0(s0)
    95dc:	c6300028 	lwc1	$f16,40(s1)
    95e0:	46104481 	sub.s	$f18,$f8,$f16
    95e4:	e6120004 	swc1	$f18,4(s0)
    95e8:	c626002c 	lwc1	$f6,44(s1)
    95ec:	a6000022 	sh	zero,34(s0)
    95f0:	46062281 	sub.s	$f10,$f4,$f6
    95f4:	e60a0008 	swc1	$f10,8(s0)
    95f8:	0c000000 	jal	0 <BossSst_Init>
    95fc:	afa50024 	sw	a1,36(sp)
    9600:	3c014780 	lui	at,0x4780
    9604:	44814000 	mtc1	at,$f8
    9608:	00000000 	nop
    960c:	46080402 	mul.s	$f16,$f0,$f8
    9610:	4600848d 	trunc.w.s	$f18,$f16
    9614:	44089000 	mfc1	t0,$f18
    9618:	0c000000 	jal	0 <BossSst_Init>
    961c:	a6080018 	sh	t0,24(s0)
    9620:	3c014780 	lui	at,0x4780
    9624:	44812000 	mtc1	at,$f4
    9628:	00000000 	nop
    962c:	46040182 	mul.s	$f6,$f0,$f4
    9630:	4600328d 	trunc.w.s	$f10,$f6
    9634:	440a5000 	mfc1	t2,$f10
    9638:	0c000000 	jal	0 <BossSst_Init>
    963c:	a60a001a 	sh	t2,26(s0)
    9640:	3c014780 	lui	at,0x4780
    9644:	44814000 	mtc1	at,$f8
    9648:	240d0078 	li	t5,120
    964c:	240e0001 	li	t6,1
    9650:	46080402 	mul.s	$f16,$f0,$f8
    9654:	a20d0024 	sb	t5,36(s0)
    9658:	a60e0020 	sh	t6,32(s0)
    965c:	4600848d 	trunc.w.s	$f18,$f16
    9660:	440c9000 	mfc1	t4,$f18
    9664:	0c000000 	jal	0 <BossSst_Init>
    9668:	a60c001c 	sh	t4,28(s0)
    966c:	3c010000 	lui	at,0x0
    9670:	c4240000 	lwc1	$f4,0(at)
    9674:	3c010000 	lui	at,0x0
    9678:	c42a0000 	lwc1	$f10,0(at)
    967c:	46040182 	mul.s	$f6,$f0,$f4
    9680:	c6100000 	lwc1	$f16,0(s0)
    9684:	460a3200 	add.s	$f8,$f6,$f10
    9688:	46104482 	mul.s	$f18,$f8,$f16
    968c:	0c000000 	jal	0 <BossSst_Init>
    9690:	e612000c 	swc1	$f18,12(s0)
    9694:	3c014170 	lui	at,0x4170
    9698:	44812000 	mtc1	at,$f4
    969c:	3c0140a0 	lui	at,0x40a0
    96a0:	44815000 	mtc1	at,$f10
    96a4:	46040182 	mul.s	$f6,$f0,$f4
    96a8:	460a3200 	add.s	$f8,$f6,$f10
    96ac:	0c000000 	jal	0 <BossSst_Init>
    96b0:	e6080010 	swc1	$f8,16(s0)
    96b4:	3c010000 	lui	at,0x0
    96b8:	c4300000 	lwc1	$f16,0(at)
    96bc:	3c010000 	lui	at,0x0
    96c0:	c4240000 	lwc1	$f4,0(at)
    96c4:	46100482 	mul.s	$f18,$f0,$f16
    96c8:	c60a0008 	lwc1	$f10,8(s0)
    96cc:	8fa50024 	lw	a1,36(sp)
    96d0:	240f0fa0 	li	t7,4000
    96d4:	a60f001e 	sh	t7,30(s0)
    96d8:	30b80001 	andi	t8,a1,0x1
    96dc:	02202025 	move	a0,s1
    96e0:	46049180 	add.s	$f6,$f18,$f4
    96e4:	460a3202 	mul.s	$f8,$f6,$f10
    96e8:	17000003 	bnez	t8,96f8 <func_80935A20+0x2a8>
    96ec:	e6080014 	swc1	$f8,20(s0)
    96f0:	0c000000 	jal	0 <BossSst_Init>
    96f4:	24050874 	li	a1,2164
    96f8:	8fbf001c 	lw	ra,28(sp)
    96fc:	8fb00014 	lw	s0,20(sp)
    9700:	8fb10018 	lw	s1,24(sp)
    9704:	03e00008 	jr	ra
    9708:	27bd0020 	addiu	sp,sp,32

0000970c <func_80935CDC>:
    970c:	27bdff78 	addiu	sp,sp,-136
    9710:	afb20050 	sw	s2,80(sp)
    9714:	afbf0064 	sw	ra,100(sp)
    9718:	afb60060 	sw	s6,96(sp)
    971c:	afb5005c 	sw	s5,92(sp)
    9720:	afb40058 	sw	s4,88(sp)
    9724:	afb30054 	sw	s3,84(sp)
    9728:	afb1004c 	sw	s1,76(sp)
    972c:	afb00048 	sw	s0,72(sp)
    9730:	f7be0040 	sdc1	$f30,64(sp)
    9734:	f7bc0038 	sdc1	$f28,56(sp)
    9738:	f7ba0030 	sdc1	$f26,48(sp)
    973c:	f7b80028 	sdc1	$f24,40(sp)
    9740:	f7b60020 	sdc1	$f22,32(sp)
    9744:	f7b40018 	sdc1	$f20,24(sp)
    9748:	240e0001 	li	t6,1
    974c:	00809025 	move	s2,a0
    9750:	a08e0196 	sb	t6,406(a0)
    9754:	0c000000 	jal	0 <BossSst_Init>
    9758:	848400b4 	lh	a0,180(a0)
    975c:	3c014248 	lui	at,0x4248
    9760:	4481b000 	mtc1	at,$f22
    9764:	864400b6 	lh	a0,182(s2)
    9768:	46160502 	mul.s	$f20,$f0,$f22
    976c:	0c000000 	jal	0 <BossSst_Init>
    9770:	00000000 	nop
    9774:	46140102 	mul.s	$f4,$f0,$f20
    9778:	c6460024 	lwc1	$f6,36(s2)
    977c:	46062200 	add.s	$f8,$f4,$f6
    9780:	e7a80078 	swc1	$f8,120(sp)
    9784:	0c000000 	jal	0 <BossSst_Init>
    9788:	864400b4 	lh	a0,180(s2)
    978c:	46160282 	mul.s	$f10,$f0,$f22
    9790:	c6500028 	lwc1	$f16,40(s2)
    9794:	3c014120 	lui	at,0x4120
    9798:	4481f000 	mtc1	at,$f30
    979c:	46105480 	add.s	$f18,$f10,$f16
    97a0:	461e9101 	sub.s	$f4,$f18,$f30
    97a4:	e7a4007c 	swc1	$f4,124(sp)
    97a8:	0c000000 	jal	0 <BossSst_Init>
    97ac:	864400b6 	lh	a0,182(s2)
    97b0:	46140182 	mul.s	$f6,$f0,$f20
    97b4:	3c0143c8 	lui	at,0x43c8
    97b8:	4481e000 	mtc1	at,$f28
    97bc:	3c014348 	lui	at,0x4348
    97c0:	c648002c 	lwc1	$f8,44(s2)
    97c4:	4481d000 	mtc1	at,$f26
    97c8:	3c014040 	lui	at,0x4040
    97cc:	4481c000 	mtc1	at,$f24
    97d0:	46083280 	add.s	$f10,$f6,$f8
    97d4:	3c0141a0 	lui	at,0x41a0
    97d8:	4481b000 	mtc1	at,$f22
    97dc:	3c014780 	lui	at,0x4780
    97e0:	4481a000 	mtc1	at,$f20
    97e4:	e7aa0080 	swc1	$f10,128(sp)
    97e8:	00008825 	move	s1,zero
    97ec:	26500700 	addiu	s0,s2,1792
    97f0:	241602d0 	li	s6,720
    97f4:	24150078 	li	s5,120
    97f8:	27b40078 	addiu	s4,sp,120
    97fc:	24130001 	li	s3,1
    9800:	02009025 	move	s2,s0
    9804:	02002025 	move	a0,s0
    9808:	0c000000 	jal	0 <BossSst_Init>
    980c:	02802825 	move	a1,s4
    9810:	0c000000 	jal	0 <BossSst_Init>
    9814:	a6130022 	sh	s3,34(s0)
    9818:	46140402 	mul.s	$f16,$f0,$f20
    981c:	4600848d 	trunc.w.s	$f18,$f16
    9820:	44189000 	mfc1	t8,$f18
    9824:	0c000000 	jal	0 <BossSst_Init>
    9828:	a6180018 	sh	t8,24(s0)
    982c:	46140102 	mul.s	$f4,$f0,$f20
    9830:	4600218d 	trunc.w.s	$f6,$f4
    9834:	44083000 	mfc1	t0,$f6
    9838:	0c000000 	jal	0 <BossSst_Init>
    983c:	a608001a 	sh	t0,26(s0)
    9840:	46140202 	mul.s	$f8,$f0,$f20
    9844:	a2150024 	sb	s5,36(s0)
    9848:	a6130020 	sh	s3,32(s0)
    984c:	4600b306 	mov.s	$f12,$f22
    9850:	4600428d 	trunc.w.s	$f10,$f8
    9854:	440a5000 	mfc1	t2,$f10
    9858:	0c000000 	jal	0 <BossSst_Init>
    985c:	a60a001c 	sh	t2,28(s0)
    9860:	0c000000 	jal	0 <BossSst_Init>
    9864:	e600000c 	swc1	$f0,12(s0)
    9868:	461e0402 	mul.s	$f16,$f0,$f30
    986c:	4600b306 	mov.s	$f12,$f22
    9870:	46188480 	add.s	$f18,$f16,$f24
    9874:	0c000000 	jal	0 <BossSst_Init>
    9878:	e6120010 	swc1	$f18,16(s0)
    987c:	0c000000 	jal	0 <BossSst_Init>
    9880:	e6000014 	swc1	$f0,20(s0)
    9884:	461a0102 	mul.s	$f4,$f0,$f26
    9888:	240c0001 	li	t4,1
    988c:	26310028 	addiu	s1,s1,40
    9890:	26100028 	addiu	s0,s0,40
    9894:	3c014f00 	lui	at,0x4f00
    9898:	461c2180 	add.s	$f6,$f4,$f28
    989c:	444bf800 	cfc1	t3,$31
    98a0:	44ccf800 	ctc1	t4,$31
    98a4:	00000000 	nop
    98a8:	46003224 	cvt.w.s	$f8,$f6
    98ac:	444cf800 	cfc1	t4,$31
    98b0:	00000000 	nop
    98b4:	318c0078 	andi	t4,t4,0x78
    98b8:	51800013 	beqzl	t4,9908 <func_80935CDC+0x1fc>
    98bc:	440c4000 	mfc1	t4,$f8
    98c0:	44814000 	mtc1	at,$f8
    98c4:	240c0001 	li	t4,1
    98c8:	46083201 	sub.s	$f8,$f6,$f8
    98cc:	44ccf800 	ctc1	t4,$31
    98d0:	00000000 	nop
    98d4:	46004224 	cvt.w.s	$f8,$f8
    98d8:	444cf800 	cfc1	t4,$31
    98dc:	00000000 	nop
    98e0:	318c0078 	andi	t4,t4,0x78
    98e4:	15800005 	bnez	t4,98fc <func_80935CDC+0x1f0>
    98e8:	00000000 	nop
    98ec:	440c4000 	mfc1	t4,$f8
    98f0:	3c018000 	lui	at,0x8000
    98f4:	10000007 	b	9914 <func_80935CDC+0x208>
    98f8:	01816025 	or	t4,t4,at
    98fc:	10000005 	b	9914 <func_80935CDC+0x208>
    9900:	240cffff 	li	t4,-1
    9904:	440c4000 	mfc1	t4,$f8
    9908:	00000000 	nop
    990c:	0580fffb 	bltz	t4,98fc <func_80935CDC+0x1f0>
    9910:	00000000 	nop
    9914:	44cbf800 	ctc1	t3,$31
    9918:	1636ffb9 	bne	s1,s6,9800 <func_80935CDC+0xf4>
    991c:	a64c001e 	sh	t4,30(s2)
    9920:	8fbf0064 	lw	ra,100(sp)
    9924:	d7b40018 	ldc1	$f20,24(sp)
    9928:	d7b60020 	ldc1	$f22,32(sp)
    992c:	d7b80028 	ldc1	$f24,40(sp)
    9930:	d7ba0030 	ldc1	$f26,48(sp)
    9934:	d7bc0038 	ldc1	$f28,56(sp)
    9938:	d7be0040 	ldc1	$f30,64(sp)
    993c:	8fb00048 	lw	s0,72(sp)
    9940:	8fb1004c 	lw	s1,76(sp)
    9944:	8fb20050 	lw	s2,80(sp)
    9948:	8fb30054 	lw	s3,84(sp)
    994c:	8fb40058 	lw	s4,88(sp)
    9950:	8fb5005c 	lw	s5,92(sp)
    9954:	8fb60060 	lw	s6,96(sp)
    9958:	03e00008 	jr	ra
    995c:	27bd0088 	addiu	sp,sp,136

00009960 <func_80935F30>:
    9960:	27bdffe8 	addiu	sp,sp,-24
    9964:	afbf0014 	sw	ra,20(sp)
    9968:	240e0001 	li	t6,1
    996c:	a48e0722 	sh	t6,1826(a0)
    9970:	afa40018 	sw	a0,24(sp)
    9974:	0c000000 	jal	0 <BossSst_Init>
    9978:	24050875 	li	a1,2165
    997c:	8fa40018 	lw	a0,24(sp)
    9980:	24050050 	li	a1,80
    9984:	240602d0 	li	a2,720
    9988:	848f0720 	lh	t7,1824(a0)
    998c:	00801825 	move	v1,a0
    9990:	24620700 	addiu	v0,v1,1792
    9994:	51e0000e 	beqzl	t7,99d0 <func_80935F30+0x70>
    9998:	84780748 	lh	t8,1864(v1)
    999c:	c4440000 	lwc1	$f4,0(v0)
    99a0:	c4860024 	lwc1	$f6,36(a0)
    99a4:	c44a0004 	lwc1	$f10,4(v0)
    99a8:	46062200 	add.s	$f8,$f4,$f6
    99ac:	c4440008 	lwc1	$f4,8(v0)
    99b0:	e4480000 	swc1	$f8,0(v0)
    99b4:	c4900028 	lwc1	$f16,40(a0)
    99b8:	46105480 	add.s	$f18,$f10,$f16
    99bc:	e4520004 	swc1	$f18,4(v0)
    99c0:	c486002c 	lwc1	$f6,44(a0)
    99c4:	46062200 	add.s	$f8,$f4,$f6
    99c8:	e4480008 	swc1	$f8,8(v0)
    99cc:	84780748 	lh	t8,1864(v1)
    99d0:	24620728 	addiu	v0,v1,1832
    99d4:	5300000e 	beqzl	t8,9a10 <func_80935F30+0xb0>
    99d8:	24830050 	addiu	v1,a0,80
    99dc:	c44a0000 	lwc1	$f10,0(v0)
    99e0:	c4900024 	lwc1	$f16,36(a0)
    99e4:	c4440004 	lwc1	$f4,4(v0)
    99e8:	46105480 	add.s	$f18,$f10,$f16
    99ec:	c44a0008 	lwc1	$f10,8(v0)
    99f0:	e4520000 	swc1	$f18,0(v0)
    99f4:	c4860028 	lwc1	$f6,40(a0)
    99f8:	46062200 	add.s	$f8,$f4,$f6
    99fc:	e4480004 	swc1	$f8,4(v0)
    9a00:	c490002c 	lwc1	$f16,44(a0)
    9a04:	46105480 	add.s	$f18,$f10,$f16
    9a08:	e4520008 	swc1	$f18,8(v0)
    9a0c:	24830050 	addiu	v1,a0,80
    9a10:	84790720 	lh	t9,1824(v1)
    9a14:	24a500a0 	addiu	a1,a1,160
    9a18:	24620700 	addiu	v0,v1,1792
    9a1c:	5320000e 	beqzl	t9,9a58 <func_80935F30+0xf8>
    9a20:	84680748 	lh	t0,1864(v1)
    9a24:	c4440000 	lwc1	$f4,0(v0)
    9a28:	c4860024 	lwc1	$f6,36(a0)
    9a2c:	c44a0004 	lwc1	$f10,4(v0)
    9a30:	46062200 	add.s	$f8,$f4,$f6
    9a34:	c4440008 	lwc1	$f4,8(v0)
    9a38:	e4480000 	swc1	$f8,0(v0)
    9a3c:	c4900028 	lwc1	$f16,40(a0)
    9a40:	46105480 	add.s	$f18,$f10,$f16
    9a44:	e4520004 	swc1	$f18,4(v0)
    9a48:	c486002c 	lwc1	$f6,44(a0)
    9a4c:	46062200 	add.s	$f8,$f4,$f6
    9a50:	e4480008 	swc1	$f8,8(v0)
    9a54:	84680748 	lh	t0,1864(v1)
    9a58:	24620728 	addiu	v0,v1,1832
    9a5c:	5100000e 	beqzl	t0,9a98 <func_80935F30+0x138>
    9a60:	84690770 	lh	t1,1904(v1)
    9a64:	c44a0000 	lwc1	$f10,0(v0)
    9a68:	c4900024 	lwc1	$f16,36(a0)
    9a6c:	c4440004 	lwc1	$f4,4(v0)
    9a70:	46105480 	add.s	$f18,$f10,$f16
    9a74:	c44a0008 	lwc1	$f10,8(v0)
    9a78:	e4520000 	swc1	$f18,0(v0)
    9a7c:	c4860028 	lwc1	$f6,40(a0)
    9a80:	46062200 	add.s	$f8,$f4,$f6
    9a84:	e4480004 	swc1	$f8,4(v0)
    9a88:	c490002c 	lwc1	$f16,44(a0)
    9a8c:	46105480 	add.s	$f18,$f10,$f16
    9a90:	e4520008 	swc1	$f18,8(v0)
    9a94:	84690770 	lh	t1,1904(v1)
    9a98:	24620750 	addiu	v0,v1,1872
    9a9c:	5120000e 	beqzl	t1,9ad8 <func_80935F30+0x178>
    9aa0:	846a0798 	lh	t2,1944(v1)
    9aa4:	c4440000 	lwc1	$f4,0(v0)
    9aa8:	c4860024 	lwc1	$f6,36(a0)
    9aac:	c44a0004 	lwc1	$f10,4(v0)
    9ab0:	46062200 	add.s	$f8,$f4,$f6
    9ab4:	c4440008 	lwc1	$f4,8(v0)
    9ab8:	e4480000 	swc1	$f8,0(v0)
    9abc:	c4900028 	lwc1	$f16,40(a0)
    9ac0:	46105480 	add.s	$f18,$f10,$f16
    9ac4:	e4520004 	swc1	$f18,4(v0)
    9ac8:	c486002c 	lwc1	$f6,44(a0)
    9acc:	46062200 	add.s	$f8,$f4,$f6
    9ad0:	e4480008 	swc1	$f8,8(v0)
    9ad4:	846a0798 	lh	t2,1944(v1)
    9ad8:	24620778 	addiu	v0,v1,1912
    9adc:	1140000d 	beqz	t2,9b14 <func_80935F30+0x1b4>
    9ae0:	00000000 	nop
    9ae4:	c44a0000 	lwc1	$f10,0(v0)
    9ae8:	c4900024 	lwc1	$f16,36(a0)
    9aec:	c4440004 	lwc1	$f4,4(v0)
    9af0:	46105480 	add.s	$f18,$f10,$f16
    9af4:	c44a0008 	lwc1	$f10,8(v0)
    9af8:	e4520000 	swc1	$f18,0(v0)
    9afc:	c4860028 	lwc1	$f6,40(a0)
    9b00:	46062200 	add.s	$f8,$f4,$f6
    9b04:	e4480004 	swc1	$f8,4(v0)
    9b08:	c490002c 	lwc1	$f16,44(a0)
    9b0c:	46105480 	add.s	$f18,$f10,$f16
    9b10:	e4520008 	swc1	$f18,8(v0)
    9b14:	14a6ffbe 	bne	a1,a2,9a10 <func_80935F30+0xb0>
    9b18:	246300a0 	addiu	v1,v1,160
    9b1c:	8fbf0014 	lw	ra,20(sp)
    9b20:	27bd0018 	addiu	sp,sp,24
    9b24:	03e00008 	jr	ra
    9b28:	00000000 	nop

00009b2c <func_809360FC>:
    9b2c:	27bdffc8 	addiu	sp,sp,-56
    9b30:	afbf0014 	sw	ra,20(sp)
    9b34:	afa5003c 	sw	a1,60(sp)
    9b38:	90820196 	lbu	v0,406(a0)
    9b3c:	00803825 	move	a3,a0
    9b40:	24010001 	li	at,1
    9b44:	5040009e 	beqzl	v0,9dc0 <func_809360FC+0x294>
    9b48:	8fbf0014 	lw	ra,20(sp)
    9b4c:	5441004d 	bnel	v0,at,9c84 <func_809360FC+0x158>
    9b50:	24010002 	li	at,2
    9b54:	848e0722 	lh	t6,1826(a0)
    9b58:	00002025 	move	a0,zero
    9b5c:	00e01825 	move	v1,a3
    9b60:	11c00042 	beqz	t6,9c6c <func_809360FC+0x140>
    9b64:	3c013f80 	lui	at,0x3f80
    9b68:	44811000 	mtc1	at,$f2
    9b6c:	240502d0 	li	a1,720
    9b70:	846f0720 	lh	t7,1824(v1)
    9b74:	24840050 	addiu	a0,a0,80
    9b78:	24620700 	addiu	v0,v1,1792
    9b7c:	51e0001c 	beqzl	t7,9bf0 <func_809360FC+0xc4>
    9b80:	846f0748 	lh	t7,1864(v1)
    9b84:	c4440000 	lwc1	$f4,0(v0)
    9b88:	c446000c 	lwc1	$f6,12(v0)
    9b8c:	c4400010 	lwc1	$f0,16(v0)
    9b90:	c44a0004 	lwc1	$f10,4(v0)
    9b94:	46062200 	add.s	$f8,$f4,$f6
    9b98:	c4440014 	lwc1	$f4,20(v0)
    9b9c:	c4520008 	lwc1	$f18,8(v0)
    9ba0:	46005400 	add.s	$f16,$f10,$f0
    9ba4:	e4480000 	swc1	$f8,0(v0)
    9ba8:	90580024 	lbu	t8,36(v0)
    9bac:	46020201 	sub.s	$f8,$f0,$f2
    9bb0:	84490018 	lh	t1,24(v0)
    9bb4:	844b001a 	lh	t3,26(v0)
    9bb8:	46049180 	add.s	$f6,$f18,$f4
    9bbc:	844d001c 	lh	t5,28(v0)
    9bc0:	2719fffd 	addiu	t9,t8,-3
    9bc4:	252a0d00 	addiu	t2,t1,3328
    9bc8:	256c1100 	addiu	t4,t3,4352
    9bcc:	25ae1500 	addiu	t6,t5,5376
    9bd0:	e4500004 	swc1	$f16,4(v0)
    9bd4:	e4460008 	swc1	$f6,8(v0)
    9bd8:	a0590024 	sb	t9,36(v0)
    9bdc:	e4480010 	swc1	$f8,16(v0)
    9be0:	a44a0018 	sh	t2,24(v0)
    9be4:	a44c001a 	sh	t4,26(v0)
    9be8:	a44e001c 	sh	t6,28(v0)
    9bec:	846f0748 	lh	t7,1864(v1)
    9bf0:	24620728 	addiu	v0,v1,1832
    9bf4:	11e0001b 	beqz	t7,9c64 <func_809360FC+0x138>
    9bf8:	00000000 	nop
    9bfc:	c44a0000 	lwc1	$f10,0(v0)
    9c00:	c450000c 	lwc1	$f16,12(v0)
    9c04:	c4400010 	lwc1	$f0,16(v0)
    9c08:	c4440004 	lwc1	$f4,4(v0)
    9c0c:	46105480 	add.s	$f18,$f10,$f16
    9c10:	c44a0014 	lwc1	$f10,20(v0)
    9c14:	c4480008 	lwc1	$f8,8(v0)
    9c18:	46002180 	add.s	$f6,$f4,$f0
    9c1c:	e4520000 	swc1	$f18,0(v0)
    9c20:	90580024 	lbu	t8,36(v0)
    9c24:	46020481 	sub.s	$f18,$f0,$f2
    9c28:	84490018 	lh	t1,24(v0)
    9c2c:	844b001a 	lh	t3,26(v0)
    9c30:	460a4400 	add.s	$f16,$f8,$f10
    9c34:	844d001c 	lh	t5,28(v0)
    9c38:	2719fffd 	addiu	t9,t8,-3
    9c3c:	252a0d00 	addiu	t2,t1,3328
    9c40:	256c1100 	addiu	t4,t3,4352
    9c44:	25ae1500 	addiu	t6,t5,5376
    9c48:	a44e001c 	sh	t6,28(v0)
    9c4c:	a44c001a 	sh	t4,26(v0)
    9c50:	a44a0018 	sh	t2,24(v0)
    9c54:	a0590024 	sb	t9,36(v0)
    9c58:	e4500008 	swc1	$f16,8(v0)
    9c5c:	e4520010 	swc1	$f18,16(v0)
    9c60:	e4460004 	swc1	$f6,4(v0)
    9c64:	1485ffc2 	bne	a0,a1,9b70 <func_809360FC+0x44>
    9c68:	24630050 	addiu	v1,v1,80
    9c6c:	90ef0724 	lbu	t7,1828(a3)
    9c70:	55e00053 	bnezl	t7,9dc0 <func_809360FC+0x294>
    9c74:	8fbf0014 	lw	ra,20(sp)
    9c78:	10000050 	b	9dbc <func_809360FC+0x290>
    9c7c:	a0e00196 	sb	zero,406(a3)
    9c80:	24010002 	li	at,2
    9c84:	1441001d 	bne	v0,at,9cfc <func_809360FC+0x1d0>
    9c88:	24080003 	li	t0,3
    9c8c:	00003025 	move	a2,zero
    9c90:	00e01825 	move	v1,a3
    9c94:	24e20700 	addiu	v0,a3,1792
    9c98:	24080003 	li	t0,3
    9c9c:	84640720 	lh	a0,1824(v1)
    9ca0:	24630028 	addiu	v1,v1,40
    9ca4:	00042040 	sll	a0,a0,0x1
    9ca8:	28810015 	slti	at,a0,21
    9cac:	14200003 	bnez	at,9cbc <func_809360FC+0x190>
    9cb0:	00802825 	move	a1,a0
    9cb4:	10000001 	b	9cbc <func_809360FC+0x190>
    9cb8:	24050014 	li	a1,20
    9cbc:	9458001e 	lhu	t8,30(v0)
    9cc0:	84440020 	lh	a0,32(v0)
    9cc4:	0305c821 	addu	t9,t8,a1
    9cc8:	03264821 	addu	t1,t9,a2
    9ccc:	10800003 	beqz	a0,9cdc <func_809360FC+0x1b0>
    9cd0:	a449001e 	sh	t1,30(v0)
    9cd4:	248affff 	addiu	t2,a0,-1
    9cd8:	a44a0020 	sh	t2,32(v0)
    9cdc:	24c60001 	addiu	a2,a2,1
    9ce0:	14c8ffee 	bne	a2,t0,9c9c <func_809360FC+0x170>
    9ce4:	24420028 	addiu	v0,v0,40
    9ce8:	84eb0720 	lh	t3,1824(a3)
    9cec:	55600034 	bnezl	t3,9dc0 <func_809360FC+0x294>
    9cf0:	8fbf0014 	lw	ra,20(sp)
    9cf4:	10000031 	b	9dbc <func_809360FC+0x290>
    9cf8:	a0e00196 	sb	zero,406(a3)
    9cfc:	55020030 	bnel	t0,v0,9dc0 <func_809360FC+0x294>
    9d00:	8fbf0014 	lw	ra,20(sp)
    9d04:	84ec001c 	lh	t4,28(a3)
    9d08:	2408ffff 	li	t0,-1
    9d0c:	24e30700 	addiu	v1,a3,1792
    9d10:	150c0011 	bne	t0,t4,9d58 <func_809360FC+0x22c>
    9d14:	00601025 	move	v0,v1
    9d18:	8fa4003c 	lw	a0,60(sp)
    9d1c:	3c010001 	lui	at,0x1
    9d20:	34211d60 	ori	at,at,0x1d60
    9d24:	24e50038 	addiu	a1,a3,56
    9d28:	24e603c8 	addiu	a2,a3,968
    9d2c:	afa20030 	sw	v0,48(sp)
    9d30:	afa3001c 	sw	v1,28(sp)
    9d34:	afa70038 	sw	a3,56(sp)
    9d38:	0c000000 	jal	0 <BossSst_Init>
    9d3c:	00812021 	addu	a0,a0,at
    9d40:	8fa40038 	lw	a0,56(sp)
    9d44:	0c000000 	jal	0 <BossSst_Init>
    9d48:	2405318c 	li	a1,12684
    9d4c:	8fa20030 	lw	v0,48(sp)
    9d50:	8fa3001c 	lw	v1,28(sp)
    9d54:	2408ffff 	li	t0,-1
    9d58:	846d0022 	lh	t5,34(v1)
    9d5c:	24042710 	li	a0,10000
    9d60:	510d0017 	beql	t0,t5,9dc0 <func_809360FC+0x294>
    9d64:	8fbf0014 	lw	ra,20(sp)
    9d68:	84430022 	lh	v1,34(v0)
    9d6c:	54600006 	bnezl	v1,9d88 <func_809360FC+0x25c>
    9d70:	9458001e 	lhu	t8,30(v0)
    9d74:	904e0024 	lbu	t6,36(v0)
    9d78:	25cffffe 	addiu	t7,t6,-2
    9d7c:	10000004 	b	9d90 <func_809360FC+0x264>
    9d80:	a04f0024 	sb	t7,36(v0)
    9d84:	9458001e 	lhu	t8,30(v0)
    9d88:	0303c821 	addu	t9,t8,v1
    9d8c:	a459001e 	sh	t9,30(v0)
    9d90:	9443001e 	lhu	v1,30(v0)
    9d94:	28612711 	slti	at,v1,10001
    9d98:	54200004 	bnezl	at,9dac <func_809360FC+0x280>
    9d9c:	a443001e 	sh	v1,30(v0)
    9da0:	10000002 	b	9dac <func_809360FC+0x280>
    9da4:	a444001e 	sh	a0,30(v0)
    9da8:	a443001e 	sh	v1,30(v0)
    9dac:	8443004a 	lh	v1,74(v0)
    9db0:	24420028 	addiu	v0,v0,40
    9db4:	1503ffed 	bne	t0,v1,9d6c <func_809360FC+0x240>
    9db8:	00000000 	nop
    9dbc:	8fbf0014 	lw	ra,20(sp)
    9dc0:	27bd0038 	addiu	sp,sp,56
    9dc4:	03e00008 	jr	ra
    9dc8:	00000000 	nop

00009dcc <func_8093639C>:
    9dcc:	27bdff10 	addiu	sp,sp,-240
    9dd0:	afbf006c 	sw	ra,108(sp)
    9dd4:	afbe0068 	sw	s8,104(sp)
    9dd8:	afb70064 	sw	s7,100(sp)
    9ddc:	afb60060 	sw	s6,96(sp)
    9de0:	afb5005c 	sw	s5,92(sp)
    9de4:	afb40058 	sw	s4,88(sp)
    9de8:	afb30054 	sw	s3,84(sp)
    9dec:	afb20050 	sw	s2,80(sp)
    9df0:	afb1004c 	sw	s1,76(sp)
    9df4:	afb00048 	sw	s0,72(sp)
    9df8:	f7b60040 	sdc1	$f22,64(sp)
    9dfc:	f7b40038 	sdc1	$f20,56(sp)
    9e00:	afa500f4 	sw	a1,244(sp)
    9e04:	908e0196 	lbu	t6,406(a0)
    9e08:	00808825 	move	s1,a0
    9e0c:	27a400cc 	addiu	a0,sp,204
    9e10:	11c0015b 	beqz	t6,a380 <func_8093639C+0x5b4>
    9e14:	3c060000 	lui	a2,0x0
    9e18:	8ca50000 	lw	a1,0(a1)
    9e1c:	24c60000 	addiu	a2,a2,0
    9e20:	24071c86 	li	a3,7302
    9e24:	0c000000 	jal	0 <BossSst_Init>
    9e28:	00a09025 	move	s2,a1
    9e2c:	8fb800f4 	lw	t8,244(sp)
    9e30:	0c000000 	jal	0 <BossSst_Init>
    9e34:	8f040000 	lw	a0,0(t8)
    9e38:	92220196 	lbu	v0,406(s1)
    9e3c:	24010001 	li	at,1
    9e40:	8fa800f4 	lw	t0,244(sp)
    9e44:	1441007f 	bne	v0,at,a044 <func_8093639C+0x278>
    9e48:	3c09db06 	lui	t1,0xdb06
    9e4c:	8e4202d0 	lw	v0,720(s2)
    9e50:	35290020 	ori	t1,t1,0x20
    9e54:	3c030001 	lui	v1,0x1
    9e58:	24590008 	addiu	t9,v0,8
    9e5c:	ae5902d0 	sw	t9,720(s2)
    9e60:	00681821 	addu	v1,v1,t0
    9e64:	ac490000 	sw	t1,0(v0)
    9e68:	8c631de4 	lw	v1,7652(v1)
    9e6c:	8d040000 	lw	a0,0(t0)
    9e70:	240a0020 	li	t2,32
    9e74:	00036840 	sll	t5,v1,0x1
    9e78:	31ae00ff 	andi	t6,t5,0xff
    9e7c:	240b0010 	li	t3,16
    9e80:	240c0001 	li	t4,1
    9e84:	240f0040 	li	t7,64
    9e88:	24180020 	li	t8,32
    9e8c:	afb80028 	sw	t8,40(sp)
    9e90:	afaf0024 	sw	t7,36(sp)
    9e94:	afac0018 	sw	t4,24(sp)
    9e98:	afab0014 	sw	t3,20(sp)
    9e9c:	afae0020 	sw	t6,32(sp)
    9ea0:	afaa0010 	sw	t2,16(sp)
    9ea4:	afa0001c 	sw	zero,28(sp)
    9ea8:	00002825 	move	a1,zero
    9eac:	00003025 	move	a2,zero
    9eb0:	00408025 	move	s0,v0
    9eb4:	0c000000 	jal	0 <BossSst_Init>
    9eb8:	306700ff 	andi	a3,v1,0xff
    9ebc:	ae020004 	sw	v0,4(s0)
    9ec0:	8e4202d0 	lw	v0,720(s2)
    9ec4:	3c09fb00 	lui	t1,0xfb00
    9ec8:	3c010032 	lui	at,0x32
    9ecc:	24590008 	addiu	t9,v0,8
    9ed0:	ae5902d0 	sw	t9,720(s2)
    9ed4:	ac490000 	sw	t1,0(v0)
    9ed8:	922b0724 	lbu	t3,1828(s1)
    9edc:	34216400 	ori	at,at,0x6400
    9ee0:	3c0e0601 	lui	t6,0x601
    9ee4:	01616025 	or	t4,t3,at
    9ee8:	ac4c0004 	sw	t4,4(v0)
    9eec:	8e4202d0 	lw	v0,720(s2)
    9ef0:	25ce7ee0 	addiu	t6,t6,32480
    9ef4:	3c17de00 	lui	s7,0xde00
    9ef8:	244d0008 	addiu	t5,v0,8
    9efc:	ae4d02d0 	sw	t5,720(s2)
    9f00:	3c010000 	lui	at,0x0
    9f04:	3c1eda38 	lui	s8,0xda38
    9f08:	3c160000 	lui	s6,0x0
    9f0c:	ac4e0004 	sw	t6,4(v0)
    9f10:	ac570000 	sw	s7,0(v0)
    9f14:	c4360000 	lwc1	$f22,0(at)
    9f18:	26d60000 	addiu	s6,s6,0
    9f1c:	37de0003 	ori	s8,s8,0x3
    9f20:	0000a025 	move	s4,zero
    9f24:	02209825 	move	s3,s1
    9f28:	866f0720 	lh	t7,1824(s3)
    9f2c:	26700700 	addiu	s0,s3,1792
    9f30:	02002025 	move	a0,s0
    9f34:	11e0003d 	beqz	t7,a02c <func_8093639C+0x260>
    9f38:	8fa500f4 	lw	a1,244(sp)
    9f3c:	3c150601 	lui	s5,0x601
    9f40:	0c000000 	jal	0 <BossSst_Init>
    9f44:	26b57f80 	addiu	s5,s5,32640
    9f48:	86380722 	lh	t8,1826(s1)
    9f4c:	00003825 	move	a3,zero
    9f50:	53000008 	beqzl	t8,9f74 <func_8093639C+0x1a8>
    9f54:	c6040000 	lwc1	$f4,0(s0)
    9f58:	c60c0000 	lwc1	$f12,0(s0)
    9f5c:	c60e0004 	lwc1	$f14,4(s0)
    9f60:	0c000000 	jal	0 <BossSst_Init>
    9f64:	8e060008 	lw	a2,8(s0)
    9f68:	1000000f 	b	9fa8 <func_8093639C+0x1dc>
    9f6c:	86040018 	lh	a0,24(s0)
    9f70:	c6040000 	lwc1	$f4,0(s0)
    9f74:	c6260024 	lwc1	$f6,36(s1)
    9f78:	c6100008 	lwc1	$f16,8(s0)
    9f7c:	c632002c 	lwc1	$f18,44(s1)
    9f80:	46062300 	add.s	$f12,$f4,$f6
    9f84:	c6080004 	lwc1	$f8,4(s0)
    9f88:	c62a0028 	lwc1	$f10,40(s1)
    9f8c:	46128100 	add.s	$f4,$f16,$f18
    9f90:	00003825 	move	a3,zero
    9f94:	460a4380 	add.s	$f14,$f8,$f10
    9f98:	44062000 	mfc1	a2,$f4
    9f9c:	0c000000 	jal	0 <BossSst_Init>
    9fa0:	00000000 	nop
    9fa4:	86040018 	lh	a0,24(s0)
    9fa8:	8605001a 	lh	a1,26(s0)
    9fac:	8606001c 	lh	a2,28(s0)
    9fb0:	0c000000 	jal	0 <BossSst_Init>
    9fb4:	24070001 	li	a3,1
    9fb8:	9619001e 	lhu	t9,30(s0)
    9fbc:	3c014f80 	lui	at,0x4f80
    9fc0:	44993000 	mtc1	t9,$f6
    9fc4:	07210004 	bgez	t9,9fd8 <func_8093639C+0x20c>
    9fc8:	46803220 	cvt.s.w	$f8,$f6
    9fcc:	44815000 	mtc1	at,$f10
    9fd0:	00000000 	nop
    9fd4:	460a4200 	add.s	$f8,$f8,$f10
    9fd8:	46164302 	mul.s	$f12,$f8,$f22
    9fdc:	24070001 	li	a3,1
    9fe0:	44066000 	mfc1	a2,$f12
    9fe4:	0c000000 	jal	0 <BossSst_Init>
    9fe8:	46006386 	mov.s	$f14,$f12
    9fec:	8e4202d0 	lw	v0,720(s2)
    9ff0:	02c02825 	move	a1,s6
    9ff4:	24061cb6 	li	a2,7350
    9ff8:	24490008 	addiu	t1,v0,8
    9ffc:	ae4902d0 	sw	t1,720(s2)
    a000:	ac5e0000 	sw	s8,0(v0)
    a004:	8faa00f4 	lw	t2,244(sp)
    a008:	00408025 	move	s0,v0
    a00c:	0c000000 	jal	0 <BossSst_Init>
    a010:	8d440000 	lw	a0,0(t2)
    a014:	ae020004 	sw	v0,4(s0)
    a018:	8e4202d0 	lw	v0,720(s2)
    a01c:	244b0008 	addiu	t3,v0,8
    a020:	ae4b02d0 	sw	t3,720(s2)
    a024:	ac550004 	sw	s5,4(v0)
    a028:	ac570000 	sw	s7,0(v0)
    a02c:	26940028 	addiu	s4,s4,40
    a030:	240102d0 	li	at,720
    a034:	1681ffbc 	bne	s4,at,9f28 <func_8093639C+0x15c>
    a038:	26730028 	addiu	s3,s3,40
    a03c:	100000ca 	b	a368 <func_8093639C+0x59c>
    a040:	8fa900f4 	lw	t1,244(sp)
    a044:	24010002 	li	at,2
    a048:	1441007b 	bne	v0,at,a238 <func_8093639C+0x46c>
    a04c:	3c0de700 	lui	t5,0xe700
    a050:	8e4202d0 	lw	v0,720(s2)
    a054:	3c010000 	lui	at,0x0
    a058:	c4340000 	lwc1	$f20,0(at)
    a05c:	244c0008 	addiu	t4,v0,8
    a060:	ae4c02d0 	sw	t4,720(s2)
    a064:	ac4d0000 	sw	t5,0(v0)
    a068:	ac400004 	sw	zero,4(v0)
    a06c:	8e4202d0 	lw	v0,720(s2)
    a070:	3c0fdb06 	lui	t7,0xdb06
    a074:	35ef0020 	ori	t7,t7,0x20
    a078:	244e0008 	addiu	t6,v0,8
    a07c:	ae4e02d0 	sw	t6,720(s2)
    a080:	ac4f0000 	sw	t7,0(v0)
    a084:	8fb800f4 	lw	t8,244(sp)
    a088:	3c030001 	lui	v1,0x1
    a08c:	240e0040 	li	t6,64
    a090:	00781821 	addu	v1,v1,t8
    a094:	8c631de4 	lw	v1,7652(v1)
    a098:	8f040000 	lw	a0,0(t8)
    a09c:	240d0020 	li	t5,32
    a0a0:	00030823 	negu	at,v1
    a0a4:	00015900 	sll	t3,at,0x4
    a0a8:	01615823 	subu	t3,t3,at
    a0ac:	316c00ff 	andi	t4,t3,0xff
    a0b0:	24190020 	li	t9,32
    a0b4:	24090040 	li	t1,64
    a0b8:	240a0001 	li	t2,1
    a0bc:	afaa0018 	sw	t2,24(sp)
    a0c0:	afa90014 	sw	t1,20(sp)
    a0c4:	afb90010 	sw	t9,16(sp)
    a0c8:	afac0020 	sw	t4,32(sp)
    a0cc:	afad0024 	sw	t5,36(sp)
    a0d0:	afae0028 	sw	t6,40(sp)
    a0d4:	afa0001c 	sw	zero,28(sp)
    a0d8:	00002825 	move	a1,zero
    a0dc:	00003825 	move	a3,zero
    a0e0:	00408025 	move	s0,v0
    a0e4:	0c000000 	jal	0 <BossSst_Init>
    a0e8:	3066007f 	andi	a2,v1,0x7f
    a0ec:	ae020004 	sw	v0,4(s0)
    a0f0:	3c010000 	lui	at,0x0
    a0f4:	3c1eda38 	lui	s8,0xda38
    a0f8:	3c161e00 	lui	s6,0x1e00
    a0fc:	36d61e00 	ori	s6,s6,0x1e00
    a100:	37de0003 	ori	s8,s8,0x3
    a104:	c4360000 	lwc1	$f22,0(at)
    a108:	0000a025 	move	s4,zero
    a10c:	02209825 	move	s3,s1
    a110:	3c17de00 	lui	s7,0xde00
    a114:	866f0720 	lh	t7,1824(s3)
    a118:	26700700 	addiu	s0,s3,1792
    a11c:	00003825 	move	a3,zero
    a120:	11e0003e 	beqz	t7,a21c <func_8093639C+0x450>
    a124:	3c150402 	lui	s5,0x402
    a128:	c60c0000 	lwc1	$f12,0(s0)
    a12c:	c60e0004 	lwc1	$f14,4(s0)
    a130:	8e060008 	lw	a2,8(s0)
    a134:	0c000000 	jal	0 <BossSst_Init>
    a138:	26b584b0 	addiu	s5,s5,-31568
    a13c:	9618001e 	lhu	t8,30(s0)
    a140:	3c014f80 	lui	at,0x4f80
    a144:	44988000 	mtc1	t8,$f16
    a148:	07010004 	bgez	t8,a15c <func_8093639C+0x390>
    a14c:	468084a0 	cvt.s.w	$f18,$f16
    a150:	44812000 	mtc1	at,$f4
    a154:	00000000 	nop
    a158:	46049480 	add.s	$f18,$f18,$f4
    a15c:	46169302 	mul.s	$f12,$f18,$f22
    a160:	4600a386 	mov.s	$f14,$f20
    a164:	24070001 	li	a3,1
    a168:	44066000 	mfc1	a2,$f12
    a16c:	0c000000 	jal	0 <BossSst_Init>
    a170:	00000000 	nop
    a174:	8e4202d0 	lw	v0,720(s2)
    a178:	3c09e700 	lui	t1,0xe700
    a17c:	3c0bfa00 	lui	t3,0xfa00
    a180:	24590008 	addiu	t9,v0,8
    a184:	ae5902d0 	sw	t9,720(s2)
    a188:	ac490000 	sw	t1,0(v0)
    a18c:	ac400004 	sw	zero,4(v0)
    a190:	8e4202d0 	lw	v0,720(s2)
    a194:	356b8080 	ori	t3,t3,0x8080
    a198:	3c09fb00 	lui	t1,0xfb00
    a19c:	244a0008 	addiu	t2,v0,8
    a1a0:	ae4a02d0 	sw	t2,720(s2)
    a1a4:	ac4b0000 	sw	t3,0(v0)
    a1a8:	860d0020 	lh	t5,32(s0)
    a1ac:	920c0024 	lbu	t4,36(s0)
    a1b0:	3c050000 	lui	a1,0x0
    a1b4:	24a50000 	addiu	a1,a1,0
    a1b8:	018d0019 	multu	t4,t5
    a1bc:	24061ce4 	li	a2,7396
    a1c0:	00007012 	mflo	t6
    a1c4:	31cf00ff 	andi	t7,t6,0xff
    a1c8:	01f6c025 	or	t8,t7,s6
    a1cc:	ac580004 	sw	t8,4(v0)
    a1d0:	8e4202d0 	lw	v0,720(s2)
    a1d4:	24590008 	addiu	t9,v0,8
    a1d8:	ae5902d0 	sw	t9,720(s2)
    a1dc:	ac490000 	sw	t1,0(v0)
    a1e0:	ac560004 	sw	s6,4(v0)
    a1e4:	8e4202d0 	lw	v0,720(s2)
    a1e8:	244a0008 	addiu	t2,v0,8
    a1ec:	ae4a02d0 	sw	t2,720(s2)
    a1f0:	ac5e0000 	sw	s8,0(v0)
    a1f4:	8fab00f4 	lw	t3,244(sp)
    a1f8:	00408025 	move	s0,v0
    a1fc:	0c000000 	jal	0 <BossSst_Init>
    a200:	8d640000 	lw	a0,0(t3)
    a204:	ae020004 	sw	v0,4(s0)
    a208:	8e4202d0 	lw	v0,720(s2)
    a20c:	244c0008 	addiu	t4,v0,8
    a210:	ae4c02d0 	sw	t4,720(s2)
    a214:	ac550004 	sw	s5,4(v0)
    a218:	ac570000 	sw	s7,0(v0)
    a21c:	26940028 	addiu	s4,s4,40
    a220:	24010078 	li	at,120
    a224:	26730028 	addiu	s3,s3,40
    a228:	1681ffba 	bne	s4,at,a114 <func_8093639C+0x348>
    a22c:	4616a501 	sub.s	$f20,$f20,$f22
    a230:	1000004d 	b	a368 <func_8093639C+0x59c>
    a234:	8fa900f4 	lw	t1,244(sp)
    a238:	24010003 	li	at,3
    a23c:	14410049 	bne	v0,at,a364 <func_8093639C+0x598>
    a240:	3c0efa00 	lui	t6,0xfa00
    a244:	8e4202d0 	lw	v0,720(s2)
    a248:	3c0f0a0a 	lui	t7,0xa0a
    a24c:	35ef5000 	ori	t7,t7,0x5000
    a250:	244d0008 	addiu	t5,v0,8
    a254:	ae4d02d0 	sw	t5,720(s2)
    a258:	35ce0080 	ori	t6,t6,0x80
    a25c:	ac4e0000 	sw	t6,0(v0)
    a260:	ac4f0004 	sw	t7,4(v0)
    a264:	8e4202d0 	lw	v0,720(s2)
    a268:	3c19fb00 	lui	t9,0xfb00
    a26c:	3c010a0a 	lui	at,0xa0a
    a270:	24580008 	addiu	t8,v0,8
    a274:	ae5802d0 	sw	t8,720(s2)
    a278:	ac590000 	sw	t9,0(v0)
    a27c:	922a0724 	lbu	t2,1828(s1)
    a280:	34210a00 	ori	at,at,0xa00
    a284:	2415ffff 	li	s5,-1
    a288:	01415825 	or	t3,t2,at
    a28c:	ac4b0004 	sw	t3,4(v0)
    a290:	862c0722 	lh	t4,1826(s1)
    a294:	3c130000 	lui	s3,0x0
    a298:	26300700 	addiu	s0,s1,1792
    a29c:	12ac0031 	beq	s5,t4,a364 <func_8093639C+0x598>
    a2a0:	26730000 	addiu	s3,s3,0
    a2a4:	3c010000 	lui	at,0x0
    a2a8:	c4360000 	lwc1	$f22,0(at)
    a2ac:	3c013f80 	lui	at,0x3f80
    a2b0:	3c1eda38 	lui	s8,0xda38
    a2b4:	3c140000 	lui	s4,0x0
    a2b8:	4481a000 	mtc1	at,$f20
    a2bc:	26940000 	addiu	s4,s4,0
    a2c0:	37de0003 	ori	s8,s8,0x3
    a2c4:	3c17de00 	lui	s7,0xde00
    a2c8:	c60c0000 	lwc1	$f12,0(s0)
    a2cc:	c60e0004 	lwc1	$f14,4(s0)
    a2d0:	8e060008 	lw	a2,8(s0)
    a2d4:	0c000000 	jal	0 <BossSst_Init>
    a2d8:	00003825 	move	a3,zero
    a2dc:	960d001e 	lhu	t5,30(s0)
    a2e0:	3c014f80 	lui	at,0x4f80
    a2e4:	448d3000 	mtc1	t5,$f6
    a2e8:	05a10004 	bgez	t5,a2fc <func_8093639C+0x530>
    a2ec:	468032a0 	cvt.s.w	$f10,$f6
    a2f0:	44814000 	mtc1	at,$f8
    a2f4:	00000000 	nop
    a2f8:	46085280 	add.s	$f10,$f10,$f8
    a2fc:	46165302 	mul.s	$f12,$f10,$f22
    a300:	4600a386 	mov.s	$f14,$f20
    a304:	24070001 	li	a3,1
    a308:	44066000 	mfc1	a2,$f12
    a30c:	0c000000 	jal	0 <BossSst_Init>
    a310:	00000000 	nop
    a314:	8e4202d0 	lw	v0,720(s2)
    a318:	02802825 	move	a1,s4
    a31c:	24061cff 	li	a2,7423
    a320:	244e0008 	addiu	t6,v0,8
    a324:	ae4e02d0 	sw	t6,720(s2)
    a328:	ac5e0000 	sw	s8,0(v0)
    a32c:	8faf00f4 	lw	t7,244(sp)
    a330:	00408825 	move	s1,v0
    a334:	0c000000 	jal	0 <BossSst_Init>
    a338:	8de40000 	lw	a0,0(t7)
    a33c:	ae220004 	sw	v0,4(s1)
    a340:	8e4202d0 	lw	v0,720(s2)
    a344:	26100028 	addiu	s0,s0,40
    a348:	24580008 	addiu	t8,v0,8
    a34c:	ae5802d0 	sw	t8,720(s2)
    a350:	ac530004 	sw	s3,4(v0)
    a354:	ac570000 	sw	s7,0(v0)
    a358:	86190022 	lh	t9,34(s0)
    a35c:	56b9ffdb 	bnel	s5,t9,a2cc <func_8093639C+0x500>
    a360:	c60c0000 	lwc1	$f12,0(s0)
    a364:	8fa900f4 	lw	t1,244(sp)
    a368:	3c060000 	lui	a2,0x0
    a36c:	24c60000 	addiu	a2,a2,0
    a370:	27a400cc 	addiu	a0,sp,204
    a374:	24071d09 	li	a3,7433
    a378:	0c000000 	jal	0 <BossSst_Init>
    a37c:	8d250000 	lw	a1,0(t1)
    a380:	8fbf006c 	lw	ra,108(sp)
    a384:	d7b40038 	ldc1	$f20,56(sp)
    a388:	d7b60040 	ldc1	$f22,64(sp)
    a38c:	8fb00048 	lw	s0,72(sp)
    a390:	8fb1004c 	lw	s1,76(sp)
    a394:	8fb20050 	lw	s2,80(sp)
    a398:	8fb30054 	lw	s3,84(sp)
    a39c:	8fb40058 	lw	s4,88(sp)
    a3a0:	8fb5005c 	lw	s5,92(sp)
    a3a4:	8fb60060 	lw	s6,96(sp)
    a3a8:	8fb70064 	lw	s7,100(sp)
    a3ac:	8fbe0068 	lw	s8,104(sp)
    a3b0:	03e00008 	jr	ra
    a3b4:	27bd00f0 	addiu	sp,sp,240
	...
