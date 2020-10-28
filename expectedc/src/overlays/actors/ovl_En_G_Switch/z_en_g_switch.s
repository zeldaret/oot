
build/src/overlays/actors/ovl_En_G_Switch/z_en_g_switch.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGSwitch_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa50034 	sw	a1,52(sp)
      10:	8482001c 	lh	v0,28(a0)
      14:	24190064 	li	t9,100
      18:	00808025 	move	s0,a0
      1c:	00027303 	sra	t6,v0,0xc
      20:	31cf000f 	andi	t7,t6,0xf
      24:	3058003f 	andi	t8,v0,0x3f
      28:	a48f0150 	sh	t7,336(a0)
      2c:	a4980154 	sh	t8,340(a0)
      30:	a499015c 	sh	t9,348(a0)
      34:	3c040000 	lui	a0,0x0
      38:	24840000 	addiu	a0,a0,0
      3c:	0c000000 	jal	0 <EnGSwitch_Init>
      40:	86050150 	lh	a1,336(s0)
      44:	3c040000 	lui	a0,0x0
      48:	24840000 	addiu	a0,a0,0
      4c:	0c000000 	jal	0 <EnGSwitch_Init>
      50:	86050154 	lh	a1,340(s0)
      54:	86020150 	lh	v0,336(s0)
      58:	24010001 	li	at,1
      5c:	3c040000 	lui	a0,0x0
      60:	1040000b 	beqz	v0,90 <EnGSwitch_Init+0x90>
      64:	00000000 	nop
      68:	1041002e 	beq	v0,at,124 <EnGSwitch_Init+0x124>
      6c:	3c040000 	lui	a0,0x0
      70:	24010002 	li	at,2
      74:	10410059 	beq	v0,at,1dc <EnGSwitch_Init+0x1dc>
      78:	3c040000 	lui	a0,0x0
      7c:	24010003 	li	at,3
      80:	10410098 	beq	v0,at,2e4 <EnGSwitch_Init+0x2e4>
      84:	02002025 	move	a0,s0
      88:	100000b3 	b	358 <EnGSwitch_Init+0x358>
      8c:	8fbf001c 	lw	ra,28(sp)
      90:	0c000000 	jal	0 <EnGSwitch_Init>
      94:	24840000 	addiu	a0,a0,0
      98:	3c040000 	lui	a0,0x0
      9c:	24840000 	addiu	a0,a0,0
      a0:	0c000000 	jal	0 <EnGSwitch_Init>
      a4:	8605001c 	lh	a1,28(s0)
      a8:	3c010000 	lui	at,0x0
      ac:	a4200000 	sh	zero,0(at)
      b0:	8608001c 	lh	t0,28(s0)
      b4:	3c040000 	lui	a0,0x0
      b8:	24840000 	addiu	a0,a0,0
      bc:	00084983 	sra	t1,t0,0x6
      c0:	a6090152 	sh	t1,338(s0)
      c4:	860a0152 	lh	t2,338(s0)
      c8:	314b003f 	andi	t3,t2,0x3f
      cc:	a60b0152 	sh	t3,338(s0)
      d0:	0c000000 	jal	0 <EnGSwitch_Init>
      d4:	86050152 	lh	a1,338(s0)
      d8:	3c040000 	lui	a0,0x0
      dc:	0c000000 	jal	0 <EnGSwitch_Init>
      e0:	24840000 	addiu	a0,a0,0
      e4:	8fa40034 	lw	a0,52(sp)
      e8:	0c000000 	jal	0 <EnGSwitch_Init>
      ec:	86050154 	lh	a1,340(s0)
      f0:	10400009 	beqz	v0,118 <EnGSwitch_Init+0x118>
      f4:	3c0c0000 	lui	t4,0x0
      f8:	3c040000 	lui	a0,0x0
      fc:	24840000 	addiu	a0,a0,0
     100:	0c000000 	jal	0 <EnGSwitch_Init>
     104:	86050154 	lh	a1,340(s0)
     108:	0c000000 	jal	0 <EnGSwitch_Init>
     10c:	02002025 	move	a0,s0
     110:	10000091 	b	358 <EnGSwitch_Init+0x358>
     114:	8fbf001c 	lw	ra,28(sp)
     118:	258c0000 	addiu	t4,t4,0
     11c:	1000008d 	b	354 <EnGSwitch_Init+0x354>
     120:	ae0c014c 	sw	t4,332(s0)
     124:	0c000000 	jal	0 <EnGSwitch_Init>
     128:	24840000 	addiu	a0,a0,0
     12c:	3c040000 	lui	a0,0x0
     130:	24840000 	addiu	a0,a0,0
     134:	0c000000 	jal	0 <EnGSwitch_Init>
     138:	8605001c 	lh	a1,28(s0)
     13c:	240d0005 	li	t5,5
     140:	240e0014 	li	t6,20
     144:	a60d0158 	sh	t5,344(s0)
     148:	a60e015c 	sh	t6,348(s0)
     14c:	2605017c 	addiu	a1,s0,380
     150:	afa50020 	sw	a1,32(sp)
     154:	0c000000 	jal	0 <EnGSwitch_Init>
     158:	8fa40034 	lw	a0,52(sp)
     15c:	3c070000 	lui	a3,0x0
     160:	8fa50020 	lw	a1,32(sp)
     164:	24e70000 	addiu	a3,a3,0
     168:	8fa40034 	lw	a0,52(sp)
     16c:	0c000000 	jal	0 <EnGSwitch_Init>
     170:	02003025 	move	a2,s0
     174:	3c01442f 	lui	at,0x442f
     178:	44812000 	mtc1	at,$f4
     17c:	3c0f0000 	lui	t7,0x0
     180:	25ef0000 	addiu	t7,t7,0
     184:	ae0f0134 	sw	t7,308(s0)
     188:	e60400bc 	swc1	$f4,188(s0)
     18c:	8fa40034 	lw	a0,52(sp)
     190:	0c000000 	jal	0 <EnGSwitch_Init>
     194:	86050154 	lh	a1,340(s0)
     198:	10400009 	beqz	v0,1c0 <EnGSwitch_Init+0x1c0>
     19c:	02002025 	move	a0,s0
     1a0:	3c040000 	lui	a0,0x0
     1a4:	24840000 	addiu	a0,a0,0
     1a8:	0c000000 	jal	0 <EnGSwitch_Init>
     1ac:	86050154 	lh	a1,340(s0)
     1b0:	0c000000 	jal	0 <EnGSwitch_Init>
     1b4:	02002025 	move	a0,s0
     1b8:	10000067 	b	358 <EnGSwitch_Init+0x358>
     1bc:	8fbf001c 	lw	ra,28(sp)
     1c0:	3c053cf5 	lui	a1,0x3cf5
     1c4:	0c000000 	jal	0 <EnGSwitch_Init>
     1c8:	34a5c28f 	ori	a1,a1,0xc28f
     1cc:	3c180000 	lui	t8,0x0
     1d0:	27180000 	addiu	t8,t8,0
     1d4:	1000005f 	b	354 <EnGSwitch_Init+0x354>
     1d8:	ae18014c 	sw	t8,332(s0)
     1dc:	0c000000 	jal	0 <EnGSwitch_Init>
     1e0:	24840000 	addiu	a0,a0,0
     1e4:	3c040000 	lui	a0,0x0
     1e8:	0c000000 	jal	0 <EnGSwitch_Init>
     1ec:	24840000 	addiu	a0,a0,0
     1f0:	3c01c040 	lui	at,0xc040
     1f4:	44813000 	mtc1	at,$f6
     1f8:	3c010000 	lui	at,0x0
     1fc:	e606006c 	swc1	$f6,108(s0)
     200:	0c000000 	jal	0 <EnGSwitch_Init>
     204:	c42c0000 	lwc1	$f12,0(at)
     208:	4600020d 	trunc.w.s	$f8,$f0
     20c:	2605017c 	addiu	a1,s0,380
     210:	44084000 	mfc1	t0,$f8
     214:	00000000 	nop
     218:	a6080158 	sh	t0,344(s0)
     21c:	afa50020 	sw	a1,32(sp)
     220:	0c000000 	jal	0 <EnGSwitch_Init>
     224:	8fa40034 	lw	a0,52(sp)
     228:	3c070000 	lui	a3,0x0
     22c:	8fa50020 	lw	a1,32(sp)
     230:	24e70000 	addiu	a3,a3,0
     234:	8fa40034 	lw	a0,52(sp)
     238:	0c000000 	jal	0 <EnGSwitch_Init>
     23c:	02003025 	move	a2,s0
     240:	3c013e80 	lui	at,0x3e80
     244:	44810000 	mtc1	at,$f0
     248:	3c010000 	lui	at,0x0
     24c:	3c090001 	lui	t1,0x1
     250:	e6000050 	swc1	$f0,80(s0)
     254:	c42a0000 	lwc1	$f10,0(at)
     258:	3529f820 	ori	t1,t1,0xf820
     25c:	240a012c 	li	t2,300
     260:	ae09019c 	sw	t1,412(s0)
     264:	a60a015e 	sh	t2,350(s0)
     268:	e6000058 	swc1	$f0,88(s0)
     26c:	e60a0054 	swc1	$f10,84(s0)
     270:	8fa40034 	lw	a0,52(sp)
     274:	3c010001 	lui	at,0x1
     278:	342117a4 	ori	at,at,0x17a4
     27c:	8605015e 	lh	a1,350(s0)
     280:	0c000000 	jal	0 <EnGSwitch_Init>
     284:	00812021 	addu	a0,a0,at
     288:	a2020178 	sb	v0,376(s0)
     28c:	820b0178 	lb	t3,376(s0)
     290:	0561000b 	bgez	t3,2c0 <EnGSwitch_Init+0x2c0>
     294:	00000000 	nop
     298:	0c000000 	jal	0 <EnGSwitch_Init>
     29c:	02002025 	move	a0,s0
     2a0:	3c040000 	lui	a0,0x0
     2a4:	24840000 	addiu	a0,a0,0
     2a8:	0c000000 	jal	0 <EnGSwitch_Init>
     2ac:	82050178 	lb	a1,376(s0)
     2b0:	3c040000 	lui	a0,0x0
     2b4:	24840000 	addiu	a0,a0,0
     2b8:	0c000000 	jal	0 <EnGSwitch_Init>
     2bc:	8605001c 	lh	a1,28(s0)
     2c0:	3c0e0000 	lui	t6,0x0
     2c4:	240c0018 	li	t4,24
     2c8:	240d004a 	li	t5,74
     2cc:	25ce0000 	addiu	t6,t6,0
     2d0:	a60c01bc 	sh	t4,444(s0)
     2d4:	a60d01be 	sh	t5,446(s0)
     2d8:	a60001c0 	sh	zero,448(s0)
     2dc:	1000001d 	b	354 <EnGSwitch_Init+0x354>
     2e0:	ae0e014c 	sw	t6,332(s0)
     2e4:	3c01442f 	lui	at,0x442f
     2e8:	44818000 	mtc1	at,$f16
     2ec:	3c053d4c 	lui	a1,0x3d4c
     2f0:	34a5cccd 	ori	a1,a1,0xcccd
     2f4:	0c000000 	jal	0 <EnGSwitch_Init>
     2f8:	e61000bc 	swc1	$f16,188(s0)
     2fc:	2605017c 	addiu	a1,s0,380
     300:	afa50020 	sw	a1,32(sp)
     304:	0c000000 	jal	0 <EnGSwitch_Init>
     308:	8fa40034 	lw	a0,52(sp)
     30c:	3c070000 	lui	a3,0x0
     310:	8fa50020 	lw	a1,32(sp)
     314:	24e70000 	addiu	a3,a3,0
     318:	8fa40034 	lw	a0,52(sp)
     31c:	0c000000 	jal	0 <EnGSwitch_Init>
     320:	02003025 	move	a2,s0
     324:	3c0f0000 	lui	t7,0x0
     328:	3c090000 	lui	t1,0x0
     32c:	25ef0000 	addiu	t7,t7,0
     330:	24180014 	li	t8,20
     334:	2419003c 	li	t9,60
     338:	24080005 	li	t0,5
     33c:	25290000 	addiu	t1,t1,0
     340:	ae0f0134 	sw	t7,308(s0)
     344:	a61801bc 	sh	t8,444(s0)
     348:	a61901be 	sh	t9,446(s0)
     34c:	a60801c0 	sh	t0,448(s0)
     350:	ae09014c 	sw	t1,332(s0)
     354:	8fbf001c 	lw	ra,28(sp)
     358:	8fb00018 	lw	s0,24(sp)
     35c:	27bd0030 	addiu	sp,sp,48
     360:	03e00008 	jr	ra
     364:	00000000 	nop

00000368 <EnGSwitch_Destroy>:
     368:	27bdffe8 	addiu	sp,sp,-24
     36c:	00803025 	move	a2,a0
     370:	afbf0014 	sw	ra,20(sp)
     374:	00a02025 	move	a0,a1
     378:	0c000000 	jal	0 <EnGSwitch_Init>
     37c:	24c5017c 	addiu	a1,a2,380
     380:	8fbf0014 	lw	ra,20(sp)
     384:	27bd0018 	addiu	sp,sp,24
     388:	03e00008 	jr	ra
     38c:	00000000 	nop

00000390 <func_80A22250>:
     390:	27bdff98 	addiu	sp,sp,-104
     394:	3c0f0000 	lui	t7,0x0
     398:	afbf002c 	sw	ra,44(sp)
     39c:	afb20028 	sw	s2,40(sp)
     3a0:	afb10024 	sw	s1,36(sp)
     3a4:	afb00020 	sw	s0,32(sp)
     3a8:	25ef0000 	addiu	t7,t7,0
     3ac:	8df90000 	lw	t9,0(t7)
     3b0:	27ae0044 	addiu	t6,sp,68
     3b4:	8df80004 	lw	t8,4(t7)
     3b8:	add90000 	sw	t9,0(t6)
     3bc:	8df90008 	lw	t9,8(t7)
     3c0:	3c090000 	lui	t1,0x0
     3c4:	25290000 	addiu	t1,t1,0
     3c8:	add80004 	sw	t8,4(t6)
     3cc:	add90008 	sw	t9,8(t6)
     3d0:	8d2b0000 	lw	t3,0(t1)
     3d4:	27a80038 	addiu	t0,sp,56
     3d8:	8d2a0004 	lw	t2,4(t1)
     3dc:	ad0b0000 	sw	t3,0(t0)
     3e0:	8d2b0008 	lw	t3,8(t1)
     3e4:	3c014220 	lui	at,0x4220
     3e8:	44816000 	mtc1	at,$f12
     3ec:	00a08025 	move	s0,a1
     3f0:	00808825 	move	s1,a0
     3f4:	ad0a0004 	sw	t2,4(t0)
     3f8:	0c000000 	jal	0 <EnGSwitch_Init>
     3fc:	ad0b0008 	sw	t3,8(t0)
     400:	c6240024 	lwc1	$f4,36(s1)
     404:	3c01420c 	lui	at,0x420c
     408:	44816000 	mtc1	at,$f12
     40c:	46040180 	add.s	$f6,$f0,$f4
     410:	0c000000 	jal	0 <EnGSwitch_Init>
     414:	e7a6005c 	swc1	$f6,92(sp)
     418:	3c0141f0 	lui	at,0x41f0
     41c:	44815000 	mtc1	at,$f10
     420:	c6280028 	lwc1	$f8,40(s1)
     424:	3c014220 	lui	at,0x4220
     428:	44816000 	mtc1	at,$f12
     42c:	460a4400 	add.s	$f16,$f8,$f10
     430:	46100480 	add.s	$f18,$f0,$f16
     434:	0c000000 	jal	0 <EnGSwitch_Init>
     438:	e7b20060 	swc1	$f18,96(sp)
     43c:	c624002c 	lwc1	$f4,44(s1)
     440:	27b20050 	addiu	s2,sp,80
     444:	02403825 	move	a3,s2
     448:	46040180 	add.s	$f6,$f0,$f4
     44c:	02002025 	move	a0,s0
     450:	00002825 	move	a1,zero
     454:	240602bc 	li	a2,700
     458:	e7a60064 	swc1	$f6,100(sp)
     45c:	862c01a2 	lh	t4,418(s1)
     460:	448c4000 	mtc1	t4,$f8
     464:	00000000 	nop
     468:	468042a0 	cvt.s.w	$f10,$f8
     46c:	e7aa0050 	swc1	$f10,80(sp)
     470:	862d01a4 	lh	t5,420(s1)
     474:	448d8000 	mtc1	t5,$f16
     478:	00000000 	nop
     47c:	468084a0 	cvt.s.w	$f18,$f16
     480:	e7b20054 	swc1	$f18,84(sp)
     484:	862e01a6 	lh	t6,422(s1)
     488:	448e2000 	mtc1	t6,$f4
     48c:	00000000 	nop
     490:	468021a0 	cvt.s.w	$f6,$f4
     494:	0c000000 	jal	0 <EnGSwitch_Init>
     498:	e7a60058 	swc1	$f6,88(sp)
     49c:	86220150 	lh	v0,336(s1)
     4a0:	24010002 	li	at,2
     4a4:	02002025 	move	a0,s0
     4a8:	1441000c 	bne	v0,at,4dc <func_80A22250+0x14c>
     4ac:	02402825 	move	a1,s2
     4b0:	3c014170 	lui	at,0x4170
     4b4:	44814000 	mtc1	at,$f8
     4b8:	240f0005 	li	t7,5
     4bc:	24180002 	li	t8,2
     4c0:	afb80014 	sw	t8,20(sp)
     4c4:	afaf0010 	sw	t7,16(sp)
     4c8:	27a60038 	addiu	a2,sp,56
     4cc:	27a70044 	addiu	a3,sp,68
     4d0:	0c000000 	jal	0 <EnGSwitch_Init>
     4d4:	e7a8003c 	swc1	$f8,60(sp)
     4d8:	86220150 	lh	v0,336(s1)
     4dc:	24010003 	li	at,3
     4e0:	54410010 	bnel	v0,at,524 <func_80A22250+0x194>
     4e4:	8fbf002c 	lw	ra,44(sp)
     4e8:	8639015c 	lh	t9,348(s1)
     4ec:	00008025 	move	s0,zero
     4f0:	27b2005c 	addiu	s2,sp,92
     4f4:	1b20000a 	blez	t9,520 <func_80A22250+0x190>
     4f8:	02202025 	move	a0,s1
     4fc:	02402825 	move	a1,s2
     500:	24060064 	li	a2,100
     504:	0c000000 	jal	0 <EnGSwitch_Init>
     508:	86270158 	lh	a3,344(s1)
     50c:	8628015c 	lh	t0,348(s1)
     510:	26100001 	addiu	s0,s0,1
     514:	0208082a 	slt	at,s0,t0
     518:	5420fff8 	bnezl	at,4fc <func_80A22250+0x16c>
     51c:	02202025 	move	a0,s1
     520:	8fbf002c 	lw	ra,44(sp)
     524:	8fb00020 	lw	s0,32(sp)
     528:	8fb10024 	lw	s1,36(sp)
     52c:	8fb20028 	lw	s2,40(sp)
     530:	03e00008 	jr	ra
     534:	27bd0068 	addiu	sp,sp,104

00000538 <func_80A223F8>:
     538:	27bdffe8 	addiu	sp,sp,-24
     53c:	3c010001 	lui	at,0x1
     540:	00803025 	move	a2,a0
     544:	342117a4 	ori	at,at,0x17a4
     548:	afbf0014 	sw	ra,20(sp)
     54c:	afa5001c 	sw	a1,28(sp)
     550:	00a12021 	addu	a0,a1,at
     554:	80c50178 	lb	a1,376(a2)
     558:	0c000000 	jal	0 <EnGSwitch_Init>
     55c:	afa60018 	sw	a2,24(sp)
     560:	10400016 	beqz	v0,5bc <func_80A223F8+0x84>
     564:	8fa60018 	lw	a2,24(sp)
     568:	80cf0178 	lb	t7,376(a2)
     56c:	8fae001c 	lw	t6,28(sp)
     570:	3c080001 	lui	t0,0x1
     574:	000fc100 	sll	t8,t7,0x4
     578:	030fc021 	addu	t8,t8,t7
     57c:	0018c080 	sll	t8,t8,0x2
     580:	01d8c821 	addu	t9,t6,t8
     584:	01194021 	addu	t0,t0,t9
     588:	8d0817b4 	lw	t0,6068(t0)
     58c:	3c018000 	lui	at,0x8000
     590:	3c0b0000 	lui	t3,0x0
     594:	01014821 	addu	t1,t0,at
     598:	3c010000 	lui	at,0x0
     59c:	ac290018 	sw	t1,24(at)
     5a0:	80ca0178 	lb	t2,376(a2)
     5a4:	3c0c0000 	lui	t4,0x0
     5a8:	256b0000 	addiu	t3,t3,0
     5ac:	258c0000 	addiu	t4,t4,0
     5b0:	accb0134 	sw	t3,308(a2)
     5b4:	accc014c 	sw	t4,332(a2)
     5b8:	a0ca001e 	sb	t2,30(a2)
     5bc:	8fbf0014 	lw	ra,20(sp)
     5c0:	27bd0018 	addiu	sp,sp,24
     5c4:	03e00008 	jr	ra
     5c8:	00000000 	nop

000005cc <func_80A2248C>:
     5cc:	27bdffe0 	addiu	sp,sp,-32
     5d0:	afbf001c 	sw	ra,28(sp)
     5d4:	afb00018 	sw	s0,24(sp)
     5d8:	afa50024 	sw	a1,36(sp)
     5dc:	3c020000 	lui	v0,0x0
     5e0:	84420000 	lh	v0,0(v0)
     5e4:	8486016a 	lh	a2,362(a0)
     5e8:	00808025 	move	s0,a0
     5ec:	00c2082a 	slt	at,a2,v0
     5f0:	10200013 	beqz	at,640 <func_80A2248C+0x74>
     5f4:	28410005 	slti	at,v0,5
     5f8:	10200011 	beqz	at,640 <func_80A2248C+0x74>
     5fc:	3c040000 	lui	a0,0x0
     600:	24840000 	addiu	a0,a0,0
     604:	0c000000 	jal	0 <EnGSwitch_Init>
     608:	00c02825 	move	a1,a2
     60c:	860e016a 	lh	t6,362(s0)
     610:	3c060000 	lui	a2,0x0
     614:	3c040000 	lui	a0,0x0
     618:	00ce3021 	addu	a2,a2,t6
     61c:	80c60000 	lb	a2,0(a2)
     620:	24840000 	addiu	a0,a0,0
     624:	0c000000 	jal	0 <EnGSwitch_Init>
     628:	240528e8 	li	a1,10472
     62c:	3c0f0000 	lui	t7,0x0
     630:	85ef0000 	lh	t7,0(t7)
     634:	3c020000 	lui	v0,0x0
     638:	a60f016a 	sh	t7,362(s0)
     63c:	84420000 	lh	v0,0(v0)
     640:	86180152 	lh	t8,338(s0)
     644:	3c040000 	lui	a0,0x0
     648:	24840000 	addiu	a0,a0,0
     64c:	0058082a 	slt	at,v0,t8
     650:	5420001d 	bnezl	at,6c8 <func_80A2248C+0xfc>
     654:	8fbf001c 	lw	ra,28(sp)
     658:	0c000000 	jal	0 <EnGSwitch_Init>
     65c:	86050154 	lh	a1,340(s0)
     660:	3c040000 	lui	a0,0x0
     664:	0c000000 	jal	0 <EnGSwitch_Init>
     668:	24840000 	addiu	a0,a0,0
     66c:	8fa60024 	lw	a2,36(sp)
     670:	2401000b 	li	at,11
     674:	84d900a4 	lh	t9,164(a2)
     678:	17210009 	bne	t9,at,6a0 <func_80A2248C+0xd4>
     67c:	00000000 	nop
     680:	82050003 	lb	a1,3(s0)
     684:	24010002 	li	at,2
     688:	14a10005 	bne	a1,at,6a0 <func_80A2248C+0xd4>
     68c:	00000000 	nop
     690:	0c000000 	jal	0 <EnGSwitch_Init>
     694:	00c02025 	move	a0,a2
     698:	10000006 	b	6b4 <func_80A2248C+0xe8>
     69c:	00000000 	nop
     6a0:	0c000000 	jal	0 <EnGSwitch_Init>
     6a4:	24044802 	li	a0,18434
     6a8:	8fa40024 	lw	a0,36(sp)
     6ac:	0c000000 	jal	0 <EnGSwitch_Init>
     6b0:	86050154 	lh	a1,340(s0)
     6b4:	0c000000 	jal	0 <EnGSwitch_Init>
     6b8:	24044803 	li	a0,18435
     6bc:	0c000000 	jal	0 <EnGSwitch_Init>
     6c0:	02002025 	move	a0,s0
     6c4:	8fbf001c 	lw	ra,28(sp)
     6c8:	8fb00018 	lw	s0,24(sp)
     6cc:	27bd0020 	addiu	sp,sp,32
     6d0:	03e00008 	jr	ra
     6d4:	00000000 	nop

000006d8 <func_80A22598>:
     6d8:	27bdffe0 	addiu	sp,sp,-32
     6dc:	afbf0014 	sw	ra,20(sp)
     6e0:	8cae1c44 	lw	t6,7236(a1)
     6e4:	3c014461 	lui	at,0x4461
     6e8:	44813000 	mtc1	at,$f6
     6ec:	afae001c 	sw	t6,28(sp)
     6f0:	c484008c 	lwc1	$f4,140(a0)
     6f4:	848f00b6 	lh	t7,182(a0)
     6f8:	00803025 	move	a2,a0
     6fc:	4606203c 	c.lt.s	$f4,$f6
     700:	25f80800 	addiu	t8,t7,2048
     704:	a49800b6 	sh	t8,182(a0)
     708:	24040005 	li	a0,5
     70c:	45020029 	bc1fl	7b4 <func_80A22598+0xdc>
     710:	8fbf0014 	lw	ra,20(sp)
     714:	0c000000 	jal	0 <EnGSwitch_Init>
     718:	afa60020 	sw	a2,32(sp)
     71c:	3c020000 	lui	v0,0x0
     720:	24420000 	addiu	v0,v0,0
     724:	84590000 	lh	t9,0(v0)
     728:	24044803 	li	a0,18435
     72c:	27280001 	addiu	t0,t9,1
     730:	0c000000 	jal	0 <EnGSwitch_Init>
     734:	a4480000 	sh	t0,0(v0)
     738:	8fa9001c 	lw	t1,28(sp)
     73c:	8fa60020 	lw	a2,32(sp)
     740:	3c014220 	lui	at,0x4220
     744:	8d2b0024 	lw	t3,36(t1)
     748:	44815000 	mtc1	at,$f10
     74c:	3c0c0000 	lui	t4,0x0
     750:	accb0024 	sw	t3,36(a2)
     754:	8d2a0028 	lw	t2,40(t1)
     758:	3c0e0000 	lui	t6,0x0
     75c:	3c0141a0 	lui	at,0x41a0
     760:	acca0028 	sw	t2,40(a2)
     764:	c4c80028 	lwc1	$f8,40(a2)
     768:	8d2b002c 	lw	t3,44(t1)
     76c:	240d000f 	li	t5,15
     770:	460a4400 	add.s	$f16,$f8,$f10
     774:	accb002c 	sw	t3,44(a2)
     778:	44804000 	mtc1	zero,$f8
     77c:	25ce0000 	addiu	t6,t6,0
     780:	e4d00028 	swc1	$f16,40(a2)
     784:	8d8c0004 	lw	t4,4(t4)
     788:	55800007 	bnezl	t4,7a8 <func_80A22598+0xd0>
     78c:	e4c8006c 	swc1	$f8,108(a2)
     790:	c4d20028 	lwc1	$f18,40(a2)
     794:	44812000 	mtc1	at,$f4
     798:	00000000 	nop
     79c:	46049180 	add.s	$f6,$f18,$f4
     7a0:	e4c60028 	swc1	$f6,40(a2)
     7a4:	e4c8006c 	swc1	$f8,108(a2)
     7a8:	a4cd0156 	sh	t5,342(a2)
     7ac:	acce014c 	sw	t6,332(a2)
     7b0:	8fbf0014 	lw	ra,20(sp)
     7b4:	27bd0020 	addiu	sp,sp,32
     7b8:	03e00008 	jr	ra
     7bc:	00000000 	nop

000007c0 <func_80A22680>:
     7c0:	27bdffe0 	addiu	sp,sp,-32
     7c4:	afbf0014 	sw	ra,20(sp)
     7c8:	848e00b6 	lh	t6,182(a0)
     7cc:	84980156 	lh	t8,342(a0)
     7d0:	8ca21c44 	lw	v0,7236(a1)
     7d4:	25cf03c0 	addiu	t7,t6,960
     7d8:	00803025 	move	a2,a0
     7dc:	17000005 	bnez	t8,7f4 <func_80A22680+0x34>
     7e0:	a48f00b6 	sh	t7,182(a0)
     7e4:	0c000000 	jal	0 <EnGSwitch_Init>
     7e8:	00000000 	nop
     7ec:	1000002a 	b	898 <func_80A22680+0xd8>
     7f0:	8fbf0014 	lw	ra,20(sp)
     7f4:	84c40156 	lh	a0,342(a2)
     7f8:	24013a98 	li	at,15000
     7fc:	8c480024 	lw	t0,36(v0)
     800:	00810019 	multu	a0,at
     804:	acc80024 	sw	t0,36(a2)
     808:	8c590028 	lw	t9,40(v0)
     80c:	acd90028 	sw	t9,40(a2)
     810:	8c48002c 	lw	t0,44(v0)
     814:	00002012 	mflo	a0
     818:	00042400 	sll	a0,a0,0x10
     81c:	acc8002c 	sw	t0,44(a2)
     820:	afa60020 	sw	a2,32(sp)
     824:	afa2001c 	sw	v0,28(sp)
     828:	0c000000 	jal	0 <EnGSwitch_Init>
     82c:	00042403 	sra	a0,a0,0x10
     830:	8fa60020 	lw	a2,32(sp)
     834:	3c010000 	lui	at,0x0
     838:	c4280000 	lwc1	$f8,0(at)
     83c:	84c90156 	lh	t1,342(a2)
     840:	8fa2001c 	lw	v0,28(sp)
     844:	3c014220 	lui	at,0x4220
     848:	44892000 	mtc1	t1,$f4
     84c:	c4520028 	lwc1	$f18,40(v0)
     850:	3c0a0000 	lui	t2,0x0
     854:	468021a0 	cvt.s.w	$f6,$f4
     858:	44812000 	mtc1	at,$f4
     85c:	3c0141a0 	lui	at,0x41a0
     860:	46083282 	mul.s	$f10,$f6,$f8
     864:	46049180 	add.s	$f6,$f18,$f4
     868:	460a0402 	mul.s	$f16,$f0,$f10
     86c:	46068200 	add.s	$f8,$f16,$f6
     870:	e4c80028 	swc1	$f8,40(a2)
     874:	8d4a0004 	lw	t2,4(t2)
     878:	55400007 	bnezl	t2,898 <func_80A22680+0xd8>
     87c:	8fbf0014 	lw	ra,20(sp)
     880:	c4ca0028 	lwc1	$f10,40(a2)
     884:	44819000 	mtc1	at,$f18
     888:	00000000 	nop
     88c:	46125100 	add.s	$f4,$f10,$f18
     890:	e4c40028 	swc1	$f4,40(a2)
     894:	8fbf0014 	lw	ra,20(sp)
     898:	27bd0020 	addiu	sp,sp,32
     89c:	03e00008 	jr	ra
     8a0:	00000000 	nop

000008a4 <func_80A22764>:
     8a4:	27bdffd8 	addiu	sp,sp,-40
     8a8:	afbf001c 	sw	ra,28(sp)
     8ac:	afb00018 	sw	s0,24(sp)
     8b0:	afa5002c 	sw	a1,44(sp)
     8b4:	848e00b6 	lh	t6,182(a0)
     8b8:	84980162 	lh	t8,354(a0)
     8bc:	00808025 	move	s0,a0
     8c0:	25cf03c0 	addiu	t7,t6,960
     8c4:	170000e0 	bnez	t8,c48 <func_80A22764+0x3a4>
     8c8:	a48f00b6 	sh	t7,182(a0)
     8cc:	84820166 	lh	v0,358(a0)
     8d0:	24010002 	li	at,2
     8d4:	10410007 	beq	v0,at,8f4 <func_80A22764+0x50>
     8d8:	24010004 	li	at,4
     8dc:	10410025 	beq	v0,at,974 <func_80A22764+0xd0>
     8e0:	24010005 	li	at,5
     8e4:	1041003e 	beq	v0,at,9e0 <func_80A22764+0x13c>
     8e8:	00000000 	nop
     8ec:	10000051 	b	a34 <func_80A22764+0x190>
     8f0:	24010001 	li	at,1
     8f4:	0c000000 	jal	0 <EnGSwitch_Init>
     8f8:	02002025 	move	a0,s0
     8fc:	44800000 	mtc1	zero,$f0
     900:	c6040060 	lwc1	$f4,96(s0)
     904:	3c014248 	lui	at,0x4248
     908:	4600203c 	c.lt.s	$f4,$f0
     90c:	00000000 	nop
     910:	450200a3 	bc1fl	ba0 <func_80A22764+0x2fc>
     914:	9203018d 	lbu	v1,397(s0)
     918:	c608000c 	lwc1	$f8,12(s0)
     91c:	44815000 	mtc1	at,$f10
     920:	c6060028 	lwc1	$f6,40(s0)
     924:	460a4401 	sub.s	$f16,$f8,$f10
     928:	4610303c 	c.lt.s	$f6,$f16
     92c:	00000000 	nop
     930:	4502009b 	bc1fl	ba0 <func_80A22764+0x2fc>
     934:	9203018d 	lbu	v1,397(s0)
     938:	8e020118 	lw	v0,280(s0)
     93c:	e6000060 	swc1	$f0,96(s0)
     940:	e600006c 	swc1	$f0,108(s0)
     944:	8c590130 	lw	t9,304(v0)
     948:	13200006 	beqz	t9,964 <func_80A22764+0xc0>
     94c:	00000000 	nop
     950:	86090160 	lh	t1,352(s0)
     954:	24080001 	li	t0,1
     958:	00095040 	sll	t2,t1,0x1
     95c:	004a5821 	addu	t3,v0,t2
     960:	a5680166 	sh	t0,358(t3)
     964:	0c000000 	jal	0 <EnGSwitch_Init>
     968:	02002025 	move	a0,s0
     96c:	1000008c 	b	ba0 <func_80A22764+0x2fc>
     970:	9203018d 	lbu	v1,397(s0)
     974:	0c000000 	jal	0 <EnGSwitch_Init>
     978:	02002025 	move	a0,s0
     97c:	44800000 	mtc1	zero,$f0
     980:	c612005c 	lwc1	$f18,92(s0)
     984:	4600903c 	c.lt.s	$f18,$f0
     988:	00000000 	nop
     98c:	45020084 	bc1fl	ba0 <func_80A22764+0x2fc>
     990:	9203018d 	lbu	v1,397(s0)
     994:	c6040024 	lwc1	$f4,36(s0)
     998:	c608016c 	lwc1	$f8,364(s0)
     99c:	4608203c 	c.lt.s	$f4,$f8
     9a0:	00000000 	nop
     9a4:	4502007e 	bc1fl	ba0 <func_80A22764+0x2fc>
     9a8:	9203018d 	lbu	v1,397(s0)
     9ac:	8e020118 	lw	v0,280(s0)
     9b0:	8c4c0130 	lw	t4,304(v0)
     9b4:	11800006 	beqz	t4,9d0 <func_80A22764+0x12c>
     9b8:	00000000 	nop
     9bc:	860e0160 	lh	t6,352(s0)
     9c0:	240d0001 	li	t5,1
     9c4:	000e7840 	sll	t7,t6,0x1
     9c8:	004fc021 	addu	t8,v0,t7
     9cc:	a70d0166 	sh	t5,358(t8)
     9d0:	0c000000 	jal	0 <EnGSwitch_Init>
     9d4:	02002025 	move	a0,s0
     9d8:	10000071 	b	ba0 <func_80A22764+0x2fc>
     9dc:	9203018d 	lbu	v1,397(s0)
     9e0:	0c000000 	jal	0 <EnGSwitch_Init>
     9e4:	02002025 	move	a0,s0
     9e8:	c60a016c 	lwc1	$f10,364(s0)
     9ec:	c6060024 	lwc1	$f6,36(s0)
     9f0:	4606503c 	c.lt.s	$f10,$f6
     9f4:	00000000 	nop
     9f8:	45020069 	bc1fl	ba0 <func_80A22764+0x2fc>
     9fc:	9203018d 	lbu	v1,397(s0)
     a00:	8e020118 	lw	v0,280(s0)
     a04:	8c590130 	lw	t9,304(v0)
     a08:	13200006 	beqz	t9,a24 <func_80A22764+0x180>
     a0c:	00000000 	nop
     a10:	860a0160 	lh	t2,352(s0)
     a14:	24090001 	li	t1,1
     a18:	000a4040 	sll	t0,t2,0x1
     a1c:	00485821 	addu	t3,v0,t0
     a20:	a5690166 	sh	t1,358(t3)
     a24:	0c000000 	jal	0 <EnGSwitch_Init>
     a28:	02002025 	move	a0,s0
     a2c:	1000005c 	b	ba0 <func_80A22764+0x2fc>
     a30:	9203018d 	lbu	v1,397(s0)
     a34:	86020168 	lh	v0,360(s0)
     a38:	50400006 	beqzl	v0,a54 <func_80A22764+0x1b0>
     a3c:	c602016c 	lwc1	$f2,364(s0)
     a40:	50410029 	beql	v0,at,ae8 <func_80A22764+0x244>
     a44:	860f0164 	lh	t7,356(s0)
     a48:	10000055 	b	ba0 <func_80A22764+0x2fc>
     a4c:	9203018d 	lbu	v1,397(s0)
     a50:	c602016c 	lwc1	$f2,364(s0)
     a54:	c6100024 	lwc1	$f16,36(s0)
     a58:	3c0140a0 	lui	at,0x40a0
     a5c:	44816000 	mtc1	at,$f12
     a60:	46028001 	sub.s	$f0,$f16,$f2
     a64:	3c063e99 	lui	a2,0x3e99
     a68:	34c6999a 	ori	a2,a2,0x999a
     a6c:	26040024 	addiu	a0,s0,36
     a70:	46000005 	abs.s	$f0,$f0
     a74:	4600603c 	c.lt.s	$f12,$f0
     a78:	00000000 	nop
     a7c:	4503000c 	bc1tl	ab0 <func_80A22764+0x20c>
     a80:	44051000 	mfc1	a1,$f2
     a84:	c6120028 	lwc1	$f18,40(s0)
     a88:	c6040170 	lwc1	$f4,368(s0)
     a8c:	240c0001 	li	t4,1
     a90:	240e003c 	li	t6,60
     a94:	46049001 	sub.s	$f0,$f18,$f4
     a98:	46000005 	abs.s	$f0,$f0
     a9c:	4600603c 	c.lt.s	$f12,$f0
     aa0:	00000000 	nop
     aa4:	4502000d 	bc1fl	adc <func_80A22764+0x238>
     aa8:	a60c0168 	sh	t4,360(s0)
     aac:	44051000 	mfc1	a1,$f2
     ab0:	0c000000 	jal	0 <EnGSwitch_Init>
     ab4:	3c0741f0 	lui	a3,0x41f0
     ab8:	3c063e99 	lui	a2,0x3e99
     abc:	34c6999a 	ori	a2,a2,0x999a
     ac0:	26040028 	addiu	a0,s0,40
     ac4:	8e050170 	lw	a1,368(s0)
     ac8:	0c000000 	jal	0 <EnGSwitch_Init>
     acc:	3c0741f0 	lui	a3,0x41f0
     ad0:	10000033 	b	ba0 <func_80A22764+0x2fc>
     ad4:	9203018d 	lbu	v1,397(s0)
     ad8:	a60c0168 	sh	t4,360(s0)
     adc:	1000002f 	b	b9c <func_80A22764+0x2f8>
     ae0:	a60e0164 	sh	t6,356(s0)
     ae4:	860f0164 	lh	t7,356(s0)
     ae8:	55e0002d 	bnezl	t7,ba0 <func_80A22764+0x2fc>
     aec:	9203018d 	lbu	v1,397(s0)
     af0:	c6020008 	lwc1	$f2,8(s0)
     af4:	c6080024 	lwc1	$f8,36(s0)
     af8:	3c0140a0 	lui	at,0x40a0
     afc:	44816000 	mtc1	at,$f12
     b00:	46024001 	sub.s	$f0,$f8,$f2
     b04:	3c063e99 	lui	a2,0x3e99
     b08:	34c6999a 	ori	a2,a2,0x999a
     b0c:	26040024 	addiu	a0,s0,36
     b10:	46000005 	abs.s	$f0,$f0
     b14:	4600603c 	c.lt.s	$f12,$f0
     b18:	00000000 	nop
     b1c:	4503000a 	bc1tl	b48 <func_80A22764+0x2a4>
     b20:	44051000 	mfc1	a1,$f2
     b24:	c60a0028 	lwc1	$f10,40(s0)
     b28:	c606000c 	lwc1	$f6,12(s0)
     b2c:	46065001 	sub.s	$f0,$f10,$f6
     b30:	46000005 	abs.s	$f0,$f0
     b34:	4600603c 	c.lt.s	$f12,$f0
     b38:	00000000 	nop
     b3c:	4502000d 	bc1fl	b74 <func_80A22764+0x2d0>
     b40:	8e020118 	lw	v0,280(s0)
     b44:	44051000 	mfc1	a1,$f2
     b48:	0c000000 	jal	0 <EnGSwitch_Init>
     b4c:	3c0741f0 	lui	a3,0x41f0
     b50:	3c063e99 	lui	a2,0x3e99
     b54:	34c6999a 	ori	a2,a2,0x999a
     b58:	26040028 	addiu	a0,s0,40
     b5c:	8e05000c 	lw	a1,12(s0)
     b60:	0c000000 	jal	0 <EnGSwitch_Init>
     b64:	3c0741f0 	lui	a3,0x41f0
     b68:	1000000d 	b	ba0 <func_80A22764+0x2fc>
     b6c:	9203018d 	lbu	v1,397(s0)
     b70:	8e020118 	lw	v0,280(s0)
     b74:	8c4d0130 	lw	t5,304(v0)
     b78:	11a00006 	beqz	t5,b94 <func_80A22764+0x2f0>
     b7c:	00000000 	nop
     b80:	86190160 	lh	t9,352(s0)
     b84:	24180001 	li	t8,1
     b88:	00195040 	sll	t2,t9,0x1
     b8c:	004a4021 	addu	t0,v0,t2
     b90:	a5180166 	sh	t8,358(t0)
     b94:	0c000000 	jal	0 <EnGSwitch_Init>
     b98:	02002025 	move	a0,s0
     b9c:	9203018d 	lbu	v1,397(s0)
     ba0:	3c0b0000 	lui	t3,0x0
     ba4:	30690002 	andi	t1,v1,0x2
     ba8:	55200006 	bnezl	t1,bc4 <func_80A22764+0x320>
     bac:	8e020118 	lw	v0,280(s0)
     bb0:	8d6b0000 	lw	t3,0(t3)
     bb4:	856c12e4 	lh	t4,4836(t3)
     bb8:	51800024 	beqzl	t4,c4c <func_80A22764+0x3a8>
     bbc:	8fbf001c 	lw	ra,28(sp)
     bc0:	8e020118 	lw	v0,280(s0)
     bc4:	306efffd 	andi	t6,v1,0xfffd
     bc8:	a20e018d 	sb	t6,397(s0)
     bcc:	8c4f0130 	lw	t7,304(v0)
     bd0:	51e0001e 	beqzl	t7,c4c <func_80A22764+0x3a8>
     bd4:	8fbf001c 	lw	ra,28(sp)
     bd8:	844d0156 	lh	t5,342(v0)
     bdc:	240a0002 	li	t2,2
     be0:	240428d3 	li	a0,10451
     be4:	25b90001 	addiu	t9,t5,1
     be8:	a4590156 	sh	t9,342(v0)
     bec:	86180160 	lh	t8,352(s0)
     bf0:	00184040 	sll	t0,t8,0x1
     bf4:	00484821 	addu	t1,v0,t0
     bf8:	a52a0166 	sh	t2,358(t1)
     bfc:	0c000000 	jal	0 <EnGSwitch_Init>
     c00:	afa20024 	sw	v0,36(sp)
     c04:	0c000000 	jal	0 <EnGSwitch_Init>
     c08:	24044803 	li	a0,18435
     c0c:	8fa20024 	lw	v0,36(sp)
     c10:	3c040000 	lui	a0,0x0
     c14:	24840000 	addiu	a0,a0,0
     c18:	0c000000 	jal	0 <EnGSwitch_Init>
     c1c:	84450156 	lh	a1,342(v0)
     c20:	02002025 	move	a0,s0
     c24:	0c000000 	jal	0 <EnGSwitch_Init>
     c28:	8fa5002c 	lw	a1,44(sp)
     c2c:	3c0e0000 	lui	t6,0x0
     c30:	240b0032 	li	t3,50
     c34:	240c0001 	li	t4,1
     c38:	25ce0000 	addiu	t6,t6,0
     c3c:	a60b0156 	sh	t3,342(s0)
     c40:	a60c015a 	sh	t4,346(s0)
     c44:	ae0e014c 	sw	t6,332(s0)
     c48:	8fbf001c 	lw	ra,28(sp)
     c4c:	8fb00018 	lw	s0,24(sp)
     c50:	27bd0028 	addiu	sp,sp,40
     c54:	03e00008 	jr	ra
     c58:	00000000 	nop

00000c5c <func_80A22B1C>:
     c5c:	27bdff18 	addiu	sp,sp,-232
     c60:	afbf009c 	sw	ra,156(sp)
     c64:	afbe0098 	sw	s8,152(sp)
     c68:	afb70094 	sw	s7,148(sp)
     c6c:	afb60090 	sw	s6,144(sp)
     c70:	afb5008c 	sw	s5,140(sp)
     c74:	afb40088 	sw	s4,136(sp)
     c78:	afb30084 	sw	s3,132(sp)
     c7c:	afb20080 	sw	s2,128(sp)
     c80:	afb1007c 	sw	s1,124(sp)
     c84:	afb00078 	sw	s0,120(sp)
     c88:	f7be0070 	sdc1	$f30,112(sp)
     c8c:	f7bc0068 	sdc1	$f28,104(sp)
     c90:	f7ba0060 	sdc1	$f26,96(sp)
     c94:	f7b80058 	sdc1	$f24,88(sp)
     c98:	f7b60050 	sdc1	$f22,80(sp)
     c9c:	f7b40048 	sdc1	$f20,72(sp)
     ca0:	848e00b6 	lh	t6,182(a0)
     ca4:	9082018d 	lbu	v0,397(a0)
     ca8:	00a0f025 	move	s8,a1
     cac:	25cf03c0 	addiu	t7,t6,960
     cb0:	30580002 	andi	t8,v0,0x2
     cb4:	13000090 	beqz	t8,ef8 <func_80A22B1C+0x29c>
     cb8:	a48f00b6 	sh	t7,182(a0)
     cbc:	3c0140a0 	lui	at,0x40a0
     cc0:	4481f000 	mtc1	at,$f30
     cc4:	3c013f00 	lui	at,0x3f00
     cc8:	4481e000 	mtc1	at,$f28
     ccc:	3c014120 	lui	at,0x4120
     cd0:	4481d000 	mtc1	at,$f26
     cd4:	3059fffd 	andi	t9,v0,0xfffd
     cd8:	3c014100 	lui	at,0x4100
     cdc:	a099018d 	sb	t9,397(a0)
     ce0:	3c160600 	lui	s6,0x600
     ce4:	4481c000 	mtc1	at,$f24
     ce8:	26d61960 	addiu	s6,s6,6496
     cec:	afa400e8 	sw	a0,232(sp)
     cf0:	00009825 	move	s3,zero
     cf4:	00009025 	move	s2,zero
     cf8:	24910024 	addiu	s1,a0,36
     cfc:	2417001e 	li	s7,30
     d00:	27b500c4 	addiu	s5,sp,196
     d04:	27b400d0 	addiu	s4,sp,208
     d08:	00122400 	sll	a0,s2,0x10
     d0c:	0c000000 	jal	0 <EnGSwitch_Init>
     d10:	00042403 	sra	a0,a0,0x10
     d14:	00122400 	sll	a0,s2,0x10
     d18:	46000506 	mov.s	$f20,$f0
     d1c:	0c000000 	jal	0 <EnGSwitch_Init>
     d20:	00042403 	sra	a0,a0,0x10
     d24:	4618a102 	mul.s	$f4,$f20,$f24
     d28:	46000586 	mov.s	$f22,$f0
     d2c:	4600f306 	mov.s	$f12,$f30
     d30:	0c000000 	jal	0 <EnGSwitch_Init>
     d34:	e7a400d0 	swc1	$f4,208(sp)
     d38:	4618b202 	mul.s	$f8,$f22,$f24
     d3c:	c7aa00d0 	lwc1	$f10,208(sp)
     d40:	461a0180 	add.s	$f6,$f0,$f26
     d44:	461c5402 	mul.s	$f16,$f10,$f28
     d48:	e7a600d4 	swc1	$f6,212(sp)
     d4c:	e7a800d8 	swc1	$f8,216(sp)
     d50:	0c000000 	jal	0 <EnGSwitch_Init>
     d54:	e7b000c4 	swc1	$f16,196(sp)
     d58:	3c014170 	lui	at,0x4170
     d5c:	44819000 	mtc1	at,$f18
     d60:	c7a800d8 	lwc1	$f8,216(sp)
     d64:	c7b000d0 	lwc1	$f16,208(sp)
     d68:	46120102 	mul.s	$f4,$f0,$f18
     d6c:	461a2180 	add.s	$f6,$f4,$f26
     d70:	461c4282 	mul.s	$f10,$f8,$f28
     d74:	e7a600c8 	swc1	$f6,200(sp)
     d78:	c7a600d4 	lwc1	$f6,212(sp)
     d7c:	e7aa00cc 	swc1	$f10,204(sp)
     d80:	c6320000 	lwc1	$f18,0(s1)
     d84:	46128100 	add.s	$f4,$f16,$f18
     d88:	e7a400d0 	swc1	$f4,208(sp)
     d8c:	c62a0004 	lwc1	$f10,4(s1)
     d90:	460a3400 	add.s	$f16,$f6,$f10
     d94:	e7b000d4 	swc1	$f16,212(sp)
     d98:	c6320008 	lwc1	$f18,8(s1)
     d9c:	46124100 	add.s	$f4,$f8,$f18
     da0:	0c000000 	jal	0 <EnGSwitch_Init>
     da4:	e7a400d8 	swc1	$f4,216(sp)
     da8:	3c010000 	lui	at,0x0
     dac:	c4260000 	lwc1	$f6,0(at)
     db0:	3c010000 	lui	at,0x0
     db4:	4606003c 	c.lt.s	$f0,$f6
     db8:	00000000 	nop
     dbc:	45000003 	bc1f	dcc <func_80A22B1C+0x170>
     dc0:	00000000 	nop
     dc4:	10000009 	b	dec <func_80A22B1C+0x190>
     dc8:	24100060 	li	s0,96
     dcc:	c42a0000 	lwc1	$f10,0(at)
     dd0:	24100020 	li	s0,32
     dd4:	460a003c 	c.lt.s	$f0,$f10
     dd8:	00000000 	nop
     ddc:	45000003 	bc1f	dec <func_80A22B1C+0x190>
     de0:	00000000 	nop
     de4:	10000001 	b	dec <func_80A22B1C+0x190>
     de8:	24100040 	li	s0,64
     dec:	0c000000 	jal	0 <EnGSwitch_Init>
     df0:	00000000 	nop
     df4:	3c014302 	lui	at,0x4302
     df8:	44818000 	mtc1	at,$f16
     dfc:	3c0141f0 	lui	at,0x41f0
     e00:	44819000 	mtc1	at,$f18
     e04:	46100202 	mul.s	$f8,$f0,$f16
     e08:	2408ff10 	li	t0,-240
     e0c:	2409000a 	li	t1,10
     e10:	240a000a 	li	t2,10
     e14:	240d0020 	li	t5,32
     e18:	240e003c 	li	t6,60
     e1c:	240fffff 	li	t7,-1
     e20:	46124100 	add.s	$f4,$f8,$f18
     e24:	2418012c 	li	t8,300
     e28:	afb80038 	sw	t8,56(sp)
     e2c:	afaf0034 	sw	t7,52(sp)
     e30:	4600218d 	trunc.w.s	$f6,$f4
     e34:	afae0030 	sw	t6,48(sp)
     e38:	afad002c 	sw	t5,44(sp)
     e3c:	afaa001c 	sw	t2,28(sp)
     e40:	440c3000 	mfc1	t4,$f6
     e44:	afa90018 	sw	t1,24(sp)
     e48:	afa80010 	sw	t0,16(sp)
     e4c:	03c02025 	move	a0,s8
     e50:	02802825 	move	a1,s4
     e54:	02a03025 	move	a2,s5
     e58:	02203825 	move	a3,s1
     e5c:	afb00014 	sw	s0,20(sp)
     e60:	afa00020 	sw	zero,32(sp)
     e64:	afa00028 	sw	zero,40(sp)
     e68:	afb6003c 	sw	s6,60(sp)
     e6c:	0c000000 	jal	0 <EnGSwitch_Init>
     e70:	afac0024 	sw	t4,36(sp)
     e74:	26524e20 	addiu	s2,s2,20000
     e78:	00129400 	sll	s2,s2,0x10
     e7c:	26730001 	addiu	s3,s3,1
     e80:	1677ffa1 	bne	s3,s7,d08 <func_80A22B1C+0xac>
     e84:	00129403 	sra	s2,s2,0x10
     e88:	24190014 	li	t9,20
     e8c:	24080032 	li	t0,50
     e90:	afa80014 	sw	t0,20(sp)
     e94:	afb90010 	sw	t9,16(sp)
     e98:	03c02025 	move	a0,s8
     e9c:	02202825 	move	a1,s1
     ea0:	3c0641f0 	lui	a2,0x41f0
     ea4:	24070004 	li	a3,4
     ea8:	0c000000 	jal	0 <EnGSwitch_Init>
     eac:	afa00018 	sw	zero,24(sp)
     eb0:	03c02025 	move	a0,s8
     eb4:	02202825 	move	a1,s1
     eb8:	24060028 	li	a2,40
     ebc:	0c000000 	jal	0 <EnGSwitch_Init>
     ec0:	24072887 	li	a3,10375
     ec4:	8fa400e8 	lw	a0,232(sp)
     ec8:	0c000000 	jal	0 <EnGSwitch_Init>
     ecc:	03c02825 	move	a1,s8
     ed0:	8faa00e8 	lw	t2,232(sp)
     ed4:	24090032 	li	t1,50
     ed8:	240b0001 	li	t3,1
     edc:	a5490156 	sh	t1,342(t2)
     ee0:	8fac00e8 	lw	t4,232(sp)
     ee4:	3c0d0000 	lui	t5,0x0
     ee8:	25ad0000 	addiu	t5,t5,0
     eec:	a58b015a 	sh	t3,346(t4)
     ef0:	8fae00e8 	lw	t6,232(sp)
     ef4:	adcd014c 	sw	t5,332(t6)
     ef8:	8fbf009c 	lw	ra,156(sp)
     efc:	d7b40048 	ldc1	$f20,72(sp)
     f00:	d7b60050 	ldc1	$f22,80(sp)
     f04:	d7b80058 	ldc1	$f24,88(sp)
     f08:	d7ba0060 	ldc1	$f26,96(sp)
     f0c:	d7bc0068 	ldc1	$f28,104(sp)
     f10:	d7be0070 	ldc1	$f30,112(sp)
     f14:	8fb00078 	lw	s0,120(sp)
     f18:	8fb1007c 	lw	s1,124(sp)
     f1c:	8fb20080 	lw	s2,128(sp)
     f20:	8fb30084 	lw	s3,132(sp)
     f24:	8fb40088 	lw	s4,136(sp)
     f28:	8fb5008c 	lw	s5,140(sp)
     f2c:	8fb60090 	lw	s6,144(sp)
     f30:	8fb70094 	lw	s7,148(sp)
     f34:	8fbe0098 	lw	s8,152(sp)
     f38:	03e00008 	jr	ra
     f3c:	27bd00e8 	addiu	sp,sp,232

00000f40 <func_80A22E00>:
     f40:	27bdffe8 	addiu	sp,sp,-24
     f44:	afbf0014 	sw	ra,20(sp)
     f48:	afa5001c 	sw	a1,28(sp)
     f4c:	848e0156 	lh	t6,342(a0)
     f50:	55c00004 	bnezl	t6,f64 <func_80A22E00+0x24>
     f54:	8fbf0014 	lw	ra,20(sp)
     f58:	0c000000 	jal	0 <EnGSwitch_Init>
     f5c:	00000000 	nop
     f60:	8fbf0014 	lw	ra,20(sp)
     f64:	27bd0018 	addiu	sp,sp,24
     f68:	03e00008 	jr	ra
     f6c:	00000000 	nop

00000f70 <EnGSwitch_Update>:
     f70:	27bdffa0 	addiu	sp,sp,-96
     f74:	afb00048 	sw	s0,72(sp)
     f78:	00808025 	move	s0,a0
     f7c:	afbf004c 	sw	ra,76(sp)
     f80:	afa50064 	sw	a1,100(sp)
     f84:	8e19014c 	lw	t9,332(s0)
     f88:	0320f809 	jalr	t9
     f8c:	00000000 	nop
     f90:	86020156 	lh	v0,342(s0)
     f94:	24010001 	li	at,1
     f98:	10400002 	beqz	v0,fa4 <EnGSwitch_Update+0x34>
     f9c:	244effff 	addiu	t6,v0,-1
     fa0:	a60e0156 	sh	t6,342(s0)
     fa4:	86020164 	lh	v0,356(s0)
     fa8:	10400002 	beqz	v0,fb4 <EnGSwitch_Update+0x44>
     fac:	244fffff 	addiu	t7,v0,-1
     fb0:	a60f0164 	sh	t7,356(s0)
     fb4:	86020162 	lh	v0,354(s0)
     fb8:	10400002 	beqz	v0,fc4 <EnGSwitch_Update+0x54>
     fbc:	2458ffff 	addiu	t8,v0,-1
     fc0:	a6180162 	sh	t8,354(s0)
     fc4:	86020150 	lh	v0,336(s0)
     fc8:	50400014 	beqzl	v0,101c <EnGSwitch_Update+0xac>
     fcc:	8e090134 	lw	t1,308(s0)
     fd0:	10410011 	beq	v0,at,1018 <EnGSwitch_Update+0xa8>
     fd4:	24010003 	li	at,3
     fd8:	50410010 	beql	v0,at,101c <EnGSwitch_Update+0xac>
     fdc:	8e090134 	lw	t1,308(s0)
     fe0:	0c000000 	jal	0 <EnGSwitch_Init>
     fe4:	02002025 	move	a0,s0
     fe8:	3c014248 	lui	at,0x4248
     fec:	44810000 	mtc1	at,$f0
     ff0:	3c0142c8 	lui	at,0x42c8
     ff4:	44812000 	mtc1	at,$f4
     ff8:	2408001c 	li	t0,28
     ffc:	44060000 	mfc1	a2,$f0
    1000:	44070000 	mfc1	a3,$f0
    1004:	afa80014 	sw	t0,20(sp)
    1008:	8fa40064 	lw	a0,100(sp)
    100c:	02002825 	move	a1,s0
    1010:	0c000000 	jal	0 <EnGSwitch_Init>
    1014:	e7a40010 	swc1	$f4,16(sp)
    1018:	8e090134 	lw	t1,308(s0)
    101c:	1120001a 	beqz	t1,1088 <EnGSwitch_Update+0x118>
    1020:	00000000 	nop
    1024:	860a0150 	lh	t2,336(s0)
    1028:	24010003 	li	at,3
    102c:	02002025 	move	a0,s0
    1030:	55410004 	bnel	t2,at,1044 <EnGSwitch_Update+0xd4>
    1034:	8e02014c 	lw	v0,332(s0)
    1038:	0c000000 	jal	0 <EnGSwitch_Init>
    103c:	8fa50064 	lw	a1,100(sp)
    1040:	8e02014c 	lw	v0,332(s0)
    1044:	3c0b0000 	lui	t3,0x0
    1048:	256b0000 	addiu	t3,t3,0
    104c:	1162000e 	beq	t3,v0,1088 <EnGSwitch_Update+0x118>
    1050:	3c0c0000 	lui	t4,0x0
    1054:	258c0000 	addiu	t4,t4,0
    1058:	1182000b 	beq	t4,v0,1088 <EnGSwitch_Update+0x118>
    105c:	02002025 	move	a0,s0
    1060:	2606017c 	addiu	a2,s0,380
    1064:	00c02825 	move	a1,a2
    1068:	0c000000 	jal	0 <EnGSwitch_Init>
    106c:	afa60054 	sw	a2,84(sp)
    1070:	8fa40064 	lw	a0,100(sp)
    1074:	3c010001 	lui	at,0x1
    1078:	34211e60 	ori	at,at,0x1e60
    107c:	8fa60054 	lw	a2,84(sp)
    1080:	0c000000 	jal	0 <EnGSwitch_Init>
    1084:	00812821 	addu	a1,a0,at
    1088:	3c190000 	lui	t9,0x0
    108c:	8f390000 	lw	t9,0(t9)
    1090:	872e12d4 	lh	t6,4820(t9)
    1094:	51c0001d 	beqzl	t6,110c <EnGSwitch_Update+0x19c>
    1098:	8fbf004c 	lw	ra,76(sp)
    109c:	860f0150 	lh	t7,336(s0)
    10a0:	3c013f80 	lui	at,0x3f80
    10a4:	240900ff 	li	t1,255
    10a8:	15e00017 	bnez	t7,1108 <EnGSwitch_Update+0x198>
    10ac:	240a00ff 	li	t2,255
    10b0:	86180032 	lh	t8,50(s0)
    10b4:	c60c0024 	lwc1	$f12,36(s0)
    10b8:	c60e0028 	lwc1	$f14,40(s0)
    10bc:	8e06002c 	lw	a2,44(s0)
    10c0:	86070030 	lh	a3,48(s0)
    10c4:	afb80010 	sw	t8,16(sp)
    10c8:	86080034 	lh	t0,52(s0)
    10cc:	44810000 	mtc1	at,$f0
    10d0:	8fac0064 	lw	t4,100(sp)
    10d4:	240b0004 	li	t3,4
    10d8:	afab0034 	sw	t3,52(sp)
    10dc:	afaa0030 	sw	t2,48(sp)
    10e0:	afa0002c 	sw	zero,44(sp)
    10e4:	afa00028 	sw	zero,40(sp)
    10e8:	afa90024 	sw	t1,36(sp)
    10ec:	afa80014 	sw	t0,20(sp)
    10f0:	e7a00018 	swc1	$f0,24(sp)
    10f4:	e7a0001c 	swc1	$f0,28(sp)
    10f8:	e7a00020 	swc1	$f0,32(sp)
    10fc:	8d8d0000 	lw	t5,0(t4)
    1100:	0c000000 	jal	0 <EnGSwitch_Init>
    1104:	afad0038 	sw	t5,56(sp)
    1108:	8fbf004c 	lw	ra,76(sp)
    110c:	8fb00048 	lw	s0,72(sp)
    1110:	27bd0060 	addiu	sp,sp,96
    1114:	03e00008 	jr	ra
    1118:	00000000 	nop

0000111c <func_80A22FDC>:
    111c:	27bdffb8 	addiu	sp,sp,-72
    1120:	afbf001c 	sw	ra,28(sp)
    1124:	afb00018 	sw	s0,24(sp)
    1128:	afa5004c 	sw	a1,76(sp)
    112c:	848e015a 	lh	t6,346(a0)
    1130:	3c060000 	lui	a2,0x0
    1134:	24c60000 	addiu	a2,a2,0
    1138:	15c00026 	bnez	t6,11d4 <func_80A22FDC+0xb8>
    113c:	27a4002c 	addiu	a0,sp,44
    1140:	8ca50000 	lw	a1,0(a1)
    1144:	24070396 	li	a3,918
    1148:	0c000000 	jal	0 <EnGSwitch_Init>
    114c:	00a08025 	move	s0,a1
    1150:	8fb8004c 	lw	t8,76(sp)
    1154:	0c000000 	jal	0 <EnGSwitch_Init>
    1158:	8f040000 	lw	a0,0(t8)
    115c:	8e0202c0 	lw	v0,704(s0)
    1160:	3c08da38 	lui	t0,0xda38
    1164:	35080003 	ori	t0,t0,0x3
    1168:	24590008 	addiu	t9,v0,8
    116c:	ae1902c0 	sw	t9,704(s0)
    1170:	ac480000 	sw	t0,0(v0)
    1174:	8fa9004c 	lw	t1,76(sp)
    1178:	3c050000 	lui	a1,0x0
    117c:	24a50000 	addiu	a1,a1,0
    1180:	8d240000 	lw	a0,0(t1)
    1184:	2406039d 	li	a2,925
    1188:	0c000000 	jal	0 <EnGSwitch_Init>
    118c:	afa20028 	sw	v0,40(sp)
    1190:	8fa30028 	lw	v1,40(sp)
    1194:	3c0c0600 	lui	t4,0x600
    1198:	258c17c0 	addiu	t4,t4,6080
    119c:	ac620004 	sw	v0,4(v1)
    11a0:	8e0202c0 	lw	v0,704(s0)
    11a4:	3c0bde00 	lui	t3,0xde00
    11a8:	3c060000 	lui	a2,0x0
    11ac:	244a0008 	addiu	t2,v0,8
    11b0:	ae0a02c0 	sw	t2,704(s0)
    11b4:	ac4c0004 	sw	t4,4(v0)
    11b8:	ac4b0000 	sw	t3,0(v0)
    11bc:	8fad004c 	lw	t5,76(sp)
    11c0:	24c60000 	addiu	a2,a2,0
    11c4:	27a4002c 	addiu	a0,sp,44
    11c8:	240703a0 	li	a3,928
    11cc:	0c000000 	jal	0 <EnGSwitch_Init>
    11d0:	8da50000 	lw	a1,0(t5)
    11d4:	8fbf001c 	lw	ra,28(sp)
    11d8:	8fb00018 	lw	s0,24(sp)
    11dc:	27bd0048 	addiu	sp,sp,72
    11e0:	03e00008 	jr	ra
    11e4:	00000000 	nop

000011e8 <func_80A230A8>:
    11e8:	27bdffb0 	addiu	sp,sp,-80
    11ec:	afbf001c 	sw	ra,28(sp)
    11f0:	afb10018 	sw	s1,24(sp)
    11f4:	afb00014 	sw	s0,20(sp)
    11f8:	afa40050 	sw	a0,80(sp)
    11fc:	848f015a 	lh	t7,346(a0)
    1200:	00a08825 	move	s1,a1
    1204:	27a40034 	addiu	a0,sp,52
    1208:	15e00041 	bnez	t7,1310 <func_80A230A8+0x128>
    120c:	3c060000 	lui	a2,0x0
    1210:	8ca50000 	lw	a1,0(a1)
    1214:	24c60000 	addiu	a2,a2,0
    1218:	240703b7 	li	a3,951
    121c:	0c000000 	jal	0 <EnGSwitch_Init>
    1220:	00a08025 	move	s0,a1
    1224:	0c000000 	jal	0 <EnGSwitch_Init>
    1228:	8e240000 	lw	a0,0(s1)
    122c:	8fa40050 	lw	a0,80(sp)
    1230:	02202825 	move	a1,s1
    1234:	0c000000 	jal	0 <EnGSwitch_Init>
    1238:	00003025 	move	a2,zero
    123c:	8e0202c0 	lw	v0,704(s0)
    1240:	3c19da38 	lui	t9,0xda38
    1244:	37390003 	ori	t9,t9,0x3
    1248:	24580008 	addiu	t8,v0,8
    124c:	ae1802c0 	sw	t8,704(s0)
    1250:	ac590000 	sw	t9,0(v0)
    1254:	8e240000 	lw	a0,0(s1)
    1258:	3c050000 	lui	a1,0x0
    125c:	24a50000 	addiu	a1,a1,0
    1260:	240603bd 	li	a2,957
    1264:	0c000000 	jal	0 <EnGSwitch_Init>
    1268:	afa20030 	sw	v0,48(sp)
    126c:	8fa30030 	lw	v1,48(sp)
    1270:	3c09db06 	lui	t1,0xdb06
    1274:	35290020 	ori	t1,t1,0x20
    1278:	ac620004 	sw	v0,4(v1)
    127c:	8e0202c0 	lw	v0,704(s0)
    1280:	3c040000 	lui	a0,0x0
    1284:	3c190000 	lui	t9,0x0
    1288:	24480008 	addiu	t0,v0,8
    128c:	ae0802c0 	sw	t0,704(s0)
    1290:	ac490000 	sw	t1,0(v0)
    1294:	8faa0050 	lw	t2,80(sp)
    1298:	3c0100ff 	lui	at,0xff
    129c:	3421ffff 	ori	at,at,0xffff
    12a0:	854b0158 	lh	t3,344(t2)
    12a4:	3c060000 	lui	a2,0x0
    12a8:	24c60000 	addiu	a2,a2,0
    12ac:	000b6080 	sll	t4,t3,0x2
    12b0:	008c2021 	addu	a0,a0,t4
    12b4:	8c840000 	lw	a0,0(a0)
    12b8:	3c0c0404 	lui	t4,0x404
    12bc:	258c2440 	addiu	t4,t4,9280
    12c0:	00047100 	sll	t6,a0,0x4
    12c4:	000e7f02 	srl	t7,t6,0x1c
    12c8:	000fc080 	sll	t8,t7,0x2
    12cc:	0338c821 	addu	t9,t9,t8
    12d0:	8f390000 	lw	t9,0(t9)
    12d4:	00816824 	and	t5,a0,at
    12d8:	3c018000 	lui	at,0x8000
    12dc:	01b94021 	addu	t0,t5,t9
    12e0:	01014821 	addu	t1,t0,at
    12e4:	ac490004 	sw	t1,4(v0)
    12e8:	8e0202c0 	lw	v0,704(s0)
    12ec:	3c0bde00 	lui	t3,0xde00
    12f0:	27a40034 	addiu	a0,sp,52
    12f4:	244a0008 	addiu	t2,v0,8
    12f8:	ae0a02c0 	sw	t2,704(s0)
    12fc:	ac4c0004 	sw	t4,4(v0)
    1300:	ac4b0000 	sw	t3,0(v0)
    1304:	8e250000 	lw	a1,0(s1)
    1308:	0c000000 	jal	0 <EnGSwitch_Init>
    130c:	240703c1 	li	a3,961
    1310:	8fae0050 	lw	t6,80(sp)
    1314:	24010003 	li	at,3
    1318:	85cf0150 	lh	t7,336(t6)
    131c:	01c02025 	move	a0,t6
    1320:	55e10004 	bnel	t7,at,1334 <func_80A230A8+0x14c>
    1324:	8fbf001c 	lw	ra,28(sp)
    1328:	0c000000 	jal	0 <EnGSwitch_Init>
    132c:	02202825 	move	a1,s1
    1330:	8fbf001c 	lw	ra,28(sp)
    1334:	8fb00014 	lw	s0,20(sp)
    1338:	8fb10018 	lw	s1,24(sp)
    133c:	03e00008 	jr	ra
    1340:	27bd0050 	addiu	sp,sp,80

00001344 <func_80A23204>:
    1344:	27bdffb8 	addiu	sp,sp,-72
    1348:	afbf001c 	sw	ra,28(sp)
    134c:	afb00018 	sw	s0,24(sp)
    1350:	afa60050 	sw	a2,80(sp)
    1354:	afa70054 	sw	a3,84(sp)
    1358:	8483015c 	lh	v1,348(a0)
    135c:	00073c00 	sll	a3,a3,0x10
    1360:	00063400 	sll	a2,a2,0x10
    1364:	00063403 	sra	a2,a2,0x10
    1368:	00073c03 	sra	a3,a3,0x10
    136c:	249001c8 	addiu	s0,a0,456
    1370:	18600033 	blez	v1,1440 <func_80A23204+0xfc>
    1374:	00001025 	move	v0,zero
    1378:	920e0012 	lbu	t6,18(s0)
    137c:	24420001 	addiu	v0,v0,1
    1380:	00021400 	sll	v0,v0,0x10
    1384:	15c0002b 	bnez	t6,1434 <func_80A23204+0xf0>
    1388:	00021403 	sra	v0,v0,0x10
    138c:	8cb80000 	lw	t8,0(a1)
    1390:	44800000 	mtc1	zero,$f0
    1394:	3c01447a 	lui	at,0x447a
    1398:	ae180000 	sw	t8,0(s0)
    139c:	8caf0004 	lw	t7,4(a1)
    13a0:	2419001e 	li	t9,30
    13a4:	44816000 	mtc1	at,$f12
    13a8:	ae0f0004 	sw	t7,4(s0)
    13ac:	8cb80008 	lw	t8,8(a1)
    13b0:	a606000c 	sh	a2,12(s0)
    13b4:	a6070010 	sh	a3,16(s0)
    13b8:	a619000e 	sh	t9,14(s0)
    13bc:	e6000020 	swc1	$f0,32(s0)
    13c0:	e6000024 	swc1	$f0,36(s0)
    13c4:	e6000028 	swc1	$f0,40(s0)
    13c8:	0c000000 	jal	0 <EnGSwitch_Init>
    13cc:	ae180008 	sw	t8,8(s0)
    13d0:	3c010000 	lui	at,0x0
    13d4:	c4240000 	lwc1	$f4,0(at)
    13d8:	3c010000 	lui	at,0x0
    13dc:	c42c0000 	lwc1	$f12,0(at)
    13e0:	46040181 	sub.s	$f6,$f0,$f4
    13e4:	0c000000 	jal	0 <EnGSwitch_Init>
    13e8:	e7a60030 	swc1	$f6,48(sp)
    13ec:	46000306 	mov.s	$f12,$f0
    13f0:	0c000000 	jal	0 <EnGSwitch_Init>
    13f4:	00002825 	move	a1,zero
    13f8:	c7ac0030 	lwc1	$f12,48(sp)
    13fc:	0c000000 	jal	0 <EnGSwitch_Init>
    1400:	24050001 	li	a1,1
    1404:	44800000 	mtc1	zero,$f0
    1408:	3c0141a0 	lui	at,0x41a0
    140c:	44814000 	mtc1	at,$f8
    1410:	27a40034 	addiu	a0,sp,52
    1414:	26050014 	addiu	a1,s0,20
    1418:	e7a00038 	swc1	$f0,56(sp)
    141c:	e7a00034 	swc1	$f0,52(sp)
    1420:	0c000000 	jal	0 <EnGSwitch_Init>
    1424:	e7a8003c 	swc1	$f8,60(sp)
    1428:	24080001 	li	t0,1
    142c:	10000004 	b	1440 <func_80A23204+0xfc>
    1430:	a2080012 	sb	t0,18(s0)
    1434:	0043082a 	slt	at,v0,v1
    1438:	1420ffcf 	bnez	at,1378 <func_80A23204+0x34>
    143c:	2610002c 	addiu	s0,s0,44
    1440:	8fbf001c 	lw	ra,28(sp)
    1444:	8fb00018 	lw	s0,24(sp)
    1448:	27bd0048 	addiu	sp,sp,72
    144c:	03e00008 	jr	ra
    1450:	00000000 	nop

00001454 <func_80A23314>:
    1454:	27bdffa8 	addiu	sp,sp,-88
    1458:	afbf0054 	sw	ra,84(sp)
    145c:	afb20050 	sw	s2,80(sp)
    1460:	afb1004c 	sw	s1,76(sp)
    1464:	afb00048 	sw	s0,72(sp)
    1468:	f7be0040 	sdc1	$f30,64(sp)
    146c:	f7bc0038 	sdc1	$f28,56(sp)
    1470:	f7ba0030 	sdc1	$f26,48(sp)
    1474:	f7b80028 	sdc1	$f24,40(sp)
    1478:	f7b60020 	sdc1	$f22,32(sp)
    147c:	f7b40018 	sdc1	$f20,24(sp)
    1480:	afa5005c 	sw	a1,92(sp)
    1484:	8483015c 	lh	v1,348(a0)
    1488:	00808825 	move	s1,a0
    148c:	249001c8 	addiu	s0,a0,456
    1490:	18600054 	blez	v1,15e4 <func_80A23314+0x190>
    1494:	00009025 	move	s2,zero
    1498:	3c0141f0 	lui	at,0x41f0
    149c:	4481f000 	mtc1	at,$f30
    14a0:	3c010000 	lui	at,0x0
    14a4:	c43c0000 	lwc1	$f28,0(at)
    14a8:	3c014170 	lui	at,0x4170
    14ac:	4481d000 	mtc1	at,$f26
    14b0:	3c014120 	lui	at,0x4120
    14b4:	4481c000 	mtc1	at,$f24
    14b8:	00000000 	nop
    14bc:	920e0012 	lbu	t6,18(s0)
    14c0:	51c00043 	beqzl	t6,15d0 <func_80A23314+0x17c>
    14c4:	26520001 	addiu	s2,s2,1
    14c8:	0c000000 	jal	0 <EnGSwitch_Init>
    14cc:	00000000 	nop
    14d0:	46180182 	mul.s	$f6,$f0,$f24
    14d4:	c6040020 	lwc1	$f4,32(s0)
    14d8:	461a3200 	add.s	$f8,$f6,$f26
    14dc:	46082280 	add.s	$f10,$f4,$f8
    14e0:	0c000000 	jal	0 <EnGSwitch_Init>
    14e4:	e60a0020 	swc1	$f10,32(s0)
    14e8:	46180482 	mul.s	$f18,$f0,$f24
    14ec:	c6100024 	lwc1	$f16,36(s0)
    14f0:	461a9180 	add.s	$f6,$f18,$f26
    14f4:	46068100 	add.s	$f4,$f16,$f6
    14f8:	0c000000 	jal	0 <EnGSwitch_Init>
    14fc:	e6040024 	swc1	$f4,36(s0)
    1500:	46180282 	mul.s	$f10,$f0,$f24
    1504:	c6080028 	lwc1	$f8,40(s0)
    1508:	c6060000 	lwc1	$f6,0(s0)
    150c:	c6040014 	lwc1	$f4,20(s0)
    1510:	4406e000 	mfc1	a2,$f28
    1514:	4407f000 	mfc1	a3,$f30
    1518:	46043080 	add.s	$f2,$f6,$f4
    151c:	02002025 	move	a0,s0
    1520:	461a5480 	add.s	$f18,$f10,$f26
    1524:	c60a0004 	lwc1	$f10,4(s0)
    1528:	44051000 	mfc1	a1,$f2
    152c:	46124400 	add.s	$f16,$f8,$f18
    1530:	c6080018 	lwc1	$f8,24(s0)
    1534:	c6120008 	lwc1	$f18,8(s0)
    1538:	e6100028 	swc1	$f16,40(s0)
    153c:	c610001c 	lwc1	$f16,28(s0)
    1540:	46085500 	add.s	$f20,$f10,$f8
    1544:	0c000000 	jal	0 <EnGSwitch_Init>
    1548:	46109580 	add.s	$f22,$f18,$f16
    154c:	4405a000 	mfc1	a1,$f20
    1550:	3c063f4c 	lui	a2,0x3f4c
    1554:	34c6cccd 	ori	a2,a2,0xcccd
    1558:	26040004 	addiu	a0,s0,4
    155c:	0c000000 	jal	0 <EnGSwitch_Init>
    1560:	3c07437a 	lui	a3,0x437a
    1564:	4405b000 	mfc1	a1,$f22
    1568:	4406e000 	mfc1	a2,$f28
    156c:	4407f000 	mfc1	a3,$f30
    1570:	0c000000 	jal	0 <EnGSwitch_Init>
    1574:	26040008 	addiu	a0,s0,8
    1578:	3c063f66 	lui	a2,0x3f66
    157c:	34c66666 	ori	a2,a2,0x6666
    1580:	26040018 	addiu	a0,s0,24
    1584:	3c05c1a0 	lui	a1,0xc1a0
    1588:	0c000000 	jal	0 <EnGSwitch_Init>
    158c:	3c073f80 	lui	a3,0x3f80
    1590:	8602000e 	lh	v0,14(s0)
    1594:	10400004 	beqz	v0,15a8 <func_80A23314+0x154>
    1598:	244fffff 	addiu	t7,v0,-1
    159c:	a60f000e 	sh	t7,14(s0)
    15a0:	1000000a 	b	15cc <func_80A23314+0x178>
    15a4:	8623015c 	lh	v1,348(s1)
    15a8:	8602000c 	lh	v0,12(s0)
    15ac:	2841000a 	slti	at,v0,10
    15b0:	10200004 	beqz	at,15c4 <func_80A23314+0x170>
    15b4:	2458fffe 	addiu	t8,v0,-2
    15b8:	a2000012 	sb	zero,18(s0)
    15bc:	10000003 	b	15cc <func_80A23314+0x178>
    15c0:	8623015c 	lh	v1,348(s1)
    15c4:	a618000c 	sh	t8,12(s0)
    15c8:	8623015c 	lh	v1,348(s1)
    15cc:	26520001 	addiu	s2,s2,1
    15d0:	00129400 	sll	s2,s2,0x10
    15d4:	00129403 	sra	s2,s2,0x10
    15d8:	0243082a 	slt	at,s2,v1
    15dc:	1420ffb7 	bnez	at,14bc <func_80A23314+0x68>
    15e0:	2610002c 	addiu	s0,s0,44
    15e4:	8fbf0054 	lw	ra,84(sp)
    15e8:	d7b40018 	ldc1	$f20,24(sp)
    15ec:	d7b60020 	ldc1	$f22,32(sp)
    15f0:	d7b80028 	ldc1	$f24,40(sp)
    15f4:	d7ba0030 	ldc1	$f26,48(sp)
    15f8:	d7bc0038 	ldc1	$f28,56(sp)
    15fc:	d7be0040 	ldc1	$f30,64(sp)
    1600:	8fb00048 	lw	s0,72(sp)
    1604:	8fb1004c 	lw	s1,76(sp)
    1608:	8fb20050 	lw	s2,80(sp)
    160c:	03e00008 	jr	ra
    1610:	27bd0058 	addiu	sp,sp,88

00001614 <func_80A234D4>:
    1614:	27bdff70 	addiu	sp,sp,-144
    1618:	afbf004c 	sw	ra,76(sp)
    161c:	afbe0048 	sw	s8,72(sp)
    1620:	afb70044 	sw	s7,68(sp)
    1624:	afb60040 	sw	s6,64(sp)
    1628:	afb5003c 	sw	s5,60(sp)
    162c:	afb40038 	sw	s4,56(sp)
    1630:	afb30034 	sw	s3,52(sp)
    1634:	afb20030 	sw	s2,48(sp)
    1638:	afb1002c 	sw	s1,44(sp)
    163c:	afb00028 	sw	s0,40(sp)
    1640:	f7b60020 	sdc1	$f22,32(sp)
    1644:	f7b40018 	sdc1	$f20,24(sp)
    1648:	8cb20000 	lw	s2,0(a1)
    164c:	00a0a825 	move	s5,a1
    1650:	0080b025 	move	s6,a0
    1654:	249001c8 	addiu	s0,a0,456
    1658:	3c060000 	lui	a2,0x0
    165c:	24c60000 	addiu	a2,a2,0
    1660:	27a40068 	addiu	a0,sp,104
    1664:	24070431 	li	a3,1073
    1668:	0c000000 	jal	0 <EnGSwitch_Init>
    166c:	02402825 	move	a1,s2
    1670:	0c000000 	jal	0 <EnGSwitch_Init>
    1674:	8ea40000 	lw	a0,0(s5)
    1678:	86c4015c 	lh	a0,348(s6)
    167c:	00009825 	move	s3,zero
    1680:	3c010000 	lui	at,0x0
    1684:	18800050 	blez	a0,17c8 <func_80A234D4+0x1b4>
    1688:	3c17da38 	lui	s7,0xda38
    168c:	3c1e0000 	lui	s8,0x0
    1690:	27de0000 	addiu	s8,s8,0
    1694:	c4360000 	lwc1	$f22,0(at)
    1698:	36f70003 	ori	s7,s7,0x3
    169c:	920e0012 	lbu	t6,18(s0)
    16a0:	51c00044 	beqzl	t6,17b4 <func_80A234D4+0x1a0>
    16a4:	26730001 	addiu	s3,s3,1
    16a8:	860f000c 	lh	t7,12(s0)
    16ac:	3c140404 	lui	s4,0x404
    16b0:	26942440 	addiu	s4,s4,9280
    16b4:	448f2000 	mtc1	t7,$f4
    16b8:	c60c0000 	lwc1	$f12,0(s0)
    16bc:	c60e0004 	lwc1	$f14,4(s0)
    16c0:	468021a0 	cvt.s.w	$f6,$f4
    16c4:	8e060008 	lw	a2,8(s0)
    16c8:	00003825 	move	a3,zero
    16cc:	0c000000 	jal	0 <EnGSwitch_Init>
    16d0:	46163503 	div.s	$f20,$f6,$f22
    16d4:	4406a000 	mfc1	a2,$f20
    16d8:	4600a306 	mov.s	$f12,$f20
    16dc:	4600a386 	mov.s	$f14,$f20
    16e0:	0c000000 	jal	0 <EnGSwitch_Init>
    16e4:	24070001 	li	a3,1
    16e8:	c60c0020 	lwc1	$f12,32(s0)
    16ec:	0c000000 	jal	0 <EnGSwitch_Init>
    16f0:	24050001 	li	a1,1
    16f4:	c60c0024 	lwc1	$f12,36(s0)
    16f8:	0c000000 	jal	0 <EnGSwitch_Init>
    16fc:	24050001 	li	a1,1
    1700:	c60c0028 	lwc1	$f12,40(s0)
    1704:	0c000000 	jal	0 <EnGSwitch_Init>
    1708:	24050001 	li	a1,1
    170c:	8e4202c0 	lw	v0,704(s2)
    1710:	03c02825 	move	a1,s8
    1714:	24060440 	li	a2,1088
    1718:	24580008 	addiu	t8,v0,8
    171c:	ae5802c0 	sw	t8,704(s2)
    1720:	ac570000 	sw	s7,0(v0)
    1724:	8ea40000 	lw	a0,0(s5)
    1728:	0c000000 	jal	0 <EnGSwitch_Init>
    172c:	00408825 	move	s1,v0
    1730:	ae220004 	sw	v0,4(s1)
    1734:	8e4202c0 	lw	v0,704(s2)
    1738:	3c08db06 	lui	t0,0xdb06
    173c:	35080020 	ori	t0,t0,0x20
    1740:	24590008 	addiu	t9,v0,8
    1744:	ae5902c0 	sw	t9,704(s2)
    1748:	ac480000 	sw	t0,0(v0)
    174c:	86090010 	lh	t1,16(s0)
    1750:	3c040000 	lui	a0,0x0
    1754:	3c0f0000 	lui	t7,0x0
    1758:	00095080 	sll	t2,t1,0x2
    175c:	008a2021 	addu	a0,a0,t2
    1760:	8c840000 	lw	a0,0(a0)
    1764:	3c0100ff 	lui	at,0xff
    1768:	3421ffff 	ori	at,at,0xffff
    176c:	00046100 	sll	t4,a0,0x4
    1770:	000c6f02 	srl	t5,t4,0x1c
    1774:	000d7080 	sll	t6,t5,0x2
    1778:	01ee7821 	addu	t7,t7,t6
    177c:	8def0000 	lw	t7,0(t7)
    1780:	00815824 	and	t3,a0,at
    1784:	3c018000 	lui	at,0x8000
    1788:	016fc021 	addu	t8,t3,t7
    178c:	0301c821 	addu	t9,t8,at
    1790:	ac590004 	sw	t9,4(v0)
    1794:	8e4202c0 	lw	v0,704(s2)
    1798:	3c09de00 	lui	t1,0xde00
    179c:	24480008 	addiu	t0,v0,8
    17a0:	ae4802c0 	sw	t0,704(s2)
    17a4:	ac540004 	sw	s4,4(v0)
    17a8:	ac490000 	sw	t1,0(v0)
    17ac:	86c4015c 	lh	a0,348(s6)
    17b0:	26730001 	addiu	s3,s3,1
    17b4:	00139c00 	sll	s3,s3,0x10
    17b8:	00139c03 	sra	s3,s3,0x10
    17bc:	0264082a 	slt	at,s3,a0
    17c0:	1420ffb6 	bnez	at,169c <func_80A234D4+0x88>
    17c4:	2610002c 	addiu	s0,s0,44
    17c8:	3c060000 	lui	a2,0x0
    17cc:	24c60000 	addiu	a2,a2,0
    17d0:	27a40068 	addiu	a0,sp,104
    17d4:	02402825 	move	a1,s2
    17d8:	0c000000 	jal	0 <EnGSwitch_Init>
    17dc:	24070447 	li	a3,1095
    17e0:	8fbf004c 	lw	ra,76(sp)
    17e4:	d7b40018 	ldc1	$f20,24(sp)
    17e8:	d7b60020 	ldc1	$f22,32(sp)
    17ec:	8fb00028 	lw	s0,40(sp)
    17f0:	8fb1002c 	lw	s1,44(sp)
    17f4:	8fb20030 	lw	s2,48(sp)
    17f8:	8fb30034 	lw	s3,52(sp)
    17fc:	8fb40038 	lw	s4,56(sp)
    1800:	8fb5003c 	lw	s5,60(sp)
    1804:	8fb60040 	lw	s6,64(sp)
    1808:	8fb70044 	lw	s7,68(sp)
    180c:	8fbe0048 	lw	s8,72(sp)
    1810:	03e00008 	jr	ra
    1814:	27bd0090 	addiu	sp,sp,144
	...
