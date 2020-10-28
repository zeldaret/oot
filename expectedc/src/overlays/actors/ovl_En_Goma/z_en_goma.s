
build/src/overlays/actors/ovl_En_Goma/z_en_goma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGoma_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afbf002c 	sw	ra,44(sp)
       8:	afb00028 	sw	s0,40(sp)
       c:	00808025 	move	s0,a0
      10:	0c000000 	jal	0 <EnGoma_Init>
      14:	afa50044 	sw	a1,68(sp)
      18:	3c014348 	lui	at,0x4348
      1c:	44812000 	mtc1	at,$f4
      20:	3c050000 	lui	a1,0x0
      24:	24a50000 	addiu	a1,a1,0
      28:	46040182 	mul.s	$f6,$f0,$f4
      2c:	02002025 	move	a0,s0
      30:	4600320d 	trunc.w.s	$f8,$f6
      34:	440f4000 	mfc1	t7,$f8
      38:	0c000000 	jal	0 <EnGoma_Init>
      3c:	a60f02c0 	sh	t7,704(s0)
      40:	3c053c23 	lui	a1,0x3c23
      44:	34a5d70a 	ori	a1,a1,0xd70a
      48:	0c000000 	jal	0 <EnGoma_Init>
      4c:	02002025 	move	a0,s0
      50:	8602001c 	lh	v0,28(s0)
      54:	8fa40044 	lw	a0,68(sp)
      58:	02003025 	move	a2,s0
      5c:	28410064 	slti	at,v0,100
      60:	14200017 	bnez	at,c0 <EnGoma_Init+0xc0>
      64:	24851c24 	addiu	a1,a0,7204
      68:	0c000000 	jal	0 <EnGoma_Init>
      6c:	24070009 	li	a3,9
      70:	44801000 	mtc1	zero,$f2
      74:	3c180000 	lui	t8,0x0
      78:	27180000 	addiu	t8,t8,0
      7c:	24190003 	li	t9,3
      80:	3c060000 	lui	a2,0x0
      84:	44051000 	mfc1	a1,$f2
      88:	44071000 	mfc1	a3,$f2
      8c:	ae1802b0 	sw	t8,688(s0)
      90:	a61902b8 	sh	t9,696(s0)
      94:	24c60000 	addiu	a2,a2,0
      98:	0c000000 	jal	0 <EnGoma_Init>
      9c:	260400b4 	addiu	a0,s0,180
      a0:	8608001c 	lh	t0,28(s0)
      a4:	8e0a0004 	lw	t2,4(s0)
      a8:	2401fffe 	li	at,-2
      ac:	25090096 	addiu	t1,t0,150
      b0:	01415824 	and	t3,t2,at
      b4:	a60902cc 	sh	t1,716(s0)
      b8:	100000ae 	b	374 <EnGoma_Init+0x374>
      bc:	ae0b0004 	sw	t3,4(s0)
      c0:	2841000a 	slti	at,v0,10
      c4:	14200043 	bnez	at,1d4 <EnGoma_Init+0x1d4>
      c8:	260400b4 	addiu	a0,s0,180
      cc:	8e0c0004 	lw	t4,4(s0)
      d0:	3c010000 	lui	at,0x0
      d4:	c42a0000 	lwc1	$f10,0(at)
      d8:	2401fffe 	li	at,-2
      dc:	01816824 	and	t5,t4,at
      e0:	3c013f80 	lui	at,0x3f80
      e4:	44818000 	mtc1	at,$f16
      e8:	240e0032 	li	t6,50
      ec:	240f0002 	li	t7,2
      f0:	ae0d0004 	sw	t5,4(s0)
      f4:	a60e02cc 	sh	t6,716(s0)
      f8:	a60f02b8 	sh	t7,696(s0)
      fc:	e60a006c 	swc1	$f10,108(s0)
     100:	0c000000 	jal	0 <EnGoma_Init>
     104:	e61002d0 	swc1	$f16,720(s0)
     108:	3c0140a0 	lui	at,0x40a0
     10c:	44811000 	mtc1	at,$f2
     110:	3c180000 	lui	t8,0x0
     114:	27180000 	addiu	t8,t8,0
     118:	46020482 	mul.s	$f18,$f0,$f2
     11c:	ae1802b0 	sw	t8,688(s0)
     120:	46029100 	add.s	$f4,$f18,$f2
     124:	0c000000 	jal	0 <EnGoma_Init>
     128:	e6040060 	swc1	$f4,96(s0)
     12c:	3c010000 	lui	at,0x0
     130:	c4260000 	lwc1	$f6,0(at)
     134:	3c013fc0 	lui	at,0x3fc0
     138:	44815000 	mtc1	at,$f10
     13c:	46060202 	mul.s	$f8,$f0,$f6
     140:	2419001e 	li	t9,30
     144:	a61902cc 	sh	t9,716(s0)
     148:	460a4400 	add.s	$f16,$f8,$f10
     14c:	0c000000 	jal	0 <EnGoma_Init>
     150:	e6100068 	swc1	$f16,104(s0)
     154:	3c010000 	lui	at,0x0
     158:	c4320000 	lwc1	$f18,0(at)
     15c:	3c010000 	lui	at,0x0
     160:	c4260000 	lwc1	$f6,0(at)
     164:	46120102 	mul.s	$f4,$f0,$f18
     168:	46062200 	add.s	$f8,$f4,$f6
     16c:	0c000000 	jal	0 <EnGoma_Init>
     170:	e6080050 	swc1	$f8,80(s0)
     174:	3c010000 	lui	at,0x0
     178:	c42a0000 	lwc1	$f10,0(at)
     17c:	3c010000 	lui	at,0x0
     180:	c4320000 	lwc1	$f18,0(at)
     184:	460a0402 	mul.s	$f16,$f0,$f10
     188:	46128100 	add.s	$f4,$f16,$f18
     18c:	0c000000 	jal	0 <EnGoma_Init>
     190:	e6040054 	swc1	$f4,84(s0)
     194:	3c010000 	lui	at,0x0
     198:	c4260000 	lwc1	$f6,0(at)
     19c:	3c010000 	lui	at,0x0
     1a0:	c42a0000 	lwc1	$f10,0(at)
     1a4:	46060202 	mul.s	$f8,$f0,$f6
     1a8:	44801000 	mtc1	zero,$f2
     1ac:	3c060000 	lui	a2,0x0
     1b0:	24c60000 	addiu	a2,a2,0
     1b4:	44051000 	mfc1	a1,$f2
     1b8:	44071000 	mfc1	a3,$f2
     1bc:	260400b4 	addiu	a0,s0,180
     1c0:	460a4400 	add.s	$f16,$f8,$f10
     1c4:	0c000000 	jal	0 <EnGoma_Init>
     1c8:	e6100058 	swc1	$f16,88(s0)
     1cc:	1000006a 	b	378 <EnGoma_Init+0x378>
     1d0:	8fbf002c 	lw	ra,44(sp)
     1d4:	44801000 	mtc1	zero,$f2
     1d8:	3c060000 	lui	a2,0x0
     1dc:	24c60000 	addiu	a2,a2,0
     1e0:	44051000 	mfc1	a1,$f2
     1e4:	0c000000 	jal	0 <EnGoma_Init>
     1e8:	3c074220 	lui	a3,0x4220
     1ec:	2605014c 	addiu	a1,s0,332
     1f0:	3c060600 	lui	a2,0x600
     1f4:	3c070600 	lui	a3,0x600
     1f8:	26080190 	addiu	t0,s0,400
     1fc:	26090220 	addiu	t1,s0,544
     200:	240a0018 	li	t2,24
     204:	afaa0018 	sw	t2,24(sp)
     208:	afa90014 	sw	t1,20(sp)
     20c:	afa80010 	sw	t0,16(sp)
     210:	24e71548 	addiu	a3,a3,5448
     214:	24c63b40 	addiu	a2,a2,15168
     218:	afa50034 	sw	a1,52(sp)
     21c:	0c000000 	jal	0 <EnGoma_Init>
     220:	8fa40044 	lw	a0,68(sp)
     224:	3c050600 	lui	a1,0x600
     228:	24a51548 	addiu	a1,a1,5448
     22c:	0c000000 	jal	0 <EnGoma_Init>
     230:	8fa40034 	lw	a0,52(sp)
     234:	8602001c 	lh	v0,28(s0)
     238:	240b0002 	li	t3,2
     23c:	a20b00af 	sb	t3,175(s0)
     240:	28410003 	slti	at,v0,3
     244:	1020000a 	beqz	at,270 <EnGoma_Init+0x270>
     248:	3c0c0000 	lui	t4,0x0
     24c:	3c013fc0 	lui	at,0x3fc0
     250:	44819000 	mtc1	at,$f18
     254:	258c0000 	addiu	t4,t4,0
     258:	240d000a 	li	t5,10
     25c:	ae0c02b0 	sw	t4,688(s0)
     260:	a60d02ca 	sh	t5,714(s0)
     264:	8602001c 	lh	v0,28(s0)
     268:	10000019 	b	2d0 <EnGoma_Init+0x2d0>
     26c:	e6120068 	swc1	$f18,104(s0)
     270:	24010008 	li	at,8
     274:	10410003 	beq	v0,at,284 <EnGoma_Init+0x284>
     278:	3c030000 	lui	v1,0x0
     27c:	24010006 	li	at,6
     280:	1441000b 	bne	v0,at,2b0 <EnGoma_Init+0x2b0>
     284:	3c0e0000 	lui	t6,0x0
     288:	25ce0000 	addiu	t6,t6,0
     28c:	24630000 	addiu	v1,v1,0
     290:	ae0e02b0 	sw	t6,688(s0)
     294:	906f0000 	lbu	t7,0(v1)
     298:	a60f02c8 	sh	t7,712(s0)
     29c:	90780000 	lbu	t8,0(v1)
     2a0:	27190001 	addiu	t9,t8,1
     2a4:	a0790000 	sb	t9,0(v1)
     2a8:	10000009 	b	2d0 <EnGoma_Init+0x2d0>
     2ac:	8602001c 	lh	v0,28(s0)
     2b0:	24010009 	li	at,9
     2b4:	10410002 	beq	v0,at,2c0 <EnGoma_Init+0x2c0>
     2b8:	24010007 	li	at,7
     2bc:	14410004 	bne	v0,at,2d0 <EnGoma_Init+0x2d0>
     2c0:	3c080000 	lui	t0,0x0
     2c4:	25080000 	addiu	t0,t0,0
     2c8:	ae0802b0 	sw	t0,688(s0)
     2cc:	8602001c 	lh	v0,28(s0)
     2d0:	28410008 	slti	at,v0,8
     2d4:	14200005 	bnez	at,2ec <EnGoma_Init+0x2ec>
     2d8:	24090001 	li	t1,1
     2dc:	3c010000 	lui	at,0x0
     2e0:	c4240000 	lwc1	$f4,0(at)
     2e4:	10000004 	b	2f8 <EnGoma_Init+0x2f8>
     2e8:	e60402f0 	swc1	$f4,752(s0)
     2ec:	3c010000 	lui	at,0x0
     2f0:	c4260000 	lwc1	$f6,0(at)
     2f4:	e60602f0 	swc1	$f6,752(s0)
     2f8:	3c013f80 	lui	at,0x3f80
     2fc:	44814000 	mtc1	at,$f8
     300:	a60902b8 	sh	t1,696(s0)
     304:	0c000000 	jal	0 <EnGoma_Init>
     308:	e60802d0 	swc1	$f8,720(s0)
     30c:	3c01447a 	lui	at,0x447a
     310:	44815000 	mtc1	at,$f10
     314:	240a0032 	li	t2,50
     318:	a60a02cc 	sh	t2,716(s0)
     31c:	460a0402 	mul.s	$f16,$f0,$f10
     320:	2605030c 	addiu	a1,s0,780
     324:	e61002d8 	swc1	$f16,728(s0)
     328:	afa50034 	sw	a1,52(sp)
     32c:	0c000000 	jal	0 <EnGoma_Init>
     330:	8fa40044 	lw	a0,68(sp)
     334:	3c070000 	lui	a3,0x0
     338:	8fa50034 	lw	a1,52(sp)
     33c:	24e70000 	addiu	a3,a3,0
     340:	8fa40044 	lw	a0,68(sp)
     344:	0c000000 	jal	0 <EnGoma_Init>
     348:	02003025 	move	a2,s0
     34c:	26050358 	addiu	a1,s0,856
     350:	afa50034 	sw	a1,52(sp)
     354:	0c000000 	jal	0 <EnGoma_Init>
     358:	8fa40044 	lw	a0,68(sp)
     35c:	3c070000 	lui	a3,0x0
     360:	8fa50034 	lw	a1,52(sp)
     364:	24e70000 	addiu	a3,a3,0
     368:	8fa40044 	lw	a0,68(sp)
     36c:	0c000000 	jal	0 <EnGoma_Init>
     370:	02003025 	move	a2,s0
     374:	8fbf002c 	lw	ra,44(sp)
     378:	8fb00028 	lw	s0,40(sp)
     37c:	27bd0040 	addiu	sp,sp,64
     380:	03e00008 	jr	ra
     384:	00000000 	nop

00000388 <EnGoma_Destroy>:
     388:	27bdffe8 	addiu	sp,sp,-24
     38c:	afbf0014 	sw	ra,20(sp)
     390:	afa5001c 	sw	a1,28(sp)
     394:	848e001c 	lh	t6,28(a0)
     398:	00803025 	move	a2,a0
     39c:	00a02025 	move	a0,a1
     3a0:	29c1000a 	slti	at,t6,10
     3a4:	10200007 	beqz	at,3c4 <EnGoma_Destroy+0x3c>
     3a8:	24c5030c 	addiu	a1,a2,780
     3ac:	0c000000 	jal	0 <EnGoma_Init>
     3b0:	afa60018 	sw	a2,24(sp)
     3b4:	8fa60018 	lw	a2,24(sp)
     3b8:	8fa4001c 	lw	a0,28(sp)
     3bc:	0c000000 	jal	0 <EnGoma_Init>
     3c0:	24c50358 	addiu	a1,a2,856
     3c4:	8fbf0014 	lw	ra,20(sp)
     3c8:	27bd0018 	addiu	sp,sp,24
     3cc:	03e00008 	jr	ra
     3d0:	00000000 	nop

000003d4 <func_80A49294>:
     3d4:	27bdffd0 	addiu	sp,sp,-48
     3d8:	afb00028 	sw	s0,40(sp)
     3dc:	00808025 	move	s0,a0
     3e0:	afbf002c 	sw	ra,44(sp)
     3e4:	3c040600 	lui	a0,0x600
     3e8:	0c000000 	jal	0 <EnGoma_Init>
     3ec:	24843d78 	addiu	a0,a0,15736
     3f0:	44822000 	mtc1	v0,$f4
     3f4:	3c01c000 	lui	at,0xc000
     3f8:	44814000 	mtc1	at,$f8
     3fc:	468021a0 	cvt.s.w	$f6,$f4
     400:	3c050600 	lui	a1,0x600
     404:	24a53d78 	addiu	a1,a1,15736
     408:	2604014c 	addiu	a0,s0,332
     40c:	3c064000 	lui	a2,0x4000
     410:	24070000 	li	a3,0
     414:	e7a60010 	swc1	$f6,16(sp)
     418:	afa00014 	sw	zero,20(sp)
     41c:	0c000000 	jal	0 <EnGoma_Init>
     420:	e7a80018 	swc1	$f8,24(sp)
     424:	8618001c 	lh	t8,28(s0)
     428:	3c0e0000 	lui	t6,0x0
     42c:	25ce0000 	addiu	t6,t6,0
     430:	240f0014 	li	t7,20
     434:	2b010006 	slti	at,t8,6
     438:	ae0e02b0 	sw	t6,688(s0)
     43c:	10200006 	beqz	at,458 <func_80A49294+0x84>
     440:	a60f02cc 	sh	t7,716(s0)
     444:	02002025 	move	a0,s0
     448:	0c000000 	jal	0 <EnGoma_Init>
     44c:	24053819 	li	a1,14361
     450:	10000005 	b	468 <func_80A49294+0x94>
     454:	8fbf002c 	lw	ra,44(sp)
     458:	02002025 	move	a0,s0
     45c:	0c000000 	jal	0 <EnGoma_Init>
     460:	2405395f 	li	a1,14687
     464:	8fbf002c 	lw	ra,44(sp)
     468:	8fb00028 	lw	s0,40(sp)
     46c:	27bd0030 	addiu	sp,sp,48
     470:	03e00008 	jr	ra
     474:	00000000 	nop

00000478 <func_80A49338>:
     478:	27bdffe0 	addiu	sp,sp,-32
     47c:	afb00018 	sw	s0,24(sp)
     480:	00808025 	move	s0,a0
     484:	afbf001c 	sw	ra,28(sp)
     488:	afa50024 	sw	a1,36(sp)
     48c:	0c000000 	jal	0 <EnGoma_Init>
     490:	2484014c 	addiu	a0,a0,332
     494:	3c0540d5 	lui	a1,0x40d5
     498:	34a55555 	ori	a1,a1,0x5555
     49c:	26040068 	addiu	a0,s0,104
     4a0:	3c063f00 	lui	a2,0x3f00
     4a4:	0c000000 	jal	0 <EnGoma_Init>
     4a8:	3c074000 	lui	a3,0x4000
     4ac:	8fae0024 	lw	t6,36(sp)
     4b0:	02002025 	move	a0,s0
     4b4:	0c000000 	jal	0 <EnGoma_Init>
     4b8:	8dc51c44 	lw	a1,7236(t6)
     4bc:	34018000 	li	at,0x8000
     4c0:	00412821 	addu	a1,v0,at
     4c4:	00052c00 	sll	a1,a1,0x10
     4c8:	00052c03 	sra	a1,a1,0x10
     4cc:	26040032 	addiu	a0,s0,50
     4d0:	24060003 	li	a2,3
     4d4:	0c000000 	jal	0 <EnGoma_Init>
     4d8:	240707d0 	li	a3,2000
     4dc:	260400b6 	addiu	a0,s0,182
     4e0:	86050032 	lh	a1,50(s0)
     4e4:	24060002 	li	a2,2
     4e8:	0c000000 	jal	0 <EnGoma_Init>
     4ec:	24070bb8 	li	a3,3000
     4f0:	860f02cc 	lh	t7,716(s0)
     4f4:	55e00004 	bnezl	t7,508 <func_80A49338+0x90>
     4f8:	8fbf001c 	lw	ra,28(sp)
     4fc:	0c000000 	jal	0 <EnGoma_Init>
     500:	02002025 	move	a0,s0
     504:	8fbf001c 	lw	ra,28(sp)
     508:	8fb00018 	lw	s0,24(sp)
     50c:	27bd0020 	addiu	sp,sp,32
     510:	03e00008 	jr	ra
     514:	00000000 	nop

00000518 <func_80A493D8>:
     518:	3c013f80 	lui	at,0x3f80
     51c:	44810000 	mtc1	at,$f0
     520:	27bdffe0 	addiu	sp,sp,-32
     524:	3c010000 	lui	at,0x0
     528:	c4240000 	lwc1	$f4,0(at)
     52c:	afbf001c 	sw	ra,28(sp)
     530:	afb00018 	sw	s0,24(sp)
     534:	afa50024 	sw	a1,36(sp)
     538:	3c010000 	lui	at,0x0
     53c:	e484006c 	swc1	$f4,108(a0)
     540:	c4280000 	lwc1	$f8,0(at)
     544:	c48602dc 	lwc1	$f6,732(a0)
     548:	c49002d8 	lwc1	$f16,728(a0)
     54c:	00808025 	move	s0,a0
     550:	46083280 	add.s	$f10,$f6,$f8
     554:	3c063ba3 	lui	a2,0x3ba3
     558:	44050000 	mfc1	a1,$f0
     55c:	34c6d70a 	ori	a2,a2,0xd70a
     560:	e48a02dc 	swc1	$f10,732(a0)
     564:	c49202dc 	lwc1	$f18,732(a0)
     568:	248402ec 	addiu	a0,a0,748
     56c:	46120100 	add.s	$f4,$f0,$f18
     570:	46048180 	add.s	$f6,$f16,$f4
     574:	0c000000 	jal	0 <EnGoma_Init>
     578:	e486ffec 	swc1	$f6,-20(a0)
     57c:	3c013f80 	lui	at,0x3f80
     580:	44810000 	mtc1	at,$f0
     584:	3c0544bb 	lui	a1,0x44bb
     588:	34a58000 	ori	a1,a1,0x8000
     58c:	44060000 	mfc1	a2,$f0
     590:	260402f0 	addiu	a0,s0,752
     594:	0c000000 	jal	0 <EnGoma_Init>
     598:	3c074316 	lui	a3,0x4316
     59c:	860202be 	lh	v0,702(s0)
     5a0:	3c013f80 	lui	at,0x3f80
     5a4:	44810000 	mtc1	at,$f0
     5a8:	1040000a 	beqz	v0,5d4 <func_80A493D8+0xbc>
     5ac:	24010001 	li	at,1
     5b0:	10410032 	beq	v0,at,67c <func_80A493D8+0x164>
     5b4:	24010002 	li	at,2
     5b8:	1041004a 	beq	v0,at,6e4 <func_80A493D8+0x1cc>
     5bc:	24010003 	li	at,3
     5c0:	10410057 	beq	v0,at,720 <func_80A493D8+0x208>
     5c4:	260402d0 	addiu	a0,s0,720
     5c8:	96020088 	lhu	v0,136(s0)
     5cc:	10000061 	b	754 <func_80A493D8+0x23c>
     5d0:	30420001 	andi	v0,v0,0x1
     5d4:	96020088 	lhu	v0,136(s0)
     5d8:	30420001 	andi	v0,v0,0x1
     5dc:	1040005d 	beqz	v0,754 <func_80A493D8+0x23c>
     5e0:	00000000 	nop
     5e4:	860e001c 	lh	t6,28(s0)
     5e8:	24053814 	li	a1,14356
     5ec:	02002025 	move	a0,s0
     5f0:	29c10006 	slti	at,t6,6
     5f4:	10200007 	beqz	at,614 <func_80A493D8+0xfc>
     5f8:	00000000 	nop
     5fc:	0c000000 	jal	0 <EnGoma_Init>
     600:	02002025 	move	a0,s0
     604:	3c013f80 	lui	at,0x3f80
     608:	44810000 	mtc1	at,$f0
     60c:	10000007 	b	62c <func_80A493D8+0x114>
     610:	860f001c 	lh	t7,28(s0)
     614:	0c000000 	jal	0 <EnGoma_Init>
     618:	24053961 	li	a1,14689
     61c:	3c013f80 	lui	at,0x3f80
     620:	44810000 	mtc1	at,$f0
     624:	00000000 	nop
     628:	860f001c 	lh	t7,28(s0)
     62c:	24180001 	li	t8,1
     630:	24190003 	li	t9,3
     634:	29e10006 	slti	at,t7,6
     638:	14200007 	bnez	at,658 <func_80A493D8+0x140>
     63c:	260402d0 	addiu	a0,s0,720
     640:	02002025 	move	a0,s0
     644:	0c000000 	jal	0 <EnGoma_Init>
     648:	8fa50024 	lw	a1,36(sp)
     64c:	96020088 	lhu	v0,136(s0)
     650:	10000040 	b	754 <func_80A493D8+0x23c>
     654:	30420001 	andi	v0,v0,0x1
     658:	44070000 	mfc1	a3,$f0
     65c:	a61802be 	sh	t8,702(s0)
     660:	a61902cc 	sh	t9,716(s0)
     664:	3c053fc0 	lui	a1,0x3fc0
     668:	0c000000 	jal	0 <EnGoma_Init>
     66c:	3c063f00 	lui	a2,0x3f00
     670:	96020088 	lhu	v0,136(s0)
     674:	10000037 	b	754 <func_80A493D8+0x23c>
     678:	30420001 	andi	v0,v0,0x1
     67c:	860802cc 	lh	t0,716(s0)
     680:	24090002 	li	t1,2
     684:	260402d0 	addiu	a0,s0,720
     688:	15000010 	bnez	t0,6cc <func_80A493D8+0x1b4>
     68c:	3c053fc0 	lui	a1,0x3fc0
     690:	240a0003 	li	t2,3
     694:	44070000 	mfc1	a3,$f0
     698:	a60902be 	sh	t1,702(s0)
     69c:	a60a02cc 	sh	t2,716(s0)
     6a0:	260402d0 	addiu	a0,s0,720
     6a4:	3c053f40 	lui	a1,0x3f40
     6a8:	0c000000 	jal	0 <EnGoma_Init>
     6ac:	3c063f00 	lui	a2,0x3f00
     6b0:	3c0140a0 	lui	at,0x40a0
     6b4:	44814000 	mtc1	at,$f8
     6b8:	3c014000 	lui	at,0x4000
     6bc:	44815000 	mtc1	at,$f10
     6c0:	e6080060 	swc1	$f8,96(s0)
     6c4:	10000004 	b	6d8 <func_80A493D8+0x1c0>
     6c8:	e60a0068 	swc1	$f10,104(s0)
     6cc:	44070000 	mfc1	a3,$f0
     6d0:	0c000000 	jal	0 <EnGoma_Init>
     6d4:	3c063f00 	lui	a2,0x3f00
     6d8:	96020088 	lhu	v0,136(s0)
     6dc:	1000001d 	b	754 <func_80A493D8+0x23c>
     6e0:	30420001 	andi	v0,v0,0x1
     6e4:	860b02cc 	lh	t3,716(s0)
     6e8:	240c0003 	li	t4,3
     6ec:	260402d0 	addiu	a0,s0,720
     6f0:	15600005 	bnez	t3,708 <func_80A493D8+0x1f0>
     6f4:	3c053f40 	lui	a1,0x3f40
     6f8:	240d0050 	li	t5,80
     6fc:	a60c02be 	sh	t4,702(s0)
     700:	10000004 	b	714 <func_80A493D8+0x1fc>
     704:	a60d02cc 	sh	t5,716(s0)
     708:	44070000 	mfc1	a3,$f0
     70c:	0c000000 	jal	0 <EnGoma_Init>
     710:	3c063f00 	lui	a2,0x3f00
     714:	96020088 	lhu	v0,136(s0)
     718:	1000000e 	b	754 <func_80A493D8+0x23c>
     71c:	30420001 	andi	v0,v0,0x1
     720:	3c063dcc 	lui	a2,0x3dcc
     724:	34c6cccd 	ori	a2,a2,0xcccd
     728:	44050000 	mfc1	a1,$f0
     72c:	0c000000 	jal	0 <EnGoma_Init>
     730:	00c03821 	move	a3,a2
     734:	860e02cc 	lh	t6,716(s0)
     738:	02002025 	move	a0,s0
     73c:	55c00004 	bnezl	t6,750 <func_80A493D8+0x238>
     740:	96020088 	lhu	v0,136(s0)
     744:	0c000000 	jal	0 <EnGoma_Init>
     748:	8fa50024 	lw	a1,36(sp)
     74c:	96020088 	lhu	v0,136(s0)
     750:	30420001 	andi	v0,v0,0x1
     754:	10400006 	beqz	v0,770 <func_80A493D8+0x258>
     758:	26040068 	addiu	a0,s0,104
     75c:	3c053e4c 	lui	a1,0x3e4c
     760:	3c063d4c 	lui	a2,0x3d4c
     764:	34c6cccd 	ori	a2,a2,0xcccd
     768:	0c000000 	jal	0 <EnGoma_Init>
     76c:	34a5cccd 	ori	a1,a1,0xcccd
     770:	3c010000 	lui	at,0x0
     774:	c4300000 	lwc1	$f16,0(at)
     778:	c6120068 	lwc1	$f18,104(s0)
     77c:	c60602d4 	lwc1	$f6,724(s0)
     780:	860f0032 	lh	t7,50(s0)
     784:	46109102 	mul.s	$f4,$f18,$f16
     788:	a60f00b6 	sh	t7,182(s0)
     78c:	46043200 	add.s	$f8,$f6,$f4
     790:	e60802d4 	swc1	$f8,724(s0)
     794:	8fbf001c 	lw	ra,28(sp)
     798:	8fb00018 	lw	s0,24(sp)
     79c:	27bd0020 	addiu	sp,sp,32
     7a0:	03e00008 	jr	ra
     7a4:	00000000 	nop

000007a8 <func_80A49668>:
     7a8:	27bdff68 	addiu	sp,sp,-152
     7ac:	afbf0064 	sw	ra,100(sp)
     7b0:	afbe0060 	sw	s8,96(sp)
     7b4:	afb7005c 	sw	s7,92(sp)
     7b8:	afb60058 	sw	s6,88(sp)
     7bc:	afb50054 	sw	s5,84(sp)
     7c0:	afb40050 	sw	s4,80(sp)
     7c4:	afb3004c 	sw	s3,76(sp)
     7c8:	afb20048 	sw	s2,72(sp)
     7cc:	afb10044 	sw	s1,68(sp)
     7d0:	afb00040 	sw	s0,64(sp)
     7d4:	f7b60038 	sdc1	$f22,56(sp)
     7d8:	f7b40030 	sdc1	$f20,48(sp)
     7dc:	3c013f80 	lui	at,0x3f80
     7e0:	44810000 	mtc1	at,$f0
     7e4:	c48402d8 	lwc1	$f4,728(a0)
     7e8:	00a0f025 	move	s8,a1
     7ec:	8cb01c44 	lw	s0,7236(a1)
     7f0:	46002180 	add.s	$f6,$f4,$f0
     7f4:	00808825 	move	s1,a0
     7f8:	3c053dcc 	lui	a1,0x3dcc
     7fc:	3c073ba3 	lui	a3,0x3ba3
     800:	44060000 	mfc1	a2,$f0
     804:	e48602d8 	swc1	$f6,728(a0)
     808:	34e7d70a 	ori	a3,a3,0xd70a
     80c:	34a5cccd 	ori	a1,a1,0xcccd
     810:	0c000000 	jal	0 <EnGoma_Init>
     814:	248402ec 	addiu	a0,a0,748
     818:	c6280024 	lwc1	$f8,36(s1)
     81c:	c60a0024 	lwc1	$f10,36(s0)
     820:	3c0142c8 	lui	at,0x42c8
     824:	44811000 	mtc1	at,$f2
     828:	460a4001 	sub.s	$f0,$f8,$f10
     82c:	46000005 	abs.s	$f0,$f0
     830:	4602003c 	c.lt.s	$f0,$f2
     834:	00000000 	nop
     838:	45020015 	bc1fl	890 <func_80A49668+0xe8>
     83c:	a62002c6 	sh	zero,710(s1)
     840:	c630002c 	lwc1	$f16,44(s1)
     844:	c612002c 	lwc1	$f18,44(s0)
     848:	46128001 	sub.s	$f0,$f16,$f18
     84c:	46000005 	abs.s	$f0,$f0
     850:	4602003c 	c.lt.s	$f0,$f2
     854:	00000000 	nop
     858:	4502000d 	bc1fl	890 <func_80A49668+0xe8>
     85c:	a62002c6 	sh	zero,710(s1)
     860:	862e02c6 	lh	t6,710(s1)
     864:	3c190000 	lui	t9,0x0
     868:	27390000 	addiu	t9,t9,0
     86c:	25cf0001 	addiu	t7,t6,1
     870:	a62f02c6 	sh	t7,710(s1)
     874:	863802c6 	lh	t8,710(s1)
     878:	2b01000a 	slti	at,t8,10
     87c:	54200005 	bnezl	at,894 <func_80A49668+0xec>
     880:	862802c0 	lh	t0,704(s1)
     884:	10000002 	b	890 <func_80A49668+0xe8>
     888:	ae3902b0 	sw	t9,688(s1)
     88c:	a62002c6 	sh	zero,710(s1)
     890:	862802c0 	lh	t0,704(s1)
     894:	3109000f 	andi	t1,t0,0xf
     898:	55200046 	bnezl	t1,9b4 <func_80A49668+0x20c>
     89c:	8fbf0064 	lw	ra,100(sp)
     8a0:	0c000000 	jal	0 <EnGoma_Init>
     8a4:	00000000 	nop
     8a8:	3c013f00 	lui	at,0x3f00
     8ac:	44812000 	mtc1	at,$f4
     8b0:	3c150000 	lui	s5,0x0
     8b4:	26b50000 	addiu	s5,s5,0
     8b8:	4604003c 	c.lt.s	$f0,$f4
     8bc:	3c0140a0 	lui	at,0x40a0
     8c0:	00008025 	move	s0,zero
     8c4:	24170002 	li	s7,2
     8c8:	45000039 	bc1f	9b0 <func_80A49668+0x208>
     8cc:	27b6006c 	addiu	s6,sp,108
     8d0:	4481b000 	mtc1	at,$f22
     8d4:	3c0141f0 	lui	at,0x41f0
     8d8:	3c140000 	lui	s4,0x0
     8dc:	4481a000 	mtc1	at,$f20
     8e0:	26940000 	addiu	s4,s4,0
     8e4:	27b30078 	addiu	s3,sp,120
     8e8:	27b20084 	addiu	s2,sp,132
     8ec:	8e8b0000 	lw	t3,0(s4)
     8f0:	8ead0000 	lw	t5,0(s5)
     8f4:	8e8a0004 	lw	t2,4(s4)
     8f8:	ae4b0000 	sw	t3,0(s2)
     8fc:	ae6d0000 	sw	t5,0(s3)
     900:	8e8b0008 	lw	t3,8(s4)
     904:	8ead0008 	lw	t5,8(s5)
     908:	8eac0004 	lw	t4,4(s5)
     90c:	4600a306 	mov.s	$f12,$f20
     910:	ae4a0004 	sw	t2,4(s2)
     914:	ae4b0008 	sw	t3,8(s2)
     918:	ae6d0008 	sw	t5,8(s3)
     91c:	0c000000 	jal	0 <EnGoma_Init>
     920:	ae6c0004 	sw	t4,4(s3)
     924:	c6260024 	lwc1	$f6,36(s1)
     928:	4600a306 	mov.s	$f12,$f20
     92c:	46060200 	add.s	$f8,$f0,$f6
     930:	0c000000 	jal	0 <EnGoma_Init>
     934:	e7a8006c 	swc1	$f8,108(sp)
     938:	c62a0028 	lwc1	$f10,40(s1)
     93c:	4600a306 	mov.s	$f12,$f20
     940:	460a0400 	add.s	$f16,$f0,$f10
     944:	0c000000 	jal	0 <EnGoma_Init>
     948:	e7b00070 	swc1	$f16,112(sp)
     94c:	c632002c 	lwc1	$f18,44(s1)
     950:	46120100 	add.s	$f4,$f0,$f18
     954:	0c000000 	jal	0 <EnGoma_Init>
     958:	e7a40074 	swc1	$f4,116(sp)
     95c:	46160182 	mul.s	$f6,$f0,$f22
     960:	2409ffff 	li	t1,-1
     964:	240a000a 	li	t2,10
     968:	afaa001c 	sw	t2,28(sp)
     96c:	afa90018 	sw	t1,24(sp)
     970:	03c02025 	move	a0,s8
     974:	02c02825 	move	a1,s6
     978:	4600320d 	trunc.w.s	$f8,$f6
     97c:	02403025 	move	a2,s2
     980:	02603825 	move	a3,s3
     984:	afa00010 	sw	zero,16(sp)
     988:	440f4000 	mfc1	t7,$f8
     98c:	afa00020 	sw	zero,32(sp)
     990:	000fc400 	sll	t8,t7,0x10
     994:	0018cc03 	sra	t9,t8,0x10
     998:	2728000a 	addiu	t0,t9,10
     99c:	0c000000 	jal	0 <EnGoma_Init>
     9a0:	afa80014 	sw	t0,20(sp)
     9a4:	26100001 	addiu	s0,s0,1
     9a8:	5617ffd1 	bnel	s0,s7,8f0 <func_80A49668+0x148>
     9ac:	8e8b0000 	lw	t3,0(s4)
     9b0:	8fbf0064 	lw	ra,100(sp)
     9b4:	d7b40030 	ldc1	$f20,48(sp)
     9b8:	d7b60038 	ldc1	$f22,56(sp)
     9bc:	8fb00040 	lw	s0,64(sp)
     9c0:	8fb10044 	lw	s1,68(sp)
     9c4:	8fb20048 	lw	s2,72(sp)
     9c8:	8fb3004c 	lw	s3,76(sp)
     9cc:	8fb40050 	lw	s4,80(sp)
     9d0:	8fb50054 	lw	s5,84(sp)
     9d4:	8fb60058 	lw	s6,88(sp)
     9d8:	8fb7005c 	lw	s7,92(sp)
     9dc:	8fbe0060 	lw	s8,96(sp)
     9e0:	03e00008 	jr	ra
     9e4:	27bd0098 	addiu	sp,sp,152

000009e8 <func_80A498A8>:
     9e8:	27bdffd0 	addiu	sp,sp,-48
     9ec:	afb00028 	sw	s0,40(sp)
     9f0:	00808025 	move	s0,a0
     9f4:	afbf002c 	sw	ra,44(sp)
     9f8:	3c040600 	lui	a0,0x600
     9fc:	afa50034 	sw	a1,52(sp)
     a00:	0c000000 	jal	0 <EnGoma_Init>
     a04:	24840544 	addiu	a0,a0,1348
     a08:	44822000 	mtc1	v0,$f4
     a0c:	44800000 	mtc1	zero,$f0
     a10:	3c050600 	lui	a1,0x600
     a14:	468021a0 	cvt.s.w	$f6,$f4
     a18:	240e0002 	li	t6,2
     a1c:	44070000 	mfc1	a3,$f0
     a20:	afae0014 	sw	t6,20(sp)
     a24:	24a50544 	addiu	a1,a1,1348
     a28:	2604014c 	addiu	a0,s0,332
     a2c:	e7a60010 	swc1	$f6,16(sp)
     a30:	3c063f80 	lui	a2,0x3f80
     a34:	0c000000 	jal	0 <EnGoma_Init>
     a38:	e7a00018 	swc1	$f0,24(sp)
     a3c:	3c0f0000 	lui	t7,0x0
     a40:	25ef0000 	addiu	t7,t7,0
     a44:	3c053ba3 	lui	a1,0x3ba3
     a48:	ae0f02b0 	sw	t7,688(s0)
     a4c:	34a5d70a 	ori	a1,a1,0xd70a
     a50:	0c000000 	jal	0 <EnGoma_Init>
     a54:	02002025 	move	a0,s0
     a58:	24180005 	li	t8,5
     a5c:	a60002b8 	sh	zero,696(s0)
     a60:	a61802cc 	sh	t8,716(s0)
     a64:	8fb90034 	lw	t9,52(sp)
     a68:	02002025 	move	a0,s0
     a6c:	0c000000 	jal	0 <EnGoma_Init>
     a70:	8f251c44 	lw	a1,7236(t9)
     a74:	a60200b6 	sh	v0,182(s0)
     a78:	860800b6 	lh	t0,182(s0)
     a7c:	02002025 	move	a0,s0
     a80:	a6080032 	sh	t0,50(s0)
     a84:	0c000000 	jal	0 <EnGoma_Init>
     a88:	8fa50034 	lw	a1,52(sp)
     a8c:	3c013f80 	lui	at,0x3f80
     a90:	44814000 	mtc1	at,$f8
     a94:	44805000 	mtc1	zero,$f10
     a98:	e60802d0 	swc1	$f8,720(s0)
     a9c:	e60a0068 	swc1	$f10,104(s0)
     aa0:	8fbf002c 	lw	ra,44(sp)
     aa4:	8fb00028 	lw	s0,40(sp)
     aa8:	27bd0030 	addiu	sp,sp,48
     aac:	03e00008 	jr	ra
     ab0:	00000000 	nop

00000ab4 <func_80A49974>:
     ab4:	27bdffe8 	addiu	sp,sp,-24
     ab8:	afa5001c 	sw	a1,28(sp)
     abc:	00802825 	move	a1,a0
     ac0:	afbf0014 	sw	ra,20(sp)
     ac4:	afa40018 	sw	a0,24(sp)
     ac8:	afa50018 	sw	a1,24(sp)
     acc:	0c000000 	jal	0 <EnGoma_Init>
     ad0:	2484014c 	addiu	a0,a0,332
     ad4:	8fa50018 	lw	a1,24(sp)
     ad8:	84ae02cc 	lh	t6,716(a1)
     adc:	55c00004 	bnezl	t6,af0 <func_80A49974+0x3c>
     ae0:	8fbf0014 	lw	ra,20(sp)
     ae4:	0c000000 	jal	0 <EnGoma_Init>
     ae8:	00a02025 	move	a0,a1
     aec:	8fbf0014 	lw	ra,20(sp)
     af0:	27bd0018 	addiu	sp,sp,24
     af4:	03e00008 	jr	ra
     af8:	00000000 	nop

00000afc <func_80A499BC>:
     afc:	27bdffd0 	addiu	sp,sp,-48
     b00:	afb00028 	sw	s0,40(sp)
     b04:	00808025 	move	s0,a0
     b08:	afbf002c 	sw	ra,44(sp)
     b0c:	3c040600 	lui	a0,0x600
     b10:	afa50034 	sw	a1,52(sp)
     b14:	0c000000 	jal	0 <EnGoma_Init>
     b18:	24840838 	addiu	a0,a0,2104
     b1c:	44822000 	mtc1	v0,$f4
     b20:	3c01c000 	lui	at,0xc000
     b24:	44814000 	mtc1	at,$f8
     b28:	468021a0 	cvt.s.w	$f6,$f4
     b2c:	3c050600 	lui	a1,0x600
     b30:	240e0002 	li	t6,2
     b34:	afae0014 	sw	t6,20(sp)
     b38:	24a50838 	addiu	a1,a1,2104
     b3c:	2604014c 	addiu	a0,s0,332
     b40:	e7a60010 	swc1	$f6,16(sp)
     b44:	3c063f80 	lui	a2,0x3f80
     b48:	24070000 	li	a3,0
     b4c:	0c000000 	jal	0 <EnGoma_Init>
     b50:	e7a80018 	swc1	$f8,24(sp)
     b54:	821800af 	lb	t8,175(s0)
     b58:	3c0f0000 	lui	t7,0x0
     b5c:	25ef0000 	addiu	t7,t7,0
     b60:	1f000008 	bgtz	t8,b84 <func_80A499BC+0x88>
     b64:	ae0f02b0 	sw	t7,688(s0)
     b68:	24190005 	li	t9,5
     b6c:	a61902cc 	sh	t9,716(s0)
     b70:	8fa40034 	lw	a0,52(sp)
     b74:	0c000000 	jal	0 <EnGoma_Init>
     b78:	02002825 	move	a1,s0
     b7c:	10000004 	b	b90 <func_80A499BC+0x94>
     b80:	8609008a 	lh	t1,138(s0)
     b84:	2408000a 	li	t0,10
     b88:	a60802cc 	sh	t0,716(s0)
     b8c:	8609008a 	lh	t1,138(s0)
     b90:	3c0141a0 	lui	at,0x41a0
     b94:	44815000 	mtc1	at,$f10
     b98:	860b001c 	lh	t3,28(s0)
     b9c:	34018000 	li	at,0x8000
     ba0:	01215021 	addu	t2,t1,at
     ba4:	29610006 	slti	at,t3,6
     ba8:	a60a0032 	sh	t2,50(s0)
     bac:	10200006 	beqz	at,bc8 <func_80A499BC+0xcc>
     bb0:	e60a0068 	swc1	$f10,104(s0)
     bb4:	02002025 	move	a0,s0
     bb8:	0c000000 	jal	0 <EnGoma_Init>
     bbc:	24053818 	li	a1,14360
     bc0:	10000005 	b	bd8 <func_80A499BC+0xdc>
     bc4:	8fbf002c 	lw	ra,44(sp)
     bc8:	02002025 	move	a0,s0
     bcc:	0c000000 	jal	0 <EnGoma_Init>
     bd0:	2405395e 	li	a1,14686
     bd4:	8fbf002c 	lw	ra,44(sp)
     bd8:	8fb00028 	lw	s0,40(sp)
     bdc:	27bd0030 	addiu	sp,sp,48
     be0:	03e00008 	jr	ra
     be4:	00000000 	nop

00000be8 <func_80A49AA8>:
     be8:	27bdffe8 	addiu	sp,sp,-24
     bec:	afbf0014 	sw	ra,20(sp)
     bf0:	00803825 	move	a3,a0
     bf4:	afa5001c 	sw	a1,28(sp)
     bf8:	afa70018 	sw	a3,24(sp)
     bfc:	0c000000 	jal	0 <EnGoma_Init>
     c00:	2484014c 	addiu	a0,a0,332
     c04:	8fa70018 	lw	a3,24(sp)
     c08:	3c053f80 	lui	a1,0x3f80
     c0c:	3c064000 	lui	a2,0x4000
     c10:	94ee0088 	lhu	t6,136(a3)
     c14:	24e40068 	addiu	a0,a3,104
     c18:	31cf0001 	andi	t7,t6,0x1
     c1c:	51e00005 	beqzl	t7,c34 <func_80A49AA8+0x4c>
     c20:	84f802cc 	lh	t8,716(a3)
     c24:	0c000000 	jal	0 <EnGoma_Init>
     c28:	afa70018 	sw	a3,24(sp)
     c2c:	8fa70018 	lw	a3,24(sp)
     c30:	84f802cc 	lh	t8,716(a3)
     c34:	5700000b 	bnezl	t8,c64 <func_80A49AA8+0x7c>
     c38:	8fbf0014 	lw	ra,20(sp)
     c3c:	80f900af 	lb	t9,175(a3)
     c40:	1f200005 	bgtz	t9,c58 <func_80A49AA8+0x70>
     c44:	00000000 	nop
     c48:	0c000000 	jal	0 <EnGoma_Init>
     c4c:	00e02025 	move	a0,a3
     c50:	10000004 	b	c64 <func_80A49AA8+0x7c>
     c54:	8fbf0014 	lw	ra,20(sp)
     c58:	0c000000 	jal	0 <EnGoma_Init>
     c5c:	00e02025 	move	a0,a3
     c60:	8fbf0014 	lw	ra,20(sp)
     c64:	27bd0018 	addiu	sp,sp,24
     c68:	03e00008 	jr	ra
     c6c:	00000000 	nop

00000c70 <func_80A49B30>:
     c70:	27bdffd0 	addiu	sp,sp,-48
     c74:	afb00028 	sw	s0,40(sp)
     c78:	00808025 	move	s0,a0
     c7c:	afbf002c 	sw	ra,44(sp)
     c80:	3c040600 	lui	a0,0x600
     c84:	0c000000 	jal	0 <EnGoma_Init>
     c88:	24840b78 	addiu	a0,a0,2936
     c8c:	44822000 	mtc1	v0,$f4
     c90:	3c01c000 	lui	at,0xc000
     c94:	44814000 	mtc1	at,$f8
     c98:	468021a0 	cvt.s.w	$f6,$f4
     c9c:	3c050600 	lui	a1,0x600
     ca0:	240e0002 	li	t6,2
     ca4:	afae0014 	sw	t6,20(sp)
     ca8:	24a50b78 	addiu	a1,a1,2936
     cac:	2604014c 	addiu	a0,s0,332
     cb0:	e7a60010 	swc1	$f6,16(sp)
     cb4:	3c063f80 	lui	a2,0x3f80
     cb8:	24070000 	li	a3,0
     cbc:	0c000000 	jal	0 <EnGoma_Init>
     cc0:	e7a80018 	swc1	$f8,24(sp)
     cc4:	8619001c 	lh	t9,28(s0)
     cc8:	3c0f0000 	lui	t7,0x0
     ccc:	25ef0000 	addiu	t7,t7,0
     cd0:	2418001e 	li	t8,30
     cd4:	2b210006 	slti	at,t9,6
     cd8:	ae0f02b0 	sw	t7,688(s0)
     cdc:	10200006 	beqz	at,cf8 <func_80A49B30+0x88>
     ce0:	a61802cc 	sh	t8,716(s0)
     ce4:	02002025 	move	a0,s0
     ce8:	0c000000 	jal	0 <EnGoma_Init>
     cec:	2405381a 	li	a1,14362
     cf0:	10000005 	b	d08 <func_80A49B30+0x98>
     cf4:	8e090004 	lw	t1,4(s0)
     cf8:	02002025 	move	a0,s0
     cfc:	0c000000 	jal	0 <EnGoma_Init>
     d00:	24053960 	li	a1,14688
     d04:	8e090004 	lw	t1,4(s0)
     d08:	2401fffe 	li	at,-2
     d0c:	24080064 	li	t0,100
     d10:	01215024 	and	t2,t1,at
     d14:	a60802ca 	sh	t0,714(s0)
     d18:	ae0a0004 	sw	t2,4(s0)
     d1c:	8fbf002c 	lw	ra,44(sp)
     d20:	8fb00028 	lw	s0,40(sp)
     d24:	27bd0030 	addiu	sp,sp,48
     d28:	03e00008 	jr	ra
     d2c:	00000000 	nop

00000d30 <func_80A49BF0>:
     d30:	27bdffe0 	addiu	sp,sp,-32
     d34:	afb00018 	sw	s0,24(sp)
     d38:	00808025 	move	s0,a0
     d3c:	afbf001c 	sw	ra,28(sp)
     d40:	afa50024 	sw	a1,36(sp)
     d44:	0c000000 	jal	0 <EnGoma_Init>
     d48:	2484014c 	addiu	a0,a0,332
     d4c:	960e0088 	lhu	t6,136(s0)
     d50:	26040068 	addiu	a0,s0,104
     d54:	3c053f80 	lui	a1,0x3f80
     d58:	31cf0001 	andi	t7,t6,0x1
     d5c:	51e00004 	beqzl	t7,d70 <func_80A49BF0+0x40>
     d60:	860202cc 	lh	v0,716(s0)
     d64:	0c000000 	jal	0 <EnGoma_Init>
     d68:	3c064000 	lui	a2,0x4000
     d6c:	860202cc 	lh	v0,716(s0)
     d70:	24010011 	li	at,17
     d74:	1441000e 	bne	v0,at,db0 <func_80A49BF0+0x80>
     d78:	00000000 	nop
     d7c:	8618001c 	lh	t8,28(s0)
     d80:	240539e3 	li	a1,14819
     d84:	02002025 	move	a0,s0
     d88:	2b010006 	slti	at,t8,6
     d8c:	10200005 	beqz	at,da4 <func_80A49BF0+0x74>
     d90:	00000000 	nop
     d94:	0c000000 	jal	0 <EnGoma_Init>
     d98:	02002025 	move	a0,s0
     d9c:	10000004 	b	db0 <func_80A49BF0+0x80>
     da0:	860202cc 	lh	v0,716(s0)
     da4:	0c000000 	jal	0 <EnGoma_Init>
     da8:	240539e5 	li	a1,14821
     dac:	860202cc 	lh	v0,716(s0)
     db0:	54400004 	bnezl	v0,dc4 <func_80A49BF0+0x94>
     db4:	8fbf001c 	lw	ra,28(sp)
     db8:	0c000000 	jal	0 <EnGoma_Init>
     dbc:	02002025 	move	a0,s0
     dc0:	8fbf001c 	lw	ra,28(sp)
     dc4:	8fb00018 	lw	s0,24(sp)
     dc8:	27bd0020 	addiu	sp,sp,32
     dcc:	03e00008 	jr	ra
     dd0:	00000000 	nop

00000dd4 <func_80A49C94>:
     dd4:	27bdffd8 	addiu	sp,sp,-40
     dd8:	afa40028 	sw	a0,40(sp)
     ddc:	afbf0024 	sw	ra,36(sp)
     de0:	3c040600 	lui	a0,0x600
     de4:	0c000000 	jal	0 <EnGoma_Init>
     de8:	24840334 	addiu	a0,a0,820
     dec:	44822000 	mtc1	v0,$f4
     df0:	3c01c000 	lui	at,0xc000
     df4:	44814000 	mtc1	at,$f8
     df8:	468021a0 	cvt.s.w	$f6,$f4
     dfc:	8fa40028 	lw	a0,40(sp)
     e00:	3c050600 	lui	a1,0x600
     e04:	24a50334 	addiu	a1,a1,820
     e08:	3c063f80 	lui	a2,0x3f80
     e0c:	24070000 	li	a3,0
     e10:	e7a60010 	swc1	$f6,16(sp)
     e14:	afa00014 	sw	zero,20(sp)
     e18:	e7a80018 	swc1	$f8,24(sp)
     e1c:	0c000000 	jal	0 <EnGoma_Init>
     e20:	2484014c 	addiu	a0,a0,332
     e24:	8fa20028 	lw	v0,40(sp)
     e28:	3c0e0000 	lui	t6,0x0
     e2c:	25ce0000 	addiu	t6,t6,0
     e30:	240f0003 	li	t7,3
     e34:	ac4e02b0 	sw	t6,688(v0)
     e38:	a44f02cc 	sh	t7,716(v0)
     e3c:	8fbf0024 	lw	ra,36(sp)
     e40:	27bd0028 	addiu	sp,sp,40
     e44:	03e00008 	jr	ra
     e48:	00000000 	nop

00000e4c <func_80A49D0C>:
     e4c:	27bdffb8 	addiu	sp,sp,-72
     e50:	afb00020 	sw	s0,32(sp)
     e54:	00808025 	move	s0,a0
     e58:	afbf0024 	sw	ra,36(sp)
     e5c:	afa5004c 	sw	a1,76(sp)
     e60:	0c000000 	jal	0 <EnGoma_Init>
     e64:	2484014c 	addiu	a0,a0,332
     e68:	26040068 	addiu	a0,s0,104
     e6c:	3c053f80 	lui	a1,0x3f80
     e70:	0c000000 	jal	0 <EnGoma_Init>
     e74:	3c064000 	lui	a2,0x4000
     e78:	860202cc 	lh	v0,716(s0)
     e7c:	24010002 	li	at,2
     e80:	14410020 	bne	v0,at,f04 <func_80A49D0C+0xb8>
     e84:	00000000 	nop
     e88:	c6040024 	lwc1	$f4,36(s0)
     e8c:	3c0140a0 	lui	at,0x40a0
     e90:	44814000 	mtc1	at,$f8
     e94:	e7a40030 	swc1	$f4,48(sp)
     e98:	c6060028 	lwc1	$f6,40(s0)
     e9c:	3c014120 	lui	at,0x4120
     ea0:	44818000 	mtc1	at,$f16
     ea4:	46083280 	add.s	$f10,$f6,$f8
     ea8:	3c060000 	lui	a2,0x0
     eac:	24c60000 	addiu	a2,a2,0
     eb0:	8ccf0000 	lw	t7,0(a2)
     eb4:	46105481 	sub.s	$f18,$f10,$f16
     eb8:	27a7003c 	addiu	a3,sp,60
     ebc:	8cce0004 	lw	t6,4(a2)
     ec0:	3c010000 	lui	at,0x0
     ec4:	e7b20034 	swc1	$f18,52(sp)
     ec8:	c604002c 	lwc1	$f4,44(s0)
     ecc:	24180028 	li	t8,40
     ed0:	27a50030 	addiu	a1,sp,48
     ed4:	e7a40038 	swc1	$f4,56(sp)
     ed8:	acef0000 	sw	t7,0(a3)
     edc:	8ccf0008 	lw	t7,8(a2)
     ee0:	acee0004 	sw	t6,4(a3)
     ee4:	acef0008 	sw	t7,8(a3)
     ee8:	c4260000 	lwc1	$f6,0(at)
     eec:	afa00014 	sw	zero,20(sp)
     ef0:	afb80010 	sw	t8,16(sp)
     ef4:	8fa4004c 	lw	a0,76(sp)
     ef8:	0c000000 	jal	0 <EnGoma_Init>
     efc:	e7a60040 	swc1	$f6,64(sp)
     f00:	860202cc 	lh	v0,716(s0)
     f04:	14400027 	bnez	v0,fa4 <func_80A49D0C+0x158>
     f08:	26040054 	addiu	a0,s0,84
     f0c:	3c010000 	lui	at,0x0
     f10:	c4280000 	lwc1	$f8,0(at)
     f14:	3c073b13 	lui	a3,0x3b13
     f18:	34e774bc 	ori	a3,a3,0x74bc
     f1c:	24050000 	li	a1,0
     f20:	3c063f00 	lui	a2,0x3f00
     f24:	0c000000 	jal	0 <EnGoma_Init>
     f28:	e7a80010 	swc1	$f8,16(sp)
     f2c:	3c010000 	lui	at,0x0
     f30:	c42a0000 	lwc1	$f10,0(at)
     f34:	3c070000 	lui	a3,0x0
     f38:	24e70000 	addiu	a3,a3,0
     f3c:	460a003e 	c.le.s	$f0,$f10
     f40:	24043878 	li	a0,14456
     f44:	260500e4 	addiu	a1,s0,228
     f48:	24060004 	li	a2,4
     f4c:	45000015 	bc1f	fa4 <func_80A49D0C+0x158>
     f50:	3c0a0000 	lui	t2,0x0
     f54:	8603001c 	lh	v1,28(s0)
     f58:	254a0000 	addiu	t2,t2,0
     f5c:	28610006 	slti	at,v1,6
     f60:	50200007 	beqzl	at,f80 <func_80A49D0C+0x134>
     f64:	afa70010 	sw	a3,16(sp)
     f68:	8e020118 	lw	v0,280(s0)
     f6c:	00034040 	sll	t0,v1,0x1
     f70:	2419ffff 	li	t9,-1
     f74:	00484821 	addu	t1,v0,t0
     f78:	a53901a4 	sh	t9,420(t1)
     f7c:	afa70010 	sw	a3,16(sp)
     f80:	0c000000 	jal	0 <EnGoma_Init>
     f84:	afaa0014 	sw	t2,20(sp)
     f88:	0c000000 	jal	0 <EnGoma_Init>
     f8c:	02002025 	move	a0,s0
     f90:	8fa4004c 	lw	a0,76(sp)
     f94:	00002825 	move	a1,zero
     f98:	26060024 	addiu	a2,s0,36
     f9c:	0c000000 	jal	0 <EnGoma_Init>
     fa0:	24070030 	li	a3,48
     fa4:	240b0002 	li	t3,2
     fa8:	a60b02c4 	sh	t3,708(s0)
     fac:	8fbf0024 	lw	ra,36(sp)
     fb0:	8fb00020 	lw	s0,32(sp)
     fb4:	27bd0048 	addiu	sp,sp,72
     fb8:	03e00008 	jr	ra
     fbc:	00000000 	nop

00000fc0 <func_80A49E80>:
     fc0:	27bdffd0 	addiu	sp,sp,-48
     fc4:	afa40030 	sw	a0,48(sp)
     fc8:	afbf0024 	sw	ra,36(sp)
     fcc:	3c040600 	lui	a0,0x600
     fd0:	0c000000 	jal	0 <EnGoma_Init>
     fd4:	24841548 	addiu	a0,a0,5448
     fd8:	44822000 	mtc1	v0,$f4
     fdc:	2404000a 	li	a0,10
     fe0:	2405001e 	li	a1,30
     fe4:	468021a0 	cvt.s.w	$f6,$f4
     fe8:	0c000000 	jal	0 <EnGoma_Init>
     fec:	e7a6002c 	swc1	$f6,44(sp)
     ff0:	8fa30030 	lw	v1,48(sp)
     ff4:	3c01c0a0 	lui	at,0xc0a0
     ff8:	44815000 	mtc1	at,$f10
     ffc:	a46202cc 	sh	v0,716(v1)
    1000:	c7a8002c 	lwc1	$f8,44(sp)
    1004:	3c050600 	lui	a1,0x600
    1008:	24a51548 	addiu	a1,a1,5448
    100c:	afa00014 	sw	zero,20(sp)
    1010:	3c063f80 	lui	a2,0x3f80
    1014:	24070000 	li	a3,0
    1018:	2464014c 	addiu	a0,v1,332
    101c:	e7aa0018 	swc1	$f10,24(sp)
    1020:	0c000000 	jal	0 <EnGoma_Init>
    1024:	e7a80010 	swc1	$f8,16(sp)
    1028:	8faf0030 	lw	t7,48(sp)
    102c:	3c0e0000 	lui	t6,0x0
    1030:	25ce0000 	addiu	t6,t6,0
    1034:	adee02b0 	sw	t6,688(t7)
    1038:	8fb80030 	lw	t8,48(sp)
    103c:	a70002b8 	sh	zero,696(t8)
    1040:	8fbf0024 	lw	ra,36(sp)
    1044:	27bd0030 	addiu	sp,sp,48
    1048:	03e00008 	jr	ra
    104c:	00000000 	nop

00001050 <func_80A49F10>:
    1050:	27bdffd8 	addiu	sp,sp,-40
    1054:	afa40028 	sw	a0,40(sp)
    1058:	afbf0024 	sw	ra,36(sp)
    105c:	3c040600 	lui	a0,0x600
    1060:	0c000000 	jal	0 <EnGoma_Init>
    1064:	24843d78 	addiu	a0,a0,15736
    1068:	44822000 	mtc1	v0,$f4
    106c:	3c01c0a0 	lui	at,0xc0a0
    1070:	44814000 	mtc1	at,$f8
    1074:	468021a0 	cvt.s.w	$f6,$f4
    1078:	8fa40028 	lw	a0,40(sp)
    107c:	3c050600 	lui	a1,0x600
    1080:	24a53d78 	addiu	a1,a1,15736
    1084:	3c063f80 	lui	a2,0x3f80
    1088:	24070000 	li	a3,0
    108c:	e7a60010 	swc1	$f6,16(sp)
    1090:	afa00014 	sw	zero,20(sp)
    1094:	e7a80018 	swc1	$f8,24(sp)
    1098:	0c000000 	jal	0 <EnGoma_Init>
    109c:	2484014c 	addiu	a0,a0,332
    10a0:	8faf0028 	lw	t7,40(sp)
    10a4:	3c0e0000 	lui	t6,0x0
    10a8:	25ce0000 	addiu	t6,t6,0
    10ac:	24040046 	li	a0,70
    10b0:	2405006e 	li	a1,110
    10b4:	0c000000 	jal	0 <EnGoma_Init>
    10b8:	adee02b0 	sw	t6,688(t7)
    10bc:	8fb80028 	lw	t8,40(sp)
    10c0:	a70202cc 	sh	v0,716(t8)
    10c4:	8fbf0024 	lw	ra,36(sp)
    10c8:	27bd0028 	addiu	sp,sp,40
    10cc:	03e00008 	jr	ra
    10d0:	00000000 	nop

000010d4 <func_80A49F94>:
    10d4:	27bdffd8 	addiu	sp,sp,-40
    10d8:	afa40028 	sw	a0,40(sp)
    10dc:	afbf0024 	sw	ra,36(sp)
    10e0:	3c040600 	lui	a0,0x600
    10e4:	0c000000 	jal	0 <EnGoma_Init>
    10e8:	24840e4c 	addiu	a0,a0,3660
    10ec:	44822000 	mtc1	v0,$f4
    10f0:	3c01c0a0 	lui	at,0xc0a0
    10f4:	44814000 	mtc1	at,$f8
    10f8:	468021a0 	cvt.s.w	$f6,$f4
    10fc:	8fa40028 	lw	a0,40(sp)
    1100:	3c050600 	lui	a1,0x600
    1104:	240e0002 	li	t6,2
    1108:	afae0014 	sw	t6,20(sp)
    110c:	24a50e4c 	addiu	a1,a1,3660
    1110:	e7a60010 	swc1	$f6,16(sp)
    1114:	3c063f80 	lui	a2,0x3f80
    1118:	24070000 	li	a3,0
    111c:	e7a80018 	swc1	$f8,24(sp)
    1120:	0c000000 	jal	0 <EnGoma_Init>
    1124:	2484014c 	addiu	a0,a0,332
    1128:	8fa20028 	lw	v0,40(sp)
    112c:	3c0f0000 	lui	t7,0x0
    1130:	25ef0000 	addiu	t7,t7,0
    1134:	2418001e 	li	t8,30
    1138:	ac4f02b0 	sw	t7,688(v0)
    113c:	a45802cc 	sh	t8,716(v0)
    1140:	8fbf0024 	lw	ra,36(sp)
    1144:	27bd0028 	addiu	sp,sp,40
    1148:	03e00008 	jr	ra
    114c:	00000000 	nop

00001150 <func_80A4A010>:
    1150:	27bdffd8 	addiu	sp,sp,-40
    1154:	afb00018 	sw	s0,24(sp)
    1158:	00808025 	move	s0,a0
    115c:	afbf001c 	sw	ra,28(sp)
    1160:	afa5002c 	sw	a1,44(sp)
    1164:	0c000000 	jal	0 <EnGoma_Init>
    1168:	2484014c 	addiu	a0,a0,332
    116c:	26040068 	addiu	a0,s0,104
    1170:	3c053f00 	lui	a1,0x3f00
    1174:	0c000000 	jal	0 <EnGoma_Init>
    1178:	3c064000 	lui	a2,0x4000
    117c:	8fae002c 	lw	t6,44(sp)
    1180:	02002025 	move	a0,s0
    1184:	0c000000 	jal	0 <EnGoma_Init>
    1188:	8dc51c44 	lw	a1,7236(t6)
    118c:	00022c00 	sll	a1,v0,0x10
    1190:	a7a20026 	sh	v0,38(sp)
    1194:	00052c03 	sra	a1,a1,0x10
    1198:	26040032 	addiu	a0,s0,50
    119c:	24060002 	li	a2,2
    11a0:	0c000000 	jal	0 <EnGoma_Init>
    11a4:	24070fa0 	li	a3,4000
    11a8:	260400b6 	addiu	a0,s0,182
    11ac:	87a50026 	lh	a1,38(sp)
    11b0:	24060002 	li	a2,2
    11b4:	0c000000 	jal	0 <EnGoma_Init>
    11b8:	24070bb8 	li	a3,3000
    11bc:	860f02cc 	lh	t7,716(s0)
    11c0:	55e00004 	bnezl	t7,11d4 <func_80A4A010+0x84>
    11c4:	a60002c4 	sh	zero,708(s0)
    11c8:	0c000000 	jal	0 <EnGoma_Init>
    11cc:	02002025 	move	a0,s0
    11d0:	a60002c4 	sh	zero,708(s0)
    11d4:	8fbf001c 	lw	ra,28(sp)
    11d8:	8fb00018 	lw	s0,24(sp)
    11dc:	27bd0028 	addiu	sp,sp,40
    11e0:	03e00008 	jr	ra
    11e4:	00000000 	nop

000011e8 <func_80A4A0A8>:
    11e8:	27bdffd8 	addiu	sp,sp,-40
    11ec:	afa40028 	sw	a0,40(sp)
    11f0:	afbf0024 	sw	ra,36(sp)
    11f4:	3c040600 	lui	a0,0x600
    11f8:	0c000000 	jal	0 <EnGoma_Init>
    11fc:	2484017c 	addiu	a0,a0,380
    1200:	44822000 	mtc1	v0,$f4
    1204:	44800000 	mtc1	zero,$f0
    1208:	8fa40028 	lw	a0,40(sp)
    120c:	468021a0 	cvt.s.w	$f6,$f4
    1210:	3c050600 	lui	a1,0x600
    1214:	240e0002 	li	t6,2
    1218:	44070000 	mfc1	a3,$f0
    121c:	afae0014 	sw	t6,20(sp)
    1220:	24a5017c 	addiu	a1,a1,380
    1224:	e7a60010 	swc1	$f6,16(sp)
    1228:	3c063f80 	lui	a2,0x3f80
    122c:	2484014c 	addiu	a0,a0,332
    1230:	0c000000 	jal	0 <EnGoma_Init>
    1234:	e7a00018 	swc1	$f0,24(sp)
    1238:	8fa20028 	lw	v0,40(sp)
    123c:	3c0f0000 	lui	t7,0x0
    1240:	25ef0000 	addiu	t7,t7,0
    1244:	2418000a 	li	t8,10
    1248:	ac4f02b0 	sw	t7,688(v0)
    124c:	a45802cc 	sh	t8,716(v0)
    1250:	8fbf0024 	lw	ra,36(sp)
    1254:	27bd0028 	addiu	sp,sp,40
    1258:	03e00008 	jr	ra
    125c:	00000000 	nop

00001260 <func_80A4A120>:
    1260:	27bdffe8 	addiu	sp,sp,-24
    1264:	afbf0014 	sw	ra,20(sp)
    1268:	00803825 	move	a3,a0
    126c:	afa5001c 	sw	a1,28(sp)
    1270:	afa70018 	sw	a3,24(sp)
    1274:	0c000000 	jal	0 <EnGoma_Init>
    1278:	2484014c 	addiu	a0,a0,332
    127c:	8fa70018 	lw	a3,24(sp)
    1280:	3c053f80 	lui	a1,0x3f80
    1284:	3c064000 	lui	a2,0x4000
    1288:	94ee0088 	lhu	t6,136(a3)
    128c:	24e40068 	addiu	a0,a3,104
    1290:	31cf0001 	andi	t7,t6,0x1
    1294:	51e00005 	beqzl	t7,12ac <func_80A4A120+0x4c>
    1298:	84f802cc 	lh	t8,716(a3)
    129c:	0c000000 	jal	0 <EnGoma_Init>
    12a0:	afa70018 	sw	a3,24(sp)
    12a4:	8fa70018 	lw	a3,24(sp)
    12a8:	84f802cc 	lh	t8,716(a3)
    12ac:	57000004 	bnezl	t8,12c0 <func_80A4A120+0x60>
    12b0:	8fbf0014 	lw	ra,20(sp)
    12b4:	0c000000 	jal	0 <EnGoma_Init>
    12b8:	00e02025 	move	a0,a3
    12bc:	8fbf0014 	lw	ra,20(sp)
    12c0:	27bd0018 	addiu	sp,sp,24
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_80A4A18C>:
    12cc:	27bdffd0 	addiu	sp,sp,-48
    12d0:	afb00028 	sw	s0,40(sp)
    12d4:	00808025 	move	s0,a0
    12d8:	afbf002c 	sw	ra,44(sp)
    12dc:	3c040600 	lui	a0,0x600
    12e0:	0c000000 	jal	0 <EnGoma_Init>
    12e4:	24840544 	addiu	a0,a0,1348
    12e8:	44822000 	mtc1	v0,$f4
    12ec:	44800000 	mtc1	zero,$f0
    12f0:	3c050600 	lui	a1,0x600
    12f4:	468021a0 	cvt.s.w	$f6,$f4
    12f8:	240e0002 	li	t6,2
    12fc:	44070000 	mfc1	a3,$f0
    1300:	afae0014 	sw	t6,20(sp)
    1304:	24a50544 	addiu	a1,a1,1348
    1308:	2604014c 	addiu	a0,s0,332
    130c:	e7a60010 	swc1	$f6,16(sp)
    1310:	3c063f80 	lui	a2,0x3f80
    1314:	0c000000 	jal	0 <EnGoma_Init>
    1318:	e7a00018 	swc1	$f0,24(sp)
    131c:	8618001c 	lh	t8,28(s0)
    1320:	3c014100 	lui	at,0x4100
    1324:	44814000 	mtc1	at,$f8
    1328:	3c0f0000 	lui	t7,0x0
    132c:	25ef0000 	addiu	t7,t7,0
    1330:	2b010006 	slti	at,t8,6
    1334:	ae0f02b0 	sw	t7,688(s0)
    1338:	10200006 	beqz	at,1354 <func_80A4A18C+0x88>
    133c:	e6080060 	swc1	$f8,96(s0)
    1340:	02002025 	move	a0,s0
    1344:	0c000000 	jal	0 <EnGoma_Init>
    1348:	24053817 	li	a1,14359
    134c:	10000005 	b	1364 <func_80A4A18C+0x98>
    1350:	8fbf002c 	lw	ra,44(sp)
    1354:	02002025 	move	a0,s0
    1358:	0c000000 	jal	0 <EnGoma_Init>
    135c:	2405395d 	li	a1,14685
    1360:	8fbf002c 	lw	ra,44(sp)
    1364:	8fb00028 	lw	s0,40(sp)
    1368:	27bd0030 	addiu	sp,sp,48
    136c:	03e00008 	jr	ra
    1370:	00000000 	nop

00001374 <func_80A4A234>:
    1374:	27bdffe0 	addiu	sp,sp,-32
    1378:	afbf001c 	sw	ra,28(sp)
    137c:	afb00018 	sw	s0,24(sp)
    1380:	afa50024 	sw	a1,36(sp)
    1384:	8c8e0004 	lw	t6,4(a0)
    1388:	3c010100 	lui	at,0x100
    138c:	00808025 	move	s0,a0
    1390:	01c17825 	or	t7,t6,at
    1394:	ac8f0004 	sw	t7,4(a0)
    1398:	0c000000 	jal	0 <EnGoma_Init>
    139c:	2484014c 	addiu	a0,a0,332
    13a0:	26040068 	addiu	a0,s0,104
    13a4:	3c054120 	lui	a1,0x4120
    13a8:	3c063f00 	lui	a2,0x3f00
    13ac:	0c000000 	jal	0 <EnGoma_Init>
    13b0:	3c0740a0 	lui	a3,0x40a0
    13b4:	44802000 	mtc1	zero,$f4
    13b8:	c6060060 	lwc1	$f6,96(s0)
    13bc:	4604303e 	c.le.s	$f6,$f4
    13c0:	00000000 	nop
    13c4:	45020014 	bc1fl	1418 <func_80A4A234+0xa4>
    13c8:	a60002c4 	sh	zero,708(s0)
    13cc:	96180088 	lhu	t8,136(s0)
    13d0:	33190001 	andi	t9,t8,0x1
    13d4:	53200010 	beqzl	t9,1418 <func_80A4A234+0xa4>
    13d8:	a60002c4 	sh	zero,708(s0)
    13dc:	0c000000 	jal	0 <EnGoma_Init>
    13e0:	02002025 	move	a0,s0
    13e4:	8608001c 	lh	t0,28(s0)
    13e8:	240539e4 	li	a1,14820
    13ec:	02002025 	move	a0,s0
    13f0:	29010006 	slti	at,t0,6
    13f4:	10200005 	beqz	at,140c <func_80A4A234+0x98>
    13f8:	00000000 	nop
    13fc:	0c000000 	jal	0 <EnGoma_Init>
    1400:	02002025 	move	a0,s0
    1404:	10000004 	b	1418 <func_80A4A234+0xa4>
    1408:	a60002c4 	sh	zero,708(s0)
    140c:	0c000000 	jal	0 <EnGoma_Init>
    1410:	240539e6 	li	a1,14822
    1414:	a60002c4 	sh	zero,708(s0)
    1418:	8fbf001c 	lw	ra,28(sp)
    141c:	8fb00018 	lw	s0,24(sp)
    1420:	27bd0020 	addiu	sp,sp,32
    1424:	03e00008 	jr	ra
    1428:	00000000 	nop

0000142c <func_80A4A2EC>:
    142c:	27bdffe0 	addiu	sp,sp,-32
    1430:	afb00018 	sw	s0,24(sp)
    1434:	00808025 	move	s0,a0
    1438:	afbf001c 	sw	ra,28(sp)
    143c:	afa50024 	sw	a1,36(sp)
    1440:	0c000000 	jal	0 <EnGoma_Init>
    1444:	2484014c 	addiu	a0,a0,332
    1448:	26040068 	addiu	a0,s0,104
    144c:	3c053f00 	lui	a1,0x3f00
    1450:	0c000000 	jal	0 <EnGoma_Init>
    1454:	3c064000 	lui	a2,0x4000
    1458:	8fae0024 	lw	t6,36(sp)
    145c:	02002025 	move	a0,s0
    1460:	0c000000 	jal	0 <EnGoma_Init>
    1464:	8dc51c44 	lw	a1,7236(t6)
    1468:	00022c00 	sll	a1,v0,0x10
    146c:	00052c03 	sra	a1,a1,0x10
    1470:	260400b6 	addiu	a0,s0,182
    1474:	24060002 	li	a2,2
    1478:	0c000000 	jal	0 <EnGoma_Init>
    147c:	24070bb8 	li	a3,3000
    1480:	860f02cc 	lh	t7,716(s0)
    1484:	55e00004 	bnezl	t7,1498 <func_80A4A2EC+0x6c>
    1488:	8fbf001c 	lw	ra,28(sp)
    148c:	0c000000 	jal	0 <EnGoma_Init>
    1490:	02002025 	move	a0,s0
    1494:	8fbf001c 	lw	ra,28(sp)
    1498:	8fb00018 	lw	s0,24(sp)
    149c:	27bd0020 	addiu	sp,sp,32
    14a0:	03e00008 	jr	ra
    14a4:	00000000 	nop

000014a8 <func_80A4A368>:
    14a8:	27bdffd8 	addiu	sp,sp,-40
    14ac:	afb00018 	sw	s0,24(sp)
    14b0:	00808025 	move	s0,a0
    14b4:	afbf001c 	sw	ra,28(sp)
    14b8:	2484014c 	addiu	a0,a0,332
    14bc:	afa5002c 	sw	a1,44(sp)
    14c0:	0c000000 	jal	0 <EnGoma_Init>
    14c4:	afa40024 	sw	a0,36(sp)
    14c8:	8fa40024 	lw	a0,36(sp)
    14cc:	0c000000 	jal	0 <EnGoma_Init>
    14d0:	3c053f80 	lui	a1,0x3f80
    14d4:	14400005 	bnez	v0,14ec <func_80A4A368+0x44>
    14d8:	8fa40024 	lw	a0,36(sp)
    14dc:	0c000000 	jal	0 <EnGoma_Init>
    14e0:	3c0540a0 	lui	a1,0x40a0
    14e4:	5040000e 	beqzl	v0,1520 <func_80A4A368+0x78>
    14e8:	3c054055 	lui	a1,0x4055
    14ec:	860e001c 	lh	t6,28(s0)
    14f0:	24053816 	li	a1,14358
    14f4:	02002025 	move	a0,s0
    14f8:	29c10006 	slti	at,t6,6
    14fc:	10200005 	beqz	at,1514 <func_80A4A368+0x6c>
    1500:	00000000 	nop
    1504:	0c000000 	jal	0 <EnGoma_Init>
    1508:	02002025 	move	a0,s0
    150c:	10000004 	b	1520 <func_80A4A368+0x78>
    1510:	3c054055 	lui	a1,0x4055
    1514:	0c000000 	jal	0 <EnGoma_Init>
    1518:	2405395c 	li	a1,14684
    151c:	3c054055 	lui	a1,0x4055
    1520:	34a55555 	ori	a1,a1,0x5555
    1524:	26040068 	addiu	a0,s0,104
    1528:	3c063f00 	lui	a2,0x3f00
    152c:	0c000000 	jal	0 <EnGoma_Init>
    1530:	3c074000 	lui	a3,0x4000
    1534:	26040032 	addiu	a0,s0,50
    1538:	8605008a 	lh	a1,138(s0)
    153c:	24060003 	li	a2,3
    1540:	0c000000 	jal	0 <EnGoma_Init>
    1544:	240707d0 	li	a3,2000
    1548:	260400b6 	addiu	a0,s0,182
    154c:	86050032 	lh	a1,50(s0)
    1550:	24060002 	li	a2,2
    1554:	0c000000 	jal	0 <EnGoma_Init>
    1558:	24070bb8 	li	a3,3000
    155c:	960f0088 	lhu	t7,136(s0)
    1560:	3c014316 	lui	at,0x4316
    1564:	44813000 	mtc1	at,$f6
    1568:	31f80001 	andi	t8,t7,0x1
    156c:	53000005 	beqzl	t8,1584 <func_80A4A368+0xdc>
    1570:	c6080090 	lwc1	$f8,144(s0)
    1574:	44802000 	mtc1	zero,$f4
    1578:	00000000 	nop
    157c:	e6040060 	swc1	$f4,96(s0)
    1580:	c6080090 	lwc1	$f8,144(s0)
    1584:	4606403e 	c.le.s	$f8,$f6
    1588:	00000000 	nop
    158c:	45020004 	bc1fl	15a0 <func_80A4A368+0xf8>
    1590:	8fbf001c 	lw	ra,28(sp)
    1594:	0c000000 	jal	0 <EnGoma_Init>
    1598:	02002025 	move	a0,s0
    159c:	8fbf001c 	lw	ra,28(sp)
    15a0:	8fb00018 	lw	s0,24(sp)
    15a4:	27bd0028 	addiu	sp,sp,40
    15a8:	03e00008 	jr	ra
    15ac:	00000000 	nop

000015b0 <func_80A4A470>:
    15b0:	27bdffe8 	addiu	sp,sp,-24
    15b4:	afa5001c 	sw	a1,28(sp)
    15b8:	afbf0014 	sw	ra,20(sp)
    15bc:	3c0e0000 	lui	t6,0x0
    15c0:	25ce0000 	addiu	t6,t6,0
    15c4:	240f0064 	li	t7,100
    15c8:	00803825 	move	a3,a0
    15cc:	ac8e02b0 	sw	t6,688(a0)
    15d0:	a48f02f8 	sh	t7,760(a0)
    15d4:	3c050600 	lui	a1,0x600
    15d8:	24a51548 	addiu	a1,a1,5448
    15dc:	afa70018 	sw	a3,24(sp)
    15e0:	2484014c 	addiu	a0,a0,332
    15e4:	0c000000 	jal	0 <EnGoma_Init>
    15e8:	3c06c0a0 	lui	a2,0xc0a0
    15ec:	3c014170 	lui	at,0x4170
    15f0:	44816000 	mtc1	at,$f12
    15f4:	0c000000 	jal	0 <EnGoma_Init>
    15f8:	00000000 	nop
    15fc:	4600010d 	trunc.w.s	$f4,$f0
    1600:	8fa70018 	lw	a3,24(sp)
    1604:	2405381f 	li	a1,14367
    1608:	44092000 	mfc1	t1,$f4
    160c:	84eb001c 	lh	t3,28(a3)
    1610:	00e02025 	move	a0,a3
    1614:	252a0003 	addiu	t2,t1,3
    1618:	29610006 	slti	at,t3,6
    161c:	10200005 	beqz	at,1634 <func_80A4A470+0x84>
    1620:	a4ea02cc 	sh	t2,716(a3)
    1624:	0c000000 	jal	0 <EnGoma_Init>
    1628:	00e02025 	move	a0,a3
    162c:	10000004 	b	1640 <func_80A4A470+0x90>
    1630:	8fbf0014 	lw	ra,20(sp)
    1634:	0c000000 	jal	0 <EnGoma_Init>
    1638:	2405389e 	li	a1,14494
    163c:	8fbf0014 	lw	ra,20(sp)
    1640:	27bd0018 	addiu	sp,sp,24
    1644:	03e00008 	jr	ra
    1648:	00000000 	nop

0000164c <func_80A4A50C>:
    164c:	27bdffd8 	addiu	sp,sp,-40
    1650:	afbf0024 	sw	ra,36(sp)
    1654:	afb00020 	sw	s0,32(sp)
    1658:	afa5002c 	sw	a1,44(sp)
    165c:	240e0002 	li	t6,2
    1660:	00808025 	move	s0,a0
    1664:	afae0010 	sw	t6,16(sp)
    1668:	00002825 	move	a1,zero
    166c:	240600b4 	li	a2,180
    1670:	0c000000 	jal	0 <EnGoma_Init>
    1674:	00003825 	move	a3,zero
    1678:	861802cc 	lh	t8,716(s0)
    167c:	240f0002 	li	t7,2
    1680:	a60f02c4 	sh	t7,708(s0)
    1684:	53000004 	beqzl	t8,1698 <func_80A4A50C+0x4c>
    1688:	96190088 	lhu	t9,136(s0)
    168c:	0c000000 	jal	0 <EnGoma_Init>
    1690:	2604014c 	addiu	a0,s0,332
    1694:	96190088 	lhu	t9,136(s0)
    1698:	26040068 	addiu	a0,s0,104
    169c:	3c053f00 	lui	a1,0x3f00
    16a0:	33280001 	andi	t0,t9,0x1
    16a4:	51000006 	beqzl	t0,16c0 <func_80A4A50C+0x74>
    16a8:	860202f8 	lh	v0,760(s0)
    16ac:	44802000 	mtc1	zero,$f4
    16b0:	3c064000 	lui	a2,0x4000
    16b4:	0c000000 	jal	0 <EnGoma_Init>
    16b8:	e6040060 	swc1	$f4,96(s0)
    16bc:	860202f8 	lh	v0,760(s0)
    16c0:	14400005 	bnez	v0,16d8 <func_80A4A50C+0x8c>
    16c4:	2449ffff 	addiu	t1,v0,-1
    16c8:	0c000000 	jal	0 <EnGoma_Init>
    16cc:	02002025 	move	a0,s0
    16d0:	10000019 	b	1738 <func_80A4A50C+0xec>
    16d4:	8fbf0024 	lw	ra,36(sp)
    16d8:	a60902f8 	sh	t1,760(s0)
    16dc:	860202f8 	lh	v0,760(s0)
    16e0:	2841001e 	slti	at,v0,30
    16e4:	10200013 	beqz	at,1734 <func_80A4A50C+0xe8>
    16e8:	304a0001 	andi	t2,v0,0x1
    16ec:	1140000a 	beqz	t2,1718 <func_80A4A50C+0xcc>
    16f0:	3c013fc0 	lui	at,0x3fc0
    16f4:	3c013fc0 	lui	at,0x3fc0
    16f8:	44810000 	mtc1	at,$f0
    16fc:	c6060024 	lwc1	$f6,36(s0)
    1700:	c60a002c 	lwc1	$f10,44(s0)
    1704:	46003200 	add.s	$f8,$f6,$f0
    1708:	46005400 	add.s	$f16,$f10,$f0
    170c:	e6080024 	swc1	$f8,36(s0)
    1710:	10000008 	b	1734 <func_80A4A50C+0xe8>
    1714:	e610002c 	swc1	$f16,44(s0)
    1718:	44810000 	mtc1	at,$f0
    171c:	c6120024 	lwc1	$f18,36(s0)
    1720:	c606002c 	lwc1	$f6,44(s0)
    1724:	46009101 	sub.s	$f4,$f18,$f0
    1728:	46003201 	sub.s	$f8,$f6,$f0
    172c:	e6040024 	swc1	$f4,36(s0)
    1730:	e608002c 	swc1	$f8,44(s0)
    1734:	8fbf0024 	lw	ra,36(sp)
    1738:	8fb00020 	lw	s0,32(sp)
    173c:	27bd0028 	addiu	sp,sp,40
    1740:	03e00008 	jr	ra
    1744:	00000000 	nop

00001748 <func_80A4A608>:
    1748:	27bdffd8 	addiu	sp,sp,-40
    174c:	afbf001c 	sw	ra,28(sp)
    1750:	afb10018 	sw	s1,24(sp)
    1754:	afb00014 	sw	s0,20(sp)
    1758:	afa5002c 	sw	a1,44(sp)
    175c:	00808025 	move	s0,a0
    1760:	0c000000 	jal	0 <EnGoma_Init>
    1764:	8ca51c44 	lw	a1,7236(a1)
    1768:	860f00b6 	lh	t7,182(s0)
    176c:	8fb8002c 	lw	t8,44(sp)
    1770:	02002025 	move	a0,s0
    1774:	004f8823 	subu	s1,v0,t7
    1778:	00118c00 	sll	s1,s1,0x10
    177c:	00118c03 	sra	s1,s1,0x10
    1780:	0c000000 	jal	0 <EnGoma_Init>
    1784:	8f051c44 	lw	a1,7236(t8)
    1788:	861900b4 	lh	t9,180(s0)
    178c:	2a211771 	slti	at,s1,6001
    1790:	260402bc 	addiu	a0,s0,700
    1794:	00594023 	subu	t0,v0,t9
    1798:	14200002 	bnez	at,17a4 <func_80A4A608+0x5c>
    179c:	a7a80026 	sh	t0,38(sp)
    17a0:	24111770 	li	s1,6000
    17a4:	2a21e890 	slti	at,s1,-6000
    17a8:	10200002 	beqz	at,17b4 <func_80A4A608+0x6c>
    17ac:	24060003 	li	a2,3
    17b0:	2411e890 	li	s1,-6000
    17b4:	00112c00 	sll	a1,s1,0x10
    17b8:	00052c03 	sra	a1,a1,0x10
    17bc:	0c000000 	jal	0 <EnGoma_Init>
    17c0:	240707d0 	li	a3,2000
    17c4:	260402ba 	addiu	a0,s0,698
    17c8:	87a50026 	lh	a1,38(sp)
    17cc:	24060003 	li	a2,3
    17d0:	0c000000 	jal	0 <EnGoma_Init>
    17d4:	240707d0 	li	a3,2000
    17d8:	8fbf001c 	lw	ra,28(sp)
    17dc:	8fb00014 	lw	s0,20(sp)
    17e0:	8fb10018 	lw	s1,24(sp)
    17e4:	03e00008 	jr	ra
    17e8:	27bd0028 	addiu	sp,sp,40

000017ec <func_80A4A6AC>:
    17ec:	27bdffc8 	addiu	sp,sp,-56
    17f0:	afbf0024 	sw	ra,36(sp)
    17f4:	afb00020 	sw	s0,32(sp)
    17f8:	848202c2 	lh	v0,706(a0)
    17fc:	00808025 	move	s0,a0
    1800:	00a03025 	move	a2,a1
    1804:	10400004 	beqz	v0,1818 <func_80A4A6AC+0x2c>
    1808:	8ca71c44 	lw	a3,7236(a1)
    180c:	244effff 	addiu	t6,v0,-1
    1810:	1000007b 	b	1a00 <func_80A4A6AC+0x214>
    1814:	a48e02c2 	sh	t6,706(a0)
    1818:	920f031c 	lbu	t7,796(s0)
    181c:	31f80002 	andi	t8,t7,0x2
    1820:	53000010 	beqzl	t8,1864 <func_80A4A6AC+0x78>
    1824:	92020369 	lbu	v0,873(s0)
    1828:	8e0802b0 	lw	t0,688(s0)
    182c:	3c190000 	lui	t9,0x0
    1830:	27390000 	addiu	t9,t9,0
    1834:	1728000a 	bne	t9,t0,1860 <func_80A4A6AC+0x74>
    1838:	02002025 	move	a0,s0
    183c:	afa6003c 	sw	a2,60(sp)
    1840:	0c000000 	jal	0 <EnGoma_Init>
    1844:	afa70034 	sw	a3,52(sp)
    1848:	44802000 	mtc1	zero,$f4
    184c:	44803000 	mtc1	zero,$f6
    1850:	8fa6003c 	lw	a2,60(sp)
    1854:	8fa70034 	lw	a3,52(sp)
    1858:	e6040068 	swc1	$f4,104(s0)
    185c:	e6060060 	swc1	$f6,96(s0)
    1860:	92020369 	lbu	v0,873(s0)
    1864:	30490002 	andi	t1,v0,0x2
    1868:	51200066 	beqzl	t1,1a04 <func_80A4A6AC+0x218>
    186c:	8fbf0024 	lw	ra,36(sp)
    1870:	820a00af 	lb	t2,175(s0)
    1874:	59400063 	blezl	t2,1a04 <func_80A4A6AC+0x218>
    1878:	8fbf0024 	lw	ra,36(sp)
    187c:	860c02b8 	lh	t4,696(s0)
    1880:	304bfffd 	andi	t3,v0,0xfffd
    1884:	8e030394 	lw	v1,916(s0)
    1888:	1580004f 	bnez	t4,19c8 <func_80A4A6AC+0x1dc>
    188c:	a20b0369 	sb	t3,873(s0)
    1890:	8c640000 	lw	a0,0(v1)
    1894:	00046ac0 	sll	t5,a0,0xb
    1898:	05a10021 	bgez	t5,1920 <func_80A4A6AC+0x134>
    189c:	30880001 	andi	t0,a0,0x1
    18a0:	8e0f02b0 	lw	t7,688(s0)
    18a4:	3c0e0000 	lui	t6,0x0
    18a8:	25ce0000 	addiu	t6,t6,0
    18ac:	55cf000a 	bnel	t6,t7,18d8 <func_80A4A6AC+0xec>
    18b0:	84f800b6 	lh	t8,182(a3)
    18b4:	0c000000 	jal	0 <EnGoma_Init>
    18b8:	02002025 	move	a0,s0
    18bc:	44809000 	mtc1	zero,$f18
    18c0:	3c01c0a0 	lui	at,0xc0a0
    18c4:	44818000 	mtc1	at,$f16
    18c8:	e6120060 	swc1	$f18,96(s0)
    18cc:	1000004c 	b	1a00 <func_80A4A6AC+0x214>
    18d0:	e6100068 	swc1	$f16,104(s0)
    18d4:	84f800b6 	lh	t8,182(a3)
    18d8:	3c014700 	lui	at,0x4700
    18dc:	44812000 	mtc1	at,$f4
    18e0:	44988000 	mtc1	t8,$f16
    18e4:	3c010000 	lui	at,0x0
    18e8:	c4280000 	lwc1	$f8,0(at)
    18ec:	468084a0 	cvt.s.w	$f18,$f16
    18f0:	00002825 	move	a1,zero
    18f4:	46049183 	div.s	$f6,$f18,$f4
    18f8:	46083302 	mul.s	$f12,$f6,$f8
    18fc:	0c000000 	jal	0 <EnGoma_Init>
    1900:	00000000 	nop
    1904:	3c040000 	lui	a0,0x0
    1908:	24840000 	addiu	a0,a0,0
    190c:	0c000000 	jal	0 <EnGoma_Init>
    1910:	260502fc 	addiu	a1,s0,764
    1914:	24190005 	li	t9,5
    1918:	10000039 	b	1a00 <func_80A4A6AC+0x214>
    191c:	a61902ca 	sh	t9,714(s0)
    1920:	1100000b 	beqz	t0,1950 <func_80A4A6AC+0x164>
    1924:	00000000 	nop
    1928:	8e0a02b0 	lw	t2,688(s0)
    192c:	3c090000 	lui	t1,0x0
    1930:	25290000 	addiu	t1,t1,0
    1934:	112a0032 	beq	t1,t2,1a00 <func_80A4A6AC+0x214>
    1938:	02002025 	move	a0,s0
    193c:	0c000000 	jal	0 <EnGoma_Init>
    1940:	00c02825 	move	a1,a2
    1944:	240b0008 	li	t3,8
    1948:	1000002d 	b	1a00 <func_80A4A6AC+0x214>
    194c:	a60b02c2 	sh	t3,706(s0)
    1950:	0c000000 	jal	0 <EnGoma_Init>
    1954:	afa6003c 	sw	a2,60(sp)
    1958:	8fa6003c 	lw	a2,60(sp)
    195c:	10400009 	beqz	v0,1984 <func_80A4A6AC+0x198>
    1960:	304300ff 	andi	v1,v0,0xff
    1964:	00c02025 	move	a0,a2
    1968:	26050038 	addiu	a1,s0,56
    196c:	a3a3002f 	sb	v1,47(sp)
    1970:	0c000000 	jal	0 <EnGoma_Init>
    1974:	afa6003c 	sw	a2,60(sp)
    1978:	93a3002f 	lbu	v1,47(sp)
    197c:	10000002 	b	1988 <func_80A4A6AC+0x19c>
    1980:	8fa6003c 	lw	a2,60(sp)
    1984:	24030001 	li	v1,1
    1988:	920c00af 	lbu	t4,175(s0)
    198c:	02002025 	move	a0,s0
    1990:	00c02825 	move	a1,a2
    1994:	01836823 	subu	t5,t4,v1
    1998:	0c000000 	jal	0 <EnGoma_Init>
    199c:	a20d00af 	sb	t5,175(s0)
    19a0:	240e0005 	li	t6,5
    19a4:	afae0010 	sw	t6,16(sp)
    19a8:	02002025 	move	a0,s0
    19ac:	24054000 	li	a1,16384
    19b0:	240600ff 	li	a2,255
    19b4:	0c000000 	jal	0 <EnGoma_Init>
    19b8:	00003825 	move	a3,zero
    19bc:	240f000d 	li	t7,13
    19c0:	1000000f 	b	1a00 <func_80A4A6AC+0x214>
    19c4:	a60f02c2 	sh	t7,706(s0)
    19c8:	8603001c 	lh	v1,28(s0)
    19cc:	02002025 	move	a0,s0
    19d0:	28610006 	slti	at,v1,6
    19d4:	10200006 	beqz	at,19f0 <func_80A4A6AC+0x204>
    19d8:	00000000 	nop
    19dc:	8e020118 	lw	v0,280(s0)
    19e0:	0003c840 	sll	t9,v1,0x1
    19e4:	2418ffff 	li	t8,-1
    19e8:	00594021 	addu	t0,v0,t9
    19ec:	a51801a4 	sh	t8,420(t0)
    19f0:	0c000000 	jal	0 <EnGoma_Init>
    19f4:	00c02825 	move	a1,a2
    19f8:	0c000000 	jal	0 <EnGoma_Init>
    19fc:	02002025 	move	a0,s0
    1a00:	8fbf0024 	lw	ra,36(sp)
    1a04:	8fb00020 	lw	s0,32(sp)
    1a08:	27bd0038 	addiu	sp,sp,56
    1a0c:	03e00008 	jr	ra
    1a10:	00000000 	nop

00001a14 <func_80A4A8D4>:
    1a14:	27bdffe0 	addiu	sp,sp,-32
    1a18:	afb00018 	sw	s0,24(sp)
    1a1c:	00808025 	move	s0,a0
    1a20:	afbf001c 	sw	ra,28(sp)
    1a24:	860e02c4 	lh	t6,708(s0)
    1a28:	3c050000 	lui	a1,0x0
    1a2c:	248402e0 	addiu	a0,a0,736
    1a30:	000e7880 	sll	t7,t6,0x2
    1a34:	00af2821 	addu	a1,a1,t7
    1a38:	8ca50000 	lw	a1,0(a1)
    1a3c:	3c063f00 	lui	a2,0x3f00
    1a40:	0c000000 	jal	0 <EnGoma_Init>
    1a44:	3c0741a0 	lui	a3,0x41a0
    1a48:	861802c4 	lh	t8,708(s0)
    1a4c:	3c050000 	lui	a1,0x0
    1a50:	260402e4 	addiu	a0,s0,740
    1a54:	0018c880 	sll	t9,t8,0x2
    1a58:	00b92821 	addu	a1,a1,t9
    1a5c:	8ca50000 	lw	a1,0(a1)
    1a60:	3c063f00 	lui	a2,0x3f00
    1a64:	0c000000 	jal	0 <EnGoma_Init>
    1a68:	3c0741a0 	lui	a3,0x41a0
    1a6c:	860802c4 	lh	t0,708(s0)
    1a70:	3c050000 	lui	a1,0x0
    1a74:	260402e8 	addiu	a0,s0,744
    1a78:	00084880 	sll	t1,t0,0x2
    1a7c:	00a92821 	addu	a1,a1,t1
    1a80:	8ca50000 	lw	a1,0(a1)
    1a84:	3c063f00 	lui	a2,0x3f00
    1a88:	0c000000 	jal	0 <EnGoma_Init>
    1a8c:	3c0741a0 	lui	a3,0x41a0
    1a90:	8fbf001c 	lw	ra,28(sp)
    1a94:	8fb00018 	lw	s0,24(sp)
    1a98:	27bd0020 	addiu	sp,sp,32
    1a9c:	03e00008 	jr	ra
    1aa0:	00000000 	nop

00001aa4 <func_80A4A964>:
    1aa4:	27bdffe0 	addiu	sp,sp,-32
    1aa8:	afbf0014 	sw	ra,20(sp)
    1aac:	afa40020 	sw	a0,32(sp)
    1ab0:	8c820078 	lw	v0,120(a0)
    1ab4:	5040003c 	beqzl	v0,1ba8 <func_80A4A964+0x104>
    1ab8:	8fbf0014 	lw	ra,20(sp)
    1abc:	844f0008 	lh	t7,8(v0)
    1ac0:	3c010000 	lui	at,0x0
    1ac4:	c4220000 	lwc1	$f2,0(at)
    1ac8:	448f2000 	mtc1	t7,$f4
    1acc:	3c013f80 	lui	at,0x3f80
    1ad0:	44817000 	mtc1	at,$f14
    1ad4:	468021a0 	cvt.s.w	$f6,$f4
    1ad8:	46023202 	mul.s	$f8,$f6,$f2
    1adc:	e7a8001c 	swc1	$f8,28(sp)
    1ae0:	8458000a 	lh	t8,10(v0)
    1ae4:	8459000c 	lh	t9,12(v0)
    1ae8:	44985000 	mtc1	t8,$f10
    1aec:	44992000 	mtc1	t9,$f4
    1af0:	468054a0 	cvt.s.w	$f18,$f10
    1af4:	468021a0 	cvt.s.w	$f6,$f4
    1af8:	46029402 	mul.s	$f16,$f18,$f2
    1afc:	00000000 	nop
    1b00:	46023002 	mul.s	$f0,$f6,$f2
    1b04:	e7b00018 	swc1	$f16,24(sp)
    1b08:	46000207 	neg.s	$f8,$f0
    1b0c:	46104302 	mul.s	$f12,$f8,$f16
    1b10:	0c000000 	jal	0 <EnGoma_Init>
    1b14:	00000000 	nop
    1b18:	3c010000 	lui	at,0x0
    1b1c:	c4320000 	lwc1	$f18,0(at)
    1b20:	46000287 	neg.s	$f10,$f0
    1b24:	8fa40020 	lw	a0,32(sp)
    1b28:	46125102 	mul.s	$f4,$f10,$f18
    1b2c:	24060001 	li	a2,1
    1b30:	240703e8 	li	a3,1000
    1b34:	248402b4 	addiu	a0,a0,692
    1b38:	4600218d 	trunc.w.s	$f6,$f4
    1b3c:	44053000 	mfc1	a1,$f6
    1b40:	00000000 	nop
    1b44:	00052c00 	sll	a1,a1,0x10
    1b48:	0c000000 	jal	0 <EnGoma_Init>
    1b4c:	00052c03 	sra	a1,a1,0x10
    1b50:	c7a8001c 	lwc1	$f8,28(sp)
    1b54:	c7b20018 	lwc1	$f18,24(sp)
    1b58:	3c013f80 	lui	at,0x3f80
    1b5c:	46004287 	neg.s	$f10,$f8
    1b60:	44817000 	mtc1	at,$f14
    1b64:	46125302 	mul.s	$f12,$f10,$f18
    1b68:	0c000000 	jal	0 <EnGoma_Init>
    1b6c:	00000000 	nop
    1b70:	3c010000 	lui	at,0x0
    1b74:	c4240000 	lwc1	$f4,0(at)
    1b78:	8fa40020 	lw	a0,32(sp)
    1b7c:	24060001 	li	a2,1
    1b80:	46040182 	mul.s	$f6,$f0,$f4
    1b84:	240703e8 	li	a3,1000
    1b88:	248402b6 	addiu	a0,a0,694
    1b8c:	4600320d 	trunc.w.s	$f8,$f6
    1b90:	44054000 	mfc1	a1,$f8
    1b94:	00000000 	nop
    1b98:	00052c00 	sll	a1,a1,0x10
    1b9c:	0c000000 	jal	0 <EnGoma_Init>
    1ba0:	00052c03 	sra	a1,a1,0x10
    1ba4:	8fbf0014 	lw	ra,20(sp)
    1ba8:	27bd0020 	addiu	sp,sp,32
    1bac:	03e00008 	jr	ra
    1bb0:	00000000 	nop

00001bb4 <EnGoma_Update>:
    1bb4:	27bdffc0 	addiu	sp,sp,-64
    1bb8:	afbf0024 	sw	ra,36(sp)
    1bbc:	afb10020 	sw	s1,32(sp)
    1bc0:	afb0001c 	sw	s0,28(sp)
    1bc4:	8cae1c44 	lw	t6,7236(a1)
    1bc8:	00808025 	move	s0,a0
    1bcc:	00a08825 	move	s1,a1
    1bd0:	afae0034 	sw	t6,52(sp)
    1bd4:	848202cc 	lh	v0,716(a0)
    1bd8:	10400002 	beqz	v0,1be4 <EnGoma_Update+0x30>
    1bdc:	244fffff 	addiu	t7,v0,-1
    1be0:	a48f02cc 	sh	t7,716(a0)
    1be4:	860202ca 	lh	v0,714(s0)
    1be8:	10400002 	beqz	v0,1bf4 <EnGoma_Update+0x40>
    1bec:	2458ffff 	addiu	t8,v0,-1
    1bf0:	a61802ca 	sh	t8,714(s0)
    1bf4:	8e1902b0 	lw	t9,688(s0)
    1bf8:	02002025 	move	a0,s0
    1bfc:	02202825 	move	a1,s1
    1c00:	0320f809 	jalr	t9
    1c04:	00000000 	nop
    1c08:	0c000000 	jal	0 <EnGoma_Init>
    1c0c:	02002025 	move	a0,s0
    1c10:	c6040024 	lwc1	$f4,36(s0)
    1c14:	c60602fc 	lwc1	$f6,764(s0)
    1c18:	c60a002c 	lwc1	$f10,44(s0)
    1c1c:	c6100304 	lwc1	$f16,772(s0)
    1c20:	46062200 	add.s	$f8,$f4,$f6
    1c24:	260402fc 	addiu	a0,s0,764
    1c28:	3c053f80 	lui	a1,0x3f80
    1c2c:	46105480 	add.s	$f18,$f10,$f16
    1c30:	e6080024 	swc1	$f8,36(s0)
    1c34:	3c064040 	lui	a2,0x4040
    1c38:	0c000000 	jal	0 <EnGoma_Init>
    1c3c:	e612002c 	swc1	$f18,44(s0)
    1c40:	26040304 	addiu	a0,s0,772
    1c44:	3c053f80 	lui	a1,0x3f80
    1c48:	0c000000 	jal	0 <EnGoma_Init>
    1c4c:	3c064040 	lui	a2,0x4040
    1c50:	8608001c 	lh	t0,28(s0)
    1c54:	3c053c23 	lui	a1,0x3c23
    1c58:	34a5d70a 	ori	a1,a1,0xd70a
    1c5c:	2901000a 	slti	at,t0,10
    1c60:	10200062 	beqz	at,1dec <EnGoma_Update+0x238>
    1c64:	26040050 	addiu	a0,s0,80
    1c68:	860902c0 	lh	t1,704(s0)
    1c6c:	3c010000 	lui	at,0x0
    1c70:	3c073a44 	lui	a3,0x3a44
    1c74:	252a0001 	addiu	t2,t1,1
    1c78:	a60a02c0 	sh	t2,704(s0)
    1c7c:	c4240000 	lwc1	$f4,0(at)
    1c80:	34e79ba6 	ori	a3,a3,0x9ba6
    1c84:	3c063f00 	lui	a2,0x3f00
    1c88:	0c000000 	jal	0 <EnGoma_Init>
    1c8c:	e7a40010 	swc1	$f4,16(sp)
    1c90:	3c010000 	lui	at,0x0
    1c94:	c4260000 	lwc1	$f6,0(at)
    1c98:	3c053c23 	lui	a1,0x3c23
    1c9c:	3c073a44 	lui	a3,0x3a44
    1ca0:	34e79ba6 	ori	a3,a3,0x9ba6
    1ca4:	34a5d70a 	ori	a1,a1,0xd70a
    1ca8:	26040054 	addiu	a0,s0,84
    1cac:	3c063f00 	lui	a2,0x3f00
    1cb0:	0c000000 	jal	0 <EnGoma_Init>
    1cb4:	e7a60010 	swc1	$f6,16(sp)
    1cb8:	3c010000 	lui	at,0x0
    1cbc:	c4280000 	lwc1	$f8,0(at)
    1cc0:	3c053c23 	lui	a1,0x3c23
    1cc4:	3c073a44 	lui	a3,0x3a44
    1cc8:	34e79ba6 	ori	a3,a3,0x9ba6
    1ccc:	34a5d70a 	ori	a1,a1,0xd70a
    1cd0:	26040058 	addiu	a0,s0,88
    1cd4:	3c063f00 	lui	a2,0x3f00
    1cd8:	0c000000 	jal	0 <EnGoma_Init>
    1cdc:	e7a80010 	swc1	$f8,16(sp)
    1ce0:	02002025 	move	a0,s0
    1ce4:	0c000000 	jal	0 <EnGoma_Init>
    1ce8:	02202825 	move	a1,s1
    1cec:	3c014248 	lui	at,0x4248
    1cf0:	44810000 	mtc1	at,$f0
    1cf4:	3c0142c8 	lui	at,0x42c8
    1cf8:	44815000 	mtc1	at,$f10
    1cfc:	240b0005 	li	t3,5
    1d00:	44060000 	mfc1	a2,$f0
    1d04:	44070000 	mfc1	a3,$f0
    1d08:	afab0014 	sw	t3,20(sp)
    1d0c:	02202025 	move	a0,s1
    1d10:	02002825 	move	a1,s0
    1d14:	0c000000 	jal	0 <EnGoma_Init>
    1d18:	e7aa0010 	swc1	$f10,16(sp)
    1d1c:	0c000000 	jal	0 <EnGoma_Init>
    1d20:	02002025 	move	a0,s0
    1d24:	02002025 	move	a0,s0
    1d28:	0c000000 	jal	0 <EnGoma_Init>
    1d2c:	3c0541a0 	lui	a1,0x41a0
    1d30:	02002025 	move	a0,s0
    1d34:	0c000000 	jal	0 <EnGoma_Init>
    1d38:	02202825 	move	a1,s1
    1d3c:	0c000000 	jal	0 <EnGoma_Init>
    1d40:	02002025 	move	a0,s0
    1d44:	240c0001 	li	t4,1
    1d48:	a60c02c4 	sh	t4,708(s0)
    1d4c:	8fad0034 	lw	t5,52(sp)
    1d50:	24020023 	li	v0,35
    1d54:	240f000f 	li	t7,15
    1d58:	81ae0843 	lb	t6,2115(t5)
    1d5c:	2418001e 	li	t8,30
    1d60:	2419000a 	li	t9,10
    1d64:	11c00005 	beqz	t6,1d7c <EnGoma_Update+0x1c8>
    1d68:	02002025 	move	a0,s0
    1d6c:	a6020398 	sh	v0,920(s0)
    1d70:	a602039a 	sh	v0,922(s0)
    1d74:	10000004 	b	1d88 <EnGoma_Update+0x1d4>
    1d78:	a600039c 	sh	zero,924(s0)
    1d7c:	a60f0398 	sh	t7,920(s0)
    1d80:	a618039a 	sh	t8,922(s0)
    1d84:	a619039c 	sh	t9,924(s0)
    1d88:	860802ca 	lh	t0,714(s0)
    1d8c:	2605030c 	addiu	a1,s0,780
    1d90:	55000017 	bnezl	t0,1df0 <EnGoma_Update+0x23c>
    1d94:	8fbf0024 	lw	ra,36(sp)
    1d98:	0c000000 	jal	0 <EnGoma_Init>
    1d9c:	afa5002c 	sw	a1,44(sp)
    1da0:	26050358 	addiu	a1,s0,856
    1da4:	afa50028 	sw	a1,40(sp)
    1da8:	0c000000 	jal	0 <EnGoma_Init>
    1dac:	02002025 	move	a0,s0
    1db0:	3c010001 	lui	at,0x1
    1db4:	34211e60 	ori	at,at,0x1e60
    1db8:	02212821 	addu	a1,s1,at
    1dbc:	afa50030 	sw	a1,48(sp)
    1dc0:	02202025 	move	a0,s1
    1dc4:	0c000000 	jal	0 <EnGoma_Init>
    1dc8:	8fa6002c 	lw	a2,44(sp)
    1dcc:	02202025 	move	a0,s1
    1dd0:	8fa50030 	lw	a1,48(sp)
    1dd4:	0c000000 	jal	0 <EnGoma_Init>
    1dd8:	8fa60028 	lw	a2,40(sp)
    1ddc:	02202025 	move	a0,s1
    1de0:	8fa50030 	lw	a1,48(sp)
    1de4:	0c000000 	jal	0 <EnGoma_Init>
    1de8:	8fa6002c 	lw	a2,44(sp)
    1dec:	8fbf0024 	lw	ra,36(sp)
    1df0:	8fb0001c 	lw	s0,28(sp)
    1df4:	8fb10020 	lw	s1,32(sp)
    1df8:	03e00008 	jr	ra
    1dfc:	27bd0040 	addiu	sp,sp,64

00001e00 <func_80A4ACC0>:
    1e00:	27bdffb8 	addiu	sp,sp,-72
    1e04:	afbf0014 	sw	ra,20(sp)
    1e08:	afa40048 	sw	a0,72(sp)
    1e0c:	afa5004c 	sw	a1,76(sp)
    1e10:	afa60050 	sw	a2,80(sp)
    1e14:	afa70054 	sw	a3,84(sp)
    1e18:	8c850000 	lw	a1,0(a0)
    1e1c:	3c060000 	lui	a2,0x0
    1e20:	24c60000 	addiu	a2,a2,0
    1e24:	27a40030 	addiu	a0,sp,48
    1e28:	240707b8 	li	a3,1976
    1e2c:	0c000000 	jal	0 <EnGoma_Init>
    1e30:	afa50040 	sw	a1,64(sp)
    1e34:	8fa80040 	lw	t0,64(sp)
    1e38:	8fa4005c 	lw	a0,92(sp)
    1e3c:	8fa5004c 	lw	a1,76(sp)
    1e40:	8d0302c0 	lw	v1,704(t0)
    1e44:	3c06fb00 	lui	a2,0xfb00
    1e48:	24010007 	li	at,7
    1e4c:	246f0008 	addiu	t7,v1,8
    1e50:	ad0f02c0 	sw	t7,704(t0)
    1e54:	ac660000 	sw	a2,0(v1)
    1e58:	c48802e0 	lwc1	$f8,736(a0)
    1e5c:	c48402e8 	lwc1	$f4,744(a0)
    1e60:	c49002e4 	lwc1	$f16,740(a0)
    1e64:	4600428d 	trunc.w.s	$f10,$f8
    1e68:	4600218d 	trunc.w.s	$f6,$f4
    1e6c:	44195000 	mfc1	t9,$f10
    1e70:	4600848d 	trunc.w.s	$f18,$f16
    1e74:	440a3000 	mfc1	t2,$f6
    1e78:	00194e00 	sll	t1,t9,0x18
    1e7c:	440f9000 	mfc1	t7,$f18
    1e80:	314b00ff 	andi	t3,t2,0xff
    1e84:	000b6200 	sll	t4,t3,0x8
    1e88:	31f800ff 	andi	t8,t7,0xff
    1e8c:	0018cc00 	sll	t9,t8,0x10
    1e90:	01895025 	or	t2,t4,t1
    1e94:	01596025 	or	t4,t2,t9
    1e98:	358900ff 	ori	t1,t4,0xff
    1e9c:	14a1000b 	bne	a1,at,1ecc <func_80A4ACC0+0xcc>
    1ea0:	ac690004 	sw	t1,4(v1)
    1ea4:	8fa20058 	lw	v0,88(sp)
    1ea8:	848d02ba 	lh	t5,698(a0)
    1eac:	844b0000 	lh	t3,0(v0)
    1eb0:	844f0002 	lh	t7,2(v0)
    1eb4:	016d7021 	addu	t6,t3,t5
    1eb8:	a44e0000 	sh	t6,0(v0)
    1ebc:	849802bc 	lh	t8,700(a0)
    1ec0:	01f85021 	addu	t2,t7,t8
    1ec4:	1000002a 	b	1f70 <func_80A4ACC0+0x170>
    1ec8:	a44a0002 	sh	t2,2(v0)
    1ecc:	24010003 	li	at,3
    1ed0:	54a10028 	bnel	a1,at,1f74 <func_80A4ACC0+0x174>
    1ed4:	8faa0048 	lw	t2,72(sp)
    1ed8:	849902c2 	lh	t9,706(a0)
    1edc:	53200025 	beqzl	t9,1f74 <func_80A4ACC0+0x174>
    1ee0:	8faa0048 	lw	t2,72(sp)
    1ee4:	8d0302c0 	lw	v1,704(t0)
    1ee8:	246c0008 	addiu	t4,v1,8
    1eec:	ad0c02c0 	sw	t4,704(t0)
    1ef0:	ac660000 	sw	a2,0(v1)
    1ef4:	0c000000 	jal	0 <EnGoma_Init>
    1ef8:	afa30028 	sw	v1,40(sp)
    1efc:	0c000000 	jal	0 <EnGoma_Init>
    1f00:	e7a00020 	swc1	$f0,32(sp)
    1f04:	0c000000 	jal	0 <EnGoma_Init>
    1f08:	e7a00024 	swc1	$f0,36(sp)
    1f0c:	3c01437f 	lui	at,0x437f
    1f10:	44811000 	mtc1	at,$f2
    1f14:	c7a80024 	lwc1	$f8,36(sp)
    1f18:	c7b20020 	lwc1	$f18,32(sp)
    1f1c:	46020102 	mul.s	$f4,$f0,$f2
    1f20:	4600218d 	trunc.w.s	$f6,$f4
    1f24:	46024282 	mul.s	$f10,$f8,$f2
    1f28:	00000000 	nop
    1f2c:	46029102 	mul.s	$f4,$f18,$f2
    1f30:	440e3000 	mfc1	t6,$f6
    1f34:	00000000 	nop
    1f38:	31cf00ff 	andi	t7,t6,0xff
    1f3c:	000fc200 	sll	t8,t7,0x8
    1f40:	4600540d 	trunc.w.s	$f16,$f10
    1f44:	8faf0028 	lw	t7,40(sp)
    1f48:	4600218d 	trunc.w.s	$f6,$f4
    1f4c:	440b8000 	mfc1	t3,$f16
    1f50:	440c3000 	mfc1	t4,$f6
    1f54:	000b6e00 	sll	t5,t3,0x18
    1f58:	030d7025 	or	t6,t8,t5
    1f5c:	318900ff 	andi	t1,t4,0xff
    1f60:	00095c00 	sll	t3,t1,0x10
    1f64:	01cbc025 	or	t8,t6,t3
    1f68:	370d00ff 	ori	t5,t8,0xff
    1f6c:	aded0004 	sw	t5,4(t7)
    1f70:	8faa0048 	lw	t2,72(sp)
    1f74:	3c060000 	lui	a2,0x0
    1f78:	24c60000 	addiu	a2,a2,0
    1f7c:	27a40030 	addiu	a0,sp,48
    1f80:	240707db 	li	a3,2011
    1f84:	0c000000 	jal	0 <EnGoma_Init>
    1f88:	8d450000 	lw	a1,0(t2)
    1f8c:	8fbf0014 	lw	ra,20(sp)
    1f90:	27bd0048 	addiu	sp,sp,72
    1f94:	00001025 	move	v0,zero
    1f98:	03e00008 	jr	ra
    1f9c:	00000000 	nop

00001fa0 <func_80A4AE60>:
    1fa0:	27bdffe8 	addiu	sp,sp,-24
    1fa4:	afbf0014 	sw	ra,20(sp)
    1fa8:	0c000000 	jal	0 <EnGoma_Init>
    1fac:	24050020 	li	a1,32
    1fb0:	3c0ee700 	lui	t6,0xe700
    1fb4:	00402825 	move	a1,v0
    1fb8:	ac4e0000 	sw	t6,0(v0)
    1fbc:	24440008 	addiu	a0,v0,8
    1fc0:	ac400004 	sw	zero,4(v0)
    1fc4:	00801025 	move	v0,a0
    1fc8:	3c0fe200 	lui	t7,0xe200
    1fcc:	3c180c19 	lui	t8,0xc19
    1fd0:	37183078 	ori	t8,t8,0x3078
    1fd4:	35ef001c 	ori	t7,t7,0x1c
    1fd8:	ac4f0000 	sw	t7,0(v0)
    1fdc:	ac580004 	sw	t8,4(v0)
    1fe0:	24840008 	addiu	a0,a0,8
    1fe4:	00801025 	move	v0,a0
    1fe8:	3c19d9ff 	lui	t9,0xd9ff
    1fec:	3739fbff 	ori	t9,t9,0xfbff
    1ff0:	ac590000 	sw	t9,0(v0)
    1ff4:	ac400004 	sw	zero,4(v0)
    1ff8:	3c08df00 	lui	t0,0xdf00
    1ffc:	ac880008 	sw	t0,8(a0)
    2000:	ac80000c 	sw	zero,12(a0)
    2004:	8fbf0014 	lw	ra,20(sp)
    2008:	24840008 	addiu	a0,a0,8
    200c:	27bd0018 	addiu	sp,sp,24
    2010:	03e00008 	jr	ra
    2014:	00a01025 	move	v0,a1

00002018 <EnGoma_Draw>:
    2018:	27bdff88 	addiu	sp,sp,-120
    201c:	afbf0024 	sw	ra,36(sp)
    2020:	afb10020 	sw	s1,32(sp)
    2024:	afb0001c 	sw	s0,28(sp)
    2028:	afa5007c 	sw	a1,124(sp)
    202c:	8ca50000 	lw	a1,0(a1)
    2030:	00808025 	move	s0,a0
    2034:	3c060000 	lui	a2,0x0
    2038:	24c60000 	addiu	a2,a2,0
    203c:	27a40058 	addiu	a0,sp,88
    2040:	240707f8 	li	a3,2040
    2044:	0c000000 	jal	0 <EnGoma_Init>
    2048:	00a08825 	move	s1,a1
    204c:	8faf007c 	lw	t7,124(sp)
    2050:	0c000000 	jal	0 <EnGoma_Init>
    2054:	8de40000 	lw	a0,0(t7)
    2058:	860202b8 	lh	v0,696(s0)
    205c:	1040000a 	beqz	v0,2088 <EnGoma_Draw+0x70>
    2060:	24010001 	li	at,1
    2064:	10410061 	beq	v0,at,21ec <EnGoma_Draw+0x1d4>
    2068:	24010002 	li	at,2
    206c:	104100d8 	beq	v0,at,23d0 <EnGoma_Draw+0x3b8>
    2070:	3c18da38 	lui	t8,0xda38
    2074:	24010003 	li	at,3
    2078:	504100ec 	beql	v0,at,242c <EnGoma_Draw+0x414>
    207c:	8e0b0308 	lw	t3,776(s0)
    2080:	1000010f 	b	24c0 <EnGoma_Draw+0x4a8>
    2084:	8fab007c 	lw	t3,124(sp)
    2088:	c60400bc 	lwc1	$f4,188(s0)
    208c:	c6060054 	lwc1	$f6,84(s0)
    2090:	24180003 	li	t8,3
    2094:	a2180117 	sb	t8,279(s0)
    2098:	46062202 	mul.s	$f8,$f4,$f6
    209c:	8fb9007c 	lw	t9,124(sp)
    20a0:	c6120028 	lwc1	$f18,40(s0)
    20a4:	c60c0024 	lwc1	$f12,36(s0)
    20a8:	c72a0264 	lwc1	$f10,612(t9)
    20ac:	8e06002c 	lw	a2,44(s0)
    20b0:	00003825 	move	a3,zero
    20b4:	460a4400 	add.s	$f16,$f8,$f10
    20b8:	0c000000 	jal	0 <EnGoma_Init>
    20bc:	46109380 	add.s	$f14,$f18,$f16
    20c0:	860802b4 	lh	t0,692(s0)
    20c4:	3c014700 	lui	at,0x4700
    20c8:	44814000 	mtc1	at,$f8
    20cc:	44882000 	mtc1	t0,$f4
    20d0:	3c010000 	lui	at,0x0
    20d4:	c4320000 	lwc1	$f18,0(at)
    20d8:	468021a0 	cvt.s.w	$f6,$f4
    20dc:	24050001 	li	a1,1
    20e0:	46083283 	div.s	$f10,$f6,$f8
    20e4:	46125302 	mul.s	$f12,$f10,$f18
    20e8:	0c000000 	jal	0 <EnGoma_Init>
    20ec:	00000000 	nop
    20f0:	860902b6 	lh	t1,694(s0)
    20f4:	3c014700 	lui	at,0x4700
    20f8:	44813000 	mtc1	at,$f6
    20fc:	44898000 	mtc1	t1,$f16
    2100:	3c010000 	lui	at,0x0
    2104:	c42a0000 	lwc1	$f10,0(at)
    2108:	46808120 	cvt.s.w	$f4,$f16
    210c:	24050001 	li	a1,1
    2110:	46062203 	div.s	$f8,$f4,$f6
    2114:	460a4302 	mul.s	$f12,$f8,$f10
    2118:	0c000000 	jal	0 <EnGoma_Init>
    211c:	00000000 	nop
    2120:	860a00b6 	lh	t2,182(s0)
    2124:	3c014700 	lui	at,0x4700
    2128:	44812000 	mtc1	at,$f4
    212c:	448a9000 	mtc1	t2,$f18
    2130:	3c010000 	lui	at,0x0
    2134:	c4280000 	lwc1	$f8,0(at)
    2138:	46809420 	cvt.s.w	$f16,$f18
    213c:	24050001 	li	a1,1
    2140:	46048183 	div.s	$f6,$f16,$f4
    2144:	46083302 	mul.s	$f12,$f6,$f8
    2148:	0c000000 	jal	0 <EnGoma_Init>
    214c:	00000000 	nop
    2150:	860b00b4 	lh	t3,180(s0)
    2154:	3c014700 	lui	at,0x4700
    2158:	44818000 	mtc1	at,$f16
    215c:	448b5000 	mtc1	t3,$f10
    2160:	3c010000 	lui	at,0x0
    2164:	c4260000 	lwc1	$f6,0(at)
    2168:	468054a0 	cvt.s.w	$f18,$f10
    216c:	24050001 	li	a1,1
    2170:	46109103 	div.s	$f4,$f18,$f16
    2174:	46062302 	mul.s	$f12,$f4,$f6
    2178:	0c000000 	jal	0 <EnGoma_Init>
    217c:	00000000 	nop
    2180:	860c00b8 	lh	t4,184(s0)
    2184:	3c014700 	lui	at,0x4700
    2188:	44819000 	mtc1	at,$f18
    218c:	448c4000 	mtc1	t4,$f8
    2190:	3c010000 	lui	at,0x0
    2194:	c4240000 	lwc1	$f4,0(at)
    2198:	468042a0 	cvt.s.w	$f10,$f8
    219c:	24050001 	li	a1,1
    21a0:	46125403 	div.s	$f16,$f10,$f18
    21a4:	46048302 	mul.s	$f12,$f16,$f4
    21a8:	0c000000 	jal	0 <EnGoma_Init>
    21ac:	00000000 	nop
    21b0:	c60c0050 	lwc1	$f12,80(s0)
    21b4:	c60e0054 	lwc1	$f14,84(s0)
    21b8:	8e060058 	lw	a2,88(s0)
    21bc:	0c000000 	jal	0 <EnGoma_Init>
    21c0:	24070001 	li	a3,1
    21c4:	8e050150 	lw	a1,336(s0)
    21c8:	8e06016c 	lw	a2,364(s0)
    21cc:	3c070000 	lui	a3,0x0
    21d0:	24e70000 	addiu	a3,a3,0
    21d4:	afb00014 	sw	s0,20(sp)
    21d8:	afa00010 	sw	zero,16(sp)
    21dc:	0c000000 	jal	0 <EnGoma_Init>
    21e0:	8fa4007c 	lw	a0,124(sp)
    21e4:	100000b6 	b	24c0 <EnGoma_Draw+0x4a8>
    21e8:	8fab007c 	lw	t3,124(sp)
    21ec:	860e02c0 	lh	t6,704(s0)
    21f0:	3c0140a0 	lui	at,0x40a0
    21f4:	44815000 	mtc1	at,$f10
    21f8:	448e3000 	mtc1	t6,$f6
    21fc:	240d0002 	li	t5,2
    2200:	a20d0117 	sb	t5,279(s0)
    2204:	46803220 	cvt.s.w	$f8,$f6
    2208:	3c010000 	lui	at,0x0
    220c:	c4300000 	lwc1	$f16,0(at)
    2210:	3c014334 	lui	at,0x4334
    2214:	44813000 	mtc1	at,$f6
    2218:	460a4482 	mul.s	$f18,$f8,$f10
    221c:	00000000 	nop
    2220:	46109102 	mul.s	$f4,$f18,$f16
    2224:	0c000000 	jal	0 <EnGoma_Init>
    2228:	46062303 	div.s	$f12,$f4,$f6
    222c:	3c010000 	lui	at,0x0
    2230:	c4280000 	lwc1	$f8,0(at)
    2234:	8e2202c0 	lw	v0,704(s1)
    2238:	3c19db06 	lui	t9,0xdb06
    223c:	46080282 	mul.s	$f10,$f0,$f8
    2240:	24580008 	addiu	t8,v0,8
    2244:	ae3802c0 	sw	t8,704(s1)
    2248:	37390020 	ori	t9,t9,0x20
    224c:	ac590000 	sw	t9,0(v0)
    2250:	8fa8007c 	lw	t0,124(sp)
    2254:	00002825 	move	a1,zero
    2258:	4600548d 	trunc.w.s	$f18,$f10
    225c:	8d040000 	lw	a0,0(t0)
    2260:	afa20054 	sw	v0,84(sp)
    2264:	44069000 	mfc1	a2,$f18
    2268:	00000000 	nop
    226c:	00063400 	sll	a2,a2,0x10
    2270:	00063403 	sra	a2,a2,0x10
    2274:	24c6001f 	addiu	a2,a2,31
    2278:	00063400 	sll	a2,a2,0x10
    227c:	0c000000 	jal	0 <EnGoma_Init>
    2280:	00063403 	sra	a2,a2,0x10
    2284:	8fa30054 	lw	v1,84(sp)
    2288:	0c000000 	jal	0 <EnGoma_Init>
    228c:	ac620004 	sw	v0,4(v1)
    2290:	c60c02d0 	lwc1	$f12,720(s0)
    2294:	3c013f80 	lui	at,0x3f80
    2298:	44818000 	mtc1	at,$f16
    229c:	44066000 	mfc1	a2,$f12
    22a0:	24070001 	li	a3,1
    22a4:	0c000000 	jal	0 <EnGoma_Init>
    22a8:	460c8383 	div.s	$f14,$f16,$f12
    22ac:	3c010000 	lui	at,0x0
    22b0:	c4260000 	lwc1	$f6,0(at)
    22b4:	c60402d8 	lwc1	$f4,728(s0)
    22b8:	24050001 	li	a1,1
    22bc:	46062302 	mul.s	$f12,$f4,$f6
    22c0:	0c000000 	jal	0 <EnGoma_Init>
    22c4:	00000000 	nop
    22c8:	3c010000 	lui	at,0x0
    22cc:	c42a0000 	lwc1	$f10,0(at)
    22d0:	c60802d8 	lwc1	$f8,728(s0)
    22d4:	24050001 	li	a1,1
    22d8:	460a4302 	mul.s	$f12,$f8,$f10
    22dc:	0c000000 	jal	0 <EnGoma_Init>
    22e0:	00000000 	nop
    22e4:	3c010000 	lui	at,0x0
    22e8:	c4320000 	lwc1	$f18,0(at)
    22ec:	c60002ec 	lwc1	$f0,748(s0)
    22f0:	3c010000 	lui	at,0x0
    22f4:	c4300000 	lwc1	$f16,0(at)
    22f8:	46009301 	sub.s	$f12,$f18,$f0
    22fc:	24070001 	li	a3,1
    2300:	46100380 	add.s	$f14,$f0,$f16
    2304:	44066000 	mfc1	a2,$f12
    2308:	0c000000 	jal	0 <EnGoma_Init>
    230c:	00000000 	nop
    2310:	3c010000 	lui	at,0x0
    2314:	c4260000 	lwc1	$f6,0(at)
    2318:	c60402d8 	lwc1	$f4,728(s0)
    231c:	24050001 	li	a1,1
    2320:	46062302 	mul.s	$f12,$f4,$f6
    2324:	0c000000 	jal	0 <EnGoma_Init>
    2328:	46006307 	neg.s	$f12,$f12
    232c:	3c010000 	lui	at,0x0
    2330:	c42a0000 	lwc1	$f10,0(at)
    2334:	c60802d8 	lwc1	$f8,728(s0)
    2338:	24050001 	li	a1,1
    233c:	460a4302 	mul.s	$f12,$f8,$f10
    2340:	0c000000 	jal	0 <EnGoma_Init>
    2344:	46006307 	neg.s	$f12,$f12
    2348:	44806000 	mtc1	zero,$f12
    234c:	c60e02f0 	lwc1	$f14,752(s0)
    2350:	24070001 	li	a3,1
    2354:	44066000 	mfc1	a2,$f12
    2358:	0c000000 	jal	0 <EnGoma_Init>
    235c:	00000000 	nop
    2360:	c60c02d4 	lwc1	$f12,724(s0)
    2364:	0c000000 	jal	0 <EnGoma_Init>
    2368:	24050001 	li	a1,1
    236c:	8e2202c0 	lw	v0,704(s1)
    2370:	3c0ada38 	lui	t2,0xda38
    2374:	354a0003 	ori	t2,t2,0x3
    2378:	24490008 	addiu	t1,v0,8
    237c:	ae2902c0 	sw	t1,704(s1)
    2380:	ac4a0000 	sw	t2,0(v0)
    2384:	8fab007c 	lw	t3,124(sp)
    2388:	3c050000 	lui	a1,0x0
    238c:	24a50000 	addiu	a1,a1,0
    2390:	24060835 	li	a2,2101
    2394:	00408025 	move	s0,v0
    2398:	0c000000 	jal	0 <EnGoma_Init>
    239c:	8d640000 	lw	a0,0(t3)
    23a0:	ae020004 	sw	v0,4(s0)
    23a4:	8e2202c0 	lw	v0,704(s1)
    23a8:	3c0e0600 	lui	t6,0x600
    23ac:	25ce2a70 	addiu	t6,t6,10864
    23b0:	244c0008 	addiu	t4,v0,8
    23b4:	ae2c02c0 	sw	t4,704(s1)
    23b8:	3c0dde00 	lui	t5,0xde00
    23bc:	ac4d0000 	sw	t5,0(v0)
    23c0:	0c000000 	jal	0 <EnGoma_Init>
    23c4:	ac4e0004 	sw	t6,4(v0)
    23c8:	1000003d 	b	24c0 <EnGoma_Draw+0x4a8>
    23cc:	8fab007c 	lw	t3,124(sp)
    23d0:	8e2202c0 	lw	v0,704(s1)
    23d4:	37180003 	ori	t8,t8,0x3
    23d8:	3c050000 	lui	a1,0x0
    23dc:	244f0008 	addiu	t7,v0,8
    23e0:	ae2f02c0 	sw	t7,704(s1)
    23e4:	ac580000 	sw	t8,0(v0)
    23e8:	8fb9007c 	lw	t9,124(sp)
    23ec:	24a50000 	addiu	a1,a1,0
    23f0:	2406083b 	li	a2,2107
    23f4:	00408025 	move	s0,v0
    23f8:	0c000000 	jal	0 <EnGoma_Init>
    23fc:	8f240000 	lw	a0,0(t9)
    2400:	ae020004 	sw	v0,4(s0)
    2404:	8e2202c0 	lw	v0,704(s1)
    2408:	3c0a0500 	lui	t2,0x500
    240c:	254a0530 	addiu	t2,t2,1328
    2410:	24480008 	addiu	t0,v0,8
    2414:	ae2802c0 	sw	t0,704(s1)
    2418:	3c09de00 	lui	t1,0xde00
    241c:	ac490000 	sw	t1,0(v0)
    2420:	10000026 	b	24bc <EnGoma_Draw+0x4a4>
    2424:	ac4a0004 	sw	t2,4(v0)
    2428:	8e0b0308 	lw	t3,776(s0)
    242c:	51600024 	beqzl	t3,24c0 <EnGoma_Draw+0x4a8>
    2430:	8fab007c 	lw	t3,124(sp)
    2434:	8e2202c0 	lw	v0,704(s1)
    2438:	3c0ddb06 	lui	t5,0xdb06
    243c:	35ad0020 	ori	t5,t5,0x20
    2440:	244c0008 	addiu	t4,v0,8
    2444:	ae2c02c0 	sw	t4,704(s1)
    2448:	ac4d0000 	sw	t5,0(v0)
    244c:	8fae007c 	lw	t6,124(sp)
    2450:	8dc40000 	lw	a0,0(t6)
    2454:	0c000000 	jal	0 <EnGoma_Init>
    2458:	afa20040 	sw	v0,64(sp)
    245c:	8fa30040 	lw	v1,64(sp)
    2460:	3c18da38 	lui	t8,0xda38
    2464:	37180003 	ori	t8,t8,0x3
    2468:	ac620004 	sw	v0,4(v1)
    246c:	8e2202c0 	lw	v0,704(s1)
    2470:	3c050000 	lui	a1,0x0
    2474:	24a50000 	addiu	a1,a1,0
    2478:	244f0008 	addiu	t7,v0,8
    247c:	ae2f02c0 	sw	t7,704(s1)
    2480:	ac580000 	sw	t8,0(v0)
    2484:	8fb9007c 	lw	t9,124(sp)
    2488:	24060842 	li	a2,2114
    248c:	8f240000 	lw	a0,0(t9)
    2490:	0c000000 	jal	0 <EnGoma_Init>
    2494:	afa2003c 	sw	v0,60(sp)
    2498:	8fa3003c 	lw	v1,60(sp)
    249c:	3c09de00 	lui	t1,0xde00
    24a0:	ac620004 	sw	v0,4(v1)
    24a4:	8e2202c0 	lw	v0,704(s1)
    24a8:	24480008 	addiu	t0,v0,8
    24ac:	ae2802c0 	sw	t0,704(s1)
    24b0:	ac490000 	sw	t1,0(v0)
    24b4:	8e0a0308 	lw	t2,776(s0)
    24b8:	ac4a0004 	sw	t2,4(v0)
    24bc:	8fab007c 	lw	t3,124(sp)
    24c0:	3c060000 	lui	a2,0x0
    24c4:	24c60000 	addiu	a2,a2,0
    24c8:	27a40058 	addiu	a0,sp,88
    24cc:	24070847 	li	a3,2119
    24d0:	0c000000 	jal	0 <EnGoma_Init>
    24d4:	8d650000 	lw	a1,0(t3)
    24d8:	8fbf0024 	lw	ra,36(sp)
    24dc:	8fb0001c 	lw	s0,28(sp)
    24e0:	8fb10020 	lw	s1,32(sp)
    24e4:	03e00008 	jr	ra
    24e8:	27bd0078 	addiu	sp,sp,120

000024ec <func_80A4B3AC>:
    24ec:	27bdffe8 	addiu	sp,sp,-24
    24f0:	afbf0014 	sw	ra,20(sp)
    24f4:	afa5001c 	sw	a1,28(sp)
    24f8:	848e00b6 	lh	t6,182(a0)
    24fc:	849800b4 	lh	t8,180(a0)
    2500:	848802cc 	lh	t0,716(a0)
    2504:	25cf09c4 	addiu	t7,t6,2500
    2508:	27190dac 	addiu	t9,t8,3500
    250c:	a48f00b6 	sh	t7,182(a0)
    2510:	15000003 	bnez	t0,2520 <func_80A4B3AC+0x34>
    2514:	a49900b4 	sh	t9,180(a0)
    2518:	0c000000 	jal	0 <EnGoma_Init>
    251c:	00000000 	nop
    2520:	8fbf0014 	lw	ra,20(sp)
    2524:	27bd0018 	addiu	sp,sp,24
    2528:	03e00008 	jr	ra
    252c:	00000000 	nop

00002530 <func_80A4B3F0>:
    2530:	27bdff88 	addiu	sp,sp,-120
    2534:	afbf0074 	sw	ra,116(sp)
    2538:	afb30070 	sw	s3,112(sp)
    253c:	afb2006c 	sw	s2,108(sp)
    2540:	afb10068 	sw	s1,104(sp)
    2544:	afb00064 	sw	s0,100(sp)
    2548:	f7be0058 	sdc1	$f30,88(sp)
    254c:	f7bc0050 	sdc1	$f28,80(sp)
    2550:	f7ba0048 	sdc1	$f26,72(sp)
    2554:	f7b80040 	sdc1	$f24,64(sp)
    2558:	f7b60038 	sdc1	$f22,56(sp)
    255c:	f7b40030 	sdc1	$f20,48(sp)
    2560:	848e001c 	lh	t6,28(a0)
    2564:	00808825 	move	s1,a0
    2568:	00a09025 	move	s2,a1
    256c:	29c10006 	slti	at,t6,6
    2570:	10200008 	beqz	at,2594 <func_80A4B3F0+0x64>
    2574:	02402025 	move	a0,s2
    2578:	00a02025 	move	a0,a1
    257c:	26250024 	addiu	a1,s1,36
    2580:	24060028 	li	a2,40
    2584:	0c000000 	jal	0 <EnGoma_Init>
    2588:	24073815 	li	a3,14357
    258c:	10000006 	b	25a8 <func_80A4B3F0+0x78>
    2590:	3c014170 	lui	at,0x4170
    2594:	26250024 	addiu	a1,s1,36
    2598:	24060028 	li	a2,40
    259c:	0c000000 	jal	0 <EnGoma_Init>
    25a0:	24073962 	li	a3,14690
    25a4:	3c014170 	lui	at,0x4170
    25a8:	4481f000 	mtc1	at,$f30
    25ac:	3c010000 	lui	at,0x0
    25b0:	c43c0000 	lwc1	$f28,0(at)
    25b4:	3c014120 	lui	at,0x4120
    25b8:	4481d000 	mtc1	at,$f26
    25bc:	00008025 	move	s0,zero
    25c0:	26531c24 	addiu	s3,s2,7204
    25c4:	0c000000 	jal	0 <EnGoma_Init>
    25c8:	4600d306 	mov.s	$f12,$f26
    25cc:	46000506 	mov.s	$f20,$f0
    25d0:	0c000000 	jal	0 <EnGoma_Init>
    25d4:	4600d306 	mov.s	$f12,$f26
    25d8:	46000586 	mov.s	$f22,$f0
    25dc:	0c000000 	jal	0 <EnGoma_Init>
    25e0:	4600d306 	mov.s	$f12,$f26
    25e4:	46000606 	mov.s	$f24,$f0
    25e8:	0c000000 	jal	0 <EnGoma_Init>
    25ec:	4600e306 	mov.s	$f12,$f28
    25f0:	c6240024 	lwc1	$f4,36(s1)
    25f4:	2619000a 	addiu	t9,s0,10
    25f8:	02602025 	move	a0,s3
    25fc:	4604a180 	add.s	$f6,$f20,$f4
    2600:	02202825 	move	a1,s1
    2604:	02403025 	move	a2,s2
    2608:	2407002b 	li	a3,43
    260c:	e7a60010 	swc1	$f6,16(sp)
    2610:	c6280028 	lwc1	$f8,40(s1)
    2614:	4600018d 	trunc.w.s	$f6,$f0
    2618:	4608b280 	add.s	$f10,$f22,$f8
    261c:	44183000 	mfc1	t8,$f6
    2620:	461e5400 	add.s	$f16,$f10,$f30
    2624:	e7b00014 	swc1	$f16,20(sp)
    2628:	c632002c 	lwc1	$f18,44(s1)
    262c:	afb90028 	sw	t9,40(sp)
    2630:	afa00024 	sw	zero,36(sp)
    2634:	4612c100 	add.s	$f4,$f24,$f18
    2638:	afa0001c 	sw	zero,28(sp)
    263c:	afb80020 	sw	t8,32(sp)
    2640:	0c000000 	jal	0 <EnGoma_Init>
    2644:	e7a40018 	swc1	$f4,24(sp)
    2648:	26100001 	addiu	s0,s0,1
    264c:	00108400 	sll	s0,s0,0x10
    2650:	00108403 	sra	s0,s0,0x10
    2654:	2a01000f 	slti	at,s0,15
    2658:	1420ffda 	bnez	at,25c4 <func_80A4B3F0+0x94>
    265c:	00000000 	nop
    2660:	8fbf0074 	lw	ra,116(sp)
    2664:	d7b40030 	ldc1	$f20,48(sp)
    2668:	d7b60038 	ldc1	$f22,56(sp)
    266c:	d7b80040 	ldc1	$f24,64(sp)
    2670:	d7ba0048 	ldc1	$f26,72(sp)
    2674:	d7bc0050 	ldc1	$f28,80(sp)
    2678:	d7be0058 	ldc1	$f30,88(sp)
    267c:	8fb00064 	lw	s0,100(sp)
    2680:	8fb10068 	lw	s1,104(sp)
    2684:	8fb2006c 	lw	s2,108(sp)
    2688:	8fb30070 	lw	s3,112(sp)
    268c:	03e00008 	jr	ra
    2690:	27bd0078 	addiu	sp,sp,120

00002694 <func_80A4B554>:
    2694:	27bdff90 	addiu	sp,sp,-112
    2698:	3c0f0000 	lui	t7,0x0
    269c:	afbf0034 	sw	ra,52(sp)
    26a0:	afb00030 	sw	s0,48(sp)
    26a4:	afa50074 	sw	a1,116(sp)
    26a8:	25ef0000 	addiu	t7,t7,0
    26ac:	8df90000 	lw	t9,0(t7)
    26b0:	27ae0064 	addiu	t6,sp,100
    26b4:	8df80004 	lw	t8,4(t7)
    26b8:	add90000 	sw	t9,0(t6)
    26bc:	8df90008 	lw	t9,8(t7)
    26c0:	3c090000 	lui	t1,0x0
    26c4:	25290000 	addiu	t1,t1,0
    26c8:	add80004 	sw	t8,4(t6)
    26cc:	add90008 	sw	t9,8(t6)
    26d0:	8d2b0000 	lw	t3,0(t1)
    26d4:	27a80058 	addiu	t0,sp,88
    26d8:	8d2a0004 	lw	t2,4(t1)
    26dc:	ad0b0000 	sw	t3,0(t0)
    26e0:	8d2b0008 	lw	t3,8(t1)
    26e4:	ad0a0004 	sw	t2,4(t0)
    26e8:	3c0c0000 	lui	t4,0x0
    26ec:	ad0b0008 	sw	t3,8(t0)
    26f0:	3c0d0000 	lui	t5,0x0
    26f4:	8d8c0000 	lw	t4,0(t4)
    26f8:	8dad0000 	lw	t5,0(t5)
    26fc:	3c014248 	lui	at,0x4248
    2700:	44810000 	mtc1	at,$f0
    2704:	3c0140a0 	lui	at,0x40a0
    2708:	afac0054 	sw	t4,84(sp)
    270c:	afad0050 	sw	t5,80(sp)
    2710:	c4840028 	lwc1	$f4,40(a0)
    2714:	44813000 	mtc1	at,$f6
    2718:	3c0142c8 	lui	at,0x42c8
    271c:	44815000 	mtc1	at,$f10
    2720:	46062201 	sub.s	$f8,$f4,$f6
    2724:	00808025 	move	s0,a0
    2728:	240e0004 	li	t6,4
    272c:	44060000 	mfc1	a2,$f0
    2730:	e4880028 	swc1	$f8,40(a0)
    2734:	44070000 	mfc1	a3,$f0
    2738:	afae0014 	sw	t6,20(sp)
    273c:	8fa40074 	lw	a0,116(sp)
    2740:	02002825 	move	a1,s0
    2744:	0c000000 	jal	0 <EnGoma_Init>
    2748:	e7aa0010 	swc1	$f10,16(sp)
    274c:	3c0140a0 	lui	at,0x40a0
    2750:	44819000 	mtc1	at,$f18
    2754:	c6100028 	lwc1	$f16,40(s0)
    2758:	960f0088 	lhu	t7,136(s0)
    275c:	26040054 	addiu	a0,s0,84
    2760:	46128100 	add.s	$f4,$f16,$f18
    2764:	31f80001 	andi	t8,t7,0x1
    2768:	24050000 	li	a1,0
    276c:	13000005 	beqz	t8,2784 <func_80A4B554+0xf0>
    2770:	e6040028 	swc1	$f4,40(s0)
    2774:	44803000 	mtc1	zero,$f6
    2778:	860202cc 	lh	v0,716(s0)
    277c:	10000009 	b	27a4 <func_80A4B554+0x110>
    2780:	e6060060 	swc1	$f6,96(s0)
    2784:	860202cc 	lh	v0,716(s0)
    2788:	284100fa 	slti	at,v0,250
    278c:	50200006 	beqzl	at,27a8 <func_80A4B554+0x114>
    2790:	240100fa 	li	at,250
    2794:	861900b6 	lh	t9,182(s0)
    2798:	860202cc 	lh	v0,716(s0)
    279c:	272807d0 	addiu	t0,t9,2000
    27a0:	a60800b6 	sh	t0,182(s0)
    27a4:	240100fa 	li	at,250
    27a8:	14410005 	bne	v0,at,27c0 <func_80A4B554+0x12c>
    27ac:	3c063f80 	lui	a2,0x3f80
    27b0:	3c01bf80 	lui	at,0xbf80
    27b4:	44814000 	mtc1	at,$f8
    27b8:	860202cc 	lh	v0,716(s0)
    27bc:	e608006c 	swc1	$f8,108(s0)
    27c0:	28410079 	slti	at,v0,121
    27c4:	10200011 	beqz	at,280c <func_80A4B554+0x178>
    27c8:	3c073a44 	lui	a3,0x3a44
    27cc:	44805000 	mtc1	zero,$f10
    27d0:	34e79ba6 	ori	a3,a3,0x9ba6
    27d4:	0c000000 	jal	0 <EnGoma_Init>
    27d8:	e7aa0010 	swc1	$f10,16(sp)
    27dc:	3c010000 	lui	at,0x0
    27e0:	c4300000 	lwc1	$f16,0(at)
    27e4:	4610003e 	c.le.s	$f0,$f16
    27e8:	00000000 	nop
    27ec:	45020004 	bc1fl	2800 <func_80A4B554+0x16c>
    27f0:	c6000054 	lwc1	$f0,84(s0)
    27f4:	0c000000 	jal	0 <EnGoma_Init>
    27f8:	02002025 	move	a0,s0
    27fc:	c6000054 	lwc1	$f0,84(s0)
    2800:	860202cc 	lh	v0,716(s0)
    2804:	e6000058 	swc1	$f0,88(s0)
    2808:	e6000050 	swc1	$f0,80(s0)
    280c:	30490007 	andi	t1,v0,0x7
    2810:	55200025 	bnezl	t1,28a8 <func_80A4B554+0x214>
    2814:	8fbf0034 	lw	ra,52(sp)
    2818:	10400022 	beqz	v0,28a4 <func_80A4B554+0x210>
    281c:	3c0141a0 	lui	at,0x41a0
    2820:	44816000 	mtc1	at,$f12
    2824:	0c000000 	jal	0 <EnGoma_Init>
    2828:	00000000 	nop
    282c:	c6120024 	lwc1	$f18,36(s0)
    2830:	3c014120 	lui	at,0x4120
    2834:	44816000 	mtc1	at,$f12
    2838:	46120100 	add.s	$f4,$f0,$f18
    283c:	0c000000 	jal	0 <EnGoma_Init>
    2840:	e7a40044 	swc1	$f4,68(sp)
    2844:	c6060028 	lwc1	$f6,40(s0)
    2848:	3c0141a0 	lui	at,0x41a0
    284c:	44816000 	mtc1	at,$f12
    2850:	46060200 	add.s	$f8,$f0,$f6
    2854:	0c000000 	jal	0 <EnGoma_Init>
    2858:	e7a80048 	swc1	$f8,72(sp)
    285c:	c60a002c 	lwc1	$f10,44(s0)
    2860:	27aa0054 	addiu	t2,sp,84
    2864:	27ab0050 	addiu	t3,sp,80
    2868:	460a0400 	add.s	$f16,$f0,$f10
    286c:	240c01f4 	li	t4,500
    2870:	240d000a 	li	t5,10
    2874:	240e000a 	li	t6,10
    2878:	e7b0004c 	swc1	$f16,76(sp)
    287c:	afae0020 	sw	t6,32(sp)
    2880:	afad001c 	sw	t5,28(sp)
    2884:	afac0018 	sw	t4,24(sp)
    2888:	afab0014 	sw	t3,20(sp)
    288c:	afaa0010 	sw	t2,16(sp)
    2890:	8fa40074 	lw	a0,116(sp)
    2894:	27a50044 	addiu	a1,sp,68
    2898:	27a60064 	addiu	a2,sp,100
    289c:	0c000000 	jal	0 <EnGoma_Init>
    28a0:	27a70058 	addiu	a3,sp,88
    28a4:	8fbf0034 	lw	ra,52(sp)
    28a8:	8fb00030 	lw	s0,48(sp)
    28ac:	27bd0070 	addiu	sp,sp,112
    28b0:	03e00008 	jr	ra
    28b4:	00000000 	nop
	...
