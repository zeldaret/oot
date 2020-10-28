
build/src/code/z_lifemeter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Health_InitData>:
       0:	3c010001 	lui	at,0x1
       4:	00811021 	addu	v0,a0,at
       8:	240e0140 	li	t6,320
       c:	a44e0718 	sh	t6,1816(v0)
      10:	3c0f0000 	lui	t7,0x0
      14:	85ef0030 	lh	t7,48(t7)
      18:	a44006ee 	sh	zero,1774(v0)
      1c:	a44006f0 	sh	zero,1776(v0)
      20:	845806ee 	lh	t8,1774(v0)
      24:	845906f0 	lh	t9,1776(v0)
      28:	24060032 	li	a2,50
      2c:	240300ff 	li	v1,255
      30:	24050046 	li	a1,70
      34:	24070028 	li	a3,40
      38:	2408003c 	li	t0,60
      3c:	a44f0716 	sh	t7,1814(v0)
      40:	a458071a 	sh	t8,1818(v0)
      44:	a459071c 	sh	t9,1820(v0)
      48:	a44306fe 	sh	v1,1790(v0)
      4c:	a4450702 	sh	a1,1794(v0)
      50:	a4460706 	sh	a2,1798(v0)
      54:	a446070a 	sh	a2,1802(v0)
      58:	a447070e 	sh	a3,1806(v0)
      5c:	a4480712 	sh	t0,1810(v0)
      60:	a4430700 	sh	v1,1792(v0)
      64:	a4450704 	sh	a1,1796(v0)
      68:	a4460708 	sh	a2,1800(v0)
      6c:	a446070c 	sh	a2,1804(v0)
      70:	a4470710 	sh	a3,1808(v0)
      74:	a4480714 	sh	t0,1812(v0)
      78:	3c090000 	lui	t1,0x0
      7c:	3c0a0000 	lui	t2,0x0
      80:	254a0000 	addiu	t2,t2,0
      84:	25290000 	addiu	t1,t1,0
      88:	240e00c8 	li	t6,200
      8c:	a5230006 	sh	v1,6(t1)
      90:	a5230008 	sh	v1,8(t1)
      94:	a523000a 	sh	v1,10(t1)
      98:	a54e0006 	sh	t6,6(t2)
      9c:	a5400008 	sh	zero,8(t2)
      a0:	a540000a 	sh	zero,10(t2)
      a4:	852b0006 	lh	t3,6(t1)
      a8:	852c0008 	lh	t4,8(t1)
      ac:	852d000a 	lh	t5,10(t1)
      b0:	854f0006 	lh	t7,6(t2)
      b4:	85580008 	lh	t8,8(t2)
      b8:	8559000a 	lh	t9,10(t2)
      bc:	a52b0000 	sh	t3,0(t1)
      c0:	a52c0002 	sh	t4,2(t1)
      c4:	a52d0004 	sh	t5,4(t1)
      c8:	a54f0000 	sh	t7,0(t2)
      cc:	a5580002 	sh	t8,2(t2)
      d0:	03e00008 	jr	ra
      d4:	a5590004 	sh	t9,4(t2)

000000d8 <Health_UpdateData>:
      d8:	3c0e0001 	lui	t6,0x1
      dc:	01c47021 	addu	t6,t6,a0
      e0:	85ce06ee 	lh	t6,1774(t6)
      e4:	3c010000 	lui	at,0x0
      e8:	c4280000 	lwc1	$f8,0(at)
      ec:	448e2000 	mtc1	t6,$f4
      f0:	3c010001 	lui	at,0x1
      f4:	342104f0 	ori	at,at,0x4f0
      f8:	468021a0 	cvt.s.w	$f6,$f4
      fc:	00811021 	addu	v0,a0,at
     100:	844f0200 	lh	t7,512(v0)
     104:	24040032 	li	a0,50
     108:	240600ff 	li	a2,255
     10c:	46083002 	mul.s	$f0,$f6,$f8
     110:	51e0000b 	beqzl	t7,140 <Health_UpdateData+0x68>
     114:	844c01fe 	lh	t4,510(v0)
     118:	845801fe 	lh	t8,510(v0)
     11c:	2719ffff 	addiu	t9,t8,-1
     120:	a45901fe 	sh	t9,510(v0)
     124:	844b01fe 	lh	t3,510(v0)
     128:	5d600010 	bgtzl	t3,16c <Health_UpdateData+0x94>
     12c:	24190046 	li	t9,70
     130:	a44001fe 	sh	zero,510(v0)
     134:	1000000c 	b	168 <Health_UpdateData+0x90>
     138:	a4400200 	sh	zero,512(v0)
     13c:	844c01fe 	lh	t4,510(v0)
     140:	240f000a 	li	t7,10
     144:	24180001 	li	t8,1
     148:	258d0001 	addiu	t5,t4,1
     14c:	a44d01fe 	sh	t5,510(v0)
     150:	844e01fe 	lh	t6,510(v0)
     154:	29c1000a 	slti	at,t6,10
     158:	54200004 	bnezl	at,16c <Health_UpdateData+0x94>
     15c:	24190046 	li	t9,70
     160:	a44f01fe 	sh	t7,510(v0)
     164:	a4580200 	sh	t8,512(v0)
     168:	24190046 	li	t9,70
     16c:	240b0028 	li	t3,40
     170:	240c003c 	li	t4,60
     174:	a446020e 	sh	a2,526(v0)
     178:	a4590212 	sh	t9,530(v0)
     17c:	a4440216 	sh	a0,534(v0)
     180:	a444021a 	sh	a0,538(v0)
     184:	a44b021e 	sh	t3,542(v0)
     188:	a44c0222 	sh	t4,546(v0)
     18c:	3c0d0000 	lui	t5,0x0
     190:	85ad0000 	lh	t5,0(t5)
     194:	3c0e0000 	lui	t6,0x0
     198:	3c0f0000 	lui	t7,0x0
     19c:	a44d0210 	sh	t5,528(v0)
     1a0:	85ce0002 	lh	t6,2(t6)
     1a4:	3c180000 	lui	t8,0x0
     1a8:	3c190000 	lui	t9,0x0
     1ac:	a44e0214 	sh	t6,532(v0)
     1b0:	85ef0004 	lh	t7,4(t7)
     1b4:	3c0b0000 	lui	t3,0x0
     1b8:	3c070000 	lui	a3,0x0
     1bc:	a44f0218 	sh	t7,536(v0)
     1c0:	87180000 	lh	t8,0(t8)
     1c4:	24e70000 	addiu	a3,a3,0
     1c8:	3c080000 	lui	t0,0x0
     1cc:	a458021c 	sh	t8,540(v0)
     1d0:	87390002 	lh	t9,2(t9)
     1d4:	25080000 	addiu	t0,t0,0
     1d8:	3c010000 	lui	at,0x0
     1dc:	a4590220 	sh	t9,544(v0)
     1e0:	856b0004 	lh	t3,4(t3)
     1e4:	3c090000 	lui	t1,0x0
     1e8:	25290000 	addiu	t1,t1,0
     1ec:	a44b0224 	sh	t3,548(v0)
     1f0:	84ec0000 	lh	t4,0(a3)
     1f4:	84ee0002 	lh	t6,2(a3)
     1f8:	84f80004 	lh	t8,4(a3)
     1fc:	448c5000 	mtc1	t4,$f10
     200:	448e3000 	mtc1	t6,$f6
     204:	3c070000 	lui	a3,0x0
     208:	46805420 	cvt.s.w	$f16,$f10
     20c:	24e70000 	addiu	a3,a3,0
     210:	3c0a0000 	lui	t2,0x0
     214:	254a0000 	addiu	t2,t2,0
     218:	46803220 	cvt.s.w	$f8,$f6
     21c:	46008482 	mul.s	$f18,$f16,$f0
     220:	4600910d 	trunc.w.s	$f4,$f18
     224:	44989000 	mtc1	t8,$f18
     228:	46004282 	mul.s	$f10,$f8,$f0
     22c:	44032000 	mfc1	v1,$f4
     230:	00000000 	nop
     234:	00031c00 	sll	v1,v1,0x10
     238:	46809120 	cvt.s.w	$f4,$f18
     23c:	00031c03 	sra	v1,v1,0x10
     240:	246c00ff 	addiu	t4,v1,255
     244:	318d00ff 	andi	t5,t4,0xff
     248:	a44d0202 	sh	t5,514(v0)
     24c:	4600540d 	trunc.w.s	$f16,$f10
     250:	46002182 	mul.s	$f6,$f4,$f0
     254:	44048000 	mfc1	a0,$f16
     258:	00000000 	nop
     25c:	00042400 	sll	a0,a0,0x10
     260:	4600320d 	trunc.w.s	$f8,$f6
     264:	00042403 	sra	a0,a0,0x10
     268:	248f0046 	addiu	t7,a0,70
     26c:	31f800ff 	andi	t8,t7,0xff
     270:	44054000 	mfc1	a1,$f8
     274:	a4580204 	sh	t8,516(v0)
     278:	00052c00 	sll	a1,a1,0x10
     27c:	00052c03 	sra	a1,a1,0x10
     280:	24ab0032 	addiu	t3,a1,50
     284:	316c00ff 	andi	t4,t3,0xff
     288:	a44c0206 	sh	t4,518(v0)
     28c:	850d0000 	lh	t5,0(t0)
     290:	850f0002 	lh	t7,2(t0)
     294:	85190004 	lh	t9,4(t0)
     298:	448d5000 	mtc1	t5,$f10
     29c:	448f3000 	mtc1	t7,$f6
     2a0:	3c080000 	lui	t0,0x0
     2a4:	46805420 	cvt.s.w	$f16,$f10
     2a8:	25080000 	addiu	t0,t0,0
     2ac:	3c0f0000 	lui	t7,0x0
     2b0:	3c0b0000 	lui	t3,0x0
     2b4:	46803220 	cvt.s.w	$f8,$f6
     2b8:	46008482 	mul.s	$f18,$f16,$f0
     2bc:	4600910d 	trunc.w.s	$f4,$f18
     2c0:	44999000 	mtc1	t9,$f18
     2c4:	46004282 	mul.s	$f10,$f8,$f0
     2c8:	44032000 	mfc1	v1,$f4
     2cc:	00000000 	nop
     2d0:	00031c00 	sll	v1,v1,0x10
     2d4:	46809120 	cvt.s.w	$f4,$f18
     2d8:	00031c03 	sra	v1,v1,0x10
     2dc:	246d0032 	addiu	t5,v1,50
     2e0:	31ae00ff 	andi	t6,t5,0xff
     2e4:	a44e0208 	sh	t6,520(v0)
     2e8:	4600540d 	trunc.w.s	$f16,$f10
     2ec:	46002182 	mul.s	$f6,$f4,$f0
     2f0:	240e00c8 	li	t6,200
     2f4:	44048000 	mfc1	a0,$f16
     2f8:	00000000 	nop
     2fc:	00042400 	sll	a0,a0,0x10
     300:	4600320d 	trunc.w.s	$f8,$f6
     304:	00042403 	sra	a0,a0,0x10
     308:	24980028 	addiu	t8,a0,40
     30c:	331900ff 	andi	t9,t8,0xff
     310:	44054000 	mfc1	a1,$f8
     314:	a459020a 	sh	t9,522(v0)
     318:	3c180000 	lui	t8,0x0
     31c:	00052c00 	sll	a1,a1,0x10
     320:	00052c03 	sra	a1,a1,0x10
     324:	24ac003c 	addiu	t4,a1,60
     328:	318d00ff 	andi	t5,t4,0xff
     32c:	a44d020c 	sh	t5,524(v0)
     330:	a50e0000 	sh	t6,0(t0)
     334:	a4e60000 	sh	a2,0(a3)
     338:	a4e60002 	sh	a2,2(a3)
     33c:	a4e60004 	sh	a2,4(a3)
     340:	a5000002 	sh	zero,2(t0)
     344:	a5000004 	sh	zero,4(t0)
     348:	3c0e0000 	lui	t6,0x0
     34c:	85ce0000 	lh	t6,0(t6)
     350:	85ef0000 	lh	t7,0(t7)
     354:	87180002 	lh	t8,2(t8)
     358:	448e5000 	mtc1	t6,$f10
     35c:	3c190000 	lui	t9,0x0
     360:	87390004 	lh	t9,4(t9)
     364:	46805420 	cvt.s.w	$f16,$f10
     368:	a42f0006 	sh	t7,6(at)
     36c:	3c010000 	lui	at,0x0
     370:	856b0000 	lh	t3,0(t3)
     374:	a4380008 	sh	t8,8(at)
     378:	3c180000 	lui	t8,0x0
     37c:	46008482 	mul.s	$f18,$f16,$f0
     380:	a439000a 	sh	t9,10(at)
     384:	87180002 	lh	t8,2(t8)
     388:	3c010000 	lui	at,0x0
     38c:	a42b0006 	sh	t3,6(at)
     390:	3c0b0000 	lui	t3,0x0
     394:	856b0004 	lh	t3,4(t3)
     398:	44983000 	mtc1	t8,$f6
     39c:	4600910d 	trunc.w.s	$f4,$f18
     3a0:	448b9000 	mtc1	t3,$f18
     3a4:	3c0d0000 	lui	t5,0x0
     3a8:	46803220 	cvt.s.w	$f8,$f6
     3ac:	44032000 	mfc1	v1,$f4
     3b0:	85ad0004 	lh	t5,4(t5)
     3b4:	3c0c0000 	lui	t4,0x0
     3b8:	858c0002 	lh	t4,2(t4)
     3bc:	46809120 	cvt.s.w	$f4,$f18
     3c0:	46004282 	mul.s	$f10,$f8,$f0
     3c4:	00031c00 	sll	v1,v1,0x10
     3c8:	3c010000 	lui	at,0x0
     3cc:	00031c03 	sra	v1,v1,0x10
     3d0:	246e00ff 	addiu	t6,v1,255
     3d4:	46002182 	mul.s	$f6,$f4,$f0
     3d8:	a42d000a 	sh	t5,10(at)
     3dc:	31cf00ff 	andi	t7,t6,0xff
     3e0:	a42c0008 	sh	t4,8(at)
     3e4:	a52f0000 	sh	t7,0(t1)
     3e8:	3c0f0000 	lui	t7,0x0
     3ec:	4600540d 	trunc.w.s	$f16,$f10
     3f0:	3c0c0000 	lui	t4,0x0
     3f4:	4600320d 	trunc.w.s	$f8,$f6
     3f8:	44048000 	mfc1	a0,$f16
     3fc:	44054000 	mfc1	a1,$f8
     400:	00042400 	sll	a0,a0,0x10
     404:	00042403 	sra	a0,a0,0x10
     408:	00052c00 	sll	a1,a1,0x10
     40c:	00052c03 	sra	a1,a1,0x10
     410:	249900ff 	addiu	t9,a0,255
     414:	24ad00ff 	addiu	t5,a1,255
     418:	332b00ff 	andi	t3,t9,0xff
     41c:	31ae00ff 	andi	t6,t5,0xff
     420:	a52b0002 	sh	t3,2(t1)
     424:	a52e0004 	sh	t6,4(t1)
     428:	85ef0000 	lh	t7,0(t7)
     42c:	3c190000 	lui	t9,0x0
     430:	87390002 	lh	t9,2(t9)
     434:	448f5000 	mtc1	t7,$f10
     438:	858c0004 	lh	t4,4(t4)
     43c:	44993000 	mtc1	t9,$f6
     440:	46805420 	cvt.s.w	$f16,$f10
     444:	46803220 	cvt.s.w	$f8,$f6
     448:	46008482 	mul.s	$f18,$f16,$f0
     44c:	4600910d 	trunc.w.s	$f4,$f18
     450:	448c9000 	mtc1	t4,$f18
     454:	46004282 	mul.s	$f10,$f8,$f0
     458:	44032000 	mfc1	v1,$f4
     45c:	00000000 	nop
     460:	00031c00 	sll	v1,v1,0x10
     464:	46809120 	cvt.s.w	$f4,$f18
     468:	00031c03 	sra	v1,v1,0x10
     46c:	246f00c8 	addiu	t7,v1,200
     470:	31f800ff 	andi	t8,t7,0xff
     474:	a5580000 	sh	t8,0(t2)
     478:	4600540d 	trunc.w.s	$f16,$f10
     47c:	46002182 	mul.s	$f6,$f4,$f0
     480:	44048000 	mfc1	a0,$f16
     484:	00000000 	nop
     488:	00042400 	sll	a0,a0,0x10
     48c:	4600320d 	trunc.w.s	$f8,$f6
     490:	0004cc03 	sra	t9,a0,0x10
     494:	332b00ff 	andi	t3,t9,0xff
     498:	a54b0002 	sh	t3,2(t2)
     49c:	44054000 	mfc1	a1,$f8
     4a0:	00000000 	nop
     4a4:	00052c00 	sll	a1,a1,0x10
     4a8:	00056403 	sra	t4,a1,0x10
     4ac:	318d00ff 	andi	t5,t4,0xff
     4b0:	03e00008 	jr	ra
     4b4:	a54d0004 	sh	t5,4(t2)

000004b8 <func_80078E18>:
     4b8:	3c0e0001 	lui	t6,0x1
     4bc:	01c47021 	addu	t6,t6,a0
     4c0:	85ce0716 	lh	t6,1814(t6)
     4c4:	3c010000 	lui	at,0x0
     4c8:	24020001 	li	v0,1
     4cc:	03e00008 	jr	ra
     4d0:	a42e0030 	sh	t6,48(at)

000004d4 <func_80078E34>:
     4d4:	3c010001 	lui	at,0x1
     4d8:	00811021 	addu	v0,a0,at
     4dc:	844f0716 	lh	t7,1814(v0)
     4e0:	240e0140 	li	t6,320
     4e4:	a44e0718 	sh	t6,1816(v0)
     4e8:	25f80010 	addiu	t8,t7,16
     4ec:	a4580716 	sh	t8,1814(v0)
     4f0:	3c030000 	lui	v1,0x0
     4f4:	84630030 	lh	v1,48(v1)
     4f8:	84590716 	lh	t9,1814(v0)
     4fc:	00001025 	move	v0,zero
     500:	0323082a 	slt	at,t9,v1
     504:	14200005 	bnez	at,51c <func_80078E34+0x48>
     508:	3c010001 	lui	at,0x1
     50c:	00240821 	addu	at,at,a0
     510:	a4230716 	sh	v1,1814(at)
     514:	03e00008 	jr	ra
     518:	24020001 	li	v0,1
     51c:	03e00008 	jr	ra
     520:	00000000 	nop

00000524 <func_80078E84>:
     524:	27bdffe8 	addiu	sp,sp,-24
     528:	3c010001 	lui	at,0x1
     52c:	afbf0014 	sw	ra,20(sp)
     530:	00811821 	addu	v1,a0,at
     534:	846e0718 	lh	t6,1816(v1)
     538:	3c010001 	lui	at,0x1
     53c:	342104f0 	ori	at,at,0x4f0
     540:	11c00008 	beqz	t6,564 <func_80078E84+0x40>
     544:	00811021 	addu	v0,a0,at
     548:	3c010001 	lui	at,0x1
     54c:	342104f0 	ori	at,at,0x4f0
     550:	00811021 	addu	v0,a0,at
     554:	844f0228 	lh	t7,552(v0)
     558:	25f8ffff 	addiu	t8,t7,-1
     55c:	10000012 	b	5a8 <func_80078E84+0x84>
     560:	a4580228 	sh	t8,552(v0)
     564:	84480226 	lh	t0,550(v0)
     568:	24190140 	li	t9,320
     56c:	a4590228 	sh	t9,552(v0)
     570:	2509fff0 	addiu	t1,t0,-16
     574:	a4490226 	sh	t1,550(v0)
     578:	844a0226 	lh	t2,550(v0)
     57c:	3c0b0000 	lui	t3,0x0
     580:	5d40000a 	bgtzl	t2,5ac <func_80078E84+0x88>
     584:	00001025 	move	v0,zero
     588:	a4400226 	sh	zero,550(v0)
     58c:	8c791d58 	lw	t9,7512(v1)
     590:	856b0030 	lh	t3,48(t3)
     594:	240cffff 	li	t4,-1
     598:	0320f809 	jalr	t9
     59c:	018b2823 	subu	a1,t4,t3
     5a0:	10000002 	b	5ac <func_80078E84+0x88>
     5a4:	24020001 	li	v0,1
     5a8:	00001025 	move	v0,zero
     5ac:	8fbf0014 	lw	ra,20(sp)
     5b0:	27bd0018 	addiu	sp,sp,24
     5b4:	03e00008 	jr	ra
     5b8:	00000000 	nop

000005bc <Health_Draw>:
     5bc:	27bdfe68 	addiu	sp,sp,-408
     5c0:	afb1003c 	sw	s1,60(sp)
     5c4:	3c110000 	lui	s1,0x0
     5c8:	26310000 	addiu	s1,s1,0
     5cc:	3c010001 	lui	at,0x1
     5d0:	afbf005c 	sw	ra,92(sp)
     5d4:	afbe0058 	sw	s8,88(sp)
     5d8:	afb70054 	sw	s7,84(sp)
     5dc:	afb60050 	sw	s6,80(sp)
     5e0:	afb5004c 	sw	s5,76(sp)
     5e4:	afb40048 	sw	s4,72(sp)
     5e8:	afb30044 	sw	s3,68(sp)
     5ec:	afb20040 	sw	s2,64(sp)
     5f0:	afb00038 	sw	s0,56(sp)
     5f4:	f7b60030 	sdc1	$f22,48(sp)
     5f8:	f7b40028 	sdc1	$f20,40(sp)
     5fc:	00811021 	addu	v0,a0,at
     600:	86230030 	lh	v1,48(s1)
     604:	8638002e 	lh	t8,46(s1)
     608:	8c900000 	lw	s0,0(a0)
     60c:	8c4e061c 	lw	t6,1564(v0)
     610:	822a00cf 	lb	t2,207(s1)
     614:	00809025 	move	s2,a0
     618:	afae0154 	sw	t6,340(sp)
     61c:	04610004 	bgez	v1,630 <Health_Draw+0x74>
     620:	306f000f 	andi	t7,v1,0xf
     624:	11e00002 	beqz	t7,630 <Health_Draw+0x74>
     628:	00000000 	nop
     62c:	25effff0 	addiu	t7,t7,-16
     630:	afaf0150 	sw	t7,336(sp)
     634:	07010003 	bgez	t8,644 <Health_Draw+0x88>
     638:	0018c903 	sra	t9,t8,0x4
     63c:	2701000f 	addiu	at,t8,15
     640:	0001c903 	sra	t9,at,0x4
     644:	a7b9014e 	sh	t9,334(sp)
     648:	8449071a 	lh	t1,1818(v0)
     64c:	04610003 	bgez	v1,65c <Health_Draw+0xa0>
     650:	00039903 	sra	s3,v1,0x4
     654:	2461000f 	addiu	at,v1,15
     658:	00019903 	sra	s3,at,0x4
     65c:	44892000 	mtc1	t1,$f4
     660:	3c010000 	lui	at,0x0
     664:	c428002c 	lwc1	$f8,44(at)
     668:	468021a0 	cvt.s.w	$f6,$f4
     66c:	00139c00 	sll	s3,s3,0x10
     670:	3c060000 	lui	a2,0x0
     674:	254bffff 	addiu	t3,t2,-1
     678:	00139c03 	sra	s3,s3,0x10
     67c:	afa00140 	sw	zero,320(sp)
     680:	46083282 	mul.s	$f10,$f6,$f8
     684:	afa0013c 	sw	zero,316(sp)
     688:	afab0138 	sw	t3,312(sp)
     68c:	24c60000 	addiu	a2,a2,0
     690:	afb20198 	sw	s2,408(sp)
     694:	27a40124 	addiu	a0,sp,292
     698:	24070161 	li	a3,353
     69c:	e7aa0144 	swc1	$f10,324(sp)
     6a0:	0c000000 	jal	0 <Health_InitData>
     6a4:	02002825 	move	a1,s0
     6a8:	862c0030 	lh	t4,48(s1)
     6ac:	8fa80198 	lw	t0,408(sp)
     6b0:	2412ffff 	li	s2,-1
     6b4:	05810004 	bgez	t4,6c8 <Health_Draw+0x10c>
     6b8:	318d000f 	andi	t5,t4,0xf
     6bc:	11a00002 	beqz	t5,6c8 <Health_Draw+0x10c>
     6c0:	00000000 	nop
     6c4:	25adfff0 	addiu	t5,t5,-16
     6c8:	15a00004 	bnez	t5,6dc <Health_Draw+0x120>
     6cc:	87ae014e 	lh	t6,334(sp)
     6d0:	2673ffff 	addiu	s3,s3,-1
     6d4:	00139c00 	sll	s3,s3,0x10
     6d8:	00139c03 	sra	s3,s3,0x10
     6dc:	4480b000 	mtc1	zero,$f22
     6e0:	4480a000 	mtc1	zero,$f20
     6e4:	19c002cc 	blez	t6,1218 <Health_Draw+0xc5c>
     6e8:	00008825 	move	s1,zero
     6ec:	3c160000 	lui	s6,0x0
     6f0:	3c150000 	lui	s5,0x0
     6f4:	26b50000 	addiu	s5,s5,0
     6f8:	26d60000 	addiu	s6,s6,0
     6fc:	3c1efb00 	lui	s8,0xfb00
     700:	3c17fa00 	lui	s7,0xfa00
     704:	3c14e700 	lui	s4,0xe700
     708:	8faf0138 	lw	t7,312(sp)
     70c:	05e00002 	bltz	t7,718 <Health_Draw+0x15c>
     710:	01f1082a 	slt	at,t7,s1
     714:	102000cf 	beqz	at,a54 <Health_Draw+0x498>
     718:	0233082a 	slt	at,s1,s3
     71c:	1020002f 	beqz	at,7dc <Health_Draw+0x220>
     720:	3c040000 	lui	a0,0x0
     724:	524000bd 	beqzl	s2,a1c <Health_Draw+0x460>
     728:	0233082a 	slt	at,s1,s3
     72c:	8e0202b0 	lw	v0,688(s0)
     730:	3c010001 	lui	at,0x1
     734:	342104f0 	ori	at,at,0x4f0
     738:	24580008 	addiu	t8,v0,8
     73c:	ae1802b0 	sw	t8,688(s0)
     740:	ac400004 	sw	zero,4(v0)
     744:	ac540000 	sw	s4,0(v0)
     748:	8e0202b0 	lw	v0,688(s0)
     74c:	01011821 	addu	v1,t0,at
     750:	00009025 	move	s2,zero
     754:	24590008 	addiu	t9,v0,8
     758:	ae1902b0 	sw	t9,688(s0)
     75c:	ac570000 	sw	s7,0(v0)
     760:	84690216 	lh	t1,534(v1)
     764:	84780212 	lh	t8,530(v1)
     768:	846d020e 	lh	t5,526(v1)
     76c:	946c0250 	lhu	t4,592(v1)
     770:	312a00ff 	andi	t2,t1,0xff
     774:	000a5a00 	sll	t3,t2,0x8
     778:	331900ff 	andi	t9,t8,0xff
     77c:	000d7600 	sll	t6,t5,0x18
     780:	016e7825 	or	t7,t3,t6
     784:	00194c00 	sll	t1,t9,0x10
     788:	01e95025 	or	t2,t7,t1
     78c:	318d00ff 	andi	t5,t4,0xff
     790:	014d5825 	or	t3,t2,t5
     794:	ac4b0004 	sw	t3,4(v0)
     798:	8e0202b0 	lw	v0,688(s0)
     79c:	244e0008 	addiu	t6,v0,8
     7a0:	ae0e02b0 	sw	t6,688(s0)
     7a4:	ac5e0000 	sw	s8,0(v0)
     7a8:	84780222 	lh	t8,546(v1)
     7ac:	846b021e 	lh	t3,542(v1)
     7b0:	846c021a 	lh	t4,538(v1)
     7b4:	331900ff 	andi	t9,t8,0xff
     7b8:	00197a00 	sll	t7,t9,0x8
     7bc:	316e00ff 	andi	t6,t3,0xff
     7c0:	000c5600 	sll	t2,t4,0x18
     7c4:	01ea6825 	or	t5,t7,t2
     7c8:	000ec400 	sll	t8,t6,0x10
     7cc:	01b8c825 	or	t9,t5,t8
     7d0:	372900ff 	ori	t1,t9,0xff
     7d4:	10000090 	b	a18 <Health_Draw+0x45c>
     7d8:	ac490004 	sw	t1,4(v0)
     7dc:	16710030 	bne	s3,s1,8a0 <Health_Draw+0x2e4>
     7e0:	0271082a 	slt	at,s3,s1
     7e4:	24010001 	li	at,1
     7e8:	5241008c 	beql	s2,at,a1c <Health_Draw+0x460>
     7ec:	0233082a 	slt	at,s1,s3
     7f0:	8e0202b0 	lw	v0,688(s0)
     7f4:	3c010001 	lui	at,0x1
     7f8:	342104f0 	ori	at,at,0x4f0
     7fc:	244c0008 	addiu	t4,v0,8
     800:	ae0c02b0 	sw	t4,688(s0)
     804:	ac400004 	sw	zero,4(v0)
     808:	ac540000 	sw	s4,0(v0)
     80c:	8e0202b0 	lw	v0,688(s0)
     810:	01011821 	addu	v1,t0,at
     814:	24120001 	li	s2,1
     818:	244f0008 	addiu	t7,v0,8
     81c:	ae0f02b0 	sw	t7,688(s0)
     820:	ac570000 	sw	s7,0(v0)
     824:	846a0206 	lh	t2,518(v1)
     828:	846c0204 	lh	t4,516(v1)
     82c:	84780202 	lh	t8,514(v1)
     830:	946d0250 	lhu	t5,592(v1)
     834:	314b00ff 	andi	t3,t2,0xff
     838:	000b7200 	sll	t6,t3,0x8
     83c:	318f00ff 	andi	t7,t4,0xff
     840:	0018ce00 	sll	t9,t8,0x18
     844:	01d94825 	or	t1,t6,t9
     848:	000f5400 	sll	t2,t7,0x10
     84c:	012a5825 	or	t3,t1,t2
     850:	31b800ff 	andi	t8,t5,0xff
     854:	01787025 	or	t6,t3,t8
     858:	ac4e0004 	sw	t6,4(v0)
     85c:	8e0202b0 	lw	v0,688(s0)
     860:	24590008 	addiu	t9,v0,8
     864:	ae1902b0 	sw	t9,688(s0)
     868:	ac5e0000 	sw	s8,0(v0)
     86c:	846c020c 	lh	t4,524(v1)
     870:	846e020a 	lh	t6,522(v1)
     874:	846d0208 	lh	t5,520(v1)
     878:	318f00ff 	andi	t7,t4,0xff
     87c:	000f4a00 	sll	t1,t7,0x8
     880:	31d900ff 	andi	t9,t6,0xff
     884:	000d5e00 	sll	t3,t5,0x18
     888:	012bc025 	or	t8,t1,t3
     88c:	00196400 	sll	t4,t9,0x10
     890:	030c7825 	or	t7,t8,t4
     894:	35ea00ff 	ori	t2,t7,0xff
     898:	1000005f 	b	a18 <Health_Draw+0x45c>
     89c:	ac4a0004 	sw	t2,4(v0)
     8a0:	1020002f 	beqz	at,960 <Health_Draw+0x3a4>
     8a4:	24010002 	li	at,2
     8a8:	5241005c 	beql	s2,at,a1c <Health_Draw+0x460>
     8ac:	0233082a 	slt	at,s1,s3
     8b0:	8e0202b0 	lw	v0,688(s0)
     8b4:	3c010001 	lui	at,0x1
     8b8:	342104f0 	ori	at,at,0x4f0
     8bc:	244d0008 	addiu	t5,v0,8
     8c0:	ae0d02b0 	sw	t5,688(s0)
     8c4:	ac400004 	sw	zero,4(v0)
     8c8:	ac540000 	sw	s4,0(v0)
     8cc:	8e0202b0 	lw	v0,688(s0)
     8d0:	01011821 	addu	v1,t0,at
     8d4:	24120002 	li	s2,2
     8d8:	24490008 	addiu	t1,v0,8
     8dc:	ae0902b0 	sw	t1,688(s0)
     8e0:	ac570000 	sw	s7,0(v0)
     8e4:	846b0216 	lh	t3,534(v1)
     8e8:	846d0212 	lh	t5,530(v1)
     8ec:	846c020e 	lh	t4,526(v1)
     8f0:	94780250 	lhu	t8,592(v1)
     8f4:	316e00ff 	andi	t6,t3,0xff
     8f8:	000eca00 	sll	t9,t6,0x8
     8fc:	31a900ff 	andi	t1,t5,0xff
     900:	000c7e00 	sll	t7,t4,0x18
     904:	032f5025 	or	t2,t9,t7
     908:	00095c00 	sll	t3,t1,0x10
     90c:	014b7025 	or	t6,t2,t3
     910:	330c00ff 	andi	t4,t8,0xff
     914:	01ccc825 	or	t9,t6,t4
     918:	ac590004 	sw	t9,4(v0)
     91c:	8e0202b0 	lw	v0,688(s0)
     920:	244f0008 	addiu	t7,v0,8
     924:	ae0f02b0 	sw	t7,688(s0)
     928:	ac5e0000 	sw	s8,0(v0)
     92c:	846d0222 	lh	t5,546(v1)
     930:	8479021e 	lh	t9,542(v1)
     934:	8478021a 	lh	t8,538(v1)
     938:	31a900ff 	andi	t1,t5,0xff
     93c:	00095200 	sll	t2,t1,0x8
     940:	332f00ff 	andi	t7,t9,0xff
     944:	00187600 	sll	t6,t8,0x18
     948:	014e6025 	or	t4,t2,t6
     94c:	000f6c00 	sll	t5,t7,0x10
     950:	018d4825 	or	t1,t4,t5
     954:	352b00ff 	ori	t3,t1,0xff
     958:	1000002f 	b	a18 <Health_Draw+0x45c>
     95c:	ac4b0004 	sw	t3,4(v0)
     960:	24010003 	li	at,3
     964:	5241002d 	beql	s2,at,a1c <Health_Draw+0x460>
     968:	0233082a 	slt	at,s1,s3
     96c:	8e0202b0 	lw	v0,688(s0)
     970:	3c010001 	lui	at,0x1
     974:	342104f0 	ori	at,at,0x4f0
     978:	24580008 	addiu	t8,v0,8
     97c:	ae1802b0 	sw	t8,688(s0)
     980:	ac400004 	sw	zero,4(v0)
     984:	ac540000 	sw	s4,0(v0)
     988:	8e0202b0 	lw	v0,688(s0)
     98c:	01011821 	addu	v1,t0,at
     990:	24120003 	li	s2,3
     994:	244a0008 	addiu	t2,v0,8
     998:	ae0a02b0 	sw	t2,688(s0)
     99c:	ac570000 	sw	s7,0(v0)
     9a0:	846e0218 	lh	t6,536(v1)
     9a4:	84780214 	lh	t8,532(v1)
     9a8:	846d0210 	lh	t5,528(v1)
     9ac:	946c0250 	lhu	t4,592(v1)
     9b0:	31d900ff 	andi	t9,t6,0xff
     9b4:	00197a00 	sll	t7,t9,0x8
     9b8:	330a00ff 	andi	t2,t8,0xff
     9bc:	000d4e00 	sll	t1,t5,0x18
     9c0:	01e95825 	or	t3,t7,t1
     9c4:	000a7400 	sll	t6,t2,0x10
     9c8:	016ec825 	or	t9,t3,t6
     9cc:	318d00ff 	andi	t5,t4,0xff
     9d0:	032d7825 	or	t7,t9,t5
     9d4:	ac4f0004 	sw	t7,4(v0)
     9d8:	8e0202b0 	lw	v0,688(s0)
     9dc:	24490008 	addiu	t1,v0,8
     9e0:	ae0902b0 	sw	t1,688(s0)
     9e4:	ac5e0000 	sw	s8,0(v0)
     9e8:	84780224 	lh	t8,548(v1)
     9ec:	846f0220 	lh	t7,544(v1)
     9f0:	846c021c 	lh	t4,540(v1)
     9f4:	330a00ff 	andi	t2,t8,0xff
     9f8:	000a5a00 	sll	t3,t2,0x8
     9fc:	31e900ff 	andi	t1,t7,0xff
     a00:	000cce00 	sll	t9,t4,0x18
     a04:	01796825 	or	t5,t3,t9
     a08:	0009c400 	sll	t8,t1,0x10
     a0c:	01b85025 	or	t2,t5,t8
     a10:	354e00ff 	ori	t6,t2,0xff
     a14:	ac4e0004 	sw	t6,4(v0)
     a18:	0233082a 	slt	at,s1,s3
     a1c:	10200003 	beqz	at,a2c <Health_Draw+0x470>
     a20:	00000000 	nop
     a24:	100000dc 	b	d98 <Health_Draw+0x7dc>
     a28:	24840000 	addiu	a0,a0,0
     a2c:	16710007 	bne	s3,s1,a4c <Health_Draw+0x490>
     a30:	3c040000 	lui	a0,0x0
     a34:	8fac0150 	lw	t4,336(sp)
     a38:	3c040000 	lui	a0,0x0
     a3c:	000c5880 	sll	t3,t4,0x2
     a40:	008b2021 	addu	a0,a0,t3
     a44:	100000d4 	b	d98 <Health_Draw+0x7dc>
     a48:	8c840000 	lw	a0,0(a0)
     a4c:	100000d2 	b	d98 <Health_Draw+0x7dc>
     a50:	24840000 	addiu	a0,a0,0
     a54:	0233082a 	slt	at,s1,s3
     a58:	1020002f 	beqz	at,b18 <Health_Draw+0x55c>
     a5c:	24010004 	li	at,4
     a60:	524100c0 	beql	s2,at,d64 <Health_Draw+0x7a8>
     a64:	0233082a 	slt	at,s1,s3
     a68:	8e0202b0 	lw	v0,688(s0)
     a6c:	3c010001 	lui	at,0x1
     a70:	342104f0 	ori	at,at,0x4f0
     a74:	24590008 	addiu	t9,v0,8
     a78:	ae1902b0 	sw	t9,688(s0)
     a7c:	ac400004 	sw	zero,4(v0)
     a80:	ac540000 	sw	s4,0(v0)
     a84:	8e0202b0 	lw	v0,688(s0)
     a88:	01011821 	addu	v1,t0,at
     a8c:	24120004 	li	s2,4
     a90:	244f0008 	addiu	t7,v0,8
     a94:	ae0f02b0 	sw	t7,688(s0)
     a98:	ac570000 	sw	s7,0(v0)
     a9c:	86a90004 	lh	t1,4(s5)
     aa0:	86b90002 	lh	t9,2(s5)
     aa4:	86ae0000 	lh	t6,0(s5)
     aa8:	946a0250 	lhu	t2,592(v1)
     aac:	312d00ff 	andi	t5,t1,0xff
     ab0:	000dc200 	sll	t8,t5,0x8
     ab4:	332f00ff 	andi	t7,t9,0xff
     ab8:	000e6600 	sll	t4,t6,0x18
     abc:	030c5825 	or	t3,t8,t4
     ac0:	000f4c00 	sll	t1,t7,0x10
     ac4:	01696825 	or	t5,t3,t1
     ac8:	314e00ff 	andi	t6,t2,0xff
     acc:	01aec025 	or	t8,t5,t6
     ad0:	ac580004 	sw	t8,4(v0)
     ad4:	8e0202b0 	lw	v0,688(s0)
     ad8:	244c0008 	addiu	t4,v0,8
     adc:	ae0c02b0 	sw	t4,688(s0)
     ae0:	ac5e0000 	sw	s8,0(v0)
     ae4:	86d90004 	lh	t9,4(s6)
     ae8:	86d80002 	lh	t8,2(s6)
     aec:	86ca0000 	lh	t2,0(s6)
     af0:	332f00ff 	andi	t7,t9,0xff
     af4:	000f5a00 	sll	t3,t7,0x8
     af8:	330c00ff 	andi	t4,t8,0xff
     afc:	000a6e00 	sll	t5,t2,0x18
     b00:	016d7025 	or	t6,t3,t5
     b04:	000ccc00 	sll	t9,t4,0x10
     b08:	01d97825 	or	t7,t6,t9
     b0c:	35e900ff 	ori	t1,t7,0xff
     b10:	10000093 	b	d60 <Health_Draw+0x7a4>
     b14:	ac490004 	sw	t1,4(v0)
     b18:	16710033 	bne	s3,s1,be8 <Health_Draw+0x62c>
     b1c:	0271082a 	slt	at,s3,s1
     b20:	24010005 	li	at,5
     b24:	1241008e 	beq	s2,at,d60 <Health_Draw+0x7a4>
     b28:	3c050000 	lui	a1,0x0
     b2c:	8e0202b0 	lw	v0,688(s0)
     b30:	24a50000 	addiu	a1,a1,0
     b34:	3c010001 	lui	at,0x1
     b38:	244a0008 	addiu	t2,v0,8
     b3c:	ae0a02b0 	sw	t2,688(s0)
     b40:	ac400004 	sw	zero,4(v0)
     b44:	ac540000 	sw	s4,0(v0)
     b48:	8e0202b0 	lw	v0,688(s0)
     b4c:	342104f0 	ori	at,at,0x4f0
     b50:	01011821 	addu	v1,t0,at
     b54:	244b0008 	addiu	t3,v0,8
     b58:	ae0b02b0 	sw	t3,688(s0)
     b5c:	ac570000 	sw	s7,0(v0)
     b60:	84ad0004 	lh	t5,4(a1)
     b64:	84aa0002 	lh	t2,2(a1)
     b68:	84b90000 	lh	t9,0(a1)
     b6c:	946e0250 	lhu	t6,592(v1)
     b70:	31b800ff 	andi	t8,t5,0xff
     b74:	00186200 	sll	t4,t8,0x8
     b78:	314b00ff 	andi	t3,t2,0xff
     b7c:	00197e00 	sll	t7,t9,0x18
     b80:	018f4825 	or	t1,t4,t7
     b84:	000b6c00 	sll	t5,t3,0x10
     b88:	012dc025 	or	t8,t1,t5
     b8c:	31d900ff 	andi	t9,t6,0xff
     b90:	03196025 	or	t4,t8,t9
     b94:	ac4c0004 	sw	t4,4(v0)
     b98:	8e0202b0 	lw	v0,688(s0)
     b9c:	3c040000 	lui	a0,0x0
     ba0:	24840000 	addiu	a0,a0,0
     ba4:	244f0008 	addiu	t7,v0,8
     ba8:	ae0f02b0 	sw	t7,688(s0)
     bac:	ac5e0000 	sw	s8,0(v0)
     bb0:	848a0004 	lh	t2,4(a0)
     bb4:	848c0002 	lh	t4,2(a0)
     bb8:	848e0000 	lh	t6,0(a0)
     bbc:	314b00ff 	andi	t3,t2,0xff
     bc0:	000b4a00 	sll	t1,t3,0x8
     bc4:	318f00ff 	andi	t7,t4,0xff
     bc8:	000ec600 	sll	t8,t6,0x18
     bcc:	0138c825 	or	t9,t1,t8
     bd0:	000f5400 	sll	t2,t7,0x10
     bd4:	032a5825 	or	t3,t9,t2
     bd8:	356d00ff 	ori	t5,t3,0xff
     bdc:	24120005 	li	s2,5
     be0:	1000005f 	b	d60 <Health_Draw+0x7a4>
     be4:	ac4d0004 	sw	t5,4(v0)
     be8:	1020002f 	beqz	at,ca8 <Health_Draw+0x6ec>
     bec:	24010006 	li	at,6
     bf0:	5241005c 	beql	s2,at,d64 <Health_Draw+0x7a8>
     bf4:	0233082a 	slt	at,s1,s3
     bf8:	8e0202b0 	lw	v0,688(s0)
     bfc:	3c010001 	lui	at,0x1
     c00:	342104f0 	ori	at,at,0x4f0
     c04:	244e0008 	addiu	t6,v0,8
     c08:	ae0e02b0 	sw	t6,688(s0)
     c0c:	ac400004 	sw	zero,4(v0)
     c10:	ac540000 	sw	s4,0(v0)
     c14:	8e0202b0 	lw	v0,688(s0)
     c18:	01011821 	addu	v1,t0,at
     c1c:	24120006 	li	s2,6
     c20:	24490008 	addiu	t1,v0,8
     c24:	ae0902b0 	sw	t1,688(s0)
     c28:	ac570000 	sw	s7,0(v0)
     c2c:	86b80004 	lh	t8,4(s5)
     c30:	86ae0002 	lh	t6,2(s5)
     c34:	86aa0000 	lh	t2,0(s5)
     c38:	94790250 	lhu	t9,592(v1)
     c3c:	330c00ff 	andi	t4,t8,0xff
     c40:	000c7a00 	sll	t7,t4,0x8
     c44:	31c900ff 	andi	t1,t6,0xff
     c48:	000a5e00 	sll	t3,t2,0x18
     c4c:	01eb6825 	or	t5,t7,t3
     c50:	0009c400 	sll	t8,t1,0x10
     c54:	01b86025 	or	t4,t5,t8
     c58:	332a00ff 	andi	t2,t9,0xff
     c5c:	018a7825 	or	t7,t4,t2
     c60:	ac4f0004 	sw	t7,4(v0)
     c64:	8e0202b0 	lw	v0,688(s0)
     c68:	244b0008 	addiu	t3,v0,8
     c6c:	ae0b02b0 	sw	t3,688(s0)
     c70:	ac5e0000 	sw	s8,0(v0)
     c74:	86ce0004 	lh	t6,4(s6)
     c78:	86cf0002 	lh	t7,2(s6)
     c7c:	86d90000 	lh	t9,0(s6)
     c80:	31c900ff 	andi	t1,t6,0xff
     c84:	00096a00 	sll	t5,t1,0x8
     c88:	31eb00ff 	andi	t3,t7,0xff
     c8c:	00196600 	sll	t4,t9,0x18
     c90:	01ac5025 	or	t2,t5,t4
     c94:	000b7400 	sll	t6,t3,0x10
     c98:	014e4825 	or	t1,t2,t6
     c9c:	353800ff 	ori	t8,t1,0xff
     ca0:	1000002f 	b	d60 <Health_Draw+0x7a4>
     ca4:	ac580004 	sw	t8,4(v0)
     ca8:	24010007 	li	at,7
     cac:	5241002d 	beql	s2,at,d64 <Health_Draw+0x7a8>
     cb0:	0233082a 	slt	at,s1,s3
     cb4:	8e0202b0 	lw	v0,688(s0)
     cb8:	3c010001 	lui	at,0x1
     cbc:	342104f0 	ori	at,at,0x4f0
     cc0:	24590008 	addiu	t9,v0,8
     cc4:	ae1902b0 	sw	t9,688(s0)
     cc8:	ac400004 	sw	zero,4(v0)
     ccc:	ac540000 	sw	s4,0(v0)
     cd0:	8e0202b0 	lw	v0,688(s0)
     cd4:	01011821 	addu	v1,t0,at
     cd8:	24120007 	li	s2,7
     cdc:	244d0008 	addiu	t5,v0,8
     ce0:	ae0d02b0 	sw	t5,688(s0)
     ce4:	ac570000 	sw	s7,0(v0)
     ce8:	86ac000a 	lh	t4,10(s5)
     cec:	86b90008 	lh	t9,8(s5)
     cf0:	86ae0006 	lh	t6,6(s5)
     cf4:	946a0250 	lhu	t2,592(v1)
     cf8:	318f00ff 	andi	t7,t4,0xff
     cfc:	000f5a00 	sll	t3,t7,0x8
     d00:	332d00ff 	andi	t5,t9,0xff
     d04:	000e4e00 	sll	t1,t6,0x18
     d08:	0169c025 	or	t8,t3,t1
     d0c:	000d6400 	sll	t4,t5,0x10
     d10:	030c7825 	or	t7,t8,t4
     d14:	314e00ff 	andi	t6,t2,0xff
     d18:	01ee5825 	or	t3,t7,t6
     d1c:	ac4b0004 	sw	t3,4(v0)
     d20:	8e0202b0 	lw	v0,688(s0)
     d24:	24490008 	addiu	t1,v0,8
     d28:	ae0902b0 	sw	t1,688(s0)
     d2c:	ac5e0000 	sw	s8,0(v0)
     d30:	86d9000a 	lh	t9,10(s6)
     d34:	86cb0008 	lh	t3,8(s6)
     d38:	86ca0006 	lh	t2,6(s6)
     d3c:	332d00ff 	andi	t5,t9,0xff
     d40:	000dc200 	sll	t8,t5,0x8
     d44:	316900ff 	andi	t1,t3,0xff
     d48:	000a7e00 	sll	t7,t2,0x18
     d4c:	030f7025 	or	t6,t8,t7
     d50:	0009cc00 	sll	t9,t1,0x10
     d54:	01d96825 	or	t5,t6,t9
     d58:	35ac00ff 	ori	t4,t5,0xff
     d5c:	ac4c0004 	sw	t4,4(v0)
     d60:	0233082a 	slt	at,s1,s3
     d64:	10200003 	beqz	at,d74 <Health_Draw+0x7b8>
     d68:	3c040000 	lui	a0,0x0
     d6c:	1000000a 	b	d98 <Health_Draw+0x7dc>
     d70:	24840000 	addiu	a0,a0,0
     d74:	16710007 	bne	s3,s1,d94 <Health_Draw+0x7d8>
     d78:	3c040000 	lui	a0,0x0
     d7c:	8faa0150 	lw	t2,336(sp)
     d80:	3c040000 	lui	a0,0x0
     d84:	000ac080 	sll	t8,t2,0x2
     d88:	00982021 	addu	a0,a0,t8
     d8c:	10000002 	b	d98 <Health_Draw+0x7dc>
     d90:	8c840000 	lw	a0,0(a0)
     d94:	24840000 	addiu	a0,a0,0
     d98:	8faf013c 	lw	t7,316(sp)
     d9c:	3c010000 	lui	at,0x0
     da0:	11e40031 	beq	t7,a0,e68 <Health_Draw+0x8ac>
     da4:	00000000 	nop
     da8:	afa4013c 	sw	a0,316(sp)
     dac:	8e0202b0 	lw	v0,688(s0)
     db0:	3c09fd70 	lui	t1,0xfd70
     db4:	3c19f570 	lui	t9,0xf570
     db8:	244b0008 	addiu	t3,v0,8
     dbc:	ae0b02b0 	sw	t3,688(s0)
     dc0:	ac440004 	sw	a0,4(v0)
     dc4:	ac490000 	sw	t1,0(v0)
     dc8:	8e0202b0 	lw	v0,688(s0)
     dcc:	3c0d0700 	lui	t5,0x700
     dd0:	3c0ae600 	lui	t2,0xe600
     dd4:	244e0008 	addiu	t6,v0,8
     dd8:	ae0e02b0 	sw	t6,688(s0)
     ddc:	ac4d0004 	sw	t5,4(v0)
     de0:	ac590000 	sw	t9,0(v0)
     de4:	8e0202b0 	lw	v0,688(s0)
     de8:	3c0b0707 	lui	t3,0x707
     dec:	356bf400 	ori	t3,t3,0xf400
     df0:	244c0008 	addiu	t4,v0,8
     df4:	ae0c02b0 	sw	t4,688(s0)
     df8:	ac400004 	sw	zero,4(v0)
     dfc:	ac4a0000 	sw	t2,0(v0)
     e00:	8e0202b0 	lw	v0,688(s0)
     e04:	3c0ff300 	lui	t7,0xf300
     e08:	3c19f568 	lui	t9,0xf568
     e0c:	24580008 	addiu	t8,v0,8
     e10:	ae1802b0 	sw	t8,688(s0)
     e14:	ac4b0004 	sw	t3,4(v0)
     e18:	ac4f0000 	sw	t7,0(v0)
     e1c:	8e0202b0 	lw	v0,688(s0)
     e20:	37390400 	ori	t9,t9,0x400
     e24:	3c0a0003 	lui	t2,0x3
     e28:	24490008 	addiu	t1,v0,8
     e2c:	ae0902b0 	sw	t1,688(s0)
     e30:	ac400004 	sw	zero,4(v0)
     e34:	ac540000 	sw	s4,0(v0)
     e38:	8e0202b0 	lw	v0,688(s0)
     e3c:	354ac03c 	ori	t2,t2,0xc03c
     e40:	3c0cf200 	lui	t4,0xf200
     e44:	244e0008 	addiu	t6,v0,8
     e48:	ae0e02b0 	sw	t6,688(s0)
     e4c:	ac400004 	sw	zero,4(v0)
     e50:	ac590000 	sw	t9,0(v0)
     e54:	8e0202b0 	lw	v0,688(s0)
     e58:	244d0008 	addiu	t5,v0,8
     e5c:	ae0d02b0 	sw	t5,688(s0)
     e60:	ac4a0004 	sw	t2,4(v0)
     e64:	ac4c0000 	sw	t4,0(v0)
     e68:	12710080 	beq	s3,s1,106c <Health_Draw+0xab0>
     e6c:	c7a60144 	lwc1	$f6,324(sp)
     e70:	3c0141d0 	lui	at,0x41d0
     e74:	44818000 	mtc1	at,$f16
     e78:	3c014100 	lui	at,0x4100
     e7c:	44819000 	mtc1	at,$f18
     e80:	3c010000 	lui	at,0x0
     e84:	c4240030 	lwc1	$f4,48(at)
     e88:	3c013f80 	lui	at,0x3f80
     e8c:	44813000 	mtc1	at,$f6
     e90:	3c010000 	lui	at,0x0
     e94:	c4280034 	lwc1	$f8,52(at)
     e98:	46168000 	add.s	$f0,$f16,$f22
     e9c:	3c014480 	lui	at,0x4480
     ea0:	46049082 	mul.s	$f2,$f18,$f4
     ea4:	46083283 	div.s	$f10,$f6,$f8
     ea8:	44818000 	mtc1	at,$f16
     eac:	3c014080 	lui	at,0x4080
     eb0:	44814000 	mtc1	at,$f8
     eb4:	8fb80138 	lw	t8,312(sp)
     eb8:	46020180 	add.s	$f6,$f0,$f2
     ebc:	46105482 	mul.s	$f18,$f10,$f16
     ec0:	4600910d 	trunc.w.s	$f4,$f18
     ec4:	46083282 	mul.s	$f10,$f6,$f8
     ec8:	46020481 	sub.s	$f18,$f0,$f2
     ecc:	44022000 	mfc1	v0,$f4
     ed0:	44812000 	mtc1	at,$f4
     ed4:	0311082a 	slt	at,t8,s1
     ed8:	3042ffff 	andi	v0,v0,0xffff
     edc:	46049182 	mul.s	$f6,$f18,$f4
     ee0:	4600540d 	trunc.w.s	$f16,$f10
     ee4:	00027c00 	sll	t7,v0,0x10
     ee8:	01e25825 	or	t3,t7,v0
     eec:	afab006c 	sw	t3,108(sp)
     ef0:	440e8000 	mfc1	t6,$f16
     ef4:	8faf0140 	lw	t7,320(sp)
     ef8:	4600320d 	trunc.w.s	$f8,$f6
     efc:	31d90fff 	andi	t9,t6,0xfff
     f00:	afb90068 	sw	t9,104(sp)
     f04:	440c4000 	mfc1	t4,$f8
     f08:	00000000 	nop
     f0c:	318a0fff 	andi	t2,t4,0xfff
     f10:	07000003 	bltz	t8,f20 <Health_Draw+0x964>
     f14:	afaa0064 	sw	t2,100(sp)
     f18:	10200014 	beqz	at,f6c <Health_Draw+0x9b0>
     f1c:	8fad0140 	lw	t5,320(sp)
     f20:	24010001 	li	at,1
     f24:	11e10023 	beq	t7,at,fb4 <Health_Draw+0x9f8>
     f28:	240b0001 	li	t3,1
     f2c:	afab0140 	sw	t3,320(sp)
     f30:	02002025 	move	a0,s0
     f34:	0c000000 	jal	0 <Health_InitData>
     f38:	e7a20074 	swc1	$f2,116(sp)
     f3c:	8e0202b0 	lw	v0,688(s0)
     f40:	8fa80198 	lw	t0,408(sp)
     f44:	c7a20074 	lwc1	$f2,116(sp)
     f48:	3c0efc30 	lui	t6,0xfc30
     f4c:	3c19552e 	lui	t9,0x552e
     f50:	24490008 	addiu	t1,v0,8
     f54:	ae0902b0 	sw	t1,688(s0)
     f58:	3739ff7f 	ori	t9,t9,0xff7f
     f5c:	35ce9661 	ori	t6,t6,0x9661
     f60:	ac4e0000 	sw	t6,0(v0)
     f64:	10000013 	b	fb4 <Health_Draw+0x9f8>
     f68:	ac590004 	sw	t9,4(v0)
     f6c:	24010003 	li	at,3
     f70:	11a10010 	beq	t5,at,fb4 <Health_Draw+0x9f8>
     f74:	240c0003 	li	t4,3
     f78:	afac0140 	sw	t4,320(sp)
     f7c:	02002025 	move	a0,s0
     f80:	0c000000 	jal	0 <Health_InitData>
     f84:	e7a20074 	swc1	$f2,116(sp)
     f88:	8e0202b0 	lw	v0,688(s0)
     f8c:	8fa80198 	lw	t0,408(sp)
     f90:	c7a20074 	lwc1	$f2,116(sp)
     f94:	244a0008 	addiu	t2,v0,8
     f98:	ae0a02b0 	sw	t2,688(s0)
     f9c:	3c18fc50 	lui	t8,0xfc50
     fa0:	3c0f332d 	lui	t7,0x332d
     fa4:	35effeff 	ori	t7,t7,0xfeff
     fa8:	371896a1 	ori	t8,t8,0x96a1
     fac:	ac580000 	sw	t8,0(v0)
     fb0:	ac4f0004 	sw	t7,4(v0)
     fb4:	3c0141f0 	lui	at,0x41f0
     fb8:	44815000 	mtc1	at,$f10
     fbc:	3c014080 	lui	at,0x4080
     fc0:	44819000 	mtc1	at,$f18
     fc4:	46145000 	add.s	$f0,$f10,$f20
     fc8:	3c01e400 	lui	at,0xe400
     fcc:	8e0202b0 	lw	v0,688(s0)
     fd0:	3c0ff100 	lui	t7,0xf100
     fd4:	46020400 	add.s	$f16,$f0,$f2
     fd8:	244b0008 	addiu	t3,v0,8
     fdc:	ae0b02b0 	sw	t3,688(s0)
     fe0:	46020201 	sub.s	$f8,$f0,$f2
     fe4:	46128102 	mul.s	$f4,$f16,$f18
     fe8:	8faa0068 	lw	t2,104(sp)
     fec:	4600218d 	trunc.w.s	$f6,$f4
     ff0:	440e3000 	mfc1	t6,$f6
     ff4:	00000000 	nop
     ff8:	31d90fff 	andi	t9,t6,0xfff
     ffc:	00196b00 	sll	t5,t9,0xc
    1000:	01a16025 	or	t4,t5,at
    1004:	3c014080 	lui	at,0x4080
    1008:	44815000 	mtc1	at,$f10
    100c:	018ac025 	or	t8,t4,t2
    1010:	ac580000 	sw	t8,0(v0)
    1014:	460a4402 	mul.s	$f16,$f8,$f10
    1018:	8fb90064 	lw	t9,100(sp)
    101c:	3c0ae100 	lui	t2,0xe100
    1020:	4600848d 	trunc.w.s	$f18,$f16
    1024:	440b9000 	mfc1	t3,$f18
    1028:	00000000 	nop
    102c:	31690fff 	andi	t1,t3,0xfff
    1030:	00097300 	sll	t6,t1,0xc
    1034:	01d96825 	or	t5,t6,t9
    1038:	ac4d0004 	sw	t5,4(v0)
    103c:	8e0202b0 	lw	v0,688(s0)
    1040:	244c0008 	addiu	t4,v0,8
    1044:	ae0c02b0 	sw	t4,688(s0)
    1048:	ac400004 	sw	zero,4(v0)
    104c:	ac4a0000 	sw	t2,0(v0)
    1050:	8e0202b0 	lw	v0,688(s0)
    1054:	24580008 	addiu	t8,v0,8
    1058:	ae1802b0 	sw	t8,688(s0)
    105c:	ac4f0000 	sw	t7,0(v0)
    1060:	8fab006c 	lw	t3,108(sp)
    1064:	1000005f 	b	11e4 <Health_Draw+0xc28>
    1068:	ac4b0004 	sw	t3,4(v0)
    106c:	c4240038 	lwc1	$f4,56(at)
    1070:	3c013f80 	lui	at,0x3f80
    1074:	44815000 	mtc1	at,$f10
    1078:	3c0142bd 	lui	at,0x42bd
    107c:	46062202 	mul.s	$f8,$f4,$f6
    1080:	44818000 	mtc1	at,$f16
    1084:	8fa90138 	lw	t1,312(sp)
    1088:	8fae0140 	lw	t6,320(sp)
    108c:	46168481 	sub.s	$f18,$f16,$f22
    1090:	0131082a 	slt	at,t1,s1
    1094:	46085001 	sub.s	$f0,$f10,$f8
    1098:	05200003 	bltz	t1,10a8 <Health_Draw+0xaec>
    109c:	e7b20074 	swc1	$f18,116(sp)
    10a0:	10200013 	beqz	at,10f0 <Health_Draw+0xb34>
    10a4:	8fb80140 	lw	t8,320(sp)
    10a8:	24010002 	li	at,2
    10ac:	11c10021 	beq	t6,at,1134 <Health_Draw+0xb78>
    10b0:	24190002 	li	t9,2
    10b4:	afb90140 	sw	t9,320(sp)
    10b8:	02002025 	move	a0,s0
    10bc:	0c000000 	jal	0 <Health_InitData>
    10c0:	e7a00078 	swc1	$f0,120(sp)
    10c4:	8e0202b0 	lw	v0,688(s0)
    10c8:	c7a00078 	lwc1	$f0,120(sp)
    10cc:	3c0cfc30 	lui	t4,0xfc30
    10d0:	3c0a552e 	lui	t2,0x552e
    10d4:	244d0008 	addiu	t5,v0,8
    10d8:	ae0d02b0 	sw	t5,688(s0)
    10dc:	354aff7f 	ori	t2,t2,0xff7f
    10e0:	358c9661 	ori	t4,t4,0x9661
    10e4:	ac4c0000 	sw	t4,0(v0)
    10e8:	10000012 	b	1134 <Health_Draw+0xb78>
    10ec:	ac4a0004 	sw	t2,4(v0)
    10f0:	24010004 	li	at,4
    10f4:	1301000f 	beq	t8,at,1134 <Health_Draw+0xb78>
    10f8:	240f0004 	li	t7,4
    10fc:	afaf0140 	sw	t7,320(sp)
    1100:	02002025 	move	a0,s0
    1104:	0c000000 	jal	0 <Health_InitData>
    1108:	e7a00078 	swc1	$f0,120(sp)
    110c:	8e0202b0 	lw	v0,688(s0)
    1110:	c7a00078 	lwc1	$f0,120(sp)
    1114:	3c09fc50 	lui	t1,0xfc50
    1118:	244b0008 	addiu	t3,v0,8
    111c:	ae0b02b0 	sw	t3,688(s0)
    1120:	3c0e332d 	lui	t6,0x332d
    1124:	35cefeff 	ori	t6,t6,0xfeff
    1128:	352996a1 	ori	t1,t1,0x96a1
    112c:	ac490000 	sw	t1,0(v0)
    1130:	ac4e0004 	sw	t6,4(v0)
    1134:	02002025 	move	a0,s0
    1138:	24050040 	li	a1,64
    113c:	0c000000 	jal	0 <Health_InitData>
    1140:	e7a00078 	swc1	$f0,120(sp)
    1144:	3c01c302 	lui	at,0xc302
    1148:	c7a00078 	lwc1	$f0,120(sp)
    114c:	44812000 	mtc1	at,$f4
    1150:	c7aa0074 	lwc1	$f10,116(sp)
    1154:	44804000 	mtc1	zero,$f8
    1158:	46142180 	add.s	$f6,$f4,$f20
    115c:	44050000 	mfc1	a1,$f0
    1160:	44060000 	mfc1	a2,$f0
    1164:	44070000 	mfc1	a3,$f0
    1168:	afa20088 	sw	v0,136(sp)
    116c:	e7a60010 	swc1	$f6,16(sp)
    1170:	00402025 	move	a0,v0
    1174:	e7aa0014 	swc1	$f10,20(sp)
    1178:	0c000000 	jal	0 <Health_InitData>
    117c:	e7a80018 	swc1	$f8,24(sp)
    1180:	8e0202b0 	lw	v0,688(s0)
    1184:	8fa80198 	lw	t0,408(sp)
    1188:	3c0dda38 	lui	t5,0xda38
    118c:	24590008 	addiu	t9,v0,8
    1190:	ae1902b0 	sw	t9,688(s0)
    1194:	35ad0003 	ori	t5,t5,0x3
    1198:	ac4d0000 	sw	t5,0(v0)
    119c:	8fac0088 	lw	t4,136(sp)
    11a0:	3c180100 	lui	t8,0x100
    11a4:	37184008 	ori	t8,t8,0x4008
    11a8:	ac4c0004 	sw	t4,4(v0)
    11ac:	8e0202b0 	lw	v0,688(s0)
    11b0:	3c090700 	lui	t1,0x700
    11b4:	35290406 	ori	t1,t1,0x406
    11b8:	244a0008 	addiu	t2,v0,8
    11bc:	ae0a02b0 	sw	t2,688(s0)
    11c0:	ac580000 	sw	t8,0(v0)
    11c4:	8faf0154 	lw	t7,340(sp)
    11c8:	240e0602 	li	t6,1538
    11cc:	ac4f0004 	sw	t7,4(v0)
    11d0:	8e0202b0 	lw	v0,688(s0)
    11d4:	244b0008 	addiu	t3,v0,8
    11d8:	ae0b02b0 	sw	t3,688(s0)
    11dc:	ac4e0004 	sw	t6,4(v0)
    11e0:	ac490000 	sw	t1,0(v0)
    11e4:	3c014120 	lui	at,0x4120
    11e8:	44818000 	mtc1	at,$f16
    11ec:	24010009 	li	at,9
    11f0:	16210005 	bne	s1,at,1208 <Health_Draw+0xc4c>
    11f4:	4610a500 	add.s	$f20,$f20,$f16
    11f8:	3c014120 	lui	at,0x4120
    11fc:	44819000 	mtc1	at,$f18
    1200:	4480a000 	mtc1	zero,$f20
    1204:	4612b580 	add.s	$f22,$f22,$f18
    1208:	87b9014e 	lh	t9,334(sp)
    120c:	26310001 	addiu	s1,s1,1
    1210:	5639fd3e 	bnel	s1,t9,70c <Health_Draw+0x150>
    1214:	8faf0138 	lw	t7,312(sp)
    1218:	3c060000 	lui	a2,0x0
    121c:	24c60014 	addiu	a2,a2,20
    1220:	27a40124 	addiu	a0,sp,292
    1224:	02002825 	move	a1,s0
    1228:	0c000000 	jal	0 <Health_InitData>
    122c:	2407025e 	li	a3,606
    1230:	8fbf005c 	lw	ra,92(sp)
    1234:	d7b40028 	ldc1	$f20,40(sp)
    1238:	d7b60030 	ldc1	$f22,48(sp)
    123c:	8fb00038 	lw	s0,56(sp)
    1240:	8fb1003c 	lw	s1,60(sp)
    1244:	8fb20040 	lw	s2,64(sp)
    1248:	8fb30044 	lw	s3,68(sp)
    124c:	8fb40048 	lw	s4,72(sp)
    1250:	8fb5004c 	lw	s5,76(sp)
    1254:	8fb60050 	lw	s6,80(sp)
    1258:	8fb70054 	lw	s7,84(sp)
    125c:	8fbe0058 	lw	s8,88(sp)
    1260:	03e00008 	jr	ra
    1264:	27bd0198 	addiu	sp,sp,408

00001268 <Health_HandleCriticalAlarm>:
    1268:	27bdffd8 	addiu	sp,sp,-40
    126c:	3c010001 	lui	at,0x1
    1270:	afbf0014 	sw	ra,20(sp)
    1274:	00811821 	addu	v1,a0,at
    1278:	846e071c 	lh	t6,1820(v1)
    127c:	3c010001 	lui	at,0x1
    1280:	342104f0 	ori	at,at,0x4f0
    1284:	11c00024 	beqz	t6,1318 <Health_HandleCriticalAlarm+0xb0>
    1288:	00811021 	addu	v0,a0,at
    128c:	3c010001 	lui	at,0x1
    1290:	342104f0 	ori	at,at,0x4f0
    1294:	00811021 	addu	v0,a0,at
    1298:	844f022a 	lh	t7,554(v0)
    129c:	25f8ffff 	addiu	t8,t7,-1
    12a0:	a458022a 	sh	t8,554(v0)
    12a4:	8459022a 	lh	t9,554(v0)
    12a8:	5f200027 	bgtzl	t9,1348 <Health_HandleCriticalAlarm+0xe0>
    12ac:	8fbf0014 	lw	ra,20(sp)
    12b0:	a440022a 	sh	zero,554(v0)
    12b4:	a440022c 	sh	zero,556(v0)
    12b8:	afa40028 	sw	a0,40(sp)
    12bc:	0c000000 	jal	0 <Health_InitData>
    12c0:	afa3001c 	sw	v1,28(sp)
    12c4:	8fa3001c 	lw	v1,28(sp)
    12c8:	1440001e 	bnez	v0,1344 <Health_HandleCriticalAlarm+0xdc>
    12cc:	8fa40028 	lw	a0,40(sp)
    12d0:	94680934 	lhu	t0,2356(v1)
    12d4:	5500001c 	bnezl	t0,1348 <Health_HandleCriticalAlarm+0xe0>
    12d8:	8fbf0014 	lw	ra,20(sp)
    12dc:	94690936 	lhu	t1,2358(v1)
    12e0:	55200019 	bnezl	t1,1348 <Health_HandleCriticalAlarm+0xe0>
    12e4:	8fbf0014 	lw	ra,20(sp)
    12e8:	0c000000 	jal	0 <Health_InitData>
    12ec:	afa40028 	sw	a0,40(sp)
    12f0:	10400014 	beqz	v0,1344 <Health_HandleCriticalAlarm+0xdc>
    12f4:	8fa40028 	lw	a0,40(sp)
    12f8:	0c000000 	jal	0 <Health_InitData>
    12fc:	00000000 	nop
    1300:	54400011 	bnezl	v0,1348 <Health_HandleCriticalAlarm+0xe0>
    1304:	8fbf0014 	lw	ra,20(sp)
    1308:	0c000000 	jal	0 <Health_InitData>
    130c:	2404481b 	li	a0,18459
    1310:	1000000d 	b	1348 <Health_HandleCriticalAlarm+0xe0>
    1314:	8fbf0014 	lw	ra,20(sp)
    1318:	844a022a 	lh	t2,554(v0)
    131c:	240d000a 	li	t5,10
    1320:	240e0001 	li	t6,1
    1324:	254b0001 	addiu	t3,t2,1
    1328:	a44b022a 	sh	t3,554(v0)
    132c:	844c022a 	lh	t4,554(v0)
    1330:	2981000a 	slti	at,t4,10
    1334:	54200004 	bnezl	at,1348 <Health_HandleCriticalAlarm+0xe0>
    1338:	8fbf0014 	lw	ra,20(sp)
    133c:	a44d022a 	sh	t5,554(v0)
    1340:	a44e022c 	sh	t6,556(v0)
    1344:	8fbf0014 	lw	ra,20(sp)
    1348:	27bd0028 	addiu	sp,sp,40
    134c:	03e00008 	jr	ra
    1350:	00000000 	nop

00001354 <Health_IsCritical>:
    1354:	3c040000 	lui	a0,0x0
    1358:	24840000 	addiu	a0,a0,0
    135c:	8482002e 	lh	v0,46(a0)
    1360:	28410051 	slti	at,v0,81
    1364:	50200004 	beqzl	at,1378 <Health_IsCritical+0x24>
    1368:	284100a1 	slti	at,v0,161
    136c:	1000000b 	b	139c <Health_IsCritical+0x48>
    1370:	24020010 	li	v0,16
    1374:	284100a1 	slti	at,v0,161
    1378:	50200004 	beqzl	at,138c <Health_IsCritical+0x38>
    137c:	284100f1 	slti	at,v0,241
    1380:	10000006 	b	139c <Health_IsCritical+0x48>
    1384:	24020018 	li	v0,24
    1388:	284100f1 	slti	at,v0,241
    138c:	10200003 	beqz	at,139c <Health_IsCritical+0x48>
    1390:	2402002c 	li	v0,44
    1394:	10000001 	b	139c <Health_IsCritical+0x48>
    1398:	24020020 	li	v0,32
    139c:	84830030 	lh	v1,48(a0)
    13a0:	0043082a 	slt	at,v0,v1
    13a4:	14200005 	bnez	at,13bc <Health_IsCritical+0x68>
    13a8:	00001025 	move	v0,zero
    13ac:	18600003 	blez	v1,13bc <Health_IsCritical+0x68>
    13b0:	00000000 	nop
    13b4:	03e00008 	jr	ra
    13b8:	24020001 	li	v0,1
    13bc:	03e00008 	jr	ra
    13c0:	00000000 	nop
	...
