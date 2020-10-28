
build/src/overlays/actors/ovl_Bg_Ganon_Otyuka/z_bg_ganon_otyuka.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGanonOtyuka_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afa50034 	sw	a1,52(sp)
       8:	afbf001c 	sw	ra,28(sp)
       c:	afb00018 	sw	s0,24(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	afa00024 	sw	zero,36(sp)
      1c:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	02002025 	move	a0,s0
      28:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      2c:	00002825 	move	a1,zero
      30:	3c040000 	lui	a0,0x0
      34:	24840000 	addiu	a0,a0,0
      38:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      3c:	27a50024 	addiu	a1,sp,36
      40:	8fa40034 	lw	a0,52(sp)
      44:	02003025 	move	a2,s0
      48:	8fa70024 	lw	a3,36(sp)
      4c:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      50:	24850810 	addiu	a1,a0,2064
      54:	860e001c 	lh	t6,28(s0)
      58:	24010023 	li	at,35
      5c:	ae02014c 	sw	v0,332(s0)
      60:	11c10006 	beq	t6,at,7c <BgGanonOtyuka_Init+0x7c>
      64:	3c180000 	lui	t8,0x0
      68:	3c0f0000 	lui	t7,0x0
      6c:	25ef0000 	addiu	t7,t7,0
      70:	ae000134 	sw	zero,308(s0)
      74:	10000003 	b	84 <BgGanonOtyuka_Init+0x84>
      78:	ae0f0164 	sw	t7,356(s0)
      7c:	27180000 	addiu	t8,t8,0
      80:	ae180130 	sw	t8,304(s0)
      84:	8fbf001c 	lw	ra,28(sp)
      88:	8fb00018 	lw	s0,24(sp)
      8c:	27bd0030 	addiu	sp,sp,48
      90:	03e00008 	jr	ra
      94:	00000000 	nop

00000098 <BgGanonOtyuka_Destroy>:
      98:	27bdffe8 	addiu	sp,sp,-24
      9c:	afa40018 	sw	a0,24(sp)
      a0:	8fae0018 	lw	t6,24(sp)
      a4:	afbf0014 	sw	ra,20(sp)
      a8:	00a02025 	move	a0,a1
      ac:	24a50810 	addiu	a1,a1,2064
      b0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      b4:	8dc6014c 	lw	a2,332(t6)
      b8:	3c040000 	lui	a0,0x0
      bc:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      c0:	24840000 	addiu	a0,a0,0
      c4:	3c040000 	lui	a0,0x0
      c8:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      cc:	24840000 	addiu	a0,a0,0
      d0:	3c040000 	lui	a0,0x0
      d4:	0c000000 	jal	0 <BgGanonOtyuka_Init>
      d8:	24840000 	addiu	a0,a0,0
      dc:	8fbf0014 	lw	ra,20(sp)
      e0:	27bd0018 	addiu	sp,sp,24
      e4:	03e00008 	jr	ra
      e8:	00000000 	nop

000000ec <func_80875A0C>:
      ec:	27bdff90 	addiu	sp,sp,-112
      f0:	afbf003c 	sw	ra,60(sp)
      f4:	afb60038 	sw	s6,56(sp)
      f8:	afb50034 	sw	s5,52(sp)
      fc:	afb40030 	sw	s4,48(sp)
     100:	afb3002c 	sw	s3,44(sp)
     104:	afb20028 	sw	s2,40(sp)
     108:	afb10024 	sw	s1,36(sp)
     10c:	afb00020 	sw	s0,32(sp)
     110:	f7b40018 	sdc1	$f20,24(sp)
     114:	908e016a 	lbu	t6,362(a0)
     118:	00808025 	move	s0,a0
     11c:	00a0a825 	move	s5,a1
     120:	15c0000a 	bnez	t6,14c <func_80875A0C+0x60>
     124:	00000000 	nop
     128:	90af1c26 	lbu	t7,7206(a1)
     12c:	3c010000 	lui	at,0x0
     130:	51e00083 	beqzl	t7,340 <func_80875A0C+0x254>
     134:	8fbf003c 	lw	ra,60(sp)
     138:	c484008c 	lwc1	$f4,140(a0)
     13c:	c4260000 	lwc1	$f6,0(at)
     140:	4606203c 	c.lt.s	$f4,$f6
     144:	00000000 	nop
     148:	4500007c 	bc1f	33c <func_80875A0C+0x250>
     14c:	3c040000 	lui	a0,0x0
     150:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     154:	24840000 	addiu	a0,a0,0
     158:	3c014120 	lui	at,0x4120
     15c:	3c160000 	lui	s6,0x0
     160:	3c120000 	lui	s2,0x0
     164:	44818000 	mtc1	at,$f16
     168:	26520000 	addiu	s2,s2,0
     16c:	26d60000 	addiu	s6,s6,0
     170:	00008825 	move	s1,zero
     174:	2413000c 	li	s3,12
     178:	24040106 	li	a0,262
     17c:	8ea21c64 	lw	v0,7268(s5)
     180:	5040002f 	beqzl	v0,240 <func_80875A0C+0x154>
     184:	26310001 	addiu	s1,s1,1
     188:	10500004 	beq	v0,s0,19c <func_80875A0C+0xb0>
     18c:	00000000 	nop
     190:	84580000 	lh	t8,0(v0)
     194:	10980003 	beq	a0,t8,1a4 <func_80875A0C+0xb8>
     198:	00000000 	nop
     19c:	10000025 	b	234 <func_80875A0C+0x148>
     1a0:	8c420124 	lw	v0,292(v0)
     1a4:	02330019 	multu	s1,s3
     1a8:	c4480024 	lwc1	$f8,36(v0)
     1ac:	c60a0024 	lwc1	$f10,36(s0)
     1b0:	c4460028 	lwc1	$f6,40(v0)
     1b4:	460a4481 	sub.s	$f18,$f8,$f10
     1b8:	c6080028 	lwc1	$f8,40(s0)
     1bc:	c44a002c 	lwc1	$f10,44(v0)
     1c0:	46083301 	sub.s	$f12,$f6,$f8
     1c4:	0000c812 	mflo	t9
     1c8:	02591821 	addu	v1,s2,t9
     1cc:	c4640000 	lwc1	$f4,0(v1)
     1d0:	c4660008 	lwc1	$f6,8(v1)
     1d4:	46122080 	add.s	$f2,$f4,$f18
     1d8:	c604002c 	lwc1	$f4,44(s0)
     1dc:	46001005 	abs.s	$f0,$f2
     1e0:	46045481 	sub.s	$f18,$f10,$f4
     1e4:	4610003c 	c.lt.s	$f0,$f16
     1e8:	46123380 	add.s	$f14,$f6,$f18
     1ec:	45020011 	bc1fl	234 <func_80875A0C+0x148>
     1f0:	8c420124 	lw	v0,292(v0)
     1f4:	46006005 	abs.s	$f0,$f12
     1f8:	4610003c 	c.lt.s	$f0,$f16
     1fc:	00000000 	nop
     200:	4502000c 	bc1fl	234 <func_80875A0C+0x148>
     204:	8c420124 	lw	v0,292(v0)
     208:	46007005 	abs.s	$f0,$f14
     20c:	4610003c 	c.lt.s	$f0,$f16
     210:	00000000 	nop
     214:	45000006 	bc1f	230 <func_80875A0C+0x144>
     218:	02d14821 	addu	t1,s6,s1
     21c:	912a0000 	lbu	t2,0(t1)
     220:	9048016c 	lbu	t0,364(v0)
     224:	010a5825 	or	t3,t0,t2
     228:	10000004 	b	23c <func_80875A0C+0x150>
     22c:	a04b016c 	sb	t3,364(v0)
     230:	8c420124 	lw	v0,292(v0)
     234:	1440ffd4 	bnez	v0,188 <func_80875A0C+0x9c>
     238:	00000000 	nop
     23c:	26310001 	addiu	s1,s1,1
     240:	00118c00 	sll	s1,s1,0x10
     244:	00118c03 	sra	s1,s1,0x10
     248:	2a210004 	slti	at,s1,4
     24c:	5420ffcc 	bnezl	at,180 <func_80875A0C+0x94>
     250:	8ea21c64 	lw	v0,7268(s5)
     254:	3c040000 	lui	a0,0x0
     258:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     25c:	24840000 	addiu	a0,a0,0
     260:	3c014248 	lui	at,0x4248
     264:	26b407c0 	addiu	s4,s5,1984
     268:	4481a000 	mtc1	at,$f20
     26c:	27b5004c 	addiu	s5,sp,76
     270:	00008825 	move	s1,zero
     274:	02330019 	multu	s1,s3
     278:	c60a0024 	lwc1	$f10,36(s0)
     27c:	4406a000 	mfc1	a2,$f20
     280:	02802025 	move	a0,s4
     284:	02a02825 	move	a1,s5
     288:	00006012 	mflo	t4
     28c:	024c1821 	addu	v1,s2,t4
     290:	c4680000 	lwc1	$f8,0(v1)
     294:	c4720008 	lwc1	$f18,8(v1)
     298:	460a4100 	add.s	$f4,$f8,$f10
     29c:	e7a4004c 	swc1	$f4,76(sp)
     2a0:	c6060028 	lwc1	$f6,40(s0)
     2a4:	e7a60050 	swc1	$f6,80(sp)
     2a8:	c608002c 	lwc1	$f8,44(s0)
     2ac:	46089280 	add.s	$f10,$f18,$f8
     2b0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     2b4:	e7aa0054 	swc1	$f10,84(sp)
     2b8:	10400005 	beqz	v0,2d0 <func_80875A0C+0x1e4>
     2bc:	02d17021 	addu	t6,s6,s1
     2c0:	920d016b 	lbu	t5,363(s0)
     2c4:	91cf0000 	lbu	t7,0(t6)
     2c8:	01afc025 	or	t8,t5,t7
     2cc:	a218016b 	sb	t8,363(s0)
     2d0:	26310001 	addiu	s1,s1,1
     2d4:	00118c00 	sll	s1,s1,0x10
     2d8:	00118c03 	sra	s1,s1,0x10
     2dc:	2a210004 	slti	at,s1,4
     2e0:	1420ffe4 	bnez	at,274 <func_80875A0C+0x188>
     2e4:	00000000 	nop
     2e8:	3c040000 	lui	a0,0x0
     2ec:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     2f0:	24840000 	addiu	a0,a0,0
     2f4:	3c01437f 	lui	at,0x437f
     2f8:	44810000 	mtc1	at,$f0
     2fc:	44802000 	mtc1	zero,$f4
     300:	24020001 	li	v0,1
     304:	3c190000 	lui	t9,0x0
     308:	27390000 	addiu	t9,t9,0
     30c:	24090014 	li	t1,20
     310:	ae190164 	sw	t9,356(s0)
     314:	a202016a 	sb	v0,362(s0)
     318:	a6090168 	sh	t1,360(s0)
     31c:	a202016e 	sb	v0,366(s0)
     320:	a200016d 	sb	zero,365(s0)
     324:	e6000174 	swc1	$f0,372(s0)
     328:	e6000178 	swc1	$f0,376(s0)
     32c:	e600017c 	swc1	$f0,380(s0)
     330:	e6000180 	swc1	$f0,384(s0)
     334:	e6000184 	swc1	$f0,388(s0)
     338:	e6040188 	swc1	$f4,392(s0)
     33c:	8fbf003c 	lw	ra,60(sp)
     340:	d7b40018 	ldc1	$f20,24(sp)
     344:	8fb00020 	lw	s0,32(sp)
     348:	8fb10024 	lw	s1,36(sp)
     34c:	8fb20028 	lw	s2,40(sp)
     350:	8fb3002c 	lw	s3,44(sp)
     354:	8fb40030 	lw	s4,48(sp)
     358:	8fb50034 	lw	s5,52(sp)
     35c:	8fb60038 	lw	s6,56(sp)
     360:	03e00008 	jr	ra
     364:	27bd0070 	addiu	sp,sp,112

00000368 <func_80875C88>:
     368:	27bdff80 	addiu	sp,sp,-128
     36c:	afb10040 	sw	s1,64(sp)
     370:	00808825 	move	s1,a0
     374:	afbf0044 	sw	ra,68(sp)
     378:	afb0003c 	sw	s0,60(sp)
     37c:	f7b60030 	sdc1	$f22,48(sp)
     380:	f7b40028 	sdc1	$f20,40(sp)
     384:	afa50084 	sw	a1,132(sp)
     388:	3c040000 	lui	a0,0x0
     38c:	8cb01c44 	lw	s0,7236(a1)
     390:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     394:	24840000 	addiu	a0,a0,0
     398:	9222016e 	lbu	v0,366(s1)
     39c:	24010001 	li	at,1
     3a0:	1441001b 	bne	v0,at,410 <func_80875C88+0xa8>
     3a4:	3c013f80 	lui	at,0x3f80
     3a8:	4481b000 	mtc1	at,$f22
     3ac:	2624017c 	addiu	a0,s1,380
     3b0:	3c05432a 	lui	a1,0x432a
     3b4:	4406b000 	mfc1	a2,$f22
     3b8:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     3bc:	3c074108 	lui	a3,0x4108
     3c0:	4406b000 	mfc1	a2,$f22
     3c4:	26240180 	addiu	a0,s1,384
     3c8:	3c0542f0 	lui	a1,0x42f0
     3cc:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     3d0:	3c074158 	lui	a3,0x4158
     3d4:	3c014020 	lui	at,0x4020
     3d8:	4481a000 	mtc1	at,$f20
     3dc:	4406b000 	mfc1	a2,$f22
     3e0:	26240170 	addiu	a0,s1,368
     3e4:	4405a000 	mfc1	a1,$f20
     3e8:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     3ec:	3c073e80 	lui	a3,0x3e80
     3f0:	c6240170 	lwc1	$f4,368(s1)
     3f4:	240f0002 	li	t7,2
     3f8:	4604a032 	c.eq.s	$f20,$f4
     3fc:	00000000 	nop
     400:	45020022 	bc1fl	48c <func_80875C88+0x124>
     404:	86220168 	lh	v0,360(s1)
     408:	1000001f 	b	488 <func_80875C88+0x120>
     40c:	a22f016e 	sb	t7,366(s1)
     410:	24010002 	li	at,2
     414:	1441001c 	bne	v0,at,488 <func_80875C88+0x120>
     418:	3c013f80 	lui	at,0x3f80
     41c:	4481b000 	mtc1	at,$f22
     420:	4480a000 	mtc1	zero,$f20
     424:	26240178 	addiu	a0,s1,376
     428:	4406b000 	mfc1	a2,$f22
     42c:	4405a000 	mfc1	a1,$f20
     430:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     434:	3c0741cc 	lui	a3,0x41cc
     438:	4405a000 	mfc1	a1,$f20
     43c:	4406b000 	mfc1	a2,$f22
     440:	26240180 	addiu	a0,s1,384
     444:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     448:	3c074140 	lui	a3,0x4140
     44c:	4405a000 	mfc1	a1,$f20
     450:	4406b000 	mfc1	a2,$f22
     454:	26240184 	addiu	a0,s1,388
     458:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     45c:	3c0741cc 	lui	a3,0x41cc
     460:	4405b000 	mfc1	a1,$f22
     464:	26240170 	addiu	a0,s1,368
     468:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     46c:	3c063e80 	lui	a2,0x3e80
     470:	c6260170 	lwc1	$f6,368(s1)
     474:	4606a032 	c.eq.s	$f20,$f6
     478:	00000000 	nop
     47c:	45020003 	bc1fl	48c <func_80875C88+0x124>
     480:	86220168 	lh	v0,360(s1)
     484:	a220016e 	sb	zero,366(s1)
     488:	86220168 	lh	v0,360(s1)
     48c:	3c013f80 	lui	at,0x3f80
     490:	4481b000 	mtc1	at,$f22
     494:	4480a000 	mtc1	zero,$f20
     498:	1440009c 	bnez	v0,70c <func_80875C88+0x3a4>
     49c:	24010001 	li	at,1
     4a0:	4406b000 	mfc1	a2,$f22
     4a4:	e6340170 	swc1	$f20,368(s1)
     4a8:	26240028 	addiu	a0,s1,40
     4ac:	3c05c47a 	lui	a1,0xc47a
     4b0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     4b4:	8e270068 	lw	a3,104(s1)
     4b8:	4406b000 	mfc1	a2,$f22
     4bc:	26240068 	addiu	a0,s1,104
     4c0:	3c0542c8 	lui	a1,0x42c8
     4c4:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     4c8:	3c074000 	lui	a3,0x4000
     4cc:	9222016b 	lbu	v0,363(s1)
     4d0:	3c0141f0 	lui	at,0x41f0
     4d4:	30580001 	andi	t8,v0,0x1
     4d8:	5700000c 	bnezl	t8,50c <func_80875C88+0x1a4>
     4dc:	3c0141f0 	lui	at,0x41f0
     4e0:	44810000 	mtc1	at,$f0
     4e4:	c6280068 	lwc1	$f8,104(s1)
     4e8:	863900b8 	lh	t9,184(s1)
     4ec:	9222016b 	lbu	v0,363(s1)
     4f0:	46004282 	mul.s	$f10,$f8,$f0
     4f4:	4600540d 	trunc.w.s	$f16,$f10
     4f8:	440b8000 	mfc1	t3,$f16
     4fc:	00000000 	nop
     500:	032b6023 	subu	t4,t9,t3
     504:	a62c00b8 	sh	t4,184(s1)
     508:	3c0141f0 	lui	at,0x41f0
     50c:	44810000 	mtc1	at,$f0
     510:	304d0002 	andi	t5,v0,0x2
     514:	15a0000a 	bnez	t5,540 <func_80875C88+0x1d8>
     518:	3c010000 	lui	at,0x0
     51c:	c6320068 	lwc1	$f18,104(s1)
     520:	862e00b8 	lh	t6,184(s1)
     524:	9222016b 	lbu	v0,363(s1)
     528:	46009102 	mul.s	$f4,$f18,$f0
     52c:	4600218d 	trunc.w.s	$f6,$f4
     530:	44093000 	mfc1	t1,$f6
     534:	00000000 	nop
     538:	01c95021 	addu	t2,t6,t1
     53c:	a62a00b8 	sh	t2,184(s1)
     540:	30590004 	andi	t9,v0,0x4
     544:	5720000b 	bnezl	t9,574 <func_80875C88+0x20c>
     548:	304e0008 	andi	t6,v0,0x8
     54c:	c6280068 	lwc1	$f8,104(s1)
     550:	862b00b4 	lh	t3,180(s1)
     554:	9222016b 	lbu	v0,363(s1)
     558:	46004282 	mul.s	$f10,$f8,$f0
     55c:	4600540d 	trunc.w.s	$f16,$f10
     560:	44188000 	mfc1	t8,$f16
     564:	00000000 	nop
     568:	01784021 	addu	t0,t3,t8
     56c:	a62800b4 	sh	t0,180(s1)
     570:	304e0008 	andi	t6,v0,0x8
     574:	55c0000a 	bnezl	t6,5a0 <func_80875C88+0x238>
     578:	c6280028 	lwc1	$f8,40(s1)
     57c:	c6320068 	lwc1	$f18,104(s1)
     580:	862900b4 	lh	t1,180(s1)
     584:	46009102 	mul.s	$f4,$f18,$f0
     588:	4600218d 	trunc.w.s	$f6,$f4
     58c:	440d3000 	mfc1	t5,$f6
     590:	00000000 	nop
     594:	012d7823 	subu	t7,t1,t5
     598:	a62f00b4 	sh	t7,180(s1)
     59c:	c6280028 	lwc1	$f8,40(s1)
     5a0:	c42a0000 	lwc1	$f10,0(at)
     5a4:	3c01c3c8 	lui	at,0xc3c8
     5a8:	460a403c 	c.lt.s	$f8,$f10
     5ac:	00000000 	nop
     5b0:	45000078 	bc1f	794 <func_80875C88+0x42c>
     5b4:	00000000 	nop
     5b8:	c6100028 	lwc1	$f16,40(s0)
     5bc:	44819000 	mtc1	at,$f18
     5c0:	3c010000 	lui	at,0x0
     5c4:	00008025 	move	s0,zero
     5c8:	4612803c 	c.lt.s	$f16,$f18
     5cc:	00000000 	nop
     5d0:	4500004a 	bc1f	6fc <func_80875C88+0x394>
     5d4:	00000000 	nop
     5d8:	c4240000 	lwc1	$f4,0(at)
     5dc:	3c014316 	lui	at,0x4316
     5e0:	4481b000 	mtc1	at,$f22
     5e4:	e7b4005c 	swc1	$f20,92(sp)
     5e8:	e7b40054 	swc1	$f20,84(sp)
     5ec:	e7b40068 	swc1	$f20,104(sp)
     5f0:	e7b40064 	swc1	$f20,100(sp)
     5f4:	e7b40060 	swc1	$f20,96(sp)
     5f8:	e7a40058 	swc1	$f4,88(sp)
     5fc:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     600:	4600b306 	mov.s	$f12,$f22
     604:	c6260024 	lwc1	$f6,36(s1)
     608:	3c014270 	lui	at,0x4270
     60c:	44816000 	mtc1	at,$f12
     610:	46060200 	add.s	$f8,$f0,$f6
     614:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     618:	e7a8006c 	swc1	$f8,108(sp)
     61c:	3c010000 	lui	at,0x0
     620:	c42a0000 	lwc1	$f10,0(at)
     624:	4600b306 	mov.s	$f12,$f22
     628:	460a0400 	add.s	$f16,$f0,$f10
     62c:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     630:	e7b00070 	swc1	$f16,112(sp)
     634:	c632002c 	lwc1	$f18,44(s1)
     638:	3c0142c8 	lui	at,0x42c8
     63c:	44816000 	mtc1	at,$f12
     640:	46120100 	add.s	$f4,$f0,$f18
     644:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     648:	e7a40074 	swc1	$f4,116(sp)
     64c:	3c0140a0 	lui	at,0x40a0
     650:	44816000 	mtc1	at,$f12
     654:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     658:	46000506 	mov.s	$f20,$f0
     65c:	4600a18d 	trunc.w.s	$f6,$f20
     660:	3c0b0000 	lui	t3,0x0
     664:	256b0000 	addiu	t3,t3,0
     668:	4600020d 	trunc.w.s	$f8,$f0
     66c:	440e3000 	mfc1	t6,$f6
     670:	3c180000 	lui	t8,0x0
     674:	27180000 	addiu	t8,t8,0
     678:	440f4000 	mfc1	t7,$f8
     67c:	afab0010 	sw	t3,16(sp)
     680:	afb80014 	sw	t8,20(sp)
     684:	000e5400 	sll	t2,t6,0x10
     688:	000f5c00 	sll	t3,t7,0x10
     68c:	000bc403 	sra	t8,t3,0x10
     690:	000acc03 	sra	t9,t2,0x10
     694:	272c00fa 	addiu	t4,t9,250
     698:	2708000f 	addiu	t0,t8,15
     69c:	24090005 	li	t1,5
     6a0:	afa9001c 	sw	t1,28(sp)
     6a4:	afa80020 	sw	t0,32(sp)
     6a8:	afac0018 	sw	t4,24(sp)
     6ac:	8fa40084 	lw	a0,132(sp)
     6b0:	27a5006c 	addiu	a1,sp,108
     6b4:	27a60060 	addiu	a2,sp,96
     6b8:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     6bc:	27a70054 	addiu	a3,sp,84
     6c0:	26100001 	addiu	s0,s0,1
     6c4:	00108400 	sll	s0,s0,0x10
     6c8:	00108403 	sra	s0,s0,0x10
     6cc:	2a01001e 	slti	at,s0,30
     6d0:	1420ffca 	bnez	at,5fc <func_80875C88+0x294>
     6d4:	00000000 	nop
     6d8:	8fa40084 	lw	a0,132(sp)
     6dc:	2405000a 	li	a1,10
     6e0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     6e4:	2406000f 	li	a2,15
     6e8:	8fa40084 	lw	a0,132(sp)
     6ec:	26250024 	addiu	a1,s1,36
     6f0:	24060028 	li	a2,40
     6f4:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     6f8:	24072839 	li	a3,10297
     6fc:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     700:	02202025 	move	a0,s1
     704:	10000023 	b	794 <func_80875C88+0x42c>
     708:	00000000 	nop
     70c:	1441000d 	bne	v0,at,744 <func_80875C88+0x3dc>
     710:	3c070000 	lui	a3,0x0
     714:	3c070000 	lui	a3,0x0
     718:	3c0e0000 	lui	t6,0x0
     71c:	24e70000 	addiu	a3,a3,0
     720:	25ce0000 	addiu	t6,t6,0
     724:	afae0014 	sw	t6,20(sp)
     728:	afa70010 	sw	a3,16(sp)
     72c:	24042893 	li	a0,10387
     730:	262500e4 	addiu	a1,s1,228
     734:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     738:	24060004 	li	a2,4
     73c:	1000000b 	b	76c <func_80875C88+0x404>
     740:	4406b000 	mfc1	a2,$f22
     744:	3c0a0000 	lui	t2,0x0
     748:	24e70000 	addiu	a3,a3,0
     74c:	254a0000 	addiu	t2,t2,0
     750:	afaa0014 	sw	t2,20(sp)
     754:	afa70010 	sw	a3,16(sp)
     758:	2404205c 	li	a0,8284
     75c:	262500e4 	addiu	a1,s1,228
     760:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     764:	24060004 	li	a2,4
     768:	4406b000 	mfc1	a2,$f22
     76c:	26240028 	addiu	a0,s1,40
     770:	3c05c47a 	lui	a1,0xc47a
     774:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     778:	8e270068 	lw	a3,104(s1)
     77c:	4406b000 	mfc1	a2,$f22
     780:	3c073dcc 	lui	a3,0x3dcc
     784:	34e7cccd 	ori	a3,a3,0xcccd
     788:	26240068 	addiu	a0,s1,104
     78c:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     790:	3c0542c8 	lui	a1,0x42c8
     794:	3c040000 	lui	a0,0x0
     798:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     79c:	24840000 	addiu	a0,a0,0
     7a0:	8fbf0044 	lw	ra,68(sp)
     7a4:	d7b40028 	ldc1	$f20,40(sp)
     7a8:	d7b60030 	ldc1	$f22,48(sp)
     7ac:	8fb0003c 	lw	s0,60(sp)
     7b0:	8fb10040 	lw	s1,64(sp)
     7b4:	03e00008 	jr	ra
     7b8:	27bd0080 	addiu	sp,sp,128

000007bc <func_808760DC>:
     7bc:	afa40000 	sw	a0,0(sp)
     7c0:	03e00008 	jr	ra
     7c4:	afa50004 	sw	a1,4(sp)

000007c8 <BgGanonOtyuka_Update>:
     7c8:	27bdffe8 	addiu	sp,sp,-24
     7cc:	afbf0014 	sw	ra,20(sp)
     7d0:	afa40018 	sw	a0,24(sp)
     7d4:	8c990164 	lw	t9,356(a0)
     7d8:	0320f809 	jalr	t9
     7dc:	00000000 	nop
     7e0:	8fa40018 	lw	a0,24(sp)
     7e4:	908e016d 	lbu	t6,365(a0)
     7e8:	84820168 	lh	v0,360(a0)
     7ec:	25cf0001 	addiu	t7,t6,1
     7f0:	10400003 	beqz	v0,800 <BgGanonOtyuka_Update+0x38>
     7f4:	a08f016d 	sb	t7,365(a0)
     7f8:	2458ffff 	addiu	t8,v0,-1
     7fc:	a4980168 	sh	t8,360(a0)
     800:	8fbf0014 	lw	ra,20(sp)
     804:	27bd0018 	addiu	sp,sp,24
     808:	03e00008 	jr	ra
     80c:	00000000 	nop

00000810 <BgGanonOtyuka_Draw>:
     810:	27bdff20 	addiu	sp,sp,-224
     814:	afa400e0 	sw	a0,224(sp)
     818:	afbf006c 	sw	ra,108(sp)
     81c:	afa500e4 	sw	a1,228(sp)
     820:	00a02025 	move	a0,a1
     824:	afbe0068 	sw	s8,104(sp)
     828:	afb70064 	sw	s7,100(sp)
     82c:	afb60060 	sw	s6,96(sp)
     830:	afb5005c 	sw	s5,92(sp)
     834:	afb40058 	sw	s4,88(sp)
     838:	afb30054 	sw	s3,84(sp)
     83c:	afb20050 	sw	s2,80(sp)
     840:	afb1004c 	sw	s1,76(sp)
     844:	afb00048 	sw	s0,72(sp)
     848:	f7b60040 	sdc1	$f22,64(sp)
     84c:	f7b40038 	sdc1	$f20,56(sp)
     850:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     854:	00002825 	move	a1,zero
     858:	3c01c1f0 	lui	at,0xc1f0
     85c:	44812000 	mtc1	at,$f4
     860:	8fae00e4 	lw	t6,228(sp)
     864:	afa200cc 	sw	v0,204(sp)
     868:	e7a400bc 	swc1	$f4,188(sp)
     86c:	8dc50000 	lw	a1,0(t6)
     870:	3c060000 	lui	a2,0x0
     874:	24c60000 	addiu	a2,a2,0
     878:	27a400a8 	addiu	a0,sp,168
     87c:	240702be 	li	a3,702
     880:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     884:	00a09825 	move	s3,a1
     888:	8fa300e4 	lw	v1,228(sp)
     88c:	240200e8 	li	v0,232
     890:	8c741c7c 	lw	s4,7292(v1)
     894:	12800011 	beqz	s4,8dc <BgGanonOtyuka_Draw+0xcc>
     898:	00000000 	nop
     89c:	868f0000 	lh	t7,0(s4)
     8a0:	544f000c 	bnel	v0,t7,8d4 <BgGanonOtyuka_Draw+0xc4>
     8a4:	8e940124 	lw	s4,292(s4)
     8a8:	8698001c 	lh	t8,28(s4)
     8ac:	57000009 	bnezl	t8,8d4 <BgGanonOtyuka_Draw+0xc4>
     8b0:	8e940124 	lw	s4,292(s4)
     8b4:	92990198 	lbu	t9,408(s4)
     8b8:	3c01c4fa 	lui	at,0xc4fa
     8bc:	13200007 	beqz	t9,8dc <BgGanonOtyuka_Draw+0xcc>
     8c0:	00000000 	nop
     8c4:	44813000 	mtc1	at,$f6
     8c8:	10000004 	b	8dc <BgGanonOtyuka_Draw+0xcc>
     8cc:	e7a600bc 	swc1	$f6,188(sp)
     8d0:	8e940124 	lw	s4,292(s4)
     8d4:	5680fff2 	bnezl	s4,8a0 <BgGanonOtyuka_Draw+0x90>
     8d8:	868f0000 	lh	t7,0(s4)
     8dc:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     8e0:	8c640000 	lw	a0,0(v1)
     8e4:	8e6302c0 	lw	v1,704(s3)
     8e8:	3c090000 	lui	t1,0x0
     8ec:	25290000 	addiu	t1,t1,0
     8f0:	24680008 	addiu	t0,v1,8
     8f4:	ae6802c0 	sw	t0,704(s3)
     8f8:	3c17de00 	lui	s7,0xde00
     8fc:	ac770000 	sw	s7,0(v1)
     900:	ac690004 	sw	t1,4(v1)
     904:	8faa00e4 	lw	t2,228(sp)
     908:	3c1e0000 	lui	s8,0x0
     90c:	3c16da38 	lui	s6,0xda38
     910:	8d541c64 	lw	s4,7268(t2)
     914:	36d60003 	ori	s6,s6,0x3
     918:	27de0000 	addiu	s8,s8,0
     91c:	1280008c 	beqz	s4,b50 <BgGanonOtyuka_Draw+0x340>
     920:	3c014700 	lui	at,0x4700
     924:	3c150000 	lui	s5,0x0
     928:	4480b000 	mtc1	zero,$f22
     92c:	4481a000 	mtc1	at,$f20
     930:	26b50000 	addiu	s5,s5,0
     934:	868b0000 	lh	t3,0(s4)
     938:	24010106 	li	at,262
     93c:	c7a800bc 	lwc1	$f8,188(sp)
     940:	55610081 	bnel	t3,at,b48 <BgGanonOtyuka_Draw+0x338>
     944:	8e940124 	lw	s4,292(s4)
     948:	c68a00ec 	lwc1	$f10,236(s4)
     94c:	8fac00cc 	lw	t4,204(sp)
     950:	00003825 	move	a3,zero
     954:	460a403c 	c.lt.s	$f8,$f10
     958:	00000000 	nop
     95c:	4502007a 	bc1fl	b48 <BgGanonOtyuka_Draw+0x338>
     960:	8e940124 	lw	s4,292(s4)
     964:	c68e0028 	lwc1	$f14,40(s4)
     968:	c5900060 	lwc1	$f16,96(t4)
     96c:	3c120000 	lui	s2,0x0
     970:	00008825 	move	s1,zero
     974:	4610703c 	c.lt.s	$f14,$f16
     978:	26520000 	addiu	s2,s2,0
     97c:	45000004 	bc1f	990 <BgGanonOtyuka_Draw+0x180>
     980:	00000000 	nop
     984:	3c120000 	lui	s2,0x0
     988:	10000001 	b	990 <BgGanonOtyuka_Draw+0x180>
     98c:	26520000 	addiu	s2,s2,0
     990:	c68c0024 	lwc1	$f12,36(s4)
     994:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     998:	8e86002c 	lw	a2,44(s4)
     99c:	928d016a 	lbu	t5,362(s4)
     9a0:	51a00022 	beqzl	t5,a2c <BgGanonOtyuka_Draw+0x21c>
     9a4:	8e7002c0 	lw	s0,704(s3)
     9a8:	868e00b4 	lh	t6,180(s4)
     9ac:	3c010000 	lui	at,0x0
     9b0:	c4280000 	lwc1	$f8,0(at)
     9b4:	448e9000 	mtc1	t6,$f18
     9b8:	24050001 	li	a1,1
     9bc:	46809120 	cvt.s.w	$f4,$f18
     9c0:	46142183 	div.s	$f6,$f4,$f20
     9c4:	46083302 	mul.s	$f12,$f6,$f8
     9c8:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     9cc:	00000000 	nop
     9d0:	868f00b8 	lh	t7,184(s4)
     9d4:	3c010000 	lui	at,0x0
     9d8:	c4240000 	lwc1	$f4,0(at)
     9dc:	448f5000 	mtc1	t7,$f10
     9e0:	24050001 	li	a1,1
     9e4:	46805420 	cvt.s.w	$f16,$f10
     9e8:	46148483 	div.s	$f18,$f16,$f20
     9ec:	46049302 	mul.s	$f12,$f18,$f4
     9f0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     9f4:	00000000 	nop
     9f8:	8fb800cc 	lw	t8,204(sp)
     9fc:	c6860028 	lwc1	$f6,40(s4)
     a00:	3c110000 	lui	s1,0x0
     a04:	c7080060 	lwc1	$f8,96(t8)
     a08:	26310000 	addiu	s1,s1,0
     a0c:	4608303c 	c.lt.s	$f6,$f8
     a10:	00000000 	nop
     a14:	45000004 	bc1f	a28 <BgGanonOtyuka_Draw+0x218>
     a18:	00000000 	nop
     a1c:	3c110000 	lui	s1,0x0
     a20:	10000001 	b	a28 <BgGanonOtyuka_Draw+0x218>
     a24:	26310000 	addiu	s1,s1,0
     a28:	8e7002c0 	lw	s0,704(s3)
     a2c:	3c050000 	lui	a1,0x0
     a30:	24a50000 	addiu	a1,a1,0
     a34:	26190008 	addiu	t9,s0,8
     a38:	ae7902c0 	sw	t9,704(s3)
     a3c:	ae160000 	sw	s6,0(s0)
     a40:	8fa800e4 	lw	t0,228(sp)
     a44:	240602fe 	li	a2,766
     a48:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     a4c:	8d040000 	lw	a0,0(t0)
     a50:	ae020004 	sw	v0,4(s0)
     a54:	8e6302c0 	lw	v1,704(s3)
     a58:	00008025 	move	s0,zero
     a5c:	24690008 	addiu	t1,v1,8
     a60:	ae6902c0 	sw	t1,704(s3)
     a64:	ac720004 	sw	s2,4(v1)
     a68:	12200006 	beqz	s1,a84 <BgGanonOtyuka_Draw+0x274>
     a6c:	ac770000 	sw	s7,0(v1)
     a70:	8e6302c0 	lw	v1,704(s3)
     a74:	246a0008 	addiu	t2,v1,8
     a78:	ae6a02c0 	sw	t2,704(s3)
     a7c:	ac710004 	sw	s1,4(v1)
     a80:	ac770000 	sw	s7,0(v1)
     a84:	03d05821 	addu	t3,s8,s0
     a88:	916c0000 	lbu	t4,0(t3)
     a8c:	928d016c 	lbu	t5,364(s4)
     a90:	3c120000 	lui	s2,0x0
     a94:	018d7024 	and	t6,t4,t5
     a98:	51c00025 	beqzl	t6,b30 <BgGanonOtyuka_Draw+0x320>
     a9c:	26100001 	addiu	s0,s0,1
     aa0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     aa4:	26520000 	addiu	s2,s2,0
     aa8:	00107880 	sll	t7,s0,0x2
     aac:	01f07823 	subu	t7,t7,s0
     ab0:	3c180000 	lui	t8,0x0
     ab4:	27180000 	addiu	t8,t8,0
     ab8:	000f7880 	sll	t7,t7,0x2
     abc:	01f81021 	addu	v0,t7,t8
     ac0:	c44c0000 	lwc1	$f12,0(v0)
     ac4:	8c460008 	lw	a2,8(v0)
     ac8:	4600b386 	mov.s	$f14,$f22
     acc:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     ad0:	24070001 	li	a3,1
     ad4:	0010c880 	sll	t9,s0,0x2
     ad8:	3c010000 	lui	at,0x0
     adc:	00390821 	addu	at,at,t9
     ae0:	c42c0000 	lwc1	$f12,0(at)
     ae4:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     ae8:	24050001 	li	a1,1
     aec:	8e7102c0 	lw	s1,704(s3)
     af0:	02a02825 	move	a1,s5
     af4:	24060311 	li	a2,785
     af8:	26280008 	addiu	t0,s1,8
     afc:	ae6802c0 	sw	t0,704(s3)
     b00:	ae360000 	sw	s6,0(s1)
     b04:	8fa900e4 	lw	t1,228(sp)
     b08:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     b0c:	8d240000 	lw	a0,0(t1)
     b10:	ae220004 	sw	v0,4(s1)
     b14:	8e6302c0 	lw	v1,704(s3)
     b18:	246a0008 	addiu	t2,v1,8
     b1c:	ae6a02c0 	sw	t2,704(s3)
     b20:	ac720004 	sw	s2,4(v1)
     b24:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     b28:	ac770000 	sw	s7,0(v1)
     b2c:	26100001 	addiu	s0,s0,1
     b30:	00108400 	sll	s0,s0,0x10
     b34:	00108403 	sra	s0,s0,0x10
     b38:	2a010004 	slti	at,s0,4
     b3c:	5420ffd2 	bnezl	at,a88 <BgGanonOtyuka_Draw+0x278>
     b40:	03d05821 	addu	t3,s8,s0
     b44:	8e940124 	lw	s4,292(s4)
     b48:	5680ff7b 	bnezl	s4,938 <BgGanonOtyuka_Draw+0x128>
     b4c:	868b0000 	lh	t3,0(s4)
     b50:	8fab00e4 	lw	t3,228(sp)
     b54:	3c16da38 	lui	s6,0xda38
     b58:	3c1e0000 	lui	s8,0x0
     b5c:	4480b000 	mtc1	zero,$f22
     b60:	27de0000 	addiu	s8,s8,0
     b64:	36d60003 	ori	s6,s6,0x3
     b68:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     b6c:	8d640000 	lw	a0,0(t3)
     b70:	8fac00e4 	lw	t4,228(sp)
     b74:	3c150000 	lui	s5,0x0
     b78:	26b50000 	addiu	s5,s5,0
     b7c:	8d941c64 	lw	s4,7268(t4)
     b80:	3c010000 	lui	at,0x0
     b84:	5280014f 	beqzl	s4,10c4 <BgGanonOtyuka_Draw+0x8b4>
     b88:	8fa900e4 	lw	t1,228(sp)
     b8c:	c4340000 	lwc1	$f20,0(at)
     b90:	868d0000 	lh	t5,0(s4)
     b94:	24010106 	li	at,262
     b98:	15a10146 	bne	t5,at,10b4 <BgGanonOtyuka_Draw+0x8a4>
     b9c:	3c01c1f0 	lui	at,0xc1f0
     ba0:	44815000 	mtc1	at,$f10
     ba4:	c69000ec 	lwc1	$f16,236(s4)
     ba8:	4610503c 	c.lt.s	$f10,$f16
     bac:	00000000 	nop
     bb0:	45020141 	bc1fl	10b8 <BgGanonOtyuka_Draw+0x8a8>
     bb4:	8e940124 	lw	s4,292(s4)
     bb8:	928e016e 	lbu	t6,366(s4)
     bbc:	3c18db06 	lui	t8,0xdb06
     bc0:	37180020 	ori	t8,t8,0x20
     bc4:	11c0013b 	beqz	t6,10b4 <BgGanonOtyuka_Draw+0x8a4>
     bc8:	00002825 	move	a1,zero
     bcc:	8e7002d0 	lw	s0,720(s3)
     bd0:	24080020 	li	t0,32
     bd4:	24090040 	li	t1,64
     bd8:	260f0008 	addiu	t7,s0,8
     bdc:	ae6f02d0 	sw	t7,720(s3)
     be0:	ae180000 	sw	t8,0(s0)
     be4:	8fb900e4 	lw	t9,228(sp)
     be8:	9286016d 	lbu	a2,365(s4)
     bec:	240a0001 	li	t2,1
     bf0:	8f240000 	lw	a0,0(t9)
     bf4:	240b0020 	li	t3,32
     bf8:	240c0040 	li	t4,64
     bfc:	00063080 	sll	a2,a2,0x2
     c00:	afa6001c 	sw	a2,28(sp)
     c04:	afac0028 	sw	t4,40(sp)
     c08:	afab0024 	sw	t3,36(sp)
     c0c:	afa00020 	sw	zero,32(sp)
     c10:	afaa0018 	sw	t2,24(sp)
     c14:	afa90014 	sw	t1,20(sp)
     c18:	afa80010 	sw	t0,16(sp)
     c1c:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     c20:	00003825 	move	a3,zero
     c24:	ae020004 	sw	v0,4(s0)
     c28:	8e6302d0 	lw	v1,720(s3)
     c2c:	3c0ee700 	lui	t6,0xe700
     c30:	3c18fa00 	lui	t8,0xfa00
     c34:	246d0008 	addiu	t5,v1,8
     c38:	ae6d02d0 	sw	t5,720(s3)
     c3c:	ac600004 	sw	zero,4(v1)
     c40:	ac6e0000 	sw	t6,0(v1)
     c44:	8e6202d0 	lw	v0,720(s3)
     c48:	4459f800 	cfc1	t9,$31
     c4c:	24080001 	li	t0,1
     c50:	244f0008 	addiu	t7,v0,8
     c54:	ae6f02d0 	sw	t7,720(s3)
     c58:	ac580000 	sw	t8,0(v0)
     c5c:	44c8f800 	ctc1	t0,$31
     c60:	c6920174 	lwc1	$f18,372(s4)
     c64:	3c014f00 	lui	at,0x4f00
     c68:	00003825 	move	a3,zero
     c6c:	46009124 	cvt.w.s	$f4,$f18
     c70:	4448f800 	cfc1	t0,$31
     c74:	00000000 	nop
     c78:	31080078 	andi	t0,t0,0x78
     c7c:	51000013 	beqzl	t0,ccc <BgGanonOtyuka_Draw+0x4bc>
     c80:	44082000 	mfc1	t0,$f4
     c84:	44812000 	mtc1	at,$f4
     c88:	24080001 	li	t0,1
     c8c:	46049101 	sub.s	$f4,$f18,$f4
     c90:	44c8f800 	ctc1	t0,$31
     c94:	00000000 	nop
     c98:	46002124 	cvt.w.s	$f4,$f4
     c9c:	4448f800 	cfc1	t0,$31
     ca0:	00000000 	nop
     ca4:	31080078 	andi	t0,t0,0x78
     ca8:	15000005 	bnez	t0,cc0 <BgGanonOtyuka_Draw+0x4b0>
     cac:	00000000 	nop
     cb0:	44082000 	mfc1	t0,$f4
     cb4:	3c018000 	lui	at,0x8000
     cb8:	10000007 	b	cd8 <BgGanonOtyuka_Draw+0x4c8>
     cbc:	01014025 	or	t0,t0,at
     cc0:	10000005 	b	cd8 <BgGanonOtyuka_Draw+0x4c8>
     cc4:	2408ffff 	li	t0,-1
     cc8:	44082000 	mfc1	t0,$f4
     ccc:	00000000 	nop
     cd0:	0500fffb 	bltz	t0,cc0 <BgGanonOtyuka_Draw+0x4b0>
     cd4:	00000000 	nop
     cd8:	44d9f800 	ctc1	t9,$31
     cdc:	240c0001 	li	t4,1
     ce0:	c6860178 	lwc1	$f6,376(s4)
     ce4:	00085600 	sll	t2,t0,0x18
     ce8:	444bf800 	cfc1	t3,$31
     cec:	44ccf800 	ctc1	t4,$31
     cf0:	3c014f00 	lui	at,0x4f00
     cf4:	46003224 	cvt.w.s	$f8,$f6
     cf8:	444cf800 	cfc1	t4,$31
     cfc:	00000000 	nop
     d00:	318c0078 	andi	t4,t4,0x78
     d04:	51800013 	beqzl	t4,d54 <BgGanonOtyuka_Draw+0x544>
     d08:	440c4000 	mfc1	t4,$f8
     d0c:	44814000 	mtc1	at,$f8
     d10:	240c0001 	li	t4,1
     d14:	46083201 	sub.s	$f8,$f6,$f8
     d18:	44ccf800 	ctc1	t4,$31
     d1c:	00000000 	nop
     d20:	46004224 	cvt.w.s	$f8,$f8
     d24:	444cf800 	cfc1	t4,$31
     d28:	00000000 	nop
     d2c:	318c0078 	andi	t4,t4,0x78
     d30:	15800005 	bnez	t4,d48 <BgGanonOtyuka_Draw+0x538>
     d34:	00000000 	nop
     d38:	440c4000 	mfc1	t4,$f8
     d3c:	3c018000 	lui	at,0x8000
     d40:	10000007 	b	d60 <BgGanonOtyuka_Draw+0x550>
     d44:	01816025 	or	t4,t4,at
     d48:	10000005 	b	d60 <BgGanonOtyuka_Draw+0x550>
     d4c:	240cffff 	li	t4,-1
     d50:	440c4000 	mfc1	t4,$f8
     d54:	00000000 	nop
     d58:	0580fffb 	bltz	t4,d48 <BgGanonOtyuka_Draw+0x538>
     d5c:	00000000 	nop
     d60:	44cbf800 	ctc1	t3,$31
     d64:	24190001 	li	t9,1
     d68:	c68a017c 	lwc1	$f10,380(s4)
     d6c:	318d00ff 	andi	t5,t4,0xff
     d70:	4458f800 	cfc1	t8,$31
     d74:	44d9f800 	ctc1	t9,$31
     d78:	000d7400 	sll	t6,t5,0x10
     d7c:	014e7825 	or	t7,t2,t6
     d80:	46005424 	cvt.w.s	$f16,$f10
     d84:	3c014f00 	lui	at,0x4f00
     d88:	3c0dfb00 	lui	t5,0xfb00
     d8c:	4459f800 	cfc1	t9,$31
     d90:	00000000 	nop
     d94:	33390078 	andi	t9,t9,0x78
     d98:	53200013 	beqzl	t9,de8 <BgGanonOtyuka_Draw+0x5d8>
     d9c:	44198000 	mfc1	t9,$f16
     da0:	44818000 	mtc1	at,$f16
     da4:	24190001 	li	t9,1
     da8:	46105401 	sub.s	$f16,$f10,$f16
     dac:	44d9f800 	ctc1	t9,$31
     db0:	00000000 	nop
     db4:	46008424 	cvt.w.s	$f16,$f16
     db8:	4459f800 	cfc1	t9,$31
     dbc:	00000000 	nop
     dc0:	33390078 	andi	t9,t9,0x78
     dc4:	17200005 	bnez	t9,ddc <BgGanonOtyuka_Draw+0x5cc>
     dc8:	00000000 	nop
     dcc:	44198000 	mfc1	t9,$f16
     dd0:	3c018000 	lui	at,0x8000
     dd4:	10000007 	b	df4 <BgGanonOtyuka_Draw+0x5e4>
     dd8:	0321c825 	or	t9,t9,at
     ddc:	10000005 	b	df4 <BgGanonOtyuka_Draw+0x5e4>
     de0:	2419ffff 	li	t9,-1
     de4:	44198000 	mfc1	t9,$f16
     de8:	00000000 	nop
     dec:	0720fffb 	bltz	t9,ddc <BgGanonOtyuka_Draw+0x5cc>
     df0:	00000000 	nop
     df4:	332800ff 	andi	t0,t9,0xff
     df8:	00084a00 	sll	t1,t0,0x8
     dfc:	01e95825 	or	t3,t7,t1
     e00:	ac4b0004 	sw	t3,4(v0)
     e04:	8e6202d0 	lw	v0,720(s3)
     e08:	44d8f800 	ctc1	t8,$31
     e0c:	240e0001 	li	t6,1
     e10:	244c0008 	addiu	t4,v0,8
     e14:	ae6c02d0 	sw	t4,720(s3)
     e18:	ac4d0000 	sw	t5,0(v0)
     e1c:	444af800 	cfc1	t2,$31
     e20:	44cef800 	ctc1	t6,$31
     e24:	c6920180 	lwc1	$f18,384(s4)
     e28:	3c014f00 	lui	at,0x4f00
     e2c:	46009124 	cvt.w.s	$f4,$f18
     e30:	444ef800 	cfc1	t6,$31
     e34:	00000000 	nop
     e38:	31ce0078 	andi	t6,t6,0x78
     e3c:	51c00013 	beqzl	t6,e8c <BgGanonOtyuka_Draw+0x67c>
     e40:	440e2000 	mfc1	t6,$f4
     e44:	44812000 	mtc1	at,$f4
     e48:	240e0001 	li	t6,1
     e4c:	46049101 	sub.s	$f4,$f18,$f4
     e50:	44cef800 	ctc1	t6,$31
     e54:	00000000 	nop
     e58:	46002124 	cvt.w.s	$f4,$f4
     e5c:	444ef800 	cfc1	t6,$31
     e60:	00000000 	nop
     e64:	31ce0078 	andi	t6,t6,0x78
     e68:	15c00005 	bnez	t6,e80 <BgGanonOtyuka_Draw+0x670>
     e6c:	00000000 	nop
     e70:	440e2000 	mfc1	t6,$f4
     e74:	3c018000 	lui	at,0x8000
     e78:	10000007 	b	e98 <BgGanonOtyuka_Draw+0x688>
     e7c:	01c17025 	or	t6,t6,at
     e80:	10000005 	b	e98 <BgGanonOtyuka_Draw+0x688>
     e84:	240effff 	li	t6,-1
     e88:	440e2000 	mfc1	t6,$f4
     e8c:	00000000 	nop
     e90:	05c0fffb 	bltz	t6,e80 <BgGanonOtyuka_Draw+0x670>
     e94:	00000000 	nop
     e98:	44caf800 	ctc1	t2,$31
     e9c:	240f0001 	li	t7,1
     ea0:	c6860184 	lwc1	$f6,388(s4)
     ea4:	000ece00 	sll	t9,t6,0x18
     ea8:	4448f800 	cfc1	t0,$31
     eac:	44cff800 	ctc1	t7,$31
     eb0:	3c014f00 	lui	at,0x4f00
     eb4:	46003224 	cvt.w.s	$f8,$f6
     eb8:	444ff800 	cfc1	t7,$31
     ebc:	00000000 	nop
     ec0:	31ef0078 	andi	t7,t7,0x78
     ec4:	51e00013 	beqzl	t7,f14 <BgGanonOtyuka_Draw+0x704>
     ec8:	440f4000 	mfc1	t7,$f8
     ecc:	44814000 	mtc1	at,$f8
     ed0:	240f0001 	li	t7,1
     ed4:	46083201 	sub.s	$f8,$f6,$f8
     ed8:	44cff800 	ctc1	t7,$31
     edc:	00000000 	nop
     ee0:	46004224 	cvt.w.s	$f8,$f8
     ee4:	444ff800 	cfc1	t7,$31
     ee8:	00000000 	nop
     eec:	31ef0078 	andi	t7,t7,0x78
     ef0:	15e00005 	bnez	t7,f08 <BgGanonOtyuka_Draw+0x6f8>
     ef4:	00000000 	nop
     ef8:	440f4000 	mfc1	t7,$f8
     efc:	3c018000 	lui	at,0x8000
     f00:	10000007 	b	f20 <BgGanonOtyuka_Draw+0x710>
     f04:	01e17825 	or	t7,t7,at
     f08:	10000005 	b	f20 <BgGanonOtyuka_Draw+0x710>
     f0c:	240fffff 	li	t7,-1
     f10:	440f4000 	mfc1	t7,$f8
     f14:	00000000 	nop
     f18:	05e0fffb 	bltz	t7,f08 <BgGanonOtyuka_Draw+0x6f8>
     f1c:	00000000 	nop
     f20:	44c8f800 	ctc1	t0,$31
     f24:	240a0001 	li	t2,1
     f28:	c68a0188 	lwc1	$f10,392(s4)
     f2c:	31e900ff 	andi	t1,t7,0xff
     f30:	444df800 	cfc1	t5,$31
     f34:	44caf800 	ctc1	t2,$31
     f38:	00095c00 	sll	t3,t1,0x10
     f3c:	032b6025 	or	t4,t9,t3
     f40:	46005424 	cvt.w.s	$f16,$f10
     f44:	3c014f00 	lui	at,0x4f00
     f48:	444af800 	cfc1	t2,$31
     f4c:	00000000 	nop
     f50:	314a0078 	andi	t2,t2,0x78
     f54:	51400013 	beqzl	t2,fa4 <BgGanonOtyuka_Draw+0x794>
     f58:	440a8000 	mfc1	t2,$f16
     f5c:	44818000 	mtc1	at,$f16
     f60:	240a0001 	li	t2,1
     f64:	46105401 	sub.s	$f16,$f10,$f16
     f68:	44caf800 	ctc1	t2,$31
     f6c:	00000000 	nop
     f70:	46008424 	cvt.w.s	$f16,$f16
     f74:	444af800 	cfc1	t2,$31
     f78:	00000000 	nop
     f7c:	314a0078 	andi	t2,t2,0x78
     f80:	15400005 	bnez	t2,f98 <BgGanonOtyuka_Draw+0x788>
     f84:	00000000 	nop
     f88:	440a8000 	mfc1	t2,$f16
     f8c:	3c018000 	lui	at,0x8000
     f90:	10000007 	b	fb0 <BgGanonOtyuka_Draw+0x7a0>
     f94:	01415025 	or	t2,t2,at
     f98:	10000005 	b	fb0 <BgGanonOtyuka_Draw+0x7a0>
     f9c:	240affff 	li	t2,-1
     fa0:	440a8000 	mfc1	t2,$f16
     fa4:	00000000 	nop
     fa8:	0540fffb 	bltz	t2,f98 <BgGanonOtyuka_Draw+0x788>
     fac:	00000000 	nop
     fb0:	314e00ff 	andi	t6,t2,0xff
     fb4:	000ec200 	sll	t8,t6,0x8
     fb8:	01984025 	or	t0,t4,t8
     fbc:	44cdf800 	ctc1	t5,$31
     fc0:	350f0080 	ori	t7,t0,0x80
     fc4:	ac4f0004 	sw	t7,4(v0)
     fc8:	8e86002c 	lw	a2,44(s4)
     fcc:	c68c0024 	lwc1	$f12,36(s4)
     fd0:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     fd4:	4600b386 	mov.s	$f14,$f22
     fd8:	00008025 	move	s0,zero
     fdc:	03d04821 	addu	t1,s8,s0
     fe0:	91390000 	lbu	t9,0(t1)
     fe4:	928b016b 	lbu	t3,363(s4)
     fe8:	3c120000 	lui	s2,0x0
     fec:	032b6824 	and	t5,t9,t3
     ff0:	51a0002b 	beqzl	t5,10a0 <BgGanonOtyuka_Draw+0x890>
     ff4:	26100001 	addiu	s0,s0,1
     ff8:	0c000000 	jal	0 <BgGanonOtyuka_Init>
     ffc:	26520000 	addiu	s2,s2,0
    1000:	00105080 	sll	t2,s0,0x2
    1004:	01505023 	subu	t2,t2,s0
    1008:	3c0e0000 	lui	t6,0x0
    100c:	25ce0000 	addiu	t6,t6,0
    1010:	000a5080 	sll	t2,t2,0x2
    1014:	014e1021 	addu	v0,t2,t6
    1018:	c44c0000 	lwc1	$f12,0(v0)
    101c:	8c460008 	lw	a2,8(v0)
    1020:	4600b386 	mov.s	$f14,$f22
    1024:	0c000000 	jal	0 <BgGanonOtyuka_Init>
    1028:	24070001 	li	a3,1
    102c:	00106080 	sll	t4,s0,0x2
    1030:	3c010000 	lui	at,0x0
    1034:	002c0821 	addu	at,at,t4
    1038:	c42c0000 	lwc1	$f12,0(at)
    103c:	0c000000 	jal	0 <BgGanonOtyuka_Init>
    1040:	24050001 	li	a1,1
    1044:	c6920170 	lwc1	$f18,368(s4)
    1048:	4406a000 	mfc1	a2,$f20
    104c:	4600a306 	mov.s	$f12,$f20
    1050:	46149382 	mul.s	$f14,$f18,$f20
    1054:	0c000000 	jal	0 <BgGanonOtyuka_Init>
    1058:	24070001 	li	a3,1
    105c:	8e7102d0 	lw	s1,720(s3)
    1060:	02a02825 	move	a1,s5
    1064:	2406034f 	li	a2,847
    1068:	26380008 	addiu	t8,s1,8
    106c:	ae7802d0 	sw	t8,720(s3)
    1070:	ae360000 	sw	s6,0(s1)
    1074:	8fa800e4 	lw	t0,228(sp)
    1078:	0c000000 	jal	0 <BgGanonOtyuka_Init>
    107c:	8d040000 	lw	a0,0(t0)
    1080:	ae220004 	sw	v0,4(s1)
    1084:	8e6302d0 	lw	v1,720(s3)
    1088:	246f0008 	addiu	t7,v1,8
    108c:	ae6f02d0 	sw	t7,720(s3)
    1090:	ac720004 	sw	s2,4(v1)
    1094:	0c000000 	jal	0 <BgGanonOtyuka_Init>
    1098:	ac770000 	sw	s7,0(v1)
    109c:	26100001 	addiu	s0,s0,1
    10a0:	00108400 	sll	s0,s0,0x10
    10a4:	00108403 	sra	s0,s0,0x10
    10a8:	2a010004 	slti	at,s0,4
    10ac:	5420ffcc 	bnezl	at,fe0 <BgGanonOtyuka_Draw+0x7d0>
    10b0:	03d04821 	addu	t1,s8,s0
    10b4:	8e940124 	lw	s4,292(s4)
    10b8:	5680feb6 	bnezl	s4,b94 <BgGanonOtyuka_Draw+0x384>
    10bc:	868d0000 	lh	t5,0(s4)
    10c0:	8fa900e4 	lw	t1,228(sp)
    10c4:	3c060000 	lui	a2,0x0
    10c8:	24c60000 	addiu	a2,a2,0
    10cc:	27a400a8 	addiu	a0,sp,168
    10d0:	24070359 	li	a3,857
    10d4:	0c000000 	jal	0 <BgGanonOtyuka_Init>
    10d8:	8d250000 	lw	a1,0(t1)
    10dc:	8fbf006c 	lw	ra,108(sp)
    10e0:	d7b40038 	ldc1	$f20,56(sp)
    10e4:	d7b60040 	ldc1	$f22,64(sp)
    10e8:	8fb00048 	lw	s0,72(sp)
    10ec:	8fb1004c 	lw	s1,76(sp)
    10f0:	8fb20050 	lw	s2,80(sp)
    10f4:	8fb30054 	lw	s3,84(sp)
    10f8:	8fb40058 	lw	s4,88(sp)
    10fc:	8fb5005c 	lw	s5,92(sp)
    1100:	8fb60060 	lw	s6,96(sp)
    1104:	8fb70064 	lw	s7,100(sp)
    1108:	8fbe0068 	lw	s8,104(sp)
    110c:	03e00008 	jr	ra
    1110:	27bd00e0 	addiu	sp,sp,224
	...
