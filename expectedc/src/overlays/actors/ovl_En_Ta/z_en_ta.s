
build/src/overlays/actors/ovl_En_Ta/z_en_ta.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B13AA0>:
       0:	ac85025c 	sw	a1,604(a0)
       4:	03e00008 	jr	ra
       8:	ac860260 	sw	a2,608(a0)

0000000c <func_80B13AAC>:
       c:	27bdffe8 	addiu	sp,sp,-24
      10:	00803025 	move	a2,a0
      14:	afbf0014 	sw	ra,20(sp)
      18:	00a02025 	move	a0,a1
      1c:	24050018 	li	a1,24
      20:	0c000000 	jal	0 <func_80B13AA0>
      24:	afa60018 	sw	a2,24(sp)
      28:	3c040000 	lui	a0,0x0
      2c:	24840000 	addiu	a0,a0,0
      30:	948313fa 	lhu	v1,5114(a0)
      34:	8fa60018 	lw	a2,24(sp)
      38:	306e0400 	andi	t6,v1,0x400
      3c:	11c00012 	beqz	t6,88 <func_80B13AAC+0x7c>
      40:	306f0100 	andi	t7,v1,0x100
      44:	11e0000b 	beqz	t7,74 <func_80B13AAC+0x68>
      48:	240a2085 	li	t2,8325
      4c:	94980ef0 	lhu	t8,3824(a0)
      50:	24082088 	li	t0,8328
      54:	24092086 	li	t1,8326
      58:	33190004 	andi	t9,t8,0x4
      5c:	13200003 	beqz	t9,6c <func_80B13AAC+0x60>
      60:	00000000 	nop
      64:	10000004 	b	78 <func_80B13AAC+0x6c>
      68:	a4c8010e 	sh	t0,270(a2)
      6c:	10000002 	b	78 <func_80B13AAC+0x6c>
      70:	a4c9010e 	sh	t1,270(a2)
      74:	a4ca010e 	sh	t2,270(a2)
      78:	948b13fa 	lhu	t3,5114(a0)
      7c:	316cfeff 	andi	t4,t3,0xfeff
      80:	10000015 	b	d8 <func_80B13AAC+0xcc>
      84:	a48c13fa 	sh	t4,5114(a0)
      88:	54400013 	bnezl	v0,d8 <func_80B13AAC+0xcc>
      8c:	a4c2010e 	sh	v0,270(a2)
      90:	948d0f06 	lhu	t5,3846(a0)
      94:	2409207e 	li	t1,8318
      98:	31ae4000 	andi	t6,t5,0x4000
      9c:	11c0000b 	beqz	t6,cc <func_80B13AAC+0xc0>
      a0:	00000000 	nop
      a4:	948f0ef0 	lhu	t7,3824(a0)
      a8:	2419208b 	li	t9,8331
      ac:	2408207f 	li	t0,8319
      b0:	31f80004 	andi	t8,t7,0x4
      b4:	13000003 	beqz	t8,c4 <func_80B13AAC+0xb8>
      b8:	00000000 	nop
      bc:	10000006 	b	d8 <func_80B13AAC+0xcc>
      c0:	a4d9010e 	sh	t9,270(a2)
      c4:	10000004 	b	d8 <func_80B13AAC+0xcc>
      c8:	a4c8010e 	sh	t0,270(a2)
      cc:	10000002 	b	d8 <func_80B13AAC+0xcc>
      d0:	a4c9010e 	sh	t1,270(a2)
      d4:	a4c2010e 	sh	v0,270(a2)
      d8:	8fbf0014 	lw	ra,20(sp)
      dc:	27bd0018 	addiu	sp,sp,24
      e0:	03e00008 	jr	ra
      e4:	00000000 	nop

000000e8 <EnTa_Init>:
      e8:	27bdffb0 	addiu	sp,sp,-80
      ec:	afb00030 	sw	s0,48(sp)
      f0:	00808025 	move	s0,a0
      f4:	afbf0034 	sw	ra,52(sp)
      f8:	afa50054 	sw	a1,84(sp)
      fc:	3c060000 	lui	a2,0x0
     100:	24c60000 	addiu	a2,a2,0
     104:	24050000 	li	a1,0
     108:	248400b4 	addiu	a0,a0,180
     10c:	0c000000 	jal	0 <func_80B13AA0>
     110:	3c074210 	lui	a3,0x4210
     114:	2605014c 	addiu	a1,s0,332
     118:	3c060601 	lui	a2,0x601
     11c:	3c070600 	lui	a3,0x600
     120:	260e0190 	addiu	t6,s0,400
     124:	260f01f6 	addiu	t7,s0,502
     128:	24180011 	li	t8,17
     12c:	afb80018 	sw	t8,24(sp)
     130:	afaf0014 	sw	t7,20(sp)
     134:	afae0010 	sw	t6,16(sp)
     138:	24e71c94 	addiu	a3,a3,7316
     13c:	24c6b7b8 	addiu	a2,a2,-18504
     140:	afa50038 	sw	a1,56(sp)
     144:	0c000000 	jal	0 <func_80B13AA0>
     148:	8fa40054 	lw	a0,84(sp)
     14c:	26050264 	addiu	a1,s0,612
     150:	afa5003c 	sw	a1,60(sp)
     154:	0c000000 	jal	0 <func_80B13AA0>
     158:	8fa40054 	lw	a0,84(sp)
     15c:	3c070000 	lui	a3,0x0
     160:	8fa5003c 	lw	a1,60(sp)
     164:	24e70000 	addiu	a3,a3,0
     168:	8fa40054 	lw	a0,84(sp)
     16c:	0c000000 	jal	0 <func_80B13AA0>
     170:	02003025 	move	a2,s0
     174:	3c090000 	lui	t1,0x0
     178:	241900ff 	li	t9,255
     17c:	24080014 	li	t0,20
     180:	25290000 	addiu	t1,t1,0
     184:	3c053c23 	lui	a1,0x3c23
     188:	a21900ae 	sb	t9,174(s0)
     18c:	a60002e0 	sh	zero,736(s0)
     190:	a60002ce 	sh	zero,718(s0)
     194:	a60002e2 	sh	zero,738(s0)
     198:	a60802b6 	sh	t0,694(s0)
     19c:	ae0902b0 	sw	t1,688(s0)
     1a0:	34a5d70a 	ori	a1,a1,0xd70a
     1a4:	0c000000 	jal	0 <func_80B13AA0>
     1a8:	02002025 	move	a0,s0
     1ac:	3c01c080 	lui	at,0xc080
     1b0:	44810000 	mtc1	at,$f0
     1b4:	3c01bf80 	lui	at,0xbf80
     1b8:	44812000 	mtc1	at,$f4
     1bc:	8602001c 	lh	v0,28(s0)
     1c0:	240a0006 	li	t2,6
     1c4:	24010001 	li	at,1
     1c8:	a20a001f 	sb	t2,31(s0)
     1cc:	e6000060 	swc1	$f0,96(s0)
     1d0:	e6000070 	swc1	$f0,112(s0)
     1d4:	10410006 	beq	v0,at,1f0 <EnTa_Init+0x108>
     1d8:	e604006c 	swc1	$f4,108(s0)
     1dc:	24010002 	li	at,2
     1e0:	1041003b 	beq	v0,at,2d0 <EnTa_Init+0x1e8>
     1e4:	3c040000 	lui	a0,0x0
     1e8:	10000069 	b	390 <EnTa_Init+0x2a8>
     1ec:	3c040000 	lui	a0,0x0
     1f0:	3c040000 	lui	a0,0x0
     1f4:	0c000000 	jal	0 <func_80B13AA0>
     1f8:	24840000 	addiu	a0,a0,0
     1fc:	3c020000 	lui	v0,0x0
     200:	94420ee0 	lhu	v0,3808(v0)
     204:	3c0c0000 	lui	t4,0x0
     208:	304b0800 	andi	t3,v0,0x800
     20c:	11600005 	beqz	t3,224 <EnTa_Init+0x13c>
     210:	00000000 	nop
     214:	0c000000 	jal	0 <func_80B13AA0>
     218:	02002025 	move	a0,s0
     21c:	1000015e 	b	798 <EnTa_Init+0x6b0>
     220:	8fbf0034 	lw	ra,52(sp)
     224:	8d8c0004 	lw	t4,4(t4)
     228:	304d0400 	andi	t5,v0,0x400
     22c:	11800005 	beqz	t4,244 <EnTa_Init+0x15c>
     230:	00000000 	nop
     234:	0c000000 	jal	0 <func_80B13AA0>
     238:	02002025 	move	a0,s0
     23c:	10000156 	b	798 <EnTa_Init+0x6b0>
     240:	8fbf0034 	lw	ra,52(sp)
     244:	11a00010 	beqz	t5,288 <EnTa_Init+0x1a0>
     248:	02002025 	move	a0,s0
     24c:	3c050000 	lui	a1,0x0
     250:	3c060000 	lui	a2,0x0
     254:	24c60000 	addiu	a2,a2,0
     258:	24a50000 	addiu	a1,a1,0
     25c:	0c000000 	jal	0 <func_80B13AA0>
     260:	02002025 	move	a0,s0
     264:	a60002b4 	sh	zero,692(s0)
     268:	3c050600 	lui	a1,0x600
     26c:	24a51c94 	addiu	a1,a1,7316
     270:	0c000000 	jal	0 <func_80B13AA0>
     274:	8fa40038 	lw	a0,56(sp)
     278:	3c0e0600 	lui	t6,0x600
     27c:	25ce1c94 	addiu	t6,t6,7316
     280:	10000144 	b	794 <EnTa_Init+0x6ac>
     284:	ae0e02e4 	sw	t6,740(s0)
     288:	3c050000 	lui	a1,0x0
     28c:	3c060000 	lui	a2,0x0
     290:	24c60000 	addiu	a2,a2,0
     294:	0c000000 	jal	0 <func_80B13AA0>
     298:	24a50000 	addiu	a1,a1,0
     29c:	240f0002 	li	t7,2
     2a0:	a60f02b4 	sh	t7,692(s0)
     2a4:	3c050601 	lui	a1,0x601
     2a8:	24a5cd50 	addiu	a1,a1,-12976
     2ac:	0c000000 	jal	0 <func_80B13AA0>
     2b0:	8fa40038 	lw	a0,56(sp)
     2b4:	3c014258 	lui	at,0x4258
     2b8:	44813000 	mtc1	at,$f6
     2bc:	3c180601 	lui	t8,0x601
     2c0:	2718cd50 	addiu	t8,t8,-12976
     2c4:	ae1802e4 	sw	t8,740(s0)
     2c8:	10000132 	b	794 <EnTa_Init+0x6ac>
     2cc:	e60600c4 	swc1	$f6,196(s0)
     2d0:	0c000000 	jal	0 <func_80B13AA0>
     2d4:	24840000 	addiu	a0,a0,0
     2d8:	3c020000 	lui	v0,0x0
     2dc:	24420000 	addiu	v0,v0,0
     2e0:	94590ee0 	lhu	t9,3808(v0)
     2e4:	33280800 	andi	t0,t9,0x800
     2e8:	55000006 	bnezl	t0,304 <EnTa_Init+0x21c>
     2ec:	8c490004 	lw	t1,4(v0)
     2f0:	0c000000 	jal	0 <func_80B13AA0>
     2f4:	02002025 	move	a0,s0
     2f8:	10000127 	b	798 <EnTa_Init+0x6b0>
     2fc:	8fbf0034 	lw	ra,52(sp)
     300:	8c490004 	lw	t1,4(v0)
     304:	8faa0054 	lw	t2,84(sp)
     308:	51200006 	beqzl	t1,324 <EnTa_Init+0x23c>
     30c:	854b00a4 	lh	t3,164(t2)
     310:	0c000000 	jal	0 <func_80B13AA0>
     314:	02002025 	move	a0,s0
     318:	1000011f 	b	798 <EnTa_Init+0x6b0>
     31c:	8fbf0034 	lw	ra,52(sp)
     320:	854b00a4 	lh	t3,164(t2)
     324:	24010036 	li	at,54
     328:	02002025 	move	a0,s0
     32c:	1561000b 	bne	t3,at,35c <EnTa_Init+0x274>
     330:	3c050000 	lui	a1,0x0
     334:	8c4c0010 	lw	t4,16(v0)
     338:	11800008 	beqz	t4,35c <EnTa_Init+0x274>
     33c:	00000000 	nop
     340:	0c000000 	jal	0 <func_80B13AA0>
     344:	02002025 	move	a0,s0
     348:	3c040000 	lui	a0,0x0
     34c:	0c000000 	jal	0 <func_80B13AA0>
     350:	24840000 	addiu	a0,a0,0
     354:	10000110 	b	798 <EnTa_Init+0x6b0>
     358:	8fbf0034 	lw	ra,52(sp)
     35c:	3c060000 	lui	a2,0x0
     360:	24c60000 	addiu	a2,a2,0
     364:	0c000000 	jal	0 <func_80B13AA0>
     368:	24a50000 	addiu	a1,a1,0
     36c:	a60002b4 	sh	zero,692(s0)
     370:	3c050600 	lui	a1,0x600
     374:	24a51c94 	addiu	a1,a1,7316
     378:	0c000000 	jal	0 <func_80B13AA0>
     37c:	8fa40038 	lw	a0,56(sp)
     380:	3c0d0600 	lui	t5,0x600
     384:	25ad1c94 	addiu	t5,t5,7316
     388:	10000102 	b	794 <EnTa_Init+0x6ac>
     38c:	ae0d02e4 	sw	t5,740(s0)
     390:	0c000000 	jal	0 <func_80B13AA0>
     394:	24840000 	addiu	a0,a0,0
     398:	8fa30054 	lw	v1,84(sp)
     39c:	2401005f 	li	at,95
     3a0:	846200a4 	lh	v0,164(v1)
     3a4:	5441002e 	bnel	v0,at,460 <EnTa_Init+0x378>
     3a8:	2401004c 	li	at,76
     3ac:	3c020000 	lui	v0,0x0
     3b0:	94420ed6 	lhu	v0,3798(v0)
     3b4:	304e0010 	andi	t6,v0,0x10
     3b8:	11c00005 	beqz	t6,3d0 <EnTa_Init+0x2e8>
     3bc:	304f0008 	andi	t7,v0,0x8
     3c0:	0c000000 	jal	0 <func_80B13AA0>
     3c4:	02002025 	move	a0,s0
     3c8:	100000f3 	b	798 <EnTa_Init+0x6b0>
     3cc:	8fbf0034 	lw	ra,52(sp)
     3d0:	11e00010 	beqz	t7,414 <EnTa_Init+0x32c>
     3d4:	02002025 	move	a0,s0
     3d8:	3c050000 	lui	a1,0x0
     3dc:	3c060000 	lui	a2,0x0
     3e0:	24c60000 	addiu	a2,a2,0
     3e4:	24a50000 	addiu	a1,a1,0
     3e8:	0c000000 	jal	0 <func_80B13AA0>
     3ec:	02002025 	move	a0,s0
     3f0:	a60002b4 	sh	zero,692(s0)
     3f4:	3c050600 	lui	a1,0x600
     3f8:	24a51c94 	addiu	a1,a1,7316
     3fc:	0c000000 	jal	0 <func_80B13AA0>
     400:	8fa40038 	lw	a0,56(sp)
     404:	3c180600 	lui	t8,0x600
     408:	27181c94 	addiu	t8,t8,7316
     40c:	100000e1 	b	794 <EnTa_Init+0x6ac>
     410:	ae1802e4 	sw	t8,740(s0)
     414:	3c050000 	lui	a1,0x0
     418:	3c060000 	lui	a2,0x0
     41c:	24c60000 	addiu	a2,a2,0
     420:	0c000000 	jal	0 <func_80B13AA0>
     424:	24a50000 	addiu	a1,a1,0
     428:	24190002 	li	t9,2
     42c:	a61902b4 	sh	t9,692(s0)
     430:	3c050601 	lui	a1,0x601
     434:	24a5cd50 	addiu	a1,a1,-12976
     438:	0c000000 	jal	0 <func_80B13AA0>
     43c:	8fa40038 	lw	a0,56(sp)
     440:	3c014258 	lui	at,0x4258
     444:	44814000 	mtc1	at,$f8
     448:	3c080601 	lui	t0,0x601
     44c:	2508cd50 	addiu	t0,t0,-12976
     450:	ae0802e4 	sw	t0,740(s0)
     454:	100000cf 	b	794 <EnTa_Init+0x6ac>
     458:	e60800c4 	swc1	$f8,196(s0)
     45c:	2401004c 	li	at,76
     460:	144100bb 	bne	v0,at,750 <EnTa_Init+0x668>
     464:	02002025 	move	a0,s0
     468:	3c040000 	lui	a0,0x0
     46c:	0c000000 	jal	0 <func_80B13AA0>
     470:	24840000 	addiu	a0,a0,0
     474:	3c030000 	lui	v1,0x0
     478:	24630000 	addiu	v1,v1,0
     47c:	94690ed6 	lhu	t1,3798(v1)
     480:	312a0010 	andi	t2,t1,0x10
     484:	55400006 	bnezl	t2,4a0 <EnTa_Init+0x3b8>
     488:	8c6b0004 	lw	t3,4(v1)
     48c:	0c000000 	jal	0 <func_80B13AA0>
     490:	02002025 	move	a0,s0
     494:	100000c0 	b	798 <EnTa_Init+0x6b0>
     498:	8fbf0034 	lw	ra,52(sp)
     49c:	8c6b0004 	lw	t3,4(v1)
     4a0:	55600006 	bnezl	t3,4bc <EnTa_Init+0x3d4>
     4a4:	8c6c0010 	lw	t4,16(v1)
     4a8:	0c000000 	jal	0 <func_80B13AA0>
     4ac:	02002025 	move	a0,s0
     4b0:	100000b9 	b	798 <EnTa_Init+0x6b0>
     4b4:	8fbf0034 	lw	ra,52(sp)
     4b8:	8c6c0010 	lw	t4,16(v1)
     4bc:	3c050000 	lui	a1,0x0
     4c0:	24a50000 	addiu	a1,a1,0
     4c4:	15800092 	bnez	t4,710 <EnTa_Init+0x628>
     4c8:	02002025 	move	a0,s0
     4cc:	3c0140a0 	lui	at,0x40a0
     4d0:	44818000 	mtc1	at,$f16
     4d4:	3c014040 	lui	at,0x4040
     4d8:	8fa50054 	lw	a1,84(sp)
     4dc:	44813000 	mtc1	at,$f6
     4e0:	c6040028 	lwc1	$f4,40(s0)
     4e4:	240f0007 	li	t7,7
     4e8:	a60f02c8 	sh	t7,712(s0)
     4ec:	8e0d0004 	lw	t5,4(s0)
     4f0:	860202c8 	lh	v0,712(s0)
     4f4:	c60a0024 	lwc1	$f10,36(s0)
     4f8:	46062200 	add.s	$f8,$f4,$f6
     4fc:	35ae0010 	ori	t6,t5,0x10
     500:	ae0e0004 	sw	t6,4(s0)
     504:	46105480 	add.s	$f18,$f10,$f16
     508:	a60202c6 	sh	v0,710(s0)
     50c:	a60202c4 	sh	v0,708(s0)
     510:	e7a80010 	swc1	$f8,16(sp)
     514:	3c0141d0 	lui	at,0x41d0
     518:	44818000 	mtc1	at,$f16
     51c:	c60a002c 	lwc1	$f10,44(s0)
     520:	44079000 	mfc1	a3,$f18
     524:	2418000d 	li	t8,13
     528:	46105480 	add.s	$f18,$f10,$f16
     52c:	24a41c24 	addiu	a0,a1,7204
     530:	afa4003c 	sw	a0,60(sp)
     534:	afb80024 	sw	t8,36(sp)
     538:	e7b20014 	swc1	$f18,20(sp)
     53c:	afa00020 	sw	zero,32(sp)
     540:	afa0001c 	sw	zero,28(sp)
     544:	afa00018 	sw	zero,24(sp)
     548:	0c000000 	jal	0 <func_80B13AA0>
     54c:	24060019 	li	a2,25
     550:	3c0141a0 	lui	at,0x41a0
     554:	44813000 	mtc1	at,$f6
     558:	3c014220 	lui	at,0x4220
     55c:	44818000 	mtc1	at,$f16
     560:	c60a0028 	lwc1	$f10,40(s0)
     564:	c6040024 	lwc1	$f4,36(s0)
     568:	8fa50054 	lw	a1,84(sp)
     56c:	46105480 	add.s	$f18,$f10,$f16
     570:	ae0202b8 	sw	v0,696(s0)
     574:	3c0141f0 	lui	at,0x41f0
     578:	46062201 	sub.s	$f8,$f4,$f6
     57c:	e7b20010 	swc1	$f18,16(sp)
     580:	c604002c 	lwc1	$f4,44(s0)
     584:	44813000 	mtc1	at,$f6
     588:	44074000 	mfc1	a3,$f8
     58c:	2419000d 	li	t9,13
     590:	46062201 	sub.s	$f8,$f4,$f6
     594:	afb90024 	sw	t9,36(sp)
     598:	afa00020 	sw	zero,32(sp)
     59c:	afa0001c 	sw	zero,28(sp)
     5a0:	e7a80014 	swc1	$f8,20(sp)
     5a4:	afa00018 	sw	zero,24(sp)
     5a8:	8fa4003c 	lw	a0,60(sp)
     5ac:	0c000000 	jal	0 <func_80B13AA0>
     5b0:	24060019 	li	a2,25
     5b4:	3c0141a0 	lui	at,0x41a0
     5b8:	44818000 	mtc1	at,$f16
     5bc:	3c014220 	lui	at,0x4220
     5c0:	44813000 	mtc1	at,$f6
     5c4:	c6040028 	lwc1	$f4,40(s0)
     5c8:	c60a0024 	lwc1	$f10,36(s0)
     5cc:	8fa50054 	lw	a1,84(sp)
     5d0:	46062200 	add.s	$f8,$f4,$f6
     5d4:	ae0202bc 	sw	v0,700(s0)
     5d8:	3c0141f0 	lui	at,0x41f0
     5dc:	46105480 	add.s	$f18,$f10,$f16
     5e0:	e7a80010 	swc1	$f8,16(sp)
     5e4:	c60a002c 	lwc1	$f10,44(s0)
     5e8:	44818000 	mtc1	at,$f16
     5ec:	44079000 	mfc1	a3,$f18
     5f0:	2408000d 	li	t0,13
     5f4:	46105481 	sub.s	$f18,$f10,$f16
     5f8:	afa80024 	sw	t0,36(sp)
     5fc:	afa00020 	sw	zero,32(sp)
     600:	afa0001c 	sw	zero,28(sp)
     604:	e7b20014 	swc1	$f18,20(sp)
     608:	afa00018 	sw	zero,24(sp)
     60c:	8fa4003c 	lw	a0,60(sp)
     610:	0c000000 	jal	0 <func_80B13AA0>
     614:	24060019 	li	a2,25
     618:	ae0202c0 	sw	v0,704(s0)
     61c:	8fa50054 	lw	a1,84(sp)
     620:	0c000000 	jal	0 <func_80B13AA0>
     624:	02002025 	move	a0,s0
     628:	3c090000 	lui	t1,0x0
     62c:	952913fa 	lhu	t1,5114(t1)
     630:	3c050000 	lui	a1,0x0
     634:	24a50000 	addiu	a1,a1,0
     638:	312a0400 	andi	t2,t1,0x400
     63c:	11400025 	beqz	t2,6d4 <EnTa_Init+0x5ec>
     640:	02002025 	move	a0,s0
     644:	3c060000 	lui	a2,0x0
     648:	0c000000 	jal	0 <func_80B13AA0>
     64c:	24c60000 	addiu	a2,a2,0
     650:	3c040601 	lui	a0,0x601
     654:	0c000000 	jal	0 <func_80B13AA0>
     658:	2484c48c 	addiu	a0,a0,-15220
     65c:	3c040601 	lui	a0,0x601
     660:	2484c48c 	addiu	a0,a0,-15220
     664:	0c000000 	jal	0 <func_80B13AA0>
     668:	a7a20040 	sh	v0,64(sp)
     66c:	87ab0040 	lh	t3,64(sp)
     670:	3c013f80 	lui	at,0x3f80
     674:	44810000 	mtc1	at,$f0
     678:	448b2000 	mtc1	t3,$f4
     67c:	44825000 	mtc1	v0,$f10
     680:	44809000 	mtc1	zero,$f18
     684:	468021a0 	cvt.s.w	$f6,$f4
     688:	3c050601 	lui	a1,0x601
     68c:	240c0002 	li	t4,2
     690:	44060000 	mfc1	a2,$f0
     694:	afac0014 	sw	t4,20(sp)
     698:	46805420 	cvt.s.w	$f16,$f10
     69c:	24a5c48c 	addiu	a1,a1,-15220
     6a0:	8fa40038 	lw	a0,56(sp)
     6a4:	e7b20018 	swc1	$f18,24(sp)
     6a8:	46003201 	sub.s	$f8,$f6,$f0
     6ac:	e7b00010 	swc1	$f16,16(sp)
     6b0:	44074000 	mfc1	a3,$f8
     6b4:	0c000000 	jal	0 <func_80B13AA0>
     6b8:	00000000 	nop
     6bc:	3c020000 	lui	v0,0x0
     6c0:	24420000 	addiu	v0,v0,0
     6c4:	944d13fa 	lhu	t5,5114(v0)
     6c8:	31aefbff 	andi	t6,t5,0xfbff
     6cc:	10000031 	b	794 <EnTa_Init+0x6ac>
     6d0:	a44e13fa 	sh	t6,5114(v0)
     6d4:	3c050000 	lui	a1,0x0
     6d8:	3c060000 	lui	a2,0x0
     6dc:	24c60000 	addiu	a2,a2,0
     6e0:	24a50000 	addiu	a1,a1,0
     6e4:	0c000000 	jal	0 <func_80B13AA0>
     6e8:	02002025 	move	a0,s0
     6ec:	a60002b4 	sh	zero,692(s0)
     6f0:	3c050600 	lui	a1,0x600
     6f4:	24a517e8 	addiu	a1,a1,6120
     6f8:	0c000000 	jal	0 <func_80B13AA0>
     6fc:	8fa40038 	lw	a0,56(sp)
     700:	3c0f0600 	lui	t7,0x600
     704:	25ef17e8 	addiu	t7,t7,6120
     708:	10000022 	b	794 <EnTa_Init+0x6ac>
     70c:	ae0f02e4 	sw	t7,740(s0)
     710:	3c060000 	lui	a2,0x0
     714:	0c000000 	jal	0 <func_80B13AA0>
     718:	24c60000 	addiu	a2,a2,0
     71c:	24180002 	li	t8,2
     720:	a61802b4 	sh	t8,692(s0)
     724:	3c050601 	lui	a1,0x601
     728:	24a5cd50 	addiu	a1,a1,-12976
     72c:	0c000000 	jal	0 <func_80B13AA0>
     730:	8fa40038 	lw	a0,56(sp)
     734:	3c014258 	lui	at,0x4258
     738:	44812000 	mtc1	at,$f4
     73c:	3c190601 	lui	t9,0x601
     740:	2739cd50 	addiu	t9,t9,-12976
     744:	ae1902e4 	sw	t9,740(s0)
     748:	10000012 	b	794 <EnTa_Init+0x6ac>
     74c:	e60400c4 	swc1	$f4,196(s0)
     750:	3c050000 	lui	a1,0x0
     754:	3c060000 	lui	a2,0x0
     758:	24c60000 	addiu	a2,a2,0
     75c:	0c000000 	jal	0 <func_80B13AA0>
     760:	24a50000 	addiu	a1,a1,0
     764:	24080002 	li	t0,2
     768:	a60802b4 	sh	t0,692(s0)
     76c:	3c050601 	lui	a1,0x601
     770:	24a5cd50 	addiu	a1,a1,-12976
     774:	0c000000 	jal	0 <func_80B13AA0>
     778:	8fa40038 	lw	a0,56(sp)
     77c:	3c014258 	lui	at,0x4258
     780:	44813000 	mtc1	at,$f6
     784:	3c090601 	lui	t1,0x601
     788:	2529cd50 	addiu	t1,t1,-12976
     78c:	ae0902e4 	sw	t1,740(s0)
     790:	e60600c4 	swc1	$f6,196(s0)
     794:	8fbf0034 	lw	ra,52(sp)
     798:	8fb00030 	lw	s0,48(sp)
     79c:	27bd0050 	addiu	sp,sp,80
     7a0:	03e00008 	jr	ra
     7a4:	00000000 	nop

000007a8 <func_80B14248>:
     7a8:	3c014210 	lui	at,0x4210
     7ac:	44812000 	mtc1	at,$f4
     7b0:	c48000c4 	lwc1	$f0,196(a0)
     7b4:	3c010000 	lui	at,0x0
     7b8:	4600203c 	c.lt.s	$f4,$f0
     7bc:	00000000 	nop
     7c0:	45000004 	bc1f	7d4 <func_80B14248+0x2c>
     7c4:	00000000 	nop
     7c8:	c4260000 	lwc1	$f6,0(at)
     7cc:	46060201 	sub.s	$f8,$f0,$f6
     7d0:	e48800c4 	swc1	$f8,196(a0)
     7d4:	03e00008 	jr	ra
     7d8:	00000000 	nop

000007dc <EnTa_Destroy>:
     7dc:	27bdffe8 	addiu	sp,sp,-24
     7e0:	00803025 	move	a2,a0
     7e4:	afbf0014 	sw	ra,20(sp)
     7e8:	afa5001c 	sw	a1,28(sp)
     7ec:	00a02025 	move	a0,a1
     7f0:	24c50264 	addiu	a1,a2,612
     7f4:	0c000000 	jal	0 <func_80B13AA0>
     7f8:	afa60018 	sw	a2,24(sp)
     7fc:	8fa60018 	lw	a2,24(sp)
     800:	24010001 	li	at,1
     804:	84c2001c 	lh	v0,28(a2)
     808:	10410008 	beq	v0,at,82c <EnTa_Destroy+0x50>
     80c:	24010002 	li	at,2
     810:	10410006 	beq	v0,at,82c <EnTa_Destroy+0x50>
     814:	8fae001c 	lw	t6,28(sp)
     818:	85cf00a4 	lh	t7,164(t6)
     81c:	2401004c 	li	at,76
     820:	15e10002 	bne	t7,at,82c <EnTa_Destroy+0x50>
     824:	3c010000 	lui	at,0x0
     828:	a42013ce 	sh	zero,5070(at)
     82c:	94d802e0 	lhu	t8,736(a2)
     830:	33190200 	andi	t9,t8,0x200
     834:	53200004 	beqzl	t9,848 <EnTa_Destroy+0x6c>
     838:	8fbf0014 	lw	ra,20(sp)
     83c:	0c000000 	jal	0 <func_80B13AA0>
     840:	00000000 	nop
     844:	8fbf0014 	lw	ra,20(sp)
     848:	27bd0018 	addiu	sp,sp,24
     84c:	03e00008 	jr	ra
     850:	00000000 	nop

00000854 <func_80B142F4>:
     854:	27bdffe8 	addiu	sp,sp,-24
     858:	afbf0014 	sw	ra,20(sp)
     85c:	afa5001c 	sw	a1,28(sp)
     860:	afa60020 	sw	a2,32(sp)
     864:	0c000000 	jal	0 <func_80B13AA0>
     868:	afa40018 	sw	a0,24(sp)
     86c:	10400003 	beqz	v0,87c <func_80B142F4+0x28>
     870:	8fa40018 	lw	a0,24(sp)
     874:	1000001c 	b	8e8 <func_80B142F4+0x94>
     878:	24020001 	li	v0,1
     87c:	848f008a 	lh	t7,138(a0)
     880:	849800b6 	lh	t8,182(a0)
     884:	97ae0022 	lhu	t6,34(sp)
     888:	01f81023 	subu	v0,t7,t8
     88c:	00021400 	sll	v0,v0,0x10
     890:	00021403 	sra	v0,v0,0x10
     894:	04400003 	bltz	v0,8a4 <func_80B142F4+0x50>
     898:	a48e010e 	sh	t6,270(a0)
     89c:	10000002 	b	8a8 <func_80B142F4+0x54>
     8a0:	00401825 	move	v1,v0
     8a4:	00021823 	negu	v1,v0
     8a8:	28614301 	slti	at,v1,17153
     8ac:	1020000d 	beqz	at,8e4 <func_80B142F4+0x90>
     8b0:	3c0142c8 	lui	at,0x42c8
     8b4:	44810000 	mtc1	at,$f0
     8b8:	c4840090 	lwc1	$f4,144(a0)
     8bc:	4600203c 	c.lt.s	$f4,$f0
     8c0:	00000000 	nop
     8c4:	45020008 	bc1fl	8e8 <func_80B142F4+0x94>
     8c8:	00001025 	move	v0,zero
     8cc:	949902e0 	lhu	t9,736(a0)
     8d0:	44060000 	mfc1	a2,$f0
     8d4:	37280001 	ori	t0,t9,0x1
     8d8:	a48802e0 	sh	t0,736(a0)
     8dc:	0c000000 	jal	0 <func_80B13AA0>
     8e0:	8fa5001c 	lw	a1,28(sp)
     8e4:	00001025 	move	v0,zero
     8e8:	8fbf0014 	lw	ra,20(sp)
     8ec:	27bd0018 	addiu	sp,sp,24
     8f0:	03e00008 	jr	ra
     8f4:	00000000 	nop

000008f8 <func_80B14398>:
     8f8:	27bdffe8 	addiu	sp,sp,-24
     8fc:	afbf0014 	sw	ra,20(sp)
     900:	0c000000 	jal	0 <func_80B13AA0>
     904:	afa40018 	sw	a0,24(sp)
     908:	10400006 	beqz	v0,924 <func_80B14398+0x2c>
     90c:	8fa40018 	lw	a0,24(sp)
     910:	3c050000 	lui	a1,0x0
     914:	3c060000 	lui	a2,0x0
     918:	24c60000 	addiu	a2,a2,0
     91c:	0c000000 	jal	0 <func_80B13AA0>
     920:	24a50000 	addiu	a1,a1,0
     924:	8fbf0014 	lw	ra,20(sp)
     928:	27bd0018 	addiu	sp,sp,24
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_80B143D4>:
     934:	27bdffe8 	addiu	sp,sp,-24
     938:	afbf0014 	sw	ra,20(sp)
     93c:	0c000000 	jal	0 <func_80B13AA0>
     940:	afa40018 	sw	a0,24(sp)
     944:	10400006 	beqz	v0,960 <func_80B143D4+0x2c>
     948:	8fa40018 	lw	a0,24(sp)
     94c:	3c050000 	lui	a1,0x0
     950:	3c060000 	lui	a2,0x0
     954:	24c60000 	addiu	a2,a2,0
     958:	0c000000 	jal	0 <func_80B13AA0>
     95c:	24a50000 	addiu	a1,a1,0
     960:	8fbf0014 	lw	ra,20(sp)
     964:	27bd0018 	addiu	sp,sp,24
     968:	03e00008 	jr	ra
     96c:	00000000 	nop

00000970 <func_80B14410>:
     970:	3c020000 	lui	v0,0x0
     974:	24420000 	addiu	v0,v0,0
     978:	8c4e0004 	lw	t6,4(v0)
     97c:	27bdffe8 	addiu	sp,sp,-24
     980:	afbf0014 	sw	ra,20(sp)
     984:	11c0000c 	beqz	t6,9b8 <func_80B14410+0x48>
     988:	3c050000 	lui	a1,0x0
     98c:	3c050000 	lui	a1,0x0
     990:	3c060000 	lui	a2,0x0
     994:	24c60000 	addiu	a2,a2,0
     998:	0c000000 	jal	0 <func_80B13AA0>
     99c:	24a50000 	addiu	a1,a1,0
     9a0:	3c020000 	lui	v0,0x0
     9a4:	24420000 	addiu	v0,v0,0
     9a8:	944f0ed6 	lhu	t7,3798(v0)
     9ac:	35f80008 	ori	t8,t7,0x8
     9b0:	1000000a 	b	9dc <func_80B14410+0x6c>
     9b4:	a4580ed6 	sh	t8,3798(v0)
     9b8:	3c060000 	lui	a2,0x0
     9bc:	24c60000 	addiu	a2,a2,0
     9c0:	0c000000 	jal	0 <func_80B13AA0>
     9c4:	24a50000 	addiu	a1,a1,0
     9c8:	3c020000 	lui	v0,0x0
     9cc:	24420000 	addiu	v0,v0,0
     9d0:	94590ee0 	lhu	t9,3808(v0)
     9d4:	37280400 	ori	t0,t9,0x400
     9d8:	a4480ee0 	sh	t0,3808(v0)
     9dc:	8fbf0014 	lw	ra,20(sp)
     9e0:	27bd0018 	addiu	sp,sp,24
     9e4:	03e00008 	jr	ra
     9e8:	00000000 	nop

000009ec <func_80B1448C>:
     9ec:	27bdffe0 	addiu	sp,sp,-32
     9f0:	afbf001c 	sw	ra,28(sp)
     9f4:	afb00018 	sw	s0,24(sp)
     9f8:	0c000000 	jal	0 <func_80B13AA0>
     9fc:	00808025 	move	s0,a0
     a00:	10400003 	beqz	v0,a10 <func_80B1448C+0x24>
     a04:	00000000 	nop
     a08:	0c000000 	jal	0 <func_80B13AA0>
     a0c:	02002025 	move	a0,s0
     a10:	0c000000 	jal	0 <func_80B13AA0>
     a14:	02002025 	move	a0,s0
     a18:	960e02e0 	lhu	t6,736(s0)
     a1c:	35cf0004 	ori	t7,t6,0x4
     a20:	a60f02e0 	sh	t7,736(s0)
     a24:	8fbf001c 	lw	ra,28(sp)
     a28:	8fb00018 	lw	s0,24(sp)
     a2c:	27bd0020 	addiu	sp,sp,32
     a30:	03e00008 	jr	ra
     a34:	00000000 	nop

00000a38 <func_80B144D8>:
     a38:	27bdffe0 	addiu	sp,sp,-32
     a3c:	afbf001c 	sw	ra,28(sp)
     a40:	afb00018 	sw	s0,24(sp)
     a44:	00808025 	move	s0,a0
     a48:	0c000000 	jal	0 <func_80B13AA0>
     a4c:	afa50024 	sw	a1,36(sp)
     a50:	50400009 	beqzl	v0,a78 <func_80B144D8+0x40>
     a54:	8fa40024 	lw	a0,36(sp)
     a58:	0c000000 	jal	0 <func_80B13AA0>
     a5c:	02002025 	move	a0,s0
     a60:	3c0f0000 	lui	t7,0x0
     a64:	240e0001 	li	t6,1
     a68:	25ef0000 	addiu	t7,t7,0
     a6c:	a60e02b6 	sh	t6,694(s0)
     a70:	ae0f02b0 	sw	t7,688(s0)
     a74:	8fa40024 	lw	a0,36(sp)
     a78:	0c000000 	jal	0 <func_80B13AA0>
     a7c:	248420d8 	addiu	a0,a0,8408
     a80:	24010006 	li	at,6
     a84:	14410008 	bne	v0,at,aa8 <func_80B144D8+0x70>
     a88:	24180001 	li	t8,1
     a8c:	3c050000 	lui	a1,0x0
     a90:	3c060000 	lui	a2,0x0
     a94:	a61802b4 	sh	t8,692(s0)
     a98:	24c60000 	addiu	a2,a2,0
     a9c:	24a50000 	addiu	a1,a1,0
     aa0:	0c000000 	jal	0 <func_80B13AA0>
     aa4:	02002025 	move	a0,s0
     aa8:	0c000000 	jal	0 <func_80B13AA0>
     aac:	02002025 	move	a0,s0
     ab0:	961902e0 	lhu	t9,736(s0)
     ab4:	37280004 	ori	t0,t9,0x4
     ab8:	a60802e0 	sh	t0,736(s0)
     abc:	8fbf001c 	lw	ra,28(sp)
     ac0:	8fb00018 	lw	s0,24(sp)
     ac4:	27bd0020 	addiu	sp,sp,32
     ac8:	03e00008 	jr	ra
     acc:	00000000 	nop

00000ad0 <func_80B14570>:
     ad0:	27bdffe8 	addiu	sp,sp,-24
     ad4:	afbf0014 	sw	ra,20(sp)
     ad8:	afa5001c 	sw	a1,28(sp)
     adc:	948e02e0 	lhu	t6,736(a0)
     ae0:	849802cc 	lh	t8,716(a0)
     ae4:	00803825 	move	a3,a0
     ae8:	35cf0004 	ori	t7,t6,0x4
     aec:	17000016 	bnez	t8,b48 <func_80B14570+0x78>
     af0:	a48f02e0 	sh	t7,736(a0)
     af4:	3c050000 	lui	a1,0x0
     af8:	3c060000 	lui	a2,0x0
     afc:	24c60000 	addiu	a2,a2,0
     b00:	24a50000 	addiu	a1,a1,0
     b04:	0c000000 	jal	0 <func_80B13AA0>
     b08:	afa70018 	sw	a3,24(sp)
     b0c:	8fa70018 	lw	a3,24(sp)
     b10:	24190003 	li	t9,3
     b14:	2408003c 	li	t0,60
     b18:	3c050601 	lui	a1,0x601
     b1c:	24a5e3d8 	addiu	a1,a1,-7208
     b20:	a4f902ce 	sh	t9,718(a3)
     b24:	a4e802cc 	sh	t0,716(a3)
     b28:	0c000000 	jal	0 <func_80B13AA0>
     b2c:	24e4014c 	addiu	a0,a3,332
     b30:	8fa40018 	lw	a0,24(sp)
     b34:	3c090600 	lui	t1,0x600
     b38:	25291c94 	addiu	t1,t1,7316
     b3c:	24056851 	li	a1,26705
     b40:	0c000000 	jal	0 <func_80B13AA0>
     b44:	ac8902e4 	sw	t1,740(a0)
     b48:	8fbf0014 	lw	ra,20(sp)
     b4c:	27bd0018 	addiu	sp,sp,24
     b50:	03e00008 	jr	ra
     b54:	00000000 	nop

00000b58 <func_80B145F8>:
     b58:	27bdffe8 	addiu	sp,sp,-24
     b5c:	afbf0014 	sw	ra,20(sp)
     b60:	0c000000 	jal	0 <func_80B13AA0>
     b64:	afa40018 	sw	a0,24(sp)
     b68:	10400006 	beqz	v0,b84 <func_80B145F8+0x2c>
     b6c:	8fa40018 	lw	a0,24(sp)
     b70:	3c050000 	lui	a1,0x0
     b74:	3c060000 	lui	a2,0x0
     b78:	24c60000 	addiu	a2,a2,0
     b7c:	0c000000 	jal	0 <func_80B13AA0>
     b80:	24a50000 	addiu	a1,a1,0
     b84:	8fbf0014 	lw	ra,20(sp)
     b88:	27bd0018 	addiu	sp,sp,24
     b8c:	03e00008 	jr	ra
     b90:	00000000 	nop

00000b94 <func_80B14634>:
     b94:	27bdffd8 	addiu	sp,sp,-40
     b98:	afbf001c 	sw	ra,28(sp)
     b9c:	afb00018 	sw	s0,24(sp)
     ba0:	8cae1c44 	lw	t6,7236(a1)
     ba4:	00808025 	move	s0,a0
     ba8:	afa5002c 	sw	a1,44(sp)
     bac:	0c000000 	jal	0 <func_80B13AA0>
     bb0:	afae0024 	sw	t6,36(sp)
     bb4:	1040001d 	beqz	v0,c2c <func_80B14634+0x98>
     bb8:	8fa5002c 	lw	a1,44(sp)
     bbc:	0c000000 	jal	0 <func_80B13AA0>
     bc0:	00a02025 	move	a0,a1
     bc4:	24010003 	li	at,3
     bc8:	1441000d 	bne	v0,at,c00 <func_80B14634+0x6c>
     bcc:	02002025 	move	a0,s0
     bd0:	8fb80024 	lw	t8,36(sp)
     bd4:	240f702b 	li	t7,28715
     bd8:	3c050000 	lui	a1,0x0
     bdc:	3c060000 	lui	a2,0x0
     be0:	24c60000 	addiu	a2,a2,0
     be4:	24a50000 	addiu	a1,a1,0
     be8:	02002025 	move	a0,s0
     bec:	0c000000 	jal	0 <func_80B13AA0>
     bf0:	a70f010e 	sh	t7,270(t8)
     bf4:	24190028 	li	t9,40
     bf8:	10000012 	b	c44 <func_80B14634+0xb0>
     bfc:	a61902cc 	sh	t9,716(s0)
     c00:	10400004 	beqz	v0,c14 <func_80B14634+0x80>
     c04:	3c050000 	lui	a1,0x0
     c08:	8fa90024 	lw	t1,36(sp)
     c0c:	2408702a 	li	t0,28714
     c10:	a528010e 	sh	t0,270(t1)
     c14:	3c060000 	lui	a2,0x0
     c18:	24c60000 	addiu	a2,a2,0
     c1c:	0c000000 	jal	0 <func_80B13AA0>
     c20:	24a50000 	addiu	a1,a1,0
     c24:	10000008 	b	c48 <func_80B14634+0xb4>
     c28:	8fbf001c 	lw	ra,28(sp)
     c2c:	240a702a 	li	t2,28714
     c30:	a60a010e 	sh	t2,270(s0)
     c34:	02002025 	move	a0,s0
     c38:	3c0642c8 	lui	a2,0x42c8
     c3c:	0c000000 	jal	0 <func_80B13AA0>
     c40:	24070003 	li	a3,3
     c44:	8fbf001c 	lw	ra,28(sp)
     c48:	8fb00018 	lw	s0,24(sp)
     c4c:	27bd0028 	addiu	sp,sp,40
     c50:	03e00008 	jr	ra
     c54:	00000000 	nop

00000c58 <func_80B146F8>:
     c58:	27bdffe8 	addiu	sp,sp,-24
     c5c:	afbf0014 	sw	ra,20(sp)
     c60:	afa40018 	sw	a0,24(sp)
     c64:	0c000000 	jal	0 <func_80B13AA0>
     c68:	afa5001c 	sw	a1,28(sp)
     c6c:	10400006 	beqz	v0,c88 <func_80B146F8+0x30>
     c70:	8fa40018 	lw	a0,24(sp)
     c74:	3c050000 	lui	a1,0x0
     c78:	3c060000 	lui	a2,0x0
     c7c:	24c60000 	addiu	a2,a2,0
     c80:	0c000000 	jal	0 <func_80B13AA0>
     c84:	24a50000 	addiu	a1,a1,0
     c88:	8faf0018 	lw	t7,24(sp)
     c8c:	240e204b 	li	t6,8267
     c90:	3c0642c8 	lui	a2,0x42c8
     c94:	a5ee010e 	sh	t6,270(t7)
     c98:	8fa5001c 	lw	a1,28(sp)
     c9c:	0c000000 	jal	0 <func_80B13AA0>
     ca0:	8fa40018 	lw	a0,24(sp)
     ca4:	8fbf0014 	lw	ra,20(sp)
     ca8:	27bd0018 	addiu	sp,sp,24
     cac:	03e00008 	jr	ra
     cb0:	00000000 	nop

00000cb4 <func_80B14754>:
     cb4:	27bdffd8 	addiu	sp,sp,-40
     cb8:	afbf001c 	sw	ra,28(sp)
     cbc:	afb00018 	sw	s0,24(sp)
     cc0:	8cae1c44 	lw	t6,7236(a1)
     cc4:	00808025 	move	s0,a0
     cc8:	afa5002c 	sw	a1,44(sp)
     ccc:	0c000000 	jal	0 <func_80B13AA0>
     cd0:	afae0024 	sw	t6,36(sp)
     cd4:	1040001d 	beqz	v0,d4c <func_80B14754+0x98>
     cd8:	8fa5002c 	lw	a1,44(sp)
     cdc:	0c000000 	jal	0 <func_80B13AA0>
     ce0:	00a02025 	move	a0,a1
     ce4:	24010006 	li	at,6
     ce8:	1441000d 	bne	v0,at,d20 <func_80B14754+0x6c>
     cec:	02002025 	move	a0,s0
     cf0:	8fb80024 	lw	t8,36(sp)
     cf4:	240f702b 	li	t7,28715
     cf8:	3c050000 	lui	a1,0x0
     cfc:	3c060000 	lui	a2,0x0
     d00:	24c60000 	addiu	a2,a2,0
     d04:	24a50000 	addiu	a1,a1,0
     d08:	02002025 	move	a0,s0
     d0c:	0c000000 	jal	0 <func_80B13AA0>
     d10:	a70f010e 	sh	t7,270(t8)
     d14:	24190028 	li	t9,40
     d18:	10000012 	b	d64 <func_80B14754+0xb0>
     d1c:	a61902cc 	sh	t9,716(s0)
     d20:	10400004 	beqz	v0,d34 <func_80B14754+0x80>
     d24:	3c050000 	lui	a1,0x0
     d28:	8fa90024 	lw	t1,36(sp)
     d2c:	24085015 	li	t0,20501
     d30:	a528010e 	sh	t0,270(t1)
     d34:	3c060000 	lui	a2,0x0
     d38:	24c60000 	addiu	a2,a2,0
     d3c:	0c000000 	jal	0 <func_80B13AA0>
     d40:	24a50000 	addiu	a1,a1,0
     d44:	10000008 	b	d68 <func_80B14754+0xb4>
     d48:	8fbf001c 	lw	ra,28(sp)
     d4c:	240a5015 	li	t2,20501
     d50:	a60a010e 	sh	t2,270(s0)
     d54:	02002025 	move	a0,s0
     d58:	3c0642c8 	lui	a2,0x42c8
     d5c:	0c000000 	jal	0 <func_80B13AA0>
     d60:	24070006 	li	a3,6
     d64:	8fbf001c 	lw	ra,28(sp)
     d68:	8fb00018 	lw	s0,24(sp)
     d6c:	27bd0028 	addiu	sp,sp,40
     d70:	03e00008 	jr	ra
     d74:	00000000 	nop

00000d78 <func_80B14818>:
     d78:	27bdffe8 	addiu	sp,sp,-24
     d7c:	afbf0014 	sw	ra,20(sp)
     d80:	8ca2009c 	lw	v0,156(a1)
     d84:	2401000c 	li	at,12
     d88:	24050800 	li	a1,2048
     d8c:	0041001a 	div	zero,v0,at
     d90:	00001010 	mfhi	v0
     d94:	24010006 	li	at,6
     d98:	10400003 	beqz	v0,da8 <func_80B14818+0x30>
     d9c:	00000000 	nop
     da0:	54410005 	bnel	v0,at,db8 <func_80B14818+0x40>
     da4:	3c0140c0 	lui	at,0x40c0
     da8:	0c000000 	jal	0 <func_80B13AA0>
     dac:	afa40018 	sw	a0,24(sp)
     db0:	8fa40018 	lw	a0,24(sp)
     db4:	3c0140c0 	lui	at,0x40c0
     db8:	44812000 	mtc1	at,$f4
     dbc:	c4800068 	lwc1	$f0,104(a0)
     dc0:	3c010000 	lui	at,0x0
     dc4:	4604003c 	c.lt.s	$f0,$f4
     dc8:	00000000 	nop
     dcc:	45000004 	bc1f	de0 <func_80B14818+0x68>
     dd0:	00000000 	nop
     dd4:	c4260000 	lwc1	$f6,0(at)
     dd8:	46060200 	add.s	$f8,$f0,$f6
     ddc:	e4880068 	swc1	$f8,104(a0)
     de0:	0c000000 	jal	0 <func_80B13AA0>
     de4:	00000000 	nop
     de8:	8fbf0014 	lw	ra,20(sp)
     dec:	27bd0018 	addiu	sp,sp,24
     df0:	03e00008 	jr	ra
     df4:	00000000 	nop

00000df8 <func_80B14898>:
     df8:	27bdffd8 	addiu	sp,sp,-40
     dfc:	afa40028 	sw	a0,40(sp)
     e00:	afa5002c 	sw	a1,44(sp)
     e04:	00a02025 	move	a0,a1
     e08:	8fa50028 	lw	a1,40(sp)
     e0c:	afbf0024 	sw	ra,36(sp)
     e10:	240e00fa 	li	t6,250
     e14:	240f0014 	li	t7,20
     e18:	24180001 	li	t8,1
     e1c:	afb80018 	sw	t8,24(sp)
     e20:	afaf0014 	sw	t7,20(sp)
     e24:	afae0010 	sw	t6,16(sp)
     e28:	3c064248 	lui	a2,0x4248
     e2c:	24070002 	li	a3,2
     e30:	0c000000 	jal	0 <func_80B13AA0>
     e34:	24a50024 	addiu	a1,a1,36
     e38:	8fa40028 	lw	a0,40(sp)
     e3c:	0c000000 	jal	0 <func_80B13AA0>
     e40:	8fa5002c 	lw	a1,44(sp)
     e44:	8fa40028 	lw	a0,40(sp)
     e48:	849902cc 	lh	t9,716(a0)
     e4c:	57200004 	bnezl	t9,e60 <func_80B14898+0x68>
     e50:	8fbf0024 	lw	ra,36(sp)
     e54:	0c000000 	jal	0 <func_80B13AA0>
     e58:	00000000 	nop
     e5c:	8fbf0024 	lw	ra,36(sp)
     e60:	27bd0028 	addiu	sp,sp,40
     e64:	03e00008 	jr	ra
     e68:	00000000 	nop

00000e6c <func_80B1490C>:
     e6c:	27bdffe8 	addiu	sp,sp,-24
     e70:	afbf0014 	sw	ra,20(sp)
     e74:	afa5001c 	sw	a1,28(sp)
     e78:	848e0032 	lh	t6,50(a0)
     e7c:	849800b6 	lh	t8,182(a0)
     e80:	848802cc 	lh	t0,716(a0)
     e84:	25cf0c00 	addiu	t7,t6,3072
     e88:	27190c00 	addiu	t9,t8,3072
     e8c:	a48f0032 	sh	t7,50(a0)
     e90:	1500000a 	bnez	t0,ebc <func_80B1490C+0x50>
     e94:	a49900b6 	sh	t9,182(a0)
     e98:	3c050000 	lui	a1,0x0
     e9c:	3c060000 	lui	a2,0x0
     ea0:	24c60000 	addiu	a2,a2,0
     ea4:	24a50000 	addiu	a1,a1,0
     ea8:	0c000000 	jal	0 <func_80B13AA0>
     eac:	afa40018 	sw	a0,24(sp)
     eb0:	8fa40018 	lw	a0,24(sp)
     eb4:	2409003c 	li	t1,60
     eb8:	a48902cc 	sh	t1,716(a0)
     ebc:	8fbf0014 	lw	ra,20(sp)
     ec0:	27bd0018 	addiu	sp,sp,24
     ec4:	03e00008 	jr	ra
     ec8:	00000000 	nop

00000ecc <func_80B1496C>:
     ecc:	27bdffd0 	addiu	sp,sp,-48
     ed0:	afb00028 	sw	s0,40(sp)
     ed4:	00808025 	move	s0,a0
     ed8:	afbf002c 	sw	ra,44(sp)
     edc:	afa50034 	sw	a1,52(sp)
     ee0:	00a02025 	move	a0,a1
     ee4:	240e00fa 	li	t6,250
     ee8:	240f0014 	li	t7,20
     eec:	24180001 	li	t8,1
     ef0:	afb80018 	sw	t8,24(sp)
     ef4:	afaf0014 	sw	t7,20(sp)
     ef8:	afae0010 	sw	t6,16(sp)
     efc:	26050024 	addiu	a1,s0,36
     f00:	3c064248 	lui	a2,0x4248
     f04:	0c000000 	jal	0 <func_80B13AA0>
     f08:	24070002 	li	a3,2
     f0c:	02002025 	move	a0,s0
     f10:	0c000000 	jal	0 <func_80B13AA0>
     f14:	8fa50034 	lw	a1,52(sp)
     f18:	861902cc 	lh	t9,716(s0)
     f1c:	3c050000 	lui	a1,0x0
     f20:	24a50000 	addiu	a1,a1,0
     f24:	17200006 	bnez	t9,f40 <func_80B1496C+0x74>
     f28:	02002025 	move	a0,s0
     f2c:	3c060000 	lui	a2,0x0
     f30:	0c000000 	jal	0 <func_80B13AA0>
     f34:	24c60000 	addiu	a2,a2,0
     f38:	24080005 	li	t0,5
     f3c:	a60802cc 	sh	t0,716(s0)
     f40:	8fbf002c 	lw	ra,44(sp)
     f44:	8fb00028 	lw	s0,40(sp)
     f48:	27bd0030 	addiu	sp,sp,48
     f4c:	03e00008 	jr	ra
     f50:	00000000 	nop

00000f54 <func_80B149F4>:
     f54:	27bdffe8 	addiu	sp,sp,-24
     f58:	afbf0014 	sw	ra,20(sp)
     f5c:	afa5001c 	sw	a1,28(sp)
     f60:	848e0032 	lh	t6,50(a0)
     f64:	849800b6 	lh	t8,182(a0)
     f68:	848802cc 	lh	t0,716(a0)
     f6c:	25cff300 	addiu	t7,t6,-3328
     f70:	2719f300 	addiu	t9,t8,-3328
     f74:	a48f0032 	sh	t7,50(a0)
     f78:	1500000a 	bnez	t0,fa4 <func_80B149F4+0x50>
     f7c:	a49900b6 	sh	t9,182(a0)
     f80:	3c050000 	lui	a1,0x0
     f84:	3c060000 	lui	a2,0x0
     f88:	24c60000 	addiu	a2,a2,0
     f8c:	24a50000 	addiu	a1,a1,0
     f90:	0c000000 	jal	0 <func_80B13AA0>
     f94:	afa40018 	sw	a0,24(sp)
     f98:	8fa40018 	lw	a0,24(sp)
     f9c:	24090041 	li	t1,65
     fa0:	a48902cc 	sh	t1,716(a0)
     fa4:	8fbf0014 	lw	ra,20(sp)
     fa8:	27bd0018 	addiu	sp,sp,24
     fac:	03e00008 	jr	ra
     fb0:	00000000 	nop

00000fb4 <func_80B14A54>:
     fb4:	27bdffd0 	addiu	sp,sp,-48
     fb8:	afb00028 	sw	s0,40(sp)
     fbc:	00808025 	move	s0,a0
     fc0:	afbf002c 	sw	ra,44(sp)
     fc4:	afa50034 	sw	a1,52(sp)
     fc8:	00a02025 	move	a0,a1
     fcc:	240e00fa 	li	t6,250
     fd0:	240f0014 	li	t7,20
     fd4:	24180001 	li	t8,1
     fd8:	afb80018 	sw	t8,24(sp)
     fdc:	afaf0014 	sw	t7,20(sp)
     fe0:	afae0010 	sw	t6,16(sp)
     fe4:	26050024 	addiu	a1,s0,36
     fe8:	3c064248 	lui	a2,0x4248
     fec:	0c000000 	jal	0 <func_80B13AA0>
     ff0:	24070002 	li	a3,2
     ff4:	02002025 	move	a0,s0
     ff8:	0c000000 	jal	0 <func_80B13AA0>
     ffc:	8fa50034 	lw	a1,52(sp)
    1000:	860202cc 	lh	v0,716(s0)
    1004:	24010014 	li	at,20
    1008:	14410004 	bne	v0,at,101c <func_80B14A54+0x68>
    100c:	00000000 	nop
    1010:	0c000000 	jal	0 <func_80B13AA0>
    1014:	8fa40034 	lw	a0,52(sp)
    1018:	860202cc 	lh	v0,716(s0)
    101c:	14400008 	bnez	v0,1040 <func_80B14A54+0x8c>
    1020:	24190005 	li	t9,5
    1024:	3c050000 	lui	a1,0x0
    1028:	3c060000 	lui	a2,0x0
    102c:	a61902cc 	sh	t9,716(s0)
    1030:	24c60000 	addiu	a2,a2,0
    1034:	24a50000 	addiu	a1,a1,0
    1038:	0c000000 	jal	0 <func_80B13AA0>
    103c:	02002025 	move	a0,s0
    1040:	8fbf002c 	lw	ra,44(sp)
    1044:	8fb00028 	lw	s0,40(sp)
    1048:	27bd0030 	addiu	sp,sp,48
    104c:	03e00008 	jr	ra
    1050:	00000000 	nop

00001054 <func_80B14AF4>:
    1054:	27bdffe8 	addiu	sp,sp,-24
    1058:	afbf0014 	sw	ra,20(sp)
    105c:	afa5001c 	sw	a1,28(sp)
    1060:	848e0032 	lh	t6,50(a0)
    1064:	849800b6 	lh	t8,182(a0)
    1068:	848802cc 	lh	t0,716(a0)
    106c:	25cff400 	addiu	t7,t6,-3072
    1070:	2719f400 	addiu	t9,t8,-3072
    1074:	a48f0032 	sh	t7,50(a0)
    1078:	15000010 	bnez	t0,10bc <func_80B14AF4+0x68>
    107c:	a49900b6 	sh	t9,182(a0)
    1080:	24056853 	li	a1,26707
    1084:	0c000000 	jal	0 <func_80B13AA0>
    1088:	afa40018 	sw	a0,24(sp)
    108c:	3c050000 	lui	a1,0x0
    1090:	3c060000 	lui	a2,0x0
    1094:	8fa40018 	lw	a0,24(sp)
    1098:	24c60000 	addiu	a2,a2,0
    109c:	0c000000 	jal	0 <func_80B13AA0>
    10a0:	24a50000 	addiu	a1,a1,0
    10a4:	8fa40018 	lw	a0,24(sp)
    10a8:	24090041 	li	t1,65
    10ac:	8c8a0004 	lw	t2,4(a0)
    10b0:	a48902cc 	sh	t1,716(a0)
    10b4:	354b0010 	ori	t3,t2,0x10
    10b8:	ac8b0004 	sw	t3,4(a0)
    10bc:	8fbf0014 	lw	ra,20(sp)
    10c0:	27bd0018 	addiu	sp,sp,24
    10c4:	03e00008 	jr	ra
    10c8:	00000000 	nop

000010cc <func_80B14B6C>:
    10cc:	27bdffd8 	addiu	sp,sp,-40
    10d0:	afb00020 	sw	s0,32(sp)
    10d4:	00808025 	move	s0,a0
    10d8:	afbf0024 	sw	ra,36(sp)
    10dc:	afa5002c 	sw	a1,44(sp)
    10e0:	0c000000 	jal	0 <func_80B13AA0>
    10e4:	24a420d8 	addiu	a0,a1,8408
    10e8:	24010005 	li	at,5
    10ec:	1441001a 	bne	v0,at,1158 <func_80B14B6C+0x8c>
    10f0:	8fa4002c 	lw	a0,44(sp)
    10f4:	2405104f 	li	a1,4175
    10f8:	2406ff9d 	li	a2,-99
    10fc:	02003825 	move	a3,s0
    1100:	0c000000 	jal	0 <func_80B13AA0>
    1104:	afa00010 	sw	zero,16(sp)
    1108:	3c050000 	lui	a1,0x0
    110c:	3c060000 	lui	a2,0x0
    1110:	24c60000 	addiu	a2,a2,0
    1114:	24a50000 	addiu	a1,a1,0
    1118:	0c000000 	jal	0 <func_80B13AA0>
    111c:	02002025 	move	a0,s0
    1120:	3c020000 	lui	v0,0x0
    1124:	240e0005 	li	t6,5
    1128:	24420000 	addiu	v0,v0,0
    112c:	a60e02cc 	sh	t6,716(s0)
    1130:	944f0ed6 	lhu	t7,3798(v0)
    1134:	3c050601 	lui	a1,0x601
    1138:	24a5cf28 	addiu	a1,a1,-12504
    113c:	35f80010 	ori	t8,t7,0x10
    1140:	a4580ed6 	sh	t8,3798(v0)
    1144:	0c000000 	jal	0 <func_80B13AA0>
    1148:	2604014c 	addiu	a0,s0,332
    114c:	3c190601 	lui	t9,0x601
    1150:	2739c858 	addiu	t9,t9,-14248
    1154:	ae1902e4 	sw	t9,740(s0)
    1158:	960802e0 	lhu	t0,736(s0)
    115c:	35090001 	ori	t1,t0,0x1
    1160:	a60902e0 	sh	t1,736(s0)
    1164:	8fbf0024 	lw	ra,36(sp)
    1168:	8fb00020 	lw	s0,32(sp)
    116c:	27bd0028 	addiu	sp,sp,40
    1170:	03e00008 	jr	ra
    1174:	00000000 	nop

00001178 <func_80B14C18>:
    1178:	27bdffe8 	addiu	sp,sp,-24
    117c:	afbf0014 	sw	ra,20(sp)
    1180:	afa40018 	sw	a0,24(sp)
    1184:	0c000000 	jal	0 <func_80B13AA0>
    1188:	2406702c 	li	a2,28716
    118c:	10400006 	beqz	v0,11a8 <func_80B14C18+0x30>
    1190:	8fa40018 	lw	a0,24(sp)
    1194:	3c050000 	lui	a1,0x0
    1198:	3c060000 	lui	a2,0x0
    119c:	24c60000 	addiu	a2,a2,0
    11a0:	0c000000 	jal	0 <func_80B13AA0>
    11a4:	24a50000 	addiu	a1,a1,0
    11a8:	0c000000 	jal	0 <func_80B13AA0>
    11ac:	8fa40018 	lw	a0,24(sp)
    11b0:	8fbf0014 	lw	ra,20(sp)
    11b4:	27bd0018 	addiu	sp,sp,24
    11b8:	03e00008 	jr	ra
    11bc:	00000000 	nop

000011c0 <func_80B14C60>:
    11c0:	27bdffe8 	addiu	sp,sp,-24
    11c4:	afbf0014 	sw	ra,20(sp)
    11c8:	0c000000 	jal	0 <func_80B13AA0>
    11cc:	afa40018 	sw	a0,24(sp)
    11d0:	10400006 	beqz	v0,11ec <func_80B14C60+0x2c>
    11d4:	8fa40018 	lw	a0,24(sp)
    11d8:	3c050000 	lui	a1,0x0
    11dc:	3c060000 	lui	a2,0x0
    11e0:	24c60000 	addiu	a2,a2,0
    11e4:	0c000000 	jal	0 <func_80B13AA0>
    11e8:	24a50000 	addiu	a1,a1,0
    11ec:	8fae0018 	lw	t6,24(sp)
    11f0:	95cf02e0 	lhu	t7,736(t6)
    11f4:	35f80001 	ori	t8,t7,0x1
    11f8:	a5d802e0 	sh	t8,736(t6)
    11fc:	8fbf0014 	lw	ra,20(sp)
    1200:	27bd0018 	addiu	sp,sp,24
    1204:	03e00008 	jr	ra
    1208:	00000000 	nop

0000120c <func_80B14CAC>:
    120c:	3c0e0000 	lui	t6,0x0
    1210:	95ce0ed6 	lhu	t6,3798(t6)
    1214:	27bdffe0 	addiu	sp,sp,-32
    1218:	afb00018 	sw	s0,24(sp)
    121c:	31cf0100 	andi	t7,t6,0x100
    1220:	00808025 	move	s0,a0
    1224:	11e00010 	beqz	t7,1268 <func_80B14CAC+0x5c>
    1228:	afbf001c 	sw	ra,28(sp)
    122c:	0c000000 	jal	0 <func_80B13AA0>
    1230:	24065017 	li	a2,20503
    1234:	10400016 	beqz	v0,1290 <func_80B14CAC+0x84>
    1238:	02002025 	move	a0,s0
    123c:	3c050000 	lui	a1,0x0
    1240:	3c060000 	lui	a2,0x0
    1244:	24c60000 	addiu	a2,a2,0
    1248:	0c000000 	jal	0 <func_80B13AA0>
    124c:	24a50000 	addiu	a1,a1,0
    1250:	3c020000 	lui	v0,0x0
    1254:	24420000 	addiu	v0,v0,0
    1258:	94580ee0 	lhu	t8,3808(v0)
    125c:	37190800 	ori	t9,t8,0x800
    1260:	1000000b 	b	1290 <func_80B14CAC+0x84>
    1264:	a4590ee0 	sh	t9,3808(v0)
    1268:	02002025 	move	a0,s0
    126c:	0c000000 	jal	0 <func_80B13AA0>
    1270:	24065016 	li	a2,20502
    1274:	10400006 	beqz	v0,1290 <func_80B14CAC+0x84>
    1278:	02002025 	move	a0,s0
    127c:	3c050000 	lui	a1,0x0
    1280:	3c060000 	lui	a2,0x0
    1284:	24c60000 	addiu	a2,a2,0
    1288:	0c000000 	jal	0 <func_80B13AA0>
    128c:	24a50000 	addiu	a1,a1,0
    1290:	0c000000 	jal	0 <func_80B13AA0>
    1294:	02002025 	move	a0,s0
    1298:	8fbf001c 	lw	ra,28(sp)
    129c:	8fb00018 	lw	s0,24(sp)
    12a0:	27bd0020 	addiu	sp,sp,32
    12a4:	03e00008 	jr	ra
    12a8:	00000000 	nop

000012ac <func_80B14D4C>:
    12ac:	27bdffe8 	addiu	sp,sp,-24
    12b0:	afbf0014 	sw	ra,20(sp)
    12b4:	0c000000 	jal	0 <func_80B13AA0>
    12b8:	afa40018 	sw	a0,24(sp)
    12bc:	10400006 	beqz	v0,12d8 <func_80B14D4C+0x2c>
    12c0:	8fa40018 	lw	a0,24(sp)
    12c4:	3c050000 	lui	a1,0x0
    12c8:	3c060000 	lui	a2,0x0
    12cc:	24c60000 	addiu	a2,a2,0
    12d0:	0c000000 	jal	0 <func_80B13AA0>
    12d4:	24a50000 	addiu	a1,a1,0
    12d8:	8fae0018 	lw	t6,24(sp)
    12dc:	95cf02e0 	lhu	t7,736(t6)
    12e0:	35f80001 	ori	t8,t7,0x1
    12e4:	a5d802e0 	sh	t8,736(t6)
    12e8:	8fbf0014 	lw	ra,20(sp)
    12ec:	27bd0018 	addiu	sp,sp,24
    12f0:	03e00008 	jr	ra
    12f4:	00000000 	nop

000012f8 <func_80B14D98>:
    12f8:	27bdffe8 	addiu	sp,sp,-24
    12fc:	afbf0014 	sw	ra,20(sp)
    1300:	afa40018 	sw	a0,24(sp)
    1304:	0c000000 	jal	0 <func_80B13AA0>
    1308:	24062055 	li	a2,8277
    130c:	10400006 	beqz	v0,1328 <func_80B14D98+0x30>
    1310:	8fa40018 	lw	a0,24(sp)
    1314:	3c050000 	lui	a1,0x0
    1318:	3c060000 	lui	a2,0x0
    131c:	24c60000 	addiu	a2,a2,0
    1320:	0c000000 	jal	0 <func_80B13AA0>
    1324:	24a50000 	addiu	a1,a1,0
    1328:	8fbf0014 	lw	ra,20(sp)
    132c:	27bd0018 	addiu	sp,sp,24
    1330:	03e00008 	jr	ra
    1334:	00000000 	nop

00001338 <func_80B14DD8>:
    1338:	3c0e0000 	lui	t6,0x0
    133c:	85ce0034 	lh	t6,52(t6)
    1340:	27bdffe8 	addiu	sp,sp,-24
    1344:	afbf0014 	sw	ra,20(sp)
    1348:	29c1001e 	slti	at,t6,30
    134c:	10200003 	beqz	at,135c <func_80B14DD8+0x24>
    1350:	00000000 	nop
    1354:	10000008 	b	1378 <func_80B14DD8+0x40>
    1358:	00001025 	move	v0,zero
    135c:	0c000000 	jal	0 <func_80B13AA0>
    1360:	00000000 	nop
    1364:	54400004 	bnezl	v0,1378 <func_80B14DD8+0x40>
    1368:	24020002 	li	v0,2
    136c:	10000002 	b	1378 <func_80B14DD8+0x40>
    1370:	24020001 	li	v0,1
    1374:	24020002 	li	v0,2
    1378:	8fbf0014 	lw	ra,20(sp)
    137c:	27bd0018 	addiu	sp,sp,24
    1380:	03e00008 	jr	ra
    1384:	00000000 	nop

00001388 <func_80B14E28>:
    1388:	27bdffc8 	addiu	sp,sp,-56
    138c:	afb10018 	sw	s1,24(sp)
    1390:	00808825 	move	s1,a0
    1394:	afbf001c 	sw	ra,28(sp)
    1398:	afb00014 	sw	s0,20(sp)
    139c:	00a08025 	move	s0,a1
    13a0:	0c000000 	jal	0 <func_80B13AA0>
    13a4:	00a02025 	move	a0,a1
    13a8:	a62202d0 	sh	v0,720(s1)
    13ac:	860e07a0 	lh	t6,1952(s0)
    13b0:	02002025 	move	a0,s0
    13b4:	24060001 	li	a2,1
    13b8:	a62e02d2 	sh	t6,722(s1)
    13bc:	0c000000 	jal	0 <func_80B13AA0>
    13c0:	862502d2 	lh	a1,722(s1)
    13c4:	02002025 	move	a0,s0
    13c8:	862502d0 	lh	a1,720(s1)
    13cc:	0c000000 	jal	0 <func_80B13AA0>
    13d0:	24060007 	li	a2,7
    13d4:	3c010000 	lui	at,0x0
    13d8:	c4200000 	lwc1	$f0,0(at)
    13dc:	3c014130 	lui	at,0x4130
    13e0:	44812000 	mtc1	at,$f4
    13e4:	3c0141b0 	lui	at,0x41b0
    13e8:	44813000 	mtc1	at,$f6
    13ec:	3c014234 	lui	at,0x4234
    13f0:	44814000 	mtc1	at,$f8
    13f4:	3c01c220 	lui	at,0xc220
    13f8:	44815000 	mtc1	at,$f10
    13fc:	e7a0002c 	swc1	$f0,44(sp)
    1400:	e7a00020 	swc1	$f0,32(sp)
    1404:	e7a40030 	swc1	$f4,48(sp)
    1408:	e7a60034 	swc1	$f6,52(sp)
    140c:	e7a80024 	swc1	$f8,36(sp)
    1410:	e7aa0028 	swc1	$f10,40(sp)
    1414:	862502d0 	lh	a1,720(s1)
    1418:	02002025 	move	a0,s0
    141c:	27a60020 	addiu	a2,sp,32
    1420:	0c000000 	jal	0 <func_80B13AA0>
    1424:	27a7002c 	addiu	a3,sp,44
    1428:	8fbf001c 	lw	ra,28(sp)
    142c:	8fb00014 	lw	s0,20(sp)
    1430:	8fb10018 	lw	s1,24(sp)
    1434:	03e00008 	jr	ra
    1438:	27bd0038 	addiu	sp,sp,56

0000143c <func_80B14EDC>:
    143c:	27bdffe8 	addiu	sp,sp,-24
    1440:	afa40018 	sw	a0,24(sp)
    1444:	8fae0018 	lw	t6,24(sp)
    1448:	afbf0014 	sw	ra,20(sp)
    144c:	afa5001c 	sw	a1,28(sp)
    1450:	00a02025 	move	a0,a1
    1454:	24060007 	li	a2,7
    1458:	0c000000 	jal	0 <func_80B13AA0>
    145c:	85c502d2 	lh	a1,722(t6)
    1460:	8faf0018 	lw	t7,24(sp)
    1464:	8fa4001c 	lw	a0,28(sp)
    1468:	0c000000 	jal	0 <func_80B13AA0>
    146c:	85e502d0 	lh	a1,720(t7)
    1470:	8fbf0014 	lw	ra,20(sp)
    1474:	27bd0018 	addiu	sp,sp,24
    1478:	03e00008 	jr	ra
    147c:	00000000 	nop

00001480 <func_80B14F20>:
    1480:	27bdffd0 	addiu	sp,sp,-48
    1484:	afbf002c 	sw	ra,44(sp)
    1488:	afb00028 	sw	s0,40(sp)
    148c:	3c060000 	lui	a2,0x0
    1490:	00808025 	move	s0,a0
    1494:	0c000000 	jal	0 <func_80B13AA0>
    1498:	24c60000 	addiu	a2,a2,0
    149c:	240e0002 	li	t6,2
    14a0:	3c040600 	lui	a0,0x600
    14a4:	a60e02b4 	sh	t6,692(s0)
    14a8:	0c000000 	jal	0 <func_80B13AA0>
    14ac:	248417e8 	addiu	a0,a0,6120
    14b0:	44822000 	mtc1	v0,$f4
    14b4:	3c01c0a0 	lui	at,0xc0a0
    14b8:	44814000 	mtc1	at,$f8
    14bc:	468021a0 	cvt.s.w	$f6,$f4
    14c0:	3c050600 	lui	a1,0x600
    14c4:	240f0002 	li	t7,2
    14c8:	afaf0014 	sw	t7,20(sp)
    14cc:	24a517e8 	addiu	a1,a1,6120
    14d0:	2604014c 	addiu	a0,s0,332
    14d4:	e7a60010 	swc1	$f6,16(sp)
    14d8:	3c063f80 	lui	a2,0x3f80
    14dc:	24070000 	li	a3,0
    14e0:	0c000000 	jal	0 <func_80B13AA0>
    14e4:	e7a80018 	swc1	$f8,24(sp)
    14e8:	3c180600 	lui	t8,0x600
    14ec:	271817e8 	addiu	t8,t8,6120
    14f0:	a60002e2 	sh	zero,738(s0)
    14f4:	ae1802e4 	sw	t8,740(s0)
    14f8:	8fbf002c 	lw	ra,44(sp)
    14fc:	8fb00028 	lw	s0,40(sp)
    1500:	27bd0030 	addiu	sp,sp,48
    1504:	03e00008 	jr	ra
    1508:	00000000 	nop

0000150c <func_80B14FAC>:
    150c:	27bdffd0 	addiu	sp,sp,-48
    1510:	afbf002c 	sw	ra,44(sp)
    1514:	afb00028 	sw	s0,40(sp)
    1518:	240e0001 	li	t6,1
    151c:	3c060000 	lui	a2,0x0
    1520:	00808025 	move	s0,a0
    1524:	a48e02b4 	sh	t6,692(a0)
    1528:	0c000000 	jal	0 <func_80B13AA0>
    152c:	24c60000 	addiu	a2,a2,0
    1530:	960f02e0 	lhu	t7,736(s0)
    1534:	3c040601 	lui	a0,0x601
    1538:	2484c48c 	addiu	a0,a0,-15220
    153c:	31f8ffef 	andi	t8,t7,0xffef
    1540:	0c000000 	jal	0 <func_80B13AA0>
    1544:	a61802e0 	sh	t8,736(s0)
    1548:	44822000 	mtc1	v0,$f4
    154c:	3c01c0a0 	lui	at,0xc0a0
    1550:	44814000 	mtc1	at,$f8
    1554:	468021a0 	cvt.s.w	$f6,$f4
    1558:	3c050601 	lui	a1,0x601
    155c:	24190002 	li	t9,2
    1560:	afb90014 	sw	t9,20(sp)
    1564:	24a5c48c 	addiu	a1,a1,-15220
    1568:	2604014c 	addiu	a0,s0,332
    156c:	e7a60010 	swc1	$f6,16(sp)
    1570:	3c063f80 	lui	a2,0x3f80
    1574:	24070000 	li	a3,0
    1578:	0c000000 	jal	0 <func_80B13AA0>
    157c:	e7a80018 	swc1	$f8,24(sp)
    1580:	8fbf002c 	lw	ra,44(sp)
    1584:	8fb00028 	lw	s0,40(sp)
    1588:	27bd0030 	addiu	sp,sp,48
    158c:	03e00008 	jr	ra
    1590:	00000000 	nop

00001594 <func_80B15034>:
    1594:	27bdffe8 	addiu	sp,sp,-24
    1598:	afbf0014 	sw	ra,20(sp)
    159c:	afa40018 	sw	a0,24(sp)
    15a0:	afa5001c 	sw	a1,28(sp)
    15a4:	0c000000 	jal	0 <func_80B13AA0>
    15a8:	24a420d8 	addiu	a0,a1,8408
    15ac:	24010005 	li	at,5
    15b0:	5441000f 	bnel	v0,at,15f0 <func_80B15034+0x5c>
    15b4:	8fae0018 	lw	t6,24(sp)
    15b8:	0c000000 	jal	0 <func_80B13AA0>
    15bc:	8fa4001c 	lw	a0,28(sp)
    15c0:	5040000b 	beqzl	v0,15f0 <func_80B15034+0x5c>
    15c4:	8fae0018 	lw	t6,24(sp)
    15c8:	0c000000 	jal	0 <func_80B13AA0>
    15cc:	8fa4001c 	lw	a0,28(sp)
    15d0:	3c050000 	lui	a1,0x0
    15d4:	24a50000 	addiu	a1,a1,0
    15d8:	0c000000 	jal	0 <func_80B13AA0>
    15dc:	8fa40018 	lw	a0,24(sp)
    15e0:	8fa40018 	lw	a0,24(sp)
    15e4:	0c000000 	jal	0 <func_80B13AA0>
    15e8:	8fa5001c 	lw	a1,28(sp)
    15ec:	8fae0018 	lw	t6,24(sp)
    15f0:	95cf02e0 	lhu	t7,736(t6)
    15f4:	35f80001 	ori	t8,t7,0x1
    15f8:	a5d802e0 	sh	t8,736(t6)
    15fc:	8fbf0014 	lw	ra,20(sp)
    1600:	27bd0018 	addiu	sp,sp,24
    1604:	03e00008 	jr	ra
    1608:	00000000 	nop

0000160c <func_80B150AC>:
    160c:	8ca21c44 	lw	v0,7236(a1)
    1610:	8c4e067c 	lw	t6,1660(v0)
    1614:	31cf0800 	andi	t7,t6,0x800
    1618:	51e0000f 	beqzl	t7,1658 <func_80B150AC+0x4c>
    161c:	00001025 	move	v0,zero
    1620:	8c430438 	lw	v1,1080(v0)
    1624:	5060000c 	beqzl	v1,1658 <func_80B150AC+0x4c>
    1628:	00001025 	move	v0,zero
    162c:	84780000 	lh	t8,0(v1)
    1630:	24010019 	li	at,25
    1634:	0006c880 	sll	t9,a2,0x2
    1638:	17010006 	bne	t8,at,1654 <func_80B150AC+0x48>
    163c:	00994021 	addu	t0,a0,t9
    1640:	8d0902b8 	lw	t1,696(t0)
    1644:	54690004 	bnel	v1,t1,1658 <func_80B150AC+0x4c>
    1648:	00001025 	move	v0,zero
    164c:	03e00008 	jr	ra
    1650:	24020001 	li	v0,1
    1654:	00001025 	move	v0,zero
    1658:	03e00008 	jr	ra
    165c:	00000000 	nop

00001660 <func_80B15100>:
    1660:	27bdffc0 	addiu	sp,sp,-64
    1664:	afb10028 	sw	s1,40(sp)
    1668:	afbf002c 	sw	ra,44(sp)
    166c:	afb00024 	sw	s0,36(sp)
    1670:	00808825 	move	s1,a0
    1674:	8cb01c44 	lw	s0,7236(a1)
    1678:	afa50044 	sw	a1,68(sp)
    167c:	0c000000 	jal	0 <func_80B13AA0>
    1680:	24a420d8 	addiu	a0,a1,8408
    1684:	24010005 	li	at,5
    1688:	54410046 	bnel	v0,at,17a4 <func_80B15100+0x144>
    168c:	962802e0 	lhu	t0,736(s1)
    1690:	0c000000 	jal	0 <func_80B13AA0>
    1694:	8fa40044 	lw	a0,68(sp)
    1698:	10400041 	beqz	v0,17a0 <func_80B15100+0x140>
    169c:	3c040601 	lui	a0,0x601
    16a0:	0c000000 	jal	0 <func_80B13AA0>
    16a4:	2484c48c 	addiu	a0,a0,-15220
    16a8:	3c040601 	lui	a0,0x601
    16ac:	2484c48c 	addiu	a0,a0,-15220
    16b0:	0c000000 	jal	0 <func_80B13AA0>
    16b4:	a7a20034 	sh	v0,52(sp)
    16b8:	87ae0034 	lh	t6,52(sp)
    16bc:	3c013f80 	lui	at,0x3f80
    16c0:	44810000 	mtc1	at,$f0
    16c4:	448e2000 	mtc1	t6,$f4
    16c8:	44825000 	mtc1	v0,$f10
    16cc:	3c014120 	lui	at,0x4120
    16d0:	468021a0 	cvt.s.w	$f6,$f4
    16d4:	44819000 	mtc1	at,$f18
    16d8:	3c050601 	lui	a1,0x601
    16dc:	240f0002 	li	t7,2
    16e0:	44060000 	mfc1	a2,$f0
    16e4:	46805420 	cvt.s.w	$f16,$f10
    16e8:	afaf0014 	sw	t7,20(sp)
    16ec:	24a5c48c 	addiu	a1,a1,-15220
    16f0:	2624014c 	addiu	a0,s1,332
    16f4:	e7b20018 	swc1	$f18,24(sp)
    16f8:	46003201 	sub.s	$f8,$f6,$f0
    16fc:	e7b00010 	swc1	$f16,16(sp)
    1700:	44074000 	mfc1	a3,$f8
    1704:	0c000000 	jal	0 <func_80B13AA0>
    1708:	00000000 	nop
    170c:	963802e0 	lhu	t8,736(s1)
    1710:	3319ffef 	andi	t9,t8,0xffef
    1714:	a63902e0 	sh	t9,736(s1)
    1718:	0c000000 	jal	0 <func_80B13AA0>
    171c:	8fa40044 	lw	a0,68(sp)
    1720:	922302ca 	lbu	v1,714(s1)
    1724:	3c080000 	lui	t0,0x0
    1728:	25080000 	addiu	t0,t0,0
    172c:	ae28025c 	sw	t0,604(s1)
    1730:	00034880 	sll	t1,v1,0x2
    1734:	02291021 	addu	v0,s1,t1
    1738:	3c010000 	lui	at,0x0
    173c:	c4240000 	lwc1	$f4,0(at)
    1740:	8c4a02b8 	lw	t2,696(v0)
    1744:	44800000 	mtc1	zero,$f0
    1748:	e544006c 	swc1	$f4,108(t2)
    174c:	8c4b02b8 	lw	t3,696(v0)
    1750:	e5600060 	swc1	$f0,96(t3)
    1754:	8c4c02b8 	lw	t4,696(v0)
    1758:	e5800068 	swc1	$f0,104(t4)
    175c:	8c4d02b8 	lw	t5,696(v0)
    1760:	ada00118 	sw	zero,280(t5)
    1764:	8e0e0438 	lw	t6,1080(s0)
    1768:	8c4402b8 	lw	a0,696(v0)
    176c:	55c40004 	bnel	t6,a0,1780 <func_80B15100+0x120>
    1770:	8e0f03ac 	lw	t7,940(s0)
    1774:	ae000438 	sw	zero,1080(s0)
    1778:	8c4402b8 	lw	a0,696(v0)
    177c:	8e0f03ac 	lw	t7,940(s0)
    1780:	55e40003 	bnel	t7,a0,1790 <func_80B15100+0x130>
    1784:	8e18067c 	lw	t8,1660(s0)
    1788:	ae0003ac 	sw	zero,940(s0)
    178c:	8e18067c 	lw	t8,1660(s0)
    1790:	2401f7ff 	li	at,-2049
    1794:	0301c824 	and	t9,t8,at
    1798:	ae19067c 	sw	t9,1660(s0)
    179c:	ac4002b8 	sw	zero,696(v0)
    17a0:	962802e0 	lhu	t0,736(s1)
    17a4:	35090001 	ori	t1,t0,0x1
    17a8:	a62902e0 	sh	t1,736(s1)
    17ac:	8fbf002c 	lw	ra,44(sp)
    17b0:	8fb10028 	lw	s1,40(sp)
    17b4:	8fb00024 	lw	s0,36(sp)
    17b8:	03e00008 	jr	ra
    17bc:	27bd0040 	addiu	sp,sp,64

000017c0 <func_80B15260>:
    17c0:	27bdffe8 	addiu	sp,sp,-24
    17c4:	afbf0014 	sw	ra,20(sp)
    17c8:	afa5001c 	sw	a1,28(sp)
    17cc:	0c000000 	jal	0 <func_80B13AA0>
    17d0:	afa40018 	sw	a0,24(sp)
    17d4:	1040000a 	beqz	v0,1800 <func_80B15260+0x40>
    17d8:	8fa40018 	lw	a0,24(sp)
    17dc:	8c8f0004 	lw	t7,4(a0)
    17e0:	3c01fffe 	lui	at,0xfffe
    17e4:	3c0e0000 	lui	t6,0x0
    17e8:	3421ffff 	ori	at,at,0xffff
    17ec:	25ce0000 	addiu	t6,t6,0
    17f0:	01e1c024 	and	t8,t7,at
    17f4:	ac8e025c 	sw	t6,604(a0)
    17f8:	10000006 	b	1814 <func_80B15260+0x54>
    17fc:	ac980004 	sw	t8,4(a0)
    1800:	8fa5001c 	lw	a1,28(sp)
    1804:	3c06447a 	lui	a2,0x447a
    1808:	0c000000 	jal	0 <func_80B13AA0>
    180c:	afa40018 	sw	a0,24(sp)
    1810:	8fa40018 	lw	a0,24(sp)
    1814:	949902e0 	lhu	t9,736(a0)
    1818:	37280001 	ori	t0,t9,0x1
    181c:	a48802e0 	sh	t0,736(a0)
    1820:	8fbf0014 	lw	ra,20(sp)
    1824:	27bd0018 	addiu	sp,sp,24
    1828:	03e00008 	jr	ra
    182c:	00000000 	nop

00001830 <func_80B152D0>:
    1830:	afa50004 	sw	a1,4(sp)
    1834:	00002825 	move	a1,zero
    1838:	00001825 	move	v1,zero
    183c:	00803025 	move	a2,a0
    1840:	2402000c 	li	v0,12
    1844:	8cce02b8 	lw	t6,696(a2)
    1848:	24a50004 	addiu	a1,a1,4
    184c:	11c00002 	beqz	t6,1858 <func_80B152D0+0x28>
    1850:	00000000 	nop
    1854:	24630001 	addiu	v1,v1,1
    1858:	14a2fffa 	bne	a1,v0,1844 <func_80B152D0+0x14>
    185c:	24c60004 	addiu	a2,a2,4
    1860:	03e00008 	jr	ra
    1864:	00601025 	move	v0,v1

00001868 <func_80B15308>:
    1868:	27bdffd0 	addiu	sp,sp,-48
    186c:	afbf002c 	sw	ra,44(sp)
    1870:	afb00028 	sw	s0,40(sp)
    1874:	948202e0 	lhu	v0,736(a0)
    1878:	00808025 	move	s0,a0
    187c:	304e0010 	andi	t6,v0,0x10
    1880:	11c00027 	beqz	t6,1920 <func_80B15308+0xb8>
    1884:	304f0100 	andi	t7,v0,0x100
    1888:	11e00012 	beqz	t7,18d4 <func_80B15308+0x6c>
    188c:	3c050601 	lui	a1,0x601
    1890:	3c0141b0 	lui	at,0x41b0
    1894:	44812000 	mtc1	at,$f4
    1898:	44803000 	mtc1	zero,$f6
    189c:	3c050601 	lui	a1,0x601
    18a0:	24180002 	li	t8,2
    18a4:	afb80014 	sw	t8,20(sp)
    18a8:	24a5bf38 	addiu	a1,a1,-16584
    18ac:	2484014c 	addiu	a0,a0,332
    18b0:	3c063f80 	lui	a2,0x3f80
    18b4:	3c074188 	lui	a3,0x4188
    18b8:	e7a40010 	swc1	$f4,16(sp)
    18bc:	0c000000 	jal	0 <func_80B13AA0>
    18c0:	e7a60018 	swc1	$f6,24(sp)
    18c4:	961902e0 	lhu	t9,736(s0)
    18c8:	3328feff 	andi	t0,t9,0xfeff
    18cc:	10000011 	b	1914 <func_80B15308+0xac>
    18d0:	a60802e0 	sh	t0,736(s0)
    18d4:	3c014180 	lui	at,0x4180
    18d8:	44814000 	mtc1	at,$f8
    18dc:	3c014040 	lui	at,0x4040
    18e0:	44815000 	mtc1	at,$f10
    18e4:	24090002 	li	t1,2
    18e8:	afa90014 	sw	t1,20(sp)
    18ec:	2604014c 	addiu	a0,s0,332
    18f0:	24a5bf38 	addiu	a1,a1,-16584
    18f4:	3c06bf80 	lui	a2,0xbf80
    18f8:	3c0741a8 	lui	a3,0x41a8
    18fc:	e7a80010 	swc1	$f8,16(sp)
    1900:	0c000000 	jal	0 <func_80B13AA0>
    1904:	e7aa0018 	swc1	$f10,24(sp)
    1908:	960a02e0 	lhu	t2,736(s0)
    190c:	354b0100 	ori	t3,t2,0x100
    1910:	a60b02e0 	sh	t3,736(s0)
    1914:	960c02e0 	lhu	t4,736(s0)
    1918:	318dffef 	andi	t5,t4,0xffef
    191c:	a60d02e0 	sh	t5,736(s0)
    1920:	8fbf002c 	lw	ra,44(sp)
    1924:	8fb00028 	lw	s0,40(sp)
    1928:	27bd0030 	addiu	sp,sp,48
    192c:	03e00008 	jr	ra
    1930:	00000000 	nop

00001934 <func_80B153D4>:
    1934:	27bdffe8 	addiu	sp,sp,-24
    1938:	afbf0014 	sw	ra,20(sp)
    193c:	afa5001c 	sw	a1,28(sp)
    1940:	0c000000 	jal	0 <func_80B13AA0>
    1944:	afa40018 	sw	a0,24(sp)
    1948:	8fa40018 	lw	a0,24(sp)
    194c:	848e02cc 	lh	t6,716(a0)
    1950:	55c00009 	bnezl	t6,1978 <func_80B153D4+0x44>
    1954:	8fbf0014 	lw	ra,20(sp)
    1958:	948202e0 	lhu	v0,736(a0)
    195c:	304f0080 	andi	t7,v0,0x80
    1960:	11e00004 	beqz	t7,1974 <func_80B153D4+0x40>
    1964:	3058ff7f 	andi	t8,v0,0xff7f
    1968:	a49802e0 	sh	t8,736(a0)
    196c:	0c000000 	jal	0 <func_80B13AA0>
    1970:	8fa5001c 	lw	a1,28(sp)
    1974:	8fbf0014 	lw	ra,20(sp)
    1978:	27bd0018 	addiu	sp,sp,24
    197c:	03e00008 	jr	ra
    1980:	00000000 	nop

00001984 <func_80B15424>:
    1984:	27bdffe0 	addiu	sp,sp,-32
    1988:	afbf001c 	sw	ra,28(sp)
    198c:	afb00018 	sw	s0,24(sp)
    1990:	00a08025 	move	s0,a1
    1994:	0c000000 	jal	0 <func_80B13AA0>
    1998:	afa40020 	sw	a0,32(sp)
    199c:	0c000000 	jal	0 <func_80B13AA0>
    19a0:	260420d8 	addiu	a0,s0,8408
    19a4:	24010005 	li	at,5
    19a8:	54410028 	bnel	v0,at,1a4c <func_80B15424+0xc8>
    19ac:	8fbf001c 	lw	ra,28(sp)
    19b0:	0c000000 	jal	0 <func_80B13AA0>
    19b4:	02002025 	move	a0,s0
    19b8:	10400023 	beqz	v0,1a48 <func_80B15424+0xc4>
    19bc:	240e05e4 	li	t6,1508
    19c0:	3c010001 	lui	at,0x1
    19c4:	3c020000 	lui	v0,0x0
    19c8:	00300821 	addu	at,at,s0
    19cc:	24420000 	addiu	v0,v0,0
    19d0:	a42e1e1a 	sh	t6,7706(at)
    19d4:	944f13fa 	lhu	t7,5114(v0)
    19d8:	24090026 	li	t1,38
    19dc:	240b0014 	li	t3,20
    19e0:	31f80100 	andi	t8,t7,0x100
    19e4:	13000008 	beqz	t8,1a08 <func_80B15424+0x84>
    19e8:	3c0e0000 	lui	t6,0x0
    19ec:	3c010001 	lui	at,0x1
    19f0:	00300821 	addu	at,at,s0
    19f4:	2419002e 	li	t9,46
    19f8:	a0391e5e 	sb	t9,7774(at)
    19fc:	24080003 	li	t0,3
    1a00:	10000006 	b	1a1c <func_80B15424+0x98>
    1a04:	a048141d 	sb	t0,5149(v0)
    1a08:	3c010001 	lui	at,0x1
    1a0c:	00300821 	addu	at,at,s0
    1a10:	a0291e5e 	sb	t1,7774(at)
    1a14:	240a0002 	li	t2,2
    1a18:	a04a141d 	sb	t2,5149(v0)
    1a1c:	3c010001 	lui	at,0x1
    1a20:	8fa30020 	lw	v1,32(sp)
    1a24:	00300821 	addu	at,at,s0
    1a28:	a02b1e15 	sb	t3,7701(at)
    1a2c:	944c13fa 	lhu	t4,5114(v0)
    1a30:	25ce0000 	addiu	t6,t6,0
    1a34:	240f0016 	li	t7,22
    1a38:	358d0400 	ori	t5,t4,0x400
    1a3c:	a44d13fa 	sh	t5,5114(v0)
    1a40:	ac6e025c 	sw	t6,604(v1)
    1a44:	a46f02cc 	sh	t7,716(v1)
    1a48:	8fbf001c 	lw	ra,28(sp)
    1a4c:	8fb00018 	lw	s0,24(sp)
    1a50:	27bd0020 	addiu	sp,sp,32
    1a54:	03e00008 	jr	ra
    1a58:	00000000 	nop

00001a5c <func_80B154FC>:
    1a5c:	27bdffb0 	addiu	sp,sp,-80
    1a60:	afb20030 	sw	s2,48(sp)
    1a64:	afb1002c 	sw	s1,44(sp)
    1a68:	afb00028 	sw	s0,40(sp)
    1a6c:	00808825 	move	s1,a0
    1a70:	00a09025 	move	s2,a1
    1a74:	afbf0034 	sw	ra,52(sp)
    1a78:	00008025 	move	s0,zero
    1a7c:	00803825 	move	a3,a0
    1a80:	8ce202b8 	lw	v0,696(a3)
    1a84:	3c01c000 	lui	at,0xc000
    1a88:	02202025 	move	a0,s1
    1a8c:	1040007f 	beqz	v0,1c8c <func_80B154FC+0x230>
    1a90:	02402825 	move	a1,s2
    1a94:	c440006c 	lwc1	$f0,108(v0)
    1a98:	44812000 	mtc1	at,$f4
    1a9c:	00107040 	sll	t6,s0,0x1
    1aa0:	022e1821 	addu	v1,s1,t6
    1aa4:	4600203c 	c.lt.s	$f4,$f0
    1aa8:	3c010000 	lui	at,0x0
    1aac:	02003025 	move	a2,s0
    1ab0:	45020005 	bc1fl	1ac8 <func_80B154FC+0x6c>
    1ab4:	afa30038 	sw	v1,56(sp)
    1ab8:	c4260000 	lwc1	$f6,0(at)
    1abc:	46060201 	sub.s	$f8,$f0,$f6
    1ac0:	e448006c 	swc1	$f8,108(v0)
    1ac4:	afa30038 	sw	v1,56(sp)
    1ac8:	0c000000 	jal	0 <func_80B13AA0>
    1acc:	afa70044 	sw	a3,68(sp)
    1ad0:	8fa30038 	lw	v1,56(sp)
    1ad4:	1040006b 	beqz	v0,1c84 <func_80B154FC+0x228>
    1ad8:	8fa70044 	lw	a3,68(sp)
    1adc:	846202c4 	lh	v0,708(v1)
    1ae0:	18400003 	blez	v0,1af0 <func_80B154FC+0x94>
    1ae4:	244fffff 	addiu	t7,v0,-1
    1ae8:	10000068 	b	1c8c <func_80B154FC+0x230>
    1aec:	a46f02c4 	sh	t7,708(v1)
    1af0:	3c0141e8 	lui	at,0x41e8
    1af4:	44815000 	mtc1	at,$f10
    1af8:	a23002ca 	sb	s0,714(s1)
    1afc:	3c01c120 	lui	at,0xc120
    1b00:	44818000 	mtc1	at,$f16
    1b04:	2624014c 	addiu	a0,s1,332
    1b08:	3c050601 	lui	a1,0x601
    1b0c:	24180002 	li	t8,2
    1b10:	afb80014 	sw	t8,20(sp)
    1b14:	24a5bf38 	addiu	a1,a1,-16584
    1b18:	afa40044 	sw	a0,68(sp)
    1b1c:	3c063f80 	lui	a2,0x3f80
    1b20:	3c074100 	lui	a3,0x4100
    1b24:	e7aa0010 	swc1	$f10,16(sp)
    1b28:	0c000000 	jal	0 <func_80B13AA0>
    1b2c:	e7b00018 	swc1	$f16,24(sp)
    1b30:	963902e0 	lhu	t9,736(s1)
    1b34:	02202025 	move	a0,s1
    1b38:	02402825 	move	a1,s2
    1b3c:	3328ffef 	andi	t0,t9,0xffef
    1b40:	0c000000 	jal	0 <func_80B13AA0>
    1b44:	a62802e0 	sh	t0,736(s1)
    1b48:	24010001 	li	at,1
    1b4c:	10410009 	beq	v0,at,1b74 <func_80B154FC+0x118>
    1b50:	3c100000 	lui	s0,0x0
    1b54:	24010002 	li	at,2
    1b58:	10410033 	beq	v0,at,1c28 <func_80B154FC+0x1cc>
    1b5c:	24092083 	li	t1,8323
    1b60:	24010003 	li	at,3
    1b64:	10410036 	beq	v0,at,1c40 <func_80B154FC+0x1e4>
    1b68:	240a2082 	li	t2,8322
    1b6c:	10000039 	b	1c54 <func_80B154FC+0x1f8>
    1b70:	8e2c0004 	lw	t4,4(s1)
    1b74:	26100000 	addiu	s0,s0,0
    1b78:	a60013ce 	sh	zero,5070(s0)
    1b7c:	02402025 	move	a0,s2
    1b80:	02202825 	move	a1,s1
    1b84:	0c000000 	jal	0 <func_80B13AA0>
    1b88:	24060001 	li	a2,1
    1b8c:	02402025 	move	a0,s2
    1b90:	24052084 	li	a1,8324
    1b94:	0c000000 	jal	0 <func_80B13AA0>
    1b98:	02203025 	move	a2,s1
    1b9c:	3c090000 	lui	t1,0x0
    1ba0:	3c0141e8 	lui	at,0x41e8
    1ba4:	44819000 	mtc1	at,$f18
    1ba8:	25290000 	addiu	t1,t1,0
    1bac:	ae29025c 	sw	t1,604(s1)
    1bb0:	3c01c120 	lui	at,0xc120
    1bb4:	44812000 	mtc1	at,$f4
    1bb8:	3c050601 	lui	a1,0x601
    1bbc:	240a0002 	li	t2,2
    1bc0:	afaa0014 	sw	t2,20(sp)
    1bc4:	24a5bf38 	addiu	a1,a1,-16584
    1bc8:	8fa40044 	lw	a0,68(sp)
    1bcc:	3c063f80 	lui	a2,0x3f80
    1bd0:	3c074100 	lui	a3,0x4100
    1bd4:	e7b20010 	swc1	$f18,16(sp)
    1bd8:	0c000000 	jal	0 <func_80B13AA0>
    1bdc:	e7a40018 	swc1	$f4,24(sp)
    1be0:	962b02e0 	lhu	t3,736(s1)
    1be4:	3c041000 	lui	a0,0x1000
    1be8:	348400ff 	ori	a0,a0,0xff
    1bec:	316dffef 	andi	t5,t3,0xffef
    1bf0:	a62d02e0 	sh	t5,736(s1)
    1bf4:	31aefeff 	andi	t6,t5,0xfeff
    1bf8:	a62e02e0 	sh	t6,736(s1)
    1bfc:	960f13fa 	lhu	t7,5114(s0)
    1c00:	35f80100 	ori	t8,t7,0x100
    1c04:	0c000000 	jal	0 <func_80B13AA0>
    1c08:	a61813fa 	sh	t8,5114(s0)
    1c0c:	963902e0 	lhu	t9,736(s1)
    1c10:	24040039 	li	a0,57
    1c14:	3328fdff 	andi	t0,t9,0xfdff
    1c18:	0c000000 	jal	0 <func_80B13AA0>
    1c1c:	a62802e0 	sh	t0,736(s1)
    1c20:	10000061 	b	1da8 <func_80B154FC+0x34c>
    1c24:	8fbf0034 	lw	ra,52(sp)
    1c28:	a629010e 	sh	t1,270(s1)
    1c2c:	02202025 	move	a0,s1
    1c30:	0c000000 	jal	0 <func_80B13AA0>
    1c34:	24056853 	li	a1,26707
    1c38:	10000006 	b	1c54 <func_80B154FC+0x1f8>
    1c3c:	8e2c0004 	lw	t4,4(s1)
    1c40:	a62a010e 	sh	t2,270(s1)
    1c44:	02202025 	move	a0,s1
    1c48:	0c000000 	jal	0 <func_80B13AA0>
    1c4c:	24056851 	li	a1,26705
    1c50:	8e2c0004 	lw	t4,4(s1)
    1c54:	3c0b0000 	lui	t3,0x0
    1c58:	3c010001 	lui	at,0x1
    1c5c:	256b0000 	addiu	t3,t3,0
    1c60:	01816825 	or	t5,t4,at
    1c64:	ae2b025c 	sw	t3,604(s1)
    1c68:	ae2d0004 	sw	t5,4(s1)
    1c6c:	02202025 	move	a0,s1
    1c70:	02402825 	move	a1,s2
    1c74:	0c000000 	jal	0 <func_80B13AA0>
    1c78:	3c06447a 	lui	a2,0x447a
    1c7c:	1000004a 	b	1da8 <func_80B154FC+0x34c>
    1c80:	8fbf0034 	lw	ra,52(sp)
    1c84:	240e0007 	li	t6,7
    1c88:	a46e02c4 	sh	t6,708(v1)
    1c8c:	26100001 	addiu	s0,s0,1
    1c90:	24010003 	li	at,3
    1c94:	1601ff7a 	bne	s0,at,1a80 <func_80B154FC+0x24>
    1c98:	24e70004 	addiu	a3,a3,4
    1c9c:	3c100000 	lui	s0,0x0
    1ca0:	26100000 	addiu	s0,s0,0
    1ca4:	860213d0 	lh	v0,5072(s0)
    1ca8:	2401000a 	li	at,10
    1cac:	14410004 	bne	v0,at,1cc0 <func_80B154FC+0x264>
    1cb0:	00000000 	nop
    1cb4:	0c000000 	jal	0 <func_80B13AA0>
    1cb8:	00000000 	nop
    1cbc:	860213d0 	lh	v0,5072(s0)
    1cc0:	54400036 	bnezl	v0,1d9c <func_80B154FC+0x340>
    1cc4:	963902e0 	lhu	t9,736(s1)
    1cc8:	0c000000 	jal	0 <func_80B13AA0>
    1ccc:	02402025 	move	a0,s2
    1cd0:	14400031 	bnez	v0,1d98 <func_80B154FC+0x33c>
    1cd4:	3c041000 	lui	a0,0x1000
    1cd8:	0c000000 	jal	0 <func_80B13AA0>
    1cdc:	348400ff 	ori	a0,a0,0xff
    1ce0:	962f02e0 	lhu	t7,736(s1)
    1ce4:	2404482c 	li	a0,18476
    1ce8:	31f8fdff 	andi	t8,t7,0xfdff
    1cec:	0c000000 	jal	0 <func_80B13AA0>
    1cf0:	a63802e0 	sh	t8,736(s1)
    1cf4:	a60013ce 	sh	zero,5070(s0)
    1cf8:	02402025 	move	a0,s2
    1cfc:	02202825 	move	a1,s1
    1d00:	0c000000 	jal	0 <func_80B13AA0>
    1d04:	24060001 	li	a2,1
    1d08:	02402025 	move	a0,s2
    1d0c:	24052081 	li	a1,8321
    1d10:	0c000000 	jal	0 <func_80B13AA0>
    1d14:	02203025 	move	a2,s1
    1d18:	3c190000 	lui	t9,0x0
    1d1c:	27390000 	addiu	t9,t9,0
    1d20:	ae39025c 	sw	t9,604(s1)
    1d24:	02202025 	move	a0,s1
    1d28:	0c000000 	jal	0 <func_80B13AA0>
    1d2c:	02402825 	move	a1,s2
    1d30:	960813fa 	lhu	t0,5114(s0)
    1d34:	3c0141e8 	lui	at,0x41e8
    1d38:	44813000 	mtc1	at,$f6
    1d3c:	3109feff 	andi	t1,t0,0xfeff
    1d40:	a60913fa 	sh	t1,5114(s0)
    1d44:	962a02e0 	lhu	t2,736(s1)
    1d48:	3c01c120 	lui	at,0xc120
    1d4c:	44814000 	mtc1	at,$f8
    1d50:	354b0080 	ori	t3,t2,0x80
    1d54:	a62b02e0 	sh	t3,736(s1)
    1d58:	3c050601 	lui	a1,0x601
    1d5c:	240c0002 	li	t4,2
    1d60:	2412feff 	li	s2,-257
    1d64:	afac0014 	sw	t4,20(sp)
    1d68:	24a5bf38 	addiu	a1,a1,-16584
    1d6c:	2624014c 	addiu	a0,s1,332
    1d70:	3c063f80 	lui	a2,0x3f80
    1d74:	3c074100 	lui	a3,0x4100
    1d78:	e7a60010 	swc1	$f6,16(sp)
    1d7c:	0c000000 	jal	0 <func_80B13AA0>
    1d80:	e7a80018 	swc1	$f8,24(sp)
    1d84:	962d02e0 	lhu	t5,736(s1)
    1d88:	31afffef 	andi	t7,t5,0xffef
    1d8c:	a62f02e0 	sh	t7,736(s1)
    1d90:	01f2c024 	and	t8,t7,s2
    1d94:	a63802e0 	sh	t8,736(s1)
    1d98:	963902e0 	lhu	t9,736(s1)
    1d9c:	37280001 	ori	t0,t9,0x1
    1da0:	a62802e0 	sh	t0,736(s1)
    1da4:	8fbf0034 	lw	ra,52(sp)
    1da8:	8fb00028 	lw	s0,40(sp)
    1dac:	8fb1002c 	lw	s1,44(sp)
    1db0:	8fb20030 	lw	s2,48(sp)
    1db4:	03e00008 	jr	ra
    1db8:	27bd0050 	addiu	sp,sp,80

00001dbc <func_80B1585C>:
    1dbc:	27bdffa0 	addiu	sp,sp,-96
    1dc0:	afbf005c 	sw	ra,92(sp)
    1dc4:	afb60058 	sw	s6,88(sp)
    1dc8:	afb50054 	sw	s5,84(sp)
    1dcc:	afb40050 	sw	s4,80(sp)
    1dd0:	afb3004c 	sw	s3,76(sp)
    1dd4:	afb20048 	sw	s2,72(sp)
    1dd8:	afb10044 	sw	s1,68(sp)
    1ddc:	afb00040 	sw	s0,64(sp)
    1de0:	f7b80038 	sdc1	$f24,56(sp)
    1de4:	f7b60030 	sdc1	$f22,48(sp)
    1de8:	f7b40028 	sdc1	$f20,40(sp)
    1dec:	afa50064 	sw	a1,100(sp)
    1df0:	848202cc 	lh	v0,716(a0)
    1df4:	0080b025 	move	s6,a0
    1df8:	24110001 	li	s1,1
    1dfc:	28410024 	slti	at,v0,36
    1e00:	1420001c 	bnez	at,1e74 <func_80B1585C+0xb8>
    1e04:	24030023 	li	v1,35
    1e08:	24920004 	addiu	s2,a0,4
    1e0c:	2414d8f0 	li	s4,-10000
    1e10:	24130003 	li	s3,3
    1e14:	8e5002b8 	lw	s0,696(s2)
    1e18:	52000010 	beqzl	s0,1e5c <func_80B1585C+0xa0>
    1e1c:	26310001 	addiu	s1,s1,1
    1e20:	02340019 	multu	s1,s4
    1e24:	240e0100 	li	t6,256
    1e28:	afae0010 	sw	t6,16(sp)
    1e2c:	26040032 	addiu	a0,s0,50
    1e30:	24060002 	li	a2,2
    1e34:	24070800 	li	a3,2048
    1e38:	00002812 	mflo	a1
    1e3c:	24a5f448 	addiu	a1,a1,-3000
    1e40:	00052c00 	sll	a1,a1,0x10
    1e44:	0c000000 	jal	0 <func_80B13AA0>
    1e48:	00052c03 	sra	a1,a1,0x10
    1e4c:	8e5002b8 	lw	s0,696(s2)
    1e50:	860f0032 	lh	t7,50(s0)
    1e54:	a60f00b6 	sh	t7,182(s0)
    1e58:	26310001 	addiu	s1,s1,1
    1e5c:	1633ffed 	bne	s1,s3,1e14 <func_80B1585C+0x58>
    1e60:	26520004 	addiu	s2,s2,4
    1e64:	3c014120 	lui	at,0x4120
    1e68:	4481c000 	mtc1	at,$f24
    1e6c:	1000003d 	b	1f64 <func_80B1585C+0x1a8>
    1e70:	86c202cc 	lh	v0,716(s6)
    1e74:	1462001d 	bne	v1,v0,1eec <func_80B1585C+0x130>
    1e78:	00008825 	move	s1,zero
    1e7c:	3c014120 	lui	at,0x4120
    1e80:	4481c000 	mtc1	at,$f24
    1e84:	3c0140c0 	lui	at,0x40c0
    1e88:	4481a000 	mtc1	at,$f20
    1e8c:	4480b000 	mtc1	zero,$f22
    1e90:	02c09025 	move	s2,s6
    1e94:	00009825 	move	s3,zero
    1e98:	02c0a025 	move	s4,s6
    1e9c:	24150006 	li	s5,6
    1ea0:	24110001 	li	s1,1
    1ea4:	0c000000 	jal	0 <func_80B13AA0>
    1ea8:	4600a306 	mov.s	$f12,$f20
    1eac:	46180100 	add.s	$f4,$f0,$f24
    1eb0:	26520004 	addiu	s2,s2,4
    1eb4:	26730002 	addiu	s3,s3,2
    1eb8:	4600218d 	trunc.w.s	$f6,$f4
    1ebc:	44193000 	mfc1	t9,$f6
    1ec0:	00000000 	nop
    1ec4:	a69902c4 	sh	t9,708(s4)
    1ec8:	8e5002b4 	lw	s0,692(s2)
    1ecc:	12000003 	beqz	s0,1edc <func_80B1585C+0x120>
    1ed0:	00000000 	nop
    1ed4:	a2110308 	sb	s1,776(s0)
    1ed8:	e616006c 	swc1	$f22,108(s0)
    1edc:	1675fff1 	bne	s3,s5,1ea4 <func_80B1585C+0xe8>
    1ee0:	26940002 	addiu	s4,s4,2
    1ee4:	1000001f 	b	1f64 <func_80B1585C+0x1a8>
    1ee8:	86c202cc 	lh	v0,716(s6)
    1eec:	3c010000 	lui	at,0x0
    1ef0:	c42c0000 	lwc1	$f12,0(at)
    1ef4:	3c01c000 	lui	at,0xc000
    1ef8:	44811000 	mtc1	at,$f2
    1efc:	02c0a025 	move	s4,s6
    1f00:	24130003 	li	s3,3
    1f04:	868802c4 	lh	t0,708(s4)
    1f08:	00115080 	sll	t2,s1,0x2
    1f0c:	02ca5821 	addu	t3,s6,t2
    1f10:	00684823 	subu	t1,v1,t0
    1f14:	0049082a 	slt	at,v0,t1
    1f18:	5020000d 	beqzl	at,1f50 <func_80B1585C+0x194>
    1f1c:	26310001 	addiu	s1,s1,1
    1f20:	8d7002b8 	lw	s0,696(t3)
    1f24:	5200000a 	beqzl	s0,1f50 <func_80B1585C+0x194>
    1f28:	26310001 	addiu	s1,s1,1
    1f2c:	c600006c 	lwc1	$f0,108(s0)
    1f30:	4600103c 	c.lt.s	$f2,$f0
    1f34:	00000000 	nop
    1f38:	45020005 	bc1fl	1f50 <func_80B1585C+0x194>
    1f3c:	26310001 	addiu	s1,s1,1
    1f40:	460c0201 	sub.s	$f8,$f0,$f12
    1f44:	e608006c 	swc1	$f8,108(s0)
    1f48:	86c202cc 	lh	v0,716(s6)
    1f4c:	26310001 	addiu	s1,s1,1
    1f50:	1633ffec 	bne	s1,s3,1f04 <func_80B1585C+0x148>
    1f54:	26940002 	addiu	s4,s4,2
    1f58:	3c014120 	lui	at,0x4120
    1f5c:	4481c000 	mtc1	at,$f24
    1f60:	00000000 	nop
    1f64:	14400026 	bnez	v0,2000 <func_80B1585C+0x244>
    1f68:	02c02025 	move	a0,s6
    1f6c:	3c050000 	lui	a1,0x0
    1f70:	3c060000 	lui	a2,0x0
    1f74:	24c60000 	addiu	a2,a2,0
    1f78:	0c000000 	jal	0 <func_80B13AA0>
    1f7c:	24a50000 	addiu	a1,a1,0
    1f80:	96cc02e0 	lhu	t4,736(s6)
    1f84:	3c110601 	lui	s1,0x601
    1f88:	2631c48c 	addiu	s1,s1,-15220
    1f8c:	318dffef 	andi	t5,t4,0xffef
    1f90:	a6cd02e0 	sh	t5,736(s6)
    1f94:	0c000000 	jal	0 <func_80B13AA0>
    1f98:	02202025 	move	a0,s1
    1f9c:	00028400 	sll	s0,v0,0x10
    1fa0:	00108403 	sra	s0,s0,0x10
    1fa4:	0c000000 	jal	0 <func_80B13AA0>
    1fa8:	02202025 	move	a0,s1
    1fac:	44905000 	mtc1	s0,$f10
    1fb0:	3c013f80 	lui	at,0x3f80
    1fb4:	44810000 	mtc1	at,$f0
    1fb8:	46805420 	cvt.s.w	$f16,$f10
    1fbc:	44822000 	mtc1	v0,$f4
    1fc0:	240e0002 	li	t6,2
    1fc4:	44060000 	mfc1	a2,$f0
    1fc8:	afae0014 	sw	t6,20(sp)
    1fcc:	468021a0 	cvt.s.w	$f6,$f4
    1fd0:	26c4014c 	addiu	a0,s6,332
    1fd4:	02202825 	move	a1,s1
    1fd8:	e7b80018 	swc1	$f24,24(sp)
    1fdc:	46008481 	sub.s	$f18,$f16,$f0
    1fe0:	e7a60010 	swc1	$f6,16(sp)
    1fe4:	44079000 	mfc1	a3,$f18
    1fe8:	0c000000 	jal	0 <func_80B13AA0>
    1fec:	00000000 	nop
    1ff0:	8fa40064 	lw	a0,100(sp)
    1ff4:	02c02825 	move	a1,s6
    1ff8:	0c000000 	jal	0 <func_80B13AA0>
    1ffc:	24060007 	li	a2,7
    2000:	8fbf005c 	lw	ra,92(sp)
    2004:	d7b40028 	ldc1	$f20,40(sp)
    2008:	d7b60030 	ldc1	$f22,48(sp)
    200c:	d7b80038 	ldc1	$f24,56(sp)
    2010:	8fb00040 	lw	s0,64(sp)
    2014:	8fb10044 	lw	s1,68(sp)
    2018:	8fb20048 	lw	s2,72(sp)
    201c:	8fb3004c 	lw	s3,76(sp)
    2020:	8fb40050 	lw	s4,80(sp)
    2024:	8fb50054 	lw	s5,84(sp)
    2028:	8fb60058 	lw	s6,88(sp)
    202c:	03e00008 	jr	ra
    2030:	27bd0060 	addiu	sp,sp,96

00002034 <func_80B15AD4>:
    2034:	27bdffd0 	addiu	sp,sp,-48
    2038:	afbf002c 	sw	ra,44(sp)
    203c:	afb00028 	sw	s0,40(sp)
    2040:	afa50034 	sw	a1,52(sp)
    2044:	848e02cc 	lh	t6,716(a0)
    2048:	00808025 	move	s0,a0
    204c:	55c0002e 	bnezl	t6,2108 <func_80B15AD4+0xd4>
    2050:	8fa40034 	lw	a0,52(sp)
    2054:	948f02e0 	lhu	t7,736(a0)
    2058:	3c050000 	lui	a1,0x0
    205c:	24a50000 	addiu	a1,a1,0
    2060:	31f80020 	andi	t8,t7,0x20
    2064:	13000027 	beqz	t8,2104 <func_80B15AD4+0xd0>
    2068:	3c060000 	lui	a2,0x0
    206c:	0c000000 	jal	0 <func_80B13AA0>
    2070:	24c60000 	addiu	a2,a2,0
    2074:	961902e0 	lhu	t9,736(s0)
    2078:	3c040601 	lui	a0,0x601
    207c:	2484bf38 	addiu	a0,a0,-16584
    2080:	3328ffef 	andi	t0,t9,0xffef
    2084:	0c000000 	jal	0 <func_80B13AA0>
    2088:	a60802e0 	sh	t0,736(s0)
    208c:	44822000 	mtc1	v0,$f4
    2090:	3c013f80 	lui	at,0x3f80
    2094:	44810000 	mtc1	at,$f0
    2098:	468021a0 	cvt.s.w	$f6,$f4
    209c:	44804000 	mtc1	zero,$f8
    20a0:	3c050601 	lui	a1,0x601
    20a4:	24090002 	li	t1,2
    20a8:	44060000 	mfc1	a2,$f0
    20ac:	44070000 	mfc1	a3,$f0
    20b0:	afa90014 	sw	t1,20(sp)
    20b4:	24a5bf38 	addiu	a1,a1,-16584
    20b8:	e7a60010 	swc1	$f6,16(sp)
    20bc:	2604014c 	addiu	a0,s0,332
    20c0:	0c000000 	jal	0 <func_80B13AA0>
    20c4:	e7a80018 	swc1	$f8,24(sp)
    20c8:	240a0032 	li	t2,50
    20cc:	a60a02cc 	sh	t2,716(s0)
    20d0:	0c000000 	jal	0 <func_80B13AA0>
    20d4:	2404001e 	li	a0,30
    20d8:	0c000000 	jal	0 <func_80B13AA0>
    20dc:	2404006c 	li	a0,108
    20e0:	960b02e0 	lhu	t3,736(s0)
    20e4:	356c0200 	ori	t4,t3,0x200
    20e8:	a60c02e0 	sh	t4,736(s0)
    20ec:	0c000000 	jal	0 <func_80B13AA0>
    20f0:	8fa40034 	lw	a0,52(sp)
    20f4:	8fa40034 	lw	a0,52(sp)
    20f8:	02002825 	move	a1,s0
    20fc:	0c000000 	jal	0 <func_80B13AA0>
    2100:	24060001 	li	a2,1
    2104:	8fa40034 	lw	a0,52(sp)
    2108:	0c000000 	jal	0 <func_80B13AA0>
    210c:	248420d8 	addiu	a0,a0,8408
    2110:	24010005 	li	at,5
    2114:	54410009 	bnel	v0,at,213c <func_80B15AD4+0x108>
    2118:	960f02e0 	lhu	t7,736(s0)
    211c:	0c000000 	jal	0 <func_80B13AA0>
    2120:	8fa40034 	lw	a0,52(sp)
    2124:	50400005 	beqzl	v0,213c <func_80B15AD4+0x108>
    2128:	960f02e0 	lhu	t7,736(s0)
    212c:	960d02e0 	lhu	t5,736(s0)
    2130:	35ae0020 	ori	t6,t5,0x20
    2134:	a60e02e0 	sh	t6,736(s0)
    2138:	960f02e0 	lhu	t7,736(s0)
    213c:	35f80001 	ori	t8,t7,0x1
    2140:	a61802e0 	sh	t8,736(s0)
    2144:	8fbf002c 	lw	ra,44(sp)
    2148:	8fb00028 	lw	s0,40(sp)
    214c:	27bd0030 	addiu	sp,sp,48
    2150:	03e00008 	jr	ra
    2154:	00000000 	nop

00002158 <func_80B15BF8>:
    2158:	27bdffd0 	addiu	sp,sp,-48
    215c:	afbf002c 	sw	ra,44(sp)
    2160:	afb00028 	sw	s0,40(sp)
    2164:	afa50034 	sw	a1,52(sp)
    2168:	948e02e0 	lhu	t6,736(a0)
    216c:	3c050000 	lui	a1,0x0
    2170:	00808025 	move	s0,a0
    2174:	31cf0010 	andi	t7,t6,0x10
    2178:	11e00016 	beqz	t7,21d4 <func_80B15BF8+0x7c>
    217c:	24a50000 	addiu	a1,a1,0
    2180:	3c060000 	lui	a2,0x0
    2184:	0c000000 	jal	0 <func_80B13AA0>
    2188:	24c60000 	addiu	a2,a2,0
    218c:	961802e0 	lhu	t8,736(s0)
    2190:	3c013f80 	lui	at,0x3f80
    2194:	44810000 	mtc1	at,$f0
    2198:	44801000 	mtc1	zero,$f2
    219c:	3319ffef 	andi	t9,t8,0xffef
    21a0:	a61902e0 	sh	t9,736(s0)
    21a4:	3c050601 	lui	a1,0x601
    21a8:	24080002 	li	t0,2
    21ac:	44060000 	mfc1	a2,$f0
    21b0:	44071000 	mfc1	a3,$f2
    21b4:	afa80014 	sw	t0,20(sp)
    21b8:	24a5bf38 	addiu	a1,a1,-16584
    21bc:	2604014c 	addiu	a0,s0,332
    21c0:	e7a00010 	swc1	$f0,16(sp)
    21c4:	0c000000 	jal	0 <func_80B13AA0>
    21c8:	e7a20018 	swc1	$f2,24(sp)
    21cc:	24090005 	li	t1,5
    21d0:	a60902cc 	sh	t1,716(s0)
    21d4:	8fa40034 	lw	a0,52(sp)
    21d8:	0c000000 	jal	0 <func_80B13AA0>
    21dc:	248420d8 	addiu	a0,a0,8408
    21e0:	24010005 	li	at,5
    21e4:	54410009 	bnel	v0,at,220c <func_80B15BF8+0xb4>
    21e8:	960c02e0 	lhu	t4,736(s0)
    21ec:	0c000000 	jal	0 <func_80B13AA0>
    21f0:	8fa40034 	lw	a0,52(sp)
    21f4:	50400005 	beqzl	v0,220c <func_80B15BF8+0xb4>
    21f8:	960c02e0 	lhu	t4,736(s0)
    21fc:	960a02e0 	lhu	t2,736(s0)
    2200:	354b0020 	ori	t3,t2,0x20
    2204:	a60b02e0 	sh	t3,736(s0)
    2208:	960c02e0 	lhu	t4,736(s0)
    220c:	358d0001 	ori	t5,t4,0x1
    2210:	a60d02e0 	sh	t5,736(s0)
    2214:	8fbf002c 	lw	ra,44(sp)
    2218:	8fb00028 	lw	s0,40(sp)
    221c:	27bd0030 	addiu	sp,sp,48
    2220:	03e00008 	jr	ra
    2224:	00000000 	nop

00002228 <func_80B15CC8>:
    2228:	27bdffd0 	addiu	sp,sp,-48
    222c:	afbf002c 	sw	ra,44(sp)
    2230:	afb00028 	sw	s0,40(sp)
    2234:	afa50034 	sw	a1,52(sp)
    2238:	948e02e0 	lhu	t6,736(a0)
    223c:	3c050000 	lui	a1,0x0
    2240:	00808025 	move	s0,a0
    2244:	31cf0010 	andi	t7,t6,0x10
    2248:	11e00014 	beqz	t7,229c <func_80B15CC8+0x74>
    224c:	24a50000 	addiu	a1,a1,0
    2250:	3c060000 	lui	a2,0x0
    2254:	0c000000 	jal	0 <func_80B13AA0>
    2258:	24c60000 	addiu	a2,a2,0
    225c:	961802e0 	lhu	t8,736(s0)
    2260:	3c014120 	lui	at,0x4120
    2264:	44813000 	mtc1	at,$f6
    2268:	3319ffef 	andi	t9,t8,0xffef
    226c:	44802000 	mtc1	zero,$f4
    2270:	a61902e0 	sh	t9,736(s0)
    2274:	3c050601 	lui	a1,0x601
    2278:	24080002 	li	t0,2
    227c:	afa80014 	sw	t0,20(sp)
    2280:	24a5bf38 	addiu	a1,a1,-16584
    2284:	2604014c 	addiu	a0,s0,332
    2288:	3c06bf80 	lui	a2,0xbf80
    228c:	3c0741e8 	lui	a3,0x41e8
    2290:	e7a60018 	swc1	$f6,24(sp)
    2294:	0c000000 	jal	0 <func_80B13AA0>
    2298:	e7a40010 	swc1	$f4,16(sp)
    229c:	8fa40034 	lw	a0,52(sp)
    22a0:	0c000000 	jal	0 <func_80B13AA0>
    22a4:	248420d8 	addiu	a0,a0,8408
    22a8:	24010005 	li	at,5
    22ac:	54410009 	bnel	v0,at,22d4 <func_80B15CC8+0xac>
    22b0:	960b02e0 	lhu	t3,736(s0)
    22b4:	0c000000 	jal	0 <func_80B13AA0>
    22b8:	8fa40034 	lw	a0,52(sp)
    22bc:	50400005 	beqzl	v0,22d4 <func_80B15CC8+0xac>
    22c0:	960b02e0 	lhu	t3,736(s0)
    22c4:	960902e0 	lhu	t1,736(s0)
    22c8:	352a0020 	ori	t2,t1,0x20
    22cc:	a60a02e0 	sh	t2,736(s0)
    22d0:	960b02e0 	lhu	t3,736(s0)
    22d4:	356c0001 	ori	t4,t3,0x1
    22d8:	a60c02e0 	sh	t4,736(s0)
    22dc:	8fbf002c 	lw	ra,44(sp)
    22e0:	8fb00028 	lw	s0,40(sp)
    22e4:	27bd0030 	addiu	sp,sp,48
    22e8:	03e00008 	jr	ra
    22ec:	00000000 	nop

000022f0 <func_80B15D90>:
    22f0:	27bdffd0 	addiu	sp,sp,-48
    22f4:	afa50034 	sw	a1,52(sp)
    22f8:	afbf002c 	sw	ra,44(sp)
    22fc:	afb00028 	sw	s0,40(sp)
    2300:	3c050000 	lui	a1,0x0
    2304:	3c060000 	lui	a2,0x0
    2308:	00808025 	move	s0,a0
    230c:	24c60000 	addiu	a2,a2,0
    2310:	0c000000 	jal	0 <func_80B13AA0>
    2314:	24a50000 	addiu	a1,a1,0
    2318:	960e02e0 	lhu	t6,736(s0)
    231c:	3c0141e8 	lui	at,0x41e8
    2320:	44812000 	mtc1	at,$f4
    2324:	3c01c120 	lui	at,0xc120
    2328:	31cfffef 	andi	t7,t6,0xffef
    232c:	44813000 	mtc1	at,$f6
    2330:	a60f02e0 	sh	t7,736(s0)
    2334:	3c050601 	lui	a1,0x601
    2338:	24180002 	li	t8,2
    233c:	afb80014 	sw	t8,20(sp)
    2340:	24a5bf38 	addiu	a1,a1,-16584
    2344:	2604014c 	addiu	a0,s0,332
    2348:	3c063f80 	lui	a2,0x3f80
    234c:	3c074100 	lui	a3,0x4100
    2350:	e7a40010 	swc1	$f4,16(sp)
    2354:	0c000000 	jal	0 <func_80B13AA0>
    2358:	e7a60018 	swc1	$f6,24(sp)
    235c:	8fa40034 	lw	a0,52(sp)
    2360:	0c000000 	jal	0 <func_80B13AA0>
    2364:	24052080 	li	a1,8320
    2368:	961902e0 	lhu	t9,736(s0)
    236c:	3328ffdf 	andi	t0,t9,0xffdf
    2370:	a60802e0 	sh	t0,736(s0)
    2374:	8fbf002c 	lw	ra,44(sp)
    2378:	8fb00028 	lw	s0,40(sp)
    237c:	27bd0030 	addiu	sp,sp,48
    2380:	03e00008 	jr	ra
    2384:	00000000 	nop

00002388 <func_80B15E28>:
    2388:	27bdffe0 	addiu	sp,sp,-32
    238c:	afbf001c 	sw	ra,28(sp)
    2390:	afb00018 	sw	s0,24(sp)
    2394:	00808025 	move	s0,a0
    2398:	0c000000 	jal	0 <func_80B13AA0>
    239c:	afa50024 	sw	a1,36(sp)
    23a0:	10400007 	beqz	v0,23c0 <func_80B15E28+0x38>
    23a4:	02002025 	move	a0,s0
    23a8:	3c050000 	lui	a1,0x0
    23ac:	0c000000 	jal	0 <func_80B13AA0>
    23b0:	24a50000 	addiu	a1,a1,0
    23b4:	02002025 	move	a0,s0
    23b8:	0c000000 	jal	0 <func_80B13AA0>
    23bc:	8fa50024 	lw	a1,36(sp)
    23c0:	960e02e0 	lhu	t6,736(s0)
    23c4:	35cf0001 	ori	t7,t6,0x1
    23c8:	a60f02e0 	sh	t7,736(s0)
    23cc:	8fbf001c 	lw	ra,28(sp)
    23d0:	8fb00018 	lw	s0,24(sp)
    23d4:	27bd0020 	addiu	sp,sp,32
    23d8:	03e00008 	jr	ra
    23dc:	00000000 	nop

000023e0 <func_80B15E80>:
    23e0:	27bdffd8 	addiu	sp,sp,-40
    23e4:	afbf0024 	sw	ra,36(sp)
    23e8:	afb00020 	sw	s0,32(sp)
    23ec:	00808025 	move	s0,a0
    23f0:	0c000000 	jal	0 <func_80B13AA0>
    23f4:	afa5002c 	sw	a1,44(sp)
    23f8:	10400011 	beqz	v0,2440 <func_80B15E80+0x60>
    23fc:	8fa5002c 	lw	a1,44(sp)
    2400:	960202e0 	lhu	v0,736(s0)
    2404:	3c0e0000 	lui	t6,0x0
    2408:	25ce0000 	addiu	t6,t6,0
    240c:	304f0002 	andi	t7,v0,0x2
    2410:	ae000118 	sw	zero,280(s0)
    2414:	15e00007 	bnez	t7,2434 <func_80B15E80+0x54>
    2418:	ae0e025c 	sw	t6,604(s0)
    241c:	3c030000 	lui	v1,0x0
    2420:	24630000 	addiu	v1,v1,0
    2424:	94780ef0 	lhu	t8,3824(v1)
    2428:	37190004 	ori	t9,t8,0x4
    242c:	a4790ef0 	sh	t9,3824(v1)
    2430:	960202e0 	lhu	v0,736(s0)
    2434:	3048fffd 	andi	t0,v0,0xfffd
    2438:	10000016 	b	2494 <func_80B15E80+0xb4>
    243c:	a60802e0 	sh	t0,736(s0)
    2440:	960902e0 	lhu	t1,736(s0)
    2444:	02002025 	move	a0,s0
    2448:	24060014 	li	a2,20
    244c:	312a0002 	andi	t2,t1,0x2
    2450:	1140000b 	beqz	t2,2480 <func_80B15E80+0xa0>
    2454:	3c07461c 	lui	a3,0x461c
    2458:	3c014248 	lui	at,0x4248
    245c:	44812000 	mtc1	at,$f4
    2460:	3c07461c 	lui	a3,0x461c
    2464:	34e74000 	ori	a3,a3,0x4000
    2468:	02002025 	move	a0,s0
    246c:	24060050 	li	a2,80
    2470:	0c000000 	jal	0 <func_80B13AA0>
    2474:	e7a40010 	swc1	$f4,16(sp)
    2478:	10000007 	b	2498 <func_80B15E80+0xb8>
    247c:	960b02e0 	lhu	t3,736(s0)
    2480:	3c014248 	lui	at,0x4248
    2484:	44813000 	mtc1	at,$f6
    2488:	34e74000 	ori	a3,a3,0x4000
    248c:	0c000000 	jal	0 <func_80B13AA0>
    2490:	e7a60010 	swc1	$f6,16(sp)
    2494:	960b02e0 	lhu	t3,736(s0)
    2498:	356c0001 	ori	t4,t3,0x1
    249c:	a60c02e0 	sh	t4,736(s0)
    24a0:	8fbf0024 	lw	ra,36(sp)
    24a4:	8fb00020 	lw	s0,32(sp)
    24a8:	27bd0028 	addiu	sp,sp,40
    24ac:	03e00008 	jr	ra
    24b0:	00000000 	nop

000024b4 <func_80B15F54>:
    24b4:	27bdffe0 	addiu	sp,sp,-32
    24b8:	afbf001c 	sw	ra,28(sp)
    24bc:	afa40020 	sw	a0,32(sp)
    24c0:	afa50024 	sw	a1,36(sp)
    24c4:	0c000000 	jal	0 <func_80B13AA0>
    24c8:	24a420d8 	addiu	a0,a1,8408
    24cc:	24010005 	li	at,5
    24d0:	5441001a 	bnel	v0,at,253c <func_80B15F54+0x88>
    24d4:	8fbf001c 	lw	ra,28(sp)
    24d8:	0c000000 	jal	0 <func_80B13AA0>
    24dc:	8fa40024 	lw	a0,36(sp)
    24e0:	50400016 	beqzl	v0,253c <func_80B15F54+0x88>
    24e4:	8fbf001c 	lw	ra,28(sp)
    24e8:	0c000000 	jal	0 <func_80B13AA0>
    24ec:	8fa40024 	lw	a0,36(sp)
    24f0:	8fa40020 	lw	a0,32(sp)
    24f4:	3c050000 	lui	a1,0x0
    24f8:	3c060000 	lui	a2,0x0
    24fc:	948e02e0 	lhu	t6,736(a0)
    2500:	24c60000 	addiu	a2,a2,0
    2504:	24a50000 	addiu	a1,a1,0
    2508:	31cffffd 	andi	t7,t6,0xfffd
    250c:	0c000000 	jal	0 <func_80B13AA0>
    2510:	a48f02e0 	sh	t7,736(a0)
    2514:	3c014248 	lui	at,0x4248
    2518:	44812000 	mtc1	at,$f4
    251c:	3c07461c 	lui	a3,0x461c
    2520:	34e74000 	ori	a3,a3,0x4000
    2524:	8fa40020 	lw	a0,32(sp)
    2528:	8fa50024 	lw	a1,36(sp)
    252c:	24060014 	li	a2,20
    2530:	0c000000 	jal	0 <func_80B13AA0>
    2534:	e7a40010 	swc1	$f4,16(sp)
    2538:	8fbf001c 	lw	ra,28(sp)
    253c:	27bd0020 	addiu	sp,sp,32
    2540:	03e00008 	jr	ra
    2544:	00000000 	nop

00002548 <func_80B15FE8>:
    2548:	27bdffd8 	addiu	sp,sp,-40
    254c:	afb00020 	sw	s0,32(sp)
    2550:	00808025 	move	s0,a0
    2554:	afbf0024 	sw	ra,36(sp)
    2558:	afa5002c 	sw	a1,44(sp)
    255c:	0c000000 	jal	0 <func_80B13AA0>
    2560:	24a420d8 	addiu	a0,a1,8408
    2564:	24010004 	li	at,4
    2568:	54410064 	bnel	v0,at,26fc <func_80B15FE8+0x1b4>
    256c:	960202e0 	lhu	v0,736(s0)
    2570:	0c000000 	jal	0 <func_80B13AA0>
    2574:	8fa4002c 	lw	a0,44(sp)
    2578:	1040005f 	beqz	v0,26f8 <func_80B15FE8+0x1b0>
    257c:	8fa6002c 	lw	a2,44(sp)
    2580:	3c020001 	lui	v0,0x1
    2584:	00461021 	addu	v0,v0,a2
    2588:	904204bd 	lbu	v0,1213(v0)
    258c:	24010001 	li	at,1
    2590:	10400008 	beqz	v0,25b4 <func_80B15FE8+0x6c>
    2594:	00000000 	nop
    2598:	1041003b 	beq	v0,at,2688 <func_80B15FE8+0x140>
    259c:	3c180000 	lui	t8,0x0
    25a0:	24010002 	li	at,2
    25a4:	1041004e 	beq	v0,at,26e0 <func_80B15FE8+0x198>
    25a8:	02002025 	move	a0,s0
    25ac:	10000053 	b	26fc <func_80B15FE8+0x1b4>
    25b0:	960202e0 	lhu	v0,736(s0)
    25b4:	0c000000 	jal	0 <func_80B13AA0>
    25b8:	00000000 	nop
    25bc:	10400009 	beqz	v0,25e4 <func_80B15FE8+0x9c>
    25c0:	8fa4002c 	lw	a0,44(sp)
    25c4:	24010001 	li	at,1
    25c8:	10410010 	beq	v0,at,260c <func_80B15FE8+0xc4>
    25cc:	8fa4002c 	lw	a0,44(sp)
    25d0:	24010002 	li	at,2
    25d4:	10410017 	beq	v0,at,2634 <func_80B15FE8+0xec>
    25d8:	02002025 	move	a0,s0
    25dc:	10000047 	b	26fc <func_80B15FE8+0x1b4>
    25e0:	960202e0 	lhu	v0,736(s0)
    25e4:	0c000000 	jal	0 <func_80B13AA0>
    25e8:	24050085 	li	a1,133
    25ec:	3c050000 	lui	a1,0x0
    25f0:	3c060000 	lui	a2,0x0
    25f4:	24c60000 	addiu	a2,a2,0
    25f8:	24a50000 	addiu	a1,a1,0
    25fc:	0c000000 	jal	0 <func_80B13AA0>
    2600:	02002025 	move	a0,s0
    2604:	1000003d 	b	26fc <func_80B15FE8+0x1b4>
    2608:	960202e0 	lhu	v0,736(s0)
    260c:	0c000000 	jal	0 <func_80B13AA0>
    2610:	2405208a 	li	a1,8330
    2614:	3c050000 	lui	a1,0x0
    2618:	3c060000 	lui	a2,0x0
    261c:	24c60000 	addiu	a2,a2,0
    2620:	24a50000 	addiu	a1,a1,0
    2624:	0c000000 	jal	0 <func_80B13AA0>
    2628:	02002025 	move	a0,s0
    262c:	10000033 	b	26fc <func_80B15FE8+0x1b4>
    2630:	960202e0 	lhu	v0,736(s0)
    2634:	960e02e0 	lhu	t6,736(s0)
    2638:	3c050000 	lui	a1,0x0
    263c:	3c060000 	lui	a2,0x0
    2640:	35cf0002 	ori	t7,t6,0x2
    2644:	a60f02e0 	sh	t7,736(s0)
    2648:	24c60000 	addiu	a2,a2,0
    264c:	0c000000 	jal	0 <func_80B13AA0>
    2650:	24a50000 	addiu	a1,a1,0
    2654:	0c000000 	jal	0 <func_80B13AA0>
    2658:	2404ffe2 	li	a0,-30
    265c:	3c014248 	lui	at,0x4248
    2660:	44812000 	mtc1	at,$f4
    2664:	3c07461c 	lui	a3,0x461c
    2668:	34e74000 	ori	a3,a3,0x4000
    266c:	02002025 	move	a0,s0
    2670:	8fa5002c 	lw	a1,44(sp)
    2674:	24060050 	li	a2,80
    2678:	0c000000 	jal	0 <func_80B13AA0>
    267c:	e7a40010 	swc1	$f4,16(sp)
    2680:	1000001e 	b	26fc <func_80B15FE8+0x1b4>
    2684:	960202e0 	lhu	v0,736(s0)
    2688:	87180034 	lh	t8,52(t8)
    268c:	00c02025 	move	a0,a2
    2690:	2b01000a 	slti	at,t8,10
    2694:	1020000b 	beqz	at,26c4 <func_80B15FE8+0x17c>
    2698:	00000000 	nop
    269c:	0c000000 	jal	0 <func_80B13AA0>
    26a0:	24050085 	li	a1,133
    26a4:	3c050000 	lui	a1,0x0
    26a8:	3c060000 	lui	a2,0x0
    26ac:	24c60000 	addiu	a2,a2,0
    26b0:	24a50000 	addiu	a1,a1,0
    26b4:	0c000000 	jal	0 <func_80B13AA0>
    26b8:	02002025 	move	a0,s0
    26bc:	1000000f 	b	26fc <func_80B15FE8+0x1b4>
    26c0:	960202e0 	lhu	v0,736(s0)
    26c4:	0c000000 	jal	0 <func_80B13AA0>
    26c8:	2404fff6 	li	a0,-10
    26cc:	02002025 	move	a0,s0
    26d0:	0c000000 	jal	0 <func_80B13AA0>
    26d4:	8fa5002c 	lw	a1,44(sp)
    26d8:	10000008 	b	26fc <func_80B15FE8+0x1b4>
    26dc:	960202e0 	lhu	v0,736(s0)
    26e0:	3c050000 	lui	a1,0x0
    26e4:	0c000000 	jal	0 <func_80B13AA0>
    26e8:	24a50000 	addiu	a1,a1,0
    26ec:	02002025 	move	a0,s0
    26f0:	0c000000 	jal	0 <func_80B13AA0>
    26f4:	8fa5002c 	lw	a1,44(sp)
    26f8:	960202e0 	lhu	v0,736(s0)
    26fc:	30590010 	andi	t9,v0,0x10
    2700:	13200002 	beqz	t9,270c <func_80B15FE8+0x1c4>
    2704:	34480001 	ori	t0,v0,0x1
    2708:	a60802e0 	sh	t0,736(s0)
    270c:	8fbf0024 	lw	ra,36(sp)
    2710:	8fb00020 	lw	s0,32(sp)
    2714:	27bd0028 	addiu	sp,sp,40
    2718:	03e00008 	jr	ra
    271c:	00000000 	nop

00002720 <func_80B161C0>:
    2720:	27bdffd8 	addiu	sp,sp,-40
    2724:	afbf001c 	sw	ra,28(sp)
    2728:	afb00018 	sw	s0,24(sp)
    272c:	afa5002c 	sw	a1,44(sp)
    2730:	948e010e 	lhu	t6,270(a0)
    2734:	00808025 	move	s0,a0
    2738:	24012085 	li	at,8325
    273c:	15c10003 	bne	t6,at,274c <func_80B161C0+0x2c>
    2740:	8fa4002c 	lw	a0,44(sp)
    2744:	10000002 	b	2750 <func_80B161C0+0x30>
    2748:	24030005 	li	v1,5
    274c:	2403000a 	li	v1,10
    2750:	248420d8 	addiu	a0,a0,8408
    2754:	0c000000 	jal	0 <func_80B13AA0>
    2758:	afa30024 	sw	v1,36(sp)
    275c:	24010004 	li	at,4
    2760:	1441002f 	bne	v0,at,2820 <func_80B161C0+0x100>
    2764:	8fa30024 	lw	v1,36(sp)
    2768:	8fa4002c 	lw	a0,44(sp)
    276c:	0c000000 	jal	0 <func_80B13AA0>
    2770:	afa30024 	sw	v1,36(sp)
    2774:	1040002a 	beqz	v0,2820 <func_80B161C0+0x100>
    2778:	8fa30024 	lw	v1,36(sp)
    277c:	8fa6002c 	lw	a2,44(sp)
    2780:	3c020001 	lui	v0,0x1
    2784:	24010001 	li	at,1
    2788:	00461021 	addu	v0,v0,a2
    278c:	904204bd 	lbu	v0,1213(v0)
    2790:	3c0f0000 	lui	t7,0x0
    2794:	10400005 	beqz	v0,27ac <func_80B161C0+0x8c>
    2798:	00000000 	nop
    279c:	1041001a 	beq	v0,at,2808 <func_80B161C0+0xe8>
    27a0:	02002025 	move	a0,s0
    27a4:	1000001f 	b	2824 <func_80B161C0+0x104>
    27a8:	960202e0 	lhu	v0,736(s0)
    27ac:	85ef0034 	lh	t7,52(t7)
    27b0:	00032023 	negu	a0,v1
    27b4:	24050085 	li	a1,133
    27b8:	01e3082a 	slt	at,t7,v1
    27bc:	1020000b 	beqz	at,27ec <func_80B161C0+0xcc>
    27c0:	00042400 	sll	a0,a0,0x10
    27c4:	0c000000 	jal	0 <func_80B13AA0>
    27c8:	00c02025 	move	a0,a2
    27cc:	3c050000 	lui	a1,0x0
    27d0:	3c060000 	lui	a2,0x0
    27d4:	24c60000 	addiu	a2,a2,0
    27d8:	24a50000 	addiu	a1,a1,0
    27dc:	0c000000 	jal	0 <func_80B13AA0>
    27e0:	02002025 	move	a0,s0
    27e4:	1000000f 	b	2824 <func_80B161C0+0x104>
    27e8:	960202e0 	lhu	v0,736(s0)
    27ec:	0c000000 	jal	0 <func_80B13AA0>
    27f0:	00042403 	sra	a0,a0,0x10
    27f4:	02002025 	move	a0,s0
    27f8:	0c000000 	jal	0 <func_80B13AA0>
    27fc:	8fa5002c 	lw	a1,44(sp)
    2800:	10000008 	b	2824 <func_80B161C0+0x104>
    2804:	960202e0 	lhu	v0,736(s0)
    2808:	3c050000 	lui	a1,0x0
    280c:	0c000000 	jal	0 <func_80B13AA0>
    2810:	24a50000 	addiu	a1,a1,0
    2814:	02002025 	move	a0,s0
    2818:	0c000000 	jal	0 <func_80B13AA0>
    281c:	8fa5002c 	lw	a1,44(sp)
    2820:	960202e0 	lhu	v0,736(s0)
    2824:	30580010 	andi	t8,v0,0x10
    2828:	13000002 	beqz	t8,2834 <func_80B161C0+0x114>
    282c:	34590001 	ori	t9,v0,0x1
    2830:	a61902e0 	sh	t9,736(s0)
    2834:	8fbf001c 	lw	ra,28(sp)
    2838:	8fb00018 	lw	s0,24(sp)
    283c:	27bd0028 	addiu	sp,sp,40
    2840:	03e00008 	jr	ra
    2844:	00000000 	nop

00002848 <func_80B162E8>:
    2848:	27bdffe8 	addiu	sp,sp,-24
    284c:	afbf0014 	sw	ra,20(sp)
    2850:	afa40018 	sw	a0,24(sp)
    2854:	afa5001c 	sw	a1,28(sp)
    2858:	0c000000 	jal	0 <func_80B13AA0>
    285c:	24a420d8 	addiu	a0,a1,8408
    2860:	24010004 	li	at,4
    2864:	5441000e 	bnel	v0,at,28a0 <func_80B162E8+0x58>
    2868:	8fae0018 	lw	t6,24(sp)
    286c:	0c000000 	jal	0 <func_80B13AA0>
    2870:	8fa4001c 	lw	a0,28(sp)
    2874:	10400009 	beqz	v0,289c <func_80B162E8+0x54>
    2878:	8fa4001c 	lw	a0,28(sp)
    287c:	0c000000 	jal	0 <func_80B13AA0>
    2880:	24052087 	li	a1,8327
    2884:	3c050000 	lui	a1,0x0
    2888:	3c060000 	lui	a2,0x0
    288c:	24c60000 	addiu	a2,a2,0
    2890:	24a50000 	addiu	a1,a1,0
    2894:	0c000000 	jal	0 <func_80B13AA0>
    2898:	8fa40018 	lw	a0,24(sp)
    289c:	8fae0018 	lw	t6,24(sp)
    28a0:	95c202e0 	lhu	v0,736(t6)
    28a4:	304f0010 	andi	t7,v0,0x10
    28a8:	11e00002 	beqz	t7,28b4 <func_80B162E8+0x6c>
    28ac:	34580001 	ori	t8,v0,0x1
    28b0:	a5d802e0 	sh	t8,736(t6)
    28b4:	8fbf0014 	lw	ra,20(sp)
    28b8:	27bd0018 	addiu	sp,sp,24
    28bc:	03e00008 	jr	ra
    28c0:	00000000 	nop

000028c4 <func_80B16364>:
    28c4:	27bdffe8 	addiu	sp,sp,-24
    28c8:	afbf0014 	sw	ra,20(sp)
    28cc:	afa40018 	sw	a0,24(sp)
    28d0:	afa5001c 	sw	a1,28(sp)
    28d4:	0c000000 	jal	0 <func_80B13AA0>
    28d8:	24a420d8 	addiu	a0,a1,8408
    28dc:	24010005 	li	at,5
    28e0:	54410021 	bnel	v0,at,2968 <func_80B16364+0xa4>
    28e4:	8fa30018 	lw	v1,24(sp)
    28e8:	0c000000 	jal	0 <func_80B13AA0>
    28ec:	8fa4001c 	lw	a0,28(sp)
    28f0:	1040001c 	beqz	v0,2964 <func_80B16364+0xa0>
    28f4:	3c020000 	lui	v0,0x0
    28f8:	24420000 	addiu	v0,v0,0
    28fc:	944e0f06 	lhu	t6,3846(v0)
    2900:	94580ef0 	lhu	t8,3824(v0)
    2904:	2405207f 	li	a1,8319
    2908:	35cf4000 	ori	t7,t6,0x4000
    290c:	33190004 	andi	t9,t8,0x4
    2910:	1320000c 	beqz	t9,2944 <func_80B16364+0x80>
    2914:	a44f0f06 	sh	t7,3846(v0)
    2918:	8fa4001c 	lw	a0,28(sp)
    291c:	0c000000 	jal	0 <func_80B13AA0>
    2920:	2405208b 	li	a1,8331
    2924:	3c050000 	lui	a1,0x0
    2928:	3c060000 	lui	a2,0x0
    292c:	24c60000 	addiu	a2,a2,0
    2930:	24a50000 	addiu	a1,a1,0
    2934:	0c000000 	jal	0 <func_80B13AA0>
    2938:	8fa40018 	lw	a0,24(sp)
    293c:	1000000a 	b	2968 <func_80B16364+0xa4>
    2940:	8fa30018 	lw	v1,24(sp)
    2944:	0c000000 	jal	0 <func_80B13AA0>
    2948:	8fa4001c 	lw	a0,28(sp)
    294c:	3c050000 	lui	a1,0x0
    2950:	3c060000 	lui	a2,0x0
    2954:	24c60000 	addiu	a2,a2,0
    2958:	24a50000 	addiu	a1,a1,0
    295c:	0c000000 	jal	0 <func_80B13AA0>
    2960:	8fa40018 	lw	a0,24(sp)
    2964:	8fa30018 	lw	v1,24(sp)
    2968:	946202e0 	lhu	v0,736(v1)
    296c:	30480010 	andi	t0,v0,0x10
    2970:	11000002 	beqz	t0,297c <func_80B16364+0xb8>
    2974:	34490001 	ori	t1,v0,0x1
    2978:	a46902e0 	sh	t1,736(v1)
    297c:	8fbf0014 	lw	ra,20(sp)
    2980:	27bd0018 	addiu	sp,sp,24
    2984:	03e00008 	jr	ra
    2988:	00000000 	nop

0000298c <func_80B1642C>:
    298c:	27bdffd8 	addiu	sp,sp,-40
    2990:	afb10020 	sw	s1,32(sp)
    2994:	00808825 	move	s1,a0
    2998:	afbf0024 	sw	ra,36(sp)
    299c:	afb0001c 	sw	s0,28(sp)
    29a0:	00a08025 	move	s0,a1
    29a4:	0c000000 	jal	0 <func_80B13AA0>
    29a8:	24a420d8 	addiu	a0,a1,8408
    29ac:	24010005 	li	at,5
    29b0:	54410028 	bnel	v0,at,2a54 <func_80B1642C+0xc8>
    29b4:	8fbf0024 	lw	ra,36(sp)
    29b8:	0c000000 	jal	0 <func_80B13AA0>
    29bc:	02002025 	move	a0,s0
    29c0:	50400024 	beqzl	v0,2a54 <func_80B1642C+0xc8>
    29c4:	8fbf0024 	lw	ra,36(sp)
    29c8:	0c000000 	jal	0 <func_80B13AA0>
    29cc:	00000000 	nop
    29d0:	10400017 	beqz	v0,2a30 <func_80B1642C+0xa4>
    29d4:	02002025 	move	a0,s0
    29d8:	0c000000 	jal	0 <func_80B13AA0>
    29dc:	02002025 	move	a0,s0
    29e0:	962e02e0 	lhu	t6,736(s1)
    29e4:	3c050000 	lui	a1,0x0
    29e8:	3c060000 	lui	a2,0x0
    29ec:	35cf0002 	ori	t7,t6,0x2
    29f0:	a62f02e0 	sh	t7,736(s1)
    29f4:	24c60000 	addiu	a2,a2,0
    29f8:	24a50000 	addiu	a1,a1,0
    29fc:	0c000000 	jal	0 <func_80B13AA0>
    2a00:	02202025 	move	a0,s1
    2a04:	3c014248 	lui	at,0x4248
    2a08:	44812000 	mtc1	at,$f4
    2a0c:	3c07461c 	lui	a3,0x461c
    2a10:	34e74000 	ori	a3,a3,0x4000
    2a14:	02202025 	move	a0,s1
    2a18:	02002825 	move	a1,s0
    2a1c:	24060050 	li	a2,80
    2a20:	0c000000 	jal	0 <func_80B13AA0>
    2a24:	e7a40010 	swc1	$f4,16(sp)
    2a28:	1000000a 	b	2a54 <func_80B1642C+0xc8>
    2a2c:	8fbf0024 	lw	ra,36(sp)
    2a30:	0c000000 	jal	0 <func_80B13AA0>
    2a34:	2405208a 	li	a1,8330
    2a38:	3c050000 	lui	a1,0x0
    2a3c:	3c060000 	lui	a2,0x0
    2a40:	24c60000 	addiu	a2,a2,0
    2a44:	24a50000 	addiu	a1,a1,0
    2a48:	0c000000 	jal	0 <func_80B13AA0>
    2a4c:	02202025 	move	a0,s1
    2a50:	8fbf0024 	lw	ra,36(sp)
    2a54:	8fb0001c 	lw	s0,28(sp)
    2a58:	8fb10020 	lw	s1,32(sp)
    2a5c:	03e00008 	jr	ra
    2a60:	27bd0028 	addiu	sp,sp,40

00002a64 <func_80B16504>:
    2a64:	27bdffd8 	addiu	sp,sp,-40
    2a68:	afb00018 	sw	s0,24(sp)
    2a6c:	00808025 	move	s0,a0
    2a70:	afbf001c 	sw	ra,28(sp)
    2a74:	afa5002c 	sw	a1,44(sp)
    2a78:	00a02025 	move	a0,a1
    2a7c:	0c000000 	jal	0 <func_80B13AA0>
    2a80:	24050018 	li	a1,24
    2a84:	a7a20026 	sh	v0,38(sp)
    2a88:	02002025 	move	a0,s0
    2a8c:	0c000000 	jal	0 <func_80B13AA0>
    2a90:	8fa5002c 	lw	a1,44(sp)
    2a94:	02002025 	move	a0,s0
    2a98:	8fa5002c 	lw	a1,44(sp)
    2a9c:	0c000000 	jal	0 <func_80B13AA0>
    2aa0:	9606010e 	lhu	a2,270(s0)
    2aa4:	10400028 	beqz	v0,2b48 <func_80B16504+0xe4>
    2aa8:	02002025 	move	a0,s0
    2aac:	0c000000 	jal	0 <func_80B13AA0>
    2ab0:	24056851 	li	a1,26705
    2ab4:	97ae0026 	lhu	t6,38(sp)
    2ab8:	3c030000 	lui	v1,0x0
    2abc:	24630000 	addiu	v1,v1,0
    2ac0:	11c00006 	beqz	t6,2adc <func_80B16504+0x78>
    2ac4:	02002025 	move	a0,s0
    2ac8:	3c050000 	lui	a1,0x0
    2acc:	0c000000 	jal	0 <func_80B13AA0>
    2ad0:	24a50000 	addiu	a1,a1,0
    2ad4:	1000001d 	b	2b4c <func_80B16504+0xe8>
    2ad8:	961902e0 	lhu	t9,736(s0)
    2adc:	946f0f06 	lhu	t7,3846(v1)
    2ae0:	2401207e 	li	at,8318
    2ae4:	02002025 	move	a0,s0
    2ae8:	35f84000 	ori	t8,t7,0x4000
    2aec:	a4780f06 	sh	t8,3846(v1)
    2af0:	9602010e 	lhu	v0,270(s0)
    2af4:	3c050000 	lui	a1,0x0
    2af8:	10410007 	beq	v0,at,2b18 <func_80B16504+0xb4>
    2afc:	2401207f 	li	at,8319
    2b00:	10410005 	beq	v0,at,2b18 <func_80B16504+0xb4>
    2b04:	2401208b 	li	at,8331
    2b08:	10410007 	beq	v0,at,2b28 <func_80B16504+0xc4>
    2b0c:	02002025 	move	a0,s0
    2b10:	1000000a 	b	2b3c <func_80B16504+0xd8>
    2b14:	02002025 	move	a0,s0
    2b18:	0c000000 	jal	0 <func_80B13AA0>
    2b1c:	24a50000 	addiu	a1,a1,0
    2b20:	1000000a 	b	2b4c <func_80B16504+0xe8>
    2b24:	961902e0 	lhu	t9,736(s0)
    2b28:	3c050000 	lui	a1,0x0
    2b2c:	0c000000 	jal	0 <func_80B13AA0>
    2b30:	24a50000 	addiu	a1,a1,0
    2b34:	10000005 	b	2b4c <func_80B16504+0xe8>
    2b38:	961902e0 	lhu	t9,736(s0)
    2b3c:	3c050000 	lui	a1,0x0
    2b40:	0c000000 	jal	0 <func_80B13AA0>
    2b44:	24a50000 	addiu	a1,a1,0
    2b48:	961902e0 	lhu	t9,736(s0)
    2b4c:	3328fffe 	andi	t0,t9,0xfffe
    2b50:	a60802e0 	sh	t0,736(s0)
    2b54:	8fbf001c 	lw	ra,28(sp)
    2b58:	8fb00018 	lw	s0,24(sp)
    2b5c:	27bd0028 	addiu	sp,sp,40
    2b60:	03e00008 	jr	ra
    2b64:	00000000 	nop

00002b68 <func_80B16608>:
    2b68:	27bdffe8 	addiu	sp,sp,-24
    2b6c:	afbf0014 	sw	ra,20(sp)
    2b70:	afa5001c 	sw	a1,28(sp)
    2b74:	0c000000 	jal	0 <func_80B13AA0>
    2b78:	afa40018 	sw	a0,24(sp)
    2b7c:	1040001b 	beqz	v0,2bec <func_80B16608+0x84>
    2b80:	8fa40018 	lw	a0,24(sp)
    2b84:	9482010e 	lhu	v0,270(a0)
    2b88:	24012085 	li	at,8325
    2b8c:	3c0e0000 	lui	t6,0x0
    2b90:	10410009 	beq	v0,at,2bb8 <func_80B16608+0x50>
    2b94:	25ce0000 	addiu	t6,t6,0
    2b98:	24012086 	li	at,8326
    2b9c:	10410008 	beq	v0,at,2bc0 <func_80B16608+0x58>
    2ba0:	3c0f0000 	lui	t7,0x0
    2ba4:	24012088 	li	at,8328
    2ba8:	10410008 	beq	v0,at,2bcc <func_80B16608+0x64>
    2bac:	3c180000 	lui	t8,0x0
    2bb0:	10000009 	b	2bd8 <func_80B16608+0x70>
    2bb4:	8c990004 	lw	t9,4(a0)
    2bb8:	10000006 	b	2bd4 <func_80B16608+0x6c>
    2bbc:	ac8e025c 	sw	t6,604(a0)
    2bc0:	25ef0000 	addiu	t7,t7,0
    2bc4:	10000003 	b	2bd4 <func_80B16608+0x6c>
    2bc8:	ac8f025c 	sw	t7,604(a0)
    2bcc:	27180000 	addiu	t8,t8,0
    2bd0:	ac98025c 	sw	t8,604(a0)
    2bd4:	8c990004 	lw	t9,4(a0)
    2bd8:	3c01fffe 	lui	at,0xfffe
    2bdc:	3421ffff 	ori	at,at,0xffff
    2be0:	03214024 	and	t0,t9,at
    2be4:	1000000a 	b	2c10 <func_80B16608+0xa8>
    2be8:	ac880004 	sw	t0,4(a0)
    2bec:	8c890004 	lw	t1,4(a0)
    2bf0:	3c010001 	lui	at,0x1
    2bf4:	3c06447a 	lui	a2,0x447a
    2bf8:	01215025 	or	t2,t1,at
    2bfc:	ac8a0004 	sw	t2,4(a0)
    2c00:	afa40018 	sw	a0,24(sp)
    2c04:	0c000000 	jal	0 <func_80B13AA0>
    2c08:	8fa5001c 	lw	a1,28(sp)
    2c0c:	8fa40018 	lw	a0,24(sp)
    2c10:	948b02e0 	lhu	t3,736(a0)
    2c14:	356c0001 	ori	t4,t3,0x1
    2c18:	a48c02e0 	sh	t4,736(a0)
    2c1c:	8fbf0014 	lw	ra,20(sp)
    2c20:	27bd0018 	addiu	sp,sp,24
    2c24:	03e00008 	jr	ra
    2c28:	00000000 	nop

00002c2c <func_80B166CC>:
    2c2c:	848202b6 	lh	v0,694(a0)
    2c30:	3c0e0000 	lui	t6,0x0
    2c34:	25ce0000 	addiu	t6,t6,0
    2c38:	2442ffff 	addiu	v0,v0,-1
    2c3c:	00021400 	sll	v0,v0,0x10
    2c40:	00021403 	sra	v0,v0,0x10
    2c44:	50400004 	beqzl	v0,2c58 <func_80B166CC+0x2c>
    2c48:	ac8e02b0 	sw	t6,688(a0)
    2c4c:	03e00008 	jr	ra
    2c50:	a48202b6 	sh	v0,694(a0)
    2c54:	ac8e02b0 	sw	t6,688(a0)
    2c58:	03e00008 	jr	ra
    2c5c:	00000000 	nop

00002c60 <func_80B16700>:
    2c60:	27bdffe8 	addiu	sp,sp,-24
    2c64:	afbf0014 	sw	ra,20(sp)
    2c68:	848202b6 	lh	v0,694(a0)
    2c6c:	2442ffff 	addiu	v0,v0,-1
    2c70:	00021400 	sll	v0,v0,0x10
    2c74:	00021403 	sra	v0,v0,0x10
    2c78:	50400004 	beqzl	v0,2c8c <func_80B16700+0x2c>
    2c7c:	848202b4 	lh	v0,692(a0)
    2c80:	10000023 	b	2d10 <func_80B16700+0xb0>
    2c84:	a48202b6 	sh	v0,694(a0)
    2c88:	848202b4 	lh	v0,692(a0)
    2c8c:	24190001 	li	t9,1
    2c90:	24420001 	addiu	v0,v0,1
    2c94:	00021400 	sll	v0,v0,0x10
    2c98:	00021403 	sra	v0,v0,0x10
    2c9c:	28410003 	slti	at,v0,3
    2ca0:	5420001a 	bnezl	at,2d0c <func_80B16700+0xac>
    2ca4:	a48202b4 	sh	v0,692(a0)
    2ca8:	848302ce 	lh	v1,718(a0)
    2cac:	a48002b4 	sh	zero,692(a0)
    2cb0:	24020001 	li	v0,1
    2cb4:	18600003 	blez	v1,2cc4 <func_80B16700+0x64>
    2cb8:	246effff 	addiu	t6,v1,-1
    2cbc:	1000000d 	b	2cf4 <func_80B16700+0x94>
    2cc0:	a48e02ce 	sh	t6,718(a0)
    2cc4:	0c000000 	jal	0 <func_80B13AA0>
    2cc8:	afa40018 	sw	a0,24(sp)
    2ccc:	3c014270 	lui	at,0x4270
    2cd0:	44812000 	mtc1	at,$f4
    2cd4:	8fa40018 	lw	a0,24(sp)
    2cd8:	46040182 	mul.s	$f6,$f0,$f4
    2cdc:	4600320d 	trunc.w.s	$f8,$f6
    2ce0:	44024000 	mfc1	v0,$f8
    2ce4:	00000000 	nop
    2ce8:	24420014 	addiu	v0,v0,20
    2cec:	00021400 	sll	v0,v0,0x10
    2cf0:	00021403 	sra	v0,v0,0x10
    2cf4:	3c180000 	lui	t8,0x0
    2cf8:	27180000 	addiu	t8,t8,0
    2cfc:	a48202b6 	sh	v0,694(a0)
    2d00:	10000003 	b	2d10 <func_80B16700+0xb0>
    2d04:	ac9802b0 	sw	t8,688(a0)
    2d08:	a48202b4 	sh	v0,692(a0)
    2d0c:	a49902b6 	sh	t9,694(a0)
    2d10:	8fbf0014 	lw	ra,20(sp)
    2d14:	27bd0018 	addiu	sp,sp,24
    2d18:	03e00008 	jr	ra
    2d1c:	00000000 	nop

00002d20 <func_80B167C0>:
    2d20:	27bdffe0 	addiu	sp,sp,-32
    2d24:	afa40020 	sw	a0,32(sp)
    2d28:	afbf0014 	sw	ra,20(sp)
    2d2c:	2484014c 	addiu	a0,a0,332
    2d30:	0c000000 	jal	0 <func_80B13AA0>
    2d34:	afa4001c 	sw	a0,28(sp)
    2d38:	10400004 	beqz	v0,2d4c <func_80B167C0+0x2c>
    2d3c:	8fa4001c 	lw	a0,28(sp)
    2d40:	8fae0020 	lw	t6,32(sp)
    2d44:	0c000000 	jal	0 <func_80B13AA0>
    2d48:	8dc502e4 	lw	a1,740(t6)
    2d4c:	8fbf0014 	lw	ra,20(sp)
    2d50:	27bd0020 	addiu	sp,sp,32
    2d54:	03e00008 	jr	ra
    2d58:	00000000 	nop

00002d5c <func_80B167FC>:
    2d5c:	27bdffd8 	addiu	sp,sp,-40
    2d60:	afb00018 	sw	s0,24(sp)
    2d64:	00808025 	move	s0,a0
    2d68:	afbf001c 	sw	ra,28(sp)
    2d6c:	2484014c 	addiu	a0,a0,332
    2d70:	0c000000 	jal	0 <func_80B13AA0>
    2d74:	afa40024 	sw	a0,36(sp)
    2d78:	10400006 	beqz	v0,2d94 <func_80B167FC+0x38>
    2d7c:	8fa40024 	lw	a0,36(sp)
    2d80:	0c000000 	jal	0 <func_80B13AA0>
    2d84:	8e0502e4 	lw	a1,740(s0)
    2d88:	02002025 	move	a0,s0
    2d8c:	0c000000 	jal	0 <func_80B13AA0>
    2d90:	24056850 	li	a1,26704
    2d94:	960e02e0 	lhu	t6,736(s0)
    2d98:	35cf000c 	ori	t7,t6,0xc
    2d9c:	a60f02e0 	sh	t7,736(s0)
    2da0:	8fbf001c 	lw	ra,28(sp)
    2da4:	8fb00018 	lw	s0,24(sp)
    2da8:	27bd0028 	addiu	sp,sp,40
    2dac:	03e00008 	jr	ra
    2db0:	00000000 	nop

00002db4 <func_80B16854>:
    2db4:	27bdffd8 	addiu	sp,sp,-40
    2db8:	afbf001c 	sw	ra,28(sp)
    2dbc:	afb00018 	sw	s0,24(sp)
    2dc0:	848202e2 	lh	v0,738(a0)
    2dc4:	00808025 	move	s0,a0
    2dc8:	18400003 	blez	v0,2dd8 <func_80B16854+0x24>
    2dcc:	244effff 	addiu	t6,v0,-1
    2dd0:	10000029 	b	2e78 <func_80B16854+0xc4>
    2dd4:	a48e02e2 	sh	t6,738(a0)
    2dd8:	2604014c 	addiu	a0,s0,332
    2ddc:	0c000000 	jal	0 <func_80B13AA0>
    2de0:	afa40024 	sw	a0,36(sp)
    2de4:	1040000f 	beqz	v0,2e24 <func_80B16854+0x70>
    2de8:	8fa40024 	lw	a0,36(sp)
    2dec:	0c000000 	jal	0 <func_80B13AA0>
    2df0:	8e0502e4 	lw	a1,740(s0)
    2df4:	3c0142c8 	lui	at,0x42c8
    2df8:	44816000 	mtc1	at,$f12
    2dfc:	0c000000 	jal	0 <func_80B13AA0>
    2e00:	00000000 	nop
    2e04:	3c0142c8 	lui	at,0x42c8
    2e08:	44812000 	mtc1	at,$f4
    2e0c:	00000000 	nop
    2e10:	46040180 	add.s	$f6,$f0,$f4
    2e14:	4600320d 	trunc.w.s	$f8,$f6
    2e18:	44184000 	mfc1	t8,$f8
    2e1c:	00000000 	nop
    2e20:	a61802e2 	sh	t8,738(s0)
    2e24:	3c0142c0 	lui	at,0x42c0
    2e28:	44815000 	mtc1	at,$f10
    2e2c:	c6000164 	lwc1	$f0,356(s0)
    2e30:	3c014254 	lui	at,0x4254
    2e34:	24080002 	li	t0,2
    2e38:	460a003c 	c.lt.s	$f0,$f10
    2e3c:	00000000 	nop
    2e40:	4502000a 	bc1fl	2e6c <func_80B16854+0xb8>
    2e44:	a60802b4 	sh	t0,692(s0)
    2e48:	44818000 	mtc1	at,$f16
    2e4c:	24190001 	li	t9,1
    2e50:	4600803e 	c.le.s	$f16,$f0
    2e54:	00000000 	nop
    2e58:	45020004 	bc1fl	2e6c <func_80B16854+0xb8>
    2e5c:	a60802b4 	sh	t0,692(s0)
    2e60:	10000002 	b	2e6c <func_80B16854+0xb8>
    2e64:	a61902b4 	sh	t9,692(s0)
    2e68:	a60802b4 	sh	t0,692(s0)
    2e6c:	960902e0 	lhu	t1,736(s0)
    2e70:	352a0008 	ori	t2,t1,0x8
    2e74:	a60a02e0 	sh	t2,736(s0)
    2e78:	960b02e0 	lhu	t3,736(s0)
    2e7c:	356c0004 	ori	t4,t3,0x4
    2e80:	a60c02e0 	sh	t4,736(s0)
    2e84:	8fbf001c 	lw	ra,28(sp)
    2e88:	8fb00018 	lw	s0,24(sp)
    2e8c:	27bd0028 	addiu	sp,sp,40
    2e90:	03e00008 	jr	ra
    2e94:	00000000 	nop

00002e98 <func_80B16938>:
    2e98:	27bdffe8 	addiu	sp,sp,-24
    2e9c:	afbf0014 	sw	ra,20(sp)
    2ea0:	948e02e0 	lhu	t6,736(a0)
    2ea4:	00802825 	move	a1,a0
    2ea8:	2484014c 	addiu	a0,a0,332
    2eac:	31cf0010 	andi	t7,t6,0x10
    2eb0:	55e0000c 	bnezl	t7,2ee4 <func_80B16938+0x4c>
    2eb4:	8fbf0014 	lw	ra,20(sp)
    2eb8:	0c000000 	jal	0 <func_80B13AA0>
    2ebc:	afa50018 	sw	a1,24(sp)
    2ec0:	10400004 	beqz	v0,2ed4 <func_80B16938+0x3c>
    2ec4:	8fa50018 	lw	a1,24(sp)
    2ec8:	94b802e0 	lhu	t8,736(a1)
    2ecc:	37190010 	ori	t9,t8,0x10
    2ed0:	a4b902e0 	sh	t9,736(a1)
    2ed4:	94a802e0 	lhu	t0,736(a1)
    2ed8:	35090008 	ori	t1,t0,0x8
    2edc:	a4a902e0 	sh	t1,736(a1)
    2ee0:	8fbf0014 	lw	ra,20(sp)
    2ee4:	27bd0018 	addiu	sp,sp,24
    2ee8:	03e00008 	jr	ra
    2eec:	00000000 	nop

00002ef0 <EnTa_Update>:
    2ef0:	27bdffc0 	addiu	sp,sp,-64
    2ef4:	afb00028 	sw	s0,40(sp)
    2ef8:	00808025 	move	s0,a0
    2efc:	afbf002c 	sw	ra,44(sp)
    2f00:	afa50044 	sw	a1,68(sp)
    2f04:	26060264 	addiu	a2,s0,612
    2f08:	00c02825 	move	a1,a2
    2f0c:	0c000000 	jal	0 <func_80B13AA0>
    2f10:	afa60034 	sw	a2,52(sp)
    2f14:	8fa40044 	lw	a0,68(sp)
    2f18:	3c010001 	lui	at,0x1
    2f1c:	34211e60 	ori	at,at,0x1e60
    2f20:	8fa60034 	lw	a2,52(sp)
    2f24:	0c000000 	jal	0 <func_80B13AA0>
    2f28:	00812821 	addu	a1,a0,at
    2f2c:	0c000000 	jal	0 <func_80B13AA0>
    2f30:	02002025 	move	a0,s0
    2f34:	44800000 	mtc1	zero,$f0
    2f38:	240e0004 	li	t6,4
    2f3c:	afae0014 	sw	t6,20(sp)
    2f40:	44060000 	mfc1	a2,$f0
    2f44:	44070000 	mfc1	a3,$f0
    2f48:	8fa40044 	lw	a0,68(sp)
    2f4c:	02002825 	move	a1,s0
    2f50:	0c000000 	jal	0 <func_80B13AA0>
    2f54:	e7a00010 	swc1	$f0,16(sp)
    2f58:	8e190260 	lw	t9,608(s0)
    2f5c:	02002025 	move	a0,s0
    2f60:	0320f809 	jalr	t9
    2f64:	00000000 	nop
    2f68:	8e19025c 	lw	t9,604(s0)
    2f6c:	02002025 	move	a0,s0
    2f70:	8fa50044 	lw	a1,68(sp)
    2f74:	0320f809 	jalr	t9
    2f78:	00000000 	nop
    2f7c:	960202e0 	lhu	v0,736(s0)
    2f80:	304f0004 	andi	t7,v0,0x4
    2f84:	55e00007 	bnezl	t7,2fa4 <EnTa_Update+0xb4>
    2f88:	30580001 	andi	t8,v0,0x1
    2f8c:	8e1902b0 	lw	t9,688(s0)
    2f90:	02002025 	move	a0,s0
    2f94:	0320f809 	jalr	t9
    2f98:	00000000 	nop
    2f9c:	960202e0 	lhu	v0,736(s0)
    2fa0:	30580001 	andi	t8,v0,0x1
    2fa4:	1300000e 	beqz	t8,2fe0 <EnTa_Update+0xf0>
    2fa8:	260402d4 	addiu	a0,s0,724
    2fac:	8e090038 	lw	t1,56(s0)
    2fb0:	8fa40044 	lw	a0,68(sp)
    2fb4:	02002825 	move	a1,s0
    2fb8:	afa90010 	sw	t1,16(sp)
    2fbc:	8e08003c 	lw	t0,60(s0)
    2fc0:	260602d4 	addiu	a2,s0,724
    2fc4:	260702da 	addiu	a3,s0,730
    2fc8:	afa80014 	sw	t0,20(sp)
    2fcc:	8e090040 	lw	t1,64(s0)
    2fd0:	0c000000 	jal	0 <func_80B13AA0>
    2fd4:	afa90018 	sw	t1,24(sp)
    2fd8:	1000001d 	b	3050 <EnTa_Update+0x160>
    2fdc:	960e02e0 	lhu	t6,736(s0)
    2fe0:	240a0064 	li	t2,100
    2fe4:	afaa0010 	sw	t2,16(sp)
    2fe8:	00002825 	move	a1,zero
    2fec:	24060006 	li	a2,6
    2ff0:	0c000000 	jal	0 <func_80B13AA0>
    2ff4:	24071838 	li	a3,6200
    2ff8:	240b0064 	li	t3,100
    2ffc:	afab0010 	sw	t3,16(sp)
    3000:	260402d6 	addiu	a0,s0,726
    3004:	00002825 	move	a1,zero
    3008:	24060006 	li	a2,6
    300c:	0c000000 	jal	0 <func_80B13AA0>
    3010:	24071838 	li	a3,6200
    3014:	240c0064 	li	t4,100
    3018:	afac0010 	sw	t4,16(sp)
    301c:	260402da 	addiu	a0,s0,730
    3020:	00002825 	move	a1,zero
    3024:	24060006 	li	a2,6
    3028:	0c000000 	jal	0 <func_80B13AA0>
    302c:	24071838 	li	a3,6200
    3030:	240d0064 	li	t5,100
    3034:	afad0010 	sw	t5,16(sp)
    3038:	260402dc 	addiu	a0,s0,732
    303c:	00002825 	move	a1,zero
    3040:	24060006 	li	a2,6
    3044:	0c000000 	jal	0 <func_80B13AA0>
    3048:	24071838 	li	a3,6200
    304c:	960e02e0 	lhu	t6,736(s0)
    3050:	860202cc 	lh	v0,716(s0)
    3054:	31cffffa 	andi	t7,t6,0xfffa
    3058:	18400003 	blez	v0,3068 <EnTa_Update+0x178>
    305c:	a60f02e0 	sh	t7,736(s0)
    3060:	2459ffff 	addiu	t9,v0,-1
    3064:	a61902cc 	sh	t9,716(s0)
    3068:	8fbf002c 	lw	ra,44(sp)
    306c:	8fb00028 	lw	s0,40(sp)
    3070:	27bd0040 	addiu	sp,sp,64
    3074:	03e00008 	jr	ra
    3078:	00000000 	nop

0000307c <func_80B16B1C>:
    307c:	27bdffd0 	addiu	sp,sp,-48
    3080:	afa60038 	sw	a2,56(sp)
    3084:	24060008 	li	a2,8
    3088:	afbf0014 	sw	ra,20(sp)
    308c:	afa40030 	sw	a0,48(sp)
    3090:	10a60006 	beq	a1,a2,30ac <func_80B16B1C+0x30>
    3094:	afa7003c 	sw	a3,60(sp)
    3098:	2401000f 	li	at,15
    309c:	10a1000e 	beq	a1,at,30d8 <func_80B16B1C+0x5c>
    30a0:	8fa20040 	lw	v0,64(sp)
    30a4:	10000015 	b	30fc <func_80B16B1C+0x80>
    30a8:	8fa30044 	lw	v1,68(sp)
    30ac:	8fa20040 	lw	v0,64(sp)
    30b0:	8fa30044 	lw	v1,68(sp)
    30b4:	844e0000 	lh	t6,0(v0)
    30b8:	846f02dc 	lh	t7,732(v1)
    30bc:	84590002 	lh	t9,2(v0)
    30c0:	01cfc021 	addu	t8,t6,t7
    30c4:	a4580000 	sh	t8,0(v0)
    30c8:	846802da 	lh	t0,730(v1)
    30cc:	03284823 	subu	t1,t9,t0
    30d0:	1000000a 	b	30fc <func_80B16B1C+0x80>
    30d4:	a4490002 	sh	t1,2(v0)
    30d8:	8fa30044 	lw	v1,68(sp)
    30dc:	844a0000 	lh	t2,0(v0)
    30e0:	844d0004 	lh	t5,4(v0)
    30e4:	846b02d6 	lh	t3,726(v1)
    30e8:	014b6021 	addu	t4,t2,t3
    30ec:	a44c0000 	sh	t4,0(v0)
    30f0:	846e02d4 	lh	t6,724(v1)
    30f4:	01ae7821 	addu	t7,t5,t6
    30f8:	a44f0004 	sh	t7,4(v0)
    30fc:	946402e0 	lhu	a0,736(v1)
    3100:	30980008 	andi	t8,a0,0x8
    3104:	13000003 	beqz	t8,3114 <func_80B16B1C+0x98>
    3108:	3099fff7 	andi	t9,a0,0xfff7
    310c:	10000037 	b	31ec <func_80B16B1C+0x170>
    3110:	a47902e0 	sh	t9,736(v1)
    3114:	10a60005 	beq	a1,a2,312c <func_80B16B1C+0xb0>
    3118:	2401000a 	li	at,10
    311c:	10a10003 	beq	a1,at,312c <func_80B16B1C+0xb0>
    3120:	2401000d 	li	at,13
    3124:	54a10032 	bnel	a1,at,31f0 <func_80B16B1C+0x174>
    3128:	8fbf0014 	lw	ra,20(sp)
    312c:	8fa80030 	lw	t0,48(sp)
    3130:	00051880 	sll	v1,a1,0x2
    3134:	00651823 	subu	v1,v1,a1
    3138:	000318c0 	sll	v1,v1,0x3
    313c:	8d09009c 	lw	t1,156(t0)
    3140:	00651821 	addu	v1,v1,a1
    3144:	00031840 	sll	v1,v1,0x1
    3148:	246a0814 	addiu	t2,v1,2068
    314c:	012a0019 	multu	t1,t2
    3150:	afa3001c 	sw	v1,28(sp)
    3154:	00002012 	mflo	a0
    3158:	00042400 	sll	a0,a0,0x10
    315c:	0c000000 	jal	0 <func_80B13AA0>
    3160:	00042403 	sra	a0,a0,0x10
    3164:	8fa20040 	lw	v0,64(sp)
    3168:	3c014348 	lui	at,0x4348
    316c:	44814000 	mtc1	at,$f8
    3170:	844b0002 	lh	t3,2(v0)
    3174:	8fa3001c 	lw	v1,28(sp)
    3178:	46080282 	mul.s	$f10,$f0,$f8
    317c:	448b2000 	mtc1	t3,$f4
    3180:	24780940 	addiu	t8,v1,2368
    3184:	468021a0 	cvt.s.w	$f6,$f4
    3188:	460a3400 	add.s	$f16,$f6,$f10
    318c:	4600848d 	trunc.w.s	$f18,$f16
    3190:	440d9000 	mfc1	t5,$f18
    3194:	00000000 	nop
    3198:	a44d0002 	sh	t5,2(v0)
    319c:	8fae0030 	lw	t6,48(sp)
    31a0:	8dcf009c 	lw	t7,156(t6)
    31a4:	01f80019 	multu	t7,t8
    31a8:	00002012 	mflo	a0
    31ac:	00042400 	sll	a0,a0,0x10
    31b0:	0c000000 	jal	0 <func_80B13AA0>
    31b4:	00042403 	sra	a0,a0,0x10
    31b8:	8fa20040 	lw	v0,64(sp)
    31bc:	3c014348 	lui	at,0x4348
    31c0:	44813000 	mtc1	at,$f6
    31c4:	84590004 	lh	t9,4(v0)
    31c8:	46060282 	mul.s	$f10,$f0,$f6
    31cc:	44992000 	mtc1	t9,$f4
    31d0:	00000000 	nop
    31d4:	46802220 	cvt.s.w	$f8,$f4
    31d8:	460a4400 	add.s	$f16,$f8,$f10
    31dc:	4600848d 	trunc.w.s	$f18,$f16
    31e0:	44099000 	mfc1	t1,$f18
    31e4:	00000000 	nop
    31e8:	a4490004 	sh	t1,4(v0)
    31ec:	8fbf0014 	lw	ra,20(sp)
    31f0:	27bd0030 	addiu	sp,sp,48
    31f4:	00001025 	move	v0,zero
    31f8:	03e00008 	jr	ra
    31fc:	00000000 	nop

00003200 <func_80B16CA0>:
    3200:	27bdffe8 	addiu	sp,sp,-24
    3204:	2401000f 	li	at,15
    3208:	afbf0014 	sw	ra,20(sp)
    320c:	afa40018 	sw	a0,24(sp)
    3210:	afa60020 	sw	a2,32(sp)
    3214:	14a10006 	bne	a1,at,3230 <func_80B16CA0+0x30>
    3218:	afa70024 	sw	a3,36(sp)
    321c:	8fa50028 	lw	a1,40(sp)
    3220:	3c040000 	lui	a0,0x0
    3224:	24840000 	addiu	a0,a0,0
    3228:	0c000000 	jal	0 <func_80B13AA0>
    322c:	24a50038 	addiu	a1,a1,56
    3230:	8fbf0014 	lw	ra,20(sp)
    3234:	27bd0018 	addiu	sp,sp,24
    3238:	03e00008 	jr	ra
    323c:	00000000 	nop

00003240 <EnTa_Draw>:
    3240:	27bdffa8 	addiu	sp,sp,-88
    3244:	afbf002c 	sw	ra,44(sp)
    3248:	afb00028 	sw	s0,40(sp)
    324c:	afa5005c 	sw	a1,92(sp)
    3250:	8ca50000 	lw	a1,0(a1)
    3254:	00808025 	move	s0,a0
    3258:	3c060000 	lui	a2,0x0
    325c:	24c60000 	addiu	a2,a2,0
    3260:	27a4003c 	addiu	a0,sp,60
    3264:	2407094d 	li	a3,2381
    3268:	0c000000 	jal	0 <func_80B13AA0>
    326c:	afa5004c 	sw	a1,76(sp)
    3270:	8faf005c 	lw	t7,92(sp)
    3274:	0c000000 	jal	0 <func_80B13AA0>
    3278:	8de40000 	lw	a0,0(t7)
    327c:	8fa8004c 	lw	t0,76(sp)
    3280:	3c19db06 	lui	t9,0xdb06
    3284:	37390020 	ori	t9,t9,0x20
    3288:	8d0302c0 	lw	v1,704(t0)
    328c:	3c040000 	lui	a0,0x0
    3290:	3c060000 	lui	a2,0x0
    3294:	24780008 	addiu	t8,v1,8
    3298:	ad1802c0 	sw	t8,704(t0)
    329c:	ac790000 	sw	t9,0(v1)
    32a0:	860902b4 	lh	t1,692(s0)
    32a4:	24c60000 	addiu	a2,a2,0
    32a8:	3c0500ff 	lui	a1,0xff
    32ac:	00095080 	sll	t2,t1,0x2
    32b0:	008a2021 	addu	a0,a0,t2
    32b4:	8c840000 	lw	a0,0(a0)
    32b8:	34a5ffff 	ori	a1,a1,0xffff
    32bc:	3c078000 	lui	a3,0x8000
    32c0:	00046100 	sll	t4,a0,0x4
    32c4:	000c6f02 	srl	t5,t4,0x1c
    32c8:	000d7080 	sll	t6,t5,0x2
    32cc:	00ce7821 	addu	t7,a2,t6
    32d0:	8df80000 	lw	t8,0(t7)
    32d4:	00855824 	and	t3,a0,a1
    32d8:	3c040600 	lui	a0,0x600
    32dc:	0178c821 	addu	t9,t3,t8
    32e0:	03274821 	addu	t1,t9,a3
    32e4:	ac690004 	sw	t1,4(v1)
    32e8:	8d0302c0 	lw	v1,704(t0)
    32ec:	24846dc0 	addiu	a0,a0,28096
    32f0:	00046900 	sll	t5,a0,0x4
    32f4:	000d7702 	srl	t6,t5,0x1c
    32f8:	3c0cdb06 	lui	t4,0xdb06
    32fc:	246a0008 	addiu	t2,v1,8
    3300:	358c0024 	ori	t4,t4,0x24
    3304:	000e7880 	sll	t7,t6,0x2
    3308:	ad0a02c0 	sw	t2,704(t0)
    330c:	00cf5821 	addu	t3,a2,t7
    3310:	ac6c0000 	sw	t4,0(v1)
    3314:	8d780000 	lw	t8,0(t3)
    3318:	0085c824 	and	t9,a0,a1
    331c:	3c0c0000 	lui	t4,0x0
    3320:	03194821 	addu	t1,t8,t9
    3324:	01275021 	addu	t2,t1,a3
    3328:	ac6a0004 	sw	t2,4(v1)
    332c:	9207014e 	lbu	a3,334(s0)
    3330:	8e06016c 	lw	a2,364(s0)
    3334:	8e050150 	lw	a1,336(s0)
    3338:	3c0d0000 	lui	t5,0x0
    333c:	25ad0000 	addiu	t5,t5,0
    3340:	258c0000 	addiu	t4,t4,0
    3344:	afac0010 	sw	t4,16(sp)
    3348:	afad0014 	sw	t5,20(sp)
    334c:	afb00018 	sw	s0,24(sp)
    3350:	0c000000 	jal	0 <func_80B13AA0>
    3354:	8fa4005c 	lw	a0,92(sp)
    3358:	8fae005c 	lw	t6,92(sp)
    335c:	3c060000 	lui	a2,0x0
    3360:	24c60000 	addiu	a2,a2,0
    3364:	27a4003c 	addiu	a0,sp,60
    3368:	24070960 	li	a3,2400
    336c:	0c000000 	jal	0 <func_80B13AA0>
    3370:	8dc50000 	lw	a1,0(t6)
    3374:	8fbf002c 	lw	ra,44(sp)
    3378:	8fb00028 	lw	s0,40(sp)
    337c:	27bd0058 	addiu	sp,sp,88
    3380:	03e00008 	jr	ra
    3384:	00000000 	nop
	...
