
build/src/overlays/actors/ovl_kaleido_scope/z_kaleido_scope_PAL.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8081F1F0>:
       0:	27bdffa8 	addiu	sp,sp,-88
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb00020 	sw	s0,32(sp)
       c:	afa40058 	sw	a0,88(sp)
      10:	8c850000 	lw	a1,0(a0)
      14:	3c060000 	lui	a2,0x0
      18:	24c60000 	addiu	a2,a2,0
      1c:	8caf02dc 	lw	t7,732(a1)
      20:	27a40038 	addiu	a0,sp,56
      24:	240701f0 	li	a3,496
      28:	00a08025 	move	s0,a1
      2c:	0c000000 	jal	0 <func_8081F1F0>
      30:	afaf004c 	sw	t7,76(sp)
      34:	8e0402c0 	lw	a0,704(s0)
      38:	0c000000 	jal	0 <func_8081F1F0>
      3c:	afa40050 	sw	a0,80(sp)
      40:	afa20054 	sw	v0,84(sp)
      44:	8e0301bc 	lw	v1,444(s0)
      48:	3c19de00 	lui	t9,0xde00
      4c:	3c040000 	lui	a0,0x0
      50:	24780008 	addiu	t8,v1,8
      54:	ae1801bc 	sw	t8,444(s0)
      58:	ac790000 	sw	t9,0(v1)
      5c:	8fa80054 	lw	t0,84(sp)
      60:	24840000 	addiu	a0,a0,0
      64:	24050040 	li	a1,64
      68:	ac680004 	sw	t0,4(v1)
      6c:	afa00010 	sw	zero,16(sp)
      70:	8fa7004c 	lw	a3,76(sp)
      74:	0c000000 	jal	0 <func_8081F1F0>
      78:	24060070 	li	a2,112
      7c:	3c040000 	lui	a0,0x0
      80:	24840000 	addiu	a0,a0,0
      84:	0c000000 	jal	0 <func_8081F1F0>
      88:	27a50054 	addiu	a1,sp,84
      8c:	3c040000 	lui	a0,0x0
      90:	24840000 	addiu	a0,a0,0
      94:	0c000000 	jal	0 <func_8081F1F0>
      98:	27a50054 	addiu	a1,sp,84
      9c:	8fa90054 	lw	t1,84(sp)
      a0:	3c0bdf00 	lui	t3,0xdf00
      a4:	252a0008 	addiu	t2,t1,8
      a8:	afaa0054 	sw	t2,84(sp)
      ac:	ad200004 	sw	zero,4(t1)
      b0:	ad2b0000 	sw	t3,0(t1)
      b4:	8fa50054 	lw	a1,84(sp)
      b8:	0c000000 	jal	0 <func_8081F1F0>
      bc:	8fa40050 	lw	a0,80(sp)
      c0:	8fac0054 	lw	t4,84(sp)
      c4:	3c030000 	lui	v1,0x0
      c8:	3c060000 	lui	a2,0x0
      cc:	ae0c02c0 	sw	t4,704(s0)
      d0:	8c630000 	lw	v1,0(v1)
      d4:	24c60000 	addiu	a2,a2,0
      d8:	27a40038 	addiu	a0,sp,56
      dc:	846d0116 	lh	t5,278(v1)
      e0:	240701fd 	li	a3,509
      e4:	35ae0001 	ori	t6,t5,0x1
      e8:	a46e0116 	sh	t6,278(v1)
      ec:	8faf0058 	lw	t7,88(sp)
      f0:	0c000000 	jal	0 <func_8081F1F0>
      f4:	8de50000 	lw	a1,0(t7)
      f8:	8fbf0024 	lw	ra,36(sp)
      fc:	8fb00020 	lw	s0,32(sp)
     100:	27bd0058 	addiu	sp,sp,88
     104:	03e00008 	jr	ra
     108:	00000000 	nop

0000010c <func_8081F2FC>:
     10c:	27bdffe8 	addiu	sp,sp,-24
     110:	afbf0014 	sw	ra,20(sp)
     114:	0c000000 	jal	0 <func_8081F1F0>
     118:	24040032 	li	a0,50
     11c:	3c040000 	lui	a0,0x0
     120:	0c000000 	jal	0 <func_8081F1F0>
     124:	24840000 	addiu	a0,a0,0
     128:	3c040000 	lui	a0,0x0
     12c:	0c000000 	jal	0 <func_8081F1F0>
     130:	24840000 	addiu	a0,a0,0
     134:	8fbf0014 	lw	ra,20(sp)
     138:	27bd0018 	addiu	sp,sp,24
     13c:	03e00008 	jr	ra
     140:	00000000 	nop

00000144 <func_8081F334>:
     144:	afa60008 	sw	a2,8(sp)
     148:	afa7000c 	sw	a3,12(sp)
     14c:	00073c00 	sll	a3,a3,0x10
     150:	00063400 	sll	a2,a2,0x10
     154:	00063403 	sra	a2,a2,0x10
     158:	00073c03 	sra	a3,a3,0x10
     15c:	00c70019 	multu	a2,a3
     160:	00801025 	move	v0,a0
     164:	24840008 	addiu	a0,a0,8
     168:	3c0efd70 	lui	t6,0xfd70
     16c:	ac4e0000 	sw	t6,0(v0)
     170:	00801825 	move	v1,a0
     174:	ac450004 	sw	a1,4(v0)
     178:	3c020700 	lui	v0,0x700
     17c:	3c0ff570 	lui	t7,0xf570
     180:	ac6f0000 	sw	t7,0(v1)
     184:	ac620004 	sw	v0,4(v1)
     188:	24840008 	addiu	a0,a0,8
     18c:	00801825 	move	v1,a0
     190:	00002812 	mflo	a1
     194:	24a50003 	addiu	a1,a1,3
     198:	00052883 	sra	a1,a1,0x2
     19c:	3c18e600 	lui	t8,0xe600
     1a0:	ac780000 	sw	t8,0(v1)
     1a4:	24a5ffff 	addiu	a1,a1,-1
     1a8:	ac600004 	sw	zero,4(v1)
     1ac:	24840008 	addiu	a0,a0,8
     1b0:	00801825 	move	v1,a0
     1b4:	28a107ff 	slti	at,a1,2047
     1b8:	3c19f300 	lui	t9,0xf300
     1bc:	ac790000 	sw	t9,0(v1)
     1c0:	10200003 	beqz	at,1d0 <func_8081F334+0x8c>
     1c4:	24840008 	addiu	a0,a0,8
     1c8:	10000002 	b	1d4 <func_8081F334+0x90>
     1cc:	00a04025 	move	t0,a1
     1d0:	240807ff 	li	t0,2047
     1d4:	04c10003 	bgez	a2,1e4 <func_8081F334+0xa0>
     1d8:	00062903 	sra	a1,a2,0x4
     1dc:	24c1000f 	addiu	at,a2,15
     1e0:	00012903 	sra	a1,at,0x4
     1e4:	1ca00003 	bgtz	a1,1f4 <func_8081F334+0xb0>
     1e8:	310f0fff 	andi	t7,t0,0xfff
     1ec:	10000002 	b	1f8 <func_8081F334+0xb4>
     1f0:	24090001 	li	t1,1
     1f4:	00a04825 	move	t1,a1
     1f8:	1ca00003 	bgtz	a1,208 <func_8081F334+0xc4>
     1fc:	252b07ff 	addiu	t3,t1,2047
     200:	10000002 	b	20c <func_8081F334+0xc8>
     204:	240a0001 	li	t2,1
     208:	00a05025 	move	t2,a1
     20c:	016a001a 	div	zero,t3,t2
     210:	00006012 	mflo	t4
     214:	318d0fff 	andi	t5,t4,0xfff
     218:	01a27025 	or	t6,t5,v0
     21c:	000fc300 	sll	t8,t7,0xc
     220:	01d8c825 	or	t9,t6,t8
     224:	ac790004 	sw	t9,4(v1)
     228:	15400002 	bnez	t2,234 <func_8081F334+0xf0>
     22c:	00000000 	nop
     230:	0007000d 	break	0x7
     234:	2401ffff 	li	at,-1
     238:	15410004 	bne	t2,at,24c <func_8081F334+0x108>
     23c:	3c018000 	lui	at,0x8000
     240:	15610002 	bne	t3,at,24c <func_8081F334+0x108>
     244:	00000000 	nop
     248:	0006000d 	break	0x6
     24c:	00801825 	move	v1,a0
     250:	00066043 	sra	t4,a2,0x1
     254:	258d0007 	addiu	t5,t4,7
     258:	000d78c3 	sra	t7,t5,0x3
     25c:	3c0be700 	lui	t3,0xe700
     260:	ac6b0000 	sw	t3,0(v1)
     264:	31ee01ff 	andi	t6,t7,0x1ff
     268:	ac600004 	sw	zero,4(v1)
     26c:	24840008 	addiu	a0,a0,8
     270:	00801825 	move	v1,a0
     274:	000ec240 	sll	t8,t6,0x9
     278:	3c01f560 	lui	at,0xf560
     27c:	0301c825 	or	t9,t8,at
     280:	ac790000 	sw	t9,0(v1)
     284:	ac600004 	sw	zero,4(v1)
     288:	24840008 	addiu	a0,a0,8
     28c:	24ccffff 	addiu	t4,a2,-1
     290:	000c6880 	sll	t5,t4,0x2
     294:	00801825 	move	v1,a0
     298:	24f8ffff 	addiu	t8,a3,-1
     29c:	3c0bf200 	lui	t3,0xf200
     2a0:	ac6b0000 	sw	t3,0(v1)
     2a4:	0018c880 	sll	t9,t8,0x2
     2a8:	31af0fff 	andi	t7,t5,0xfff
     2ac:	000f7300 	sll	t6,t7,0xc
     2b0:	332b0fff 	andi	t3,t9,0xfff
     2b4:	01cb6025 	or	t4,t6,t3
     2b8:	ac6c0004 	sw	t4,4(v1)
     2bc:	97a50012 	lhu	a1,18(sp)
     2c0:	24840008 	addiu	a0,a0,8
     2c4:	00801825 	move	v1,a0
     2c8:	00052840 	sll	a1,a1,0x1
     2cc:	24ad0004 	addiu	t5,a1,4
     2d0:	31af00ff 	andi	t7,t5,0xff
     2d4:	30a600ff 	andi	a2,a1,0xff
     2d8:	24a70006 	addiu	a3,a1,6
     2dc:	30e700ff 	andi	a3,a3,0xff
     2e0:	00063400 	sll	a2,a2,0x10
     2e4:	000fc200 	sll	t8,t7,0x8
     2e8:	00d8c825 	or	t9,a2,t8
     2ec:	03277025 	or	t6,t9,a3
     2f0:	24af0002 	addiu	t7,a1,2
     2f4:	00076200 	sll	t4,a3,0x8
     2f8:	00cc6825 	or	t5,a2,t4
     2fc:	31f800ff 	andi	t8,t7,0xff
     300:	01b8c825 	or	t9,t5,t8
     304:	01c25825 	or	t3,t6,v0
     308:	24840008 	addiu	a0,a0,8
     30c:	ac6b0000 	sw	t3,0(v1)
     310:	ac790004 	sw	t9,4(v1)
     314:	03e00008 	jr	ra
     318:	00801025 	move	v0,a0

0000031c <func_8081F50C>:
     31c:	afa60008 	sw	a2,8(sp)
     320:	afa7000c 	sw	a3,12(sp)
     324:	00073c00 	sll	a3,a3,0x10
     328:	00063400 	sll	a2,a2,0x10
     32c:	00063403 	sra	a2,a2,0x10
     330:	00073c03 	sra	a3,a3,0x10
     334:	00c70019 	multu	a2,a3
     338:	00801025 	move	v0,a0
     33c:	24840008 	addiu	a0,a0,8
     340:	3c0efd70 	lui	t6,0xfd70
     344:	ac4e0000 	sw	t6,0(v0)
     348:	00801825 	move	v1,a0
     34c:	ac450004 	sw	a1,4(v0)
     350:	3c020700 	lui	v0,0x700
     354:	3c0ff570 	lui	t7,0xf570
     358:	ac6f0000 	sw	t7,0(v1)
     35c:	ac620004 	sw	v0,4(v1)
     360:	24840008 	addiu	a0,a0,8
     364:	00801825 	move	v1,a0
     368:	00002812 	mflo	a1
     36c:	24a50001 	addiu	a1,a1,1
     370:	00052843 	sra	a1,a1,0x1
     374:	3c18e600 	lui	t8,0xe600
     378:	ac780000 	sw	t8,0(v1)
     37c:	24a5ffff 	addiu	a1,a1,-1
     380:	ac600004 	sw	zero,4(v1)
     384:	24840008 	addiu	a0,a0,8
     388:	00801825 	move	v1,a0
     38c:	28a107ff 	slti	at,a1,2047
     390:	3c19f300 	lui	t9,0xf300
     394:	ac790000 	sw	t9,0(v1)
     398:	10200003 	beqz	at,3a8 <func_8081F50C+0x8c>
     39c:	24840008 	addiu	a0,a0,8
     3a0:	10000002 	b	3ac <func_8081F50C+0x90>
     3a4:	00a04025 	move	t0,a1
     3a8:	240807ff 	li	t0,2047
     3ac:	00c02825 	move	a1,a2
     3b0:	04a10003 	bgez	a1,3c0 <func_8081F50C+0xa4>
     3b4:	000548c3 	sra	t1,a1,0x3
     3b8:	24a10007 	addiu	at,a1,7
     3bc:	000148c3 	sra	t1,at,0x3
     3c0:	1d200003 	bgtz	t1,3d0 <func_8081F50C+0xb4>
     3c4:	31180fff 	andi	t8,t0,0xfff
     3c8:	10000002 	b	3d4 <func_8081F50C+0xb8>
     3cc:	240a0001 	li	t2,1
     3d0:	01205025 	move	t2,t1
     3d4:	1d200003 	bgtz	t1,3e4 <func_8081F50C+0xc8>
     3d8:	254c07ff 	addiu	t4,t2,2047
     3dc:	10000002 	b	3e8 <func_8081F50C+0xcc>
     3e0:	240b0001 	li	t3,1
     3e4:	01205825 	move	t3,t1
     3e8:	018b001a 	div	zero,t4,t3
     3ec:	00006812 	mflo	t5
     3f0:	31ae0fff 	andi	t6,t5,0xfff
     3f4:	15600002 	bnez	t3,400 <func_8081F50C+0xe4>
     3f8:	00000000 	nop
     3fc:	0007000d 	break	0x7
     400:	2401ffff 	li	at,-1
     404:	15610004 	bne	t3,at,418 <func_8081F50C+0xfc>
     408:	3c018000 	lui	at,0x8000
     40c:	15810002 	bne	t4,at,418 <func_8081F50C+0xfc>
     410:	00000000 	nop
     414:	0006000d 	break	0x6
     418:	01c27825 	or	t7,t6,v0
     41c:	0018cb00 	sll	t9,t8,0xc
     420:	01f96025 	or	t4,t7,t9
     424:	ac6c0004 	sw	t4,4(v1)
     428:	00801825 	move	v1,a0
     42c:	24ae0007 	addiu	t6,a1,7
     430:	000ec0c3 	sra	t8,t6,0x3
     434:	3c0de700 	lui	t5,0xe700
     438:	ac6d0000 	sw	t5,0(v1)
     43c:	330f01ff 	andi	t7,t8,0x1ff
     440:	ac600004 	sw	zero,4(v1)
     444:	24840008 	addiu	a0,a0,8
     448:	00801825 	move	v1,a0
     44c:	000fca40 	sll	t9,t7,0x9
     450:	3c01f568 	lui	at,0xf568
     454:	03216025 	or	t4,t9,at
     458:	ac6c0000 	sw	t4,0(v1)
     45c:	ac600004 	sw	zero,4(v1)
     460:	24840008 	addiu	a0,a0,8
     464:	00801825 	move	v1,a0
     468:	3c0df200 	lui	t5,0xf200
     46c:	24ceffff 	addiu	t6,a2,-1
     470:	000ec080 	sll	t8,t6,0x2
     474:	ac6d0000 	sw	t5,0(v1)
     478:	24ecffff 	addiu	t4,a3,-1
     47c:	000c6880 	sll	t5,t4,0x2
     480:	330f0fff 	andi	t7,t8,0xfff
     484:	000fcb00 	sll	t9,t7,0xc
     488:	31ae0fff 	andi	t6,t5,0xfff
     48c:	032ec025 	or	t8,t9,t6
     490:	ac780004 	sw	t8,4(v1)
     494:	97a50012 	lhu	a1,18(sp)
     498:	24840008 	addiu	a0,a0,8
     49c:	00801825 	move	v1,a0
     4a0:	00052840 	sll	a1,a1,0x1
     4a4:	24af0004 	addiu	t7,a1,4
     4a8:	31ec00ff 	andi	t4,t7,0xff
     4ac:	30a600ff 	andi	a2,a1,0xff
     4b0:	00063400 	sll	a2,a2,0x10
     4b4:	000c6a00 	sll	t5,t4,0x8
     4b8:	24a70006 	addiu	a3,a1,6
     4bc:	30e700ff 	andi	a3,a3,0xff
     4c0:	00cdc825 	or	t9,a2,t5
     4c4:	03277025 	or	t6,t9,a3
     4c8:	24ad0002 	addiu	t5,a1,2
     4cc:	00077a00 	sll	t7,a3,0x8
     4d0:	00cf6025 	or	t4,a2,t7
     4d4:	31b900ff 	andi	t9,t5,0xff
     4d8:	01c2c025 	or	t8,t6,v0
     4dc:	01997025 	or	t6,t4,t9
     4e0:	24840008 	addiu	a0,a0,8
     4e4:	ac6e0004 	sw	t6,4(v1)
     4e8:	ac780000 	sw	t8,0(v1)
     4ec:	03e00008 	jr	ra
     4f0:	00801025 	move	v0,a0

000004f4 <func_8081F6E4>:
     4f4:	30c6000f 	andi	a2,a2,0xf
     4f8:	10a0004a 	beqz	a1,624 <func_8081F6E4+0x130>
     4fc:	30e7000f 	andi	a3,a3,0xf
     500:	10c70048 	beq	a2,a3,624 <func_8081F6E4+0x130>
     504:	00000000 	nop
     508:	10800046 	beqz	a0,624 <func_8081F6E4+0x130>
     50c:	00000000 	nop
     510:	18a00044 	blez	a1,624 <func_8081F6E4+0x130>
     514:	00001025 	move	v0,zero
     518:	30a30003 	andi	v1,a1,0x3
     51c:	10600011 	beqz	v1,564 <func_8081F6E4+0x70>
     520:	00605025 	move	t2,v1
     524:	00804021 	move	t0,a0
     528:	91030000 	lbu	v1,0(t0)
     52c:	24420001 	addiu	v0,v0,1
     530:	00034903 	sra	t1,v1,0x4
     534:	3129000f 	andi	t1,t1,0xf
     538:	15260002 	bne	t1,a2,544 <func_8081F6E4+0x50>
     53c:	3063000f 	andi	v1,v1,0xf
     540:	00e04825 	move	t1,a3
     544:	14660002 	bne	v1,a2,550 <func_8081F6E4+0x5c>
     548:	00097100 	sll	t6,t1,0x4
     54c:	00e01825 	move	v1,a3
     550:	01c37825 	or	t7,t6,v1
     554:	a10f0000 	sb	t7,0(t0)
     558:	1542fff3 	bne	t2,v0,528 <func_8081F6E4+0x34>
     55c:	25080001 	addiu	t0,t0,1
     560:	10450030 	beq	v0,a1,624 <func_8081F6E4+0x130>
     564:	00824021 	addu	t0,a0,v0
     568:	91030000 	lbu	v1,0(t0)
     56c:	24420004 	addiu	v0,v0,4
     570:	00034903 	sra	t1,v1,0x4
     574:	3129000f 	andi	t1,t1,0xf
     578:	15260002 	bne	t1,a2,584 <func_8081F6E4+0x90>
     57c:	3063000f 	andi	v1,v1,0xf
     580:	00e04825 	move	t1,a3
     584:	14660002 	bne	v1,a2,590 <func_8081F6E4+0x9c>
     588:	0009c100 	sll	t8,t1,0x4
     58c:	00e01825 	move	v1,a3
     590:	0303c825 	or	t9,t8,v1
     594:	91030001 	lbu	v1,1(t0)
     598:	a1190000 	sb	t9,0(t0)
     59c:	00034903 	sra	t1,v1,0x4
     5a0:	3129000f 	andi	t1,t1,0xf
     5a4:	15260002 	bne	t1,a2,5b0 <func_8081F6E4+0xbc>
     5a8:	3063000f 	andi	v1,v1,0xf
     5ac:	00e04825 	move	t1,a3
     5b0:	14660002 	bne	v1,a2,5bc <func_8081F6E4+0xc8>
     5b4:	00095900 	sll	t3,t1,0x4
     5b8:	00e01825 	move	v1,a3
     5bc:	01636025 	or	t4,t3,v1
     5c0:	91030002 	lbu	v1,2(t0)
     5c4:	a10c0001 	sb	t4,1(t0)
     5c8:	00034903 	sra	t1,v1,0x4
     5cc:	3129000f 	andi	t1,t1,0xf
     5d0:	15260002 	bne	t1,a2,5dc <func_8081F6E4+0xe8>
     5d4:	3063000f 	andi	v1,v1,0xf
     5d8:	00e04825 	move	t1,a3
     5dc:	14660002 	bne	v1,a2,5e8 <func_8081F6E4+0xf4>
     5e0:	00096900 	sll	t5,t1,0x4
     5e4:	00e01825 	move	v1,a3
     5e8:	01a37025 	or	t6,t5,v1
     5ec:	91030003 	lbu	v1,3(t0)
     5f0:	a10e0002 	sb	t6,2(t0)
     5f4:	00034903 	sra	t1,v1,0x4
     5f8:	3129000f 	andi	t1,t1,0xf
     5fc:	15260002 	bne	t1,a2,608 <func_8081F6E4+0x114>
     600:	3063000f 	andi	v1,v1,0xf
     604:	00e04825 	move	t1,a3
     608:	14660002 	bne	v1,a2,614 <func_8081F6E4+0x120>
     60c:	00097900 	sll	t7,t1,0x4
     610:	00e01825 	move	v1,a3
     614:	01e3c025 	or	t8,t7,v1
     618:	a1180003 	sb	t8,3(t0)
     61c:	1445ffd2 	bne	v0,a1,568 <func_8081F6E4+0x74>
     620:	25080004 	addiu	t0,t0,4
     624:	03e00008 	jr	ra
     628:	00000000 	nop

0000062c <func_8081F81C>:
     62c:	27bdffe0 	addiu	sp,sp,-32
     630:	afa50024 	sw	a1,36(sp)
     634:	97ae0026 	lhu	t6,38(sp)
     638:	3c010001 	lui	at,0x1
     63c:	afbf001c 	sw	ra,28(sp)
     640:	afa40020 	sw	a0,32(sp)
     644:	00811021 	addu	v0,a0,at
     648:	3c070000 	lui	a3,0x0
     64c:	3c0f0000 	lui	t7,0x0
     650:	24e70000 	addiu	a3,a3,0
     654:	a440099a 	sh	zero,2458(v0)
     658:	25ef0000 	addiu	t7,t7,0
     65c:	3c050000 	lui	a1,0x0
     660:	a44e0998 	sh	t6,2456(v0)
     664:	afaf0014 	sw	t7,20(sp)
     668:	afa70010 	sw	a3,16(sp)
     66c:	24a50000 	addiu	a1,a1,0
     670:	24044808 	li	a0,18440
     674:	0c000000 	jal	0 <func_8081F1F0>
     678:	24060004 	li	a2,4
     67c:	8fbf001c 	lw	ra,28(sp)
     680:	27bd0020 	addiu	sp,sp,32
     684:	03e00008 	jr	ra
     688:	00000000 	nop

0000068c <func_8081F87C>:
     68c:	27bdff90 	addiu	sp,sp,-112
     690:	afb00018 	sw	s0,24(sp)
     694:	afa60078 	sw	a2,120(sp)
     698:	00808025 	move	s0,a0
     69c:	afbf001c 	sw	ra,28(sp)
     6a0:	afa50074 	sw	a1,116(sp)
     6a4:	afa7007c 	sw	a3,124(sp)
     6a8:	3c060000 	lui	a2,0x0
     6ac:	24c60000 	addiu	a2,a2,0
     6b0:	240702ec 	li	a3,748
     6b4:	02002825 	move	a1,s0
     6b8:	0c000000 	jal	0 <func_8081F1F0>
     6bc:	27a4005c 	addiu	a0,sp,92
     6c0:	8e0202c0 	lw	v0,704(s0)
     6c4:	3c0ffd18 	lui	t7,0xfd18
     6c8:	3c090700 	lui	t1,0x700
     6cc:	244e0008 	addiu	t6,v0,8
     6d0:	ae0e02c0 	sw	t6,704(s0)
     6d4:	ac4f0000 	sw	t7,0(v0)
     6d8:	8fb80074 	lw	t8,116(sp)
     6dc:	3c0af518 	lui	t2,0xf518
     6e0:	3c0ce600 	lui	t4,0xe600
     6e4:	ac580004 	sw	t8,4(v0)
     6e8:	8e0202c0 	lw	v0,704(s0)
     6ec:	3c0ef300 	lui	t6,0xf300
     6f0:	240507ff 	li	a1,2047
     6f4:	24590008 	addiu	t9,v0,8
     6f8:	ae1902c0 	sw	t9,704(s0)
     6fc:	ac490004 	sw	t1,4(v0)
     700:	ac4a0000 	sw	t2,0(v0)
     704:	8e0202c0 	lw	v0,704(s0)
     708:	244b0008 	addiu	t3,v0,8
     70c:	ae0b02c0 	sw	t3,704(s0)
     710:	ac400004 	sw	zero,4(v0)
     714:	ac4c0000 	sw	t4,0(v0)
     718:	8e0702c0 	lw	a3,704(s0)
     71c:	24ed0008 	addiu	t5,a3,8
     720:	ae0d02c0 	sw	t5,704(s0)
     724:	acee0000 	sw	t6,0(a3)
     728:	97a8007e 	lhu	t0,126(sp)
     72c:	97a4007a 	lhu	a0,122(sp)
     730:	00880019 	multu	a0,t0
     734:	00041080 	sll	v0,a0,0x2
     738:	00001812 	mflo	v1
     73c:	2463ffff 	addiu	v1,v1,-1
     740:	286107ff 	slti	at,v1,2047
     744:	10200003 	beqz	at,754 <func_8081F87C+0xc8>
     748:	00000000 	nop
     74c:	10000001 	b	754 <func_8081F87C+0xc8>
     750:	00602825 	move	a1,v1
     754:	04410002 	bgez	v0,760 <func_8081F87C+0xd4>
     758:	00400821 	move	at,v0
     75c:	24410007 	addiu	at,v0,7
     760:	000110c3 	sra	v0,at,0x3
     764:	1c400003 	bgtz	v0,774 <func_8081F87C+0xe8>
     768:	30ac0fff 	andi	t4,a1,0xfff
     76c:	10000002 	b	778 <func_8081F87C+0xec>
     770:	24060001 	li	a2,1
     774:	00403025 	move	a2,v0
     778:	1c400003 	bgtz	v0,788 <func_8081F87C+0xfc>
     77c:	24cf07ff 	addiu	t7,a2,2047
     780:	10000002 	b	78c <func_8081F87C+0x100>
     784:	24030001 	li	v1,1
     788:	00401825 	move	v1,v0
     78c:	01e3001a 	div	zero,t7,v1
     790:	0000c012 	mflo	t8
     794:	33190fff 	andi	t9,t8,0xfff
     798:	03295825 	or	t3,t9,t1
     79c:	000c6b00 	sll	t5,t4,0xc
     7a0:	016d7025 	or	t6,t3,t5
     7a4:	acee0004 	sw	t6,4(a3)
     7a8:	8e0202c0 	lw	v0,704(s0)
     7ac:	14600002 	bnez	v1,7b8 <func_8081F87C+0x12c>
     7b0:	00000000 	nop
     7b4:	0007000d 	break	0x7
     7b8:	2401ffff 	li	at,-1
     7bc:	14610004 	bne	v1,at,7d0 <func_8081F87C+0x144>
     7c0:	3c018000 	lui	at,0x8000
     7c4:	15e10002 	bne	t7,at,7d0 <func_8081F87C+0x144>
     7c8:	00000000 	nop
     7cc:	0006000d 	break	0x6
     7d0:	244f0008 	addiu	t7,v0,8
     7d4:	ae0f02c0 	sw	t7,704(s0)
     7d8:	3c18e700 	lui	t8,0xe700
     7dc:	ac580000 	sw	t8,0(v0)
     7e0:	ac400004 	sw	zero,4(v0)
     7e4:	8e0202c0 	lw	v0,704(s0)
     7e8:	00046040 	sll	t4,a0,0x1
     7ec:	258b0007 	addiu	t3,t4,7
     7f0:	000b68c3 	sra	t5,t3,0x3
     7f4:	31ae01ff 	andi	t6,t5,0x1ff
     7f8:	24590008 	addiu	t9,v0,8
     7fc:	ae1902c0 	sw	t9,704(s0)
     800:	000e7a40 	sll	t7,t6,0x9
     804:	01eac025 	or	t8,t7,t2
     808:	ac580000 	sw	t8,0(v0)
     80c:	ac400004 	sw	zero,4(v0)
     810:	8e0202c0 	lw	v0,704(s0)
     814:	248bffff 	addiu	t3,a0,-1
     818:	000b6880 	sll	t5,t3,0x2
     81c:	24590008 	addiu	t9,v0,8
     820:	ae1902c0 	sw	t9,704(s0)
     824:	2518ffff 	addiu	t8,t0,-1
     828:	3c0cf200 	lui	t4,0xf200
     82c:	0018c880 	sll	t9,t8,0x2
     830:	31ae0fff 	andi	t6,t5,0xfff
     834:	ac4c0000 	sw	t4,0(v0)
     838:	332c0fff 	andi	t4,t9,0xfff
     83c:	000e7b00 	sll	t7,t6,0xc
     840:	01ec5825 	or	t3,t7,t4
     844:	ac4b0004 	sw	t3,4(v0)
     848:	8e0202c0 	lw	v0,704(s0)
     84c:	27a4005c 	addiu	a0,sp,92
     850:	240702f6 	li	a3,758
     854:	244d0008 	addiu	t5,v0,8
     858:	ae0d02c0 	sw	t5,704(s0)
     85c:	97a30082 	lhu	v1,130(sp)
     860:	00031840 	sll	v1,v1,0x1
     864:	246e0004 	addiu	t6,v1,4
     868:	31d800ff 	andi	t8,t6,0xff
     86c:	306500ff 	andi	a1,v1,0xff
     870:	00052c00 	sll	a1,a1,0x10
     874:	0018ca00 	sll	t9,t8,0x8
     878:	24660006 	addiu	a2,v1,6
     87c:	30c600ff 	andi	a2,a2,0xff
     880:	00b97825 	or	t7,a1,t9
     884:	01e66025 	or	t4,t7,a2
     888:	00066a00 	sll	t5,a2,0x8
     88c:	24780002 	addiu	t8,v1,2
     890:	331900ff 	andi	t9,t8,0xff
     894:	00ad7025 	or	t6,a1,t5
     898:	01d97825 	or	t7,t6,t9
     89c:	01895825 	or	t3,t4,t1
     8a0:	3c060000 	lui	a2,0x0
     8a4:	24c60000 	addiu	a2,a2,0
     8a8:	02002825 	move	a1,s0
     8ac:	ac4b0000 	sw	t3,0(v0)
     8b0:	0c000000 	jal	0 <func_8081F1F0>
     8b4:	ac4f0004 	sw	t7,4(v0)
     8b8:	8fbf001c 	lw	ra,28(sp)
     8bc:	8fb00018 	lw	s0,24(sp)
     8c0:	27bd0070 	addiu	sp,sp,112
     8c4:	03e00008 	jr	ra
     8c8:	00000000 	nop

000008cc <func_8081FABC>:
     8cc:	3c020001 	lui	v0,0x1
     8d0:	00441021 	addu	v0,v0,a0
     8d4:	94420948 	lhu	v0,2376(v0)
     8d8:	3c010001 	lui	at,0x1
     8dc:	34210760 	ori	at,at,0x760
     8e0:	5040000b 	beqzl	v0,910 <func_8081FABC+0x44>
     8e4:	00811021 	addu	v0,a0,at
     8e8:	24010001 	li	at,1
     8ec:	10410025 	beq	v0,at,984 <func_8081FABC+0xb8>
     8f0:	24010002 	li	at,2
     8f4:	10410023 	beq	v0,at,984 <func_8081FABC+0xb8>
     8f8:	24010003 	li	at,3
     8fc:	10410021 	beq	v0,at,984 <func_8081FABC+0xb8>
     900:	00000000 	nop
     904:	03e00008 	jr	ra
     908:	00000000 	nop
     90c:	00811021 	addu	v0,a0,at
     910:	84430246 	lh	v1,582(v0)
     914:	3c070000 	lui	a3,0x0
     918:	24e70000 	addiu	a3,a3,0
     91c:	00e37021 	addu	t6,a3,v1
     920:	91cf0074 	lbu	t7,116(t6)
     924:	240600ff 	li	a2,255
     928:	24640001 	addiu	a0,v1,1
     92c:	14cf0015 	bne	a2,t7,984 <func_8081FABC+0xb8>
     930:	00042400 	sll	a0,a0,0x10
     934:	00042403 	sra	a0,a0,0x10
     938:	00e4c021 	addu	t8,a3,a0
     93c:	93050074 	lbu	a1,116(t8)
     940:	54c5000f 	bnel	a2,a1,980 <func_8081FABC+0xb4>
     944:	a445023e 	sh	a1,574(v0)
     948:	24840001 	addiu	a0,a0,1
     94c:	00042400 	sll	a0,a0,0x10
     950:	00042403 	sra	a0,a0,0x10
     954:	28810018 	slti	at,a0,24
     958:	14200002 	bnez	at,964 <func_8081FABC+0x98>
     95c:	00000000 	nop
     960:	00002025 	move	a0,zero
     964:	5483fff5 	bnel	a0,v1,93c <func_8081FABC+0x70>
     968:	00e4c021 	addu	t8,a3,a0
     96c:	240803e7 	li	t0,999
     970:	a448023c 	sh	t0,572(v0)
     974:	03e00008 	jr	ra
     978:	a448023e 	sh	t0,574(v0)
     97c:	a445023e 	sh	a1,574(v0)
     980:	a4440246 	sh	a0,582(v0)
     984:	03e00008 	jr	ra
     988:	00000000 	nop

0000098c <func_8081FB7C>:
     98c:	27bdffd8 	addiu	sp,sp,-40
     990:	afbf0024 	sw	ra,36(sp)
     994:	afb00020 	sw	s0,32(sp)
     998:	afa5002c 	sw	a1,44(sp)
     99c:	240e0001 	li	t6,1
     9a0:	a48e01e4 	sh	t6,484(a0)
     9a4:	a48001ea 	sh	zero,490(a0)
     9a8:	93af002f 	lbu	t7,47(sp)
     9ac:	3c070000 	lui	a3,0x0
     9b0:	00808025 	move	s0,a0
     9b4:	15e00013 	bnez	t7,a04 <func_8081FB7C+0x78>
     9b8:	24e70000 	addiu	a3,a3,0
     9bc:	949801e8 	lhu	t8,488(a0)
     9c0:	3c070000 	lui	a3,0x0
     9c4:	3c090000 	lui	t1,0x0
     9c8:	0018c840 	sll	t9,t8,0x1
     9cc:	27280001 	addiu	t0,t9,1
     9d0:	a48801e6 	sh	t0,486(a0)
     9d4:	24e70000 	addiu	a3,a3,0
     9d8:	25290000 	addiu	t1,t1,0
     9dc:	3c050000 	lui	a1,0x0
     9e0:	24a50000 	addiu	a1,a1,0
     9e4:	afa90014 	sw	t1,20(sp)
     9e8:	afa70010 	sw	a3,16(sp)
     9ec:	24044825 	li	a0,18469
     9f0:	0c000000 	jal	0 <func_8081F1F0>
     9f4:	24060004 	li	a2,4
     9f8:	240a000b 	li	t2,11
     9fc:	1000000f 	b	a3c <func_8081FB7C+0xb0>
     a00:	a60a0238 	sh	t2,568(s0)
     a04:	960b01e8 	lhu	t3,488(s0)
     a08:	3c0d0000 	lui	t5,0x0
     a0c:	25ad0000 	addiu	t5,t5,0
     a10:	000b6040 	sll	t4,t3,0x1
     a14:	a60c01e6 	sh	t4,486(s0)
     a18:	3c050000 	lui	a1,0x0
     a1c:	24a50000 	addiu	a1,a1,0
     a20:	afad0014 	sw	t5,20(sp)
     a24:	afa70010 	sw	a3,16(sp)
     a28:	24044826 	li	a0,18470
     a2c:	0c000000 	jal	0 <func_8081F1F0>
     a30:	24060004 	li	a2,4
     a34:	240e000a 	li	t6,10
     a38:	a60e0238 	sh	t6,568(s0)
     a3c:	960f01e8 	lhu	t7,488(s0)
     a40:	93a3002f 	lbu	v1,47(sp)
     a44:	3c060000 	lui	a2,0x0
     a48:	000fc080 	sll	t8,t7,0x2
     a4c:	24c60000 	addiu	a2,a2,0
     a50:	030fc021 	addu	t8,t8,t7
     a54:	00031080 	sll	v0,v1,0x2
     a58:	00d8c821 	addu	t9,a2,t8
     a5c:	00431021 	addu	v0,v0,v1
     a60:	03224021 	addu	t0,t9,v0
     a64:	91090001 	lbu	t1,1(t0)
     a68:	3c070000 	lui	a3,0x0
     a6c:	24e70000 	addiu	a3,a3,0
     a70:	a0e913e3 	sb	t1,5091(a3)
     a74:	960a01e8 	lhu	t2,488(s0)
     a78:	3c040000 	lui	a0,0x0
     a7c:	24840000 	addiu	a0,a0,0
     a80:	000a5880 	sll	t3,t2,0x2
     a84:	016a5821 	addu	t3,t3,t2
     a88:	00cb6021 	addu	t4,a2,t3
     a8c:	01826821 	addu	t5,t4,v0
     a90:	91ae0002 	lbu	t6,2(t5)
     a94:	a0ee13e4 	sb	t6,5092(a3)
     a98:	960f01e8 	lhu	t7,488(s0)
     a9c:	000fc080 	sll	t8,t7,0x2
     aa0:	030fc021 	addu	t8,t8,t7
     aa4:	00d8c821 	addu	t9,a2,t8
     aa8:	03224021 	addu	t0,t9,v0
     aac:	91090003 	lbu	t1,3(t0)
     ab0:	a0e913e5 	sb	t1,5093(a3)
     ab4:	960a01e8 	lhu	t2,488(s0)
     ab8:	000a5880 	sll	t3,t2,0x2
     abc:	016a5821 	addu	t3,t3,t2
     ac0:	00cb6021 	addu	t4,a2,t3
     ac4:	01826821 	addu	t5,t4,v0
     ac8:	91ae0004 	lbu	t6,4(t5)
     acc:	a0ee13e6 	sb	t6,5094(a3)
     ad0:	960f01e8 	lhu	t7,488(s0)
     ad4:	0c000000 	jal	0 <func_8081F1F0>
     ad8:	01e32821 	addu	a1,t7,v1
     adc:	3c070000 	lui	a3,0x0
     ae0:	24e70000 	addiu	a3,a3,0
     ae4:	a4e013ea 	sh	zero,5098(a3)
     ae8:	0c000000 	jal	0 <func_8081F1F0>
     aec:	24040032 	li	a0,50
     af0:	8fbf0024 	lw	ra,36(sp)
     af4:	8fb00020 	lw	s0,32(sp)
     af8:	27bd0028 	addiu	sp,sp,40
     afc:	03e00008 	jr	ra
     b00:	00000000 	nop

00000b04 <func_8081FCF4>:
     b04:	27bdffe8 	addiu	sp,sp,-24
     b08:	afbf0014 	sw	ra,20(sp)
     b0c:	948e01d6 	lhu	t6,470(a0)
     b10:	55c0000a 	bnezl	t6,b3c <func_8081FCF4+0x38>
     b14:	94a2000c 	lhu	v0,12(a1)
     b18:	94af000c 	lhu	t7,12(a1)
     b1c:	2401ffdf 	li	at,-33
     b20:	24190001 	li	t9,1
     b24:	01e1c027 	nor	t8,t7,at
     b28:	57000004 	bnezl	t8,b3c <func_8081FCF4+0x38>
     b2c:	94a2000c 	lhu	v0,12(a1)
     b30:	1000003f 	b	c30 <func_8081FCF4+0x12c>
     b34:	a49901d6 	sh	t9,470(a0)
     b38:	94a2000c 	lhu	v0,12(a1)
     b3c:	2401ffef 	li	at,-17
     b40:	00414027 	nor	t0,v0,at
     b44:	15000005 	bnez	t0,b5c <func_8081FCF4+0x58>
     b48:	2401dfff 	li	at,-8193
     b4c:	0c000000 	jal	0 <func_8081F1F0>
     b50:	24050002 	li	a1,2
     b54:	10000037 	b	c34 <func_8081FCF4+0x130>
     b58:	8fbf0014 	lw	ra,20(sp)
     b5c:	00414827 	nor	t1,v0,at
     b60:	55200006 	bnezl	t1,b7c <func_8081FCF4+0x78>
     b64:	84820238 	lh	v0,568(a0)
     b68:	0c000000 	jal	0 <func_8081F1F0>
     b6c:	00002825 	move	a1,zero
     b70:	10000030 	b	c34 <func_8081FCF4+0x130>
     b74:	8fbf0014 	lw	ra,20(sp)
     b78:	84820238 	lh	v0,568(a0)
     b7c:	2401000a 	li	at,10
     b80:	54410016 	bnel	v0,at,bdc <func_8081FCF4+0xd8>
     b84:	2401000b 	li	at,11
     b88:	848a0214 	lh	t2,532(a0)
     b8c:	240dffff 	li	t5,-1
     b90:	2941ffe2 	slti	at,t2,-30
     b94:	1020000e 	beqz	at,bd0 <func_8081FCF4+0xcc>
     b98:	00000000 	nop
     b9c:	848b023a 	lh	t3,570(a0)
     ba0:	256c0001 	addiu	t4,t3,1
     ba4:	a48c023a 	sh	t4,570(a0)
     ba8:	8482023a 	lh	v0,570(a0)
     bac:	2841000a 	slti	at,v0,10
     bb0:	10200003 	beqz	at,bc0 <func_8081FCF4+0xbc>
     bb4:	00000000 	nop
     bb8:	5440001e 	bnezl	v0,c34 <func_8081FCF4+0x130>
     bbc:	8fbf0014 	lw	ra,20(sp)
     bc0:	0c000000 	jal	0 <func_8081F1F0>
     bc4:	00002825 	move	a1,zero
     bc8:	1000001a 	b	c34 <func_8081FCF4+0x130>
     bcc:	8fbf0014 	lw	ra,20(sp)
     bd0:	10000017 	b	c30 <func_8081FCF4+0x12c>
     bd4:	a48d023a 	sh	t5,570(a0)
     bd8:	2401000b 	li	at,11
     bdc:	54410015 	bnel	v0,at,c34 <func_8081FCF4+0x130>
     be0:	8fbf0014 	lw	ra,20(sp)
     be4:	848e0214 	lh	t6,532(a0)
     be8:	2419ffff 	li	t9,-1
     bec:	29c1001f 	slti	at,t6,31
     bf0:	5420000f 	bnezl	at,c30 <func_8081FCF4+0x12c>
     bf4:	a499023a 	sh	t9,570(a0)
     bf8:	848f023a 	lh	t7,570(a0)
     bfc:	25f80001 	addiu	t8,t7,1
     c00:	a498023a 	sh	t8,570(a0)
     c04:	8482023a 	lh	v0,570(a0)
     c08:	2841000a 	slti	at,v0,10
     c0c:	10200003 	beqz	at,c1c <func_8081FCF4+0x118>
     c10:	00000000 	nop
     c14:	54400007 	bnezl	v0,c34 <func_8081FCF4+0x130>
     c18:	8fbf0014 	lw	ra,20(sp)
     c1c:	0c000000 	jal	0 <func_8081F1F0>
     c20:	24050002 	li	a1,2
     c24:	10000003 	b	c34 <func_8081FCF4+0x130>
     c28:	8fbf0014 	lw	ra,20(sp)
     c2c:	a499023a 	sh	t9,570(a0)
     c30:	8fbf0014 	lw	ra,20(sp)
     c34:	27bd0018 	addiu	sp,sp,24
     c38:	03e00008 	jr	ra
     c3c:	00000000 	nop

00000c40 <func_8081FE30>:
     c40:	27bdff80 	addiu	sp,sp,-128
     c44:	afbf0014 	sw	ra,20(sp)
     c48:	afa40080 	sw	a0,128(sp)
     c4c:	afa50084 	sw	a1,132(sp)
     c50:	8c850000 	lw	a1,0(a0)
     c54:	3c060000 	lui	a2,0x0
     c58:	24c60000 	addiu	a2,a2,0
     c5c:	27a40064 	addiu	a0,sp,100
     c60:	240703bb 	li	a3,955
     c64:	0c000000 	jal	0 <func_8081F1F0>
     c68:	afa50074 	sw	a1,116(sp)
     c6c:	8fa50080 	lw	a1,128(sp)
     c70:	3c010001 	lui	at,0x1
     c74:	34210760 	ori	at,at,0x760
     c78:	00a12821 	addu	a1,a1,at
     c7c:	94a301e4 	lhu	v1,484(a1)
     c80:	8fa80074 	lw	t0,116(sp)
     c84:	24010008 	li	at,8
     c88:	10600003 	beqz	v1,c98 <func_8081FE30+0x58>
     c8c:	27a40064 	addiu	a0,sp,100
     c90:	54610006 	bnel	v1,at,cac <func_8081FE30+0x6c>
     c94:	94b801e8 	lhu	t8,488(a1)
     c98:	94af01d4 	lhu	t7,468(a1)
     c9c:	24010006 	li	at,6
     ca0:	51e1000c 	beql	t7,at,cd4 <func_8081FE30+0x94>
     ca4:	97b90086 	lhu	t9,134(sp)
     ca8:	94b801e8 	lhu	t8,488(a1)
     cac:	24010002 	li	at,2
     cb0:	170100b0 	bne	t8,at,f74 <func_8081FE30+0x334>
     cb4:	28610003 	slti	at,v1,3
     cb8:	14200005 	bnez	at,cd0 <func_8081FE30+0x90>
     cbc:	24010005 	li	at,5
     cc0:	10610003 	beq	v1,at,cd0 <func_8081FE30+0x90>
     cc4:	24010008 	li	at,8
     cc8:	546100ab 	bnel	v1,at,f78 <func_8081FE30+0x338>
     ccc:	8fb90080 	lw	t9,128(sp)
     cd0:	97b90086 	lhu	t9,134(sp)
     cd4:	94ae01e8 	lhu	t6,488(a1)
     cd8:	3c18e700 	lui	t8,0xe700
     cdc:	572e0099 	bnel	t9,t6,f44 <func_8081FE30+0x304>
     ce0:	8d0202c0 	lw	v0,704(t0)
     ce4:	8d0202c0 	lw	v0,704(t0)
     ce8:	3c0efc30 	lui	t6,0xfc30
     cec:	35ce9661 	ori	t6,t6,0x9661
     cf0:	244f0008 	addiu	t7,v0,8
     cf4:	ad0f02c0 	sw	t7,704(t0)
     cf8:	ac400004 	sw	zero,4(v0)
     cfc:	ac580000 	sw	t8,0(v0)
     d00:	8d0202c0 	lw	v0,704(t0)
     d04:	3c0f552e 	lui	t7,0x552e
     d08:	35efff7f 	ori	t7,t7,0xff7f
     d0c:	24590008 	addiu	t9,v0,8
     d10:	ad1902c0 	sw	t9,704(t0)
     d14:	ac4f0004 	sw	t7,4(v0)
     d18:	ac4e0000 	sw	t6,0(v0)
     d1c:	8d0202c0 	lw	v0,704(t0)
     d20:	3c19fa00 	lui	t9,0xfa00
     d24:	3c0c0000 	lui	t4,0x0
     d28:	24580008 	addiu	t8,v0,8
     d2c:	ad1802c0 	sw	t8,704(t0)
     d30:	ac590000 	sw	t9,0(v0)
     d34:	84ae0260 	lh	t6,608(a1)
     d38:	3c190000 	lui	t9,0x0
     d3c:	27390000 	addiu	t9,t9,0
     d40:	000e7883 	sra	t7,t6,0x2
     d44:	000fc080 	sll	t8,t7,0x2
     d48:	030fc023 	subu	t8,t8,t7
     d4c:	0018c040 	sll	t8,t8,0x1
     d50:	03191821 	addu	v1,t8,t9
     d54:	846e0004 	lh	t6,4(v1)
     d58:	258c0000 	addiu	t4,t4,0
     d5c:	00004825 	move	t1,zero
     d60:	31cf00ff 	andi	t7,t6,0xff
     d64:	846e0000 	lh	t6,0(v1)
     d68:	000fc200 	sll	t8,t7,0x8
     d6c:	00003825 	move	a3,zero
     d70:	000e7e00 	sll	t7,t6,0x18
     d74:	846e0002 	lh	t6,2(v1)
     d78:	030fc825 	or	t9,t8,t7
     d7c:	3c1fe600 	lui	ra,0xe600
     d80:	31d800ff 	andi	t8,t6,0xff
     d84:	00187c00 	sll	t7,t8,0x10
     d88:	032f7025 	or	t6,t9,t7
     d8c:	35d800ff 	ori	t8,t6,0xff
     d90:	ac580004 	sw	t8,4(v0)
     d94:	8d0202c0 	lw	v0,704(t0)
     d98:	3c0ffb00 	lui	t7,0xfb00
     d9c:	3c0e0000 	lui	t6,0x0
     da0:	24590008 	addiu	t9,v0,8
     da4:	ad1902c0 	sw	t9,704(t0)
     da8:	ac4f0000 	sw	t7,0(v0)
     dac:	3c0f0000 	lui	t7,0x0
     db0:	85ef0000 	lh	t7,0(t7)
     db4:	85d80000 	lh	t8,0(t6)
     db8:	3c0df570 	lui	t5,0xf570
     dbc:	31ee00ff 	andi	t6,t7,0xff
     dc0:	0018ce00 	sll	t9,t8,0x18
     dc4:	000ec400 	sll	t8,t6,0x10
     dc8:	3c0e0000 	lui	t6,0x0
     dcc:	85ce0000 	lh	t6,0(t6)
     dd0:	03387825 	or	t7,t9,t8
     dd4:	3c0bfd70 	lui	t3,0xfd70
     dd8:	31d900ff 	andi	t9,t6,0xff
     ddc:	0019c200 	sll	t8,t9,0x8
     de0:	01f87025 	or	t6,t7,t8
     de4:	35d900ff 	ori	t9,t6,0xff
     de8:	ac590004 	sw	t9,4(v0)
     dec:	8d0202c0 	lw	v0,704(t0)
     df0:	3c180101 	lui	t8,0x101
     df4:	37180020 	ori	t8,t8,0x20
     df8:	244f0008 	addiu	t7,v0,8
     dfc:	ad0f02c0 	sw	t7,704(t0)
     e00:	ac580000 	sw	t8,0(v0)
     e04:	8cae0168 	lw	t6,360(a1)
     e08:	3c0a0700 	lui	t2,0x700
     e0c:	ac4e0004 	sw	t6,4(v0)
     e10:	8d0202c0 	lw	v0,704(t0)
     e14:	00077880 	sll	t7,a3,0x2
     e18:	018fc021 	addu	t8,t4,t7
     e1c:	24590008 	addiu	t9,v0,8
     e20:	ad1902c0 	sw	t9,704(t0)
     e24:	ac4b0000 	sw	t3,0(v0)
     e28:	8f0e0000 	lw	t6,0(t8)
     e2c:	00091840 	sll	v1,t1,0x1
     e30:	306500ff 	andi	a1,v1,0xff
     e34:	ac4e0004 	sw	t6,4(v0)
     e38:	8d0202c0 	lw	v0,704(t0)
     e3c:	3c0ef300 	lui	t6,0xf300
     e40:	00052c00 	sll	a1,a1,0x10
     e44:	24590008 	addiu	t9,v0,8
     e48:	ad1902c0 	sw	t9,704(t0)
     e4c:	ac4a0004 	sw	t2,4(v0)
     e50:	ac4d0000 	sw	t5,0(v0)
     e54:	8d0202c0 	lw	v0,704(t0)
     e58:	3c190703 	lui	t9,0x703
     e5c:	3739f800 	ori	t9,t9,0xf800
     e60:	244f0008 	addiu	t7,v0,8
     e64:	ad0f02c0 	sw	t7,704(t0)
     e68:	ac400004 	sw	zero,4(v0)
     e6c:	ac5f0000 	sw	ra,0(v0)
     e70:	8d0202c0 	lw	v0,704(t0)
     e74:	24660006 	addiu	a2,v1,6
     e78:	30c600ff 	andi	a2,a2,0xff
     e7c:	24580008 	addiu	t8,v0,8
     e80:	ad1802c0 	sw	t8,704(t0)
     e84:	ac590004 	sw	t9,4(v0)
     e88:	ac4e0000 	sw	t6,0(v0)
     e8c:	8d0202c0 	lw	v0,704(t0)
     e90:	3c18e700 	lui	t8,0xe700
     e94:	3c19f560 	lui	t9,0xf560
     e98:	244f0008 	addiu	t7,v0,8
     e9c:	ad0f02c0 	sw	t7,704(t0)
     ea0:	ac400004 	sw	zero,4(v0)
     ea4:	ac580000 	sw	t8,0(v0)
     ea8:	8d0202c0 	lw	v0,704(t0)
     eac:	37390200 	ori	t9,t9,0x200
     eb0:	3c18f200 	lui	t8,0xf200
     eb4:	244e0008 	addiu	t6,v0,8
     eb8:	ad0e02c0 	sw	t6,704(t0)
     ebc:	ac400004 	sw	zero,4(v0)
     ec0:	ac590000 	sw	t9,0(v0)
     ec4:	8d0202c0 	lw	v0,704(t0)
     ec8:	3c0e0003 	lui	t6,0x3
     ecc:	35cec03c 	ori	t6,t6,0xc03c
     ed0:	244f0008 	addiu	t7,v0,8
     ed4:	ad0f02c0 	sw	t7,704(t0)
     ed8:	ac4e0004 	sw	t6,4(v0)
     edc:	ac580000 	sw	t8,0(v0)
     ee0:	8d0202c0 	lw	v0,704(t0)
     ee4:	246f0004 	addiu	t7,v1,4
     ee8:	31f800ff 	andi	t8,t7,0xff
     eec:	24590008 	addiu	t9,v0,8
     ef0:	ad1902c0 	sw	t9,704(t0)
     ef4:	00187200 	sll	t6,t8,0x8
     ef8:	00aec825 	or	t9,a1,t6
     efc:	03267825 	or	t7,t9,a2
     f00:	01eac025 	or	t8,t7,t2
     f04:	24e70001 	addiu	a3,a3,1
     f08:	00073c00 	sll	a3,a3,0x10
     f0c:	246f0002 	addiu	t7,v1,2
     f10:	00067200 	sll	t6,a2,0x8
     f14:	ac580000 	sw	t8,0(v0)
     f18:	00073c03 	sra	a3,a3,0x10
     f1c:	25290004 	addiu	t1,t1,4
     f20:	31f800ff 	andi	t8,t7,0xff
     f24:	00aec825 	or	t9,a1,t6
     f28:	00094c00 	sll	t1,t1,0x10
     f2c:	28e10004 	slti	at,a3,4
     f30:	03387025 	or	t6,t9,t8
     f34:	00094c03 	sra	t1,t1,0x10
     f38:	1420ffb5 	bnez	at,e10 <func_8081FE30+0x1d0>
     f3c:	ac4e0004 	sw	t6,4(v0)
     f40:	8d0202c0 	lw	v0,704(t0)
     f44:	3c19e700 	lui	t9,0xe700
     f48:	3c0efb00 	lui	t6,0xfb00
     f4c:	244f0008 	addiu	t7,v0,8
     f50:	ad0f02c0 	sw	t7,704(t0)
     f54:	ac400004 	sw	zero,4(v0)
     f58:	ac590000 	sw	t9,0(v0)
     f5c:	8d0202c0 	lw	v0,704(t0)
     f60:	240f00ff 	li	t7,255
     f64:	24580008 	addiu	t8,v0,8
     f68:	ad1802c0 	sw	t8,704(t0)
     f6c:	ac4f0004 	sw	t7,4(v0)
     f70:	ac4e0000 	sw	t6,0(v0)
     f74:	8fb90080 	lw	t9,128(sp)
     f78:	3c060000 	lui	a2,0x0
     f7c:	24c60000 	addiu	a2,a2,0
     f80:	240703d9 	li	a3,985
     f84:	0c000000 	jal	0 <func_8081F1F0>
     f88:	8f250000 	lw	a1,0(t9)
     f8c:	8fbf0014 	lw	ra,20(sp)
     f90:	27bd0080 	addiu	sp,sp,128
     f94:	03e00008 	jr	ra
     f98:	00000000 	nop

00000f9c <func_8082018C>:
     f9c:	27bdffd8 	addiu	sp,sp,-40
     fa0:	3c0e0102 	lui	t6,0x102
     fa4:	afb70024 	sw	s7,36(sp)
     fa8:	afb60020 	sw	s6,32(sp)
     fac:	afb5001c 	sw	s5,28(sp)
     fb0:	afb40018 	sw	s4,24(sp)
     fb4:	afb30014 	sw	s3,20(sp)
     fb8:	afb20010 	sw	s2,16(sp)
     fbc:	afb1000c 	sw	s1,12(sp)
     fc0:	afb00008 	sw	s0,8(sp)
     fc4:	afa5002c 	sw	a1,44(sp)
     fc8:	35ce0040 	ori	t6,t6,0x40
     fcc:	00801025 	move	v0,a0
     fd0:	ac4e0000 	sw	t6,0(v0)
     fd4:	8faf002c 	lw	t7,44(sp)
     fd8:	3c11074f 	lui	s1,0x74f
     fdc:	3c12f568 	lui	s2,0xf568
     fe0:	ac4f0004 	sw	t7,4(v0)
     fe4:	3c140013 	lui	s4,0x13
     fe8:	00c03825 	move	a3,a2
     fec:	24840008 	addiu	a0,a0,8
     ff0:	24060006 	li	a2,6
     ff4:	3694c07c 	ori	s4,s4,0xc07c
     ff8:	8faa002c 	lw	t2,44(sp)
     ffc:	24020002 	li	v0,2
    1000:	36521400 	ori	s2,s2,0x1400
    1004:	3631f0cd 	ori	s1,s1,0xf0cd
    1008:	24050004 	li	a1,4
    100c:	3c10f300 	lui	s0,0xf300
    1010:	3c13f200 	lui	s3,0xf200
    1014:	00001825 	move	v1,zero
    1018:	3c0de600 	lui	t5,0xe600
    101c:	3c0cf570 	lui	t4,0xf570
    1020:	3c0bfd70 	lui	t3,0xfd70
    1024:	3c090700 	lui	t1,0x700
    1028:	3c08e700 	lui	t0,0xe700
    102c:	0080a825 	move	s5,a0
    1030:	aea80000 	sw	t0,0(s5)
    1034:	aea00004 	sw	zero,4(s5)
    1038:	24840008 	addiu	a0,a0,8
    103c:	0080a825 	move	s5,a0
    1040:	aeab0000 	sw	t3,0(s5)
    1044:	8cf80000 	lw	t8,0(a3)
    1048:	24840008 	addiu	a0,a0,8
    104c:	307600ff 	andi	s6,v1,0xff
    1050:	aeb80004 	sw	t8,4(s5)
    1054:	0080a825 	move	s5,a0
    1058:	aeac0000 	sw	t4,0(s5)
    105c:	aea90004 	sw	t1,4(s5)
    1060:	24840008 	addiu	a0,a0,8
    1064:	0080a825 	move	s5,a0
    1068:	aead0000 	sw	t5,0(s5)
    106c:	aea00004 	sw	zero,4(s5)
    1070:	24840008 	addiu	a0,a0,8
    1074:	0080a825 	move	s5,a0
    1078:	aeb00000 	sw	s0,0(s5)
    107c:	aeb10004 	sw	s1,4(s5)
    1080:	24840008 	addiu	a0,a0,8
    1084:	0080a825 	move	s5,a0
    1088:	aea80000 	sw	t0,0(s5)
    108c:	aea00004 	sw	zero,4(s5)
    1090:	24840008 	addiu	a0,a0,8
    1094:	0080a825 	move	s5,a0
    1098:	aeb20000 	sw	s2,0(s5)
    109c:	aea00004 	sw	zero,4(s5)
    10a0:	24840008 	addiu	a0,a0,8
    10a4:	30b900ff 	andi	t9,a1,0xff
    10a8:	0080a825 	move	s5,a0
    10ac:	00197200 	sll	t6,t9,0x8
    10b0:	0016b400 	sll	s6,s6,0x10
    10b4:	02ce7825 	or	t7,s6,t6
    10b8:	30d700ff 	andi	s7,a2,0xff
    10bc:	01f7c025 	or	t8,t7,s7
    10c0:	aeb30000 	sw	s3,0(s5)
    10c4:	aeb40004 	sw	s4,4(s5)
    10c8:	24840008 	addiu	a0,a0,8
    10cc:	0309c825 	or	t9,t8,t1
    10d0:	305800ff 	andi	t8,v0,0xff
    10d4:	0080a825 	move	s5,a0
    10d8:	00177200 	sll	t6,s7,0x8
    10dc:	02ce7825 	or	t7,s6,t6
    10e0:	aeb90000 	sw	t9,0(s5)
    10e4:	24420008 	addiu	v0,v0,8
    10e8:	28410042 	slti	at,v0,66
    10ec:	01f8c825 	or	t9,t7,t8
    10f0:	aeb90004 	sw	t9,4(s5)
    10f4:	24840008 	addiu	a0,a0,8
    10f8:	24c60008 	addiu	a2,a2,8
    10fc:	24a50008 	addiu	a1,a1,8
    1100:	24630008 	addiu	v1,v1,8
    1104:	1420ffc9 	bnez	at,102c <func_8082018C+0x90>
    1108:	24e70004 	addiu	a3,a3,4
    110c:	00801025 	move	v0,a0
    1110:	3c0e0101 	lui	t6,0x101
    1114:	35cec038 	ori	t6,t6,0xc038
    1118:	254f0200 	addiu	t7,t2,512
    111c:	ac4f0004 	sw	t7,4(v0)
    1120:	ac4e0000 	sw	t6,0(v0)
    1124:	24840008 	addiu	a0,a0,8
    1128:	24020002 	li	v0,2
    112c:	240a003a 	li	t2,58
    1130:	00001825 	move	v1,zero
    1134:	24050004 	li	a1,4
    1138:	24060006 	li	a2,6
    113c:	0080a825 	move	s5,a0
    1140:	aea80000 	sw	t0,0(s5)
    1144:	aea00004 	sw	zero,4(s5)
    1148:	24840008 	addiu	a0,a0,8
    114c:	0080a825 	move	s5,a0
    1150:	aeab0000 	sw	t3,0(s5)
    1154:	8cf80000 	lw	t8,0(a3)
    1158:	24840008 	addiu	a0,a0,8
    115c:	307600ff 	andi	s6,v1,0xff
    1160:	aeb80004 	sw	t8,4(s5)
    1164:	0080a825 	move	s5,a0
    1168:	aeac0000 	sw	t4,0(s5)
    116c:	aea90004 	sw	t1,4(s5)
    1170:	24840008 	addiu	a0,a0,8
    1174:	0080a825 	move	s5,a0
    1178:	aead0000 	sw	t5,0(s5)
    117c:	aea00004 	sw	zero,4(s5)
    1180:	24840008 	addiu	a0,a0,8
    1184:	0080a825 	move	s5,a0
    1188:	aeb00000 	sw	s0,0(s5)
    118c:	aeb10004 	sw	s1,4(s5)
    1190:	24840008 	addiu	a0,a0,8
    1194:	0080a825 	move	s5,a0
    1198:	aea80000 	sw	t0,0(s5)
    119c:	aea00004 	sw	zero,4(s5)
    11a0:	24840008 	addiu	a0,a0,8
    11a4:	0080a825 	move	s5,a0
    11a8:	aeb20000 	sw	s2,0(s5)
    11ac:	aea00004 	sw	zero,4(s5)
    11b0:	24840008 	addiu	a0,a0,8
    11b4:	30b900ff 	andi	t9,a1,0xff
    11b8:	0080a825 	move	s5,a0
    11bc:	00197200 	sll	t6,t9,0x8
    11c0:	0016b400 	sll	s6,s6,0x10
    11c4:	02ce7825 	or	t7,s6,t6
    11c8:	30d700ff 	andi	s7,a2,0xff
    11cc:	01f7c025 	or	t8,t7,s7
    11d0:	aeb30000 	sw	s3,0(s5)
    11d4:	aeb40004 	sw	s4,4(s5)
    11d8:	24840008 	addiu	a0,a0,8
    11dc:	0309c825 	or	t9,t8,t1
    11e0:	305800ff 	andi	t8,v0,0xff
    11e4:	0080a825 	move	s5,a0
    11e8:	00177200 	sll	t6,s7,0x8
    11ec:	02ce7825 	or	t7,s6,t6
    11f0:	aeb90000 	sw	t9,0(s5)
    11f4:	01f8c825 	or	t9,t7,t8
    11f8:	24420008 	addiu	v0,v0,8
    11fc:	aeb90004 	sw	t9,4(s5)
    1200:	24840008 	addiu	a0,a0,8
    1204:	24c60008 	addiu	a2,a2,8
    1208:	24a50008 	addiu	a1,a1,8
    120c:	24630008 	addiu	v1,v1,8
    1210:	144affca 	bne	v0,t2,113c <func_8082018C+0x1a0>
    1214:	24e70004 	addiu	a3,a3,4
    1218:	8fb00008 	lw	s0,8(sp)
    121c:	8fb1000c 	lw	s1,12(sp)
    1220:	8fb20010 	lw	s2,16(sp)
    1224:	8fb30014 	lw	s3,20(sp)
    1228:	8fb40018 	lw	s4,24(sp)
    122c:	8fb5001c 	lw	s5,28(sp)
    1230:	8fb60020 	lw	s6,32(sp)
    1234:	8fb70024 	lw	s7,36(sp)
    1238:	27bd0028 	addiu	sp,sp,40
    123c:	03e00008 	jr	ra
    1240:	00801025 	move	v0,a0

00001244 <func_80820434>:
    1244:	27bdfee8 	addiu	sp,sp,-280
    1248:	afbf0024 	sw	ra,36(sp)
    124c:	afb0001c 	sw	s0,28(sp)
    1250:	afa40118 	sw	a0,280(sp)
    1254:	3c060000 	lui	a2,0x0
    1258:	00a08025 	move	s0,a1
    125c:	afb10020 	sw	s1,32(sp)
    1260:	24c60000 	addiu	a2,a2,0
    1264:	27a400f8 	addiu	a0,sp,248
    1268:	0c000000 	jal	0 <func_8081F1F0>
    126c:	2407044c 	li	a3,1100
    1270:	8fb10118 	lw	s1,280(sp)
    1274:	3c010001 	lui	at,0x1
    1278:	34210760 	ori	at,at,0x760
    127c:	02218821 	addu	s1,s1,at
    1280:	962201d4 	lhu	v0,468(s1)
    1284:	28410008 	slti	at,v0,8
    1288:	14200002 	bnez	at,1294 <func_80820434+0x50>
    128c:	28410012 	slti	at,v0,18
    1290:	142003e7 	bnez	at,2230 <func_80820434+0xfec>
    1294:	24010007 	li	at,7
    1298:	1041013c 	beq	v0,at,178c <func_80820434+0x548>
    129c:	3c0c0000 	lui	t4,0x0
    12a0:	862e0260 	lh	t6,608(s1)
    12a4:	3c1f0000 	lui	ra,0x0
    12a8:	87ff0000 	lh	ra,0(ra)
    12ac:	000e7880 	sll	t7,t6,0x2
    12b0:	01ee7823 	subu	t7,t7,t6
    12b4:	001f4080 	sll	t0,ra,0x2
    12b8:	258c0000 	addiu	t4,t4,0
    12bc:	000f7840 	sll	t7,t7,0x1
    12c0:	011f4023 	subu	t0,t0,ra
    12c4:	00084040 	sll	t0,t0,0x1
    12c8:	018fc021 	addu	t8,t4,t7
    12cc:	03082021 	addu	a0,t8,t0
    12d0:	3c050000 	lui	a1,0x0
    12d4:	84a50000 	lh	a1,0(a1)
    12d8:	848d0000 	lh	t5,0(a0)
    12dc:	3c0a0000 	lui	t2,0x0
    12e0:	3c060000 	lui	a2,0x0
    12e4:	00ad1823 	subu	v1,a1,t5
    12e8:	04600003 	bltz	v1,12f8 <func_80820434+0xb4>
    12ec:	3c070000 	lui	a3,0x0
    12f0:	10000002 	b	12fc <func_80820434+0xb8>
    12f4:	00601025 	move	v0,v1
    12f8:	00031023 	negu	v0,v1
    12fc:	854a0000 	lh	t2,0(t2)
    1300:	84c60000 	lh	a2,0(a2)
    1304:	84990002 	lh	t9,2(a0)
    1308:	004a001a 	div	zero,v0,t2
    130c:	00004812 	mflo	t1
    1310:	00094c00 	sll	t1,t1,0x10
    1314:	15400002 	bnez	t2,1320 <func_80820434+0xdc>
    1318:	00000000 	nop
    131c:	0007000d 	break	0x7
    1320:	2401ffff 	li	at,-1
    1324:	15410004 	bne	t2,at,1338 <func_80820434+0xf4>
    1328:	3c018000 	lui	at,0x8000
    132c:	14410002 	bne	v0,at,1338 <func_80820434+0xf4>
    1330:	00000000 	nop
    1334:	0006000d 	break	0x6
    1338:	00d91823 	subu	v1,a2,t9
    133c:	04600003 	bltz	v1,134c <func_80820434+0x108>
    1340:	00094c03 	sra	t1,t1,0x10
    1344:	10000002 	b	1350 <func_80820434+0x10c>
    1348:	00601025 	move	v0,v1
    134c:	00031023 	negu	v0,v1
    1350:	004a001a 	div	zero,v0,t2
    1354:	84e70000 	lh	a3,0(a3)
    1358:	848e0004 	lh	t6,4(a0)
    135c:	00005812 	mflo	t3
    1360:	000b5c00 	sll	t3,t3,0x10
    1364:	15400002 	bnez	t2,1370 <func_80820434+0x12c>
    1368:	00000000 	nop
    136c:	0007000d 	break	0x7
    1370:	2401ffff 	li	at,-1
    1374:	15410004 	bne	t2,at,1388 <func_80820434+0x144>
    1378:	3c018000 	lui	at,0x8000
    137c:	14410002 	bne	v0,at,1388 <func_80820434+0x144>
    1380:	00000000 	nop
    1384:	0006000d 	break	0x6
    1388:	00ee1823 	subu	v1,a3,t6
    138c:	04600003 	bltz	v1,139c <func_80820434+0x158>
    1390:	000b5c03 	sra	t3,t3,0x10
    1394:	10000002 	b	13a0 <func_80820434+0x15c>
    1398:	00601025 	move	v0,v1
    139c:	00031023 	negu	v0,v1
    13a0:	00ad082a 	slt	at,a1,t5
    13a4:	14200005 	bnez	at,13bc <func_80820434+0x178>
    13a8:	00a9c021 	addu	t8,a1,t1
    13ac:	00a97823 	subu	t7,a1,t1
    13b0:	3c010000 	lui	at,0x0
    13b4:	10000003 	b	13c4 <func_80820434+0x180>
    13b8:	a42f0000 	sh	t7,0(at)
    13bc:	3c010000 	lui	at,0x0
    13c0:	a4380000 	sh	t8,0(at)
    13c4:	86390260 	lh	t9,608(s1)
    13c8:	00197080 	sll	t6,t9,0x2
    13cc:	01d97023 	subu	t6,t6,t9
    13d0:	000e7040 	sll	t6,t6,0x1
    13d4:	018e7821 	addu	t7,t4,t6
    13d8:	01e8c021 	addu	t8,t7,t0
    13dc:	87190002 	lh	t9,2(t8)
    13e0:	00cb7023 	subu	t6,a2,t3
    13e4:	00cb7821 	addu	t7,a2,t3
    13e8:	00d9082a 	slt	at,a2,t9
    13ec:	14200003 	bnez	at,13fc <func_80820434+0x1b8>
    13f0:	3c010000 	lui	at,0x0
    13f4:	10000003 	b	1404 <func_80820434+0x1c0>
    13f8:	a42e0000 	sh	t6,0(at)
    13fc:	3c010000 	lui	at,0x0
    1400:	a42f0000 	sh	t7,0(at)
    1404:	86380260 	lh	t8,608(s1)
    1408:	0018c880 	sll	t9,t8,0x2
    140c:	0338c823 	subu	t9,t9,t8
    1410:	0019c840 	sll	t9,t9,0x1
    1414:	01997021 	addu	t6,t4,t9
    1418:	01c87821 	addu	t7,t6,t0
    141c:	85f80004 	lh	t8,4(t7)
    1420:	00f8082a 	slt	at,a3,t8
    1424:	14200012 	bnez	at,1470 <func_80820434+0x22c>
    1428:	00000000 	nop
    142c:	004a001a 	div	zero,v0,t2
    1430:	15400002 	bnez	t2,143c <func_80820434+0x1f8>
    1434:	00000000 	nop
    1438:	0007000d 	break	0x7
    143c:	2401ffff 	li	at,-1
    1440:	15410004 	bne	t2,at,1454 <func_80820434+0x210>
    1444:	3c018000 	lui	at,0x8000
    1448:	14410002 	bne	v0,at,1454 <func_80820434+0x210>
    144c:	00000000 	nop
    1450:	0006000d 	break	0x6
    1454:	0000c812 	mflo	t9
    1458:	00197400 	sll	t6,t9,0x10
    145c:	000e7c03 	sra	t7,t6,0x10
    1460:	00efc023 	subu	t8,a3,t7
    1464:	3c010000 	lui	at,0x0
    1468:	10000011 	b	14b0 <func_80820434+0x26c>
    146c:	a4380000 	sh	t8,0(at)
    1470:	004a001a 	div	zero,v0,t2
    1474:	15400002 	bnez	t2,1480 <func_80820434+0x23c>
    1478:	00000000 	nop
    147c:	0007000d 	break	0x7
    1480:	2401ffff 	li	at,-1
    1484:	15410004 	bne	t2,at,1498 <func_80820434+0x254>
    1488:	3c018000 	lui	at,0x8000
    148c:	14410002 	bne	v0,at,1498 <func_80820434+0x254>
    1490:	00000000 	nop
    1494:	0006000d 	break	0x6
    1498:	0000c812 	mflo	t9
    149c:	00197400 	sll	t6,t9,0x10
    14a0:	000e7c03 	sra	t7,t6,0x10
    14a4:	00efc021 	addu	t8,a3,t7
    14a8:	3c010000 	lui	at,0x0
    14ac:	a4380000 	sh	t8,0(at)
    14b0:	254affff 	addiu	t2,t2,-1
    14b4:	000a5400 	sll	t2,t2,0x10
    14b8:	000a5403 	sra	t2,t2,0x10
    14bc:	3c010000 	lui	at,0x0
    14c0:	1540002d 	bnez	t2,1578 <func_80820434+0x334>
    14c4:	a42a0000 	sh	t2,0(at)
    14c8:	86390260 	lh	t9,608(s1)
    14cc:	3c010000 	lui	at,0x0
    14d0:	3c040000 	lui	a0,0x0
    14d4:	00197080 	sll	t6,t9,0x2
    14d8:	01d97023 	subu	t6,t6,t9
    14dc:	000e7040 	sll	t6,t6,0x1
    14e0:	018e7821 	addu	t7,t4,t6
    14e4:	01e8c021 	addu	t8,t7,t0
    14e8:	87190000 	lh	t9,0(t8)
    14ec:	24840000 	addiu	a0,a0,0
    14f0:	a4390000 	sh	t9,0(at)
    14f4:	862e0260 	lh	t6,608(s1)
    14f8:	3c010000 	lui	at,0x0
    14fc:	000e7880 	sll	t7,t6,0x2
    1500:	01ee7823 	subu	t7,t7,t6
    1504:	000f7840 	sll	t7,t7,0x1
    1508:	018fc021 	addu	t8,t4,t7
    150c:	0308c821 	addu	t9,t8,t0
    1510:	872e0002 	lh	t6,2(t9)
    1514:	a42e0000 	sh	t6,0(at)
    1518:	862f0260 	lh	t7,608(s1)
    151c:	3c010000 	lui	at,0x0
    1520:	000fc080 	sll	t8,t7,0x2
    1524:	030fc023 	subu	t8,t8,t7
    1528:	0018c040 	sll	t8,t8,0x1
    152c:	0198c821 	addu	t9,t4,t8
    1530:	03287021 	addu	t6,t9,t0
    1534:	85cf0004 	lh	t7,4(t6)
    1538:	001fc840 	sll	t9,ra,0x1
    153c:	27ff0001 	addiu	ra,ra,1
    1540:	a42f0000 	sh	t7,0(at)
    1544:	8c980000 	lw	t8,0(a0)
    1548:	3c010000 	lui	at,0x0
    154c:	001ffc00 	sll	ra,ra,0x10
    1550:	03197021 	addu	t6,t8,t9
    1554:	85ca07cc 	lh	t2,1996(t6)
    1558:	001ffc03 	sra	ra,ra,0x10
    155c:	a42a0000 	sh	t2,0(at)
    1560:	3c010000 	lui	at,0x0
    1564:	a43f0000 	sh	ra,0(at)
    1568:	2be10004 	slti	at,ra,4
    156c:	14200002 	bnez	at,1578 <func_80820434+0x334>
    1570:	3c010000 	lui	at,0x0
    1574:	a4200000 	sh	zero,0(at)
    1578:	86220214 	lh	v0,532(s1)
    157c:	3c040000 	lui	a0,0x0
    1580:	24840000 	addiu	a0,a0,0
    1584:	2841ffe2 	slti	at,v0,-30
    1588:	1020001d 	beqz	at,1600 <func_80820434+0x3bc>
    158c:	3c0f0000 	lui	t7,0x0
    1590:	85ef0000 	lh	t7,0(t7)
    1594:	2401ffff 	li	at,-1
    1598:	3c020000 	lui	v0,0x0
    159c:	55e10011 	bnel	t7,at,15e4 <func_80820434+0x3a0>
    15a0:	8c990000 	lw	t9,0(a0)
    15a4:	84420000 	lh	v0,0(v0)
    15a8:	3c010000 	lui	at,0x0
    15ac:	2442ffff 	addiu	v0,v0,-1
    15b0:	00021400 	sll	v0,v0,0x10
    15b4:	00021403 	sra	v0,v0,0x10
    15b8:	04410006 	bgez	v0,15d4 <func_80820434+0x390>
    15bc:	00000000 	nop
    15c0:	8c980000 	lw	t8,0(a0)
    15c4:	3c010000 	lui	at,0x0
    15c8:	87020aa0 	lh	v0,2720(t8)
    15cc:	1000002d 	b	1684 <func_80820434+0x440>
    15d0:	a4220000 	sh	v0,0(at)
    15d4:	a4220000 	sh	v0,0(at)
    15d8:	1000002a 	b	1684 <func_80820434+0x440>
    15dc:	a6200214 	sh	zero,532(s1)
    15e0:	8c990000 	lw	t9,0(a0)
    15e4:	240effff 	li	t6,-1
    15e8:	3c010000 	lui	at,0x0
    15ec:	87220aa4 	lh	v0,2724(t9)
    15f0:	a42e0000 	sh	t6,0(at)
    15f4:	3c010000 	lui	at,0x0
    15f8:	10000022 	b	1684 <func_80820434+0x440>
    15fc:	a4220000 	sh	v0,0(at)
    1600:	2841001f 	slti	at,v0,31
    1604:	1420001d 	bnez	at,167c <func_80820434+0x438>
    1608:	3c0f0000 	lui	t7,0x0
    160c:	85ef0000 	lh	t7,0(t7)
    1610:	24010001 	li	at,1
    1614:	3c020000 	lui	v0,0x0
    1618:	55e10011 	bnel	t7,at,1660 <func_80820434+0x41c>
    161c:	8c990000 	lw	t9,0(a0)
    1620:	84420000 	lh	v0,0(v0)
    1624:	3c010000 	lui	at,0x0
    1628:	2442ffff 	addiu	v0,v0,-1
    162c:	00021400 	sll	v0,v0,0x10
    1630:	00021403 	sra	v0,v0,0x10
    1634:	04410006 	bgez	v0,1650 <func_80820434+0x40c>
    1638:	00000000 	nop
    163c:	8c980000 	lw	t8,0(a0)
    1640:	3c010000 	lui	at,0x0
    1644:	87020aa0 	lh	v0,2720(t8)
    1648:	1000000e 	b	1684 <func_80820434+0x440>
    164c:	a4220000 	sh	v0,0(at)
    1650:	a4220000 	sh	v0,0(at)
    1654:	1000000b 	b	1684 <func_80820434+0x440>
    1658:	a6200214 	sh	zero,532(s1)
    165c:	8c990000 	lw	t9,0(a0)
    1660:	240e0001 	li	t6,1
    1664:	3c010000 	lui	at,0x0
    1668:	87220aa4 	lh	v0,2724(t9)
    166c:	a42e0000 	sh	t6,0(at)
    1670:	3c010000 	lui	at,0x0
    1674:	10000003 	b	1684 <func_80820434+0x440>
    1678:	a4220000 	sh	v0,0(at)
    167c:	3c010000 	lui	at,0x0
    1680:	a4200000 	sh	zero,0(at)
    1684:	86220216 	lh	v0,534(s1)
    1688:	3c0f0000 	lui	t7,0x0
    168c:	2841ffe2 	slti	at,v0,-30
    1690:	5020001e 	beqzl	at,170c <func_80820434+0x4c8>
    1694:	2841001f 	slti	at,v0,31
    1698:	85ef0000 	lh	t7,0(t7)
    169c:	2401ffff 	li	at,-1
    16a0:	3c020000 	lui	v0,0x0
    16a4:	55e10011 	bnel	t7,at,16ec <func_80820434+0x4a8>
    16a8:	8c990000 	lw	t9,0(a0)
    16ac:	84420000 	lh	v0,0(v0)
    16b0:	3c010000 	lui	at,0x0
    16b4:	2442ffff 	addiu	v0,v0,-1
    16b8:	00021400 	sll	v0,v0,0x10
    16bc:	00021403 	sra	v0,v0,0x10
    16c0:	04410006 	bgez	v0,16dc <func_80820434+0x498>
    16c4:	00000000 	nop
    16c8:	8c980000 	lw	t8,0(a0)
    16cc:	3c010000 	lui	at,0x0
    16d0:	87020aa0 	lh	v0,2720(t8)
    16d4:	1000002d 	b	178c <func_80820434+0x548>
    16d8:	a4220000 	sh	v0,0(at)
    16dc:	a4220000 	sh	v0,0(at)
    16e0:	1000002a 	b	178c <func_80820434+0x548>
    16e4:	a6200216 	sh	zero,534(s1)
    16e8:	8c990000 	lw	t9,0(a0)
    16ec:	240effff 	li	t6,-1
    16f0:	3c010000 	lui	at,0x0
    16f4:	87220aa4 	lh	v0,2724(t9)
    16f8:	a42e0000 	sh	t6,0(at)
    16fc:	3c010000 	lui	at,0x0
    1700:	10000022 	b	178c <func_80820434+0x548>
    1704:	a4220000 	sh	v0,0(at)
    1708:	2841001f 	slti	at,v0,31
    170c:	1420001d 	bnez	at,1784 <func_80820434+0x540>
    1710:	3c0f0000 	lui	t7,0x0
    1714:	85ef0000 	lh	t7,0(t7)
    1718:	24010001 	li	at,1
    171c:	3c020000 	lui	v0,0x0
    1720:	55e10011 	bnel	t7,at,1768 <func_80820434+0x524>
    1724:	8c990000 	lw	t9,0(a0)
    1728:	84420000 	lh	v0,0(v0)
    172c:	3c010000 	lui	at,0x0
    1730:	2442ffff 	addiu	v0,v0,-1
    1734:	00021400 	sll	v0,v0,0x10
    1738:	00021403 	sra	v0,v0,0x10
    173c:	04410006 	bgez	v0,1758 <func_80820434+0x514>
    1740:	00000000 	nop
    1744:	8c980000 	lw	t8,0(a0)
    1748:	3c010000 	lui	at,0x0
    174c:	87020aa0 	lh	v0,2720(t8)
    1750:	1000000e 	b	178c <func_80820434+0x548>
    1754:	a4220000 	sh	v0,0(at)
    1758:	a4220000 	sh	v0,0(at)
    175c:	1000000b 	b	178c <func_80820434+0x548>
    1760:	a6200216 	sh	zero,534(s1)
    1764:	8c990000 	lw	t9,0(a0)
    1768:	240e0001 	li	t6,1
    176c:	3c010000 	lui	at,0x0
    1770:	87220aa4 	lh	v0,2724(t9)
    1774:	a42e0000 	sh	t6,0(at)
    1778:	3c010000 	lui	at,0x0
    177c:	10000003 	b	178c <func_80820434+0x548>
    1780:	a4220000 	sh	v0,0(at)
    1784:	3c010000 	lui	at,0x0
    1788:	a4200000 	sh	zero,0(at)
    178c:	962201e8 	lhu	v0,488(s1)
    1790:	3c18e700 	lui	t8,0xe700
    1794:	5040004a 	beqzl	v0,18c0 <func_80820434+0x67c>
    1798:	24010003 	li	at,3
    179c:	8e0202c0 	lw	v0,704(s0)
    17a0:	3c0efc12 	lui	t6,0xfc12
    17a4:	35ce1824 	ori	t6,t6,0x1824
    17a8:	244f0008 	addiu	t7,v0,8
    17ac:	ae0f02c0 	sw	t7,704(s0)
    17b0:	ac400004 	sw	zero,4(v0)
    17b4:	ac580000 	sw	t8,0(v0)
    17b8:	8e0202c0 	lw	v0,704(s0)
    17bc:	3c0fff33 	lui	t7,0xff33
    17c0:	35efffff 	ori	t7,t7,0xffff
    17c4:	24590008 	addiu	t9,v0,8
    17c8:	ae1902c0 	sw	t9,704(s0)
    17cc:	ac4f0004 	sw	t7,4(v0)
    17d0:	ac4e0000 	sw	t6,0(v0)
    17d4:	3c020000 	lui	v0,0x0
    17d8:	8c420000 	lw	v0,0(v0)
    17dc:	3c0142c8 	lui	at,0x42c8
    17e0:	44810000 	mtc1	at,$f0
    17e4:	84590d9a 	lh	t9,3482(v0)
    17e8:	84580d98 	lh	t8,3480(v0)
    17ec:	44806000 	mtc1	zero,$f12
    17f0:	44994000 	mtc1	t9,$f8
    17f4:	44982000 	mtc1	t8,$f4
    17f8:	00003825 	move	a3,zero
    17fc:	468042a0 	cvt.s.w	$f10,$f8
    1800:	468021a0 	cvt.s.w	$f6,$f4
    1804:	46005407 	neg.s	$f16,$f10
    1808:	46003383 	div.s	$f14,$f6,$f0
    180c:	46008483 	div.s	$f18,$f16,$f0
    1810:	44069000 	mfc1	a2,$f18
    1814:	0c000000 	jal	0 <func_8081F1F0>
    1818:	00000000 	nop
    181c:	3c010000 	lui	at,0x0
    1820:	c42c0000 	lwc1	$f12,0(at)
    1824:	24070001 	li	a3,1
    1828:	44066000 	mfc1	a2,$f12
    182c:	0c000000 	jal	0 <func_8081F1F0>
    1830:	46006386 	mov.s	$f14,$f12
    1834:	c62401f4 	lwc1	$f4,500(s1)
    1838:	3c0142c8 	lui	at,0x42c8
    183c:	44814000 	mtc1	at,$f8
    1840:	46002187 	neg.s	$f6,$f4
    1844:	24050001 	li	a1,1
    1848:	0c000000 	jal	0 <func_8081F1F0>
    184c:	46083303 	div.s	$f12,$f6,$f8
    1850:	8e0202c0 	lw	v0,704(s0)
    1854:	3c0fda38 	lui	t7,0xda38
    1858:	35ef0003 	ori	t7,t7,0x3
    185c:	244e0008 	addiu	t6,v0,8
    1860:	ae0e02c0 	sw	t6,704(s0)
    1864:	3c050000 	lui	a1,0x0
    1868:	ac4f0000 	sw	t7,0(v0)
    186c:	24a50000 	addiu	a1,a1,0
    1870:	02002025 	move	a0,s0
    1874:	24060495 	li	a2,1173
    1878:	0c000000 	jal	0 <func_8081F1F0>
    187c:	afa200ec 	sw	v0,236(sp)
    1880:	8fa300ec 	lw	v1,236(sp)
    1884:	3c180000 	lui	t8,0x0
    1888:	3c060000 	lui	a2,0x0
    188c:	ac620004 	sw	v0,4(v1)
    1890:	93181409 	lbu	t8,5129(t8)
    1894:	8e250144 	lw	a1,324(s1)
    1898:	8e0402c0 	lw	a0,704(s0)
    189c:	0018c880 	sll	t9,t8,0x2
    18a0:	00d93021 	addu	a2,a2,t9
    18a4:	0c000000 	jal	0 <func_8081F1F0>
    18a8:	8cc60000 	lw	a2,0(a2)
    18ac:	ae0202c0 	sw	v0,704(s0)
    18b0:	0c000000 	jal	0 <func_8081F1F0>
    18b4:	8fa40118 	lw	a0,280(sp)
    18b8:	962201e8 	lhu	v0,488(s1)
    18bc:	24010003 	li	at,3
    18c0:	1041004b 	beq	v0,at,19f0 <func_80820434+0x7ac>
    18c4:	00401825 	move	v1,v0
    18c8:	8e0202c0 	lw	v0,704(s0)
    18cc:	3c0fe700 	lui	t7,0xe700
    18d0:	3c19fc12 	lui	t9,0xfc12
    18d4:	244e0008 	addiu	t6,v0,8
    18d8:	ae0e02c0 	sw	t6,704(s0)
    18dc:	ac400004 	sw	zero,4(v0)
    18e0:	ac4f0000 	sw	t7,0(v0)
    18e4:	8e0202c0 	lw	v0,704(s0)
    18e8:	3c0eff33 	lui	t6,0xff33
    18ec:	35ceffff 	ori	t6,t6,0xffff
    18f0:	24580008 	addiu	t8,v0,8
    18f4:	ae1802c0 	sw	t8,704(s0)
    18f8:	37391824 	ori	t9,t9,0x1824
    18fc:	ac590000 	sw	t9,0(v0)
    1900:	ac4e0004 	sw	t6,4(v0)
    1904:	3c020000 	lui	v0,0x0
    1908:	8c420000 	lw	v0,0(v0)
    190c:	3c0142c8 	lui	at,0x42c8
    1910:	44810000 	mtc1	at,$f0
    1914:	844f0d9a 	lh	t7,3482(v0)
    1918:	84580d98 	lh	t8,3480(v0)
    191c:	24060000 	li	a2,0
    1920:	448f5000 	mtc1	t7,$f10
    1924:	44982000 	mtc1	t8,$f4
    1928:	00003825 	move	a3,zero
    192c:	46805420 	cvt.s.w	$f16,$f10
    1930:	468021a0 	cvt.s.w	$f6,$f4
    1934:	46008487 	neg.s	$f18,$f16
    1938:	46003383 	div.s	$f14,$f6,$f0
    193c:	0c000000 	jal	0 <func_8081F1F0>
    1940:	46009303 	div.s	$f12,$f18,$f0
    1944:	3c010000 	lui	at,0x0
    1948:	c42c0000 	lwc1	$f12,0(at)
    194c:	24070001 	li	a3,1
    1950:	44066000 	mfc1	a2,$f12
    1954:	0c000000 	jal	0 <func_8081F1F0>
    1958:	46006386 	mov.s	$f14,$f12
    195c:	3c0142c8 	lui	at,0x42c8
    1960:	44815000 	mtc1	at,$f10
    1964:	c62801f8 	lwc1	$f8,504(s1)
    1968:	24050001 	li	a1,1
    196c:	0c000000 	jal	0 <func_8081F1F0>
    1970:	460a4303 	div.s	$f12,$f8,$f10
    1974:	3c010000 	lui	at,0x0
    1978:	c42c0000 	lwc1	$f12,0(at)
    197c:	0c000000 	jal	0 <func_8081F1F0>
    1980:	24050001 	li	a1,1
    1984:	8e0202c0 	lw	v0,704(s0)
    1988:	3c0eda38 	lui	t6,0xda38
    198c:	35ce0003 	ori	t6,t6,0x3
    1990:	24590008 	addiu	t9,v0,8
    1994:	ae1902c0 	sw	t9,704(s0)
    1998:	3c050000 	lui	a1,0x0
    199c:	ac4e0000 	sw	t6,0(v0)
    19a0:	24a50000 	addiu	a1,a1,0
    19a4:	02002025 	move	a0,s0
    19a8:	240604ac 	li	a2,1196
    19ac:	0c000000 	jal	0 <func_8081F1F0>
    19b0:	afa200e0 	sw	v0,224(sp)
    19b4:	8fa300e0 	lw	v1,224(sp)
    19b8:	3c0f0000 	lui	t7,0x0
    19bc:	3c060000 	lui	a2,0x0
    19c0:	ac620004 	sw	v0,4(v1)
    19c4:	91ef1409 	lbu	t7,5129(t7)
    19c8:	8e250148 	lw	a1,328(s1)
    19cc:	8e0402c0 	lw	a0,704(s0)
    19d0:	000fc080 	sll	t8,t7,0x2
    19d4:	00d83021 	addu	a2,a2,t8
    19d8:	0c000000 	jal	0 <func_8081F1F0>
    19dc:	8cc60000 	lw	a2,0(a2)
    19e0:	ae0202c0 	sw	v0,704(s0)
    19e4:	0c000000 	jal	0 <func_8081F1F0>
    19e8:	8fa40118 	lw	a0,280(sp)
    19ec:	962301e8 	lhu	v1,488(s1)
    19f0:	24010002 	li	at,2
    19f4:	50610056 	beql	v1,at,1b50 <func_80820434+0x90c>
    19f8:	24010001 	li	at,1
    19fc:	8e0202c0 	lw	v0,704(s0)
    1a00:	3c0ee700 	lui	t6,0xe700
    1a04:	3c18e300 	lui	t8,0xe300
    1a08:	24590008 	addiu	t9,v0,8
    1a0c:	ae1902c0 	sw	t9,704(s0)
    1a10:	ac400004 	sw	zero,4(v0)
    1a14:	ac4e0000 	sw	t6,0(v0)
    1a18:	8e0202c0 	lw	v0,704(s0)
    1a1c:	24192000 	li	t9,8192
    1a20:	37181201 	ori	t8,t8,0x1201
    1a24:	244f0008 	addiu	t7,v0,8
    1a28:	ae0f02c0 	sw	t7,704(s0)
    1a2c:	ac590004 	sw	t9,4(v0)
    1a30:	ac580000 	sw	t8,0(v0)
    1a34:	8e0202c0 	lw	v0,704(s0)
    1a38:	3c18ff33 	lui	t8,0xff33
    1a3c:	3c0ffc12 	lui	t7,0xfc12
    1a40:	244e0008 	addiu	t6,v0,8
    1a44:	ae0e02c0 	sw	t6,704(s0)
    1a48:	35ef1824 	ori	t7,t7,0x1824
    1a4c:	3718ffff 	ori	t8,t8,0xffff
    1a50:	ac580004 	sw	t8,4(v0)
    1a54:	ac4f0000 	sw	t7,0(v0)
    1a58:	3c020000 	lui	v0,0x0
    1a5c:	8c420000 	lw	v0,0(v0)
    1a60:	3c0142c8 	lui	at,0x42c8
    1a64:	44810000 	mtc1	at,$f0
    1a68:	844e0d9a 	lh	t6,3482(v0)
    1a6c:	84590d98 	lh	t9,3480(v0)
    1a70:	44806000 	mtc1	zero,$f12
    1a74:	448e2000 	mtc1	t6,$f4
    1a78:	44998000 	mtc1	t9,$f16
    1a7c:	00003825 	move	a3,zero
    1a80:	468021a0 	cvt.s.w	$f6,$f4
    1a84:	468084a0 	cvt.s.w	$f18,$f16
    1a88:	46003203 	div.s	$f8,$f6,$f0
    1a8c:	46009383 	div.s	$f14,$f18,$f0
    1a90:	44064000 	mfc1	a2,$f8
    1a94:	0c000000 	jal	0 <func_8081F1F0>
    1a98:	00000000 	nop
    1a9c:	3c010000 	lui	at,0x0
    1aa0:	c42c0000 	lwc1	$f12,0(at)
    1aa4:	24070001 	li	a3,1
    1aa8:	44066000 	mfc1	a2,$f12
    1aac:	0c000000 	jal	0 <func_8081F1F0>
    1ab0:	46006386 	mov.s	$f14,$f12
    1ab4:	3c0142c8 	lui	at,0x42c8
    1ab8:	44818000 	mtc1	at,$f16
    1abc:	c62a0200 	lwc1	$f10,512(s1)
    1ac0:	24050001 	li	a1,1
    1ac4:	0c000000 	jal	0 <func_8081F1F0>
    1ac8:	46105303 	div.s	$f12,$f10,$f16
    1acc:	3c010000 	lui	at,0x0
    1ad0:	c42c0000 	lwc1	$f12,0(at)
    1ad4:	0c000000 	jal	0 <func_8081F1F0>
    1ad8:	24050001 	li	a1,1
    1adc:	8e0202c0 	lw	v0,704(s0)
    1ae0:	3c18da38 	lui	t8,0xda38
    1ae4:	37180003 	ori	t8,t8,0x3
    1ae8:	244f0008 	addiu	t7,v0,8
    1aec:	ae0f02c0 	sw	t7,704(s0)
    1af0:	3c050000 	lui	a1,0x0
    1af4:	ac580000 	sw	t8,0(v0)
    1af8:	24a50000 	addiu	a1,a1,0
    1afc:	02002025 	move	a0,s0
    1b00:	240604c4 	li	a2,1220
    1b04:	0c000000 	jal	0 <func_8081F1F0>
    1b08:	afa200d0 	sw	v0,208(sp)
    1b0c:	8fa300d0 	lw	v1,208(sp)
    1b10:	3c190000 	lui	t9,0x0
    1b14:	3c060000 	lui	a2,0x0
    1b18:	ac620004 	sw	v0,4(v1)
    1b1c:	93391409 	lbu	t9,5129(t9)
    1b20:	8e250150 	lw	a1,336(s1)
    1b24:	8e0402c0 	lw	a0,704(s0)
    1b28:	00197080 	sll	t6,t9,0x2
    1b2c:	00ce3021 	addu	a2,a2,t6
    1b30:	0c000000 	jal	0 <func_8081F1F0>
    1b34:	8cc60000 	lw	a2,0(a2)
    1b38:	ae0202c0 	sw	v0,704(s0)
    1b3c:	8fa40118 	lw	a0,280(sp)
    1b40:	0c000000 	jal	0 <func_8081F1F0>
    1b44:	02002825 	move	a1,s0
    1b48:	962301e8 	lhu	v1,488(s1)
    1b4c:	24010001 	li	at,1
    1b50:	1061006a 	beq	v1,at,1cfc <func_80820434+0xab8>
    1b54:	3c18e700 	lui	t8,0xe700
    1b58:	8e0202c0 	lw	v0,704(s0)
    1b5c:	3c0efc12 	lui	t6,0xfc12
    1b60:	35ce1824 	ori	t6,t6,0x1824
    1b64:	244f0008 	addiu	t7,v0,8
    1b68:	ae0f02c0 	sw	t7,704(s0)
    1b6c:	ac400004 	sw	zero,4(v0)
    1b70:	ac580000 	sw	t8,0(v0)
    1b74:	8e0202c0 	lw	v0,704(s0)
    1b78:	3c0fff33 	lui	t7,0xff33
    1b7c:	35efffff 	ori	t7,t7,0xffff
    1b80:	24590008 	addiu	t9,v0,8
    1b84:	ae1902c0 	sw	t9,704(s0)
    1b88:	ac4f0004 	sw	t7,4(v0)
    1b8c:	ac4e0000 	sw	t6,0(v0)
    1b90:	3c020000 	lui	v0,0x0
    1b94:	8c420000 	lw	v0,0(v0)
    1b98:	3c0142c8 	lui	at,0x42c8
    1b9c:	44810000 	mtc1	at,$f0
    1ba0:	84580d9a 	lh	t8,3482(v0)
    1ba4:	84590d98 	lh	t9,3480(v0)
    1ba8:	24060000 	li	a2,0
    1bac:	44989000 	mtc1	t8,$f18
    1bb0:	44993000 	mtc1	t9,$f6
    1bb4:	00003825 	move	a3,zero
    1bb8:	46809120 	cvt.s.w	$f4,$f18
    1bbc:	46803220 	cvt.s.w	$f8,$f6
    1bc0:	46002303 	div.s	$f12,$f4,$f0
    1bc4:	0c000000 	jal	0 <func_8081F1F0>
    1bc8:	46004383 	div.s	$f14,$f8,$f0
    1bcc:	3c010000 	lui	at,0x0
    1bd0:	c42c0000 	lwc1	$f12,0(at)
    1bd4:	24070001 	li	a3,1
    1bd8:	44066000 	mfc1	a2,$f12
    1bdc:	0c000000 	jal	0 <func_8081F1F0>
    1be0:	46006386 	mov.s	$f14,$f12
    1be4:	c62a01fc 	lwc1	$f10,508(s1)
    1be8:	3c0142c8 	lui	at,0x42c8
    1bec:	44819000 	mtc1	at,$f18
    1bf0:	46005407 	neg.s	$f16,$f10
    1bf4:	24050001 	li	a1,1
    1bf8:	0c000000 	jal	0 <func_8081F1F0>
    1bfc:	46128303 	div.s	$f12,$f16,$f18
    1c00:	3c010000 	lui	at,0x0
    1c04:	c42c0000 	lwc1	$f12,0(at)
    1c08:	0c000000 	jal	0 <func_8081F1F0>
    1c0c:	24050001 	li	a1,1
    1c10:	8e0202c0 	lw	v0,704(s0)
    1c14:	3c0fda38 	lui	t7,0xda38
    1c18:	35ef0003 	ori	t7,t7,0x3
    1c1c:	244e0008 	addiu	t6,v0,8
    1c20:	ae0e02c0 	sw	t6,704(s0)
    1c24:	3c050000 	lui	a1,0x0
    1c28:	ac4f0000 	sw	t7,0(v0)
    1c2c:	24a50000 	addiu	a1,a1,0
    1c30:	02002025 	move	a0,s0
    1c34:	240604db 	li	a2,1243
    1c38:	0c000000 	jal	0 <func_8081F1F0>
    1c3c:	afa200c4 	sw	v0,196(sp)
    1c40:	8fa300c4 	lw	v1,196(sp)
    1c44:	3c180000 	lui	t8,0x0
    1c48:	3c060000 	lui	a2,0x0
    1c4c:	ac620004 	sw	v0,4(v1)
    1c50:	93181409 	lbu	t8,5129(t8)
    1c54:	8e25014c 	lw	a1,332(s1)
    1c58:	8e0402c0 	lw	a0,704(s0)
    1c5c:	0018c880 	sll	t9,t8,0x2
    1c60:	00d93021 	addu	a2,a2,t9
    1c64:	0c000000 	jal	0 <func_8081F1F0>
    1c68:	8cc60000 	lw	a2,0(a2)
    1c6c:	ae0202c0 	sw	v0,704(s0)
    1c70:	3c0e0000 	lui	t6,0x0
    1c74:	85ce0000 	lh	t6,0(t6)
    1c78:	02002825 	move	a1,s0
    1c7c:	8fa40118 	lw	a0,280(sp)
    1c80:	11c0001c 	beqz	t6,1cf4 <func_80820434+0xab0>
    1c84:	00000000 	nop
    1c88:	0c000000 	jal	0 <func_8081F1F0>
    1c8c:	8fa40118 	lw	a0,280(sp)
    1c90:	0c000000 	jal	0 <func_8081F1F0>
    1c94:	02002025 	move	a0,s0
    1c98:	8e0202c0 	lw	v0,704(s0)
    1c9c:	3c18fc11 	lui	t8,0xfc11
    1ca0:	3c19ff2f 	lui	t9,0xff2f
    1ca4:	244f0008 	addiu	t7,v0,8
    1ca8:	ae0f02c0 	sw	t7,704(s0)
    1cac:	3739ffff 	ori	t9,t9,0xffff
    1cb0:	37189623 	ori	t8,t8,0x9623
    1cb4:	3c0f0000 	lui	t7,0x0
    1cb8:	ac580000 	sw	t8,0(v0)
    1cbc:	ac590004 	sw	t9,4(v0)
    1cc0:	95ef1402 	lhu	t7,5122(t7)
    1cc4:	3c180000 	lui	t8,0x0
    1cc8:	3c0e0000 	lui	t6,0x0
    1ccc:	030fc021 	addu	t8,t8,t7
    1cd0:	931800a8 	lbu	t8,168(t8)
    1cd4:	8dce0004 	lw	t6,4(t6)
    1cd8:	01d8c824 	and	t9,t6,t8
    1cdc:	53200008 	beqzl	t9,1d00 <func_80820434+0xabc>
    1ce0:	8e0202c0 	lw	v0,704(s0)
    1ce4:	0c000000 	jal	0 <func_8081F1F0>
    1ce8:	8fa40118 	lw	a0,280(sp)
    1cec:	10000004 	b	1d00 <func_80820434+0xabc>
    1cf0:	8e0202c0 	lw	v0,704(s0)
    1cf4:	0c000000 	jal	0 <func_8081F1F0>
    1cf8:	02002825 	move	a1,s0
    1cfc:	8e0202c0 	lw	v0,704(s0)
    1d00:	3c0ee700 	lui	t6,0xe700
    1d04:	3c19fc12 	lui	t9,0xfc12
    1d08:	244f0008 	addiu	t7,v0,8
    1d0c:	ae0f02c0 	sw	t7,704(s0)
    1d10:	ac400004 	sw	zero,4(v0)
    1d14:	ac4e0000 	sw	t6,0(v0)
    1d18:	8e0202c0 	lw	v0,704(s0)
    1d1c:	3c0fff33 	lui	t7,0xff33
    1d20:	35efffff 	ori	t7,t7,0xffff
    1d24:	24580008 	addiu	t8,v0,8
    1d28:	ae1802c0 	sw	t8,704(s0)
    1d2c:	37391824 	ori	t9,t9,0x1824
    1d30:	ac590000 	sw	t9,0(v0)
    1d34:	ac4f0004 	sw	t7,4(v0)
    1d38:	962201e8 	lhu	v0,488(s1)
    1d3c:	24010001 	li	at,1
    1d40:	1040000a 	beqz	v0,1d6c <func_80820434+0xb28>
    1d44:	00000000 	nop
    1d48:	10410046 	beq	v0,at,1e64 <func_80820434+0xc20>
    1d4c:	24010002 	li	at,2
    1d50:	104100aa 	beq	v0,at,1ffc <func_80820434+0xdb8>
    1d54:	3c18e300 	lui	t8,0xe300
    1d58:	24010003 	li	at,3
    1d5c:	104100f3 	beq	v0,at,212c <func_80820434+0xee8>
    1d60:	00000000 	nop
    1d64:	10000132 	b	2230 <func_80820434+0xfec>
    1d68:	00000000 	nop
    1d6c:	3c020000 	lui	v0,0x0
    1d70:	8c420000 	lw	v0,0(v0)
    1d74:	3c0142c8 	lui	at,0x42c8
    1d78:	44814000 	mtc1	at,$f8
    1d7c:	84580d9a 	lh	t8,3482(v0)
    1d80:	844e0d98 	lh	t6,3480(v0)
    1d84:	44806000 	mtc1	zero,$f12
    1d88:	44985000 	mtc1	t8,$f10
    1d8c:	448e2000 	mtc1	t6,$f4
    1d90:	00003825 	move	a3,zero
    1d94:	46805420 	cvt.s.w	$f16,$f10
    1d98:	468021a0 	cvt.s.w	$f6,$f4
    1d9c:	44812000 	mtc1	at,$f4
    1da0:	46008487 	neg.s	$f18,$f16
    1da4:	46083383 	div.s	$f14,$f6,$f8
    1da8:	46049183 	div.s	$f6,$f18,$f4
    1dac:	44063000 	mfc1	a2,$f6
    1db0:	0c000000 	jal	0 <func_8081F1F0>
    1db4:	00000000 	nop
    1db8:	3c010000 	lui	at,0x0
    1dbc:	c42c0000 	lwc1	$f12,0(at)
    1dc0:	3c010000 	lui	at,0x0
    1dc4:	3c063f47 	lui	a2,0x3f47
    1dc8:	34c6ae14 	ori	a2,a2,0xae14
    1dcc:	c42e0000 	lwc1	$f14,0(at)
    1dd0:	0c000000 	jal	0 <func_8081F1F0>
    1dd4:	24070001 	li	a3,1
    1dd8:	c62801f4 	lwc1	$f8,500(s1)
    1ddc:	3c0142c8 	lui	at,0x42c8
    1de0:	44818000 	mtc1	at,$f16
    1de4:	46004287 	neg.s	$f10,$f8
    1de8:	24050001 	li	a1,1
    1dec:	0c000000 	jal	0 <func_8081F1F0>
    1df0:	46105303 	div.s	$f12,$f10,$f16
    1df4:	8e0202c0 	lw	v0,704(s0)
    1df8:	3c0fda38 	lui	t7,0xda38
    1dfc:	35ef0003 	ori	t7,t7,0x3
    1e00:	24590008 	addiu	t9,v0,8
    1e04:	ae1902c0 	sw	t9,704(s0)
    1e08:	3c050000 	lui	a1,0x0
    1e0c:	ac4f0000 	sw	t7,0(v0)
    1e10:	24a50000 	addiu	a1,a1,0
    1e14:	02002025 	move	a0,s0
    1e18:	24060501 	li	a2,1281
    1e1c:	0c000000 	jal	0 <func_8081F1F0>
    1e20:	afa200b4 	sw	v0,180(sp)
    1e24:	8fa300b4 	lw	v1,180(sp)
    1e28:	3c0e0000 	lui	t6,0x0
    1e2c:	3c060000 	lui	a2,0x0
    1e30:	ac620004 	sw	v0,4(v1)
    1e34:	91ce1409 	lbu	t6,5129(t6)
    1e38:	8e250144 	lw	a1,324(s1)
    1e3c:	8e0402c0 	lw	a0,704(s0)
    1e40:	000ec080 	sll	t8,t6,0x2
    1e44:	00d83021 	addu	a2,a2,t8
    1e48:	0c000000 	jal	0 <func_8081F1F0>
    1e4c:	8cc60000 	lw	a2,0(a2)
    1e50:	ae0202c0 	sw	v0,704(s0)
    1e54:	0c000000 	jal	0 <func_8081F1F0>
    1e58:	8fa40118 	lw	a0,280(sp)
    1e5c:	100000f4 	b	2230 <func_80820434+0xfec>
    1e60:	00000000 	nop
    1e64:	3c020000 	lui	v0,0x0
    1e68:	8c420000 	lw	v0,0(v0)
    1e6c:	3c0142c8 	lui	at,0x42c8
    1e70:	44813000 	mtc1	at,$f6
    1e74:	84590d9a 	lh	t9,3482(v0)
    1e78:	844f0d98 	lh	t7,3480(v0)
    1e7c:	44818000 	mtc1	at,$f16
    1e80:	44999000 	mtc1	t9,$f18
    1e84:	448f4000 	mtc1	t7,$f8
    1e88:	24060000 	li	a2,0
    1e8c:	46809120 	cvt.s.w	$f4,$f18
    1e90:	00003825 	move	a3,zero
    1e94:	468042a0 	cvt.s.w	$f10,$f8
    1e98:	46062303 	div.s	$f12,$f4,$f6
    1e9c:	0c000000 	jal	0 <func_8081F1F0>
    1ea0:	46105383 	div.s	$f14,$f10,$f16
    1ea4:	3c010000 	lui	at,0x0
    1ea8:	c42c0000 	lwc1	$f12,0(at)
    1eac:	3c010000 	lui	at,0x0
    1eb0:	3c063f47 	lui	a2,0x3f47
    1eb4:	34c6ae14 	ori	a2,a2,0xae14
    1eb8:	c42e0000 	lwc1	$f14,0(at)
    1ebc:	0c000000 	jal	0 <func_8081F1F0>
    1ec0:	24070001 	li	a3,1
    1ec4:	c63201fc 	lwc1	$f18,508(s1)
    1ec8:	3c0142c8 	lui	at,0x42c8
    1ecc:	44813000 	mtc1	at,$f6
    1ed0:	46009107 	neg.s	$f4,$f18
    1ed4:	24050001 	li	a1,1
    1ed8:	0c000000 	jal	0 <func_8081F1F0>
    1edc:	46062303 	div.s	$f12,$f4,$f6
    1ee0:	3c010000 	lui	at,0x0
    1ee4:	c42c0000 	lwc1	$f12,0(at)
    1ee8:	0c000000 	jal	0 <func_8081F1F0>
    1eec:	24050001 	li	a1,1
    1ef0:	8e0202c0 	lw	v0,704(s0)
    1ef4:	3c18da38 	lui	t8,0xda38
    1ef8:	37180003 	ori	t8,t8,0x3
    1efc:	244e0008 	addiu	t6,v0,8
    1f00:	ae0e02c0 	sw	t6,704(s0)
    1f04:	3c050000 	lui	a1,0x0
    1f08:	ac580000 	sw	t8,0(v0)
    1f0c:	24a50000 	addiu	a1,a1,0
    1f10:	02002025 	move	a0,s0
    1f14:	24060517 	li	a2,1303
    1f18:	0c000000 	jal	0 <func_8081F1F0>
    1f1c:	afa200b0 	sw	v0,176(sp)
    1f20:	8fa300b0 	lw	v1,176(sp)
    1f24:	3c190000 	lui	t9,0x0
    1f28:	3c060000 	lui	a2,0x0
    1f2c:	ac620004 	sw	v0,4(v1)
    1f30:	93391409 	lbu	t9,5129(t9)
    1f34:	8e25014c 	lw	a1,332(s1)
    1f38:	8e0402c0 	lw	a0,704(s0)
    1f3c:	00197880 	sll	t7,t9,0x2
    1f40:	00cf3021 	addu	a2,a2,t7
    1f44:	0c000000 	jal	0 <func_8081F1F0>
    1f48:	8cc60000 	lw	a2,0(a2)
    1f4c:	ae0202c0 	sw	v0,704(s0)
    1f50:	3c0e0000 	lui	t6,0x0
    1f54:	85ce0000 	lh	t6,0(t6)
    1f58:	02002825 	move	a1,s0
    1f5c:	8fa40118 	lw	a0,280(sp)
    1f60:	11c00022 	beqz	t6,1fec <func_80820434+0xda8>
    1f64:	00000000 	nop
    1f68:	0c000000 	jal	0 <func_8081F1F0>
    1f6c:	8fa40118 	lw	a0,280(sp)
    1f70:	0c000000 	jal	0 <func_8081F1F0>
    1f74:	02002025 	move	a0,s0
    1f78:	8e0202c0 	lw	v0,704(s0)
    1f7c:	3c19fc11 	lui	t9,0xfc11
    1f80:	3c0fff2f 	lui	t7,0xff2f
    1f84:	24580008 	addiu	t8,v0,8
    1f88:	ae1802c0 	sw	t8,704(s0)
    1f8c:	35efffff 	ori	t7,t7,0xffff
    1f90:	37399623 	ori	t9,t9,0x9623
    1f94:	ac590000 	sw	t9,0(v0)
    1f98:	ac4f0004 	sw	t7,4(v0)
    1f9c:	862e0238 	lh	t6,568(s1)
    1fa0:	8fa40118 	lw	a0,280(sp)
    1fa4:	15c00003 	bnez	t6,1fb4 <func_80820434+0xd70>
    1fa8:	00000000 	nop
    1fac:	0c000000 	jal	0 <func_8081F1F0>
    1fb0:	24050001 	li	a1,1
    1fb4:	3c190000 	lui	t9,0x0
    1fb8:	97391402 	lhu	t9,5122(t9)
    1fbc:	3c0f0000 	lui	t7,0x0
    1fc0:	3c180000 	lui	t8,0x0
    1fc4:	01f97821 	addu	t7,t7,t9
    1fc8:	91ef00a8 	lbu	t7,168(t7)
    1fcc:	8f180004 	lw	t8,4(t8)
    1fd0:	030f7024 	and	t6,t8,t7
    1fd4:	11c00096 	beqz	t6,2230 <func_80820434+0xfec>
    1fd8:	00000000 	nop
    1fdc:	0c000000 	jal	0 <func_8081F1F0>
    1fe0:	8fa40118 	lw	a0,280(sp)
    1fe4:	10000092 	b	2230 <func_80820434+0xfec>
    1fe8:	00000000 	nop
    1fec:	0c000000 	jal	0 <func_8081F1F0>
    1ff0:	02002825 	move	a1,s0
    1ff4:	1000008e 	b	2230 <func_80820434+0xfec>
    1ff8:	00000000 	nop
    1ffc:	8e0202c0 	lw	v0,704(s0)
    2000:	37181201 	ori	t8,t8,0x1201
    2004:	240f2000 	li	t7,8192
    2008:	24590008 	addiu	t9,v0,8
    200c:	ae1902c0 	sw	t9,704(s0)
    2010:	ac4f0004 	sw	t7,4(v0)
    2014:	ac580000 	sw	t8,0(v0)
    2018:	3c020000 	lui	v0,0x0
    201c:	8c420000 	lw	v0,0(v0)
    2020:	3c0142c8 	lui	at,0x42c8
    2024:	44813000 	mtc1	at,$f6
    2028:	84590d9a 	lh	t9,3482(v0)
    202c:	844e0d98 	lh	t6,3480(v0)
    2030:	44818000 	mtc1	at,$f16
    2034:	44999000 	mtc1	t9,$f18
    2038:	448e4000 	mtc1	t6,$f8
    203c:	44806000 	mtc1	zero,$f12
    2040:	46809120 	cvt.s.w	$f4,$f18
    2044:	00003825 	move	a3,zero
    2048:	468042a0 	cvt.s.w	$f10,$f8
    204c:	46062203 	div.s	$f8,$f4,$f6
    2050:	46105383 	div.s	$f14,$f10,$f16
    2054:	44064000 	mfc1	a2,$f8
    2058:	0c000000 	jal	0 <func_8081F1F0>
    205c:	00000000 	nop
    2060:	3c010000 	lui	at,0x0
    2064:	c42c0000 	lwc1	$f12,0(at)
    2068:	24070001 	li	a3,1
    206c:	44066000 	mfc1	a2,$f12
    2070:	0c000000 	jal	0 <func_8081F1F0>
    2074:	46006386 	mov.s	$f14,$f12
    2078:	3c0142c8 	lui	at,0x42c8
    207c:	44818000 	mtc1	at,$f16
    2080:	c62a0200 	lwc1	$f10,512(s1)
    2084:	24050001 	li	a1,1
    2088:	0c000000 	jal	0 <func_8081F1F0>
    208c:	46105303 	div.s	$f12,$f10,$f16
    2090:	3c010000 	lui	at,0x0
    2094:	c42c0000 	lwc1	$f12,0(at)
    2098:	0c000000 	jal	0 <func_8081F1F0>
    209c:	24050001 	li	a1,1
    20a0:	8e0202c0 	lw	v0,704(s0)
    20a4:	3c0fda38 	lui	t7,0xda38
    20a8:	35ef0003 	ori	t7,t7,0x3
    20ac:	24580008 	addiu	t8,v0,8
    20b0:	ae1802c0 	sw	t8,704(s0)
    20b4:	3c050000 	lui	a1,0x0
    20b8:	ac4f0000 	sw	t7,0(v0)
    20bc:	24a50000 	addiu	a1,a1,0
    20c0:	02002025 	move	a0,s0
    20c4:	2406053f 	li	a2,1343
    20c8:	0c000000 	jal	0 <func_8081F1F0>
    20cc:	afa200a4 	sw	v0,164(sp)
    20d0:	8fa300a4 	lw	v1,164(sp)
    20d4:	3c0e0000 	lui	t6,0x0
    20d8:	3c060000 	lui	a2,0x0
    20dc:	ac620004 	sw	v0,4(v1)
    20e0:	91ce1409 	lbu	t6,5129(t6)
    20e4:	8e250150 	lw	a1,336(s1)
    20e8:	8e0402c0 	lw	a0,704(s0)
    20ec:	000ec880 	sll	t9,t6,0x2
    20f0:	00d93021 	addu	a2,a2,t9
    20f4:	0c000000 	jal	0 <func_8081F1F0>
    20f8:	8cc60000 	lw	a2,0(a2)
    20fc:	ae0202c0 	sw	v0,704(s0)
    2100:	8fa40118 	lw	a0,280(sp)
    2104:	0c000000 	jal	0 <func_8081F1F0>
    2108:	02002825 	move	a1,s0
    210c:	86380238 	lh	t8,568(s1)
    2110:	8fa40118 	lw	a0,280(sp)
    2114:	17000046 	bnez	t8,2230 <func_80820434+0xfec>
    2118:	00000000 	nop
    211c:	0c000000 	jal	0 <func_8081F1F0>
    2120:	24050002 	li	a1,2
    2124:	10000042 	b	2230 <func_80820434+0xfec>
    2128:	00000000 	nop
    212c:	3c020000 	lui	v0,0x0
    2130:	8c420000 	lw	v0,0(v0)
    2134:	3c0142c8 	lui	at,0x42c8
    2138:	44814000 	mtc1	at,$f8
    213c:	844f0d9a 	lh	t7,3482(v0)
    2140:	844e0d98 	lh	t6,3480(v0)
    2144:	24060000 	li	a2,0
    2148:	448f9000 	mtc1	t7,$f18
    214c:	448e5000 	mtc1	t6,$f10
    2150:	00003825 	move	a3,zero
    2154:	46809120 	cvt.s.w	$f4,$f18
    2158:	44819000 	mtc1	at,$f18
    215c:	46805420 	cvt.s.w	$f16,$f10
    2160:	46002187 	neg.s	$f6,$f4
    2164:	46128383 	div.s	$f14,$f16,$f18
    2168:	0c000000 	jal	0 <func_8081F1F0>
    216c:	46083303 	div.s	$f12,$f6,$f8
    2170:	3c010000 	lui	at,0x0
    2174:	c42c0000 	lwc1	$f12,0(at)
    2178:	24070001 	li	a3,1
    217c:	44066000 	mfc1	a2,$f12
    2180:	0c000000 	jal	0 <func_8081F1F0>
    2184:	46006386 	mov.s	$f14,$f12
    2188:	3c0142c8 	lui	at,0x42c8
    218c:	44813000 	mtc1	at,$f6
    2190:	c62401f8 	lwc1	$f4,504(s1)
    2194:	24050001 	li	a1,1
    2198:	0c000000 	jal	0 <func_8081F1F0>
    219c:	46062303 	div.s	$f12,$f4,$f6
    21a0:	3c010000 	lui	at,0x0
    21a4:	c42c0000 	lwc1	$f12,0(at)
    21a8:	0c000000 	jal	0 <func_8081F1F0>
    21ac:	24050001 	li	a1,1
    21b0:	8e0202c0 	lw	v0,704(s0)
    21b4:	3c18da38 	lui	t8,0xda38
    21b8:	37180003 	ori	t8,t8,0x3
    21bc:	24590008 	addiu	t9,v0,8
    21c0:	ae1902c0 	sw	t9,704(s0)
    21c4:	3c050000 	lui	a1,0x0
    21c8:	ac580000 	sw	t8,0(v0)
    21cc:	24a50000 	addiu	a1,a1,0
    21d0:	02002025 	move	a0,s0
    21d4:	24060557 	li	a2,1367
    21d8:	0c000000 	jal	0 <func_8081F1F0>
    21dc:	afa200a0 	sw	v0,160(sp)
    21e0:	8fa300a0 	lw	v1,160(sp)
    21e4:	3c0f0000 	lui	t7,0x0
    21e8:	3c060000 	lui	a2,0x0
    21ec:	ac620004 	sw	v0,4(v1)
    21f0:	91ef1409 	lbu	t7,5129(t7)
    21f4:	8e250148 	lw	a1,328(s1)
    21f8:	8e0402c0 	lw	a0,704(s0)
    21fc:	000f7080 	sll	t6,t7,0x2
    2200:	00ce3021 	addu	a2,a2,t6
    2204:	0c000000 	jal	0 <func_8081F1F0>
    2208:	8cc60000 	lw	a2,0(a2)
    220c:	ae0202c0 	sw	v0,704(s0)
    2210:	0c000000 	jal	0 <func_8081F1F0>
    2214:	8fa40118 	lw	a0,280(sp)
    2218:	86390238 	lh	t9,568(s1)
    221c:	8fa40118 	lw	a0,280(sp)
    2220:	17200003 	bnez	t9,2230 <func_80820434+0xfec>
    2224:	00000000 	nop
    2228:	0c000000 	jal	0 <func_8081F1F0>
    222c:	24050003 	li	a1,3
    2230:	0c000000 	jal	0 <func_8081F1F0>
    2234:	02002025 	move	a0,s0
    2238:	962201d4 	lhu	v0,468(s1)
    223c:	24010007 	li	at,7
    2240:	10410005 	beq	v0,at,2258 <func_80820434+0x1014>
    2244:	28410008 	slti	at,v0,8
    2248:	142001ea 	bnez	at,29f4 <func_80820434+0x17b0>
    224c:	28410012 	slti	at,v0,18
    2250:	102001e8 	beqz	at,29f4 <func_80820434+0x17b0>
    2254:	00000000 	nop
    2258:	0c000000 	jal	0 <func_8081F1F0>
    225c:	8fa40118 	lw	a0,280(sp)
    2260:	8e0202c0 	lw	v0,704(s0)
    2264:	3c0ffc12 	lui	t7,0xfc12
    2268:	3c0eff33 	lui	t6,0xff33
    226c:	24580008 	addiu	t8,v0,8
    2270:	ae1802c0 	sw	t8,704(s0)
    2274:	35ceffff 	ori	t6,t6,0xffff
    2278:	35ef1824 	ori	t7,t7,0x1824
    227c:	ac4f0000 	sw	t7,0(v0)
    2280:	ac4e0004 	sw	t6,4(v0)
    2284:	962201e8 	lhu	v0,488(s1)
    2288:	24010001 	li	at,1
    228c:	14400028 	bnez	v0,2330 <func_80820434+0x10ec>
    2290:	00000000 	nop
    2294:	3c01439d 	lui	at,0x439d
    2298:	44815000 	mtc1	at,$f10
    229c:	c6280204 	lwc1	$f8,516(s1)
    22a0:	3c190000 	lui	t9,0x0
    22a4:	3c0142c8 	lui	at,0x42c8
    22a8:	460a4400 	add.s	$f16,$f8,$f10
    22ac:	c62801f0 	lwc1	$f8,496(s1)
    22b0:	44813000 	mtc1	at,$f6
    22b4:	3c014120 	lui	at,0x4120
    22b8:	e63001f4 	swc1	$f16,500(s1)
    22bc:	8f390000 	lw	t9,0(t9)
    22c0:	44818000 	mtc1	at,$f16
    22c4:	46004287 	neg.s	$f10,$f8
    22c8:	87380d98 	lh	t8,3480(t9)
    22cc:	44806000 	mtc1	zero,$f12
    22d0:	00003825 	move	a3,zero
    22d4:	44989000 	mtc1	t8,$f18
    22d8:	00000000 	nop
    22dc:	46809120 	cvt.s.w	$f4,$f18
    22e0:	46105483 	div.s	$f18,$f10,$f16
    22e4:	46062383 	div.s	$f14,$f4,$f6
    22e8:	44069000 	mfc1	a2,$f18
    22ec:	0c000000 	jal	0 <func_8081F1F0>
    22f0:	00000000 	nop
    22f4:	3c010000 	lui	at,0x0
    22f8:	c42c0000 	lwc1	$f12,0(at)
    22fc:	24070001 	li	a3,1
    2300:	44066000 	mfc1	a2,$f12
    2304:	0c000000 	jal	0 <func_8081F1F0>
    2308:	46006386 	mov.s	$f14,$f12
    230c:	c6240204 	lwc1	$f4,516(s1)
    2310:	3c0142c8 	lui	at,0x42c8
    2314:	44814000 	mtc1	at,$f8
    2318:	46002187 	neg.s	$f6,$f4
    231c:	24050001 	li	a1,1
    2320:	0c000000 	jal	0 <func_8081F1F0>
    2324:	46083303 	div.s	$f12,$f6,$f8
    2328:	1000007c 	b	251c <func_80820434+0x12d8>
    232c:	8e0202c0 	lw	v0,704(s0)
    2330:	14410029 	bne	v0,at,23d8 <func_80820434+0x1194>
    2334:	00401825 	move	v1,v0
    2338:	3c01439d 	lui	at,0x439d
    233c:	44818000 	mtc1	at,$f16
    2340:	c62a0204 	lwc1	$f10,516(s1)
    2344:	3c0f0000 	lui	t7,0x0
    2348:	3c014120 	lui	at,0x4120
    234c:	46105480 	add.s	$f18,$f10,$f16
    2350:	44813000 	mtc1	at,$f6
    2354:	3c0142c8 	lui	at,0x42c8
    2358:	44818000 	mtc1	at,$f16
    235c:	e63201fc 	swc1	$f18,508(s1)
    2360:	8def0000 	lw	t7,0(t7)
    2364:	c62401f0 	lwc1	$f4,496(s1)
    2368:	24060000 	li	a2,0
    236c:	85ee0d98 	lh	t6,3480(t7)
    2370:	00003825 	move	a3,zero
    2374:	46062303 	div.s	$f12,$f4,$f6
    2378:	448e4000 	mtc1	t6,$f8
    237c:	00000000 	nop
    2380:	468042a0 	cvt.s.w	$f10,$f8
    2384:	0c000000 	jal	0 <func_8081F1F0>
    2388:	46105383 	div.s	$f14,$f10,$f16
    238c:	3c010000 	lui	at,0x0
    2390:	c42c0000 	lwc1	$f12,0(at)
    2394:	24070001 	li	a3,1
    2398:	44066000 	mfc1	a2,$f12
    239c:	0c000000 	jal	0 <func_8081F1F0>
    23a0:	46006386 	mov.s	$f14,$f12
    23a4:	c6320204 	lwc1	$f18,516(s1)
    23a8:	3c0142c8 	lui	at,0x42c8
    23ac:	44813000 	mtc1	at,$f6
    23b0:	46009107 	neg.s	$f4,$f18
    23b4:	24050001 	li	a1,1
    23b8:	0c000000 	jal	0 <func_8081F1F0>
    23bc:	46062303 	div.s	$f12,$f4,$f6
    23c0:	3c010000 	lui	at,0x0
    23c4:	c42c0000 	lwc1	$f12,0(at)
    23c8:	0c000000 	jal	0 <func_8081F1F0>
    23cc:	24050001 	li	a1,1
    23d0:	10000052 	b	251c <func_80820434+0x12d8>
    23d4:	8e0202c0 	lw	v0,704(s0)
    23d8:	24010002 	li	at,2
    23dc:	14610029 	bne	v1,at,2484 <func_80820434+0x1240>
    23e0:	3c0f0000 	lui	t7,0x0
    23e4:	3c01439d 	lui	at,0x439d
    23e8:	44815000 	mtc1	at,$f10
    23ec:	c6280204 	lwc1	$f8,516(s1)
    23f0:	3c0142c8 	lui	at,0x42c8
    23f4:	44813000 	mtc1	at,$f6
    23f8:	460a4400 	add.s	$f16,$f8,$f10
    23fc:	3c014120 	lui	at,0x4120
    2400:	44815000 	mtc1	at,$f10
    2404:	c62801f0 	lwc1	$f8,496(s1)
    2408:	e6300200 	swc1	$f16,512(s1)
    240c:	3c190000 	lui	t9,0x0
    2410:	460a4403 	div.s	$f16,$f8,$f10
    2414:	8f390000 	lw	t9,0(t9)
    2418:	44806000 	mtc1	zero,$f12
    241c:	00003825 	move	a3,zero
    2420:	87380d98 	lh	t8,3480(t9)
    2424:	44989000 	mtc1	t8,$f18
    2428:	00000000 	nop
    242c:	46809120 	cvt.s.w	$f4,$f18
    2430:	44068000 	mfc1	a2,$f16
    2434:	0c000000 	jal	0 <func_8081F1F0>
    2438:	46062383 	div.s	$f14,$f4,$f6
    243c:	3c010000 	lui	at,0x0
    2440:	c42c0000 	lwc1	$f12,0(at)
    2444:	24070001 	li	a3,1
    2448:	44066000 	mfc1	a2,$f12
    244c:	0c000000 	jal	0 <func_8081F1F0>
    2450:	46006386 	mov.s	$f14,$f12
    2454:	3c0142c8 	lui	at,0x42c8
    2458:	44812000 	mtc1	at,$f4
    245c:	c6320204 	lwc1	$f18,516(s1)
    2460:	24050001 	li	a1,1
    2464:	0c000000 	jal	0 <func_8081F1F0>
    2468:	46049303 	div.s	$f12,$f18,$f4
    246c:	3c010000 	lui	at,0x0
    2470:	c42c0000 	lwc1	$f12,0(at)
    2474:	0c000000 	jal	0 <func_8081F1F0>
    2478:	24050001 	li	a1,1
    247c:	10000027 	b	251c <func_80820434+0x12d8>
    2480:	8e0202c0 	lw	v0,704(s0)
    2484:	3c01439d 	lui	at,0x439d
    2488:	44814000 	mtc1	at,$f8
    248c:	c6260204 	lwc1	$f6,516(s1)
    2490:	3c014120 	lui	at,0x4120
    2494:	44812000 	mtc1	at,$f4
    2498:	46083280 	add.s	$f10,$f6,$f8
    249c:	c63001f0 	lwc1	$f16,496(s1)
    24a0:	3c0142c8 	lui	at,0x42c8
    24a4:	24060000 	li	a2,0
    24a8:	e62a01f8 	swc1	$f10,504(s1)
    24ac:	8def0000 	lw	t7,0(t7)
    24b0:	44815000 	mtc1	at,$f10
    24b4:	46008487 	neg.s	$f18,$f16
    24b8:	85ee0d98 	lh	t6,3480(t7)
    24bc:	00003825 	move	a3,zero
    24c0:	46049303 	div.s	$f12,$f18,$f4
    24c4:	448e3000 	mtc1	t6,$f6
    24c8:	00000000 	nop
    24cc:	46803220 	cvt.s.w	$f8,$f6
    24d0:	0c000000 	jal	0 <func_8081F1F0>
    24d4:	460a4383 	div.s	$f14,$f8,$f10
    24d8:	3c010000 	lui	at,0x0
    24dc:	c42c0000 	lwc1	$f12,0(at)
    24e0:	24070001 	li	a3,1
    24e4:	44066000 	mfc1	a2,$f12
    24e8:	0c000000 	jal	0 <func_8081F1F0>
    24ec:	46006386 	mov.s	$f14,$f12
    24f0:	3c0142c8 	lui	at,0x42c8
    24f4:	44819000 	mtc1	at,$f18
    24f8:	c6300204 	lwc1	$f16,516(s1)
    24fc:	24050001 	li	a1,1
    2500:	0c000000 	jal	0 <func_8081F1F0>
    2504:	46128303 	div.s	$f12,$f16,$f18
    2508:	3c010000 	lui	at,0x0
    250c:	c42c0000 	lwc1	$f12,0(at)
    2510:	0c000000 	jal	0 <func_8081F1F0>
    2514:	24050001 	li	a1,1
    2518:	8e0202c0 	lw	v0,704(s0)
    251c:	3c18da38 	lui	t8,0xda38
    2520:	37180003 	ori	t8,t8,0x3
    2524:	24590008 	addiu	t9,v0,8
    2528:	ae1902c0 	sw	t9,704(s0)
    252c:	3c050000 	lui	a1,0x0
    2530:	ac580000 	sw	t8,0(v0)
    2534:	24a50000 	addiu	a1,a1,0
    2538:	02002025 	move	a0,s0
    253c:	24060590 	li	a2,1424
    2540:	0c000000 	jal	0 <func_8081F1F0>
    2544:	afa20098 	sw	v0,152(sp)
    2548:	8fa30098 	lw	v1,152(sp)
    254c:	3c0f0000 	lui	t7,0x0
    2550:	3c060000 	lui	a2,0x0
    2554:	ac620004 	sw	v0,4(v1)
    2558:	962201d4 	lhu	v0,468(s1)
    255c:	28410008 	slti	at,v0,8
    2560:	1420000a 	bnez	at,258c <func_80820434+0x1348>
    2564:	28410012 	slti	at,v0,18
    2568:	10200008 	beqz	at,258c <func_80820434+0x1348>
    256c:	00000000 	nop
    2570:	3c060000 	lui	a2,0x0
    2574:	24c60000 	addiu	a2,a2,0
    2578:	8e0402c0 	lw	a0,704(s0)
    257c:	0c000000 	jal	0 <func_8081F1F0>
    2580:	8e25016c 	lw	a1,364(s1)
    2584:	10000009 	b	25ac <func_80820434+0x1368>
    2588:	ae0202c0 	sw	v0,704(s0)
    258c:	91ef1409 	lbu	t7,5129(t7)
    2590:	8e0402c0 	lw	a0,704(s0)
    2594:	8e25016c 	lw	a1,364(s1)
    2598:	000f7080 	sll	t6,t7,0x2
    259c:	00ce3021 	addu	a2,a2,t6
    25a0:	0c000000 	jal	0 <func_8081F1F0>
    25a4:	8cc60000 	lw	a2,0(a2)
    25a8:	ae0202c0 	sw	v0,704(s0)
    25ac:	8e0202c0 	lw	v0,704(s0)
    25b0:	3c180102 	lui	t8,0x102
    25b4:	37180040 	ori	t8,t8,0x40
    25b8:	24590008 	addiu	t9,v0,8
    25bc:	ae1902c0 	sw	t9,704(s0)
    25c0:	ac580000 	sw	t8,0(v0)
    25c4:	8e2f016c 	lw	t7,364(s1)
    25c8:	24010007 	li	at,7
    25cc:	25ee03c0 	addiu	t6,t7,960
    25d0:	ac4e0004 	sw	t6,4(v0)
    25d4:	962201d4 	lhu	v0,468(s1)
    25d8:	54410005 	bnel	v0,at,25f0 <func_80820434+0x13ac>
    25dc:	2401000e 	li	at,14
    25e0:	963901ec 	lhu	t9,492(s1)
    25e4:	2b210004 	slti	at,t9,4
    25e8:	14200002 	bnez	at,25f4 <func_80820434+0x13b0>
    25ec:	2401000e 	li	at,14
    25f0:	14410067 	bne	v0,at,2790 <func_80820434+0x154c>
    25f4:	3c180000 	lui	t8,0x0
    25f8:	93181409 	lbu	t8,5129(t8)
    25fc:	3c050000 	lui	a1,0x0
    2600:	8e0402c0 	lw	a0,704(s0)
    2604:	00187880 	sll	t7,t8,0x2
    2608:	00af2821 	addu	a1,a1,t7
    260c:	8ca50000 	lw	a1,0(a1)
    2610:	afa00010 	sw	zero,16(sp)
    2614:	24060098 	li	a2,152
    2618:	0c000000 	jal	0 <func_8081F1F0>
    261c:	24070010 	li	a3,16
    2620:	ae0202c0 	sw	v0,704(s0)
    2624:	244e0008 	addiu	t6,v0,8
    2628:	ae0e02c0 	sw	t6,704(s0)
    262c:	3c19fc61 	lui	t9,0xfc61
    2630:	3c18ff2f 	lui	t8,0xff2f
    2634:	3718ffff 	ori	t8,t8,0xffff
    2638:	373996c3 	ori	t9,t9,0x96c3
    263c:	ac590000 	sw	t9,0(v0)
    2640:	ac580004 	sw	t8,4(v0)
    2644:	8e0202c0 	lw	v0,704(s0)
    2648:	3c08fa00 	lui	t0,0xfa00
    264c:	3c0e0000 	lui	t6,0x0
    2650:	244f0008 	addiu	t7,v0,8
    2654:	ae0f02c0 	sw	t7,704(s0)
    2658:	ac480000 	sw	t0,0(v0)
    265c:	8dce0000 	lw	t6,0(t6)
    2660:	3c0164ff 	lui	at,0x64ff
    2664:	34216400 	ori	at,at,0x6400
    2668:	85d90f8e 	lh	t9,3982(t6)
    266c:	333800ff 	andi	t8,t9,0xff
    2670:	03017825 	or	t7,t8,at
    2674:	ac4f0004 	sw	t7,4(v0)
    2678:	862e0262 	lh	t6,610(s1)
    267c:	3c18de00 	lui	t8,0xde00
    2680:	3c19de00 	lui	t9,0xde00
    2684:	15c00009 	bnez	t6,26ac <func_80820434+0x1468>
    2688:	2401ff00 	li	at,-256
    268c:	8e0202c0 	lw	v0,704(s0)
    2690:	3c0f0809 	lui	t7,0x809
    2694:	25ef9bf8 	addiu	t7,t7,-25608
    2698:	24590008 	addiu	t9,v0,8
    269c:	ae1902c0 	sw	t9,704(s0)
    26a0:	ac4f0004 	sw	t7,4(v0)
    26a4:	10000008 	b	26c8 <func_80820434+0x1484>
    26a8:	ac580000 	sw	t8,0(v0)
    26ac:	8e0202c0 	lw	v0,704(s0)
    26b0:	3c180809 	lui	t8,0x809
    26b4:	27189c48 	addiu	t8,t8,-25528
    26b8:	244e0008 	addiu	t6,v0,8
    26bc:	ae0e02c0 	sw	t6,704(s0)
    26c0:	ac580004 	sw	t8,4(v0)
    26c4:	ac590000 	sw	t9,0(v0)
    26c8:	8e0202c0 	lw	v0,704(s0)
    26cc:	3c0ee700 	lui	t6,0xe700
    26d0:	3c18fc12 	lui	t8,0xfc12
    26d4:	244f0008 	addiu	t7,v0,8
    26d8:	ae0f02c0 	sw	t7,704(s0)
    26dc:	ac400004 	sw	zero,4(v0)
    26e0:	ac4e0000 	sw	t6,0(v0)
    26e4:	8e0202c0 	lw	v0,704(s0)
    26e8:	3c0fff33 	lui	t7,0xff33
    26ec:	35efffff 	ori	t7,t7,0xffff
    26f0:	24590008 	addiu	t9,v0,8
    26f4:	ae1902c0 	sw	t9,704(s0)
    26f8:	37181824 	ori	t8,t8,0x1824
    26fc:	ac580000 	sw	t8,0(v0)
    2700:	ac4f0004 	sw	t7,4(v0)
    2704:	8e0202c0 	lw	v0,704(s0)
    2708:	3c050000 	lui	a1,0x0
    270c:	24060030 	li	a2,48
    2710:	244e0008 	addiu	t6,v0,8
    2714:	ae0e02c0 	sw	t6,704(s0)
    2718:	ac480000 	sw	t0,0(v0)
    271c:	96390208 	lhu	t9,520(s1)
    2720:	3c0e0000 	lui	t6,0x0
    2724:	24070010 	li	a3,16
    2728:	333800ff 	andi	t8,t9,0xff
    272c:	03017825 	or	t7,t8,at
    2730:	ac4f0004 	sw	t7,4(v0)
    2734:	91ce1409 	lbu	t6,5129(t6)
    2738:	8e0402c0 	lw	a0,704(s0)
    273c:	2418000c 	li	t8,12
    2740:	000ec8c0 	sll	t9,t6,0x3
    2744:	00b92821 	addu	a1,a1,t9
    2748:	8ca50000 	lw	a1,0(a1)
    274c:	0c000000 	jal	0 <func_8081F1F0>
    2750:	afb80010 	sw	t8,16(sp)
    2754:	ae0202c0 	sw	v0,704(s0)
    2758:	3c0f0000 	lui	t7,0x0
    275c:	91ef1409 	lbu	t7,5129(t7)
    2760:	3c050000 	lui	a1,0x0
    2764:	24190010 	li	t9,16
    2768:	000f70c0 	sll	t6,t7,0x3
    276c:	00ae2821 	addu	a1,a1,t6
    2770:	8ca50000 	lw	a1,0(a1)
    2774:	afb90010 	sw	t9,16(sp)
    2778:	00402025 	move	a0,v0
    277c:	24060030 	li	a2,48
    2780:	0c000000 	jal	0 <func_8081F1F0>
    2784:	24070010 	li	a3,16
    2788:	10000075 	b	2960 <func_80820434+0x171c>
    278c:	ae0202c0 	sw	v0,704(s0)
    2790:	24010007 	li	at,7
    2794:	54410005 	bnel	v0,at,27ac <func_80820434+0x1568>
    2798:	2401000f 	li	at,15
    279c:	963801ec 	lhu	t8,492(s1)
    27a0:	2b010004 	slti	at,t8,4
    27a4:	1020006e 	beqz	at,2960 <func_80820434+0x171c>
    27a8:	2401000f 	li	at,15
    27ac:	1041006c 	beq	v0,at,2960 <func_80820434+0x171c>
    27b0:	24010010 	li	at,16
    27b4:	10410004 	beq	v0,at,27c8 <func_80820434+0x1584>
    27b8:	3c0f0000 	lui	t7,0x0
    27bc:	24010011 	li	at,17
    27c0:	54410068 	bnel	v0,at,2964 <func_80820434+0x1720>
    27c4:	8e0202c0 	lw	v0,704(s0)
    27c8:	91ef1409 	lbu	t7,5129(t7)
    27cc:	3c050000 	lui	a1,0x0
    27d0:	8e0402c0 	lw	a0,704(s0)
    27d4:	000f7080 	sll	t6,t7,0x2
    27d8:	00ae2821 	addu	a1,a1,t6
    27dc:	8ca50000 	lw	a1,0(a1)
    27e0:	afa00010 	sw	zero,16(sp)
    27e4:	24060098 	li	a2,152
    27e8:	0c000000 	jal	0 <func_8081F1F0>
    27ec:	24070010 	li	a3,16
    27f0:	ae0202c0 	sw	v0,704(s0)
    27f4:	24590008 	addiu	t9,v0,8
    27f8:	ae1902c0 	sw	t9,704(s0)
    27fc:	3c18fc61 	lui	t8,0xfc61
    2800:	3c0fff2f 	lui	t7,0xff2f
    2804:	35efffff 	ori	t7,t7,0xffff
    2808:	371896c3 	ori	t8,t8,0x96c3
    280c:	ac580000 	sw	t8,0(v0)
    2810:	ac4f0004 	sw	t7,4(v0)
    2814:	8e0202c0 	lw	v0,704(s0)
    2818:	3c19fa00 	lui	t9,0xfa00
    281c:	3c180000 	lui	t8,0x0
    2820:	244e0008 	addiu	t6,v0,8
    2824:	ae0e02c0 	sw	t6,704(s0)
    2828:	ac590000 	sw	t9,0(v0)
    282c:	8f180000 	lw	t8,0(t8)
    2830:	3c0164ff 	lui	at,0x64ff
    2834:	34216400 	ori	at,at,0x6400
    2838:	870f0f8e 	lh	t7,3982(t8)
    283c:	3c050000 	lui	a1,0x0
    2840:	31ee00ff 	andi	t6,t7,0xff
    2844:	01c1c825 	or	t9,t6,at
    2848:	ac590004 	sw	t9,4(v0)
    284c:	86380262 	lh	t8,610(s1)
    2850:	3c0ede00 	lui	t6,0xde00
    2854:	3c0fde00 	lui	t7,0xde00
    2858:	17000009 	bnez	t8,2880 <func_80820434+0x163c>
    285c:	2401ff00 	li	at,-256
    2860:	8e0202c0 	lw	v0,704(s0)
    2864:	3c190809 	lui	t9,0x809
    2868:	27399bf8 	addiu	t9,t9,-25608
    286c:	244f0008 	addiu	t7,v0,8
    2870:	ae0f02c0 	sw	t7,704(s0)
    2874:	ac590004 	sw	t9,4(v0)
    2878:	10000008 	b	289c <func_80820434+0x1658>
    287c:	ac4e0000 	sw	t6,0(v0)
    2880:	8e0202c0 	lw	v0,704(s0)
    2884:	3c0e0809 	lui	t6,0x809
    2888:	25ce9c48 	addiu	t6,t6,-25528
    288c:	24580008 	addiu	t8,v0,8
    2890:	ae1802c0 	sw	t8,704(s0)
    2894:	ac4e0004 	sw	t6,4(v0)
    2898:	ac4f0000 	sw	t7,0(v0)
    289c:	8e0202c0 	lw	v0,704(s0)
    28a0:	3c18e700 	lui	t8,0xe700
    28a4:	3c0efc12 	lui	t6,0xfc12
    28a8:	24590008 	addiu	t9,v0,8
    28ac:	ae1902c0 	sw	t9,704(s0)
    28b0:	ac400004 	sw	zero,4(v0)
    28b4:	ac580000 	sw	t8,0(v0)
    28b8:	8e0202c0 	lw	v0,704(s0)
    28bc:	3c19ff33 	lui	t9,0xff33
    28c0:	3739ffff 	ori	t9,t9,0xffff
    28c4:	244f0008 	addiu	t7,v0,8
    28c8:	ae0f02c0 	sw	t7,704(s0)
    28cc:	35ce1824 	ori	t6,t6,0x1824
    28d0:	ac4e0000 	sw	t6,0(v0)
    28d4:	ac590004 	sw	t9,4(v0)
    28d8:	8e0202c0 	lw	v0,704(s0)
    28dc:	3c0ffa00 	lui	t7,0xfa00
    28e0:	24060030 	li	a2,48
    28e4:	24580008 	addiu	t8,v0,8
    28e8:	ae1802c0 	sw	t8,704(s0)
    28ec:	ac4f0000 	sw	t7,0(v0)
    28f0:	962e0208 	lhu	t6,520(s1)
    28f4:	3c0f0000 	lui	t7,0x0
    28f8:	24070010 	li	a3,16
    28fc:	31d900ff 	andi	t9,t6,0xff
    2900:	0321c025 	or	t8,t9,at
    2904:	ac580004 	sw	t8,4(v0)
    2908:	91ef1409 	lbu	t7,5129(t7)
    290c:	8e0402c0 	lw	a0,704(s0)
    2910:	2419000c 	li	t9,12
    2914:	000f70c0 	sll	t6,t7,0x3
    2918:	00ae2821 	addu	a1,a1,t6
    291c:	8ca50000 	lw	a1,0(a1)
    2920:	0c000000 	jal	0 <func_8081F1F0>
    2924:	afb90010 	sw	t9,16(sp)
    2928:	ae0202c0 	sw	v0,704(s0)
    292c:	3c180000 	lui	t8,0x0
    2930:	93181409 	lbu	t8,5129(t8)
    2934:	3c050000 	lui	a1,0x0
    2938:	240e0010 	li	t6,16
    293c:	001878c0 	sll	t7,t8,0x3
    2940:	00af2821 	addu	a1,a1,t7
    2944:	8ca50000 	lw	a1,0(a1)
    2948:	afae0010 	sw	t6,16(sp)
    294c:	00402025 	move	a0,v0
    2950:	24060030 	li	a2,48
    2954:	0c000000 	jal	0 <func_8081F1F0>
    2958:	24070010 	li	a3,16
    295c:	ae0202c0 	sw	v0,704(s0)
    2960:	8e0202c0 	lw	v0,704(s0)
    2964:	3c18e700 	lui	t8,0xe700
    2968:	3c0efc30 	lui	t6,0xfc30
    296c:	24590008 	addiu	t9,v0,8
    2970:	ae1902c0 	sw	t9,704(s0)
    2974:	ac400004 	sw	zero,4(v0)
    2978:	ac580000 	sw	t8,0(v0)
    297c:	8e0202c0 	lw	v0,704(s0)
    2980:	3c19552e 	lui	t9,0x552e
    2984:	3739ff7f 	ori	t9,t9,0xff7f
    2988:	244f0008 	addiu	t7,v0,8
    298c:	ae0f02c0 	sw	t7,704(s0)
    2990:	35ce9661 	ori	t6,t6,0x9661
    2994:	ac4e0000 	sw	t6,0(v0)
    2998:	ac590004 	sw	t9,4(v0)
    299c:	962201d4 	lhu	v0,468(s1)
    29a0:	24010010 	li	at,16
    29a4:	10410013 	beq	v0,at,29f4 <func_80820434+0x17b0>
    29a8:	24010011 	li	at,17
    29ac:	10410011 	beq	v0,at,29f4 <func_80820434+0x17b0>
    29b0:	00000000 	nop
    29b4:	8e0202c0 	lw	v0,704(s0)
    29b8:	3c0ffa00 	lui	t7,0xfa00
    29bc:	3c01ffff 	lui	at,0xffff
    29c0:	24580008 	addiu	t8,v0,8
    29c4:	ae1802c0 	sw	t8,704(s0)
    29c8:	ac4f0000 	sw	t7,0(v0)
    29cc:	962e0208 	lhu	t6,520(s1)
    29d0:	31d900ff 	andi	t9,t6,0xff
    29d4:	0321c025 	or	t8,t9,at
    29d8:	ac580004 	sw	t8,4(v0)
    29dc:	8e0202c0 	lw	v0,704(s0)
    29e0:	3c0efb00 	lui	t6,0xfb00
    29e4:	244f0008 	addiu	t7,v0,8
    29e8:	ae0f02c0 	sw	t7,704(s0)
    29ec:	ac400004 	sw	zero,4(v0)
    29f0:	ac4e0000 	sw	t6,0(v0)
    29f4:	3c060000 	lui	a2,0x0
    29f8:	24c60000 	addiu	a2,a2,0
    29fc:	27a400f8 	addiu	a0,sp,248
    2a00:	02002825 	move	a1,s0
    2a04:	0c000000 	jal	0 <func_8081F1F0>
    2a08:	24070629 	li	a3,1577
    2a0c:	8fbf0024 	lw	ra,36(sp)
    2a10:	8fb0001c 	lw	s0,28(sp)
    2a14:	8fb10020 	lw	s1,32(sp)
    2a18:	03e00008 	jr	ra
    2a1c:	27bd0118 	addiu	sp,sp,280

00002a20 <func_80821C10>:
    2a20:	27bdfef8 	addiu	sp,sp,-264
    2a24:	afbf001c 	sw	ra,28(sp)
    2a28:	afa40108 	sw	a0,264(sp)
    2a2c:	8c850000 	lw	a1,0(a0)
    2a30:	3c060000 	lui	a2,0x0
    2a34:	24c60000 	addiu	a2,a2,0
    2a38:	27a400e0 	addiu	a0,sp,224
    2a3c:	2407068c 	li	a3,1676
    2a40:	0c000000 	jal	0 <func_8081F1F0>
    2a44:	afa500f0 	sw	a1,240(sp)
    2a48:	3c0d0000 	lui	t5,0x0
    2a4c:	85ad0000 	lh	t5,0(t5)
    2a50:	3c180000 	lui	t8,0x0
    2a54:	27180000 	addiu	t8,t8,0
    2a58:	000d78c0 	sll	t7,t5,0x3
    2a5c:	01f82021 	addu	a0,t7,t8
    2a60:	3c190000 	lui	t9,0x0
    2a64:	87390000 	lh	t9,0(t9)
    2a68:	848c0000 	lh	t4,0(a0)
    2a6c:	8fbf00f0 	lw	ra,240(sp)
    2a70:	3c050000 	lui	a1,0x0
    2a74:	032c1023 	subu	v0,t9,t4
    2a78:	04400003 	bltz	v0,2a88 <func_80821C10+0x68>
    2a7c:	3c0e0000 	lui	t6,0x0
    2a80:	10000002 	b	2a8c <func_80821C10+0x6c>
    2a84:	00401825 	move	v1,v0
    2a88:	00021823 	negu	v1,v0
    2a8c:	84a50000 	lh	a1,0(a1)
    2a90:	848b0002 	lh	t3,2(a0)
    2a94:	85ce0000 	lh	t6,0(t6)
    2a98:	0065001a 	div	zero,v1,a1
    2a9c:	00003812 	mflo	a3
    2aa0:	00073c00 	sll	a3,a3,0x10
    2aa4:	14a00002 	bnez	a1,2ab0 <func_80821C10+0x90>
    2aa8:	00000000 	nop
    2aac:	0007000d 	break	0x7
    2ab0:	2401ffff 	li	at,-1
    2ab4:	14a10004 	bne	a1,at,2ac8 <func_80821C10+0xa8>
    2ab8:	3c018000 	lui	at,0x8000
    2abc:	14610002 	bne	v1,at,2ac8 <func_80821C10+0xa8>
    2ac0:	00000000 	nop
    2ac4:	0006000d 	break	0x6
    2ac8:	01cb1023 	subu	v0,t6,t3
    2acc:	04400003 	bltz	v0,2adc <func_80821C10+0xbc>
    2ad0:	00073c03 	sra	a3,a3,0x10
    2ad4:	10000002 	b	2ae0 <func_80821C10+0xc0>
    2ad8:	00401825 	move	v1,v0
    2adc:	00021823 	negu	v1,v0
    2ae0:	0065001a 	div	zero,v1,a1
    2ae4:	3c0f0000 	lui	t7,0x0
    2ae8:	85ef0000 	lh	t7,0(t7)
    2aec:	848a0004 	lh	t2,4(a0)
    2af0:	00004012 	mflo	t0
    2af4:	00084400 	sll	t0,t0,0x10
    2af8:	14a00002 	bnez	a1,2b04 <func_80821C10+0xe4>
    2afc:	00000000 	nop
    2b00:	0007000d 	break	0x7
    2b04:	2401ffff 	li	at,-1
    2b08:	14a10004 	bne	a1,at,2b1c <func_80821C10+0xfc>
    2b0c:	3c018000 	lui	at,0x8000
    2b10:	14610002 	bne	v1,at,2b1c <func_80821C10+0xfc>
    2b14:	00000000 	nop
    2b18:	0006000d 	break	0x6
    2b1c:	01ea1023 	subu	v0,t7,t2
    2b20:	04400003 	bltz	v0,2b30 <func_80821C10+0x110>
    2b24:	00084403 	sra	t0,t0,0x10
    2b28:	10000002 	b	2b34 <func_80821C10+0x114>
    2b2c:	00401825 	move	v1,v0
    2b30:	00021823 	negu	v1,v0
    2b34:	0065001a 	div	zero,v1,a1
    2b38:	3c180000 	lui	t8,0x0
    2b3c:	87180000 	lh	t8,0(t8)
    2b40:	84860006 	lh	a2,6(a0)
    2b44:	00004812 	mflo	t1
    2b48:	00094c00 	sll	t1,t1,0x10
    2b4c:	14a00002 	bnez	a1,2b58 <func_80821C10+0x138>
    2b50:	00000000 	nop
    2b54:	0007000d 	break	0x7
    2b58:	2401ffff 	li	at,-1
    2b5c:	14a10004 	bne	a1,at,2b70 <func_80821C10+0x150>
    2b60:	3c018000 	lui	at,0x8000
    2b64:	14610002 	bne	v1,at,2b70 <func_80821C10+0x150>
    2b68:	00000000 	nop
    2b6c:	0006000d 	break	0x6
    2b70:	03061023 	subu	v0,t8,a2
    2b74:	04400003 	bltz	v0,2b84 <func_80821C10+0x164>
    2b78:	00094c03 	sra	t1,t1,0x10
    2b7c:	10000002 	b	2b88 <func_80821C10+0x168>
    2b80:	00401825 	move	v1,v0
    2b84:	00021823 	negu	v1,v0
    2b88:	3c190000 	lui	t9,0x0
    2b8c:	87390000 	lh	t9,0(t9)
    2b90:	032c082a 	slt	at,t9,t4
    2b94:	14200005 	bnez	at,2bac <func_80821C10+0x18c>
    2b98:	00000000 	nop
    2b9c:	03277023 	subu	t6,t9,a3
    2ba0:	3c010000 	lui	at,0x0
    2ba4:	10000006 	b	2bc0 <func_80821C10+0x1a0>
    2ba8:	a42e0000 	sh	t6,0(at)
    2bac:	3c0f0000 	lui	t7,0x0
    2bb0:	85ef0000 	lh	t7,0(t7)
    2bb4:	3c010000 	lui	at,0x0
    2bb8:	01e7c021 	addu	t8,t7,a3
    2bbc:	a4380000 	sh	t8,0(at)
    2bc0:	3c190000 	lui	t9,0x0
    2bc4:	87390000 	lh	t9,0(t9)
    2bc8:	00003825 	move	a3,zero
    2bcc:	032b082a 	slt	at,t9,t3
    2bd0:	14200005 	bnez	at,2be8 <func_80821C10+0x1c8>
    2bd4:	00000000 	nop
    2bd8:	03287023 	subu	t6,t9,t0
    2bdc:	3c010000 	lui	at,0x0
    2be0:	10000006 	b	2bfc <func_80821C10+0x1dc>
    2be4:	a42e0000 	sh	t6,0(at)
    2be8:	3c0f0000 	lui	t7,0x0
    2bec:	85ef0000 	lh	t7,0(t7)
    2bf0:	3c010000 	lui	at,0x0
    2bf4:	01e8c021 	addu	t8,t7,t0
    2bf8:	a4380000 	sh	t8,0(at)
    2bfc:	3c190000 	lui	t9,0x0
    2c00:	87390000 	lh	t9,0(t9)
    2c04:	39ad0001 	xori	t5,t5,0x1
    2c08:	000d6c00 	sll	t5,t5,0x10
    2c0c:	032a082a 	slt	at,t9,t2
    2c10:	14200005 	bnez	at,2c28 <func_80821C10+0x208>
    2c14:	00000000 	nop
    2c18:	03297023 	subu	t6,t9,t1
    2c1c:	3c010000 	lui	at,0x0
    2c20:	10000006 	b	2c3c <func_80821C10+0x21c>
    2c24:	a42e0000 	sh	t6,0(at)
    2c28:	3c0f0000 	lui	t7,0x0
    2c2c:	85ef0000 	lh	t7,0(t7)
    2c30:	3c010000 	lui	at,0x0
    2c34:	01e9c021 	addu	t8,t7,t1
    2c38:	a4380000 	sh	t8,0(at)
    2c3c:	3c190000 	lui	t9,0x0
    2c40:	87390000 	lh	t9,0(t9)
    2c44:	0326082a 	slt	at,t9,a2
    2c48:	14200012 	bnez	at,2c94 <func_80821C10+0x274>
    2c4c:	00000000 	nop
    2c50:	0065001a 	div	zero,v1,a1
    2c54:	14a00002 	bnez	a1,2c60 <func_80821C10+0x240>
    2c58:	00000000 	nop
    2c5c:	0007000d 	break	0x7
    2c60:	2401ffff 	li	at,-1
    2c64:	14a10004 	bne	a1,at,2c78 <func_80821C10+0x258>
    2c68:	3c018000 	lui	at,0x8000
    2c6c:	14610002 	bne	v1,at,2c78 <func_80821C10+0x258>
    2c70:	00000000 	nop
    2c74:	0006000d 	break	0x6
    2c78:	00007012 	mflo	t6
    2c7c:	000e7c00 	sll	t7,t6,0x10
    2c80:	000fc403 	sra	t8,t7,0x10
    2c84:	03387023 	subu	t6,t9,t8
    2c88:	3c010000 	lui	at,0x0
    2c8c:	10000013 	b	2cdc <func_80821C10+0x2bc>
    2c90:	a42e0000 	sh	t6,0(at)
    2c94:	0065001a 	div	zero,v1,a1
    2c98:	3c0f0000 	lui	t7,0x0
    2c9c:	85ef0000 	lh	t7,0(t7)
    2ca0:	14a00002 	bnez	a1,2cac <func_80821C10+0x28c>
    2ca4:	00000000 	nop
    2ca8:	0007000d 	break	0x7
    2cac:	2401ffff 	li	at,-1
    2cb0:	14a10004 	bne	a1,at,2cc4 <func_80821C10+0x2a4>
    2cb4:	3c018000 	lui	at,0x8000
    2cb8:	14610002 	bne	v1,at,2cc4 <func_80821C10+0x2a4>
    2cbc:	00000000 	nop
    2cc0:	0006000d 	break	0x6
    2cc4:	0000c812 	mflo	t9
    2cc8:	0019c400 	sll	t8,t9,0x10
    2ccc:	00187403 	sra	t6,t8,0x10
    2cd0:	3c010000 	lui	at,0x0
    2cd4:	01eec821 	addu	t9,t7,t6
    2cd8:	a4390000 	sh	t9,0(at)
    2cdc:	24a5ffff 	addiu	a1,a1,-1
    2ce0:	00052c00 	sll	a1,a1,0x10
    2ce4:	00052c03 	sra	a1,a1,0x10
    2ce8:	3c010000 	lui	at,0x0
    2cec:	14a00011 	bnez	a1,2d34 <func_80821C10+0x314>
    2cf0:	a4250000 	sh	a1,0(at)
    2cf4:	3c010000 	lui	at,0x0
    2cf8:	a42c0000 	sh	t4,0(at)
    2cfc:	3c010000 	lui	at,0x0
    2d00:	a42b0000 	sh	t3,0(at)
    2d04:	3c010000 	lui	at,0x0
    2d08:	3c180000 	lui	t8,0x0
    2d0c:	8f180000 	lw	t8,0(t8)
    2d10:	a42a0000 	sh	t2,0(at)
    2d14:	3c010000 	lui	at,0x0
    2d18:	a4260000 	sh	a2,0(at)
    2d1c:	870507cc 	lh	a1,1996(t8)
    2d20:	3c010000 	lui	at,0x0
    2d24:	000d6c03 	sra	t5,t5,0x10
    2d28:	a4250000 	sh	a1,0(at)
    2d2c:	3c010000 	lui	at,0x0
    2d30:	a42d0000 	sh	t5,0(at)
    2d34:	8fa80108 	lw	t0,264(sp)
    2d38:	3c010001 	lui	at,0x1
    2d3c:	34210760 	ori	at,at,0x760
    2d40:	01014021 	addu	t0,t0,at
    2d44:	850d025a 	lh	t5,602(t0)
    2d48:	00003025 	move	a2,zero
    2d4c:	240c00c8 	li	t4,200
    2d50:	25adffb4 	addiu	t5,t5,-76
    2d54:	000d6c00 	sll	t5,t5,0x10
    2d58:	000d6c03 	sra	t5,t5,0x10
    2d5c:	25a9ffe8 	addiu	t1,t5,-24
    2d60:	00094c00 	sll	t1,t1,0x10
    2d64:	00094c03 	sra	t1,t1,0x10
    2d68:	240b0900 	li	t3,2304
    2d6c:	240affb8 	li	t2,-72
    2d70:	8d0f0154 	lw	t7,340(t0)
    2d74:	00061100 	sll	v0,a2,0x4
    2d78:	24e70001 	addiu	a3,a3,1
    2d7c:	01e27021 	addu	t6,t7,v0
    2d80:	a5ca0020 	sh	t2,32(t6)
    2d84:	8d190154 	lw	t9,340(t0)
    2d88:	00073c00 	sll	a3,a3,0x10
    2d8c:	00073c03 	sra	a3,a3,0x10
    2d90:	03221821 	addu	v1,t9,v0
    2d94:	84780020 	lh	t8,32(v1)
    2d98:	24c60004 	addiu	a2,a2,4
    2d9c:	00063400 	sll	a2,a2,0x10
    2da0:	a4780000 	sh	t8,0(v1)
    2da4:	8d0f0154 	lw	t7,340(t0)
    2da8:	28e10007 	slti	at,a3,7
    2dac:	00063403 	sra	a2,a2,0x10
    2db0:	01e27021 	addu	t6,t7,v0
    2db4:	a5c00030 	sh	zero,48(t6)
    2db8:	8d190154 	lw	t9,340(t0)
    2dbc:	03221821 	addu	v1,t9,v0
    2dc0:	84780030 	lh	t8,48(v1)
    2dc4:	a4780010 	sh	t8,16(v1)
    2dc8:	8d0f0154 	lw	t7,340(t0)
    2dcc:	01e27021 	addu	t6,t7,v0
    2dd0:	a5cd0012 	sh	t5,18(t6)
    2dd4:	8d190154 	lw	t9,340(t0)
    2dd8:	03221821 	addu	v1,t9,v0
    2ddc:	84780012 	lh	t8,18(v1)
    2de0:	a4780002 	sh	t8,2(v1)
    2de4:	8d0f0154 	lw	t7,340(t0)
    2de8:	01e27021 	addu	t6,t7,v0
    2dec:	a5c90032 	sh	t1,50(t6)
    2df0:	8d190154 	lw	t9,340(t0)
    2df4:	0322c021 	addu	t8,t9,v0
    2df8:	a7090022 	sh	t1,34(t8)
    2dfc:	8d0f0154 	lw	t7,340(t0)
    2e00:	01e27021 	addu	t6,t7,v0
    2e04:	a5c00034 	sh	zero,52(t6)
    2e08:	8d190154 	lw	t9,340(t0)
    2e0c:	03221821 	addu	v1,t9,v0
    2e10:	84640034 	lh	a0,52(v1)
    2e14:	a4640024 	sh	a0,36(v1)
    2e18:	8d180154 	lw	t8,340(t0)
    2e1c:	03027821 	addu	t7,t8,v0
    2e20:	a5e40014 	sh	a0,20(t7)
    2e24:	8d0e0154 	lw	t6,340(t0)
    2e28:	01c2c821 	addu	t9,t6,v0
    2e2c:	a7240004 	sh	a0,4(t9)
    2e30:	8d180154 	lw	t8,340(t0)
    2e34:	03027821 	addu	t7,t8,v0
    2e38:	a5e00036 	sh	zero,54(t7)
    2e3c:	8d0e0154 	lw	t6,340(t0)
    2e40:	01c21821 	addu	v1,t6,v0
    2e44:	94640036 	lhu	a0,54(v1)
    2e48:	a4640026 	sh	a0,38(v1)
    2e4c:	8d190154 	lw	t9,340(t0)
    2e50:	0322c021 	addu	t8,t9,v0
    2e54:	a7040016 	sh	a0,22(t8)
    2e58:	8d0f0154 	lw	t7,340(t0)
    2e5c:	01e27021 	addu	t6,t7,v0
    2e60:	a5c40006 	sh	a0,6(t6)
    2e64:	8d190154 	lw	t9,340(t0)
    2e68:	0322c021 	addu	t8,t9,v0
    2e6c:	a7000028 	sh	zero,40(t8)
    2e70:	8d0f0154 	lw	t7,340(t0)
    2e74:	01e21821 	addu	v1,t7,v0
    2e78:	84640028 	lh	a0,40(v1)
    2e7c:	a464001a 	sh	a0,26(v1)
    2e80:	8d0e0154 	lw	t6,340(t0)
    2e84:	01c2c821 	addu	t9,t6,v0
    2e88:	a724000a 	sh	a0,10(t9)
    2e8c:	8d180154 	lw	t8,340(t0)
    2e90:	03027821 	addu	t7,t8,v0
    2e94:	a5e40008 	sh	a0,8(t7)
    2e98:	8d0e0154 	lw	t6,340(t0)
    2e9c:	01c2c821 	addu	t9,t6,v0
    2ea0:	a72b0038 	sh	t3,56(t9)
    2ea4:	8d180154 	lw	t8,340(t0)
    2ea8:	240e0300 	li	t6,768
    2eac:	03021821 	addu	v1,t8,v0
    2eb0:	846f0038 	lh	t7,56(v1)
    2eb4:	a46f0018 	sh	t7,24(v1)
    2eb8:	8d190154 	lw	t9,340(t0)
    2ebc:	0322c021 	addu	t8,t9,v0
    2ec0:	a70e003a 	sh	t6,58(t8)
    2ec4:	8d0f0154 	lw	t7,340(t0)
    2ec8:	01e21821 	addu	v1,t7,v0
    2ecc:	8479003a 	lh	t9,58(v1)
    2ed0:	a479002a 	sh	t9,42(v1)
    2ed4:	8d0e0154 	lw	t6,340(t0)
    2ed8:	01c2c021 	addu	t8,t6,v0
    2edc:	a30c003e 	sb	t4,62(t8)
    2ee0:	8d0f0154 	lw	t7,340(t0)
    2ee4:	01e21821 	addu	v1,t7,v0
    2ee8:	9065003e 	lbu	a1,62(v1)
    2eec:	a065001e 	sb	a1,30(v1)
    2ef0:	8d190154 	lw	t9,340(t0)
    2ef4:	03227021 	addu	t6,t9,v0
    2ef8:	a1c5003d 	sb	a1,61(t6)
    2efc:	8d180154 	lw	t8,340(t0)
    2f00:	03027821 	addu	t7,t8,v0
    2f04:	a1e5001d 	sb	a1,29(t7)
    2f08:	8d190154 	lw	t9,340(t0)
    2f0c:	03227021 	addu	t6,t9,v0
    2f10:	a1c5003c 	sb	a1,60(t6)
    2f14:	8d180154 	lw	t8,340(t0)
    2f18:	03027821 	addu	t7,t8,v0
    2f1c:	a1e5001c 	sb	a1,28(t7)
    2f20:	8d190154 	lw	t9,340(t0)
    2f24:	03227021 	addu	t6,t9,v0
    2f28:	a1c5002e 	sb	a1,46(t6)
    2f2c:	8d180154 	lw	t8,340(t0)
    2f30:	03027821 	addu	t7,t8,v0
    2f34:	a1e5000e 	sb	a1,14(t7)
    2f38:	8d190154 	lw	t9,340(t0)
    2f3c:	03227021 	addu	t6,t9,v0
    2f40:	a1c5002d 	sb	a1,45(t6)
    2f44:	8d180154 	lw	t8,340(t0)
    2f48:	03027821 	addu	t7,t8,v0
    2f4c:	a1e5000d 	sb	a1,13(t7)
    2f50:	8d190154 	lw	t9,340(t0)
    2f54:	03227021 	addu	t6,t9,v0
    2f58:	a1c5002c 	sb	a1,44(t6)
    2f5c:	8d180154 	lw	t8,340(t0)
    2f60:	03027821 	addu	t7,t8,v0
    2f64:	a1e5000c 	sb	a1,12(t7)
    2f68:	8d190154 	lw	t9,340(t0)
    2f6c:	91030209 	lbu	v1,521(t0)
    2f70:	03227021 	addu	t6,t9,v0
    2f74:	a1c3003f 	sb	v1,63(t6)
    2f78:	8d180154 	lw	t8,340(t0)
    2f7c:	03027821 	addu	t7,t8,v0
    2f80:	a1e3001f 	sb	v1,31(t7)
    2f84:	8d190154 	lw	t9,340(t0)
    2f88:	03227021 	addu	t6,t9,v0
    2f8c:	a1c3002f 	sb	v1,47(t6)
    2f90:	8d180154 	lw	t8,340(t0)
    2f94:	03027821 	addu	t7,t8,v0
    2f98:	1420ff75 	bnez	at,2d70 <func_80821C10+0x350>
    2f9c:	a1e3000f 	sb	v1,15(t7)
    2fa0:	8d030154 	lw	v1,340(t0)
    2fa4:	2401000a 	li	at,10
    2fa8:	84620000 	lh	v0,0(v1)
    2fac:	24420048 	addiu	v0,v0,72
    2fb0:	00021400 	sll	v0,v0,0x10
    2fb4:	00021403 	sra	v0,v0,0x10
    2fb8:	a4620060 	sh	v0,96(v1)
    2fbc:	8d190154 	lw	t9,340(t0)
    2fc0:	a7220040 	sh	v0,64(t9)
    2fc4:	8d030154 	lw	v1,340(t0)
    2fc8:	84620040 	lh	v0,64(v1)
    2fcc:	24420048 	addiu	v0,v0,72
    2fd0:	00021400 	sll	v0,v0,0x10
    2fd4:	00021403 	sra	v0,v0,0x10
    2fd8:	a4620070 	sh	v0,112(v1)
    2fdc:	8d0e0154 	lw	t6,340(t0)
    2fe0:	a5c20050 	sh	v0,80(t6)
    2fe4:	85180238 	lh	t8,568(t0)
    2fe8:	17010023 	bne	t8,at,3078 <func_80821C10+0x658>
    2fec:	00000000 	nop
    2ff0:	950f01e4 	lhu	t7,484(t0)
    2ff4:	3c050000 	lui	a1,0x0
    2ff8:	24a50000 	addiu	a1,a1,0
    2ffc:	15e0001e 	bnez	t7,3078 <func_80821C10+0x658>
    3000:	00000000 	nop
    3004:	8cb90000 	lw	t9,0(a1)
    3008:	8d0e0154 	lw	t6,340(t0)
    300c:	87220db4 	lh	v0,3508(t9)
    3010:	a5c200a0 	sh	v0,160(t6)
    3014:	8d180154 	lw	t8,340(t0)
    3018:	a7020080 	sh	v0,128(t8)
    301c:	8d030154 	lw	v1,340(t0)
    3020:	84620080 	lh	v0,128(v1)
    3024:	24420018 	addiu	v0,v0,24
    3028:	00021400 	sll	v0,v0,0x10
    302c:	00021403 	sra	v0,v0,0x10
    3030:	a46200b0 	sh	v0,176(v1)
    3034:	8d0f0154 	lw	t7,340(t0)
    3038:	a5e20090 	sh	v0,144(t7)
    303c:	8cb90000 	lw	t9,0(a1)
    3040:	8d0e0154 	lw	t6,340(t0)
    3044:	87220db8 	lh	v0,3512(t9)
    3048:	a5c20092 	sh	v0,146(t6)
    304c:	8d180154 	lw	t8,340(t0)
    3050:	a7020082 	sh	v0,130(t8)
    3054:	8d030154 	lw	v1,340(t0)
    3058:	84620082 	lh	v0,130(v1)
    305c:	2442ffe0 	addiu	v0,v0,-32
    3060:	00021400 	sll	v0,v0,0x10
    3064:	00021403 	sra	v0,v0,0x10
    3068:	a46200b2 	sh	v0,178(v1)
    306c:	8d0f0154 	lw	t7,340(t0)
    3070:	10000027 	b	3110 <func_80821C10+0x6f0>
    3074:	a5e200a2 	sh	v0,162(t7)
    3078:	3c190000 	lui	t9,0x0
    307c:	8f390000 	lw	t9,0(t9)
    3080:	8d0e0154 	lw	t6,340(t0)
    3084:	3c050000 	lui	a1,0x0
    3088:	87220db4 	lh	v0,3508(t9)
    308c:	3c190000 	lui	t9,0x0
    3090:	24a50000 	addiu	a1,a1,0
    3094:	24420003 	addiu	v0,v0,3
    3098:	00021400 	sll	v0,v0,0x10
    309c:	00021403 	sra	v0,v0,0x10
    30a0:	a5c200a0 	sh	v0,160(t6)
    30a4:	8d180154 	lw	t8,340(t0)
    30a8:	a7020080 	sh	v0,128(t8)
    30ac:	8d030154 	lw	v1,340(t0)
    30b0:	84620080 	lh	v0,128(v1)
    30b4:	24420012 	addiu	v0,v0,18
    30b8:	00021400 	sll	v0,v0,0x10
    30bc:	00021403 	sra	v0,v0,0x10
    30c0:	a46200b0 	sh	v0,176(v1)
    30c4:	8d0f0154 	lw	t7,340(t0)
    30c8:	a5e20090 	sh	v0,144(t7)
    30cc:	8f390000 	lw	t9,0(t9)
    30d0:	8d0e0154 	lw	t6,340(t0)
    30d4:	87220db8 	lh	v0,3512(t9)
    30d8:	2442fffd 	addiu	v0,v0,-3
    30dc:	00021400 	sll	v0,v0,0x10
    30e0:	00021403 	sra	v0,v0,0x10
    30e4:	a5c20092 	sh	v0,146(t6)
    30e8:	8d180154 	lw	t8,340(t0)
    30ec:	a7020082 	sh	v0,130(t8)
    30f0:	8d030154 	lw	v1,340(t0)
    30f4:	84620082 	lh	v0,130(v1)
    30f8:	2442ffe6 	addiu	v0,v0,-26
    30fc:	00021400 	sll	v0,v0,0x10
    3100:	00021403 	sra	v0,v0,0x10
    3104:	a46200b2 	sh	v0,178(v1)
    3108:	8d0f0154 	lw	t7,340(t0)
    310c:	a5e200a2 	sh	v0,162(t7)
    3110:	85190238 	lh	t9,568(t0)
    3114:	2401000b 	li	at,11
    3118:	57210022 	bnel	t9,at,31a4 <func_80821C10+0x784>
    311c:	8cb80000 	lw	t8,0(a1)
    3120:	950e01e4 	lhu	t6,484(t0)
    3124:	55c0001f 	bnezl	t6,31a4 <func_80821C10+0x784>
    3128:	8cb80000 	lw	t8,0(a1)
    312c:	8cb80000 	lw	t8,0(a1)
    3130:	8d0f0154 	lw	t7,340(t0)
    3134:	87020db6 	lh	v0,3510(t8)
    3138:	a5e200e0 	sh	v0,224(t7)
    313c:	8d190154 	lw	t9,340(t0)
    3140:	a72200c0 	sh	v0,192(t9)
    3144:	8d030154 	lw	v1,340(t0)
    3148:	846200c0 	lh	v0,192(v1)
    314c:	24420018 	addiu	v0,v0,24
    3150:	00021400 	sll	v0,v0,0x10
    3154:	00021403 	sra	v0,v0,0x10
    3158:	a46200f0 	sh	v0,240(v1)
    315c:	8d0e0154 	lw	t6,340(t0)
    3160:	a5c200d0 	sh	v0,208(t6)
    3164:	8cb80000 	lw	t8,0(a1)
    3168:	8d0f0154 	lw	t7,340(t0)
    316c:	87020db8 	lh	v0,3512(t8)
    3170:	a5e200d2 	sh	v0,210(t7)
    3174:	8d190154 	lw	t9,340(t0)
    3178:	a72200c2 	sh	v0,194(t9)
    317c:	8d030154 	lw	v1,340(t0)
    3180:	846200c2 	lh	v0,194(v1)
    3184:	2442ffe0 	addiu	v0,v0,-32
    3188:	00021400 	sll	v0,v0,0x10
    318c:	00021403 	sra	v0,v0,0x10
    3190:	a46200f2 	sh	v0,242(v1)
    3194:	8d0e0154 	lw	t6,340(t0)
    3198:	10000023 	b	3228 <func_80821C10+0x808>
    319c:	a5c200e2 	sh	v0,226(t6)
    31a0:	8cb80000 	lw	t8,0(a1)
    31a4:	8d0f0154 	lw	t7,340(t0)
    31a8:	87020db6 	lh	v0,3510(t8)
    31ac:	24420003 	addiu	v0,v0,3
    31b0:	00021400 	sll	v0,v0,0x10
    31b4:	00021403 	sra	v0,v0,0x10
    31b8:	a5e200e0 	sh	v0,224(t7)
    31bc:	8d190154 	lw	t9,340(t0)
    31c0:	a72200c0 	sh	v0,192(t9)
    31c4:	8d030154 	lw	v1,340(t0)
    31c8:	846200c0 	lh	v0,192(v1)
    31cc:	24420012 	addiu	v0,v0,18
    31d0:	00021400 	sll	v0,v0,0x10
    31d4:	00021403 	sra	v0,v0,0x10
    31d8:	a46200f0 	sh	v0,240(v1)
    31dc:	8d0e0154 	lw	t6,340(t0)
    31e0:	a5c200d0 	sh	v0,208(t6)
    31e4:	8cb80000 	lw	t8,0(a1)
    31e8:	8d0f0154 	lw	t7,340(t0)
    31ec:	87020db8 	lh	v0,3512(t8)
    31f0:	2442fffd 	addiu	v0,v0,-3
    31f4:	00021400 	sll	v0,v0,0x10
    31f8:	00021403 	sra	v0,v0,0x10
    31fc:	a5e200d2 	sh	v0,210(t7)
    3200:	8d190154 	lw	t9,340(t0)
    3204:	a72200c2 	sh	v0,194(t9)
    3208:	8d030154 	lw	v1,340(t0)
    320c:	846200c2 	lh	v0,194(v1)
    3210:	2442ffe6 	addiu	v0,v0,-26
    3214:	00021400 	sll	v0,v0,0x10
    3218:	00021403 	sra	v0,v0,0x10
    321c:	a46200f2 	sh	v0,242(v1)
    3220:	8d0e0154 	lw	t6,340(t0)
    3224:	a5c200e2 	sh	v0,226(t6)
    3228:	8d0f0154 	lw	t7,340(t0)
    322c:	24180300 	li	t8,768
    3230:	44806000 	mtc1	zero,$f12
    3234:	a5f800f8 	sh	t8,248(t7)
    3238:	8d030154 	lw	v1,340(t0)
    323c:	24180400 	li	t8,1024
    3240:	3c06c310 	lui	a2,0xc310
    3244:	846400f8 	lh	a0,248(v1)
    3248:	00003825 	move	a3,zero
    324c:	46006386 	mov.s	$f14,$f12
    3250:	a46400d8 	sh	a0,216(v1)
    3254:	8d190154 	lw	t9,340(t0)
    3258:	a72400b8 	sh	a0,184(t9)
    325c:	8d0e0154 	lw	t6,340(t0)
    3260:	a5c40098 	sh	a0,152(t6)
    3264:	8d0f0154 	lw	t7,340(t0)
    3268:	a5f800fa 	sh	t8,250(t7)
    326c:	8d030154 	lw	v1,340(t0)
    3270:	3c0ffc11 	lui	t7,0xfc11
    3274:	35ef9623 	ori	t7,t7,0x9623
    3278:	846400fa 	lh	a0,250(v1)
    327c:	a46400ea 	sh	a0,234(v1)
    3280:	8d190154 	lw	t9,340(t0)
    3284:	a72400ba 	sh	a0,186(t9)
    3288:	8d0e0154 	lw	t6,340(t0)
    328c:	3c19ff2f 	lui	t9,0xff2f
    3290:	3739ffff 	ori	t9,t9,0xffff
    3294:	a5c400aa 	sh	a0,170(t6)
    3298:	8fe202c0 	lw	v0,704(ra)
    329c:	24580008 	addiu	t8,v0,8
    32a0:	aff802c0 	sw	t8,704(ra)
    32a4:	ac590004 	sw	t9,4(v0)
    32a8:	ac4f0000 	sw	t7,0(v0)
    32ac:	afbf00f0 	sw	ra,240(sp)
    32b0:	0c000000 	jal	0 <func_8081F1F0>
    32b4:	afa80038 	sw	t0,56(sp)
    32b8:	3c013f80 	lui	at,0x3f80
    32bc:	44816000 	mtc1	at,$f12
    32c0:	24070001 	li	a3,1
    32c4:	44066000 	mfc1	a2,$f12
    32c8:	0c000000 	jal	0 <func_8081F1F0>
    32cc:	46006386 	mov.s	$f14,$f12
    32d0:	8fbf00f0 	lw	ra,240(sp)
    32d4:	8fa80038 	lw	t0,56(sp)
    32d8:	3c18da38 	lui	t8,0xda38
    32dc:	8fe202c0 	lw	v0,704(ra)
    32e0:	37180003 	ori	t8,t8,0x3
    32e4:	3c050000 	lui	a1,0x0
    32e8:	244e0008 	addiu	t6,v0,8
    32ec:	afee02c0 	sw	t6,704(ra)
    32f0:	ac580000 	sw	t8,0(v0)
    32f4:	8faf0108 	lw	t7,264(sp)
    32f8:	24a50000 	addiu	a1,a1,0
    32fc:	240606db 	li	a2,1755
    3300:	8de40000 	lw	a0,0(t7)
    3304:	afbf00f0 	sw	ra,240(sp)
    3308:	afa80038 	sw	t0,56(sp)
    330c:	0c000000 	jal	0 <func_8081F1F0>
    3310:	afa200d8 	sw	v0,216(sp)
    3314:	8fa300d8 	lw	v1,216(sp)
    3318:	8fbf00f0 	lw	ra,240(sp)
    331c:	8fa80038 	lw	t0,56(sp)
    3320:	ac620004 	sw	v0,4(v1)
    3324:	8fe202c0 	lw	v0,704(ra)
    3328:	3c0e5a64 	lui	t6,0x5a64
    332c:	35ce82ff 	ori	t6,t6,0x82ff
    3330:	24590008 	addiu	t9,v0,8
    3334:	aff902c0 	sw	t9,704(ra)
    3338:	3c0cfa00 	lui	t4,0xfa00
    333c:	ac4c0000 	sw	t4,0(v0)
    3340:	ac4e0004 	sw	t6,4(v0)
    3344:	8fe202c0 	lw	v0,704(ra)
    3348:	3c0f0101 	lui	t7,0x101
    334c:	35ef0020 	ori	t7,t7,0x20
    3350:	24580008 	addiu	t8,v0,8
    3354:	aff802c0 	sw	t8,704(ra)
    3358:	ac4f0000 	sw	t7,0(v0)
    335c:	8d190154 	lw	t9,340(t0)
    3360:	3c180809 	lui	t8,0x809
    3364:	271899c0 	addiu	t8,t8,-26176
    3368:	ac590004 	sw	t9,4(v0)
    336c:	8fe202c0 	lw	v0,704(ra)
    3370:	3c07de00 	lui	a3,0xde00
    3374:	2401000a 	li	at,10
    3378:	244e0008 	addiu	t6,v0,8
    337c:	afee02c0 	sw	t6,704(ra)
    3380:	ac580004 	sw	t8,4(v0)
    3384:	ac470000 	sw	a3,0(v0)
    3388:	850f0238 	lh	t7,568(t0)
    338c:	55e1001b 	bnel	t7,at,33fc <func_80821C10+0x9dc>
    3390:	8fe202c0 	lw	v0,704(ra)
    3394:	951901e4 	lhu	t9,484(t0)
    3398:	57200018 	bnezl	t9,33fc <func_80821C10+0x9dc>
    339c:	8fe202c0 	lw	v0,704(ra)
    33a0:	8fe202c0 	lw	v0,704(ra)
    33a4:	3c180000 	lui	t8,0x0
    33a8:	244e0008 	addiu	t6,v0,8
    33ac:	afee02c0 	sw	t6,704(ra)
    33b0:	ac4c0000 	sw	t4,0(v0)
    33b4:	3c0e0000 	lui	t6,0x0
    33b8:	85ce0000 	lh	t6,0(t6)
    33bc:	870f0000 	lh	t7,0(t8)
    33c0:	31d800ff 	andi	t8,t6,0xff
    33c4:	000fce00 	sll	t9,t7,0x18
    33c8:	00187c00 	sll	t7,t8,0x10
    33cc:	3c180000 	lui	t8,0x0
    33d0:	87180000 	lh	t8,0(t8)
    33d4:	032f7025 	or	t6,t9,t7
    33d8:	331900ff 	andi	t9,t8,0xff
    33dc:	00197a00 	sll	t7,t9,0x8
    33e0:	3c190000 	lui	t9,0x0
    33e4:	87390000 	lh	t9,0(t9)
    33e8:	01cfc025 	or	t8,t6,t7
    33ec:	332e00ff 	andi	t6,t9,0xff
    33f0:	030e7825 	or	t7,t8,t6
    33f4:	ac4f0004 	sw	t7,4(v0)
    33f8:	8fe202c0 	lw	v0,704(ra)
    33fc:	3c180809 	lui	t8,0x809
    3400:	27189a50 	addiu	t8,t8,-26032
    3404:	24590008 	addiu	t9,v0,8
    3408:	aff902c0 	sw	t9,704(ra)
    340c:	ac580004 	sw	t8,4(v0)
    3410:	ac470000 	sw	a3,0(v0)
    3414:	8fe202c0 	lw	v0,704(ra)
    3418:	3c0fb4d2 	lui	t7,0xb4d2
    341c:	35efffdc 	ori	t7,t7,0xffdc
    3420:	244e0008 	addiu	t6,v0,8
    3424:	afee02c0 	sw	t6,704(ra)
    3428:	ac4f0004 	sw	t7,4(v0)
    342c:	ac4c0000 	sw	t4,0(v0)
    3430:	85190238 	lh	t9,568(t0)
    3434:	2401000b 	li	at,11
    3438:	5721001a 	bnel	t9,at,34a4 <func_80821C10+0xa84>
    343c:	8fe202c0 	lw	v0,704(ra)
    3440:	951801e4 	lhu	t8,484(t0)
    3444:	3c0e0000 	lui	t6,0x0
    3448:	17000015 	bnez	t8,34a0 <func_80821C10+0xa80>
    344c:	3c180000 	lui	t8,0x0
    3450:	87180000 	lh	t8,0(t8)
    3454:	85cf0000 	lh	t7,0(t6)
    3458:	8fe202c0 	lw	v0,704(ra)
    345c:	330e00ff 	andi	t6,t8,0xff
    3460:	000fce00 	sll	t9,t7,0x18
    3464:	000e7c00 	sll	t7,t6,0x10
    3468:	3c0e0000 	lui	t6,0x0
    346c:	85ce0000 	lh	t6,0(t6)
    3470:	032fc025 	or	t8,t9,t7
    3474:	31d900ff 	andi	t9,t6,0xff
    3478:	00197a00 	sll	t7,t9,0x8
    347c:	3c190000 	lui	t9,0x0
    3480:	87390000 	lh	t9,0(t9)
    3484:	030f7025 	or	t6,t8,t7
    3488:	244f0008 	addiu	t7,v0,8
    348c:	afef02c0 	sw	t7,704(ra)
    3490:	333800ff 	andi	t8,t9,0xff
    3494:	01d82025 	or	a0,t6,t8
    3498:	ac440004 	sw	a0,4(v0)
    349c:	ac4c0000 	sw	t4,0(v0)
    34a0:	8fe202c0 	lw	v0,704(ra)
    34a4:	3c0e0809 	lui	t6,0x809
    34a8:	25ce9aa0 	addiu	t6,t6,-25952
    34ac:	24590008 	addiu	t9,v0,8
    34b0:	aff902c0 	sw	t9,704(ra)
    34b4:	ac4e0004 	sw	t6,4(v0)
    34b8:	ac470000 	sw	a3,0(v0)
    34bc:	85030238 	lh	v1,568(t0)
    34c0:	10600018 	beqz	v1,3524 <func_80821C10+0xb04>
    34c4:	00033080 	sll	a2,v1,0x2
    34c8:	24c6ffe0 	addiu	a2,a2,-32
    34cc:	8d180154 	lw	t8,340(t0)
    34d0:	00063400 	sll	a2,a2,0x10
    34d4:	00063403 	sra	a2,a2,0x10
    34d8:	00061100 	sll	v0,a2,0x4
    34dc:	03027821 	addu	t7,t8,v0
    34e0:	85f90000 	lh	t9,0(t7)
    34e4:	8d0e0168 	lw	t6,360(t0)
    34e8:	a5d90000 	sh	t9,0(t6)
    34ec:	8d180154 	lw	t8,340(t0)
    34f0:	8d0e0168 	lw	t6,360(t0)
    34f4:	03027821 	addu	t7,t8,v0
    34f8:	85f90002 	lh	t9,2(t7)
    34fc:	a5d90002 	sh	t9,2(t6)
    3500:	950501e8 	lhu	a1,488(t0)
    3504:	afbf00f0 	sw	ra,240(sp)
    3508:	afa80038 	sw	t0,56(sp)
    350c:	0c000000 	jal	0 <func_8081F1F0>
    3510:	8fa40108 	lw	a0,264(sp)
    3514:	3c07de00 	lui	a3,0xde00
    3518:	8fa80038 	lw	t0,56(sp)
    351c:	3c0cfa00 	lui	t4,0xfa00
    3520:	8fbf00f0 	lw	ra,240(sp)
    3524:	850d025a 	lh	t5,602(t0)
    3528:	8d180154 	lw	t8,340(t0)
    352c:	24050200 	li	a1,512
    3530:	25adffb0 	addiu	t5,t5,-80
    3534:	000d6c00 	sll	t5,t5,0x10
    3538:	000d6c03 	sra	t5,t5,0x10
    353c:	a70d0112 	sh	t5,274(t8)
    3540:	8d030154 	lw	v1,340(t0)
    3544:	3c06e700 	lui	a2,0xe700
    3548:	24040006 	li	a0,6
    354c:	846f0112 	lh	t7,274(v1)
    3550:	a46f0102 	sh	t7,258(v1)
    3554:	8d030154 	lw	v1,340(t0)
    3558:	84620102 	lh	v0,258(v1)
    355c:	2442fff0 	addiu	v0,v0,-16
    3560:	00021400 	sll	v0,v0,0x10
    3564:	00021403 	sra	v0,v0,0x10
    3568:	a4620132 	sh	v0,306(v1)
    356c:	8d190154 	lw	t9,340(t0)
    3570:	a7220122 	sh	v0,290(t9)
    3574:	8d0e0154 	lw	t6,340(t0)
    3578:	a5c5013a 	sh	a1,314(t6)
    357c:	8d030154 	lw	v1,340(t0)
    3580:	3c0efc30 	lui	t6,0xfc30
    3584:	35ce9661 	ori	t6,t6,0x9661
    3588:	8478013a 	lh	t8,314(v1)
    358c:	a478012a 	sh	t8,298(v1)
    3590:	8fe202c0 	lw	v0,704(ra)
    3594:	3c18552e 	lui	t8,0x552e
    3598:	3718ff7f 	ori	t8,t8,0xff7f
    359c:	244f0008 	addiu	t7,v0,8
    35a0:	afef02c0 	sw	t7,704(ra)
    35a4:	ac400004 	sw	zero,4(v0)
    35a8:	ac460000 	sw	a2,0(v0)
    35ac:	8fe202c0 	lw	v0,704(ra)
    35b0:	24590008 	addiu	t9,v0,8
    35b4:	aff902c0 	sw	t9,704(ra)
    35b8:	ac580004 	sw	t8,4(v0)
    35bc:	ac4e0000 	sw	t6,0(v0)
    35c0:	8fe202c0 	lw	v0,704(ra)
    35c4:	3c0e141e 	lui	t6,0x141e
    35c8:	35ce2800 	ori	t6,t6,0x2800
    35cc:	244f0008 	addiu	t7,v0,8
    35d0:	afef02c0 	sw	t7,704(ra)
    35d4:	3c19fb00 	lui	t9,0xfb00
    35d8:	ac590000 	sw	t9,0(v0)
    35dc:	ac4e0004 	sw	t6,4(v0)
    35e0:	951801d4 	lhu	t8,468(t0)
    35e4:	54980120 	bnel	a0,t8,3a68 <func_80821C10+0x1048>
    35e8:	950201e4 	lhu	v0,484(t0)
    35ec:	950f023c 	lhu	t7,572(t0)
    35f0:	240103e7 	li	at,999
    35f4:	3c0e0000 	lui	t6,0x0
    35f8:	51e1011b 	beql	t7,at,3a68 <func_80821C10+0x1048>
    35fc:	950201e4 	lhu	v0,484(t0)
    3600:	8dce0000 	lw	t6,0(t6)
    3604:	9519025c 	lhu	t9,604(t0)
    3608:	85d80e46 	lh	t8,3654(t6)
    360c:	0338082a 	slt	at,t9,t8
    3610:	50200115 	beqzl	at,3a68 <func_80821C10+0x1048>
    3614:	950201e4 	lhu	v0,484(t0)
    3618:	950301e4 	lhu	v1,484(t0)
    361c:	24010002 	li	at,2
    3620:	5060000b 	beqzl	v1,3650 <func_80821C10+0xc30>
    3624:	850f0238 	lh	t7,568(t0)
    3628:	10610008 	beq	v1,at,364c <func_80821C10+0xc2c>
    362c:	00601025 	move	v0,v1
    3630:	28410004 	slti	at,v0,4
    3634:	14200002 	bnez	at,3640 <func_80821C10+0xc20>
    3638:	28410008 	slti	at,v0,8
    363c:	14200003 	bnez	at,364c <func_80821C10+0xc2c>
    3640:	24010008 	li	at,8
    3644:	54410108 	bnel	v0,at,3a68 <func_80821C10+0x1048>
    3648:	950201e4 	lhu	v0,484(t0)
    364c:	850f0238 	lh	t7,568(t0)
    3650:	55e00105 	bnezl	t7,3a68 <func_80821C10+0x1048>
    3654:	950201e4 	lhu	v0,484(t0)
    3658:	1060000a 	beqz	v1,3684 <func_80821C10+0xc64>
    365c:	24010002 	li	at,2
    3660:	10610008 	beq	v1,at,3684 <func_80821C10+0xc64>
    3664:	00601025 	move	v0,v1
    3668:	28610004 	slti	at,v1,4
    366c:	14200002 	bnez	at,3678 <func_80821C10+0xc58>
    3670:	28610008 	slti	at,v1,8
    3674:	14200003 	bnez	at,3684 <func_80821C10+0xc64>
    3678:	24010008 	li	at,8
    367c:	5441003d 	bnel	v0,at,3774 <func_80821C10+0xd54>
    3680:	950401e8 	lhu	a0,488(t0)
    3684:	8d190154 	lw	t9,340(t0)
    3688:	240effc1 	li	t6,-63
    368c:	24010001 	li	at,1
    3690:	a72e0120 	sh	t6,288(t9)
    3694:	8d030154 	lw	v1,340(t0)
    3698:	240e1000 	li	t6,4096
    369c:	24060080 	li	a2,128
    36a0:	84780120 	lh	t8,288(v1)
    36a4:	24070010 	li	a3,16
    36a8:	a4780100 	sh	t8,256(v1)
    36ac:	8d030154 	lw	v1,340(t0)
    36b0:	84620100 	lh	v0,256(v1)
    36b4:	24420080 	addiu	v0,v0,128
    36b8:	00021400 	sll	v0,v0,0x10
    36bc:	00021403 	sra	v0,v0,0x10
    36c0:	a4620130 	sh	v0,304(v1)
    36c4:	8d0f0154 	lw	t7,340(t0)
    36c8:	a5e20110 	sh	v0,272(t7)
    36cc:	8d190154 	lw	t9,340(t0)
    36d0:	a72e0138 	sh	t6,312(t9)
    36d4:	8d030154 	lw	v1,340(t0)
    36d8:	3c0e0100 	lui	t6,0x100
    36dc:	35ce4008 	ori	t6,t6,0x4008
    36e0:	84780138 	lh	t8,312(v1)
    36e4:	a4780118 	sh	t8,280(v1)
    36e8:	8fe202c0 	lw	v0,704(ra)
    36ec:	244f0008 	addiu	t7,v0,8
    36f0:	afef02c0 	sw	t7,704(ra)
    36f4:	ac4e0000 	sw	t6,0(v0)
    36f8:	8d190154 	lw	t9,340(t0)
    36fc:	27380100 	addiu	t8,t9,256
    3700:	ac580004 	sw	t8,4(v0)
    3704:	950f025e 	lhu	t7,606(t0)
    3708:	55e1000a 	bnel	t7,at,3734 <func_80821C10+0xd14>
    370c:	8fe202c0 	lw	v0,704(ra)
    3710:	8fe202c0 	lw	v0,704(ra)
    3714:	3c194646 	lui	t9,0x4646
    3718:	373946ff 	ori	t9,t9,0x46ff
    371c:	244e0008 	addiu	t6,v0,8
    3720:	afee02c0 	sw	t6,704(ra)
    3724:	ac590004 	sw	t9,4(v0)
    3728:	10000007 	b	3748 <func_80821C10+0xd28>
    372c:	ac4c0000 	sw	t4,0(v0)
    3730:	8fe202c0 	lw	v0,704(ra)
    3734:	240fffff 	li	t7,-1
    3738:	24580008 	addiu	t8,v0,8
    373c:	aff802c0 	sw	t8,704(ra)
    3740:	ac4f0004 	sw	t7,4(v0)
    3744:	ac4c0000 	sw	t4,0(v0)
    3748:	8fe402c0 	lw	a0,704(ra)
    374c:	8d050138 	lw	a1,312(t0)
    3750:	afbf00f0 	sw	ra,240(sp)
    3754:	afa80038 	sw	t0,56(sp)
    3758:	0c000000 	jal	0 <func_8081F1F0>
    375c:	afa00010 	sw	zero,16(sp)
    3760:	8fbf00f0 	lw	ra,240(sp)
    3764:	8fa80038 	lw	t0,56(sp)
    3768:	3c0cfa00 	lui	t4,0xfa00
    376c:	afe202c0 	sw	v0,704(ra)
    3770:	950401e8 	lhu	a0,488(t0)
    3774:	24010001 	li	at,1
    3778:	3c0e0000 	lui	t6,0x0
    377c:	14810044 	bne	a0,at,3890 <func_80821C10+0xe70>
    3780:	00000000 	nop
    3784:	8dce0000 	lw	t6,0(t6)
    3788:	85d904a2 	lh	t9,1186(t6)
    378c:	13200040 	beqz	t9,3890 <func_80821C10+0xe70>
    3790:	00000000 	nop
    3794:	3c040000 	lui	a0,0x0
    3798:	afbf00f0 	sw	ra,240(sp)
    379c:	24840000 	addiu	a0,a0,0
    37a0:	0c000000 	jal	0 <func_8081F1F0>
    37a4:	afa80038 	sw	t0,56(sp)
    37a8:	3c180000 	lui	t8,0x0
    37ac:	8f180000 	lw	t8,0(t8)
    37b0:	3c0a0000 	lui	t2,0x0
    37b4:	254a0000 	addiu	t2,t2,0
    37b8:	870504a0 	lh	a1,1184(t8)
    37bc:	3c180000 	lui	t8,0x0
    37c0:	3c070000 	lui	a3,0x0
    37c4:	00057883 	sra	t7,a1,0x2
    37c8:	000f7080 	sll	t6,t7,0x2
    37cc:	30a30003 	andi	v1,a1,0x3
    37d0:	00031880 	sll	v1,v1,0x2
    37d4:	014ec821 	addu	t9,t2,t6
    37d8:	0303c021 	addu	t8,t8,v1
    37dc:	8f180000 	lw	t8,0(t8)
    37e0:	8f220e9c 	lw	v0,3740(t9)
    37e4:	3c0e0000 	lui	t6,0x0
    37e8:	01c37021 	addu	t6,t6,v1
    37ec:	8dce0000 	lw	t6,0(t6)
    37f0:	3c040000 	lui	a0,0x0
    37f4:	00e53821 	addu	a3,a3,a1
    37f8:	00587824 	and	t7,v0,t8
    37fc:	90e70000 	lbu	a3,0(a3)
    3800:	24840000 	addiu	a0,a0,0
    3804:	afa20010 	sw	v0,16(sp)
    3808:	0c000000 	jal	0 <func_8081F1F0>
    380c:	01cf3006 	srlv	a2,t7,t6
    3810:	3c040000 	lui	a0,0x0
    3814:	0c000000 	jal	0 <func_8081F1F0>
    3818:	24840000 	addiu	a0,a0,0
    381c:	3c190000 	lui	t9,0x0
    3820:	8f390000 	lw	t9,0(t9)
    3824:	8fa80038 	lw	t0,56(sp)
    3828:	8fbf00f0 	lw	ra,240(sp)
    382c:	a72004a2 	sh	zero,1186(t9)
    3830:	85180220 	lh	t8,544(t0)
    3834:	3c020000 	lui	v0,0x0
    3838:	3c0a0000 	lui	t2,0x0
    383c:	00187840 	sll	t7,t8,0x1
    3840:	004f1021 	addu	v0,v0,t7
    3844:	84420000 	lh	v0,0(v0)
    3848:	254a0000 	addiu	t2,t2,0
    384c:	3c180000 	lui	t8,0x0
    3850:	00027083 	sra	t6,v0,0x2
    3854:	000ec880 	sll	t9,t6,0x2
    3858:	01591821 	addu	v1,t2,t9
    385c:	304f0003 	andi	t7,v0,0x3
    3860:	000f7080 	sll	t6,t7,0x2
    3864:	3c190000 	lui	t9,0x0
    3868:	032ec821 	addu	t9,t9,t6
    386c:	0302c021 	addu	t8,t8,v0
    3870:	93180000 	lbu	t8,0(t8)
    3874:	8f390000 	lw	t9,0(t9)
    3878:	8c6e0e9c 	lw	t6,3740(v1)
    387c:	3c0cfa00 	lui	t4,0xfa00
    3880:	03387804 	sllv	t7,t8,t9
    3884:	01cfc025 	or	t8,t6,t7
    3888:	ac780e9c 	sw	t8,3740(v1)
    388c:	950401e8 	lhu	a0,488(t0)
    3890:	3c0a0000 	lui	t2,0x0
    3894:	24010001 	li	at,1
    3898:	148102a4 	bne	a0,at,432c <func_80821C10+0x190c>
    389c:	254a0000 	addiu	t2,t2,0
    38a0:	3c190000 	lui	t9,0x0
    38a4:	87390000 	lh	t9,0(t9)
    38a8:	572002a1 	bnezl	t9,4330 <func_80821C10+0x1910>
    38ac:	8fae0108 	lw	t6,264(sp)
    38b0:	850e0220 	lh	t6,544(t0)
    38b4:	3c020000 	lui	v0,0x0
    38b8:	000e7840 	sll	t7,t6,0x1
    38bc:	004f1021 	addu	v0,v0,t7
    38c0:	84420000 	lh	v0,0(v0)
    38c4:	0002c083 	sra	t8,v0,0x2
    38c8:	0018c880 	sll	t9,t8,0x2
    38cc:	30430003 	andi	v1,v0,0x3
    38d0:	00031880 	sll	v1,v1,0x2
    38d4:	3c180000 	lui	t8,0x0
    38d8:	0303c021 	addu	t8,t8,v1
    38dc:	01597021 	addu	t6,t2,t9
    38e0:	8dcf0e9c 	lw	t7,3740(t6)
    38e4:	8f180000 	lw	t8,0(t8)
    38e8:	3c0e0000 	lui	t6,0x0
    38ec:	01c37021 	addu	t6,t6,v1
    38f0:	01f8c824 	and	t9,t7,t8
    38f4:	3c180000 	lui	t8,0x0
    38f8:	8dce0000 	lw	t6,0(t6)
    38fc:	0302c021 	addu	t8,t8,v0
    3900:	93180000 	lbu	t8,0(t8)
    3904:	01d97806 	srlv	t7,t9,t6
    3908:	55f80289 	bnel	t7,t8,4330 <func_80821C10+0x1910>
    390c:	8fae0108 	lw	t6,264(sp)
    3910:	8d0e0154 	lw	t6,340(t0)
    3914:	2419ffb6 	li	t9,-74
    3918:	2401ff00 	li	at,-256
    391c:	a5d901a0 	sh	t9,416(t6)
    3920:	8d030154 	lw	v1,340(t0)
    3924:	3c050900 	lui	a1,0x900
    3928:	24a56300 	addiu	a1,a1,25344
    392c:	846f01a0 	lh	t7,416(v1)
    3930:	24060018 	li	a2,24
    3934:	24070018 	li	a3,24
    3938:	a46f0180 	sh	t7,384(v1)
    393c:	8d030154 	lw	v1,340(t0)
    3940:	240f0300 	li	t7,768
    3944:	84620180 	lh	v0,384(v1)
    3948:	24420013 	addiu	v0,v0,19
    394c:	00021400 	sll	v0,v0,0x10
    3950:	00021403 	sra	v0,v0,0x10
    3954:	a46201b0 	sh	v0,432(v1)
    3958:	8d180154 	lw	t8,340(t0)
    395c:	a7020190 	sh	v0,400(t8)
    3960:	8d030154 	lw	v1,340(t0)
    3964:	84620182 	lh	v0,386(v1)
    3968:	2442fffe 	addiu	v0,v0,-2
    396c:	00021400 	sll	v0,v0,0x10
    3970:	00021403 	sra	v0,v0,0x10
    3974:	a4620192 	sh	v0,402(v1)
    3978:	8d190154 	lw	t9,340(t0)
    397c:	a7220182 	sh	v0,386(t9)
    3980:	8d030154 	lw	v1,340(t0)
    3984:	84620182 	lh	v0,386(v1)
    3988:	2442ffed 	addiu	v0,v0,-19
    398c:	00021400 	sll	v0,v0,0x10
    3990:	00021403 	sra	v0,v0,0x10
    3994:	a46201b2 	sh	v0,434(v1)
    3998:	8d0e0154 	lw	t6,340(t0)
    399c:	a5c201a2 	sh	v0,418(t6)
    39a0:	8d180154 	lw	t8,340(t0)
    39a4:	a70f01b8 	sh	t7,440(t8)
    39a8:	8d030154 	lw	v1,340(t0)
    39ac:	3c0fe700 	lui	t7,0xe700
    39b0:	847901b8 	lh	t9,440(v1)
    39b4:	a4790198 	sh	t9,408(v1)
    39b8:	8fe202c0 	lw	v0,704(ra)
    39bc:	3c190100 	lui	t9,0x100
    39c0:	37394008 	ori	t9,t9,0x4008
    39c4:	244e0008 	addiu	t6,v0,8
    39c8:	afee02c0 	sw	t6,704(ra)
    39cc:	ac400004 	sw	zero,4(v0)
    39d0:	ac4f0000 	sw	t7,0(v0)
    39d4:	8fe202c0 	lw	v0,704(ra)
    39d8:	24580008 	addiu	t8,v0,8
    39dc:	aff802c0 	sw	t8,704(ra)
    39e0:	ac590000 	sw	t9,0(v0)
    39e4:	8d0e0154 	lw	t6,340(t0)
    39e8:	3c19fc30 	lui	t9,0xfc30
    39ec:	37399661 	ori	t9,t9,0x9661
    39f0:	25cf0180 	addiu	t7,t6,384
    39f4:	ac4f0004 	sw	t7,4(v0)
    39f8:	8fe202c0 	lw	v0,704(ra)
    39fc:	3c0e552e 	lui	t6,0x552e
    3a00:	35ceff7f 	ori	t6,t6,0xff7f
    3a04:	24580008 	addiu	t8,v0,8
    3a08:	aff802c0 	sw	t8,704(ra)
    3a0c:	ac4e0004 	sw	t6,4(v0)
    3a10:	ac590000 	sw	t9,0(v0)
    3a14:	8fe202c0 	lw	v0,704(ra)
    3a18:	244f0008 	addiu	t7,v0,8
    3a1c:	afef02c0 	sw	t7,704(ra)
    3a20:	ac4c0000 	sw	t4,0(v0)
    3a24:	95180208 	lhu	t8,520(t0)
    3a28:	331900ff 	andi	t9,t8,0xff
    3a2c:	03217025 	or	t6,t9,at
    3a30:	ac4e0004 	sw	t6,4(v0)
    3a34:	8fe202c0 	lw	v0,704(ra)
    3a38:	3c18fb00 	lui	t8,0xfb00
    3a3c:	244f0008 	addiu	t7,v0,8
    3a40:	afef02c0 	sw	t7,704(ra)
    3a44:	ac400004 	sw	zero,4(v0)
    3a48:	ac580000 	sw	t8,0(v0)
    3a4c:	8fb90108 	lw	t9,264(sp)
    3a50:	8f240000 	lw	a0,0(t9)
    3a54:	0c000000 	jal	0 <func_8081F1F0>
    3a58:	afa00010 	sw	zero,16(sp)
    3a5c:	10000234 	b	4330 <func_80821C10+0x1910>
    3a60:	8fae0108 	lw	t6,264(sp)
    3a64:	950201e4 	lhu	v0,484(t0)
    3a68:	28410003 	slti	at,v0,3
    3a6c:	14200005 	bnez	at,3a84 <func_80821C10+0x1064>
    3a70:	24010007 	li	at,7
    3a74:	10410003 	beq	v0,at,3a84 <func_80821C10+0x1064>
    3a78:	24010008 	li	at,8
    3a7c:	5441022c 	bnel	v0,at,4330 <func_80821C10+0x1910>
    3a80:	8fae0108 	lw	t6,264(sp)
    3a84:	8d0e0154 	lw	t6,340(t0)
    3a88:	24010007 	li	at,7
    3a8c:	3c0a0000 	lui	t2,0x0
    3a90:	a5cd0152 	sh	t5,338(t6)
    3a94:	8d030154 	lw	v1,340(t0)
    3a98:	254a0000 	addiu	t2,t2,0
    3a9c:	846f0152 	lh	t7,338(v1)
    3aa0:	a46f0142 	sh	t7,322(v1)
    3aa4:	8d030154 	lw	v1,340(t0)
    3aa8:	84620142 	lh	v0,322(v1)
    3aac:	2442fff0 	addiu	v0,v0,-16
    3ab0:	00021400 	sll	v0,v0,0x10
    3ab4:	00021403 	sra	v0,v0,0x10
    3ab8:	a4620172 	sh	v0,370(v1)
    3abc:	8d180154 	lw	t8,340(t0)
    3ac0:	a7020162 	sh	v0,354(t8)
    3ac4:	8d190154 	lw	t9,340(t0)
    3ac8:	3c180100 	lui	t8,0x100
    3acc:	37188010 	ori	t8,t8,0x8010
    3ad0:	a725017a 	sh	a1,378(t9)
    3ad4:	8d030154 	lw	v1,340(t0)
    3ad8:	846e017a 	lh	t6,378(v1)
    3adc:	a46e016a 	sh	t6,362(v1)
    3ae0:	8fe202c0 	lw	v0,704(ra)
    3ae4:	244f0008 	addiu	t7,v0,8
    3ae8:	afef02c0 	sw	t7,704(ra)
    3aec:	ac580000 	sw	t8,0(v0)
    3af0:	8d190154 	lw	t9,340(t0)
    3af4:	272e0100 	addiu	t6,t9,256
    3af8:	ac4e0004 	sw	t6,4(v0)
    3afc:	950201d4 	lhu	v0,468(t0)
    3b00:	54410065 	bnel	v0,at,3c98 <func_80821C10+0x1278>
    3b04:	85190238 	lh	t9,568(t0)
    3b08:	91581409 	lbu	t8,5129(t2)
    3b0c:	3c0f0000 	lui	t7,0x0
    3b10:	8def0000 	lw	t7,0(t7)
    3b14:	0018c840 	sll	t9,t8,0x1
    3b18:	8d180154 	lw	t8,340(t0)
    3b1c:	01f97021 	addu	t6,t7,t9
    3b20:	85c20e0e 	lh	v0,3598(t6)
    3b24:	3c0e0000 	lui	t6,0x0
    3b28:	3c0b0000 	lui	t3,0x0
    3b2c:	a7020120 	sh	v0,288(t8)
    3b30:	8d0f0154 	lw	t7,340(t0)
    3b34:	256b0000 	addiu	t3,t3,0
    3b38:	3c050000 	lui	a1,0x0
    3b3c:	a5e20100 	sh	v0,256(t7)
    3b40:	8d030154 	lw	v1,340(t0)
    3b44:	84620100 	lh	v0,256(v1)
    3b48:	24420018 	addiu	v0,v0,24
    3b4c:	00021400 	sll	v0,v0,0x10
    3b50:	00021403 	sra	v0,v0,0x10
    3b54:	a4620130 	sh	v0,304(v1)
    3b58:	8d190154 	lw	t9,340(t0)
    3b5c:	a7220110 	sh	v0,272(t9)
    3b60:	91581409 	lbu	t8,5129(t2)
    3b64:	8dce0000 	lw	t6,0(t6)
    3b68:	8d030154 	lw	v1,340(t0)
    3b6c:	00187840 	sll	t7,t8,0x1
    3b70:	01cfc821 	addu	t9,t6,t7
    3b74:	87380dfc 	lh	t8,3580(t9)
    3b78:	846e0100 	lh	t6,256(v1)
    3b7c:	030e1021 	addu	v0,t8,t6
    3b80:	00021400 	sll	v0,v0,0x10
    3b84:	00021403 	sra	v0,v0,0x10
    3b88:	a4620160 	sh	v0,352(v1)
    3b8c:	8d0f0154 	lw	t7,340(t0)
    3b90:	a5e20140 	sh	v0,320(t7)
    3b94:	91591409 	lbu	t9,5129(t2)
    3b98:	8d030154 	lw	v1,340(t0)
    3b9c:	0019c040 	sll	t8,t9,0x1
    3ba0:	01787021 	addu	t6,t3,t8
    3ba4:	95cf0000 	lhu	t7,0(t6)
    3ba8:	84790140 	lh	t9,320(v1)
    3bac:	240e0300 	li	t6,768
    3bb0:	01f91021 	addu	v0,t7,t9
    3bb4:	00021400 	sll	v0,v0,0x10
    3bb8:	00021403 	sra	v0,v0,0x10
    3bbc:	a4620170 	sh	v0,368(v1)
    3bc0:	8d180154 	lw	t8,340(t0)
    3bc4:	a7020150 	sh	v0,336(t8)
    3bc8:	8d0f0154 	lw	t7,340(t0)
    3bcc:	a5ee0138 	sh	t6,312(t7)
    3bd0:	8d030154 	lw	v1,340(t0)
    3bd4:	84790138 	lh	t9,312(v1)
    3bd8:	a4790118 	sh	t9,280(v1)
    3bdc:	91581409 	lbu	t8,5129(t2)
    3be0:	8d190154 	lw	t9,340(t0)
    3be4:	00187040 	sll	t6,t8,0x1
    3be8:	016e7821 	addu	t7,t3,t6
    3bec:	95e20000 	lhu	v0,0(t7)
    3bf0:	3c0f0809 	lui	t7,0x809
    3bf4:	25ef9b48 	addiu	t7,t7,-25784
    3bf8:	00021140 	sll	v0,v0,0x5
    3bfc:	00021400 	sll	v0,v0,0x10
    3c00:	00021403 	sra	v0,v0,0x10
    3c04:	a7220178 	sh	v0,376(t9)
    3c08:	8d180154 	lw	t8,340(t0)
    3c0c:	a7020158 	sh	v0,344(t8)
    3c10:	8fe202c0 	lw	v0,704(ra)
    3c14:	3c18e700 	lui	t8,0xe700
    3c18:	244e0008 	addiu	t6,v0,8
    3c1c:	afee02c0 	sw	t6,704(ra)
    3c20:	ac4f0004 	sw	t7,4(v0)
    3c24:	ac470000 	sw	a3,0(v0)
    3c28:	8fe202c0 	lw	v0,704(ra)
    3c2c:	240fffff 	li	t7,-1
    3c30:	24070010 	li	a3,16
    3c34:	24590008 	addiu	t9,v0,8
    3c38:	aff902c0 	sw	t9,704(ra)
    3c3c:	ac400004 	sw	zero,4(v0)
    3c40:	ac580000 	sw	t8,0(v0)
    3c44:	8fe202c0 	lw	v0,704(ra)
    3c48:	244e0008 	addiu	t6,v0,8
    3c4c:	afee02c0 	sw	t6,704(ra)
    3c50:	ac4f0004 	sw	t7,4(v0)
    3c54:	ac4c0000 	sw	t4,0(v0)
    3c58:	91491409 	lbu	t1,5129(t2)
    3c5c:	8fe402c0 	lw	a0,704(ra)
    3c60:	240f0004 	li	t7,4
    3c64:	0009c040 	sll	t8,t1,0x1
    3c68:	01787021 	addu	t6,t3,t8
    3c6c:	85c60000 	lh	a2,0(t6)
    3c70:	0009c880 	sll	t9,t1,0x2
    3c74:	00b92821 	addu	a1,a1,t9
    3c78:	afbf00f0 	sw	ra,240(sp)
    3c7c:	8ca50000 	lw	a1,0(a1)
    3c80:	0c000000 	jal	0 <func_8081F1F0>
    3c84:	afaf0010 	sw	t7,16(sp)
    3c88:	8fbf00f0 	lw	ra,240(sp)
    3c8c:	100001a7 	b	432c <func_80821C10+0x190c>
    3c90:	afe202c0 	sw	v0,704(ra)
    3c94:	85190238 	lh	t9,568(t0)
    3c98:	53200055 	beqzl	t9,3df0 <func_80821C10+0x13d0>
    3c9c:	950201e8 	lhu	v0,488(t0)
    3ca0:	548201a3 	bnel	a0,v0,4330 <func_80821C10+0x1910>
    3ca4:	8fae0108 	lw	t6,264(sp)
    3ca8:	951801e4 	lhu	t8,484(t0)
    3cac:	570001a0 	bnezl	t8,4330 <func_80821C10+0x1910>
    3cb0:	8fae0108 	lw	t6,264(sp)
    3cb4:	8d0f0154 	lw	t7,340(t0)
    3cb8:	240effc1 	li	t6,-63
    3cbc:	2401000a 	li	at,10
    3cc0:	a5ee0120 	sh	t6,288(t7)
    3cc4:	8d030154 	lw	v1,340(t0)
    3cc8:	240e1000 	li	t6,4096
    3ccc:	3c0a0000 	lui	t2,0x0
    3cd0:	84790120 	lh	t9,288(v1)
    3cd4:	254a0000 	addiu	t2,t2,0
    3cd8:	3c050000 	lui	a1,0x0
    3cdc:	a4790100 	sh	t9,256(v1)
    3ce0:	8d030154 	lw	v1,340(t0)
    3ce4:	24070010 	li	a3,16
    3ce8:	84620100 	lh	v0,256(v1)
    3cec:	24420080 	addiu	v0,v0,128
    3cf0:	00021400 	sll	v0,v0,0x10
    3cf4:	00021403 	sra	v0,v0,0x10
    3cf8:	a4620130 	sh	v0,304(v1)
    3cfc:	8d180154 	lw	t8,340(t0)
    3d00:	a7020110 	sh	v0,272(t8)
    3d04:	8d0f0154 	lw	t7,340(t0)
    3d08:	a5ee0138 	sh	t6,312(t7)
    3d0c:	8d030154 	lw	v1,340(t0)
    3d10:	3c0fffc8 	lui	t7,0xffc8
    3d14:	35ef00ff 	ori	t7,t7,0xff
    3d18:	84790138 	lh	t9,312(v1)
    3d1c:	a4790118 	sh	t9,280(v1)
    3d20:	8fe202c0 	lw	v0,704(ra)
    3d24:	24580008 	addiu	t8,v0,8
    3d28:	aff802c0 	sw	t8,704(ra)
    3d2c:	ac400004 	sw	zero,4(v0)
    3d30:	ac460000 	sw	a2,0(v0)
    3d34:	8fe202c0 	lw	v0,704(ra)
    3d38:	24060080 	li	a2,128
    3d3c:	244e0008 	addiu	t6,v0,8
    3d40:	afee02c0 	sw	t6,704(ra)
    3d44:	ac4f0004 	sw	t7,4(v0)
    3d48:	ac4c0000 	sw	t4,0(v0)
    3d4c:	85190238 	lh	t9,568(t0)
    3d50:	57210017 	bnel	t9,at,3db0 <func_80821C10+0x1390>
    3d54:	950f01e8 	lhu	t7,488(t0)
    3d58:	951801e8 	lhu	t8,488(t0)
    3d5c:	3c0a0000 	lui	t2,0x0
    3d60:	254a0000 	addiu	t2,t2,0
    3d64:	914f1409 	lbu	t7,5129(t2)
    3d68:	00187080 	sll	t6,t8,0x2
    3d6c:	01d87023 	subu	t6,t6,t8
    3d70:	000e7080 	sll	t6,t6,0x2
    3d74:	000fc880 	sll	t9,t7,0x2
    3d78:	01d9c021 	addu	t8,t6,t9
    3d7c:	8fe402c0 	lw	a0,704(ra)
    3d80:	3c050000 	lui	a1,0x0
    3d84:	00b82821 	addu	a1,a1,t8
    3d88:	afbf00f0 	sw	ra,240(sp)
    3d8c:	8ca50000 	lw	a1,0(a1)
    3d90:	afa00010 	sw	zero,16(sp)
    3d94:	24060080 	li	a2,128
    3d98:	0c000000 	jal	0 <func_8081F1F0>
    3d9c:	24070010 	li	a3,16
    3da0:	8fbf00f0 	lw	ra,240(sp)
    3da4:	10000161 	b	432c <func_80821C10+0x190c>
    3da8:	afe202c0 	sw	v0,704(ra)
    3dac:	950f01e8 	lhu	t7,488(t0)
    3db0:	91591409 	lbu	t9,5129(t2)
    3db4:	8fe402c0 	lw	a0,704(ra)
    3db8:	000f7080 	sll	t6,t7,0x2
    3dbc:	01cf7023 	subu	t6,t6,t7
    3dc0:	000e7080 	sll	t6,t6,0x2
    3dc4:	0019c080 	sll	t8,t9,0x2
    3dc8:	01d87821 	addu	t7,t6,t8
    3dcc:	00af2821 	addu	a1,a1,t7
    3dd0:	afbf00f0 	sw	ra,240(sp)
    3dd4:	8ca50000 	lw	a1,0(a1)
    3dd8:	0c000000 	jal	0 <func_8081F1F0>
    3ddc:	afa00010 	sw	zero,16(sp)
    3de0:	8fbf00f0 	lw	ra,240(sp)
    3de4:	10000151 	b	432c <func_80821C10+0x190c>
    3de8:	afe202c0 	sw	v0,704(ra)
    3dec:	950201e8 	lhu	v0,488(t0)
    3df0:	3c0a0000 	lui	t2,0x0
    3df4:	254a0000 	addiu	t2,t2,0
    3df8:	14400064 	bnez	v0,3f8c <func_80821C10+0x156c>
    3dfc:	24010001 	li	at,1
    3e00:	914e1409 	lbu	t6,5129(t2)
    3e04:	3c190000 	lui	t9,0x0
    3e08:	8f390000 	lw	t9,0(t9)
    3e0c:	000ec040 	sll	t8,t6,0x1
    3e10:	8d0e0154 	lw	t6,340(t0)
    3e14:	03387821 	addu	t7,t9,t8
    3e18:	85e20df6 	lh	v0,3574(t7)
    3e1c:	3c0f0000 	lui	t7,0x0
    3e20:	3c0b0000 	lui	t3,0x0
    3e24:	a5c20120 	sh	v0,288(t6)
    3e28:	8d190154 	lw	t9,340(t0)
    3e2c:	256b0000 	addiu	t3,t3,0
    3e30:	3c050000 	lui	a1,0x0
    3e34:	a7220100 	sh	v0,256(t9)
    3e38:	8d030154 	lw	v1,340(t0)
    3e3c:	84620100 	lh	v0,256(v1)
    3e40:	24420030 	addiu	v0,v0,48
    3e44:	00021400 	sll	v0,v0,0x10
    3e48:	00021403 	sra	v0,v0,0x10
    3e4c:	a4620130 	sh	v0,304(v1)
    3e50:	8d180154 	lw	t8,340(t0)
    3e54:	a7020110 	sh	v0,272(t8)
    3e58:	914e1409 	lbu	t6,5129(t2)
    3e5c:	8def0000 	lw	t7,0(t7)
    3e60:	8d030154 	lw	v1,340(t0)
    3e64:	000ec840 	sll	t9,t6,0x1
    3e68:	01f9c021 	addu	t8,t7,t9
    3e6c:	870e0e08 	lh	t6,3592(t8)
    3e70:	846f0100 	lh	t7,256(v1)
    3e74:	01cf1021 	addu	v0,t6,t7
    3e78:	00021400 	sll	v0,v0,0x10
    3e7c:	00021403 	sra	v0,v0,0x10
    3e80:	a4620160 	sh	v0,352(v1)
    3e84:	8d190154 	lw	t9,340(t0)
    3e88:	a7220140 	sh	v0,320(t9)
    3e8c:	91581409 	lbu	t8,5129(t2)
    3e90:	8d030154 	lw	v1,340(t0)
    3e94:	00187040 	sll	t6,t8,0x1
    3e98:	016e7821 	addu	t7,t3,t6
    3e9c:	95f90000 	lhu	t9,0(t7)
    3ea0:	84780140 	lh	t8,320(v1)
    3ea4:	240f0600 	li	t7,1536
    3ea8:	03381021 	addu	v0,t9,t8
    3eac:	00021400 	sll	v0,v0,0x10
    3eb0:	00021403 	sra	v0,v0,0x10
    3eb4:	a4620170 	sh	v0,368(v1)
    3eb8:	8d0e0154 	lw	t6,340(t0)
    3ebc:	a5c20150 	sh	v0,336(t6)
    3ec0:	8d190154 	lw	t9,340(t0)
    3ec4:	a72f0138 	sh	t7,312(t9)
    3ec8:	8d030154 	lw	v1,340(t0)
    3ecc:	84780138 	lh	t8,312(v1)
    3ed0:	a4780118 	sh	t8,280(v1)
    3ed4:	914e1409 	lbu	t6,5129(t2)
    3ed8:	8d180154 	lw	t8,340(t0)
    3edc:	000e7840 	sll	t7,t6,0x1
    3ee0:	016fc821 	addu	t9,t3,t7
    3ee4:	97220000 	lhu	v0,0(t9)
    3ee8:	3c190809 	lui	t9,0x809
    3eec:	27399af0 	addiu	t9,t9,-25872
    3ef0:	00021140 	sll	v0,v0,0x5
    3ef4:	00021400 	sll	v0,v0,0x10
    3ef8:	00021403 	sra	v0,v0,0x10
    3efc:	a7020178 	sh	v0,376(t8)
    3f00:	8d0e0154 	lw	t6,340(t0)
    3f04:	a5c20158 	sh	v0,344(t6)
    3f08:	8fe202c0 	lw	v0,704(ra)
    3f0c:	3c0ee700 	lui	t6,0xe700
    3f10:	244f0008 	addiu	t7,v0,8
    3f14:	afef02c0 	sw	t7,704(ra)
    3f18:	ac590004 	sw	t9,4(v0)
    3f1c:	ac470000 	sw	a3,0(v0)
    3f20:	8fe202c0 	lw	v0,704(ra)
    3f24:	2419ffff 	li	t9,-1
    3f28:	24070010 	li	a3,16
    3f2c:	24580008 	addiu	t8,v0,8
    3f30:	aff802c0 	sw	t8,704(ra)
    3f34:	ac400004 	sw	zero,4(v0)
    3f38:	ac4e0000 	sw	t6,0(v0)
    3f3c:	8fe202c0 	lw	v0,704(ra)
    3f40:	244f0008 	addiu	t7,v0,8
    3f44:	afef02c0 	sw	t7,704(ra)
    3f48:	ac590004 	sw	t9,4(v0)
    3f4c:	ac4c0000 	sw	t4,0(v0)
    3f50:	91491409 	lbu	t1,5129(t2)
    3f54:	8fe402c0 	lw	a0,704(ra)
    3f58:	24190004 	li	t9,4
    3f5c:	00097040 	sll	t6,t1,0x1
    3f60:	016e7821 	addu	t7,t3,t6
    3f64:	85e60000 	lh	a2,0(t7)
    3f68:	0009c080 	sll	t8,t1,0x2
    3f6c:	00b82821 	addu	a1,a1,t8
    3f70:	afbf00f0 	sw	ra,240(sp)
    3f74:	8ca50000 	lw	a1,0(a1)
    3f78:	0c000000 	jal	0 <func_8081F1F0>
    3f7c:	afb90010 	sw	t9,16(sp)
    3f80:	8fbf00f0 	lw	ra,240(sp)
    3f84:	100000e9 	b	432c <func_80821C10+0x190c>
    3f88:	afe202c0 	sw	v0,704(ra)
    3f8c:	14410004 	bne	v0,at,3fa0 <func_80821C10+0x1580>
    3f90:	00402025 	move	a0,v0
    3f94:	3c180000 	lui	t8,0x0
    3f98:	87180000 	lh	t8,0(t8)
    3f9c:	170000e3 	bnez	t8,432c <func_80821C10+0x190c>
    3fa0:	24010002 	li	at,2
    3fa4:	5481007c 	bnel	a0,at,4198 <func_80821C10+0x1778>
    3fa8:	24010003 	li	at,3
    3fac:	9502024a 	lhu	v0,586(t0)
    3fb0:	28410006 	slti	at,v0,6
    3fb4:	14200077 	bnez	at,4194 <func_80821C10+0x1774>
    3fb8:	28410012 	slti	at,v0,18
    3fbc:	50200076 	beqzl	at,4198 <func_80821C10+0x1778>
    3fc0:	24010003 	li	at,3
    3fc4:	950e023c 	lhu	t6,572(t0)
    3fc8:	240103e7 	li	at,999
    3fcc:	3c0a0000 	lui	t2,0x0
    3fd0:	11c100d6 	beq	t6,at,432c <func_80821C10+0x190c>
    3fd4:	254a0000 	addiu	t2,t2,0
    3fd8:	91591409 	lbu	t9,5129(t2)
    3fdc:	3c0f0000 	lui	t7,0x0
    3fe0:	8def0000 	lw	t7,0(t7)
    3fe4:	0019c040 	sll	t8,t9,0x1
    3fe8:	8d190154 	lw	t9,340(t0)
    3fec:	01f87021 	addu	t6,t7,t8
    3ff0:	85c20e02 	lh	v0,3586(t6)
    3ff4:	3c0e0000 	lui	t6,0x0
    3ff8:	24010001 	li	at,1
    3ffc:	a7220120 	sh	v0,288(t9)
    4000:	8d0f0154 	lw	t7,340(t0)
    4004:	3c0b0000 	lui	t3,0x0
    4008:	256b0000 	addiu	t3,t3,0
    400c:	a5e20100 	sh	v0,256(t7)
    4010:	8d030154 	lw	v1,340(t0)
    4014:	84620100 	lh	v0,256(v1)
    4018:	24420018 	addiu	v0,v0,24
    401c:	00021400 	sll	v0,v0,0x10
    4020:	00021403 	sra	v0,v0,0x10
    4024:	a4620130 	sh	v0,304(v1)
    4028:	8d180154 	lw	t8,340(t0)
    402c:	a7020110 	sh	v0,272(t8)
    4030:	91591409 	lbu	t9,5129(t2)
    4034:	8dce0000 	lw	t6,0(t6)
    4038:	8d030154 	lw	v1,340(t0)
    403c:	00197840 	sll	t7,t9,0x1
    4040:	01cfc021 	addu	t8,t6,t7
    4044:	87190dfc 	lh	t9,3580(t8)
    4048:	846e0100 	lh	t6,256(v1)
    404c:	032e1021 	addu	v0,t9,t6
    4050:	00021400 	sll	v0,v0,0x10
    4054:	00021403 	sra	v0,v0,0x10
    4058:	a4620160 	sh	v0,352(v1)
    405c:	8d0f0154 	lw	t7,340(t0)
    4060:	a5e20140 	sh	v0,320(t7)
    4064:	91491409 	lbu	t1,5129(t2)
    4068:	5521000b 	bnel	t1,at,4098 <func_80821C10+0x1678>
    406c:	8d030154 	lw	v1,340(t0)
    4070:	8d030154 	lw	v1,340(t0)
    4074:	84620100 	lh	v0,256(v1)
    4078:	2442ff9d 	addiu	v0,v0,-99
    407c:	00021400 	sll	v0,v0,0x10
    4080:	00021403 	sra	v0,v0,0x10
    4084:	a4620160 	sh	v0,352(v1)
    4088:	8d180154 	lw	t8,340(t0)
    408c:	a7020140 	sh	v0,320(t8)
    4090:	91491409 	lbu	t1,5129(t2)
    4094:	8d030154 	lw	v1,340(t0)
    4098:	0009c840 	sll	t9,t1,0x1
    409c:	01797021 	addu	t6,t3,t9
    40a0:	95cf0000 	lhu	t7,0(t6)
    40a4:	84780140 	lh	t8,320(v1)
    40a8:	240e0300 	li	t6,768
    40ac:	3c050000 	lui	a1,0x0
    40b0:	01f81021 	addu	v0,t7,t8
    40b4:	00021400 	sll	v0,v0,0x10
    40b8:	00021403 	sra	v0,v0,0x10
    40bc:	a4620170 	sh	v0,368(v1)
    40c0:	8d190154 	lw	t9,340(t0)
    40c4:	a7220150 	sh	v0,336(t9)
    40c8:	8d0f0154 	lw	t7,340(t0)
    40cc:	a5ee0138 	sh	t6,312(t7)
    40d0:	8d030154 	lw	v1,340(t0)
    40d4:	84780138 	lh	t8,312(v1)
    40d8:	a4780118 	sh	t8,280(v1)
    40dc:	91591409 	lbu	t9,5129(t2)
    40e0:	8d180154 	lw	t8,340(t0)
    40e4:	00197040 	sll	t6,t9,0x1
    40e8:	016e7821 	addu	t7,t3,t6
    40ec:	95e20000 	lhu	v0,0(t7)
    40f0:	3c0f0809 	lui	t7,0x809
    40f4:	25ef9b48 	addiu	t7,t7,-25784
    40f8:	00021140 	sll	v0,v0,0x5
    40fc:	00021400 	sll	v0,v0,0x10
    4100:	00021403 	sra	v0,v0,0x10
    4104:	a7020178 	sh	v0,376(t8)
    4108:	8d190154 	lw	t9,340(t0)
    410c:	a7220158 	sh	v0,344(t9)
    4110:	8fe202c0 	lw	v0,704(ra)
    4114:	3c19e700 	lui	t9,0xe700
    4118:	244e0008 	addiu	t6,v0,8
    411c:	afee02c0 	sw	t6,704(ra)
    4120:	ac4f0004 	sw	t7,4(v0)
    4124:	ac470000 	sw	a3,0(v0)
    4128:	8fe202c0 	lw	v0,704(ra)
    412c:	240fffff 	li	t7,-1
    4130:	24070010 	li	a3,16
    4134:	24580008 	addiu	t8,v0,8
    4138:	aff802c0 	sw	t8,704(ra)
    413c:	ac400004 	sw	zero,4(v0)
    4140:	ac590000 	sw	t9,0(v0)
    4144:	8fe202c0 	lw	v0,704(ra)
    4148:	244e0008 	addiu	t6,v0,8
    414c:	afee02c0 	sw	t6,704(ra)
    4150:	ac4f0004 	sw	t7,4(v0)
    4154:	ac4c0000 	sw	t4,0(v0)
    4158:	91491409 	lbu	t1,5129(t2)
    415c:	8fe402c0 	lw	a0,704(ra)
    4160:	240f0004 	li	t7,4
    4164:	0009c840 	sll	t9,t1,0x1
    4168:	01797021 	addu	t6,t3,t9
    416c:	85c60000 	lh	a2,0(t6)
    4170:	0009c080 	sll	t8,t1,0x2
    4174:	00b82821 	addu	a1,a1,t8
    4178:	afbf00f0 	sw	ra,240(sp)
    417c:	8ca50000 	lw	a1,0(a1)
    4180:	0c000000 	jal	0 <func_8081F1F0>
    4184:	afaf0010 	sw	t7,16(sp)
    4188:	8fbf00f0 	lw	ra,240(sp)
    418c:	10000067 	b	432c <func_80821C10+0x190c>
    4190:	afe202c0 	sw	v0,704(ra)
    4194:	24010003 	li	at,3
    4198:	14810064 	bne	a0,at,432c <func_80821C10+0x190c>
    419c:	3c0a0000 	lui	t2,0x0
    41a0:	254a0000 	addiu	t2,t2,0
    41a4:	91591409 	lbu	t9,5129(t2)
    41a8:	3c180000 	lui	t8,0x0
    41ac:	8f180000 	lw	t8,0(t8)
    41b0:	00197040 	sll	t6,t9,0x1
    41b4:	8d190154 	lw	t9,340(t0)
    41b8:	030e7821 	addu	t7,t8,t6
    41bc:	85e20e14 	lh	v0,3604(t7)
    41c0:	3c0f0000 	lui	t7,0x0
    41c4:	3c0b0000 	lui	t3,0x0
    41c8:	a7220120 	sh	v0,288(t9)
    41cc:	8d180154 	lw	t8,340(t0)
    41d0:	256b0000 	addiu	t3,t3,0
    41d4:	3c050000 	lui	a1,0x0
    41d8:	a7020100 	sh	v0,256(t8)
    41dc:	8d030154 	lw	v1,340(t0)
    41e0:	84620100 	lh	v0,256(v1)
    41e4:	24420018 	addiu	v0,v0,24
    41e8:	00021400 	sll	v0,v0,0x10
    41ec:	00021403 	sra	v0,v0,0x10
    41f0:	a4620130 	sh	v0,304(v1)
    41f4:	8d0e0154 	lw	t6,340(t0)
    41f8:	a5c20110 	sh	v0,272(t6)
    41fc:	91591409 	lbu	t9,5129(t2)
    4200:	8def0000 	lw	t7,0(t7)
    4204:	8d030154 	lw	v1,340(t0)
    4208:	0019c040 	sll	t8,t9,0x1
    420c:	01f87021 	addu	t6,t7,t8
    4210:	85d90dfc 	lh	t9,3580(t6)
    4214:	846f0100 	lh	t7,256(v1)
    4218:	032f1021 	addu	v0,t9,t7
    421c:	00021400 	sll	v0,v0,0x10
    4220:	00021403 	sra	v0,v0,0x10
    4224:	a4620160 	sh	v0,352(v1)
    4228:	8d180154 	lw	t8,340(t0)
    422c:	a7020140 	sh	v0,320(t8)
    4230:	914e1409 	lbu	t6,5129(t2)
    4234:	8d030154 	lw	v1,340(t0)
    4238:	000ec840 	sll	t9,t6,0x1
    423c:	01797821 	addu	t7,t3,t9
    4240:	95f80000 	lhu	t8,0(t7)
    4244:	846e0140 	lh	t6,320(v1)
    4248:	240f0300 	li	t7,768
    424c:	030e1021 	addu	v0,t8,t6
    4250:	00021400 	sll	v0,v0,0x10
    4254:	00021403 	sra	v0,v0,0x10
    4258:	a4620170 	sh	v0,368(v1)
    425c:	8d190154 	lw	t9,340(t0)
    4260:	a7220150 	sh	v0,336(t9)
    4264:	8d180154 	lw	t8,340(t0)
    4268:	a70f0138 	sh	t7,312(t8)
    426c:	8d030154 	lw	v1,340(t0)
    4270:	846e0138 	lh	t6,312(v1)
    4274:	a46e0118 	sh	t6,280(v1)
    4278:	91591409 	lbu	t9,5129(t2)
    427c:	8d0e0154 	lw	t6,340(t0)
    4280:	00197840 	sll	t7,t9,0x1
    4284:	016fc021 	addu	t8,t3,t7
    4288:	97020000 	lhu	v0,0(t8)
    428c:	3c180809 	lui	t8,0x809
    4290:	27189b48 	addiu	t8,t8,-25784
    4294:	00021140 	sll	v0,v0,0x5
    4298:	00021400 	sll	v0,v0,0x10
    429c:	00021403 	sra	v0,v0,0x10
    42a0:	a5c20178 	sh	v0,376(t6)
    42a4:	8d190154 	lw	t9,340(t0)
    42a8:	a7220158 	sh	v0,344(t9)
    42ac:	8fe202c0 	lw	v0,704(ra)
    42b0:	3c19e700 	lui	t9,0xe700
    42b4:	244f0008 	addiu	t7,v0,8
    42b8:	afef02c0 	sw	t7,704(ra)
    42bc:	ac580004 	sw	t8,4(v0)
    42c0:	ac470000 	sw	a3,0(v0)
    42c4:	8fe202c0 	lw	v0,704(ra)
    42c8:	2418ffff 	li	t8,-1
    42cc:	24070010 	li	a3,16
    42d0:	244e0008 	addiu	t6,v0,8
    42d4:	afee02c0 	sw	t6,704(ra)
    42d8:	ac400004 	sw	zero,4(v0)
    42dc:	ac590000 	sw	t9,0(v0)
    42e0:	8fe202c0 	lw	v0,704(ra)
    42e4:	244f0008 	addiu	t7,v0,8
    42e8:	afef02c0 	sw	t7,704(ra)
    42ec:	ac580004 	sw	t8,4(v0)
    42f0:	ac4c0000 	sw	t4,0(v0)
    42f4:	91491409 	lbu	t1,5129(t2)
    42f8:	8fe402c0 	lw	a0,704(ra)
    42fc:	24180004 	li	t8,4
    4300:	0009c840 	sll	t9,t1,0x1
    4304:	01797821 	addu	t7,t3,t9
    4308:	85e60000 	lh	a2,0(t7)
    430c:	00097080 	sll	t6,t1,0x2
    4310:	00ae2821 	addu	a1,a1,t6
    4314:	afbf00f0 	sw	ra,240(sp)
    4318:	8ca50000 	lw	a1,0(a1)
    431c:	0c000000 	jal	0 <func_8081F1F0>
    4320:	afb80010 	sw	t8,16(sp)
    4324:	8fbf00f0 	lw	ra,240(sp)
    4328:	afe202c0 	sw	v0,704(ra)
    432c:	8fae0108 	lw	t6,264(sp)
    4330:	3c060000 	lui	a2,0x0
    4334:	24c60000 	addiu	a2,a2,0
    4338:	27a400e0 	addiu	a0,sp,224
    433c:	240707f0 	li	a3,2032
    4340:	0c000000 	jal	0 <func_8081F1F0>
    4344:	8dc50000 	lw	a1,0(t6)
    4348:	8fbf001c 	lw	ra,28(sp)
    434c:	27bd0108 	addiu	sp,sp,264
    4350:	03e00008 	jr	ra
    4354:	00000000 	nop

00004358 <func_80823548>:
    4358:	27bdffd0 	addiu	sp,sp,-48
    435c:	3c030001 	lui	v1,0x1
    4360:	afbf001c 	sw	ra,28(sp)
    4364:	00831021 	addu	v0,a0,v1
    4368:	944f0948 	lhu	t7,2376(v0)
    436c:	944e099c 	lhu	t6,2460(v0)
    4370:	3c010001 	lui	at,0x1
    4374:	000fc040 	sll	t8,t7,0x1
    4378:	0098c821 	addu	t9,a0,t8
    437c:	03234021 	addu	t0,t9,v1
    4380:	9509099e 	lhu	t1,2462(t0)
    4384:	34210760 	ori	at,at,0x760
    4388:	00803825 	move	a3,a0
    438c:	15c90007 	bne	t6,t1,43ac <func_80823548+0x54>
    4390:	00811021 	addu	v0,a0,at
    4394:	944401e8 	lhu	a0,488(v0)
    4398:	24010001 	li	at,1
    439c:	5481005c 	bnel	a0,at,4510 <func_80823548+0x1b8>
    43a0:	944f025e 	lhu	t7,606(v0)
    43a4:	844a0238 	lh	t2,568(v0)
    43a8:	11400058 	beqz	t2,450c <func_80823548+0x1b4>
    43ac:	3c010001 	lui	at,0x1
    43b0:	34210760 	ori	at,at,0x760
    43b4:	00e11021 	addu	v0,a3,at
    43b8:	944b01e8 	lhu	t3,488(v0)
    43bc:	244401b8 	addiu	a0,v0,440
    43c0:	244501d0 	addiu	a1,v0,464
    43c4:	000b6040 	sll	t4,t3,0x1
    43c8:	004c6821 	addu	t5,v0,t4
    43cc:	95a3023e 	lhu	v1,574(t5)
    43d0:	24060001 	li	a2,1
    43d4:	a443023c 	sh	v1,572(v0)
    43d8:	afa20024 	sw	v0,36(sp)
    43dc:	0c000000 	jal	0 <func_8081F1F0>
    43e0:	a7a3002a 	sh	v1,42(sp)
    43e4:	8fa20024 	lw	v0,36(sp)
    43e8:	240103e7 	li	at,999
    43ec:	97a3002a 	lhu	v1,42(sp)
    43f0:	9445023c 	lhu	a1,572(v0)
    43f4:	50a10070 	beql	a1,at,45b8 <func_80823548+0x260>
    43f8:	8fbf001c 	lw	ra,28(sp)
    43fc:	945801e8 	lhu	t8,488(v0)
    4400:	24010001 	li	at,1
    4404:	3c190000 	lui	t9,0x0
    4408:	1701001a 	bne	t8,at,4474 <func_80823548+0x11c>
    440c:	3c040000 	lui	a0,0x0
    4410:	87390000 	lh	t9,0(t9)
    4414:	3c0e0000 	lui	t6,0x0
    4418:	24010002 	li	at,2
    441c:	17200015 	bnez	t9,4474 <func_80823548+0x11c>
    4420:	25ce0000 	addiu	t6,t6,0
    4424:	3c040000 	lui	a0,0x0
    4428:	90841409 	lbu	a0,5129(a0)
    442c:	3c070000 	lui	a3,0x0
    4430:	24e70000 	addiu	a3,a3,0
    4434:	10800003 	beqz	a0,4444 <func_80823548+0xec>
    4438:	24060400 	li	a2,1024
    443c:	2463000c 	addiu	v1,v1,12
    4440:	3063ffff 	andi	v1,v1,0xffff
    4444:	14810003 	bne	a0,at,4454 <func_80823548+0xfc>
    4448:	2409082d 	li	t1,2093
    444c:	2463000c 	addiu	v1,v1,12
    4450:	3063ffff 	andi	v1,v1,0xffff
    4454:	8c440138 	lw	a0,312(v0)
    4458:	00034280 	sll	t0,v1,0xa
    445c:	010e2821 	addu	a1,t0,t6
    4460:	afa20024 	sw	v0,36(sp)
    4464:	0c000000 	jal	0 <func_8081F1F0>
    4468:	afa90010 	sw	t1,16(sp)
    446c:	10000025 	b	4504 <func_80823548+0x1ac>
    4470:	8fa20024 	lw	v0,36(sp)
    4474:	24840000 	addiu	a0,a0,0
    4478:	afa20024 	sw	v0,36(sp)
    447c:	0c000000 	jal	0 <func_8081F1F0>
    4480:	a7a3002a 	sh	v1,42(sp)
    4484:	3c040000 	lui	a0,0x0
    4488:	90841409 	lbu	a0,5129(a0)
    448c:	8fa20024 	lw	v0,36(sp)
    4490:	97a3002a 	lhu	v1,42(sp)
    4494:	10800003 	beqz	a0,44a4 <func_80823548+0x14c>
    4498:	24010002 	li	at,2
    449c:	2463007b 	addiu	v1,v1,123
    44a0:	3063ffff 	andi	v1,v1,0xffff
    44a4:	14810003 	bne	a0,at,44b4 <func_80823548+0x15c>
    44a8:	00802825 	move	a1,a0
    44ac:	2463007b 	addiu	v1,v1,123
    44b0:	3063ffff 	andi	v1,v1,0xffff
    44b4:	3c040000 	lui	a0,0x0
    44b8:	24840000 	addiu	a0,a0,0
    44bc:	00603025 	move	a2,v1
    44c0:	afa20024 	sw	v0,36(sp)
    44c4:	0c000000 	jal	0 <func_8081F1F0>
    44c8:	afa30020 	sw	v1,32(sp)
    44cc:	8fa20024 	lw	v0,36(sp)
    44d0:	8faa0020 	lw	t2,32(sp)
    44d4:	3c0c0000 	lui	t4,0x0
    44d8:	258c0000 	addiu	t4,t4,0
    44dc:	3c070000 	lui	a3,0x0
    44e0:	240d0848 	li	t5,2120
    44e4:	8c440138 	lw	a0,312(v0)
    44e8:	000a5a80 	sll	t3,t2,0xa
    44ec:	016c2821 	addu	a1,t3,t4
    44f0:	afad0010 	sw	t5,16(sp)
    44f4:	24e70000 	addiu	a3,a3,0
    44f8:	0c000000 	jal	0 <func_8081F1F0>
    44fc:	24060400 	li	a2,1024
    4500:	8fa20024 	lw	v0,36(sp)
    4504:	1000002b 	b	45b4 <func_80823548+0x25c>
    4508:	a440025c 	sh	zero,604(v0)
    450c:	944f025e 	lhu	t7,606(v0)
    4510:	24010002 	li	at,2
    4514:	55e00027 	bnezl	t7,45b4 <func_80823548+0x25c>
    4518:	a440025c 	sh	zero,604(v0)
    451c:	1481000b 	bne	a0,at,454c <func_80823548+0x1f4>
    4520:	00000000 	nop
    4524:	9443024a 	lhu	v1,586(v0)
    4528:	28610006 	slti	at,v1,6
    452c:	14200007 	bnez	at,454c <func_80823548+0x1f4>
    4530:	28610012 	slti	at,v1,18
    4534:	10200005 	beqz	at,454c <func_80823548+0x1f4>
    4538:	00000000 	nop
    453c:	945801e4 	lhu	t8,484(v0)
    4540:	24010008 	li	at,8
    4544:	53010009 	beql	t8,at,456c <func_80823548+0x214>
    4548:	9448023c 	lhu	t0,572(v0)
    454c:	10800006 	beqz	a0,4568 <func_80823548+0x210>
    4550:	24010003 	li	at,3
    4554:	14810014 	bne	a0,at,45a8 <func_80823548+0x250>
    4558:	00000000 	nop
    455c:	84590228 	lh	t9,552(v0)
    4560:	13200011 	beqz	t9,45a8 <func_80823548+0x250>
    4564:	00000000 	nop
    4568:	9448023c 	lhu	t0,572(v0)
    456c:	2401002c 	li	at,44
    4570:	51010011 	beql	t0,at,45b8 <func_80823548+0x260>
    4574:	8fbf001c 	lw	ra,28(sp)
    4578:	944e025c 	lhu	t6,604(v0)
    457c:	3c0a0000 	lui	t2,0x0
    4580:	25c90001 	addiu	t1,t6,1
    4584:	a449025c 	sh	t1,604(v0)
    4588:	8d4a0000 	lw	t2,0(t2)
    458c:	312cffff 	andi	t4,t1,0xffff
    4590:	854b0e44 	lh	t3,3652(t2)
    4594:	016c082a 	slt	at,t3,t4
    4598:	50200007 	beqzl	at,45b8 <func_80823548+0x260>
    459c:	8fbf001c 	lw	ra,28(sp)
    45a0:	10000004 	b	45b4 <func_80823548+0x25c>
    45a4:	a440025c 	sh	zero,604(v0)
    45a8:	10000002 	b	45b4 <func_80823548+0x25c>
    45ac:	a440025c 	sh	zero,604(v0)
    45b0:	a440025c 	sh	zero,604(v0)
    45b4:	8fbf001c 	lw	ra,28(sp)
    45b8:	27bd0030 	addiu	sp,sp,48
    45bc:	03e00008 	jr	ra
    45c0:	00000000 	nop

000045c4 <func_808237B4>:
    45c4:	3c060000 	lui	a2,0x0
    45c8:	24c60000 	addiu	a2,a2,0
    45cc:	8cce0000 	lw	t6,0(a2)
    45d0:	00001025 	move	v0,zero
    45d4:	85cf07ae 	lh	t7,1966(t6)
    45d8:	11e00007 	beqz	t7,45f8 <func_808237B4+0x34>
    45dc:	00000000 	nop
    45e0:	94b8000c 	lhu	t8,12(a1)
    45e4:	2401ffdf 	li	at,-33
    45e8:	0301c827 	nor	t9,t8,at
    45ec:	13200002 	beqz	t9,45f8 <func_808237B4+0x34>
    45f0:	00000000 	nop
    45f4:	24020001 	li	v0,1
    45f8:	14400068 	bnez	v0,479c <func_808237B4+0x1d8>
    45fc:	3c010001 	lui	at,0x1
    4600:	34210760 	ori	at,at,0x760
    4604:	00811021 	addu	v0,a0,at
    4608:	944301e6 	lhu	v1,486(v0)
    460c:	3c010000 	lui	at,0x0
    4610:	c44401d8 	lwc1	$f4,472(v0)
    4614:	00032880 	sll	a1,v1,0x2
    4618:	00250821 	addu	at,at,a1
    461c:	c4260000 	lwc1	$f6,0(at)
    4620:	3c010000 	lui	at,0x0
    4624:	00250821 	addu	at,at,a1
    4628:	46062200 	add.s	$f8,$f4,$f6
    462c:	c44a01e0 	lwc1	$f10,480(v0)
    4630:	944801ea 	lhu	t0,490(v0)
    4634:	e44801d8 	swc1	$f8,472(v0)
    4638:	c4300000 	lwc1	$f16,0(at)
    463c:	29010020 	slti	at,t0,32
    4640:	46105480 	add.s	$f18,$f10,$f16
    4644:	10200025 	beqz	at,46dc <func_808237B4+0x118>
    4648:	e45201e0 	swc1	$f18,480(v0)
    464c:	8cc30000 	lw	v1,0(a2)
    4650:	84690dc6 	lh	t1,3526(v1)
    4654:	846a0da0 	lh	t2,3488(v1)
    4658:	846c0db4 	lh	t4,3508(v1)
    465c:	012a001a 	div	zero,t1,t2
    4660:	00005812 	mflo	t3
    4664:	018b6823 	subu	t5,t4,t3
    4668:	a46d0db4 	sh	t5,3508(v1)
    466c:	8cc30000 	lw	v1,0(a2)
    4670:	15400002 	bnez	t2,467c <func_808237B4+0xb8>
    4674:	00000000 	nop
    4678:	0007000d 	break	0x7
    467c:	2401ffff 	li	at,-1
    4680:	15410004 	bne	t2,at,4694 <func_808237B4+0xd0>
    4684:	3c018000 	lui	at,0x8000
    4688:	15210002 	bne	t1,at,4694 <func_808237B4+0xd0>
    468c:	00000000 	nop
    4690:	0006000d 	break	0x6
    4694:	846e0dc8 	lh	t6,3528(v1)
    4698:	846f0da0 	lh	t7,3488(v1)
    469c:	84790db6 	lh	t9,3510(v1)
    46a0:	01cf001a 	div	zero,t6,t7
    46a4:	0000c012 	mflo	t8
    46a8:	03384023 	subu	t0,t9,t8
    46ac:	15e00002 	bnez	t7,46b8 <func_808237B4+0xf4>
    46b0:	00000000 	nop
    46b4:	0007000d 	break	0x7
    46b8:	2401ffff 	li	at,-1
    46bc:	15e10004 	bne	t7,at,46d0 <func_808237B4+0x10c>
    46c0:	3c018000 	lui	at,0x8000
    46c4:	15c10002 	bne	t6,at,46d0 <func_808237B4+0x10c>
    46c8:	00000000 	nop
    46cc:	0006000d 	break	0x6
    46d0:	a4680db6 	sh	t0,3510(v1)
    46d4:	10000024 	b	4768 <func_808237B4+0x1a4>
    46d8:	944901ea 	lhu	t1,490(v0)
    46dc:	8cc30000 	lw	v1,0(a2)
    46e0:	84690dc6 	lh	t1,3526(v1)
    46e4:	846a0da0 	lh	t2,3488(v1)
    46e8:	846b0db4 	lh	t3,3508(v1)
    46ec:	012a001a 	div	zero,t1,t2
    46f0:	00006012 	mflo	t4
    46f4:	016c6821 	addu	t5,t3,t4
    46f8:	a46d0db4 	sh	t5,3508(v1)
    46fc:	8cc30000 	lw	v1,0(a2)
    4700:	15400002 	bnez	t2,470c <func_808237B4+0x148>
    4704:	00000000 	nop
    4708:	0007000d 	break	0x7
    470c:	2401ffff 	li	at,-1
    4710:	15410004 	bne	t2,at,4724 <func_808237B4+0x160>
    4714:	3c018000 	lui	at,0x8000
    4718:	15210002 	bne	t1,at,4724 <func_808237B4+0x160>
    471c:	00000000 	nop
    4720:	0006000d 	break	0x6
    4724:	846e0dc8 	lh	t6,3528(v1)
    4728:	846f0da0 	lh	t7,3488(v1)
    472c:	84780db6 	lh	t8,3510(v1)
    4730:	01cf001a 	div	zero,t6,t7
    4734:	0000c812 	mflo	t9
    4738:	03194021 	addu	t0,t8,t9
    473c:	a4680db6 	sh	t0,3510(v1)
    4740:	15e00002 	bnez	t7,474c <func_808237B4+0x188>
    4744:	00000000 	nop
    4748:	0007000d 	break	0x7
    474c:	2401ffff 	li	at,-1
    4750:	15e10004 	bne	t7,at,4764 <func_808237B4+0x1a0>
    4754:	3c018000 	lui	at,0x8000
    4758:	15c10002 	bne	t6,at,4764 <func_808237B4+0x1a0>
    475c:	00000000 	nop
    4760:	0006000d 	break	0x6
    4764:	944901ea 	lhu	t1,490(v0)
    4768:	24010040 	li	at,64
    476c:	252a0004 	addiu	t2,t1,4
    4770:	314bffff 	andi	t3,t2,0xffff
    4774:	15610009 	bne	t3,at,479c <func_808237B4+0x1d8>
    4778:	a44a01ea 	sh	t2,490(v0)
    477c:	944c01e6 	lhu	t4,486(v0)
    4780:	3c0e0000 	lui	t6,0x0
    4784:	a44001ea 	sh	zero,490(v0)
    4788:	000c6840 	sll	t5,t4,0x1
    478c:	01cd7021 	addu	t6,t6,t5
    4790:	95ce0000 	lhu	t6,0(t6)
    4794:	a44001e4 	sh	zero,484(v0)
    4798:	a44e01e8 	sh	t6,488(v0)
    479c:	03e00008 	jr	ra
    47a0:	00000000 	nop

000047a4 <func_80823994>:
    47a4:	27bdffc0 	addiu	sp,sp,-64
    47a8:	44800000 	mtc1	zero,$f0
    47ac:	afa7004c 	sw	a3,76(sp)
    47b0:	3c013f80 	lui	at,0x3f80
    47b4:	44856000 	mtc1	a1,$f12
    47b8:	44867000 	mtc1	a2,$f14
    47bc:	c7a4004c 	lwc1	$f4,76(sp)
    47c0:	44813000 	mtc1	at,$f6
    47c4:	afbf0014 	sw	ra,20(sp)
    47c8:	afa40040 	sw	a0,64(sp)
    47cc:	27a60028 	addiu	a2,sp,40
    47d0:	27a50034 	addiu	a1,sp,52
    47d4:	27a7001c 	addiu	a3,sp,28
    47d8:	e7a00030 	swc1	$f0,48(sp)
    47dc:	e7a0002c 	swc1	$f0,44(sp)
    47e0:	e7a00028 	swc1	$f0,40(sp)
    47e4:	e7a00024 	swc1	$f0,36(sp)
    47e8:	e7a0001c 	swc1	$f0,28(sp)
    47ec:	e7ac0034 	swc1	$f12,52(sp)
    47f0:	e7ae0038 	swc1	$f14,56(sp)
    47f4:	e7a4003c 	swc1	$f4,60(sp)
    47f8:	0c000000 	jal	0 <func_8081F1F0>
    47fc:	e7a60020 	swc1	$f6,32(sp)
    4800:	8fa40040 	lw	a0,64(sp)
    4804:	0c000000 	jal	0 <func_8081F1F0>
    4808:	2405007f 	li	a1,127
    480c:	8fbf0014 	lw	ra,20(sp)
    4810:	27bd0040 	addiu	sp,sp,64
    4814:	03e00008 	jr	ra
    4818:	00000000 	nop

0000481c <func_80823A0C>:
    481c:	27bdff90 	addiu	sp,sp,-112
    4820:	afb6001c 	sw	s6,28(sp)
    4824:	0006b400 	sll	s6,a2,0x10
    4828:	0016b403 	sra	s6,s6,0x10
    482c:	3c0f0000 	lui	t7,0x0
    4830:	25ef0000 	addiu	t7,t7,0
    4834:	00167080 	sll	t6,s6,0x2
    4838:	01cf6021 	addu	t4,t6,t7
    483c:	3c0f0000 	lui	t7,0x0
    4840:	afb10008 	sw	s1,8(sp)
    4844:	25ef0000 	addiu	t7,t7,0
    4848:	3c010001 	lui	at,0x1
    484c:	3c190000 	lui	t9,0x0
    4850:	00078c00 	sll	s1,a3,0x10
    4854:	afb50018 	sw	s5,24(sp)
    4858:	afb40014 	sw	s4,20(sp)
    485c:	afb00004 	sw	s0,4(sp)
    4860:	27390000 	addiu	t9,t9,0
    4864:	34210760 	ori	at,at,0x760
    4868:	01cf1021 	addu	v0,t6,t7
    486c:	0016c080 	sll	t8,s6,0x2
    4870:	00a08025 	move	s0,a1
    4874:	00118c03 	sra	s1,s1,0x10
    4878:	afb30010 	sw	s3,16(sp)
    487c:	afb2000c 	sw	s2,12(sp)
    4880:	afa60078 	sw	a2,120(sp)
    4884:	afa7007c 	sw	a3,124(sp)
    4888:	2408ff38 	li	t0,-200
    488c:	03196821 	addu	t5,t8,t9
    4890:	afa20020 	sw	v0,32(sp)
    4894:	00815021 	addu	t2,a0,at
    4898:	24140a00 	li	s4,2560
    489c:	24150400 	li	s5,1024
    48a0:	00004825 	move	t1,zero
    48a4:	00005825 	move	t3,zero
    48a8:	8fa20020 	lw	v0,32(sp)
    48ac:	25080050 	addiu	t0,t0,80
    48b0:	00084400 	sll	t0,t0,0x10
    48b4:	00084403 	sra	t0,t0,0x10
    48b8:	24050050 	li	a1,80
    48bc:	00003025 	move	a2,zero
    48c0:	018b3821 	addu	a3,t4,t3
    48c4:	01ab9021 	addu	s2,t5,t3
    48c8:	004b9821 	addu	s3,v0,t3
    48cc:	0009c100 	sll	t8,t1,0x4
    48d0:	02181021 	addu	v0,s0,t8
    48d4:	a4480020 	sh	t0,32(v0)
    48d8:	84590020 	lh	t9,32(v0)
    48dc:	24c60001 	addiu	a2,a2,1
    48e0:	00063400 	sll	a2,a2,0x10
    48e4:	a4590000 	sh	t9,0(v0)
    48e8:	84440000 	lh	a0,0(v0)
    48ec:	00063403 	sra	a2,a2,0x10
    48f0:	25290004 	addiu	t1,t1,4
    48f4:	24840050 	addiu	a0,a0,80
    48f8:	00042400 	sll	a0,a0,0x10
    48fc:	00042403 	sra	a0,a0,0x10
    4900:	a4440030 	sh	a0,48(v0)
    4904:	a4440010 	sh	a0,16(v0)
    4908:	854e020a 	lh	t6,522(t2)
    490c:	a4400034 	sh	zero,52(v0)
    4910:	a4400028 	sh	zero,40(v0)
    4914:	00ae2021 	addu	a0,a1,t6
    4918:	00042400 	sll	a0,a0,0x10
    491c:	00042403 	sra	a0,a0,0x10
    4920:	a4440012 	sh	a0,18(v0)
    4924:	a4440002 	sh	a0,2(v0)
    4928:	84440002 	lh	a0,2(v0)
    492c:	84430028 	lh	v1,40(v0)
    4930:	a4540038 	sh	s4,56(v0)
    4934:	2484ffe0 	addiu	a0,a0,-32
    4938:	00042400 	sll	a0,a0,0x10
    493c:	00042403 	sra	a0,a0,0x10
    4940:	a4440032 	sh	a0,50(v0)
    4944:	a4440022 	sh	a0,34(v0)
    4948:	84440034 	lh	a0,52(v0)
    494c:	a455003a 	sh	s5,58(v0)
    4950:	844f0038 	lh	t7,56(v0)
    4954:	8458003a 	lh	t8,58(v0)
    4958:	a4400006 	sh	zero,6(v0)
    495c:	a4400016 	sh	zero,22(v0)
    4960:	a4400026 	sh	zero,38(v0)
    4964:	a4400036 	sh	zero,54(v0)
    4968:	a443001a 	sh	v1,26(v0)
    496c:	a443000a 	sh	v1,10(v0)
    4970:	a4430008 	sh	v1,8(v0)
    4974:	a4440024 	sh	a0,36(v0)
    4978:	a4440014 	sh	a0,20(v0)
    497c:	a4440004 	sh	a0,4(v0)
    4980:	a44f0018 	sh	t7,24(v0)
    4984:	a458002a 	sh	t8,42(v0)
    4988:	90e40000 	lbu	a0,0(a3)
    498c:	24a5ffe0 	addiu	a1,a1,-32
    4990:	00052c00 	sll	a1,a1,0x10
    4994:	a044002c 	sb	a0,44(v0)
    4998:	a044000c 	sb	a0,12(v0)
    499c:	92440000 	lbu	a0,0(s2)
    49a0:	00094c00 	sll	t1,t1,0x10
    49a4:	28c10005 	slti	at,a2,5
    49a8:	a044002d 	sb	a0,45(v0)
    49ac:	a044000d 	sb	a0,13(v0)
    49b0:	92640000 	lbu	a0,0(s3)
    49b4:	00094c03 	sra	t1,t1,0x10
    49b8:	00052c03 	sra	a1,a1,0x10
    49bc:	a044002e 	sb	a0,46(v0)
    49c0:	a044000e 	sb	a0,14(v0)
    49c4:	90e40001 	lbu	a0,1(a3)
    49c8:	a044003c 	sb	a0,60(v0)
    49cc:	a044001c 	sb	a0,28(v0)
    49d0:	92440001 	lbu	a0,1(s2)
    49d4:	a044003d 	sb	a0,61(v0)
    49d8:	a044001d 	sb	a0,29(v0)
    49dc:	92640001 	lbu	a0,1(s3)
    49e0:	a044003e 	sb	a0,62(v0)
    49e4:	a044001e 	sb	a0,30(v0)
    49e8:	91430209 	lbu	v1,521(t2)
    49ec:	a043003f 	sb	v1,63(v0)
    49f0:	a043001f 	sb	v1,31(v0)
    49f4:	a043002f 	sb	v1,47(v0)
    49f8:	1420ffb4 	bnez	at,48cc <func_80823A0C+0xb0>
    49fc:	a043000f 	sb	v1,15(v0)
    4a00:	256b0001 	addiu	t3,t3,1
    4a04:	000b5c00 	sll	t3,t3,0x10
    4a08:	000b5c03 	sra	t3,t3,0x10
    4a0c:	29610003 	slti	at,t3,3
    4a10:	5420ffa6 	bnezl	at,48ac <func_80823A0C+0x90>
    4a14:	8fa20020 	lw	v0,32(sp)
    4a18:	00099400 	sll	s2,t1,0x10
    4a1c:	12200119 	beqz	s1,4e84 <func_80823A0C+0x668>
    4a20:	00129403 	sra	s2,s2,0x10
    4a24:	00161080 	sll	v0,s6,0x2
    4a28:	3c190000 	lui	t9,0x0
    4a2c:	3c060000 	lui	a2,0x0
    4a30:	3c070000 	lui	a3,0x0
    4a34:	3c080000 	lui	t0,0x0
    4a38:	27390000 	addiu	t9,t9,0
    4a3c:	00c23021 	addu	a2,a2,v0
    4a40:	00e23821 	addu	a3,a3,v0
    4a44:	01024021 	addu	t0,t0,v0
    4a48:	00596821 	addu	t5,v0,t9
    4a4c:	8cc60000 	lw	a2,0(a2)
    4a50:	8ce70000 	lw	a3,0(a3)
    4a54:	8d080000 	lw	t0,0(t0)
    4a58:	8dac0000 	lw	t4,0(t5)
    4a5c:	1a200066 	blez	s1,4bf8 <func_80823A0C+0x3dc>
    4a60:	00005825 	move	t3,zero
    4a64:	3c160000 	lui	s6,0x0
    4a68:	26d60000 	addiu	s6,s6,0
    4a6c:	241300ff 	li	s3,255
    4a70:	000b2840 	sll	a1,t3,0x1
    4a74:	00c57021 	addu	t6,a2,a1
    4a78:	85c40000 	lh	a0,0(t6)
    4a7c:	00097900 	sll	t7,t1,0x4
    4a80:	020f1021 	addu	v0,s0,t7
    4a84:	a4440000 	sh	a0,0(v0)
    4a88:	00e5a021 	addu	s4,a3,a1
    4a8c:	a4440020 	sh	a0,32(v0)
    4a90:	86980000 	lh	t8,0(s4)
    4a94:	84590000 	lh	t9,0(v0)
    4a98:	256b0001 	addiu	t3,t3,1
    4a9c:	000b5c00 	sll	t3,t3,0x10
    4aa0:	03192021 	addu	a0,t8,t9
    4aa4:	00042400 	sll	a0,a0,0x10
    4aa8:	00042403 	sra	a0,a0,0x10
    4aac:	a4440030 	sh	a0,48(v0)
    4ab0:	a4440010 	sh	a0,16(v0)
    4ab4:	954301d4 	lhu	v1,468(t2)
    4ab8:	000b5c03 	sra	t3,t3,0x10
    4abc:	01057021 	addu	t6,t0,a1
    4ac0:	28610008 	slti	at,v1,8
    4ac4:	14200004 	bnez	at,4ad8 <func_80823A0C+0x2bc>
    4ac8:	0185a821 	addu	s5,t4,a1
    4acc:	28610012 	slti	at,v1,18
    4ad0:	5420000a 	bnezl	at,4afc <func_80823A0C+0x2e0>
    4ad4:	8ed90000 	lw	t9,0(s6)
    4ad8:	85cf0000 	lh	t7,0(t6)
    4adc:	8558020a 	lh	t8,522(t2)
    4ae0:	01f82021 	addu	a0,t7,t8
    4ae4:	00042400 	sll	a0,a0,0x10
    4ae8:	00042403 	sra	a0,a0,0x10
    4aec:	a4440012 	sh	a0,18(v0)
    4af0:	1000000a 	b	4b1c <func_80823A0C+0x300>
    4af4:	a4440002 	sh	a0,2(v0)
    4af8:	8ed90000 	lw	t9,0(s6)
    4afc:	8558020a 	lh	t8,522(t2)
    4b00:	03257021 	addu	t6,t9,a1
    4b04:	85cf050c 	lh	t7,1292(t6)
    4b08:	01f82021 	addu	a0,t7,t8
    4b0c:	00042400 	sll	a0,a0,0x10
    4b10:	00042403 	sra	a0,a0,0x10
    4b14:	a4440012 	sh	a0,18(v0)
    4b18:	a4440002 	sh	a0,2(v0)
    4b1c:	86ae0000 	lh	t6,0(s5)
    4b20:	84590002 	lh	t9,2(v0)
    4b24:	a4400034 	sh	zero,52(v0)
    4b28:	a4400028 	sh	zero,40(v0)
    4b2c:	032e2023 	subu	a0,t9,t6
    4b30:	00042400 	sll	a0,a0,0x10
    4b34:	00042403 	sra	a0,a0,0x10
    4b38:	a4440032 	sh	a0,50(v0)
    4b3c:	a4440022 	sh	a0,34(v0)
    4b40:	84440034 	lh	a0,52(v0)
    4b44:	84430028 	lh	v1,40(v0)
    4b48:	a4400006 	sh	zero,6(v0)
    4b4c:	a4400016 	sh	zero,22(v0)
    4b50:	a4400026 	sh	zero,38(v0)
    4b54:	a4400036 	sh	zero,54(v0)
    4b58:	a4440024 	sh	a0,36(v0)
    4b5c:	a4440014 	sh	a0,20(v0)
    4b60:	a4440004 	sh	a0,4(v0)
    4b64:	a443001a 	sh	v1,26(v0)
    4b68:	a443000a 	sh	v1,10(v0)
    4b6c:	a4430008 	sh	v1,8(v0)
    4b70:	86840000 	lh	a0,0(s4)
    4b74:	25290004 	addiu	t1,t1,4
    4b78:	00094c00 	sll	t1,t1,0x10
    4b7c:	00042140 	sll	a0,a0,0x5
    4b80:	00042400 	sll	a0,a0,0x10
    4b84:	00042403 	sra	a0,a0,0x10
    4b88:	a4440038 	sh	a0,56(v0)
    4b8c:	a4440018 	sh	a0,24(v0)
    4b90:	86a40000 	lh	a0,0(s5)
    4b94:	a053000c 	sb	s3,12(v0)
    4b98:	a053002c 	sb	s3,44(v0)
    4b9c:	00042140 	sll	a0,a0,0x5
    4ba0:	00042400 	sll	a0,a0,0x10
    4ba4:	00042403 	sra	a0,a0,0x10
    4ba8:	a444003a 	sh	a0,58(v0)
    4bac:	a444002a 	sh	a0,42(v0)
    4bb0:	a053000d 	sb	s3,13(v0)
    4bb4:	a053002d 	sb	s3,45(v0)
    4bb8:	a053000e 	sb	s3,14(v0)
    4bbc:	a053002e 	sb	s3,46(v0)
    4bc0:	a053001c 	sb	s3,28(v0)
    4bc4:	a053003c 	sb	s3,60(v0)
    4bc8:	a053001d 	sb	s3,29(v0)
    4bcc:	a053003d 	sb	s3,61(v0)
    4bd0:	a053001e 	sb	s3,30(v0)
    4bd4:	a053003e 	sb	s3,62(v0)
    4bd8:	91430209 	lbu	v1,521(t2)
    4bdc:	0171082a 	slt	at,t3,s1
    4be0:	00094c03 	sra	t1,t1,0x10
    4be4:	a043003f 	sb	v1,63(v0)
    4be8:	a043001f 	sb	v1,31(v0)
    4bec:	a043002f 	sb	v1,47(v0)
    4bf0:	1420ff9f 	bnez	at,4a70 <func_80823A0C+0x254>
    4bf4:	a043000f 	sb	v1,15(v0)
    4bf8:	3c0f0000 	lui	t7,0x0
    4bfc:	25ef0000 	addiu	t7,t7,0
    4c00:	15af00a0 	bne	t5,t7,4e84 <func_80823A0C+0x668>
    4c04:	241300ff 	li	s3,255
    4c08:	3c0b0000 	lui	t3,0x0
    4c0c:	856b1420 	lh	t3,5152(t3)
    4c10:	2529fff4 	addiu	t1,t1,-12
    4c14:	3c040000 	lui	a0,0x0
    4c18:	000b2840 	sll	a1,t3,0x1
    4c1c:	00094c00 	sll	t1,t1,0x10
    4c20:	00852021 	addu	a0,a0,a1
    4c24:	84840000 	lh	a0,0(a0)
    4c28:	00094c03 	sra	t1,t1,0x10
    4c2c:	0009c100 	sll	t8,t1,0x4
    4c30:	02181021 	addu	v0,s0,t8
    4c34:	3c190000 	lui	t9,0x0
    4c38:	a4440000 	sh	a0,0(v0)
    4c3c:	0325c821 	addu	t9,t9,a1
    4c40:	a4440020 	sh	a0,32(v0)
    4c44:	87390000 	lh	t9,0(t9)
    4c48:	844e0000 	lh	t6,0(v0)
    4c4c:	3c0f0000 	lui	t7,0x0
    4c50:	01e57821 	addu	t7,t7,a1
    4c54:	032e2021 	addu	a0,t9,t6
    4c58:	00042400 	sll	a0,a0,0x10
    4c5c:	00042403 	sra	a0,a0,0x10
    4c60:	a4440030 	sh	a0,48(v0)
    4c64:	a4440010 	sh	a0,16(v0)
    4c68:	8558020a 	lh	t8,522(t2)
    4c6c:	85ef0000 	lh	t7,0(t7)
    4c70:	3c0e0000 	lui	t6,0x0
    4c74:	01c57021 	addu	t6,t6,a1
    4c78:	01f82021 	addu	a0,t7,t8
    4c7c:	00042400 	sll	a0,a0,0x10
    4c80:	00042403 	sra	a0,a0,0x10
    4c84:	a4440002 	sh	a0,2(v0)
    4c88:	a4440012 	sh	a0,18(v0)
    4c8c:	85ce0000 	lh	t6,0(t6)
    4c90:	84590002 	lh	t9,2(v0)
    4c94:	2529000c 	addiu	t1,t1,12
    4c98:	00094c00 	sll	t1,t1,0x10
    4c9c:	032e2023 	subu	a0,t9,t6
    4ca0:	00042400 	sll	a0,a0,0x10
    4ca4:	00042403 	sra	a0,a0,0x10
    4ca8:	a4440032 	sh	a0,50(v0)
    4cac:	a4440022 	sh	a0,34(v0)
    4cb0:	9146027a 	lbu	a2,634(t2)
    4cb4:	240100ff 	li	at,255
    4cb8:	00094c03 	sra	t1,t1,0x10
    4cbc:	10c10071 	beq	a2,at,4e84 <func_80823A0C+0x668>
    4cc0:	3c020000 	lui	v0,0x0
    4cc4:	84420000 	lh	v0,0(v0)
    4cc8:	0006c080 	sll	t8,a2,0x2
    4ccc:	02585821 	addu	t3,s2,t8
    4cd0:	1440001e 	bnez	v0,4d4c <func_80823A0C+0x530>
    4cd4:	256b0040 	addiu	t3,t3,64
    4cd8:	3c030000 	lui	v1,0x0
    4cdc:	84630000 	lh	v1,0(v1)
    4ce0:	24010001 	li	at,1
    4ce4:	240f0003 	li	t7,3
    4ce8:	24630001 	addiu	v1,v1,1
    4cec:	00031c00 	sll	v1,v1,0x10
    4cf0:	00031c03 	sra	v1,v1,0x10
    4cf4:	10610007 	beq	v1,at,4d14 <func_80823A0C+0x4f8>
    4cf8:	24020008 	li	v0,8
    4cfc:	24010002 	li	at,2
    4d00:	1061000b 	beq	v1,at,4d30 <func_80823A0C+0x514>
    4d04:	24020006 	li	v0,6
    4d08:	3c010000 	lui	at,0x0
    4d0c:	10000014 	b	4d60 <func_80823A0C+0x544>
    4d10:	a4230000 	sh	v1,0(at)
    4d14:	3c010000 	lui	at,0x0
    4d18:	a4230000 	sh	v1,0(at)
    4d1c:	3c010000 	lui	at,0x0
    4d20:	a42f0000 	sh	t7,0(at)
    4d24:	3c010000 	lui	at,0x0
    4d28:	1000000d 	b	4d60 <func_80823A0C+0x544>
    4d2c:	a4220000 	sh	v0,0(at)
    4d30:	3c010000 	lui	at,0x0
    4d34:	a4200000 	sh	zero,0(at)
    4d38:	3c010000 	lui	at,0x0
    4d3c:	a4220000 	sh	v0,0(at)
    4d40:	3c010000 	lui	at,0x0
    4d44:	10000006 	b	4d60 <func_80823A0C+0x544>
    4d48:	a4200000 	sh	zero,0(at)
    4d4c:	2442ffff 	addiu	v0,v0,-1
    4d50:	00021400 	sll	v0,v0,0x10
    4d54:	00021403 	sra	v0,v0,0x10
    4d58:	3c010000 	lui	at,0x0
    4d5c:	a4220000 	sh	v0,0(at)
    4d60:	000b5c00 	sll	t3,t3,0x10
    4d64:	000b5c03 	sra	t3,t3,0x10
    4d68:	000bc900 	sll	t9,t3,0x4
    4d6c:	264e0074 	addiu	t6,s2,116
    4d70:	000e7c00 	sll	t7,t6,0x10
    4d74:	02191021 	addu	v0,s0,t9
    4d78:	84440000 	lh	a0,0(v0)
    4d7c:	000fc403 	sra	t8,t7,0x10
    4d80:	0018c900 	sll	t9,t8,0x4
    4d84:	02192821 	addu	a1,s0,t9
    4d88:	a4a40020 	sh	a0,32(a1)
    4d8c:	a4a40000 	sh	a0,0(a1)
    4d90:	84a40000 	lh	a0,0(a1)
    4d94:	3c0f0000 	lui	t7,0x0
    4d98:	0009c100 	sll	t8,t1,0x4
    4d9c:	24840008 	addiu	a0,a0,8
    4da0:	00042400 	sll	a0,a0,0x10
    4da4:	00042403 	sra	a0,a0,0x10
    4da8:	a4a40030 	sh	a0,48(a1)
    4dac:	a4a40010 	sh	a0,16(a1)
    4db0:	85ef0000 	lh	t7,0(t7)
    4db4:	844e0002 	lh	t6,2(v0)
    4db8:	a4a00034 	sh	zero,52(a1)
    4dbc:	84a30034 	lh	v1,52(a1)
    4dc0:	01cf2023 	subu	a0,t6,t7
    4dc4:	2484000a 	addiu	a0,a0,10
    4dc8:	00042400 	sll	a0,a0,0x10
    4dcc:	00042403 	sra	a0,a0,0x10
    4dd0:	a4a40012 	sh	a0,18(a1)
    4dd4:	a4a40002 	sh	a0,2(a1)
    4dd8:	84a40002 	lh	a0,2(a1)
    4ddc:	a4a00028 	sh	zero,40(a1)
    4de0:	a4a30024 	sh	v1,36(a1)
    4de4:	a4a30014 	sh	v1,20(a1)
    4de8:	a4a30004 	sh	v1,4(a1)
    4dec:	2484fff8 	addiu	a0,a0,-8
    4df0:	84a30028 	lh	v1,40(a1)
    4df4:	00042400 	sll	a0,a0,0x10
    4df8:	00042403 	sra	a0,a0,0x10
    4dfc:	a4a40032 	sh	a0,50(a1)
    4e00:	a4a40022 	sh	a0,34(a1)
    4e04:	a4a00006 	sh	zero,6(a1)
    4e08:	a4a00016 	sh	zero,22(a1)
    4e0c:	a4a00026 	sh	zero,38(a1)
    4e10:	a4a00036 	sh	zero,54(a1)
    4e14:	02181021 	addu	v0,s0,t8
    4e18:	a4a3001a 	sh	v1,26(a1)
    4e1c:	a4430008 	sh	v1,8(v0)
    4e20:	a443000a 	sh	v1,10(v0)
    4e24:	24040100 	li	a0,256
    4e28:	a4a40038 	sh	a0,56(a1)
    4e2c:	a4a4003a 	sh	a0,58(a1)
    4e30:	84b90038 	lh	t9,56(a1)
    4e34:	84ae003a 	lh	t6,58(a1)
    4e38:	a0b3000c 	sb	s3,12(a1)
    4e3c:	a0b3002c 	sb	s3,44(a1)
    4e40:	a0b3000d 	sb	s3,13(a1)
    4e44:	a0b3002d 	sb	s3,45(a1)
    4e48:	a0b3000e 	sb	s3,14(a1)
    4e4c:	a0b3002e 	sb	s3,46(a1)
    4e50:	a0b3001c 	sb	s3,28(a1)
    4e54:	a0b3003c 	sb	s3,60(a1)
    4e58:	a0b3001d 	sb	s3,29(a1)
    4e5c:	a0b3003d 	sb	s3,61(a1)
    4e60:	a0b3001e 	sb	s3,30(a1)
    4e64:	a0b3003e 	sb	s3,62(a1)
    4e68:	a4b90018 	sh	t9,24(a1)
    4e6c:	a4ae002a 	sh	t6,42(a1)
    4e70:	91430209 	lbu	v1,521(t2)
    4e74:	a0a3003f 	sb	v1,63(a1)
    4e78:	a0a3001f 	sb	v1,31(a1)
    4e7c:	a0a3002f 	sb	v1,47(a1)
    4e80:	a0a3000f 	sb	v1,15(a1)
    4e84:	8fb00004 	lw	s0,4(sp)
    4e88:	8fb10008 	lw	s1,8(sp)
    4e8c:	8fb2000c 	lw	s2,12(sp)
    4e90:	8fb30010 	lw	s3,16(sp)
    4e94:	8fb40014 	lw	s4,20(sp)
    4e98:	8fb50018 	lw	s5,24(sp)
    4e9c:	8fb6001c 	lw	s6,28(sp)
    4ea0:	27bd0070 	addiu	sp,sp,112
    4ea4:	03e00008 	jr	ra
    4ea8:	01201025 	move	v0,t1

00004eac <func_8082409C>:
    4eac:	27bdffa0 	addiu	sp,sp,-96
    4eb0:	3c010001 	lui	at,0x1
    4eb4:	afbf001c 	sw	ra,28(sp)
    4eb8:	afb00018 	sw	s0,24(sp)
    4ebc:	afa50064 	sw	a1,100(sp)
    4ec0:	00811021 	addu	v0,a0,at
    4ec4:	944e0934 	lhu	t6,2356(v0)
    4ec8:	24010004 	li	at,4
    4ecc:	00803025 	move	a2,a0
    4ed0:	11c10013 	beq	t6,at,4f20 <func_8082409C+0x74>
    4ed4:	a440096a 	sh	zero,2410(v0)
    4ed8:	3c010001 	lui	at,0x1
    4edc:	34210760 	ori	at,at,0x760
    4ee0:	00814021 	addu	t0,a0,at
    4ee4:	950201d4 	lhu	v0,468(t0)
    4ee8:	28410012 	slti	at,v0,18
    4eec:	1020000c 	beqz	at,4f20 <func_8082409C+0x74>
    4ef0:	24010007 	li	at,7
    4ef4:	54410007 	bnel	v0,at,4f14 <func_8082409C+0x68>
    4ef8:	28410008 	slti	at,v0,8
    4efc:	950301ec 	lhu	v1,492(t0)
    4f00:	24010002 	li	at,2
    4f04:	10610006 	beq	v1,at,4f20 <func_8082409C+0x74>
    4f08:	24010005 	li	at,5
    4f0c:	10610004 	beq	v1,at,4f20 <func_8082409C+0x74>
    4f10:	28410008 	slti	at,v0,8
    4f14:	14200007 	bnez	at,4f34 <func_8082409C+0x88>
    4f18:	2841000e 	slti	at,v0,14
    4f1c:	10200005 	beqz	at,4f34 <func_8082409C+0x88>
    4f20:	3c010001 	lui	at,0x1
    4f24:	34210760 	ori	at,at,0x760
    4f28:	00c14021 	addu	t0,a2,at
    4f2c:	240f0050 	li	t7,80
    4f30:	a50f020a 	sh	t7,522(t0)
    4f34:	8fa40064 	lw	a0,100(sp)
    4f38:	240503c0 	li	a1,960
    4f3c:	afa60060 	sw	a2,96(sp)
    4f40:	0c000000 	jal	0 <func_8081F1F0>
    4f44:	afa80020 	sw	t0,32(sp)
    4f48:	8fa80020 	lw	t0,32(sp)
    4f4c:	00402825 	move	a1,v0
    4f50:	00003025 	move	a2,zero
    4f54:	ad020144 	sw	v0,324(t0)
    4f58:	8fa40060 	lw	a0,96(sp)
    4f5c:	0c000000 	jal	0 <func_8081F1F0>
    4f60:	00003825 	move	a3,zero
    4f64:	8fa40064 	lw	a0,100(sp)
    4f68:	0c000000 	jal	0 <func_8081F1F0>
    4f6c:	240503c0 	li	a1,960
    4f70:	8fa80020 	lw	t0,32(sp)
    4f74:	00402825 	move	a1,v0
    4f78:	24060001 	li	a2,1
    4f7c:	ad020148 	sw	v0,328(t0)
    4f80:	8fa40060 	lw	a0,96(sp)
    4f84:	0c000000 	jal	0 <func_8081F1F0>
    4f88:	00003825 	move	a3,zero
    4f8c:	3c180000 	lui	t8,0x0
    4f90:	87180000 	lh	t8,0(t8)
    4f94:	8fa80020 	lw	t0,32(sp)
    4f98:	570000c0 	bnezl	t8,529c <func_8082409C+0x3f0>
    4f9c:	8fa40064 	lw	a0,100(sp)
    4fa0:	8fa40064 	lw	a0,100(sp)
    4fa4:	24050f80 	li	a1,3968
    4fa8:	0c000000 	jal	0 <func_8081F1F0>
    4fac:	afa80020 	sw	t0,32(sp)
    4fb0:	8fa80020 	lw	t0,32(sp)
    4fb4:	00402825 	move	a1,v0
    4fb8:	24060004 	li	a2,4
    4fbc:	ad02014c 	sw	v0,332(t0)
    4fc0:	8fa40060 	lw	a0,96(sp)
    4fc4:	0c000000 	jal	0 <func_8081F1F0>
    4fc8:	24070020 	li	a3,32
    4fcc:	00025c00 	sll	t3,v0,0x10
    4fd0:	000b5c03 	sra	t3,t3,0x10
    4fd4:	8fa80020 	lw	t0,32(sp)
    4fd8:	00005025 	move	t2,zero
    4fdc:	240d003a 	li	t5,58
    4fe0:	240c0120 	li	t4,288
    4fe4:	24091b00 	li	t1,6912
    4fe8:	2405ff94 	li	a1,-108
    4fec:	8d19014c 	lw	t9,332(t0)
    4ff0:	000b1100 	sll	v0,t3,0x4
    4ff4:	254a0001 	addiu	t2,t2,1
    4ff8:	03227021 	addu	t6,t9,v0
    4ffc:	a5c50020 	sh	a1,32(t6)
    5000:	8d0f014c 	lw	t7,332(t0)
    5004:	000a5400 	sll	t2,t2,0x10
    5008:	000a5403 	sra	t2,t2,0x10
    500c:	01e21821 	addu	v1,t7,v0
    5010:	84780020 	lh	t8,32(v1)
    5014:	256b0004 	addiu	t3,t3,4
    5018:	000b5c00 	sll	t3,t3,0x10
    501c:	a4780000 	sh	t8,0(v1)
    5020:	8d19014c 	lw	t9,332(t0)
    5024:	2941000f 	slti	at,t2,15
    5028:	000b5c03 	sra	t3,t3,0x10
    502c:	03221821 	addu	v1,t9,v0
    5030:	84670000 	lh	a3,0(v1)
    5034:	24e700d8 	addiu	a3,a3,216
    5038:	00073c00 	sll	a3,a3,0x10
    503c:	00073c03 	sra	a3,a3,0x10
    5040:	a4670030 	sh	a3,48(v1)
    5044:	8d0e014c 	lw	t6,332(t0)
    5048:	01c27821 	addu	t7,t6,v0
    504c:	a5e70010 	sh	a3,16(t7)
    5050:	8518020a 	lh	t8,522(t0)
    5054:	8d19014c 	lw	t9,332(t0)
    5058:	01b83821 	addu	a3,t5,t8
    505c:	00073c00 	sll	a3,a3,0x10
    5060:	00073c03 	sra	a3,a3,0x10
    5064:	03227021 	addu	t6,t9,v0
    5068:	a5c70012 	sh	a3,18(t6)
    506c:	8d0f014c 	lw	t7,332(t0)
    5070:	25adfff7 	addiu	t5,t5,-9
    5074:	000d6c00 	sll	t5,t5,0x10
    5078:	01e2c021 	addu	t8,t7,v0
    507c:	a7070002 	sh	a3,2(t8)
    5080:	8d19014c 	lw	t9,332(t0)
    5084:	000d6c03 	sra	t5,t5,0x10
    5088:	03221821 	addu	v1,t9,v0
    508c:	84670002 	lh	a3,2(v1)
    5090:	24e7fff7 	addiu	a3,a3,-9
    5094:	00073c00 	sll	a3,a3,0x10
    5098:	00073c03 	sra	a3,a3,0x10
    509c:	a4670032 	sh	a3,50(v1)
    50a0:	8d0e014c 	lw	t6,332(t0)
    50a4:	01c27821 	addu	t7,t6,v0
    50a8:	a5e70022 	sh	a3,34(t7)
    50ac:	8d18014c 	lw	t8,332(t0)
    50b0:	0302c821 	addu	t9,t8,v0
    50b4:	a7200034 	sh	zero,52(t9)
    50b8:	8d0e014c 	lw	t6,332(t0)
    50bc:	01c21821 	addu	v1,t6,v0
    50c0:	84660034 	lh	a2,52(v1)
    50c4:	a4660024 	sh	a2,36(v1)
    50c8:	8d0f014c 	lw	t7,332(t0)
    50cc:	01e2c021 	addu	t8,t7,v0
    50d0:	a7060014 	sh	a2,20(t8)
    50d4:	8d19014c 	lw	t9,332(t0)
    50d8:	03227021 	addu	t6,t9,v0
    50dc:	a5c60004 	sh	a2,4(t6)
    50e0:	8d0f014c 	lw	t7,332(t0)
    50e4:	01e2c021 	addu	t8,t7,v0
    50e8:	a7000036 	sh	zero,54(t8)
    50ec:	8d19014c 	lw	t9,332(t0)
    50f0:	03221821 	addu	v1,t9,v0
    50f4:	94660036 	lhu	a2,54(v1)
    50f8:	a4660026 	sh	a2,38(v1)
    50fc:	8d0e014c 	lw	t6,332(t0)
    5100:	01c27821 	addu	t7,t6,v0
    5104:	a5e60016 	sh	a2,22(t7)
    5108:	8d18014c 	lw	t8,332(t0)
    510c:	0302c821 	addu	t9,t8,v0
    5110:	a7260006 	sh	a2,6(t9)
    5114:	8d0e014c 	lw	t6,332(t0)
    5118:	01c27821 	addu	t7,t6,v0
    511c:	a5e00028 	sh	zero,40(t7)
    5120:	8d18014c 	lw	t8,332(t0)
    5124:	03021821 	addu	v1,t8,v0
    5128:	84660028 	lh	a2,40(v1)
    512c:	a466001a 	sh	a2,26(v1)
    5130:	8d19014c 	lw	t9,332(t0)
    5134:	03227021 	addu	t6,t9,v0
    5138:	a5c6000a 	sh	a2,10(t6)
    513c:	8d0f014c 	lw	t7,332(t0)
    5140:	01e2c021 	addu	t8,t7,v0
    5144:	a7060008 	sh	a2,8(t8)
    5148:	8d19014c 	lw	t9,332(t0)
    514c:	03227021 	addu	t6,t9,v0
    5150:	a5c90038 	sh	t1,56(t6)
    5154:	8d0f014c 	lw	t7,332(t0)
    5158:	01e21821 	addu	v1,t7,v0
    515c:	84780038 	lh	t8,56(v1)
    5160:	a4780018 	sh	t8,24(v1)
    5164:	8d19014c 	lw	t9,332(t0)
    5168:	03227021 	addu	t6,t9,v0
    516c:	a5cc003a 	sh	t4,58(t6)
    5170:	8d0f014c 	lw	t7,332(t0)
    5174:	01e21821 	addu	v1,t7,v0
    5178:	8478003a 	lh	t8,58(v1)
    517c:	a478002a 	sh	t8,42(v1)
    5180:	8d19014c 	lw	t9,332(t0)
    5184:	91040209 	lbu	a0,521(t0)
    5188:	03227021 	addu	t6,t9,v0
    518c:	a1c4003f 	sb	a0,63(t6)
    5190:	8d0f014c 	lw	t7,332(t0)
    5194:	01e2c021 	addu	t8,t7,v0
    5198:	a304001f 	sb	a0,31(t8)
    519c:	8d19014c 	lw	t9,332(t0)
    51a0:	03227021 	addu	t6,t9,v0
    51a4:	a1c4002f 	sb	a0,47(t6)
    51a8:	8d0f014c 	lw	t7,332(t0)
    51ac:	01e2c021 	addu	t8,t7,v0
    51b0:	a304000f 	sb	a0,15(t8)
    51b4:	8d19014c 	lw	t9,332(t0)
    51b8:	03227021 	addu	t6,t9,v0
    51bc:	a1c4003e 	sb	a0,62(t6)
    51c0:	8d0f014c 	lw	t7,332(t0)
    51c4:	01e2c021 	addu	t8,t7,v0
    51c8:	a304001e 	sb	a0,30(t8)
    51cc:	8d19014c 	lw	t9,332(t0)
    51d0:	03227021 	addu	t6,t9,v0
    51d4:	a1c4003d 	sb	a0,61(t6)
    51d8:	8d0f014c 	lw	t7,332(t0)
    51dc:	01e2c021 	addu	t8,t7,v0
    51e0:	a304001d 	sb	a0,29(t8)
    51e4:	8d19014c 	lw	t9,332(t0)
    51e8:	03227021 	addu	t6,t9,v0
    51ec:	a1c4003c 	sb	a0,60(t6)
    51f0:	8d0f014c 	lw	t7,332(t0)
    51f4:	01e2c021 	addu	t8,t7,v0
    51f8:	a304001c 	sb	a0,28(t8)
    51fc:	8d19014c 	lw	t9,332(t0)
    5200:	03227021 	addu	t6,t9,v0
    5204:	a1c4002e 	sb	a0,46(t6)
    5208:	8d0f014c 	lw	t7,332(t0)
    520c:	01e2c021 	addu	t8,t7,v0
    5210:	a304000e 	sb	a0,14(t8)
    5214:	8d19014c 	lw	t9,332(t0)
    5218:	03227021 	addu	t6,t9,v0
    521c:	a1c4002d 	sb	a0,45(t6)
    5220:	8d0f014c 	lw	t7,332(t0)
    5224:	01e2c021 	addu	t8,t7,v0
    5228:	a304000d 	sb	a0,13(t8)
    522c:	8d19014c 	lw	t9,332(t0)
    5230:	03227021 	addu	t6,t9,v0
    5234:	a1c4002c 	sb	a0,44(t6)
    5238:	8d0f014c 	lw	t7,332(t0)
    523c:	01e2c021 	addu	t8,t7,v0
    5240:	1420ff6a 	bnez	at,4fec <func_8082409C+0x140>
    5244:	a304000c 	sb	a0,12(t8)
    5248:	8d19014c 	lw	t9,332(t0)
    524c:	000b1100 	sll	v0,t3,0x4
    5250:	24180040 	li	t8,64
    5254:	03221821 	addu	v1,t9,v0
    5258:	8467ffc2 	lh	a3,-62(v1)
    525c:	24e7fffe 	addiu	a3,a3,-2
    5260:	00073c00 	sll	a3,a3,0x10
    5264:	00073c03 	sra	a3,a3,0x10
    5268:	a467fff2 	sh	a3,-14(v1)
    526c:	8d0e014c 	lw	t6,332(t0)
    5270:	01c27821 	addu	t7,t6,v0
    5274:	a5e7ffe2 	sh	a3,-30(t7)
    5278:	8d19014c 	lw	t9,332(t0)
    527c:	03227021 	addu	t6,t9,v0
    5280:	a5d8fffa 	sh	t8,-6(t6)
    5284:	8d0f014c 	lw	t7,332(t0)
    5288:	01e21821 	addu	v1,t7,v0
    528c:	8479fffa 	lh	t9,-6(v1)
    5290:	1000000d 	b	52c8 <func_8082409C+0x41c>
    5294:	a479ffea 	sh	t9,-22(v1)
    5298:	8fa40064 	lw	a0,100(sp)
    529c:	24050800 	li	a1,2048
    52a0:	0c000000 	jal	0 <func_8081F1F0>
    52a4:	afa80020 	sw	t0,32(sp)
    52a8:	8fa80020 	lw	t0,32(sp)
    52ac:	00402825 	move	a1,v0
    52b0:	24060002 	li	a2,2
    52b4:	ad02014c 	sw	v0,332(t0)
    52b8:	8fa40060 	lw	a0,96(sp)
    52bc:	0c000000 	jal	0 <func_8081F1F0>
    52c0:	24070011 	li	a3,17
    52c4:	8fa80020 	lw	t0,32(sp)
    52c8:	8fa40064 	lw	a0,100(sp)
    52cc:	240503c0 	li	a1,960
    52d0:	0c000000 	jal	0 <func_8081F1F0>
    52d4:	afa80020 	sw	t0,32(sp)
    52d8:	8fa80020 	lw	t0,32(sp)
    52dc:	00402825 	move	a1,v0
    52e0:	24060003 	li	a2,3
    52e4:	ad020150 	sw	v0,336(t0)
    52e8:	8fa40060 	lw	a0,96(sp)
    52ec:	0c000000 	jal	0 <func_8081F1F0>
    52f0:	00003825 	move	a3,zero
    52f4:	8fa40064 	lw	a0,100(sp)
    52f8:	0c000000 	jal	0 <func_8081F1F0>
    52fc:	24050140 	li	a1,320
    5300:	8fa80020 	lw	t0,32(sp)
    5304:	00005025 	move	t2,zero
    5308:	241f00ff 	li	ra,255
    530c:	ad020168 	sw	v0,360(t0)
    5310:	8d180168 	lw	t8,360(t0)
    5314:	000a1100 	sll	v0,t2,0x4
    5318:	254a0001 	addiu	t2,t2,1
    531c:	03027021 	addu	t6,t8,v0
    5320:	a5c00004 	sh	zero,4(t6)
    5324:	8d0f0168 	lw	t7,360(t0)
    5328:	000a5400 	sll	t2,t2,0x10
    532c:	000a5403 	sra	t2,t2,0x10
    5330:	01e21821 	addu	v1,t7,v0
    5334:	84670004 	lh	a3,4(v1)
    5338:	29410014 	slti	at,t2,20
    533c:	a4670002 	sh	a3,2(v1)
    5340:	8d190168 	lw	t9,360(t0)
    5344:	0322c021 	addu	t8,t9,v0
    5348:	a7070000 	sh	a3,0(t8)
    534c:	8d0e0168 	lw	t6,360(t0)
    5350:	01c27821 	addu	t7,t6,v0
    5354:	a5e00006 	sh	zero,6(t7)
    5358:	8d190168 	lw	t9,360(t0)
    535c:	0322c021 	addu	t8,t9,v0
    5360:	a700000a 	sh	zero,10(t8)
    5364:	8d0e0168 	lw	t6,360(t0)
    5368:	01c21821 	addu	v1,t6,v0
    536c:	846f000a 	lh	t7,10(v1)
    5370:	a46f0008 	sh	t7,8(v1)
    5374:	8d190168 	lw	t9,360(t0)
    5378:	0322c021 	addu	t8,t9,v0
    537c:	a31f000f 	sb	ra,15(t8)
    5380:	8d0e0168 	lw	t6,360(t0)
    5384:	01c21821 	addu	v1,t6,v0
    5388:	9065000f 	lbu	a1,15(v1)
    538c:	a065000e 	sb	a1,14(v1)
    5390:	8d0f0168 	lw	t7,360(t0)
    5394:	01e2c821 	addu	t9,t7,v0
    5398:	a325000d 	sb	a1,13(t9)
    539c:	8d180168 	lw	t8,360(t0)
    53a0:	03027021 	addu	t6,t8,v0
    53a4:	1420ffda 	bnez	at,5310 <func_8082409C+0x464>
    53a8:	a1c5000c 	sb	a1,12(t6)
    53ac:	8d190168 	lw	t9,360(t0)
    53b0:	240f0200 	li	t7,512
    53b4:	24100400 	li	s0,1024
    53b8:	a72f00fa 	sh	t7,250(t9)
    53bc:	8d030168 	lw	v1,360(t0)
    53c0:	24050a40 	li	a1,2624
    53c4:	846200fa 	lh	v0,250(v1)
    53c8:	a46200f8 	sh	v0,248(v1)
    53cc:	8d180168 	lw	t8,360(t0)
    53d0:	a70200ea 	sh	v0,234(t8)
    53d4:	8d0e0168 	lw	t6,360(t0)
    53d8:	a5c200d8 	sh	v0,216(t6)
    53dc:	8d0f0168 	lw	t7,360(t0)
    53e0:	a5e200ba 	sh	v0,186(t7)
    53e4:	8d190168 	lw	t9,360(t0)
    53e8:	a72200b8 	sh	v0,184(t9)
    53ec:	8d180168 	lw	t8,360(t0)
    53f0:	a70200aa 	sh	v0,170(t8)
    53f4:	8d0e0168 	lw	t6,360(t0)
    53f8:	a5c20098 	sh	v0,152(t6)
    53fc:	8d0f0168 	lw	t7,360(t0)
    5400:	a5e2007a 	sh	v0,122(t7)
    5404:	8d190168 	lw	t9,360(t0)
    5408:	a7220078 	sh	v0,120(t9)
    540c:	8d180168 	lw	t8,360(t0)
    5410:	a702006a 	sh	v0,106(t8)
    5414:	8d0e0168 	lw	t6,360(t0)
    5418:	a5c20058 	sh	v0,88(t6)
    541c:	8d0f0168 	lw	t7,360(t0)
    5420:	a5e2003a 	sh	v0,58(t7)
    5424:	8d190168 	lw	t9,360(t0)
    5428:	a7220038 	sh	v0,56(t9)
    542c:	8d180168 	lw	t8,360(t0)
    5430:	a702002a 	sh	v0,42(t8)
    5434:	8d0e0168 	lw	t6,360(t0)
    5438:	a5c20018 	sh	v0,24(t6)
    543c:	8d0f0168 	lw	t7,360(t0)
    5440:	a5f0013a 	sh	s0,314(t7)
    5444:	8d030168 	lw	v1,360(t0)
    5448:	8466013a 	lh	a2,314(v1)
    544c:	a4660138 	sh	a2,312(v1)
    5450:	8d190168 	lw	t9,360(t0)
    5454:	a726012a 	sh	a2,298(t9)
    5458:	8d180168 	lw	t8,360(t0)
    545c:	a7060118 	sh	a2,280(t8)
    5460:	afa80020 	sw	t0,32(sp)
    5464:	0c000000 	jal	0 <func_8081F1F0>
    5468:	8fa40064 	lw	a0,100(sp)
    546c:	8fa80020 	lw	t0,32(sp)
    5470:	241f00ff 	li	ra,255
    5474:	00006025 	move	t4,zero
    5478:	00005025 	move	t2,zero
    547c:	240d003a 	li	t5,58
    5480:	ad020158 	sw	v0,344(t0)
    5484:	2409ffa0 	li	t1,-96
    5488:	00005825 	move	t3,zero
    548c:	8d0e0158 	lw	t6,344(t0)
    5490:	000a1100 	sll	v0,t2,0x4
    5494:	25230002 	addiu	v1,t1,2
    5498:	01c27821 	addu	t7,t6,v0
    549c:	a5e30020 	sh	v1,32(t7)
    54a0:	8d190158 	lw	t9,344(t0)
    54a4:	256b0001 	addiu	t3,t3,1
    54a8:	000b5c00 	sll	t3,t3,0x10
    54ac:	0322c021 	addu	t8,t9,v0
    54b0:	a7030000 	sh	v1,0(t8)
    54b4:	8d0e0158 	lw	t6,344(t0)
    54b8:	000b5c03 	sra	t3,t3,0x10
    54bc:	25290020 	addiu	t1,t1,32
    54c0:	01c22021 	addu	a0,t6,v0
    54c4:	84870000 	lh	a3,0(a0)
    54c8:	254a0004 	addiu	t2,t2,4
    54cc:	000a5400 	sll	t2,t2,0x10
    54d0:	24e7001c 	addiu	a3,a3,28
    54d4:	00073c00 	sll	a3,a3,0x10
    54d8:	00073c03 	sra	a3,a3,0x10
    54dc:	a4870030 	sh	a3,48(a0)
    54e0:	8d0f0158 	lw	t7,344(t0)
    54e4:	00094c00 	sll	t1,t1,0x10
    54e8:	29610006 	slti	at,t3,6
    54ec:	01e2c821 	addu	t9,t7,v0
    54f0:	a7270010 	sh	a3,16(t9)
    54f4:	8518020a 	lh	t8,522(t0)
    54f8:	8d0e0158 	lw	t6,344(t0)
    54fc:	00094c03 	sra	t1,t1,0x10
    5500:	01b83821 	addu	a3,t5,t8
    5504:	24e7fffe 	addiu	a3,a3,-2
    5508:	00073c00 	sll	a3,a3,0x10
    550c:	00073c03 	sra	a3,a3,0x10
    5510:	01c27821 	addu	t7,t6,v0
    5514:	a5e70012 	sh	a3,18(t7)
    5518:	8d190158 	lw	t9,344(t0)
    551c:	000a5403 	sra	t2,t2,0x10
    5520:	0322c021 	addu	t8,t9,v0
    5524:	a7070002 	sh	a3,2(t8)
    5528:	8d0e0158 	lw	t6,344(t0)
    552c:	01c22021 	addu	a0,t6,v0
    5530:	84870002 	lh	a3,2(a0)
    5534:	24e7ffe4 	addiu	a3,a3,-28
    5538:	00073c00 	sll	a3,a3,0x10
    553c:	00073c03 	sra	a3,a3,0x10
    5540:	a4870032 	sh	a3,50(a0)
    5544:	8d0f0158 	lw	t7,344(t0)
    5548:	01e2c821 	addu	t9,t7,v0
    554c:	a7270022 	sh	a3,34(t9)
    5550:	8d180158 	lw	t8,344(t0)
    5554:	03027021 	addu	t6,t8,v0
    5558:	a5c00034 	sh	zero,52(t6)
    555c:	8d0f0158 	lw	t7,344(t0)
    5560:	01e22021 	addu	a0,t7,v0
    5564:	84860034 	lh	a2,52(a0)
    5568:	a4860024 	sh	a2,36(a0)
    556c:	8d190158 	lw	t9,344(t0)
    5570:	0322c021 	addu	t8,t9,v0
    5574:	a7060014 	sh	a2,20(t8)
    5578:	8d0e0158 	lw	t6,344(t0)
    557c:	01c27821 	addu	t7,t6,v0
    5580:	a5e60004 	sh	a2,4(t7)
    5584:	8d190158 	lw	t9,344(t0)
    5588:	0322c021 	addu	t8,t9,v0
    558c:	a7000036 	sh	zero,54(t8)
    5590:	8d0e0158 	lw	t6,344(t0)
    5594:	01c22021 	addu	a0,t6,v0
    5598:	94860036 	lhu	a2,54(a0)
    559c:	a4860026 	sh	a2,38(a0)
    55a0:	8d0f0158 	lw	t7,344(t0)
    55a4:	01e2c821 	addu	t9,t7,v0
    55a8:	a7260016 	sh	a2,22(t9)
    55ac:	8d180158 	lw	t8,344(t0)
    55b0:	03027021 	addu	t6,t8,v0
    55b4:	a5c60006 	sh	a2,6(t6)
    55b8:	8d0f0158 	lw	t7,344(t0)
    55bc:	01e2c821 	addu	t9,t7,v0
    55c0:	a7200028 	sh	zero,40(t9)
    55c4:	8d180158 	lw	t8,344(t0)
    55c8:	03022021 	addu	a0,t8,v0
    55cc:	84870028 	lh	a3,40(a0)
    55d0:	a487001a 	sh	a3,26(a0)
    55d4:	8d0e0158 	lw	t6,344(t0)
    55d8:	01c27821 	addu	t7,t6,v0
    55dc:	a5e7000a 	sh	a3,10(t7)
    55e0:	8d190158 	lw	t9,344(t0)
    55e4:	0322c021 	addu	t8,t9,v0
    55e8:	a7070008 	sh	a3,8(t8)
    55ec:	8d0e0158 	lw	t6,344(t0)
    55f0:	01c27821 	addu	t7,t6,v0
    55f4:	a5f0003a 	sh	s0,58(t7)
    55f8:	8d190158 	lw	t9,344(t0)
    55fc:	03222021 	addu	a0,t9,v0
    5600:	8486003a 	lh	a2,58(a0)
    5604:	a4860038 	sh	a2,56(a0)
    5608:	8d180158 	lw	t8,344(t0)
    560c:	03027021 	addu	t6,t8,v0
    5610:	a5c6002a 	sh	a2,42(t6)
    5614:	8d0f0158 	lw	t7,344(t0)
    5618:	01e2c821 	addu	t9,t7,v0
    561c:	a7260018 	sh	a2,24(t9)
    5620:	8d180158 	lw	t8,344(t0)
    5624:	03027021 	addu	t6,t8,v0
    5628:	a1df003e 	sb	ra,62(t6)
    562c:	8d0f0158 	lw	t7,344(t0)
    5630:	01e22021 	addu	a0,t7,v0
    5634:	9083003e 	lbu	v1,62(a0)
    5638:	a083002e 	sb	v1,46(a0)
    563c:	8d190158 	lw	t9,344(t0)
    5640:	0322c021 	addu	t8,t9,v0
    5644:	a303001e 	sb	v1,30(t8)
    5648:	8d0e0158 	lw	t6,344(t0)
    564c:	01c27821 	addu	t7,t6,v0
    5650:	a1e3000e 	sb	v1,14(t7)
    5654:	8d190158 	lw	t9,344(t0)
    5658:	0322c021 	addu	t8,t9,v0
    565c:	a303003d 	sb	v1,61(t8)
    5660:	8d0e0158 	lw	t6,344(t0)
    5664:	01c27821 	addu	t7,t6,v0
    5668:	a1e3002d 	sb	v1,45(t7)
    566c:	8d190158 	lw	t9,344(t0)
    5670:	0322c021 	addu	t8,t9,v0
    5674:	a303001d 	sb	v1,29(t8)
    5678:	8d0e0158 	lw	t6,344(t0)
    567c:	01c27821 	addu	t7,t6,v0
    5680:	a1e3000d 	sb	v1,13(t7)
    5684:	8d190158 	lw	t9,344(t0)
    5688:	0322c021 	addu	t8,t9,v0
    568c:	a303003c 	sb	v1,60(t8)
    5690:	8d0e0158 	lw	t6,344(t0)
    5694:	01c27821 	addu	t7,t6,v0
    5698:	a1e3002c 	sb	v1,44(t7)
    569c:	8d190158 	lw	t9,344(t0)
    56a0:	0322c021 	addu	t8,t9,v0
    56a4:	a303001c 	sb	v1,28(t8)
    56a8:	8d0e0158 	lw	t6,344(t0)
    56ac:	01c27821 	addu	t7,t6,v0
    56b0:	a1e3000c 	sb	v1,12(t7)
    56b4:	8d190158 	lw	t9,344(t0)
    56b8:	0322c021 	addu	t8,t9,v0
    56bc:	a31f003f 	sb	ra,63(t8)
    56c0:	8d0e0158 	lw	t6,344(t0)
    56c4:	01c22021 	addu	a0,t6,v0
    56c8:	9085003f 	lbu	a1,63(a0)
    56cc:	a085002f 	sb	a1,47(a0)
    56d0:	8d0f0158 	lw	t7,344(t0)
    56d4:	01e2c821 	addu	t9,t7,v0
    56d8:	a325001f 	sb	a1,31(t9)
    56dc:	8d180158 	lw	t8,344(t0)
    56e0:	03027021 	addu	t6,t8,v0
    56e4:	1420ff69 	bnez	at,548c <func_8082409C+0x5e0>
    56e8:	a1c5000f 	sb	a1,15(t6)
    56ec:	258c0001 	addiu	t4,t4,1
    56f0:	000c6400 	sll	t4,t4,0x10
    56f4:	000c6403 	sra	t4,t4,0x10
    56f8:	25adffe0 	addiu	t5,t5,-32
    56fc:	000d6c00 	sll	t5,t5,0x10
    5700:	29810004 	slti	at,t4,4
    5704:	1420ff5f 	bnez	at,5484 <func_8082409C+0x5d8>
    5708:	000d6c03 	sra	t5,t5,0x10
    570c:	240b0001 	li	t3,1
    5710:	240dfed4 	li	t5,-300
    5714:	240900ff 	li	t1,255
    5718:	3c060000 	lui	a2,0x0
    571c:	00cb3021 	addu	a2,a2,t3
    5720:	90c6006b 	lbu	a2,107(a2)
    5724:	256b0001 	addiu	t3,t3,1
    5728:	000b5c00 	sll	t3,t3,0x10
    572c:	11260096 	beq	t1,a2,5988 <func_8082409C+0xadc>
    5730:	000b5c03 	sra	t3,t3,0x10
    5734:	8d030158 	lw	v1,344(t0)
    5738:	00066480 	sll	t4,a2,0x12
    573c:	000c6403 	sra	t4,t4,0x10
    5740:	000c2900 	sll	a1,t4,0x4
    5744:	00657821 	addu	t7,v1,a1
    5748:	85e70000 	lh	a3,0(t7)
    574c:	000a1100 	sll	v0,t2,0x4
    5750:	0062c821 	addu	t9,v1,v0
    5754:	24e7fffe 	addiu	a3,a3,-2
    5758:	00073c00 	sll	a3,a3,0x10
    575c:	00073c03 	sra	a3,a3,0x10
    5760:	a7270020 	sh	a3,32(t9)
    5764:	8d180158 	lw	t8,344(t0)
    5768:	03027021 	addu	t6,t8,v0
    576c:	a5c70000 	sh	a3,0(t6)
    5770:	8d0f0158 	lw	t7,344(t0)
    5774:	01e22021 	addu	a0,t7,v0
    5778:	84870000 	lh	a3,0(a0)
    577c:	24e70020 	addiu	a3,a3,32
    5780:	00073c00 	sll	a3,a3,0x10
    5784:	00073c03 	sra	a3,a3,0x10
    5788:	a4870030 	sh	a3,48(a0)
    578c:	8d190158 	lw	t9,344(t0)
    5790:	0322c021 	addu	t8,t9,v0
    5794:	a7070010 	sh	a3,16(t8)
    5798:	8d030158 	lw	v1,344(t0)
    579c:	00657021 	addu	t6,v1,a1
    57a0:	85c70002 	lh	a3,2(t6)
    57a4:	00627821 	addu	t7,v1,v0
    57a8:	24e70002 	addiu	a3,a3,2
    57ac:	00073c00 	sll	a3,a3,0x10
    57b0:	00073c03 	sra	a3,a3,0x10
    57b4:	a5e70012 	sh	a3,18(t7)
    57b8:	8d190158 	lw	t9,344(t0)
    57bc:	0322c021 	addu	t8,t9,v0
    57c0:	a7070002 	sh	a3,2(t8)
    57c4:	8d0e0158 	lw	t6,344(t0)
    57c8:	01c22021 	addu	a0,t6,v0
    57cc:	84870002 	lh	a3,2(a0)
    57d0:	24e7ffe0 	addiu	a3,a3,-32
    57d4:	00073c00 	sll	a3,a3,0x10
    57d8:	00073c03 	sra	a3,a3,0x10
    57dc:	a4870032 	sh	a3,50(a0)
    57e0:	8d0f0158 	lw	t7,344(t0)
    57e4:	01e2c821 	addu	t9,t7,v0
    57e8:	a7270022 	sh	a3,34(t9)
    57ec:	8d180158 	lw	t8,344(t0)
    57f0:	03027021 	addu	t6,t8,v0
    57f4:	a5c00034 	sh	zero,52(t6)
    57f8:	8d0f0158 	lw	t7,344(t0)
    57fc:	01e22021 	addu	a0,t7,v0
    5800:	84870034 	lh	a3,52(a0)
    5804:	a4870024 	sh	a3,36(a0)
    5808:	8d190158 	lw	t9,344(t0)
    580c:	0322c021 	addu	t8,t9,v0
    5810:	a7070014 	sh	a3,20(t8)
    5814:	8d0e0158 	lw	t6,344(t0)
    5818:	01c27821 	addu	t7,t6,v0
    581c:	a5e70004 	sh	a3,4(t7)
    5820:	8d190158 	lw	t9,344(t0)
    5824:	0322c021 	addu	t8,t9,v0
    5828:	a7000036 	sh	zero,54(t8)
    582c:	8d0e0158 	lw	t6,344(t0)
    5830:	01c22021 	addu	a0,t6,v0
    5834:	94860036 	lhu	a2,54(a0)
    5838:	a4860026 	sh	a2,38(a0)
    583c:	8d0f0158 	lw	t7,344(t0)
    5840:	01e2c821 	addu	t9,t7,v0
    5844:	a7260016 	sh	a2,22(t9)
    5848:	8d180158 	lw	t8,344(t0)
    584c:	03027021 	addu	t6,t8,v0
    5850:	a5c60006 	sh	a2,6(t6)
    5854:	8d0f0158 	lw	t7,344(t0)
    5858:	01e2c821 	addu	t9,t7,v0
    585c:	a7200028 	sh	zero,40(t9)
    5860:	8d180158 	lw	t8,344(t0)
    5864:	03022021 	addu	a0,t8,v0
    5868:	84860028 	lh	a2,40(a0)
    586c:	a486001a 	sh	a2,26(a0)
    5870:	8d0e0158 	lw	t6,344(t0)
    5874:	01c27821 	addu	t7,t6,v0
    5878:	a5e6000a 	sh	a2,10(t7)
    587c:	8d190158 	lw	t9,344(t0)
    5880:	0322c021 	addu	t8,t9,v0
    5884:	a7060008 	sh	a2,8(t8)
    5888:	8d0e0158 	lw	t6,344(t0)
    588c:	01c27821 	addu	t7,t6,v0
    5890:	a5f0003a 	sh	s0,58(t7)
    5894:	8d190158 	lw	t9,344(t0)
    5898:	03222021 	addu	a0,t9,v0
    589c:	8486003a 	lh	a2,58(a0)
    58a0:	a4860038 	sh	a2,56(a0)
    58a4:	8d180158 	lw	t8,344(t0)
    58a8:	03027021 	addu	t6,t8,v0
    58ac:	a5c6002a 	sh	a2,42(t6)
    58b0:	8d0f0158 	lw	t7,344(t0)
    58b4:	01e2c821 	addu	t9,t7,v0
    58b8:	a7260018 	sh	a2,24(t9)
    58bc:	8d180158 	lw	t8,344(t0)
    58c0:	03027021 	addu	t6,t8,v0
    58c4:	a1df003e 	sb	ra,62(t6)
    58c8:	8d0f0158 	lw	t7,344(t0)
    58cc:	01e22021 	addu	a0,t7,v0
    58d0:	9083003e 	lbu	v1,62(a0)
    58d4:	a083002e 	sb	v1,46(a0)
    58d8:	8d190158 	lw	t9,344(t0)
    58dc:	0322c021 	addu	t8,t9,v0
    58e0:	a303001e 	sb	v1,30(t8)
    58e4:	8d0e0158 	lw	t6,344(t0)
    58e8:	01c27821 	addu	t7,t6,v0
    58ec:	a1e3000e 	sb	v1,14(t7)
    58f0:	8d190158 	lw	t9,344(t0)
    58f4:	0322c021 	addu	t8,t9,v0
    58f8:	a303003d 	sb	v1,61(t8)
    58fc:	8d0e0158 	lw	t6,344(t0)
    5900:	01c27821 	addu	t7,t6,v0
    5904:	a1e3002d 	sb	v1,45(t7)
    5908:	8d190158 	lw	t9,344(t0)
    590c:	0322c021 	addu	t8,t9,v0
    5910:	a303001d 	sb	v1,29(t8)
    5914:	8d0e0158 	lw	t6,344(t0)
    5918:	01c27821 	addu	t7,t6,v0
    591c:	a1e3000d 	sb	v1,13(t7)
    5920:	8d190158 	lw	t9,344(t0)
    5924:	0322c021 	addu	t8,t9,v0
    5928:	a303003c 	sb	v1,60(t8)
    592c:	8d0e0158 	lw	t6,344(t0)
    5930:	01c27821 	addu	t7,t6,v0
    5934:	a1e3002c 	sb	v1,44(t7)
    5938:	8d190158 	lw	t9,344(t0)
    593c:	0322c021 	addu	t8,t9,v0
    5940:	a303001c 	sb	v1,28(t8)
    5944:	8d0e0158 	lw	t6,344(t0)
    5948:	01c27821 	addu	t7,t6,v0
    594c:	a1e3000c 	sb	v1,12(t7)
    5950:	8d190158 	lw	t9,344(t0)
    5954:	91060209 	lbu	a2,521(t0)
    5958:	0322c021 	addu	t8,t9,v0
    595c:	a306003f 	sb	a2,63(t8)
    5960:	8d0e0158 	lw	t6,344(t0)
    5964:	01c27821 	addu	t7,t6,v0
    5968:	a1e6002f 	sb	a2,47(t7)
    596c:	8d190158 	lw	t9,344(t0)
    5970:	0322c021 	addu	t8,t9,v0
    5974:	a306001f 	sb	a2,31(t8)
    5978:	8d0e0158 	lw	t6,344(t0)
    597c:	01c27821 	addu	t7,t6,v0
    5980:	10000025 	b	5a18 <func_8082409C+0xb6c>
    5984:	a1e6000f 	sb	a2,15(t7)
    5988:	8d190158 	lw	t9,344(t0)
    598c:	000a1100 	sll	v0,t2,0x4
    5990:	0322c021 	addu	t8,t9,v0
    5994:	a70d0020 	sh	t5,32(t8)
    5998:	8d0e0158 	lw	t6,344(t0)
    599c:	01c22021 	addu	a0,t6,v0
    59a0:	848f0020 	lh	t7,32(a0)
    59a4:	a48f0000 	sh	t7,0(a0)
    59a8:	8d190158 	lw	t9,344(t0)
    59ac:	240f012c 	li	t7,300
    59b0:	03222021 	addu	a0,t9,v0
    59b4:	84870000 	lh	a3,0(a0)
    59b8:	24e70020 	addiu	a3,a3,32
    59bc:	00073c00 	sll	a3,a3,0x10
    59c0:	00073c03 	sra	a3,a3,0x10
    59c4:	a4870030 	sh	a3,48(a0)
    59c8:	8d180158 	lw	t8,344(t0)
    59cc:	03027021 	addu	t6,t8,v0
    59d0:	a5c70010 	sh	a3,16(t6)
    59d4:	8d190158 	lw	t9,344(t0)
    59d8:	0322c021 	addu	t8,t9,v0
    59dc:	a70f0012 	sh	t7,18(t8)
    59e0:	8d0e0158 	lw	t6,344(t0)
    59e4:	01c22021 	addu	a0,t6,v0
    59e8:	84990012 	lh	t9,18(a0)
    59ec:	a4990002 	sh	t9,2(a0)
    59f0:	8d0f0158 	lw	t7,344(t0)
    59f4:	01e22021 	addu	a0,t7,v0
    59f8:	84870002 	lh	a3,2(a0)
    59fc:	24e7ffe0 	addiu	a3,a3,-32
    5a00:	00073c00 	sll	a3,a3,0x10
    5a04:	00073c03 	sra	a3,a3,0x10
    5a08:	a4870032 	sh	a3,50(a0)
    5a0c:	8d180158 	lw	t8,344(t0)
    5a10:	03027021 	addu	t6,t8,v0
    5a14:	a5c70022 	sh	a3,34(t6)
    5a18:	254a0004 	addiu	t2,t2,4
    5a1c:	000a5400 	sll	t2,t2,0x10
    5a20:	29610004 	slti	at,t3,4
    5a24:	1420ff3c 	bnez	at,5718 <func_8082409C+0x86c>
    5a28:	000a5403 	sra	t2,t2,0x10
    5a2c:	3c0d0000 	lui	t5,0x0
    5a30:	25ad0000 	addiu	t5,t5,0
    5a34:	240a006c 	li	t2,108
    5a38:	00005825 	move	t3,zero
    5a3c:	24090100 	li	t1,256
    5a40:	000bc840 	sll	t9,t3,0x1
    5a44:	01b97821 	addu	t7,t5,t9
    5a48:	85ec0000 	lh	t4,0(t7)
    5a4c:	8d030158 	lw	v1,344(t0)
    5a50:	000a1100 	sll	v0,t2,0x4
    5a54:	000c2900 	sll	a1,t4,0x4
    5a58:	0065c021 	addu	t8,v1,a1
    5a5c:	87070000 	lh	a3,0(t8)
    5a60:	00627021 	addu	t6,v1,v0
    5a64:	256b0001 	addiu	t3,t3,1
    5a68:	a5c70020 	sh	a3,32(t6)
    5a6c:	8d190158 	lw	t9,344(t0)
    5a70:	000b5c00 	sll	t3,t3,0x10
    5a74:	000b5c03 	sra	t3,t3,0x10
    5a78:	03227821 	addu	t7,t9,v0
    5a7c:	a5e70000 	sh	a3,0(t7)
    5a80:	8d180158 	lw	t8,344(t0)
    5a84:	00006025 	move	t4,zero
    5a88:	03022021 	addu	a0,t8,v0
    5a8c:	84870000 	lh	a3,0(a0)
    5a90:	24e70008 	addiu	a3,a3,8
    5a94:	00073c00 	sll	a3,a3,0x10
    5a98:	00073c03 	sra	a3,a3,0x10
    5a9c:	a4870030 	sh	a3,48(a0)
    5aa0:	8d0e0158 	lw	t6,344(t0)
    5aa4:	01c2c821 	addu	t9,t6,v0
    5aa8:	a7270010 	sh	a3,16(t9)
    5aac:	8d030158 	lw	v1,344(t0)
    5ab0:	00657821 	addu	t7,v1,a1
    5ab4:	85e70002 	lh	a3,2(t7)
    5ab8:	0062c021 	addu	t8,v1,v0
    5abc:	24e7ffea 	addiu	a3,a3,-22
    5ac0:	00073c00 	sll	a3,a3,0x10
    5ac4:	00073c03 	sra	a3,a3,0x10
    5ac8:	a7070012 	sh	a3,18(t8)
    5acc:	8d0e0158 	lw	t6,344(t0)
    5ad0:	01c2c821 	addu	t9,t6,v0
    5ad4:	a7270002 	sh	a3,2(t9)
    5ad8:	8d0f0158 	lw	t7,344(t0)
    5adc:	01e22021 	addu	a0,t7,v0
    5ae0:	84870002 	lh	a3,2(a0)
    5ae4:	24e7fff8 	addiu	a3,a3,-8
    5ae8:	00073c00 	sll	a3,a3,0x10
    5aec:	00073c03 	sra	a3,a3,0x10
    5af0:	a4870032 	sh	a3,50(a0)
    5af4:	8d180158 	lw	t8,344(t0)
    5af8:	03027021 	addu	t6,t8,v0
    5afc:	a5c70022 	sh	a3,34(t6)
    5b00:	8d190158 	lw	t9,344(t0)
    5b04:	03222021 	addu	a0,t9,v0
    5b08:	84870000 	lh	a3,0(a0)
    5b0c:	24e70006 	addiu	a3,a3,6
    5b10:	00073c00 	sll	a3,a3,0x10
    5b14:	00073c03 	sra	a3,a3,0x10
    5b18:	a4870060 	sh	a3,96(a0)
    5b1c:	8d0f0158 	lw	t7,344(t0)
    5b20:	01e2c021 	addu	t8,t7,v0
    5b24:	a7070040 	sh	a3,64(t8)
    5b28:	8d0e0158 	lw	t6,344(t0)
    5b2c:	01c22021 	addu	a0,t6,v0
    5b30:	84870040 	lh	a3,64(a0)
    5b34:	24e70008 	addiu	a3,a3,8
    5b38:	00073c00 	sll	a3,a3,0x10
    5b3c:	00073c03 	sra	a3,a3,0x10
    5b40:	a4870070 	sh	a3,112(a0)
    5b44:	8d190158 	lw	t9,344(t0)
    5b48:	03227821 	addu	t7,t9,v0
    5b4c:	a5e70050 	sh	a3,80(t7)
    5b50:	8d180158 	lw	t8,344(t0)
    5b54:	03022021 	addu	a0,t8,v0
    5b58:	84870002 	lh	a3,2(a0)
    5b5c:	a4870052 	sh	a3,82(a0)
    5b60:	8d0e0158 	lw	t6,344(t0)
    5b64:	01c2c821 	addu	t9,t6,v0
    5b68:	a7270042 	sh	a3,66(t9)
    5b6c:	8d0f0158 	lw	t7,344(t0)
    5b70:	01e22021 	addu	a0,t7,v0
    5b74:	84870042 	lh	a3,66(a0)
    5b78:	24e7fff8 	addiu	a3,a3,-8
    5b7c:	00073c00 	sll	a3,a3,0x10
    5b80:	00073c03 	sra	a3,a3,0x10
    5b84:	a4870072 	sh	a3,114(a0)
    5b88:	8d180158 	lw	t8,344(t0)
    5b8c:	03027021 	addu	t6,t8,v0
    5b90:	a5c70062 	sh	a3,98(t6)
    5b94:	8d190158 	lw	t9,344(t0)
    5b98:	000a1100 	sll	v0,t2,0x4
    5b9c:	258c0001 	addiu	t4,t4,1
    5ba0:	03227821 	addu	t7,t9,v0
    5ba4:	a5e00034 	sh	zero,52(t7)
    5ba8:	8d180158 	lw	t8,344(t0)
    5bac:	000c6400 	sll	t4,t4,0x10
    5bb0:	000c6403 	sra	t4,t4,0x10
    5bb4:	03022021 	addu	a0,t8,v0
    5bb8:	84860034 	lh	a2,52(a0)
    5bbc:	254a0004 	addiu	t2,t2,4
    5bc0:	000a5400 	sll	t2,t2,0x10
    5bc4:	a4860024 	sh	a2,36(a0)
    5bc8:	8d0e0158 	lw	t6,344(t0)
    5bcc:	29810002 	slti	at,t4,2
    5bd0:	000a5403 	sra	t2,t2,0x10
    5bd4:	01c2c821 	addu	t9,t6,v0
    5bd8:	a7260014 	sh	a2,20(t9)
    5bdc:	8d0f0158 	lw	t7,344(t0)
    5be0:	01e2c021 	addu	t8,t7,v0
    5be4:	a7060004 	sh	a2,4(t8)
    5be8:	8d0e0158 	lw	t6,344(t0)
    5bec:	01c2c821 	addu	t9,t6,v0
    5bf0:	a7200036 	sh	zero,54(t9)
    5bf4:	8d0f0158 	lw	t7,344(t0)
    5bf8:	01e22021 	addu	a0,t7,v0
    5bfc:	94870036 	lhu	a3,54(a0)
    5c00:	a4870026 	sh	a3,38(a0)
    5c04:	8d180158 	lw	t8,344(t0)
    5c08:	03027021 	addu	t6,t8,v0
    5c0c:	a5c70016 	sh	a3,22(t6)
    5c10:	8d190158 	lw	t9,344(t0)
    5c14:	03227821 	addu	t7,t9,v0
    5c18:	a5e70006 	sh	a3,6(t7)
    5c1c:	8d180158 	lw	t8,344(t0)
    5c20:	03027021 	addu	t6,t8,v0
    5c24:	a5c00028 	sh	zero,40(t6)
    5c28:	8d190158 	lw	t9,344(t0)
    5c2c:	03222021 	addu	a0,t9,v0
    5c30:	84860028 	lh	a2,40(a0)
    5c34:	a486001a 	sh	a2,26(a0)
    5c38:	8d0f0158 	lw	t7,344(t0)
    5c3c:	01e2c021 	addu	t8,t7,v0
    5c40:	a706000a 	sh	a2,10(t8)
    5c44:	8d0e0158 	lw	t6,344(t0)
    5c48:	01c2c821 	addu	t9,t6,v0
    5c4c:	a7260008 	sh	a2,8(t9)
    5c50:	8d0f0158 	lw	t7,344(t0)
    5c54:	01e2c021 	addu	t8,t7,v0
    5c58:	a709003a 	sh	t1,58(t8)
    5c5c:	8d0e0158 	lw	t6,344(t0)
    5c60:	01c22021 	addu	a0,t6,v0
    5c64:	8486003a 	lh	a2,58(a0)
    5c68:	a4860038 	sh	a2,56(a0)
    5c6c:	8d190158 	lw	t9,344(t0)
    5c70:	03227821 	addu	t7,t9,v0
    5c74:	a5e6002a 	sh	a2,42(t7)
    5c78:	8d180158 	lw	t8,344(t0)
    5c7c:	03027021 	addu	t6,t8,v0
    5c80:	a5c60018 	sh	a2,24(t6)
    5c84:	8d190158 	lw	t9,344(t0)
    5c88:	03227821 	addu	t7,t9,v0
    5c8c:	a1ff003e 	sb	ra,62(t7)
    5c90:	8d180158 	lw	t8,344(t0)
    5c94:	03022021 	addu	a0,t8,v0
    5c98:	9083003e 	lbu	v1,62(a0)
    5c9c:	a083002e 	sb	v1,46(a0)
    5ca0:	8d0e0158 	lw	t6,344(t0)
    5ca4:	01c2c821 	addu	t9,t6,v0
    5ca8:	a323001e 	sb	v1,30(t9)
    5cac:	8d0f0158 	lw	t7,344(t0)
    5cb0:	01e2c021 	addu	t8,t7,v0
    5cb4:	a303000e 	sb	v1,14(t8)
    5cb8:	8d0e0158 	lw	t6,344(t0)
    5cbc:	01c2c821 	addu	t9,t6,v0
    5cc0:	a323003d 	sb	v1,61(t9)
    5cc4:	8d0f0158 	lw	t7,344(t0)
    5cc8:	01e2c021 	addu	t8,t7,v0
    5ccc:	a303002d 	sb	v1,45(t8)
    5cd0:	8d0e0158 	lw	t6,344(t0)
    5cd4:	01c2c821 	addu	t9,t6,v0
    5cd8:	a323001d 	sb	v1,29(t9)
    5cdc:	8d0f0158 	lw	t7,344(t0)
    5ce0:	01e2c021 	addu	t8,t7,v0
    5ce4:	a303000d 	sb	v1,13(t8)
    5ce8:	8d0e0158 	lw	t6,344(t0)
    5cec:	01c2c821 	addu	t9,t6,v0
    5cf0:	a323003c 	sb	v1,60(t9)
    5cf4:	8d0f0158 	lw	t7,344(t0)
    5cf8:	01e2c021 	addu	t8,t7,v0
    5cfc:	a303002c 	sb	v1,44(t8)
    5d00:	8d0e0158 	lw	t6,344(t0)
    5d04:	01c2c821 	addu	t9,t6,v0
    5d08:	a323001c 	sb	v1,28(t9)
    5d0c:	8d0f0158 	lw	t7,344(t0)
    5d10:	01e2c021 	addu	t8,t7,v0
    5d14:	a303000c 	sb	v1,12(t8)
    5d18:	8d0e0158 	lw	t6,344(t0)
    5d1c:	91060209 	lbu	a2,521(t0)
    5d20:	01c2c821 	addu	t9,t6,v0
    5d24:	a326003f 	sb	a2,63(t9)
    5d28:	8d0f0158 	lw	t7,344(t0)
    5d2c:	01e2c021 	addu	t8,t7,v0
    5d30:	a306002f 	sb	a2,47(t8)
    5d34:	8d0e0158 	lw	t6,344(t0)
    5d38:	01c2c821 	addu	t9,t6,v0
    5d3c:	a326001f 	sb	a2,31(t9)
    5d40:	8d0f0158 	lw	t7,344(t0)
    5d44:	01e2c021 	addu	t8,t7,v0
    5d48:	1420ff92 	bnez	at,5b94 <func_8082409C+0xce8>
    5d4c:	a306000f 	sb	a2,15(t8)
    5d50:	29610007 	slti	at,t3,7
    5d54:	5420ff3b 	bnezl	at,5a44 <func_8082409C+0xb98>
    5d58:	000bc840 	sll	t9,t3,0x1
    5d5c:	8fa40064 	lw	a0,100(sp)
    5d60:	24050700 	li	a1,1792
    5d64:	0c000000 	jal	0 <func_8081F1F0>
    5d68:	afa80020 	sw	t0,32(sp)
    5d6c:	8fa80020 	lw	t0,32(sp)
    5d70:	241f00ff 	li	ra,255
    5d74:	00006025 	move	t4,zero
    5d78:	ad02015c 	sw	v0,348(t0)
    5d7c:	3c020000 	lui	v0,0x0
    5d80:	24420000 	addiu	v0,v0,0
    5d84:	00005025 	move	t2,zero
    5d88:	240d003a 	li	t5,58
    5d8c:	00005825 	move	t3,zero
    5d90:	000b7040 	sll	t6,t3,0x1
    5d94:	004ec821 	addu	t9,v0,t6
    5d98:	87270000 	lh	a3,0(t9)
    5d9c:	8d0f015c 	lw	t7,348(t0)
    5da0:	000c2900 	sll	a1,t4,0x4
    5da4:	24e70002 	addiu	a3,a3,2
    5da8:	00073c00 	sll	a3,a3,0x10
    5dac:	00073c03 	sra	a3,a3,0x10
    5db0:	01e5c021 	addu	t8,t7,a1
    5db4:	a7070020 	sh	a3,32(t8)
    5db8:	8d0e015c 	lw	t6,348(t0)
    5dbc:	256b0001 	addiu	t3,t3,1
    5dc0:	000b5c00 	sll	t3,t3,0x10
    5dc4:	01c5c821 	addu	t9,t6,a1
    5dc8:	a7270000 	sh	a3,0(t9)
    5dcc:	8d0f015c 	lw	t7,348(t0)
    5dd0:	000b5c03 	sra	t3,t3,0x10
    5dd4:	258c0004 	addiu	t4,t4,4
    5dd8:	01e52021 	addu	a0,t7,a1
    5ddc:	84870000 	lh	a3,0(a0)
    5de0:	000c6400 	sll	t4,t4,0x10
    5de4:	29610004 	slti	at,t3,4
    5de8:	24e7001c 	addiu	a3,a3,28
    5dec:	00073c00 	sll	a3,a3,0x10
    5df0:	00073c03 	sra	a3,a3,0x10
    5df4:	a4870030 	sh	a3,48(a0)
    5df8:	8d18015c 	lw	t8,348(t0)
    5dfc:	000c6403 	sra	t4,t4,0x10
    5e00:	03057021 	addu	t6,t8,a1
    5e04:	a5c70010 	sh	a3,16(t6)
    5e08:	8519020a 	lh	t9,522(t0)
    5e0c:	8d0f015c 	lw	t7,348(t0)
    5e10:	01b93821 	addu	a3,t5,t9
    5e14:	24e7fffe 	addiu	a3,a3,-2
    5e18:	00073c00 	sll	a3,a3,0x10
    5e1c:	00073c03 	sra	a3,a3,0x10
    5e20:	01e5c021 	addu	t8,t7,a1
    5e24:	a7070012 	sh	a3,18(t8)
    5e28:	8d0e015c 	lw	t6,348(t0)
    5e2c:	01c5c821 	addu	t9,t6,a1
    5e30:	a7270002 	sh	a3,2(t9)
    5e34:	8d0f015c 	lw	t7,348(t0)
    5e38:	01e52021 	addu	a0,t7,a1
    5e3c:	84870002 	lh	a3,2(a0)
    5e40:	24e7ffe4 	addiu	a3,a3,-28
    5e44:	00073c00 	sll	a3,a3,0x10
    5e48:	00073c03 	sra	a3,a3,0x10
    5e4c:	a4870032 	sh	a3,50(a0)
    5e50:	8d18015c 	lw	t8,348(t0)
    5e54:	03057021 	addu	t6,t8,a1
    5e58:	a5c70022 	sh	a3,34(t6)
    5e5c:	8d19015c 	lw	t9,348(t0)
    5e60:	03257821 	addu	t7,t9,a1
    5e64:	a5e00034 	sh	zero,52(t7)
    5e68:	8d18015c 	lw	t8,348(t0)
    5e6c:	03052021 	addu	a0,t8,a1
    5e70:	84870034 	lh	a3,52(a0)
    5e74:	a4870024 	sh	a3,36(a0)
    5e78:	8d0e015c 	lw	t6,348(t0)
    5e7c:	01c5c821 	addu	t9,t6,a1
    5e80:	a7270014 	sh	a3,20(t9)
    5e84:	8d0f015c 	lw	t7,348(t0)
    5e88:	01e5c021 	addu	t8,t7,a1
    5e8c:	a7070004 	sh	a3,4(t8)
    5e90:	8d0e015c 	lw	t6,348(t0)
    5e94:	01c5c821 	addu	t9,t6,a1
    5e98:	a7200036 	sh	zero,54(t9)
    5e9c:	8d0f015c 	lw	t7,348(t0)
    5ea0:	01e52021 	addu	a0,t7,a1
    5ea4:	94860036 	lhu	a2,54(a0)
    5ea8:	a4860026 	sh	a2,38(a0)
    5eac:	8d18015c 	lw	t8,348(t0)
    5eb0:	03057021 	addu	t6,t8,a1
    5eb4:	a5c60016 	sh	a2,22(t6)
    5eb8:	8d19015c 	lw	t9,348(t0)
    5ebc:	03257821 	addu	t7,t9,a1
    5ec0:	a5e60006 	sh	a2,6(t7)
    5ec4:	8d18015c 	lw	t8,348(t0)
    5ec8:	03057021 	addu	t6,t8,a1
    5ecc:	a5c00028 	sh	zero,40(t6)
    5ed0:	8d19015c 	lw	t9,348(t0)
    5ed4:	03252021 	addu	a0,t9,a1
    5ed8:	84860028 	lh	a2,40(a0)
    5edc:	a486001a 	sh	a2,26(a0)
    5ee0:	8d0f015c 	lw	t7,348(t0)
    5ee4:	01e5c021 	addu	t8,t7,a1
    5ee8:	a706000a 	sh	a2,10(t8)
    5eec:	8d0e015c 	lw	t6,348(t0)
    5ef0:	01c5c821 	addu	t9,t6,a1
    5ef4:	a7260008 	sh	a2,8(t9)
    5ef8:	8d0f015c 	lw	t7,348(t0)
    5efc:	01e5c021 	addu	t8,t7,a1
    5f00:	a710003a 	sh	s0,58(t8)
    5f04:	8d0e015c 	lw	t6,348(t0)
    5f08:	01c52021 	addu	a0,t6,a1
    5f0c:	8486003a 	lh	a2,58(a0)
    5f10:	a4860038 	sh	a2,56(a0)
    5f14:	8d19015c 	lw	t9,348(t0)
    5f18:	03257821 	addu	t7,t9,a1
    5f1c:	a5e6002a 	sh	a2,42(t7)
    5f20:	8d18015c 	lw	t8,348(t0)
    5f24:	03057021 	addu	t6,t8,a1
    5f28:	a5c60018 	sh	a2,24(t6)
    5f2c:	8d19015c 	lw	t9,348(t0)
    5f30:	03257821 	addu	t7,t9,a1
    5f34:	a1ff003e 	sb	ra,62(t7)
    5f38:	8d18015c 	lw	t8,348(t0)
    5f3c:	03052021 	addu	a0,t8,a1
    5f40:	9083003e 	lbu	v1,62(a0)
    5f44:	a083002e 	sb	v1,46(a0)
    5f48:	8d0e015c 	lw	t6,348(t0)
    5f4c:	01c5c821 	addu	t9,t6,a1
    5f50:	a323001e 	sb	v1,30(t9)
    5f54:	8d0f015c 	lw	t7,348(t0)
    5f58:	01e5c021 	addu	t8,t7,a1
    5f5c:	a303000e 	sb	v1,14(t8)
    5f60:	8d0e015c 	lw	t6,348(t0)
    5f64:	01c5c821 	addu	t9,t6,a1
    5f68:	a323003d 	sb	v1,61(t9)
    5f6c:	8d0f015c 	lw	t7,348(t0)
    5f70:	01e5c021 	addu	t8,t7,a1
    5f74:	a303002d 	sb	v1,45(t8)
    5f78:	8d0e015c 	lw	t6,348(t0)
    5f7c:	01c5c821 	addu	t9,t6,a1
    5f80:	a323001d 	sb	v1,29(t9)
    5f84:	8d0f015c 	lw	t7,348(t0)
    5f88:	01e5c021 	addu	t8,t7,a1
    5f8c:	a303000d 	sb	v1,13(t8)
    5f90:	8d0e015c 	lw	t6,348(t0)
    5f94:	01c5c821 	addu	t9,t6,a1
    5f98:	a323003c 	sb	v1,60(t9)
    5f9c:	8d0f015c 	lw	t7,348(t0)
    5fa0:	01e5c021 	addu	t8,t7,a1
    5fa4:	a303002c 	sb	v1,44(t8)
    5fa8:	8d0e015c 	lw	t6,348(t0)
    5fac:	01c5c821 	addu	t9,t6,a1
    5fb0:	a323001c 	sb	v1,28(t9)
    5fb4:	8d0f015c 	lw	t7,348(t0)
    5fb8:	01e5c021 	addu	t8,t7,a1
    5fbc:	a303000c 	sb	v1,12(t8)
    5fc0:	8d0e015c 	lw	t6,348(t0)
    5fc4:	91060209 	lbu	a2,521(t0)
    5fc8:	01c5c821 	addu	t9,t6,a1
    5fcc:	a326003f 	sb	a2,63(t9)
    5fd0:	8d0f015c 	lw	t7,348(t0)
    5fd4:	01e5c021 	addu	t8,t7,a1
    5fd8:	a306002f 	sb	a2,47(t8)
    5fdc:	8d0e015c 	lw	t6,348(t0)
    5fe0:	01c5c821 	addu	t9,t6,a1
    5fe4:	a326001f 	sb	a2,31(t9)
    5fe8:	8d0f015c 	lw	t7,348(t0)
    5fec:	01e5c021 	addu	t8,t7,a1
    5ff0:	1420ff67 	bnez	at,5d90 <func_8082409C+0xee4>
    5ff4:	a306000f 	sb	a2,15(t8)
    5ff8:	254a0001 	addiu	t2,t2,1
    5ffc:	000a5400 	sll	t2,t2,0x10
    6000:	000a5403 	sra	t2,t2,0x10
    6004:	25adffe0 	addiu	t5,t5,-32
    6008:	000d6c00 	sll	t5,t5,0x10
    600c:	29410004 	slti	at,t2,4
    6010:	1420ff5e 	bnez	at,5d8c <func_8082409C+0xee0>
    6014:	000d6c03 	sra	t5,t5,0x10
    6018:	3c0d0000 	lui	t5,0x0
    601c:	3c090000 	lui	t1,0x0
    6020:	25290000 	addiu	t1,t1,0
    6024:	25ad0000 	addiu	t5,t5,0
    6028:	00005825 	move	t3,zero
    602c:	000bc840 	sll	t9,t3,0x1
    6030:	01397821 	addu	t7,t1,t9
    6034:	3c0e0000 	lui	t6,0x0
    6038:	95ce0070 	lhu	t6,112(t6)
    603c:	95f80000 	lhu	t8,0(t7)
    6040:	01ab7821 	addu	t7,t5,t3
    6044:	01d8c824 	and	t9,t6,t8
    6048:	91ee0000 	lbu	t6,0(t7)
    604c:	3c180000 	lui	t8,0x0
    6050:	030bc021 	addu	t8,t8,t3
    6054:	01d93007 	srav	a2,t9,t6
    6058:	50c0009a 	beqzl	a2,62c4 <func_8082409C+0x1418>
    605c:	256b0001 	addiu	t3,t3,1
    6060:	93180000 	lbu	t8,0(t8)
    6064:	8d03015c 	lw	v1,348(t0)
    6068:	000c2900 	sll	a1,t4,0x4
    606c:	03065021 	addu	t2,t8,a2
    6070:	000a5080 	sll	t2,t2,0x2
    6074:	254afffc 	addiu	t2,t2,-4
    6078:	000a5400 	sll	t2,t2,0x10
    607c:	000a5403 	sra	t2,t2,0x10
    6080:	000a1100 	sll	v0,t2,0x4
    6084:	00627821 	addu	t7,v1,v0
    6088:	85e70000 	lh	a3,0(t7)
    608c:	0065c821 	addu	t9,v1,a1
    6090:	24e7fffe 	addiu	a3,a3,-2
    6094:	00073c00 	sll	a3,a3,0x10
    6098:	00073c03 	sra	a3,a3,0x10
    609c:	a7270020 	sh	a3,32(t9)
    60a0:	8d0e015c 	lw	t6,348(t0)
    60a4:	01c5c021 	addu	t8,t6,a1
    60a8:	a7070000 	sh	a3,0(t8)
    60ac:	8d0f015c 	lw	t7,348(t0)
    60b0:	01e52021 	addu	a0,t7,a1
    60b4:	84870000 	lh	a3,0(a0)
    60b8:	24e70020 	addiu	a3,a3,32
    60bc:	00073c00 	sll	a3,a3,0x10
    60c0:	00073c03 	sra	a3,a3,0x10
    60c4:	a4870030 	sh	a3,48(a0)
    60c8:	8d19015c 	lw	t9,348(t0)
    60cc:	03257021 	addu	t6,t9,a1
    60d0:	a5c70010 	sh	a3,16(t6)
    60d4:	8d03015c 	lw	v1,348(t0)
    60d8:	0062c021 	addu	t8,v1,v0
    60dc:	87070002 	lh	a3,2(t8)
    60e0:	00657821 	addu	t7,v1,a1
    60e4:	24e70002 	addiu	a3,a3,2
    60e8:	00073c00 	sll	a3,a3,0x10
    60ec:	00073c03 	sra	a3,a3,0x10
    60f0:	a5e70012 	sh	a3,18(t7)
    60f4:	8d19015c 	lw	t9,348(t0)
    60f8:	03257021 	addu	t6,t9,a1
    60fc:	a5c70002 	sh	a3,2(t6)
    6100:	8d18015c 	lw	t8,348(t0)
    6104:	03052021 	addu	a0,t8,a1
    6108:	84870002 	lh	a3,2(a0)
    610c:	24e7ffe0 	addiu	a3,a3,-32
    6110:	00073c00 	sll	a3,a3,0x10
    6114:	00073c03 	sra	a3,a3,0x10
    6118:	a4870032 	sh	a3,50(a0)
    611c:	8d0f015c 	lw	t7,348(t0)
    6120:	01e5c821 	addu	t9,t7,a1
    6124:	a7270022 	sh	a3,34(t9)
    6128:	8d0e015c 	lw	t6,348(t0)
    612c:	01c5c021 	addu	t8,t6,a1
    6130:	a7000034 	sh	zero,52(t8)
    6134:	8d0f015c 	lw	t7,348(t0)
    6138:	01e52021 	addu	a0,t7,a1
    613c:	84860034 	lh	a2,52(a0)
    6140:	a4860024 	sh	a2,36(a0)
    6144:	8d19015c 	lw	t9,348(t0)
    6148:	03257021 	addu	t6,t9,a1
    614c:	a5c60014 	sh	a2,20(t6)
    6150:	8d18015c 	lw	t8,348(t0)
    6154:	03057821 	addu	t7,t8,a1
    6158:	a5e60004 	sh	a2,4(t7)
    615c:	8d19015c 	lw	t9,348(t0)
    6160:	03257021 	addu	t6,t9,a1
    6164:	a5c00036 	sh	zero,54(t6)
    6168:	8d18015c 	lw	t8,348(t0)
    616c:	03052021 	addu	a0,t8,a1
    6170:	94860036 	lhu	a2,54(a0)
    6174:	a4860026 	sh	a2,38(a0)
    6178:	8d0f015c 	lw	t7,348(t0)
    617c:	01e5c821 	addu	t9,t7,a1
    6180:	a7260016 	sh	a2,22(t9)
    6184:	8d0e015c 	lw	t6,348(t0)
    6188:	01c5c021 	addu	t8,t6,a1
    618c:	a7060006 	sh	a2,6(t8)
    6190:	8d0f015c 	lw	t7,348(t0)
    6194:	01e5c821 	addu	t9,t7,a1
    6198:	a7200028 	sh	zero,40(t9)
    619c:	8d0e015c 	lw	t6,348(t0)
    61a0:	01c52021 	addu	a0,t6,a1
    61a4:	84860028 	lh	a2,40(a0)
    61a8:	a486001a 	sh	a2,26(a0)
    61ac:	8d18015c 	lw	t8,348(t0)
    61b0:	03057821 	addu	t7,t8,a1
    61b4:	a5e6000a 	sh	a2,10(t7)
    61b8:	8d19015c 	lw	t9,348(t0)
    61bc:	03257021 	addu	t6,t9,a1
    61c0:	a5c60008 	sh	a2,8(t6)
    61c4:	8d18015c 	lw	t8,348(t0)
    61c8:	03057821 	addu	t7,t8,a1
    61cc:	a5f0003a 	sh	s0,58(t7)
    61d0:	8d19015c 	lw	t9,348(t0)
    61d4:	03252021 	addu	a0,t9,a1
    61d8:	8486003a 	lh	a2,58(a0)
    61dc:	a4860038 	sh	a2,56(a0)
    61e0:	8d0e015c 	lw	t6,348(t0)
    61e4:	01c5c021 	addu	t8,t6,a1
    61e8:	a706002a 	sh	a2,42(t8)
    61ec:	8d0f015c 	lw	t7,348(t0)
    61f0:	01e5c821 	addu	t9,t7,a1
    61f4:	a7260018 	sh	a2,24(t9)
    61f8:	8d0e015c 	lw	t6,348(t0)
    61fc:	01c5c021 	addu	t8,t6,a1
    6200:	a31f003e 	sb	ra,62(t8)
    6204:	8d0f015c 	lw	t7,348(t0)
    6208:	01e52021 	addu	a0,t7,a1
    620c:	9083003e 	lbu	v1,62(a0)
    6210:	a083002e 	sb	v1,46(a0)
    6214:	8d19015c 	lw	t9,348(t0)
    6218:	03257021 	addu	t6,t9,a1
    621c:	a1c3001e 	sb	v1,30(t6)
    6220:	8d18015c 	lw	t8,348(t0)
    6224:	03057821 	addu	t7,t8,a1
    6228:	a1e3000e 	sb	v1,14(t7)
    622c:	8d19015c 	lw	t9,348(t0)
    6230:	03257021 	addu	t6,t9,a1
    6234:	a1c3003d 	sb	v1,61(t6)
    6238:	8d18015c 	lw	t8,348(t0)
    623c:	03057821 	addu	t7,t8,a1
    6240:	a1e3002d 	sb	v1,45(t7)
    6244:	8d19015c 	lw	t9,348(t0)
    6248:	03257021 	addu	t6,t9,a1
    624c:	a1c3001d 	sb	v1,29(t6)
    6250:	8d18015c 	lw	t8,348(t0)
    6254:	03057821 	addu	t7,t8,a1
    6258:	a1e3000d 	sb	v1,13(t7)
    625c:	8d19015c 	lw	t9,348(t0)
    6260:	03257021 	addu	t6,t9,a1
    6264:	a1c3003c 	sb	v1,60(t6)
    6268:	8d18015c 	lw	t8,348(t0)
    626c:	03057821 	addu	t7,t8,a1
    6270:	a1e3002c 	sb	v1,44(t7)
    6274:	8d19015c 	lw	t9,348(t0)
    6278:	03257021 	addu	t6,t9,a1
    627c:	a1c3001c 	sb	v1,28(t6)
    6280:	8d18015c 	lw	t8,348(t0)
    6284:	03057821 	addu	t7,t8,a1
    6288:	a1e3000c 	sb	v1,12(t7)
    628c:	8d19015c 	lw	t9,348(t0)
    6290:	91060209 	lbu	a2,521(t0)
    6294:	03257021 	addu	t6,t9,a1
    6298:	a1c6003f 	sb	a2,63(t6)
    629c:	8d18015c 	lw	t8,348(t0)
    62a0:	03057821 	addu	t7,t8,a1
    62a4:	a1e6002f 	sb	a2,47(t7)
    62a8:	8d19015c 	lw	t9,348(t0)
    62ac:	03257021 	addu	t6,t9,a1
    62b0:	a1c6001f 	sb	a2,31(t6)
    62b4:	8d18015c 	lw	t8,348(t0)
    62b8:	03057821 	addu	t7,t8,a1
    62bc:	a1e6000f 	sb	a2,15(t7)
    62c0:	256b0001 	addiu	t3,t3,1
    62c4:	000b5c00 	sll	t3,t3,0x10
    62c8:	000b5c03 	sra	t3,t3,0x10
    62cc:	258c0004 	addiu	t4,t4,4
    62d0:	000c6400 	sll	t4,t4,0x10
    62d4:	29610004 	slti	at,t3,4
    62d8:	1420ff54 	bnez	at,602c <func_8082409C+0x1180>
    62dc:	000c6403 	sra	t4,t4,0x10
    62e0:	24090070 	li	t1,112
    62e4:	240d0032 	li	t5,50
    62e8:	240a0800 	li	t2,2048
    62ec:	2402ffc0 	li	v0,-64
    62f0:	8d19015c 	lw	t9,348(t0)
    62f4:	000c2900 	sll	a1,t4,0x4
    62f8:	2529ffe0 	addiu	t1,t1,-32
    62fc:	03257021 	addu	t6,t9,a1
    6300:	a5c20020 	sh	v0,32(t6)
    6304:	8d18015c 	lw	t8,348(t0)
    6308:	00094c00 	sll	t1,t1,0x10
    630c:	00094c03 	sra	t1,t1,0x10
    6310:	03052021 	addu	a0,t8,a1
    6314:	848f0020 	lh	t7,32(a0)
    6318:	258c0004 	addiu	t4,t4,4
    631c:	000c6400 	sll	t4,t4,0x10
    6320:	a48f0000 	sh	t7,0(a0)
    6324:	8d19015c 	lw	t9,348(t0)
    6328:	03252021 	addu	a0,t9,a1
    632c:	84870000 	lh	a3,0(a0)
    6330:	24e70040 	addiu	a3,a3,64
    6334:	00073c00 	sll	a3,a3,0x10
    6338:	00073c03 	sra	a3,a3,0x10
    633c:	a4870030 	sh	a3,48(a0)
    6340:	8d0e015c 	lw	t6,348(t0)
    6344:	01c5c021 	addu	t8,t6,a1
    6348:	a7070010 	sh	a3,16(t8)
    634c:	850f020a 	lh	t7,522(t0)
    6350:	8d19015c 	lw	t9,348(t0)
    6354:	01af3821 	addu	a3,t5,t7
    6358:	00073c00 	sll	a3,a3,0x10
    635c:	00073c03 	sra	a3,a3,0x10
    6360:	03257021 	addu	t6,t9,a1
    6364:	a5c70012 	sh	a3,18(t6)
    6368:	8d18015c 	lw	t8,348(t0)
    636c:	25adffe0 	addiu	t5,t5,-32
    6370:	000d6c00 	sll	t5,t5,0x10
    6374:	03057821 	addu	t7,t8,a1
    6378:	a5e70002 	sh	a3,2(t7)
    637c:	8d19015c 	lw	t9,348(t0)
    6380:	000d6c03 	sra	t5,t5,0x10
    6384:	03252021 	addu	a0,t9,a1
    6388:	84870002 	lh	a3,2(a0)
    638c:	24e7ffe0 	addiu	a3,a3,-32
    6390:	00073c00 	sll	a3,a3,0x10
    6394:	00073c03 	sra	a3,a3,0x10
    6398:	a4870032 	sh	a3,50(a0)
    639c:	8d0e015c 	lw	t6,348(t0)
    63a0:	01c5c021 	addu	t8,t6,a1
    63a4:	a7070022 	sh	a3,34(t8)
    63a8:	8d0f015c 	lw	t7,348(t0)
    63ac:	01e5c821 	addu	t9,t7,a1
    63b0:	a7200034 	sh	zero,52(t9)
    63b4:	8d0e015c 	lw	t6,348(t0)
    63b8:	01c52021 	addu	a0,t6,a1
    63bc:	84860034 	lh	a2,52(a0)
    63c0:	a4860024 	sh	a2,36(a0)
    63c4:	8d18015c 	lw	t8,348(t0)
    63c8:	03057821 	addu	t7,t8,a1
    63cc:	a5e60014 	sh	a2,20(t7)
    63d0:	8d19015c 	lw	t9,348(t0)
    63d4:	03257021 	addu	t6,t9,a1
    63d8:	a5c60004 	sh	a2,4(t6)
    63dc:	8d18015c 	lw	t8,348(t0)
    63e0:	03057821 	addu	t7,t8,a1
    63e4:	a5e00036 	sh	zero,54(t7)
    63e8:	8d19015c 	lw	t9,348(t0)
    63ec:	03252021 	addu	a0,t9,a1
    63f0:	94860036 	lhu	a2,54(a0)
    63f4:	a4860026 	sh	a2,38(a0)
    63f8:	8d0e015c 	lw	t6,348(t0)
    63fc:	01c5c021 	addu	t8,t6,a1
    6400:	a7060016 	sh	a2,22(t8)
    6404:	8d0f015c 	lw	t7,348(t0)
    6408:	01e5c821 	addu	t9,t7,a1
    640c:	a7260006 	sh	a2,6(t9)
    6410:	8d0e015c 	lw	t6,348(t0)
    6414:	01c5c021 	addu	t8,t6,a1
    6418:	a7000028 	sh	zero,40(t8)
    641c:	8d0f015c 	lw	t7,348(t0)
    6420:	01e52021 	addu	a0,t7,a1
    6424:	84860028 	lh	a2,40(a0)
    6428:	a486001a 	sh	a2,26(a0)
    642c:	8d19015c 	lw	t9,348(t0)
    6430:	03257021 	addu	t6,t9,a1
    6434:	a5c6000a 	sh	a2,10(t6)
    6438:	8d18015c 	lw	t8,348(t0)
    643c:	03057821 	addu	t7,t8,a1
    6440:	a5e60008 	sh	a2,8(t7)
    6444:	8d19015c 	lw	t9,348(t0)
    6448:	03257021 	addu	t6,t9,a1
    644c:	a5ca0038 	sh	t2,56(t6)
    6450:	8d18015c 	lw	t8,348(t0)
    6454:	03052021 	addu	a0,t8,a1
    6458:	848f0038 	lh	t7,56(a0)
    645c:	a48f0018 	sh	t7,24(a0)
    6460:	8d19015c 	lw	t9,348(t0)
    6464:	03257021 	addu	t6,t9,a1
    6468:	a5d0003a 	sh	s0,58(t6)
    646c:	8d18015c 	lw	t8,348(t0)
    6470:	03052021 	addu	a0,t8,a1
    6474:	848f003a 	lh	t7,58(a0)
    6478:	a48f002a 	sh	t7,42(a0)
    647c:	8d19015c 	lw	t9,348(t0)
    6480:	03257021 	addu	t6,t9,a1
    6484:	a1df003e 	sb	ra,62(t6)
    6488:	8d18015c 	lw	t8,348(t0)
    648c:	03052021 	addu	a0,t8,a1
    6490:	9083003e 	lbu	v1,62(a0)
    6494:	a083002e 	sb	v1,46(a0)
    6498:	8d0f015c 	lw	t7,348(t0)
    649c:	01e5c821 	addu	t9,t7,a1
    64a0:	a323001e 	sb	v1,30(t9)
    64a4:	8d0e015c 	lw	t6,348(t0)
    64a8:	01c5c021 	addu	t8,t6,a1
    64ac:	a303000e 	sb	v1,14(t8)
    64b0:	8d0f015c 	lw	t7,348(t0)
    64b4:	01e5c821 	addu	t9,t7,a1
    64b8:	a323003d 	sb	v1,61(t9)
    64bc:	8d0e015c 	lw	t6,348(t0)
    64c0:	01c5c021 	addu	t8,t6,a1
    64c4:	a303002d 	sb	v1,45(t8)
    64c8:	8d0f015c 	lw	t7,348(t0)
    64cc:	01e5c821 	addu	t9,t7,a1
    64d0:	a323001d 	sb	v1,29(t9)
    64d4:	8d0e015c 	lw	t6,348(t0)
    64d8:	01c5c021 	addu	t8,t6,a1
    64dc:	a303000d 	sb	v1,13(t8)
    64e0:	8d0f015c 	lw	t7,348(t0)
    64e4:	01e5c821 	addu	t9,t7,a1
    64e8:	a323003c 	sb	v1,60(t9)
    64ec:	8d0e015c 	lw	t6,348(t0)
    64f0:	01c5c021 	addu	t8,t6,a1
    64f4:	a303002c 	sb	v1,44(t8)
    64f8:	8d0f015c 	lw	t7,348(t0)
    64fc:	01e5c821 	addu	t9,t7,a1
    6500:	a323001c 	sb	v1,28(t9)
    6504:	8d0e015c 	lw	t6,348(t0)
    6508:	01c5c021 	addu	t8,t6,a1
    650c:	a303000c 	sb	v1,12(t8)
    6510:	8d0f015c 	lw	t7,348(t0)
    6514:	91060209 	lbu	a2,521(t0)
    6518:	01e5c821 	addu	t9,t7,a1
    651c:	a326003f 	sb	a2,63(t9)
    6520:	8d0e015c 	lw	t6,348(t0)
    6524:	01c5c021 	addu	t8,t6,a1
    6528:	a306002f 	sb	a2,47(t8)
    652c:	8d0f015c 	lw	t7,348(t0)
    6530:	01e5c821 	addu	t9,t7,a1
    6534:	a326001f 	sb	a2,31(t9)
    6538:	8d0e015c 	lw	t6,348(t0)
    653c:	01c5c021 	addu	t8,t6,a1
    6540:	05210015 	bgez	t1,6598 <func_8082409C+0x16ec>
    6544:	a306000f 	sb	a2,15(t8)
    6548:	8d0f015c 	lw	t7,348(t0)
    654c:	24180200 	li	t8,512
    6550:	01e52021 	addu	a0,t7,a1
    6554:	84870002 	lh	a3,2(a0)
    6558:	24e7fff0 	addiu	a3,a3,-16
    655c:	00073c00 	sll	a3,a3,0x10
    6560:	00073c03 	sra	a3,a3,0x10
    6564:	a4870032 	sh	a3,50(a0)
    6568:	8d19015c 	lw	t9,348(t0)
    656c:	03257021 	addu	t6,t9,a1
    6570:	a5c70022 	sh	a3,34(t6)
    6574:	8d0f015c 	lw	t7,348(t0)
    6578:	01e5c821 	addu	t9,t7,a1
    657c:	a738003a 	sh	t8,58(t9)
    6580:	8d0e015c 	lw	t6,348(t0)
    6584:	01c52021 	addu	a0,t6,a1
    6588:	848f003a 	lh	t7,58(a0)
    658c:	24050bc0 	li	a1,3008
    6590:	10000003 	b	65a0 <func_8082409C+0x16f4>
    6594:	a48f002a 	sh	t7,42(a0)
    6598:	1000ff55 	b	62f0 <func_8082409C+0x1444>
    659c:	000c6403 	sra	t4,t4,0x10
    65a0:	8fa40064 	lw	a0,100(sp)
    65a4:	0c000000 	jal	0 <func_8081F1F0>
    65a8:	afa80020 	sw	t0,32(sp)
    65ac:	8fa80020 	lw	t0,32(sp)
    65b0:	3c100000 	lui	s0,0x0
    65b4:	3c0d0000 	lui	t5,0x0
    65b8:	241f00ff 	li	ra,255
    65bc:	25ad0000 	addiu	t5,t5,0
    65c0:	26100000 	addiu	s0,s0,0
    65c4:	00006025 	move	t4,zero
    65c8:	00005825 	move	t3,zero
    65cc:	ad020164 	sw	v0,356(t0)
    65d0:	3c180000 	lui	t8,0x0
    65d4:	27180000 	addiu	t8,t8,0
    65d8:	000b1840 	sll	v1,t3,0x1
    65dc:	00784821 	addu	t1,v1,t8
    65e0:	29610006 	slti	at,t3,6
    65e4:	14200004 	bnez	at,65f8 <func_8082409C+0x174c>
    65e8:	852a0000 	lh	t2,0(t1)
    65ec:	29610029 	slti	at,t3,41
    65f0:	14200050 	bnez	at,6734 <func_8082409C+0x1888>
    65f4:	01a37021 	addu	t6,t5,v1
    65f8:	8d0e0164 	lw	t6,356(t0)
    65fc:	01a3c821 	addu	t9,t5,v1
    6600:	87270000 	lh	a3,0(t9)
    6604:	000c2900 	sll	a1,t4,0x4
    6608:	01c57821 	addu	t7,t6,a1
    660c:	a5e70020 	sh	a3,32(t7)
    6610:	8d180164 	lw	t8,356(t0)
    6614:	02032021 	addu	a0,s0,v1
    6618:	29610029 	slti	at,t3,41
    661c:	0305c821 	addu	t9,t8,a1
    6620:	a7270000 	sh	a3,0(t9)
    6624:	8d0e0164 	lw	t6,356(t0)
    6628:	852f0000 	lh	t7,0(t1)
    662c:	01c51021 	addu	v0,t6,a1
    6630:	84580000 	lh	t8,0(v0)
    6634:	01f83821 	addu	a3,t7,t8
    6638:	00073c00 	sll	a3,a3,0x10
    663c:	00073c03 	sra	a3,a3,0x10
    6640:	a4470030 	sh	a3,48(v0)
    6644:	8d190164 	lw	t9,356(t0)
    6648:	03257021 	addu	t6,t9,a1
    664c:	a5c70010 	sh	a3,16(t6)
    6650:	8518020a 	lh	t8,522(t0)
    6654:	848f0000 	lh	t7,0(a0)
    6658:	8d190164 	lw	t9,356(t0)
    665c:	01f83821 	addu	a3,t7,t8
    6660:	00073c00 	sll	a3,a3,0x10
    6664:	00073c03 	sra	a3,a3,0x10
    6668:	03257021 	addu	t6,t9,a1
    666c:	a5c70012 	sh	a3,18(t6)
    6670:	8d0f0164 	lw	t7,356(t0)
    6674:	01e5c021 	addu	t8,t7,a1
    6678:	a7070002 	sh	a3,2(t8)
    667c:	8d190164 	lw	t9,356(t0)
    6680:	852f0000 	lh	t7,0(t1)
    6684:	03251021 	addu	v0,t9,a1
    6688:	844e0002 	lh	t6,2(v0)
    668c:	01cf3823 	subu	a3,t6,t7
    6690:	00073c00 	sll	a3,a3,0x10
    6694:	00073c03 	sra	a3,a3,0x10
    6698:	a4470032 	sh	a3,50(v0)
    669c:	8d180164 	lw	t8,356(t0)
    66a0:	0305c821 	addu	t9,t8,a1
    66a4:	14200058 	bnez	at,6808 <func_8082409C+0x195c>
    66a8:	a7270022 	sh	a3,34(t9)
    66ac:	8d0e0164 	lw	t6,356(t0)
    66b0:	240a0008 	li	t2,8
    66b4:	01c51021 	addu	v0,t6,a1
    66b8:	84470000 	lh	a3,0(v0)
    66bc:	24e70008 	addiu	a3,a3,8
    66c0:	00073c00 	sll	a3,a3,0x10
    66c4:	00073c03 	sra	a3,a3,0x10
    66c8:	a4470030 	sh	a3,48(v0)
    66cc:	8d0f0164 	lw	t7,356(t0)
    66d0:	01e5c021 	addu	t8,t7,a1
    66d4:	a7070010 	sh	a3,16(t8)
    66d8:	850e020a 	lh	t6,522(t0)
    66dc:	84990000 	lh	t9,0(a0)
    66e0:	8d0f0164 	lw	t7,356(t0)
    66e4:	032e3821 	addu	a3,t9,t6
    66e8:	24e7fffa 	addiu	a3,a3,-6
    66ec:	00073c00 	sll	a3,a3,0x10
    66f0:	00073c03 	sra	a3,a3,0x10
    66f4:	01e5c021 	addu	t8,t7,a1
    66f8:	a7070012 	sh	a3,18(t8)
    66fc:	8d190164 	lw	t9,356(t0)
    6700:	03257021 	addu	t6,t9,a1
    6704:	a5c70002 	sh	a3,2(t6)
    6708:	8d0f0164 	lw	t7,356(t0)
    670c:	01e51021 	addu	v0,t7,a1
    6710:	84470002 	lh	a3,2(v0)
    6714:	24e7fff0 	addiu	a3,a3,-16
    6718:	00073c00 	sll	a3,a3,0x10
    671c:	00073c03 	sra	a3,a3,0x10
    6720:	a4470032 	sh	a3,50(v0)
    6724:	8d180164 	lw	t8,356(t0)
    6728:	0305c821 	addu	t9,t8,a1
    672c:	10000036 	b	6808 <func_8082409C+0x195c>
    6730:	a7270022 	sh	a3,34(t9)
    6734:	29610006 	slti	at,t3,6
    6738:	14200004 	bnez	at,674c <func_8082409C+0x18a0>
    673c:	29610012 	slti	at,t3,18
    6740:	50200003 	beqzl	at,6750 <func_8082409C+0x18a4>
    6744:	85c70000 	lh	a3,0(t6)
    6748:	240a0010 	li	t2,16
    674c:	85c70000 	lh	a3,0(t6)
    6750:	8d0f0164 	lw	t7,356(t0)
    6754:	000c2900 	sll	a1,t4,0x4
    6758:	24e70002 	addiu	a3,a3,2
    675c:	00073c00 	sll	a3,a3,0x10
    6760:	00073c03 	sra	a3,a3,0x10
    6764:	01e5c021 	addu	t8,t7,a1
    6768:	a7070020 	sh	a3,32(t8)
    676c:	8d190164 	lw	t9,356(t0)
    6770:	03257021 	addu	t6,t9,a1
    6774:	a5c70000 	sh	a3,0(t6)
    6778:	8d0f0164 	lw	t7,356(t0)
    677c:	01e51021 	addu	v0,t7,a1
    6780:	84580000 	lh	t8,0(v0)
    6784:	02037821 	addu	t7,s0,v1
    6788:	030a3821 	addu	a3,t8,t2
    678c:	24e7fffc 	addiu	a3,a3,-4
    6790:	00073c00 	sll	a3,a3,0x10
    6794:	00073c03 	sra	a3,a3,0x10
    6798:	a4470030 	sh	a3,48(v0)
    679c:	8d190164 	lw	t9,356(t0)
    67a0:	03257021 	addu	t6,t9,a1
    67a4:	a5c70010 	sh	a3,16(t6)
    67a8:	8519020a 	lh	t9,522(t0)
    67ac:	85f80000 	lh	t8,0(t7)
    67b0:	8d0e0164 	lw	t6,356(t0)
    67b4:	03193821 	addu	a3,t8,t9
    67b8:	24e7fffe 	addiu	a3,a3,-2
    67bc:	00073c00 	sll	a3,a3,0x10
    67c0:	00073c03 	sra	a3,a3,0x10
    67c4:	01c57821 	addu	t7,t6,a1
    67c8:	a5e70012 	sh	a3,18(t7)
    67cc:	8d180164 	lw	t8,356(t0)
    67d0:	0305c821 	addu	t9,t8,a1
    67d4:	a7270002 	sh	a3,2(t9)
    67d8:	8d0e0164 	lw	t6,356(t0)
    67dc:	85380000 	lh	t8,0(t1)
    67e0:	01c51021 	addu	v0,t6,a1
    67e4:	844f0002 	lh	t7,2(v0)
    67e8:	01f83823 	subu	a3,t7,t8
    67ec:	24e70004 	addiu	a3,a3,4
    67f0:	00073c00 	sll	a3,a3,0x10
    67f4:	00073c03 	sra	a3,a3,0x10
    67f8:	a4470032 	sh	a3,50(v0)
    67fc:	8d190164 	lw	t9,356(t0)
    6800:	03257021 	addu	t6,t9,a1
    6804:	a5c70022 	sh	a3,34(t6)
    6808:	8d0f0164 	lw	t7,356(t0)
    680c:	000a2140 	sll	a0,t2,0x5
    6810:	256b0001 	addiu	t3,t3,1
    6814:	01e5c021 	addu	t8,t7,a1
    6818:	a7000034 	sh	zero,52(t8)
    681c:	8d190164 	lw	t9,356(t0)
    6820:	000b5c00 	sll	t3,t3,0x10
    6824:	000b5c03 	sra	t3,t3,0x10
    6828:	03251021 	addu	v0,t9,a1
    682c:	84460034 	lh	a2,52(v0)
    6830:	258c0004 	addiu	t4,t4,4
    6834:	000c6400 	sll	t4,t4,0x10
    6838:	a4460024 	sh	a2,36(v0)
    683c:	8d0e0164 	lw	t6,356(t0)
    6840:	2961002f 	slti	at,t3,47
    6844:	000c6403 	sra	t4,t4,0x10
    6848:	01c57821 	addu	t7,t6,a1
    684c:	a5e60014 	sh	a2,20(t7)
    6850:	8d180164 	lw	t8,356(t0)
    6854:	0305c821 	addu	t9,t8,a1
    6858:	a7260004 	sh	a2,4(t9)
    685c:	8d0e0164 	lw	t6,356(t0)
    6860:	01c57821 	addu	t7,t6,a1
    6864:	a5e00036 	sh	zero,54(t7)
    6868:	8d180164 	lw	t8,356(t0)
    686c:	03051021 	addu	v0,t8,a1
    6870:	94470036 	lhu	a3,54(v0)
    6874:	a4470026 	sh	a3,38(v0)
    6878:	8d190164 	lw	t9,356(t0)
    687c:	03257021 	addu	t6,t9,a1
    6880:	a5c70016 	sh	a3,22(t6)
    6884:	8d0f0164 	lw	t7,356(t0)
    6888:	01e5c021 	addu	t8,t7,a1
    688c:	a7070006 	sh	a3,6(t8)
    6890:	8d190164 	lw	t9,356(t0)
    6894:	03257021 	addu	t6,t9,a1
    6898:	a5c00028 	sh	zero,40(t6)
    689c:	8d0f0164 	lw	t7,356(t0)
    68a0:	01e51021 	addu	v0,t7,a1
    68a4:	84460028 	lh	a2,40(v0)
    68a8:	a446001a 	sh	a2,26(v0)
    68ac:	8d180164 	lw	t8,356(t0)
    68b0:	0305c821 	addu	t9,t8,a1
    68b4:	a726000a 	sh	a2,10(t9)
    68b8:	8d0e0164 	lw	t6,356(t0)
    68bc:	01c57821 	addu	t7,t6,a1
    68c0:	a5e60008 	sh	a2,8(t7)
    68c4:	8d180164 	lw	t8,356(t0)
    68c8:	0305c821 	addu	t9,t8,a1
    68cc:	a7240038 	sh	a0,56(t9)
    68d0:	8d0e0164 	lw	t6,356(t0)
    68d4:	01c57821 	addu	t7,t6,a1
    68d8:	a5e40018 	sh	a0,24(t7)
    68dc:	85270000 	lh	a3,0(t1)
    68e0:	8d180164 	lw	t8,356(t0)
    68e4:	00073940 	sll	a3,a3,0x5
    68e8:	00073c00 	sll	a3,a3,0x10
    68ec:	00073c03 	sra	a3,a3,0x10
    68f0:	0305c821 	addu	t9,t8,a1
    68f4:	a727003a 	sh	a3,58(t9)
    68f8:	8d0e0164 	lw	t6,356(t0)
    68fc:	01c57821 	addu	t7,t6,a1
    6900:	a5e7002a 	sh	a3,42(t7)
    6904:	8d180164 	lw	t8,356(t0)
    6908:	0305c821 	addu	t9,t8,a1
    690c:	a33f003e 	sb	ra,62(t9)
    6910:	8d0e0164 	lw	t6,356(t0)
    6914:	01c51021 	addu	v0,t6,a1
    6918:	9043003e 	lbu	v1,62(v0)
    691c:	a043002e 	sb	v1,46(v0)
    6920:	8d0f0164 	lw	t7,356(t0)
    6924:	01e5c021 	addu	t8,t7,a1
    6928:	a303001e 	sb	v1,30(t8)
    692c:	8d190164 	lw	t9,356(t0)
    6930:	03257021 	addu	t6,t9,a1
    6934:	a1c3000e 	sb	v1,14(t6)
    6938:	8d0f0164 	lw	t7,356(t0)
    693c:	01e5c021 	addu	t8,t7,a1
    6940:	a303003d 	sb	v1,61(t8)
    6944:	8d190164 	lw	t9,356(t0)
    6948:	03257021 	addu	t6,t9,a1
    694c:	a1c3002d 	sb	v1,45(t6)
    6950:	8d0f0164 	lw	t7,356(t0)
    6954:	01e5c021 	addu	t8,t7,a1
    6958:	a303001d 	sb	v1,29(t8)
    695c:	8d190164 	lw	t9,356(t0)
    6960:	03257021 	addu	t6,t9,a1
    6964:	a1c3000d 	sb	v1,13(t6)
    6968:	8d0f0164 	lw	t7,356(t0)
    696c:	01e5c021 	addu	t8,t7,a1
    6970:	a303003c 	sb	v1,60(t8)
    6974:	8d190164 	lw	t9,356(t0)
    6978:	03257021 	addu	t6,t9,a1
    697c:	a1c3002c 	sb	v1,44(t6)
    6980:	8d0f0164 	lw	t7,356(t0)
    6984:	01e5c021 	addu	t8,t7,a1
    6988:	a303001c 	sb	v1,28(t8)
    698c:	8d190164 	lw	t9,356(t0)
    6990:	03257021 	addu	t6,t9,a1
    6994:	a1c3000c 	sb	v1,12(t6)
    6998:	8d0f0164 	lw	t7,356(t0)
    699c:	91060209 	lbu	a2,521(t0)
    69a0:	01e5c021 	addu	t8,t7,a1
    69a4:	a306003f 	sb	a2,63(t8)
    69a8:	8d190164 	lw	t9,356(t0)
    69ac:	03257021 	addu	t6,t9,a1
    69b0:	a1c6002f 	sb	a2,47(t6)
    69b4:	8d0f0164 	lw	t7,356(t0)
    69b8:	01e5c021 	addu	t8,t7,a1
    69bc:	a306001f 	sb	a2,31(t8)
    69c0:	8d190164 	lw	t9,356(t0)
    69c4:	03257021 	addu	t6,t9,a1
    69c8:	1420ff01 	bnez	at,65d0 <func_8082409C+0x1724>
    69cc:	a1c6000f 	sb	a2,15(t6)
    69d0:	8fa40064 	lw	a0,100(sp)
    69d4:	240501c0 	li	a1,448
    69d8:	0c000000 	jal	0 <func_8081F1F0>
    69dc:	afa80020 	sw	t0,32(sp)
    69e0:	8fa80020 	lw	t0,32(sp)
    69e4:	24050500 	li	a1,1280
    69e8:	ad020154 	sw	v0,340(t0)
    69ec:	0c000000 	jal	0 <func_8081F1F0>
    69f0:	8fa40064 	lw	a0,100(sp)
    69f4:	8fa80020 	lw	t0,32(sp)
    69f8:	00402825 	move	a1,v0
    69fc:	24060005 	li	a2,5
    6a00:	ad02016c 	sw	v0,364(t0)
    6a04:	8fa40060 	lw	a0,96(sp)
    6a08:	0c000000 	jal	0 <func_8081F1F0>
    6a0c:	24070005 	li	a3,5
    6a10:	8fbf001c 	lw	ra,28(sp)
    6a14:	8fb00018 	lw	s0,24(sp)
    6a18:	27bd0060 	addiu	sp,sp,96
    6a1c:	03e00008 	jr	ra
    6a20:	00000000 	nop

00006a24 <func_80825C14>:
    6a24:	27bdff20 	addiu	sp,sp,-224
    6a28:	afbf0014 	sw	ra,20(sp)
    6a2c:	afa400e0 	sw	a0,224(sp)
    6a30:	8c850000 	lw	a1,0(a0)
    6a34:	3c060000 	lui	a2,0x0
    6a38:	24c60000 	addiu	a2,a2,0
    6a3c:	27a400c8 	addiu	a0,sp,200
    6a40:	24070c32 	li	a3,3122
    6a44:	0c000000 	jal	0 <func_8081F1F0>
    6a48:	afa500dc 	sw	a1,220(sp)
    6a4c:	0c000000 	jal	0 <func_8081F1F0>
    6a50:	8fa400dc 	lw	a0,220(sp)
    6a54:	8fa500dc 	lw	a1,220(sp)
    6a58:	3c18e300 	lui	t8,0xe300
    6a5c:	37180a01 	ori	t8,t8,0xa01
    6a60:	8ca202c0 	lw	v0,704(a1)
    6a64:	3c190010 	lui	t9,0x10
    6a68:	3c060000 	lui	a2,0x0
    6a6c:	244f0008 	addiu	t7,v0,8
    6a70:	acaf02c0 	sw	t7,704(a1)
    6a74:	ac590004 	sw	t9,4(v0)
    6a78:	ac580000 	sw	t8,0(v0)
    6a7c:	8ca202c0 	lw	v0,704(a1)
    6a80:	3c180c18 	lui	t8,0xc18
    6a84:	3c0fe200 	lui	t7,0xe200
    6a88:	244e0008 	addiu	t6,v0,8
    6a8c:	acae02c0 	sw	t6,704(a1)
    6a90:	35ef001c 	ori	t7,t7,0x1c
    6a94:	37184240 	ori	t8,t8,0x4240
    6a98:	ac580004 	sw	t8,4(v0)
    6a9c:	ac4f0000 	sw	t7,0(v0)
    6aa0:	8ca202c0 	lw	v0,704(a1)
    6aa4:	3c0f150c 	lui	t7,0x150c
    6aa8:	3c0efc27 	lui	t6,0xfc27
    6aac:	24590008 	addiu	t9,v0,8
    6ab0:	acb902c0 	sw	t9,704(a1)
    6ab4:	35ce7e60 	ori	t6,t6,0x7e60
    6ab8:	35eff37f 	ori	t7,t7,0xf37f
    6abc:	ac4f0004 	sw	t7,4(v0)
    6ac0:	ac4e0000 	sw	t6,0(v0)
    6ac4:	8ca202c0 	lw	v0,704(a1)
    6ac8:	3c19fa00 	lui	t9,0xfa00
    6acc:	37390050 	ori	t9,t9,0x50
    6ad0:	24580008 	addiu	t8,v0,8
    6ad4:	acb802c0 	sw	t8,704(a1)
    6ad8:	ac590000 	sw	t9,0(v0)
    6adc:	3c190000 	lui	t9,0x0
    6ae0:	3c0e0000 	lui	t6,0x0
    6ae4:	85cf0000 	lh	t7,0(t6)
    6ae8:	87390000 	lh	t9,0(t9)
    6aec:	24c60000 	addiu	a2,a2,0
    6af0:	000fc600 	sll	t8,t7,0x18
    6af4:	332e00ff 	andi	t6,t9,0xff
    6af8:	000e7c00 	sll	t7,t6,0x10
    6afc:	3c0e0000 	lui	t6,0x0
    6b00:	85ce0000 	lh	t6,0(t6)
    6b04:	030fc825 	or	t9,t8,t7
    6b08:	3c08fd70 	lui	t0,0xfd70
    6b0c:	31d800ff 	andi	t8,t6,0xff
    6b10:	00187a00 	sll	t7,t8,0x8
    6b14:	3c180000 	lui	t8,0x0
    6b18:	87180000 	lh	t8,0(t8)
    6b1c:	032f7025 	or	t6,t9,t7
    6b20:	3c09e600 	lui	t1,0xe600
    6b24:	331900ff 	andi	t9,t8,0xff
    6b28:	01d97825 	or	t7,t6,t9
    6b2c:	ac4f0004 	sw	t7,4(v0)
    6b30:	8ca202c0 	lw	v0,704(a1)
    6b34:	3c0efb00 	lui	t6,0xfb00
    6b38:	3c190000 	lui	t9,0x0
    6b3c:	24580008 	addiu	t8,v0,8
    6b40:	acb802c0 	sw	t8,704(a1)
    6b44:	ac4e0000 	sw	t6,0(v0)
    6b48:	3c0e0000 	lui	t6,0x0
    6b4c:	85ce0000 	lh	t6,0(t6)
    6b50:	872f0000 	lh	t7,0(t9)
    6b54:	3c0b073f 	lui	t3,0x73f
    6b58:	31d900ff 	andi	t9,t6,0xff
    6b5c:	000fc600 	sll	t8,t7,0x18
    6b60:	00197c00 	sll	t7,t9,0x10
    6b64:	3c190000 	lui	t9,0x0
    6b68:	87390000 	lh	t9,0(t9)
    6b6c:	030f7025 	or	t6,t8,t7
    6b70:	356bf100 	ori	t3,t3,0xf100
    6b74:	333800ff 	andi	t8,t9,0xff
    6b78:	00187a00 	sll	t7,t8,0x8
    6b7c:	01cfc825 	or	t9,t6,t7
    6b80:	373800ff 	ori	t8,t9,0xff
    6b84:	ac580004 	sw	t8,4(v0)
    6b88:	8cc30000 	lw	v1,0(a2)
    6b8c:	3c180c00 	lui	t8,0xc00
    6b90:	27180000 	addiu	t8,t8,0
    6b94:	846e0fc6 	lh	t6,4038(v1)
    6b98:	3c0af300 	lui	t2,0xf300
    6b9c:	3c0ce700 	lui	t4,0xe700
    6ba0:	25cffffe 	addiu	t7,t6,-2
    6ba4:	a46f0fc6 	sh	t7,4038(v1)
    6ba8:	8ca202c0 	lw	v0,704(a1)
    6bac:	3c0ff570 	lui	t7,0xf570
    6bb0:	3c07f200 	lui	a3,0xf200
    6bb4:	24590008 	addiu	t9,v0,8
    6bb8:	acb902c0 	sw	t9,704(a1)
    6bbc:	ac580004 	sw	t8,4(v0)
    6bc0:	ac480000 	sw	t0,0(v0)
    6bc4:	8ca202c0 	lw	v0,704(a1)
    6bc8:	3c190700 	lui	t9,0x700
    6bcc:	3c01010f 	lui	at,0x10f
    6bd0:	244e0008 	addiu	t6,v0,8
    6bd4:	acae02c0 	sw	t6,704(a1)
    6bd8:	ac590004 	sw	t9,4(v0)
    6bdc:	ac4f0000 	sw	t7,0(v0)
    6be0:	8ca202c0 	lw	v0,704(a1)
    6be4:	3421c000 	ori	at,at,0xc000
    6be8:	3c0de400 	lui	t5,0xe400
    6bec:	24580008 	addiu	t8,v0,8
    6bf0:	acb802c0 	sw	t8,704(a1)
    6bf4:	ac400004 	sw	zero,4(v0)
    6bf8:	ac490000 	sw	t1,0(v0)
    6bfc:	8ca202c0 	lw	v0,704(a1)
    6c00:	3c18f568 	lui	t8,0xf568
    6c04:	37181000 	ori	t8,t8,0x1000
    6c08:	244e0008 	addiu	t6,v0,8
    6c0c:	acae02c0 	sw	t6,704(a1)
    6c10:	ac4b0004 	sw	t3,4(v0)
    6c14:	ac4a0000 	sw	t2,0(v0)
    6c18:	8ca202c0 	lw	v0,704(a1)
    6c1c:	3c1fe100 	lui	ra,0xe100
    6c20:	244f0008 	addiu	t7,v0,8
    6c24:	acaf02c0 	sw	t7,704(a1)
    6c28:	ac400004 	sw	zero,4(v0)
    6c2c:	ac4c0000 	sw	t4,0(v0)
    6c30:	8ca202c0 	lw	v0,704(a1)
    6c34:	3c0f000f 	lui	t7,0xf
    6c38:	35efc07c 	ori	t7,t7,0xc07c
    6c3c:	24590008 	addiu	t9,v0,8
    6c40:	acb902c0 	sw	t9,704(a1)
    6c44:	ac400004 	sw	zero,4(v0)
    6c48:	ac580000 	sw	t8,0(v0)
    6c4c:	8ca202c0 	lw	v0,704(a1)
    6c50:	3c180c00 	lui	t8,0xc00
    6c54:	27181800 	addiu	t8,t8,6144
    6c58:	244e0008 	addiu	t6,v0,8
    6c5c:	acae02c0 	sw	t6,704(a1)
    6c60:	ac4f0004 	sw	t7,4(v0)
    6c64:	ac470000 	sw	a3,0(v0)
    6c68:	8ca202c0 	lw	v0,704(a1)
    6c6c:	3c0ff570 	lui	t7,0xf570
    6c70:	35ef0100 	ori	t7,t7,0x100
    6c74:	24590008 	addiu	t9,v0,8
    6c78:	acb902c0 	sw	t9,704(a1)
    6c7c:	ac580004 	sw	t8,4(v0)
    6c80:	ac480000 	sw	t0,0(v0)
    6c84:	8ca202c0 	lw	v0,704(a1)
    6c88:	3c190701 	lui	t9,0x701
    6c8c:	37394000 	ori	t9,t9,0x4000
    6c90:	244e0008 	addiu	t6,v0,8
    6c94:	acae02c0 	sw	t6,704(a1)
    6c98:	ac590004 	sw	t9,4(v0)
    6c9c:	ac4f0000 	sw	t7,0(v0)
    6ca0:	8ca202c0 	lw	v0,704(a1)
    6ca4:	24580008 	addiu	t8,v0,8
    6ca8:	acb802c0 	sw	t8,704(a1)
    6cac:	ac400004 	sw	zero,4(v0)
    6cb0:	ac490000 	sw	t1,0(v0)
    6cb4:	8ca202c0 	lw	v0,704(a1)
    6cb8:	3c18f568 	lui	t8,0xf568
    6cbc:	37181100 	ori	t8,t8,0x1100
    6cc0:	244e0008 	addiu	t6,v0,8
    6cc4:	acae02c0 	sw	t6,704(a1)
    6cc8:	ac4b0004 	sw	t3,4(v0)
    6ccc:	ac4a0000 	sw	t2,0(v0)
    6cd0:	8ca202c0 	lw	v0,704(a1)
    6cd4:	3c0e0101 	lui	t6,0x101
    6cd8:	35ce4000 	ori	t6,t6,0x4000
    6cdc:	244f0008 	addiu	t7,v0,8
    6ce0:	acaf02c0 	sw	t7,704(a1)
    6ce4:	ac400004 	sw	zero,4(v0)
    6ce8:	ac4c0000 	sw	t4,0(v0)
    6cec:	8ca202c0 	lw	v0,704(a1)
    6cf0:	24590008 	addiu	t9,v0,8
    6cf4:	acb902c0 	sw	t9,704(a1)
    6cf8:	ac4e0004 	sw	t6,4(v0)
    6cfc:	ac580000 	sw	t8,0(v0)
    6d00:	8ca202c0 	lw	v0,704(a1)
    6d04:	3c19010f 	lui	t9,0x10f
    6d08:	3739c07c 	ori	t9,t9,0xc07c
    6d0c:	244f0008 	addiu	t7,v0,8
    6d10:	acaf02c0 	sw	t7,704(a1)
    6d14:	ac590004 	sw	t9,4(v0)
    6d18:	ac470000 	sw	a3,0(v0)
    6d1c:	8ca202c0 	lw	v0,704(a1)
    6d20:	24580008 	addiu	t8,v0,8
    6d24:	acb802c0 	sw	t8,704(a1)
    6d28:	8cce0000 	lw	t6,0(a2)
    6d2c:	85d90fc6 	lh	t9,4038(t6)
    6d30:	3338007f 	andi	t8,t9,0x7f
    6d34:	03077025 	or	t6,t8,a3
    6d38:	ac4e0000 	sw	t6,0(v0)
    6d3c:	8ccf0000 	lw	t7,0(a2)
    6d40:	85f90fc6 	lh	t9,4038(t7)
    6d44:	3338007f 	andi	t8,t9,0x7f
    6d48:	270e007c 	addiu	t6,t8,124
    6d4c:	31cf0fff 	andi	t7,t6,0xfff
    6d50:	01e1c825 	or	t9,t7,at
    6d54:	ac590004 	sw	t9,4(v0)
    6d58:	8ca202c0 	lw	v0,704(a1)
    6d5c:	24580008 	addiu	t8,v0,8
    6d60:	acb802c0 	sw	t8,704(a1)
    6d64:	8cc30000 	lw	v1,0(a2)
    6d68:	846e0fc4 	lh	t6,4036(v1)
    6d6c:	25cf0020 	addiu	t7,t6,32
    6d70:	000fc880 	sll	t9,t7,0x2
    6d74:	846f0fc2 	lh	t7,4034(v1)
    6d78:	33380fff 	andi	t8,t9,0xfff
    6d7c:	030d7025 	or	t6,t8,t5
    6d80:	25f90040 	addiu	t9,t7,64
    6d84:	0019c080 	sll	t8,t9,0x2
    6d88:	330f0fff 	andi	t7,t8,0xfff
    6d8c:	000fcb00 	sll	t9,t7,0xc
    6d90:	01d9c025 	or	t8,t6,t9
    6d94:	ac580000 	sw	t8,0(v0)
    6d98:	8cc30000 	lw	v1,0(a2)
    6d9c:	846f0fc4 	lh	t7,4036(v1)
    6da0:	84780fc2 	lh	t8,4034(v1)
    6da4:	000f7080 	sll	t6,t7,0x2
    6da8:	31d90fff 	andi	t9,t6,0xfff
    6dac:	00187880 	sll	t7,t8,0x2
    6db0:	31ee0fff 	andi	t6,t7,0xfff
    6db4:	000ec300 	sll	t8,t6,0xc
    6db8:	03387825 	or	t7,t9,t8
    6dbc:	ac4f0004 	sw	t7,4(v0)
    6dc0:	8ca202c0 	lw	v0,704(a1)
    6dc4:	3c0f0400 	lui	t7,0x400
    6dc8:	35ef0400 	ori	t7,t7,0x400
    6dcc:	244e0008 	addiu	t6,v0,8
    6dd0:	acae02c0 	sw	t6,704(a1)
    6dd4:	ac400004 	sw	zero,4(v0)
    6dd8:	ac5f0000 	sw	ra,0(v0)
    6ddc:	8ca202c0 	lw	v0,704(a1)
    6de0:	3c18f100 	lui	t8,0xf100
    6de4:	24590008 	addiu	t9,v0,8
    6de8:	acb902c0 	sw	t9,704(a1)
    6dec:	ac4f0004 	sw	t7,4(v0)
    6df0:	ac580000 	sw	t8,0(v0)
    6df4:	8ca202c0 	lw	v0,704(a1)
    6df8:	3c190c00 	lui	t9,0xc00
    6dfc:	27390800 	addiu	t9,t9,2048
    6e00:	244e0008 	addiu	t6,v0,8
    6e04:	acae02c0 	sw	t6,704(a1)
    6e08:	ac590004 	sw	t9,4(v0)
    6e0c:	ac480000 	sw	t0,0(v0)
    6e10:	8ca202c0 	lw	v0,704(a1)
    6e14:	3c0e0708 	lui	t6,0x708
    6e18:	35ce0200 	ori	t6,t6,0x200
    6e1c:	24580008 	addiu	t8,v0,8
    6e20:	acb802c0 	sw	t8,704(a1)
    6e24:	3c0ff570 	lui	t7,0xf570
    6e28:	ac4f0000 	sw	t7,0(v0)
    6e2c:	ac4e0004 	sw	t6,4(v0)
    6e30:	8ca202c0 	lw	v0,704(a1)
    6e34:	24590008 	addiu	t9,v0,8
    6e38:	acb902c0 	sw	t9,704(a1)
    6e3c:	ac400004 	sw	zero,4(v0)
    6e40:	ac490000 	sw	t1,0(v0)
    6e44:	8ca202c0 	lw	v0,704(a1)
    6e48:	3c19f568 	lui	t9,0xf568
    6e4c:	37391000 	ori	t9,t9,0x1000
    6e50:	24580008 	addiu	t8,v0,8
    6e54:	acb802c0 	sw	t8,704(a1)
    6e58:	ac4b0004 	sw	t3,4(v0)
    6e5c:	ac4a0000 	sw	t2,0(v0)
    6e60:	8ca202c0 	lw	v0,704(a1)
    6e64:	3c180008 	lui	t8,0x8
    6e68:	37180200 	ori	t8,t8,0x200
    6e6c:	244f0008 	addiu	t7,v0,8
    6e70:	acaf02c0 	sw	t7,704(a1)
    6e74:	ac400004 	sw	zero,4(v0)
    6e78:	ac4c0000 	sw	t4,0(v0)
    6e7c:	8ca202c0 	lw	v0,704(a1)
    6e80:	27a400c8 	addiu	a0,sp,200
    6e84:	244e0008 	addiu	t6,v0,8
    6e88:	acae02c0 	sw	t6,704(a1)
    6e8c:	ac580004 	sw	t8,4(v0)
    6e90:	ac590000 	sw	t9,0(v0)
    6e94:	8ca202c0 	lw	v0,704(a1)
    6e98:	3c0e000f 	lui	t6,0xf
    6e9c:	35cec07c 	ori	t6,t6,0xc07c
    6ea0:	244f0008 	addiu	t7,v0,8
    6ea4:	acaf02c0 	sw	t7,704(a1)
    6ea8:	ac4e0004 	sw	t6,4(v0)
    6eac:	ac470000 	sw	a3,0(v0)
    6eb0:	8ca202c0 	lw	v0,704(a1)
    6eb4:	24590008 	addiu	t9,v0,8
    6eb8:	acb902c0 	sw	t9,704(a1)
    6ebc:	8cc30000 	lw	v1,0(a2)
    6ec0:	84780fc4 	lh	t8,4036(v1)
    6ec4:	270f0020 	addiu	t7,t8,32
    6ec8:	000f7080 	sll	t6,t7,0x2
    6ecc:	846f0fc2 	lh	t7,4034(v1)
    6ed0:	31d90fff 	andi	t9,t6,0xfff
    6ed4:	032dc025 	or	t8,t9,t5
    6ed8:	25ee0080 	addiu	t6,t7,128
    6edc:	000ec880 	sll	t9,t6,0x2
    6ee0:	332f0fff 	andi	t7,t9,0xfff
    6ee4:	000f7300 	sll	t6,t7,0xc
    6ee8:	030ec825 	or	t9,t8,t6
    6eec:	ac590000 	sw	t9,0(v0)
    6ef0:	8cc30000 	lw	v1,0(a2)
    6ef4:	846f0fc4 	lh	t7,4036(v1)
    6ef8:	84790fc2 	lh	t9,4034(v1)
    6efc:	000fc080 	sll	t8,t7,0x2
    6f00:	330e0fff 	andi	t6,t8,0xfff
    6f04:	272f0040 	addiu	t7,t9,64
    6f08:	000fc080 	sll	t8,t7,0x2
    6f0c:	33190fff 	andi	t9,t8,0xfff
    6f10:	00197b00 	sll	t7,t9,0xc
    6f14:	01cfc025 	or	t8,t6,t7
    6f18:	ac580004 	sw	t8,4(v0)
    6f1c:	8ca202c0 	lw	v0,704(a1)
    6f20:	3c180400 	lui	t8,0x400
    6f24:	37180400 	ori	t8,t8,0x400
    6f28:	24590008 	addiu	t9,v0,8
    6f2c:	acb902c0 	sw	t9,704(a1)
    6f30:	ac400004 	sw	zero,4(v0)
    6f34:	ac5f0000 	sw	ra,0(v0)
    6f38:	8ca202c0 	lw	v0,704(a1)
    6f3c:	3c0ff100 	lui	t7,0xf100
    6f40:	244e0008 	addiu	t6,v0,8
    6f44:	acae02c0 	sw	t6,704(a1)
    6f48:	ac580004 	sw	t8,4(v0)
    6f4c:	ac4f0000 	sw	t7,0(v0)
    6f50:	8ca202c0 	lw	v0,704(a1)
    6f54:	3c0e0c00 	lui	t6,0xc00
    6f58:	25ce1000 	addiu	t6,t6,4096
    6f5c:	24590008 	addiu	t9,v0,8
    6f60:	acb902c0 	sw	t9,704(a1)
    6f64:	ac4e0004 	sw	t6,4(v0)
    6f68:	ac480000 	sw	t0,0(v0)
    6f6c:	8ca202c0 	lw	v0,704(a1)
    6f70:	3c190708 	lui	t9,0x708
    6f74:	37390200 	ori	t9,t9,0x200
    6f78:	244f0008 	addiu	t7,v0,8
    6f7c:	acaf02c0 	sw	t7,704(a1)
    6f80:	3c18f570 	lui	t8,0xf570
    6f84:	ac580000 	sw	t8,0(v0)
    6f88:	ac590004 	sw	t9,4(v0)
    6f8c:	8ca202c0 	lw	v0,704(a1)
    6f90:	244e0008 	addiu	t6,v0,8
    6f94:	acae02c0 	sw	t6,704(a1)
    6f98:	ac400004 	sw	zero,4(v0)
    6f9c:	ac490000 	sw	t1,0(v0)
    6fa0:	8ca202c0 	lw	v0,704(a1)
    6fa4:	3c0ef568 	lui	t6,0xf568
    6fa8:	35ce1000 	ori	t6,t6,0x1000
    6fac:	244f0008 	addiu	t7,v0,8
    6fb0:	acaf02c0 	sw	t7,704(a1)
    6fb4:	ac4b0004 	sw	t3,4(v0)
    6fb8:	ac4a0000 	sw	t2,0(v0)
    6fbc:	8ca202c0 	lw	v0,704(a1)
    6fc0:	3c0f0008 	lui	t7,0x8
    6fc4:	35ef0200 	ori	t7,t7,0x200
    6fc8:	24580008 	addiu	t8,v0,8
    6fcc:	acb802c0 	sw	t8,704(a1)
    6fd0:	ac400004 	sw	zero,4(v0)
    6fd4:	ac4c0000 	sw	t4,0(v0)
    6fd8:	8ca202c0 	lw	v0,704(a1)
    6fdc:	24590008 	addiu	t9,v0,8
    6fe0:	acb902c0 	sw	t9,704(a1)
    6fe4:	ac4f0004 	sw	t7,4(v0)
    6fe8:	ac4e0000 	sw	t6,0(v0)
    6fec:	8ca202c0 	lw	v0,704(a1)
    6ff0:	3c19000f 	lui	t9,0xf
    6ff4:	3739c07c 	ori	t9,t9,0xc07c
    6ff8:	24580008 	addiu	t8,v0,8
    6ffc:	acb802c0 	sw	t8,704(a1)
    7000:	ac590004 	sw	t9,4(v0)
    7004:	ac470000 	sw	a3,0(v0)
    7008:	8ca202c0 	lw	v0,704(a1)
    700c:	24070c61 	li	a3,3169
    7010:	244e0008 	addiu	t6,v0,8
    7014:	acae02c0 	sw	t6,704(a1)
    7018:	8cc30000 	lw	v1,0(a2)
    701c:	846f0fc4 	lh	t7,4036(v1)
    7020:	25f80020 	addiu	t8,t7,32
    7024:	0018c880 	sll	t9,t8,0x2
    7028:	84780fc2 	lh	t8,4034(v1)
    702c:	332e0fff 	andi	t6,t9,0xfff
    7030:	01cd7825 	or	t7,t6,t5
    7034:	271900c0 	addiu	t9,t8,192
    7038:	00197080 	sll	t6,t9,0x2
    703c:	31d80fff 	andi	t8,t6,0xfff
    7040:	0018cb00 	sll	t9,t8,0xc
    7044:	01f97025 	or	t6,t7,t9
    7048:	ac4e0000 	sw	t6,0(v0)
    704c:	8cc30000 	lw	v1,0(a2)
    7050:	3c060000 	lui	a2,0x0
    7054:	24c60000 	addiu	a2,a2,0
    7058:	84780fc4 	lh	t8,4036(v1)
    705c:	846e0fc2 	lh	t6,4034(v1)
    7060:	00187880 	sll	t7,t8,0x2
    7064:	31f90fff 	andi	t9,t7,0xfff
    7068:	25d80080 	addiu	t8,t6,128
    706c:	00187880 	sll	t7,t8,0x2
    7070:	31ee0fff 	andi	t6,t7,0xfff
    7074:	000ec300 	sll	t8,t6,0xc
    7078:	03387825 	or	t7,t9,t8
    707c:	ac4f0004 	sw	t7,4(v0)
    7080:	8ca202c0 	lw	v0,704(a1)
    7084:	3c0f0400 	lui	t7,0x400
    7088:	35ef0400 	ori	t7,t7,0x400
    708c:	244e0008 	addiu	t6,v0,8
    7090:	acae02c0 	sw	t6,704(a1)
    7094:	ac400004 	sw	zero,4(v0)
    7098:	ac5f0000 	sw	ra,0(v0)
    709c:	8ca202c0 	lw	v0,704(a1)
    70a0:	3c18f100 	lui	t8,0xf100
    70a4:	24590008 	addiu	t9,v0,8
    70a8:	acb902c0 	sw	t9,704(a1)
    70ac:	ac4f0004 	sw	t7,4(v0)
    70b0:	0c000000 	jal	0 <func_8081F1F0>
    70b4:	ac580000 	sw	t8,0(v0)
    70b8:	8fbf0014 	lw	ra,20(sp)
    70bc:	27bd00e0 	addiu	sp,sp,224
    70c0:	03e00008 	jr	ra
    70c4:	00000000 	nop

000070c8 <KaleidoScope_Draw>:
    70c8:	27bdff98 	addiu	sp,sp,-104
    70cc:	afbf001c 	sw	ra,28(sp)
    70d0:	afb10018 	sw	s1,24(sp)
    70d4:	afb00014 	sw	s0,20(sp)
    70d8:	8c850000 	lw	a1,0(a0)
    70dc:	00808825 	move	s1,a0
    70e0:	3c060000 	lui	a2,0x0
    70e4:	24c60318 	addiu	a2,a2,792
    70e8:	27a40048 	addiu	a0,sp,72
    70ec:	24070c74 	li	a3,3188
    70f0:	0c000000 	jal	0 <func_8081F1F0>
    70f4:	afa50058 	sw	a1,88(sp)
    70f8:	26220014 	addiu	v0,s1,20
    70fc:	804e0014 	lb	t6,20(v0)
    7100:	3c010001 	lui	at,0x1
    7104:	34210760 	ori	at,at,0x760
    7108:	8fa80058 	lw	t0,88(sp)
    710c:	02218021 	addu	s0,s1,at
    7110:	a60e0214 	sh	t6,532(s0)
    7114:	804f0015 	lb	t7,21(v0)
    7118:	3c19db06 	lui	t9,0xdb06
    711c:	37390008 	ori	t9,t9,0x8
    7120:	a60f0216 	sh	t7,534(s0)
    7124:	8d0202c0 	lw	v0,704(t0)
    7128:	3c090001 	lui	t1,0x1
    712c:	01314821 	addu	t1,t1,s1
    7130:	24580008 	addiu	t8,v0,8
    7134:	ad1802c0 	sw	t8,704(t0)
    7138:	ac590000 	sw	t9,0(v0)
    713c:	8d290620 	lw	t1,1568(t1)
    7140:	3c0bdb06 	lui	t3,0xdb06
    7144:	356b001c 	ori	t3,t3,0x1c
    7148:	ac490004 	sw	t1,4(v0)
    714c:	8d0202c0 	lw	v0,704(t0)
    7150:	3c0edb06 	lui	t6,0xdb06
    7154:	35ce0020 	ori	t6,t6,0x20
    7158:	244a0008 	addiu	t2,v0,8
    715c:	ad0a02c0 	sw	t2,704(t0)
    7160:	ac4b0000 	sw	t3,0(v0)
    7164:	8e0c013c 	lw	t4,316(s0)
    7168:	3c19db06 	lui	t9,0xdb06
    716c:	37390024 	ori	t9,t9,0x24
    7170:	ac4c0004 	sw	t4,4(v0)
    7174:	8d0202c0 	lw	v0,704(t0)
    7178:	3c0bdb06 	lui	t3,0xdb06
    717c:	356b0028 	ori	t3,t3,0x28
    7180:	244d0008 	addiu	t5,v0,8
    7184:	ad0d02c0 	sw	t5,704(t0)
    7188:	ac4e0000 	sw	t6,0(v0)
    718c:	8e0f0128 	lw	t7,296(s0)
    7190:	3c0edb06 	lui	t6,0xdb06
    7194:	35ce0030 	ori	t6,t6,0x30
    7198:	ac4f0004 	sw	t7,4(v0)
    719c:	8d0202c0 	lw	v0,704(t0)
    71a0:	02002025 	move	a0,s0
    71a4:	24580008 	addiu	t8,v0,8
    71a8:	ad1802c0 	sw	t8,704(t0)
    71ac:	ac590000 	sw	t9,0(v0)
    71b0:	8e09012c 	lw	t1,300(s0)
    71b4:	3c19db06 	lui	t9,0xdb06
    71b8:	37390034 	ori	t9,t9,0x34
    71bc:	ac490004 	sw	t1,4(v0)
    71c0:	8d0202c0 	lw	v0,704(t0)
    71c4:	244a0008 	addiu	t2,v0,8
    71c8:	ad0a02c0 	sw	t2,704(t0)
    71cc:	ac4b0000 	sw	t3,0(v0)
    71d0:	8e0c0138 	lw	t4,312(s0)
    71d4:	ac4c0004 	sw	t4,4(v0)
    71d8:	8d0202c0 	lw	v0,704(t0)
    71dc:	244d0008 	addiu	t5,v0,8
    71e0:	ad0d02c0 	sw	t5,704(t0)
    71e4:	ac4e0000 	sw	t6,0(v0)
    71e8:	8e0f0130 	lw	t7,304(s0)
    71ec:	ac4f0004 	sw	t7,4(v0)
    71f0:	8d0202c0 	lw	v0,704(t0)
    71f4:	24580008 	addiu	t8,v0,8
    71f8:	ad1802c0 	sw	t8,704(t0)
    71fc:	ac590000 	sw	t9,0(v0)
    7200:	8e090134 	lw	t1,308(s0)
    7204:	ac490004 	sw	t1,4(v0)
    7208:	960a01d6 	lhu	t2,470(s0)
    720c:	55400029 	bnezl	t2,72b4 <KaleidoScope_Draw+0x1ec>
    7210:	960201d4 	lhu	v0,468(s0)
    7214:	8e0501d8 	lw	a1,472(s0)
    7218:	8e0601dc 	lw	a2,476(s0)
    721c:	8e0701e0 	lw	a3,480(s0)
    7220:	0c000000 	jal	0 <func_8081F1F0>
    7224:	afa80058 	sw	t0,88(sp)
    7228:	0c000000 	jal	0 <func_8081F1F0>
    722c:	8e240000 	lw	a0,0(s1)
    7230:	02202025 	move	a0,s1
    7234:	0c000000 	jal	0 <func_8081F1F0>
    7238:	8e250000 	lw	a1,0(s1)
    723c:	02202025 	move	a0,s1
    7240:	0c000000 	jal	0 <func_8081F1F0>
    7244:	8e250000 	lw	a1,0(s1)
    7248:	0c000000 	jal	0 <func_8081F1F0>
    724c:	8e240000 	lw	a0,0(s1)
    7250:	8fa80058 	lw	t0,88(sp)
    7254:	44800000 	mtc1	zero,$f0
    7258:	3c0cfc30 	lui	t4,0xfc30
    725c:	8d0202c0 	lw	v0,704(t0)
    7260:	3c0d552e 	lui	t5,0x552e
    7264:	35adff7f 	ori	t5,t5,0xff7f
    7268:	244b0008 	addiu	t3,v0,8
    726c:	358c9661 	ori	t4,t4,0x9661
    7270:	ad0b02c0 	sw	t3,704(t0)
    7274:	44050000 	mfc1	a1,$f0
    7278:	44060000 	mfc1	a2,$f0
    727c:	02002025 	move	a0,s0
    7280:	3c074280 	lui	a3,0x4280
    7284:	ac4d0004 	sw	t5,4(v0)
    7288:	0c000000 	jal	0 <func_8081F1F0>
    728c:	ac4c0000 	sw	t4,0(v0)
    7290:	960201d4 	lhu	v0,468(s0)
    7294:	28410008 	slti	at,v0,8
    7298:	14200003 	bnez	at,72a8 <KaleidoScope_Draw+0x1e0>
    729c:	28410012 	slti	at,v0,18
    72a0:	54200004 	bnezl	at,72b4 <KaleidoScope_Draw+0x1ec>
    72a4:	960201d4 	lhu	v0,468(s0)
    72a8:	0c000000 	jal	0 <func_8081F1F0>
    72ac:	02202025 	move	a0,s1
    72b0:	960201d4 	lhu	v0,468(s0)
    72b4:	2841000b 	slti	at,v0,11
    72b8:	14200005 	bnez	at,72d0 <KaleidoScope_Draw+0x208>
    72bc:	28410012 	slti	at,v0,18
    72c0:	50200004 	beqzl	at,72d4 <KaleidoScope_Draw+0x20c>
    72c4:	960201d6 	lhu	v0,470(s0)
    72c8:	0c000000 	jal	0 <func_8081F1F0>
    72cc:	02202025 	move	a0,s1
    72d0:	960201d6 	lhu	v0,470(s0)
    72d4:	24010001 	li	at,1
    72d8:	10410003 	beq	v0,at,72e8 <KaleidoScope_Draw+0x220>
    72dc:	24010002 	li	at,2
    72e0:	14410003 	bne	v0,at,72f0 <KaleidoScope_Draw+0x228>
    72e4:	00000000 	nop
    72e8:	0c000000 	jal	0 <func_8081F1F0>
    72ec:	02202025 	move	a0,s1
    72f0:	3c060000 	lui	a2,0x0
    72f4:	24c60334 	addiu	a2,a2,820
    72f8:	27a40048 	addiu	a0,sp,72
    72fc:	8e250000 	lw	a1,0(s1)
    7300:	0c000000 	jal	0 <func_8081F1F0>
    7304:	24070cb6 	li	a3,3254
    7308:	8fbf001c 	lw	ra,28(sp)
    730c:	8fb00014 	lw	s0,20(sp)
    7310:	8fb10018 	lw	s1,24(sp)
    7314:	03e00008 	jr	ra
    7318:	27bd0068 	addiu	sp,sp,104

0000731c <func_8082650C>:
    731c:	30a3ffff 	andi	v1,a1,0xffff
    7320:	afa50004 	sw	a1,4(sp)
    7324:	18600027 	blez	v1,73c4 <func_8082650C+0xa8>
    7328:	00001025 	move	v0,zero
    732c:	240d0007 	li	t5,7
    7330:	3c0c00ff 	lui	t4,0xff
    7334:	240bff00 	li	t3,-256
    7338:	00027080 	sll	t6,v0,0x2
    733c:	008e2821 	addu	a1,a0,t6
    7340:	8ca60000 	lw	a2,0(a1)
    7344:	24420001 	addiu	v0,v0,1
    7348:	3042ffff 	andi	v0,v0,0xffff
    734c:	00cb7824 	and	t7,a2,t3
    7350:	11e0001a 	beqz	t7,73bc <func_8082650C+0xa0>
    7354:	0043082a 	slt	at,v0,v1
    7358:	00063a02 	srl	a3,a2,0x8
    735c:	30eeff00 	andi	t6,a3,0xff00
    7360:	000e79c2 	srl	t7,t6,0x7
    7364:	00ecc024 	and	t8,a3,t4
    7368:	0018cc02 	srl	t9,t8,0x10
    736c:	032fc021 	addu	t8,t9,t7
    7370:	30ee00ff 	andi	t6,a3,0xff
    7374:	030ec821 	addu	t9,t8,t6
    7378:	032d001b 	divu	zero,t9,t5
    737c:	00004812 	mflo	t1
    7380:	312900ff 	andi	t1,t1,0xff
    7384:	01203825 	move	a3,t1
    7388:	3128ffff 	andi	t0,t1,0xffff
    738c:	00073a00 	sll	a3,a3,0x8
    7390:	00e83825 	or	a3,a3,t0
    7394:	00073a00 	sll	a3,a3,0x8
    7398:	00e83825 	or	a3,a3,t0
    739c:	0007c200 	sll	t8,a3,0x8
    73a0:	30cf00ff 	andi	t7,a2,0xff
    73a4:	01f87025 	or	t6,t7,t8
    73a8:	15a00002 	bnez	t5,73b4 <func_8082650C+0x98>
    73ac:	00000000 	nop
    73b0:	0007000d 	break	0x7
    73b4:	01005025 	move	t2,t0
    73b8:	acae0000 	sw	t6,0(a1)
    73bc:	5420ffdf 	bnezl	at,733c <func_8082650C+0x20>
    73c0:	00027080 	sll	t6,v0,0x2
    73c4:	03e00008 	jr	ra
    73c8:	00000000 	nop

000073cc <func_808265BC>:
    73cc:	3c050000 	lui	a1,0x0
    73d0:	24a50000 	addiu	a1,a1,0
    73d4:	8cae0000 	lw	t6,0(a1)
    73d8:	27bdffe8 	addiu	sp,sp,-24
    73dc:	afbf0014 	sw	ra,20(sp)
    73e0:	85cf07f0 	lh	t7,2032(t6)
    73e4:	3c010001 	lui	at,0x1
    73e8:	00811021 	addu	v0,a0,at
    73ec:	448f3000 	mtc1	t7,$f6
    73f0:	94430946 	lhu	v1,2374(v0)
    73f4:	3c010000 	lui	at,0x0
    73f8:	46803220 	cvt.s.w	$f8,$f6
    73fc:	00031880 	sll	v1,v1,0x2
    7400:	00230821 	addu	at,at,v1
    7404:	c4240000 	lwc1	$f4,0(at)
    7408:	c4500938 	lwc1	$f16,2360(v0)
    740c:	3c010000 	lui	at,0x0
    7410:	46082282 	mul.s	$f10,$f4,$f8
    7414:	00230821 	addu	at,at,v1
    7418:	9448094a 	lhu	t0,2378(v0)
    741c:	460a8480 	add.s	$f18,$f16,$f10
    7420:	c44a0940 	lwc1	$f10,2368(v0)
    7424:	e4520938 	swc1	$f18,2360(v0)
    7428:	8cb80000 	lw	t8,0(a1)
    742c:	c4260000 	lwc1	$f6,0(at)
    7430:	3c010001 	lui	at,0x1
    7434:	871907f0 	lh	t9,2032(t8)
    7438:	34210760 	ori	at,at,0x760
    743c:	44992000 	mtc1	t9,$f4
    7440:	00000000 	nop
    7444:	46802220 	cvt.s.w	$f8,$f4
    7448:	46083402 	mul.s	$f16,$f6,$f8
    744c:	46105480 	add.s	$f18,$f10,$f16
    7450:	e4520940 	swc1	$f18,2368(v0)
    7454:	8ca90000 	lw	t1,0(a1)
    7458:	852a07f0 	lh	t2,2032(t1)
    745c:	000a5880 	sll	t3,t2,0x2
    7460:	010b6021 	addu	t4,t0,t3
    7464:	a44c094a 	sh	t4,2378(v0)
    7468:	8cae0000 	lw	t6,0(a1)
    746c:	318dffff 	andi	t5,t4,0xffff
    7470:	24050001 	li	a1,1
    7474:	85cf07f2 	lh	t7,2034(t6)
    7478:	00811021 	addu	v0,a0,at
    747c:	000fc180 	sll	t8,t7,0x6
    7480:	55b8003e 	bnel	t5,t8,757c <func_808265BC+0x1b0>
    7484:	944e01ea 	lhu	t6,490(v0)
    7488:	0c000000 	jal	0 <func_8081F1F0>
    748c:	afa40018 	sw	a0,24(sp)
    7490:	8fa40018 	lw	a0,24(sp)
    7494:	3c010001 	lui	at,0x1
    7498:	34210760 	ori	at,at,0x760
    749c:	00811021 	addu	v0,a0,at
    74a0:	945901e8 	lhu	t9,488(v0)
    74a4:	24060005 	li	a2,5
    74a8:	3c030000 	lui	v1,0x0
    74ac:	03260019 	multu	t9,a2
    74b0:	24630000 	addiu	v1,v1,0
    74b4:	3c010000 	lui	at,0x0
    74b8:	2405000e 	li	a1,14
    74bc:	00004812 	mflo	t1
    74c0:	00695021 	addu	t2,v1,t1
    74c4:	91480000 	lbu	t0,0(t2)
    74c8:	a02813e2 	sb	t0,5090(at)
    74cc:	944b01e8 	lhu	t3,488(v0)
    74d0:	3c010000 	lui	at,0x0
    74d4:	01660019 	multu	t3,a2
    74d8:	00006012 	mflo	t4
    74dc:	006c7021 	addu	t6,v1,t4
    74e0:	91cf0001 	lbu	t7,1(t6)
    74e4:	a02f13e3 	sb	t7,5091(at)
    74e8:	944d01e8 	lhu	t5,488(v0)
    74ec:	3c010000 	lui	at,0x0
    74f0:	01a60019 	multu	t5,a2
    74f4:	0000c012 	mflo	t8
    74f8:	0078c821 	addu	t9,v1,t8
    74fc:	93290002 	lbu	t1,2(t9)
    7500:	a02913e4 	sb	t1,5092(at)
    7504:	944a01e8 	lhu	t2,488(v0)
    7508:	3c010000 	lui	at,0x0
    750c:	01460019 	multu	t2,a2
    7510:	3c0a0000 	lui	t2,0x0
    7514:	00004012 	mflo	t0
    7518:	00685821 	addu	t3,v1,t0
    751c:	916c0003 	lbu	t4,3(t3)
    7520:	a02c13e5 	sb	t4,5093(at)
    7524:	944e01e8 	lhu	t6,488(v0)
    7528:	3c010000 	lui	at,0x0
    752c:	240c00ff 	li	t4,255
    7530:	01c60019 	multu	t6,a2
    7534:	00007812 	mflo	t7
    7538:	006f6821 	addu	t5,v1,t7
    753c:	91b80004 	lbu	t8,4(t5)
    7540:	a03813e6 	sb	t8,5094(at)
    7544:	945901e6 	lhu	t9,486(v0)
    7548:	944801d4 	lhu	t0,468(v0)
    754c:	00194840 	sll	t1,t9,0x1
    7550:	01495021 	addu	t2,t2,t1
    7554:	954a0000 	lhu	t2,0(t2)
    7558:	250b0001 	addiu	t3,t0,1
    755c:	a44001e4 	sh	zero,484(v0)
    7560:	a44b01d4 	sh	t3,468(v0)
    7564:	a44c0208 	sh	t4,520(v0)
    7568:	0c000000 	jal	0 <func_8081F1F0>
    756c:	a44a01e8 	sh	t2,488(v0)
    7570:	1000000f 	b	75b0 <func_808265BC+0x1e4>
    7574:	8fbf0014 	lw	ra,20(sp)
    7578:	944e01ea 	lhu	t6,490(v0)
    757c:	24010040 	li	at,64
    7580:	55c1000b 	bnel	t6,at,75b0 <func_808265BC+0x1e4>
    7584:	8fbf0014 	lw	ra,20(sp)
    7588:	944f01e6 	lhu	t7,486(v0)
    758c:	3c180000 	lui	t8,0x0
    7590:	000f6840 	sll	t5,t7,0x1
    7594:	030dc021 	addu	t8,t8,t5
    7598:	97190000 	lhu	t9,0(t8)
    759c:	00195040 	sll	t2,t9,0x1
    75a0:	25480001 	addiu	t0,t2,1
    75a4:	a44801e6 	sh	t0,486(v0)
    75a8:	a45901e8 	sh	t9,488(v0)
    75ac:	8fbf0014 	lw	ra,20(sp)
    75b0:	27bd0018 	addiu	sp,sp,24
    75b4:	03e00008 	jr	ra
    75b8:	00000000 	nop

000075bc <func_808267AC>:
    75bc:	3c0e0001 	lui	t6,0x1
    75c0:	01c47021 	addu	t6,t6,a0
    75c4:	85ce0998 	lh	t6,2456(t6)
    75c8:	2403fffc 	li	v1,-4
    75cc:	24050004 	li	a1,4
    75d0:	15c0004b 	bnez	t6,7700 <func_808267AC+0x144>
    75d4:	24060010 	li	a2,16
    75d8:	3c010001 	lui	at,0x1
    75dc:	34210760 	ori	at,at,0x760
    75e0:	00811021 	addu	v0,a0,at
    75e4:	944801e8 	lhu	t0,488(v0)
    75e8:	24010001 	li	at,1
    75ec:	2403ffff 	li	v1,-1
    75f0:	24050001 	li	a1,1
    75f4:	2406000e 	li	a2,14
    75f8:	2407000e 	li	a3,14
    75fc:	15010018 	bne	t0,at,7660 <func_808267AC+0xa4>
    7600:	01004825 	move	t1,t0
    7604:	3c0f0000 	lui	t7,0x0
    7608:	85ef0000 	lh	t7,0(t7)
    760c:	0008c040 	sll	t8,t0,0x1
    7610:	2403fffa 	li	v1,-6
    7614:	15e00005 	bnez	t7,762c <func_808267AC+0x70>
    7618:	0058c821 	addu	t9,v0,t8
    761c:	24050006 	li	a1,6
    7620:	24060004 	li	a2,4
    7624:	1000003a 	b	7710 <func_808267AC+0x154>
    7628:	24070004 	li	a3,4
    762c:	972a0246 	lhu	t2,582(t9)
    7630:	2403fffd 	li	v1,-3
    7634:	24050003 	li	a1,3
    7638:	29410003 	slti	at,t2,3
    763c:	14200006 	bnez	at,7658 <func_808267AC+0x9c>
    7640:	2406000d 	li	a2,13
    7644:	2403fffa 	li	v1,-6
    7648:	24050005 	li	a1,5
    764c:	24070007 	li	a3,7
    7650:	1000002f 	b	7710 <func_808267AC+0x154>
    7654:	24060013 	li	a2,19
    7658:	1000002d 	b	7710 <func_808267AC+0x154>
    765c:	2407000d 	li	a3,13
    7660:	24010002 	li	at,2
    7664:	1521002a 	bne	t1,at,7710 <func_808267AC+0x154>
    7668:	00085840 	sll	t3,t0,0x1
    766c:	004b6021 	addu	t4,v0,t3
    7670:	95840246 	lhu	a0,582(t4)
    7674:	24010018 	li	at,24
    7678:	2403fffc 	li	v1,-4
    767c:	24050004 	li	a1,4
    7680:	2406000c 	li	a2,12
    7684:	14810006 	bne	a0,at,76a0 <func_808267AC+0xe4>
    7688:	2407000c 	li	a3,12
    768c:	2403fffe 	li	v1,-2
    7690:	24050002 	li	a1,2
    7694:	24060020 	li	a2,32
    7698:	1000001d 	b	7710 <func_808267AC+0x154>
    769c:	24070020 	li	a3,32
    76a0:	24010017 	li	at,23
    76a4:	54810005 	bnel	a0,at,76bc <func_808267AC+0x100>
    76a8:	28810006 	slti	at,a0,6
    76ac:	2407000d 	li	a3,13
    76b0:	10000017 	b	7710 <func_808267AC+0x154>
    76b4:	24060022 	li	a2,34
    76b8:	28810006 	slti	at,a0,6
    76bc:	50200007 	beqzl	at,76dc <func_808267AC+0x120>
    76c0:	28810006 	slti	at,a0,6
    76c4:	2403ffff 	li	v1,-1
    76c8:	24050001 	li	a1,1
    76cc:	2406000a 	li	a2,10
    76d0:	1000000f 	b	7710 <func_808267AC+0x154>
    76d4:	2407000a 	li	a3,10
    76d8:	28810006 	slti	at,a0,6
    76dc:	1420000c 	bnez	at,7710 <func_808267AC+0x154>
    76e0:	28810012 	slti	at,a0,18
    76e4:	5020000b 	beqzl	at,7714 <func_808267AC+0x158>
    76e8:	8c480168 	lw	t0,360(v0)
    76ec:	2403fffb 	li	v1,-5
    76f0:	24050003 	li	a1,3
    76f4:	24060008 	li	a2,8
    76f8:	10000005 	b	7710 <func_808267AC+0x154>
    76fc:	24070008 	li	a3,8
    7700:	3c010001 	lui	at,0x1
    7704:	34210760 	ori	at,at,0x760
    7708:	00811021 	addu	v0,a0,at
    770c:	24070010 	li	a3,16
    7710:	8c480168 	lw	t0,360(v0)
    7714:	850d0000 	lh	t5,0(t0)
    7718:	01a32021 	addu	a0,t5,v1
    771c:	00042400 	sll	a0,a0,0x10
    7720:	00042403 	sra	a0,a0,0x10
    7724:	a5040020 	sh	a0,32(t0)
    7728:	8c4e0168 	lw	t6,360(v0)
    772c:	a5c40000 	sh	a0,0(t6)
    7730:	8c480168 	lw	t0,360(v0)
    7734:	85040000 	lh	a0,0(t0)
    7738:	24840010 	addiu	a0,a0,16
    773c:	00042400 	sll	a0,a0,0x10
    7740:	00042403 	sra	a0,a0,0x10
    7744:	a5040030 	sh	a0,48(t0)
    7748:	8c4f0168 	lw	t7,360(v0)
    774c:	a5e40010 	sh	a0,16(t7)
    7750:	8c480168 	lw	t0,360(v0)
    7754:	85180002 	lh	t8,2(t0)
    7758:	03052021 	addu	a0,t8,a1
    775c:	00042400 	sll	a0,a0,0x10
    7760:	00042403 	sra	a0,a0,0x10
    7764:	a5040012 	sh	a0,18(t0)
    7768:	8c590168 	lw	t9,360(v0)
    776c:	a7240002 	sh	a0,2(t9)
    7770:	8c480168 	lw	t0,360(v0)
    7774:	85040002 	lh	a0,2(t0)
    7778:	2484fff0 	addiu	a0,a0,-16
    777c:	00042400 	sll	a0,a0,0x10
    7780:	00042403 	sra	a0,a0,0x10
    7784:	a5040032 	sh	a0,50(t0)
    7788:	8c4a0168 	lw	t2,360(v0)
    778c:	a5440022 	sh	a0,34(t2)
    7790:	8c480168 	lw	t0,360(v0)
    7794:	850b0000 	lh	t3,0(t0)
    7798:	01662021 	addu	a0,t3,a2
    779c:	00042400 	sll	a0,a0,0x10
    77a0:	00042403 	sra	a0,a0,0x10
    77a4:	a5040060 	sh	a0,96(t0)
    77a8:	8c4c0168 	lw	t4,360(v0)
    77ac:	a5840040 	sh	a0,64(t4)
    77b0:	8c480168 	lw	t0,360(v0)
    77b4:	85040040 	lh	a0,64(t0)
    77b8:	24840010 	addiu	a0,a0,16
    77bc:	00042400 	sll	a0,a0,0x10
    77c0:	00042403 	sra	a0,a0,0x10
    77c4:	a5040070 	sh	a0,112(t0)
    77c8:	8c4d0168 	lw	t5,360(v0)
    77cc:	a5a40050 	sh	a0,80(t5)
    77d0:	8c480168 	lw	t0,360(v0)
    77d4:	85040002 	lh	a0,2(t0)
    77d8:	a5040052 	sh	a0,82(t0)
    77dc:	8c4e0168 	lw	t6,360(v0)
    77e0:	a5c40042 	sh	a0,66(t6)
    77e4:	8c480168 	lw	t0,360(v0)
    77e8:	85040042 	lh	a0,66(t0)
    77ec:	2484fff0 	addiu	a0,a0,-16
    77f0:	00042400 	sll	a0,a0,0x10
    77f4:	00042403 	sra	a0,a0,0x10
    77f8:	a5040072 	sh	a0,114(t0)
    77fc:	8c4f0168 	lw	t7,360(v0)
    7800:	a5e40062 	sh	a0,98(t7)
    7804:	8c480168 	lw	t0,360(v0)
    7808:	85040000 	lh	a0,0(t0)
    780c:	a50400a0 	sh	a0,160(t0)
    7810:	8c580168 	lw	t8,360(v0)
    7814:	a7040080 	sh	a0,128(t8)
    7818:	8c480168 	lw	t0,360(v0)
    781c:	85040080 	lh	a0,128(t0)
    7820:	24840010 	addiu	a0,a0,16
    7824:	00042400 	sll	a0,a0,0x10
    7828:	00042403 	sra	a0,a0,0x10
    782c:	a50400b0 	sh	a0,176(t0)
    7830:	8c590168 	lw	t9,360(v0)
    7834:	a7240090 	sh	a0,144(t9)
    7838:	8c480168 	lw	t0,360(v0)
    783c:	850a0002 	lh	t2,2(t0)
    7840:	01472023 	subu	a0,t2,a3
    7844:	00042400 	sll	a0,a0,0x10
    7848:	00042403 	sra	a0,a0,0x10
    784c:	a5040092 	sh	a0,146(t0)
    7850:	8c4b0168 	lw	t3,360(v0)
    7854:	a5640082 	sh	a0,130(t3)
    7858:	8c480168 	lw	t0,360(v0)
    785c:	85040082 	lh	a0,130(t0)
    7860:	2484fff0 	addiu	a0,a0,-16
    7864:	00042400 	sll	a0,a0,0x10
    7868:	00042403 	sra	a0,a0,0x10
    786c:	a50400b2 	sh	a0,178(t0)
    7870:	8c4c0168 	lw	t4,360(v0)
    7874:	a58400a2 	sh	a0,162(t4)
    7878:	8c480168 	lw	t0,360(v0)
    787c:	850d0000 	lh	t5,0(t0)
    7880:	01a62021 	addu	a0,t5,a2
    7884:	00042400 	sll	a0,a0,0x10
    7888:	00042403 	sra	a0,a0,0x10
    788c:	a50400e0 	sh	a0,224(t0)
    7890:	8c4e0168 	lw	t6,360(v0)
    7894:	a5c400c0 	sh	a0,192(t6)
    7898:	8c480168 	lw	t0,360(v0)
    789c:	850400c0 	lh	a0,192(t0)
    78a0:	24840010 	addiu	a0,a0,16
    78a4:	00042400 	sll	a0,a0,0x10
    78a8:	00042403 	sra	a0,a0,0x10
    78ac:	a50400f0 	sh	a0,240(t0)
    78b0:	8c4f0168 	lw	t7,360(v0)
    78b4:	a5e400d0 	sh	a0,208(t7)
    78b8:	8c480168 	lw	t0,360(v0)
    78bc:	85180002 	lh	t8,2(t0)
    78c0:	03072023 	subu	a0,t8,a3
    78c4:	00042400 	sll	a0,a0,0x10
    78c8:	00042403 	sra	a0,a0,0x10
    78cc:	a50400d2 	sh	a0,210(t0)
    78d0:	8c590168 	lw	t9,360(v0)
    78d4:	a72400c2 	sh	a0,194(t9)
    78d8:	8c480168 	lw	t0,360(v0)
    78dc:	850400c2 	lh	a0,194(t0)
    78e0:	2484fff0 	addiu	a0,a0,-16
    78e4:	00042400 	sll	a0,a0,0x10
    78e8:	00042403 	sra	a0,a0,0x10
    78ec:	a50400f2 	sh	a0,242(t0)
    78f0:	8c4a0168 	lw	t2,360(v0)
    78f4:	03e00008 	jr	ra
    78f8:	a54400e2 	sh	a0,226(t2)

000078fc <func_80826AEC>:
    78fc:	3c0f0000 	lui	t7,0x0
    7900:	8def0000 	lw	t7,0(t7)
    7904:	27bdffd0 	addiu	sp,sp,-48
    7908:	afbf001c 	sw	ra,28(sp)
    790c:	afa40030 	sw	a0,48(sp)
    7910:	85f80f2e 	lh	t8,3886(t7)
    7914:	00807025 	move	t6,a0
    7918:	3c040001 	lui	a0,0x1
    791c:	0018ca00 	sll	t9,t8,0x8
    7920:	008e2021 	addu	a0,a0,t6
    7924:	3c020000 	lui	v0,0x0
    7928:	0338c823 	subu	t9,t9,t8
    792c:	0019c8c0 	sll	t9,t9,0x3
    7930:	24420000 	addiu	v0,v0,0
    7934:	8c84062c 	lw	a0,1580(a0)
    7938:	3c070000 	lui	a3,0x0
    793c:	24080d8b 	li	t0,3467
    7940:	afa80010 	sw	t0,16(sp)
    7944:	24e70000 	addiu	a3,a3,0
    7948:	afa20024 	sw	v0,36(sp)
    794c:	03222821 	addu	a1,t9,v0
    7950:	0c000000 	jal	0 <func_8081F1F0>
    7954:	240607f8 	li	a2,2040
    7958:	3c0a0000 	lui	t2,0x0
    795c:	8d4a0000 	lw	t2,0(t2)
    7960:	8fa90030 	lw	t1,48(sp)
    7964:	8fa20024 	lw	v0,36(sp)
    7968:	854b0f2e 	lh	t3,3886(t2)
    796c:	3c040001 	lui	a0,0x1
    7970:	00892021 	addu	a0,a0,t1
    7974:	000b6200 	sll	t4,t3,0x8
    7978:	018b6023 	subu	t4,t4,t3
    797c:	8c84062c 	lw	a0,1580(a0)
    7980:	000c60c0 	sll	t4,t4,0x3
    7984:	3c070000 	lui	a3,0x0
    7988:	240d0d8f 	li	t5,3471
    798c:	01822821 	addu	a1,t4,v0
    7990:	24a507f8 	addiu	a1,a1,2040
    7994:	afad0010 	sw	t5,16(sp)
    7998:	24e70000 	addiu	a3,a3,0
    799c:	240607f8 	li	a2,2040
    79a0:	0c000000 	jal	0 <func_8081F1F0>
    79a4:	24840800 	addiu	a0,a0,2048
    79a8:	8fbf001c 	lw	ra,28(sp)
    79ac:	27bd0030 	addiu	sp,sp,48
    79b0:	03e00008 	jr	ra
    79b4:	00000000 	nop

000079b8 <func_80826BA8>:
    79b8:	27bdffd0 	addiu	sp,sp,-48
    79bc:	afb00018 	sw	s0,24(sp)
    79c0:	00808025 	move	s0,a0
    79c4:	3c050001 	lui	a1,0x1
    79c8:	afbf001c 	sw	ra,28(sp)
    79cc:	00b02821 	addu	a1,a1,s0
    79d0:	3c040000 	lui	a0,0x0
    79d4:	24840000 	addiu	a0,a0,0
    79d8:	0c000000 	jal	0 <func_8081F1F0>
    79dc:	84a5074e 	lh	a1,1870(a1)
    79e0:	0c000000 	jal	0 <func_8081F1F0>
    79e4:	02002025 	move	a0,s0
    79e8:	3c010001 	lui	at,0x1
    79ec:	34210760 	ori	at,at,0x760
    79f0:	02011821 	addu	v1,s0,at
    79f4:	84650236 	lh	a1,566(v1)
    79f8:	afa30024 	sw	v1,36(sp)
    79fc:	02002025 	move	a0,s0
    7a00:	24a5fffd 	addiu	a1,a1,-3
    7a04:	00052c00 	sll	a1,a1,0x10
    7a08:	0c000000 	jal	0 <func_8081F1F0>
    7a0c:	00052c03 	sra	a1,a1,0x10
    7a10:	860200a4 	lh	v0,164(s0)
    7a14:	8fa30024 	lw	v1,36(sp)
    7a18:	04400013 	bltz	v0,7a68 <func_80826BA8+0xb0>
    7a1c:	28410011 	slti	at,v0,17
    7a20:	10200011 	beqz	at,7a68 <func_80826BA8+0xb0>
    7a24:	3c0e0000 	lui	t6,0x0
    7a28:	8dce0000 	lw	t6,0(t6)
    7a2c:	8479021a 	lh	t9,538(v1)
    7a30:	3c010001 	lui	at,0x1
    7a34:	85cf0f50 	lh	t7,3920(t6)
    7a38:	342104f0 	ori	at,at,0x4f0
    7a3c:	240507f8 	li	a1,2040
    7a40:	25f80003 	addiu	t8,t7,3
    7a44:	17190008 	bne	t8,t9,7a68 <func_80826BA8+0xb0>
    7a48:	2407000e 	li	a3,14
    7a4c:	02011021 	addu	v0,s0,at
    7a50:	8c44013c 	lw	a0,316(v0)
    7a54:	8446025e 	lh	a2,606(v0)
    7a58:	0c000000 	jal	0 <func_8081F1F0>
    7a5c:	afa30024 	sw	v1,36(sp)
    7a60:	8fa30024 	lw	v1,36(sp)
    7a64:	860200a4 	lh	v0,164(s0)
    7a68:	04400011 	bltz	v0,7ab0 <func_80826BA8+0xf8>
    7a6c:	28410011 	slti	at,v0,17
    7a70:	1020000f 	beqz	at,7ab0 <func_80826BA8+0xf8>
    7a74:	3c080000 	lui	t0,0x0
    7a78:	8d080000 	lw	t0,0(t0)
    7a7c:	846b021a 	lh	t3,538(v1)
    7a80:	3c010001 	lui	at,0x1
    7a84:	85090f50 	lh	t1,3920(t0)
    7a88:	342104f0 	ori	at,at,0x4f0
    7a8c:	02011021 	addu	v0,s0,at
    7a90:	252a0003 	addiu	t2,t1,3
    7a94:	154b0006 	bne	t2,t3,7ab0 <func_80826BA8+0xf8>
    7a98:	240507f8 	li	a1,2040
    7a9c:	8c44013c 	lw	a0,316(v0)
    7aa0:	8446025e 	lh	a2,606(v0)
    7aa4:	2407000e 	li	a3,14
    7aa8:	0c000000 	jal	0 <func_8081F1F0>
    7aac:	24840800 	addiu	a0,a0,2048
    7ab0:	8fbf001c 	lw	ra,28(sp)
    7ab4:	8fb00018 	lw	s0,24(sp)
    7ab8:	27bd0030 	addiu	sp,sp,48
    7abc:	03e00008 	jr	ra
    7ac0:	00000000 	nop

00007ac4 <KaleidoScope_Update>:
    7ac4:	27bdff78 	addiu	sp,sp,-136
    7ac8:	afbf0024 	sw	ra,36(sp)
    7acc:	afb10020 	sw	s1,32(sp)
    7ad0:	afb0001c 	sw	s0,28(sp)
    7ad4:	3c080000 	lui	t0,0x0
    7ad8:	8c8e1c44 	lw	t6,7236(a0)
    7adc:	25080000 	addiu	t0,t0,0
    7ae0:	8d0f0000 	lw	t7,0(t0)
    7ae4:	afae0078 	sw	t6,120(sp)
    7ae8:	00808825 	move	s1,a0
    7aec:	85f80190 	lh	t8,400(t7)
    7af0:	2b010003 	slti	at,t8,3
    7af4:	14200039 	bnez	at,7bdc <KaleidoScope_Update+0x118>
    7af8:	3c010001 	lui	at,0x1
    7afc:	34210760 	ori	at,at,0x760
    7b00:	02218021 	addu	s0,s1,at
    7b04:	960201d4 	lhu	v0,468(s0)
    7b08:	28410004 	slti	at,v0,4
    7b0c:	14200002 	bnez	at,7b18 <KaleidoScope_Update+0x54>
    7b10:	28410008 	slti	at,v0,8
    7b14:	14200005 	bnez	at,7b2c <KaleidoScope_Update+0x68>
    7b18:	2841000a 	slti	at,v0,10
    7b1c:	1420002f 	bnez	at,7bdc <KaleidoScope_Update+0x118>
    7b20:	28410013 	slti	at,v0,19
    7b24:	5020002e 	beqzl	at,7be0 <KaleidoScope_Update+0x11c>
    7b28:	3c010001 	lui	at,0x1
    7b2c:	960401e4 	lhu	a0,484(s0)
    7b30:	24010008 	li	at,8
    7b34:	50800003 	beqzl	a0,7b44 <KaleidoScope_Update+0x80>
    7b38:	24010006 	li	at,6
    7b3c:	14810012 	bne	a0,at,7b88 <KaleidoScope_Update+0xc4>
    7b40:	24010006 	li	at,6
    7b44:	54410011 	bnel	v0,at,7b8c <KaleidoScope_Update+0xc8>
    7b48:	960f01e8 	lhu	t7,488(s0)
    7b4c:	26250014 	addiu	a1,s1,20
    7b50:	80b90014 	lb	t9,20(a1)
    7b54:	02202025 	move	a0,s1
    7b58:	a6190214 	sh	t9,532(s0)
    7b5c:	80ae0015 	lb	t6,21(a1)
    7b60:	a60e0216 	sh	t6,534(s0)
    7b64:	0c000000 	jal	0 <func_8081F1F0>
    7b68:	afa50034 	sw	a1,52(sp)
    7b6c:	8fa50034 	lw	a1,52(sp)
    7b70:	0c000000 	jal	0 <func_8081F1F0>
    7b74:	02002025 	move	a0,s0
    7b78:	3c080000 	lui	t0,0x0
    7b7c:	25080000 	addiu	t0,t0,0
    7b80:	1000000f 	b	7bc0 <KaleidoScope_Update+0xfc>
    7b84:	960201d4 	lhu	v0,468(s0)
    7b88:	960f01e8 	lhu	t7,488(s0)
    7b8c:	24010002 	li	at,2
    7b90:	15e1000b 	bne	t7,at,7bc0 <KaleidoScope_Update+0xfc>
    7b94:	28810003 	slti	at,a0,3
    7b98:	14200004 	bnez	at,7bac <KaleidoScope_Update+0xe8>
    7b9c:	00801825 	move	v1,a0
    7ba0:	24010005 	li	at,5
    7ba4:	54810007 	bnel	a0,at,7bc4 <KaleidoScope_Update+0x100>
    7ba8:	24010006 	li	at,6
    7bac:	0c000000 	jal	0 <func_8081F1F0>
    7bb0:	02202025 	move	a0,s1
    7bb4:	3c080000 	lui	t0,0x0
    7bb8:	25080000 	addiu	t0,t0,0
    7bbc:	960201d4 	lhu	v0,468(s0)
    7bc0:	24010006 	li	at,6
    7bc4:	54410006 	bnel	v0,at,7be0 <KaleidoScope_Update+0x11c>
    7bc8:	3c010001 	lui	at,0x1
    7bcc:	0c000000 	jal	0 <func_8081F1F0>
    7bd0:	02202025 	move	a0,s1
    7bd4:	3c080000 	lui	t0,0x0
    7bd8:	25080000 	addiu	t0,t0,0
    7bdc:	3c010001 	lui	at,0x1
    7be0:	34210760 	ori	at,at,0x760
    7be4:	02218021 	addu	s0,s1,at
    7be8:	961801d4 	lhu	t8,468(s0)
    7bec:	2719fffd 	addiu	t9,t8,-3
    7bf0:	2f210011 	sltiu	at,t9,17
    7bf4:	1020ffff 	beqz	at,7bf4 <KaleidoScope_Update+0x130>
    7bf8:	0019c880 	sll	t9,t9,0x2
    7bfc:	3c010000 	lui	at,0x0
    7c00:	00390821 	addu	at,at,t9
    7c04:	8c390000 	lw	t9,0(at)
    7c08:	03200008 	jr	t9
    7c0c:	00000000 	nop

00007c10 <L80826E00>:
    7c10:	3c090000 	lui	t1,0x0
    7c14:	25290000 	addiu	t1,t1,0
    7c18:	912e13e2 	lbu	t6,5090(t1)
    7c1c:	3c070000 	lui	a3,0x0
    7c20:	24e70000 	addiu	a3,a3,0
    7c24:	a0ee0000 	sb	t6,0(a3)
    7c28:	912f13e3 	lbu	t7,5091(t1)
    7c2c:	913813e4 	lbu	t8,5092(t1)
    7c30:	913913e5 	lbu	t9,5093(t1)
    7c34:	912e13e6 	lbu	t6,5094(t1)
    7c38:	a0ef0001 	sb	t7,1(a3)
    7c3c:	a0f80002 	sb	t8,2(a3)
    7c40:	a0f90003 	sb	t9,3(a3)
    7c44:	a0ee0004 	sb	t6,4(a3)
    7c48:	a6000224 	sh	zero,548(s0)
    7c4c:	8d0f0000 	lw	t7,0(t0)
    7c50:	2418ff51 	li	t8,-175
    7c54:	3c01c39d 	lui	at,0xc39d
    7c58:	85e20f50 	lh	v0,3920(t7)
    7c5c:	44811000 	mtc1	at,$f2
    7c60:	240e009b 	li	t6,155
    7c64:	24420003 	addiu	v0,v0,3
    7c68:	00021400 	sll	v0,v0,0x10
    7c6c:	00021403 	sra	v0,v0,0x10
    7c70:	a6020236 	sh	v0,566(s0)
    7c74:	a602021a 	sh	v0,538(s0)
    7c78:	a6020248 	sh	v0,584(s0)
    7c7c:	8d190000 	lw	t9,0(t0)
    7c80:	2401ffc0 	li	at,-64
    7c84:	02202025 	move	a0,s1
    7c88:	a7380db4 	sh	t8,3508(t9)
    7c8c:	8d0f0000 	lw	t7,0(t0)
    7c90:	3c180001 	lui	t8,0x1
    7c94:	0311c021 	addu	t8,t8,s1
    7c98:	a5ee0db6 	sh	t6,3510(t7)
    7c9c:	e6020204 	swc1	$f2,516(s0)
    7ca0:	8f1817a4 	lw	t8,6052(t8)
    7ca4:	2606027c 	addiu	a2,s0,636
    7ca8:	27190030 	addiu	t9,t8,48
    7cac:	03212824 	and	a1,t9,at
    7cb0:	0c000000 	jal	0 <func_8081F1F0>
    7cb4:	ae05013c 	sw	a1,316(s0)
    7cb8:	3c040000 	lui	a0,0x0
    7cbc:	afa20068 	sw	v0,104(sp)
    7cc0:	24840000 	addiu	a0,a0,0
    7cc4:	0c000000 	jal	0 <func_8081F1F0>
    7cc8:	00402825 	move	a1,v0
    7ccc:	8e0f013c 	lw	t7,316(s0)
    7cd0:	8fb80068 	lw	t8,104(sp)
    7cd4:	2401fff0 	li	at,-16
    7cd8:	3c020000 	lui	v0,0x0
    7cdc:	01f8c821 	addu	t9,t7,t8
    7ce0:	272e000f 	addiu	t6,t9,15
    7ce4:	3c180000 	lui	t8,0x0
    7ce8:	01c17824 	and	t7,t6,at
    7cec:	27180000 	addiu	t8,t8,0
    7cf0:	24420000 	addiu	v0,v0,0
    7cf4:	ae0f0128 	sw	t7,296(s0)
    7cf8:	03022823 	subu	a1,t8,v0
    7cfc:	3c040000 	lui	a0,0x0
    7d00:	24840000 	addiu	a0,a0,0
    7d04:	afa50030 	sw	a1,48(sp)
    7d08:	0c000000 	jal	0 <func_8081F1F0>
    7d0c:	afa20034 	sw	v0,52(sp)
    7d10:	8e040128 	lw	a0,296(s0)
    7d14:	3c070000 	lui	a3,0x0
    7d18:	24190e4e 	li	t9,3662
    7d1c:	afb90010 	sw	t9,16(sp)
    7d20:	24e70000 	addiu	a3,a3,0
    7d24:	8fa50034 	lw	a1,52(sp)
    7d28:	0c000000 	jal	0 <func_8081F1F0>
    7d2c:	8fa60030 	lw	a2,48(sp)
    7d30:	8e0e0128 	lw	t6,296(s0)
    7d34:	3c018000 	lui	at,0x8000
    7d38:	3c090000 	lui	t1,0x0
    7d3c:	01c17821 	addu	t7,t6,at
    7d40:	3c010000 	lui	at,0x0
    7d44:	25290000 	addiu	t1,t1,0
    7d48:	ac2f0020 	sw	t7,32(at)
    7d4c:	00001825 	move	v1,zero
    7d50:	3c020000 	lui	v0,0x0
    7d54:	00431021 	addu	v0,v0,v1
    7d58:	90420000 	lbu	v0,0(v0)
    7d5c:	24010009 	li	at,9
    7d60:	5041001a 	beql	v0,at,7dcc <L80826E00+0x1bc>
    7d64:	24630001 	addiu	v1,v1,1
    7d68:	8d380004 	lw	t8,4(t1)
    7d6c:	3c0100ff 	lui	at,0xff
    7d70:	3421ffff 	ori	at,at,0xffff
    7d74:	10580014 	beq	v0,t8,7dc8 <L80826E00+0x1b8>
    7d78:	0003c880 	sll	t9,v1,0x2
    7d7c:	3c020000 	lui	v0,0x0
    7d80:	00591021 	addu	v0,v0,t9
    7d84:	8c420000 	lw	v0,0(v0)
    7d88:	24050400 	li	a1,1024
    7d8c:	a7a30062 	sh	v1,98(sp)
    7d90:	00027900 	sll	t7,v0,0x4
    7d94:	000fc702 	srl	t8,t7,0x1c
    7d98:	0018c880 	sll	t9,t8,0x2
    7d9c:	3c0f0000 	lui	t7,0x0
    7da0:	01f97821 	addu	t7,t7,t9
    7da4:	8def0000 	lw	t7,0(t7)
    7da8:	00417024 	and	t6,v0,at
    7dac:	3c018000 	lui	at,0x8000
    7db0:	01cf2021 	addu	a0,t6,t7
    7db4:	0c000000 	jal	0 <func_8081F1F0>
    7db8:	00812021 	addu	a0,a0,at
    7dbc:	3c090000 	lui	t1,0x0
    7dc0:	25290000 	addiu	t1,t1,0
    7dc4:	97a30062 	lhu	v1,98(sp)
    7dc8:	24630001 	addiu	v1,v1,1
    7dcc:	3063ffff 	andi	v1,v1,0xffff
    7dd0:	2c610056 	sltiu	at,v1,86
    7dd4:	1420ffde 	bnez	at,7d50 <L80826E00+0x140>
    7dd8:	00000000 	nop
    7ddc:	8e180128 	lw	t8,296(s0)
    7de0:	8fb90030 	lw	t9,48(sp)
    7de4:	2401fff0 	li	at,-16
    7de8:	3c020000 	lui	v0,0x0
    7dec:	03197021 	addu	t6,t8,t9
    7df0:	25cf000f 	addiu	t7,t6,15
    7df4:	3c190000 	lui	t9,0x0
    7df8:	01e1c024 	and	t8,t7,at
    7dfc:	27390000 	addiu	t9,t9,0
    7e00:	24420000 	addiu	v0,v0,0
    7e04:	ae18012c 	sw	t8,300(s0)
    7e08:	03222823 	subu	a1,t9,v0
    7e0c:	3c040000 	lui	a0,0x0
    7e10:	24840000 	addiu	a0,a0,0
    7e14:	afa5002c 	sw	a1,44(sp)
    7e18:	0c000000 	jal	0 <func_8081F1F0>
    7e1c:	afa20034 	sw	v0,52(sp)
    7e20:	8e04012c 	lw	a0,300(s0)
    7e24:	3c070000 	lui	a3,0x0
    7e28:	240e0e5b 	li	t6,3675
    7e2c:	afae0010 	sw	t6,16(sp)
    7e30:	24e70000 	addiu	a3,a3,0
    7e34:	8fa50034 	lw	a1,52(sp)
    7e38:	0c000000 	jal	0 <func_8081F1F0>
    7e3c:	8fa6002c 	lw	a2,44(sp)
    7e40:	8e0f012c 	lw	t7,300(s0)
    7e44:	8fb8002c 	lw	t8,44(sp)
    7e48:	2401fff0 	li	at,-16
    7e4c:	3c090000 	lui	t1,0x0
    7e50:	01f8c821 	addu	t9,t7,t8
    7e54:	272e000f 	addiu	t6,t9,15
    7e58:	01c17824 	and	t7,t6,at
    7e5c:	ae0f0130 	sw	t7,304(s0)
    7e60:	963800a4 	lhu	t8,164(s1)
    7e64:	25290000 	addiu	t1,t1,0
    7e68:	2f010019 	sltiu	at,t8,25
    7e6c:	1020ffff 	beqz	at,7e6c <L80826E00+0x25c>
    7e70:	0018c080 	sll	t8,t8,0x2
    7e74:	3c010000 	lui	at,0x0
    7e78:	00380821 	addu	at,at,t8
    7e7c:	8c380000 	lw	t8,0(at)
    7e80:	03000008 	jr	t8
    7e84:	00000000 	nop

00007e88 <L80827078>:
    7e88:	3c020000 	lui	v0,0x0
    7e8c:	3c0e0000 	lui	t6,0x0
    7e90:	25ce0000 	addiu	t6,t6,0
    7e94:	24420000 	addiu	v0,v0,0
    7e98:	24190001 	li	t9,1
    7e9c:	3c010000 	lui	at,0x0
    7ea0:	01c22823 	subu	a1,t6,v0
    7ea4:	3c040000 	lui	a0,0x0
    7ea8:	a4390000 	sh	t9,0(at)
    7eac:	afa50064 	sw	a1,100(sp)
    7eb0:	24840000 	addiu	a0,a0,0
    7eb4:	afa5002c 	sw	a1,44(sp)
    7eb8:	0c000000 	jal	0 <func_8081F1F0>
    7ebc:	afa20034 	sw	v0,52(sp)
    7ec0:	8e040130 	lw	a0,304(s0)
    7ec4:	3c070000 	lui	a3,0x0
    7ec8:	240f0e80 	li	t7,3712
    7ecc:	8fa6002c 	lw	a2,44(sp)
    7ed0:	afaf0010 	sw	t7,16(sp)
    7ed4:	24e70000 	addiu	a3,a3,0
    7ed8:	0c000000 	jal	0 <func_8081F1F0>
    7edc:	8fa50034 	lw	a1,52(sp)
    7ee0:	3c010001 	lui	at,0x1
    7ee4:	342104f0 	ori	at,at,0x4f0
    7ee8:	02211821 	addu	v1,s1,at
    7eec:	24180006 	li	t8,6
    7ef0:	24190063 	li	t9,99
    7ef4:	a078015c 	sb	t8,348(v1)
    7ef8:	a079015d 	sb	t9,349(v1)
    7efc:	0c000000 	jal	0 <func_8081F1F0>
    7f00:	02202025 	move	a0,s1
    7f04:	3c090000 	lui	t1,0x0
    7f08:	10000018 	b	7f6c <L80827100+0x5c>
    7f0c:	25290000 	addiu	t1,t1,0

00007f10 <L80827100>:
    7f10:	3c020000 	lui	v0,0x0
    7f14:	3c0e0000 	lui	t6,0x0
    7f18:	25ce0000 	addiu	t6,t6,0
    7f1c:	24420000 	addiu	v0,v0,0
    7f20:	3c010000 	lui	at,0x0
    7f24:	01c22823 	subu	a1,t6,v0
    7f28:	3c040000 	lui	a0,0x0
    7f2c:	a4200000 	sh	zero,0(at)
    7f30:	afa50064 	sw	a1,100(sp)
    7f34:	24840000 	addiu	a0,a0,0
    7f38:	afa5002c 	sw	a1,44(sp)
    7f3c:	0c000000 	jal	0 <func_8081F1F0>
    7f40:	afa20034 	sw	v0,52(sp)
    7f44:	8e040130 	lw	a0,304(s0)
    7f48:	3c070000 	lui	a3,0x0
    7f4c:	240f0e8e 	li	t7,3726
    7f50:	8fa6002c 	lw	a2,44(sp)
    7f54:	afaf0010 	sw	t7,16(sp)
    7f58:	24e70000 	addiu	a3,a3,0
    7f5c:	0c000000 	jal	0 <func_8081F1F0>
    7f60:	8fa50034 	lw	a1,52(sp)
    7f64:	3c090000 	lui	t1,0x0
    7f68:	25290000 	addiu	t1,t1,0
    7f6c:	8e180130 	lw	t8,304(s0)
    7f70:	8fb90064 	lw	t9,100(sp)
    7f74:	2401fff0 	li	at,-16
    7f78:	03197021 	addu	t6,t8,t9
    7f7c:	25cf000f 	addiu	t7,t6,15
    7f80:	01e1c024 	and	t8,t7,at
    7f84:	ae180134 	sw	t8,308(s0)
    7f88:	91231409 	lbu	v1,5129(t1)
    7f8c:	14600015 	bnez	v1,7fe4 <L80827100+0xd4>
    7f90:	3c020000 	lui	v0,0x0
    7f94:	3c190000 	lui	t9,0x0
    7f98:	27390000 	addiu	t9,t9,0
    7f9c:	24420000 	addiu	v0,v0,0
    7fa0:	03222823 	subu	a1,t9,v0
    7fa4:	3c040000 	lui	a0,0x0
    7fa8:	afa50070 	sw	a1,112(sp)
    7fac:	24840000 	addiu	a0,a0,0
    7fb0:	afa5002c 	sw	a1,44(sp)
    7fb4:	0c000000 	jal	0 <func_8081F1F0>
    7fb8:	afa20034 	sw	v0,52(sp)
    7fbc:	8e040134 	lw	a0,308(s0)
    7fc0:	3c070000 	lui	a3,0x0
    7fc4:	240e0e9b 	li	t6,3739
    7fc8:	8fa6002c 	lw	a2,44(sp)
    7fcc:	afae0010 	sw	t6,16(sp)
    7fd0:	24e70000 	addiu	a3,a3,0
    7fd4:	0c000000 	jal	0 <func_8081F1F0>
    7fd8:	8fa50034 	lw	a1,52(sp)
    7fdc:	1000002c 	b	8090 <L80827100+0x180>
    7fe0:	8e0f0134 	lw	t7,308(s0)
    7fe4:	24010001 	li	at,1
    7fe8:	14610016 	bne	v1,at,8044 <L80827100+0x134>
    7fec:	3c020000 	lui	v0,0x0
    7ff0:	3c020000 	lui	v0,0x0
    7ff4:	3c0f0000 	lui	t7,0x0
    7ff8:	25ef0000 	addiu	t7,t7,0
    7ffc:	24420000 	addiu	v0,v0,0
    8000:	01e22823 	subu	a1,t7,v0
    8004:	3c040000 	lui	a0,0x0
    8008:	afa50070 	sw	a1,112(sp)
    800c:	24840000 	addiu	a0,a0,0
    8010:	afa5002c 	sw	a1,44(sp)
    8014:	0c000000 	jal	0 <func_8081F1F0>
    8018:	afa20034 	sw	v0,52(sp)
    801c:	8e040134 	lw	a0,308(s0)
    8020:	3c070000 	lui	a3,0x0
    8024:	24180ea2 	li	t8,3746
    8028:	8fa6002c 	lw	a2,44(sp)
    802c:	afb80010 	sw	t8,16(sp)
    8030:	24e70000 	addiu	a3,a3,0
    8034:	0c000000 	jal	0 <func_8081F1F0>
    8038:	8fa50034 	lw	a1,52(sp)
    803c:	10000014 	b	8090 <L80827100+0x180>
    8040:	8e0f0134 	lw	t7,308(s0)
    8044:	3c190000 	lui	t9,0x0
    8048:	27390000 	addiu	t9,t9,0
    804c:	24420000 	addiu	v0,v0,0
    8050:	03222823 	subu	a1,t9,v0
    8054:	3c040000 	lui	a0,0x0
    8058:	afa50070 	sw	a1,112(sp)
    805c:	24840000 	addiu	a0,a0,0
    8060:	afa5002c 	sw	a1,44(sp)
    8064:	0c000000 	jal	0 <func_8081F1F0>
    8068:	afa20034 	sw	v0,52(sp)
    806c:	8e040134 	lw	a0,308(s0)
    8070:	3c070000 	lui	a3,0x0
    8074:	240e0ea9 	li	t6,3753
    8078:	8fa6002c 	lw	a2,44(sp)
    807c:	afae0010 	sw	t6,16(sp)
    8080:	24e70000 	addiu	a3,a3,0
    8084:	0c000000 	jal	0 <func_8081F1F0>
    8088:	8fa50034 	lw	a1,52(sp)
    808c:	8e0f0134 	lw	t7,308(s0)
    8090:	8fb80070 	lw	t8,112(sp)
    8094:	2401fff0 	li	at,-16
    8098:	3c040000 	lui	a0,0x0
    809c:	01f8c821 	addu	t9,t7,t8
    80a0:	272e000f 	addiu	t6,t9,15
    80a4:	01c17824 	and	t7,t6,at
    80a8:	ae0f0138 	sw	t7,312(s0)
    80ac:	8fb90068 	lw	t9,104(sp)
    80b0:	8fb80064 	lw	t8,100(sp)
    80b4:	8faf0030 	lw	t7,48(sp)
    80b8:	24840000 	addiu	a0,a0,0
    80bc:	03197021 	addu	t6,t8,t9
    80c0:	8fb90070 	lw	t9,112(sp)
    80c4:	01cfc021 	addu	t8,t6,t7
    80c8:	03192821 	addu	a1,t8,t9
    80cc:	0c000000 	jal	0 <func_8081F1F0>
    80d0:	afa50034 	sw	a1,52(sp)
    80d4:	3c040000 	lui	a0,0x0
    80d8:	24840000 	addiu	a0,a0,0
    80dc:	0c000000 	jal	0 <func_8081F1F0>
    80e0:	24050800 	li	a1,2048
    80e4:	02202025 	move	a0,s1
    80e8:	0c000000 	jal	0 <func_8081F1F0>
    80ec:	24050006 	li	a1,6
    80f0:	8fa50034 	lw	a1,52(sp)
    80f4:	3c040000 	lui	a0,0x0
    80f8:	24840000 	addiu	a0,a0,0
    80fc:	0c000000 	jal	0 <func_8081F1F0>
    8100:	24a50800 	addiu	a1,a1,2048
    8104:	3c090000 	lui	t1,0x0
    8108:	25290000 	addiu	t1,t1,0
    810c:	85281420 	lh	t0,5152(t1)
    8110:	29010016 	slti	at,t0,22
    8114:	50200042 	beqzl	at,8220 <L80827100+0x310>
    8118:	8e0e0138 	lw	t6,312(s0)
    811c:	91231409 	lbu	v1,5129(t1)
    8120:	00081400 	sll	v0,t0,0x10
    8124:	00021403 	sra	v0,v0,0x10
    8128:	14600013 	bnez	v1,8178 <L80827100+0x268>
    812c:	24010001 	li	at,1
    8130:	00027080 	sll	t6,v0,0x2
    8134:	01c27021 	addu	t6,t6,v0
    8138:	8e040138 	lw	a0,312(s0)
    813c:	000e7240 	sll	t6,t6,0x9
    8140:	34019000 	li	at,0x9000
    8144:	3c180000 	lui	t8,0x0
    8148:	27180000 	addiu	t8,t8,0
    814c:	01c17821 	addu	t7,t6,at
    8150:	3c070000 	lui	a3,0x0
    8154:	24190ec0 	li	t9,3776
    8158:	afb90010 	sw	t9,16(sp)
    815c:	24e70000 	addiu	a3,a3,0
    8160:	01f82821 	addu	a1,t7,t8
    8164:	24060a00 	li	a2,2560
    8168:	0c000000 	jal	0 <func_8081F1F0>
    816c:	24840400 	addiu	a0,a0,1024
    8170:	1000002b 	b	8220 <L80827100+0x310>
    8174:	8e0e0138 	lw	t6,312(s0)
    8178:	14610016 	bne	v1,at,81d4 <L80827100+0x2c4>
    817c:	00081400 	sll	v0,t0,0x10
    8180:	00081400 	sll	v0,t0,0x10
    8184:	00021403 	sra	v0,v0,0x10
    8188:	00027080 	sll	t6,v0,0x2
    818c:	01c27021 	addu	t6,t6,v0
    8190:	3c010001 	lui	at,0x1
    8194:	8e040138 	lw	a0,312(s0)
    8198:	34216c00 	ori	at,at,0x6c00
    819c:	000e7240 	sll	t6,t6,0x9
    81a0:	3c180000 	lui	t8,0x0
    81a4:	27180000 	addiu	t8,t8,0
    81a8:	01c17821 	addu	t7,t6,at
    81ac:	3c070000 	lui	a3,0x0
    81b0:	24190ec4 	li	t9,3780
    81b4:	afb90010 	sw	t9,16(sp)
    81b8:	24e70000 	addiu	a3,a3,0
    81bc:	01f82821 	addu	a1,t7,t8
    81c0:	24060a00 	li	a2,2560
    81c4:	0c000000 	jal	0 <func_8081F1F0>
    81c8:	24840400 	addiu	a0,a0,1024
    81cc:	10000014 	b	8220 <L80827100+0x310>
    81d0:	8e0e0138 	lw	t6,312(s0)
    81d4:	00021403 	sra	v0,v0,0x10
    81d8:	00027080 	sll	t6,v0,0x2
    81dc:	01c27021 	addu	t6,t6,v0
    81e0:	3c010002 	lui	at,0x2
    81e4:	8e040138 	lw	a0,312(s0)
    81e8:	34214800 	ori	at,at,0x4800
    81ec:	000e7240 	sll	t6,t6,0x9
    81f0:	3c180000 	lui	t8,0x0
    81f4:	27180000 	addiu	t8,t8,0
    81f8:	01c17821 	addu	t7,t6,at
    81fc:	3c070000 	lui	a3,0x0
    8200:	24190ec8 	li	t9,3784
    8204:	afb90010 	sw	t9,16(sp)
    8208:	24e70000 	addiu	a3,a3,0
    820c:	01f82821 	addu	a1,t7,t8
    8210:	24060a00 	li	a2,2560
    8214:	0c000000 	jal	0 <func_8081F1F0>
    8218:	24840400 	addiu	a0,a0,1024
    821c:	8e0e0138 	lw	t6,312(s0)
    8220:	2401fff0 	li	at,-16
    8224:	3c040000 	lui	a0,0x0
    8228:	25cf0e0f 	addiu	t7,t6,3599
    822c:	01e1c024 	and	t8,t7,at
    8230:	3c010000 	lui	at,0x0
    8234:	ac380000 	sw	t8,0(at)
    8238:	0c000000 	jal	0 <func_8081F1F0>
    823c:	24840000 	addiu	a0,a0,0
    8240:	3c190000 	lui	t9,0x0
    8244:	8f390000 	lw	t9,0(t9)
    8248:	3c040000 	lui	a0,0x0
    824c:	8e07013c 	lw	a3,316(s0)
    8250:	afa00010 	sw	zero,16(sp)
    8254:	24840000 	addiu	a0,a0,0
    8258:	24050040 	li	a1,64
    825c:	24060070 	li	a2,112
    8260:	0c000000 	jal	0 <func_8081F1F0>
    8264:	afb90014 	sw	t9,20(sp)
    8268:	0c000000 	jal	0 <func_8081F1F0>
    826c:	02202025 	move	a0,s1
    8270:	0c000000 	jal	0 <func_8081F1F0>
    8274:	02202025 	move	a0,s1
    8278:	3c090000 	lui	t1,0x0
    827c:	25290000 	addiu	t1,t1,0
    8280:	00001825 	move	v1,zero
    8284:	02037021 	addu	t6,s0,v1
    8288:	24630001 	addiu	v1,v1,1
    828c:	3063ffff 	andi	v1,v1,0xffff
    8290:	28610014 	slti	at,v1,20
    8294:	1420fffb 	bnez	at,8284 <L80827100+0x374>
    8298:	a1c00266 	sb	zero,614(t6)
    829c:	3c040000 	lui	a0,0x0
    82a0:	24840000 	addiu	a0,a0,0
    82a4:	8c8f0058 	lw	t7,88(a0)
    82a8:	8d2200a4 	lw	v0,164(t1)
    82ac:	3c070000 	lui	a3,0x0
    82b0:	24e70000 	addiu	a3,a3,0
    82b4:	01e2c024 	and	t8,t7,v0
    82b8:	13000004 	beqz	t8,82cc <L80827100+0x3bc>
    82bc:	3c080000 	lui	t0,0x0
    82c0:	24060002 	li	a2,2
    82c4:	a2060266 	sb	a2,614(s0)
    82c8:	8d2200a4 	lw	v0,164(t1)
    82cc:	8c99000c 	lw	t9,12(a0)
    82d0:	24060002 	li	a2,2
    82d4:	25080000 	addiu	t0,t0,0
    82d8:	03227024 	and	t6,t9,v0
    82dc:	11c00002 	beqz	t6,82e8 <L80827100+0x3d8>
    82e0:	24030001 	li	v1,1
    82e4:	a2030266 	sb	v1,614(s0)
    82e8:	90ef000b 	lbu	t7,11(a3)
    82ec:	2402000b 	li	v0,11
    82f0:	24030001 	li	v1,1
    82f4:	012fc021 	addu	t8,t1,t7
    82f8:	93190074 	lbu	t9,116(t8)
    82fc:	54590003 	bnel	v0,t9,830c <L80827100+0x3fc>
    8300:	8c8e0058 	lw	t6,88(a0)
    8304:	a2060267 	sb	a2,615(s0)
    8308:	8c8e0058 	lw	t6,88(a0)
    830c:	8d2f00a4 	lw	t7,164(t1)
    8310:	01cfc024 	and	t8,t6,t7
    8314:	53000003 	beqzl	t8,8324 <L80827100+0x414>
    8318:	95390eea 	lhu	t9,3818(t1)
    831c:	a2030267 	sb	v1,615(s0)
    8320:	95390eea 	lhu	t9,3818(t1)
    8324:	332e0004 	andi	t6,t9,0x4
    8328:	51c00003 	beqzl	t6,8338 <L80827100+0x428>
    832c:	90ef000b 	lbu	t7,11(a3)
    8330:	a2030268 	sb	v1,616(s0)
    8334:	90ef000b 	lbu	t7,11(a3)
    8338:	012fc021 	addu	t8,t1,t7
    833c:	93190074 	lbu	t9,116(t8)
    8340:	54590003 	bnel	v0,t9,8350 <L80827100+0x440>
    8344:	8c8e0058 	lw	t6,88(a0)
    8348:	a2060268 	sb	a2,616(s0)
    834c:	8c8e0058 	lw	t6,88(a0)
    8350:	8d2f00a4 	lw	t7,164(t1)
    8354:	01cfc024 	and	t8,t6,t7
    8358:	13000002 	beqz	t8,8364 <L80827100+0x454>
    835c:	3c0e0000 	lui	t6,0x0
    8360:	a2030268 	sb	v1,616(s0)
    8364:	8d3900a0 	lw	t9,160(t1)
    8368:	8dce000c 	lw	t6,12(t6)
    836c:	3c180000 	lui	t8,0x0
    8370:	93180003 	lbu	t8,3(t8)
    8374:	032e7824 	and	t7,t9,t6
    8378:	030fc807 	srav	t9,t7,t8
    837c:	53200003 	beqzl	t9,838c <L80827100+0x47c>
    8380:	8c8e0004 	lw	t6,4(a0)
    8384:	a2030269 	sb	v1,617(s0)
    8388:	8c8e0004 	lw	t6,4(a0)
    838c:	910f0003 	lbu	t7,3(t0)
    8390:	9539009c 	lhu	t9,156(t1)
    8394:	01eec004 	sllv	t8,t6,t7
    8398:	03197024 	and	t6,t8,t9
    839c:	51c00003 	beqzl	t6,83ac <L80827100+0x49c>
    83a0:	8c8f0008 	lw	t7,8(a0)
    83a4:	a2060269 	sb	a2,617(s0)
    83a8:	8c8f0008 	lw	t7,8(a0)
    83ac:	8d3800a4 	lw	t8,164(t1)
    83b0:	01f8c824 	and	t9,t7,t8
    83b4:	53200003 	beqzl	t9,83c4 <L80827100+0x4b4>
    83b8:	952e0ed4 	lhu	t6,3796(t1)
    83bc:	a2030269 	sb	v1,617(s0)
    83c0:	952e0ed4 	lhu	t6,3796(t1)
    83c4:	31cf0200 	andi	t7,t6,0x200
    83c8:	51e00003 	beqzl	t7,83d8 <L80827100+0x4c8>
    83cc:	90f80007 	lbu	t8,7(a3)
    83d0:	a203026a 	sb	v1,618(s0)
    83d4:	90f80007 	lbu	t8,7(a3)
    83d8:	240500ff 	li	a1,255
    83dc:	0138c821 	addu	t9,t1,t8
    83e0:	932e0074 	lbu	t6,116(t9)
    83e4:	50ae0003 	beql	a1,t6,83f4 <L80827100+0x4e4>
    83e8:	8c8f0034 	lw	t7,52(a0)
    83ec:	a206026a 	sb	a2,618(s0)
    83f0:	8c8f0034 	lw	t7,52(a0)
    83f4:	8d3800a4 	lw	t8,164(t1)
    83f8:	01f8c824 	and	t9,t7,t8
    83fc:	53200003 	beqzl	t9,840c <L80827100+0x4fc>
    8400:	952e0ee0 	lhu	t6,3808(t1)
    8404:	a203026a 	sb	v1,618(s0)
    8408:	952e0ee0 	lhu	t6,3808(t1)
    840c:	31cf0400 	andi	t7,t6,0x400
    8410:	51e00003 	beqzl	t7,8420 <L80827100+0x510>
    8414:	95380ed6 	lhu	t8,3798(t1)
    8418:	a206026a 	sb	a2,618(s0)
    841c:	95380ed6 	lhu	t8,3798(t1)
    8420:	33190100 	andi	t9,t8,0x100
    8424:	53200003 	beqzl	t9,8434 <L80827100+0x524>
    8428:	952e0ed4 	lhu	t6,3796(t1)
    842c:	a203026a 	sb	v1,618(s0)
    8430:	952e0ed4 	lhu	t6,3796(t1)
    8434:	31cf0200 	andi	t7,t6,0x200
    8438:	51e00003 	beqzl	t7,8448 <L80827100+0x538>
    843c:	95380edc 	lhu	t8,3804(t1)
    8440:	a206026b 	sb	a2,619(s0)
    8444:	95380edc 	lhu	t8,3804(t1)
    8448:	33190001 	andi	t9,t8,0x1
    844c:	53200003 	beqzl	t9,845c <L80827100+0x54c>
    8450:	90ee0008 	lbu	t6,8(a3)
    8454:	a203026b 	sb	v1,619(s0)
    8458:	90ee0008 	lbu	t6,8(a3)
    845c:	24010008 	li	at,8
    8460:	012e7821 	addu	t7,t1,t6
    8464:	91f80074 	lbu	t8,116(t7)
    8468:	57010003 	bnel	t8,at,8478 <L80827100+0x568>
    846c:	95390edc 	lhu	t9,3804(t1)
    8470:	a206026b 	sb	a2,619(s0)
    8474:	95390edc 	lhu	t9,3804(t1)
    8478:	332e0020 	andi	t6,t9,0x20
    847c:	51c00003 	beqzl	t6,848c <L80827100+0x57c>
    8480:	90ef0012 	lbu	t7,18(a3)
    8484:	a203026b 	sb	v1,619(s0)
    8488:	90ef0012 	lbu	t7,18(a3)
    848c:	24010012 	li	at,18
    8490:	012fc021 	addu	t8,t1,t7
    8494:	93190074 	lbu	t9,116(t8)
    8498:	57210003 	bnel	t9,at,84a8 <L80827100+0x598>
    849c:	952e0ed4 	lhu	t6,3796(t1)
    84a0:	a206026b 	sb	a2,619(s0)
    84a4:	952e0ed4 	lhu	t6,3796(t1)
    84a8:	31cf0200 	andi	t7,t6,0x200
    84ac:	51e00003 	beqzl	t7,84bc <L80827100+0x5ac>
    84b0:	95380edc 	lhu	t8,3804(t1)
    84b4:	a203026c 	sb	v1,620(s0)
    84b8:	95380edc 	lhu	t8,3804(t1)
    84bc:	33190001 	andi	t9,t8,0x1
    84c0:	53200003 	beqzl	t9,84d0 <L80827100+0x5c0>
    84c4:	952e0ed8 	lhu	t6,3800(t1)
    84c8:	a206026d 	sb	a2,621(s0)
    84cc:	952e0ed8 	lhu	t6,3800(t1)
    84d0:	31cf0020 	andi	t7,t6,0x20
    84d4:	51e00003 	beqzl	t7,84e4 <L80827100+0x5d4>
    84d8:	90f8000a 	lbu	t8,10(a3)
    84dc:	a203026d 	sb	v1,621(s0)
    84e0:	90f8000a 	lbu	t8,10(a3)
    84e4:	2405000a 	li	a1,10
    84e8:	0138c821 	addu	t9,t1,t8
    84ec:	932e0074 	lbu	t6,116(t9)
    84f0:	54ae0003 	bnel	a1,t6,8500 <L80827100+0x5f0>
    84f4:	952f0edc 	lhu	t7,3804(t1)
    84f8:	a206026d 	sb	a2,621(s0)
    84fc:	952f0edc 	lhu	t7,3804(t1)
    8500:	31f80200 	andi	t8,t7,0x200
    8504:	53000003 	beqzl	t8,8514 <L80827100+0x604>
    8508:	8c990004 	lw	t9,4(a0)
    850c:	a203026d 	sb	v1,621(s0)
    8510:	8c990004 	lw	t9,4(a0)
    8514:	8d2e0f38 	lw	t6,3896(t1)
    8518:	032e7824 	and	t7,t9,t6
    851c:	51e00003 	beqzl	t7,852c <L80827100+0x61c>
    8520:	8d2200a4 	lw	v0,164(t1)
    8524:	a203026e 	sb	v1,622(s0)
    8528:	8d2200a4 	lw	v0,164(t1)
    852c:	8c980030 	lw	t8,48(a0)
    8530:	0302c824 	and	t9,t8,v0
    8534:	53200004 	beqzl	t9,8548 <L80827100+0x638>
    8538:	8c8e003c 	lw	t6,60(a0)
    853c:	a206026e 	sb	a2,622(s0)
    8540:	8d2200a4 	lw	v0,164(t1)
    8544:	8c8e003c 	lw	t6,60(a0)
    8548:	01c27824 	and	t7,t6,v0
    854c:	51e00003 	beqzl	t7,855c <L80827100+0x64c>
    8550:	95380edc 	lhu	t8,3804(t1)
    8554:	a203026e 	sb	v1,622(s0)
    8558:	95380edc 	lhu	t8,3804(t1)
    855c:	33190020 	andi	t9,t8,0x20
    8560:	53200003 	beqzl	t9,8570 <L80827100+0x660>
    8564:	90ee000a 	lbu	t6,10(a3)
    8568:	a206026e 	sb	a2,622(s0)
    856c:	90ee000a 	lbu	t6,10(a3)
    8570:	012e7821 	addu	t7,t1,t6
    8574:	91f80074 	lbu	t8,116(t7)
    8578:	54b80003 	bnel	a1,t8,8588 <L80827100+0x678>
    857c:	8c990044 	lw	t9,68(a0)
    8580:	a203026e 	sb	v1,622(s0)
    8584:	8c990044 	lw	t9,68(a0)
    8588:	8d2e00a4 	lw	t6,164(t1)
    858c:	032e7824 	and	t7,t9,t6
    8590:	51e00003 	beqzl	t7,85a0 <L80827100+0x690>
    8594:	95380ee0 	lhu	t8,3808(t1)
    8598:	a206026e 	sb	a2,622(s0)
    859c:	95380ee0 	lhu	t8,3808(t1)
    85a0:	33190080 	andi	t9,t8,0x80
    85a4:	53200003 	beqzl	t9,85b4 <L80827100+0x6a4>
    85a8:	952e0ee8 	lhu	t6,3816(t1)
    85ac:	a203026e 	sb	v1,622(s0)
    85b0:	952e0ee8 	lhu	t6,3816(t1)
    85b4:	31cf0400 	andi	t7,t6,0x400
    85b8:	51e00003 	beqzl	t7,85c8 <L80827100+0x6b8>
    85bc:	8c980010 	lw	t8,16(a0)
    85c0:	a206026e 	sb	a2,622(s0)
    85c4:	8c980010 	lw	t8,16(a0)
    85c8:	8d3900a4 	lw	t9,164(t1)
    85cc:	03197024 	and	t6,t8,t9
    85d0:	51c00003 	beqzl	t6,85e0 <L80827100+0x6d0>
    85d4:	8c8f0028 	lw	t7,40(a0)
    85d8:	a203026e 	sb	v1,622(s0)
    85dc:	8c8f0028 	lw	t7,40(a0)
    85e0:	8d380f38 	lw	t8,3896(t1)
    85e4:	01f8c824 	and	t9,t7,t8
    85e8:	53200003 	beqzl	t9,85f8 <L80827100+0x6e8>
    85ec:	952e0ed4 	lhu	t6,3796(t1)
    85f0:	a203026f 	sb	v1,623(s0)
    85f4:	952e0ed4 	lhu	t6,3796(t1)
    85f8:	31cf8000 	andi	t7,t6,0x8000
    85fc:	51e00003 	beqzl	t7,860c <L80827100+0x6fc>
    8600:	8c980038 	lw	t8,56(a0)
    8604:	a206026f 	sb	a2,623(s0)
    8608:	8c980038 	lw	t8,56(a0)
    860c:	8d3900a4 	lw	t9,164(t1)
    8610:	03197024 	and	t6,t8,t9
    8614:	51c00003 	beqzl	t6,8624 <L80827100+0x714>
    8618:	90ef000a 	lbu	t7,10(a3)
    861c:	a203026f 	sb	v1,623(s0)
    8620:	90ef000a 	lbu	t7,10(a3)
    8624:	24010011 	li	at,17
    8628:	012fc021 	addu	t8,t1,t7
    862c:	93190074 	lbu	t9,116(t8)
    8630:	54b90003 	bnel	a1,t9,8640 <L80827100+0x730>
    8634:	952e0edc 	lhu	t6,3804(t1)
    8638:	a206026f 	sb	a2,623(s0)
    863c:	952e0edc 	lhu	t6,3804(t1)
    8640:	31cf0100 	andi	t7,t6,0x100
    8644:	51e00003 	beqzl	t7,8654 <L80827100+0x744>
    8648:	a2060270 	sb	a2,624(s0)
    864c:	a203026f 	sb	v1,623(s0)
    8650:	a2060270 	sb	a2,624(s0)
    8654:	95380ed4 	lhu	t8,3796(t1)
    8658:	33190200 	andi	t9,t8,0x200
    865c:	53200003 	beqzl	t9,866c <L80827100+0x75c>
    8660:	952e0ee0 	lhu	t6,3808(t1)
    8664:	a2030270 	sb	v1,624(s0)
    8668:	952e0ee0 	lhu	t6,3808(t1)
    866c:	31cf4000 	andi	t7,t6,0x4000
    8670:	51e00003 	beqzl	t7,8680 <L80827100+0x770>
    8674:	95380ed4 	lhu	t8,3796(t1)
    8678:	a2060270 	sb	a2,624(s0)
    867c:	95380ed4 	lhu	t8,3796(t1)
    8680:	33198000 	andi	t9,t8,0x8000
    8684:	53200003 	beqzl	t9,8694 <L80827100+0x784>
    8688:	8c8e0030 	lw	t6,48(a0)
    868c:	a2030270 	sb	v1,624(s0)
    8690:	8c8e0030 	lw	t6,48(a0)
    8694:	8d2f00a4 	lw	t7,164(t1)
    8698:	01cfc024 	and	t8,t6,t7
    869c:	53000003 	beqzl	t8,86ac <L80827100+0x79c>
    86a0:	95390ed8 	lhu	t9,3800(t1)
    86a4:	a2030271 	sb	v1,625(s0)
    86a8:	95390ed8 	lhu	t9,3800(t1)
    86ac:	24020011 	li	v0,17
    86b0:	332e0020 	andi	t6,t9,0x20
    86b4:	51c00003 	beqzl	t6,86c4 <L80827100+0x7b4>
    86b8:	952f0eda 	lhu	t7,3802(t1)
    86bc:	a2060271 	sb	a2,625(s0)
    86c0:	952f0eda 	lhu	t7,3802(t1)
    86c4:	31f80080 	andi	t8,t7,0x80
    86c8:	53000003 	beqzl	t8,86d8 <L80827100+0x7c8>
    86cc:	90f9000a 	lbu	t9,10(a3)
    86d0:	a2030271 	sb	v1,625(s0)
    86d4:	90f9000a 	lbu	t9,10(a3)
    86d8:	01397021 	addu	t6,t1,t9
    86dc:	91cf0074 	lbu	t7,116(t6)
    86e0:	54af0003 	bnel	a1,t7,86f0 <L80827100+0x7e0>
    86e4:	8c980004 	lw	t8,4(a0)
    86e8:	a2060271 	sb	a2,625(s0)
    86ec:	8c980004 	lw	t8,4(a0)
    86f0:	91190003 	lbu	t9,3(t0)
    86f4:	952f009c 	lhu	t7,156(t1)
    86f8:	03387004 	sllv	t6,t8,t9
    86fc:	01cfc024 	and	t8,t6,t7
    8700:	13000002 	beqz	t8,870c <L80827100+0x7fc>
    8704:	241900ff 	li	t9,255
    8708:	a2030271 	sb	v1,625(s0)
    870c:	a219027a 	sb	t9,634(s0)
    8710:	90ee002d 	lbu	t6,45(a3)
    8714:	8d380004 	lw	t8,4(t1)
    8718:	012e7821 	addu	t7,t1,t6
    871c:	13000003 	beqz	t8,872c <L80827100+0x81c>
    8720:	91e30074 	lbu	v1,116(t7)
    8724:	10000001 	b	872c <L80827100+0x81c>
    8728:	24020005 	li	v0,5
    872c:	14410029 	bne	v0,at,87d4 <L80827100+0x8c4>
    8730:	2861002f 	slti	at,v1,47
    8734:	14200003 	bnez	at,8744 <L80827100+0x834>
    8738:	00601025 	move	v0,v1
    873c:	24010030 	li	at,48
    8740:	14610002 	bne	v1,at,874c <L80827100+0x83c>
    8744:	24190008 	li	t9,8
    8748:	a219027a 	sb	t9,634(s0)
    874c:	2401002f 	li	at,47
    8750:	10410004 	beq	v0,at,8764 <L80827100+0x854>
    8754:	240e0009 	li	t6,9
    8758:	24010031 	li	at,49
    875c:	54410003 	bnel	v0,at,876c <L80827100+0x85c>
    8760:	24010032 	li	at,50
    8764:	a20e027a 	sb	t6,634(s0)
    8768:	24010032 	li	at,50
    876c:	14410002 	bne	v0,at,8778 <L80827100+0x868>
    8770:	240f0007 	li	t7,7
    8774:	a206027a 	sb	a2,634(s0)
    8778:	24010033 	li	at,51
    877c:	10410004 	beq	v0,at,8790 <L80827100+0x880>
    8780:	2418000b 	li	t8,11
    8784:	24010036 	li	at,54
    8788:	54410003 	bnel	v0,at,8798 <L80827100+0x888>
    878c:	24010034 	li	at,52
    8790:	a20f027a 	sb	t7,634(s0)
    8794:	24010034 	li	at,52
    8798:	14410002 	bne	v0,at,87a4 <L80827100+0x894>
    879c:	24190003 	li	t9,3
    87a0:	a218027a 	sb	t8,634(s0)
    87a4:	24010035 	li	at,53
    87a8:	54410003 	bnel	v0,at,87b8 <L80827100+0x8a8>
    87ac:	24010037 	li	at,55
    87b0:	a219027a 	sb	t9,634(s0)
    87b4:	24010037 	li	at,55
    87b8:	54410007 	bnel	v0,at,87d8 <L80827100+0x8c8>
    87bc:	24180004 	li	t8,4
    87c0:	912e003e 	lbu	t6,62(t1)
    87c4:	240f0007 	li	t7,7
    87c8:	55c00003 	bnezl	t6,87d8 <L80827100+0x8c8>
    87cc:	24180004 	li	t8,4
    87d0:	a20f027a 	sb	t7,634(s0)
    87d4:	24180004 	li	t8,4
    87d8:	1000ffff 	b	87d8 <L80827100+0x8c8>
    87dc:	a61801d4 	sh	t8,468(s0)

000087e0 <L808279D0>:
    87e0:	3c014320 	lui	at,0x4320
    87e4:	44811000 	mtc1	at,$f2
    87e8:	c60401f4 	lwc1	$f4,500(s0)
    87ec:	46041032 	c.eq.s	$f2,$f4
    87f0:	00000000 	nop
    87f4:	4502000a 	bc1fl	8820 <L808279D0+0x40>
    87f8:	8d190000 	lw	t9,0(t0)
    87fc:	0c000000 	jal	0 <func_8081F1F0>
    8800:	02202025 	move	a0,s1
    8804:	0c000000 	jal	0 <func_8081F1F0>
    8808:	00000000 	nop
    880c:	3c014320 	lui	at,0x4320
    8810:	3c080000 	lui	t0,0x0
    8814:	44811000 	mtc1	at,$f2
    8818:	25080000 	addiu	t0,t0,0
    881c:	8d190000 	lw	t9,0(t0)
    8820:	c6060200 	lwc1	$f6,512(s0)
    8824:	860f025a 	lh	t7,602(s0)
    8828:	872e0da0 	lh	t6,3488(t9)
    882c:	240500ff 	li	a1,255
    8830:	44802000 	mtc1	zero,$f4
    8834:	448e4000 	mtc1	t6,$f8
    8838:	240e0028 	li	t6,40
    883c:	468042a0 	cvt.s.w	$f10,$f8
    8840:	460a1403 	div.s	$f16,$f2,$f10
    8844:	46103481 	sub.s	$f18,$f6,$f16
    8848:	e6120200 	swc1	$f18,512(s0)
    884c:	c6000200 	lwc1	$f0,512(s0)
    8850:	e60001fc 	swc1	$f0,508(s0)
    8854:	e60001f8 	swc1	$f0,504(s0)
    8858:	e60001f4 	swc1	$f0,500(s0)
    885c:	8d180000 	lw	t8,0(t0)
    8860:	87190da0 	lh	t9,3488(t8)
    8864:	01d9001a 	div	zero,t6,t9
    8868:	17200002 	bnez	t9,8874 <L808279D0+0x94>
    886c:	00000000 	nop
    8870:	0007000d 	break	0x7
    8874:	2401ffff 	li	at,-1
    8878:	17210004 	bne	t9,at,888c <L808279D0+0xac>
    887c:	3c018000 	lui	at,0x8000
    8880:	15c10002 	bne	t6,at,888c <L808279D0+0xac>
    8884:	00000000 	nop
    8888:	0006000d 	break	0x6
    888c:	0000c012 	mflo	t8
    8890:	01f87021 	addu	t6,t7,t8
    8894:	a60e025a 	sh	t6,602(s0)
    8898:	8d0f0000 	lw	t7,0(t0)
    889c:	3c010001 	lui	at,0x1
    88a0:	342104f0 	ori	at,at,0x4f0
    88a4:	85f80da0 	lh	t8,3488(t7)
    88a8:	02211821 	addu	v1,s1,at
    88ac:	84790256 	lh	t9,598(v1)
    88b0:	00b8001a 	div	zero,a1,t8
    88b4:	00007012 	mflo	t6
    88b8:	032e7821 	addu	t7,t9,t6
    88bc:	a46f0256 	sh	t7,598(v1)
    88c0:	8d020000 	lw	v0,0(t0)
    88c4:	17000002 	bnez	t8,88d0 <L808279D0+0xf0>
    88c8:	00000000 	nop
    88cc:	0007000d 	break	0x7
    88d0:	2401ffff 	li	at,-1
    88d4:	17010004 	bne	t8,at,88e8 <L808279D0+0x108>
    88d8:	3c018000 	lui	at,0x8000
    88dc:	14a10002 	bne	a1,at,88e8 <L808279D0+0x108>
    88e0:	00000000 	nop
    88e4:	0006000d 	break	0x6
    88e8:	84580dc6 	lh	t8,3526(v0)
    88ec:	84590da0 	lh	t9,3488(v0)
    88f0:	844f0db4 	lh	t7,3508(v0)
    88f4:	0319001a 	div	zero,t8,t9
    88f8:	17200002 	bnez	t9,8904 <L808279D0+0x124>
    88fc:	00000000 	nop
    8900:	0007000d 	break	0x7
    8904:	2401ffff 	li	at,-1
    8908:	17210004 	bne	t9,at,891c <L808279D0+0x13c>
    890c:	3c018000 	lui	at,0x8000
    8910:	17010002 	bne	t8,at,891c <L808279D0+0x13c>
    8914:	00000000 	nop
    8918:	0006000d 	break	0x6
    891c:	00007012 	mflo	t6
    8920:	01eec021 	addu	t8,t7,t6
    8924:	a4580db4 	sh	t8,3508(v0)
    8928:	8d020000 	lw	v0,0(t0)
    892c:	84590dc8 	lh	t9,3528(v0)
    8930:	844f0da0 	lh	t7,3488(v0)
    8934:	84580db6 	lh	t8,3510(v0)
    8938:	032f001a 	div	zero,t9,t7
    893c:	15e00002 	bnez	t7,8948 <L808279D0+0x168>
    8940:	00000000 	nop
    8944:	0007000d 	break	0x7
    8948:	2401ffff 	li	at,-1
    894c:	15e10004 	bne	t7,at,8960 <L808279D0+0x180>
    8950:	3c018000 	lui	at,0x8000
    8954:	17210002 	bne	t9,at,8960 <L808279D0+0x180>
    8958:	00000000 	nop
    895c:	0006000d 	break	0x6
    8960:	00007012 	mflo	t6
    8964:	030ec821 	addu	t9,t8,t6
    8968:	a4590db6 	sh	t9,3510(v0)
    896c:	8d020000 	lw	v0,0(t0)
    8970:	240e0096 	li	t6,150
    8974:	84580da0 	lh	t8,3488(v0)
    8978:	844f0a9e 	lh	t7,2718(v0)
    897c:	01d8001a 	div	zero,t6,t8
    8980:	17000002 	bnez	t8,898c <L808279D0+0x1ac>
    8984:	00000000 	nop
    8988:	0007000d 	break	0x7
    898c:	2401ffff 	li	at,-1
    8990:	17010004 	bne	t8,at,89a4 <L808279D0+0x1c4>
    8994:	3c018000 	lui	at,0x8000
    8998:	15c10002 	bne	t6,at,89a4 <L808279D0+0x1c4>
    899c:	00000000 	nop
    89a0:	0006000d 	break	0x6
    89a4:	0000c812 	mflo	t9
    89a8:	01f97021 	addu	t6,t7,t9
    89ac:	a44e0a9e 	sh	t6,2718(v0)
    89b0:	8d020000 	lw	v0,0(t0)
    89b4:	c60801f4 	lwc1	$f8,500(s0)
    89b8:	84580da0 	lh	t8,3488(v0)
    89bc:	844f0d9c 	lh	t7,3484(v0)
    89c0:	46082032 	c.eq.s	$f4,$f8
    89c4:	030fc821 	addu	t9,t8,t7
    89c8:	00b9001a 	div	zero,a1,t9
    89cc:	960f0208 	lhu	t7,520(s0)
    89d0:	00007012 	mflo	t6
    89d4:	31d8ffff 	andi	t8,t6,0xffff
    89d8:	17200002 	bnez	t9,89e4 <L808279D0+0x204>
    89dc:	00000000 	nop
    89e0:	0007000d 	break	0x7
    89e4:	2401ffff 	li	at,-1
    89e8:	17210004 	bne	t9,at,89fc <L808279D0+0x21c>
    89ec:	3c018000 	lui	at,0x8000
    89f0:	14a10002 	bne	a1,at,89fc <L808279D0+0x21c>
    89f4:	00000000 	nop
    89f8:	0006000d 	break	0x6
    89fc:	01f8c821 	addu	t9,t7,t8
    8a00:	45000006 	bc1f	8a1c <L808279D0+0x23c>
    8a04:	a6190208 	sh	t9,520(s0)
    8a08:	a4650256 	sh	a1,598(v1)
    8a0c:	8d0e0000 	lw	t6,0(t0)
    8a10:	240f0005 	li	t7,5
    8a14:	a5c00d98 	sh	zero,3480(t6)
    8a18:	a60f01d4 	sh	t7,468(s0)
    8a1c:	0c000000 	jal	0 <func_8081F1F0>
    8a20:	02202025 	move	a0,s1
    8a24:	1000074b 	b	a754 <L80829940+0x4>
    8a28:	8fbf0024 	lw	ra,36(sp)

00008a2c <L80827C1C>:
    8a2c:	8d020000 	lw	v0,0(t0)
    8a30:	240500ff 	li	a1,255
    8a34:	02202025 	move	a0,s1
    8a38:	84580da0 	lh	t8,3488(v0)
    8a3c:	84590d9c 	lh	t9,3484(v0)
    8a40:	03197021 	addu	t6,t8,t9
    8a44:	00ae001a 	div	zero,a1,t6
    8a48:	96190208 	lhu	t9,520(s0)
    8a4c:	0000c012 	mflo	t8
    8a50:	15c00002 	bnez	t6,8a5c <L80827C1C+0x30>
    8a54:	00000000 	nop
    8a58:	0007000d 	break	0x7
    8a5c:	2401ffff 	li	at,-1
    8a60:	15c10004 	bne	t6,at,8a74 <L80827C1C+0x48>
    8a64:	3c018000 	lui	at,0x8000
    8a68:	14a10002 	bne	a1,at,8a74 <L80827C1C+0x48>
    8a6c:	00000000 	nop
    8a70:	0006000d 	break	0x6
    8a74:	03387021 	addu	t6,t9,t8
    8a78:	0c000000 	jal	0 <func_8081F1F0>
    8a7c:	a60e0208 	sh	t6,520(s0)
    8a80:	960f01d4 	lhu	t7,468(s0)
    8a84:	24010006 	li	at,6
    8a88:	55e10732 	bnel	t7,at,a754 <L80829940+0x4>
    8a8c:	8fbf0024 	lw	ra,36(sp)
    8a90:	0c000000 	jal	0 <func_8081F1F0>
    8a94:	02202025 	move	a0,s1
    8a98:	1000072e 	b	a754 <L80829940+0x4>
    8a9c:	8fbf0024 	lw	ra,36(sp)

00008aa0 <L80827C90>:
    8aa0:	961901e4 	lhu	t9,484(s0)
    8aa4:	2f21000a 	sltiu	at,t9,10
    8aa8:	102000fd 	beqz	at,8ea0 <L80827FB4+0xdc>
    8aac:	0019c880 	sll	t9,t9,0x2
    8ab0:	3c010000 	lui	at,0x0
    8ab4:	00390821 	addu	at,at,t9
    8ab8:	8c390000 	lw	t9,0(at)
    8abc:	03200008 	jr	t9
    8ac0:	00000000 	nop

00008ac4 <L80827CB4>:
    8ac4:	96230020 	lhu	v1,32(s1)
    8ac8:	2401efff 	li	at,-4097
    8acc:	02202025 	move	a0,s1
    8ad0:	0061c027 	nor	t8,v1,at
    8ad4:	1700000e 	bnez	t8,8b10 <L80827CB4+0x4c>
    8ad8:	2401bfff 	li	at,-16385
    8adc:	0c000000 	jal	0 <func_8081F1F0>
    8ae0:	2405000a 	li	a1,10
    8ae4:	3c080000 	lui	t0,0x0
    8ae8:	240e0012 	li	t6,18
    8aec:	25080000 	addiu	t0,t0,0
    8af0:	a60e01d4 	sh	t6,468(s0)
    8af4:	8d190000 	lw	t9,0(t0)
    8af8:	240fe7a0 	li	t7,-6240
    8afc:	00002025 	move	a0,zero
    8b00:	0c000000 	jal	0 <func_8081F1F0>
    8b04:	a72f0d98 	sh	t7,3480(t9)
    8b08:	10000712 	b	a754 <L80829940+0x4>
    8b0c:	8fbf0024 	lw	ra,36(sp)
    8b10:	0061c027 	nor	t8,v1,at
    8b14:	1700ffff 	bnez	t8,8b14 <L80827CB4+0x50>
    8b18:	3c070000 	lui	a3,0x0
    8b1c:	3c0e0000 	lui	t6,0x0
    8b20:	24e70000 	addiu	a3,a3,0
    8b24:	a60001e6 	sh	zero,486(s0)
    8b28:	a6000262 	sh	zero,610(s0)
    8b2c:	25ce0000 	addiu	t6,t6,0
    8b30:	3c050000 	lui	a1,0x0
    8b34:	24a50000 	addiu	a1,a1,0
    8b38:	afae0014 	sw	t6,20(sp)
    8b3c:	afa70010 	sw	a3,16(sp)
    8b40:	24044808 	li	a0,18440
    8b44:	0c000000 	jal	0 <func_8081F1F0>
    8b48:	24060004 	li	a2,4
    8b4c:	3c090000 	lui	t1,0x0
    8b50:	25290000 	addiu	t1,t1,0
    8b54:	240200ff 	li	v0,255
    8b58:	a12213e5 	sb	v0,5093(t1)
    8b5c:	a12213e4 	sb	v0,5092(t1)
    8b60:	a12213e3 	sb	v0,5091(t1)
    8b64:	a12213e2 	sb	v0,5090(t1)
    8b68:	a12013e6 	sb	zero,5094(t1)
    8b6c:	a52013ea 	sh	zero,5098(t1)
    8b70:	0c000000 	jal	0 <func_8081F1F0>
    8b74:	24040032 	li	a0,50
    8b78:	24190007 	li	t9,7
    8b7c:	a60001ec 	sh	zero,492(s0)
    8b80:	1000ffff 	b	8b80 <L80827CB4+0xbc>
    8b84:	a61901d4 	sh	t9,468(s0)

00008b88 <L80827D78>:
    8b88:	02202025 	move	a0,s1
    8b8c:	0c000000 	jal	0 <func_8081F1F0>
    8b90:	26250014 	addiu	a1,s1,20
    8b94:	100006ef 	b	a754 <L80829940+0x4>
    8b98:	8fbf0024 	lw	ra,36(sp)

00008b9c <L80827D8C>:
    8b9c:	0c000000 	jal	0 <func_8081F1F0>
    8ba0:	00000000 	nop
    8ba4:	ae020194 	sw	v0,404(s0)
    8ba8:	90580001 	lbu	t8,1(v0)
    8bac:	240e0004 	li	t6,4
    8bb0:	00002025 	move	a0,zero
    8bb4:	570006e7 	bnezl	t8,a754 <L80829940+0x4>
    8bb8:	8fbf0024 	lw	ra,36(sp)
    8bbc:	0c000000 	jal	0 <func_8081F1F0>
    8bc0:	a60e01e4 	sh	t6,484(s0)
    8bc4:	100006e3 	b	a754 <L80829940+0x4>
    8bc8:	8fbf0024 	lw	ra,36(sp)

00008bcc <L80827DBC>:
    8bcc:	0c000000 	jal	0 <func_8081F1F0>
    8bd0:	02202025 	move	a0,s1
    8bd4:	100006df 	b	a754 <L80829940+0x4>
    8bd8:	8fbf0024 	lw	ra,36(sp)

00008bdc <L80827DCC>:
    8bdc:	26250014 	addiu	a1,s1,20
    8be0:	0c000000 	jal	0 <func_8081F1F0>
    8be4:	afa50034 	sw	a1,52(sp)
    8be8:	8fa50034 	lw	a1,52(sp)
    8bec:	ae020194 	sw	v0,404(s0)
    8bf0:	2401efff 	li	at,-4097
    8bf4:	94a3000c 	lhu	v1,12(a1)
    8bf8:	00617827 	nor	t7,v1,at
    8bfc:	15e00011 	bnez	t7,8c44 <L80827DCC+0x68>
    8c00:	2401bfff 	li	at,-16385
    8c04:	0c000000 	jal	0 <func_8081F1F0>
    8c08:	00002025 	move	a0,zero
    8c0c:	02202025 	move	a0,s1
    8c10:	0c000000 	jal	0 <func_8081F1F0>
    8c14:	2405000a 	li	a1,10
    8c18:	3c080000 	lui	t0,0x0
    8c1c:	24190012 	li	t9,18
    8c20:	25080000 	addiu	t0,t0,0
    8c24:	a61901d4 	sh	t9,468(s0)
    8c28:	8d0e0000 	lw	t6,0(t0)
    8c2c:	2418e7a0 	li	t8,-6240
    8c30:	00002025 	move	a0,zero
    8c34:	0c000000 	jal	0 <func_8081F1F0>
    8c38:	a5d80d98 	sh	t8,3480(t6)
    8c3c:	1000ffff 	b	8c3c <L80827DCC+0x60>
    8c40:	a60001e4 	sh	zero,484(s0)
    8c44:	00617827 	nor	t7,v1,at
    8c48:	55e00021 	bnezl	t7,8cd0 <L80827DCC+0xf4>
    8c4c:	8e0f0194 	lw	t7,404(s0)
    8c50:	0c000000 	jal	0 <func_8081F1F0>
    8c54:	00002025 	move	a0,zero
    8c58:	3c070000 	lui	a3,0x0
    8c5c:	3c190000 	lui	t9,0x0
    8c60:	24e70000 	addiu	a3,a3,0
    8c64:	a60001e4 	sh	zero,484(s0)
    8c68:	a60001e6 	sh	zero,486(s0)
    8c6c:	a6000262 	sh	zero,610(s0)
    8c70:	27390000 	addiu	t9,t9,0
    8c74:	3c050000 	lui	a1,0x0
    8c78:	24a50000 	addiu	a1,a1,0
    8c7c:	afb90014 	sw	t9,20(sp)
    8c80:	afa70010 	sw	a3,16(sp)
    8c84:	24044808 	li	a0,18440
    8c88:	0c000000 	jal	0 <func_8081F1F0>
    8c8c:	24060004 	li	a2,4
    8c90:	3c090000 	lui	t1,0x0
    8c94:	25290000 	addiu	t1,t1,0
    8c98:	240200ff 	li	v0,255
    8c9c:	a12213e5 	sb	v0,5093(t1)
    8ca0:	a12213e4 	sb	v0,5092(t1)
    8ca4:	a12213e3 	sb	v0,5091(t1)
    8ca8:	a12213e2 	sb	v0,5090(t1)
    8cac:	a12013e6 	sb	zero,5094(t1)
    8cb0:	a52013ea 	sh	zero,5098(t1)
    8cb4:	0c000000 	jal	0 <func_8081F1F0>
    8cb8:	24040032 	li	a0,50
    8cbc:	240e0007 	li	t6,7
    8cc0:	a60001ec 	sh	zero,492(s0)
    8cc4:	1000ffff 	b	8cc4 <L80827DCC+0xe8>
    8cc8:	a60e01d4 	sh	t6,468(s0)
    8ccc:	8e0f0194 	lw	t7,404(s0)
    8cd0:	86190264 	lh	t9,612(s0)
    8cd4:	3c070000 	lui	a3,0x0
    8cd8:	91e20001 	lbu	v0,1(t7)
    8cdc:	24e70000 	addiu	a3,a3,0
    8ce0:	24044807 	li	a0,18439
    8ce4:	17220011 	bne	t9,v0,8d2c <L80827DCC+0x150>
    8ce8:	240500ff 	li	a1,255
    8cec:	3c180000 	lui	t8,0x0
    8cf0:	27180000 	addiu	t8,t8,0
    8cf4:	3c050000 	lui	a1,0x0
    8cf8:	24a50000 	addiu	a1,a1,0
    8cfc:	afb80014 	sw	t8,20(sp)
    8d00:	24060004 	li	a2,4
    8d04:	0c000000 	jal	0 <func_8081F1F0>
    8d08:	afa70010 	sw	a3,16(sp)
    8d0c:	3c010000 	lui	at,0x0
    8d10:	a4200000 	sh	zero,0(at)
    8d14:	240e0006 	li	t6,6
    8d18:	2402001e 	li	v0,30
    8d1c:	a60e01e4 	sh	t6,484(s0)
    8d20:	3c010000 	lui	at,0x0
    8d24:	1000ffff 	b	8d24 <L80827DCC+0x148>
    8d28:	a4220000 	sh	v0,0(at)
    8d2c:	14a2ffff 	bne	a1,v0,8d2c <L80827DCC+0x150>
    8d30:	3c070000 	lui	a3,0x0
    8d34:	3c0f0000 	lui	t7,0x0
    8d38:	24e70000 	addiu	a3,a3,0
    8d3c:	25ef0000 	addiu	t7,t7,0
    8d40:	3c050000 	lui	a1,0x0
    8d44:	24a50000 	addiu	a1,a1,0
    8d48:	afaf0014 	sw	t7,20(sp)
    8d4c:	afa70010 	sw	a3,16(sp)
    8d50:	24044827 	li	a0,18471
    8d54:	0c000000 	jal	0 <func_8081F1F0>
    8d58:	24060004 	li	a2,4
    8d5c:	24190004 	li	t9,4
    8d60:	3c010000 	lui	at,0x0
    8d64:	a4390000 	sh	t9,0(at)
    8d68:	24180006 	li	t8,6
    8d6c:	24020014 	li	v0,20
    8d70:	a61801e4 	sh	t8,484(s0)
    8d74:	3c010000 	lui	at,0x0
    8d78:	1000ffff 	b	8d78 <L80827DCC+0x19c>
    8d7c:	a4220000 	sh	v0,0(at)

00008d80 <L80827F70>:
    8d80:	3c020000 	lui	v0,0x0
    8d84:	84420000 	lh	v0,0(v0)
    8d88:	3c010000 	lui	at,0x0
    8d8c:	3c0e0000 	lui	t6,0x0
    8d90:	2442ffff 	addiu	v0,v0,-1
    8d94:	00021400 	sll	v0,v0,0x10
    8d98:	00021403 	sra	v0,v0,0x10
    8d9c:	1440ffff 	bnez	v0,8d9c <L80827F70+0x1c>
    8da0:	a4220000 	sh	v0,0(at)
    8da4:	85ce0000 	lh	t6,0(t6)
    8da8:	31cfffff 	andi	t7,t6,0xffff
    8dac:	15e0ffff 	bnez	t7,8dac <L80827F70+0x2c>
    8db0:	a60e01e4 	sh	t6,484(s0)
    8db4:	0c000000 	jal	0 <func_8081F1F0>
    8db8:	00002025 	move	a0,zero
    8dbc:	10000665 	b	a754 <L80829940+0x4>
    8dc0:	8fbf0024 	lw	ra,36(sp)

00008dc4 <L80827FB4>:
    8dc4:	96230020 	lhu	v1,32(s1)
    8dc8:	2401efff 	li	at,-4097
    8dcc:	0061c827 	nor	t9,v1,at
    8dd0:	17200011 	bnez	t9,8e18 <L80827FB4+0x54>
    8dd4:	2401bfff 	li	at,-16385
    8dd8:	0c000000 	jal	0 <func_8081F1F0>
    8ddc:	00002025 	move	a0,zero
    8de0:	02202025 	move	a0,s1
    8de4:	0c000000 	jal	0 <func_8081F1F0>
    8de8:	2405000a 	li	a1,10
    8dec:	3c080000 	lui	t0,0x0
    8df0:	24180012 	li	t8,18
    8df4:	25080000 	addiu	t0,t0,0
    8df8:	a61801d4 	sh	t8,468(s0)
    8dfc:	8d0f0000 	lw	t7,0(t0)
    8e00:	240ee7a0 	li	t6,-6240
    8e04:	00002025 	move	a0,zero
    8e08:	0c000000 	jal	0 <func_8081F1F0>
    8e0c:	a5ee0d98 	sh	t6,3480(t7)
    8e10:	1000ffff 	b	8e10 <L80827FB4+0x4c>
    8e14:	a60001e4 	sh	zero,484(s0)
    8e18:	0061c827 	nor	t9,v1,at
    8e1c:	5720064d 	bnezl	t9,a754 <L80829940+0x4>
    8e20:	8fbf0024 	lw	ra,36(sp)
    8e24:	0c000000 	jal	0 <func_8081F1F0>
    8e28:	00002025 	move	a0,zero
    8e2c:	3c070000 	lui	a3,0x0
    8e30:	3c180000 	lui	t8,0x0
    8e34:	24e70000 	addiu	a3,a3,0
    8e38:	a60001e4 	sh	zero,484(s0)
    8e3c:	a60001e6 	sh	zero,486(s0)
    8e40:	a6000262 	sh	zero,610(s0)
    8e44:	27180000 	addiu	t8,t8,0
    8e48:	3c050000 	lui	a1,0x0
    8e4c:	24a50000 	addiu	a1,a1,0
    8e50:	afb80014 	sw	t8,20(sp)
    8e54:	afa70010 	sw	a3,16(sp)
    8e58:	24044808 	li	a0,18440
    8e5c:	0c000000 	jal	0 <func_8081F1F0>
    8e60:	24060004 	li	a2,4
    8e64:	3c090000 	lui	t1,0x0
    8e68:	25290000 	addiu	t1,t1,0
    8e6c:	240200ff 	li	v0,255
    8e70:	a12213e5 	sb	v0,5093(t1)
    8e74:	a12213e4 	sb	v0,5092(t1)
    8e78:	a12213e3 	sb	v0,5091(t1)
    8e7c:	a12213e2 	sb	v0,5090(t1)
    8e80:	a12013e6 	sb	zero,5094(t1)
    8e84:	a52013ea 	sh	zero,5098(t1)
    8e88:	0c000000 	jal	0 <func_8081F1F0>
    8e8c:	24040032 	li	a0,50
    8e90:	240f0007 	li	t7,7
    8e94:	a60001ec 	sh	zero,492(s0)
    8e98:	1000ffff 	b	8e98 <L80827FB4+0xd4>
    8e9c:	a60f01d4 	sh	t7,468(s0)
    8ea0:	1000ffff 	b	8ea0 <L80827FB4+0xdc>
    8ea4:	a60001e4 	sh	zero,484(s0)

00008ea8 <L80828098>:
    8ea8:	961901ec 	lhu	t9,492(s0)
    8eac:	2f210007 	sltiu	at,t9,7
    8eb0:	1020ffff 	beqz	at,8eb0 <L80828098+0x8>
    8eb4:	0019c880 	sll	t9,t9,0x2
    8eb8:	3c010000 	lui	at,0x0
    8ebc:	00390821 	addu	at,at,t9
    8ec0:	8c390000 	lw	t9,0(at)
    8ec4:	03200008 	jr	t9
    8ec8:	00000000 	nop

00008ecc <L808280BC>:
    8ecc:	8d180000 	lw	t8,0(t0)
    8ed0:	3c01c41d 	lui	at,0xc41d
    8ed4:	44816000 	mtc1	at,$f12
    8ed8:	870e0da0 	lh	t6,3488(t8)
    8edc:	3c01439d 	lui	at,0x439d
    8ee0:	44815000 	mtc1	at,$f10
    8ee4:	448e3000 	mtc1	t6,$f6
    8ee8:	c6040204 	lwc1	$f4,516(s0)
    8eec:	24030001 	li	v1,1
    8ef0:	46803420 	cvt.s.w	$f16,$f6
    8ef4:	46105483 	div.s	$f18,$f10,$f16
    8ef8:	46122201 	sub.s	$f8,$f4,$f18
    8efc:	e6080204 	swc1	$f8,516(s0)
    8f00:	8d020000 	lw	v0,0(t0)
    8f04:	844f0dc6 	lh	t7,3526(v0)
    8f08:	84590da0 	lh	t9,3488(v0)
    8f0c:	844e0db4 	lh	t6,3508(v0)
    8f10:	01f9001a 	div	zero,t7,t9
    8f14:	17200002 	bnez	t9,8f20 <L808280BC+0x54>
    8f18:	00000000 	nop
    8f1c:	0007000d 	break	0x7
    8f20:	2401ffff 	li	at,-1
    8f24:	17210004 	bne	t9,at,8f38 <L808280BC+0x6c>
    8f28:	3c018000 	lui	at,0x8000
    8f2c:	15e10002 	bne	t7,at,8f38 <L808280BC+0x6c>
    8f30:	00000000 	nop
    8f34:	0006000d 	break	0x6
    8f38:	0000c012 	mflo	t8
    8f3c:	01d87823 	subu	t7,t6,t8
    8f40:	a44f0db4 	sh	t7,3508(v0)
    8f44:	8d020000 	lw	v0,0(t0)
    8f48:	84590dc8 	lh	t9,3528(v0)
    8f4c:	844e0da0 	lh	t6,3488(v0)
    8f50:	844f0db6 	lh	t7,3510(v0)
    8f54:	032e001a 	div	zero,t9,t6
    8f58:	0000c012 	mflo	t8
    8f5c:	15c00002 	bnez	t6,8f68 <L808280BC+0x9c>
    8f60:	00000000 	nop
    8f64:	0007000d 	break	0x7
    8f68:	2401ffff 	li	at,-1
    8f6c:	15c10004 	bne	t6,at,8f80 <L808280BC+0xb4>
    8f70:	3c018000 	lui	at,0x8000
    8f74:	17210002 	bne	t9,at,8f80 <L808280BC+0xb4>
    8f78:	00000000 	nop
    8f7c:	0006000d 	break	0x6
    8f80:	01f8c823 	subu	t9,t7,t8
    8f84:	a4590db6 	sh	t9,3510(v0)
    8f88:	c6060204 	lwc1	$f6,516(s0)
    8f8c:	460c303e 	c.le.s	$f6,$f12
    8f90:	00000000 	nop
    8f94:	450205ef 	bc1fl	a754 <L80829940+0x4>
    8f98:	8fbf0024 	lw	ra,36(sp)
    8f9c:	e60c0204 	swc1	$f12,516(s0)
    8fa0:	1000ffff 	b	8fa0 <L808280BC+0xd4>
    8fa4:	a60301ec 	sh	v1,492(s0)

00008fa8 <L80828198>:
    8fa8:	96230020 	lhu	v1,32(s1)
    8fac:	3c01ffff 	lui	at,0xffff
    8fb0:	34217fff 	ori	at,at,0x7fff
    8fb4:	00617027 	nor	t6,v1,at
    8fb8:	15c00038 	bnez	t6,909c <L80828198+0xf4>
    8fbc:	2401efff 	li	at,-4097
    8fc0:	860f0262 	lh	t7,610(s0)
    8fc4:	3c070000 	lui	a3,0x0
    8fc8:	24e70000 	addiu	a3,a3,0
    8fcc:	11e0001d 	beqz	t7,9044 <L80828198+0x9c>
    8fd0:	24044823 	li	a0,18467
    8fd4:	02202025 	move	a0,s1
    8fd8:	0c000000 	jal	0 <func_8081F1F0>
    8fdc:	2405000a 	li	a1,10
    8fe0:	3c090000 	lui	t1,0x0
    8fe4:	25290000 	addiu	t1,t1,0
    8fe8:	a12013e5 	sb	zero,5093(t1)
    8fec:	a12013e4 	sb	zero,5092(t1)
    8ff0:	a12013e3 	sb	zero,5091(t1)
    8ff4:	a12013e2 	sb	zero,5090(t1)
    8ff8:	a52013ea 	sh	zero,5098(t1)
    8ffc:	0c000000 	jal	0 <func_8081F1F0>
    9000:	24040032 	li	a0,50
    9004:	24060002 	li	a2,2
    9008:	3c080000 	lui	t0,0x0
    900c:	25080000 	addiu	t0,t0,0
    9010:	a60601ec 	sh	a2,492(s0)
    9014:	8d190000 	lw	t9,0(t0)
    9018:	2418e7a0 	li	t8,-6240
    901c:	00002025 	move	a0,zero
    9020:	a7380d98 	sh	t8,3480(t9)
    9024:	c60a0204 	lwc1	$f10,516(s0)
    9028:	8d180000 	lw	t8,0(t0)
    902c:	4600540d 	trunc.w.s	$f16,$f10
    9030:	440f8000 	mfc1	t7,$f16
    9034:	0c000000 	jal	0 <func_8081F1F0>
    9038:	a70f04a4 	sh	t7,1188(t8)
    903c:	100005c5 	b	a754 <L80829940+0x4>
    9040:	8fbf0024 	lw	ra,36(sp)
    9044:	3c190000 	lui	t9,0x0
    9048:	27390000 	addiu	t9,t9,0
    904c:	3c050000 	lui	a1,0x0
    9050:	24a50000 	addiu	a1,a1,0
    9054:	afb90014 	sw	t9,20(sp)
    9058:	24060004 	li	a2,4
    905c:	0c000000 	jal	0 <func_8081F1F0>
    9060:	afa70010 	sw	a3,16(sp)
    9064:	0c000000 	jal	0 <func_8081F1F0>
    9068:	02202025 	move	a0,s1
    906c:	862e00a4 	lh	t6,164(s1)
    9070:	3c090000 	lui	t1,0x0
    9074:	25290000 	addiu	t1,t1,0
    9078:	26241f74 	addiu	a0,s1,8052
    907c:	0c000000 	jal	0 <func_8081F1F0>
    9080:	a52e0066 	sh	t6,102(t1)
    9084:	240f0004 	li	t7,4
    9088:	a60f01ec 	sh	t7,492(s0)
    908c:	24020003 	li	v0,3
    9090:	3c010000 	lui	at,0x0
    9094:	1000ffff 	b	9094 <L80828198+0xec>
    9098:	a4220000 	sh	v0,0(at)
    909c:	0061c027 	nor	t8,v1,at
    90a0:	13000003 	beqz	t8,90b0 <L80828198+0x108>
    90a4:	2401bfff 	li	at,-16385
    90a8:	0061c827 	nor	t9,v1,at
    90ac:	1720ffff 	bnez	t9,90ac <L80828198+0x104>
    90b0:	02202025 	move	a0,s1
    90b4:	0c000000 	jal	0 <func_8081F1F0>
    90b8:	2405000a 	li	a1,10
    90bc:	24060002 	li	a2,2
    90c0:	3c080000 	lui	t0,0x0
    90c4:	25080000 	addiu	t0,t0,0
    90c8:	a60601ec 	sh	a2,492(s0)
    90cc:	8d0f0000 	lw	t7,0(t0)
    90d0:	240ee7a0 	li	t6,-6240
    90d4:	00002025 	move	a0,zero
    90d8:	a5ee0d98 	sh	t6,3480(t7)
    90dc:	c6040204 	lwc1	$f4,516(s0)
    90e0:	8d0e0000 	lw	t6,0(t0)
    90e4:	4600248d 	trunc.w.s	$f18,$f4
    90e8:	44199000 	mfc1	t9,$f18
    90ec:	0c000000 	jal	0 <func_8081F1F0>
    90f0:	a5d904a4 	sh	t9,1188(t6)
    90f4:	3c090000 	lui	t1,0x0
    90f8:	25290000 	addiu	t1,t1,0
    90fc:	a12013e5 	sb	zero,5093(t1)
    9100:	a12013e4 	sb	zero,5092(t1)
    9104:	a12013e3 	sb	zero,5091(t1)
    9108:	a12013e2 	sb	zero,5090(t1)
    910c:	a52013ea 	sh	zero,5098(t1)
    9110:	0c000000 	jal	0 <func_8081F1F0>
    9114:	24040032 	li	a0,50
    9118:	1000058e 	b	a754 <L80829940+0x4>
    911c:	8fbf0024 	lw	ra,36(sp)

00009120 <L80828310>:
    9120:	96230020 	lhu	v1,32(s1)
    9124:	2401bfff 	li	at,-16385
    9128:	02202025 	move	a0,s1
    912c:	00617827 	nor	t7,v1,at
    9130:	11e0000f 	beqz	t7,9170 <L80828310+0x50>
    9134:	3c01ffff 	lui	at,0xffff
    9138:	34217fff 	ori	at,at,0x7fff
    913c:	0061c027 	nor	t8,v1,at
    9140:	1300000b 	beqz	t8,9170 <L80828310+0x50>
    9144:	2401efff 	li	at,-4097
    9148:	0061c827 	nor	t9,v1,at
    914c:	13200008 	beqz	t9,9170 <L80828310+0x50>
    9150:	3c020000 	lui	v0,0x0
    9154:	84420000 	lh	v0,0(v0)
    9158:	3c010000 	lui	at,0x0
    915c:	2442ffff 	addiu	v0,v0,-1
    9160:	00021400 	sll	v0,v0,0x10
    9164:	00021403 	sra	v0,v0,0x10
    9168:	1440ffff 	bnez	v0,9168 <L80828310+0x48>
    916c:	a4220000 	sh	v0,0(at)
    9170:	0c000000 	jal	0 <func_8081F1F0>
    9174:	2405000a 	li	a1,10
    9178:	3c090000 	lui	t1,0x0
    917c:	25290000 	addiu	t1,t1,0
    9180:	a12013e5 	sb	zero,5093(t1)
    9184:	a12013e4 	sb	zero,5092(t1)
    9188:	a12013e3 	sb	zero,5091(t1)
    918c:	a12013e2 	sb	zero,5090(t1)
    9190:	a52013ea 	sh	zero,5098(t1)
    9194:	0c000000 	jal	0 <func_8081F1F0>
    9198:	24040032 	li	a0,50
    919c:	3c080000 	lui	t0,0x0
    91a0:	240e0005 	li	t6,5
    91a4:	25080000 	addiu	t0,t0,0
    91a8:	a60e01ec 	sh	t6,492(s0)
    91ac:	8d180000 	lw	t8,0(t0)
    91b0:	240fe7a0 	li	t7,-6240
    91b4:	00002025 	move	a0,zero
    91b8:	a70f0d98 	sh	t7,3480(t8)
    91bc:	c6080204 	lwc1	$f8,516(s0)
    91c0:	8d0f0000 	lw	t7,0(t0)
    91c4:	4600418d 	trunc.w.s	$f6,$f8
    91c8:	440e3000 	mfc1	t6,$f6
    91cc:	0c000000 	jal	0 <func_8081F1F0>
    91d0:	a5ee04a4 	sh	t6,1188(t7)
    91d4:	1000055f 	b	a754 <L80829940+0x4>
    91d8:	8fbf0024 	lw	ra,36(sp)

000091dc <L808283CC>:
    91dc:	8d180000 	lw	t8,0(t0)
    91e0:	3c01c39d 	lui	at,0xc39d
    91e4:	44811000 	mtc1	at,$f2
    91e8:	87190da0 	lh	t9,3488(t8)
    91ec:	3c01439d 	lui	at,0x439d
    91f0:	44815000 	mtc1	at,$f10
    91f4:	44998000 	mtc1	t9,$f16
    91f8:	c6080204 	lwc1	$f8,516(s0)
    91fc:	46808120 	cvt.s.w	$f4,$f16
    9200:	46045483 	div.s	$f18,$f10,$f4
    9204:	46124180 	add.s	$f6,$f8,$f18
    9208:	e6060204 	swc1	$f6,516(s0)
    920c:	8d020000 	lw	v0,0(t0)
    9210:	844e0dc6 	lh	t6,3526(v0)
    9214:	844f0da0 	lh	t7,3488(v0)
    9218:	84590db4 	lh	t9,3508(v0)
    921c:	01cf001a 	div	zero,t6,t7
    9220:	15e00002 	bnez	t7,922c <L808283CC+0x50>
    9224:	00000000 	nop
    9228:	0007000d 	break	0x7
    922c:	2401ffff 	li	at,-1
    9230:	15e10004 	bne	t7,at,9244 <L808283CC+0x68>
    9234:	3c018000 	lui	at,0x8000
    9238:	15c10002 	bne	t6,at,9244 <L808283CC+0x68>
    923c:	00000000 	nop
    9240:	0006000d 	break	0x6
    9244:	0000c012 	mflo	t8
    9248:	03387021 	addu	t6,t9,t8
    924c:	a44e0db4 	sh	t6,3508(v0)
    9250:	8d020000 	lw	v0,0(t0)
    9254:	844f0dc8 	lh	t7,3528(v0)
    9258:	84590da0 	lh	t9,3488(v0)
    925c:	844e0db6 	lh	t6,3510(v0)
    9260:	01f9001a 	div	zero,t7,t9
    9264:	0000c012 	mflo	t8
    9268:	17200002 	bnez	t9,9274 <L808283CC+0x98>
    926c:	00000000 	nop
    9270:	0007000d 	break	0x7
    9274:	2401ffff 	li	at,-1
    9278:	17210004 	bne	t9,at,928c <L808283CC+0xb0>
    927c:	3c018000 	lui	at,0x8000
    9280:	15e10002 	bne	t7,at,928c <L808283CC+0xb0>
    9284:	00000000 	nop
    9288:	0006000d 	break	0x6
    928c:	01d87821 	addu	t7,t6,t8
    9290:	a44f0db6 	sh	t7,3510(v0)
    9294:	c6100204 	lwc1	$f16,516(s0)
    9298:	24190006 	li	t9,6
    929c:	4610103e 	c.le.s	$f2,$f16
    92a0:	00000000 	nop
    92a4:	4502052b 	bc1fl	a754 <L80829940+0x4>
    92a8:	8fbf0024 	lw	ra,36(sp)
    92ac:	44800000 	mtc1	zero,$f0
    92b0:	a61901d4 	sh	t9,468(s0)
    92b4:	a60001ec 	sh	zero,492(s0)
    92b8:	e6020204 	swc1	$f2,516(s0)
    92bc:	e6000200 	swc1	$f0,512(s0)
    92c0:	e60001fc 	swc1	$f0,508(s0)
    92c4:	e60001f8 	swc1	$f0,504(s0)
    92c8:	1000ffff 	b	92c8 <L808283CC+0xec>
    92cc:	e60001f4 	swc1	$f0,500(s0)

000092d0 <L808284C0>:
    92d0:	8d020000 	lw	v0,0(t0)
    92d4:	3c014320 	lui	at,0x4320
    92d8:	44811000 	mtc1	at,$f2
    92dc:	844e04a4 	lh	t6,1188(v0)
    92e0:	c60c0204 	lwc1	$f12,516(s0)
    92e4:	24190013 	li	t9,19
    92e8:	448e5000 	mtc1	t6,$f10
    92ec:	240e03e7 	li	t6,999
    92f0:	46805120 	cvt.s.w	$f4,$f10
    92f4:	46022200 	add.s	$f8,$f4,$f2
    92f8:	46086032 	c.eq.s	$f12,$f8
    92fc:	00000000 	nop
    9300:	45030077 	bc1tl	94e0 <L808284C0+0x210>
    9304:	3c01c3d9 	lui	at,0xc3d9
    9308:	84580da0 	lh	t8,3488(v0)
    930c:	c6120200 	lwc1	$f18,512(s0)
    9310:	860e025a 	lh	t6,602(s0)
    9314:	44983000 	mtc1	t8,$f6
    9318:	240500ff 	li	a1,255
    931c:	46803420 	cvt.s.w	$f16,$f6
    9320:	46101283 	div.s	$f10,$f2,$f16
    9324:	460a9100 	add.s	$f4,$f18,$f10
    9328:	e6040200 	swc1	$f4,512(s0)
    932c:	c6000200 	lwc1	$f0,512(s0)
    9330:	e60001fc 	swc1	$f0,508(s0)
    9334:	e60001f8 	swc1	$f0,504(s0)
    9338:	e60001f4 	swc1	$f0,500(s0)
    933c:	8d0f0000 	lw	t7,0(t0)
    9340:	85f90da0 	lh	t9,3488(t7)
    9344:	44994000 	mtc1	t9,$f8
    9348:	24190028 	li	t9,40
    934c:	468041a0 	cvt.s.w	$f6,$f8
    9350:	46061403 	div.s	$f16,$f2,$f6
    9354:	46106480 	add.s	$f18,$f12,$f16
    9358:	e6120204 	swc1	$f18,516(s0)
    935c:	8d180000 	lw	t8,0(t0)
    9360:	870f0da0 	lh	t7,3488(t8)
    9364:	032f001a 	div	zero,t9,t7
    9368:	15e00002 	bnez	t7,9374 <L808284C0+0xa4>
    936c:	00000000 	nop
    9370:	0007000d 	break	0x7
    9374:	2401ffff 	li	at,-1
    9378:	15e10004 	bne	t7,at,938c <L808284C0+0xbc>
    937c:	3c018000 	lui	at,0x8000
    9380:	17210002 	bne	t9,at,938c <L808284C0+0xbc>
    9384:	00000000 	nop
    9388:	0006000d 	break	0x6
    938c:	0000c012 	mflo	t8
    9390:	01d8c823 	subu	t9,t6,t8
    9394:	a619025a 	sh	t9,602(s0)
    9398:	8d020000 	lw	v0,0(t0)
    939c:	844f0dc6 	lh	t7,3526(v0)
    93a0:	844e0da0 	lh	t6,3488(v0)
    93a4:	84590db4 	lh	t9,3508(v0)
    93a8:	01ee001a 	div	zero,t7,t6
    93ac:	15c00002 	bnez	t6,93b8 <L808284C0+0xe8>
    93b0:	00000000 	nop
    93b4:	0007000d 	break	0x7
    93b8:	2401ffff 	li	at,-1
    93bc:	15c10004 	bne	t6,at,93d0 <L808284C0+0x100>
    93c0:	3c018000 	lui	at,0x8000
    93c4:	15e10002 	bne	t7,at,93d0 <L808284C0+0x100>
    93c8:	00000000 	nop
    93cc:	0006000d 	break	0x6
    93d0:	0000c012 	mflo	t8
    93d4:	03387823 	subu	t7,t9,t8
    93d8:	a44f0db4 	sh	t7,3508(v0)
    93dc:	8d020000 	lw	v0,0(t0)
    93e0:	844e0dc8 	lh	t6,3528(v0)
    93e4:	84590da0 	lh	t9,3488(v0)
    93e8:	844f0db6 	lh	t7,3510(v0)
    93ec:	01d9001a 	div	zero,t6,t9
    93f0:	17200002 	bnez	t9,93fc <L808284C0+0x12c>
    93f4:	00000000 	nop
    93f8:	0007000d 	break	0x7
    93fc:	2401ffff 	li	at,-1
    9400:	17210004 	bne	t9,at,9414 <L808284C0+0x144>
    9404:	3c018000 	lui	at,0x8000
    9408:	15c10002 	bne	t6,at,9414 <L808284C0+0x144>
    940c:	00000000 	nop
    9410:	0006000d 	break	0x6
    9414:	0000c012 	mflo	t8
    9418:	01f87023 	subu	t6,t7,t8
    941c:	24180096 	li	t8,150
    9420:	a44e0db6 	sh	t6,3510(v0)
    9424:	8d020000 	lw	v0,0(t0)
    9428:	844f0da0 	lh	t7,3488(v0)
    942c:	84590a9e 	lh	t9,2718(v0)
    9430:	030f001a 	div	zero,t8,t7
    9434:	15e00002 	bnez	t7,9440 <L808284C0+0x170>
    9438:	00000000 	nop
    943c:	0007000d 	break	0x7
    9440:	2401ffff 	li	at,-1
    9444:	15e10004 	bne	t7,at,9458 <L808284C0+0x188>
    9448:	3c018000 	lui	at,0x8000
    944c:	17010002 	bne	t8,at,9458 <L808284C0+0x188>
    9450:	00000000 	nop
    9454:	0006000d 	break	0x6
    9458:	00007012 	mflo	t6
    945c:	032ec023 	subu	t8,t9,t6
    9460:	a4580a9e 	sh	t8,2718(v0)
    9464:	8d190000 	lw	t9,0(t0)
    9468:	960f0208 	lhu	t7,520(s0)
    946c:	c60a0204 	lwc1	$f10,516(s0)
    9470:	872e0da0 	lh	t6,3488(t9)
    9474:	00ae001a 	div	zero,a1,t6
    9478:	0000c012 	mflo	t8
    947c:	3319ffff 	andi	t9,t8,0xffff
    9480:	15c00002 	bnez	t6,948c <L808284C0+0x1bc>
    9484:	00000000 	nop
    9488:	0007000d 	break	0x7
    948c:	2401ffff 	li	at,-1
    9490:	15c10004 	bne	t6,at,94a4 <L808284C0+0x1d4>
    9494:	3c018000 	lui	at,0x8000
    9498:	14a10002 	bne	a1,at,94a4 <L808284C0+0x1d4>
    949c:	00000000 	nop
    94a0:	0006000d 	break	0x6
    94a4:	01f97023 	subu	t6,t7,t9
    94a8:	a60e0208 	sh	t6,520(s0)
    94ac:	8d180000 	lw	t8,0(t0)
    94b0:	870f04a4 	lh	t7,1188(t8)
    94b4:	448f2000 	mtc1	t7,$f4
    94b8:	00000000 	nop
    94bc:	46802220 	cvt.s.w	$f8,$f4
    94c0:	46024180 	add.s	$f6,$f8,$f2
    94c4:	46065032 	c.eq.s	$f10,$f6
    94c8:	00000000 	nop
    94cc:	450204a1 	bc1fl	a754 <L80829940+0x4>
    94d0:	8fbf0024 	lw	ra,36(sp)
    94d4:	1000ffff 	b	94d4 <L808284C0+0x204>
    94d8:	a6000208 	sh	zero,520(s0)
    94dc:	3c01c3d9 	lui	at,0xc3d9
    94e0:	44818000 	mtc1	at,$f16
    94e4:	a60001d6 	sh	zero,470(s0)
    94e8:	a61901d4 	sh	t9,468(s0)
    94ec:	e6020200 	swc1	$f2,512(s0)
    94f0:	e60201fc 	swc1	$f2,508(s0)
    94f4:	e60201f8 	swc1	$f2,504(s0)
    94f8:	e60201f4 	swc1	$f2,500(s0)
    94fc:	a60e023c 	sh	t6,572(s0)
    9500:	a60001e4 	sh	zero,484(s0)
    9504:	1000ffff 	b	9504 <L808284C0+0x234>
    9508:	e6100204 	swc1	$f16,516(s0)

0000950c <L808286FC>:
    950c:	8d180000 	lw	t8,0(t0)
    9510:	240fff51 	li	t7,-175
    9514:	3c01c3d9 	lui	at,0xc3d9
    9518:	87020f50 	lh	v0,3920(t8)
    951c:	44819000 	mtc1	at,$f18
    9520:	240e009b 	li	t6,155
    9524:	24420003 	addiu	v0,v0,3
    9528:	00021400 	sll	v0,v0,0x10
    952c:	00021403 	sra	v0,v0,0x10
    9530:	a6020236 	sh	v0,566(s0)
    9534:	a602021a 	sh	v0,538(s0)
    9538:	a6020248 	sh	v0,584(s0)
    953c:	8d190000 	lw	t9,0(t0)
    9540:	24040001 	li	a0,1
    9544:	a72f0db4 	sh	t7,3508(t9)
    9548:	8d180000 	lw	t8,0(t0)
    954c:	a70e0db6 	sh	t6,3510(t8)
    9550:	0c000000 	jal	0 <func_8081F1F0>
    9554:	e6120204 	swc1	$f18,516(s0)
    9558:	3c0f0001 	lui	t7,0x1
    955c:	01f17821 	addu	t7,t7,s1
    9560:	8def17a4 	lw	t7,6052(t7)
    9564:	2401ffc0 	li	at,-64
    9568:	3c020000 	lui	v0,0x0
    956c:	3c180000 	lui	t8,0x0
    9570:	25f90030 	addiu	t9,t7,48
    9574:	03217024 	and	t6,t9,at
    9578:	27180000 	addiu	t8,t8,0
    957c:	24420000 	addiu	v0,v0,0
    9580:	ae0e0128 	sw	t6,296(s0)
    9584:	03022823 	subu	a1,t8,v0
    9588:	3c040000 	lui	a0,0x0
    958c:	24840000 	addiu	a0,a0,0
    9590:	afa50030 	sw	a1,48(sp)
    9594:	0c000000 	jal	0 <func_8081F1F0>
    9598:	afa20034 	sw	v0,52(sp)
    959c:	8e040128 	lw	a0,296(s0)
    95a0:	3c070000 	lui	a3,0x0
    95a4:	240f1104 	li	t7,4356
    95a8:	afaf0010 	sw	t7,16(sp)
    95ac:	24e70000 	addiu	a3,a3,0
    95b0:	8fa50034 	lw	a1,52(sp)
    95b4:	0c000000 	jal	0 <func_8081F1F0>
    95b8:	8fa60030 	lw	a2,48(sp)
    95bc:	8e190128 	lw	t9,296(s0)
    95c0:	8fae0030 	lw	t6,48(sp)
    95c4:	2401fff0 	li	at,-16
    95c8:	3c030000 	lui	v1,0x0
    95cc:	032ec021 	addu	t8,t9,t6
    95d0:	270f000f 	addiu	t7,t8,15
    95d4:	3c0e0000 	lui	t6,0x0
    95d8:	01e1c824 	and	t9,t7,at
    95dc:	25ce0000 	addiu	t6,t6,0
    95e0:	24630000 	addiu	v1,v1,0
    95e4:	ae19012c 	sw	t9,300(s0)
    95e8:	01c32823 	subu	a1,t6,v1
    95ec:	3c040000 	lui	a0,0x0
    95f0:	24840000 	addiu	a0,a0,0
    95f4:	afa5002c 	sw	a1,44(sp)
    95f8:	0c000000 	jal	0 <func_8081F1F0>
    95fc:	afa30034 	sw	v1,52(sp)
    9600:	8fb1002c 	lw	s1,44(sp)
    9604:	8e04012c 	lw	a0,300(s0)
    9608:	3c070000 	lui	a3,0x0
    960c:	2418110b 	li	t8,4363
    9610:	afb80010 	sw	t8,16(sp)
    9614:	24e70000 	addiu	a3,a3,0
    9618:	8fa50034 	lw	a1,52(sp)
    961c:	0c000000 	jal	0 <func_8081F1F0>
    9620:	02203025 	move	a2,s1
    9624:	8e0f012c 	lw	t7,300(s0)
    9628:	2401fff0 	li	at,-16
    962c:	3c030000 	lui	v1,0x0
    9630:	01f1c821 	addu	t9,t7,s1
    9634:	272e000f 	addiu	t6,t9,15
    9638:	3c0f0000 	lui	t7,0x0
    963c:	01c1c024 	and	t8,t6,at
    9640:	25ef0000 	addiu	t7,t7,0
    9644:	24630000 	addiu	v1,v1,0
    9648:	ae180130 	sw	t8,304(s0)
    964c:	01e32823 	subu	a1,t7,v1
    9650:	3c040000 	lui	a0,0x0
    9654:	24840000 	addiu	a0,a0,0
    9658:	afa50030 	sw	a1,48(sp)
    965c:	0c000000 	jal	0 <func_8081F1F0>
    9660:	afa30034 	sw	v1,52(sp)
    9664:	8fb10030 	lw	s1,48(sp)
    9668:	8e040130 	lw	a0,304(s0)
    966c:	3c070000 	lui	a3,0x0
    9670:	24191112 	li	t9,4370
    9674:	afb90010 	sw	t9,16(sp)
    9678:	24e70000 	addiu	a3,a3,0
    967c:	8fa50034 	lw	a1,52(sp)
    9680:	0c000000 	jal	0 <func_8081F1F0>
    9684:	02203025 	move	a2,s1
    9688:	8e0e0130 	lw	t6,304(s0)
    968c:	2401fff0 	li	at,-16
    9690:	3c090000 	lui	t1,0x0
    9694:	01d1c021 	addu	t8,t6,s1
    9698:	270f000f 	addiu	t7,t8,15
    969c:	01e1c824 	and	t9,t7,at
    96a0:	25290000 	addiu	t1,t1,0
    96a4:	ae190134 	sw	t9,308(s0)
    96a8:	91231409 	lbu	v1,5129(t1)
    96ac:	3c040000 	lui	a0,0x0
    96b0:	24840000 	addiu	a0,a0,0
    96b4:	14600015 	bnez	v1,970c <L808286FC+0x200>
    96b8:	24010001 	li	at,1
    96bc:	3c020000 	lui	v0,0x0
    96c0:	3c0e0000 	lui	t6,0x0
    96c4:	25ce0000 	addiu	t6,t6,0
    96c8:	24420000 	addiu	v0,v0,0
    96cc:	01c23023 	subu	a2,t6,v0
    96d0:	00c02825 	move	a1,a2
    96d4:	afa6002c 	sw	a2,44(sp)
    96d8:	0c000000 	jal	0 <func_8081F1F0>
    96dc:	afa20034 	sw	v0,52(sp)
    96e0:	8e040134 	lw	a0,308(s0)
    96e4:	3c070000 	lui	a3,0x0
    96e8:	2418111b 	li	t8,4379
    96ec:	8fa6002c 	lw	a2,44(sp)
    96f0:	afb80010 	sw	t8,16(sp)
    96f4:	24e70000 	addiu	a3,a3,0
    96f8:	0c000000 	jal	0 <func_8081F1F0>
    96fc:	8fa50034 	lw	a1,52(sp)
    9700:	3c080000 	lui	t0,0x0
    9704:	1000002d 	b	97bc <L808286FC+0x2b0>
    9708:	25080000 	addiu	t0,t0,0
    970c:	14610017 	bne	v1,at,976c <L808286FC+0x260>
    9710:	3c040000 	lui	a0,0x0
    9714:	3c020000 	lui	v0,0x0
    9718:	3c0f0000 	lui	t7,0x0
    971c:	25ef0000 	addiu	t7,t7,0
    9720:	24420000 	addiu	v0,v0,0
    9724:	01e23023 	subu	a2,t7,v0
    9728:	3c040000 	lui	a0,0x0
    972c:	24840000 	addiu	a0,a0,0
    9730:	00c02825 	move	a1,a2
    9734:	afa6002c 	sw	a2,44(sp)
    9738:	0c000000 	jal	0 <func_8081F1F0>
    973c:	afa20034 	sw	v0,52(sp)
    9740:	8e040134 	lw	a0,308(s0)
    9744:	3c070000 	lui	a3,0x0
    9748:	24191122 	li	t9,4386
    974c:	8fa6002c 	lw	a2,44(sp)
    9750:	afb90010 	sw	t9,16(sp)
    9754:	24e70000 	addiu	a3,a3,0
    9758:	0c000000 	jal	0 <func_8081F1F0>
    975c:	8fa50034 	lw	a1,52(sp)
    9760:	3c080000 	lui	t0,0x0
    9764:	10000015 	b	97bc <L808286FC+0x2b0>
    9768:	25080000 	addiu	t0,t0,0
    976c:	3c020000 	lui	v0,0x0
    9770:	3c0e0000 	lui	t6,0x0
    9774:	25ce0000 	addiu	t6,t6,0
    9778:	24420000 	addiu	v0,v0,0
    977c:	01c23023 	subu	a2,t6,v0
    9780:	00c02825 	move	a1,a2
    9784:	afa6002c 	sw	a2,44(sp)
    9788:	afa20034 	sw	v0,52(sp)
    978c:	0c000000 	jal	0 <func_8081F1F0>
    9790:	24840000 	addiu	a0,a0,0
    9794:	8e040134 	lw	a0,308(s0)
    9798:	3c070000 	lui	a3,0x0
    979c:	24181129 	li	t8,4393
    97a0:	8fa6002c 	lw	a2,44(sp)
    97a4:	afb80010 	sw	t8,16(sp)
    97a8:	24e70000 	addiu	a3,a3,0
    97ac:	0c000000 	jal	0 <func_8081F1F0>
    97b0:	8fa50034 	lw	a1,52(sp)
    97b4:	3c080000 	lui	t0,0x0
    97b8:	25080000 	addiu	t0,t0,0
    97bc:	8d180000 	lw	t8,0(t0)
    97c0:	3c060000 	lui	a2,0x0
    97c4:	3c070000 	lui	a3,0x0
    97c8:	3c0b0000 	lui	t3,0x0
    97cc:	3c0c0000 	lui	t4,0x0
    97d0:	3c0d0000 	lui	t5,0x0
    97d4:	3c1f0000 	lui	ra,0x0
    97d8:	3c110000 	lui	s1,0x0
    97dc:	26310000 	addiu	s1,s1,0
    97e0:	27ff0000 	addiu	ra,ra,0
    97e4:	25ad0000 	addiu	t5,t5,0
    97e8:	258c0000 	addiu	t4,t4,0
    97ec:	256b0000 	addiu	t3,t3,0
    97f0:	24e70000 	addiu	a3,a3,0
    97f4:	24c60000 	addiu	a2,a2,0
    97f8:	240500ff 	li	a1,255
    97fc:	240f0082 	li	t7,130
    9800:	2419001e 	li	t9,30
    9804:	a5a50000 	sh	a1,0(t5)
    9808:	a7ef0000 	sh	t7,0(ra)
    980c:	a5800000 	sh	zero,0(t4)
    9810:	a6200000 	sh	zero,0(s1)
    9814:	a4d90000 	sh	t9,0(a2)
    9818:	a4e00000 	sh	zero,0(a3)
    981c:	a5600000 	sh	zero,0(t3)
    9820:	240e0062 	li	t6,98
    9824:	a70e0fc4 	sh	t6,4036(t8)
    9828:	960f01d4 	lhu	t7,468(s0)
    982c:	240a001e 	li	t2,30
    9830:	a6000262 	sh	zero,610(s0)
    9834:	25f90001 	addiu	t9,t7,1
    9838:	a61901d4 	sh	t9,468(s0)
    983c:	3c010000 	lui	at,0x0
    9840:	1000ffff 	b	9840 <L808286FC+0x334>
    9844:	a42a0000 	sh	t2,0(at)

00009848 <L80828A38>:
    9848:	3c0d0000 	lui	t5,0x0
    984c:	25ad0000 	addiu	t5,t5,0
    9850:	85a60000 	lh	a2,0(t5)
    9854:	3c0a0000 	lui	t2,0x0
    9858:	3c1f0000 	lui	ra,0x0
    985c:	24c3ffe2 	addiu	v1,a2,-30
    9860:	04600003 	bltz	v1,9870 <L80828A38+0x28>
    9864:	3c0c0000 	lui	t4,0x0
    9868:	10000003 	b	9878 <L80828A38+0x30>
    986c:	00601025 	move	v0,v1
    9870:	240e001e 	li	t6,30
    9874:	01c61023 	subu	v0,t6,a2
    9878:	854a0000 	lh	t2,0(t2)
    987c:	27ff0000 	addiu	ra,ra,0
    9880:	87e40000 	lh	a0,0(ra)
    9884:	004a001a 	div	zero,v0,t2
    9888:	00004012 	mflo	t0
    988c:	00084400 	sll	t0,t0,0x10
    9890:	15400002 	bnez	t2,989c <L80828A38+0x54>
    9894:	00000000 	nop
    9898:	0007000d 	break	0x7
    989c:	2401ffff 	li	at,-1
    98a0:	15410004 	bne	t2,at,98b4 <L80828A38+0x6c>
    98a4:	3c018000 	lui	at,0x8000
    98a8:	14410002 	bne	v0,at,98b4 <L80828A38+0x6c>
    98ac:	00000000 	nop
    98b0:	0006000d 	break	0x6
    98b4:	00084403 	sra	t0,t0,0x10
    98b8:	04800003 	bltz	a0,98c8 <L80828A38+0x80>
    98bc:	258c0000 	addiu	t4,t4,0
    98c0:	10000002 	b	98cc <L80828A38+0x84>
    98c4:	00801025 	move	v0,a0
    98c8:	00041023 	negu	v0,a0
    98cc:	004a001a 	div	zero,v0,t2
    98d0:	85850000 	lh	a1,0(t4)
    98d4:	00004812 	mflo	t1
    98d8:	00094c00 	sll	t1,t1,0x10
    98dc:	15400002 	bnez	t2,98e8 <L80828A38+0xa0>
    98e0:	00000000 	nop
    98e4:	0007000d 	break	0x7
    98e8:	2401ffff 	li	at,-1
    98ec:	15410004 	bne	t2,at,9900 <L80828A38+0xb8>
    98f0:	3c018000 	lui	at,0x8000
    98f4:	14410002 	bne	v0,at,9900 <L80828A38+0xb8>
    98f8:	00000000 	nop
    98fc:	0006000d 	break	0x6
    9900:	00094c03 	sra	t1,t1,0x10
    9904:	04a00003 	bltz	a1,9914 <L80828A38+0xcc>
    9908:	3c110000 	lui	s1,0x0
    990c:	10000002 	b	9918 <L80828A38+0xd0>
    9910:	00a01025 	move	v0,a1
    9914:	00051023 	negu	v0,a1
    9918:	004a001a 	div	zero,v0,t2
    991c:	26310000 	addiu	s1,s1,0
    9920:	86270000 	lh	a3,0(s1)
    9924:	00005812 	mflo	t3
    9928:	000b5c00 	sll	t3,t3,0x10
    992c:	15400002 	bnez	t2,9938 <L80828A38+0xf0>
    9930:	00000000 	nop
    9934:	0007000d 	break	0x7
    9938:	2401ffff 	li	at,-1
    993c:	15410004 	bne	t2,at,9950 <L80828A38+0x108>
    9940:	3c018000 	lui	at,0x8000
    9944:	14410002 	bne	v0,at,9950 <L80828A38+0x108>
    9948:	00000000 	nop
    994c:	0006000d 	break	0x6
    9950:	24e3ff01 	addiu	v1,a3,-255
    9954:	04600003 	bltz	v1,9964 <L80828A38+0x11c>
    9958:	000b5c03 	sra	t3,t3,0x10
    995c:	10000003 	b	996c <L80828A38+0x124>
    9960:	00601025 	move	v0,v1
    9964:	241800ff 	li	t8,255
    9968:	03071023 	subu	v0,t8,a3
    996c:	28c1001e 	slti	at,a2,30
    9970:	54200005 	bnezl	at,9988 <L80828A38+0x140>
    9974:	00c8c821 	addu	t9,a2,t0
    9978:	00c87823 	subu	t7,a2,t0
    997c:	10000003 	b	998c <L80828A38+0x144>
    9980:	a5af0000 	sh	t7,0(t5)
    9984:	00c8c821 	addu	t9,a2,t0
    9988:	a5b90000 	sh	t9,0(t5)
    998c:	04800004 	bltz	a0,99a0 <L80828A38+0x158>
    9990:	28e100ff 	slti	at,a3,255
    9994:	00897023 	subu	t6,a0,t1
    9998:	10000003 	b	99a8 <L80828A38+0x160>
    999c:	a7ee0000 	sh	t6,0(ra)
    99a0:	0089c021 	addu	t8,a0,t1
    99a4:	a7f80000 	sh	t8,0(ra)
    99a8:	04a00004 	bltz	a1,99bc <L80828A38+0x174>
    99ac:	3c060000 	lui	a2,0x0
    99b0:	00ab7823 	subu	t7,a1,t3
    99b4:	10000003 	b	99c4 <L80828A38+0x17c>
    99b8:	a58f0000 	sh	t7,0(t4)
    99bc:	00abc821 	addu	t9,a1,t3
    99c0:	a5990000 	sh	t9,0(t4)
    99c4:	14200012 	bnez	at,9a10 <L80828A38+0x1c8>
    99c8:	24c60000 	addiu	a2,a2,0
    99cc:	004a001a 	div	zero,v0,t2
    99d0:	15400002 	bnez	t2,99dc <L80828A38+0x194>
    99d4:	00000000 	nop
    99d8:	0007000d 	break	0x7
    99dc:	2401ffff 	li	at,-1
    99e0:	15410004 	bne	t2,at,99f4 <L80828A38+0x1ac>
    99e4:	3c018000 	lui	at,0x8000
    99e8:	14410002 	bne	v0,at,99f4 <L80828A38+0x1ac>
    99ec:	00000000 	nop
    99f0:	0006000d 	break	0x6
    99f4:	00007012 	mflo	t6
    99f8:	000ec400 	sll	t8,t6,0x10
    99fc:	00187c03 	sra	t7,t8,0x10
    9a00:	00efc823 	subu	t9,a3,t7
    9a04:	3c010000 	lui	at,0x0
    9a08:	10000011 	b	9a50 <L80828A38+0x208>
    9a0c:	a4390000 	sh	t9,0(at)
    9a10:	004a001a 	div	zero,v0,t2
    9a14:	15400002 	bnez	t2,9a20 <L80828A38+0x1d8>
    9a18:	00000000 	nop
    9a1c:	0007000d 	break	0x7
    9a20:	2401ffff 	li	at,-1
    9a24:	15410004 	bne	t2,at,9a38 <L80828A38+0x1f0>
    9a28:	3c018000 	lui	at,0x8000
    9a2c:	14410002 	bne	v0,at,9a38 <L80828A38+0x1f0>
    9a30:	00000000 	nop
    9a34:	0006000d 	break	0x6
    9a38:	00007012 	mflo	t6
    9a3c:	000ec400 	sll	t8,t6,0x10
    9a40:	00187c03 	sra	t7,t8,0x10
    9a44:	00efc821 	addu	t9,a3,t7
    9a48:	3c010000 	lui	at,0x0
    9a4c:	a4390000 	sh	t9,0(at)
    9a50:	84c40000 	lh	a0,0(a2)
    9a54:	3c070000 	lui	a3,0x0
    9a58:	24e70000 	addiu	a3,a3,0
    9a5c:	2483ff01 	addiu	v1,a0,-255
    9a60:	04600003 	bltz	v1,9a70 <L80828A38+0x228>
    9a64:	3c0b0000 	lui	t3,0x0
    9a68:	10000003 	b	9a78 <L80828A38+0x230>
    9a6c:	00601025 	move	v0,v1
    9a70:	240e00ff 	li	t6,255
    9a74:	01c41023 	subu	v0,t6,a0
    9a78:	004a001a 	div	zero,v0,t2
    9a7c:	84e50000 	lh	a1,0(a3)
    9a80:	00004012 	mflo	t0
    9a84:	00084400 	sll	t0,t0,0x10
    9a88:	15400002 	bnez	t2,9a94 <L80828A38+0x24c>
    9a8c:	00000000 	nop
    9a90:	0007000d 	break	0x7
    9a94:	2401ffff 	li	at,-1
    9a98:	15410004 	bne	t2,at,9aac <L80828A38+0x264>
    9a9c:	3c018000 	lui	at,0x8000
    9aa0:	14410002 	bne	v0,at,9aac <L80828A38+0x264>
    9aa4:	00000000 	nop
    9aa8:	0006000d 	break	0x6
    9aac:	24a3ff7e 	addiu	v1,a1,-130
    9ab0:	04600003 	bltz	v1,9ac0 <L80828A38+0x278>
    9ab4:	00084403 	sra	t0,t0,0x10
    9ab8:	10000003 	b	9ac8 <L80828A38+0x280>
    9abc:	00601025 	move	v0,v1
    9ac0:	24180082 	li	t8,130
    9ac4:	03051023 	subu	v0,t8,a1
    9ac8:	004a001a 	div	zero,v0,t2
    9acc:	256b0000 	addiu	t3,t3,0
    9ad0:	15400002 	bnez	t2,9adc <L80828A38+0x294>
    9ad4:	00000000 	nop
    9ad8:	0007000d 	break	0x7
    9adc:	2401ffff 	li	at,-1
    9ae0:	15410004 	bne	t2,at,9af4 <L80828A38+0x2ac>
    9ae4:	3c018000 	lui	at,0x8000
    9ae8:	14410002 	bne	v0,at,9af4 <L80828A38+0x2ac>
    9aec:	00000000 	nop
    9af0:	0006000d 	break	0x6
    9af4:	85630000 	lh	v1,0(t3)
    9af8:	00004812 	mflo	t1
    9afc:	00094c00 	sll	t1,t1,0x10
    9b00:	00094c03 	sra	t1,t1,0x10
    9b04:	04600003 	bltz	v1,9b14 <L80828A38+0x2cc>
    9b08:	288100ff 	slti	at,a0,255
    9b0c:	10000002 	b	9b18 <L80828A38+0x2d0>
    9b10:	00601025 	move	v0,v1
    9b14:	00031023 	negu	v0,v1
    9b18:	54200005 	bnezl	at,9b30 <L80828A38+0x2e8>
    9b1c:	0088c821 	addu	t9,a0,t0
    9b20:	00887823 	subu	t7,a0,t0
    9b24:	10000003 	b	9b34 <L80828A38+0x2ec>
    9b28:	a4cf0000 	sh	t7,0(a2)
    9b2c:	0088c821 	addu	t9,a0,t0
    9b30:	a4d90000 	sh	t9,0(a2)
    9b34:	28a10082 	slti	at,a1,130
    9b38:	54200005 	bnezl	at,9b50 <L80828A38+0x308>
    9b3c:	00a9c021 	addu	t8,a1,t1
    9b40:	00a97023 	subu	t6,a1,t1
    9b44:	10000003 	b	9b54 <L80828A38+0x30c>
    9b48:	a4ee0000 	sh	t6,0(a3)
    9b4c:	00a9c021 	addu	t8,a1,t1
    9b50:	a4f80000 	sh	t8,0(a3)
    9b54:	04600012 	bltz	v1,9ba0 <L80828A38+0x358>
    9b58:	240500ff 	li	a1,255
    9b5c:	004a001a 	div	zero,v0,t2
    9b60:	15400002 	bnez	t2,9b6c <L80828A38+0x324>
    9b64:	00000000 	nop
    9b68:	0007000d 	break	0x7
    9b6c:	2401ffff 	li	at,-1
    9b70:	15410004 	bne	t2,at,9b84 <L80828A38+0x33c>
    9b74:	3c018000 	lui	at,0x8000
    9b78:	14410002 	bne	v0,at,9b84 <L80828A38+0x33c>
    9b7c:	00000000 	nop
    9b80:	0006000d 	break	0x6
    9b84:	00007812 	mflo	t7
    9b88:	000fcc00 	sll	t9,t7,0x10
    9b8c:	00197403 	sra	t6,t9,0x10
    9b90:	006ec023 	subu	t8,v1,t6
    9b94:	3c010000 	lui	at,0x0
    9b98:	10000011 	b	9be0 <L80828A38+0x398>
    9b9c:	a4380000 	sh	t8,0(at)
    9ba0:	004a001a 	div	zero,v0,t2
    9ba4:	15400002 	bnez	t2,9bb0 <L80828A38+0x368>
    9ba8:	00000000 	nop
    9bac:	0007000d 	break	0x7
    9bb0:	2401ffff 	li	at,-1
    9bb4:	15410004 	bne	t2,at,9bc8 <L80828A38+0x380>
    9bb8:	3c018000 	lui	at,0x8000
    9bbc:	14410002 	bne	v0,at,9bc8 <L80828A38+0x380>
    9bc0:	00000000 	nop
    9bc4:	0006000d 	break	0x6
    9bc8:	00007812 	mflo	t7
    9bcc:	000fcc00 	sll	t9,t7,0x10
    9bd0:	00197403 	sra	t6,t9,0x10
    9bd4:	006ec021 	addu	t8,v1,t6
    9bd8:	3c010000 	lui	at,0x0
    9bdc:	a4380000 	sh	t8,0(at)
    9be0:	254affff 	addiu	t2,t2,-1
    9be4:	000a5400 	sll	t2,t2,0x10
    9be8:	000a5403 	sra	t2,t2,0x10
    9bec:	3c010000 	lui	at,0x0
    9bf0:	1540ffff 	bnez	t2,9bf0 <L80828A38+0x3a8>
    9bf4:	a42a0000 	sh	t2,0(at)
    9bf8:	240f001e 	li	t7,30
    9bfc:	24190082 	li	t9,130
    9c00:	a5af0000 	sh	t7,0(t5)
    9c04:	a7e00000 	sh	zero,0(ra)
    9c08:	a5800000 	sh	zero,0(t4)
    9c0c:	a6250000 	sh	a1,0(s1)
    9c10:	a4c50000 	sh	a1,0(a2)
    9c14:	a4f90000 	sh	t9,0(a3)
    9c18:	a5600000 	sh	zero,0(t3)
    9c1c:	960e01d4 	lhu	t6,468(s0)
    9c20:	240a0028 	li	t2,40
    9c24:	3c010000 	lui	at,0x0
    9c28:	25d80001 	addiu	t8,t6,1
    9c2c:	a61801d4 	sh	t8,468(s0)
    9c30:	1000ffff 	b	9c30 <L80828A38+0x3e8>
    9c34:	a42a0000 	sh	t2,0(at)

00009c38 <L80828E28>:
    9c38:	3c0a0000 	lui	t2,0x0
    9c3c:	854a0000 	lh	t2,0(t2)
    9c40:	3c010000 	lui	at,0x0
    9c44:	240f000d 	li	t7,13
    9c48:	254affff 	addiu	t2,t2,-1
    9c4c:	000a5400 	sll	t2,t2,0x10
    9c50:	000a5403 	sra	t2,t2,0x10
    9c54:	1540ffff 	bnez	t2,9c54 <L80828E28+0x1c>
    9c58:	a42a0000 	sh	t2,0(at)
    9c5c:	1000ffff 	b	9c5c <L80828E28+0x24>
    9c60:	a60f01d4 	sh	t7,468(s0)

00009c64 <L80828E54>:
    9c64:	8d190000 	lw	t9,0(t0)
    9c68:	3c014320 	lui	at,0x4320
    9c6c:	44811000 	mtc1	at,$f2
    9c70:	872e0da0 	lh	t6,3488(t9)
    9c74:	c6040204 	lwc1	$f4,516(s0)
    9c78:	8618025a 	lh	t8,602(s0)
    9c7c:	448e4000 	mtc1	t6,$f8
    9c80:	240e0028 	li	t6,40
    9c84:	3c01c41d 	lui	at,0xc41d
    9c88:	468042a0 	cvt.s.w	$f10,$f8
    9c8c:	44816000 	mtc1	at,$f12
    9c90:	240500ff 	li	a1,255
    9c94:	3c090000 	lui	t1,0x0
    9c98:	460a1183 	div.s	$f6,$f2,$f10
    9c9c:	46062401 	sub.s	$f16,$f4,$f6
    9ca0:	e6100204 	swc1	$f16,516(s0)
    9ca4:	c6000204 	lwc1	$f0,516(s0)
    9ca8:	e6000200 	swc1	$f0,512(s0)
    9cac:	e60001fc 	swc1	$f0,508(s0)
    9cb0:	e60001f8 	swc1	$f0,504(s0)
    9cb4:	e60001f4 	swc1	$f0,500(s0)
    9cb8:	8d0f0000 	lw	t7,0(t0)
    9cbc:	85f90da0 	lh	t9,3488(t7)
    9cc0:	01d9001a 	div	zero,t6,t9
    9cc4:	17200002 	bnez	t9,9cd0 <L80828E54+0x6c>
    9cc8:	00000000 	nop
    9ccc:	0007000d 	break	0x7
    9cd0:	2401ffff 	li	at,-1
    9cd4:	17210004 	bne	t9,at,9ce8 <L80828E54+0x84>
    9cd8:	3c018000 	lui	at,0x8000
    9cdc:	15c10002 	bne	t6,at,9ce8 <L80828E54+0x84>
    9ce0:	00000000 	nop
    9ce4:	0006000d 	break	0x6
    9ce8:	00007812 	mflo	t7
    9cec:	030f7021 	addu	t6,t8,t7
    9cf0:	a60e025a 	sh	t6,602(s0)
    9cf4:	8d180000 	lw	t8,0(t0)
    9cf8:	3c010001 	lui	at,0x1
    9cfc:	342104f0 	ori	at,at,0x4f0
    9d00:	870f0da0 	lh	t7,3488(t8)
    9d04:	02211821 	addu	v1,s1,at
    9d08:	84790256 	lh	t9,598(v1)
    9d0c:	00af001a 	div	zero,a1,t7
    9d10:	00007012 	mflo	t6
    9d14:	032ec021 	addu	t8,t9,t6
    9d18:	a4780256 	sh	t8,598(v1)
    9d1c:	8d020000 	lw	v0,0(t0)
    9d20:	15e00002 	bnez	t7,9d2c <L80828E54+0xc8>
    9d24:	00000000 	nop
    9d28:	0007000d 	break	0x7
    9d2c:	2401ffff 	li	at,-1
    9d30:	15e10004 	bne	t7,at,9d44 <L80828E54+0xe0>
    9d34:	3c018000 	lui	at,0x8000
    9d38:	14a10002 	bne	a1,at,9d44 <L80828E54+0xe0>
    9d3c:	00000000 	nop
    9d40:	0006000d 	break	0x6
    9d44:	844f0fc4 	lh	t7,4036(v0)
    9d48:	25f9fffd 	addiu	t9,t7,-3
    9d4c:	a4590fc4 	sh	t9,4036(v0)
    9d50:	8d020000 	lw	v0,0(t0)
    9d54:	844e0dc6 	lh	t6,3526(v0)
    9d58:	84580da0 	lh	t8,3488(v0)
    9d5c:	84590db4 	lh	t9,3508(v0)
    9d60:	01d8001a 	div	zero,t6,t8
    9d64:	17000002 	bnez	t8,9d70 <L80828E54+0x10c>
    9d68:	00000000 	nop
    9d6c:	0007000d 	break	0x7
    9d70:	2401ffff 	li	at,-1
    9d74:	17010004 	bne	t8,at,9d88 <L80828E54+0x124>
    9d78:	3c018000 	lui	at,0x8000
    9d7c:	15c10002 	bne	t6,at,9d88 <L80828E54+0x124>
    9d80:	00000000 	nop
    9d84:	0006000d 	break	0x6
    9d88:	00007812 	mflo	t7
    9d8c:	032f7021 	addu	t6,t9,t7
    9d90:	a44e0db4 	sh	t6,3508(v0)
    9d94:	8d020000 	lw	v0,0(t0)
    9d98:	84580dc8 	lh	t8,3528(v0)
    9d9c:	84590da0 	lh	t9,3488(v0)
    9da0:	844e0db6 	lh	t6,3510(v0)
    9da4:	0319001a 	div	zero,t8,t9
    9da8:	17200002 	bnez	t9,9db4 <L80828E54+0x150>
    9dac:	00000000 	nop
    9db0:	0007000d 	break	0x7
    9db4:	2401ffff 	li	at,-1
    9db8:	17210004 	bne	t9,at,9dcc <L80828E54+0x168>
    9dbc:	3c018000 	lui	at,0x8000
    9dc0:	17010002 	bne	t8,at,9dcc <L80828E54+0x168>
    9dc4:	00000000 	nop
    9dc8:	0006000d 	break	0x6
    9dcc:	00007812 	mflo	t7
    9dd0:	01cfc021 	addu	t8,t6,t7
    9dd4:	a4580db6 	sh	t8,3510(v0)
    9dd8:	8d020000 	lw	v0,0(t0)
    9ddc:	240f0096 	li	t7,150
    9de0:	844e0da0 	lh	t6,3488(v0)
    9de4:	84590a9e 	lh	t9,2718(v0)
    9de8:	01ee001a 	div	zero,t7,t6
    9dec:	15c00002 	bnez	t6,9df8 <L80828E54+0x194>
    9df0:	00000000 	nop
    9df4:	0007000d 	break	0x7
    9df8:	2401ffff 	li	at,-1
    9dfc:	15c10004 	bne	t6,at,9e10 <L80828E54+0x1ac>
    9e00:	3c018000 	lui	at,0x8000
    9e04:	15e10002 	bne	t7,at,9e10 <L80828E54+0x1ac>
    9e08:	00000000 	nop
    9e0c:	0006000d 	break	0x6
    9e10:	0000c012 	mflo	t8
    9e14:	03387821 	addu	t7,t9,t8
    9e18:	a44f0a9e 	sh	t7,2718(v0)
    9e1c:	8d020000 	lw	v0,0(t0)
    9e20:	c6120204 	lwc1	$f18,516(s0)
    9e24:	844e0da0 	lh	t6,3488(v0)
    9e28:	84590d9c 	lh	t9,3484(v0)
    9e2c:	460c903c 	c.lt.s	$f18,$f12
    9e30:	01d9c021 	addu	t8,t6,t9
    9e34:	00b8001a 	div	zero,a1,t8
    9e38:	96190208 	lhu	t9,520(s0)
    9e3c:	00007812 	mflo	t7
    9e40:	31eeffff 	andi	t6,t7,0xffff
    9e44:	17000002 	bnez	t8,9e50 <L80828E54+0x1ec>
    9e48:	00000000 	nop
    9e4c:	0007000d 	break	0x7
    9e50:	2401ffff 	li	at,-1
    9e54:	17010004 	bne	t8,at,9e68 <L80828E54+0x204>
    9e58:	3c018000 	lui	at,0x8000
    9e5c:	14a10002 	bne	a1,at,9e68 <L80828E54+0x204>
    9e60:	00000000 	nop
    9e64:	0006000d 	break	0x6
    9e68:	032ec021 	addu	t8,t9,t6
    9e6c:	45000015 	bc1f	9ec4 <L80828E54+0x260>
    9e70:	a6180208 	sh	t8,520(s0)
    9e74:	e60c0204 	swc1	$f12,516(s0)
    9e78:	a4650256 	sh	a1,598(v1)
    9e7c:	8d190000 	lw	t9,0(t0)
    9e80:	240f0042 	li	t7,66
    9e84:	241800ff 	li	t8,255
    9e88:	a72f0fc4 	sh	t7,4036(t9)
    9e8c:	8d0e0000 	lw	t6,0(t0)
    9e90:	240f000e 	li	t7,14
    9e94:	25290000 	addiu	t1,t1,0
    9e98:	a5c00d98 	sh	zero,3480(t6)
    9e9c:	a6180208 	sh	t8,520(s0)
    9ea0:	a60f01d4 	sh	t7,468(s0)
    9ea4:	95390022 	lhu	t9,34(t1)
    9ea8:	240f03e7 	li	t7,999
    9eac:	272e0001 	addiu	t6,t9,1
    9eb0:	31d8ffff 	andi	t8,t6,0xffff
    9eb4:	2b0103e8 	slti	at,t8,1000
    9eb8:	14200002 	bnez	at,9ec4 <L80828E54+0x260>
    9ebc:	a52e0022 	sh	t6,34(t1)
    9ec0:	a52f0022 	sh	t7,34(t1)
    9ec4:	c6080204 	lwc1	$f8,516(s0)
    9ec8:	3c040000 	lui	a0,0x0
    9ecc:	24840000 	addiu	a0,a0,0
    9ed0:	460042a1 	cvt.d.s	$f10,$f8
    9ed4:	44075000 	mfc1	a3,$f10
    9ed8:	44065800 	mfc1	a2,$f11
    9edc:	0c000000 	jal	0 <func_8081F1F0>
    9ee0:	00000000 	nop
    9ee4:	1000021b 	b	a754 <L80829940+0x4>
    9ee8:	8fbf0024 	lw	ra,36(sp)

00009eec <L808290DC>:
    9eec:	96390020 	lhu	t9,32(s1)
    9ef0:	3c01ffff 	lui	at,0xffff
    9ef4:	34217fff 	ori	at,at,0x7fff
    9ef8:	03217027 	nor	t6,t9,at
    9efc:	55c00215 	bnezl	t6,a754 <L80829940+0x4>
    9f00:	8fbf0024 	lw	ra,36(sp)
    9f04:	86180262 	lh	t8,610(s0)
    9f08:	3c070000 	lui	a3,0x0
    9f0c:	24e70000 	addiu	a3,a3,0
    9f10:	13000016 	beqz	t8,9f6c <L808290DC+0x80>
    9f14:	24044823 	li	a0,18467
    9f18:	3c070000 	lui	a3,0x0
    9f1c:	3c0f0000 	lui	t7,0x0
    9f20:	24e70000 	addiu	a3,a3,0
    9f24:	a6000262 	sh	zero,610(s0)
    9f28:	25ef0000 	addiu	t7,t7,0
    9f2c:	3c050000 	lui	a1,0x0
    9f30:	24a50000 	addiu	a1,a1,0
    9f34:	afaf0014 	sw	t7,20(sp)
    9f38:	afa70010 	sw	a3,16(sp)
    9f3c:	24044808 	li	a0,18440
    9f40:	0c000000 	jal	0 <func_8081F1F0>
    9f44:	24060004 	li	a2,4
    9f48:	3c010001 	lui	at,0x1
    9f4c:	24190010 	li	t9,16
    9f50:	34210a20 	ori	at,at,0xa20
    9f54:	a61901d4 	sh	t9,468(s0)
    9f58:	02211021 	addu	v0,s1,at
    9f5c:	944e0000 	lhu	t6,0(v0)
    9f60:	25d80001 	addiu	t8,t6,1
    9f64:	1000ffff 	b	9f64 <L808290DC+0x78>
    9f68:	a4580000 	sh	t8,0(v0)
    9f6c:	3c0f0000 	lui	t7,0x0
    9f70:	25ef0000 	addiu	t7,t7,0
    9f74:	3c050000 	lui	a1,0x0
    9f78:	24a50000 	addiu	a1,a1,0
    9f7c:	afaf0014 	sw	t7,20(sp)
    9f80:	24060004 	li	a2,4
    9f84:	0c000000 	jal	0 <func_8081F1F0>
    9f88:	afa70010 	sw	a3,16(sp)
    9f8c:	a6000262 	sh	zero,610(s0)
    9f90:	0c000000 	jal	0 <func_8081F1F0>
    9f94:	02202025 	move	a0,s1
    9f98:	863900a4 	lh	t9,164(s1)
    9f9c:	3c090000 	lui	t1,0x0
    9fa0:	25290000 	addiu	t1,t1,0
    9fa4:	26241f74 	addiu	a0,s1,8052
    9fa8:	0c000000 	jal	0 <func_8081F1F0>
    9fac:	a5390066 	sh	t9,102(t1)
    9fb0:	240e000f 	li	t6,15
    9fb4:	a60e01d4 	sh	t6,468(s0)
    9fb8:	24020003 	li	v0,3
    9fbc:	3c010000 	lui	at,0x0
    9fc0:	1000ffff 	b	9fc0 <L808290DC+0xd4>
    9fc4:	a4220000 	sh	v0,0(at)

00009fc8 <L808291B8>:
    9fc8:	3c020000 	lui	v0,0x0
    9fcc:	84420000 	lh	v0,0(v0)
    9fd0:	24180010 	li	t8,16
    9fd4:	3c010000 	lui	at,0x0
    9fd8:	2442ffff 	addiu	v0,v0,-1
    9fdc:	00021400 	sll	v0,v0,0x10
    9fe0:	00021403 	sra	v0,v0,0x10
    9fe4:	1440000b 	bnez	v0,a014 <L808291B8+0x4c>
    9fe8:	00000000 	nop
    9fec:	3c010000 	lui	at,0x0
    9ff0:	a4220000 	sh	v0,0(at)
    9ff4:	3c010001 	lui	at,0x1
    9ff8:	34210a20 	ori	at,at,0xa20
    9ffc:	a61801d4 	sh	t8,468(s0)
    a000:	02211021 	addu	v0,s1,at
    a004:	944f0000 	lhu	t7,0(v0)
    a008:	25f90001 	addiu	t9,t7,1
    a00c:	1000ffff 	b	a00c <L808291B8+0x44>
    a010:	a4590000 	sh	t9,0(v0)
    a014:	a4220000 	sh	v0,0(at)
    a018:	28410051 	slti	at,v0,81
    a01c:	502001cd 	beqzl	at,a754 <L80829940+0x4>
    a020:	8fbf0024 	lw	ra,36(sp)
    a024:	96230020 	lhu	v1,32(s1)
    a028:	3c01ffff 	lui	at,0xffff
    a02c:	34217fff 	ori	at,at,0x7fff
    a030:	00617027 	nor	t6,v1,at
    a034:	11c00003 	beqz	t6,a044 <L808291B8+0x7c>
    a038:	2401efff 	li	at,-4097
    a03c:	0061c027 	nor	t8,v1,at
    a040:	1700ffff 	bnez	t8,a040 <L808291B8+0x78>
    a044:	3c010001 	lui	at,0x1
    a048:	240f0010 	li	t7,16
    a04c:	34210a20 	ori	at,at,0xa20
    a050:	a60f01d4 	sh	t7,468(s0)
    a054:	02211021 	addu	v0,s1,at
    a058:	94590000 	lhu	t9,0(v0)
    a05c:	00002025 	move	a0,zero
    a060:	272e0001 	addiu	t6,t9,1
    a064:	0c000000 	jal	0 <func_8081F1F0>
    a068:	a44e0000 	sh	t6,0(v0)
    a06c:	100001b9 	b	a754 <L80829940+0x4>
    a070:	8fbf0024 	lw	ra,36(sp)

0000a074 <L80829264>:
    a074:	96230020 	lhu	v1,32(s1)
    a078:	3c01ffff 	lui	at,0xffff
    a07c:	34217fff 	ori	at,at,0x7fff
    a080:	0061c027 	nor	t8,v1,at
    a084:	13000004 	beqz	t8,a098 <L80829264+0x24>
    a088:	2401efff 	li	at,-4097
    a08c:	00617827 	nor	t7,v1,at
    a090:	55e001b0 	bnezl	t7,a754 <L80829940+0x4>
    a094:	8fbf0024 	lw	ra,36(sp)
    a098:	86190262 	lh	t9,610(s0)
    a09c:	3c070000 	lui	a3,0x0
    a0a0:	24e70000 	addiu	a3,a3,0
    a0a4:	1720006d 	bnez	t9,a25c <L80829440+0xc>
    a0a8:	24044823 	li	a0,18467
    a0ac:	3c0e0000 	lui	t6,0x0
    a0b0:	25ce0000 	addiu	t6,t6,0
    a0b4:	3c050000 	lui	a1,0x0
    a0b8:	24a50000 	addiu	a1,a1,0
    a0bc:	afae0014 	sw	t6,20(sp)
    a0c0:	24060004 	li	a2,4
    a0c4:	0c000000 	jal	0 <func_8081F1F0>
    a0c8:	afa70010 	sw	a3,16(sp)
    a0cc:	0c000000 	jal	0 <func_8081F1F0>
    a0d0:	02202025 	move	a0,s1
    a0d4:	3c090000 	lui	t1,0x0
    a0d8:	25290000 	addiu	t1,t1,0
    a0dc:	8d220000 	lw	v0,0(t1)
    a0e0:	2841016a 	slti	at,v0,362
    a0e4:	14200023 	bnez	at,a174 <L80829264+0x100>
    a0e8:	28410306 	slti	at,v0,774
    a0ec:	14200017 	bnez	at,a14c <L80829264+0xd8>
    a0f0:	2458fbf5 	addiu	t8,v0,-1035
    a0f4:	28410468 	slti	at,v0,1128
    a0f8:	14200005 	bnez	at,a110 <L80829264+0x9c>
    a0fc:	24010486 	li	at,1158
    a100:	50410062 	beql	v0,at,a28c <L80829478+0x4>
    a104:	240e0011 	li	t6,17
    a108:	10000060 	b	a28c <L80829478+0x4>
    a10c:	240e0011 	li	t6,17
    a110:	28410420 	slti	at,v0,1056
    a114:	14200005 	bnez	at,a12c <L80829264+0xb8>
    a118:	24010467 	li	at,1127
    a11c:	5041005b 	beql	v0,at,a28c <L80829478+0x4>
    a120:	240e0011 	li	t6,17
    a124:	10000059 	b	a28c <L80829478+0x4>
    a128:	240e0011 	li	t6,17
    a12c:	2f010015 	sltiu	at,t8,21
    a130:	1020ffff 	beqz	at,a130 <L80829264+0xbc>
    a134:	0018c080 	sll	t8,t8,0x2
    a138:	3c010000 	lui	at,0x0
    a13c:	00380821 	addu	at,at,t8
    a140:	8c380000 	lw	t8,0(at)
    a144:	03000008 	jr	t8
    a148:	00000000 	nop
    a14c:	24010179 	li	at,377
    a150:	1041ffff 	beq	v0,at,a150 <L80829264+0xdc>
    a154:	24010301 	li	at,769
    a158:	1041002e 	beq	v0,at,a214 <L808293F8+0xc>
    a15c:	240e0028 	li	t6,40
    a160:	24010305 	li	at,773
    a164:	10410030 	beq	v0,at,a228 <L8082940C+0xc>
    a168:	240f0165 	li	t7,357
    a16c:	10000047 	b	a28c <L80829478+0x4>
    a170:	240e0011 	li	t6,17
    a174:	2841008e 	slti	at,v0,142
    a178:	1420000a 	bnez	at,a1a4 <L80829264+0x130>
    a17c:	00027880 	sll	t7,v0,0x2
    a180:	24010098 	li	at,152
    a184:	1041ffff 	beq	v0,at,a184 <L80829264+0x110>
    a188:	24010165 	li	at,357
    a18c:	1041ffff 	beq	v0,at,a18c <L80829264+0x118>
    a190:	24010169 	li	at,361
    a194:	5041003d 	beql	v0,at,a28c <L80829478+0x4>
    a198:	240e0011 	li	t6,17
    a19c:	1000003b 	b	a28c <L80829478+0x4>
    a1a0:	240e0011 	li	t6,17
    a1a4:	28410083 	slti	at,v0,131
    a1a8:	14200007 	bnez	at,a1c8 <L80829264+0x154>
    a1ac:	24010088 	li	at,136
    a1b0:	1041ffff 	beq	v0,at,a1b0 <L80829264+0x13c>
    a1b4:	2401008d 	li	at,141
    a1b8:	10410020 	beq	v0,at,a23c <L80829420+0xc>
    a1bc:	240e0082 	li	t6,130
    a1c0:	10000032 	b	a28c <L80829478+0x4>
    a1c4:	240e0011 	li	t6,17
    a1c8:	28410038 	slti	at,v0,56
    a1cc:	14200005 	bnez	at,a1e4 <L80829264+0x170>
    a1d0:	24010082 	li	at,130
    a1d4:	5041002d 	beql	v0,at,a28c <L80829478+0x4>
    a1d8:	240e0011 	li	t6,17
    a1dc:	1000002b 	b	a28c <L80829478+0x4>
    a1e0:	240e0011 	li	t6,17
    a1e4:	2c410038 	sltiu	at,v0,56
    a1e8:	1020ffff 	beqz	at,a1e8 <L80829264+0x174>
    a1ec:	3c010000 	lui	at,0x0
    a1f0:	002f0821 	addu	at,at,t7
    a1f4:	8c2f0000 	lw	t7,0(at)
    a1f8:	01e00008 	jr	t7
    a1fc:	00000000 	nop

0000a200 <L808293F0>:
    a200:	1000ffff 	b	a200 <L808293F0>
    a204:	ad200000 	sw	zero,0(t1)

0000a208 <L808293F8>:
    a208:	24190004 	li	t9,4
    a20c:	1000ffff 	b	a20c <L808293F8+0x4>
    a210:	ad390000 	sw	t9,0(t1)
    a214:	1000ffff 	b	a214 <L808293F8+0xc>
    a218:	ad2e0000 	sw	t6,0(t1)

0000a21c <L8082940C>:
    a21c:	24180169 	li	t8,361
    a220:	1000ffff 	b	a220 <L8082940C+0x4>
    a224:	ad380000 	sw	t8,0(t1)
    a228:	1000ffff 	b	a228 <L8082940C+0xc>
    a22c:	ad2f0000 	sw	t7,0(t1)

0000a230 <L80829420>:
    a230:	24190010 	li	t9,16
    a234:	1000ffff 	b	a234 <L80829420+0x4>
    a238:	ad390000 	sw	t9,0(t1)
    a23c:	1000ffff 	b	a23c <L80829420+0xc>
    a240:	ad2e0000 	sw	t6,0(t1)

0000a244 <L80829434>:
    a244:	24180037 	li	t8,55
    a248:	1000ffff 	b	a248 <L80829434+0x4>
    a24c:	ad380000 	sw	t8,0(t1)

0000a250 <L80829440>:
    a250:	240f041b 	li	t7,1051
    a254:	1000ffff 	b	a254 <L80829440+0x4>
    a258:	ad2f0000 	sw	t7,0(t1)
    a25c:	3c070000 	lui	a3,0x0
    a260:	3c190000 	lui	t9,0x0
    a264:	24e70000 	addiu	a3,a3,0
    a268:	27390000 	addiu	t9,t9,0
    a26c:	3c050000 	lui	a1,0x0
    a270:	24a50000 	addiu	a1,a1,0
    a274:	afb90014 	sw	t9,20(sp)
    a278:	afa70010 	sw	a3,16(sp)
    a27c:	24044808 	li	a0,18440
    a280:	0c000000 	jal	0 <func_8081F1F0>
    a284:	24060004 	li	a2,4

0000a288 <L80829478>:
    a288:	240e0011 	li	t6,17
    a28c:	1000ffff 	b	a28c <L80829478+0x4>
    a290:	a60e01d4 	sh	t6,468(s0)

0000a294 <L80829484>:
    a294:	3c010001 	lui	at,0x1
    a298:	342104f0 	ori	at,at,0x4f0
    a29c:	02211821 	addu	v1,s1,at
    a2a0:	94620244 	lhu	v0,580(v1)
    a2a4:	240500ff 	li	a1,255
    a2a8:	10a2ffff 	beq	a1,v0,a2a8 <L80829484+0x14>
    a2ac:	2458000a 	addiu	t8,v0,10
    a2b0:	330fffff 	andi	t7,t8,0xffff
    a2b4:	29e100ff 	slti	at,t7,255
    a2b8:	1420ffff 	bnez	at,a2b8 <L80829484+0x24>
    a2bc:	a4780244 	sh	t8,580(v1)
    a2c0:	241900ff 	li	t9,255
    a2c4:	a4790244 	sh	t9,580(v1)
    a2c8:	a60001d4 	sh	zero,468(s0)
    a2cc:	8d180000 	lw	t8,0(t0)
    a2d0:	240e0003 	li	t6,3
    a2d4:	3c010001 	lui	at,0x1
    a2d8:	a70e0110 	sh	t6,272(t8)
    a2dc:	8d0f0000 	lw	t7,0(t0)
    a2e0:	342117a4 	ori	at,at,0x17a4
    a2e4:	02212021 	addu	a0,s1,at
    a2e8:	0c000000 	jal	0 <func_8081F1F0>
    a2ec:	a5e00190 	sh	zero,400(t7)
    a2f0:	262407c0 	addiu	a0,s1,1984
    a2f4:	0c000000 	jal	0 <func_8081F1F0>
    a2f8:	02202825 	move	a1,s1
    a2fc:	86190262 	lh	t9,610(s0)
    a300:	240e01d0 	li	t6,464
    a304:	17200038 	bnez	t9,a3e8 <L80829484+0x154>
    a308:	00000000 	nop
    a30c:	0c000000 	jal	0 <func_8081F1F0>
    a310:	02202025 	move	a0,s1
    a314:	3c090000 	lui	t1,0x0
    a318:	25290000 	addiu	t1,t1,0
    a31c:	24060002 	li	a2,2
    a320:	240efffe 	li	t6,-2
    a324:	24180030 	li	t8,48
    a328:	3c04f000 	lui	a0,0xf000
    a32c:	ad2e1364 	sw	t6,4964(t1)
    a330:	a126141d 	sb	a2,5149(t1)
    a334:	a5380030 	sh	t8,48(t1)
    a338:	0c000000 	jal	0 <func_8081F1F0>
    a33c:	3484000a 	ori	a0,a0,0xa
    a340:	3c090000 	lui	t1,0x0
    a344:	25290000 	addiu	t1,t1,0
    a348:	3c040000 	lui	a0,0x0
    a34c:	a5201424 	sh	zero,5156(t1)
    a350:	a52013f0 	sh	zero,5104(t1)
    a354:	a52013f2 	sh	zero,5106(t1)
    a358:	0c000000 	jal	0 <func_8081F1F0>
    a35c:	24840000 	addiu	a0,a0,0
    a360:	3c090000 	lui	t1,0x0
    a364:	25290000 	addiu	t1,t1,0
    a368:	3c040000 	lui	a0,0x0
    a36c:	24840000 	addiu	a0,a0,0
    a370:	0c000000 	jal	0 <func_8081F1F0>
    a374:	81250033 	lb	a1,51(t1)
    a378:	3c090000 	lui	t1,0x0
    a37c:	25290000 	addiu	t1,t1,0
    a380:	3c040000 	lui	a0,0x0
    a384:	24840000 	addiu	a0,a0,0
    a388:	0c000000 	jal	0 <func_8081F1F0>
    a38c:	852513f6 	lh	a1,5110(t1)
    a390:	3c090000 	lui	t1,0x0
    a394:	25290000 	addiu	t1,t1,0
    a398:	812f0033 	lb	t7,51(t1)
    a39c:	a1200033 	sb	zero,51(t1)
    a3a0:	81250033 	lb	a1,51(t1)
    a3a4:	3c040000 	lui	a0,0x0
    a3a8:	a52013f4 	sh	zero,5108(t1)
    a3ac:	24840000 	addiu	a0,a0,0
    a3b0:	a52f13f6 	sh	t7,5110(t1)
    a3b4:	0c000000 	jal	0 <func_8081F1F0>
    a3b8:	a1250032 	sb	a1,50(t1)
    a3bc:	3c090000 	lui	t1,0x0
    a3c0:	25290000 	addiu	t1,t1,0
    a3c4:	3c040000 	lui	a0,0x0
    a3c8:	24840000 	addiu	a0,a0,0
    a3cc:	0c000000 	jal	0 <func_8081F1F0>
    a3d0:	852513f6 	lh	a1,5110(t1)
    a3d4:	3c040000 	lui	a0,0x0
    a3d8:	0c000000 	jal	0 <func_8081F1F0>
    a3dc:	24840000 	addiu	a0,a0,0
    a3e0:	100000dc 	b	a754 <L80829940+0x4>
    a3e4:	8fbf0024 	lw	ra,36(sp)
    a3e8:	3c190000 	lui	t9,0x0
    a3ec:	27390000 	addiu	t9,t9,0
    a3f0:	ae200098 	sw	zero,152(s1)
    a3f4:	ae39000c 	sw	t9,12(s1)
    a3f8:	1000ffff 	b	a3f8 <L80829484+0x164>
    a3fc:	ae2e0010 	sw	t6,16(s1)

0000a400 <L808295F0>:
    a400:	3c014320 	lui	at,0x4320
    a404:	44811000 	mtc1	at,$f2
    a408:	c60401f4 	lwc1	$f4,500(s0)
    a40c:	240f0013 	li	t7,19
    a410:	240e03e7 	li	t6,999
    a414:	46041032 	c.eq.s	$f2,$f4
    a418:	00000000 	nop
    a41c:	4503007c 	bc1tl	a610 <L808295F0+0x210>
    a420:	3c010001 	lui	at,0x1
    a424:	8d180000 	lw	t8,0(t0)
    a428:	c6060200 	lwc1	$f6,512(s0)
    a42c:	8619025a 	lh	t9,602(s0)
    a430:	870f0da0 	lh	t7,3488(t8)
    a434:	240500ff 	li	a1,255
    a438:	448f8000 	mtc1	t7,$f16
    a43c:	240f0028 	li	t7,40
    a440:	468084a0 	cvt.s.w	$f18,$f16
    a444:	46121203 	div.s	$f8,$f2,$f18
    a448:	46083280 	add.s	$f10,$f6,$f8
    a44c:	e60a0200 	swc1	$f10,512(s0)
    a450:	c6000200 	lwc1	$f0,512(s0)
    a454:	e60001fc 	swc1	$f0,508(s0)
    a458:	e60001f8 	swc1	$f0,504(s0)
    a45c:	e60001f4 	swc1	$f0,500(s0)
    a460:	8d0e0000 	lw	t6,0(t0)
    a464:	85d80da0 	lh	t8,3488(t6)
    a468:	01f8001a 	div	zero,t7,t8
    a46c:	17000002 	bnez	t8,a478 <L808295F0+0x78>
    a470:	00000000 	nop
    a474:	0007000d 	break	0x7
    a478:	2401ffff 	li	at,-1
    a47c:	17010004 	bne	t8,at,a490 <L808295F0+0x90>
    a480:	3c018000 	lui	at,0x8000
    a484:	15e10002 	bne	t7,at,a490 <L808295F0+0x90>
    a488:	00000000 	nop
    a48c:	0006000d 	break	0x6
    a490:	00007012 	mflo	t6
    a494:	032e7823 	subu	t7,t9,t6
    a498:	a60f025a 	sh	t7,602(s0)
    a49c:	8d190000 	lw	t9,0(t0)
    a4a0:	3c010001 	lui	at,0x1
    a4a4:	342104f0 	ori	at,at,0x4f0
    a4a8:	872e0da0 	lh	t6,3488(t9)
    a4ac:	02211821 	addu	v1,s1,at
    a4b0:	84780256 	lh	t8,598(v1)
    a4b4:	00ae001a 	div	zero,a1,t6
    a4b8:	00007812 	mflo	t7
    a4bc:	030fc823 	subu	t9,t8,t7
    a4c0:	a4790256 	sh	t9,598(v1)
    a4c4:	8d020000 	lw	v0,0(t0)
    a4c8:	15c00002 	bnez	t6,a4d4 <L808295F0+0xd4>
    a4cc:	00000000 	nop
    a4d0:	0007000d 	break	0x7
    a4d4:	2401ffff 	li	at,-1
    a4d8:	15c10004 	bne	t6,at,a4ec <L808295F0+0xec>
    a4dc:	3c018000 	lui	at,0x8000
    a4e0:	14a10002 	bne	a1,at,a4ec <L808295F0+0xec>
    a4e4:	00000000 	nop
    a4e8:	0006000d 	break	0x6
    a4ec:	844e0dc6 	lh	t6,3526(v0)
    a4f0:	84580da0 	lh	t8,3488(v0)
    a4f4:	84590db4 	lh	t9,3508(v0)
    a4f8:	01d8001a 	div	zero,t6,t8
    a4fc:	17000002 	bnez	t8,a508 <L808295F0+0x108>
    a500:	00000000 	nop
    a504:	0007000d 	break	0x7
    a508:	2401ffff 	li	at,-1
    a50c:	17010004 	bne	t8,at,a520 <L808295F0+0x120>
    a510:	3c018000 	lui	at,0x8000
    a514:	15c10002 	bne	t6,at,a520 <L808295F0+0x120>
    a518:	00000000 	nop
    a51c:	0006000d 	break	0x6
    a520:	00007812 	mflo	t7
    a524:	032f7023 	subu	t6,t9,t7
    a528:	a44e0db4 	sh	t6,3508(v0)
    a52c:	8d020000 	lw	v0,0(t0)
    a530:	84580dc8 	lh	t8,3528(v0)
    a534:	84590da0 	lh	t9,3488(v0)
    a538:	844e0db6 	lh	t6,3510(v0)
    a53c:	0319001a 	div	zero,t8,t9
    a540:	17200002 	bnez	t9,a54c <L808295F0+0x14c>
    a544:	00000000 	nop
    a548:	0007000d 	break	0x7
    a54c:	2401ffff 	li	at,-1
    a550:	17210004 	bne	t9,at,a564 <L808295F0+0x164>
    a554:	3c018000 	lui	at,0x8000
    a558:	17010002 	bne	t8,at,a564 <L808295F0+0x164>
    a55c:	00000000 	nop
    a560:	0006000d 	break	0x6
    a564:	00007812 	mflo	t7
    a568:	01cfc023 	subu	t8,t6,t7
    a56c:	240f0096 	li	t7,150
    a570:	a4580db6 	sh	t8,3510(v0)
    a574:	8d020000 	lw	v0,0(t0)
    a578:	844e0da0 	lh	t6,3488(v0)
    a57c:	84590a9e 	lh	t9,2718(v0)
    a580:	01ee001a 	div	zero,t7,t6
    a584:	15c00002 	bnez	t6,a590 <L808295F0+0x190>
    a588:	00000000 	nop
    a58c:	0007000d 	break	0x7
    a590:	2401ffff 	li	at,-1
    a594:	15c10004 	bne	t6,at,a5a8 <L808295F0+0x1a8>
    a598:	3c018000 	lui	at,0x8000
    a59c:	15e10002 	bne	t7,at,a5a8 <L808295F0+0x1a8>
    a5a0:	00000000 	nop
    a5a4:	0006000d 	break	0x6
    a5a8:	0000c012 	mflo	t8
    a5ac:	03387823 	subu	t7,t9,t8
    a5b0:	a44f0a9e 	sh	t7,2718(v0)
    a5b4:	8d190000 	lw	t9,0(t0)
    a5b8:	c60401f4 	lwc1	$f4,500(s0)
    a5bc:	960e0208 	lhu	t6,520(s0)
    a5c0:	87380da0 	lh	t8,3488(t9)
    a5c4:	46041032 	c.eq.s	$f2,$f4
    a5c8:	00b8001a 	div	zero,a1,t8
    a5cc:	00007812 	mflo	t7
    a5d0:	31f9ffff 	andi	t9,t7,0xffff
    a5d4:	17000002 	bnez	t8,a5e0 <L808295F0+0x1e0>
    a5d8:	00000000 	nop
    a5dc:	0007000d 	break	0x7
    a5e0:	2401ffff 	li	at,-1
    a5e4:	17010004 	bne	t8,at,a5f8 <L808295F0+0x1f8>
    a5e8:	3c018000 	lui	at,0x8000
    a5ec:	14a10002 	bne	a1,at,a5f8 <L808295F0+0x1f8>
    a5f0:	00000000 	nop
    a5f4:	0006000d 	break	0x6
    a5f8:	01d9c023 	subu	t8,t6,t9
    a5fc:	4500ffff 	bc1f	a5fc <L808295F0+0x1fc>
    a600:	a6180208 	sh	t8,520(s0)
    a604:	1000ffff 	b	a604 <L808295F0+0x204>
    a608:	a6000208 	sh	zero,520(s0)
    a60c:	3c010001 	lui	at,0x1
    a610:	a60001d6 	sh	zero,470(s0)
    a614:	a60f01d4 	sh	t7,468(s0)
    a618:	e6020200 	swc1	$f2,512(s0)
    a61c:	e60201fc 	swc1	$f2,508(s0)
    a620:	e60201f8 	swc1	$f2,504(s0)
    a624:	e60201f4 	swc1	$f2,500(s0)
    a628:	a60e023c 	sh	t6,572(s0)
    a62c:	00310821 	addu	at,at,s1
    a630:	1000ffff 	b	a630 <L808295F0+0x230>
    a634:	a4200746 	sh	zero,1862(at)

0000a638 <L80829828>:
    a638:	a60001d4 	sh	zero,468(s0)
    a63c:	8d180000 	lw	t8,0(t0)
    a640:	24190003 	li	t9,3
    a644:	3c010001 	lui	at,0x1
    a648:	a7190110 	sh	t9,272(t8)
    a64c:	8d0f0000 	lw	t7,0(t0)
    a650:	342117a4 	ori	at,at,0x17a4
    a654:	02212021 	addu	a0,s1,at
    a658:	0c000000 	jal	0 <func_8081F1F0>
    a65c:	a5e00190 	sh	zero,400(t7)
    a660:	262407c0 	addiu	a0,s1,1984
    a664:	0c000000 	jal	0 <func_8081F1F0>
    a668:	02202825 	move	a1,s1
    a66c:	962e00a4 	lhu	t6,164(s1)
    a670:	2dc10019 	sltiu	at,t6,25
    a674:	1020ffff 	beqz	at,a674 <L80829828+0x3c>
    a678:	000e7080 	sll	t6,t6,0x2
    a67c:	3c010000 	lui	at,0x0
    a680:	002e0821 	addu	at,at,t6
    a684:	8c2e0000 	lw	t6,0(at)
    a688:	01c00008 	jr	t6
    a68c:	00000000 	nop

0000a690 <L80829880>:
    a690:	3c050001 	lui	a1,0x1
    a694:	00b12821 	addu	a1,a1,s1
    a698:	84a5074c 	lh	a1,1868(a1)
    a69c:	0c000000 	jal	0 <func_8081F1F0>
    a6a0:	02202025 	move	a0,s1

0000a6a4 <L80829894>:
    a6a4:	3c070000 	lui	a3,0x0
    a6a8:	24e70000 	addiu	a3,a3,0
    a6ac:	90f90000 	lbu	t9,0(a3)
    a6b0:	3c090000 	lui	t1,0x0
    a6b4:	25290000 	addiu	t1,t1,0
    a6b8:	a13913e2 	sb	t9,5090(t1)
    a6bc:	90f80001 	lbu	t8,1(a3)
    a6c0:	90ef0002 	lbu	t7,2(a3)
    a6c4:	90ee0003 	lbu	t6,3(a3)
    a6c8:	90f90004 	lbu	t9,4(a3)
    a6cc:	3c010001 	lui	at,0x1
    a6d0:	342104f0 	ori	at,at,0x4f0
    a6d4:	02211821 	addu	v1,s1,at
    a6d8:	a13813e3 	sb	t8,5091(t1)
    a6dc:	a12f13e4 	sb	t7,5092(t1)
    a6e0:	a12e13e5 	sb	t6,5093(t1)
    a6e4:	a13913e6 	sb	t9,5094(t1)
    a6e8:	a46001fc 	sh	zero,508(v1)
    a6ec:	847801fc 	lh	t8,508(v1)
    a6f0:	3c040000 	lui	a0,0x0
    a6f4:	24840000 	addiu	a0,a0,0
    a6f8:	0c000000 	jal	0 <func_8081F1F0>
    a6fc:	a47801fa 	sh	t8,506(v1)
    a700:	3c090000 	lui	t1,0x0
    a704:	25290000 	addiu	t1,t1,0
    a708:	3c040000 	lui	a0,0x0
    a70c:	97a50062 	lhu	a1,98(sp)
    a710:	24840000 	addiu	a0,a0,0
    a714:	0c000000 	jal	0 <func_8081F1F0>
    a718:	952613ee 	lhu	a2,5102(t1)
    a71c:	3c090000 	lui	t1,0x0
    a720:	25290000 	addiu	t1,t1,0
    a724:	a52013ea 	sh	zero,5098(t1)
    a728:	0c000000 	jal	0 <func_8081F1F0>
    a72c:	952413ee 	lhu	a0,5102(t1)
    a730:	8faf0078 	lw	t7,120(sp)
    a734:	02202025 	move	a0,s1
    a738:	ade00694 	sw	zero,1684(t7)
    a73c:	0c000000 	jal	0 <func_8081F1F0>
    a740:	8fa50078 	lw	a1,120(sp)
    a744:	3c040000 	lui	a0,0x0
    a748:	0c000000 	jal	0 <func_8081F1F0>
    a74c:	24840000 	addiu	a0,a0,0

0000a750 <L80829940>:
    a750:	8fbf0024 	lw	ra,36(sp)
    a754:	8fb0001c 	lw	s0,28(sp)
    a758:	8fb10020 	lw	s1,32(sp)
    a75c:	03e00008 	jr	ra
    a760:	27bd0088 	addiu	sp,sp,136
	...
