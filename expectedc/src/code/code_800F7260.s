
build/src/code/code_800F7260.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800F7260>:
       0:	afa40000 	sw	a0,0(sp)
       4:	3c050000 	lui	a1,0x0
       8:	3084ffff 	andi	a0,a0,0xffff
       c:	24a50000 	addiu	a1,a1,0
      10:	00001025 	move	v0,zero
      14:	24060001 	li	a2,1
      18:	308e0001 	andi	t6,a0,0x1
      1c:	11c00004 	beqz	t6,30 <func_800F7260+0x30>
      20:	00801825 	move	v1,a0
      24:	00a27821 	addu	t7,a1,v0
      28:	10000003 	b	38 <func_800F7260+0x38>
      2c:	a1e60000 	sb	a2,0(t7)
      30:	00a2c021 	addu	t8,a1,v0
      34:	a3000000 	sb	zero,0(t8)
      38:	24420001 	addiu	v0,v0,1
      3c:	304200ff 	andi	v0,v0,0xff
      40:	28410007 	slti	at,v0,7
      44:	00032043 	sra	a0,v1,0x1
      48:	1420fff3 	bnez	at,18 <func_800F7260+0x18>
      4c:	3084ffff 	andi	a0,a0,0xffff
      50:	03e00008 	jr	ra
      54:	00000000 	nop

00000058 <func_800F72B8>:
      58:	27bdffe8 	addiu	sp,sp,-24
      5c:	afa40018 	sw	a0,24(sp)
      60:	3c020000 	lui	v0,0x0
      64:	93af001b 	lbu	t7,27(sp)
      68:	24420000 	addiu	v0,v0,0
      6c:	944e0000 	lhu	t6,0(v0)
      70:	24180001 	li	t8,1
      74:	01f8c804 	sllv	t9,t8,t7
      78:	afbf0014 	sw	ra,20(sp)
      7c:	01d94025 	or	t0,t6,t9
      80:	a4480000 	sh	t0,0(v0)
      84:	00002025 	move	a0,zero
      88:	24050002 	li	a1,2
      8c:	24060040 	li	a2,64
      90:	0c000000 	jal	0 <func_800F7260>
      94:	2407000f 	li	a3,15
      98:	24040003 	li	a0,3
      9c:	24050002 	li	a1,2
      a0:	24060040 	li	a2,64
      a4:	0c000000 	jal	0 <func_800F7260>
      a8:	2407000f 	li	a3,15
      ac:	8fbf0014 	lw	ra,20(sp)
      b0:	27bd0018 	addiu	sp,sp,24
      b4:	03e00008 	jr	ra
      b8:	00000000 	nop

000000bc <func_800F731C>:
      bc:	27bdffe8 	addiu	sp,sp,-24
      c0:	3c020000 	lui	v0,0x0
      c4:	24420000 	addiu	v0,v0,0
      c8:	afa40018 	sw	a0,24(sp)
      cc:	944e0000 	lhu	t6,0(v0)
      d0:	308400ff 	andi	a0,a0,0xff
      d4:	240f0001 	li	t7,1
      d8:	008fc004 	sllv	t8,t7,a0
      dc:	3b19ffff 	xori	t9,t8,0xffff
      e0:	01d94024 	and	t0,t6,t9
      e4:	3109ffff 	andi	t1,t0,0xffff
      e8:	afbf0014 	sw	ra,20(sp)
      ec:	1520000b 	bnez	t1,11c <func_800F731C+0x60>
      f0:	a4480000 	sh	t0,0(v0)
      f4:	00002025 	move	a0,zero
      f8:	24050002 	li	a1,2
      fc:	2406007f 	li	a2,127
     100:	0c000000 	jal	0 <func_800F7260>
     104:	2407000f 	li	a3,15
     108:	24040003 	li	a0,3
     10c:	24050002 	li	a1,2
     110:	2406007f 	li	a2,127
     114:	0c000000 	jal	0 <func_800F7260>
     118:	2407000f 	li	a3,15
     11c:	8fbf0014 	lw	ra,20(sp)
     120:	27bd0018 	addiu	sp,sp,24
     124:	03e00008 	jr	ra
     128:	00000000 	nop

0000012c <Audio_PlaySoundGeneral>:
     12c:	27bdfff0 	addiu	sp,sp,-16
     130:	afa40010 	sw	a0,16(sp)
     134:	3084ffff 	andi	a0,a0,0xffff
     138:	00047303 	sra	t6,a0,0xc
     13c:	31cf00ff 	andi	t7,t6,0xff
     140:	3c180000 	lui	t8,0x0
     144:	030fc021 	addu	t8,t8,t7
     148:	93180000 	lbu	t8,0(t8)
     14c:	afb00004 	sw	s0,4(sp)
     150:	afa60018 	sw	a2,24(sp)
     154:	30c600ff 	andi	a2,a2,0xff
     158:	00a08025 	move	s0,a1
     15c:	afb2000c 	sw	s2,12(sp)
     160:	17000042 	bnez	t8,26c <Audio_PlaySoundGeneral+0x140>
     164:	afb10008 	sw	s1,8(sp)
     168:	3c0b0000 	lui	t3,0x0
     16c:	256b0000 	addiu	t3,t3,0
     170:	91790000 	lbu	t9,0(t3)
     174:	240c0018 	li	t4,24
     178:	3c0f0000 	lui	t7,0x0
     17c:	032c0019 	multu	t9,t4
     180:	91ef0000 	lbu	t7,0(t7)
     184:	3c0a0000 	lui	t2,0x0
     188:	254a0000 	addiu	t2,t2,0
     18c:	3c120000 	lui	s2,0x0
     190:	3c110000 	lui	s1,0x0
     194:	3c0d0000 	lui	t5,0x0
     198:	25ad0000 	addiu	t5,t5,0
     19c:	26310000 	addiu	s1,s1,0
     1a0:	26520000 	addiu	s2,s2,0
     1a4:	00007012 	mflo	t6
     1a8:	014e1021 	addu	v0,t2,t6
     1ac:	15e00024 	bnez	t7,240 <Audio_PlaySoundGeneral+0x114>
     1b0:	00001825 	move	v1,zero
     1b4:	8fa90024 	lw	t1,36(sp)
     1b8:	8fa80020 	lw	t0,32(sp)
     1bc:	00032840 	sll	a1,v1,0x1
     1c0:	01a5c021 	addu	t8,t5,a1
     1c4:	97190000 	lhu	t9,0(t8)
     1c8:	02237021 	addu	t6,s1,v1
     1cc:	54990018 	bnel	a0,t9,230 <Audio_PlaySoundGeneral+0x104>
     1d0:	24630001 	addiu	v1,v1,1
     1d4:	91cf0000 	lbu	t7,0(t6)
     1d8:	0245c021 	addu	t8,s2,a1
     1dc:	0245c821 	addu	t9,s2,a1
     1e0:	15e00003 	bnez	t7,1f0 <Audio_PlaySoundGeneral+0xc4>
     1e4:	2403000a 	li	v1,10
     1e8:	10000010 	b	22c <Audio_PlaySoundGeneral+0x100>
     1ec:	97040000 	lhu	a0,0(t8)
     1f0:	972e0000 	lhu	t6,0(t9)
     1f4:	ac500004 	sw	s0,4(v0)
     1f8:	a0460008 	sb	a2,8(v0)
     1fc:	ac47000c 	sw	a3,12(v0)
     200:	ac480010 	sw	t0,16(v0)
     204:	ac490014 	sw	t1,20(v0)
     208:	a44e0000 	sh	t6,0(v0)
     20c:	916f0000 	lbu	t7,0(t3)
     210:	25f80001 	addiu	t8,t7,1
     214:	331900ff 	andi	t9,t8,0xff
     218:	032c0019 	multu	t9,t4
     21c:	a1780000 	sb	t8,0(t3)
     220:	00007012 	mflo	t6
     224:	014e1021 	addu	v0,t2,t6
     228:	00000000 	nop
     22c:	24630001 	addiu	v1,v1,1
     230:	306300ff 	andi	v1,v1,0xff
     234:	2861000a 	slti	at,v1,10
     238:	5420ffe1 	bnezl	at,1c0 <Audio_PlaySoundGeneral+0x94>
     23c:	00032840 	sll	a1,v1,0x1
     240:	8fa80020 	lw	t0,32(sp)
     244:	8fa90024 	lw	t1,36(sp)
     248:	a4440000 	sh	a0,0(v0)
     24c:	ac500004 	sw	s0,4(v0)
     250:	a0460008 	sb	a2,8(v0)
     254:	ac47000c 	sw	a3,12(v0)
     258:	ac480010 	sw	t0,16(v0)
     25c:	ac490014 	sw	t1,20(v0)
     260:	916f0000 	lbu	t7,0(t3)
     264:	25f80001 	addiu	t8,t7,1
     268:	a1780000 	sb	t8,0(t3)
     26c:	8fb00004 	lw	s0,4(sp)
     270:	8fb10008 	lw	s1,8(sp)
     274:	8fb2000c 	lw	s2,12(sp)
     278:	03e00008 	jr	ra
     27c:	27bd0010 	addiu	sp,sp,16

00000280 <func_800F74E0>:
     280:	3c020000 	lui	v0,0x0
     284:	3c030000 	lui	v1,0x0
     288:	90420000 	lbu	v0,0(v0)
     28c:	90630000 	lbu	v1,0(v1)
     290:	afa40000 	sw	a0,0(sp)
     294:	308400ff 	andi	a0,a0,0xff
     298:	1062005f 	beq	v1,v0,418 <L800F7628+0x50>
     29c:	00a03825 	move	a3,a1
     2a0:	3c080000 	lui	t0,0x0
     2a4:	25080000 	addiu	t0,t0,0
     2a8:	00803025 	move	a2,a0
     2ac:	24090018 	li	t1,24
     2b0:	2cc10006 	sltiu	at,a2,6
     2b4:	1020004c 	beqz	at,3e8 <L800F7628+0x20>
     2b8:	00002025 	move	a0,zero
     2bc:	00067080 	sll	t6,a2,0x2
     2c0:	3c010000 	lui	at,0x0
     2c4:	002e0821 	addu	at,at,t6
     2c8:	8c2e0000 	lw	t6,0(at)
     2cc:	01c00008 	jr	t6
     2d0:	00000000 	nop

000002d4 <L800F7534>:
     2d4:	00490019 	multu	v0,t1
     2d8:	94ef0028 	lhu	t7,40(a3)
     2dc:	31f8f000 	andi	t8,t7,0xf000
     2e0:	0000c812 	mflo	t9
     2e4:	01195021 	addu	t2,t0,t9
     2e8:	954b0000 	lhu	t3,0(t2)
     2ec:	316cf000 	andi	t4,t3,0xf000
     2f0:	170c003d 	bne	t8,t4,3e8 <L800F7628+0x20>
     2f4:	00000000 	nop
     2f8:	1000003b 	b	3e8 <L800F7628+0x20>
     2fc:	24040001 	li	a0,1

00000300 <L800F7560>:
     300:	00490019 	multu	v0,t1
     304:	94ee0028 	lhu	t6,40(a3)
     308:	31cff000 	andi	t7,t6,0xf000
     30c:	00006812 	mflo	t5
     310:	010d2821 	addu	a1,t0,t5
     314:	94b90000 	lhu	t9,0(a1)
     318:	332af000 	andi	t2,t9,0xf000
     31c:	15ea0032 	bne	t7,t2,3e8 <L800F7628+0x20>
     320:	00000000 	nop
     324:	8ceb0000 	lw	t3,0(a3)
     328:	8cb80004 	lw	t8,4(a1)
     32c:	1578002e 	bne	t3,t8,3e8 <L800F7628+0x20>
     330:	00000000 	nop
     334:	1000002c 	b	3e8 <L800F7628+0x20>
     338:	24040001 	li	a0,1

0000033c <L800F759C>:
     33c:	00490019 	multu	v0,t1
     340:	8cec0000 	lw	t4,0(a3)
     344:	00006812 	mflo	t5
     348:	010d7021 	addu	t6,t0,t5
     34c:	8dd90004 	lw	t9,4(t6)
     350:	15990025 	bne	t4,t9,3e8 <L800F7628+0x20>
     354:	00000000 	nop
     358:	10000023 	b	3e8 <L800F7628+0x20>
     35c:	24040001 	li	a0,1

00000360 <L800F75C0>:
     360:	00490019 	multu	v0,t1
     364:	8cea0000 	lw	t2,0(a3)
     368:	00007812 	mflo	t7
     36c:	010f2821 	addu	a1,t0,t7
     370:	8cab0004 	lw	t3,4(a1)
     374:	154b001c 	bne	t2,t3,3e8 <L800F7628+0x20>
     378:	00000000 	nop
     37c:	94f80028 	lhu	t8,40(a3)
     380:	94ad0000 	lhu	t5,0(a1)
     384:	170d0018 	bne	t8,t5,3e8 <L800F7628+0x20>
     388:	00000000 	nop
     38c:	10000016 	b	3e8 <L800F7628+0x20>
     390:	24040001 	li	a0,1

00000394 <L800F75F4>:
     394:	00490019 	multu	v0,t1
     398:	90ec000c 	lbu	t4,12(a3)
     39c:	00007012 	mflo	t6
     3a0:	010e2821 	addu	a1,t0,t6
     3a4:	90b90008 	lbu	t9,8(a1)
     3a8:	1599000f 	bne	t4,t9,3e8 <L800F7628+0x20>
     3ac:	00000000 	nop
     3b0:	94ef0028 	lhu	t7,40(a3)
     3b4:	94aa0000 	lhu	t2,0(a1)
     3b8:	15ea000b 	bne	t7,t2,3e8 <L800F7628+0x20>
     3bc:	00000000 	nop
     3c0:	10000009 	b	3e8 <L800F7628+0x20>
     3c4:	24040001 	li	a0,1

000003c8 <L800F7628>:
     3c8:	00490019 	multu	v0,t1
     3cc:	94eb0028 	lhu	t3,40(a3)
     3d0:	0000c012 	mflo	t8
     3d4:	01186821 	addu	t5,t0,t8
     3d8:	95ae0000 	lhu	t6,0(t5)
     3dc:	156e0002 	bne	t3,t6,3e8 <L800F7628+0x20>
     3e0:	00000000 	nop
     3e4:	24040001 	li	a0,1
     3e8:	50800008 	beqzl	a0,40c <L800F7628+0x44>
     3ec:	24420001 	addiu	v0,v0,1
     3f0:	00490019 	multu	v0,t1
     3f4:	3c030000 	lui	v1,0x0
     3f8:	00006012 	mflo	t4
     3fc:	010cc821 	addu	t9,t0,t4
     400:	a7200000 	sh	zero,0(t9)
     404:	90630000 	lbu	v1,0(v1)
     408:	24420001 	addiu	v0,v0,1
     40c:	304200ff 	andi	v0,v0,0xff
     410:	5462ffa8 	bnel	v1,v0,2b4 <func_800F74E0+0x34>
     414:	2cc10006 	sltiu	at,a2,6
     418:	03e00008 	jr	ra
     41c:	00000000 	nop

00000420 <func_800F7680>:
     420:	27bdffa8 	addiu	sp,sp,-88
     424:	3c0e0000 	lui	t6,0x0
     428:	91ce0000 	lbu	t6,0(t6)
     42c:	3c180000 	lui	t8,0x0
     430:	27180000 	addiu	t8,t8,0
     434:	000e7880 	sll	t7,t6,0x2
     438:	01ee7823 	subu	t7,t7,t6
     43c:	000f78c0 	sll	t7,t7,0x3
     440:	afbf002c 	sw	ra,44(sp)
     444:	afb50028 	sw	s5,40(sp)
     448:	afb40024 	sw	s4,36(sp)
     44c:	afb30020 	sw	s3,32(sp)
     450:	afb2001c 	sw	s2,28(sp)
     454:	afb10018 	sw	s1,24(sp)
     458:	afb00014 	sw	s0,20(sp)
     45c:	01f85021 	addu	t2,t7,t8
     460:	95450000 	lhu	a1,0(t2)
     464:	24110080 	li	s1,128
     468:	24190001 	li	t9,1
     46c:	10a00118 	beqz	a1,8d0 <func_800F7680+0x4b0>
     470:	30b5f000 	andi	s5,a1,0xf000
     474:	3c0f0000 	lui	t7,0x0
     478:	91ef0000 	lbu	t7,0(t7)
     47c:	0015ab03 	sra	s5,s5,0xc
     480:	32b500ff 	andi	s5,s5,0xff
     484:	02b97004 	sllv	t6,t9,s5
     488:	01cfc024 	and	t8,t6,t7
     48c:	13000009 	beqz	t8,4b4 <func_800F7680+0x94>
     490:	3c040000 	lui	a0,0x0
     494:	24840000 	addiu	a0,a0,0
     498:	0c000000 	jal	0 <func_800F7260>
     49c:	afaa0050 	sw	t2,80(sp)
     4a0:	8faa0050 	lw	t2,80(sp)
     4a4:	95550000 	lhu	s5,0(t2)
     4a8:	32b5f000 	andi	s5,s5,0xf000
     4ac:	0015ab03 	sra	s5,s5,0xc
     4b0:	32b500ff 	andi	s5,s5,0xff
     4b4:	3c0e0000 	lui	t6,0x0
     4b8:	25ce0000 	addiu	t6,t6,0
     4bc:	0015c880 	sll	t9,s5,0x2
     4c0:	032e4021 	addu	t0,t9,t6
     4c4:	8d0b0000 	lw	t3,0(t0)
     4c8:	240300ff 	li	v1,255
     4cc:	00006025 	move	t4,zero
     4d0:	9165002d 	lbu	a1,45(t3)
     4d4:	106500ae 	beq	v1,a1,790 <func_800F7680+0x370>
     4d8:	00a01025 	move	v0,a1
     4dc:	10a000ac 	beqz	a1,790 <func_800F7680+0x370>
     4e0:	24140030 	li	s4,48
     4e4:	3c130000 	lui	s3,0x0
     4e8:	26730000 	addiu	s3,s3,0
     4ec:	93b20043 	lbu	s2,67(sp)
     4f0:	00b40019 	multu	a1,s4
     4f4:	8d580004 	lw	t8,4(t2)
     4f8:	00007812 	mflo	t7
     4fc:	016f8021 	addu	s0,t3,t7
     500:	8e190000 	lw	t9,0(s0)
     504:	57190096 	bnel	t8,t9,760 <func_800F7680+0x340>
     508:	240300ff 	li	v1,255
     50c:	95470000 	lhu	a3,0(t2)
     510:	00077303 	sra	t6,a3,0xc
     514:	31cf00ff 	andi	t7,t6,0xff
     518:	000fc080 	sll	t8,t7,0x2
     51c:	0278c821 	addu	t9,s3,t8
     520:	8f2d0000 	lw	t5,0(t9)
     524:	30ff01ff 	andi	ra,a3,0x1ff
     528:	001ff880 	sll	ra,ra,0x2
     52c:	01bf3021 	addu	a2,t5,ra
     530:	94ce0002 	lhu	t6,2(a2)
     534:	31cf0020 	andi	t7,t6,0x20
     538:	11e00005 	beqz	t7,550 <func_800F7680+0x130>
     53c:	3c0e0000 	lui	t6,0x0
     540:	90d80000 	lbu	t8,0(a2)
     544:	92190024 	lbu	t9,36(s0)
     548:	531900e2 	beql	t8,t9,8d4 <func_800F7680+0x4b4>
     54c:	8fbf002c 	lw	ra,44(sp)
     550:	91ce0000 	lbu	t6,0(t6)
     554:	3c020000 	lui	v0,0x0
     558:	96030028 	lhu	v1,40(s0)
     55c:	000e78c0 	sll	t7,t6,0x3
     560:	01ee7823 	subu	t7,t7,t6
     564:	01f5c021 	addu	t8,t7,s5
     568:	00581021 	addu	v0,v0,t8
     56c:	90420000 	lbu	v0,0(v0)
     570:	14e30004 	bne	a3,v1,584 <func_800F7680+0x164>
     574:	00404825 	move	t1,v0
     578:	304c00ff 	andi	t4,v0,0xff
     57c:	10000027 	b	61c <func_800F7680+0x1fc>
     580:	01801825 	move	v1,t4
     584:	1580000c 	bnez	t4,5b8 <func_800F7680+0x198>
     588:	3064ffff 	andi	a0,v1,0xffff
     58c:	0004cb03 	sra	t9,a0,0xc
     590:	332e00ff 	andi	t6,t9,0xff
     594:	000e7880 	sll	t7,t6,0x2
     598:	026fc021 	addu	t8,s3,t7
     59c:	8f190000 	lw	t9,0(t8)
     5a0:	308e01ff 	andi	t6,a0,0x1ff
     5a4:	000e7880 	sll	t7,t6,0x2
     5a8:	032fc021 	addu	t8,t9,t7
     5ac:	30b100ff 	andi	s1,a1,0xff
     5b0:	1000000f 	b	5f0 <func_800F7680+0x1d0>
     5b4:	93120000 	lbu	s2,0(t8)
     5b8:	920e0024 	lbu	t6,36(s0)
     5bc:	3064ffff 	andi	a0,v1,0xffff
     5c0:	0004cb03 	sra	t9,a0,0xc
     5c4:	01d2082a 	slt	at,t6,s2
     5c8:	10200009 	beqz	at,5f0 <func_800F7680+0x1d0>
     5cc:	332f00ff 	andi	t7,t9,0xff
     5d0:	000fc080 	sll	t8,t7,0x2
     5d4:	02787021 	addu	t6,s3,t8
     5d8:	8dd90000 	lw	t9,0(t6)
     5dc:	308f01ff 	andi	t7,a0,0x1ff
     5e0:	000fc080 	sll	t8,t7,0x2
     5e4:	03387021 	addu	t6,t9,t8
     5e8:	30b100ff 	andi	s1,a1,0xff
     5ec:	91d20000 	lbu	s2,0(t6)
     5f0:	258c0001 	addiu	t4,t4,1
     5f4:	318c00ff 	andi	t4,t4,0xff
     5f8:	15890008 	bne	t4,t1,61c <func_800F7680+0x1fc>
     5fc:	01801825 	move	v1,t4
     600:	90cf0000 	lbu	t7,0(a2)
     604:	00002825 	move	a1,zero
     608:	01f2082a 	slt	at,t7,s2
     60c:	14200003 	bnez	at,61c <func_800F7680+0x1fc>
     610:	00000000 	nop
     614:	10000001 	b	61c <func_800F7680+0x1fc>
     618:	322500ff 	andi	a1,s1,0xff
     61c:	1469004f 	bne	v1,t1,75c <func_800F7680+0x33c>
     620:	00051080 	sll	v0,a1,0x2
     624:	00451023 	subu	v0,v0,a1
     628:	00021100 	sll	v0,v0,0x4
     62c:	30f90c00 	andi	t9,a3,0xc00
     630:	01bf1821 	addu	v1,t5,ra
     634:	17200007 	bnez	t9,654 <func_800F7680+0x234>
     638:	01628021 	addu	s0,t3,v0
     63c:	94780002 	lhu	t8,2(v1)
     640:	330e0004 	andi	t6,t8,0x4
     644:	55c00004 	bnezl	t6,658 <func_800F7680+0x238>
     648:	960f0026 	lhu	t7,38(s0)
     64c:	5625003c 	bnel	s1,a1,740 <func_800F7680+0x320>
     650:	920e002a 	lbu	t6,42(s0)
     654:	960f0026 	lhu	t7,38(s0)
     658:	31f90008 	andi	t9,t7,0x8
     65c:	53200014 	beqzl	t9,6b0 <func_800F7680+0x290>
     660:	914f0008 	lbu	t7,8(t2)
     664:	9218002a 	lbu	t8,42(s0)
     668:	24010001 	li	at,1
     66c:	53010010 	beql	t8,at,6b0 <func_800F7680+0x290>
     670:	914f0008 	lbu	t7,8(t2)
     674:	9204002e 	lbu	a0,46(s0)
     678:	a3ac0055 	sb	t4,85(sp)
     67c:	afaa0050 	sw	t2,80(sp)
     680:	afa8003c 	sw	t0,60(sp)
     684:	afa30048 	sw	v1,72(sp)
     688:	0c000000 	jal	0 <func_800F7260>
     68c:	afa20030 	sw	v0,48(sp)
     690:	8fa8003c 	lw	t0,60(sp)
     694:	8fa20030 	lw	v0,48(sp)
     698:	8fa30048 	lw	v1,72(sp)
     69c:	8d0e0000 	lw	t6,0(t0)
     6a0:	8faa0050 	lw	t2,80(sp)
     6a4:	93ac0055 	lbu	t4,85(sp)
     6a8:	01c28021 	addu	s0,t6,v0
     6ac:	914f0008 	lbu	t7,8(t2)
     6b0:	a20f000c 	sb	t7,12(s0)
     6b4:	8d180000 	lw	t8,0(t0)
     6b8:	95590000 	lhu	t9,0(t2)
     6bc:	240f0001 	li	t7,1
     6c0:	03027021 	addu	t6,t8,v0
     6c4:	a5d90028 	sh	t9,40(t6)
     6c8:	8d180000 	lw	t8,0(t0)
     6cc:	240e0002 	li	t6,2
     6d0:	0302c821 	addu	t9,t8,v0
     6d4:	a32f002a 	sb	t7,42(t9)
     6d8:	8d180000 	lw	t8,0(t0)
     6dc:	03027821 	addu	t7,t8,v0
     6e0:	a1ee002b 	sb	t6,43(t7)
     6e4:	8d180000 	lw	t8,0(t0)
     6e8:	8d59000c 	lw	t9,12(t2)
     6ec:	03027021 	addu	t6,t8,v0
     6f0:	add90010 	sw	t9,16(t6)
     6f4:	8d180000 	lw	t8,0(t0)
     6f8:	8d4f0010 	lw	t7,16(t2)
     6fc:	0302c821 	addu	t9,t8,v0
     700:	af2f0014 	sw	t7,20(t9)
     704:	8d180000 	lw	t8,0(t0)
     708:	8d4e0014 	lw	t6,20(t2)
     70c:	03027821 	addu	t7,t8,v0
     710:	adee0018 	sw	t6,24(t7)
     714:	8d180000 	lw	t8,0(t0)
     718:	94790002 	lhu	t9,2(v1)
     71c:	03027021 	addu	t6,t8,v0
     720:	a5d90026 	sh	t9,38(t6)
     724:	8d180000 	lw	t8,0(t0)
     728:	906f0000 	lbu	t7,0(v1)
     72c:	0302c821 	addu	t9,t8,v0
     730:	a32f0024 	sb	t7,36(t9)
     734:	10000008 	b	758 <func_800F7680+0x338>
     738:	8d0b0000 	lw	t3,0(t0)
     73c:	920e002a 	lbu	t6,42(s0)
     740:	24010005 	li	at,5
     744:	24180004 	li	t8,4
     748:	55c10004 	bnel	t6,at,75c <func_800F7680+0x33c>
     74c:	00002825 	move	a1,zero
     750:	a218002a 	sb	t8,42(s0)
     754:	8d0b0000 	lw	t3,0(t0)
     758:	00002825 	move	a1,zero
     75c:	240300ff 	li	v1,255
     760:	10a00006 	beqz	a1,77c <func_800F7680+0x35c>
     764:	00a01025 	move	v0,a1
     768:	00b40019 	multu	a1,s4
     76c:	00007812 	mflo	t7
     770:	016fc821 	addu	t9,t3,t7
     774:	9325002d 	lbu	a1,45(t9)
     778:	00a01025 	move	v0,a1
     77c:	10620004 	beq	v1,v0,790 <func_800F7680+0x370>
     780:	00000000 	nop
     784:	1440ff5a 	bnez	v0,4f0 <func_800F7680+0xd0>
     788:	00000000 	nop
     78c:	a3b20043 	sb	s2,67(sp)
     790:	3c0e0000 	lui	t6,0x0
     794:	25ce0000 	addiu	t6,t6,0
     798:	02ae3021 	addu	a2,s5,t6
     79c:	90c90000 	lbu	t1,0(a2)
     7a0:	24140030 	li	s4,48
     7a4:	3c130000 	lui	s3,0x0
     7a8:	01340019 	multu	t1,s4
     7ac:	26730000 	addiu	s3,s3,0
     7b0:	0000c012 	mflo	t8
     7b4:	01787821 	addu	t7,t3,t8
     7b8:	91f9002d 	lbu	t9,45(t7)
     7bc:	50790045 	beql	v1,t9,8d4 <func_800F7680+0x4b4>
     7c0:	8fbf002c 	lw	ra,44(sp)
     7c4:	10400042 	beqz	v0,8d0 <func_800F7680+0x4b0>
     7c8:	312500ff 	andi	a1,t1,0xff
     7cc:	00b40019 	multu	a1,s4
     7d0:	8d580004 	lw	t8,4(t2)
     7d4:	240500ff 	li	a1,255
     7d8:	00007012 	mflo	t6
     7dc:	016e1021 	addu	v0,t3,t6
     7e0:	ac580000 	sw	t8,0(v0)
     7e4:	8d4f0004 	lw	t7,4(t2)
     7e8:	25f90004 	addiu	t9,t7,4
     7ec:	ac590004 	sw	t9,4(v0)
     7f0:	8d4e0004 	lw	t6,4(t2)
     7f4:	25d80008 	addiu	t8,t6,8
     7f8:	ac580008 	sw	t8,8(v0)
     7fc:	914f0008 	lbu	t7,8(t2)
     800:	a04f000c 	sb	t7,12(v0)
     804:	8d59000c 	lw	t9,12(t2)
     808:	ac590010 	sw	t9,16(v0)
     80c:	8d4e0010 	lw	t6,16(t2)
     810:	ac4e0014 	sw	t6,20(v0)
     814:	8d580014 	lw	t8,20(t2)
     818:	ac580018 	sw	t8,24(v0)
     81c:	95470000 	lhu	a3,0(t2)
     820:	00077b03 	sra	t7,a3,0xc
     824:	31f900ff 	andi	t9,t7,0xff
     828:	00197080 	sll	t6,t9,0x2
     82c:	026ec021 	addu	t8,s3,t6
     830:	8f0f0000 	lw	t7,0(t8)
     834:	30f901ff 	andi	t9,a3,0x1ff
     838:	00197080 	sll	t6,t9,0x2
     83c:	01ee1821 	addu	v1,t7,t6
     840:	94780002 	lhu	t8,2(v1)
     844:	240e0001 	li	t6,1
     848:	a4580026 	sh	t8,38(v0)
     84c:	90790000 	lbu	t9,0(v1)
     850:	24180002 	li	t8,2
     854:	a0590024 	sb	t9,36(v0)
     858:	954f0000 	lhu	t7,0(t2)
     85c:	3c190000 	lui	t9,0x0
     860:	27390000 	addiu	t9,t9,0
     864:	a04e002a 	sb	t6,42(v0)
     868:	a058002b 	sb	t8,43(v0)
     86c:	02b92021 	addu	a0,s5,t9
     870:	a44f0028 	sh	t7,40(v0)
     874:	908f0000 	lbu	t7,0(a0)
     878:	a04f002c 	sb	t7,44(v0)
     87c:	90990000 	lbu	t9,0(a0)
     880:	8d180000 	lw	t8,0(t0)
     884:	90ce0000 	lbu	t6,0(a2)
     888:	03340019 	multu	t9,s4
     88c:	00007812 	mflo	t7
     890:	030fc821 	addu	t9,t8,t7
     894:	a32e002d 	sb	t6,45(t9)
     898:	90c90000 	lbu	t1,0(a2)
     89c:	8d0b0000 	lw	t3,0(t0)
     8a0:	01340019 	multu	t1,s4
     8a4:	a0890000 	sb	t1,0(a0)
     8a8:	0000c012 	mflo	t8
     8ac:	01787821 	addu	t7,t3,t8
     8b0:	91ee002d 	lbu	t6,45(t7)
     8b4:	31d900ff 	andi	t9,t6,0xff
     8b8:	03340019 	multu	t9,s4
     8bc:	a0ce0000 	sb	t6,0(a2)
     8c0:	0000c012 	mflo	t8
     8c4:	01787821 	addu	t7,t3,t8
     8c8:	a1e5002c 	sb	a1,44(t7)
     8cc:	a045002d 	sb	a1,45(v0)
     8d0:	8fbf002c 	lw	ra,44(sp)
     8d4:	8fb00014 	lw	s0,20(sp)
     8d8:	8fb10018 	lw	s1,24(sp)
     8dc:	8fb2001c 	lw	s2,28(sp)
     8e0:	8fb30020 	lw	s3,32(sp)
     8e4:	8fb40024 	lw	s4,36(sp)
     8e8:	8fb50028 	lw	s5,40(sp)
     8ec:	03e00008 	jr	ra
     8f0:	27bd0058 	addiu	sp,sp,88

000008f4 <func_800F7B54>:
     8f4:	27bdffd0 	addiu	sp,sp,-48
     8f8:	afa50034 	sw	a1,52(sp)
     8fc:	93b80037 	lbu	t8,55(sp)
     900:	240b0030 	li	t3,48
     904:	afb00018 	sw	s0,24(sp)
     908:	030b0019 	multu	t8,t3
     90c:	309000ff 	andi	s0,a0,0xff
     910:	3c0f0000 	lui	t7,0x0
     914:	25ef0000 	addiu	t7,t7,0
     918:	00107080 	sll	t6,s0,0x2
     91c:	01cf5021 	addu	t2,t6,t7
     920:	8d490000 	lw	t1,0(t2)
     924:	afbf001c 	sw	ra,28(sp)
     928:	afa40030 	sw	a0,48(sp)
     92c:	0000c812 	mflo	t9
     930:	01393021 	addu	a2,t1,t9
     934:	94cc0026 	lhu	t4,38(a2)
     938:	318d0008 	andi	t5,t4,0x8
     93c:	11a00009 	beqz	t5,964 <func_800F7B54+0x70>
     940:	00000000 	nop
     944:	90c4002e 	lbu	a0,46(a2)
     948:	afaa0024 	sw	t2,36(sp)
     94c:	0c000000 	jal	0 <func_800F7260>
     950:	afa6002c 	sw	a2,44(sp)
     954:	8faa0024 	lw	t2,36(sp)
     958:	8fa6002c 	lw	a2,44(sp)
     95c:	240b0030 	li	t3,48
     960:	8d490000 	lw	t1,0(t2)
     964:	3c0e0000 	lui	t6,0x0
     968:	25ce0000 	addiu	t6,t6,0
     96c:	020e1021 	addu	v0,s0,t6
     970:	904f0000 	lbu	t7,0(v0)
     974:	93a80037 	lbu	t0,55(sp)
     978:	550f0005 	bnel	t0,t7,990 <func_800F7B54+0x9c>
     97c:	90cc002d 	lbu	t4,45(a2)
     980:	90d8002c 	lbu	t8,44(a2)
     984:	10000008 	b	9a8 <func_800F7B54+0xb4>
     988:	a0580000 	sb	t8,0(v0)
     98c:	90cc002d 	lbu	t4,45(a2)
     990:	90d9002c 	lbu	t9,44(a2)
     994:	018b0019 	multu	t4,t3
     998:	00006812 	mflo	t5
     99c:	012d7021 	addu	t6,t1,t5
     9a0:	a1d9002c 	sb	t9,44(t6)
     9a4:	8d490000 	lw	t1,0(t2)
     9a8:	90d8002c 	lbu	t8,44(a2)
     9ac:	90cf002d 	lbu	t7,45(a2)
     9b0:	3c190000 	lui	t9,0x0
     9b4:	030b0019 	multu	t8,t3
     9b8:	27390000 	addiu	t9,t9,0
     9bc:	02191821 	addu	v1,s0,t9
     9c0:	240700ff 	li	a3,255
     9c4:	3c040000 	lui	a0,0x0
     9c8:	00001025 	move	v0,zero
     9cc:	00006012 	mflo	t4
     9d0:	012c6821 	addu	t5,t1,t4
     9d4:	a1af002d 	sb	t7,45(t5)
     9d8:	906e0000 	lbu	t6,0(v1)
     9dc:	a0c7002c 	sb	a3,44(a2)
     9e0:	a0ce002d 	sb	t6,45(a2)
     9e4:	906f0000 	lbu	t7,0(v1)
     9e8:	8d4c0000 	lw	t4,0(t2)
     9ec:	93b80037 	lbu	t8,55(sp)
     9f0:	01eb0019 	multu	t7,t3
     9f4:	3c0f0000 	lui	t7,0x0
     9f8:	00006812 	mflo	t5
     9fc:	018dc821 	addu	t9,t4,t5
     a00:	a338002c 	sb	t8,44(t9)
     a04:	93ae0037 	lbu	t6,55(sp)
     a08:	0010c080 	sll	t8,s0,0x2
     a0c:	0310c023 	subu	t8,t8,s0
     a10:	a06e0000 	sb	t6,0(v1)
     a14:	a0c0002a 	sb	zero,42(a2)
     a18:	91ef0000 	lbu	t7,0(t7)
     a1c:	3c190000 	lui	t9,0x0
     a20:	27390000 	addiu	t9,t9,0
     a24:	000f60c0 	sll	t4,t7,0x3
     a28:	018f6023 	subu	t4,t4,t7
     a2c:	01906821 	addu	t5,t4,s0
     a30:	008d2021 	addu	a0,a0,t5
     a34:	90840000 	lbu	a0,0(a0)
     a38:	0018c0c0 	sll	t8,t8,0x3
     a3c:	03193021 	addu	a2,t8,t9
     a40:	1880000d 	blez	a0,a78 <func_800F7B54+0x184>
     a44:	00802825 	move	a1,a0
     a48:	000270c0 	sll	t6,v0,0x3
     a4c:	00ce1821 	addu	v1,a2,t6
     a50:	906f0004 	lbu	t7,4(v1)
     a54:	550f0004 	bnel	t0,t7,a68 <func_800F7B54+0x174>
     a58:	24420001 	addiu	v0,v0,1
     a5c:	a0670004 	sb	a3,4(v1)
     a60:	308200ff 	andi	v0,a0,0xff
     a64:	24420001 	addiu	v0,v0,1
     a68:	304200ff 	andi	v0,v0,0xff
     a6c:	0045082a 	slt	at,v0,a1
     a70:	5420fff6 	bnezl	at,a4c <func_800F7B54+0x158>
     a74:	000270c0 	sll	t6,v0,0x3
     a78:	8fbf001c 	lw	ra,28(sp)
     a7c:	8fb00018 	lw	s0,24(sp)
     a80:	27bd0030 	addiu	sp,sp,48
     a84:	03e00008 	jr	ra
     a88:	00000000 	nop

00000a8c <func_800F7CEC>:
     a8c:	27bdff50 	addiu	sp,sp,-176
     a90:	afb50044 	sw	s5,68(sp)
     a94:	afb3003c 	sw	s3,60(sp)
     a98:	afb10034 	sw	s1,52(sp)
     a9c:	3c027fff 	lui	v0,0x7fff
     aa0:	afbf0054 	sw	ra,84(sp)
     aa4:	afbe0050 	sw	s8,80(sp)
     aa8:	afb7004c 	sw	s7,76(sp)
     aac:	afb60048 	sw	s6,72(sp)
     ab0:	afb40040 	sw	s4,64(sp)
     ab4:	afb20038 	sw	s2,56(sp)
     ab8:	afb00030 	sw	s0,48(sp)
     abc:	afa400b0 	sw	a0,176(sp)
     ac0:	00009825 	move	s3,zero
     ac4:	3442ffff 	ori	v0,v0,0xffff
     ac8:	27b10084 	addiu	s1,sp,132
     acc:	241500ff 	li	s5,255
     ad0:	00005825 	move	t3,zero
     ad4:	000b70c0 	sll	t6,t3,0x3
     ad8:	256b0001 	addiu	t3,t3,1
     adc:	316b00ff 	andi	t3,t3,0xff
     ae0:	29610003 	slti	at,t3,3
     ae4:	022e3821 	addu	a3,s1,t6
     ae8:	ace20000 	sw	v0,0(a3)
     aec:	1420fff9 	bnez	at,ad4 <func_800F7CEC+0x48>
     af0:	a0f50004 	sb	s5,4(a3)
     af4:	93af00b3 	lbu	t7,179(sp)
     af8:	3c190000 	lui	t9,0x0
     afc:	27390000 	addiu	t9,t9,0
     b00:	000fc080 	sll	t8,t7,0x2
     b04:	0319b021 	addu	s6,t8,t9
     b08:	8ec30000 	lw	v1,0(s6)
     b0c:	241e00ff 	li	s8,255
     b10:	00008025 	move	s0,zero
     b14:	9074002d 	lbu	s4,45(v1)
     b18:	24170030 	li	s7,48
     b1c:	240d0001 	li	t5,1
     b20:	53d40116 	beql	s8,s4,f7c <func_800F7CEC+0x4f0>
     b24:	240d0001 	li	t5,1
     b28:	02970019 	multu	s4,s7
     b2c:	00003812 	mflo	a3
     b30:	00671021 	addu	v0,v1,a3
     b34:	9044002a 	lbu	a0,42(v0)
     b38:	55a4000c 	bnel	t5,a0,b6c <func_800F7CEC+0xe0>
     b3c:	944e0028 	lhu	t6,40(v0)
     b40:	944e0028 	lhu	t6,40(v0)
     b44:	31cf0c00 	andi	t7,t6,0xc00
     b48:	51e00008 	beqzl	t7,b6c <func_800F7CEC+0xe0>
     b4c:	944e0028 	lhu	t6,40(v0)
     b50:	9058002b 	lbu	t8,43(v0)
     b54:	2719ffff 	addiu	t9,t8,-1
     b58:	a059002b 	sb	t9,43(v0)
     b5c:	8ec30000 	lw	v1,0(s6)
     b60:	10000015 	b	bb8 <func_800F7CEC+0x12c>
     b64:	00671021 	addu	v0,v1,a3
     b68:	944e0028 	lhu	t6,40(v0)
     b6c:	24010005 	li	at,5
     b70:	31cf0c00 	andi	t7,t6,0xc00
     b74:	55e00011 	bnezl	t7,bbc <func_800F7CEC+0x130>
     b78:	9058002b 	lbu	t8,43(v0)
     b7c:	1481000e 	bne	a0,at,bb8 <func_800F7CEC+0x12c>
     b80:	00002825 	move	a1,zero
     b84:	9044002e 	lbu	a0,46(v0)
     b88:	3c010602 	lui	at,0x602
     b8c:	afa70074 	sw	a3,116(sp)
     b90:	00042200 	sll	a0,a0,0x8
     b94:	0c000000 	jal	0 <func_800F7260>
     b98:	00812025 	or	a0,a0,at
     b9c:	93a400b3 	lbu	a0,179(sp)
     ba0:	0c000000 	jal	0 <func_800F7260>
     ba4:	328500ff 	andi	a1,s4,0xff
     ba8:	8fa70074 	lw	a3,116(sp)
     bac:	8ec30000 	lw	v1,0(s6)
     bb0:	240d0001 	li	t5,1
     bb4:	00671021 	addu	v0,v1,a3
     bb8:	9058002b 	lbu	t8,43(v0)
     bbc:	93a400b3 	lbu	a0,179(sp)
     bc0:	57000007 	bnezl	t8,be0 <func_800F7CEC+0x154>
     bc4:	9059002a 	lbu	t9,42(v0)
     bc8:	0c000000 	jal	0 <func_800F7260>
     bcc:	328500ff 	andi	a1,s4,0xff
     bd0:	240d0001 	li	t5,1
     bd4:	100000e2 	b	f60 <func_800F7CEC+0x4d4>
     bd8:	8ec30000 	lw	v1,0(s6)
     bdc:	9059002a 	lbu	t9,42(v0)
     be0:	00679021 	addu	s2,v1,a3
     be4:	132000de 	beqz	t9,f60 <func_800F7CEC+0x4d4>
     be8:	00000000 	nop
     bec:	8e460000 	lw	a2,0(s2)
     bf0:	3c0e0000 	lui	t6,0x0
     bf4:	25ce0000 	addiu	t6,t6,0
     bf8:	55c60005 	bnel	t6,a2,c10 <func_800F7CEC+0x184>
     bfc:	8e4f0004 	lw	t7,4(s2)
     c00:	44802000 	mtc1	zero,$f4
     c04:	10000012 	b	c50 <func_800F7CEC+0x1c4>
     c08:	e644001c 	swc1	$f4,28(s2)
     c0c:	8e4f0004 	lw	t7,4(s2)
     c10:	3c013f80 	lui	at,0x3f80
     c14:	44814000 	mtc1	at,$f8
     c18:	c5e60000 	lwc1	$f6,0(t7)
     c1c:	c4cc0000 	lwc1	$f12,0(a2)
     c20:	8e580008 	lw	t8,8(s2)
     c24:	46083002 	mul.s	$f0,$f6,$f8
     c28:	44814000 	mtc1	at,$f8
     c2c:	c7020000 	lwc1	$f2,0(t8)
     c30:	460c6282 	mul.s	$f10,$f12,$f12
     c34:	00000000 	nop
     c38:	46000402 	mul.s	$f16,$f0,$f0
     c3c:	46105480 	add.s	$f18,$f10,$f16
     c40:	46021102 	mul.s	$f4,$f2,$f2
     c44:	46122180 	add.s	$f6,$f4,$f18
     c48:	46083282 	mul.s	$f10,$f6,$f8
     c4c:	e64a001c 	swc1	$f10,28(s2)
     c50:	96590026 	lhu	t9,38(s2)
     c54:	92480024 	lbu	t0,36(s2)
     c58:	3c014f00 	lui	at,0x4f00
     c5c:	332e0010 	andi	t6,t9,0x10
     c60:	11c0000f 	beqz	t6,ca0 <func_800F7CEC+0x214>
     c64:	03c81023 	subu	v0,s8,t0
     c68:	00420019 	multu	v0,v0
     c6c:	c640001c 	lwc1	$f0,28(s2)
     c70:	00007812 	mflo	t7
     c74:	000fc080 	sll	t8,t7,0x2
     c78:	030fc023 	subu	t8,t8,t7
     c7c:	0018c080 	sll	t8,t8,0x2
     c80:	030fc023 	subu	t8,t8,t7
     c84:	0018c080 	sll	t8,t8,0x2
     c88:	030fc021 	addu	t8,t8,t7
     c8c:	0018c0c0 	sll	t8,t8,0x3
     c90:	030fc021 	addu	t8,t8,t7
     c94:	0018c100 	sll	t8,t8,0x4
     c98:	10000060 	b	e1c <func_800F7CEC+0x390>
     c9c:	ae580020 	sw	t8,32(s2)
     ca0:	c640001c 	lwc1	$f0,28(s2)
     ca4:	44818000 	mtc1	at,$f16
     ca8:	8e470008 	lw	a3,8(s2)
     cac:	3c014ee0 	lui	at,0x4ee0
     cb0:	4600803c 	c.lt.s	$f16,$f0
     cb4:	00000000 	nop
     cb8:	45020018 	bc1fl	d1c <func_800F7CEC+0x290>
     cbc:	444ef800 	cfc1	t6,$31
     cc0:	44812000 	mtc1	at,$f4
     cc4:	8e460000 	lw	a2,0(s2)
     cc8:	96450028 	lhu	a1,40(s2)
     ccc:	e644001c 	swc1	$f4,28(s2)
     cd0:	c4d20000 	lwc1	$f18,0(a2)
     cd4:	3c040000 	lui	a0,0x0
     cd8:	24840000 	addiu	a0,a0,0
     cdc:	460091a1 	cvt.d.s	$f6,$f18
     ce0:	f7a60010 	sdc1	$f6,16(sp)
     ce4:	8e590004 	lw	t9,4(s2)
     ce8:	c7280000 	lwc1	$f8,0(t9)
     cec:	460042a1 	cvt.d.s	$f10,$f8
     cf0:	f7aa0018 	sdc1	$f10,24(sp)
     cf4:	c4f00000 	lwc1	$f16,0(a3)
     cf8:	a3a800a9 	sb	t0,169(sp)
     cfc:	46008121 	cvt.d.s	$f4,$f16
     d00:	0c000000 	jal	0 <func_800F7260>
     d04:	f7a40020 	sdc1	$f4,32(sp)
     d08:	93a800a9 	lbu	t0,169(sp)
     d0c:	240d0001 	li	t5,1
     d10:	8e470008 	lw	a3,8(s2)
     d14:	c640001c 	lwc1	$f0,28(s2)
     d18:	444ef800 	cfc1	t6,$31
     d1c:	240f0001 	li	t7,1
     d20:	44cff800 	ctc1	t7,$31
     d24:	96430028 	lhu	v1,40(s2)
     d28:	03c81023 	subu	v0,s8,t0
     d2c:	460004a4 	cvt.w.s	$f18,$f0
     d30:	3c014f00 	lui	at,0x4f00
     d34:	444ff800 	cfc1	t7,$31
     d38:	00000000 	nop
     d3c:	31ef0078 	andi	t7,t7,0x78
     d40:	51e00013 	beqzl	t7,d90 <func_800F7CEC+0x304>
     d44:	440f9000 	mfc1	t7,$f18
     d48:	44819000 	mtc1	at,$f18
     d4c:	240f0001 	li	t7,1
     d50:	46120481 	sub.s	$f18,$f0,$f18
     d54:	44cff800 	ctc1	t7,$31
     d58:	00000000 	nop
     d5c:	460094a4 	cvt.w.s	$f18,$f18
     d60:	444ff800 	cfc1	t7,$31
     d64:	00000000 	nop
     d68:	31ef0078 	andi	t7,t7,0x78
     d6c:	15e00005 	bnez	t7,d84 <func_800F7CEC+0x2f8>
     d70:	00000000 	nop
     d74:	440f9000 	mfc1	t7,$f18
     d78:	3c018000 	lui	at,0x8000
     d7c:	10000007 	b	d9c <func_800F7CEC+0x310>
     d80:	01e17825 	or	t7,t7,at
     d84:	10000005 	b	d9c <func_800F7CEC+0x310>
     d88:	240fffff 	li	t7,-1
     d8c:	440f9000 	mfc1	t7,$f18
     d90:	00000000 	nop
     d94:	05e0fffb 	bltz	t7,d84 <func_800F7CEC+0x2f8>
     d98:	00000000 	nop
     d9c:	00420019 	multu	v0,v0
     da0:	44cef800 	ctc1	t6,$31
     da4:	44803000 	mtc1	zero,$f6
     da8:	3c0140c0 	lui	at,0x40c0
     dac:	0000c012 	mflo	t8
     db0:	0018c880 	sll	t9,t8,0x2
     db4:	0338c823 	subu	t9,t9,t8
     db8:	0019c880 	sll	t9,t9,0x2
     dbc:	0338c823 	subu	t9,t9,t8
     dc0:	0019c880 	sll	t9,t9,0x2
     dc4:	0338c821 	addu	t9,t9,t8
     dc8:	0019c8c0 	sll	t9,t9,0x3
     dcc:	0338c821 	addu	t9,t9,t8
     dd0:	0019c900 	sll	t9,t9,0x4
     dd4:	01f97021 	addu	t6,t7,t9
     dd8:	01c3c021 	addu	t8,t6,v1
     ddc:	03037823 	subu	t7,t8,v1
     de0:	ae4f0020 	sw	t7,32(s2)
     de4:	c4e20000 	lwc1	$f2,0(a3)
     de8:	4606103c 	c.lt.s	$f2,$f6
     dec:	00000000 	nop
     df0:	4500000a 	bc1f	e1c <func_800F7CEC+0x390>
     df4:	00000000 	nop
     df8:	44815000 	mtc1	at,$f10
     dfc:	46001207 	neg.s	$f8,$f2
     e00:	c640001c 	lwc1	$f0,28(s2)
     e04:	460a4402 	mul.s	$f16,$f8,$f10
     e08:	4600810d 	trunc.w.s	$f4,$f16
     e0c:	440e2000 	mfc1	t6,$f4
     e10:	00000000 	nop
     e14:	01ee7821 	addu	t7,t7,t6
     e18:	ae4f0020 	sw	t7,32(s2)
     e1c:	3c010000 	lui	at,0x0
     e20:	c4320000 	lwc1	$f18,0(at)
     e24:	3c0f0000 	lui	t7,0x0
     e28:	4600903c 	c.lt.s	$f18,$f0
     e2c:	00000000 	nop
     e30:	45000016 	bc1f	e8c <func_800F7CEC+0x400>
     e34:	00000000 	nop
     e38:	9259002a 	lbu	t9,42(s2)
     e3c:	24010004 	li	at,4
     e40:	57210046 	bnel	t9,at,f5c <func_800F7CEC+0x4d0>
     e44:	329000ff 	andi	s0,s4,0xff
     e48:	9244002e 	lbu	a0,46(s2)
     e4c:	3c010602 	lui	at,0x602
     e50:	00002825 	move	a1,zero
     e54:	00042200 	sll	a0,a0,0x8
     e58:	0c000000 	jal	0 <func_800F7260>
     e5c:	00812025 	or	a0,a0,at
     e60:	96580028 	lhu	t8,40(s2)
     e64:	240d0001 	li	t5,1
     e68:	93a400b3 	lbu	a0,179(sp)
     e6c:	330e0c00 	andi	t6,t8,0xc00
     e70:	51c0003a 	beqzl	t6,f5c <func_800F7CEC+0x4d0>
     e74:	329000ff 	andi	s0,s4,0xff
     e78:	0c000000 	jal	0 <func_800F7260>
     e7c:	328500ff 	andi	a1,s4,0xff
     e80:	240d0001 	li	t5,1
     e84:	10000034 	b	f58 <func_800F7CEC+0x4cc>
     e88:	321400ff 	andi	s4,s0,0xff
     e8c:	91ef0000 	lbu	t7,0(t7)
     e90:	93b800b3 	lbu	t8,179(sp)
     e94:	3c0a0000 	lui	t2,0x0
     e98:	000fc8c0 	sll	t9,t7,0x3
     e9c:	032fc823 	subu	t9,t9,t7
     ea0:	03387021 	addu	t6,t9,t8
     ea4:	014e5021 	addu	t2,t2,t6
     ea8:	914a0000 	lbu	t2,0(t2)
     eac:	00005825 	move	t3,zero
     eb0:	314900ff 	andi	t1,t2,0xff
     eb4:	19200028 	blez	t1,f58 <func_800F7CEC+0x4cc>
     eb8:	01204025 	move	t0,t1
     ebc:	000b78c0 	sll	t7,t3,0x3
     ec0:	022f3821 	addu	a3,s1,t7
     ec4:	8cf90000 	lw	t9,0(a3)
     ec8:	8e430020 	lw	v1,32(s2)
     ecc:	2502ffff 	addiu	v0,t0,-1
     ed0:	304500ff 	andi	a1,v0,0xff
     ed4:	0323082b 	sltu	at,t9,v1
     ed8:	1420001a 	bnez	at,f44 <func_800F7CEC+0x4b8>
     edc:	01603025 	move	a2,t3
     ee0:	026a082a 	slt	at,s3,t2
     ee4:	10200003 	beqz	at,ef4 <func_800F7CEC+0x468>
     ee8:	304400ff 	andi	a0,v0,0xff
     eec:	26730001 	addiu	s3,s3,1
     ef0:	327300ff 	andi	s3,s3,0xff
     ef4:	00c4082a 	slt	at,a2,a0
     ef8:	10200010 	beqz	at,f3c <func_800F7CEC+0x4b0>
     efc:	312b00ff 	andi	t3,t1,0xff
     f00:	00a01825 	move	v1,a1
     f04:	000370c0 	sll	t6,v1,0x3
     f08:	022e1021 	addu	v0,s1,t6
     f0c:	8c4ffff8 	lw	t7,-8(v0)
     f10:	0005c0c0 	sll	t8,a1,0x3
     f14:	02382021 	addu	a0,s1,t8
     f18:	24a5ffff 	addiu	a1,a1,-1
     f1c:	ac8f0000 	sw	t7,0(a0)
     f20:	9059fffc 	lbu	t9,-4(v0)
     f24:	30a500ff 	andi	a1,a1,0xff
     f28:	00c5082a 	slt	at,a2,a1
     f2c:	00a01825 	move	v1,a1
     f30:	1420fff4 	bnez	at,f04 <func_800F7CEC+0x478>
     f34:	a0990004 	sb	t9,4(a0)
     f38:	8e430020 	lw	v1,32(s2)
     f3c:	ace30000 	sw	v1,0(a3)
     f40:	a0f40004 	sb	s4,4(a3)
     f44:	256b0001 	addiu	t3,t3,1
     f48:	316b00ff 	andi	t3,t3,0xff
     f4c:	0168082a 	slt	at,t3,t0
     f50:	5420ffdb 	bnezl	at,ec0 <func_800F7CEC+0x434>
     f54:	000b78c0 	sll	t7,t3,0x3
     f58:	329000ff 	andi	s0,s4,0xff
     f5c:	8ec30000 	lw	v1,0(s6)
     f60:	02170019 	multu	s0,s7
     f64:	0000c012 	mflo	t8
     f68:	00787021 	addu	t6,v1,t8
     f6c:	91d4002d 	lbu	s4,45(t6)
     f70:	17d4feed 	bne	s8,s4,b28 <func_800F7CEC+0x9c>
     f74:	00000000 	nop
     f78:	240d0001 	li	t5,1
     f7c:	24170030 	li	s7,48
     f80:	00005825 	move	t3,zero
     f84:	1a600019 	blez	s3,fec <func_800F7CEC+0x560>
     f88:	02602825 	move	a1,s3
     f8c:	24030003 	li	v1,3
     f90:	24020002 	li	v0,2
     f94:	000b78c0 	sll	t7,t3,0x3
     f98:	022fc821 	addu	t9,s1,t7
     f9c:	93380004 	lbu	t8,4(t9)
     fa0:	8ecf0000 	lw	t7,0(s6)
     fa4:	256b0001 	addiu	t3,t3,1
     fa8:	03170019 	multu	t8,s7
     fac:	316b00ff 	andi	t3,t3,0xff
     fb0:	24010004 	li	at,4
     fb4:	00007012 	mflo	t6
     fb8:	01cf9021 	addu	s2,t6,t7
     fbc:	9244002a 	lbu	a0,42(s2)
     fc0:	15a40003 	bne	t5,a0,fd0 <func_800F7CEC+0x544>
     fc4:	00000000 	nop
     fc8:	10000004 	b	fdc <func_800F7CEC+0x550>
     fcc:	a242002a 	sb	v0,42(s2)
     fd0:	54810003 	bnel	a0,at,fe0 <func_800F7CEC+0x554>
     fd4:	0165082a 	slt	at,t3,a1
     fd8:	a243002a 	sb	v1,42(s2)
     fdc:	0165082a 	slt	at,t3,a1
     fe0:	5420ffed 	bnezl	at,f98 <func_800F7CEC+0x50c>
     fe4:	000b78c0 	sll	t7,t3,0x3
     fe8:	00005825 	move	t3,zero
     fec:	3c190000 	lui	t9,0x0
     ff0:	93390000 	lbu	t9,0(t9)
     ff4:	93a200b3 	lbu	v0,179(sp)
     ff8:	3c090000 	lui	t1,0x0
     ffc:	0019c0c0 	sll	t8,t9,0x3
    1000:	0319c023 	subu	t8,t8,t9
    1004:	03027021 	addu	t6,t8,v0
    1008:	012e4821 	addu	t1,t1,t6
    100c:	91290000 	lbu	t1,0(t1)
    1010:	00027880 	sll	t7,v0,0x2
    1014:	01e27823 	subu	t7,t7,v0
    1018:	19200075 	blez	t1,11f0 <func_800F7CEC+0x764>
    101c:	01204025 	move	t0,t1
    1020:	3c190000 	lui	t9,0x0
    1024:	27390000 	addiu	t9,t9,0
    1028:	000f78c0 	sll	t7,t7,0x3
    102c:	01f93021 	addu	a2,t7,t9
    1030:	240c0003 	li	t4,3
    1034:	000bc0c0 	sll	t8,t3,0x3
    1038:	00d8a021 	addu	s4,a2,t8
    103c:	92850004 	lbu	a1,4(s4)
    1040:	00001825 	move	v1,zero
    1044:	17c50003 	bne	s8,a1,1054 <func_800F7CEC+0x5c8>
    1048:	00a01025 	move	v0,a1
    104c:	10000034 	b	1120 <func_800F7CEC+0x694>
    1050:	24030001 	li	v1,1
    1054:	00b70019 	multu	a1,s7
    1058:	8ecf0000 	lw	t7,0(s6)
    105c:	24010004 	li	at,4
    1060:	00007012 	mflo	t6
    1064:	01cf9021 	addu	s2,t6,t7
    1068:	9244002a 	lbu	a0,42(s2)
    106c:	14810017 	bne	a0,at,10cc <func_800F7CEC+0x640>
    1070:	00000000 	nop
    1074:	96590028 	lhu	t9,40(s2)
    1078:	93a400b3 	lbu	a0,179(sp)
    107c:	240e0001 	li	t6,1
    1080:	33380c00 	andi	t8,t9,0xc00
    1084:	5300000f 	beqzl	t8,10c4 <func_800F7CEC+0x638>
    1088:	a24e002a 	sb	t6,42(s2)
    108c:	afa60074 	sw	a2,116(sp)
    1090:	afa80064 	sw	t0,100(sp)
    1094:	a3a900ae 	sb	t1,174(sp)
    1098:	0c000000 	jal	0 <func_800F7260>
    109c:	a3ab00ac 	sb	t3,172(sp)
    10a0:	8fa60074 	lw	a2,116(sp)
    10a4:	8fa80064 	lw	t0,100(sp)
    10a8:	93a900ae 	lbu	t1,174(sp)
    10ac:	93ab00ac 	lbu	t3,172(sp)
    10b0:	240c0003 	li	t4,3
    10b4:	240d0001 	li	t5,1
    10b8:	10000019 	b	1120 <func_800F7CEC+0x694>
    10bc:	24030001 	li	v1,1
    10c0:	a24e002a 	sb	t6,42(s2)
    10c4:	10000016 	b	1120 <func_800F7CEC+0x694>
    10c8:	24030001 	li	v1,1
    10cc:	14800004 	bnez	a0,10e0 <func_800F7CEC+0x654>
    10d0:	00000000 	nop
    10d4:	a2950004 	sb	s5,4(s4)
    10d8:	10000011 	b	1120 <func_800F7CEC+0x694>
    10dc:	24030001 	li	v1,1
    10e0:	1900000d 	blez	t0,1118 <func_800F7CEC+0x68c>
    10e4:	00002825 	move	a1,zero
    10e8:	000578c0 	sll	t7,a1,0x3
    10ec:	022f2021 	addu	a0,s1,t7
    10f0:	90990004 	lbu	t9,4(a0)
    10f4:	54590004 	bnel	v0,t9,1108 <func_800F7CEC+0x67c>
    10f8:	24a50001 	addiu	a1,a1,1
    10fc:	a0950004 	sb	s5,4(a0)
    1100:	312500ff 	andi	a1,t1,0xff
    1104:	24a50001 	addiu	a1,a1,1
    1108:	30a500ff 	andi	a1,a1,0xff
    110c:	00a8082a 	slt	at,a1,t0
    1110:	5420fff6 	bnezl	at,10ec <func_800F7CEC+0x660>
    1114:	000578c0 	sll	t7,a1,0x3
    1118:	2673ffff 	addiu	s3,s3,-1
    111c:	327300ff 	andi	s3,s3,0xff
    1120:	15a3002e 	bne	t5,v1,11dc <func_800F7CEC+0x750>
    1124:	00605025 	move	t2,v1
    1128:	19000029 	blez	t0,11d0 <func_800F7CEC+0x744>
    112c:	00002825 	move	a1,zero
    1130:	0005c0c0 	sll	t8,a1,0x3
    1134:	02382021 	addu	a0,s1,t8
    1138:	90870004 	lbu	a3,4(a0)
    113c:	13c7001f 	beq	s8,a3,11bc <func_800F7CEC+0x730>
    1140:	00e01025 	move	v0,a3
    1144:	00f70019 	multu	a3,s7
    1148:	8ece0000 	lw	t6,0(s6)
    114c:	00007812 	mflo	t7
    1150:	01cfc821 	addu	t9,t6,t7
    1154:	9338002a 	lbu	t8,42(t9)
    1158:	51980019 	beql	t4,t8,11c0 <func_800F7CEC+0x734>
    115c:	24a50001 	addiu	a1,a1,1
    1160:	1900000e 	blez	t0,119c <func_800F7CEC+0x710>
    1164:	00008025 	move	s0,zero
    1168:	001070c0 	sll	t6,s0,0x3
    116c:	00ce7821 	addu	t7,a2,t6
    1170:	91f90004 	lbu	t9,4(t7)
    1174:	54590004 	bnel	v0,t9,1188 <func_800F7CEC+0x6fc>
    1178:	26100001 	addiu	s0,s0,1
    117c:	00001825 	move	v1,zero
    1180:	313000ff 	andi	s0,t1,0xff
    1184:	26100001 	addiu	s0,s0,1
    1188:	321000ff 	andi	s0,s0,0xff
    118c:	0208082a 	slt	at,s0,t0
    1190:	5420fff6 	bnezl	at,116c <func_800F7CEC+0x6e0>
    1194:	001070c0 	sll	t6,s0,0x3
    1198:	00605025 	move	t2,v1
    119c:	55aa0008 	bnel	t5,t2,11c0 <func_800F7CEC+0x734>
    11a0:	24a50001 	addiu	a1,a1,1
    11a4:	25050001 	addiu	a1,t0,1
    11a8:	2673ffff 	addiu	s3,s3,-1
    11ac:	a2870004 	sb	a3,4(s4)
    11b0:	a0950004 	sb	s5,4(a0)
    11b4:	30a500ff 	andi	a1,a1,0xff
    11b8:	327300ff 	andi	s3,s3,0xff
    11bc:	24a50001 	addiu	a1,a1,1
    11c0:	30a500ff 	andi	a1,a1,0xff
    11c4:	00a8082a 	slt	at,a1,t0
    11c8:	5420ffda 	bnezl	at,1134 <func_800F7CEC+0x6a8>
    11cc:	0005c0c0 	sll	t8,a1,0x3
    11d0:	55050003 	bnel	t0,a1,11e0 <func_800F7CEC+0x754>
    11d4:	256b0001 	addiu	t3,t3,1
    11d8:	a2950004 	sb	s5,4(s4)
    11dc:	256b0001 	addiu	t3,t3,1
    11e0:	316b00ff 	andi	t3,t3,0xff
    11e4:	0168082a 	slt	at,t3,t0
    11e8:	5420ff93 	bnezl	at,1038 <func_800F7CEC+0x5ac>
    11ec:	000bc0c0 	sll	t8,t3,0x3
    11f0:	8fbf0054 	lw	ra,84(sp)
    11f4:	8fb00030 	lw	s0,48(sp)
    11f8:	8fb10034 	lw	s1,52(sp)
    11fc:	8fb20038 	lw	s2,56(sp)
    1200:	8fb3003c 	lw	s3,60(sp)
    1204:	8fb40040 	lw	s4,64(sp)
    1208:	8fb50044 	lw	s5,68(sp)
    120c:	8fb60048 	lw	s6,72(sp)
    1210:	8fb7004c 	lw	s7,76(sp)
    1214:	8fbe0050 	lw	s8,80(sp)
    1218:	03e00008 	jr	ra
    121c:	27bd00b0 	addiu	sp,sp,176

00001220 <func_800F8480>:
    1220:	3c0e0000 	lui	t6,0x0
    1224:	91ce0000 	lbu	t6,0(t6)
    1228:	27bdffa0 	addiu	sp,sp,-96
    122c:	afb20020 	sw	s2,32(sp)
    1230:	000e78c0 	sll	t7,t6,0x3
    1234:	309200ff 	andi	s2,a0,0xff
    1238:	01ee7823 	subu	t7,t7,t6
    123c:	01f2c021 	addu	t8,t7,s2
    1240:	3c030000 	lui	v1,0x0
    1244:	00781821 	addu	v1,v1,t8
    1248:	90630000 	lbu	v1,0(v1)
    124c:	afb40028 	sw	s4,40(sp)
    1250:	afbf003c 	sw	ra,60(sp)
    1254:	afbe0038 	sw	s8,56(sp)
    1258:	afb70034 	sw	s7,52(sp)
    125c:	afb60030 	sw	s6,48(sp)
    1260:	afb5002c 	sw	s5,44(sp)
    1264:	afb30024 	sw	s3,36(sp)
    1268:	afb1001c 	sw	s1,28(sp)
    126c:	afb00018 	sw	s0,24(sp)
    1270:	afa40060 	sw	a0,96(sp)
    1274:	186000a6 	blez	v1,1510 <func_800F8480+0x2f0>
    1278:	0000a025 	move	s4,zero
    127c:	0012c880 	sll	t9,s2,0x2
    1280:	0332c823 	subu	t9,t9,s2
    1284:	3c080000 	lui	t0,0x0
    1288:	25080000 	addiu	t0,t0,0
    128c:	0019c8c0 	sll	t9,t9,0x3
    1290:	03284821 	addu	t1,t9,t0
    1294:	3c130000 	lui	s3,0x0
    1298:	26730000 	addiu	s3,s3,0
    129c:	afa90044 	sw	t1,68(sp)
    12a0:	241e0004 	li	s8,4
    12a4:	241700ff 	li	s7,255
    12a8:	3c160602 	lui	s6,0x602
    12ac:	8faa0044 	lw	t2,68(sp)
    12b0:	001458c0 	sll	t3,s4,0x3
    12b4:	00126880 	sll	t5,s2,0x2
    12b8:	014b6021 	addu	t4,t2,t3
    12bc:	91910004 	lbu	s1,4(t4)
    12c0:	3c0e0000 	lui	t6,0x0
    12c4:	01cd7021 	addu	t6,t6,t5
    12c8:	12f1008a 	beq	s7,s1,14f4 <func_800F8480+0x2d4>
    12cc:	00117880 	sll	t7,s1,0x2
    12d0:	8dce0000 	lw	t6,0(t6)
    12d4:	01f17823 	subu	t7,t7,s1
    12d8:	92660000 	lbu	a2,0(s3)
    12dc:	000f7900 	sll	t7,t7,0x4
    12e0:	01cf8021 	addu	s0,t6,t7
    12e4:	9202002a 	lbu	v0,42(s0)
    12e8:	3c040000 	lui	a0,0x0
    12ec:	0006c080 	sll	t8,a2,0x2
    12f0:	00982021 	addu	a0,a0,t8
    12f4:	24010002 	li	at,2
    12f8:	14410053 	bne	v0,at,1448 <func_800F8480+0x228>
    12fc:	8c843828 	lw	a0,14376(a0)
    1300:	96020026 	lhu	v0,38(s0)
    1304:	3c190000 	lui	t9,0x0
    1308:	27390000 	addiu	t9,t9,0
    130c:	30480008 	andi	t0,v0,0x8
    1310:	a206002e 	sb	a2,46(s0)
    1314:	11000004 	beqz	t0,1328 <func_800F8480+0x108>
    1318:	0259a821 	addu	s5,s2,t9
    131c:	0c000000 	jal	0 <func_800F7260>
    1320:	92640000 	lbu	a0,0(s3)
    1324:	96020026 	lhu	v0,38(s0)
    1328:	304300c0 	andi	v1,v0,0xc0
    132c:	10600017 	beqz	v1,138c <func_800F8480+0x16c>
    1330:	24010040 	li	at,64
    1334:	10610007 	beq	v1,at,1354 <func_800F8480+0x134>
    1338:	24010080 	li	at,128
    133c:	1061000a 	beq	v1,at,1368 <func_800F8480+0x148>
    1340:	240100c0 	li	at,192
    1344:	1061000d 	beq	v1,at,137c <func_800F8480+0x15c>
    1348:	00000000 	nop
    134c:	1000000f 	b	138c <func_800F8480+0x16c>
    1350:	a200002f 	sb	zero,47(s0)
    1354:	0c000000 	jal	0 <func_800F7260>
    1358:	00000000 	nop
    135c:	3049000f 	andi	t1,v0,0xf
    1360:	1000000a 	b	138c <func_800F8480+0x16c>
    1364:	a209002f 	sb	t1,47(s0)
    1368:	0c000000 	jal	0 <func_800F7260>
    136c:	00000000 	nop
    1370:	304a001f 	andi	t2,v0,0x1f
    1374:	10000005 	b	138c <func_800F8480+0x16c>
    1378:	a20a002f 	sb	t2,47(s0)
    137c:	0c000000 	jal	0 <func_800F7260>
    1380:	00000000 	nop
    1384:	304b003f 	andi	t3,v0,0x3f
    1388:	a20b002f 	sb	t3,47(s0)
    138c:	324400ff 	andi	a0,s2,0xff
    1390:	322500ff 	andi	a1,s1,0xff
    1394:	0c000000 	jal	0 <func_800F7260>
    1398:	92660000 	lbu	a2,0(s3)
    139c:	926d0000 	lbu	t5,0(s3)
    13a0:	24050001 	li	a1,1
    13a4:	000d7200 	sll	t6,t5,0x8
    13a8:	0c000000 	jal	0 <func_800F7260>
    13ac:	01d62025 	or	a0,t6,s6
    13b0:	92780000 	lbu	t8,0(s3)
    13b4:	96050028 	lhu	a1,40(s0)
    13b8:	0018ca00 	sll	t9,t8,0x8
    13bc:	03362025 	or	a0,t9,s6
    13c0:	00052e00 	sll	a1,a1,0x18
    13c4:	00052e03 	sra	a1,a1,0x18
    13c8:	0c000000 	jal	0 <func_800F7260>
    13cc:	34840004 	ori	a0,a0,0x4
    13d0:	92a80000 	lbu	t0,0(s5)
    13d4:	5100000c 	beqzl	t0,1408 <func_800F8480+0x1e8>
    13d8:	960c0028 	lhu	t4,40(s0)
    13dc:	96050028 	lhu	a1,40(s0)
    13e0:	926a0000 	lbu	t2,0(s3)
    13e4:	30a50100 	andi	a1,a1,0x100
    13e8:	00052a03 	sra	a1,a1,0x8
    13ec:	000a5a00 	sll	t3,t2,0x8
    13f0:	01762025 	or	a0,t3,s6
    13f4:	00052e00 	sll	a1,a1,0x18
    13f8:	00052e03 	sra	a1,a1,0x18
    13fc:	0c000000 	jal	0 <func_800F7260>
    1400:	34840005 	ori	a0,a0,0x5
    1404:	960c0028 	lhu	t4,40(s0)
    1408:	3c0f0000 	lui	t7,0x0
    140c:	240e0005 	li	t6,5
    1410:	318d0c00 	andi	t5,t4,0xc00
    1414:	51a00004 	beqzl	t5,1428 <func_800F8480+0x208>
    1418:	a20e002a 	sb	t6,42(s0)
    141c:	10000002 	b	1428 <func_800F8480+0x208>
    1420:	a21e002a 	sb	s8,42(s0)
    1424:	a20e002a 	sb	t6,42(s0)
    1428:	91ef0000 	lbu	t7,0(t7)
    142c:	3c030000 	lui	v1,0x0
    1430:	000fc0c0 	sll	t8,t7,0x3
    1434:	030fc023 	subu	t8,t8,t7
    1438:	0312c821 	addu	t9,t8,s2
    143c:	00791821 	addu	v1,v1,t9
    1440:	1000002c 	b	14f4 <func_800F8480+0x2d4>
    1444:	90630000 	lbu	v1,0(v1)
    1448:	908800c5 	lbu	t0,197(a0)
    144c:	324400ff 	andi	a0,s2,0xff
    1450:	24010003 	li	at,3
    1454:	16e8000c 	bne	s7,t0,1488 <func_800F8480+0x268>
    1458:	00000000 	nop
    145c:	0c000000 	jal	0 <func_800F7260>
    1460:	322500ff 	andi	a1,s1,0xff
    1464:	3c090000 	lui	t1,0x0
    1468:	91290000 	lbu	t1,0(t1)
    146c:	3c030000 	lui	v1,0x0
    1470:	000950c0 	sll	t2,t1,0x3
    1474:	01495023 	subu	t2,t2,t1
    1478:	01525821 	addu	t3,t2,s2
    147c:	006b1821 	addu	v1,v1,t3
    1480:	1000001c 	b	14f4 <func_800F8480+0x2d4>
    1484:	90630000 	lbu	v1,0(v1)
    1488:	1441001a 	bne	v0,at,14f4 <func_800F8480+0x2d4>
    148c:	324400ff 	andi	a0,s2,0xff
    1490:	0c000000 	jal	0 <func_800F7260>
    1494:	322500ff 	andi	a1,s1,0xff
    1498:	960c0028 	lhu	t4,40(s0)
    149c:	3c0e0000 	lui	t6,0x0
    14a0:	24190005 	li	t9,5
    14a4:	318d0c00 	andi	t5,t4,0xc00
    14a8:	11a0000a 	beqz	t5,14d4 <func_800F8480+0x2b4>
    14ac:	3c080000 	lui	t0,0x0
    14b0:	a21e002a 	sb	s8,42(s0)
    14b4:	91ce0000 	lbu	t6,0(t6)
    14b8:	3c030000 	lui	v1,0x0
    14bc:	000e78c0 	sll	t7,t6,0x3
    14c0:	01ee7823 	subu	t7,t7,t6
    14c4:	01f2c021 	addu	t8,t7,s2
    14c8:	00781821 	addu	v1,v1,t8
    14cc:	10000009 	b	14f4 <func_800F8480+0x2d4>
    14d0:	90630000 	lbu	v1,0(v1)
    14d4:	a219002a 	sb	t9,42(s0)
    14d8:	91080000 	lbu	t0,0(t0)
    14dc:	3c030000 	lui	v1,0x0
    14e0:	000848c0 	sll	t1,t0,0x3
    14e4:	01284823 	subu	t1,t1,t0
    14e8:	01325021 	addu	t2,t1,s2
    14ec:	006a1821 	addu	v1,v1,t2
    14f0:	90630000 	lbu	v1,0(v1)
    14f4:	926b0000 	lbu	t3,0(s3)
    14f8:	26940001 	addiu	s4,s4,1
    14fc:	329400ff 	andi	s4,s4,0xff
    1500:	0283082a 	slt	at,s4,v1
    1504:	256c0001 	addiu	t4,t3,1
    1508:	1420ff68 	bnez	at,12ac <func_800F8480+0x8c>
    150c:	a26c0000 	sb	t4,0(s3)
    1510:	8fbf003c 	lw	ra,60(sp)
    1514:	8fb00018 	lw	s0,24(sp)
    1518:	8fb1001c 	lw	s1,28(sp)
    151c:	8fb20020 	lw	s2,32(sp)
    1520:	8fb30024 	lw	s3,36(sp)
    1524:	8fb40028 	lw	s4,40(sp)
    1528:	8fb5002c 	lw	s5,44(sp)
    152c:	8fb60030 	lw	s6,48(sp)
    1530:	8fb70034 	lw	s7,52(sp)
    1534:	8fbe0038 	lw	s8,56(sp)
    1538:	03e00008 	jr	ra
    153c:	27bd0060 	addiu	sp,sp,96

00001540 <func_800F87A0>:
    1540:	27bdff80 	addiu	sp,sp,-128
    1544:	afb60030 	sw	s6,48(sp)
    1548:	309600ff 	andi	s6,a0,0xff
    154c:	3c0f0000 	lui	t7,0x0
    1550:	afb20020 	sw	s2,32(sp)
    1554:	25ef0000 	addiu	t7,t7,0
    1558:	00167080 	sll	t6,s6,0x2
    155c:	01cf9021 	addu	s2,t6,t7
    1560:	8e430000 	lw	v1,0(s2)
    1564:	afbf0034 	sw	ra,52(sp)
    1568:	afb5002c 	sw	s5,44(sp)
    156c:	afb40028 	sw	s4,40(sp)
    1570:	afb30024 	sw	s3,36(sp)
    1574:	afb1001c 	sw	s1,28(sp)
    1578:	afb00018 	sw	s0,24(sp)
    157c:	afa40080 	sw	a0,128(sp)
    1580:	9071002d 	lbu	s1,45(v1)
    1584:	241300ff 	li	s3,255
    1588:	24140030 	li	s4,48
    158c:	12710016 	beq	s3,s1,15e8 <func_800F87A0+0xa8>
    1590:	3c150602 	lui	s5,0x602
    1594:	02340019 	multu	s1,s4
    1598:	0000c012 	mflo	t8
    159c:	00788021 	addu	s0,v1,t8
    15a0:	9202002a 	lbu	v0,42(s0)
    15a4:	28410003 	slti	at,v0,3
    15a8:	14200007 	bnez	at,15c8 <func_800F87A0+0x88>
    15ac:	00000000 	nop
    15b0:	9208002e 	lbu	t0,46(s0)
    15b4:	00002825 	move	a1,zero
    15b8:	00084a00 	sll	t1,t0,0x8
    15bc:	0c000000 	jal	0 <func_800F7260>
    15c0:	01352025 	or	a0,t1,s5
    15c4:	9202002a 	lbu	v0,42(s0)
    15c8:	10400003 	beqz	v0,15d8 <func_800F87A0+0x98>
    15cc:	32c400ff 	andi	a0,s6,0xff
    15d0:	0c000000 	jal	0 <func_800F7260>
    15d4:	322500ff 	andi	a1,s1,0xff
    15d8:	8e430000 	lw	v1,0(s2)
    15dc:	9071002d 	lbu	s1,45(v1)
    15e0:	1671ffec 	bne	s3,s1,1594 <func_800F87A0+0x54>
    15e4:	00000000 	nop
    15e8:	00165300 	sll	t2,s6,0xc
    15ec:	a7aa0070 	sh	t2,112(sp)
    15f0:	00002025 	move	a0,zero
    15f4:	0c000000 	jal	0 <func_800F7260>
    15f8:	27a50048 	addiu	a1,sp,72
    15fc:	8fbf0034 	lw	ra,52(sp)
    1600:	8fb00018 	lw	s0,24(sp)
    1604:	8fb1001c 	lw	s1,28(sp)
    1608:	8fb20020 	lw	s2,32(sp)
    160c:	8fb30024 	lw	s3,36(sp)
    1610:	8fb40028 	lw	s4,40(sp)
    1614:	8fb5002c 	lw	s5,44(sp)
    1618:	8fb60030 	lw	s6,48(sp)
    161c:	03e00008 	jr	ra
    1620:	27bd0080 	addiu	sp,sp,128

00001624 <func_800F8884>:
    1624:	27bdffc0 	addiu	sp,sp,-64
    1628:	afb5002c 	sw	s5,44(sp)
    162c:	309500ff 	andi	s5,a0,0xff
    1630:	3c0f0000 	lui	t7,0x0
    1634:	afb40028 	sw	s4,40(sp)
    1638:	25ef0000 	addiu	t7,t7,0
    163c:	00157080 	sll	t6,s5,0x2
    1640:	01cfa021 	addu	s4,t6,t7
    1644:	8e820000 	lw	v0,0(s4)
    1648:	afbf003c 	sw	ra,60(sp)
    164c:	afbe0038 	sw	s8,56(sp)
    1650:	afb70034 	sw	s7,52(sp)
    1654:	afb60030 	sw	s6,48(sp)
    1658:	afb30024 	sw	s3,36(sp)
    165c:	afb20020 	sw	s2,32(sp)
    1660:	afb1001c 	sw	s1,28(sp)
    1664:	afb00018 	sw	s0,24(sp)
    1668:	afa40040 	sw	a0,64(sp)
    166c:	9051002d 	lbu	s1,45(v0)
    1670:	241700ff 	li	s7,255
    1674:	00a0b025 	move	s6,a1
    1678:	12f10025 	beq	s7,s1,1710 <func_800F8884+0xec>
    167c:	00009025 	move	s2,zero
    1680:	241e0030 	li	s8,48
    1684:	023e0019 	multu	s1,s8
    1688:	0000c012 	mflo	t8
    168c:	00588021 	addu	s0,v0,t8
    1690:	8e190000 	lw	t9,0(s0)
    1694:	56d90017 	bnel	s6,t9,16f4 <func_800F8884+0xd0>
    1698:	323200ff 	andi	s2,s1,0xff
    169c:	9202002a 	lbu	v0,42(s0)
    16a0:	00129880 	sll	s3,s2,0x2
    16a4:	02729823 	subu	s3,s3,s2
    16a8:	28410003 	slti	at,v0,3
    16ac:	14200008 	bnez	at,16d0 <func_800F8884+0xac>
    16b0:	00139900 	sll	s3,s3,0x4
    16b4:	9204002e 	lbu	a0,46(s0)
    16b8:	3c010602 	lui	at,0x602
    16bc:	00002825 	move	a1,zero
    16c0:	00042200 	sll	a0,a0,0x8
    16c4:	0c000000 	jal	0 <func_800F7260>
    16c8:	00812025 	or	a0,a0,at
    16cc:	9202002a 	lbu	v0,42(s0)
    16d0:	10400003 	beqz	v0,16e0 <func_800F8884+0xbc>
    16d4:	32a400ff 	andi	a0,s5,0xff
    16d8:	0c000000 	jal	0 <func_800F7260>
    16dc:	322500ff 	andi	a1,s1,0xff
    16e0:	8e820000 	lw	v0,0(s4)
    16e4:	00534021 	addu	t0,v0,s3
    16e8:	10000007 	b	1708 <func_800F8884+0xe4>
    16ec:	9111002d 	lbu	s1,45(t0)
    16f0:	323200ff 	andi	s2,s1,0xff
    16f4:	00124880 	sll	t1,s2,0x2
    16f8:	01324823 	subu	t1,t1,s2
    16fc:	00094900 	sll	t1,t1,0x4
    1700:	00495021 	addu	t2,v0,t1
    1704:	9151002d 	lbu	s1,45(t2)
    1708:	16f1ffde 	bne	s7,s1,1684 <func_800F8884+0x60>
    170c:	00000000 	nop
    1710:	8fbf003c 	lw	ra,60(sp)
    1714:	8fb00018 	lw	s0,24(sp)
    1718:	8fb1001c 	lw	s1,28(sp)
    171c:	8fb20020 	lw	s2,32(sp)
    1720:	8fb30024 	lw	s3,36(sp)
    1724:	8fb40028 	lw	s4,40(sp)
    1728:	8fb5002c 	lw	s5,44(sp)
    172c:	8fb60030 	lw	s6,48(sp)
    1730:	8fb70034 	lw	s7,52(sp)
    1734:	8fbe0038 	lw	s8,56(sp)
    1738:	03e00008 	jr	ra
    173c:	27bd0040 	addiu	sp,sp,64
    1740:	27bdffb8 	addiu	sp,sp,-72
    1744:	afbf0014 	sw	ra,20(sp)
    1748:	afa40048 	sw	a0,72(sp)
    174c:	afa5004c 	sw	a1,76(sp)
    1750:	0c000000 	jal	0 <func_800F7260>
    1754:	93a4004b 	lbu	a0,75(sp)
    1758:	93ae004b 	lbu	t6,75(sp)
    175c:	8fb8004c 	lw	t8,76(sp)
    1760:	24040001 	li	a0,1
    1764:	000e7b00 	sll	t7,t6,0xc
    1768:	a7af0040 	sh	t7,64(sp)
    176c:	27a50018 	addiu	a1,sp,24
    1770:	0c000000 	jal	0 <func_800F7260>
    1774:	afb80018 	sw	t8,24(sp)
    1778:	8fbf0014 	lw	ra,20(sp)
    177c:	27bd0048 	addiu	sp,sp,72
    1780:	03e00008 	jr	ra
    1784:	00000000 	nop

00001788 <func_800F89E8>:
    1788:	27bdffa8 	addiu	sp,sp,-88
    178c:	afb10018 	sw	s1,24(sp)
    1790:	afb00014 	sw	s0,20(sp)
    1794:	00808825 	move	s1,a0
    1798:	afbf001c 	sw	ra,28(sp)
    179c:	00008025 	move	s0,zero
    17a0:	320400ff 	andi	a0,s0,0xff
    17a4:	0c000000 	jal	0 <func_800F7260>
    17a8:	02202825 	move	a1,s1
    17ac:	26100001 	addiu	s0,s0,1
    17b0:	321000ff 	andi	s0,s0,0xff
    17b4:	2a010007 	slti	at,s0,7
    17b8:	5420fffa 	bnezl	at,17a4 <func_800F89E8+0x1c>
    17bc:	320400ff 	andi	a0,s0,0xff
    17c0:	afb10024 	sw	s1,36(sp)
    17c4:	24040002 	li	a0,2
    17c8:	0c000000 	jal	0 <func_800F7260>
    17cc:	27a50024 	addiu	a1,sp,36
    17d0:	8fbf001c 	lw	ra,28(sp)
    17d4:	8fb00014 	lw	s0,20(sp)
    17d8:	8fb10018 	lw	s1,24(sp)
    17dc:	03e00008 	jr	ra
    17e0:	27bd0058 	addiu	sp,sp,88

000017e4 <func_800F8A44>:
    17e4:	27bdff78 	addiu	sp,sp,-136
    17e8:	afb70034 	sw	s7,52(sp)
    17ec:	afa5008c 	sw	a1,140(sp)
    17f0:	97b7008e 	lhu	s7,142(sp)
    17f4:	afbe0038 	sw	s8,56(sp)
    17f8:	3c0f0000 	lui	t7,0x0
    17fc:	32fef000 	andi	s8,s7,0xf000
    1800:	001ef303 	sra	s8,s8,0xc
    1804:	33de00ff 	andi	s8,s8,0xff
    1808:	afb30024 	sw	s3,36(sp)
    180c:	001e7080 	sll	t6,s8,0x2
    1810:	25ef0000 	addiu	t7,t7,0
    1814:	01cf9821 	addu	s3,t6,t7
    1818:	8e780000 	lw	t8,0(s3)
    181c:	afbf003c 	sw	ra,60(sp)
    1820:	afb60030 	sw	s6,48(sp)
    1824:	afb5002c 	sw	s5,44(sp)
    1828:	afb40028 	sw	s4,40(sp)
    182c:	afb20020 	sw	s2,32(sp)
    1830:	afb1001c 	sw	s1,28(sp)
    1834:	afb00018 	sw	s0,24(sp)
    1838:	afa40088 	sw	a0,136(sp)
    183c:	9311002d 	lbu	s1,45(t8)
    1840:	241500ff 	li	s5,255
    1844:	0000a025 	move	s4,zero
    1848:	12b1002a 	beq	s5,s1,18f4 <func_800F8A44+0x110>
    184c:	02201025 	move	v0,s1
    1850:	3c160602 	lui	s6,0x602
    1854:	24120030 	li	s2,48
    1858:	02320019 	multu	s1,s2
    185c:	8e790000 	lw	t9,0(s3)
    1860:	8fa90088 	lw	t1,136(sp)
    1864:	00004012 	mflo	t0
    1868:	03288021 	addu	s0,t9,t0
    186c:	8e0a0000 	lw	t2,0(s0)
    1870:	552a0016 	bnel	t1,t2,18cc <func_800F8A44+0xe8>
    1874:	323400ff 	andi	s4,s1,0xff
    1878:	960b0028 	lhu	t3,40(s0)
    187c:	56eb0013 	bnel	s7,t3,18cc <func_800F8A44+0xe8>
    1880:	323400ff 	andi	s4,s1,0xff
    1884:	9202002a 	lbu	v0,42(s0)
    1888:	28410003 	slti	at,v0,3
    188c:	14200007 	bnez	at,18ac <func_800F8A44+0xc8>
    1890:	00000000 	nop
    1894:	920d002e 	lbu	t5,46(s0)
    1898:	00002825 	move	a1,zero
    189c:	000d7200 	sll	t6,t5,0x8
    18a0:	0c000000 	jal	0 <func_800F7260>
    18a4:	01d62025 	or	a0,t6,s6
    18a8:	9202002a 	lbu	v0,42(s0)
    18ac:	10400003 	beqz	v0,18bc <func_800F8A44+0xd8>
    18b0:	33c400ff 	andi	a0,s8,0xff
    18b4:	0c000000 	jal	0 <func_800F7260>
    18b8:	322500ff 	andi	a1,s1,0xff
    18bc:	241100ff 	li	s1,255
    18c0:	10000002 	b	18cc <func_800F8A44+0xe8>
    18c4:	240200ff 	li	v0,255
    18c8:	323400ff 	andi	s4,s1,0xff
    18cc:	12a20007 	beq	s5,v0,18ec <func_800F8A44+0x108>
    18d0:	00000000 	nop
    18d4:	02920019 	multu	s4,s2
    18d8:	8e6f0000 	lw	t7,0(s3)
    18dc:	0000c012 	mflo	t8
    18e0:	01f8c821 	addu	t9,t7,t8
    18e4:	9331002d 	lbu	s1,45(t9)
    18e8:	02201025 	move	v0,s1
    18ec:	16a2ffda 	bne	s5,v0,1858 <func_800F8A44+0x74>
    18f0:	00000000 	nop
    18f4:	8fa80088 	lw	t0,136(sp)
    18f8:	97a9008e 	lhu	t1,142(sp)
    18fc:	24040003 	li	a0,3
    1900:	27a50050 	addiu	a1,sp,80
    1904:	afa80050 	sw	t0,80(sp)
    1908:	0c000000 	jal	0 <func_800F7260>
    190c:	a7a90078 	sh	t1,120(sp)
    1910:	8fbf003c 	lw	ra,60(sp)
    1914:	8fb00018 	lw	s0,24(sp)
    1918:	8fb1001c 	lw	s1,28(sp)
    191c:	8fb20020 	lw	s2,32(sp)
    1920:	8fb30024 	lw	s3,36(sp)
    1924:	8fb40028 	lw	s4,40(sp)
    1928:	8fb5002c 	lw	s5,44(sp)
    192c:	8fb60030 	lw	s6,48(sp)
    1930:	8fb70034 	lw	s7,52(sp)
    1934:	8fbe0038 	lw	s8,56(sp)
    1938:	03e00008 	jr	ra
    193c:	27bd0088 	addiu	sp,sp,136
    1940:	27bdff70 	addiu	sp,sp,-144
    1944:	afbe0038 	sw	s8,56(sp)
    1948:	afa50094 	sw	a1,148(sp)
    194c:	97be0096 	lhu	s8,150(sp)
    1950:	3c080000 	lui	t0,0x0
    1954:	afb40028 	sw	s4,40(sp)
    1958:	33cef000 	andi	t6,s8,0xf000
    195c:	000e7b03 	sra	t7,t6,0xc
    1960:	31f800ff 	andi	t8,t7,0xff
    1964:	0018c880 	sll	t9,t8,0x2
    1968:	25080000 	addiu	t0,t0,0
    196c:	0328a021 	addu	s4,t9,t0
    1970:	8e890000 	lw	t1,0(s4)
    1974:	afbf003c 	sw	ra,60(sp)
    1978:	afb70034 	sw	s7,52(sp)
    197c:	afb60030 	sw	s6,48(sp)
    1980:	afb5002c 	sw	s5,44(sp)
    1984:	afb30024 	sw	s3,36(sp)
    1988:	afb20020 	sw	s2,32(sp)
    198c:	afb1001c 	sw	s1,28(sp)
    1990:	afb00018 	sw	s0,24(sp)
    1994:	afa40090 	sw	a0,144(sp)
    1998:	afb80050 	sw	t8,80(sp)
    199c:	9131002d 	lbu	s1,45(t1)
    19a0:	241600ff 	li	s6,255
    19a4:	0000a825 	move	s5,zero
    19a8:	12d1002b 	beq	s6,s1,1a58 <func_800F8A44+0x274>
    19ac:	02209025 	move	s2,s1
    19b0:	93aa0093 	lbu	t2,147(sp)
    19b4:	3c170602 	lui	s7,0x602
    19b8:	24130030 	li	s3,48
    19bc:	afaa0044 	sw	t2,68(sp)
    19c0:	02330019 	multu	s1,s3
    19c4:	8e8b0000 	lw	t3,0(s4)
    19c8:	8fad0044 	lw	t5,68(sp)
    19cc:	00006012 	mflo	t4
    19d0:	016c8021 	addu	s0,t3,t4
    19d4:	920e000c 	lbu	t6,12(s0)
    19d8:	55ae0015 	bnel	t5,t6,1a30 <func_800F8A44+0x24c>
    19dc:	323500ff 	andi	s5,s1,0xff
    19e0:	960f0028 	lhu	t7,40(s0)
    19e4:	57cf0012 	bnel	s8,t7,1a30 <func_800F8A44+0x24c>
    19e8:	323500ff 	andi	s5,s1,0xff
    19ec:	9202002a 	lbu	v0,42(s0)
    19f0:	28410003 	slti	at,v0,3
    19f4:	14200007 	bnez	at,1a14 <func_800F8A44+0x230>
    19f8:	00000000 	nop
    19fc:	9219002e 	lbu	t9,46(s0)
    1a00:	00002825 	move	a1,zero
    1a04:	00194200 	sll	t0,t9,0x8
    1a08:	0c000000 	jal	0 <func_800F7260>
    1a0c:	01172025 	or	a0,t0,s7
    1a10:	9202002a 	lbu	v0,42(s0)
    1a14:	10400006 	beqz	v0,1a30 <func_800F8A44+0x24c>
    1a18:	93a40053 	lbu	a0,83(sp)
    1a1c:	0c000000 	jal	0 <func_800F7260>
    1a20:	322500ff 	andi	a1,s1,0xff
    1a24:	10000002 	b	1a30 <func_800F8A44+0x24c>
    1a28:	00000000 	nop
    1a2c:	323500ff 	andi	s5,s1,0xff
    1a30:	12d20007 	beq	s6,s2,1a50 <func_800F8A44+0x26c>
    1a34:	00000000 	nop
    1a38:	02b30019 	multu	s5,s3
    1a3c:	8e890000 	lw	t1,0(s4)
    1a40:	00005012 	mflo	t2
    1a44:	012a5821 	addu	t3,t1,t2
    1a48:	9171002d 	lbu	s1,45(t3)
    1a4c:	02209025 	move	s2,s1
    1a50:	16d2ffdb 	bne	s6,s2,19c0 <func_800F8A44+0x1dc>
    1a54:	00000000 	nop
    1a58:	93ac0093 	lbu	t4,147(sp)
    1a5c:	97ad0096 	lhu	t5,150(sp)
    1a60:	24040004 	li	a0,4
    1a64:	27a50058 	addiu	a1,sp,88
    1a68:	a3ac0064 	sb	t4,100(sp)
    1a6c:	0c000000 	jal	0 <func_800F7260>
    1a70:	a7ad0080 	sh	t5,128(sp)
    1a74:	8fbf003c 	lw	ra,60(sp)
    1a78:	8fb00018 	lw	s0,24(sp)
    1a7c:	8fb1001c 	lw	s1,28(sp)
    1a80:	8fb20020 	lw	s2,32(sp)
    1a84:	8fb30024 	lw	s3,36(sp)
    1a88:	8fb40028 	lw	s4,40(sp)
    1a8c:	8fb5002c 	lw	s5,44(sp)
    1a90:	8fb60030 	lw	s6,48(sp)
    1a94:	8fb70034 	lw	s7,52(sp)
    1a98:	8fbe0038 	lw	s8,56(sp)
    1a9c:	03e00008 	jr	ra
    1aa0:	27bd0090 	addiu	sp,sp,144

00001aa4 <func_800F8D04>:
    1aa4:	27bdff78 	addiu	sp,sp,-136
    1aa8:	afb40028 	sw	s4,40(sp)
    1aac:	3094f000 	andi	s4,a0,0xf000
    1ab0:	0014a302 	srl	s4,s4,0xc
    1ab4:	329400ff 	andi	s4,s4,0xff
    1ab8:	3c0f0000 	lui	t7,0x0
    1abc:	afb5002c 	sw	s5,44(sp)
    1ac0:	25ef0000 	addiu	t7,t7,0
    1ac4:	00147080 	sll	t6,s4,0x2
    1ac8:	01cfa821 	addu	s5,t6,t7
    1acc:	8ea20000 	lw	v0,0(s5)
    1ad0:	afbf003c 	sw	ra,60(sp)
    1ad4:	afbe0038 	sw	s8,56(sp)
    1ad8:	afb70034 	sw	s7,52(sp)
    1adc:	afb60030 	sw	s6,48(sp)
    1ae0:	afb30024 	sw	s3,36(sp)
    1ae4:	afb20020 	sw	s2,32(sp)
    1ae8:	afb1001c 	sw	s1,28(sp)
    1aec:	afb00018 	sw	s0,24(sp)
    1af0:	afa40088 	sw	a0,136(sp)
    1af4:	9051002d 	lbu	s1,45(v0)
    1af8:	241600ff 	li	s6,255
    1afc:	00009025 	move	s2,zero
    1b00:	12d10025 	beq	s6,s1,1b98 <func_800F8D04+0xf4>
    1b04:	24170030 	li	s7,48
    1b08:	3c1e0602 	lui	s8,0x602
    1b0c:	02370019 	multu	s1,s7
    1b10:	8fb90088 	lw	t9,136(sp)
    1b14:	0000c012 	mflo	t8
    1b18:	00588021 	addu	s0,v0,t8
    1b1c:	96080028 	lhu	t0,40(s0)
    1b20:	57280016 	bnel	t9,t0,1b7c <func_800F8D04+0xd8>
    1b24:	323200ff 	andi	s2,s1,0xff
    1b28:	9202002a 	lbu	v0,42(s0)
    1b2c:	00129880 	sll	s3,s2,0x2
    1b30:	02729823 	subu	s3,s3,s2
    1b34:	28410003 	slti	at,v0,3
    1b38:	14200007 	bnez	at,1b58 <func_800F8D04+0xb4>
    1b3c:	00139900 	sll	s3,s3,0x4
    1b40:	920a002e 	lbu	t2,46(s0)
    1b44:	00002825 	move	a1,zero
    1b48:	000a5a00 	sll	t3,t2,0x8
    1b4c:	0c000000 	jal	0 <func_800F7260>
    1b50:	017e2025 	or	a0,t3,s8
    1b54:	9202002a 	lbu	v0,42(s0)
    1b58:	10400003 	beqz	v0,1b68 <func_800F8D04+0xc4>
    1b5c:	328400ff 	andi	a0,s4,0xff
    1b60:	0c000000 	jal	0 <func_800F7260>
    1b64:	322500ff 	andi	a1,s1,0xff
    1b68:	8ea20000 	lw	v0,0(s5)
    1b6c:	00536021 	addu	t4,v0,s3
    1b70:	10000007 	b	1b90 <func_800F8D04+0xec>
    1b74:	9191002d 	lbu	s1,45(t4)
    1b78:	323200ff 	andi	s2,s1,0xff
    1b7c:	00126880 	sll	t5,s2,0x2
    1b80:	01b26823 	subu	t5,t5,s2
    1b84:	000d6900 	sll	t5,t5,0x4
    1b88:	004d7021 	addu	t6,v0,t5
    1b8c:	91d1002d 	lbu	s1,45(t6)
    1b90:	16d1ffde 	bne	s6,s1,1b0c <func_800F8D04+0x68>
    1b94:	00000000 	nop
    1b98:	8faf0088 	lw	t7,136(sp)
    1b9c:	24040005 	li	a0,5
    1ba0:	27a50050 	addiu	a1,sp,80
    1ba4:	0c000000 	jal	0 <func_800F7260>
    1ba8:	a7af0078 	sh	t7,120(sp)
    1bac:	8fbf003c 	lw	ra,60(sp)
    1bb0:	8fb00018 	lw	s0,24(sp)
    1bb4:	8fb1001c 	lw	s1,28(sp)
    1bb8:	8fb20020 	lw	s2,32(sp)
    1bbc:	8fb30024 	lw	s3,36(sp)
    1bc0:	8fb40028 	lw	s4,40(sp)
    1bc4:	8fb5002c 	lw	s5,44(sp)
    1bc8:	8fb60030 	lw	s6,48(sp)
    1bcc:	8fb70034 	lw	s7,52(sp)
    1bd0:	8fbe0038 	lw	s8,56(sp)
    1bd4:	03e00008 	jr	ra
    1bd8:	27bd0088 	addiu	sp,sp,136

00001bdc <func_800F8E3C>:
    1bdc:	27bdffe0 	addiu	sp,sp,-32
    1be0:	afb10018 	sw	s1,24(sp)
    1be4:	afb00014 	sw	s0,20(sp)
    1be8:	3c100000 	lui	s0,0x0
    1bec:	3c110000 	lui	s1,0x0
    1bf0:	26310000 	addiu	s1,s1,0
    1bf4:	26100000 	addiu	s0,s0,0
    1bf8:	920e0000 	lbu	t6,0(s0)
    1bfc:	922f0000 	lbu	t7,0(s1)
    1c00:	afbf001c 	sw	ra,28(sp)
    1c04:	51cf000a 	beql	t6,t7,1c30 <func_800F8E3C+0x54>
    1c08:	8fbf001c 	lw	ra,28(sp)
    1c0c:	0c000000 	jal	0 <func_800F7260>
    1c10:	00000000 	nop
    1c14:	92180000 	lbu	t8,0(s0)
    1c18:	92290000 	lbu	t1,0(s1)
    1c1c:	27190001 	addiu	t9,t8,1
    1c20:	332800ff 	andi	t0,t9,0xff
    1c24:	1509fff9 	bne	t0,t1,1c0c <func_800F8E3C+0x30>
    1c28:	a2190000 	sb	t9,0(s0)
    1c2c:	8fbf001c 	lw	ra,28(sp)
    1c30:	8fb00014 	lw	s0,20(sp)
    1c34:	8fb10018 	lw	s1,24(sp)
    1c38:	03e00008 	jr	ra
    1c3c:	27bd0020 	addiu	sp,sp,32
    1c40:	afa60008 	sw	a2,8(sp)
    1c44:	30c6ffff 	andi	a2,a2,0xffff
    1c48:	afa40000 	sw	a0,0(sp)
    1c4c:	afa50004 	sw	a1,4(sp)
    1c50:	30a500ff 	andi	a1,a1,0xff
    1c54:	14c00003 	bnez	a2,1c64 <func_800F8E3C+0x88>
    1c58:	308400ff 	andi	a0,a0,0xff
    1c5c:	24c60001 	addiu	a2,a2,1
    1c60:	30c6ffff 	andi	a2,a2,0xffff
    1c64:	44852000 	mtc1	a1,$f4
    1c68:	3c0f0000 	lui	t7,0x0
    1c6c:	25ef0000 	addiu	t7,t7,0
    1c70:	00047100 	sll	t6,a0,0x4
    1c74:	01cf1021 	addu	v0,t6,t7
    1c78:	04a10005 	bgez	a1,1c90 <func_800F8E3C+0xb4>
    1c7c:	468021a0 	cvt.s.w	$f6,$f4
    1c80:	3c014f80 	lui	at,0x4f80
    1c84:	44814000 	mtc1	at,$f8
    1c88:	00000000 	nop
    1c8c:	46083180 	add.s	$f6,$f6,$f8
    1c90:	3c0142fe 	lui	at,0x42fe
    1c94:	44815000 	mtc1	at,$f10
    1c98:	c4500000 	lwc1	$f16,0(v0)
    1c9c:	44862000 	mtc1	a2,$f4
    1ca0:	460a3003 	div.s	$f0,$f6,$f10
    1ca4:	a446000c 	sh	a2,12(v0)
    1ca8:	3c014f80 	lui	at,0x4f80
    1cac:	46802220 	cvt.s.w	$f8,$f4
    1cb0:	e4400004 	swc1	$f0,4(v0)
    1cb4:	04c10004 	bgez	a2,1cc8 <func_800F8E3C+0xec>
    1cb8:	46008481 	sub.s	$f18,$f16,$f0
    1cbc:	44813000 	mtc1	at,$f6
    1cc0:	00000000 	nop
    1cc4:	46064200 	add.s	$f8,$f8,$f6
    1cc8:	46089283 	div.s	$f10,$f18,$f8
    1ccc:	03e00008 	jr	ra
    1cd0:	e44a0008 	swc1	$f10,8(v0)

00001cd4 <func_800F8F34>:
    1cd4:	afa40000 	sw	a0,0(sp)
    1cd8:	308400ff 	andi	a0,a0,0xff
    1cdc:	3c0f0000 	lui	t7,0x0
    1ce0:	25ef0000 	addiu	t7,t7,0
    1ce4:	00047100 	sll	t6,a0,0x4
    1ce8:	01cf1021 	addu	v0,t6,t7
    1cec:	9443000c 	lhu	v1,12(v0)
    1cf0:	1060000b 	beqz	v1,1d20 <func_800F8F34+0x4c>
    1cf4:	2478ffff 	addiu	t8,v1,-1
    1cf8:	3319ffff 	andi	t9,t8,0xffff
    1cfc:	13200006 	beqz	t9,1d18 <func_800F8F34+0x44>
    1d00:	a458000c 	sh	t8,12(v0)
    1d04:	c4440000 	lwc1	$f4,0(v0)
    1d08:	c4460008 	lwc1	$f6,8(v0)
    1d0c:	46062201 	sub.s	$f8,$f4,$f6
    1d10:	03e00008 	jr	ra
    1d14:	e4480000 	swc1	$f8,0(v0)
    1d18:	c44a0004 	lwc1	$f10,4(v0)
    1d1c:	e44a0000 	swc1	$f10,0(v0)
    1d20:	03e00008 	jr	ra
    1d24:	00000000 	nop

00001d28 <func_800F8F88>:
    1d28:	3c0f0000 	lui	t7,0x0
    1d2c:	8def3828 	lw	t7,14376(t7)
    1d30:	3c0e0000 	lui	t6,0x0
    1d34:	27bdffe0 	addiu	sp,sp,-32
    1d38:	25ce5ab0 	addiu	t6,t6,23216
    1d3c:	afbf001c 	sw	ra,28(sp)
    1d40:	11cf000f 	beq	t6,t7,1d80 <func_800F8F88+0x58>
    1d44:	afb00018 	sw	s0,24(sp)
    1d48:	3c010000 	lui	at,0x0
    1d4c:	a0200000 	sb	zero,0(at)
    1d50:	00008025 	move	s0,zero
    1d54:	0c000000 	jal	0 <func_800F7260>
    1d58:	320400ff 	andi	a0,s0,0xff
    1d5c:	0c000000 	jal	0 <func_800F7260>
    1d60:	320400ff 	andi	a0,s0,0xff
    1d64:	0c000000 	jal	0 <func_800F7260>
    1d68:	320400ff 	andi	a0,s0,0xff
    1d6c:	26100001 	addiu	s0,s0,1
    1d70:	321000ff 	andi	s0,s0,0xff
    1d74:	2a010007 	slti	at,s0,7
    1d78:	1420fff6 	bnez	at,1d54 <func_800F8F88+0x2c>
    1d7c:	00000000 	nop
    1d80:	8fbf001c 	lw	ra,28(sp)
    1d84:	8fb00018 	lw	s0,24(sp)
    1d88:	27bd0020 	addiu	sp,sp,32
    1d8c:	03e00008 	jr	ra
    1d90:	00000000 	nop

00001d94 <func_800F8FF4>:
    1d94:	308ef000 	andi	t6,a0,0xf000
    1d98:	000e7b02 	srl	t7,t6,0xc
    1d9c:	31f800ff 	andi	t8,t7,0xff
    1da0:	0018c880 	sll	t9,t8,0x2
    1da4:	3c030000 	lui	v1,0x0
    1da8:	00791821 	addu	v1,v1,t9
    1dac:	8c630000 	lw	v1,0(v1)
    1db0:	240600ff 	li	a2,255
    1db4:	24070030 	li	a3,48
    1db8:	9062002d 	lbu	v0,45(v1)
    1dbc:	50c2000d 	beql	a2,v0,1df4 <func_800F8FF4+0x60>
    1dc0:	00001025 	move	v0,zero
    1dc4:	00470019 	multu	v0,a3
    1dc8:	00004012 	mflo	t0
    1dcc:	00682821 	addu	a1,v1,t0
    1dd0:	94a90028 	lhu	t1,40(a1)
    1dd4:	54890004 	bnel	a0,t1,1de8 <func_800F8FF4+0x54>
    1dd8:	90a2002d 	lbu	v0,45(a1)
    1ddc:	03e00008 	jr	ra
    1de0:	24020001 	li	v0,1
    1de4:	90a2002d 	lbu	v0,45(a1)
    1de8:	14c2fff6 	bne	a2,v0,1dc4 <func_800F8FF4+0x30>
    1dec:	00000000 	nop
    1df0:	00001025 	move	v0,zero
    1df4:	03e00008 	jr	ra
    1df8:	00000000 	nop

00001dfc <func_800F905C>:
    1dfc:	3c010000 	lui	at,0x0
    1e00:	a0200000 	sb	zero,0(at)
    1e04:	3c010000 	lui	at,0x0
    1e08:	a0200000 	sb	zero,0(at)
    1e0c:	3c010000 	lui	at,0x0
    1e10:	a4200000 	sh	zero,0(at)
    1e14:	3c013f80 	lui	at,0x3f80
    1e18:	3c090000 	lui	t1,0x0
    1e1c:	3c080000 	lui	t0,0x0
    1e20:	3c070000 	lui	a3,0x0
    1e24:	3c050000 	lui	a1,0x0
    1e28:	3c040000 	lui	a0,0x0
    1e2c:	44810000 	mtc1	at,$f0
    1e30:	24840000 	addiu	a0,a0,0
    1e34:	24a50000 	addiu	a1,a1,0
    1e38:	24e70000 	addiu	a3,a3,0
    1e3c:	25080000 	addiu	t0,t0,0
    1e40:	25290000 	addiu	t1,t1,0
    1e44:	00001025 	move	v0,zero
    1e48:	24060001 	li	a2,1
    1e4c:	00827021 	addu	t6,a0,v0
    1e50:	00a27821 	addu	t7,a1,v0
    1e54:	a1c00000 	sb	zero,0(t6)
    1e58:	00e2c021 	addu	t8,a3,v0
    1e5c:	0102c821 	addu	t9,t0,v0
    1e60:	00026100 	sll	t4,v0,0x4
    1e64:	24420001 	addiu	v0,v0,1
    1e68:	a1e60000 	sb	a2,0(t7)
    1e6c:	304200ff 	andi	v0,v0,0xff
    1e70:	a3000000 	sb	zero,0(t8)
    1e74:	28410007 	slti	at,v0,7
    1e78:	a3200000 	sb	zero,0(t9)
    1e7c:	012c1821 	addu	v1,t1,t4
    1e80:	e4600000 	swc1	$f0,0(v1)
    1e84:	1420fff1 	bnez	at,1e4c <func_800F905C+0x50>
    1e88:	a460000c 	sh	zero,12(v1)
    1e8c:	00001025 	move	v0,zero
    1e90:	240800ff 	li	t0,255
    1e94:	00026880 	sll	t5,v0,0x2
    1e98:	01a26823 	subu	t5,t5,v0
    1e9c:	3c0e0000 	lui	t6,0x0
    1ea0:	25ce0000 	addiu	t6,t6,0
    1ea4:	000d68c0 	sll	t5,t5,0x3
    1ea8:	01ae2021 	addu	a0,t5,t6
    1eac:	00001825 	move	v1,zero
    1eb0:	000378c0 	sll	t7,v1,0x3
    1eb4:	24630001 	addiu	v1,v1,1
    1eb8:	306300ff 	andi	v1,v1,0xff
    1ebc:	28610003 	slti	at,v1,3
    1ec0:	008fc021 	addu	t8,a0,t7
    1ec4:	1420fffa 	bnez	at,1eb0 <func_800F905C+0xb4>
    1ec8:	a3080004 	sb	t0,4(t8)
    1ecc:	24420001 	addiu	v0,v0,1
    1ed0:	304200ff 	andi	v0,v0,0xff
    1ed4:	28410007 	slti	at,v0,7
    1ed8:	5420ffef 	bnezl	at,1e98 <func_800F905C+0x9c>
    1edc:	00026880 	sll	t5,v0,0x2
    1ee0:	3c0a0000 	lui	t2,0x0
    1ee4:	3c090000 	lui	t1,0x0
    1ee8:	25290000 	addiu	t1,t1,0
    1eec:	254a0000 	addiu	t2,t2,0
    1ef0:	00001025 	move	v0,zero
    1ef4:	240b0030 	li	t3,48
    1ef8:	0002c880 	sll	t9,v0,0x2
    1efc:	01392821 	addu	a1,t1,t9
    1f00:	8cac0000 	lw	t4,0(a1)
    1f04:	01423021 	addu	a2,t2,v0
    1f08:	24030001 	li	v1,1
    1f0c:	a188002c 	sb	t0,44(t4)
    1f10:	8cad0000 	lw	t5,0(a1)
    1f14:	24040001 	li	a0,1
    1f18:	a1a8002d 	sb	t0,45(t5)
    1f1c:	90ce0000 	lbu	t6,0(a2)
    1f20:	25cfffff 	addiu	t7,t6,-1
    1f24:	29e10002 	slti	at,t7,2
    1f28:	14200013 	bnez	at,1f78 <func_800F905C+0x17c>
    1f2c:	00000000 	nop
    1f30:	006b0019 	multu	v1,t3
    1f34:	8cb90000 	lw	t9,0(a1)
    1f38:	2498ffff 	addiu	t8,a0,-1
    1f3c:	248d0001 	addiu	t5,a0,1
    1f40:	24630001 	addiu	v1,v1,1
    1f44:	306300ff 	andi	v1,v1,0xff
    1f48:	00602025 	move	a0,v1
    1f4c:	00003812 	mflo	a3
    1f50:	03276021 	addu	t4,t9,a3
    1f54:	a198002c 	sb	t8,44(t4)
    1f58:	8cae0000 	lw	t6,0(a1)
    1f5c:	01c77821 	addu	t7,t6,a3
    1f60:	a1ed002d 	sb	t5,45(t7)
    1f64:	90d90000 	lbu	t9,0(a2)
    1f68:	2738ffff 	addiu	t8,t9,-1
    1f6c:	0078082a 	slt	at,v1,t8
    1f70:	1420ffef 	bnez	at,1f30 <func_800F905C+0x134>
    1f74:	00000000 	nop
    1f78:	006b0019 	multu	v1,t3
    1f7c:	8cae0000 	lw	t6,0(a1)
    1f80:	246cffff 	addiu	t4,v1,-1
    1f84:	24420001 	addiu	v0,v0,1
    1f88:	304200ff 	andi	v0,v0,0xff
    1f8c:	28410007 	slti	at,v0,7
    1f90:	00003812 	mflo	a3
    1f94:	01c76821 	addu	t5,t6,a3
    1f98:	a1ac002c 	sb	t4,44(t5)
    1f9c:	8caf0000 	lw	t7,0(a1)
    1fa0:	01e7c821 	addu	t9,t7,a3
    1fa4:	1420ffd4 	bnez	at,1ef8 <func_800F905C+0xfc>
    1fa8:	a328002d 	sb	t0,45(t9)
    1fac:	3c050000 	lui	a1,0x0
    1fb0:	24a50000 	addiu	a1,a1,0
    1fb4:	90a30000 	lbu	v1,0(a1)
    1fb8:	3c080000 	lui	t0,0x0
    1fbc:	25080000 	addiu	t0,t0,0
    1fc0:	14600012 	bnez	v1,200c <func_800F905C+0x210>
    1fc4:	00001025 	move	v0,zero
    1fc8:	3c070000 	lui	a3,0x0
    1fcc:	3c060000 	lui	a2,0x0
    1fd0:	24c60000 	addiu	a2,a2,0
    1fd4:	24e70000 	addiu	a3,a3,0
    1fd8:	00022040 	sll	a0,v0,0x1
    1fdc:	01026021 	addu	t4,t0,v0
    1fe0:	24420001 	addiu	v0,v0,1
    1fe4:	00c4c021 	addu	t8,a2,a0
    1fe8:	304200ff 	andi	v0,v0,0xff
    1fec:	a7000000 	sh	zero,0(t8)
    1ff0:	00e47021 	addu	t6,a3,a0
    1ff4:	2841000a 	slti	at,v0,10
    1ff8:	a5c00000 	sh	zero,0(t6)
    1ffc:	1420fff6 	bnez	at,1fd8 <func_800F905C+0x1dc>
    2000:	a1800000 	sb	zero,0(t4)
    2004:	246d0001 	addiu	t5,v1,1
    2008:	a0ad0000 	sb	t5,0(a1)
    200c:	03e00008 	jr	ra
    2010:	00000000 	nop
	...
