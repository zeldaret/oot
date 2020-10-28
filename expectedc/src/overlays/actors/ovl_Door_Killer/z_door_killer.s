
build/src/overlays/actors/ovl_Door_Killer/z_door_killer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DoorKiller_Init>:
       0:	27bdffa8 	addiu	sp,sp,-88
       4:	afb10028 	sw	s1,40(sp)
       8:	3c010001 	lui	at,0x1
       c:	afb50038 	sw	s5,56(sp)
      10:	afb40034 	sw	s4,52(sp)
      14:	afb2002c 	sw	s2,44(sp)
      18:	afb00024 	sw	s0,36(sp)
      1c:	342117a4 	ori	at,at,0x17a4
      20:	3c110000 	lui	s1,0x0
      24:	00809025 	move	s2,a0
      28:	00a0a825 	move	s5,a1
      2c:	afbf003c 	sw	ra,60(sp)
      30:	afb30030 	sw	s3,48(sp)
      34:	26310000 	addiu	s1,s1,0
      38:	00a1a021 	addu	s4,a1,at
      3c:	00008025 	move	s0,zero
      40:	02802025 	move	a0,s4
      44:	0c000000 	jal	0 <DoorKiller_Init>
      48:	86250000 	lh	a1,0(s1)
      4c:	a250021d 	sb	s0,541(s2)
      50:	26100001 	addiu	s0,s0,1
      54:	26310008 	addiu	s1,s1,8
      58:	0440fff9 	bltz	v0,40 <DoorKiller_Init+0x40>
      5c:	00409825 	move	s3,v0
      60:	3c040000 	lui	a0,0x0
      64:	24840000 	addiu	a0,a0,0
      68:	0c000000 	jal	0 <DoorKiller_Init>
      6c:	00402825 	move	a1,v0
      70:	3c040000 	lui	a0,0x0
      74:	24840000 	addiu	a0,a0,0
      78:	0c000000 	jal	0 <DoorKiller_Init>
      7c:	9245021d 	lbu	a1,541(s2)
      80:	924e021d 	lbu	t6,541(s2)
      84:	44800000 	mtc1	zero,$f0
      88:	3c180000 	lui	t8,0x0
      8c:	000e78c0 	sll	t7,t6,0x3
      90:	a253021c 	sb	s3,540(s2)
      94:	030fc021 	addu	t8,t8,t7
      98:	8f180000 	lw	t8,0(t8)
      9c:	44050000 	mfc1	a1,$f0
      a0:	44070000 	mfc1	a3,$f0
      a4:	264400b4 	addiu	a0,s2,180
      a8:	00003025 	move	a2,zero
      ac:	0c000000 	jal	0 <DoorKiller_Init>
      b0:	ae580214 	sw	t8,532(s2)
      b4:	3c053c23 	lui	a1,0x3c23
      b8:	34a5d70a 	ori	a1,a1,0xd70a
      bc:	0c000000 	jal	0 <DoorKiller_Init>
      c0:	02402025 	move	a0,s2
      c4:	8648001c 	lh	t0,28(s2)
      c8:	a640021a 	sh	zero,538(s2)
      cc:	a6400218 	sh	zero,536(s2)
      d0:	310900ff 	andi	t1,t0,0xff
      d4:	2d210005 	sltiu	at,t1,5
      d8:	a2400190 	sb	zero,400(s2)
      dc:	102000a0 	beqz	at,360 <L80994E88+0x128>
      e0:	a2400191 	sb	zero,401(s2)
      e4:	00094880 	sll	t1,t1,0x2
      e8:	3c010000 	lui	at,0x0
      ec:	00290821 	addu	at,at,t1
      f0:	8c290000 	lw	t1,0(at)
      f4:	01200008 	jr	t1
      f8:	00000000 	nop

000000fc <L80994D4C>:
      fc:	3c060600 	lui	a2,0x600
     100:	26420192 	addiu	v0,s2,402
     104:	240a0009 	li	t2,9
     108:	afaa0018 	sw	t2,24(sp)
     10c:	afa20010 	sw	v0,16(sp)
     110:	afa20014 	sw	v0,20(sp)
     114:	24c61bc8 	addiu	a2,a2,7112
     118:	02a02025 	move	a0,s5
     11c:	2645014c 	addiu	a1,s2,332
     120:	0c000000 	jal	0 <DoorKiller_Init>
     124:	00003825 	move	a3,zero
     128:	3c0b0000 	lui	t3,0x0
     12c:	256b0000 	addiu	t3,t3,0
     130:	ae4b0280 	sw	t3,640(s2)
     134:	02402025 	move	a0,s2
     138:	0c000000 	jal	0 <DoorKiller_Init>
     13c:	02a02825 	move	a1,s5
     140:	240c4000 	li	t4,16384
     144:	a64c019c 	sh	t4,412(s2)
     148:	864d019c 	lh	t5,412(s2)
     14c:	265001c8 	addiu	s0,s2,456
     150:	02002825 	move	a1,s0
     154:	02a02025 	move	a0,s5
     158:	0c000000 	jal	0 <DoorKiller_Init>
     15c:	a64d0198 	sh	t5,408(s2)
     160:	3c070000 	lui	a3,0x0
     164:	24e70000 	addiu	a3,a3,0
     168:	02a02025 	move	a0,s5
     16c:	02002825 	move	a1,s0
     170:	0c000000 	jal	0 <DoorKiller_Init>
     174:	02403025 	move	a2,s2
     178:	26500220 	addiu	s0,s2,544
     17c:	02002825 	move	a1,s0
     180:	0c000000 	jal	0 <DoorKiller_Init>
     184:	02a02025 	move	a0,s5
     188:	3c070000 	lui	a3,0x0
     18c:	264e0240 	addiu	t6,s2,576
     190:	afae0010 	sw	t6,16(sp)
     194:	24e70000 	addiu	a3,a3,0
     198:	02a02025 	move	a0,s5
     19c:	02002825 	move	a1,s0
     1a0:	0c000000 	jal	0 <DoorKiller_Init>
     1a4:	02403025 	move	a2,s2
     1a8:	8e58023c 	lw	t8,572(s2)
     1ac:	240f0050 	li	t7,80
     1b0:	2401003f 	li	at,63
     1b4:	a70f0036 	sh	t7,54(t8)
     1b8:	c6440024 	lwc1	$f4,36(s2)
     1bc:	8e49023c 	lw	t1,572(s2)
     1c0:	4600218d 	trunc.w.s	$f6,$f4
     1c4:	44083000 	mfc1	t0,$f6
     1c8:	00000000 	nop
     1cc:	a5280030 	sh	t0,48(t1)
     1d0:	c6480028 	lwc1	$f8,40(s2)
     1d4:	8e4f023c 	lw	t7,572(s2)
     1d8:	4600428d 	trunc.w.s	$f10,$f8
     1dc:	440d5000 	mfc1	t5,$f10
     1e0:	00000000 	nop
     1e4:	25ae0032 	addiu	t6,t5,50
     1e8:	a5ee0032 	sh	t6,50(t7)
     1ec:	c650002c 	lwc1	$f16,44(s2)
     1f0:	8e48023c 	lw	t0,572(s2)
     1f4:	4600848d 	trunc.w.s	$f18,$f16
     1f8:	44199000 	mfc1	t9,$f18
     1fc:	00000000 	nop
     200:	a5190034 	sh	t9,52(t0)
     204:	8645001c 	lh	a1,28(s2)
     208:	00052a03 	sra	a1,a1,0x8
     20c:	30a5003f 	andi	a1,a1,0x3f
     210:	50a10054 	beql	a1,at,364 <L80994E88+0x12c>
     214:	8fbf003c 	lw	ra,60(sp)
     218:	0c000000 	jal	0 <DoorKiller_Init>
     21c:	02a02025 	move	a0,s5
     220:	50400050 	beqzl	v0,364 <L80994E88+0x12c>
     224:	8fbf003c 	lw	ra,60(sp)
     228:	0c000000 	jal	0 <DoorKiller_Init>
     22c:	02402025 	move	a0,s2
     230:	1000004c 	b	364 <L80994E88+0x12c>
     234:	8fbf003c 	lw	ra,60(sp)

00000238 <L80994E88>:
     238:	3c090000 	lui	t1,0x0
     23c:	25290000 	addiu	t1,t1,0
     240:	ae490280 	sw	t1,640(s2)
     244:	02402025 	move	a0,s2
     248:	0c000000 	jal	0 <DoorKiller_Init>
     24c:	02a02825 	move	a1,s5
     250:	3c010000 	lui	at,0x0
     254:	c4240000 	lwc1	$f4,0(at)
     258:	3c01c0c0 	lui	at,0xc0c0
     25c:	44813000 	mtc1	at,$f6
     260:	3c014100 	lui	at,0x4100
     264:	44816000 	mtc1	at,$f12
     268:	e644006c 	swc1	$f4,108(s2)
     26c:	0c000000 	jal	0 <DoorKiller_Init>
     270:	e6460070 	swc1	$f6,112(s2)
     274:	3c014100 	lui	at,0x4100
     278:	44816000 	mtc1	at,$f12
     27c:	0c000000 	jal	0 <DoorKiller_Init>
     280:	e7a00050 	swc1	$f0,80(sp)
     284:	e6400064 	swc1	$f0,100(s2)
     288:	0c000000 	jal	0 <DoorKiller_Init>
     28c:	86440032 	lh	a0,50(s2)
     290:	e7a00040 	swc1	$f0,64(sp)
     294:	0c000000 	jal	0 <DoorKiller_Init>
     298:	86440032 	lh	a0,50(s2)
     29c:	c7a80040 	lwc1	$f8,64(sp)
     2a0:	c7aa0050 	lwc1	$f10,80(sp)
     2a4:	c6520064 	lwc1	$f18,100(s2)
     2a8:	86440032 	lh	a0,50(s2)
     2ac:	460a4402 	mul.s	$f16,$f8,$f10
     2b0:	00000000 	nop
     2b4:	46120102 	mul.s	$f4,$f0,$f18
     2b8:	46102180 	add.s	$f6,$f4,$f16
     2bc:	0c000000 	jal	0 <DoorKiller_Init>
     2c0:	e646005c 	swc1	$f6,92(s2)
     2c4:	e7a00040 	swc1	$f0,64(sp)
     2c8:	0c000000 	jal	0 <DoorKiller_Init>
     2cc:	86440032 	lh	a0,50(s2)
     2d0:	c7a80040 	lwc1	$f8,64(sp)
     2d4:	c7b20050 	lwc1	$f18,80(sp)
     2d8:	c6500064 	lwc1	$f16,100(s2)
     2dc:	46004287 	neg.s	$f10,$f8
     2e0:	3c014080 	lui	at,0x4080
     2e4:	46125102 	mul.s	$f4,$f10,$f18
     2e8:	44816000 	mtc1	at,$f12
     2ec:	46100182 	mul.s	$f6,$f0,$f16
     2f0:	46043200 	add.s	$f8,$f6,$f4
     2f4:	0c000000 	jal	0 <DoorKiller_Init>
     2f8:	e6480064 	swc1	$f8,100(s2)
     2fc:	3c014080 	lui	at,0x4080
     300:	44815000 	mtc1	at,$f10
     304:	3c014580 	lui	at,0x4580
     308:	44816000 	mtc1	at,$f12
     30c:	460a0480 	add.s	$f18,$f0,$f10
     310:	0c000000 	jal	0 <DoorKiller_Init>
     314:	e6520060 	swc1	$f18,96(s2)
     318:	4600040d 	trunc.w.s	$f16,$f0
     31c:	3c014580 	lui	at,0x4580
     320:	44816000 	mtc1	at,$f12
     324:	440b8000 	mfc1	t3,$f16
     328:	0c000000 	jal	0 <DoorKiller_Init>
     32c:	a64b0030 	sh	t3,48(s2)
     330:	4600018d 	trunc.w.s	$f6,$f0
     334:	3c014580 	lui	at,0x4580
     338:	44816000 	mtc1	at,$f12
     33c:	440d3000 	mfc1	t5,$f6
     340:	0c000000 	jal	0 <DoorKiller_Init>
     344:	a64d0032 	sh	t5,50(s2)
     348:	4600010d 	trunc.w.s	$f4,$f0
     34c:	24180050 	li	t8,80
     350:	a658021a 	sh	t8,538(s2)
     354:	440f2000 	mfc1	t7,$f4
     358:	00000000 	nop
     35c:	a64f0034 	sh	t7,52(s2)
     360:	8fbf003c 	lw	ra,60(sp)
     364:	8fb00024 	lw	s0,36(sp)
     368:	8fb10028 	lw	s1,40(sp)
     36c:	8fb2002c 	lw	s2,44(sp)
     370:	8fb30030 	lw	s3,48(sp)
     374:	8fb40034 	lw	s4,52(sp)
     378:	8fb50038 	lw	s5,56(sp)
     37c:	03e00008 	jr	ra
     380:	27bd0058 	addiu	sp,sp,88

00000384 <DoorKiller_Destroy>:
     384:	27bdffe8 	addiu	sp,sp,-24
     388:	afbf0014 	sw	ra,20(sp)
     38c:	afa5001c 	sw	a1,28(sp)
     390:	848e001c 	lh	t6,28(a0)
     394:	00803025 	move	a2,a0
     398:	00a02025 	move	a0,a1
     39c:	31cf00ff 	andi	t7,t6,0xff
     3a0:	15e00007 	bnez	t7,3c0 <DoorKiller_Destroy+0x3c>
     3a4:	24c501c8 	addiu	a1,a2,456
     3a8:	0c000000 	jal	0 <DoorKiller_Init>
     3ac:	afa60018 	sw	a2,24(sp)
     3b0:	8fa60018 	lw	a2,24(sp)
     3b4:	8fa4001c 	lw	a0,28(sp)
     3b8:	0c000000 	jal	0 <DoorKiller_Init>
     3bc:	24c50220 	addiu	a1,a2,544
     3c0:	8fbf0014 	lw	ra,20(sp)
     3c4:	27bd0018 	addiu	sp,sp,24
     3c8:	03e00008 	jr	ra
     3cc:	00000000 	nop

000003d0 <func_80995020>:
     3d0:	27bdffc0 	addiu	sp,sp,-64
     3d4:	afb00030 	sw	s0,48(sp)
     3d8:	00808025 	move	s0,a0
     3dc:	afbf003c 	sw	ra,60(sp)
     3e0:	afb20038 	sw	s2,56(sp)
     3e4:	afb10034 	sw	s1,52(sp)
     3e8:	3c014110 	lui	at,0x4110
     3ec:	44813000 	mtc1	at,$f6
     3f0:	c6040028 	lwc1	$f4,40(s0)
     3f4:	8e070024 	lw	a3,36(s0)
     3f8:	24b21c24 	addiu	s2,a1,7204
     3fc:	46062200 	add.s	$f8,$f4,$f6
     400:	24190001 	li	t9,1
     404:	00a08825 	move	s1,a1
     408:	02402025 	move	a0,s2
     40c:	e7a80010 	swc1	$f8,16(sp)
     410:	c60a002c 	lwc1	$f10,44(s0)
     414:	240601c1 	li	a2,449
     418:	e7aa0014 	swc1	$f10,20(sp)
     41c:	860e00b4 	lh	t6,180(s0)
     420:	afae0018 	sw	t6,24(sp)
     424:	860f00b6 	lh	t7,182(s0)
     428:	afaf001c 	sw	t7,28(sp)
     42c:	861800b8 	lh	t8,184(s0)
     430:	afb90024 	sw	t9,36(sp)
     434:	0c000000 	jal	0 <DoorKiller_Init>
     438:	afb80020 	sw	t8,32(sp)
     43c:	3c010000 	lui	at,0x0
     440:	c4320000 	lwc1	$f18,0(at)
     444:	3c010000 	lui	at,0x0
     448:	c4280000 	lwc1	$f8,0(at)
     44c:	c6060028 	lwc1	$f6,40(s0)
     450:	c6100024 	lwc1	$f16,36(s0)
     454:	240b0002 	li	t3,2
     458:	46083280 	add.s	$f10,$f6,$f8
     45c:	02402025 	move	a0,s2
     460:	02202825 	move	a1,s1
     464:	46128100 	add.s	$f4,$f16,$f18
     468:	e7aa0010 	swc1	$f10,16(sp)
     46c:	c610002c 	lwc1	$f16,44(s0)
     470:	240601c1 	li	a2,449
     474:	44072000 	mfc1	a3,$f4
     478:	e7b00014 	swc1	$f16,20(sp)
     47c:	860800b4 	lh	t0,180(s0)
     480:	afa80018 	sw	t0,24(sp)
     484:	860900b6 	lh	t1,182(s0)
     488:	afa9001c 	sw	t1,28(sp)
     48c:	860a00b8 	lh	t2,184(s0)
     490:	afab0024 	sw	t3,36(sp)
     494:	0c000000 	jal	0 <DoorKiller_Init>
     498:	afaa0020 	sw	t2,32(sp)
     49c:	3c010000 	lui	at,0x0
     4a0:	c4240000 	lwc1	$f4,0(at)
     4a4:	3c010000 	lui	at,0x0
     4a8:	c42a0000 	lwc1	$f10,0(at)
     4ac:	c6080028 	lwc1	$f8,40(s0)
     4b0:	c6120024 	lwc1	$f18,36(s0)
     4b4:	240f0003 	li	t7,3
     4b8:	460a4400 	add.s	$f16,$f8,$f10
     4bc:	02402025 	move	a0,s2
     4c0:	02202825 	move	a1,s1
     4c4:	46049181 	sub.s	$f6,$f18,$f4
     4c8:	e7b00010 	swc1	$f16,16(sp)
     4cc:	c612002c 	lwc1	$f18,44(s0)
     4d0:	240601c1 	li	a2,449
     4d4:	44073000 	mfc1	a3,$f6
     4d8:	e7b20014 	swc1	$f18,20(sp)
     4dc:	860c00b4 	lh	t4,180(s0)
     4e0:	afac0018 	sw	t4,24(sp)
     4e4:	860d00b6 	lh	t5,182(s0)
     4e8:	afad001c 	sw	t5,28(sp)
     4ec:	860e00b8 	lh	t6,184(s0)
     4f0:	afaf0024 	sw	t7,36(sp)
     4f4:	0c000000 	jal	0 <DoorKiller_Init>
     4f8:	afae0020 	sw	t6,32(sp)
     4fc:	3c010000 	lui	at,0x0
     500:	c4260000 	lwc1	$f6,0(at)
     504:	3c010000 	lui	at,0x0
     508:	c4300000 	lwc1	$f16,0(at)
     50c:	c60a0028 	lwc1	$f10,40(s0)
     510:	c6040024 	lwc1	$f4,36(s0)
     514:	24090004 	li	t1,4
     518:	46105480 	add.s	$f18,$f10,$f16
     51c:	02402025 	move	a0,s2
     520:	02202825 	move	a1,s1
     524:	46062200 	add.s	$f8,$f4,$f6
     528:	e7b20010 	swc1	$f18,16(sp)
     52c:	c604002c 	lwc1	$f4,44(s0)
     530:	240601c1 	li	a2,449
     534:	44074000 	mfc1	a3,$f8
     538:	e7a40014 	swc1	$f4,20(sp)
     53c:	861800b4 	lh	t8,180(s0)
     540:	afb80018 	sw	t8,24(sp)
     544:	861900b6 	lh	t9,182(s0)
     548:	afb9001c 	sw	t9,28(sp)
     54c:	860800b8 	lh	t0,184(s0)
     550:	afa90024 	sw	t1,36(sp)
     554:	0c000000 	jal	0 <DoorKiller_Init>
     558:	afa80020 	sw	t0,32(sp)
     55c:	8fbf003c 	lw	ra,60(sp)
     560:	8fb00030 	lw	s0,48(sp)
     564:	8fb10034 	lw	s1,52(sp)
     568:	8fb20038 	lw	s2,56(sp)
     56c:	03e00008 	jr	ra
     570:	27bd0040 	addiu	sp,sp,64

00000574 <func_809951C4>:
     574:	27bdffe8 	addiu	sp,sp,-24
     578:	afbf0014 	sw	ra,20(sp)
     57c:	afa5001c 	sw	a1,28(sp)
     580:	c4840060 	lwc1	$f4,96(a0)
     584:	c486006c 	lwc1	$f6,108(a0)
     588:	c4800070 	lwc1	$f0,112(a0)
     58c:	3c010000 	lui	at,0x0
     590:	46062200 	add.s	$f8,$f4,$f6
     594:	e4880060 	swc1	$f8,96(a0)
     598:	c48a0060 	lwc1	$f10,96(a0)
     59c:	4600503c 	c.lt.s	$f10,$f0
     5a0:	00000000 	nop
     5a4:	45000002 	bc1f	5b0 <func_809951C4+0x3c>
     5a8:	00000000 	nop
     5ac:	e4800060 	swc1	$f0,96(a0)
     5b0:	c4200000 	lwc1	$f0,0(at)
     5b4:	c490005c 	lwc1	$f16,92(a0)
     5b8:	c4840064 	lwc1	$f4,100(a0)
     5bc:	848e00b4 	lh	t6,180(a0)
     5c0:	46008482 	mul.s	$f18,$f16,$f0
     5c4:	848f0030 	lh	t7,48(a0)
     5c8:	849900b6 	lh	t9,182(a0)
     5cc:	46002182 	mul.s	$f6,$f4,$f0
     5d0:	84880032 	lh	t0,50(a0)
     5d4:	848a00b8 	lh	t2,184(a0)
     5d8:	848b0034 	lh	t3,52(a0)
     5dc:	9482021a 	lhu	v0,538(a0)
     5e0:	01cfc021 	addu	t8,t6,t7
     5e4:	03284821 	addu	t1,t9,t0
     5e8:	014b6021 	addu	t4,t2,t3
     5ec:	e492005c 	swc1	$f18,92(a0)
     5f0:	e4860064 	swc1	$f6,100(a0)
     5f4:	a49800b4 	sh	t8,180(a0)
     5f8:	a48900b6 	sh	t1,182(a0)
     5fc:	10400004 	beqz	v0,610 <func_809951C4+0x9c>
     600:	a48c00b8 	sh	t4,184(a0)
     604:	244dffff 	addiu	t5,v0,-1
     608:	10000004 	b	61c <func_809951C4+0xa8>
     60c:	a48d021a 	sh	t5,538(a0)
     610:	0c000000 	jal	0 <DoorKiller_Init>
     614:	afa40018 	sw	a0,24(sp)
     618:	8fa40018 	lw	a0,24(sp)
     61c:	0c000000 	jal	0 <DoorKiller_Init>
     620:	00000000 	nop
     624:	8fbf0014 	lw	ra,20(sp)
     628:	27bd0018 	addiu	sp,sp,24
     62c:	03e00008 	jr	ra
     630:	00000000 	nop

00000634 <func_80995284>:
     634:	afa50004 	sw	a1,4(sp)
     638:	908e01d9 	lbu	t6,473(a0)
     63c:	00001025 	move	v0,zero
     640:	31cf0002 	andi	t7,t6,0x2
     644:	11e00006 	beqz	t7,660 <func_80995284+0x2c>
     648:	00000000 	nop
     64c:	8c980204 	lw	t8,516(a0)
     650:	13000003 	beqz	t8,660 <func_80995284+0x2c>
     654:	00000000 	nop
     658:	03e00008 	jr	ra
     65c:	24020001 	li	v0,1
     660:	03e00008 	jr	ra
     664:	00000000 	nop

00000668 <func_809952B8>:
     668:	27bdffe0 	addiu	sp,sp,-32
     66c:	afbf0014 	sw	ra,20(sp)
     670:	afa50024 	sw	a1,36(sp)
     674:	248601c8 	addiu	a2,a0,456
     678:	00c02825 	move	a1,a2
     67c:	afa6001c 	sw	a2,28(sp)
     680:	0c000000 	jal	0 <DoorKiller_Init>
     684:	afa40020 	sw	a0,32(sp)
     688:	8fa40024 	lw	a0,36(sp)
     68c:	3c010001 	lui	at,0x1
     690:	34211e60 	ori	at,at,0x1e60
     694:	00812821 	addu	a1,a0,at
     698:	8fa6001c 	lw	a2,28(sp)
     69c:	0c000000 	jal	0 <DoorKiller_Init>
     6a0:	afa50018 	sw	a1,24(sp)
     6a4:	8fa60020 	lw	a2,32(sp)
     6a8:	8fa50018 	lw	a1,24(sp)
     6ac:	8fa40024 	lw	a0,36(sp)
     6b0:	0c000000 	jal	0 <DoorKiller_Init>
     6b4:	24c60220 	addiu	a2,a2,544
     6b8:	8fbf0014 	lw	ra,20(sp)
     6bc:	27bd0020 	addiu	sp,sp,32
     6c0:	03e00008 	jr	ra
     6c4:	00000000 	nop

000006c8 <func_80995318>:
     6c8:	27bdffe8 	addiu	sp,sp,-24
     6cc:	afbf0014 	sw	ra,20(sp)
     6d0:	afa5001c 	sw	a1,28(sp)
     6d4:	8486001c 	lh	a2,28(a0)
     6d8:	00803825 	move	a3,a0
     6dc:	2401003f 	li	at,63
     6e0:	00063203 	sra	a2,a2,0x8
     6e4:	30c6003f 	andi	a2,a2,0x3f
     6e8:	10c10005 	beq	a2,at,700 <func_80995318+0x38>
     6ec:	00a02025 	move	a0,a1
     6f0:	00c02825 	move	a1,a2
     6f4:	0c000000 	jal	0 <DoorKiller_Init>
     6f8:	afa70018 	sw	a3,24(sp)
     6fc:	8fa70018 	lw	a3,24(sp)
     700:	0c000000 	jal	0 <DoorKiller_Init>
     704:	00e02025 	move	a0,a3
     708:	8fbf0014 	lw	ra,20(sp)
     70c:	27bd0018 	addiu	sp,sp,24
     710:	03e00008 	jr	ra
     714:	00000000 	nop

00000718 <func_80995368>:
     718:	27bdffe8 	addiu	sp,sp,-24
     71c:	afbf0014 	sw	ra,20(sp)
     720:	9482021a 	lhu	v0,538(a0)
     724:	3c0f0000 	lui	t7,0x0
     728:	00803025 	move	a2,a0
     72c:	18400004 	blez	v0,740 <func_80995368+0x28>
     730:	25ef0000 	addiu	t7,t7,0
     734:	244effff 	addiu	t6,v0,-1
     738:	10000008 	b	75c <func_80995368+0x44>
     73c:	a48e021a 	sh	t6,538(a0)
     740:	24180010 	li	t8,16
     744:	accf0280 	sw	t7,640(a2)
     748:	a4d8021a 	sh	t8,538(a2)
     74c:	0c000000 	jal	0 <DoorKiller_Init>
     750:	00c02025 	move	a0,a2
     754:	10000059 	b	8bc <func_80995368+0x1a4>
     758:	8fbf0014 	lw	ra,20(sp)
     75c:	94c2021a 	lhu	v0,538(a2)
     760:	24030002 	li	v1,2
     764:	28410008 	slti	at,v0,8
     768:	14200004 	bnez	at,77c <func_80995368+0x64>
     76c:	0002cac0 	sll	t9,v0,0xb
     770:	2728c000 	addiu	t0,t9,-16384
     774:	10000003 	b	784 <func_80995368+0x6c>
     778:	a4c800b4 	sh	t0,180(a2)
     77c:	a4c000b4 	sh	zero,180(a2)
     780:	94c2021a 	lhu	v0,538(a2)
     784:	2841000c 	slti	at,v0,12
     788:	1420000b 	bnez	at,7b8 <func_80995368+0xa0>
     78c:	00022023 	negu	a0,v0
     790:	00040823 	negu	at,a0
     794:	00012140 	sll	a0,at,0x5
     798:	00812023 	subu	a0,a0,at
     79c:	00042080 	sll	a0,a0,0x2
     7a0:	00812021 	addu	a0,a0,at
     7a4:	00042080 	sll	a0,a0,0x2
     7a8:	2484e0c0 	addiu	a0,a0,-8000
     7ac:	00042400 	sll	a0,a0,0x10
     7b0:	10000013 	b	800 <func_80995368+0xe8>
     7b4:	00042403 	sra	a0,a0,0x10
     7b8:	28410008 	slti	at,v0,8
     7bc:	54200004 	bnezl	at,7d0 <func_80995368+0xb8>
     7c0:	28410005 	slti	at,v0,5
     7c4:	1000000e 	b	800 <func_80995368+0xe8>
     7c8:	2404f830 	li	a0,-2000
     7cc:	28410005 	slti	at,v0,5
     7d0:	1420000b 	bnez	at,800 <func_80995368+0xe8>
     7d4:	00002025 	move	a0,zero
     7d8:	00020823 	negu	at,v0
     7dc:	00012140 	sll	a0,at,0x5
     7e0:	00812023 	subu	a0,a0,at
     7e4:	00042080 	sll	a0,a0,0x2
     7e8:	00812021 	addu	a0,a0,at
     7ec:	00042080 	sll	a0,a0,0x2
     7f0:	248407d0 	addiu	a0,a0,2000
     7f4:	00042400 	sll	a0,a0,0x10
     7f8:	10000001 	b	800 <func_80995368+0xe8>
     7fc:	00042403 	sra	a0,a0,0x10
     800:	24c2000c 	addiu	v0,a2,12
     804:	00042823 	negu	a1,a0
     808:	24630001 	addiu	v1,v1,1
     80c:	28610009 	slti	at,v1,9
     810:	24420006 	addiu	v0,v0,6
     814:	1420fffc 	bnez	at,808 <func_80995368+0xf0>
     818:	a4450190 	sh	a1,400(v0)
     81c:	94c2021a 	lhu	v0,538(a2)
     820:	28410008 	slti	at,v0,8
     824:	10200024 	beqz	at,8b8 <func_80995368+0x1a0>
     828:	00402025 	move	a0,v0
     82c:	00042740 	sll	a0,a0,0x1d
     830:	00042403 	sra	a0,a0,0x10
     834:	0c000000 	jal	0 <DoorKiller_Init>
     838:	afa60018 	sw	a2,24(sp)
     83c:	8fa60018 	lw	a2,24(sp)
     840:	3c014f80 	lui	at,0x4f80
     844:	94c9021a 	lhu	t1,538(a2)
     848:	44892000 	mtc1	t1,$f4
     84c:	05210004 	bgez	t1,860 <func_80995368+0x148>
     850:	468021a0 	cvt.s.w	$f6,$f4
     854:	44814000 	mtc1	at,$f8
     858:	00000000 	nop
     85c:	46083180 	add.s	$f6,$f6,$f8
     860:	46060282 	mul.s	$f10,$f0,$f6
     864:	3c0142c8 	lui	at,0x42c8
     868:	44818000 	mtc1	at,$f16
     86c:	24c2000c 	addiu	v0,a2,12
     870:	24030005 	li	v1,5
     874:	00035880 	sll	t3,v1,0x2
     878:	01635823 	subu	t3,t3,v1
     87c:	46105482 	mul.s	$f18,$f10,$f16
     880:	000b5840 	sll	t3,t3,0x1
     884:	4600910d 	trunc.w.s	$f4,$f18
     888:	44042000 	mfc1	a0,$f4
     88c:	00000000 	nop
     890:	00042400 	sll	a0,a0,0x10
     894:	00042403 	sra	a0,a0,0x10
     898:	a4440194 	sh	a0,404(v0)
     89c:	a444019a 	sh	a0,410(v0)
     8a0:	a44401a0 	sh	a0,416(v0)
     8a4:	00cb1021 	addu	v0,a2,t3
     8a8:	a444019a 	sh	a0,410(v0)
     8ac:	a44401a0 	sh	a0,416(v0)
     8b0:	a44401a6 	sh	a0,422(v0)
     8b4:	a4440194 	sh	a0,404(v0)
     8b8:	8fbf0014 	lw	ra,20(sp)
     8bc:	27bd0018 	addiu	sp,sp,24
     8c0:	03e00008 	jr	ra
     8c4:	00000000 	nop

000008c8 <func_80995518>:
     8c8:	27bdff68 	addiu	sp,sp,-152
     8cc:	afbf0044 	sw	ra,68(sp)
     8d0:	afb10040 	sw	s1,64(sp)
     8d4:	afb0003c 	sw	s0,60(sp)
     8d8:	f7ba0030 	sdc1	$f26,48(sp)
     8dc:	f7b80028 	sdc1	$f24,40(sp)
     8e0:	f7b60020 	sdc1	$f22,32(sp)
     8e4:	f7b40018 	sdc1	$f20,24(sp)
     8e8:	afa5009c 	sw	a1,156(sp)
     8ec:	9482021a 	lhu	v0,538(a0)
     8f0:	3c0f0000 	lui	t7,0x0
     8f4:	00808825 	move	s1,a0
     8f8:	18400004 	blez	v0,90c <func_80995518+0x44>
     8fc:	25ef0000 	addiu	t7,t7,0
     900:	244effff 	addiu	t6,v0,-1
     904:	10000005 	b	91c <func_80995518+0x54>
     908:	a48e021a 	sh	t6,538(a0)
     90c:	24180010 	li	t8,16
     910:	ae2f0280 	sw	t7,640(s1)
     914:	100000d6 	b	c70 <func_80995518+0x3a8>
     918:	a638021a 	sh	t8,538(s1)
     91c:	9622021a 	lhu	v0,538(s1)
     920:	24040005 	li	a0,5
     924:	00045880 	sll	t3,a0,0x2
     928:	28410004 	slti	at,v0,4
     92c:	14200007 	bnez	at,94c <func_80995518+0x84>
     930:	01645823 	subu	t3,t3,a0
     934:	0002c823 	negu	t9,v0
     938:	00194300 	sll	t0,t9,0xc
     93c:	34018000 	li	at,0x8000
     940:	01014821 	addu	t1,t0,at
     944:	10000004 	b	958 <func_80995518+0x90>
     948:	a62900b4 	sh	t1,180(s1)
     94c:	240a4000 	li	t2,16384
     950:	a62a00b4 	sh	t2,180(s1)
     954:	9622021a 	lhu	v0,538(s1)
     958:	28410006 	slti	at,v0,6
     95c:	1420000c 	bnez	at,990 <func_80995518+0xc8>
     960:	000b5840 	sll	t3,t3,0x1
     964:	00021823 	negu	v1,v0
     968:	00030823 	negu	at,v1
     96c:	00011940 	sll	v1,at,0x5
     970:	00611823 	subu	v1,v1,at
     974:	00031880 	sll	v1,v1,0x2
     978:	00611821 	addu	v1,v1,at
     97c:	00031880 	sll	v1,v1,0x2
     980:	2463f060 	addiu	v1,v1,-4000
     984:	00031c00 	sll	v1,v1,0x10
     988:	10000013 	b	9d8 <func_80995518+0x110>
     98c:	00031c03 	sra	v1,v1,0x10
     990:	28410004 	slti	at,v0,4
     994:	54200004 	bnezl	at,9a8 <func_80995518+0xe0>
     998:	28410003 	slti	at,v0,3
     99c:	1000000e 	b	9d8 <func_80995518+0x110>
     9a0:	2403fc18 	li	v1,-1000
     9a4:	28410003 	slti	at,v0,3
     9a8:	1420000b 	bnez	at,9d8 <func_80995518+0x110>
     9ac:	00001825 	move	v1,zero
     9b0:	00020823 	negu	at,v0
     9b4:	00011940 	sll	v1,at,0x5
     9b8:	00611823 	subu	v1,v1,at
     9bc:	00031880 	sll	v1,v1,0x2
     9c0:	00611821 	addu	v1,v1,at
     9c4:	00031880 	sll	v1,v1,0x2
     9c8:	246303e8 	addiu	v1,v1,1000
     9cc:	00031c00 	sll	v1,v1,0x10
     9d0:	10000001 	b	9d8 <func_80995518+0x110>
     9d4:	00031c03 	sra	v1,v1,0x10
     9d8:	2622000c 	addiu	v0,s1,12
     9dc:	a4430196 	sh	v1,406(v0)
     9e0:	a443019c 	sh	v1,412(v0)
     9e4:	a44301a2 	sh	v1,418(v0)
     9e8:	022b1021 	addu	v0,s1,t3
     9ec:	a443019c 	sh	v1,412(v0)
     9f0:	a44301a2 	sh	v1,418(v0)
     9f4:	a44301a8 	sh	v1,424(v0)
     9f8:	a4430196 	sh	v1,406(v0)
     9fc:	962c021a 	lhu	t4,538(s1)
     a00:	24010004 	li	at,4
     a04:	27ad0084 	addiu	t5,sp,132
     a08:	15810058 	bne	t4,at,b6c <func_80995518+0x2a4>
     a0c:	3c0e0000 	lui	t6,0x0
     a10:	25ce0000 	addiu	t6,t6,0
     a14:	8dd80000 	lw	t8,0(t6)
     a18:	8dcf0004 	lw	t7,4(t6)
     a1c:	3c080000 	lui	t0,0x0
     a20:	adb80000 	sw	t8,0(t5)
     a24:	8dd80008 	lw	t8,8(t6)
     a28:	25080000 	addiu	t0,t0,0
     a2c:	adaf0004 	sw	t7,4(t5)
     a30:	adb80008 	sw	t8,8(t5)
     a34:	8d0a0000 	lw	t2,0(t0)
     a38:	27b90078 	addiu	t9,sp,120
     a3c:	8d090004 	lw	t1,4(t0)
     a40:	af2a0000 	sw	t2,0(t9)
     a44:	8d0a0008 	lw	t2,8(t0)
     a48:	3c010000 	lui	at,0x0
     a4c:	af290004 	sw	t1,4(t9)
     a50:	af2a0008 	sw	t2,8(t9)
     a54:	c43a0000 	lwc1	$f26,0(at)
     a58:	3c010000 	lui	at,0x0
     a5c:	c4380000 	lwc1	$f24,0(at)
     a60:	00008025 	move	s0,zero
     a64:	44802000 	mtc1	zero,$f4
     a68:	3c014220 	lui	at,0x4220
     a6c:	44816000 	mtc1	at,$f12
     a70:	0c000000 	jal	0 <DoorKiller_Init>
     a74:	e7a40070 	swc1	$f4,112(sp)
     a78:	3c0142c8 	lui	at,0x42c8
     a7c:	44816000 	mtc1	at,$f12
     a80:	0c000000 	jal	0 <DoorKiller_Init>
     a84:	46000586 	mov.s	$f22,$f0
     a88:	e7a00074 	swc1	$f0,116(sp)
     a8c:	0c000000 	jal	0 <DoorKiller_Init>
     a90:	86240032 	lh	a0,50(s1)
     a94:	46000506 	mov.s	$f20,$f0
     a98:	0c000000 	jal	0 <DoorKiller_Init>
     a9c:	86240032 	lh	a0,50(s1)
     aa0:	c7a60074 	lwc1	$f6,116(sp)
     aa4:	46060202 	mul.s	$f8,$f0,$f6
     aa8:	00000000 	nop
     aac:	4616a282 	mul.s	$f10,$f20,$f22
     ab0:	460a4400 	add.s	$f16,$f8,$f10
     ab4:	e7b0006c 	swc1	$f16,108(sp)
     ab8:	0c000000 	jal	0 <DoorKiller_Init>
     abc:	86240032 	lh	a0,50(s1)
     ac0:	46000506 	mov.s	$f20,$f0
     ac4:	0c000000 	jal	0 <DoorKiller_Init>
     ac8:	86240032 	lh	a0,50(s1)
     acc:	c7b20074 	lwc1	$f18,116(sp)
     ad0:	4600a187 	neg.s	$f6,$f20
     ad4:	c7b0006c 	lwc1	$f16,108(sp)
     ad8:	46120102 	mul.s	$f4,$f0,$f18
     adc:	240b012c 	li	t3,300
     ae0:	240c001e 	li	t4,30
     ae4:	46163202 	mul.s	$f8,$f6,$f22
     ae8:	8fa4009c 	lw	a0,156(sp)
     aec:	27a5006c 	addiu	a1,sp,108
     af0:	46188482 	mul.s	$f18,$f16,$f24
     af4:	27a60084 	addiu	a2,sp,132
     af8:	27a70078 	addiu	a3,sp,120
     afc:	46082280 	add.s	$f10,$f4,$f8
     b00:	e7b20084 	swc1	$f18,132(sp)
     b04:	46009107 	neg.s	$f4,$f18
     b08:	46185182 	mul.s	$f6,$f10,$f24
     b0c:	e7aa0074 	swc1	$f10,116(sp)
     b10:	461a2202 	mul.s	$f8,$f4,$f26
     b14:	46003487 	neg.s	$f18,$f6
     b18:	e7a6008c 	swc1	$f6,140(sp)
     b1c:	461a9102 	mul.s	$f4,$f18,$f26
     b20:	e7a80078 	swc1	$f8,120(sp)
     b24:	c7b20070 	lwc1	$f18,112(sp)
     b28:	e7a40080 	swc1	$f4,128(sp)
     b2c:	c6280024 	lwc1	$f8,36(s1)
     b30:	46088180 	add.s	$f6,$f16,$f8
     b34:	e7a6006c 	swc1	$f6,108(sp)
     b38:	c6240028 	lwc1	$f4,40(s1)
     b3c:	46049400 	add.s	$f16,$f18,$f4
     b40:	e7b00070 	swc1	$f16,112(sp)
     b44:	c628002c 	lwc1	$f8,44(s1)
     b48:	afac0014 	sw	t4,20(sp)
     b4c:	afab0010 	sw	t3,16(sp)
     b50:	46085180 	add.s	$f6,$f10,$f8
     b54:	0c000000 	jal	0 <DoorKiller_Init>
     b58:	e7a60074 	swc1	$f6,116(sp)
     b5c:	26100001 	addiu	s0,s0,1
     b60:	24010014 	li	at,20
     b64:	5601ffc0 	bnel	s0,at,a68 <func_80995518+0x1a0>
     b68:	44802000 	mtc1	zero,$f4
     b6c:	962d0218 	lhu	t5,536(s1)
     b70:	8faf009c 	lw	t7,156(sp)
     b74:	02202025 	move	a0,s1
     b78:	31ae0001 	andi	t6,t5,0x1
     b7c:	55c00031 	bnezl	t6,c44 <func_80995518+0x37c>
     b80:	96220218 	lhu	v0,536(s1)
     b84:	8df01c44 	lw	s0,7236(t7)
     b88:	27a50058 	addiu	a1,sp,88
     b8c:	0c000000 	jal	0 <DoorKiller_Init>
     b90:	26060024 	addiu	a2,s0,36
     b94:	c7a0005c 	lwc1	$f0,92(sp)
     b98:	3c0141a0 	lui	at,0x41a0
     b9c:	44811000 	mtc1	at,$f2
     ba0:	46000005 	abs.s	$f0,$f0
     ba4:	4602003c 	c.lt.s	$f0,$f2
     ba8:	c7a00058 	lwc1	$f0,88(sp)
     bac:	45020025 	bc1fl	c44 <func_80995518+0x37c>
     bb0:	96220218 	lhu	v0,536(s1)
     bb4:	46000005 	abs.s	$f0,$f0
     bb8:	3c0142c8 	lui	at,0x42c8
     bbc:	4602003c 	c.lt.s	$f0,$f2
     bc0:	c7a00060 	lwc1	$f0,96(sp)
     bc4:	4502001f 	bc1fl	c44 <func_80995518+0x37c>
     bc8:	96220218 	lhu	v0,536(s1)
     bcc:	44819000 	mtc1	at,$f18
     bd0:	00000000 	nop
     bd4:	4612003c 	c.lt.s	$f0,$f18
     bd8:	00000000 	nop
     bdc:	45020019 	bc1fl	c44 <func_80995518+0x37c>
     be0:	96220218 	lhu	v0,536(s1)
     be4:	44802000 	mtc1	zero,$f4
     be8:	3c0140c0 	lui	at,0x40c0
     bec:	02202825 	move	a1,s1
     bf0:	4600203c 	c.lt.s	$f4,$f0
     bf4:	24080010 	li	t0,16
     bf8:	45020012 	bc1fl	c44 <func_80995518+0x37c>
     bfc:	96220218 	lhu	v0,536(s1)
     c00:	96380218 	lhu	t8,536(s1)
     c04:	44810000 	mtc1	at,$f0
     c08:	8627008a 	lh	a3,138(s1)
     c0c:	37190001 	ori	t9,t8,0x1
     c10:	a6390218 	sh	t9,536(s1)
     c14:	44060000 	mfc1	a2,$f0
     c18:	afa80014 	sw	t0,20(sp)
     c1c:	8fa4009c 	lw	a0,156(sp)
     c20:	0c000000 	jal	0 <DoorKiller_Init>
     c24:	e7a00010 	swc1	$f0,16(sp)
     c28:	02202025 	move	a0,s1
     c2c:	0c000000 	jal	0 <DoorKiller_Init>
     c30:	240539dc 	li	a1,14812
     c34:	02002025 	move	a0,s0
     c38:	0c000000 	jal	0 <DoorKiller_Init>
     c3c:	2405083e 	li	a1,2110
     c40:	96220218 	lhu	v0,536(s1)
     c44:	30490001 	andi	t1,v0,0x1
     c48:	5520000a 	bnezl	t1,c74 <func_80995518+0x3ac>
     c4c:	8fbf0044 	lw	ra,68(sp)
     c50:	962a021a 	lhu	t2,538(s1)
     c54:	24010002 	li	at,2
     c58:	344b0001 	ori	t3,v0,0x1
     c5c:	15410004 	bne	t2,at,c70 <func_80995518+0x3a8>
     c60:	02202025 	move	a0,s1
     c64:	a62b0218 	sh	t3,536(s1)
     c68:	0c000000 	jal	0 <DoorKiller_Init>
     c6c:	240539de 	li	a1,14814
     c70:	8fbf0044 	lw	ra,68(sp)
     c74:	d7b40018 	ldc1	$f20,24(sp)
     c78:	d7b60020 	ldc1	$f22,32(sp)
     c7c:	d7b80028 	ldc1	$f24,40(sp)
     c80:	d7ba0030 	ldc1	$f26,48(sp)
     c84:	8fb0003c 	lw	s0,60(sp)
     c88:	8fb10040 	lw	s1,64(sp)
     c8c:	03e00008 	jr	ra
     c90:	27bd0098 	addiu	sp,sp,152

00000c94 <func_809958E4>:
     c94:	27bdffe0 	addiu	sp,sp,-32
     c98:	afbf001c 	sw	ra,28(sp)
     c9c:	afb00018 	sw	s0,24(sp)
     ca0:	afa50024 	sw	a1,36(sp)
     ca4:	9482021a 	lhu	v0,538(a0)
     ca8:	24010010 	li	at,16
     cac:	00808025 	move	s0,a0
     cb0:	10410003 	beq	v0,at,cc0 <func_809958E4+0x2c>
     cb4:	00401825 	move	v1,v0
     cb8:	24010008 	li	at,8
     cbc:	14410005 	bne	v0,at,cd4 <func_809958E4+0x40>
     cc0:	02002025 	move	a0,s0
     cc4:	0c000000 	jal	0 <DoorKiller_Init>
     cc8:	240539db 	li	a1,14811
     ccc:	9602021a 	lhu	v0,538(s0)
     cd0:	00401825 	move	v1,v0
     cd4:	18600004 	blez	v1,ce8 <func_809958E4+0x54>
     cd8:	3c0f0000 	lui	t7,0x0
     cdc:	244effff 	addiu	t6,v0,-1
     ce0:	10000009 	b	d08 <func_809958E4+0x74>
     ce4:	a60e021a 	sh	t6,538(s0)
     ce8:	96190218 	lhu	t9,536(s0)
     cec:	25ef0000 	addiu	t7,t7,0
     cf0:	24180008 	li	t8,8
     cf4:	3328fffe 	andi	t0,t9,0xfffe
     cf8:	ae0f0280 	sw	t7,640(s0)
     cfc:	a618021a 	sh	t8,538(s0)
     d00:	1000003a 	b	dec <func_809958E4+0x158>
     d04:	a6080218 	sh	t0,536(s0)
     d08:	9604021a 	lhu	a0,538(s0)
     d0c:	00042340 	sll	a0,a0,0xd
     d10:	00042400 	sll	a0,a0,0x10
     d14:	0c000000 	jal	0 <DoorKiller_Init>
     d18:	00042403 	sra	a0,a0,0x10
     d1c:	9609021a 	lhu	t1,538(s0)
     d20:	3c014f80 	lui	at,0x4f80
     d24:	44892000 	mtc1	t1,$f4
     d28:	05210004 	bgez	t1,d3c <func_809958E4+0xa8>
     d2c:	468021a0 	cvt.s.w	$f6,$f4
     d30:	44814000 	mtc1	at,$f8
     d34:	00000000 	nop
     d38:	46083180 	add.s	$f6,$f6,$f8
     d3c:	46060282 	mul.s	$f10,$f0,$f6
     d40:	3c0142c8 	lui	at,0x42c8
     d44:	44818000 	mtc1	at,$f16
     d48:	24040002 	li	a0,2
     d4c:	2602000c 	addiu	v0,s0,12
     d50:	46105482 	mul.s	$f18,$f10,$f16
     d54:	4600910d 	trunc.w.s	$f4,$f18
     d58:	44032000 	mfc1	v1,$f4
     d5c:	00000000 	nop
     d60:	00031c00 	sll	v1,v1,0x10
     d64:	00031c03 	sra	v1,v1,0x10
     d68:	24840001 	addiu	a0,a0,1
     d6c:	28810009 	slti	at,a0,9
     d70:	24420006 	addiu	v0,v0,6
     d74:	1420fffc 	bnez	at,d68 <func_809958E4+0xd4>
     d78:	a443018e 	sh	v1,398(v0)
     d7c:	9604021a 	lhu	a0,538(s0)
     d80:	00042300 	sll	a0,a0,0xc
     d84:	00042400 	sll	a0,a0,0x10
     d88:	0c000000 	jal	0 <DoorKiller_Init>
     d8c:	00042403 	sra	a0,a0,0x10
     d90:	3c01447a 	lui	at,0x447a
     d94:	44813000 	mtc1	at,$f6
     d98:	46000207 	neg.s	$f8,$f0
     d9c:	2602000c 	addiu	v0,s0,12
     da0:	46064282 	mul.s	$f10,$f8,$f6
     da4:	24040005 	li	a0,5
     da8:	00046080 	sll	t4,a0,0x2
     dac:	01846023 	subu	t4,t4,a0
     db0:	000c6040 	sll	t4,t4,0x1
     db4:	4600540d 	trunc.w.s	$f16,$f10
     db8:	44038000 	mfc1	v1,$f16
     dbc:	00000000 	nop
     dc0:	246303e8 	addiu	v1,v1,1000
     dc4:	00031c00 	sll	v1,v1,0x10
     dc8:	00031c03 	sra	v1,v1,0x10
     dcc:	a4430196 	sh	v1,406(v0)
     dd0:	a443019c 	sh	v1,412(v0)
     dd4:	a44301a2 	sh	v1,418(v0)
     dd8:	020c1021 	addu	v0,s0,t4
     ddc:	a443019c 	sh	v1,412(v0)
     de0:	a44301a2 	sh	v1,418(v0)
     de4:	a44301a8 	sh	v1,424(v0)
     de8:	a4430196 	sh	v1,406(v0)
     dec:	8fbf001c 	lw	ra,28(sp)
     df0:	8fb00018 	lw	s0,24(sp)
     df4:	27bd0020 	addiu	sp,sp,32
     df8:	03e00008 	jr	ra
     dfc:	00000000 	nop

00000e00 <func_80995A50>:
     e00:	afa50004 	sw	a1,4(sp)
     e04:	9482021a 	lhu	v0,538(a0)
     e08:	3c180000 	lui	t8,0x0
     e0c:	240f0010 	li	t7,16
     e10:	18400004 	blez	v0,e24 <func_80995A50+0x24>
     e14:	27180000 	addiu	t8,t8,0
     e18:	244effff 	addiu	t6,v0,-1
     e1c:	03e00008 	jr	ra
     e20:	a48e021a 	sh	t6,538(a0)
     e24:	a48f021a 	sh	t7,538(a0)
     e28:	ac980280 	sw	t8,640(a0)
     e2c:	03e00008 	jr	ra
     e30:	00000000 	nop

00000e34 <func_80995A84>:
     e34:	27bdffc0 	addiu	sp,sp,-64
     e38:	afbf001c 	sw	ra,28(sp)
     e3c:	afb00018 	sw	s0,24(sp)
     e40:	afa50044 	sw	a1,68(sp)
     e44:	8ca71c44 	lw	a3,7236(a1)
     e48:	00808025 	move	s0,a0
     e4c:	27a50030 	addiu	a1,sp,48
     e50:	24e60024 	addiu	a2,a3,36
     e54:	0c000000 	jal	0 <DoorKiller_Init>
     e58:	afa7003c 	sw	a3,60(sp)
     e5c:	920f0191 	lbu	t7,401(s0)
     e60:	8fa7003c 	lw	a3,60(sp)
     e64:	02002025 	move	a0,s0
     e68:	11e00008 	beqz	t7,e8c <func_80995A84+0x58>
     e6c:	8fa50044 	lw	a1,68(sp)
     e70:	3c180000 	lui	t8,0x0
     e74:	27180000 	addiu	t8,t8,0
     e78:	2419000a 	li	t9,10
     e7c:	ae180280 	sw	t8,640(s0)
     e80:	a619021a 	sh	t9,538(s0)
     e84:	1000007c 	b	1078 <func_80995A84+0x244>
     e88:	a2000191 	sb	zero,401(s0)
     e8c:	0c000000 	jal	0 <DoorKiller_Init>
     e90:	afa7003c 	sw	a3,60(sp)
     e94:	1040001c 	beqz	v0,f08 <func_80995A84+0xd4>
     e98:	8fa7003c 	lw	a3,60(sp)
     e9c:	8e080204 	lw	t0,516(s0)
     ea0:	3c010001 	lui	at,0x1
     ea4:	3421ffa6 	ori	at,at,0xffa6
     ea8:	8d020000 	lw	v0,0(t0)
     eac:	240a0010 	li	t2,16
     eb0:	3c0b0000 	lui	t3,0x0
     eb4:	00414824 	and	t1,v0,at
     eb8:	11200005 	beqz	t1,ed0 <func_80995A84+0x9c>
     ebc:	304c0048 	andi	t4,v0,0x48
     ec0:	256b0000 	addiu	t3,t3,0
     ec4:	a60a021a 	sh	t2,538(s0)
     ec8:	10000068 	b	106c <func_80995A84+0x238>
     ecc:	ae0b0280 	sw	t3,640(s0)
     ed0:	11800066 	beqz	t4,106c <func_80995A84+0x238>
     ed4:	02002025 	move	a0,s0
     ed8:	0c000000 	jal	0 <DoorKiller_Init>
     edc:	8fa50044 	lw	a1,68(sp)
     ee0:	3c0d0000 	lui	t5,0x0
     ee4:	25ad0000 	addiu	t5,t5,0
     ee8:	ae0d0280 	sw	t5,640(s0)
     eec:	8fa40044 	lw	a0,68(sp)
     ef0:	26050024 	addiu	a1,s0,36
     ef4:	24060014 	li	a2,20
     ef8:	0c000000 	jal	0 <DoorKiller_Init>
     efc:	240739dd 	li	a3,14813
     f00:	1000005b 	b	1070 <func_80995A84+0x23c>
     f04:	02002025 	move	a0,s0
     f08:	8fa40044 	lw	a0,68(sp)
     f0c:	26050220 	addiu	a1,s0,544
     f10:	0c000000 	jal	0 <DoorKiller_Init>
     f14:	afa7003c 	sw	a3,60(sp)
     f18:	1040000e 	beqz	v0,f54 <func_80995A84+0x120>
     f1c:	8fa7003c 	lw	a3,60(sp)
     f20:	02002025 	move	a0,s0
     f24:	0c000000 	jal	0 <DoorKiller_Init>
     f28:	8fa50044 	lw	a1,68(sp)
     f2c:	3c0e0000 	lui	t6,0x0
     f30:	25ce0000 	addiu	t6,t6,0
     f34:	ae0e0280 	sw	t6,640(s0)
     f38:	8fa40044 	lw	a0,68(sp)
     f3c:	26050024 	addiu	a1,s0,36
     f40:	24060014 	li	a2,20
     f44:	0c000000 	jal	0 <DoorKiller_Init>
     f48:	240739dd 	li	a3,14813
     f4c:	10000048 	b	1070 <func_80995A84+0x23c>
     f50:	02002025 	move	a0,s0
     f54:	8fa40044 	lw	a0,68(sp)
     f58:	0c000000 	jal	0 <DoorKiller_Init>
     f5c:	afa7003c 	sw	a3,60(sp)
     f60:	14400042 	bnez	v0,106c <func_80995A84+0x238>
     f64:	8fa7003c 	lw	a3,60(sp)
     f68:	c7a00034 	lwc1	$f0,52(sp)
     f6c:	3c0141a0 	lui	at,0x41a0
     f70:	44811000 	mtc1	at,$f2
     f74:	46000005 	abs.s	$f0,$f0
     f78:	4602003c 	c.lt.s	$f0,$f2
     f7c:	c7a00030 	lwc1	$f0,48(sp)
     f80:	4502003b 	bc1fl	1070 <func_80995A84+0x23c>
     f84:	02002025 	move	a0,s0
     f88:	46000005 	abs.s	$f0,$f0
     f8c:	c7a40038 	lwc1	$f4,56(sp)
     f90:	4602003c 	c.lt.s	$f0,$f2
     f94:	3c014248 	lui	at,0x4248
     f98:	45020035 	bc1fl	1070 <func_80995A84+0x23c>
     f9c:	02002025 	move	a0,s0
     fa0:	44813000 	mtc1	at,$f6
     fa4:	00000000 	nop
     fa8:	4606203c 	c.lt.s	$f4,$f6
     fac:	00000000 	nop
     fb0:	4502002f 	bc1fl	1070 <func_80995A84+0x23c>
     fb4:	02002025 	move	a0,s0
     fb8:	44800000 	mtc1	zero,$f0
     fbc:	00000000 	nop
     fc0:	4604003c 	c.lt.s	$f0,$f4
     fc4:	00000000 	nop
     fc8:	45020029 	bc1fl	1070 <func_80995A84+0x23c>
     fcc:	02002025 	move	a0,s0
     fd0:	84ef00b6 	lh	t7,182(a3)
     fd4:	861800b6 	lh	t8,182(s0)
     fd8:	4604003c 	c.lt.s	$f0,$f4
     fdc:	34198000 	li	t9,0x8000
     fe0:	01f81023 	subu	v0,t7,t8
     fe4:	00021400 	sll	v0,v0,0x10
     fe8:	45000004 	bc1f	ffc <func_80995A84+0x1c8>
     fec:	00021403 	sra	v0,v0,0x10
     ff0:	03221023 	subu	v0,t9,v0
     ff4:	00021400 	sll	v0,v0,0x10
     ff8:	00021403 	sra	v0,v0,0x10
     ffc:	04400003 	bltz	v0,100c <func_80995A84+0x1d8>
    1000:	00021823 	negu	v1,v0
    1004:	10000001 	b	100c <func_80995A84+0x1d8>
    1008:	00401825 	move	v1,v0
    100c:	28613000 	slti	at,v1,12288
    1010:	10200016 	beqz	at,106c <func_80995A84+0x238>
    1014:	24080003 	li	t0,3
    1018:	a0e8042c 	sb	t0,1068(a3)
    101c:	c7a80038 	lwc1	$f8,56(sp)
    1020:	3c01bf80 	lui	at,0xbf80
    1024:	4608003e 	c.le.s	$f0,$f8
    1028:	00000000 	nop
    102c:	45020009 	bc1fl	1054 <func_80995A84+0x220>
    1030:	44819000 	mtc1	at,$f18
    1034:	3c013f80 	lui	at,0x3f80
    1038:	44815000 	mtc1	at,$f10
    103c:	00000000 	nop
    1040:	4600540d 	trunc.w.s	$f16,$f10
    1044:	440a8000 	mfc1	t2,$f16
    1048:	10000007 	b	1068 <func_80995A84+0x234>
    104c:	a0ea042d 	sb	t2,1069(a3)
    1050:	44819000 	mtc1	at,$f18
    1054:	00000000 	nop
    1058:	4600918d 	trunc.w.s	$f6,$f18
    105c:	440c3000 	mfc1	t4,$f6
    1060:	00000000 	nop
    1064:	a0ec042d 	sb	t4,1069(a3)
    1068:	acf00430 	sw	s0,1072(a3)
    106c:	02002025 	move	a0,s0
    1070:	0c000000 	jal	0 <DoorKiller_Init>
    1074:	8fa50044 	lw	a1,68(sp)
    1078:	8fbf001c 	lw	ra,28(sp)
    107c:	8fb00018 	lw	s0,24(sp)
    1080:	27bd0040 	addiu	sp,sp,64
    1084:	03e00008 	jr	ra
    1088:	00000000 	nop

0000108c <func_80995CDC>:
    108c:	908e021c 	lbu	t6,540(a0)
    1090:	3c060001 	lui	a2,0x1
    1094:	3c030000 	lui	v1,0x0
    1098:	000e7900 	sll	t7,t6,0x4
    109c:	01ee7821 	addu	t7,t7,t6
    10a0:	000f7880 	sll	t7,t7,0x2
    10a4:	00afc021 	addu	t8,a1,t7
    10a8:	0306c821 	addu	t9,t8,a2
    10ac:	8f2817b4 	lw	t0,6068(t9)
    10b0:	3c078000 	lui	a3,0x8000
    10b4:	24630000 	addiu	v1,v1,0
    10b8:	01074821 	addu	t1,t0,a3
    10bc:	ac690018 	sw	t1,24(v1)
    10c0:	8c820214 	lw	v0,532(a0)
    10c4:	8088001e 	lb	t0,30(a0)
    10c8:	3c0100ff 	lui	at,0xff
    10cc:	00025100 	sll	t2,v0,0x4
    10d0:	000a5f02 	srl	t3,t2,0x1c
    10d4:	000b6080 	sll	t4,t3,0x2
    10d8:	006c6821 	addu	t5,v1,t4
    10dc:	8dae0000 	lw	t6,0(t5)
    10e0:	3421ffff 	ori	at,at,0xffff
    10e4:	00417824 	and	t7,v0,at
    10e8:	00084900 	sll	t1,t0,0x4
    10ec:	01284821 	addu	t1,t1,t0
    10f0:	3c018000 	lui	at,0x8000
    10f4:	00094880 	sll	t1,t1,0x2
    10f8:	01cfc021 	addu	t8,t6,t7
    10fc:	0301c821 	addu	t9,t8,at
    1100:	00a95021 	addu	t2,a1,t1
    1104:	ac990214 	sw	t9,532(a0)
    1108:	01465821 	addu	t3,t2,a2
    110c:	8d6c17b4 	lw	t4,6068(t3)
    1110:	01876821 	addu	t5,t4,a3
    1114:	03e00008 	jr	ra
    1118:	ac6d0018 	sw	t5,24(v1)

0000111c <func_80995D6C>:
    111c:	27bdffe8 	addiu	sp,sp,-24
    1120:	3c010001 	lui	at,0x1
    1124:	00803025 	move	a2,a0
    1128:	342117a4 	ori	at,at,0x17a4
    112c:	afbf0014 	sw	ra,20(sp)
    1130:	afa5001c 	sw	a1,28(sp)
    1134:	00a12021 	addu	a0,a1,at
    1138:	90c5021c 	lbu	a1,540(a2)
    113c:	0c000000 	jal	0 <DoorKiller_Init>
    1140:	afa60018 	sw	a2,24(sp)
    1144:	1040001d 	beqz	v0,11bc <L80995DF4+0x18>
    1148:	8fa60018 	lw	a2,24(sp)
    114c:	00c02025 	move	a0,a2
    1150:	8fa5001c 	lw	a1,28(sp)
    1154:	0c000000 	jal	0 <DoorKiller_Init>
    1158:	afa60018 	sw	a2,24(sp)
    115c:	8fa60018 	lw	a2,24(sp)
    1160:	84ce001c 	lh	t6,28(a2)
    1164:	31cf00ff 	andi	t7,t6,0xff
    1168:	2de10005 	sltiu	at,t7,5
    116c:	10200013 	beqz	at,11bc <L80995DF4+0x18>
    1170:	000f7880 	sll	t7,t7,0x2
    1174:	3c010000 	lui	at,0x0
    1178:	002f0821 	addu	at,at,t7
    117c:	8c2f0000 	lw	t7,0(at)
    1180:	01e00008 	jr	t7
    1184:	00000000 	nop

00001188 <L80995DD8>:
    1188:	3c180000 	lui	t8,0x0
    118c:	3c190000 	lui	t9,0x0
    1190:	27180000 	addiu	t8,t8,0
    1194:	27390000 	addiu	t9,t9,0
    1198:	acd80280 	sw	t8,640(a2)
    119c:	10000007 	b	11bc <L80995DF4+0x18>
    11a0:	acd90134 	sw	t9,308(a2)

000011a4 <L80995DF4>:
    11a4:	3c080000 	lui	t0,0x0
    11a8:	3c090000 	lui	t1,0x0
    11ac:	25080000 	addiu	t0,t0,0
    11b0:	25290000 	addiu	t1,t1,0
    11b4:	acc80280 	sw	t0,640(a2)
    11b8:	acc90134 	sw	t1,308(a2)
    11bc:	8fbf0014 	lw	ra,20(sp)
    11c0:	27bd0018 	addiu	sp,sp,24
    11c4:	03e00008 	jr	ra
    11c8:	00000000 	nop

000011cc <DoorKiller_Update>:
    11cc:	27bdffe8 	addiu	sp,sp,-24
    11d0:	afbf0014 	sw	ra,20(sp)
    11d4:	8c990280 	lw	t9,640(a0)
    11d8:	0320f809 	jalr	t9
    11dc:	00000000 	nop
    11e0:	8fbf0014 	lw	ra,20(sp)
    11e4:	27bd0018 	addiu	sp,sp,24
    11e8:	03e00008 	jr	ra
    11ec:	00000000 	nop

000011f0 <func_80995E40>:
    11f0:	27bdffc0 	addiu	sp,sp,-64
    11f4:	afbf0014 	sw	ra,20(sp)
    11f8:	afa40040 	sw	a0,64(sp)
    11fc:	afa50044 	sw	a1,68(sp)
    1200:	8c8f0214 	lw	t7,532(a0)
    1204:	3c060000 	lui	a2,0x0
    1208:	24c60000 	addiu	a2,a2,0
    120c:	afaf0038 	sw	t7,56(sp)
    1210:	8ca50000 	lw	a1,0(a1)
    1214:	27a40024 	addiu	a0,sp,36
    1218:	24070373 	li	a3,883
    121c:	0c000000 	jal	0 <DoorKiller_Init>
    1220:	afa50034 	sw	a1,52(sp)
    1224:	8fa80034 	lw	t0,52(sp)
    1228:	3c09db06 	lui	t1,0xdb06
    122c:	35290020 	ori	t1,t1,0x20
    1230:	8d0302c0 	lw	v1,704(t0)
    1234:	3c060000 	lui	a2,0x0
    1238:	24c60000 	addiu	a2,a2,0
    123c:	24790008 	addiu	t9,v1,8
    1240:	ad1902c0 	sw	t9,704(t0)
    1244:	ac690000 	sw	t1,0(v1)
    1248:	8faa0038 	lw	t2,56(sp)
    124c:	27a40024 	addiu	a0,sp,36
    1250:	24070375 	li	a3,885
    1254:	ac6a0004 	sw	t2,4(v1)
    1258:	8fab0044 	lw	t3,68(sp)
    125c:	0c000000 	jal	0 <DoorKiller_Init>
    1260:	8d650000 	lw	a1,0(t3)
    1264:	8fbf0014 	lw	ra,20(sp)
    1268:	27bd0040 	addiu	sp,sp,64
    126c:	03e00008 	jr	ra
    1270:	00000000 	nop

00001274 <func_80995EC4>:
    1274:	27bdffd8 	addiu	sp,sp,-40
    1278:	afbf0024 	sw	ra,36(sp)
    127c:	afa40028 	sw	a0,40(sp)
    1280:	afa5002c 	sw	a1,44(sp)
    1284:	0c000000 	jal	0 <DoorKiller_Init>
    1288:	8ca40000 	lw	a0,0(a1)
    128c:	8fa40028 	lw	a0,40(sp)
    1290:	0c000000 	jal	0 <DoorKiller_Init>
    1294:	8fa5002c 	lw	a1,44(sp)
    1298:	8fa20028 	lw	v0,40(sp)
    129c:	8fa4002c 	lw	a0,44(sp)
    12a0:	8c450150 	lw	a1,336(v0)
    12a4:	8c46016c 	lw	a2,364(v0)
    12a8:	9047014e 	lbu	a3,334(v0)
    12ac:	afa00018 	sw	zero,24(sp)
    12b0:	afa00014 	sw	zero,20(sp)
    12b4:	0c000000 	jal	0 <DoorKiller_Init>
    12b8:	afa00010 	sw	zero,16(sp)
    12bc:	8fbf0024 	lw	ra,36(sp)
    12c0:	27bd0028 	addiu	sp,sp,40
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_80995F1C>:
    12cc:	27bdffe0 	addiu	sp,sp,-32
    12d0:	afbf0014 	sw	ra,20(sp)
    12d4:	afa50024 	sw	a1,36(sp)
    12d8:	8483001c 	lh	v1,28(a0)
    12dc:	9482021a 	lhu	v0,538(a0)
    12e0:	8fa50024 	lw	a1,36(sp)
    12e4:	306300ff 	andi	v1,v1,0xff
    12e8:	28410014 	slti	at,v0,20
    12ec:	10200004 	beqz	at,1300 <func_80995F1C+0x34>
    12f0:	2463ffff 	addiu	v1,v1,-1
    12f4:	304e0001 	andi	t6,v0,0x1
    12f8:	55c0000b 	bnezl	t6,1328 <func_80995F1C+0x5c>
    12fc:	8fbf0014 	lw	ra,20(sp)
    1300:	0c000000 	jal	0 <DoorKiller_Init>
    1304:	afa3001c 	sw	v1,28(sp)
    1308:	8fa3001c 	lw	v1,28(sp)
    130c:	3c050000 	lui	a1,0x0
    1310:	8fa40024 	lw	a0,36(sp)
    1314:	00037880 	sll	t7,v1,0x2
    1318:	00af2821 	addu	a1,a1,t7
    131c:	0c000000 	jal	0 <DoorKiller_Init>
    1320:	8ca50000 	lw	a1,0(a1)
    1324:	8fbf0014 	lw	ra,20(sp)
    1328:	27bd0020 	addiu	sp,sp,32
    132c:	03e00008 	jr	ra
    1330:	00000000 	nop
	...
