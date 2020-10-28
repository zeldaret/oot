
build/src/code/audio_heap.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800DDE20>:
       0:	3c014380 	lui	at,0x4380
       4:	44812000 	mtc1	at,$f4
       8:	3c010000 	lui	at,0x0
       c:	c4262868 	lwc1	$f6,10344(at)
      10:	46062202 	mul.s	$f8,$f4,$f6
      14:	03e00008 	jr	ra
      18:	460c4003 	div.s	$f0,$f8,$f12

0000001c <func_800DDE3C>:
      1c:	27bdffd8 	addiu	sp,sp,-40
      20:	3c013e80 	lui	at,0x3e80
      24:	afbf0024 	sw	ra,36(sp)
      28:	44816000 	mtc1	at,$f12
      2c:	afb30020 	sw	s3,32(sp)
      30:	afb2001c 	sw	s2,28(sp)
      34:	afb10018 	sw	s1,24(sp)
      38:	0c000000 	jal	0 <func_800DDE20>
      3c:	afb00014 	sw	s0,20(sp)
      40:	3c130000 	lui	s3,0x0
      44:	26730000 	addiu	s3,s3,0
      48:	8e6e3520 	lw	t6,13600(s3)
      4c:	3c010000 	lui	at,0x0
      50:	e5c003fc 	swc1	$f0,1020(t6)
      54:	0c000000 	jal	0 <func_800DDE20>
      58:	c42c0000 	lwc1	$f12,0(at)
      5c:	8e6f3520 	lw	t7,13600(s3)
      60:	3c013f00 	lui	at,0x3f00
      64:	44816000 	mtc1	at,$f12
      68:	0c000000 	jal	0 <func_800DDE20>
      6c:	e5e003f8 	swc1	$f0,1016(t7)
      70:	8e783520 	lw	t8,13600(s3)
      74:	3c010000 	lui	at,0x0
      78:	e70003f4 	swc1	$f0,1012(t8)
      7c:	0c000000 	jal	0 <func_800DDE20>
      80:	c42c0004 	lwc1	$f12,4(at)
      84:	8e793520 	lw	t9,13600(s3)
      88:	3c013f40 	lui	at,0x3f40
      8c:	44816000 	mtc1	at,$f12
      90:	0c000000 	jal	0 <func_800DDE20>
      94:	e72003f0 	swc1	$f0,1008(t9)
      98:	8e683520 	lw	t0,13600(s3)
      9c:	24110080 	li	s1,128
      a0:	24100200 	li	s0,512
      a4:	241200fb 	li	s2,251
      a8:	e50003ec 	swc1	$f0,1004(t0)
      ac:	02514823 	subu	t1,s2,s1
      b0:	44892000 	mtc1	t1,$f4
      b4:	0c000000 	jal	0 <func_800DDE20>
      b8:	46802320 	cvt.s.w	$f12,$f4
      bc:	8e6a3520 	lw	t2,13600(s3)
      c0:	26310001 	addiu	s1,s1,1
      c4:	2a2100fb 	slti	at,s1,251
      c8:	01505821 	addu	t3,t2,s0
      cc:	26100004 	addiu	s0,s0,4
      d0:	1420fff6 	bnez	at,ac <func_800DDE3C+0x90>
      d4:	e5600000 	swc1	$f0,0(t3)
      d8:	24100040 	li	s0,64
      dc:	241201fc 	li	s2,508
      e0:	44923000 	mtc1	s2,$f6
      e4:	0c000000 	jal	0 <func_800DDE20>
      e8:	46803320 	cvt.s.w	$f12,$f6
      ec:	8e6c3520 	lw	t4,13600(s3)
      f0:	2652fffc 	addiu	s2,s2,-4
      f4:	2a41003d 	slti	at,s2,61
      f8:	01906821 	addu	t5,t4,s0
      fc:	26100004 	addiu	s0,s0,4
     100:	1020fff7 	beqz	at,e0 <func_800DDE3C+0xc4>
     104:	e5a00000 	swc1	$f0,0(t5)
     108:	24100004 	li	s0,4
     10c:	24120528 	li	s2,1320
     110:	241101a4 	li	s1,420
     114:	44924000 	mtc1	s2,$f8
     118:	0c000000 	jal	0 <func_800DDE20>
     11c:	46804320 	cvt.s.w	$f12,$f8
     120:	8e6e3520 	lw	t6,13600(s3)
     124:	2652ffc4 	addiu	s2,s2,-60
     128:	01d07821 	addu	t7,t6,s0
     12c:	26100004 	addiu	s0,s0,4
     130:	1632fff8 	bne	s1,s2,114 <func_800DDE3C+0xf8>
     134:	e5e00000 	swc1	$f0,0(t7)
     138:	44805000 	mtc1	zero,$f10
     13c:	8e783520 	lw	t8,13600(s3)
     140:	e70a0000 	swc1	$f10,0(t8)
     144:	8fbf0024 	lw	ra,36(sp)
     148:	8fb30020 	lw	s3,32(sp)
     14c:	8fb2001c 	lw	s2,28(sp)
     150:	8fb10018 	lw	s1,24(sp)
     154:	8fb00014 	lw	s0,20(sp)
     158:	03e00008 	jr	ra
     15c:	27bd0028 	addiu	sp,sp,40

00000160 <Audio_ResetLoadStatus>:
     160:	3c030000 	lui	v1,0x0
     164:	3c020000 	lui	v0,0x0
     168:	24420030 	addiu	v0,v0,48
     16c:	24630000 	addiu	v1,v1,0
     170:	24040005 	li	a0,5
     174:	906e3468 	lbu	t6,13416(v1)
     178:	508e0003 	beql	a0,t6,188 <Audio_ResetLoadStatus+0x28>
     17c:	24630001 	addiu	v1,v1,1
     180:	a0603468 	sb	zero,13416(v1)
     184:	24630001 	addiu	v1,v1,1
     188:	0062082b 	sltu	at,v1,v0
     18c:	5420fffa 	bnezl	at,178 <Audio_ResetLoadStatus+0x18>
     190:	906e3468 	lbu	t6,13416(v1)
     194:	3c030000 	lui	v1,0x0
     198:	3c020000 	lui	v0,0x0
     19c:	24420030 	addiu	v0,v0,48
     1a0:	24630000 	addiu	v1,v1,0
     1a4:	906f3438 	lbu	t7,13368(v1)
     1a8:	508f0003 	beql	a0,t7,1b8 <Audio_ResetLoadStatus+0x58>
     1ac:	24630001 	addiu	v1,v1,1
     1b0:	a0603438 	sb	zero,13368(v1)
     1b4:	24630001 	addiu	v1,v1,1
     1b8:	0062082b 	sltu	at,v1,v0
     1bc:	5420fffa 	bnezl	at,1a8 <Audio_ResetLoadStatus+0x48>
     1c0:	906f3438 	lbu	t7,13368(v1)
     1c4:	3c030000 	lui	v1,0x0
     1c8:	3c020000 	lui	v0,0x0
     1cc:	24420080 	addiu	v0,v0,128
     1d0:	24630000 	addiu	v1,v1,0
     1d4:	90783498 	lbu	t8,13464(v1)
     1d8:	50980003 	beql	a0,t8,1e8 <Audio_ResetLoadStatus+0x88>
     1dc:	90793499 	lbu	t9,13465(v1)
     1e0:	a0603498 	sb	zero,13464(v1)
     1e4:	90793499 	lbu	t9,13465(v1)
     1e8:	50990003 	beql	a0,t9,1f8 <Audio_ResetLoadStatus+0x98>
     1ec:	9068349a 	lbu	t0,13466(v1)
     1f0:	a0603499 	sb	zero,13465(v1)
     1f4:	9068349a 	lbu	t0,13466(v1)
     1f8:	50880003 	beql	a0,t0,208 <Audio_ResetLoadStatus+0xa8>
     1fc:	9069349b 	lbu	t1,13467(v1)
     200:	a060349a 	sb	zero,13466(v1)
     204:	9069349b 	lbu	t1,13467(v1)
     208:	50890003 	beql	a0,t1,218 <Audio_ResetLoadStatus+0xb8>
     20c:	24630004 	addiu	v1,v1,4
     210:	a060349b 	sb	zero,13467(v1)
     214:	24630004 	addiu	v1,v1,4
     218:	5462ffef 	bnel	v1,v0,1d8 <Audio_ResetLoadStatus+0x78>
     21c:	90783498 	lbu	t8,13464(v1)
     220:	03e00008 	jr	ra
     224:	00000000 	nop

00000228 <Audio_DiscardBank>:
     228:	27bdffd0 	addiu	sp,sp,-48
     22c:	afb50028 	sw	s5,40(sp)
     230:	3c150000 	lui	s5,0x0
     234:	26b50000 	addiu	s5,s5,0
     238:	8ea22894 	lw	v0,10388(s5)
     23c:	afb40024 	sw	s4,36(sp)
     240:	afb10018 	sw	s1,24(sp)
     244:	0080a025 	move	s4,a0
     248:	afbf002c 	sw	ra,44(sp)
     24c:	afb30020 	sw	s3,32(sp)
     250:	afb2001c 	sw	s2,28(sp)
     254:	afb00014 	sw	s0,20(sp)
     258:	18400023 	blez	v0,2e8 <Audio_DiscardBank+0xc0>
     25c:	00008825 	move	s1,zero
     260:	3c130000 	lui	s3,0x0
     264:	26730000 	addiu	s3,s3,0
     268:	00009025 	move	s2,zero
     26c:	8eae352c 	lw	t6,13612(s5)
     270:	024e8021 	addu	s0,s2,t6
     274:	920f0033 	lbu	t7,51(s0)
     278:	568f0018 	bnel	s4,t7,2dc <Audio_DiscardBank+0xb4>
     27c:	26310001 	addiu	s1,s1,1
     280:	92180034 	lbu	t8,52(s0)
     284:	1700000c 	bnez	t8,2b8 <Audio_DiscardBank+0x90>
     288:	00000000 	nop
     28c:	92190030 	lbu	t9,48(s0)
     290:	13200009 	beqz	t9,2b8 <Audio_DiscardBank+0x90>
     294:	00000000 	nop
     298:	8e020044 	lw	v0,68(s0)
     29c:	90480000 	lbu	t0,0(v0)
     2a0:	3109ff7f 	andi	t1,t0,0xff7f
     2a4:	a0490000 	sb	t1,0(v0)
     2a8:	8e020044 	lw	v0,68(s0)
     2ac:	904b0000 	lbu	t3,0(v0)
     2b0:	356c0040 	ori	t4,t3,0x40
     2b4:	a04c0000 	sb	t4,0(v0)
     2b8:	0c000000 	jal	0 <func_800DDE20>
     2bc:	02002025 	move	a0,s0
     2c0:	0c000000 	jal	0 <func_800DDE20>
     2c4:	02002025 	move	a0,s0
     2c8:	02602025 	move	a0,s3
     2cc:	0c000000 	jal	0 <func_800DDE20>
     2d0:	02002825 	move	a1,s0
     2d4:	8ea22894 	lw	v0,10388(s5)
     2d8:	26310001 	addiu	s1,s1,1
     2dc:	0222082a 	slt	at,s1,v0
     2e0:	1420ffe2 	bnez	at,26c <Audio_DiscardBank+0x44>
     2e4:	265200e0 	addiu	s2,s2,224
     2e8:	8fbf002c 	lw	ra,44(sp)
     2ec:	8fb00014 	lw	s0,20(sp)
     2f0:	8fb10018 	lw	s1,24(sp)
     2f4:	8fb2001c 	lw	s2,28(sp)
     2f8:	8fb30020 	lw	s3,32(sp)
     2fc:	8fb40024 	lw	s4,36(sp)
     300:	8fb50028 	lw	s5,40(sp)
     304:	03e00008 	jr	ra
     308:	27bd0030 	addiu	sp,sp,48

0000030c <func_800DE12C>:
     30c:	3c080000 	lui	t0,0x0
     310:	25080000 	addiu	t0,t0,0
     314:	8d032894 	lw	v1,10388(t0)
     318:	00803825 	move	a3,a0
     31c:	00001025 	move	v0,zero
     320:	1860001a 	blez	v1,38c <func_800DE12C+0x80>
     324:	00002825 	move	a1,zero
     328:	240a0001 	li	t2,1
     32c:	24090006 	li	t1,6
     330:	8d0e352c 	lw	t6,13612(t0)
     334:	24420001 	addiu	v0,v0,1
     338:	00ae2021 	addu	a0,a1,t6
     33c:	908f0033 	lbu	t7,51(a0)
     340:	24860030 	addiu	a2,a0,48
     344:	54ef000f 	bnel	a3,t7,384 <func_800DE12C+0x78>
     348:	0043082a 	slt	at,v0,v1
     34c:	90d80000 	lbu	t8,0(a2)
     350:	5300000c 	beqzl	t8,384 <func_800DE12C+0x78>
     354:	0043082a 	slt	at,v0,v1
     358:	90c40040 	lbu	a0,64(a2)
     35c:	3099000f 	andi	t9,a0,0xf
     360:	55390008 	bnel	t1,t9,384 <func_800DE12C+0x78>
     364:	0043082a 	slt	at,v0,v1
     368:	a0ca0000 	sb	t2,0(a2)
     36c:	c5042864 	lwc1	$f4,10340(t0)
     370:	348c0010 	ori	t4,a0,0x10
     374:	a0cc0040 	sb	t4,64(a2)
     378:	e4c4004c 	swc1	$f4,76(a2)
     37c:	8d032894 	lw	v1,10388(t0)
     380:	0043082a 	slt	at,v0,v1
     384:	1420ffea 	bnez	at,330 <func_800DE12C+0x24>
     388:	24a500e0 	addiu	a1,a1,224
     38c:	03e00008 	jr	ra
     390:	00000000 	nop

00000394 <Audio_DiscardSequence>:
     394:	3c020000 	lui	v0,0x0
     398:	8442285c 	lh	v0,10332(v0)
     39c:	27bdffd8 	addiu	sp,sp,-40
     3a0:	afb20020 	sw	s2,32(sp)
     3a4:	afb1001c 	sw	s1,28(sp)
     3a8:	00809025 	move	s2,a0
     3ac:	afbf0024 	sw	ra,36(sp)
     3b0:	afb00018 	sw	s0,24(sp)
     3b4:	18400012 	blez	v0,400 <Audio_DiscardSequence+0x6c>
     3b8:	00008825 	move	s1,zero
     3bc:	3c100000 	lui	s0,0x0
     3c0:	26100000 	addiu	s0,s0,0
     3c4:	8e0e3530 	lw	t6,13616(s0)
     3c8:	000e7fc2 	srl	t7,t6,0x1f
     3cc:	51e00009 	beqzl	t7,3f4 <Audio_DiscardSequence+0x60>
     3d0:	26310001 	addiu	s1,s1,1
     3d4:	92183534 	lbu	t8,13620(s0)
     3d8:	56580006 	bnel	s2,t8,3f4 <Audio_DiscardSequence+0x60>
     3dc:	26310001 	addiu	s1,s1,1
     3e0:	0c000000 	jal	0 <func_800DDE20>
     3e4:	26043530 	addiu	a0,s0,13616
     3e8:	3c020000 	lui	v0,0x0
     3ec:	8442285c 	lh	v0,10332(v0)
     3f0:	26310001 	addiu	s1,s1,1
     3f4:	0222082a 	slt	at,s1,v0
     3f8:	1420fff2 	bnez	at,3c4 <Audio_DiscardSequence+0x30>
     3fc:	26100160 	addiu	s0,s0,352
     400:	8fbf0024 	lw	ra,36(sp)
     404:	8fb00018 	lw	s0,24(sp)
     408:	8fb1001c 	lw	s1,28(sp)
     40c:	8fb20020 	lw	s2,32(sp)
     410:	03e00008 	jr	ra
     414:	27bd0028 	addiu	sp,sp,40

00000418 <func_800DE238>:
     418:	27bdffe8 	addiu	sp,sp,-24
     41c:	afbf0014 	sw	ra,20(sp)
     420:	0c000000 	jal	0 <func_800DDE20>
     424:	00000000 	nop
     428:	8fbf0014 	lw	ra,20(sp)
     42c:	27bd0018 	addiu	sp,sp,24
     430:	03e00008 	jr	ra
     434:	00000000 	nop

00000438 <func_800DE258>:
     438:	3c0e0000 	lui	t6,0x0
     43c:	8dce29a0 	lw	t6,10656(t6)
     440:	27bdffe8 	addiu	sp,sp,-24
     444:	afbf0014 	sw	ra,20(sp)
     448:	afa40018 	sw	a0,24(sp)
     44c:	afa5001c 	sw	a1,28(sp)
     450:	11c00005 	beqz	t6,468 <func_800DE258+0x30>
     454:	00001825 	move	v1,zero
     458:	3c040000 	lui	a0,0x0
     45c:	0c000000 	jal	0 <func_800DDE20>
     460:	248429a0 	addiu	a0,a0,10656
     464:	00401825 	move	v1,v0
     468:	14600004 	bnez	v1,47c <func_800DE258+0x44>
     46c:	8fa40018 	lw	a0,24(sp)
     470:	0c000000 	jal	0 <func_800DDE20>
     474:	8fa5001c 	lw	a1,28(sp)
     478:	00401825 	move	v1,v0
     47c:	8fbf0014 	lw	ra,20(sp)
     480:	27bd0018 	addiu	sp,sp,24
     484:	00601025 	move	v0,v1
     488:	03e00008 	jr	ra
     48c:	00000000 	nop

00000490 <func_800DE2B0>:
     490:	3c0e0000 	lui	t6,0x0
     494:	8dce29a0 	lw	t6,10656(t6)
     498:	27bdffe8 	addiu	sp,sp,-24
     49c:	afbf0014 	sw	ra,20(sp)
     4a0:	afa40018 	sw	a0,24(sp)
     4a4:	afa5001c 	sw	a1,28(sp)
     4a8:	11c00005 	beqz	t6,4c0 <func_800DE2B0+0x30>
     4ac:	00001825 	move	v1,zero
     4b0:	3c040000 	lui	a0,0x0
     4b4:	0c000000 	jal	0 <func_800DDE20>
     4b8:	248429a0 	addiu	a0,a0,10656
     4bc:	00401825 	move	v1,v0
     4c0:	14600004 	bnez	v1,4d4 <func_800DE2B0+0x44>
     4c4:	8fa40018 	lw	a0,24(sp)
     4c8:	0c000000 	jal	0 <func_800DDE20>
     4cc:	8fa5001c 	lw	a1,28(sp)
     4d0:	00401825 	move	v1,v0
     4d4:	8fbf0014 	lw	ra,20(sp)
     4d8:	27bd0018 	addiu	sp,sp,24
     4dc:	00601025 	move	v0,v1
     4e0:	03e00008 	jr	ra
     4e4:	00000000 	nop

000004e8 <Audio_AllocDmaMemory>:
     4e8:	27bdffe0 	addiu	sp,sp,-32
     4ec:	afbf0014 	sw	ra,20(sp)
     4f0:	0c000000 	jal	0 <func_800DDE20>
     4f4:	afa50024 	sw	a1,36(sp)
     4f8:	10400005 	beqz	v0,510 <Audio_AllocDmaMemory+0x28>
     4fc:	00402025 	move	a0,v0
     500:	8fa50024 	lw	a1,36(sp)
     504:	0c000000 	jal	0 <func_800DDE20>
     508:	afa2001c 	sw	v0,28(sp)
     50c:	8fa4001c 	lw	a0,28(sp)
     510:	8fbf0014 	lw	ra,20(sp)
     514:	27bd0020 	addiu	sp,sp,32
     518:	00801025 	move	v0,a0
     51c:	03e00008 	jr	ra
     520:	00000000 	nop

00000524 <Audio_AllocDmaMemoryZeroed>:
     524:	27bdffe0 	addiu	sp,sp,-32
     528:	afbf0014 	sw	ra,20(sp)
     52c:	0c000000 	jal	0 <func_800DDE20>
     530:	afa50024 	sw	a1,36(sp)
     534:	10400005 	beqz	v0,54c <Audio_AllocDmaMemoryZeroed+0x28>
     538:	00402025 	move	a0,v0
     53c:	8fa50024 	lw	a1,36(sp)
     540:	0c000000 	jal	0 <func_800DDE20>
     544:	afa2001c 	sw	v0,28(sp)
     548:	8fa4001c 	lw	a0,28(sp)
     54c:	8fbf0014 	lw	ra,20(sp)
     550:	27bd0020 	addiu	sp,sp,32
     554:	00801025 	move	v0,a0
     558:	03e00008 	jr	ra
     55c:	00000000 	nop

00000560 <Audio_AllocZeroed>:
     560:	27bdffe8 	addiu	sp,sp,-24
     564:	afbf0014 	sw	ra,20(sp)
     568:	0c000000 	jal	0 <func_800DDE20>
     56c:	afa40018 	sw	a0,24(sp)
     570:	8fa40018 	lw	a0,24(sp)
     574:	1040000c 	beqz	v0,5a8 <Audio_AllocZeroed+0x48>
     578:	00402825 	move	a1,v0
     57c:	8c8e0004 	lw	t6,4(a0)
     580:	00401825 	move	v1,v0
     584:	004e082b 	sltu	at,v0,t6
     588:	50200008 	beqzl	at,5ac <Audio_AllocZeroed+0x4c>
     58c:	8fbf0014 	lw	ra,20(sp)
     590:	a0600000 	sb	zero,0(v1)
     594:	8c8f0004 	lw	t7,4(a0)
     598:	24630001 	addiu	v1,v1,1
     59c:	006f082b 	sltu	at,v1,t7
     5a0:	5420fffc 	bnezl	at,594 <Audio_AllocZeroed+0x34>
     5a4:	a0600000 	sb	zero,0(v1)
     5a8:	8fbf0014 	lw	ra,20(sp)
     5ac:	27bd0018 	addiu	sp,sp,24
     5b0:	00a01025 	move	v0,a1
     5b4:	03e00008 	jr	ra
     5b8:	00000000 	nop

000005bc <Audio_Alloc>:
     5bc:	8c860004 	lw	a2,4(a0)
     5c0:	8c8e0000 	lw	t6,0(a0)
     5c4:	8c8f0008 	lw	t7,8(a0)
     5c8:	24a2000f 	addiu	v0,a1,15
     5cc:	2401fff0 	li	at,-16
     5d0:	00411024 	and	v0,v0,at
     5d4:	00c2c821 	addu	t9,a2,v0
     5d8:	01cfc021 	addu	t8,t6,t7
     5dc:	0319082b 	sltu	at,t8,t9
     5e0:	14200004 	bnez	at,5f4 <Audio_Alloc+0x38>
     5e4:	00c01825 	move	v1,a2
     5e8:	00c24021 	addu	t0,a2,v0
     5ec:	10000003 	b	5fc <Audio_Alloc+0x40>
     5f0:	ac880004 	sw	t0,4(a0)
     5f4:	03e00008 	jr	ra
     5f8:	00001025 	move	v0,zero
     5fc:	8c89000c 	lw	t1,12(a0)
     600:	00601025 	move	v0,v1
     604:	252a0001 	addiu	t2,t1,1
     608:	ac8a000c 	sw	t2,12(a0)
     60c:	03e00008 	jr	ra
     610:	00000000 	nop

00000614 <Audio_SoundAllocPoolInit>:
     614:	24a2000f 	addiu	v0,a1,15
     618:	2401fff0 	li	at,-16
     61c:	30ae000f 	andi	t6,a1,0xf
     620:	00411024 	and	v0,v0,at
     624:	00ce7823 	subu	t7,a2,t6
     628:	ac820000 	sw	v0,0(a0)
     62c:	ac820004 	sw	v0,4(a0)
     630:	ac8f0008 	sw	t7,8(a0)
     634:	03e00008 	jr	ra
     638:	ac80000c 	sw	zero,12(a0)

0000063c <Audio_PersistentPoolClear>:
     63c:	8c8e0004 	lw	t6,4(a0)
     640:	ac800010 	sw	zero,16(a0)
     644:	ac800000 	sw	zero,0(a0)
     648:	03e00008 	jr	ra
     64c:	ac8e0008 	sw	t6,8(a0)

00000650 <Audio_TemporaryPoolClear>:
     650:	8c820004 	lw	v0,4(a0)
     654:	8c8e000c 	lw	t6,12(a0)
     658:	2403ffff 	li	v1,-1
     65c:	ac800010 	sw	zero,16(a0)
     660:	004e7821 	addu	t7,v0,t6
     664:	ac800000 	sw	zero,0(a0)
     668:	ac8f0020 	sw	t7,32(a0)
     66c:	a483001e 	sh	v1,30(a0)
     670:	a483002a 	sh	v1,42(a0)
     674:	ac820008 	sw	v0,8(a0)
     678:	03e00008 	jr	ra
     67c:	ac820014 	sw	v0,20(a0)

00000680 <func_800DE4A0>:
     680:	8c8e0000 	lw	t6,0(a0)
     684:	ac80000c 	sw	zero,12(a0)
     688:	03e00008 	jr	ra
     68c:	ac8e0004 	sw	t6,4(a0)

00000690 <func_800DE4B0>:
     690:	27bdffd0 	addiu	sp,sp,-48
     694:	afbf0014 	sw	ra,20(sp)
     698:	10800009 	beqz	a0,6c0 <func_800DE4B0+0x30>
     69c:	00803025 	move	a2,a0
     6a0:	24010001 	li	at,1
     6a4:	1081000c 	beq	a0,at,6d8 <func_800DE4B0+0x48>
     6a8:	3c030000 	lui	v1,0x0
     6ac:	24010002 	li	at,2
     6b0:	1081000e 	beq	a0,at,6ec <func_800DE4B0+0x5c>
     6b4:	3c030000 	lui	v1,0x0
     6b8:	10000010 	b	6fc <func_800DE4B0+0x6c>
     6bc:	8fa3002c 	lw	v1,44(sp)
     6c0:	3c0e0000 	lui	t6,0x0
     6c4:	3c030000 	lui	v1,0x0
     6c8:	25ce3498 	addiu	t6,t6,13464
     6cc:	24632a20 	addiu	v1,v1,10784
     6d0:	1000000a 	b	6fc <func_800DE4B0+0x6c>
     6d4:	afae001c 	sw	t6,28(sp)
     6d8:	3c0f0000 	lui	t7,0x0
     6dc:	25ef3468 	addiu	t7,t7,13416
     6e0:	24632b30 	addiu	v1,v1,11056
     6e4:	10000005 	b	6fc <func_800DE4B0+0x6c>
     6e8:	afaf001c 	sw	t7,28(sp)
     6ec:	3c180000 	lui	t8,0x0
     6f0:	27183438 	addiu	t8,t8,13368
     6f4:	24632c40 	addiu	v1,v1,11328
     6f8:	afb8001c 	sw	t8,28(sp)
     6fc:	8c650000 	lw	a1,0(v1)
     700:	24620004 	addiu	v0,v1,4
     704:	24010002 	li	at,2
     708:	10a0002d 	beqz	a1,7c0 <func_800DE4B0+0x130>
     70c:	0005c880 	sll	t9,a1,0x2
     710:	0325c823 	subu	t9,t9,a1
     714:	8c49000c 	lw	t1,12(v0)
     718:	0019c880 	sll	t9,t9,0x2
     71c:	00794021 	addu	t0,v1,t9
     720:	8d040008 	lw	a0,8(t0)
     724:	252affff 	addiu	t2,t1,-1
     728:	ac4a000c 	sw	t2,12(v0)
     72c:	14c1000c 	bne	a2,at,760 <func_800DE4B0+0xd0>
     730:	ac440004 	sw	a0,4(v0)
     734:	8c6b0000 	lw	t3,0(v1)
     738:	000b6080 	sll	t4,t3,0x2
     73c:	018b6023 	subu	t4,t4,t3
     740:	000c6080 	sll	t4,t4,0x2
     744:	006c6821 	addu	t5,v1,t4
     748:	85a40012 	lh	a0,18(t5)
     74c:	afa60030 	sw	a2,48(sp)
     750:	0c000000 	jal	0 <func_800DDE20>
     754:	afa3002c 	sw	v1,44(sp)
     758:	8fa3002c 	lw	v1,44(sp)
     75c:	8fa60030 	lw	a2,48(sp)
     760:	24010001 	li	at,1
     764:	54c1000b 	bnel	a2,at,794 <func_800DE4B0+0x104>
     768:	8c680000 	lw	t0,0(v1)
     76c:	8c6e0000 	lw	t6,0(v1)
     770:	000e7880 	sll	t7,t6,0x2
     774:	01ee7823 	subu	t7,t7,t6
     778:	000f7880 	sll	t7,t7,0x2
     77c:	006fc021 	addu	t8,v1,t7
     780:	87040012 	lh	a0,18(t8)
     784:	0c000000 	jal	0 <func_800DDE20>
     788:	afa3002c 	sw	v1,44(sp)
     78c:	8fa3002c 	lw	v1,44(sp)
     790:	8c680000 	lw	t0,0(v1)
     794:	8fb9001c 	lw	t9,28(sp)
     798:	00084880 	sll	t1,t0,0x2
     79c:	01284823 	subu	t1,t1,t0
     7a0:	00094880 	sll	t1,t1,0x2
     7a4:	00695021 	addu	t2,v1,t1
     7a8:	854b0012 	lh	t3,18(t2)
     7ac:	032b6021 	addu	t4,t9,t3
     7b0:	a1800000 	sb	zero,0(t4)
     7b4:	8c6d0000 	lw	t5,0(v1)
     7b8:	25aeffff 	addiu	t6,t5,-1
     7bc:	ac6e0000 	sw	t6,0(v1)
     7c0:	8fbf0014 	lw	ra,20(sp)
     7c4:	27bd0030 	addiu	sp,sp,48
     7c8:	03e00008 	jr	ra
     7cc:	00000000 	nop

000007d0 <Audio_InitMainPools>:
     7d0:	27bdffe8 	addiu	sp,sp,-24
     7d4:	00803025 	move	a2,a0
     7d8:	afbf0014 	sw	ra,20(sp)
     7dc:	3c040000 	lui	a0,0x0
     7e0:	3c050000 	lui	a1,0x0
     7e4:	8ca53524 	lw	a1,13604(a1)
     7e8:	248429b0 	addiu	a0,a0,10672
     7ec:	0c000000 	jal	0 <func_800DDE20>
     7f0:	afa60018 	sw	a2,24(sp)
     7f4:	3c020000 	lui	v0,0x0
     7f8:	24420000 	addiu	v0,v0,0
     7fc:	8fa70018 	lw	a3,24(sp)
     800:	8c4e3524 	lw	t6,13604(v0)
     804:	8c4f3528 	lw	t7,13608(v0)
     808:	3c040000 	lui	a0,0x0
     80c:	24842990 	addiu	a0,a0,10640
     810:	01c72821 	addu	a1,t6,a3
     814:	0c000000 	jal	0 <func_800DDE20>
     818:	01e73023 	subu	a2,t7,a3
     81c:	8fbf0014 	lw	ra,20(sp)
     820:	3c010000 	lui	at,0x0
     824:	ac2029a0 	sw	zero,10656(at)
     828:	03e00008 	jr	ra
     82c:	27bd0018 	addiu	sp,sp,24

00000830 <Audio_SessionPoolsInit>:
     830:	3c020000 	lui	v0,0x0
     834:	24420000 	addiu	v0,v0,0
     838:	8c4e2990 	lw	t6,10640(v0)
     83c:	27bdffe8 	addiu	sp,sp,-24
     840:	afa40018 	sw	a0,24(sp)
     844:	8faf0018 	lw	t7,24(sp)
     848:	afbf0014 	sw	ra,20(sp)
     84c:	3c040000 	lui	a0,0x0
     850:	ac4e2994 	sw	t6,10644(v0)
     854:	24842990 	addiu	a0,a0,10640
     858:	0c000000 	jal	0 <func_800DDE20>
     85c:	8de50000 	lw	a1,0(t7)
     860:	8fb80018 	lw	t8,24(sp)
     864:	3c040000 	lui	a0,0x0
     868:	248429c0 	addiu	a0,a0,10688
     86c:	00402825 	move	a1,v0
     870:	0c000000 	jal	0 <func_800DDE20>
     874:	8f060000 	lw	a2,0(t8)
     878:	8fb90018 	lw	t9,24(sp)
     87c:	3c040000 	lui	a0,0x0
     880:	24842990 	addiu	a0,a0,10640
     884:	0c000000 	jal	0 <func_800DDE20>
     888:	8f25000c 	lw	a1,12(t9)
     88c:	8fa80018 	lw	t0,24(sp)
     890:	3c040000 	lui	a0,0x0
     894:	248429f0 	addiu	a0,a0,10736
     898:	00402825 	move	a1,v0
     89c:	0c000000 	jal	0 <func_800DDE20>
     8a0:	8d06000c 	lw	a2,12(t0)
     8a4:	8fbf0014 	lw	ra,20(sp)
     8a8:	27bd0018 	addiu	sp,sp,24
     8ac:	03e00008 	jr	ra
     8b0:	00000000 	nop

000008b4 <Audio_SeqAndBankPoolInit>:
     8b4:	3c020000 	lui	v0,0x0
     8b8:	24420000 	addiu	v0,v0,0
     8bc:	8c4e29f0 	lw	t6,10736(v0)
     8c0:	27bdffe8 	addiu	sp,sp,-24
     8c4:	afa40018 	sw	a0,24(sp)
     8c8:	8faf0018 	lw	t7,24(sp)
     8cc:	afbf0014 	sw	ra,20(sp)
     8d0:	3c040000 	lui	a0,0x0
     8d4:	ac4e29f4 	sw	t6,10740(v0)
     8d8:	248429f0 	addiu	a0,a0,10736
     8dc:	0c000000 	jal	0 <func_800DDE20>
     8e0:	8de50000 	lw	a1,0(t7)
     8e4:	8fb80018 	lw	t8,24(sp)
     8e8:	3c040000 	lui	a0,0x0
     8ec:	24842a00 	addiu	a0,a0,10752
     8f0:	00402825 	move	a1,v0
     8f4:	0c000000 	jal	0 <func_800DDE20>
     8f8:	8f060000 	lw	a2,0(t8)
     8fc:	8fb90018 	lw	t9,24(sp)
     900:	3c040000 	lui	a0,0x0
     904:	248429f0 	addiu	a0,a0,10736
     908:	0c000000 	jal	0 <func_800DDE20>
     90c:	8f250004 	lw	a1,4(t9)
     910:	8fa80018 	lw	t0,24(sp)
     914:	3c040000 	lui	a0,0x0
     918:	24842a10 	addiu	a0,a0,10768
     91c:	00402825 	move	a1,v0
     920:	0c000000 	jal	0 <func_800DDE20>
     924:	8d060004 	lw	a2,4(t0)
     928:	8fbf0014 	lw	ra,20(sp)
     92c:	27bd0018 	addiu	sp,sp,24
     930:	03e00008 	jr	ra
     934:	00000000 	nop

00000938 <Audio_PersistentPoolsInit>:
     938:	3c020000 	lui	v0,0x0
     93c:	24420000 	addiu	v0,v0,0
     940:	8c4e2a00 	lw	t6,10752(v0)
     944:	27bdffe0 	addiu	sp,sp,-32
     948:	afb00018 	sw	s0,24(sp)
     94c:	00808025 	move	s0,a0
     950:	afbf001c 	sw	ra,28(sp)
     954:	3c040000 	lui	a0,0x0
     958:	ac4e2a04 	sw	t6,10756(v0)
     95c:	8e050000 	lw	a1,0(s0)
     960:	0c000000 	jal	0 <func_800DDE20>
     964:	24842a00 	addiu	a0,a0,10752
     968:	3c040000 	lui	a0,0x0
     96c:	24842a24 	addiu	a0,a0,10788
     970:	00402825 	move	a1,v0
     974:	0c000000 	jal	0 <func_800DDE20>
     978:	8e060000 	lw	a2,0(s0)
     97c:	3c040000 	lui	a0,0x0
     980:	24842a00 	addiu	a0,a0,10752
     984:	0c000000 	jal	0 <func_800DDE20>
     988:	8e050004 	lw	a1,4(s0)
     98c:	3c040000 	lui	a0,0x0
     990:	24842b34 	addiu	a0,a0,11060
     994:	00402825 	move	a1,v0
     998:	0c000000 	jal	0 <func_800DDE20>
     99c:	8e060004 	lw	a2,4(s0)
     9a0:	3c040000 	lui	a0,0x0
     9a4:	24842a00 	addiu	a0,a0,10752
     9a8:	0c000000 	jal	0 <func_800DDE20>
     9ac:	8e050008 	lw	a1,8(s0)
     9b0:	3c040000 	lui	a0,0x0
     9b4:	24842c44 	addiu	a0,a0,11332
     9b8:	00402825 	move	a1,v0
     9bc:	0c000000 	jal	0 <func_800DDE20>
     9c0:	8e060008 	lw	a2,8(s0)
     9c4:	3c040000 	lui	a0,0x0
     9c8:	0c000000 	jal	0 <func_800DDE20>
     9cc:	24842a20 	addiu	a0,a0,10784
     9d0:	3c040000 	lui	a0,0x0
     9d4:	0c000000 	jal	0 <func_800DDE20>
     9d8:	24842b30 	addiu	a0,a0,11056
     9dc:	3c040000 	lui	a0,0x0
     9e0:	0c000000 	jal	0 <func_800DDE20>
     9e4:	24842c40 	addiu	a0,a0,11328
     9e8:	8fbf001c 	lw	ra,28(sp)
     9ec:	8fb00018 	lw	s0,24(sp)
     9f0:	27bd0020 	addiu	sp,sp,32
     9f4:	03e00008 	jr	ra
     9f8:	00000000 	nop

000009fc <Audio_TemporaryPoolsInit>:
     9fc:	3c020000 	lui	v0,0x0
     a00:	24420000 	addiu	v0,v0,0
     a04:	8c4e2a10 	lw	t6,10768(v0)
     a08:	27bdffe0 	addiu	sp,sp,-32
     a0c:	afb00018 	sw	s0,24(sp)
     a10:	00808025 	move	s0,a0
     a14:	afbf001c 	sw	ra,28(sp)
     a18:	3c040000 	lui	a0,0x0
     a1c:	ac4e2a14 	sw	t6,10772(v0)
     a20:	8e050000 	lw	a1,0(s0)
     a24:	0c000000 	jal	0 <func_800DDE20>
     a28:	24842a10 	addiu	a0,a0,10768
     a2c:	3c040000 	lui	a0,0x0
     a30:	24842af8 	addiu	a0,a0,11000
     a34:	00402825 	move	a1,v0
     a38:	0c000000 	jal	0 <func_800DDE20>
     a3c:	8e060000 	lw	a2,0(s0)
     a40:	3c040000 	lui	a0,0x0
     a44:	24842a10 	addiu	a0,a0,10768
     a48:	0c000000 	jal	0 <func_800DDE20>
     a4c:	8e050004 	lw	a1,4(s0)
     a50:	3c040000 	lui	a0,0x0
     a54:	24842c08 	addiu	a0,a0,11272
     a58:	00402825 	move	a1,v0
     a5c:	0c000000 	jal	0 <func_800DDE20>
     a60:	8e060004 	lw	a2,4(s0)
     a64:	3c040000 	lui	a0,0x0
     a68:	24842a10 	addiu	a0,a0,10768
     a6c:	0c000000 	jal	0 <func_800DDE20>
     a70:	8e050008 	lw	a1,8(s0)
     a74:	3c040000 	lui	a0,0x0
     a78:	24842d18 	addiu	a0,a0,11544
     a7c:	00402825 	move	a1,v0
     a80:	0c000000 	jal	0 <func_800DDE20>
     a84:	8e060008 	lw	a2,8(s0)
     a88:	3c040000 	lui	a0,0x0
     a8c:	0c000000 	jal	0 <func_800DDE20>
     a90:	24842af4 	addiu	a0,a0,10996
     a94:	3c040000 	lui	a0,0x0
     a98:	0c000000 	jal	0 <func_800DDE20>
     a9c:	24842c04 	addiu	a0,a0,11268
     aa0:	3c040000 	lui	a0,0x0
     aa4:	0c000000 	jal	0 <func_800DDE20>
     aa8:	24842d14 	addiu	a0,a0,11540
     aac:	8fbf001c 	lw	ra,28(sp)
     ab0:	8fb00018 	lw	s0,24(sp)
     ab4:	27bd0020 	addiu	sp,sp,32
     ab8:	03e00008 	jr	ra
     abc:	00000000 	nop

00000ac0 <Audio_AllocBankOrSeq>:
     ac0:	27bdffb0 	addiu	sp,sp,-80
     ac4:	afb00018 	sw	s0,24(sp)
     ac8:	00808025 	move	s0,a0
     acc:	afbf001c 	sw	ra,28(sp)
     ad0:	afa50054 	sw	a1,84(sp)
     ad4:	afa7005c 	sw	a3,92(sp)
     ad8:	8fab0030 	lw	t3,48(sp)
     adc:	8fa8004c 	lw	t0,76(sp)
     ae0:	240a0002 	li	t2,2
     ae4:	24090001 	li	t1,1
     ae8:	12000007 	beqz	s0,b08 <Audio_AllocBankOrSeq+0x48>
     aec:	8fa50054 	lw	a1,84(sp)
     af0:	1209000a 	beq	s0,t1,b1c <Audio_AllocBankOrSeq+0x5c>
     af4:	00000000 	nop
     af8:	120a000d 	beq	s0,t2,b30 <Audio_AllocBankOrSeq+0x70>
     afc:	00000000 	nop
     b00:	1000000f 	b	b40 <Audio_AllocBankOrSeq+0x80>
     b04:	00000000 	nop
     b08:	3c080000 	lui	t0,0x0
     b0c:	3c0b0000 	lui	t3,0x0
     b10:	25082a20 	addiu	t0,t0,10784
     b14:	1000000a 	b	b40 <Audio_AllocBankOrSeq+0x80>
     b18:	256b3498 	addiu	t3,t3,13464
     b1c:	3c080000 	lui	t0,0x0
     b20:	3c0b0000 	lui	t3,0x0
     b24:	25082b30 	addiu	t0,t0,11056
     b28:	10000005 	b	b40 <Audio_AllocBankOrSeq+0x80>
     b2c:	256b3468 	addiu	t3,t3,13416
     b30:	3c080000 	lui	t0,0x0
     b34:	3c0b0000 	lui	t3,0x0
     b38:	25082c40 	addiu	t0,t0,11328
     b3c:	256b3438 	addiu	t3,t3,13368
     b40:	14c00192 	bnez	a2,118c <Audio_AllocBankOrSeq+0x6cc>
     b44:	25040004 	addiu	a0,t0,4
     b48:	8d0e00e0 	lw	t6,224(t0)
     b4c:	8faf0054 	lw	t7,84(sp)
     b50:	250700d4 	addiu	a3,t0,212
     b54:	01cf082a 	slt	at,t6,t7
     b58:	50200004 	beqzl	at,b6c <Audio_AllocBankOrSeq+0xac>
     b5c:	84e6001e 	lh	a2,30(a3)
     b60:	100001b7 	b	1240 <Audio_AllocBankOrSeq+0x780>
     b64:	00001025 	move	v0,zero
     b68:	84e6001e 	lh	a2,30(a3)
     b6c:	2401ffff 	li	at,-1
     b70:	14c10003 	bne	a2,at,b80 <Audio_AllocBankOrSeq+0xc0>
     b74:	00cbc021 	addu	t8,a2,t3
     b78:	10000002 	b	b84 <Audio_AllocBankOrSeq+0xc4>
     b7c:	00006025 	move	t4,zero
     b80:	930c0000 	lbu	t4,0(t8)
     b84:	84e4002a 	lh	a0,42(a3)
     b88:	2401ffff 	li	at,-1
     b8c:	14810003 	bne	a0,at,b9c <Audio_AllocBankOrSeq+0xdc>
     b90:	008bc821 	addu	t9,a0,t3
     b94:	10000002 	b	ba0 <Audio_AllocBankOrSeq+0xe0>
     b98:	00006825 	move	t5,zero
     b9c:	932d0000 	lbu	t5,0(t9)
     ba0:	16090047 	bne	s0,t1,cc0 <Audio_AllocBankOrSeq+0x200>
     ba4:	24010004 	li	at,4
     ba8:	15810020 	bne	t4,at,c2c <Audio_AllocBankOrSeq+0x16c>
     bac:	3c050000 	lui	a1,0x0
     bb0:	8ca52894 	lw	a1,10388(a1)
     bb4:	00001825 	move	v1,zero
     bb8:	3c020000 	lui	v0,0x0
     bbc:	18a0000d 	blez	a1,bf4 <Audio_AllocBankOrSeq+0x134>
     bc0:	00c02025 	move	a0,a2
     bc4:	8c42352c 	lw	v0,13612(v0)
     bc8:	904e0033 	lbu	t6,51(v0)
     bcc:	55c60006 	bnel	t6,a2,be8 <Audio_AllocBankOrSeq+0x128>
     bd0:	24630001 	addiu	v1,v1,1
     bd4:	8c4f00c0 	lw	t7,192(v0)
     bd8:	000fc7c2 	srl	t8,t7,0x1f
     bdc:	17000005 	bnez	t8,bf4 <Audio_AllocBankOrSeq+0x134>
     be0:	00000000 	nop
     be4:	24630001 	addiu	v1,v1,1
     be8:	0065082a 	slt	at,v1,a1
     bec:	1420fff6 	bnez	at,bc8 <Audio_AllocBankOrSeq+0x108>
     bf0:	244200e0 	addiu	v0,v0,224
     bf4:	1465000d 	bne	v1,a1,c2c <Audio_AllocBankOrSeq+0x16c>
     bf8:	24050003 	li	a1,3
     bfc:	afa70024 	sw	a3,36(sp)
     c00:	afa8004c 	sw	t0,76(sp)
     c04:	afab0030 	sw	t3,48(sp)
     c08:	0c000000 	jal	0 <func_800DDE20>
     c0c:	a3ad003a 	sb	t5,58(sp)
     c10:	8fa70024 	lw	a3,36(sp)
     c14:	8fa8004c 	lw	t0,76(sp)
     c18:	24090001 	li	t1,1
     c1c:	240a0002 	li	t2,2
     c20:	8fab0030 	lw	t3,48(sp)
     c24:	93ad003a 	lbu	t5,58(sp)
     c28:	240c0003 	li	t4,3
     c2c:	24010004 	li	at,4
     c30:	15a10023 	bne	t5,at,cc0 <Audio_AllocBankOrSeq+0x200>
     c34:	3c050000 	lui	a1,0x0
     c38:	8ca52894 	lw	a1,10388(a1)
     c3c:	00001825 	move	v1,zero
     c40:	3c020000 	lui	v0,0x0
     c44:	18a0000e 	blez	a1,c80 <Audio_AllocBankOrSeq+0x1c0>
     c48:	00000000 	nop
     c4c:	8c42352c 	lw	v0,13612(v0)
     c50:	84e4002a 	lh	a0,42(a3)
     c54:	90590033 	lbu	t9,51(v0)
     c58:	57240006 	bnel	t9,a0,c74 <Audio_AllocBankOrSeq+0x1b4>
     c5c:	24630001 	addiu	v1,v1,1
     c60:	8c4e00c0 	lw	t6,192(v0)
     c64:	000e7fc2 	srl	t7,t6,0x1f
     c68:	15e00005 	bnez	t7,c80 <Audio_AllocBankOrSeq+0x1c0>
     c6c:	00000000 	nop
     c70:	24630001 	addiu	v1,v1,1
     c74:	0065082a 	slt	at,v1,a1
     c78:	1420fff6 	bnez	at,c54 <Audio_AllocBankOrSeq+0x194>
     c7c:	244200e0 	addiu	v0,v0,224
     c80:	1465000f 	bne	v1,a1,cc0 <Audio_AllocBankOrSeq+0x200>
     c84:	00000000 	nop
     c88:	84e4002a 	lh	a0,42(a3)
     c8c:	a3ac003b 	sb	t4,59(sp)
     c90:	afab0030 	sw	t3,48(sp)
     c94:	afa8004c 	sw	t0,76(sp)
     c98:	afa70024 	sw	a3,36(sp)
     c9c:	0c000000 	jal	0 <func_800DDE20>
     ca0:	24050003 	li	a1,3
     ca4:	8fa70024 	lw	a3,36(sp)
     ca8:	8fa8004c 	lw	t0,76(sp)
     cac:	24090001 	li	t1,1
     cb0:	240a0002 	li	t2,2
     cb4:	8fab0030 	lw	t3,48(sp)
     cb8:	93ac003b 	lbu	t4,59(sp)
     cbc:	240d0003 	li	t5,3
     cc0:	15800004 	bnez	t4,cd4 <Audio_AllocBankOrSeq+0x214>
     cc4:	0180f825 	move	ra,t4
     cc8:	ace00000 	sw	zero,0(a3)
     ccc:	10000089 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     cd0:	00001025 	move	v0,zero
     cd4:	15a00004 	bnez	t5,ce8 <Audio_AllocBankOrSeq+0x228>
     cd8:	01a06025 	move	t4,t5
     cdc:	24020001 	li	v0,1
     ce0:	10000084 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     ce4:	ace20000 	sw	v0,0(a3)
     ce8:	24020003 	li	v0,3
     cec:	145f0005 	bne	v0,ra,d04 <Audio_AllocBankOrSeq+0x244>
     cf0:	00000000 	nop
     cf4:	144c0003 	bne	v0,t4,d04 <Audio_AllocBankOrSeq+0x244>
     cf8:	00000000 	nop
     cfc:	1000007d 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     d00:	8ce20000 	lw	v0,0(a3)
     d04:	145f0004 	bne	v0,ra,d18 <Audio_AllocBankOrSeq+0x258>
     d08:	00000000 	nop
     d0c:	ace00000 	sw	zero,0(a3)
     d10:	10000078 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     d14:	00001025 	move	v0,zero
     d18:	144c0003 	bne	v0,t4,d28 <Audio_AllocBankOrSeq+0x268>
     d1c:	24020001 	li	v0,1
     d20:	10000074 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     d24:	ace20000 	sw	v0,0(a3)
     d28:	1600002f 	bnez	s0,de8 <Audio_AllocBankOrSeq+0x328>
     d2c:	00000000 	nop
     d30:	155f0016 	bne	t2,ra,d8c <Audio_AllocBankOrSeq+0x2cc>
     d34:	3c040000 	lui	a0,0x0
     d38:	8484285c 	lh	a0,10332(a0)
     d3c:	3c020000 	lui	v0,0x0
     d40:	24420000 	addiu	v0,v0,0
     d44:	1880000d 	blez	a0,d7c <Audio_AllocBankOrSeq+0x2bc>
     d48:	00001825 	move	v1,zero
     d4c:	8c4e3530 	lw	t6,13616(v0)
     d50:	000e7fc2 	srl	t7,t6,0x1f
     d54:	51e00006 	beqzl	t7,d70 <Audio_AllocBankOrSeq+0x2b0>
     d58:	24630001 	addiu	v1,v1,1
     d5c:	90583534 	lbu	t8,13620(v0)
     d60:	84f9001e 	lh	t9,30(a3)
     d64:	13190005 	beq	t8,t9,d7c <Audio_AllocBankOrSeq+0x2bc>
     d68:	00000000 	nop
     d6c:	24630001 	addiu	v1,v1,1
     d70:	0064082a 	slt	at,v1,a0
     d74:	1420fff5 	bnez	at,d4c <Audio_AllocBankOrSeq+0x28c>
     d78:	24420160 	addiu	v0,v0,352
     d7c:	14640003 	bne	v1,a0,d8c <Audio_AllocBankOrSeq+0x2cc>
     d80:	00001025 	move	v0,zero
     d84:	1000005b 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     d88:	ace00000 	sw	zero,0(a3)
     d8c:	154c0048 	bne	t2,t4,eb0 <Audio_AllocBankOrSeq+0x3f0>
     d90:	3c040000 	lui	a0,0x0
     d94:	8484285c 	lh	a0,10332(a0)
     d98:	3c020000 	lui	v0,0x0
     d9c:	24420000 	addiu	v0,v0,0
     da0:	1880000d 	blez	a0,dd8 <Audio_AllocBankOrSeq+0x318>
     da4:	00001825 	move	v1,zero
     da8:	8c4e3530 	lw	t6,13616(v0)
     dac:	000e7fc2 	srl	t7,t6,0x1f
     db0:	51e00006 	beqzl	t7,dcc <Audio_AllocBankOrSeq+0x30c>
     db4:	24630001 	addiu	v1,v1,1
     db8:	90583534 	lbu	t8,13620(v0)
     dbc:	84f9002a 	lh	t9,42(a3)
     dc0:	13190005 	beq	t8,t9,dd8 <Audio_AllocBankOrSeq+0x318>
     dc4:	00000000 	nop
     dc8:	24630001 	addiu	v1,v1,1
     dcc:	0064082a 	slt	at,v1,a0
     dd0:	1420fff5 	bnez	at,da8 <Audio_AllocBankOrSeq+0x2e8>
     dd4:	24420160 	addiu	v0,v0,352
     dd8:	14640035 	bne	v1,a0,eb0 <Audio_AllocBankOrSeq+0x3f0>
     ddc:	24020001 	li	v0,1
     de0:	10000044 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     de4:	ace20000 	sw	v0,0(a3)
     de8:	56090032 	bnel	s0,t1,eb4 <Audio_AllocBankOrSeq+0x3f4>
     dec:	8ce20000 	lw	v0,0(a3)
     df0:	155f0017 	bne	t2,ra,e50 <Audio_AllocBankOrSeq+0x390>
     df4:	3c050000 	lui	a1,0x0
     df8:	8ca52894 	lw	a1,10388(a1)
     dfc:	00001825 	move	v1,zero
     e00:	3c020000 	lui	v0,0x0
     e04:	18a0000e 	blez	a1,e40 <Audio_AllocBankOrSeq+0x380>
     e08:	00000000 	nop
     e0c:	8c42352c 	lw	v0,13612(v0)
     e10:	84e6001e 	lh	a2,30(a3)
     e14:	904f0033 	lbu	t7,51(v0)
     e18:	55e60006 	bnel	t7,a2,e34 <Audio_AllocBankOrSeq+0x374>
     e1c:	24630001 	addiu	v1,v1,1
     e20:	8c5800c0 	lw	t8,192(v0)
     e24:	0018cfc2 	srl	t9,t8,0x1f
     e28:	17200005 	bnez	t9,e40 <Audio_AllocBankOrSeq+0x380>
     e2c:	00000000 	nop
     e30:	24630001 	addiu	v1,v1,1
     e34:	0065082a 	slt	at,v1,a1
     e38:	1420fff6 	bnez	at,e14 <Audio_AllocBankOrSeq+0x354>
     e3c:	244200e0 	addiu	v0,v0,224
     e40:	14650003 	bne	v1,a1,e50 <Audio_AllocBankOrSeq+0x390>
     e44:	00001025 	move	v0,zero
     e48:	1000002a 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     e4c:	ace00000 	sw	zero,0(a3)
     e50:	154c0017 	bne	t2,t4,eb0 <Audio_AllocBankOrSeq+0x3f0>
     e54:	3c050000 	lui	a1,0x0
     e58:	8ca52894 	lw	a1,10388(a1)
     e5c:	00001825 	move	v1,zero
     e60:	3c020000 	lui	v0,0x0
     e64:	18a0000e 	blez	a1,ea0 <Audio_AllocBankOrSeq+0x3e0>
     e68:	00000000 	nop
     e6c:	8c42352c 	lw	v0,13612(v0)
     e70:	84e4002a 	lh	a0,42(a3)
     e74:	904e0033 	lbu	t6,51(v0)
     e78:	55c40006 	bnel	t6,a0,e94 <Audio_AllocBankOrSeq+0x3d4>
     e7c:	24630001 	addiu	v1,v1,1
     e80:	8c4f00c0 	lw	t7,192(v0)
     e84:	000fc7c2 	srl	t8,t7,0x1f
     e88:	17000005 	bnez	t8,ea0 <Audio_AllocBankOrSeq+0x3e0>
     e8c:	00000000 	nop
     e90:	24630001 	addiu	v1,v1,1
     e94:	0065082a 	slt	at,v1,a1
     e98:	1420fff6 	bnez	at,e74 <Audio_AllocBankOrSeq+0x3b4>
     e9c:	244200e0 	addiu	v0,v0,224
     ea0:	14650003 	bne	v1,a1,eb0 <Audio_AllocBankOrSeq+0x3f0>
     ea4:	24020001 	li	v0,1
     ea8:	10000012 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     eac:	ace20000 	sw	v0,0(a3)
     eb0:	8ce20000 	lw	v0,0(a3)
     eb4:	14400007 	bnez	v0,ed4 <Audio_AllocBankOrSeq+0x414>
     eb8:	00000000 	nop
     ebc:	553f000e 	bnel	t1,ra,ef8 <Audio_AllocBankOrSeq+0x438>
     ec0:	00027880 	sll	t7,v0,0x2
     ec4:	112c0009 	beq	t1,t4,eec <Audio_AllocBankOrSeq+0x42c>
     ec8:	24020001 	li	v0,1
     ecc:	10000009 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     ed0:	ace20000 	sw	v0,0(a3)
     ed4:	552c0008 	bnel	t1,t4,ef8 <Audio_AllocBankOrSeq+0x438>
     ed8:	00027880 	sll	t7,v0,0x2
     edc:	113f0003 	beq	t1,ra,eec <Audio_AllocBankOrSeq+0x42c>
     ee0:	00001025 	move	v0,zero
     ee4:	10000003 	b	ef4 <Audio_AllocBankOrSeq+0x434>
     ee8:	ace00000 	sw	zero,0(a3)
     eec:	100000d4 	b	1240 <Audio_AllocBankOrSeq+0x780>
     ef0:	00001025 	move	v0,zero
     ef4:	00027880 	sll	t7,v0,0x2
     ef8:	01e27823 	subu	t7,t7,v0
     efc:	000f7880 	sll	t7,t7,0x2
     f00:	00ef2821 	addu	a1,a3,t7
     f04:	84a4001e 	lh	a0,30(a1)
     f08:	2401ffff 	li	at,-1
     f0c:	00401825 	move	v1,v0
     f10:	10810020 	beq	a0,at,f94 <Audio_AllocBankOrSeq+0x4d4>
     f14:	00000000 	nop
     f18:	560a0010 	bnel	s0,t2,f5c <Audio_AllocBankOrSeq+0x49c>
     f1c:	0164c021 	addu	t8,t3,a0
     f20:	afa2002c 	sw	v0,44(sp)
     f24:	afa50020 	sw	a1,32(sp)
     f28:	afa70024 	sw	a3,36(sp)
     f2c:	afa8004c 	sw	t0,76(sp)
     f30:	0c000000 	jal	0 <func_800DDE20>
     f34:	afab0030 	sw	t3,48(sp)
     f38:	8fa50020 	lw	a1,32(sp)
     f3c:	8fa3002c 	lw	v1,44(sp)
     f40:	8fa70024 	lw	a3,36(sp)
     f44:	8fa8004c 	lw	t0,76(sp)
     f48:	24090001 	li	t1,1
     f4c:	240a0002 	li	t2,2
     f50:	8fab0030 	lw	t3,48(sp)
     f54:	84a4001e 	lh	a0,30(a1)
     f58:	0164c021 	addu	t8,t3,a0
     f5c:	1609000d 	bne	s0,t1,f94 <Audio_AllocBankOrSeq+0x4d4>
     f60:	a3000000 	sb	zero,0(t8)
     f64:	84a4001e 	lh	a0,30(a1)
     f68:	afab0030 	sw	t3,48(sp)
     f6c:	afa8004c 	sw	t0,76(sp)
     f70:	afa70024 	sw	a3,36(sp)
     f74:	0c000000 	jal	0 <func_800DDE20>
     f78:	afa3002c 	sw	v1,44(sp)
     f7c:	8fa3002c 	lw	v1,44(sp)
     f80:	8fa70024 	lw	a3,36(sp)
     f84:	8fa8004c 	lw	t0,76(sp)
     f88:	24090001 	li	t1,1
     f8c:	240a0002 	li	t2,2
     f90:	8fab0030 	lw	t3,48(sp)
     f94:	10600005 	beqz	v1,fac <Audio_AllocBankOrSeq+0x4ec>
     f98:	250200d8 	addiu	v0,t0,216
     f9c:	10690040 	beq	v1,t1,10a0 <Audio_AllocBankOrSeq+0x5e0>
     fa0:	250200d8 	addiu	v0,t0,216
     fa4:	100000a6 	b	1240 <Audio_AllocBankOrSeq+0x780>
     fa8:	00001025 	move	v0,zero
     fac:	8c590000 	lw	t9,0(v0)
     fb0:	2401ffff 	li	at,-1
     fb4:	acf90014 	sw	t9,20(a3)
     fb8:	8fae005c 	lw	t6,92(sp)
     fbc:	a4ee001e 	sh	t6,30(a3)
     fc0:	8faf0054 	lw	t7,84(sp)
     fc4:	acef0018 	sw	t7,24(a3)
     fc8:	8fb90054 	lw	t9,84(sp)
     fcc:	8c580000 	lw	t8,0(v0)
     fd0:	03197021 	addu	t6,t8,t9
     fd4:	ac4e0004 	sw	t6,4(v0)
     fd8:	84e4002a 	lh	a0,42(a3)
     fdc:	5081002b 	beql	a0,at,108c <Audio_AllocBankOrSeq+0x5cc>
     fe0:	8ce30014 	lw	v1,20(a3)
     fe4:	8cef0020 	lw	t7,32(a3)
     fe8:	01ee082b 	sltu	at,t7,t6
     fec:	50200027 	beqzl	at,108c <Audio_AllocBankOrSeq+0x5cc>
     ff0:	8ce30014 	lw	v1,20(a3)
     ff4:	560a000b 	bnel	s0,t2,1024 <Audio_AllocBankOrSeq+0x564>
     ff8:	0164c821 	addu	t9,t3,a0
     ffc:	afa20020 	sw	v0,32(sp)
    1000:	afa70024 	sw	a3,36(sp)
    1004:	0c000000 	jal	0 <func_800DDE20>
    1008:	afab0030 	sw	t3,48(sp)
    100c:	8fa70024 	lw	a3,36(sp)
    1010:	8fa20020 	lw	v0,32(sp)
    1014:	24090001 	li	t1,1
    1018:	8fab0030 	lw	t3,48(sp)
    101c:	84e4002a 	lh	a0,42(a3)
    1020:	0164c821 	addu	t9,t3,a0
    1024:	12000005 	beqz	s0,103c <Audio_AllocBankOrSeq+0x57c>
    1028:	a3200000 	sb	zero,0(t9)
    102c:	5209000b 	beql	s0,t1,105c <Audio_AllocBankOrSeq+0x59c>
    1030:	84e4002a 	lh	a0,42(a3)
    1034:	1000000f 	b	1074 <Audio_AllocBankOrSeq+0x5b4>
    1038:	240effff 	li	t6,-1
    103c:	84e4002a 	lh	a0,42(a3)
    1040:	afa70024 	sw	a3,36(sp)
    1044:	0c000000 	jal	0 <func_800DDE20>
    1048:	afa20020 	sw	v0,32(sp)
    104c:	8fa20020 	lw	v0,32(sp)
    1050:	10000007 	b	1070 <Audio_AllocBankOrSeq+0x5b0>
    1054:	8fa70024 	lw	a3,36(sp)
    1058:	84e4002a 	lh	a0,42(a3)
    105c:	afa70024 	sw	a3,36(sp)
    1060:	0c000000 	jal	0 <func_800DDE20>
    1064:	afa20020 	sw	v0,32(sp)
    1068:	8fa20020 	lw	v0,32(sp)
    106c:	8fa70024 	lw	a3,36(sp)
    1070:	240effff 	li	t6,-1
    1074:	a4ee002a 	sh	t6,42(a3)
    1078:	8c580008 	lw	t8,8(v0)
    107c:	8c4f0000 	lw	t7,0(v0)
    1080:	01f8c821 	addu	t9,t7,t8
    1084:	acf90020 	sw	t9,32(a3)
    1088:	8ce30014 	lw	v1,20(a3)
    108c:	8cee0000 	lw	t6,0(a3)
    1090:	00601025 	move	v0,v1
    1094:	39cf0001 	xori	t7,t6,0x1
    1098:	10000069 	b	1240 <Audio_AllocBankOrSeq+0x780>
    109c:	acef0000 	sw	t7,0(a3)
    10a0:	8c580000 	lw	t8,0(v0)
    10a4:	8c590008 	lw	t9,8(v0)
    10a8:	8faf0054 	lw	t7,84(sp)
    10ac:	2401fff0 	li	at,-16
    10b0:	03197021 	addu	t6,t8,t9
    10b4:	01cfc023 	subu	t8,t6,t7
    10b8:	0301c824 	and	t9,t8,at
    10bc:	acf90020 	sw	t9,32(a3)
    10c0:	8fae005c 	lw	t6,92(sp)
    10c4:	84e6001e 	lh	a2,30(a3)
    10c8:	2401ffff 	li	at,-1
    10cc:	a4ee002a 	sh	t6,42(a3)
    10d0:	8faf0054 	lw	t7,84(sp)
    10d4:	0320c025 	move	t8,t9
    10d8:	10c10028 	beq	a2,at,117c <Audio_AllocBankOrSeq+0x6bc>
    10dc:	acef0024 	sw	t7,36(a3)
    10e0:	8c590004 	lw	t9,4(v0)
    10e4:	0319082b 	sltu	at,t8,t9
    10e8:	10200024 	beqz	at,117c <Audio_AllocBankOrSeq+0x6bc>
    10ec:	00000000 	nop
    10f0:	160a000a 	bne	s0,t2,111c <Audio_AllocBankOrSeq+0x65c>
    10f4:	00c02025 	move	a0,a2
    10f8:	afa20020 	sw	v0,32(sp)
    10fc:	afa70024 	sw	a3,36(sp)
    1100:	0c000000 	jal	0 <func_800DDE20>
    1104:	afab0030 	sw	t3,48(sp)
    1108:	8fa70024 	lw	a3,36(sp)
    110c:	8fa20020 	lw	v0,32(sp)
    1110:	24090001 	li	t1,1
    1114:	8fab0030 	lw	t3,48(sp)
    1118:	84e6001e 	lh	a2,30(a3)
    111c:	01667021 	addu	t6,t3,a2
    1120:	12000005 	beqz	s0,1138 <Audio_AllocBankOrSeq+0x678>
    1124:	a1c00000 	sb	zero,0(t6)
    1128:	5209000b 	beql	s0,t1,1158 <Audio_AllocBankOrSeq+0x698>
    112c:	84e4001e 	lh	a0,30(a3)
    1130:	1000000f 	b	1170 <Audio_AllocBankOrSeq+0x6b0>
    1134:	240fffff 	li	t7,-1
    1138:	84e4001e 	lh	a0,30(a3)
    113c:	afa70024 	sw	a3,36(sp)
    1140:	0c000000 	jal	0 <func_800DDE20>
    1144:	afa20020 	sw	v0,32(sp)
    1148:	8fa20020 	lw	v0,32(sp)
    114c:	10000007 	b	116c <Audio_AllocBankOrSeq+0x6ac>
    1150:	8fa70024 	lw	a3,36(sp)
    1154:	84e4001e 	lh	a0,30(a3)
    1158:	afa70024 	sw	a3,36(sp)
    115c:	0c000000 	jal	0 <func_800DDE20>
    1160:	afa20020 	sw	v0,32(sp)
    1164:	8fa20020 	lw	v0,32(sp)
    1168:	8fa70024 	lw	a3,36(sp)
    116c:	240fffff 	li	t7,-1
    1170:	a4ef001e 	sh	t7,30(a3)
    1174:	8c580000 	lw	t8,0(v0)
    1178:	ac580004 	sw	t8,4(v0)
    117c:	1000ffc3 	b	108c <Audio_AllocBankOrSeq+0x5cc>
    1180:	8ce30020 	lw	v1,32(a3)
    1184:	1000002e 	b	1240 <Audio_AllocBankOrSeq+0x780>
    1188:	00001025 	move	v0,zero
    118c:	afa60058 	sw	a2,88(sp)
    1190:	afa8004c 	sw	t0,76(sp)
    1194:	0c000000 	jal	0 <func_800DDE20>
    1198:	afab0030 	sw	t3,48(sp)
    119c:	8fa8004c 	lw	t0,76(sp)
    11a0:	2407000c 	li	a3,12
    11a4:	8fa60058 	lw	a2,88(sp)
    11a8:	8d190000 	lw	t9,0(t0)
    11ac:	8fab0030 	lw	t3,48(sp)
    11b0:	24090001 	li	t1,1
    11b4:	03270019 	multu	t9,a3
    11b8:	240a0002 	li	t2,2
    11bc:	00007012 	mflo	t6
    11c0:	010e7821 	addu	t7,t0,t6
    11c4:	1440000b 	bnez	v0,11f4 <Audio_AllocBankOrSeq+0x734>
    11c8:	ade20014 	sw	v0,20(t7)
    11cc:	10c00007 	beqz	a2,11ec <Audio_AllocBankOrSeq+0x72c>
    11d0:	00000000 	nop
    11d4:	10c90005 	beq	a2,t1,11ec <Audio_AllocBankOrSeq+0x72c>
    11d8:	00000000 	nop
    11dc:	54ca0006 	bnel	a2,t2,11f8 <Audio_AllocBankOrSeq+0x738>
    11e0:	8d190000 	lw	t9,0(t0)
    11e4:	1000fe40 	b	ae8 <Audio_AllocBankOrSeq+0x28>
    11e8:	00003025 	move	a2,zero
    11ec:	10000014 	b	1240 <Audio_AllocBankOrSeq+0x780>
    11f0:	00001025 	move	v0,zero
    11f4:	8d190000 	lw	t9,0(t0)
    11f8:	8fb8005c 	lw	t8,92(sp)
    11fc:	03270019 	multu	t9,a3
    1200:	00007012 	mflo	t6
    1204:	010e7821 	addu	t7,t0,t6
    1208:	a5f8001e 	sh	t8,30(t7)
    120c:	8d0e0000 	lw	t6,0(t0)
    1210:	8fb90054 	lw	t9,84(sp)
    1214:	01c70019 	multu	t6,a3
    1218:	0000c012 	mflo	t8
    121c:	01187821 	addu	t7,t0,t8
    1220:	adf90018 	sw	t9,24(t7)
    1224:	8d030000 	lw	v1,0(t0)
    1228:	00670019 	multu	v1,a3
    122c:	24790001 	addiu	t9,v1,1
    1230:	00007012 	mflo	t6
    1234:	010ec021 	addu	t8,t0,t6
    1238:	8f020014 	lw	v0,20(t8)
    123c:	ad190000 	sw	t9,0(t0)
    1240:	8fbf001c 	lw	ra,28(sp)
    1244:	8fb00018 	lw	s0,24(sp)
    1248:	27bd0050 	addiu	sp,sp,80
    124c:	03e00008 	jr	ra
    1250:	00000000 	nop

00001254 <func_800DF074>:
    1254:	27bdffe8 	addiu	sp,sp,-24
    1258:	afbf0014 	sw	ra,20(sp)
    125c:	afa5001c 	sw	a1,28(sp)
    1260:	afa40018 	sw	a0,24(sp)
    1264:	afa60020 	sw	a2,32(sp)
    1268:	0c000000 	jal	0 <func_800DDE20>
    126c:	00c02825 	move	a1,a2
    1270:	10400003 	beqz	v0,1280 <func_800DF074+0x2c>
    1274:	8fa5001c 	lw	a1,28(sp)
    1278:	10000009 	b	12a0 <func_800DF074+0x4c>
    127c:	8fbf0014 	lw	ra,20(sp)
    1280:	24010003 	li	at,3
    1284:	14a10003 	bne	a1,at,1294 <func_800DF074+0x40>
    1288:	8fa40018 	lw	a0,24(sp)
    128c:	10000003 	b	129c <func_800DF074+0x48>
    1290:	00001025 	move	v0,zero
    1294:	0c000000 	jal	0 <func_800DDE20>
    1298:	8fa60020 	lw	a2,32(sp)
    129c:	8fbf0014 	lw	ra,20(sp)
    12a0:	27bd0018 	addiu	sp,sp,24
    12a4:	03e00008 	jr	ra
    12a8:	00000000 	nop

000012ac <func_800DF0CC>:
    12ac:	27bdffe0 	addiu	sp,sp,-32
    12b0:	afbf0014 	sw	ra,20(sp)
    12b4:	afa50024 	sw	a1,36(sp)
    12b8:	10800009 	beqz	a0,12e0 <func_800DF0CC+0x34>
    12bc:	00803825 	move	a3,a0
    12c0:	24010001 	li	at,1
    12c4:	10810009 	beq	a0,at,12ec <func_800DF0CC+0x40>
    12c8:	3c050000 	lui	a1,0x0
    12cc:	24010002 	li	at,2
    12d0:	10810008 	beq	a0,at,12f4 <func_800DF0CC+0x48>
    12d4:	3c050000 	lui	a1,0x0
    12d8:	10000007 	b	12f8 <func_800DF0CC+0x4c>
    12dc:	8fa50018 	lw	a1,24(sp)
    12e0:	3c050000 	lui	a1,0x0
    12e4:	10000004 	b	12f8 <func_800DF0CC+0x4c>
    12e8:	24a52a20 	addiu	a1,a1,10784
    12ec:	10000002 	b	12f8 <func_800DF0CC+0x4c>
    12f0:	24a52b30 	addiu	a1,a1,11056
    12f4:	24a52c40 	addiu	a1,a1,11328
    12f8:	8fae0024 	lw	t6,36(sp)
    12fc:	24a300d4 	addiu	v1,a1,212
    1300:	55c00011 	bnezl	t6,1348 <func_800DF0CC+0x9c>
    1304:	8ca80000 	lw	t0,0(a1)
    1308:	846f001e 	lh	t7,30(v1)
    130c:	24180001 	li	t8,1
    1310:	54cf0005 	bnel	a2,t7,1328 <func_800DF0CC+0x7c>
    1314:	8479002a 	lh	t9,42(v1)
    1318:	ac780000 	sw	t8,0(v1)
    131c:	10000022 	b	13a8 <func_800DF0CC+0xfc>
    1320:	8c620014 	lw	v0,20(v1)
    1324:	8479002a 	lh	t9,42(v1)
    1328:	14d90004 	bne	a2,t9,133c <func_800DF0CC+0x90>
    132c:	00000000 	nop
    1330:	ac600000 	sw	zero,0(v1)
    1334:	1000001c 	b	13a8 <func_800DF0CC+0xfc>
    1338:	8c620020 	lw	v0,32(v1)
    133c:	1000001a 	b	13a8 <func_800DF0CC+0xfc>
    1340:	00001025 	move	v0,zero
    1344:	8ca80000 	lw	t0,0(a1)
    1348:	00a02025 	move	a0,a1
    134c:	00001025 	move	v0,zero
    1350:	1100000c 	beqz	t0,1384 <func_800DF0CC+0xd8>
    1354:	00a01825 	move	v1,a1
    1358:	8469001e 	lh	t1,30(v1)
    135c:	54c90004 	bnel	a2,t1,1370 <func_800DF0CC+0xc4>
    1360:	8c8a0000 	lw	t2,0(a0)
    1364:	10000010 	b	13a8 <func_800DF0CC+0xfc>
    1368:	8c620014 	lw	v0,20(v1)
    136c:	8c8a0000 	lw	t2,0(a0)
    1370:	24420001 	addiu	v0,v0,1
    1374:	2463000c 	addiu	v1,v1,12
    1378:	004a082b 	sltu	at,v0,t2
    137c:	5420fff7 	bnezl	at,135c <func_800DF0CC+0xb0>
    1380:	8469001e 	lh	t1,30(v1)
    1384:	8fab0024 	lw	t3,36(sp)
    1388:	24010002 	li	at,2
    138c:	00e02025 	move	a0,a3
    1390:	15610005 	bne	t3,at,13a8 <func_800DF0CC+0xfc>
    1394:	00001025 	move	v0,zero
    1398:	0c000000 	jal	0 <func_800DDE20>
    139c:	00002825 	move	a1,zero
    13a0:	10000002 	b	13ac <func_800DF0CC+0x100>
    13a4:	8fbf0014 	lw	ra,20(sp)
    13a8:	8fbf0014 	lw	ra,20(sp)
    13ac:	27bd0020 	addiu	sp,sp,32
    13b0:	03e00008 	jr	ra
    13b4:	00000000 	nop

000013b8 <func_800DF1D8>:
    13b8:	3c010000 	lui	at,0x0
    13bc:	c4200008 	lwc1	$f0,8(at)
    13c0:	27bdffb0 	addiu	sp,sp,-80
    13c4:	27a40014 	addiu	a0,sp,20
    13c8:	46007102 	mul.s	$f4,$f14,$f0
    13cc:	27a2002c 	addiu	v0,sp,44
    13d0:	24c30004 	addiu	v1,a2,4
    13d4:	46006182 	mul.s	$f6,$f12,$f0
    13d8:	00000000 	nop
    13dc:	460c7202 	mul.s	$f8,$f14,$f12
    13e0:	e7a4000c 	swc1	$f4,12(sp)
    13e4:	e7a6002c 	swc1	$f6,44(sp)
    13e8:	46004282 	mul.s	$f10,$f8,$f0
    13ec:	00000000 	nop
    13f0:	460c6402 	mul.s	$f16,$f12,$f12
    13f4:	e7aa0010 	swc1	$f10,16(sp)
    13f8:	460e8480 	add.s	$f18,$f16,$f14
    13fc:	46009102 	mul.s	$f4,$f18,$f0
    1400:	e7a40030 	swc1	$f4,48(sp)
    1404:	c486fffc 	lwc1	$f6,-4(a0)
    1408:	c48afff8 	lwc1	$f10,-8(a0)
    140c:	240f0001 	li	t7,1
    1410:	460c3202 	mul.s	$f8,$f6,$f12
    1414:	3c014f00 	lui	at,0x4f00
    1418:	460a7402 	mul.s	$f16,$f14,$f10
    141c:	46104480 	add.s	$f18,$f8,$f16
    1420:	444ef800 	cfc1	t6,$31
    1424:	44cff800 	ctc1	t7,$31
    1428:	00000000 	nop
    142c:	46009124 	cvt.w.s	$f4,$f18
    1430:	444ff800 	cfc1	t7,$31
    1434:	00000000 	nop
    1438:	31ef0078 	andi	t7,t7,0x78
    143c:	51e00013 	beqzl	t7,148c <func_800DF1D8+0xd4>
    1440:	440f2000 	mfc1	t7,$f4
    1444:	44812000 	mtc1	at,$f4
    1448:	240f0001 	li	t7,1
    144c:	46049101 	sub.s	$f4,$f18,$f4
    1450:	44cff800 	ctc1	t7,$31
    1454:	00000000 	nop
    1458:	46002124 	cvt.w.s	$f4,$f4
    145c:	444ff800 	cfc1	t7,$31
    1460:	00000000 	nop
    1464:	31ef0078 	andi	t7,t7,0x78
    1468:	15e00005 	bnez	t7,1480 <func_800DF1D8+0xc8>
    146c:	00000000 	nop
    1470:	440f2000 	mfc1	t7,$f4
    1474:	3c018000 	lui	at,0x8000
    1478:	10000007 	b	1498 <func_800DF1D8+0xe0>
    147c:	01e17825 	or	t7,t7,at
    1480:	10000005 	b	1498 <func_800DF1D8+0xe0>
    1484:	240fffff 	li	t7,-1
    1488:	440f2000 	mfc1	t7,$f4
    148c:	00000000 	nop
    1490:	05e0fffb 	bltz	t7,1480 <func_800DF1D8+0xc8>
    1494:	00000000 	nop
    1498:	a46f0000 	sh	t7,0(v1)
    149c:	44cef800 	ctc1	t6,$31
    14a0:	c486001c 	lwc1	$f6,28(a0)
    14a4:	c4880018 	lwc1	$f8,24(a0)
    14a8:	24190001 	li	t9,1
    14ac:	460c3282 	mul.s	$f10,$f6,$f12
    14b0:	24840004 	addiu	a0,a0,4
    14b4:	3c014f00 	lui	at,0x4f00
    14b8:	46087402 	mul.s	$f16,$f14,$f8
    14bc:	46105480 	add.s	$f18,$f10,$f16
    14c0:	4458f800 	cfc1	t8,$31
    14c4:	44d9f800 	ctc1	t9,$31
    14c8:	00000000 	nop
    14cc:	46009124 	cvt.w.s	$f4,$f18
    14d0:	4459f800 	cfc1	t9,$31
    14d4:	00000000 	nop
    14d8:	33390078 	andi	t9,t9,0x78
    14dc:	53200013 	beqzl	t9,152c <func_800DF1D8+0x174>
    14e0:	44192000 	mfc1	t9,$f4
    14e4:	44812000 	mtc1	at,$f4
    14e8:	24190001 	li	t9,1
    14ec:	46049101 	sub.s	$f4,$f18,$f4
    14f0:	44d9f800 	ctc1	t9,$31
    14f4:	00000000 	nop
    14f8:	46002124 	cvt.w.s	$f4,$f4
    14fc:	4459f800 	cfc1	t9,$31
    1500:	00000000 	nop
    1504:	33390078 	andi	t9,t9,0x78
    1508:	17200005 	bnez	t9,1520 <func_800DF1D8+0x168>
    150c:	00000000 	nop
    1510:	44192000 	mfc1	t9,$f4
    1514:	3c018000 	lui	at,0x8000
    1518:	10000007 	b	1538 <func_800DF1D8+0x180>
    151c:	0321c825 	or	t9,t9,at
    1520:	10000005 	b	1538 <func_800DF1D8+0x180>
    1524:	2419ffff 	li	t9,-1
    1528:	44192000 	mfc1	t9,$f4
    152c:	00000000 	nop
    1530:	0720fffb 	bltz	t9,1520 <func_800DF1D8+0x168>
    1534:	00000000 	nop
    1538:	0082082b 	sltu	at,a0,v0
    153c:	44d8f800 	ctc1	t8,$31
    1540:	24630002 	addiu	v1,v1,2
    1544:	1420ffaf 	bnez	at,1404 <func_800DF1D8+0x4c>
    1548:	a479000e 	sh	t9,14(v1)
    154c:	00c01825 	move	v1,a2
    1550:	27a4000c 	addiu	a0,sp,12
    1554:	27a2004c 	addiu	v0,sp,76
    1558:	4448f800 	cfc1	t0,$31
    155c:	24090001 	li	t1,1
    1560:	44c9f800 	ctc1	t1,$31
    1564:	c4860000 	lwc1	$f6,0(a0)
    1568:	3c014f00 	lui	at,0x4f00
    156c:	46003224 	cvt.w.s	$f8,$f6
    1570:	4449f800 	cfc1	t1,$31
    1574:	00000000 	nop
    1578:	31290078 	andi	t1,t1,0x78
    157c:	51200013 	beqzl	t1,15cc <func_800DF1D8+0x214>
    1580:	44094000 	mfc1	t1,$f8
    1584:	44814000 	mtc1	at,$f8
    1588:	24090001 	li	t1,1
    158c:	46083201 	sub.s	$f8,$f6,$f8
    1590:	44c9f800 	ctc1	t1,$31
    1594:	00000000 	nop
    1598:	46004224 	cvt.w.s	$f8,$f8
    159c:	4449f800 	cfc1	t1,$31
    15a0:	00000000 	nop
    15a4:	31290078 	andi	t1,t1,0x78
    15a8:	15200005 	bnez	t1,15c0 <func_800DF1D8+0x208>
    15ac:	00000000 	nop
    15b0:	44094000 	mfc1	t1,$f8
    15b4:	3c018000 	lui	at,0x8000
    15b8:	10000007 	b	15d8 <func_800DF1D8+0x220>
    15bc:	01214825 	or	t1,t1,at
    15c0:	10000005 	b	15d8 <func_800DF1D8+0x220>
    15c4:	2409ffff 	li	t1,-1
    15c8:	44094000 	mfc1	t1,$f8
    15cc:	00000000 	nop
    15d0:	0520fffb 	bltz	t1,15c0 <func_800DF1D8+0x208>
    15d4:	00000000 	nop
    15d8:	44c8f800 	ctc1	t0,$31
    15dc:	240b0001 	li	t3,1
    15e0:	a4690000 	sh	t1,0(v1)
    15e4:	c48a0004 	lwc1	$f10,4(a0)
    15e8:	444af800 	cfc1	t2,$31
    15ec:	44cbf800 	ctc1	t3,$31
    15f0:	3c014f00 	lui	at,0x4f00
    15f4:	46005424 	cvt.w.s	$f16,$f10
    15f8:	444bf800 	cfc1	t3,$31
    15fc:	00000000 	nop
    1600:	316b0078 	andi	t3,t3,0x78
    1604:	51600013 	beqzl	t3,1654 <func_800DF1D8+0x29c>
    1608:	440b8000 	mfc1	t3,$f16
    160c:	44818000 	mtc1	at,$f16
    1610:	240b0001 	li	t3,1
    1614:	46105401 	sub.s	$f16,$f10,$f16
    1618:	44cbf800 	ctc1	t3,$31
    161c:	00000000 	nop
    1620:	46008424 	cvt.w.s	$f16,$f16
    1624:	444bf800 	cfc1	t3,$31
    1628:	00000000 	nop
    162c:	316b0078 	andi	t3,t3,0x78
    1630:	15600005 	bnez	t3,1648 <func_800DF1D8+0x290>
    1634:	00000000 	nop
    1638:	440b8000 	mfc1	t3,$f16
    163c:	3c018000 	lui	at,0x8000
    1640:	10000007 	b	1660 <func_800DF1D8+0x2a8>
    1644:	01615825 	or	t3,t3,at
    1648:	10000005 	b	1660 <func_800DF1D8+0x2a8>
    164c:	240bffff 	li	t3,-1
    1650:	440b8000 	mfc1	t3,$f16
    1654:	00000000 	nop
    1658:	0560fffb 	bltz	t3,1648 <func_800DF1D8+0x290>
    165c:	00000000 	nop
    1660:	44caf800 	ctc1	t2,$31
    1664:	a46b0002 	sh	t3,2(v1)
    1668:	240d0001 	li	t5,1
    166c:	c4920008 	lwc1	$f18,8(a0)
    1670:	444cf800 	cfc1	t4,$31
    1674:	44cdf800 	ctc1	t5,$31
    1678:	3c014f00 	lui	at,0x4f00
    167c:	46009124 	cvt.w.s	$f4,$f18
    1680:	444df800 	cfc1	t5,$31
    1684:	00000000 	nop
    1688:	31ad0078 	andi	t5,t5,0x78
    168c:	51a00013 	beqzl	t5,16dc <func_800DF1D8+0x324>
    1690:	440d2000 	mfc1	t5,$f4
    1694:	44812000 	mtc1	at,$f4
    1698:	240d0001 	li	t5,1
    169c:	46049101 	sub.s	$f4,$f18,$f4
    16a0:	44cdf800 	ctc1	t5,$31
    16a4:	00000000 	nop
    16a8:	46002124 	cvt.w.s	$f4,$f4
    16ac:	444df800 	cfc1	t5,$31
    16b0:	00000000 	nop
    16b4:	31ad0078 	andi	t5,t5,0x78
    16b8:	15a00005 	bnez	t5,16d0 <func_800DF1D8+0x318>
    16bc:	00000000 	nop
    16c0:	440d2000 	mfc1	t5,$f4
    16c4:	3c018000 	lui	at,0x8000
    16c8:	10000007 	b	16e8 <func_800DF1D8+0x330>
    16cc:	01a16825 	or	t5,t5,at
    16d0:	10000005 	b	16e8 <func_800DF1D8+0x330>
    16d4:	240dffff 	li	t5,-1
    16d8:	440d2000 	mfc1	t5,$f4
    16dc:	00000000 	nop
    16e0:	05a0fffb 	bltz	t5,16d0 <func_800DF1D8+0x318>
    16e4:	00000000 	nop
    16e8:	44ccf800 	ctc1	t4,$31
    16ec:	a46d0004 	sh	t5,4(v1)
    16f0:	240f0001 	li	t7,1
    16f4:	c486000c 	lwc1	$f6,12(a0)
    16f8:	444ef800 	cfc1	t6,$31
    16fc:	44cff800 	ctc1	t7,$31
    1700:	24840010 	addiu	a0,a0,16
    1704:	3c014f00 	lui	at,0x4f00
    1708:	46003224 	cvt.w.s	$f8,$f6
    170c:	444ff800 	cfc1	t7,$31
    1710:	00000000 	nop
    1714:	31ef0078 	andi	t7,t7,0x78
    1718:	51e00013 	beqzl	t7,1768 <func_800DF1D8+0x3b0>
    171c:	440f4000 	mfc1	t7,$f8
    1720:	44814000 	mtc1	at,$f8
    1724:	240f0001 	li	t7,1
    1728:	46083201 	sub.s	$f8,$f6,$f8
    172c:	44cff800 	ctc1	t7,$31
    1730:	00000000 	nop
    1734:	46004224 	cvt.w.s	$f8,$f8
    1738:	444ff800 	cfc1	t7,$31
    173c:	00000000 	nop
    1740:	31ef0078 	andi	t7,t7,0x78
    1744:	15e00005 	bnez	t7,175c <func_800DF1D8+0x3a4>
    1748:	00000000 	nop
    174c:	440f4000 	mfc1	t7,$f8
    1750:	3c018000 	lui	at,0x8000
    1754:	10000007 	b	1774 <func_800DF1D8+0x3bc>
    1758:	01e17825 	or	t7,t7,at
    175c:	10000005 	b	1774 <func_800DF1D8+0x3bc>
    1760:	240fffff 	li	t7,-1
    1764:	440f4000 	mfc1	t7,$f8
    1768:	00000000 	nop
    176c:	05e0fffb 	bltz	t7,175c <func_800DF1D8+0x3a4>
    1770:	00000000 	nop
    1774:	44cef800 	ctc1	t6,$31
    1778:	a46f0006 	sh	t7,6(v1)
    177c:	1482ff76 	bne	a0,v0,1558 <func_800DF1D8+0x1a0>
    1780:	24630008 	addiu	v1,v1,8
    1784:	03e00008 	jr	ra
    1788:	27bd0050 	addiu	sp,sp,80

0000178c <func_800DF5AC>:
    178c:	00801825 	move	v1,a0
    1790:	24040008 	li	a0,8
    1794:	00001025 	move	v0,zero
    1798:	24420004 	addiu	v0,v0,4
    179c:	a4600002 	sh	zero,2(v1)
    17a0:	a4600004 	sh	zero,4(v1)
    17a4:	a4600006 	sh	zero,6(v1)
    17a8:	24630008 	addiu	v1,v1,8
    17ac:	1444fffa 	bne	v0,a0,1798 <func_800DF5AC+0xc>
    17b0:	a460fff8 	sh	zero,-8(v1)
    17b4:	03e00008 	jr	ra
    17b8:	00000000 	nop

000017bc <func_800DF5DC>:
    17bc:	3c180000 	lui	t8,0x0
    17c0:	27180000 	addiu	t8,t8,0
    17c4:	00801825 	move	v1,a0
    17c8:	00057900 	sll	t7,a1,0x4
    17cc:	01f83021 	addu	a2,t7,t8
    17d0:	24040008 	li	a0,8
    17d4:	00001025 	move	v0,zero
    17d8:	84d90000 	lh	t9,0(a2)
    17dc:	24420004 	addiu	v0,v0,4
    17e0:	24630008 	addiu	v1,v1,8
    17e4:	a479fff8 	sh	t9,-8(v1)
    17e8:	84c80002 	lh	t0,2(a2)
    17ec:	24c60008 	addiu	a2,a2,8
    17f0:	a468fffa 	sh	t0,-6(v1)
    17f4:	84c9fffc 	lh	t1,-4(a2)
    17f8:	a469fffc 	sh	t1,-4(v1)
    17fc:	84cafffe 	lh	t2,-2(a2)
    1800:	1444fff5 	bne	v0,a0,17d8 <func_800DF5DC+0x1c>
    1804:	a46afffe 	sh	t2,-2(v1)
    1808:	03e00008 	jr	ra
    180c:	00000000 	nop

00001810 <func_800DF630>:
    1810:	00057900 	sll	t7,a1,0x4
    1814:	3c190000 	lui	t9,0x0
    1818:	27390000 	addiu	t9,t9,0
    181c:	25f8fff0 	addiu	t8,t7,-16
    1820:	00801825 	move	v1,a0
    1824:	24040008 	li	a0,8
    1828:	03193021 	addu	a2,t8,t9
    182c:	00001025 	move	v0,zero
    1830:	84c80000 	lh	t0,0(a2)
    1834:	24420004 	addiu	v0,v0,4
    1838:	24630008 	addiu	v1,v1,8
    183c:	a468fff8 	sh	t0,-8(v1)
    1840:	84c90002 	lh	t1,2(a2)
    1844:	24c60008 	addiu	a2,a2,8
    1848:	a469fffa 	sh	t1,-6(v1)
    184c:	84cafffc 	lh	t2,-4(a2)
    1850:	a46afffc 	sh	t2,-4(v1)
    1854:	84cbfffe 	lh	t3,-2(a2)
    1858:	1444fff5 	bne	v0,a0,1830 <func_800DF630+0x20>
    185c:	a46bfffe 	sh	t3,-2(v1)
    1860:	03e00008 	jr	ra
    1864:	00000000 	nop

00001868 <func_800DF688>:
    1868:	27bdffe8 	addiu	sp,sp,-24
    186c:	afbf0014 	sw	ra,20(sp)
    1870:	afa40018 	sw	a0,24(sp)
    1874:	14a00007 	bnez	a1,1894 <func_800DF688+0x2c>
    1878:	00a03825 	move	a3,a1
    187c:	14c00005 	bnez	a2,1894 <func_800DF688+0x2c>
    1880:	00000000 	nop
    1884:	0c000000 	jal	0 <func_800DDE20>
    1888:	00002825 	move	a1,zero
    188c:	10000040 	b	1990 <func_800DF688+0x128>
    1890:	8fbf0014 	lw	ra,20(sp)
    1894:	14c00005 	bnez	a2,18ac <func_800DF688+0x44>
    1898:	8fa40018 	lw	a0,24(sp)
    189c:	0c000000 	jal	0 <func_800DDE20>
    18a0:	00e02825 	move	a1,a3
    18a4:	1000003a 	b	1990 <func_800DF688+0x128>
    18a8:	8fbf0014 	lw	ra,20(sp)
    18ac:	14e00006 	bnez	a3,18c8 <func_800DF688+0x60>
    18b0:	00002825 	move	a1,zero
    18b4:	8fa40018 	lw	a0,24(sp)
    18b8:	0c000000 	jal	0 <func_800DDE20>
    18bc:	00c02825 	move	a1,a2
    18c0:	10000033 	b	1990 <func_800DF688+0x128>
    18c4:	8fbf0014 	lw	ra,20(sp)
    18c8:	00c07025 	move	t6,a2
    18cc:	000e7900 	sll	t7,t6,0x4
    18d0:	3c190000 	lui	t9,0x0
    18d4:	3c0a0000 	lui	t2,0x0
    18d8:	254a0000 	addiu	t2,t2,0
    18dc:	27390000 	addiu	t9,t9,0
    18e0:	25f8fff0 	addiu	t8,t7,-16
    18e4:	00074900 	sll	t1,a3,0x4
    18e8:	012a2021 	addu	a0,t1,t2
    18ec:	03191821 	addu	v1,t8,t9
    18f0:	24060008 	li	a2,8
    18f4:	8fa20018 	lw	v0,24(sp)
    18f8:	846b0000 	lh	t3,0(v1)
    18fc:	848c0000 	lh	t4,0(a0)
    1900:	24a50004 	addiu	a1,a1,4
    1904:	24420008 	addiu	v0,v0,8
    1908:	016c6821 	addu	t5,t3,t4
    190c:	05a10003 	bgez	t5,191c <func_800DF688+0xb4>
    1910:	000d7043 	sra	t6,t5,0x1
    1914:	25a10001 	addiu	at,t5,1
    1918:	00017043 	sra	t6,at,0x1
    191c:	a44efff8 	sh	t6,-8(v0)
    1920:	84980002 	lh	t8,2(a0)
    1924:	846f0002 	lh	t7,2(v1)
    1928:	24630008 	addiu	v1,v1,8
    192c:	24840008 	addiu	a0,a0,8
    1930:	01f8c821 	addu	t9,t7,t8
    1934:	07210003 	bgez	t9,1944 <func_800DF688+0xdc>
    1938:	00194043 	sra	t0,t9,0x1
    193c:	27210001 	addiu	at,t9,1
    1940:	00014043 	sra	t0,at,0x1
    1944:	a448fffa 	sh	t0,-6(v0)
    1948:	848afffc 	lh	t2,-4(a0)
    194c:	8469fffc 	lh	t1,-4(v1)
    1950:	012a5821 	addu	t3,t1,t2
    1954:	05610003 	bgez	t3,1964 <func_800DF688+0xfc>
    1958:	000b6043 	sra	t4,t3,0x1
    195c:	25610001 	addiu	at,t3,1
    1960:	00016043 	sra	t4,at,0x1
    1964:	a44cfffc 	sh	t4,-4(v0)
    1968:	848efffe 	lh	t6,-2(a0)
    196c:	846dfffe 	lh	t5,-2(v1)
    1970:	01ae7821 	addu	t7,t5,t6
    1974:	05e10003 	bgez	t7,1984 <func_800DF688+0x11c>
    1978:	000fc043 	sra	t8,t7,0x1
    197c:	25e10001 	addiu	at,t7,1
    1980:	0001c043 	sra	t8,at,0x1
    1984:	14a6ffdc 	bne	a1,a2,18f8 <func_800DF688+0x90>
    1988:	a458fffe 	sh	t8,-2(v0)
    198c:	8fbf0014 	lw	ra,20(sp)
    1990:	27bd0018 	addiu	sp,sp,24
    1994:	03e00008 	jr	ra
    1998:	00000000 	nop

0000199c <func_800DF7BC>:
    199c:	03e00008 	jr	ra
    19a0:	afa40000 	sw	a0,0(sp)

000019a4 <func_800DF7C4>:
    19a4:	3c030000 	lui	v1,0x0
    19a8:	24630000 	addiu	v1,v1,0
    19ac:	27bdffd8 	addiu	sp,sp,-40
    19b0:	846e2848 	lh	t6,10312(v1)
    19b4:	24010002 	li	at,2
    19b8:	afbf0024 	sw	ra,36(sp)
    19bc:	afb30020 	sw	s3,32(sp)
    19c0:	afb2001c 	sw	s2,28(sp)
    19c4:	afb10018 	sw	s1,24(sp)
    19c8:	15c10003 	bne	t6,at,19d8 <func_800DF7C4+0x34>
    19cc:	afb00014 	sw	s0,20(sp)
    19d0:	10000002 	b	19dc <func_800DF7C4+0x38>
    19d4:	24120002 	li	s2,2
    19d8:	24120001 	li	s2,1
    19dc:	80620001 	lb	v0,1(v1)
    19e0:	00009825 	move	s3,zero
    19e4:	5840001a 	blezl	v0,1a50 <func_800DF7C4+0xac>
    19e8:	8fbf0024 	lw	ra,36(sp)
    19ec:	1a400013 	blez	s2,1a3c <func_800DF7C4+0x98>
    19f0:	00008025 	move	s0,zero
    19f4:	00137880 	sll	t7,s3,0x2
    19f8:	01f37823 	subu	t7,t7,s3
    19fc:	000f7880 	sll	t7,t7,0x2
    1a00:	01f37823 	subu	t7,t7,s3
    1a04:	000f78c0 	sll	t7,t7,0x3
    1a08:	01f37821 	addu	t7,t7,s3
    1a0c:	000f78c0 	sll	t7,t7,0x3
    1a10:	3c190000 	lui	t9,0x0
    1a14:	27390000 	addiu	t9,t9,0
    1a18:	25f80018 	addiu	t8,t7,24
    1a1c:	03198821 	addu	s1,t8,t9
    1a20:	0c000000 	jal	0 <func_800DDE20>
    1a24:	02202025 	move	a0,s1
    1a28:	26100001 	addiu	s0,s0,1
    1a2c:	1612fffc 	bne	s0,s2,1a20 <func_800DF7C4+0x7c>
    1a30:	00000000 	nop
    1a34:	3c020000 	lui	v0,0x0
    1a38:	80420001 	lb	v0,1(v0)
    1a3c:	26730001 	addiu	s3,s3,1
    1a40:	0262082a 	slt	at,s3,v0
    1a44:	1420ffe9 	bnez	at,19ec <func_800DF7C4+0x48>
    1a48:	00000000 	nop
    1a4c:	8fbf0024 	lw	ra,36(sp)
    1a50:	8fb00014 	lw	s0,20(sp)
    1a54:	8fb10018 	lw	s1,24(sp)
    1a58:	8fb2001c 	lw	s2,28(sp)
    1a5c:	8fb30020 	lw	s3,32(sp)
    1a60:	03e00008 	jr	ra
    1a64:	27bd0028 	addiu	sp,sp,40

00001a68 <func_800DF888>:
    1a68:	3c060000 	lui	a2,0x0
    1a6c:	24c60000 	addiu	a2,a2,0
    1a70:	8cc228a8 	lw	v0,10408(a2)
    1a74:	84ce2852 	lh	t6,10322(a2)
    1a78:	00002825 	move	a1,zero
    1a7c:	00027840 	sll	t7,v0,0x1
    1a80:	0002c880 	sll	t9,v0,0x2
    1a84:	00cfc021 	addu	t8,a2,t7
    1a88:	00d92021 	addu	a0,a2,t9
    1a8c:	24020b00 	li	v0,2816
    1a90:	a70e2974 	sh	t6,10612(t8)
    1a94:	8c882968 	lw	t0,10600(a0)
    1a98:	01054821 	addu	t1,t0,a1
    1a9c:	a5200000 	sh	zero,0(t1)
    1aa0:	8c8a2968 	lw	t2,10600(a0)
    1aa4:	01455821 	addu	t3,t2,a1
    1aa8:	a5600002 	sh	zero,2(t3)
    1aac:	8c8c2968 	lw	t4,10600(a0)
    1ab0:	01856821 	addu	t5,t4,a1
    1ab4:	a5a00004 	sh	zero,4(t5)
    1ab8:	8c8f2968 	lw	t7,10600(a0)
    1abc:	01e57021 	addu	t6,t7,a1
    1ac0:	24a50008 	addiu	a1,a1,8
    1ac4:	14a2fff3 	bne	a1,v0,1a94 <func_800DF888+0x2c>
    1ac8:	a5c00006 	sh	zero,6(t6)
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop

00001ad4 <Audio_ResetStep>:
    1ad4:	27bdffd0 	addiu	sp,sp,-48
    1ad8:	afb10018 	sw	s1,24(sp)
    1adc:	3c110000 	lui	s1,0x0
    1ae0:	26310000 	addiu	s1,s1,0
    1ae4:	862e2848 	lh	t6,10312(s1)
    1ae8:	24010002 	li	at,2
    1aec:	afbf001c 	sw	ra,28(sp)
    1af0:	15c10004 	bne	t6,at,1b04 <Audio_ResetStep+0x30>
    1af4:	afb00014 	sw	s0,20(sp)
    1af8:	240f0002 	li	t7,2
    1afc:	10000003 	b	1b0c <Audio_ResetStep+0x38>
    1b00:	afaf0024 	sw	t7,36(sp)
    1b04:	24180001 	li	t8,1
    1b08:	afb80024 	sw	t8,36(sp)
    1b0c:	92393518 	lbu	t9,13592(s1)
    1b10:	2728ffff 	addiu	t0,t9,-1
    1b14:	2d010005 	sltiu	at,t0,5
    1b18:	102000a3 	beqz	at,1da8 <Audio_ResetStep+0x2d4>
    1b1c:	00084080 	sll	t0,t0,0x2
    1b20:	3c010000 	lui	at,0x0
    1b24:	00280821 	addu	at,at,t0
    1b28:	8c28000c 	lw	t0,12(at)
    1b2c:	01000008 	jr	t0
    1b30:	00000000 	nop
    1b34:	8629285c 	lh	t1,10332(s1)
    1b38:	00002825 	move	a1,zero
    1b3c:	5920000e 	blezl	t1,1b78 <Audio_ResetStep+0xa4>
    1b40:	8fab0024 	lw	t3,36(sp)
    1b44:	3c100000 	lui	s0,0x0
    1b48:	26103530 	addiu	s0,s0,13616
    1b4c:	02002025 	move	a0,s0
    1b50:	0c000000 	jal	0 <func_800DDE20>
    1b54:	afa5002c 	sw	a1,44(sp)
    1b58:	8fa5002c 	lw	a1,44(sp)
    1b5c:	862a285c 	lh	t2,10332(s1)
    1b60:	26100160 	addiu	s0,s0,352
    1b64:	24a50001 	addiu	a1,a1,1
    1b68:	00aa082a 	slt	at,a1,t2
    1b6c:	5420fff8 	bnezl	at,1b50 <Audio_ResetStep+0x7c>
    1b70:	02002025 	move	a0,s0
    1b74:	8fab0024 	lw	t3,36(sp)
    1b78:	240c0002 	li	t4,2
    1b7c:	92223518 	lbu	v0,13592(s1)
    1b80:	018b001a 	div	zero,t4,t3
    1b84:	00006812 	mflo	t5
    1b88:	244effff 	addiu	t6,v0,-1
    1b8c:	15600002 	bnez	t3,1b98 <Audio_ResetStep+0xc4>
    1b90:	00000000 	nop
    1b94:	0007000d 	break	0x7
    1b98:	2401ffff 	li	at,-1
    1b9c:	15610004 	bne	t3,at,1bb0 <Audio_ResetStep+0xdc>
    1ba0:	3c018000 	lui	at,0x8000
    1ba4:	15810002 	bne	t4,at,1bb0 <Audio_ResetStep+0xdc>
    1ba8:	00000000 	nop
    1bac:	0006000d 	break	0x6
    1bb0:	ae2d351c 	sw	t5,13596(s1)
    1bb4:	1000007c 	b	1da8 <Audio_ResetStep+0x2d4>
    1bb8:	a22e3518 	sb	t6,13592(s1)
    1bbc:	8e22351c 	lw	v0,13596(s1)
    1bc0:	10400005 	beqz	v0,1bd8 <Audio_ResetStep+0x104>
    1bc4:	244fffff 	addiu	t7,v0,-1
    1bc8:	0c000000 	jal	0 <func_800DDE20>
    1bcc:	ae2f351c 	sw	t7,13596(s1)
    1bd0:	10000076 	b	1dac <Audio_ResetStep+0x2d8>
    1bd4:	922f3518 	lbu	t7,13592(s1)
    1bd8:	8e242894 	lw	a0,10388(s1)
    1bdc:	00002825 	move	a1,zero
    1be0:	5880001a 	blezl	a0,1c4c <Audio_ResetStep+0x178>
    1be4:	8faf0024 	lw	t7,36(sp)
    1be8:	00001825 	move	v1,zero
    1bec:	8e38352c 	lw	t8,13612(s1)
    1bf0:	24a50001 	addiu	a1,a1,1
    1bf4:	03031021 	addu	v0,t8,v1
    1bf8:	8c5900c0 	lw	t9,192(v0)
    1bfc:	001947c2 	srl	t0,t9,0x1f
    1c00:	5100000f 	beqzl	t0,1c40 <Audio_ResetStep+0x16c>
    1c04:	00a4082a 	slt	at,a1,a0
    1c08:	90490070 	lbu	t1,112(v0)
    1c0c:	312a000f 	andi	t2,t1,0xf
    1c10:	5140000b 	beqzl	t2,1c40 <Audio_ResetStep+0x16c>
    1c14:	00a4082a 	slt	at,a1,a0
    1c18:	c6242864 	lwc1	$f4,10340(s1)
    1c1c:	e444007c 	swc1	$f4,124(v0)
    1c20:	8e2c352c 	lw	t4,13612(s1)
    1c24:	01831021 	addu	v0,t4,v1
    1c28:	904b0070 	lbu	t3,112(v0)
    1c2c:	316dffef 	andi	t5,t3,0xffef
    1c30:	35ae0010 	ori	t6,t5,0x10
    1c34:	a04e0070 	sb	t6,112(v0)
    1c38:	8e242894 	lw	a0,10388(s1)
    1c3c:	00a4082a 	slt	at,a1,a0
    1c40:	1420ffea 	bnez	at,1bec <Audio_ResetStep+0x118>
    1c44:	246300e0 	addiu	v1,v1,224
    1c48:	8faf0024 	lw	t7,36(sp)
    1c4c:	24180008 	li	t8,8
    1c50:	92223518 	lbu	v0,13592(s1)
    1c54:	030f001a 	div	zero,t8,t7
    1c58:	0000c812 	mflo	t9
    1c5c:	2448ffff 	addiu	t0,v0,-1
    1c60:	15e00002 	bnez	t7,1c6c <Audio_ResetStep+0x198>
    1c64:	00000000 	nop
    1c68:	0007000d 	break	0x7
    1c6c:	2401ffff 	li	at,-1
    1c70:	15e10004 	bne	t7,at,1c84 <Audio_ResetStep+0x1b0>
    1c74:	3c018000 	lui	at,0x8000
    1c78:	17010002 	bne	t8,at,1c84 <Audio_ResetStep+0x1b0>
    1c7c:	00000000 	nop
    1c80:	0006000d 	break	0x6
    1c84:	ae39351c 	sw	t9,13596(s1)
    1c88:	10000047 	b	1da8 <Audio_ResetStep+0x2d4>
    1c8c:	a2283518 	sb	t0,13592(s1)
    1c90:	8e22351c 	lw	v0,13596(s1)
    1c94:	8faa0024 	lw	t2,36(sp)
    1c98:	240c0002 	li	t4,2
    1c9c:	10400006 	beqz	v0,1cb8 <Audio_ResetStep+0x1e4>
    1ca0:	00000000 	nop
    1ca4:	2449ffff 	addiu	t1,v0,-1
    1ca8:	0c000000 	jal	0 <func_800DDE20>
    1cac:	ae29351c 	sw	t1,13596(s1)
    1cb0:	1000003e 	b	1dac <Audio_ResetStep+0x2d8>
    1cb4:	922f3518 	lbu	t7,13592(s1)
    1cb8:	018a001a 	div	zero,t4,t2
    1cbc:	92223518 	lbu	v0,13592(s1)
    1cc0:	00005812 	mflo	t3
    1cc4:	ae2b351c 	sw	t3,13596(s1)
    1cc8:	15400002 	bnez	t2,1cd4 <Audio_ResetStep+0x200>
    1ccc:	00000000 	nop
    1cd0:	0007000d 	break	0x7
    1cd4:	2401ffff 	li	at,-1
    1cd8:	15410004 	bne	t2,at,1cec <Audio_ResetStep+0x218>
    1cdc:	3c018000 	lui	at,0x8000
    1ce0:	15810002 	bne	t4,at,1cec <Audio_ResetStep+0x218>
    1ce4:	00000000 	nop
    1ce8:	0006000d 	break	0x6
    1cec:	244dffff 	addiu	t5,v0,-1
    1cf0:	1000002d 	b	1da8 <Audio_ResetStep+0x2d4>
    1cf4:	a22d3518 	sb	t5,13592(s1)
    1cf8:	0c000000 	jal	0 <func_800DDE20>
    1cfc:	00000000 	nop
    1d00:	8e22351c 	lw	v0,13596(s1)
    1d04:	10400003 	beqz	v0,1d14 <Audio_ResetStep+0x240>
    1d08:	244effff 	addiu	t6,v0,-1
    1d0c:	10000026 	b	1da8 <Audio_ResetStep+0x2d4>
    1d10:	ae2e351c 	sw	t6,13596(s1)
    1d14:	92223518 	lbu	v0,13592(s1)
    1d18:	2458ffff 	addiu	t8,v0,-1
    1d1c:	0c000000 	jal	0 <func_800DDE20>
    1d20:	a2383518 	sb	t8,13592(s1)
    1d24:	0c000000 	jal	0 <func_800DDE20>
    1d28:	00000000 	nop
    1d2c:	1000001f 	b	1dac <Audio_ResetStep+0x2d8>
    1d30:	922f3518 	lbu	t7,13592(s1)
    1d34:	0c000000 	jal	0 <func_800DDE20>
    1d38:	00000000 	nop
    1d3c:	3c0f0000 	lui	t7,0x0
    1d40:	25e30000 	addiu	v1,t7,0
    1d44:	3c070000 	lui	a3,0x0
    1d48:	a2203518 	sb	zero,13592(s1)
    1d4c:	24e7000c 	addiu	a3,a3,12
    1d50:	00603025 	move	a2,v1
    1d54:	24040b00 	li	a0,2816
    1d58:	86392850 	lh	t9,10320(s1)
    1d5c:	00001025 	move	v0,zero
    1d60:	a4d92974 	sh	t9,10612(a2)
    1d64:	8c682968 	lw	t0,10600(v1)
    1d68:	01024821 	addu	t1,t0,v0
    1d6c:	a5200000 	sh	zero,0(t1)
    1d70:	8c6c2968 	lw	t4,10600(v1)
    1d74:	01825021 	addu	t2,t4,v0
    1d78:	a5400002 	sh	zero,2(t2)
    1d7c:	8c6b2968 	lw	t3,10600(v1)
    1d80:	01626821 	addu	t5,t3,v0
    1d84:	a5a00004 	sh	zero,4(t5)
    1d88:	8c6e2968 	lw	t6,10600(v1)
    1d8c:	01c2c021 	addu	t8,t6,v0
    1d90:	24420008 	addiu	v0,v0,8
    1d94:	1444fff3 	bne	v0,a0,1d64 <Audio_ResetStep+0x290>
    1d98:	a7000006 	sh	zero,6(t8)
    1d9c:	24630004 	addiu	v1,v1,4
    1da0:	1467ffed 	bne	v1,a3,1d58 <Audio_ResetStep+0x284>
    1da4:	24c60002 	addiu	a2,a2,2
    1da8:	922f3518 	lbu	t7,13592(s1)
    1dac:	8fbf001c 	lw	ra,28(sp)
    1db0:	24020001 	li	v0,1
    1db4:	29e10003 	slti	at,t7,3
    1db8:	10200003 	beqz	at,1dc8 <Audio_ResetStep+0x2f4>
    1dbc:	00000000 	nop
    1dc0:	10000001 	b	1dc8 <Audio_ResetStep+0x2f4>
    1dc4:	00001025 	move	v0,zero
    1dc8:	8fb00014 	lw	s0,20(sp)
    1dcc:	8fb10018 	lw	s1,24(sp)
    1dd0:	03e00008 	jr	ra
    1dd4:	27bd0030 	addiu	sp,sp,48

00001dd8 <func_800DFBF8>:
    1dd8:	27bdff60 	addiu	sp,sp,-160
    1ddc:	afb60030 	sw	s6,48(sp)
    1de0:	3c160000 	lui	s6,0x0
    1de4:	26d60000 	addiu	s6,s6,0
    1de8:	92ce3519 	lbu	t6,13593(s6)
    1dec:	3c180000 	lui	t8,0x0
    1df0:	27180000 	addiu	t8,t8,0
    1df4:	000e78c0 	sll	t7,t6,0x3
    1df8:	01ee7823 	subu	t7,t7,t6
    1dfc:	000f78c0 	sll	t7,t7,0x3
    1e00:	afbf003c 	sw	ra,60(sp)
    1e04:	afbe0038 	sw	s8,56(sp)
    1e08:	afb70034 	sw	s7,52(sp)
    1e0c:	afb5002c 	sw	s5,44(sp)
    1e10:	afb40028 	sw	s4,40(sp)
    1e14:	afb30024 	sw	s3,36(sp)
    1e18:	afb20020 	sw	s2,32(sp)
    1e1c:	afb1001c 	sw	s1,28(sp)
    1e20:	afb00018 	sw	s0,24(sp)
    1e24:	01f81021 	addu	v0,t7,t8
    1e28:	aec02620 	sw	zero,9760(s6)
    1e2c:	8c590000 	lw	t9,0(v0)
    1e30:	afa20068 	sw	v0,104(sp)
    1e34:	a6d9284a 	sh	t9,10314(s6)
    1e38:	0c000000 	jal	0 <func_800DDE20>
    1e3c:	3324ffff 	andi	a0,t9,0xffff
    1e40:	96c3284a 	lhu	v1,10314(s6)
    1e44:	8ec92964 	lw	t1,10596(s6)
    1e48:	8fa80068 	lw	t0,104(sp)
    1e4c:	44833000 	mtc1	v1,$f6
    1e50:	0069001a 	div	zero,v1,t1
    1e54:	00005012 	mflo	t2
    1e58:	254b000f 	addiu	t3,t2,15
    1e5c:	316cfff0 	andi	t4,t3,0xfff0
    1e60:	a6cc284e 	sh	t4,10318(s6)
    1e64:	86c6284e 	lh	a2,10318(s6)
    1e68:	46803220 	cvt.s.w	$f8,$f6
    1e6c:	a6c2284c 	sh	v0,10316(s6)
    1e70:	15200002 	bnez	t1,1e7c <func_800DFBF8+0xa4>
    1e74:	00000000 	nop
    1e78:	0007000d 	break	0x7
    1e7c:	2401ffff 	li	at,-1
    1e80:	15210004 	bne	t1,at,1e94 <func_800DFBF8+0xbc>
    1e84:	3c018000 	lui	at,0x8000
    1e88:	14610002 	bne	v1,at,1e94 <func_800DFBF8+0xbc>
    1e8c:	00000000 	nop
    1e90:	0006000d 	break	0x6
    1e94:	240100d0 	li	at,208
    1e98:	24c40010 	addiu	a0,a2,16
    1e9c:	0081001a 	div	zero,a0,at
    1ea0:	00007012 	mflo	t6
    1ea4:	25cf0001 	addiu	t7,t6,1
    1ea8:	a6cf2854 	sh	t7,10324(s6)
    1eac:	86c72854 	lh	a3,10324(s6)
    1eb0:	24cdfff0 	addiu	t5,a2,-16
    1eb4:	a6cd2852 	sh	t5,10322(s6)
    1eb8:	00c7001a 	div	zero,a2,a3
    1ebc:	0000c012 	mflo	t8
    1ec0:	44878000 	mtc1	a3,$f16
    1ec4:	a6c42850 	sh	a0,10320(s6)
    1ec8:	14e00002 	bnez	a3,1ed4 <func_800DFBF8+0xfc>
    1ecc:	00000000 	nop
    1ed0:	0007000d 	break	0x7
    1ed4:	2401ffff 	li	at,-1
    1ed8:	14e10004 	bne	a3,at,1eec <func_800DFBF8+0x114>
    1edc:	3c018000 	lui	at,0x8000
    1ee0:	14c10002 	bne	a2,at,1eec <func_800DFBF8+0x114>
    1ee4:	00000000 	nop
    1ee8:	0006000d 	break	0x6
    1eec:	2401fff8 	li	at,-8
    1ef0:	0301c824 	and	t9,t8,at
    1ef4:	3c0146fa 	lui	at,0x46fa
    1ef8:	44812000 	mtc1	at,$f4
    1efc:	3c013b80 	lui	at,0x3b80
    1f00:	46808020 	cvt.s.w	$f0,$f16
    1f04:	44819000 	mtc1	at,$f18
    1f08:	3c013e80 	lui	at,0x3e80
    1f0c:	a6d92856 	sh	t9,10326(s6)
    1f10:	86c52856 	lh	a1,10326(s6)
    1f14:	46082283 	div.s	$f10,$f4,$f8
    1f18:	44812000 	mtc1	at,$f4
    1f1c:	3c013f80 	lui	at,0x3f80
    1f20:	24aa0008 	addiu	t2,a1,8
    1f24:	46040202 	mul.s	$f8,$f0,$f4
    1f28:	24abfff8 	addiu	t3,a1,-8
    1f2c:	a6ca2858 	sh	t2,10328(s6)
    1f30:	a6cb285a 	sh	t3,10330(s6)
    1f34:	3c040000 	lui	a0,0x0
    1f38:	24843408 	addiu	a0,a0,13320
    1f3c:	e6c8286c 	swc1	$f8,10348(s6)
    1f40:	46009183 	div.s	$f6,$f18,$f0
    1f44:	e6ca2860 	swc1	$f10,10336(s6)
    1f48:	44815000 	mtc1	at,$f10
    1f4c:	00000000 	nop
    1f50:	46005403 	div.s	$f16,$f10,$f0
    1f54:	e6c62868 	swc1	$f6,10344(s6)
    1f58:	e6d02864 	swc1	$f16,10340(s6)
    1f5c:	950c0010 	lhu	t4,16(t0)
    1f60:	aecc2874 	sw	t4,10356(s6)
    1f64:	950d0012 	lhu	t5,18(t0)
    1f68:	aecd2878 	sw	t5,10360(s6)
    1f6c:	910e0005 	lbu	t6,5(t0)
    1f70:	aece2894 	sw	t6,10388(s6)
    1f74:	910f0006 	lbu	t7,6(t0)
    1f78:	a6cf285c 	sh	t7,10332(s6)
    1f7c:	86d8285c 	lh	t8,10332(s6)
    1f80:	2b010005 	slti	at,t8,5
    1f84:	14200002 	bnez	at,1f90 <func_800DFBF8+0x1b8>
    1f88:	24190004 	li	t9,4
    1f8c:	a6d9285c 	sh	t9,10332(s6)
    1f90:	950a0014 	lhu	t2,20(t0)
    1f94:	3c0b0000 	lui	t3,0x0
    1f98:	3c010000 	lui	at,0x0
    1f9c:	a6ca0002 	sh	t2,2(s6)
    1fa0:	856b0000 	lh	t3,0(t3)
    1fa4:	c4320000 	lwc1	$f18,0(at)
    1fa8:	c6d02960 	lwc1	$f16,10592(s6)
    1fac:	448b2000 	mtc1	t3,$f4
    1fb0:	46120182 	mul.s	$f6,$f0,$f18
    1fb4:	240d0001 	li	t5,1
    1fb8:	46802220 	cvt.s.w	$f8,$f4
    1fbc:	46083283 	div.s	$f10,$f6,$f8
    1fc0:	46105483 	div.s	$f18,$f10,$f16
    1fc4:	444cf800 	cfc1	t4,$31
    1fc8:	44cdf800 	ctc1	t5,$31
    1fcc:	00000000 	nop
    1fd0:	46009124 	cvt.w.s	$f4,$f18
    1fd4:	444df800 	cfc1	t5,$31
    1fd8:	00000000 	nop
    1fdc:	31ad0078 	andi	t5,t5,0x78
    1fe0:	11a00012 	beqz	t5,202c <func_800DFBF8+0x254>
    1fe4:	3c014f00 	lui	at,0x4f00
    1fe8:	44812000 	mtc1	at,$f4
    1fec:	240d0001 	li	t5,1
    1ff0:	46049101 	sub.s	$f4,$f18,$f4
    1ff4:	44cdf800 	ctc1	t5,$31
    1ff8:	00000000 	nop
    1ffc:	46002124 	cvt.w.s	$f4,$f4
    2000:	444df800 	cfc1	t5,$31
    2004:	00000000 	nop
    2008:	31ad0078 	andi	t5,t5,0x78
    200c:	15a00005 	bnez	t5,2024 <func_800DFBF8+0x24c>
    2010:	00000000 	nop
    2014:	440d2000 	mfc1	t5,$f4
    2018:	3c018000 	lui	at,0x8000
    201c:	10000007 	b	203c <func_800DFBF8+0x264>
    2020:	01a16825 	or	t5,t5,at
    2024:	10000005 	b	203c <func_800DFBF8+0x264>
    2028:	240dffff 	li	t5,-1
    202c:	440d2000 	mfc1	t5,$f4
    2030:	00000000 	nop
    2034:	05a0fffb 	bltz	t5,2024 <func_800DFBF8+0x24c>
    2038:	00000000 	nop
    203c:	44ccf800 	ctc1	t4,$31
    2040:	44893000 	mtc1	t1,$f6
    2044:	96ce284c 	lhu	t6,10316(s6)
    2048:	a6cd2898 	sh	t5,10392(s6)
    204c:	46803220 	cvt.s.w	$f8,$f6
    2050:	448e2000 	mtc1	t6,$f4
    2054:	00000000 	nop
    2058:	468021a0 	cvt.s.w	$f6,$f4
    205c:	e6c82870 	swc1	$f8,10352(s6)
    2060:	c6ca2870 	lwc1	$f10,10352(s6)
    2064:	46005402 	mul.s	$f16,$f10,$f0
    2068:	e6d02870 	swc1	$f16,10352(s6)
    206c:	05c10005 	bgez	t6,2084 <func_800DFBF8+0x2ac>
    2070:	c6d22870 	lwc1	$f18,10352(s6)
    2074:	3c014f80 	lui	at,0x4f80
    2078:	44814000 	mtc1	at,$f8
    207c:	00000000 	nop
    2080:	46083180 	add.s	$f6,$f6,$f8
    2084:	46069283 	div.s	$f10,$f18,$f6
    2088:	86cf2898 	lh	t7,10392(s6)
    208c:	86ca2850 	lh	t2,10320(s6)
    2090:	86cc2852 	lh	t4,10322(s6)
    2094:	448f2000 	mtc1	t7,$f4
    2098:	00000000 	nop
    209c:	46802220 	cvt.s.w	$f8,$f4
    20a0:	e6ca2870 	swc1	$f10,10352(s6)
    20a4:	c6d02870 	lwc1	$f16,10352(s6)
    20a8:	46088483 	div.s	$f18,$f16,$f8
    20ac:	e6d22870 	swc1	$f18,10352(s6)
    20b0:	91180004 	lbu	t8,4(t0)
    20b4:	a6d82848 	sh	t8,10312(s6)
    20b8:	86c22848 	lh	v0,10312(s6)
    20bc:	00c20019 	multu	a2,v0
    20c0:	28410002 	slti	at,v0,2
    20c4:	0000c812 	mflo	t9
    20c8:	a6d9284e 	sh	t9,10318(s6)
    20cc:	00000000 	nop
    20d0:	01420019 	multu	t2,v0
    20d4:	00005812 	mflo	t3
    20d8:	a6cb2850 	sh	t3,10320(s6)
    20dc:	00000000 	nop
    20e0:	01820019 	multu	t4,v0
    20e4:	00006812 	mflo	t5
    20e8:	a6cd2852 	sh	t5,10322(s6)
    20ec:	00000000 	nop
    20f0:	00e20019 	multu	a3,v0
    20f4:	00007012 	mflo	t6
    20f8:	a6ce2854 	sh	t6,10324(s6)
    20fc:	54200005 	bnezl	at,2114 <func_800DFBF8+0x33c>
    2100:	8ed92894 	lw	t9,10388(s6)
    2104:	86cf2850 	lh	t7,10320(s6)
    2108:	25f8fff0 	addiu	t8,t7,-16
    210c:	a6d82850 	sh	t8,10320(s6)
    2110:	8ed92894 	lw	t9,10388(s6)
    2114:	86cb2854 	lh	t3,10324(s6)
    2118:	910d0009 	lbu	t5,9(t0)
    211c:	00195100 	sll	t2,t9,0x4
    2120:	014b0019 	multu	t2,t3
    2124:	000d7080 	sll	t6,t5,0x2
    2128:	01cd7023 	subu	t6,t6,t5
    212c:	000e70c0 	sll	t6,t6,0x3
    2130:	8ec329a0 	lw	v1,10656(s6)
    2134:	3c010000 	lui	at,0x0
    2138:	00006012 	mflo	t4
    213c:	018e7821 	addu	t7,t4,t6
    2140:	25f80140 	addiu	t8,t7,320
    2144:	aed82890 	sw	t8,10384(s6)
    2148:	8d0a001c 	lw	t2,28(t0)
    214c:	8d190018 	lw	t9,24(t0)
    2150:	8d0e0028 	lw	t6,40(t0)
    2154:	8d0c0024 	lw	t4,36(t0)
    2158:	8d0d0020 	lw	t5,32(t0)
    215c:	8d18002c 	lw	t8,44(t0)
    2160:	032a5821 	addu	t3,t9,t2
    2164:	018e7821 	addu	t7,t4,t6
    2168:	8ed92998 	lw	t9,10648(s6)
    216c:	016d8021 	addu	s0,t3,t5
    2170:	01f88821 	addu	s1,t7,t8
    2174:	26100010 	addiu	s0,s0,16
    2178:	26310010 	addiu	s1,s1,16
    217c:	02111021 	addu	v0,s0,s1
    2180:	03222823 	subu	a1,t9,v0
    2184:	10600002 	beqz	v1,2190 <func_800DFBF8+0x3b8>
    2188:	24a5ff00 	addiu	a1,a1,-256
    218c:	aec329a4 	sw	v1,10660(s6)
    2190:	aec53408 	sw	a1,13320(s6)
    2194:	0c000000 	jal	0 <func_800DDE20>
    2198:	ac223414 	sw	v0,13332(at)
    219c:	3c040000 	lui	a0,0x0
    21a0:	aed03418 	sw	s0,13336(s6)
    21a4:	aed1341c 	sw	s1,13340(s6)
    21a8:	0c000000 	jal	0 <func_800DDE20>
    21ac:	24843418 	addiu	a0,a0,13336
    21b0:	8fa20068 	lw	v0,104(sp)
    21b4:	3c040000 	lui	a0,0x0
    21b8:	24843420 	addiu	a0,a0,13344
    21bc:	8c4a0018 	lw	t2,24(v0)
    21c0:	aeca3420 	sw	t2,13344(s6)
    21c4:	8c4b001c 	lw	t3,28(v0)
    21c8:	aecb3424 	sw	t3,13348(s6)
    21cc:	8c4d0020 	lw	t5,32(v0)
    21d0:	0c000000 	jal	0 <func_800DDE20>
    21d4:	aecd3428 	sw	t5,13352(s6)
    21d8:	8fa20068 	lw	v0,104(sp)
    21dc:	3c040000 	lui	a0,0x0
    21e0:	2484342c 	addiu	a0,a0,13356
    21e4:	8c4c0024 	lw	t4,36(v0)
    21e8:	aecc342c 	sw	t4,13356(s6)
    21ec:	8c4e0028 	lw	t6,40(v0)
    21f0:	aece3430 	sw	t6,13360(s6)
    21f4:	8c4f002c 	lw	t7,44(v0)
    21f8:	0c000000 	jal	0 <func_800DDE20>
    21fc:	aecf3434 	sw	t7,13364(s6)
    2200:	0c000000 	jal	0 <func_800DDE20>
    2204:	00000000 	nop
    2208:	8ec52894 	lw	a1,10388(s6)
    220c:	3c130000 	lui	s3,0x0
    2210:	267329c0 	addiu	s3,s3,10688
    2214:	00a00821 	move	at,a1
    2218:	000528c0 	sll	a1,a1,0x3
    221c:	00a12823 	subu	a1,a1,at
    2220:	00052940 	sll	a1,a1,0x5
    2224:	0c000000 	jal	0 <func_800DDE20>
    2228:	02602025 	move	a0,s3
    222c:	0c000000 	jal	0 <func_800DDE20>
    2230:	aec2352c 	sw	v0,13612(s6)
    2234:	0c000000 	jal	0 <func_800DDE20>
    2238:	00000000 	nop
    223c:	86d82854 	lh	t8,10324(s6)
    2240:	8ed92894 	lw	t9,10388(s6)
    2244:	02602025 	move	a0,s3
    2248:	03190019 	multu	t8,t9
    224c:	00002812 	mflo	a1
    2250:	00052940 	sll	a1,a1,0x5
    2254:	0c000000 	jal	0 <func_800DDE20>
    2258:	00000000 	nop
    225c:	3c100000 	lui	s0,0x0
    2260:	3c110000 	lui	s1,0x0
    2264:	aec20014 	sw	v0,20(s6)
    2268:	26310008 	addiu	s1,s1,8
    226c:	26100000 	addiu	s0,s0,0
    2270:	8ec52890 	lw	a1,10384(s6)
    2274:	02602025 	move	a0,s3
    2278:	0c000000 	jal	0 <func_800DDE20>
    227c:	000528c0 	sll	a1,a1,0x3
    2280:	26100004 	addiu	s0,s0,4
    2284:	1611fffa 	bne	s0,s1,2270 <func_800DFBF8+0x498>
    2288:	ae0228a8 	sw	v0,10408(s0)
    228c:	02602025 	move	a0,s3
    2290:	0c000000 	jal	0 <func_800DDE20>
    2294:	24050400 	li	a1,1024
    2298:	0c000000 	jal	0 <func_800DDE20>
    229c:	aec23520 	sw	v0,13600(s6)
    22a0:	3c140000 	lui	s4,0x0
    22a4:	3c020000 	lui	v0,0x0
    22a8:	24420b20 	addiu	v0,v0,2848
    22ac:	26940000 	addiu	s4,s4,0
    22b0:	269402c8 	addiu	s4,s4,712
    22b4:	0282082b 	sltu	at,s4,v0
    22b8:	1420fffd 	bnez	at,22b0 <func_800DFBF8+0x4d8>
    22bc:	a280fd51 	sb	zero,-687(s4)
    22c0:	8fa20068 	lw	v0,104(sp)
    22c4:	904a0009 	lbu	t2,9(v0)
    22c8:	afa00074 	sw	zero,116(sp)
    22cc:	a2ca0001 	sb	t2,1(s6)
    22d0:	82cb0001 	lb	t3,1(s6)
    22d4:	196000ca 	blez	t3,2600 <func_800DFBF8+0x828>
    22d8:	3c0d0000 	lui	t5,0x0
    22dc:	25ad02b0 	addiu	t5,t5,688
    22e0:	3c140000 	lui	s4,0x0
    22e4:	3c120000 	lui	s2,0x0
    22e8:	3c1e0000 	lui	s8,0x0
    22ec:	27de02a0 	addiu	s8,s8,672
    22f0:	26520018 	addiu	s2,s2,24
    22f4:	26940000 	addiu	s4,s4,0
    22f8:	afad0044 	sw	t5,68(sp)
    22fc:	0000b825 	move	s7,zero
    2300:	8fa20068 	lw	v0,104(sp)
    2304:	02602025 	move	a0,s3
    2308:	8c4c000c 	lw	t4,12(v0)
    230c:	0197a821 	addu	s5,t4,s7
    2310:	92ae0000 	lbu	t6,0(s5)
    2314:	a28e001c 	sb	t6,28(s4)
    2318:	96af0002 	lhu	t7,2(s5)
    231c:	31ca00ff 	andi	t2,t6,0xff
    2320:	000fc180 	sll	t8,t7,0x6
    2324:	3319ffff 	andi	t9,t8,0xffff
    2328:	032a001a 	div	zero,t9,t2
    232c:	a698001e 	sh	t8,30(s4)
    2330:	00005812 	mflo	t3
    2334:	a68b001e 	sh	t3,30(s4)
    2338:	96ad0004 	lhu	t5,4(s5)
    233c:	15400002 	bnez	t2,2348 <func_800DFBF8+0x570>
    2340:	00000000 	nop
    2344:	0007000d 	break	0x7
    2348:	2401ffff 	li	at,-1
    234c:	15410004 	bne	t2,at,2360 <func_800DFBF8+0x588>
    2350:	3c018000 	lui	at,0x8000
    2354:	17210002 	bne	t9,at,2360 <func_800DFBF8+0x588>
    2358:	00000000 	nop
    235c:	0006000d 	break	0x6
    2360:	a68d0024 	sh	t5,36(s4)
    2364:	96ac000a 	lhu	t4,10(s5)
    2368:	9685001e 	lhu	a1,30(s4)
    236c:	a68c0022 	sh	t4,34(s4)
    2370:	96ae0006 	lhu	t6,6(s5)
    2374:	240c0008 	li	t4,8
    2378:	00052840 	sll	a1,a1,0x1
    237c:	000e7980 	sll	t7,t6,0x6
    2380:	a68f002c 	sh	t7,44(s4)
    2384:	96b80008 	lhu	t8,8(s5)
    2388:	a2800030 	sb	zero,48(s4)
    238c:	a698002e 	sh	t8,46(s4)
    2390:	96b9000c 	lhu	t9,12(s5)
    2394:	a6990028 	sh	t9,40(s4)
    2398:	96aa000e 	lhu	t2,14(s5)
    239c:	a68a002a 	sh	t2,42(s4)
    23a0:	82ab0010 	lb	t3,16(s5)
    23a4:	a28b001d 	sb	t3,29(s4)
    23a8:	96ad0012 	lhu	t5,18(s5)
    23ac:	a28c0019 	sb	t4,25(s4)
    23b0:	0c000000 	jal	0 <func_800DDE20>
    23b4:	a68d0020 	sh	t5,32(s4)
    23b8:	96450006 	lhu	a1,6(s2)
    23bc:	ae420028 	sw	v0,40(s2)
    23c0:	02602025 	move	a0,s3
    23c4:	0c000000 	jal	0 <func_800DDE20>
    23c8:	00052840 	sll	a1,a1,0x1
    23cc:	92590288 	lbu	t9,648(s2)
    23d0:	96450006 	lhu	a1,6(s2)
    23d4:	240e0002 	li	t6,2
    23d8:	240f0001 	li	t7,1
    23dc:	332aff0f 	andi	t2,t9,0xff0f
    23e0:	ae42002c 	sw	v0,44(s2)
    23e4:	ae40001c 	sw	zero,28(s2)
    23e8:	ae400020 	sw	zero,32(s2)
    23ec:	a2400003 	sb	zero,3(s2)
    23f0:	a24e0002 	sb	t6,2(s2)
    23f4:	a24f0000 	sb	t7,0(s2)
    23f8:	ae5e0280 	sw	s8,640(s2)
    23fc:	354d0040 	ori	t5,t2,0x40
    2400:	ae450024 	sw	a1,36(s2)
    2404:	8fb80044 	lw	t8,68(sp)
    2408:	3c013f80 	lui	at,0x3f80
    240c:	a24d0288 	sb	t5,648(s2)
    2410:	31ac00f3 	andi	t4,t5,0xf3
    2414:	44813000 	mtc1	at,$f6
    2418:	a24c0288 	sb	t4,648(s2)
    241c:	8e440288 	lw	a0,648(s2)
    2420:	3c0100ff 	lui	at,0xff
    2424:	3421ffff 	ori	at,at,0xffff
    2428:	00057040 	sll	t6,a1,0x1
    242c:	01c17824 	and	t7,t6,at
    2430:	ae580290 	sw	t8,656(s2)
    2434:	01e4c026 	xor	t8,t7,a0
    2438:	92420004 	lbu	v0,4(s2)
    243c:	0018ca00 	sll	t9,t8,0x8
    2440:	8e4d0028 	lw	t5,40(s2)
    2444:	00195202 	srl	t2,t9,0x8
    2448:	240c0001 	li	t4,1
    244c:	24010001 	li	at,1
    2450:	01445826 	xor	t3,t2,a0
    2454:	ae4b0288 	sw	t3,648(s2)
    2458:	ae400298 	sw	zero,664(s2)
    245c:	ae4c02a0 	sw	t4,672(s2)
    2460:	00a01825 	move	v1,a1
    2464:	ae45029c 	sw	a1,668(s2)
    2468:	e6460284 	swc1	$f6,644(s2)
    246c:	10410035 	beq	v0,at,2544 <func_800DFBF8+0x76c>
    2470:	ae4d028c 	sw	t5,652(s2)
    2474:	340e8000 	li	t6,0x8000
    2478:	01c2001a 	div	zero,t6,v0
    247c:	00007812 	mflo	t7
    2480:	a64f000e 	sh	t7,14(s2)
    2484:	14400002 	bnez	v0,2490 <func_800DFBF8+0x6b8>
    2488:	00000000 	nop
    248c:	0007000d 	break	0x7
    2490:	2401ffff 	li	at,-1
    2494:	14410004 	bne	v0,at,24a8 <func_800DFBF8+0x6d0>
    2498:	3c018000 	lui	at,0x8000
    249c:	15c10002 	bne	t6,at,24a8 <func_800DFBF8+0x6d0>
    24a0:	00000000 	nop
    24a4:	0006000d 	break	0x6
    24a8:	02602025 	move	a0,s3
    24ac:	24050020 	li	a1,32
    24b0:	0c000000 	jal	0 <func_800DDE20>
    24b4:	00008825 	move	s1,zero
    24b8:	ae420030 	sw	v0,48(s2)
    24bc:	02602025 	move	a0,s3
    24c0:	0c000000 	jal	0 <func_800DDE20>
    24c4:	24050020 	li	a1,32
    24c8:	ae420034 	sw	v0,52(s2)
    24cc:	02602025 	move	a0,s3
    24d0:	0c000000 	jal	0 <func_800DDE20>
    24d4:	24050020 	li	a1,32
    24d8:	ae420038 	sw	v0,56(s2)
    24dc:	02602025 	move	a0,s3
    24e0:	0c000000 	jal	0 <func_800DDE20>
    24e4:	24050020 	li	a1,32
    24e8:	ae42003c 	sw	v0,60(s2)
    24ec:	86d82854 	lh	t8,10324(s6)
    24f0:	5b000015 	blezl	t8,2548 <func_800DFBF8+0x770>
    24f4:	86ad0014 	lh	t5,20(s5)
    24f8:	02408025 	move	s0,s2
    24fc:	02602025 	move	a0,s3
    2500:	0c000000 	jal	0 <func_800DDE20>
    2504:	24050340 	li	a1,832
    2508:	245901a0 	addiu	t9,v0,416
    250c:	ae020044 	sw	v0,68(s0)
    2510:	ae190048 	sw	t9,72(s0)
    2514:	02602025 	move	a0,s3
    2518:	0c000000 	jal	0 <func_800DDE20>
    251c:	24050340 	li	a1,832
    2520:	244a01a0 	addiu	t2,v0,416
    2524:	ae0200d0 	sw	v0,208(s0)
    2528:	ae0a00d4 	sw	t2,212(s0)
    252c:	86cb2854 	lh	t3,10324(s6)
    2530:	26310001 	addiu	s1,s1,1
    2534:	2610001c 	addiu	s0,s0,28
    2538:	022b082a 	slt	at,s1,t3
    253c:	5420fff0 	bnezl	at,2500 <func_800DFBF8+0x728>
    2540:	02602025 	move	a0,s3
    2544:	86ad0014 	lh	t5,20(s5)
    2548:	51a0000f 	beqzl	t5,2588 <func_800DFBF8+0x7b0>
    254c:	ae400270 	sw	zero,624(s2)
    2550:	02602025 	move	a0,s3
    2554:	0c000000 	jal	0 <func_800DDE20>
    2558:	24050040 	li	a1,64
    255c:	ae420278 	sw	v0,632(s2)
    2560:	02602025 	move	a0,s3
    2564:	0c000000 	jal	0 <func_800DDE20>
    2568:	24050010 	li	a1,16
    256c:	ae420270 	sw	v0,624(s2)
    2570:	86a50014 	lh	a1,20(s5)
    2574:	0c000000 	jal	0 <func_800DDE20>
    2578:	00402025 	move	a0,v0
    257c:	10000003 	b	258c <func_800DFBF8+0x7b4>
    2580:	86ac0016 	lh	t4,22(s5)
    2584:	ae400270 	sw	zero,624(s2)
    2588:	86ac0016 	lh	t4,22(s5)
    258c:	5180000f 	beqzl	t4,25cc <func_800DFBF8+0x7f4>
    2590:	ae400274 	sw	zero,628(s2)
    2594:	02602025 	move	a0,s3
    2598:	0c000000 	jal	0 <func_800DDE20>
    259c:	24050040 	li	a1,64
    25a0:	ae42027c 	sw	v0,636(s2)
    25a4:	02602025 	move	a0,s3
    25a8:	0c000000 	jal	0 <func_800DDE20>
    25ac:	24050010 	li	a1,16
    25b0:	ae420274 	sw	v0,628(s2)
    25b4:	86a50016 	lh	a1,22(s5)
    25b8:	0c000000 	jal	0 <func_800DDE20>
    25bc:	00402025 	move	a0,v0
    25c0:	10000003 	b	25d0 <func_800DFBF8+0x7f8>
    25c4:	8fa20074 	lw	v0,116(sp)
    25c8:	ae400274 	sw	zero,628(s2)
    25cc:	8fa20074 	lw	v0,116(sp)
    25d0:	8fae0044 	lw	t6,68(sp)
    25d4:	82d80001 	lb	t8,1(s6)
    25d8:	24420001 	addiu	v0,v0,1
    25dc:	25cf02c8 	addiu	t7,t6,712
    25e0:	0058082a 	slt	at,v0,t8
    25e4:	afaf0044 	sw	t7,68(sp)
    25e8:	afa20074 	sw	v0,116(sp)
    25ec:	269402c8 	addiu	s4,s4,712
    25f0:	26f70018 	addiu	s7,s7,24
    25f4:	265202c8 	addiu	s2,s2,712
    25f8:	1420ff41 	bnez	at,2300 <func_800DFBF8+0x528>
    25fc:	27de02c8 	addiu	s8,s8,712
    2600:	0c000000 	jal	0 <func_800DDE20>
    2604:	00008825 	move	s1,zero
    2608:	86d9285c 	lh	t9,10332(s6)
    260c:	3c100000 	lui	s0,0x0
    2610:	26103530 	addiu	s0,s0,13616
    2614:	5b20000c 	blezl	t9,2648 <func_800DFBF8+0x870>
    2618:	8fab0068 	lw	t3,104(sp)
    261c:	0c000000 	jal	0 <func_800DDE20>
    2620:	02202025 	move	a0,s1
    2624:	0c000000 	jal	0 <func_800DDE20>
    2628:	02002025 	move	a0,s0
    262c:	86ca285c 	lh	t2,10332(s6)
    2630:	26310001 	addiu	s1,s1,1
    2634:	26100160 	addiu	s0,s0,352
    2638:	022a082a 	slt	at,s1,t2
    263c:	1420fff7 	bnez	at,261c <func_800DFBF8+0x844>
    2640:	00000000 	nop
    2644:	8fab0068 	lw	t3,104(sp)
    2648:	8d640030 	lw	a0,48(t3)
    264c:	0c000000 	jal	0 <func_800DDE20>
    2650:	8d650034 	lw	a1,52(t3)
    2654:	0c000000 	jal	0 <func_800DDE20>
    2658:	8ec42894 	lw	a0,10388(s6)
    265c:	0c000000 	jal	0 <func_800DDE20>
    2660:	aec0176c 	sw	zero,5996(s6)
    2664:	0c000000 	jal	0 <func_800DDE20>
    2668:	00000000 	nop
    266c:	0c000000 	jal	0 <func_800DDE20>
    2670:	00000000 	nop
    2674:	240d1000 	li	t5,4096
    2678:	0c000000 	jal	0 <func_800DDE20>
    267c:	a6cd0004 	sh	t5,4(s6)
    2680:	0c000000 	jal	0 <func_800DDE20>
    2684:	24040001 	li	a0,1
    2688:	0c000000 	jal	0 <func_800DDE20>
    268c:	00408025 	move	s0,v0
    2690:	0c000000 	jal	0 <func_800DDE20>
    2694:	02002025 	move	a0,s0
    2698:	8fbf003c 	lw	ra,60(sp)
    269c:	8fb00018 	lw	s0,24(sp)
    26a0:	8fb1001c 	lw	s1,28(sp)
    26a4:	8fb20020 	lw	s2,32(sp)
    26a8:	8fb30024 	lw	s3,36(sp)
    26ac:	8fb40028 	lw	s4,40(sp)
    26b0:	8fb5002c 	lw	s5,44(sp)
    26b4:	8fb60030 	lw	s6,48(sp)
    26b8:	8fb70034 	lw	s7,52(sp)
    26bc:	8fbe0038 	lw	s8,56(sp)
    26c0:	03e00008 	jr	ra
    26c4:	27bd00a0 	addiu	sp,sp,160

000026c8 <func_800E04E8>:
    26c8:	3c030000 	lui	v1,0x0
    26cc:	8c632d5c 	lw	v1,11612(v1)
    26d0:	00a03025 	move	a2,a1
    26d4:	3c050000 	lui	a1,0x0
    26d8:	1860000e 	blez	v1,2714 <func_800E04E8+0x4c>
    26dc:	00001025 	move	v0,zero
    26e0:	24a50000 	addiu	a1,a1,0
    26e4:	84ae2d68 	lh	t6,11624(a1)
    26e8:	24420001 	addiu	v0,v0,1
    26ec:	0043082a 	slt	at,v0,v1
    26f0:	148e0006 	bne	a0,t6,270c <func_800E04E8+0x44>
    26f4:	00000000 	nop
    26f8:	84af2d6a 	lh	t7,11626(a1)
    26fc:	14cf0003 	bne	a2,t7,270c <func_800E04E8+0x44>
    2700:	00000000 	nop
    2704:	03e00008 	jr	ra
    2708:	8ca22d60 	lw	v0,11616(a1)
    270c:	1420fff5 	bnez	at,26e4 <func_800E04E8+0x1c>
    2710:	24a5000c 	addiu	a1,a1,12
    2714:	00001025 	move	v0,zero
    2718:	03e00008 	jr	ra
    271c:	00000000 	nop

00002720 <func_800E0540>:
    2720:	27bdffe0 	addiu	sp,sp,-32
    2724:	3c0e0000 	lui	t6,0x0
    2728:	8dce2d5c 	lw	t6,11612(t6)
    272c:	afa40020 	sw	a0,32(sp)
    2730:	afbf0014 	sw	ra,20(sp)
    2734:	afa50024 	sw	a1,36(sp)
    2738:	3c040000 	lui	a0,0x0
    273c:	afa60028 	sw	a2,40(sp)
    2740:	24842d50 	addiu	a0,a0,11600
    2744:	00c02825 	move	a1,a2
    2748:	0c000000 	jal	0 <func_800DDE20>
    274c:	afae0018 	sw	t6,24(sp)
    2750:	8faf0018 	lw	t7,24(sp)
    2754:	3c190000 	lui	t9,0x0
    2758:	27390000 	addiu	t9,t9,0
    275c:	000fc080 	sll	t8,t7,0x2
    2760:	030fc023 	subu	t8,t8,t7
    2764:	0018c080 	sll	t8,t8,0x2
    2768:	03191821 	addu	v1,t8,t9
    276c:	14400003 	bnez	v0,277c <func_800E0540+0x5c>
    2770:	ac622d60 	sw	v0,11616(v1)
    2774:	10000007 	b	2794 <func_800E0540+0x74>
    2778:	00001025 	move	v0,zero
    277c:	8fa80020 	lw	t0,32(sp)
    2780:	8fa90024 	lw	t1,36(sp)
    2784:	8faa0028 	lw	t2,40(sp)
    2788:	a4682d68 	sh	t0,11624(v1)
    278c:	a4692d6a 	sh	t1,11626(v1)
    2790:	ac6a2d64 	sw	t2,11620(v1)
    2794:	8fbf0014 	lw	ra,20(sp)
    2798:	27bd0020 	addiu	sp,sp,32
    279c:	03e00008 	jr	ra
    27a0:	00000000 	nop

000027a4 <func_800E05C4>:
    27a4:	27bdffe8 	addiu	sp,sp,-24
    27a8:	8fae0028 	lw	t6,40(sp)
    27ac:	afbf0014 	sw	ra,20(sp)
    27b0:	afa5001c 	sw	a1,28(sp)
    27b4:	afa60020 	sw	a2,32(sp)
    27b8:	15c00005 	bnez	t6,27d0 <func_800E05C4+0x2c>
    27bc:	afa70024 	sw	a3,36(sp)
    27c0:	0c000000 	jal	0 <func_800DDE20>
    27c4:	00000000 	nop
    27c8:	10000004 	b	27dc <func_800E05C4+0x38>
    27cc:	00401825 	move	v1,v0
    27d0:	0c000000 	jal	0 <func_800DDE20>
    27d4:	00000000 	nop
    27d8:	00401825 	move	v1,v0
    27dc:	10400008 	beqz	v0,2800 <func_800E05C4+0x5c>
    27e0:	8faf001c 	lw	t7,28(sp)
    27e4:	a06f0002 	sb	t7,2(v1)
    27e8:	8fb80020 	lw	t8,32(sp)
    27ec:	8c620008 	lw	v0,8(v1)
    27f0:	ac78000c 	sw	t8,12(v1)
    27f4:	83b90027 	lb	t9,39(sp)
    27f8:	10000002 	b	2804 <func_800E05C4+0x60>
    27fc:	a0790001 	sb	t9,1(v1)
    2800:	00001025 	move	v0,zero
    2804:	8fbf0014 	lw	ra,20(sp)
    2808:	27bd0018 	addiu	sp,sp,24
    280c:	03e00008 	jr	ra
    2810:	00000000 	nop

00002814 <func_800E0634>:
    2814:	27bdffe8 	addiu	sp,sp,-24
    2818:	afa40018 	sw	a0,24(sp)
    281c:	afbf0014 	sw	ra,20(sp)
    2820:	afa5001c 	sw	a1,28(sp)
    2824:	3c040000 	lui	a0,0x0
    2828:	248429c0 	addiu	a0,a0,10688
    282c:	0c000000 	jal	0 <func_800DDE20>
    2830:	8fa50018 	lw	a1,24(sp)
    2834:	14400004 	bnez	v0,2848 <func_800E0634+0x34>
    2838:	00402825 	move	a1,v0
    283c:	3c010000 	lui	at,0x0
    2840:	10000005 	b	2858 <func_800E0634+0x44>
    2844:	ac202ee8 	sw	zero,12008(at)
    2848:	3c040000 	lui	a0,0x0
    284c:	24842ee0 	addiu	a0,a0,12000
    2850:	0c000000 	jal	0 <func_800DDE20>
    2854:	8fa60018 	lw	a2,24(sp)
    2858:	3c040000 	lui	a0,0x0
    285c:	248429c0 	addiu	a0,a0,10688
    2860:	0c000000 	jal	0 <func_800DDE20>
    2864:	8fa5001c 	lw	a1,28(sp)
    2868:	3c030000 	lui	v1,0x0
    286c:	24630000 	addiu	v1,v1,0
    2870:	14400003 	bnez	v0,2880 <func_800E0634+0x6c>
    2874:	00402825 	move	a1,v0
    2878:	10000007 	b	2898 <func_800E0634+0x84>
    287c:	ac60317c 	sw	zero,12668(v1)
    2880:	3c040000 	lui	a0,0x0
    2884:	24843174 	addiu	a0,a0,12660
    2888:	0c000000 	jal	0 <func_800DDE20>
    288c:	8fa6001c 	lw	a2,28(sp)
    2890:	3c030000 	lui	v1,0x0
    2894:	24630000 	addiu	v1,v1,0
    2898:	8fbf0014 	lw	ra,20(sp)
    289c:	ac603170 	sw	zero,12656(v1)
    28a0:	ac603404 	sw	zero,13316(v1)
    28a4:	03e00008 	jr	ra
    28a8:	27bd0018 	addiu	sp,sp,24

000028ac <func_800E06CC>:
    28ac:	27bdffb8 	addiu	sp,sp,-72
    28b0:	afb6002c 	sw	s6,44(sp)
    28b4:	afa40048 	sw	a0,72(sp)
    28b8:	3c040000 	lui	a0,0x0
    28bc:	3c160000 	lui	s6,0x0
    28c0:	26d60000 	addiu	s6,s6,0
    28c4:	24843174 	addiu	a0,a0,12660
    28c8:	afbf0034 	sw	ra,52(sp)
    28cc:	afb40024 	sw	s4,36(sp)
    28d0:	afb30020 	sw	s3,32(sp)
    28d4:	afb70030 	sw	s7,48(sp)
    28d8:	afb50028 	sw	s5,40(sp)
    28dc:	afb2001c 	sw	s2,28(sp)
    28e0:	afb10018 	sw	s1,24(sp)
    28e4:	afb00014 	sw	s0,20(sp)
    28e8:	0080a025 	move	s4,a0
    28ec:	8ed33178 	lw	s3,12664(s6)
    28f0:	0c000000 	jal	0 <func_800DDE20>
    28f4:	8fa50048 	lw	a1,72(sp)
    28f8:	14400013 	bnez	v0,2948 <func_800E06CC+0x9c>
    28fc:	afa2003c 	sw	v0,60(sp)
    2900:	3c0e0000 	lui	t6,0x0
    2904:	8dce3174 	lw	t6,12660(t6)
    2908:	3c100000 	lui	s0,0x0
    290c:	8e103178 	lw	s0,12664(s0)
    2910:	3c010000 	lui	at,0x0
    2914:	3c040000 	lui	a0,0x0
    2918:	24843174 	addiu	a0,a0,12660
    291c:	8fa50048 	lw	a1,72(sp)
    2920:	0c000000 	jal	0 <func_800DDE20>
    2924:	ac2e3178 	sw	t6,12664(at)
    2928:	14400005 	bnez	v0,2940 <func_800E06CC+0x94>
    292c:	afa2003c 	sw	v0,60(sp)
    2930:	3c010000 	lui	at,0x0
    2934:	ac303178 	sw	s0,12664(at)
    2938:	10000077 	b	2b18 <func_800E06CC+0x26c>
    293c:	00001025 	move	v0,zero
    2940:	3c130000 	lui	s3,0x0
    2944:	8e733174 	lw	s3,12660(s3)
    2948:	8ec7176c 	lw	a3,5996(s6)
    294c:	3c120000 	lui	s2,0x0
    2950:	8e523178 	lw	s2,12664(s2)
    2954:	2415ffff 	li	s5,-1
    2958:	18e00034 	blez	a3,2a2c <func_800E06CC+0x180>
    295c:	00008825 	move	s1,zero
    2960:	3c060000 	lui	a2,0x0
    2964:	24c60000 	addiu	a2,a2,0
    2968:	24170001 	li	s7,1
    296c:	8ccf0d78 	lw	t7,3448(a2)
    2970:	3c0e0000 	lui	t6,0x0
    2974:	25ce0000 	addiu	t6,t6,0
    2978:	15e00023 	bnez	t7,2a08 <func_800E06CC+0x15c>
    297c:	24c40d68 	addiu	a0,a2,3432
    2980:	8c980004 	lw	t8,4(a0)
    2984:	8c820008 	lw	v0,8(a0)
    2988:	3c0100ff 	lui	at,0xff
    298c:	8f190000 	lw	t9,0(t8)
    2990:	3421ffff 	ori	at,at,0xffff
    2994:	00401825 	move	v1,v0
    2998:	03214024 	and	t0,t9,at
    299c:	00482821 	addu	a1,v0,t0
    29a0:	24a5ffff 	addiu	a1,a1,-1
    29a4:	00b3082b 	sltu	at,a1,s3
    29a8:	10200009 	beqz	at,29d0 <func_800E06CC+0x124>
    29ac:	0053082b 	sltu	at,v0,s3
    29b0:	10200007 	beqz	at,29d0 <func_800E06CC+0x124>
    29b4:	00074880 	sll	t1,a3,0x2
    29b8:	01274821 	addu	t1,t1,a3
    29bc:	3c0a0000 	lui	t2,0x0
    29c0:	254a0000 	addiu	t2,t2,0
    29c4:	00094880 	sll	t1,t1,0x2
    29c8:	10000013 	b	2a18 <func_800E06CC+0x16c>
    29cc:	012a1021 	addu	v0,t1,t2
    29d0:	00b2082b 	sltu	at,a1,s2
    29d4:	14200009 	bnez	at,29fc <func_800E06CC+0x150>
    29d8:	0072082b 	sltu	at,v1,s2
    29dc:	14200007 	bnez	at,29fc <func_800E06CC+0x150>
    29e0:	00075880 	sll	t3,a3,0x2
    29e4:	01675821 	addu	t3,t3,a3
    29e8:	3c0c0000 	lui	t4,0x0
    29ec:	258c0000 	addiu	t4,t4,0
    29f0:	000b5880 	sll	t3,t3,0x2
    29f4:	10000008 	b	2a18 <func_800E06CC+0x16c>
    29f8:	016c1021 	addu	v0,t3,t4
    29fc:	ac970010 	sw	s7,16(a0)
    2a00:	3c070000 	lui	a3,0x0
    2a04:	8ce7176c 	lw	a3,5996(a3)
    2a08:	00076880 	sll	t5,a3,0x2
    2a0c:	01a76821 	addu	t5,t5,a3
    2a10:	000d6880 	sll	t5,t5,0x2
    2a14:	01ae1021 	addu	v0,t5,t6
    2a18:	24c60014 	addiu	a2,a2,20
    2a1c:	00c2082b 	sltu	at,a2,v0
    2a20:	5420ffd3 	bnezl	at,2970 <func_800E06CC+0xc4>
    2a24:	8ccf0d78 	lw	t7,3448(a2)
    2a28:	00008825 	move	s1,zero
    2a2c:	3c0f0000 	lui	t7,0x0
    2a30:	8def3404 	lw	t7,13316(t7)
    2a34:	3c100000 	lui	s0,0x0
    2a38:	24170001 	li	s7,1
    2a3c:	19e00023 	blez	t7,2acc <func_800E06CC+0x220>
    2a40:	26103174 	addiu	s0,s0,12660
    2a44:	2416ffff 	li	s6,-1
    2a48:	82180010 	lb	t8,16(s0)
    2a4c:	57000004 	bnezl	t8,2a60 <func_800E06CC+0x1b4>
    2a50:	8e030018 	lw	v1,24(s0)
    2a54:	10000019 	b	2abc <func_800E06CC+0x210>
    2a58:	8e820290 	lw	v0,656(s4)
    2a5c:	8e030018 	lw	v1,24(s0)
    2a60:	8e190020 	lw	t9,32(s0)
    2a64:	03232821 	addu	a1,t9,v1
    2a68:	24a5ffff 	addiu	a1,a1,-1
    2a6c:	00b3082b 	sltu	at,a1,s3
    2a70:	10200005 	beqz	at,2a88 <func_800E06CC+0x1dc>
    2a74:	0073082b 	sltu	at,v1,s3
    2a78:	50200004 	beqzl	at,2a8c <func_800E06CC+0x1e0>
    2a7c:	00b2082b 	sltu	at,a1,s2
    2a80:	1000000e 	b	2abc <func_800E06CC+0x210>
    2a84:	8e820290 	lw	v0,656(s4)
    2a88:	00b2082b 	sltu	at,a1,s2
    2a8c:	14200005 	bnez	at,2aa4 <func_800E06CC+0x1f8>
    2a90:	0072082b 	sltu	at,v1,s2
    2a94:	14200003 	bnez	at,2aa4 <func_800E06CC+0x1f8>
    2a98:	00000000 	nop
    2a9c:	10000007 	b	2abc <func_800E06CC+0x210>
    2aa0:	8e820290 	lw	v0,656(s4)
    2aa4:	0c000000 	jal	0 <func_800DDE20>
    2aa8:	26040010 	addiu	a0,s0,16
    2aac:	56b60003 	bnel	s5,s6,2abc <func_800E06CC+0x210>
    2ab0:	8e820290 	lw	v0,656(s4)
    2ab4:	0220a825 	move	s5,s1
    2ab8:	8e820290 	lw	v0,656(s4)
    2abc:	26310001 	addiu	s1,s1,1
    2ac0:	0222082a 	slt	at,s1,v0
    2ac4:	1420ffe0 	bnez	at,2a48 <func_800E06CC+0x19c>
    2ac8:	26100014 	addiu	s0,s0,20
    2acc:	2416ffff 	li	s6,-1
    2ad0:	16b60006 	bne	s5,s6,2aec <func_800E06CC+0x240>
    2ad4:	3c0b0000 	lui	t3,0x0
    2ad8:	3c080000 	lui	t0,0x0
    2adc:	8d153404 	lw	s5,13316(t0)
    2ae0:	3c010000 	lui	at,0x0
    2ae4:	26a90001 	addiu	t1,s5,1
    2ae8:	ac293404 	sw	t1,13316(at)
    2aec:	00155080 	sll	t2,s5,0x2
    2af0:	01555021 	addu	t2,t2,s5
    2af4:	000a5080 	sll	t2,t2,0x2
    2af8:	256b3174 	addiu	t3,t3,12660
    2afc:	014b1821 	addu	v1,t2,t3
    2b00:	8fac003c 	lw	t4,60(sp)
    2b04:	8fad0048 	lw	t5,72(sp)
    2b08:	a0770010 	sb	s7,16(v1)
    2b0c:	24620010 	addiu	v0,v1,16
    2b10:	ac6c0018 	sw	t4,24(v1)
    2b14:	ac6d0020 	sw	t5,32(v1)
    2b18:	8fbf0034 	lw	ra,52(sp)
    2b1c:	8fb00014 	lw	s0,20(sp)
    2b20:	8fb10018 	lw	s1,24(sp)
    2b24:	8fb2001c 	lw	s2,28(sp)
    2b28:	8fb30020 	lw	s3,32(sp)
    2b2c:	8fb40024 	lw	s4,36(sp)
    2b30:	8fb50028 	lw	s5,40(sp)
    2b34:	8fb6002c 	lw	s6,44(sp)
    2b38:	8fb70030 	lw	s7,48(sp)
    2b3c:	03e00008 	jr	ra
    2b40:	27bd0048 	addiu	sp,sp,72

00002b44 <func_800E0964>:
    2b44:	27bdffc8 	addiu	sp,sp,-56
    2b48:	afb5002c 	sw	s5,44(sp)
    2b4c:	3c150000 	lui	s5,0x0
    2b50:	26b50000 	addiu	s5,s5,0
    2b54:	afb30024 	sw	s3,36(sp)
    2b58:	8eae2844 	lw	t6,10308(s5)
    2b5c:	00059880 	sll	s3,a1,0x2
    2b60:	02659821 	addu	s3,s3,a1
    2b64:	00139880 	sll	s3,s3,0x2
    2b68:	afbf0034 	sw	ra,52(sp)
    2b6c:	afb60030 	sw	s6,48(sp)
    2b70:	afb40028 	sw	s4,40(sp)
    2b74:	afb20020 	sw	s2,32(sp)
    2b78:	afb1001c 	sw	s1,28(sp)
    2b7c:	afb00018 	sw	s0,24(sp)
    2b80:	01d31021 	addu	v0,t6,s3
    2b84:	904f0000 	lbu	t7,0(v0)
    2b88:	00809025 	move	s2,a0
    2b8c:	00a0a025 	move	s4,a1
    2b90:	19e0001d 	blez	t7,2c08 <func_800E0964+0xc4>
    2b94:	00008825 	move	s1,zero
    2b98:	2416007f 	li	s6,127
    2b9c:	02802025 	move	a0,s4
    2ba0:	0c000000 	jal	0 <func_800DDE20>
    2ba4:	02202825 	move	a1,s1
    2ba8:	10400010 	beqz	v0,2bec <func_800E0964+0xa8>
    2bac:	00408025 	move	s0,v0
    2bb0:	90580001 	lbu	t8,1(v0)
    2bb4:	02402025 	move	a0,s2
    2bb8:	53000004 	beqzl	t8,2bcc <func_800E0964+0x88>
    2bbc:	92190002 	lbu	t9,2(s0)
    2bc0:	0c000000 	jal	0 <func_800DDE20>
    2bc4:	8c450008 	lw	a1,8(v0)
    2bc8:	92190002 	lbu	t9,2(s0)
    2bcc:	02402025 	move	a0,s2
    2bd0:	52d90004 	beql	s6,t9,2be4 <func_800E0964+0xa0>
    2bd4:	02402025 	move	a0,s2
    2bd8:	0c000000 	jal	0 <func_800DDE20>
    2bdc:	8e050018 	lw	a1,24(s0)
    2be0:	02402025 	move	a0,s2
    2be4:	0c000000 	jal	0 <func_800DDE20>
    2be8:	8e050010 	lw	a1,16(s0)
    2bec:	8ea82844 	lw	t0,10308(s5)
    2bf0:	26310001 	addiu	s1,s1,1
    2bf4:	01131021 	addu	v0,t0,s3
    2bf8:	90490000 	lbu	t1,0(v0)
    2bfc:	0229082a 	slt	at,s1,t1
    2c00:	5420ffe7 	bnezl	at,2ba0 <func_800E0964+0x5c>
    2c04:	02802025 	move	a0,s4
    2c08:	904a0001 	lbu	t2,1(v0)
    2c0c:	00008025 	move	s0,zero
    2c10:	1940000e 	blez	t2,2c4c <func_800E0964+0x108>
    2c14:	02802025 	move	a0,s4
    2c18:	0c000000 	jal	0 <func_800DDE20>
    2c1c:	02002825 	move	a1,s0
    2c20:	10400003 	beqz	v0,2c30 <func_800E0964+0xec>
    2c24:	02402025 	move	a0,s2
    2c28:	0c000000 	jal	0 <func_800DDE20>
    2c2c:	8c450004 	lw	a1,4(v0)
    2c30:	8eab2844 	lw	t3,10308(s5)
    2c34:	26100001 	addiu	s0,s0,1
    2c38:	01731021 	addu	v0,t3,s3
    2c3c:	904c0001 	lbu	t4,1(v0)
    2c40:	020c082a 	slt	at,s0,t4
    2c44:	5420fff4 	bnezl	at,2c18 <func_800E0964+0xd4>
    2c48:	02802025 	move	a0,s4
    2c4c:	944d0004 	lhu	t5,4(v0)
    2c50:	00008025 	move	s0,zero
    2c54:	19a0000e 	blez	t5,2c90 <func_800E0964+0x14c>
    2c58:	02802025 	move	a0,s4
    2c5c:	0c000000 	jal	0 <func_800DDE20>
    2c60:	02002825 	move	a1,s0
    2c64:	10400003 	beqz	v0,2c74 <func_800E0964+0x130>
    2c68:	02402025 	move	a0,s2
    2c6c:	0c000000 	jal	0 <func_800DDE20>
    2c70:	8c450000 	lw	a1,0(v0)
    2c74:	8eae2844 	lw	t6,10308(s5)
    2c78:	26100001 	addiu	s0,s0,1
    2c7c:	01d37821 	addu	t7,t6,s3
    2c80:	95f80004 	lhu	t8,4(t7)
    2c84:	0218082a 	slt	at,s0,t8
    2c88:	5420fff4 	bnezl	at,2c5c <func_800E0964+0x118>
    2c8c:	02802025 	move	a0,s4
    2c90:	8fbf0034 	lw	ra,52(sp)
    2c94:	8fb00018 	lw	s0,24(sp)
    2c98:	8fb1001c 	lw	s1,28(sp)
    2c9c:	8fb20020 	lw	s2,32(sp)
    2ca0:	8fb30024 	lw	s3,36(sp)
    2ca4:	8fb40028 	lw	s4,40(sp)
    2ca8:	8fb5002c 	lw	s5,44(sp)
    2cac:	8fb60030 	lw	s6,48(sp)
    2cb0:	03e00008 	jr	ra
    2cb4:	27bd0038 	addiu	sp,sp,56

00002cb8 <func_800E0AD8>:
    2cb8:	27bdffd0 	addiu	sp,sp,-48
    2cbc:	afb50028 	sw	s5,40(sp)
    2cc0:	3c150000 	lui	s5,0x0
    2cc4:	26b50000 	addiu	s5,s5,0
    2cc8:	8eae2834 	lw	t6,10292(s5)
    2ccc:	afbf002c 	sw	ra,44(sp)
    2cd0:	afb40024 	sw	s4,36(sp)
    2cd4:	afb30020 	sw	s3,32(sp)
    2cd8:	afb2001c 	sw	s2,28(sp)
    2cdc:	afb10018 	sw	s1,24(sp)
    2ce0:	afb00014 	sw	s0,20(sp)
    2ce4:	85d40000 	lh	s4,0(t6)
    2ce8:	00809025 	move	s2,a0
    2cec:	00008025 	move	s0,zero
    2cf0:	1a80001f 	blez	s4,2d70 <func_800E0AD8+0xb8>
    2cf4:	00008825 	move	s1,zero
    2cf8:	241300ff 	li	s3,255
    2cfc:	8eaf2844 	lw	t7,10308(s5)
    2d00:	82450002 	lb	a1,2(s2)
    2d04:	01f11021 	addu	v0,t7,s1
    2d08:	90430002 	lbu	v1,2(v0)
    2d0c:	90440003 	lbu	a0,3(v0)
    2d10:	10730003 	beq	v1,s3,2d20 <func_800E0AD8+0x68>
    2d14:	00000000 	nop
    2d18:	50650007 	beql	v1,a1,2d38 <func_800E0AD8+0x80>
    2d1c:	24040001 	li	a0,1
    2d20:	10930003 	beq	a0,s3,2d30 <func_800E0AD8+0x78>
    2d24:	00000000 	nop
    2d28:	50850003 	beql	a0,a1,2d38 <func_800E0AD8+0x80>
    2d2c:	24040001 	li	a0,1
    2d30:	14a0000c 	bnez	a1,2d64 <func_800E0AD8+0xac>
    2d34:	24040001 	li	a0,1
    2d38:	24050002 	li	a1,2
    2d3c:	0c000000 	jal	0 <func_800DDE20>
    2d40:	02003025 	move	a2,s0
    2d44:	50400008 	beqzl	v0,2d68 <func_800E0AD8+0xb0>
    2d48:	26100001 	addiu	s0,s0,1
    2d4c:	0c000000 	jal	0 <func_800DDE20>
    2d50:	02002025 	move	a0,s0
    2d54:	10400003 	beqz	v0,2d64 <func_800E0AD8+0xac>
    2d58:	02402025 	move	a0,s2
    2d5c:	0c000000 	jal	0 <func_800DDE20>
    2d60:	02002825 	move	a1,s0
    2d64:	26100001 	addiu	s0,s0,1
    2d68:	1614ffe4 	bne	s0,s4,2cfc <func_800E0AD8+0x44>
    2d6c:	26310014 	addiu	s1,s1,20
    2d70:	8fbf002c 	lw	ra,44(sp)
    2d74:	8fb00014 	lw	s0,20(sp)
    2d78:	8fb10018 	lw	s1,24(sp)
    2d7c:	8fb2001c 	lw	s2,28(sp)
    2d80:	8fb30020 	lw	s3,32(sp)
    2d84:	8fb40024 	lw	s4,36(sp)
    2d88:	8fb50028 	lw	s5,40(sp)
    2d8c:	03e00008 	jr	ra
    2d90:	27bd0030 	addiu	sp,sp,48

00002d94 <func_800E0BB4>:
    2d94:	10a0000e 	beqz	a1,2dd0 <func_800E0BB4+0x3c>
    2d98:	00000000 	nop
    2d9c:	8c8e0008 	lw	t6,8(a0)
    2da0:	8caf0004 	lw	t7,4(a1)
    2da4:	15cf000a 	bne	t6,t7,2dd0 <func_800E0BB4+0x3c>
    2da8:	00000000 	nop
    2dac:	8c98000c 	lw	t8,12(a0)
    2db0:	90ab0000 	lbu	t3,0(a1)
    2db4:	acb80004 	sw	t8,4(a1)
    2db8:	80880001 	lb	t0,1(a0)
    2dbc:	316cfff3 	andi	t4,t3,0xfff3
    2dc0:	00084880 	sll	t1,t0,0x2
    2dc4:	312a000c 	andi	t2,t1,0xc
    2dc8:	014c6825 	or	t5,t2,t4
    2dcc:	a0ad0000 	sb	t5,0(a1)
    2dd0:	03e00008 	jr	ra
    2dd4:	00000000 	nop

00002dd8 <func_800E0BF8>:
    2dd8:	27bdffe8 	addiu	sp,sp,-24
    2ddc:	afa40018 	sw	a0,24(sp)
    2de0:	afbf0014 	sw	ra,20(sp)
    2de4:	3c040000 	lui	a0,0x0
    2de8:	24842ee0 	addiu	a0,a0,12000
    2dec:	0c000000 	jal	0 <func_800DDE20>
    2df0:	8fa50018 	lw	a1,24(sp)
    2df4:	14400003 	bnez	v0,2e04 <func_800E0BF8+0x2c>
    2df8:	00402025 	move	a0,v0
    2dfc:	10000014 	b	2e50 <func_800E0BF8+0x78>
    2e00:	00001025 	move	v0,zero
    2e04:	3c0e0000 	lui	t6,0x0
    2e08:	8dce3170 	lw	t6,12656(t6)
    2e0c:	3c190000 	lui	t9,0x0
    2e10:	27392ee0 	addiu	t9,t9,12000
    2e14:	000e7880 	sll	t7,t6,0x2
    2e18:	01ee7821 	addu	t7,t7,t6
    2e1c:	000f7880 	sll	t7,t7,0x2
    2e20:	25f80010 	addiu	t8,t7,16
    2e24:	03191021 	addu	v0,t8,t9
    2e28:	24080001 	li	t0,1
    2e2c:	a0480000 	sb	t0,0(v0)
    2e30:	ac440008 	sw	a0,8(v0)
    2e34:	8fa90018 	lw	t1,24(sp)
    2e38:	3c0a0000 	lui	t2,0x0
    2e3c:	3c010000 	lui	at,0x0
    2e40:	ac490010 	sw	t1,16(v0)
    2e44:	8d4a3170 	lw	t2,12656(t2)
    2e48:	254b0001 	addiu	t3,t2,1
    2e4c:	ac2b3170 	sw	t3,12656(at)
    2e50:	8fbf0014 	lw	ra,20(sp)
    2e54:	27bd0018 	addiu	sp,sp,24
    2e58:	03e00008 	jr	ra
    2e5c:	00000000 	nop

00002e60 <func_800E0C80>:
    2e60:	27bdffe8 	addiu	sp,sp,-24
    2e64:	afbf0014 	sw	ra,20(sp)
    2e68:	80820002 	lb	v0,2(a0)
    2e6c:	10a20005 	beq	a1,v0,2e84 <func_800E0C80+0x24>
    2e70:	00000000 	nop
    2e74:	10c20003 	beq	a2,v0,2e84 <func_800E0C80+0x24>
    2e78:	00000000 	nop
    2e7c:	54400004 	bnezl	v0,2e90 <func_800E0C80+0x30>
    2e80:	8fbf0014 	lw	ra,20(sp)
    2e84:	0c000000 	jal	0 <func_800DDE20>
    2e88:	00e02825 	move	a1,a3
    2e8c:	8fbf0014 	lw	ra,20(sp)
    2e90:	27bd0018 	addiu	sp,sp,24
    2e94:	03e00008 	jr	ra
    2e98:	00000000 	nop

00002e9c <func_800E0CBC>:
    2e9c:	27bdffc0 	addiu	sp,sp,-64
    2ea0:	afb5002c 	sw	s5,44(sp)
    2ea4:	3c150000 	lui	s5,0x0
    2ea8:	26b50000 	addiu	s5,s5,0
    2eac:	8eae2834 	lw	t6,10292(s5)
    2eb0:	afbf003c 	sw	ra,60(sp)
    2eb4:	afbe0038 	sw	s8,56(sp)
    2eb8:	afb70034 	sw	s7,52(sp)
    2ebc:	afb60030 	sw	s6,48(sp)
    2ec0:	afb40028 	sw	s4,40(sp)
    2ec4:	afb30024 	sw	s3,36(sp)
    2ec8:	afb20020 	sw	s2,32(sp)
    2ecc:	afb1001c 	sw	s1,28(sp)
    2ed0:	afb00018 	sw	s0,24(sp)
    2ed4:	85de0000 	lh	s8,0(t6)
    2ed8:	0000a025 	move	s4,zero
    2edc:	0000b025 	move	s6,zero
    2ee0:	1bc00036 	blez	s8,2fbc <func_800E0CBC+0x120>
    2ee4:	241700ff 	li	s7,255
    2ee8:	8eaf2844 	lw	t7,10308(s5)
    2eec:	24040001 	li	a0,1
    2ef0:	24050003 	li	a1,3
    2ef4:	01f61021 	addu	v0,t7,s6
    2ef8:	90520002 	lbu	s2,2(v0)
    2efc:	90530003 	lbu	s3,3(v0)
    2f00:	16570003 	bne	s2,s7,2f10 <func_800E0CBC+0x74>
    2f04:	00000000 	nop
    2f08:	5277002a 	beql	s3,s7,2fb4 <func_800E0CBC+0x118>
    2f0c:	26940001 	addiu	s4,s4,1
    2f10:	0c000000 	jal	0 <func_800DDE20>
    2f14:	02803025 	move	a2,s4
    2f18:	50400026 	beqzl	v0,2fb4 <func_800E0CBC+0x118>
    2f1c:	26940001 	addiu	s4,s4,1
    2f20:	0c000000 	jal	0 <func_800DDE20>
    2f24:	02802025 	move	a0,s4
    2f28:	50400022 	beqzl	v0,2fb4 <func_800E0CBC+0x118>
    2f2c:	26940001 	addiu	s4,s4,1
    2f30:	8eb83170 	lw	t8,12656(s5)
    2f34:	3c110000 	lui	s1,0x0
    2f38:	26312ef0 	addiu	s1,s1,12016
    2f3c:	1b00000d 	blez	t8,2f74 <func_800E0CBC+0xd8>
    2f40:	00008025 	move	s0,zero
    2f44:	02202025 	move	a0,s1
    2f48:	02402825 	move	a1,s2
    2f4c:	02603025 	move	a2,s3
    2f50:	0c000000 	jal	0 <func_800DDE20>
    2f54:	02803825 	move	a3,s4
    2f58:	8eb93170 	lw	t9,12656(s5)
    2f5c:	26100001 	addiu	s0,s0,1
    2f60:	26310014 	addiu	s1,s1,20
    2f64:	0219082a 	slt	at,s0,t9
    2f68:	5420fff7 	bnezl	at,2f48 <func_800E0CBC+0xac>
    2f6c:	02202025 	move	a0,s1
    2f70:	00008025 	move	s0,zero
    2f74:	8ea83404 	lw	t0,13316(s5)
    2f78:	3c110000 	lui	s1,0x0
    2f7c:	26313184 	addiu	s1,s1,12676
    2f80:	1900000b 	blez	t0,2fb0 <func_800E0CBC+0x114>
    2f84:	02202025 	move	a0,s1
    2f88:	02402825 	move	a1,s2
    2f8c:	02603025 	move	a2,s3
    2f90:	0c000000 	jal	0 <func_800DDE20>
    2f94:	02803825 	move	a3,s4
    2f98:	8ea93404 	lw	t1,13316(s5)
    2f9c:	26100001 	addiu	s0,s0,1
    2fa0:	26310014 	addiu	s1,s1,20
    2fa4:	0209082a 	slt	at,s0,t1
    2fa8:	5420fff7 	bnezl	at,2f88 <func_800E0CBC+0xec>
    2fac:	02202025 	move	a0,s1
    2fb0:	26940001 	addiu	s4,s4,1
    2fb4:	169effcc 	bne	s4,s8,2ee8 <func_800E0CBC+0x4c>
    2fb8:	26d60014 	addiu	s6,s6,20
    2fbc:	8fbf003c 	lw	ra,60(sp)
    2fc0:	8fb00018 	lw	s0,24(sp)
    2fc4:	8fb1001c 	lw	s1,28(sp)
    2fc8:	8fb20020 	lw	s2,32(sp)
    2fcc:	8fb30024 	lw	s3,36(sp)
    2fd0:	8fb40028 	lw	s4,40(sp)
    2fd4:	8fb5002c 	lw	s5,44(sp)
    2fd8:	8fb60030 	lw	s6,48(sp)
    2fdc:	8fb70034 	lw	s7,52(sp)
    2fe0:	8fbe0038 	lw	s8,56(sp)
    2fe4:	03e00008 	jr	ra
    2fe8:	27bd0040 	addiu	sp,sp,64

00002fec <func_800E0E0C>:
    2fec:	10a00015 	beqz	a1,3044 <func_800E0E0C+0x58>
    2ff0:	00000000 	nop
    2ff4:	8c830000 	lw	v1,0(a0)
    2ff8:	8ca70004 	lw	a3,4(a1)
    2ffc:	8c8e0008 	lw	t6,8(a0)
    3000:	00e3082b 	sltu	at,a3,v1
    3004:	1420000f 	bnez	at,3044 <func_800E0E0C+0x58>
    3008:	006e3021 	addu	a2,v1,t6
    300c:	00e6082b 	sltu	at,a3,a2
    3010:	1020000c 	beqz	at,3044 <func_800E0E0C+0x58>
    3014:	00000000 	nop
    3018:	8c980004 	lw	t8,4(a0)
    301c:	00e37823 	subu	t7,a3,v1
    3020:	90ad0000 	lbu	t5,0(a1)
    3024:	01f8c821 	addu	t9,t7,t8
    3028:	acb90004 	sw	t9,4(a1)
    302c:	908a000c 	lbu	t2,12(a0)
    3030:	31aefff3 	andi	t6,t5,0xfff3
    3034:	000a5880 	sll	t3,t2,0x2
    3038:	316c000c 	andi	t4,t3,0xc
    303c:	018e7825 	or	t7,t4,t6
    3040:	a0af0000 	sb	t7,0(a1)
    3044:	03e00008 	jr	ra
    3048:	00000000 	nop

0000304c <func_800E0E6C>:
    304c:	27bdffe8 	addiu	sp,sp,-24
    3050:	afbf0014 	sw	ra,20(sp)
    3054:	00802825 	move	a1,a0
    3058:	0c000000 	jal	0 <func_800DDE20>
    305c:	00002025 	move	a0,zero
    3060:	8fbf0014 	lw	ra,20(sp)
    3064:	27bd0018 	addiu	sp,sp,24
    3068:	03e00008 	jr	ra
    306c:	00000000 	nop

00003070 <func_800E0E90>:
    3070:	27bdffe8 	addiu	sp,sp,-24
    3074:	afbf0014 	sw	ra,20(sp)
    3078:	00802825 	move	a1,a0
    307c:	0c000000 	jal	0 <func_800DDE20>
    3080:	24040001 	li	a0,1
    3084:	8fbf0014 	lw	ra,20(sp)
    3088:	27bd0018 	addiu	sp,sp,24
    308c:	03e00008 	jr	ra
    3090:	00000000 	nop

00003094 <func_800E0EB4>:
    3094:	27bdff60 	addiu	sp,sp,-160
    3098:	afb70034 	sw	s7,52(sp)
    309c:	3c170000 	lui	s7,0x0
    30a0:	26f70000 	addiu	s7,s7,0
    30a4:	8eee2834 	lw	t6,10292(s7)
    30a8:	afbf003c 	sw	ra,60(sp)
    30ac:	afbe0038 	sw	s8,56(sp)
    30b0:	afb60030 	sw	s6,48(sp)
    30b4:	afb5002c 	sw	s5,44(sp)
    30b8:	afb40028 	sw	s4,40(sp)
    30bc:	afb30024 	sw	s3,36(sp)
    30c0:	afb20020 	sw	s2,32(sp)
    30c4:	afb1001c 	sw	s1,28(sp)
    30c8:	afb00018 	sw	s0,24(sp)
    30cc:	afa500a4 	sw	a1,164(sp)
    30d0:	85cf0000 	lh	t7,0(t6)
    30d4:	00808825 	move	s1,a0
    30d8:	8ef02838 	lw	s0,10296(s7)
    30dc:	24040002 	li	a0,2
    30e0:	8fa600a4 	lw	a2,164(sp)
    30e4:	24050002 	li	a1,2
    30e8:	0c000000 	jal	0 <func_800DDE20>
    30ec:	afaf0094 	sw	t7,148(sp)
    30f0:	10400081 	beqz	v0,32f8 <func_800E0EB4+0x264>
    30f4:	afa20078 	sw	v0,120(sp)
    30f8:	8fb800a4 	lw	t8,164(sp)
    30fc:	24010002 	li	at,2
    3100:	0000b025 	move	s6,zero
    3104:	0018c900 	sll	t9,t8,0x4
    3108:	02191021 	addu	v0,s0,t9
    310c:	8c480014 	lw	t0,20(v0)
    3110:	241e007f 	li	s8,127
    3114:	27b40078 	addiu	s4,sp,120
    3118:	afa80080 	sw	t0,128(sp)
    311c:	80490018 	lb	t1,24(v0)
    3120:	312300ff 	andi	v1,t1,0xff
    3124:	10610004 	beq	v1,at,3138 <func_800E0EB4+0xa4>
    3128:	a3a90084 	sb	t1,132(sp)
    312c:	24010003 	li	at,3
    3130:	54610005 	bnel	v1,at,3148 <func_800E0EB4+0xb4>
    3134:	afa0007c 	sw	zero,124(sp)
    3138:	8c4a0010 	lw	t2,16(v0)
    313c:	10000002 	b	3148 <func_800E0EB4+0xb4>
    3140:	afaa007c 	sw	t2,124(sp)
    3144:	afa0007c 	sw	zero,124(sp)
    3148:	12200007 	beqz	s1,3168 <func_800E0EB4+0xd4>
    314c:	24010001 	li	at,1
    3150:	16210005 	bne	s1,at,3168 <func_800E0EB4+0xd4>
    3154:	8fa2007c 	lw	v0,124(sp)
    3158:	8fab0078 	lw	t3,120(sp)
    315c:	afa20078 	sw	v0,120(sp)
    3160:	a3a00084 	sb	zero,132(sp)
    3164:	afab007c 	sw	t3,124(sp)
    3168:	8fac0094 	lw	t4,148(sp)
    316c:	0000a825 	move	s5,zero
    3170:	59800062 	blezl	t4,32fc <func_800E0EB4+0x268>
    3174:	8fbf003c 	lw	ra,60(sp)
    3178:	8eed2844 	lw	t5,10308(s7)
    317c:	240100ff 	li	at,255
    3180:	01b61021 	addu	v0,t5,s6
    3184:	90500002 	lbu	s0,2(v0)
    3188:	90510003 	lbu	s1,3(v0)
    318c:	16010003 	bne	s0,at,319c <func_800E0EB4+0x108>
    3190:	240100ff 	li	at,255
    3194:	52210054 	beql	s1,at,32e8 <func_800E0EB4+0x254>
    3198:	8fa90094 	lw	t1,148(sp)
    319c:	0c000000 	jal	0 <func_800DDE20>
    31a0:	02a02025 	move	a0,s5
    31a4:	1040004f 	beqz	v0,32e4 <func_800E0EB4+0x250>
    31a8:	24040001 	li	a0,1
    31ac:	24050002 	li	a1,2
    31b0:	0c000000 	jal	0 <func_800DDE20>
    31b4:	02a03025 	move	a2,s5
    31b8:	1040004a 	beqz	v0,32e4 <func_800E0EB4+0x250>
    31bc:	8fae00a4 	lw	t6,164(sp)
    31c0:	160e0005 	bne	s0,t6,31d8 <func_800E0EB4+0x144>
    31c4:	8faf00a4 	lw	t7,164(sp)
    31c8:	00008825 	move	s1,zero
    31cc:	00009025 	move	s2,zero
    31d0:	10000005 	b	31e8 <func_800E0EB4+0x154>
    31d4:	00009825 	move	s3,zero
    31d8:	162f0042 	bne	s1,t7,32e4 <func_800E0EB4+0x250>
    31dc:	00009025 	move	s2,zero
    31e0:	00008825 	move	s1,zero
    31e4:	00009825 	move	s3,zero
    31e8:	8ef82844 	lw	t8,10308(s7)
    31ec:	03161021 	addu	v0,t8,s6
    31f0:	90590000 	lbu	t9,0(v0)
    31f4:	1b20001b 	blez	t9,3264 <func_800E0EB4+0x1d0>
    31f8:	02a02025 	move	a0,s5
    31fc:	0c000000 	jal	0 <func_800DDE20>
    3200:	02202825 	move	a1,s1
    3204:	10400010 	beqz	v0,3248 <func_800E0EB4+0x1b4>
    3208:	00408025 	move	s0,v0
    320c:	90480001 	lbu	t0,1(v0)
    3210:	02802025 	move	a0,s4
    3214:	51000004 	beqzl	t0,3228 <func_800E0EB4+0x194>
    3218:	92090002 	lbu	t1,2(s0)
    321c:	0c000000 	jal	0 <func_800DDE20>
    3220:	8c450008 	lw	a1,8(v0)
    3224:	92090002 	lbu	t1,2(s0)
    3228:	02802025 	move	a0,s4
    322c:	53c90004 	beql	s8,t1,3240 <func_800E0EB4+0x1ac>
    3230:	02802025 	move	a0,s4
    3234:	0c000000 	jal	0 <func_800DDE20>
    3238:	8e050018 	lw	a1,24(s0)
    323c:	02802025 	move	a0,s4
    3240:	0c000000 	jal	0 <func_800DDE20>
    3244:	8e050010 	lw	a1,16(s0)
    3248:	8eea2844 	lw	t2,10308(s7)
    324c:	26310001 	addiu	s1,s1,1
    3250:	01561021 	addu	v0,t2,s6
    3254:	904b0000 	lbu	t3,0(v0)
    3258:	022b082a 	slt	at,s1,t3
    325c:	5420ffe7 	bnezl	at,31fc <func_800E0EB4+0x168>
    3260:	02a02025 	move	a0,s5
    3264:	904c0001 	lbu	t4,1(v0)
    3268:	1980000e 	blez	t4,32a4 <func_800E0EB4+0x210>
    326c:	02a02025 	move	a0,s5
    3270:	0c000000 	jal	0 <func_800DDE20>
    3274:	02402825 	move	a1,s2
    3278:	10400003 	beqz	v0,3288 <func_800E0EB4+0x1f4>
    327c:	02802025 	move	a0,s4
    3280:	0c000000 	jal	0 <func_800DDE20>
    3284:	8c450004 	lw	a1,4(v0)
    3288:	8eed2844 	lw	t5,10308(s7)
    328c:	26520001 	addiu	s2,s2,1
    3290:	01b61021 	addu	v0,t5,s6
    3294:	904e0001 	lbu	t6,1(v0)
    3298:	024e082a 	slt	at,s2,t6
    329c:	5420fff4 	bnezl	at,3270 <func_800E0EB4+0x1dc>
    32a0:	02a02025 	move	a0,s5
    32a4:	944f0004 	lhu	t7,4(v0)
    32a8:	19e0000e 	blez	t7,32e4 <func_800E0EB4+0x250>
    32ac:	02a02025 	move	a0,s5
    32b0:	0c000000 	jal	0 <func_800DDE20>
    32b4:	02602825 	move	a1,s3
    32b8:	10400003 	beqz	v0,32c8 <func_800E0EB4+0x234>
    32bc:	02802025 	move	a0,s4
    32c0:	0c000000 	jal	0 <func_800DDE20>
    32c4:	8c450000 	lw	a1,0(v0)
    32c8:	8ef82844 	lw	t8,10308(s7)
    32cc:	26730001 	addiu	s3,s3,1
    32d0:	0316c821 	addu	t9,t8,s6
    32d4:	97280004 	lhu	t0,4(t9)
    32d8:	0268082a 	slt	at,s3,t0
    32dc:	5420fff4 	bnezl	at,32b0 <func_800E0EB4+0x21c>
    32e0:	02a02025 	move	a0,s5
    32e4:	8fa90094 	lw	t1,148(sp)
    32e8:	26b50001 	addiu	s5,s5,1
    32ec:	26d60014 	addiu	s6,s6,20
    32f0:	56a9ffa2 	bnel	s5,t1,317c <func_800E0EB4+0xe8>
    32f4:	8eed2844 	lw	t5,10308(s7)
    32f8:	8fbf003c 	lw	ra,60(sp)
    32fc:	8fb00018 	lw	s0,24(sp)
    3300:	8fb1001c 	lw	s1,28(sp)
    3304:	8fb20020 	lw	s2,32(sp)
    3308:	8fb30024 	lw	s3,36(sp)
    330c:	8fb40028 	lw	s4,40(sp)
    3310:	8fb5002c 	lw	s5,44(sp)
    3314:	8fb60030 	lw	s6,48(sp)
    3318:	8fb70034 	lw	s7,52(sp)
    331c:	8fbe0038 	lw	s8,56(sp)
    3320:	03e00008 	jr	ra
    3324:	27bd00a0 	addiu	sp,sp,160

00003328 <func_800E1148>:
    3328:	3c0e0000 	lui	t6,0x0
    332c:	85ce2d32 	lh	t6,11570(t6)
    3330:	27bdffd8 	addiu	sp,sp,-40
    3334:	afb00018 	sw	s0,24(sp)
    3338:	2410ffff 	li	s0,-1
    333c:	afbf0024 	sw	ra,36(sp)
    3340:	afb20020 	sw	s2,32(sp)
    3344:	120e0003 	beq	s0,t6,3354 <func_800E1148+0x2c>
    3348:	afb1001c 	sw	s1,28(sp)
    334c:	0c000000 	jal	0 <func_800DDE20>
    3350:	01c02025 	move	a0,t6
    3354:	3c040000 	lui	a0,0x0
    3358:	84842d3e 	lh	a0,11582(a0)
    335c:	12040003 	beq	s0,a0,336c <func_800E1148+0x44>
    3360:	00000000 	nop
    3364:	0c000000 	jal	0 <func_800DDE20>
    3368:	00000000 	nop
    336c:	3c180000 	lui	t8,0x0
    3370:	8f182c40 	lw	t8,11328(t8)
    3374:	3c0f0000 	lui	t7,0x0
    3378:	25ef2c40 	addiu	t7,t7,11328
    337c:	01e09025 	move	s2,t7
    3380:	1300000a 	beqz	t8,33ac <func_800E1148+0x84>
    3384:	00008025 	move	s0,zero
    3388:	01e08825 	move	s1,t7
    338c:	0c000000 	jal	0 <func_800DDE20>
    3390:	8624001e 	lh	a0,30(s1)
    3394:	8e590000 	lw	t9,0(s2)
    3398:	26100001 	addiu	s0,s0,1
    339c:	2631000c 	addiu	s1,s1,12
    33a0:	0219082b 	sltu	at,s0,t9
    33a4:	1420fff9 	bnez	at,338c <func_800E1148+0x64>
    33a8:	00000000 	nop
    33ac:	8fbf0024 	lw	ra,36(sp)
    33b0:	8fb00018 	lw	s0,24(sp)
    33b4:	8fb1001c 	lw	s1,28(sp)
    33b8:	8fb20020 	lw	s2,32(sp)
    33bc:	03e00008 	jr	ra
    33c0:	27bd0028 	addiu	sp,sp,40
	...
