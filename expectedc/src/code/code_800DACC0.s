
build/src/code/code_800DACC0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <pad_800DACB0>:
	...

00000010 <func_800DACC0>:
      10:	00067080 	sll	t6,a2,0x2
      14:	01c67023 	subu	t6,t6,a2
      18:	000e7080 	sll	t6,t6,0x2
      1c:	01c67023 	subu	t6,t6,a2
      20:	000e70c0 	sll	t6,t6,0x3
      24:	01c67021 	addu	t6,t6,a2
      28:	3c0f0000 	lui	t7,0x0
      2c:	25ef0000 	addiu	t7,t7,0
      30:	000e70c0 	sll	t6,t6,0x3
      34:	01cf4021 	addu	t0,t6,t7
      38:	9118001c 	lbu	t8,28(t0)
      3c:	27bdffb0 	addiu	sp,sp,-80
      40:	afbf0014 	sw	ra,20(sp)
      44:	2b010002 	slti	at,t8,2
      48:	afa40050 	sw	a0,80(sp)
      4c:	14200065 	bnez	at,1e4 <func_800DACC0+0x1d4>
      50:	afa50054 	sw	a1,84(sp)
      54:	25070018 	addiu	a3,t0,24
      58:	90f90002 	lbu	t9,2(a3)
      5c:	000578c0 	sll	t7,a1,0x3
      60:	01e57823 	subu	t7,t7,a1
      64:	57200060 	bnezl	t9,1e8 <func_800DACC0+0x1d8>
      68:	25070018 	addiu	a3,t0,24
      6c:	90eb0003 	lbu	t3,3(a3)
      70:	000f7880 	sll	t7,t7,0x2
      74:	24050340 	li	a1,832
      78:	000b60c0 	sll	t4,t3,0x3
      7c:	018b6021 	addu	t4,t4,t3
      80:	000c6080 	sll	t4,t4,0x2
      84:	018b6023 	subu	t4,t4,t3
      88:	000c6080 	sll	t4,t4,0x2
      8c:	00ec6821 	addu	t5,a3,t4
      90:	01af3021 	addu	a2,t5,t7
      94:	8cc40044 	lw	a0,68(a2)
      98:	24c60040 	addiu	a2,a2,64
      9c:	afa6004c 	sw	a2,76(sp)
      a0:	afa80020 	sw	t0,32(sp)
      a4:	0c000000 	jal	0 <pad_800DACB0>
      a8:	afa7001c 	sw	a3,28(sp)
      ac:	8fa6004c 	lw	a2,76(sp)
      b0:	8fa7001c 	lw	a3,28(sp)
      b4:	8fa80020 	lw	t0,32(sp)
      b8:	84d80010 	lh	t8,16(a2)
      bc:	00002825 	move	a1,zero
      c0:	00002025 	move	a0,zero
      c4:	07010003 	bgez	t8,d4 <func_800DACC0+0xc4>
      c8:	0018c843 	sra	t9,t8,0x1
      cc:	27010001 	addiu	at,t8,1
      d0:	0001c843 	sra	t9,at,0x1
      d4:	5b200023 	blezl	t9,164 <func_800DACC0+0x154>
      d8:	84ce0012 	lh	t6,18(a2)
      dc:	00001025 	move	v0,zero
      e0:	8ccb0004 	lw	t3,4(a2)
      e4:	8ccf000c 	lw	t7,12(a2)
      e8:	8ced0028 	lw	t5,40(a3)
      ec:	00051840 	sll	v1,a1,0x1
      f0:	01636021 	addu	t4,t3,v1
      f4:	858e0000 	lh	t6,0(t4)
      f8:	000fc040 	sll	t8,t7,0x1
      fc:	01b8c821 	addu	t9,t5,t8
     100:	03225821 	addu	t3,t9,v0
     104:	a56e0000 	sh	t6,0(t3)
     108:	8ccc0008 	lw	t4,8(a2)
     10c:	8cd9000c 	lw	t9,12(a2)
     110:	8cf8002c 	lw	t8,44(a3)
     114:	01837821 	addu	t7,t4,v1
     118:	85ed0000 	lh	t5,0(t7)
     11c:	00197040 	sll	t6,t9,0x1
     120:	030e5821 	addu	t3,t8,t6
     124:	01626021 	addu	t4,t3,v0
     128:	a58d0000 	sh	t5,0(t4)
     12c:	84d90010 	lh	t9,16(a2)
     130:	90ef0004 	lbu	t7,4(a3)
     134:	24840001 	addiu	a0,a0,1
     138:	24420002 	addiu	v0,v0,2
     13c:	00af2821 	addu	a1,a1,t7
     140:	07210003 	bgez	t9,150 <func_800DACC0+0x140>
     144:	0019c043 	sra	t8,t9,0x1
     148:	27210001 	addiu	at,t9,1
     14c:	0001c043 	sra	t8,at,0x1
     150:	0098082a 	slt	at,a0,t8
     154:	5420ffe3 	bnezl	at,e4 <func_800DACC0+0xd4>
     158:	8ccb0004 	lw	t3,4(a2)
     15c:	00002025 	move	a0,zero
     160:	84ce0012 	lh	t6,18(a2)
     164:	05c10003 	bgez	t6,174 <func_800DACC0+0x164>
     168:	000e5843 	sra	t3,t6,0x1
     16c:	25c10001 	addiu	at,t6,1
     170:	00015843 	sra	t3,at,0x1
     174:	5960001c 	blezl	t3,1e8 <func_800DACC0+0x1d8>
     178:	25070018 	addiu	a3,t0,24
     17c:	00001025 	move	v0,zero
     180:	8ccd0004 	lw	t5,4(a2)
     184:	00051840 	sll	v1,a1,0x1
     188:	8cf90028 	lw	t9,40(a3)
     18c:	01a36021 	addu	t4,t5,v1
     190:	858f0000 	lh	t7,0(t4)
     194:	0322c021 	addu	t8,t9,v0
     198:	24840001 	addiu	a0,a0,1
     19c:	a70f0000 	sh	t7,0(t8)
     1a0:	8cce0008 	lw	t6,8(a2)
     1a4:	8cec002c 	lw	t4,44(a3)
     1a8:	01c35821 	addu	t3,t6,v1
     1ac:	856d0000 	lh	t5,0(t3)
     1b0:	0182c821 	addu	t9,t4,v0
     1b4:	24420002 	addiu	v0,v0,2
     1b8:	a72d0000 	sh	t5,0(t9)
     1bc:	84d80012 	lh	t8,18(a2)
     1c0:	90ef0004 	lbu	t7,4(a3)
     1c4:	00af2821 	addu	a1,a1,t7
     1c8:	07010003 	bgez	t8,1d8 <func_800DACC0+0x1c8>
     1cc:	00187043 	sra	t6,t8,0x1
     1d0:	27010001 	addiu	at,t8,1
     1d4:	00017043 	sra	t6,at,0x1
     1d8:	008e082a 	slt	at,a0,t6
     1dc:	5420ffe9 	bnezl	at,184 <func_800DACC0+0x174>
     1e0:	8ccd0004 	lw	t5,4(a2)
     1e4:	25070018 	addiu	a3,t0,24
     1e8:	90ef0004 	lbu	t7,4(a3)
     1ec:	8fb90050 	lw	t9,80(sp)
     1f0:	8fa90054 	lw	t1,84(sp)
     1f4:	90eb0003 	lbu	t3,3(a3)
     1f8:	032f001a 	div	zero,t9,t7
     1fc:	01200821 	move	at,t1
     200:	000948c0 	sll	t1,t1,0x3
     204:	01214823 	subu	t1,t1,at
     208:	000b60c0 	sll	t4,t3,0x3
     20c:	018b6021 	addu	t4,t4,t3
     210:	8ce4001c 	lw	a0,28(a3)
     214:	000c6080 	sll	t4,t4,0x2
     218:	8cee0024 	lw	t6,36(a3)
     21c:	018b6023 	subu	t4,t4,t3
     220:	000c6080 	sll	t4,t4,0x2
     224:	00001812 	mflo	v1
     228:	00ec6821 	addu	t5,a3,t4
     22c:	00094880 	sll	t1,t1,0x2
     230:	0083c021 	addu	t8,a0,v1
     234:	01a93021 	addu	a2,t5,t1
     238:	030e1023 	subu	v0,t8,t6
     23c:	24c60040 	addiu	a2,a2,64
     240:	15e00002 	bnez	t7,24c <func_800DACC0+0x23c>
     244:	00000000 	nop
     248:	0007000d 	break	0x7
     24c:	2401ffff 	li	at,-1
     250:	15e10004 	bne	t7,at,264 <func_800DACC0+0x254>
     254:	3c018000 	lui	at,0x8000
     258:	17210002 	bne	t9,at,264 <func_800DACC0+0x254>
     25c:	00000000 	nop
     260:	0006000d 	break	0x6
     264:	00627823 	subu	t7,v1,v0
     268:	0441000a 	bgez	v0,294 <func_800DACC0+0x284>
     26c:	00805025 	move	t2,a0
     270:	00035840 	sll	t3,v1,0x1
     274:	a4cb0010 	sh	t3,16(a2)
     278:	a4c00012 	sh	zero,18(a2)
     27c:	8cec001c 	lw	t4,28(a3)
     280:	accc000c 	sw	t4,12(a2)
     284:	8ced001c 	lw	t5,28(a3)
     288:	01a3c821 	addu	t9,t5,v1
     28c:	10000008 	b	2b0 <func_800DACC0+0x2a0>
     290:	acf9001c 	sw	t9,28(a3)
     294:	000fc040 	sll	t8,t7,0x1
     298:	00027040 	sll	t6,v0,0x1
     29c:	a4d80010 	sh	t8,16(a2)
     2a0:	a4ce0012 	sh	t6,18(a2)
     2a4:	8ceb001c 	lw	t3,28(a3)
     2a8:	accb000c 	sw	t3,12(a2)
     2ac:	ace2001c 	sw	v0,28(a3)
     2b0:	a4c30000 	sh	v1,0(a2)
     2b4:	8fac0050 	lw	t4,80(sp)
     2b8:	a4cc0002 	sh	t4,2(a2)
     2bc:	94e20014 	lhu	v0,20(a3)
     2c0:	8fb80050 	lw	t8,80(sp)
     2c4:	5040002e 	beqzl	v0,380 <func_800DACC0+0x370>
     2c8:	8fbf0014 	lw	ra,20(sp)
     2cc:	8ce50024 	lw	a1,36(a3)
     2d0:	004a2021 	addu	a0,v0,t2
     2d4:	0085082a 	slt	at,a0,a1
     2d8:	54200003 	bnezl	at,2e8 <func_800DACC0+0x2d8>
     2dc:	90ee0004 	lbu	t6,4(a3)
     2e0:	00852023 	subu	a0,a0,a1
     2e4:	90ee0004 	lbu	t6,4(a3)
     2e8:	90ed0003 	lbu	t5,3(a3)
     2ec:	030e001a 	div	zero,t8,t6
     2f0:	000dc8c0 	sll	t9,t5,0x3
     2f4:	032dc821 	addu	t9,t9,t5
     2f8:	0019c880 	sll	t9,t9,0x2
     2fc:	00001812 	mflo	v1
     300:	032dc823 	subu	t9,t9,t5
     304:	0019c880 	sll	t9,t9,0x2
     308:	00835821 	addu	t3,a0,v1
     30c:	00f97821 	addu	t7,a3,t9
     310:	01651023 	subu	v0,t3,a1
     314:	01e93021 	addu	a2,t7,t1
     318:	24c60158 	addiu	a2,a2,344
     31c:	15c00002 	bnez	t6,328 <func_800DACC0+0x318>
     320:	00000000 	nop
     324:	0007000d 	break	0x7
     328:	2401ffff 	li	at,-1
     32c:	15c10004 	bne	t6,at,340 <func_800DACC0+0x330>
     330:	3c018000 	lui	at,0x8000
     334:	17010002 	bne	t8,at,340 <func_800DACC0+0x330>
     338:	00000000 	nop
     33c:	0006000d 	break	0x6
     340:	00626823 	subu	t5,v1,v0
     344:	04410006 	bgez	v0,360 <func_800DACC0+0x350>
     348:	00027840 	sll	t7,v0,0x1
     34c:	00036040 	sll	t4,v1,0x1
     350:	a4cc0010 	sh	t4,16(a2)
     354:	a4c00012 	sh	zero,18(a2)
     358:	10000005 	b	370 <func_800DACC0+0x360>
     35c:	acc4000c 	sw	a0,12(a2)
     360:	000dc840 	sll	t9,t5,0x1
     364:	a4d90010 	sh	t9,16(a2)
     368:	a4cf0012 	sh	t7,18(a2)
     36c:	acc4000c 	sw	a0,12(a2)
     370:	a4c30000 	sh	v1,0(a2)
     374:	8fb80050 	lw	t8,80(sp)
     378:	a4d80002 	sh	t8,2(a2)
     37c:	8fbf0014 	lw	ra,20(sp)
     380:	27bd0050 	addiu	sp,sp,80
     384:	03e00008 	jr	ra
     388:	00000000 	nop

0000038c <func_800DB03C>:
     38c:	3c070000 	lui	a3,0x0
     390:	24e70000 	addiu	a3,a3,0
     394:	8ce32894 	lw	v1,10388(a3)
     398:	00002825 	move	a1,zero
     39c:	00640019 	multu	v1,a0
     3a0:	00001012 	mflo	v0
     3a4:	00023140 	sll	a2,v0,0x5
     3a8:	18600018 	blez	v1,40c <func_800DB03C+0x80>
     3ac:	00001825 	move	v1,zero
     3b0:	8cee352c 	lw	t6,13612(a3)
     3b4:	8cef0014 	lw	t7,20(a3)
     3b8:	006e1021 	addu	v0,v1,t6
     3bc:	8c5800c0 	lw	t8,192(v0)
     3c0:	244200c0 	addiu	v0,v0,192
     3c4:	00cf2021 	addu	a0,a2,t7
     3c8:	0018cfc2 	srl	t9,t8,0x1f
     3cc:	53200006 	beqzl	t9,3e8 <func_800DB03C+0x5c>
     3d0:	908a0000 	lbu	t2,0(a0)
     3d4:	90480000 	lbu	t0,0(v0)
     3d8:	3109ffbf 	andi	t1,t0,0xffbf
     3dc:	10000004 	b	3f0 <func_800DB03C+0x64>
     3e0:	a0490000 	sb	t1,0(v0)
     3e4:	908a0000 	lbu	t2,0(a0)
     3e8:	314bff7f 	andi	t3,t2,0xff7f
     3ec:	a08b0000 	sb	t3,0(a0)
     3f0:	a0400006 	sb	zero,6(v0)
     3f4:	8cec2894 	lw	t4,10388(a3)
     3f8:	24a50001 	addiu	a1,a1,1
     3fc:	246300e0 	addiu	v1,v1,224
     400:	00ac082a 	slt	at,a1,t4
     404:	1420ffea 	bnez	at,3b0 <func_800DB03C+0x24>
     408:	24c60020 	addiu	a2,a2,32
     40c:	03e00008 	jr	ra
     410:	00000000 	nop

00000414 <func_800DB0C4>:
     414:	27bdffc0 	addiu	sp,sp,-64
     418:	afb5002c 	sw	s5,44(sp)
     41c:	3c150000 	lui	s5,0x0
     420:	26b50000 	addiu	s5,s5,0
     424:	afb40028 	sw	s4,40(sp)
     428:	86b42854 	lh	s4,10324(s5)
     42c:	afbe0038 	sw	s8,56(sp)
     430:	afb60030 	sw	s6,48(sp)
     434:	afb1001c 	sw	s1,28(sp)
     438:	00c08825 	move	s1,a2
     43c:	00e0b025 	move	s6,a3
     440:	afbf003c 	sw	ra,60(sp)
     444:	afb70034 	sw	s7,52(sp)
     448:	afb30024 	sw	s3,36(sp)
     44c:	afb20020 	sw	s2,32(sp)
     450:	afb00018 	sw	s0,24(sp)
     454:	afa40040 	sw	a0,64(sp)
     458:	afa50044 	sw	a1,68(sp)
     45c:	1a80000a 	blez	s4,488 <func_800DB0C4+0x74>
     460:	0080f025 	move	s8,a0
     464:	2690ffff 	addiu	s0,s4,-1
     468:	0c000000 	jal	0 <pad_800DACB0>
     46c:	02002025 	move	a0,s0
     470:	86ae2854 	lh	t6,10324(s5)
     474:	0c000000 	jal	0 <pad_800DACB0>
     478:	01d42023 	subu	a0,t6,s4
     47c:	1e00fff9 	bgtz	s0,464 <func_800DB0C4+0x50>
     480:	0200a025 	move	s4,s0
     484:	86b42854 	lh	s4,10324(s5)
     488:	0220b825 	move	s7,s1
     48c:	1a80003c 	blez	s4,580 <func_800DB0C4+0x16c>
     490:	aea00010 	sw	zero,16(s5)
     494:	24010001 	li	at,1
     498:	86b22854 	lh	s2,10324(s5)
     49c:	16810003 	bne	s4,at,4ac <func_800DB0C4+0x98>
     4a0:	00008825 	move	s1,zero
     4a4:	10000019 	b	50c <func_800DB0C4+0xf8>
     4a8:	02c09825 	move	s3,s6
     4ac:	02d4001a 	div	zero,s6,s4
     4b0:	16800002 	bnez	s4,4bc <func_800DB0C4+0xa8>
     4b4:	00000000 	nop
     4b8:	0007000d 	break	0x7
     4bc:	2401ffff 	li	at,-1
     4c0:	16810004 	bne	s4,at,4d4 <func_800DB0C4+0xc0>
     4c4:	3c018000 	lui	at,0x8000
     4c8:	16c10002 	bne	s6,at,4d4 <func_800DB0C4+0xc0>
     4cc:	00000000 	nop
     4d0:	0006000d 	break	0x6
     4d4:	86a32858 	lh	v1,10328(s5)
     4d8:	00001012 	mflo	v0
     4dc:	0043082a 	slt	at,v0,v1
     4e0:	54200004 	bnezl	at,4f4 <func_800DB0C4+0xe0>
     4e4:	86a3285a 	lh	v1,10330(s5)
     4e8:	10000008 	b	50c <func_800DB0C4+0xf8>
     4ec:	00609825 	move	s3,v1
     4f0:	86a3285a 	lh	v1,10330(s5)
     4f4:	0062082a 	slt	at,v1,v0
     4f8:	54200004 	bnezl	at,50c <func_800DB0C4+0xf8>
     4fc:	86b32856 	lh	s3,10326(s5)
     500:	10000002 	b	50c <func_800DB0C4+0xf8>
     504:	00609825 	move	s3,v1
     508:	86b32856 	lh	s3,10326(s5)
     50c:	82a20001 	lb	v0,1(s5)
     510:	58400011 	blezl	v0,558 <func_800DB0C4+0x144>
     514:	02e02025 	move	a0,s7
     518:	3c100000 	lui	s0,0x0
     51c:	26100000 	addiu	s0,s0,0
     520:	920f0019 	lbu	t7,25(s0)
     524:	02602025 	move	a0,s3
     528:	02542823 	subu	a1,s2,s4
     52c:	51e00006 	beqzl	t7,548 <func_800DB0C4+0x134>
     530:	26310001 	addiu	s1,s1,1
     534:	0c000000 	jal	0 <pad_800DACB0>
     538:	02203025 	move	a2,s1
     53c:	86b22854 	lh	s2,10324(s5)
     540:	82a20001 	lb	v0,1(s5)
     544:	26310001 	addiu	s1,s1,1
     548:	0222082a 	slt	at,s1,v0
     54c:	1420fff4 	bnez	at,520 <func_800DB0C4+0x10c>
     550:	261002c8 	addiu	s0,s0,712
     554:	02e02025 	move	a0,s7
     558:	02602825 	move	a1,s3
     55c:	03c03025 	move	a2,s8
     560:	0c000000 	jal	0 <pad_800DACB0>
     564:	02543823 	subu	a3,s2,s4
     568:	2694ffff 	addiu	s4,s4,-1
     56c:	0013c080 	sll	t8,s3,0x2
     570:	0040f025 	move	s8,v0
     574:	02d3b023 	subu	s6,s6,s3
     578:	1e80ffc6 	bgtz	s4,494 <func_800DB0C4+0x80>
     57c:	02f8b821 	addu	s7,s7,t8
     580:	82b90001 	lb	t9,1(s5)
     584:	3c100000 	lui	s0,0x0
     588:	26100000 	addiu	s0,s0,0
     58c:	1b20000e 	blez	t9,5c8 <func_800DB0C4+0x1b4>
     590:	00008825 	move	s1,zero
     594:	9202001a 	lbu	v0,26(s0)
     598:	10400002 	beqz	v0,5a4 <func_800DB0C4+0x190>
     59c:	2448ffff 	addiu	t0,v0,-1
     5a0:	a208001a 	sb	t0,26(s0)
     5a4:	9209001b 	lbu	t1,27(s0)
     5a8:	26310001 	addiu	s1,s1,1
     5ac:	261002c8 	addiu	s0,s0,712
     5b0:	392a0001 	xori	t2,t1,0x1
     5b4:	a20afd53 	sb	t2,-685(s0)
     5b8:	82ab0001 	lb	t3,1(s5)
     5bc:	022b082a 	slt	at,s1,t3
     5c0:	5420fff5 	bnezl	at,598 <func_800DB0C4+0x184>
     5c4:	9202001a 	lbu	v0,26(s0)
     5c8:	8fac0040 	lw	t4,64(sp)
     5cc:	8faf0044 	lw	t7,68(sp)
     5d0:	03c01025 	move	v0,s8
     5d4:	03cc6823 	subu	t5,s8,t4
     5d8:	000d70c3 	sra	t6,t5,0x3
     5dc:	adee0000 	sw	t6,0(t7)
     5e0:	8fbf003c 	lw	ra,60(sp)
     5e4:	8fbe0038 	lw	s8,56(sp)
     5e8:	8fb70034 	lw	s7,52(sp)
     5ec:	8fb60030 	lw	s6,48(sp)
     5f0:	8fb5002c 	lw	s5,44(sp)
     5f4:	8fb40028 	lw	s4,40(sp)
     5f8:	8fb30024 	lw	s3,36(sp)
     5fc:	8fb20020 	lw	s2,32(sp)
     600:	8fb1001c 	lw	s1,28(sp)
     604:	8fb00018 	lw	s0,24(sp)
     608:	03e00008 	jr	ra
     60c:	27bd0040 	addiu	sp,sp,64

00000610 <func_800DB2C0>:
     610:	3c060000 	lui	a2,0x0
     614:	24c60000 	addiu	a2,a2,0
     618:	84ce2854 	lh	t6,10324(a2)
     61c:	24820001 	addiu	v0,a0,1
     620:	004e082a 	slt	at,v0,t6
     624:	10200014 	beqz	at,678 <func_800DB2C0+0x68>
     628:	00000000 	nop
     62c:	8ccf2894 	lw	t7,10388(a2)
     630:	8cc90014 	lw	t1,20(a2)
     634:	01e20019 	multu	t7,v0
     638:	0000c012 	mflo	t8
     63c:	0305c821 	addu	t9,t8,a1
     640:	00194140 	sll	t0,t9,0x5
     644:	01091821 	addu	v1,t0,t1
     648:	8c6a0000 	lw	t2,0(v1)
     64c:	000a6040 	sll	t4,t2,0x1
     650:	05800009 	bltz	t4,678 <func_800DB2C0+0x68>
     654:	00000000 	nop
     658:	906d0000 	lbu	t5,0(v1)
     65c:	24420001 	addiu	v0,v0,1
     660:	31aeff7f 	andi	t6,t5,0xff7f
     664:	a06e0000 	sb	t6,0(v1)
     668:	84cf2854 	lh	t7,10324(a2)
     66c:	004f082a 	slt	at,v0,t7
     670:	5420ffef 	bnezl	at,630 <func_800DB2C0+0x20>
     674:	8ccf2894 	lw	t7,10388(a2)
     678:	03e00008 	jr	ra
     67c:	00000000 	nop

00000680 <func_800DB330>:
     680:	27bdffd8 	addiu	sp,sp,-40
     684:	afbf001c 	sw	ra,28(sp)
     688:	afa5002c 	sw	a1,44(sp)
     68c:	afa60030 	sw	a2,48(sp)
     690:	90af0003 	lbu	t7,3(a1)
     694:	87a80032 	lh	t0,50(sp)
     698:	00a07025 	move	t6,a1
     69c:	000fc0c0 	sll	t8,t7,0x3
     6a0:	030fc021 	addu	t8,t8,t7
     6a4:	0018c080 	sll	t8,t8,0x2
     6a8:	030fc023 	subu	t8,t8,t7
     6ac:	000848c0 	sll	t1,t0,0x3
     6b0:	0018c080 	sll	t8,t8,0x2
     6b4:	01284823 	subu	t1,t1,t0
     6b8:	00094880 	sll	t1,t1,0x2
     6bc:	00b8c821 	addu	t9,a1,t8
     6c0:	03291821 	addu	v1,t9,t1
     6c4:	24630040 	addiu	v1,v1,64
     6c8:	84670010 	lh	a3,16(v1)
     6cc:	9466000e 	lhu	a2,14(v1)
     6d0:	afa30024 	sw	v1,36(sp)
     6d4:	afae0010 	sw	t6,16(sp)
     6d8:	0c000000 	jal	0 <pad_800DACB0>
     6dc:	240503e0 	li	a1,992
     6e0:	8fa30024 	lw	v1,36(sp)
     6e4:	00402025 	move	a0,v0
     6e8:	8faa002c 	lw	t2,44(sp)
     6ec:	84670012 	lh	a3,18(v1)
     6f0:	50e00009 	beqzl	a3,718 <func_800DB330+0x98>
     6f4:	8fbf001c 	lw	ra,28(sp)
     6f8:	84650010 	lh	a1,16(v1)
     6fc:	afaa0010 	sw	t2,16(sp)
     700:	00003025 	move	a2,zero
     704:	24a503e0 	addiu	a1,a1,992
     708:	0c000000 	jal	0 <pad_800DACB0>
     70c:	30a5ffff 	andi	a1,a1,0xffff
     710:	00402025 	move	a0,v0
     714:	8fbf001c 	lw	ra,28(sp)
     718:	27bd0028 	addiu	sp,sp,40
     71c:	00801025 	move	v0,a0
     720:	03e00008 	jr	ra
     724:	00000000 	nop

00000728 <func_800DB3D8>:
     728:	27bdffd8 	addiu	sp,sp,-40
     72c:	afbf001c 	sw	ra,28(sp)
     730:	afa5002c 	sw	a1,44(sp)
     734:	afa60030 	sw	a2,48(sp)
     738:	90af0003 	lbu	t7,3(a1)
     73c:	87a80032 	lh	t0,50(sp)
     740:	00a07025 	move	t6,a1
     744:	000fc0c0 	sll	t8,t7,0x3
     748:	030fc021 	addu	t8,t8,t7
     74c:	0018c080 	sll	t8,t8,0x2
     750:	030fc023 	subu	t8,t8,t7
     754:	000848c0 	sll	t1,t0,0x3
     758:	0018c080 	sll	t8,t8,0x2
     75c:	01284823 	subu	t1,t1,t0
     760:	00094880 	sll	t1,t1,0x2
     764:	00b8c821 	addu	t9,a1,t8
     768:	03291821 	addu	v1,t9,t1
     76c:	24630040 	addiu	v1,v1,64
     770:	84670010 	lh	a3,16(v1)
     774:	9466000e 	lhu	a2,14(v1)
     778:	afa30024 	sw	v1,36(sp)
     77c:	afae0010 	sw	t6,16(sp)
     780:	0c000000 	jal	0 <pad_800DACB0>
     784:	240503e0 	li	a1,992
     788:	8fa30024 	lw	v1,36(sp)
     78c:	00402025 	move	a0,v0
     790:	8faa002c 	lw	t2,44(sp)
     794:	84670012 	lh	a3,18(v1)
     798:	50e00009 	beqzl	a3,7c0 <func_800DB3D8+0x98>
     79c:	8fbf001c 	lw	ra,28(sp)
     7a0:	84650010 	lh	a1,16(v1)
     7a4:	afaa0010 	sw	t2,16(sp)
     7a8:	00003025 	move	a2,zero
     7ac:	24a503e0 	addiu	a1,a1,992
     7b0:	0c000000 	jal	0 <pad_800DACB0>
     7b4:	30a5ffff 	andi	a1,a1,0xffff
     7b8:	00402025 	move	a0,v0
     7bc:	8fbf001c 	lw	ra,28(sp)
     7c0:	27bd0028 	addiu	sp,sp,40
     7c4:	00801025 	move	v0,a0
     7c8:	03e00008 	jr	ra
     7cc:	00000000 	nop

000007d0 <func_800DB480>:
     7d0:	3c0e0a00 	lui	t6,0xa00
     7d4:	3c0f0720 	lui	t7,0x720
     7d8:	35ef01a0 	ori	t7,t7,0x1a0
     7dc:	35ce0c80 	ori	t6,t6,0xc80
     7e0:	ac8e0000 	sw	t6,0(a0)
     7e4:	ac8f0004 	sw	t7,4(a0)
     7e8:	84b80010 	lh	t8,16(a1)
     7ec:	3c080c1a 	lui	t0,0xc1a
     7f0:	24860008 	addiu	a2,a0,8
     7f4:	3c0a0e20 	lui	t2,0xe20
     7f8:	3319ffff 	andi	t9,t8,0xffff
     7fc:	03284825 	or	t1,t9,t0
     800:	354a0c80 	ori	t2,t2,0xc80
     804:	acca0004 	sw	t2,4(a2)
     808:	acc90000 	sw	t1,0(a2)
     80c:	84ab0012 	lh	t3,18(a1)
     810:	24c70008 	addiu	a3,a2,8
     814:	3c0e0720 	lui	t6,0x720
     818:	316cffff 	andi	t4,t3,0xffff
     81c:	01886825 	or	t5,t4,t0
     820:	35ce0e20 	ori	t6,t6,0xe20
     824:	acee0004 	sw	t6,4(a3)
     828:	aced0000 	sw	t5,0(a3)
     82c:	03e00008 	jr	ra
     830:	24e20008 	addiu	v0,a3,8

00000834 <func_800DB4E4>:
     834:	27bdffd0 	addiu	sp,sp,-48
     838:	afbf0024 	sw	ra,36(sp)
     83c:	afb00020 	sw	s0,32(sp)
     840:	afa50034 	sw	a1,52(sp)
     844:	afa7003c 	sw	a3,60(sp)
     848:	90ce0003 	lbu	t6,3(a2)
     84c:	87b9003e 	lh	t9,62(sp)
     850:	2401fff0 	li	at,-16
     854:	000e78c0 	sll	t7,t6,0x3
     858:	01ee7821 	addu	t7,t7,t6
     85c:	000f7880 	sll	t7,t7,0x2
     860:	01ee7823 	subu	t7,t7,t6
     864:	001960c0 	sll	t4,t9,0x3
     868:	000f7880 	sll	t7,t7,0x2
     86c:	01996023 	subu	t4,t4,t9
     870:	000c6080 	sll	t4,t4,0x2
     874:	00cfc021 	addu	t8,a2,t7
     878:	030c1821 	addu	v1,t8,t4
     87c:	8c62004c 	lw	v0,76(v1)
     880:	846d0050 	lh	t5,80(v1)
     884:	00c08025 	move	s0,a2
     888:	30480007 	andi	t0,v0,0x7
     88c:	00084040 	sll	t0,t0,0x1
     890:	00084400 	sll	t0,t0,0x10
     894:	00084403 	sra	t0,t0,0x10
     898:	010d4821 	addu	t1,t0,t5
     89c:	2529000f 	addiu	t1,t1,15
     8a0:	3129fff0 	andi	t1,t1,0xfff0
     8a4:	00094c00 	sll	t1,t1,0x10
     8a8:	24630040 	addiu	v1,v1,64
     8ac:	00094c03 	sra	t1,t1,0x10
     8b0:	a7a90028 	sh	t1,40(sp)
     8b4:	afa3002c 	sw	v1,44(sp)
     8b8:	a7a8002a 	sh	t0,42(sp)
     8bc:	afb00010 	sw	s0,16(sp)
     8c0:	240701a0 	li	a3,416
     8c4:	240503e0 	li	a1,992
     8c8:	05010003 	bgez	t0,8d8 <func_800DB4E4+0xa4>
     8cc:	00087043 	sra	t6,t0,0x1
     8d0:	25010001 	addiu	at,t0,1
     8d4:	00017043 	sra	t6,at,0x1
     8d8:	004e3023 	subu	a2,v0,t6
     8dc:	0c000000 	jal	0 <pad_800DACB0>
     8e0:	30c6ffff 	andi	a2,a2,0xffff
     8e4:	8fa3002c 	lw	v1,44(sp)
     8e8:	87a90028 	lh	t1,40(sp)
     8ec:	87a8002a 	lh	t0,42(sp)
     8f0:	846f0012 	lh	t7,18(v1)
     8f4:	252503e0 	addiu	a1,t1,992
     8f8:	00402025 	move	a0,v0
     8fc:	11e00008 	beqz	t7,920 <func_800DB4E4+0xec>
     900:	30a5ffff 	andi	a1,a1,0xffff
     904:	241901a0 	li	t9,416
     908:	03293823 	subu	a3,t9,t1
     90c:	00003025 	move	a2,zero
     910:	afb00010 	sw	s0,16(sp)
     914:	0c000000 	jal	0 <pad_800DACB0>
     918:	a7a8002a 	sh	t0,42(sp)
     91c:	87a8002a 	lh	t0,42(sp)
     920:	251803e0 	addiu	t8,t0,992
     924:	3c0a0800 	lui	t2,0x800
     928:	330cffff 	andi	t4,t8,0xffff
     92c:	018a6825 	or	t5,t4,t2
     930:	ac4d0000 	sw	t5,0(v0)
     934:	8fa50034 	lw	a1,52(sp)
     938:	3c010c80 	lui	at,0xc80
     93c:	3c0b0500 	lui	t3,0x500
     940:	00052840 	sll	a1,a1,0x1
     944:	30a5ffff 	andi	a1,a1,0xffff
     948:	00a17025 	or	t6,a1,at
     94c:	ac4e0004 	sw	t6,4(v0)
     950:	92190000 	lbu	t9,0(s0)
     954:	960e000e 	lhu	t6,14(s0)
     958:	24460008 	addiu	a2,v0,8
     95c:	0019c400 	sll	t8,t9,0x10
     960:	030b6025 	or	t4,t8,t3
     964:	018e7825 	or	t7,t4,t6
     968:	accf0000 	sw	t7,0(a2)
     96c:	8e190030 	lw	t9,48(s0)
     970:	25180580 	addiu	t8,t0,1408
     974:	24c70008 	addiu	a3,a2,8
     978:	330dffff 	andi	t5,t8,0xffff
     97c:	3c010e20 	lui	at,0xe20
     980:	acd90004 	sw	t9,4(a2)
     984:	00a17025 	or	t6,a1,at
     988:	01aa6025 	or	t4,t5,t2
     98c:	acec0000 	sw	t4,0(a3)
     990:	acee0004 	sw	t6,4(a3)
     994:	92190000 	lbu	t9,0(s0)
     998:	960e000e 	lhu	t6,14(s0)
     99c:	24e90008 	addiu	t1,a3,8
     9a0:	0019c400 	sll	t8,t9,0x10
     9a4:	030b6825 	or	t5,t8,t3
     9a8:	01ae7825 	or	t7,t5,t6
     9ac:	ad2f0000 	sw	t7,0(t1)
     9b0:	8e190034 	lw	t9,52(s0)
     9b4:	25220008 	addiu	v0,t1,8
     9b8:	ad390004 	sw	t9,4(t1)
     9bc:	8fbf0024 	lw	ra,36(sp)
     9c0:	8fb00020 	lw	s0,32(sp)
     9c4:	27bd0030 	addiu	sp,sp,48
     9c8:	03e00008 	jr	ra
     9cc:	00000000 	nop

000009d0 <func_800DB680>:
     9d0:	27bdffd0 	addiu	sp,sp,-48
     9d4:	afbf002c 	sw	ra,44(sp)
     9d8:	afb20028 	sw	s2,40(sp)
     9dc:	afb10024 	sw	s1,36(sp)
     9e0:	afb00020 	sw	s0,32(sp)
     9e4:	afa60038 	sw	a2,56(sp)
     9e8:	90ae0003 	lbu	t6,3(a1)
     9ec:	87b9003a 	lh	t9,58(sp)
     9f0:	3c090800 	lui	t1,0x800
     9f4:	000e78c0 	sll	t7,t6,0x3
     9f8:	01ee7821 	addu	t7,t7,t6
     9fc:	000f7880 	sll	t7,t7,0x2
     a00:	01ee7823 	subu	t7,t7,t6
     a04:	001940c0 	sll	t0,t9,0x3
     a08:	000f7880 	sll	t7,t7,0x2
     a0c:	01194023 	subu	t0,t0,t9
     a10:	00084080 	sll	t0,t0,0x2
     a14:	00afc021 	addu	t8,a1,t7
     a18:	35290c80 	ori	t1,t1,0xc80
     a1c:	03088821 	addu	s1,t8,t0
     a20:	ac890000 	sw	t1,0(a0)
     a24:	962a0058 	lhu	t2,88(s1)
     a28:	3c010720 	lui	at,0x720
     a2c:	24830008 	addiu	v1,a0,8
     a30:	000a5840 	sll	t3,t2,0x1
     a34:	316cffff 	andi	t4,t3,0xffff
     a38:	01816825 	or	t5,t4,at
     a3c:	ac8d0004 	sw	t5,4(a0)
     a40:	90af0000 	lbu	t7,0(a1)
     a44:	96290056 	lhu	t1,86(s1)
     a48:	3c010500 	lui	at,0x500
     a4c:	000fcc00 	sll	t9,t7,0x10
     a50:	0321c025 	or	t8,t9,at
     a54:	03095025 	or	t2,t8,t1
     a58:	ac6a0000 	sw	t2,0(v1)
     a5c:	8cab0038 	lw	t3,56(a1)
     a60:	00a09025 	move	s2,a1
     a64:	26310040 	addiu	s1,s1,64
     a68:	ac6b0004 	sw	t3,4(v1)
     a6c:	8e4c0028 	lw	t4,40(s2)
     a70:	86270010 	lh	a3,16(s1)
     a74:	9626000e 	lhu	a2,14(s1)
     a78:	24640008 	addiu	a0,v1,8
     a7c:	24050720 	li	a1,1824
     a80:	0c000000 	jal	0 <pad_800DACB0>
     a84:	afac0010 	sw	t4,16(sp)
     a88:	86270012 	lh	a3,18(s1)
     a8c:	00408025 	move	s0,v0
     a90:	00402025 	move	a0,v0
     a94:	50e0000a 	beqzl	a3,ac0 <func_800DB680+0xf0>
     a98:	3c0e0800 	lui	t6,0x800
     a9c:	86250010 	lh	a1,16(s1)
     aa0:	8e4d0028 	lw	t5,40(s2)
     aa4:	00003025 	move	a2,zero
     aa8:	24a50720 	addiu	a1,a1,1824
     aac:	30a5ffff 	andi	a1,a1,0xffff
     ab0:	0c000000 	jal	0 <pad_800DACB0>
     ab4:	afad0010 	sw	t5,16(sp)
     ab8:	00408025 	move	s0,v0
     abc:	3c0e0800 	lui	t6,0x800
     ac0:	35ce0e20 	ori	t6,t6,0xe20
     ac4:	02001025 	move	v0,s0
     ac8:	ac4e0000 	sw	t6,0(v0)
     acc:	962f0018 	lhu	t7,24(s1)
     ad0:	3c010720 	lui	at,0x720
     ad4:	26030008 	addiu	v1,s0,8
     ad8:	000fc840 	sll	t9,t7,0x1
     adc:	3328ffff 	andi	t0,t9,0xffff
     ae0:	0101c025 	or	t8,t0,at
     ae4:	ac580004 	sw	t8,4(v0)
     ae8:	924a0000 	lbu	t2,0(s2)
     aec:	962e0016 	lhu	t6,22(s1)
     af0:	3c010500 	lui	at,0x500
     af4:	000a5c00 	sll	t3,t2,0x10
     af8:	01616025 	or	t4,t3,at
     afc:	018e7825 	or	t7,t4,t6
     b00:	ac6f0000 	sw	t7,0(v1)
     b04:	8e59003c 	lw	t9,60(s2)
     b08:	24640008 	addiu	a0,v1,8
     b0c:	24050720 	li	a1,1824
     b10:	ac790004 	sw	t9,4(v1)
     b14:	8e48002c 	lw	t0,44(s2)
     b18:	86270010 	lh	a3,16(s1)
     b1c:	9626000e 	lhu	a2,14(s1)
     b20:	0c000000 	jal	0 <pad_800DACB0>
     b24:	afa80010 	sw	t0,16(sp)
     b28:	86270012 	lh	a3,18(s1)
     b2c:	00408025 	move	s0,v0
     b30:	00402025 	move	a0,v0
     b34:	50e0000a 	beqzl	a3,b60 <func_800DB680+0x190>
     b38:	8fbf002c 	lw	ra,44(sp)
     b3c:	86250010 	lh	a1,16(s1)
     b40:	8e58002c 	lw	t8,44(s2)
     b44:	00003025 	move	a2,zero
     b48:	24a50720 	addiu	a1,a1,1824
     b4c:	30a5ffff 	andi	a1,a1,0xffff
     b50:	0c000000 	jal	0 <pad_800DACB0>
     b54:	afb80010 	sw	t8,16(sp)
     b58:	00408025 	move	s0,v0
     b5c:	8fbf002c 	lw	ra,44(sp)
     b60:	02001025 	move	v0,s0
     b64:	8fb00020 	lw	s0,32(sp)
     b68:	8fb10024 	lw	s1,36(sp)
     b6c:	8fb20028 	lw	s2,40(sp)
     b70:	03e00008 	jr	ra
     b74:	27bd0030 	addiu	sp,sp,48

00000b78 <func_800DB828>:
     b78:	27bdffd0 	addiu	sp,sp,-48
     b7c:	afbf0024 	sw	ra,36(sp)
     b80:	afb00020 	sw	s0,32(sp)
     b84:	afa50034 	sw	a1,52(sp)
     b88:	afa7003c 	sw	a3,60(sp)
     b8c:	90ce0003 	lbu	t6,3(a2)
     b90:	87b9003e 	lh	t9,62(sp)
     b94:	00c08025 	move	s0,a2
     b98:	000e78c0 	sll	t7,t6,0x3
     b9c:	01ee7821 	addu	t7,t7,t6
     ba0:	000f7880 	sll	t7,t7,0x2
     ba4:	01ee7823 	subu	t7,t7,t6
     ba8:	001968c0 	sll	t5,t9,0x3
     bac:	000f7880 	sll	t7,t7,0x2
     bb0:	01b96823 	subu	t5,t5,t9
     bb4:	000d6880 	sll	t5,t5,0x2
     bb8:	00cfc021 	addu	t8,a2,t7
     bbc:	030d1821 	addu	v1,t8,t5
     bc0:	94620058 	lhu	v0,88(v1)
     bc4:	00a07825 	move	t7,a1
     bc8:	8c68004c 	lw	t0,76(v1)
     bcc:	000273c0 	sll	t6,v0,0xf
     bd0:	01c5001a 	div	zero,t6,a1
     bd4:	0000c812 	mflo	t9
     bd8:	a4790054 	sh	t9,84(v1)
     bdc:	8fb80034 	lw	t8,52(sp)
     be0:	31090007 	andi	t1,t0,0x7
     be4:	00094840 	sll	t1,t1,0x1
     be8:	00186bc0 	sll	t5,t8,0xf
     bec:	01a2001a 	div	zero,t5,v0
     bf0:	00094c00 	sll	t1,t1,0x10
     bf4:	00094c03 	sra	t1,t1,0x10
     bf8:	24630040 	addiu	v1,v1,64
     bfc:	15e00002 	bnez	t7,c08 <func_800DB828+0x90>
     c00:	00000000 	nop
     c04:	0007000d 	break	0x7
     c08:	2401ffff 	li	at,-1
     c0c:	15e10004 	bne	t7,at,c20 <func_800DB828+0xa8>
     c10:	3c018000 	lui	at,0x8000
     c14:	15c10002 	bne	t6,at,c20 <func_800DB828+0xa8>
     c18:	00000000 	nop
     c1c:	0006000d 	break	0x6
     c20:	846f0010 	lh	t7,16(v1)
     c24:	14400002 	bnez	v0,c30 <func_800DB828+0xb8>
     c28:	00000000 	nop
     c2c:	0007000d 	break	0x7
     c30:	2401ffff 	li	at,-1
     c34:	14410004 	bne	v0,at,c48 <func_800DB828+0xd0>
     c38:	3c018000 	lui	at,0x8000
     c3c:	15a10002 	bne	t5,at,c48 <func_800DB828+0xd0>
     c40:	00000000 	nop
     c44:	0006000d 	break	0x6
     c48:	012f5021 	addu	t2,t1,t7
     c4c:	00007012 	mflo	t6
     c50:	254a000f 	addiu	t2,t2,15
     c54:	a46e0016 	sh	t6,22(v1)
     c58:	314afff0 	andi	t2,t2,0xfff0
     c5c:	2401fff0 	li	at,-16
     c60:	000a5400 	sll	t2,t2,0x10
     c64:	000a5403 	sra	t2,t2,0x10
     c68:	a7aa0028 	sh	t2,40(sp)
     c6c:	a7a9002a 	sh	t1,42(sp)
     c70:	afa3002c 	sw	v1,44(sp)
     c74:	afb00010 	sw	s0,16(sp)
     c78:	240503e0 	li	a1,992
     c7c:	05210003 	bgez	t1,c8c <func_800DB828+0x114>
     c80:	0009c843 	sra	t9,t1,0x1
     c84:	25210001 	addiu	at,t1,1
     c88:	0001c843 	sra	t9,at,0x1
     c8c:	01193023 	subu	a2,t0,t9
     c90:	30c6ffff 	andi	a2,a2,0xffff
     c94:	0c000000 	jal	0 <pad_800DACB0>
     c98:	240701a0 	li	a3,416
     c9c:	8fa3002c 	lw	v1,44(sp)
     ca0:	87aa0028 	lh	t2,40(sp)
     ca4:	87a9002a 	lh	t1,42(sp)
     ca8:	84780012 	lh	t8,18(v1)
     cac:	254503e0 	addiu	a1,t2,992
     cb0:	00402025 	move	a0,v0
     cb4:	1300000a 	beqz	t8,ce0 <func_800DB828+0x168>
     cb8:	30a5ffff 	andi	a1,a1,0xffff
     cbc:	240d01a0 	li	t5,416
     cc0:	01aa3823 	subu	a3,t5,t2
     cc4:	00003025 	move	a2,zero
     cc8:	afb00010 	sw	s0,16(sp)
     ccc:	afa3002c 	sw	v1,44(sp)
     cd0:	0c000000 	jal	0 <pad_800DACB0>
     cd4:	a7a9002a 	sh	t1,42(sp)
     cd8:	8fa3002c 	lw	v1,44(sp)
     cdc:	87a9002a 	lh	t1,42(sp)
     ce0:	252e03e0 	addiu	t6,t1,992
     ce4:	3c0b0800 	lui	t3,0x800
     ce8:	31cfffff 	andi	t7,t6,0xffff
     cec:	01ebc825 	or	t9,t7,t3
     cf0:	ac590000 	sw	t9,0(v0)
     cf4:	8fa60034 	lw	a2,52(sp)
     cf8:	3c010c80 	lui	at,0xc80
     cfc:	3c0c0500 	lui	t4,0x500
     d00:	00063040 	sll	a2,a2,0x1
     d04:	30c6ffff 	andi	a2,a2,0xffff
     d08:	00c1c025 	or	t8,a2,at
     d0c:	ac580004 	sw	t8,4(v0)
     d10:	920e0000 	lbu	t6,0(s0)
     d14:	946d0014 	lhu	t5,20(v1)
     d18:	24470008 	addiu	a3,v0,8
     d1c:	000e7c00 	sll	t7,t6,0x10
     d20:	01ecc825 	or	t9,t7,t4
     d24:	032d7025 	or	t6,t9,t5
     d28:	acee0000 	sw	t6,0(a3)
     d2c:	8e0f0030 	lw	t7,48(s0)
     d30:	25380580 	addiu	t8,t1,1408
     d34:	24e80008 	addiu	t0,a3,8
     d38:	3319ffff 	andi	t9,t8,0xffff
     d3c:	3c010e20 	lui	at,0xe20
     d40:	acef0004 	sw	t7,4(a3)
     d44:	00c17025 	or	t6,a2,at
     d48:	032b6825 	or	t5,t9,t3
     d4c:	ad0d0000 	sw	t5,0(t0)
     d50:	ad0e0004 	sw	t6,4(t0)
     d54:	92180000 	lbu	t8,0(s0)
     d58:	946f0014 	lhu	t7,20(v1)
     d5c:	250a0008 	addiu	t2,t0,8
     d60:	0018cc00 	sll	t9,t8,0x10
     d64:	032c6825 	or	t5,t9,t4
     d68:	01afc025 	or	t8,t5,t7
     d6c:	ad580000 	sw	t8,0(t2)
     d70:	8e190034 	lw	t9,52(s0)
     d74:	25420008 	addiu	v0,t2,8
     d78:	ad590004 	sw	t9,4(t2)
     d7c:	8fbf0024 	lw	ra,36(sp)
     d80:	8fb00020 	lw	s0,32(sp)
     d84:	27bd0030 	addiu	sp,sp,48
     d88:	03e00008 	jr	ra
     d8c:	00000000 	nop

00000d90 <func_800DBA40>:
     d90:	8cce0270 	lw	t6,624(a2)
     d94:	00801025 	move	v0,a0
     d98:	30afffff 	andi	t7,a1,0xffff
     d9c:	11c00010 	beqz	t6,de0 <func_800DBA40+0x50>
     da0:	3c010702 	lui	at,0x702
     da4:	01e1c025 	or	t8,t7,at
     da8:	ac580000 	sw	t8,0(v0)
     dac:	8cd90270 	lw	t9,624(a2)
     db0:	3c010700 	lui	at,0x700
     db4:	24840008 	addiu	a0,a0,8
     db8:	ac590004 	sw	t9,4(v0)
     dbc:	90c90000 	lbu	t1,0(a2)
     dc0:	00801825 	move	v1,a0
     dc4:	24840008 	addiu	a0,a0,8
     dc8:	00095400 	sll	t2,t1,0x10
     dcc:	01415825 	or	t3,t2,at
     dd0:	356c0c80 	ori	t4,t3,0xc80
     dd4:	ac6c0000 	sw	t4,0(v1)
     dd8:	8ccd0278 	lw	t5,632(a2)
     ddc:	ac6d0004 	sw	t5,4(v1)
     de0:	8cce0274 	lw	t6,628(a2)
     de4:	00801025 	move	v0,a0
     de8:	30afffff 	andi	t7,a1,0xffff
     dec:	11c00010 	beqz	t6,e30 <func_800DBA40+0xa0>
     df0:	3c010702 	lui	at,0x702
     df4:	01e1c025 	or	t8,t7,at
     df8:	ac580000 	sw	t8,0(v0)
     dfc:	8cd90274 	lw	t9,628(a2)
     e00:	3c010700 	lui	at,0x700
     e04:	24840008 	addiu	a0,a0,8
     e08:	ac590004 	sw	t9,4(v0)
     e0c:	90c90000 	lbu	t1,0(a2)
     e10:	00801825 	move	v1,a0
     e14:	24840008 	addiu	a0,a0,8
     e18:	00095400 	sll	t2,t1,0x10
     e1c:	01415825 	or	t3,t2,at
     e20:	356c0e20 	ori	t4,t3,0xe20
     e24:	ac6c0000 	sw	t4,0(v1)
     e28:	8ccd027c 	lw	t5,636(a2)
     e2c:	ac6d0004 	sw	t5,4(v1)
     e30:	03e00008 	jr	ra
     e34:	00801025 	move	v0,a0

00000e38 <func_800DBAE8>:
     e38:	27bdffd8 	addiu	sp,sp,-40
     e3c:	afbf0014 	sw	ra,20(sp)
     e40:	afa5002c 	sw	a1,44(sp)
     e44:	afa60030 	sw	a2,48(sp)
     e48:	80af0005 	lb	t7,5(a1)
     e4c:	3c080000 	lui	t0,0x0
     e50:	25080000 	addiu	t0,t0,0
     e54:	000fc080 	sll	t8,t7,0x2
     e58:	030fc023 	subu	t8,t8,t7
     e5c:	0018c080 	sll	t8,t8,0x2
     e60:	030fc023 	subu	t8,t8,t7
     e64:	0018c0c0 	sll	t8,t8,0x3
     e68:	030fc021 	addu	t8,t8,t7
     e6c:	0018c0c0 	sll	t8,t8,0x3
     e70:	27190018 	addiu	t9,t8,24
     e74:	03283821 	addu	a3,t9,t0
     e78:	90e90004 	lbu	t1,4(a3)
     e7c:	24010001 	li	at,1
     e80:	00e02825 	move	a1,a3
     e84:	15210012 	bne	t1,at,ed0 <func_800DBAE8+0x98>
     e88:	87a60032 	lh	a2,50(sp)
     e8c:	afa6001c 	sw	a2,28(sp)
     e90:	0c000000 	jal	0 <pad_800DACB0>
     e94:	afa70024 	sw	a3,36(sp)
     e98:	8faa002c 	lw	t2,44(sp)
     e9c:	3c010c34 	lui	at,0xc34
     ea0:	3c0e0c80 	lui	t6,0xc80
     ea4:	854b0008 	lh	t3,8(t2)
     ea8:	8fa6001c 	lw	a2,28(sp)
     eac:	8fa50024 	lw	a1,36(sp)
     eb0:	316cffff 	andi	t4,t3,0xffff
     eb4:	01816825 	or	t5,t4,at
     eb8:	35ce03e0 	ori	t6,t6,0x3e0
     ebc:	ac4e0004 	sw	t6,4(v0)
     ec0:	ac4d0000 	sw	t5,0(v0)
     ec4:	0c000000 	jal	0 <pad_800DACB0>
     ec8:	24440008 	addiu	a0,v0,8
     ecc:	00402025 	move	a0,v0
     ed0:	8fbf0014 	lw	ra,20(sp)
     ed4:	27bd0028 	addiu	sp,sp,40
     ed8:	00801025 	move	v0,a0
     edc:	03e00008 	jr	ra
     ee0:	00000000 	nop

00000ee4 <func_800DBB94>:
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_800DBB9C>:
     eec:	3c0100ff 	lui	at,0xff
     ef0:	3421ffff 	ori	at,at,0xffff
     ef4:	00a17024 	and	t6,a1,at
     ef8:	3c010200 	lui	at,0x200
     efc:	01c17825 	or	t7,t6,at
     f00:	ac8f0000 	sw	t7,0(a0)
     f04:	03e00008 	jr	ra
     f08:	ac860004 	sw	a2,4(a0)

00000f0c <func_800DBBBC>:
     f0c:	03e00008 	jr	ra
     f10:	00000000 	nop

00000f14 <func_800DBBC4>:
     f14:	03e00008 	jr	ra
     f18:	00000000 	nop

00000f1c <func_800DBBCC>:
     f1c:	03e00008 	jr	ra
     f20:	00000000 	nop

00000f24 <func_800DBBD4>:
     f24:	30ae00ff 	andi	t6,a1,0xff
     f28:	000e7c00 	sll	t7,t6,0x10
     f2c:	3c010c00 	lui	at,0xc00
     f30:	01e1c025 	or	t8,t7,at
     f34:	30d9ffff 	andi	t9,a2,0xffff
     f38:	03194025 	or	t0,t8,t9
     f3c:	ac880000 	sw	t0,0(a0)
     f40:	8fab0010 	lw	t3,16(sp)
     f44:	00075400 	sll	t2,a3,0x10
     f48:	316cffff 	andi	t4,t3,0xffff
     f4c:	014c6825 	or	t5,t2,t4
     f50:	03e00008 	jr	ra
     f54:	ac8d0004 	sw	t5,4(a0)

00000f58 <func_800DBC08>:
     f58:	03e00008 	jr	ra
     f5c:	00000000 	nop

00000f60 <func_800DBC10>:
     f60:	03e00008 	jr	ra
     f64:	00000000 	nop

00000f68 <func_800DBC18>:
     f68:	03e00008 	jr	ra
     f6c:	00000000 	nop

00000f70 <func_800DBC20>:
     f70:	30ae00ff 	andi	t6,a1,0xff
     f74:	000e7c00 	sll	t7,t6,0x10
     f78:	3c010800 	lui	at,0x800
     f7c:	01e1c025 	or	t8,t7,at
     f80:	30d9ffff 	andi	t9,a2,0xffff
     f84:	03194025 	or	t0,t8,t9
     f88:	ac880000 	sw	t0,0(a0)
     f8c:	8fab0010 	lw	t3,16(sp)
     f90:	00075400 	sll	t2,a3,0x10
     f94:	316cffff 	andi	t4,t3,0xffff
     f98:	014c6825 	or	t5,t2,t4
     f9c:	03e00008 	jr	ra
     fa0:	ac8d0004 	sw	t5,4(a0)

00000fa4 <func_800DBC54>:
     fa4:	03e00008 	jr	ra
     fa8:	00000000 	nop

00000fac <func_800DBC5C>:
     fac:	03e00008 	jr	ra
     fb0:	00000000 	nop

00000fb4 <func_800DBC64>:
     fb4:	3c0100ff 	lui	at,0xff
     fb8:	3421ffff 	ori	at,at,0xffff
     fbc:	00a17024 	and	t6,a1,at
     fc0:	3c010a00 	lui	at,0xa00
     fc4:	0006cc00 	sll	t9,a2,0x10
     fc8:	30e8ffff 	andi	t0,a3,0xffff
     fcc:	01c17825 	or	t7,t6,at
     fd0:	03284825 	or	t1,t9,t0
     fd4:	ac8f0000 	sw	t7,0(a0)
     fd8:	03e00008 	jr	ra
     fdc:	ac890004 	sw	t1,4(a0)

00000fe0 <func_800DBC90>:
     fe0:	03e00008 	jr	ra
     fe4:	00000000 	nop

00000fe8 <func_800DBC98>:
     fe8:	03e00008 	jr	ra
     fec:	00000000 	nop

00000ff0 <func_800DBCA0>:
     ff0:	03e00008 	jr	ra
     ff4:	00000000 	nop

00000ff8 <func_800DBCA8>:
     ff8:	03e00008 	jr	ra
     ffc:	00000000 	nop

00001000 <func_800DBCB0>:
    1000:	30eeffff 	andi	t6,a3,0xffff
    1004:	3c011100 	lui	at,0x1100
    1008:	0005cc00 	sll	t9,a1,0x10
    100c:	30c8ffff 	andi	t0,a2,0xffff
    1010:	01c17825 	or	t7,t6,at
    1014:	03284825 	or	t1,t9,t0
    1018:	ac8f0000 	sw	t7,0(a0)
    101c:	03e00008 	jr	ra
    1020:	ac890004 	sw	t1,4(a0)

00001024 <func_800DBCD4>:
    1024:	30ae00ff 	andi	t6,a1,0xff
    1028:	000e7c00 	sll	t7,t6,0x10
    102c:	3c011200 	lui	at,0x1200
    1030:	01e1c025 	or	t8,t7,at
    1034:	30d9ffff 	andi	t9,a2,0xffff
    1038:	03194025 	or	t0,t8,t9
    103c:	ac880000 	sw	t0,0(a0)
    1040:	8fab0010 	lw	t3,16(sp)
    1044:	00075400 	sll	t2,a3,0x10
    1048:	316cffff 	andi	t4,t3,0xffff
    104c:	014c6825 	or	t5,t2,t4
    1050:	03e00008 	jr	ra
    1054:	ac8d0004 	sw	t5,4(a0)

00001058 <func_800DBD08>:
    1058:	03e00008 	jr	ra
    105c:	00000000 	nop

00001060 <func_800DBD10>:
    1060:	00067103 	sra	t6,a2,0x4
    1064:	31cf00ff 	andi	t7,t6,0xff
    1068:	000fc400 	sll	t8,t7,0x10
    106c:	3c011400 	lui	at,0x1400
    1070:	0301c825 	or	t9,t8,at
    1074:	30a8ffff 	andi	t0,a1,0xffff
    1078:	03284825 	or	t1,t9,t0
    107c:	ac890000 	sw	t1,0(a0)
    1080:	03e00008 	jr	ra
    1084:	ac870004 	sw	a3,4(a0)

00001088 <func_800DBD38>:
    1088:	00067103 	sra	t6,a2,0x4
    108c:	31cf00ff 	andi	t7,t6,0xff
    1090:	000fc400 	sll	t8,t7,0x10
    1094:	3c011500 	lui	at,0x1500
    1098:	0301c825 	or	t9,t8,at
    109c:	30a8ffff 	andi	t0,a1,0xffff
    10a0:	03284825 	or	t1,t9,t0
    10a4:	ac890000 	sw	t1,0(a0)
    10a8:	03e00008 	jr	ra
    10ac:	ac870004 	sw	a3,4(a0)

000010b0 <func_800DBD60>:
    10b0:	0005c400 	sll	t8,a1,0x10
    10b4:	30d9ffff 	andi	t9,a2,0xffff
    10b8:	3c0e1600 	lui	t6,0x1600
    10bc:	03194025 	or	t0,t8,t9
    10c0:	ac8e0000 	sw	t6,0(a0)
    10c4:	03e00008 	jr	ra
    10c8:	ac880004 	sw	t0,4(a0)

000010cc <func_800DBD7C>:
    10cc:	03e00008 	jr	ra
    10d0:	00000000 	nop

000010d4 <func_800DBD84>:
    10d4:	03e00008 	jr	ra
    10d8:	00000000 	nop

000010dc <func_800DBD8C>:
    10dc:	03e00008 	jr	ra
    10e0:	00000000 	nop

000010e4 <func_800DBD94>:
    10e4:	30ae00ff 	andi	t6,a1,0xff
    10e8:	000e7c00 	sll	t7,t6,0x10
    10ec:	3c011700 	lui	at,0x1700
    10f0:	01e1c025 	or	t8,t7,at
    10f4:	ac980000 	sw	t8,0(a0)
    10f8:	03e00008 	jr	ra
    10fc:	ac860004 	sw	a2,4(a0)

00001100 <func_800DBDB0>:
    1100:	8fb90010 	lw	t9,16(sp)
    1104:	30ae00ff 	andi	t6,a1,0xff
    1108:	000e7c00 	sll	t7,t6,0x10
    110c:	3c010e00 	lui	at,0xe00
    1110:	01e1c025 	or	t8,t7,at
    1114:	00065c00 	sll	t3,a2,0x10
    1118:	30ecffff 	andi	t4,a3,0xffff
    111c:	3328ffff 	andi	t0,t9,0xffff
    1120:	03084825 	or	t1,t8,t0
    1124:	016c6825 	or	t5,t3,t4
    1128:	ac890000 	sw	t1,0(a0)
    112c:	03e00008 	jr	ra
    1130:	ac8d0004 	sw	t5,4(a0)

00001134 <func_800DBDE4>:
    1134:	8fae0010 	lw	t6,16(sp)
    1138:	3c011900 	lui	at,0x1900
    113c:	30e8ffff 	andi	t0,a3,0xffff
    1140:	31cf00ff 	andi	t7,t6,0xff
    1144:	000fc400 	sll	t8,t7,0x10
    1148:	0301c825 	or	t9,t8,at
    114c:	00055c00 	sll	t3,a1,0x10
    1150:	30ccffff 	andi	t4,a2,0xffff
    1154:	03284825 	or	t1,t9,t0
    1158:	016c6825 	or	t5,t3,t4
    115c:	ac890000 	sw	t1,0(a0)
    1160:	03e00008 	jr	ra
    1164:	ac8d0004 	sw	t5,4(a0)

00001168 <func_800DBE18>:
    1168:	03e00008 	jr	ra
    116c:	00000000 	nop

00001170 <func_800DBE20>:
    1170:	03e00008 	jr	ra
    1174:	00000000 	nop

00001178 <func_800DBE28>:
    1178:	03e00008 	jr	ra
    117c:	00000000 	nop

00001180 <func_800DBE30>:
    1180:	03e00008 	jr	ra
    1184:	00000000 	nop

00001188 <func_800DBE38>:
    1188:	30eeffff 	andi	t6,a3,0xffff
    118c:	3c010300 	lui	at,0x300
    1190:	0005cc00 	sll	t9,a1,0x10
    1194:	30c8ffff 	andi	t0,a2,0xffff
    1198:	01c17825 	or	t7,t6,at
    119c:	03284825 	or	t1,t9,t0
    11a0:	ac8f0000 	sw	t7,0(a0)
    11a4:	03e00008 	jr	ra
    11a8:	ac890004 	sw	t1,4(a0)

000011ac <func_800DBE5C>:
    11ac:	03e00008 	jr	ra
    11b0:	00000000 	nop

000011b4 <func_800DBE64>:
    11b4:	03e00008 	jr	ra
    11b8:	00000000 	nop

000011bc <func_800DBE6C>:
    11bc:	03e00008 	jr	ra
    11c0:	00000000 	nop

000011c4 <func_800DBE74>:
    11c4:	30ae00ff 	andi	t6,a1,0xff
    11c8:	000e7c00 	sll	t7,t6,0x10
    11cc:	3c010700 	lui	at,0x700
    11d0:	01e1c025 	or	t8,t7,at
    11d4:	30d9ffff 	andi	t9,a2,0xffff
    11d8:	03194025 	or	t0,t8,t9
    11dc:	ac880000 	sw	t0,0(a0)
    11e0:	03e00008 	jr	ra
    11e4:	ac870004 	sw	a3,4(a0)

000011e8 <func_800DBE98>:
    11e8:	30aeffff 	andi	t6,a1,0xffff
    11ec:	3c010702 	lui	at,0x702
    11f0:	01c17825 	or	t7,t6,at
    11f4:	ac8f0000 	sw	t7,0(a0)
    11f8:	03e00008 	jr	ra
    11fc:	ac860004 	sw	a2,4(a0)

00001200 <func_800DBEB0>:
    1200:	27bdffd8 	addiu	sp,sp,-40
    1204:	afbf001c 	sw	ra,28(sp)
    1208:	afa5002c 	sw	a1,44(sp)
    120c:	afa60030 	sw	a2,48(sp)
    1210:	afa70034 	sw	a3,52(sp)
    1214:	90cf0003 	lbu	t7,3(a2)
    1218:	87a80036 	lh	t0,54(sp)
    121c:	00c07025 	move	t6,a2
    1220:	000fc0c0 	sll	t8,t7,0x3
    1224:	030fc021 	addu	t8,t8,t7
    1228:	0018c080 	sll	t8,t8,0x2
    122c:	030fc023 	subu	t8,t8,t7
    1230:	000848c0 	sll	t1,t0,0x3
    1234:	0018c080 	sll	t8,t8,0x2
    1238:	01284823 	subu	t1,t1,t0
    123c:	00094880 	sll	t1,t1,0x2
    1240:	00d8c821 	addu	t9,a2,t8
    1244:	03291821 	addu	v1,t9,t1
    1248:	24630040 	addiu	v1,v1,64
    124c:	84670010 	lh	a3,16(v1)
    1250:	9466000e 	lhu	a2,14(v1)
    1254:	afa30024 	sw	v1,36(sp)
    1258:	afae0010 	sw	t6,16(sp)
    125c:	0c000000 	jal	0 <pad_800DACB0>
    1260:	24050c80 	li	a1,3200
    1264:	8fa30024 	lw	v1,36(sp)
    1268:	00402025 	move	a0,v0
    126c:	8faa0030 	lw	t2,48(sp)
    1270:	84670012 	lh	a3,18(v1)
    1274:	50e00009 	beqzl	a3,129c <func_800DBEB0+0x9c>
    1278:	8fbf001c 	lw	ra,28(sp)
    127c:	84650010 	lh	a1,16(v1)
    1280:	afaa0010 	sw	t2,16(sp)
    1284:	00003025 	move	a2,zero
    1288:	24a50c80 	addiu	a1,a1,3200
    128c:	0c000000 	jal	0 <pad_800DACB0>
    1290:	30a5ffff 	andi	a1,a1,0xffff
    1294:	00402025 	move	a0,v0
    1298:	8fbf001c 	lw	ra,28(sp)
    129c:	27bd0028 	addiu	sp,sp,40
    12a0:	00801025 	move	v0,a0
    12a4:	03e00008 	jr	ra
    12a8:	00000000 	nop

000012ac <func_800DBF5C>:
    12ac:	27bdffd8 	addiu	sp,sp,-40
    12b0:	afbf001c 	sw	ra,28(sp)
    12b4:	afa5002c 	sw	a1,44(sp)
    12b8:	afa60030 	sw	a2,48(sp)
    12bc:	afa70034 	sw	a3,52(sp)
    12c0:	90cf0003 	lbu	t7,3(a2)
    12c4:	87a80036 	lh	t0,54(sp)
    12c8:	00c07025 	move	t6,a2
    12cc:	000fc0c0 	sll	t8,t7,0x3
    12d0:	030fc021 	addu	t8,t8,t7
    12d4:	0018c080 	sll	t8,t8,0x2
    12d8:	030fc023 	subu	t8,t8,t7
    12dc:	000848c0 	sll	t1,t0,0x3
    12e0:	0018c080 	sll	t8,t8,0x2
    12e4:	01284823 	subu	t1,t1,t0
    12e8:	00094880 	sll	t1,t1,0x2
    12ec:	00d8c821 	addu	t9,a2,t8
    12f0:	03291821 	addu	v1,t9,t1
    12f4:	24630158 	addiu	v1,v1,344
    12f8:	84670010 	lh	a3,16(v1)
    12fc:	9466000e 	lhu	a2,14(v1)
    1300:	afa30024 	sw	v1,36(sp)
    1304:	afae0010 	sw	t6,16(sp)
    1308:	0c000000 	jal	0 <pad_800DACB0>
    130c:	24050c80 	li	a1,3200
    1310:	8fa30024 	lw	v1,36(sp)
    1314:	00402025 	move	a0,v0
    1318:	8faa0030 	lw	t2,48(sp)
    131c:	84670012 	lh	a3,18(v1)
    1320:	50e00009 	beqzl	a3,1348 <func_800DBF5C+0x9c>
    1324:	8fbf001c 	lw	ra,28(sp)
    1328:	84650010 	lh	a1,16(v1)
    132c:	afaa0010 	sw	t2,16(sp)
    1330:	00003025 	move	a2,zero
    1334:	24a50c80 	addiu	a1,a1,3200
    1338:	0c000000 	jal	0 <pad_800DACB0>
    133c:	30a5ffff 	andi	a1,a1,0xffff
    1340:	00402025 	move	a0,v0
    1344:	8fbf001c 	lw	ra,28(sp)
    1348:	27bd0028 	addiu	sp,sp,40
    134c:	00801025 	move	v0,a0
    1350:	03e00008 	jr	ra
    1354:	00000000 	nop

00001358 <func_800DC008>:
    1358:	00074103 	sra	t0,a3,0x4
    135c:	310800ff 	andi	t0,t0,0xff
    1360:	00084400 	sll	t0,t0,0x10
    1364:	3c011400 	lui	at,0x1400
    1368:	01014025 	or	t0,t0,at
    136c:	30aeffff 	andi	t6,a1,0xffff
    1370:	afa50004 	sw	a1,4(sp)
    1374:	afa60008 	sw	a2,8(sp)
    1378:	010e7825 	or	t7,t0,t6
    137c:	ac8f0000 	sw	t7,0(a0)
    1380:	8fb80010 	lw	t8,16(sp)
    1384:	30c6ffff 	andi	a2,a2,0xffff
    1388:	00064840 	sll	t1,a2,0x1
    138c:	8f190028 	lw	t9,40(t8)
    1390:	24ac01a0 	addiu	t4,a1,416
    1394:	318dffff 	andi	t5,t4,0xffff
    1398:	03295821 	addu	t3,t9,t1
    139c:	ac8b0004 	sw	t3,4(a0)
    13a0:	248a0008 	addiu	t2,a0,8
    13a4:	010d7025 	or	t6,t0,t5
    13a8:	ad4e0000 	sw	t6,0(t2)
    13ac:	8faf0010 	lw	t7,16(sp)
    13b0:	25420008 	addiu	v0,t2,8
    13b4:	8df8002c 	lw	t8,44(t7)
    13b8:	0309c821 	addu	t9,t8,t1
    13bc:	03e00008 	jr	ra
    13c0:	ad590004 	sw	t9,4(t2)

000013c4 <func_800DC074>:
    13c4:	00074103 	sra	t0,a3,0x4
    13c8:	310800ff 	andi	t0,t0,0xff
    13cc:	00084400 	sll	t0,t0,0x10
    13d0:	3c011500 	lui	at,0x1500
    13d4:	01014025 	or	t0,t0,at
    13d8:	30aeffff 	andi	t6,a1,0xffff
    13dc:	afa50004 	sw	a1,4(sp)
    13e0:	afa60008 	sw	a2,8(sp)
    13e4:	010e7825 	or	t7,t0,t6
    13e8:	ac8f0000 	sw	t7,0(a0)
    13ec:	8fb80010 	lw	t8,16(sp)
    13f0:	30c6ffff 	andi	a2,a2,0xffff
    13f4:	00064840 	sll	t1,a2,0x1
    13f8:	8f190028 	lw	t9,40(t8)
    13fc:	24ac01a0 	addiu	t4,a1,416
    1400:	318dffff 	andi	t5,t4,0xffff
    1404:	03295821 	addu	t3,t9,t1
    1408:	ac8b0004 	sw	t3,4(a0)
    140c:	248a0008 	addiu	t2,a0,8
    1410:	010d7025 	or	t6,t0,t5
    1414:	ad4e0000 	sw	t6,0(t2)
    1418:	8faf0010 	lw	t7,16(sp)
    141c:	25420008 	addiu	v0,t2,8
    1420:	8df8002c 	lw	t8,44(t7)
    1424:	0309c821 	addu	t9,t8,t1
    1428:	03e00008 	jr	ra
    142c:	ad590004 	sw	t9,4(t2)

00001430 <func_800DC0E0>:
    1430:	00077103 	sra	t6,a3,0x4
    1434:	31cf00ff 	andi	t7,t6,0xff
    1438:	000fc400 	sll	t8,t7,0x10
    143c:	3c011500 	lui	at,0x1500
    1440:	0301c825 	or	t9,t8,at
    1444:	30a8ffff 	andi	t0,a1,0xffff
    1448:	afa50004 	sw	a1,4(sp)
    144c:	afa60008 	sw	a2,8(sp)
    1450:	03284825 	or	t1,t9,t0
    1454:	ac890000 	sw	t1,0(a0)
    1458:	8fab0010 	lw	t3,16(sp)
    145c:	30c6ffff 	andi	a2,a2,0xffff
    1460:	00065040 	sll	t2,a2,0x1
    1464:	014b6021 	addu	t4,t2,t3
    1468:	ac8c0004 	sw	t4,4(a0)
    146c:	03e00008 	jr	ra
    1470:	24820008 	addiu	v0,a0,8

00001474 <func_800DC124>:
    1474:	27bdffe8 	addiu	sp,sp,-24
    1478:	afbf0014 	sw	ra,20(sp)
    147c:	afa70024 	sw	a3,36(sp)
    1480:	90ce0004 	lbu	t6,4(a2)
    1484:	00073c00 	sll	a3,a3,0x10
    1488:	24010001 	li	at,1
    148c:	15c10004 	bne	t6,at,14a0 <func_800DC124+0x2c>
    1490:	00073c03 	sra	a3,a3,0x10
    1494:	0c000000 	jal	0 <pad_800DACB0>
    1498:	00000000 	nop
    149c:	00402025 	move	a0,v0
    14a0:	8fbf0014 	lw	ra,20(sp)
    14a4:	27bd0018 	addiu	sp,sp,24
    14a8:	00801025 	move	v0,a0
    14ac:	03e00008 	jr	ra
    14b0:	00000000 	nop

000014b4 <func_800DC164>:
    14b4:	27bdffe0 	addiu	sp,sp,-32
    14b8:	afbf001c 	sw	ra,28(sp)
    14bc:	afb00018 	sw	s0,24(sp)
    14c0:	afa7002c 	sw	a3,44(sp)
    14c4:	90ce0004 	lbu	t6,4(a2)
    14c8:	00073c00 	sll	a3,a3,0x10
    14cc:	24010001 	li	at,1
    14d0:	00073c03 	sra	a3,a3,0x10
    14d4:	15c1000c 	bne	t6,at,1508 <func_800DC164+0x54>
    14d8:	00808025 	move	s0,a0
    14dc:	90cf0018 	lbu	t7,24(a2)
    14e0:	11e00005 	beqz	t7,14f8 <func_800DC164+0x44>
    14e4:	00000000 	nop
    14e8:	0c000000 	jal	0 <pad_800DACB0>
    14ec:	00000000 	nop
    14f0:	10000008 	b	1514 <func_800DC164+0x60>
    14f4:	00408025 	move	s0,v0
    14f8:	0c000000 	jal	0 <pad_800DACB0>
    14fc:	02002025 	move	a0,s0
    1500:	10000004 	b	1514 <func_800DC164+0x60>
    1504:	00408025 	move	s0,v0
    1508:	0c000000 	jal	0 <pad_800DACB0>
    150c:	02002025 	move	a0,s0
    1510:	00408025 	move	s0,v0
    1514:	8fbf001c 	lw	ra,28(sp)
    1518:	02001025 	move	v0,s0
    151c:	8fb00018 	lw	s0,24(sp)
    1520:	03e00008 	jr	ra
    1524:	27bd0020 	addiu	sp,sp,32

00001528 <func_800DC1D8>:
    1528:	27bdffd0 	addiu	sp,sp,-48
    152c:	afbf0024 	sw	ra,36(sp)
    1530:	afb10020 	sw	s1,32(sp)
    1534:	afb0001c 	sw	s0,28(sp)
    1538:	afa60038 	sw	a2,56(sp)
    153c:	90ae0003 	lbu	t6,3(a1)
    1540:	00063400 	sll	a2,a2,0x10
    1544:	00063403 	sra	a2,a2,0x10
    1548:	000e78c0 	sll	t7,t6,0x3
    154c:	01ee7821 	addu	t7,t7,t6
    1550:	000f7880 	sll	t7,t7,0x2
    1554:	0006c8c0 	sll	t9,a2,0x3
    1558:	01ee7823 	subu	t7,t7,t6
    155c:	90a80004 	lbu	t0,4(a1)
    1560:	000f7880 	sll	t7,t7,0x2
    1564:	0326c823 	subu	t9,t9,a2
    1568:	0019c880 	sll	t9,t9,0x2
    156c:	00afc021 	addu	t8,a1,t7
    1570:	03191021 	addu	v0,t8,t9
    1574:	24010001 	li	at,1
    1578:	00808025 	move	s0,a0
    157c:	00a08825 	move	s1,a1
    1580:	1501001d 	bne	t0,at,15f8 <func_800DC1D8+0xd0>
    1584:	24430040 	addiu	v1,v0,64
    1588:	90a90018 	lbu	t1,24(a1)
    158c:	51200006 	beqzl	t1,15a8 <func_800DC1D8+0x80>
    1590:	9466000e 	lhu	a2,14(v1)
    1594:	0c000000 	jal	0 <pad_800DACB0>
    1598:	00000000 	nop
    159c:	1000001c 	b	1610 <func_800DC1D8+0xe8>
    15a0:	00408025 	move	s0,v0
    15a4:	9466000e 	lhu	a2,14(v1)
    15a8:	84670010 	lh	a3,16(v1)
    15ac:	afa3002c 	sw	v1,44(sp)
    15b0:	afb10010 	sw	s1,16(sp)
    15b4:	02002025 	move	a0,s0
    15b8:	0c000000 	jal	0 <pad_800DACB0>
    15bc:	24050c80 	li	a1,3200
    15c0:	8fa3002c 	lw	v1,44(sp)
    15c4:	00408025 	move	s0,v0
    15c8:	00402025 	move	a0,v0
    15cc:	84670012 	lh	a3,18(v1)
    15d0:	50e00010 	beqzl	a3,1614 <func_800DC1D8+0xec>
    15d4:	a2200000 	sb	zero,0(s1)
    15d8:	84650010 	lh	a1,16(v1)
    15dc:	afb10010 	sw	s1,16(sp)
    15e0:	00003025 	move	a2,zero
    15e4:	24a50c80 	addiu	a1,a1,3200
    15e8:	0c000000 	jal	0 <pad_800DACB0>
    15ec:	30a5ffff 	andi	a1,a1,0xffff
    15f0:	10000007 	b	1610 <func_800DC1D8+0xe8>
    15f4:	00408025 	move	s0,v0
    15f8:	02002025 	move	a0,s0
    15fc:	26100008 	addiu	s0,s0,8
    1600:	24050c80 	li	a1,3200
    1604:	24060340 	li	a2,832
    1608:	0c000000 	jal	0 <pad_800DACB0>
    160c:	8c470044 	lw	a3,68(v0)
    1610:	a2200000 	sb	zero,0(s1)
    1614:	8fbf0024 	lw	ra,36(sp)
    1618:	02001025 	move	v0,s0
    161c:	8fb0001c 	lw	s0,28(sp)
    1620:	8fb10020 	lw	s1,32(sp)
    1624:	03e00008 	jr	ra
    1628:	27bd0030 	addiu	sp,sp,48

0000162c <func_800DC2DC>:
    162c:	27bdffd8 	addiu	sp,sp,-40
    1630:	afbf001c 	sw	ra,28(sp)
    1634:	afa5002c 	sw	a1,44(sp)
    1638:	afa60030 	sw	a2,48(sp)
    163c:	90af0003 	lbu	t7,3(a1)
    1640:	87a80032 	lh	t0,50(sp)
    1644:	00a07025 	move	t6,a1
    1648:	000fc0c0 	sll	t8,t7,0x3
    164c:	030fc021 	addu	t8,t8,t7
    1650:	0018c080 	sll	t8,t8,0x2
    1654:	030fc023 	subu	t8,t8,t7
    1658:	000848c0 	sll	t1,t0,0x3
    165c:	0018c080 	sll	t8,t8,0x2
    1660:	01284823 	subu	t1,t1,t0
    1664:	00094880 	sll	t1,t1,0x2
    1668:	00b8c821 	addu	t9,a1,t8
    166c:	03291821 	addu	v1,t9,t1
    1670:	24630158 	addiu	v1,v1,344
    1674:	84670010 	lh	a3,16(v1)
    1678:	9466000e 	lhu	a2,14(v1)
    167c:	afa30024 	sw	v1,36(sp)
    1680:	afae0010 	sw	t6,16(sp)
    1684:	0c000000 	jal	0 <pad_800DACB0>
    1688:	24050c80 	li	a1,3200
    168c:	8fa30024 	lw	v1,36(sp)
    1690:	00402025 	move	a0,v0
    1694:	8faa002c 	lw	t2,44(sp)
    1698:	84670012 	lh	a3,18(v1)
    169c:	50e00009 	beqzl	a3,16c4 <func_800DC2DC+0x98>
    16a0:	8fbf001c 	lw	ra,28(sp)
    16a4:	84650010 	lh	a1,16(v1)
    16a8:	afaa0010 	sw	t2,16(sp)
    16ac:	00003025 	move	a2,zero
    16b0:	24a50c80 	addiu	a1,a1,3200
    16b4:	0c000000 	jal	0 <pad_800DACB0>
    16b8:	30a5ffff 	andi	a1,a1,0xffff
    16bc:	00402025 	move	a0,v0
    16c0:	8fbf001c 	lw	ra,28(sp)
    16c4:	27bd0028 	addiu	sp,sp,40
    16c8:	00801025 	move	v0,a0
    16cc:	03e00008 	jr	ra
    16d0:	00000000 	nop

000016d4 <func_800DC384>:
    16d4:	27bdff08 	addiu	sp,sp,-248
    16d8:	afb5003c 	sw	s5,60(sp)
    16dc:	3c150000 	lui	s5,0x0
    16e0:	26b50000 	addiu	s5,s5,0
    16e4:	8ea82894 	lw	t0,10388(s5)
    16e8:	82a90001 	lb	t1,1(s5)
    16ec:	afbe0048 	sw	s8,72(sp)
    16f0:	01070019 	multu	t0,a3
    16f4:	afb30034 	sw	s3,52(sp)
    16f8:	afb20030 	sw	s2,48(sp)
    16fc:	00c09825 	move	s3,a2
    1700:	00e0f025 	move	s8,a3
    1704:	afbf004c 	sw	ra,76(sp)
    1708:	afb70044 	sw	s7,68(sp)
    170c:	afb60040 	sw	s6,64(sp)
    1710:	afb40038 	sw	s4,56(sp)
    1714:	afb1002c 	sw	s1,44(sp)
    1718:	00005012 	mflo	t2
    171c:	afb00028 	sw	s0,40(sp)
    1720:	afa400f8 	sw	a0,248(sp)
    1724:	afa500fc 	sw	a1,252(sp)
    1728:	15200017 	bnez	t1,1788 <func_800DC384+0xb4>
    172c:	00009025 	move	s2,zero
    1730:	19000013 	blez	t0,1780 <func_800DC384+0xac>
    1734:	00008825 	move	s1,zero
    1738:	8eae0014 	lw	t6,20(s5)
    173c:	000a7940 	sll	t7,t2,0x5
    1740:	27a4009c 	addiu	a0,sp,156
    1744:	01cf1021 	addu	v0,t6,t7
    1748:	8c580000 	lw	t8,0(v0)
    174c:	00925821 	addu	t3,a0,s2
    1750:	0018cfc2 	srl	t9,t8,0x1f
    1754:	53200006 	beqzl	t9,1770 <func_800DC384+0x9c>
    1758:	26310001 	addiu	s1,s1,1
    175c:	26520001 	addiu	s2,s2,1
    1760:	00129400 	sll	s2,s2,0x10
    1764:	00129403 	sra	s2,s2,0x10
    1768:	a1710000 	sb	s1,0(t3)
    176c:	26310001 	addiu	s1,s1,1
    1770:	0228082a 	slt	at,s1,t0
    1774:	1420fff4 	bnez	at,1748 <func_800DC384+0x74>
    1778:	24420020 	addiu	v0,v0,32
    177c:	00008825 	move	s1,zero
    1780:	1000003c 	b	1874 <func_800DC384+0x1a0>
    1784:	0000a025 	move	s4,zero
    1788:	19200020 	blez	t1,180c <func_800DC384+0x138>
    178c:	0000a025 	move	s4,zero
    1790:	27a4009c 	addiu	a0,sp,156
    1794:	19000016 	blez	t0,17f0 <func_800DC384+0x11c>
    1798:	00008825 	move	s1,zero
    179c:	8ead0014 	lw	t5,20(s5)
    17a0:	000a6140 	sll	t4,t2,0x5
    17a4:	018d1821 	addu	v1,t4,t5
    17a8:	00601025 	move	v0,v1
    17ac:	8c4e0000 	lw	t6,0(v0)
    17b0:	000e7fc2 	srl	t7,t6,0x1f
    17b4:	51e0000b 	beqzl	t7,17e4 <func_800DC384+0x110>
    17b8:	26310001 	addiu	s1,s1,1
    17bc:	90580001 	lbu	t8,1(v0)
    17c0:	00925821 	addu	t3,a0,s2
    17c4:	0018c942 	srl	t9,t8,0x5
    17c8:	56990006 	bnel	s4,t9,17e4 <func_800DC384+0x110>
    17cc:	26310001 	addiu	s1,s1,1
    17d0:	26520001 	addiu	s2,s2,1
    17d4:	00129400 	sll	s2,s2,0x10
    17d8:	00129403 	sra	s2,s2,0x10
    17dc:	a1710000 	sb	s1,0(t3)
    17e0:	26310001 	addiu	s1,s1,1
    17e4:	0228082a 	slt	at,s1,t0
    17e8:	1420ffef 	bnez	at,17a8 <func_800DC384+0xd4>
    17ec:	24630020 	addiu	v1,v1,32
    17f0:	26940001 	addiu	s4,s4,1
    17f4:	0014a400 	sll	s4,s4,0x10
    17f8:	0014a403 	sra	s4,s4,0x10
    17fc:	0289082a 	slt	at,s4,t1
    1800:	1420ffe4 	bnez	at,1794 <func_800DC384+0xc0>
    1804:	00000000 	nop
    1808:	0000a025 	move	s4,zero
    180c:	27a4009c 	addiu	a0,sp,156
    1810:	19000018 	blez	t0,1874 <func_800DC384+0x1a0>
    1814:	00008825 	move	s1,zero
    1818:	8ead0014 	lw	t5,20(s5)
    181c:	000a6140 	sll	t4,t2,0x5
    1820:	018d1821 	addu	v1,t4,t5
    1824:	00601025 	move	v0,v1
    1828:	8c4e0000 	lw	t6,0(v0)
    182c:	000e7fc2 	srl	t7,t6,0x1f
    1830:	51e0000c 	beqzl	t7,1864 <func_800DC384+0x190>
    1834:	26310001 	addiu	s1,s1,1
    1838:	90580001 	lbu	t8,1(v0)
    183c:	00925821 	addu	t3,a0,s2
    1840:	0018c942 	srl	t9,t8,0x5
    1844:	0329082a 	slt	at,t9,t1
    1848:	54200006 	bnezl	at,1864 <func_800DC384+0x190>
    184c:	26310001 	addiu	s1,s1,1
    1850:	26520001 	addiu	s2,s2,1
    1854:	00129400 	sll	s2,s2,0x10
    1858:	00129403 	sra	s2,s2,0x10
    185c:	a1710000 	sb	s1,0(t3)
    1860:	26310001 	addiu	s1,s1,1
    1864:	0228082a 	slt	at,s1,t0
    1868:	1420ffee 	bnez	at,1824 <func_800DC384+0x150>
    186c:	24630020 	addiu	v1,v1,32
    1870:	00008825 	move	s1,zero
    1874:	02601025 	move	v0,s3
    1878:	3c0c0200 	lui	t4,0x200
    187c:	358c0940 	ori	t4,t4,0x940
    1880:	240d0340 	li	t5,832
    1884:	ac4d0004 	sw	t5,4(v0)
    1888:	ac4c0000 	sw	t4,0(v0)
    188c:	82ae0001 	lb	t6,1(s5)
    1890:	26730008 	addiu	s3,s3,8
    1894:	afaa008c 	sw	t2,140(sp)
    1898:	19c000af 	blez	t6,1b58 <func_800DC384+0x484>
    189c:	241700e0 	li	s7,224
    18a0:	afaa008c 	sw	t2,140(sp)
    18a4:	00147880 	sll	t7,s4,0x2
    18a8:	01f47823 	subu	t7,t7,s4
    18ac:	000f7880 	sll	t7,t7,0x2
    18b0:	01f47823 	subu	t7,t7,s4
    18b4:	000f78c0 	sll	t7,t7,0x3
    18b8:	01f47821 	addu	t7,t7,s4
    18bc:	000f78c0 	sll	t7,t7,0x3
    18c0:	02afc021 	addu	t8,s5,t7
    18c4:	afb8005c 	sw	t8,92(sp)
    18c8:	930b0019 	lbu	t3,25(t8)
    18cc:	02602025 	move	a0,s3
    18d0:	8fa500fc 	lw	a1,252(sp)
    18d4:	11600051 	beqz	t3,1a1c <func_800DC384+0x348>
    18d8:	afab0090 	sw	t3,144(sp)
    18dc:	001eb400 	sll	s6,s8,0x10
    18e0:	0016b403 	sra	s6,s6,0x10
    18e4:	00163c00 	sll	a3,s6,0x10
    18e8:	27100018 	addiu	s0,t8,24
    18ec:	02003025 	move	a2,s0
    18f0:	0c000000 	jal	0 <pad_800DACB0>
    18f4:	00073c03 	sra	a3,a3,0x10
    18f8:	860c000a 	lh	t4,10(s0)
    18fc:	3c010c34 	lui	at,0xc34
    1900:	3c0f0c80 	lui	t7,0xc80
    1904:	318dffff 	andi	t5,t4,0xffff
    1908:	01a17025 	or	t6,t5,at
    190c:	35ef0940 	ori	t7,t7,0x940
    1910:	ac4f0004 	sw	t7,4(v0)
    1914:	ac4e0000 	sw	t6,0(v0)
    1918:	96180014 	lhu	t8,20(s0)
    191c:	24430008 	addiu	v1,v0,8
    1920:	00609825 	move	s3,v1
    1924:	13000008 	beqz	t8,1948 <func_800DC384+0x274>
    1928:	afb8007c 	sw	t8,124(sp)
    192c:	3c190a00 	lui	t9,0xa00
    1930:	3c0c03e0 	lui	t4,0x3e0
    1934:	358c0340 	ori	t4,t4,0x340
    1938:	37390c80 	ori	t9,t9,0xc80
    193c:	ac790000 	sw	t9,0(v1)
    1940:	ac6c0004 	sw	t4,4(v1)
    1944:	24730008 	addiu	s3,v1,8
    1948:	960d000c 	lhu	t5,12(s0)
    194c:	34018000 	li	at,0x8000
    1950:	02601025 	move	v0,s3
    1954:	01a17021 	addu	t6,t5,at
    1958:	31cfffff 	andi	t7,t6,0xffff
    195c:	3c010c34 	lui	at,0xc34
    1960:	3c0b0c80 	lui	t3,0xc80
    1964:	356b0c80 	ori	t3,t3,0xc80
    1968:	01e1c025 	or	t8,t7,at
    196c:	ac580000 	sw	t8,0(v0)
    1970:	ac4b0004 	sw	t3,4(v0)
    1974:	86190010 	lh	t9,16(s0)
    1978:	26730008 	addiu	s3,s3,8
    197c:	02602025 	move	a0,s3
    1980:	17200004 	bnez	t9,1994 <func_800DC384+0x2c0>
    1984:	00000000 	nop
    1988:	860c0012 	lh	t4,18(s0)
    198c:	51800005 	beqzl	t4,19a4 <func_800DC384+0x2d0>
    1990:	8fad007c 	lw	t5,124(sp)
    1994:	0c000000 	jal	0 <pad_800DACB0>
    1998:	02002825 	move	a1,s0
    199c:	00409825 	move	s3,v0
    19a0:	8fad007c 	lw	t5,124(sp)
    19a4:	02602025 	move	a0,s3
    19a8:	02002825 	move	a1,s0
    19ac:	11a0001b 	beqz	t5,1a1c <func_800DC384+0x348>
    19b0:	00163400 	sll	a2,s6,0x10
    19b4:	0c000000 	jal	0 <pad_800DACB0>
    19b8:	00063403 	sra	a2,a2,0x10
    19bc:	820e0005 	lb	t6,5(s0)
    19c0:	2401ffff 	li	at,-1
    19c4:	00409825 	move	s3,v0
    19c8:	11c10005 	beq	t6,at,19e0 <func_800DC384+0x30c>
    19cc:	00402025 	move	a0,v0
    19d0:	02002825 	move	a1,s0
    19d4:	0c000000 	jal	0 <pad_800DACB0>
    19d8:	03c03025 	move	a2,s8
    19dc:	00409825 	move	s3,v0
    19e0:	00163c00 	sll	a3,s6,0x10
    19e4:	00073c03 	sra	a3,a3,0x10
    19e8:	02602025 	move	a0,s3
    19ec:	8fa500fc 	lw	a1,252(sp)
    19f0:	0c000000 	jal	0 <pad_800DACB0>
    19f4:	02003025 	move	a2,s0
    19f8:	860f0016 	lh	t7,22(s0)
    19fc:	3c010c34 	lui	at,0xc34
    1a00:	3c1903e0 	lui	t9,0x3e0
    1a04:	31f8ffff 	andi	t8,t7,0xffff
    1a08:	03015825 	or	t3,t8,at
    1a0c:	37390c80 	ori	t9,t9,0xc80
    1a10:	ac590004 	sw	t9,4(v0)
    1a14:	ac4b0000 	sw	t3,0(v0)
    1a18:	24530008 	addiu	s3,v0,8
    1a1c:	0232082a 	slt	at,s1,s2
    1a20:	1020001d 	beqz	at,1a98 <func_800DC384+0x3c4>
    1a24:	27ac009c 	addiu	t4,sp,156
    1a28:	022c8021 	addu	s0,s1,t4
    1a2c:	92020000 	lbu	v0,0(s0)
    1a30:	8fad008c 	lw	t5,140(sp)
    1a34:	8eb80014 	lw	t8,20(s5)
    1a38:	00402025 	move	a0,v0
    1a3c:	004d7021 	addu	t6,v0,t5
    1a40:	000e7940 	sll	t7,t6,0x5
    1a44:	01f82821 	addu	a1,t7,t8
    1a48:	90ab0001 	lbu	t3,1(a1)
    1a4c:	000bc942 	srl	t9,t3,0x5
    1a50:	56990012 	bnel	s4,t9,1a9c <func_800DC384+0x3c8>
    1a54:	8faf0090 	lw	t7,144(sp)
    1a58:	00570019 	multu	v0,s7
    1a5c:	8ead352c 	lw	t5,13612(s5)
    1a60:	8fae00fc 	lw	t6,252(sp)
    1a64:	8fa700f8 	lw	a3,248(sp)
    1a68:	afb30014 	sw	s3,20(sp)
    1a6c:	afbe0018 	sw	s8,24(sp)
    1a70:	afae0010 	sw	t6,16(sp)
    1a74:	00006012 	mflo	t4
    1a78:	018d3021 	addu	a2,t4,t5
    1a7c:	0c000000 	jal	0 <pad_800DACB0>
    1a80:	24c60010 	addiu	a2,a2,16
    1a84:	26310001 	addiu	s1,s1,1
    1a88:	0232082a 	slt	at,s1,s2
    1a8c:	00409825 	move	s3,v0
    1a90:	1420ffe6 	bnez	at,1a2c <func_800DC384+0x358>
    1a94:	26100001 	addiu	s0,s0,1
    1a98:	8faf0090 	lw	t7,144(sp)
    1a9c:	8fb0005c 	lw	s0,92(sp)
    1aa0:	51e00027 	beqzl	t7,1b40 <func_800DC384+0x46c>
    1aa4:	82ad0001 	lb	t5,1(s5)
    1aa8:	8e180288 	lw	t8,648(s0)
    1aac:	001eb400 	sll	s6,s8,0x10
    1ab0:	0016b403 	sra	s6,s6,0x10
    1ab4:	17000004 	bnez	t8,1ac8 <func_800DC384+0x3f4>
    1ab8:	26100018 	addiu	s0,s0,24
    1abc:	8e0b0274 	lw	t3,628(s0)
    1ac0:	51600008 	beqzl	t3,1ae4 <func_800DC384+0x410>
    1ac4:	8fb9007c 	lw	t9,124(sp)
    1ac8:	8fa500fc 	lw	a1,252(sp)
    1acc:	02602025 	move	a0,s3
    1ad0:	02003025 	move	a2,s0
    1ad4:	0c000000 	jal	0 <pad_800DACB0>
    1ad8:	00052840 	sll	a1,a1,0x1
    1adc:	00409825 	move	s3,v0
    1ae0:	8fb9007c 	lw	t9,124(sp)
    1ae4:	02602025 	move	a0,s3
    1ae8:	02002825 	move	a1,s0
    1aec:	13200008 	beqz	t9,1b10 <func_800DC384+0x43c>
    1af0:	00163400 	sll	a2,s6,0x10
    1af4:	00163400 	sll	a2,s6,0x10
    1af8:	00063403 	sra	a2,a2,0x10
    1afc:	02602025 	move	a0,s3
    1b00:	0c000000 	jal	0 <pad_800DACB0>
    1b04:	02002825 	move	a1,s0
    1b08:	1000000c 	b	1b3c <func_800DC384+0x468>
    1b0c:	00409825 	move	s3,v0
    1b10:	0c000000 	jal	0 <pad_800DACB0>
    1b14:	00063403 	sra	a2,a2,0x10
    1b18:	820c0005 	lb	t4,5(s0)
    1b1c:	2401ffff 	li	at,-1
    1b20:	00409825 	move	s3,v0
    1b24:	11810005 	beq	t4,at,1b3c <func_800DC384+0x468>
    1b28:	00402025 	move	a0,v0
    1b2c:	02002825 	move	a1,s0
    1b30:	0c000000 	jal	0 <pad_800DACB0>
    1b34:	03c03025 	move	a2,s8
    1b38:	00409825 	move	s3,v0
    1b3c:	82ad0001 	lb	t5,1(s5)
    1b40:	26940001 	addiu	s4,s4,1
    1b44:	0014a400 	sll	s4,s4,0x10
    1b48:	0014a403 	sra	s4,s4,0x10
    1b4c:	028d082a 	slt	at,s4,t5
    1b50:	5420ff55 	bnezl	at,18a8 <func_800DC384+0x1d4>
    1b54:	00147880 	sll	t7,s4,0x2
    1b58:	8fb600fc 	lw	s6,252(sp)
    1b5c:	0232082a 	slt	at,s1,s2
    1b60:	241700e0 	li	s7,224
    1b64:	1020001a 	beqz	at,1bd0 <func_800DC384+0x4fc>
    1b68:	0016b040 	sll	s6,s6,0x1
    1b6c:	27ae009c 	addiu	t6,sp,156
    1b70:	022e8021 	addu	s0,s1,t6
    1b74:	024ea021 	addu	s4,s2,t6
    1b78:	92020000 	lbu	v0,0(s0)
    1b7c:	8faf008c 	lw	t7,140(sp)
    1b80:	8ead352c 	lw	t5,13612(s5)
    1b84:	00570019 	multu	v0,s7
    1b88:	8eb90014 	lw	t9,20(s5)
    1b8c:	8fae00fc 	lw	t6,252(sp)
    1b90:	004fc021 	addu	t8,v0,t7
    1b94:	00185940 	sll	t3,t8,0x5
    1b98:	afbe0018 	sw	s8,24(sp)
    1b9c:	afb30014 	sw	s3,20(sp)
    1ba0:	8fa700f8 	lw	a3,248(sp)
    1ba4:	00402025 	move	a0,v0
    1ba8:	01792821 	addu	a1,t3,t9
    1bac:	00006012 	mflo	t4
    1bb0:	018d3021 	addu	a2,t4,t5
    1bb4:	24c60010 	addiu	a2,a2,16
    1bb8:	0c000000 	jal	0 <pad_800DACB0>
    1bbc:	afae0010 	sw	t6,16(sp)
    1bc0:	26100001 	addiu	s0,s0,1
    1bc4:	0214082b 	sltu	at,s0,s4
    1bc8:	1420ffeb 	bnez	at,1b78 <func_800DC384+0x4a4>
    1bcc:	00409825 	move	s3,v0
    1bd0:	00167903 	sra	t7,s6,0x4
    1bd4:	31f800ff 	andi	t8,t7,0xff
    1bd8:	00185c00 	sll	t3,t8,0x10
    1bdc:	3c010d00 	lui	at,0xd00
    1be0:	0161c825 	or	t9,t3,at
    1be4:	00167040 	sll	t6,s6,0x1
    1be8:	000e7903 	sra	t7,t6,0x4
    1bec:	372c03c0 	ori	t4,t9,0x3c0
    1bf0:	02601825 	move	v1,s3
    1bf4:	31f800ff 	andi	t8,t7,0xff
    1bf8:	3c0d0940 	lui	t5,0x940
    1bfc:	00185c00 	sll	t3,t8,0x10
    1c00:	3c011500 	lui	at,0x1500
    1c04:	35ad0ae0 	ori	t5,t5,0xae0
    1c08:	ac6c0000 	sw	t4,0(v1)
    1c0c:	26730008 	addiu	s3,s3,8
    1c10:	0161c825 	or	t9,t3,at
    1c14:	ac6d0004 	sw	t5,4(v1)
    1c18:	372c03c0 	ori	t4,t9,0x3c0
    1c1c:	02602025 	move	a0,s3
    1c20:	ac8c0000 	sw	t4,0(a0)
    1c24:	8fad00f8 	lw	t5,248(sp)
    1c28:	26620008 	addiu	v0,s3,8
    1c2c:	ac8d0004 	sw	t5,4(a0)
    1c30:	8fbf004c 	lw	ra,76(sp)
    1c34:	8fbe0048 	lw	s8,72(sp)
    1c38:	8fb70044 	lw	s7,68(sp)
    1c3c:	8fb60040 	lw	s6,64(sp)
    1c40:	8fb5003c 	lw	s5,60(sp)
    1c44:	8fb40038 	lw	s4,56(sp)
    1c48:	8fb30034 	lw	s3,52(sp)
    1c4c:	8fb20030 	lw	s2,48(sp)
    1c50:	8fb1002c 	lw	s1,44(sp)
    1c54:	8fb00028 	lw	s0,40(sp)
    1c58:	03e00008 	jr	ra
    1c5c:	27bd00f8 	addiu	sp,sp,248

00001c60 <func_800DC910>:
    1c60:	27bdfea0 	addiu	sp,sp,-352
    1c64:	afbf004c 	sw	ra,76(sp)
    1c68:	afbe0048 	sw	s8,72(sp)
    1c6c:	afb70044 	sw	s7,68(sp)
    1c70:	afb60040 	sw	s6,64(sp)
    1c74:	afb5003c 	sw	s5,60(sp)
    1c78:	afb40038 	sw	s4,56(sp)
    1c7c:	afb30034 	sw	s3,52(sp)
    1c80:	afb20030 	sw	s2,48(sp)
    1c84:	afb1002c 	sw	s1,44(sp)
    1c88:	afb00028 	sw	s0,40(sp)
    1c8c:	afa40160 	sw	a0,352(sp)
    1c90:	afa7016c 	sw	a3,364(sp)
    1c94:	8ca30000 	lw	v1,0(a1)
    1c98:	0004c8c0 	sll	t9,a0,0x3
    1c9c:	3c0c0000 	lui	t4,0x0
    1ca0:	000372c0 	sll	t6,v1,0xb
    1ca4:	8d8c352c 	lw	t4,13612(t4)
    1ca8:	000e7f82 	srl	t7,t6,0x1e
    1cac:	0324c823 	subu	t9,t9,a0
    1cb0:	00036840 	sll	t5,v1,0x1
    1cb4:	240a0001 	li	t2,1
    1cb8:	0019c940 	sll	t9,t9,0x5
    1cbc:	000d77c2 	srl	t6,t5,0x1f
    1cc0:	00035880 	sll	t3,v1,0x2
    1cc4:	00c08025 	move	s0,a2
    1cc8:	00a08825 	move	s1,a1
    1ccc:	afaf008c 	sw	t7,140(sp)
    1cd0:	000b5fc2 	srl	t3,t3,0x1f
    1cd4:	00004825 	move	t1,zero
    1cd8:	154e0014 	bne	t2,t6,1d2c <func_800DC910+0xcc>
    1cdc:	032c3821 	addu	a3,t9,t4
    1ce0:	a0c00000 	sb	zero,0(a2)
    1ce4:	8cef00bc 	lw	t7,188(a3)
    1ce8:	a4c00006 	sh	zero,6(a2)
    1cec:	a4c00010 	sh	zero,16(a2)
    1cf0:	a4c00012 	sh	zero,18(a2)
    1cf4:	a0c00002 	sb	zero,2(a2)
    1cf8:	a0c00003 	sb	zero,3(a2)
    1cfc:	accf0008 	sw	t7,8(a2)
    1d00:	90b80005 	lbu	t8,5(a1)
    1d04:	24190001 	li	t9,1
    1d08:	a0c00005 	sb	zero,5(a2)
    1d0c:	a0d9001a 	sb	t9,26(a2)
    1d10:	a0d80004 	sb	t8,4(a2)
    1d14:	90ec00c0 	lbu	t4,192(a3)
    1d18:	01404825 	move	t1,t2
    1d1c:	00005825 	move	t3,zero
    1d20:	318dffdf 	andi	t5,t4,0xffdf
    1d24:	a0ed00c0 	sb	t5,192(a3)
    1d28:	8ca30000 	lw	v1,0(a1)
    1d2c:	962e000c 	lhu	t6,12(s1)
    1d30:	8fb80170 	lw	t8,368(sp)
    1d34:	00032380 	sll	a0,v1,0xe
    1d38:	31cfffff 	andi	t7,t6,0xffff
    1d3c:	01f80019 	multu	t7,t8
    1d40:	a7ae0136 	sh	t6,310(sp)
    1d44:	960d0006 	lhu	t5,6(s0)
    1d48:	92020005 	lbu	v0,5(s0)
    1d4c:	000427c2 	srl	a0,a0,0x1f
    1d50:	24840001 	addiu	a0,a0,1
    1d54:	0000c812 	mflo	t9
    1d58:	00196040 	sll	t4,t9,0x1
    1d5c:	018d4021 	addu	t0,t4,t5
    1d60:	15420001 	bne	t2,v0,1d68 <func_800DC910+0x108>
    1d64:	a6080006 	sh	t0,6(s0)
    1d68:	a2040005 	sb	a0,5(s0)
    1d6c:	8e230000 	lw	v1,0(s1)
    1d70:	0003c340 	sll	t8,v1,0xd
    1d74:	07030018 	bgezl	t8,1dd8 <func_800DC910+0x178>
    1d78:	8e380010 	lw	t8,16(s1)
    1d7c:	00083c02 	srl	a3,t0,0x10
    1d80:	8fa40174 	lw	a0,372(sp)
    1d84:	afa70050 	sw	a3,80(sp)
    1d88:	02202825 	move	a1,s1
    1d8c:	02003025 	move	a2,s0
    1d90:	afb00168 	sw	s0,360(sp)
    1d94:	0c000000 	jal	0 <pad_800DACB0>
    1d98:	afb10164 	sw	s1,356(sp)
    1d9c:	8fa40168 	lw	a0,360(sp)
    1da0:	8fad0050 	lw	t5,80(sp)
    1da4:	240a0001 	li	t2,1
    1da8:	8c860008 	lw	a2,8(a0)
    1dac:	0006c840 	sll	t9,a2,0x1
    1db0:	272c0580 	addiu	t4,t9,1408
    1db4:	a7ac00ae 	sh	t4,174(sp)
    1db8:	00cd7021 	addu	t6,a2,t5
    1dbc:	ac8e0008 	sw	t6,8(a0)
    1dc0:	8fb10164 	lw	s1,356(sp)
    1dc4:	8fb00168 	lw	s0,360(sp)
    1dc8:	8e230000 	lw	v1,0(s1)
    1dcc:	1000022d 	b	2684 <L800DCDA0+0x594>
    1dd0:	afa20174 	sw	v0,372(sp)
    1dd4:	8e380010 	lw	t8,16(s1)
    1dd8:	00086c02 	srl	t5,t0,0x10
    1ddc:	8f020000 	lw	v0,0(t8)
    1de0:	8c450008 	lw	a1,8(v0)
    1de4:	8cb90004 	lw	t9,4(a1)
    1de8:	afb90100 	sw	t9,256(sp)
    1dec:	8c4c0004 	lw	t4,4(v0)
    1df0:	afa000b0 	sw	zero,176(sp)
    1df4:	afa000bc 	sw	zero,188(sp)
    1df8:	18800222 	blez	a0,2684 <L800DCDA0+0x594>
    1dfc:	afac0110 	sw	t4,272(sp)
    1e00:	afab0088 	sw	t3,136(sp)
    1e04:	02005825 	move	t3,s0
    1e08:	afad0050 	sw	t5,80(sp)
    1e0c:	afa20150 	sw	v0,336(sp)
    1e10:	afa400c0 	sw	a0,192(sp)
    1e14:	afa5014c 	sw	a1,332(sp)
    1e18:	afa7009c 	sw	a3,156(sp)
    1e1c:	afa90138 	sw	t1,312(sp)
    1e20:	afb00168 	sw	s0,360(sp)
    1e24:	afb10164 	sw	s1,356(sp)
    1e28:	8fb20174 	lw	s2,372(sp)
    1e2c:	8faa00d4 	lw	t2,212(sp)
    1e30:	00801825 	move	v1,a0
    1e34:	8fae0150 	lw	t6,336(sp)
    1e38:	24010001 	li	at,1
    1e3c:	00004825 	move	t1,zero
    1e40:	8dc70000 	lw	a3,0(t6)
    1e44:	0000a825 	move	s5,zero
    1e48:	14610003 	bne	v1,at,1e58 <func_800DC910+0x1f8>
    1e4c:	00073f02 	srl	a3,a3,0x1c
    1e50:	1000000b 	b	1e80 <func_800DC910+0x220>
    1e54:	8fbe0050 	lw	s8,80(sp)
    1e58:	8faf0050 	lw	t7,80(sp)
    1e5c:	8fac00bc 	lw	t4,188(sp)
    1e60:	8fbe0050 	lw	s8,80(sp)
    1e64:	31f80001 	andi	t8,t7,0x1
    1e68:	13000005 	beqz	t8,1e80 <func_800DC910+0x220>
    1e6c:	000c6840 	sll	t5,t4,0x1
    1e70:	2401fffe 	li	at,-2
    1e74:	01e1c824 	and	t9,t7,at
    1e78:	10000001 	b	1e80 <func_800DC910+0x220>
    1e7c:	032df021 	addu	s8,t9,t5
    1e80:	10e00003 	beqz	a3,1e90 <func_800DC910+0x230>
    1e84:	24010003 	li	at,3
    1e88:	14e1002c 	bne	a3,at,1f3c <func_800DC910+0x2dc>
    1e8c:	00000000 	nop
    1e90:	8fae0150 	lw	t6,336(sp)
    1e94:	3c180000 	lui	t8,0x0
    1e98:	8f180010 	lw	t8,16(t8)
    1e9c:	8dc2000c 	lw	v0,12(t6)
    1ea0:	8faf008c 	lw	t7,140(sp)
    1ea4:	24010001 	li	at,1
    1ea8:	24420008 	addiu	v0,v0,8
    1eac:	13020023 	beq	t8,v0,1f3c <func_800DC910+0x2dc>
    1eb0:	00000000 	nop
    1eb4:	11e10008 	beq	t7,at,1ed8 <func_800DC910+0x278>
    1eb8:	3c0c0000 	lui	t4,0x0
    1ebc:	24010002 	li	at,2
    1ec0:	11e10009 	beq	t7,at,1ee8 <func_800DC910+0x288>
    1ec4:	24010003 	li	at,3
    1ec8:	11e10007 	beq	t7,at,1ee8 <func_800DC910+0x288>
    1ecc:	00000000 	nop
    1ed0:	10000005 	b	1ee8 <func_800DC910+0x288>
    1ed4:	00000000 	nop
    1ed8:	258c0000 	addiu	t4,t4,0
    1edc:	3c010000 	lui	at,0x0
    1ee0:	10000003 	b	1ef0 <func_800DC910+0x290>
    1ee4:	ac2c0010 	sw	t4,16(at)
    1ee8:	3c010000 	lui	at,0x0
    1eec:	ac220010 	sw	v0,16(at)
    1ef0:	8fb90150 	lw	t9,336(sp)
    1ef4:	3c0100ff 	lui	at,0xff
    1ef8:	3421ffff 	ori	at,at,0xffff
    1efc:	8f22000c 	lw	v0,12(t9)
    1f00:	02401825 	move	v1,s2
    1f04:	3c190000 	lui	t9,0x0
    1f08:	8c4d0000 	lw	t5,0(v0)
    1f0c:	8c580004 	lw	t8,4(v0)
    1f10:	26520008 	addiu	s2,s2,8
    1f14:	000d7100 	sll	t6,t5,0x4
    1f18:	01d80019 	multu	t6,t8
    1f1c:	00002012 	mflo	a0
    1f20:	00817824 	and	t7,a0,at
    1f24:	3c010b00 	lui	at,0xb00
    1f28:	01e16025 	or	t4,t7,at
    1f2c:	ac6c0000 	sw	t4,0(v1)
    1f30:	8f390010 	lw	t9,16(t9)
    1f34:	ac790004 	sw	t9,4(v1)
    1f38:	8fa300c0 	lw	v1,192(sp)
    1f3c:	53c0017f 	beqzl	s8,253c <L800DCDA0+0x44c>
    1f40:	24010001 	li	at,1
    1f44:	afa00140 	sw	zero,320(sp)
    1f48:	afa0013c 	sw	zero,316(sp)
    1f4c:	8d660008 	lw	a2,8(t3)
    1f50:	8fae0150 	lw	t6,336(sp)
    1f54:	03c92023 	subu	a0,s8,t1
    1f58:	afa400fc 	sw	a0,252(sp)
    1f5c:	8fad0100 	lw	t5,256(sp)
    1f60:	8dc80000 	lw	t0,0(t6)
    1f64:	30d3000f 	andi	s3,a2,0xf
    1f68:	0000a025 	move	s4,zero
    1f6c:	01a61823 	subu	v1,t5,a2
    1f70:	16600005 	bnez	s3,1f88 <func_800DC910+0x328>
    1f74:	00083f02 	srl	a3,t0,0x1c
    1f78:	91780000 	lbu	t8,0(t3)
    1f7c:	57000003 	bnezl	t8,1f8c <func_800DC910+0x32c>
    1f80:	240f0010 	li	t7,16
    1f84:	24130010 	li	s3,16
    1f88:	240f0010 	li	t7,16
    1f8c:	01f32823 	subu	a1,t7,s3
    1f90:	0083082a 	slt	at,a0,v1
    1f94:	1020000c 	beqz	at,1fc8 <func_800DC910+0x368>
    1f98:	00a0b025 	move	s6,a1
    1f9c:	00851023 	subu	v0,a0,a1
    1fa0:	2442000f 	addiu	v0,v0,15
    1fa4:	04410002 	bgez	v0,1fb0 <func_800DC910+0x350>
    1fa8:	00400821 	move	at,v0
    1fac:	2441000f 	addiu	at,v0,15
    1fb0:	00011103 	sra	v0,at,0x4
    1fb4:	00028100 	sll	s0,v0,0x4
    1fb8:	00b06021 	addu	t4,a1,s0
    1fbc:	00408825 	move	s1,v0
    1fc0:	10000014 	b	2014 <func_800DC910+0x3b4>
    1fc4:	0184b823 	subu	s7,t4,a0
    1fc8:	00658023 	subu	s0,v1,a1
    1fcc:	1e000003 	bgtz	s0,1fdc <func_800DC910+0x37c>
    1fd0:	0000b825 	move	s7,zero
    1fd4:	00008025 	move	s0,zero
    1fd8:	0060b025 	move	s6,v1
    1fdc:	8fb9014c 	lw	t9,332(sp)
    1fe0:	2611000f 	addiu	s1,s0,15
    1fe4:	06210002 	bgez	s1,1ff0 <func_800DC910+0x390>
    1fe8:	02200821 	move	at,s1
    1fec:	2621000f 	addiu	at,s1,15
    1ff0:	00018903 	sra	s1,at,0x4
    1ff4:	8f2d0008 	lw	t5,8(t9)
    1ff8:	240e0001 	li	t6,1
    1ffc:	24180001 	li	t8,1
    2000:	51a00004 	beqzl	t5,2014 <func_800DC910+0x3b4>
    2004:	afb80140 	sw	t8,320(sp)
    2008:	10000002 	b	2014 <func_800DC910+0x3b4>
    200c:	afae013c 	sw	t6,316(sp)
    2010:	afb80140 	sw	t8,320(sp)
    2014:	2ce10006 	sltiu	at,a3,6
    2018:	10200035 	beqz	at,20f0 <L800DCDA0>
    201c:	00077880 	sll	t7,a3,0x2
    2020:	3c010000 	lui	at,0x0
    2024:	002f0821 	addu	at,at,t7
    2028:	8c2f0000 	lw	t7,0(at)
    202c:	01e00008 	jr	t7
    2030:	00000000 	nop

00002034 <L800DCCE4>:
    2034:	240c0010 	li	t4,16
    2038:	240a0009 	li	t2,9
    203c:	afac00cc 	sw	t4,204(sp)
    2040:	1000002b 	b	20f0 <L800DCDA0>
    2044:	afa000c8 	sw	zero,200(sp)

00002048 <L800DCCF8>:
    2048:	24190010 	li	t9,16
    204c:	240a0005 	li	t2,5
    2050:	afb900cc 	sw	t9,204(sp)
    2054:	10000026 	b	20f0 <L800DCDA0>
    2058:	afa000c8 	sw	zero,200(sp)

0000205c <L800DCD0C>:
    205c:	240d0010 	li	t5,16
    2060:	240a0010 	li	t2,16
    2064:	afad00cc 	sw	t5,204(sp)
    2068:	10000021 	b	20f0 <L800DCDA0>
    206c:	afa000c8 	sw	zero,200(sp)

00002070 <L800DCD20>:
    2070:	02402025 	move	a0,s2
    2074:	001e3040 	sll	a2,s8,0x1
    2078:	24c60020 	addiu	a2,a2,32
    207c:	26520008 	addiu	s2,s2,8
    2080:	24050580 	li	a1,1408
    2084:	afa00138 	sw	zero,312(sp)
    2088:	afa00120 	sw	zero,288(sp)
    208c:	03c04825 	move	t1,s8
    2090:	03c0a825 	move	s5,s8
    2094:	afbe0104 	sw	s8,260(sp)
    2098:	0c000000 	jal	0 <pad_800DACB0>
    209c:	afaa00d4 	sw	t2,212(sp)
    20a0:	8fa90104 	lw	t1,260(sp)
    20a4:	8faa00d4 	lw	t2,212(sp)
    20a8:	100000fe 	b	24a4 <L800DCDA0+0x3b4>
    20ac:	8fab0168 	lw	t3,360(sp)

000020b0 <L800DCD60>:
    20b0:	02402025 	move	a0,s2
    20b4:	001e3040 	sll	a2,s8,0x1
    20b8:	24c60020 	addiu	a2,a2,32
    20bc:	26520008 	addiu	s2,s2,8
    20c0:	24050580 	li	a1,1408
    20c4:	afa00138 	sw	zero,312(sp)
    20c8:	afa00120 	sw	zero,288(sp)
    20cc:	03c04825 	move	t1,s8
    20d0:	03c0a825 	move	s5,s8
    20d4:	afbe0104 	sw	s8,260(sp)
    20d8:	0c000000 	jal	0 <pad_800DACB0>
    20dc:	afaa00d4 	sw	t2,212(sp)
    20e0:	8fa90104 	lw	t1,260(sp)
    20e4:	8faa00d4 	lw	t2,212(sp)
    20e8:	100000ee 	b	24a4 <L800DCDA0+0x3b4>
    20ec:	8fab0168 	lw	t3,360(sp)

000020f0 <L800DCDA0>:
    20f0:	12200044 	beqz	s1,2204 <L800DCDA0+0x114>
    20f4:	8fae00cc 	lw	t6,204(sp)
    20f8:	00cec021 	addu	t8,a2,t6
    20fc:	03131823 	subu	v1,t8,s3
    2100:	04610002 	bgez	v1,210c <L800DCDA0+0x1c>
    2104:	00600821 	move	at,v1
    2108:	2461000f 	addiu	at,v1,15
    210c:	00011903 	sra	v1,at,0x4
    2110:	00081100 	sll	v0,t0,0x4
    2114:	00021782 	srl	v0,v0,0x1e
    2118:	14400008 	bnez	v0,213c <L800DCDA0+0x4c>
    211c:	24010001 	li	at,1
    2120:	006a0019 	multu	v1,t2
    2124:	8faf00c8 	lw	t7,200(sp)
    2128:	8fad0110 	lw	t5,272(sp)
    212c:	00006012 	mflo	t4
    2130:	01ecc821 	addu	t9,t7,t4
    2134:	1000001a 	b	21a0 <L800DCDA0+0xb0>
    2138:	032d2821 	addu	a1,t9,t5
    213c:	14410003 	bne	v0,at,214c <L800DCDA0+0x5c>
    2140:	00000000 	nop
    2144:	10000201 	b	294c <L800DCDA0+0x85c>
    2148:	02401025 	move	v0,s2
    214c:	006a0019 	multu	v1,t2
    2150:	8fae00c8 	lw	t6,200(sp)
    2154:	8fac0110 	lw	t4,272(sp)
    2158:	2401fff0 	li	at,-16
    215c:	8fa60138 	lw	a2,312(sp)
    2160:	25670001 	addiu	a3,t3,1
    2164:	afa20010 	sw	v0,16(sp)
    2168:	afa90104 	sw	t1,260(sp)
    216c:	afaa00d4 	sw	t2,212(sp)
    2170:	0000c012 	mflo	t8
    2174:	01d87821 	addu	t7,t6,t8
    2178:	01ec2021 	addu	a0,t7,t4
    217c:	022a0019 	multu	s1,t2
    2180:	00002812 	mflo	a1
    2184:	24a5001f 	addiu	a1,a1,31
    2188:	0c000000 	jal	0 <pad_800DACB0>
    218c:	00a12824 	and	a1,a1,at
    2190:	8fa90104 	lw	t1,260(sp)
    2194:	8faa00d4 	lw	t2,212(sp)
    2198:	8fab0168 	lw	t3,360(sp)
    219c:	00402825 	move	a1,v0
    21a0:	14a00003 	bnez	a1,21b0 <L800DCDA0+0xc0>
    21a4:	00000000 	nop
    21a8:	100001e8 	b	294c <L800DCDA0+0x85c>
    21ac:	02401025 	move	v0,s2
    21b0:	022a0019 	multu	s1,t2
    21b4:	3c011400 	lui	at,0x1400
    21b8:	240f0940 	li	t7,2368
    21bc:	30a8000f 	andi	t0,a1,0xf
    21c0:	02402025 	move	a0,s2
    21c4:	00a86023 	subu	t4,a1,t0
    21c8:	ac8c0004 	sw	t4,4(a0)
    21cc:	26520008 	addiu	s2,s2,8
    21d0:	00001012 	mflo	v0
    21d4:	2442001f 	addiu	v0,v0,31
    21d8:	3042fff0 	andi	v0,v0,0xfff0
    21dc:	0002c903 	sra	t9,v0,0x4
    21e0:	332d00ff 	andi	t5,t9,0xff
    21e4:	000d7400 	sll	t6,t5,0x10
    21e8:	01c1c025 	or	t8,t6,at
    21ec:	01e26823 	subu	t5,t7,v0
    21f0:	31aeffff 	andi	t6,t5,0xffff
    21f4:	030e7825 	or	t7,t8,t6
    21f8:	ac8f0000 	sw	t7,0(a0)
    21fc:	10000004 	b	2210 <L800DCDA0+0x120>
    2200:	91660000 	lbu	a2,0(t3)
    2204:	00008025 	move	s0,zero
    2208:	00004025 	move	t0,zero
    220c:	91660000 	lbu	a2,0(t3)
    2210:	10c0000b 	beqz	a2,2240 <L800DCDA0+0x150>
    2214:	02401025 	move	v0,s2
    2218:	3c190f00 	lui	t9,0xf00
    221c:	ac590000 	sw	t9,0(v0)
    2220:	8fad0150 	lw	t5,336(sp)
    2224:	240f0002 	li	t7,2
    2228:	26520008 	addiu	s2,s2,8
    222c:	8db80008 	lw	t8,8(t5)
    2230:	270e0010 	addiu	t6,t8,16
    2234:	ac4e0004 	sw	t6,4(v0)
    2238:	afaf0138 	sw	t7,312(sp)
    223c:	a1600000 	sb	zero,0(t3)
    2240:	8fac0150 	lw	t4,336(sp)
    2244:	0013c840 	sll	t9,s3,0x1
    2248:	2401fff0 	li	at,-16
    224c:	8d870000 	lw	a3,0(t4)
    2250:	15200003 	bnez	t1,2260 <L800DCDA0+0x170>
    2254:	00073f02 	srl	a3,a3,0x1c
    2258:	10000003 	b	2268 <L800DCDA0+0x178>
    225c:	afb90120 	sw	t9,288(sp)
    2260:	26b4001f 	addiu	s4,s5,31
    2264:	0281a024 	and	s4,s4,at
    2268:	10e00007 	beqz	a3,2288 <L800DCDA0+0x198>
    226c:	24010001 	li	at,1
    2270:	10e10042 	beq	a3,at,237c <L800DCDA0+0x28c>
    2274:	24010003 	li	at,3
    2278:	10e10021 	beq	a3,at,2300 <L800DCDA0+0x210>
    227c:	00000000 	nop
    2280:	10000059 	b	23e8 <L800DCDA0+0x2f8>
    2284:	00000000 	nop
    2288:	022a0019 	multu	s1,t2
    228c:	240f0940 	li	t7,2368
    2290:	3c010800 	lui	at,0x800
    2294:	02401025 	move	v0,s2
    2298:	26990580 	addiu	t9,s4,1408
    229c:	26520008 	addiu	s2,s2,8
    22a0:	02401825 	move	v1,s2
    22a4:	26520008 	addiu	s2,s2,8
    22a8:	00006812 	mflo	t5
    22ac:	25b8001f 	addiu	t8,t5,31
    22b0:	330efff0 	andi	t6,t8,0xfff0
    22b4:	01ee6823 	subu	t5,t7,t6
    22b8:	01a8c021 	addu	t8,t5,t0
    22bc:	330fffff 	andi	t7,t8,0xffff
    22c0:	01e17025 	or	t6,t7,at
    22c4:	0010c040 	sll	t8,s0,0x1
    22c8:	330fffff 	andi	t7,t8,0xffff
    22cc:	ac4e0000 	sw	t6,0(v0)
    22d0:	00196c00 	sll	t5,t9,0x10
    22d4:	01af7025 	or	t6,t5,t7
    22d8:	ac4e0004 	sw	t6,4(v0)
    22dc:	8fac0138 	lw	t4,312(sp)
    22e0:	3c010100 	lui	at,0x100
    22e4:	319900ff 	andi	t9,t4,0xff
    22e8:	0019c400 	sll	t8,t9,0x10
    22ec:	03016825 	or	t5,t8,at
    22f0:	ac6d0000 	sw	t5,0(v1)
    22f4:	8d6f000c 	lw	t7,12(t3)
    22f8:	1000003b 	b	23e8 <L800DCDA0+0x2f8>
    22fc:	ac6f0004 	sw	t7,4(v1)
    2300:	022a0019 	multu	s1,t2
    2304:	24180940 	li	t8,2368
    2308:	3c010800 	lui	at,0x800
    230c:	02401025 	move	v0,s2
    2310:	268f0580 	addiu	t7,s4,1408
    2314:	26520008 	addiu	s2,s2,8
    2318:	02401825 	move	v1,s2
    231c:	26520008 	addiu	s2,s2,8
    2320:	00007012 	mflo	t6
    2324:	25cc001f 	addiu	t4,t6,31
    2328:	3199fff0 	andi	t9,t4,0xfff0
    232c:	03197023 	subu	t6,t8,t9
    2330:	01c86021 	addu	t4,t6,t0
    2334:	3198ffff 	andi	t8,t4,0xffff
    2338:	0301c825 	or	t9,t8,at
    233c:	00106040 	sll	t4,s0,0x1
    2340:	3198ffff 	andi	t8,t4,0xffff
    2344:	ac590000 	sw	t9,0(v0)
    2348:	000f7400 	sll	t6,t7,0x10
    234c:	01d8c825 	or	t9,t6,t8
    2350:	ac590004 	sw	t9,4(v0)
    2354:	8fad0138 	lw	t5,312(sp)
    2358:	3c010100 	lui	at,0x100
    235c:	35af0004 	ori	t7,t5,0x4
    2360:	31ec00ff 	andi	t4,t7,0xff
    2364:	000c7400 	sll	t6,t4,0x10
    2368:	01c1c025 	or	t8,t6,at
    236c:	ac780000 	sw	t8,0(v1)
    2370:	8d79000c 	lw	t9,12(t3)
    2374:	1000001c 	b	23e8 <L800DCDA0+0x2f8>
    2378:	ac790004 	sw	t9,4(v1)
    237c:	022a0019 	multu	s1,t2
    2380:	240e0940 	li	t6,2368
    2384:	02402025 	move	a0,s2
    2388:	26520008 	addiu	s2,s2,8
    238c:	00002825 	move	a1,zero
    2390:	26870580 	addiu	a3,s4,1408
    2394:	afa90104 	sw	t1,260(sp)
    2398:	afaa00d4 	sw	t2,212(sp)
    239c:	00006812 	mflo	t5
    23a0:	25af001f 	addiu	t7,t5,31
    23a4:	31ecfff0 	andi	t4,t7,0xfff0
    23a8:	01ccc023 	subu	t8,t6,t4
    23ac:	0018cc00 	sll	t9,t8,0x10
    23b0:	00196c03 	sra	t5,t9,0x10
    23b4:	00107840 	sll	t7,s0,0x1
    23b8:	afaf0010 	sw	t7,16(sp)
    23bc:	0c000000 	jal	0 <pad_800DACB0>
    23c0:	01a83021 	addu	a2,t5,t0
    23c4:	8fab0168 	lw	t3,360(sp)
    23c8:	02402025 	move	a0,s2
    23cc:	26520008 	addiu	s2,s2,8
    23d0:	8fa50138 	lw	a1,312(sp)
    23d4:	0c000000 	jal	0 <pad_800DACB0>
    23d8:	8d66000c 	lw	a2,12(t3)
    23dc:	8fa90104 	lw	t1,260(sp)
    23e0:	8faa00d4 	lw	t2,212(sp)
    23e4:	8fab0168 	lw	t3,360(sp)
    23e8:	11200013 	beqz	t1,2438 <L800DCDA0+0x348>
    23ec:	02401025 	move	v0,s2
    23f0:	00137040 	sll	t6,s3,0x1
    23f4:	028e6021 	addu	t4,s4,t6
    23f8:	3c0100ff 	lui	at,0xff
    23fc:	3421ffff 	ori	at,at,0xffff
    2400:	25980580 	addiu	t8,t4,1408
    2404:	0301c824 	and	t9,t8,at
    2408:	3c010a00 	lui	at,0xa00
    240c:	03216825 	or	t5,t9,at
    2410:	0216c021 	addu	t8,s0,s6
    2414:	0317c823 	subu	t9,t8,s7
    2418:	ac4d0000 	sw	t5,0(v0)
    241c:	00196840 	sll	t5,t9,0x1
    2420:	26ae0580 	addiu	t6,s5,1408
    2424:	000e6400 	sll	t4,t6,0x10
    2428:	31afffff 	andi	t7,t5,0xffff
    242c:	018f7025 	or	t6,t4,t7
    2430:	ac4e0004 	sw	t6,4(v0)
    2434:	26520008 	addiu	s2,s2,8
    2438:	8fb90138 	lw	t9,312(sp)
    243c:	0216c021 	addu	t8,s0,s6
    2440:	03171823 	subu	v1,t8,s7
    2444:	24010001 	li	at,1
    2448:	13210007 	beq	t9,at,2468 <L800DCDA0+0x378>
    244c:	01234821 	addu	t1,t1,v1
    2450:	3b220002 	xori	v0,t9,0x2
    2454:	2c420001 	sltiu	v0,v0,1
    2458:	14400009 	bnez	v0,2480 <L800DCDA0+0x390>
    245c:	afa00138 	sw	zero,312(sp)
    2460:	1000000a 	b	248c <L800DCDA0+0x39c>
    2464:	00037840 	sll	t7,v1,0x1
    2468:	240d0020 	li	t5,32
    246c:	0010a840 	sll	s5,s0,0x1
    2470:	afad0120 	sw	t5,288(sp)
    2474:	26b50020 	addiu	s5,s5,32
    2478:	1000000a 	b	24a4 <L800DCDA0+0x3b4>
    247c:	afa00138 	sw	zero,312(sp)
    2480:	00036040 	sll	t4,v1,0x1
    2484:	10000007 	b	24a4 <L800DCDA0+0x3b4>
    2488:	0195a821 	addu	s5,t4,s5
    248c:	52a00004 	beqzl	s5,24a0 <L800DCDA0+0x3b0>
    2490:	0263a821 	addu	s5,s3,v1
    2494:	10000003 	b	24a4 <L800DCDA0+0x3b4>
    2498:	01f5a821 	addu	s5,t7,s5
    249c:	0263a821 	addu	s5,s3,v1
    24a0:	0015a840 	sll	s5,s5,0x1
    24a4:	8fae0140 	lw	t6,320(sp)
    24a8:	8faf013c 	lw	t7,316(sp)
    24ac:	8fac00fc 	lw	t4,252(sp)
    24b0:	11c00014 	beqz	t6,2504 <L800DCDA0+0x414>
    24b4:	02402025 	move	a0,s2
    24b8:	03c93023 	subu	a2,s8,t1
    24bc:	24180001 	li	t8,1
    24c0:	afb80088 	sw	t8,136(sp)
    24c4:	00063040 	sll	a2,a2,0x1
    24c8:	26520008 	addiu	s2,s2,8
    24cc:	26a50580 	addiu	a1,s5,1408
    24d0:	0c000000 	jal	0 <pad_800DACB0>
    24d4:	afaa00d4 	sw	t2,212(sp)
    24d8:	8fa2009c 	lw	v0,156(sp)
    24dc:	904d00c0 	lbu	t5,192(v0)
    24e0:	35ac0020 	ori	t4,t5,0x20
    24e4:	a04c00c0 	sb	t4,192(v0)
    24e8:	8fa50160 	lw	a1,352(sp)
    24ec:	0c000000 	jal	0 <pad_800DACB0>
    24f0:	8fa40178 	lw	a0,376(sp)
    24f4:	8faa00d4 	lw	t2,212(sp)
    24f8:	8fab0168 	lw	t3,360(sp)
    24fc:	1000000e 	b	2538 <L800DCDA0+0x448>
    2500:	8fa300c0 	lw	v1,192(sp)
    2504:	11e00006 	beqz	t7,2520 <L800DCDA0+0x430>
    2508:	240e0001 	li	t6,1
    250c:	a16e0000 	sb	t6,0(t3)
    2510:	8fb8014c 	lw	t8,332(sp)
    2514:	8f190000 	lw	t9,0(t8)
    2518:	10000004 	b	252c <L800DCDA0+0x43c>
    251c:	ad790008 	sw	t9,8(t3)
    2520:	8d6d0008 	lw	t5,8(t3)
    2524:	01ac7821 	addu	t7,t5,t4
    2528:	ad6f0008 	sw	t7,8(t3)
    252c:	553efe86 	bnel	t1,s8,1f48 <func_800DC910+0x2e8>
    2530:	afa00140 	sw	zero,320(sp)
    2534:	8fa300c0 	lw	v1,192(sp)
    2538:	24010001 	li	at,1
    253c:	10610006 	beq	v1,at,2558 <L800DCDA0+0x468>
    2540:	8fae0120 	lw	t6,288(sp)
    2544:	24010002 	li	at,2
    2548:	10610006 	beq	v1,at,2564 <L800DCDA0+0x474>
    254c:	8fb900bc 	lw	t9,188(sp)
    2550:	1000003b 	b	2640 <L800DCDA0+0x550>
    2554:	8faf0088 	lw	t7,136(sp)
    2558:	25d80580 	addiu	t8,t6,1408
    255c:	10000037 	b	263c <L800DCDA0+0x54c>
    2560:	a7b800ae 	sh	t8,174(sp)
    2564:	13200006 	beqz	t9,2580 <L800DCDA0+0x490>
    2568:	02402025 	move	a0,s2
    256c:	24010001 	li	at,1
    2570:	13210021 	beq	t9,at,25f8 <L800DCDA0+0x508>
    2574:	02402025 	move	a0,s2
    2578:	10000031 	b	2640 <L800DCDA0+0x550>
    257c:	8faf0088 	lw	t7,136(sp)
    2580:	8fa50120 	lw	a1,288(sp)
    2584:	240d03e0 	li	t5,992
    2588:	a7ad00ae 	sh	t5,174(sp)
    258c:	240603e0 	li	a2,992
    2590:	26520008 	addiu	s2,s2,8
    2594:	afaa00d4 	sw	t2,212(sp)
    2598:	24a50580 	addiu	a1,a1,1408
    259c:	07c10003 	bgez	s8,25ac <L800DCDA0+0x4bc>
    25a0:	001e3843 	sra	a3,s8,0x1
    25a4:	27c10001 	addiu	at,s8,1
    25a8:	00013843 	sra	a3,at,0x1
    25ac:	2401fff8 	li	at,-8
    25b0:	24e70007 	addiu	a3,a3,7
    25b4:	0c000000 	jal	0 <pad_800DACB0>
    25b8:	00e13824 	and	a3,a3,at
    25bc:	8fac0088 	lw	t4,136(sp)
    25c0:	8faa00d4 	lw	t2,212(sp)
    25c4:	8fab0168 	lw	t3,360(sp)
    25c8:	11800009 	beqz	t4,25f0 <L800DCDA0+0x500>
    25cc:	afbe00b0 	sw	s8,176(sp)
    25d0:	02402025 	move	a0,s2
    25d4:	26520008 	addiu	s2,s2,8
    25d8:	27c503e0 	addiu	a1,s8,992
    25dc:	27c60010 	addiu	a2,s8,16
    25e0:	0c000000 	jal	0 <pad_800DACB0>
    25e4:	afaa00d4 	sw	t2,212(sp)
    25e8:	8faa00d4 	lw	t2,212(sp)
    25ec:	8fab0168 	lw	t3,360(sp)
    25f0:	10000012 	b	263c <L800DCDA0+0x54c>
    25f4:	8fa300c0 	lw	v1,192(sp)
    25f8:	8fa50120 	lw	a1,288(sp)
    25fc:	8fa600b0 	lw	a2,176(sp)
    2600:	26520008 	addiu	s2,s2,8
    2604:	afaa00d4 	sw	t2,212(sp)
    2608:	24a50580 	addiu	a1,a1,1408
    260c:	24c603e0 	addiu	a2,a2,992
    2610:	07c10003 	bgez	s8,2620 <L800DCDA0+0x530>
    2614:	001e3843 	sra	a3,s8,0x1
    2618:	27c10001 	addiu	at,s8,1
    261c:	00013843 	sra	a3,at,0x1
    2620:	2401fff8 	li	at,-8
    2624:	24e70007 	addiu	a3,a3,7
    2628:	0c000000 	jal	0 <pad_800DACB0>
    262c:	00e13824 	and	a3,a3,at
    2630:	8faa00d4 	lw	t2,212(sp)
    2634:	8fab0168 	lw	t3,360(sp)
    2638:	8fa300c0 	lw	v1,192(sp)
    263c:	8faf0088 	lw	t7,136(sp)
    2640:	8fb800bc 	lw	t8,188(sp)
    2644:	11e00007 	beqz	t7,2664 <L800DCDA0+0x574>
    2648:	27190001 	addiu	t9,t8,1
    264c:	8fb10164 	lw	s1,356(sp)
    2650:	8fb00168 	lw	s0,360(sp)
    2654:	240a0001 	li	t2,1
    2658:	8e230000 	lw	v1,0(s1)
    265c:	10000009 	b	2684 <L800DCDA0+0x594>
    2660:	afb20174 	sw	s2,372(sp)
    2664:	1723fdf3 	bne	t9,v1,1e34 <func_800DC910+0x1d4>
    2668:	afb900bc 	sw	t9,188(sp)
    266c:	8fb10164 	lw	s1,356(sp)
    2670:	afaa00d4 	sw	t2,212(sp)
    2674:	240a0001 	li	t2,1
    2678:	8e230000 	lw	v1,0(s1)
    267c:	afb20174 	sw	s2,372(sp)
    2680:	8fb00168 	lw	s0,360(sp)
    2684:	00036040 	sll	t4,v1,0x1
    2688:	000c7fc2 	srl	t7,t4,0x1f
    268c:	8fb20174 	lw	s2,372(sp)
    2690:	154f0005 	bne	t2,t7,26a8 <L800DCDA0+0x5b8>
    2694:	00004825 	move	t1,zero
    2698:	922e0000 	lbu	t6,0(s1)
    269c:	24090001 	li	t1,1
    26a0:	31d8ffbf 	andi	t8,t6,0xffbf
    26a4:	a2380000 	sb	t8,0(s1)
    26a8:	8fb40170 	lw	s4,368(sp)
    26ac:	97b900ae 	lhu	t9,174(sp)
    26b0:	02402025 	move	a0,s2
    26b4:	0014a040 	sll	s4,s4,0x1
    26b8:	02803025 	move	a2,s4
    26bc:	02002825 	move	a1,s0
    26c0:	97a70136 	lhu	a3,310(sp)
    26c4:	afa90014 	sw	t1,20(sp)
    26c8:	afa90138 	sw	t1,312(sp)
    26cc:	afb00168 	sw	s0,360(sp)
    26d0:	afb10164 	sw	s1,356(sp)
    26d4:	0c000000 	jal	0 <pad_800DACB0>
    26d8:	afb90010 	sw	t9,16(sp)
    26dc:	8fad008c 	lw	t5,140(sp)
    26e0:	24010003 	li	at,3
    26e4:	00409025 	move	s2,v0
    26e8:	15a10007 	bne	t5,at,2708 <L800DCDA0+0x618>
    26ec:	00402025 	move	a0,v0
    26f0:	240503c0 	li	a1,960
    26f4:	240603c0 	li	a2,960
    26f8:	02803825 	move	a3,s4
    26fc:	afa00010 	sw	zero,16(sp)
    2700:	0c000000 	jal	0 <pad_800DACB0>
    2704:	24520008 	addiu	s2,v0,8
    2708:	8fac008c 	lw	t4,140(sp)
    270c:	24010002 	li	at,2
    2710:	02402025 	move	a0,s2
    2714:	15810005 	bne	t4,at,272c <L800DCDA0+0x63c>
    2718:	240503c0 	li	a1,960
    271c:	240603c0 	li	a2,960
    2720:	02803825 	move	a3,s4
    2724:	0c000000 	jal	0 <pad_800DACB0>
    2728:	26520008 	addiu	s2,s2,8
    272c:	8fb60164 	lw	s6,356(sp)
    2730:	02402025 	move	a0,s2
    2734:	240603c0 	li	a2,960
    2738:	92c50002 	lbu	a1,2(s6)
    273c:	00003825 	move	a3,zero
    2740:	268f0020 	addiu	t7,s4,32
    2744:	10a00007 	beqz	a1,2764 <L800DCDA0+0x674>
    2748:	28a10010 	slti	at,a1,16
    274c:	10200002 	beqz	at,2758 <L800DCDA0+0x668>
    2750:	26520008 	addiu	s2,s2,8
    2754:	24050010 	li	a1,16
    2758:	0c000000 	jal	0 <pad_800DACB0>
    275c:	afaf0010 	sw	t7,16(sp)
    2760:	8fb60164 	lw	s6,356(sp)
    2764:	8ec60014 	lw	a2,20(s6)
    2768:	02402025 	move	a0,s2
    276c:	02802825 	move	a1,s4
    2770:	50c0000d 	beqzl	a2,27a8 <L800DCDA0+0x6b8>
    2774:	8fb10168 	lw	s1,360(sp)
    2778:	0c000000 	jal	0 <pad_800DACB0>
    277c:	26520008 	addiu	s2,s2,8
    2780:	8fae0168 	lw	t6,360(sp)
    2784:	02402025 	move	a0,s2
    2788:	26520008 	addiu	s2,s2,8
    278c:	8dc7000c 	lw	a3,12(t6)
    2790:	8fa50138 	lw	a1,312(sp)
    2794:	240603c0 	li	a2,960
    2798:	0c000000 	jal	0 <pad_800DACB0>
    279c:	24e70040 	addiu	a3,a3,64
    27a0:	8fb60164 	lw	s6,356(sp)
    27a4:	8fb10168 	lw	s1,360(sp)
    27a8:	92d00007 	lbu	s0,7(s6)
    27ac:	96c3000e 	lhu	v1,14(s6)
    27b0:	8e33000c 	lw	s3,12(s1)
    27b4:	24180001 	li	t8,1
    27b8:	0060a825 	move	s5,v1
    27bc:	12000034 	beqz	s0,2890 <L800DCDA0+0x7a0>
    27c0:	267300e0 	addiu	s3,s3,224
    27c4:	10600032 	beqz	v1,2890 <L800DCDA0+0x7a0>
    27c8:	02402025 	move	a0,s2
    27cc:	240503c0 	li	a1,960
    27d0:	24060760 	li	a2,1888
    27d4:	02803825 	move	a3,s4
    27d8:	0c000000 	jal	0 <pad_800DACB0>
    27dc:	26520008 	addiu	s2,s2,8
    27e0:	8fb80168 	lw	t8,360(sp)
    27e4:	240f0760 	li	t7,1888
    27e8:	01f08823 	subu	s1,t7,s0
    27ec:	9319001a 	lbu	t9,26(t8)
    27f0:	02202825 	move	a1,s1
    27f4:	02402025 	move	a0,s2
    27f8:	1320000b 	beqz	t9,2828 <L800DCDA0+0x738>
    27fc:	02003025 	move	a2,s0
    2800:	240d0760 	li	t5,1888
    2804:	01b08823 	subu	s1,t5,s0
    2808:	02402025 	move	a0,s2
    280c:	26520008 	addiu	s2,s2,8
    2810:	02202825 	move	a1,s1
    2814:	0c000000 	jal	0 <pad_800DACB0>
    2818:	02003025 	move	a2,s0
    281c:	8fac0168 	lw	t4,360(sp)
    2820:	10000004 	b	2834 <L800DCDA0+0x744>
    2824:	a180001a 	sb	zero,26(t4)
    2828:	02603825 	move	a3,s3
    282c:	0c000000 	jal	0 <pad_800DACB0>
    2830:	26520008 	addiu	s2,s2,8
    2834:	02402025 	move	a0,s2
    2838:	02902823 	subu	a1,s4,s0
    283c:	24a503c0 	addiu	a1,a1,960
    2840:	26520008 	addiu	s2,s2,8
    2844:	02003025 	move	a2,s0
    2848:	0c000000 	jal	0 <pad_800DACB0>
    284c:	02603825 	move	a3,s3
    2850:	02402025 	move	a0,s2
    2854:	26520008 	addiu	s2,s2,8
    2858:	00142903 	sra	a1,s4,0x4
    285c:	02a03025 	move	a2,s5
    2860:	24070760 	li	a3,1888
    2864:	0c000000 	jal	0 <pad_800DACB0>
    2868:	afb10010 	sw	s1,16(sp)
    286c:	02402025 	move	a0,s2
    2870:	26520008 	addiu	s2,s2,8
    2874:	02202825 	move	a1,s1
    2878:	240603c0 	li	a2,960
    287c:	0c000000 	jal	0 <pad_800DACB0>
    2880:	02803825 	move	a3,s4
    2884:	8fb10168 	lw	s1,360(sp)
    2888:	10000002 	b	2894 <L800DCDA0+0x7a4>
    288c:	8fb60164 	lw	s6,356(sp)
    2890:	a238001a 	sb	t8,26(s1)
    2894:	92d90003 	lbu	t9,3(s6)
    2898:	02402025 	move	a0,s2
    289c:	02c02825 	move	a1,s6
    28a0:	17200004 	bnez	t9,28b4 <L800DCDA0+0x7c4>
    28a4:	02203025 	move	a2,s1
    28a8:	922d0002 	lbu	t5,2(s1)
    28ac:	51a00004 	beqzl	t5,28c0 <L800DCDA0+0x7d0>
    28b0:	92cc0004 	lbu	t4,4(s6)
    28b4:	1000000a 	b	28e0 <L800DCDA0+0x7f0>
    28b8:	24100001 	li	s0,1
    28bc:	92cc0004 	lbu	t4,4(s6)
    28c0:	15800005 	bnez	t4,28d8 <L800DCDA0+0x7e8>
    28c4:	00000000 	nop
    28c8:	922f0003 	lbu	t7,3(s1)
    28cc:	00008025 	move	s0,zero
    28d0:	11e00003 	beqz	t7,28e0 <L800DCDA0+0x7f0>
    28d4:	00000000 	nop
    28d8:	10000001 	b	28e0 <L800DCDA0+0x7f0>
    28dc:	24100002 	li	s0,2
    28e0:	8fb80138 	lw	t8,312(sp)
    28e4:	240e03c0 	li	t6,960
    28e8:	afae0010 	sw	t6,16(sp)
    28ec:	8fa70170 	lw	a3,368(sp)
    28f0:	afb00014 	sw	s0,20(sp)
    28f4:	0c000000 	jal	0 <pad_800DACB0>
    28f8:	afb80018 	sw	t8,24(sp)
    28fc:	8fb90164 	lw	t9,356(sp)
    2900:	8faf0138 	lw	t7,312(sp)
    2904:	00409025 	move	s2,v0
    2908:	972d0000 	lhu	t5,0(t9)
    290c:	02402025 	move	a0,s2
    2910:	02803825 	move	a3,s4
    2914:	31ac0001 	andi	t4,t5,0x1
    2918:	1180000b 	beqz	t4,2948 <L800DCDA0+0x858>
    291c:	31ee0001 	andi	t6,t7,0x1
    2920:	55c00003 	bnezl	t6,2930 <L800DCDA0+0x840>
    2924:	8fb80138 	lw	t8,312(sp)
    2928:	afa00138 	sw	zero,312(sp)
    292c:	8fb80138 	lw	t8,312(sp)
    2930:	8fa50164 	lw	a1,356(sp)
    2934:	8fa60168 	lw	a2,360(sp)
    2938:	afb00014 	sw	s0,20(sp)
    293c:	0c000000 	jal	0 <pad_800DACB0>
    2940:	afb80010 	sw	t8,16(sp)
    2944:	00409025 	move	s2,v0
    2948:	02401025 	move	v0,s2
    294c:	8fbf004c 	lw	ra,76(sp)
    2950:	8fb00028 	lw	s0,40(sp)
    2954:	8fb1002c 	lw	s1,44(sp)
    2958:	8fb20030 	lw	s2,48(sp)
    295c:	8fb30034 	lw	s3,52(sp)
    2960:	8fb40038 	lw	s4,56(sp)
    2964:	8fb5003c 	lw	s5,60(sp)
    2968:	8fb60040 	lw	s6,64(sp)
    296c:	8fb70044 	lw	s7,68(sp)
    2970:	8fbe0048 	lw	s8,72(sp)
    2974:	03e00008 	jr	ra
    2978:	27bd0160 	addiu	sp,sp,352

0000297c <func_800DD62C>:
    297c:	27bdffe0 	addiu	sp,sp,-32
    2980:	afa7002c 	sw	a3,44(sp)
    2984:	30e7ffff 	andi	a3,a3,0xffff
    2988:	afb00018 	sw	s0,24(sp)
    298c:	00808025 	move	s0,a0
    2990:	14e00006 	bnez	a3,29ac <func_800DD62C+0x30>
    2994:	afbf001c 	sw	ra,28(sp)
    2998:	240503c0 	li	a1,960
    299c:	0c000000 	jal	0 <pad_800DACB0>
    29a0:	26100008 	addiu	s0,s0,8
    29a4:	10000019 	b	2a0c <func_800DD62C+0x90>
    29a8:	8fbf001c 	lw	ra,28(sp)
    29ac:	97af0032 	lhu	t7,50(sp)
    29b0:	3c010800 	lui	at,0x800
    29b4:	02001025 	move	v0,s0
    29b8:	01e1c025 	or	t8,t7,at
    29bc:	3c0103c0 	lui	at,0x3c0
    29c0:	30d9ffff 	andi	t9,a2,0xffff
    29c4:	03214025 	or	t0,t9,at
    29c8:	ac480004 	sw	t0,4(v0)
    29cc:	ac580000 	sw	t8,0(v0)
    29d0:	8fa90034 	lw	t1,52(sp)
    29d4:	3c010500 	lui	at,0x500
    29d8:	26100008 	addiu	s0,s0,8
    29dc:	312a00ff 	andi	t2,t1,0xff
    29e0:	000a5c00 	sll	t3,t2,0x10
    29e4:	01616025 	or	t4,t3,at
    29e8:	30edffff 	andi	t5,a3,0xffff
    29ec:	018d7025 	or	t6,t4,t5
    29f0:	02001825 	move	v1,s0
    29f4:	ac6e0000 	sw	t6,0(v1)
    29f8:	8caf000c 	lw	t7,12(a1)
    29fc:	26100008 	addiu	s0,s0,8
    2a00:	25f80020 	addiu	t8,t7,32
    2a04:	ac780004 	sw	t8,4(v1)
    2a08:	8fbf001c 	lw	ra,28(sp)
    2a0c:	02001025 	move	v0,s0
    2a10:	8fb00018 	lw	s0,24(sp)
    2a14:	03e00008 	jr	ra
    2a18:	27bd0020 	addiu	sp,sp,32

00002a1c <func_800DD6CC>:
    2a1c:	27bdff98 	addiu	sp,sp,-104
    2a20:	afbf0024 	sw	ra,36(sp)
    2a24:	afb10020 	sw	s1,32(sp)
    2a28:	afb0001c 	sw	s0,28(sp)
    2a2c:	afa70074 	sw	a3,116(sp)
    2a30:	94a20008 	lhu	v0,8(a1)
    2a34:	94a3000a 	lhu	v1,10(a1)
    2a38:	94cd0010 	lhu	t5,16(a2)
    2a3c:	00021100 	sll	v0,v0,0x4
    2a40:	3048ffff 	andi	t0,v0,0xffff
    2a44:	00031900 	sll	v1,v1,0x4
    2a48:	00808025 	move	s0,a0
    2a4c:	00a08825 	move	s1,a1
    2a50:	90aa0005 	lbu	t2,5(a1)
    2a54:	94df0012 	lhu	ra,18(a2)
    2a58:	3063ffff 	andi	v1,v1,0xffff
    2a5c:	11a80012 	beq	t5,t0,2aa8 <func_800DD6CC+0x8c>
    2a60:	01a04825 	move	t1,t5
    2a64:	000710c3 	sra	v0,a3,0x3
    2a68:	01097023 	subu	t6,t0,t1
    2a6c:	01c2001a 	div	zero,t6,v0
    2a70:	00003812 	mflo	a3
    2a74:	00073c00 	sll	a3,a3,0x10
    2a78:	14400002 	bnez	v0,2a84 <func_800DD6CC+0x68>
    2a7c:	00000000 	nop
    2a80:	0007000d 	break	0x7
    2a84:	2401ffff 	li	at,-1
    2a88:	14410004 	bne	v0,at,2a9c <func_800DD6CC+0x80>
    2a8c:	3c018000 	lui	at,0x8000
    2a90:	15c10002 	bne	t6,at,2a9c <func_800DD6CC+0x80>
    2a94:	00000000 	nop
    2a98:	0006000d 	break	0x6
    2a9c:	00073c03 	sra	a3,a3,0x10
    2aa0:	10000005 	b	2ab8 <func_800DD6CC+0x9c>
    2aa4:	03e05825 	move	t3,ra
    2aa8:	8fa20074 	lw	v0,116(sp)
    2aac:	00003825 	move	a3,zero
    2ab0:	000210c3 	sra	v0,v0,0x3
    2ab4:	03e05825 	move	t3,ra
    2ab8:	13e30011 	beq	ra,v1,2b00 <func_800DD6CC+0xe4>
    2abc:	00602025 	move	a0,v1
    2ac0:	008b7823 	subu	t7,a0,t3
    2ac4:	01e2001a 	div	zero,t7,v0
    2ac8:	00004012 	mflo	t0
    2acc:	00084400 	sll	t0,t0,0x10
    2ad0:	14400002 	bnez	v0,2adc <func_800DD6CC+0xc0>
    2ad4:	00000000 	nop
    2ad8:	0007000d 	break	0x7
    2adc:	2401ffff 	li	at,-1
    2ae0:	14410004 	bne	v0,at,2af4 <func_800DD6CC+0xd8>
    2ae4:	3c018000 	lui	at,0x8000
    2ae8:	15e10002 	bne	t7,at,2af4 <func_800DD6CC+0xd8>
    2aec:	00000000 	nop
    2af0:	0006000d 	break	0x6
    2af4:	00084403 	sra	t0,t0,0x10
    2af8:	10000003 	b	2b08 <func_800DD6CC+0xec>
    2afc:	90cc0004 	lbu	t4,4(a2)
    2b00:	00004025 	move	t0,zero
    2b04:	90cc0004 	lbu	t4,4(a2)
    2b08:	afa90030 	sw	t1,48(sp)
    2b0c:	3158007f 	andi	t8,t2,0x7f
    2b10:	118a0013 	beq	t4,t2,2b60 <func_800DD6CC+0x144>
    2b14:	3189007f 	andi	t1,t4,0x7f
    2b18:	3189007f 	andi	t1,t4,0x7f
    2b1c:	0309c823 	subu	t9,t8,t1
    2b20:	00197240 	sll	t6,t9,0x9
    2b24:	01c2001a 	div	zero,t6,v0
    2b28:	00007812 	mflo	t7
    2b2c:	a7af0052 	sh	t7,82(sp)
    2b30:	14400002 	bnez	v0,2b3c <func_800DD6CC+0x120>
    2b34:	00000000 	nop
    2b38:	0007000d 	break	0x7
    2b3c:	2401ffff 	li	at,-1
    2b40:	14410004 	bne	v0,at,2b54 <func_800DD6CC+0x138>
    2b44:	3c018000 	lui	at,0x8000
    2b48:	15c10002 	bne	t6,at,2b54 <func_800DD6CC+0x138>
    2b4c:	00000000 	nop
    2b50:	0006000d 	break	0x6
    2b54:	a0ca0004 	sb	t2,4(a2)
    2b58:	10000002 	b	2b64 <func_800DD6CC+0x148>
    2b5c:	00000000 	nop
    2b60:	a7a00052 	sh	zero,82(sp)
    2b64:	00e20019 	multu	a3,v0
    2b68:	8fb80030 	lw	t8,48(sp)
    2b6c:	02002025 	move	a0,s0
    2b70:	3c011200 	lui	at,0x1200
    2b74:	3c050000 	lui	a1,0x0
    2b78:	0000c812 	mflo	t9
    2b7c:	03197021 	addu	t6,t8,t9
    2b80:	a4ce0010 	sh	t6,16(a2)
    2b84:	01020019 	multu	t0,v0
    2b88:	02001025 	move	v0,s0
    2b8c:	00007812 	mflo	t7
    2b90:	016fc021 	addu	t8,t3,t7
    2b94:	a4d80012 	sh	t8,18(a2)
    2b98:	96390000 	lhu	t9,0(s1)
    2b9c:	00097840 	sll	t7,t1,0x1
    2ba0:	31f800ff 	andi	t8,t7,0xff
    2ba4:	332e0001 	andi	t6,t9,0x1
    2ba8:	11c00027 	beqz	t6,2c48 <func_800DD6CC+0x22c>
    2bac:	0018cc00 	sll	t9,t8,0x10
    2bb0:	240505c0 	li	a1,1472
    2bb4:	240601a0 	li	a2,416
    2bb8:	26100008 	addiu	s0,s0,8
    2bbc:	a7a70056 	sh	a3,86(sp)
    2bc0:	a7a80054 	sh	t0,84(sp)
    2bc4:	afa90034 	sw	t1,52(sp)
    2bc8:	afab0028 	sw	t3,40(sp)
    2bcc:	0c000000 	jal	0 <pad_800DACB0>
    2bd0:	a7ac0050 	sh	t4,80(sp)
    2bd4:	87a80054 	lh	t0,84(sp)
    2bd8:	8fa90034 	lw	t1,52(sp)
    2bdc:	02002025 	move	a0,s0
    2be0:	87a70056 	lh	a3,86(sp)
    2be4:	26100008 	addiu	s0,s0,8
    2be8:	87a60052 	lh	a2,82(sp)
    2bec:	afa80010 	sw	t0,16(sp)
    2bf0:	0c000000 	jal	0 <pad_800DACB0>
    2bf4:	00092840 	sll	a1,t1,0x1
    2bf8:	02002025 	move	a0,s0
    2bfc:	26100008 	addiu	s0,s0,8
    2c00:	8fa50030 	lw	a1,48(sp)
    2c04:	0c000000 	jal	0 <pad_800DACB0>
    2c08:	8fa60028 	lw	a2,40(sp)
    2c0c:	8fa2007c 	lw	v0,124(sp)
    2c10:	24010001 	li	at,1
    2c14:	87ac0050 	lh	t4,80(sp)
    2c18:	10410007 	beq	v0,at,2c38 <func_800DD6CC+0x21c>
    2c1c:	3c050000 	lui	a1,0x0
    2c20:	24010002 	li	at,2
    2c24:	10410006 	beq	v0,at,2c40 <func_800DD6CC+0x224>
    2c28:	3c050000 	lui	a1,0x0
    2c2c:	3c050000 	lui	a1,0x0
    2c30:	10000018 	b	2c94 <func_800DD6CC+0x278>
    2c34:	8ca50000 	lw	a1,0(a1)
    2c38:	10000016 	b	2c94 <func_800DD6CC+0x278>
    2c3c:	8ca50000 	lw	a1,0(a1)
    2c40:	10000014 	b	2c94 <func_800DD6CC+0x278>
    2c44:	8ca50000 	lw	a1,0(a1)
    2c48:	87af0052 	lh	t7,82(sp)
    2c4c:	03217025 	or	t6,t9,at
    2c50:	26100008 	addiu	s0,s0,8
    2c54:	31f8ffff 	andi	t8,t7,0xffff
    2c58:	01d8c825 	or	t9,t6,t8
    2c5c:	ac590000 	sw	t9,0(v0)
    2c60:	3118ffff 	andi	t8,t0,0xffff
    2c64:	00077400 	sll	t6,a3,0x10
    2c68:	01d8c825 	or	t9,t6,t8
    2c6c:	ac590004 	sw	t9,4(v0)
    2c70:	3c0f1600 	lui	t7,0x1600
    2c74:	02001825 	move	v1,s0
    2c78:	ac6f0000 	sw	t7,0(v1)
    2c7c:	33f9ffff 	andi	t9,ra,0xffff
    2c80:	000dc400 	sll	t8,t5,0x10
    2c84:	03197825 	or	t7,t8,t9
    2c88:	ac6f0004 	sw	t7,4(v1)
    2c8c:	26100008 	addiu	s0,s0,8
    2c90:	8ca50000 	lw	a1,0(a1)
    2c94:	97ae007a 	lhu	t6,122(sp)
    2c98:	8e230000 	lw	v1,0(s1)
    2c9c:	02002025 	move	a0,s0
    2ca0:	000ec103 	sra	t8,t6,0x4
    2ca4:	331900ff 	andi	t9,t8,0xff
    2ca8:	3c0e0000 	lui	t6,0x0
    2cac:	8dce0000 	lw	t6,0(t6)
    2cb0:	00197c00 	sll	t7,t9,0x10
    2cb4:	8fb90074 	lw	t9,116(sp)
    2cb8:	01eec025 	or	t8,t7,t6
    2cbc:	26020008 	addiu	v0,s0,8
    2cc0:	332f00ff 	andi	t7,t9,0xff
    2cc4:	000f7200 	sll	t6,t7,0x8
    2cc8:	030ec825 	or	t9,t8,t6
    2ccc:	318f0080 	andi	t7,t4,0x80
    2cd0:	000fc1c3 	sra	t8,t7,0x7
    2cd4:	330e0001 	andi	t6,t8,0x1
    2cd8:	000e7900 	sll	t7,t6,0x4
    2cdc:	032fc025 	or	t8,t9,t7
    2ce0:	00037180 	sll	t6,v1,0x6
    2ce4:	000ecfc2 	srl	t9,t6,0x1f
    2ce8:	332f0001 	andi	t7,t9,0x1
    2cec:	000f70c0 	sll	t6,t7,0x3
    2cf0:	030ec825 	or	t9,t8,t6
    2cf4:	92380000 	lbu	t8,0(s1)
    2cf8:	ac850004 	sw	a1,4(a0)
    2cfc:	330e0001 	andi	t6,t8,0x1
    2d00:	000e7880 	sll	t7,t6,0x2
    2d04:	032fc025 	or	t8,t9,t7
    2d08:	00037100 	sll	t6,v1,0x4
    2d0c:	000ecfc2 	srl	t9,t6,0x1f
    2d10:	332f0001 	andi	t7,t9,0x1
    2d14:	000f7040 	sll	t6,t7,0x1
    2d18:	030ec825 	or	t9,t8,t6
    2d1c:	00037940 	sll	t7,v1,0x5
    2d20:	000fc7c2 	srl	t8,t7,0x1f
    2d24:	330e0001 	andi	t6,t8,0x1
    2d28:	032e7825 	or	t7,t9,t6
    2d2c:	ac8f0000 	sw	t7,0(a0)
    2d30:	8fbf0024 	lw	ra,36(sp)
    2d34:	8fb10020 	lw	s1,32(sp)
    2d38:	8fb0001c 	lw	s0,28(sp)
    2d3c:	03e00008 	jr	ra
    2d40:	27bd0068 	addiu	sp,sp,104

00002d44 <func_800DD9F4>:
    2d44:	27bdffe0 	addiu	sp,sp,-32
    2d48:	afbf001c 	sw	ra,28(sp)
    2d4c:	afb00018 	sw	s0,24(sp)
    2d50:	afa7002c 	sw	a3,44(sp)
    2d54:	8cae0000 	lw	t6,0(a1)
    2d58:	00808025 	move	s0,a0
    2d5c:	90a80006 	lbu	t0,6(a1)
    2d60:	000e7ac0 	sll	t7,t6,0xb
    2d64:	000fc782 	srl	t8,t7,0x1e
    2d68:	13000014 	beqz	t8,2dbc <func_800DD9F4+0x78>
    2d6c:	8cc30008 	lw	v1,8(a2)
    2d70:	00073040 	sll	a2,a3,0x1
    2d74:	24c6000f 	addiu	a2,a2,15
    2d78:	3c070000 	lui	a3,0x0
    2d7c:	02002025 	move	a0,s0
    2d80:	2401fff0 	li	at,-16
    2d84:	00c13024 	and	a2,a2,at
    2d88:	26100008 	addiu	s0,s0,8
    2d8c:	8ce70020 	lw	a3,32(a3)
    2d90:	0c000000 	jal	0 <pad_800DACB0>
    2d94:	24050580 	li	a1,1408
    2d98:	3c030000 	lui	v1,0x0
    2d9c:	8fa9002c 	lw	t1,44(sp)
    2da0:	24630000 	addiu	v1,v1,0
    2da4:	8c790020 	lw	t9,32(v1)
    2da8:	00095080 	sll	t2,t1,0x2
    2dac:	02001025 	move	v0,s0
    2db0:	032a5821 	addu	t3,t9,t2
    2db4:	1000003a 	b	2ea0 <func_800DD9F4+0x15c>
    2db8:	ac6b0020 	sw	t3,32(v1)
    2dbc:	3c0c1408 	lui	t4,0x1408
    2dc0:	358c0580 	ori	t4,t4,0x580
    2dc4:	02001025 	move	v0,s0
    2dc8:	ac4c0000 	sw	t4,0(v0)
    2dcc:	8cad0010 	lw	t5,16(a1)
    2dd0:	26100008 	addiu	s0,s0,8
    2dd4:	11000018 	beqz	t0,2e38 <func_800DD9F4+0xf4>
    2dd8:	ac4d0004 	sw	t5,4(v0)
    2ddc:	3c020000 	lui	v0,0x0
    2de0:	24420000 	addiu	v0,v0,0
    2de4:	00087083 	sra	t6,t0,0x2
    2de8:	004e7821 	addu	t7,v0,t6
    2dec:	91f80000 	lbu	t8,0(t7)
    2df0:	31190003 	andi	t9,t0,0x3
    2df4:	00595021 	addu	t2,v0,t9
    2df8:	00780019 	multu	v1,t8
    2dfc:	914b0000 	lbu	t3,0(t2)
    2e00:	00004812 	mflo	t1
	...
    2e0c:	012b001a 	div	zero,t1,t3
    2e10:	00001812 	mflo	v1
    2e14:	15600002 	bnez	t3,2e20 <func_800DD9F4+0xdc>
    2e18:	00000000 	nop
    2e1c:	0007000d 	break	0x7
    2e20:	2401ffff 	li	at,-1
    2e24:	15610004 	bne	t3,at,2e38 <func_800DD9F4+0xf4>
    2e28:	3c018000 	lui	at,0x8000
    2e2c:	15210002 	bne	t1,at,2e38 <func_800DD9F4+0xf4>
    2e30:	00000000 	nop
    2e34:	0006000d 	break	0x6
    2e38:	8fad002c 	lw	t5,44(sp)
    2e3c:	3063003f 	andi	v1,v1,0x3f
    2e40:	240c0040 	li	t4,64
    2e44:	01831023 	subu	v0,t4,v1
    2e48:	004d082a 	slt	at,v0,t5
    2e4c:	10200012 	beqz	at,2e98 <func_800DD9F4+0x154>
    2e50:	01a22023 	subu	a0,t5,v0
    2e54:	2484003f 	addiu	a0,a0,63
    2e58:	04810002 	bgez	a0,2e64 <func_800DD9F4+0x120>
    2e5c:	00800821 	move	at,a0
    2e60:	2481003f 	addiu	at,a0,63
    2e64:	00012183 	sra	a0,at,0x6
    2e68:	1080000b 	beqz	a0,2e98 <func_800DD9F4+0x154>
    2e6c:	02001025 	move	v0,s0
    2e70:	308e00ff 	andi	t6,a0,0xff
    2e74:	000e7c00 	sll	t7,t6,0x10
    2e78:	3c010900 	lui	at,0x900
    2e7c:	01e1c025 	or	t8,t7,at
    2e80:	3c0a0600 	lui	t2,0x600
    2e84:	354a0080 	ori	t2,t2,0x80
    2e88:	37190580 	ori	t9,t8,0x580
    2e8c:	ac590000 	sw	t9,0(v0)
    2e90:	ac4a0004 	sw	t2,4(v0)
    2e94:	26100008 	addiu	s0,s0,8
    2e98:	acc30008 	sw	v1,8(a2)
    2e9c:	02001025 	move	v0,s0
    2ea0:	8fbf001c 	lw	ra,28(sp)
    2ea4:	8fb00018 	lw	s0,24(sp)
    2ea8:	27bd0020 	addiu	sp,sp,32
    2eac:	03e00008 	jr	ra
    2eb0:	00000000 	nop

00002eb4 <func_800DDB64>:
    2eb4:	8fae0014 	lw	t6,20(sp)
    2eb8:	24090001 	li	t1,1
    2ebc:	24010002 	li	at,2
    2ec0:	11c90005 	beq	t6,t1,2ed8 <func_800DDB64+0x24>
    2ec4:	24080940 	li	t0,2368
    2ec8:	11c10008 	beq	t6,at,2eec <func_800DDB64+0x38>
    2ecc:	24080ae0 	li	t0,2784
    2ed0:	03e00008 	jr	ra
    2ed4:	00801025 	move	v0,a0
    2ed8:	90a30003 	lbu	v1,3(a1)
    2edc:	90c20002 	lbu	v0,2(a2)
    2ee0:	a0c00003 	sb	zero,3(a2)
    2ee4:	10000008 	b	2f08 <func_800DDB64+0x54>
    2ee8:	a0c30002 	sb	v1,2(a2)
    2eec:	90a30004 	lbu	v1,4(a1)
    2ef0:	90c20003 	lbu	v0,3(a2)
    2ef4:	a0c00002 	sb	zero,2(a2)
    2ef8:	10000003 	b	2f08 <func_800DDB64+0x54>
    2efc:	a0c30003 	sb	v1,3(a2)
    2f00:	03e00008 	jr	ra
    2f04:	00801025 	move	v0,a0
    2f08:	8faf0010 	lw	t7,16(sp)
    2f0c:	3c180200 	lui	t8,0x200
    2f10:	3c0103c0 	lui	at,0x3c0
    2f14:	11e9005d 	beq	t7,t1,308c <func_800DDB64+0x1d8>
    2f18:	371805c0 	ori	t8,t8,0x5c0
    2f1c:	00404825 	move	t1,v0
    2f20:	1043002b 	beq	v0,v1,2fd0 <func_800DDB64+0x11c>
    2f24:	00602825 	move	a1,v1
    2f28:	00e51021 	addu	v0,a3,a1
    2f2c:	00495023 	subu	t2,v0,t1
    2f30:	3159ffff 	andi	t9,t2,0xffff
    2f34:	3c0103c0 	lui	at,0x3c0
    2f38:	03216825 	or	t5,t9,at
    2f3c:	3c180800 	lui	t8,0x800
    2f40:	000773c0 	sll	t6,a3,0xf
    2f44:	371805c0 	ori	t8,t8,0x5c0
    2f48:	00805825 	move	t3,a0
    2f4c:	ad780000 	sw	t8,0(t3)
    2f50:	ad6d0004 	sw	t5,4(t3)
    2f54:	2559fffe 	addiu	t9,t2,-2
    2f58:	24840008 	addiu	a0,a0,8
    2f5c:	00806025 	move	t4,a0
    2f60:	ad800004 	sw	zero,4(t4)
    2f64:	24840008 	addiu	a0,a0,8
    2f68:	05c10003 	bgez	t6,2f78 <func_800DDB64+0xc4>
    2f6c:	000e7843 	sra	t7,t6,0x1
    2f70:	25c10001 	addiu	at,t6,1
    2f74:	00017843 	sra	t7,at,0x1
    2f78:	25f8ffff 	addiu	t8,t7,-1
    2f7c:	07210003 	bgez	t9,2f8c <func_800DDB64+0xd8>
    2f80:	00196843 	sra	t5,t9,0x1
    2f84:	27210001 	addiu	at,t9,1
    2f88:	00016843 	sra	t5,at,0x1
    2f8c:	030d001a 	div	zero,t8,t5
    2f90:	15a00002 	bnez	t5,2f9c <func_800DDB64+0xe8>
    2f94:	00000000 	nop
    2f98:	0007000d 	break	0x7
    2f9c:	2401ffff 	li	at,-1
    2fa0:	15a10004 	bne	t5,at,2fb4 <func_800DDB64+0x100>
    2fa4:	3c018000 	lui	at,0x8000
    2fa8:	17010002 	bne	t8,at,2fb4 <func_800DDB64+0x100>
    2fac:	00000000 	nop
    2fb0:	0006000d 	break	0x6
    2fb4:	00007012 	mflo	t6
    2fb8:	31cfffff 	andi	t7,t6,0xffff
    2fbc:	31f9ffff 	andi	t9,t7,0xffff
    2fc0:	3c010600 	lui	at,0x600
    2fc4:	0321c025 	or	t8,t9,at
    2fc8:	1000000b 	b	2ff8 <func_800DDB64+0x144>
    2fcc:	ad980000 	sw	t8,0(t4)
    2fd0:	00805025 	move	t2,a0
    2fd4:	3c0d0a00 	lui	t5,0xa00
    2fd8:	30eeffff 	andi	t6,a3,0xffff
    2fdc:	3c0103c0 	lui	at,0x3c0
    2fe0:	01c17825 	or	t7,t6,at
    2fe4:	35ad05c0 	ori	t5,t5,0x5c0
    2fe8:	ad4d0000 	sw	t5,0(t2)
    2fec:	ad4f0004 	sw	t7,4(t2)
    2ff0:	24840008 	addiu	a0,a0,8
    2ff4:	00e51021 	addu	v0,a3,a1
    2ff8:	1120001b 	beqz	t1,3068 <func_800DDB64+0x1b4>
    2ffc:	3c180a00 	lui	t8,0xa00
    3000:	2539000f 	addiu	t9,t1,15
    3004:	3338fff0 	andi	t8,t9,0xfff0
    3008:	00186903 	sra	t5,t8,0x4
    300c:	31ae00ff 	andi	t6,t5,0xff
    3010:	000e7c00 	sll	t7,t6,0x10
    3014:	3c011400 	lui	at,0x1400
    3018:	01e1c825 	or	t9,t7,at
    301c:	373805c0 	ori	t8,t9,0x5c0
    3020:	00805025 	move	t2,a0
    3024:	ad580000 	sw	t8,0(t2)
    3028:	8ccd000c 	lw	t5,12(a2)
    302c:	24840008 	addiu	a0,a0,8
    3030:	3c0f0a00 	lui	t7,0xa00
    3034:	25ae00a0 	addiu	t6,t5,160
    3038:	ad4e0004 	sw	t6,4(t2)
    303c:	35ef03c0 	ori	t7,t7,0x3c0
    3040:	00805825 	move	t3,a0
    3044:	ad6f0000 	sw	t7,0(t3)
    3048:	00497023 	subu	t6,v0,t1
    304c:	253805c0 	addiu	t8,t1,1472
    3050:	00186c00 	sll	t5,t8,0x10
    3054:	31cfffff 	andi	t7,t6,0xffff
    3058:	01afc825 	or	t9,t5,t7
    305c:	ad790004 	sw	t9,4(t3)
    3060:	10000020 	b	30e4 <func_800DDB64+0x230>
    3064:	24840008 	addiu	a0,a0,8
    3068:	00804825 	move	t1,a0
    306c:	304effff 	andi	t6,v0,0xffff
    3070:	3c0105c0 	lui	at,0x5c0
    3074:	01c16825 	or	t5,t6,at
    3078:	371803c0 	ori	t8,t8,0x3c0
    307c:	ad380000 	sw	t8,0(t1)
    3080:	ad2d0004 	sw	t5,4(t1)
    3084:	10000017 	b	30e4 <func_800DDB64+0x230>
    3088:	24840008 	addiu	a0,a0,8
    308c:	00804825 	move	t1,a0
    3090:	3c0f0a00 	lui	t7,0xa00
    3094:	30e2ffff 	andi	v0,a3,0xffff
    3098:	0041c825 	or	t9,v0,at
    309c:	35ef05c0 	ori	t7,t7,0x5c0
    30a0:	24840008 	addiu	a0,a0,8
    30a4:	ad2f0000 	sw	t7,0(t1)
    30a8:	ad390004 	sw	t9,4(t1)
    30ac:	00805025 	move	t2,a0
    30b0:	24840008 	addiu	a0,a0,8
    30b4:	ad580000 	sw	t8,0(t2)
    30b8:	00805825 	move	t3,a0
    30bc:	246f05c0 	addiu	t7,v1,1472
    30c0:	ad430004 	sw	v1,4(t2)
    30c4:	000fcc00 	sll	t9,t7,0x10
    30c8:	3c0e0a00 	lui	t6,0xa00
    30cc:	35ce03c0 	ori	t6,t6,0x3c0
    30d0:	0322c025 	or	t8,t9,v0
    30d4:	ad780004 	sw	t8,4(t3)
    30d8:	ad6e0000 	sw	t6,0(t3)
    30dc:	24840008 	addiu	a0,a0,8
    30e0:	00602825 	move	a1,v1
    30e4:	10600010 	beqz	v1,3128 <func_800DDB64+0x274>
    30e8:	00801025 	move	v0,a0
    30ec:	24ae000f 	addiu	t6,a1,15
    30f0:	31cdfff0 	andi	t5,t6,0xfff0
    30f4:	000d7903 	sra	t7,t5,0x4
    30f8:	31f900ff 	andi	t9,t7,0xff
    30fc:	0019c400 	sll	t8,t9,0x10
    3100:	24ed05c0 	addiu	t5,a3,1472
    3104:	3c011500 	lui	at,0x1500
    3108:	03017025 	or	t6,t8,at
    310c:	31afffff 	andi	t7,t5,0xffff
    3110:	01cfc825 	or	t9,t6,t7
    3114:	ac590000 	sw	t9,0(v0)
    3118:	8cd8000c 	lw	t8,12(a2)
    311c:	24840008 	addiu	a0,a0,8
    3120:	270d00a0 	addiu	t5,t8,160
    3124:	ac4d0004 	sw	t5,4(v0)
    3128:	24ee003f 	addiu	t6,a3,63
    312c:	31cfffc0 	andi	t7,t6,0xffc0
    3130:	000fc903 	sra	t9,t7,0x4
    3134:	333800ff 	andi	t8,t9,0xff
    3138:	00186c00 	sll	t5,t8,0x10
    313c:	3c010400 	lui	at,0x400
    3140:	01a17025 	or	t6,t5,at
    3144:	3c0105c0 	lui	at,0x5c0
    3148:	3119ffff 	andi	t9,t0,0xffff
    314c:	0321c025 	or	t8,t9,at
    3150:	35cf7fff 	ori	t7,t6,0x7fff
    3154:	ac8f0000 	sw	t7,0(a0)
    3158:	ac980004 	sw	t8,4(a0)
    315c:	24820008 	addiu	v0,a0,8
    3160:	03e00008 	jr	ra
    3164:	00000000 	nop
	...
