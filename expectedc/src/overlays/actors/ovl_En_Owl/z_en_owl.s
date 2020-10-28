
build/src/overlays/actors/ovl_En_Owl/z_en_owl.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnOwl_Init>:
       0:	27bdffb0 	addiu	sp,sp,-80
       4:	afa50054 	sw	a1,84(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnOwl_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	3c060000 	lui	a2,0x0
      24:	24c60000 	addiu	a2,a2,0
      28:	260400b4 	addiu	a0,s0,180
      2c:	24050000 	li	a1,0
      30:	0c000000 	jal	0 <EnOwl_Init>
      34:	3c074210 	lui	a3,0x4210
      38:	3c060601 	lui	a2,0x601
      3c:	3c070600 	lui	a3,0x600
      40:	260e01dc 	addiu	t6,s0,476
      44:	260f025a 	addiu	t7,s0,602
      48:	24180015 	li	t8,21
      4c:	afb80018 	sw	t8,24(sp)
      50:	afaf0014 	sw	t7,20(sp)
      54:	afae0010 	sw	t6,16(sp)
      58:	24e715cc 	addiu	a3,a3,5580
      5c:	24c6c0e8 	addiu	a2,a2,-16152
      60:	8fa40054 	lw	a0,84(sp)
      64:	0c000000 	jal	0 <EnOwl_Init>
      68:	26050198 	addiu	a1,s0,408
      6c:	260502d8 	addiu	a1,s0,728
      70:	3c060601 	lui	a2,0x601
      74:	3c070601 	lui	a3,0x601
      78:	2619031c 	addiu	t9,s0,796
      7c:	2608037c 	addiu	t0,s0,892
      80:	24090010 	li	t1,16
      84:	afa90018 	sw	t1,24(sp)
      88:	afa80014 	sw	t0,20(sp)
      8c:	afb90010 	sw	t9,16(sp)
      90:	24e7c8a0 	addiu	a3,a3,-14176
      94:	24c600b0 	addiu	a2,a2,176
      98:	afa50034 	sw	a1,52(sp)
      9c:	0c000000 	jal	0 <EnOwl_Init>
      a0:	8fa40054 	lw	a0,84(sp)
      a4:	2605014c 	addiu	a1,s0,332
      a8:	afa50038 	sw	a1,56(sp)
      ac:	0c000000 	jal	0 <EnOwl_Init>
      b0:	8fa40054 	lw	a0,84(sp)
      b4:	3c070000 	lui	a3,0x0
      b8:	8fa50038 	lw	a1,56(sp)
      bc:	24e70000 	addiu	a3,a3,0
      c0:	8fa40054 	lw	a0,84(sp)
      c4:	0c000000 	jal	0 <EnOwl_Init>
      c8:	02003025 	move	a2,s0
      cc:	3c01c120 	lui	at,0xc120
      d0:	44812000 	mtc1	at,$f4
      d4:	3c0143fa 	lui	at,0x43fa
      d8:	44813000 	mtc1	at,$f6
      dc:	240a00ff 	li	t2,255
      e0:	a20a00ae 	sb	t2,174(s0)
      e4:	e6040070 	swc1	$f4,112(s0)
      e8:	e606004c 	swc1	$f6,76(s0)
      ec:	44804000 	mtc1	zero,$f8
      f0:	3c050000 	lui	a1,0x0
      f4:	3c0b0601 	lui	t3,0x601
      f8:	256bc8a0 	addiu	t3,t3,-14176
      fc:	24a50000 	addiu	a1,a1,0
     100:	3c060000 	lui	a2,0x0
     104:	24c60000 	addiu	a2,a2,0
     108:	afa50038 	sw	a1,56(sp)
     10c:	afab0010 	sw	t3,16(sp)
     110:	8fa70034 	lw	a3,52(sp)
     114:	02002025 	move	a0,s0
     118:	0c000000 	jal	0 <EnOwl_Init>
     11c:	e7a80014 	swc1	$f8,20(sp)
     120:	8605001c 	lh	a1,28(s0)
     124:	24030004 	li	v1,4
     128:	300200ff 	andi	v0,zero,0xff
     12c:	24010fff 	li	at,4095
     130:	30a60fc0 	andi	a2,a1,0xfc0
     134:	a2020406 	sb	v0,1030(s0)
     138:	a60203fc 	sh	v0,1020(s0)
     13c:	a2000409 	sb	zero,1033(s0)
     140:	a2030405 	sb	v1,1029(s0)
     144:	a2000407 	sb	zero,1031(s0)
     148:	a2000404 	sb	zero,1028(s0)
     14c:	a2030408 	sb	v1,1032(s0)
     150:	00063183 	sra	a2,a2,0x6
     154:	14a10003 	bne	a1,at,164 <EnOwl_Init+0x164>
     158:	30a7003f 	andi	a3,a1,0x3f
     15c:	24060001 	li	a2,1
     160:	24070020 	li	a3,32
     164:	3c040000 	lui	a0,0x0
     168:	24840000 	addiu	a0,a0,0
     16c:	afa60044 	sw	a2,68(sp)
     170:	0c000000 	jal	0 <EnOwl_Init>
     174:	afa70040 	sw	a3,64(sp)
     178:	8fa60044 	lw	a2,68(sp)
     17c:	8fa70040 	lw	a3,64(sp)
     180:	10c00010 	beqz	a2,1c4 <EnOwl_Init+0x1c4>
     184:	28e10020 	slti	at,a3,32
     188:	5020000f 	beqzl	at,1c8 <EnOwl_Init+0x1c8>
     18c:	860d0032 	lh	t5,50(s0)
     190:	8fa40054 	lw	a0,84(sp)
     194:	00e02825 	move	a1,a3
     198:	0c000000 	jal	0 <EnOwl_Init>
     19c:	afa60044 	sw	a2,68(sp)
     1a0:	10400008 	beqz	v0,1c4 <EnOwl_Init+0x1c4>
     1a4:	8fa60044 	lw	a2,68(sp)
     1a8:	3c040000 	lui	a0,0x0
     1ac:	0c000000 	jal	0 <EnOwl_Init>
     1b0:	24840000 	addiu	a0,a0,0
     1b4:	0c000000 	jal	0 <EnOwl_Init>
     1b8:	02002025 	move	a0,s0
     1bc:	100000a8 	b	460 <L80ACA2DC+0xa4>
     1c0:	8fbf002c 	lw	ra,44(sp)
     1c4:	860d0032 	lh	t5,50(s0)
     1c8:	2cc1000d 	sltiu	at,a2,13
     1cc:	a60003ee 	sh	zero,1006(s0)
     1d0:	1020008c 	beqz	at,404 <L80ACA2DC+0x48>
     1d4:	a60d0400 	sh	t5,1024(s0)
     1d8:	00067080 	sll	t6,a2,0x2
     1dc:	3c010000 	lui	at,0x0
     1e0:	002e0821 	addu	at,at,t6
     1e4:	8c2e0000 	lw	t6,0(at)
     1e8:	01c00008 	jr	t6
     1ec:	00000000 	nop

000001f0 <L80ACA110>:
     1f0:	3c01457a 	lui	at,0x457a
     1f4:	8faf0038 	lw	t7,56(sp)
     1f8:	44815000 	mtc1	at,$f10
     1fc:	a200040a 	sb	zero,1034(s0)
     200:	ae0f040c 	sw	t7,1036(s0)
     204:	10000095 	b	45c <L80ACA2DC+0xa0>
     208:	e60a00f4 	swc1	$f10,244(s0)

0000020c <L80ACA12C>:
     20c:	3c180000 	lui	t8,0x0
     210:	27180000 	addiu	t8,t8,0
     214:	10000091 	b	45c <L80ACA2DC+0xa0>
     218:	ae18040c 	sw	t8,1036(s0)

0000021c <L80ACA13C>:
     21c:	961903fc 	lhu	t9,1020(s0)
     220:	3c0a0000 	lui	t2,0x0
     224:	24090020 	li	t1,32
     228:	254a0000 	addiu	t2,t2,0
     22c:	37280002 	ori	t0,t9,0x2
     230:	a60803fc 	sh	t0,1020(s0)
     234:	a60903ee 	sh	t1,1006(s0)
     238:	10000088 	b	45c <L80ACA2DC+0xa0>
     23c:	ae0a040c 	sw	t2,1036(s0)

00000240 <L80ACA160>:
     240:	3c020000 	lui	v0,0x0
     244:	24420000 	addiu	v0,v0,0
     248:	944b0edc 	lhu	t3,3804(v0)
     24c:	3c0d0000 	lui	t5,0x0
     250:	3c040000 	lui	a0,0x0
     254:	316c0001 	andi	t4,t3,0x1
     258:	11800007 	beqz	t4,278 <L80ACA160+0x38>
     25c:	25ad0000 	addiu	t5,t5,0
     260:	0c000000 	jal	0 <EnOwl_Init>
     264:	24840000 	addiu	a0,a0,0
     268:	0c000000 	jal	0 <EnOwl_Init>
     26c:	02002025 	move	a0,s0
     270:	1000007b 	b	460 <L80ACA2DC+0xa4>
     274:	8fbf002c 	lw	ra,44(sp)
     278:	10000078 	b	45c <L80ACA2DC+0xa0>
     27c:	ae0d040c 	sw	t5,1036(s0)

00000280 <L80ACA1A0>:
     280:	3c020000 	lui	v0,0x0
     284:	24420000 	addiu	v0,v0,0
     288:	944e0edc 	lhu	t6,3804(v0)
     28c:	3c180000 	lui	t8,0x0
     290:	3c040000 	lui	a0,0x0
     294:	31cf0008 	andi	t7,t6,0x8
     298:	11e00007 	beqz	t7,2b8 <L80ACA1A0+0x38>
     29c:	27180000 	addiu	t8,t8,0
     2a0:	0c000000 	jal	0 <EnOwl_Init>
     2a4:	24840000 	addiu	a0,a0,0
     2a8:	0c000000 	jal	0 <EnOwl_Init>
     2ac:	02002025 	move	a0,s0
     2b0:	1000006b 	b	460 <L80ACA2DC+0xa4>
     2b4:	8fbf002c 	lw	ra,44(sp)
     2b8:	10000068 	b	45c <L80ACA2DC+0xa0>
     2bc:	ae18040c 	sw	t8,1036(s0)

000002c0 <L80ACA1E0>:
     2c0:	3c190000 	lui	t9,0x0
     2c4:	27390000 	addiu	t9,t9,0
     2c8:	10000064 	b	45c <L80ACA2DC+0xa0>
     2cc:	ae19040c 	sw	t9,1036(s0)

000002d0 <L80ACA1F0>:
     2d0:	3c020000 	lui	v0,0x0
     2d4:	24420000 	addiu	v0,v0,0
     2d8:	94480eda 	lhu	t0,3802(v0)
     2dc:	3c040000 	lui	a0,0x0
     2e0:	31090200 	andi	t1,t0,0x200
     2e4:	15200007 	bnez	t1,304 <L80ACA1F0+0x34>
     2e8:	00000000 	nop
     2ec:	944a0edc 	lhu	t2,3804(v0)
     2f0:	3c0c0000 	lui	t4,0x0
     2f4:	258c0000 	addiu	t4,t4,0
     2f8:	314b0001 	andi	t3,t2,0x1
     2fc:	15600007 	bnez	t3,31c <L80ACA1F0+0x4c>
     300:	00000000 	nop
     304:	0c000000 	jal	0 <EnOwl_Init>
     308:	24840000 	addiu	a0,a0,0
     30c:	0c000000 	jal	0 <EnOwl_Init>
     310:	02002025 	move	a0,s0
     314:	10000052 	b	460 <L80ACA2DC+0xa4>
     318:	8fbf002c 	lw	ra,44(sp)
     31c:	1000004f 	b	45c <L80ACA2DC+0xa0>
     320:	ae0c040c 	sw	t4,1036(s0)

00000324 <L80ACA244>:
     324:	3c0d0000 	lui	t5,0x0
     328:	25ad0000 	addiu	t5,t5,0
     32c:	ae0d040c 	sw	t5,1036(s0)
     330:	8fa40054 	lw	a0,84(sp)
     334:	0c000000 	jal	0 <EnOwl_Init>
     338:	24050023 	li	a1,35
     33c:	10000048 	b	460 <L80ACA2DC+0xa4>
     340:	8fbf002c 	lw	ra,44(sp)

00000344 <L80ACA264>:
     344:	3c0e0000 	lui	t6,0x0
     348:	25ce0000 	addiu	t6,t6,0
     34c:	10000043 	b	45c <L80ACA2DC+0xa0>
     350:	ae0e040c 	sw	t6,1036(s0)

00000354 <L80ACA274>:
     354:	3c0f0000 	lui	t7,0x0
     358:	25ef0000 	addiu	t7,t7,0
     35c:	1000003f 	b	45c <L80ACA2DC+0xa0>
     360:	ae0f040c 	sw	t7,1036(s0)

00000364 <L80ACA284>:
     364:	3c180000 	lui	t8,0x0
     368:	27180000 	addiu	t8,t8,0
     36c:	1000003b 	b	45c <L80ACA2DC+0xa0>
     370:	ae18040c 	sw	t8,1036(s0)

00000374 <L80ACA294>:
     374:	3c020000 	lui	v0,0x0
     378:	24420000 	addiu	v0,v0,0
     37c:	3c190000 	lui	t9,0x0
     380:	8f390030 	lw	t9,48(t9)
     384:	8c4800a4 	lw	t0,164(v0)
     388:	3c0a0000 	lui	t2,0x0
     38c:	3c040000 	lui	a0,0x0
     390:	03284824 	and	t1,t9,t0
     394:	15200007 	bnez	t1,3b4 <L80ACA294+0x40>
     398:	254a0000 	addiu	t2,t2,0
     39c:	0c000000 	jal	0 <EnOwl_Init>
     3a0:	24840000 	addiu	a0,a0,0
     3a4:	0c000000 	jal	0 <EnOwl_Init>
     3a8:	02002025 	move	a0,s0
     3ac:	1000002c 	b	460 <L80ACA2DC+0xa4>
     3b0:	8fbf002c 	lw	ra,44(sp)
     3b4:	10000029 	b	45c <L80ACA2DC+0xa0>
     3b8:	ae0a040c 	sw	t2,1036(s0)

000003bc <L80ACA2DC>:
     3bc:	3c020000 	lui	v0,0x0
     3c0:	24420000 	addiu	v0,v0,0
     3c4:	3c0b0000 	lui	t3,0x0
     3c8:	8d6b0038 	lw	t3,56(t3)
     3cc:	8c4c00a4 	lw	t4,164(v0)
     3d0:	3c0e0000 	lui	t6,0x0
     3d4:	3c040000 	lui	a0,0x0
     3d8:	016c6824 	and	t5,t3,t4
     3dc:	15a00007 	bnez	t5,3fc <L80ACA2DC+0x40>
     3e0:	25ce0000 	addiu	t6,t6,0
     3e4:	0c000000 	jal	0 <EnOwl_Init>
     3e8:	24840000 	addiu	a0,a0,0
     3ec:	0c000000 	jal	0 <EnOwl_Init>
     3f0:	02002025 	move	a0,s0
     3f4:	1000001a 	b	460 <L80ACA2DC+0xa4>
     3f8:	8fbf002c 	lw	ra,44(sp)
     3fc:	10000017 	b	45c <L80ACA2DC+0xa0>
     400:	ae0e040c 	sw	t6,1036(s0)
     404:	3c040000 	lui	a0,0x0
     408:	24840000 	addiu	a0,a0,0
     40c:	0c000000 	jal	0 <EnOwl_Init>
     410:	afa60044 	sw	a2,68(sp)
     414:	3c040000 	lui	a0,0x0
     418:	8fa50044 	lw	a1,68(sp)
     41c:	0c000000 	jal	0 <EnOwl_Init>
     420:	24840000 	addiu	a0,a0,0
     424:	3c040000 	lui	a0,0x0
     428:	0c000000 	jal	0 <EnOwl_Init>
     42c:	24840000 	addiu	a0,a0,0
     430:	3c040000 	lui	a0,0x0
     434:	0c000000 	jal	0 <EnOwl_Init>
     438:	24840000 	addiu	a0,a0,0
     43c:	960f03fc 	lhu	t7,1020(s0)
     440:	3c080000 	lui	t0,0x0
     444:	24190020 	li	t9,32
     448:	25080000 	addiu	t0,t0,0
     44c:	35f80002 	ori	t8,t7,0x2
     450:	a61803fc 	sh	t8,1020(s0)
     454:	a61903ee 	sh	t9,1006(s0)
     458:	ae08040c 	sw	t0,1036(s0)
     45c:	8fbf002c 	lw	ra,44(sp)
     460:	8fb00028 	lw	s0,40(sp)
     464:	27bd0050 	addiu	sp,sp,80
     468:	03e00008 	jr	ra
     46c:	00000000 	nop

00000470 <EnOwl_Destroy>:
     470:	27bdffe8 	addiu	sp,sp,-24
     474:	00803025 	move	a2,a0
     478:	afbf0014 	sw	ra,20(sp)
     47c:	00a02025 	move	a0,a1
     480:	0c000000 	jal	0 <EnOwl_Init>
     484:	24c5014c 	addiu	a1,a2,332
     488:	8fbf0014 	lw	ra,20(sp)
     48c:	27bd0018 	addiu	sp,sp,24
     490:	03e00008 	jr	ra
     494:	00000000 	nop

00000498 <func_80ACA3B8>:
     498:	27bdffe8 	addiu	sp,sp,-24
     49c:	afbf0014 	sw	ra,20(sp)
     4a0:	8ca21c44 	lw	v0,7236(a1)
     4a4:	00803025 	move	a2,a0
     4a8:	afa60018 	sw	a2,24(sp)
     4ac:	24840024 	addiu	a0,a0,36
     4b0:	0c000000 	jal	0 <EnOwl_Init>
     4b4:	24450024 	addiu	a1,v0,36
     4b8:	8fa60018 	lw	a2,24(sp)
     4bc:	a4c20032 	sh	v0,50(a2)
     4c0:	a4c200b6 	sh	v0,182(a2)
     4c4:	8fbf0014 	lw	ra,20(sp)
     4c8:	27bd0018 	addiu	sp,sp,24
     4cc:	03e00008 	jr	ra
     4d0:	00000000 	nop

000004d4 <func_80ACA3F4>:
     4d4:	27bdffd8 	addiu	sp,sp,-40
     4d8:	afbf0024 	sw	ra,36(sp)
     4dc:	afb00020 	sw	s0,32(sp)
     4e0:	00808025 	move	s0,a0
     4e4:	afa5002c 	sw	a1,44(sp)
     4e8:	afa60030 	sw	a2,48(sp)
     4ec:	0c000000 	jal	0 <EnOwl_Init>
     4f0:	afa70034 	sw	a3,52(sp)
     4f4:	1040002e 	beqz	v0,5b0 <func_80ACA3F4+0xdc>
     4f8:	c7a20034 	lwc1	$f2,52(sp)
     4fc:	860e001c 	lh	t6,28(s0)
     500:	24010fff 	li	at,4095
     504:	15c10006 	bne	t6,at,520 <func_80ACA3F4+0x4c>
     508:	00000000 	nop
     50c:	960f03fc 	lhu	t7,1020(s0)
     510:	2402ff9c 	li	v0,-100
     514:	35f80040 	ori	t8,t7,0x40
     518:	1000001b 	b	588 <func_80ACA3F4+0xb4>
     51c:	a61803fc 	sh	t8,1020(s0)
     520:	0c000000 	jal	0 <EnOwl_Init>
     524:	00000000 	nop
     528:	3c013f00 	lui	at,0x3f00
     52c:	44812000 	mtc1	at,$f4
     530:	97b9003a 	lhu	t9,58(sp)
     534:	97ab003a 	lhu	t3,58(sp)
     538:	4604003c 	c.lt.s	$f0,$f4
     53c:	33280001 	andi	t0,t9,0x1
     540:	316c0001 	andi	t4,t3,0x1
     544:	45000009 	bc1f	56c <func_80ACA3F4+0x98>
     548:	00000000 	nop
     54c:	11000003 	beqz	t0,55c <func_80ACA3F4+0x88>
     550:	2402ff9d 	li	v0,-99
     554:	10000001 	b	55c <func_80ACA3F4+0x88>
     558:	2402ff9f 	li	v0,-97
     55c:	960903fc 	lhu	t1,1020(s0)
     560:	352a0040 	ori	t2,t1,0x40
     564:	10000008 	b	588 <func_80ACA3F4+0xb4>
     568:	a60a03fc 	sh	t2,1020(s0)
     56c:	11800003 	beqz	t4,57c <func_80ACA3F4+0xa8>
     570:	2402ff9e 	li	v0,-98
     574:	10000001 	b	57c <func_80ACA3F4+0xa8>
     578:	2402ffa0 	li	v0,-96
     57c:	960d03fc 	lhu	t5,1020(s0)
     580:	31aeffbf 	andi	t6,t5,0xffbf
     584:	a60e03fc 	sh	t6,1020(s0)
     588:	00023400 	sll	a2,v0,0x10
     58c:	00063403 	sra	a2,a2,0x10
     590:	8fa4002c 	lw	a0,44(sp)
     594:	240521fc 	li	a1,8700
     598:	02003825 	move	a3,s0
     59c:	0c000000 	jal	0 <EnOwl_Init>
     5a0:	afa00010 	sw	zero,16(sp)
     5a4:	a6020402 	sh	v0,1026(s0)
     5a8:	1000001e 	b	624 <func_80ACA3F4+0x150>
     5ac:	24020001 	li	v0,1
     5b0:	97af0032 	lhu	t7,50(sp)
     5b4:	3c01447a 	lui	at,0x447a
     5b8:	02002025 	move	a0,s0
     5bc:	a60f010e 	sh	t7,270(s0)
     5c0:	97b8003a 	lhu	t8,58(sp)
     5c4:	33190002 	andi	t9,t8,0x2
     5c8:	53200006 	beqzl	t9,5e4 <func_80ACA3F4+0x110>
     5cc:	44810000 	mtc1	at,$f0
     5d0:	3c014348 	lui	at,0x4348
     5d4:	44810000 	mtc1	at,$f0
     5d8:	10000004 	b	5ec <func_80ACA3F4+0x118>
     5dc:	c6060090 	lwc1	$f6,144(s0)
     5e0:	44810000 	mtc1	at,$f0
     5e4:	00000000 	nop
     5e8:	c6060090 	lwc1	$f6,144(s0)
     5ec:	3c010001 	lui	at,0x1
     5f0:	4602303c 	c.lt.s	$f6,$f2
     5f4:	00000000 	nop
     5f8:	4502000a 	bc1fl	624 <func_80ACA3F4+0x150>
     5fc:	00001025 	move	v0,zero
     600:	8e080004 	lw	t0,4(s0)
     604:	44061000 	mfc1	a2,$f2
     608:	44070000 	mfc1	a3,$f0
     60c:	01014825 	or	t1,t0,at
     610:	ae090004 	sw	t1,4(s0)
     614:	afa00010 	sw	zero,16(sp)
     618:	0c000000 	jal	0 <EnOwl_Init>
     61c:	8fa5002c 	lw	a1,44(sp)
     620:	00001025 	move	v0,zero
     624:	8fbf0024 	lw	ra,36(sp)
     628:	8fb00020 	lw	s0,32(sp)
     62c:	27bd0028 	addiu	sp,sp,40
     630:	03e00008 	jr	ra
     634:	00000000 	nop

00000638 <func_80ACA558>:
     638:	27bdffe0 	addiu	sp,sp,-32
     63c:	afbf001c 	sw	ra,28(sp)
     640:	afa50024 	sw	a1,36(sp)
     644:	afa60028 	sw	a2,40(sp)
     648:	0c000000 	jal	0 <EnOwl_Init>
     64c:	afa40020 	sw	a0,32(sp)
     650:	10400003 	beqz	v0,660 <func_80ACA558+0x28>
     654:	8fa40020 	lw	a0,32(sp)
     658:	1000000f 	b	698 <func_80ACA558+0x60>
     65c:	24020001 	li	v0,1
     660:	3c0142f0 	lui	at,0x42f0
     664:	44813000 	mtc1	at,$f6
     668:	c4840090 	lwc1	$f4,144(a0)
     66c:	97ae002a 	lhu	t6,42(sp)
     670:	3c0643af 	lui	a2,0x43af
     674:	4606203c 	c.lt.s	$f4,$f6
     678:	a48e010e 	sh	t6,270(a0)
     67c:	8fa50024 	lw	a1,36(sp)
     680:	3c07447a 	lui	a3,0x447a
     684:	45020004 	bc1fl	698 <func_80ACA558+0x60>
     688:	00001025 	move	v0,zero
     68c:	0c000000 	jal	0 <EnOwl_Init>
     690:	afa00010 	sw	zero,16(sp)
     694:	00001025 	move	v0,zero
     698:	8fbf001c 	lw	ra,28(sp)
     69c:	27bd0020 	addiu	sp,sp,32
     6a0:	03e00008 	jr	ra
     6a4:	00000000 	nop

000006a8 <func_80ACA5C8>:
     6a8:	27bdffe0 	addiu	sp,sp,-32
     6ac:	44802000 	mtc1	zero,$f4
     6b0:	3c0e0601 	lui	t6,0x601
     6b4:	afbf001c 	sw	ra,28(sp)
     6b8:	25cec684 	addiu	t6,t6,-14716
     6bc:	3c050000 	lui	a1,0x0
     6c0:	3c060000 	lui	a2,0x0
     6c4:	24c60000 	addiu	a2,a2,0
     6c8:	24a50000 	addiu	a1,a1,0
     6cc:	afae0010 	sw	t6,16(sp)
     6d0:	afa40020 	sw	a0,32(sp)
     6d4:	24870198 	addiu	a3,a0,408
     6d8:	0c000000 	jal	0 <EnOwl_Init>
     6dc:	e7a40014 	swc1	$f4,20(sp)
     6e0:	8faf0020 	lw	t7,32(sp)
     6e4:	2404003c 	li	a0,60
     6e8:	2405003c 	li	a1,60
     6ec:	0c000000 	jal	0 <EnOwl_Init>
     6f0:	a5e003f4 	sh	zero,1012(t7)
     6f4:	8fb80020 	lw	t8,32(sp)
     6f8:	a70203f6 	sh	v0,1014(t8)
     6fc:	8fbf001c 	lw	ra,28(sp)
     700:	27bd0020 	addiu	sp,sp,32
     704:	03e00008 	jr	ra
     708:	00000000 	nop

0000070c <func_80ACA62C>:
     70c:	27bdffe0 	addiu	sp,sp,-32
     710:	afbf0014 	sw	ra,20(sp)
     714:	afa40020 	sw	a0,32(sp)
     718:	afa50024 	sw	a1,36(sp)
     71c:	8486001c 	lh	a2,28(a0)
     720:	00a02025 	move	a0,a1
     724:	30c6003f 	andi	a2,a2,0x3f
     728:	28c10020 	slti	at,a2,32
     72c:	1020000a 	beqz	at,758 <func_80ACA62C+0x4c>
     730:	00c02825 	move	a1,a2
     734:	0c000000 	jal	0 <EnOwl_Init>
     738:	afa6001c 	sw	a2,28(sp)
     73c:	8fa5001c 	lw	a1,28(sp)
     740:	0c000000 	jal	0 <EnOwl_Init>
     744:	8fa40024 	lw	a0,36(sp)
     748:	3c040000 	lui	a0,0x0
     74c:	24840000 	addiu	a0,a0,0
     750:	0c000000 	jal	0 <EnOwl_Init>
     754:	00402825 	move	a1,v0
     758:	0c000000 	jal	0 <EnOwl_Init>
     75c:	8fa40020 	lw	a0,32(sp)
     760:	8fbf0014 	lw	ra,20(sp)
     764:	27bd0020 	addiu	sp,sp,32
     768:	03e00008 	jr	ra
     76c:	00000000 	nop

00000770 <func_80ACA690>:
     770:	27bdffe8 	addiu	sp,sp,-24
     774:	afbf0014 	sw	ra,20(sp)
     778:	848e03ee 	lh	t6,1006(a0)
     77c:	31cf003f 	andi	t7,t6,0x3f
     780:	55e00004 	bnezl	t7,794 <func_80ACA690+0x24>
     784:	8fbf0014 	lw	ra,20(sp)
     788:	0c000000 	jal	0 <EnOwl_Init>
     78c:	00000000 	nop
     790:	8fbf0014 	lw	ra,20(sp)
     794:	27bd0018 	addiu	sp,sp,24
     798:	03e00008 	jr	ra
     79c:	00000000 	nop

000007a0 <func_80ACA6C0>:
     7a0:	27bdffe8 	addiu	sp,sp,-24
     7a4:	3c013f80 	lui	at,0x3f80
     7a8:	afbf0014 	sw	ra,20(sp)
     7ac:	44816000 	mtc1	at,$f12
     7b0:	0c000000 	jal	0 <EnOwl_Init>
     7b4:	afa40018 	sw	a0,24(sp)
     7b8:	44802000 	mtc1	zero,$f4
     7bc:	8fa40018 	lw	a0,24(sp)
     7c0:	4604003c 	c.lt.s	$f0,$f4
     7c4:	00000000 	nop
     7c8:	45020006 	bc1fl	7e4 <func_80ACA6C0+0x44>
     7cc:	949803fc 	lhu	t8,1020(a0)
     7d0:	948e03fc 	lhu	t6,1020(a0)
     7d4:	35cf0020 	ori	t7,t6,0x20
     7d8:	10000004 	b	7ec <func_80ACA6C0+0x4c>
     7dc:	a48f03fc 	sh	t7,1020(a0)
     7e0:	949803fc 	lhu	t8,1020(a0)
     7e4:	3319ffdf 	andi	t9,t8,0xffdf
     7e8:	a49903fc 	sh	t9,1020(a0)
     7ec:	8fbf0014 	lw	ra,20(sp)
     7f0:	27bd0018 	addiu	sp,sp,24
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_80ACA71C>:
     7fc:	27bdffe8 	addiu	sp,sp,-24
     800:	afbf0014 	sw	ra,20(sp)
     804:	0c000000 	jal	0 <EnOwl_Init>
     808:	afa40018 	sw	a0,24(sp)
     80c:	8fa40018 	lw	a0,24(sp)
     810:	24020004 	li	v0,4
     814:	948e03fc 	lhu	t6,1020(a0)
     818:	a48003f2 	sh	zero,1010(a0)
     81c:	849803f2 	lh	t8,1010(a0)
     820:	35cf0010 	ori	t7,t6,0x10
     824:	a48f03fc 	sh	t7,1020(a0)
     828:	a0820408 	sb	v0,1032(a0)
     82c:	a0800404 	sb	zero,1028(a0)
     830:	a0800406 	sb	zero,1030(a0)
     834:	a0820405 	sb	v0,1029(a0)
     838:	a0980407 	sb	t8,1031(a0)
     83c:	8fbf0014 	lw	ra,20(sp)
     840:	27bd0018 	addiu	sp,sp,24
     844:	03e00008 	jr	ra
     848:	00000000 	nop

0000084c <func_80ACA76C>:
     84c:	27bdffe0 	addiu	sp,sp,-32
     850:	afb00018 	sw	s0,24(sp)
     854:	00808025 	move	s0,a0
     858:	afbf001c 	sw	ra,28(sp)
     85c:	afa50024 	sw	a1,36(sp)
     860:	00a02025 	move	a0,a1
     864:	02002825 	move	a1,s0
     868:	0c000000 	jal	0 <EnOwl_Init>
     86c:	24060008 	li	a2,8
     870:	02002025 	move	a0,s0
     874:	0c000000 	jal	0 <EnOwl_Init>
     878:	8fa50024 	lw	a1,36(sp)
     87c:	1040000b 	beqz	v0,8ac <func_80ACA76C+0x60>
     880:	3c041100 	lui	a0,0x1100
     884:	0c000000 	jal	0 <EnOwl_Init>
     888:	348400ff 	ori	a0,a0,0xff
     88c:	02002025 	move	a0,s0
     890:	0c000000 	jal	0 <EnOwl_Init>
     894:	8fa50024 	lw	a1,36(sp)
     898:	8e0e0004 	lw	t6,4(s0)
     89c:	3c01fffe 	lui	at,0xfffe
     8a0:	3421ffff 	ori	at,at,0xffff
     8a4:	01c17824 	and	t7,t6,at
     8a8:	ae0f0004 	sw	t7,4(s0)
     8ac:	8fbf001c 	lw	ra,28(sp)
     8b0:	8fb00018 	lw	s0,24(sp)
     8b4:	27bd0020 	addiu	sp,sp,32
     8b8:	03e00008 	jr	ra
     8bc:	00000000 	nop

000008c0 <func_80ACA7E0>:
     8c0:	27bdffe0 	addiu	sp,sp,-32
     8c4:	afb00018 	sw	s0,24(sp)
     8c8:	00808025 	move	s0,a0
     8cc:	afbf001c 	sw	ra,28(sp)
     8d0:	afa50024 	sw	a1,36(sp)
     8d4:	00a02025 	move	a0,a1
     8d8:	02002825 	move	a1,s0
     8dc:	0c000000 	jal	0 <EnOwl_Init>
     8e0:	24060008 	li	a2,8
     8e4:	02002025 	move	a0,s0
     8e8:	0c000000 	jal	0 <EnOwl_Init>
     8ec:	8fa50024 	lw	a1,36(sp)
     8f0:	10400019 	beqz	v0,958 <func_80ACA7E0+0x98>
     8f4:	3c041100 	lui	a0,0x1100
     8f8:	0c000000 	jal	0 <EnOwl_Init>
     8fc:	348400ff 	ori	a0,a0,0xff
     900:	860e03ee 	lh	t6,1006(s0)
     904:	02002025 	move	a0,s0
     908:	31cf003f 	andi	t7,t6,0x3f
     90c:	55e00006 	bnezl	t7,928 <func_80ACA7E0+0x68>
     910:	961803fc 	lhu	t8,1020(s0)
     914:	0c000000 	jal	0 <EnOwl_Init>
     918:	8fa50024 	lw	a1,36(sp)
     91c:	1000000a 	b	948 <func_80ACA7E0+0x88>
     920:	8e090004 	lw	t1,4(s0)
     924:	961803fc 	lhu	t8,1020(s0)
     928:	02002025 	move	a0,s0
     92c:	3319fffd 	andi	t9,t8,0xfffd
     930:	0c000000 	jal	0 <EnOwl_Init>
     934:	a61903fc 	sh	t9,1020(s0)
     938:	3c080000 	lui	t0,0x0
     93c:	25080000 	addiu	t0,t0,0
     940:	ae08040c 	sw	t0,1036(s0)
     944:	8e090004 	lw	t1,4(s0)
     948:	3c01fffe 	lui	at,0xfffe
     94c:	3421ffff 	ori	at,at,0xffff
     950:	01215024 	and	t2,t1,at
     954:	ae0a0004 	sw	t2,4(s0)
     958:	8fbf001c 	lw	ra,28(sp)
     95c:	8fb00018 	lw	s0,24(sp)
     960:	27bd0020 	addiu	sp,sp,32
     964:	03e00008 	jr	ra
     968:	00000000 	nop

0000096c <func_80ACA88C>:
     96c:	27bdffe8 	addiu	sp,sp,-24
     970:	afbf0014 	sw	ra,20(sp)
     974:	afa40018 	sw	a0,24(sp)
     978:	24a420d8 	addiu	a0,a1,8408
     97c:	0c000000 	jal	0 <EnOwl_Init>
     980:	afa5001c 	sw	a1,28(sp)
     984:	24010004 	li	at,4
     988:	1441001b 	bne	v0,at,9f8 <func_80ACA88C+0x8c>
     98c:	8fa6001c 	lw	a2,28(sp)
     990:	00c02025 	move	a0,a2
     994:	0c000000 	jal	0 <EnOwl_Init>
     998:	afa6001c 	sw	a2,28(sp)
     99c:	10400016 	beqz	v0,9f8 <func_80ACA88C+0x8c>
     9a0:	8fa6001c 	lw	a2,28(sp)
     9a4:	3c020001 	lui	v0,0x1
     9a8:	00461021 	addu	v0,v0,a2
     9ac:	904204bd 	lbu	v0,1213(v0)
     9b0:	24010001 	li	at,1
     9b4:	00c02025 	move	a0,a2
     9b8:	10400005 	beqz	v0,9d0 <func_80ACA88C+0x64>
     9bc:	00000000 	nop
     9c0:	10410007 	beq	v0,at,9e0 <func_80ACA88C+0x74>
     9c4:	00c02025 	move	a0,a2
     9c8:	1000000c 	b	9fc <func_80ACA88C+0x90>
     9cc:	8fbf0014 	lw	ra,20(sp)
     9d0:	0c000000 	jal	0 <EnOwl_Init>
     9d4:	24052065 	li	a1,8293
     9d8:	10000008 	b	9fc <func_80ACA88C+0x90>
     9dc:	8fbf0014 	lw	ra,20(sp)
     9e0:	0c000000 	jal	0 <EnOwl_Init>
     9e4:	24052067 	li	a1,8295
     9e8:	8faf0018 	lw	t7,24(sp)
     9ec:	3c0e0000 	lui	t6,0x0
     9f0:	25ce0000 	addiu	t6,t6,0
     9f4:	adee040c 	sw	t6,1036(t7)
     9f8:	8fbf0014 	lw	ra,20(sp)
     9fc:	27bd0018 	addiu	sp,sp,24
     a00:	03e00008 	jr	ra
     a04:	00000000 	nop

00000a08 <func_80ACA928>:
     a08:	27bdffe0 	addiu	sp,sp,-32
     a0c:	afbf001c 	sw	ra,28(sp)
     a10:	afa40020 	sw	a0,32(sp)
     a14:	0c000000 	jal	0 <EnOwl_Init>
     a18:	afa50024 	sw	a1,36(sp)
     a1c:	8fa40020 	lw	a0,32(sp)
     a20:	8fa50024 	lw	a1,36(sp)
     a24:	24062064 	li	a2,8292
     a28:	3c0743b4 	lui	a3,0x43b4
     a2c:	0c000000 	jal	0 <EnOwl_Init>
     a30:	afa00010 	sw	zero,16(sp)
     a34:	5040000d 	beqzl	v0,a6c <func_80ACA928+0x64>
     a38:	8fbf001c 	lw	ra,28(sp)
     a3c:	0c000000 	jal	0 <EnOwl_Init>
     a40:	2404005a 	li	a0,90
     a44:	8faf0020 	lw	t7,32(sp)
     a48:	3c0e0000 	lui	t6,0x0
     a4c:	3c020000 	lui	v0,0x0
     a50:	25ce0000 	addiu	t6,t6,0
     a54:	24420000 	addiu	v0,v0,0
     a58:	adee040c 	sw	t6,1036(t7)
     a5c:	94580ee0 	lhu	t8,3808(v0)
     a60:	37198000 	ori	t9,t8,0x8000
     a64:	a4590ee0 	sh	t9,3808(v0)
     a68:	8fbf001c 	lw	ra,28(sp)
     a6c:	27bd0020 	addiu	sp,sp,32
     a70:	03e00008 	jr	ra
     a74:	00000000 	nop

00000a78 <func_80ACA998>:
     a78:	27bdffe0 	addiu	sp,sp,-32
     a7c:	afb00018 	sw	s0,24(sp)
     a80:	00808025 	move	s0,a0
     a84:	afbf001c 	sw	ra,28(sp)
     a88:	24a420d8 	addiu	a0,a1,8408
     a8c:	0c000000 	jal	0 <EnOwl_Init>
     a90:	afa50024 	sw	a1,36(sp)
     a94:	24010004 	li	at,4
     a98:	14410021 	bne	v0,at,b20 <func_80ACA998+0xa8>
     a9c:	8fa60024 	lw	a2,36(sp)
     aa0:	00c02025 	move	a0,a2
     aa4:	0c000000 	jal	0 <EnOwl_Init>
     aa8:	afa60024 	sw	a2,36(sp)
     aac:	1040001c 	beqz	v0,b20 <func_80ACA998+0xa8>
     ab0:	8fa60024 	lw	a2,36(sp)
     ab4:	3c020001 	lui	v0,0x1
     ab8:	00461021 	addu	v0,v0,a2
     abc:	904204bd 	lbu	v0,1213(v0)
     ac0:	24010001 	li	at,1
     ac4:	00c02025 	move	a0,a2
     ac8:	10400005 	beqz	v0,ae0 <func_80ACA998+0x68>
     acc:	00000000 	nop
     ad0:	10410009 	beq	v0,at,af8 <func_80ACA998+0x80>
     ad4:	00c02025 	move	a0,a2
     ad8:	1000000d 	b	b10 <func_80ACA998+0x98>
     adc:	961803fc 	lhu	t8,1020(s0)
     ae0:	0c000000 	jal	0 <EnOwl_Init>
     ae4:	24052069 	li	a1,8297
     ae8:	3c0e0000 	lui	t6,0x0
     aec:	25ce0000 	addiu	t6,t6,0
     af0:	10000006 	b	b0c <func_80ACA998+0x94>
     af4:	ae0e040c 	sw	t6,1036(s0)
     af8:	0c000000 	jal	0 <EnOwl_Init>
     afc:	2405206b 	li	a1,8299
     b00:	3c0f0000 	lui	t7,0x0
     b04:	25ef0000 	addiu	t7,t7,0
     b08:	ae0f040c 	sw	t7,1036(s0)
     b0c:	961803fc 	lhu	t8,1020(s0)
     b10:	02002025 	move	a0,s0
     b14:	3319fffd 	andi	t9,t8,0xfffd
     b18:	0c000000 	jal	0 <EnOwl_Init>
     b1c:	a61903fc 	sh	t9,1020(s0)
     b20:	8fbf001c 	lw	ra,28(sp)
     b24:	8fb00018 	lw	s0,24(sp)
     b28:	27bd0020 	addiu	sp,sp,32
     b2c:	03e00008 	jr	ra
     b30:	00000000 	nop

00000b34 <func_80ACAA54>:
     b34:	27bdffe8 	addiu	sp,sp,-24
     b38:	afbf0014 	sw	ra,20(sp)
     b3c:	afa40018 	sw	a0,24(sp)
     b40:	afa5001c 	sw	a1,28(sp)
     b44:	0c000000 	jal	0 <EnOwl_Init>
     b48:	24a420d8 	addiu	a0,a1,8408
     b4c:	24010005 	li	at,5
     b50:	54410010 	bnel	v0,at,b94 <func_80ACAA54+0x60>
     b54:	8fbf0014 	lw	ra,20(sp)
     b58:	0c000000 	jal	0 <EnOwl_Init>
     b5c:	8fa4001c 	lw	a0,28(sp)
     b60:	1040000b 	beqz	v0,b90 <func_80ACAA54+0x5c>
     b64:	8fa4001c 	lw	a0,28(sp)
     b68:	0c000000 	jal	0 <EnOwl_Init>
     b6c:	2405206a 	li	a1,8298
     b70:	8fa40018 	lw	a0,24(sp)
     b74:	3c0e0000 	lui	t6,0x0
     b78:	25ce0000 	addiu	t6,t6,0
     b7c:	948f03fc 	lhu	t7,1020(a0)
     b80:	ac8e040c 	sw	t6,1036(a0)
     b84:	35f80002 	ori	t8,t7,0x2
     b88:	0c000000 	jal	0 <EnOwl_Init>
     b8c:	a49803fc 	sh	t8,1020(a0)
     b90:	8fbf0014 	lw	ra,20(sp)
     b94:	27bd0018 	addiu	sp,sp,24
     b98:	03e00008 	jr	ra
     b9c:	00000000 	nop

00000ba0 <func_80ACAAC0>:
     ba0:	27bdffe8 	addiu	sp,sp,-24
     ba4:	afbf0014 	sw	ra,20(sp)
     ba8:	afa40018 	sw	a0,24(sp)
     bac:	afa5001c 	sw	a1,28(sp)
     bb0:	0c000000 	jal	0 <EnOwl_Init>
     bb4:	24a420d8 	addiu	a0,a1,8408
     bb8:	24010005 	li	at,5
     bbc:	54410010 	bnel	v0,at,c00 <func_80ACAAC0+0x60>
     bc0:	8fbf0014 	lw	ra,20(sp)
     bc4:	0c000000 	jal	0 <EnOwl_Init>
     bc8:	8fa4001c 	lw	a0,28(sp)
     bcc:	1040000b 	beqz	v0,bfc <func_80ACAAC0+0x5c>
     bd0:	8fa4001c 	lw	a0,28(sp)
     bd4:	0c000000 	jal	0 <EnOwl_Init>
     bd8:	24052069 	li	a1,8297
     bdc:	8fa40018 	lw	a0,24(sp)
     be0:	3c0e0000 	lui	t6,0x0
     be4:	25ce0000 	addiu	t6,t6,0
     be8:	948f03fc 	lhu	t7,1020(a0)
     bec:	ac8e040c 	sw	t6,1036(a0)
     bf0:	31f8fffd 	andi	t8,t7,0xfffd
     bf4:	0c000000 	jal	0 <EnOwl_Init>
     bf8:	a49803fc 	sh	t8,1020(a0)
     bfc:	8fbf0014 	lw	ra,20(sp)
     c00:	27bd0018 	addiu	sp,sp,24
     c04:	03e00008 	jr	ra
     c08:	00000000 	nop

00000c0c <func_80ACAB2C>:
     c0c:	27bdffe0 	addiu	sp,sp,-32
     c10:	afbf001c 	sw	ra,28(sp)
     c14:	afa40020 	sw	a0,32(sp)
     c18:	0c000000 	jal	0 <EnOwl_Init>
     c1c:	afa50024 	sw	a1,36(sp)
     c20:	8fa40020 	lw	a0,32(sp)
     c24:	8fa50024 	lw	a1,36(sp)
     c28:	24062068 	li	a2,8296
     c2c:	3c074407 	lui	a3,0x4407
     c30:	0c000000 	jal	0 <EnOwl_Init>
     c34:	afa00010 	sw	zero,16(sp)
     c38:	50400008 	beqzl	v0,c5c <func_80ACAB2C+0x50>
     c3c:	8fbf001c 	lw	ra,28(sp)
     c40:	0c000000 	jal	0 <EnOwl_Init>
     c44:	2404005a 	li	a0,90
     c48:	8faf0020 	lw	t7,32(sp)
     c4c:	3c0e0000 	lui	t6,0x0
     c50:	25ce0000 	addiu	t6,t6,0
     c54:	adee040c 	sw	t6,1036(t7)
     c58:	8fbf001c 	lw	ra,28(sp)
     c5c:	27bd0020 	addiu	sp,sp,32
     c60:	03e00008 	jr	ra
     c64:	00000000 	nop

00000c68 <func_80ACAB88>:
     c68:	27bdffe0 	addiu	sp,sp,-32
     c6c:	afb00018 	sw	s0,24(sp)
     c70:	00808025 	move	s0,a0
     c74:	afbf001c 	sw	ra,28(sp)
     c78:	24a420d8 	addiu	a0,a1,8408
     c7c:	0c000000 	jal	0 <EnOwl_Init>
     c80:	afa50024 	sw	a1,36(sp)
     c84:	24010004 	li	at,4
     c88:	1441002b 	bne	v0,at,d38 <func_80ACAB88+0xd0>
     c8c:	8fa60024 	lw	a2,36(sp)
     c90:	00c02025 	move	a0,a2
     c94:	0c000000 	jal	0 <EnOwl_Init>
     c98:	afa60024 	sw	a2,36(sp)
     c9c:	10400026 	beqz	v0,d38 <func_80ACAB88+0xd0>
     ca0:	8fa60024 	lw	a2,36(sp)
     ca4:	3c020001 	lui	v0,0x1
     ca8:	00461021 	addu	v0,v0,a2
     cac:	904204bd 	lbu	v0,1213(v0)
     cb0:	24010001 	li	at,1
     cb4:	3c0e0000 	lui	t6,0x0
     cb8:	10400005 	beqz	v0,cd0 <func_80ACAB88+0x68>
     cbc:	00000000 	nop
     cc0:	10410013 	beq	v0,at,d10 <func_80ACAB88+0xa8>
     cc4:	00c02025 	move	a0,a2
     cc8:	10000017 	b	d28 <func_80ACAB88+0xc0>
     ccc:	960803fc 	lhu	t0,1020(s0)
     cd0:	95ce0edc 	lhu	t6,3804(t6)
     cd4:	2405206d 	li	a1,8301
     cd8:	00c02025 	move	a0,a2
     cdc:	31cf0001 	andi	t7,t6,0x1
     ce0:	11e00005 	beqz	t7,cf8 <func_80ACAB88+0x90>
     ce4:	00000000 	nop
     ce8:	0c000000 	jal	0 <EnOwl_Init>
     cec:	00c02025 	move	a0,a2
     cf0:	10000003 	b	d00 <func_80ACAB88+0x98>
     cf4:	00000000 	nop
     cf8:	0c000000 	jal	0 <EnOwl_Init>
     cfc:	2405206c 	li	a1,8300
     d00:	3c180000 	lui	t8,0x0
     d04:	27180000 	addiu	t8,t8,0
     d08:	10000006 	b	d24 <func_80ACAB88+0xbc>
     d0c:	ae18040c 	sw	t8,1036(s0)
     d10:	0c000000 	jal	0 <EnOwl_Init>
     d14:	2405206e 	li	a1,8302
     d18:	3c190000 	lui	t9,0x0
     d1c:	27390000 	addiu	t9,t9,0
     d20:	ae19040c 	sw	t9,1036(s0)
     d24:	960803fc 	lhu	t0,1020(s0)
     d28:	02002025 	move	a0,s0
     d2c:	3109fffd 	andi	t1,t0,0xfffd
     d30:	0c000000 	jal	0 <EnOwl_Init>
     d34:	a60903fc 	sh	t1,1020(s0)
     d38:	8fbf001c 	lw	ra,28(sp)
     d3c:	8fb00018 	lw	s0,24(sp)
     d40:	27bd0020 	addiu	sp,sp,32
     d44:	03e00008 	jr	ra
     d48:	00000000 	nop

00000d4c <func_80ACAC6C>:
     d4c:	27bdffe8 	addiu	sp,sp,-24
     d50:	afbf0014 	sw	ra,20(sp)
     d54:	afa40018 	sw	a0,24(sp)
     d58:	afa5001c 	sw	a1,28(sp)
     d5c:	0c000000 	jal	0 <EnOwl_Init>
     d60:	24a420d8 	addiu	a0,a1,8408
     d64:	24010005 	li	at,5
     d68:	54410010 	bnel	v0,at,dac <func_80ACAC6C+0x60>
     d6c:	8fbf0014 	lw	ra,20(sp)
     d70:	0c000000 	jal	0 <EnOwl_Init>
     d74:	8fa4001c 	lw	a0,28(sp)
     d78:	1040000b 	beqz	v0,da8 <func_80ACAC6C+0x5c>
     d7c:	8fa4001c 	lw	a0,28(sp)
     d80:	0c000000 	jal	0 <EnOwl_Init>
     d84:	2405206a 	li	a1,8298
     d88:	8fa40018 	lw	a0,24(sp)
     d8c:	3c0e0000 	lui	t6,0x0
     d90:	25ce0000 	addiu	t6,t6,0
     d94:	948f03fc 	lhu	t7,1020(a0)
     d98:	ac8e040c 	sw	t6,1036(a0)
     d9c:	35f80002 	ori	t8,t7,0x2
     da0:	0c000000 	jal	0 <EnOwl_Init>
     da4:	a49803fc 	sh	t8,1020(a0)
     da8:	8fbf0014 	lw	ra,20(sp)
     dac:	27bd0018 	addiu	sp,sp,24
     db0:	03e00008 	jr	ra
     db4:	00000000 	nop

00000db8 <func_80ACACD8>:
     db8:	27bdffe0 	addiu	sp,sp,-32
     dbc:	afbf001c 	sw	ra,28(sp)
     dc0:	afa40020 	sw	a0,32(sp)
     dc4:	0c000000 	jal	0 <EnOwl_Init>
     dc8:	afa50024 	sw	a1,36(sp)
     dcc:	8fa40020 	lw	a0,32(sp)
     dd0:	8fa50024 	lw	a1,36(sp)
     dd4:	2406206c 	li	a2,8300
     dd8:	3c0743f0 	lui	a3,0x43f0
     ddc:	0c000000 	jal	0 <EnOwl_Init>
     de0:	afa00010 	sw	zero,16(sp)
     de4:	50400008 	beqzl	v0,e08 <func_80ACACD8+0x50>
     de8:	8fbf001c 	lw	ra,28(sp)
     dec:	0c000000 	jal	0 <EnOwl_Init>
     df0:	2404005a 	li	a0,90
     df4:	8faf0020 	lw	t7,32(sp)
     df8:	3c0e0000 	lui	t6,0x0
     dfc:	25ce0000 	addiu	t6,t6,0
     e00:	adee040c 	sw	t6,1036(t7)
     e04:	8fbf001c 	lw	ra,28(sp)
     e08:	27bd0020 	addiu	sp,sp,32
     e0c:	03e00008 	jr	ra
     e10:	00000000 	nop

00000e14 <func_80ACAD34>:
     e14:	27bdffe0 	addiu	sp,sp,-32
     e18:	afb00018 	sw	s0,24(sp)
     e1c:	00808025 	move	s0,a0
     e20:	afbf001c 	sw	ra,28(sp)
     e24:	24a420d8 	addiu	a0,a1,8408
     e28:	0c000000 	jal	0 <EnOwl_Init>
     e2c:	afa50024 	sw	a1,36(sp)
     e30:	24010004 	li	at,4
     e34:	14410021 	bne	v0,at,ebc <func_80ACAD34+0xa8>
     e38:	8fa60024 	lw	a2,36(sp)
     e3c:	00c02025 	move	a0,a2
     e40:	0c000000 	jal	0 <EnOwl_Init>
     e44:	afa60024 	sw	a2,36(sp)
     e48:	1040001c 	beqz	v0,ebc <func_80ACAD34+0xa8>
     e4c:	8fa60024 	lw	a2,36(sp)
     e50:	3c020001 	lui	v0,0x1
     e54:	00461021 	addu	v0,v0,a2
     e58:	904204bd 	lbu	v0,1213(v0)
     e5c:	24010001 	li	at,1
     e60:	00c02025 	move	a0,a2
     e64:	10400005 	beqz	v0,e7c <func_80ACAD34+0x68>
     e68:	00000000 	nop
     e6c:	10410009 	beq	v0,at,e94 <func_80ACAD34+0x80>
     e70:	00c02025 	move	a0,a2
     e74:	1000000d 	b	eac <func_80ACAD34+0x98>
     e78:	961803fc 	lhu	t8,1020(s0)
     e7c:	0c000000 	jal	0 <EnOwl_Init>
     e80:	2405206f 	li	a1,8303
     e84:	3c0e0000 	lui	t6,0x0
     e88:	25ce0000 	addiu	t6,t6,0
     e8c:	10000006 	b	ea8 <func_80ACAD34+0x94>
     e90:	ae0e040c 	sw	t6,1036(s0)
     e94:	0c000000 	jal	0 <EnOwl_Init>
     e98:	24052070 	li	a1,8304
     e9c:	3c0f0000 	lui	t7,0x0
     ea0:	25ef0000 	addiu	t7,t7,0
     ea4:	ae0f040c 	sw	t7,1036(s0)
     ea8:	961803fc 	lhu	t8,1020(s0)
     eac:	02002025 	move	a0,s0
     eb0:	3319fffd 	andi	t9,t8,0xfffd
     eb4:	0c000000 	jal	0 <EnOwl_Init>
     eb8:	a61903fc 	sh	t9,1020(s0)
     ebc:	8fbf001c 	lw	ra,28(sp)
     ec0:	8fb00018 	lw	s0,24(sp)
     ec4:	27bd0020 	addiu	sp,sp,32
     ec8:	03e00008 	jr	ra
     ecc:	00000000 	nop

00000ed0 <func_80ACADF0>:
     ed0:	27bdffe8 	addiu	sp,sp,-24
     ed4:	afbf0014 	sw	ra,20(sp)
     ed8:	afa40018 	sw	a0,24(sp)
     edc:	afa5001c 	sw	a1,28(sp)
     ee0:	0c000000 	jal	0 <EnOwl_Init>
     ee4:	24a420d8 	addiu	a0,a1,8408
     ee8:	24010005 	li	at,5
     eec:	54410010 	bnel	v0,at,f30 <func_80ACADF0+0x60>
     ef0:	8fbf0014 	lw	ra,20(sp)
     ef4:	0c000000 	jal	0 <EnOwl_Init>
     ef8:	8fa4001c 	lw	a0,28(sp)
     efc:	1040000b 	beqz	v0,f2c <func_80ACADF0+0x5c>
     f00:	8fa4001c 	lw	a0,28(sp)
     f04:	0c000000 	jal	0 <EnOwl_Init>
     f08:	2405206a 	li	a1,8298
     f0c:	8fa40018 	lw	a0,24(sp)
     f10:	3c0e0000 	lui	t6,0x0
     f14:	25ce0000 	addiu	t6,t6,0
     f18:	948f03fc 	lhu	t7,1020(a0)
     f1c:	ac8e040c 	sw	t6,1036(a0)
     f20:	35f80002 	ori	t8,t7,0x2
     f24:	0c000000 	jal	0 <EnOwl_Init>
     f28:	a49803fc 	sh	t8,1020(a0)
     f2c:	8fbf0014 	lw	ra,20(sp)
     f30:	27bd0018 	addiu	sp,sp,24
     f34:	03e00008 	jr	ra
     f38:	00000000 	nop

00000f3c <func_80ACAE5C>:
     f3c:	27bdffe0 	addiu	sp,sp,-32
     f40:	afbf001c 	sw	ra,28(sp)
     f44:	afa40020 	sw	a0,32(sp)
     f48:	0c000000 	jal	0 <EnOwl_Init>
     f4c:	afa50024 	sw	a1,36(sp)
     f50:	8fa40020 	lw	a0,32(sp)
     f54:	8fa50024 	lw	a1,36(sp)
     f58:	2406206f 	li	a2,8303
     f5c:	3c0743b4 	lui	a3,0x43b4
     f60:	0c000000 	jal	0 <EnOwl_Init>
     f64:	afa00010 	sw	zero,16(sp)
     f68:	50400008 	beqzl	v0,f8c <func_80ACAE5C+0x50>
     f6c:	8fbf001c 	lw	ra,28(sp)
     f70:	0c000000 	jal	0 <EnOwl_Init>
     f74:	2404005a 	li	a0,90
     f78:	8faf0020 	lw	t7,32(sp)
     f7c:	3c0e0000 	lui	t6,0x0
     f80:	25ce0000 	addiu	t6,t6,0
     f84:	adee040c 	sw	t6,1036(t7)
     f88:	8fbf001c 	lw	ra,28(sp)
     f8c:	27bd0020 	addiu	sp,sp,32
     f90:	03e00008 	jr	ra
     f94:	00000000 	nop

00000f98 <func_80ACAEB8>:
     f98:	27bdffe0 	addiu	sp,sp,-32
     f9c:	afb00018 	sw	s0,24(sp)
     fa0:	00808025 	move	s0,a0
     fa4:	afbf001c 	sw	ra,28(sp)
     fa8:	24a420d8 	addiu	a0,a1,8408
     fac:	0c000000 	jal	0 <EnOwl_Init>
     fb0:	afa50024 	sw	a1,36(sp)
     fb4:	24010004 	li	at,4
     fb8:	14410021 	bne	v0,at,1040 <func_80ACAEB8+0xa8>
     fbc:	8fa60024 	lw	a2,36(sp)
     fc0:	00c02025 	move	a0,a2
     fc4:	0c000000 	jal	0 <EnOwl_Init>
     fc8:	afa60024 	sw	a2,36(sp)
     fcc:	1040001c 	beqz	v0,1040 <func_80ACAEB8+0xa8>
     fd0:	8fa60024 	lw	a2,36(sp)
     fd4:	3c020001 	lui	v0,0x1
     fd8:	00461021 	addu	v0,v0,a2
     fdc:	904204bd 	lbu	v0,1213(v0)
     fe0:	24010001 	li	at,1
     fe4:	00c02025 	move	a0,a2
     fe8:	10400005 	beqz	v0,1000 <func_80ACAEB8+0x68>
     fec:	00000000 	nop
     ff0:	10410009 	beq	v0,at,1018 <func_80ACAEB8+0x80>
     ff4:	00c02025 	move	a0,a2
     ff8:	1000000d 	b	1030 <func_80ACAEB8+0x98>
     ffc:	961803fc 	lhu	t8,1020(s0)
    1000:	0c000000 	jal	0 <EnOwl_Init>
    1004:	24052071 	li	a1,8305
    1008:	3c0e0000 	lui	t6,0x0
    100c:	25ce0000 	addiu	t6,t6,0
    1010:	10000006 	b	102c <func_80ACAEB8+0x94>
    1014:	ae0e040c 	sw	t6,1036(s0)
    1018:	0c000000 	jal	0 <EnOwl_Init>
    101c:	24052072 	li	a1,8306
    1020:	3c0f0000 	lui	t7,0x0
    1024:	25ef0000 	addiu	t7,t7,0
    1028:	ae0f040c 	sw	t7,1036(s0)
    102c:	961803fc 	lhu	t8,1020(s0)
    1030:	02002025 	move	a0,s0
    1034:	3319fffd 	andi	t9,t8,0xfffd
    1038:	0c000000 	jal	0 <EnOwl_Init>
    103c:	a61903fc 	sh	t9,1020(s0)
    1040:	8fbf001c 	lw	ra,28(sp)
    1044:	8fb00018 	lw	s0,24(sp)
    1048:	27bd0020 	addiu	sp,sp,32
    104c:	03e00008 	jr	ra
    1050:	00000000 	nop

00001054 <func_80ACAF74>:
    1054:	27bdffe8 	addiu	sp,sp,-24
    1058:	afbf0014 	sw	ra,20(sp)
    105c:	afa40018 	sw	a0,24(sp)
    1060:	afa5001c 	sw	a1,28(sp)
    1064:	0c000000 	jal	0 <EnOwl_Init>
    1068:	24a420d8 	addiu	a0,a1,8408
    106c:	24010005 	li	at,5
    1070:	54410010 	bnel	v0,at,10b4 <func_80ACAF74+0x60>
    1074:	8fbf0014 	lw	ra,20(sp)
    1078:	0c000000 	jal	0 <EnOwl_Init>
    107c:	8fa4001c 	lw	a0,28(sp)
    1080:	1040000b 	beqz	v0,10b0 <func_80ACAF74+0x5c>
    1084:	8fa4001c 	lw	a0,28(sp)
    1088:	0c000000 	jal	0 <EnOwl_Init>
    108c:	2405206a 	li	a1,8298
    1090:	8fa40018 	lw	a0,24(sp)
    1094:	3c0e0000 	lui	t6,0x0
    1098:	25ce0000 	addiu	t6,t6,0
    109c:	948f03fc 	lhu	t7,1020(a0)
    10a0:	ac8e040c 	sw	t6,1036(a0)
    10a4:	35f80002 	ori	t8,t7,0x2
    10a8:	0c000000 	jal	0 <EnOwl_Init>
    10ac:	a49803fc 	sh	t8,1020(a0)
    10b0:	8fbf0014 	lw	ra,20(sp)
    10b4:	27bd0018 	addiu	sp,sp,24
    10b8:	03e00008 	jr	ra
    10bc:	00000000 	nop

000010c0 <func_80ACAFE0>:
    10c0:	27bdffe0 	addiu	sp,sp,-32
    10c4:	afbf001c 	sw	ra,28(sp)
    10c8:	afa40020 	sw	a0,32(sp)
    10cc:	0c000000 	jal	0 <EnOwl_Init>
    10d0:	afa50024 	sw	a1,36(sp)
    10d4:	8fa40020 	lw	a0,32(sp)
    10d8:	8fa50024 	lw	a1,36(sp)
    10dc:	24062071 	li	a2,8305
    10e0:	3c0743b4 	lui	a3,0x43b4
    10e4:	0c000000 	jal	0 <EnOwl_Init>
    10e8:	afa00010 	sw	zero,16(sp)
    10ec:	50400008 	beqzl	v0,1110 <func_80ACAFE0+0x50>
    10f0:	8fbf001c 	lw	ra,28(sp)
    10f4:	0c000000 	jal	0 <EnOwl_Init>
    10f8:	2404005a 	li	a0,90
    10fc:	8faf0020 	lw	t7,32(sp)
    1100:	3c0e0000 	lui	t6,0x0
    1104:	25ce0000 	addiu	t6,t6,0
    1108:	adee040c 	sw	t6,1036(t7)
    110c:	8fbf001c 	lw	ra,28(sp)
    1110:	27bd0020 	addiu	sp,sp,32
    1114:	03e00008 	jr	ra
    1118:	00000000 	nop

0000111c <func_80ACB03C>:
    111c:	27bdffe0 	addiu	sp,sp,-32
    1120:	afb00018 	sw	s0,24(sp)
    1124:	00808025 	move	s0,a0
    1128:	afbf001c 	sw	ra,28(sp)
    112c:	afa50024 	sw	a1,36(sp)
    1130:	00a02025 	move	a0,a1
    1134:	02002825 	move	a1,s0
    1138:	0c000000 	jal	0 <EnOwl_Init>
    113c:	24060008 	li	a2,8
    1140:	02002025 	move	a0,s0
    1144:	0c000000 	jal	0 <EnOwl_Init>
    1148:	8fa50024 	lw	a1,36(sp)
    114c:	1040000b 	beqz	v0,117c <func_80ACB03C+0x60>
    1150:	3c041100 	lui	a0,0x1100
    1154:	0c000000 	jal	0 <EnOwl_Init>
    1158:	348400ff 	ori	a0,a0,0xff
    115c:	02002025 	move	a0,s0
    1160:	0c000000 	jal	0 <EnOwl_Init>
    1164:	8fa50024 	lw	a1,36(sp)
    1168:	8e0e0004 	lw	t6,4(s0)
    116c:	3c01fffe 	lui	at,0xfffe
    1170:	3421ffff 	ori	at,at,0xffff
    1174:	01c17824 	and	t7,t6,at
    1178:	ae0f0004 	sw	t7,4(s0)
    117c:	8fbf001c 	lw	ra,28(sp)
    1180:	8fb00018 	lw	s0,24(sp)
    1184:	27bd0020 	addiu	sp,sp,32
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop

00001190 <func_80ACB0B0>:
    1190:	27bdffe0 	addiu	sp,sp,-32
    1194:	afbf001c 	sw	ra,28(sp)
    1198:	afa40020 	sw	a0,32(sp)
    119c:	0c000000 	jal	0 <EnOwl_Init>
    11a0:	afa50024 	sw	a1,36(sp)
    11a4:	3c030000 	lui	v1,0x0
    11a8:	24630000 	addiu	v1,v1,0
    11ac:	3c020000 	lui	v0,0x0
    11b0:	8c4200a4 	lw	v0,164(v0)
    11b4:	8c6e0038 	lw	t6,56(v1)
    11b8:	8fa40020 	lw	a0,32(sp)
    11bc:	8fa50024 	lw	a1,36(sp)
    11c0:	01c27824 	and	t7,t6,v0
    11c4:	11e00009 	beqz	t7,11ec <func_80ACB0B0+0x5c>
    11c8:	3c0743b4 	lui	a3,0x43b4
    11cc:	8c780030 	lw	t8,48(v1)
    11d0:	0302c824 	and	t9,t8,v0
    11d4:	13200003 	beqz	t9,11e4 <func_80ACB0B0+0x54>
    11d8:	00000000 	nop
    11dc:	10000004 	b	11f0 <func_80ACB0B0+0x60>
    11e0:	24064031 	li	a2,16433
    11e4:	10000002 	b	11f0 <func_80ACB0B0+0x60>
    11e8:	24064017 	li	a2,16407
    11ec:	24064002 	li	a2,16386
    11f0:	0c000000 	jal	0 <EnOwl_Init>
    11f4:	afa00010 	sw	zero,16(sp)
    11f8:	50400008 	beqzl	v0,121c <func_80ACB0B0+0x8c>
    11fc:	8fbf001c 	lw	ra,28(sp)
    1200:	0c000000 	jal	0 <EnOwl_Init>
    1204:	2404005a 	li	a0,90
    1208:	8fa90020 	lw	t1,32(sp)
    120c:	3c080000 	lui	t0,0x0
    1210:	25080000 	addiu	t0,t0,0
    1214:	ad28040c 	sw	t0,1036(t1)
    1218:	8fbf001c 	lw	ra,28(sp)
    121c:	27bd0020 	addiu	sp,sp,32
    1220:	03e00008 	jr	ra
    1224:	00000000 	nop

00001228 <func_80ACB148>:
    1228:	27bdffe8 	addiu	sp,sp,-24
    122c:	afbf0014 	sw	ra,20(sp)
    1230:	afa40018 	sw	a0,24(sp)
    1234:	0c000000 	jal	0 <EnOwl_Init>
    1238:	afa5001c 	sw	a1,28(sp)
    123c:	1040000c 	beqz	v0,1270 <func_80ACB148+0x48>
    1240:	3c041100 	lui	a0,0x1100
    1244:	0c000000 	jal	0 <EnOwl_Init>
    1248:	348400ff 	ori	a0,a0,0xff
    124c:	0c000000 	jal	0 <EnOwl_Init>
    1250:	8fa40018 	lw	a0,24(sp)
    1254:	8faf0018 	lw	t7,24(sp)
    1258:	3c0e0000 	lui	t6,0x0
    125c:	25ce0000 	addiu	t6,t6,0
    1260:	adee040c 	sw	t6,1036(t7)
    1264:	8fa4001c 	lw	a0,28(sp)
    1268:	0c000000 	jal	0 <EnOwl_Init>
    126c:	24050023 	li	a1,35
    1270:	8fbf0014 	lw	ra,20(sp)
    1274:	27bd0018 	addiu	sp,sp,24
    1278:	03e00008 	jr	ra
    127c:	00000000 	nop

00001280 <func_80ACB1A0>:
    1280:	3c0e0000 	lui	t6,0x0
    1284:	95ce0f2a 	lhu	t6,3882(t6)
    1288:	27bdffe0 	addiu	sp,sp,-32
    128c:	afbf0014 	sw	ra,20(sp)
    1290:	31cf0020 	andi	t7,t6,0x20
    1294:	afa40020 	sw	a0,32(sp)
    1298:	11e00003 	beqz	t7,12a8 <func_80ACB1A0+0x28>
    129c:	afa50024 	sw	a1,36(sp)
    12a0:	10000002 	b	12ac <func_80ACB1A0+0x2c>
    12a4:	24064004 	li	a2,16388
    12a8:	24064003 	li	a2,16387
    12ac:	8fa40020 	lw	a0,32(sp)
    12b0:	8fa50024 	lw	a1,36(sp)
    12b4:	0c000000 	jal	0 <EnOwl_Init>
    12b8:	a7a6001e 	sh	a2,30(sp)
    12bc:	97a6001e 	lhu	a2,30(sp)
    12c0:	8fa40020 	lw	a0,32(sp)
    12c4:	0c000000 	jal	0 <EnOwl_Init>
    12c8:	8fa50024 	lw	a1,36(sp)
    12cc:	1040000b 	beqz	v0,12fc <func_80ACB1A0+0x7c>
    12d0:	3c020000 	lui	v0,0x0
    12d4:	24420000 	addiu	v0,v0,0
    12d8:	94580f2a 	lhu	t8,3882(v0)
    12dc:	2404005a 	li	a0,90
    12e0:	37190020 	ori	t9,t8,0x20
    12e4:	0c000000 	jal	0 <EnOwl_Init>
    12e8:	a4590f2a 	sh	t9,3882(v0)
    12ec:	8fa90020 	lw	t1,32(sp)
    12f0:	3c080000 	lui	t0,0x0
    12f4:	25080000 	addiu	t0,t0,0
    12f8:	ad28040c 	sw	t0,1036(t1)
    12fc:	8fbf0014 	lw	ra,20(sp)
    1300:	27bd0020 	addiu	sp,sp,32
    1304:	03e00008 	jr	ra
    1308:	00000000 	nop

0000130c <func_80ACB22C>:
    130c:	27bdffe8 	addiu	sp,sp,-24
    1310:	afbf0014 	sw	ra,20(sp)
    1314:	0c000000 	jal	0 <EnOwl_Init>
    1318:	afa40018 	sw	a0,24(sp)
    131c:	10400009 	beqz	v0,1344 <func_80ACB22C+0x38>
    1320:	3c041100 	lui	a0,0x1100
    1324:	0c000000 	jal	0 <EnOwl_Init>
    1328:	348400ff 	ori	a0,a0,0xff
    132c:	0c000000 	jal	0 <EnOwl_Init>
    1330:	8fa40018 	lw	a0,24(sp)
    1334:	8faf0018 	lw	t7,24(sp)
    1338:	3c0e0000 	lui	t6,0x0
    133c:	25ce0000 	addiu	t6,t6,0
    1340:	adee040c 	sw	t6,1036(t7)
    1344:	8fbf0014 	lw	ra,20(sp)
    1348:	27bd0018 	addiu	sp,sp,24
    134c:	03e00008 	jr	ra
    1350:	00000000 	nop

00001354 <func_80ACB274>:
    1354:	27bdffe8 	addiu	sp,sp,-24
    1358:	afbf0014 	sw	ra,20(sp)
    135c:	0c000000 	jal	0 <EnOwl_Init>
    1360:	afa40018 	sw	a0,24(sp)
    1364:	10400007 	beqz	v0,1384 <func_80ACB274+0x30>
    1368:	3c041100 	lui	a0,0x1100
    136c:	0c000000 	jal	0 <EnOwl_Init>
    1370:	348400ff 	ori	a0,a0,0xff
    1374:	8faf0018 	lw	t7,24(sp)
    1378:	3c0e0000 	lui	t6,0x0
    137c:	25ce0000 	addiu	t6,t6,0
    1380:	adee040c 	sw	t6,1036(t7)
    1384:	8fbf0014 	lw	ra,20(sp)
    1388:	27bd0018 	addiu	sp,sp,24
    138c:	03e00008 	jr	ra
    1390:	00000000 	nop

00001394 <func_80ACB2B4>:
    1394:	27bdffe0 	addiu	sp,sp,-32
    1398:	afbf001c 	sw	ra,28(sp)
    139c:	afb00018 	sw	s0,24(sp)
    13a0:	00808025 	move	s0,a0
    13a4:	0c000000 	jal	0 <EnOwl_Init>
    13a8:	afa50024 	sw	a1,36(sp)
    13ac:	3c0e0000 	lui	t6,0x0
    13b0:	91ce003a 	lbu	t6,58(t6)
    13b4:	8fa50024 	lw	a1,36(sp)
    13b8:	24063062 	li	a2,12386
    13bc:	15c0000b 	bnez	t6,13ec <func_80ACB2B4+0x58>
    13c0:	02002025 	move	a0,s0
    13c4:	0c000000 	jal	0 <EnOwl_Init>
    13c8:	02002025 	move	a0,s0
    13cc:	50400011 	beqzl	v0,1414 <func_80ACB2B4+0x80>
    13d0:	8fbf001c 	lw	ra,28(sp)
    13d4:	0c000000 	jal	0 <EnOwl_Init>
    13d8:	2404005a 	li	a0,90
    13dc:	3c0f0000 	lui	t7,0x0
    13e0:	25ef0000 	addiu	t7,t7,0
    13e4:	1000000a 	b	1410 <func_80ACB2B4+0x7c>
    13e8:	ae0f040c 	sw	t7,1036(s0)
    13ec:	0c000000 	jal	0 <EnOwl_Init>
    13f0:	24063063 	li	a2,12387
    13f4:	50400007 	beqzl	v0,1414 <func_80ACB2B4+0x80>
    13f8:	8fbf001c 	lw	ra,28(sp)
    13fc:	0c000000 	jal	0 <EnOwl_Init>
    1400:	2404005a 	li	a0,90
    1404:	3c180000 	lui	t8,0x0
    1408:	27180000 	addiu	t8,t8,0
    140c:	ae18040c 	sw	t8,1036(s0)
    1410:	8fbf001c 	lw	ra,28(sp)
    1414:	8fb00018 	lw	s0,24(sp)
    1418:	27bd0020 	addiu	sp,sp,32
    141c:	03e00008 	jr	ra
    1420:	00000000 	nop

00001424 <func_80ACB344>:
    1424:	27bdffe8 	addiu	sp,sp,-24
    1428:	afbf0014 	sw	ra,20(sp)
    142c:	afa40018 	sw	a0,24(sp)
    1430:	24a420d8 	addiu	a0,a1,8408
    1434:	0c000000 	jal	0 <EnOwl_Init>
    1438:	afa5001c 	sw	a1,28(sp)
    143c:	24010004 	li	at,4
    1440:	1441001b 	bne	v0,at,14b0 <func_80ACB344+0x8c>
    1444:	8fa6001c 	lw	a2,28(sp)
    1448:	00c02025 	move	a0,a2
    144c:	0c000000 	jal	0 <EnOwl_Init>
    1450:	afa6001c 	sw	a2,28(sp)
    1454:	10400016 	beqz	v0,14b0 <func_80ACB344+0x8c>
    1458:	8fa6001c 	lw	a2,28(sp)
    145c:	3c020001 	lui	v0,0x1
    1460:	00461021 	addu	v0,v0,a2
    1464:	904204bd 	lbu	v0,1213(v0)
    1468:	24010001 	li	at,1
    146c:	00c02025 	move	a0,a2
    1470:	10400005 	beqz	v0,1488 <func_80ACB344+0x64>
    1474:	00000000 	nop
    1478:	10410007 	beq	v0,at,1498 <func_80ACB344+0x74>
    147c:	00c02025 	move	a0,a2
    1480:	1000000c 	b	14b4 <func_80ACB344+0x90>
    1484:	8fbf0014 	lw	ra,20(sp)
    1488:	0c000000 	jal	0 <EnOwl_Init>
    148c:	2405607a 	li	a1,24698
    1490:	10000008 	b	14b4 <func_80ACB344+0x90>
    1494:	8fbf0014 	lw	ra,20(sp)
    1498:	0c000000 	jal	0 <EnOwl_Init>
    149c:	2405607c 	li	a1,24700
    14a0:	8faf0018 	lw	t7,24(sp)
    14a4:	3c0e0000 	lui	t6,0x0
    14a8:	25ce0000 	addiu	t6,t6,0
    14ac:	adee040c 	sw	t6,1036(t7)
    14b0:	8fbf0014 	lw	ra,20(sp)
    14b4:	27bd0018 	addiu	sp,sp,24
    14b8:	03e00008 	jr	ra
    14bc:	00000000 	nop

000014c0 <func_80ACB3E0>:
    14c0:	27bdffe0 	addiu	sp,sp,-32
    14c4:	afbf001c 	sw	ra,28(sp)
    14c8:	afa40020 	sw	a0,32(sp)
    14cc:	0c000000 	jal	0 <EnOwl_Init>
    14d0:	afa50024 	sw	a1,36(sp)
    14d4:	240e0002 	li	t6,2
    14d8:	afae0010 	sw	t6,16(sp)
    14dc:	8fa40020 	lw	a0,32(sp)
    14e0:	8fa50024 	lw	a1,36(sp)
    14e4:	24066079 	li	a2,24697
    14e8:	0c000000 	jal	0 <EnOwl_Init>
    14ec:	3c0743b4 	lui	a3,0x43b4
    14f0:	50400008 	beqzl	v0,1514 <func_80ACB3E0+0x54>
    14f4:	8fbf001c 	lw	ra,28(sp)
    14f8:	0c000000 	jal	0 <EnOwl_Init>
    14fc:	2404005a 	li	a0,90
    1500:	8fb80020 	lw	t8,32(sp)
    1504:	3c0f0000 	lui	t7,0x0
    1508:	25ef0000 	addiu	t7,t7,0
    150c:	af0f040c 	sw	t7,1036(t8)
    1510:	8fbf001c 	lw	ra,28(sp)
    1514:	27bd0020 	addiu	sp,sp,32
    1518:	03e00008 	jr	ra
    151c:	00000000 	nop

00001520 <func_80ACB440>:
    1520:	27bdffe0 	addiu	sp,sp,-32
    1524:	afb00018 	sw	s0,24(sp)
    1528:	00808025 	move	s0,a0
    152c:	afbf001c 	sw	ra,28(sp)
    1530:	24a420d8 	addiu	a0,a1,8408
    1534:	0c000000 	jal	0 <EnOwl_Init>
    1538:	afa50024 	sw	a1,36(sp)
    153c:	24010004 	li	at,4
    1540:	14410021 	bne	v0,at,15c8 <func_80ACB440+0xa8>
    1544:	8fa60024 	lw	a2,36(sp)
    1548:	00c02025 	move	a0,a2
    154c:	0c000000 	jal	0 <EnOwl_Init>
    1550:	afa60024 	sw	a2,36(sp)
    1554:	1040001c 	beqz	v0,15c8 <func_80ACB440+0xa8>
    1558:	8fa60024 	lw	a2,36(sp)
    155c:	3c020001 	lui	v0,0x1
    1560:	00461021 	addu	v0,v0,a2
    1564:	904204bd 	lbu	v0,1213(v0)
    1568:	24010001 	li	at,1
    156c:	00c02025 	move	a0,a2
    1570:	10400005 	beqz	v0,1588 <func_80ACB440+0x68>
    1574:	00000000 	nop
    1578:	10410009 	beq	v0,at,15a0 <func_80ACB440+0x80>
    157c:	00c02025 	move	a0,a2
    1580:	1000000d 	b	15b8 <func_80ACB440+0x98>
    1584:	961803fc 	lhu	t8,1020(s0)
    1588:	0c000000 	jal	0 <EnOwl_Init>
    158c:	240510c1 	li	a1,4289
    1590:	3c0e0000 	lui	t6,0x0
    1594:	25ce0000 	addiu	t6,t6,0
    1598:	10000006 	b	15b4 <func_80ACB440+0x94>
    159c:	ae0e040c 	sw	t6,1036(s0)
    15a0:	0c000000 	jal	0 <EnOwl_Init>
    15a4:	240510c3 	li	a1,4291
    15a8:	3c0f0000 	lui	t7,0x0
    15ac:	25ef0000 	addiu	t7,t7,0
    15b0:	ae0f040c 	sw	t7,1036(s0)
    15b4:	961803fc 	lhu	t8,1020(s0)
    15b8:	02002025 	move	a0,s0
    15bc:	3319fffd 	andi	t9,t8,0xfffd
    15c0:	0c000000 	jal	0 <EnOwl_Init>
    15c4:	a61903fc 	sh	t9,1020(s0)
    15c8:	8fbf001c 	lw	ra,28(sp)
    15cc:	8fb00018 	lw	s0,24(sp)
    15d0:	27bd0020 	addiu	sp,sp,32
    15d4:	03e00008 	jr	ra
    15d8:	00000000 	nop

000015dc <func_80ACB4FC>:
    15dc:	27bdffe8 	addiu	sp,sp,-24
    15e0:	afbf0014 	sw	ra,20(sp)
    15e4:	afa40018 	sw	a0,24(sp)
    15e8:	afa5001c 	sw	a1,28(sp)
    15ec:	0c000000 	jal	0 <EnOwl_Init>
    15f0:	24a420d8 	addiu	a0,a1,8408
    15f4:	24010005 	li	at,5
    15f8:	54410010 	bnel	v0,at,163c <func_80ACB4FC+0x60>
    15fc:	8fbf0014 	lw	ra,20(sp)
    1600:	0c000000 	jal	0 <EnOwl_Init>
    1604:	8fa4001c 	lw	a0,28(sp)
    1608:	1040000b 	beqz	v0,1638 <func_80ACB4FC+0x5c>
    160c:	8fa4001c 	lw	a0,28(sp)
    1610:	0c000000 	jal	0 <EnOwl_Init>
    1614:	240510c2 	li	a1,4290
    1618:	8fa40018 	lw	a0,24(sp)
    161c:	3c0e0000 	lui	t6,0x0
    1620:	25ce0000 	addiu	t6,t6,0
    1624:	948f03fc 	lhu	t7,1020(a0)
    1628:	ac8e040c 	sw	t6,1036(a0)
    162c:	35f80002 	ori	t8,t7,0x2
    1630:	0c000000 	jal	0 <EnOwl_Init>
    1634:	a49803fc 	sh	t8,1020(a0)
    1638:	8fbf0014 	lw	ra,20(sp)
    163c:	27bd0018 	addiu	sp,sp,24
    1640:	03e00008 	jr	ra
    1644:	00000000 	nop

00001648 <func_80ACB568>:
    1648:	27bdffe0 	addiu	sp,sp,-32
    164c:	afbf001c 	sw	ra,28(sp)
    1650:	afa40020 	sw	a0,32(sp)
    1654:	0c000000 	jal	0 <EnOwl_Init>
    1658:	afa50024 	sw	a1,36(sp)
    165c:	8fa40020 	lw	a0,32(sp)
    1660:	8fa50024 	lw	a1,36(sp)
    1664:	240610c0 	li	a2,4288
    1668:	3c07433e 	lui	a3,0x433e
    166c:	0c000000 	jal	0 <EnOwl_Init>
    1670:	afa00010 	sw	zero,16(sp)
    1674:	50400008 	beqzl	v0,1698 <func_80ACB568+0x50>
    1678:	8fbf001c 	lw	ra,28(sp)
    167c:	0c000000 	jal	0 <EnOwl_Init>
    1680:	2404005a 	li	a0,90
    1684:	8faf0020 	lw	t7,32(sp)
    1688:	3c0e0000 	lui	t6,0x0
    168c:	25ce0000 	addiu	t6,t6,0
    1690:	adee040c 	sw	t6,1036(t7)
    1694:	8fbf001c 	lw	ra,28(sp)
    1698:	27bd0020 	addiu	sp,sp,32
    169c:	03e00008 	jr	ra
    16a0:	00000000 	nop

000016a4 <func_80ACB5C4>:
    16a4:	27bdffe0 	addiu	sp,sp,-32
    16a8:	afb00018 	sw	s0,24(sp)
    16ac:	00808025 	move	s0,a0
    16b0:	afbf001c 	sw	ra,28(sp)
    16b4:	24a420d8 	addiu	a0,a1,8408
    16b8:	0c000000 	jal	0 <EnOwl_Init>
    16bc:	afa50024 	sw	a1,36(sp)
    16c0:	24010004 	li	at,4
    16c4:	14410021 	bne	v0,at,174c <func_80ACB5C4+0xa8>
    16c8:	8fa60024 	lw	a2,36(sp)
    16cc:	00c02025 	move	a0,a2
    16d0:	0c000000 	jal	0 <EnOwl_Init>
    16d4:	afa60024 	sw	a2,36(sp)
    16d8:	1040001c 	beqz	v0,174c <func_80ACB5C4+0xa8>
    16dc:	8fa60024 	lw	a2,36(sp)
    16e0:	3c020001 	lui	v0,0x1
    16e4:	00461021 	addu	v0,v0,a2
    16e8:	904204bd 	lbu	v0,1213(v0)
    16ec:	24010001 	li	at,1
    16f0:	00c02025 	move	a0,a2
    16f4:	10400005 	beqz	v0,170c <func_80ACB5C4+0x68>
    16f8:	00000000 	nop
    16fc:	10410009 	beq	v0,at,1724 <func_80ACB5C4+0x80>
    1700:	00c02025 	move	a0,a2
    1704:	1000000d 	b	173c <func_80ACB5C4+0x98>
    1708:	961803fc 	lhu	t8,1020(s0)
    170c:	0c000000 	jal	0 <EnOwl_Init>
    1710:	240510c5 	li	a1,4293
    1714:	3c0e0000 	lui	t6,0x0
    1718:	25ce0000 	addiu	t6,t6,0
    171c:	10000006 	b	1738 <func_80ACB5C4+0x94>
    1720:	ae0e040c 	sw	t6,1036(s0)
    1724:	0c000000 	jal	0 <EnOwl_Init>
    1728:	240510c7 	li	a1,4295
    172c:	3c0f0000 	lui	t7,0x0
    1730:	25ef0000 	addiu	t7,t7,0
    1734:	ae0f040c 	sw	t7,1036(s0)
    1738:	961803fc 	lhu	t8,1020(s0)
    173c:	02002025 	move	a0,s0
    1740:	3319fffd 	andi	t9,t8,0xfffd
    1744:	0c000000 	jal	0 <EnOwl_Init>
    1748:	a61903fc 	sh	t9,1020(s0)
    174c:	8fbf001c 	lw	ra,28(sp)
    1750:	8fb00018 	lw	s0,24(sp)
    1754:	27bd0020 	addiu	sp,sp,32
    1758:	03e00008 	jr	ra
    175c:	00000000 	nop

00001760 <func_80ACB680>:
    1760:	27bdffe8 	addiu	sp,sp,-24
    1764:	afbf0014 	sw	ra,20(sp)
    1768:	afa40018 	sw	a0,24(sp)
    176c:	afa5001c 	sw	a1,28(sp)
    1770:	0c000000 	jal	0 <EnOwl_Init>
    1774:	24a420d8 	addiu	a0,a1,8408
    1778:	24010005 	li	at,5
    177c:	54410010 	bnel	v0,at,17c0 <func_80ACB680+0x60>
    1780:	8fbf0014 	lw	ra,20(sp)
    1784:	0c000000 	jal	0 <EnOwl_Init>
    1788:	8fa4001c 	lw	a0,28(sp)
    178c:	1040000b 	beqz	v0,17bc <func_80ACB680+0x5c>
    1790:	8fa4001c 	lw	a0,28(sp)
    1794:	0c000000 	jal	0 <EnOwl_Init>
    1798:	240510c6 	li	a1,4294
    179c:	8fa40018 	lw	a0,24(sp)
    17a0:	3c0e0000 	lui	t6,0x0
    17a4:	25ce0000 	addiu	t6,t6,0
    17a8:	948f03fc 	lhu	t7,1020(a0)
    17ac:	ac8e040c 	sw	t6,1036(a0)
    17b0:	35f80002 	ori	t8,t7,0x2
    17b4:	0c000000 	jal	0 <EnOwl_Init>
    17b8:	a49803fc 	sh	t8,1020(a0)
    17bc:	8fbf0014 	lw	ra,20(sp)
    17c0:	27bd0018 	addiu	sp,sp,24
    17c4:	03e00008 	jr	ra
    17c8:	00000000 	nop

000017cc <func_80ACB6EC>:
    17cc:	27bdffe0 	addiu	sp,sp,-32
    17d0:	afbf001c 	sw	ra,28(sp)
    17d4:	afa40020 	sw	a0,32(sp)
    17d8:	0c000000 	jal	0 <EnOwl_Init>
    17dc:	afa50024 	sw	a1,36(sp)
    17e0:	8fa40020 	lw	a0,32(sp)
    17e4:	8fa50024 	lw	a1,36(sp)
    17e8:	240610c4 	li	a2,4292
    17ec:	3c0743b4 	lui	a3,0x43b4
    17f0:	0c000000 	jal	0 <EnOwl_Init>
    17f4:	afa00010 	sw	zero,16(sp)
    17f8:	50400008 	beqzl	v0,181c <func_80ACB6EC+0x50>
    17fc:	8fbf001c 	lw	ra,28(sp)
    1800:	0c000000 	jal	0 <EnOwl_Init>
    1804:	2404005a 	li	a0,90
    1808:	8faf0020 	lw	t7,32(sp)
    180c:	3c0e0000 	lui	t6,0x0
    1810:	25ce0000 	addiu	t6,t6,0
    1814:	adee040c 	sw	t6,1036(t7)
    1818:	8fbf001c 	lw	ra,28(sp)
    181c:	27bd0020 	addiu	sp,sp,32
    1820:	03e00008 	jr	ra
    1824:	00000000 	nop

00001828 <func_80ACB748>:
    1828:	27bdffd0 	addiu	sp,sp,-48
    182c:	afbf001c 	sw	ra,28(sp)
    1830:	f7b40010 	sdc1	$f20,16(sp)
    1834:	8482001c 	lh	v0,28(a0)
    1838:	00803025 	move	a2,a0
    183c:	00a03825 	move	a3,a1
    1840:	30420fc0 	andi	v0,v0,0xfc0
    1844:	00021183 	sra	v0,v0,0x6
    1848:	afa20024 	sw	v0,36(sp)
    184c:	afa70034 	sw	a3,52(sp)
    1850:	24a500e0 	addiu	a1,a1,224
    1854:	afa60030 	sw	a2,48(sp)
    1858:	0c000000 	jal	0 <EnOwl_Init>
    185c:	248403e0 	addiu	a0,a0,992
    1860:	3c013f80 	lui	at,0x3f80
    1864:	44817000 	mtc1	at,$f14
    1868:	3c014234 	lui	at,0x4234
    186c:	44815000 	mtc1	at,$f10
    1870:	8fa70034 	lw	a3,52(sp)
    1874:	8fa60030 	lw	a2,48(sp)
    1878:	460a0303 	div.s	$f12,$f0,$f10
    187c:	c4e400e0 	lwc1	$f4,224(a3)
    1880:	8fa20024 	lw	v0,36(sp)
    1884:	24010007 	li	at,7
    1888:	e4c403e0 	swc1	$f4,992(a2)
    188c:	c4e600e4 	lwc1	$f6,228(a3)
    1890:	e4c603e4 	swc1	$f6,996(a2)
    1894:	c4e800e8 	lwc1	$f8,232(a3)
    1898:	e4c803e8 	swc1	$f8,1000(a2)
    189c:	460c703c 	c.lt.s	$f14,$f12
    18a0:	00000000 	nop
    18a4:	45000002 	bc1f	18b0 <func_80ACB748+0x88>
    18a8:	00000000 	nop
    18ac:	46007306 	mov.s	$f12,$f14
    18b0:	10410007 	beq	v0,at,18d0 <func_80ACB748+0xa8>
    18b4:	24010008 	li	at,8
    18b8:	10410026 	beq	v0,at,1954 <func_80ACB748+0x12c>
    18bc:	24010009 	li	at,9
    18c0:	50410025 	beql	v0,at,1958 <func_80ACB748+0x130>
    18c4:	460c6500 	add.s	$f20,$f12,$f12
    18c8:	10000042 	b	19d4 <func_80ACB748+0x1ac>
    18cc:	8fbf001c 	lw	ra,28(sp)
    18d0:	460c6500 	add.s	$f20,$f12,$f12
    18d4:	3c040000 	lui	a0,0x0
    18d8:	24840000 	addiu	a0,a0,0
    18dc:	240520bd 	li	a1,8381
    18e0:	4406a000 	mfc1	a2,$f20
    18e4:	0c000000 	jal	0 <EnOwl_Init>
    18e8:	afa70034 	sw	a3,52(sp)
    18ec:	8fa70034 	lw	a3,52(sp)
    18f0:	3c040000 	lui	a0,0x0
    18f4:	24840000 	addiu	a0,a0,0
    18f8:	94e21d74 	lhu	v0,7540(a3)
    18fc:	24053926 	li	a1,14630
    1900:	28410145 	slti	at,v0,325
    1904:	10200005 	beqz	at,191c <func_80ACB748+0xf4>
    1908:	2841008e 	slti	at,v0,142
    190c:	14200008 	bnez	at,1930 <func_80ACB748+0x108>
    1910:	2841010b 	slti	at,v0,267
    1914:	50200007 	beqzl	at,1934 <func_80ACB748+0x10c>
    1918:	24010055 	li	at,85
    191c:	4406a000 	mfc1	a2,$f20
    1920:	0c000000 	jal	0 <EnOwl_Init>
    1924:	afa70034 	sw	a3,52(sp)
    1928:	8fa70034 	lw	a3,52(sp)
    192c:	94e21d74 	lhu	v0,7540(a3)
    1930:	24010055 	li	at,85
    1934:	14410026 	bne	v0,at,19d0 <func_80ACB748+0x1a8>
    1938:	3c040000 	lui	a0,0x0
    193c:	4406a000 	mfc1	a2,$f20
    1940:	24840000 	addiu	a0,a0,0
    1944:	0c000000 	jal	0 <EnOwl_Init>
    1948:	240528be 	li	a1,10430
    194c:	10000021 	b	19d4 <func_80ACB748+0x1ac>
    1950:	8fbf001c 	lw	ra,28(sp)
    1954:	460c6500 	add.s	$f20,$f12,$f12
    1958:	3c040000 	lui	a0,0x0
    195c:	24840000 	addiu	a0,a0,0
    1960:	240520bd 	li	a1,8381
    1964:	4406a000 	mfc1	a2,$f20
    1968:	0c000000 	jal	0 <EnOwl_Init>
    196c:	afa70034 	sw	a3,52(sp)
    1970:	8fa70034 	lw	a3,52(sp)
    1974:	3c040000 	lui	a0,0x0
    1978:	24840000 	addiu	a0,a0,0
    197c:	94e21d74 	lhu	v0,7540(a3)
    1980:	24053926 	li	a1,14630
    1984:	284101a4 	slti	at,v0,420
    1988:	10200005 	beqz	at,19a0 <func_80ACB748+0x178>
    198c:	284100c2 	slti	at,v0,194
    1990:	14200008 	bnez	at,19b4 <func_80ACB748+0x18c>
    1994:	28410119 	slti	at,v0,281
    1998:	50200007 	beqzl	at,19b8 <func_80ACB748+0x190>
    199c:	240100d9 	li	at,217
    19a0:	4406a000 	mfc1	a2,$f20
    19a4:	0c000000 	jal	0 <EnOwl_Init>
    19a8:	afa70034 	sw	a3,52(sp)
    19ac:	8fa70034 	lw	a3,52(sp)
    19b0:	94e21d74 	lhu	v0,7540(a3)
    19b4:	240100d9 	li	at,217
    19b8:	14410005 	bne	v0,at,19d0 <func_80ACB748+0x1a8>
    19bc:	3c040000 	lui	a0,0x0
    19c0:	4406a000 	mfc1	a2,$f20
    19c4:	24840000 	addiu	a0,a0,0
    19c8:	0c000000 	jal	0 <EnOwl_Init>
    19cc:	240528be 	li	a1,10430
    19d0:	8fbf001c 	lw	ra,28(sp)
    19d4:	d7b40010 	ldc1	$f20,16(sp)
    19d8:	27bd0030 	addiu	sp,sp,48
    19dc:	03e00008 	jr	ra
    19e0:	00000000 	nop

000019e4 <func_80ACB904>:
    19e4:	27bdffe0 	addiu	sp,sp,-32
    19e8:	afbf001c 	sw	ra,28(sp)
    19ec:	afb10018 	sw	s1,24(sp)
    19f0:	afb00014 	sw	s0,20(sp)
    19f4:	90ae1d6c 	lbu	t6,7532(a1)
    19f8:	00a08025 	move	s0,a1
    19fc:	00808825 	move	s1,a0
    1a00:	51c00011 	beqzl	t6,1a48 <func_80ACB904+0x64>
    1a04:	963903fc 	lhu	t9,1020(s1)
    1a08:	8ca21da8 	lw	v0,7592(a1)
    1a0c:	5040000e 	beqzl	v0,1a48 <func_80ACB904+0x64>
    1a10:	963903fc 	lhu	t9,1020(s1)
    1a14:	908f040a 	lbu	t7,1034(a0)
    1a18:	94580000 	lhu	t8,0(v0)
    1a1c:	51f80007 	beql	t7,t8,1a3c <func_80ACB904+0x58>
    1a20:	02202025 	move	a0,s1
    1a24:	0c000000 	jal	0 <EnOwl_Init>
    1a28:	24060007 	li	a2,7
    1a2c:	02202025 	move	a0,s1
    1a30:	0c000000 	jal	0 <EnOwl_Init>
    1a34:	02002825 	move	a1,s0
    1a38:	02202025 	move	a0,s1
    1a3c:	0c000000 	jal	0 <EnOwl_Init>
    1a40:	02002825 	move	a1,s0
    1a44:	963903fc 	lhu	t9,1020(s1)
    1a48:	02202025 	move	a0,s1
    1a4c:	33280080 	andi	t0,t9,0x80
    1a50:	51000004 	beqzl	t0,1a64 <func_80ACB904+0x80>
    1a54:	8fbf001c 	lw	ra,28(sp)
    1a58:	0c000000 	jal	0 <EnOwl_Init>
    1a5c:	02002825 	move	a1,s0
    1a60:	8fbf001c 	lw	ra,28(sp)
    1a64:	8fb00014 	lw	s0,20(sp)
    1a68:	8fb10018 	lw	s1,24(sp)
    1a6c:	03e00008 	jr	ra
    1a70:	27bd0020 	addiu	sp,sp,32

00001a74 <func_80ACB994>:
    1a74:	27bdffe0 	addiu	sp,sp,-32
    1a78:	afbf001c 	sw	ra,28(sp)
    1a7c:	afb10018 	sw	s1,24(sp)
    1a80:	afb00014 	sw	s0,20(sp)
    1a84:	90ae1d6c 	lbu	t6,7532(a1)
    1a88:	00a08025 	move	s0,a1
    1a8c:	00808825 	move	s1,a0
    1a90:	51c00011 	beqzl	t6,1ad8 <func_80ACB994+0x64>
    1a94:	963903fc 	lhu	t9,1020(s1)
    1a98:	8ca21da8 	lw	v0,7592(a1)
    1a9c:	5040000e 	beqzl	v0,1ad8 <func_80ACB994+0x64>
    1aa0:	963903fc 	lhu	t9,1020(s1)
    1aa4:	908f040a 	lbu	t7,1034(a0)
    1aa8:	94580000 	lhu	t8,0(v0)
    1aac:	51f80007 	beql	t7,t8,1acc <func_80ACB994+0x58>
    1ab0:	02202025 	move	a0,s1
    1ab4:	0c000000 	jal	0 <EnOwl_Init>
    1ab8:	24060007 	li	a2,7
    1abc:	02202025 	move	a0,s1
    1ac0:	0c000000 	jal	0 <EnOwl_Init>
    1ac4:	02002825 	move	a1,s0
    1ac8:	02202025 	move	a0,s1
    1acc:	0c000000 	jal	0 <EnOwl_Init>
    1ad0:	02002825 	move	a1,s0
    1ad4:	963903fc 	lhu	t9,1020(s1)
    1ad8:	02202025 	move	a0,s1
    1adc:	33280080 	andi	t0,t9,0x80
    1ae0:	51000004 	beqzl	t0,1af4 <func_80ACB994+0x80>
    1ae4:	8fbf001c 	lw	ra,28(sp)
    1ae8:	0c000000 	jal	0 <EnOwl_Init>
    1aec:	02002825 	move	a1,s0
    1af0:	8fbf001c 	lw	ra,28(sp)
    1af4:	8fb00014 	lw	s0,20(sp)
    1af8:	8fb10018 	lw	s1,24(sp)
    1afc:	03e00008 	jr	ra
    1b00:	27bd0020 	addiu	sp,sp,32

00001b04 <func_80ACBA24>:
    1b04:	27bdffe8 	addiu	sp,sp,-24
    1b08:	afbf0014 	sw	ra,20(sp)
    1b0c:	90ae1d6c 	lbu	t6,7532(a1)
    1b10:	51c00018 	beqzl	t6,1b74 <func_80ACBA24+0x70>
    1b14:	948a03fc 	lhu	t2,1020(a0)
    1b18:	8ca21da8 	lw	v0,7592(a1)
    1b1c:	50400015 	beqzl	v0,1b74 <func_80ACBA24+0x70>
    1b20:	948a03fc 	lhu	t2,1020(a0)
    1b24:	908f040a 	lbu	t7,1034(a0)
    1b28:	94580000 	lhu	t8,0(v0)
    1b2c:	51f8000f 	beql	t7,t8,1b6c <func_80ACBA24+0x68>
    1b30:	94490008 	lhu	t1,8(v0)
    1b34:	949903fc 	lhu	t9,1020(a0)
    1b38:	24060007 	li	a2,7
    1b3c:	37280004 	ori	t0,t9,0x4
    1b40:	a48803fc 	sh	t0,1020(a0)
    1b44:	afa5001c 	sw	a1,28(sp)
    1b48:	0c000000 	jal	0 <EnOwl_Init>
    1b4c:	afa40018 	sw	a0,24(sp)
    1b50:	8fa40018 	lw	a0,24(sp)
    1b54:	0c000000 	jal	0 <EnOwl_Init>
    1b58:	8fa5001c 	lw	a1,28(sp)
    1b5c:	8fa40018 	lw	a0,24(sp)
    1b60:	10000003 	b	1b70 <func_80ACBA24+0x6c>
    1b64:	8fa5001c 	lw	a1,28(sp)
    1b68:	94490008 	lhu	t1,8(v0)
    1b6c:	a4890034 	sh	t1,52(a0)
    1b70:	948a03fc 	lhu	t2,1020(a0)
    1b74:	314b0080 	andi	t3,t2,0x80
    1b78:	51600004 	beqzl	t3,1b8c <func_80ACBA24+0x88>
    1b7c:	8fbf0014 	lw	ra,20(sp)
    1b80:	0c000000 	jal	0 <EnOwl_Init>
    1b84:	00000000 	nop
    1b88:	8fbf0014 	lw	ra,20(sp)
    1b8c:	27bd0018 	addiu	sp,sp,24
    1b90:	03e00008 	jr	ra
    1b94:	00000000 	nop

00001b98 <func_80ACBAB8>:
    1b98:	27bdffd8 	addiu	sp,sp,-40
    1b9c:	afbf0024 	sw	ra,36(sp)
    1ba0:	afb10020 	sw	s1,32(sp)
    1ba4:	afb0001c 	sw	s0,28(sp)
    1ba8:	8cae1da8 	lw	t6,7592(a1)
    1bac:	00808025 	move	s0,a0
    1bb0:	00a08825 	move	s1,a1
    1bb4:	95c20000 	lhu	v0,0(t6)
    1bb8:	244fffff 	addiu	t7,v0,-1
    1bbc:	2de10005 	sltiu	at,t7,5
    1bc0:	10200044 	beqz	at,1cd4 <L80ACBBE4+0x10>
    1bc4:	000f7880 	sll	t7,t7,0x2
    1bc8:	3c010000 	lui	at,0x0
    1bcc:	002f0821 	addu	at,at,t7
    1bd0:	8c2f0000 	lw	t7,0(at)
    1bd4:	01e00008 	jr	t7
    1bd8:	00000000 	nop

00001bdc <L80ACBAFC>:
    1bdc:	44802000 	mtc1	zero,$f4
    1be0:	3c180600 	lui	t8,0x600
    1be4:	271815cc 	addiu	t8,t8,5580
    1be8:	3c050000 	lui	a1,0x0
    1bec:	3c060000 	lui	a2,0x0
    1bf0:	24c60000 	addiu	a2,a2,0
    1bf4:	24a50000 	addiu	a1,a1,0
    1bf8:	afb80010 	sw	t8,16(sp)
    1bfc:	02002025 	move	a0,s0
    1c00:	26070198 	addiu	a3,s0,408
    1c04:	0c000000 	jal	0 <EnOwl_Init>
    1c08:	e7a40014 	swc1	$f4,20(sp)
    1c0c:	8e391da8 	lw	t9,7592(s1)
    1c10:	10000030 	b	1cd4 <L80ACBBE4+0x10>
    1c14:	97220000 	lhu	v0,0(t9)

00001c18 <L80ACBB38>:
    1c18:	3c080000 	lui	t0,0x0
    1c1c:	44803000 	mtc1	zero,$f6
    1c20:	25080000 	addiu	t0,t0,0
    1c24:	3c090601 	lui	t1,0x601
    1c28:	ae080134 	sw	t0,308(s0)
    1c2c:	2529c8a0 	addiu	t1,t1,-14176
    1c30:	3c050000 	lui	a1,0x0
    1c34:	3c060000 	lui	a2,0x0
    1c38:	24c60000 	addiu	a2,a2,0
    1c3c:	24a50000 	addiu	a1,a1,0
    1c40:	afa90010 	sw	t1,16(sp)
    1c44:	02002025 	move	a0,s0
    1c48:	26070198 	addiu	a3,s0,408
    1c4c:	0c000000 	jal	0 <EnOwl_Init>
    1c50:	e7a60014 	swc1	$f6,20(sp)
    1c54:	8e2a1da8 	lw	t2,7592(s1)
    1c58:	1000001e 	b	1cd4 <L80ACBBE4+0x10>
    1c5c:	95420000 	lhu	v0,0(t2)

00001c60 <L80ACBB80>:
    1c60:	3c0b0000 	lui	t3,0x0
    1c64:	44804000 	mtc1	zero,$f8
    1c68:	256b0000 	addiu	t3,t3,0
    1c6c:	3c0c0600 	lui	t4,0x600
    1c70:	ae0b0134 	sw	t3,308(s0)
    1c74:	258c15cc 	addiu	t4,t4,5580
    1c78:	3c050000 	lui	a1,0x0
    1c7c:	3c060000 	lui	a2,0x0
    1c80:	24c60000 	addiu	a2,a2,0
    1c84:	24a50000 	addiu	a1,a1,0
    1c88:	afac0010 	sw	t4,16(sp)
    1c8c:	02002025 	move	a0,s0
    1c90:	26070198 	addiu	a3,s0,408
    1c94:	0c000000 	jal	0 <EnOwl_Init>
    1c98:	e7a80014 	swc1	$f8,20(sp)
    1c9c:	8e2d1da8 	lw	t5,7592(s1)
    1ca0:	1000000c 	b	1cd4 <L80ACBBE4+0x10>
    1ca4:	95a20000 	lhu	v0,0(t5)

00001ca8 <L80ACBBC8>:
    1ca8:	3c0e0000 	lui	t6,0x0
    1cac:	25ce0000 	addiu	t6,t6,0
    1cb0:	ae000134 	sw	zero,308(s0)
    1cb4:	ae0e040c 	sw	t6,1036(s0)
    1cb8:	8e2f1da8 	lw	t7,7592(s1)
    1cbc:	10000005 	b	1cd4 <L80ACBBE4+0x10>
    1cc0:	95e20000 	lhu	v0,0(t7)

00001cc4 <L80ACBBE4>:
    1cc4:	0c000000 	jal	0 <EnOwl_Init>
    1cc8:	02002025 	move	a0,s0
    1ccc:	8e381da8 	lw	t8,7592(s1)
    1cd0:	97020000 	lhu	v0,0(t8)
    1cd4:	a202040a 	sb	v0,1034(s0)
    1cd8:	8fbf0024 	lw	ra,36(sp)
    1cdc:	8fb10020 	lw	s1,32(sp)
    1ce0:	8fb0001c 	lw	s0,28(sp)
    1ce4:	03e00008 	jr	ra
    1ce8:	27bd0028 	addiu	sp,sp,40

00001cec <func_80ACBC0C>:
    1cec:	27bdffd8 	addiu	sp,sp,-40
    1cf0:	afbf0024 	sw	ra,36(sp)
    1cf4:	afb00020 	sw	s0,32(sp)
    1cf8:	afa5002c 	sw	a1,44(sp)
    1cfc:	8c8e0004 	lw	t6,4(a0)
    1d00:	3c010000 	lui	at,0x0
    1d04:	c4860090 	lwc1	$f6,144(a0)
    1d08:	35cf0020 	ori	t7,t6,0x20
    1d0c:	ac8f0004 	sw	t7,4(a0)
    1d10:	c4240000 	lwc1	$f4,0(at)
    1d14:	00808025 	move	s0,a0
    1d18:	4606203c 	c.lt.s	$f4,$f6
    1d1c:	00000000 	nop
    1d20:	45020008 	bc1fl	1d44 <func_80ACBC0C+0x58>
    1d24:	86050400 	lh	a1,1024(s0)
    1d28:	949803fc 	lhu	t8,1020(a0)
    1d2c:	33190080 	andi	t9,t8,0x80
    1d30:	57200004 	bnezl	t9,1d44 <func_80ACBC0C+0x58>
    1d34:	86050400 	lh	a1,1024(s0)
    1d38:	0c000000 	jal	0 <EnOwl_Init>
    1d3c:	00000000 	nop
    1d40:	86050400 	lh	a1,1024(s0)
    1d44:	24080040 	li	t0,64
    1d48:	afa80010 	sw	t0,16(sp)
    1d4c:	26040032 	addiu	a0,s0,50
    1d50:	24060002 	li	a2,2
    1d54:	0c000000 	jal	0 <EnOwl_Init>
    1d58:	24070080 	li	a3,128
    1d5c:	3c014180 	lui	at,0x4180
    1d60:	44814000 	mtc1	at,$f8
    1d64:	c6000068 	lwc1	$f0,104(s0)
    1d68:	86090032 	lh	t1,50(s0)
    1d6c:	3c013f00 	lui	at,0x3f00
    1d70:	4608003c 	c.lt.s	$f0,$f8
    1d74:	a60900b6 	sh	t1,182(s0)
    1d78:	45020006 	bc1fl	1d94 <func_80ACBC0C+0xa8>
    1d7c:	3c01447a 	lui	at,0x447a
    1d80:	44815000 	mtc1	at,$f10
    1d84:	00000000 	nop
    1d88:	460a0400 	add.s	$f16,$f0,$f10
    1d8c:	e6100068 	swc1	$f16,104(s0)
    1d90:	3c01447a 	lui	at,0x447a
    1d94:	44812000 	mtc1	at,$f4
    1d98:	c61203f8 	lwc1	$f18,1016(s0)
    1d9c:	c6080028 	lwc1	$f8,40(s0)
    1da0:	3c014080 	lui	at,0x4080
    1da4:	46049180 	add.s	$f6,$f18,$f4
    1da8:	4608303c 	c.lt.s	$f6,$f8
    1dac:	00000000 	nop
    1db0:	4502000d 	bc1fl	1de8 <func_80ACBC0C+0xfc>
    1db4:	c6000060 	lwc1	$f0,96(s0)
    1db8:	c6000060 	lwc1	$f0,96(s0)
    1dbc:	44805000 	mtc1	zero,$f10
    1dc0:	3c010000 	lui	at,0x0
    1dc4:	4600503c 	c.lt.s	$f10,$f0
    1dc8:	00000000 	nop
    1dcc:	45020010 	bc1fl	1e10 <func_80ACBC0C+0x124>
    1dd0:	960a03fc 	lhu	t2,1020(s0)
    1dd4:	c4300000 	lwc1	$f16,0(at)
    1dd8:	46100481 	sub.s	$f18,$f0,$f16
    1ddc:	1000000b 	b	1e0c <func_80ACBC0C+0x120>
    1de0:	e6120060 	swc1	$f18,96(s0)
    1de4:	c6000060 	lwc1	$f0,96(s0)
    1de8:	44812000 	mtc1	at,$f4
    1dec:	3c010000 	lui	at,0x0
    1df0:	4604003c 	c.lt.s	$f0,$f4
    1df4:	00000000 	nop
    1df8:	45020005 	bc1fl	1e10 <func_80ACBC0C+0x124>
    1dfc:	960a03fc 	lhu	t2,1020(s0)
    1e00:	c4260000 	lwc1	$f6,0(at)
    1e04:	46060200 	add.s	$f8,$f0,$f6
    1e08:	e6080060 	swc1	$f8,96(s0)
    1e0c:	960a03fc 	lhu	t2,1020(s0)
    1e10:	354b0008 	ori	t3,t2,0x8
    1e14:	a60b03fc 	sh	t3,1020(s0)
    1e18:	8fbf0024 	lw	ra,36(sp)
    1e1c:	8fb00020 	lw	s0,32(sp)
    1e20:	27bd0028 	addiu	sp,sp,40
    1e24:	03e00008 	jr	ra
    1e28:	00000000 	nop

00001e2c <func_80ACBD4C>:
    1e2c:	27bdffd8 	addiu	sp,sp,-40
    1e30:	afbf0024 	sw	ra,36(sp)
    1e34:	afb00020 	sw	s0,32(sp)
    1e38:	afa5002c 	sw	a1,44(sp)
    1e3c:	3c014120 	lui	at,0x4120
    1e40:	44812000 	mtc1	at,$f4
    1e44:	c48001b0 	lwc1	$f0,432(a0)
    1e48:	00808025 	move	s0,a0
    1e4c:	24840032 	addiu	a0,a0,50
    1e50:	4600203c 	c.lt.s	$f4,$f0
    1e54:	24060002 	li	a2,2
    1e58:	24070400 	li	a3,1024
    1e5c:	240e0040 	li	t6,64
    1e60:	45020008 	bc1fl	1e84 <func_80ACBD4C+0x58>
    1e64:	3c014234 	lui	at,0x4234
    1e68:	86050400 	lh	a1,1024(s0)
    1e6c:	0c000000 	jal	0 <EnOwl_Init>
    1e70:	afae0010 	sw	t6,16(sp)
    1e74:	860f0032 	lh	t7,50(s0)
    1e78:	c60001b0 	lwc1	$f0,432(s0)
    1e7c:	a60f00b6 	sh	t7,182(s0)
    1e80:	3c014234 	lui	at,0x4234
    1e84:	44813000 	mtc1	at,$f6
    1e88:	3c050000 	lui	a1,0x0
    1e8c:	3c060000 	lui	a2,0x0
    1e90:	4600303c 	c.lt.s	$f6,$f0
    1e94:	3c014188 	lui	at,0x4188
    1e98:	24c60000 	addiu	a2,a2,0
    1e9c:	24a50000 	addiu	a1,a1,0
    1ea0:	4500000a 	bc1f	1ecc <func_80ACBD4C+0xa0>
    1ea4:	02002025 	move	a0,s0
    1ea8:	3c014000 	lui	at,0x4000
    1eac:	44814000 	mtc1	at,$f8
    1eb0:	3c014100 	lui	at,0x4100
    1eb4:	44805000 	mtc1	zero,$f10
    1eb8:	44818000 	mtc1	at,$f16
    1ebc:	e6080060 	swc1	$f8,96(s0)
    1ec0:	e60a006c 	swc1	$f10,108(s0)
    1ec4:	1000000e 	b	1f00 <func_80ACBD4C+0xd4>
    1ec8:	e6100068 	swc1	$f16,104(s0)
    1ecc:	44819000 	mtc1	at,$f18
    1ed0:	3c0140c0 	lui	at,0x40c0
    1ed4:	4600903c 	c.lt.s	$f18,$f0
    1ed8:	00000000 	nop
    1edc:	45020009 	bc1fl	1f04 <func_80ACBD4C+0xd8>
    1ee0:	960203fc 	lhu	v0,1020(s0)
    1ee4:	44812000 	mtc1	at,$f4
    1ee8:	3c014080 	lui	at,0x4080
    1eec:	44803000 	mtc1	zero,$f6
    1ef0:	44814000 	mtc1	at,$f8
    1ef4:	e6040060 	swc1	$f4,96(s0)
    1ef8:	e606006c 	swc1	$f6,108(s0)
    1efc:	e6080068 	swc1	$f8,104(s0)
    1f00:	960203fc 	lhu	v0,1020(s0)
    1f04:	3c190600 	lui	t9,0x600
    1f08:	273915cc 	addiu	t9,t9,5580
    1f0c:	30580001 	andi	t8,v0,0x1
    1f10:	13000014 	beqz	t8,1f64 <func_80ACBD4C+0x138>
    1f14:	26070198 	addiu	a3,s0,408
    1f18:	44805000 	mtc1	zero,$f10
    1f1c:	afb90010 	sw	t9,16(sp)
    1f20:	0c000000 	jal	0 <EnOwl_Init>
    1f24:	e7aa0014 	swc1	$f10,20(sp)
    1f28:	960903fc 	lhu	t1,1020(s0)
    1f2c:	24080006 	li	t0,6
    1f30:	a60803fe 	sh	t0,1022(s0)
    1f34:	312a0040 	andi	t2,t1,0x40
    1f38:	51400007 	beqzl	t2,1f58 <func_80ACBD4C+0x12c>
    1f3c:	860d0400 	lh	t5,1024(s0)
    1f40:	860b0400 	lh	t3,1024(s0)
    1f44:	960203fc 	lhu	v0,1020(s0)
    1f48:	256c2000 	addiu	t4,t3,8192
    1f4c:	10000005 	b	1f64 <func_80ACBD4C+0x138>
    1f50:	a60c0400 	sh	t4,1024(s0)
    1f54:	860d0400 	lh	t5,1024(s0)
    1f58:	960203fc 	lhu	v0,1020(s0)
    1f5c:	25aee000 	addiu	t6,t5,-8192
    1f60:	a60e0400 	sh	t6,1024(s0)
    1f64:	344f0008 	ori	t7,v0,0x8
    1f68:	a60f03fc 	sh	t7,1020(s0)
    1f6c:	8fbf0024 	lw	ra,36(sp)
    1f70:	8fb00020 	lw	s0,32(sp)
    1f74:	27bd0028 	addiu	sp,sp,40
    1f78:	03e00008 	jr	ra
    1f7c:	00000000 	nop

00001f80 <func_80ACBEA0>:
    1f80:	27bdffe0 	addiu	sp,sp,-32
    1f84:	afbf001c 	sw	ra,28(sp)
    1f88:	afa50024 	sw	a1,36(sp)
    1f8c:	948203fc 	lhu	v0,1020(a0)
    1f90:	3c050000 	lui	a1,0x0
    1f94:	240f0003 	li	t7,3
    1f98:	304e0001 	andi	t6,v0,0x1
    1f9c:	11c0001e 	beqz	t6,2018 <func_80ACBEA0+0x98>
    1fa0:	24a50000 	addiu	a1,a1,0
    1fa4:	44802000 	mtc1	zero,$f4
    1fa8:	a48f03fe 	sh	t7,1022(a0)
    1fac:	3c180600 	lui	t8,0x600
    1fb0:	27181168 	addiu	t8,t8,4456
    1fb4:	3c060000 	lui	a2,0x0
    1fb8:	24c60000 	addiu	a2,a2,0
    1fbc:	afb80010 	sw	t8,16(sp)
    1fc0:	afa40020 	sw	a0,32(sp)
    1fc4:	24870198 	addiu	a3,a0,408
    1fc8:	0c000000 	jal	0 <EnOwl_Init>
    1fcc:	e7a40014 	swc1	$f4,20(sp)
    1fd0:	8fa40020 	lw	a0,32(sp)
    1fd4:	3c014000 	lui	at,0x4000
    1fd8:	44814000 	mtc1	at,$f8
    1fdc:	949903fc 	lhu	t9,1020(a0)
    1fe0:	c4860028 	lwc1	$f6,40(a0)
    1fe4:	e4880060 	swc1	$f8,96(a0)
    1fe8:	33280040 	andi	t0,t9,0x40
    1fec:	11000006 	beqz	t0,2008 <func_80ACBEA0+0x88>
    1ff0:	e48603f8 	swc1	$f6,1016(a0)
    1ff4:	84890032 	lh	t1,50(a0)
    1ff8:	948203fc 	lhu	v0,1020(a0)
    1ffc:	252a4000 	addiu	t2,t1,16384
    2000:	10000005 	b	2018 <func_80ACBEA0+0x98>
    2004:	a48a0400 	sh	t2,1024(a0)
    2008:	848b0032 	lh	t3,50(a0)
    200c:	948203fc 	lhu	v0,1020(a0)
    2010:	256cc000 	addiu	t4,t3,-16384
    2014:	a48c0400 	sh	t4,1024(a0)
    2018:	344d0008 	ori	t5,v0,0x8
    201c:	a48d03fc 	sh	t5,1020(a0)
    2020:	8fbf001c 	lw	ra,28(sp)
    2024:	27bd0020 	addiu	sp,sp,32
    2028:	03e00008 	jr	ra
    202c:	00000000 	nop

00002030 <func_80ACBF50>:
    2030:	27bdffd8 	addiu	sp,sp,-40
    2034:	afb00020 	sw	s0,32(sp)
    2038:	00808025 	move	s0,a0
    203c:	afbf0024 	sw	ra,36(sp)
    2040:	afa5002c 	sw	a1,44(sp)
    2044:	86050400 	lh	a1,1024(s0)
    2048:	240e0258 	li	t6,600
    204c:	afae0010 	sw	t6,16(sp)
    2050:	24840032 	addiu	a0,a0,50
    2054:	24060002 	li	a2,2
    2058:	0c000000 	jal	0 <EnOwl_Init>
    205c:	24070384 	li	a3,900
    2060:	960203fc 	lhu	v0,1020(s0)
    2064:	860f0032 	lh	t7,50(s0)
    2068:	02002025 	move	a0,s0
    206c:	30580001 	andi	t8,v0,0x1
    2070:	13000017 	beqz	t8,20d0 <func_80ACBF50+0xa0>
    2074:	a60f00b6 	sh	t7,182(s0)
    2078:	44802000 	mtc1	zero,$f4
    207c:	3c190600 	lui	t9,0x600
    2080:	273915cc 	addiu	t9,t9,5580
    2084:	3c050000 	lui	a1,0x0
    2088:	3c060000 	lui	a2,0x0
    208c:	24c60000 	addiu	a2,a2,0
    2090:	24a50000 	addiu	a1,a1,0
    2094:	afb90010 	sw	t9,16(sp)
    2098:	26070198 	addiu	a3,s0,408
    209c:	0c000000 	jal	0 <EnOwl_Init>
    20a0:	e7a40014 	swc1	$f4,20(sp)
    20a4:	3c014000 	lui	at,0x4000
    20a8:	44813000 	mtc1	at,$f6
    20ac:	3c014080 	lui	at,0x4080
    20b0:	44804000 	mtc1	zero,$f8
    20b4:	44815000 	mtc1	at,$f10
    20b8:	24080006 	li	t0,6
    20bc:	a60803fe 	sh	t0,1022(s0)
    20c0:	960203fc 	lhu	v0,1020(s0)
    20c4:	e6060060 	swc1	$f6,96(s0)
    20c8:	e608006c 	swc1	$f8,108(s0)
    20cc:	e60a0068 	swc1	$f10,104(s0)
    20d0:	34490008 	ori	t1,v0,0x8
    20d4:	a60903fc 	sh	t1,1020(s0)
    20d8:	8fbf0024 	lw	ra,36(sp)
    20dc:	8fb00020 	lw	s0,32(sp)
    20e0:	27bd0028 	addiu	sp,sp,40
    20e4:	03e00008 	jr	ra
    20e8:	00000000 	nop

000020ec <func_80ACC00C>:
    20ec:	27bdffd0 	addiu	sp,sp,-48
    20f0:	afb00020 	sw	s0,32(sp)
    20f4:	00808025 	move	s0,a0
    20f8:	afbf0024 	sw	ra,36(sp)
    20fc:	afa50034 	sw	a1,52(sp)
    2100:	86050400 	lh	a1,1024(s0)
    2104:	240e0258 	li	t6,600
    2108:	afae0010 	sw	t6,16(sp)
    210c:	24840032 	addiu	a0,a0,50
    2110:	24060002 	li	a2,2
    2114:	0c000000 	jal	0 <EnOwl_Init>
    2118:	24070384 	li	a3,900
    211c:	3c014248 	lui	at,0x4248
    2120:	44813000 	mtc1	at,$f6
    2124:	c6040090 	lwc1	$f4,144(s0)
    2128:	860f0032 	lh	t7,50(s0)
    212c:	4606203c 	c.lt.s	$f4,$f6
    2130:	a60f00b6 	sh	t7,182(s0)
    2134:	45020060 	bc1fl	22b8 <func_80ACC00C+0x1cc>
    2138:	3c014214 	lui	at,0x4214
    213c:	0c000000 	jal	0 <EnOwl_Init>
    2140:	8fa40034 	lw	a0,52(sp)
    2144:	5440005c 	bnezl	v0,22b8 <func_80ACC00C+0x1cc>
    2148:	3c014214 	lui	at,0x4214
    214c:	8618001c 	lh	t8,28(s0)
    2150:	3c040000 	lui	a0,0x0
    2154:	24840000 	addiu	a0,a0,0
    2158:	33190fc0 	andi	t9,t8,0xfc0
    215c:	00194183 	sra	t0,t9,0x6
    2160:	0c000000 	jal	0 <EnOwl_Init>
    2164:	afa8002c 	sw	t0,44(sp)
    2168:	3c040000 	lui	a0,0x0
    216c:	24840000 	addiu	a0,a0,0
    2170:	0c000000 	jal	0 <EnOwl_Init>
    2174:	8fa5002c 	lw	a1,44(sp)
    2178:	3c040000 	lui	a0,0x0
    217c:	0c000000 	jal	0 <EnOwl_Init>
    2180:	24840000 	addiu	a0,a0,0
    2184:	8fa2002c 	lw	v0,44(sp)
    2188:	24010007 	li	at,7
    218c:	3c040000 	lui	a0,0x0
    2190:	10410008 	beq	v0,at,21b4 <func_80ACC00C+0xc8>
    2194:	24010008 	li	at,8
    2198:	10410020 	beq	v0,at,221c <func_80ACC00C+0x130>
    219c:	3c0a0000 	lui	t2,0x0
    21a0:	24010009 	li	at,9
    21a4:	1041001d 	beq	v0,at,221c <func_80ACC00C+0x130>
    21a8:	3c040000 	lui	a0,0x0
    21ac:	1000002c 	b	2260 <func_80ACC00C+0x174>
    21b0:	24840000 	addiu	a0,a0,0
    21b4:	0c000000 	jal	0 <EnOwl_Init>
    21b8:	24840000 	addiu	a0,a0,0
    21bc:	3c040000 	lui	a0,0x0
    21c0:	0c000000 	jal	0 <EnOwl_Init>
    21c4:	24840000 	addiu	a0,a0,0
    21c8:	3c040000 	lui	a0,0x0
    21cc:	0c000000 	jal	0 <EnOwl_Init>
    21d0:	24840000 	addiu	a0,a0,0
    21d4:	3c020202 	lui	v0,0x202
    21d8:	2442b0c0 	addiu	v0,v0,-20288
    21dc:	00024900 	sll	t1,v0,0x4
    21e0:	00095702 	srl	t2,t1,0x1c
    21e4:	000a5880 	sll	t3,t2,0x2
    21e8:	3c0c0000 	lui	t4,0x0
    21ec:	018b6021 	addu	t4,t4,t3
    21f0:	3c0100ff 	lui	at,0xff
    21f4:	8d8c0000 	lw	t4,0(t4)
    21f8:	3421ffff 	ori	at,at,0xffff
    21fc:	00416824 	and	t5,v0,at
    2200:	8fb80034 	lw	t8,52(sp)
    2204:	3c018000 	lui	at,0x8000
    2208:	018d7021 	addu	t6,t4,t5
    220c:	01c17821 	addu	t7,t6,at
    2210:	af0f1d68 	sw	t7,7528(t8)
    2214:	10000016 	b	2270 <func_80ACC00C+0x184>
    2218:	ae000134 	sw	zero,308(s0)
    221c:	3c020202 	lui	v0,0x202
    2220:	2442e6a0 	addiu	v0,v0,-6496
    2224:	0002c900 	sll	t9,v0,0x4
    2228:	00194702 	srl	t0,t9,0x1c
    222c:	00084880 	sll	t1,t0,0x2
    2230:	01495021 	addu	t2,t2,t1
    2234:	3c0100ff 	lui	at,0xff
    2238:	8d4a0000 	lw	t2,0(t2)
    223c:	3421ffff 	ori	at,at,0xffff
    2240:	00415824 	and	t3,v0,at
    2244:	8fae0034 	lw	t6,52(sp)
    2248:	3c018000 	lui	at,0x8000
    224c:	014b6021 	addu	t4,t2,t3
    2250:	01816821 	addu	t5,t4,at
    2254:	adcd1d68 	sw	t5,7528(t6)
    2258:	10000005 	b	2270 <func_80ACC00C+0x184>
    225c:	ae000134 	sw	zero,308(s0)
    2260:	3c050000 	lui	a1,0x0
    2264:	24a50000 	addiu	a1,a1,0
    2268:	0c000000 	jal	0 <EnOwl_Init>
    226c:	2406069d 	li	a2,1693
    2270:	0c000000 	jal	0 <EnOwl_Init>
    2274:	24044807 	li	a0,18439
    2278:	240f0001 	li	t7,1
    227c:	3c010000 	lui	at,0x0
    2280:	a02f1414 	sb	t7,5140(at)
    2284:	24040014 	li	a0,20
    2288:	0c000000 	jal	0 <EnOwl_Init>
    228c:	2405000a 	li	a1,10
    2290:	961903fc 	lhu	t9,1020(s0)
    2294:	3c180000 	lui	t8,0x0
    2298:	27180000 	addiu	t8,t8,0
    229c:	37280080 	ori	t0,t9,0x80
    22a0:	ae18040c 	sw	t8,1036(s0)
    22a4:	a200040a 	sb	zero,1034(s0)
    22a8:	a60803fc 	sh	t0,1020(s0)
    22ac:	3c010000 	lui	at,0x0
    22b0:	a4200000 	sh	zero,0(at)
    22b4:	3c014214 	lui	at,0x4214
    22b8:	44815000 	mtc1	at,$f10
    22bc:	c60801b0 	lwc1	$f8,432(s0)
    22c0:	4608503e 	c.le.s	$f10,$f8
    22c4:	00000000 	nop
    22c8:	4502000d 	bc1fl	2300 <func_80ACC00C+0x214>
    22cc:	960b03fc 	lhu	t3,1020(s0)
    22d0:	960203fe 	lhu	v0,1022(s0)
    22d4:	3c0a0000 	lui	t2,0x0
    22d8:	3c0141a8 	lui	at,0x41a8
    22dc:	18400006 	blez	v0,22f8 <func_80ACC00C+0x20c>
    22e0:	254a0000 	addiu	t2,t2,0
    22e4:	44818000 	mtc1	at,$f16
    22e8:	2449ffff 	addiu	t1,v0,-1
    22ec:	a60903fe 	sh	t1,1022(s0)
    22f0:	10000002 	b	22fc <func_80ACC00C+0x210>
    22f4:	e61001b0 	swc1	$f16,432(s0)
    22f8:	ae0a040c 	sw	t2,1036(s0)
    22fc:	960b03fc 	lhu	t3,1020(s0)
    2300:	356c0008 	ori	t4,t3,0x8
    2304:	a60c03fc 	sh	t4,1020(s0)
    2308:	8fbf0024 	lw	ra,36(sp)
    230c:	8fb00020 	lw	s0,32(sp)
    2310:	27bd0030 	addiu	sp,sp,48
    2314:	03e00008 	jr	ra
    2318:	00000000 	nop

0000231c <func_80ACC23C>:
    231c:	27bdffd8 	addiu	sp,sp,-40
    2320:	afbf0024 	sw	ra,36(sp)
    2324:	afb00020 	sw	s0,32(sp)
    2328:	afa5002c 	sw	a1,44(sp)
    232c:	3c0141a0 	lui	at,0x41a0
    2330:	44813000 	mtc1	at,$f6
    2334:	c48401b0 	lwc1	$f4,432(a0)
    2338:	00808025 	move	s0,a0
    233c:	3c013fc0 	lui	at,0x3fc0
    2340:	4606203c 	c.lt.s	$f4,$f6
    2344:	24060002 	li	a2,2
    2348:	24070384 	li	a3,900
    234c:	240e0258 	li	t6,600
    2350:	45020005 	bc1fl	2368 <func_80ACC23C+0x4c>
    2354:	44805000 	mtc1	zero,$f10
    2358:	44814000 	mtc1	at,$f8
    235c:	10000009 	b	2384 <func_80ACC23C+0x68>
    2360:	e4880068 	swc1	$f8,104(a0)
    2364:	44805000 	mtc1	zero,$f10
    2368:	86050400 	lh	a1,1024(s0)
    236c:	26040032 	addiu	a0,s0,50
    2370:	e60a0068 	swc1	$f10,104(s0)
    2374:	0c000000 	jal	0 <EnOwl_Init>
    2378:	afae0010 	sw	t6,16(sp)
    237c:	860f0032 	lh	t7,50(s0)
    2380:	a60f00b6 	sh	t7,182(s0)
    2384:	3c014214 	lui	at,0x4214
    2388:	44819000 	mtc1	at,$f18
    238c:	c61001b0 	lwc1	$f16,432(s0)
    2390:	3c180000 	lui	t8,0x0
    2394:	3c0141a8 	lui	at,0x41a8
    2398:	4610903e 	c.le.s	$f18,$f16
    239c:	27180000 	addiu	t8,t8,0
    23a0:	24190005 	li	t9,5
    23a4:	4502000a 	bc1fl	23d0 <func_80ACC23C+0xb4>
    23a8:	960803fc 	lhu	t0,1020(s0)
    23ac:	44800000 	mtc1	zero,$f0
    23b0:	44812000 	mtc1	at,$f4
    23b4:	ae18040c 	sw	t8,1036(s0)
    23b8:	a61903fe 	sh	t9,1022(s0)
    23bc:	e6000060 	swc1	$f0,96(s0)
    23c0:	e600006c 	swc1	$f0,108(s0)
    23c4:	e6000068 	swc1	$f0,104(s0)
    23c8:	e60401b0 	swc1	$f4,432(s0)
    23cc:	960803fc 	lhu	t0,1020(s0)
    23d0:	35090008 	ori	t1,t0,0x8
    23d4:	a60903fc 	sh	t1,1020(s0)
    23d8:	8fbf0024 	lw	ra,36(sp)
    23dc:	8fb00020 	lw	s0,32(sp)
    23e0:	27bd0028 	addiu	sp,sp,40
    23e4:	03e00008 	jr	ra
    23e8:	00000000 	nop

000023ec <func_80ACC30C>:
    23ec:	27bdffe0 	addiu	sp,sp,-32
    23f0:	afbf001c 	sw	ra,28(sp)
    23f4:	afa50024 	sw	a1,36(sp)
    23f8:	948203fc 	lhu	v0,1020(a0)
    23fc:	3c050000 	lui	a1,0x0
    2400:	240f0003 	li	t7,3
    2404:	304e0001 	andi	t6,v0,0x1
    2408:	11c00013 	beqz	t6,2458 <func_80ACC30C+0x6c>
    240c:	24a50000 	addiu	a1,a1,0
    2410:	44802000 	mtc1	zero,$f4
    2414:	a48f03fe 	sh	t7,1022(a0)
    2418:	3c180600 	lui	t8,0x600
    241c:	27181168 	addiu	t8,t8,4456
    2420:	3c060000 	lui	a2,0x0
    2424:	24c60000 	addiu	a2,a2,0
    2428:	afb80010 	sw	t8,16(sp)
    242c:	afa40020 	sw	a0,32(sp)
    2430:	24870198 	addiu	a3,a0,408
    2434:	0c000000 	jal	0 <EnOwl_Init>
    2438:	e7a40014 	swc1	$f4,20(sp)
    243c:	8fa40020 	lw	a0,32(sp)
    2440:	3c010000 	lui	at,0x0
    2444:	c4860028 	lwc1	$f6,40(a0)
    2448:	948203fc 	lhu	v0,1020(a0)
    244c:	e48603f8 	swc1	$f6,1016(a0)
    2450:	c4280000 	lwc1	$f8,0(at)
    2454:	e4880060 	swc1	$f8,96(a0)
    2458:	34590008 	ori	t9,v0,0x8
    245c:	a49903fc 	sh	t9,1020(a0)
    2460:	8fbf001c 	lw	ra,28(sp)
    2464:	27bd0020 	addiu	sp,sp,32
    2468:	03e00008 	jr	ra
    246c:	00000000 	nop

00002470 <func_80ACC390>:
    2470:	27bdffd0 	addiu	sp,sp,-48
    2474:	afb00028 	sw	s0,40(sp)
    2478:	00808025 	move	s0,a0
    247c:	afbf002c 	sw	ra,44(sp)
    2480:	0c000000 	jal	0 <EnOwl_Init>
    2484:	8c8403dc 	lw	a0,988(a0)
    2488:	960303fe 	lhu	v1,1022(s0)
    248c:	3c190000 	lui	t9,0x0
    2490:	27390000 	addiu	t9,t9,0
    2494:	18600012 	blez	v1,24e0 <func_80ACC390+0x70>
    2498:	24080006 	li	t0,6
    249c:	246effff 	addiu	t6,v1,-1
    24a0:	31c4ffff 	andi	a0,t6,0xffff
    24a4:	24010333 	li	at,819
    24a8:	00810019 	multu	a0,at
    24ac:	a60e03fe 	sh	t6,1022(s0)
    24b0:	00002012 	mflo	a0
    24b4:	00042400 	sll	a0,a0,0x10
    24b8:	0c000000 	jal	0 <EnOwl_Init>
    24bc:	00042403 	sra	a0,a0,0x10
    24c0:	3c01447a 	lui	at,0x447a
    24c4:	44812000 	mtc1	at,$f4
    24c8:	00000000 	nop
    24cc:	46040182 	mul.s	$f6,$f0,$f4
    24d0:	4600320d 	trunc.w.s	$f8,$f6
    24d4:	44184000 	mfc1	t8,$f8
    24d8:	10000014 	b	252c <func_80ACC390+0xbc>
    24dc:	a61800b8 	sh	t8,184(s0)
    24e0:	3c040600 	lui	a0,0x600
    24e4:	ae190410 	sw	t9,1040(s0)
    24e8:	a60803fe 	sh	t0,1022(s0)
    24ec:	0c000000 	jal	0 <EnOwl_Init>
    24f0:	248415cc 	addiu	a0,a0,5580
    24f4:	44825000 	mtc1	v0,$f10
    24f8:	3c0140a0 	lui	at,0x40a0
    24fc:	44819000 	mtc1	at,$f18
    2500:	46805420 	cvt.s.w	$f16,$f10
    2504:	8e0403dc 	lw	a0,988(s0)
    2508:	3c050600 	lui	a1,0x600
    250c:	24090002 	li	t1,2
    2510:	afa90014 	sw	t1,20(sp)
    2514:	24a515cc 	addiu	a1,a1,5580
    2518:	e7b00010 	swc1	$f16,16(sp)
    251c:	3c063f80 	lui	a2,0x3f80
    2520:	24070000 	li	a3,0
    2524:	0c000000 	jal	0 <EnOwl_Init>
    2528:	e7b20018 	swc1	$f18,24(sp)
    252c:	8fbf002c 	lw	ra,44(sp)
    2530:	8fb00028 	lw	s0,40(sp)
    2534:	27bd0030 	addiu	sp,sp,48
    2538:	03e00008 	jr	ra
    253c:	00000000 	nop

00002540 <func_80ACC460>:
    2540:	27bdffd0 	addiu	sp,sp,-48
    2544:	afb00028 	sw	s0,40(sp)
    2548:	00808025 	move	s0,a0
    254c:	afbf002c 	sw	ra,44(sp)
    2550:	0c000000 	jal	0 <EnOwl_Init>
    2554:	8c8403dc 	lw	a0,988(a0)
    2558:	5040002d 	beqzl	v0,2610 <func_80ACC460+0xd0>
    255c:	8fbf002c 	lw	ra,44(sp)
    2560:	960203fe 	lhu	v0,1022(s0)
    2564:	3c080000 	lui	t0,0x0
    2568:	241900a0 	li	t9,160
    256c:	18400014 	blez	v0,25c0 <func_80ACC460+0x80>
    2570:	25080000 	addiu	t0,t0,0
    2574:	8e0f03dc 	lw	t7,988(s0)
    2578:	244effff 	addiu	t6,v0,-1
    257c:	a60e03fe 	sh	t6,1022(s0)
    2580:	0c000000 	jal	0 <EnOwl_Init>
    2584:	8de40008 	lw	a0,8(t7)
    2588:	44822000 	mtc1	v0,$f4
    258c:	8e0403dc 	lw	a0,988(s0)
    2590:	44800000 	mtc1	zero,$f0
    2594:	468021a0 	cvt.s.w	$f6,$f4
    2598:	8c850008 	lw	a1,8(a0)
    259c:	24180002 	li	t8,2
    25a0:	44070000 	mfc1	a3,$f0
    25a4:	afb80014 	sw	t8,20(sp)
    25a8:	3c063f80 	lui	a2,0x3f80
    25ac:	e7a60010 	swc1	$f6,16(sp)
    25b0:	0c000000 	jal	0 <EnOwl_Init>
    25b4:	e7a00018 	swc1	$f0,24(sp)
    25b8:	10000015 	b	2610 <func_80ACC460+0xd0>
    25bc:	8fbf002c 	lw	ra,44(sp)
    25c0:	3c040601 	lui	a0,0x601
    25c4:	a61903fe 	sh	t9,1022(s0)
    25c8:	ae080410 	sw	t0,1040(s0)
    25cc:	0c000000 	jal	0 <EnOwl_Init>
    25d0:	2484c1c4 	addiu	a0,a0,-15932
    25d4:	44824000 	mtc1	v0,$f8
    25d8:	44800000 	mtc1	zero,$f0
    25dc:	3c0140a0 	lui	at,0x40a0
    25e0:	468042a0 	cvt.s.w	$f10,$f8
    25e4:	44818000 	mtc1	at,$f16
    25e8:	8e0403dc 	lw	a0,988(s0)
    25ec:	3c050601 	lui	a1,0x601
    25f0:	44070000 	mfc1	a3,$f0
    25f4:	24a5c1c4 	addiu	a1,a1,-15932
    25f8:	afa00014 	sw	zero,20(sp)
    25fc:	e7aa0010 	swc1	$f10,16(sp)
    2600:	3c063f80 	lui	a2,0x3f80
    2604:	0c000000 	jal	0 <EnOwl_Init>
    2608:	e7b00018 	swc1	$f16,24(sp)
    260c:	8fbf002c 	lw	ra,44(sp)
    2610:	8fb00028 	lw	s0,40(sp)
    2614:	27bd0030 	addiu	sp,sp,48
    2618:	03e00008 	jr	ra
    261c:	00000000 	nop

00002620 <func_80ACC540>:
    2620:	27bdffd0 	addiu	sp,sp,-48
    2624:	afb00028 	sw	s0,40(sp)
    2628:	00808025 	move	s0,a0
    262c:	afbf002c 	sw	ra,44(sp)
    2630:	0c000000 	jal	0 <EnOwl_Init>
    2634:	8c8403dc 	lw	a0,988(a0)
    2638:	50400015 	beqzl	v0,2690 <func_80ACC540+0x70>
    263c:	960803fc 	lhu	t0,1020(s0)
    2640:	8e0e03dc 	lw	t6,988(s0)
    2644:	0c000000 	jal	0 <EnOwl_Init>
    2648:	8dc40008 	lw	a0,8(t6)
    264c:	44822000 	mtc1	v0,$f4
    2650:	8e0403dc 	lw	a0,988(s0)
    2654:	44800000 	mtc1	zero,$f0
    2658:	468021a0 	cvt.s.w	$f6,$f4
    265c:	8c850008 	lw	a1,8(a0)
    2660:	240f0002 	li	t7,2
    2664:	44070000 	mfc1	a3,$f0
    2668:	afaf0014 	sw	t7,20(sp)
    266c:	3c063f80 	lui	a2,0x3f80
    2670:	e7a60010 	swc1	$f6,16(sp)
    2674:	0c000000 	jal	0 <EnOwl_Init>
    2678:	e7a00018 	swc1	$f0,24(sp)
    267c:	961803fc 	lhu	t8,1020(s0)
    2680:	37190001 	ori	t9,t8,0x1
    2684:	10000004 	b	2698 <func_80ACC540+0x78>
    2688:	a61903fc 	sh	t9,1020(s0)
    268c:	960803fc 	lhu	t0,1020(s0)
    2690:	3109fffe 	andi	t1,t0,0xfffe
    2694:	a60903fc 	sh	t1,1020(s0)
    2698:	8fbf002c 	lw	ra,44(sp)
    269c:	8fb00028 	lw	s0,40(sp)
    26a0:	27bd0030 	addiu	sp,sp,48
    26a4:	03e00008 	jr	ra
    26a8:	00000000 	nop

000026ac <func_80ACC5CC>:
    26ac:	948203fc 	lhu	v0,1020(a0)
    26b0:	00001825 	move	v1,zero
    26b4:	304e0002 	andi	t6,v0,0x2
    26b8:	11c00003 	beqz	t6,26c8 <func_80ACC5CC+0x1c>
    26bc:	30580020 	andi	t8,v0,0x20
    26c0:	10000001 	b	26c8 <func_80ACC5CC+0x1c>
    26c4:	24030020 	li	v1,32
    26c8:	848503ee 	lh	a1,1006(a0)
    26cc:	00001025 	move	v0,zero
    26d0:	30af003f 	andi	t7,a1,0x3f
    26d4:	146f0003 	bne	v1,t7,26e4 <func_80ACC5CC+0x38>
    26d8:	00000000 	nop
    26dc:	03e00008 	jr	ra
    26e0:	24020001 	li	v0,1
    26e4:	13000004 	beqz	t8,26f8 <func_80ACC5CC+0x4c>
    26e8:	24a8fffc 	addiu	t0,a1,-4
    26ec:	24b90004 	addiu	t9,a1,4
    26f0:	10000002 	b	26fc <func_80ACC5CC+0x50>
    26f4:	a49903ee 	sh	t9,1006(a0)
    26f8:	a48803ee 	sh	t0,1006(a0)
    26fc:	03e00008 	jr	ra
    2700:	00000000 	nop

00002704 <func_80ACC624>:
    2704:	8482001c 	lh	v0,28(a0)
    2708:	84ae00a4 	lh	t6,164(a1)
    270c:	2401005c 	li	at,92
    2710:	30420fc0 	andi	v0,v0,0xfc0
    2714:	11c10003 	beq	t6,at,2724 <func_80ACC624+0x20>
    2718:	00021183 	sra	v0,v0,0x6
    271c:	03e00008 	jr	ra
    2720:	24020001 	li	v0,1
    2724:	2401000a 	li	at,10
    2728:	54410004 	bnel	v0,at,273c <func_80ACC624+0x38>
    272c:	94a21d74 	lhu	v0,7540(a1)
    2730:	03e00008 	jr	ra
    2734:	24020001 	li	v0,1
    2738:	94a21d74 	lhu	v0,7540(a1)
    273c:	2841012c 	slti	at,v0,300
    2740:	14200005 	bnez	at,2758 <func_80ACC624+0x54>
    2744:	284101af 	slti	at,v0,431
    2748:	50200004 	beqzl	at,275c <func_80ACC624+0x58>
    274c:	28410438 	slti	at,v0,1080
    2750:	03e00008 	jr	ra
    2754:	24020001 	li	v0,1
    2758:	28410438 	slti	at,v0,1080
    275c:	14200005 	bnez	at,2774 <func_80ACC624+0x70>
    2760:	28410493 	slti	at,v0,1171
    2764:	50200004 	beqzl	at,2778 <func_80ACC624+0x74>
    2768:	00001025 	move	v0,zero
    276c:	03e00008 	jr	ra
    2770:	24020001 	li	v0,1
    2774:	00001025 	move	v0,zero
    2778:	03e00008 	jr	ra
    277c:	00000000 	nop

00002780 <EnOwl_Update>:
    2780:	27bdffc0 	addiu	sp,sp,-64
    2784:	afb00020 	sw	s0,32(sp)
    2788:	00808025 	move	s0,a0
    278c:	afbf0024 	sw	ra,36(sp)
    2790:	afa50044 	sw	a1,68(sp)
    2794:	2606014c 	addiu	a2,s0,332
    2798:	00c02825 	move	a1,a2
    279c:	0c000000 	jal	0 <EnOwl_Init>
    27a0:	afa6002c 	sw	a2,44(sp)
    27a4:	8fa40044 	lw	a0,68(sp)
    27a8:	3c010001 	lui	at,0x1
    27ac:	34211e60 	ori	at,at,0x1e60
    27b0:	8fa6002c 	lw	a2,44(sp)
    27b4:	0c000000 	jal	0 <EnOwl_Init>
    27b8:	00812821 	addu	a1,a0,at
    27bc:	3c014120 	lui	at,0x4120
    27c0:	44810000 	mtc1	at,$f0
    27c4:	240e0005 	li	t6,5
    27c8:	afae0014 	sw	t6,20(sp)
    27cc:	44060000 	mfc1	a2,$f0
    27d0:	44070000 	mfc1	a3,$f0
    27d4:	8fa40044 	lw	a0,68(sp)
    27d8:	02002825 	move	a1,s0
    27dc:	0c000000 	jal	0 <EnOwl_Init>
    27e0:	e7a00010 	swc1	$f0,16(sp)
    27e4:	8e190410 	lw	t9,1040(s0)
    27e8:	02002025 	move	a0,s0
    27ec:	0320f809 	jalr	t9
    27f0:	00000000 	nop
    27f4:	960f03fc 	lhu	t7,1020(s0)
    27f8:	8e19040c 	lw	t9,1036(s0)
    27fc:	02002025 	move	a0,s0
    2800:	31f8fff7 	andi	t8,t7,0xfff7
    2804:	a61803fc 	sh	t8,1020(s0)
    2808:	0320f809 	jalr	t9
    280c:	8fa50044 	lw	a1,68(sp)
    2810:	8e080130 	lw	t0,304(s0)
    2814:	3c040000 	lui	a0,0x0
    2818:	55000006 	bnezl	t0,2834 <EnOwl_Update+0xb4>
    281c:	960903fc 	lhu	t1,1020(s0)
    2820:	0c000000 	jal	0 <EnOwl_Init>
    2824:	24840000 	addiu	a0,a0,0
    2828:	100001a9 	b	2ed0 <EnOwl_Update+0x750>
    282c:	8fbf0024 	lw	ra,36(sp)
    2830:	960903fc 	lhu	t1,1020(s0)
    2834:	02002025 	move	a0,s0
    2838:	312a0080 	andi	t2,t1,0x80
    283c:	55400035 	bnezl	t2,2914 <EnOwl_Update+0x194>
    2840:	8e0d0134 	lw	t5,308(s0)
    2844:	0c000000 	jal	0 <EnOwl_Init>
    2848:	8fa50044 	lw	a1,68(sp)
    284c:	50400031 	beqzl	v0,2914 <EnOwl_Update+0x194>
    2850:	8e0d0134 	lw	t5,308(s0)
    2854:	8e0201a0 	lw	v0,416(s0)
    2858:	3c0b0600 	lui	t3,0x600
    285c:	256b1168 	addiu	t3,t3,4456
    2860:	1562001f 	bne	t3,v0,28e0 <EnOwl_Update+0x160>
    2864:	3c014000 	lui	at,0x4000
    2868:	c60001b0 	lwc1	$f0,432(s0)
    286c:	44812000 	mtc1	at,$f4
    2870:	3c014110 	lui	at,0x4110
    2874:	46002032 	c.eq.s	$f4,$f0
    2878:	00000000 	nop
    287c:	45030022 	bc1tl	2908 <EnOwl_Update+0x188>
    2880:	02002025 	move	a0,s0
    2884:	44813000 	mtc1	at,$f6
    2888:	3c0141b8 	lui	at,0x41b8
    288c:	46003032 	c.eq.s	$f6,$f0
    2890:	00000000 	nop
    2894:	4503001c 	bc1tl	2908 <EnOwl_Update+0x188>
    2898:	02002025 	move	a0,s0
    289c:	44814000 	mtc1	at,$f8
    28a0:	3c014220 	lui	at,0x4220
    28a4:	46004032 	c.eq.s	$f8,$f0
    28a8:	00000000 	nop
    28ac:	45030016 	bc1tl	2908 <EnOwl_Update+0x188>
    28b0:	02002025 	move	a0,s0
    28b4:	44815000 	mtc1	at,$f10
    28b8:	3c014268 	lui	at,0x4268
    28bc:	46005032 	c.eq.s	$f10,$f0
    28c0:	00000000 	nop
    28c4:	45030010 	bc1tl	2908 <EnOwl_Update+0x188>
    28c8:	02002025 	move	a0,s0
    28cc:	44818000 	mtc1	at,$f16
    28d0:	00000000 	nop
    28d4:	46008032 	c.eq.s	$f16,$f0
    28d8:	00000000 	nop
    28dc:	45010009 	bc1t	2904 <EnOwl_Update+0x184>
    28e0:	3c0c0600 	lui	t4,0x600
    28e4:	258c15cc 	addiu	t4,t4,5580
    28e8:	15820009 	bne	t4,v0,2910 <EnOwl_Update+0x190>
    28ec:	3c014080 	lui	at,0x4080
    28f0:	44819000 	mtc1	at,$f18
    28f4:	c60401b0 	lwc1	$f4,432(s0)
    28f8:	46049032 	c.eq.s	$f18,$f4
    28fc:	00000000 	nop
    2900:	45000003 	bc1f	2910 <EnOwl_Update+0x190>
    2904:	02002025 	move	a0,s0
    2908:	0c000000 	jal	0 <EnOwl_Init>
    290c:	24053926 	li	a1,14630
    2910:	8e0d0134 	lw	t5,308(s0)
    2914:	51a00004 	beqzl	t5,2928 <EnOwl_Update+0x1a8>
    2918:	960e03fc 	lhu	t6,1020(s0)
    291c:	0c000000 	jal	0 <EnOwl_Init>
    2920:	02002025 	move	a0,s0
    2924:	960e03fc 	lhu	t6,1020(s0)
    2928:	24180002 	li	t8,2
    292c:	31cf0002 	andi	t7,t6,0x2
    2930:	51e00004 	beqzl	t7,2944 <EnOwl_Update+0x1c4>
    2934:	860303f6 	lh	v1,1014(s0)
    2938:	10000016 	b	2994 <EnOwl_Update+0x214>
    293c:	a61803f4 	sh	t8,1012(s0)
    2940:	860303f6 	lh	v1,1014(s0)
    2944:	2404003c 	li	a0,60
    2948:	14600003 	bnez	v1,2958 <EnOwl_Update+0x1d8>
    294c:	2479ffff 	addiu	t9,v1,-1
    2950:	10000004 	b	2964 <EnOwl_Update+0x1e4>
    2954:	00001025 	move	v0,zero
    2958:	a61903f6 	sh	t9,1014(s0)
    295c:	860303f6 	lh	v1,1014(s0)
    2960:	00601025 	move	v0,v1
    2964:	54400006 	bnezl	v0,2980 <EnOwl_Update+0x200>
    2968:	a60303f4 	sh	v1,1012(s0)
    296c:	0c000000 	jal	0 <EnOwl_Init>
    2970:	2405003c 	li	a1,60
    2974:	a60203f6 	sh	v0,1014(s0)
    2978:	860303f6 	lh	v1,1014(s0)
    297c:	a60303f4 	sh	v1,1012(s0)
    2980:	860803f4 	lh	t0,1012(s0)
    2984:	29010003 	slti	at,t0,3
    2988:	54200003 	bnezl	at,2998 <EnOwl_Update+0x218>
    298c:	960203fc 	lhu	v0,1020(s0)
    2990:	a60003f4 	sh	zero,1012(s0)
    2994:	960203fc 	lhu	v0,1020(s0)
    2998:	30490008 	andi	t1,v0,0x8
    299c:	1520013e 	bnez	t1,2e98 <EnOwl_Update+0x718>
    29a0:	304f0002 	andi	t7,v0,0x2
    29a4:	304a0010 	andi	t2,v0,0x10
    29a8:	11400055 	beqz	t2,2b00 <EnOwl_Update+0x380>
    29ac:	00002825 	move	a1,zero
    29b0:	92020404 	lbu	v0,1028(s0)
    29b4:	24010001 	li	at,1
    29b8:	240b0001 	li	t3,1
    29bc:	10400007 	beqz	v0,29dc <EnOwl_Update+0x25c>
    29c0:	240c0006 	li	t4,6
    29c4:	10410008 	beq	v0,at,29e8 <EnOwl_Update+0x268>
    29c8:	24010002 	li	at,2
    29cc:	10410037 	beq	v0,at,2aac <EnOwl_Update+0x32c>
    29d0:	02002025 	move	a0,s0
    29d4:	10000125 	b	2e6c <EnOwl_Update+0x6ec>
    29d8:	860a03ee 	lh	t2,1006(s0)
    29dc:	a20b0404 	sb	t3,1028(s0)
    29e0:	10000121 	b	2e68 <EnOwl_Update+0x6e8>
    29e4:	a20c0405 	sb	t4,1029(s0)
    29e8:	920d0405 	lbu	t5,1029(s0)
    29ec:	25aeffff 	addiu	t6,t5,-1
    29f0:	31c200ff 	andi	v0,t6,0xff
    29f4:	1040000f 	beqz	v0,2a34 <EnOwl_Update+0x2b4>
    29f8:	a20e0405 	sb	t6,1029(s0)
    29fc:	00402025 	move	a0,v0
    2a00:	00042740 	sll	a0,a0,0x1d
    2a04:	0c000000 	jal	0 <EnOwl_Init>
    2a08:	00042403 	sra	a0,a0,0x10
    2a0c:	3c014580 	lui	at,0x4580
    2a10:	44813000 	mtc1	at,$f6
    2a14:	00000000 	nop
    2a18:	46060202 	mul.s	$f8,$f0,$f6
    2a1c:	4600428d 	trunc.w.s	$f10,$f8
    2a20:	44055000 	mfc1	a1,$f10
    2a24:	00000000 	nop
    2a28:	00052c00 	sll	a1,a1,0x10
    2a2c:	10000017 	b	2a8c <EnOwl_Update+0x30c>
    2a30:	00052c03 	sra	a1,a1,0x10
    2a34:	961803fc 	lhu	t8,1020(s0)
    2a38:	24080020 	li	t0,32
    2a3c:	33190002 	andi	t9,t8,0x2
    2a40:	53200004 	beqzl	t9,2a54 <EnOwl_Update+0x2d4>
    2a44:	a60803ee 	sh	t0,1006(s0)
    2a48:	10000002 	b	2a54 <EnOwl_Update+0x2d4>
    2a4c:	a60003ee 	sh	zero,1006(s0)
    2a50:	a60803ee 	sh	t0,1006(s0)
    2a54:	960903fc 	lhu	t1,1020(s0)
    2a58:	312a0020 	andi	t2,t1,0x20
    2a5c:	51400006 	beqzl	t2,2a78 <EnOwl_Update+0x2f8>
    2a60:	860d03ee 	lh	t5,1006(s0)
    2a64:	860b03ee 	lh	t3,1006(s0)
    2a68:	256cfffc 	addiu	t4,t3,-4
    2a6c:	10000004 	b	2a80 <EnOwl_Update+0x300>
    2a70:	a60c03ee 	sh	t4,1006(s0)
    2a74:	860d03ee 	lh	t5,1006(s0)
    2a78:	25ae0004 	addiu	t6,t5,4
    2a7c:	a60e03ee 	sh	t6,1006(s0)
    2a80:	920f0404 	lbu	t7,1028(s0)
    2a84:	25f80001 	addiu	t8,t7,1
    2a88:	a2180404 	sb	t8,1028(s0)
    2a8c:	961903fc 	lhu	t9,1020(s0)
    2a90:	33280020 	andi	t0,t9,0x20
    2a94:	510000f5 	beqzl	t0,2e6c <EnOwl_Update+0x6ec>
    2a98:	860a03ee 	lh	t2,1006(s0)
    2a9c:	00052823 	negu	a1,a1
    2aa0:	00052c00 	sll	a1,a1,0x10
    2aa4:	100000f0 	b	2e68 <EnOwl_Update+0x6e8>
    2aa8:	00052c03 	sra	a1,a1,0x10
    2aac:	0c000000 	jal	0 <EnOwl_Init>
    2ab0:	a7a50036 	sh	a1,54(sp)
    2ab4:	104000ec 	beqz	v0,2e68 <EnOwl_Update+0x6e8>
    2ab8:	87a50036 	lh	a1,54(sp)
    2abc:	960903fc 	lhu	t1,1020(s0)
    2ac0:	3c0141a0 	lui	at,0x41a0
    2ac4:	44816000 	mtc1	at,$f12
    2ac8:	312affef 	andi	t2,t1,0xffef
    2acc:	a60a03fc 	sh	t2,1020(s0)
    2ad0:	0c000000 	jal	0 <EnOwl_Init>
    2ad4:	a7a50036 	sh	a1,54(sp)
    2ad8:	4600040d 	trunc.w.s	$f16,$f0
    2adc:	a2000404 	sb	zero,1028(s0)
    2ae0:	02002025 	move	a0,s0
    2ae4:	440c8000 	mfc1	t4,$f16
    2ae8:	00000000 	nop
    2aec:	258d003c 	addiu	t5,t4,60
    2af0:	0c000000 	jal	0 <EnOwl_Init>
    2af4:	a20d0406 	sb	t5,1030(s0)
    2af8:	100000db 	b	2e68 <EnOwl_Update+0x6e8>
    2afc:	87a50036 	lh	a1,54(sp)
    2b00:	92020406 	lbu	v0,1030(s0)
    2b04:	18400003 	blez	v0,2b14 <EnOwl_Update+0x394>
    2b08:	244effff 	addiu	t6,v0,-1
    2b0c:	1000008b 	b	2d3c <EnOwl_Update+0x5bc>
    2b10:	a20e0406 	sb	t6,1030(s0)
    2b14:	92030404 	lbu	v1,1028(s0)
    2b18:	54600014 	bnezl	v1,2b6c <EnOwl_Update+0x3ec>
    2b1c:	92090405 	lbu	t1,1029(s0)
    2b20:	0c000000 	jal	0 <EnOwl_Init>
    2b24:	a7a50036 	sh	a1,54(sp)
    2b28:	3c010000 	lui	at,0x0
    2b2c:	c4320000 	lwc1	$f18,0(at)
    2b30:	24190001 	li	t9,1
    2b34:	87a50036 	lh	a1,54(sp)
    2b38:	4612003c 	c.lt.s	$f0,$f18
    2b3c:	240f0004 	li	t7,4
    2b40:	2418000c 	li	t8,12
    2b44:	332300ff 	andi	v1,t9,0xff
    2b48:	45000005 	bc1f	2b60 <EnOwl_Update+0x3e0>
    2b4c:	24080004 	li	t0,4
    2b50:	a20f0404 	sb	t7,1028(s0)
    2b54:	a2180405 	sb	t8,1029(s0)
    2b58:	10000003 	b	2b68 <EnOwl_Update+0x3e8>
    2b5c:	31e300ff 	andi	v1,t7,0xff
    2b60:	a2190404 	sb	t9,1028(s0)
    2b64:	a2080405 	sb	t0,1029(s0)
    2b68:	92090405 	lbu	t1,1029(s0)
    2b6c:	24010001 	li	at,1
    2b70:	252affff 	addiu	t2,t1,-1
    2b74:	1061000a 	beq	v1,at,2ba0 <EnOwl_Update+0x420>
    2b78:	a20a0405 	sb	t2,1029(s0)
    2b7c:	24010002 	li	at,2
    2b80:	10610026 	beq	v1,at,2c1c <EnOwl_Update+0x49c>
    2b84:	24010003 	li	at,3
    2b88:	1061002c 	beq	v1,at,2c3c <EnOwl_Update+0x4bc>
    2b8c:	24010004 	li	at,4
    2b90:	50610048 	beql	v1,at,2cb4 <EnOwl_Update+0x534>
    2b94:	92040405 	lbu	a0,1029(s0)
    2b98:	10000062 	b	2d24 <EnOwl_Update+0x5a4>
    2b9c:	960903fc 	lhu	t1,1020(s0)
    2ba0:	92040405 	lbu	a0,1029(s0)
    2ba4:	00042023 	negu	a0,a0
    2ba8:	00042300 	sll	a0,a0,0xc
    2bac:	24844000 	addiu	a0,a0,16384
    2bb0:	00042400 	sll	a0,a0,0x10
    2bb4:	0c000000 	jal	0 <EnOwl_Init>
    2bb8:	00042403 	sra	a0,a0,0x10
    2bbc:	3c010000 	lui	at,0x0
    2bc0:	c4240000 	lwc1	$f4,0(at)
    2bc4:	920c0405 	lbu	t4,1029(s0)
    2bc8:	3c014170 	lui	at,0x4170
    2bcc:	46040182 	mul.s	$f6,$f0,$f4
    2bd0:	4600320d 	trunc.w.s	$f8,$f6
    2bd4:	44054000 	mfc1	a1,$f8
    2bd8:	00000000 	nop
    2bdc:	00052c00 	sll	a1,a1,0x10
    2be0:	1d80004f 	bgtz	t4,2d20 <EnOwl_Update+0x5a0>
    2be4:	00052c03 	sra	a1,a1,0x10
    2be8:	44816000 	mtc1	at,$f12
    2bec:	0c000000 	jal	0 <EnOwl_Init>
    2bf0:	a7a50036 	sh	a1,54(sp)
    2bf4:	3c0140a0 	lui	at,0x40a0
    2bf8:	44815000 	mtc1	at,$f10
    2bfc:	87a50036 	lh	a1,54(sp)
    2c00:	240f0002 	li	t7,2
    2c04:	460a0400 	add.s	$f16,$f0,$f10
    2c08:	a20f0404 	sb	t7,1028(s0)
    2c0c:	4600848d 	trunc.w.s	$f18,$f16
    2c10:	440e9000 	mfc1	t6,$f18
    2c14:	10000042 	b	2d20 <EnOwl_Update+0x5a0>
    2c18:	a20e0405 	sb	t6,1029(s0)
    2c1c:	92180405 	lbu	t8,1029(s0)
    2c20:	24051388 	li	a1,5000
    2c24:	24190003 	li	t9,3
    2c28:	1f00003d 	bgtz	t8,2d20 <EnOwl_Update+0x5a0>
    2c2c:	24080004 	li	t0,4
    2c30:	a2190404 	sb	t9,1028(s0)
    2c34:	1000003a 	b	2d20 <EnOwl_Update+0x5a0>
    2c38:	a2080405 	sb	t0,1029(s0)
    2c3c:	92040405 	lbu	a0,1029(s0)
    2c40:	00042300 	sll	a0,a0,0xc
    2c44:	00042400 	sll	a0,a0,0x10
    2c48:	0c000000 	jal	0 <EnOwl_Init>
    2c4c:	00042403 	sra	a0,a0,0x10
    2c50:	3c010000 	lui	at,0x0
    2c54:	c4240000 	lwc1	$f4,0(at)
    2c58:	920a0405 	lbu	t2,1029(s0)
    2c5c:	3c0141a0 	lui	at,0x41a0
    2c60:	46040182 	mul.s	$f6,$f0,$f4
    2c64:	4600320d 	trunc.w.s	$f8,$f6
    2c68:	44054000 	mfc1	a1,$f8
    2c6c:	00000000 	nop
    2c70:	00052c00 	sll	a1,a1,0x10
    2c74:	1d40002a 	bgtz	t2,2d20 <EnOwl_Update+0x5a0>
    2c78:	00052c03 	sra	a1,a1,0x10
    2c7c:	44816000 	mtc1	at,$f12
    2c80:	0c000000 	jal	0 <EnOwl_Init>
    2c84:	a7a50036 	sh	a1,54(sp)
    2c88:	4600028d 	trunc.w.s	$f10,$f0
    2c8c:	a2000404 	sb	zero,1028(s0)
    2c90:	02002025 	move	a0,s0
    2c94:	440c5000 	mfc1	t4,$f10
    2c98:	00000000 	nop
    2c9c:	258d003c 	addiu	t5,t4,60
    2ca0:	0c000000 	jal	0 <EnOwl_Init>
    2ca4:	a20d0406 	sb	t5,1030(s0)
    2ca8:	1000001d 	b	2d20 <EnOwl_Update+0x5a0>
    2cac:	87a50036 	lh	a1,54(sp)
    2cb0:	92040405 	lbu	a0,1029(s0)
    2cb4:	00042340 	sll	a0,a0,0xd
    2cb8:	00042400 	sll	a0,a0,0x10
    2cbc:	0c000000 	jal	0 <EnOwl_Init>
    2cc0:	00042403 	sra	a0,a0,0x10
    2cc4:	3c010000 	lui	at,0x0
    2cc8:	c4300000 	lwc1	$f16,0(at)
    2ccc:	920f0405 	lbu	t7,1029(s0)
    2cd0:	3c0141a0 	lui	at,0x41a0
    2cd4:	46100482 	mul.s	$f18,$f0,$f16
    2cd8:	4600910d 	trunc.w.s	$f4,$f18
    2cdc:	44052000 	mfc1	a1,$f4
    2ce0:	00000000 	nop
    2ce4:	00052c00 	sll	a1,a1,0x10
    2ce8:	1de0000d 	bgtz	t7,2d20 <EnOwl_Update+0x5a0>
    2cec:	00052c03 	sra	a1,a1,0x10
    2cf0:	44816000 	mtc1	at,$f12
    2cf4:	0c000000 	jal	0 <EnOwl_Init>
    2cf8:	a7a50036 	sh	a1,54(sp)
    2cfc:	4600018d 	trunc.w.s	$f6,$f0
    2d00:	a2000404 	sb	zero,1028(s0)
    2d04:	02002025 	move	a0,s0
    2d08:	44193000 	mfc1	t9,$f6
    2d0c:	00000000 	nop
    2d10:	2728003c 	addiu	t0,t9,60
    2d14:	0c000000 	jal	0 <EnOwl_Init>
    2d18:	a2080406 	sb	t0,1030(s0)
    2d1c:	87a50036 	lh	a1,54(sp)
    2d20:	960903fc 	lhu	t1,1020(s0)
    2d24:	312a0020 	andi	t2,t1,0x20
    2d28:	51400005 	beqzl	t2,2d40 <EnOwl_Update+0x5c0>
    2d2c:	92020409 	lbu	v0,1033(s0)
    2d30:	00052823 	negu	a1,a1
    2d34:	00052c00 	sll	a1,a1,0x10
    2d38:	00052c03 	sra	a1,a1,0x10
    2d3c:	92020409 	lbu	v0,1033(s0)
    2d40:	18400003 	blez	v0,2d50 <EnOwl_Update+0x5d0>
    2d44:	244bffff 	addiu	t3,v0,-1
    2d48:	10000047 	b	2e68 <EnOwl_Update+0x6e8>
    2d4c:	a20b0409 	sb	t3,1033(s0)
    2d50:	920c0408 	lbu	t4,1032(s0)
    2d54:	92020407 	lbu	v0,1031(s0)
    2d58:	24010001 	li	at,1
    2d5c:	258dffff 	addiu	t5,t4,-1
    2d60:	10400007 	beqz	v0,2d80 <EnOwl_Update+0x600>
    2d64:	a20d0408 	sb	t5,1032(s0)
    2d68:	1041001f 	beq	v0,at,2de8 <EnOwl_Update+0x668>
    2d6c:	24010002 	li	at,2
    2d70:	50410027 	beql	v0,at,2e10 <EnOwl_Update+0x690>
    2d74:	92020408 	lbu	v0,1032(s0)
    2d78:	1000003c 	b	2e6c <EnOwl_Update+0x6ec>
    2d7c:	860a03ee 	lh	t2,1006(s0)
    2d80:	92020408 	lbu	v0,1032(s0)
    2d84:	24190001 	li	t9,1
    2d88:	3c014170 	lui	at,0x4170
    2d8c:	00027023 	negu	t6,v0
    2d90:	000e7880 	sll	t7,t6,0x2
    2d94:	01ee7823 	subu	t7,t7,t6
    2d98:	000f7900 	sll	t7,t7,0x4
    2d9c:	01ee7823 	subu	t7,t7,t6
    2da0:	000f78c0 	sll	t7,t7,0x3
    2da4:	01ee7823 	subu	t7,t7,t6
    2da8:	000f7880 	sll	t7,t7,0x2
    2dac:	25f81770 	addiu	t8,t7,6000
    2db0:	1c40002d 	bgtz	v0,2e68 <EnOwl_Update+0x6e8>
    2db4:	a61803f2 	sh	t8,1010(s0)
    2db8:	a2190407 	sb	t9,1031(s0)
    2dbc:	44816000 	mtc1	at,$f12
    2dc0:	0c000000 	jal	0 <EnOwl_Init>
    2dc4:	a7a50036 	sh	a1,54(sp)
    2dc8:	3c0140a0 	lui	at,0x40a0
    2dcc:	44814000 	mtc1	at,$f8
    2dd0:	87a50036 	lh	a1,54(sp)
    2dd4:	46080280 	add.s	$f10,$f0,$f8
    2dd8:	4600540d 	trunc.w.s	$f16,$f10
    2ddc:	44098000 	mfc1	t1,$f16
    2de0:	10000021 	b	2e68 <EnOwl_Update+0x6e8>
    2de4:	a2090408 	sb	t1,1032(s0)
    2de8:	920b0408 	lbu	t3,1032(s0)
    2dec:	240a1770 	li	t2,6000
    2df0:	a60a03f2 	sh	t2,1010(s0)
    2df4:	1d60001c 	bgtz	t3,2e68 <EnOwl_Update+0x6e8>
    2df8:	240c0002 	li	t4,2
    2dfc:	240d0004 	li	t5,4
    2e00:	a20c0407 	sb	t4,1031(s0)
    2e04:	10000018 	b	2e68 <EnOwl_Update+0x6e8>
    2e08:	a20d0408 	sb	t5,1032(s0)
    2e0c:	92020408 	lbu	v0,1032(s0)
    2e10:	240f0004 	li	t7,4
    2e14:	3c014220 	lui	at,0x4220
    2e18:	00027080 	sll	t6,v0,0x2
    2e1c:	01c27023 	subu	t6,t6,v0
    2e20:	000e7100 	sll	t6,t6,0x4
    2e24:	01c27023 	subu	t6,t6,v0
    2e28:	000e70c0 	sll	t6,t6,0x3
    2e2c:	01c27023 	subu	t6,t6,v0
    2e30:	000e7080 	sll	t6,t6,0x2
    2e34:	1c40000c 	bgtz	v0,2e68 <EnOwl_Update+0x6e8>
    2e38:	a60e03f2 	sh	t6,1010(s0)
    2e3c:	a2000407 	sb	zero,1031(s0)
    2e40:	a20f0408 	sb	t7,1032(s0)
    2e44:	44816000 	mtc1	at,$f12
    2e48:	0c000000 	jal	0 <EnOwl_Init>
    2e4c:	a7a50036 	sh	a1,54(sp)
    2e50:	4600048d 	trunc.w.s	$f18,$f0
    2e54:	87a50036 	lh	a1,54(sp)
    2e58:	44199000 	mfc1	t9,$f18
    2e5c:	00000000 	nop
    2e60:	272800a0 	addiu	t0,t9,160
    2e64:	a2080409 	sb	t0,1033(s0)
    2e68:	860a03ee 	lh	t2,1006(s0)
    2e6c:	000a6280 	sll	t4,t2,0xa
    2e70:	01856821 	addu	t5,t4,a1
    2e74:	a60d03f0 	sh	t5,1008(s0)
    2e78:	860303f0 	lh	v1,1008(s0)
    2e7c:	04600003 	bltz	v1,2e8c <EnOwl_Update+0x70c>
    2e80:	00031023 	negu	v0,v1
    2e84:	10000001 	b	2e8c <EnOwl_Update+0x70c>
    2e88:	00601025 	move	v0,v1
    2e8c:	000270c3 	sra	t6,v0,0x3
    2e90:	1000000e 	b	2ecc <EnOwl_Update+0x74c>
    2e94:	a60e03ec 	sh	t6,1004(s0)
    2e98:	11e00004 	beqz	t7,2eac <EnOwl_Update+0x72c>
    2e9c:	a60003f2 	sh	zero,1010(s0)
    2ea0:	24188000 	li	t8,-32768
    2ea4:	10000002 	b	2eb0 <EnOwl_Update+0x730>
    2ea8:	a61803f0 	sh	t8,1008(s0)
    2eac:	a60003f0 	sh	zero,1008(s0)
    2eb0:	860303f0 	lh	v1,1008(s0)
    2eb4:	04600003 	bltz	v1,2ec4 <EnOwl_Update+0x744>
    2eb8:	00031023 	negu	v0,v1
    2ebc:	10000001 	b	2ec4 <EnOwl_Update+0x744>
    2ec0:	00601025 	move	v0,v1
    2ec4:	0002c8c3 	sra	t9,v0,0x3
    2ec8:	a61903ec 	sh	t9,1004(s0)
    2ecc:	8fbf0024 	lw	ra,36(sp)
    2ed0:	8fb00020 	lw	s0,32(sp)
    2ed4:	27bd0040 	addiu	sp,sp,64
    2ed8:	03e00008 	jr	ra
    2edc:	00000000 	nop

00002ee0 <func_80ACCE00>:
    2ee0:	24010002 	li	at,2
    2ee4:	afa40000 	sw	a0,0(sp)
    2ee8:	afa60008 	sw	a2,8(sp)
    2eec:	10a1001b 	beq	a1,at,2f5c <func_80ACCE00+0x7c>
    2ef0:	afa7000c 	sw	a3,12(sp)
    2ef4:	24010003 	li	at,3
    2ef8:	10a10009 	beq	a1,at,2f20 <func_80ACCE00+0x40>
    2efc:	8fa20014 	lw	v0,20(sp)
    2f00:	24010004 	li	at,4
    2f04:	10a1001d 	beq	a1,at,2f7c <func_80ACCE00+0x9c>
    2f08:	8fa20014 	lw	v0,20(sp)
    2f0c:	24010005 	li	at,5
    2f10:	10a1002d 	beq	a1,at,2fc8 <func_80ACCE00+0xe8>
    2f14:	8fa20014 	lw	v0,20(sp)
    2f18:	03e00008 	jr	ra
    2f1c:	00001025 	move	v0,zero
    2f20:	8fa30010 	lw	v1,16(sp)
    2f24:	844f03f0 	lh	t7,1008(v0)
    2f28:	846e0000 	lh	t6,0(v1)
    2f2c:	84790004 	lh	t9,4(v1)
    2f30:	01cfc021 	addu	t8,t6,t7
    2f34:	a4780000 	sh	t8,0(v1)
    2f38:	844803ec 	lh	t0,1004(v0)
    2f3c:	03284821 	addu	t1,t9,t0
    2f40:	a4690004 	sh	t1,4(v1)
    2f44:	844b03f2 	lh	t3,1010(v0)
    2f48:	846a0004 	lh	t2,4(v1)
    2f4c:	00001025 	move	v0,zero
    2f50:	014b6023 	subu	t4,t2,t3
    2f54:	03e00008 	jr	ra
    2f58:	a46c0004 	sh	t4,4(v1)
    2f5c:	8fa20014 	lw	v0,20(sp)
    2f60:	8fa30010 	lw	v1,16(sp)
    2f64:	844e03f2 	lh	t6,1010(v0)
    2f68:	846d0004 	lh	t5,4(v1)
    2f6c:	00001025 	move	v0,zero
    2f70:	01ae7821 	addu	t7,t5,t6
    2f74:	03e00008 	jr	ra
    2f78:	a46f0004 	sh	t7,4(v1)
    2f7c:	945803fc 	lhu	t8,1020(v0)
    2f80:	33190008 	andi	t9,t8,0x8
    2f84:	17200021 	bnez	t9,300c <func_80ACCE00+0x12c>
    2f88:	00000000 	nop
    2f8c:	844803ec 	lh	t0,1004(v0)
    2f90:	3c013fc0 	lui	at,0x3fc0
    2f94:	44814000 	mtc1	at,$f8
    2f98:	44882000 	mtc1	t0,$f4
    2f9c:	8fa30010 	lw	v1,16(sp)
    2fa0:	00001025 	move	v0,zero
    2fa4:	468021a0 	cvt.s.w	$f6,$f4
    2fa8:	846d0002 	lh	t5,2(v1)
    2fac:	46083282 	mul.s	$f10,$f6,$f8
    2fb0:	4600540d 	trunc.w.s	$f16,$f10
    2fb4:	440c8000 	mfc1	t4,$f16
    2fb8:	00000000 	nop
    2fbc:	01ac7023 	subu	t6,t5,t4
    2fc0:	03e00008 	jr	ra
    2fc4:	a46e0002 	sh	t6,2(v1)
    2fc8:	944f03fc 	lhu	t7,1020(v0)
    2fcc:	31f80008 	andi	t8,t7,0x8
    2fd0:	1700000e 	bnez	t8,300c <func_80ACCE00+0x12c>
    2fd4:	00000000 	nop
    2fd8:	845903ec 	lh	t9,1004(v0)
    2fdc:	3c013fc0 	lui	at,0x3fc0
    2fe0:	44813000 	mtc1	at,$f6
    2fe4:	44999000 	mtc1	t9,$f18
    2fe8:	8fa30010 	lw	v1,16(sp)
    2fec:	46809120 	cvt.s.w	$f4,$f18
    2ff0:	846d0002 	lh	t5,2(v1)
    2ff4:	46062202 	mul.s	$f8,$f4,$f6
    2ff8:	4600428d 	trunc.w.s	$f10,$f8
    2ffc:	440b5000 	mfc1	t3,$f10
    3000:	00000000 	nop
    3004:	01ab6021 	addu	t4,t5,t3
    3008:	a46c0002 	sh	t4,2(v1)
    300c:	03e00008 	jr	ra
    3010:	00001025 	move	v0,zero

00003014 <func_80ACCF34>:
    3014:	27bdffd8 	addiu	sp,sp,-40
    3018:	44800000 	mtc1	zero,$f0
    301c:	afa60030 	sw	a2,48(sp)
    3020:	8fa60038 	lw	a2,56(sp)
    3024:	afbf0014 	sw	ra,20(sp)
    3028:	afa40028 	sw	a0,40(sp)
    302c:	afa70034 	sw	a3,52(sp)
    3030:	e7a00020 	swc1	$f0,32(sp)
    3034:	94ce03fc 	lhu	t6,1020(a2)
    3038:	3c0144af 	lui	at,0x44af
    303c:	27a40018 	addiu	a0,sp,24
    3040:	31cf0002 	andi	t7,t6,0x2
    3044:	51e00009 	beqzl	t7,306c <func_80ACCF34+0x58>
    3048:	44814000 	mtc1	at,$f8
    304c:	3c01442f 	lui	at,0x442f
    3050:	44812000 	mtc1	at,$f4
    3054:	3c0143c8 	lui	at,0x43c8
    3058:	44813000 	mtc1	at,$f6
    305c:	e7a40018 	swc1	$f4,24(sp)
    3060:	10000004 	b	3074 <func_80ACCF34+0x60>
    3064:	e7a6001c 	swc1	$f6,28(sp)
    3068:	44814000 	mtc1	at,$f8
    306c:	e7a0001c 	swc1	$f0,28(sp)
    3070:	e7a80018 	swc1	$f8,24(sp)
    3074:	24010003 	li	at,3
    3078:	54a10004 	bnel	a1,at,308c <func_80ACCF34+0x78>
    307c:	8fbf0014 	lw	ra,20(sp)
    3080:	0c000000 	jal	0 <EnOwl_Init>
    3084:	24c50038 	addiu	a1,a2,56
    3088:	8fbf0014 	lw	ra,20(sp)
    308c:	27bd0028 	addiu	sp,sp,40
    3090:	03e00008 	jr	ra
    3094:	00000000 	nop

00003098 <EnOwl_Draw>:
    3098:	27bdffb0 	addiu	sp,sp,-80
    309c:	afbf0024 	sw	ra,36(sp)
    30a0:	afa40050 	sw	a0,80(sp)
    30a4:	afa50054 	sw	a1,84(sp)
    30a8:	8ca50000 	lw	a1,0(a1)
    30ac:	3c060000 	lui	a2,0x0
    30b0:	24c60000 	addiu	a2,a2,0
    30b4:	27a40034 	addiu	a0,sp,52
    30b8:	240708c7 	li	a3,2247
    30bc:	0c000000 	jal	0 <EnOwl_Init>
    30c0:	afa50044 	sw	a1,68(sp)
    30c4:	8faf0054 	lw	t7,84(sp)
    30c8:	0c000000 	jal	0 <EnOwl_Init>
    30cc:	8de40000 	lw	a0,0(t7)
    30d0:	8fa50044 	lw	a1,68(sp)
    30d4:	8fa80050 	lw	t0,80(sp)
    30d8:	3c19db06 	lui	t9,0xdb06
    30dc:	8ca302c0 	lw	v1,704(a1)
    30e0:	37390020 	ori	t9,t9,0x20
    30e4:	3c040000 	lui	a0,0x0
    30e8:	24780008 	addiu	t8,v1,8
    30ec:	acb802c0 	sw	t8,704(a1)
    30f0:	ac790000 	sw	t9,0(v1)
    30f4:	850903f4 	lh	t1,1012(t0)
    30f8:	3c0f0000 	lui	t7,0x0
    30fc:	3c0100ff 	lui	at,0xff
    3100:	00095080 	sll	t2,t1,0x2
    3104:	008a2021 	addu	a0,a0,t2
    3108:	8c840000 	lw	a0,0(a0)
    310c:	3421ffff 	ori	at,at,0xffff
    3110:	3c0a0000 	lui	t2,0x0
    3114:	00046100 	sll	t4,a0,0x4
    3118:	000c6f02 	srl	t5,t4,0x1c
    311c:	000d7080 	sll	t6,t5,0x2
    3120:	01ee7821 	addu	t7,t7,t6
    3124:	8def0000 	lw	t7,0(t7)
    3128:	00815824 	and	t3,a0,at
    312c:	3c018000 	lui	at,0x8000
    3130:	016fc021 	addu	t8,t3,t7
    3134:	0301c821 	addu	t9,t8,at
    3138:	ac790004 	sw	t9,4(v1)
    313c:	8d0203dc 	lw	v0,988(t0)
    3140:	3c090000 	lui	t1,0x0
    3144:	25290000 	addiu	t1,t1,0
    3148:	8c450004 	lw	a1,4(v0)
    314c:	8c460020 	lw	a2,32(v0)
    3150:	90470002 	lbu	a3,2(v0)
    3154:	254a0000 	addiu	t2,t2,0
    3158:	afaa0014 	sw	t2,20(sp)
    315c:	afa90010 	sw	t1,16(sp)
    3160:	8fa40054 	lw	a0,84(sp)
    3164:	0c000000 	jal	0 <EnOwl_Init>
    3168:	afa80018 	sw	t0,24(sp)
    316c:	8fac0054 	lw	t4,84(sp)
    3170:	3c060000 	lui	a2,0x0
    3174:	24c60000 	addiu	a2,a2,0
    3178:	27a40034 	addiu	a0,sp,52
    317c:	240708d8 	li	a3,2264
    3180:	0c000000 	jal	0 <EnOwl_Init>
    3184:	8d850000 	lw	a1,0(t4)
    3188:	8fbf0024 	lw	ra,36(sp)
    318c:	27bd0050 	addiu	sp,sp,80
    3190:	03e00008 	jr	ra
    3194:	00000000 	nop

00003198 <func_80ACD0B8>:
    3198:	27bdffd8 	addiu	sp,sp,-40
    319c:	afbf0024 	sw	ra,36(sp)
    31a0:	afa40028 	sw	a0,40(sp)
    31a4:	afa5002c 	sw	a1,44(sp)
    31a8:	afa60030 	sw	a2,48(sp)
    31ac:	ac8703dc 	sw	a3,988(a0)
    31b0:	0c000000 	jal	0 <EnOwl_Init>
    31b4:	8fa40038 	lw	a0,56(sp)
    31b8:	44822000 	mtc1	v0,$f4
    31bc:	8faf0028 	lw	t7,40(sp)
    31c0:	c7a8003c 	lwc1	$f8,60(sp)
    31c4:	468021a0 	cvt.s.w	$f6,$f4
    31c8:	8de403dc 	lw	a0,988(t7)
    31cc:	24180002 	li	t8,2
    31d0:	afb80014 	sw	t8,20(sp)
    31d4:	8fa50038 	lw	a1,56(sp)
    31d8:	3c063f80 	lui	a2,0x3f80
    31dc:	e7a60010 	swc1	$f6,16(sp)
    31e0:	24070000 	li	a3,0
    31e4:	0c000000 	jal	0 <EnOwl_Init>
    31e8:	e7a80018 	swc1	$f8,24(sp)
    31ec:	8fa20028 	lw	v0,40(sp)
    31f0:	8fb9002c 	lw	t9,44(sp)
    31f4:	ac59040c 	sw	t9,1036(v0)
    31f8:	8fa80030 	lw	t0,48(sp)
    31fc:	ac480410 	sw	t0,1040(v0)
    3200:	8fbf0024 	lw	ra,36(sp)
    3204:	27bd0028 	addiu	sp,sp,40
    3208:	03e00008 	jr	ra
    320c:	00000000 	nop

00003210 <func_80ACD130>:
    3210:	00067080 	sll	t6,a2,0x2
    3214:	00ae1021 	addu	v0,a1,t6
    3218:	8c4f1d8c 	lw	t7,7564(v0)
    321c:	27bdffe8 	addiu	sp,sp,-24
    3220:	27ab000c 	addiu	t3,sp,12
    3224:	8df8000c 	lw	t8,12(t7)
    3228:	44982000 	mtc1	t8,$f4
    322c:	00000000 	nop
    3230:	468021a0 	cvt.s.w	$f6,$f4
    3234:	e7a6000c 	swc1	$f6,12(sp)
    3238:	8c591d8c 	lw	t9,7564(v0)
    323c:	8f280010 	lw	t0,16(t9)
    3240:	44884000 	mtc1	t0,$f8
    3244:	00000000 	nop
    3248:	468042a0 	cvt.s.w	$f10,$f8
    324c:	e7aa0010 	swc1	$f10,16(sp)
    3250:	8c491d8c 	lw	t1,7564(v0)
    3254:	8d2a0014 	lw	t2,20(t1)
    3258:	448a8000 	mtc1	t2,$f16
    325c:	00000000 	nop
    3260:	468084a0 	cvt.s.w	$f18,$f16
    3264:	e7b20014 	swc1	$f18,20(sp)
    3268:	8d6d0000 	lw	t5,0(t3)
    326c:	ac8d0024 	sw	t5,36(a0)
    3270:	8d6c0004 	lw	t4,4(t3)
    3274:	ac8c0028 	sw	t4,40(a0)
    3278:	8d6d0008 	lw	t5,8(t3)
    327c:	ac8d002c 	sw	t5,44(a0)
    3280:	8c4e1d8c 	lw	t6,7564(v0)
    3284:	85c30008 	lh	v1,8(t6)
    3288:	a48300b6 	sh	v1,182(a0)
    328c:	a4830032 	sh	v1,50(a0)
    3290:	8c4f1d8c 	lw	t7,7564(v0)
    3294:	95f8000a 	lhu	t8,10(t7)
    3298:	27bd0018 	addiu	sp,sp,24
    329c:	03e00008 	jr	ra
    32a0:	a49800b8 	sh	t8,184(a0)

000032a4 <func_80ACD1C4>:
    32a4:	27bdffe8 	addiu	sp,sp,-24
    32a8:	00057880 	sll	t7,a1,0x2
    32ac:	afbf0014 	sw	ra,20(sp)
    32b0:	afa5001c 	sw	a1,28(sp)
    32b4:	008fc021 	addu	t8,a0,t7
    32b8:	8f021d8c 	lw	v0,7564(t8)
    32bc:	00803825 	move	a3,a0
    32c0:	94e61d74 	lhu	a2,7540(a3)
    32c4:	94440004 	lhu	a0,4(v0)
    32c8:	0c000000 	jal	0 <EnOwl_Init>
    32cc:	94450002 	lhu	a1,2(v0)
    32d0:	3c013f80 	lui	at,0x3f80
    32d4:	44816000 	mtc1	at,$f12
    32d8:	46000086 	mov.s	$f2,$f0
    32dc:	8fbf0014 	lw	ra,20(sp)
    32e0:	4600603c 	c.lt.s	$f12,$f0
    32e4:	00000000 	nop
    32e8:	45020003 	bc1fl	32f8 <func_80ACD1C4+0x54>
    32ec:	46001006 	mov.s	$f0,$f2
    32f0:	46006086 	mov.s	$f2,$f12
    32f4:	46001006 	mov.s	$f0,$f2
    32f8:	03e00008 	jr	ra
    32fc:	27bd0018 	addiu	sp,sp,24

00003300 <func_80ACD220>:
    3300:	27bdffd8 	addiu	sp,sp,-40
    3304:	afbf0014 	sw	ra,20(sp)
    3308:	afa5002c 	sw	a1,44(sp)
    330c:	c4860024 	lwc1	$f6,36(a0)
    3310:	c4a40000 	lwc1	$f4,0(a1)
    3314:	c4900028 	lwc1	$f16,40(a0)
    3318:	c4aa0004 	lwc1	$f10,4(a1)
    331c:	46062201 	sub.s	$f8,$f4,$f6
    3320:	44866000 	mtc1	a2,$f12
    3324:	c486002c 	lwc1	$f6,44(a0)
    3328:	46105481 	sub.s	$f18,$f10,$f16
    332c:	c4a40008 	lwc1	$f4,8(a1)
    3330:	460c4082 	mul.s	$f2,$f8,$f12
    3334:	00803825 	move	a3,a0
    3338:	46062201 	sub.s	$f8,$f4,$f6
    333c:	460c9002 	mul.s	$f0,$f18,$f12
    3340:	afa70028 	sw	a3,40(sp)
    3344:	24840060 	addiu	a0,a0,96
    3348:	460c4382 	mul.s	$f14,$f8,$f12
    334c:	e7a2001c 	swc1	$f2,28(sp)
    3350:	3c063f80 	lui	a2,0x3f80
    3354:	44050000 	mfc1	a1,$f0
    3358:	0c000000 	jal	0 <EnOwl_Init>
    335c:	e7ae0024 	swc1	$f14,36(sp)
    3360:	c7a2001c 	lwc1	$f2,28(sp)
    3364:	c7ae0024 	lwc1	$f14,36(sp)
    3368:	8fa70028 	lw	a3,40(sp)
    336c:	46021282 	mul.s	$f10,$f2,$f2
    3370:	24e40024 	addiu	a0,a3,36
    3374:	460e7402 	mul.s	$f16,$f14,$f14
    3378:	46105000 	add.s	$f0,$f10,$f16
    337c:	46000004 	sqrt.s	$f0,$f0
    3380:	e4e00068 	swc1	$f0,104(a3)
    3384:	0c000000 	jal	0 <EnOwl_Init>
    3388:	8fa5002c 	lw	a1,44(sp)
    338c:	8fa70028 	lw	a3,40(sp)
    3390:	a4e20032 	sh	v0,50(a3)
    3394:	84ef0032 	lh	t7,50(a3)
    3398:	a4ef00b6 	sh	t7,182(a3)
    339c:	8fbf0014 	lw	ra,20(sp)
    33a0:	27bd0028 	addiu	sp,sp,40
    33a4:	03e00008 	jr	ra
    33a8:	00000000 	nop

000033ac <func_80ACD2CC>:
    33ac:	27bdffb8 	addiu	sp,sp,-72
    33b0:	afb00018 	sw	s0,24(sp)
    33b4:	00808025 	move	s0,a0
    33b8:	afbf001c 	sw	ra,28(sp)
    33bc:	00a03025 	move	a2,a1
    33c0:	00a02025 	move	a0,a1
    33c4:	24050007 	li	a1,7
    33c8:	0c000000 	jal	0 <EnOwl_Init>
    33cc:	afa6004c 	sw	a2,76(sp)
    33d0:	8fa6004c 	lw	a2,76(sp)
    33d4:	3c010001 	lui	at,0x1
    33d8:	8cce1da8 	lw	t6,7592(a2)
    33dc:	8dcf000c 	lw	t7,12(t6)
    33e0:	448f2000 	mtc1	t7,$f4
    33e4:	00000000 	nop
    33e8:	468021a0 	cvt.s.w	$f6,$f4
    33ec:	e7a6003c 	swc1	$f6,60(sp)
    33f0:	8cd81da8 	lw	t8,7592(a2)
    33f4:	8f190010 	lw	t9,16(t8)
    33f8:	44994000 	mtc1	t9,$f8
    33fc:	00000000 	nop
    3400:	468042a0 	cvt.s.w	$f10,$f8
    3404:	e7aa0040 	swc1	$f10,64(sp)
    3408:	8cc81da8 	lw	t0,7592(a2)
    340c:	8d090014 	lw	t1,20(t0)
    3410:	44898000 	mtc1	t1,$f16
    3414:	00000000 	nop
    3418:	468084a0 	cvt.s.w	$f18,$f16
    341c:	e7b20044 	swc1	$f18,68(sp)
    3420:	8cc31da8 	lw	v1,7592(a2)
    3424:	86040034 	lh	a0,52(s0)
    3428:	846a0008 	lh	t2,8(v1)
    342c:	01441023 	subu	v0,t2,a0
    3430:	04430003 	bgezl	v0,3440 <func_80ACD2CC+0x94>
    3434:	44822000 	mtc1	v0,$f4
    3438:	00411021 	addu	v0,v0,at
    343c:	44822000 	mtc1	v0,$f4
    3440:	44845000 	mtc1	a0,$f10
    3444:	960c03fc 	lhu	t4,1020(s0)
    3448:	468021a0 	cvt.s.w	$f6,$f4
    344c:	318d0004 	andi	t5,t4,0x4
    3450:	46805420 	cvt.s.w	$f16,$f10
    3454:	46003202 	mul.s	$f8,$f6,$f0
    3458:	46104480 	add.s	$f18,$f8,$f16
    345c:	4600910d 	trunc.w.s	$f4,$f18
    3460:	44022000 	mfc1	v0,$f4
    3464:	00000000 	nop
    3468:	00021400 	sll	v0,v0,0x10
    346c:	00021403 	sra	v0,v0,0x10
    3470:	11a00037 	beqz	t5,3550 <func_80ACD2CC+0x1a4>
    3474:	3042ffff 	andi	v0,v0,0xffff
    3478:	946e0006 	lhu	t6,6(v1)
    347c:	00022400 	sll	a0,v0,0x10
    3480:	3c014f80 	lui	at,0x4f80
    3484:	448e3000 	mtc1	t6,$f6
    3488:	00042403 	sra	a0,a0,0x10
    348c:	05c10004 	bgez	t6,34a0 <func_80ACD2CC+0xf4>
    3490:	468030a0 	cvt.s.w	$f2,$f6
    3494:	44815000 	mtc1	at,$f10
    3498:	00000000 	nop
    349c:	460a1080 	add.s	$f2,$f2,$f10
    34a0:	3c013d61 	lui	at,0x3d61
    34a4:	44814000 	mtc1	at,$f8
    34a8:	44808000 	mtc1	zero,$f16
    34ac:	3c0143b4 	lui	at,0x43b4
    34b0:	46081082 	mul.s	$f2,$f2,$f8
    34b4:	4610103c 	c.lt.s	$f2,$f16
    34b8:	00000000 	nop
    34bc:	45020005 	bc1fl	34d4 <func_80ACD2CC+0x128>
    34c0:	afa40028 	sw	a0,40(sp)
    34c4:	44819000 	mtc1	at,$f18
    34c8:	00000000 	nop
    34cc:	46121080 	add.s	$f2,$f2,$f18
    34d0:	afa40028 	sw	a0,40(sp)
    34d4:	0c000000 	jal	0 <EnOwl_Init>
    34d8:	e7a20030 	swc1	$f2,48(sp)
    34dc:	c7a20030 	lwc1	$f2,48(sp)
    34e0:	c7a4003c 	lwc1	$f4,60(sp)
    34e4:	8fa40028 	lw	a0,40(sp)
    34e8:	46020182 	mul.s	$f6,$f0,$f2
    34ec:	46062281 	sub.s	$f10,$f4,$f6
    34f0:	0c000000 	jal	0 <EnOwl_Init>
    34f4:	e7aa003c 	swc1	$f10,60(sp)
    34f8:	c7a20030 	lwc1	$f2,48(sp)
    34fc:	c7a80044 	lwc1	$f8,68(sp)
    3500:	27af003c 	addiu	t7,sp,60
    3504:	46020402 	mul.s	$f16,$f0,$f2
    3508:	44802000 	mtc1	zero,$f4
    350c:	3c080000 	lui	t0,0x0
    3510:	25080000 	addiu	t0,t0,0
    3514:	46104480 	add.s	$f18,$f8,$f16
    3518:	e7b20044 	swc1	$f18,68(sp)
    351c:	e60203f8 	swc1	$f2,1016(s0)
    3520:	8df90000 	lw	t9,0(t7)
    3524:	960903fc 	lhu	t1,1020(s0)
    3528:	ae190024 	sw	t9,36(s0)
    352c:	8df80004 	lw	t8,4(t7)
    3530:	312afffb 	andi	t2,t1,0xfffb
    3534:	ae180028 	sw	t8,40(s0)
    3538:	8df90008 	lw	t9,8(t7)
    353c:	ae080134 	sw	t0,308(s0)
    3540:	a60a03fc 	sh	t2,1020(s0)
    3544:	e6040068 	swc1	$f4,104(s0)
    3548:	10000015 	b	35a0 <func_80ACD2CC+0x1f4>
    354c:	ae19002c 	sw	t9,44(s0)
    3550:	00022400 	sll	a0,v0,0x10
    3554:	00042403 	sra	a0,a0,0x10
    3558:	0c000000 	jal	0 <EnOwl_Init>
    355c:	afa40028 	sw	a0,40(sp)
    3560:	c60a03f8 	lwc1	$f10,1016(s0)
    3564:	c7a6003c 	lwc1	$f6,60(sp)
    3568:	8fa40028 	lw	a0,40(sp)
    356c:	460a0202 	mul.s	$f8,$f0,$f10
    3570:	46083401 	sub.s	$f16,$f6,$f8
    3574:	0c000000 	jal	0 <EnOwl_Init>
    3578:	e7b0003c 	swc1	$f16,60(sp)
    357c:	c60403f8 	lwc1	$f4,1016(s0)
    3580:	c7b20044 	lwc1	$f18,68(sp)
    3584:	02002025 	move	a0,s0
    3588:	46040282 	mul.s	$f10,$f0,$f4
    358c:	27a5003c 	addiu	a1,sp,60
    3590:	3c063f80 	lui	a2,0x3f80
    3594:	460a9180 	add.s	$f6,$f18,$f10
    3598:	0c000000 	jal	0 <EnOwl_Init>
    359c:	e7a60044 	swc1	$f6,68(sp)
    35a0:	8fbf001c 	lw	ra,28(sp)
    35a4:	8fb00018 	lw	s0,24(sp)
    35a8:	27bd0048 	addiu	sp,sp,72
    35ac:	03e00008 	jr	ra
    35b0:	00000000 	nop

000035b4 <func_80ACD4D4>:
    35b4:	27bdffc8 	addiu	sp,sp,-56
    35b8:	afa40038 	sw	a0,56(sp)
    35bc:	afbf0014 	sw	ra,20(sp)
    35c0:	00a03825 	move	a3,a1
    35c4:	00a02025 	move	a0,a1
    35c8:	24050007 	li	a1,7
    35cc:	0c000000 	jal	0 <EnOwl_Init>
    35d0:	afa7003c 	sw	a3,60(sp)
    35d4:	8fa7003c 	lw	a3,60(sp)
    35d8:	8fa40038 	lw	a0,56(sp)
    35dc:	27a5002c 	addiu	a1,sp,44
    35e0:	8cee1da8 	lw	t6,7592(a3)
    35e4:	3c063f80 	lui	a2,0x3f80
    35e8:	8dcf000c 	lw	t7,12(t6)
    35ec:	448f2000 	mtc1	t7,$f4
    35f0:	00000000 	nop
    35f4:	468021a0 	cvt.s.w	$f6,$f4
    35f8:	e7a6002c 	swc1	$f6,44(sp)
    35fc:	8cf81da8 	lw	t8,7592(a3)
    3600:	8f190010 	lw	t9,16(t8)
    3604:	44994000 	mtc1	t9,$f8
    3608:	00000000 	nop
    360c:	468042a0 	cvt.s.w	$f10,$f8
    3610:	e7aa0030 	swc1	$f10,48(sp)
    3614:	8ce81da8 	lw	t0,7592(a3)
    3618:	c7aa002c 	lwc1	$f10,44(sp)
    361c:	8d090014 	lw	t1,20(t0)
    3620:	44898000 	mtc1	t1,$f16
    3624:	00000000 	nop
    3628:	468084a0 	cvt.s.w	$f18,$f16
    362c:	e7b20034 	swc1	$f18,52(sp)
    3630:	8ce21da8 	lw	v0,7592(a3)
    3634:	8c4a0018 	lw	t2,24(v0)
    3638:	8c4b001c 	lw	t3,28(v0)
    363c:	8c4c0020 	lw	t4,32(v0)
    3640:	448a2000 	mtc1	t2,$f4
    3644:	448b3000 	mtc1	t3,$f6
    3648:	448c4000 	mtc1	t4,$f8
    364c:	468020a0 	cvt.s.w	$f2,$f4
    3650:	46803320 	cvt.s.w	$f12,$f6
    3654:	c7a60030 	lwc1	$f6,48(sp)
    3658:	460a1401 	sub.s	$f16,$f2,$f10
    365c:	468043a0 	cvt.s.w	$f14,$f8
    3660:	46008482 	mul.s	$f18,$f16,$f0
    3664:	46066201 	sub.s	$f8,$f12,$f6
    3668:	460a9100 	add.s	$f4,$f18,$f10
    366c:	c7aa0034 	lwc1	$f10,52(sp)
    3670:	46004402 	mul.s	$f16,$f8,$f0
    3674:	e7a4002c 	swc1	$f4,44(sp)
    3678:	460a7101 	sub.s	$f4,$f14,$f10
    367c:	46068480 	add.s	$f18,$f16,$f6
    3680:	46002202 	mul.s	$f8,$f4,$f0
    3684:	e7b20030 	swc1	$f18,48(sp)
    3688:	460a4400 	add.s	$f16,$f8,$f10
    368c:	0c000000 	jal	0 <EnOwl_Init>
    3690:	e7b00034 	swc1	$f16,52(sp)
    3694:	8fbf0014 	lw	ra,20(sp)
    3698:	27bd0038 	addiu	sp,sp,56
    369c:	03e00008 	jr	ra
    36a0:	00000000 	nop
	...
