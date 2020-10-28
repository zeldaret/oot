
build/src/overlays/actors/ovl_En_Viewer/z_en_viewer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B2A200>:
       0:	03e00008 	jr	ra
       4:	ac8501e0 	sw	a1,480(a0)

00000008 <EnViewer_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afa50044 	sw	a1,68(sp)
      10:	afbf003c 	sw	ra,60(sp)
      14:	afb00038 	sw	s0,56(sp)
      18:	3c050000 	lui	a1,0x0
      1c:	00808025 	move	s0,a0
      20:	0c000000 	jal	0 <func_80B2A200>
      24:	24a50000 	addiu	a1,a1,0
      28:	3c050000 	lui	a1,0x0
      2c:	24a50000 	addiu	a1,a1,0
      30:	0c000000 	jal	0 <func_80B2A200>
      34:	02002025 	move	a0,s0
      38:	3c010000 	lui	at,0x0
      3c:	a0200000 	sb	zero,0(at)
      40:	8603001c 	lh	v1,28(s0)
      44:	24010003 	li	at,3
      48:	a20001e4 	sb	zero,484(s0)
      4c:	00031a03 	sra	v1,v1,0x8
      50:	306300ff 	andi	v1,v1,0xff
      54:	a20001e5 	sb	zero,485(s0)
      58:	1061000a 	beq	v1,at,84 <EnViewer_Init+0x7c>
      5c:	a20001e6 	sb	zero,486(s0)
      60:	24010005 	li	at,5
      64:	10610007 	beq	v1,at,84 <EnViewer_Init+0x7c>
      68:	24010007 	li	at,7
      6c:	10610005 	beq	v1,at,84 <EnViewer_Init+0x7c>
      70:	24010008 	li	at,8
      74:	10610003 	beq	v1,at,84 <EnViewer_Init+0x7c>
      78:	24010009 	li	at,9
      7c:	54610012 	bnel	v1,at,c8 <EnViewer_Init+0xc0>
      80:	8fbf003c 	lw	ra,60(sp)
      84:	44800000 	mtc1	zero,$f0
      88:	8fa60044 	lw	a2,68(sp)
      8c:	240e0023 	li	t6,35
      90:	afae0028 	sw	t6,40(sp)
      94:	02002825 	move	a1,s0
      98:	2407016f 	li	a3,367
      9c:	afa0001c 	sw	zero,28(sp)
      a0:	afa00020 	sw	zero,32(sp)
      a4:	afa00024 	sw	zero,36(sp)
      a8:	24c41c24 	addiu	a0,a2,7204
      ac:	e7a00010 	swc1	$f0,16(sp)
      b0:	e7a00014 	swc1	$f0,20(sp)
      b4:	0c000000 	jal	0 <func_80B2A200>
      b8:	e7a00018 	swc1	$f0,24(sp)
      bc:	3c010000 	lui	at,0x0
      c0:	ac220000 	sw	v0,0(at)
      c4:	8fbf003c 	lw	ra,60(sp)
      c8:	8fb00038 	lw	s0,56(sp)
      cc:	27bd0040 	addiu	sp,sp,64
      d0:	03e00008 	jr	ra
      d4:	00000000 	nop

000000d8 <EnViewer_Destroy>:
      d8:	27bdffe8 	addiu	sp,sp,-24
      dc:	00803025 	move	a2,a0
      e0:	afbf0014 	sw	ra,20(sp)
      e4:	00a02025 	move	a0,a1
      e8:	0c000000 	jal	0 <func_80B2A200>
      ec:	24c5014c 	addiu	a1,a2,332
      f0:	8fbf0014 	lw	ra,20(sp)
      f4:	27bd0018 	addiu	sp,sp,24
      f8:	03e00008 	jr	ra
      fc:	00000000 	nop

00000100 <func_80B2A300>:
     100:	27bdffc8 	addiu	sp,sp,-56
     104:	afbf002c 	sw	ra,44(sp)
     108:	afb00028 	sw	s0,40(sp)
     10c:	afa40038 	sw	a0,56(sp)
     110:	afa5003c 	sw	a1,60(sp)
     114:	afa70044 	sw	a3,68(sp)
     118:	8482001c 	lh	v0,28(a0)
     11c:	24010002 	li	at,2
     120:	8fa4003c 	lw	a0,60(sp)
     124:	00021203 	sra	v0,v0,0x8
     128:	00021400 	sll	v0,v0,0x10
     12c:	00021403 	sra	v0,v0,0x10
     130:	1041000c 	beq	v0,at,164 <func_80B2A300+0x64>
     134:	8fb00038 	lw	s0,56(sp)
     138:	24010003 	li	at,3
     13c:	10410009 	beq	v0,at,164 <func_80B2A300+0x64>
     140:	24010005 	li	at,5
     144:	10410007 	beq	v0,at,164 <func_80B2A300+0x64>
     148:	24010007 	li	at,7
     14c:	10410005 	beq	v0,at,164 <func_80B2A300+0x64>
     150:	24010008 	li	at,8
     154:	10410003 	beq	v0,at,164 <func_80B2A300+0x64>
     158:	24010009 	li	at,9
     15c:	1441000b 	bne	v0,at,18c <func_80B2A300+0x8c>
     160:	00003825 	move	a3,zero
     164:	26100198 	addiu	s0,s0,408
     168:	02002825 	move	a1,s0
     16c:	00003825 	move	a3,zero
     170:	afa00010 	sw	zero,16(sp)
     174:	afa00014 	sw	zero,20(sp)
     178:	afa00018 	sw	zero,24(sp)
     17c:	0c000000 	jal	0 <func_80B2A200>
     180:	a7a20036 	sh	v0,54(sp)
     184:	1000000b 	b	1b4 <func_80B2A300+0xb4>
     188:	87a20036 	lh	v0,54(sp)
     18c:	8fb00038 	lw	s0,56(sp)
     190:	8fa4003c 	lw	a0,60(sp)
     194:	afa00010 	sw	zero,16(sp)
     198:	26100198 	addiu	s0,s0,408
     19c:	02002825 	move	a1,s0
     1a0:	afa00014 	sw	zero,20(sp)
     1a4:	afa00018 	sw	zero,24(sp)
     1a8:	0c000000 	jal	0 <func_80B2A200>
     1ac:	a7a20036 	sh	v0,54(sp)
     1b0:	87a20036 	lh	v0,54(sp)
     1b4:	8fb80038 	lw	t8,56(sp)
     1b8:	8faf003c 	lw	t7,60(sp)
     1bc:	3c0a0001 	lui	t2,0x1
     1c0:	831901dc 	lb	t9,476(t8)
     1c4:	3c018000 	lui	at,0x8000
     1c8:	02002025 	move	a0,s0
     1cc:	00194100 	sll	t0,t9,0x4
     1d0:	01194021 	addu	t0,t0,t9
     1d4:	00084080 	sll	t0,t0,0x2
     1d8:	01e84821 	addu	t1,t7,t0
     1dc:	01495021 	addu	t2,t2,t1
     1e0:	8d4a17b4 	lw	t2,6068(t2)
     1e4:	8fa50044 	lw	a1,68(sp)
     1e8:	01415821 	addu	t3,t2,at
     1ec:	3c010000 	lui	at,0x0
     1f0:	ac2b0018 	sw	t3,24(at)
     1f4:	24010003 	li	at,3
     1f8:	10410007 	beq	v0,at,218 <func_80B2A300+0x118>
     1fc:	24010007 	li	at,7
     200:	10410005 	beq	v0,at,218 <func_80B2A300+0x118>
     204:	24010008 	li	at,8
     208:	10410003 	beq	v0,at,218 <func_80B2A300+0x118>
     20c:	24010009 	li	at,9
     210:	14410005 	bne	v0,at,228 <func_80B2A300+0x128>
     214:	3c064040 	lui	a2,0x4040
     218:	0c000000 	jal	0 <func_80B2A200>
     21c:	3c063f80 	lui	a2,0x3f80
     220:	10000005 	b	238 <func_80B2A300+0x138>
     224:	8fbf002c 	lw	ra,44(sp)
     228:	02002025 	move	a0,s0
     22c:	0c000000 	jal	0 <func_80B2A200>
     230:	8fa50044 	lw	a1,68(sp)
     234:	8fbf002c 	lw	ra,44(sp)
     238:	8fb00028 	lw	s0,40(sp)
     23c:	27bd0038 	addiu	sp,sp,56
     240:	03e00008 	jr	ra
     244:	00000000 	nop

00000248 <func_80B2A448>:
     248:	27bdffd0 	addiu	sp,sp,-48
     24c:	afa40030 	sw	a0,48(sp)
     250:	afa50034 	sw	a1,52(sp)
     254:	00a02025 	move	a0,a1
     258:	8fa50030 	lw	a1,48(sp)
     25c:	afbf0024 	sw	ra,36(sp)
     260:	afa7003c 	sw	a3,60(sp)
     264:	24a50198 	addiu	a1,a1,408
     268:	afa5002c 	sw	a1,44(sp)
     26c:	00003825 	move	a3,zero
     270:	afa00010 	sw	zero,16(sp)
     274:	afa00014 	sw	zero,20(sp)
     278:	0c000000 	jal	0 <func_80B2A200>
     27c:	afa00018 	sw	zero,24(sp)
     280:	8faf0030 	lw	t7,48(sp)
     284:	8fae0034 	lw	t6,52(sp)
     288:	3c090001 	lui	t1,0x1
     28c:	81f801dc 	lb	t8,476(t7)
     290:	3c018000 	lui	at,0x8000
     294:	8fa4002c 	lw	a0,44(sp)
     298:	0018c900 	sll	t9,t8,0x4
     29c:	0338c821 	addu	t9,t9,t8
     2a0:	0019c880 	sll	t9,t9,0x2
     2a4:	01d94021 	addu	t0,t6,t9
     2a8:	01284821 	addu	t1,t1,t0
     2ac:	8d2917b4 	lw	t1,6068(t1)
     2b0:	8fa5003c 	lw	a1,60(sp)
     2b4:	3c064040 	lui	a2,0x4040
     2b8:	01215021 	addu	t2,t1,at
     2bc:	3c010000 	lui	at,0x0
     2c0:	0c000000 	jal	0 <func_80B2A200>
     2c4:	ac2a0018 	sw	t2,24(at)
     2c8:	8fbf0024 	lw	ra,36(sp)
     2cc:	27bd0030 	addiu	sp,sp,48
     2d0:	03e00008 	jr	ra
     2d4:	00000000 	nop

000002d8 <func_80B2A4D8>:
     2d8:	27bdffe8 	addiu	sp,sp,-24
     2dc:	afa40018 	sw	a0,24(sp)
     2e0:	afa5001c 	sw	a1,28(sp)
     2e4:	00a02025 	move	a0,a1
     2e8:	8fa50018 	lw	a1,24(sp)
     2ec:	afbf0014 	sw	ra,20(sp)
     2f0:	afa70024 	sw	a3,36(sp)
     2f4:	0c000000 	jal	0 <func_80B2A200>
     2f8:	24a5014c 	addiu	a1,a1,332
     2fc:	8fa80018 	lw	t0,24(sp)
     300:	8fa70024 	lw	a3,36(sp)
     304:	24010003 	li	at,3
     308:	8503001c 	lh	v1,28(t0)
     30c:	25040198 	addiu	a0,t0,408
     310:	00e02825 	move	a1,a3
     314:	00031a03 	sra	v1,v1,0x8
     318:	306300ff 	andi	v1,v1,0xff
     31c:	1061000e 	beq	v1,at,358 <func_80B2A4D8+0x80>
     320:	24010004 	li	at,4
     324:	1061000c 	beq	v1,at,358 <func_80B2A4D8+0x80>
     328:	24010007 	li	at,7
     32c:	1061000a 	beq	v1,at,358 <func_80B2A4D8+0x80>
     330:	24010008 	li	at,8
     334:	10610008 	beq	v1,at,358 <func_80B2A4D8+0x80>
     338:	24010009 	li	at,9
     33c:	10610006 	beq	v1,at,358 <func_80B2A4D8+0x80>
     340:	3c064040 	lui	a2,0x4040
     344:	25040198 	addiu	a0,t0,408
     348:	0c000000 	jal	0 <func_80B2A200>
     34c:	00e02825 	move	a1,a3
     350:	10000004 	b	364 <func_80B2A4D8+0x8c>
     354:	8fbf0014 	lw	ra,20(sp)
     358:	0c000000 	jal	0 <func_80B2A200>
     35c:	3c063f80 	lui	a2,0x3f80
     360:	8fbf0014 	lw	ra,20(sp)
     364:	27bd0018 	addiu	sp,sp,24
     368:	03e00008 	jr	ra
     36c:	00000000 	nop

00000370 <func_80B2A570>:
     370:	27bdffd0 	addiu	sp,sp,-48
     374:	afbf001c 	sw	ra,28(sp)
     378:	afb10018 	sw	s1,24(sp)
     37c:	afb00014 	sw	s0,20(sp)
     380:	afa50034 	sw	a1,52(sp)
     384:	848e001c 	lh	t6,28(a0)
     388:	3c190000 	lui	t9,0x0
     38c:	3c010001 	lui	at,0x1
     390:	000e7a03 	sra	t7,t6,0x8
     394:	000fc080 	sll	t8,t7,0x2
     398:	030fc021 	addu	t8,t8,t7
     39c:	00808025 	move	s0,a0
     3a0:	0018c080 	sll	t8,t8,0x2
     3a4:	27390000 	addiu	t9,t9,0
     3a8:	342117a4 	ori	at,at,0x17a4
     3ac:	03198821 	addu	s1,t8,t9
     3b0:	00a12021 	addu	a0,a1,at
     3b4:	86250000 	lh	a1,0(s1)
     3b8:	0c000000 	jal	0 <func_80B2A200>
     3bc:	afa40024 	sw	a0,36(sp)
     3c0:	04410007 	bgez	v0,3e0 <func_80B2A570+0x70>
     3c4:	afa20028 	sw	v0,40(sp)
     3c8:	3c040000 	lui	a0,0x0
     3cc:	3c050000 	lui	a1,0x0
     3d0:	24a50000 	addiu	a1,a1,0
     3d4:	24840000 	addiu	a0,a0,0
     3d8:	0c000000 	jal	0 <func_80B2A200>
     3dc:	24060240 	li	a2,576
     3e0:	8fa40024 	lw	a0,36(sp)
     3e4:	0c000000 	jal	0 <func_80B2A200>
     3e8:	86250002 	lh	a1,2(s1)
     3ec:	a20201dc 	sb	v0,476(s0)
     3f0:	820801dc 	lb	t0,476(s0)
     3f4:	3c040000 	lui	a0,0x0
     3f8:	24840000 	addiu	a0,a0,0
     3fc:	05010004 	bgez	t0,410 <func_80B2A570+0xa0>
     400:	3c050000 	lui	a1,0x0
     404:	24a50000 	addiu	a1,a1,0
     408:	0c000000 	jal	0 <func_80B2A200>
     40c:	24060243 	li	a2,579
     410:	8fa40024 	lw	a0,36(sp)
     414:	0c000000 	jal	0 <func_80B2A200>
     418:	8fa50028 	lw	a1,40(sp)
     41c:	10400005 	beqz	v0,434 <func_80B2A570+0xc4>
     420:	8fa40024 	lw	a0,36(sp)
     424:	0c000000 	jal	0 <func_80B2A200>
     428:	820501dc 	lb	a1,476(s0)
     42c:	14400006 	bnez	v0,448 <func_80B2A570+0xd8>
     430:	240b0001 	li	t3,1
     434:	8e090004 	lw	t1,4(s0)
     438:	2401ffbf 	li	at,-65
     43c:	01215024 	and	t2,t1,at
     440:	10000041 	b	548 <func_80B2A570+0x1d8>
     444:	ae0a0004 	sw	t2,4(s0)
     448:	a20b01e6 	sb	t3,486(s0)
     44c:	8fac0028 	lw	t4,40(sp)
     450:	02002825 	move	a1,s0
     454:	a20c001e 	sb	t4,30(s0)
     458:	0c000000 	jal	0 <func_80B2A200>
     45c:	8fa40034 	lw	a0,52(sp)
     460:	922d0004 	lbu	t5,4(s1)
     464:	02002025 	move	a0,s0
     468:	3c014f80 	lui	at,0x4f80
     46c:	448d2000 	mtc1	t5,$f4
     470:	05a10004 	bgez	t5,484 <func_80B2A570+0x114>
     474:	468021a0 	cvt.s.w	$f6,$f4
     478:	44814000 	mtc1	at,$f8
     47c:	00000000 	nop
     480:	46083180 	add.s	$f6,$f6,$f8
     484:	3c0142c8 	lui	at,0x42c8
     488:	44815000 	mtc1	at,$f10
     48c:	00000000 	nop
     490:	460a3403 	div.s	$f16,$f6,$f10
     494:	44058000 	mfc1	a1,$f16
     498:	0c000000 	jal	0 <func_80B2A200>
     49c:	00000000 	nop
     4a0:	822e0005 	lb	t6,5(s1)
     4a4:	92380006 	lbu	t8,6(s1)
     4a8:	92280007 	lbu	t0,7(s1)
     4ac:	000e7880 	sll	t7,t6,0x2
     4b0:	01ee7823 	subu	t7,t7,t6
     4b4:	000f78c0 	sll	t7,t7,0x3
     4b8:	01ee7821 	addu	t7,t7,t6
     4bc:	000f7880 	sll	t7,t7,0x2
     4c0:	448f9000 	mtc1	t7,$f18
     4c4:	44882000 	mtc1	t0,$f4
     4c8:	3c060000 	lui	a2,0x0
     4cc:	468094a0 	cvt.s.w	$f18,$f18
     4d0:	0018c880 	sll	t9,t8,0x2
     4d4:	00d93021 	addu	a2,a2,t9
     4d8:	8cc60000 	lw	a2,0(a2)
     4dc:	260400b4 	addiu	a0,s0,180
     4e0:	3c014f80 	lui	at,0x4f80
     4e4:	44059000 	mfc1	a1,$f18
     4e8:	05010004 	bgez	t0,4fc <func_80B2A570+0x18c>
     4ec:	46802120 	cvt.s.w	$f4,$f4
     4f0:	44814000 	mtc1	at,$f8
     4f4:	00000000 	nop
     4f8:	46082100 	add.s	$f4,$f4,$f8
     4fc:	44072000 	mfc1	a3,$f4
     500:	0c000000 	jal	0 <func_80B2A200>
     504:	00000000 	nop
     508:	92290008 	lbu	t1,8(s1)
     50c:	3c190000 	lui	t9,0x0
     510:	02002025 	move	a0,s0
     514:	312a00ff 	andi	t2,t1,0xff
     518:	000a5880 	sll	t3,t2,0x2
     51c:	032bc821 	addu	t9,t9,t3
     520:	a20901dd 	sb	t1,477(s0)
     524:	8f390000 	lw	t9,0(t9)
     528:	8e270010 	lw	a3,16(s1)
     52c:	8e26000c 	lw	a2,12(s1)
     530:	0320f809 	jalr	t9
     534:	8fa50034 	lw	a1,52(sp)
     538:	3c050000 	lui	a1,0x0
     53c:	24a50000 	addiu	a1,a1,0
     540:	0c000000 	jal	0 <func_80B2A200>
     544:	02002025 	move	a0,s0
     548:	8fbf001c 	lw	ra,28(sp)
     54c:	8fb00014 	lw	s0,20(sp)
     550:	8fb10018 	lw	s1,24(sp)
     554:	03e00008 	jr	ra
     558:	27bd0030 	addiu	sp,sp,48

0000055c <func_80B2A75C>:
     55c:	27bdffa8 	addiu	sp,sp,-88
     560:	afbf003c 	sw	ra,60(sp)
     564:	afb00038 	sw	s0,56(sp)
     568:	afa5005c 	sw	a1,92(sp)
     56c:	8482001c 	lh	v0,28(a0)
     570:	24010002 	li	at,2
     574:	00808025 	move	s0,a0
     578:	00021203 	sra	v0,v0,0x8
     57c:	304200ff 	andi	v0,v0,0xff
     580:	14410015 	bne	v0,at,5d8 <func_80B2A75C+0x7c>
     584:	afa20044 	sw	v0,68(sp)
     588:	3c0f0000 	lui	t7,0x0
     58c:	8def1360 	lw	t7,4960(t7)
     590:	24010005 	li	at,5
     594:	15e100c0 	bne	t7,at,898 <func_80B2A75C+0x33c>
     598:	00000000 	nop
     59c:	94a31d74 	lhu	v1,7540(a1)
     5a0:	24010318 	li	at,792
     5a4:	54610006 	bnel	v1,at,5c0 <func_80B2A75C+0x64>
     5a8:	2401034d 	li	at,845
     5ac:	0c000000 	jal	0 <func_80B2A200>
     5b0:	2405686e 	li	a1,26734
     5b4:	100000b8 	b	898 <func_80B2A75C+0x33c>
     5b8:	00000000 	nop
     5bc:	2401034d 	li	at,845
     5c0:	146100b5 	bne	v1,at,898 <func_80B2A75C+0x33c>
     5c4:	02002025 	move	a0,s0
     5c8:	0c000000 	jal	0 <func_80B2A200>
     5cc:	2405686f 	li	a1,26735
     5d0:	100000b1 	b	898 <func_80B2A75C+0x33c>
     5d4:	00000000 	nop
     5d8:	8fb90044 	lw	t9,68(sp)
     5dc:	24010007 	li	at,7
     5e0:	02002025 	move	a0,s0
     5e4:	1721000a 	bne	t9,at,610 <func_80B2A75C+0xb4>
     5e8:	8faa0044 	lw	t2,68(sp)
     5ec:	3c053e99 	lui	a1,0x3e99
     5f0:	0c000000 	jal	0 <func_80B2A200>
     5f4:	34a5999a 	ori	a1,a1,0x999a
     5f8:	3c010000 	lui	at,0x0
     5fc:	c4200000 	lwc1	$f0,0(at)
     600:	e60000f4 	swc1	$f0,244(s0)
     604:	e60000f8 	swc1	$f0,248(s0)
     608:	100000a3 	b	898 <func_80B2A75C+0x33c>
     60c:	e60000fc 	swc1	$f0,252(s0)
     610:	24010003 	li	at,3
     614:	15410066 	bne	t2,at,7b0 <func_80B2A75C+0x254>
     618:	3c020000 	lui	v0,0x0
     61c:	8c421360 	lw	v0,4960(v0)
     620:	24010004 	li	at,4
     624:	8fab005c 	lw	t3,92(sp)
     628:	5441002b 	bnel	v0,at,6d8 <func_80B2A75C+0x17c>
     62c:	8fae005c 	lw	t6,92(sp)
     630:	95631d74 	lhu	v1,7540(t3)
     634:	286100dc 	slti	at,v1,220
     638:	1420000d 	bnez	at,670 <func_80B2A75C+0x114>
     63c:	24010118 	li	at,280
     640:	10610017 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     644:	24010140 	li	at,320
     648:	10610015 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     64c:	2401017c 	li	at,380
     650:	10610013 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     654:	24010199 	li	at,409
     658:	10610011 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     65c:	240101b6 	li	at,438
     660:	1061000f 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     664:	00000000 	nop
     668:	1000001b 	b	6d8 <func_80B2A75C+0x17c>
     66c:	8fae005c 	lw	t6,92(sp)
     670:	24010014 	li	at,20
     674:	1061000a 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     678:	2401003b 	li	at,59
     67c:	10610008 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     680:	24010047 	li	at,71
     684:	10610006 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     688:	24010081 	li	at,129
     68c:	10610004 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     690:	2401008c 	li	at,140
     694:	10610002 	beq	v1,at,6a0 <func_80B2A75C+0x144>
     698:	240100db 	li	at,219
     69c:	1461000d 	bne	v1,at,6d4 <func_80B2A75C+0x178>
     6a0:	3c0c0000 	lui	t4,0x0
     6a4:	3c0d0000 	lui	t5,0x0
     6a8:	25ad0000 	addiu	t5,t5,0
     6ac:	25870000 	addiu	a3,t4,0
     6b0:	3c050000 	lui	a1,0x0
     6b4:	24a50000 	addiu	a1,a1,0
     6b8:	afa70010 	sw	a3,16(sp)
     6bc:	afad0014 	sw	t5,20(sp)
     6c0:	2404481d 	li	a0,18461
     6c4:	0c000000 	jal	0 <func_80B2A200>
     6c8:	24060004 	li	a2,4
     6cc:	3c020000 	lui	v0,0x0
     6d0:	8c421360 	lw	v0,4960(v0)
     6d4:	8fae005c 	lw	t6,92(sp)
     6d8:	24010005 	li	at,5
     6dc:	1441001f 	bne	v0,at,75c <func_80B2A75C+0x200>
     6e0:	95c31d74 	lhu	v1,7540(t6)
     6e4:	240105e4 	li	at,1508
     6e8:	14610005 	bne	v1,at,700 <func_80B2A75C+0x1a4>
     6ec:	02002025 	move	a0,s0
     6f0:	0c000000 	jal	0 <func_80B2A200>
     6f4:	240539d6 	li	a1,14806
     6f8:	8fa6005c 	lw	a2,92(sp)
     6fc:	94c31d74 	lhu	v1,7540(a2)
     700:	24010609 	li	at,1545
     704:	14610015 	bne	v1,at,75c <func_80B2A75C+0x200>
     708:	8fa6005c 	lw	a2,92(sp)
     70c:	3c014200 	lui	at,0x4200
     710:	44812000 	mtc1	at,$f4
     714:	3c0142ca 	lui	at,0x42ca
     718:	44813000 	mtc1	at,$f6
     71c:	3c010000 	lui	at,0x0
     720:	c4280000 	lwc1	$f8,0(at)
     724:	2418000c 	li	t8,12
     728:	afb80028 	sw	t8,40(sp)
     72c:	24c41c24 	addiu	a0,a2,7204
     730:	02002825 	move	a1,s0
     734:	240700f5 	li	a3,245
     738:	afa0001c 	sw	zero,28(sp)
     73c:	afa00020 	sw	zero,32(sp)
     740:	afa00024 	sw	zero,36(sp)
     744:	e7a40010 	swc1	$f4,16(sp)
     748:	e7a60014 	swc1	$f6,20(sp)
     74c:	0c000000 	jal	0 <func_80B2A200>
     750:	e7a80018 	swc1	$f8,24(sp)
     754:	8fa6005c 	lw	a2,92(sp)
     758:	94c31d74 	lhu	v1,7540(a2)
     75c:	240103fc 	li	at,1020
     760:	14610005 	bne	v1,at,778 <func_80B2A75C+0x21c>
     764:	3c040100 	lui	a0,0x100
     768:	0c000000 	jal	0 <func_80B2A200>
     76c:	34840023 	ori	a0,a0,0x23
     770:	8fa6005c 	lw	a2,92(sp)
     774:	94c31d74 	lhu	v1,7540(a2)
     778:	240103c0 	li	at,960
     77c:	14610046 	bne	v1,at,898 <func_80B2A75C+0x33c>
     780:	3c070000 	lui	a3,0x0
     784:	3c190000 	lui	t9,0x0
     788:	24e70000 	addiu	a3,a3,0
     78c:	27390000 	addiu	t9,t9,0
     790:	afb90014 	sw	t9,20(sp)
     794:	afa70010 	sw	a3,16(sp)
     798:	24042816 	li	a0,10262
     79c:	260500e4 	addiu	a1,s0,228
     7a0:	0c000000 	jal	0 <func_80B2A200>
     7a4:	24060004 	li	a2,4
     7a8:	1000003b 	b	898 <func_80B2A75C+0x33c>
     7ac:	00000000 	nop
     7b0:	8faa0044 	lw	t2,68(sp)
     7b4:	24010006 	li	at,6
     7b8:	3c020000 	lui	v0,0x0
     7bc:	1541000c 	bne	t2,at,7f0 <func_80B2A75C+0x294>
     7c0:	8fab0044 	lw	t3,68(sp)
     7c4:	8c421360 	lw	v0,4960(v0)
     7c8:	24010005 	li	at,5
     7cc:	02002025 	move	a0,s0
     7d0:	10410003 	beq	v0,at,7e0 <func_80B2A75C+0x284>
     7d4:	2401000a 	li	at,10
     7d8:	1441002f 	bne	v0,at,898 <func_80B2A75C+0x33c>
     7dc:	00000000 	nop
     7e0:	0c000000 	jal	0 <func_80B2A200>
     7e4:	24052078 	li	a1,8312
     7e8:	1000002b 	b	898 <func_80B2A75C+0x33c>
     7ec:	00000000 	nop
     7f0:	24010004 	li	at,4
     7f4:	15610028 	bne	t3,at,898 <func_80B2A75C+0x33c>
     7f8:	00000000 	nop
     7fc:	c60a01b0 	lwc1	$f10,432(s0)
     800:	8e0201a0 	lw	v0,416(s0)
     804:	3c0d0600 	lui	t5,0x600
     808:	4600540d 	trunc.w.s	$f16,$f10
     80c:	25ad3858 	addiu	t5,t5,14424
     810:	3c0e0600 	lui	t6,0x600
     814:	24010008 	li	at,8
     818:	44038000 	mfc1	v1,$f16
     81c:	25ce4aa4 	addiu	t6,t6,19108
     820:	00031c00 	sll	v1,v1,0x10
     824:	15a2000e 	bne	t5,v0,860 <func_80B2A75C+0x304>
     828:	00031c03 	sra	v1,v1,0x10
     82c:	14610005 	bne	v1,at,844 <func_80B2A75C+0x2e8>
     830:	02002025 	move	a0,s0
     834:	2405283d 	li	a1,10301
     838:	0c000000 	jal	0 <func_80B2A200>
     83c:	a7a3004e 	sh	v1,78(sp)
     840:	87a3004e 	lh	v1,78(sp)
     844:	2401001e 	li	at,30
     848:	14610013 	bne	v1,at,898 <func_80B2A75C+0x33c>
     84c:	02002025 	move	a0,s0
     850:	0c000000 	jal	0 <func_80B2A200>
     854:	2405282b 	li	a1,10283
     858:	1000000f 	b	898 <func_80B2A75C+0x33c>
     85c:	00000000 	nop
     860:	15c20008 	bne	t6,v0,884 <func_80B2A75C+0x328>
     864:	3c0f0600 	lui	t7,0x600
     868:	24010019 	li	at,25
     86c:	1461000a 	bne	v1,at,898 <func_80B2A75C+0x33c>
     870:	02002025 	move	a0,s0
     874:	0c000000 	jal	0 <func_80B2A200>
     878:	2405282c 	li	a1,10284
     87c:	10000006 	b	898 <func_80B2A75C+0x33c>
     880:	00000000 	nop
     884:	25ef2650 	addiu	t7,t7,9808
     888:	15e20003 	bne	t7,v0,898 <func_80B2A75C+0x33c>
     88c:	02002025 	move	a0,s0
     890:	0c000000 	jal	0 <func_80B2A200>
     894:	24052078 	li	a1,8312
     898:	3c030000 	lui	v1,0x0
     89c:	24630000 	addiu	v1,v1,0
     8a0:	84620000 	lh	v0,0(v1)
     8a4:	02002025 	move	a0,s0
     8a8:	10400002 	beqz	v0,8b4 <func_80B2A75C+0x358>
     8ac:	2458ffff 	addiu	t8,v0,-1
     8b0:	a4780000 	sh	t8,0(v1)
     8b4:	0c000000 	jal	0 <func_80B2A200>
     8b8:	8fa5005c 	lw	a1,92(sp)
     8bc:	0c000000 	jal	0 <func_80B2A200>
     8c0:	02002025 	move	a0,s0
     8c4:	26040198 	addiu	a0,s0,408
     8c8:	0c000000 	jal	0 <func_80B2A200>
     8cc:	afa40040 	sw	a0,64(sp)
     8d0:	8fb90044 	lw	t9,68(sp)
     8d4:	24070003 	li	a3,3
     8d8:	8fa6005c 	lw	a2,92(sp)
     8dc:	10f90004 	beq	a3,t9,8f0 <func_80B2A75C+0x394>
     8e0:	00402825 	move	a1,v0
     8e4:	24090004 	li	t1,4
     8e8:	553900a4 	bnel	t1,t9,b7c <L80B2AD44+0x38>
     8ec:	8fac0044 	lw	t4,68(sp)
     8f0:	90ca1d6c 	lbu	t2,7532(a2)
     8f4:	24090004 	li	t1,4
     8f8:	3c0b0000 	lui	t3,0x0
     8fc:	114001e3 	beqz	t2,108c <L80B2AD44+0x548>
     900:	24080001 	li	t0,1
     904:	8cc31d90 	lw	v1,7568(a2)
     908:	506001e1 	beqzl	v1,1090 <L80B2AD44+0x54c>
     90c:	8fbf003c 	lw	ra,60(sp)
     910:	94640000 	lhu	a0,0(v1)
     914:	24010002 	li	at,2
     918:	14810019 	bne	a0,at,980 <func_80B2A75C+0x424>
     91c:	00000000 	nop
     920:	856b0000 	lh	t3,0(t3)
     924:	15600016 	bnez	t3,980 <func_80B2A75C+0x424>
     928:	00000000 	nop
     92c:	8fac0044 	lw	t4,68(sp)
     930:	54ec000b 	bnel	a3,t4,960 <func_80B2A75C+0x404>
     934:	8e0e01a0 	lw	t6,416(s0)
     938:	8e0d01a0 	lw	t5,416(s0)
     93c:	3c050600 	lui	a1,0x600
     940:	24a52928 	addiu	a1,a1,10536
     944:	10ad01d1 	beq	a1,t5,108c <L80B2AD44+0x548>
     948:	8fa40040 	lw	a0,64(sp)
     94c:	0c000000 	jal	0 <func_80B2A200>
     950:	3c063f80 	lui	a2,0x3f80
     954:	100001ce 	b	1090 <L80B2AD44+0x54c>
     958:	8fbf003c 	lw	ra,60(sp)
     95c:	8e0e01a0 	lw	t6,416(s0)
     960:	3c050600 	lui	a1,0x600
     964:	24a54aa4 	addiu	a1,a1,19108
     968:	10ae01c8 	beq	a1,t6,108c <L80B2AD44+0x548>
     96c:	8fa40040 	lw	a0,64(sp)
     970:	0c000000 	jal	0 <func_80B2A200>
     974:	3c063f80 	lui	a2,0x3f80
     978:	100001c5 	b	1090 <L80B2AD44+0x54c>
     97c:	8fbf003c 	lw	ra,60(sp)
     980:	15040018 	bne	t0,a0,9e4 <func_80B2A75C+0x488>
     984:	8fab0044 	lw	t3,68(sp)
     988:	8fb80044 	lw	t8,68(sp)
     98c:	240f0064 	li	t7,100
     990:	3c010000 	lui	at,0x0
     994:	14f8000a 	bne	a3,t8,9c0 <func_80B2A75C+0x464>
     998:	a42f0000 	sh	t7,0(at)
     99c:	8e1901a0 	lw	t9,416(s0)
     9a0:	3c050600 	lui	a1,0x600
     9a4:	24a51d28 	addiu	a1,a1,7464
     9a8:	10b901b8 	beq	a1,t9,108c <L80B2AD44+0x548>
     9ac:	8fa40040 	lw	a0,64(sp)
     9b0:	0c000000 	jal	0 <func_80B2A200>
     9b4:	3c063f80 	lui	a2,0x3f80
     9b8:	100001b5 	b	1090 <L80B2AD44+0x54c>
     9bc:	8fbf003c 	lw	ra,60(sp)
     9c0:	8e0a01a0 	lw	t2,416(s0)
     9c4:	3c050600 	lui	a1,0x600
     9c8:	24a53858 	addiu	a1,a1,14424
     9cc:	10aa01af 	beq	a1,t2,108c <L80B2AD44+0x548>
     9d0:	8fa40040 	lw	a0,64(sp)
     9d4:	0c000000 	jal	0 <func_80B2A200>
     9d8:	3c063f80 	lui	a2,0x3f80
     9dc:	100001ac 	b	1090 <L80B2AD44+0x54c>
     9e0:	8fbf003c 	lw	ra,60(sp)
     9e4:	54eb005a 	bnel	a3,t3,b50 <L80B2AD44+0xc>
     9e8:	8e0b01a0 	lw	t3,416(s0)
     9ec:	920c01e5 	lbu	t4,485(s0)
     9f0:	2d810008 	sltiu	at,t4,8
     9f4:	102001a5 	beqz	at,108c <L80B2AD44+0x548>
     9f8:	000c6080 	sll	t4,t4,0x2
     9fc:	3c010000 	lui	at,0x0
     a00:	002c0821 	addu	at,at,t4
     a04:	8c2c0000 	lw	t4,0(at)
     a08:	01800008 	jr	t4
     a0c:	00000000 	nop

00000a10 <L80B2AC10>:
     a10:	1524019e 	bne	t1,a0,108c <L80B2AD44+0x548>
     a14:	3c050600 	lui	a1,0x600
     a18:	8fa40040 	lw	a0,64(sp)
     a1c:	24a50f54 	addiu	a1,a1,3924
     a20:	0c000000 	jal	0 <func_80B2A200>
     a24:	3c06c0a0 	lui	a2,0xc0a0
     a28:	920d01e5 	lbu	t5,485(s0)
     a2c:	25ae0001 	addiu	t6,t5,1
     a30:	10000196 	b	108c <L80B2AD44+0x548>
     a34:	a20e01e5 	sb	t6,485(s0)

00000a38 <L80B2AC38>:
     a38:	10400194 	beqz	v0,108c <L80B2AD44+0x548>
     a3c:	8fa40040 	lw	a0,64(sp)
     a40:	3c050600 	lui	a1,0x600
     a44:	24a514f4 	addiu	a1,a1,5364
     a48:	0c000000 	jal	0 <func_80B2A200>
     a4c:	3c06c0a0 	lui	a2,0xc0a0
     a50:	920f01e5 	lbu	t7,485(s0)
     a54:	25f80001 	addiu	t8,t7,1
     a58:	1000018c 	b	108c <L80B2AD44+0x548>
     a5c:	a21801e5 	sb	t8,485(s0)

00000a60 <L80B2AC60>:
     a60:	24010005 	li	at,5
     a64:	14810189 	bne	a0,at,108c <L80B2AD44+0x548>
     a68:	3c050600 	lui	a1,0x600
     a6c:	8fa40040 	lw	a0,64(sp)
     a70:	24a508a0 	addiu	a1,a1,2208
     a74:	0c000000 	jal	0 <func_80B2A200>
     a78:	3c06c0a0 	lui	a2,0xc0a0
     a7c:	921901e5 	lbu	t9,485(s0)
     a80:	272a0001 	addiu	t2,t9,1
     a84:	10000181 	b	108c <L80B2AD44+0x548>
     a88:	a20a01e5 	sb	t2,485(s0)

00000a8c <L80B2AC8C>:
     a8c:	1040017f 	beqz	v0,108c <L80B2AD44+0x548>
     a90:	8fa40040 	lw	a0,64(sp)
     a94:	3c050600 	lui	a1,0x600
     a98:	24a50bc8 	addiu	a1,a1,3016
     a9c:	0c000000 	jal	0 <func_80B2A200>
     aa0:	3c06c0a0 	lui	a2,0xc0a0
     aa4:	920b01e5 	lbu	t3,485(s0)
     aa8:	256c0001 	addiu	t4,t3,1
     aac:	10000177 	b	108c <L80B2AD44+0x548>
     ab0:	a20c01e5 	sb	t4,485(s0)

00000ab4 <L80B2ACB4>:
     ab4:	2401000b 	li	at,11
     ab8:	14810174 	bne	a0,at,108c <L80B2AD44+0x548>
     abc:	3c050600 	lui	a1,0x600
     ac0:	8fa40040 	lw	a0,64(sp)
     ac4:	24a514f4 	addiu	a1,a1,5364
     ac8:	0c000000 	jal	0 <func_80B2A200>
     acc:	3c06c1a0 	lui	a2,0xc1a0
     ad0:	920d01e5 	lbu	t5,485(s0)
     ad4:	25ae0001 	addiu	t6,t5,1
     ad8:	1000016c 	b	108c <L80B2AD44+0x548>
     adc:	a20e01e5 	sb	t6,485(s0)

00000ae0 <L80B2ACE0>:
     ae0:	24010008 	li	at,8
     ae4:	14810169 	bne	a0,at,108c <L80B2AD44+0x548>
     ae8:	3c050600 	lui	a1,0x600
     aec:	24a52928 	addiu	a1,a1,10536
     af0:	8fa40040 	lw	a0,64(sp)
     af4:	0c000000 	jal	0 <func_80B2A200>
     af8:	3c06c170 	lui	a2,0xc170
     afc:	920f01e5 	lbu	t7,485(s0)
     b00:	25f80001 	addiu	t8,t7,1
     b04:	10000161 	b	108c <L80B2AD44+0x548>
     b08:	a21801e5 	sb	t8,485(s0)

00000b0c <L80B2AD0C>:
     b0c:	2401000c 	li	at,12
     b10:	1481015e 	bne	a0,at,108c <L80B2AD44+0x548>
     b14:	240539c8 	li	a1,14792
     b18:	0c000000 	jal	0 <func_80B2A200>
     b1c:	02002025 	move	a0,s0
     b20:	3c050600 	lui	a1,0x600
     b24:	24a505b4 	addiu	a1,a1,1460
     b28:	8fa40040 	lw	a0,64(sp)
     b2c:	0c000000 	jal	0 <func_80B2A200>
     b30:	3c064040 	lui	a2,0x4040
     b34:	921901e5 	lbu	t9,485(s0)
     b38:	272a0001 	addiu	t2,t9,1
     b3c:	10000153 	b	108c <L80B2AD44+0x548>
     b40:	a20a01e5 	sb	t2,485(s0)

00000b44 <L80B2AD44>:
     b44:	10000151 	b	108c <L80B2AD44+0x548>
     b48:	a20001e5 	sb	zero,485(s0)
     b4c:	8e0b01a0 	lw	t3,416(s0)
     b50:	3c050600 	lui	a1,0x600
     b54:	24a52650 	addiu	a1,a1,9808
     b58:	10ab014c 	beq	a1,t3,108c <L80B2AD44+0x548>
     b5c:	2401000c 	li	at,12
     b60:	1481014a 	bne	a0,at,108c <L80B2AD44+0x548>
     b64:	3c064040 	lui	a2,0x4040
     b68:	0c000000 	jal	0 <func_80B2A200>
     b6c:	8fa40040 	lw	a0,64(sp)
     b70:	10000147 	b	1090 <L80B2AD44+0x54c>
     b74:	8fbf003c 	lw	ra,60(sp)
     b78:	8fac0044 	lw	t4,68(sp)
     b7c:	24080001 	li	t0,1
     b80:	8faa0044 	lw	t2,68(sp)
     b84:	150c0064 	bne	t0,t4,d18 <L80B2AD44+0x1d4>
     b88:	24010002 	li	at,2
     b8c:	3c0d0000 	lui	t5,0x0
     b90:	8dad1360 	lw	t5,4960(t5)
     b94:	24010005 	li	at,5
     b98:	55a10019 	bnel	t5,at,c00 <L80B2AD44+0xbc>
     b9c:	94cf1d74 	lhu	t7,7540(a2)
     ba0:	94ce1d74 	lhu	t6,7540(a2)
     ba4:	2401034d 	li	at,845
     ba8:	24c41c24 	addiu	a0,a2,7204
     bac:	15c10029 	bne	t6,at,c54 <L80B2AD44+0x110>
     bb0:	02002825 	move	a1,s0
     bb4:	3c014080 	lui	at,0x4080
     bb8:	44819000 	mtc1	at,$f18
     bbc:	3c0142a2 	lui	at,0x42a2
     bc0:	44812000 	mtc1	at,$f4
     bc4:	3c010000 	lui	at,0x0
     bc8:	c4260000 	lwc1	$f6,0(at)
     bcc:	240700f1 	li	a3,241
     bd0:	afa0001c 	sw	zero,28(sp)
     bd4:	afa00020 	sw	zero,32(sp)
     bd8:	afa00024 	sw	zero,36(sp)
     bdc:	afa00028 	sw	zero,40(sp)
     be0:	e7b20010 	swc1	$f18,16(sp)
     be4:	e7a40014 	swc1	$f4,20(sp)
     be8:	0c000000 	jal	0 <func_80B2A200>
     bec:	e7a60018 	swc1	$f6,24(sp)
     bf0:	8fa6005c 	lw	a2,92(sp)
     bf4:	10000017 	b	c54 <L80B2AD44+0x110>
     bf8:	24080001 	li	t0,1
     bfc:	94cf1d74 	lhu	t7,7540(a2)
     c00:	240100c3 	li	at,195
     c04:	24c41c24 	addiu	a0,a2,7204
     c08:	15e10012 	bne	t7,at,c54 <L80B2AD44+0x110>
     c0c:	02002825 	move	a1,s0
     c10:	3c014080 	lui	at,0x4080
     c14:	44814000 	mtc1	at,$f8
     c18:	3c0142a2 	lui	at,0x42a2
     c1c:	44815000 	mtc1	at,$f10
     c20:	3c010000 	lui	at,0x0
     c24:	c4300000 	lwc1	$f16,0(at)
     c28:	240700f1 	li	a3,241
     c2c:	afa0001c 	sw	zero,28(sp)
     c30:	afa00020 	sw	zero,32(sp)
     c34:	afa00024 	sw	zero,36(sp)
     c38:	afa80028 	sw	t0,40(sp)
     c3c:	e7a80010 	swc1	$f8,16(sp)
     c40:	e7aa0014 	swc1	$f10,20(sp)
     c44:	0c000000 	jal	0 <func_80B2A200>
     c48:	e7b00018 	swc1	$f16,24(sp)
     c4c:	8fa6005c 	lw	a2,92(sp)
     c50:	24080001 	li	t0,1
     c54:	920301e5 	lbu	v1,485(s0)
     c58:	50600006 	beqzl	v1,c74 <L80B2AD44+0x130>
     c5c:	90d81d6c 	lbu	t8,7532(a2)
     c60:	50680019 	beql	v1,t0,cc8 <L80B2AD44+0x184>
     c64:	90cd1d6c 	lbu	t5,7532(a2)
     c68:	10000109 	b	1090 <L80B2AD44+0x54c>
     c6c:	8fbf003c 	lw	ra,60(sp)
     c70:	90d81d6c 	lbu	t8,7532(a2)
     c74:	53000106 	beqzl	t8,1090 <L80B2AD44+0x54c>
     c78:	8fbf003c 	lw	ra,60(sp)
     c7c:	8cc21d8c 	lw	v0,7564(a2)
     c80:	50400103 	beqzl	v0,1090 <L80B2AD44+0x54c>
     c84:	8fbf003c 	lw	ra,60(sp)
     c88:	94590000 	lhu	t9,0(v0)
     c8c:	24010006 	li	at,6
     c90:	572100ff 	bnel	t9,at,1090 <L80B2AD44+0x54c>
     c94:	8fbf003c 	lw	ra,60(sp)
     c98:	8e0a01a0 	lw	t2,416(s0)
     c9c:	3c050600 	lui	a1,0x600
     ca0:	24a52574 	addiu	a1,a1,9588
     ca4:	10aa00f9 	beq	a1,t2,108c <L80B2AD44+0x548>
     ca8:	8fa40040 	lw	a0,64(sp)
     cac:	0c000000 	jal	0 <func_80B2A200>
     cb0:	3c063fc0 	lui	a2,0x3fc0
     cb4:	920b01e5 	lbu	t3,485(s0)
     cb8:	256c0001 	addiu	t4,t3,1
     cbc:	100000f3 	b	108c <L80B2AD44+0x548>
     cc0:	a20c01e5 	sb	t4,485(s0)
     cc4:	90cd1d6c 	lbu	t5,7532(a2)
     cc8:	51a000f1 	beqzl	t5,1090 <L80B2AD44+0x54c>
     ccc:	8fbf003c 	lw	ra,60(sp)
     cd0:	8cc21d8c 	lw	v0,7564(a2)
     cd4:	504000ee 	beqzl	v0,1090 <L80B2AD44+0x54c>
     cd8:	8fbf003c 	lw	ra,60(sp)
     cdc:	944e0000 	lhu	t6,0(v0)
     ce0:	24010002 	li	at,2
     ce4:	55c100ea 	bnel	t6,at,1090 <L80B2AD44+0x54c>
     ce8:	8fbf003c 	lw	ra,60(sp)
     cec:	8e0f01a0 	lw	t7,416(s0)
     cf0:	3c050600 	lui	a1,0x600
     cf4:	24a529cc 	addiu	a1,a1,10700
     cf8:	10af00e4 	beq	a1,t7,108c <L80B2AD44+0x548>
     cfc:	8fa40040 	lw	a0,64(sp)
     d00:	0c000000 	jal	0 <func_80B2A200>
     d04:	3c064040 	lui	a2,0x4040
     d08:	921801e5 	lbu	t8,485(s0)
     d0c:	27190001 	addiu	t9,t8,1
     d10:	100000de 	b	108c <L80B2AD44+0x548>
     d14:	a21901e5 	sb	t9,485(s0)
     d18:	15410067 	bne	t2,at,eb8 <L80B2AD44+0x374>
     d1c:	8fae0044 	lw	t6,68(sp)
     d20:	84cb00a4 	lh	t3,164(a2)
     d24:	24010051 	li	at,81
     d28:	00002025 	move	a0,zero
     d2c:	15610032 	bne	t3,at,df8 <L80B2AD44+0x2b4>
     d30:	00000000 	nop
     d34:	920301e5 	lbu	v1,485(s0)
     d38:	50600006 	beqzl	v1,d54 <L80B2AD44+0x210>
     d3c:	90cc1d6c 	lbu	t4,7532(a2)
     d40:	50680019 	beql	v1,t0,da8 <L80B2AD44+0x264>
     d44:	90d91d6c 	lbu	t9,7532(a2)
     d48:	100000d1 	b	1090 <L80B2AD44+0x54c>
     d4c:	8fbf003c 	lw	ra,60(sp)
     d50:	90cc1d6c 	lbu	t4,7532(a2)
     d54:	518000ce 	beqzl	t4,1090 <L80B2AD44+0x54c>
     d58:	8fbf003c 	lw	ra,60(sp)
     d5c:	8cc21d8c 	lw	v0,7564(a2)
     d60:	504000cb 	beqzl	v0,1090 <L80B2AD44+0x54c>
     d64:	8fbf003c 	lw	ra,60(sp)
     d68:	944d0000 	lhu	t5,0(v0)
     d6c:	24010006 	li	at,6
     d70:	55a100c7 	bnel	t5,at,1090 <L80B2AD44+0x54c>
     d74:	8fbf003c 	lw	ra,60(sp)
     d78:	8e0e01a0 	lw	t6,416(s0)
     d7c:	3c050600 	lui	a1,0x600
     d80:	24a51410 	addiu	a1,a1,5136
     d84:	10ae00c1 	beq	a1,t6,108c <L80B2AD44+0x548>
     d88:	8fa40040 	lw	a0,64(sp)
     d8c:	0c000000 	jal	0 <func_80B2A200>
     d90:	3c063fc0 	lui	a2,0x3fc0
     d94:	920f01e5 	lbu	t7,485(s0)
     d98:	25f80001 	addiu	t8,t7,1
     d9c:	100000bb 	b	108c <L80B2AD44+0x548>
     da0:	a21801e5 	sb	t8,485(s0)
     da4:	90d91d6c 	lbu	t9,7532(a2)
     da8:	532000b9 	beqzl	t9,1090 <L80B2AD44+0x54c>
     dac:	8fbf003c 	lw	ra,60(sp)
     db0:	8cc21d8c 	lw	v0,7564(a2)
     db4:	504000b6 	beqzl	v0,1090 <L80B2AD44+0x54c>
     db8:	8fbf003c 	lw	ra,60(sp)
     dbc:	944a0000 	lhu	t2,0(v0)
     dc0:	24010002 	li	at,2
     dc4:	554100b2 	bnel	t2,at,1090 <L80B2AD44+0x54c>
     dc8:	8fbf003c 	lw	ra,60(sp)
     dcc:	8e0b01a0 	lw	t3,416(s0)
     dd0:	3c050600 	lui	a1,0x600
     dd4:	24a50450 	addiu	a1,a1,1104
     dd8:	10ab00ac 	beq	a1,t3,108c <L80B2AD44+0x548>
     ddc:	8fa40040 	lw	a0,64(sp)
     de0:	0c000000 	jal	0 <func_80B2A200>
     de4:	3c064040 	lui	a2,0x4040
     de8:	920c01e5 	lbu	t4,485(s0)
     dec:	258d0001 	addiu	t5,t4,1
     df0:	100000a6 	b	108c <L80B2AD44+0x548>
     df4:	a20d01e5 	sb	t5,485(s0)
     df8:	0c000000 	jal	0 <func_80B2A200>
     dfc:	afa50050 	sw	a1,80(sp)
     e00:	920301e5 	lbu	v1,485(s0)
     e04:	8fa50050 	lw	a1,80(sp)
     e08:	8fa6005c 	lw	a2,92(sp)
     e0c:	10600009 	beqz	v1,e34 <L80B2AD44+0x2f0>
     e10:	24080001 	li	t0,1
     e14:	10680010 	beq	v1,t0,e58 <L80B2AD44+0x314>
     e18:	24010002 	li	at,2
     e1c:	1061001c 	beq	v1,at,e90 <L80B2AD44+0x34c>
     e20:	24010003 	li	at,3
     e24:	5061009a 	beql	v1,at,1090 <L80B2AD44+0x54c>
     e28:	8fbf003c 	lw	ra,60(sp)
     e2c:	10000098 	b	1090 <L80B2AD44+0x54c>
     e30:	8fbf003c 	lw	ra,60(sp)
     e34:	3c050600 	lui	a1,0x600
     e38:	24a5504c 	addiu	a1,a1,20556
     e3c:	8fa40040 	lw	a0,64(sp)
     e40:	0c000000 	jal	0 <func_80B2A200>
     e44:	3c063f80 	lui	a2,0x3f80
     e48:	920e01e5 	lbu	t6,485(s0)
     e4c:	25cf0001 	addiu	t7,t6,1
     e50:	1000008e 	b	108c <L80B2AD44+0x548>
     e54:	a20f01e5 	sb	t7,485(s0)
     e58:	8cd81d8c 	lw	t8,7564(a2)
     e5c:	2401000b 	li	at,11
     e60:	3c050600 	lui	a1,0x600
     e64:	97190000 	lhu	t9,0(t8)
     e68:	24a5420c 	addiu	a1,a1,16908
     e6c:	8fa40040 	lw	a0,64(sp)
     e70:	57210087 	bnel	t9,at,1090 <L80B2AD44+0x54c>
     e74:	8fbf003c 	lw	ra,60(sp)
     e78:	0c000000 	jal	0 <func_80B2A200>
     e7c:	3c06c0a0 	lui	a2,0xc0a0
     e80:	920a01e5 	lbu	t2,485(s0)
     e84:	254b0001 	addiu	t3,t2,1
     e88:	10000080 	b	108c <L80B2AD44+0x548>
     e8c:	a20b01e5 	sb	t3,485(s0)
     e90:	10a0007e 	beqz	a1,108c <L80B2AD44+0x548>
     e94:	8fa40040 	lw	a0,64(sp)
     e98:	3c050600 	lui	a1,0x600
     e9c:	24a548fc 	addiu	a1,a1,18684
     ea0:	0c000000 	jal	0 <func_80B2A200>
     ea4:	3c06c0a0 	lui	a2,0xc0a0
     ea8:	920c01e5 	lbu	t4,485(s0)
     eac:	258d0001 	addiu	t5,t4,1
     eb0:	10000076 	b	108c <L80B2AD44+0x548>
     eb4:	a20d01e5 	sb	t5,485(s0)
     eb8:	24040007 	li	a0,7
     ebc:	548e002f 	bnel	a0,t6,f7c <L80B2AD44+0x438>
     ec0:	8fae0044 	lw	t6,68(sp)
     ec4:	920301e5 	lbu	v1,485(s0)
     ec8:	50600006 	beqzl	v1,ee4 <L80B2AD44+0x3a0>
     ecc:	90cf1d6c 	lbu	t7,7532(a2)
     ed0:	1068001f 	beq	v1,t0,f50 <L80B2AD44+0x40c>
     ed4:	00000000 	nop
     ed8:	1000006d 	b	1090 <L80B2AD44+0x54c>
     edc:	8fbf003c 	lw	ra,60(sp)
     ee0:	90cf1d6c 	lbu	t7,7532(a2)
     ee4:	51e0006a 	beqzl	t7,1090 <L80B2AD44+0x54c>
     ee8:	8fbf003c 	lw	ra,60(sp)
     eec:	8cc31d90 	lw	v1,7568(a2)
     ef0:	50600067 	beqzl	v1,1090 <L80B2AD44+0x54c>
     ef4:	8fbf003c 	lw	ra,60(sp)
     ef8:	94780000 	lhu	t8,0(v1)
     efc:	3c070000 	lui	a3,0x0
     f00:	24e70000 	addiu	a3,a3,0
     f04:	14980061 	bne	a0,t8,108c <L80B2AD44+0x548>
     f08:	3c050000 	lui	a1,0x0
     f0c:	3c190000 	lui	t9,0x0
     f10:	27390000 	addiu	t9,t9,0
     f14:	afb90014 	sw	t9,20(sp)
     f18:	240439c7 	li	a0,14791
     f1c:	24a50000 	addiu	a1,a1,0
     f20:	24060004 	li	a2,4
     f24:	0c000000 	jal	0 <func_80B2A200>
     f28:	afa70010 	sw	a3,16(sp)
     f2c:	3c050600 	lui	a1,0x600
     f30:	24a54534 	addiu	a1,a1,17716
     f34:	8fa40040 	lw	a0,64(sp)
     f38:	0c000000 	jal	0 <func_80B2A200>
     f3c:	3c06c0a0 	lui	a2,0xc0a0
     f40:	920a01e5 	lbu	t2,485(s0)
     f44:	254b0001 	addiu	t3,t2,1
     f48:	10000050 	b	108c <L80B2AD44+0x548>
     f4c:	a20b01e5 	sb	t3,485(s0)
     f50:	1040004e 	beqz	v0,108c <L80B2AD44+0x548>
     f54:	8fa40040 	lw	a0,64(sp)
     f58:	3c050600 	lui	a1,0x600
     f5c:	24a548b0 	addiu	a1,a1,18608
     f60:	0c000000 	jal	0 <func_80B2A200>
     f64:	3c06c0a0 	lui	a2,0xc0a0
     f68:	920c01e5 	lbu	t4,485(s0)
     f6c:	258d0001 	addiu	t5,t4,1
     f70:	10000046 	b	108c <L80B2AD44+0x548>
     f74:	a20d01e5 	sb	t5,485(s0)
     f78:	8fae0044 	lw	t6,68(sp)
     f7c:	24010008 	li	at,8
     f80:	55c10043 	bnel	t6,at,1090 <L80B2AD44+0x54c>
     f84:	8fbf003c 	lw	ra,60(sp)
     f88:	920301e5 	lbu	v1,485(s0)
     f8c:	5060000a 	beqzl	v1,fb8 <L80B2AD44+0x474>
     f90:	90cf1d6c 	lbu	t7,7532(a2)
     f94:	10680019 	beq	v1,t0,ffc <L80B2AD44+0x4b8>
     f98:	24010002 	li	at,2
     f9c:	10610025 	beq	v1,at,1034 <L80B2AD44+0x4f0>
     fa0:	00000000 	nop
     fa4:	5067002e 	beql	v1,a3,1060 <L80B2AD44+0x51c>
     fa8:	8cd91d90 	lw	t9,7568(a2)
     fac:	10000037 	b	108c <L80B2AD44+0x548>
     fb0:	a20001e5 	sb	zero,485(s0)
     fb4:	90cf1d6c 	lbu	t7,7532(a2)
     fb8:	51e00035 	beqzl	t7,1090 <L80B2AD44+0x54c>
     fbc:	8fbf003c 	lw	ra,60(sp)
     fc0:	8cc31d90 	lw	v1,7568(a2)
     fc4:	50600032 	beqzl	v1,1090 <L80B2AD44+0x54c>
     fc8:	8fbf003c 	lw	ra,60(sp)
     fcc:	94780000 	lhu	t8,0(v1)
     fd0:	24010009 	li	at,9
     fd4:	8fa40040 	lw	a0,64(sp)
     fd8:	1701002c 	bne	t8,at,108c <L80B2AD44+0x548>
     fdc:	3c050600 	lui	a1,0x600
     fe0:	24a550a8 	addiu	a1,a1,20648
     fe4:	0c000000 	jal	0 <func_80B2A200>
     fe8:	3c063f80 	lui	a2,0x3f80
     fec:	921901e5 	lbu	t9,485(s0)
     ff0:	272a0001 	addiu	t2,t9,1
     ff4:	10000025 	b	108c <L80B2AD44+0x548>
     ff8:	a20a01e5 	sb	t2,485(s0)
     ffc:	8ccb1d90 	lw	t3,7568(a2)
    1000:	2401000a 	li	at,10
    1004:	3c050600 	lui	a1,0x600
    1008:	956c0000 	lhu	t4,0(t3)
    100c:	24a53284 	addiu	a1,a1,12932
    1010:	8fa40040 	lw	a0,64(sp)
    1014:	5581001e 	bnel	t4,at,1090 <L80B2AD44+0x54c>
    1018:	8fbf003c 	lw	ra,60(sp)
    101c:	0c000000 	jal	0 <func_80B2A200>
    1020:	3c06c120 	lui	a2,0xc120
    1024:	920d01e5 	lbu	t5,485(s0)
    1028:	25ae0001 	addiu	t6,t5,1
    102c:	10000017 	b	108c <L80B2AD44+0x548>
    1030:	a20e01e5 	sb	t6,485(s0)
    1034:	10400015 	beqz	v0,108c <L80B2AD44+0x548>
    1038:	8fa40040 	lw	a0,64(sp)
    103c:	3c050600 	lui	a1,0x600
    1040:	24a53d84 	addiu	a1,a1,15748
    1044:	0c000000 	jal	0 <func_80B2A200>
    1048:	3c06c0a0 	lui	a2,0xc0a0
    104c:	920f01e5 	lbu	t7,485(s0)
    1050:	25f80001 	addiu	t8,t7,1
    1054:	1000000d 	b	108c <L80B2AD44+0x548>
    1058:	a21801e5 	sb	t8,485(s0)
    105c:	8cd91d90 	lw	t9,7568(a2)
    1060:	3c050600 	lui	a1,0x600
    1064:	24a53428 	addiu	a1,a1,13352
    1068:	972a0000 	lhu	t2,0(t9)
    106c:	8fa40040 	lw	a0,64(sp)
    1070:	552a0007 	bnel	t1,t2,1090 <L80B2AD44+0x54c>
    1074:	8fbf003c 	lw	ra,60(sp)
    1078:	0c000000 	jal	0 <func_80B2A200>
    107c:	3c06c0a0 	lui	a2,0xc0a0
    1080:	920b01e5 	lbu	t3,485(s0)
    1084:	256c0001 	addiu	t4,t3,1
    1088:	a20c01e5 	sb	t4,485(s0)
    108c:	8fbf003c 	lw	ra,60(sp)
    1090:	8fb00038 	lw	s0,56(sp)
    1094:	27bd0058 	addiu	sp,sp,88
    1098:	03e00008 	jr	ra
    109c:	00000000 	nop

000010a0 <EnViewer_Update>:
    10a0:	27bdffe8 	addiu	sp,sp,-24
    10a4:	afbf0014 	sw	ra,20(sp)
    10a8:	808e01dc 	lb	t6,476(a0)
    10ac:	3c190001 	lui	t9,0x1
    10b0:	3c018000 	lui	at,0x8000
    10b4:	000e7900 	sll	t7,t6,0x4
    10b8:	01ee7821 	addu	t7,t7,t6
    10bc:	000f7880 	sll	t7,t7,0x2
    10c0:	00afc021 	addu	t8,a1,t7
    10c4:	0338c821 	addu	t9,t9,t8
    10c8:	8f3917b4 	lw	t9,6068(t9)
    10cc:	03214021 	addu	t0,t9,at
    10d0:	3c010000 	lui	at,0x0
    10d4:	ac280018 	sw	t0,24(at)
    10d8:	8c9901e0 	lw	t9,480(a0)
    10dc:	0320f809 	jalr	t9
    10e0:	00000000 	nop
    10e4:	8fbf0014 	lw	ra,20(sp)
    10e8:	27bd0018 	addiu	sp,sp,24
    10ec:	03e00008 	jr	ra
    10f0:	00000000 	nop

000010f4 <func_80B2B2F4>:
    10f4:	3c0e0000 	lui	t6,0x0
    10f8:	8dce1360 	lw	t6,4960(t6)
    10fc:	24010004 	li	at,4
    1100:	afa7000c 	sw	a3,12(sp)
    1104:	55c1000c 	bnel	t6,at,1138 <func_80B2B2F4+0x44>
    1108:	94821d74 	lhu	v0,7540(a0)
    110c:	948f1d74 	lhu	t7,7540(a0)
    1110:	29e10190 	slti	at,t7,400
    1114:	14200011 	bnez	at,115c <func_80B2B2F4+0x68>
    1118:	24010005 	li	at,5
    111c:	14a1000f 	bne	a1,at,115c <func_80B2B2F4+0x68>
    1120:	3c180601 	lui	t8,0x601
    1124:	2718e1a8 	addiu	t8,t8,-7768
    1128:	acd80000 	sw	t8,0(a2)
    112c:	03e00008 	jr	ra
    1130:	00001025 	move	v0,zero
    1134:	94821d74 	lhu	v0,7540(a0)
    1138:	284105e6 	slti	at,v0,1510
    113c:	14200007 	bnez	at,115c <func_80B2B2F4+0x68>
    1140:	28410673 	slti	at,v0,1651
    1144:	10200005 	beqz	at,115c <func_80B2B2F4+0x68>
    1148:	24010005 	li	at,5
    114c:	14a10003 	bne	a1,at,115c <func_80B2B2F4+0x68>
    1150:	3c190601 	lui	t9,0x601
    1154:	2739e1a8 	addiu	t9,t9,-7768
    1158:	acd90000 	sw	t9,0(a2)
    115c:	03e00008 	jr	ra
    1160:	00001025 	move	v0,zero

00001164 <func_80B2B364>:
    1164:	27bdffc0 	addiu	sp,sp,-64
    1168:	2401000b 	li	at,11
    116c:	afbf001c 	sw	ra,28(sp)
    1170:	afb00018 	sw	s0,24(sp)
    1174:	afa40040 	sw	a0,64(sp)
    1178:	afa60048 	sw	a2,72(sp)
    117c:	14a10035 	bne	a1,at,1254 <func_80B2B364+0xf0>
    1180:	afa7004c 	sw	a3,76(sp)
    1184:	8c850000 	lw	a1,0(a0)
    1188:	3c060000 	lui	a2,0x0
    118c:	24c60000 	addiu	a2,a2,0
    1190:	27a4002c 	addiu	a0,sp,44
    1194:	24070555 	li	a3,1365
    1198:	0c000000 	jal	0 <func_80B2A200>
    119c:	00a08025 	move	s0,a1
    11a0:	8faf0040 	lw	t7,64(sp)
    11a4:	0c000000 	jal	0 <func_80B2A200>
    11a8:	8de40000 	lw	a0,0(t7)
    11ac:	8e0202d0 	lw	v0,720(s0)
    11b0:	3c19da38 	lui	t9,0xda38
    11b4:	37390003 	ori	t9,t9,0x3
    11b8:	24580008 	addiu	t8,v0,8
    11bc:	ae1802d0 	sw	t8,720(s0)
    11c0:	ac590000 	sw	t9,0(v0)
    11c4:	8fa80040 	lw	t0,64(sp)
    11c8:	3c050000 	lui	a1,0x0
    11cc:	24a50000 	addiu	a1,a1,0
    11d0:	8d040000 	lw	a0,0(t0)
    11d4:	2406055a 	li	a2,1370
    11d8:	0c000000 	jal	0 <func_80B2A200>
    11dc:	afa20028 	sw	v0,40(sp)
    11e0:	8fa30028 	lw	v1,40(sp)
    11e4:	3c040601 	lui	a0,0x601
    11e8:	2484be90 	addiu	a0,a0,-16752
    11ec:	ac620004 	sw	v0,4(v1)
    11f0:	8e0202d0 	lw	v0,720(s0)
    11f4:	00045900 	sll	t3,a0,0x4
    11f8:	000b6702 	srl	t4,t3,0x1c
    11fc:	24490008 	addiu	t1,v0,8
    1200:	ae0902d0 	sw	t1,720(s0)
    1204:	000c6880 	sll	t5,t4,0x2
    1208:	3c0ade00 	lui	t2,0xde00
    120c:	3c0e0000 	lui	t6,0x0
    1210:	01cd7021 	addu	t6,t6,t5
    1214:	3c0100ff 	lui	at,0xff
    1218:	ac4a0000 	sw	t2,0(v0)
    121c:	8dce0000 	lw	t6,0(t6)
    1220:	3421ffff 	ori	at,at,0xffff
    1224:	00817824 	and	t7,a0,at
    1228:	3c018000 	lui	at,0x8000
    122c:	01cfc021 	addu	t8,t6,t7
    1230:	0301c821 	addu	t9,t8,at
    1234:	ac590004 	sw	t9,4(v0)
    1238:	8fa80040 	lw	t0,64(sp)
    123c:	3c060000 	lui	a2,0x0
    1240:	24c60000 	addiu	a2,a2,0
    1244:	27a4002c 	addiu	a0,sp,44
    1248:	2407055c 	li	a3,1372
    124c:	0c000000 	jal	0 <func_80B2A200>
    1250:	8d050000 	lw	a1,0(t0)
    1254:	8fbf001c 	lw	ra,28(sp)
    1258:	8fb00018 	lw	s0,24(sp)
    125c:	27bd0040 	addiu	sp,sp,64
    1260:	03e00008 	jr	ra
    1264:	00000000 	nop

00001268 <func_80B2B468>:
    1268:	27bdffe8 	addiu	sp,sp,-24
    126c:	2401000f 	li	at,15
    1270:	afbf0014 	sw	ra,20(sp)
    1274:	afa40018 	sw	a0,24(sp)
    1278:	afa60020 	sw	a2,32(sp)
    127c:	14a10006 	bne	a1,at,1298 <func_80B2B468+0x30>
    1280:	afa70024 	sw	a3,36(sp)
    1284:	3c040000 	lui	a0,0x0
    1288:	3c050000 	lui	a1,0x0
    128c:	24a50000 	addiu	a1,a1,0
    1290:	0c000000 	jal	0 <func_80B2A200>
    1294:	24840000 	addiu	a0,a0,0
    1298:	8fbf0014 	lw	ra,20(sp)
    129c:	27bd0018 	addiu	sp,sp,24
    12a0:	03e00008 	jr	ra
    12a4:	00000000 	nop

000012a8 <func_80B2B4A8>:
    12a8:	27bdff88 	addiu	sp,sp,-120
    12ac:	afbf002c 	sw	ra,44(sp)
    12b0:	afb00028 	sw	s0,40(sp)
    12b4:	afa5007c 	sw	a1,124(sp)
    12b8:	8ca50000 	lw	a1,0(a1)
    12bc:	00808025 	move	s0,a0
    12c0:	3c060000 	lui	a2,0x0
    12c4:	24c60000 	addiu	a2,a2,0
    12c8:	27a40060 	addiu	a0,sp,96
    12cc:	a7a00076 	sh	zero,118(sp)
    12d0:	2407057d 	li	a3,1405
    12d4:	0c000000 	jal	0 <func_80B2A200>
    12d8:	afa50070 	sw	a1,112(sp)
    12dc:	8607001c 	lh	a3,28(s0)
    12e0:	240a0003 	li	t2,3
    12e4:	87a30076 	lh	v1,118(sp)
    12e8:	00073a03 	sra	a3,a3,0x8
    12ec:	00073c00 	sll	a3,a3,0x10
    12f0:	00073c03 	sra	a3,a3,0x10
    12f4:	10ea0007 	beq	a3,t2,1314 <func_80B2B4A8+0x6c>
    12f8:	8fa80070 	lw	t0,112(sp)
    12fc:	24010005 	li	at,5
    1300:	10e10004 	beq	a3,at,1314 <func_80B2B4A8+0x6c>
    1304:	24010007 	li	at,7
    1308:	10e10002 	beq	a3,at,1314 <func_80B2B4A8+0x6c>
    130c:	24010008 	li	at,8
    1310:	14e10094 	bne	a3,at,1564 <func_80B2B4A8+0x2bc>
    1314:	3c0f0000 	lui	t7,0x0
    1318:	8def1360 	lw	t7,4960(t7)
    131c:	24010004 	li	at,4
    1320:	8fb8007c 	lw	t8,124(sp)
    1324:	11e10002 	beq	t7,at,1330 <func_80B2B4A8+0x88>
    1328:	3c098000 	lui	t1,0x8000
    132c:	24030095 	li	v1,149
    1330:	97021d74 	lhu	v0,7540(t8)
    1334:	24790467 	addiu	t9,v1,1127
    1338:	3c0cdb06 	lui	t4,0xdb06
    133c:	0322082a 	slt	at,t9,v0
    1340:	14200020 	bnez	at,13c4 <func_80B2B4A8+0x11c>
    1344:	246b0468 	addiu	t3,v1,1128
    1348:	8d0202c0 	lw	v0,704(t0)
    134c:	3c040601 	lui	a0,0x601
    1350:	2484f178 	addiu	a0,a0,-3720
    1354:	00046900 	sll	t5,a0,0x4
    1358:	000d7702 	srl	t6,t5,0x1c
    135c:	3c180000 	lui	t8,0x0
    1360:	244b0008 	addiu	t3,v0,8
    1364:	ad0b02c0 	sw	t3,704(t0)
    1368:	27180000 	addiu	t8,t8,0
    136c:	000e7880 	sll	t7,t6,0x2
    1370:	358c0020 	ori	t4,t4,0x20
    1374:	01f82821 	addu	a1,t7,t8
    1378:	ac4c0000 	sw	t4,0(v0)
    137c:	8cb90000 	lw	t9,0(a1)
    1380:	3c0100ff 	lui	at,0xff
    1384:	3421ffff 	ori	at,at,0xffff
    1388:	00813024 	and	a2,a0,at
    138c:	03265821 	addu	t3,t9,a2
    1390:	01696021 	addu	t4,t3,t1
    1394:	ac4c0004 	sw	t4,4(v0)
    1398:	8d0202c0 	lw	v0,704(t0)
    139c:	3c0edb06 	lui	t6,0xdb06
    13a0:	35ce0024 	ori	t6,t6,0x24
    13a4:	244d0008 	addiu	t5,v0,8
    13a8:	ad0d02c0 	sw	t5,704(t0)
    13ac:	ac4e0000 	sw	t6,0(v0)
    13b0:	8caf0000 	lw	t7,0(a1)
    13b4:	01e6c021 	addu	t8,t7,a2
    13b8:	0309c821 	addu	t9,t8,t1
    13bc:	10000080 	b	15c0 <func_80B2B4A8+0x318>
    13c0:	ac590004 	sw	t9,4(v0)
    13c4:	0162082a 	slt	at,t3,v0
    13c8:	14200022 	bnez	at,1454 <func_80B2B4A8+0x1ac>
    13cc:	246c0469 	addiu	t4,v1,1129
    13d0:	8d0202c0 	lw	v0,704(t0)
    13d4:	3c040601 	lui	a0,0x601
    13d8:	2484f378 	addiu	a0,a0,-3208
    13dc:	00047100 	sll	t6,a0,0x4
    13e0:	000e7f02 	srl	t7,t6,0x1c
    13e4:	3c0ddb06 	lui	t5,0xdb06
    13e8:	3c190000 	lui	t9,0x0
    13ec:	244c0008 	addiu	t4,v0,8
    13f0:	ad0c02c0 	sw	t4,704(t0)
    13f4:	27390000 	addiu	t9,t9,0
    13f8:	35ad0020 	ori	t5,t5,0x20
    13fc:	000fc080 	sll	t8,t7,0x2
    1400:	03192821 	addu	a1,t8,t9
    1404:	ac4d0000 	sw	t5,0(v0)
    1408:	8cab0000 	lw	t3,0(a1)
    140c:	3c0100ff 	lui	at,0xff
    1410:	3421ffff 	ori	at,at,0xffff
    1414:	00813024 	and	a2,a0,at
    1418:	3c098000 	lui	t1,0x8000
    141c:	01666021 	addu	t4,t3,a2
    1420:	01896821 	addu	t5,t4,t1
    1424:	ac4d0004 	sw	t5,4(v0)
    1428:	8d0202c0 	lw	v0,704(t0)
    142c:	3c0fdb06 	lui	t7,0xdb06
    1430:	35ef0024 	ori	t7,t7,0x24
    1434:	244e0008 	addiu	t6,v0,8
    1438:	ad0e02c0 	sw	t6,704(t0)
    143c:	ac4f0000 	sw	t7,0(v0)
    1440:	8cb80000 	lw	t8,0(a1)
    1444:	0306c821 	addu	t9,t8,a2
    1448:	03295821 	addu	t3,t9,t1
    144c:	1000005c 	b	15c0 <func_80B2B4A8+0x318>
    1450:	ac4b0004 	sw	t3,4(v0)
    1454:	0182082a 	slt	at,t4,v0
    1458:	14200022 	bnez	at,14e4 <func_80B2B4A8+0x23c>
    145c:	3c098000 	lui	t1,0x8000
    1460:	8d0202c0 	lw	v0,704(t0)
    1464:	3c040601 	lui	a0,0x601
    1468:	2484f578 	addiu	a0,a0,-2696
    146c:	00047900 	sll	t7,a0,0x4
    1470:	000fc702 	srl	t8,t7,0x1c
    1474:	3c0edb06 	lui	t6,0xdb06
    1478:	3c0b0000 	lui	t3,0x0
    147c:	244d0008 	addiu	t5,v0,8
    1480:	ad0d02c0 	sw	t5,704(t0)
    1484:	256b0000 	addiu	t3,t3,0
    1488:	35ce0020 	ori	t6,t6,0x20
    148c:	0018c880 	sll	t9,t8,0x2
    1490:	032b2821 	addu	a1,t9,t3
    1494:	ac4e0000 	sw	t6,0(v0)
    1498:	8cac0000 	lw	t4,0(a1)
    149c:	3c0100ff 	lui	at,0xff
    14a0:	3421ffff 	ori	at,at,0xffff
    14a4:	00813024 	and	a2,a0,at
    14a8:	3c098000 	lui	t1,0x8000
    14ac:	01866821 	addu	t5,t4,a2
    14b0:	01a97021 	addu	t6,t5,t1
    14b4:	ac4e0004 	sw	t6,4(v0)
    14b8:	8d0202c0 	lw	v0,704(t0)
    14bc:	3c18db06 	lui	t8,0xdb06
    14c0:	37180024 	ori	t8,t8,0x24
    14c4:	244f0008 	addiu	t7,v0,8
    14c8:	ad0f02c0 	sw	t7,704(t0)
    14cc:	ac580000 	sw	t8,0(v0)
    14d0:	8cb90000 	lw	t9,0(a1)
    14d4:	03265821 	addu	t3,t9,a2
    14d8:	01696021 	addu	t4,t3,t1
    14dc:	10000038 	b	15c0 <func_80B2B4A8+0x318>
    14e0:	ac4c0004 	sw	t4,4(v0)
    14e4:	8d0202c0 	lw	v0,704(t0)
    14e8:	3c040601 	lui	a0,0x601
    14ec:	2484f778 	addiu	a0,a0,-2184
    14f0:	00047900 	sll	t7,a0,0x4
    14f4:	000fc702 	srl	t8,t7,0x1c
    14f8:	3c0edb06 	lui	t6,0xdb06
    14fc:	3c0b0000 	lui	t3,0x0
    1500:	244d0008 	addiu	t5,v0,8
    1504:	ad0d02c0 	sw	t5,704(t0)
    1508:	256b0000 	addiu	t3,t3,0
    150c:	35ce0020 	ori	t6,t6,0x20
    1510:	0018c880 	sll	t9,t8,0x2
    1514:	032b2821 	addu	a1,t9,t3
    1518:	ac4e0000 	sw	t6,0(v0)
    151c:	8cac0000 	lw	t4,0(a1)
    1520:	3c0100ff 	lui	at,0xff
    1524:	3421ffff 	ori	at,at,0xffff
    1528:	00813024 	and	a2,a0,at
    152c:	01866821 	addu	t5,t4,a2
    1530:	01a97021 	addu	t6,t5,t1
    1534:	ac4e0004 	sw	t6,4(v0)
    1538:	8d0202c0 	lw	v0,704(t0)
    153c:	3c18db06 	lui	t8,0xdb06
    1540:	37180024 	ori	t8,t8,0x24
    1544:	244f0008 	addiu	t7,v0,8
    1548:	ad0f02c0 	sw	t7,704(t0)
    154c:	ac580000 	sw	t8,0(v0)
    1550:	8cb90000 	lw	t9,0(a1)
    1554:	03265821 	addu	t3,t9,a2
    1558:	01696021 	addu	t4,t3,t1
    155c:	10000018 	b	15c0 <func_80B2B4A8+0x318>
    1560:	ac4c0004 	sw	t4,4(v0)
    1564:	24010009 	li	at,9
    1568:	14e10015 	bne	a3,at,15c0 <func_80B2B4A8+0x318>
    156c:	3c098000 	lui	t1,0x8000
    1570:	8d0302d0 	lw	v1,720(t0)
    1574:	3c040601 	lui	a0,0x601
    1578:	2484a4e0 	addiu	a0,a0,-23328
    157c:	00047900 	sll	t7,a0,0x4
    1580:	000fc702 	srl	t8,t7,0x1c
    1584:	3c0edb06 	lui	t6,0xdb06
    1588:	246d0008 	addiu	t5,v1,8
    158c:	ad0d02d0 	sw	t5,720(t0)
    1590:	35ce0020 	ori	t6,t6,0x20
    1594:	0018c880 	sll	t9,t8,0x2
    1598:	3c0b0000 	lui	t3,0x0
    159c:	01795821 	addu	t3,t3,t9
    15a0:	ac6e0000 	sw	t6,0(v1)
    15a4:	8d6b0000 	lw	t3,0(t3)
    15a8:	3c0100ff 	lui	at,0xff
    15ac:	3421ffff 	ori	at,at,0xffff
    15b0:	00816024 	and	t4,a0,at
    15b4:	016c6821 	addu	t5,t3,t4
    15b8:	01a97021 	addu	t6,t5,t1
    15bc:	ac6e0004 	sw	t6,4(v1)
    15c0:	24010009 	li	at,9
    15c4:	14e1000c 	bne	a3,at,15f8 <func_80B2B4A8+0x350>
    15c8:	8fa4007c 	lw	a0,124(sp)
    15cc:	8e05019c 	lw	a1,412(s0)
    15d0:	8e0601b8 	lw	a2,440(s0)
    15d4:	9207019a 	lbu	a3,410(s0)
    15d8:	3c0f0000 	lui	t7,0x0
    15dc:	25ef0000 	addiu	t7,t7,0
    15e0:	afaf0014 	sw	t7,20(sp)
    15e4:	afb00018 	sw	s0,24(sp)
    15e8:	0c000000 	jal	0 <func_80B2A200>
    15ec:	afa00010 	sw	zero,16(sp)
    15f0:	10000037 	b	16d0 <func_80B2B4A8+0x428>
    15f4:	8faf007c 	lw	t7,124(sp)
    15f8:	14ea0011 	bne	a3,t2,1640 <func_80B2B4A8+0x398>
    15fc:	8fa4007c 	lw	a0,124(sp)
    1600:	8e05019c 	lw	a1,412(s0)
    1604:	8e0601b8 	lw	a2,440(s0)
    1608:	9207019a 	lbu	a3,410(s0)
    160c:	3c180000 	lui	t8,0x0
    1610:	3c190000 	lui	t9,0x0
    1614:	27390000 	addiu	t9,t9,0
    1618:	27180000 	addiu	t8,t8,0
    161c:	afb80010 	sw	t8,16(sp)
    1620:	afb90014 	sw	t9,20(sp)
    1624:	0c000000 	jal	0 <func_80B2A200>
    1628:	afb00018 	sw	s0,24(sp)
    162c:	8fa4007c 	lw	a0,124(sp)
    1630:	0c000000 	jal	0 <func_80B2A200>
    1634:	02002825 	move	a1,s0
    1638:	10000025 	b	16d0 <func_80B2B4A8+0x428>
    163c:	8faf007c 	lw	t7,124(sp)
    1640:	10ea0007 	beq	a3,t2,1660 <func_80B2B4A8+0x3b8>
    1644:	24010005 	li	at,5
    1648:	10e10005 	beq	a3,at,1660 <func_80B2B4A8+0x3b8>
    164c:	24010007 	li	at,7
    1650:	10e10003 	beq	a3,at,1660 <func_80B2B4A8+0x3b8>
    1654:	24010008 	li	at,8
    1658:	14e10016 	bne	a3,at,16b4 <func_80B2B4A8+0x40c>
    165c:	8fa4007c 	lw	a0,124(sp)
    1660:	8fab007c 	lw	t3,124(sp)
    1664:	916c1d6c 	lbu	t4,7532(t3)
    1668:	51800019 	beqzl	t4,16d0 <func_80B2B4A8+0x428>
    166c:	8faf007c 	lw	t7,124(sp)
    1670:	8d6d1d90 	lw	t5,7568(t3)
    1674:	3c0e0000 	lui	t6,0x0
    1678:	25ce0000 	addiu	t6,t6,0
    167c:	11a00013 	beqz	t5,16cc <func_80B2B4A8+0x424>
    1680:	01602025 	move	a0,t3
    1684:	8e05019c 	lw	a1,412(s0)
    1688:	8e0601b8 	lw	a2,440(s0)
    168c:	9207019a 	lbu	a3,410(s0)
    1690:	afb00018 	sw	s0,24(sp)
    1694:	afae0014 	sw	t6,20(sp)
    1698:	0c000000 	jal	0 <func_80B2A200>
    169c:	afa00010 	sw	zero,16(sp)
    16a0:	8fa4007c 	lw	a0,124(sp)
    16a4:	0c000000 	jal	0 <func_80B2A200>
    16a8:	02002825 	move	a1,s0
    16ac:	10000008 	b	16d0 <func_80B2B4A8+0x428>
    16b0:	8faf007c 	lw	t7,124(sp)
    16b4:	8e05019c 	lw	a1,412(s0)
    16b8:	8e0601b8 	lw	a2,440(s0)
    16bc:	afb00014 	sw	s0,20(sp)
    16c0:	afa00010 	sw	zero,16(sp)
    16c4:	0c000000 	jal	0 <func_80B2A200>
    16c8:	00003825 	move	a3,zero
    16cc:	8faf007c 	lw	t7,124(sp)
    16d0:	3c060000 	lui	a2,0x0
    16d4:	24c60000 	addiu	a2,a2,0
    16d8:	27a40060 	addiu	a0,sp,96
    16dc:	240705e7 	li	a3,1511
    16e0:	0c000000 	jal	0 <func_80B2A200>
    16e4:	8de50000 	lw	a1,0(t7)
    16e8:	8fbf002c 	lw	ra,44(sp)
    16ec:	8fb00028 	lw	s0,40(sp)
    16f0:	27bd0078 	addiu	sp,sp,120
    16f4:	03e00008 	jr	ra
    16f8:	00000000 	nop

000016fc <func_80B2B8FC>:
    16fc:	27bdffe0 	addiu	sp,sp,-32
    1700:	afbf001c 	sw	ra,28(sp)
    1704:	240e0001 	li	t6,1
    1708:	afae0010 	sw	t6,16(sp)
    170c:	2486014c 	addiu	a2,a0,332
    1710:	0c000000 	jal	0 <func_80B2A200>
    1714:	00003825 	move	a3,zero
    1718:	8fbf001c 	lw	ra,28(sp)
    171c:	27bd0020 	addiu	sp,sp,32
    1720:	03e00008 	jr	ra
    1724:	00000000 	nop

00001728 <func_80B2B928>:
    1728:	afa7000c 	sw	a3,12(sp)
    172c:	848e00a4 	lh	t6,164(a0)
    1730:	24010051 	li	at,81
    1734:	15c10019 	bne	t6,at,179c <func_80B2B928+0x74>
    1738:	24010002 	li	at,2
    173c:	14a10003 	bne	a1,at,174c <func_80B2B928+0x24>
    1740:	3c0f0601 	lui	t7,0x601
    1744:	25efc410 	addiu	t7,t7,-15344
    1748:	accf0000 	sw	t7,0(a2)
    174c:	24010007 	li	at,7
    1750:	54a10003 	bnel	a1,at,1760 <func_80B2B928+0x38>
    1754:	24010008 	li	at,8
    1758:	acc00000 	sw	zero,0(a2)
    175c:	24010008 	li	at,8
    1760:	54a10003 	bnel	a1,at,1770 <func_80B2B928+0x48>
    1764:	24010009 	li	at,9
    1768:	acc00000 	sw	zero,0(a2)
    176c:	24010009 	li	at,9
    1770:	54a10003 	bnel	a1,at,1780 <func_80B2B928+0x58>
    1774:	24010003 	li	at,3
    1778:	acc00000 	sw	zero,0(a2)
    177c:	24010003 	li	at,3
    1780:	54a10003 	bnel	a1,at,1790 <func_80B2B928+0x68>
    1784:	24010005 	li	at,5
    1788:	acc00000 	sw	zero,0(a2)
    178c:	24010005 	li	at,5
    1790:	14a10002 	bne	a1,at,179c <func_80B2B928+0x74>
    1794:	00000000 	nop
    1798:	acc00000 	sw	zero,0(a2)
    179c:	03e00008 	jr	ra
    17a0:	00001025 	move	v0,zero

000017a4 <func_80B2B9A4>:
    17a4:	27bdffc8 	addiu	sp,sp,-56
    17a8:	afbf0014 	sw	ra,20(sp)
    17ac:	afa40038 	sw	a0,56(sp)
    17b0:	afa60040 	sw	a2,64(sp)
    17b4:	afa70044 	sw	a3,68(sp)
    17b8:	848f00a4 	lh	t7,164(a0)
    17bc:	24010043 	li	at,67
    17c0:	15e10019 	bne	t7,at,1828 <func_80B2B9A4+0x84>
    17c4:	24010010 	li	at,16
    17c8:	14a10017 	bne	a1,at,1828 <func_80B2B9A4+0x84>
    17cc:	3c060000 	lui	a2,0x0
    17d0:	8c850000 	lw	a1,0(a0)
    17d4:	27a40020 	addiu	a0,sp,32
    17d8:	24c60000 	addiu	a2,a2,0
    17dc:	24070620 	li	a3,1568
    17e0:	0c000000 	jal	0 <func_80B2A200>
    17e4:	afa50030 	sw	a1,48(sp)
    17e8:	8fa80030 	lw	t0,48(sp)
    17ec:	3c090601 	lui	t1,0x601
    17f0:	2529de08 	addiu	t1,t1,-8696
    17f4:	8d0302c0 	lw	v1,704(t0)
    17f8:	3c19de00 	lui	t9,0xde00
    17fc:	3c060000 	lui	a2,0x0
    1800:	24780008 	addiu	t8,v1,8
    1804:	ad1802c0 	sw	t8,704(t0)
    1808:	ac690004 	sw	t1,4(v1)
    180c:	ac790000 	sw	t9,0(v1)
    1810:	8faa0038 	lw	t2,56(sp)
    1814:	24c60000 	addiu	a2,a2,0
    1818:	27a40020 	addiu	a0,sp,32
    181c:	24070622 	li	a3,1570
    1820:	0c000000 	jal	0 <func_80B2A200>
    1824:	8d450000 	lw	a1,0(t2)
    1828:	8fbf0014 	lw	ra,20(sp)
    182c:	27bd0038 	addiu	sp,sp,56
    1830:	03e00008 	jr	ra
    1834:	00000000 	nop

00001838 <func_80B2BA38>:
    1838:	27bdff60 	addiu	sp,sp,-160
    183c:	afbf0024 	sw	ra,36(sp)
    1840:	afa400a0 	sw	a0,160(sp)
    1844:	afa500a4 	sw	a1,164(sp)
    1848:	8ca50000 	lw	a1,0(a1)
    184c:	3c060000 	lui	a2,0x0
    1850:	24c60000 	addiu	a2,a2,0
    1854:	27a4008c 	addiu	a0,sp,140
    1858:	2407062f 	li	a3,1583
    185c:	0c000000 	jal	0 <func_80B2A200>
    1860:	afa5009c 	sw	a1,156(sp)
    1864:	8fac00a4 	lw	t4,164(sp)
    1868:	24010051 	li	at,81
    186c:	8fa8009c 	lw	t0,156(sp)
    1870:	858f00a4 	lh	t7,164(t4)
    1874:	8fab00a0 	lw	t3,160(sp)
    1878:	3c078000 	lui	a3,0x8000
    187c:	15e1015d 	bne	t7,at,1df4 <func_80B2BA38+0x5bc>
    1880:	3c090000 	lui	t1,0x0
    1884:	95821d74 	lhu	v0,7540(t4)
    1888:	3c090000 	lui	t1,0x0
    188c:	25290000 	addiu	t1,t1,0
    1890:	28410303 	slti	at,v0,771
    1894:	10200026 	beqz	at,1930 <func_80B2BA38+0xf8>
    1898:	3c078000 	lui	a3,0x8000
    189c:	8d0202c0 	lw	v0,704(t0)
    18a0:	3c040600 	lui	a0,0x600
    18a4:	248442f0 	addiu	a0,a0,17136
    18a8:	00046900 	sll	t5,a0,0x4
    18ac:	24580008 	addiu	t8,v0,8
    18b0:	ad1802c0 	sw	t8,704(t0)
    18b4:	000d7702 	srl	t6,t5,0x1c
    18b8:	3c19db06 	lui	t9,0xdb06
    18bc:	37390020 	ori	t9,t9,0x20
    18c0:	000e7880 	sll	t7,t6,0x2
    18c4:	012fc021 	addu	t8,t1,t7
    18c8:	ac590000 	sw	t9,0(v0)
    18cc:	8f190000 	lw	t9,0(t8)
    18d0:	3c0a00ff 	lui	t2,0xff
    18d4:	354affff 	ori	t2,t2,0xffff
    18d8:	008a6824 	and	t5,a0,t2
    18dc:	032d7021 	addu	t6,t9,t5
    18e0:	01c77821 	addu	t7,t6,a3
    18e4:	ac4f0004 	sw	t7,4(v0)
    18e8:	8d0202c0 	lw	v0,704(t0)
    18ec:	3c040600 	lui	a0,0x600
    18f0:	24843ef0 	addiu	a0,a0,16112
    18f4:	00046900 	sll	t5,a0,0x4
    18f8:	24580008 	addiu	t8,v0,8
    18fc:	ad1802c0 	sw	t8,704(t0)
    1900:	000d7702 	srl	t6,t5,0x1c
    1904:	3c19db06 	lui	t9,0xdb06
    1908:	37390024 	ori	t9,t9,0x24
    190c:	000e7880 	sll	t7,t6,0x2
    1910:	012fc021 	addu	t8,t1,t7
    1914:	ac590000 	sw	t9,0(v0)
    1918:	8f190000 	lw	t9,0(t8)
    191c:	008a6824 	and	t5,a0,t2
    1920:	032d7021 	addu	t6,t9,t5
    1924:	01c77821 	addu	t7,t6,a3
    1928:	100000e0 	b	1cac <func_80B2BA38+0x474>
    192c:	ac4f0004 	sw	t7,4(v0)
    1930:	28410304 	slti	at,v0,772
    1934:	50200023 	beqzl	at,19c4 <func_80B2BA38+0x18c>
    1938:	28410305 	slti	at,v0,773
    193c:	8d0202c0 	lw	v0,704(t0)
    1940:	3c040600 	lui	a0,0x600
    1944:	24842ef0 	addiu	a0,a0,12016
    1948:	00046900 	sll	t5,a0,0x4
    194c:	000d7702 	srl	t6,t5,0x1c
    1950:	3c090000 	lui	t1,0x0
    1954:	3c19db06 	lui	t9,0xdb06
    1958:	24580008 	addiu	t8,v0,8
    195c:	ad1802c0 	sw	t8,704(t0)
    1960:	37390020 	ori	t9,t9,0x20
    1964:	25290000 	addiu	t1,t1,0
    1968:	000e7880 	sll	t7,t6,0x2
    196c:	012f2821 	addu	a1,t1,t7
    1970:	ac590000 	sw	t9,0(v0)
    1974:	8cb80000 	lw	t8,0(a1)
    1978:	3c0a00ff 	lui	t2,0xff
    197c:	354affff 	ori	t2,t2,0xffff
    1980:	008a3024 	and	a2,a0,t2
    1984:	3c078000 	lui	a3,0x8000
    1988:	0306c821 	addu	t9,t8,a2
    198c:	03276821 	addu	t5,t9,a3
    1990:	ac4d0004 	sw	t5,4(v0)
    1994:	8d0202c0 	lw	v0,704(t0)
    1998:	3c0fdb06 	lui	t7,0xdb06
    199c:	35ef0024 	ori	t7,t7,0x24
    19a0:	244e0008 	addiu	t6,v0,8
    19a4:	ad0e02c0 	sw	t6,704(t0)
    19a8:	ac4f0000 	sw	t7,0(v0)
    19ac:	8cb80000 	lw	t8,0(a1)
    19b0:	0306c821 	addu	t9,t8,a2
    19b4:	03276821 	addu	t5,t9,a3
    19b8:	100000bc 	b	1cac <func_80B2BA38+0x474>
    19bc:	ac4d0004 	sw	t5,4(v0)
    19c0:	28410305 	slti	at,v0,773
    19c4:	50200023 	beqzl	at,1a54 <func_80B2BA38+0x21c>
    19c8:	28410317 	slti	at,v0,791
    19cc:	8d0202c0 	lw	v0,704(t0)
    19d0:	3c030600 	lui	v1,0x600
    19d4:	246332f0 	addiu	v1,v1,13040
    19d8:	0003c100 	sll	t8,v1,0x4
    19dc:	0018cf02 	srl	t9,t8,0x1c
    19e0:	3c090000 	lui	t1,0x0
    19e4:	3c0fdb06 	lui	t7,0xdb06
    19e8:	244e0008 	addiu	t6,v0,8
    19ec:	ad0e02c0 	sw	t6,704(t0)
    19f0:	35ef0020 	ori	t7,t7,0x20
    19f4:	25290000 	addiu	t1,t1,0
    19f8:	00196880 	sll	t5,t9,0x2
    19fc:	012d2821 	addu	a1,t1,t5
    1a00:	ac4f0000 	sw	t7,0(v0)
    1a04:	8cae0000 	lw	t6,0(a1)
    1a08:	3c0a00ff 	lui	t2,0xff
    1a0c:	354affff 	ori	t2,t2,0xffff
    1a10:	006a3024 	and	a2,v1,t2
    1a14:	3c078000 	lui	a3,0x8000
    1a18:	01c67821 	addu	t7,t6,a2
    1a1c:	01e7c021 	addu	t8,t7,a3
    1a20:	ac580004 	sw	t8,4(v0)
    1a24:	8d0202c0 	lw	v0,704(t0)
    1a28:	3c0ddb06 	lui	t5,0xdb06
    1a2c:	35ad0024 	ori	t5,t5,0x24
    1a30:	24590008 	addiu	t9,v0,8
    1a34:	ad1902c0 	sw	t9,704(t0)
    1a38:	ac4d0000 	sw	t5,0(v0)
    1a3c:	8cae0000 	lw	t6,0(a1)
    1a40:	01c67821 	addu	t7,t6,a2
    1a44:	01e7c021 	addu	t8,t7,a3
    1a48:	10000098 	b	1cac <func_80B2BA38+0x474>
    1a4c:	ac580004 	sw	t8,4(v0)
    1a50:	28410317 	slti	at,v0,791
    1a54:	50200024 	beqzl	at,1ae8 <func_80B2BA38+0x2b0>
    1a58:	28410318 	slti	at,v0,792
    1a5c:	8d0202c0 	lw	v0,704(t0)
    1a60:	3c040600 	lui	a0,0x600
    1a64:	248436f0 	addiu	a0,a0,14064
    1a68:	00047100 	sll	t6,a0,0x4
    1a6c:	000e7f02 	srl	t7,t6,0x1c
    1a70:	3c090000 	lui	t1,0x0
    1a74:	3c0ddb06 	lui	t5,0xdb06
    1a78:	24590008 	addiu	t9,v0,8
    1a7c:	ad1902c0 	sw	t9,704(t0)
    1a80:	35ad0020 	ori	t5,t5,0x20
    1a84:	25290000 	addiu	t1,t1,0
    1a88:	000fc080 	sll	t8,t7,0x2
    1a8c:	01382821 	addu	a1,t1,t8
    1a90:	ac4d0000 	sw	t5,0(v0)
    1a94:	8cb90000 	lw	t9,0(a1)
    1a98:	3c0a00ff 	lui	t2,0xff
    1a9c:	354affff 	ori	t2,t2,0xffff
    1aa0:	008a3024 	and	a2,a0,t2
    1aa4:	3c078000 	lui	a3,0x8000
    1aa8:	03266821 	addu	t5,t9,a2
    1aac:	01a77021 	addu	t6,t5,a3
    1ab0:	ac4e0004 	sw	t6,4(v0)
    1ab4:	8d0202c0 	lw	v0,704(t0)
    1ab8:	3c18db06 	lui	t8,0xdb06
    1abc:	37180024 	ori	t8,t8,0x24
    1ac0:	244f0008 	addiu	t7,v0,8
    1ac4:	ad0f02c0 	sw	t7,704(t0)
    1ac8:	ac580000 	sw	t8,0(v0)
    1acc:	8cb90000 	lw	t9,0(a1)
    1ad0:	03266821 	addu	t5,t9,a2
    1ad4:	01a77021 	addu	t6,t5,a3
    1ad8:	ac4e0004 	sw	t6,4(v0)
    1adc:	10000073 	b	1cac <func_80B2BA38+0x474>
    1ae0:	8fac00a4 	lw	t4,164(sp)
    1ae4:	28410318 	slti	at,v0,792
    1ae8:	50200024 	beqzl	at,1b7c <func_80B2BA38+0x344>
    1aec:	28410319 	slti	at,v0,793
    1af0:	8d0202c0 	lw	v0,704(t0)
    1af4:	3c040600 	lui	a0,0x600
    1af8:	24842ef0 	addiu	a0,a0,12016
    1afc:	0004c900 	sll	t9,a0,0x4
    1b00:	00196f02 	srl	t5,t9,0x1c
    1b04:	3c090000 	lui	t1,0x0
    1b08:	3c18db06 	lui	t8,0xdb06
    1b0c:	244f0008 	addiu	t7,v0,8
    1b10:	ad0f02c0 	sw	t7,704(t0)
    1b14:	37180020 	ori	t8,t8,0x20
    1b18:	25290000 	addiu	t1,t1,0
    1b1c:	000d7080 	sll	t6,t5,0x2
    1b20:	012e2821 	addu	a1,t1,t6
    1b24:	ac580000 	sw	t8,0(v0)
    1b28:	8caf0000 	lw	t7,0(a1)
    1b2c:	3c0a00ff 	lui	t2,0xff
    1b30:	354affff 	ori	t2,t2,0xffff
    1b34:	008a3024 	and	a2,a0,t2
    1b38:	3c078000 	lui	a3,0x8000
    1b3c:	01e6c021 	addu	t8,t7,a2
    1b40:	0307c821 	addu	t9,t8,a3
    1b44:	ac590004 	sw	t9,4(v0)
    1b48:	8d0202c0 	lw	v0,704(t0)
    1b4c:	3c0edb06 	lui	t6,0xdb06
    1b50:	35ce0024 	ori	t6,t6,0x24
    1b54:	244d0008 	addiu	t5,v0,8
    1b58:	ad0d02c0 	sw	t5,704(t0)
    1b5c:	ac4e0000 	sw	t6,0(v0)
    1b60:	8caf0000 	lw	t7,0(a1)
    1b64:	01e6c021 	addu	t8,t7,a2
    1b68:	0307c821 	addu	t9,t8,a3
    1b6c:	ac590004 	sw	t9,4(v0)
    1b70:	1000004e 	b	1cac <func_80B2BA38+0x474>
    1b74:	8fac00a4 	lw	t4,164(sp)
    1b78:	28410319 	slti	at,v0,793
    1b7c:	50200024 	beqzl	at,1c10 <func_80B2BA38+0x3d8>
    1b80:	8d0202c0 	lw	v0,704(t0)
    1b84:	8d0202c0 	lw	v0,704(t0)
    1b88:	3c030600 	lui	v1,0x600
    1b8c:	246332f0 	addiu	v1,v1,13040
    1b90:	00037900 	sll	t7,v1,0x4
    1b94:	000fc702 	srl	t8,t7,0x1c
    1b98:	3c090000 	lui	t1,0x0
    1b9c:	3c0edb06 	lui	t6,0xdb06
    1ba0:	244d0008 	addiu	t5,v0,8
    1ba4:	ad0d02c0 	sw	t5,704(t0)
    1ba8:	35ce0020 	ori	t6,t6,0x20
    1bac:	25290000 	addiu	t1,t1,0
    1bb0:	0018c880 	sll	t9,t8,0x2
    1bb4:	01392821 	addu	a1,t1,t9
    1bb8:	ac4e0000 	sw	t6,0(v0)
    1bbc:	8cad0000 	lw	t5,0(a1)
    1bc0:	3c0a00ff 	lui	t2,0xff
    1bc4:	354affff 	ori	t2,t2,0xffff
    1bc8:	006a3024 	and	a2,v1,t2
    1bcc:	3c078000 	lui	a3,0x8000
    1bd0:	01a67021 	addu	t6,t5,a2
    1bd4:	01c77821 	addu	t7,t6,a3
    1bd8:	ac4f0004 	sw	t7,4(v0)
    1bdc:	8d0202c0 	lw	v0,704(t0)
    1be0:	3c19db06 	lui	t9,0xdb06
    1be4:	37390024 	ori	t9,t9,0x24
    1be8:	24580008 	addiu	t8,v0,8
    1bec:	ad1802c0 	sw	t8,704(t0)
    1bf0:	ac590000 	sw	t9,0(v0)
    1bf4:	8cad0000 	lw	t5,0(a1)
    1bf8:	01a67021 	addu	t6,t5,a2
    1bfc:	01c77821 	addu	t7,t6,a3
    1c00:	ac4f0004 	sw	t7,4(v0)
    1c04:	10000029 	b	1cac <func_80B2BA38+0x474>
    1c08:	8fac00a4 	lw	t4,164(sp)
    1c0c:	8d0202c0 	lw	v0,704(t0)
    1c10:	3c040600 	lui	a0,0x600
    1c14:	248442f0 	addiu	a0,a0,17136
    1c18:	00046900 	sll	t5,a0,0x4
    1c1c:	24580008 	addiu	t8,v0,8
    1c20:	3c090000 	lui	t1,0x0
    1c24:	ad1802c0 	sw	t8,704(t0)
    1c28:	000d7702 	srl	t6,t5,0x1c
    1c2c:	3c19db06 	lui	t9,0xdb06
    1c30:	25290000 	addiu	t1,t1,0
    1c34:	37390020 	ori	t9,t9,0x20
    1c38:	000e7880 	sll	t7,t6,0x2
    1c3c:	012fc021 	addu	t8,t1,t7
    1c40:	ac590000 	sw	t9,0(v0)
    1c44:	8f190000 	lw	t9,0(t8)
    1c48:	3c0a00ff 	lui	t2,0xff
    1c4c:	354affff 	ori	t2,t2,0xffff
    1c50:	008a6824 	and	t5,a0,t2
    1c54:	3c078000 	lui	a3,0x8000
    1c58:	032d7021 	addu	t6,t9,t5
    1c5c:	01c77821 	addu	t7,t6,a3
    1c60:	ac4f0004 	sw	t7,4(v0)
    1c64:	8d0202c0 	lw	v0,704(t0)
    1c68:	3c040600 	lui	a0,0x600
    1c6c:	24843ef0 	addiu	a0,a0,16112
    1c70:	00046900 	sll	t5,a0,0x4
    1c74:	24580008 	addiu	t8,v0,8
    1c78:	ad1802c0 	sw	t8,704(t0)
    1c7c:	000d7702 	srl	t6,t5,0x1c
    1c80:	3c19db06 	lui	t9,0xdb06
    1c84:	37390024 	ori	t9,t9,0x24
    1c88:	000e7880 	sll	t7,t6,0x2
    1c8c:	012fc021 	addu	t8,t1,t7
    1c90:	ac590000 	sw	t9,0(v0)
    1c94:	8f190000 	lw	t9,0(t8)
    1c98:	008a6824 	and	t5,a0,t2
    1c9c:	032d7021 	addu	t6,t9,t5
    1ca0:	01c77821 	addu	t7,t6,a3
    1ca4:	ac4f0004 	sw	t7,4(v0)
    1ca8:	8fac00a4 	lw	t4,164(sp)
    1cac:	3c180000 	lui	t8,0x0
    1cb0:	8f181360 	lw	t8,4960(t8)
    1cb4:	24010006 	li	at,6
    1cb8:	57010014 	bnel	t8,at,1d0c <func_80B2BA38+0x4d4>
    1cbc:	95821d74 	lhu	v0,7540(t4)
    1cc0:	8d0202c0 	lw	v0,704(t0)
    1cc4:	3c040600 	lui	a0,0x600
    1cc8:	248452f0 	addiu	a0,a0,21232
    1ccc:	00047100 	sll	t6,a0,0x4
    1cd0:	24590008 	addiu	t9,v0,8
    1cd4:	ad1902c0 	sw	t9,704(t0)
    1cd8:	000e7f02 	srl	t7,t6,0x1c
    1cdc:	3c0ddb06 	lui	t5,0xdb06
    1ce0:	35ad0028 	ori	t5,t5,0x28
    1ce4:	000fc080 	sll	t8,t7,0x2
    1ce8:	0138c821 	addu	t9,t1,t8
    1cec:	ac4d0000 	sw	t5,0(v0)
    1cf0:	8f2d0000 	lw	t5,0(t9)
    1cf4:	008a7024 	and	t6,a0,t2
    1cf8:	01ae7821 	addu	t7,t5,t6
    1cfc:	01e7c021 	addu	t8,t7,a3
    1d00:	1000006b 	b	1eb0 <func_80B2BA38+0x678>
    1d04:	ac580004 	sw	t8,4(v0)
    1d08:	95821d74 	lhu	v0,7540(t4)
    1d0c:	3c0ddb06 	lui	t5,0xdb06
    1d10:	35ad0028 	ori	t5,t5,0x28
    1d14:	284102f6 	slti	at,v0,758
    1d18:	10200010 	beqz	at,1d5c <func_80B2BA38+0x524>
    1d1c:	3c030600 	lui	v1,0x600
    1d20:	8d0202c0 	lw	v0,704(t0)
    1d24:	24634ef0 	addiu	v1,v1,20208
    1d28:	00037100 	sll	t6,v1,0x4
    1d2c:	24590008 	addiu	t9,v0,8
    1d30:	ad1902c0 	sw	t9,704(t0)
    1d34:	000e7f02 	srl	t7,t6,0x1c
    1d38:	000fc080 	sll	t8,t7,0x2
    1d3c:	0138c821 	addu	t9,t1,t8
    1d40:	ac4d0000 	sw	t5,0(v0)
    1d44:	8f2d0000 	lw	t5,0(t9)
    1d48:	006a7024 	and	t6,v1,t2
    1d4c:	01ae7821 	addu	t7,t5,t6
    1d50:	01e7c021 	addu	t8,t7,a3
    1d54:	10000056 	b	1eb0 <func_80B2BA38+0x678>
    1d58:	ac580004 	sw	t8,4(v0)
    1d5c:	28410350 	slti	at,v0,848
    1d60:	10200013 	beqz	at,1db0 <func_80B2BA38+0x578>
    1d64:	3c0ddb06 	lui	t5,0xdb06
    1d68:	8d0202c0 	lw	v0,704(t0)
    1d6c:	3c040600 	lui	a0,0x600
    1d70:	248452f0 	addiu	a0,a0,21232
    1d74:	00047100 	sll	t6,a0,0x4
    1d78:	24590008 	addiu	t9,v0,8
    1d7c:	ad1902c0 	sw	t9,704(t0)
    1d80:	000e7f02 	srl	t7,t6,0x1c
    1d84:	3c0ddb06 	lui	t5,0xdb06
    1d88:	35ad0028 	ori	t5,t5,0x28
    1d8c:	000fc080 	sll	t8,t7,0x2
    1d90:	0138c821 	addu	t9,t1,t8
    1d94:	ac4d0000 	sw	t5,0(v0)
    1d98:	8f2d0000 	lw	t5,0(t9)
    1d9c:	008a7024 	and	t6,a0,t2
    1da0:	01ae7821 	addu	t7,t5,t6
    1da4:	01e7c021 	addu	t8,t7,a3
    1da8:	10000041 	b	1eb0 <func_80B2BA38+0x678>
    1dac:	ac580004 	sw	t8,4(v0)
    1db0:	8d0202c0 	lw	v0,704(t0)
    1db4:	3c030600 	lui	v1,0x600
    1db8:	24634ef0 	addiu	v1,v1,20208
    1dbc:	00037100 	sll	t6,v1,0x4
    1dc0:	24590008 	addiu	t9,v0,8
    1dc4:	ad1902c0 	sw	t9,704(t0)
    1dc8:	000e7f02 	srl	t7,t6,0x1c
    1dcc:	000fc080 	sll	t8,t7,0x2
    1dd0:	35ad0028 	ori	t5,t5,0x28
    1dd4:	0138c821 	addu	t9,t1,t8
    1dd8:	ac4d0000 	sw	t5,0(v0)
    1ddc:	8f2d0000 	lw	t5,0(t9)
    1de0:	006a7024 	and	t6,v1,t2
    1de4:	01ae7821 	addu	t7,t5,t6
    1de8:	01e7c021 	addu	t8,t7,a3
    1dec:	10000030 	b	1eb0 <func_80B2BA38+0x678>
    1df0:	ac580004 	sw	t8,4(v0)
    1df4:	8d0202c0 	lw	v0,704(t0)
    1df8:	3c030600 	lui	v1,0x600
    1dfc:	246332f0 	addiu	v1,v1,13040
    1e00:	00037100 	sll	t6,v1,0x4
    1e04:	000e7f02 	srl	t7,t6,0x1c
    1e08:	3c0ddb06 	lui	t5,0xdb06
    1e0c:	24590008 	addiu	t9,v0,8
    1e10:	25290000 	addiu	t1,t1,0
    1e14:	ad1902c0 	sw	t9,704(t0)
    1e18:	35ad0020 	ori	t5,t5,0x20
    1e1c:	000fc080 	sll	t8,t7,0x2
    1e20:	01382821 	addu	a1,t1,t8
    1e24:	ac4d0000 	sw	t5,0(v0)
    1e28:	8cb90000 	lw	t9,0(a1)
    1e2c:	3c0a00ff 	lui	t2,0xff
    1e30:	354affff 	ori	t2,t2,0xffff
    1e34:	006a3024 	and	a2,v1,t2
    1e38:	03266821 	addu	t5,t9,a2
    1e3c:	01a77021 	addu	t6,t5,a3
    1e40:	ac4e0004 	sw	t6,4(v0)
    1e44:	8d0202c0 	lw	v0,704(t0)
    1e48:	3c18db06 	lui	t8,0xdb06
    1e4c:	37180024 	ori	t8,t8,0x24
    1e50:	244f0008 	addiu	t7,v0,8
    1e54:	ad0f02c0 	sw	t7,704(t0)
    1e58:	ac580000 	sw	t8,0(v0)
    1e5c:	8cb90000 	lw	t9,0(a1)
    1e60:	3c030600 	lui	v1,0x600
    1e64:	24634ef0 	addiu	v1,v1,20208
    1e68:	03266821 	addu	t5,t9,a2
    1e6c:	01a77021 	addu	t6,t5,a3
    1e70:	ac4e0004 	sw	t6,4(v0)
    1e74:	8d0202c0 	lw	v0,704(t0)
    1e78:	0003c900 	sll	t9,v1,0x4
    1e7c:	00196f02 	srl	t5,t9,0x1c
    1e80:	244f0008 	addiu	t7,v0,8
    1e84:	ad0f02c0 	sw	t7,704(t0)
    1e88:	3c18db06 	lui	t8,0xdb06
    1e8c:	37180028 	ori	t8,t8,0x28
    1e90:	000d7080 	sll	t6,t5,0x2
    1e94:	012e7821 	addu	t7,t1,t6
    1e98:	ac580000 	sw	t8,0(v0)
    1e9c:	8df80000 	lw	t8,0(t7)
    1ea0:	006ac824 	and	t9,v1,t2
    1ea4:	03196821 	addu	t5,t8,t9
    1ea8:	01a77021 	addu	t6,t5,a3
    1eac:	ac4e0004 	sw	t6,4(v0)
    1eb0:	8d65019c 	lw	a1,412(t3)
    1eb4:	8d6601b8 	lw	a2,440(t3)
    1eb8:	9167019a 	lbu	a3,410(t3)
    1ebc:	3c0f0000 	lui	t7,0x0
    1ec0:	3c180000 	lui	t8,0x0
    1ec4:	27180000 	addiu	t8,t8,0
    1ec8:	25ef0000 	addiu	t7,t7,0
    1ecc:	afaf0010 	sw	t7,16(sp)
    1ed0:	afb80014 	sw	t8,20(sp)
    1ed4:	afab0018 	sw	t3,24(sp)
    1ed8:	0c000000 	jal	0 <func_80B2A200>
    1edc:	8fa400a4 	lw	a0,164(sp)
    1ee0:	8fb900a4 	lw	t9,164(sp)
    1ee4:	3c060000 	lui	a2,0x0
    1ee8:	24c60000 	addiu	a2,a2,0
    1eec:	27a4008c 	addiu	a0,sp,140
    1ef0:	2407069a 	li	a3,1690
    1ef4:	0c000000 	jal	0 <func_80B2A200>
    1ef8:	8f250000 	lw	a1,0(t9)
    1efc:	8fbf0024 	lw	ra,36(sp)
    1f00:	27bd00a0 	addiu	sp,sp,160
    1f04:	03e00008 	jr	ra
    1f08:	00000000 	nop

00001f0c <func_80B2C10C>:
    1f0c:	24010010 	li	at,16
    1f10:	afa40000 	sw	a0,0(sp)
    1f14:	14a10004 	bne	a1,at,1f28 <func_80B2C10C+0x1c>
    1f18:	afa7000c 	sw	a3,12(sp)
    1f1c:	3c0e0601 	lui	t6,0x601
    1f20:	25ced0d8 	addiu	t6,t6,-12072
    1f24:	acce0000 	sw	t6,0(a2)
    1f28:	03e00008 	jr	ra
    1f2c:	00001025 	move	v0,zero

00001f30 <func_80B2C130>:
    1f30:	27bdffa8 	addiu	sp,sp,-88
    1f34:	afbf0024 	sw	ra,36(sp)
    1f38:	afa40058 	sw	a0,88(sp)
    1f3c:	afa5005c 	sw	a1,92(sp)
    1f40:	8ca50000 	lw	a1,0(a1)
    1f44:	3c060000 	lui	a2,0x0
    1f48:	24c60000 	addiu	a2,a2,0
    1f4c:	27a40044 	addiu	a0,sp,68
    1f50:	240706b5 	li	a3,1717
    1f54:	0c000000 	jal	0 <func_80B2A200>
    1f58:	afa50054 	sw	a1,84(sp)
    1f5c:	8fa30054 	lw	v1,84(sp)
    1f60:	3c050600 	lui	a1,0x600
    1f64:	24a57210 	addiu	a1,a1,29200
    1f68:	8c6202c0 	lw	v0,704(v1)
    1f6c:	0005c900 	sll	t9,a1,0x4
    1f70:	8fa80058 	lw	t0,88(sp)
    1f74:	00195702 	srl	t2,t9,0x1c
    1f78:	3c18db06 	lui	t8,0xdb06
    1f7c:	3c0c0000 	lui	t4,0x0
    1f80:	244f0008 	addiu	t7,v0,8
    1f84:	258c0000 	addiu	t4,t4,0
    1f88:	37180020 	ori	t8,t8,0x20
    1f8c:	000a5880 	sll	t3,t2,0x2
    1f90:	ac6f02c0 	sw	t7,704(v1)
    1f94:	016c3021 	addu	a2,t3,t4
    1f98:	ac580000 	sw	t8,0(v0)
    1f9c:	8ccd0000 	lw	t5,0(a2)
    1fa0:	3c0100ff 	lui	at,0xff
    1fa4:	3421ffff 	ori	at,at,0xffff
    1fa8:	00a13824 	and	a3,a1,at
    1fac:	3c098000 	lui	t1,0x8000
    1fb0:	01a77021 	addu	t6,t5,a3
    1fb4:	01c97821 	addu	t7,t6,t1
    1fb8:	ac4f0004 	sw	t7,4(v0)
    1fbc:	8c6202c0 	lw	v0,704(v1)
    1fc0:	3c19db06 	lui	t9,0xdb06
    1fc4:	37390024 	ori	t9,t9,0x24
    1fc8:	24580008 	addiu	t8,v0,8
    1fcc:	ac7802c0 	sw	t8,704(v1)
    1fd0:	ac590000 	sw	t9,0(v0)
    1fd4:	8cca0000 	lw	t2,0(a2)
    1fd8:	240f00ff 	li	t7,255
    1fdc:	3c0efb00 	lui	t6,0xfb00
    1fe0:	01475821 	addu	t3,t2,a3
    1fe4:	01696021 	addu	t4,t3,t1
    1fe8:	ac4c0004 	sw	t4,4(v0)
    1fec:	8c6202c0 	lw	v0,704(v1)
    1ff0:	3c0a0000 	lui	t2,0x0
    1ff4:	3c19db06 	lui	t9,0xdb06
    1ff8:	244d0008 	addiu	t5,v0,8
    1ffc:	ac6d02c0 	sw	t5,704(v1)
    2000:	ac4f0004 	sw	t7,4(v0)
    2004:	ac4e0000 	sw	t6,0(v0)
    2008:	8c6202c0 	lw	v0,704(v1)
    200c:	37390030 	ori	t9,t9,0x30
    2010:	254a0010 	addiu	t2,t2,16
    2014:	24580008 	addiu	t8,v0,8
    2018:	ac7802c0 	sw	t8,704(v1)
    201c:	ac4a0004 	sw	t2,4(v0)
    2020:	ac590000 	sw	t9,0(v0)
    2024:	3c0b0000 	lui	t3,0x0
    2028:	9107019a 	lbu	a3,410(t0)
    202c:	8d0601b8 	lw	a2,440(t0)
    2030:	8d05019c 	lw	a1,412(t0)
    2034:	256b0000 	addiu	t3,t3,0
    2038:	afab0010 	sw	t3,16(sp)
    203c:	afa00014 	sw	zero,20(sp)
    2040:	8fa4005c 	lw	a0,92(sp)
    2044:	0c000000 	jal	0 <func_80B2A200>
    2048:	afa80018 	sw	t0,24(sp)
    204c:	8fac005c 	lw	t4,92(sp)
    2050:	3c060000 	lui	a2,0x0
    2054:	24c60000 	addiu	a2,a2,0
    2058:	27a40044 	addiu	a0,sp,68
    205c:	240706cc 	li	a3,1740
    2060:	0c000000 	jal	0 <func_80B2A200>
    2064:	8d850000 	lw	a1,0(t4)
    2068:	8fbf0024 	lw	ra,36(sp)
    206c:	27bd0058 	addiu	sp,sp,88
    2070:	03e00008 	jr	ra
    2074:	00000000 	nop

00002078 <EnViewer_Draw>:
    2078:	27bdffc0 	addiu	sp,sp,-64
    207c:	afb10018 	sw	s1,24(sp)
    2080:	afb00014 	sw	s0,20(sp)
    2084:	00a08025 	move	s0,a1
    2088:	00808825 	move	s1,a0
    208c:	afbf001c 	sw	ra,28(sp)
    2090:	3c060000 	lui	a2,0x0
    2094:	24c60000 	addiu	a2,a2,0
    2098:	8ca50000 	lw	a1,0(a1)
    209c:	27a40020 	addiu	a0,sp,32
    20a0:	0c000000 	jal	0 <func_80B2A200>
    20a4:	240706e0 	li	a3,1760
    20a8:	922e01e6 	lbu	t6,486(s1)
    20ac:	11c0002f 	beqz	t6,216c <EnViewer_Draw+0xf4>
    20b0:	00000000 	nop
    20b4:	8622001c 	lh	v0,28(s1)
    20b8:	00021203 	sra	v0,v0,0x8
    20bc:	00021400 	sll	v0,v0,0x10
    20c0:	00021403 	sra	v0,v0,0x10
    20c4:	28410003 	slti	at,v0,3
    20c8:	50200015 	beqzl	at,2120 <EnViewer_Draw+0xa8>
    20cc:	92091d6c 	lbu	t1,7532(s0)
    20d0:	920f1d6c 	lbu	t7,7532(s0)
    20d4:	11e00025 	beqz	t7,216c <EnViewer_Draw+0xf4>
    20d8:	00000000 	nop
    20dc:	8e181d8c 	lw	t8,7564(s0)
    20e0:	13000022 	beqz	t8,216c <EnViewer_Draw+0xf4>
    20e4:	00000000 	nop
    20e8:	0c000000 	jal	0 <func_80B2A200>
    20ec:	8e040000 	lw	a0,0(s0)
    20f0:	923901dd 	lbu	t9,477(s1)
    20f4:	02202025 	move	a0,s1
    20f8:	02002825 	move	a1,s0
    20fc:	00194080 	sll	t0,t9,0x2
    2100:	3c190000 	lui	t9,0x0
    2104:	0328c821 	addu	t9,t9,t0
    2108:	8f390000 	lw	t9,0(t9)
    210c:	0320f809 	jalr	t9
    2110:	00000000 	nop
    2114:	10000015 	b	216c <EnViewer_Draw+0xf4>
    2118:	00000000 	nop
    211c:	92091d6c 	lbu	t1,7532(s0)
    2120:	24010009 	li	at,9
    2124:	11200004 	beqz	t1,2138 <EnViewer_Draw+0xc0>
    2128:	00000000 	nop
    212c:	8e0a1d90 	lw	t2,7568(s0)
    2130:	15400003 	bnez	t2,2140 <EnViewer_Draw+0xc8>
    2134:	00000000 	nop
    2138:	1441000c 	bne	v0,at,216c <EnViewer_Draw+0xf4>
    213c:	00000000 	nop
    2140:	0c000000 	jal	0 <func_80B2A200>
    2144:	8e040000 	lw	a0,0(s0)
    2148:	922b01dd 	lbu	t3,477(s1)
    214c:	3c190000 	lui	t9,0x0
    2150:	02202025 	move	a0,s1
    2154:	000b6080 	sll	t4,t3,0x2
    2158:	032cc821 	addu	t9,t9,t4
    215c:	8f390000 	lw	t9,0(t9)
    2160:	02002825 	move	a1,s0
    2164:	0320f809 	jalr	t9
    2168:	00000000 	nop
    216c:	3c060000 	lui	a2,0x0
    2170:	24c60000 	addiu	a2,a2,0
    2174:	27a40020 	addiu	a0,sp,32
    2178:	8e050000 	lw	a1,0(s0)
    217c:	0c000000 	jal	0 <func_80B2A200>
    2180:	240706f8 	li	a3,1784
    2184:	8fbf001c 	lw	ra,28(sp)
    2188:	8fb00014 	lw	s0,20(sp)
    218c:	8fb10018 	lw	s1,24(sp)
    2190:	03e00008 	jr	ra
    2194:	27bd0040 	addiu	sp,sp,64

00002198 <func_80B2C398>:
    2198:	27bdffb0 	addiu	sp,sp,-80
    219c:	afbf0024 	sw	ra,36(sp)
    21a0:	afb10020 	sw	s1,32(sp)
    21a4:	afb0001c 	sw	s0,28(sp)
    21a8:	8483001c 	lh	v1,28(a0)
    21ac:	00a08025 	move	s0,a1
    21b0:	00808825 	move	s1,a0
    21b4:	00031a03 	sra	v1,v1,0x8
    21b8:	00031c00 	sll	v1,v1,0x10
    21bc:	00031c03 	sra	v1,v1,0x10
    21c0:	28610003 	slti	at,v1,3
    21c4:	5020005e 	beqzl	at,2340 <func_80B2C398+0x1a8>
    21c8:	920b1d6c 	lbu	t3,7532(s0)
    21cc:	90ae1d6c 	lbu	t6,7532(a1)
    21d0:	51c000e1 	beqzl	t6,2558 <func_80B2C398+0x3c0>
    21d4:	8fbf0024 	lw	ra,36(sp)
    21d8:	8ca21d8c 	lw	v0,7564(a1)
    21dc:	504000de 	beqzl	v0,2558 <func_80B2C398+0x3c0>
    21e0:	8fbf0024 	lw	ra,36(sp)
    21e4:	94af1d74 	lhu	t7,7540(a1)
    21e8:	94580004 	lhu	t8,4(v0)
    21ec:	01f8082a 	slt	at,t7,t8
    21f0:	502000d9 	beqzl	at,2558 <func_80B2C398+0x3c0>
    21f4:	8fbf0024 	lw	ra,36(sp)
    21f8:	54600016 	bnezl	v1,2254 <func_80B2C398+0xbc>
    21fc:	8c4a000c 	lw	t2,12(v0)
    2200:	3c020000 	lui	v0,0x0
    2204:	24420000 	addiu	v0,v0,0
    2208:	90590000 	lbu	t9,0(v0)
    220c:	3c070000 	lui	a3,0x0
    2210:	24e70000 	addiu	a3,a3,0
    2214:	1720000a 	bnez	t9,2240 <func_80B2C398+0xa8>
    2218:	24080001 	li	t0,1
    221c:	3c090000 	lui	t1,0x0
    2220:	25290000 	addiu	t1,t1,0
    2224:	a0480000 	sb	t0,0(v0)
    2228:	afa90014 	sw	t1,20(sp)
    222c:	24042805 	li	a0,10245
    2230:	262500e4 	addiu	a1,s1,228
    2234:	24060004 	li	a2,4
    2238:	0c000000 	jal	0 <func_80B2A200>
    223c:	afa70010 	sw	a3,16(sp)
    2240:	02202025 	move	a0,s1
    2244:	0c000000 	jal	0 <func_80B2A200>
    2248:	24052078 	li	a1,8312
    224c:	8e021d8c 	lw	v0,7564(s0)
    2250:	8c4a000c 	lw	t2,12(v0)
    2254:	448a2000 	mtc1	t2,$f4
    2258:	00000000 	nop
    225c:	468021a0 	cvt.s.w	$f6,$f4
    2260:	e7a60044 	swc1	$f6,68(sp)
    2264:	8e0b1d8c 	lw	t3,7564(s0)
    2268:	8d6c0010 	lw	t4,16(t3)
    226c:	448c4000 	mtc1	t4,$f8
    2270:	00000000 	nop
    2274:	468042a0 	cvt.s.w	$f10,$f8
    2278:	e7aa0048 	swc1	$f10,72(sp)
    227c:	8e0d1d8c 	lw	t5,7564(s0)
    2280:	8dae0014 	lw	t6,20(t5)
    2284:	448e8000 	mtc1	t6,$f16
    2288:	00000000 	nop
    228c:	468084a0 	cvt.s.w	$f18,$f16
    2290:	e7b2004c 	swc1	$f18,76(sp)
    2294:	8e0f1d8c 	lw	t7,7564(s0)
    2298:	8df80018 	lw	t8,24(t7)
    229c:	44982000 	mtc1	t8,$f4
    22a0:	00000000 	nop
    22a4:	468021a0 	cvt.s.w	$f6,$f4
    22a8:	e7a60038 	swc1	$f6,56(sp)
    22ac:	8e191d8c 	lw	t9,7564(s0)
    22b0:	8f28001c 	lw	t0,28(t9)
    22b4:	44884000 	mtc1	t0,$f8
    22b8:	00000000 	nop
    22bc:	468042a0 	cvt.s.w	$f10,$f8
    22c0:	e7aa003c 	swc1	$f10,60(sp)
    22c4:	8e091d8c 	lw	t1,7564(s0)
    22c8:	8d2a0020 	lw	t2,32(t1)
    22cc:	448a8000 	mtc1	t2,$f16
    22d0:	00000000 	nop
    22d4:	468084a0 	cvt.s.w	$f18,$f16
    22d8:	e7b20040 	swc1	$f18,64(sp)
    22dc:	8e021d8c 	lw	v0,7564(s0)
    22e0:	96061d74 	lhu	a2,7540(s0)
    22e4:	94440004 	lhu	a0,4(v0)
    22e8:	0c000000 	jal	0 <func_80B2A200>
    22ec:	94450002 	lhu	a1,2(v0)
    22f0:	c7a40038 	lwc1	$f4,56(sp)
    22f4:	c7a60044 	lwc1	$f6,68(sp)
    22f8:	46062201 	sub.s	$f8,$f4,$f6
    22fc:	46004282 	mul.s	$f10,$f8,$f0
    2300:	46065400 	add.s	$f16,$f10,$f6
    2304:	e6300024 	swc1	$f16,36(s1)
    2308:	c7a40048 	lwc1	$f4,72(sp)
    230c:	c7b2003c 	lwc1	$f18,60(sp)
    2310:	46049201 	sub.s	$f8,$f18,$f4
    2314:	46004282 	mul.s	$f10,$f8,$f0
    2318:	46045180 	add.s	$f6,$f10,$f4
    231c:	e6260028 	swc1	$f6,40(s1)
    2320:	c7b2004c 	lwc1	$f18,76(sp)
    2324:	c7b00040 	lwc1	$f16,64(sp)
    2328:	46128201 	sub.s	$f8,$f16,$f18
    232c:	46004282 	mul.s	$f10,$f8,$f0
    2330:	46125100 	add.s	$f4,$f10,$f18
    2334:	10000087 	b	2554 <func_80B2C398+0x3bc>
    2338:	e624002c 	swc1	$f4,44(s1)
    233c:	920b1d6c 	lbu	t3,7532(s0)
    2340:	51600075 	beqzl	t3,2518 <func_80B2C398+0x380>
    2344:	24010005 	li	at,5
    2348:	8e021d90 	lw	v0,7568(s0)
    234c:	50400072 	beqzl	v0,2518 <func_80B2C398+0x380>
    2350:	24010005 	li	at,5
    2354:	960c1d74 	lhu	t4,7540(s0)
    2358:	944d0004 	lhu	t5,4(v0)
    235c:	018d082a 	slt	at,t4,t5
    2360:	5020006d 	beqzl	at,2518 <func_80B2C398+0x380>
    2364:	24010005 	li	at,5
    2368:	8c4e000c 	lw	t6,12(v0)
    236c:	448e3000 	mtc1	t6,$f6
    2370:	00000000 	nop
    2374:	46803420 	cvt.s.w	$f16,$f6
    2378:	e7b00044 	swc1	$f16,68(sp)
    237c:	8e0f1d90 	lw	t7,7568(s0)
    2380:	8df80010 	lw	t8,16(t7)
    2384:	44984000 	mtc1	t8,$f8
    2388:	00000000 	nop
    238c:	468042a0 	cvt.s.w	$f10,$f8
    2390:	e7aa0048 	swc1	$f10,72(sp)
    2394:	8e191d90 	lw	t9,7568(s0)
    2398:	8f280014 	lw	t0,20(t9)
    239c:	44889000 	mtc1	t0,$f18
    23a0:	00000000 	nop
    23a4:	46809120 	cvt.s.w	$f4,$f18
    23a8:	e7a4004c 	swc1	$f4,76(sp)
    23ac:	8e091d90 	lw	t1,7568(s0)
    23b0:	8d2a0018 	lw	t2,24(t1)
    23b4:	448a3000 	mtc1	t2,$f6
    23b8:	00000000 	nop
    23bc:	46803420 	cvt.s.w	$f16,$f6
    23c0:	e7b00038 	swc1	$f16,56(sp)
    23c4:	8e0b1d90 	lw	t3,7568(s0)
    23c8:	8d6c001c 	lw	t4,28(t3)
    23cc:	448c4000 	mtc1	t4,$f8
    23d0:	00000000 	nop
    23d4:	468042a0 	cvt.s.w	$f10,$f8
    23d8:	e7aa003c 	swc1	$f10,60(sp)
    23dc:	8e0d1d90 	lw	t5,7568(s0)
    23e0:	8dae0020 	lw	t6,32(t5)
    23e4:	448e9000 	mtc1	t6,$f18
    23e8:	00000000 	nop
    23ec:	46809120 	cvt.s.w	$f4,$f18
    23f0:	e7a40040 	swc1	$f4,64(sp)
    23f4:	8e021d90 	lw	v0,7568(s0)
    23f8:	96061d74 	lhu	a2,7540(s0)
    23fc:	94440004 	lhu	a0,4(v0)
    2400:	94450002 	lhu	a1,2(v0)
    2404:	0c000000 	jal	0 <func_80B2A200>
    2408:	a7a30032 	sh	v1,50(sp)
    240c:	c7a60038 	lwc1	$f6,56(sp)
    2410:	c7b00044 	lwc1	$f16,68(sp)
    2414:	87a30032 	lh	v1,50(sp)
    2418:	2401000c 	li	at,12
    241c:	46103201 	sub.s	$f8,$f6,$f16
    2420:	27a40044 	addiu	a0,sp,68
    2424:	27a50038 	addiu	a1,sp,56
    2428:	46004282 	mul.s	$f10,$f8,$f0
    242c:	46105480 	add.s	$f18,$f10,$f16
    2430:	e6320024 	swc1	$f18,36(s1)
    2434:	c7a60048 	lwc1	$f6,72(sp)
    2438:	c7a4003c 	lwc1	$f4,60(sp)
    243c:	46062201 	sub.s	$f8,$f4,$f6
    2440:	46004282 	mul.s	$f10,$f8,$f0
    2444:	46065400 	add.s	$f16,$f10,$f6
    2448:	e6300028 	swc1	$f16,40(s1)
    244c:	c7a4004c 	lwc1	$f4,76(sp)
    2450:	c7b20040 	lwc1	$f18,64(sp)
    2454:	46049201 	sub.s	$f8,$f18,$f4
    2458:	46004282 	mul.s	$f10,$f8,$f0
    245c:	46045180 	add.s	$f6,$f10,$f4
    2460:	e626002c 	swc1	$f6,44(s1)
    2464:	8e0f1d90 	lw	t7,7568(s0)
    2468:	95f80000 	lhu	t8,0(t7)
    246c:	57010015 	bnel	t8,at,24c4 <func_80B2C398+0x32c>
    2470:	24010009 	li	at,9
    2474:	0c000000 	jal	0 <func_80B2A200>
    2478:	a7a30032 	sh	v1,50(sp)
    247c:	00022c00 	sll	a1,v0,0x10
    2480:	24190001 	li	t9,1
    2484:	a7a20030 	sh	v0,48(sp)
    2488:	afb90010 	sw	t9,16(sp)
    248c:	00052c03 	sra	a1,a1,0x10
    2490:	26240032 	addiu	a0,s1,50
    2494:	2406000a 	li	a2,10
    2498:	0c000000 	jal	0 <func_80B2A200>
    249c:	240703e8 	li	a3,1000
    24a0:	24080001 	li	t0,1
    24a4:	afa80010 	sw	t0,16(sp)
    24a8:	262400b6 	addiu	a0,s1,182
    24ac:	87a50030 	lh	a1,48(sp)
    24b0:	2406000a 	li	a2,10
    24b4:	0c000000 	jal	0 <func_80B2A200>
    24b8:	240703e8 	li	a3,1000
    24bc:	87a30032 	lh	v1,50(sp)
    24c0:	24010009 	li	at,9
    24c4:	54610014 	bnel	v1,at,2518 <func_80B2C398+0x380>
    24c8:	24010005 	li	at,5
    24cc:	8e091d90 	lw	t1,7568(s0)
    24d0:	952a0006 	lhu	t2,6(t1)
    24d4:	a62a0030 	sh	t2,48(s1)
    24d8:	8e0b1d90 	lw	t3,7568(s0)
    24dc:	956c0008 	lhu	t4,8(t3)
    24e0:	a62c0032 	sh	t4,50(s1)
    24e4:	8e0d1d90 	lw	t5,7568(s0)
    24e8:	95ae000a 	lhu	t6,10(t5)
    24ec:	a62e0034 	sh	t6,52(s1)
    24f0:	8e0f1d90 	lw	t7,7568(s0)
    24f4:	95f80006 	lhu	t8,6(t7)
    24f8:	a63800b4 	sh	t8,180(s1)
    24fc:	8e191d90 	lw	t9,7568(s0)
    2500:	97280008 	lhu	t0,8(t9)
    2504:	a62800b6 	sh	t0,182(s1)
    2508:	8e091d90 	lw	t1,7568(s0)
    250c:	952a000a 	lhu	t2,10(t1)
    2510:	a62a00b8 	sh	t2,184(s1)
    2514:	24010005 	li	at,5
    2518:	1461000e 	bne	v1,at,2554 <func_80B2C398+0x3bc>
    251c:	3c070000 	lui	a3,0x0
    2520:	3c0b0000 	lui	t3,0x0
    2524:	24e70000 	addiu	a3,a3,0
    2528:	256b0000 	addiu	t3,t3,0
    252c:	3c050000 	lui	a1,0x0
    2530:	24a50000 	addiu	a1,a1,0
    2534:	afab0014 	sw	t3,20(sp)
    2538:	afa70010 	sw	a3,16(sp)
    253c:	240420b3 	li	a0,8371
    2540:	0c000000 	jal	0 <func_80B2A200>
    2544:	24060004 	li	a2,4
    2548:	02202025 	move	a0,s1
    254c:	0c000000 	jal	0 <func_80B2A200>
    2550:	02002825 	move	a1,s0
    2554:	8fbf0024 	lw	ra,36(sp)
    2558:	8fb0001c 	lw	s0,28(sp)
    255c:	8fb10020 	lw	s1,32(sp)
    2560:	03e00008 	jr	ra
    2564:	27bd0050 	addiu	sp,sp,80

00002568 <func_80B2C768>:
    2568:	27bdffe0 	addiu	sp,sp,-32
    256c:	afa60028 	sw	a2,40(sp)
    2570:	00063400 	sll	a2,a2,0x10
    2574:	00063403 	sra	a2,a2,0x10
    2578:	30ce0001 	andi	t6,a2,0x1
    257c:	afbf0014 	sw	ra,20(sp)
    2580:	afa40020 	sw	a0,32(sp)
    2584:	15c00023 	bnez	t6,2614 <func_80B2C768+0xac>
    2588:	afa50024 	sw	a1,36(sp)
    258c:	0006c080 	sll	t8,a2,0x2
    2590:	3c0142c8 	lui	at,0x42c8
    2594:	0306c023 	subu	t8,t8,a2
    2598:	44810000 	mtc1	at,$f0
    259c:	0018c080 	sll	t8,t8,0x2
    25a0:	3c01c3d2 	lui	at,0xc3d2
    25a4:	0306c021 	addu	t8,t8,a2
    25a8:	44811000 	mtc1	at,$f2
    25ac:	0018c080 	sll	t8,t8,0x2
    25b0:	00981021 	addu	v0,a0,t8
    25b4:	3c0143c8 	lui	at,0x43c8
    25b8:	44812000 	mtc1	at,$f4
    25bc:	3c01c3c8 	lui	at,0xc3c8
    25c0:	44813000 	mtc1	at,$f6
    25c4:	e44001e8 	swc1	$f0,488(v0)
    25c8:	e44001f4 	swc1	$f0,500(v0)
    25cc:	e44201ec 	swc1	$f2,492(v0)
    25d0:	e44201f8 	swc1	$f2,504(v0)
    25d4:	e44401f0 	swc1	$f4,496(v0)
    25d8:	e44601fc 	swc1	$f6,508(v0)
    25dc:	0c000000 	jal	0 <func_80B2A200>
    25e0:	afa20018 	sw	v0,24(sp)
    25e4:	3c0140a0 	lui	at,0x40a0
    25e8:	44814000 	mtc1	at,$f8
    25ec:	3c014140 	lui	at,0x4140
    25f0:	44818000 	mtc1	at,$f16
    25f4:	46080282 	mul.s	$f10,$f0,$f8
    25f8:	3c010000 	lui	at,0x0
    25fc:	c4240000 	lwc1	$f4,0(at)
    2600:	8fa20018 	lw	v0,24(sp)
    2604:	46105480 	add.s	$f18,$f10,$f16
    2608:	46049182 	mul.s	$f6,$f18,$f4
    260c:	10000023 	b	269c <func_80B2C768+0x134>
    2610:	e4460210 	swc1	$f6,528(v0)
    2614:	00064080 	sll	t0,a2,0x2
    2618:	3c01c2c8 	lui	at,0xc2c8
    261c:	01064023 	subu	t0,t0,a2
    2620:	44810000 	mtc1	at,$f0
    2624:	8fb90020 	lw	t9,32(sp)
    2628:	00084080 	sll	t0,t0,0x2
    262c:	3c01c3d2 	lui	at,0xc3d2
    2630:	01064021 	addu	t0,t0,a2
    2634:	44811000 	mtc1	at,$f2
    2638:	00084080 	sll	t0,t0,0x2
    263c:	3c0143c8 	lui	at,0x43c8
    2640:	03281021 	addu	v0,t9,t0
    2644:	44814000 	mtc1	at,$f8
    2648:	3c01c3c8 	lui	at,0xc3c8
    264c:	44815000 	mtc1	at,$f10
    2650:	e44001e8 	swc1	$f0,488(v0)
    2654:	e44001f4 	swc1	$f0,500(v0)
    2658:	e44201ec 	swc1	$f2,492(v0)
    265c:	e44201f8 	swc1	$f2,504(v0)
    2660:	e44801f0 	swc1	$f8,496(v0)
    2664:	e44a01fc 	swc1	$f10,508(v0)
    2668:	0c000000 	jal	0 <func_80B2A200>
    266c:	afa20018 	sw	v0,24(sp)
    2670:	3c0140a0 	lui	at,0x40a0
    2674:	44818000 	mtc1	at,$f16
    2678:	3c014140 	lui	at,0x4140
    267c:	44812000 	mtc1	at,$f4
    2680:	46100482 	mul.s	$f18,$f0,$f16
    2684:	3c010000 	lui	at,0x0
    2688:	c4280000 	lwc1	$f8,0(at)
    268c:	8fa20018 	lw	v0,24(sp)
    2690:	46049180 	add.s	$f6,$f18,$f4
    2694:	46083282 	mul.s	$f10,$f6,$f8
    2698:	e44a0210 	swc1	$f10,528(v0)
    269c:	8fbf0014 	lw	ra,20(sp)
    26a0:	27bd0020 	addiu	sp,sp,32
    26a4:	03e00008 	jr	ra
    26a8:	00000000 	nop

000026ac <func_80B2C8AC>:
    26ac:	27bdff30 	addiu	sp,sp,-208
    26b0:	afb40068 	sw	s4,104(sp)
    26b4:	00a0a025 	move	s4,a1
    26b8:	afbf007c 	sw	ra,124(sp)
    26bc:	afbe0078 	sw	s8,120(sp)
    26c0:	afb70074 	sw	s7,116(sp)
    26c4:	afb60070 	sw	s6,112(sp)
    26c8:	afb5006c 	sw	s5,108(sp)
    26cc:	afb30064 	sw	s3,100(sp)
    26d0:	afb20060 	sw	s2,96(sp)
    26d4:	afb1005c 	sw	s1,92(sp)
    26d8:	afb00058 	sw	s0,88(sp)
    26dc:	f7ba0050 	sdc1	$f26,80(sp)
    26e0:	f7b80048 	sdc1	$f24,72(sp)
    26e4:	f7b60040 	sdc1	$f22,64(sp)
    26e8:	f7b40038 	sdc1	$f20,56(sp)
    26ec:	8ca50000 	lw	a1,0(a1)
    26f0:	00809025 	move	s2,a0
    26f4:	3c060000 	lui	a2,0x0
    26f8:	24c60000 	addiu	a2,a2,0
    26fc:	27a400b4 	addiu	a0,sp,180
    2700:	24070795 	li	a3,1941
    2704:	0c000000 	jal	0 <func_80B2A200>
    2708:	00a08825 	move	s1,a1
    270c:	3c010000 	lui	at,0x0
    2710:	c43a0000 	lwc1	$f26,0(at)
    2714:	3c010000 	lui	at,0x0
    2718:	c4360000 	lwc1	$f22,0(at)
    271c:	3c013f80 	lui	at,0x3f80
    2720:	3c150100 	lui	s5,0x100
    2724:	3c160405 	lui	s6,0x405
    2728:	4481a000 	mtc1	at,$f20
    272c:	4480c000 	mtc1	zero,$f24
    2730:	26d6d4e0 	addiu	s6,s6,-11040
    2734:	26b50000 	addiu	s5,s5,0
    2738:	00009825 	move	s3,zero
    273c:	241e0001 	li	s8,1
    2740:	24170034 	li	s7,52
    2744:	02770019 	multu	s3,s7
    2748:	02402025 	move	a0,s2
    274c:	02802825 	move	a1,s4
    2750:	00133400 	sll	a2,s3,0x10
    2754:	00007012 	mflo	t6
    2758:	024e8021 	addu	s0,s2,t6
    275c:	92020218 	lbu	v0,536(s0)
    2760:	10400008 	beqz	v0,2784 <func_80B2C8AC+0xd8>
    2764:	00000000 	nop
    2768:	105e0012 	beq	v0,s8,27b4 <func_80B2C8AC+0x108>
    276c:	26040214 	addiu	a0,s0,532
    2770:	24010002 	li	at,2
    2774:	1041002e 	beq	v0,at,2830 <func_80B2C8AC+0x184>
    2778:	02402025 	move	a0,s2
    277c:	10000035 	b	2854 <func_80B2C8AC+0x1a8>
    2780:	00000000 	nop
    2784:	0c000000 	jal	0 <func_80B2A200>
    2788:	00063403 	sra	a2,a2,0x10
    278c:	00137843 	sra	t7,s3,0x1
    2790:	448f2000 	mtc1	t7,$f4
    2794:	92180218 	lbu	t8,536(s0)
    2798:	e616020c 	swc1	$f22,524(s0)
    279c:	468021a0 	cvt.s.w	$f6,$f4
    27a0:	27190001 	addiu	t9,t8,1
    27a4:	a2190218 	sb	t9,536(s0)
    27a8:	461a3202 	mul.s	$f8,$f6,$f26
    27ac:	10000029 	b	2854 <func_80B2C8AC+0x1a8>
    27b0:	e6080214 	swc1	$f8,532(s0)
    27b4:	c600020c 	lwc1	$f0,524(s0)
    27b8:	4405a000 	mfc1	a1,$f20
    27bc:	4406a000 	mfc1	a2,$f20
    27c0:	44070000 	mfc1	a3,$f0
    27c4:	0c000000 	jal	0 <func_80B2A200>
    27c8:	e7a00010 	swc1	$f0,16(sp)
    27cc:	c60001e8 	lwc1	$f0,488(s0)
    27d0:	c60a01f4 	lwc1	$f10,500(s0)
    27d4:	c60c0214 	lwc1	$f12,532(s0)
    27d8:	c60201ec 	lwc1	$f2,492(s0)
    27dc:	46005401 	sub.s	$f16,$f10,$f0
    27e0:	c60601f8 	lwc1	$f6,504(s0)
    27e4:	460ca03e 	c.le.s	$f20,$f12
    27e8:	46106482 	mul.s	$f18,$f12,$f16
    27ec:	46023201 	sub.s	$f8,$f6,$f2
    27f0:	46086282 	mul.s	$f10,$f12,$f8
    27f4:	46009100 	add.s	$f4,$f18,$f0
    27f8:	c60001f0 	lwc1	$f0,496(s0)
    27fc:	c61201fc 	lwc1	$f18,508(s0)
    2800:	e6040200 	swc1	$f4,512(s0)
    2804:	46009101 	sub.s	$f4,$f18,$f0
    2808:	46025400 	add.s	$f16,$f10,$f2
    280c:	46046182 	mul.s	$f6,$f12,$f4
    2810:	e6100204 	swc1	$f16,516(s0)
    2814:	46003200 	add.s	$f8,$f6,$f0
    2818:	4500000e 	bc1f	2854 <func_80B2C8AC+0x1a8>
    281c:	e6080208 	swc1	$f8,520(s0)
    2820:	92080218 	lbu	t0,536(s0)
    2824:	25090001 	addiu	t1,t0,1
    2828:	1000000a 	b	2854 <func_80B2C8AC+0x1a8>
    282c:	a2090218 	sb	t1,536(s0)
    2830:	00133400 	sll	a2,s3,0x10
    2834:	00063403 	sra	a2,a2,0x10
    2838:	0c000000 	jal	0 <func_80B2A200>
    283c:	02802825 	move	a1,s4
    2840:	920a0218 	lbu	t2,536(s0)
    2844:	e6180214 	swc1	$f24,532(s0)
    2848:	e616020c 	swc1	$f22,524(s0)
    284c:	254bffff 	addiu	t3,t2,-1
    2850:	a20b0218 	sb	t3,536(s0)
    2854:	0c000000 	jal	0 <func_80B2A200>
    2858:	8e840000 	lw	a0,0(s4)
    285c:	c60c0200 	lwc1	$f12,512(s0)
    2860:	c60e0204 	lwc1	$f14,516(s0)
    2864:	8e060208 	lw	a2,520(s0)
    2868:	0c000000 	jal	0 <func_80B2A200>
    286c:	00003825 	move	a3,zero
    2870:	c60c0210 	lwc1	$f12,528(s0)
    2874:	24070001 	li	a3,1
    2878:	44066000 	mfc1	a2,$f12
    287c:	0c000000 	jal	0 <func_80B2A200>
    2880:	46006386 	mov.s	$f14,$f12
    2884:	8e2202d0 	lw	v0,720(s1)
    2888:	3c0ddb06 	lui	t5,0xdb06
    288c:	35ad0020 	ori	t5,t5,0x20
    2890:	244c0008 	addiu	t4,v0,8
    2894:	ae2c02d0 	sw	t4,720(s1)
    2898:	ac4d0000 	sw	t5,0(v0)
    289c:	8e840000 	lw	a0,0(s4)
    28a0:	240e0020 	li	t6,32
    28a4:	240f0040 	li	t7,64
    28a8:	afaf0014 	sw	t7,20(sp)
    28ac:	afae0010 	sw	t6,16(sp)
    28b0:	afa0001c 	sw	zero,28(sp)
    28b4:	afbe0018 	sw	s8,24(sp)
    28b8:	8e99009c 	lw	t9,156(s4)
    28bc:	0013c080 	sll	t8,s3,0x2
    28c0:	0313c021 	addu	t8,t8,s3
    28c4:	00194080 	sll	t0,t9,0x2
    28c8:	01194021 	addu	t0,t0,t9
    28cc:	00084080 	sll	t0,t0,0x2
    28d0:	0018c040 	sll	t8,t8,0x1
    28d4:	03084823 	subu	t1,t8,t0
    28d8:	312a01ff 	andi	t2,t1,0x1ff
    28dc:	240c0080 	li	t4,128
    28e0:	240b0020 	li	t3,32
    28e4:	afab0024 	sw	t3,36(sp)
    28e8:	afac0028 	sw	t4,40(sp)
    28ec:	afaa0020 	sw	t2,32(sp)
    28f0:	00002825 	move	a1,zero
    28f4:	00003025 	move	a2,zero
    28f8:	00003825 	move	a3,zero
    28fc:	0c000000 	jal	0 <func_80B2A200>
    2900:	00408025 	move	s0,v0
    2904:	ae020004 	sw	v0,4(s0)
    2908:	8e2202d0 	lw	v0,720(s1)
    290c:	3c0efa00 	lui	t6,0xfa00
    2910:	35ce8080 	ori	t6,t6,0x8080
    2914:	244d0008 	addiu	t5,v0,8
    2918:	ae2d02d0 	sw	t5,720(s1)
    291c:	240faaff 	li	t7,-21761
    2920:	ac4f0004 	sw	t7,4(v0)
    2924:	ac4e0000 	sw	t6,0(v0)
    2928:	8e2202d0 	lw	v0,720(s1)
    292c:	3c08ff32 	lui	t0,0xff32
    2930:	350800ff 	ori	t0,t0,0xff
    2934:	24590008 	addiu	t9,v0,8
    2938:	ae3902d0 	sw	t9,720(s1)
    293c:	3c18fb00 	lui	t8,0xfb00
    2940:	ac580000 	sw	t8,0(v0)
    2944:	ac480004 	sw	t0,4(v0)
    2948:	8e2202d0 	lw	v0,720(s1)
    294c:	3c0ada38 	lui	t2,0xda38
    2950:	354a0003 	ori	t2,t2,0x3
    2954:	24490008 	addiu	t1,v0,8
    2958:	ae2902d0 	sw	t1,720(s1)
    295c:	3c050000 	lui	a1,0x0
    2960:	ac4a0000 	sw	t2,0(v0)
    2964:	8e840000 	lw	a0,0(s4)
    2968:	24a50000 	addiu	a1,a1,0
    296c:	240607eb 	li	a2,2027
    2970:	0c000000 	jal	0 <func_80B2A200>
    2974:	00408025 	move	s0,v0
    2978:	ae020004 	sw	v0,4(s0)
    297c:	8e2202d0 	lw	v0,720(s1)
    2980:	3c0cda38 	lui	t4,0xda38
    2984:	358c0001 	ori	t4,t4,0x1
    2988:	244b0008 	addiu	t3,v0,8
    298c:	ae2b02d0 	sw	t3,720(s1)
    2990:	ac550004 	sw	s5,4(v0)
    2994:	ac4c0000 	sw	t4,0(v0)
    2998:	8e2202d0 	lw	v0,720(s1)
    299c:	26730001 	addiu	s3,s3,1
    29a0:	00139c00 	sll	s3,s3,0x10
    29a4:	00139c03 	sra	s3,s3,0x10
    29a8:	244d0008 	addiu	t5,v0,8
    29ac:	2a610014 	slti	at,s3,20
    29b0:	ae2d02d0 	sw	t5,720(s1)
    29b4:	3c0ede00 	lui	t6,0xde00
    29b8:	ac4e0000 	sw	t6,0(v0)
    29bc:	1420ff61 	bnez	at,2744 <func_80B2C8AC+0x98>
    29c0:	ac560004 	sw	s6,4(v0)
    29c4:	3c060000 	lui	a2,0x0
    29c8:	24c60000 	addiu	a2,a2,0
    29cc:	27a400b4 	addiu	a0,sp,180
    29d0:	8e850000 	lw	a1,0(s4)
    29d4:	0c000000 	jal	0 <func_80B2A200>
    29d8:	240707f2 	li	a3,2034
    29dc:	8fbf007c 	lw	ra,124(sp)
    29e0:	d7b40038 	ldc1	$f20,56(sp)
    29e4:	d7b60040 	ldc1	$f22,64(sp)
    29e8:	d7b80048 	ldc1	$f24,72(sp)
    29ec:	d7ba0050 	ldc1	$f26,80(sp)
    29f0:	8fb00058 	lw	s0,88(sp)
    29f4:	8fb1005c 	lw	s1,92(sp)
    29f8:	8fb20060 	lw	s2,96(sp)
    29fc:	8fb30064 	lw	s3,100(sp)
    2a00:	8fb40068 	lw	s4,104(sp)
    2a04:	8fb5006c 	lw	s5,108(sp)
    2a08:	8fb60070 	lw	s6,112(sp)
    2a0c:	8fb70074 	lw	s7,116(sp)
    2a10:	8fbe0078 	lw	s8,120(sp)
    2a14:	03e00008 	jr	ra
    2a18:	27bd00d0 	addiu	sp,sp,208

00002a1c <func_80B2CC1C>:
    2a1c:	27bdffc0 	addiu	sp,sp,-64
    2a20:	afbf001c 	sw	ra,28(sp)
    2a24:	afb10018 	sw	s1,24(sp)
    2a28:	afb00014 	sw	s0,20(sp)
    2a2c:	afa40040 	sw	a0,64(sp)
    2a30:	84ae001c 	lh	t6,28(a1)
    2a34:	24010005 	li	at,5
    2a38:	3c110000 	lui	s1,0x0
    2a3c:	000e7a03 	sra	t7,t6,0x8
    2a40:	15e10099 	bne	t7,at,2ca8 <func_80B2CC1C+0x28c>
    2a44:	26310000 	addiu	s1,s1,0
    2a48:	8e380000 	lw	t8,0(s1)
    2a4c:	3c014120 	lui	at,0x4120
    2a50:	44811000 	mtc1	at,$f2
    2a54:	87191340 	lh	t9,4928(t8)
    2a58:	3c100000 	lui	s0,0x0
    2a5c:	26100000 	addiu	s0,s0,0
    2a60:	44992000 	mtc1	t9,$f4
    2a64:	8e080000 	lw	t0,0(s0)
    2a68:	3c0142c8 	lui	at,0x42c8
    2a6c:	468021a0 	cvt.s.w	$f6,$f4
    2a70:	44819000 	mtc1	at,$f18
    2a74:	3c010000 	lui	at,0x0
    2a78:	3c040000 	lui	a0,0x0
    2a7c:	46023203 	div.s	$f8,$f6,$f2
    2a80:	e50816b0 	swc1	$f8,5808(t0)
    2a84:	8e290000 	lw	t1,0(s1)
    2a88:	8e0c0000 	lw	t4,0(s0)
    2a8c:	852a134c 	lh	t2,4940(t1)
    2a90:	254b0019 	addiu	t3,t2,25
    2a94:	448b5000 	mtc1	t3,$f10
    2a98:	00000000 	nop
    2a9c:	46805420 	cvt.s.w	$f16,$f10
    2aa0:	46128103 	div.s	$f4,$f16,$f18
    2aa4:	44809000 	mtc1	zero,$f18
    2aa8:	e58416b4 	swc1	$f4,5812(t4)
    2aac:	8e2d0000 	lw	t5,0(s1)
    2ab0:	8e180000 	lw	t8,0(s0)
    2ab4:	85ae1342 	lh	t6,4930(t5)
    2ab8:	25cfffd3 	addiu	t7,t6,-45
    2abc:	448f3000 	mtc1	t7,$f6
    2ac0:	00000000 	nop
    2ac4:	46803220 	cvt.s.w	$f8,$f6
    2ac8:	46024283 	div.s	$f10,$f8,$f2
    2acc:	e70a16b8 	swc1	$f10,5816(t8)
    2ad0:	8e190000 	lw	t9,0(s0)
    2ad4:	c4300000 	lwc1	$f16,0(at)
    2ad8:	3c014150 	lui	at,0x4150
    2adc:	e73016ac 	swc1	$f16,5804(t9)
    2ae0:	8e080000 	lw	t0,0(s0)
    2ae4:	e51216d0 	swc1	$f18,5840(t0)
    2ae8:	8e290000 	lw	t1,0(s1)
    2aec:	8e0c0000 	lw	t4,0(s0)
    2af0:	44819000 	mtc1	at,$f18
    2af4:	852a135a 	lh	t2,4954(t1)
    2af8:	254bfff6 	addiu	t3,t2,-10
    2afc:	448b2000 	mtc1	t3,$f4
    2b00:	00000000 	nop
    2b04:	468021a0 	cvt.s.w	$f6,$f4
    2b08:	46023203 	div.s	$f8,$f6,$f2
    2b0c:	e58816c8 	swc1	$f8,5832(t4)
    2b10:	8e2d0000 	lw	t5,0(s1)
    2b14:	84840000 	lh	a0,0(a0)
    2b18:	85ae09f4 	lh	t6,2548(t5)
    2b1c:	afa50044 	sw	a1,68(sp)
    2b20:	448e5000 	mtc1	t6,$f10
    2b24:	00000000 	nop
    2b28:	46805420 	cvt.s.w	$f16,$f10
    2b2c:	46128101 	sub.s	$f4,$f16,$f18
    2b30:	0c000000 	jal	0 <func_80B2A200>
    2b34:	e7a40034 	swc1	$f4,52(sp)
    2b38:	8e220000 	lw	v0,0(s1)
    2b3c:	3c014120 	lui	at,0x4120
    2b40:	44811000 	mtc1	at,$f2
    2b44:	845809fc 	lh	t8,2556(v0)
    2b48:	844f09f6 	lh	t7,2550(v0)
    2b4c:	3c014040 	lui	at,0x4040
    2b50:	44989000 	mtc1	t8,$f18
    2b54:	448f3000 	mtc1	t7,$f6
    2b58:	44815000 	mtc1	at,$f10
    2b5c:	46809120 	cvt.s.w	$f4,$f18
    2b60:	3c080000 	lui	t0,0x0
    2b64:	85080000 	lh	t0,0(t0)
    2b68:	8fa60044 	lw	a2,68(sp)
    2b6c:	3c010000 	lui	at,0x0
    2b70:	46803220 	cvt.s.w	$f8,$f6
    2b74:	46002182 	mul.s	$f6,$f4,$f0
    2b78:	00002825 	move	a1,zero
    2b7c:	460a4400 	add.s	$f16,$f8,$f10
    2b80:	46103200 	add.s	$f8,$f6,$f16
    2b84:	e7a80038 	swc1	$f8,56(sp)
    2b88:	845909f8 	lh	t9,2552(v0)
    2b8c:	44995000 	mtc1	t9,$f10
    2b90:	00000000 	nop
    2b94:	468054a0 	cvt.s.w	$f18,$f10
    2b98:	46029101 	sub.s	$f4,$f18,$f2
    2b9c:	e7a4003c 	swc1	$f4,60(sp)
    2ba0:	844909fa 	lh	t1,2554(v0)
    2ba4:	00095300 	sll	t2,t1,0xc
    2ba8:	010a5821 	addu	t3,t0,t2
    2bac:	256c2000 	addiu	t4,t3,8192
    2bb0:	a42c0000 	sh	t4,0(at)
    2bb4:	84cd00b6 	lh	t5,182(a2)
    2bb8:	3c014700 	lui	at,0x4700
    2bbc:	44814000 	mtc1	at,$f8
    2bc0:	448d3000 	mtc1	t5,$f6
    2bc4:	3c010000 	lui	at,0x0
    2bc8:	c4320000 	lwc1	$f18,0(at)
    2bcc:	46803420 	cvt.s.w	$f16,$f6
    2bd0:	46088283 	div.s	$f10,$f16,$f8
    2bd4:	46125302 	mul.s	$f12,$f10,$f18
    2bd8:	0c000000 	jal	0 <func_80B2A200>
    2bdc:	00000000 	nop
    2be0:	27a40034 	addiu	a0,sp,52
    2be4:	0c000000 	jal	0 <func_80B2A200>
    2be8:	27a50028 	addiu	a1,sp,40
    2bec:	3c020000 	lui	v0,0x0
    2bf0:	24420000 	addiu	v0,v0,0
    2bf4:	c4440000 	lwc1	$f4,0(v0)
    2bf8:	c7a60028 	lwc1	$f6,40(sp)
    2bfc:	8e0e0000 	lw	t6,0(s0)
    2c00:	3c014150 	lui	at,0x4150
    2c04:	46062400 	add.s	$f16,$f4,$f6
    2c08:	27a40034 	addiu	a0,sp,52
    2c0c:	27a50028 	addiu	a1,sp,40
    2c10:	e5d016d4 	swc1	$f16,5844(t6)
    2c14:	c7aa002c 	lwc1	$f10,44(sp)
    2c18:	c4480004 	lwc1	$f8,4(v0)
    2c1c:	8e0f0000 	lw	t7,0(s0)
    2c20:	460a4480 	add.s	$f18,$f8,$f10
    2c24:	e5f216d8 	swc1	$f18,5848(t7)
    2c28:	c7a60030 	lwc1	$f6,48(sp)
    2c2c:	c4440008 	lwc1	$f4,8(v0)
    2c30:	8e180000 	lw	t8,0(s0)
    2c34:	44819000 	mtc1	at,$f18
    2c38:	46062400 	add.s	$f16,$f4,$f6
    2c3c:	e71016dc 	swc1	$f16,5852(t8)
    2c40:	8e390000 	lw	t9,0(s1)
    2c44:	872909f4 	lh	t1,2548(t9)
    2c48:	44894000 	mtc1	t1,$f8
    2c4c:	00000000 	nop
    2c50:	468042a0 	cvt.s.w	$f10,$f8
    2c54:	46125101 	sub.s	$f4,$f10,$f18
    2c58:	46002187 	neg.s	$f6,$f4
    2c5c:	0c000000 	jal	0 <func_80B2A200>
    2c60:	e7a60034 	swc1	$f6,52(sp)
    2c64:	3c020000 	lui	v0,0x0
    2c68:	24420000 	addiu	v0,v0,0
    2c6c:	c4500000 	lwc1	$f16,0(v0)
    2c70:	c7a80028 	lwc1	$f8,40(sp)
    2c74:	8e080000 	lw	t0,0(s0)
    2c78:	46088280 	add.s	$f10,$f16,$f8
    2c7c:	e50a16e0 	swc1	$f10,5856(t0)
    2c80:	c7a4002c 	lwc1	$f4,44(sp)
    2c84:	c4520004 	lwc1	$f18,4(v0)
    2c88:	8e0a0000 	lw	t2,0(s0)
    2c8c:	46049180 	add.s	$f6,$f18,$f4
    2c90:	e54616e4 	swc1	$f6,5860(t2)
    2c94:	c7a80030 	lwc1	$f8,48(sp)
    2c98:	c4500008 	lwc1	$f16,8(v0)
    2c9c:	8e0b0000 	lw	t3,0(s0)
    2ca0:	46088280 	add.s	$f10,$f16,$f8
    2ca4:	e56a16e8 	swc1	$f10,5864(t3)
    2ca8:	8fbf001c 	lw	ra,28(sp)
    2cac:	8fb00014 	lw	s0,20(sp)
    2cb0:	8fb10018 	lw	s1,24(sp)
    2cb4:	03e00008 	jr	ra
    2cb8:	27bd0040 	addiu	sp,sp,64
    2cbc:	00000000 	nop
