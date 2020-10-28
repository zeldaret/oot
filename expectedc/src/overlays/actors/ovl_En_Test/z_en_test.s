
build/src/overlays/actors/ovl_En_Test/z_en_test.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTest_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac8507cc 	sw	a1,1996(a0)

00000008 <EnTest_Init>:
       8:	27bdfe18 	addiu	sp,sp,-488
       c:	afb10028 	sw	s1,40(sp)
      10:	00a08825 	move	s1,a1
      14:	afbf002c 	sw	ra,44(sp)
      18:	afb00024 	sw	s0,36(sp)
      1c:	3c050000 	lui	a1,0x0
      20:	00808025 	move	s0,a0
      24:	0c000000 	jal	0 <EnTest_SetupAction>
      28:	24a50000 	addiu	a1,a1,0
      2c:	3c060600 	lui	a2,0x600
      30:	3c070600 	lui	a3,0x600
      34:	260e01cc 	addiu	t6,s0,460
      38:	260f033a 	addiu	t7,s0,826
      3c:	2418003d 	li	t8,61
      40:	afb80018 	sw	t8,24(sp)
      44:	afaf0014 	sw	t7,20(sp)
      48:	afae0010 	sw	t6,16(sp)
      4c:	24e7316c 	addiu	a3,a3,12652
      50:	24c67c28 	addiu	a2,a2,31784
      54:	02202025 	move	a0,s1
      58:	0c000000 	jal	0 <EnTest_SetupAction>
      5c:	26050188 	addiu	a1,s0,392
      60:	3c060600 	lui	a2,0x600
      64:	3c070600 	lui	a3,0x600
      68:	261904ec 	addiu	t9,s0,1260
      6c:	2608065a 	addiu	t0,s0,1626
      70:	2409003d 	li	t1,61
      74:	afa90018 	sw	t1,24(sp)
      78:	afa80014 	sw	t0,20(sp)
      7c:	afb90010 	sw	t9,16(sp)
      80:	24e7316c 	addiu	a3,a3,12652
      84:	24c67c28 	addiu	a2,a2,31784
      88:	02202025 	move	a0,s1
      8c:	0c000000 	jal	0 <EnTest_SetupAction>
      90:	260504a8 	addiu	a1,s0,1192
      94:	3c060000 	lui	a2,0x0
      98:	24c60000 	addiu	a2,a2,0
      9c:	260400b4 	addiu	a0,s0,180
      a0:	24050000 	li	a1,0
      a4:	0c000000 	jal	0 <EnTest_SetupAction>
      a8:	3c0742b4 	lui	a3,0x42b4
      ac:	8e0c0028 	lw	t4,40(s0)
      b0:	3c014234 	lui	at,0x4234
      b4:	8e0d0024 	lw	t5,36(s0)
      b8:	ae0c003c 	sw	t4,60(s0)
      bc:	c604003c 	lwc1	$f4,60(s0)
      c0:	44813000 	mtc1	at,$f6
      c4:	ae0d0038 	sw	t5,56(s0)
      c8:	8e0d002c 	lw	t5,44(s0)
      cc:	46062200 	add.s	$f8,$f4,$f6
      d0:	3c0e0000 	lui	t6,0x0
      d4:	240a0028 	li	t2,40
      d8:	240b0064 	li	t3,100
      dc:	25ce0000 	addiu	t6,t6,0
      e0:	a60a00a8 	sh	t2,168(s0)
      e4:	a60b00aa 	sh	t3,170(s0)
      e8:	e608003c 	swc1	$f8,60(s0)
      ec:	ae0e0098 	sw	t6,152(s0)
      f0:	26050810 	addiu	a1,s0,2064
      f4:	ae0d0040 	sw	t5,64(s0)
      f8:	afa50034 	sw	a1,52(sp)
      fc:	0c000000 	jal	0 <EnTest_SetupAction>
     100:	02202025 	move	a0,s1
     104:	3c070000 	lui	a3,0x0
     108:	8fa50034 	lw	a1,52(sp)
     10c:	24e70000 	addiu	a3,a3,0
     110:	02202025 	move	a0,s1
     114:	0c000000 	jal	0 <EnTest_SetupAction>
     118:	02003025 	move	a2,s0
     11c:	260508dc 	addiu	a1,s0,2268
     120:	afa50034 	sw	a1,52(sp)
     124:	0c000000 	jal	0 <EnTest_SetupAction>
     128:	02202025 	move	a0,s1
     12c:	3c070000 	lui	a3,0x0
     130:	8fa50034 	lw	a1,52(sp)
     134:	24e70000 	addiu	a3,a3,0
     138:	02202025 	move	a0,s1
     13c:	0c000000 	jal	0 <EnTest_SetupAction>
     140:	02003025 	move	a2,s0
     144:	2605085c 	addiu	a1,s0,2140
     148:	afa50034 	sw	a1,52(sp)
     14c:	0c000000 	jal	0 <EnTest_SetupAction>
     150:	02202025 	move	a0,s1
     154:	3c070000 	lui	a3,0x0
     158:	8fa50034 	lw	a1,52(sp)
     15c:	24e70000 	addiu	a3,a3,0
     160:	02202025 	move	a0,s1
     164:	0c000000 	jal	0 <EnTest_SetupAction>
     168:	02003025 	move	a2,s0
     16c:	240f00fe 	li	t7,254
     170:	2418000a 	li	t8,10
     174:	a20f00ae 	sb	t7,174(s0)
     178:	a21800af 	sb	t8,175(s0)
     17c:	240200ff 	li	v0,255
     180:	241900ff 	li	t9,255
     184:	24080040 	li	t0,64
     188:	24090004 	li	t1,4
     18c:	240a0002 	li	t2,2
     190:	27ab0048 	addiu	t3,sp,72
     194:	a3b901da 	sb	t9,474(sp)
     198:	a3a201d9 	sb	v0,473(sp)
     19c:	a3a201d8 	sb	v0,472(sp)
     1a0:	a3a201d6 	sb	v0,470(sp)
     1a4:	a3a201d5 	sb	v0,469(sp)
     1a8:	a3a201d4 	sb	v0,468(sp)
     1ac:	a3a201d2 	sb	v0,466(sp)
     1b0:	a3a201d1 	sb	v0,465(sp)
     1b4:	a3a201d0 	sb	v0,464(sp)
     1b8:	a3a201cf 	sb	v0,463(sp)
     1bc:	a3a201ce 	sb	v0,462(sp)
     1c0:	a3a201cd 	sb	v0,461(sp)
     1c4:	a3a201cc 	sb	v0,460(sp)
     1c8:	a3a001d7 	sb	zero,471(sp)
     1cc:	a3a001db 	sb	zero,475(sp)
     1d0:	a3a801d3 	sb	t0,467(sp)
     1d4:	afa901dc 	sw	t1,476(sp)
     1d8:	afa001e0 	sw	zero,480(sp)
     1dc:	afaa01e4 	sw	t2,484(sp)
     1e0:	afab0014 	sw	t3,20(sp)
     1e4:	afa00010 	sw	zero,16(sp)
     1e8:	02202025 	move	a0,s1
     1ec:	2605080c 	addiu	a1,s0,2060
     1f0:	24060001 	li	a2,1
     1f4:	0c000000 	jal	0 <EnTest_SetupAction>
     1f8:	00003825 	move	a3,zero
     1fc:	860c001c 	lh	t4,28(s0)
     200:	24010003 	li	at,3
     204:	11810005 	beq	t4,at,21c <EnTest_Init+0x214>
     208:	00000000 	nop
     20c:	0c000000 	jal	0 <EnTest_SetupAction>
     210:	02002025 	move	a0,s0
     214:	10000004 	b	228 <EnTest_Init+0x220>
     218:	860d001c 	lh	t5,28(s0)
     21c:	0c000000 	jal	0 <EnTest_SetupAction>
     220:	02002025 	move	a0,s0
     224:	860d001c 	lh	t5,28(s0)
     228:	55a00005 	bnezl	t5,240 <EnTest_Init+0x238>
     22c:	8fbf002c 	lw	ra,44(sp)
     230:	8e0e0004 	lw	t6,4(s0)
     234:	35cf0080 	ori	t7,t6,0x80
     238:	ae0f0004 	sw	t7,4(s0)
     23c:	8fbf002c 	lw	ra,44(sp)
     240:	8fb00024 	lw	s0,36(sp)
     244:	8fb10028 	lw	s1,40(sp)
     248:	03e00008 	jr	ra
     24c:	27bd01e8 	addiu	sp,sp,488

00000250 <EnTest_Destroy>:
     250:	27bdffd8 	addiu	sp,sp,-40
     254:	afbf0024 	sw	ra,36(sp)
     258:	afb10020 	sw	s1,32(sp)
     25c:	afb0001c 	sw	s0,28(sp)
     260:	848e001c 	lh	t6,28(a0)
     264:	24010002 	li	at,2
     268:	00808025 	move	s0,a0
     26c:	11c1000d 	beq	t6,at,2a4 <EnTest_Destroy+0x54>
     270:	00a08825 	move	s1,a1
     274:	3c0145fa 	lui	at,0x45fa
     278:	44812000 	mtc1	at,$f4
     27c:	00a02025 	move	a0,a1
     280:	02002825 	move	a1,s0
     284:	24060002 	li	a2,2
     288:	24070005 	li	a3,5
     28c:	0c000000 	jal	0 <EnTest_SetupAction>
     290:	e7a40010 	swc1	$f4,16(sp)
     294:	54400004 	bnezl	v0,2a8 <EnTest_Destroy+0x58>
     298:	02202025 	move	a0,s1
     29c:	0c000000 	jal	0 <EnTest_SetupAction>
     2a0:	00000000 	nop
     2a4:	02202025 	move	a0,s1
     2a8:	0c000000 	jal	0 <EnTest_SetupAction>
     2ac:	8e05080c 	lw	a1,2060(s0)
     2b0:	02202025 	move	a0,s1
     2b4:	0c000000 	jal	0 <EnTest_SetupAction>
     2b8:	260508dc 	addiu	a1,s0,2268
     2bc:	02202025 	move	a0,s1
     2c0:	0c000000 	jal	0 <EnTest_SetupAction>
     2c4:	26050810 	addiu	a1,s0,2064
     2c8:	02202025 	move	a0,s1
     2cc:	0c000000 	jal	0 <EnTest_SetupAction>
     2d0:	2605085c 	addiu	a1,s0,2140
     2d4:	8fbf0024 	lw	ra,36(sp)
     2d8:	8fb0001c 	lw	s0,28(sp)
     2dc:	8fb10020 	lw	s1,32(sp)
     2e0:	03e00008 	jr	ra
     2e4:	27bd0028 	addiu	sp,sp,40

000002e8 <func_8085F938>:
     2e8:	27bdffe8 	addiu	sp,sp,-24
     2ec:	afbf0014 	sw	ra,20(sp)
     2f0:	afa5001c 	sw	a1,28(sp)
     2f4:	0c000000 	jal	0 <EnTest_SetupAction>
     2f8:	afa40018 	sw	a0,24(sp)
     2fc:	3c014120 	lui	at,0x4120
     300:	44812000 	mtc1	at,$f4
     304:	240f0001 	li	t7,1
     308:	3c014f00 	lui	at,0x4f00
     30c:	46040182 	mul.s	$f6,$f0,$f4
     310:	8fa60018 	lw	a2,24(sp)
     314:	444ef800 	cfc1	t6,$31
     318:	44cff800 	ctc1	t7,$31
     31c:	00000000 	nop
     320:	46003224 	cvt.w.s	$f8,$f6
     324:	444ff800 	cfc1	t7,$31
     328:	00000000 	nop
     32c:	31ef0078 	andi	t7,t7,0x78
     330:	51e00013 	beqzl	t7,380 <func_8085F938+0x98>
     334:	440f4000 	mfc1	t7,$f8
     338:	44814000 	mtc1	at,$f8
     33c:	240f0001 	li	t7,1
     340:	46083201 	sub.s	$f8,$f6,$f8
     344:	44cff800 	ctc1	t7,$31
     348:	00000000 	nop
     34c:	46004224 	cvt.w.s	$f8,$f8
     350:	444ff800 	cfc1	t7,$31
     354:	00000000 	nop
     358:	31ef0078 	andi	t7,t7,0x78
     35c:	15e00005 	bnez	t7,374 <func_8085F938+0x8c>
     360:	00000000 	nop
     364:	440f4000 	mfc1	t7,$f8
     368:	3c018000 	lui	at,0x8000
     36c:	10000007 	b	38c <func_8085F938+0xa4>
     370:	01e17825 	or	t7,t7,at
     374:	10000005 	b	38c <func_8085F938+0xa4>
     378:	240fffff 	li	t7,-1
     37c:	440f4000 	mfc1	t7,$f8
     380:	00000000 	nop
     384:	05e0fffb 	bltz	t7,374 <func_8085F938+0x8c>
     388:	00000000 	nop
     38c:	44cef800 	ctc1	t6,$31
     390:	2de1000b 	sltiu	at,t7,11
     394:	1020002e 	beqz	at,450 <L8085FA98+0x8>
     398:	000f7880 	sll	t7,t7,0x2
     39c:	3c010000 	lui	at,0x0
     3a0:	002f0821 	addu	at,at,t7
     3a4:	8c2f0000 	lw	t7,0(at)
     3a8:	01e00008 	jr	t7
     3ac:	00000000 	nop

000003b0 <L8085FA00>:
     3b0:	3c01435c 	lui	at,0x435c
     3b4:	44815000 	mtc1	at,$f10
     3b8:	c4c00090 	lwc1	$f0,144(a2)
     3bc:	3c01432a 	lui	at,0x432a
     3c0:	460a003c 	c.lt.s	$f0,$f10
     3c4:	00000000 	nop
     3c8:	45000016 	bc1f	424 <L8085FA74>
     3cc:	00000000 	nop
     3d0:	44818000 	mtc1	at,$f16
     3d4:	00c02025 	move	a0,a2
     3d8:	2405071c 	li	a1,1820
     3dc:	4600803c 	c.lt.s	$f16,$f0
     3e0:	00000000 	nop
     3e4:	4500000f 	bc1f	424 <L8085FA74>
     3e8:	00000000 	nop
     3ec:	0c000000 	jal	0 <EnTest_SetupAction>
     3f0:	afa60018 	sw	a2,24(sp)
     3f4:	1040000b 	beqz	v0,424 <L8085FA74>
     3f8:	8fa60018 	lw	a2,24(sp)
     3fc:	8fa4001c 	lw	a0,28(sp)
     400:	00c02825 	move	a1,a2
     404:	0c000000 	jal	0 <EnTest_SetupAction>
     408:	afa60018 	sw	a2,24(sp)
     40c:	10400005 	beqz	v0,424 <L8085FA74>
     410:	8fa60018 	lw	a2,24(sp)
     414:	0c000000 	jal	0 <EnTest_SetupAction>
     418:	00c02025 	move	a0,a2
     41c:	1000000d 	b	454 <L8085FA98+0xc>
     420:	8fbf0014 	lw	ra,20(sp)

00000424 <L8085FA74>:
     424:	0c000000 	jal	0 <EnTest_SetupAction>
     428:	00c02025 	move	a0,a2
     42c:	10000009 	b	454 <L8085FA98+0xc>
     430:	8fbf0014 	lw	ra,20(sp)

00000434 <L8085FA84>:
     434:	00c02025 	move	a0,a2
     438:	0c000000 	jal	0 <EnTest_SetupAction>
     43c:	8fa5001c 	lw	a1,28(sp)
     440:	10000004 	b	454 <L8085FA98+0xc>
     444:	8fbf0014 	lw	ra,20(sp)

00000448 <L8085FA98>:
     448:	0c000000 	jal	0 <EnTest_SetupAction>
     44c:	00c02025 	move	a0,a2
     450:	8fbf0014 	lw	ra,20(sp)
     454:	27bd0018 	addiu	sp,sp,24
     458:	03e00008 	jr	ra
     45c:	00000000 	nop

00000460 <func_8085FAB0>:
     460:	27bdffe0 	addiu	sp,sp,-32
     464:	afbf0014 	sw	ra,20(sp)
     468:	8ca81c44 	lw	t0,7236(a1)
     46c:	848300b6 	lh	v1,182(a0)
     470:	00803025 	move	a2,a0
     474:	850e00b6 	lh	t6,182(t0)
     478:	00a03825 	move	a3,a1
     47c:	01c31023 	subu	v0,t6,v1
     480:	00021400 	sll	v0,v0,0x10
     484:	00021403 	sra	v0,v0,0x10
     488:	04430005 	bgezl	v0,4a0 <func_8085FAB0+0x40>
     48c:	284161a8 	slti	at,v0,25000
     490:	00021023 	negu	v0,v0
     494:	00021400 	sll	v0,v0,0x10
     498:	00021403 	sra	v0,v0,0x10
     49c:	284161a8 	slti	at,v0,25000
     4a0:	54200046 	bnezl	at,5bc <L8085FBE0+0x2c>
     4a4:	28413e81 	slti	at,v0,16001
     4a8:	afa60020 	sw	a2,32(sp)
     4ac:	0c000000 	jal	0 <EnTest_SetupAction>
     4b0:	afa70024 	sw	a3,36(sp)
     4b4:	3c014120 	lui	at,0x4120
     4b8:	44812000 	mtc1	at,$f4
     4bc:	24180001 	li	t8,1
     4c0:	3c014f00 	lui	at,0x4f00
     4c4:	46040182 	mul.s	$f6,$f0,$f4
     4c8:	8fa60020 	lw	a2,32(sp)
     4cc:	8fa70024 	lw	a3,36(sp)
     4d0:	444ff800 	cfc1	t7,$31
     4d4:	44d8f800 	ctc1	t8,$31
     4d8:	00000000 	nop
     4dc:	46003224 	cvt.w.s	$f8,$f6
     4e0:	4458f800 	cfc1	t8,$31
     4e4:	00000000 	nop
     4e8:	33180078 	andi	t8,t8,0x78
     4ec:	53000013 	beqzl	t8,53c <func_8085FAB0+0xdc>
     4f0:	44184000 	mfc1	t8,$f8
     4f4:	44814000 	mtc1	at,$f8
     4f8:	24180001 	li	t8,1
     4fc:	46083201 	sub.s	$f8,$f6,$f8
     500:	44d8f800 	ctc1	t8,$31
     504:	00000000 	nop
     508:	46004224 	cvt.w.s	$f8,$f8
     50c:	4458f800 	cfc1	t8,$31
     510:	00000000 	nop
     514:	33180078 	andi	t8,t8,0x78
     518:	17000005 	bnez	t8,530 <func_8085FAB0+0xd0>
     51c:	00000000 	nop
     520:	44184000 	mfc1	t8,$f8
     524:	3c018000 	lui	at,0x8000
     528:	10000007 	b	548 <func_8085FAB0+0xe8>
     52c:	0301c025 	or	t8,t8,at
     530:	10000005 	b	548 <func_8085FAB0+0xe8>
     534:	2418ffff 	li	t8,-1
     538:	44184000 	mfc1	t8,$f8
     53c:	00000000 	nop
     540:	0700fffb 	bltz	t8,530 <func_8085FAB0+0xd0>
     544:	00000000 	nop
     548:	44cff800 	ctc1	t7,$31
     54c:	2f01000a 	sltiu	at,t8,10
     550:	10200087 	beqz	at,770 <L8085FBE0+0x1e0>
     554:	0018c080 	sll	t8,t8,0x2
     558:	3c010000 	lui	at,0x0
     55c:	00380821 	addu	at,at,t8
     560:	8c380000 	lw	t8,0(at)
     564:	03000008 	jr	t8
     568:	00000000 	nop

0000056c <L8085FBBC>:
     56c:	0c000000 	jal	0 <EnTest_SetupAction>
     570:	00c02025 	move	a0,a2
     574:	1000007f 	b	774 <L8085FBE0+0x1e4>
     578:	8fbf0014 	lw	ra,20(sp)

0000057c <L8085FBCC>:
     57c:	00c02025 	move	a0,a2
     580:	0c000000 	jal	0 <EnTest_SetupAction>
     584:	00e02825 	move	a1,a3
     588:	1000007a 	b	774 <L8085FBE0+0x1e4>
     58c:	8fbf0014 	lw	ra,20(sp)

00000590 <L8085FBE0>:
     590:	84d9001c 	lh	t9,28(a2)
     594:	24010003 	li	at,3
     598:	53210076 	beql	t9,at,774 <L8085FBE0+0x1e4>
     59c:	8fbf0014 	lw	ra,20(sp)
     5a0:	84c9008a 	lh	t1,138(a2)
     5a4:	00c02025 	move	a0,a2
     5a8:	0c000000 	jal	0 <EnTest_SetupAction>
     5ac:	a4c90032 	sh	t1,50(a2)
     5b0:	10000070 	b	774 <L8085FBE0+0x1e4>
     5b4:	8fbf0014 	lw	ra,20(sp)
     5b8:	28413e81 	slti	at,v0,16001
     5bc:	1020006a 	beqz	at,768 <L8085FBE0+0x1d8>
     5c0:	00c02025 	move	a0,a2
     5c4:	84c5008a 	lh	a1,138(a2)
     5c8:	3c0a0001 	lui	t2,0x1
     5cc:	01475021 	addu	t2,t2,a3
     5d0:	00a31023 	subu	v0,a1,v1
     5d4:	00021400 	sll	v0,v0,0x10
     5d8:	00021403 	sra	v0,v0,0x10
     5dc:	04400003 	bltz	v0,5ec <L8085FBE0+0x5c>
     5e0:	00021823 	negu	v1,v0
     5e4:	10000001 	b	5ec <L8085FBE0+0x5c>
     5e8:	00401825 	move	v1,v0
     5ec:	28613e81 	slti	at,v1,16001
     5f0:	54200032 	bnezl	at,6bc <L8085FBE0+0x12c>
     5f4:	3c0142dc 	lui	at,0x42dc
     5f8:	8d4a1de4 	lw	t2,7652(t2)
     5fc:	314b0001 	andi	t3,t2,0x1
     600:	5160000b 	beqzl	t3,630 <L8085FBE0+0xa0>
     604:	3c01435c 	lui	at,0x435c
     608:	84cc001c 	lh	t4,28(a2)
     60c:	24010003 	li	at,3
     610:	00c02025 	move	a0,a2
     614:	51810006 	beql	t4,at,630 <L8085FBE0+0xa0>
     618:	3c01435c 	lui	at,0x435c
     61c:	0c000000 	jal	0 <EnTest_SetupAction>
     620:	a4c50032 	sh	a1,50(a2)
     624:	10000053 	b	774 <L8085FBE0+0x1e4>
     628:	8fbf0014 	lw	ra,20(sp)
     62c:	3c01435c 	lui	at,0x435c
     630:	44815000 	mtc1	at,$f10
     634:	c4c00090 	lwc1	$f0,144(a2)
     638:	3c01432a 	lui	at,0x432a
     63c:	460a003c 	c.lt.s	$f0,$f10
     640:	00000000 	nop
     644:	45000018 	bc1f	6a8 <L8085FBE0+0x118>
     648:	00000000 	nop
     64c:	44818000 	mtc1	at,$f16
     650:	00c02025 	move	a0,a2
     654:	2405071c 	li	a1,1820
     658:	4600803c 	c.lt.s	$f16,$f0
     65c:	00000000 	nop
     660:	45000011 	bc1f	6a8 <L8085FBE0+0x118>
     664:	00000000 	nop
     668:	afa60020 	sw	a2,32(sp)
     66c:	0c000000 	jal	0 <EnTest_SetupAction>
     670:	afa70024 	sw	a3,36(sp)
     674:	8fa60020 	lw	a2,32(sp)
     678:	1040003d 	beqz	v0,770 <L8085FBE0+0x1e0>
     67c:	8fa70024 	lw	a3,36(sp)
     680:	00e02025 	move	a0,a3
     684:	00c02825 	move	a1,a2
     688:	0c000000 	jal	0 <EnTest_SetupAction>
     68c:	afa60020 	sw	a2,32(sp)
     690:	14400037 	bnez	v0,770 <L8085FBE0+0x1e0>
     694:	8fa60020 	lw	a2,32(sp)
     698:	0c000000 	jal	0 <EnTest_SetupAction>
     69c:	00c02025 	move	a0,a2
     6a0:	10000034 	b	774 <L8085FBE0+0x1e4>
     6a4:	8fbf0014 	lw	ra,20(sp)
     6a8:	0c000000 	jal	0 <EnTest_SetupAction>
     6ac:	00c02025 	move	a0,a2
     6b0:	10000030 	b	774 <L8085FBE0+0x1e4>
     6b4:	8fbf0014 	lw	ra,20(sp)
     6b8:	3c0142dc 	lui	at,0x42dc
     6bc:	44812000 	mtc1	at,$f4
     6c0:	c4d20090 	lwc1	$f18,144(a2)
     6c4:	00c02025 	move	a0,a2
     6c8:	4604903c 	c.lt.s	$f18,$f4
     6cc:	00000000 	nop
     6d0:	45000021 	bc1f	758 <L8085FBE0+0x1c8>
     6d4:	00000000 	nop
     6d8:	afa60020 	sw	a2,32(sp)
     6dc:	afa70024 	sw	a3,36(sp)
     6e0:	0c000000 	jal	0 <EnTest_SetupAction>
     6e4:	afa80018 	sw	t0,24(sp)
     6e8:	3c010000 	lui	at,0x0
     6ec:	c4260000 	lwc1	$f6,0(at)
     6f0:	8fa60020 	lw	a2,32(sp)
     6f4:	8fa70024 	lw	a3,36(sp)
     6f8:	4600303c 	c.lt.s	$f6,$f0
     6fc:	8fa80018 	lw	t0,24(sp)
     700:	4502001c 	bc1fl	774 <L8085FBE0+0x1e4>
     704:	8fbf0014 	lw	ra,20(sp)
     708:	8d0d067c 	lw	t5,1660(t0)
     70c:	31ae0010 	andi	t6,t5,0x10
     710:	11c0000d 	beqz	t6,748 <L8085FBE0+0x1b8>
     714:	00000000 	nop
     718:	90cf010c 	lbu	t7,268(a2)
     71c:	00c02025 	move	a0,a2
     720:	11e00005 	beqz	t7,738 <L8085FBE0+0x1a8>
     724:	00000000 	nop
     728:	0c000000 	jal	0 <EnTest_SetupAction>
     72c:	00c02025 	move	a0,a2
     730:	10000010 	b	774 <L8085FBE0+0x1e4>
     734:	8fbf0014 	lw	ra,20(sp)
     738:	0c000000 	jal	0 <EnTest_SetupAction>
     73c:	00e02825 	move	a1,a3
     740:	1000000c 	b	774 <L8085FBE0+0x1e4>
     744:	8fbf0014 	lw	ra,20(sp)
     748:	0c000000 	jal	0 <EnTest_SetupAction>
     74c:	00c02025 	move	a0,a2
     750:	10000008 	b	774 <L8085FBE0+0x1e4>
     754:	8fbf0014 	lw	ra,20(sp)
     758:	0c000000 	jal	0 <EnTest_SetupAction>
     75c:	00e02825 	move	a1,a3
     760:	10000004 	b	774 <L8085FBE0+0x1e4>
     764:	8fbf0014 	lw	ra,20(sp)
     768:	0c000000 	jal	0 <EnTest_SetupAction>
     76c:	00e02825 	move	a1,a3
     770:	8fbf0014 	lw	ra,20(sp)
     774:	27bd0020 	addiu	sp,sp,32
     778:	03e00008 	jr	ra
     77c:	00000000 	nop

00000780 <func_8085FDD0>:
     780:	27bdffe8 	addiu	sp,sp,-24
     784:	afbf0014 	sw	ra,20(sp)
     788:	00803025 	move	a2,a0
     78c:	3c050600 	lui	a1,0x600
     790:	24a5316c 	addiu	a1,a1,12652
     794:	afa60018 	sw	a2,24(sp)
     798:	0c000000 	jal	0 <EnTest_SetupAction>
     79c:	24840188 	addiu	a0,a0,392
     7a0:	8fa40018 	lw	a0,24(sp)
     7a4:	3c014060 	lui	at,0x4060
     7a8:	44814000 	mtc1	at,$f8
     7ac:	c486000c 	lwc1	$f6,12(a0)
     7b0:	8c8f0004 	lw	t7,4(a0)
     7b4:	44802000 	mtc1	zero,$f4
     7b8:	46083281 	sub.s	$f10,$f6,$f8
     7bc:	2401fffe 	li	at,-2
     7c0:	240e000f 	li	t6,15
     7c4:	3c050000 	lui	a1,0x0
     7c8:	01e1c024 	and	t8,t7,at
     7cc:	24a50000 	addiu	a1,a1,0
     7d0:	a08007c8 	sb	zero,1992(a0)
     7d4:	ac8e07e8 	sw	t6,2024(a0)
     7d8:	e48a0028 	swc1	$f10,40(a0)
     7dc:	ac980004 	sw	t8,4(a0)
     7e0:	0c000000 	jal	0 <EnTest_SetupAction>
     7e4:	e4840054 	swc1	$f4,84(a0)
     7e8:	8fbf0014 	lw	ra,20(sp)
     7ec:	27bd0018 	addiu	sp,sp,24
     7f0:	03e00008 	jr	ra
     7f4:	00000000 	nop

000007f8 <func_8085FE48>:
     7f8:	27bdffe8 	addiu	sp,sp,-24
     7fc:	afbf0014 	sw	ra,20(sp)
     800:	00803025 	move	a2,a0
     804:	afa5001c 	sw	a1,28(sp)
     808:	afa60018 	sw	a2,24(sp)
     80c:	0c000000 	jal	0 <EnTest_SetupAction>
     810:	24840188 	addiu	a0,a0,392
     814:	8fa60018 	lw	a2,24(sp)
     818:	3c014316 	lui	at,0x4316
     81c:	8cc207e8 	lw	v0,2024(a2)
     820:	14400020 	bnez	v0,8a4 <func_8085FE48+0xac>
     824:	00000000 	nop
     828:	c4c00094 	lwc1	$f0,148(a2)
     82c:	44802000 	mtc1	zero,$f4
     830:	44813000 	mtc1	at,$f6
     834:	3c050000 	lui	a1,0x0
     838:	4600203e 	c.le.s	$f4,$f0
     83c:	240e0003 	li	t6,3
     840:	24a50000 	addiu	a1,a1,0
     844:	00c02025 	move	a0,a2
     848:	45020004 	bc1fl	85c <func_8085FE48+0x64>
     84c:	46000087 	neg.s	$f2,$f0
     850:	10000002 	b	85c <func_8085FE48+0x64>
     854:	46000086 	mov.s	$f2,$f0
     858:	46000087 	neg.s	$f2,$f0
     85c:	4606103c 	c.lt.s	$f2,$f6
     860:	00000000 	nop
     864:	4500000f 	bc1f	8a4 <func_8085FE48+0xac>
     868:	00000000 	nop
     86c:	a0ce07c8 	sb	t6,1992(a2)
     870:	0c000000 	jal	0 <EnTest_SetupAction>
     874:	afa60018 	sw	a2,24(sp)
     878:	8fa60018 	lw	a2,24(sp)
     87c:	24010002 	li	at,2
     880:	84c2008a 	lh	v0,138(a2)
     884:	84cf001c 	lh	t7,28(a2)
     888:	a4c20032 	sh	v0,50(a2)
     88c:	11e1000e 	beq	t7,at,8c8 <func_8085FE48+0xd0>
     890:	a4c200b6 	sh	v0,182(a2)
     894:	0c000000 	jal	0 <EnTest_SetupAction>
     898:	24040038 	li	a0,56
     89c:	1000000b 	b	8cc <func_8085FE48+0xd4>
     8a0:	8fbf0014 	lw	ra,20(sp)
     8a4:	10400003 	beqz	v0,8b4 <func_8085FE48+0xbc>
     8a8:	3c014060 	lui	at,0x4060
     8ac:	2458ffff 	addiu	t8,v0,-1
     8b0:	acd807e8 	sw	t8,2024(a2)
     8b4:	c4c8000c 	lwc1	$f8,12(a2)
     8b8:	44815000 	mtc1	at,$f10
     8bc:	00000000 	nop
     8c0:	460a4401 	sub.s	$f16,$f8,$f10
     8c4:	e4d00028 	swc1	$f16,40(a2)
     8c8:	8fbf0014 	lw	ra,20(sp)
     8cc:	27bd0018 	addiu	sp,sp,24
     8d0:	03e00008 	jr	ra
     8d4:	00000000 	nop

000008d8 <func_8085FF28>:
     8d8:	27bdffe8 	addiu	sp,sp,-24
     8dc:	afbf0014 	sw	ra,20(sp)
     8e0:	00803025 	move	a2,a0
     8e4:	3c050600 	lui	a1,0x600
     8e8:	24a5316c 	addiu	a1,a1,12652
     8ec:	afa60018 	sw	a2,24(sp)
     8f0:	0c000000 	jal	0 <EnTest_SetupAction>
     8f4:	24840188 	addiu	a0,a0,392
     8f8:	8fa40018 	lw	a0,24(sp)
     8fc:	3c014316 	lui	at,0x4316
     900:	44813000 	mtc1	at,$f6
     904:	c484000c 	lwc1	$f4,12(a0)
     908:	24050000 	li	a1,0
     90c:	a08007c8 	sb	zero,1992(a0)
     910:	46062200 	add.s	$f8,$f4,$f6
     914:	0c000000 	jal	0 <EnTest_SetupAction>
     918:	e4880028 	swc1	$f8,40(a0)
     91c:	8fa40018 	lw	a0,24(sp)
     920:	2401fffe 	li	at,-2
     924:	3c050000 	lui	a1,0x0
     928:	8c8e0004 	lw	t6,4(a0)
     92c:	24a50000 	addiu	a1,a1,0
     930:	01c17824 	and	t7,t6,at
     934:	0c000000 	jal	0 <EnTest_SetupAction>
     938:	ac8f0004 	sw	t7,4(a0)
     93c:	8fbf0014 	lw	ra,20(sp)
     940:	27bd0018 	addiu	sp,sp,24
     944:	03e00008 	jr	ra
     948:	00000000 	nop

0000094c <func_8085FF9C>:
     94c:	27bdffe8 	addiu	sp,sp,-24
     950:	afbf0014 	sw	ra,20(sp)
     954:	00803025 	move	a2,a0
     958:	afa5001c 	sw	a1,28(sp)
     95c:	afa60018 	sw	a2,24(sp)
     960:	0c000000 	jal	0 <EnTest_SetupAction>
     964:	24840188 	addiu	a0,a0,392
     968:	8fa60018 	lw	a2,24(sp)
     96c:	3c014316 	lui	at,0x4316
     970:	44813000 	mtc1	at,$f6
     974:	3c014348 	lui	at,0x4348
     978:	44818000 	mtc1	at,$f16
     97c:	c4ca0090 	lwc1	$f10,144(a2)
     980:	c4c4000c 	lwc1	$f4,12(a2)
     984:	3c0143e1 	lui	at,0x43e1
     988:	4610503c 	c.lt.s	$f10,$f16
     98c:	46062200 	add.s	$f8,$f4,$f6
     990:	4500001d 	bc1f	a08 <func_8085FF9C+0xbc>
     994:	e4c80028 	swc1	$f8,40(a2)
     998:	c4c00094 	lwc1	$f0,148(a2)
     99c:	44809000 	mtc1	zero,$f18
     9a0:	44812000 	mtc1	at,$f4
     9a4:	3c050000 	lui	a1,0x0
     9a8:	4600903e 	c.le.s	$f18,$f0
     9ac:	24a50000 	addiu	a1,a1,0
     9b0:	00c02025 	move	a0,a2
     9b4:	45020004 	bc1fl	9c8 <func_8085FF9C+0x7c>
     9b8:	46000087 	neg.s	$f2,$f0
     9bc:	10000002 	b	9c8 <func_8085FF9C+0x7c>
     9c0:	46000086 	mov.s	$f2,$f0
     9c4:	46000087 	neg.s	$f2,$f0
     9c8:	4604103c 	c.lt.s	$f2,$f4
     9cc:	00000000 	nop
     9d0:	4502000e 	bc1fl	a0c <func_8085FF9C+0xc0>
     9d4:	8fbf0014 	lw	ra,20(sp)
     9d8:	0c000000 	jal	0 <EnTest_SetupAction>
     9dc:	afa60018 	sw	a2,24(sp)
     9e0:	8fa40018 	lw	a0,24(sp)
     9e4:	3c053c75 	lui	a1,0x3c75
     9e8:	34a5c28f 	ori	a1,a1,0xc28f
     9ec:	8c8e0004 	lw	t6,4(a0)
     9f0:	8482008a 	lh	v0,138(a0)
     9f4:	35cf0001 	ori	t7,t6,0x1
     9f8:	ac8f0004 	sw	t7,4(a0)
     9fc:	a4820032 	sh	v0,50(a0)
     a00:	0c000000 	jal	0 <EnTest_SetupAction>
     a04:	a48200b6 	sh	v0,182(a0)
     a08:	8fbf0014 	lw	ra,20(sp)
     a0c:	27bd0018 	addiu	sp,sp,24
     a10:	03e00008 	jr	ra
     a14:	00000000 	nop

00000a18 <func_80860068>:
     a18:	27bdffe8 	addiu	sp,sp,-24
     a1c:	afbf0014 	sw	ra,20(sp)
     a20:	00803025 	move	a2,a0
     a24:	3c050600 	lui	a1,0x600
     a28:	24a5316c 	addiu	a1,a1,12652
     a2c:	afa60018 	sw	a2,24(sp)
     a30:	0c000000 	jal	0 <EnTest_SetupAction>
     a34:	24840188 	addiu	a0,a0,392
     a38:	8fa60018 	lw	a2,24(sp)
     a3c:	240e000a 	li	t6,10
     a40:	0c000000 	jal	0 <EnTest_SetupAction>
     a44:	a0ce07c8 	sb	t6,1992(a2)
     a48:	3c014120 	lui	at,0x4120
     a4c:	44812000 	mtc1	at,$f4
     a50:	3c0140a0 	lui	at,0x40a0
     a54:	44814000 	mtc1	at,$f8
     a58:	46040182 	mul.s	$f6,$f0,$f4
     a5c:	8fa40018 	lw	a0,24(sp)
     a60:	44809000 	mtc1	zero,$f18
     a64:	3c050000 	lui	a1,0x0
     a68:	849900b6 	lh	t9,182(a0)
     a6c:	24a50000 	addiu	a1,a1,0
     a70:	e4920068 	swc1	$f18,104(a0)
     a74:	46083280 	add.s	$f10,$f6,$f8
     a78:	a4990032 	sh	t9,50(a0)
     a7c:	4600540d 	trunc.w.s	$f16,$f10
     a80:	44188000 	mfc1	t8,$f16
     a84:	0c000000 	jal	0 <EnTest_SetupAction>
     a88:	ac9807e8 	sw	t8,2024(a0)
     a8c:	8fbf0014 	lw	ra,20(sp)
     a90:	27bd0018 	addiu	sp,sp,24
     a94:	03e00008 	jr	ra
     a98:	00000000 	nop

00000a9c <func_808600EC>:
     a9c:	27bdffd8 	addiu	sp,sp,-40
     aa0:	afbf001c 	sw	ra,28(sp)
     aa4:	afb00018 	sw	s0,24(sp)
     aa8:	afa5002c 	sw	a1,44(sp)
     aac:	8caf1c44 	lw	t7,7236(a1)
     ab0:	00808025 	move	s0,a0
     ab4:	24840188 	addiu	a0,a0,392
     ab8:	0c000000 	jal	0 <EnTest_SetupAction>
     abc:	afaf0024 	sw	t7,36(sp)
     ac0:	8fa4002c 	lw	a0,44(sp)
     ac4:	0c000000 	jal	0 <EnTest_SetupAction>
     ac8:	02002825 	move	a1,s0
     acc:	14400079 	bnez	v0,cb4 <func_808600EC+0x218>
     ad0:	8fa40024 	lw	a0,36(sp)
     ad4:	3c0142c8 	lui	at,0x42c8
     ad8:	44813000 	mtc1	at,$f6
     adc:	c6040090 	lwc1	$f4,144(s0)
     ae0:	849800b6 	lh	t8,182(a0)
     ae4:	861900b6 	lh	t9,182(s0)
     ae8:	4606203c 	c.lt.s	$f4,$f6
     aec:	03191023 	subu	v0,t8,t9
     af0:	00021400 	sll	v0,v0,0x10
     af4:	45000023 	bc1f	b84 <func_808600EC+0xe8>
     af8:	00021403 	sra	v0,v0,0x10
     afc:	80880843 	lb	t0,2115(a0)
     b00:	51000021 	beqzl	t0,b88 <func_808600EC+0xec>
     b04:	8e0207e8 	lw	v0,2024(s0)
     b08:	04400003 	bltz	v0,b18 <func_808600EC+0x7c>
     b0c:	00021823 	negu	v1,v0
     b10:	10000001 	b	b18 <func_808600EC+0x7c>
     b14:	00401825 	move	v1,v0
     b18:	28611f40 	slti	at,v1,8000
     b1c:	5420001a 	bnezl	at,b88 <func_808600EC+0xec>
     b20:	8e0207e8 	lw	v0,2024(s0)
     b24:	8602008a 	lh	v0,138(s0)
     b28:	a6020032 	sh	v0,50(s0)
     b2c:	0c000000 	jal	0 <EnTest_SetupAction>
     b30:	a60200b6 	sh	v0,182(s0)
     b34:	3c010000 	lui	at,0x0
     b38:	c4280000 	lwc1	$f8,0(at)
     b3c:	8fa90024 	lw	t1,36(sp)
     b40:	02002025 	move	a0,s0
     b44:	4600403c 	c.lt.s	$f8,$f0
     b48:	00000000 	nop
     b4c:	45000009 	bc1f	b74 <func_808600EC+0xd8>
     b50:	00000000 	nop
     b54:	812a0842 	lb	t2,2114(t1)
     b58:	24010011 	li	at,17
     b5c:	11410005 	beq	t2,at,b74 <func_808600EC+0xd8>
     b60:	00000000 	nop
     b64:	0c000000 	jal	0 <EnTest_SetupAction>
     b68:	02002025 	move	a0,s0
     b6c:	10000052 	b	cb8 <func_808600EC+0x21c>
     b70:	8fbf001c 	lw	ra,28(sp)
     b74:	0c000000 	jal	0 <EnTest_SetupAction>
     b78:	8fa5002c 	lw	a1,44(sp)
     b7c:	1000004e 	b	cb8 <func_808600EC+0x21c>
     b80:	8fbf001c 	lw	ra,28(sp)
     b84:	8e0207e8 	lw	v0,2024(s0)
     b88:	02002025 	move	a0,s0
     b8c:	10400003 	beqz	v0,b9c <func_808600EC+0x100>
     b90:	244bffff 	addiu	t3,v0,-1
     b94:	10000047 	b	cb4 <func_808600EC+0x218>
     b98:	ae0b07e8 	sw	t3,2024(s0)
     b9c:	0c000000 	jal	0 <EnTest_SetupAction>
     ba0:	24051555 	li	a1,5461
     ba4:	10400034 	beqz	v0,c78 <func_808600EC+0x1dc>
     ba8:	3c01435c 	lui	at,0x435c
     bac:	c6000090 	lwc1	$f0,144(s0)
     bb0:	44815000 	mtc1	at,$f10
     bb4:	3c014320 	lui	at,0x4320
     bb8:	460a003c 	c.lt.s	$f0,$f10
     bbc:	00000000 	nop
     bc0:	4500001c 	bc1f	c34 <func_808600EC+0x198>
     bc4:	00000000 	nop
     bc8:	44818000 	mtc1	at,$f16
     bcc:	00000000 	nop
     bd0:	4600803c 	c.lt.s	$f16,$f0
     bd4:	00000000 	nop
     bd8:	45000016 	bc1f	c34 <func_808600EC+0x198>
     bdc:	00000000 	nop
     be0:	0c000000 	jal	0 <EnTest_SetupAction>
     be4:	00000000 	nop
     be8:	3c010000 	lui	at,0x0
     bec:	c4320000 	lwc1	$f18,0(at)
     bf0:	8fa4002c 	lw	a0,44(sp)
     bf4:	4612003c 	c.lt.s	$f0,$f18
     bf8:	00000000 	nop
     bfc:	4500000d 	bc1f	c34 <func_808600EC+0x198>
     c00:	00000000 	nop
     c04:	0c000000 	jal	0 <EnTest_SetupAction>
     c08:	02002825 	move	a1,s0
     c0c:	10400005 	beqz	v0,c24 <func_808600EC+0x188>
     c10:	02002025 	move	a0,s0
     c14:	0c000000 	jal	0 <EnTest_SetupAction>
     c18:	02002025 	move	a0,s0
     c1c:	10000026 	b	cb8 <func_808600EC+0x21c>
     c20:	8fbf001c 	lw	ra,28(sp)
     c24:	0c000000 	jal	0 <EnTest_SetupAction>
     c28:	8fa5002c 	lw	a1,44(sp)
     c2c:	10000022 	b	cb8 <func_808600EC+0x21c>
     c30:	8fbf001c 	lw	ra,28(sp)
     c34:	0c000000 	jal	0 <EnTest_SetupAction>
     c38:	00000000 	nop
     c3c:	3c010000 	lui	at,0x0
     c40:	c4240000 	lwc1	$f4,0(at)
     c44:	02002025 	move	a0,s0
     c48:	4600203c 	c.lt.s	$f4,$f0
     c4c:	00000000 	nop
     c50:	45000005 	bc1f	c68 <func_808600EC+0x1cc>
     c54:	00000000 	nop
     c58:	0c000000 	jal	0 <EnTest_SetupAction>
     c5c:	02002025 	move	a0,s0
     c60:	10000015 	b	cb8 <func_808600EC+0x21c>
     c64:	8fbf001c 	lw	ra,28(sp)
     c68:	0c000000 	jal	0 <EnTest_SetupAction>
     c6c:	8fa5002c 	lw	a1,44(sp)
     c70:	10000011 	b	cb8 <func_808600EC+0x21c>
     c74:	8fbf001c 	lw	ra,28(sp)
     c78:	0c000000 	jal	0 <EnTest_SetupAction>
     c7c:	00000000 	nop
     c80:	3c010000 	lui	at,0x0
     c84:	c4260000 	lwc1	$f6,0(at)
     c88:	02002025 	move	a0,s0
     c8c:	4600303c 	c.lt.s	$f6,$f0
     c90:	00000000 	nop
     c94:	45000005 	bc1f	cac <func_808600EC+0x210>
     c98:	00000000 	nop
     c9c:	0c000000 	jal	0 <EnTest_SetupAction>
     ca0:	02002025 	move	a0,s0
     ca4:	10000004 	b	cb8 <func_808600EC+0x21c>
     ca8:	8fbf001c 	lw	ra,28(sp)
     cac:	0c000000 	jal	0 <EnTest_SetupAction>
     cb0:	8fa5002c 	lw	a1,44(sp)
     cb4:	8fbf001c 	lw	ra,28(sp)
     cb8:	8fb00018 	lw	s0,24(sp)
     cbc:	27bd0028 	addiu	sp,sp,40
     cc0:	03e00008 	jr	ra
     cc4:	00000000 	nop

00000cc8 <func_80860318>:
     cc8:	27bdffd8 	addiu	sp,sp,-40
     ccc:	afb00018 	sw	s0,24(sp)
     cd0:	00808025 	move	s0,a0
     cd4:	afa5002c 	sw	a1,44(sp)
     cd8:	afbf001c 	sw	ra,28(sp)
     cdc:	3c050601 	lui	a1,0x601
     ce0:	24840188 	addiu	a0,a0,392
     ce4:	afa40024 	sw	a0,36(sp)
     ce8:	24a5c438 	addiu	a1,a1,-15304
     cec:	0c000000 	jal	0 <EnTest_SetupAction>
     cf0:	24060000 	li	a2,0
     cf4:	0c000000 	jal	0 <EnTest_SetupAction>
     cf8:	8fa40024 	lw	a0,36(sp)
     cfc:	c6040080 	lwc1	$f4,128(s0)
     d00:	c6060028 	lwc1	$f6,40(s0)
     d04:	4604303e 	c.le.s	$f6,$f4
     d08:	00000000 	nop
     d0c:	45020017 	bc1fl	d6c <func_80860318+0xa4>
     d10:	8fbf001c 	lw	ra,28(sp)
     d14:	8e0f07e4 	lw	t7,2020(s0)
     d18:	3c013f80 	lui	at,0x3f80
     d1c:	44814000 	mtc1	at,$f8
     d20:	448f5000 	mtc1	t7,$f10
     d24:	240e000c 	li	t6,12
     d28:	a20e07c8 	sb	t6,1992(s0)
     d2c:	46805420 	cvt.s.w	$f16,$f10
     d30:	3c010000 	lui	at,0x0
     d34:	e60801a4 	swc1	$f8,420(s0)
     d38:	c4320000 	lwc1	$f18,0(at)
     d3c:	02002025 	move	a0,s0
     d40:	2405387a 	li	a1,14458
     d44:	46128102 	mul.s	$f4,$f16,$f18
     d48:	4600218d 	trunc.w.s	$f6,$f4
     d4c:	44193000 	mfc1	t9,$f6
     d50:	0c000000 	jal	0 <EnTest_SetupAction>
     d54:	ae1907e8 	sw	t9,2024(s0)
     d58:	3c050000 	lui	a1,0x0
     d5c:	24a50000 	addiu	a1,a1,0
     d60:	0c000000 	jal	0 <EnTest_SetupAction>
     d64:	02002025 	move	a0,s0
     d68:	8fbf001c 	lw	ra,28(sp)
     d6c:	8fb00018 	lw	s0,24(sp)
     d70:	27bd0028 	addiu	sp,sp,40
     d74:	03e00008 	jr	ra
     d78:	00000000 	nop

00000d7c <func_808603CC>:
     d7c:	27bdffe8 	addiu	sp,sp,-24
     d80:	afbf0014 	sw	ra,20(sp)
     d84:	afa40018 	sw	a0,24(sp)
     d88:	afa5001c 	sw	a1,28(sp)
     d8c:	0c000000 	jal	0 <EnTest_SetupAction>
     d90:	24840188 	addiu	a0,a0,392
     d94:	50400011 	beqzl	v0,ddc <func_808603CC+0x60>
     d98:	8fbf0014 	lw	ra,20(sp)
     d9c:	0c000000 	jal	0 <EnTest_SetupAction>
     da0:	8fa40018 	lw	a0,24(sp)
     da4:	0c000000 	jal	0 <EnTest_SetupAction>
     da8:	00000000 	nop
     dac:	3c014120 	lui	at,0x4120
     db0:	44812000 	mtc1	at,$f4
     db4:	3c0140a0 	lui	at,0x40a0
     db8:	44814000 	mtc1	at,$f8
     dbc:	46040182 	mul.s	$f6,$f0,$f4
     dc0:	8fb80018 	lw	t8,24(sp)
     dc4:	46083280 	add.s	$f10,$f6,$f8
     dc8:	4600540d 	trunc.w.s	$f16,$f10
     dcc:	440f8000 	mfc1	t7,$f16
     dd0:	00000000 	nop
     dd4:	af0f07e8 	sw	t7,2024(t8)
     dd8:	8fbf0014 	lw	ra,20(sp)
     ddc:	27bd0018 	addiu	sp,sp,24
     de0:	03e00008 	jr	ra
     de4:	00000000 	nop

00000de8 <func_80860438>:
     de8:	27bdffd0 	addiu	sp,sp,-48
     dec:	afb00028 	sw	s0,40(sp)
     df0:	00808025 	move	s0,a0
     df4:	afbf002c 	sw	ra,44(sp)
     df8:	3c040600 	lui	a0,0x600
     dfc:	0c000000 	jal	0 <EnTest_SetupAction>
     e00:	24841c20 	addiu	a0,a0,7200
     e04:	44822000 	mtc1	v0,$f4
     e08:	3c014000 	lui	at,0x4000
     e0c:	44810000 	mtc1	at,$f0
     e10:	468021a0 	cvt.s.w	$f6,$f4
     e14:	3c050600 	lui	a1,0x600
     e18:	240e0002 	li	t6,2
     e1c:	44060000 	mfc1	a2,$f0
     e20:	afae0014 	sw	t6,20(sp)
     e24:	24a51c20 	addiu	a1,a1,7200
     e28:	e7a60010 	swc1	$f6,16(sp)
     e2c:	260404a8 	addiu	a0,s0,1192
     e30:	24070000 	li	a3,0
     e34:	0c000000 	jal	0 <EnTest_SetupAction>
     e38:	e7a00018 	swc1	$f0,24(sp)
     e3c:	3c050601 	lui	a1,0x601
     e40:	24a581b4 	addiu	a1,a1,-32332
     e44:	0c000000 	jal	0 <EnTest_SetupAction>
     e48:	26040188 	addiu	a0,s0,392
     e4c:	0c000000 	jal	0 <EnTest_SetupAction>
     e50:	00000000 	nop
     e54:	3c0140a0 	lui	at,0x40a0
     e58:	44814000 	mtc1	at,$f8
     e5c:	860a00b6 	lh	t2,182(s0)
     e60:	2409000d 	li	t1,13
     e64:	46080282 	mul.s	$f10,$f0,$f8
     e68:	3c050000 	lui	a1,0x0
     e6c:	a20907c8 	sb	t1,1992(s0)
     e70:	24a50000 	addiu	a1,a1,0
     e74:	02002025 	move	a0,s0
     e78:	a60a0032 	sh	t2,50(s0)
     e7c:	4600540d 	trunc.w.s	$f16,$f10
     e80:	44188000 	mfc1	t8,$f16
     e84:	00000000 	nop
     e88:	0018cc00 	sll	t9,t8,0x10
     e8c:	00194403 	sra	t0,t9,0x10
     e90:	0c000000 	jal	0 <EnTest_SetupAction>
     e94:	ae0807e8 	sw	t0,2024(s0)
     e98:	8fbf002c 	lw	ra,44(sp)
     e9c:	8fb00028 	lw	s0,40(sp)
     ea0:	27bd0030 	addiu	sp,sp,48
     ea4:	03e00008 	jr	ra
     ea8:	00000000 	nop

00000eac <func_808604FC>:
     eac:	27bdff90 	addiu	sp,sp,-112
     eb0:	afbf002c 	sw	ra,44(sp)
     eb4:	afb00028 	sw	s0,40(sp)
     eb8:	8cae1c44 	lw	t6,7236(a1)
     ebc:	44801000 	mtc1	zero,$f2
     ec0:	00808025 	move	s0,a0
     ec4:	00a03025 	move	a2,a1
     ec8:	00a02025 	move	a0,a1
     ecc:	02002825 	move	a1,s0
     ed0:	afa60074 	sw	a2,116(sp)
     ed4:	afae0054 	sw	t6,84(sp)
     ed8:	0c000000 	jal	0 <EnTest_SetupAction>
     edc:	e7a20068 	swc1	$f2,104(sp)
     ee0:	144001a5 	bnez	v0,1578 <func_808604FC+0x6cc>
     ee4:	c7a20068 	lwc1	$f2,104(sp)
     ee8:	8e0f07e8 	lw	t7,2024(s0)
     eec:	02002825 	move	a1,s0
     ef0:	25f80001 	addiu	t8,t7,1
     ef4:	ae1807e8 	sw	t8,2024(s0)
     ef8:	e7a20068 	swc1	$f2,104(sp)
     efc:	0c000000 	jal	0 <EnTest_SetupAction>
     f00:	8fa40074 	lw	a0,116(sp)
     f04:	10400004 	beqz	v0,f18 <func_808604FC+0x6c>
     f08:	c7a20068 	lwc1	$f2,104(sp)
     f0c:	3c014316 	lui	at,0x4316
     f10:	44811000 	mtc1	at,$f2
     f14:	00000000 	nop
     f18:	3c0142a0 	lui	at,0x42a0
     f1c:	44812000 	mtc1	at,$f4
     f20:	c6000090 	lwc1	$f0,144(s0)
     f24:	26040068 	addiu	a0,s0,104
     f28:	46022180 	add.s	$f6,$f4,$f2
     f2c:	3c05c0a0 	lui	a1,0xc0a0
     f30:	3c063f80 	lui	a2,0x3f80
     f34:	3c073f4c 	lui	a3,0x3f4c
     f38:	4606003e 	c.le.s	$f0,$f6
     f3c:	3c0142dc 	lui	at,0x42dc
     f40:	45020008 	bc1fl	f64 <func_808604FC+0xb8>
     f44:	44815000 	mtc1	at,$f10
     f48:	44804000 	mtc1	zero,$f8
     f4c:	34e7cccd 	ori	a3,a3,0xcccd
     f50:	0c000000 	jal	0 <EnTest_SetupAction>
     f54:	e7a80010 	swc1	$f8,16(sp)
     f58:	10000010 	b	f9c <func_808604FC+0xf0>
     f5c:	3c0140a0 	lui	at,0x40a0
     f60:	44815000 	mtc1	at,$f10
     f64:	26040068 	addiu	a0,s0,104
     f68:	3c0540a0 	lui	a1,0x40a0
     f6c:	46025400 	add.s	$f16,$f10,$f2
     f70:	3c063f80 	lui	a2,0x3f80
     f74:	3c073f4c 	lui	a3,0x3f4c
     f78:	4600803c 	c.lt.s	$f16,$f0
     f7c:	00000000 	nop
     f80:	45020006 	bc1fl	f9c <func_808604FC+0xf0>
     f84:	3c0140a0 	lui	at,0x40a0
     f88:	44809000 	mtc1	zero,$f18
     f8c:	34e7cccd 	ori	a3,a3,0xcccd
     f90:	0c000000 	jal	0 <EnTest_SetupAction>
     f94:	e7b20010 	swc1	$f18,16(sp)
     f98:	3c0140a0 	lui	at,0x40a0
     f9c:	44812000 	mtc1	at,$f4
     fa0:	c6000068 	lwc1	$f0,104(s0)
     fa4:	3c01c0a0 	lui	at,0xc0a0
     fa8:	02002025 	move	a0,s0
     fac:	4600203e 	c.le.s	$f4,$f0
     fb0:	00000000 	nop
     fb4:	45020006 	bc1fl	fd0 <func_808604FC+0x124>
     fb8:	44814000 	mtc1	at,$f8
     fbc:	3c0140a0 	lui	at,0x40a0
     fc0:	44813000 	mtc1	at,$f6
     fc4:	1000000a 	b	ff0 <func_808604FC+0x144>
     fc8:	e6060068 	swc1	$f6,104(s0)
     fcc:	44814000 	mtc1	at,$f8
     fd0:	3c01c0a0 	lui	at,0xc0a0
     fd4:	4608003c 	c.lt.s	$f0,$f8
     fd8:	00000000 	nop
     fdc:	45020005 	bc1fl	ff4 <func_808604FC+0x148>
     fe0:	8619001c 	lh	t9,28(s0)
     fe4:	44815000 	mtc1	at,$f10
     fe8:	00000000 	nop
     fec:	e60a0068 	swc1	$f10,104(s0)
     ff0:	8619001c 	lh	t9,28(s0)
     ff4:	24010003 	li	at,3
     ff8:	8fa50074 	lw	a1,116(sp)
     ffc:	5721000c 	bnel	t9,at,1030 <func_808604FC+0x184>
    1000:	c6000068 	lwc1	$f0,104(s0)
    1004:	8e060068 	lw	a2,104(s0)
    1008:	0c000000 	jal	0 <EnTest_SetupAction>
    100c:	86070032 	lh	a3,50(s0)
    1010:	14400006 	bnez	v0,102c <func_808604FC+0x180>
    1014:	3c01bf80 	lui	at,0xbf80
    1018:	c6100068 	lwc1	$f16,104(s0)
    101c:	44819000 	mtc1	at,$f18
    1020:	00000000 	nop
    1024:	46128102 	mul.s	$f4,$f16,$f18
    1028:	e6040068 	swc1	$f4,104(s0)
    102c:	c6000068 	lwc1	$f0,104(s0)
    1030:	44803000 	mtc1	zero,$f6
    1034:	3c014040 	lui	at,0x4040
    1038:	44814000 	mtc1	at,$f8
    103c:	4600303e 	c.le.s	$f6,$f0
    1040:	3c040600 	lui	a0,0x600
    1044:	45020004 	bc1fl	1058 <func_808604FC+0x1ac>
    1048:	46000087 	neg.s	$f2,$f0
    104c:	10000002 	b	1058 <func_808604FC+0x1ac>
    1050:	46000086 	mov.s	$f2,$f0
    1054:	46000087 	neg.s	$f2,$f0
    1058:	4608103c 	c.lt.s	$f2,$f8
    105c:	00000000 	nop
    1060:	45000019 	bc1f	10c8 <func_808604FC+0x21c>
    1064:	00000000 	nop
    1068:	3c040601 	lui	a0,0x601
    106c:	0c000000 	jal	0 <EnTest_SetupAction>
    1070:	248481b4 	addiu	a0,a0,-32332
    1074:	44825000 	mtc1	v0,$f10
    1078:	8e0701a0 	lw	a3,416(s0)
    107c:	3c01c0c0 	lui	at,0xc0c0
    1080:	46805420 	cvt.s.w	$f16,$f10
    1084:	44819000 	mtc1	at,$f18
    1088:	26040188 	addiu	a0,s0,392
    108c:	3c050601 	lui	a1,0x601
    1090:	24a581b4 	addiu	a1,a1,-32332
    1094:	afa40034 	sw	a0,52(sp)
    1098:	e7b00010 	swc1	$f16,16(sp)
    109c:	afa00014 	sw	zero,20(sp)
    10a0:	24060000 	li	a2,0
    10a4:	0c000000 	jal	0 <EnTest_SetupAction>
    10a8:	e7b20018 	swc1	$f18,24(sp)
    10ac:	3c014120 	lui	at,0x4120
    10b0:	44812000 	mtc1	at,$f4
    10b4:	c6000068 	lwc1	$f0,104(s0)
    10b8:	8fa40034 	lw	a0,52(sp)
    10bc:	46040082 	mul.s	$f2,$f0,$f4
    10c0:	1000001b 	b	1130 <func_808604FC+0x284>
    10c4:	44803000 	mtc1	zero,$f6
    10c8:	0c000000 	jal	0 <EnTest_SetupAction>
    10cc:	248426d4 	addiu	a0,a0,9940
    10d0:	44823000 	mtc1	v0,$f6
    10d4:	8e0701a0 	lw	a3,416(s0)
    10d8:	3c01c080 	lui	at,0xc080
    10dc:	46803220 	cvt.s.w	$f8,$f6
    10e0:	44815000 	mtc1	at,$f10
    10e4:	26040188 	addiu	a0,s0,392
    10e8:	3c050600 	lui	a1,0x600
    10ec:	24a526d4 	addiu	a1,a1,9940
    10f0:	afa40034 	sw	a0,52(sp)
    10f4:	e7a80010 	swc1	$f8,16(sp)
    10f8:	afa00014 	sw	zero,20(sp)
    10fc:	24060000 	li	a2,0
    1100:	0c000000 	jal	0 <EnTest_SetupAction>
    1104:	e7aa0018 	swc1	$f10,24(sp)
    1108:	3c014120 	lui	at,0x4120
    110c:	44818000 	mtc1	at,$f16
    1110:	c6000068 	lwc1	$f0,104(s0)
    1114:	3c010000 	lui	at,0x0
    1118:	c4240000 	lwc1	$f4,0(at)
    111c:	46100482 	mul.s	$f18,$f0,$f16
    1120:	8fa40034 	lw	a0,52(sp)
    1124:	46049082 	mul.s	$f2,$f18,$f4
    1128:	00000000 	nop
    112c:	44803000 	mtc1	zero,$f6
    1130:	3c01c020 	lui	at,0xc020
    1134:	4600303e 	c.le.s	$f6,$f0
    1138:	00000000 	nop
    113c:	4502000f 	bc1fl	117c <func_808604FC+0x2d0>
    1140:	44810000 	mtc1	at,$f0
    1144:	920207de 	lbu	v0,2014(s0)
    1148:	3c014020 	lui	at,0x4020
    114c:	44810000 	mtc1	at,$f0
    1150:	14400002 	bnez	v0,115c <func_808604FC+0x2b0>
    1154:	24480001 	addiu	t0,v0,1
    1158:	a20807de 	sb	t0,2014(s0)
    115c:	4602003c 	c.lt.s	$f0,$f2
    1160:	00000000 	nop
    1164:	45000002 	bc1f	1170 <func_808604FC+0x2c4>
    1168:	00000000 	nop
    116c:	46000086 	mov.s	$f2,$f0
    1170:	10000009 	b	1198 <func_808604FC+0x2ec>
    1174:	e60201a4 	swc1	$f2,420(s0)
    1178:	44810000 	mtc1	at,$f0
    117c:	00000000 	nop
    1180:	4600103c 	c.lt.s	$f2,$f0
    1184:	00000000 	nop
    1188:	45020003 	bc1fl	1198 <func_808604FC+0x2ec>
    118c:	e60201a4 	swc1	$f2,420(s0)
    1190:	46000086 	mov.s	$f2,$f0
    1194:	e60201a4 	swc1	$f2,420(s0)
    1198:	8fa50054 	lw	a1,84(sp)
    119c:	3c0142c8 	lui	at,0x42c8
    11a0:	44815000 	mtc1	at,$f10
    11a4:	c6080090 	lwc1	$f8,144(s0)
    11a8:	860a00b6 	lh	t2,182(s0)
    11ac:	84a900b6 	lh	t1,182(a1)
    11b0:	460a403c 	c.lt.s	$f8,$f10
    11b4:	012a1023 	subu	v0,t1,t2
    11b8:	00021400 	sll	v0,v0,0x10
    11bc:	45000022 	bc1f	1248 <func_808604FC+0x39c>
    11c0:	00021403 	sra	v0,v0,0x10
    11c4:	80ab0843 	lb	t3,2115(a1)
    11c8:	51600020 	beqzl	t3,124c <func_808604FC+0x3a0>
    11cc:	c61201a0 	lwc1	$f18,416(s0)
    11d0:	04400003 	bltz	v0,11e0 <func_808604FC+0x334>
    11d4:	00021823 	negu	v1,v0
    11d8:	10000001 	b	11e0 <func_808604FC+0x334>
    11dc:	00401825 	move	v1,v0
    11e0:	28611f40 	slti	at,v1,8000
    11e4:	54200019 	bnezl	at,124c <func_808604FC+0x3a0>
    11e8:	c61201a0 	lwc1	$f18,416(s0)
    11ec:	8602008a 	lh	v0,138(s0)
    11f0:	a6020032 	sh	v0,50(s0)
    11f4:	0c000000 	jal	0 <EnTest_SetupAction>
    11f8:	a60200b6 	sh	v0,182(s0)
    11fc:	3c010000 	lui	at,0x0
    1200:	c4300000 	lwc1	$f16,0(at)
    1204:	8fac0054 	lw	t4,84(sp)
    1208:	4600803c 	c.lt.s	$f16,$f0
    120c:	00000000 	nop
    1210:	45000009 	bc1f	1238 <func_808604FC+0x38c>
    1214:	00000000 	nop
    1218:	818d0842 	lb	t5,2114(t4)
    121c:	24010011 	li	at,17
    1220:	11a10005 	beq	t5,at,1238 <func_808604FC+0x38c>
    1224:	00000000 	nop
    1228:	0c000000 	jal	0 <EnTest_SetupAction>
    122c:	02002025 	move	a0,s0
    1230:	100000d2 	b	157c <func_808604FC+0x6d0>
    1234:	8fbf002c 	lw	ra,44(sp)
    1238:	0c000000 	jal	0 <EnTest_SetupAction>
    123c:	02002025 	move	a0,s0
    1240:	100000ce 	b	157c <func_808604FC+0x6d0>
    1244:	8fbf002c 	lw	ra,44(sp)
    1248:	c61201a0 	lwc1	$f18,416(s0)
    124c:	4600910d 	trunc.w.s	$f4,$f18
    1250:	44032000 	mfc1	v1,$f4
    1254:	0c000000 	jal	0 <EnTest_SetupAction>
    1258:	afa30060 	sw	v1,96(sp)
    125c:	c60001a4 	lwc1	$f0,420(s0)
    1260:	44803000 	mtc1	zero,$f6
    1264:	44808000 	mtc1	zero,$f16
    1268:	8fa30060 	lw	v1,96(sp)
    126c:	4600303e 	c.le.s	$f6,$f0
    1270:	00000000 	nop
    1274:	45020004 	bc1fl	1288 <func_808604FC+0x3dc>
    1278:	46000087 	neg.s	$f2,$f0
    127c:	10000002 	b	1288 <func_808604FC+0x3dc>
    1280:	46000086 	mov.s	$f2,$f0
    1284:	46000087 	neg.s	$f2,$f0
    1288:	c60c01a0 	lwc1	$f12,416(s0)
    128c:	4600803e 	c.le.s	$f16,$f0
    1290:	46026201 	sub.s	$f8,$f12,$f2
    1294:	4600648d 	trunc.w.s	$f18,$f12
    1298:	4600428d 	trunc.w.s	$f10,$f8
    129c:	44199000 	mfc1	t9,$f18
    12a0:	44045000 	mfc1	a0,$f10
    12a4:	45020004 	bc1fl	12b8 <func_808604FC+0x40c>
    12a8:	46000087 	neg.s	$f2,$f0
    12ac:	10000002 	b	12b8 <func_808604FC+0x40c>
    12b0:	46000086 	mov.s	$f2,$f0
    12b4:	46000087 	neg.s	$f2,$f0
    12b8:	50790011 	beql	v1,t9,1300 <func_808604FC+0x454>
    12bc:	8e0a07e8 	lw	t2,2024(s0)
    12c0:	4600110d 	trunc.w.s	$f4,$f2
    12c4:	44092000 	mfc1	t1,$f4
    12c8:	00000000 	nop
    12cc:	01231021 	addu	v0,t1,v1
    12d0:	28410002 	slti	at,v0,2
    12d4:	54200003 	bnezl	at,12e4 <func_808604FC+0x438>
    12d8:	28810007 	slti	at,a0,7
    12dc:	18800004 	blez	a0,12f0 <func_808604FC+0x444>
    12e0:	28810007 	slti	at,a0,7
    12e4:	10200005 	beqz	at,12fc <func_808604FC+0x450>
    12e8:	28410008 	slti	at,v0,8
    12ec:	14200003 	bnez	at,12fc <func_808604FC+0x450>
    12f0:	02002025 	move	a0,s0
    12f4:	0c000000 	jal	0 <EnTest_SetupAction>
    12f8:	2405383d 	li	a1,14397
    12fc:	8e0a07e8 	lw	t2,2024(s0)
    1300:	02002025 	move	a0,s0
    1304:	314b001f 	andi	t3,t2,0x1f
    1308:	55600011 	bnezl	t3,1350 <func_808604FC+0x4a4>
    130c:	3c01435c 	lui	at,0x435c
    1310:	0c000000 	jal	0 <EnTest_SetupAction>
    1314:	24053838 	li	a1,14392
    1318:	0c000000 	jal	0 <EnTest_SetupAction>
    131c:	00000000 	nop
    1320:	3c0140a0 	lui	at,0x40a0
    1324:	44813000 	mtc1	at,$f6
    1328:	8e0c07e8 	lw	t4,2024(s0)
    132c:	46060202 	mul.s	$f8,$f0,$f6
    1330:	4600428d 	trunc.w.s	$f10,$f8
    1334:	440e5000 	mfc1	t6,$f10
    1338:	00000000 	nop
    133c:	000e7c00 	sll	t7,t6,0x10
    1340:	000fc403 	sra	t8,t7,0x10
    1344:	0198c821 	addu	t9,t4,t8
    1348:	ae1907e8 	sw	t9,2024(s0)
    134c:	3c01435c 	lui	at,0x435c
    1350:	44818000 	mtc1	at,$f16
    1354:	c6000090 	lwc1	$f0,144(s0)
    1358:	3c014320 	lui	at,0x4320
    135c:	4610003c 	c.lt.s	$f0,$f16
    1360:	00000000 	nop
    1364:	45000033 	bc1f	1434 <func_808604FC+0x588>
    1368:	00000000 	nop
    136c:	44819000 	mtc1	at,$f18
    1370:	02002025 	move	a0,s0
    1374:	4600903c 	c.lt.s	$f18,$f0
    1378:	00000000 	nop
    137c:	4500002d 	bc1f	1434 <func_808604FC+0x588>
    1380:	00000000 	nop
    1384:	0c000000 	jal	0 <EnTest_SetupAction>
    1388:	2405071c 	li	a1,1820
    138c:	10400029 	beqz	v0,1434 <func_808604FC+0x588>
    1390:	8fa40074 	lw	a0,116(sp)
    1394:	0c000000 	jal	0 <EnTest_SetupAction>
    1398:	02002825 	move	a1,s0
    139c:	1040000d 	beqz	v0,13d4 <func_808604FC+0x528>
    13a0:	8fa80054 	lw	t0,84(sp)
    13a4:	0c000000 	jal	0 <EnTest_SetupAction>
    13a8:	00000000 	nop
    13ac:	3c010000 	lui	at,0x0
    13b0:	c4240000 	lwc1	$f4,0(at)
    13b4:	4604003c 	c.lt.s	$f0,$f4
    13b8:	00000000 	nop
    13bc:	4500001d 	bc1f	1434 <func_808604FC+0x588>
    13c0:	00000000 	nop
    13c4:	0c000000 	jal	0 <EnTest_SetupAction>
    13c8:	02002025 	move	a0,s0
    13cc:	1000006b 	b	157c <func_808604FC+0x6d0>
    13d0:	8fbf002c 	lw	ra,44(sp)
    13d4:	81090151 	lb	t1,337(t0)
    13d8:	11200016 	beqz	t1,1434 <func_808604FC+0x588>
    13dc:	00000000 	nop
    13e0:	920a010c 	lbu	t2,268(s0)
    13e4:	8fab0074 	lw	t3,116(sp)
    13e8:	3c0d0001 	lui	t5,0x1
    13ec:	1140000f 	beqz	t2,142c <func_808604FC+0x580>
    13f0:	01ab6821 	addu	t5,t5,t3
    13f4:	8dad1de4 	lw	t5,7652(t5)
    13f8:	01602825 	move	a1,t3
    13fc:	02002025 	move	a0,s0
    1400:	31ae0001 	andi	t6,t5,0x1
    1404:	11c00005 	beqz	t6,141c <func_808604FC+0x570>
    1408:	00000000 	nop
    140c:	0c000000 	jal	0 <EnTest_SetupAction>
    1410:	02002025 	move	a0,s0
    1414:	10000059 	b	157c <func_808604FC+0x6d0>
    1418:	8fbf002c 	lw	ra,44(sp)
    141c:	0c000000 	jal	0 <EnTest_SetupAction>
    1420:	8fa50074 	lw	a1,116(sp)
    1424:	10000003 	b	1434 <func_808604FC+0x588>
    1428:	00000000 	nop
    142c:	0c000000 	jal	0 <EnTest_SetupAction>
    1430:	02002025 	move	a0,s0
    1434:	0c000000 	jal	0 <EnTest_SetupAction>
    1438:	00000000 	nop
    143c:	3c010000 	lui	at,0x0
    1440:	c4260000 	lwc1	$f6,0(at)
    1444:	02002025 	move	a0,s0
    1448:	4606003c 	c.lt.s	$f0,$f6
    144c:	00000000 	nop
    1450:	45000004 	bc1f	1464 <func_808604FC+0x5b8>
    1454:	00000000 	nop
    1458:	8602008a 	lh	v0,138(s0)
    145c:	a6020032 	sh	v0,50(s0)
    1460:	a60200b6 	sh	v0,182(s0)
    1464:	0c000000 	jal	0 <EnTest_SetupAction>
    1468:	240511c7 	li	a1,4551
    146c:	1440000e 	bnez	v0,14a8 <func_808604FC+0x5fc>
    1470:	3c0142dc 	lui	at,0x42dc
    1474:	0c000000 	jal	0 <EnTest_SetupAction>
    1478:	02002025 	move	a0,s0
    147c:	0c000000 	jal	0 <EnTest_SetupAction>
    1480:	00000000 	nop
    1484:	3c014120 	lui	at,0x4120
    1488:	44811000 	mtc1	at,$f2
    148c:	00000000 	nop
    1490:	46020202 	mul.s	$f8,$f0,$f2
    1494:	46024280 	add.s	$f10,$f8,$f2
    1498:	4600540d 	trunc.w.s	$f16,$f10
    149c:	440c8000 	mfc1	t4,$f16
    14a0:	10000035 	b	1578 <func_808604FC+0x6cc>
    14a4:	ae0c07e8 	sw	t4,2024(s0)
    14a8:	c6120090 	lwc1	$f18,144(s0)
    14ac:	44812000 	mtc1	at,$f4
    14b0:	00000000 	nop
    14b4:	4604903c 	c.lt.s	$f18,$f4
    14b8:	00000000 	nop
    14bc:	45000022 	bc1f	1548 <func_808604FC+0x69c>
    14c0:	00000000 	nop
    14c4:	0c000000 	jal	0 <EnTest_SetupAction>
    14c8:	00000000 	nop
    14cc:	3c010000 	lui	at,0x0
    14d0:	c4260000 	lwc1	$f6,0(at)
    14d4:	8fb80054 	lw	t8,84(sp)
    14d8:	4600303c 	c.lt.s	$f6,$f0
    14dc:	00000000 	nop
    14e0:	45000015 	bc1f	1538 <func_808604FC+0x68c>
    14e4:	00000000 	nop
    14e8:	8f19067c 	lw	t9,1660(t8)
    14ec:	33280010 	andi	t0,t9,0x10
    14f0:	1100000d 	beqz	t0,1528 <func_808604FC+0x67c>
    14f4:	00000000 	nop
    14f8:	9209010c 	lbu	t1,268(s0)
    14fc:	02002025 	move	a0,s0
    1500:	11200005 	beqz	t1,1518 <func_808604FC+0x66c>
    1504:	00000000 	nop
    1508:	0c000000 	jal	0 <EnTest_SetupAction>
    150c:	02002025 	move	a0,s0
    1510:	1000001a 	b	157c <func_808604FC+0x6d0>
    1514:	8fbf002c 	lw	ra,44(sp)
    1518:	0c000000 	jal	0 <EnTest_SetupAction>
    151c:	8fa50074 	lw	a1,116(sp)
    1520:	10000016 	b	157c <func_808604FC+0x6d0>
    1524:	8fbf002c 	lw	ra,44(sp)
    1528:	0c000000 	jal	0 <EnTest_SetupAction>
    152c:	02002025 	move	a0,s0
    1530:	10000012 	b	157c <func_808604FC+0x6d0>
    1534:	8fbf002c 	lw	ra,44(sp)
    1538:	0c000000 	jal	0 <EnTest_SetupAction>
    153c:	02002025 	move	a0,s0
    1540:	1000000e 	b	157c <func_808604FC+0x6d0>
    1544:	8fbf002c 	lw	ra,44(sp)
    1548:	0c000000 	jal	0 <EnTest_SetupAction>
    154c:	00000000 	nop
    1550:	3c010000 	lui	at,0x0
    1554:	c4280000 	lwc1	$f8,0(at)
    1558:	3c0140a0 	lui	at,0x40a0
    155c:	4608003c 	c.lt.s	$f0,$f8
    1560:	00000000 	nop
    1564:	45020005 	bc1fl	157c <func_808604FC+0x6d0>
    1568:	8fbf002c 	lw	ra,44(sp)
    156c:	44815000 	mtc1	at,$f10
    1570:	00000000 	nop
    1574:	e60a0068 	swc1	$f10,104(s0)
    1578:	8fbf002c 	lw	ra,44(sp)
    157c:	8fb00028 	lw	s0,40(sp)
    1580:	27bd0070 	addiu	sp,sp,112
    1584:	03e00008 	jr	ra
    1588:	00000000 	nop

0000158c <func_80860BDC>:
    158c:	27bdffe8 	addiu	sp,sp,-24
    1590:	afbf0014 	sw	ra,20(sp)
    1594:	00803025 	move	a2,a0
    1598:	3c050601 	lui	a1,0x601
    159c:	24a5e2b0 	addiu	a1,a1,-7504
    15a0:	afa60018 	sw	a2,24(sp)
    15a4:	0c000000 	jal	0 <EnTest_SetupAction>
    15a8:	24840188 	addiu	a0,a0,392
    15ac:	8fa40018 	lw	a0,24(sp)
    15b0:	240e000e 	li	t6,14
    15b4:	3c050000 	lui	a1,0x0
    15b8:	24a50000 	addiu	a1,a1,0
    15bc:	0c000000 	jal	0 <EnTest_SetupAction>
    15c0:	a08e07c8 	sb	t6,1992(a0)
    15c4:	8fbf0014 	lw	ra,20(sp)
    15c8:	27bd0018 	addiu	sp,sp,24
    15cc:	03e00008 	jr	ra
    15d0:	00000000 	nop

000015d4 <func_80860C24>:
    15d4:	27bdffd8 	addiu	sp,sp,-40
    15d8:	00803025 	move	a2,a0
    15dc:	afbf0014 	sw	ra,20(sp)
    15e0:	afa5002c 	sw	a1,44(sp)
    15e4:	00a02025 	move	a0,a1
    15e8:	00c02825 	move	a1,a2
    15ec:	0c000000 	jal	0 <EnTest_SetupAction>
    15f0:	afa60028 	sw	a2,40(sp)
    15f4:	1440009a 	bnez	v0,1860 <func_80860C24+0x28c>
    15f8:	8fa60028 	lw	a2,40(sp)
    15fc:	84c2008a 	lh	v0,138(a2)
    1600:	84c400b6 	lh	a0,182(a2)
    1604:	00441023 	subu	v0,v0,a0
    1608:	00021400 	sll	v0,v0,0x10
    160c:	00021403 	sra	v0,v0,0x10
    1610:	58400013 	blezl	v0,1660 <func_80860C24+0x8c>
    1614:	44823000 	mtc1	v0,$f6
    1618:	44822000 	mtc1	v0,$f4
    161c:	3c014228 	lui	at,0x4228
    1620:	44814000 	mtc1	at,$f8
    1624:	468021a0 	cvt.s.w	$f6,$f4
    1628:	3c014396 	lui	at,0x4396
    162c:	44818000 	mtc1	at,$f16
    1630:	46083283 	div.s	$f10,$f6,$f8
    1634:	46105480 	add.s	$f18,$f10,$f16
    1638:	4600910d 	trunc.w.s	$f4,$f18
    163c:	44182000 	mfc1	t8,$f4
    1640:	00000000 	nop
    1644:	0018c840 	sll	t9,t8,0x1
    1648:	00994021 	addu	t0,a0,t9
    164c:	00182c00 	sll	a1,t8,0x10
    1650:	00052c03 	sra	a1,a1,0x10
    1654:	10000011 	b	169c <func_80860C24+0xc8>
    1658:	a4c800b6 	sh	t0,182(a2)
    165c:	44823000 	mtc1	v0,$f6
    1660:	3c014228 	lui	at,0x4228
    1664:	44815000 	mtc1	at,$f10
    1668:	46803220 	cvt.s.w	$f8,$f6
    166c:	3c014396 	lui	at,0x4396
    1670:	44819000 	mtc1	at,$f18
    1674:	460a4403 	div.s	$f16,$f8,$f10
    1678:	46128101 	sub.s	$f4,$f16,$f18
    167c:	4600218d 	trunc.w.s	$f6,$f4
    1680:	440b3000 	mfc1	t3,$f6
    1684:	00000000 	nop
    1688:	000b6040 	sll	t4,t3,0x1
    168c:	008c6821 	addu	t5,a0,t4
    1690:	000b2c00 	sll	a1,t3,0x10
    1694:	00052c03 	sra	a1,a1,0x10
    1698:	a4cd00b6 	sh	t5,182(a2)
    169c:	84ce00b6 	lh	t6,182(a2)
    16a0:	1840000f 	blez	v0,16e0 <func_80860C24+0x10c>
    16a4:	a4ce0032 	sh	t6,50(a2)
    16a8:	44854000 	mtc1	a1,$f8
    16ac:	3c013f80 	lui	at,0x3f80
    16b0:	44816000 	mtc1	at,$f12
    16b4:	468042a0 	cvt.s.w	$f10,$f8
    16b8:	3c010000 	lui	at,0x0
    16bc:	c4300000 	lwc1	$f16,0(at)
    16c0:	46105082 	mul.s	$f2,$f10,$f16
    16c4:	4602603c 	c.lt.s	$f12,$f2
    16c8:	00000000 	nop
    16cc:	45000002 	bc1f	16d8 <func_80860C24+0x104>
    16d0:	00000000 	nop
    16d4:	46006086 	mov.s	$f2,$f12
    16d8:	1000000e 	b	1714 <func_80860C24+0x140>
    16dc:	e4c201a4 	swc1	$f2,420(a2)
    16e0:	44859000 	mtc1	a1,$f18
    16e4:	3c01bf80 	lui	at,0xbf80
    16e8:	44816000 	mtc1	at,$f12
    16ec:	46809120 	cvt.s.w	$f4,$f18
    16f0:	3c010000 	lui	at,0x0
    16f4:	c4260000 	lwc1	$f6,0(at)
    16f8:	46062082 	mul.s	$f2,$f4,$f6
    16fc:	460c103c 	c.lt.s	$f2,$f12
    1700:	00000000 	nop
    1704:	45020003 	bc1fl	1714 <func_80860C24+0x140>
    1708:	e4c201a4 	swc1	$f2,420(a2)
    170c:	46006086 	mov.s	$f2,$f12
    1710:	e4c201a4 	swc1	$f2,420(a2)
    1714:	c4c801a0 	lwc1	$f8,416(a2)
    1718:	afa60028 	sw	a2,40(sp)
    171c:	24c40188 	addiu	a0,a2,392
    1720:	4600428d 	trunc.w.s	$f10,$f8
    1724:	44035000 	mfc1	v1,$f10
    1728:	0c000000 	jal	0 <EnTest_SetupAction>
    172c:	afa3001c 	sw	v1,28(sp)
    1730:	8fa60028 	lw	a2,40(sp)
    1734:	44807000 	mtc1	zero,$f14
    1738:	8fa3001c 	lw	v1,28(sp)
    173c:	c4c001a4 	lwc1	$f0,420(a2)
    1740:	4600703e 	c.le.s	$f14,$f0
    1744:	00000000 	nop
    1748:	45020004 	bc1fl	175c <func_80860C24+0x188>
    174c:	46000087 	neg.s	$f2,$f0
    1750:	10000002 	b	175c <func_80860C24+0x188>
    1754:	46000086 	mov.s	$f2,$f0
    1758:	46000087 	neg.s	$f2,$f0
    175c:	c4cc01a0 	lwc1	$f12,416(a2)
    1760:	4600703e 	c.le.s	$f14,$f0
    1764:	46026401 	sub.s	$f16,$f12,$f2
    1768:	4600610d 	trunc.w.s	$f4,$f12
    176c:	4600848d 	trunc.w.s	$f18,$f16
    1770:	44082000 	mfc1	t0,$f4
    1774:	44049000 	mfc1	a0,$f18
    1778:	45020004 	bc1fl	178c <func_80860C24+0x1b8>
    177c:	46000087 	neg.s	$f2,$f0
    1780:	10000002 	b	178c <func_80860C24+0x1b8>
    1784:	46000086 	mov.s	$f2,$f0
    1788:	46000087 	neg.s	$f2,$f0
    178c:	50680013 	beql	v1,t0,17dc <func_80860C24+0x208>
    1790:	00c02025 	move	a0,a2
    1794:	4600118d 	trunc.w.s	$f6,$f2
    1798:	440a3000 	mfc1	t2,$f6
    179c:	00000000 	nop
    17a0:	01431021 	addu	v0,t2,v1
    17a4:	28410003 	slti	at,v0,3
    17a8:	54200003 	bnezl	at,17b8 <func_80860C24+0x1e4>
    17ac:	28810007 	slti	at,a0,7
    17b0:	18800004 	blez	a0,17c4 <func_80860C24+0x1f0>
    17b4:	28810007 	slti	at,a0,7
    17b8:	10200007 	beqz	at,17d8 <func_80860C24+0x204>
    17bc:	28410009 	slti	at,v0,9
    17c0:	14200005 	bnez	at,17d8 <func_80860C24+0x204>
    17c4:	00c02025 	move	a0,a2
    17c8:	2405383d 	li	a1,14397
    17cc:	0c000000 	jal	0 <EnTest_SetupAction>
    17d0:	afa60028 	sw	a2,40(sp)
    17d4:	8fa60028 	lw	a2,40(sp)
    17d8:	00c02025 	move	a0,a2
    17dc:	2405071c 	li	a1,1820
    17e0:	0c000000 	jal	0 <EnTest_SetupAction>
    17e4:	afa60028 	sw	a2,40(sp)
    17e8:	1040001d 	beqz	v0,1860 <func_80860C24+0x28c>
    17ec:	8fa60028 	lw	a2,40(sp)
    17f0:	0c000000 	jal	0 <EnTest_SetupAction>
    17f4:	afa60028 	sw	a2,40(sp)
    17f8:	3c010000 	lui	at,0x0
    17fc:	c4280000 	lwc1	$f8,0(at)
    1800:	8fa60028 	lw	a2,40(sp)
    1804:	4600403c 	c.lt.s	$f8,$f0
    1808:	00000000 	nop
    180c:	45000012 	bc1f	1858 <func_80860C24+0x284>
    1810:	00000000 	nop
    1814:	0c000000 	jal	0 <EnTest_SetupAction>
    1818:	afa60028 	sw	a2,40(sp)
    181c:	3c010000 	lui	at,0x0
    1820:	c42a0000 	lwc1	$f10,0(at)
    1824:	8fa60028 	lw	a2,40(sp)
    1828:	4600503c 	c.lt.s	$f10,$f0
    182c:	00c02025 	move	a0,a2
    1830:	45000005 	bc1f	1848 <func_80860C24+0x274>
    1834:	00000000 	nop
    1838:	0c000000 	jal	0 <EnTest_SetupAction>
    183c:	00c02025 	move	a0,a2
    1840:	10000008 	b	1864 <func_80860C24+0x290>
    1844:	8fbf0014 	lw	ra,20(sp)
    1848:	0c000000 	jal	0 <EnTest_SetupAction>
    184c:	8fa5002c 	lw	a1,44(sp)
    1850:	10000004 	b	1864 <func_80860C24+0x290>
    1854:	8fbf0014 	lw	ra,20(sp)
    1858:	0c000000 	jal	0 <EnTest_SetupAction>
    185c:	00c02025 	move	a0,a2
    1860:	8fbf0014 	lw	ra,20(sp)
    1864:	27bd0028 	addiu	sp,sp,40
    1868:	03e00008 	jr	ra
    186c:	00000000 	nop

00001870 <func_80860EC0>:
    1870:	27bdffe0 	addiu	sp,sp,-32
    1874:	afb00018 	sw	s0,24(sp)
    1878:	00808025 	move	s0,a0
    187c:	afbf001c 	sw	ra,28(sp)
    1880:	3c050601 	lui	a1,0x601
    1884:	24a5e2b0 	addiu	a1,a1,-7504
    1888:	0c000000 	jal	0 <EnTest_SetupAction>
    188c:	24840188 	addiu	a0,a0,392
    1890:	240e000f 	li	t6,15
    1894:	0c000000 	jal	0 <EnTest_SetupAction>
    1898:	a20e07c8 	sb	t6,1992(s0)
    189c:	3c013f00 	lui	at,0x3f00
    18a0:	44811000 	mtc1	at,$f2
    18a4:	3c01bf00 	lui	at,0xbf00
    18a8:	4600103c 	c.lt.s	$f2,$f0
    18ac:	00000000 	nop
    18b0:	45020005 	bc1fl	18c8 <func_80860EC0+0x58>
    18b4:	e6020068 	swc1	$f2,104(s0)
    18b8:	44812000 	mtc1	at,$f4
    18bc:	10000002 	b	18c8 <func_80860EC0+0x58>
    18c0:	e6040068 	swc1	$f4,104(s0)
    18c4:	e6020068 	swc1	$f2,104(s0)
    18c8:	0c000000 	jal	0 <EnTest_SetupAction>
    18cc:	00000000 	nop
    18d0:	3c014170 	lui	at,0x4170
    18d4:	44813000 	mtc1	at,$f6
    18d8:	3c0141c8 	lui	at,0x41c8
    18dc:	44815000 	mtc1	at,$f10
    18e0:	46060202 	mul.s	$f8,$f0,$f6
    18e4:	44802000 	mtc1	zero,$f4
    18e8:	860900b6 	lh	t1,182(s0)
    18ec:	3c050000 	lui	a1,0x0
    18f0:	24a50000 	addiu	a1,a1,0
    18f4:	02002025 	move	a0,s0
    18f8:	e60407ec 	swc1	$f4,2028(s0)
    18fc:	460a4400 	add.s	$f16,$f8,$f10
    1900:	a6090032 	sh	t1,50(s0)
    1904:	4600848d 	trunc.w.s	$f18,$f16
    1908:	44189000 	mfc1	t8,$f18
    190c:	00000000 	nop
    1910:	0018cc00 	sll	t9,t8,0x10
    1914:	00194403 	sra	t0,t9,0x10
    1918:	0c000000 	jal	0 <EnTest_SetupAction>
    191c:	ae0807e8 	sw	t0,2024(s0)
    1920:	8fbf001c 	lw	ra,28(sp)
    1924:	8fb00018 	lw	s0,24(sp)
    1928:	27bd0020 	addiu	sp,sp,32
    192c:	03e00008 	jr	ra
    1930:	00000000 	nop

00001934 <func_80860F84>:
    1934:	27bdffb8 	addiu	sp,sp,-72
    1938:	afbf0024 	sw	ra,36(sp)
    193c:	afb00020 	sw	s0,32(sp)
    1940:	8cae1c44 	lw	t6,7236(a1)
    1944:	44802000 	mtc1	zero,$f4
    1948:	00808025 	move	s0,a0
    194c:	00a03025 	move	a2,a1
    1950:	00a02025 	move	a0,a1
    1954:	02002825 	move	a1,s0
    1958:	afa6004c 	sw	a2,76(sp)
    195c:	afae0030 	sw	t6,48(sp)
    1960:	0c000000 	jal	0 <EnTest_SetupAction>
    1964:	e7a4002c 	swc1	$f4,44(sp)
    1968:	14400112 	bnez	v0,1db4 <func_80860F84+0x480>
    196c:	260400b6 	addiu	a0,s0,182
    1970:	8605008a 	lh	a1,138(s0)
    1974:	240f0001 	li	t7,1
    1978:	afaf0010 	sw	t7,16(sp)
    197c:	24060001 	li	a2,1
    1980:	0c000000 	jal	0 <EnTest_SetupAction>
    1984:	24070fa0 	li	a3,4000
    1988:	861800b6 	lh	t8,182(s0)
    198c:	34018000 	li	at,0x8000
    1990:	44803000 	mtc1	zero,$f6
    1994:	27193e80 	addiu	t9,t8,16000
    1998:	a6190032 	sh	t9,50(s0)
    199c:	8fa80030 	lw	t0,48(sp)
    19a0:	850900b6 	lh	t1,182(t0)
    19a4:	01215021 	addu	t2,t1,at
    19a8:	a7aa0046 	sh	t2,70(sp)
    19ac:	c6000068 	lwc1	$f0,104(s0)
    19b0:	4600303e 	c.le.s	$f6,$f0
    19b4:	00000000 	nop
    19b8:	4500000e 	bc1f	19f4 <func_80860F84+0xc0>
    19bc:	3c0140c0 	lui	at,0x40c0
    19c0:	44811000 	mtc1	at,$f2
    19c4:	3c013f00 	lui	at,0x3f00
    19c8:	4602003c 	c.lt.s	$f0,$f2
    19cc:	00000000 	nop
    19d0:	45000006 	bc1f	19ec <func_80860F84+0xb8>
    19d4:	00000000 	nop
    19d8:	44814000 	mtc1	at,$f8
    19dc:	00000000 	nop
    19e0:	46080280 	add.s	$f10,$f0,$f8
    19e4:	10000010 	b	1a28 <func_80860F84+0xf4>
    19e8:	e60a0068 	swc1	$f10,104(s0)
    19ec:	1000000e 	b	1a28 <func_80860F84+0xf4>
    19f0:	e6020068 	swc1	$f2,104(s0)
    19f4:	3c01c0c0 	lui	at,0xc0c0
    19f8:	44811000 	mtc1	at,$f2
    19fc:	3c013f00 	lui	at,0x3f00
    1a00:	4600103c 	c.lt.s	$f2,$f0
    1a04:	00000000 	nop
    1a08:	45020007 	bc1fl	1a28 <func_80860F84+0xf4>
    1a0c:	e6020068 	swc1	$f2,104(s0)
    1a10:	44818000 	mtc1	at,$f16
    1a14:	00000000 	nop
    1a18:	46100481 	sub.s	$f18,$f0,$f16
    1a1c:	10000002 	b	1a28 <func_80860F84+0xf4>
    1a20:	e6120068 	swc1	$f18,104(s0)
    1a24:	e6020068 	swc1	$f2,104(s0)
    1a28:	96020088 	lhu	v0,136(s0)
    1a2c:	30420008 	andi	v0,v0,0x8
    1a30:	1440000d 	bnez	v0,1a68 <func_80860F84+0x134>
    1a34:	00000000 	nop
    1a38:	860b001c 	lh	t3,28(s0)
    1a3c:	24010003 	li	at,3
    1a40:	02002025 	move	a0,s0
    1a44:	15610040 	bne	t3,at,1b48 <func_80860F84+0x214>
    1a48:	8fa5004c 	lw	a1,76(sp)
    1a4c:	8e060068 	lw	a2,104(s0)
    1a50:	0c000000 	jal	0 <EnTest_SetupAction>
    1a54:	86070032 	lh	a3,50(s0)
    1a58:	5440003c 	bnezl	v0,1b4c <func_80860F84+0x218>
    1a5c:	8fa4004c 	lw	a0,76(sp)
    1a60:	96020088 	lhu	v0,136(s0)
    1a64:	30420008 	andi	v0,v0,0x8
    1a68:	10400016 	beqz	v0,1ac4 <func_80860F84+0x190>
    1a6c:	3c010000 	lui	at,0x0
    1a70:	c6040068 	lwc1	$f4,104(s0)
    1a74:	44803000 	mtc1	zero,$f6
    1a78:	00000000 	nop
    1a7c:	4604303e 	c.le.s	$f6,$f4
    1a80:	00000000 	nop
    1a84:	45020007 	bc1fl	1aa4 <func_80860F84+0x170>
    1a88:	860200b6 	lh	v0,182(s0)
    1a8c:	860200b6 	lh	v0,182(s0)
    1a90:	24423fff 	addiu	v0,v0,16383
    1a94:	00021400 	sll	v0,v0,0x10
    1a98:	10000005 	b	1ab0 <func_80860F84+0x17c>
    1a9c:	00021403 	sra	v0,v0,0x10
    1aa0:	860200b6 	lh	v0,182(s0)
    1aa4:	2442c001 	addiu	v0,v0,-16383
    1aa8:	00021400 	sll	v0,v0,0x10
    1aac:	00021403 	sra	v0,v0,0x10
    1ab0:	860c007e 	lh	t4,126(s0)
    1ab4:	01821023 	subu	v0,t4,v0
    1ab8:	00021400 	sll	v0,v0,0x10
    1abc:	10000006 	b	1ad8 <func_80860F84+0x1a4>
    1ac0:	00021403 	sra	v0,v0,0x10
    1ac4:	c6080068 	lwc1	$f8,104(s0)
    1ac8:	c42a0000 	lwc1	$f10,0(at)
    1acc:	00001025 	move	v0,zero
    1ad0:	460a4402 	mul.s	$f16,$f8,$f10
    1ad4:	e6100068 	swc1	$f16,104(s0)
    1ad8:	04400003 	bltz	v0,1ae8 <func_80860F84+0x1b4>
    1adc:	00021823 	negu	v1,v0
    1ae0:	10000001 	b	1ae8 <func_80860F84+0x1b4>
    1ae4:	00401825 	move	v1,v0
    1ae8:	28614001 	slti	at,v1,16385
    1aec:	14200016 	bnez	at,1b48 <func_80860F84+0x214>
    1af0:	3c010000 	lui	at,0x0
    1af4:	c4240000 	lwc1	$f4,0(at)
    1af8:	c6120068 	lwc1	$f18,104(s0)
    1afc:	44804000 	mtc1	zero,$f8
    1b00:	3c013f00 	lui	at,0x3f00
    1b04:	46049182 	mul.s	$f6,$f18,$f4
    1b08:	e6060068 	swc1	$f6,104(s0)
    1b0c:	c6000068 	lwc1	$f0,104(s0)
    1b10:	4608003c 	c.lt.s	$f0,$f8
    1b14:	00000000 	nop
    1b18:	45020008 	bc1fl	1b3c <func_80860F84+0x208>
    1b1c:	44819000 	mtc1	at,$f18
    1b20:	3c013f00 	lui	at,0x3f00
    1b24:	44815000 	mtc1	at,$f10
    1b28:	00000000 	nop
    1b2c:	460a0401 	sub.s	$f16,$f0,$f10
    1b30:	10000005 	b	1b48 <func_80860F84+0x214>
    1b34:	e6100068 	swc1	$f16,104(s0)
    1b38:	44819000 	mtc1	at,$f18
    1b3c:	00000000 	nop
    1b40:	46120100 	add.s	$f4,$f0,$f18
    1b44:	e6040068 	swc1	$f4,104(s0)
    1b48:	8fa4004c 	lw	a0,76(sp)
    1b4c:	0c000000 	jal	0 <EnTest_SetupAction>
    1b50:	02002825 	move	a1,s0
    1b54:	10400004 	beqz	v0,1b68 <func_80860F84+0x234>
    1b58:	3c014348 	lui	at,0x4348
    1b5c:	44811000 	mtc1	at,$f2
    1b60:	00000000 	nop
    1b64:	e7a2002c 	swc1	$f2,44(sp)
    1b68:	3c0142a0 	lui	at,0x42a0
    1b6c:	c7a2002c 	lwc1	$f2,44(sp)
    1b70:	44813000 	mtc1	at,$f6
    1b74:	c6000090 	lwc1	$f0,144(s0)
    1b78:	260407ec 	addiu	a0,s0,2028
    1b7c:	46023200 	add.s	$f8,$f6,$f2
    1b80:	3c05c020 	lui	a1,0xc020
    1b84:	3c063f80 	lui	a2,0x3f80
    1b88:	3c073f4c 	lui	a3,0x3f4c
    1b8c:	4608003e 	c.le.s	$f0,$f8
    1b90:	3c0142dc 	lui	at,0x42dc
    1b94:	45020008 	bc1fl	1bb8 <func_80860F84+0x284>
    1b98:	44818000 	mtc1	at,$f16
    1b9c:	44805000 	mtc1	zero,$f10
    1ba0:	34e7cccd 	ori	a3,a3,0xcccd
    1ba4:	0c000000 	jal	0 <EnTest_SetupAction>
    1ba8:	e7aa0010 	swc1	$f10,16(sp)
    1bac:	1000001a 	b	1c18 <func_80860F84+0x2e4>
    1bb0:	44804000 	mtc1	zero,$f8
    1bb4:	44818000 	mtc1	at,$f16
    1bb8:	260407ec 	addiu	a0,s0,2028
    1bbc:	24050000 	li	a1,0
    1bc0:	46028480 	add.s	$f18,$f16,$f2
    1bc4:	3c063f80 	lui	a2,0x3f80
    1bc8:	3c0740d4 	lui	a3,0x40d4
    1bcc:	4600903c 	c.lt.s	$f18,$f0
    1bd0:	00000000 	nop
    1bd4:	4502000c 	bc1fl	1c08 <func_80860F84+0x2d4>
    1bd8:	44803000 	mtc1	zero,$f6
    1bdc:	44802000 	mtc1	zero,$f4
    1be0:	3c073f4c 	lui	a3,0x3f4c
    1be4:	34e7cccd 	ori	a3,a3,0xcccd
    1be8:	260407ec 	addiu	a0,s0,2028
    1bec:	3c054020 	lui	a1,0x4020
    1bf0:	3c063f80 	lui	a2,0x3f80
    1bf4:	0c000000 	jal	0 <EnTest_SetupAction>
    1bf8:	e7a40010 	swc1	$f4,16(sp)
    1bfc:	10000006 	b	1c18 <func_80860F84+0x2e4>
    1c00:	44804000 	mtc1	zero,$f8
    1c04:	44803000 	mtc1	zero,$f6
    1c08:	34e7cccd 	ori	a3,a3,0xcccd
    1c0c:	0c000000 	jal	0 <EnTest_SetupAction>
    1c10:	e7a60010 	swc1	$f6,16(sp)
    1c14:	44804000 	mtc1	zero,$f8
    1c18:	c60a07ec 	lwc1	$f10,2028(s0)
    1c1c:	460a4032 	c.eq.s	$f8,$f10
    1c20:	00000000 	nop
    1c24:	45030010 	bc1tl	1c68 <func_80860F84+0x334>
    1c28:	3c013f00 	lui	at,0x3f00
    1c2c:	0c000000 	jal	0 <EnTest_SetupAction>
    1c30:	860400b6 	lh	a0,182(s0)
    1c34:	c61207ec 	lwc1	$f18,2028(s0)
    1c38:	c6100024 	lwc1	$f16,36(s0)
    1c3c:	860400b6 	lh	a0,182(s0)
    1c40:	46120102 	mul.s	$f4,$f0,$f18
    1c44:	46048180 	add.s	$f6,$f16,$f4
    1c48:	0c000000 	jal	0 <EnTest_SetupAction>
    1c4c:	e6060024 	swc1	$f6,36(s0)
    1c50:	c60a07ec 	lwc1	$f10,2028(s0)
    1c54:	c608002c 	lwc1	$f8,44(s0)
    1c58:	460a0482 	mul.s	$f18,$f0,$f10
    1c5c:	46124400 	add.s	$f16,$f8,$f18
    1c60:	e610002c 	swc1	$f16,44(s0)
    1c64:	3c013f00 	lui	at,0x3f00
    1c68:	44813000 	mtc1	at,$f6
    1c6c:	c6040068 	lwc1	$f4,104(s0)
    1c70:	c60801a0 	lwc1	$f8,416(s0)
    1c74:	26040188 	addiu	a0,s0,392
    1c78:	46062282 	mul.s	$f10,$f4,$f6
    1c7c:	4600448d 	trunc.w.s	$f18,$f8
    1c80:	44039000 	mfc1	v1,$f18
    1c84:	e60a01a4 	swc1	$f10,420(s0)
    1c88:	0c000000 	jal	0 <EnTest_SetupAction>
    1c8c:	afa3003c 	sw	v1,60(sp)
    1c90:	44807000 	mtc1	zero,$f14
    1c94:	c60001a4 	lwc1	$f0,420(s0)
    1c98:	8fa3003c 	lw	v1,60(sp)
    1c9c:	4600703e 	c.le.s	$f14,$f0
    1ca0:	00000000 	nop
    1ca4:	45020004 	bc1fl	1cb8 <func_80860F84+0x384>
    1ca8:	46000087 	neg.s	$f2,$f0
    1cac:	10000002 	b	1cb8 <func_80860F84+0x384>
    1cb0:	46000086 	mov.s	$f2,$f0
    1cb4:	46000087 	neg.s	$f2,$f0
    1cb8:	c60c01a0 	lwc1	$f12,416(s0)
    1cbc:	4600703e 	c.le.s	$f14,$f0
    1cc0:	46026401 	sub.s	$f16,$f12,$f2
    1cc4:	4600618d 	trunc.w.s	$f6,$f12
    1cc8:	4600810d 	trunc.w.s	$f4,$f16
    1ccc:	44183000 	mfc1	t8,$f6
    1cd0:	44042000 	mfc1	a0,$f4
    1cd4:	45020004 	bc1fl	1ce8 <func_80860F84+0x3b4>
    1cd8:	46000087 	neg.s	$f2,$f0
    1cdc:	10000002 	b	1ce8 <func_80860F84+0x3b4>
    1ce0:	46000086 	mov.s	$f2,$f0
    1ce4:	46000087 	neg.s	$f2,$f0
    1ce8:	50780011 	beql	v1,t8,1d30 <func_80860F84+0x3fc>
    1cec:	8fa9004c 	lw	t1,76(sp)
    1cf0:	4600128d 	trunc.w.s	$f10,$f2
    1cf4:	44085000 	mfc1	t0,$f10
    1cf8:	00000000 	nop
    1cfc:	01031021 	addu	v0,t0,v1
    1d00:	28410002 	slti	at,v0,2
    1d04:	54200003 	bnezl	at,1d14 <func_80860F84+0x3e0>
    1d08:	28810007 	slti	at,a0,7
    1d0c:	18800004 	blez	a0,1d20 <func_80860F84+0x3ec>
    1d10:	28810007 	slti	at,a0,7
    1d14:	10200005 	beqz	at,1d2c <func_80860F84+0x3f8>
    1d18:	28410008 	slti	at,v0,8
    1d1c:	14200003 	bnez	at,1d2c <func_80860F84+0x3f8>
    1d20:	02002025 	move	a0,s0
    1d24:	0c000000 	jal	0 <EnTest_SetupAction>
    1d28:	2405383d 	li	a1,14397
    1d2c:	8fa9004c 	lw	t1,76(sp)
    1d30:	3c0a0001 	lui	t2,0x1
    1d34:	02002025 	move	a0,s0
    1d38:	01495021 	addu	t2,t2,t1
    1d3c:	8d4a1de4 	lw	t2,7652(t2)
    1d40:	314b005f 	andi	t3,t2,0x5f
    1d44:	55600004 	bnezl	t3,1d58 <func_80860F84+0x424>
    1d48:	87ac0046 	lh	t4,70(sp)
    1d4c:	0c000000 	jal	0 <EnTest_SetupAction>
    1d50:	24053838 	li	a1,14392
    1d54:	87ac0046 	lh	t4,70(sp)
    1d58:	860d00b6 	lh	t5,182(s0)
    1d5c:	02002025 	move	a0,s0
    1d60:	018d1023 	subu	v0,t4,t5
    1d64:	00021400 	sll	v0,v0,0x10
    1d68:	00021403 	sra	v0,v0,0x10
    1d6c:	04430005 	bgezl	v0,1d84 <func_80860F84+0x450>
    1d70:	28416801 	slti	at,v0,26625
    1d74:	00021023 	negu	v0,v0
    1d78:	00021400 	sll	v0,v0,0x10
    1d7c:	00021403 	sra	v0,v0,0x10
    1d80:	28416801 	slti	at,v0,26625
    1d84:	10200004 	beqz	at,1d98 <func_80860F84+0x464>
    1d88:	00000000 	nop
    1d8c:	8e0207e8 	lw	v0,2024(s0)
    1d90:	14400005 	bnez	v0,1da8 <func_80860F84+0x474>
    1d94:	00000000 	nop
    1d98:	0c000000 	jal	0 <EnTest_SetupAction>
    1d9c:	8fa5004c 	lw	a1,76(sp)
    1da0:	10000005 	b	1db8 <func_80860F84+0x484>
    1da4:	8fbf0024 	lw	ra,36(sp)
    1da8:	10400002 	beqz	v0,1db4 <func_80860F84+0x480>
    1dac:	244effff 	addiu	t6,v0,-1
    1db0:	ae0e07e8 	sw	t6,2024(s0)
    1db4:	8fbf0024 	lw	ra,36(sp)
    1db8:	8fb00020 	lw	s0,32(sp)
    1dbc:	27bd0048 	addiu	sp,sp,72
    1dc0:	03e00008 	jr	ra
    1dc4:	00000000 	nop

00001dc8 <func_80861418>:
    1dc8:	27bdffe0 	addiu	sp,sp,-32
    1dcc:	afb00018 	sw	s0,24(sp)
    1dd0:	00808025 	move	s0,a0
    1dd4:	afbf001c 	sw	ra,28(sp)
    1dd8:	3c050601 	lui	a1,0x601
    1ddc:	24a5b00c 	addiu	a1,a1,-20468
    1de0:	0c000000 	jal	0 <EnTest_SetupAction>
    1de4:	24840188 	addiu	a0,a0,392
    1de8:	260400e4 	addiu	a0,s0,228
    1dec:	0c000000 	jal	0 <EnTest_SetupAction>
    1df0:	24053838 	li	a1,14392
    1df4:	920e086c 	lbu	t6,2156(s0)
    1df8:	44802000 	mtc1	zero,$f4
    1dfc:	24180010 	li	t8,16
    1e00:	3c050000 	lui	a1,0x0
    1e04:	31cffffb 	andi	t7,t6,0xfffb
    1e08:	a20f086c 	sb	t7,2156(s0)
    1e0c:	a21807c8 	sb	t8,1992(s0)
    1e10:	24a50000 	addiu	a1,a1,0
    1e14:	02002025 	move	a0,s0
    1e18:	0c000000 	jal	0 <EnTest_SetupAction>
    1e1c:	e6040068 	swc1	$f4,104(s0)
    1e20:	920807de 	lbu	t0,2014(s0)
    1e24:	24190010 	li	t9,16
    1e28:	a2190879 	sb	t9,2169(s0)
    1e2c:	11000002 	beqz	t0,1e38 <func_80861418+0x70>
    1e30:	24090003 	li	t1,3
    1e34:	a20907de 	sb	t1,2014(s0)
    1e38:	8fbf001c 	lw	ra,28(sp)
    1e3c:	8fb00018 	lw	s0,24(sp)
    1e40:	27bd0020 	addiu	sp,sp,32
    1e44:	03e00008 	jr	ra
    1e48:	00000000 	nop

00001e4c <func_8086149C>:
    1e4c:	27bdffd8 	addiu	sp,sp,-40
    1e50:	afbf0024 	sw	ra,36(sp)
    1e54:	afb00020 	sw	s0,32(sp)
    1e58:	afa5002c 	sw	a1,44(sp)
    1e5c:	c48001a0 	lwc1	$f0,416(a0)
    1e60:	44802000 	mtc1	zero,$f4
    1e64:	00808025 	move	s0,a0
    1e68:	4600018d 	trunc.w.s	$f6,$f0
    1e6c:	248400b6 	addiu	a0,a0,182
    1e70:	24060001 	li	a2,1
    1e74:	24070bb8 	li	a3,3000
    1e78:	44033000 	mfc1	v1,$f6
    1e7c:	e484ffb2 	swc1	$f4,-78(a0)
    1e80:	28610004 	slti	at,v1,4
    1e84:	50200009 	beqzl	at,1eac <func_8086149C+0x60>
    1e88:	24010007 	li	at,7
    1e8c:	8605008a 	lh	a1,138(s0)
    1e90:	0c000000 	jal	0 <EnTest_SetupAction>
    1e94:	afa00010 	sw	zero,16(sp)
    1e98:	c60001a0 	lwc1	$f0,416(s0)
    1e9c:	4600020d 	trunc.w.s	$f8,$f0
    1ea0:	44034000 	mfc1	v1,$f8
    1ea4:	00000000 	nop
    1ea8:	24010007 	li	at,7
    1eac:	14610004 	bne	v1,at,1ec0 <func_8086149C+0x74>
    1eb0:	02002025 	move	a0,s0
    1eb4:	0c000000 	jal	0 <EnTest_SetupAction>
    1eb8:	24053839 	li	a1,14393
    1ebc:	c60001a0 	lwc1	$f0,416(s0)
    1ec0:	3c0140e0 	lui	at,0x40e0
    1ec4:	44815000 	mtc1	at,$f10
    1ec8:	3c014130 	lui	at,0x4130
    1ecc:	4600503c 	c.lt.s	$f10,$f0
    1ed0:	00000000 	nop
    1ed4:	4502000a 	bc1fl	1f00 <func_8086149C+0xb4>
    1ed8:	a2000808 	sb	zero,2056(s0)
    1edc:	44818000 	mtc1	at,$f16
    1ee0:	24180001 	li	t8,1
    1ee4:	4610003c 	c.lt.s	$f0,$f16
    1ee8:	00000000 	nop
    1eec:	45020004 	bc1fl	1f00 <func_8086149C+0xb4>
    1ef0:	a2000808 	sb	zero,2056(s0)
    1ef4:	10000002 	b	1f00 <func_8086149C+0xb4>
    1ef8:	a2180808 	sb	t8,2056(s0)
    1efc:	a2000808 	sb	zero,2056(s0)
    1f00:	0c000000 	jal	0 <EnTest_SetupAction>
    1f04:	26040188 	addiu	a0,s0,392
    1f08:	1040000d 	beqz	v0,1f40 <func_8086149C+0xf4>
    1f0c:	8fb9002c 	lw	t9,44(sp)
    1f10:	3c080001 	lui	t0,0x1
    1f14:	01194021 	addu	t0,t0,t9
    1f18:	8d081de4 	lw	t0,7652(t0)
    1f1c:	31090001 	andi	t1,t0,0x1
    1f20:	11200005 	beqz	t1,1f38 <func_8086149C+0xec>
    1f24:	00000000 	nop
    1f28:	0c000000 	jal	0 <EnTest_SetupAction>
    1f2c:	02002025 	move	a0,s0
    1f30:	10000004 	b	1f44 <func_8086149C+0xf8>
    1f34:	8fbf0024 	lw	ra,36(sp)
    1f38:	0c000000 	jal	0 <EnTest_SetupAction>
    1f3c:	02002025 	move	a0,s0
    1f40:	8fbf0024 	lw	ra,36(sp)
    1f44:	8fb00020 	lw	s0,32(sp)
    1f48:	27bd0028 	addiu	sp,sp,40
    1f4c:	03e00008 	jr	ra
    1f50:	00000000 	nop

00001f54 <func_808615A4>:
    1f54:	27bdffe8 	addiu	sp,sp,-24
    1f58:	afbf0014 	sw	ra,20(sp)
    1f5c:	00803025 	move	a2,a0
    1f60:	3c050601 	lui	a1,0x601
    1f64:	24a5b4e4 	addiu	a1,a1,-19228
    1f68:	afa60018 	sw	a2,24(sp)
    1f6c:	0c000000 	jal	0 <EnTest_SetupAction>
    1f70:	24840188 	addiu	a0,a0,392
    1f74:	8fa40018 	lw	a0,24(sp)
    1f78:	44802000 	mtc1	zero,$f4
    1f7c:	240e0012 	li	t6,18
    1f80:	3c050000 	lui	a1,0x0
    1f84:	24a50000 	addiu	a1,a1,0
    1f88:	a08e07c8 	sb	t6,1992(a0)
    1f8c:	0c000000 	jal	0 <EnTest_SetupAction>
    1f90:	e4840068 	swc1	$f4,104(a0)
    1f94:	8fbf0014 	lw	ra,20(sp)
    1f98:	27bd0018 	addiu	sp,sp,24
    1f9c:	03e00008 	jr	ra
    1fa0:	00000000 	nop

00001fa4 <func_808615F4>:
    1fa4:	27bdffe0 	addiu	sp,sp,-32
    1fa8:	afbf0014 	sw	ra,20(sp)
    1fac:	afa50024 	sw	a1,36(sp)
    1fb0:	8caf1c44 	lw	t7,7236(a1)
    1fb4:	00803025 	move	a2,a0
    1fb8:	afa60020 	sw	a2,32(sp)
    1fbc:	24840188 	addiu	a0,a0,392
    1fc0:	0c000000 	jal	0 <EnTest_SetupAction>
    1fc4:	afaf001c 	sw	t7,28(sp)
    1fc8:	1040007c 	beqz	v0,21bc <func_808615F4+0x218>
    1fcc:	8fa60020 	lw	a2,32(sp)
    1fd0:	90c2086c 	lbu	v0,2156(a2)
    1fd4:	30580002 	andi	t8,v0,0x2
    1fd8:	1300000a 	beqz	t8,2004 <func_808615F4+0x60>
    1fdc:	00000000 	nop
    1fe0:	84c8001c 	lh	t0,28(a2)
    1fe4:	3059fffd 	andi	t9,v0,0xfffd
    1fe8:	24010003 	li	at,3
    1fec:	11010005 	beq	t0,at,2004 <func_808615F4+0x60>
    1ff0:	a0d9086c 	sb	t9,2156(a2)
    1ff4:	0c000000 	jal	0 <EnTest_SetupAction>
    1ff8:	00c02025 	move	a0,a2
    1ffc:	10000070 	b	21c0 <func_808615F4+0x21c>
    2000:	8fbf0014 	lw	ra,20(sp)
    2004:	0c000000 	jal	0 <EnTest_SetupAction>
    2008:	afa60020 	sw	a2,32(sp)
    200c:	3c010000 	lui	at,0x0
    2010:	c4240000 	lwc1	$f4,0(at)
    2014:	8fa60020 	lw	a2,32(sp)
    2018:	8fa5001c 	lw	a1,28(sp)
    201c:	4600203c 	c.lt.s	$f4,$f0
    2020:	00c02025 	move	a0,a2
    2024:	4500000f 	bc1f	2064 <func_808615F4+0xc0>
    2028:	00000000 	nop
    202c:	00c02025 	move	a0,a2
    2030:	0c000000 	jal	0 <EnTest_SetupAction>
    2034:	afa60020 	sw	a2,32(sp)
    2038:	0c000000 	jal	0 <EnTest_SetupAction>
    203c:	00000000 	nop
    2040:	3c0140a0 	lui	at,0x40a0
    2044:	44811000 	mtc1	at,$f2
    2048:	8fa60020 	lw	a2,32(sp)
    204c:	46020182 	mul.s	$f6,$f0,$f2
    2050:	46023200 	add.s	$f8,$f6,$f2
    2054:	4600428d 	trunc.w.s	$f10,$f8
    2058:	440a5000 	mfc1	t2,$f10
    205c:	10000057 	b	21bc <func_808615F4+0x218>
    2060:	acca07e8 	sw	t2,2024(a2)
    2064:	0c000000 	jal	0 <EnTest_SetupAction>
    2068:	afa60020 	sw	a2,32(sp)
    206c:	8fa60020 	lw	a2,32(sp)
    2070:	0c000000 	jal	0 <EnTest_SetupAction>
    2074:	a4c20032 	sh	v0,50(a2)
    2078:	3c010000 	lui	at,0x0
    207c:	c4300000 	lwc1	$f16,0(at)
    2080:	8fa60020 	lw	a2,32(sp)
    2084:	8fac001c 	lw	t4,28(sp)
    2088:	4600803c 	c.lt.s	$f16,$f0
    208c:	00000000 	nop
    2090:	4502000a 	bc1fl	20bc <func_808615F4+0x118>
    2094:	84c400b6 	lh	a0,182(a2)
    2098:	84cb001c 	lh	t3,28(a2)
    209c:	24010003 	li	at,3
    20a0:	51610006 	beql	t3,at,20bc <func_808615F4+0x118>
    20a4:	84c400b6 	lh	a0,182(a2)
    20a8:	0c000000 	jal	0 <EnTest_SetupAction>
    20ac:	00c02025 	move	a0,a2
    20b0:	10000043 	b	21c0 <func_808615F4+0x21c>
    20b4:	8fbf0014 	lw	ra,20(sp)
    20b8:	84c400b6 	lh	a0,182(a2)
    20bc:	858d00b6 	lh	t5,182(t4)
    20c0:	8fa50024 	lw	a1,36(sp)
    20c4:	01a41023 	subu	v0,t5,a0
    20c8:	00021400 	sll	v0,v0,0x10
    20cc:	00021403 	sra	v0,v0,0x10
    20d0:	04400003 	bltz	v0,20e0 <func_808615F4+0x13c>
    20d4:	00021823 	negu	v1,v0
    20d8:	10000001 	b	20e0 <func_808615F4+0x13c>
    20dc:	00401825 	move	v1,v0
    20e0:	28612711 	slti	at,v1,10001
    20e4:	10200033 	beqz	at,21b4 <func_808615F4+0x210>
    20e8:	00000000 	nop
    20ec:	84c5008a 	lh	a1,138(a2)
    20f0:	8faf001c 	lw	t7,28(sp)
    20f4:	00a41023 	subu	v0,a1,a0
    20f8:	00021400 	sll	v0,v0,0x10
    20fc:	00021403 	sra	v0,v0,0x10
    2100:	04400003 	bltz	v0,2110 <func_808615F4+0x16c>
    2104:	00021823 	negu	v1,v0
    2108:	10000001 	b	2110 <func_808615F4+0x16c>
    210c:	00401825 	move	v1,v0
    2110:	28613e81 	slti	at,v1,16001
    2114:	5420000b 	bnezl	at,2144 <func_808615F4+0x1a0>
    2118:	8df8067c 	lw	t8,1660(t7)
    211c:	84ce001c 	lh	t6,28(a2)
    2120:	24010003 	li	at,3
    2124:	00c02025 	move	a0,a2
    2128:	51c10006 	beql	t6,at,2144 <func_808615F4+0x1a0>
    212c:	8df8067c 	lw	t8,1660(t7)
    2130:	0c000000 	jal	0 <EnTest_SetupAction>
    2134:	a4c50032 	sh	a1,50(a2)
    2138:	10000021 	b	21c0 <func_808615F4+0x21c>
    213c:	8fbf0014 	lw	ra,20(sp)
    2140:	8df8067c 	lw	t8,1660(t7)
    2144:	33190010 	andi	t9,t8,0x10
    2148:	13200016 	beqz	t9,21a4 <func_808615F4+0x200>
    214c:	00000000 	nop
    2150:	90c8010c 	lbu	t0,268(a2)
    2154:	8fa50024 	lw	a1,36(sp)
    2158:	3c090001 	lui	t1,0x1
    215c:	11000005 	beqz	t0,2174 <func_808615F4+0x1d0>
    2160:	01254821 	addu	t1,t1,a1
    2164:	0c000000 	jal	0 <EnTest_SetupAction>
    2168:	00c02025 	move	a0,a2
    216c:	10000014 	b	21c0 <func_808615F4+0x21c>
    2170:	8fbf0014 	lw	ra,20(sp)
    2174:	8d291de4 	lw	t1,7652(t1)
    2178:	312a0001 	andi	t2,t1,0x1
    217c:	11400005 	beqz	t2,2194 <func_808615F4+0x1f0>
    2180:	00000000 	nop
    2184:	0c000000 	jal	0 <EnTest_SetupAction>
    2188:	00c02025 	move	a0,a2
    218c:	1000000c 	b	21c0 <func_808615F4+0x21c>
    2190:	8fbf0014 	lw	ra,20(sp)
    2194:	0c000000 	jal	0 <EnTest_SetupAction>
    2198:	00c02025 	move	a0,a2
    219c:	10000008 	b	21c0 <func_808615F4+0x21c>
    21a0:	8fbf0014 	lw	ra,20(sp)
    21a4:	0c000000 	jal	0 <EnTest_SetupAction>
    21a8:	00c02025 	move	a0,a2
    21ac:	10000004 	b	21c0 <func_808615F4+0x21c>
    21b0:	8fbf0014 	lw	ra,20(sp)
    21b4:	0c000000 	jal	0 <EnTest_SetupAction>
    21b8:	00c02025 	move	a0,a2
    21bc:	8fbf0014 	lw	ra,20(sp)
    21c0:	27bd0020 	addiu	sp,sp,32
    21c4:	03e00008 	jr	ra
    21c8:	00000000 	nop

000021cc <func_8086181C>:
    21cc:	27bdffe8 	addiu	sp,sp,-24
    21d0:	afbf0014 	sw	ra,20(sp)
    21d4:	00803025 	move	a2,a0
    21d8:	3c050601 	lui	a1,0x601
    21dc:	24a5be4c 	addiu	a1,a1,-16820
    21e0:	afa60018 	sw	a2,24(sp)
    21e4:	0c000000 	jal	0 <EnTest_SetupAction>
    21e8:	24840188 	addiu	a0,a0,392
    21ec:	8fa40018 	lw	a0,24(sp)
    21f0:	44802000 	mtc1	zero,$f4
    21f4:	24180011 	li	t8,17
    21f8:	908e086c 	lbu	t6,2156(a0)
    21fc:	24190010 	li	t9,16
    2200:	3c050000 	lui	a1,0x0
    2204:	31cffffb 	andi	t7,t6,0xfffb
    2208:	24a50000 	addiu	a1,a1,0
    220c:	a08f086c 	sb	t7,2156(a0)
    2210:	a09807c8 	sb	t8,1992(a0)
    2214:	a0990879 	sb	t9,2169(a0)
    2218:	0c000000 	jal	0 <EnTest_SetupAction>
    221c:	e4840068 	swc1	$f4,104(a0)
    2220:	8fa60018 	lw	a2,24(sp)
    2224:	24090003 	li	t1,3
    2228:	90c807de 	lbu	t0,2014(a2)
    222c:	51000003 	beqzl	t0,223c <func_8086181C+0x70>
    2230:	8fbf0014 	lw	ra,20(sp)
    2234:	a0c907de 	sb	t1,2014(a2)
    2238:	8fbf0014 	lw	ra,20(sp)
    223c:	27bd0018 	addiu	sp,sp,24
    2240:	03e00008 	jr	ra
    2244:	00000000 	nop

00002248 <func_80861898>:
    2248:	27bdffe8 	addiu	sp,sp,-24
    224c:	afbf0014 	sw	ra,20(sp)
    2250:	afa5001c 	sw	a1,28(sp)
    2254:	c48001a0 	lwc1	$f0,416(a0)
    2258:	44802000 	mtc1	zero,$f4
    225c:	24010002 	li	at,2
    2260:	4600018d 	trunc.w.s	$f6,$f0
    2264:	00803025 	move	a2,a0
    2268:	24053839 	li	a1,14393
    226c:	e4840068 	swc1	$f4,104(a0)
    2270:	440f3000 	mfc1	t7,$f6
    2274:	00000000 	nop
    2278:	55e10006 	bnel	t7,at,2294 <func_80861898+0x4c>
    227c:	3c013f80 	lui	at,0x3f80
    2280:	0c000000 	jal	0 <EnTest_SetupAction>
    2284:	afa60018 	sw	a2,24(sp)
    2288:	8fa60018 	lw	a2,24(sp)
    228c:	c4c001a0 	lwc1	$f0,416(a2)
    2290:	3c013f80 	lui	at,0x3f80
    2294:	44814000 	mtc1	at,$f8
    2298:	3c014100 	lui	at,0x4100
    229c:	24c40188 	addiu	a0,a2,392
    22a0:	4600403c 	c.lt.s	$f8,$f0
    22a4:	00000000 	nop
    22a8:	4502000a 	bc1fl	22d4 <func_80861898+0x8c>
    22ac:	a0c00808 	sb	zero,2056(a2)
    22b0:	44815000 	mtc1	at,$f10
    22b4:	24180001 	li	t8,1
    22b8:	460a003c 	c.lt.s	$f0,$f10
    22bc:	00000000 	nop
    22c0:	45020004 	bc1fl	22d4 <func_80861898+0x8c>
    22c4:	a0c00808 	sb	zero,2056(a2)
    22c8:	10000002 	b	22d4 <func_80861898+0x8c>
    22cc:	a0d80808 	sb	t8,2056(a2)
    22d0:	a0c00808 	sb	zero,2056(a2)
    22d4:	0c000000 	jal	0 <EnTest_SetupAction>
    22d8:	afa60018 	sw	a2,24(sp)
    22dc:	10400003 	beqz	v0,22ec <func_80861898+0xa4>
    22e0:	8fa60018 	lw	a2,24(sp)
    22e4:	0c000000 	jal	0 <EnTest_SetupAction>
    22e8:	00c02025 	move	a0,a2
    22ec:	8fbf0014 	lw	ra,20(sp)
    22f0:	27bd0018 	addiu	sp,sp,24
    22f4:	03e00008 	jr	ra
    22f8:	00000000 	nop

000022fc <func_8086194C>:
    22fc:	27bdffe0 	addiu	sp,sp,-32
    2300:	afb00018 	sw	s0,24(sp)
    2304:	00808025 	move	s0,a0
    2308:	afbf001c 	sw	ra,28(sp)
    230c:	3c050600 	lui	a1,0x600
    2310:	24a51978 	addiu	a1,a1,6520
    2314:	0c000000 	jal	0 <EnTest_SetupAction>
    2318:	24840188 	addiu	a0,a0,392
    231c:	02002025 	move	a0,s0
    2320:	0c000000 	jal	0 <EnTest_SetupAction>
    2324:	2405386c 	li	a1,14444
    2328:	240e0014 	li	t6,20
    232c:	240f0005 	li	t7,5
    2330:	3c050000 	lui	a1,0x0
    2334:	a20e07c8 	sb	t6,1992(s0)
    2338:	ae0f07e8 	sw	t7,2024(s0)
    233c:	24a50000 	addiu	a1,a1,0
    2340:	0c000000 	jal	0 <EnTest_SetupAction>
    2344:	02002025 	move	a0,s0
    2348:	921807de 	lbu	t8,2014(s0)
    234c:	24190003 	li	t9,3
    2350:	53000003 	beqzl	t8,2360 <func_8086194C+0x64>
    2354:	8608001c 	lh	t0,28(s0)
    2358:	a21907de 	sb	t9,2014(s0)
    235c:	8608001c 	lh	t0,28(s0)
    2360:	24010003 	li	at,3
    2364:	11010004 	beq	t0,at,2378 <func_8086194C+0x7c>
    2368:	3c01c130 	lui	at,0xc130
    236c:	44812000 	mtc1	at,$f4
    2370:	10000005 	b	2388 <func_8086194C+0x8c>
    2374:	e6040068 	swc1	$f4,104(s0)
    2378:	3c01c0e0 	lui	at,0xc0e0
    237c:	44813000 	mtc1	at,$f6
    2380:	00000000 	nop
    2384:	e6060068 	swc1	$f6,104(s0)
    2388:	8fbf001c 	lw	ra,28(sp)
    238c:	8fb00018 	lw	s0,24(sp)
    2390:	27bd0020 	addiu	sp,sp,32
    2394:	03e00008 	jr	ra
    2398:	00000000 	nop

0000239c <func_808619EC>:
    239c:	27bdffd8 	addiu	sp,sp,-40
    23a0:	afb00020 	sw	s0,32(sp)
    23a4:	00808025 	move	s0,a0
    23a8:	afbf0024 	sw	ra,36(sp)
    23ac:	afa5002c 	sw	a1,44(sp)
    23b0:	8605008a 	lh	a1,138(s0)
    23b4:	240e0001 	li	t6,1
    23b8:	afae0010 	sw	t6,16(sp)
    23bc:	248400b6 	addiu	a0,a0,182
    23c0:	24060001 	li	a2,1
    23c4:	0c000000 	jal	0 <EnTest_SetupAction>
    23c8:	24070bb8 	li	a3,3000
    23cc:	8e0307e8 	lw	v1,2024(s0)
    23d0:	02002025 	move	a0,s0
    23d4:	14600005 	bnez	v1,23ec <func_808619EC+0x50>
    23d8:	246fffff 	addiu	t7,v1,-1
    23dc:	0c000000 	jal	0 <EnTest_SetupAction>
    23e0:	24053838 	li	a1,14392
    23e4:	10000002 	b	23f0 <func_808619EC+0x54>
    23e8:	00000000 	nop
    23ec:	ae0f07e8 	sw	t7,2024(s0)
    23f0:	0c000000 	jal	0 <EnTest_SetupAction>
    23f4:	26040188 	addiu	a0,s0,392
    23f8:	10400042 	beqz	v0,2504 <func_808619EC+0x168>
    23fc:	3c014080 	lui	at,0x4080
    2400:	8fa4002c 	lw	a0,44(sp)
    2404:	0c000000 	jal	0 <EnTest_SetupAction>
    2408:	02002825 	move	a1,s0
    240c:	14400048 	bnez	v0,2530 <func_808619EC+0x194>
    2410:	3c0142c8 	lui	at,0x42c8
    2414:	c6000090 	lwc1	$f0,144(s0)
    2418:	44812000 	mtc1	at,$f4
    241c:	02002025 	move	a0,s0
    2420:	3c01435c 	lui	at,0x435c
    2424:	4604003e 	c.le.s	$f0,$f4
    2428:	00000000 	nop
    242c:	45020017 	bc1fl	248c <func_808619EC+0xf0>
    2430:	44818000 	mtc1	at,$f16
    2434:	0c000000 	jal	0 <EnTest_SetupAction>
    2438:	24051555 	li	a1,5461
    243c:	10400005 	beqz	v0,2454 <func_808619EC+0xb8>
    2440:	00000000 	nop
    2444:	0c000000 	jal	0 <EnTest_SetupAction>
    2448:	02002025 	move	a0,s0
    244c:	1000002a 	b	24f8 <func_808619EC+0x15c>
    2450:	8e0a0004 	lw	t2,4(s0)
    2454:	0c000000 	jal	0 <EnTest_SetupAction>
    2458:	02002025 	move	a0,s0
    245c:	0c000000 	jal	0 <EnTest_SetupAction>
    2460:	00000000 	nop
    2464:	3c0140a0 	lui	at,0x40a0
    2468:	44811000 	mtc1	at,$f2
    246c:	00000000 	nop
    2470:	46020182 	mul.s	$f6,$f0,$f2
    2474:	46023200 	add.s	$f8,$f6,$f2
    2478:	4600428d 	trunc.w.s	$f10,$f8
    247c:	44195000 	mfc1	t9,$f10
    2480:	1000001c 	b	24f4 <func_808619EC+0x158>
    2484:	ae1907e8 	sw	t9,2024(s0)
    2488:	44818000 	mtc1	at,$f16
    248c:	02002025 	move	a0,s0
    2490:	4610003e 	c.le.s	$f0,$f16
    2494:	00000000 	nop
    2498:	45000009 	bc1f	24c0 <func_808619EC+0x124>
    249c:	00000000 	nop
    24a0:	0c000000 	jal	0 <EnTest_SetupAction>
    24a4:	24050e38 	li	a1,3640
    24a8:	10400005 	beqz	v0,24c0 <func_808619EC+0x124>
    24ac:	00000000 	nop
    24b0:	0c000000 	jal	0 <EnTest_SetupAction>
    24b4:	02002025 	move	a0,s0
    24b8:	1000000f 	b	24f8 <func_808619EC+0x15c>
    24bc:	8e0a0004 	lw	t2,4(s0)
    24c0:	0c000000 	jal	0 <EnTest_SetupAction>
    24c4:	02002025 	move	a0,s0
    24c8:	0c000000 	jal	0 <EnTest_SetupAction>
    24cc:	00000000 	nop
    24d0:	3c0140a0 	lui	at,0x40a0
    24d4:	44811000 	mtc1	at,$f2
    24d8:	00000000 	nop
    24dc:	46020482 	mul.s	$f18,$f0,$f2
    24e0:	46029100 	add.s	$f4,$f18,$f2
    24e4:	4600218d 	trunc.w.s	$f6,$f4
    24e8:	44093000 	mfc1	t1,$f6
    24ec:	00000000 	nop
    24f0:	ae0907e8 	sw	t1,2024(s0)
    24f4:	8e0a0004 	lw	t2,4(s0)
    24f8:	354b0001 	ori	t3,t2,0x1
    24fc:	1000000c 	b	2530 <func_808619EC+0x194>
    2500:	ae0b0004 	sw	t3,4(s0)
    2504:	c6080198 	lwc1	$f8,408(s0)
    2508:	44815000 	mtc1	at,$f10
    250c:	c61201a0 	lwc1	$f18,416(s0)
    2510:	02002025 	move	a0,s0
    2514:	460a4401 	sub.s	$f16,$f8,$f10
    2518:	46128032 	c.eq.s	$f16,$f18
    251c:	00000000 	nop
    2520:	45020004 	bc1fl	2534 <func_808619EC+0x198>
    2524:	8fbf0024 	lw	ra,36(sp)
    2528:	0c000000 	jal	0 <EnTest_SetupAction>
    252c:	2405387b 	li	a1,14459
    2530:	8fbf0024 	lw	ra,36(sp)
    2534:	8fb00020 	lw	s0,32(sp)
    2538:	27bd0028 	addiu	sp,sp,40
    253c:	03e00008 	jr	ra
    2540:	00000000 	nop

00002544 <func_80861B94>:
    2544:	27bdffe0 	addiu	sp,sp,-32
    2548:	afb00018 	sw	s0,24(sp)
    254c:	00808025 	move	s0,a0
    2550:	afbf001c 	sw	ra,28(sp)
    2554:	3c050601 	lui	a1,0x601
    2558:	24a5a324 	addiu	a1,a1,-23772
    255c:	0c000000 	jal	0 <EnTest_SetupAction>
    2560:	24840188 	addiu	a0,a0,392
    2564:	260400e4 	addiu	a0,s0,228
    2568:	0c000000 	jal	0 <EnTest_SetupAction>
    256c:	24053838 	li	a1,14392
    2570:	3c014120 	lui	at,0x4120
    2574:	44812000 	mtc1	at,$f4
    2578:	3c014100 	lui	at,0x4100
    257c:	44813000 	mtc1	at,$f6
    2580:	240e0017 	li	t6,23
    2584:	ae0007e8 	sw	zero,2024(s0)
    2588:	a20e07c8 	sb	t6,1992(s0)
    258c:	02002025 	move	a0,s0
    2590:	2405386c 	li	a1,14444
    2594:	e6040060 	swc1	$f4,96(s0)
    2598:	0c000000 	jal	0 <EnTest_SetupAction>
    259c:	e6060068 	swc1	$f6,104(s0)
    25a0:	9218086c 	lbu	t8,2156(s0)
    25a4:	860f00b6 	lh	t7,182(s0)
    25a8:	3c050000 	lui	a1,0x0
    25ac:	3319fffb 	andi	t9,t8,0xfffb
    25b0:	a219086c 	sb	t9,2156(s0)
    25b4:	24a50000 	addiu	a1,a1,0
    25b8:	02002025 	move	a0,s0
    25bc:	0c000000 	jal	0 <EnTest_SetupAction>
    25c0:	a60f0032 	sh	t7,50(s0)
    25c4:	920907de 	lbu	t1,2014(s0)
    25c8:	24080020 	li	t0,32
    25cc:	a2080879 	sb	t0,2169(s0)
    25d0:	11200002 	beqz	t1,25dc <func_80861B94+0x98>
    25d4:	240a0003 	li	t2,3
    25d8:	a20a07de 	sb	t2,2014(s0)
    25dc:	8fbf001c 	lw	ra,28(sp)
    25e0:	8fb00018 	lw	s0,24(sp)
    25e4:	27bd0020 	addiu	sp,sp,32
    25e8:	03e00008 	jr	ra
    25ec:	00000000 	nop

000025f0 <func_80861C40>:
    25f0:	27bdffd8 	addiu	sp,sp,-40
    25f4:	afb00018 	sw	s0,24(sp)
    25f8:	00808025 	move	s0,a0
    25fc:	afbf001c 	sw	ra,28(sp)
    2600:	24840188 	addiu	a0,a0,392
    2604:	afa5002c 	sw	a1,44(sp)
    2608:	0c000000 	jal	0 <EnTest_SetupAction>
    260c:	afa40024 	sw	a0,36(sp)
    2610:	10400016 	beqz	v0,266c <func_80861C40+0x7c>
    2614:	8fa40024 	lw	a0,36(sp)
    2618:	8e0e07e8 	lw	t6,2024(s0)
    261c:	3c050601 	lui	a1,0x601
    2620:	55c0000f 	bnezl	t6,2660 <func_80861C40+0x70>
    2624:	44802000 	mtc1	zero,$f4
    2628:	0c000000 	jal	0 <EnTest_SetupAction>
    262c:	24a5a99c 	addiu	a1,a1,-22116
    2630:	24020001 	li	v0,1
    2634:	ae0207e8 	sw	v0,2024(s0)
    2638:	a2020808 	sb	v0,2056(s0)
    263c:	02002025 	move	a0,s0
    2640:	0c000000 	jal	0 <EnTest_SetupAction>
    2644:	24053839 	li	a1,14393
    2648:	02002025 	move	a0,s0
    264c:	0c000000 	jal	0 <EnTest_SetupAction>
    2650:	2405386c 	li	a1,14444
    2654:	10000006 	b	2670 <func_80861C40+0x80>
    2658:	8e0f07e8 	lw	t7,2024(s0)
    265c:	44802000 	mtc1	zero,$f4
    2660:	02002025 	move	a0,s0
    2664:	0c000000 	jal	0 <EnTest_SetupAction>
    2668:	e6040068 	swc1	$f4,104(s0)
    266c:	8e0f07e8 	lw	t7,2024(s0)
    2670:	3c0140a0 	lui	at,0x40a0
    2674:	51e0000a 	beqzl	t7,26a0 <func_80861C40+0xb0>
    2678:	c6000080 	lwc1	$f0,128(s0)
    267c:	c60601a0 	lwc1	$f6,416(s0)
    2680:	44814000 	mtc1	at,$f8
    2684:	00000000 	nop
    2688:	4606403e 	c.le.s	$f8,$f6
    268c:	00000000 	nop
    2690:	45020003 	bc1fl	26a0 <func_80861C40+0xb0>
    2694:	c6000080 	lwc1	$f0,128(s0)
    2698:	a2000808 	sb	zero,2056(s0)
    269c:	c6000080 	lwc1	$f0,128(s0)
    26a0:	c60a0028 	lwc1	$f10,40(s0)
    26a4:	4600503e 	c.le.s	$f10,$f0
    26a8:	00000000 	nop
    26ac:	45020010 	bc1fl	26f0 <func_80861C40+0x100>
    26b0:	8fbf001c 	lw	ra,28(sp)
    26b4:	44801000 	mtc1	zero,$f2
    26b8:	c6100068 	lwc1	$f16,104(s0)
    26bc:	02002025 	move	a0,s0
    26c0:	46101032 	c.eq.s	$f2,$f16
    26c4:	00000000 	nop
    26c8:	45030006 	bc1tl	26e4 <func_80861C40+0xf4>
    26cc:	e6000028 	swc1	$f0,40(s0)
    26d0:	0c000000 	jal	0 <EnTest_SetupAction>
    26d4:	2405387b 	li	a1,14459
    26d8:	44801000 	mtc1	zero,$f2
    26dc:	c6000080 	lwc1	$f0,128(s0)
    26e0:	e6000028 	swc1	$f0,40(s0)
    26e4:	e6020060 	swc1	$f2,96(s0)
    26e8:	e6020068 	swc1	$f2,104(s0)
    26ec:	8fbf001c 	lw	ra,28(sp)
    26f0:	8fb00018 	lw	s0,24(sp)
    26f4:	27bd0028 	addiu	sp,sp,40
    26f8:	03e00008 	jr	ra
    26fc:	00000000 	nop

00002700 <func_80861D50>:
    2700:	27bdffe8 	addiu	sp,sp,-24
    2704:	afbf0014 	sw	ra,20(sp)
    2708:	00803025 	move	a2,a0
    270c:	3c050601 	lui	a1,0x601
    2710:	24a5a324 	addiu	a1,a1,-23772
    2714:	afa60018 	sw	a2,24(sp)
    2718:	0c000000 	jal	0 <EnTest_SetupAction>
    271c:	24840188 	addiu	a0,a0,392
    2720:	8fa40018 	lw	a0,24(sp)
    2724:	3c014160 	lui	at,0x4160
    2728:	44812000 	mtc1	at,$f4
    272c:	3c0140c0 	lui	at,0x40c0
    2730:	44813000 	mtc1	at,$f6
    2734:	240e0004 	li	t6,4
    2738:	2405386c 	li	a1,14444
    273c:	ac8007e8 	sw	zero,2024(a0)
    2740:	a08e07c8 	sb	t6,1992(a0)
    2744:	e4840060 	swc1	$f4,96(a0)
    2748:	0c000000 	jal	0 <EnTest_SetupAction>
    274c:	e4860068 	swc1	$f6,104(a0)
    2750:	8fa40018 	lw	a0,24(sp)
    2754:	3c050000 	lui	a1,0x0
    2758:	24a50000 	addiu	a1,a1,0
    275c:	848f00b6 	lh	t7,182(a0)
    2760:	0c000000 	jal	0 <EnTest_SetupAction>
    2764:	a48f0032 	sh	t7,50(a0)
    2768:	8fbf0014 	lw	ra,20(sp)
    276c:	27bd0018 	addiu	sp,sp,24
    2770:	03e00008 	jr	ra
    2774:	00000000 	nop

00002778 <func_80861DC8>:
    2778:	27bdffc8 	addiu	sp,sp,-56
    277c:	afb00028 	sw	s0,40(sp)
    2780:	00808025 	move	s0,a0
    2784:	afbf002c 	sw	ra,44(sp)
    2788:	afa5003c 	sw	a1,60(sp)
    278c:	8605008a 	lh	a1,138(s0)
    2790:	240e0001 	li	t6,1
    2794:	afae0010 	sw	t6,16(sp)
    2798:	248400b6 	addiu	a0,a0,182
    279c:	24060001 	li	a2,1
    27a0:	0c000000 	jal	0 <EnTest_SetupAction>
    27a4:	24070fa0 	li	a3,4000
    27a8:	26040188 	addiu	a0,s0,392
    27ac:	0c000000 	jal	0 <EnTest_SetupAction>
    27b0:	afa40034 	sw	a0,52(sp)
    27b4:	c6040080 	lwc1	$f4,128(s0)
    27b8:	c6060028 	lwc1	$f6,40(s0)
    27bc:	02002025 	move	a0,s0
    27c0:	4604303e 	c.le.s	$f6,$f4
    27c4:	00000000 	nop
    27c8:	45020025 	bc1fl	2860 <func_80861DC8+0xe8>
    27cc:	8fbf002c 	lw	ra,44(sp)
    27d0:	0c000000 	jal	0 <EnTest_SetupAction>
    27d4:	2405387b 	li	a1,14459
    27d8:	c60a0060 	lwc1	$f10,96(s0)
    27dc:	860f008a 	lh	t7,138(s0)
    27e0:	c6080080 	lwc1	$f8,128(s0)
    27e4:	4600540d 	trunc.w.s	$f16,$f10
    27e8:	44800000 	mtc1	zero,$f0
    27ec:	2408000c 	li	t0,12
    27f0:	24090004 	li	t1,4
    27f4:	44028000 	mfc1	v0,$f16
    27f8:	a60f00b6 	sh	t7,182(s0)
    27fc:	e6080028 	swc1	$f8,40(s0)
    2800:	00021023 	negu	v0,v0
    2804:	14400003 	bnez	v0,2814 <func_80861DC8+0x9c>
    2808:	ae0207e4 	sw	v0,2020(s0)
    280c:	24190001 	li	t9,1
    2810:	ae1907e4 	sw	t9,2020(s0)
    2814:	e6000060 	swc1	$f0,96(s0)
    2818:	e6000068 	swc1	$f0,104(s0)
    281c:	a20807c8 	sb	t0,1992(s0)
    2820:	ae0907e8 	sw	t1,2024(s0)
    2824:	3c050601 	lui	a1,0x601
    2828:	44060000 	mfc1	a2,$f0
    282c:	44070000 	mfc1	a3,$f0
    2830:	240a0002 	li	t2,2
    2834:	afaa0014 	sw	t2,20(sp)
    2838:	24a5c438 	addiu	a1,a1,-15304
    283c:	e7a00018 	swc1	$f0,24(sp)
    2840:	e7a00010 	swc1	$f0,16(sp)
    2844:	0c000000 	jal	0 <EnTest_SetupAction>
    2848:	8fa40034 	lw	a0,52(sp)
    284c:	3c050000 	lui	a1,0x0
    2850:	24a50000 	addiu	a1,a1,0
    2854:	0c000000 	jal	0 <EnTest_SetupAction>
    2858:	02002025 	move	a0,s0
    285c:	8fbf002c 	lw	ra,44(sp)
    2860:	8fb00028 	lw	s0,40(sp)
    2864:	27bd0038 	addiu	sp,sp,56
    2868:	03e00008 	jr	ra
    286c:	00000000 	nop

00002870 <func_80861EC0>:
    2870:	27bdffd0 	addiu	sp,sp,-48
    2874:	afb00028 	sw	s0,40(sp)
    2878:	00808025 	move	s0,a0
    287c:	afbf002c 	sw	ra,44(sp)
    2880:	3c040600 	lui	a0,0x600
    2884:	0c000000 	jal	0 <EnTest_SetupAction>
    2888:	24841c20 	addiu	a0,a0,7200
    288c:	44822000 	mtc1	v0,$f4
    2890:	3c014000 	lui	at,0x4000
    2894:	44810000 	mtc1	at,$f0
    2898:	468021a0 	cvt.s.w	$f6,$f4
    289c:	3c050600 	lui	a1,0x600
    28a0:	240e0002 	li	t6,2
    28a4:	44060000 	mfc1	a2,$f0
    28a8:	afae0014 	sw	t6,20(sp)
    28ac:	24a51c20 	addiu	a1,a1,7200
    28b0:	e7a60010 	swc1	$f6,16(sp)
    28b4:	26040188 	addiu	a0,s0,392
    28b8:	24070000 	li	a3,0
    28bc:	0c000000 	jal	0 <EnTest_SetupAction>
    28c0:	e7a00018 	swc1	$f0,24(sp)
    28c4:	44804000 	mtc1	zero,$f8
    28c8:	240f0015 	li	t7,21
    28cc:	a20f07c8 	sb	t7,1992(s0)
    28d0:	0c000000 	jal	0 <EnTest_SetupAction>
    28d4:	e6080068 	swc1	$f8,104(s0)
    28d8:	3c014120 	lui	at,0x4120
    28dc:	44815000 	mtc1	at,$f10
    28e0:	3c014130 	lui	at,0x4130
    28e4:	44819000 	mtc1	at,$f18
    28e8:	460a0402 	mul.s	$f16,$f0,$f10
    28ec:	860800b6 	lh	t0,182(s0)
    28f0:	24090005 	li	t1,5
    28f4:	3c050000 	lui	a1,0x0
    28f8:	a20907de 	sb	t1,2014(s0)
    28fc:	24a50000 	addiu	a1,a1,0
    2900:	02002025 	move	a0,s0
    2904:	46128100 	add.s	$f4,$f16,$f18
    2908:	a6080032 	sh	t0,50(s0)
    290c:	4600218d 	trunc.w.s	$f6,$f4
    2910:	44193000 	mfc1	t9,$f6
    2914:	0c000000 	jal	0 <EnTest_SetupAction>
    2918:	ae1907e8 	sw	t9,2024(s0)
    291c:	8fbf002c 	lw	ra,44(sp)
    2920:	8fb00028 	lw	s0,40(sp)
    2924:	27bd0030 	addiu	sp,sp,48
    2928:	03e00008 	jr	ra
    292c:	00000000 	nop

00002930 <func_80861F80>:
    2930:	44800000 	mtc1	zero,$f0
    2934:	27bdffd8 	addiu	sp,sp,-40
    2938:	afb00020 	sw	s0,32(sp)
    293c:	afa5002c 	sw	a1,44(sp)
    2940:	00808025 	move	s0,a0
    2944:	afbf0024 	sw	ra,36(sp)
    2948:	44050000 	mfc1	a1,$f0
    294c:	24840068 	addiu	a0,a0,104
    2950:	3c063f80 	lui	a2,0x3f80
    2954:	3c073f00 	lui	a3,0x3f00
    2958:	0c000000 	jal	0 <EnTest_SetupAction>
    295c:	e7a00010 	swc1	$f0,16(sp)
    2960:	0c000000 	jal	0 <EnTest_SetupAction>
    2964:	26040188 	addiu	a0,s0,392
    2968:	8605008a 	lh	a1,138(s0)
    296c:	860e00b6 	lh	t6,182(s0)
    2970:	00ae1023 	subu	v0,a1,t6
    2974:	00021400 	sll	v0,v0,0x10
    2978:	00021403 	sra	v0,v0,0x10
    297c:	04400003 	bltz	v0,298c <func_80861F80+0x5c>
    2980:	00021823 	negu	v1,v0
    2984:	10000001 	b	298c <func_80861F80+0x5c>
    2988:	00401825 	move	v1,v0
    298c:	28613e81 	slti	at,v1,16001
    2990:	5420000f 	bnezl	at,29d0 <func_80861F80+0xa0>
    2994:	8e0207e8 	lw	v0,2024(s0)
    2998:	860f001c 	lh	t7,28(s0)
    299c:	24010003 	li	at,3
    29a0:	8fb8002c 	lw	t8,44(sp)
    29a4:	11e10009 	beq	t7,at,29cc <func_80861F80+0x9c>
    29a8:	3c190001 	lui	t9,0x1
    29ac:	0338c821 	addu	t9,t9,t8
    29b0:	8f391de4 	lw	t9,7652(t9)
    29b4:	02002025 	move	a0,s0
    29b8:	33280001 	andi	t0,t9,0x1
    29bc:	51000004 	beqzl	t0,29d0 <func_80861F80+0xa0>
    29c0:	8e0207e8 	lw	v0,2024(s0)
    29c4:	0c000000 	jal	0 <EnTest_SetupAction>
    29c8:	a6050032 	sh	a1,50(s0)
    29cc:	8e0207e8 	lw	v0,2024(s0)
    29d0:	14400005 	bnez	v0,29e8 <func_80861F80+0xb8>
    29d4:	2449ffff 	addiu	t1,v0,-1
    29d8:	0c000000 	jal	0 <EnTest_SetupAction>
    29dc:	02002025 	move	a0,s0
    29e0:	10000003 	b	29f0 <func_80861F80+0xc0>
    29e4:	8fbf0024 	lw	ra,36(sp)
    29e8:	ae0907e8 	sw	t1,2024(s0)
    29ec:	8fbf0024 	lw	ra,36(sp)
    29f0:	8fb00020 	lw	s0,32(sp)
    29f4:	27bd0028 	addiu	sp,sp,40
    29f8:	03e00008 	jr	ra
    29fc:	00000000 	nop

00002a00 <func_80862050>:
    2a00:	27bdffe8 	addiu	sp,sp,-24
    2a04:	afbf0014 	sw	ra,20(sp)
    2a08:	00803825 	move	a3,a0
    2a0c:	3c050600 	lui	a1,0x600
    2a10:	24a5316c 	addiu	a1,a1,12652
    2a14:	afa70018 	sw	a3,24(sp)
    2a18:	24840188 	addiu	a0,a0,392
    2a1c:	0c000000 	jal	0 <EnTest_SetupAction>
    2a20:	3c06c080 	lui	a2,0xc080
    2a24:	8fa40018 	lw	a0,24(sp)
    2a28:	240e0016 	li	t6,22
    2a2c:	3c050000 	lui	a1,0x0
    2a30:	24a50000 	addiu	a1,a1,0
    2a34:	0c000000 	jal	0 <EnTest_SetupAction>
    2a38:	a08e07c8 	sb	t6,1992(a0)
    2a3c:	8fbf0014 	lw	ra,20(sp)
    2a40:	27bd0018 	addiu	sp,sp,24
    2a44:	03e00008 	jr	ra
    2a48:	00000000 	nop

00002a4c <func_8086209C>:
    2a4c:	44800000 	mtc1	zero,$f0
    2a50:	27bdffd8 	addiu	sp,sp,-40
    2a54:	afb00020 	sw	s0,32(sp)
    2a58:	afa5002c 	sw	a1,44(sp)
    2a5c:	00808025 	move	s0,a0
    2a60:	afbf0024 	sw	ra,36(sp)
    2a64:	44050000 	mfc1	a1,$f0
    2a68:	24840068 	addiu	a0,a0,104
    2a6c:	3c063f80 	lui	a2,0x3f80
    2a70:	3c073fc0 	lui	a3,0x3fc0
    2a74:	0c000000 	jal	0 <EnTest_SetupAction>
    2a78:	e7a00010 	swc1	$f0,16(sp)
    2a7c:	0c000000 	jal	0 <EnTest_SetupAction>
    2a80:	26040188 	addiu	a0,s0,392
    2a84:	44800000 	mtc1	zero,$f0
    2a88:	c60401b0 	lwc1	$f4,432(s0)
    2a8c:	02002825 	move	a1,s0
    2a90:	46040032 	c.eq.s	$f0,$f4
    2a94:	00000000 	nop
    2a98:	45020016 	bc1fl	2af4 <func_8086209C+0xa8>
    2a9c:	8fbf0024 	lw	ra,36(sp)
    2aa0:	e6000068 	swc1	$f0,104(s0)
    2aa4:	a20007de 	sb	zero,2014(s0)
    2aa8:	0c000000 	jal	0 <EnTest_SetupAction>
    2aac:	8fa4002c 	lw	a0,44(sp)
    2ab0:	1440000f 	bnez	v0,2af0 <func_8086209C+0xa4>
    2ab4:	3c0143fa 	lui	at,0x43fa
    2ab8:	c6060090 	lwc1	$f6,144(s0)
    2abc:	44814000 	mtc1	at,$f8
    2ac0:	8fa5002c 	lw	a1,44(sp)
    2ac4:	02002025 	move	a0,s0
    2ac8:	4608303c 	c.lt.s	$f6,$f8
    2acc:	00000000 	nop
    2ad0:	45000005 	bc1f	2ae8 <func_8086209C+0x9c>
    2ad4:	00000000 	nop
    2ad8:	0c000000 	jal	0 <EnTest_SetupAction>
    2adc:	02002025 	move	a0,s0
    2ae0:	10000004 	b	2af4 <func_8086209C+0xa8>
    2ae4:	8fbf0024 	lw	ra,36(sp)
    2ae8:	0c000000 	jal	0 <EnTest_SetupAction>
    2aec:	8fa5002c 	lw	a1,44(sp)
    2af0:	8fbf0024 	lw	ra,36(sp)
    2af4:	8fb00020 	lw	s0,32(sp)
    2af8:	27bd0028 	addiu	sp,sp,40
    2afc:	03e00008 	jr	ra
    2b00:	00000000 	nop

00002b04 <func_80862154>:
    2b04:	27bdffd8 	addiu	sp,sp,-40
    2b08:	afb00020 	sw	s0,32(sp)
    2b0c:	00808025 	move	s0,a0
    2b10:	afbf0024 	sw	ra,36(sp)
    2b14:	3c050601 	lui	a1,0x601
    2b18:	24a58604 	addiu	a1,a1,-31228
    2b1c:	0c000000 	jal	0 <EnTest_SetupAction>
    2b20:	24840188 	addiu	a0,a0,392
    2b24:	02002025 	move	a0,s0
    2b28:	0c000000 	jal	0 <EnTest_SetupAction>
    2b2c:	2405383a 	li	a1,14394
    2b30:	3c01c000 	lui	at,0xc000
    2b34:	44812000 	mtc1	at,$f4
    2b38:	240e0008 	li	t6,8
    2b3c:	a20e07c8 	sb	t6,1992(s0)
    2b40:	240f0008 	li	t7,8
    2b44:	e6040068 	swc1	$f4,104(s0)
    2b48:	afaf0010 	sw	t7,16(sp)
    2b4c:	02002025 	move	a0,s0
    2b50:	24054000 	li	a1,16384
    2b54:	240600ff 	li	a2,255
    2b58:	0c000000 	jal	0 <EnTest_SetupAction>
    2b5c:	00003825 	move	a3,zero
    2b60:	3c050000 	lui	a1,0x0
    2b64:	24a50000 	addiu	a1,a1,0
    2b68:	0c000000 	jal	0 <EnTest_SetupAction>
    2b6c:	02002025 	move	a0,s0
    2b70:	8fbf0024 	lw	ra,36(sp)
    2b74:	8fb00020 	lw	s0,32(sp)
    2b78:	27bd0028 	addiu	sp,sp,40
    2b7c:	03e00008 	jr	ra
    2b80:	00000000 	nop

00002b84 <func_808621D4>:
    2b84:	27bdffd0 	addiu	sp,sp,-48
    2b88:	44800000 	mtc1	zero,$f0
    2b8c:	afbf0024 	sw	ra,36(sp)
    2b90:	afb00020 	sw	s0,32(sp)
    2b94:	afa50034 	sw	a1,52(sp)
    2b98:	8caf1c44 	lw	t7,7236(a1)
    2b9c:	00808025 	move	s0,a0
    2ba0:	3c073dcc 	lui	a3,0x3dcc
    2ba4:	44050000 	mfc1	a1,$f0
    2ba8:	34e7cccd 	ori	a3,a3,0xcccd
    2bac:	24840068 	addiu	a0,a0,104
    2bb0:	3c063f80 	lui	a2,0x3f80
    2bb4:	e7a00010 	swc1	$f0,16(sp)
    2bb8:	0c000000 	jal	0 <EnTest_SetupAction>
    2bbc:	afaf002c 	sw	t7,44(sp)
    2bc0:	0c000000 	jal	0 <EnTest_SetupAction>
    2bc4:	26040188 	addiu	a0,s0,392
    2bc8:	50400024 	beqzl	v0,2c5c <func_808621D4+0xd8>
    2bcc:	8faa002c 	lw	t2,44(sp)
    2bd0:	96180088 	lhu	t8,136(s0)
    2bd4:	44802000 	mtc1	zero,$f4
    2bd8:	02002825 	move	a1,s0
    2bdc:	33190008 	andi	t9,t8,0x8
    2be0:	13200017 	beqz	t9,2c40 <func_808621D4+0xbc>
    2be4:	e6040068 	swc1	$f4,104(s0)
    2be8:	8608007e 	lh	t0,126(s0)
    2bec:	860900b6 	lh	t1,182(s0)
    2bf0:	01091023 	subu	v0,t0,t1
    2bf4:	00021400 	sll	v0,v0,0x10
    2bf8:	00021403 	sra	v0,v0,0x10
    2bfc:	04400003 	bltz	v0,2c0c <func_808621D4+0x88>
    2c00:	00021823 	negu	v1,v0
    2c04:	10000001 	b	2c0c <func_808621D4+0x88>
    2c08:	00401825 	move	v1,v0
    2c0c:	286138a4 	slti	at,v1,14500
    2c10:	1020000b 	beqz	at,2c40 <func_808621D4+0xbc>
    2c14:	3c0142a0 	lui	at,0x42a0
    2c18:	44814000 	mtc1	at,$f8
    2c1c:	c6060090 	lwc1	$f6,144(s0)
    2c20:	4608303c 	c.lt.s	$f6,$f8
    2c24:	00000000 	nop
    2c28:	45000005 	bc1f	2c40 <func_808621D4+0xbc>
    2c2c:	00000000 	nop
    2c30:	0c000000 	jal	0 <EnTest_SetupAction>
    2c34:	02002025 	move	a0,s0
    2c38:	10000008 	b	2c5c <func_808621D4+0xd8>
    2c3c:	8faa002c 	lw	t2,44(sp)
    2c40:	0c000000 	jal	0 <EnTest_SetupAction>
    2c44:	8fa40034 	lw	a0,52(sp)
    2c48:	1440003a 	bnez	v0,2d34 <func_808621D4+0x1b0>
    2c4c:	02002025 	move	a0,s0
    2c50:	0c000000 	jal	0 <EnTest_SetupAction>
    2c54:	8fa50034 	lw	a1,52(sp)
    2c58:	8faa002c 	lw	t2,44(sp)
    2c5c:	814b0843 	lb	t3,2115(t2)
    2c60:	51600035 	beqzl	t3,2d38 <func_808621D4+0x1b4>
    2c64:	8fbf0024 	lw	ra,36(sp)
    2c68:	960c0088 	lhu	t4,136(s0)
    2c6c:	318d0008 	andi	t5,t4,0x8
    2c70:	11a00017 	beqz	t5,2cd0 <func_808621D4+0x14c>
    2c74:	00000000 	nop
    2c78:	860e007e 	lh	t6,126(s0)
    2c7c:	860f00b6 	lh	t7,182(s0)
    2c80:	01cf1023 	subu	v0,t6,t7
    2c84:	00021400 	sll	v0,v0,0x10
    2c88:	00021403 	sra	v0,v0,0x10
    2c8c:	04400003 	bltz	v0,2c9c <func_808621D4+0x118>
    2c90:	00021823 	negu	v1,v0
    2c94:	10000001 	b	2c9c <func_808621D4+0x118>
    2c98:	00401825 	move	v1,v0
    2c9c:	286138a4 	slti	at,v1,14500
    2ca0:	1020000b 	beqz	at,2cd0 <func_808621D4+0x14c>
    2ca4:	3c0142a0 	lui	at,0x42a0
    2ca8:	44818000 	mtc1	at,$f16
    2cac:	c60a0090 	lwc1	$f10,144(s0)
    2cb0:	4610503c 	c.lt.s	$f10,$f16
    2cb4:	00000000 	nop
    2cb8:	45000005 	bc1f	2cd0 <func_808621D4+0x14c>
    2cbc:	00000000 	nop
    2cc0:	0c000000 	jal	0 <EnTest_SetupAction>
    2cc4:	02002025 	move	a0,s0
    2cc8:	10000019 	b	2d30 <func_808621D4+0x1ac>
    2ccc:	24090008 	li	t1,8
    2cd0:	0c000000 	jal	0 <EnTest_SetupAction>
    2cd4:	00000000 	nop
    2cd8:	3c010000 	lui	at,0x0
    2cdc:	c4320000 	lwc1	$f18,0(at)
    2ce0:	4600903c 	c.lt.s	$f18,$f0
    2ce4:	00000000 	nop
    2ce8:	4500000e 	bc1f	2d24 <func_808621D4+0x1a0>
    2cec:	00000000 	nop
    2cf0:	8618001c 	lh	t8,28(s0)
    2cf4:	24010003 	li	at,3
    2cf8:	8fb9002c 	lw	t9,44(sp)
    2cfc:	13010009 	beq	t8,at,2d24 <func_808621D4+0x1a0>
    2d00:	00000000 	nop
    2d04:	83280842 	lb	t0,2114(t9)
    2d08:	24010011 	li	at,17
    2d0c:	11010005 	beq	t0,at,2d24 <func_808621D4+0x1a0>
    2d10:	00000000 	nop
    2d14:	0c000000 	jal	0 <EnTest_SetupAction>
    2d18:	02002025 	move	a0,s0
    2d1c:	10000004 	b	2d30 <func_808621D4+0x1ac>
    2d20:	24090008 	li	t1,8
    2d24:	0c000000 	jal	0 <EnTest_SetupAction>
    2d28:	02002025 	move	a0,s0
    2d2c:	24090008 	li	t1,8
    2d30:	a20907c8 	sb	t1,1992(s0)
    2d34:	8fbf0024 	lw	ra,36(sp)
    2d38:	8fb00020 	lw	s0,32(sp)
    2d3c:	27bd0030 	addiu	sp,sp,48
    2d40:	03e00008 	jr	ra
    2d44:	00000000 	nop

00002d48 <func_80862398>:
    2d48:	27bdffd8 	addiu	sp,sp,-40
    2d4c:	afb00020 	sw	s0,32(sp)
    2d50:	00808025 	move	s0,a0
    2d54:	afbf0024 	sw	ra,36(sp)
    2d58:	3c050600 	lui	a1,0x600
    2d5c:	24a50444 	addiu	a1,a1,1092
    2d60:	0c000000 	jal	0 <EnTest_SetupAction>
    2d64:	24840188 	addiu	a0,a0,392
    2d68:	02002025 	move	a0,s0
    2d6c:	0c000000 	jal	0 <EnTest_SetupAction>
    2d70:	2405383a 	li	a1,14394
    2d74:	3c01c000 	lui	at,0xc000
    2d78:	44812000 	mtc1	at,$f4
    2d7c:	240e0009 	li	t6,9
    2d80:	a20e07c8 	sb	t6,1992(s0)
    2d84:	240f0008 	li	t7,8
    2d88:	e6040068 	swc1	$f4,104(s0)
    2d8c:	afaf0010 	sw	t7,16(sp)
    2d90:	02002025 	move	a0,s0
    2d94:	24054000 	li	a1,16384
    2d98:	240600ff 	li	a2,255
    2d9c:	0c000000 	jal	0 <EnTest_SetupAction>
    2da0:	00003825 	move	a3,zero
    2da4:	3c050000 	lui	a1,0x0
    2da8:	24a50000 	addiu	a1,a1,0
    2dac:	0c000000 	jal	0 <EnTest_SetupAction>
    2db0:	02002025 	move	a0,s0
    2db4:	8fbf0024 	lw	ra,36(sp)
    2db8:	8fb00020 	lw	s0,32(sp)
    2dbc:	27bd0028 	addiu	sp,sp,40
    2dc0:	03e00008 	jr	ra
    2dc4:	00000000 	nop

00002dc8 <func_80862418>:
    2dc8:	27bdffd0 	addiu	sp,sp,-48
    2dcc:	44800000 	mtc1	zero,$f0
    2dd0:	afbf0024 	sw	ra,36(sp)
    2dd4:	afb00020 	sw	s0,32(sp)
    2dd8:	afa50034 	sw	a1,52(sp)
    2ddc:	8caf1c44 	lw	t7,7236(a1)
    2de0:	00808025 	move	s0,a0
    2de4:	3c073dcc 	lui	a3,0x3dcc
    2de8:	44050000 	mfc1	a1,$f0
    2dec:	34e7cccd 	ori	a3,a3,0xcccd
    2df0:	24840068 	addiu	a0,a0,104
    2df4:	3c063f80 	lui	a2,0x3f80
    2df8:	e7a00010 	swc1	$f0,16(sp)
    2dfc:	0c000000 	jal	0 <EnTest_SetupAction>
    2e00:	afaf002c 	sw	t7,44(sp)
    2e04:	0c000000 	jal	0 <EnTest_SetupAction>
    2e08:	26040188 	addiu	a0,s0,392
    2e0c:	5040000b 	beqzl	v0,2e3c <func_80862418+0x74>
    2e10:	8fb8002c 	lw	t8,44(sp)
    2e14:	44802000 	mtc1	zero,$f4
    2e18:	02002825 	move	a1,s0
    2e1c:	e6040068 	swc1	$f4,104(s0)
    2e20:	0c000000 	jal	0 <EnTest_SetupAction>
    2e24:	8fa40034 	lw	a0,52(sp)
    2e28:	1440003a 	bnez	v0,2f14 <func_80862418+0x14c>
    2e2c:	02002025 	move	a0,s0
    2e30:	0c000000 	jal	0 <EnTest_SetupAction>
    2e34:	8fa50034 	lw	a1,52(sp)
    2e38:	8fb8002c 	lw	t8,44(sp)
    2e3c:	83190843 	lb	t9,2115(t8)
    2e40:	53200035 	beqzl	t9,2f18 <func_80862418+0x150>
    2e44:	8fbf0024 	lw	ra,36(sp)
    2e48:	96080088 	lhu	t0,136(s0)
    2e4c:	31090008 	andi	t1,t0,0x8
    2e50:	11200017 	beqz	t1,2eb0 <func_80862418+0xe8>
    2e54:	00000000 	nop
    2e58:	860a007e 	lh	t2,126(s0)
    2e5c:	860b00b6 	lh	t3,182(s0)
    2e60:	014b1023 	subu	v0,t2,t3
    2e64:	00021400 	sll	v0,v0,0x10
    2e68:	00021403 	sra	v0,v0,0x10
    2e6c:	04400003 	bltz	v0,2e7c <func_80862418+0xb4>
    2e70:	00021823 	negu	v1,v0
    2e74:	10000001 	b	2e7c <func_80862418+0xb4>
    2e78:	00401825 	move	v1,v0
    2e7c:	286138a4 	slti	at,v1,14500
    2e80:	1020000b 	beqz	at,2eb0 <func_80862418+0xe8>
    2e84:	3c0142a0 	lui	at,0x42a0
    2e88:	44814000 	mtc1	at,$f8
    2e8c:	c6060090 	lwc1	$f6,144(s0)
    2e90:	4608303c 	c.lt.s	$f6,$f8
    2e94:	00000000 	nop
    2e98:	45000005 	bc1f	2eb0 <func_80862418+0xe8>
    2e9c:	00000000 	nop
    2ea0:	0c000000 	jal	0 <EnTest_SetupAction>
    2ea4:	02002025 	move	a0,s0
    2ea8:	10000019 	b	2f10 <func_80862418+0x148>
    2eac:	240f0008 	li	t7,8
    2eb0:	0c000000 	jal	0 <EnTest_SetupAction>
    2eb4:	00000000 	nop
    2eb8:	3c010000 	lui	at,0x0
    2ebc:	c42a0000 	lwc1	$f10,0(at)
    2ec0:	4600503c 	c.lt.s	$f10,$f0
    2ec4:	00000000 	nop
    2ec8:	4500000e 	bc1f	2f04 <func_80862418+0x13c>
    2ecc:	00000000 	nop
    2ed0:	860c001c 	lh	t4,28(s0)
    2ed4:	24010003 	li	at,3
    2ed8:	8fad002c 	lw	t5,44(sp)
    2edc:	11810009 	beq	t4,at,2f04 <func_80862418+0x13c>
    2ee0:	00000000 	nop
    2ee4:	81ae0842 	lb	t6,2114(t5)
    2ee8:	24010011 	li	at,17
    2eec:	11c10005 	beq	t6,at,2f04 <func_80862418+0x13c>
    2ef0:	00000000 	nop
    2ef4:	0c000000 	jal	0 <EnTest_SetupAction>
    2ef8:	02002025 	move	a0,s0
    2efc:	10000004 	b	2f10 <func_80862418+0x148>
    2f00:	240f0008 	li	t7,8
    2f04:	0c000000 	jal	0 <EnTest_SetupAction>
    2f08:	02002025 	move	a0,s0
    2f0c:	240f0008 	li	t7,8
    2f10:	a20f07c8 	sb	t7,1992(s0)
    2f14:	8fbf0024 	lw	ra,36(sp)
    2f18:	8fb00020 	lw	s0,32(sp)
    2f1c:	27bd0030 	addiu	sp,sp,48
    2f20:	03e00008 	jr	ra
    2f24:	00000000 	nop

00002f28 <func_80862578>:
    2f28:	27bdffd8 	addiu	sp,sp,-40
    2f2c:	afb00020 	sw	s0,32(sp)
    2f30:	afbf0024 	sw	ra,36(sp)
    2f34:	3c01c080 	lui	at,0xc080
    2f38:	44813000 	mtc1	at,$f6
    2f3c:	908f07e2 	lbu	t7,2018(a0)
    2f40:	44802000 	mtc1	zero,$f4
    2f44:	240e000b 	li	t6,11
    2f48:	2401000e 	li	at,14
    2f4c:	00808025 	move	s0,a0
    2f50:	a08e07c8 	sb	t6,1992(a0)
    2f54:	a08007de 	sb	zero,2014(a0)
    2f58:	a0800808 	sb	zero,2056(a0)
    2f5c:	e4860068 	swc1	$f6,104(a0)
    2f60:	15e10009 	bne	t7,at,2f88 <func_80862578+0x60>
    2f64:	e48401a4 	swc1	$f4,420(a0)
    2f68:	24180050 	li	t8,80
    2f6c:	afb80010 	sw	t8,16(sp)
    2f70:	24058000 	li	a1,-32768
    2f74:	24060078 	li	a2,120
    2f78:	0c000000 	jal	0 <EnTest_SetupAction>
    2f7c:	00003825 	move	a3,zero
    2f80:	10000014 	b	2fd4 <func_80862578+0xac>
    2f84:	02002025 	move	a0,s0
    2f88:	24190050 	li	t9,80
    2f8c:	afb90010 	sw	t9,16(sp)
    2f90:	02002025 	move	a0,s0
    2f94:	00002825 	move	a1,zero
    2f98:	24060078 	li	a2,120
    2f9c:	0c000000 	jal	0 <EnTest_SetupAction>
    2fa0:	00003825 	move	a3,zero
    2fa4:	920807e2 	lbu	t0,2018(s0)
    2fa8:	2401000f 	li	at,15
    2fac:	26040188 	addiu	a0,s0,392
    2fb0:	15010004 	bne	t0,at,2fc4 <func_80862578+0x9c>
    2fb4:	3c050601 	lui	a1,0x601
    2fb8:	24090024 	li	t1,36
    2fbc:	10000004 	b	2fd0 <func_80862578+0xa8>
    2fc0:	a60907e0 	sh	t1,2016(s0)
    2fc4:	24a58604 	addiu	a1,a1,-31228
    2fc8:	0c000000 	jal	0 <EnTest_SetupAction>
    2fcc:	24060000 	li	a2,0
    2fd0:	02002025 	move	a0,s0
    2fd4:	0c000000 	jal	0 <EnTest_SetupAction>
    2fd8:	2405389e 	li	a1,14494
    2fdc:	3c050000 	lui	a1,0x0
    2fe0:	24a50000 	addiu	a1,a1,0
    2fe4:	0c000000 	jal	0 <EnTest_SetupAction>
    2fe8:	02002025 	move	a0,s0
    2fec:	8fbf0024 	lw	ra,36(sp)
    2ff0:	8fb00020 	lw	s0,32(sp)
    2ff4:	27bd0028 	addiu	sp,sp,40
    2ff8:	03e00008 	jr	ra
    2ffc:	00000000 	nop

00003000 <func_80862650>:
    3000:	27bdffd0 	addiu	sp,sp,-48
    3004:	3c013f80 	lui	at,0x3f80
    3008:	44811000 	mtc1	at,$f2
    300c:	44800000 	mtc1	zero,$f0
    3010:	afbf0024 	sw	ra,36(sp)
    3014:	afb00020 	sw	s0,32(sp)
    3018:	afa50034 	sw	a1,52(sp)
    301c:	8caf1c44 	lw	t7,7236(a1)
    3020:	00808025 	move	s0,a0
    3024:	44061000 	mfc1	a2,$f2
    3028:	44071000 	mfc1	a3,$f2
    302c:	44050000 	mfc1	a1,$f0
    3030:	24840068 	addiu	a0,a0,104
    3034:	e7a00010 	swc1	$f0,16(sp)
    3038:	0c000000 	jal	0 <EnTest_SetupAction>
    303c:	afaf002c 	sw	t7,44(sp)
    3040:	92180114 	lbu	t8,276(s0)
    3044:	57000047 	bnezl	t8,3164 <func_80862650+0x164>
    3048:	8fbf0024 	lw	ra,36(sp)
    304c:	921900af 	lbu	t9,175(s0)
    3050:	02002025 	move	a0,s0
    3054:	8fa8002c 	lw	t0,44(sp)
    3058:	57200006 	bnezl	t9,3074 <func_80862650+0x74>
    305c:	81090843 	lb	t1,2115(t0)
    3060:	0c000000 	jal	0 <EnTest_SetupAction>
    3064:	8fa50034 	lw	a1,52(sp)
    3068:	1000003e 	b	3164 <func_80862650+0x164>
    306c:	8fbf0024 	lw	ra,36(sp)
    3070:	81090843 	lb	t1,2115(t0)
    3074:	51200032 	beqzl	t1,3140 <func_80862650+0x140>
    3078:	44805000 	mtc1	zero,$f10
    307c:	960a0088 	lhu	t2,136(s0)
    3080:	314b0008 	andi	t3,t2,0x8
    3084:	11600017 	beqz	t3,30e4 <func_80862650+0xe4>
    3088:	00000000 	nop
    308c:	860c007e 	lh	t4,126(s0)
    3090:	860d00b6 	lh	t5,182(s0)
    3094:	018d1023 	subu	v0,t4,t5
    3098:	00021400 	sll	v0,v0,0x10
    309c:	00021403 	sra	v0,v0,0x10
    30a0:	04400003 	bltz	v0,30b0 <func_80862650+0xb0>
    30a4:	00021823 	negu	v1,v0
    30a8:	10000001 	b	30b0 <func_80862650+0xb0>
    30ac:	00401825 	move	v1,v0
    30b0:	286138a4 	slti	at,v1,14500
    30b4:	1020000b 	beqz	at,30e4 <func_80862650+0xe4>
    30b8:	3c0142a0 	lui	at,0x42a0
    30bc:	44813000 	mtc1	at,$f6
    30c0:	c6040090 	lwc1	$f4,144(s0)
    30c4:	4606203c 	c.lt.s	$f4,$f6
    30c8:	00000000 	nop
    30cc:	45000005 	bc1f	30e4 <func_80862650+0xe4>
    30d0:	00000000 	nop
    30d4:	0c000000 	jal	0 <EnTest_SetupAction>
    30d8:	02002025 	move	a0,s0
    30dc:	10000015 	b	3134 <func_80862650+0x134>
    30e0:	24180008 	li	t8,8
    30e4:	0c000000 	jal	0 <EnTest_SetupAction>
    30e8:	00000000 	nop
    30ec:	3c010000 	lui	at,0x0
    30f0:	c4280000 	lwc1	$f8,0(at)
    30f4:	8fae002c 	lw	t6,44(sp)
    30f8:	4600403c 	c.lt.s	$f8,$f0
    30fc:	00000000 	nop
    3100:	45000009 	bc1f	3128 <func_80862650+0x128>
    3104:	00000000 	nop
    3108:	81cf0842 	lb	t7,2114(t6)
    310c:	24010011 	li	at,17
    3110:	11e10005 	beq	t7,at,3128 <func_80862650+0x128>
    3114:	00000000 	nop
    3118:	0c000000 	jal	0 <EnTest_SetupAction>
    311c:	02002025 	move	a0,s0
    3120:	10000004 	b	3134 <func_80862650+0x134>
    3124:	24180008 	li	t8,8
    3128:	0c000000 	jal	0 <EnTest_SetupAction>
    312c:	02002025 	move	a0,s0
    3130:	24180008 	li	t8,8
    3134:	1000000a 	b	3160 <func_80862650+0x160>
    3138:	a21807c8 	sb	t8,1992(s0)
    313c:	44805000 	mtc1	zero,$f10
    3140:	02002825 	move	a1,s0
    3144:	e60a0068 	swc1	$f10,104(s0)
    3148:	0c000000 	jal	0 <EnTest_SetupAction>
    314c:	8fa40034 	lw	a0,52(sp)
    3150:	14400003 	bnez	v0,3160 <func_80862650+0x160>
    3154:	02002025 	move	a0,s0
    3158:	0c000000 	jal	0 <EnTest_SetupAction>
    315c:	8fa50034 	lw	a1,52(sp)
    3160:	8fbf0024 	lw	ra,36(sp)
    3164:	8fb00020 	lw	s0,32(sp)
    3168:	27bd0030 	addiu	sp,sp,48
    316c:	03e00008 	jr	ra
    3170:	00000000 	nop

00003174 <func_808627C4>:
    3174:	27bdffd8 	addiu	sp,sp,-40
    3178:	afb00020 	sw	s0,32(sp)
    317c:	00808025 	move	s0,a0
    3180:	afbf0024 	sw	ra,36(sp)
    3184:	afa5002c 	sw	a1,44(sp)
    3188:	00a02025 	move	a0,a1
    318c:	0c000000 	jal	0 <EnTest_SetupAction>
    3190:	02002825 	move	a1,s0
    3194:	10400005 	beqz	v0,31ac <func_808627C4+0x38>
    3198:	26040188 	addiu	a0,s0,392
    319c:	0c000000 	jal	0 <EnTest_SetupAction>
    31a0:	02002025 	move	a0,s0
    31a4:	10000030 	b	3268 <func_808627C4+0xf4>
    31a8:	8fbf0024 	lw	ra,36(sp)
    31ac:	3c050601 	lui	a1,0x601
    31b0:	24a5e2b0 	addiu	a1,a1,-7504
    31b4:	0c000000 	jal	0 <EnTest_SetupAction>
    31b8:	3c06c000 	lui	a2,0xc000
    31bc:	8605008a 	lh	a1,138(s0)
    31c0:	240e0001 	li	t6,1
    31c4:	afae0010 	sw	t6,16(sp)
    31c8:	260400b6 	addiu	a0,s0,182
    31cc:	24060001 	li	a2,1
    31d0:	0c000000 	jal	0 <EnTest_SetupAction>
    31d4:	24070fa0 	li	a3,4000
    31d8:	8faf002c 	lw	t7,44(sp)
    31dc:	3c180001 	lui	t8,0x1
    31e0:	3c014080 	lui	at,0x4080
    31e4:	030fc021 	addu	t8,t8,t7
    31e8:	8f181de4 	lw	t8,7652(t8)
    31ec:	33190001 	andi	t9,t8,0x1
    31f0:	53200006 	beqzl	t9,320c <func_808627C4+0x98>
    31f4:	44813000 	mtc1	at,$f6
    31f8:	3c01c080 	lui	at,0xc080
    31fc:	44812000 	mtc1	at,$f4
    3200:	10000004 	b	3214 <func_808627C4+0xa0>
    3204:	e6040068 	swc1	$f4,104(s0)
    3208:	44813000 	mtc1	at,$f6
    320c:	00000000 	nop
    3210:	e6060068 	swc1	$f6,104(s0)
    3214:	860800b6 	lh	t0,182(s0)
    3218:	25093fff 	addiu	t1,t0,16383
    321c:	0c000000 	jal	0 <EnTest_SetupAction>
    3220:	a6090032 	sh	t1,50(s0)
    3224:	3c0141a0 	lui	at,0x41a0
    3228:	44811000 	mtc1	at,$f2
    322c:	240c0018 	li	t4,24
    3230:	3c050000 	lui	a1,0x0
    3234:	46020202 	mul.s	$f8,$f0,$f2
    3238:	a20c07c8 	sb	t4,1992(s0)
    323c:	24a50000 	addiu	a1,a1,0
    3240:	02002025 	move	a0,s0
    3244:	46024280 	add.s	$f10,$f8,$f2
    3248:	4600540d 	trunc.w.s	$f16,$f10
    324c:	440b8000 	mfc1	t3,$f16
    3250:	0c000000 	jal	0 <EnTest_SetupAction>
    3254:	ae0b07e8 	sw	t3,2024(s0)
    3258:	44809000 	mtc1	zero,$f18
    325c:	00000000 	nop
    3260:	e61207ec 	swc1	$f18,2028(s0)
    3264:	8fbf0024 	lw	ra,36(sp)
    3268:	8fb00020 	lw	s0,32(sp)
    326c:	27bd0028 	addiu	sp,sp,40
    3270:	03e00008 	jr	ra
    3274:	00000000 	nop

00003278 <func_808628C8>:
    3278:	27bdffb0 	addiu	sp,sp,-80
    327c:	afbf0024 	sw	ra,36(sp)
    3280:	afb00020 	sw	s0,32(sp)
    3284:	afa50054 	sw	a1,84(sp)
    3288:	8caf1c44 	lw	t7,7236(a1)
    328c:	44802000 	mtc1	zero,$f4
    3290:	00808025 	move	s0,a0
    3294:	afaf0048 	sw	t7,72(sp)
    3298:	e7a40034 	swc1	$f4,52(sp)
    329c:	8605008a 	lh	a1,138(s0)
    32a0:	24180001 	li	t8,1
    32a4:	afb80010 	sw	t8,16(sp)
    32a8:	248400b6 	addiu	a0,a0,182
    32ac:	24060001 	li	a2,1
    32b0:	0c000000 	jal	0 <EnTest_SetupAction>
    32b4:	24070fa0 	li	a3,4000
    32b8:	920307de 	lbu	v1,2014(s0)
    32bc:	44803000 	mtc1	zero,$f6
    32c0:	14600002 	bnez	v1,32cc <func_808628C8+0x54>
    32c4:	24790001 	addiu	t9,v1,1
    32c8:	a21907de 	sb	t9,2014(s0)
    32cc:	c6000068 	lwc1	$f0,104(s0)
    32d0:	4600303e 	c.le.s	$f6,$f0
    32d4:	00000000 	nop
    32d8:	4500000e 	bc1f	3314 <func_808628C8+0x9c>
    32dc:	3c0140c0 	lui	at,0x40c0
    32e0:	44811000 	mtc1	at,$f2
    32e4:	3c013e00 	lui	at,0x3e00
    32e8:	4602003c 	c.lt.s	$f0,$f2
    32ec:	00000000 	nop
    32f0:	45000006 	bc1f	330c <func_808628C8+0x94>
    32f4:	00000000 	nop
    32f8:	44814000 	mtc1	at,$f8
    32fc:	00000000 	nop
    3300:	46080280 	add.s	$f10,$f0,$f8
    3304:	10000010 	b	3348 <func_808628C8+0xd0>
    3308:	e60a0068 	swc1	$f10,104(s0)
    330c:	1000000e 	b	3348 <func_808628C8+0xd0>
    3310:	e6020068 	swc1	$f2,104(s0)
    3314:	3c01c0c0 	lui	at,0xc0c0
    3318:	44811000 	mtc1	at,$f2
    331c:	3c013e00 	lui	at,0x3e00
    3320:	4600103c 	c.lt.s	$f2,$f0
    3324:	00000000 	nop
    3328:	45020007 	bc1fl	3348 <func_808628C8+0xd0>
    332c:	e6020068 	swc1	$f2,104(s0)
    3330:	44818000 	mtc1	at,$f16
    3334:	00000000 	nop
    3338:	46100481 	sub.s	$f18,$f0,$f16
    333c:	10000002 	b	3348 <func_808628C8+0xd0>
    3340:	e6120068 	swc1	$f18,104(s0)
    3344:	e6020068 	swc1	$f2,104(s0)
    3348:	96020088 	lhu	v0,136(s0)
    334c:	30420008 	andi	v0,v0,0x8
    3350:	14400011 	bnez	v0,3398 <func_808628C8+0x120>
    3354:	00000000 	nop
    3358:	8608001c 	lh	t0,28(s0)
    335c:	24010003 	li	at,3
    3360:	02002025 	move	a0,s0
    3364:	55010045 	bnel	t0,at,347c <func_808628C8+0x204>
    3368:	860a00b6 	lh	t2,182(s0)
    336c:	860700b6 	lh	a3,182(s0)
    3370:	8fa50054 	lw	a1,84(sp)
    3374:	8e060068 	lw	a2,104(s0)
    3378:	24e73fff 	addiu	a3,a3,16383
    337c:	00073c00 	sll	a3,a3,0x10
    3380:	0c000000 	jal	0 <EnTest_SetupAction>
    3384:	00073c03 	sra	a3,a3,0x10
    3388:	5440003c 	bnezl	v0,347c <func_808628C8+0x204>
    338c:	860a00b6 	lh	t2,182(s0)
    3390:	96020088 	lhu	v0,136(s0)
    3394:	30420008 	andi	v0,v0,0x8
    3398:	10400016 	beqz	v0,33f4 <func_808628C8+0x17c>
    339c:	3c010000 	lui	at,0x0
    33a0:	c6040068 	lwc1	$f4,104(s0)
    33a4:	44803000 	mtc1	zero,$f6
    33a8:	00000000 	nop
    33ac:	4604303e 	c.le.s	$f6,$f4
    33b0:	00000000 	nop
    33b4:	45020007 	bc1fl	33d4 <func_808628C8+0x15c>
    33b8:	860200b6 	lh	v0,182(s0)
    33bc:	860200b6 	lh	v0,182(s0)
    33c0:	24423fff 	addiu	v0,v0,16383
    33c4:	00021400 	sll	v0,v0,0x10
    33c8:	10000005 	b	33e0 <func_808628C8+0x168>
    33cc:	00021403 	sra	v0,v0,0x10
    33d0:	860200b6 	lh	v0,182(s0)
    33d4:	2442c001 	addiu	v0,v0,-16383
    33d8:	00021400 	sll	v0,v0,0x10
    33dc:	00021403 	sra	v0,v0,0x10
    33e0:	8609007e 	lh	t1,126(s0)
    33e4:	01221023 	subu	v0,t1,v0
    33e8:	00021400 	sll	v0,v0,0x10
    33ec:	10000006 	b	3408 <func_808628C8+0x190>
    33f0:	00021403 	sra	v0,v0,0x10
    33f4:	c6080068 	lwc1	$f8,104(s0)
    33f8:	c42a0000 	lwc1	$f10,0(at)
    33fc:	00001025 	move	v0,zero
    3400:	460a4402 	mul.s	$f16,$f8,$f10
    3404:	e6100068 	swc1	$f16,104(s0)
    3408:	04400003 	bltz	v0,3418 <func_808628C8+0x1a0>
    340c:	00021823 	negu	v1,v0
    3410:	10000001 	b	3418 <func_808628C8+0x1a0>
    3414:	00401825 	move	v1,v0
    3418:	28614001 	slti	at,v1,16385
    341c:	14200016 	bnez	at,3478 <func_808628C8+0x200>
    3420:	3c010000 	lui	at,0x0
    3424:	c4240000 	lwc1	$f4,0(at)
    3428:	c6120068 	lwc1	$f18,104(s0)
    342c:	44804000 	mtc1	zero,$f8
    3430:	3c013f00 	lui	at,0x3f00
    3434:	46049182 	mul.s	$f6,$f18,$f4
    3438:	e6060068 	swc1	$f6,104(s0)
    343c:	c6000068 	lwc1	$f0,104(s0)
    3440:	4608003c 	c.lt.s	$f0,$f8
    3444:	00000000 	nop
    3448:	45020008 	bc1fl	346c <func_808628C8+0x1f4>
    344c:	44819000 	mtc1	at,$f18
    3450:	3c013f00 	lui	at,0x3f00
    3454:	44815000 	mtc1	at,$f10
    3458:	00000000 	nop
    345c:	460a0401 	sub.s	$f16,$f0,$f10
    3460:	10000005 	b	3478 <func_808628C8+0x200>
    3464:	e6100068 	swc1	$f16,104(s0)
    3468:	44819000 	mtc1	at,$f18
    346c:	00000000 	nop
    3470:	46120100 	add.s	$f4,$f0,$f18
    3474:	e6040068 	swc1	$f4,104(s0)
    3478:	860a00b6 	lh	t2,182(s0)
    347c:	02002825 	move	a1,s0
    3480:	254b3fff 	addiu	t3,t2,16383
    3484:	a60b0032 	sh	t3,50(s0)
    3488:	0c000000 	jal	0 <EnTest_SetupAction>
    348c:	8fa40054 	lw	a0,84(sp)
    3490:	10400004 	beqz	v0,34a4 <func_808628C8+0x22c>
    3494:	3c014348 	lui	at,0x4348
    3498:	44811000 	mtc1	at,$f2
    349c:	00000000 	nop
    34a0:	e7a20034 	swc1	$f2,52(sp)
    34a4:	3c0142a0 	lui	at,0x42a0
    34a8:	c7a20034 	lwc1	$f2,52(sp)
    34ac:	44813000 	mtc1	at,$f6
    34b0:	c6000090 	lwc1	$f0,144(s0)
    34b4:	260407ec 	addiu	a0,s0,2028
    34b8:	46023200 	add.s	$f8,$f6,$f2
    34bc:	3c05c020 	lui	a1,0xc020
    34c0:	3c063f80 	lui	a2,0x3f80
    34c4:	3c073f4c 	lui	a3,0x3f4c
    34c8:	4608003e 	c.le.s	$f0,$f8
    34cc:	3c0142dc 	lui	at,0x42dc
    34d0:	45020008 	bc1fl	34f4 <func_808628C8+0x27c>
    34d4:	44818000 	mtc1	at,$f16
    34d8:	44805000 	mtc1	zero,$f10
    34dc:	34e7cccd 	ori	a3,a3,0xcccd
    34e0:	0c000000 	jal	0 <EnTest_SetupAction>
    34e4:	e7aa0010 	swc1	$f10,16(sp)
    34e8:	1000001a 	b	3554 <func_808628C8+0x2dc>
    34ec:	44804000 	mtc1	zero,$f8
    34f0:	44818000 	mtc1	at,$f16
    34f4:	260407ec 	addiu	a0,s0,2028
    34f8:	24050000 	li	a1,0
    34fc:	46028480 	add.s	$f18,$f16,$f2
    3500:	3c063f80 	lui	a2,0x3f80
    3504:	3c0740d4 	lui	a3,0x40d4
    3508:	4600903c 	c.lt.s	$f18,$f0
    350c:	00000000 	nop
    3510:	4502000c 	bc1fl	3544 <func_808628C8+0x2cc>
    3514:	44803000 	mtc1	zero,$f6
    3518:	44802000 	mtc1	zero,$f4
    351c:	3c073f4c 	lui	a3,0x3f4c
    3520:	34e7cccd 	ori	a3,a3,0xcccd
    3524:	260407ec 	addiu	a0,s0,2028
    3528:	3c054020 	lui	a1,0x4020
    352c:	3c063f80 	lui	a2,0x3f80
    3530:	0c000000 	jal	0 <EnTest_SetupAction>
    3534:	e7a40010 	swc1	$f4,16(sp)
    3538:	10000006 	b	3554 <func_808628C8+0x2dc>
    353c:	44804000 	mtc1	zero,$f8
    3540:	44803000 	mtc1	zero,$f6
    3544:	34e7cccd 	ori	a3,a3,0xcccd
    3548:	0c000000 	jal	0 <EnTest_SetupAction>
    354c:	e7a60010 	swc1	$f6,16(sp)
    3550:	44804000 	mtc1	zero,$f8
    3554:	c60a07ec 	lwc1	$f10,2028(s0)
    3558:	460a4032 	c.eq.s	$f8,$f10
    355c:	00000000 	nop
    3560:	45030010 	bc1tl	35a4 <func_808628C8+0x32c>
    3564:	3c013f00 	lui	at,0x3f00
    3568:	0c000000 	jal	0 <EnTest_SetupAction>
    356c:	860400b6 	lh	a0,182(s0)
    3570:	c61207ec 	lwc1	$f18,2028(s0)
    3574:	c6100024 	lwc1	$f16,36(s0)
    3578:	860400b6 	lh	a0,182(s0)
    357c:	46120102 	mul.s	$f4,$f0,$f18
    3580:	46048180 	add.s	$f6,$f16,$f4
    3584:	0c000000 	jal	0 <EnTest_SetupAction>
    3588:	e6060024 	swc1	$f6,36(s0)
    358c:	c60a07ec 	lwc1	$f10,2028(s0)
    3590:	c608002c 	lwc1	$f8,44(s0)
    3594:	460a0482 	mul.s	$f18,$f0,$f10
    3598:	46124400 	add.s	$f16,$f8,$f18
    359c:	e610002c 	swc1	$f16,44(s0)
    35a0:	3c013f00 	lui	at,0x3f00
    35a4:	44813000 	mtc1	at,$f6
    35a8:	c6040068 	lwc1	$f4,104(s0)
    35ac:	c60801a0 	lwc1	$f8,416(s0)
    35b0:	26040188 	addiu	a0,s0,392
    35b4:	46062282 	mul.s	$f10,$f4,$f6
    35b8:	4600448d 	trunc.w.s	$f18,$f8
    35bc:	440d9000 	mfc1	t5,$f18
    35c0:	e60a01a4 	swc1	$f10,420(s0)
    35c4:	0c000000 	jal	0 <EnTest_SetupAction>
    35c8:	afad0040 	sw	t5,64(sp)
    35cc:	44807000 	mtc1	zero,$f14
    35d0:	c60001a4 	lwc1	$f0,420(s0)
    35d4:	02002025 	move	a0,s0
    35d8:	24053838 	li	a1,14392
    35dc:	4600703e 	c.le.s	$f14,$f0
    35e0:	00000000 	nop
    35e4:	45020004 	bc1fl	35f8 <func_808628C8+0x380>
    35e8:	46000087 	neg.s	$f2,$f0
    35ec:	10000002 	b	35f8 <func_808628C8+0x380>
    35f0:	46000086 	mov.s	$f2,$f0
    35f4:	46000087 	neg.s	$f2,$f0
    35f8:	c60c01a0 	lwc1	$f12,416(s0)
    35fc:	4600703e 	c.le.s	$f14,$f0
    3600:	46026401 	sub.s	$f16,$f12,$f2
    3604:	4600810d 	trunc.w.s	$f4,$f16
    3608:	44032000 	mfc1	v1,$f4
    360c:	45020004 	bc1fl	3620 <func_808628C8+0x3a8>
    3610:	46000087 	neg.s	$f2,$f0
    3614:	10000002 	b	3620 <func_808628C8+0x3a8>
    3618:	46000086 	mov.s	$f2,$f0
    361c:	46000087 	neg.s	$f2,$f0
    3620:	8e0f07e8 	lw	t7,2024(s0)
    3624:	31f8001f 	andi	t8,t7,0x1f
    3628:	57000008 	bnezl	t8,364c <func_808628C8+0x3d4>
    362c:	4600618d 	trunc.w.s	$f6,$f12
    3630:	afa3003c 	sw	v1,60(sp)
    3634:	0c000000 	jal	0 <EnTest_SetupAction>
    3638:	e7a2002c 	swc1	$f2,44(sp)
    363c:	8fa3003c 	lw	v1,60(sp)
    3640:	c7a2002c 	lwc1	$f2,44(sp)
    3644:	c60c01a0 	lwc1	$f12,416(s0)
    3648:	4600618d 	trunc.w.s	$f6,$f12
    364c:	8fa40040 	lw	a0,64(sp)
    3650:	44083000 	mfc1	t0,$f6
    3654:	00000000 	nop
    3658:	50880011 	beql	a0,t0,36a0 <func_808628C8+0x428>
    365c:	8e0207e8 	lw	v0,2024(s0)
    3660:	4600128d 	trunc.w.s	$f10,$f2
    3664:	440a5000 	mfc1	t2,$f10
    3668:	00000000 	nop
    366c:	01441021 	addu	v0,t2,a0
    3670:	28410002 	slti	at,v0,2
    3674:	54200003 	bnezl	at,3684 <func_808628C8+0x40c>
    3678:	28610007 	slti	at,v1,7
    367c:	18600004 	blez	v1,3690 <func_808628C8+0x418>
    3680:	28610007 	slti	at,v1,7
    3684:	10200005 	beqz	at,369c <func_808628C8+0x424>
    3688:	28410008 	slti	at,v0,8
    368c:	14200003 	bnez	at,369c <func_808628C8+0x424>
    3690:	02002025 	move	a0,s0
    3694:	0c000000 	jal	0 <EnTest_SetupAction>
    3698:	2405383d 	li	a1,14397
    369c:	8e0207e8 	lw	v0,2024(s0)
    36a0:	8fa40054 	lw	a0,84(sp)
    36a4:	1440002b 	bnez	v0,3754 <func_808628C8+0x4dc>
    36a8:	2458ffff 	addiu	t8,v0,-1
    36ac:	0c000000 	jal	0 <EnTest_SetupAction>
    36b0:	02002825 	move	a1,s0
    36b4:	10400005 	beqz	v0,36cc <func_808628C8+0x454>
    36b8:	8fa40054 	lw	a0,84(sp)
    36bc:	0c000000 	jal	0 <EnTest_SetupAction>
    36c0:	02002025 	move	a0,s0
    36c4:	10000025 	b	375c <func_808628C8+0x4e4>
    36c8:	8fbf0024 	lw	ra,36(sp)
    36cc:	0c000000 	jal	0 <EnTest_SetupAction>
    36d0:	02002825 	move	a1,s0
    36d4:	1040000a 	beqz	v0,3700 <func_808628C8+0x488>
    36d8:	8fab0048 	lw	t3,72(sp)
    36dc:	8fa40054 	lw	a0,84(sp)
    36e0:	0c000000 	jal	0 <EnTest_SetupAction>
    36e4:	02002825 	move	a1,s0
    36e8:	1440001b 	bnez	v0,3758 <func_808628C8+0x4e0>
    36ec:	02002025 	move	a0,s0
    36f0:	0c000000 	jal	0 <EnTest_SetupAction>
    36f4:	8fa50054 	lw	a1,84(sp)
    36f8:	10000018 	b	375c <func_808628C8+0x4e4>
    36fc:	8fbf0024 	lw	ra,36(sp)
    3700:	816c0151 	lb	t4,337(t3)
    3704:	8fad0054 	lw	t5,84(sp)
    3708:	3c0e0001 	lui	t6,0x1
    370c:	1180000d 	beqz	t4,3744 <func_808628C8+0x4cc>
    3710:	01cd7021 	addu	t6,t6,t5
    3714:	8dce1de4 	lw	t6,7652(t6)
    3718:	31cf0001 	andi	t7,t6,0x1
    371c:	11e00005 	beqz	t7,3734 <func_808628C8+0x4bc>
    3720:	00000000 	nop
    3724:	0c000000 	jal	0 <EnTest_SetupAction>
    3728:	02002025 	move	a0,s0
    372c:	1000000b 	b	375c <func_808628C8+0x4e4>
    3730:	8fbf0024 	lw	ra,36(sp)
    3734:	0c000000 	jal	0 <EnTest_SetupAction>
    3738:	02002025 	move	a0,s0
    373c:	10000007 	b	375c <func_808628C8+0x4e4>
    3740:	8fbf0024 	lw	ra,36(sp)
    3744:	0c000000 	jal	0 <EnTest_SetupAction>
    3748:	02002025 	move	a0,s0
    374c:	10000003 	b	375c <func_808628C8+0x4e4>
    3750:	8fbf0024 	lw	ra,36(sp)
    3754:	ae1807e8 	sw	t8,2024(s0)
    3758:	8fbf0024 	lw	ra,36(sp)
    375c:	8fb00020 	lw	s0,32(sp)
    3760:	27bd0050 	addiu	sp,sp,80
    3764:	03e00008 	jr	ra
    3768:	00000000 	nop

0000376c <func_80862DBC>:
    376c:	27bdffe0 	addiu	sp,sp,-32
    3770:	afbf001c 	sw	ra,28(sp)
    3774:	afb00018 	sw	s0,24(sp)
    3778:	afa50024 	sw	a1,36(sp)
    377c:	00808025 	move	s0,a0
    3780:	0c000000 	jal	0 <EnTest_SetupAction>
    3784:	2405383a 	li	a1,14394
    3788:	240e0002 	li	t6,2
    378c:	a20e07c8 	sb	t6,1992(s0)
    3790:	8fa60024 	lw	a2,36(sp)
    3794:	260407f0 	addiu	a0,s0,2032
    3798:	0c000000 	jal	0 <EnTest_SetupAction>
    379c:	2405003c 	li	a1,60
    37a0:	820f0808 	lb	t7,2056(s0)
    37a4:	a6000014 	sh	zero,20(s0)
    37a8:	05e20008 	bltzl	t7,37cc <func_80862DBC+0x60>
    37ac:	8e190004 	lw	t9,4(s0)
    37b0:	0c000000 	jal	0 <EnTest_SetupAction>
    37b4:	8e04080c 	lw	a0,2060(s0)
    37b8:	0c000000 	jal	0 <EnTest_SetupAction>
    37bc:	00402025 	move	a0,v0
    37c0:	2418ffff 	li	t8,-1
    37c4:	a2180808 	sb	t8,2056(s0)
    37c8:	8e190004 	lw	t9,4(s0)
    37cc:	8609001c 	lh	t1,28(s0)
    37d0:	2401fffe 	li	at,-2
    37d4:	03214024 	and	t0,t9,at
    37d8:	24010005 	li	at,5
    37dc:	15210006 	bne	t1,at,37f8 <func_80862DBC+0x8c>
    37e0:	ae080004 	sw	t0,4(s0)
    37e4:	8fa40024 	lw	a0,36(sp)
    37e8:	02003025 	move	a2,s0
    37ec:	24070006 	li	a3,6
    37f0:	0c000000 	jal	0 <EnTest_SetupAction>
    37f4:	24851c24 	addiu	a1,a0,7204
    37f8:	3c050000 	lui	a1,0x0
    37fc:	24a50000 	addiu	a1,a1,0
    3800:	0c000000 	jal	0 <EnTest_SetupAction>
    3804:	02002025 	move	a0,s0
    3808:	8fbf001c 	lw	ra,28(sp)
    380c:	8fb00018 	lw	s0,24(sp)
    3810:	27bd0020 	addiu	sp,sp,32
    3814:	03e00008 	jr	ra
    3818:	00000000 	nop

0000381c <func_80862E6C>:
    381c:	27bdffd8 	addiu	sp,sp,-40
    3820:	afbf0024 	sw	ra,36(sp)
    3824:	afb00020 	sw	s0,32(sp)
    3828:	afa5002c 	sw	a1,44(sp)
    382c:	8c8e011c 	lw	t6,284(a0)
    3830:	00808025 	move	s0,a0
    3834:	260507f0 	addiu	a1,s0,2032
    3838:	55c00012 	bnezl	t6,3884 <func_80862E6C+0x68>
    383c:	86190014 	lh	t9,20(s0)
    3840:	848f0014 	lh	t7,20(a0)
    3844:	55e00004 	bnezl	t7,3858 <func_80862E6C+0x3c>
    3848:	8607001c 	lh	a3,28(s0)
    384c:	849807f8 	lh	t8,2040(a0)
    3850:	a4980014 	sh	t8,20(a0)
    3854:	8607001c 	lh	a3,28(s0)
    3858:	02002025 	move	a0,s0
    385c:	8fa6002c 	lw	a2,44(sp)
    3860:	24e70008 	addiu	a3,a3,8
    3864:	00073c00 	sll	a3,a3,0x10
    3868:	0c000000 	jal	0 <EnTest_SetupAction>
    386c:	00073c03 	sra	a3,a3,0x10
    3870:	50400035 	beqzl	v0,3948 <func_80862E6C+0x12c>
    3874:	8fbf0024 	lw	ra,36(sp)
    3878:	10000032 	b	3944 <func_80862E6C+0x128>
    387c:	ae10011c 	sw	s0,284(s0)
    3880:	86190014 	lh	t9,20(s0)
    3884:	57200017 	bnezl	t9,38e4 <func_80862E6C+0xc8>
    3888:	860e001c 	lh	t6,28(s0)
    388c:	8609001c 	lh	t1,28(s0)
    3890:	2408000a 	li	t0,10
    3894:	24010004 	li	at,4
    3898:	15210004 	bne	t1,at,38ac <func_80862E6C+0x90>
    389c:	a20800af 	sb	t0,175(s0)
    38a0:	240affff 	li	t2,-1
    38a4:	10000006 	b	38c0 <func_80862E6C+0xa4>
    38a8:	a60a001c 	sh	t2,28(s0)
    38ac:	8fa4002c 	lw	a0,44(sp)
    38b0:	02003025 	move	a2,s0
    38b4:	24070005 	li	a3,5
    38b8:	0c000000 	jal	0 <EnTest_SetupAction>
    38bc:	24851c24 	addiu	a1,a0,7204
    38c0:	8e0c0004 	lw	t4,4(s0)
    38c4:	ae00011c 	sw	zero,284(s0)
    38c8:	02002025 	move	a0,s0
    38cc:	358d0001 	ori	t5,t4,0x1
    38d0:	0c000000 	jal	0 <EnTest_SetupAction>
    38d4:	ae0d0004 	sw	t5,4(s0)
    38d8:	1000001b 	b	3948 <func_80862E6C+0x12c>
    38dc:	8fbf0024 	lw	ra,36(sp)
    38e0:	860e001c 	lh	t6,28(s0)
    38e4:	24010005 	li	at,5
    38e8:	8fa4002c 	lw	a0,44(sp)
    38ec:	15c10015 	bne	t6,at,3944 <func_80862E6C+0x128>
    38f0:	02002825 	move	a1,s0
    38f4:	3c0145fa 	lui	at,0x45fa
    38f8:	44812000 	mtc1	at,$f4
    38fc:	24060002 	li	a2,2
    3900:	24070005 	li	a3,5
    3904:	0c000000 	jal	0 <EnTest_SetupAction>
    3908:	e7a40010 	swc1	$f4,16(sp)
    390c:	1440000d 	bnez	v0,3944 <func_80862E6C+0x128>
    3910:	8fa4002c 	lw	a0,44(sp)
    3914:	02002825 	move	a1,s0
    3918:	26060024 	addiu	a2,s0,36
    391c:	0c000000 	jal	0 <EnTest_SetupAction>
    3920:	240700d0 	li	a3,208
    3924:	8e020118 	lw	v0,280(s0)
    3928:	10400004 	beqz	v0,393c <func_80862E6C+0x120>
    392c:	00000000 	nop
    3930:	844f0018 	lh	t7,24(v0)
    3934:	25f8ffff 	addiu	t8,t7,-1
    3938:	a4580018 	sh	t8,24(v0)
    393c:	0c000000 	jal	0 <EnTest_SetupAction>
    3940:	02002025 	move	a0,s0
    3944:	8fbf0024 	lw	ra,36(sp)
    3948:	8fb00020 	lw	s0,32(sp)
    394c:	27bd0028 	addiu	sp,sp,40
    3950:	03e00008 	jr	ra
    3954:	00000000 	nop

00003958 <func_80862FA8>:
    3958:	27bdffe8 	addiu	sp,sp,-24
    395c:	afa5001c 	sw	a1,28(sp)
    3960:	afbf0014 	sw	ra,20(sp)
    3964:	00803025 	move	a2,a0
    3968:	3c050600 	lui	a1,0x600
    396c:	24a51420 	addiu	a1,a1,5152
    3970:	afa60018 	sw	a2,24(sp)
    3974:	0c000000 	jal	0 <EnTest_SetupAction>
    3978:	24840188 	addiu	a0,a0,392
    397c:	8fa40018 	lw	a0,24(sp)
    3980:	0c000000 	jal	0 <EnTest_SetupAction>
    3984:	2405383b 	li	a1,14395
    3988:	8fa60018 	lw	a2,24(sp)
    398c:	2401fffe 	li	at,-2
    3990:	44802000 	mtc1	zero,$f4
    3994:	8cce0004 	lw	t6,4(a2)
    3998:	84d8001c 	lh	t8,28(a2)
    399c:	a0c007de 	sb	zero,2014(a2)
    39a0:	01c17824 	and	t7,t6,at
    39a4:	2b010004 	slti	at,t8,4
    39a8:	accf0004 	sw	t7,4(a2)
    39ac:	a0c00114 	sb	zero,276(a2)
    39b0:	10200009 	beqz	at,39d8 <func_80862FA8+0x80>
    39b4:	e4c40068 	swc1	$f4,104(a2)
    39b8:	24190005 	li	t9,5
    39bc:	3c050000 	lui	a1,0x0
    39c0:	a0d907c8 	sb	t9,1992(a2)
    39c4:	24a50000 	addiu	a1,a1,0
    39c8:	0c000000 	jal	0 <EnTest_SetupAction>
    39cc:	00c02025 	move	a0,a2
    39d0:	10000005 	b	39e8 <func_80862FA8+0x90>
    39d4:	8fbf0014 	lw	ra,20(sp)
    39d8:	00c02025 	move	a0,a2
    39dc:	0c000000 	jal	0 <EnTest_SetupAction>
    39e0:	8fa5001c 	lw	a1,28(sp)
    39e4:	8fbf0014 	lw	ra,20(sp)
    39e8:	27bd0018 	addiu	sp,sp,24
    39ec:	03e00008 	jr	ra
    39f0:	00000000 	nop

000039f4 <func_80863044>:
    39f4:	27bdffe0 	addiu	sp,sp,-32
    39f8:	afb00018 	sw	s0,24(sp)
    39fc:	00808025 	move	s0,a0
    3a00:	afbf001c 	sw	ra,28(sp)
    3a04:	afa50024 	sw	a1,36(sp)
    3a08:	0c000000 	jal	0 <EnTest_SetupAction>
    3a0c:	24840188 	addiu	a0,a0,392
    3a10:	50400015 	beqzl	v0,3a68 <func_80863044+0x74>
    3a14:	c60a01a0 	lwc1	$f10,416(s0)
    3a18:	0c000000 	jal	0 <EnTest_SetupAction>
    3a1c:	00000000 	nop
    3a20:	3c014120 	lui	at,0x4120
    3a24:	44811000 	mtc1	at,$f2
    3a28:	24180007 	li	t8,7
    3a2c:	3c050000 	lui	a1,0x0
    3a30:	46020102 	mul.s	$f4,$f0,$f2
    3a34:	a21807c8 	sb	t8,1992(s0)
    3a38:	24a50000 	addiu	a1,a1,0
    3a3c:	02002025 	move	a0,s0
    3a40:	46022180 	add.s	$f6,$f4,$f2
    3a44:	4600320d 	trunc.w.s	$f8,$f6
    3a48:	440f4000 	mfc1	t7,$f8
    3a4c:	0c000000 	jal	0 <EnTest_SetupAction>
    3a50:	ae0f07e8 	sw	t7,2024(s0)
    3a54:	260407f0 	addiu	a0,s0,2032
    3a58:	2405003c 	li	a1,60
    3a5c:	0c000000 	jal	0 <EnTest_SetupAction>
    3a60:	8fa60024 	lw	a2,36(sp)
    3a64:	c60a01a0 	lwc1	$f10,416(s0)
    3a68:	2401000f 	li	at,15
    3a6c:	02002025 	move	a0,s0
    3a70:	4600540d 	trunc.w.s	$f16,$f10
    3a74:	44088000 	mfc1	t0,$f16
    3a78:	00000000 	nop
    3a7c:	55010004 	bnel	t0,at,3a90 <func_80863044+0x9c>
    3a80:	8fbf001c 	lw	ra,28(sp)
    3a84:	0c000000 	jal	0 <EnTest_SetupAction>
    3a88:	2405387a 	li	a1,14458
    3a8c:	8fbf001c 	lw	ra,28(sp)
    3a90:	8fb00018 	lw	s0,24(sp)
    3a94:	27bd0020 	addiu	sp,sp,32
    3a98:	03e00008 	jr	ra
    3a9c:	00000000 	nop

00003aa0 <func_808630F0>:
    3aa0:	27bdffe8 	addiu	sp,sp,-24
    3aa4:	afa5001c 	sw	a1,28(sp)
    3aa8:	afbf0014 	sw	ra,20(sp)
    3aac:	00803025 	move	a2,a0
    3ab0:	3c050601 	lui	a1,0x601
    3ab4:	24a59a90 	addiu	a1,a1,-25968
    3ab8:	afa60018 	sw	a2,24(sp)
    3abc:	0c000000 	jal	0 <EnTest_SetupAction>
    3ac0:	24840188 	addiu	a0,a0,392
    3ac4:	8fa40018 	lw	a0,24(sp)
    3ac8:	0c000000 	jal	0 <EnTest_SetupAction>
    3acc:	2405383b 	li	a1,14395
    3ad0:	8fa60018 	lw	a2,24(sp)
    3ad4:	44802000 	mtc1	zero,$f4
    3ad8:	240e0006 	li	t6,6
    3adc:	84cf001c 	lh	t7,28(a2)
    3ae0:	a0ce07c8 	sb	t6,1992(a2)
    3ae4:	a0c00114 	sb	zero,276(a2)
    3ae8:	29e10004 	slti	at,t7,4
    3aec:	a0c007de 	sb	zero,2014(a2)
    3af0:	1020000b 	beqz	at,3b20 <func_808630F0+0x80>
    3af4:	e4c40068 	swc1	$f4,104(a2)
    3af8:	8cd80004 	lw	t8,4(a2)
    3afc:	2401fffe 	li	at,-2
    3b00:	3c050000 	lui	a1,0x0
    3b04:	0301c824 	and	t9,t8,at
    3b08:	acd90004 	sw	t9,4(a2)
    3b0c:	24a50000 	addiu	a1,a1,0
    3b10:	0c000000 	jal	0 <EnTest_SetupAction>
    3b14:	00c02025 	move	a0,a2
    3b18:	10000005 	b	3b30 <func_808630F0+0x90>
    3b1c:	8fbf0014 	lw	ra,20(sp)
    3b20:	00c02025 	move	a0,a2
    3b24:	0c000000 	jal	0 <EnTest_SetupAction>
    3b28:	8fa5001c 	lw	a1,28(sp)
    3b2c:	8fbf0014 	lw	ra,20(sp)
    3b30:	27bd0018 	addiu	sp,sp,24
    3b34:	03e00008 	jr	ra
    3b38:	00000000 	nop

00003b3c <func_8086318C>:
    3b3c:	27bdffe0 	addiu	sp,sp,-32
    3b40:	afb00018 	sw	s0,24(sp)
    3b44:	00808025 	move	s0,a0
    3b48:	afbf001c 	sw	ra,28(sp)
    3b4c:	afa50024 	sw	a1,36(sp)
    3b50:	0c000000 	jal	0 <EnTest_SetupAction>
    3b54:	24840188 	addiu	a0,a0,392
    3b58:	50400015 	beqzl	v0,3bb0 <func_8086318C+0x74>
    3b5c:	c60a01a0 	lwc1	$f10,416(s0)
    3b60:	0c000000 	jal	0 <EnTest_SetupAction>
    3b64:	00000000 	nop
    3b68:	3c014120 	lui	at,0x4120
    3b6c:	44811000 	mtc1	at,$f2
    3b70:	24180007 	li	t8,7
    3b74:	3c050000 	lui	a1,0x0
    3b78:	46020102 	mul.s	$f4,$f0,$f2
    3b7c:	a21807c8 	sb	t8,1992(s0)
    3b80:	24a50000 	addiu	a1,a1,0
    3b84:	02002025 	move	a0,s0
    3b88:	46022180 	add.s	$f6,$f4,$f2
    3b8c:	4600320d 	trunc.w.s	$f8,$f6
    3b90:	440f4000 	mfc1	t7,$f8
    3b94:	0c000000 	jal	0 <EnTest_SetupAction>
    3b98:	ae0f07e8 	sw	t7,2024(s0)
    3b9c:	260407f0 	addiu	a0,s0,2032
    3ba0:	2405003c 	li	a1,60
    3ba4:	0c000000 	jal	0 <EnTest_SetupAction>
    3ba8:	8fa60024 	lw	a2,36(sp)
    3bac:	c60a01a0 	lwc1	$f10,416(s0)
    3bb0:	2401000a 	li	at,10
    3bb4:	02002025 	move	a0,s0
    3bb8:	4600540d 	trunc.w.s	$f16,$f10
    3bbc:	44028000 	mfc1	v0,$f16
    3bc0:	00000000 	nop
    3bc4:	10410003 	beq	v0,at,3bd4 <func_8086318C+0x98>
    3bc8:	24010019 	li	at,25
    3bcc:	54410004 	bnel	v0,at,3be0 <func_8086318C+0xa4>
    3bd0:	8fbf001c 	lw	ra,28(sp)
    3bd4:	0c000000 	jal	0 <EnTest_SetupAction>
    3bd8:	2405387a 	li	a1,14458
    3bdc:	8fbf001c 	lw	ra,28(sp)
    3be0:	8fb00018 	lw	s0,24(sp)
    3be4:	27bd0020 	addiu	sp,sp,32
    3be8:	03e00008 	jr	ra
    3bec:	00000000 	nop

00003bf0 <func_80863240>:
    3bf0:	27bdffe8 	addiu	sp,sp,-24
    3bf4:	afbf0014 	sw	ra,20(sp)
    3bf8:	3c01bf80 	lui	at,0xbf80
    3bfc:	44812000 	mtc1	at,$f4
    3c00:	c48601a0 	lwc1	$f6,416(a0)
    3c04:	44804000 	mtc1	zero,$f8
    3c08:	240e0002 	li	t6,2
    3c0c:	240f0013 	li	t7,19
    3c10:	3c050000 	lui	a1,0x0
    3c14:	a0800808 	sb	zero,2056(a0)
    3c18:	a08e01bd 	sb	t6,445(a0)
    3c1c:	a08f07c8 	sb	t7,1992(a0)
    3c20:	24a50000 	addiu	a1,a1,0
    3c24:	e48401a4 	swc1	$f4,420(a0)
    3c28:	e4860194 	swc1	$f6,404(a0)
    3c2c:	0c000000 	jal	0 <EnTest_SetupAction>
    3c30:	e4880198 	swc1	$f8,408(a0)
    3c34:	8fbf0014 	lw	ra,20(sp)
    3c38:	27bd0018 	addiu	sp,sp,24
    3c3c:	03e00008 	jr	ra
    3c40:	00000000 	nop

00003c44 <func_80863294>:
    3c44:	27bdffe0 	addiu	sp,sp,-32
    3c48:	afb00018 	sw	s0,24(sp)
    3c4c:	00808025 	move	s0,a0
    3c50:	afbf001c 	sw	ra,28(sp)
    3c54:	afa50024 	sw	a1,36(sp)
    3c58:	0c000000 	jal	0 <EnTest_SetupAction>
    3c5c:	24840188 	addiu	a0,a0,392
    3c60:	50400027 	beqzl	v0,3d00 <func_80863294+0xbc>
    3c64:	8fbf001c 	lw	ra,28(sp)
    3c68:	0c000000 	jal	0 <EnTest_SetupAction>
    3c6c:	00000000 	nop
    3c70:	3c010000 	lui	at,0x0
    3c74:	c4240000 	lwc1	$f4,0(at)
    3c78:	8fa50024 	lw	a1,36(sp)
    3c7c:	3c180001 	lui	t8,0x1
    3c80:	4600203c 	c.lt.s	$f4,$f0
    3c84:	0305c021 	addu	t8,t8,a1
    3c88:	4502000f 	bc1fl	3cc8 <func_80863294+0x84>
    3c8c:	8f181de4 	lw	t8,7652(t8)
    3c90:	0c000000 	jal	0 <EnTest_SetupAction>
    3c94:	02002025 	move	a0,s0
    3c98:	0c000000 	jal	0 <EnTest_SetupAction>
    3c9c:	00000000 	nop
    3ca0:	3c0140a0 	lui	at,0x40a0
    3ca4:	44811000 	mtc1	at,$f2
    3ca8:	00000000 	nop
    3cac:	46020182 	mul.s	$f6,$f0,$f2
    3cb0:	46023200 	add.s	$f8,$f6,$f2
    3cb4:	4600428d 	trunc.w.s	$f10,$f8
    3cb8:	440f5000 	mfc1	t7,$f10
    3cbc:	1000000f 	b	3cfc <func_80863294+0xb8>
    3cc0:	ae0f07e8 	sw	t7,2024(s0)
    3cc4:	8f181de4 	lw	t8,7652(t8)
    3cc8:	33190001 	andi	t9,t8,0x1
    3ccc:	13200009 	beqz	t9,3cf4 <func_80863294+0xb0>
    3cd0:	00000000 	nop
    3cd4:	8608001c 	lh	t0,28(s0)
    3cd8:	24010003 	li	at,3
    3cdc:	11010005 	beq	t0,at,3cf4 <func_80863294+0xb0>
    3ce0:	00000000 	nop
    3ce4:	0c000000 	jal	0 <EnTest_SetupAction>
    3ce8:	02002025 	move	a0,s0
    3cec:	10000004 	b	3d00 <func_80863294+0xbc>
    3cf0:	8fbf001c 	lw	ra,28(sp)
    3cf4:	0c000000 	jal	0 <EnTest_SetupAction>
    3cf8:	02002025 	move	a0,s0
    3cfc:	8fbf001c 	lw	ra,28(sp)
    3d00:	8fb00018 	lw	s0,24(sp)
    3d04:	27bd0020 	addiu	sp,sp,32
    3d08:	03e00008 	jr	ra
    3d0c:	00000000 	nop

00003d10 <func_80863360>:
    3d10:	27bdffe8 	addiu	sp,sp,-24
    3d14:	afa5001c 	sw	a1,28(sp)
    3d18:	00802825 	move	a1,a0
    3d1c:	afbf0014 	sw	ra,20(sp)
    3d20:	afa40018 	sw	a0,24(sp)
    3d24:	afa50018 	sw	a1,24(sp)
    3d28:	0c000000 	jal	0 <EnTest_SetupAction>
    3d2c:	24840188 	addiu	a0,a0,392
    3d30:	8fa50018 	lw	a1,24(sp)
    3d34:	3c010000 	lui	at,0x0
    3d38:	c4240000 	lwc1	$f4,0(at)
    3d3c:	c4a00054 	lwc1	$f0,84(a1)
    3d40:	3c010000 	lui	at,0x0
    3d44:	4604003c 	c.lt.s	$f0,$f4
    3d48:	00000000 	nop
    3d4c:	4502000b 	bc1fl	3d7c <func_80863360+0x6c>
    3d50:	c4a4000c 	lwc1	$f4,12(a1)
    3d54:	c4260000 	lwc1	$f6,0(at)
    3d58:	3c014060 	lui	at,0x4060
    3d5c:	44818000 	mtc1	at,$f16
    3d60:	c4aa000c 	lwc1	$f10,12(a1)
    3d64:	46060200 	add.s	$f8,$f0,$f6
    3d68:	46105481 	sub.s	$f18,$f10,$f16
    3d6c:	e4a80054 	swc1	$f8,84(a1)
    3d70:	10000005 	b	3d88 <func_80863360+0x78>
    3d74:	e4b20028 	swc1	$f18,40(a1)
    3d78:	c4a4000c 	lwc1	$f4,12(a1)
    3d7c:	00a02025 	move	a0,a1
    3d80:	0c000000 	jal	0 <EnTest_SetupAction>
    3d84:	e4a40028 	swc1	$f4,40(a1)
    3d88:	8fbf0014 	lw	ra,20(sp)
    3d8c:	27bd0018 	addiu	sp,sp,24
    3d90:	03e00008 	jr	ra
    3d94:	00000000 	nop

00003d98 <func_808633E8>:
    3d98:	27bdffe0 	addiu	sp,sp,-32
    3d9c:	afb00018 	sw	s0,24(sp)
    3da0:	afa50024 	sw	a1,36(sp)
    3da4:	afbf001c 	sw	ra,28(sp)
    3da8:	240e0001 	li	t6,1
    3dac:	00808025 	move	s0,a0
    3db0:	a48e001c 	sh	t6,28(a0)
    3db4:	8607001c 	lh	a3,28(s0)
    3db8:	8fa60024 	lw	a2,36(sp)
    3dbc:	0c000000 	jal	0 <EnTest_SetupAction>
    3dc0:	260507f0 	addiu	a1,s0,2032
    3dc4:	1040000d 	beqz	v0,3dfc <func_808633E8+0x64>
    3dc8:	8fa40024 	lw	a0,36(sp)
    3dcc:	02002825 	move	a1,s0
    3dd0:	26060024 	addiu	a2,s0,36
    3dd4:	0c000000 	jal	0 <EnTest_SetupAction>
    3dd8:	240700d0 	li	a3,208
    3ddc:	8e020118 	lw	v0,280(s0)
    3de0:	10400004 	beqz	v0,3df4 <func_808633E8+0x5c>
    3de4:	00000000 	nop
    3de8:	844f0018 	lh	t7,24(v0)
    3dec:	25f8ffff 	addiu	t8,t7,-1
    3df0:	a4580018 	sh	t8,24(v0)
    3df4:	0c000000 	jal	0 <EnTest_SetupAction>
    3df8:	02002025 	move	a0,s0
    3dfc:	8fbf001c 	lw	ra,28(sp)
    3e00:	8fb00018 	lw	s0,24(sp)
    3e04:	27bd0020 	addiu	sp,sp,32
    3e08:	03e00008 	jr	ra
    3e0c:	00000000 	nop

00003e10 <func_80863460>:
    3e10:	afa50004 	sw	a1,4(sp)
    3e14:	848f00b6 	lh	t7,182(a0)
    3e18:	848e07d2 	lh	t6,2002(a0)
    3e1c:	8482008a 	lh	v0,138(a0)
    3e20:	2409f830 	li	t1,-2000
    3e24:	01cf4021 	addu	t0,t6,t7
    3e28:	00481023 	subu	v0,v0,t0
    3e2c:	00021400 	sll	v0,v0,0x10
    3e30:	00021403 	sra	v0,v0,0x10
    3e34:	2841f830 	slti	at,v0,-2000
    3e38:	10200003 	beqz	at,3e48 <func_80863460+0x38>
    3e3c:	240dc7d1 	li	t5,-14383
    3e40:	10000007 	b	3e60 <func_80863460+0x50>
    3e44:	a48907d8 	sh	t1,2008(a0)
    3e48:	284107d1 	slti	at,v0,2001
    3e4c:	14200003 	bnez	at,3e5c <func_80863460+0x4c>
    3e50:	00401825 	move	v1,v0
    3e54:	10000001 	b	3e5c <func_80863460+0x4c>
    3e58:	240307d0 	li	v1,2000
    3e5c:	a48307d8 	sh	v1,2008(a0)
    3e60:	848a07d2 	lh	t2,2002(a0)
    3e64:	848b07d8 	lh	t3,2008(a0)
    3e68:	014b6021 	addu	t4,t2,t3
    3e6c:	a48c07d2 	sh	t4,2002(a0)
    3e70:	848207d2 	lh	v0,2002(a0)
    3e74:	2841c7d1 	slti	at,v0,-14383
    3e78:	50200004 	beqzl	at,3e8c <func_80863460+0x7c>
    3e7c:	28413830 	slti	at,v0,14384
    3e80:	03e00008 	jr	ra
    3e84:	a48d07d2 	sh	t5,2002(a0)
    3e88:	28413830 	slti	at,v0,14384
    3e8c:	14200003 	bnez	at,3e9c <func_80863460+0x8c>
    3e90:	00401825 	move	v1,v0
    3e94:	10000001 	b	3e9c <func_80863460+0x8c>
    3e98:	2403382f 	li	v1,14383
    3e9c:	a48307d2 	sh	v1,2002(a0)
    3ea0:	03e00008 	jr	ra
    3ea4:	00000000 	nop

00003ea8 <func_808634F8>:
    3ea8:	27bdffe0 	addiu	sp,sp,-32
    3eac:	afbf001c 	sw	ra,28(sp)
    3eb0:	afb00018 	sw	s0,24(sp)
    3eb4:	afa50024 	sw	a1,36(sp)
    3eb8:	908208ed 	lbu	v0,2285(a0)
    3ebc:	00808025 	move	s0,a0
    3ec0:	8ca71c44 	lw	a3,7236(a1)
    3ec4:	304f0080 	andi	t7,v0,0x80
    3ec8:	11e0000c 	beqz	t7,3efc <func_808634F8+0x54>
    3ecc:	3058ff7f 	andi	t8,v0,0xff7f
    3ed0:	90990821 	lbu	t9,2081(a0)
    3ed4:	908907c8 	lbu	t1,1992(a0)
    3ed8:	a09808ed 	sb	t8,2285(a0)
    3edc:	3328fffd 	andi	t0,t9,0xfffd
    3ee0:	2921000a 	slti	at,t1,10
    3ee4:	14200052 	bnez	at,4030 <func_808634F8+0x188>
    3ee8:	a0880821 	sb	t0,2081(a0)
    3eec:	3c01c080 	lui	at,0xc080
    3ef0:	44812000 	mtc1	at,$f4
    3ef4:	1000004e 	b	4030 <func_808634F8+0x188>
    3ef8:	e4840068 	swc1	$f4,104(a0)
    3efc:	92030821 	lbu	v1,2081(s0)
    3f00:	306a0002 	andi	t2,v1,0x2
    3f04:	5140004b 	beqzl	t2,4034 <func_808634F8+0x18c>
    3f08:	8fbf001c 	lw	ra,28(sp)
    3f0c:	920400b1 	lbu	a0,177(s0)
    3f10:	306bfffd 	andi	t3,v1,0xfffd
    3f14:	2401000d 	li	at,13
    3f18:	10810045 	beq	a0,at,4030 <func_808634F8+0x188>
    3f1c:	a20b0821 	sb	t3,2081(s0)
    3f20:	24010006 	li	at,6
    3f24:	10810042 	beq	a0,at,4030 <func_808634F8+0x188>
    3f28:	26050828 	addiu	a1,s0,2088
    3f2c:	820c0808 	lb	t4,2056(s0)
    3f30:	a20407e2 	sb	a0,2018(s0)
    3f34:	02002025 	move	a0,s0
    3f38:	59800003 	blezl	t4,3f48 <func_808634F8+0xa0>
    3f3c:	90ed0845 	lbu	t5,2117(a3)
    3f40:	a2000808 	sb	zero,2056(s0)
    3f44:	90ed0845 	lbu	t5,2117(a3)
    3f48:	860e008a 	lh	t6,138(s0)
    3f4c:	00003025 	move	a2,zero
    3f50:	a20d07dc 	sb	t5,2012(s0)
    3f54:	0c000000 	jal	0 <EnTest_SetupAction>
    3f58:	a60e0032 	sh	t6,50(s0)
    3f5c:	260400e4 	addiu	a0,s0,228
    3f60:	0c000000 	jal	0 <EnTest_SetupAction>
    3f64:	24053838 	li	a1,14392
    3f68:	920200b1 	lbu	v0,177(s0)
    3f6c:	24010001 	li	at,1
    3f70:	10410005 	beq	v0,at,3f88 <func_808634F8+0xe0>
    3f74:	2401000f 	li	at,15
    3f78:	10410003 	beq	v0,at,3f88 <func_808634F8+0xe0>
    3f7c:	2401000e 	li	at,14
    3f80:	1441000b 	bne	v0,at,3fb0 <func_808634F8+0x108>
    3f84:	02002025 	move	a0,s0
    3f88:	920f07c8 	lbu	t7,1992(s0)
    3f8c:	2401000b 	li	at,11
    3f90:	51e10028 	beql	t7,at,4034 <func_808634F8+0x18c>
    3f94:	8fbf001c 	lw	ra,28(sp)
    3f98:	0c000000 	jal	0 <EnTest_SetupAction>
    3f9c:	02002025 	move	a0,s0
    3fa0:	0c000000 	jal	0 <EnTest_SetupAction>
    3fa4:	02002025 	move	a0,s0
    3fa8:	10000022 	b	4034 <func_808634F8+0x18c>
    3fac:	8fbf001c 	lw	ra,28(sp)
    3fb0:	0c000000 	jal	0 <EnTest_SetupAction>
    3fb4:	24054000 	li	a1,16384
    3fb8:	10400010 	beqz	v0,3ffc <func_808634F8+0x154>
    3fbc:	00000000 	nop
    3fc0:	0c000000 	jal	0 <EnTest_SetupAction>
    3fc4:	02002025 	move	a0,s0
    3fc8:	14400008 	bnez	v0,3fec <func_808634F8+0x144>
    3fcc:	8fa40024 	lw	a0,36(sp)
    3fd0:	0c000000 	jal	0 <EnTest_SetupAction>
    3fd4:	02002825 	move	a1,s0
    3fd8:	02002025 	move	a0,s0
    3fdc:	0c000000 	jal	0 <EnTest_SetupAction>
    3fe0:	8fa50024 	lw	a1,36(sp)
    3fe4:	10000013 	b	4034 <func_808634F8+0x18c>
    3fe8:	8fbf001c 	lw	ra,28(sp)
    3fec:	0c000000 	jal	0 <EnTest_SetupAction>
    3ff0:	02002025 	move	a0,s0
    3ff4:	1000000f 	b	4034 <func_808634F8+0x18c>
    3ff8:	8fbf001c 	lw	ra,28(sp)
    3ffc:	0c000000 	jal	0 <EnTest_SetupAction>
    4000:	02002025 	move	a0,s0
    4004:	14400008 	bnez	v0,4028 <func_808634F8+0x180>
    4008:	02002025 	move	a0,s0
    400c:	0c000000 	jal	0 <EnTest_SetupAction>
    4010:	8fa50024 	lw	a1,36(sp)
    4014:	8fa40024 	lw	a0,36(sp)
    4018:	0c000000 	jal	0 <EnTest_SetupAction>
    401c:	02002825 	move	a1,s0
    4020:	10000004 	b	4034 <func_808634F8+0x18c>
    4024:	8fbf001c 	lw	ra,28(sp)
    4028:	0c000000 	jal	0 <EnTest_SetupAction>
    402c:	02002025 	move	a0,s0
    4030:	8fbf001c 	lw	ra,28(sp)
    4034:	8fb00018 	lw	s0,24(sp)
    4038:	27bd0020 	addiu	sp,sp,32
    403c:	03e00008 	jr	ra
    4040:	00000000 	nop

00004044 <EnTest_Update>:
    4044:	27bdffb0 	addiu	sp,sp,-80
    4048:	afbf002c 	sw	ra,44(sp)
    404c:	afb00028 	sw	s0,40(sp)
    4050:	00808025 	move	s0,a0
    4054:	0c000000 	jal	0 <EnTest_SetupAction>
    4058:	afa50054 	sw	a1,84(sp)
    405c:	920e00b1 	lbu	t6,177(s0)
    4060:	24010006 	li	at,6
    4064:	51c100a7 	beql	t6,at,4304 <L808638F4+0x60>
    4068:	26050810 	addiu	a1,s0,2064
    406c:	0c000000 	jal	0 <EnTest_SetupAction>
    4070:	02002025 	move	a0,s0
    4074:	3c0141f0 	lui	at,0x41f0
    4078:	44810000 	mtc1	at,$f0
    407c:	240f001d 	li	t7,29
    4080:	afaf0014 	sw	t7,20(sp)
    4084:	44070000 	mfc1	a3,$f0
    4088:	8fa40054 	lw	a0,84(sp)
    408c:	02002825 	move	a1,s0
    4090:	3c064296 	lui	a2,0x4296
    4094:	0c000000 	jal	0 <EnTest_SetupAction>
    4098:	e7a00010 	swc1	$f0,16(sp)
    409c:	8618001c 	lh	t8,28(s0)
    40a0:	24010001 	li	at,1
    40a4:	5701001f 	bnel	t8,at,4124 <EnTest_Update+0xe0>
    40a8:	96090088 	lhu	t1,136(s0)
    40ac:	c600000c 	lwc1	$f0,12(s0)
    40b0:	c6040028 	lwc1	$f4,40(s0)
    40b4:	4600203e 	c.le.s	$f4,$f0
    40b8:	00000000 	nop
    40bc:	45020005 	bc1fl	40d4 <EnTest_Update+0x90>
    40c0:	c6080080 	lwc1	$f8,128(s0)
    40c4:	44803000 	mtc1	zero,$f6
    40c8:	e6000028 	swc1	$f0,40(s0)
    40cc:	e6060060 	swc1	$f6,96(s0)
    40d0:	c6080080 	lwc1	$f8,128(s0)
    40d4:	4600403e 	c.le.s	$f8,$f0
    40d8:	00000000 	nop
    40dc:	45020003 	bc1fl	40ec <EnTest_Update+0xa8>
    40e0:	8e1907cc 	lw	t9,1996(s0)
    40e4:	e6000080 	swc1	$f0,128(s0)
    40e8:	8e1907cc 	lw	t9,1996(s0)
    40ec:	02002025 	move	a0,s0
    40f0:	8fa50054 	lw	a1,84(sp)
    40f4:	0320f809 	jalr	t9
    40f8:	00000000 	nop
    40fc:	920207de 	lbu	v0,2014(s0)
    4100:	2c410005 	sltiu	at,v0,5
    4104:	10200067 	beqz	at,42a4 <L808638F4>
    4108:	00024080 	sll	t0,v0,0x2
    410c:	3c010000 	lui	at,0x0
    4110:	00280821 	addu	at,at,t0
    4114:	8c280000 	lw	t0,0(at)
    4118:	01000008 	jr	t0
    411c:	00000000 	nop
    4120:	96090088 	lhu	t1,136(s0)
    4124:	8fa40054 	lw	a0,84(sp)
    4128:	312a0002 	andi	t2,t1,0x2
    412c:	1140ffee 	beqz	t2,40e8 <EnTest_Update+0xa4>
    4130:	248407c0 	addiu	a0,a0,1984
    4134:	8e050078 	lw	a1,120(s0)
    4138:	9206007d 	lbu	a2,125(s0)
    413c:	0c000000 	jal	0 <EnTest_SetupAction>
    4140:	afa40038 	sw	a0,56(sp)
    4144:	24010005 	li	at,5
    4148:	1041000a 	beq	v0,at,4174 <EnTest_Update+0x130>
    414c:	8fa40038 	lw	a0,56(sp)
    4150:	2401000c 	li	at,12
    4154:	10410007 	beq	v0,at,4174 <EnTest_Update+0x130>
    4158:	00000000 	nop
    415c:	8e050078 	lw	a1,120(s0)
    4160:	0c000000 	jal	0 <EnTest_SetupAction>
    4164:	9206007d 	lbu	a2,125(s0)
    4168:	24010009 	li	at,9
    416c:	5441ffdf 	bnel	v0,at,40ec <EnTest_Update+0xa8>
    4170:	8e1907cc 	lw	t9,1996(s0)
    4174:	0c000000 	jal	0 <EnTest_SetupAction>
    4178:	02002025 	move	a0,s0
    417c:	100000b6 	b	4458 <L808638F4+0x1b4>
    4180:	8fbf002c 	lw	ra,44(sp)

00004184 <L808637D4>:
    4184:	3c040600 	lui	a0,0x600
    4188:	0c000000 	jal	0 <EnTest_SetupAction>
    418c:	24841c20 	addiu	a0,a0,7200
    4190:	44825000 	mtc1	v0,$f10
    4194:	3c014000 	lui	at,0x4000
    4198:	44810000 	mtc1	at,$f0
    419c:	46805420 	cvt.s.w	$f16,$f10
    41a0:	3c050600 	lui	a1,0x600
    41a4:	240b0002 	li	t3,2
    41a8:	44060000 	mfc1	a2,$f0
    41ac:	afab0014 	sw	t3,20(sp)
    41b0:	24a51c20 	addiu	a1,a1,7200
    41b4:	e7b00010 	swc1	$f16,16(sp)
    41b8:	260404a8 	addiu	a0,s0,1192
    41bc:	24070000 	li	a3,0
    41c0:	0c000000 	jal	0 <EnTest_SetupAction>
    41c4:	e7a00018 	swc1	$f0,24(sp)
    41c8:	3c0c0000 	lui	t4,0x0
    41cc:	258c0000 	addiu	t4,t4,0
    41d0:	92050188 	lbu	a1,392(s0)
    41d4:	8e0601a8 	lw	a2,424(s0)
    41d8:	8e0704c8 	lw	a3,1224(s0)
    41dc:	afac0010 	sw	t4,16(sp)
    41e0:	0c000000 	jal	0 <EnTest_SetupAction>
    41e4:	8fa40054 	lw	a0,84(sp)
    41e8:	920d07de 	lbu	t5,2014(s0)
    41ec:	25ae0001 	addiu	t6,t5,1
    41f0:	1000002c 	b	42a4 <L808638F4>
    41f4:	a20e07de 	sb	t6,2014(s0)

000041f8 <L80863848>:
    41f8:	0c000000 	jal	0 <EnTest_SetupAction>
    41fc:	260404a8 	addiu	a0,s0,1192
    4200:	3c070000 	lui	a3,0x0
    4204:	24e70000 	addiu	a3,a3,0
    4208:	26040188 	addiu	a0,s0,392
    420c:	8e0501a8 	lw	a1,424(s0)
    4210:	0c000000 	jal	0 <EnTest_SetupAction>
    4214:	8e0604c8 	lw	a2,1224(s0)
    4218:	10000023 	b	42a8 <L808638F4+0x4>
    421c:	92180114 	lbu	t8,276(s0)

00004220 <L80863870>:
    4220:	3c014080 	lui	at,0x4080
    4224:	44819000 	mtc1	at,$f18
    4228:	244f0001 	addiu	t7,v0,1
    422c:	a20f07de 	sb	t7,2014(s0)
    4230:	e61204d0 	swc1	$f18,1232(s0)

00004234 <L80863884>:
    4234:	3c013f80 	lui	at,0x3f80
    4238:	44816000 	mtc1	at,$f12
    423c:	c60004d0 	lwc1	$f0,1232(s0)
    4240:	44803000 	mtc1	zero,$f6
    4244:	460c0101 	sub.s	$f4,$f0,$f12
    4248:	46000086 	mov.s	$f2,$f0
    424c:	e60404d0 	swc1	$f4,1232(s0)
    4250:	c60004d0 	lwc1	$f0,1232(s0)
    4254:	4606003e 	c.le.s	$f0,$f6
    4258:	00000000 	nop
    425c:	45020004 	bc1fl	4270 <L80863884+0x3c>
    4260:	46020203 	div.s	$f8,$f0,$f2
    4264:	a20007de 	sb	zero,2014(s0)
    4268:	c60004d0 	lwc1	$f0,1232(s0)
    426c:	46020203 	div.s	$f8,$f0,$f2
    4270:	8e0504c8 	lw	a1,1224(s0)
    4274:	92040188 	lbu	a0,392(s0)
    4278:	8e0701a8 	lw	a3,424(s0)
    427c:	00a03025 	move	a2,a1
    4280:	46086281 	sub.s	$f10,$f12,$f8
    4284:	0c000000 	jal	0 <EnTest_SetupAction>
    4288:	e7aa0010 	swc1	$f10,16(sp)
    428c:	3c070000 	lui	a3,0x0
    4290:	24e70000 	addiu	a3,a3,0
    4294:	26040188 	addiu	a0,s0,392
    4298:	8e0501a8 	lw	a1,424(s0)
    429c:	0c000000 	jal	0 <EnTest_SetupAction>
    42a0:	8e0604c8 	lw	a2,1224(s0)

000042a4 <L808638F4>:
    42a4:	92180114 	lbu	t8,276(s0)
    42a8:	57000016 	bnezl	t8,4304 <L808638F4+0x60>
    42ac:	26050810 	addiu	a1,s0,2064
    42b0:	921900af 	lbu	t9,175(s0)
    42b4:	53200013 	beqzl	t9,4304 <L808638F4+0x60>
    42b8:	26050810 	addiu	a1,s0,2064
    42bc:	920207c8 	lbu	v0,1992(s0)
    42c0:	24010010 	li	at,16
    42c4:	260407d2 	addiu	a0,s0,2002
    42c8:	10410009 	beq	v0,at,42f0 <L808638F4+0x4c>
    42cc:	00002825 	move	a1,zero
    42d0:	24010017 	li	at,23
    42d4:	50410007 	beql	v0,at,42f4 <L808638F4+0x50>
    42d8:	24060001 	li	a2,1
    42dc:	02002025 	move	a0,s0
    42e0:	0c000000 	jal	0 <EnTest_SetupAction>
    42e4:	8fa50054 	lw	a1,84(sp)
    42e8:	10000006 	b	4304 <L808638F4+0x60>
    42ec:	26050810 	addiu	a1,s0,2064
    42f0:	24060001 	li	a2,1
    42f4:	240703e8 	li	a3,1000
    42f8:	0c000000 	jal	0 <EnTest_SetupAction>
    42fc:	afa00010 	sw	zero,16(sp)
    4300:	26050810 	addiu	a1,s0,2064
    4304:	afa50034 	sw	a1,52(sp)
    4308:	0c000000 	jal	0 <EnTest_SetupAction>
    430c:	02002025 	move	a0,s0
    4310:	8e080028 	lw	t0,40(s0)
    4314:	3c014234 	lui	at,0x4234
    4318:	8e090024 	lw	t1,36(s0)
    431c:	ae08003c 	sw	t0,60(s0)
    4320:	c610003c 	lwc1	$f16,60(s0)
    4324:	44819000 	mtc1	at,$f18
    4328:	ae090038 	sw	t1,56(s0)
    432c:	8e09002c 	lw	t1,44(s0)
    4330:	46128100 	add.s	$f4,$f16,$f18
    4334:	920a00af 	lbu	t2,175(s0)
    4338:	ae090040 	sw	t1,64(s0)
    433c:	3c010001 	lui	at,0x1
    4340:	e604003c 	swc1	$f4,60(s0)
    4344:	1d400003 	bgtz	t2,4354 <L808638F4+0xb0>
    4348:	8fa40054 	lw	a0,84(sp)
    434c:	920b0114 	lbu	t3,276(s0)
    4350:	1160001b 	beqz	t3,43c0 <L808638F4+0x11c>
    4354:	34211e60 	ori	at,at,0x1e60
    4358:	00812821 	addu	a1,a0,at
    435c:	afa50038 	sw	a1,56(sp)
    4360:	0c000000 	jal	0 <EnTest_SetupAction>
    4364:	8fa60034 	lw	a2,52(sp)
    4368:	920c07c8 	lbu	t4,1992(s0)
    436c:	2981000a 	slti	at,t4,10
    4370:	5420000d 	bnezl	at,43a8 <L808638F4+0x104>
    4374:	921807de 	lbu	t8,2014(s0)
    4378:	920d0114 	lbu	t5,276(s0)
    437c:	8fa40054 	lw	a0,84(sp)
    4380:	8fa50038 	lw	a1,56(sp)
    4384:	11a00005 	beqz	t5,439c <L808638F4+0xf8>
    4388:	00000000 	nop
    438c:	960e0112 	lhu	t6,274(s0)
    4390:	31cf4000 	andi	t7,t6,0x4000
    4394:	55e00004 	bnezl	t7,43a8 <L808638F4+0x104>
    4398:	921807de 	lbu	t8,2014(s0)
    439c:	0c000000 	jal	0 <EnTest_SetupAction>
    43a0:	8fa60034 	lw	a2,52(sp)
    43a4:	921807de 	lbu	t8,2014(s0)
    43a8:	8fa40054 	lw	a0,84(sp)
    43ac:	8fa50038 	lw	a1,56(sp)
    43b0:	53000004 	beqzl	t8,43c4 <L808638F4+0x120>
    43b4:	82190808 	lb	t9,2056(s0)
    43b8:	0c000000 	jal	0 <EnTest_SetupAction>
    43bc:	260608dc 	addiu	a2,s0,2268
    43c0:	82190808 	lb	t9,2056(s0)
    43c4:	5b200011 	blezl	t9,440c <L808638F4+0x168>
    43c8:	860b001c 	lh	t3,28(s0)
    43cc:	9202086c 	lbu	v0,2156(s0)
    43d0:	3c010001 	lui	at,0x1
    43d4:	02002025 	move	a0,s0
    43d8:	30480004 	andi	t0,v0,0x4
    43dc:	15000008 	bnez	t0,4400 <L808638F4+0x15c>
    43e0:	304afffb 	andi	t2,v0,0xfffb
    43e4:	8fa40054 	lw	a0,84(sp)
    43e8:	34211e60 	ori	at,at,0x1e60
    43ec:	2606085c 	addiu	a2,s0,2140
    43f0:	0c000000 	jal	0 <EnTest_SetupAction>
    43f4:	00812821 	addu	a1,a0,at
    43f8:	10000004 	b	440c <L808638F4+0x168>
    43fc:	860b001c 	lh	t3,28(s0)
    4400:	0c000000 	jal	0 <EnTest_SetupAction>
    4404:	a20a086c 	sb	t2,2156(s0)
    4408:	860b001c 	lh	t3,28(s0)
    440c:	8fac0054 	lw	t4,84(sp)
    4410:	55600011 	bnezl	t3,4458 <L808638F4+0x1b4>
    4414:	8fbf002c 	lw	ra,44(sp)
    4418:	918d1c27 	lbu	t5,7207(t4)
    441c:	3c180000 	lui	t8,0x0
    4420:	51a00008 	beqzl	t5,4444 <L808638F4+0x1a0>
    4424:	8e190004 	lw	t9,4(s0)
    4428:	8e0e0004 	lw	t6,4(s0)
    442c:	27180000 	addiu	t8,t8,0
    4430:	ae1800c0 	sw	t8,192(s0)
    4434:	35cf0081 	ori	t7,t6,0x81
    4438:	10000006 	b	4454 <L808638F4+0x1b0>
    443c:	ae0f0004 	sw	t7,4(s0)
    4440:	8e190004 	lw	t9,4(s0)
    4444:	2401ff7e 	li	at,-130
    4448:	ae0000c0 	sw	zero,192(s0)
    444c:	03214024 	and	t0,t9,at
    4450:	ae080004 	sw	t0,4(s0)
    4454:	8fbf002c 	lw	ra,44(sp)
    4458:	8fb00028 	lw	s0,40(sp)
    445c:	27bd0050 	addiu	sp,sp,80
    4460:	03e00008 	jr	ra
    4464:	00000000 	nop

00004468 <func_80863AB8>:
    4468:	27bdffb8 	addiu	sp,sp,-72
    446c:	24010006 	li	at,6
    4470:	afbf0014 	sw	ra,20(sp)
    4474:	afa40048 	sw	a0,72(sp)
    4478:	afa60050 	sw	a2,80(sp)
    447c:	14a10010 	bne	a1,at,44c0 <func_80863AB8+0x58>
    4480:	afa70054 	sw	a3,84(sp)
    4484:	8fa20058 	lw	v0,88(sp)
    4488:	8fa3005c 	lw	v1,92(sp)
    448c:	844e0000 	lh	t6,0(v0)
    4490:	846f07d2 	lh	t7,2002(v1)
    4494:	84590002 	lh	t9,2(v0)
    4498:	844b0004 	lh	t3,4(v0)
    449c:	01cfc021 	addu	t8,t6,t7
    44a0:	a4580000 	sh	t8,0(v0)
    44a4:	846907d0 	lh	t1,2000(v1)
    44a8:	03295023 	subu	t2,t9,t1
    44ac:	a44a0002 	sh	t2,2(v0)
    44b0:	846c07d4 	lh	t4,2004(v1)
    44b4:	016c6821 	addu	t5,t3,t4
    44b8:	1000005e 	b	4634 <func_80863AB8+0x1cc>
    44bc:	a44d0004 	sh	t5,4(v0)
    44c0:	2401000b 	li	at,11
    44c4:	14a1005b 	bne	a1,at,4634 <func_80863AB8+0x1cc>
    44c8:	8fae0048 	lw	t6,72(sp)
    44cc:	8dc50000 	lw	a1,0(t6)
    44d0:	3c060000 	lui	a2,0x0
    44d4:	24c60000 	addiu	a2,a2,0
    44d8:	27a4002c 	addiu	a0,sp,44
    44dc:	24070dfe 	li	a3,3582
    44e0:	0c000000 	jal	0 <EnTest_SetupAction>
    44e4:	afa5003c 	sw	a1,60(sp)
    44e8:	8fa8003c 	lw	t0,60(sp)
    44ec:	3c18e700 	lui	t8,0xe700
    44f0:	3c09fb00 	lui	t1,0xfb00
    44f4:	8d0302c0 	lw	v1,704(t0)
    44f8:	3c010001 	lui	at,0x1
    44fc:	246f0008 	addiu	t7,v1,8
    4500:	ad0f02c0 	sw	t7,704(t0)
    4504:	ac780000 	sw	t8,0(v1)
    4508:	ac600004 	sw	zero,4(v1)
    450c:	8d0302c0 	lw	v1,704(t0)
    4510:	24790008 	addiu	t9,v1,8
    4514:	ad1902c0 	sw	t9,704(t0)
    4518:	ac690000 	sw	t1,0(v1)
    451c:	8fa20048 	lw	v0,72(sp)
    4520:	00411021 	addu	v0,v0,at
    4524:	8c441de4 	lw	a0,7652(v0)
    4528:	afa2001c 	sw	v0,28(sp)
    452c:	afa30024 	sw	v1,36(sp)
    4530:	00800821 	move	at,a0
    4534:	00042140 	sll	a0,a0,0x5
    4538:	00812023 	subu	a0,a0,at
    453c:	00042080 	sll	a0,a0,0x2
    4540:	00812021 	addu	a0,a0,at
    4544:	00042100 	sll	a0,a0,0x4
    4548:	00042400 	sll	a0,a0,0x10
    454c:	0c000000 	jal	0 <EnTest_SetupAction>
    4550:	00042403 	sra	a0,a0,0x10
    4554:	3c01432f 	lui	at,0x432f
    4558:	44812000 	mtc1	at,$f4
    455c:	8fa2001c 	lw	v0,28(sp)
    4560:	240307d0 	li	v1,2000
    4564:	46040182 	mul.s	$f6,$f0,$f4
    4568:	4600320d 	trunc.w.s	$f8,$f6
    456c:	440b4000 	mfc1	t3,$f8
    4570:	00000000 	nop
    4574:	000b6400 	sll	t4,t3,0x10
    4578:	000c6c03 	sra	t5,t4,0x10
    457c:	05a20012 	bltzl	t5,45c8 <func_80863AB8+0x160>
    4580:	8c581de4 	lw	t8,7652(v0)
    4584:	8c4e1de4 	lw	t6,7652(v0)
    4588:	01c30019 	multu	t6,v1
    458c:	00002012 	mflo	a0
    4590:	00042400 	sll	a0,a0,0x10
    4594:	0c000000 	jal	0 <EnTest_SetupAction>
    4598:	00042403 	sra	a0,a0,0x10
    459c:	3c01432f 	lui	at,0x432f
    45a0:	44815000 	mtc1	at,$f10
    45a4:	00000000 	nop
    45a8:	460a0402 	mul.s	$f16,$f0,$f10
    45ac:	4600848d 	trunc.w.s	$f18,$f16
    45b0:	44029000 	mfc1	v0,$f18
    45b4:	00000000 	nop
    45b8:	00021400 	sll	v0,v0,0x10
    45bc:	10000011 	b	4604 <func_80863AB8+0x19c>
    45c0:	00021403 	sra	v0,v0,0x10
    45c4:	8c581de4 	lw	t8,7652(v0)
    45c8:	03030019 	multu	t8,v1
    45cc:	00002012 	mflo	a0
    45d0:	00042400 	sll	a0,a0,0x10
    45d4:	0c000000 	jal	0 <EnTest_SetupAction>
    45d8:	00042403 	sra	a0,a0,0x10
    45dc:	3c01432f 	lui	at,0x432f
    45e0:	44812000 	mtc1	at,$f4
    45e4:	00000000 	nop
    45e8:	46040182 	mul.s	$f6,$f0,$f4
    45ec:	4600320d 	trunc.w.s	$f8,$f6
    45f0:	44024000 	mfc1	v0,$f8
    45f4:	00000000 	nop
    45f8:	00021400 	sll	v0,v0,0x10
    45fc:	00021403 	sra	v0,v0,0x10
    4600:	00021023 	negu	v0,v0
    4604:	8fad0024 	lw	t5,36(sp)
    4608:	244a0050 	addiu	t2,v0,80
    460c:	000a5e00 	sll	t3,t2,0x18
    4610:	356c00ff 	ori	t4,t3,0xff
    4614:	adac0004 	sw	t4,4(t5)
    4618:	8fae0048 	lw	t6,72(sp)
    461c:	3c060000 	lui	a2,0x0
    4620:	24c60000 	addiu	a2,a2,0
    4624:	27a4002c 	addiu	a0,sp,44
    4628:	24070e03 	li	a3,3587
    462c:	0c000000 	jal	0 <EnTest_SetupAction>
    4630:	8dc50000 	lw	a1,0(t6)
    4634:	8fa3005c 	lw	v1,92(sp)
    4638:	846f001c 	lh	t7,28(v1)
    463c:	55e00009 	bnezl	t7,4664 <func_80863AB8+0x1fc>
    4640:	8fbf0014 	lw	ra,20(sp)
    4644:	8c780004 	lw	t8,4(v1)
    4648:	24010080 	li	at,128
    464c:	8fa90050 	lw	t1,80(sp)
    4650:	33190080 	andi	t9,t8,0x80
    4654:	53210003 	beql	t9,at,4664 <func_80863AB8+0x1fc>
    4658:	8fbf0014 	lw	ra,20(sp)
    465c:	ad200000 	sw	zero,0(t1)
    4660:	8fbf0014 	lw	ra,20(sp)
    4664:	27bd0048 	addiu	sp,sp,72
    4668:	00001025 	move	v0,zero
    466c:	03e00008 	jr	ra
    4670:	00000000 	nop

00004674 <func_80863CC4>:
    4674:	27bdff80 	addiu	sp,sp,-128
    4678:	afb00030 	sw	s0,48(sp)
    467c:	afa60088 	sw	a2,136(sp)
    4680:	8fb00090 	lw	s0,144(sp)
    4684:	8fb80088 	lw	t8,136(sp)
    4688:	afbf0034 	sw	ra,52(sp)
    468c:	afa40080 	sw	a0,128(sp)
    4690:	afa7008c 	sw	a3,140(sp)
    4694:	240effff 	li	t6,-1
    4698:	240f003c 	li	t7,60
    469c:	2419ffff 	li	t9,-1
    46a0:	afa50084 	sw	a1,132(sp)
    46a4:	afae007c 	sw	t6,124(sp)
    46a8:	afb90018 	sw	t9,24(sp)
    46ac:	afaf0010 	sw	t7,16(sp)
    46b0:	2407003c 	li	a3,60
    46b4:	00003025 	move	a2,zero
    46b8:	260407f0 	addiu	a0,s0,2032
    46bc:	0c000000 	jal	0 <EnTest_SetupAction>
    46c0:	afb80014 	sw	t8,20(sp)
    46c4:	8fa80084 	lw	t0,132(sp)
    46c8:	24010022 	li	at,34
    46cc:	3c040000 	lui	a0,0x0
    46d0:	1501003f 	bne	t0,at,47d0 <func_80863CC4+0x15c>
    46d4:	8fae0084 	lw	t6,132(sp)
    46d8:	260508a8 	addiu	a1,s0,2216
    46dc:	afa50044 	sw	a1,68(sp)
    46e0:	0c000000 	jal	0 <EnTest_SetupAction>
    46e4:	24840000 	addiu	a0,a0,0
    46e8:	3c040000 	lui	a0,0x0
    46ec:	2605089c 	addiu	a1,s0,2204
    46f0:	afa50048 	sw	a1,72(sp)
    46f4:	0c000000 	jal	0 <EnTest_SetupAction>
    46f8:	24840000 	addiu	a0,a0,0
    46fc:	3c040000 	lui	a0,0x0
    4700:	260508c0 	addiu	a1,s0,2240
    4704:	afa5003c 	sw	a1,60(sp)
    4708:	0c000000 	jal	0 <EnTest_SetupAction>
    470c:	24840000 	addiu	a0,a0,0
    4710:	3c040000 	lui	a0,0x0
    4714:	260708b4 	addiu	a3,s0,2228
    4718:	00e02825 	move	a1,a3
    471c:	afa70040 	sw	a3,64(sp)
    4720:	0c000000 	jal	0 <EnTest_SetupAction>
    4724:	24840000 	addiu	a0,a0,0
    4728:	8fa9003c 	lw	t1,60(sp)
    472c:	8fa70040 	lw	a3,64(sp)
    4730:	2604085c 	addiu	a0,s0,2140
    4734:	8fa50048 	lw	a1,72(sp)
    4738:	8fa60044 	lw	a2,68(sp)
    473c:	0c000000 	jal	0 <EnTest_SetupAction>
    4740:	afa90010 	sw	t1,16(sp)
    4744:	3c040000 	lui	a0,0x0
    4748:	24840000 	addiu	a0,a0,0
    474c:	0c000000 	jal	0 <EnTest_SetupAction>
    4750:	27a50070 	addiu	a1,sp,112
    4754:	3c040000 	lui	a0,0x0
    4758:	24840000 	addiu	a0,a0,0
    475c:	0c000000 	jal	0 <EnTest_SetupAction>
    4760:	27a50064 	addiu	a1,sp,100
    4764:	82020808 	lb	v0,2056(s0)
    4768:	18400010 	blez	v0,47ac <func_80863CC4+0x138>
    476c:	00000000 	nop
    4770:	860a001c 	lh	t2,28(s0)
    4774:	8fab0080 	lw	t3,128(sp)
    4778:	15400004 	bnez	t2,478c <func_80863CC4+0x118>
    477c:	00000000 	nop
    4780:	916c1c27 	lbu	t4,7207(t3)
    4784:	11800009 	beqz	t4,47ac <func_80863CC4+0x138>
    4788:	00000000 	nop
    478c:	0c000000 	jal	0 <EnTest_SetupAction>
    4790:	8e04080c 	lw	a0,2060(s0)
    4794:	00402025 	move	a0,v0
    4798:	27a50070 	addiu	a1,sp,112
    479c:	0c000000 	jal	0 <EnTest_SetupAction>
    47a0:	27a60064 	addiu	a2,sp,100
    47a4:	10000051 	b	48ec <func_80863CC4+0x278>
    47a8:	861907e0 	lh	t9,2016(s0)
    47ac:	0442004f 	bltzl	v0,48ec <func_80863CC4+0x278>
    47b0:	861907e0 	lh	t9,2016(s0)
    47b4:	0c000000 	jal	0 <EnTest_SetupAction>
    47b8:	8e04080c 	lw	a0,2060(s0)
    47bc:	0c000000 	jal	0 <EnTest_SetupAction>
    47c0:	00402025 	move	a0,v0
    47c4:	240dffff 	li	t5,-1
    47c8:	10000047 	b	48e8 <func_80863CC4+0x274>
    47cc:	a20d0808 	sb	t5,2056(s0)
    47d0:	2401001b 	li	at,27
    47d4:	15c10017 	bne	t6,at,4834 <func_80863CC4+0x1c0>
    47d8:	3c070000 	lui	a3,0x0
    47dc:	920f07de 	lbu	t7,2014(s0)
    47e0:	3c040000 	lui	a0,0x0
    47e4:	24840000 	addiu	a0,a0,0
    47e8:	11e00012 	beqz	t7,4834 <func_80863CC4+0x1c0>
    47ec:	00000000 	nop
    47f0:	0c000000 	jal	0 <EnTest_SetupAction>
    47f4:	27a50064 	addiu	a1,sp,100
    47f8:	c7a40064 	lwc1	$f4,100(sp)
    47fc:	4600218d 	trunc.w.s	$f6,$f4
    4800:	44193000 	mfc1	t9,$f6
    4804:	00000000 	nop
    4808:	a6190922 	sh	t9,2338(s0)
    480c:	c7a80068 	lwc1	$f8,104(sp)
    4810:	4600428d 	trunc.w.s	$f10,$f8
    4814:	44095000 	mfc1	t1,$f10
    4818:	00000000 	nop
    481c:	a6090924 	sh	t1,2340(s0)
    4820:	c7b0006c 	lwc1	$f16,108(sp)
    4824:	4600848d 	trunc.w.s	$f18,$f16
    4828:	440b9000 	mfc1	t3,$f18
    482c:	1000002e 	b	48e8 <func_80863CC4+0x274>
    4830:	a60b0926 	sh	t3,2342(s0)
    4834:	24e70000 	addiu	a3,a3,0
    4838:	240c0037 	li	t4,55
    483c:	afac0010 	sw	t4,16(sp)
    4840:	afa70014 	sw	a3,20(sp)
    4844:	02002025 	move	a0,s0
    4848:	8fa50084 	lw	a1,132(sp)
    484c:	0c000000 	jal	0 <EnTest_SetupAction>
    4850:	24060030 	li	a2,48
    4854:	8fad0084 	lw	t5,132(sp)
    4858:	24010030 	li	at,48
    485c:	11a10003 	beq	t5,at,486c <func_80863CC4+0x1f8>
    4860:	24010037 	li	at,55
    4864:	55a10021 	bnel	t5,at,48ec <func_80863CC4+0x278>
    4868:	861907e0 	lh	t9,2016(s0)
    486c:	920207c8 	lbu	v0,1992(s0)
    4870:	24010015 	li	at,21
    4874:	10410003 	beq	v0,at,4884 <func_80863CC4+0x210>
    4878:	24010016 	li	at,22
    487c:	5441001b 	bnel	v0,at,48ec <func_80863CC4+0x278>
    4880:	861907e0 	lh	t9,2016(s0)
    4884:	44802000 	mtc1	zero,$f4
    4888:	c6060068 	lwc1	$f6,104(s0)
    488c:	3c040000 	lui	a0,0x0
    4890:	24840000 	addiu	a0,a0,0
    4894:	46062032 	c.eq.s	$f4,$f6
    4898:	00000000 	nop
    489c:	45030013 	bc1tl	48ec <func_80863CC4+0x278>
    48a0:	861907e0 	lh	t9,2016(s0)
    48a4:	0c000000 	jal	0 <EnTest_SetupAction>
    48a8:	27a50064 	addiu	a1,sp,100
    48ac:	3c014100 	lui	at,0x4100
    48b0:	44814000 	mtc1	at,$f8
    48b4:	240e0001 	li	t6,1
    48b8:	240f0064 	li	t7,100
    48bc:	2418000f 	li	t8,15
    48c0:	afb8001c 	sw	t8,28(sp)
    48c4:	afaf0018 	sw	t7,24(sp)
    48c8:	afae0010 	sw	t6,16(sp)
    48cc:	8fa40080 	lw	a0,128(sp)
    48d0:	02002825 	move	a1,s0
    48d4:	27a60064 	addiu	a2,sp,100
    48d8:	3c074120 	lui	a3,0x4120
    48dc:	afa00020 	sw	zero,32(sp)
    48e0:	0c000000 	jal	0 <EnTest_SetupAction>
    48e4:	e7a80014 	swc1	$f8,20(sp)
    48e8:	861907e0 	lh	t9,2016(s0)
    48ec:	8fa80084 	lw	t0,132(sp)
    48f0:	1320003c 	beqz	t9,49e4 <L80863FCC+0x68>
    48f4:	2509fff5 	addiu	t1,t0,-11
    48f8:	2d210032 	sltiu	at,t1,50
    48fc:	1020001f 	beqz	at,497c <L80863FCC>
    4900:	00094880 	sll	t1,t1,0x2
    4904:	3c010000 	lui	at,0x0
    4908:	00290821 	addu	at,at,t1
    490c:	8c290000 	lw	t1,0(at)
    4910:	01200008 	jr	t1
    4914:	00000000 	nop

00004918 <L80863F68>:
    4918:	10000018 	b	497c <L80863FCC>
    491c:	afa0007c 	sw	zero,124(sp)

00004920 <L80863F70>:
    4920:	240a0001 	li	t2,1
    4924:	10000015 	b	497c <L80863FCC>
    4928:	afaa007c 	sw	t2,124(sp)

0000492c <L80863F7C>:
    492c:	240b0002 	li	t3,2
    4930:	10000012 	b	497c <L80863FCC>
    4934:	afab007c 	sw	t3,124(sp)

00004938 <L80863F88>:
    4938:	240c0003 	li	t4,3
    493c:	1000000f 	b	497c <L80863FCC>
    4940:	afac007c 	sw	t4,124(sp)

00004944 <L80863F94>:
    4944:	240d0004 	li	t5,4
    4948:	1000000c 	b	497c <L80863FCC>
    494c:	afad007c 	sw	t5,124(sp)

00004950 <L80863FA0>:
    4950:	240e0005 	li	t6,5
    4954:	10000009 	b	497c <L80863FCC>
    4958:	afae007c 	sw	t6,124(sp)

0000495c <L80863FAC>:
    495c:	240f0006 	li	t7,6
    4960:	10000006 	b	497c <L80863FCC>
    4964:	afaf007c 	sw	t7,124(sp)

00004968 <L80863FB8>:
    4968:	24180007 	li	t8,7
    496c:	10000003 	b	497c <L80863FCC>
    4970:	afb8007c 	sw	t8,124(sp)

00004974 <L80863FC4>:
    4974:	24190008 	li	t9,8
    4978:	afb9007c 	sw	t9,124(sp)

0000497c <L80863FCC>:
    497c:	8fa8007c 	lw	t0,124(sp)
    4980:	3c040000 	lui	a0,0x0
    4984:	24840000 	addiu	a0,a0,0
    4988:	05020017 	bltzl	t0,49e8 <L80863FCC+0x6c>
    498c:	8fbf0034 	lw	ra,52(sp)
    4990:	0c000000 	jal	0 <EnTest_SetupAction>
    4994:	27a50050 	addiu	a1,sp,80
    4998:	c7aa0050 	lwc1	$f10,80(sp)
    499c:	8fa9007c 	lw	t1,124(sp)
    49a0:	4600540d 	trunc.w.s	$f16,$f10
    49a4:	00095080 	sll	t2,t1,0x2
    49a8:	01495023 	subu	t2,t2,t1
    49ac:	000a5040 	sll	t2,t2,0x1
    49b0:	440c8000 	mfc1	t4,$f16
    49b4:	020a1021 	addu	v0,s0,t2
    49b8:	a44c014c 	sh	t4,332(v0)
    49bc:	c7b20054 	lwc1	$f18,84(sp)
    49c0:	4600910d 	trunc.w.s	$f4,$f18
    49c4:	440e2000 	mfc1	t6,$f4
    49c8:	00000000 	nop
    49cc:	a44e014e 	sh	t6,334(v0)
    49d0:	c7a60058 	lwc1	$f6,88(sp)
    49d4:	4600320d 	trunc.w.s	$f8,$f6
    49d8:	44184000 	mfc1	t8,$f8
    49dc:	00000000 	nop
    49e0:	a4580150 	sh	t8,336(v0)
    49e4:	8fbf0034 	lw	ra,52(sp)
    49e8:	8fb00030 	lw	s0,48(sp)
    49ec:	27bd0080 	addiu	sp,sp,128
    49f0:	03e00008 	jr	ra
    49f4:	00000000 	nop

000049f8 <EnTest_Draw>:
    49f8:	27bdffc0 	addiu	sp,sp,-64
    49fc:	afb00038 	sw	s0,56(sp)
    4a00:	00808025 	move	s0,a0
    4a04:	afbf003c 	sw	ra,60(sp)
    4a08:	afa50044 	sw	a1,68(sp)
    4a0c:	0c000000 	jal	0 <EnTest_SetupAction>
    4a10:	8ca40000 	lw	a0,0(a1)
    4a14:	02002025 	move	a0,s0
    4a18:	8fa50044 	lw	a1,68(sp)
    4a1c:	0c000000 	jal	0 <EnTest_SetupAction>
    4a20:	24060001 	li	a2,1
    4a24:	860f001c 	lh	t7,28(s0)
    4a28:	3c070000 	lui	a3,0x0
    4a2c:	24e70000 	addiu	a3,a3,0
    4a30:	29e10004 	slti	at,t7,4
    4a34:	14200003 	bnez	at,4a44 <EnTest_Draw+0x4c>
    4a38:	8fa40044 	lw	a0,68(sp)
    4a3c:	8e18011c 	lw	t8,284(s0)
    4a40:	17000007 	bnez	t8,4a60 <EnTest_Draw+0x68>
    4a44:	3c190000 	lui	t9,0x0
    4a48:	27390000 	addiu	t9,t9,0
    4a4c:	8e05018c 	lw	a1,396(s0)
    4a50:	8e0601a8 	lw	a2,424(s0)
    4a54:	afb00014 	sw	s0,20(sp)
    4a58:	0c000000 	jal	0 <EnTest_SetupAction>
    4a5c:	afb90010 	sw	t9,16(sp)
    4a60:	860807e0 	lh	t0,2016(s0)
    4a64:	51000024 	beqzl	t0,4af8 <EnTest_Draw+0x100>
    4a68:	8fbf003c 	lw	ra,60(sp)
    4a6c:	860b07e0 	lh	t3,2016(s0)
    4a70:	92090114 	lbu	t1,276(s0)
    4a74:	02002825 	move	a1,s0
    4a78:	256cffff 	addiu	t4,t3,-1
    4a7c:	a60c07e0 	sh	t4,2016(s0)
    4a80:	860307e0 	lh	v1,2016(s0)
    4a84:	252a0001 	addiu	t2,t1,1
    4a88:	a20a0114 	sb	t2,276(s0)
    4a8c:	306d0003 	andi	t5,v1,0x3
    4a90:	15a00018 	bnez	t5,4af4 <EnTest_Draw+0xfc>
    4a94:	00031083 	sra	v0,v1,0x2
    4a98:	00027080 	sll	t6,v0,0x2
    4a9c:	01c27023 	subu	t6,t6,v0
    4aa0:	3c013fc0 	lui	at,0x3fc0
    4aa4:	44812000 	mtc1	at,$f4
    4aa8:	000e7040 	sll	t6,t6,0x1
    4aac:	020e3021 	addu	a2,s0,t6
    4ab0:	240f0096 	li	t7,150
    4ab4:	24180096 	li	t8,150
    4ab8:	241900fa 	li	t9,250
    4abc:	240800eb 	li	t0,235
    4ac0:	240900f5 	li	t1,245
    4ac4:	240a00ff 	li	t2,255
    4ac8:	afaa0024 	sw	t2,36(sp)
    4acc:	afa90020 	sw	t1,32(sp)
    4ad0:	afa8001c 	sw	t0,28(sp)
    4ad4:	afb90018 	sw	t9,24(sp)
    4ad8:	afb80014 	sw	t8,20(sp)
    4adc:	afaf0010 	sw	t7,16(sp)
    4ae0:	24c6014c 	addiu	a2,a2,332
    4ae4:	8fa40044 	lw	a0,68(sp)
    4ae8:	24070096 	li	a3,150
    4aec:	0c000000 	jal	0 <EnTest_SetupAction>
    4af0:	e7a40028 	swc1	$f4,40(sp)
    4af4:	8fbf003c 	lw	ra,60(sp)
    4af8:	8fb00038 	lw	s0,56(sp)
    4afc:	27bd0040 	addiu	sp,sp,64
    4b00:	03e00008 	jr	ra
    4b04:	00000000 	nop

00004b08 <func_80864158>:
    4b08:	27bdffe8 	addiu	sp,sp,-24
    4b0c:	afa5001c 	sw	a1,28(sp)
    4b10:	afbf0014 	sw	ra,20(sp)
    4b14:	00803825 	move	a3,a0
    4b18:	3c050601 	lui	a1,0x601
    4b1c:	24a5e2b0 	addiu	a1,a1,-7504
    4b20:	afa70018 	sw	a3,24(sp)
    4b24:	24840188 	addiu	a0,a0,392
    4b28:	0c000000 	jal	0 <EnTest_SetupAction>
    4b2c:	3c06c000 	lui	a2,0xc000
    4b30:	8fa70018 	lw	a3,24(sp)
    4b34:	c7a4001c 	lwc1	$f4,28(sp)
    4b38:	84ee00b6 	lh	t6,182(a3)
    4b3c:	e4e40068 	swc1	$f4,104(a3)
    4b40:	25cf3fff 	addiu	t7,t6,16383
    4b44:	0c000000 	jal	0 <EnTest_SetupAction>
    4b48:	a4ef0032 	sh	t7,50(a3)
    4b4c:	3c0141a0 	lui	at,0x41a0
    4b50:	44813000 	mtc1	at,$f6
    4b54:	3c014170 	lui	at,0x4170
    4b58:	44815000 	mtc1	at,$f10
    4b5c:	46060202 	mul.s	$f8,$f0,$f6
    4b60:	8fa40018 	lw	a0,24(sp)
    4b64:	24080018 	li	t0,24
    4b68:	3c050000 	lui	a1,0x0
    4b6c:	24a50000 	addiu	a1,a1,0
    4b70:	a08807c8 	sb	t0,1992(a0)
    4b74:	460a4400 	add.s	$f16,$f8,$f10
    4b78:	4600848d 	trunc.w.s	$f18,$f16
    4b7c:	44199000 	mfc1	t9,$f18
    4b80:	0c000000 	jal	0 <EnTest_SetupAction>
    4b84:	ac9907e8 	sw	t9,2024(a0)
    4b88:	8fbf0014 	lw	ra,20(sp)
    4b8c:	27bd0018 	addiu	sp,sp,24
    4b90:	03e00008 	jr	ra
    4b94:	00000000 	nop

00004b98 <func_808641E8>:
    4b98:	27bdffd8 	addiu	sp,sp,-40
    4b9c:	afbf0014 	sw	ra,20(sp)
    4ba0:	afa40028 	sw	a0,40(sp)
    4ba4:	afa5002c 	sw	a1,44(sp)
    4ba8:	0c000000 	jal	0 <EnTest_SetupAction>
    4bac:	3c064396 	lui	a2,0x4396
    4bb0:	8fa7002c 	lw	a3,44(sp)
    4bb4:	104000bd 	beqz	v0,4eac <func_808641E8+0x314>
    4bb8:	00402825 	move	a1,v0
    4bbc:	00e02025 	move	a0,a3
    4bc0:	afa20024 	sw	v0,36(sp)
    4bc4:	0c000000 	jal	0 <EnTest_SetupAction>
    4bc8:	afa7002c 	sw	a3,44(sp)
    4bcc:	8fa7002c 	lw	a3,44(sp)
    4bd0:	00004025 	move	t0,zero
    4bd4:	94e400b6 	lhu	a0,182(a3)
    4bd8:	94ef0088 	lhu	t7,136(a3)
    4bdc:	00441823 	subu	v1,v0,a0
    4be0:	00031c00 	sll	v1,v1,0x10
    4be4:	31f80008 	andi	t8,t7,0x8
    4be8:	13000008 	beqz	t8,4c0c <func_808641E8+0x74>
    4bec:	00031c03 	sra	v1,v1,0x10
    4bf0:	94f9007e 	lhu	t9,126(a3)
    4bf4:	24080001 	li	t0,1
    4bf8:	03243023 	subu	a2,t9,a0
    4bfc:	00063400 	sll	a2,a2,0x10
    4c00:	00063403 	sra	a2,a2,0x10
    4c04:	10000001 	b	4c0c <func_808641E8+0x74>
    4c08:	a7a60020 	sh	a2,32(sp)
    4c0c:	8fa50024 	lw	a1,36(sp)
    4c10:	24e40024 	addiu	a0,a3,36
    4c14:	a7a30022 	sh	v1,34(sp)
    4c18:	afa7002c 	sw	a3,44(sp)
    4c1c:	a7a8001e 	sh	t0,30(sp)
    4c20:	0c000000 	jal	0 <EnTest_SetupAction>
    4c24:	24a50024 	addiu	a1,a1,36
    4c28:	3c014348 	lui	at,0x4348
    4c2c:	44812000 	mtc1	at,$f4
    4c30:	8fa7002c 	lw	a3,44(sp)
    4c34:	87a30022 	lh	v1,34(sp)
    4c38:	4604003c 	c.lt.s	$f0,$f4
    4c3c:	87a60020 	lh	a2,32(sp)
    4c40:	87a8001e 	lh	t0,30(sp)
    4c44:	8fa40028 	lw	a0,40(sp)
    4c48:	4500002c 	bc1f	4cfc <func_808641E8+0x164>
    4c4c:	00e02825 	move	a1,a3
    4c50:	8fa40028 	lw	a0,40(sp)
    4c54:	00e02825 	move	a1,a3
    4c58:	a7a30022 	sh	v1,34(sp)
    4c5c:	0c000000 	jal	0 <EnTest_SetupAction>
    4c60:	afa7002c 	sw	a3,44(sp)
    4c64:	87a30022 	lh	v1,34(sp)
    4c68:	1040000a 	beqz	v0,4c94 <func_808641E8+0xfc>
    4c6c:	8fa7002c 	lw	a3,44(sp)
    4c70:	8fa90024 	lw	t1,36(sp)
    4c74:	24010066 	li	at,102
    4c78:	852a0000 	lh	t2,0(t1)
    4c7c:	15410005 	bne	t2,at,4c94 <func_808641E8+0xfc>
    4c80:	00000000 	nop
    4c84:	0c000000 	jal	0 <EnTest_SetupAction>
    4c88:	00e02025 	move	a0,a3
    4c8c:	10000088 	b	4eb0 <func_808641E8+0x318>
    4c90:	24020001 	li	v0,1
    4c94:	04600003 	bltz	v1,4ca4 <func_808641E8+0x10c>
    4c98:	00031023 	negu	v0,v1
    4c9c:	10000001 	b	4ca4 <func_808641E8+0x10c>
    4ca0:	00601025 	move	v0,v1
    4ca4:	28412000 	slti	at,v0,8192
    4ca8:	10200005 	beqz	at,4cc0 <func_808641E8+0x128>
    4cac:	00000000 	nop
    4cb0:	0c000000 	jal	0 <EnTest_SetupAction>
    4cb4:	00e02025 	move	a0,a3
    4cb8:	1000007d 	b	4eb0 <func_808641E8+0x318>
    4cbc:	24020001 	li	v0,1
    4cc0:	04600003 	bltz	v1,4cd0 <func_808641E8+0x138>
    4cc4:	00031023 	negu	v0,v1
    4cc8:	10000001 	b	4cd0 <func_808641E8+0x138>
    4ccc:	00601025 	move	v0,v1
    4cd0:	28416000 	slti	at,v0,24576
    4cd4:	10200005 	beqz	at,4cec <func_808641E8+0x154>
    4cd8:	00000000 	nop
    4cdc:	0c000000 	jal	0 <EnTest_SetupAction>
    4ce0:	00e02025 	move	a0,a3
    4ce4:	10000072 	b	4eb0 <func_808641E8+0x318>
    4ce8:	24020001 	li	v0,1
    4cec:	0c000000 	jal	0 <EnTest_SetupAction>
    4cf0:	00e02025 	move	a0,a3
    4cf4:	1000006e 	b	4eb0 <func_808641E8+0x318>
    4cf8:	24020001 	li	v0,1
    4cfc:	a7a30022 	sh	v1,34(sp)
    4d00:	a7a60020 	sh	a2,32(sp)
    4d04:	afa7002c 	sw	a3,44(sp)
    4d08:	0c000000 	jal	0 <EnTest_SetupAction>
    4d0c:	a7a8001e 	sh	t0,30(sp)
    4d10:	87a30022 	lh	v1,34(sp)
    4d14:	87a60020 	lh	a2,32(sp)
    4d18:	8fa7002c 	lw	a3,44(sp)
    4d1c:	1040000a 	beqz	v0,4d48 <func_808641E8+0x1b0>
    4d20:	87a8001e 	lh	t0,30(sp)
    4d24:	8fab0024 	lw	t3,36(sp)
    4d28:	24010066 	li	at,102
    4d2c:	856c0000 	lh	t4,0(t3)
    4d30:	15810005 	bne	t4,at,4d48 <func_808641E8+0x1b0>
    4d34:	00000000 	nop
    4d38:	0c000000 	jal	0 <EnTest_SetupAction>
    4d3c:	00e02025 	move	a0,a3
    4d40:	1000005b 	b	4eb0 <func_808641E8+0x318>
    4d44:	24020001 	li	v0,1
    4d48:	04600003 	bltz	v1,4d58 <func_808641E8+0x1c0>
    4d4c:	00031023 	negu	v0,v1
    4d50:	10000001 	b	4d58 <func_808641E8+0x1c0>
    4d54:	00601025 	move	v0,v1
    4d58:	28412000 	slti	at,v0,8192
    4d5c:	14200008 	bnez	at,4d80 <func_808641E8+0x1e8>
    4d60:	8fad0028 	lw	t5,40(sp)
    4d64:	04600003 	bltz	v1,4d74 <func_808641E8+0x1dc>
    4d68:	00031023 	negu	v0,v1
    4d6c:	10000001 	b	4d74 <func_808641E8+0x1dc>
    4d70:	00601025 	move	v0,v1
    4d74:	28416001 	slti	at,v0,24577
    4d78:	14200021 	bnez	at,4e00 <func_808641E8+0x268>
    4d7c:	00000000 	nop
    4d80:	3c030001 	lui	v1,0x1
    4d84:	006d1821 	addu	v1,v1,t5
    4d88:	8c631de4 	lw	v1,7652(v1)
    4d8c:	28c12001 	slti	at,a2,8193
    4d90:	00e02025 	move	a0,a3
    4d94:	30630001 	andi	v1,v1,0x1
    4d98:	00031c00 	sll	v1,v1,0x10
    4d9c:	11000007 	beqz	t0,4dbc <func_808641E8+0x224>
    4da0:	00031c03 	sra	v1,v1,0x10
    4da4:	14200005 	bnez	at,4dbc <func_808641E8+0x224>
    4da8:	28c16000 	slti	at,a2,24576
    4dac:	10200003 	beqz	at,4dbc <func_808641E8+0x224>
    4db0:	00000000 	nop
    4db4:	10000008 	b	4dd8 <func_808641E8+0x240>
    4db8:	00001825 	move	v1,zero
    4dbc:	11000006 	beqz	t0,4dd8 <func_808641E8+0x240>
    4dc0:	28c1e000 	slti	at,a2,-8192
    4dc4:	10200004 	beqz	at,4dd8 <func_808641E8+0x240>
    4dc8:	28c1a001 	slti	at,a2,-24575
    4dcc:	14200002 	bnez	at,4dd8 <func_808641E8+0x240>
    4dd0:	00000000 	nop
    4dd4:	24030001 	li	v1,1
    4dd8:	10600005 	beqz	v1,4df0 <func_808641E8+0x258>
    4ddc:	3c054080 	lui	a1,0x4080
    4de0:	0c000000 	jal	0 <EnTest_SetupAction>
    4de4:	00e02025 	move	a0,a3
    4de8:	10000031 	b	4eb0 <func_808641E8+0x318>
    4dec:	24020001 	li	v0,1
    4df0:	0c000000 	jal	0 <EnTest_SetupAction>
    4df4:	3c05c080 	lui	a1,0xc080
    4df8:	1000002d 	b	4eb0 <func_808641E8+0x318>
    4dfc:	24020001 	li	v0,1
    4e00:	04600003 	bltz	v1,4e10 <func_808641E8+0x278>
    4e04:	00031023 	negu	v0,v1
    4e08:	10000001 	b	4e10 <func_808641E8+0x278>
    4e0c:	00601025 	move	v0,v1
    4e10:	28416000 	slti	at,v0,24576
    4e14:	10200023 	beqz	at,4ea4 <func_808641E8+0x30c>
    4e18:	8fae0028 	lw	t6,40(sp)
    4e1c:	3c030001 	lui	v1,0x1
    4e20:	006e1821 	addu	v1,v1,t6
    4e24:	8c631de4 	lw	v1,7652(v1)
    4e28:	30630001 	andi	v1,v1,0x1
    4e2c:	00031c00 	sll	v1,v1,0x10
    4e30:	1100000a 	beqz	t0,4e5c <func_808641E8+0x2c4>
    4e34:	00031c03 	sra	v1,v1,0x10
    4e38:	04c00003 	bltz	a2,4e48 <func_808641E8+0x2b0>
    4e3c:	00061023 	negu	v0,a2
    4e40:	10000001 	b	4e48 <func_808641E8+0x2b0>
    4e44:	00c01025 	move	v0,a2
    4e48:	28416001 	slti	at,v0,24577
    4e4c:	14200003 	bnez	at,4e5c <func_808641E8+0x2c4>
    4e50:	00000000 	nop
    4e54:	1000000b 	b	4e84 <func_808641E8+0x2ec>
    4e58:	00001825 	move	v1,zero
    4e5c:	11000009 	beqz	t0,4e84 <func_808641E8+0x2ec>
    4e60:	00000000 	nop
    4e64:	04c00003 	bltz	a2,4e74 <func_808641E8+0x2dc>
    4e68:	00061023 	negu	v0,a2
    4e6c:	10000001 	b	4e74 <func_808641E8+0x2dc>
    4e70:	00c01025 	move	v0,a2
    4e74:	28412000 	slti	at,v0,8192
    4e78:	10200002 	beqz	at,4e84 <func_808641E8+0x2ec>
    4e7c:	00000000 	nop
    4e80:	24030001 	li	v1,1
    4e84:	10600005 	beqz	v1,4e9c <func_808641E8+0x304>
    4e88:	00000000 	nop
    4e8c:	0c000000 	jal	0 <EnTest_SetupAction>
    4e90:	00e02025 	move	a0,a3
    4e94:	10000006 	b	4eb0 <func_808641E8+0x318>
    4e98:	24020001 	li	v0,1
    4e9c:	0c000000 	jal	0 <EnTest_SetupAction>
    4ea0:	00e02025 	move	a0,a3
    4ea4:	10000002 	b	4eb0 <func_808641E8+0x318>
    4ea8:	24020001 	li	v0,1
    4eac:	00001025 	move	v0,zero
    4eb0:	8fbf0014 	lw	ra,20(sp)
    4eb4:	27bd0028 	addiu	sp,sp,40
    4eb8:	03e00008 	jr	ra
    4ebc:	00000000 	nop
