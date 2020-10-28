
build/src/code/z_vr_box.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800ADBB0>:
       0:	27bdfbd0 	addiu	sp,sp,-1072
       4:	afb70024 	sw	s7,36(sp)
       8:	8fb70450 	lw	s7,1104(sp)
       c:	afb20010 	sw	s2,16(sp)
      10:	afb00008 	sw	s0,8(sp)
      14:	2ee10006 	sltiu	at,s7,6
      18:	00808025 	move	s0,a0
      1c:	00e09025 	move	s2,a3
      20:	afbf002c 	sw	ra,44(sp)
      24:	afbe0028 	sw	s8,40(sp)
      28:	afb60020 	sw	s6,32(sp)
      2c:	afb5001c 	sw	s5,28(sp)
      30:	afb40018 	sw	s4,24(sp)
      34:	afb30014 	sw	s3,20(sp)
      38:	afb1000c 	sw	s1,12(sp)
      3c:	afa50434 	sw	a1,1076(sp)
      40:	102000c5 	beqz	at,358 <L800ADE10+0xf8>
      44:	afa60438 	sw	a2,1080(sp)
      48:	00177080 	sll	t6,s7,0x2
      4c:	3c010000 	lui	at,0x0
      50:	002e0821 	addu	at,at,t6
      54:	8c2e0000 	lw	t6,0(at)
      58:	01c00008 	jr	t6
      5c:	00000000 	nop

00000060 <L800ADC10>:
      60:	8fab0448 	lw	t3,1096(sp)
      64:	3c140000 	lui	s4,0x0
      68:	3c130000 	lui	s3,0x0
      6c:	8faa0440 	lw	t2,1088(sp)
      70:	26730000 	addiu	s3,s3,0
      74:	26940000 	addiu	s4,s4,0
      78:	27a501f0 	addiu	a1,sp,496
      7c:	27a60358 	addiu	a2,sp,856
      80:	27a702a4 	addiu	a3,sp,676
      84:	27a8013c 	addiu	t0,sp,316
      88:	27a40088 	addiu	a0,sp,136
      8c:	8fb5044c 	lw	s5,1100(sp)
      90:	8fb10444 	lw	s1,1092(sp)
      94:	27ac013c 	addiu	t4,sp,316
      98:	024bb021 	addu	s6,s2,t3
      9c:	acb10000 	sw	s1,0(a1)
      a0:	acd20000 	sw	s2,0(a2)
      a4:	acea0000 	sw	t2,0(a3)
      a8:	3c0f0000 	lui	t7,0x0
      ac:	85ef0000 	lh	t7,0(t7)
      b0:	240d0001 	li	t5,1
      b4:	000dc040 	sll	t8,t5,0x1
      b8:	86890000 	lh	t1,0(s4)
      bc:	02781821 	addu	v1,s3,t8
      c0:	02cb1021 	addu	v0,s6,t3
      c4:	acc20008 	sw	v0,8(a2)
      c8:	004b1021 	addu	v0,v0,t3
      cc:	ad0f0000 	sw	t7,0(t0)
      d0:	846f0004 	lh	t7,4(v1)
      d4:	846e0002 	lh	t6,2(v1)
      d8:	84780006 	lh	t8,6(v1)
      dc:	84790000 	lh	t9,0(v1)
      e0:	acc2000c 	sw	v0,12(a2)
      e4:	24840014 	addiu	a0,a0,20
      e8:	008c082b 	sltu	at,a0,t4
      ec:	004b1021 	addu	v0,v0,t3
      f0:	acea0010 	sw	t2,16(a3)
      f4:	acea000c 	sw	t2,12(a3)
      f8:	acea0008 	sw	t2,8(a3)
      fc:	acea0004 	sw	t2,4(a3)
     100:	26940002 	addiu	s4,s4,2
     104:	acc20010 	sw	v0,16(a2)
     108:	acb10010 	sw	s1,16(a1)
     10c:	acb1000c 	sw	s1,12(a1)
     110:	acb10008 	sw	s1,8(a1)
     114:	24a50014 	addiu	a1,a1,20
     118:	24c60014 	addiu	a2,a2,20
     11c:	24e70014 	addiu	a3,a3,20
     120:	25080014 	addiu	t0,t0,20
     124:	acb1fff0 	sw	s1,-16(a1)
     128:	acd6fff0 	sw	s6,-16(a2)
     12c:	01555021 	addu	t2,t2,s5
     130:	ac89ffec 	sw	t1,-20(a0)
     134:	ac89fff4 	sw	t1,-12(a0)
     138:	ac89fff8 	sw	t1,-8(a0)
     13c:	ac89fffc 	sw	t1,-4(a0)
     140:	ac89fff0 	sw	t1,-16(a0)
     144:	ad0ffff8 	sw	t7,-8(t0)
     148:	ad0efff4 	sw	t6,-12(t0)
     14c:	ad18fffc 	sw	t8,-4(t0)
     150:	1420ffd2 	bnez	at,9c <L800ADC10+0x3c>
     154:	ad19fff0 	sw	t9,-16(t0)
     158:	1000007f 	b	358 <L800ADE10+0xf8>
     15c:	00000000 	nop

00000160 <L800ADD10>:
     160:	8fab0448 	lw	t3,1096(sp)
     164:	8fb10444 	lw	s1,1092(sp)
     168:	3c140000 	lui	s4,0x0
     16c:	3c130000 	lui	s3,0x0
     170:	8faa0440 	lw	t2,1088(sp)
     174:	26730000 	addiu	s3,s3,0
     178:	26940000 	addiu	s4,s4,0
     17c:	27a501f0 	addiu	a1,sp,496
     180:	27a60358 	addiu	a2,sp,856
     184:	27a702a4 	addiu	a3,sp,676
     188:	27a8013c 	addiu	t0,sp,316
     18c:	27a40088 	addiu	a0,sp,136
     190:	8fb5044c 	lw	s5,1100(sp)
     194:	27ac013c 	addiu	t4,sp,316
     198:	022bb021 	addu	s6,s1,t3
     19c:	acd20000 	sw	s2,0(a2)
     1a0:	acea0000 	sw	t2,0(a3)
     1a4:	acb10000 	sw	s1,0(a1)
     1a8:	3c190000 	lui	t9,0x0
     1ac:	87390000 	lh	t9,0(t9)
     1b0:	240d0001 	li	t5,1
     1b4:	000d7040 	sll	t6,t5,0x1
     1b8:	86890000 	lh	t1,0(s4)
     1bc:	026e1821 	addu	v1,s3,t6
     1c0:	02cb1021 	addu	v0,s6,t3
     1c4:	aca20008 	sw	v0,8(a1)
     1c8:	004b1021 	addu	v0,v0,t3
     1cc:	ad190000 	sw	t9,0(t0)
     1d0:	84790004 	lh	t9,4(v1)
     1d4:	84780002 	lh	t8,2(v1)
     1d8:	846e0006 	lh	t6,6(v1)
     1dc:	846f0000 	lh	t7,0(v1)
     1e0:	aca2000c 	sw	v0,12(a1)
     1e4:	24840014 	addiu	a0,a0,20
     1e8:	008c082b 	sltu	at,a0,t4
     1ec:	004b1021 	addu	v0,v0,t3
     1f0:	acea0010 	sw	t2,16(a3)
     1f4:	acea000c 	sw	t2,12(a3)
     1f8:	acea0008 	sw	t2,8(a3)
     1fc:	acea0004 	sw	t2,4(a3)
     200:	26940002 	addiu	s4,s4,2
     204:	aca20010 	sw	v0,16(a1)
     208:	acd20010 	sw	s2,16(a2)
     20c:	acd2000c 	sw	s2,12(a2)
     210:	acd20008 	sw	s2,8(a2)
     214:	24a50014 	addiu	a1,a1,20
     218:	24c60014 	addiu	a2,a2,20
     21c:	24e70014 	addiu	a3,a3,20
     220:	25080014 	addiu	t0,t0,20
     224:	acd2fff0 	sw	s2,-16(a2)
     228:	acb6fff0 	sw	s6,-16(a1)
     22c:	01555021 	addu	t2,t2,s5
     230:	ac89ffec 	sw	t1,-20(a0)
     234:	ac89fff4 	sw	t1,-12(a0)
     238:	ac89fff8 	sw	t1,-8(a0)
     23c:	ac89fffc 	sw	t1,-4(a0)
     240:	ac89fff0 	sw	t1,-16(a0)
     244:	ad19fff8 	sw	t9,-8(t0)
     248:	ad18fff4 	sw	t8,-12(t0)
     24c:	ad0efffc 	sw	t6,-4(t0)
     250:	1420ffd2 	bnez	at,19c <L800ADD10+0x3c>
     254:	ad0ffff0 	sw	t7,-16(t0)
     258:	1000003f 	b	358 <L800ADE10+0xf8>
     25c:	00000000 	nop

00000260 <L800ADE10>:
     260:	8fab0448 	lw	t3,1096(sp)
     264:	3c140000 	lui	s4,0x0
     268:	3c130000 	lui	s3,0x0
     26c:	8faa0444 	lw	t2,1092(sp)
     270:	26730000 	addiu	s3,s3,0
     274:	26940000 	addiu	s4,s4,0
     278:	27a501f0 	addiu	a1,sp,496
     27c:	27a60358 	addiu	a2,sp,856
     280:	27a702a4 	addiu	a3,sp,676
     284:	27a8013c 	addiu	t0,sp,316
     288:	27a40088 	addiu	a0,sp,136
     28c:	8fb5044c 	lw	s5,1100(sp)
     290:	27b1013c 	addiu	s1,sp,316
     294:	8fac0440 	lw	t4,1088(sp)
     298:	024bb021 	addu	s6,s2,t3
     29c:	acec0000 	sw	t4,0(a3)
     2a0:	acd20000 	sw	s2,0(a2)
     2a4:	acaa0000 	sw	t2,0(a1)
     2a8:	3c0f0000 	lui	t7,0x0
     2ac:	85ef0000 	lh	t7,0(t7)
     2b0:	240d0001 	li	t5,1
     2b4:	000dc040 	sll	t8,t5,0x1
     2b8:	86890000 	lh	t1,0(s4)
     2bc:	02781821 	addu	v1,s3,t8
     2c0:	02cb1021 	addu	v0,s6,t3
     2c4:	acc20008 	sw	v0,8(a2)
     2c8:	004b1021 	addu	v0,v0,t3
     2cc:	ad0f0000 	sw	t7,0(t0)
     2d0:	846f0004 	lh	t7,4(v1)
     2d4:	846e0002 	lh	t6,2(v1)
     2d8:	84780006 	lh	t8,6(v1)
     2dc:	84790000 	lh	t9,0(v1)
     2e0:	acc2000c 	sw	v0,12(a2)
     2e4:	24840014 	addiu	a0,a0,20
     2e8:	0091082b 	sltu	at,a0,s1
     2ec:	004b1021 	addu	v0,v0,t3
     2f0:	acaa0010 	sw	t2,16(a1)
     2f4:	acaa000c 	sw	t2,12(a1)
     2f8:	acaa0008 	sw	t2,8(a1)
     2fc:	acaa0004 	sw	t2,4(a1)
     300:	26940002 	addiu	s4,s4,2
     304:	acc20010 	sw	v0,16(a2)
     308:	acec0010 	sw	t4,16(a3)
     30c:	acec000c 	sw	t4,12(a3)
     310:	acec0008 	sw	t4,8(a3)
     314:	24a50014 	addiu	a1,a1,20
     318:	24c60014 	addiu	a2,a2,20
     31c:	24e70014 	addiu	a3,a3,20
     320:	25080014 	addiu	t0,t0,20
     324:	acecfff0 	sw	t4,-16(a3)
     328:	acd6fff0 	sw	s6,-16(a2)
     32c:	01555021 	addu	t2,t2,s5
     330:	ac89ffec 	sw	t1,-20(a0)
     334:	ac89fff4 	sw	t1,-12(a0)
     338:	ac89fff8 	sw	t1,-8(a0)
     33c:	ac89fffc 	sw	t1,-4(a0)
     340:	ac89fff0 	sw	t1,-16(a0)
     344:	ad0ffff8 	sw	t7,-8(t0)
     348:	ad0efff4 	sw	t6,-12(t0)
     34c:	ad18fffc 	sw	t8,-4(t0)
     350:	1420ffd2 	bnez	at,29c <L800ADE10+0x3c>
     354:	ad19fff0 	sw	t9,-16(t0)
     358:	3c190000 	lui	t9,0x0
     35c:	00177080 	sll	t6,s7,0x2
     360:	3c0f0000 	lui	t7,0x0
     364:	25ef0000 	addiu	t7,t7,0
     368:	27390000 	addiu	t9,t9,0
     36c:	3c1e0000 	lui	s8,0x0
     370:	3c12fd48 	lui	s2,0xfd48
     374:	365200ff 	ori	s2,s2,0xff
     378:	27de0000 	addiu	s8,s8,0
     37c:	afb90054 	sw	t9,84(sp)
     380:	01cf8821 	addu	s1,t6,t7
     384:	3c17f200 	lui	s7,0xf200
     388:	00003025 	move	a2,zero
     38c:	afa00424 	sw	zero,1060(sp)
     390:	3c16e700 	lui	s6,0xe700
     394:	3c15f400 	lui	s5,0xf400
     398:	3c14e600 	lui	s4,0xe600
     39c:	3c13f548 	lui	s3,0xf548
     3a0:	3c0d0700 	lui	t5,0x700
     3a4:	8fb90454 	lw	t9,1108(sp)
     3a8:	8e180134 	lw	t8,308(s0)
     3ac:	00004825 	move	t1,zero
     3b0:	00197080 	sll	t6,t9,0x2
     3b4:	01d97021 	addu	t6,t6,t9
     3b8:	000e7080 	sll	t6,t6,0x2
     3bc:	01d97023 	subu	t6,t6,t9
     3c0:	000e7080 	sll	t6,t6,0x2
     3c4:	01d97023 	subu	t6,t6,t9
     3c8:	8fb90424 	lw	t9,1060(sp)
     3cc:	000e7100 	sll	t6,t6,0x4
     3d0:	030e7821 	addu	t7,t8,t6
     3d4:	0019c080 	sll	t8,t9,0x2
     3d8:	0319c021 	addu	t8,t8,t9
     3dc:	0018c080 	sll	t8,t8,0x2
     3e0:	0319c023 	subu	t8,t8,t9
     3e4:	0018c080 	sll	t8,t8,0x2
     3e8:	0319c023 	subu	t8,t8,t9
     3ec:	0018c100 	sll	t8,t8,0x4
     3f0:	01f87021 	addu	t6,t7,t8
     3f4:	ae0e0138 	sw	t6,312(s0)
     3f8:	8faf0438 	lw	t7,1080(sp)
     3fc:	8fb90434 	lw	t9,1076(sp)
     400:	8fa50054 	lw	a1,84(sp)
     404:	000fc100 	sll	t8,t7,0x4
     408:	03381021 	addu	v0,t9,t8
     40c:	94a40000 	lhu	a0,0(a1)
     410:	25290001 	addiu	t1,t1,1
     414:	24010020 	li	at,32
     418:	00041880 	sll	v1,a0,0x2
     41c:	03a37021 	addu	t6,sp,v1
     420:	8dce0358 	lw	t6,856(t6)
     424:	03a37821 	addu	t7,sp,v1
     428:	03a3c821 	addu	t9,sp,v1
     42c:	a44e0000 	sh	t6,0(v0)
     430:	8def02a4 	lw	t7,676(t7)
     434:	03a3c021 	addu	t8,sp,v1
     438:	03a37021 	addu	t6,sp,v1
     43c:	a44f0002 	sh	t7,2(v0)
     440:	8f3901f0 	lw	t9,496(t9)
     444:	a4400006 	sh	zero,6(v0)
     448:	240f00ff 	li	t7,255
     44c:	a4590004 	sh	t9,4(v0)
     450:	8f18013c 	lw	t8,316(t8)
     454:	24a50002 	addiu	a1,a1,2
     458:	24420010 	addiu	v0,v0,16
     45c:	a458fff8 	sh	t8,-8(v0)
     460:	8dce0088 	lw	t6,136(t6)
     464:	a040fffd 	sb	zero,-3(v0)
     468:	a040fffe 	sb	zero,-2(v0)
     46c:	a04ffffc 	sb	t7,-4(v0)
     470:	1521ffe6 	bne	t1,at,40c <L800ADE10+0x1ac>
     474:	a44efffa 	sh	t6,-6(v0)
     478:	8e030138 	lw	v1,312(s0)
     47c:	3c180102 	lui	t8,0x102
     480:	37180040 	ori	t8,t8,0x40
     484:	24790008 	addiu	t9,v1,8
     488:	ae190138 	sw	t9,312(s0)
     48c:	ac780000 	sw	t8,0(v1)
     490:	8fae0438 	lw	t6,1080(sp)
     494:	8fb90434 	lw	t9,1076(sp)
     498:	00005025 	move	t2,zero
     49c:	000e7900 	sll	t7,t6,0x4
     4a0:	01f9c021 	addu	t8,t7,t9
     4a4:	ac780004 	sw	t8,4(v1)
     4a8:	8fae0438 	lw	t6,1080(sp)
     4ac:	3c180300 	lui	t8,0x300
     4b0:	0000f825 	move	ra,zero
     4b4:	01c97821 	addu	t7,t6,t1
     4b8:	afaf0438 	sw	t7,1080(sp)
     4bc:	8e030138 	lw	v1,312(s0)
     4c0:	240e001e 	li	t6,30
     4c4:	24790008 	addiu	t9,v1,8
     4c8:	ae190138 	sw	t9,312(s0)
     4cc:	ac6e0004 	sw	t6,4(v1)
     4d0:	ac780000 	sw	t8,0(v1)
     4d4:	24c2001f 	addiu	v0,a2,31
     4d8:	00026080 	sll	t4,v0,0x2
     4dc:	00065880 	sll	t3,a2,0x2
     4e0:	316b0fff 	andi	t3,t3,0xfff
     4e4:	318c0fff 	andi	t4,t4,0xfff
     4e8:	afa20038 	sw	v0,56(sp)
     4ec:	00002025 	move	a0,zero
     4f0:	00004825 	move	t1,zero
     4f4:	8e030138 	lw	v1,312(s0)
     4f8:	2488003f 	addiu	t0,a0,63
     4fc:	00083880 	sll	a3,t0,0x2
     500:	246f0008 	addiu	t7,v1,8
     504:	ae0f0138 	sw	t7,312(s0)
     508:	ac720000 	sw	s2,0(v1)
     50c:	8e180128 	lw	t8,296(s0)
     510:	8e390000 	lw	t9,0(s1)
     514:	00043080 	sll	a2,a0,0x2
     518:	30c60fff 	andi	a2,a2,0xfff
     51c:	03387021 	addu	t6,t9,t8
     520:	ac6e0004 	sw	t6,4(v1)
     524:	8e030138 	lw	v1,312(s0)
     528:	0084c823 	subu	t9,a0,a0
     52c:	27380047 	addiu	t8,t9,71
     530:	246f0008 	addiu	t7,v1,8
     534:	ae0f0138 	sw	t7,312(s0)
     538:	001870c3 	sra	t6,t8,0x3
     53c:	31cf01ff 	andi	t7,t6,0x1ff
     540:	000fca40 	sll	t9,t7,0x9
     544:	03332825 	or	a1,t9,s3
     548:	ac650000 	sw	a1,0(v1)
     54c:	ac6d0004 	sw	t5,4(v1)
     550:	8e030138 	lw	v1,312(s0)
     554:	30e70fff 	andi	a3,a3,0xfff
     558:	00073b00 	sll	a3,a3,0xc
     55c:	24780008 	addiu	t8,v1,8
     560:	ae180138 	sw	t8,312(s0)
     564:	ac600004 	sw	zero,4(v1)
     568:	ac740000 	sw	s4,0(v1)
     56c:	8e030138 	lw	v1,312(s0)
     570:	00063300 	sll	a2,a2,0xc
     574:	00d57825 	or	t7,a2,s5
     578:	246e0008 	addiu	t6,v1,8
     57c:	ae0e0138 	sw	t6,312(s0)
     580:	00edc025 	or	t8,a3,t5
     584:	030c7025 	or	t6,t8,t4
     588:	01ebc825 	or	t9,t7,t3
     58c:	ac790000 	sw	t9,0(v1)
     590:	ac6e0004 	sw	t6,4(v1)
     594:	8e030138 	lw	v1,312(s0)
     598:	00d77025 	or	t6,a2,s7
     59c:	25290001 	addiu	t1,t1,1
     5a0:	246f0008 	addiu	t7,v1,8
     5a4:	ae0f0138 	sw	t7,312(s0)
     5a8:	ac600004 	sw	zero,4(v1)
     5ac:	ac760000 	sw	s6,0(v1)
     5b0:	8e030138 	lw	v1,312(s0)
     5b4:	01cb7825 	or	t7,t6,t3
     5b8:	000a7040 	sll	t6,t2,0x1
     5bc:	24790008 	addiu	t9,v1,8
     5c0:	ae190138 	sw	t9,312(s0)
     5c4:	ac600004 	sw	zero,4(v1)
     5c8:	ac650000 	sw	a1,0(v1)
     5cc:	8e030138 	lw	v1,312(s0)
     5d0:	00ecc825 	or	t9,a3,t4
     5d4:	03ce1021 	addu	v0,s8,t6
     5d8:	24780008 	addiu	t8,v1,8
     5dc:	ae180138 	sw	t8,312(s0)
     5e0:	ac790004 	sw	t9,4(v1)
     5e4:	ac6f0000 	sw	t7,0(v1)
     5e8:	8e030138 	lw	v1,312(s0)
     5ec:	00094c00 	sll	t1,t1,0x10
     5f0:	00094c03 	sra	t1,t1,0x10
     5f4:	24780008 	addiu	t8,v1,8
     5f8:	ae180138 	sw	t8,312(s0)
     5fc:	844f0004 	lh	t7,4(v0)
     600:	844e0000 	lh	t6,0(v0)
     604:	254a0004 	addiu	t2,t2,4
     608:	000fc840 	sll	t9,t7,0x1
     60c:	333800ff 	andi	t8,t9,0xff
     610:	000e7840 	sll	t7,t6,0x1
     614:	31f900ff 	andi	t9,t7,0xff
     618:	00197400 	sll	t6,t9,0x10
     61c:	84590002 	lh	t9,2(v0)
     620:	030e7825 	or	t7,t8,t6
     624:	000a5400 	sll	t2,t2,0x10
     628:	0019c040 	sll	t8,t9,0x1
     62c:	330e00ff 	andi	t6,t8,0xff
     630:	000eca00 	sll	t9,t6,0x8
     634:	01f9c025 	or	t8,t7,t9
     638:	030d7025 	or	t6,t8,t5
     63c:	ac6e0000 	sw	t6,0(v1)
     640:	844f0006 	lh	t7,6(v0)
     644:	844e0000 	lh	t6,0(v0)
     648:	29210004 	slti	at,t1,4
     64c:	000fc840 	sll	t9,t7,0x1
     650:	333800ff 	andi	t8,t9,0xff
     654:	000e7840 	sll	t7,t6,0x1
     658:	31f900ff 	andi	t9,t7,0xff
     65c:	00197400 	sll	t6,t9,0x10
     660:	84590004 	lh	t9,4(v0)
     664:	030e7825 	or	t7,t8,t6
     668:	00082400 	sll	a0,t0,0x10
     66c:	0019c040 	sll	t8,t9,0x1
     670:	330e00ff 	andi	t6,t8,0xff
     674:	000eca00 	sll	t9,t6,0x8
     678:	01f9c025 	or	t8,t7,t9
     67c:	00042403 	sra	a0,a0,0x10
     680:	000a5403 	sra	t2,t2,0x10
     684:	1420ff9b 	bnez	at,4f4 <L800ADE10+0x294>
     688:	ac780004 	sw	t8,4(v1)
     68c:	27ff0001 	addiu	ra,ra,1
     690:	001ffc00 	sll	ra,ra,0x10
     694:	001ffc03 	sra	ra,ra,0x10
     698:	2be10004 	slti	at,ra,4
     69c:	1420ff8d 	bnez	at,4d4 <L800ADE10+0x274>
     6a0:	87a6003a 	lh	a2,58(sp)
     6a4:	8e030138 	lw	v1,312(s0)
     6a8:	3c0fdf00 	lui	t7,0xdf00
     6ac:	24010002 	li	at,2
     6b0:	246e0008 	addiu	t6,v1,8
     6b4:	ae0e0138 	sw	t6,312(s0)
     6b8:	ac600004 	sw	zero,4(v1)
     6bc:	ac6f0000 	sw	t7,0(v1)
     6c0:	8fb90054 	lw	t9,84(sp)
     6c4:	8fa20424 	lw	v0,1060(sp)
     6c8:	27380040 	addiu	t8,t9,64
     6cc:	24420001 	addiu	v0,v0,1
     6d0:	afa20424 	sw	v0,1060(sp)
     6d4:	1441ff33 	bne	v0,at,3a4 <L800ADE10+0x144>
     6d8:	afb80054 	sw	t8,84(sp)
     6dc:	8fbf002c 	lw	ra,44(sp)
     6e0:	8fa20438 	lw	v0,1080(sp)
     6e4:	8fb00008 	lw	s0,8(sp)
     6e8:	8fb1000c 	lw	s1,12(sp)
     6ec:	8fb20010 	lw	s2,16(sp)
     6f0:	8fb30014 	lw	s3,20(sp)
     6f4:	8fb40018 	lw	s4,24(sp)
     6f8:	8fb5001c 	lw	s5,28(sp)
     6fc:	8fb60020 	lw	s6,32(sp)
     700:	8fb70024 	lw	s7,36(sp)
     704:	8fbe0028 	lw	s8,40(sp)
     708:	03e00008 	jr	ra
     70c:	27bd0430 	addiu	sp,sp,1072

00000710 <func_800AE2C0>:
     710:	27bdfcc8 	addiu	sp,sp,-824
     714:	afb70024 	sw	s7,36(sp)
     718:	8fb70358 	lw	s7,856(sp)
     71c:	afbe0028 	sw	s8,40(sp)
     720:	afb20010 	sw	s2,16(sp)
     724:	afb00008 	sw	s0,8(sp)
     728:	2ee10006 	sltiu	at,s7,6
     72c:	00808025 	move	s0,a0
     730:	00e09025 	move	s2,a3
     734:	00a0f025 	move	s8,a1
     738:	afbf002c 	sw	ra,44(sp)
     73c:	afb60020 	sw	s6,32(sp)
     740:	afb5001c 	sw	s5,28(sp)
     744:	afb40018 	sw	s4,24(sp)
     748:	afb30014 	sw	s3,20(sp)
     74c:	afb1000c 	sw	s1,12(sp)
     750:	102000c5 	beqz	at,a68 <L800AE520+0xf8>
     754:	afa60340 	sw	a2,832(sp)
     758:	00177080 	sll	t6,s7,0x2
     75c:	3c010000 	lui	at,0x0
     760:	002e0821 	addu	at,at,t6
     764:	8c2e0000 	lw	t6,0(at)
     768:	01c00008 	jr	t6
     76c:	00000000 	nop

00000770 <L800AE320>:
     770:	8fab0350 	lw	t3,848(sp)
     774:	3c140000 	lui	s4,0x0
     778:	3c130000 	lui	s3,0x0
     77c:	8faa0348 	lw	t2,840(sp)
     780:	26730000 	addiu	s3,s3,0
     784:	26940000 	addiu	s4,s4,0
     788:	27a501ec 	addiu	a1,sp,492
     78c:	27a602b4 	addiu	a2,sp,692
     790:	27a70250 	addiu	a3,sp,592
     794:	27a80188 	addiu	t0,sp,392
     798:	27a40124 	addiu	a0,sp,292
     79c:	8fb50354 	lw	s5,852(sp)
     7a0:	8fb1034c 	lw	s1,844(sp)
     7a4:	27ac0188 	addiu	t4,sp,392
     7a8:	024bb021 	addu	s6,s2,t3
     7ac:	acb10000 	sw	s1,0(a1)
     7b0:	acd20000 	sw	s2,0(a2)
     7b4:	acea0000 	sw	t2,0(a3)
     7b8:	3c0f0000 	lui	t7,0x0
     7bc:	85ef0000 	lh	t7,0(t7)
     7c0:	240d0001 	li	t5,1
     7c4:	000dc040 	sll	t8,t5,0x1
     7c8:	86890000 	lh	t1,0(s4)
     7cc:	02781821 	addu	v1,s3,t8
     7d0:	02cb1021 	addu	v0,s6,t3
     7d4:	acc20008 	sw	v0,8(a2)
     7d8:	004b1021 	addu	v0,v0,t3
     7dc:	ad0f0000 	sw	t7,0(t0)
     7e0:	846f0004 	lh	t7,4(v1)
     7e4:	846e0002 	lh	t6,2(v1)
     7e8:	84780006 	lh	t8,6(v1)
     7ec:	84790000 	lh	t9,0(v1)
     7f0:	acc2000c 	sw	v0,12(a2)
     7f4:	24840014 	addiu	a0,a0,20
     7f8:	008c082b 	sltu	at,a0,t4
     7fc:	004b1021 	addu	v0,v0,t3
     800:	acea0010 	sw	t2,16(a3)
     804:	acea000c 	sw	t2,12(a3)
     808:	acea0008 	sw	t2,8(a3)
     80c:	acea0004 	sw	t2,4(a3)
     810:	26940002 	addiu	s4,s4,2
     814:	acc20010 	sw	v0,16(a2)
     818:	acb10010 	sw	s1,16(a1)
     81c:	acb1000c 	sw	s1,12(a1)
     820:	acb10008 	sw	s1,8(a1)
     824:	24a50014 	addiu	a1,a1,20
     828:	24c60014 	addiu	a2,a2,20
     82c:	24e70014 	addiu	a3,a3,20
     830:	25080014 	addiu	t0,t0,20
     834:	acb1fff0 	sw	s1,-16(a1)
     838:	acd6fff0 	sw	s6,-16(a2)
     83c:	01555021 	addu	t2,t2,s5
     840:	ac89ffec 	sw	t1,-20(a0)
     844:	ac89fff4 	sw	t1,-12(a0)
     848:	ac89fff8 	sw	t1,-8(a0)
     84c:	ac89fffc 	sw	t1,-4(a0)
     850:	ac89fff0 	sw	t1,-16(a0)
     854:	ad0ffff8 	sw	t7,-8(t0)
     858:	ad0efff4 	sw	t6,-12(t0)
     85c:	ad18fffc 	sw	t8,-4(t0)
     860:	1420ffd2 	bnez	at,7ac <L800AE320+0x3c>
     864:	ad19fff0 	sw	t9,-16(t0)
     868:	10000080 	b	a6c <L800AE520+0xfc>
     86c:	00177080 	sll	t6,s7,0x2

00000870 <L800AE420>:
     870:	8fab0350 	lw	t3,848(sp)
     874:	8fb1034c 	lw	s1,844(sp)
     878:	3c140000 	lui	s4,0x0
     87c:	3c130000 	lui	s3,0x0
     880:	8faa0348 	lw	t2,840(sp)
     884:	26730000 	addiu	s3,s3,0
     888:	26940000 	addiu	s4,s4,0
     88c:	27a501ec 	addiu	a1,sp,492
     890:	27a602b4 	addiu	a2,sp,692
     894:	27a70250 	addiu	a3,sp,592
     898:	27a80188 	addiu	t0,sp,392
     89c:	27a40124 	addiu	a0,sp,292
     8a0:	8fb50354 	lw	s5,852(sp)
     8a4:	27ac0188 	addiu	t4,sp,392
     8a8:	022bb021 	addu	s6,s1,t3
     8ac:	acd20000 	sw	s2,0(a2)
     8b0:	acea0000 	sw	t2,0(a3)
     8b4:	acb10000 	sw	s1,0(a1)
     8b8:	3c190000 	lui	t9,0x0
     8bc:	87390000 	lh	t9,0(t9)
     8c0:	240d0001 	li	t5,1
     8c4:	000d7040 	sll	t6,t5,0x1
     8c8:	86890000 	lh	t1,0(s4)
     8cc:	026e1821 	addu	v1,s3,t6
     8d0:	02cb1021 	addu	v0,s6,t3
     8d4:	aca20008 	sw	v0,8(a1)
     8d8:	004b1021 	addu	v0,v0,t3
     8dc:	ad190000 	sw	t9,0(t0)
     8e0:	84790004 	lh	t9,4(v1)
     8e4:	84780002 	lh	t8,2(v1)
     8e8:	846e0006 	lh	t6,6(v1)
     8ec:	846f0000 	lh	t7,0(v1)
     8f0:	aca2000c 	sw	v0,12(a1)
     8f4:	24840014 	addiu	a0,a0,20
     8f8:	008c082b 	sltu	at,a0,t4
     8fc:	004b1021 	addu	v0,v0,t3
     900:	acea0010 	sw	t2,16(a3)
     904:	acea000c 	sw	t2,12(a3)
     908:	acea0008 	sw	t2,8(a3)
     90c:	acea0004 	sw	t2,4(a3)
     910:	26940002 	addiu	s4,s4,2
     914:	aca20010 	sw	v0,16(a1)
     918:	acd20010 	sw	s2,16(a2)
     91c:	acd2000c 	sw	s2,12(a2)
     920:	acd20008 	sw	s2,8(a2)
     924:	24a50014 	addiu	a1,a1,20
     928:	24c60014 	addiu	a2,a2,20
     92c:	24e70014 	addiu	a3,a3,20
     930:	25080014 	addiu	t0,t0,20
     934:	acd2fff0 	sw	s2,-16(a2)
     938:	acb6fff0 	sw	s6,-16(a1)
     93c:	01555021 	addu	t2,t2,s5
     940:	ac89ffec 	sw	t1,-20(a0)
     944:	ac89fff4 	sw	t1,-12(a0)
     948:	ac89fff8 	sw	t1,-8(a0)
     94c:	ac89fffc 	sw	t1,-4(a0)
     950:	ac89fff0 	sw	t1,-16(a0)
     954:	ad19fff8 	sw	t9,-8(t0)
     958:	ad18fff4 	sw	t8,-12(t0)
     95c:	ad0efffc 	sw	t6,-4(t0)
     960:	1420ffd2 	bnez	at,8ac <L800AE420+0x3c>
     964:	ad0ffff0 	sw	t7,-16(t0)
     968:	10000040 	b	a6c <L800AE520+0xfc>
     96c:	00177080 	sll	t6,s7,0x2

00000970 <L800AE520>:
     970:	8fab0350 	lw	t3,848(sp)
     974:	3c140000 	lui	s4,0x0
     978:	3c130000 	lui	s3,0x0
     97c:	8faa034c 	lw	t2,844(sp)
     980:	26730000 	addiu	s3,s3,0
     984:	26940000 	addiu	s4,s4,0
     988:	27a501ec 	addiu	a1,sp,492
     98c:	27a602b4 	addiu	a2,sp,692
     990:	27a70250 	addiu	a3,sp,592
     994:	27a80188 	addiu	t0,sp,392
     998:	27a40124 	addiu	a0,sp,292
     99c:	8fb50354 	lw	s5,852(sp)
     9a0:	27b10188 	addiu	s1,sp,392
     9a4:	8fac0348 	lw	t4,840(sp)
     9a8:	024bb021 	addu	s6,s2,t3
     9ac:	acec0000 	sw	t4,0(a3)
     9b0:	acd20000 	sw	s2,0(a2)
     9b4:	acaa0000 	sw	t2,0(a1)
     9b8:	3c0f0000 	lui	t7,0x0
     9bc:	85ef0000 	lh	t7,0(t7)
     9c0:	240d0001 	li	t5,1
     9c4:	000dc040 	sll	t8,t5,0x1
     9c8:	86890000 	lh	t1,0(s4)
     9cc:	02781821 	addu	v1,s3,t8
     9d0:	02cb1021 	addu	v0,s6,t3
     9d4:	acc20008 	sw	v0,8(a2)
     9d8:	004b1021 	addu	v0,v0,t3
     9dc:	ad0f0000 	sw	t7,0(t0)
     9e0:	846f0004 	lh	t7,4(v1)
     9e4:	846e0002 	lh	t6,2(v1)
     9e8:	84780006 	lh	t8,6(v1)
     9ec:	84790000 	lh	t9,0(v1)
     9f0:	acc2000c 	sw	v0,12(a2)
     9f4:	24840014 	addiu	a0,a0,20
     9f8:	0091082b 	sltu	at,a0,s1
     9fc:	004b1021 	addu	v0,v0,t3
     a00:	acaa0010 	sw	t2,16(a1)
     a04:	acaa000c 	sw	t2,12(a1)
     a08:	acaa0008 	sw	t2,8(a1)
     a0c:	acaa0004 	sw	t2,4(a1)
     a10:	26940002 	addiu	s4,s4,2
     a14:	acc20010 	sw	v0,16(a2)
     a18:	acec0010 	sw	t4,16(a3)
     a1c:	acec000c 	sw	t4,12(a3)
     a20:	acec0008 	sw	t4,8(a3)
     a24:	24a50014 	addiu	a1,a1,20
     a28:	24c60014 	addiu	a2,a2,20
     a2c:	24e70014 	addiu	a3,a3,20
     a30:	25080014 	addiu	t0,t0,20
     a34:	acecfff0 	sw	t4,-16(a3)
     a38:	acd6fff0 	sw	s6,-16(a2)
     a3c:	01555021 	addu	t2,t2,s5
     a40:	ac89ffec 	sw	t1,-20(a0)
     a44:	ac89fff4 	sw	t1,-12(a0)
     a48:	ac89fff8 	sw	t1,-8(a0)
     a4c:	ac89fffc 	sw	t1,-4(a0)
     a50:	ac89fff0 	sw	t1,-16(a0)
     a54:	ad0ffff8 	sw	t7,-8(t0)
     a58:	ad0efff4 	sw	t6,-12(t0)
     a5c:	ad18fffc 	sw	t8,-4(t0)
     a60:	1420ffd2 	bnez	at,9ac <L800AE520+0x3c>
     a64:	ad19fff0 	sw	t9,-16(t0)
     a68:	00177080 	sll	t6,s7,0x2
     a6c:	01d77021 	addu	t6,t6,s7
     a70:	000e7080 	sll	t6,t6,0x2
     a74:	01d77023 	subu	t6,t6,s7
     a78:	8e190134 	lw	t9,308(s0)
     a7c:	000e7080 	sll	t6,t6,0x2
     a80:	01d77023 	subu	t6,t6,s7
     a84:	000e7140 	sll	t6,t6,0x5
     a88:	032e7821 	addu	t7,t9,t6
     a8c:	ae0f0138 	sw	t7,312(s0)
     a90:	8fb80340 	lw	t8,832(sp)
     a94:	3c040000 	lui	a0,0x0
     a98:	24840000 	addiu	a0,a0,0
     a9c:	0018c900 	sll	t9,t8,0x4
     aa0:	03d92821 	addu	a1,s8,t9
     aa4:	00001025 	move	v0,zero
     aa8:	240d0020 	li	t5,32
     aac:	240c00ff 	li	t4,255
     ab0:	27ab0124 	addiu	t3,sp,292
     ab4:	27aa0188 	addiu	t2,sp,392
     ab8:	27a901ec 	addiu	t1,sp,492
     abc:	27a80250 	addiu	t0,sp,592
     ac0:	27a702b4 	addiu	a3,sp,692
     ac4:	94830000 	lhu	v1,0(a0)
     ac8:	24420001 	addiu	v0,v0,1
     acc:	24840002 	addiu	a0,a0,2
     ad0:	00033080 	sll	a2,v1,0x2
     ad4:	00e67021 	addu	t6,a3,a2
     ad8:	8dcf0000 	lw	t7,0(t6)
     adc:	0106c021 	addu	t8,t0,a2
     ae0:	01267021 	addu	t6,t1,a2
     ae4:	a4af0000 	sh	t7,0(a1)
     ae8:	8f190000 	lw	t9,0(t8)
     aec:	0146c021 	addu	t8,t2,a2
     af0:	24a50010 	addiu	a1,a1,16
     af4:	a4b9fff2 	sh	t9,-14(a1)
     af8:	8dcf0000 	lw	t7,0(t6)
     afc:	a4a0fff6 	sh	zero,-10(a1)
     b00:	01667021 	addu	t6,t3,a2
     b04:	a4affff4 	sh	t7,-12(a1)
     b08:	8f190000 	lw	t9,0(t8)
     b0c:	a4b9fff8 	sh	t9,-8(a1)
     b10:	8dcf0000 	lw	t7,0(t6)
     b14:	a0a0fffd 	sb	zero,-3(a1)
     b18:	a0a0fffe 	sb	zero,-2(a1)
     b1c:	a0acfffc 	sb	t4,-4(a1)
     b20:	144dffe8 	bne	v0,t5,ac4 <L800AE520+0x154>
     b24:	a4affffa 	sh	t7,-6(a1)
     b28:	8e030138 	lw	v1,312(s0)
     b2c:	3c190102 	lui	t9,0x102
     b30:	37390040 	ori	t9,t9,0x40
     b34:	24780008 	addiu	t8,v1,8
     b38:	ae180138 	sw	t8,312(s0)
     b3c:	ac790000 	sw	t9,0(v1)
     b40:	8fae0340 	lw	t6,832(sp)
     b44:	24010004 	li	at,4
     b48:	00009025 	move	s2,zero
     b4c:	000e7900 	sll	t7,t6,0x4
     b50:	01fec021 	addu	t8,t7,s8
     b54:	ac780004 	sw	t8,4(v1)
     b58:	8fb90340 	lw	t9,832(sp)
     b5c:	3c180300 	lui	t8,0x300
     b60:	3c1ff548 	lui	ra,0xf548
     b64:	03227021 	addu	t6,t9,v0
     b68:	afae0340 	sw	t6,832(sp)
     b6c:	8e030138 	lw	v1,312(s0)
     b70:	2419001e 	li	t9,30
     b74:	00177080 	sll	t6,s7,0x2
     b78:	246f0008 	addiu	t7,v1,8
     b7c:	ae0f0138 	sw	t7,312(s0)
     b80:	ac790004 	sw	t9,4(v1)
     b84:	12e10004 	beq	s7,at,b98 <L800AE520+0x228>
     b88:	ac780000 	sw	t8,0(v1)
     b8c:	24010005 	li	at,5
     b90:	16e100b3 	bne	s7,at,e60 <L800AE520+0x4f0>
     b94:	00177880 	sll	t7,s7,0x2
     b98:	3c0f0000 	lui	t7,0x0
     b9c:	25ef0000 	addiu	t7,t7,0
     ba0:	3c14fd48 	lui	s4,0xfd48
     ba4:	3694007f 	ori	s4,s4,0x7f
     ba8:	01cff021 	addu	s8,t6,t7
     bac:	a7a0031e 	sh	zero,798(sp)
     bb0:	a7a00320 	sh	zero,800(sp)
     bb4:	3c170100 	lui	s7,0x100
     bb8:	3c16e700 	lui	s6,0xe700
     bbc:	3c15e600 	lui	s5,0xe600
     bc0:	3c0c0700 	lui	t4,0x700
     bc4:	87a20320 	lh	v0,800(sp)
     bc8:	00002025 	move	a0,zero
     bcc:	00006825 	move	t5,zero
     bd0:	2458001f 	addiu	t8,v0,31
     bd4:	00188880 	sll	s1,t8,0x2
     bd8:	00029880 	sll	s3,v0,0x2
     bdc:	32730fff 	andi	s3,s3,0xfff
     be0:	32310fff 	andi	s1,s1,0xfff
     be4:	afb80040 	sw	t8,64(sp)
     be8:	8e030138 	lw	v1,312(s0)
     bec:	248b001f 	addiu	t3,a0,31
     bf0:	000b3880 	sll	a3,t3,0x2
     bf4:	24790008 	addiu	t9,v1,8
     bf8:	ae190138 	sw	t9,312(s0)
     bfc:	ac740000 	sw	s4,0(v1)
     c00:	8fce0000 	lw	t6,0(s8)
     c04:	8e0f0128 	lw	t7,296(s0)
     c08:	00042880 	sll	a1,a0,0x2
     c0c:	30a50fff 	andi	a1,a1,0xfff
     c10:	01cfc021 	addu	t8,t6,t7
     c14:	ac780004 	sw	t8,4(v1)
     c18:	8e030138 	lw	v1,312(s0)
     c1c:	00847023 	subu	t6,a0,a0
     c20:	25cf0027 	addiu	t7,t6,39
     c24:	24790008 	addiu	t9,v1,8
     c28:	ae190138 	sw	t9,312(s0)
     c2c:	000fc0c3 	sra	t8,t7,0x3
     c30:	331901ff 	andi	t9,t8,0x1ff
     c34:	00197240 	sll	t6,t9,0x9
     c38:	01df3025 	or	a2,t6,ra
     c3c:	ac660000 	sw	a2,0(v1)
     c40:	ac6c0004 	sw	t4,4(v1)
     c44:	8e030138 	lw	v1,312(s0)
     c48:	30e70fff 	andi	a3,a3,0xfff
     c4c:	00073b00 	sll	a3,a3,0xc
     c50:	246f0008 	addiu	t7,v1,8
     c54:	ae0f0138 	sw	t7,312(s0)
     c58:	ac600004 	sw	zero,4(v1)
     c5c:	ac750000 	sw	s5,0(v1)
     c60:	8e030138 	lw	v1,312(s0)
     c64:	00052b00 	sll	a1,a1,0xc
     c68:	3c01f400 	lui	at,0xf400
     c6c:	24780008 	addiu	t8,v1,8
     c70:	ae180138 	sw	t8,312(s0)
     c74:	00a1c825 	or	t9,a1,at
     c78:	00ec7025 	or	t6,a3,t4
     c7c:	01d14825 	or	t1,t6,s1
     c80:	03334025 	or	t0,t9,s3
     c84:	ac680000 	sw	t0,0(v1)
     c88:	ac690004 	sw	t1,4(v1)
     c8c:	8e030138 	lw	v1,312(s0)
     c90:	3c01f200 	lui	at,0xf200
     c94:	00a17025 	or	t6,a1,at
     c98:	246f0008 	addiu	t7,v1,8
     c9c:	ae0f0138 	sw	t7,312(s0)
     ca0:	ac600004 	sw	zero,4(v1)
     ca4:	ac760000 	sw	s6,0(v1)
     ca8:	8e030138 	lw	v1,312(s0)
     cac:	00f17825 	or	t7,a3,s1
     cb0:	01d35025 	or	t2,t6,s3
     cb4:	24780008 	addiu	t8,v1,8
     cb8:	ae180138 	sw	t8,312(s0)
     cbc:	ac600004 	sw	zero,4(v1)
     cc0:	ac660000 	sw	a2,0(v1)
     cc4:	8e030138 	lw	v1,312(s0)
     cc8:	34c40080 	ori	a0,a2,0x80
     ccc:	25ad0001 	addiu	t5,t5,1
     cd0:	24790008 	addiu	t9,v1,8
     cd4:	ae190138 	sw	t9,312(s0)
     cd8:	ac6f0004 	sw	t7,4(v1)
     cdc:	ac6a0000 	sw	t2,0(v1)
     ce0:	8e030138 	lw	v1,312(s0)
     ce4:	000d6c00 	sll	t5,t5,0x10
     ce8:	000d6c03 	sra	t5,t5,0x10
     cec:	24780008 	addiu	t8,v1,8
     cf0:	ae180138 	sw	t8,312(s0)
     cf4:	ac740000 	sw	s4,0(v1)
     cf8:	8e0e012c 	lw	t6,300(s0)
     cfc:	8fd90000 	lw	t9,0(s8)
     d00:	29a10004 	slti	at,t5,4
     d04:	032e7821 	addu	t7,t9,t6
     d08:	ac6f0004 	sw	t7,4(v1)
     d0c:	8e030138 	lw	v1,312(s0)
     d10:	24780008 	addiu	t8,v1,8
     d14:	ae180138 	sw	t8,312(s0)
     d18:	ac6c0004 	sw	t4,4(v1)
     d1c:	ac640000 	sw	a0,0(v1)
     d20:	8e030138 	lw	v1,312(s0)
     d24:	24790008 	addiu	t9,v1,8
     d28:	ae190138 	sw	t9,312(s0)
     d2c:	ac600004 	sw	zero,4(v1)
     d30:	ac750000 	sw	s5,0(v1)
     d34:	8e030138 	lw	v1,312(s0)
     d38:	246e0008 	addiu	t6,v1,8
     d3c:	ae0e0138 	sw	t6,312(s0)
     d40:	ac690004 	sw	t1,4(v1)
     d44:	ac680000 	sw	t0,0(v1)
     d48:	8e030138 	lw	v1,312(s0)
     d4c:	00f77025 	or	t6,a3,s7
     d50:	246f0008 	addiu	t7,v1,8
     d54:	ae0f0138 	sw	t7,312(s0)
     d58:	ac600004 	sw	zero,4(v1)
     d5c:	ac760000 	sw	s6,0(v1)
     d60:	8e030138 	lw	v1,312(s0)
     d64:	01d17825 	or	t7,t6,s1
     d68:	3c0e0000 	lui	t6,0x0
     d6c:	24780008 	addiu	t8,v1,8
     d70:	ae180138 	sw	t8,312(s0)
     d74:	ac770004 	sw	s7,4(v1)
     d78:	ac640000 	sw	a0,0(v1)
     d7c:	8e030138 	lw	v1,312(s0)
     d80:	25ce0000 	addiu	t6,t6,0
     d84:	000b2400 	sll	a0,t3,0x10
     d88:	24790008 	addiu	t9,v1,8
     d8c:	ae190138 	sw	t9,312(s0)
     d90:	ac6f0004 	sw	t7,4(v1)
     d94:	ac6a0000 	sw	t2,0(v1)
     d98:	8e030138 	lw	v1,312(s0)
     d9c:	0012c840 	sll	t9,s2,0x1
     da0:	032e1021 	addu	v0,t9,t6
     da4:	24780008 	addiu	t8,v1,8
     da8:	ae180138 	sw	t8,312(s0)
     dac:	844f0004 	lh	t7,4(v0)
     db0:	844e0000 	lh	t6,0(v0)
     db4:	26520004 	addiu	s2,s2,4
     db8:	000fc040 	sll	t8,t7,0x1
     dbc:	331900ff 	andi	t9,t8,0xff
     dc0:	000e7840 	sll	t7,t6,0x1
     dc4:	31f800ff 	andi	t8,t7,0xff
     dc8:	00187400 	sll	t6,t8,0x10
     dcc:	84580002 	lh	t8,2(v0)
     dd0:	032e7825 	or	t7,t9,t6
     dd4:	00129400 	sll	s2,s2,0x10
     dd8:	0018c840 	sll	t9,t8,0x1
     ddc:	332e00ff 	andi	t6,t9,0xff
     de0:	000ec200 	sll	t8,t6,0x8
     de4:	01f8c825 	or	t9,t7,t8
     de8:	032c7025 	or	t6,t9,t4
     dec:	ac6e0000 	sw	t6,0(v1)
     df0:	844f0006 	lh	t7,6(v0)
     df4:	844e0000 	lh	t6,0(v0)
     df8:	00129403 	sra	s2,s2,0x10
     dfc:	000fc040 	sll	t8,t7,0x1
     e00:	331900ff 	andi	t9,t8,0xff
     e04:	000e7840 	sll	t7,t6,0x1
     e08:	31f800ff 	andi	t8,t7,0xff
     e0c:	00187400 	sll	t6,t8,0x10
     e10:	84580004 	lh	t8,4(v0)
     e14:	032e7825 	or	t7,t9,t6
     e18:	00042403 	sra	a0,a0,0x10
     e1c:	0018c840 	sll	t9,t8,0x1
     e20:	332e00ff 	andi	t6,t9,0xff
     e24:	000ec200 	sll	t8,t6,0x8
     e28:	01f8c825 	or	t9,t7,t8
     e2c:	1420ff6e 	bnez	at,be8 <L800AE520+0x278>
     e30:	ac790004 	sw	t9,4(v1)
     e34:	87a2031e 	lh	v0,798(sp)
     e38:	8fae0040 	lw	t6,64(sp)
     e3c:	24420001 	addiu	v0,v0,1
     e40:	00021400 	sll	v0,v0,0x10
     e44:	00021403 	sra	v0,v0,0x10
     e48:	28410004 	slti	at,v0,4
     e4c:	a7a2031e 	sh	v0,798(sp)
     e50:	1420ff5c 	bnez	at,bc4 <L800AE520+0x254>
     e54:	a7ae0320 	sh	t6,800(sp)
     e58:	1000015d 	b	13d0 <L800AE520+0xa60>
     e5c:	8e030138 	lw	v1,312(s0)
     e60:	3c180000 	lui	t8,0x0
     e64:	27180000 	addiu	t8,t8,0
     e68:	3c14fd48 	lui	s4,0xfd48
     e6c:	3694007f 	ori	s4,s4,0x7f
     e70:	01f8f021 	addu	s8,t7,t8
     e74:	00009025 	move	s2,zero
     e78:	a7a0031e 	sh	zero,798(sp)
     e7c:	a7a00320 	sh	zero,800(sp)
     e80:	3c1ff548 	lui	ra,0xf548
     e84:	3c170100 	lui	s7,0x100
     e88:	3c16e700 	lui	s6,0xe700
     e8c:	3c15e600 	lui	s5,0xe600
     e90:	3c0c0700 	lui	t4,0x700
     e94:	87a20320 	lh	v0,800(sp)
     e98:	00002025 	move	a0,zero
     e9c:	00006825 	move	t5,zero
     ea0:	2459001f 	addiu	t9,v0,31
     ea4:	00198880 	sll	s1,t9,0x2
     ea8:	00029880 	sll	s3,v0,0x2
     eac:	32730fff 	andi	s3,s3,0xfff
     eb0:	32310fff 	andi	s1,s1,0xfff
     eb4:	afb90040 	sw	t9,64(sp)
     eb8:	8e030138 	lw	v1,312(s0)
     ebc:	248b001f 	addiu	t3,a0,31
     ec0:	000b3880 	sll	a3,t3,0x2
     ec4:	246e0008 	addiu	t6,v1,8
     ec8:	ae0e0138 	sw	t6,312(s0)
     ecc:	ac740000 	sw	s4,0(v1)
     ed0:	8fcf0000 	lw	t7,0(s8)
     ed4:	8e180128 	lw	t8,296(s0)
     ed8:	00042880 	sll	a1,a0,0x2
     edc:	30a50fff 	andi	a1,a1,0xfff
     ee0:	01f8c821 	addu	t9,t7,t8
     ee4:	ac790004 	sw	t9,4(v1)
     ee8:	8e030138 	lw	v1,312(s0)
     eec:	00847823 	subu	t7,a0,a0
     ef0:	25f80027 	addiu	t8,t7,39
     ef4:	246e0008 	addiu	t6,v1,8
     ef8:	ae0e0138 	sw	t6,312(s0)
     efc:	0018c8c3 	sra	t9,t8,0x3
     f00:	332e01ff 	andi	t6,t9,0x1ff
     f04:	000e7a40 	sll	t7,t6,0x9
     f08:	01ff3025 	or	a2,t7,ra
     f0c:	ac660000 	sw	a2,0(v1)
     f10:	ac6c0004 	sw	t4,4(v1)
     f14:	8e030138 	lw	v1,312(s0)
     f18:	30e70fff 	andi	a3,a3,0xfff
     f1c:	00073b00 	sll	a3,a3,0xc
     f20:	24780008 	addiu	t8,v1,8
     f24:	ae180138 	sw	t8,312(s0)
     f28:	ac600004 	sw	zero,4(v1)
     f2c:	ac750000 	sw	s5,0(v1)
     f30:	8e030138 	lw	v1,312(s0)
     f34:	00052b00 	sll	a1,a1,0xc
     f38:	3c01f400 	lui	at,0xf400
     f3c:	24790008 	addiu	t9,v1,8
     f40:	ae190138 	sw	t9,312(s0)
     f44:	00a17025 	or	t6,a1,at
     f48:	00ec7825 	or	t7,a3,t4
     f4c:	01f14825 	or	t1,t7,s1
     f50:	01d34025 	or	t0,t6,s3
     f54:	ac680000 	sw	t0,0(v1)
     f58:	ac690004 	sw	t1,4(v1)
     f5c:	8e030138 	lw	v1,312(s0)
     f60:	3c01f200 	lui	at,0xf200
     f64:	00a17825 	or	t7,a1,at
     f68:	24780008 	addiu	t8,v1,8
     f6c:	ae180138 	sw	t8,312(s0)
     f70:	ac600004 	sw	zero,4(v1)
     f74:	ac760000 	sw	s6,0(v1)
     f78:	8e030138 	lw	v1,312(s0)
     f7c:	00f1c025 	or	t8,a3,s1
     f80:	01f35025 	or	t2,t7,s3
     f84:	24790008 	addiu	t9,v1,8
     f88:	ae190138 	sw	t9,312(s0)
     f8c:	ac600004 	sw	zero,4(v1)
     f90:	ac660000 	sw	a2,0(v1)
     f94:	8e030138 	lw	v1,312(s0)
     f98:	34c40080 	ori	a0,a2,0x80
     f9c:	25ad0001 	addiu	t5,t5,1
     fa0:	246e0008 	addiu	t6,v1,8
     fa4:	ae0e0138 	sw	t6,312(s0)
     fa8:	ac780004 	sw	t8,4(v1)
     fac:	ac6a0000 	sw	t2,0(v1)
     fb0:	8e030138 	lw	v1,312(s0)
     fb4:	000d6c00 	sll	t5,t5,0x10
     fb8:	000d6c03 	sra	t5,t5,0x10
     fbc:	24790008 	addiu	t9,v1,8
     fc0:	ae190138 	sw	t9,312(s0)
     fc4:	ac740000 	sw	s4,0(v1)
     fc8:	8e0f012c 	lw	t7,300(s0)
     fcc:	8fce0000 	lw	t6,0(s8)
     fd0:	29a10004 	slti	at,t5,4
     fd4:	01cfc021 	addu	t8,t6,t7
     fd8:	ac780004 	sw	t8,4(v1)
     fdc:	8e030138 	lw	v1,312(s0)
     fe0:	24790008 	addiu	t9,v1,8
     fe4:	ae190138 	sw	t9,312(s0)
     fe8:	ac6c0004 	sw	t4,4(v1)
     fec:	ac640000 	sw	a0,0(v1)
     ff0:	8e030138 	lw	v1,312(s0)
     ff4:	246e0008 	addiu	t6,v1,8
     ff8:	ae0e0138 	sw	t6,312(s0)
     ffc:	ac600004 	sw	zero,4(v1)
    1000:	ac750000 	sw	s5,0(v1)
    1004:	8e030138 	lw	v1,312(s0)
    1008:	246f0008 	addiu	t7,v1,8
    100c:	ae0f0138 	sw	t7,312(s0)
    1010:	ac690004 	sw	t1,4(v1)
    1014:	ac680000 	sw	t0,0(v1)
    1018:	8e030138 	lw	v1,312(s0)
    101c:	00f77825 	or	t7,a3,s7
    1020:	24780008 	addiu	t8,v1,8
    1024:	ae180138 	sw	t8,312(s0)
    1028:	ac600004 	sw	zero,4(v1)
    102c:	ac760000 	sw	s6,0(v1)
    1030:	8e030138 	lw	v1,312(s0)
    1034:	01f1c025 	or	t8,t7,s1
    1038:	3c0f0000 	lui	t7,0x0
    103c:	24790008 	addiu	t9,v1,8
    1040:	ae190138 	sw	t9,312(s0)
    1044:	ac770004 	sw	s7,4(v1)
    1048:	ac640000 	sw	a0,0(v1)
    104c:	8e030138 	lw	v1,312(s0)
    1050:	25ef0000 	addiu	t7,t7,0
    1054:	000b2400 	sll	a0,t3,0x10
    1058:	246e0008 	addiu	t6,v1,8
    105c:	ae0e0138 	sw	t6,312(s0)
    1060:	ac780004 	sw	t8,4(v1)
    1064:	ac6a0000 	sw	t2,0(v1)
    1068:	8e030138 	lw	v1,312(s0)
    106c:	00127040 	sll	t6,s2,0x1
    1070:	01cf1021 	addu	v0,t6,t7
    1074:	24790008 	addiu	t9,v1,8
    1078:	ae190138 	sw	t9,312(s0)
    107c:	84580004 	lh	t8,4(v0)
    1080:	844f0000 	lh	t7,0(v0)
    1084:	26520004 	addiu	s2,s2,4
    1088:	0018c840 	sll	t9,t8,0x1
    108c:	332e00ff 	andi	t6,t9,0xff
    1090:	000fc040 	sll	t8,t7,0x1
    1094:	331900ff 	andi	t9,t8,0xff
    1098:	00197c00 	sll	t7,t9,0x10
    109c:	84590002 	lh	t9,2(v0)
    10a0:	01cfc025 	or	t8,t6,t7
    10a4:	00129400 	sll	s2,s2,0x10
    10a8:	00197040 	sll	t6,t9,0x1
    10ac:	31cf00ff 	andi	t7,t6,0xff
    10b0:	000fca00 	sll	t9,t7,0x8
    10b4:	03197025 	or	t6,t8,t9
    10b8:	01cc7825 	or	t7,t6,t4
    10bc:	ac6f0000 	sw	t7,0(v1)
    10c0:	84580006 	lh	t8,6(v0)
    10c4:	844f0000 	lh	t7,0(v0)
    10c8:	00129403 	sra	s2,s2,0x10
    10cc:	0018c840 	sll	t9,t8,0x1
    10d0:	332e00ff 	andi	t6,t9,0xff
    10d4:	000fc040 	sll	t8,t7,0x1
    10d8:	331900ff 	andi	t9,t8,0xff
    10dc:	00197c00 	sll	t7,t9,0x10
    10e0:	84590004 	lh	t9,4(v0)
    10e4:	01cfc025 	or	t8,t6,t7
    10e8:	00042403 	sra	a0,a0,0x10
    10ec:	00197040 	sll	t6,t9,0x1
    10f0:	31cf00ff 	andi	t7,t6,0xff
    10f4:	000fca00 	sll	t9,t7,0x8
    10f8:	03197025 	or	t6,t8,t9
    10fc:	1420ff6e 	bnez	at,eb8 <L800AE520+0x548>
    1100:	ac6e0004 	sw	t6,4(v1)
    1104:	87a2031e 	lh	v0,798(sp)
    1108:	8faf0040 	lw	t7,64(sp)
    110c:	24420001 	addiu	v0,v0,1
    1110:	00021400 	sll	v0,v0,0x10
    1114:	00021403 	sra	v0,v0,0x10
    1118:	28410002 	slti	at,v0,2
    111c:	a7a2031e 	sh	v0,798(sp)
    1120:	1420ff5c 	bnez	at,e94 <L800AE520+0x524>
    1124:	a7af0320 	sh	t7,800(sp)
    1128:	87b80320 	lh	t8,800(sp)
    112c:	a7a0031e 	sh	zero,798(sp)
    1130:	2719ffe1 	addiu	t9,t8,-31
    1134:	a7b90320 	sh	t9,800(sp)
    1138:	87ae0320 	lh	t6,800(sp)
    113c:	00002025 	move	a0,zero
    1140:	00006825 	move	t5,zero
    1144:	25d1001f 	addiu	s1,t6,31
    1148:	00118880 	sll	s1,s1,0x2
    114c:	000e9880 	sll	s3,t6,0x2
    1150:	32730fff 	andi	s3,s3,0xfff
    1154:	32310fff 	andi	s1,s1,0xfff
    1158:	8e030138 	lw	v1,312(s0)
    115c:	248b001f 	addiu	t3,a0,31
    1160:	000b3880 	sll	a3,t3,0x2
    1164:	246f0008 	addiu	t7,v1,8
    1168:	ae0f0138 	sw	t7,312(s0)
    116c:	ac740000 	sw	s4,0(v1)
    1170:	8fd80000 	lw	t8,0(s8)
    1174:	8e190128 	lw	t9,296(s0)
    1178:	00042880 	sll	a1,a0,0x2
    117c:	30a50fff 	andi	a1,a1,0xfff
    1180:	03197021 	addu	t6,t8,t9
    1184:	ac6e0004 	sw	t6,4(v1)
    1188:	8e030138 	lw	v1,312(s0)
    118c:	0084c023 	subu	t8,a0,a0
    1190:	27190027 	addiu	t9,t8,39
    1194:	246f0008 	addiu	t7,v1,8
    1198:	ae0f0138 	sw	t7,312(s0)
    119c:	001970c3 	sra	t6,t9,0x3
    11a0:	31cf01ff 	andi	t7,t6,0x1ff
    11a4:	000fc240 	sll	t8,t7,0x9
    11a8:	031f3025 	or	a2,t8,ra
    11ac:	ac660000 	sw	a2,0(v1)
    11b0:	ac6c0004 	sw	t4,4(v1)
    11b4:	8e030138 	lw	v1,312(s0)
    11b8:	30e70fff 	andi	a3,a3,0xfff
    11bc:	00073b00 	sll	a3,a3,0xc
    11c0:	24790008 	addiu	t9,v1,8
    11c4:	ae190138 	sw	t9,312(s0)
    11c8:	ac600004 	sw	zero,4(v1)
    11cc:	ac750000 	sw	s5,0(v1)
    11d0:	8e030138 	lw	v1,312(s0)
    11d4:	00052b00 	sll	a1,a1,0xc
    11d8:	3c01f400 	lui	at,0xf400
    11dc:	246e0008 	addiu	t6,v1,8
    11e0:	ae0e0138 	sw	t6,312(s0)
    11e4:	00a17825 	or	t7,a1,at
    11e8:	00ecc025 	or	t8,a3,t4
    11ec:	03114825 	or	t1,t8,s1
    11f0:	01f34025 	or	t0,t7,s3
    11f4:	ac680000 	sw	t0,0(v1)
    11f8:	ac690004 	sw	t1,4(v1)
    11fc:	8e030138 	lw	v1,312(s0)
    1200:	3c01f200 	lui	at,0xf200
    1204:	00a1c025 	or	t8,a1,at
    1208:	24790008 	addiu	t9,v1,8
    120c:	ae190138 	sw	t9,312(s0)
    1210:	ac600004 	sw	zero,4(v1)
    1214:	ac760000 	sw	s6,0(v1)
    1218:	8e030138 	lw	v1,312(s0)
    121c:	00f1c825 	or	t9,a3,s1
    1220:	03135025 	or	t2,t8,s3
    1224:	246e0008 	addiu	t6,v1,8
    1228:	ae0e0138 	sw	t6,312(s0)
    122c:	ac600004 	sw	zero,4(v1)
    1230:	ac660000 	sw	a2,0(v1)
    1234:	8e030138 	lw	v1,312(s0)
    1238:	34c40080 	ori	a0,a2,0x80
    123c:	25ad0001 	addiu	t5,t5,1
    1240:	246f0008 	addiu	t7,v1,8
    1244:	ae0f0138 	sw	t7,312(s0)
    1248:	ac790004 	sw	t9,4(v1)
    124c:	ac6a0000 	sw	t2,0(v1)
    1250:	8e030138 	lw	v1,312(s0)
    1254:	000d6c00 	sll	t5,t5,0x10
    1258:	000d6c03 	sra	t5,t5,0x10
    125c:	246e0008 	addiu	t6,v1,8
    1260:	ae0e0138 	sw	t6,312(s0)
    1264:	ac740000 	sw	s4,0(v1)
    1268:	8e18012c 	lw	t8,300(s0)
    126c:	8fcf0000 	lw	t7,0(s8)
    1270:	29a10004 	slti	at,t5,4
    1274:	01f8c821 	addu	t9,t7,t8
    1278:	ac790004 	sw	t9,4(v1)
    127c:	8e030138 	lw	v1,312(s0)
    1280:	246e0008 	addiu	t6,v1,8
    1284:	ae0e0138 	sw	t6,312(s0)
    1288:	ac6c0004 	sw	t4,4(v1)
    128c:	ac640000 	sw	a0,0(v1)
    1290:	8e030138 	lw	v1,312(s0)
    1294:	246f0008 	addiu	t7,v1,8
    1298:	ae0f0138 	sw	t7,312(s0)
    129c:	ac600004 	sw	zero,4(v1)
    12a0:	ac750000 	sw	s5,0(v1)
    12a4:	8e030138 	lw	v1,312(s0)
    12a8:	24780008 	addiu	t8,v1,8
    12ac:	ae180138 	sw	t8,312(s0)
    12b0:	ac690004 	sw	t1,4(v1)
    12b4:	ac680000 	sw	t0,0(v1)
    12b8:	8e030138 	lw	v1,312(s0)
    12bc:	00f7c025 	or	t8,a3,s7
    12c0:	24790008 	addiu	t9,v1,8
    12c4:	ae190138 	sw	t9,312(s0)
    12c8:	ac600004 	sw	zero,4(v1)
    12cc:	ac760000 	sw	s6,0(v1)
    12d0:	8e030138 	lw	v1,312(s0)
    12d4:	0311c825 	or	t9,t8,s1
    12d8:	3c180000 	lui	t8,0x0
    12dc:	246e0008 	addiu	t6,v1,8
    12e0:	ae0e0138 	sw	t6,312(s0)
    12e4:	ac770004 	sw	s7,4(v1)
    12e8:	ac640000 	sw	a0,0(v1)
    12ec:	8e030138 	lw	v1,312(s0)
    12f0:	27180000 	addiu	t8,t8,0
    12f4:	000b2400 	sll	a0,t3,0x10
    12f8:	246f0008 	addiu	t7,v1,8
    12fc:	ae0f0138 	sw	t7,312(s0)
    1300:	ac790004 	sw	t9,4(v1)
    1304:	ac6a0000 	sw	t2,0(v1)
    1308:	8e030138 	lw	v1,312(s0)
    130c:	00127840 	sll	t7,s2,0x1
    1310:	01f81021 	addu	v0,t7,t8
    1314:	246e0008 	addiu	t6,v1,8
    1318:	ae0e0138 	sw	t6,312(s0)
    131c:	84590004 	lh	t9,4(v0)
    1320:	84580000 	lh	t8,0(v0)
    1324:	26520004 	addiu	s2,s2,4
    1328:	00197040 	sll	t6,t9,0x1
    132c:	31cf00ff 	andi	t7,t6,0xff
    1330:	0018c840 	sll	t9,t8,0x1
    1334:	332e00ff 	andi	t6,t9,0xff
    1338:	000ec400 	sll	t8,t6,0x10
    133c:	844e0002 	lh	t6,2(v0)
    1340:	01f8c825 	or	t9,t7,t8
    1344:	00129400 	sll	s2,s2,0x10
    1348:	000e7840 	sll	t7,t6,0x1
    134c:	31f800ff 	andi	t8,t7,0xff
    1350:	00187200 	sll	t6,t8,0x8
    1354:	032e7825 	or	t7,t9,t6
    1358:	01ecc025 	or	t8,t7,t4
    135c:	ac780000 	sw	t8,0(v1)
    1360:	84590006 	lh	t9,6(v0)
    1364:	84580000 	lh	t8,0(v0)
    1368:	00129403 	sra	s2,s2,0x10
    136c:	00197040 	sll	t6,t9,0x1
    1370:	31cf00ff 	andi	t7,t6,0xff
    1374:	0018c840 	sll	t9,t8,0x1
    1378:	332e00ff 	andi	t6,t9,0xff
    137c:	000ec400 	sll	t8,t6,0x10
    1380:	844e0004 	lh	t6,4(v0)
    1384:	01f8c825 	or	t9,t7,t8
    1388:	00042403 	sra	a0,a0,0x10
    138c:	000e7840 	sll	t7,t6,0x1
    1390:	31f800ff 	andi	t8,t7,0xff
    1394:	00187200 	sll	t6,t8,0x8
    1398:	032e7825 	or	t7,t9,t6
    139c:	1420ff6e 	bnez	at,1158 <L800AE520+0x7e8>
    13a0:	ac6f0004 	sw	t7,4(v1)
    13a4:	87a2031e 	lh	v0,798(sp)
    13a8:	87b80320 	lh	t8,800(sp)
    13ac:	24420001 	addiu	v0,v0,1
    13b0:	00021400 	sll	v0,v0,0x10
    13b4:	00021403 	sra	v0,v0,0x10
    13b8:	28410002 	slti	at,v0,2
    13bc:	2719ffe1 	addiu	t9,t8,-31
    13c0:	a7b90320 	sh	t9,800(sp)
    13c4:	1420ff5c 	bnez	at,1138 <L800AE520+0x7c8>
    13c8:	a7a2031e 	sh	v0,798(sp)
    13cc:	8e030138 	lw	v1,312(s0)
    13d0:	3c0fdf00 	lui	t7,0xdf00
    13d4:	246e0008 	addiu	t6,v1,8
    13d8:	ae0e0138 	sw	t6,312(s0)
    13dc:	ac600004 	sw	zero,4(v1)
    13e0:	ac6f0000 	sw	t7,0(v1)
    13e4:	8fbf002c 	lw	ra,44(sp)
    13e8:	8fbe0028 	lw	s8,40(sp)
    13ec:	8fb70024 	lw	s7,36(sp)
    13f0:	8fb60020 	lw	s6,32(sp)
    13f4:	8fb5001c 	lw	s5,28(sp)
    13f8:	8fb40018 	lw	s4,24(sp)
    13fc:	8fb30014 	lw	s3,20(sp)
    1400:	8fb20010 	lw	s2,16(sp)
    1404:	8fb1000c 	lw	s1,12(sp)
    1408:	8fb00008 	lw	s0,8(sp)
    140c:	8fa20340 	lw	v0,832(sp)
    1410:	03e00008 	jr	ra
    1414:	27bd0338 	addiu	sp,sp,824

00001418 <func_800AEFC8>:
    1418:	27bdffb8 	addiu	sp,sp,-72
    141c:	afa5004c 	sw	a1,76(sp)
    1420:	00052c00 	sll	a1,a1,0x10
    1424:	afb50040 	sw	s5,64(sp)
    1428:	24150002 	li	s5,2
    142c:	00052c03 	sra	a1,a1,0x10
    1430:	afb4003c 	sw	s4,60(sp)
    1434:	afb30038 	sw	s3,56(sp)
    1438:	0080a025 	move	s4,a0
    143c:	afbf0044 	sw	ra,68(sp)
    1440:	afb20034 	sw	s2,52(sp)
    1444:	afb10030 	sw	s1,48(sp)
    1448:	afb0002c 	sw	s0,44(sp)
    144c:	10b50005 	beq	a1,s5,1464 <func_800AEFC8+0x4c>
    1450:	00009825 	move	s3,zero
    1454:	28a10011 	slti	at,a1,17
    1458:	1420001c 	bnez	at,14cc <func_800AEFC8+0xb4>
    145c:	28a10019 	slti	at,a1,25
    1460:	1020001a 	beqz	at,14cc <func_800AEFC8+0xb4>
    1464:	3c100000 	lui	s0,0x0
    1468:	26100000 	addiu	s0,s0,0
    146c:	00009025 	move	s2,zero
    1470:	00008825 	move	s1,zero
    1474:	8e85013c 	lw	a1,316(s4)
    1478:	8e0e0004 	lw	t6,4(s0)
    147c:	8e0f0008 	lw	t7,8(s0)
    1480:	8e18000c 	lw	t8,12(s0)
    1484:	8e190010 	lw	t9,16(s0)
    1488:	afb20024 	sw	s2,36(sp)
    148c:	afb10020 	sw	s1,32(sp)
    1490:	02802025 	move	a0,s4
    1494:	02603025 	move	a2,s3
    1498:	8e070000 	lw	a3,0(s0)
    149c:	afae0010 	sw	t6,16(sp)
    14a0:	afaf0014 	sw	t7,20(sp)
    14a4:	afb80018 	sw	t8,24(sp)
    14a8:	0c000000 	jal	0 <func_800ADBB0>
    14ac:	afb9001c 	sw	t9,28(sp)
    14b0:	26310001 	addiu	s1,s1,1
    14b4:	26100014 	addiu	s0,s0,20
    14b8:	26520002 	addiu	s2,s2,2
    14bc:	1635ffed 	bne	s1,s5,1474 <func_800AEFC8+0x5c>
    14c0:	00409825 	move	s3,v0
    14c4:	10000038 	b	15a8 <func_800AEFC8+0x190>
    14c8:	8fbf0044 	lw	ra,68(sp)
    14cc:	86880140 	lh	t0,320(s4)
    14d0:	00009025 	move	s2,zero
    14d4:	00008825 	move	s1,zero
    14d8:	16a8001c 	bne	s5,t0,154c <func_800AEFC8+0x134>
    14dc:	3c100000 	lui	s0,0x0
    14e0:	3c100000 	lui	s0,0x0
    14e4:	26100000 	addiu	s0,s0,0
    14e8:	00009025 	move	s2,zero
    14ec:	00008825 	move	s1,zero
    14f0:	24150003 	li	s5,3
    14f4:	8e85013c 	lw	a1,316(s4)
    14f8:	8e090004 	lw	t1,4(s0)
    14fc:	8e0a0008 	lw	t2,8(s0)
    1500:	8e0b000c 	lw	t3,12(s0)
    1504:	8e0c0010 	lw	t4,16(s0)
    1508:	afb20024 	sw	s2,36(sp)
    150c:	afb10020 	sw	s1,32(sp)
    1510:	02802025 	move	a0,s4
    1514:	02603025 	move	a2,s3
    1518:	8e070000 	lw	a3,0(s0)
    151c:	afa90010 	sw	t1,16(sp)
    1520:	afaa0014 	sw	t2,20(sp)
    1524:	afab0018 	sw	t3,24(sp)
    1528:	0c000000 	jal	0 <func_800ADBB0>
    152c:	afac001c 	sw	t4,28(sp)
    1530:	26310001 	addiu	s1,s1,1
    1534:	26100014 	addiu	s0,s0,20
    1538:	26520002 	addiu	s2,s2,2
    153c:	1635ffed 	bne	s1,s5,14f4 <func_800AEFC8+0xdc>
    1540:	00409825 	move	s3,v0
    1544:	10000018 	b	15a8 <func_800AEFC8+0x190>
    1548:	8fbf0044 	lw	ra,68(sp)
    154c:	26100000 	addiu	s0,s0,0
    1550:	24150004 	li	s5,4
    1554:	8e85013c 	lw	a1,316(s4)
    1558:	8e0d0004 	lw	t5,4(s0)
    155c:	8e0e0008 	lw	t6,8(s0)
    1560:	8e0f000c 	lw	t7,12(s0)
    1564:	8e180010 	lw	t8,16(s0)
    1568:	afb20024 	sw	s2,36(sp)
    156c:	afb10020 	sw	s1,32(sp)
    1570:	02802025 	move	a0,s4
    1574:	02603025 	move	a2,s3
    1578:	8e070000 	lw	a3,0(s0)
    157c:	afad0010 	sw	t5,16(sp)
    1580:	afae0014 	sw	t6,20(sp)
    1584:	afaf0018 	sw	t7,24(sp)
    1588:	0c000000 	jal	0 <func_800ADBB0>
    158c:	afb8001c 	sw	t8,28(sp)
    1590:	26310001 	addiu	s1,s1,1
    1594:	26100014 	addiu	s0,s0,20
    1598:	26520002 	addiu	s2,s2,2
    159c:	1635ffed 	bne	s1,s5,1554 <func_800AEFC8+0x13c>
    15a0:	00409825 	move	s3,v0
    15a4:	8fbf0044 	lw	ra,68(sp)
    15a8:	8fb0002c 	lw	s0,44(sp)
    15ac:	8fb10030 	lw	s1,48(sp)
    15b0:	8fb20034 	lw	s2,52(sp)
    15b4:	8fb30038 	lw	s3,56(sp)
    15b8:	8fb4003c 	lw	s4,60(sp)
    15bc:	8fb50040 	lw	s5,64(sp)
    15c0:	03e00008 	jr	ra
    15c4:	27bd0048 	addiu	sp,sp,72

000015c8 <func_800AF178>:
    15c8:	27bdffb8 	addiu	sp,sp,-72
    15cc:	afb40040 	sw	s4,64(sp)
    15d0:	afb3003c 	sw	s3,60(sp)
    15d4:	afb20038 	sw	s2,56(sp)
    15d8:	afb10034 	sw	s1,52(sp)
    15dc:	00809825 	move	s3,a0
    15e0:	00a0a025 	move	s4,a1
    15e4:	afbf0044 	sw	ra,68(sp)
    15e8:	afb00030 	sw	s0,48(sp)
    15ec:	00009025 	move	s2,zero
    15f0:	18a00015 	blez	a1,1648 <func_800AF178+0x80>
    15f4:	00008825 	move	s1,zero
    15f8:	3c100000 	lui	s0,0x0
    15fc:	26100000 	addiu	s0,s0,0
    1600:	8e65013c 	lw	a1,316(s3)
    1604:	8e0e0004 	lw	t6,4(s0)
    1608:	8e0f0008 	lw	t7,8(s0)
    160c:	8e18000c 	lw	t8,12(s0)
    1610:	8e190010 	lw	t9,16(s0)
    1614:	afb10020 	sw	s1,32(sp)
    1618:	02602025 	move	a0,s3
    161c:	02403025 	move	a2,s2
    1620:	8e070000 	lw	a3,0(s0)
    1624:	afae0010 	sw	t6,16(sp)
    1628:	afaf0014 	sw	t7,20(sp)
    162c:	afb80018 	sw	t8,24(sp)
    1630:	0c000000 	jal	0 <func_800ADBB0>
    1634:	afb9001c 	sw	t9,28(sp)
    1638:	26310001 	addiu	s1,s1,1
    163c:	26100014 	addiu	s0,s0,20
    1640:	1634ffef 	bne	s1,s4,1600 <func_800AF178+0x38>
    1644:	00409025 	move	s2,v0
    1648:	8fbf0044 	lw	ra,68(sp)
    164c:	8fb00030 	lw	s0,48(sp)
    1650:	8fb10034 	lw	s1,52(sp)
    1654:	8fb20038 	lw	s2,56(sp)
    1658:	8fb3003c 	lw	s3,60(sp)
    165c:	8fb40040 	lw	s4,64(sp)
    1660:	03e00008 	jr	ra
    1664:	27bd0048 	addiu	sp,sp,72

00001668 <func_800AF218>:
    1668:	27bdffb8 	addiu	sp,sp,-72
    166c:	afa60050 	sw	a2,80(sp)
    1670:	00063400 	sll	a2,a2,0x10
    1674:	00063403 	sra	a2,a2,0x10
    1678:	24ceffff 	addiu	t6,a2,-1
    167c:	afb00020 	sw	s0,32(sp)
    1680:	2dc10027 	sltiu	at,t6,39
    1684:	00a08025 	move	s0,a1
    1688:	afbf0024 	sw	ra,36(sp)
    168c:	102006ff 	beqz	at,328c <L800B0E3C>
    1690:	afa40048 	sw	a0,72(sp)
    1694:	000e7080 	sll	t6,t6,0x2
    1698:	3c010000 	lui	at,0x0
    169c:	002e0821 	addu	at,at,t6
    16a0:	8c2e0000 	lw	t6,0(at)
    16a4:	01c00008 	jr	t6
    16a8:	00000000 	nop

000016ac <L800AF25C>:
    16ac:	3c080000 	lui	t0,0x0
    16b0:	25080000 	addiu	t0,t0,0
    16b4:	910f13c3 	lbu	t7,5059(t0)
    16b8:	3c090000 	lui	t1,0x0
    16bc:	00001825 	move	v1,zero
    16c0:	11e0000c 	beqz	t7,16f4 <L800AF25C+0x48>
    16c4:	25290000 	addiu	t1,t1,0
    16c8:	8d181360 	lw	t8,4960(t0)
    16cc:	3c020000 	lui	v0,0x0
    16d0:	2b010004 	slti	at,t8,4
    16d4:	50200008 	beqzl	at,16f8 <L800AF25C+0x4c>
    16d8:	0003c8c0 	sll	t9,v1,0x3
    16dc:	90420000 	lbu	v0,0(v0)
    16e0:	18400004 	blez	v0,16f4 <L800AF25C+0x48>
    16e4:	28410006 	slti	at,v0,6
    16e8:	50200003 	beqzl	at,16f8 <L800AF25C+0x4c>
    16ec:	0003c8c0 	sll	t9,v1,0x3
    16f0:	24030001 	li	v1,1
    16f4:	0003c8c0 	sll	t9,v1,0x3
    16f8:	0323c821 	addu	t9,t9,v1
    16fc:	0019c8c0 	sll	t9,t9,0x3
    1700:	03292821 	addu	a1,t9,t1
    1704:	00001025 	move	v0,zero
    1708:	9504141a 	lhu	a0,5146(t0)
    170c:	3406ffff 	li	a2,0xffff
    1710:	000250c0 	sll	t2,v0,0x3
    1714:	00aa3821 	addu	a3,a1,t2
    1718:	94eb0000 	lhu	t3,0(a3)
    171c:	24420001 	addiu	v0,v0,1
    1720:	00021400 	sll	v0,v0,0x10
    1724:	008b082a 	slt	at,a0,t3
    1728:	14200047 	bnez	at,1848 <L800AF25C+0x19c>
    172c:	00021403 	sra	v0,v0,0x10
    1730:	94e30002 	lhu	v1,2(a3)
    1734:	0083082a 	slt	at,a0,v1
    1738:	54200004 	bnezl	at,174c <L800AF25C+0xa0>
    173c:	90ed0005 	lbu	t5,5(a3)
    1740:	54c30042 	bnel	a2,v1,184c <L800AF25C+0x1a0>
    1744:	28410009 	slti	at,v0,9
    1748:	90ed0005 	lbu	t5,5(a3)
    174c:	8fae0048 	lw	t6,72(sp)
    1750:	3c010001 	lui	at,0x1
    1754:	a3ad0041 	sb	t5,65(sp)
    1758:	002e0821 	addu	at,at,t6
    175c:	a02d0a34 	sb	t5,2612(at)
    1760:	8fb90048 	lw	t9,72(sp)
    1764:	90f80006 	lbu	t8,6(a3)
    1768:	3c010001 	lui	at,0x1
    176c:	00390821 	addu	at,at,t9
    1770:	a3b80040 	sb	t8,64(sp)
    1774:	a0380a35 	sb	t8,2613(at)
    1778:	90e90004 	lbu	t1,4(a3)
    177c:	8fad0048 	lw	t5,72(sp)
    1780:	3c010001 	lui	at,0x1
    1784:	1120002e 	beqz	t1,1840 <L800AF25C+0x194>
    1788:	002d0821 	addu	at,at,t5
    178c:	9506141a 	lhu	a2,5146(t0)
    1790:	94e40002 	lhu	a0,2(a3)
    1794:	0c000000 	jal	0 <func_800ADBB0>
    1798:	94e50000 	lhu	a1,0(a3)
    179c:	3c01437f 	lui	at,0x437f
    17a0:	44812000 	mtc1	at,$f4
    17a4:	240b0001 	li	t3,1
    17a8:	3c014f00 	lui	at,0x4f00
    17ac:	46040182 	mul.s	$f6,$f0,$f4
    17b0:	8fac0048 	lw	t4,72(sp)
    17b4:	444af800 	cfc1	t2,$31
    17b8:	44cbf800 	ctc1	t3,$31
    17bc:	00000000 	nop
    17c0:	46003224 	cvt.w.s	$f8,$f6
    17c4:	444bf800 	cfc1	t3,$31
    17c8:	00000000 	nop
    17cc:	316b0078 	andi	t3,t3,0x78
    17d0:	51600013 	beqzl	t3,1820 <L800AF25C+0x174>
    17d4:	440b4000 	mfc1	t3,$f8
    17d8:	44814000 	mtc1	at,$f8
    17dc:	240b0001 	li	t3,1
    17e0:	46083201 	sub.s	$f8,$f6,$f8
    17e4:	44cbf800 	ctc1	t3,$31
    17e8:	00000000 	nop
    17ec:	46004224 	cvt.w.s	$f8,$f8
    17f0:	444bf800 	cfc1	t3,$31
    17f4:	00000000 	nop
    17f8:	316b0078 	andi	t3,t3,0x78
    17fc:	15600005 	bnez	t3,1814 <L800AF25C+0x168>
    1800:	00000000 	nop
    1804:	440b4000 	mfc1	t3,$f8
    1808:	3c018000 	lui	at,0x8000
    180c:	10000007 	b	182c <L800AF25C+0x180>
    1810:	01615825 	or	t3,t3,at
    1814:	10000005 	b	182c <L800AF25C+0x180>
    1818:	240bffff 	li	t3,-1
    181c:	440b4000 	mfc1	t3,$f8
    1820:	00000000 	nop
    1824:	0560fffb 	bltz	t3,1814 <L800AF25C+0x168>
    1828:	00000000 	nop
    182c:	3c010001 	lui	at,0x1
    1830:	002c0821 	addu	at,at,t4
    1834:	44caf800 	ctc1	t2,$31
    1838:	10000006 	b	1854 <L800AF25C+0x1a8>
    183c:	a02b0a37 	sb	t3,2615(at)
    1840:	10000004 	b	1854 <L800AF25C+0x1a8>
    1844:	a0200a37 	sb	zero,2615(at)
    1848:	28410009 	slti	at,v0,9
    184c:	5420ffb1 	bnezl	at,1714 <L800AF25C+0x68>
    1850:	000250c0 	sll	t2,v0,0x3
    1854:	93ae0041 	lbu	t6,65(sp)
    1858:	3c180000 	lui	t8,0x0
    185c:	27180000 	addiu	t8,t8,0
    1860:	000e7900 	sll	t7,t6,0x4
    1864:	01f81021 	addu	v0,t7,t8
    1868:	8c590004 	lw	t9,4(v0)
    186c:	8c490000 	lw	t1,0(v0)
    1870:	3c060000 	lui	a2,0x0
    1874:	24c60000 	addiu	a2,a2,0
    1878:	03292823 	subu	a1,t9,t1
    187c:	afa50044 	sw	a1,68(sp)
    1880:	afa20030 	sw	v0,48(sp)
    1884:	8fa40048 	lw	a0,72(sp)
    1888:	0c000000 	jal	0 <func_800ADBB0>
    188c:	2407041e 	li	a3,1054
    1890:	14400007 	bnez	v0,18b0 <L800AF25C+0x204>
    1894:	ae020128 	sw	v0,296(s0)
    1898:	3c040000 	lui	a0,0x0
    189c:	3c050000 	lui	a1,0x0
    18a0:	24a50000 	addiu	a1,a1,0
    18a4:	24840000 	addiu	a0,a0,0
    18a8:	0c000000 	jal	0 <func_800ADBB0>
    18ac:	2406041f 	li	a2,1055
    18b0:	8faa0030 	lw	t2,48(sp)
    18b4:	8e040128 	lw	a0,296(s0)
    18b8:	3c070000 	lui	a3,0x0
    18bc:	240b0422 	li	t3,1058
    18c0:	8d450000 	lw	a1,0(t2)
    18c4:	afab0010 	sw	t3,16(sp)
    18c8:	24e70000 	addiu	a3,a3,0
    18cc:	0c000000 	jal	0 <func_800ADBB0>
    18d0:	8fa60044 	lw	a2,68(sp)
    18d4:	93ac0040 	lbu	t4,64(sp)
    18d8:	3c0e0000 	lui	t6,0x0
    18dc:	25ce0000 	addiu	t6,t6,0
    18e0:	000c6900 	sll	t5,t4,0x4
    18e4:	01ae1821 	addu	v1,t5,t6
    18e8:	8c6f0004 	lw	t7,4(v1)
    18ec:	8c780000 	lw	t8,0(v1)
    18f0:	3c060000 	lui	a2,0x0
    18f4:	24c60000 	addiu	a2,a2,0
    18f8:	01f82823 	subu	a1,t7,t8
    18fc:	afa50044 	sw	a1,68(sp)
    1900:	afa3002c 	sw	v1,44(sp)
    1904:	8fa40048 	lw	a0,72(sp)
    1908:	0c000000 	jal	0 <func_800ADBB0>
    190c:	24070424 	li	a3,1060
    1910:	14400007 	bnez	v0,1930 <L800AF25C+0x284>
    1914:	ae02012c 	sw	v0,300(s0)
    1918:	3c040000 	lui	a0,0x0
    191c:	3c050000 	lui	a1,0x0
    1920:	24a50000 	addiu	a1,a1,0
    1924:	24840000 	addiu	a0,a0,0
    1928:	0c000000 	jal	0 <func_800ADBB0>
    192c:	24060425 	li	a2,1061
    1930:	8fb9002c 	lw	t9,44(sp)
    1934:	8e04012c 	lw	a0,300(s0)
    1938:	3c070000 	lui	a3,0x0
    193c:	24090428 	li	t1,1064
    1940:	8f250000 	lw	a1,0(t9)
    1944:	afa90010 	sw	t1,16(sp)
    1948:	24e70000 	addiu	a3,a3,0
    194c:	0c000000 	jal	0 <func_800ADBB0>
    1950:	8fa60044 	lw	a2,68(sp)
    1954:	93a30041 	lbu	v1,65(sp)
    1958:	8fad0030 	lw	t5,48(sp)
    195c:	8fa40048 	lw	a0,72(sp)
    1960:	306b0004 	andi	t3,v1,0x4
    1964:	000b6083 	sra	t4,t3,0x2
    1968:	306a0001 	andi	t2,v1,0x1
    196c:	114c0029 	beq	t2,t4,1a14 <L800AF25C+0x368>
    1970:	3c060000 	lui	a2,0x0
    1974:	8fa30030 	lw	v1,48(sp)
    1978:	3c060000 	lui	a2,0x0
    197c:	24c60000 	addiu	a2,a2,0
    1980:	8c6e000c 	lw	t6,12(v1)
    1984:	8c6f0008 	lw	t7,8(v1)
    1988:	8fa40048 	lw	a0,72(sp)
    198c:	24070430 	li	a3,1072
    1990:	01cf1023 	subu	v0,t6,t7
    1994:	00022840 	sll	a1,v0,0x1
    1998:	0c000000 	jal	0 <func_800ADBB0>
    199c:	afa20044 	sw	v0,68(sp)
    19a0:	14400007 	bnez	v0,19c0 <L800AF25C+0x314>
    19a4:	ae020130 	sw	v0,304(s0)
    19a8:	3c040000 	lui	a0,0x0
    19ac:	3c050000 	lui	a1,0x0
    19b0:	24a50000 	addiu	a1,a1,0
    19b4:	24840000 	addiu	a0,a0,0
    19b8:	0c000000 	jal	0 <func_800ADBB0>
    19bc:	24060431 	li	a2,1073
    19c0:	8fb80030 	lw	t8,48(sp)
    19c4:	8e040130 	lw	a0,304(s0)
    19c8:	3c070000 	lui	a3,0x0
    19cc:	24190433 	li	t9,1075
    19d0:	8f050008 	lw	a1,8(t8)
    19d4:	afb90010 	sw	t9,16(sp)
    19d8:	24e70000 	addiu	a3,a3,0
    19dc:	0c000000 	jal	0 <func_800ADBB0>
    19e0:	8fa60044 	lw	a2,68(sp)
    19e4:	8faa002c 	lw	t2,44(sp)
    19e8:	8e090130 	lw	t1,304(s0)
    19ec:	8fa60044 	lw	a2,68(sp)
    19f0:	3c070000 	lui	a3,0x0
    19f4:	240c0435 	li	t4,1077
    19f8:	8d450008 	lw	a1,8(t2)
    19fc:	afac0010 	sw	t4,16(sp)
    1a00:	24e70000 	addiu	a3,a3,0
    1a04:	0c000000 	jal	0 <func_800ADBB0>
    1a08:	01262021 	addu	a0,t1,a2
    1a0c:	10000620 	b	3290 <L800B0E3C+0x4>
    1a10:	8fbf0024 	lw	ra,36(sp)
    1a14:	8dae000c 	lw	t6,12(t5)
    1a18:	8daf0008 	lw	t7,8(t5)
    1a1c:	24c60000 	addiu	a2,a2,0
    1a20:	2407043d 	li	a3,1085
    1a24:	01cf1023 	subu	v0,t6,t7
    1a28:	00022840 	sll	a1,v0,0x1
    1a2c:	0c000000 	jal	0 <func_800ADBB0>
    1a30:	afa20044 	sw	v0,68(sp)
    1a34:	14400007 	bnez	v0,1a54 <L800AF25C+0x3a8>
    1a38:	ae020130 	sw	v0,304(s0)
    1a3c:	3c040000 	lui	a0,0x0
    1a40:	3c050000 	lui	a1,0x0
    1a44:	24a50000 	addiu	a1,a1,0
    1a48:	24840000 	addiu	a0,a0,0
    1a4c:	0c000000 	jal	0 <func_800ADBB0>
    1a50:	2406043e 	li	a2,1086
    1a54:	8fb8002c 	lw	t8,44(sp)
    1a58:	8e040130 	lw	a0,304(s0)
    1a5c:	3c070000 	lui	a3,0x0
    1a60:	24190440 	li	t9,1088
    1a64:	8f050008 	lw	a1,8(t8)
    1a68:	afb90010 	sw	t9,16(sp)
    1a6c:	24e70000 	addiu	a3,a3,0
    1a70:	0c000000 	jal	0 <func_800ADBB0>
    1a74:	8fa60044 	lw	a2,68(sp)
    1a78:	8fab0030 	lw	t3,48(sp)
    1a7c:	8e090130 	lw	t1,304(s0)
    1a80:	8fa60044 	lw	a2,68(sp)
    1a84:	3c070000 	lui	a3,0x0
    1a88:	240c0442 	li	t4,1090
    1a8c:	8d650008 	lw	a1,8(t3)
    1a90:	afac0010 	sw	t4,16(sp)
    1a94:	24e70000 	addiu	a3,a3,0
    1a98:	0c000000 	jal	0 <func_800ADBB0>
    1a9c:	01262021 	addu	a0,t1,a2
    1aa0:	100005fb 	b	3290 <L800B0E3C+0x4>
    1aa4:	8fbf0024 	lw	ra,36(sp)

00001aa8 <L800AF658>:
    1aa8:	240d0001 	li	t5,1
    1aac:	3c020000 	lui	v0,0x0
    1ab0:	3c0e0000 	lui	t6,0x0
    1ab4:	a60d0140 	sh	t5,320(s0)
    1ab8:	25ce0000 	addiu	t6,t6,0
    1abc:	24420000 	addiu	v0,v0,0
    1ac0:	01c22823 	subu	a1,t6,v0
    1ac4:	3c060000 	lui	a2,0x0
    1ac8:	24c60000 	addiu	a2,a2,0
    1acc:	afa5002c 	sw	a1,44(sp)
    1ad0:	afa20030 	sw	v0,48(sp)
    1ad4:	8fa40048 	lw	a0,72(sp)
    1ad8:	0c000000 	jal	0 <func_800ADBB0>
    1adc:	24070467 	li	a3,1127
    1ae0:	14400007 	bnez	v0,1b00 <L800AF658+0x58>
    1ae4:	ae020128 	sw	v0,296(s0)
    1ae8:	3c040000 	lui	a0,0x0
    1aec:	3c050000 	lui	a1,0x0
    1af0:	24a50000 	addiu	a1,a1,0
    1af4:	24840000 	addiu	a0,a0,0
    1af8:	0c000000 	jal	0 <func_800ADBB0>
    1afc:	24060468 	li	a2,1128
    1b00:	8e040128 	lw	a0,296(s0)
    1b04:	3c070000 	lui	a3,0x0
    1b08:	240f0469 	li	t7,1129
    1b0c:	afaf0010 	sw	t7,16(sp)
    1b10:	24e70000 	addiu	a3,a3,0
    1b14:	8fa50030 	lw	a1,48(sp)
    1b18:	0c000000 	jal	0 <func_800ADBB0>
    1b1c:	8fa6002c 	lw	a2,44(sp)
    1b20:	3c030000 	lui	v1,0x0
    1b24:	3c180000 	lui	t8,0x0
    1b28:	27180000 	addiu	t8,t8,0
    1b2c:	24630000 	addiu	v1,v1,0
    1b30:	03032823 	subu	a1,t8,v1
    1b34:	3c060000 	lui	a2,0x0
    1b38:	24c60000 	addiu	a2,a2,0
    1b3c:	afa5002c 	sw	a1,44(sp)
    1b40:	afa30030 	sw	v1,48(sp)
    1b44:	8fa40048 	lw	a0,72(sp)
    1b48:	0c000000 	jal	0 <func_800ADBB0>
    1b4c:	2407046c 	li	a3,1132
    1b50:	14400007 	bnez	v0,1b70 <L800AF658+0xc8>
    1b54:	ae020130 	sw	v0,304(s0)
    1b58:	3c040000 	lui	a0,0x0
    1b5c:	3c050000 	lui	a1,0x0
    1b60:	24a50000 	addiu	a1,a1,0
    1b64:	24840000 	addiu	a0,a0,0
    1b68:	0c000000 	jal	0 <func_800ADBB0>
    1b6c:	2406046d 	li	a2,1133
    1b70:	8e040130 	lw	a0,304(s0)
    1b74:	3c070000 	lui	a3,0x0
    1b78:	2419046e 	li	t9,1134
    1b7c:	afb90010 	sw	t9,16(sp)
    1b80:	24e70000 	addiu	a3,a3,0
    1b84:	8fa50030 	lw	a1,48(sp)
    1b88:	0c000000 	jal	0 <func_800ADBB0>
    1b8c:	8fa6002c 	lw	a2,44(sp)
    1b90:	3c010000 	lui	at,0x0
    1b94:	c42a0000 	lwc1	$f10,0(at)
    1b98:	100005bc 	b	328c <L800B0E3C>
    1b9c:	e60a0148 	swc1	$f10,328(s0)

00001ba0 <L800AF750>:
    1ba0:	3c020000 	lui	v0,0x0
    1ba4:	3c090000 	lui	t1,0x0
    1ba8:	25290000 	addiu	t1,t1,0
    1bac:	24420000 	addiu	v0,v0,0
    1bb0:	01222823 	subu	a1,t1,v0
    1bb4:	3c060000 	lui	a2,0x0
    1bb8:	24c60000 	addiu	a2,a2,0
    1bbc:	afa5002c 	sw	a1,44(sp)
    1bc0:	afa20030 	sw	v0,48(sp)
    1bc4:	8fa40048 	lw	a0,72(sp)
    1bc8:	0c000000 	jal	0 <func_800ADBB0>
    1bcc:	24070483 	li	a3,1155
    1bd0:	14400007 	bnez	v0,1bf0 <L800AF750+0x50>
    1bd4:	ae020128 	sw	v0,296(s0)
    1bd8:	3c040000 	lui	a0,0x0
    1bdc:	3c050000 	lui	a1,0x0
    1be0:	24a50000 	addiu	a1,a1,0
    1be4:	24840000 	addiu	a0,a0,0
    1be8:	0c000000 	jal	0 <func_800ADBB0>
    1bec:	24060484 	li	a2,1156
    1bf0:	8e040128 	lw	a0,296(s0)
    1bf4:	3c070000 	lui	a3,0x0
    1bf8:	240b0487 	li	t3,1159
    1bfc:	afab0010 	sw	t3,16(sp)
    1c00:	24e70000 	addiu	a3,a3,0
    1c04:	8fa50030 	lw	a1,48(sp)
    1c08:	0c000000 	jal	0 <func_800ADBB0>
    1c0c:	8fa6002c 	lw	a2,44(sp)
    1c10:	3c060000 	lui	a2,0x0
    1c14:	24c60000 	addiu	a2,a2,0
    1c18:	8fa40048 	lw	a0,72(sp)
    1c1c:	8fa5002c 	lw	a1,44(sp)
    1c20:	0c000000 	jal	0 <func_800ADBB0>
    1c24:	2407048a 	li	a3,1162
    1c28:	14400007 	bnez	v0,1c48 <L800AF750+0xa8>
    1c2c:	ae02012c 	sw	v0,300(s0)
    1c30:	3c040000 	lui	a0,0x0
    1c34:	3c050000 	lui	a1,0x0
    1c38:	24a50000 	addiu	a1,a1,0
    1c3c:	24840000 	addiu	a0,a0,0
    1c40:	0c000000 	jal	0 <func_800ADBB0>
    1c44:	2406048b 	li	a2,1163
    1c48:	8e04012c 	lw	a0,300(s0)
    1c4c:	3c070000 	lui	a3,0x0
    1c50:	240a048e 	li	t2,1166
    1c54:	afaa0010 	sw	t2,16(sp)
    1c58:	24e70000 	addiu	a3,a3,0
    1c5c:	8fa50030 	lw	a1,48(sp)
    1c60:	0c000000 	jal	0 <func_800ADBB0>
    1c64:	8fa6002c 	lw	a2,44(sp)
    1c68:	3c030000 	lui	v1,0x0
    1c6c:	3c0c0000 	lui	t4,0x0
    1c70:	258c0000 	addiu	t4,t4,0
    1c74:	24630000 	addiu	v1,v1,0
    1c78:	01834023 	subu	t0,t4,v1
    1c7c:	3c060000 	lui	a2,0x0
    1c80:	24c60000 	addiu	a2,a2,0
    1c84:	00082840 	sll	a1,t0,0x1
    1c88:	afa8002c 	sw	t0,44(sp)
    1c8c:	afa30030 	sw	v1,48(sp)
    1c90:	8fa40048 	lw	a0,72(sp)
    1c94:	0c000000 	jal	0 <func_800ADBB0>
    1c98:	24070492 	li	a3,1170
    1c9c:	14400007 	bnez	v0,1cbc <L800AF750+0x11c>
    1ca0:	ae020130 	sw	v0,304(s0)
    1ca4:	3c040000 	lui	a0,0x0
    1ca8:	3c050000 	lui	a1,0x0
    1cac:	24a50000 	addiu	a1,a1,0
    1cb0:	24840000 	addiu	a0,a0,0
    1cb4:	0c000000 	jal	0 <func_800ADBB0>
    1cb8:	24060493 	li	a2,1171
    1cbc:	8e040130 	lw	a0,304(s0)
    1cc0:	3c070000 	lui	a3,0x0
    1cc4:	240d0495 	li	t5,1173
    1cc8:	afad0010 	sw	t5,16(sp)
    1ccc:	24e70000 	addiu	a3,a3,0
    1cd0:	8fa50030 	lw	a1,48(sp)
    1cd4:	0c000000 	jal	0 <func_800ADBB0>
    1cd8:	8fa6002c 	lw	a2,44(sp)
    1cdc:	8e0e0130 	lw	t6,304(s0)
    1ce0:	8fa6002c 	lw	a2,44(sp)
    1ce4:	3c070000 	lui	a3,0x0
    1ce8:	24180497 	li	t8,1175
    1cec:	afb80010 	sw	t8,16(sp)
    1cf0:	24e70000 	addiu	a3,a3,0
    1cf4:	8fa50030 	lw	a1,48(sp)
    1cf8:	0c000000 	jal	0 <func_800ADBB0>
    1cfc:	01c62021 	addu	a0,t6,a2
    1d00:	10000563 	b	3290 <L800B0E3C+0x4>
    1d04:	8fbf0024 	lw	ra,36(sp)

00001d08 <L800AF8B8>:
    1d08:	24190001 	li	t9,1
    1d0c:	3c020000 	lui	v0,0x0
    1d10:	3c090000 	lui	t1,0x0
    1d14:	a6190140 	sh	t9,320(s0)
    1d18:	25290000 	addiu	t1,t1,0
    1d1c:	24420000 	addiu	v0,v0,0
    1d20:	01222823 	subu	a1,t1,v0
    1d24:	3c060000 	lui	a2,0x0
    1d28:	24c60000 	addiu	a2,a2,0
    1d2c:	afa5002c 	sw	a1,44(sp)
    1d30:	afa20030 	sw	v0,48(sp)
    1d34:	8fa40048 	lw	a0,72(sp)
    1d38:	0c000000 	jal	0 <func_800ADBB0>
    1d3c:	2407049e 	li	a3,1182
    1d40:	14400007 	bnez	v0,1d60 <L800AF8B8+0x58>
    1d44:	ae020128 	sw	v0,296(s0)
    1d48:	3c040000 	lui	a0,0x0
    1d4c:	3c050000 	lui	a1,0x0
    1d50:	24a50000 	addiu	a1,a1,0
    1d54:	24840000 	addiu	a0,a0,0
    1d58:	0c000000 	jal	0 <func_800ADBB0>
    1d5c:	2406049f 	li	a2,1183
    1d60:	8e040128 	lw	a0,296(s0)
    1d64:	3c070000 	lui	a3,0x0
    1d68:	240b04a0 	li	t3,1184
    1d6c:	afab0010 	sw	t3,16(sp)
    1d70:	24e70000 	addiu	a3,a3,0
    1d74:	8fa50030 	lw	a1,48(sp)
    1d78:	0c000000 	jal	0 <func_800ADBB0>
    1d7c:	8fa6002c 	lw	a2,44(sp)
    1d80:	3c030000 	lui	v1,0x0
    1d84:	3c0a0000 	lui	t2,0x0
    1d88:	254a0000 	addiu	t2,t2,0
    1d8c:	24630000 	addiu	v1,v1,0
    1d90:	01432823 	subu	a1,t2,v1
    1d94:	3c040000 	lui	a0,0x0
    1d98:	24840000 	addiu	a0,a0,0
    1d9c:	afa5002c 	sw	a1,44(sp)
    1da0:	0c000000 	jal	0 <func_800ADBB0>
    1da4:	afa30030 	sw	v1,48(sp)
    1da8:	3c060000 	lui	a2,0x0
    1dac:	24c60000 	addiu	a2,a2,0
    1db0:	8fa40048 	lw	a0,72(sp)
    1db4:	8fa5002c 	lw	a1,44(sp)
    1db8:	0c000000 	jal	0 <func_800ADBB0>
    1dbc:	240704a4 	li	a3,1188
    1dc0:	14400007 	bnez	v0,1de0 <L800AF8B8+0xd8>
    1dc4:	ae020130 	sw	v0,304(s0)
    1dc8:	3c040000 	lui	a0,0x0
    1dcc:	3c050000 	lui	a1,0x0
    1dd0:	24a50000 	addiu	a1,a1,0
    1dd4:	24840000 	addiu	a0,a0,0
    1dd8:	0c000000 	jal	0 <func_800ADBB0>
    1ddc:	240604a5 	li	a2,1189
    1de0:	8e040130 	lw	a0,304(s0)
    1de4:	3c070000 	lui	a3,0x0
    1de8:	240c04a6 	li	t4,1190
    1dec:	afac0010 	sw	t4,16(sp)
    1df0:	24e70000 	addiu	a3,a3,0
    1df4:	8fa50030 	lw	a1,48(sp)
    1df8:	0c000000 	jal	0 <func_800ADBB0>
    1dfc:	8fa6002c 	lw	a2,44(sp)
    1e00:	10000523 	b	3290 <L800B0E3C+0x4>
    1e04:	8fbf0024 	lw	ra,36(sp)

00001e08 <L800AF9B8>:
    1e08:	3c020000 	lui	v0,0x0
    1e0c:	3c0d0000 	lui	t5,0x0
    1e10:	25ad0000 	addiu	t5,t5,0
    1e14:	24420000 	addiu	v0,v0,0
    1e18:	01a22823 	subu	a1,t5,v0
    1e1c:	3c060000 	lui	a2,0x0
    1e20:	24c60000 	addiu	a2,a2,0
    1e24:	afa5002c 	sw	a1,44(sp)
    1e28:	afa20030 	sw	v0,48(sp)
    1e2c:	8fa40048 	lw	a0,72(sp)
    1e30:	0c000000 	jal	0 <func_800ADBB0>
    1e34:	240704ac 	li	a3,1196
    1e38:	14400007 	bnez	v0,1e58 <L800AF9B8+0x50>
    1e3c:	ae020128 	sw	v0,296(s0)
    1e40:	3c040000 	lui	a0,0x0
    1e44:	3c050000 	lui	a1,0x0
    1e48:	24a50000 	addiu	a1,a1,0
    1e4c:	24840000 	addiu	a0,a0,0
    1e50:	0c000000 	jal	0 <func_800ADBB0>
    1e54:	240604ad 	li	a2,1197
    1e58:	8e040128 	lw	a0,296(s0)
    1e5c:	3c070000 	lui	a3,0x0
    1e60:	240e04b0 	li	t6,1200
    1e64:	afae0010 	sw	t6,16(sp)
    1e68:	24e70000 	addiu	a3,a3,0
    1e6c:	8fa50030 	lw	a1,48(sp)
    1e70:	0c000000 	jal	0 <func_800ADBB0>
    1e74:	8fa6002c 	lw	a2,44(sp)
    1e78:	3c030000 	lui	v1,0x0
    1e7c:	3c0f0000 	lui	t7,0x0
    1e80:	25ef0000 	addiu	t7,t7,0
    1e84:	24630000 	addiu	v1,v1,0
    1e88:	01e32823 	subu	a1,t7,v1
    1e8c:	3c060000 	lui	a2,0x0
    1e90:	24c60000 	addiu	a2,a2,0
    1e94:	afa5002c 	sw	a1,44(sp)
    1e98:	afa30030 	sw	v1,48(sp)
    1e9c:	8fa40048 	lw	a0,72(sp)
    1ea0:	0c000000 	jal	0 <func_800ADBB0>
    1ea4:	240704b3 	li	a3,1203
    1ea8:	14400007 	bnez	v0,1ec8 <L800AF9B8+0xc0>
    1eac:	ae02012c 	sw	v0,300(s0)
    1eb0:	3c040000 	lui	a0,0x0
    1eb4:	3c050000 	lui	a1,0x0
    1eb8:	24a50000 	addiu	a1,a1,0
    1ebc:	24840000 	addiu	a0,a0,0
    1ec0:	0c000000 	jal	0 <func_800ADBB0>
    1ec4:	240604b4 	li	a2,1204
    1ec8:	8e04012c 	lw	a0,300(s0)
    1ecc:	3c070000 	lui	a3,0x0
    1ed0:	241804b7 	li	t8,1207
    1ed4:	afb80010 	sw	t8,16(sp)
    1ed8:	24e70000 	addiu	a3,a3,0
    1edc:	8fa50030 	lw	a1,48(sp)
    1ee0:	0c000000 	jal	0 <func_800ADBB0>
    1ee4:	8fa6002c 	lw	a2,44(sp)
    1ee8:	3c030000 	lui	v1,0x0
    1eec:	3c190000 	lui	t9,0x0
    1ef0:	27390000 	addiu	t9,t9,0
    1ef4:	24630000 	addiu	v1,v1,0
    1ef8:	03234023 	subu	t0,t9,v1
    1efc:	3c060000 	lui	a2,0x0
    1f00:	24c60000 	addiu	a2,a2,0
    1f04:	00082840 	sll	a1,t0,0x1
    1f08:	afa8002c 	sw	t0,44(sp)
    1f0c:	afa30030 	sw	v1,48(sp)
    1f10:	8fa40048 	lw	a0,72(sp)
    1f14:	0c000000 	jal	0 <func_800ADBB0>
    1f18:	240704bb 	li	a3,1211
    1f1c:	14400007 	bnez	v0,1f3c <L800AF9B8+0x134>
    1f20:	ae020130 	sw	v0,304(s0)
    1f24:	3c040000 	lui	a0,0x0
    1f28:	3c050000 	lui	a1,0x0
    1f2c:	24a50000 	addiu	a1,a1,0
    1f30:	24840000 	addiu	a0,a0,0
    1f34:	0c000000 	jal	0 <func_800ADBB0>
    1f38:	240604bc 	li	a2,1212
    1f3c:	8e040130 	lw	a0,304(s0)
    1f40:	3c070000 	lui	a3,0x0
    1f44:	240904be 	li	t1,1214
    1f48:	afa90010 	sw	t1,16(sp)
    1f4c:	24e70000 	addiu	a3,a3,0
    1f50:	8fa50030 	lw	a1,48(sp)
    1f54:	0c000000 	jal	0 <func_800ADBB0>
    1f58:	8fa6002c 	lw	a2,44(sp)
    1f5c:	8e0b0130 	lw	t3,304(s0)
    1f60:	8fa6002c 	lw	a2,44(sp)
    1f64:	3c050000 	lui	a1,0x0
    1f68:	3c070000 	lui	a3,0x0
    1f6c:	240c04c0 	li	t4,1216
    1f70:	afac0010 	sw	t4,16(sp)
    1f74:	24e70000 	addiu	a3,a3,0
    1f78:	24a50000 	addiu	a1,a1,0
    1f7c:	0c000000 	jal	0 <func_800ADBB0>
    1f80:	01662021 	addu	a0,t3,a2
    1f84:	100004c2 	b	3290 <L800B0E3C+0x4>
    1f88:	8fbf0024 	lw	ra,36(sp)

00001f8c <L800AFB3C>:
    1f8c:	240d0001 	li	t5,1
    1f90:	3c020000 	lui	v0,0x0
    1f94:	3c0e0000 	lui	t6,0x0
    1f98:	a60d0140 	sh	t5,320(s0)
    1f9c:	25ce0000 	addiu	t6,t6,0
    1fa0:	24420000 	addiu	v0,v0,0
    1fa4:	01c22823 	subu	a1,t6,v0
    1fa8:	3c060000 	lui	a2,0x0
    1fac:	24c60000 	addiu	a2,a2,0
    1fb0:	afa5002c 	sw	a1,44(sp)
    1fb4:	afa20030 	sw	v0,48(sp)
    1fb8:	8fa40048 	lw	a0,72(sp)
    1fbc:	0c000000 	jal	0 <func_800ADBB0>
    1fc0:	240704ca 	li	a3,1226
    1fc4:	14400007 	bnez	v0,1fe4 <L800AFB3C+0x58>
    1fc8:	ae020128 	sw	v0,296(s0)
    1fcc:	3c040000 	lui	a0,0x0
    1fd0:	3c050000 	lui	a1,0x0
    1fd4:	24a50000 	addiu	a1,a1,0
    1fd8:	24840000 	addiu	a0,a0,0
    1fdc:	0c000000 	jal	0 <func_800ADBB0>
    1fe0:	240604cb 	li	a2,1227
    1fe4:	8e040128 	lw	a0,296(s0)
    1fe8:	3c070000 	lui	a3,0x0
    1fec:	240f04cc 	li	t7,1228
    1ff0:	afaf0010 	sw	t7,16(sp)
    1ff4:	24e70000 	addiu	a3,a3,0
    1ff8:	8fa50030 	lw	a1,48(sp)
    1ffc:	0c000000 	jal	0 <func_800ADBB0>
    2000:	8fa6002c 	lw	a2,44(sp)
    2004:	3c030000 	lui	v1,0x0
    2008:	3c180000 	lui	t8,0x0
    200c:	27180000 	addiu	t8,t8,0
    2010:	24630000 	addiu	v1,v1,0
    2014:	03032823 	subu	a1,t8,v1
    2018:	3c060000 	lui	a2,0x0
    201c:	24c60000 	addiu	a2,a2,0
    2020:	afa5002c 	sw	a1,44(sp)
    2024:	afa30030 	sw	v1,48(sp)
    2028:	8fa40048 	lw	a0,72(sp)
    202c:	0c000000 	jal	0 <func_800ADBB0>
    2030:	240704cf 	li	a3,1231
    2034:	14400007 	bnez	v0,2054 <L800AFB3C+0xc8>
    2038:	ae020130 	sw	v0,304(s0)
    203c:	3c040000 	lui	a0,0x0
    2040:	3c050000 	lui	a1,0x0
    2044:	24a50000 	addiu	a1,a1,0
    2048:	24840000 	addiu	a0,a0,0
    204c:	0c000000 	jal	0 <func_800ADBB0>
    2050:	240604d0 	li	a2,1232
    2054:	8e040130 	lw	a0,304(s0)
    2058:	3c070000 	lui	a3,0x0
    205c:	241904d1 	li	t9,1233
    2060:	afb90010 	sw	t9,16(sp)
    2064:	24e70000 	addiu	a3,a3,0
    2068:	8fa50030 	lw	a1,48(sp)
    206c:	0c000000 	jal	0 <func_800ADBB0>
    2070:	8fa6002c 	lw	a2,44(sp)
    2074:	10000486 	b	3290 <L800B0E3C+0x4>
    2078:	8fbf0024 	lw	ra,36(sp)

0000207c <L800AFC2C>:
    207c:	24090001 	li	t1,1
    2080:	3c020000 	lui	v0,0x0
    2084:	3c0b0000 	lui	t3,0x0
    2088:	a6090140 	sh	t1,320(s0)
    208c:	256b0000 	addiu	t3,t3,0
    2090:	24420000 	addiu	v0,v0,0
    2094:	01622823 	subu	a1,t3,v0
    2098:	3c060000 	lui	a2,0x0
    209c:	24c60000 	addiu	a2,a2,0
    20a0:	afa5002c 	sw	a1,44(sp)
    20a4:	afa20030 	sw	v0,48(sp)
    20a8:	8fa40048 	lw	a0,72(sp)
    20ac:	0c000000 	jal	0 <func_800ADBB0>
    20b0:	240704e9 	li	a3,1257
    20b4:	14400007 	bnez	v0,20d4 <L800AFC2C+0x58>
    20b8:	ae020128 	sw	v0,296(s0)
    20bc:	3c040000 	lui	a0,0x0
    20c0:	3c050000 	lui	a1,0x0
    20c4:	24a50000 	addiu	a1,a1,0
    20c8:	24840000 	addiu	a0,a0,0
    20cc:	0c000000 	jal	0 <func_800ADBB0>
    20d0:	240604ea 	li	a2,1258
    20d4:	8e040128 	lw	a0,296(s0)
    20d8:	3c070000 	lui	a3,0x0
    20dc:	240a04eb 	li	t2,1259
    20e0:	afaa0010 	sw	t2,16(sp)
    20e4:	24e70000 	addiu	a3,a3,0
    20e8:	8fa50030 	lw	a1,48(sp)
    20ec:	0c000000 	jal	0 <func_800ADBB0>
    20f0:	8fa6002c 	lw	a2,44(sp)
    20f4:	3c030000 	lui	v1,0x0
    20f8:	3c0c0000 	lui	t4,0x0
    20fc:	258c0000 	addiu	t4,t4,0
    2100:	24630000 	addiu	v1,v1,0
    2104:	01832823 	subu	a1,t4,v1
    2108:	3c060000 	lui	a2,0x0
    210c:	24c60000 	addiu	a2,a2,0
    2110:	afa5002c 	sw	a1,44(sp)
    2114:	afa30030 	sw	v1,48(sp)
    2118:	8fa40048 	lw	a0,72(sp)
    211c:	0c000000 	jal	0 <func_800ADBB0>
    2120:	240704ee 	li	a3,1262
    2124:	14400007 	bnez	v0,2144 <L800AFC2C+0xc8>
    2128:	ae020130 	sw	v0,304(s0)
    212c:	3c040000 	lui	a0,0x0
    2130:	3c050000 	lui	a1,0x0
    2134:	24a50000 	addiu	a1,a1,0
    2138:	24840000 	addiu	a0,a0,0
    213c:	0c000000 	jal	0 <func_800ADBB0>
    2140:	240604ef 	li	a2,1263
    2144:	8e040130 	lw	a0,304(s0)
    2148:	3c070000 	lui	a3,0x0
    214c:	240d04f0 	li	t5,1264
    2150:	afad0010 	sw	t5,16(sp)
    2154:	24e70000 	addiu	a3,a3,0
    2158:	8fa50030 	lw	a1,48(sp)
    215c:	0c000000 	jal	0 <func_800ADBB0>
    2160:	8fa6002c 	lw	a2,44(sp)
    2164:	1000044a 	b	3290 <L800B0E3C+0x4>
    2168:	8fbf0024 	lw	ra,36(sp)

0000216c <L800AFD1C>:
    216c:	240e0001 	li	t6,1
    2170:	3c020000 	lui	v0,0x0
    2174:	3c0f0000 	lui	t7,0x0
    2178:	a60e0140 	sh	t6,320(s0)
    217c:	25ef0000 	addiu	t7,t7,0
    2180:	24420000 	addiu	v0,v0,0
    2184:	01e22823 	subu	a1,t7,v0
    2188:	3c060000 	lui	a2,0x0
    218c:	24c60000 	addiu	a2,a2,0
    2190:	afa5002c 	sw	a1,44(sp)
    2194:	afa20030 	sw	v0,48(sp)
    2198:	8fa40048 	lw	a0,72(sp)
    219c:	0c000000 	jal	0 <func_800ADBB0>
    21a0:	240704f7 	li	a3,1271
    21a4:	14400007 	bnez	v0,21c4 <L800AFD1C+0x58>
    21a8:	ae020128 	sw	v0,296(s0)
    21ac:	3c040000 	lui	a0,0x0
    21b0:	3c050000 	lui	a1,0x0
    21b4:	24a50000 	addiu	a1,a1,0
    21b8:	24840000 	addiu	a0,a0,0
    21bc:	0c000000 	jal	0 <func_800ADBB0>
    21c0:	240604f8 	li	a2,1272
    21c4:	8e040128 	lw	a0,296(s0)
    21c8:	3c070000 	lui	a3,0x0
    21cc:	241804f9 	li	t8,1273
    21d0:	afb80010 	sw	t8,16(sp)
    21d4:	24e70000 	addiu	a3,a3,0
    21d8:	8fa50030 	lw	a1,48(sp)
    21dc:	0c000000 	jal	0 <func_800ADBB0>
    21e0:	8fa6002c 	lw	a2,44(sp)
    21e4:	3c030000 	lui	v1,0x0
    21e8:	3c190000 	lui	t9,0x0
    21ec:	27390000 	addiu	t9,t9,0
    21f0:	24630000 	addiu	v1,v1,0
    21f4:	03232823 	subu	a1,t9,v1
    21f8:	3c040000 	lui	a0,0x0
    21fc:	24840000 	addiu	a0,a0,0
    2200:	afa5002c 	sw	a1,44(sp)
    2204:	0c000000 	jal	0 <func_800ADBB0>
    2208:	afa30030 	sw	v1,48(sp)
    220c:	3c060000 	lui	a2,0x0
    2210:	24c60000 	addiu	a2,a2,0
    2214:	8fa40048 	lw	a0,72(sp)
    2218:	8fa5002c 	lw	a1,44(sp)
    221c:	0c000000 	jal	0 <func_800ADBB0>
    2220:	240704fd 	li	a3,1277
    2224:	14400007 	bnez	v0,2244 <L800AFD1C+0xd8>
    2228:	ae020130 	sw	v0,304(s0)
    222c:	3c040000 	lui	a0,0x0
    2230:	3c050000 	lui	a1,0x0
    2234:	24a50000 	addiu	a1,a1,0
    2238:	24840000 	addiu	a0,a0,0
    223c:	0c000000 	jal	0 <func_800ADBB0>
    2240:	240604fe 	li	a2,1278
    2244:	8e040130 	lw	a0,304(s0)
    2248:	3c070000 	lui	a3,0x0
    224c:	240904ff 	li	t1,1279
    2250:	afa90010 	sw	t1,16(sp)
    2254:	24e70000 	addiu	a3,a3,0
    2258:	8fa50030 	lw	a1,48(sp)
    225c:	0c000000 	jal	0 <func_800ADBB0>
    2260:	8fa6002c 	lw	a2,44(sp)
    2264:	1000040a 	b	3290 <L800B0E3C+0x4>
    2268:	8fbf0024 	lw	ra,36(sp)

0000226c <L800AFE1C>:
    226c:	240b0001 	li	t3,1
    2270:	3c020000 	lui	v0,0x0
    2274:	3c0a0000 	lui	t2,0x0
    2278:	a60b0140 	sh	t3,320(s0)
    227c:	254a0000 	addiu	t2,t2,0
    2280:	24420000 	addiu	v0,v0,0
    2284:	01422823 	subu	a1,t2,v0
    2288:	3c060000 	lui	a2,0x0
    228c:	24c60000 	addiu	a2,a2,0
    2290:	afa5002c 	sw	a1,44(sp)
    2294:	afa20030 	sw	v0,48(sp)
    2298:	8fa40048 	lw	a0,72(sp)
    229c:	0c000000 	jal	0 <func_800ADBB0>
    22a0:	24070506 	li	a3,1286
    22a4:	14400007 	bnez	v0,22c4 <L800AFE1C+0x58>
    22a8:	ae020128 	sw	v0,296(s0)
    22ac:	3c040000 	lui	a0,0x0
    22b0:	3c050000 	lui	a1,0x0
    22b4:	24a50000 	addiu	a1,a1,0
    22b8:	24840000 	addiu	a0,a0,0
    22bc:	0c000000 	jal	0 <func_800ADBB0>
    22c0:	24060507 	li	a2,1287
    22c4:	8e040128 	lw	a0,296(s0)
    22c8:	3c070000 	lui	a3,0x0
    22cc:	240c0508 	li	t4,1288
    22d0:	afac0010 	sw	t4,16(sp)
    22d4:	24e70000 	addiu	a3,a3,0
    22d8:	8fa50030 	lw	a1,48(sp)
    22dc:	0c000000 	jal	0 <func_800ADBB0>
    22e0:	8fa6002c 	lw	a2,44(sp)
    22e4:	3c030000 	lui	v1,0x0
    22e8:	3c0d0000 	lui	t5,0x0
    22ec:	25ad0000 	addiu	t5,t5,0
    22f0:	24630000 	addiu	v1,v1,0
    22f4:	01a32823 	subu	a1,t5,v1
    22f8:	3c060000 	lui	a2,0x0
    22fc:	24c60000 	addiu	a2,a2,0
    2300:	afa5002c 	sw	a1,44(sp)
    2304:	afa30030 	sw	v1,48(sp)
    2308:	8fa40048 	lw	a0,72(sp)
    230c:	0c000000 	jal	0 <func_800ADBB0>
    2310:	2407050b 	li	a3,1291
    2314:	14400007 	bnez	v0,2334 <L800AFE1C+0xc8>
    2318:	ae020130 	sw	v0,304(s0)
    231c:	3c040000 	lui	a0,0x0
    2320:	3c050000 	lui	a1,0x0
    2324:	24a50000 	addiu	a1,a1,0
    2328:	24840000 	addiu	a0,a0,0
    232c:	0c000000 	jal	0 <func_800ADBB0>
    2330:	2406050c 	li	a2,1292
    2334:	8e040130 	lw	a0,304(s0)
    2338:	3c070000 	lui	a3,0x0
    233c:	240e050d 	li	t6,1293
    2340:	afae0010 	sw	t6,16(sp)
    2344:	24e70000 	addiu	a3,a3,0
    2348:	8fa50030 	lw	a1,48(sp)
    234c:	0c000000 	jal	0 <func_800ADBB0>
    2350:	8fa6002c 	lw	a2,44(sp)
    2354:	3c010000 	lui	at,0x0
    2358:	c4300000 	lwc1	$f16,0(at)
    235c:	100003cb 	b	328c <L800B0E3C>
    2360:	e6100148 	swc1	$f16,328(s0)

00002364 <L800AFF14>:
    2364:	240f0001 	li	t7,1
    2368:	3c020000 	lui	v0,0x0
    236c:	3c180000 	lui	t8,0x0
    2370:	a60f0140 	sh	t7,320(s0)
    2374:	27180000 	addiu	t8,t8,0
    2378:	24420000 	addiu	v0,v0,0
    237c:	03022823 	subu	a1,t8,v0
    2380:	3c060000 	lui	a2,0x0
    2384:	24c60000 	addiu	a2,a2,0
    2388:	afa5002c 	sw	a1,44(sp)
    238c:	afa20030 	sw	v0,48(sp)
    2390:	8fa40048 	lw	a0,72(sp)
    2394:	0c000000 	jal	0 <func_800ADBB0>
    2398:	24070515 	li	a3,1301
    239c:	14400007 	bnez	v0,23bc <L800AFF14+0x58>
    23a0:	ae020128 	sw	v0,296(s0)
    23a4:	3c040000 	lui	a0,0x0
    23a8:	3c050000 	lui	a1,0x0
    23ac:	24a50000 	addiu	a1,a1,0
    23b0:	24840000 	addiu	a0,a0,0
    23b4:	0c000000 	jal	0 <func_800ADBB0>
    23b8:	24060516 	li	a2,1302
    23bc:	8e040128 	lw	a0,296(s0)
    23c0:	3c070000 	lui	a3,0x0
    23c4:	24190517 	li	t9,1303
    23c8:	afb90010 	sw	t9,16(sp)
    23cc:	24e70000 	addiu	a3,a3,0
    23d0:	8fa50030 	lw	a1,48(sp)
    23d4:	0c000000 	jal	0 <func_800ADBB0>
    23d8:	8fa6002c 	lw	a2,44(sp)
    23dc:	3c030000 	lui	v1,0x0
    23e0:	3c090000 	lui	t1,0x0
    23e4:	25290000 	addiu	t1,t1,0
    23e8:	24630000 	addiu	v1,v1,0
    23ec:	01232823 	subu	a1,t1,v1
    23f0:	3c060000 	lui	a2,0x0
    23f4:	24c60000 	addiu	a2,a2,0
    23f8:	afa5002c 	sw	a1,44(sp)
    23fc:	afa30030 	sw	v1,48(sp)
    2400:	8fa40048 	lw	a0,72(sp)
    2404:	0c000000 	jal	0 <func_800ADBB0>
    2408:	2407051a 	li	a3,1306
    240c:	14400007 	bnez	v0,242c <L800AFF14+0xc8>
    2410:	ae020130 	sw	v0,304(s0)
    2414:	3c040000 	lui	a0,0x0
    2418:	3c050000 	lui	a1,0x0
    241c:	24a50000 	addiu	a1,a1,0
    2420:	24840000 	addiu	a0,a0,0
    2424:	0c000000 	jal	0 <func_800ADBB0>
    2428:	2406051b 	li	a2,1307
    242c:	8e040130 	lw	a0,304(s0)
    2430:	3c070000 	lui	a3,0x0
    2434:	240b051c 	li	t3,1308
    2438:	afab0010 	sw	t3,16(sp)
    243c:	24e70000 	addiu	a3,a3,0
    2440:	8fa50030 	lw	a1,48(sp)
    2444:	0c000000 	jal	0 <func_800ADBB0>
    2448:	8fa6002c 	lw	a2,44(sp)
    244c:	10000390 	b	3290 <L800B0E3C+0x4>
    2450:	8fbf0024 	lw	ra,36(sp)

00002454 <L800B0004>:
    2454:	240a0002 	li	t2,2
    2458:	3c020000 	lui	v0,0x0
    245c:	3c0c0000 	lui	t4,0x0
    2460:	a60a0140 	sh	t2,320(s0)
    2464:	258c0000 	addiu	t4,t4,0
    2468:	24420000 	addiu	v0,v0,0
    246c:	01822823 	subu	a1,t4,v0
    2470:	3c060000 	lui	a2,0x0
    2474:	24c60000 	addiu	a2,a2,0
    2478:	afa5002c 	sw	a1,44(sp)
    247c:	afa20030 	sw	v0,48(sp)
    2480:	8fa40048 	lw	a0,72(sp)
    2484:	0c000000 	jal	0 <func_800ADBB0>
    2488:	24070533 	li	a3,1331
    248c:	14400007 	bnez	v0,24ac <L800B0004+0x58>
    2490:	ae020128 	sw	v0,296(s0)
    2494:	3c040000 	lui	a0,0x0
    2498:	3c050000 	lui	a1,0x0
    249c:	24a50000 	addiu	a1,a1,0
    24a0:	24840000 	addiu	a0,a0,0
    24a4:	0c000000 	jal	0 <func_800ADBB0>
    24a8:	24060534 	li	a2,1332
    24ac:	8e040128 	lw	a0,296(s0)
    24b0:	3c070000 	lui	a3,0x0
    24b4:	240d0535 	li	t5,1333
    24b8:	afad0010 	sw	t5,16(sp)
    24bc:	24e70000 	addiu	a3,a3,0
    24c0:	8fa50030 	lw	a1,48(sp)
    24c4:	0c000000 	jal	0 <func_800ADBB0>
    24c8:	8fa6002c 	lw	a2,44(sp)
    24cc:	3c030000 	lui	v1,0x0
    24d0:	3c0e0000 	lui	t6,0x0
    24d4:	25ce0000 	addiu	t6,t6,0
    24d8:	24630000 	addiu	v1,v1,0
    24dc:	01c32823 	subu	a1,t6,v1
    24e0:	3c060000 	lui	a2,0x0
    24e4:	24c60000 	addiu	a2,a2,0
    24e8:	afa5002c 	sw	a1,44(sp)
    24ec:	afa30030 	sw	v1,48(sp)
    24f0:	8fa40048 	lw	a0,72(sp)
    24f4:	0c000000 	jal	0 <func_800ADBB0>
    24f8:	24070538 	li	a3,1336
    24fc:	14400007 	bnez	v0,251c <L800B0004+0xc8>
    2500:	ae020130 	sw	v0,304(s0)
    2504:	3c040000 	lui	a0,0x0
    2508:	3c050000 	lui	a1,0x0
    250c:	24a50000 	addiu	a1,a1,0
    2510:	24840000 	addiu	a0,a0,0
    2514:	0c000000 	jal	0 <func_800ADBB0>
    2518:	24060539 	li	a2,1337
    251c:	8e040130 	lw	a0,304(s0)
    2520:	3c070000 	lui	a3,0x0
    2524:	240f053a 	li	t7,1338
    2528:	afaf0010 	sw	t7,16(sp)
    252c:	24e70000 	addiu	a3,a3,0
    2530:	8fa50030 	lw	a1,48(sp)
    2534:	0c000000 	jal	0 <func_800ADBB0>
    2538:	8fa6002c 	lw	a2,44(sp)
    253c:	10000354 	b	3290 <L800B0E3C+0x4>
    2540:	8fbf0024 	lw	ra,36(sp)

00002544 <L800B00F4>:
    2544:	24180001 	li	t8,1
    2548:	3c020000 	lui	v0,0x0
    254c:	3c190000 	lui	t9,0x0
    2550:	a6180140 	sh	t8,320(s0)
    2554:	27390000 	addiu	t9,t9,0
    2558:	24420000 	addiu	v0,v0,0
    255c:	03222823 	subu	a1,t9,v0
    2560:	3c060000 	lui	a2,0x0
    2564:	24c60000 	addiu	a2,a2,0
    2568:	afa5002c 	sw	a1,44(sp)
    256c:	afa20030 	sw	v0,48(sp)
    2570:	8fa40048 	lw	a0,72(sp)
    2574:	0c000000 	jal	0 <func_800ADBB0>
    2578:	24070541 	li	a3,1345
    257c:	14400007 	bnez	v0,259c <L800B00F4+0x58>
    2580:	ae020128 	sw	v0,296(s0)
    2584:	3c040000 	lui	a0,0x0
    2588:	3c050000 	lui	a1,0x0
    258c:	24a50000 	addiu	a1,a1,0
    2590:	24840000 	addiu	a0,a0,0
    2594:	0c000000 	jal	0 <func_800ADBB0>
    2598:	24060542 	li	a2,1346
    259c:	8e040128 	lw	a0,296(s0)
    25a0:	3c070000 	lui	a3,0x0
    25a4:	24090543 	li	t1,1347
    25a8:	afa90010 	sw	t1,16(sp)
    25ac:	24e70000 	addiu	a3,a3,0
    25b0:	8fa50030 	lw	a1,48(sp)
    25b4:	0c000000 	jal	0 <func_800ADBB0>
    25b8:	8fa6002c 	lw	a2,44(sp)
    25bc:	3c030000 	lui	v1,0x0
    25c0:	3c0b0000 	lui	t3,0x0
    25c4:	256b0000 	addiu	t3,t3,0
    25c8:	24630000 	addiu	v1,v1,0
    25cc:	01632823 	subu	a1,t3,v1
    25d0:	3c060000 	lui	a2,0x0
    25d4:	24c60000 	addiu	a2,a2,0
    25d8:	afa5002c 	sw	a1,44(sp)
    25dc:	afa30030 	sw	v1,48(sp)
    25e0:	8fa40048 	lw	a0,72(sp)
    25e4:	0c000000 	jal	0 <func_800ADBB0>
    25e8:	24070546 	li	a3,1350
    25ec:	14400007 	bnez	v0,260c <L800B00F4+0xc8>
    25f0:	ae020130 	sw	v0,304(s0)
    25f4:	3c040000 	lui	a0,0x0
    25f8:	3c050000 	lui	a1,0x0
    25fc:	24a50000 	addiu	a1,a1,0
    2600:	24840000 	addiu	a0,a0,0
    2604:	0c000000 	jal	0 <func_800ADBB0>
    2608:	24060547 	li	a2,1351
    260c:	8e040130 	lw	a0,304(s0)
    2610:	3c070000 	lui	a3,0x0
    2614:	240a0548 	li	t2,1352
    2618:	afaa0010 	sw	t2,16(sp)
    261c:	24e70000 	addiu	a3,a3,0
    2620:	8fa50030 	lw	a1,48(sp)
    2624:	0c000000 	jal	0 <func_800ADBB0>
    2628:	8fa6002c 	lw	a2,44(sp)
    262c:	10000318 	b	3290 <L800B0E3C+0x4>
    2630:	8fbf0024 	lw	ra,36(sp)

00002634 <L800B01E4>:
    2634:	240c0001 	li	t4,1
    2638:	3c020000 	lui	v0,0x0
    263c:	3c0d0000 	lui	t5,0x0
    2640:	a60c0140 	sh	t4,320(s0)
    2644:	25ad0000 	addiu	t5,t5,0
    2648:	24420000 	addiu	v0,v0,0
    264c:	01a22823 	subu	a1,t5,v0
    2650:	3c060000 	lui	a2,0x0
    2654:	24c60000 	addiu	a2,a2,0
    2658:	afa5002c 	sw	a1,44(sp)
    265c:	afa20030 	sw	v0,48(sp)
    2660:	8fa40048 	lw	a0,72(sp)
    2664:	0c000000 	jal	0 <func_800ADBB0>
    2668:	2407054f 	li	a3,1359
    266c:	14400007 	bnez	v0,268c <L800B01E4+0x58>
    2670:	ae020128 	sw	v0,296(s0)
    2674:	3c040000 	lui	a0,0x0
    2678:	3c050000 	lui	a1,0x0
    267c:	24a50000 	addiu	a1,a1,0
    2680:	24840000 	addiu	a0,a0,0
    2684:	0c000000 	jal	0 <func_800ADBB0>
    2688:	24060550 	li	a2,1360
    268c:	8e040128 	lw	a0,296(s0)
    2690:	3c070000 	lui	a3,0x0
    2694:	240e0551 	li	t6,1361
    2698:	afae0010 	sw	t6,16(sp)
    269c:	24e70000 	addiu	a3,a3,0
    26a0:	8fa50030 	lw	a1,48(sp)
    26a4:	0c000000 	jal	0 <func_800ADBB0>
    26a8:	8fa6002c 	lw	a2,44(sp)
    26ac:	3c030000 	lui	v1,0x0
    26b0:	3c0f0000 	lui	t7,0x0
    26b4:	25ef0000 	addiu	t7,t7,0
    26b8:	24630000 	addiu	v1,v1,0
    26bc:	01e32823 	subu	a1,t7,v1
    26c0:	3c060000 	lui	a2,0x0
    26c4:	24c60000 	addiu	a2,a2,0
    26c8:	afa5002c 	sw	a1,44(sp)
    26cc:	afa30030 	sw	v1,48(sp)
    26d0:	8fa40048 	lw	a0,72(sp)
    26d4:	0c000000 	jal	0 <func_800ADBB0>
    26d8:	24070554 	li	a3,1364
    26dc:	14400007 	bnez	v0,26fc <L800B01E4+0xc8>
    26e0:	ae020130 	sw	v0,304(s0)
    26e4:	3c040000 	lui	a0,0x0
    26e8:	3c050000 	lui	a1,0x0
    26ec:	24a50000 	addiu	a1,a1,0
    26f0:	24840000 	addiu	a0,a0,0
    26f4:	0c000000 	jal	0 <func_800ADBB0>
    26f8:	24060555 	li	a2,1365
    26fc:	8e040130 	lw	a0,304(s0)
    2700:	3c070000 	lui	a3,0x0
    2704:	24180556 	li	t8,1366
    2708:	afb80010 	sw	t8,16(sp)
    270c:	24e70000 	addiu	a3,a3,0
    2710:	8fa50030 	lw	a1,48(sp)
    2714:	0c000000 	jal	0 <func_800ADBB0>
    2718:	8fa6002c 	lw	a2,44(sp)
    271c:	100002dc 	b	3290 <L800B0E3C+0x4>
    2720:	8fbf0024 	lw	ra,36(sp)

00002724 <L800B02D4>:
    2724:	24190001 	li	t9,1
    2728:	3c020000 	lui	v0,0x0
    272c:	3c090000 	lui	t1,0x0
    2730:	a6190140 	sh	t9,320(s0)
    2734:	25290000 	addiu	t1,t1,0
    2738:	24420000 	addiu	v0,v0,0
    273c:	01222823 	subu	a1,t1,v0
    2740:	3c060000 	lui	a2,0x0
    2744:	24c60000 	addiu	a2,a2,0
    2748:	afa5002c 	sw	a1,44(sp)
    274c:	afa20030 	sw	v0,48(sp)
    2750:	8fa40048 	lw	a0,72(sp)
    2754:	0c000000 	jal	0 <func_800ADBB0>
    2758:	2407055d 	li	a3,1373
    275c:	14400007 	bnez	v0,277c <L800B02D4+0x58>
    2760:	ae020128 	sw	v0,296(s0)
    2764:	3c040000 	lui	a0,0x0
    2768:	3c050000 	lui	a1,0x0
    276c:	24a50000 	addiu	a1,a1,0
    2770:	24840000 	addiu	a0,a0,0
    2774:	0c000000 	jal	0 <func_800ADBB0>
    2778:	2406055e 	li	a2,1374
    277c:	8e040128 	lw	a0,296(s0)
    2780:	3c070000 	lui	a3,0x0
    2784:	240b055f 	li	t3,1375
    2788:	afab0010 	sw	t3,16(sp)
    278c:	24e70000 	addiu	a3,a3,0
    2790:	8fa50030 	lw	a1,48(sp)
    2794:	0c000000 	jal	0 <func_800ADBB0>
    2798:	8fa6002c 	lw	a2,44(sp)
    279c:	3c030000 	lui	v1,0x0
    27a0:	3c0a0000 	lui	t2,0x0
    27a4:	254a0000 	addiu	t2,t2,0
    27a8:	24630000 	addiu	v1,v1,0
    27ac:	01432823 	subu	a1,t2,v1
    27b0:	3c060000 	lui	a2,0x0
    27b4:	24c60000 	addiu	a2,a2,0
    27b8:	afa5002c 	sw	a1,44(sp)
    27bc:	afa30030 	sw	v1,48(sp)
    27c0:	8fa40048 	lw	a0,72(sp)
    27c4:	0c000000 	jal	0 <func_800ADBB0>
    27c8:	24070562 	li	a3,1378
    27cc:	14400007 	bnez	v0,27ec <L800B02D4+0xc8>
    27d0:	ae020130 	sw	v0,304(s0)
    27d4:	3c040000 	lui	a0,0x0
    27d8:	3c050000 	lui	a1,0x0
    27dc:	24a50000 	addiu	a1,a1,0
    27e0:	24840000 	addiu	a0,a0,0
    27e4:	0c000000 	jal	0 <func_800ADBB0>
    27e8:	24060563 	li	a2,1379
    27ec:	8e040130 	lw	a0,304(s0)
    27f0:	3c070000 	lui	a3,0x0
    27f4:	240c0564 	li	t4,1380
    27f8:	afac0010 	sw	t4,16(sp)
    27fc:	24e70000 	addiu	a3,a3,0
    2800:	8fa50030 	lw	a1,48(sp)
    2804:	0c000000 	jal	0 <func_800ADBB0>
    2808:	8fa6002c 	lw	a2,44(sp)
    280c:	3c010000 	lui	at,0x0
    2810:	c4320000 	lwc1	$f18,0(at)
    2814:	1000029d 	b	328c <L800B0E3C>
    2818:	e6120148 	swc1	$f18,328(s0)

0000281c <L800B03CC>:
    281c:	240d0001 	li	t5,1
    2820:	3c020000 	lui	v0,0x0
    2824:	3c0e0000 	lui	t6,0x0
    2828:	a60d0140 	sh	t5,320(s0)
    282c:	25ce0000 	addiu	t6,t6,0
    2830:	24420000 	addiu	v0,v0,0
    2834:	01c22823 	subu	a1,t6,v0
    2838:	3c060000 	lui	a2,0x0
    283c:	24c60000 	addiu	a2,a2,0
    2840:	afa5002c 	sw	a1,44(sp)
    2844:	afa20030 	sw	v0,48(sp)
    2848:	8fa40048 	lw	a0,72(sp)
    284c:	0c000000 	jal	0 <func_800ADBB0>
    2850:	2407057d 	li	a3,1405
    2854:	14400007 	bnez	v0,2874 <L800B03CC+0x58>
    2858:	ae020128 	sw	v0,296(s0)
    285c:	3c040000 	lui	a0,0x0
    2860:	3c050000 	lui	a1,0x0
    2864:	24a50000 	addiu	a1,a1,0
    2868:	24840000 	addiu	a0,a0,0
    286c:	0c000000 	jal	0 <func_800ADBB0>
    2870:	2406057e 	li	a2,1406
    2874:	8e040128 	lw	a0,296(s0)
    2878:	3c070000 	lui	a3,0x0
    287c:	240f057f 	li	t7,1407
    2880:	afaf0010 	sw	t7,16(sp)
    2884:	24e70000 	addiu	a3,a3,0
    2888:	8fa50030 	lw	a1,48(sp)
    288c:	0c000000 	jal	0 <func_800ADBB0>
    2890:	8fa6002c 	lw	a2,44(sp)
    2894:	3c030000 	lui	v1,0x0
    2898:	3c180000 	lui	t8,0x0
    289c:	27180000 	addiu	t8,t8,0
    28a0:	24630000 	addiu	v1,v1,0
    28a4:	03032823 	subu	a1,t8,v1
    28a8:	3c060000 	lui	a2,0x0
    28ac:	24c60000 	addiu	a2,a2,0
    28b0:	afa5002c 	sw	a1,44(sp)
    28b4:	afa30030 	sw	v1,48(sp)
    28b8:	8fa40048 	lw	a0,72(sp)
    28bc:	0c000000 	jal	0 <func_800ADBB0>
    28c0:	24070582 	li	a3,1410
    28c4:	14400007 	bnez	v0,28e4 <L800B03CC+0xc8>
    28c8:	ae020130 	sw	v0,304(s0)
    28cc:	3c040000 	lui	a0,0x0
    28d0:	3c050000 	lui	a1,0x0
    28d4:	24a50000 	addiu	a1,a1,0
    28d8:	24840000 	addiu	a0,a0,0
    28dc:	0c000000 	jal	0 <func_800ADBB0>
    28e0:	24060583 	li	a2,1411
    28e4:	8e040130 	lw	a0,304(s0)
    28e8:	3c070000 	lui	a3,0x0
    28ec:	24190584 	li	t9,1412
    28f0:	afb90010 	sw	t9,16(sp)
    28f4:	24e70000 	addiu	a3,a3,0
    28f8:	8fa50030 	lw	a1,48(sp)
    28fc:	0c000000 	jal	0 <func_800ADBB0>
    2900:	8fa6002c 	lw	a2,44(sp)
    2904:	3c010000 	lui	at,0x0
    2908:	c4240000 	lwc1	$f4,0(at)
    290c:	1000025f 	b	328c <L800B0E3C>
    2910:	e6040148 	swc1	$f4,328(s0)

00002914 <L800B04C4>:
    2914:	24090001 	li	t1,1
    2918:	3c020000 	lui	v0,0x0
    291c:	3c0b0000 	lui	t3,0x0
    2920:	a6090140 	sh	t1,320(s0)
    2924:	256b0000 	addiu	t3,t3,0
    2928:	24420000 	addiu	v0,v0,0
    292c:	01622823 	subu	a1,t3,v0
    2930:	3c060000 	lui	a2,0x0
    2934:	24c60000 	addiu	a2,a2,0
    2938:	afa5002c 	sw	a1,44(sp)
    293c:	afa20030 	sw	v0,48(sp)
    2940:	8fa40048 	lw	a0,72(sp)
    2944:	0c000000 	jal	0 <func_800ADBB0>
    2948:	2407058c 	li	a3,1420
    294c:	14400007 	bnez	v0,296c <L800B04C4+0x58>
    2950:	ae020128 	sw	v0,296(s0)
    2954:	3c040000 	lui	a0,0x0
    2958:	3c050000 	lui	a1,0x0
    295c:	24a50000 	addiu	a1,a1,0
    2960:	24840000 	addiu	a0,a0,0
    2964:	0c000000 	jal	0 <func_800ADBB0>
    2968:	2406058d 	li	a2,1421
    296c:	8e040128 	lw	a0,296(s0)
    2970:	3c070000 	lui	a3,0x0
    2974:	240a058e 	li	t2,1422
    2978:	afaa0010 	sw	t2,16(sp)
    297c:	24e70000 	addiu	a3,a3,0
    2980:	8fa50030 	lw	a1,48(sp)
    2984:	0c000000 	jal	0 <func_800ADBB0>
    2988:	8fa6002c 	lw	a2,44(sp)
    298c:	3c030000 	lui	v1,0x0
    2990:	3c0c0000 	lui	t4,0x0
    2994:	258c0000 	addiu	t4,t4,0
    2998:	24630000 	addiu	v1,v1,0
    299c:	01832823 	subu	a1,t4,v1
    29a0:	3c060000 	lui	a2,0x0
    29a4:	24c60000 	addiu	a2,a2,0
    29a8:	afa5002c 	sw	a1,44(sp)
    29ac:	afa30030 	sw	v1,48(sp)
    29b0:	8fa40048 	lw	a0,72(sp)
    29b4:	0c000000 	jal	0 <func_800ADBB0>
    29b8:	24070591 	li	a3,1425
    29bc:	14400007 	bnez	v0,29dc <L800B04C4+0xc8>
    29c0:	ae020130 	sw	v0,304(s0)
    29c4:	3c040000 	lui	a0,0x0
    29c8:	3c050000 	lui	a1,0x0
    29cc:	24a50000 	addiu	a1,a1,0
    29d0:	24840000 	addiu	a0,a0,0
    29d4:	0c000000 	jal	0 <func_800ADBB0>
    29d8:	24060592 	li	a2,1426
    29dc:	8e040130 	lw	a0,304(s0)
    29e0:	3c070000 	lui	a3,0x0
    29e4:	240d0593 	li	t5,1427
    29e8:	afad0010 	sw	t5,16(sp)
    29ec:	24e70000 	addiu	a3,a3,0
    29f0:	8fa50030 	lw	a1,48(sp)
    29f4:	0c000000 	jal	0 <func_800ADBB0>
    29f8:	8fa6002c 	lw	a2,44(sp)
    29fc:	3c010000 	lui	at,0x0
    2a00:	c4260000 	lwc1	$f6,0(at)
    2a04:	10000221 	b	328c <L800B0E3C>
    2a08:	e6060148 	swc1	$f6,328(s0)

00002a0c <L800B05BC>:
    2a0c:	240e0001 	li	t6,1
    2a10:	3c020000 	lui	v0,0x0
    2a14:	3c0f0000 	lui	t7,0x0
    2a18:	a60e0140 	sh	t6,320(s0)
    2a1c:	25ef0000 	addiu	t7,t7,0
    2a20:	24420000 	addiu	v0,v0,0
    2a24:	01e22823 	subu	a1,t7,v0
    2a28:	3c060000 	lui	a2,0x0
    2a2c:	24c60000 	addiu	a2,a2,0
    2a30:	afa5002c 	sw	a1,44(sp)
    2a34:	afa20030 	sw	v0,48(sp)
    2a38:	8fa40048 	lw	a0,72(sp)
    2a3c:	0c000000 	jal	0 <func_800ADBB0>
    2a40:	240705ab 	li	a3,1451
    2a44:	14400007 	bnez	v0,2a64 <L800B05BC+0x58>
    2a48:	ae020128 	sw	v0,296(s0)
    2a4c:	3c040000 	lui	a0,0x0
    2a50:	3c050000 	lui	a1,0x0
    2a54:	24a50000 	addiu	a1,a1,0
    2a58:	24840000 	addiu	a0,a0,0
    2a5c:	0c000000 	jal	0 <func_800ADBB0>
    2a60:	240605ac 	li	a2,1452
    2a64:	8e040128 	lw	a0,296(s0)
    2a68:	3c070000 	lui	a3,0x0
    2a6c:	241805ad 	li	t8,1453
    2a70:	afb80010 	sw	t8,16(sp)
    2a74:	24e70000 	addiu	a3,a3,0
    2a78:	8fa50030 	lw	a1,48(sp)
    2a7c:	0c000000 	jal	0 <func_800ADBB0>
    2a80:	8fa6002c 	lw	a2,44(sp)
    2a84:	3c030000 	lui	v1,0x0
    2a88:	3c190000 	lui	t9,0x0
    2a8c:	27390000 	addiu	t9,t9,0
    2a90:	24630000 	addiu	v1,v1,0
    2a94:	03232823 	subu	a1,t9,v1
    2a98:	3c060000 	lui	a2,0x0
    2a9c:	24c60000 	addiu	a2,a2,0
    2aa0:	afa5002c 	sw	a1,44(sp)
    2aa4:	afa30030 	sw	v1,48(sp)
    2aa8:	8fa40048 	lw	a0,72(sp)
    2aac:	0c000000 	jal	0 <func_800ADBB0>
    2ab0:	240705b0 	li	a3,1456
    2ab4:	14400007 	bnez	v0,2ad4 <L800B05BC+0xc8>
    2ab8:	ae020130 	sw	v0,304(s0)
    2abc:	3c040000 	lui	a0,0x0
    2ac0:	3c050000 	lui	a1,0x0
    2ac4:	24a50000 	addiu	a1,a1,0
    2ac8:	24840000 	addiu	a0,a0,0
    2acc:	0c000000 	jal	0 <func_800ADBB0>
    2ad0:	240605b1 	li	a2,1457
    2ad4:	8e040130 	lw	a0,304(s0)
    2ad8:	3c070000 	lui	a3,0x0
    2adc:	240905b2 	li	t1,1458
    2ae0:	afa90010 	sw	t1,16(sp)
    2ae4:	24e70000 	addiu	a3,a3,0
    2ae8:	8fa50030 	lw	a1,48(sp)
    2aec:	0c000000 	jal	0 <func_800ADBB0>
    2af0:	8fa6002c 	lw	a2,44(sp)
    2af4:	3c010000 	lui	at,0x0
    2af8:	c4280000 	lwc1	$f8,0(at)
    2afc:	100001e3 	b	328c <L800B0E3C>
    2b00:	e6080148 	swc1	$f8,328(s0)

00002b04 <L800B06B4>:
    2b04:	240b0001 	li	t3,1
    2b08:	3c020000 	lui	v0,0x0
    2b0c:	3c0a0000 	lui	t2,0x0
    2b10:	a60b0140 	sh	t3,320(s0)
    2b14:	254a0000 	addiu	t2,t2,0
    2b18:	24420000 	addiu	v0,v0,0
    2b1c:	01422823 	subu	a1,t2,v0
    2b20:	3c060000 	lui	a2,0x0
    2b24:	24c60000 	addiu	a2,a2,0
    2b28:	afa5002c 	sw	a1,44(sp)
    2b2c:	afa20030 	sw	v0,48(sp)
    2b30:	8fa40048 	lw	a0,72(sp)
    2b34:	0c000000 	jal	0 <func_800ADBB0>
    2b38:	240705ba 	li	a3,1466
    2b3c:	14400007 	bnez	v0,2b5c <L800B06B4+0x58>
    2b40:	ae020128 	sw	v0,296(s0)
    2b44:	3c040000 	lui	a0,0x0
    2b48:	3c050000 	lui	a1,0x0
    2b4c:	24a50000 	addiu	a1,a1,0
    2b50:	24840000 	addiu	a0,a0,0
    2b54:	0c000000 	jal	0 <func_800ADBB0>
    2b58:	240605bb 	li	a2,1467
    2b5c:	8e040128 	lw	a0,296(s0)
    2b60:	3c070000 	lui	a3,0x0
    2b64:	240c05bc 	li	t4,1468
    2b68:	afac0010 	sw	t4,16(sp)
    2b6c:	24e70000 	addiu	a3,a3,0
    2b70:	8fa50030 	lw	a1,48(sp)
    2b74:	0c000000 	jal	0 <func_800ADBB0>
    2b78:	8fa6002c 	lw	a2,44(sp)
    2b7c:	3c030000 	lui	v1,0x0
    2b80:	3c0d0000 	lui	t5,0x0
    2b84:	25ad0000 	addiu	t5,t5,0
    2b88:	24630000 	addiu	v1,v1,0
    2b8c:	01a32823 	subu	a1,t5,v1
    2b90:	3c060000 	lui	a2,0x0
    2b94:	24c60000 	addiu	a2,a2,0
    2b98:	afa5002c 	sw	a1,44(sp)
    2b9c:	afa30030 	sw	v1,48(sp)
    2ba0:	8fa40048 	lw	a0,72(sp)
    2ba4:	0c000000 	jal	0 <func_800ADBB0>
    2ba8:	240705bf 	li	a3,1471
    2bac:	14400007 	bnez	v0,2bcc <L800B06B4+0xc8>
    2bb0:	ae020130 	sw	v0,304(s0)
    2bb4:	3c040000 	lui	a0,0x0
    2bb8:	3c050000 	lui	a1,0x0
    2bbc:	24a50000 	addiu	a1,a1,0
    2bc0:	24840000 	addiu	a0,a0,0
    2bc4:	0c000000 	jal	0 <func_800ADBB0>
    2bc8:	240605c0 	li	a2,1472
    2bcc:	8e040130 	lw	a0,304(s0)
    2bd0:	3c070000 	lui	a3,0x0
    2bd4:	240e05c1 	li	t6,1473
    2bd8:	afae0010 	sw	t6,16(sp)
    2bdc:	24e70000 	addiu	a3,a3,0
    2be0:	8fa50030 	lw	a1,48(sp)
    2be4:	0c000000 	jal	0 <func_800ADBB0>
    2be8:	8fa6002c 	lw	a2,44(sp)
    2bec:	3c010000 	lui	at,0x0
    2bf0:	c42a0000 	lwc1	$f10,0(at)
    2bf4:	100001a5 	b	328c <L800B0E3C>
    2bf8:	e60a0148 	swc1	$f10,328(s0)

00002bfc <L800B07AC>:
    2bfc:	240f0001 	li	t7,1
    2c00:	3c020000 	lui	v0,0x0
    2c04:	3c180000 	lui	t8,0x0
    2c08:	a60f0140 	sh	t7,320(s0)
    2c0c:	27180000 	addiu	t8,t8,0
    2c10:	24420000 	addiu	v0,v0,0
    2c14:	03022823 	subu	a1,t8,v0
    2c18:	3c060000 	lui	a2,0x0
    2c1c:	24c60000 	addiu	a2,a2,0
    2c20:	afa5002c 	sw	a1,44(sp)
    2c24:	afa20030 	sw	v0,48(sp)
    2c28:	8fa40048 	lw	a0,72(sp)
    2c2c:	0c000000 	jal	0 <func_800ADBB0>
    2c30:	240705c9 	li	a3,1481
    2c34:	14400007 	bnez	v0,2c54 <L800B07AC+0x58>
    2c38:	ae020128 	sw	v0,296(s0)
    2c3c:	3c040000 	lui	a0,0x0
    2c40:	3c050000 	lui	a1,0x0
    2c44:	24a50000 	addiu	a1,a1,0
    2c48:	24840000 	addiu	a0,a0,0
    2c4c:	0c000000 	jal	0 <func_800ADBB0>
    2c50:	240605ca 	li	a2,1482
    2c54:	8e040128 	lw	a0,296(s0)
    2c58:	3c070000 	lui	a3,0x0
    2c5c:	241905cb 	li	t9,1483
    2c60:	afb90010 	sw	t9,16(sp)
    2c64:	24e70000 	addiu	a3,a3,0
    2c68:	8fa50030 	lw	a1,48(sp)
    2c6c:	0c000000 	jal	0 <func_800ADBB0>
    2c70:	8fa6002c 	lw	a2,44(sp)
    2c74:	3c030000 	lui	v1,0x0
    2c78:	3c090000 	lui	t1,0x0
    2c7c:	25290000 	addiu	t1,t1,0
    2c80:	24630000 	addiu	v1,v1,0
    2c84:	01232823 	subu	a1,t1,v1
    2c88:	3c060000 	lui	a2,0x0
    2c8c:	24c60000 	addiu	a2,a2,0
    2c90:	afa5002c 	sw	a1,44(sp)
    2c94:	afa30030 	sw	v1,48(sp)
    2c98:	8fa40048 	lw	a0,72(sp)
    2c9c:	0c000000 	jal	0 <func_800ADBB0>
    2ca0:	240705ce 	li	a3,1486
    2ca4:	14400007 	bnez	v0,2cc4 <L800B07AC+0xc8>
    2ca8:	ae020130 	sw	v0,304(s0)
    2cac:	3c040000 	lui	a0,0x0
    2cb0:	3c050000 	lui	a1,0x0
    2cb4:	24a50000 	addiu	a1,a1,0
    2cb8:	24840000 	addiu	a0,a0,0
    2cbc:	0c000000 	jal	0 <func_800ADBB0>
    2cc0:	240605cf 	li	a2,1487
    2cc4:	8e040130 	lw	a0,304(s0)
    2cc8:	3c070000 	lui	a3,0x0
    2ccc:	240b05d0 	li	t3,1488
    2cd0:	afab0010 	sw	t3,16(sp)
    2cd4:	24e70000 	addiu	a3,a3,0
    2cd8:	8fa50030 	lw	a1,48(sp)
    2cdc:	0c000000 	jal	0 <func_800ADBB0>
    2ce0:	8fa6002c 	lw	a2,44(sp)
    2ce4:	3c010000 	lui	at,0x0
    2ce8:	c4300000 	lwc1	$f16,0(at)
    2cec:	10000167 	b	328c <L800B0E3C>
    2cf0:	e6100148 	swc1	$f16,328(s0)

00002cf4 <L800B08A4>:
    2cf4:	240a0001 	li	t2,1
    2cf8:	3c020000 	lui	v0,0x0
    2cfc:	3c0c0000 	lui	t4,0x0
    2d00:	a60a0140 	sh	t2,320(s0)
    2d04:	258c0000 	addiu	t4,t4,0
    2d08:	24420000 	addiu	v0,v0,0
    2d0c:	01822823 	subu	a1,t4,v0
    2d10:	3c060000 	lui	a2,0x0
    2d14:	24c60000 	addiu	a2,a2,0
    2d18:	afa5002c 	sw	a1,44(sp)
    2d1c:	afa20030 	sw	v0,48(sp)
    2d20:	8fa40048 	lw	a0,72(sp)
    2d24:	0c000000 	jal	0 <func_800ADBB0>
    2d28:	240705e8 	li	a3,1512
    2d2c:	14400007 	bnez	v0,2d4c <L800B08A4+0x58>
    2d30:	ae020128 	sw	v0,296(s0)
    2d34:	3c040000 	lui	a0,0x0
    2d38:	3c050000 	lui	a1,0x0
    2d3c:	24a50000 	addiu	a1,a1,0
    2d40:	24840000 	addiu	a0,a0,0
    2d44:	0c000000 	jal	0 <func_800ADBB0>
    2d48:	240605e9 	li	a2,1513
    2d4c:	8e040128 	lw	a0,296(s0)
    2d50:	3c070000 	lui	a3,0x0
    2d54:	240d05ea 	li	t5,1514
    2d58:	afad0010 	sw	t5,16(sp)
    2d5c:	24e70000 	addiu	a3,a3,0
    2d60:	8fa50030 	lw	a1,48(sp)
    2d64:	0c000000 	jal	0 <func_800ADBB0>
    2d68:	8fa6002c 	lw	a2,44(sp)
    2d6c:	3c030000 	lui	v1,0x0
    2d70:	3c0e0000 	lui	t6,0x0
    2d74:	25ce0000 	addiu	t6,t6,0
    2d78:	24630000 	addiu	v1,v1,0
    2d7c:	01c32823 	subu	a1,t6,v1
    2d80:	3c060000 	lui	a2,0x0
    2d84:	24c60000 	addiu	a2,a2,0
    2d88:	afa5002c 	sw	a1,44(sp)
    2d8c:	afa30030 	sw	v1,48(sp)
    2d90:	8fa40048 	lw	a0,72(sp)
    2d94:	0c000000 	jal	0 <func_800ADBB0>
    2d98:	240705ed 	li	a3,1517
    2d9c:	14400007 	bnez	v0,2dbc <L800B08A4+0xc8>
    2da0:	ae020130 	sw	v0,304(s0)
    2da4:	3c040000 	lui	a0,0x0
    2da8:	3c050000 	lui	a1,0x0
    2dac:	24a50000 	addiu	a1,a1,0
    2db0:	24840000 	addiu	a0,a0,0
    2db4:	0c000000 	jal	0 <func_800ADBB0>
    2db8:	240605ee 	li	a2,1518
    2dbc:	8e040130 	lw	a0,304(s0)
    2dc0:	3c070000 	lui	a3,0x0
    2dc4:	240f05ef 	li	t7,1519
    2dc8:	afaf0010 	sw	t7,16(sp)
    2dcc:	24e70000 	addiu	a3,a3,0
    2dd0:	8fa50030 	lw	a1,48(sp)
    2dd4:	0c000000 	jal	0 <func_800ADBB0>
    2dd8:	8fa6002c 	lw	a2,44(sp)
    2ddc:	1000012c 	b	3290 <L800B0E3C+0x4>
    2de0:	8fbf0024 	lw	ra,36(sp)

00002de4 <L800B0994>:
    2de4:	24180001 	li	t8,1
    2de8:	3c020000 	lui	v0,0x0
    2dec:	3c190000 	lui	t9,0x0
    2df0:	a6180140 	sh	t8,320(s0)
    2df4:	27390000 	addiu	t9,t9,0
    2df8:	24420000 	addiu	v0,v0,0
    2dfc:	03222823 	subu	a1,t9,v0
    2e00:	3c060000 	lui	a2,0x0
    2e04:	24c60000 	addiu	a2,a2,0
    2e08:	afa5002c 	sw	a1,44(sp)
    2e0c:	afa20030 	sw	v0,48(sp)
    2e10:	8fa40048 	lw	a0,72(sp)
    2e14:	0c000000 	jal	0 <func_800ADBB0>
    2e18:	240705f6 	li	a3,1526
    2e1c:	14400007 	bnez	v0,2e3c <L800B0994+0x58>
    2e20:	ae020128 	sw	v0,296(s0)
    2e24:	3c040000 	lui	a0,0x0
    2e28:	3c050000 	lui	a1,0x0
    2e2c:	24a50000 	addiu	a1,a1,0
    2e30:	24840000 	addiu	a0,a0,0
    2e34:	0c000000 	jal	0 <func_800ADBB0>
    2e38:	240605f7 	li	a2,1527
    2e3c:	8e040128 	lw	a0,296(s0)
    2e40:	3c070000 	lui	a3,0x0
    2e44:	240905f8 	li	t1,1528
    2e48:	afa90010 	sw	t1,16(sp)
    2e4c:	24e70000 	addiu	a3,a3,0
    2e50:	8fa50030 	lw	a1,48(sp)
    2e54:	0c000000 	jal	0 <func_800ADBB0>
    2e58:	8fa6002c 	lw	a2,44(sp)
    2e5c:	3c030000 	lui	v1,0x0
    2e60:	3c0b0000 	lui	t3,0x0
    2e64:	256b0000 	addiu	t3,t3,0
    2e68:	24630000 	addiu	v1,v1,0
    2e6c:	01632823 	subu	a1,t3,v1
    2e70:	3c060000 	lui	a2,0x0
    2e74:	24c60000 	addiu	a2,a2,0
    2e78:	afa5002c 	sw	a1,44(sp)
    2e7c:	afa30030 	sw	v1,48(sp)
    2e80:	8fa40048 	lw	a0,72(sp)
    2e84:	0c000000 	jal	0 <func_800ADBB0>
    2e88:	240705fb 	li	a3,1531
    2e8c:	14400007 	bnez	v0,2eac <L800B0994+0xc8>
    2e90:	ae020130 	sw	v0,304(s0)
    2e94:	3c040000 	lui	a0,0x0
    2e98:	3c050000 	lui	a1,0x0
    2e9c:	24a50000 	addiu	a1,a1,0
    2ea0:	24840000 	addiu	a0,a0,0
    2ea4:	0c000000 	jal	0 <func_800ADBB0>
    2ea8:	240605fc 	li	a2,1532
    2eac:	8e040130 	lw	a0,304(s0)
    2eb0:	3c070000 	lui	a3,0x0
    2eb4:	240a05fd 	li	t2,1533
    2eb8:	afaa0010 	sw	t2,16(sp)
    2ebc:	24e70000 	addiu	a3,a3,0
    2ec0:	8fa50030 	lw	a1,48(sp)
    2ec4:	0c000000 	jal	0 <func_800ADBB0>
    2ec8:	8fa6002c 	lw	a2,44(sp)
    2ecc:	100000f0 	b	3290 <L800B0E3C+0x4>
    2ed0:	8fbf0024 	lw	ra,36(sp)

00002ed4 <L800B0A84>:
    2ed4:	240c0002 	li	t4,2
    2ed8:	3c020000 	lui	v0,0x0
    2edc:	3c0d0000 	lui	t5,0x0
    2ee0:	a60c0140 	sh	t4,320(s0)
    2ee4:	25ad0000 	addiu	t5,t5,0
    2ee8:	24420000 	addiu	v0,v0,0
    2eec:	01a22823 	subu	a1,t5,v0
    2ef0:	3c060000 	lui	a2,0x0
    2ef4:	24c60000 	addiu	a2,a2,0
    2ef8:	afa5002c 	sw	a1,44(sp)
    2efc:	afa20030 	sw	v0,48(sp)
    2f00:	8fa40048 	lw	a0,72(sp)
    2f04:	0c000000 	jal	0 <func_800ADBB0>
    2f08:	24070604 	li	a3,1540
    2f0c:	14400007 	bnez	v0,2f2c <L800B0A84+0x58>
    2f10:	ae020128 	sw	v0,296(s0)
    2f14:	3c040000 	lui	a0,0x0
    2f18:	3c050000 	lui	a1,0x0
    2f1c:	24a50000 	addiu	a1,a1,0
    2f20:	24840000 	addiu	a0,a0,0
    2f24:	0c000000 	jal	0 <func_800ADBB0>
    2f28:	24060605 	li	a2,1541
    2f2c:	8e040128 	lw	a0,296(s0)
    2f30:	3c070000 	lui	a3,0x0
    2f34:	240e0606 	li	t6,1542
    2f38:	afae0010 	sw	t6,16(sp)
    2f3c:	24e70000 	addiu	a3,a3,0
    2f40:	8fa50030 	lw	a1,48(sp)
    2f44:	0c000000 	jal	0 <func_800ADBB0>
    2f48:	8fa6002c 	lw	a2,44(sp)
    2f4c:	3c030000 	lui	v1,0x0
    2f50:	3c0f0000 	lui	t7,0x0
    2f54:	25ef0000 	addiu	t7,t7,0
    2f58:	24630000 	addiu	v1,v1,0
    2f5c:	01e32823 	subu	a1,t7,v1
    2f60:	3c060000 	lui	a2,0x0
    2f64:	24c60000 	addiu	a2,a2,0
    2f68:	afa5002c 	sw	a1,44(sp)
    2f6c:	afa30030 	sw	v1,48(sp)
    2f70:	8fa40048 	lw	a0,72(sp)
    2f74:	0c000000 	jal	0 <func_800ADBB0>
    2f78:	24070609 	li	a3,1545
    2f7c:	14400007 	bnez	v0,2f9c <L800B0A84+0xc8>
    2f80:	ae020130 	sw	v0,304(s0)
    2f84:	3c040000 	lui	a0,0x0
    2f88:	3c050000 	lui	a1,0x0
    2f8c:	24a50000 	addiu	a1,a1,0
    2f90:	24840000 	addiu	a0,a0,0
    2f94:	0c000000 	jal	0 <func_800ADBB0>
    2f98:	2406060a 	li	a2,1546
    2f9c:	8e040130 	lw	a0,304(s0)
    2fa0:	3c070000 	lui	a3,0x0
    2fa4:	2418060b 	li	t8,1547
    2fa8:	afb80010 	sw	t8,16(sp)
    2fac:	24e70000 	addiu	a3,a3,0
    2fb0:	8fa50030 	lw	a1,48(sp)
    2fb4:	0c000000 	jal	0 <func_800ADBB0>
    2fb8:	8fa6002c 	lw	a2,44(sp)
    2fbc:	100000b4 	b	3290 <L800B0E3C+0x4>
    2fc0:	8fbf0024 	lw	ra,36(sp)

00002fc4 <L800B0B74>:
    2fc4:	24190002 	li	t9,2
    2fc8:	3c020000 	lui	v0,0x0
    2fcc:	3c090000 	lui	t1,0x0
    2fd0:	a6190140 	sh	t9,320(s0)
    2fd4:	25290000 	addiu	t1,t1,0
    2fd8:	24420000 	addiu	v0,v0,0
    2fdc:	01222823 	subu	a1,t1,v0
    2fe0:	3c060000 	lui	a2,0x0
    2fe4:	24c60000 	addiu	a2,a2,0
    2fe8:	afa5002c 	sw	a1,44(sp)
    2fec:	afa20030 	sw	v0,48(sp)
    2ff0:	8fa40048 	lw	a0,72(sp)
    2ff4:	0c000000 	jal	0 <func_800ADBB0>
    2ff8:	24070618 	li	a3,1560
    2ffc:	14400007 	bnez	v0,301c <L800B0B74+0x58>
    3000:	ae020128 	sw	v0,296(s0)
    3004:	3c040000 	lui	a0,0x0
    3008:	3c050000 	lui	a1,0x0
    300c:	24a50000 	addiu	a1,a1,0
    3010:	24840000 	addiu	a0,a0,0
    3014:	0c000000 	jal	0 <func_800ADBB0>
    3018:	24060619 	li	a2,1561
    301c:	8e040128 	lw	a0,296(s0)
    3020:	3c070000 	lui	a3,0x0
    3024:	240b061a 	li	t3,1562
    3028:	afab0010 	sw	t3,16(sp)
    302c:	24e70000 	addiu	a3,a3,0
    3030:	8fa50030 	lw	a1,48(sp)
    3034:	0c000000 	jal	0 <func_800ADBB0>
    3038:	8fa6002c 	lw	a2,44(sp)
    303c:	3c030000 	lui	v1,0x0
    3040:	3c0a0000 	lui	t2,0x0
    3044:	254a0000 	addiu	t2,t2,0
    3048:	24630000 	addiu	v1,v1,0
    304c:	01432823 	subu	a1,t2,v1
    3050:	3c060000 	lui	a2,0x0
    3054:	24c60000 	addiu	a2,a2,0
    3058:	afa5002c 	sw	a1,44(sp)
    305c:	afa30030 	sw	v1,48(sp)
    3060:	8fa40048 	lw	a0,72(sp)
    3064:	0c000000 	jal	0 <func_800ADBB0>
    3068:	2407061d 	li	a3,1565
    306c:	14400007 	bnez	v0,308c <L800B0B74+0xc8>
    3070:	ae020130 	sw	v0,304(s0)
    3074:	3c040000 	lui	a0,0x0
    3078:	3c050000 	lui	a1,0x0
    307c:	24a50000 	addiu	a1,a1,0
    3080:	24840000 	addiu	a0,a0,0
    3084:	0c000000 	jal	0 <func_800ADBB0>
    3088:	2406061e 	li	a2,1566
    308c:	8e040130 	lw	a0,304(s0)
    3090:	3c070000 	lui	a3,0x0
    3094:	240c061f 	li	t4,1567
    3098:	afac0010 	sw	t4,16(sp)
    309c:	24e70000 	addiu	a3,a3,0
    30a0:	8fa50030 	lw	a1,48(sp)
    30a4:	0c000000 	jal	0 <func_800ADBB0>
    30a8:	8fa6002c 	lw	a2,44(sp)
    30ac:	10000078 	b	3290 <L800B0E3C+0x4>
    30b0:	8fbf0024 	lw	ra,36(sp)

000030b4 <L800B0C64>:
    30b4:	240d0002 	li	t5,2
    30b8:	3c020000 	lui	v0,0x0
    30bc:	3c0e0000 	lui	t6,0x0
    30c0:	a60d0140 	sh	t5,320(s0)
    30c4:	25ce0000 	addiu	t6,t6,0
    30c8:	24420000 	addiu	v0,v0,0
    30cc:	01c22823 	subu	a1,t6,v0
    30d0:	3c060000 	lui	a2,0x0
    30d4:	24c60000 	addiu	a2,a2,0
    30d8:	afa5002c 	sw	a1,44(sp)
    30dc:	afa20030 	sw	v0,48(sp)
    30e0:	8fa40048 	lw	a0,72(sp)
    30e4:	0c000000 	jal	0 <func_800ADBB0>
    30e8:	24070626 	li	a3,1574
    30ec:	14400007 	bnez	v0,310c <L800B0C64+0x58>
    30f0:	ae020128 	sw	v0,296(s0)
    30f4:	3c040000 	lui	a0,0x0
    30f8:	3c050000 	lui	a1,0x0
    30fc:	24a50000 	addiu	a1,a1,0
    3100:	24840000 	addiu	a0,a0,0
    3104:	0c000000 	jal	0 <func_800ADBB0>
    3108:	24060627 	li	a2,1575
    310c:	8e040128 	lw	a0,296(s0)
    3110:	3c070000 	lui	a3,0x0
    3114:	240f0628 	li	t7,1576
    3118:	afaf0010 	sw	t7,16(sp)
    311c:	24e70000 	addiu	a3,a3,0
    3120:	8fa50030 	lw	a1,48(sp)
    3124:	0c000000 	jal	0 <func_800ADBB0>
    3128:	8fa6002c 	lw	a2,44(sp)
    312c:	3c030000 	lui	v1,0x0
    3130:	3c180000 	lui	t8,0x0
    3134:	27180000 	addiu	t8,t8,0
    3138:	24630000 	addiu	v1,v1,0
    313c:	03032823 	subu	a1,t8,v1
    3140:	3c060000 	lui	a2,0x0
    3144:	24c60000 	addiu	a2,a2,0
    3148:	afa5002c 	sw	a1,44(sp)
    314c:	afa30030 	sw	v1,48(sp)
    3150:	8fa40048 	lw	a0,72(sp)
    3154:	0c000000 	jal	0 <func_800ADBB0>
    3158:	2407062b 	li	a3,1579
    315c:	14400007 	bnez	v0,317c <L800B0C64+0xc8>
    3160:	ae020130 	sw	v0,304(s0)
    3164:	3c040000 	lui	a0,0x0
    3168:	3c050000 	lui	a1,0x0
    316c:	24a50000 	addiu	a1,a1,0
    3170:	24840000 	addiu	a0,a0,0
    3174:	0c000000 	jal	0 <func_800ADBB0>
    3178:	2406062c 	li	a2,1580
    317c:	8e040130 	lw	a0,304(s0)
    3180:	3c070000 	lui	a3,0x0
    3184:	2419062d 	li	t9,1581
    3188:	afb90010 	sw	t9,16(sp)
    318c:	24e70000 	addiu	a3,a3,0
    3190:	8fa50030 	lw	a1,48(sp)
    3194:	0c000000 	jal	0 <func_800ADBB0>
    3198:	8fa6002c 	lw	a2,44(sp)
    319c:	1000003c 	b	3290 <L800B0E3C+0x4>
    31a0:	8fbf0024 	lw	ra,36(sp)

000031a4 <L800B0D54>:
    31a4:	24090002 	li	t1,2
    31a8:	3c020000 	lui	v0,0x0
    31ac:	3c0b0000 	lui	t3,0x0
    31b0:	a6090140 	sh	t1,320(s0)
    31b4:	256b0000 	addiu	t3,t3,0
    31b8:	24420000 	addiu	v0,v0,0
    31bc:	01622823 	subu	a1,t3,v0
    31c0:	3c060000 	lui	a2,0x0
    31c4:	24c60000 	addiu	a2,a2,0
    31c8:	afa5002c 	sw	a1,44(sp)
    31cc:	afa20030 	sw	v0,48(sp)
    31d0:	8fa40048 	lw	a0,72(sp)
    31d4:	0c000000 	jal	0 <func_800ADBB0>
    31d8:	24070634 	li	a3,1588
    31dc:	14400007 	bnez	v0,31fc <L800B0D54+0x58>
    31e0:	ae020128 	sw	v0,296(s0)
    31e4:	3c040000 	lui	a0,0x0
    31e8:	3c050000 	lui	a1,0x0
    31ec:	24a50000 	addiu	a1,a1,0
    31f0:	24840000 	addiu	a0,a0,0
    31f4:	0c000000 	jal	0 <func_800ADBB0>
    31f8:	24060635 	li	a2,1589
    31fc:	8e040128 	lw	a0,296(s0)
    3200:	3c070000 	lui	a3,0x0
    3204:	240a0636 	li	t2,1590
    3208:	afaa0010 	sw	t2,16(sp)
    320c:	24e70000 	addiu	a3,a3,0
    3210:	8fa50030 	lw	a1,48(sp)
    3214:	0c000000 	jal	0 <func_800ADBB0>
    3218:	8fa6002c 	lw	a2,44(sp)
    321c:	3c030000 	lui	v1,0x0
    3220:	3c0c0000 	lui	t4,0x0
    3224:	258c0000 	addiu	t4,t4,0
    3228:	24630000 	addiu	v1,v1,0
    322c:	01832823 	subu	a1,t4,v1
    3230:	3c060000 	lui	a2,0x0
    3234:	24c60000 	addiu	a2,a2,0
    3238:	afa5002c 	sw	a1,44(sp)
    323c:	afa30030 	sw	v1,48(sp)
    3240:	8fa40048 	lw	a0,72(sp)
    3244:	0c000000 	jal	0 <func_800ADBB0>
    3248:	24070639 	li	a3,1593
    324c:	14400007 	bnez	v0,326c <L800B0D54+0xc8>
    3250:	ae020130 	sw	v0,304(s0)
    3254:	3c040000 	lui	a0,0x0
    3258:	3c050000 	lui	a1,0x0
    325c:	24a50000 	addiu	a1,a1,0
    3260:	24840000 	addiu	a0,a0,0
    3264:	0c000000 	jal	0 <func_800ADBB0>
    3268:	2406063a 	li	a2,1594
    326c:	8e040130 	lw	a0,304(s0)
    3270:	3c070000 	lui	a3,0x0
    3274:	240d063b 	li	t5,1595
    3278:	afad0010 	sw	t5,16(sp)
    327c:	24e70000 	addiu	a3,a3,0
    3280:	8fa50030 	lw	a1,48(sp)
    3284:	0c000000 	jal	0 <func_800ADBB0>
    3288:	8fa6002c 	lw	a2,44(sp)

0000328c <L800B0E3C>:
    328c:	8fbf0024 	lw	ra,36(sp)
    3290:	8fb00020 	lw	s0,32(sp)
    3294:	27bd0048 	addiu	sp,sp,72
    3298:	03e00008 	jr	ra
    329c:	00000000 	nop

000032a0 <func_800B0E50>:
    32a0:	27bdffe0 	addiu	sp,sp,-32
    32a4:	44800000 	mtc1	zero,$f0
    32a8:	afbf001c 	sw	ra,28(sp)
    32ac:	afb00018 	sw	s0,24(sp)
    32b0:	afa40020 	sw	a0,32(sp)
    32b4:	afa60028 	sw	a2,40(sp)
    32b8:	a4a00140 	sh	zero,320(a1)
    32bc:	e4a00144 	swc1	$f0,324(a1)
    32c0:	e4a00148 	swc1	$f0,328(a1)
    32c4:	e4a0014c 	swc1	$f0,332(a1)
    32c8:	00a08025 	move	s0,a1
    32cc:	87a6002a 	lh	a2,42(sp)
    32d0:	0c000000 	jal	0 <func_800ADBB0>
    32d4:	8fa40020 	lw	a0,32(sp)
    32d8:	3c040000 	lui	a0,0x0
    32dc:	24840000 	addiu	a0,a0,0
    32e0:	0c000000 	jal	0 <func_800ADBB0>
    32e4:	87a5002a 	lh	a1,42(sp)
    32e8:	87ae002a 	lh	t6,42(sp)
    32ec:	3c040000 	lui	a0,0x0
    32f0:	51c0005f 	beqzl	t6,3470 <func_800B0E50+0x1d0>
    32f4:	8fbf001c 	lw	ra,28(sp)
    32f8:	0c000000 	jal	0 <func_800ADBB0>
    32fc:	24840000 	addiu	a0,a0,0
    3300:	860f0140 	lh	t7,320(s0)
    3304:	8fa40020 	lw	a0,32(sp)
    3308:	24053840 	li	a1,14400
    330c:	11e00022 	beqz	t7,3398 <func_800B0E50+0xf8>
    3310:	3c060000 	lui	a2,0x0
    3314:	3c060000 	lui	a2,0x0
    3318:	24c60000 	addiu	a2,a2,0
    331c:	8fa40020 	lw	a0,32(sp)
    3320:	24052580 	li	a1,9600
    3324:	0c000000 	jal	0 <func_800ADBB0>
    3328:	24070664 	li	a3,1636
    332c:	14400007 	bnez	v0,334c <func_800B0E50+0xac>
    3330:	ae020134 	sw	v0,308(s0)
    3334:	3c040000 	lui	a0,0x0
    3338:	3c050000 	lui	a1,0x0
    333c:	24a50000 	addiu	a1,a1,0
    3340:	24840000 	addiu	a0,a0,0
    3344:	0c000000 	jal	0 <func_800ADBB0>
    3348:	24060665 	li	a2,1637
    334c:	3c060000 	lui	a2,0x0
    3350:	24c60000 	addiu	a2,a2,0
    3354:	8fa40020 	lw	a0,32(sp)
    3358:	24051000 	li	a1,4096
    335c:	0c000000 	jal	0 <func_800ADBB0>
    3360:	24070667 	li	a3,1639
    3364:	14400007 	bnez	v0,3384 <func_800B0E50+0xe4>
    3368:	ae02013c 	sw	v0,316(s0)
    336c:	3c040000 	lui	a0,0x0
    3370:	3c050000 	lui	a1,0x0
    3374:	24a50000 	addiu	a1,a1,0
    3378:	24840000 	addiu	a0,a0,0
    337c:	0c000000 	jal	0 <func_800ADBB0>
    3380:	24060668 	li	a2,1640
    3384:	02002025 	move	a0,s0
    3388:	0c000000 	jal	0 <func_800ADBB0>
    338c:	87a5002a 	lh	a1,42(sp)
    3390:	10000033 	b	3460 <func_800B0E50+0x1c0>
    3394:	00000000 	nop
    3398:	24c60000 	addiu	a2,a2,0
    339c:	0c000000 	jal	0 <func_800ADBB0>
    33a0:	2407066b 	li	a3,1643
    33a4:	14400007 	bnez	v0,33c4 <func_800B0E50+0x124>
    33a8:	ae020134 	sw	v0,308(s0)
    33ac:	3c040000 	lui	a0,0x0
    33b0:	3c050000 	lui	a1,0x0
    33b4:	24a50000 	addiu	a1,a1,0
    33b8:	24840000 	addiu	a0,a0,0
    33bc:	0c000000 	jal	0 <func_800ADBB0>
    33c0:	2406066c 	li	a2,1644
    33c4:	87b8002a 	lh	t8,42(sp)
    33c8:	24010005 	li	at,5
    33cc:	8fa40020 	lw	a0,32(sp)
    33d0:	17010014 	bne	t8,at,3424 <func_800B0E50+0x184>
    33d4:	24050a00 	li	a1,2560
    33d8:	3c060000 	lui	a2,0x0
    33dc:	24c60000 	addiu	a2,a2,0
    33e0:	8fa40020 	lw	a0,32(sp)
    33e4:	24050c00 	li	a1,3072
    33e8:	0c000000 	jal	0 <func_800ADBB0>
    33ec:	24070670 	li	a3,1648
    33f0:	14400007 	bnez	v0,3410 <func_800B0E50+0x170>
    33f4:	ae02013c 	sw	v0,316(s0)
    33f8:	3c040000 	lui	a0,0x0
    33fc:	3c050000 	lui	a1,0x0
    3400:	24a50000 	addiu	a1,a1,0
    3404:	24840000 	addiu	a0,a0,0
    3408:	0c000000 	jal	0 <func_800ADBB0>
    340c:	24060671 	li	a2,1649
    3410:	02002025 	move	a0,s0
    3414:	0c000000 	jal	0 <func_800ADBB0>
    3418:	24050006 	li	a1,6
    341c:	10000010 	b	3460 <func_800B0E50+0x1c0>
    3420:	00000000 	nop
    3424:	3c060000 	lui	a2,0x0
    3428:	24c60000 	addiu	a2,a2,0
    342c:	0c000000 	jal	0 <func_800ADBB0>
    3430:	24070675 	li	a3,1653
    3434:	14400007 	bnez	v0,3454 <func_800B0E50+0x1b4>
    3438:	ae02013c 	sw	v0,316(s0)
    343c:	3c040000 	lui	a0,0x0
    3440:	3c050000 	lui	a1,0x0
    3444:	24a50000 	addiu	a1,a1,0
    3448:	24840000 	addiu	a0,a0,0
    344c:	0c000000 	jal	0 <func_800ADBB0>
    3450:	24060676 	li	a2,1654
    3454:	02002025 	move	a0,s0
    3458:	0c000000 	jal	0 <func_800ADBB0>
    345c:	24050005 	li	a1,5
    3460:	3c040000 	lui	a0,0x0
    3464:	0c000000 	jal	0 <func_800ADBB0>
    3468:	24840000 	addiu	a0,a0,0
    346c:	8fbf001c 	lw	ra,28(sp)
    3470:	8fb00018 	lw	s0,24(sp)
    3474:	27bd0020 	addiu	sp,sp,32
    3478:	03e00008 	jr	ra
    347c:	00000000 	nop
