
build/src/overlays/actors/ovl_En_Du/z_en_du.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809FDC30>:
       0:	03e00008 	jr	ra
       4:	ac850190 	sw	a1,400(a0)

00000008 <func_809FDC38>:
       8:	27bdffe8 	addiu	sp,sp,-24
       c:	afbf0014 	sw	ra,20(sp)
      10:	afa5001c 	sw	a1,28(sp)
      14:	0c000000 	jal	0 <func_809FDC30>
      18:	24050021 	li	a1,33
      1c:	10400003 	beqz	v0,2c <func_809FDC38+0x24>
      20:	3043ffff 	andi	v1,v0,0xffff
      24:	1000001d 	b	9c <func_809FDC38+0x94>
      28:	00601025 	move	v0,v1
      2c:	3c020000 	lui	v0,0x0
      30:	24420000 	addiu	v0,v0,0
      34:	3c0f0000 	lui	t7,0x0
      38:	8def0008 	lw	t7,8(t7)
      3c:	8c4e00a0 	lw	t6,160(v0)
      40:	3c190000 	lui	t9,0x0
      44:	93390002 	lbu	t9,2(t9)
      48:	01cfc024 	and	t8,t6,t7
      4c:	3c090000 	lui	t1,0x0
      50:	03384007 	srav	t0,t8,t9
      54:	5100000b 	beqzl	t0,84 <func_809FDC38+0x7c>
      58:	944c0f1a 	lhu	t4,3866(v0)
      5c:	8d29004c 	lw	t1,76(t1)
      60:	8c4a00a4 	lw	t2,164(v0)
      64:	012a5824 	and	t3,t1,t2
      68:	11600003 	beqz	t3,78 <func_809FDC38+0x70>
      6c:	00000000 	nop
      70:	1000000a 	b	9c <func_809FDC38+0x94>
      74:	2402301e 	li	v0,12318
      78:	10000008 	b	9c <func_809FDC38+0x94>
      7c:	2402301d 	li	v0,12317
      80:	944c0f1a 	lhu	t4,3866(v0)
      84:	2402301a 	li	v0,12314
      88:	318d0008 	andi	t5,t4,0x8
      8c:	11a00003 	beqz	t5,9c <func_809FDC38+0x94>
      90:	00000000 	nop
      94:	10000001 	b	9c <func_809FDC38+0x94>
      98:	2402301b 	li	v0,12315
      9c:	8fbf0014 	lw	ra,20(sp)
      a0:	27bd0018 	addiu	sp,sp,24
      a4:	03e00008 	jr	ra
      a8:	00000000 	nop

000000ac <func_809FDCDC>:
      ac:	27bdffe8 	addiu	sp,sp,-24
      b0:	afbf0014 	sw	ra,20(sp)
      b4:	afa40018 	sw	a0,24(sp)
      b8:	afa5001c 	sw	a1,28(sp)
      bc:	0c000000 	jal	0 <func_809FDC30>
      c0:	248420d8 	addiu	a0,a0,8408
      c4:	2c41000a 	sltiu	at,v0,10
      c8:	10200029 	beqz	at,170 <L809FDDA0>
      cc:	00027080 	sll	t6,v0,0x2
      d0:	3c010000 	lui	at,0x0
      d4:	002e0821 	addu	at,at,t6
      d8:	8c2e0000 	lw	t6,0(at)
      dc:	01c00008 	jr	t6
      e0:	00000000 	nop

000000e4 <L809FDD14>:
      e4:	8faf001c 	lw	t7,28(sp)
      e8:	2401301a 	li	at,12314
      ec:	95e2010e 	lhu	v0,270(t7)
      f0:	10410009 	beq	v0,at,118 <L809FDD14+0x34>
      f4:	2401301c 	li	at,12316
      f8:	1041000e 	beq	v0,at,134 <L809FDD14+0x50>
      fc:	2401301f 	li	at,12319
     100:	1041000c 	beq	v0,at,134 <L809FDD14+0x50>
     104:	24013020 	li	at,12320
     108:	1041000c 	beq	v0,at,13c <L809FDD14+0x58>
     10c:	00000000 	nop
     110:	10000018 	b	174 <L809FDDA0+0x4>
     114:	00001025 	move	v0,zero
     118:	3c020000 	lui	v0,0x0
     11c:	24420000 	addiu	v0,v0,0
     120:	94580f1a 	lhu	t8,3866(v0)
     124:	37190008 	ori	t9,t8,0x8
     128:	a4590f1a 	sh	t9,3866(v0)
     12c:	10000011 	b	174 <L809FDDA0+0x4>
     130:	00001025 	move	v0,zero
     134:	1000000f 	b	174 <L809FDDA0+0x4>
     138:	24020002 	li	v0,2
     13c:	3c020000 	lui	v0,0x0
     140:	24420000 	addiu	v0,v0,0
     144:	94480ed8 	lhu	t0,3800(v0)
     148:	35090004 	ori	t1,t0,0x4
     14c:	a4490ed8 	sh	t1,3800(v0)
     150:	10000008 	b	174 <L809FDDA0+0x4>
     154:	00001025 	move	v0,zero

00000158 <L809FDD88>:
     158:	0c000000 	jal	0 <func_809FDC30>
     15c:	8fa40018 	lw	a0,24(sp)
     160:	50400004 	beqzl	v0,174 <L809FDDA0+0x4>
     164:	24020001 	li	v0,1
     168:	10000002 	b	174 <L809FDDA0+0x4>
     16c:	24020003 	li	v0,3

00000170 <L809FDDA0>:
     170:	24020001 	li	v0,1
     174:	8fbf0014 	lw	ra,20(sp)
     178:	27bd0018 	addiu	sp,sp,24
     17c:	03e00008 	jr	ra
     180:	00000000 	nop

00000184 <func_809FDDB4>:
     184:	afa40000 	sw	a0,0(sp)
     188:	84a200a4 	lh	v0,164(a1)
     18c:	24010062 	li	at,98
     190:	3c030000 	lui	v1,0x0
     194:	14410007 	bne	v0,at,1b4 <func_809FDDB4+0x30>
     198:	24630000 	addiu	v1,v1,0
     19c:	8c6e0004 	lw	t6,4(v1)
     1a0:	24010001 	li	at,1
     1a4:	15c10003 	bne	t6,at,1b4 <func_809FDDB4+0x30>
     1a8:	00000000 	nop
     1ac:	03e00008 	jr	ra
     1b0:	24020001 	li	v0,1
     1b4:	3c030000 	lui	v1,0x0
     1b8:	24010004 	li	at,4
     1bc:	1441000a 	bne	v0,at,1e8 <func_809FDDB4+0x64>
     1c0:	24630000 	addiu	v1,v1,0
     1c4:	946f0f1a 	lhu	t7,3866(v1)
     1c8:	31f80400 	andi	t8,t7,0x400
     1cc:	57000007 	bnezl	t8,1ec <func_809FDDB4+0x68>
     1d0:	00001025 	move	v0,zero
     1d4:	8c790004 	lw	t9,4(v1)
     1d8:	57200004 	bnezl	t9,1ec <func_809FDDB4+0x68>
     1dc:	00001025 	move	v0,zero
     1e0:	03e00008 	jr	ra
     1e4:	24020001 	li	v0,1
     1e8:	00001025 	move	v0,zero
     1ec:	03e00008 	jr	ra
     1f0:	00000000 	nop

000001f4 <func_809FDE24>:
     1f4:	27bdffe8 	addiu	sp,sp,-24
     1f8:	afbf0014 	sw	ra,20(sp)
     1fc:	848e01f4 	lh	t6,500(a0)
     200:	8ca21c44 	lw	v0,7236(a1)
     204:	00003825 	move	a3,zero
     208:	55c00003 	bnezl	t6,218 <func_809FDE24+0x24>
     20c:	8c980190 	lw	t8,400(a0)
     210:	24070001 	li	a3,1
     214:	8c980190 	lw	t8,400(a0)
     218:	3c0f0000 	lui	t7,0x0
     21c:	25ef0000 	addiu	t7,t7,0
     220:	55f80003 	bnel	t7,t8,230 <func_809FDE24+0x3c>
     224:	8c480024 	lw	t0,36(v0)
     228:	24070001 	li	a3,1
     22c:	8c480024 	lw	t0,36(v0)
     230:	3c014120 	lui	at,0x4120
     234:	44812000 	mtc1	at,$f4
     238:	ac88020c 	sw	t0,524(a0)
     23c:	8c590028 	lw	t9,40(v0)
     240:	248501f4 	addiu	a1,a0,500
     244:	24060003 	li	a2,3
     248:	ac990210 	sw	t9,528(a0)
     24c:	8c48002c 	lw	t0,44(v0)
     250:	e4840208 	swc1	$f4,520(a0)
     254:	0c000000 	jal	0 <func_809FDC30>
     258:	ac880214 	sw	t0,532(a0)
     25c:	8fbf0014 	lw	ra,20(sp)
     260:	27bd0018 	addiu	sp,sp,24
     264:	03e00008 	jr	ra
     268:	00000000 	nop

0000026c <func_809FDE9C>:
     26c:	27bdffe8 	addiu	sp,sp,-24
     270:	afbf0014 	sw	ra,20(sp)
     274:	848301f2 	lh	v1,498(a0)
     278:	00803025 	move	a2,a0
     27c:	18600003 	blez	v1,28c <func_809FDE9C+0x20>
     280:	246effff 	addiu	t6,v1,-1
     284:	10000002 	b	290 <func_809FDE9C+0x24>
     288:	a48e01f2 	sh	t6,498(a0)
     28c:	a4c001f2 	sh	zero,498(a2)
     290:	84c301f2 	lh	v1,498(a2)
     294:	24040001 	li	a0,1
     298:	28610003 	slti	at,v1,3
     29c:	50200003 	beqzl	at,2ac <func_809FDE9C+0x40>
     2a0:	90c201ec 	lbu	v0,492(a2)
     2a4:	a0c301ef 	sb	v1,495(a2)
     2a8:	90c201ec 	lbu	v0,492(a2)
     2ac:	10400009 	beqz	v0,2d4 <func_809FDE9C+0x68>
     2b0:	00000000 	nop
     2b4:	10440010 	beq	v0,a0,2f8 <func_809FDE9C+0x8c>
     2b8:	24010002 	li	at,2
     2bc:	10410012 	beq	v0,at,308 <func_809FDE9C+0x9c>
     2c0:	24010003 	li	at,3
     2c4:	10410014 	beq	v0,at,318 <func_809FDE9C+0xac>
     2c8:	00000000 	nop
     2cc:	10000016 	b	328 <func_809FDE9C+0xbc>
     2d0:	90c201ed 	lbu	v0,493(a2)
     2d4:	14600006 	bnez	v1,2f0 <func_809FDE9C+0x84>
     2d8:	2404001e 	li	a0,30
     2dc:	2405001e 	li	a1,30
     2e0:	0c000000 	jal	0 <func_809FDC30>
     2e4:	afa60018 	sw	a2,24(sp)
     2e8:	8fa60018 	lw	a2,24(sp)
     2ec:	a4c201f2 	sh	v0,498(a2)
     2f0:	1000000c 	b	324 <func_809FDE9C+0xb8>
     2f4:	24040001 	li	a0,1
     2f8:	1460000a 	bnez	v1,324 <func_809FDE9C+0xb8>
     2fc:	240f0002 	li	t7,2
     300:	10000008 	b	324 <func_809FDE9C+0xb8>
     304:	a0cf01ef 	sb	t7,495(a2)
     308:	14600006 	bnez	v1,324 <func_809FDE9C+0xb8>
     30c:	24180002 	li	t8,2
     310:	10000004 	b	324 <func_809FDE9C+0xb8>
     314:	a0d801ef 	sb	t8,495(a2)
     318:	54600003 	bnezl	v1,328 <func_809FDE9C+0xbc>
     31c:	90c201ed 	lbu	v0,493(a2)
     320:	a0c001ef 	sb	zero,495(a2)
     324:	90c201ed 	lbu	v0,493(a2)
     328:	24010002 	li	at,2
     32c:	24190001 	li	t9,1
     330:	10440008 	beq	v0,a0,354 <func_809FDE9C+0xe8>
     334:	240b0001 	li	t3,1
     338:	10410008 	beq	v0,at,35c <func_809FDE9C+0xf0>
     33c:	24080002 	li	t0,2
     340:	24010003 	li	at,3
     344:	10410007 	beq	v0,at,364 <func_809FDE9C+0xf8>
     348:	24090003 	li	t1,3
     34c:	10000006 	b	368 <func_809FDE9C+0xfc>
     350:	a0c001f0 	sb	zero,496(a2)
     354:	10000004 	b	368 <func_809FDE9C+0xfc>
     358:	a0d901f0 	sb	t9,496(a2)
     35c:	10000002 	b	368 <func_809FDE9C+0xfc>
     360:	a0c801f0 	sb	t0,496(a2)
     364:	a0c901f0 	sb	t1,496(a2)
     368:	90ca01ee 	lbu	t2,494(a2)
     36c:	548a0004 	bnel	a0,t2,380 <func_809FDE9C+0x114>
     370:	a0c001f1 	sb	zero,497(a2)
     374:	10000002 	b	380 <func_809FDE9C+0x114>
     378:	a0cb01f1 	sb	t3,497(a2)
     37c:	a0c001f1 	sb	zero,497(a2)
     380:	8fbf0014 	lw	ra,20(sp)
     384:	27bd0018 	addiu	sp,sp,24
     388:	03e00008 	jr	ra
     38c:	00000000 	nop

00000390 <func_809FDFC0>:
     390:	8c8e000c 	lw	t6,12(a0)
     394:	448e2000 	mtc1	t6,$f4
     398:	00000000 	nop
     39c:	468021a0 	cvt.s.w	$f6,$f4
     3a0:	e4a60000 	swc1	$f6,0(a1)
     3a4:	8c8f0010 	lw	t7,16(a0)
     3a8:	448f4000 	mtc1	t7,$f8
     3ac:	00000000 	nop
     3b0:	468042a0 	cvt.s.w	$f10,$f8
     3b4:	e4aa0004 	swc1	$f10,4(a1)
     3b8:	8c980014 	lw	t8,20(a0)
     3bc:	44988000 	mtc1	t8,$f16
     3c0:	00000000 	nop
     3c4:	468084a0 	cvt.s.w	$f18,$f16
     3c8:	03e00008 	jr	ra
     3cc:	e4b20008 	swc1	$f18,8(a1)

000003d0 <func_809FE000>:
     3d0:	8c8e0018 	lw	t6,24(a0)
     3d4:	448e2000 	mtc1	t6,$f4
     3d8:	00000000 	nop
     3dc:	468021a0 	cvt.s.w	$f6,$f4
     3e0:	e4a60000 	swc1	$f6,0(a1)
     3e4:	8c8f001c 	lw	t7,28(a0)
     3e8:	448f4000 	mtc1	t7,$f8
     3ec:	00000000 	nop
     3f0:	468042a0 	cvt.s.w	$f10,$f8
     3f4:	e4aa0004 	swc1	$f10,4(a1)
     3f8:	8c980020 	lw	t8,32(a0)
     3fc:	44988000 	mtc1	t8,$f16
     400:	00000000 	nop
     404:	468084a0 	cvt.s.w	$f18,$f16
     408:	03e00008 	jr	ra
     40c:	e4b20008 	swc1	$f18,8(a1)

00000410 <func_809FE040>:
     410:	27bdffc0 	addiu	sp,sp,-64
     414:	3c0f0000 	lui	t7,0x0
     418:	afbf0014 	sw	ra,20(sp)
     41c:	25ef0000 	addiu	t7,t7,0
     420:	8df90000 	lw	t9,0(t7)
     424:	8df80004 	lw	t8,4(t7)
     428:	27ae0020 	addiu	t6,sp,32
     42c:	add90000 	sw	t9,0(t6)
     430:	add80004 	sw	t8,4(t6)
     434:	8df8000c 	lw	t8,12(t7)
     438:	8df90008 	lw	t9,8(t7)
     43c:	00803025 	move	a2,a0
     440:	add8000c 	sw	t8,12(t6)
     444:	add90008 	sw	t9,8(t6)
     448:	8df90010 	lw	t9,16(t7)
     44c:	8df80014 	lw	t8,20(t7)
     450:	2484014c 	addiu	a0,a0,332
     454:	add90010 	sw	t9,16(t6)
     458:	add80014 	sw	t8,20(t6)
     45c:	8df8001c 	lw	t8,28(t7)
     460:	8df90018 	lw	t9,24(t7)
     464:	add8001c 	sw	t8,28(t6)
     468:	add90018 	sw	t9,24(t6)
     46c:	8cc5015c 	lw	a1,348(a2)
     470:	afa60040 	sw	a2,64(sp)
     474:	0c000000 	jal	0 <func_809FDC30>
     478:	afa4001c 	sw	a0,28(sp)
     47c:	8fa4001c 	lw	a0,28(sp)
     480:	10400010 	beqz	v0,4c4 <func_809FE040+0xb4>
     484:	8fa60040 	lw	a2,64(sp)
     488:	84c801e6 	lh	t0,486(a2)
     48c:	3c050000 	lui	a1,0x0
     490:	24a50000 	addiu	a1,a1,0
     494:	25090001 	addiu	t1,t0,1
     498:	a4c901e6 	sh	t1,486(a2)
     49c:	84c201e6 	lh	v0,486(a2)
     4a0:	28410008 	slti	at,v0,8
     4a4:	54200004 	bnezl	at,4b8 <func_809FE040+0xa8>
     4a8:	00025080 	sll	t2,v0,0x2
     4ac:	a4c001e6 	sh	zero,486(a2)
     4b0:	84c201e6 	lh	v0,486(a2)
     4b4:	00025080 	sll	t2,v0,0x2
     4b8:	03aa3021 	addu	a2,sp,t2
     4bc:	0c000000 	jal	0 <func_809FDC30>
     4c0:	8cc60020 	lw	a2,32(a2)
     4c4:	8fbf0014 	lw	ra,20(sp)
     4c8:	27bd0040 	addiu	sp,sp,64
     4cc:	03e00008 	jr	ra
     4d0:	00000000 	nop

000004d4 <func_809FE104>:
     4d4:	27bdffd0 	addiu	sp,sp,-48
     4d8:	3c0f0000 	lui	t7,0x0
     4dc:	afbf0014 	sw	ra,20(sp)
     4e0:	25ef0000 	addiu	t7,t7,0
     4e4:	8df90000 	lw	t9,0(t7)
     4e8:	8df80004 	lw	t8,4(t7)
     4ec:	27ae0020 	addiu	t6,sp,32
     4f0:	add90000 	sw	t9,0(t6)
     4f4:	add80004 	sw	t8,4(t6)
     4f8:	8df8000c 	lw	t8,12(t7)
     4fc:	8df90008 	lw	t9,8(t7)
     500:	00803025 	move	a2,a0
     504:	add8000c 	sw	t8,12(t6)
     508:	add90008 	sw	t9,8(t6)
     50c:	848801e6 	lh	t0,486(a0)
     510:	2484014c 	addiu	a0,a0,332
     514:	29010004 	slti	at,t0,4
     518:	50200015 	beqzl	at,570 <func_809FE104+0x9c>
     51c:	8fbf0014 	lw	ra,20(sp)
     520:	8cc5015c 	lw	a1,348(a2)
     524:	afa60030 	sw	a2,48(sp)
     528:	0c000000 	jal	0 <func_809FDC30>
     52c:	afa40018 	sw	a0,24(sp)
     530:	8fa40018 	lw	a0,24(sp)
     534:	1040000d 	beqz	v0,56c <func_809FE104+0x98>
     538:	8fa60030 	lw	a2,48(sp)
     53c:	84c901e6 	lh	t1,486(a2)
     540:	3c050000 	lui	a1,0x0
     544:	24a50000 	addiu	a1,a1,0
     548:	252a0001 	addiu	t2,t1,1
     54c:	a4ca01e6 	sh	t2,486(a2)
     550:	84c201e6 	lh	v0,486(a2)
     554:	28410004 	slti	at,v0,4
     558:	10200004 	beqz	at,56c <func_809FE104+0x98>
     55c:	00025880 	sll	t3,v0,0x2
     560:	03ab3021 	addu	a2,sp,t3
     564:	0c000000 	jal	0 <func_809FDC30>
     568:	8cc60020 	lw	a2,32(a2)
     56c:	8fbf0014 	lw	ra,20(sp)
     570:	27bd0030 	addiu	sp,sp,48
     574:	03e00008 	jr	ra
     578:	00000000 	nop

0000057c <EnDu_Init>:
     57c:	27bdffb8 	addiu	sp,sp,-72
     580:	afb00028 	sw	s0,40(sp)
     584:	00808025 	move	s0,a0
     588:	afbf002c 	sw	ra,44(sp)
     58c:	afa5004c 	sw	a1,76(sp)
     590:	3c060000 	lui	a2,0x0
     594:	24c60000 	addiu	a2,a2,0
     598:	24050000 	li	a1,0
     59c:	248400b4 	addiu	a0,a0,180
     5a0:	0c000000 	jal	0 <func_809FDC30>
     5a4:	3c0741f0 	lui	a3,0x41f0
     5a8:	2605014c 	addiu	a1,s0,332
     5ac:	3c060601 	lui	a2,0x601
     5b0:	24c61ca8 	addiu	a2,a2,7336
     5b4:	afa50038 	sw	a1,56(sp)
     5b8:	8fa4004c 	lw	a0,76(sp)
     5bc:	00003825 	move	a3,zero
     5c0:	afa00010 	sw	zero,16(sp)
     5c4:	afa00014 	sw	zero,20(sp)
     5c8:	0c000000 	jal	0 <func_809FDC30>
     5cc:	afa00018 	sw	zero,24(sp)
     5d0:	26050194 	addiu	a1,s0,404
     5d4:	afa50034 	sw	a1,52(sp)
     5d8:	0c000000 	jal	0 <func_809FDC30>
     5dc:	8fa4004c 	lw	a0,76(sp)
     5e0:	3c070000 	lui	a3,0x0
     5e4:	8fa50034 	lw	a1,52(sp)
     5e8:	24e70000 	addiu	a3,a3,0
     5ec:	8fa4004c 	lw	a0,76(sp)
     5f0:	0c000000 	jal	0 <func_809FDC30>
     5f4:	02003025 	move	a2,s0
     5f8:	0c000000 	jal	0 <func_809FDC30>
     5fc:	24040016 	li	a0,22
     600:	3c060000 	lui	a2,0x0
     604:	24c60000 	addiu	a2,a2,0
     608:	26040098 	addiu	a0,s0,152
     60c:	0c000000 	jal	0 <func_809FDC30>
     610:	00402825 	move	a1,v0
     614:	02002025 	move	a0,s0
     618:	0c000000 	jal	0 <func_809FDC30>
     61c:	8fa5004c 	lw	a1,76(sp)
     620:	14400005 	bnez	v0,638 <EnDu_Init+0xbc>
     624:	8fa40038 	lw	a0,56(sp)
     628:	0c000000 	jal	0 <func_809FDC30>
     62c:	02002025 	move	a0,s0
     630:	10000042 	b	73c <EnDu_Init+0x1c0>
     634:	8fbf002c 	lw	ra,44(sp)
     638:	3c050000 	lui	a1,0x0
     63c:	24a50000 	addiu	a1,a1,0
     640:	0c000000 	jal	0 <func_809FDC30>
     644:	00003025 	move	a2,zero
     648:	3c053c23 	lui	a1,0x3c23
     64c:	34a5d70a 	ori	a1,a1,0xd70a
     650:	0c000000 	jal	0 <func_809FDC30>
     654:	02002025 	move	a0,s0
     658:	3c030000 	lui	v1,0x0
     65c:	240e0001 	li	t6,1
     660:	24630000 	addiu	v1,v1,0
     664:	a20e001f 	sb	t6,31(s0)
     668:	a60001f4 	sh	zero,500(s0)
     66c:	8c6f0008 	lw	t7,8(v1)
     670:	3401fff0 	li	at,0xfff0
     674:	3c020200 	lui	v0,0x200
     678:	01e1082a 	slt	at,t7,at
     67c:	14200018 	bnez	at,6e0 <EnDu_Init+0x164>
     680:	8faf004c 	lw	t7,76(sp)
     684:	24426930 	addiu	v0,v0,26928
     688:	0002c100 	sll	t8,v0,0x4
     68c:	0018cf02 	srl	t9,t8,0x1c
     690:	00194080 	sll	t0,t9,0x2
     694:	3c090000 	lui	t1,0x0
     698:	01284821 	addu	t1,t1,t0
     69c:	3c0100ff 	lui	at,0xff
     6a0:	8d290000 	lw	t1,0(t1)
     6a4:	3421ffff 	ori	at,at,0xffff
     6a8:	00415024 	and	t2,v0,at
     6ac:	8fad004c 	lw	t5,76(sp)
     6b0:	3c018000 	lui	at,0x8000
     6b4:	012a5821 	addu	t3,t1,t2
     6b8:	01616021 	addu	t4,t3,at
     6bc:	240e0001 	li	t6,1
     6c0:	3c050000 	lui	a1,0x0
     6c4:	adac1d68 	sw	t4,7528(t5)
     6c8:	a06e1414 	sb	t6,5140(v1)
     6cc:	24a50000 	addiu	a1,a1,0
     6d0:	0c000000 	jal	0 <func_809FDC30>
     6d4:	02002025 	move	a0,s0
     6d8:	10000018 	b	73c <EnDu_Init+0x1c0>
     6dc:	8fbf002c 	lw	ra,44(sp)
     6e0:	85f800a4 	lh	t8,164(t7)
     6e4:	24010004 	li	at,4
     6e8:	02002025 	move	a0,s0
     6ec:	17010005 	bne	t8,at,704 <EnDu_Init+0x188>
     6f0:	3c050000 	lui	a1,0x0
     6f4:	0c000000 	jal	0 <func_809FDC30>
     6f8:	24a50000 	addiu	a1,a1,0
     6fc:	1000000f 	b	73c <EnDu_Init+0x1c0>
     700:	8fbf002c 	lw	ra,44(sp)
     704:	8c790004 	lw	t9,4(v1)
     708:	02002025 	move	a0,s0
     70c:	3c050000 	lui	a1,0x0
     710:	13200007 	beqz	t9,730 <EnDu_Init+0x1b4>
     714:	00000000 	nop
     718:	3c050000 	lui	a1,0x0
     71c:	24a50000 	addiu	a1,a1,0
     720:	0c000000 	jal	0 <func_809FDC30>
     724:	02002025 	move	a0,s0
     728:	10000004 	b	73c <EnDu_Init+0x1c0>
     72c:	8fbf002c 	lw	ra,44(sp)
     730:	0c000000 	jal	0 <func_809FDC30>
     734:	24a50000 	addiu	a1,a1,0
     738:	8fbf002c 	lw	ra,44(sp)
     73c:	8fb00028 	lw	s0,40(sp)
     740:	27bd0048 	addiu	sp,sp,72
     744:	03e00008 	jr	ra
     748:	00000000 	nop

0000074c <EnDu_Destroy>:
     74c:	27bdffe8 	addiu	sp,sp,-24
     750:	afbf0014 	sw	ra,20(sp)
     754:	afa40018 	sw	a0,24(sp)
     758:	afa5001c 	sw	a1,28(sp)
     75c:	0c000000 	jal	0 <func_809FDC30>
     760:	2484014c 	addiu	a0,a0,332
     764:	8fa50018 	lw	a1,24(sp)
     768:	8fa4001c 	lw	a0,28(sp)
     76c:	0c000000 	jal	0 <func_809FDC30>
     770:	24a50194 	addiu	a1,a1,404
     774:	8fbf0014 	lw	ra,20(sp)
     778:	27bd0018 	addiu	sp,sp,24
     77c:	03e00008 	jr	ra
     780:	00000000 	nop

00000784 <func_809FE3B4>:
     784:	afa40000 	sw	a0,0(sp)
     788:	03e00008 	jr	ra
     78c:	afa50004 	sw	a1,4(sp)

00000790 <func_809FE3C0>:
     790:	27bdffe0 	addiu	sp,sp,-32
     794:	afbf0014 	sw	ra,20(sp)
     798:	afa50024 	sw	a1,36(sp)
     79c:	8ca21c44 	lw	v0,7236(a1)
     7a0:	00803825 	move	a3,a0
     7a4:	00a02025 	move	a0,a1
     7a8:	8c4f0680 	lw	t7,1664(v0)
     7ac:	24050022 	li	a1,34
     7b0:	000fc1c0 	sll	t8,t7,0x7
     7b4:	07030011 	bgezl	t8,7fc <func_809FE3C0+0x6c>
     7b8:	84e901f4 	lh	t1,500(a3)
     7bc:	afa2001c 	sw	v0,28(sp)
     7c0:	0c000000 	jal	0 <func_809FDC30>
     7c4:	afa70020 	sw	a3,32(sp)
     7c8:	8fa2001c 	lw	v0,28(sp)
     7cc:	8fa40020 	lw	a0,32(sp)
     7d0:	3c010200 	lui	at,0x200
     7d4:	8c590680 	lw	t9,1664(v0)
     7d8:	3c050000 	lui	a1,0x0
     7dc:	24a50000 	addiu	a1,a1,0
     7e0:	03214025 	or	t0,t9,at
     7e4:	ac480680 	sw	t0,1664(v0)
     7e8:	0c000000 	jal	0 <func_809FDC30>
     7ec:	ac4406a8 	sw	a0,1704(v0)
     7f0:	1000001d 	b	868 <func_809FE3C0+0xd8>
     7f4:	8fbf0014 	lw	ra,20(sp)
     7f8:	84e901f4 	lh	t1,500(a3)
     7fc:	24010002 	li	at,2
     800:	8fa40024 	lw	a0,36(sp)
     804:	15210008 	bne	t1,at,828 <func_809FE3C0+0x98>
     808:	00e02825 	move	a1,a3
     80c:	24060007 	li	a2,7
     810:	afa2001c 	sw	v0,28(sp)
     814:	0c000000 	jal	0 <func_809FDC30>
     818:	afa70020 	sw	a3,32(sp)
     81c:	8fa70020 	lw	a3,32(sp)
     820:	8fa2001c 	lw	v0,28(sp)
     824:	a4e001f4 	sh	zero,500(a3)
     828:	84ea01d4 	lh	t2,468(a3)
     82c:	3c0142e8 	lui	at,0x42e8
     830:	44813000 	mtc1	at,$f6
     834:	448a4000 	mtc1	t2,$f8
     838:	c4e40090 	lwc1	$f4,144(a3)
     83c:	468042a0 	cvt.s.w	$f10,$f8
     840:	460a3400 	add.s	$f16,$f6,$f10
     844:	4610203c 	c.lt.s	$f4,$f16
     848:	00000000 	nop
     84c:	45020006 	bc1fl	868 <func_809FE3C0+0xd8>
     850:	8fbf0014 	lw	ra,20(sp)
     854:	8c4b0680 	lw	t3,1664(v0)
     858:	3c010080 	lui	at,0x80
     85c:	01616025 	or	t4,t3,at
     860:	ac4c0680 	sw	t4,1664(v0)
     864:	8fbf0014 	lw	ra,20(sp)
     868:	27bd0020 	addiu	sp,sp,32
     86c:	03e00008 	jr	ra
     870:	00000000 	nop

00000874 <func_809FE4A4>:
     874:	27bdffd8 	addiu	sp,sp,-40
     878:	3c020001 	lui	v0,0x1
     87c:	afbf0024 	sw	ra,36(sp)
     880:	afb10020 	sw	s1,32(sp)
     884:	afb0001c 	sw	s0,28(sp)
     888:	00451021 	addu	v0,v0,a1
     88c:	944204c6 	lhu	v0,1222(v0)
     890:	24010004 	li	at,4
     894:	00a08025 	move	s0,a1
     898:	00808825 	move	s1,a0
     89c:	14410009 	bne	v0,at,8c4 <func_809FE4A4+0x50>
     8a0:	8ca31c44 	lw	v1,7236(a1)
     8a4:	3c010001 	lui	at,0x1
     8a8:	00250821 	addu	at,at,a1
     8ac:	3c050000 	lui	a1,0x0
     8b0:	a42004c6 	sh	zero,1222(at)
     8b4:	0c000000 	jal	0 <func_809FDC30>
     8b8:	24a50000 	addiu	a1,a1,0
     8bc:	1000004e 	b	9f8 <func_809FE4A4+0x184>
     8c0:	8fbf0024 	lw	ra,36(sp)
     8c4:	28410006 	slti	at,v0,6
     8c8:	1420001d 	bnez	at,940 <func_809FE4A4+0xcc>
     8cc:	3c190000 	lui	t9,0x0
     8d0:	3c020200 	lui	v0,0x200
     8d4:	24427de0 	addiu	v0,v0,32224
     8d8:	00027100 	sll	t6,v0,0x4
     8dc:	000e7f02 	srl	t7,t6,0x1c
     8e0:	000fc080 	sll	t8,t7,0x2
     8e4:	0338c821 	addu	t9,t9,t8
     8e8:	3c0100ff 	lui	at,0xff
     8ec:	8f390000 	lw	t9,0(t9)
     8f0:	3421ffff 	ori	at,at,0xffff
     8f4:	00414024 	and	t0,v0,at
     8f8:	3c018000 	lui	at,0x8000
     8fc:	03284821 	addu	t1,t9,t0
     900:	01215021 	addu	t2,t1,at
     904:	ae0a1d68 	sw	t2,7528(s0)
     908:	3c010000 	lui	at,0x0
     90c:	240b0001 	li	t3,1
     910:	a02b1414 	sb	t3,5140(at)
     914:	240c0001 	li	t4,1
     918:	3c050000 	lui	a1,0x0
     91c:	a62c01e8 	sh	t4,488(s1)
     920:	24a50000 	addiu	a1,a1,0
     924:	0c000000 	jal	0 <func_809FDC30>
     928:	02202025 	move	a0,s1
     92c:	3c010001 	lui	at,0x1
     930:	00300821 	addu	at,at,s0
     934:	240d0004 	li	t5,4
     938:	1000002e 	b	9f4 <func_809FE4A4+0x180>
     93c:	a42d04c6 	sh	t5,1222(at)
     940:	24010003 	li	at,3
     944:	14410027 	bne	v0,at,9e4 <func_809FE4A4+0x170>
     948:	3c070000 	lui	a3,0x0
     94c:	3c0e0000 	lui	t6,0x0
     950:	24e70000 	addiu	a3,a3,0
     954:	25ce0000 	addiu	t6,t6,0
     958:	3c050000 	lui	a1,0x0
     95c:	24a50000 	addiu	a1,a1,0
     960:	afae0014 	sw	t6,20(sp)
     964:	afa70010 	sw	a3,16(sp)
     968:	24044802 	li	a0,18434
     96c:	0c000000 	jal	0 <func_809FDC30>
     970:	24060004 	li	a2,4
     974:	3c020200 	lui	v0,0x200
     978:	244259e0 	addiu	v0,v0,23008
     97c:	00027900 	sll	t7,v0,0x4
     980:	000fc702 	srl	t8,t7,0x1c
     984:	0018c880 	sll	t9,t8,0x2
     988:	3c080000 	lui	t0,0x0
     98c:	01194021 	addu	t0,t0,t9
     990:	3c0100ff 	lui	at,0xff
     994:	8d080000 	lw	t0,0(t0)
     998:	3421ffff 	ori	at,at,0xffff
     99c:	00414824 	and	t1,v0,at
     9a0:	3c018000 	lui	at,0x8000
     9a4:	01095021 	addu	t2,t0,t1
     9a8:	01415821 	addu	t3,t2,at
     9ac:	ae0b1d68 	sw	t3,7528(s0)
     9b0:	3c010000 	lui	at,0x0
     9b4:	240c0001 	li	t4,1
     9b8:	a02c1414 	sb	t4,5140(at)
     9bc:	3c050000 	lui	a1,0x0
     9c0:	a62001e8 	sh	zero,488(s1)
     9c4:	24a50000 	addiu	a1,a1,0
     9c8:	0c000000 	jal	0 <func_809FDC30>
     9cc:	02202025 	move	a0,s1
     9d0:	3c010001 	lui	at,0x1
     9d4:	00300821 	addu	at,at,s0
     9d8:	240d0004 	li	t5,4
     9dc:	10000005 	b	9f4 <func_809FE4A4+0x180>
     9e0:	a42d04c6 	sh	t5,1222(at)
     9e4:	8c6e0680 	lw	t6,1664(v1)
     9e8:	3c010080 	lui	at,0x80
     9ec:	01c17825 	or	t7,t6,at
     9f0:	ac6f0680 	sw	t7,1664(v1)
     9f4:	8fbf0024 	lw	ra,36(sp)
     9f8:	8fb0001c 	lw	s0,28(sp)
     9fc:	8fb10020 	lw	s1,32(sp)
     a00:	03e00008 	jr	ra
     a04:	27bd0028 	addiu	sp,sp,40

00000a08 <func_809FE638>:
     a08:	27bdffd8 	addiu	sp,sp,-40
     a0c:	afbf001c 	sw	ra,28(sp)
     a10:	afa40028 	sw	a0,40(sp)
     a14:	afa5002c 	sw	a1,44(sp)
     a18:	8ca31c44 	lw	v1,7236(a1)
     a1c:	00a02025 	move	a0,a1
     a20:	24050d02 	li	a1,3330
     a24:	8c6f067c 	lw	t7,1660(v1)
     a28:	8fa70028 	lw	a3,40(sp)
     a2c:	2406ff9d 	li	a2,-99
     a30:	000fc080 	sll	t8,t7,0x2
     a34:	07020016 	bltzl	t8,a90 <func_809FE638+0x88>
     a38:	8fbf001c 	lw	ra,28(sp)
     a3c:	afa00010 	sw	zero,16(sp)
     a40:	0c000000 	jal	0 <func_809FDC30>
     a44:	afa30024 	sw	v1,36(sp)
     a48:	8fb90028 	lw	t9,40(sp)
     a4c:	8fa30024 	lw	v1,36(sp)
     a50:	24040051 	li	a0,81
     a54:	87220032 	lh	v0,50(t9)
     a58:	24427fff 	addiu	v0,v0,32767
     a5c:	00021400 	sll	v0,v0,0x10
     a60:	00021403 	sra	v0,v0,0x10
     a64:	a4620032 	sh	v0,50(v1)
     a68:	0c000000 	jal	0 <func_809FDC30>
     a6c:	a46200b6 	sh	v0,182(v1)
     a70:	3c050000 	lui	a1,0x0
     a74:	24a50000 	addiu	a1,a1,0
     a78:	0c000000 	jal	0 <func_809FDC30>
     a7c:	8fa40028 	lw	a0,40(sp)
     a80:	8fa90028 	lw	t1,40(sp)
     a84:	24080032 	li	t0,50
     a88:	a52801e2 	sh	t0,482(t1)
     a8c:	8fbf001c 	lw	ra,28(sp)
     a90:	27bd0028 	addiu	sp,sp,40
     a94:	03e00008 	jr	ra
     a98:	00000000 	nop

00000a9c <func_809FE6CC>:
     a9c:	27bdffe8 	addiu	sp,sp,-24
     aa0:	afbf0014 	sw	ra,20(sp)
     aa4:	afa5001c 	sw	a1,28(sp)
     aa8:	848201e2 	lh	v0,482(a0)
     aac:	00803825 	move	a3,a0
     ab0:	240f3039 	li	t7,12345
     ab4:	14400003 	bnez	v0,ac4 <func_809FE6CC+0x28>
     ab8:	244effff 	addiu	t6,v0,-1
     abc:	10000003 	b	acc <func_809FE6CC+0x30>
     ac0:	00001825 	move	v1,zero
     ac4:	a4ee01e2 	sh	t6,482(a3)
     ac8:	84e301e2 	lh	v1,482(a3)
     acc:	1460000c 	bnez	v1,b00 <func_809FE6CC+0x64>
     ad0:	31e5ffff 	andi	a1,t7,0xffff
     ad4:	a4ef010e 	sh	t7,270(a3)
     ad8:	afa70018 	sw	a3,24(sp)
     adc:	8fa4001c 	lw	a0,28(sp)
     ae0:	0c000000 	jal	0 <func_809FDC30>
     ae4:	00003025 	move	a2,zero
     ae8:	8fa40018 	lw	a0,24(sp)
     aec:	24180001 	li	t8,1
     af0:	3c050000 	lui	a1,0x0
     af4:	24a50000 	addiu	a1,a1,0
     af8:	0c000000 	jal	0 <func_809FDC30>
     afc:	a49801f4 	sh	t8,500(a0)
     b00:	8fbf0014 	lw	ra,20(sp)
     b04:	27bd0018 	addiu	sp,sp,24
     b08:	03e00008 	jr	ra
     b0c:	00000000 	nop

00000b10 <func_809FE740>:
     b10:	27bdffe8 	addiu	sp,sp,-24
     b14:	afbf0014 	sw	ra,20(sp)
     b18:	848e01f4 	lh	t6,500(a0)
     b1c:	00803025 	move	a2,a0
     b20:	55c0000e 	bnezl	t6,b5c <func_809FE740+0x4c>
     b24:	8fbf0014 	lw	ra,20(sp)
     b28:	84af07a0 	lh	t7,1952(a1)
     b2c:	000fc080 	sll	t8,t7,0x2
     b30:	00b8c821 	addu	t9,a1,t8
     b34:	8f240790 	lw	a0,1936(t9)
     b38:	0c000000 	jal	0 <func_809FDC30>
     b3c:	afa60018 	sw	a2,24(sp)
     b40:	8fa40018 	lw	a0,24(sp)
     b44:	2408005a 	li	t0,90
     b48:	3c050000 	lui	a1,0x0
     b4c:	24a50000 	addiu	a1,a1,0
     b50:	0c000000 	jal	0 <func_809FDC30>
     b54:	a48801e2 	sh	t0,482(a0)
     b58:	8fbf0014 	lw	ra,20(sp)
     b5c:	27bd0018 	addiu	sp,sp,24
     b60:	03e00008 	jr	ra
     b64:	00000000 	nop

00000b68 <func_809FE798>:
     b68:	27bdffe0 	addiu	sp,sp,-32
     b6c:	afbf001c 	sw	ra,28(sp)
     b70:	afb00018 	sw	s0,24(sp)
     b74:	afa50024 	sw	a1,36(sp)
     b78:	848301e2 	lh	v1,482(a0)
     b7c:	00808025 	move	s0,a0
     b80:	24010005 	li	at,5
     b84:	14600003 	bnez	v1,b94 <func_809FE798+0x2c>
     b88:	246effff 	addiu	t6,v1,-1
     b8c:	10000004 	b	ba0 <func_809FE798+0x38>
     b90:	00001025 	move	v0,zero
     b94:	a60e01e2 	sh	t6,482(s0)
     b98:	860301e2 	lh	v1,482(s0)
     b9c:	00601025 	move	v0,v1
     ba0:	10400023 	beqz	v0,c30 <func_809FE798+0xc8>
     ba4:	00000000 	nop
     ba8:	10610016 	beq	v1,at,c04 <func_809FE798+0x9c>
     bac:	02002025 	move	a0,s0
     bb0:	2401000f 	li	at,15
     bb4:	1061000f 	beq	v1,at,bf4 <func_809FE798+0x8c>
     bb8:	02002025 	move	a0,s0
     bbc:	2401003c 	li	at,60
     bc0:	10610008 	beq	v1,at,be4 <func_809FE798+0x7c>
     bc4:	02002025 	move	a0,s0
     bc8:	24010050 	li	at,80
     bcc:	14610010 	bne	v1,at,c10 <func_809FE798+0xa8>
     bd0:	02002025 	move	a0,s0
     bd4:	0c000000 	jal	0 <func_809FDC30>
     bd8:	240528a9 	li	a1,10409
     bdc:	1000000c 	b	c10 <func_809FE798+0xa8>
     be0:	860301e2 	lh	v1,482(s0)
     be4:	0c000000 	jal	0 <func_809FDC30>
     be8:	24052814 	li	a1,10260
     bec:	10000008 	b	c10 <func_809FE798+0xa8>
     bf0:	860301e2 	lh	v1,482(s0)
     bf4:	0c000000 	jal	0 <func_809FDC30>
     bf8:	2405281c 	li	a1,10268
     bfc:	10000004 	b	c10 <func_809FE798+0xa8>
     c00:	860301e2 	lh	v1,482(s0)
     c04:	0c000000 	jal	0 <func_809FDC30>
     c08:	2405281d 	li	a1,10269
     c0c:	860301e2 	lh	v1,482(s0)
     c10:	2861003d 	slti	at,v1,61
     c14:	1420000d 	bnez	at,c4c <func_809FE798+0xe4>
     c18:	3c014120 	lui	at,0x4120
     c1c:	44813000 	mtc1	at,$f6
     c20:	c6040024 	lwc1	$f4,36(s0)
     c24:	46062201 	sub.s	$f8,$f4,$f6
     c28:	10000008 	b	c4c <func_809FE798+0xe4>
     c2c:	e6080024 	swc1	$f8,36(s0)
     c30:	0c000000 	jal	0 <func_809FDC30>
     c34:	02002025 	move	a0,s0
     c38:	3c020000 	lui	v0,0x0
     c3c:	24420000 	addiu	v0,v0,0
     c40:	944f0f1a 	lhu	t7,3866(v0)
     c44:	35f80400 	ori	t8,t7,0x400
     c48:	a4580f1a 	sh	t8,3866(v0)
     c4c:	8fbf001c 	lw	ra,28(sp)
     c50:	8fb00018 	lw	s0,24(sp)
     c54:	27bd0020 	addiu	sp,sp,32
     c58:	03e00008 	jr	ra
     c5c:	00000000 	nop

00000c60 <func_809FE890>:
     c60:	27bdffa8 	addiu	sp,sp,-88
     c64:	3c0f0000 	lui	t7,0x0
     c68:	afbf001c 	sw	ra,28(sp)
     c6c:	afb10018 	sw	s1,24(sp)
     c70:	afb00014 	sw	s0,20(sp)
     c74:	25ef0000 	addiu	t7,t7,0
     c78:	8df90000 	lw	t9,0(t7)
     c7c:	27ae0030 	addiu	t6,sp,48
     c80:	8df80004 	lw	t8,4(t7)
     c84:	add90000 	sw	t9,0(t6)
     c88:	8df90008 	lw	t9,8(t7)
     c8c:	add80004 	sw	t8,4(t6)
     c90:	00808025 	move	s0,a0
     c94:	add90008 	sw	t9,8(t6)
     c98:	90a81d6c 	lbu	t0,7532(a1)
     c9c:	00a03825 	move	a3,a1
     ca0:	00a02025 	move	a0,a1
     ca4:	15000009 	bnez	t0,ccc <func_809FE890+0x6c>
     ca8:	02002825 	move	a1,s0
     cac:	0c000000 	jal	0 <func_809FDC30>
     cb0:	24060001 	li	a2,1
     cb4:	3c050000 	lui	a1,0x0
     cb8:	24a50000 	addiu	a1,a1,0
     cbc:	0c000000 	jal	0 <func_809FDC30>
     cc0:	02002025 	move	a0,s0
     cc4:	10000080 	b	ec8 <func_809FE890+0x268>
     cc8:	8fbf001c 	lw	ra,28(sp)
     ccc:	8cf11d94 	lw	s1,7572(a3)
     cd0:	27a50048 	addiu	a1,sp,72
     cd4:	1220007b 	beqz	s1,ec4 <func_809FE890+0x264>
     cd8:	02202025 	move	a0,s1
     cdc:	0c000000 	jal	0 <func_809FDC30>
     ce0:	afa7005c 	sw	a3,92(sp)
     ce4:	02202025 	move	a0,s1
     ce8:	0c000000 	jal	0 <func_809FDC30>
     cec:	27a5003c 	addiu	a1,sp,60
     cf0:	860201ea 	lh	v0,490(s0)
     cf4:	02202025 	move	a0,s1
     cf8:	5440000c 	bnezl	v0,d2c <func_809FE890+0xcc>
     cfc:	96230000 	lhu	v1,0(s1)
     d00:	0c000000 	jal	0 <func_809FDC30>
     d04:	27a50048 	addiu	a1,sp,72
     d08:	27a90048 	addiu	t1,sp,72
     d0c:	8d2b0000 	lw	t3,0(t1)
     d10:	860201ea 	lh	v0,490(s0)
     d14:	ae0b0024 	sw	t3,36(s0)
     d18:	8d2a0004 	lw	t2,4(t1)
     d1c:	ae0a0028 	sw	t2,40(s0)
     d20:	8d2b0008 	lw	t3,8(t1)
     d24:	ae0b002c 	sw	t3,44(s0)
     d28:	96230000 	lhu	v1,0(s1)
     d2c:	24010001 	li	at,1
     d30:	50620029 	beql	v1,v0,dd8 <func_809FE890+0x178>
     d34:	24010007 	li	at,7
     d38:	14610006 	bne	v1,at,d54 <func_809FE890+0xf4>
     d3c:	2604014c 	addiu	a0,s0,332
     d40:	3c050000 	lui	a1,0x0
     d44:	24a50000 	addiu	a1,a1,0
     d48:	0c000000 	jal	0 <func_809FDC30>
     d4c:	24060001 	li	a2,1
     d50:	96230000 	lhu	v1,0(s1)
     d54:	24010007 	li	at,7
     d58:	10610003 	beq	v1,at,d68 <func_809FE890+0x108>
     d5c:	2604014c 	addiu	a0,s0,332
     d60:	24010008 	li	at,8
     d64:	14610006 	bne	v1,at,d80 <func_809FE890+0x120>
     d68:	3c050000 	lui	a1,0x0
     d6c:	a60001e6 	sh	zero,486(s0)
     d70:	24a50000 	addiu	a1,a1,0
     d74:	0c000000 	jal	0 <func_809FDC30>
     d78:	24060007 	li	a2,7
     d7c:	96230000 	lhu	v1,0(s1)
     d80:	a60301ea 	sh	v1,490(s0)
     d84:	860201ea 	lh	v0,490(s0)
     d88:	24010007 	li	at,7
     d8c:	24030002 	li	v1,2
     d90:	14410007 	bne	v0,at,db0 <func_809FE890+0x150>
     d94:	240c000b 	li	t4,11
     d98:	240d0001 	li	t5,1
     d9c:	a60c01f2 	sh	t4,498(s0)
     da0:	a20301ec 	sb	v1,492(s0)
     da4:	a20301ed 	sb	v1,493(s0)
     da8:	a20d01ee 	sb	t5,494(s0)
     dac:	860201ea 	lh	v0,490(s0)
     db0:	24010008 	li	at,8
     db4:	14410007 	bne	v0,at,dd4 <func_809FE890+0x174>
     db8:	24030003 	li	v1,3
     dbc:	240e000b 	li	t6,11
     dc0:	a60e01f2 	sh	t6,498(s0)
     dc4:	a20301ec 	sb	v1,492(s0)
     dc8:	a20301ed 	sb	v1,493(s0)
     dcc:	a20001ee 	sb	zero,494(s0)
     dd0:	860201ea 	lh	v0,490(s0)
     dd4:	24010007 	li	at,7
     dd8:	54410005 	bnel	v0,at,df0 <func_809FE890+0x190>
     ddc:	24010008 	li	at,8
     de0:	0c000000 	jal	0 <func_809FDC30>
     de4:	02002025 	move	a0,s0
     de8:	860201ea 	lh	v0,490(s0)
     dec:	24010008 	li	at,8
     df0:	54410004 	bnel	v0,at,e04 <func_809FE890+0x1a4>
     df4:	962f0006 	lhu	t7,6(s1)
     df8:	0c000000 	jal	0 <func_809FDC30>
     dfc:	02002025 	move	a0,s0
     e00:	962f0006 	lhu	t7,6(s1)
     e04:	27a80030 	addiu	t0,sp,48
     e08:	a60f00b4 	sh	t7,180(s0)
     e0c:	96380008 	lhu	t8,8(s1)
     e10:	a61800b6 	sh	t8,182(s0)
     e14:	9639000a 	lhu	t9,10(s1)
     e18:	a61900b8 	sh	t9,184(s0)
     e1c:	8d0a0000 	lw	t2,0(t0)
     e20:	ae0a005c 	sw	t2,92(s0)
     e24:	8d090004 	lw	t1,4(t0)
     e28:	ae090060 	sw	t1,96(s0)
     e2c:	8d0a0008 	lw	t2,8(t0)
     e30:	ae0a0064 	sw	t2,100(s0)
     e34:	8fab005c 	lw	t3,92(sp)
     e38:	96220004 	lhu	v0,4(s1)
     e3c:	956c1d74 	lhu	t4,7540(t3)
     e40:	0182082a 	slt	at,t4,v0
     e44:	50200020 	beqzl	at,ec8 <func_809FE890+0x268>
     e48:	8fbf001c 	lw	ra,28(sp)
     e4c:	962d0002 	lhu	t5,2(s1)
     e50:	c7a6003c 	lwc1	$f6,60(sp)
     e54:	c7a80048 	lwc1	$f8,72(sp)
     e58:	004d7023 	subu	t6,v0,t5
     e5c:	448e2000 	mtc1	t6,$f4
     e60:	46083281 	sub.s	$f10,$f6,$f8
     e64:	c6020070 	lwc1	$f2,112(s0)
     e68:	46802020 	cvt.s.w	$f0,$f4
     e6c:	46005403 	div.s	$f16,$f10,$f0
     e70:	e610005c 	swc1	$f16,92(s0)
     e74:	c7a4004c 	lwc1	$f4,76(sp)
     e78:	c7b20040 	lwc1	$f18,64(sp)
     e7c:	c610006c 	lwc1	$f16,108(s0)
     e80:	46049181 	sub.s	$f6,$f18,$f4
     e84:	46003203 	div.s	$f8,$f6,$f0
     e88:	e6080060 	swc1	$f8,96(s0)
     e8c:	c60a0060 	lwc1	$f10,96(s0)
     e90:	46105480 	add.s	$f18,$f10,$f16
     e94:	e6120060 	swc1	$f18,96(s0)
     e98:	c6040060 	lwc1	$f4,96(s0)
     e9c:	4602203c 	c.lt.s	$f4,$f2
     ea0:	00000000 	nop
     ea4:	45020003 	bc1fl	eb4 <func_809FE890+0x254>
     ea8:	c7a60044 	lwc1	$f6,68(sp)
     eac:	e6020060 	swc1	$f2,96(s0)
     eb0:	c7a60044 	lwc1	$f6,68(sp)
     eb4:	c7a80050 	lwc1	$f8,80(sp)
     eb8:	46083281 	sub.s	$f10,$f6,$f8
     ebc:	46005403 	div.s	$f16,$f10,$f0
     ec0:	e6100064 	swc1	$f16,100(s0)
     ec4:	8fbf001c 	lw	ra,28(sp)
     ec8:	8fb00014 	lw	s0,20(sp)
     ecc:	8fb10018 	lw	s1,24(sp)
     ed0:	03e00008 	jr	ra
     ed4:	27bd0058 	addiu	sp,sp,88

00000ed8 <func_809FEB08>:
     ed8:	27bdffe0 	addiu	sp,sp,-32
     edc:	afb00018 	sw	s0,24(sp)
     ee0:	afbf001c 	sw	ra,28(sp)
     ee4:	afa50024 	sw	a1,36(sp)
     ee8:	848f01e8 	lh	t7,488(a0)
     eec:	240e000b 	li	t6,11
     ef0:	24010001 	li	at,1
     ef4:	00808025 	move	s0,a0
     ef8:	a48e01f2 	sh	t6,498(a0)
     efc:	a08001ec 	sb	zero,492(a0)
     f00:	a08001ed 	sb	zero,493(a0)
     f04:	15e10010 	bne	t7,at,f48 <func_809FEB08+0x70>
     f08:	a08001ee 	sb	zero,494(a0)
     f0c:	8fa40024 	lw	a0,36(sp)
     f10:	02002825 	move	a1,s0
     f14:	0c000000 	jal	0 <func_809FDC30>
     f18:	24060007 	li	a2,7
     f1c:	3c050000 	lui	a1,0x0
     f20:	24a50000 	addiu	a1,a1,0
     f24:	2604014c 	addiu	a0,s0,332
     f28:	0c000000 	jal	0 <func_809FDC30>
     f2c:	24060001 	li	a2,1
     f30:	3c050000 	lui	a1,0x0
     f34:	24a50000 	addiu	a1,a1,0
     f38:	0c000000 	jal	0 <func_809FDC30>
     f3c:	02002025 	move	a0,s0
     f40:	10000024 	b	fd4 <func_809FEB08+0xfc>
     f44:	8fbf001c 	lw	ra,28(sp)
     f48:	3c180000 	lui	t8,0x0
     f4c:	3c190000 	lui	t9,0x0
     f50:	8f390008 	lw	t9,8(t9)
     f54:	8f1800a0 	lw	t8,160(t8)
     f58:	3c090000 	lui	t1,0x0
     f5c:	91290002 	lbu	t1,2(t1)
     f60:	03194024 	and	t0,t8,t9
     f64:	240c301f 	li	t4,12319
     f68:	01285007 	srav	t2,t0,t1
     f6c:	1d400009 	bgtz	t2,f94 <func_809FEB08+0xbc>
     f70:	02002025 	move	a0,s0
     f74:	240b301c 	li	t3,12316
     f78:	3c050000 	lui	a1,0x0
     f7c:	a60b010e 	sh	t3,270(s0)
     f80:	24a50000 	addiu	a1,a1,0
     f84:	0c000000 	jal	0 <func_809FDC30>
     f88:	02002025 	move	a0,s0
     f8c:	10000006 	b	fa8 <func_809FEB08+0xd0>
     f90:	8fa40024 	lw	a0,36(sp)
     f94:	3c050000 	lui	a1,0x0
     f98:	a60c010e 	sh	t4,270(s0)
     f9c:	0c000000 	jal	0 <func_809FDC30>
     fa0:	24a50000 	addiu	a1,a1,0
     fa4:	8fa40024 	lw	a0,36(sp)
     fa8:	9605010e 	lhu	a1,270(s0)
     fac:	0c000000 	jal	0 <func_809FDC30>
     fb0:	00003025 	move	a2,zero
     fb4:	3c050000 	lui	a1,0x0
     fb8:	24a50000 	addiu	a1,a1,0
     fbc:	2604014c 	addiu	a0,s0,332
     fc0:	0c000000 	jal	0 <func_809FDC30>
     fc4:	2406000e 	li	a2,14
     fc8:	240d0001 	li	t5,1
     fcc:	a60d01f4 	sh	t5,500(s0)
     fd0:	8fbf001c 	lw	ra,28(sp)
     fd4:	8fb00018 	lw	s0,24(sp)
     fd8:	27bd0020 	addiu	sp,sp,32
     fdc:	03e00008 	jr	ra
     fe0:	00000000 	nop

00000fe4 <func_809FEC14>:
     fe4:	27bdffe8 	addiu	sp,sp,-24
     fe8:	afbf0014 	sw	ra,20(sp)
     fec:	afa5001c 	sw	a1,28(sp)
     ff0:	848e01f4 	lh	t6,500(a0)
     ff4:	00803825 	move	a3,a0
     ff8:	24010002 	li	at,2
     ffc:	15c1000c 	bne	t6,at,1030 <func_809FEC14+0x4c>
    1000:	00a02025 	move	a0,a1
    1004:	00e02825 	move	a1,a3
    1008:	24060007 	li	a2,7
    100c:	0c000000 	jal	0 <func_809FDC30>
    1010:	afa70018 	sw	a3,24(sp)
    1014:	3c050000 	lui	a1,0x0
    1018:	24a50000 	addiu	a1,a1,0
    101c:	0c000000 	jal	0 <func_809FDC30>
    1020:	8fa40018 	lw	a0,24(sp)
    1024:	8fa40018 	lw	a0,24(sp)
    1028:	0c000000 	jal	0 <func_809FDC30>
    102c:	8fa5001c 	lw	a1,28(sp)
    1030:	8fbf0014 	lw	ra,20(sp)
    1034:	27bd0018 	addiu	sp,sp,24
    1038:	03e00008 	jr	ra
    103c:	00000000 	nop

00001040 <func_809FEC70>:
    1040:	27bdffe0 	addiu	sp,sp,-32
    1044:	afbf001c 	sw	ra,28(sp)
    1048:	afa50024 	sw	a1,36(sp)
    104c:	0c000000 	jal	0 <func_809FDC30>
    1050:	afa40020 	sw	a0,32(sp)
    1054:	10400007 	beqz	v0,1074 <func_809FEC70+0x34>
    1058:	8fa40020 	lw	a0,32(sp)
    105c:	3c050000 	lui	a1,0x0
    1060:	ac800118 	sw	zero,280(a0)
    1064:	0c000000 	jal	0 <func_809FDC30>
    1068:	24a50000 	addiu	a1,a1,0
    106c:	1000000e 	b	10a8 <func_809FEC70+0x68>
    1070:	8fbf001c 	lw	ra,28(sp)
    1074:	3c013f80 	lui	at,0x3f80
    1078:	44816000 	mtc1	at,$f12
    107c:	c4840090 	lwc1	$f4,144(a0)
    1080:	c4800094 	lwc1	$f0,148(a0)
    1084:	8fa50024 	lw	a1,36(sp)
    1088:	460c2080 	add.s	$f2,$f4,$f12
    108c:	24060054 	li	a2,84
    1090:	46000005 	abs.s	$f0,$f0
    1094:	44071000 	mfc1	a3,$f2
    1098:	460c0180 	add.s	$f6,$f0,$f12
    109c:	0c000000 	jal	0 <func_809FDC30>
    10a0:	e7a60010 	swc1	$f6,16(sp)
    10a4:	8fbf001c 	lw	ra,28(sp)
    10a8:	27bd0020 	addiu	sp,sp,32
    10ac:	03e00008 	jr	ra
    10b0:	00000000 	nop

000010b4 <func_809FECE4>:
    10b4:	27bdffe8 	addiu	sp,sp,-24
    10b8:	afbf0014 	sw	ra,20(sp)
    10bc:	afa5001c 	sw	a1,28(sp)
    10c0:	848e01f4 	lh	t6,500(a0)
    10c4:	24010003 	li	at,3
    10c8:	3c050000 	lui	a1,0x0
    10cc:	15c10003 	bne	t6,at,10dc <func_809FECE4+0x28>
    10d0:	24a50000 	addiu	a1,a1,0
    10d4:	0c000000 	jal	0 <func_809FDC30>
    10d8:	a48001f4 	sh	zero,500(a0)
    10dc:	8fbf0014 	lw	ra,20(sp)
    10e0:	27bd0018 	addiu	sp,sp,24
    10e4:	03e00008 	jr	ra
    10e8:	00000000 	nop

000010ec <EnDu_Update>:
    10ec:	27bdffc8 	addiu	sp,sp,-56
    10f0:	afb0001c 	sw	s0,28(sp)
    10f4:	00808025 	move	s0,a0
    10f8:	afb10020 	sw	s1,32(sp)
    10fc:	00a08825 	move	s1,a1
    1100:	afbf0024 	sw	ra,36(sp)
    1104:	26060194 	addiu	a2,s0,404
    1108:	00c02825 	move	a1,a2
    110c:	0c000000 	jal	0 <func_809FDC30>
    1110:	afa6002c 	sw	a2,44(sp)
    1114:	3c010001 	lui	at,0x1
    1118:	34211e60 	ori	at,at,0x1e60
    111c:	8fa6002c 	lw	a2,44(sp)
    1120:	02212821 	addu	a1,s1,at
    1124:	0c000000 	jal	0 <func_809FDC30>
    1128:	02202025 	move	a0,s1
    112c:	8e0f0154 	lw	t7,340(s0)
    1130:	3c0e0600 	lui	t6,0x600
    1134:	25ce41f4 	addiu	t6,t6,16884
    1138:	15cf000a 	bne	t6,t7,1164 <EnDu_Update+0x78>
    113c:	2604014c 	addiu	a0,s0,332
    1140:	8e05015c 	lw	a1,348(s0)
    1144:	0c000000 	jal	0 <func_809FDC30>
    1148:	afa4002c 	sw	a0,44(sp)
    114c:	10400005 	beqz	v0,1164 <EnDu_Update+0x78>
    1150:	8fa4002c 	lw	a0,44(sp)
    1154:	3c050000 	lui	a1,0x0
    1158:	24a50000 	addiu	a1,a1,0
    115c:	0c000000 	jal	0 <func_809FDC30>
    1160:	24060001 	li	a2,1
    1164:	0c000000 	jal	0 <func_809FDC30>
    1168:	2604014c 	addiu	a0,s0,332
    116c:	0c000000 	jal	0 <func_809FDC30>
    1170:	02002025 	move	a0,s0
    1174:	02002025 	move	a0,s0
    1178:	0c000000 	jal	0 <func_809FDC30>
    117c:	02202825 	move	a1,s1
    1180:	8e190190 	lw	t9,400(s0)
    1184:	3c180000 	lui	t8,0x0
    1188:	27180000 	addiu	t8,t8,0
    118c:	1719000e 	bne	t8,t9,11c8 <EnDu_Update+0xdc>
    1190:	00000000 	nop
    1194:	c6040024 	lwc1	$f4,36(s0)
    1198:	c606005c 	lwc1	$f6,92(s0)
    119c:	c60a0028 	lwc1	$f10,40(s0)
    11a0:	c6100060 	lwc1	$f16,96(s0)
    11a4:	46062200 	add.s	$f8,$f4,$f6
    11a8:	c6060064 	lwc1	$f6,100(s0)
    11ac:	c604002c 	lwc1	$f4,44(s0)
    11b0:	46105480 	add.s	$f18,$f10,$f16
    11b4:	e6080024 	swc1	$f8,36(s0)
    11b8:	46062200 	add.s	$f8,$f4,$f6
    11bc:	e6120028 	swc1	$f18,40(s0)
    11c0:	10000003 	b	11d0 <EnDu_Update+0xe4>
    11c4:	e608002c 	swc1	$f8,44(s0)
    11c8:	0c000000 	jal	0 <func_809FDC30>
    11cc:	02002025 	move	a0,s0
    11d0:	44800000 	mtc1	zero,$f0
    11d4:	24080004 	li	t0,4
    11d8:	afa80014 	sw	t0,20(sp)
    11dc:	44060000 	mfc1	a2,$f0
    11e0:	44070000 	mfc1	a3,$f0
    11e4:	02202025 	move	a0,s1
    11e8:	02002825 	move	a1,s0
    11ec:	0c000000 	jal	0 <func_809FDC30>
    11f0:	e7a00010 	swc1	$f0,16(sp)
    11f4:	8e030190 	lw	v1,400(s0)
    11f8:	3c090000 	lui	t1,0x0
    11fc:	25290000 	addiu	t1,t1,0
    1200:	51230015 	beql	t1,v1,1258 <EnDu_Update+0x16c>
    1204:	02002025 	move	a0,s0
    1208:	860a01d4 	lh	t2,468(s0)
    120c:	3c0142e8 	lui	at,0x42e8
    1210:	44819000 	mtc1	at,$f18
    1214:	448a5000 	mtc1	t2,$f10
    1218:	3c0b0000 	lui	t3,0x0
    121c:	3c0c0000 	lui	t4,0x0
    1220:	46805420 	cvt.s.w	$f16,$f10
    1224:	258c0000 	addiu	t4,t4,0
    1228:	256b0000 	addiu	t3,t3,0
    122c:	afab0010 	sw	t3,16(sp)
    1230:	afac0014 	sw	t4,20(sp)
    1234:	02202025 	move	a0,s1
    1238:	46128100 	add.s	$f4,$f16,$f18
    123c:	02002825 	move	a1,s0
    1240:	260601f4 	addiu	a2,s0,500
    1244:	44072000 	mfc1	a3,$f4
    1248:	0c000000 	jal	0 <func_809FDC30>
    124c:	00000000 	nop
    1250:	8e030190 	lw	v1,400(s0)
    1254:	02002025 	move	a0,s0
    1258:	0060f809 	jalr	v1
    125c:	02202825 	move	a1,s1
    1260:	8fbf0024 	lw	ra,36(sp)
    1264:	8fb0001c 	lw	s0,28(sp)
    1268:	8fb10020 	lw	s1,32(sp)
    126c:	03e00008 	jr	ra
    1270:	27bd0038 	addiu	sp,sp,56

00001274 <func_809FEEA4>:
    1274:	27bdffd8 	addiu	sp,sp,-40
    1278:	24010010 	li	at,16
    127c:	afbf0014 	sw	ra,20(sp)
    1280:	afa40028 	sw	a0,40(sp)
    1284:	afa5002c 	sw	a1,44(sp)
    1288:	afa60030 	sw	a2,48(sp)
    128c:	14a1002d 	bne	a1,at,1344 <func_809FEEA4+0xd0>
    1290:	afa70034 	sw	a3,52(sp)
    1294:	44807000 	mtc1	zero,$f14
    1298:	3c014516 	lui	at,0x4516
    129c:	44816000 	mtc1	at,$f12
    12a0:	44067000 	mfc1	a2,$f14
    12a4:	0c000000 	jal	0 <func_809FDC30>
    12a8:	24070001 	li	a3,1
    12ac:	8fb8003c 	lw	t8,60(sp)
    12b0:	27af001c 	addiu	t7,sp,28
    12b4:	3c014700 	lui	at,0x4700
    12b8:	8b0801fc 	lwl	t0,508(t8)
    12bc:	9b0801ff 	lwr	t0,511(t8)
    12c0:	44814000 	mtc1	at,$f8
    12c4:	3c010000 	lui	at,0x0
    12c8:	ade80000 	sw	t0,0(t7)
    12cc:	97080200 	lhu	t0,512(t8)
    12d0:	24050001 	li	a1,1
    12d4:	a5e80004 	sh	t0,4(t7)
    12d8:	87a9001e 	lh	t1,30(sp)
    12dc:	c4300000 	lwc1	$f16,0(at)
    12e0:	44892000 	mtc1	t1,$f4
    12e4:	00000000 	nop
    12e8:	468021a0 	cvt.s.w	$f6,$f4
    12ec:	46083283 	div.s	$f10,$f6,$f8
    12f0:	46105302 	mul.s	$f12,$f10,$f16
    12f4:	0c000000 	jal	0 <func_809FDC30>
    12f8:	00000000 	nop
    12fc:	87aa001c 	lh	t2,28(sp)
    1300:	3c014700 	lui	at,0x4700
    1304:	44813000 	mtc1	at,$f6
    1308:	448a9000 	mtc1	t2,$f18
    130c:	3c010000 	lui	at,0x0
    1310:	c42a0000 	lwc1	$f10,0(at)
    1314:	46809120 	cvt.s.w	$f4,$f18
    1318:	24050001 	li	a1,1
    131c:	46062203 	div.s	$f8,$f4,$f6
    1320:	460a4302 	mul.s	$f12,$f8,$f10
    1324:	0c000000 	jal	0 <func_809FDC30>
    1328:	00000000 	nop
    132c:	44807000 	mtc1	zero,$f14
    1330:	3c01c516 	lui	at,0xc516
    1334:	44816000 	mtc1	at,$f12
    1338:	44067000 	mfc1	a2,$f14
    133c:	0c000000 	jal	0 <func_809FDC30>
    1340:	24070001 	li	a3,1
    1344:	8fab002c 	lw	t3,44(sp)
    1348:	24010008 	li	at,8
    134c:	8fad003c 	lw	t5,60(sp)
    1350:	55610021 	bnel	t3,at,13d8 <func_809FEEA4+0x164>
    1354:	8fbf0014 	lw	ra,20(sp)
    1358:	89af0202 	lwl	t7,514(t5)
    135c:	99af0205 	lwr	t7,517(t5)
    1360:	27ac001c 	addiu	t4,sp,28
    1364:	3c014700 	lui	at,0x4700
    1368:	ad8f0000 	sw	t7,0(t4)
    136c:	95af0206 	lhu	t7,518(t5)
    1370:	44812000 	mtc1	at,$f4
    1374:	3c010000 	lui	at,0x0
    1378:	a58f0004 	sh	t7,4(t4)
    137c:	87b8001e 	lh	t8,30(sp)
    1380:	c4280000 	lwc1	$f8,0(at)
    1384:	24050001 	li	a1,1
    1388:	44988000 	mtc1	t8,$f16
    138c:	00000000 	nop
    1390:	468084a0 	cvt.s.w	$f18,$f16
    1394:	46049183 	div.s	$f6,$f18,$f4
    1398:	46083302 	mul.s	$f12,$f6,$f8
    139c:	0c000000 	jal	0 <func_809FDC30>
    13a0:	00000000 	nop
    13a4:	87b9001c 	lh	t9,28(sp)
    13a8:	3c014700 	lui	at,0x4700
    13ac:	44819000 	mtc1	at,$f18
    13b0:	44995000 	mtc1	t9,$f10
    13b4:	3c010000 	lui	at,0x0
    13b8:	c4260000 	lwc1	$f6,0(at)
    13bc:	46805420 	cvt.s.w	$f16,$f10
    13c0:	24050001 	li	a1,1
    13c4:	46128103 	div.s	$f4,$f16,$f18
    13c8:	46062302 	mul.s	$f12,$f4,$f6
    13cc:	0c000000 	jal	0 <func_809FDC30>
    13d0:	00000000 	nop
    13d4:	8fbf0014 	lw	ra,20(sp)
    13d8:	27bd0028 	addiu	sp,sp,40
    13dc:	00001025 	move	v0,zero
    13e0:	03e00008 	jr	ra
    13e4:	00000000 	nop

000013e8 <func_809FF018>:
    13e8:	27bdffd8 	addiu	sp,sp,-40
    13ec:	3c0e0000 	lui	t6,0x0
    13f0:	afbf0014 	sw	ra,20(sp)
    13f4:	afa40028 	sw	a0,40(sp)
    13f8:	afa60030 	sw	a2,48(sp)
    13fc:	afa70034 	sw	a3,52(sp)
    1400:	25ce0000 	addiu	t6,t6,0
    1404:	8dd80000 	lw	t8,0(t6)
    1408:	27a40018 	addiu	a0,sp,24
    140c:	24010010 	li	at,16
    1410:	ac980000 	sw	t8,0(a0)
    1414:	8dcf0004 	lw	t7,4(t6)
    1418:	ac8f0004 	sw	t7,4(a0)
    141c:	8dd80008 	lw	t8,8(t6)
    1420:	14a10004 	bne	a1,at,1434 <func_809FF018+0x4c>
    1424:	ac980008 	sw	t8,8(a0)
    1428:	8fa50038 	lw	a1,56(sp)
    142c:	0c000000 	jal	0 <func_809FDC30>
    1430:	24a50038 	addiu	a1,a1,56
    1434:	8fbf0014 	lw	ra,20(sp)
    1438:	27bd0028 	addiu	sp,sp,40
    143c:	03e00008 	jr	ra
    1440:	00000000 	nop

00001444 <EnDu_Draw>:
    1444:	27bdffb0 	addiu	sp,sp,-80
    1448:	afbf0024 	sw	ra,36(sp)
    144c:	afb00020 	sw	s0,32(sp)
    1450:	afa50054 	sw	a1,84(sp)
    1454:	8ca50000 	lw	a1,0(a1)
    1458:	00808025 	move	s0,a0
    145c:	3c060000 	lui	a2,0x0
    1460:	24c60000 	addiu	a2,a2,0
    1464:	27a40038 	addiu	a0,sp,56
    1468:	240705be 	li	a3,1470
    146c:	0c000000 	jal	0 <func_809FDC30>
    1470:	afa50048 	sw	a1,72(sp)
    1474:	8fa80048 	lw	t0,72(sp)
    1478:	3c18db06 	lui	t8,0xdb06
    147c:	37180020 	ori	t8,t8,0x20
    1480:	8d0202c0 	lw	v0,704(t0)
    1484:	3c040000 	lui	a0,0x0
    1488:	3c060000 	lui	a2,0x0
    148c:	244f0008 	addiu	t7,v0,8
    1490:	ad0f02c0 	sw	t7,704(t0)
    1494:	ac580000 	sw	t8,0(v0)
    1498:	921901ef 	lbu	t9,495(s0)
    149c:	24c60000 	addiu	a2,a2,0
    14a0:	3c0500ff 	lui	a1,0xff
    14a4:	00194880 	sll	t1,t9,0x2
    14a8:	00892021 	addu	a0,a0,t1
    14ac:	8c840000 	lw	a0,0(a0)
    14b0:	34a5ffff 	ori	a1,a1,0xffff
    14b4:	3c078000 	lui	a3,0x8000
    14b8:	00045900 	sll	t3,a0,0x4
    14bc:	000b6702 	srl	t4,t3,0x1c
    14c0:	000c6880 	sll	t5,t4,0x2
    14c4:	00cd7021 	addu	t6,a2,t5
    14c8:	8dcf0000 	lw	t7,0(t6)
    14cc:	00855024 	and	t2,a0,a1
    14d0:	3c0bdb06 	lui	t3,0xdb06
    14d4:	014fc021 	addu	t8,t2,t7
    14d8:	0307c821 	addu	t9,t8,a3
    14dc:	ac590004 	sw	t9,4(v0)
    14e0:	8d0202c0 	lw	v0,704(t0)
    14e4:	356b0024 	ori	t3,t3,0x24
    14e8:	3c040000 	lui	a0,0x0
    14ec:	24490008 	addiu	t1,v0,8
    14f0:	ad0902c0 	sw	t1,704(t0)
    14f4:	ac4b0000 	sw	t3,0(v0)
    14f8:	920c01f0 	lbu	t4,496(s0)
    14fc:	000c6880 	sll	t5,t4,0x2
    1500:	008d2021 	addu	a0,a0,t5
    1504:	8c840000 	lw	a0,0(a0)
    1508:	00045100 	sll	t2,a0,0x4
    150c:	000a7f02 	srl	t7,t2,0x1c
    1510:	000fc080 	sll	t8,t7,0x2
    1514:	00d8c821 	addu	t9,a2,t8
    1518:	8f290000 	lw	t1,0(t9)
    151c:	00857024 	and	t6,a0,a1
    1520:	3c0adb06 	lui	t2,0xdb06
    1524:	01c95821 	addu	t3,t6,t1
    1528:	01676021 	addu	t4,t3,a3
    152c:	ac4c0004 	sw	t4,4(v0)
    1530:	8d0202c0 	lw	v0,704(t0)
    1534:	354a0028 	ori	t2,t2,0x28
    1538:	3c040000 	lui	a0,0x0
    153c:	244d0008 	addiu	t5,v0,8
    1540:	ad0d02c0 	sw	t5,704(t0)
    1544:	ac4a0000 	sw	t2,0(v0)
    1548:	920f01f1 	lbu	t7,497(s0)
    154c:	000fc080 	sll	t8,t7,0x2
    1550:	00982021 	addu	a0,a0,t8
    1554:	8c840000 	lw	a0,0(a0)
    1558:	241800ff 	li	t8,255
    155c:	00047100 	sll	t6,a0,0x4
    1560:	000e4f02 	srl	t1,t6,0x1c
    1564:	00095880 	sll	t3,t1,0x2
    1568:	00cb6021 	addu	t4,a2,t3
    156c:	8d8d0000 	lw	t5,0(t4)
    1570:	0085c824 	and	t9,a0,a1
    1574:	3c060000 	lui	a2,0x0
    1578:	032d5021 	addu	t2,t9,t5
    157c:	01477821 	addu	t7,t2,a3
    1580:	ac4f0004 	sw	t7,4(v0)
    1584:	3c070000 	lui	a3,0x0
    1588:	24e70000 	addiu	a3,a3,0
    158c:	afb80014 	sw	t8,20(sp)
    1590:	afb00010 	sw	s0,16(sp)
    1594:	8fa40054 	lw	a0,84(sp)
    1598:	24c60000 	addiu	a2,a2,0
    159c:	0c000000 	jal	0 <func_809FDC30>
    15a0:	2605014c 	addiu	a1,s0,332
    15a4:	8fae0054 	lw	t6,84(sp)
    15a8:	3c060000 	lui	a2,0x0
    15ac:	24c60000 	addiu	a2,a2,0
    15b0:	27a40038 	addiu	a0,sp,56
    15b4:	240705cf 	li	a3,1487
    15b8:	0c000000 	jal	0 <func_809FDC30>
    15bc:	8dc50000 	lw	a1,0(t6)
    15c0:	8fbf0024 	lw	ra,36(sp)
    15c4:	8fb00020 	lw	s0,32(sp)
    15c8:	27bd0050 	addiu	sp,sp,80
    15cc:	03e00008 	jr	ra
    15d0:	00000000 	nop
	...
