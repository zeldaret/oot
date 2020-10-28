
build/src/overlays/actors/ovl_En_Diving_Game/z_en_diving_game.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDivingGame_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	3c01c040 	lui	at,0xc040
       8:	44812000 	mtc1	at,$f4
       c:	afb00028 	sw	s0,40(sp)
      10:	00808025 	move	s0,a0
      14:	afbf002c 	sw	ra,44(sp)
      18:	afa5003c 	sw	a1,60(sp)
      1c:	3c060000 	lui	a2,0x0
      20:	24c60000 	addiu	a2,a2,0
      24:	24050000 	li	a1,0
      28:	248400b4 	addiu	a0,a0,180
      2c:	3c0741f0 	lui	a3,0x41f0
      30:	0c000000 	jal	0 <EnDivingGame_Init>
      34:	e484ffb8 	swc1	$f4,-72(a0)
      38:	3c060601 	lui	a2,0x601
      3c:	3c070600 	lui	a3,0x600
      40:	260e0190 	addiu	t6,s0,400
      44:	260f0208 	addiu	t7,s0,520
      48:	24180014 	li	t8,20
      4c:	afb80018 	sw	t8,24(sp)
      50:	afaf0014 	sw	t7,20(sp)
      54:	afae0010 	sw	t6,16(sp)
      58:	24e72fe8 	addiu	a3,a3,12264
      5c:	24c6bfa8 	addiu	a2,a2,-16472
      60:	8fa4003c 	lw	a0,60(sp)
      64:	0c000000 	jal	0 <EnDivingGame_Init>
      68:	2605014c 	addiu	a1,s0,332
      6c:	2605034c 	addiu	a1,s0,844
      70:	afa50030 	sw	a1,48(sp)
      74:	0c000000 	jal	0 <EnDivingGame_Init>
      78:	8fa4003c 	lw	a0,60(sp)
      7c:	3c070000 	lui	a3,0x0
      80:	8fa50030 	lw	a1,48(sp)
      84:	24e70000 	addiu	a3,a3,0
      88:	8fa4003c 	lw	a0,60(sp)
      8c:	0c000000 	jal	0 <EnDivingGame_Init>
      90:	02003025 	move	a2,s0
      94:	3c040000 	lui	a0,0x0
      98:	0c000000 	jal	0 <EnDivingGame_Init>
      9c:	24840000 	addiu	a0,a0,0
      a0:	2419ffff 	li	t9,-1
      a4:	a2190003 	sb	t9,3(s0)
      a8:	3c010000 	lui	at,0x0
      ac:	c4260000 	lwc1	$f6,0(at)
      b0:	3c010000 	lui	at,0x0
      b4:	3c020000 	lui	v0,0x0
      b8:	e6060050 	swc1	$f6,80(s0)
      bc:	c4280000 	lwc1	$f8,0(at)
      c0:	3c010000 	lui	at,0x0
      c4:	24420000 	addiu	v0,v0,0
      c8:	e6080054 	swc1	$f8,84(s0)
      cc:	c42a0000 	lwc1	$f10,0(at)
      d0:	3c0c0000 	lui	t4,0x0
      d4:	3c040000 	lui	a0,0x0
      d8:	e60a0058 	swc1	$f10,88(s0)
      dc:	90480000 	lbu	t0,0(v0)
      e0:	240a0001 	li	t2,1
      e4:	240b00ff 	li	t3,255
      e8:	11000009 	beqz	t0,110 <EnDivingGame_Init+0x110>
      ec:	258c0000 	addiu	t4,t4,0
      f0:	0c000000 	jal	0 <EnDivingGame_Init>
      f4:	24840000 	addiu	a0,a0,0
      f8:	24090001 	li	t1,1
      fc:	a209031f 	sb	t1,799(s0)
     100:	0c000000 	jal	0 <EnDivingGame_Init>
     104:	02002025 	move	a0,s0
     108:	10000006 	b	124 <EnDivingGame_Init+0x124>
     10c:	8fbf002c 	lw	ra,44(sp)
     110:	a04a0000 	sb	t2,0(v0)
     114:	a200001f 	sb	zero,31(s0)
     118:	a20b00ae 	sb	t3,174(s0)
     11c:	ae0c0280 	sw	t4,640(s0)
     120:	8fbf002c 	lw	ra,44(sp)
     124:	8fb00028 	lw	s0,40(sp)
     128:	27bd0038 	addiu	sp,sp,56
     12c:	03e00008 	jr	ra
     130:	00000000 	nop

00000134 <EnDivingGame_Destroy>:
     134:	27bdffe8 	addiu	sp,sp,-24
     138:	afbf0014 	sw	ra,20(sp)
     13c:	908e031f 	lbu	t6,799(a0)
     140:	00803025 	move	a2,a0
     144:	00a03825 	move	a3,a1
     148:	15c00003 	bnez	t6,158 <EnDivingGame_Destroy+0x24>
     14c:	00e02025 	move	a0,a3
     150:	3c010000 	lui	at,0x0
     154:	a42013ce 	sh	zero,5070(at)
     158:	0c000000 	jal	0 <EnDivingGame_Init>
     15c:	24c5034c 	addiu	a1,a2,844
     160:	8fbf0014 	lw	ra,20(sp)
     164:	27bd0018 	addiu	sp,sp,24
     168:	03e00008 	jr	ra
     16c:	00000000 	nop

00000170 <func_809ED9E0>:
     170:	27bdffb0 	addiu	sp,sp,-80
     174:	afbf003c 	sw	ra,60(sp)
     178:	afb00038 	sw	s0,56(sp)
     17c:	00808025 	move	s0,a0
     180:	0c000000 	jal	0 <EnDivingGame_Init>
     184:	afa50054 	sw	a1,84(sp)
     188:	3c013f00 	lui	at,0x3f00
     18c:	44812000 	mtc1	at,$f4
     190:	3c0141f0 	lui	at,0x41f0
     194:	44814000 	mtc1	at,$f8
     198:	46040181 	sub.s	$f6,$f0,$f4
     19c:	c6100024 	lwc1	$f16,36(s0)
     1a0:	46083282 	mul.s	$f10,$f6,$f8
     1a4:	46105480 	add.s	$f18,$f10,$f16
     1a8:	0c000000 	jal	0 <EnDivingGame_Init>
     1ac:	e7b20040 	swc1	$f18,64(sp)
     1b0:	3c013f00 	lui	at,0x3f00
     1b4:	44812000 	mtc1	at,$f4
     1b8:	3c0141a0 	lui	at,0x41a0
     1bc:	44814000 	mtc1	at,$f8
     1c0:	46040181 	sub.s	$f6,$f0,$f4
     1c4:	3c0141f0 	lui	at,0x41f0
     1c8:	44819000 	mtc1	at,$f18
     1cc:	c6100028 	lwc1	$f16,40(s0)
     1d0:	46083282 	mul.s	$f10,$f6,$f8
     1d4:	46128100 	add.s	$f4,$f16,$f18
     1d8:	46045180 	add.s	$f6,$f10,$f4
     1dc:	0c000000 	jal	0 <EnDivingGame_Init>
     1e0:	e7a60044 	swc1	$f6,68(sp)
     1e4:	3c013f00 	lui	at,0x3f00
     1e8:	44814000 	mtc1	at,$f8
     1ec:	3c0141a0 	lui	at,0x41a0
     1f0:	44819000 	mtc1	at,$f18
     1f4:	46080401 	sub.s	$f16,$f0,$f8
     1f8:	c604002c 	lwc1	$f4,44(s0)
     1fc:	3c010000 	lui	at,0x0
     200:	c42c0000 	lwc1	$f12,0(at)
     204:	46128282 	mul.s	$f10,$f16,$f18
     208:	46045180 	add.s	$f6,$f10,$f4
     20c:	0c000000 	jal	0 <EnDivingGame_Init>
     210:	e7a60048 	swc1	$f6,72(sp)
     214:	4600028d 	trunc.w.s	$f10,$f0
     218:	c7a80040 	lwc1	$f8,64(sp)
     21c:	c7b00044 	lwc1	$f16,68(sp)
     220:	c7b20048 	lwc1	$f18,72(sp)
     224:	440f5000 	mfc1	t7,$f10
     228:	afa0001c 	sw	zero,28(sp)
     22c:	e7a80010 	swc1	$f8,16(sp)
     230:	000fc400 	sll	t8,t7,0x10
     234:	0018cc03 	sra	t9,t8,0x10
     238:	2728fc18 	addiu	t0,t9,-1000
     23c:	afa80020 	sw	t0,32(sp)
     240:	e7b00014 	swc1	$f16,20(sp)
     244:	e7b20018 	swc1	$f18,24(sp)
     248:	860902a6 	lh	t1,678(s0)
     24c:	8fa60054 	lw	a2,84(sp)
     250:	afa00028 	sw	zero,40(sp)
     254:	02002825 	move	a1,s0
     258:	24070131 	li	a3,305
     25c:	afa90024 	sw	t1,36(sp)
     260:	0c000000 	jal	0 <EnDivingGame_Init>
     264:	24c41c24 	addiu	a0,a2,7204
     268:	10400006 	beqz	v0,284 <func_809ED9E0+0x114>
     26c:	3c014140 	lui	at,0x4140
     270:	44812000 	mtc1	at,$f4
     274:	3c0140c0 	lui	at,0x40c0
     278:	44813000 	mtc1	at,$f6
     27c:	e4440068 	swc1	$f4,104(v0)
     280:	e4460060 	swc1	$f6,96(v0)
     284:	8fbf003c 	lw	ra,60(sp)
     288:	8fb00038 	lw	s0,56(sp)
     28c:	27bd0050 	addiu	sp,sp,80
     290:	03e00008 	jr	ra
     294:	00000000 	nop

00000298 <func_809EDB08>:
     298:	3c030000 	lui	v1,0x0
     29c:	24630000 	addiu	v1,v1,0
     2a0:	846e13ce 	lh	t6,5070(v1)
     2a4:	27bdffe0 	addiu	sp,sp,-32
     2a8:	afb00018 	sw	s0,24(sp)
     2ac:	2401000a 	li	at,10
     2b0:	00808025 	move	s0,a0
     2b4:	afbf001c 	sw	ra,28(sp)
     2b8:	15c10020 	bne	t6,at,33c <func_809EDB08+0xa4>
     2bc:	afa50024 	sw	a1,36(sp)
     2c0:	0c000000 	jal	0 <EnDivingGame_Init>
     2c4:	00a02025 	move	a0,a1
     2c8:	1440001c 	bnez	v0,33c <func_809EDB08+0xa4>
     2cc:	3c010000 	lui	at,0x0
     2d0:	0c000000 	jal	0 <EnDivingGame_Init>
     2d4:	a42013ce 	sh	zero,5070(at)
     2d8:	0c000000 	jal	0 <EnDivingGame_Init>
     2dc:	2404482c 	li	a0,18476
     2e0:	240f71ad 	li	t7,29101
     2e4:	a60f010e 	sh	t7,270(s0)
     2e8:	8fa40024 	lw	a0,36(sp)
     2ec:	31e5ffff 	andi	a1,t7,0xffff
     2f0:	0c000000 	jal	0 <EnDivingGame_Init>
     2f4:	00003025 	move	a2,zero
     2f8:	a60002a4 	sh	zero,676(s0)
     2fc:	860202a4 	lh	v0,676(s0)
     300:	24180005 	li	t8,5
     304:	a6180292 	sh	t8,658(s0)
     308:	a60202a2 	sh	v0,674(s0)
     30c:	a602029c 	sh	v0,668(s0)
     310:	a60202a8 	sh	v0,680(s0)
     314:	a202031e 	sb	v0,798(s0)
     318:	8fa40024 	lw	a0,36(sp)
     31c:	00002825 	move	a1,zero
     320:	0c000000 	jal	0 <EnDivingGame_Init>
     324:	24060008 	li	a2,8
     328:	3c190000 	lui	t9,0x0
     32c:	27390000 	addiu	t9,t9,0
     330:	ae190280 	sw	t9,640(s0)
     334:	1000003d 	b	42c <func_809EDB08+0x194>
     338:	24020001 	li	v0,1
     33c:	3c030000 	lui	v1,0x0
     340:	24630000 	addiu	v1,v1,0
     344:	94680eda 	lhu	t0,3802(v1)
     348:	24020005 	li	v0,5
     34c:	00003025 	move	a2,zero
     350:	31090100 	andi	t1,t0,0x100
     354:	51200003 	beqzl	t1,364 <func_809EDB08+0xcc>
     358:	860a02a4 	lh	t2,676(s0)
     35c:	2402000a 	li	v0,10
     360:	860a02a4 	lh	t2,676(s0)
     364:	0142082a 	slt	at,t2,v0
     368:	14200030 	bnez	at,42c <func_809EDB08+0x194>
     36c:	00001025 	move	v0,zero
     370:	a46013ce 	sh	zero,5070(v1)
     374:	a60002a4 	sh	zero,676(s0)
     378:	860202a4 	lh	v0,676(s0)
     37c:	240d4055 	li	t5,16469
     380:	a60202a2 	sh	v0,674(s0)
     384:	a602029c 	sh	v0,668(s0)
     388:	a60202a8 	sh	v0,680(s0)
     38c:	a202031e 	sb	v0,798(s0)
     390:	946b0eda 	lhu	t3,3802(v1)
     394:	316c0100 	andi	t4,t3,0x100
     398:	55800004 	bnezl	t4,3ac <func_809EDB08+0x114>
     39c:	860202aa 	lh	v0,682(s0)
     3a0:	10000008 	b	3c4 <func_809EDB08+0x12c>
     3a4:	a60d010e 	sh	t5,270(s0)
     3a8:	860202aa 	lh	v0,682(s0)
     3ac:	240e405d 	li	t6,16477
     3b0:	a60e010e 	sh	t6,270(s0)
     3b4:	28410064 	slti	at,v0,100
     3b8:	10200002 	beqz	at,3c4 <func_809EDB08+0x12c>
     3bc:	244f0001 	addiu	t7,v0,1
     3c0:	a60f02aa 	sh	t7,682(s0)
     3c4:	8fa40024 	lw	a0,36(sp)
     3c8:	0c000000 	jal	0 <EnDivingGame_Init>
     3cc:	9605010e 	lhu	a1,270(s0)
     3d0:	24180005 	li	t8,5
     3d4:	0c000000 	jal	0 <EnDivingGame_Init>
     3d8:	a6180292 	sh	t8,658(s0)
     3dc:	0c000000 	jal	0 <EnDivingGame_Init>
     3e0:	24040039 	li	a0,57
     3e4:	8fa40024 	lw	a0,36(sp)
     3e8:	00002825 	move	a1,zero
     3ec:	0c000000 	jal	0 <EnDivingGame_Init>
     3f0:	24060008 	li	a2,8
     3f4:	3c190000 	lui	t9,0x0
     3f8:	97390eda 	lhu	t9,3802(t9)
     3fc:	3c0a0000 	lui	t2,0x0
     400:	3c090000 	lui	t1,0x0
     404:	33280100 	andi	t0,t9,0x100
     408:	15000005 	bnez	t0,420 <func_809EDB08+0x188>
     40c:	254a0000 	addiu	t2,t2,0
     410:	25290000 	addiu	t1,t1,0
     414:	ae090280 	sw	t1,640(s0)
     418:	10000004 	b	42c <func_809EDB08+0x194>
     41c:	24020001 	li	v0,1
     420:	ae0a0280 	sw	t2,640(s0)
     424:	10000001 	b	42c <func_809EDB08+0x194>
     428:	24020001 	li	v0,1
     42c:	8fbf001c 	lw	ra,28(sp)
     430:	8fb00018 	lw	s0,24(sp)
     434:	27bd0020 	addiu	sp,sp,32
     438:	03e00008 	jr	ra
     43c:	00000000 	nop

00000440 <func_809EDCB0>:
     440:	27bdffd8 	addiu	sp,sp,-40
     444:	afa40028 	sw	a0,40(sp)
     448:	afbf0024 	sw	ra,36(sp)
     44c:	3c040600 	lui	a0,0x600
     450:	afa5002c 	sw	a1,44(sp)
     454:	0c000000 	jal	0 <EnDivingGame_Init>
     458:	24842fe8 	addiu	a0,a0,12264
     45c:	44822000 	mtc1	v0,$f4
     460:	3c01c120 	lui	at,0xc120
     464:	44819000 	mtc1	at,$f18
     468:	468021a0 	cvt.s.w	$f6,$f4
     46c:	8fa40028 	lw	a0,40(sp)
     470:	3c050600 	lui	a1,0x600
     474:	24a52fe8 	addiu	a1,a1,12264
     478:	3c063f80 	lui	a2,0x3f80
     47c:	24070000 	li	a3,0
     480:	4600320d 	trunc.w.s	$f8,$f6
     484:	afa00014 	sw	zero,20(sp)
     488:	e7b20018 	swc1	$f18,24(sp)
     48c:	2484014c 	addiu	a0,a0,332
     490:	440f4000 	mfc1	t7,$f8
     494:	00000000 	nop
     498:	000fc400 	sll	t8,t7,0x10
     49c:	0018cc03 	sra	t9,t8,0x10
     4a0:	44995000 	mtc1	t9,$f10
     4a4:	00000000 	nop
     4a8:	46805420 	cvt.s.w	$f16,$f10
     4ac:	0c000000 	jal	0 <EnDivingGame_Init>
     4b0:	e7b00010 	swc1	$f16,16(sp)
     4b4:	8fa20028 	lw	v0,40(sp)
     4b8:	3c090000 	lui	t1,0x0
     4bc:	24080001 	li	t0,1
     4c0:	25290000 	addiu	t1,t1,0
     4c4:	a048031d 	sb	t0,797(v0)
     4c8:	ac490280 	sw	t1,640(v0)
     4cc:	8fbf0024 	lw	ra,36(sp)
     4d0:	27bd0028 	addiu	sp,sp,40
     4d4:	03e00008 	jr	ra
     4d8:	00000000 	nop

000004dc <func_809EDD4C>:
     4dc:	27bdffe0 	addiu	sp,sp,-32
     4e0:	afb00018 	sw	s0,24(sp)
     4e4:	00808025 	move	s0,a0
     4e8:	afbf001c 	sw	ra,28(sp)
     4ec:	afa50024 	sw	a1,36(sp)
     4f0:	0c000000 	jal	0 <EnDivingGame_Init>
     4f4:	2484014c 	addiu	a0,a0,332
     4f8:	860e02a8 	lh	t6,680(s0)
     4fc:	24010002 	li	at,2
     500:	02002025 	move	a0,s0
     504:	55c10005 	bnel	t6,at,51c <func_809EDD4C+0x40>
     508:	02002025 	move	a0,s0
     50c:	0c000000 	jal	0 <EnDivingGame_Init>
     510:	8fa50024 	lw	a1,36(sp)
     514:	14400050 	bnez	v0,658 <func_809EDD4C+0x17c>
     518:	02002025 	move	a0,s0
     51c:	0c000000 	jal	0 <EnDivingGame_Init>
     520:	8fa50024 	lw	a1,36(sp)
     524:	1040001d 	beqz	v0,59c <func_809EDD4C+0xc0>
     528:	8fa40024 	lw	a0,36(sp)
     52c:	860f0292 	lh	t7,658(s0)
     530:	24010006 	li	at,6
     534:	51e10049 	beql	t7,at,65c <func_809EDD4C+0x180>
     538:	8fbf001c 	lw	ra,28(sp)
     53c:	860202a8 	lh	v0,680(s0)
     540:	24010001 	li	at,1
     544:	8fa40024 	lw	a0,36(sp)
     548:	10400008 	beqz	v0,56c <func_809EDD4C+0x90>
     54c:	00002825 	move	a1,zero
     550:	1041000c 	beq	v0,at,584 <func_809EDD4C+0xa8>
     554:	3c190000 	lui	t9,0x0
     558:	24010002 	li	at,2
     55c:	1041000c 	beq	v0,at,590 <func_809EDD4C+0xb4>
     560:	3c080000 	lui	t0,0x0
     564:	1000003d 	b	65c <func_809EDD4C+0x180>
     568:	8fbf001c 	lw	ra,28(sp)
     56c:	0c000000 	jal	0 <EnDivingGame_Init>
     570:	24060008 	li	a2,8
     574:	3c180000 	lui	t8,0x0
     578:	27180000 	addiu	t8,t8,0
     57c:	10000036 	b	658 <func_809EDD4C+0x17c>
     580:	ae180280 	sw	t8,640(s0)
     584:	27390000 	addiu	t9,t9,0
     588:	10000033 	b	658 <func_809EDD4C+0x17c>
     58c:	ae190280 	sw	t9,640(s0)
     590:	25080000 	addiu	t0,t0,0
     594:	10000030 	b	658 <func_809EDD4C+0x17c>
     598:	ae080280 	sw	t0,640(s0)
     59c:	0c000000 	jal	0 <EnDivingGame_Init>
     5a0:	2405001d 	li	a1,29
     5a4:	10400007 	beqz	v0,5c4 <func_809EDD4C+0xe8>
     5a8:	8fa40024 	lw	a0,36(sp)
     5ac:	0c000000 	jal	0 <EnDivingGame_Init>
     5b0:	2405001d 	li	a1,29
     5b4:	24090006 	li	t1,6
     5b8:	a602010e 	sh	v0,270(s0)
     5bc:	10000022 	b	648 <func_809EDD4C+0x16c>
     5c0:	a6090292 	sh	t1,658(s0)
     5c4:	860202a8 	lh	v0,680(s0)
     5c8:	24010001 	li	at,1
     5cc:	240a0004 	li	t2,4
     5d0:	10400008 	beqz	v0,5f4 <func_809EDD4C+0x118>
     5d4:	3c0b0000 	lui	t3,0x0
     5d8:	10410014 	beq	v0,at,62c <func_809EDD4C+0x150>
     5dc:	24194056 	li	t9,16470
     5e0:	24010002 	li	at,2
     5e4:	10410015 	beq	v0,at,63c <func_809EDD4C+0x160>
     5e8:	2409405b 	li	t1,16475
     5ec:	10000017 	b	64c <func_809EDD4C+0x170>
     5f0:	02002025 	move	a0,s0
     5f4:	a60a0292 	sh	t2,658(s0)
     5f8:	956b0eda 	lhu	t3,3802(t3)
     5fc:	240d4053 	li	t5,16467
     600:	240f405c 	li	t7,16476
     604:	316c0100 	andi	t4,t3,0x100
     608:	15800005 	bnez	t4,620 <func_809EDD4C+0x144>
     60c:	24180002 	li	t8,2
     610:	240e0001 	li	t6,1
     614:	a60d010e 	sh	t5,270(s0)
     618:	1000000b 	b	648 <func_809EDD4C+0x16c>
     61c:	a60e029c 	sh	t6,668(s0)
     620:	a60f010e 	sh	t7,270(s0)
     624:	10000008 	b	648 <func_809EDD4C+0x16c>
     628:	a618029c 	sh	t8,668(s0)
     62c:	24080005 	li	t0,5
     630:	a619010e 	sh	t9,270(s0)
     634:	10000004 	b	648 <func_809EDD4C+0x16c>
     638:	a6080292 	sh	t0,658(s0)
     63c:	240a0005 	li	t2,5
     640:	a609010e 	sh	t1,270(s0)
     644:	a60a0292 	sh	t2,658(s0)
     648:	02002025 	move	a0,s0
     64c:	8fa50024 	lw	a1,36(sp)
     650:	0c000000 	jal	0 <EnDivingGame_Init>
     654:	3c0642a0 	lui	a2,0x42a0
     658:	8fbf001c 	lw	ra,28(sp)
     65c:	8fb00018 	lw	s0,24(sp)
     660:	27bd0020 	addiu	sp,sp,32
     664:	03e00008 	jr	ra
     668:	00000000 	nop

0000066c <func_809EDEDC>:
     66c:	27bdffe0 	addiu	sp,sp,-32
     670:	afb00018 	sw	s0,24(sp)
     674:	00808025 	move	s0,a0
     678:	afbf001c 	sw	ra,28(sp)
     67c:	afa50024 	sw	a1,36(sp)
     680:	0c000000 	jal	0 <EnDivingGame_Init>
     684:	2484014c 	addiu	a0,a0,332
     688:	8fa40024 	lw	a0,36(sp)
     68c:	0c000000 	jal	0 <EnDivingGame_Init>
     690:	248420d8 	addiu	a0,a0,8408
     694:	860e0292 	lh	t6,658(s0)
     698:	8fa70024 	lw	a3,36(sp)
     69c:	55c2004a 	bnel	t6,v0,7c8 <func_809EDEDC+0x15c>
     6a0:	8fbf001c 	lw	ra,28(sp)
     6a4:	0c000000 	jal	0 <EnDivingGame_Init>
     6a8:	00e02025 	move	a0,a3
     6ac:	10400045 	beqz	v0,7c4 <func_809EDEDC+0x158>
     6b0:	8fa70024 	lw	a3,36(sp)
     6b4:	3c020001 	lui	v0,0x1
     6b8:	00471021 	addu	v0,v0,a3
     6bc:	904204bd 	lbu	v0,1213(v0)
     6c0:	24010001 	li	at,1
     6c4:	3c0f0000 	lui	t7,0x0
     6c8:	10400005 	beqz	v0,6e0 <func_809EDEDC+0x74>
     6cc:	00000000 	nop
     6d0:	50410017 	beql	v0,at,730 <func_809EDEDC+0xc4>
     6d4:	a60002a4 	sh	zero,676(s0)
     6d8:	1000001c 	b	74c <func_809EDEDC+0xe0>
     6dc:	00000000 	nop
     6e0:	85ef0034 	lh	t7,52(t7)
     6e4:	29e10014 	slti	at,t7,20
     6e8:	54200008 	bnezl	at,70c <func_809EDEDC+0xa0>
     6ec:	a60002a4 	sh	zero,676(s0)
     6f0:	0c000000 	jal	0 <EnDivingGame_Init>
     6f4:	2404ffec 	li	a0,-20
     6f8:	8fa70024 	lw	a3,36(sp)
     6fc:	24184054 	li	t8,16468
     700:	10000012 	b	74c <func_809EDEDC+0xe0>
     704:	a618010e 	sh	t8,270(s0)
     708:	a60002a4 	sh	zero,676(s0)
     70c:	860202a4 	lh	v0,676(s0)
     710:	24190085 	li	t9,133
     714:	a619010e 	sh	t9,270(s0)
     718:	a60202a2 	sh	v0,674(s0)
     71c:	a602029c 	sh	v0,668(s0)
     720:	a60202a8 	sh	v0,680(s0)
     724:	10000009 	b	74c <func_809EDEDC+0xe0>
     728:	a202031e 	sb	v0,798(s0)
     72c:	a60002a4 	sh	zero,676(s0)
     730:	860202a4 	lh	v0,676(s0)
     734:	2408002d 	li	t0,45
     738:	a608010e 	sh	t0,270(s0)
     73c:	a60202a2 	sh	v0,674(s0)
     740:	a602029c 	sh	v0,668(s0)
     744:	a60202a8 	sh	v0,680(s0)
     748:	a202031e 	sb	v0,798(s0)
     74c:	3c090000 	lui	t1,0x0
     750:	95290eda 	lhu	t1,3802(t1)
     754:	00e02025 	move	a0,a3
     758:	312a0100 	andi	t2,t1,0x100
     75c:	11400007 	beqz	t2,77c <func_809EDEDC+0x110>
     760:	00000000 	nop
     764:	9602010e 	lhu	v0,270(s0)
     768:	24010085 	li	at,133
     76c:	10410003 	beq	v0,at,77c <func_809EDEDC+0x110>
     770:	2401002d 	li	at,45
     774:	14410009 	bne	v0,at,79c <func_809EDEDC+0x130>
     778:	240d0037 	li	t5,55
     77c:	0c000000 	jal	0 <EnDivingGame_Init>
     780:	9605010e 	lhu	a1,270(s0)
     784:	3c0c0000 	lui	t4,0x0
     788:	240b0005 	li	t3,5
     78c:	258c0000 	addiu	t4,t4,0
     790:	a60b0292 	sh	t3,658(s0)
     794:	1000000b 	b	7c4 <func_809EDEDC+0x158>
     798:	ae0c0280 	sw	t4,640(s0)
     79c:	3c010001 	lui	at,0x1
     7a0:	00270821 	addu	at,at,a3
     7a4:	a02d03dc 	sb	t5,988(at)
     7a8:	00e02025 	move	a0,a3
     7ac:	00002825 	move	a1,zero
     7b0:	0c000000 	jal	0 <EnDivingGame_Init>
     7b4:	24060008 	li	a2,8
     7b8:	3c0e0000 	lui	t6,0x0
     7bc:	25ce0000 	addiu	t6,t6,0
     7c0:	ae0e0280 	sw	t6,640(s0)
     7c4:	8fbf001c 	lw	ra,28(sp)
     7c8:	8fb00018 	lw	s0,24(sp)
     7cc:	27bd0020 	addiu	sp,sp,32
     7d0:	03e00008 	jr	ra
     7d4:	00000000 	nop

000007d8 <func_809EE048>:
     7d8:	27bdffe0 	addiu	sp,sp,-32
     7dc:	afb10018 	sw	s1,24(sp)
     7e0:	00808825 	move	s1,a0
     7e4:	afbf001c 	sw	ra,28(sp)
     7e8:	afb00014 	sw	s0,20(sp)
     7ec:	00a08025 	move	s0,a1
     7f0:	0c000000 	jal	0 <EnDivingGame_Init>
     7f4:	2484014c 	addiu	a0,a0,332
     7f8:	0c000000 	jal	0 <EnDivingGame_Init>
     7fc:	260420d8 	addiu	a0,s0,8408
     800:	862e0292 	lh	t6,658(s1)
     804:	55c2001d 	bnel	t6,v0,87c <func_809EE048+0xa4>
     808:	8fbf001c 	lw	ra,28(sp)
     80c:	0c000000 	jal	0 <EnDivingGame_Init>
     810:	02002025 	move	a0,s0
     814:	50400019 	beqzl	v0,87c <func_809EE048+0xa4>
     818:	8fbf001c 	lw	ra,28(sp)
     81c:	862f029c 	lh	t7,668(s1)
     820:	3c010001 	lui	at,0x1
     824:	00300821 	addu	at,at,s0
     828:	15e0000b 	bnez	t7,858 <func_809EE048+0x80>
     82c:	24190037 	li	t9,55
     830:	0c000000 	jal	0 <EnDivingGame_Init>
     834:	02002025 	move	a0,s0
     838:	02002025 	move	a0,s0
     83c:	00002825 	move	a1,zero
     840:	0c000000 	jal	0 <EnDivingGame_Init>
     844:	24060007 	li	a2,7
     848:	3c180000 	lui	t8,0x0
     84c:	27180000 	addiu	t8,t8,0
     850:	10000009 	b	878 <func_809EE048+0xa0>
     854:	ae380280 	sw	t8,640(s1)
     858:	a03903dc 	sb	t9,988(at)
     85c:	02002025 	move	a0,s0
     860:	00002825 	move	a1,zero
     864:	0c000000 	jal	0 <EnDivingGame_Init>
     868:	24060008 	li	a2,8
     86c:	3c080000 	lui	t0,0x0
     870:	25080000 	addiu	t0,t0,0
     874:	ae280280 	sw	t0,640(s1)
     878:	8fbf001c 	lw	ra,28(sp)
     87c:	8fb00014 	lw	s0,20(sp)
     880:	8fb10018 	lw	s1,24(sp)
     884:	03e00008 	jr	ra
     888:	27bd0020 	addiu	sp,sp,32

0000088c <func_809EE0FC>:
     88c:	27bdffd8 	addiu	sp,sp,-40
     890:	afa40028 	sw	a0,40(sp)
     894:	afbf0024 	sw	ra,36(sp)
     898:	3c040600 	lui	a0,0x600
     89c:	afa5002c 	sw	a1,44(sp)
     8a0:	0c000000 	jal	0 <EnDivingGame_Init>
     8a4:	2484219c 	addiu	a0,a0,8604
     8a8:	44822000 	mtc1	v0,$f4
     8ac:	3c01c120 	lui	at,0xc120
     8b0:	44819000 	mtc1	at,$f18
     8b4:	468021a0 	cvt.s.w	$f6,$f4
     8b8:	8fa40028 	lw	a0,40(sp)
     8bc:	3c050600 	lui	a1,0x600
     8c0:	24080002 	li	t0,2
     8c4:	afa80014 	sw	t0,20(sp)
     8c8:	24a5219c 	addiu	a1,a1,8604
     8cc:	4600320d 	trunc.w.s	$f8,$f6
     8d0:	3c063f80 	lui	a2,0x3f80
     8d4:	24070000 	li	a3,0
     8d8:	e7b20018 	swc1	$f18,24(sp)
     8dc:	440f4000 	mfc1	t7,$f8
     8e0:	2484014c 	addiu	a0,a0,332
     8e4:	000fc400 	sll	t8,t7,0x10
     8e8:	0018cc03 	sra	t9,t8,0x10
     8ec:	44995000 	mtc1	t9,$f10
     8f0:	00000000 	nop
     8f4:	46805420 	cvt.s.w	$f16,$f10
     8f8:	0c000000 	jal	0 <EnDivingGame_Init>
     8fc:	e7b00010 	swc1	$f16,16(sp)
     900:	8fa20028 	lw	v0,40(sp)
     904:	3c090000 	lui	t1,0x0
     908:	25290000 	addiu	t1,t1,0
     90c:	a040031d 	sb	zero,797(v0)
     910:	ac490280 	sw	t1,640(v0)
     914:	8fbf0024 	lw	ra,36(sp)
     918:	27bd0028 	addiu	sp,sp,40
     91c:	03e00008 	jr	ra
     920:	00000000 	nop

00000924 <func_809EE194>:
     924:	27bdffe0 	addiu	sp,sp,-32
     928:	afbf0014 	sw	ra,20(sp)
     92c:	afa40020 	sw	a0,32(sp)
     930:	afa50024 	sw	a1,36(sp)
     934:	c4840164 	lwc1	$f4,356(a0)
     938:	00802825 	move	a1,a0
     93c:	afa50020 	sw	a1,32(sp)
     940:	2484014c 	addiu	a0,a0,332
     944:	0c000000 	jal	0 <EnDivingGame_Init>
     948:	e7a4001c 	swc1	$f4,28(sp)
     94c:	3c014170 	lui	at,0x4170
     950:	44814000 	mtc1	at,$f8
     954:	c7a6001c 	lwc1	$f6,28(sp)
     958:	3c0e0000 	lui	t6,0x0
     95c:	8fa50020 	lw	a1,32(sp)
     960:	4606403e 	c.le.s	$f8,$f6
     964:	25ce0000 	addiu	t6,t6,0
     968:	45020003 	bc1fl	978 <func_809EE194+0x54>
     96c:	8fbf0014 	lw	ra,20(sp)
     970:	acae0280 	sw	t6,640(a1)
     974:	8fbf0014 	lw	ra,20(sp)
     978:	27bd0020 	addiu	sp,sp,32
     97c:	03e00008 	jr	ra
     980:	00000000 	nop

00000984 <func_809EE1F4>:
     984:	27bdffe0 	addiu	sp,sp,-32
     988:	afb00014 	sw	s0,20(sp)
     98c:	00808025 	move	s0,a0
     990:	afbf001c 	sw	ra,28(sp)
     994:	afb10018 	sw	s1,24(sp)
     998:	00a08825 	move	s1,a1
     99c:	0c000000 	jal	0 <EnDivingGame_Init>
     9a0:	2484014c 	addiu	a0,a0,332
     9a4:	0c000000 	jal	0 <EnDivingGame_Init>
     9a8:	02202025 	move	a0,s1
     9ac:	a60202a0 	sh	v0,672(s0)
     9b0:	02202025 	move	a0,s1
     9b4:	00002825 	move	a1,zero
     9b8:	0c000000 	jal	0 <EnDivingGame_Init>
     9bc:	24060001 	li	a2,1
     9c0:	02202025 	move	a0,s1
     9c4:	860502a0 	lh	a1,672(s0)
     9c8:	0c000000 	jal	0 <EnDivingGame_Init>
     9cc:	24060007 	li	a2,7
     9d0:	3c01c352 	lui	at,0xc352
     9d4:	44812000 	mtc1	at,$f4
     9d8:	3c01c2a0 	lui	at,0xc2a0
     9dc:	44813000 	mtc1	at,$f6
     9e0:	3c01c47f 	lui	at,0xc47f
     9e4:	44814000 	mtc1	at,$f8
     9e8:	3c01c38c 	lui	at,0xc38c
     9ec:	44815000 	mtc1	at,$f10
     9f0:	3c01c1a0 	lui	at,0xc1a0
     9f4:	44818000 	mtc1	at,$f16
     9f8:	3c01c370 	lui	at,0xc370
     9fc:	44819000 	mtc1	at,$f18
     a00:	2403000a 	li	v1,10
     a04:	a603029a 	sh	v1,666(s0)
     a08:	3c0e0000 	lui	t6,0x0
     a0c:	e60402f4 	swc1	$f4,756(s0)
     a10:	e60602f8 	swc1	$f6,760(s0)
     a14:	e60802fc 	swc1	$f8,764(s0)
     a18:	e60a02d0 	swc1	$f10,720(s0)
     a1c:	e61002d4 	swc1	$f16,724(s0)
     a20:	e61202d8 	swc1	$f18,728(s0)
     a24:	95ce0eda 	lhu	t6,3802(t6)
     a28:	24180005 	li	t8,5
     a2c:	3c010000 	lui	at,0x0
     a30:	31cf0100 	andi	t7,t6,0x100
     a34:	55e00004 	bnezl	t7,a48 <func_809EE1F4+0xc4>
     a38:	a60302a6 	sh	v1,678(s0)
     a3c:	10000002 	b	a48 <func_809EE1F4+0xc4>
     a40:	a61802a6 	sh	t8,678(s0)
     a44:	a60302a6 	sh	v1,678(s0)
     a48:	c4220000 	lwc1	$f2,0(at)
     a4c:	3c0142a0 	lui	at,0x42a0
     a50:	44819000 	mtc1	at,$f18
     a54:	e6020308 	swc1	$f2,776(s0)
     a58:	e6020304 	swc1	$f2,772(s0)
     a5c:	e6020300 	swc1	$f2,768(s0)
     a60:	e60202e4 	swc1	$f2,740(s0)
     a64:	e60202e0 	swc1	$f2,736(s0)
     a68:	e60202dc 	swc1	$f2,732(s0)
     a6c:	c62400ec 	lwc1	$f4,236(s1)
     a70:	3c01437a 	lui	at,0x437a
     a74:	02202025 	move	a0,s1
     a78:	e60402b8 	swc1	$f4,696(s0)
     a7c:	c62600f0 	lwc1	$f6,240(s1)
     a80:	860502a0 	lh	a1,672(s0)
     a84:	260602b8 	addiu	a2,s0,696
     a88:	e60602bc 	swc1	$f6,700(s0)
     a8c:	c62800f4 	lwc1	$f8,244(s1)
     a90:	260702c4 	addiu	a3,s0,708
     a94:	e60802c0 	swc1	$f8,704(s0)
     a98:	c62a00e0 	lwc1	$f10,224(s1)
     a9c:	44814000 	mtc1	at,$f8
     aa0:	3c010000 	lui	at,0x0
     aa4:	e60a02c4 	swc1	$f10,708(s0)
     aa8:	c63000e4 	lwc1	$f16,228(s1)
     aac:	46128100 	add.s	$f4,$f16,$f18
     ab0:	c61202d0 	lwc1	$f18,720(s0)
     ab4:	c61002c4 	lwc1	$f16,708(s0)
     ab8:	e60402c8 	swc1	$f4,712(s0)
     abc:	c62600e8 	lwc1	$f6,232(s1)
     ac0:	46128001 	sub.s	$f0,$f16,$f18
     ac4:	c61202d8 	lwc1	$f18,728(s0)
     ac8:	46083280 	add.s	$f10,$f6,$f8
     acc:	c60802d4 	lwc1	$f8,724(s0)
     ad0:	c60602c8 	lwc1	$f6,712(s0)
     ad4:	46000005 	abs.s	$f0,$f0
     ad8:	e60a02cc 	swc1	$f10,716(s0)
     adc:	c4220000 	lwc1	$f2,0(at)
     ae0:	c61002cc 	lwc1	$f16,716(s0)
     ae4:	46020102 	mul.s	$f4,$f0,$f2
     ae8:	46083001 	sub.s	$f0,$f6,$f8
     aec:	c60802f4 	lwc1	$f8,756(s0)
     af0:	c60602b8 	lwc1	$f6,696(s0)
     af4:	46000005 	abs.s	$f0,$f0
     af8:	e60402e8 	swc1	$f4,744(s0)
     afc:	46020282 	mul.s	$f10,$f0,$f2
     b00:	46128001 	sub.s	$f0,$f16,$f18
     b04:	c61202f8 	lwc1	$f18,760(s0)
     b08:	c61002bc 	lwc1	$f16,700(s0)
     b0c:	46000005 	abs.s	$f0,$f0
     b10:	e60a02ec 	swc1	$f10,748(s0)
     b14:	46020102 	mul.s	$f4,$f0,$f2
     b18:	46083001 	sub.s	$f0,$f6,$f8
     b1c:	c60802fc 	lwc1	$f8,764(s0)
     b20:	c60602c0 	lwc1	$f6,704(s0)
     b24:	46000005 	abs.s	$f0,$f0
     b28:	e60402f0 	swc1	$f4,752(s0)
     b2c:	46020282 	mul.s	$f10,$f0,$f2
     b30:	46128001 	sub.s	$f0,$f16,$f18
     b34:	46000005 	abs.s	$f0,$f0
     b38:	e60a030c 	swc1	$f10,780(s0)
     b3c:	46020102 	mul.s	$f4,$f0,$f2
     b40:	46083001 	sub.s	$f0,$f6,$f8
     b44:	46000005 	abs.s	$f0,$f0
     b48:	e6040310 	swc1	$f4,784(s0)
     b4c:	46020282 	mul.s	$f10,$f0,$f2
     b50:	0c000000 	jal	0 <EnDivingGame_Init>
     b54:	e60a0314 	swc1	$f10,788(s0)
     b58:	02202025 	move	a0,s1
     b5c:	860502a0 	lh	a1,672(s0)
     b60:	0c000000 	jal	0 <EnDivingGame_Init>
     b64:	8e2602dc 	lw	a2,732(s1)
     b68:	44808000 	mtc1	zero,$f16
     b6c:	3c080000 	lui	t0,0x0
     b70:	2419003c 	li	t9,60
     b74:	25080000 	addiu	t0,t0,0
     b78:	a6190294 	sh	t9,660(s0)
     b7c:	ae080280 	sw	t0,640(s0)
     b80:	e6100318 	swc1	$f16,792(s0)
     b84:	8fbf001c 	lw	ra,28(sp)
     b88:	8fb10018 	lw	s1,24(sp)
     b8c:	8fb00014 	lw	s0,20(sp)
     b90:	03e00008 	jr	ra
     b94:	27bd0020 	addiu	sp,sp,32

00000b98 <func_809EE408>:
     b98:	27bdffe0 	addiu	sp,sp,-32
     b9c:	afb00018 	sw	s0,24(sp)
     ba0:	00808025 	move	s0,a0
     ba4:	afbf001c 	sw	ra,28(sp)
     ba8:	afa50024 	sw	a1,36(sp)
     bac:	0c000000 	jal	0 <EnDivingGame_Init>
     bb0:	2484014c 	addiu	a0,a0,332
     bb4:	8fa40024 	lw	a0,36(sp)
     bb8:	0c000000 	jal	0 <EnDivingGame_Init>
     bbc:	260500e4 	addiu	a1,s0,228
     bc0:	50400004 	beqzl	v0,bd4 <func_809EE408+0x3c>
     bc4:	860502a0 	lh	a1,672(s0)
     bc8:	0c000000 	jal	0 <EnDivingGame_Init>
     bcc:	00002025 	move	a0,zero
     bd0:	860502a0 	lh	a1,672(s0)
     bd4:	50a00038 	beqzl	a1,cb8 <func_809EE408+0x120>
     bd8:	8fa40024 	lw	a0,36(sp)
     bdc:	c60402e8 	lwc1	$f4,744(s0)
     be0:	c6060318 	lwc1	$f6,792(s0)
     be4:	260402c4 	addiu	a0,s0,708
     be8:	8e0502d0 	lw	a1,720(s0)
     bec:	46062202 	mul.s	$f8,$f4,$f6
     bf0:	8e0602dc 	lw	a2,732(s0)
     bf4:	44074000 	mfc1	a3,$f8
     bf8:	0c000000 	jal	0 <EnDivingGame_Init>
     bfc:	00000000 	nop
     c00:	c60a02f0 	lwc1	$f10,752(s0)
     c04:	c6100318 	lwc1	$f16,792(s0)
     c08:	260402cc 	addiu	a0,s0,716
     c0c:	8e0502d8 	lw	a1,728(s0)
     c10:	46105482 	mul.s	$f18,$f10,$f16
     c14:	8e0602e4 	lw	a2,740(s0)
     c18:	44079000 	mfc1	a3,$f18
     c1c:	0c000000 	jal	0 <EnDivingGame_Init>
     c20:	00000000 	nop
     c24:	c604030c 	lwc1	$f4,780(s0)
     c28:	c6060318 	lwc1	$f6,792(s0)
     c2c:	260402b8 	addiu	a0,s0,696
     c30:	8e0502f4 	lw	a1,756(s0)
     c34:	46062202 	mul.s	$f8,$f4,$f6
     c38:	8e060300 	lw	a2,768(s0)
     c3c:	44074000 	mfc1	a3,$f8
     c40:	0c000000 	jal	0 <EnDivingGame_Init>
     c44:	00000000 	nop
     c48:	c60a0310 	lwc1	$f10,784(s0)
     c4c:	c6100318 	lwc1	$f16,792(s0)
     c50:	260402bc 	addiu	a0,s0,700
     c54:	8e0502f8 	lw	a1,760(s0)
     c58:	46105482 	mul.s	$f18,$f10,$f16
     c5c:	8e060304 	lw	a2,772(s0)
     c60:	44079000 	mfc1	a3,$f18
     c64:	0c000000 	jal	0 <EnDivingGame_Init>
     c68:	00000000 	nop
     c6c:	c6040314 	lwc1	$f4,788(s0)
     c70:	c6060318 	lwc1	$f6,792(s0)
     c74:	260402c0 	addiu	a0,s0,704
     c78:	8e0502fc 	lw	a1,764(s0)
     c7c:	46062202 	mul.s	$f8,$f4,$f6
     c80:	8e060308 	lw	a2,776(s0)
     c84:	44074000 	mfc1	a3,$f8
     c88:	0c000000 	jal	0 <EnDivingGame_Init>
     c8c:	00000000 	nop
     c90:	3c013f80 	lui	at,0x3f80
     c94:	44810000 	mtc1	at,$f0
     c98:	3c073ca3 	lui	a3,0x3ca3
     c9c:	34e7d70a 	ori	a3,a3,0xd70a
     ca0:	44050000 	mfc1	a1,$f0
     ca4:	44060000 	mfc1	a2,$f0
     ca8:	0c000000 	jal	0 <EnDivingGame_Init>
     cac:	26040318 	addiu	a0,s0,792
     cb0:	860502a0 	lh	a1,672(s0)
     cb4:	8fa40024 	lw	a0,36(sp)
     cb8:	260602b8 	addiu	a2,s0,696
     cbc:	0c000000 	jal	0 <EnDivingGame_Init>
     cc0:	260702c4 	addiu	a3,s0,708
     cc4:	920e031e 	lbu	t6,798(s0)
     cc8:	55c0001d 	bnezl	t6,d40 <func_809EE408+0x1a8>
     ccc:	860f0294 	lh	t7,660(s0)
     cd0:	860f029a 	lh	t7,666(s0)
     cd4:	24180005 	li	t8,5
     cd8:	02002025 	move	a0,s0
     cdc:	55e00018 	bnezl	t7,d40 <func_809EE408+0x1a8>
     ce0:	860f0294 	lh	t7,660(s0)
     ce4:	a618029a 	sh	t8,666(s0)
     ce8:	0c000000 	jal	0 <EnDivingGame_Init>
     cec:	8fa50024 	lw	a1,36(sp)
     cf0:	861902a6 	lh	t9,678(s0)
     cf4:	3c090000 	lui	t1,0x0
     cf8:	240b001e 	li	t3,30
     cfc:	2728ffff 	addiu	t0,t9,-1
     d00:	a60802a6 	sh	t0,678(s0)
     d04:	95290eda 	lhu	t1,3802(t1)
     d08:	240c0005 	li	t4,5
     d0c:	240e0001 	li	t6,1
     d10:	312a0100 	andi	t2,t1,0x100
     d14:	55400004 	bnezl	t2,d28 <func_809EE408+0x190>
     d18:	a60c0296 	sh	t4,662(s0)
     d1c:	10000002 	b	d28 <func_809EE408+0x190>
     d20:	a60b0296 	sh	t3,662(s0)
     d24:	a60c0296 	sh	t4,662(s0)
     d28:	860d02a6 	lh	t5,678(s0)
     d2c:	5da00004 	bgtzl	t5,d40 <func_809EE408+0x1a8>
     d30:	860f0294 	lh	t7,660(s0)
     d34:	a60002a6 	sh	zero,678(s0)
     d38:	a20e031e 	sb	t6,798(s0)
     d3c:	860f0294 	lh	t7,660(s0)
     d40:	51e00034 	beqzl	t7,e14 <func_809EE408+0x27c>
     d44:	861802a2 	lh	t8,674(s0)
     d48:	c60a02c4 	lwc1	$f10,708(s0)
     d4c:	c61002d0 	lwc1	$f16,720(s0)
     d50:	3c014000 	lui	at,0x4000
     d54:	44811000 	mtc1	at,$f2
     d58:	46105001 	sub.s	$f0,$f10,$f16
     d5c:	46000005 	abs.s	$f0,$f0
     d60:	4602003c 	c.lt.s	$f0,$f2
     d64:	00000000 	nop
     d68:	45020037 	bc1fl	e48 <func_809EE408+0x2b0>
     d6c:	8fbf001c 	lw	ra,28(sp)
     d70:	c61202c8 	lwc1	$f18,712(s0)
     d74:	c60402d4 	lwc1	$f4,724(s0)
     d78:	46049001 	sub.s	$f0,$f18,$f4
     d7c:	46000005 	abs.s	$f0,$f0
     d80:	4602003c 	c.lt.s	$f0,$f2
     d84:	00000000 	nop
     d88:	4502002f 	bc1fl	e48 <func_809EE408+0x2b0>
     d8c:	8fbf001c 	lw	ra,28(sp)
     d90:	c60602cc 	lwc1	$f6,716(s0)
     d94:	c60802d8 	lwc1	$f8,728(s0)
     d98:	46083001 	sub.s	$f0,$f6,$f8
     d9c:	46000005 	abs.s	$f0,$f0
     da0:	4602003c 	c.lt.s	$f0,$f2
     da4:	00000000 	nop
     da8:	45020027 	bc1fl	e48 <func_809EE408+0x2b0>
     dac:	8fbf001c 	lw	ra,28(sp)
     db0:	c60a02b8 	lwc1	$f10,696(s0)
     db4:	c61002f4 	lwc1	$f16,756(s0)
     db8:	46105001 	sub.s	$f0,$f10,$f16
     dbc:	46000005 	abs.s	$f0,$f0
     dc0:	4602003c 	c.lt.s	$f0,$f2
     dc4:	00000000 	nop
     dc8:	4502001f 	bc1fl	e48 <func_809EE408+0x2b0>
     dcc:	8fbf001c 	lw	ra,28(sp)
     dd0:	c61202bc 	lwc1	$f18,700(s0)
     dd4:	c60402f8 	lwc1	$f4,760(s0)
     dd8:	46049001 	sub.s	$f0,$f18,$f4
     ddc:	46000005 	abs.s	$f0,$f0
     de0:	4602003c 	c.lt.s	$f0,$f2
     de4:	00000000 	nop
     de8:	45020017 	bc1fl	e48 <func_809EE408+0x2b0>
     dec:	8fbf001c 	lw	ra,28(sp)
     df0:	c60602c0 	lwc1	$f6,704(s0)
     df4:	c60802fc 	lwc1	$f8,764(s0)
     df8:	46083001 	sub.s	$f0,$f6,$f8
     dfc:	46000005 	abs.s	$f0,$f0
     e00:	4602003c 	c.lt.s	$f0,$f2
     e04:	00000000 	nop
     e08:	4502000f 	bc1fl	e48 <func_809EE408+0x2b0>
     e0c:	8fbf001c 	lw	ra,28(sp)
     e10:	861802a2 	lh	t8,674(s0)
     e14:	3c0a0000 	lui	t2,0x0
     e18:	24190046 	li	t9,70
     e1c:	13000008 	beqz	t8,e40 <func_809EE408+0x2a8>
     e20:	254a0000 	addiu	t2,t2,0
     e24:	3c090000 	lui	t1,0x0
     e28:	24080002 	li	t0,2
     e2c:	25290000 	addiu	t1,t1,0
     e30:	a6190294 	sh	t9,660(s0)
     e34:	a60802a2 	sh	t0,674(s0)
     e38:	10000002 	b	e44 <func_809EE408+0x2ac>
     e3c:	ae090280 	sw	t1,640(s0)
     e40:	ae0a0280 	sw	t2,640(s0)
     e44:	8fbf001c 	lw	ra,28(sp)
     e48:	8fb00018 	lw	s0,24(sp)
     e4c:	27bd0020 	addiu	sp,sp,32
     e50:	03e00008 	jr	ra
     e54:	00000000 	nop

00000e58 <func_809EE6C8>:
     e58:	27bdffe8 	addiu	sp,sp,-24
     e5c:	afa5001c 	sw	a1,28(sp)
     e60:	00802825 	move	a1,a0
     e64:	afbf0014 	sw	ra,20(sp)
     e68:	afa40018 	sw	a0,24(sp)
     e6c:	afa50018 	sw	a1,24(sp)
     e70:	0c000000 	jal	0 <EnDivingGame_Init>
     e74:	2484014c 	addiu	a0,a0,332
     e78:	8fa50018 	lw	a1,24(sp)
     e7c:	3c190000 	lui	t9,0x0
     e80:	3c01c352 	lui	at,0xc352
     e84:	84ae0296 	lh	t6,662(a1)
     e88:	240f0001 	li	t7,1
     e8c:	24180064 	li	t8,100
     e90:	15c0001b 	bnez	t6,f00 <func_809EE6C8+0xa8>
     e94:	27390000 	addiu	t9,t9,0
     e98:	44810000 	mtc1	at,$f0
     e9c:	3c01c2a0 	lui	at,0xc2a0
     ea0:	44811000 	mtc1	at,$f2
     ea4:	3c01c47f 	lui	at,0xc47f
     ea8:	44816000 	mtc1	at,$f12
     eac:	3c01c38c 	lui	at,0xc38c
     eb0:	44817000 	mtc1	at,$f14
     eb4:	3c01c1a0 	lui	at,0xc1a0
     eb8:	44818000 	mtc1	at,$f16
     ebc:	3c01c370 	lui	at,0xc370
     ec0:	44819000 	mtc1	at,$f18
     ec4:	a4af02a2 	sh	t7,674(a1)
     ec8:	a4b80294 	sh	t8,660(a1)
     ecc:	acb90280 	sw	t9,640(a1)
     ed0:	e4a002f4 	swc1	$f0,756(a1)
     ed4:	e4a002b8 	swc1	$f0,696(a1)
     ed8:	e4a202f8 	swc1	$f2,760(a1)
     edc:	e4a202bc 	swc1	$f2,700(a1)
     ee0:	e4ac02fc 	swc1	$f12,764(a1)
     ee4:	e4ac02c0 	swc1	$f12,704(a1)
     ee8:	e4ae02d0 	swc1	$f14,720(a1)
     eec:	e4ae02c4 	swc1	$f14,708(a1)
     ef0:	e4b002d4 	swc1	$f16,724(a1)
     ef4:	e4b002c8 	swc1	$f16,712(a1)
     ef8:	e4b202d8 	swc1	$f18,728(a1)
     efc:	e4b202cc 	swc1	$f18,716(a1)
     f00:	8fbf0014 	lw	ra,20(sp)
     f04:	27bd0018 	addiu	sp,sp,24
     f08:	03e00008 	jr	ra
     f0c:	00000000 	nop

00000f10 <func_809EE780>:
     f10:	27bdffe0 	addiu	sp,sp,-32
     f14:	afb00018 	sw	s0,24(sp)
     f18:	00808025 	move	s0,a0
     f1c:	afbf001c 	sw	ra,28(sp)
     f20:	afa50024 	sw	a1,36(sp)
     f24:	0c000000 	jal	0 <EnDivingGame_Init>
     f28:	2484014c 	addiu	a0,a0,332
     f2c:	860e0294 	lh	t6,660(s0)
     f30:	8fa40024 	lw	a0,36(sp)
     f34:	55c00012 	bnezl	t6,f80 <func_809EE780+0x70>
     f38:	8fbf001c 	lw	ra,28(sp)
     f3c:	0c000000 	jal	0 <EnDivingGame_Init>
     f40:	860502a0 	lh	a1,672(s0)
     f44:	8fa40024 	lw	a0,36(sp)
     f48:	00002825 	move	a1,zero
     f4c:	0c000000 	jal	0 <EnDivingGame_Init>
     f50:	24060007 	li	a2,7
     f54:	240f405a 	li	t7,16474
     f58:	a60f010e 	sh	t7,270(s0)
     f5c:	8fa40024 	lw	a0,36(sp)
     f60:	0c000000 	jal	0 <EnDivingGame_Init>
     f64:	31e5ffff 	andi	a1,t7,0xffff
     f68:	3c190000 	lui	t9,0x0
     f6c:	24180005 	li	t8,5
     f70:	27390000 	addiu	t9,t9,0
     f74:	a6180292 	sh	t8,658(s0)
     f78:	ae190280 	sw	t9,640(s0)
     f7c:	8fbf001c 	lw	ra,28(sp)
     f80:	8fb00018 	lw	s0,24(sp)
     f84:	27bd0020 	addiu	sp,sp,32
     f88:	03e00008 	jr	ra
     f8c:	00000000 	nop

00000f90 <func_809EE800>:
     f90:	27bdffe0 	addiu	sp,sp,-32
     f94:	afb00018 	sw	s0,24(sp)
     f98:	00808025 	move	s0,a0
     f9c:	afbf001c 	sw	ra,28(sp)
     fa0:	afa50024 	sw	a1,36(sp)
     fa4:	0c000000 	jal	0 <EnDivingGame_Init>
     fa8:	2484014c 	addiu	a0,a0,332
     fac:	8fa40024 	lw	a0,36(sp)
     fb0:	0c000000 	jal	0 <EnDivingGame_Init>
     fb4:	248420d8 	addiu	a0,a0,8408
     fb8:	860e0292 	lh	t6,658(s0)
     fbc:	55c2002c 	bnel	t6,v0,1070 <func_809EE800+0xe0>
     fc0:	8fbf001c 	lw	ra,28(sp)
     fc4:	0c000000 	jal	0 <EnDivingGame_Init>
     fc8:	8fa40024 	lw	a0,36(sp)
     fcc:	50400028 	beqzl	v0,1070 <func_809EE800+0xe0>
     fd0:	8fbf001c 	lw	ra,28(sp)
     fd4:	0c000000 	jal	0 <EnDivingGame_Init>
     fd8:	8fa40024 	lw	a0,36(sp)
     fdc:	3c0f0000 	lui	t7,0x0
     fe0:	95ef0eda 	lhu	t7,3802(t7)
     fe4:	3c190000 	lui	t9,0x0
     fe8:	3c080000 	lui	t0,0x0
     fec:	31f80100 	andi	t8,t7,0x100
     ff0:	17000009 	bnez	t8,1018 <func_809EE800+0x88>
     ff4:	00000000 	nop
     ff8:	8f390000 	lw	t9,0(t9)
     ffc:	872412d8 	lh	a0,4824(t9)
    1000:	24840032 	addiu	a0,a0,50
    1004:	00042400 	sll	a0,a0,0x10
    1008:	0c000000 	jal	0 <EnDivingGame_Init>
    100c:	00042403 	sra	a0,a0,0x10
    1010:	10000007 	b	1030 <func_809EE800+0xa0>
    1014:	00000000 	nop
    1018:	8d080000 	lw	t0,0(t0)
    101c:	850412d8 	lh	a0,4824(t0)
    1020:	24840032 	addiu	a0,a0,50
    1024:	00042400 	sll	a0,a0,0x10
    1028:	0c000000 	jal	0 <EnDivingGame_Init>
    102c:	00042403 	sra	a0,a0,0x10
    1030:	0c000000 	jal	0 <EnDivingGame_Init>
    1034:	2404006c 	li	a0,108
    1038:	8fa40024 	lw	a0,36(sp)
    103c:	00002825 	move	a1,zero
    1040:	0c000000 	jal	0 <EnDivingGame_Init>
    1044:	24060007 	li	a2,7
    1048:	3c0c0000 	lui	t4,0x0
    104c:	2409405b 	li	t1,16475
    1050:	240a0005 	li	t2,5
    1054:	240b0002 	li	t3,2
    1058:	258c0000 	addiu	t4,t4,0
    105c:	a609010e 	sh	t1,270(s0)
    1060:	a60a0292 	sh	t2,658(s0)
    1064:	a60b02a8 	sh	t3,680(s0)
    1068:	ae0c0280 	sw	t4,640(s0)
    106c:	8fbf001c 	lw	ra,28(sp)
    1070:	8fb00018 	lw	s0,24(sp)
    1074:	27bd0020 	addiu	sp,sp,32
    1078:	03e00008 	jr	ra
    107c:	00000000 	nop

00001080 <func_809EE8F0>:
    1080:	27bdffe8 	addiu	sp,sp,-24
    1084:	afbf0014 	sw	ra,20(sp)
    1088:	afa40018 	sw	a0,24(sp)
    108c:	afa5001c 	sw	a1,28(sp)
    1090:	0c000000 	jal	0 <EnDivingGame_Init>
    1094:	2484014c 	addiu	a0,a0,332
    1098:	8fa4001c 	lw	a0,28(sp)
    109c:	0c000000 	jal	0 <EnDivingGame_Init>
    10a0:	248420d8 	addiu	a0,a0,8408
    10a4:	8fae0018 	lw	t6,24(sp)
    10a8:	85cf0292 	lh	t7,658(t6)
    10ac:	55e2000d 	bnel	t7,v0,10e4 <func_809EE8F0+0x64>
    10b0:	8fa40018 	lw	a0,24(sp)
    10b4:	0c000000 	jal	0 <EnDivingGame_Init>
    10b8:	8fa4001c 	lw	a0,28(sp)
    10bc:	50400009 	beqzl	v0,10e4 <func_809EE8F0+0x64>
    10c0:	8fa40018 	lw	a0,24(sp)
    10c4:	0c000000 	jal	0 <EnDivingGame_Init>
    10c8:	8fa4001c 	lw	a0,28(sp)
    10cc:	8fb90018 	lw	t9,24(sp)
    10d0:	3c180000 	lui	t8,0x0
    10d4:	27180000 	addiu	t8,t8,0
    10d8:	10000004 	b	10ec <func_809EE8F0+0x6c>
    10dc:	af380280 	sw	t8,640(t9)
    10e0:	8fa40018 	lw	a0,24(sp)
    10e4:	0c000000 	jal	0 <EnDivingGame_Init>
    10e8:	8fa5001c 	lw	a1,28(sp)
    10ec:	8fbf0014 	lw	ra,20(sp)
    10f0:	27bd0018 	addiu	sp,sp,24
    10f4:	03e00008 	jr	ra
    10f8:	00000000 	nop

000010fc <func_809EE96C>:
    10fc:	27bdffe0 	addiu	sp,sp,-32
    1100:	afb00018 	sw	s0,24(sp)
    1104:	00808025 	move	s0,a0
    1108:	afbf001c 	sw	ra,28(sp)
    110c:	afa50024 	sw	a1,36(sp)
    1110:	0c000000 	jal	0 <EnDivingGame_Init>
    1114:	2484014c 	addiu	a0,a0,332
    1118:	8fa40024 	lw	a0,36(sp)
    111c:	0c000000 	jal	0 <EnDivingGame_Init>
    1120:	248420d8 	addiu	a0,a0,8408
    1124:	860e0292 	lh	t6,658(s0)
    1128:	55c20015 	bnel	t6,v0,1180 <func_809EE96C+0x84>
    112c:	8fbf001c 	lw	ra,28(sp)
    1130:	0c000000 	jal	0 <EnDivingGame_Init>
    1134:	8fa40024 	lw	a0,36(sp)
    1138:	50400011 	beqzl	v0,1180 <func_809EE96C+0x84>
    113c:	8fbf001c 	lw	ra,28(sp)
    1140:	0c000000 	jal	0 <EnDivingGame_Init>
    1144:	8fa40024 	lw	a0,36(sp)
    1148:	8fa40024 	lw	a0,36(sp)
    114c:	00002825 	move	a1,zero
    1150:	0c000000 	jal	0 <EnDivingGame_Init>
    1154:	24060007 	li	a2,7
    1158:	3c080000 	lui	t0,0x0
    115c:	240f4056 	li	t7,16470
    1160:	24180005 	li	t8,5
    1164:	24190001 	li	t9,1
    1168:	25080000 	addiu	t0,t0,0
    116c:	a60f010e 	sh	t7,270(s0)
    1170:	a6180292 	sh	t8,658(s0)
    1174:	a61902a8 	sh	t9,680(s0)
    1178:	ae080280 	sw	t0,640(s0)
    117c:	8fbf001c 	lw	ra,28(sp)
    1180:	8fb00018 	lw	s0,24(sp)
    1184:	27bd0020 	addiu	sp,sp,32
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop

00001190 <func_809EEA00>:
    1190:	27bdffd8 	addiu	sp,sp,-40
    1194:	afb00020 	sw	s0,32(sp)
    1198:	00808025 	move	s0,a0
    119c:	afbf0024 	sw	ra,36(sp)
    11a0:	afa5002c 	sw	a1,44(sp)
    11a4:	0c000000 	jal	0 <EnDivingGame_Init>
    11a8:	2484014c 	addiu	a0,a0,332
    11ac:	8fa4002c 	lw	a0,44(sp)
    11b0:	0c000000 	jal	0 <EnDivingGame_Init>
    11b4:	248420d8 	addiu	a0,a0,8408
    11b8:	860e0292 	lh	t6,658(s0)
    11bc:	55c20014 	bnel	t6,v0,1210 <func_809EEA00+0x80>
    11c0:	8fbf0024 	lw	ra,36(sp)
    11c4:	0c000000 	jal	0 <EnDivingGame_Init>
    11c8:	8fa4002c 	lw	a0,44(sp)
    11cc:	50400010 	beqzl	v0,1210 <func_809EEA00+0x80>
    11d0:	8fbf0024 	lw	ra,36(sp)
    11d4:	0c000000 	jal	0 <EnDivingGame_Init>
    11d8:	8fa4002c 	lw	a0,44(sp)
    11dc:	3c014120 	lui	at,0x4120
    11e0:	44812000 	mtc1	at,$f4
    11e4:	ae000118 	sw	zero,280(s0)
    11e8:	8fa5002c 	lw	a1,44(sp)
    11ec:	02002025 	move	a0,s0
    11f0:	24060037 	li	a2,55
    11f4:	3c0742b4 	lui	a3,0x42b4
    11f8:	0c000000 	jal	0 <EnDivingGame_Init>
    11fc:	e7a40010 	swc1	$f4,16(sp)
    1200:	3c0f0000 	lui	t7,0x0
    1204:	25ef0000 	addiu	t7,t7,0
    1208:	ae0f0280 	sw	t7,640(s0)
    120c:	8fbf0024 	lw	ra,36(sp)
    1210:	8fb00020 	lw	s0,32(sp)
    1214:	27bd0028 	addiu	sp,sp,40
    1218:	03e00008 	jr	ra
    121c:	00000000 	nop

00001220 <func_809EEA90>:
    1220:	27bdffe0 	addiu	sp,sp,-32
    1224:	afbf001c 	sw	ra,28(sp)
    1228:	afa40020 	sw	a0,32(sp)
    122c:	afa50024 	sw	a1,36(sp)
    1230:	0c000000 	jal	0 <EnDivingGame_Init>
    1234:	2484014c 	addiu	a0,a0,332
    1238:	8fa40020 	lw	a0,32(sp)
    123c:	0c000000 	jal	0 <EnDivingGame_Init>
    1240:	8fa50024 	lw	a1,36(sp)
    1244:	10400005 	beqz	v0,125c <func_809EEA90+0x3c>
    1248:	8fa40020 	lw	a0,32(sp)
    124c:	3c0e0000 	lui	t6,0x0
    1250:	25ce0000 	addiu	t6,t6,0
    1254:	10000008 	b	1278 <func_809EEA90+0x58>
    1258:	ac8e0280 	sw	t6,640(a0)
    125c:	3c014120 	lui	at,0x4120
    1260:	44812000 	mtc1	at,$f4
    1264:	8fa50024 	lw	a1,36(sp)
    1268:	24060037 	li	a2,55
    126c:	3c0742b4 	lui	a3,0x42b4
    1270:	0c000000 	jal	0 <EnDivingGame_Init>
    1274:	e7a40010 	swc1	$f4,16(sp)
    1278:	8fbf001c 	lw	ra,28(sp)
    127c:	27bd0020 	addiu	sp,sp,32
    1280:	03e00008 	jr	ra
    1284:	00000000 	nop

00001288 <func_809EEAF8>:
    1288:	27bdffe0 	addiu	sp,sp,-32
    128c:	afb00018 	sw	s0,24(sp)
    1290:	00808025 	move	s0,a0
    1294:	afbf001c 	sw	ra,28(sp)
    1298:	afa50024 	sw	a1,36(sp)
    129c:	0c000000 	jal	0 <EnDivingGame_Init>
    12a0:	2484014c 	addiu	a0,a0,332
    12a4:	8fa40024 	lw	a0,36(sp)
    12a8:	0c000000 	jal	0 <EnDivingGame_Init>
    12ac:	248420d8 	addiu	a0,a0,8408
    12b0:	24010006 	li	at,6
    12b4:	54410016 	bnel	v0,at,1310 <func_809EEAF8+0x88>
    12b8:	8fbf001c 	lw	ra,28(sp)
    12bc:	0c000000 	jal	0 <EnDivingGame_Init>
    12c0:	8fa40024 	lw	a0,36(sp)
    12c4:	10400011 	beqz	v0,130c <func_809EEAF8+0x84>
    12c8:	3c040000 	lui	a0,0x0
    12cc:	0c000000 	jal	0 <EnDivingGame_Init>
    12d0:	24840000 	addiu	a0,a0,0
    12d4:	a60002a4 	sh	zero,676(s0)
    12d8:	860202a4 	lh	v0,676(s0)
    12dc:	3c030000 	lui	v1,0x0
    12e0:	24630000 	addiu	v1,v1,0
    12e4:	a60202a2 	sh	v0,674(s0)
    12e8:	a602029c 	sh	v0,668(s0)
    12ec:	a60202a8 	sh	v0,680(s0)
    12f0:	a202031e 	sb	v0,798(s0)
    12f4:	946e0eda 	lhu	t6,3802(v1)
    12f8:	3c180000 	lui	t8,0x0
    12fc:	27180000 	addiu	t8,t8,0
    1300:	35cf0100 	ori	t7,t6,0x100
    1304:	a46f0eda 	sh	t7,3802(v1)
    1308:	ae180280 	sw	t8,640(s0)
    130c:	8fbf001c 	lw	ra,28(sp)
    1310:	8fb00018 	lw	s0,24(sp)
    1314:	27bd0020 	addiu	sp,sp,32
    1318:	03e00008 	jr	ra
    131c:	00000000 	nop

00001320 <EnDivingGame_Update>:
    1320:	27bdffb8 	addiu	sp,sp,-72
    1324:	afbf0024 	sw	ra,36(sp)
    1328:	afb00020 	sw	s0,32(sp)
    132c:	afa5004c 	sw	a1,76(sp)
    1330:	8caf1c44 	lw	t7,7236(a1)
    1334:	00808025 	move	s0,a0
    1338:	3c0a0000 	lui	t2,0x0
    133c:	afaf003c 	sw	t7,60(sp)
    1340:	84820294 	lh	v0,660(a0)
    1344:	10400002 	beqz	v0,1350 <EnDivingGame_Update+0x30>
    1348:	2458ffff 	addiu	t8,v0,-1
    134c:	a4980294 	sh	t8,660(a0)
    1350:	86020296 	lh	v0,662(s0)
    1354:	10400002 	beqz	v0,1360 <EnDivingGame_Update+0x40>
    1358:	2459ffff 	addiu	t9,v0,-1
    135c:	a6190296 	sh	t9,662(s0)
    1360:	86020298 	lh	v0,664(s0)
    1364:	10400002 	beqz	v0,1370 <EnDivingGame_Update+0x50>
    1368:	2448ffff 	addiu	t0,v0,-1
    136c:	a6080298 	sh	t0,664(s0)
    1370:	8602029a 	lh	v0,666(s0)
    1374:	10400002 	beqz	v0,1380 <EnDivingGame_Update+0x60>
    1378:	2449ffff 	addiu	t1,v0,-1
    137c:	a609029a 	sh	t1,666(s0)
    1380:	854a13d0 	lh	t2,5072(t2)
    1384:	2401000a 	li	at,10
    1388:	55410004 	bnel	t2,at,139c <EnDivingGame_Update+0x7c>
    138c:	860b0298 	lh	t3,664(s0)
    1390:	0c000000 	jal	0 <EnDivingGame_Init>
    1394:	00000000 	nop
    1398:	860b0298 	lh	t3,664(s0)
    139c:	55600013 	bnezl	t3,13ec <EnDivingGame_Update+0xcc>
    13a0:	8e190280 	lw	t9,640(s0)
    13a4:	860d029e 	lh	t5,670(s0)
    13a8:	240c0002 	li	t4,2
    13ac:	a60c0298 	sh	t4,664(s0)
    13b0:	25ae0001 	addiu	t6,t5,1
    13b4:	a60e029e 	sh	t6,670(s0)
    13b8:	860f029e 	lh	t7,670(s0)
    13bc:	29e10003 	slti	at,t7,3
    13c0:	14200009 	bnez	at,13e8 <EnDivingGame_Update+0xc8>
    13c4:	3c014270 	lui	at,0x4270
    13c8:	44816000 	mtc1	at,$f12
    13cc:	0c000000 	jal	0 <EnDivingGame_Init>
    13d0:	a600029e 	sh	zero,670(s0)
    13d4:	4600010d 	trunc.w.s	$f4,$f0
    13d8:	44092000 	mfc1	t1,$f4
    13dc:	00000000 	nop
    13e0:	252a0014 	addiu	t2,t1,20
    13e4:	a60a0298 	sh	t2,664(s0)
    13e8:	8e190280 	lw	t9,640(s0)
    13ec:	02002025 	move	a0,s0
    13f0:	8fa5004c 	lw	a1,76(sp)
    13f4:	0320f809 	jalr	t9
    13f8:	00000000 	nop
    13fc:	02002025 	move	a0,s0
    1400:	0c000000 	jal	0 <EnDivingGame_Init>
    1404:	3c0542a0 	lui	a1,0x42a0
    1408:	8fab003c 	lw	t3,60(sp)
    140c:	02002025 	move	a0,s0
    1410:	26050324 	addiu	a1,s0,804
    1414:	8d6d0024 	lw	t5,36(t3)
    1418:	24060002 	li	a2,2
    141c:	24070004 	li	a3,4
    1420:	ae0d033c 	sw	t5,828(s0)
    1424:	8d6c0028 	lw	t4,40(t3)
    1428:	ae0c0340 	sw	t4,832(s0)
    142c:	8d6d002c 	lw	t5,44(t3)
    1430:	ae0d0344 	sw	t5,836(s0)
    1434:	8fae003c 	lw	t6,60(sp)
    1438:	c5c60028 	lwc1	$f6,40(t6)
    143c:	0c000000 	jal	0 <EnDivingGame_Init>
    1440:	e6060340 	swc1	$f6,832(s0)
    1444:	8a18032c 	lwl	t8,812(s0)
    1448:	8a090332 	lwl	t1,818(s0)
    144c:	9a18032f 	lwr	t8,815(s0)
    1450:	9a090335 	lwr	t1,821(s0)
    1454:	8fa4004c 	lw	a0,76(sp)
    1458:	aa180284 	swl	t8,644(s0)
    145c:	aa09028a 	swl	t1,650(s0)
    1460:	ba180287 	swr	t8,647(s0)
    1464:	ba09028d 	swr	t1,653(s0)
    1468:	96180330 	lhu	t8,816(s0)
    146c:	96090336 	lhu	t1,822(s0)
    1470:	3c0a0001 	lui	t2,0x1
    1474:	01445021 	addu	t2,t2,a0
    1478:	a6180288 	sh	t8,648(s0)
    147c:	a609028e 	sh	t1,654(s0)
    1480:	8d4a1de4 	lw	t2,7652(t2)
    1484:	3159000f 	andi	t9,t2,0xf
    1488:	57200014 	bnezl	t9,14dc <EnDivingGame_Update+0x1bc>
    148c:	860e0290 	lh	t6,656(s0)
    1490:	8e0c0024 	lw	t4,36(s0)
    1494:	27a50030 	addiu	a1,sp,48
    1498:	3c0141a0 	lui	at,0x41a0
    149c:	acac0000 	sw	t4,0(a1)
    14a0:	8e0b0028 	lw	t3,40(s0)
    14a4:	44815000 	mtc1	at,$f10
    14a8:	240d001e 	li	t5,30
    14ac:	acab0004 	sw	t3,4(a1)
    14b0:	8e0c002c 	lw	t4,44(s0)
    14b4:	24060064 	li	a2,100
    14b8:	240701f4 	li	a3,500
    14bc:	acac0008 	sw	t4,8(a1)
    14c0:	c7a80034 	lwc1	$f8,52(sp)
    14c4:	afad0010 	sw	t5,16(sp)
    14c8:	460a4400 	add.s	$f16,$f8,$f10
    14cc:	0c000000 	jal	0 <EnDivingGame_Init>
    14d0:	e7b00034 	swc1	$f16,52(sp)
    14d4:	8fa4004c 	lw	a0,76(sp)
    14d8:	860e0290 	lh	t6,656(s0)
    14dc:	3c014270 	lui	at,0x4270
    14e0:	44819000 	mtc1	at,$f18
    14e4:	25cf0001 	addiu	t7,t6,1
    14e8:	a60f0290 	sh	t7,656(s0)
    14ec:	2418001d 	li	t8,29
    14f0:	afb80014 	sw	t8,20(sp)
    14f4:	02002825 	move	a1,s0
    14f8:	3c0641a0 	lui	a2,0x41a0
    14fc:	3c0741a0 	lui	a3,0x41a0
    1500:	0c000000 	jal	0 <EnDivingGame_Init>
    1504:	e7b20010 	swc1	$f18,16(sp)
    1508:	2606034c 	addiu	a2,s0,844
    150c:	00c02825 	move	a1,a2
    1510:	afa6002c 	sw	a2,44(sp)
    1514:	0c000000 	jal	0 <EnDivingGame_Init>
    1518:	02002025 	move	a0,s0
    151c:	8fa4004c 	lw	a0,76(sp)
    1520:	3c010001 	lui	at,0x1
    1524:	34211e60 	ori	at,at,0x1e60
    1528:	8fa6002c 	lw	a2,44(sp)
    152c:	0c000000 	jal	0 <EnDivingGame_Init>
    1530:	00812821 	addu	a1,a0,at
    1534:	8fbf0024 	lw	ra,36(sp)
    1538:	8fb00020 	lw	s0,32(sp)
    153c:	27bd0048 	addiu	sp,sp,72
    1540:	03e00008 	jr	ra
    1544:	00000000 	nop

00001548 <func_809EEDB8>:
    1548:	27bdffe8 	addiu	sp,sp,-24
    154c:	afbf0014 	sw	ra,20(sp)
    1550:	0c000000 	jal	0 <EnDivingGame_Init>
    1554:	24050008 	li	a1,8
    1558:	3c0edf00 	lui	t6,0xdf00
    155c:	ac4e0000 	sw	t6,0(v0)
    1560:	ac400004 	sw	zero,4(v0)
    1564:	8fbf0014 	lw	ra,20(sp)
    1568:	27bd0018 	addiu	sp,sp,24
    156c:	03e00008 	jr	ra
    1570:	00000000 	nop

00001574 <func_809EEDE4>:
    1574:	27bdffd8 	addiu	sp,sp,-40
    1578:	24010006 	li	at,6
    157c:	afbf0014 	sw	ra,20(sp)
    1580:	afa40028 	sw	a0,40(sp)
    1584:	afa60030 	sw	a2,48(sp)
    1588:	14a10007 	bne	a1,at,15a8 <func_809EEDE4+0x34>
    158c:	afa70034 	sw	a3,52(sp)
    1590:	8fa20038 	lw	v0,56(sp)
    1594:	8fa3003c 	lw	v1,60(sp)
    1598:	844e0000 	lh	t6,0(v0)
    159c:	846f028c 	lh	t7,652(v1)
    15a0:	01cfc021 	addu	t8,t6,t7
    15a4:	a4580000 	sh	t8,0(v0)
    15a8:	2401000f 	li	at,15
    15ac:	8fa20038 	lw	v0,56(sp)
    15b0:	14a10009 	bne	a1,at,15d8 <func_809EEDE4+0x64>
    15b4:	8fa3003c 	lw	v1,60(sp)
    15b8:	84590000 	lh	t9,0(v0)
    15bc:	84680286 	lh	t0,646(v1)
    15c0:	844a0004 	lh	t2,4(v0)
    15c4:	03284821 	addu	t1,t9,t0
    15c8:	a4490000 	sh	t1,0(v0)
    15cc:	846b0288 	lh	t3,648(v1)
    15d0:	014b6021 	addu	t4,t2,t3
    15d4:	a44c0004 	sh	t4,4(v0)
    15d8:	906d031d 	lbu	t5,797(v1)
    15dc:	24010008 	li	at,8
    15e0:	51a00038 	beqzl	t5,16c4 <func_809EEDE4+0x150>
    15e4:	8fbf0014 	lw	ra,20(sp)
    15e8:	10a10006 	beq	a1,at,1604 <func_809EEDE4+0x90>
    15ec:	00051880 	sll	v1,a1,0x2
    15f0:	24010009 	li	at,9
    15f4:	10a10003 	beq	a1,at,1604 <func_809EEDE4+0x90>
    15f8:	2401000c 	li	at,12
    15fc:	54a10031 	bnel	a1,at,16c4 <func_809EEDE4+0x150>
    1600:	8fbf0014 	lw	ra,20(sp)
    1604:	8fae0028 	lw	t6,40(sp)
    1608:	00651823 	subu	v1,v1,a1
    160c:	000318c0 	sll	v1,v1,0x3
    1610:	8dcf009c 	lw	t7,156(t6)
    1614:	00651821 	addu	v1,v1,a1
    1618:	00031840 	sll	v1,v1,0x1
    161c:	24780814 	addiu	t8,v1,2068
    1620:	01f80019 	multu	t7,t8
    1624:	afa30018 	sw	v1,24(sp)
    1628:	00002012 	mflo	a0
    162c:	00042400 	sll	a0,a0,0x10
    1630:	0c000000 	jal	0 <EnDivingGame_Init>
    1634:	00042403 	sra	a0,a0,0x10
    1638:	8fa20038 	lw	v0,56(sp)
    163c:	3c014348 	lui	at,0x4348
    1640:	44814000 	mtc1	at,$f8
    1644:	84590002 	lh	t9,2(v0)
    1648:	8fa30018 	lw	v1,24(sp)
    164c:	46080282 	mul.s	$f10,$f0,$f8
    1650:	44992000 	mtc1	t9,$f4
    1654:	246c0940 	addiu	t4,v1,2368
    1658:	468021a0 	cvt.s.w	$f6,$f4
    165c:	460a3400 	add.s	$f16,$f6,$f10
    1660:	4600848d 	trunc.w.s	$f18,$f16
    1664:	44099000 	mfc1	t1,$f18
    1668:	00000000 	nop
    166c:	a4490002 	sh	t1,2(v0)
    1670:	8faa0028 	lw	t2,40(sp)
    1674:	8d4b009c 	lw	t3,156(t2)
    1678:	016c0019 	multu	t3,t4
    167c:	00002012 	mflo	a0
    1680:	00042400 	sll	a0,a0,0x10
    1684:	0c000000 	jal	0 <EnDivingGame_Init>
    1688:	00042403 	sra	a0,a0,0x10
    168c:	8fa20038 	lw	v0,56(sp)
    1690:	3c014348 	lui	at,0x4348
    1694:	44813000 	mtc1	at,$f6
    1698:	844d0004 	lh	t5,4(v0)
    169c:	46060282 	mul.s	$f10,$f0,$f6
    16a0:	448d2000 	mtc1	t5,$f4
    16a4:	00000000 	nop
    16a8:	46802220 	cvt.s.w	$f8,$f4
    16ac:	460a4400 	add.s	$f16,$f8,$f10
    16b0:	4600848d 	trunc.w.s	$f18,$f16
    16b4:	440f9000 	mfc1	t7,$f18
    16b8:	00000000 	nop
    16bc:	a44f0004 	sh	t7,4(v0)
    16c0:	8fbf0014 	lw	ra,20(sp)
    16c4:	27bd0028 	addiu	sp,sp,40
    16c8:	00001025 	move	v0,zero
    16cc:	03e00008 	jr	ra
    16d0:	00000000 	nop

000016d4 <EnDivingGame_Draw>:
    16d4:	27bdff98 	addiu	sp,sp,-104
    16d8:	afb20030 	sw	s2,48(sp)
    16dc:	00a09025 	move	s2,a1
    16e0:	afbf0034 	sw	ra,52(sp)
    16e4:	afb1002c 	sw	s1,44(sp)
    16e8:	afb00028 	sw	s0,40(sp)
    16ec:	8ca50000 	lw	a1,0(a1)
    16f0:	00808825 	move	s1,a0
    16f4:	3c060000 	lui	a2,0x0
    16f8:	24c60000 	addiu	a2,a2,0
    16fc:	27a4004c 	addiu	a0,sp,76
    1700:	240704bc 	li	a3,1212
    1704:	0c000000 	jal	0 <EnDivingGame_Init>
    1708:	00a08025 	move	s0,a1
    170c:	0c000000 	jal	0 <EnDivingGame_Init>
    1710:	8e440000 	lw	a0,0(s2)
    1714:	8e0202c0 	lw	v0,704(s0)
    1718:	3c0ffb00 	lui	t7,0xfb00
    171c:	241800ff 	li	t8,255
    1720:	244e0008 	addiu	t6,v0,8
    1724:	ae0e02c0 	sw	t6,704(s0)
    1728:	ac4f0000 	sw	t7,0(v0)
    172c:	ac580004 	sw	t8,4(v0)
    1730:	8e0202c0 	lw	v0,704(s0)
    1734:	3c08db06 	lui	t0,0xdb06
    1738:	35080030 	ori	t0,t0,0x30
    173c:	24590008 	addiu	t9,v0,8
    1740:	ae1902c0 	sw	t9,704(s0)
    1744:	ac480000 	sw	t0,0(v0)
    1748:	8e440000 	lw	a0,0(s2)
    174c:	0c000000 	jal	0 <EnDivingGame_Init>
    1750:	afa20044 	sw	v0,68(sp)
    1754:	8fa30044 	lw	v1,68(sp)
    1758:	3c0adb06 	lui	t2,0xdb06
    175c:	354a0020 	ori	t2,t2,0x20
    1760:	ac620004 	sw	v0,4(v1)
    1764:	8e0202c0 	lw	v0,704(s0)
    1768:	3c040000 	lui	a0,0x0
    176c:	3c190000 	lui	t9,0x0
    1770:	24490008 	addiu	t1,v0,8
    1774:	ae0902c0 	sw	t1,704(s0)
    1778:	ac4a0000 	sw	t2,0(v0)
    177c:	862b029e 	lh	t3,670(s1)
    1780:	3c0100ff 	lui	at,0xff
    1784:	3421ffff 	ori	at,at,0xffff
    1788:	000b6080 	sll	t4,t3,0x2
    178c:	008c2021 	addu	a0,a0,t4
    1790:	8c840000 	lw	a0,0(a0)
    1794:	3c0a0000 	lui	t2,0x0
    1798:	254a0000 	addiu	t2,t2,0
    179c:	00047100 	sll	t6,a0,0x4
    17a0:	000e7f02 	srl	t7,t6,0x1c
    17a4:	000fc080 	sll	t8,t7,0x2
    17a8:	0338c821 	addu	t9,t9,t8
    17ac:	8f390000 	lw	t9,0(t9)
    17b0:	00816824 	and	t5,a0,at
    17b4:	3c018000 	lui	at,0x8000
    17b8:	01b94021 	addu	t0,t5,t9
    17bc:	01014821 	addu	t1,t0,at
    17c0:	ac490004 	sw	t1,4(v0)
    17c4:	9227014e 	lbu	a3,334(s1)
    17c8:	8e26016c 	lw	a2,364(s1)
    17cc:	8e250150 	lw	a1,336(s1)
    17d0:	afb10018 	sw	s1,24(sp)
    17d4:	afa00014 	sw	zero,20(sp)
    17d8:	afaa0010 	sw	t2,16(sp)
    17dc:	0c000000 	jal	0 <EnDivingGame_Init>
    17e0:	02402025 	move	a0,s2
    17e4:	3c060000 	lui	a2,0x0
    17e8:	24c60000 	addiu	a2,a2,0
    17ec:	27a4004c 	addiu	a0,sp,76
    17f0:	8e450000 	lw	a1,0(s2)
    17f4:	0c000000 	jal	0 <EnDivingGame_Init>
    17f8:	240704d0 	li	a3,1232
    17fc:	8fbf0034 	lw	ra,52(sp)
    1800:	8fb00028 	lw	s0,40(sp)
    1804:	8fb1002c 	lw	s1,44(sp)
    1808:	8fb20030 	lw	s2,48(sp)
    180c:	03e00008 	jr	ra
    1810:	27bd0068 	addiu	sp,sp,104
	...
