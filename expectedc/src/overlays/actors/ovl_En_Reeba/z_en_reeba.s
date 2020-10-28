
build/src/overlays/actors/ovl_En_Reeba/z_en_reeba.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnReeba_Init>:
       0:	27bdffb8 	addiu	sp,sp,-72
       4:	afb00024 	sw	s0,36(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb10028 	sw	s1,40(sp)
      10:	8c990024 	lw	t9,36(a0)
      14:	3c01c060 	lui	at,0xc060
      18:	44812000 	mtc1	at,$f4
      1c:	ac990038 	sw	t9,56(a0)
      20:	8c99002c 	lw	t9,44(a0)
      24:	8c980028 	lw	t8,40(a0)
      28:	00808025 	move	s0,a0
      2c:	240e0047 	li	t6,71
      30:	240f0003 	li	t7,3
      34:	a08e0117 	sb	t6,279(a0)
      38:	a08f001f 	sb	t7,31(a0)
      3c:	e484006c 	swc1	$f4,108(a0)
      40:	ac990040 	sw	t9,64(a0)
      44:	ac98003c 	sw	t8,60(a0)
      48:	00a08825 	move	s1,a1
      4c:	00a02025 	move	a0,a1
      50:	26080190 	addiu	t0,s0,400
      54:	260901fc 	addiu	t1,s0,508
      58:	3c060000 	lui	a2,0x0
      5c:	3c070000 	lui	a3,0x0
      60:	240a0012 	li	t2,18
      64:	afaa0018 	sw	t2,24(sp)
      68:	24e70000 	addiu	a3,a3,0
      6c:	24c60000 	addiu	a2,a2,0
      70:	afa90014 	sw	t1,20(sp)
      74:	afa80010 	sw	t0,16(sp)
      78:	0c000000 	jal	0 <EnReeba_Init>
      7c:	2605014c 	addiu	a1,s0,332
      80:	240b00fe 	li	t3,254
      84:	240c0004 	li	t4,4
      88:	a20b00ae 	sb	t3,174(s0)
      8c:	a20c00af 	sb	t4,175(s0)
      90:	26050290 	addiu	a1,s0,656
      94:	afa50034 	sw	a1,52(sp)
      98:	0c000000 	jal	0 <EnReeba_Init>
      9c:	02202025 	move	a0,s1
      a0:	3c070000 	lui	a3,0x0
      a4:	8fa50034 	lw	a1,52(sp)
      a8:	24e70040 	addiu	a3,a3,64
      ac:	02202025 	move	a0,s1
      b0:	0c000000 	jal	0 <EnReeba_Init>
      b4:	02003025 	move	a2,s0
      b8:	860d001c 	lh	t5,28(s0)
      bc:	3c010000 	lui	at,0x0
      c0:	a60d027a 	sh	t5,634(s0)
      c4:	860e027a 	lh	t6,634(s0)
      c8:	c426008c 	lwc1	$f6,140(at)
      cc:	3c013fc0 	lui	at,0x3fc0
      d0:	11c0001c 	beqz	t6,144 <EnReeba_Init+0x144>
      d4:	e606028c 	swc1	$f6,652(s0)
      d8:	c608028c 	lwc1	$f8,652(s0)
      dc:	44815000 	mtc1	at,$f10
      e0:	240f0023 	li	t7,35
      e4:	2418002d 	li	t8,45
      e8:	460a4402 	mul.s	$f16,$f8,$f10
      ec:	3c040000 	lui	a0,0x0
      f0:	a60f02d0 	sh	t7,720(s0)
      f4:	a61802d2 	sh	t8,722(s0)
      f8:	24840000 	addiu	a0,a0,0
      fc:	e610028c 	swc1	$f16,652(s0)
     100:	c612028c 	lwc1	$f18,652(s0)
     104:	46009121 	cvt.d.s	$f4,$f18
     108:	44072000 	mfc1	a3,$f4
     10c:	44062800 	mfc1	a2,$f5
     110:	0c000000 	jal	0 <EnReeba_Init>
     114:	00000000 	nop
     118:	24190014 	li	t9,20
     11c:	24080004 	li	t0,4
     120:	24090010 	li	t1,16
     124:	a21900af 	sb	t9,175(s0)
     128:	a20802ac 	sb	t0,684(s0)
     12c:	a20902ad 	sb	t1,685(s0)
     130:	02202025 	move	a0,s1
     134:	26251c24 	addiu	a1,s1,7204
     138:	02003025 	move	a2,s0
     13c:	0c000000 	jal	0 <EnReeba_Init>
     140:	24070005 	li	a3,5
     144:	3c010000 	lui	at,0x0
     148:	c4280090 	lwc1	$f8,144(at)
     14c:	c606028c 	lwc1	$f6,652(s0)
     150:	3c060000 	lui	a2,0x0
     154:	24c60000 	addiu	a2,a2,0
     158:	46083002 	mul.s	$f0,$f6,$f8
     15c:	260400b4 	addiu	a0,s0,180
     160:	24070000 	li	a3,0
     164:	44050000 	mfc1	a1,$f0
     168:	e6000284 	swc1	$f0,644(s0)
     16c:	0c000000 	jal	0 <EnReeba_Init>
     170:	e60000bc 	swc1	$f0,188(s0)
     174:	3c014270 	lui	at,0x4270
     178:	44810000 	mtc1	at,$f0
     17c:	3c0a0000 	lui	t2,0x0
     180:	254a0000 	addiu	t2,t2,0
     184:	ae0a0098 	sw	t2,152(s0)
     188:	240b001d 	li	t3,29
     18c:	44070000 	mfc1	a3,$f0
     190:	afab0014 	sw	t3,20(sp)
     194:	02202025 	move	a0,s1
     198:	02002825 	move	a1,s0
     19c:	3c06420c 	lui	a2,0x420c
     1a0:	0c000000 	jal	0 <EnReeba_Init>
     1a4:	e7a00010 	swc1	$f0,16(sp)
     1a8:	262407c0 	addiu	a0,s1,1984
     1ac:	8e050078 	lw	a1,120(s0)
     1b0:	0c000000 	jal	0 <EnReeba_Init>
     1b4:	9206007d 	lbu	a2,125(s0)
     1b8:	24010004 	li	at,4
     1bc:	10410008 	beq	v0,at,1e0 <EnReeba_Init+0x1e0>
     1c0:	3c0c0000 	lui	t4,0x0
     1c4:	24010007 	li	at,7
     1c8:	10410005 	beq	v0,at,1e0 <EnReeba_Init+0x1e0>
     1cc:	00000000 	nop
     1d0:	0c000000 	jal	0 <EnReeba_Init>
     1d4:	02002025 	move	a0,s0
     1d8:	10000004 	b	1ec <EnReeba_Init+0x1ec>
     1dc:	8fbf002c 	lw	ra,44(sp)
     1e0:	258c0000 	addiu	t4,t4,0
     1e4:	ae0c026c 	sw	t4,620(s0)
     1e8:	8fbf002c 	lw	ra,44(sp)
     1ec:	8fb00024 	lw	s0,36(sp)
     1f0:	8fb10028 	lw	s1,40(sp)
     1f4:	03e00008 	jr	ra
     1f8:	27bd0048 	addiu	sp,sp,72

000001fc <EnReeba_Destroy>:
     1fc:	27bdffe8 	addiu	sp,sp,-24
     200:	00803025 	move	a2,a0
     204:	afbf0014 	sw	ra,20(sp)
     208:	00a02025 	move	a0,a1
     20c:	24c50290 	addiu	a1,a2,656
     210:	0c000000 	jal	0 <EnReeba_Init>
     214:	afa60018 	sw	a2,24(sp)
     218:	8fa60018 	lw	a2,24(sp)
     21c:	8cc30118 	lw	v1,280(a2)
     220:	50600010 	beqzl	v1,264 <EnReeba_Destroy+0x68>
     224:	8fbf0014 	lw	ra,20(sp)
     228:	8c6e0130 	lw	t6,304(v1)
     22c:	00601025 	move	v0,v1
     230:	51c0000c 	beqzl	t6,264 <EnReeba_Destroy+0x68>
     234:	8fbf0014 	lw	ra,20(sp)
     238:	84630152 	lh	v1,338(v1)
     23c:	24190258 	li	t9,600
     240:	18600002 	blez	v1,24c <EnReeba_Destroy+0x50>
     244:	246fffff 	addiu	t7,v1,-1
     248:	a44f0152 	sh	t7,338(v0)
     24c:	84d8027a 	lh	t8,634(a2)
     250:	53000004 	beqzl	t8,264 <EnReeba_Destroy+0x68>
     254:	8fbf0014 	lw	ra,20(sp)
     258:	ac40016c 	sw	zero,364(v0)
     25c:	a4590164 	sh	t9,356(v0)
     260:	8fbf0014 	lw	ra,20(sp)
     264:	27bd0018 	addiu	sp,sp,24
     268:	03e00008 	jr	ra
     26c:	00000000 	nop

00000270 <func_80AE4F40>:
     270:	27bdffc8 	addiu	sp,sp,-56
     274:	afb00028 	sw	s0,40(sp)
     278:	00808025 	move	s0,a0
     27c:	afbf002c 	sw	ra,44(sp)
     280:	3c040000 	lui	a0,0x0
     284:	afa5003c 	sw	a1,60(sp)
     288:	0c000000 	jal	0 <EnReeba_Init>
     28c:	24840000 	addiu	a0,a0,0
     290:	44822000 	mtc1	v0,$f4
     294:	8fae003c 	lw	t6,60(sp)
     298:	3c01c120 	lui	at,0xc120
     29c:	468021a0 	cvt.s.w	$f6,$f4
     2a0:	8dcf1c44 	lw	t7,7236(t6)
     2a4:	44814000 	mtc1	at,$f8
     2a8:	3c050000 	lui	a1,0x0
     2ac:	24a50000 	addiu	a1,a1,0
     2b0:	afa00014 	sw	zero,20(sp)
     2b4:	e7a60010 	swc1	$f6,16(sp)
     2b8:	2604014c 	addiu	a0,s0,332
     2bc:	3c064000 	lui	a2,0x4000
     2c0:	24070000 	li	a3,0
     2c4:	afaf0030 	sw	t7,48(sp)
     2c8:	0c000000 	jal	0 <EnReeba_Init>
     2cc:	e7a80018 	swc1	$f8,24(sp)
     2d0:	8fb80030 	lw	t8,48(sp)
     2d4:	24030014 	li	v1,20
     2d8:	240d0002 	li	t5,2
     2dc:	c7000838 	lwc1	$f0,2104(t8)
     2e0:	240539ee 	li	a1,14830
     2e4:	02002025 	move	a0,s0
     2e8:	46000005 	abs.s	$f0,$f0
     2ec:	4600028d 	trunc.w.s	$f10,$f0
     2f0:	440a5000 	mfc1	t2,$f10
     2f4:	00000000 	nop
     2f8:	000a5840 	sll	t3,t2,0x1
     2fc:	006b6023 	subu	t4,v1,t3
     300:	a60c0278 	sh	t4,632(s0)
     304:	86020278 	lh	v0,632(s0)
     308:	04430004 	bgezl	v0,31c <func_80AE4F40+0xac>
     30c:	28410015 	slti	at,v0,21
     310:	a60d0278 	sh	t5,632(s0)
     314:	86020278 	lh	v0,632(s0)
     318:	28410015 	slti	at,v0,21
     31c:	54200003 	bnezl	at,32c <func_80AE4F40+0xbc>
     320:	8e0e0004 	lw	t6,4(s0)
     324:	a6030278 	sh	v1,632(s0)
     328:	8e0e0004 	lw	t6,4(s0)
     32c:	8618027a 	lh	t8,634(s0)
     330:	3c01f7ff 	lui	at,0xf7ff
     334:	c6100080 	lwc1	$f16,128(s0)
     338:	3421ffff 	ori	at,at,0xffff
     33c:	01c17824 	and	t7,t6,at
     340:	ae0f0004 	sw	t7,4(s0)
     344:	13000005 	beqz	t8,35c <func_80AE4F40+0xec>
     348:	e6100028 	swc1	$f16,40(s0)
     34c:	0c000000 	jal	0 <EnReeba_Init>
     350:	02002025 	move	a0,s0
     354:	10000003 	b	364 <func_80AE4F40+0xf4>
     358:	00000000 	nop
     35c:	0c000000 	jal	0 <EnReeba_Init>
     360:	24053986 	li	a1,14726
     364:	3c190000 	lui	t9,0x0
     368:	27390000 	addiu	t9,t9,0
     36c:	ae19026c 	sw	t9,620(s0)
     370:	8fbf002c 	lw	ra,44(sp)
     374:	8fb00028 	lw	s0,40(sp)
     378:	27bd0038 	addiu	sp,sp,56
     37c:	03e00008 	jr	ra
     380:	00000000 	nop

00000384 <func_80AE5054>:
     384:	27bdffc0 	addiu	sp,sp,-64
     388:	afbf0034 	sw	ra,52(sp)
     38c:	afb00030 	sw	s0,48(sp)
     390:	afa50044 	sw	a1,68(sp)
     394:	8caf1c44 	lw	t7,7236(a1)
     398:	00808025 	move	s0,a0
     39c:	2484014c 	addiu	a0,a0,332
     3a0:	0c000000 	jal	0 <EnReeba_Init>
     3a4:	afaf003c 	sw	t7,60(sp)
     3a8:	8fa40044 	lw	a0,68(sp)
     3ac:	3c180001 	lui	t8,0x1
     3b0:	02002825 	move	a1,s0
     3b4:	0304c021 	addu	t8,t8,a0
     3b8:	8f181de4 	lw	t8,7652(t8)
     3bc:	26060024 	addiu	a2,s0,36
     3c0:	24080001 	li	t0,1
     3c4:	33190003 	andi	t9,t8,0x3
     3c8:	1720000c 	bnez	t9,3fc <func_80AE5054+0x78>
     3cc:	3c014100 	lui	at,0x4100
     3d0:	8e0700c4 	lw	a3,196(s0)
     3d4:	44812000 	mtc1	at,$f4
     3d8:	240901f4 	li	t1,500
     3dc:	240a000a 	li	t2,10
     3e0:	240b0001 	li	t3,1
     3e4:	afab0020 	sw	t3,32(sp)
     3e8:	afaa001c 	sw	t2,28(sp)
     3ec:	afa90018 	sw	t1,24(sp)
     3f0:	afa80010 	sw	t0,16(sp)
     3f4:	0c000000 	jal	0 <EnReeba_Init>
     3f8:	e7a40014 	swc1	$f4,20(sp)
     3fc:	860c0278 	lh	t4,632(s0)
     400:	3c013f80 	lui	at,0x3f80
     404:	55800062 	bnezl	t4,590 <func_80AE5054+0x20c>
     408:	8fbf0034 	lw	ra,52(sp)
     40c:	44810000 	mtc1	at,$f0
     410:	260400c4 	addiu	a0,s0,196
     414:	3c054140 	lui	a1,0x4140
     418:	44060000 	mfc1	a2,$f0
     41c:	44070000 	mfc1	a3,$f0
     420:	0c000000 	jal	0 <EnReeba_Init>
     424:	00000000 	nop
     428:	44801000 	mtc1	zero,$f2
     42c:	c60600bc 	lwc1	$f6,188(s0)
     430:	8fa3003c 	lw	v1,60(sp)
     434:	4602303c 	c.lt.s	$f6,$f2
     438:	00000000 	nop
     43c:	4502000d 	bc1fl	474 <func_80AE5054+0xf0>
     440:	960d0280 	lhu	t5,640(s0)
     444:	260400bc 	addiu	a0,s0,188
     448:	3c053f80 	lui	a1,0x3f80
     44c:	0c000000 	jal	0 <EnReeba_Init>
     450:	8e060288 	lw	a2,648(s0)
     454:	26040288 	addiu	a0,s0,648
     458:	3c054396 	lui	a1,0x4396
     45c:	3c063f80 	lui	a2,0x3f80
     460:	0c000000 	jal	0 <EnReeba_Init>
     464:	3c0740a0 	lui	a3,0x40a0
     468:	10000049 	b	590 <func_80AE5054+0x20c>
     46c:	8fbf0034 	lw	ra,52(sp)
     470:	960d0280 	lhu	t5,640(s0)
     474:	e6020288 	swc1	$f2,648(s0)
     478:	e60200bc 	swc1	$f2,188(s0)
     47c:	2da10005 	sltiu	at,t5,5
     480:	10200030 	beqz	at,544 <func_80AE5054+0x1c0>
     484:	c4600838 	lwc1	$f0,2104(v1)
     488:	000d6880 	sll	t5,t5,0x2
     48c:	3c010000 	lui	at,0x0
     490:	002d0821 	addu	at,at,t5
     494:	8c2d0094 	lw	t5,148(at)
     498:	01a00008 	jr	t5
     49c:	00000000 	nop
     4a0:	860e008a 	lh	t6,138(s0)
     4a4:	10000027 	b	544 <func_80AE5054+0x1c0>
     4a8:	a60e0032 	sh	t6,50(s0)
     4ac:	860f008a 	lh	t7,138(s0)
     4b0:	3c014448 	lui	at,0x4448
     4b4:	44818000 	mtc1	at,$f16
     4b8:	448f4000 	mtc1	t7,$f8
     4bc:	46008482 	mul.s	$f18,$f16,$f0
     4c0:	468042a0 	cvt.s.w	$f10,$f8
     4c4:	46125100 	add.s	$f4,$f10,$f18
     4c8:	4600218d 	trunc.w.s	$f6,$f4
     4cc:	44193000 	mfc1	t9,$f6
     4d0:	1000001c 	b	544 <func_80AE5054+0x1c0>
     4d4:	a6190032 	sh	t9,50(s0)
     4d8:	8602008a 	lh	v0,138(s0)
     4dc:	846800b6 	lh	t0,182(v1)
     4e0:	3c010000 	lui	at,0x0
     4e4:	c42a00a8 	lwc1	$f10,168(at)
     4e8:	01024823 	subu	t1,t0,v0
     4ec:	44894000 	mtc1	t1,$f8
     4f0:	460a0482 	mul.s	$f18,$f0,$f10
     4f4:	44823000 	mtc1	v0,$f6
     4f8:	46804420 	cvt.s.w	$f16,$f8
     4fc:	46803220 	cvt.s.w	$f8,$f6
     500:	46128102 	mul.s	$f4,$f16,$f18
     504:	46044280 	add.s	$f10,$f8,$f4
     508:	4600540d 	trunc.w.s	$f16,$f10
     50c:	440b8000 	mfc1	t3,$f16
     510:	1000000c 	b	544 <func_80AE5054+0x1c0>
     514:	a60b0032 	sh	t3,50(s0)
     518:	860c008a 	lh	t4,138(s0)
     51c:	3c014448 	lui	at,0x4448
     520:	44814000 	mtc1	at,$f8
     524:	448c9000 	mtc1	t4,$f18
     528:	46004102 	mul.s	$f4,$f8,$f0
     52c:	468091a0 	cvt.s.w	$f6,$f18
     530:	46043281 	sub.s	$f10,$f6,$f4
     534:	4600540d 	trunc.w.s	$f16,$f10
     538:	440e8000 	mfc1	t6,$f16
     53c:	00000000 	nop
     540:	a60e0032 	sh	t6,50(s0)
     544:	860f027a 	lh	t7,634(s0)
     548:	3c180000 	lui	t8,0x0
     54c:	24190082 	li	t9,130
     550:	11e00004 	beqz	t7,564 <func_80AE5054+0x1e0>
     554:	3c014080 	lui	at,0x4080
     558:	27180000 	addiu	t8,t8,0
     55c:	1000000b 	b	58c <func_80AE5054+0x208>
     560:	ae18026c 	sw	t8,620(s0)
     564:	44816000 	mtc1	at,$f12
     568:	0c000000 	jal	0 <EnReeba_Init>
     56c:	a6190272 	sh	t9,626(s0)
     570:	3c0140c0 	lui	at,0x40c0
     574:	44819000 	mtc1	at,$f18
     578:	3c080000 	lui	t0,0x0
     57c:	25080000 	addiu	t0,t0,0
     580:	46120200 	add.s	$f8,$f0,$f18
     584:	ae08026c 	sw	t0,620(s0)
     588:	e6080068 	swc1	$f8,104(s0)
     58c:	8fbf0034 	lw	ra,52(sp)
     590:	8fb00030 	lw	s0,48(sp)
     594:	27bd0040 	addiu	sp,sp,64
     598:	03e00008 	jr	ra
     59c:	00000000 	nop

000005a0 <func_80AE5270>:
     5a0:	27bdffe0 	addiu	sp,sp,-32
     5a4:	afb00018 	sw	s0,24(sp)
     5a8:	00808025 	move	s0,a0
     5ac:	afbf001c 	sw	ra,28(sp)
     5b0:	afa50024 	sw	a1,36(sp)
     5b4:	0c000000 	jal	0 <EnReeba_Init>
     5b8:	2484014c 	addiu	a0,a0,332
     5bc:	3c014140 	lui	at,0x4140
     5c0:	44810000 	mtc1	at,$f0
     5c4:	c60400c4 	lwc1	$f4,196(s0)
     5c8:	260400c4 	addiu	a0,s0,196
     5cc:	3c064040 	lui	a2,0x4040
     5d0:	4600203c 	c.lt.s	$f4,$f0
     5d4:	00000000 	nop
     5d8:	45020005 	bc1fl	5f0 <func_80AE5270+0x50>
     5dc:	8fa40024 	lw	a0,36(sp)
     5e0:	44050000 	mfc1	a1,$f0
     5e4:	0c000000 	jal	0 <EnReeba_Init>
     5e8:	3c073f80 	lui	a3,0x3f80
     5ec:	8fa40024 	lw	a0,36(sp)
     5f0:	8e050078 	lw	a1,120(s0)
     5f4:	9206007d 	lbu	a2,125(s0)
     5f8:	0c000000 	jal	0 <EnReeba_Init>
     5fc:	248407c0 	addiu	a0,a0,1984
     600:	24010004 	li	at,4
     604:	10410008 	beq	v0,at,628 <func_80AE5270+0x88>
     608:	24010007 	li	at,7
     60c:	10410006 	beq	v0,at,628 <func_80AE5270+0x88>
     610:	3c0e0000 	lui	t6,0x0
     614:	44803000 	mtc1	zero,$f6
     618:	25ce0000 	addiu	t6,t6,0
     61c:	ae0e026c 	sw	t6,620(s0)
     620:	10000021 	b	6a8 <func_80AE5270+0x108>
     624:	e6060068 	swc1	$f6,104(s0)
     628:	860f0272 	lh	t7,626(s0)
     62c:	3c080000 	lui	t0,0x0
     630:	3c0141f0 	lui	at,0x41f0
     634:	11e00012 	beqz	t7,680 <func_80AE5270+0xe0>
     638:	25080000 	addiu	t0,t0,0
     63c:	c6000090 	lwc1	$f0,144(s0)
     640:	44814000 	mtc1	at,$f8
     644:	3c0143c8 	lui	at,0x43c8
     648:	4608003c 	c.lt.s	$f0,$f8
     64c:	00000000 	nop
     650:	4501000b 	bc1t	680 <func_80AE5270+0xe0>
     654:	00000000 	nop
     658:	44815000 	mtc1	at,$f10
     65c:	00000000 	nop
     660:	4600503c 	c.lt.s	$f10,$f0
     664:	00000000 	nop
     668:	45010005 	bc1t	680 <func_80AE5270+0xe0>
     66c:	00000000 	nop
     670:	96180088 	lhu	t8,136(s0)
     674:	33190008 	andi	t9,t8,0x8
     678:	53200004 	beqzl	t9,68c <func_80AE5270+0xec>
     67c:	86090274 	lh	t1,628(s0)
     680:	10000009 	b	6a8 <func_80AE5270+0x108>
     684:	ae08026c 	sw	t0,620(s0)
     688:	86090274 	lh	t1,628(s0)
     68c:	02002025 	move	a0,s0
     690:	55200006 	bnezl	t1,6ac <func_80AE5270+0x10c>
     694:	8fbf001c 	lw	ra,28(sp)
     698:	0c000000 	jal	0 <EnReeba_Init>
     69c:	2405398a 	li	a1,14730
     6a0:	240a000a 	li	t2,10
     6a4:	a60a0274 	sh	t2,628(s0)
     6a8:	8fbf001c 	lw	ra,28(sp)
     6ac:	8fb00018 	lw	s0,24(sp)
     6b0:	27bd0020 	addiu	sp,sp,32
     6b4:	03e00008 	jr	ra
     6b8:	00000000 	nop

000006bc <func_80AE538C>:
     6bc:	afa50004 	sw	a1,4(sp)
     6c0:	8c8e0004 	lw	t6,4(a0)
     6c4:	3c180000 	lui	t8,0x0
     6c8:	27180000 	addiu	t8,t8,0
     6cc:	35cf0005 	ori	t7,t6,0x5
     6d0:	ac8f0004 	sw	t7,4(a0)
     6d4:	03e00008 	jr	ra
     6d8:	ac98026c 	sw	t8,620(a0)

000006dc <func_80AE53AC>:
     6dc:	27bdffe0 	addiu	sp,sp,-32
     6e0:	afb00018 	sw	s0,24(sp)
     6e4:	00808025 	move	s0,a0
     6e8:	afbf001c 	sw	ra,28(sp)
     6ec:	afa50024 	sw	a1,36(sp)
     6f0:	0c000000 	jal	0 <EnReeba_Init>
     6f4:	2484014c 	addiu	a0,a0,332
     6f8:	3c014140 	lui	at,0x4140
     6fc:	44810000 	mtc1	at,$f0
     700:	c60400c4 	lwc1	$f4,196(s0)
     704:	260400c4 	addiu	a0,s0,196
     708:	3c064040 	lui	a2,0x4040
     70c:	4600203c 	c.lt.s	$f4,$f0
     710:	00000000 	nop
     714:	45020005 	bc1fl	72c <func_80AE53AC+0x50>
     718:	8fa40024 	lw	a0,36(sp)
     71c:	44050000 	mfc1	a1,$f0
     720:	0c000000 	jal	0 <EnReeba_Init>
     724:	3c073f80 	lui	a3,0x3f80
     728:	8fa40024 	lw	a0,36(sp)
     72c:	8e050078 	lw	a1,120(s0)
     730:	9206007d 	lbu	a2,125(s0)
     734:	0c000000 	jal	0 <EnReeba_Init>
     738:	248407c0 	addiu	a0,a0,1984
     73c:	24010004 	li	at,4
     740:	10410002 	beq	v0,at,74c <func_80AE53AC+0x70>
     744:	24010007 	li	at,7
     748:	1441000b 	bne	v0,at,778 <func_80AE53AC+0x9c>
     74c:	3c0143c8 	lui	at,0x43c8
     750:	44813000 	mtc1	at,$f6
     754:	c6000090 	lwc1	$f0,144(s0)
     758:	4600303c 	c.lt.s	$f6,$f0
     75c:	00000000 	nop
     760:	45010005 	bc1t	778 <func_80AE53AC+0x9c>
     764:	00000000 	nop
     768:	960e0088 	lhu	t6,136(s0)
     76c:	3c01428c 	lui	at,0x428c
     770:	31cf0008 	andi	t7,t6,0x8
     774:	11e00004 	beqz	t7,788 <func_80AE53AC+0xac>
     778:	3c180000 	lui	t8,0x0
     77c:	27180000 	addiu	t8,t8,0
     780:	1000006d 	b	938 <func_80AE53AC+0x25c>
     784:	ae18026c 	sw	t8,620(s0)
     788:	44814000 	mtc1	at,$f8
     78c:	00000000 	nop
     790:	4608003c 	c.lt.s	$f0,$f8
     794:	00000000 	nop
     798:	45000006 	bc1f	7b4 <func_80AE53AC+0xd8>
     79c:	00000000 	nop
     7a0:	86190270 	lh	t9,624(s0)
     7a4:	2408001e 	li	t0,30
     7a8:	17200002 	bnez	t9,7b4 <func_80AE53AC+0xd8>
     7ac:	00000000 	nop
     7b0:	a6080270 	sh	t0,624(s0)
     7b4:	0c000000 	jal	0 <EnReeba_Init>
     7b8:	00000000 	nop
     7bc:	3c0141a0 	lui	at,0x41a0
     7c0:	44818000 	mtc1	at,$f16
     7c4:	3c014248 	lui	at,0x4248
     7c8:	44812000 	mtc1	at,$f4
     7cc:	c60a0090 	lwc1	$f10,144(s0)
     7d0:	3c014316 	lui	at,0x4316
     7d4:	46040182 	mul.s	$f6,$f0,$f4
     7d8:	44814000 	mtc1	at,$f8
     7dc:	46105481 	sub.s	$f18,$f10,$f16
     7e0:	3c010000 	lui	at,0x0
     7e4:	c42400ac 	lwc1	$f4,172(at)
     7e8:	c6100068 	lwc1	$f16,104(s0)
     7ec:	3c014040 	lui	at,0x4040
     7f0:	46083280 	add.s	$f10,$f6,$f8
     7f4:	2405398a 	li	a1,14730
     7f8:	460a9083 	div.s	$f2,$f18,$f10
     7fc:	44819000 	mtc1	at,$f18
     800:	3c014040 	lui	at,0x4040
     804:	46041182 	mul.s	$f6,$f2,$f4
     808:	46068200 	add.s	$f8,$f16,$f6
     80c:	e6080068 	swc1	$f8,104(s0)
     810:	c60c0068 	lwc1	$f12,104(s0)
     814:	460c903e 	c.le.s	$f18,$f12
     818:	00000000 	nop
     81c:	45020006 	bc1fl	838 <func_80AE53AC+0x15c>
     820:	3c01c040 	lui	at,0xc040
     824:	44815000 	mtc1	at,$f10
     828:	00000000 	nop
     82c:	e60a0068 	swc1	$f10,104(s0)
     830:	c60c0068 	lwc1	$f12,104(s0)
     834:	3c01c040 	lui	at,0xc040
     838:	44810000 	mtc1	at,$f0
     83c:	00000000 	nop
     840:	4600603c 	c.lt.s	$f12,$f0
     844:	00000000 	nop
     848:	45020003 	bc1fl	858 <func_80AE53AC+0x17c>
     84c:	86090270 	lh	t1,624(s0)
     850:	e6000068 	swc1	$f0,104(s0)
     854:	86090270 	lh	t1,624(s0)
     858:	55200004 	bnezl	t1,86c <func_80AE53AC+0x190>
     85c:	8602008a 	lh	v0,138(s0)
     860:	10000005 	b	878 <func_80AE53AC+0x19c>
     864:	8602008a 	lh	v0,138(s0)
     868:	8602008a 	lh	v0,138(s0)
     86c:	00021023 	negu	v0,v0
     870:	00021400 	sll	v0,v0,0x10
     874:	00021403 	sra	v0,v0,0x10
     878:	86030032 	lh	v1,50(s0)
     87c:	00431023 	subu	v0,v0,v1
     880:	00021400 	sll	v0,v0,0x10
     884:	00021403 	sra	v0,v0,0x10
     888:	58400010 	blezl	v0,8cc <func_80AE53AC+0x1f0>
     88c:	44828000 	mtc1	v0,$f16
     890:	44822000 	mtc1	v0,$f4
     894:	3c0141f8 	lui	at,0x41f8
     898:	44813000 	mtc1	at,$f6
     89c:	46802420 	cvt.s.w	$f16,$f4
     8a0:	3c014120 	lui	at,0x4120
     8a4:	44819000 	mtc1	at,$f18
     8a8:	46068203 	div.s	$f8,$f16,$f6
     8ac:	46124280 	add.s	$f10,$f8,$f18
     8b0:	4600510d 	trunc.w.s	$f4,$f10
     8b4:	44042000 	mfc1	a0,$f4
     8b8:	00000000 	nop
     8bc:	00042400 	sll	a0,a0,0x10
     8c0:	1000000e 	b	8fc <func_80AE53AC+0x220>
     8c4:	00042403 	sra	a0,a0,0x10
     8c8:	44828000 	mtc1	v0,$f16
     8cc:	3c0141f8 	lui	at,0x41f8
     8d0:	44814000 	mtc1	at,$f8
     8d4:	468081a0 	cvt.s.w	$f6,$f16
     8d8:	3c014120 	lui	at,0x4120
     8dc:	44815000 	mtc1	at,$f10
     8e0:	46083483 	div.s	$f18,$f6,$f8
     8e4:	460a9101 	sub.s	$f4,$f18,$f10
     8e8:	4600240d 	trunc.w.s	$f16,$f4
     8ec:	44048000 	mfc1	a0,$f16
     8f0:	00000000 	nop
     8f4:	00042400 	sll	a0,a0,0x10
     8f8:	00042403 	sra	a0,a0,0x10
     8fc:	44843000 	mtc1	a0,$f6
     900:	44834000 	mtc1	v1,$f8
     904:	860e0274 	lh	t6,628(s0)
     908:	46803020 	cvt.s.w	$f0,$f6
     90c:	468044a0 	cvt.s.w	$f18,$f8
     910:	46000280 	add.s	$f10,$f0,$f0
     914:	460a9100 	add.s	$f4,$f18,$f10
     918:	4600240d 	trunc.w.s	$f16,$f4
     91c:	440d8000 	mfc1	t5,$f16
     920:	15c00005 	bnez	t6,938 <func_80AE53AC+0x25c>
     924:	a60d0032 	sh	t5,50(s0)
     928:	0c000000 	jal	0 <EnReeba_Init>
     92c:	02002025 	move	a0,s0
     930:	240f0014 	li	t7,20
     934:	a60f0274 	sh	t7,628(s0)
     938:	8fbf001c 	lw	ra,28(sp)
     93c:	8fb00018 	lw	s0,24(sp)
     940:	27bd0020 	addiu	sp,sp,32
     944:	03e00008 	jr	ra
     948:	00000000 	nop

0000094c <func_80AE561C>:
     94c:	27bdffe8 	addiu	sp,sp,-24
     950:	afbf0014 	sw	ra,20(sp)
     954:	afa5001c 	sw	a1,28(sp)
     958:	00803825 	move	a3,a0
     95c:	3c063e99 	lui	a2,0x3e99
     960:	34c6999a 	ori	a2,a2,0x999a
     964:	afa70018 	sw	a3,24(sp)
     968:	24840068 	addiu	a0,a0,104
     96c:	0c000000 	jal	0 <EnReeba_Init>
     970:	3c053f80 	lui	a1,0x3f80
     974:	8fa70018 	lw	a3,24(sp)
     978:	84ee0272 	lh	t6,626(a3)
     97c:	55c0000b 	bnezl	t6,9ac <func_80AE561C+0x60>
     980:	8fbf0014 	lw	ra,20(sp)
     984:	84ef027a 	lh	t7,634(a3)
     988:	3c190000 	lui	t9,0x0
     98c:	3c180000 	lui	t8,0x0
     990:	11e00004 	beqz	t7,9a4 <func_80AE561C+0x58>
     994:	27390000 	addiu	t9,t9,0
     998:	27180000 	addiu	t8,t8,0
     99c:	10000002 	b	9a8 <func_80AE561C+0x5c>
     9a0:	acf8026c 	sw	t8,620(a3)
     9a4:	acf9026c 	sw	t9,620(a3)
     9a8:	8fbf0014 	lw	ra,20(sp)
     9ac:	27bd0018 	addiu	sp,sp,24
     9b0:	03e00008 	jr	ra
     9b4:	00000000 	nop

000009b8 <func_80AE5688>:
     9b8:	27bdffe8 	addiu	sp,sp,-24
     9bc:	afbf0014 	sw	ra,20(sp)
     9c0:	afa5001c 	sw	a1,28(sp)
     9c4:	a480027e 	sh	zero,638(a0)
     9c8:	afa40018 	sw	a0,24(sp)
     9cc:	0c000000 	jal	0 <EnReeba_Init>
     9d0:	24053987 	li	a1,14727
     9d4:	8fa40018 	lw	a0,24(sp)
     9d8:	3c010800 	lui	at,0x800
     9dc:	3c080000 	lui	t0,0x0
     9e0:	8c8e0004 	lw	t6,4(a0)
     9e4:	25080000 	addiu	t0,t0,0
     9e8:	ac88026c 	sw	t0,620(a0)
     9ec:	01c17825 	or	t7,t6,at
     9f0:	2401fffa 	li	at,-6
     9f4:	01e1c824 	and	t9,t7,at
     9f8:	ac8f0004 	sw	t7,4(a0)
     9fc:	ac990004 	sw	t9,4(a0)
     a00:	8fbf0014 	lw	ra,20(sp)
     a04:	27bd0018 	addiu	sp,sp,24
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_80AE56E0>:
     a10:	27bdffc8 	addiu	sp,sp,-56
     a14:	afb00030 	sw	s0,48(sp)
     a18:	00808025 	move	s0,a0
     a1c:	afbf0034 	sw	ra,52(sp)
     a20:	afa5003c 	sw	a1,60(sp)
     a24:	3c063e99 	lui	a2,0x3e99
     a28:	34c6999a 	ori	a2,a2,0x999a
     a2c:	3c053f80 	lui	a1,0x3f80
     a30:	0c000000 	jal	0 <EnReeba_Init>
     a34:	248400c4 	addiu	a0,a0,196
     a38:	3c053dcc 	lui	a1,0x3dcc
     a3c:	3c063e99 	lui	a2,0x3e99
     a40:	34c6999a 	ori	a2,a2,0x999a
     a44:	34a5cccd 	ori	a1,a1,0xcccd
     a48:	0c000000 	jal	0 <EnReeba_Init>
     a4c:	26040068 	addiu	a0,s0,104
     a50:	0c000000 	jal	0 <EnReeba_Init>
     a54:	2604014c 	addiu	a0,s0,332
     a58:	3c014120 	lui	at,0x4120
     a5c:	44813000 	mtc1	at,$f6
     a60:	c6000284 	lwc1	$f0,644(s0)
     a64:	c60400bc 	lwc1	$f4,188(s0)
     a68:	8fa4003c 	lw	a0,60(sp)
     a6c:	46060200 	add.s	$f8,$f0,$f6
     a70:	3c0e0001 	lui	t6,0x1
     a74:	01c47021 	addu	t6,t6,a0
     a78:	4604403e 	c.le.s	$f8,$f4
     a7c:	00000000 	nop
     a80:	45000020 	bc1f	b04 <func_80AE56E0+0xf4>
     a84:	00000000 	nop
     a88:	8dce1de4 	lw	t6,7652(t6)
     a8c:	02002825 	move	a1,s0
     a90:	26060024 	addiu	a2,s0,36
     a94:	31cf0003 	andi	t7,t6,0x3
     a98:	15e0000e 	bnez	t7,ad4 <func_80AE56E0+0xc4>
     a9c:	24180001 	li	t8,1
     aa0:	8e0700c4 	lw	a3,196(s0)
     aa4:	3c014100 	lui	at,0x4100
     aa8:	44815000 	mtc1	at,$f10
     aac:	241901f4 	li	t9,500
     ab0:	2408000a 	li	t0,10
     ab4:	24090001 	li	t1,1
     ab8:	afa90020 	sw	t1,32(sp)
     abc:	afa8001c 	sw	t0,28(sp)
     ac0:	afb90018 	sw	t9,24(sp)
     ac4:	afb80010 	sw	t8,16(sp)
     ac8:	0c000000 	jal	0 <EnReeba_Init>
     acc:	e7aa0014 	swc1	$f10,20(sp)
     ad0:	c6000284 	lwc1	$f0,644(s0)
     ad4:	44050000 	mfc1	a1,$f0
     ad8:	260400bc 	addiu	a0,s0,188
     adc:	3c063f80 	lui	a2,0x3f80
     ae0:	0c000000 	jal	0 <EnReeba_Init>
     ae4:	8e070288 	lw	a3,648(s0)
     ae8:	26040288 	addiu	a0,s0,648
     aec:	3c054396 	lui	a1,0x4396
     af0:	3c063f80 	lui	a2,0x3f80
     af4:	0c000000 	jal	0 <EnReeba_Init>
     af8:	3c0740a0 	lui	a3,0x40a0
     afc:	10000004 	b	b10 <func_80AE56E0+0x100>
     b00:	8fbf0034 	lw	ra,52(sp)
     b04:	0c000000 	jal	0 <EnReeba_Init>
     b08:	02002025 	move	a0,s0
     b0c:	8fbf0034 	lw	ra,52(sp)
     b10:	8fb00030 	lw	s0,48(sp)
     b14:	27bd0038 	addiu	sp,sp,56
     b18:	03e00008 	jr	ra
     b1c:	00000000 	nop

00000b20 <func_80AE57F0>:
     b20:	27bdffe0 	addiu	sp,sp,-32
     b24:	afbf001c 	sw	ra,28(sp)
     b28:	afa50024 	sw	a1,36(sp)
     b2c:	3c01c100 	lui	at,0xc100
     b30:	44812000 	mtc1	at,$f4
     b34:	848f008a 	lh	t7,138(a0)
     b38:	240e000e 	li	t6,14
     b3c:	a48e0276 	sh	t6,630(a0)
     b40:	24180008 	li	t8,8
     b44:	e4840068 	swc1	$f4,104(a0)
     b48:	a48f0032 	sh	t7,50(a0)
     b4c:	afa40020 	sw	a0,32(sp)
     b50:	afb80010 	sw	t8,16(sp)
     b54:	24054000 	li	a1,16384
     b58:	240600ff 	li	a2,255
     b5c:	0c000000 	jal	0 <EnReeba_Init>
     b60:	00003825 	move	a3,zero
     b64:	8fa40020 	lw	a0,32(sp)
     b68:	3c190000 	lui	t9,0x0
     b6c:	27390000 	addiu	t9,t9,0
     b70:	ac99026c 	sw	t9,620(a0)
     b74:	8fbf001c 	lw	ra,28(sp)
     b78:	27bd0020 	addiu	sp,sp,32
     b7c:	03e00008 	jr	ra
     b80:	00000000 	nop

00000b84 <func_80AE5854>:
     b84:	27bdffe8 	addiu	sp,sp,-24
     b88:	afa5001c 	sw	a1,28(sp)
     b8c:	00802825 	move	a1,a0
     b90:	afbf0014 	sw	ra,20(sp)
     b94:	afa40018 	sw	a0,24(sp)
     b98:	afa50018 	sw	a1,24(sp)
     b9c:	0c000000 	jal	0 <EnReeba_Init>
     ba0:	2484014c 	addiu	a0,a0,332
     ba4:	8fa50018 	lw	a1,24(sp)
     ba8:	44802000 	mtc1	zero,$f4
     bac:	3c013f80 	lui	at,0x3f80
     bb0:	c4a00068 	lwc1	$f0,104(a1)
     bb4:	4604003c 	c.lt.s	$f0,$f4
     bb8:	00000000 	nop
     bbc:	45020006 	bc1fl	bd8 <func_80AE5854+0x54>
     bc0:	84ae0276 	lh	t6,630(a1)
     bc4:	44813000 	mtc1	at,$f6
     bc8:	00000000 	nop
     bcc:	46060200 	add.s	$f8,$f0,$f6
     bd0:	e4a80068 	swc1	$f8,104(a1)
     bd4:	84ae0276 	lh	t6,630(a1)
     bd8:	55c0000d 	bnezl	t6,c10 <func_80AE5854+0x8c>
     bdc:	8fbf0014 	lw	ra,20(sp)
     be0:	84af027a 	lh	t7,634(a1)
     be4:	3c080000 	lui	t0,0x0
     be8:	2418001e 	li	t8,30
     bec:	11e00006 	beqz	t7,c08 <func_80AE5854+0x84>
     bf0:	25080000 	addiu	t0,t0,0
     bf4:	3c190000 	lui	t9,0x0
     bf8:	27390000 	addiu	t9,t9,0
     bfc:	a4b80270 	sh	t8,624(a1)
     c00:	10000002 	b	c0c <func_80AE5854+0x88>
     c04:	acb9026c 	sw	t9,620(a1)
     c08:	aca8026c 	sw	t0,620(a1)
     c0c:	8fbf0014 	lw	ra,20(sp)
     c10:	27bd0018 	addiu	sp,sp,24
     c14:	03e00008 	jr	ra
     c18:	00000000 	nop

00000c1c <func_80AE58EC>:
     c1c:	afa50004 	sw	a1,4(sp)
     c20:	8c980004 	lw	t8,4(a0)
     c24:	3c01c100 	lui	at,0xc100
     c28:	44812000 	mtc1	at,$f4
     c2c:	3c010800 	lui	at,0x800
     c30:	0301c825 	or	t9,t8,at
     c34:	848f008a 	lh	t7,138(a0)
     c38:	2401fffa 	li	at,-6
     c3c:	3c0a0000 	lui	t2,0x0
     c40:	240e000e 	li	t6,14
     c44:	ac990004 	sw	t9,4(a0)
     c48:	03214824 	and	t1,t9,at
     c4c:	254a0000 	addiu	t2,t2,0
     c50:	a48e0278 	sh	t6,632(a0)
     c54:	ac890004 	sw	t1,4(a0)
     c58:	ac8a026c 	sw	t2,620(a0)
     c5c:	e4840068 	swc1	$f4,104(a0)
     c60:	03e00008 	jr	ra
     c64:	a48f0032 	sh	t7,50(a0)

00000c68 <func_80AE5938>:
     c68:	27bdffa8 	addiu	sp,sp,-88
     c6c:	afbf003c 	sw	ra,60(sp)
     c70:	afb00038 	sw	s0,56(sp)
     c74:	afa5005c 	sw	a1,92(sp)
     c78:	848e0278 	lh	t6,632(a0)
     c7c:	00808025 	move	s0,a0
     c80:	51c0000e 	beqzl	t6,cbc <func_80AE5938+0x54>
     c84:	8602027e 	lh	v0,638(s0)
     c88:	c4800068 	lwc1	$f0,104(a0)
     c8c:	44802000 	mtc1	zero,$f4
     c90:	3c013f80 	lui	at,0x3f80
     c94:	4604003c 	c.lt.s	$f0,$f4
     c98:	00000000 	nop
     c9c:	45020047 	bc1fl	dbc <func_80AE5938+0x154>
     ca0:	8fbf003c 	lw	ra,60(sp)
     ca4:	44813000 	mtc1	at,$f6
     ca8:	00000000 	nop
     cac:	46060200 	add.s	$f8,$f0,$f6
     cb0:	10000041 	b	db8 <func_80AE5938+0x150>
     cb4:	e4880068 	swc1	$f8,104(a0)
     cb8:	8602027e 	lh	v0,638(s0)
     cbc:	44805000 	mtc1	zero,$f10
     cc0:	24010004 	li	at,4
     cc4:	10410005 	beq	v0,at,cdc <func_80AE5938+0x74>
     cc8:	e60a0068 	swc1	$f10,104(s0)
     ccc:	920f00af 	lbu	t7,175(s0)
     cd0:	3c180000 	lui	t8,0x0
     cd4:	27180000 	addiu	t8,t8,0
     cd8:	11e00034 	beqz	t7,dac <func_80AE5938+0x144>
     cdc:	24010002 	li	at,2
     ce0:	1441002c 	bne	v0,at,d94 <func_80AE5938+0x12c>
     ce4:	3c0141a0 	lui	at,0x41a0
     ce8:	44816000 	mtc1	at,$f12
     cec:	0c000000 	jal	0 <EnReeba_Init>
     cf0:	00000000 	nop
     cf4:	c6100024 	lwc1	$f16,36(s0)
     cf8:	3c0141a0 	lui	at,0x41a0
     cfc:	44816000 	mtc1	at,$f12
     d00:	46100480 	add.s	$f18,$f0,$f16
     d04:	0c000000 	jal	0 <EnReeba_Init>
     d08:	e7b2004c 	swc1	$f18,76(sp)
     d0c:	c6040028 	lwc1	$f4,40(s0)
     d10:	3c0141a0 	lui	at,0x41a0
     d14:	44816000 	mtc1	at,$f12
     d18:	46040180 	add.s	$f6,$f0,$f4
     d1c:	0c000000 	jal	0 <EnReeba_Init>
     d20:	e7a60050 	swc1	$f6,80(sp)
     d24:	c608002c 	lwc1	$f8,44(s0)
     d28:	3c014040 	lui	at,0x4040
     d2c:	44811000 	mtc1	at,$f2
     d30:	46080280 	add.s	$f10,$f0,$f8
     d34:	8fa4005c 	lw	a0,92(sp)
     d38:	02002825 	move	a1,s0
     d3c:	27a6004c 	addiu	a2,sp,76
     d40:	e7aa0054 	swc1	$f10,84(sp)
     d44:	8618027a 	lh	t8,634(s0)
     d48:	24070096 	li	a3,150
     d4c:	24190096 	li	t9,150
     d50:	13000004 	beqz	t8,d64 <func_80AE5938+0xfc>
     d54:	24080096 	li	t0,150
     d58:	3c0140c0 	lui	at,0x40c0
     d5c:	44811000 	mtc1	at,$f2
     d60:	00000000 	nop
     d64:	240900fa 	li	t1,250
     d68:	240a00eb 	li	t2,235
     d6c:	240b00f5 	li	t3,245
     d70:	240c00ff 	li	t4,255
     d74:	afac0024 	sw	t4,36(sp)
     d78:	afab0020 	sw	t3,32(sp)
     d7c:	afaa001c 	sw	t2,28(sp)
     d80:	afa90018 	sw	t1,24(sp)
     d84:	afb90010 	sw	t9,16(sp)
     d88:	afa80014 	sw	t0,20(sp)
     d8c:	0c000000 	jal	0 <EnReeba_Init>
     d90:	e7a20028 	swc1	$f2,40(sp)
     d94:	3c0e0000 	lui	t6,0x0
     d98:	240d0042 	li	t5,66
     d9c:	25ce0000 	addiu	t6,t6,0
     da0:	a60d0278 	sh	t5,632(s0)
     da4:	10000004 	b	db8 <func_80AE5938+0x150>
     da8:	ae0e026c 	sw	t6,620(s0)
     dac:	240f001e 	li	t7,30
     db0:	a60f0278 	sh	t7,632(s0)
     db4:	ae18026c 	sw	t8,620(s0)
     db8:	8fbf003c 	lw	ra,60(sp)
     dbc:	8fb00038 	lw	s0,56(sp)
     dc0:	27bd0058 	addiu	sp,sp,88
     dc4:	03e00008 	jr	ra
     dc8:	00000000 	nop

00000dcc <func_80AE5A9C>:
     dcc:	27bdffa8 	addiu	sp,sp,-88
     dd0:	afbf003c 	sw	ra,60(sp)
     dd4:	afb00038 	sw	s0,56(sp)
     dd8:	afa5005c 	sw	a1,92(sp)
     ddc:	84820278 	lh	v0,632(a0)
     de0:	00808025 	move	s0,a0
     de4:	24053989 	li	a1,14729
     de8:	10400035 	beqz	v0,ec0 <func_80AE5A9C+0xf4>
     dec:	00000000 	nop
     df0:	848e027e 	lh	t6,638(a0)
     df4:	24010002 	li	at,2
     df8:	304f000f 	andi	t7,v0,0xf
     dfc:	55c10039 	bnel	t6,at,ee4 <func_80AE5A9C+0x118>
     e00:	8fbf003c 	lw	ra,60(sp)
     e04:	15e00036 	bnez	t7,ee0 <func_80AE5A9C+0x114>
     e08:	3c0141a0 	lui	at,0x41a0
     e0c:	44816000 	mtc1	at,$f12
     e10:	0c000000 	jal	0 <EnReeba_Init>
     e14:	00000000 	nop
     e18:	c6040024 	lwc1	$f4,36(s0)
     e1c:	3c0141a0 	lui	at,0x41a0
     e20:	44816000 	mtc1	at,$f12
     e24:	46040180 	add.s	$f6,$f0,$f4
     e28:	0c000000 	jal	0 <EnReeba_Init>
     e2c:	e7a6004c 	swc1	$f6,76(sp)
     e30:	c6080028 	lwc1	$f8,40(s0)
     e34:	3c0141a0 	lui	at,0x41a0
     e38:	44816000 	mtc1	at,$f12
     e3c:	46080280 	add.s	$f10,$f0,$f8
     e40:	0c000000 	jal	0 <EnReeba_Init>
     e44:	e7aa0050 	swc1	$f10,80(sp)
     e48:	c610002c 	lwc1	$f16,44(s0)
     e4c:	3c014040 	lui	at,0x4040
     e50:	44811000 	mtc1	at,$f2
     e54:	46100480 	add.s	$f18,$f0,$f16
     e58:	8fa4005c 	lw	a0,92(sp)
     e5c:	02002825 	move	a1,s0
     e60:	27a6004c 	addiu	a2,sp,76
     e64:	e7b20054 	swc1	$f18,84(sp)
     e68:	8618027a 	lh	t8,634(s0)
     e6c:	24070096 	li	a3,150
     e70:	24190096 	li	t9,150
     e74:	13000004 	beqz	t8,e88 <func_80AE5A9C+0xbc>
     e78:	24080096 	li	t0,150
     e7c:	3c0140c0 	lui	at,0x40c0
     e80:	44811000 	mtc1	at,$f2
     e84:	00000000 	nop
     e88:	240900fa 	li	t1,250
     e8c:	240a00eb 	li	t2,235
     e90:	240b00f5 	li	t3,245
     e94:	240c00ff 	li	t4,255
     e98:	afac0024 	sw	t4,36(sp)
     e9c:	afab0020 	sw	t3,32(sp)
     ea0:	afaa001c 	sw	t2,28(sp)
     ea4:	afa90018 	sw	t1,24(sp)
     ea8:	afb90010 	sw	t9,16(sp)
     eac:	afa80014 	sw	t0,20(sp)
     eb0:	0c000000 	jal	0 <EnReeba_Init>
     eb4:	e7a20028 	swc1	$f2,40(sp)
     eb8:	1000000a 	b	ee4 <func_80AE5A9C+0x118>
     ebc:	8fbf003c 	lw	ra,60(sp)
     ec0:	0c000000 	jal	0 <EnReeba_Init>
     ec4:	02002025 	move	a0,s0
     ec8:	8fa4005c 	lw	a0,92(sp)
     ecc:	0c000000 	jal	0 <EnReeba_Init>
     ed0:	02002825 	move	a1,s0
     ed4:	3c0d0000 	lui	t5,0x0
     ed8:	25ad0000 	addiu	t5,t5,0
     edc:	ae0d026c 	sw	t5,620(s0)
     ee0:	8fbf003c 	lw	ra,60(sp)
     ee4:	8fb00038 	lw	s0,56(sp)
     ee8:	27bd0058 	addiu	sp,sp,88
     eec:	03e00008 	jr	ra
     ef0:	00000000 	nop

00000ef4 <func_80AE5BC4>:
     ef4:	27bdffe0 	addiu	sp,sp,-32
     ef8:	afbf001c 	sw	ra,28(sp)
     efc:	afa50024 	sw	a1,36(sp)
     f00:	3c01c100 	lui	at,0xc100
     f04:	44812000 	mtc1	at,$f4
     f08:	848e008a 	lh	t6,138(a0)
     f0c:	240f0008 	li	t7,8
     f10:	e4840068 	swc1	$f4,104(a0)
     f14:	a48e0032 	sh	t6,50(a0)
     f18:	afa40020 	sw	a0,32(sp)
     f1c:	afaf0010 	sw	t7,16(sp)
     f20:	24054000 	li	a1,16384
     f24:	240600ff 	li	a2,255
     f28:	0c000000 	jal	0 <EnReeba_Init>
     f2c:	00003825 	move	a3,zero
     f30:	8fa40020 	lw	a0,32(sp)
     f34:	2401fffe 	li	at,-2
     f38:	3c090000 	lui	t1,0x0
     f3c:	8c990004 	lw	t9,4(a0)
     f40:	2418000e 	li	t8,14
     f44:	25290000 	addiu	t1,t1,0
     f48:	03214024 	and	t0,t9,at
     f4c:	a4980278 	sh	t8,632(a0)
     f50:	ac880004 	sw	t0,4(a0)
     f54:	ac89026c 	sw	t1,620(a0)
     f58:	8fbf001c 	lw	ra,28(sp)
     f5c:	27bd0020 	addiu	sp,sp,32
     f60:	03e00008 	jr	ra
     f64:	00000000 	nop

00000f68 <func_80AE5C38>:
     f68:	27bdff80 	addiu	sp,sp,-128
     f6c:	3c0f0000 	lui	t7,0x0
     f70:	afbf004c 	sw	ra,76(sp)
     f74:	afb00048 	sw	s0,72(sp)
     f78:	afa50084 	sw	a1,132(sp)
     f7c:	25ef006c 	addiu	t7,t7,108
     f80:	8df90000 	lw	t9,0(t7)
     f84:	27ae0068 	addiu	t6,sp,104
     f88:	8df80004 	lw	t8,4(t7)
     f8c:	add90000 	sw	t9,0(t6)
     f90:	8df90008 	lw	t9,8(t7)
     f94:	3c090000 	lui	t1,0x0
     f98:	25290078 	addiu	t1,t1,120
     f9c:	add80004 	sw	t8,4(t6)
     fa0:	add90008 	sw	t9,8(t6)
     fa4:	8d2b0000 	lw	t3,0(t1)
     fa8:	27a8005c 	addiu	t0,sp,92
     fac:	8d2a0004 	lw	t2,4(t1)
     fb0:	ad0b0000 	sw	t3,0(t0)
     fb4:	8d2b0008 	lw	t3,8(t1)
     fb8:	ad0a0004 	sw	t2,4(t0)
     fbc:	3c053dcc 	lui	a1,0x3dcc
     fc0:	ad0b0008 	sw	t3,8(t0)
     fc4:	848c0278 	lh	t4,632(a0)
     fc8:	00808025 	move	s0,a0
     fcc:	34a5cccd 	ori	a1,a1,0xcccd
     fd0:	1180000d 	beqz	t4,1008 <func_80AE5C38+0xa0>
     fd4:	3c063c23 	lui	a2,0x3c23
     fd8:	c4800068 	lwc1	$f0,104(a0)
     fdc:	44802000 	mtc1	zero,$f4
     fe0:	3c013f80 	lui	at,0x3f80
     fe4:	4604003c 	c.lt.s	$f0,$f4
     fe8:	00000000 	nop
     fec:	4502005e 	bc1fl	1168 <func_80AE5C38+0x200>
     ff0:	8fbf004c 	lw	ra,76(sp)
     ff4:	44813000 	mtc1	at,$f6
     ff8:	00000000 	nop
     ffc:	46060200 	add.s	$f8,$f0,$f6
    1000:	10000058 	b	1164 <func_80AE5C38+0x1fc>
    1004:	e4880068 	swc1	$f8,104(a0)
    1008:	44805000 	mtc1	zero,$f10
    100c:	2604028c 	addiu	a0,s0,652
    1010:	34c6d70a 	ori	a2,a2,0xd70a
    1014:	0c000000 	jal	0 <EnReeba_Init>
    1018:	e60a0068 	swc1	$f10,104(s0)
    101c:	3c010000 	lui	at,0x0
    1020:	c43200b0 	lwc1	$f18,176(at)
    1024:	c610028c 	lwc1	$f16,652(s0)
    1028:	3c014080 	lui	at,0x4080
    102c:	27a50074 	addiu	a1,sp,116
    1030:	4612803c 	c.lt.s	$f16,$f18
    1034:	27a6005c 	addiu	a2,sp,92
    1038:	27a70068 	addiu	a3,sp,104
    103c:	240d0078 	li	t5,120
    1040:	45000048 	bc1f	1164 <func_80AE5C38+0x1fc>
    1044:	240e00ff 	li	t6,255
    1048:	c6040024 	lwc1	$f4,36(s0)
    104c:	44815000 	mtc1	at,$f10
    1050:	240f00ff 	li	t7,255
    1054:	e7a40074 	swc1	$f4,116(sp)
    1058:	c6060028 	lwc1	$f6,40(s0)
    105c:	241800ff 	li	t8,255
    1060:	241900ff 	li	t9,255
    1064:	e7a60078 	swc1	$f6,120(sp)
    1068:	c608002c 	lwc1	$f8,44(s0)
    106c:	240800ff 	li	t0,255
    1070:	24090001 	li	t1,1
    1074:	240a0009 	li	t2,9
    1078:	240b0001 	li	t3,1
    107c:	afab003c 	sw	t3,60(sp)
    1080:	afaa0038 	sw	t2,56(sp)
    1084:	afa90034 	sw	t1,52(sp)
    1088:	afa80028 	sw	t0,40(sp)
    108c:	afa00030 	sw	zero,48(sp)
    1090:	afa0002c 	sw	zero,44(sp)
    1094:	afb90024 	sw	t9,36(sp)
    1098:	afb80020 	sw	t8,32(sp)
    109c:	afaf001c 	sw	t7,28(sp)
    10a0:	afae0018 	sw	t6,24(sp)
    10a4:	afa00014 	sw	zero,20(sp)
    10a8:	afad0010 	sw	t5,16(sp)
    10ac:	8fa40084 	lw	a0,132(sp)
    10b0:	e7aa0060 	swc1	$f10,96(sp)
    10b4:	0c000000 	jal	0 <EnReeba_Init>
    10b8:	e7a8007c 	swc1	$f8,124(sp)
    10bc:	860c027a 	lh	t4,634(s0)
    10c0:	27a60074 	addiu	a2,sp,116
    10c4:	8fa40084 	lw	a0,132(sp)
    10c8:	15800007 	bnez	t4,10e8 <func_80AE5C38+0x180>
    10cc:	02002825 	move	a1,s0
    10d0:	8fa40084 	lw	a0,132(sp)
    10d4:	02002825 	move	a1,s0
    10d8:	0c000000 	jal	0 <EnReeba_Init>
    10dc:	240700e0 	li	a3,224
    10e0:	10000004 	b	10f4 <func_80AE5C38+0x18c>
    10e4:	8e030118 	lw	v1,280(s0)
    10e8:	0c000000 	jal	0 <EnReeba_Init>
    10ec:	240700c0 	li	a3,192
    10f0:	8e030118 	lw	v1,280(s0)
    10f4:	5060001c 	beqzl	v1,1168 <func_80AE5C38+0x200>
    10f8:	8fbf004c 	lw	ra,76(sp)
    10fc:	8c6d0130 	lw	t5,304(v1)
    1100:	00601025 	move	v0,v1
    1104:	11a00015 	beqz	t5,115c <func_80AE5C38+0x1f4>
    1108:	00000000 	nop
    110c:	860e027a 	lh	t6,634(s0)
    1110:	3c040000 	lui	a0,0x0
    1114:	24840034 	addiu	a0,a0,52
    1118:	15c00010 	bnez	t6,115c <func_80AE5C38+0x1f4>
    111c:	00000000 	nop
    1120:	8463015e 	lh	v1,350(v1)
    1124:	2861000a 	slti	at,v1,10
    1128:	10200002 	beqz	at,1134 <func_80AE5C38+0x1cc>
    112c:	246f0001 	addiu	t7,v1,1
    1130:	a44f015e 	sh	t7,350(v0)
    1134:	0c000000 	jal	0 <EnReeba_Init>
    1138:	afa20058 	sw	v0,88(sp)
    113c:	8fa20058 	lw	v0,88(sp)
    1140:	3c040000 	lui	a0,0x0
    1144:	24840038 	addiu	a0,a0,56
    1148:	0c000000 	jal	0 <EnReeba_Init>
    114c:	8445015e 	lh	a1,350(v0)
    1150:	3c040000 	lui	a0,0x0
    1154:	0c000000 	jal	0 <EnReeba_Init>
    1158:	24840068 	addiu	a0,a0,104
    115c:	0c000000 	jal	0 <EnReeba_Init>
    1160:	02002025 	move	a0,s0
    1164:	8fbf004c 	lw	ra,76(sp)
    1168:	8fb00048 	lw	s0,72(sp)
    116c:	27bd0080 	addiu	sp,sp,128
    1170:	03e00008 	jr	ra
    1174:	00000000 	nop

00001178 <func_80AE5E48>:
    1178:	27bdffe8 	addiu	sp,sp,-24
    117c:	afbf0014 	sw	ra,20(sp)
    1180:	afa5001c 	sw	a1,28(sp)
    1184:	848e0278 	lh	t6,632(a0)
    1188:	29c10025 	slti	at,t6,37
    118c:	1020001b 	beqz	at,11fc <func_80AE5E48+0x84>
    1190:	3c010000 	lui	at,0x0
    1194:	c42c00b4 	lwc1	$f12,180(at)
    1198:	0c000000 	jal	0 <EnReeba_Init>
    119c:	afa40018 	sw	a0,24(sp)
    11a0:	4600010d 	trunc.w.s	$f4,$f0
    11a4:	8fa40018 	lw	a0,24(sp)
    11a8:	3c010000 	lui	at,0x0
    11ac:	44182000 	mfc1	t8,$f4
    11b0:	00000000 	nop
    11b4:	a49800b4 	sh	t8,180(a0)
    11b8:	0c000000 	jal	0 <EnReeba_Init>
    11bc:	c42c00b8 	lwc1	$f12,184(at)
    11c0:	4600018d 	trunc.w.s	$f6,$f0
    11c4:	8fa40018 	lw	a0,24(sp)
    11c8:	84890278 	lh	t1,632(a0)
    11cc:	44083000 	mfc1	t0,$f6
    11d0:	1520000a 	bnez	t1,11fc <func_80AE5E48+0x84>
    11d4:	a48800b8 	sh	t0,184(a0)
    11d8:	848a027a 	lh	t2,634(a0)
    11dc:	3c0c0000 	lui	t4,0x0
    11e0:	3c0b0000 	lui	t3,0x0
    11e4:	11400004 	beqz	t2,11f8 <func_80AE5E48+0x80>
    11e8:	258c0000 	addiu	t4,t4,0
    11ec:	256b0000 	addiu	t3,t3,0
    11f0:	10000002 	b	11fc <func_80AE5E48+0x84>
    11f4:	ac8b026c 	sw	t3,620(a0)
    11f8:	ac8c026c 	sw	t4,620(a0)
    11fc:	8fbf0014 	lw	ra,20(sp)
    1200:	27bd0018 	addiu	sp,sp,24
    1204:	03e00008 	jr	ra
    1208:	00000000 	nop

0000120c <func_80AE5EDC>:
    120c:	27bdffd8 	addiu	sp,sp,-40
    1210:	afbf0024 	sw	ra,36(sp)
    1214:	afb00020 	sw	s0,32(sp)
    1218:	afa5002c 	sw	a1,44(sp)
    121c:	908202a1 	lbu	v0,673(a0)
    1220:	00808025 	move	s0,a0
    1224:	304e0002 	andi	t6,v0,0x2
    1228:	11c00082 	beqz	t6,1434 <func_80AE5EDC+0x228>
    122c:	304ffffd 	andi	t7,v0,0xfffd
    1230:	8c83026c 	lw	v1,620(a0)
    1234:	3c180000 	lui	t8,0x0
    1238:	27180000 	addiu	t8,t8,0
    123c:	1303007d 	beq	t8,v1,1434 <func_80AE5EDC+0x228>
    1240:	a08f02a1 	sb	t7,673(a0)
    1244:	3c190000 	lui	t9,0x0
    1248:	27390000 	addiu	t9,t9,0
    124c:	5323007a 	beql	t9,v1,1438 <func_80AE5EDC+0x22c>
    1250:	8fbf0024 	lw	ra,36(sp)
    1254:	908900b1 	lbu	t1,177(a0)
    1258:	a48000b8 	sh	zero,184(a0)
    125c:	848800b8 	lh	t0,184(a0)
    1260:	252affff 	addiu	t2,t1,-1
    1264:	2d41000e 	sltiu	at,t2,14
    1268:	a480027e 	sh	zero,638(a0)
    126c:	10200071 	beqz	at,1434 <func_80AE5EDC+0x228>
    1270:	a48800b4 	sh	t0,180(a0)
    1274:	000a5080 	sll	t2,t2,0x2
    1278:	3c010000 	lui	at,0x0
    127c:	002a0821 	addu	at,at,t2
    1280:	8c2a00bc 	lw	t2,188(at)
    1284:	01400008 	jr	t2
    1288:	00000000 	nop
    128c:	920b00af 	lbu	t3,175(s0)
    1290:	29610002 	slti	at,t3,2
    1294:	14200013 	bnez	at,12e4 <func_80AE5EDC+0xd8>
    1298:	00000000 	nop
    129c:	860c027e 	lh	t4,638(s0)
    12a0:	24020004 	li	v0,4
    12a4:	02002025 	move	a0,s0
    12a8:	104c000e 	beq	v0,t4,12e4 <func_80AE5EDC+0xd8>
    12ac:	2405389e 	li	a1,14494
    12b0:	0c000000 	jal	0 <EnReeba_Init>
    12b4:	a602027e 	sh	v0,638(s0)
    12b8:	240d0050 	li	t5,80
    12bc:	afad0010 	sw	t5,16(sp)
    12c0:	02002025 	move	a0,s0
    12c4:	00002825 	move	a1,zero
    12c8:	240600ff 	li	a2,255
    12cc:	0c000000 	jal	0 <EnReeba_Init>
    12d0:	00003825 	move	a3,zero
    12d4:	3c0e0000 	lui	t6,0x0
    12d8:	25ce0000 	addiu	t6,t6,0
    12dc:	10000055 	b	1434 <func_80AE5EDC+0x228>
    12e0:	ae0e026c 	sw	t6,620(s0)
    12e4:	920f00af 	lbu	t7,175(s0)
    12e8:	24020004 	li	v0,4
    12ec:	29e10003 	slti	at,t7,3
    12f0:	54200013 	bnezl	at,1340 <func_80AE5EDC+0x134>
    12f4:	24090006 	li	t1,6
    12f8:	8618027e 	lh	t8,638(s0)
    12fc:	02002025 	move	a0,s0
    1300:	00002825 	move	a1,zero
    1304:	1058000d 	beq	v0,t8,133c <func_80AE5EDC+0x130>
    1308:	240600ff 	li	a2,255
    130c:	a602027e 	sh	v0,638(s0)
    1310:	24190050 	li	t9,80
    1314:	afb90010 	sw	t9,16(sp)
    1318:	0c000000 	jal	0 <EnReeba_Init>
    131c:	00003825 	move	a3,zero
    1320:	02002025 	move	a0,s0
    1324:	0c000000 	jal	0 <EnReeba_Init>
    1328:	2405389e 	li	a1,14494
    132c:	3c080000 	lui	t0,0x0
    1330:	25080000 	addiu	t0,t0,0
    1334:	1000003f 	b	1434 <func_80AE5EDC+0x228>
    1338:	ae08026c 	sw	t0,620(s0)
    133c:	24090006 	li	t1,6
    1340:	a609027c 	sh	t1,636(s0)
    1344:	0c000000 	jal	0 <EnReeba_Init>
    1348:	02002025 	move	a0,s0
    134c:	920a00af 	lbu	t2,175(s0)
    1350:	24053989 	li	a1,14729
    1354:	02002025 	move	a0,s0
    1358:	5540000b 	bnezl	t2,1388 <func_80AE5EDC+0x17c>
    135c:	8e0d026c 	lw	t5,620(s0)
    1360:	0c000000 	jal	0 <EnReeba_Init>
    1364:	02002025 	move	a0,s0
    1368:	8fa4002c 	lw	a0,44(sp)
    136c:	0c000000 	jal	0 <EnReeba_Init>
    1370:	02002825 	move	a1,s0
    1374:	3c0b0000 	lui	t3,0x0
    1378:	256b0000 	addiu	t3,t3,0
    137c:	1000002d 	b	1434 <func_80AE5EDC+0x228>
    1380:	ae0b026c 	sw	t3,620(s0)
    1384:	8e0d026c 	lw	t5,620(s0)
    1388:	3c0c0000 	lui	t4,0x0
    138c:	258c0000 	addiu	t4,t4,0
    1390:	158d0004 	bne	t4,t5,13a4 <func_80AE5EDC+0x198>
    1394:	00000000 	nop
    1398:	a60000b8 	sh	zero,184(s0)
    139c:	860e00b8 	lh	t6,184(s0)
    13a0:	a60e00b4 	sh	t6,180(s0)
    13a4:	0c000000 	jal	0 <EnReeba_Init>
    13a8:	24053988 	li	a1,14728
    13ac:	3c0f0000 	lui	t7,0x0
    13b0:	25ef0000 	addiu	t7,t7,0
    13b4:	1000001f 	b	1434 <func_80AE5EDC+0x228>
    13b8:	ae0f026c 	sw	t7,620(s0)
    13bc:	0c000000 	jal	0 <EnReeba_Init>
    13c0:	02002025 	move	a0,s0
    13c4:	24020002 	li	v0,2
    13c8:	a602027c 	sh	v0,636(s0)
    13cc:	a602027e 	sh	v0,638(s0)
    13d0:	24180050 	li	t8,80
    13d4:	afb80010 	sw	t8,16(sp)
    13d8:	02002025 	move	a0,s0
    13dc:	00002825 	move	a1,zero
    13e0:	240600ff 	li	a2,255
    13e4:	0c000000 	jal	0 <EnReeba_Init>
    13e8:	00003825 	move	a3,zero
    13ec:	3c190000 	lui	t9,0x0
    13f0:	27390000 	addiu	t9,t9,0
    13f4:	1000000f 	b	1434 <func_80AE5EDC+0x228>
    13f8:	ae19026c 	sw	t9,620(s0)
    13fc:	8608027e 	lh	t0,638(s0)
    1400:	24020004 	li	v0,4
    1404:	02002025 	move	a0,s0
    1408:	1048000a 	beq	v0,t0,1434 <func_80AE5EDC+0x228>
    140c:	00002825 	move	a1,zero
    1410:	a602027e 	sh	v0,638(s0)
    1414:	24090050 	li	t1,80
    1418:	afa90010 	sw	t1,16(sp)
    141c:	240600ff 	li	a2,255
    1420:	0c000000 	jal	0 <EnReeba_Init>
    1424:	00003825 	move	a3,zero
    1428:	3c0a0000 	lui	t2,0x0
    142c:	254a0000 	addiu	t2,t2,0
    1430:	ae0a026c 	sw	t2,620(s0)
    1434:	8fbf0024 	lw	ra,36(sp)
    1438:	8fb00020 	lw	s0,32(sp)
    143c:	27bd0028 	addiu	sp,sp,40
    1440:	03e00008 	jr	ra
    1444:	00000000 	nop

00001448 <EnReeba_Update>:
    1448:	27bdffc0 	addiu	sp,sp,-64
    144c:	afbf0024 	sw	ra,36(sp)
    1450:	afb00020 	sw	s0,32(sp)
    1454:	8cae1c44 	lw	t6,7236(a1)
    1458:	00808025 	move	s0,a0
    145c:	afa50044 	sw	a1,68(sp)
    1460:	0c000000 	jal	0 <EnReeba_Init>
    1464:	afae0034 	sw	t6,52(sp)
    1468:	8e19026c 	lw	t9,620(s0)
    146c:	02002025 	move	a0,s0
    1470:	8fa50044 	lw	a1,68(sp)
    1474:	0320f809 	jalr	t9
    1478:	00000000 	nop
    147c:	02002025 	move	a0,s0
    1480:	0c000000 	jal	0 <EnReeba_Init>
    1484:	8e05028c 	lw	a1,652(s0)
    1488:	86020270 	lh	v0,624(s0)
    148c:	10400002 	beqz	v0,1498 <EnReeba_Update+0x50>
    1490:	244fffff 	addiu	t7,v0,-1
    1494:	a60f0270 	sh	t7,624(s0)
    1498:	86020272 	lh	v0,626(s0)
    149c:	10400002 	beqz	v0,14a8 <EnReeba_Update+0x60>
    14a0:	2458ffff 	addiu	t8,v0,-1
    14a4:	a6180272 	sh	t8,626(s0)
    14a8:	86020278 	lh	v0,632(s0)
    14ac:	10400002 	beqz	v0,14b8 <EnReeba_Update+0x70>
    14b0:	2448ffff 	addiu	t0,v0,-1
    14b4:	a6080278 	sh	t0,632(s0)
    14b8:	86020274 	lh	v0,628(s0)
    14bc:	10400002 	beqz	v0,14c8 <EnReeba_Update+0x80>
    14c0:	2449ffff 	addiu	t1,v0,-1
    14c4:	a6090274 	sh	t1,628(s0)
    14c8:	86020276 	lh	v0,630(s0)
    14cc:	10400002 	beqz	v0,14d8 <EnReeba_Update+0x90>
    14d0:	244affff 	addiu	t2,v0,-1
    14d4:	a60a0276 	sh	t2,630(s0)
    14d8:	0c000000 	jal	0 <EnReeba_Init>
    14dc:	02002025 	move	a0,s0
    14e0:	3c014270 	lui	at,0x4270
    14e4:	44810000 	mtc1	at,$f0
    14e8:	240b001d 	li	t3,29
    14ec:	afab0014 	sw	t3,20(sp)
    14f0:	44070000 	mfc1	a3,$f0
    14f4:	8fa40044 	lw	a0,68(sp)
    14f8:	02002825 	move	a1,s0
    14fc:	3c06420c 	lui	a2,0x420c
    1500:	0c000000 	jal	0 <EnReeba_Init>
    1504:	e7a00010 	swc1	$f0,16(sp)
    1508:	920302a0 	lbu	v1,672(s0)
    150c:	02002025 	move	a0,s0
    1510:	26050290 	addiu	a1,s0,656
    1514:	306c0004 	andi	t4,v1,0x4
    1518:	1180001c 	beqz	t4,158c <EnReeba_Update+0x144>
    151c:	306dfffb 	andi	t5,v1,0xfffb
    1520:	8e02026c 	lw	v0,620(s0)
    1524:	3c0e0000 	lui	t6,0x0
    1528:	25ce0000 	addiu	t6,t6,0
    152c:	11c20005 	beq	t6,v0,1544 <EnReeba_Update+0xfc>
    1530:	a20d02a0 	sb	t5,672(s0)
    1534:	3c190000 	lui	t9,0x0
    1538:	27390000 	addiu	t9,t9,0
    153c:	57220014 	bnel	t9,v0,1590 <EnReeba_Update+0x148>
    1540:	920302a0 	lbu	v1,672(s0)
    1544:	860f0032 	lh	t7,50(s0)
    1548:	3c014100 	lui	at,0x4100
    154c:	44812000 	mtc1	at,$f4
    1550:	448f3000 	mtc1	t7,$f6
    1554:	3c01bf80 	lui	at,0xbf80
    1558:	44815000 	mtc1	at,$f10
    155c:	46803220 	cvt.s.w	$f8,$f6
    1560:	3c0a0000 	lui	t2,0x0
    1564:	2409000e 	li	t1,14
    1568:	254a0000 	addiu	t2,t2,0
    156c:	a6090272 	sh	t1,626(s0)
    1570:	ae0a026c 	sw	t2,620(s0)
    1574:	460a4402 	mul.s	$f16,$f8,$f10
    1578:	e6040068 	swc1	$f4,104(s0)
    157c:	4600848d 	trunc.w.s	$f18,$f16
    1580:	44089000 	mfc1	t0,$f18
    1584:	10000056 	b	16e0 <EnReeba_Update+0x298>
    1588:	a6080032 	sh	t0,50(s0)
    158c:	920302a0 	lbu	v1,672(s0)
    1590:	3c0141f0 	lui	at,0x41f0
    1594:	306b0002 	andi	t3,v1,0x2
    1598:	11600010 	beqz	t3,15dc <EnReeba_Update+0x194>
    159c:	306cfffd 	andi	t4,v1,0xfffd
    15a0:	a20c02a0 	sb	t4,672(s0)
    15a4:	8fad0034 	lw	t5,52(sp)
    15a8:	8e0e0294 	lw	t6,660(s0)
    15ac:	55ae000c 	bnel	t5,t6,15e0 <EnReeba_Update+0x198>
    15b0:	8e0a0024 	lw	t2,36(s0)
    15b4:	8619027a 	lh	t9,634(s0)
    15b8:	57200009 	bnezl	t9,15e0 <EnReeba_Update+0x198>
    15bc:	8e0a0024 	lw	t2,36(s0)
    15c0:	8e18026c 	lw	t8,620(s0)
    15c4:	3c0f0000 	lui	t7,0x0
    15c8:	25ef0000 	addiu	t7,t7,0
    15cc:	11f80003 	beq	t7,t8,15dc <EnReeba_Update+0x194>
    15d0:	3c080000 	lui	t0,0x0
    15d4:	25080000 	addiu	t0,t0,0
    15d8:	ae08026c 	sw	t0,620(s0)
    15dc:	8e0a0024 	lw	t2,36(s0)
    15e0:	860b027a 	lh	t3,634(s0)
    15e4:	8e090028 	lw	t1,40(s0)
    15e8:	ae0a0038 	sw	t2,56(s0)
    15ec:	8e0a002c 	lw	t2,44(s0)
    15f0:	ae09003c 	sw	t1,60(s0)
    15f4:	15600007 	bnez	t3,1614 <EnReeba_Update+0x1cc>
    15f8:	ae0a0040 	sw	t2,64(s0)
    15fc:	3c014170 	lui	at,0x4170
    1600:	44813000 	mtc1	at,$f6
    1604:	c604003c 	lwc1	$f4,60(s0)
    1608:	46062200 	add.s	$f8,$f4,$f6
    160c:	10000006 	b	1628 <EnReeba_Update+0x1e0>
    1610:	e608003c 	swc1	$f8,60(s0)
    1614:	c60a003c 	lwc1	$f10,60(s0)
    1618:	44818000 	mtc1	at,$f16
    161c:	00000000 	nop
    1620:	46105480 	add.s	$f18,$f10,$f16
    1624:	e612003c 	swc1	$f18,60(s0)
    1628:	0c000000 	jal	0 <EnReeba_Init>
    162c:	afa50028 	sw	a1,40(sp)
    1630:	3c01c42f 	lui	at,0xc42f
    1634:	44813000 	mtc1	at,$f6
    1638:	c60400bc 	lwc1	$f4,188(s0)
    163c:	4604303e 	c.le.s	$f6,$f4
    1640:	00000000 	nop
    1644:	45020027 	bc1fl	16e4 <EnReeba_Update+0x29c>
    1648:	8fbf0024 	lw	ra,36(sp)
    164c:	920c00af 	lbu	t4,175(s0)
    1650:	59800024 	blezl	t4,16e4 <EnReeba_Update+0x29c>
    1654:	8fbf0024 	lw	ra,36(sp)
    1658:	8e0e026c 	lw	t6,620(s0)
    165c:	3c0d0000 	lui	t5,0x0
    1660:	25ad0000 	addiu	t5,t5,0
    1664:	11ae001e 	beq	t5,t6,16e0 <EnReeba_Update+0x298>
    1668:	8fa40044 	lw	a0,68(sp)
    166c:	3c010001 	lui	at,0x1
    1670:	34211e60 	ori	at,at,0x1e60
    1674:	00812821 	addu	a1,a0,at
    1678:	afa5002c 	sw	a1,44(sp)
    167c:	0c000000 	jal	0 <EnReeba_Init>
    1680:	8fa60028 	lw	a2,40(sp)
    1684:	c60800bc 	lwc1	$f8,188(s0)
    1688:	44805000 	mtc1	zero,$f10
    168c:	3c190000 	lui	t9,0x0
    1690:	8fa40044 	lw	a0,68(sp)
    1694:	460a403c 	c.lt.s	$f8,$f10
    1698:	27390000 	addiu	t9,t9,0
    169c:	8fa5002c 	lw	a1,44(sp)
    16a0:	8fa60028 	lw	a2,40(sp)
    16a4:	4503000f 	bc1tl	16e4 <EnReeba_Update+0x29c>
    16a8:	8fbf0024 	lw	ra,36(sp)
    16ac:	0c000000 	jal	0 <EnReeba_Init>
    16b0:	afb90030 	sw	t9,48(sp)
    16b4:	8e02026c 	lw	v0,620(s0)
    16b8:	8faf0030 	lw	t7,48(sp)
    16bc:	3c180000 	lui	t8,0x0
    16c0:	27180000 	addiu	t8,t8,0
    16c4:	11e20003 	beq	t7,v0,16d4 <EnReeba_Update+0x28c>
    16c8:	8fa40044 	lw	a0,68(sp)
    16cc:	57020005 	bnel	t8,v0,16e4 <EnReeba_Update+0x29c>
    16d0:	8fbf0024 	lw	ra,36(sp)
    16d4:	8fa5002c 	lw	a1,44(sp)
    16d8:	0c000000 	jal	0 <EnReeba_Init>
    16dc:	8fa60028 	lw	a2,40(sp)
    16e0:	8fbf0024 	lw	ra,36(sp)
    16e4:	8fb00020 	lw	s0,32(sp)
    16e8:	27bd0040 	addiu	sp,sp,64
    16ec:	03e00008 	jr	ra
    16f0:	00000000 	nop

000016f4 <EnReeba_Draw>:
    16f4:	27bdff78 	addiu	sp,sp,-136
    16f8:	afb10048 	sw	s1,72(sp)
    16fc:	00a08825 	move	s1,a1
    1700:	afbf004c 	sw	ra,76(sp)
    1704:	afb00044 	sw	s0,68(sp)
    1708:	8ca50000 	lw	a1,0(a1)
    170c:	00808025 	move	s0,a0
    1710:	3c060000 	lui	a2,0x0
    1714:	24c6006c 	addiu	a2,a2,108
    1718:	27a4006c 	addiu	a0,sp,108
    171c:	24070426 	li	a3,1062
    1720:	0c000000 	jal	0 <EnReeba_Init>
    1724:	afa5007c 	sw	a1,124(sp)
    1728:	0c000000 	jal	0 <EnReeba_Init>
    172c:	8e240000 	lw	a0,0(s1)
    1730:	860e027a 	lh	t6,634(s0)
    1734:	8fa8007c 	lw	t0,124(sp)
    1738:	02202025 	move	a0,s1
    173c:	11c0000b 	beqz	t6,176c <EnReeba_Draw+0x78>
    1740:	00003825 	move	a3,zero
    1744:	8d0302c0 	lw	v1,704(t0)
    1748:	3c18fa00 	lui	t8,0xfa00
    174c:	3c199b37 	lui	t9,0x9b37
    1750:	246f0008 	addiu	t7,v1,8
    1754:	ad0f02c0 	sw	t7,704(t0)
    1758:	3739ffff 	ori	t9,t9,0xffff
    175c:	37180001 	ori	t8,t8,0x1
    1760:	ac780000 	sw	t8,0(v1)
    1764:	10000009 	b	178c <EnReeba_Draw+0x98>
    1768:	ac790004 	sw	t9,4(v1)
    176c:	8d0302c0 	lw	v1,704(t0)
    1770:	3c0afa00 	lui	t2,0xfa00
    1774:	354a0001 	ori	t2,t2,0x1
    1778:	24690008 	addiu	t1,v1,8
    177c:	ad0902c0 	sw	t1,704(t0)
    1780:	240bffff 	li	t3,-1
    1784:	ac6b0004 	sw	t3,4(v1)
    1788:	ac6a0000 	sw	t2,0(v1)
    178c:	8e050150 	lw	a1,336(s0)
    1790:	8e06016c 	lw	a2,364(s0)
    1794:	afb00014 	sw	s0,20(sp)
    1798:	0c000000 	jal	0 <EnReeba_Init>
    179c:	afa00010 	sw	zero,16(sp)
    17a0:	3c060000 	lui	a2,0x0
    17a4:	24c6007c 	addiu	a2,a2,124
    17a8:	27a4006c 	addiu	a0,sp,108
    17ac:	8e250000 	lw	a1,0(s1)
    17b0:	0c000000 	jal	0 <EnReeba_Init>
    17b4:	24070440 	li	a3,1088
    17b8:	3c0c0000 	lui	t4,0x0
    17bc:	8d8c0000 	lw	t4,0(t4)
    17c0:	858d12d4 	lh	t5,4820(t4)
    17c4:	51a0002e 	beqzl	t5,1880 <EnReeba_Draw+0x18c>
    17c8:	8fbf004c 	lw	ra,76(sp)
    17cc:	0c000000 	jal	0 <EnReeba_Init>
    17d0:	86040032 	lh	a0,50(s0)
    17d4:	3c0141f0 	lui	at,0x41f0
    17d8:	44812000 	mtc1	at,$f4
    17dc:	c6080024 	lwc1	$f8,36(s0)
    17e0:	3c0141a0 	lui	at,0x41a0
    17e4:	46040182 	mul.s	$f6,$f0,$f4
    17e8:	44812000 	mtc1	at,$f4
    17ec:	46083280 	add.s	$f10,$f6,$f8
    17f0:	e7aa0058 	swc1	$f10,88(sp)
    17f4:	c6120028 	lwc1	$f18,40(s0)
    17f8:	46049180 	add.s	$f6,$f18,$f4
    17fc:	e7a6005c 	swc1	$f6,92(sp)
    1800:	0c000000 	jal	0 <EnReeba_Init>
    1804:	86040032 	lh	a0,50(s0)
    1808:	3c013f80 	lui	at,0x3f80
    180c:	44818000 	mtc1	at,$f16
    1810:	860e0032 	lh	t6,50(s0)
    1814:	3c0141f0 	lui	at,0x41f0
    1818:	44814000 	mtc1	at,$f8
    181c:	c612002c 	lwc1	$f18,44(s0)
    1820:	86070030 	lh	a3,48(s0)
    1824:	afae0010 	sw	t6,16(sp)
    1828:	46080282 	mul.s	$f10,$f0,$f8
    182c:	860f0034 	lh	t7,52(s0)
    1830:	241800ff 	li	t8,255
    1834:	241900ff 	li	t9,255
    1838:	24090004 	li	t1,4
    183c:	afa90034 	sw	t1,52(sp)
    1840:	afb90030 	sw	t9,48(sp)
    1844:	46125080 	add.s	$f2,$f10,$f18
    1848:	afb80024 	sw	t8,36(sp)
    184c:	afa0002c 	sw	zero,44(sp)
    1850:	afa00028 	sw	zero,40(sp)
    1854:	e7b00020 	swc1	$f16,32(sp)
    1858:	e7b0001c 	swc1	$f16,28(sp)
    185c:	e7b00018 	swc1	$f16,24(sp)
    1860:	afaf0014 	sw	t7,20(sp)
    1864:	8e2a0000 	lw	t2,0(s1)
    1868:	44061000 	mfc1	a2,$f2
    186c:	c7ac0058 	lwc1	$f12,88(sp)
    1870:	c7ae005c 	lwc1	$f14,92(sp)
    1874:	0c000000 	jal	0 <EnReeba_Init>
    1878:	afaa0038 	sw	t2,56(sp)
    187c:	8fbf004c 	lw	ra,76(sp)
    1880:	8fb00044 	lw	s0,68(sp)
    1884:	8fb10048 	lw	s1,72(sp)
    1888:	03e00008 	jr	ra
    188c:	27bd0088 	addiu	sp,sp,136
