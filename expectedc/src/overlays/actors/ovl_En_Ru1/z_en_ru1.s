
build/src/overlays/actors/ovl_En_Ru1/z_en_ru1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AEAC10>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa50034 	sw	a1,52(sp)
       c:	248602b4 	addiu	a2,a0,692
      10:	00c02825 	move	a1,a2
      14:	0c000000 	jal	0 <func_80AEAC10>
      18:	afa60018 	sw	a2,24(sp)
      1c:	8fa40034 	lw	a0,52(sp)
      20:	3c010001 	lui	at,0x1
      24:	34211e60 	ori	at,at,0x1e60
      28:	8fa60018 	lw	a2,24(sp)
      2c:	0c000000 	jal	0 <func_80AEAC10>
      30:	00812821 	addu	a1,a0,at
      34:	8fbf0014 	lw	ra,20(sp)
      38:	27bd0030 	addiu	sp,sp,48
      3c:	03e00008 	jr	ra
      40:	00000000 	nop

00000044 <func_80AEAC54>:
      44:	27bdffd0 	addiu	sp,sp,-48
      48:	afbf0014 	sw	ra,20(sp)
      4c:	afa50034 	sw	a1,52(sp)
      50:	24860300 	addiu	a2,a0,768
      54:	00c02825 	move	a1,a2
      58:	afa60018 	sw	a2,24(sp)
      5c:	0c000000 	jal	0 <func_80AEAC10>
      60:	afa40030 	sw	a0,48(sp)
      64:	8fa40030 	lw	a0,48(sp)
      68:	8fa60018 	lw	a2,24(sp)
      6c:	8fa70034 	lw	a3,52(sp)
      70:	8c8e034c 	lw	t6,844(a0)
      74:	3c014200 	lui	at,0x4200
      78:	51c00009 	beqzl	t6,a0 <func_80AEAC54+0x5c>
      7c:	44812000 	mtc1	at,$f4
      80:	3c010001 	lui	at,0x1
      84:	34211e60 	ori	at,at,0x1e60
      88:	00e12821 	addu	a1,a3,at
      8c:	0c000000 	jal	0 <func_80AEAC10>
      90:	00e02025 	move	a0,a3
      94:	1000000a 	b	c0 <func_80AEAC54+0x7c>
      98:	8fbf0014 	lw	ra,20(sp)
      9c:	44812000 	mtc1	at,$f4
      a0:	c4860090 	lwc1	$f6,144(a0)
      a4:	240f0001 	li	t7,1
      a8:	4606203c 	c.lt.s	$f4,$f6
      ac:	00000000 	nop
      b0:	45020003 	bc1fl	c0 <func_80AEAC54+0x7c>
      b4:	8fbf0014 	lw	ra,20(sp)
      b8:	ac8f034c 	sw	t7,844(a0)
      bc:	8fbf0014 	lw	ra,20(sp)
      c0:	27bd0030 	addiu	sp,sp,48
      c4:	03e00008 	jr	ra
      c8:	00000000 	nop

000000cc <func_80AEACDC>:
      cc:	27bdffd0 	addiu	sp,sp,-48
      d0:	afbf0014 	sw	ra,20(sp)
      d4:	afa50034 	sw	a1,52(sp)
      d8:	24860300 	addiu	a2,a0,768
      dc:	00c02825 	move	a1,a2
      e0:	0c000000 	jal	0 <func_80AEAC10>
      e4:	afa60018 	sw	a2,24(sp)
      e8:	8fa40034 	lw	a0,52(sp)
      ec:	3c010001 	lui	at,0x1
      f0:	34211e60 	ori	at,at,0x1e60
      f4:	8fa60018 	lw	a2,24(sp)
      f8:	0c000000 	jal	0 <func_80AEAC10>
      fc:	00812821 	addu	a1,a0,at
     100:	8fbf0014 	lw	ra,20(sp)
     104:	27bd0030 	addiu	sp,sp,48
     108:	03e00008 	jr	ra
     10c:	00000000 	nop

00000110 <func_80AEAD20>:
     110:	27bdffd8 	addiu	sp,sp,-40
     114:	afb00018 	sw	s0,24(sp)
     118:	00808025 	move	s0,a0
     11c:	afa5002c 	sw	a1,44(sp)
     120:	00a02025 	move	a0,a1
     124:	afbf001c 	sw	ra,28(sp)
     128:	260502b4 	addiu	a1,s0,692
     12c:	0c000000 	jal	0 <func_80AEAC10>
     130:	afa50020 	sw	a1,32(sp)
     134:	3c070000 	lui	a3,0x0
     138:	8fa50020 	lw	a1,32(sp)
     13c:	24e70000 	addiu	a3,a3,0
     140:	8fa4002c 	lw	a0,44(sp)
     144:	0c000000 	jal	0 <func_80AEAC10>
     148:	02003025 	move	a2,s0
     14c:	26050300 	addiu	a1,s0,768
     150:	afa50020 	sw	a1,32(sp)
     154:	0c000000 	jal	0 <func_80AEAC10>
     158:	8fa4002c 	lw	a0,44(sp)
     15c:	3c070000 	lui	a3,0x0
     160:	8fa50020 	lw	a1,32(sp)
     164:	24e7002c 	addiu	a3,a3,44
     168:	8fa4002c 	lw	a0,44(sp)
     16c:	0c000000 	jal	0 <func_80AEAC10>
     170:	02003025 	move	a2,s0
     174:	8fbf001c 	lw	ra,28(sp)
     178:	8fb00018 	lw	s0,24(sp)
     17c:	27bd0028 	addiu	sp,sp,40
     180:	03e00008 	jr	ra
     184:	00000000 	nop

00000188 <func_80AEAD98>:
     188:	27bdffe8 	addiu	sp,sp,-24
     18c:	afa40018 	sw	a0,24(sp)
     190:	afa5001c 	sw	a1,28(sp)
     194:	00a02025 	move	a0,a1
     198:	8fa50018 	lw	a1,24(sp)
     19c:	afbf0014 	sw	ra,20(sp)
     1a0:	0c000000 	jal	0 <func_80AEAC10>
     1a4:	24a502b4 	addiu	a1,a1,692
     1a8:	8fa50018 	lw	a1,24(sp)
     1ac:	8fa4001c 	lw	a0,28(sp)
     1b0:	0c000000 	jal	0 <func_80AEAC10>
     1b4:	24a50300 	addiu	a1,a1,768
     1b8:	8fbf0014 	lw	ra,20(sp)
     1bc:	27bd0018 	addiu	sp,sp,24
     1c0:	03e00008 	jr	ra
     1c4:	00000000 	nop

000001c8 <func_80AEADD8>:
     1c8:	03e00008 	jr	ra
     1cc:	ac80034c 	sw	zero,844(a0)

000001d0 <func_80AEADE0>:
     1d0:	8483001c 	lh	v1,28(a0)
     1d4:	00031a03 	sra	v1,v1,0x8
     1d8:	03e00008 	jr	ra
     1dc:	306200ff 	andi	v0,v1,0xff

000001e0 <func_80AEADF0>:
     1e0:	8483001c 	lh	v1,28(a0)
     1e4:	03e00008 	jr	ra
     1e8:	306200ff 	andi	v0,v1,0xff

000001ec <EnRu1_Destroy>:
     1ec:	27bdffe8 	addiu	sp,sp,-24
     1f0:	afbf0014 	sw	ra,20(sp)
     1f4:	0c000000 	jal	0 <func_80AEAC10>
     1f8:	00000000 	nop
     1fc:	8fbf0014 	lw	ra,20(sp)
     200:	27bd0018 	addiu	sp,sp,24
     204:	03e00008 	jr	ra
     208:	00000000 	nop

0000020c <func_80AEAE1C>:
     20c:	27bdffc8 	addiu	sp,sp,-56
     210:	afbf0014 	sw	ra,20(sp)
     214:	848e025e 	lh	t6,606(a0)
     218:	00803025 	move	a2,a0
     21c:	24c3025e 	addiu	v1,a2,606
     220:	15c00003 	bnez	t6,230 <func_80AEAE1C+0x24>
     224:	00001025 	move	v0,zero
     228:	10000005 	b	240 <func_80AEAE1C+0x34>
     22c:	2483025e 	addiu	v1,a0,606
     230:	846f0000 	lh	t7,0(v1)
     234:	25f8ffff 	addiu	t8,t7,-1
     238:	a4780000 	sh	t8,0(v1)
     23c:	84620000 	lh	v0,0(v1)
     240:	14400008 	bnez	v0,264 <func_80AEAE1C+0x58>
     244:	2404003c 	li	a0,60
     248:	2405003c 	li	a1,60
     24c:	afa3001c 	sw	v1,28(sp)
     250:	0c000000 	jal	0 <func_80AEAC10>
     254:	afa60038 	sw	a2,56(sp)
     258:	8fa3001c 	lw	v1,28(sp)
     25c:	8fa60038 	lw	a2,56(sp)
     260:	a4620000 	sh	v0,0(v1)
     264:	84790000 	lh	t9,0(v1)
     268:	24c2025c 	addiu	v0,a2,604
     26c:	a4590000 	sh	t9,0(v0)
     270:	84480000 	lh	t0,0(v0)
     274:	29010003 	slti	at,t0,3
     278:	54200003 	bnezl	at,288 <func_80AEAE1C+0x7c>
     27c:	8fbf0014 	lw	ra,20(sp)
     280:	a4400000 	sh	zero,0(v0)
     284:	8fbf0014 	lw	ra,20(sp)
     288:	27bd0038 	addiu	sp,sp,56
     28c:	03e00008 	jr	ra
     290:	00000000 	nop

00000294 <func_80AEAEA4>:
     294:	afa50004 	sw	a1,4(sp)
     298:	00052c00 	sll	a1,a1,0x10
     29c:	00052c03 	sra	a1,a1,0x10
     2a0:	03e00008 	jr	ra
     2a4:	a485025c 	sh	a1,604(a0)

000002a8 <func_80AEAEB8>:
     2a8:	afa50004 	sw	a1,4(sp)
     2ac:	00052c00 	sll	a1,a1,0x10
     2b0:	00052c03 	sra	a1,a1,0x10
     2b4:	03e00008 	jr	ra
     2b8:	a4850260 	sh	a1,608(a0)

000002bc <func_80AEAECC>:
     2bc:	27bdffd8 	addiu	sp,sp,-40
     2c0:	afbf001c 	sw	ra,28(sp)
     2c4:	afa40028 	sw	a0,40(sp)
     2c8:	afa5002c 	sw	a1,44(sp)
     2cc:	c4840060 	lwc1	$f4,96(a0)
     2d0:	3c01c080 	lui	at,0xc080
     2d4:	44813000 	mtc1	at,$f6
     2d8:	e7a40020 	swc1	$f4,32(sp)
     2dc:	3c0141f0 	lui	at,0x41f0
     2e0:	e4860060 	swc1	$f6,96(a0)
     2e4:	44814000 	mtc1	at,$f8
     2e8:	00802825 	move	a1,a0
     2ec:	240e0007 	li	t6,7
     2f0:	afae0014 	sw	t6,20(sp)
     2f4:	afa50028 	sw	a1,40(sp)
     2f8:	8fa4002c 	lw	a0,44(sp)
     2fc:	3c064198 	lui	a2,0x4198
     300:	3c0741c8 	lui	a3,0x41c8
     304:	0c000000 	jal	0 <func_80AEAC10>
     308:	e7a80010 	swc1	$f8,16(sp)
     30c:	8fa50028 	lw	a1,40(sp)
     310:	c7aa0020 	lwc1	$f10,32(sp)
     314:	e4aa0060 	swc1	$f10,96(a1)
     318:	8fbf001c 	lw	ra,28(sp)
     31c:	27bd0028 	addiu	sp,sp,40
     320:	03e00008 	jr	ra
     324:	00000000 	nop

00000328 <func_80AEAF38>:
     328:	908e1d6c 	lbu	t6,7532(a0)
     32c:	00001025 	move	v0,zero
     330:	15c00003 	bnez	t6,340 <func_80AEAF38+0x18>
     334:	00000000 	nop
     338:	03e00008 	jr	ra
     33c:	24020001 	li	v0,1
     340:	03e00008 	jr	ra
     344:	00000000 	nop

00000348 <func_80AEAF58>:
     348:	27bdffd8 	addiu	sp,sp,-40
     34c:	afbf0014 	sw	ra,20(sp)
     350:	afa40028 	sw	a0,40(sp)
     354:	afa5002c 	sw	a1,44(sp)
     358:	0c000000 	jal	0 <func_80AEAC10>
     35c:	afa0001c 	sw	zero,28(sp)
     360:	14400006 	bnez	v0,37c <func_80AEAF58+0x34>
     364:	8fa3001c 	lw	v1,28(sp)
     368:	8faf002c 	lw	t7,44(sp)
     36c:	8fae0028 	lw	t6,40(sp)
     370:	000fc080 	sll	t8,t7,0x2
     374:	01d8c821 	addu	t9,t6,t8
     378:	8f231d8c 	lw	v1,7564(t9)
     37c:	8fbf0014 	lw	ra,20(sp)
     380:	27bd0028 	addiu	sp,sp,40
     384:	00601025 	move	v0,v1
     388:	03e00008 	jr	ra
     38c:	00000000 	nop

00000390 <func_80AEAFA0>:
     390:	27bdffe8 	addiu	sp,sp,-24
     394:	afbf0014 	sw	ra,20(sp)
     398:	afa5001c 	sw	a1,28(sp)
     39c:	0c000000 	jal	0 <func_80AEAC10>
     3a0:	00c02825 	move	a1,a2
     3a4:	10400007 	beqz	v0,3c4 <func_80AEAFA0+0x34>
     3a8:	8fbf0014 	lw	ra,20(sp)
     3ac:	97ae001e 	lhu	t6,30(sp)
     3b0:	944f0000 	lhu	t7,0(v0)
     3b4:	55cf0004 	bnel	t6,t7,3c8 <func_80AEAFA0+0x38>
     3b8:	00001025 	move	v0,zero
     3bc:	10000002 	b	3c8 <func_80AEAFA0+0x38>
     3c0:	24020001 	li	v0,1
     3c4:	00001025 	move	v0,zero
     3c8:	03e00008 	jr	ra
     3cc:	27bd0018 	addiu	sp,sp,24

000003d0 <func_80AEAFE0>:
     3d0:	27bdffe8 	addiu	sp,sp,-24
     3d4:	afbf0014 	sw	ra,20(sp)
     3d8:	afa5001c 	sw	a1,28(sp)
     3dc:	0c000000 	jal	0 <func_80AEAC10>
     3e0:	00c02825 	move	a1,a2
     3e4:	10400007 	beqz	v0,404 <func_80AEAFE0+0x34>
     3e8:	8fbf0014 	lw	ra,20(sp)
     3ec:	97ae001e 	lhu	t6,30(sp)
     3f0:	944f0000 	lhu	t7,0(v0)
     3f4:	51cf0004 	beql	t6,t7,408 <func_80AEAFE0+0x38>
     3f8:	00001025 	move	v0,zero
     3fc:	10000002 	b	408 <func_80AEAFE0+0x38>
     400:	24020001 	li	v0,1
     404:	00001025 	move	v0,zero
     408:	03e00008 	jr	ra
     40c:	27bd0018 	addiu	sp,sp,24

00000410 <func_80AEB020>:
     410:	8ca21c54 	lw	v0,7252(a1)
     414:	24080018 	li	t0,24
     418:	24070020 	li	a3,32
     41c:	10400013 	beqz	v0,46c <func_80AEB020+0x5c>
     420:	2406001f 	li	a2,31
     424:	240500a1 	li	a1,161
     428:	844e0000 	lh	t6,0(v0)
     42c:	54ae000d 	bnel	a1,t6,464 <func_80AEB020+0x54>
     430:	8c420124 	lw	v0,292(v0)
     434:	5044000b 	beql	v0,a0,464 <func_80AEB020+0x54>
     438:	8c420124 	lw	v0,292(v0)
     43c:	8c430264 	lw	v1,612(v0)
     440:	10c30005 	beq	a2,v1,458 <func_80AEB020+0x48>
     444:	00000000 	nop
     448:	10e30003 	beq	a3,v1,458 <func_80AEB020+0x48>
     44c:	00000000 	nop
     450:	55030004 	bnel	t0,v1,464 <func_80AEB020+0x54>
     454:	8c420124 	lw	v0,292(v0)
     458:	03e00008 	jr	ra
     45c:	24020001 	li	v0,1
     460:	8c420124 	lw	v0,292(v0)
     464:	5440fff1 	bnezl	v0,42c <func_80AEB020+0x1c>
     468:	844e0000 	lh	t6,0(v0)
     46c:	00001025 	move	v0,zero
     470:	03e00008 	jr	ra
     474:	00000000 	nop

00000478 <func_80AEB088>:
     478:	27bdffe8 	addiu	sp,sp,-24
     47c:	afbf0014 	sw	ra,20(sp)
     480:	8c831c3c 	lw	v1,7228(a0)
     484:	240200c8 	li	v0,200
     488:	1060000c 	beqz	v1,4bc <func_80AEB088+0x44>
     48c:	00000000 	nop
     490:	846e0000 	lh	t6,0(v1)
     494:	544e0007 	bnel	v0,t6,4b4 <func_80AEB088+0x3c>
     498:	8c630124 	lw	v1,292(v1)
     49c:	846f001c 	lh	t7,28(v1)
     4a0:	55e00004 	bnezl	t7,4b4 <func_80AEB088+0x3c>
     4a4:	8c630124 	lw	v1,292(v1)
     4a8:	10000008 	b	4cc <func_80AEB088+0x54>
     4ac:	00601025 	move	v0,v1
     4b0:	8c630124 	lw	v1,292(v1)
     4b4:	5460fff7 	bnezl	v1,494 <func_80AEB088+0x1c>
     4b8:	846e0000 	lh	t6,0(v1)
     4bc:	3c040000 	lui	a0,0x0
     4c0:	0c000000 	jal	0 <func_80AEAC10>
     4c4:	24840000 	addiu	a0,a0,0
     4c8:	00001025 	move	v0,zero
     4cc:	8fbf0014 	lw	ra,20(sp)
     4d0:	27bd0018 	addiu	sp,sp,24
     4d4:	03e00008 	jr	ra
     4d8:	00000000 	nop

000004dc <func_80AEB0EC>:
     4dc:	8c82028c 	lw	v0,652(a0)
     4e0:	10400002 	beqz	v0,4ec <func_80AEB0EC+0x10>
     4e4:	00000000 	nop
     4e8:	ac4501b8 	sw	a1,440(v0)
     4ec:	03e00008 	jr	ra
     4f0:	00000000 	nop

000004f4 <func_80AEB104>:
     4f4:	8c83028c 	lw	v1,652(a0)
     4f8:	00001025 	move	v0,zero
     4fc:	10600003 	beqz	v1,50c <func_80AEB104+0x18>
     500:	00000000 	nop
     504:	03e00008 	jr	ra
     508:	8c6201b8 	lw	v0,440(v1)
     50c:	03e00008 	jr	ra
     510:	00000000 	nop

00000514 <func_80AEB124>:
     514:	8c831c7c 	lw	v1,7292(a0)
     518:	24040015 	li	a0,21
     51c:	2402008b 	li	v0,139
     520:	5060000e 	beqzl	v1,55c <func_80AEB124+0x48>
     524:	00001025 	move	v0,zero
     528:	846e0000 	lh	t6,0(v1)
     52c:	544e0008 	bnel	v0,t6,550 <func_80AEB124+0x3c>
     530:	8c630124 	lw	v1,292(v1)
     534:	846f001c 	lh	t7,28(v1)
     538:	31f800ff 	andi	t8,t7,0xff
     53c:	54980004 	bnel	a0,t8,550 <func_80AEB124+0x3c>
     540:	8c630124 	lw	v1,292(v1)
     544:	03e00008 	jr	ra
     548:	00601025 	move	v0,v1
     54c:	8c630124 	lw	v1,292(v1)
     550:	5460fff6 	bnezl	v1,52c <func_80AEB124+0x18>
     554:	846e0000 	lh	t6,0(v1)
     558:	00001025 	move	v0,zero
     55c:	03e00008 	jr	ra
     560:	00000000 	nop

00000564 <func_80AEB174>:
     564:	27bdffe8 	addiu	sp,sp,-24
     568:	afbf0014 	sw	ra,20(sp)
     56c:	afa40018 	sw	a0,24(sp)
     570:	0c000000 	jal	0 <func_80AEAC10>
     574:	248420d8 	addiu	a0,a0,8408
     578:	38420005 	xori	v0,v0,0x5
     57c:	2c420001 	sltiu	v0,v0,1
     580:	50400005 	beqzl	v0,598 <func_80AEB174+0x34>
     584:	8fbf0014 	lw	ra,20(sp)
     588:	0c000000 	jal	0 <func_80AEAC10>
     58c:	8fa40018 	lw	a0,24(sp)
     590:	0002102b 	sltu	v0,zero,v0
     594:	8fbf0014 	lw	ra,20(sp)
     598:	27bd0018 	addiu	sp,sp,24
     59c:	03e00008 	jr	ra
     5a0:	00000000 	nop

000005a4 <func_80AEB1B4>:
     5a4:	27bdffe8 	addiu	sp,sp,-24
     5a8:	afbf0014 	sw	ra,20(sp)
     5ac:	0c000000 	jal	0 <func_80AEAC10>
     5b0:	248420d8 	addiu	a0,a0,8408
     5b4:	8fbf0014 	lw	ra,20(sp)
     5b8:	38420002 	xori	v0,v0,0x2
     5bc:	2c420001 	sltiu	v0,v0,1
     5c0:	03e00008 	jr	ra
     5c4:	27bd0018 	addiu	sp,sp,24

000005c8 <func_80AEB1D8>:
     5c8:	27bdffe8 	addiu	sp,sp,-24
     5cc:	afbf0014 	sw	ra,20(sp)
     5d0:	44800000 	mtc1	zero,$f0
     5d4:	240e0024 	li	t6,36
     5d8:	ac8e0264 	sw	t6,612(a0)
     5dc:	ac800268 	sw	zero,616(a0)
     5e0:	00002825 	move	a1,zero
     5e4:	e480005c 	swc1	$f0,92(a0)
     5e8:	e4800060 	swc1	$f0,96(a0)
     5ec:	e4800064 	swc1	$f0,100(a0)
     5f0:	e4800068 	swc1	$f0,104(a0)
     5f4:	e480006c 	swc1	$f0,108(a0)
     5f8:	0c000000 	jal	0 <func_80AEAC10>
     5fc:	e4800070 	swc1	$f0,112(a0)
     600:	8fbf0014 	lw	ra,20(sp)
     604:	27bd0018 	addiu	sp,sp,24
     608:	03e00008 	jr	ra
     60c:	00000000 	nop

00000610 <func_80AEB220>:
     610:	27bdffe8 	addiu	sp,sp,-24
     614:	afbf0014 	sw	ra,20(sp)
     618:	afa40018 	sw	a0,24(sp)
     61c:	0c000000 	jal	0 <func_80AEAC10>
     620:	00a02025 	move	a0,a1
     624:	10400007 	beqz	v0,644 <func_80AEB220+0x34>
     628:	8fa40018 	lw	a0,24(sp)
     62c:	848e001c 	lh	t6,28(a0)
     630:	2401000a 	li	at,10
     634:	55c10004 	bnel	t6,at,648 <func_80AEB220+0x38>
     638:	8fbf0014 	lw	ra,20(sp)
     63c:	0c000000 	jal	0 <func_80AEAC10>
     640:	00000000 	nop
     644:	8fbf0014 	lw	ra,20(sp)
     648:	27bd0018 	addiu	sp,sp,24
     64c:	03e00008 	jr	ra
     650:	00000000 	nop

00000654 <func_80AEB264>:
     654:	00057100 	sll	t6,a1,0x4
     658:	000e7f02 	srl	t7,t6,0x1c
     65c:	000fc080 	sll	t8,t7,0x2
     660:	3c190000 	lui	t9,0x0
     664:	0338c821 	addu	t9,t9,t8
     668:	3c0100ff 	lui	at,0xff
     66c:	8f390000 	lw	t9,0(t9)
     670:	3421ffff 	ori	at,at,0xffff
     674:	27bdffc8 	addiu	sp,sp,-56
     678:	00a14024 	and	t0,a1,at
     67c:	afa40038 	sw	a0,56(sp)
     680:	3c018000 	lui	at,0x8000
     684:	03282021 	addu	a0,t9,t0
     688:	afbf0024 	sw	ra,36(sp)
     68c:	00812021 	addu	a0,a0,at
     690:	afa60040 	sw	a2,64(sp)
     694:	afa70044 	sw	a3,68(sp)
     698:	0c000000 	jal	0 <func_80AEAC10>
     69c:	afa4002c 	sw	a0,44(sp)
     6a0:	8fa90048 	lw	t1,72(sp)
     6a4:	8fa40038 	lw	a0,56(sp)
     6a8:	8fa5002c 	lw	a1,44(sp)
     6ac:	15200007 	bnez	t1,6cc <func_80AEB264+0x78>
     6b0:	2484014c 	addiu	a0,a0,332
     6b4:	44822000 	mtc1	v0,$f4
     6b8:	3c013f80 	lui	at,0x3f80
     6bc:	44800000 	mtc1	zero,$f0
     6c0:	44816000 	mtc1	at,$f12
     6c4:	10000006 	b	6e0 <func_80AEB264+0x8c>
     6c8:	468020a0 	cvt.s.w	$f2,$f4
     6cc:	44823000 	mtc1	v0,$f6
     6d0:	3c01bf80 	lui	at,0xbf80
     6d4:	44801000 	mtc1	zero,$f2
     6d8:	44816000 	mtc1	at,$f12
     6dc:	46803020 	cvt.s.w	$f0,$f6
     6e0:	93aa0043 	lbu	t2,67(sp)
     6e4:	c7a80044 	lwc1	$f8,68(sp)
     6e8:	44066000 	mfc1	a2,$f12
     6ec:	44070000 	mfc1	a3,$f0
     6f0:	e7a20010 	swc1	$f2,16(sp)
     6f4:	afaa0014 	sw	t2,20(sp)
     6f8:	0c000000 	jal	0 <func_80AEAC10>
     6fc:	e7a80018 	swc1	$f8,24(sp)
     700:	8fbf0024 	lw	ra,36(sp)
     704:	27bd0038 	addiu	sp,sp,56
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <EnRu1_FrameUpdateMatrix>:
     710:	27bdffe8 	addiu	sp,sp,-24
     714:	afbf0014 	sw	ra,20(sp)
     718:	8c8e0264 	lw	t6,612(a0)
     71c:	24010020 	li	at,32
     720:	00802825 	move	a1,a0
     724:	11c10005 	beq	t6,at,73c <EnRu1_FrameUpdateMatrix+0x2c>
     728:	00000000 	nop
     72c:	0c000000 	jal	0 <func_80AEAC10>
     730:	2484014c 	addiu	a0,a0,332
     734:	10000004 	b	748 <EnRu1_FrameUpdateMatrix+0x38>
     738:	8fbf0014 	lw	ra,20(sp)
     73c:	0c000000 	jal	0 <func_80AEAC10>
     740:	24a4014c 	addiu	a0,a1,332
     744:	8fbf0014 	lw	ra,20(sp)
     748:	27bd0018 	addiu	sp,sp,24
     74c:	03e00008 	jr	ra
     750:	00000000 	nop

00000754 <func_80AEB364>:
     754:	27bdffe8 	addiu	sp,sp,-24
     758:	afbf0014 	sw	ra,20(sp)
     75c:	afa40018 	sw	a0,24(sp)
     760:	afa5001c 	sw	a1,28(sp)
     764:	908e0181 	lbu	t6,385(a0)
     768:	00802825 	move	a1,a0
     76c:	24a6014c 	addiu	a2,a1,332
     770:	35cf0001 	ori	t7,t6,0x1
     774:	a08f0181 	sb	t7,385(a0)
     778:	8fa4001c 	lw	a0,28(sp)
     77c:	0c000000 	jal	0 <func_80AEAC10>
     780:	3c073f80 	lui	a3,0x3f80
     784:	8fbf0014 	lw	ra,20(sp)
     788:	27bd0018 	addiu	sp,sp,24
     78c:	03e00008 	jr	ra
     790:	00000000 	nop

00000794 <func_80AEB3A4>:
     794:	27bdffe8 	addiu	sp,sp,-24
     798:	afbf0014 	sw	ra,20(sp)
     79c:	908e0181 	lbu	t6,385(a0)
     7a0:	35cf0001 	ori	t7,t6,0x1
     7a4:	0c000000 	jal	0 <func_80AEAC10>
     7a8:	a08f0181 	sb	t7,385(a0)
     7ac:	8fbf0014 	lw	ra,20(sp)
     7b0:	27bd0018 	addiu	sp,sp,24
     7b4:	03e00008 	jr	ra
     7b8:	00000000 	nop

000007bc <func_80AEB3CC>:
     7bc:	908e0181 	lbu	t6,385(a0)
     7c0:	31cffffe 	andi	t7,t6,0xfffe
     7c4:	03e00008 	jr	ra
     7c8:	a08f0181 	sb	t7,385(a0)

000007cc <func_80AEB3DC>:
     7cc:	27bdffe0 	addiu	sp,sp,-32
     7d0:	afa50024 	sw	a1,36(sp)
     7d4:	afbf001c 	sw	ra,28(sp)
     7d8:	3c050000 	lui	a1,0x0
     7dc:	24a50000 	addiu	a1,a1,0
     7e0:	afa00010 	sw	zero,16(sp)
     7e4:	afa40020 	sw	a0,32(sp)
     7e8:	00003025 	move	a2,zero
     7ec:	0c000000 	jal	0 <func_80AEAC10>
     7f0:	24070000 	li	a3,0
     7f4:	8fa40020 	lw	a0,32(sp)
     7f8:	240e0001 	li	t6,1
     7fc:	24050004 	li	a1,4
     800:	ac800264 	sw	zero,612(a0)
     804:	0c000000 	jal	0 <func_80AEAC10>
     808:	ac8e0268 	sw	t6,616(a0)
     80c:	8fa40020 	lw	a0,32(sp)
     810:	0c000000 	jal	0 <func_80AEAC10>
     814:	00002825 	move	a1,zero
     818:	8fbf001c 	lw	ra,28(sp)
     81c:	27bd0020 	addiu	sp,sp,32
     820:	03e00008 	jr	ra
     824:	00000000 	nop

00000828 <func_80AEB438>:
     828:	27bdffe8 	addiu	sp,sp,-24
     82c:	afbf0014 	sw	ra,20(sp)
     830:	0c000000 	jal	0 <func_80AEAC10>
     834:	24050003 	li	a1,3
     838:	8fbf0014 	lw	ra,20(sp)
     83c:	27bd0018 	addiu	sp,sp,24
     840:	03e00008 	jr	ra
     844:	00000000 	nop

00000848 <func_80AEB458>:
     848:	27bdffe8 	addiu	sp,sp,-24
     84c:	afbf0014 	sw	ra,20(sp)
     850:	afa5001c 	sw	a1,28(sp)
     854:	30a5ffff 	andi	a1,a1,0xffff
     858:	0c000000 	jal	0 <func_80AEAC10>
     85c:	24060003 	li	a2,3
     860:	8fbf0014 	lw	ra,20(sp)
     864:	27bd0018 	addiu	sp,sp,24
     868:	03e00008 	jr	ra
     86c:	00000000 	nop

00000870 <func_80AEB480>:
     870:	27bdffe8 	addiu	sp,sp,-24
     874:	afbf0014 	sw	ra,20(sp)
     878:	afa5001c 	sw	a1,28(sp)
     87c:	30a5ffff 	andi	a1,a1,0xffff
     880:	0c000000 	jal	0 <func_80AEAC10>
     884:	24060003 	li	a2,3
     888:	8fbf0014 	lw	ra,20(sp)
     88c:	27bd0018 	addiu	sp,sp,24
     890:	03e00008 	jr	ra
     894:	00000000 	nop

00000898 <EnRu1_SpawnRipple>:
     898:	27bdffd0 	addiu	sp,sp,-48
     89c:	afbf001c 	sw	ra,28(sp)
     8a0:	afa40030 	sw	a0,48(sp)
     8a4:	afa50034 	sw	a1,52(sp)
     8a8:	afa60038 	sw	a2,56(sp)
     8ac:	afa7003c 	sw	a3,60(sp)
     8b0:	c4840024 	lwc1	$f4,36(a0)
     8b4:	87af003e 	lh	t7,62(sp)
     8b8:	87a7003a 	lh	a3,58(sp)
     8bc:	e7a40024 	swc1	$f4,36(sp)
     8c0:	c4880084 	lwc1	$f8,132(a0)
     8c4:	c4860028 	lwc1	$f6,40(a0)
     8c8:	24060064 	li	a2,100
     8cc:	46083280 	add.s	$f10,$f6,$f8
     8d0:	e7aa0028 	swc1	$f10,40(sp)
     8d4:	c490002c 	lwc1	$f16,44(a0)
     8d8:	00a02025 	move	a0,a1
     8dc:	27a50024 	addiu	a1,sp,36
     8e0:	afaf0010 	sw	t7,16(sp)
     8e4:	0c000000 	jal	0 <func_80AEAC10>
     8e8:	e7b0002c 	swc1	$f16,44(sp)
     8ec:	8fbf001c 	lw	ra,28(sp)
     8f0:	27bd0030 	addiu	sp,sp,48
     8f4:	03e00008 	jr	ra
     8f8:	00000000 	nop

000008fc <func_80AEB50C>:
     8fc:	27bdffe8 	addiu	sp,sp,-24
     900:	afbf0014 	sw	ra,20(sp)
     904:	3c013f80 	lui	at,0x3f80
     908:	44813000 	mtc1	at,$f6
     90c:	c4840270 	lwc1	$f4,624(a0)
     910:	3c020000 	lui	v0,0x0
     914:	3c014120 	lui	at,0x4120
     918:	46062200 	add.s	$f8,$f4,$f6
     91c:	44812000 	mtc1	at,$f4
     920:	e4880270 	swc1	$f8,624(a0)
     924:	8c420000 	lw	v0,0(v0)
     928:	c48a0270 	lwc1	$f10,624(a0)
     92c:	844e145a 	lh	t6,5210(v0)
     930:	448e8000 	mtc1	t6,$f16
     934:	00000000 	nop
     938:	468084a0 	cvt.s.w	$f18,$f16
     93c:	46049180 	add.s	$f6,$f18,$f4
     940:	460a303e 	c.le.s	$f6,$f10
     944:	00000000 	nop
     948:	4502000d 	bc1fl	980 <func_80AEB50C+0x84>
     94c:	8fbf0014 	lw	ra,20(sp)
     950:	84461456 	lh	a2,5206(v0)
     954:	afa40018 	sw	a0,24(sp)
     958:	00003825 	move	a3,zero
     95c:	24c601f4 	addiu	a2,a2,500
     960:	00063400 	sll	a2,a2,0x10
     964:	0c000000 	jal	0 <func_80AEAC10>
     968:	00063403 	sra	a2,a2,0x10
     96c:	8fa40018 	lw	a0,24(sp)
     970:	44804000 	mtc1	zero,$f8
     974:	00000000 	nop
     978:	e4880270 	swc1	$f8,624(a0)
     97c:	8fbf0014 	lw	ra,20(sp)
     980:	27bd0018 	addiu	sp,sp,24
     984:	03e00008 	jr	ra
     988:	00000000 	nop

0000098c <func_80AEB59C>:
     98c:	27bdffe8 	addiu	sp,sp,-24
     990:	3c0e0000 	lui	t6,0x0
     994:	8dce0000 	lw	t6,0(t6)
     998:	afbf0014 	sw	ra,20(sp)
     99c:	afa40018 	sw	a0,24(sp)
     9a0:	afa5001c 	sw	a1,28(sp)
     9a4:	85c61458 	lh	a2,5208(t6)
     9a8:	00003825 	move	a3,zero
     9ac:	24c601f4 	addiu	a2,a2,500
     9b0:	00063400 	sll	a2,a2,0x10
     9b4:	0c000000 	jal	0 <func_80AEAC10>
     9b8:	00063403 	sra	a2,a2,0x10
     9bc:	3c020000 	lui	v0,0x0
     9c0:	8c420000 	lw	v0,0(v0)
     9c4:	3c014120 	lui	at,0x4120
     9c8:	44814000 	mtc1	at,$f8
     9cc:	844f145a 	lh	t7,5210(v0)
     9d0:	84461458 	lh	a2,5208(v0)
     9d4:	8fa40018 	lw	a0,24(sp)
     9d8:	448f2000 	mtc1	t7,$f4
     9dc:	24c601f4 	addiu	a2,a2,500
     9e0:	00063400 	sll	a2,a2,0x10
     9e4:	468021a0 	cvt.s.w	$f6,$f4
     9e8:	00063403 	sra	a2,a2,0x10
     9ec:	8fa5001c 	lw	a1,28(sp)
     9f0:	46083280 	add.s	$f10,$f6,$f8
     9f4:	4600540d 	trunc.w.s	$f16,$f10
     9f8:	44078000 	mfc1	a3,$f16
     9fc:	00000000 	nop
     a00:	00073c00 	sll	a3,a3,0x10
     a04:	0c000000 	jal	0 <func_80AEAC10>
     a08:	00073c03 	sra	a3,a3,0x10
     a0c:	3c020000 	lui	v0,0x0
     a10:	8c420000 	lw	v0,0(v0)
     a14:	3c014120 	lui	at,0x4120
     a18:	44813000 	mtc1	at,$f6
     a1c:	8459145a 	lh	t9,5210(v0)
     a20:	84461458 	lh	a2,5208(v0)
     a24:	8fa40018 	lw	a0,24(sp)
     a28:	44999000 	mtc1	t9,$f18
     a2c:	24c601f4 	addiu	a2,a2,500
     a30:	00063400 	sll	a2,a2,0x10
     a34:	46809120 	cvt.s.w	$f4,$f18
     a38:	00063403 	sra	a2,a2,0x10
     a3c:	8fa5001c 	lw	a1,28(sp)
     a40:	46062000 	add.s	$f0,$f4,$f6
     a44:	46000200 	add.s	$f8,$f0,$f0
     a48:	4600428d 	trunc.w.s	$f10,$f8
     a4c:	44075000 	mfc1	a3,$f10
     a50:	00000000 	nop
     a54:	00073c00 	sll	a3,a3,0x10
     a58:	0c000000 	jal	0 <func_80AEAC10>
     a5c:	00073c03 	sra	a3,a3,0x10
     a60:	8fbf0014 	lw	ra,20(sp)
     a64:	27bd0018 	addiu	sp,sp,24
     a68:	03e00008 	jr	ra
     a6c:	00000000 	nop

00000a70 <func_80AEB680>:
     a70:	27bdffd0 	addiu	sp,sp,-48
     a74:	afbf001c 	sw	ra,28(sp)
     a78:	afa40030 	sw	a0,48(sp)
     a7c:	afa50034 	sw	a1,52(sp)
     a80:	c4840024 	lwc1	$f4,36(a0)
     a84:	240f0001 	li	t7,1
     a88:	00003025 	move	a2,zero
     a8c:	e7a40024 	swc1	$f4,36(sp)
     a90:	c4880084 	lwc1	$f8,132(a0)
     a94:	c4860028 	lwc1	$f6,40(a0)
     a98:	00003825 	move	a3,zero
     a9c:	46083280 	add.s	$f10,$f6,$f8
     aa0:	e7aa0028 	swc1	$f10,40(sp)
     aa4:	c490002c 	lwc1	$f16,44(a0)
     aa8:	00a02025 	move	a0,a1
     aac:	27a50024 	addiu	a1,sp,36
     ab0:	afa00014 	sw	zero,20(sp)
     ab4:	afaf0010 	sw	t7,16(sp)
     ab8:	0c000000 	jal	0 <func_80AEAC10>
     abc:	e7b0002c 	swc1	$f16,44(sp)
     ac0:	8fbf001c 	lw	ra,28(sp)
     ac4:	27bd0030 	addiu	sp,sp,48
     ac8:	03e00008 	jr	ra
     acc:	00000000 	nop

00000ad0 <func_80AEB6E0>:
     ad0:	27bdffe8 	addiu	sp,sp,-24
     ad4:	afbf0014 	sw	ra,20(sp)
     ad8:	afa40018 	sw	a0,24(sp)
     adc:	afa5001c 	sw	a1,28(sp)
     ae0:	8c98016c 	lw	t8,364(a0)
     ae4:	848f018c 	lh	t7,396(a0)
     ae8:	2486014c 	addiu	a2,a0,332
     aec:	87190002 	lh	t9,2(t8)
     af0:	01f9082a 	slt	at,t7,t9
     af4:	50200009 	beqzl	at,b1c <func_80AEB6E0+0x4c>
     af8:	8fbf0014 	lw	ra,20(sp)
     afc:	90c80035 	lbu	t0,53(a2)
     b00:	3c073f80 	lui	a3,0x3f80
     b04:	35090003 	ori	t1,t0,0x3
     b08:	a0c90035 	sb	t1,53(a2)
     b0c:	8fa50018 	lw	a1,24(sp)
     b10:	0c000000 	jal	0 <func_80AEAC10>
     b14:	8fa4001c 	lw	a0,28(sp)
     b18:	8fbf0014 	lw	ra,20(sp)
     b1c:	27bd0018 	addiu	sp,sp,24
     b20:	03e00008 	jr	ra
     b24:	00000000 	nop

00000b28 <func_80AEB738>:
     b28:	27bdffe0 	addiu	sp,sp,-32
     b2c:	afbf001c 	sw	ra,28(sp)
     b30:	afb00018 	sw	s0,24(sp)
     b34:	afa50024 	sw	a1,36(sp)
     b38:	8c8e016c 	lw	t6,364(a0)
     b3c:	8c99016c 	lw	t9,364(a0)
     b40:	8c8b016c 	lw	t3,364(a0)
     b44:	89d80000 	lwl	t8,0(t6)
     b48:	99d80003 	lwr	t8,3(t6)
     b4c:	00808025 	move	s0,a0
     b50:	2486014c 	addiu	a2,a0,332
     b54:	a898018a 	swl	t8,394(a0)
     b58:	b898018d 	swr	t8,397(a0)
     b5c:	95d80004 	lhu	t8,4(t6)
     b60:	848a018c 	lh	t2,396(a0)
     b64:	a498018e 	sh	t8,398(a0)
     b68:	8b290000 	lwl	t1,0(t9)
     b6c:	9b290003 	lwr	t1,3(t9)
     b70:	a8890184 	swl	t1,388(a0)
     b74:	b8890187 	swr	t1,391(a0)
     b78:	97290004 	lhu	t1,4(t9)
     b7c:	a4890188 	sh	t1,392(a0)
     b80:	856c0002 	lh	t4,2(t3)
     b84:	014c082a 	slt	at,t2,t4
     b88:	50200009 	beqzl	at,bb0 <func_80AEB738+0x88>
     b8c:	8fbf001c 	lw	ra,28(sp)
     b90:	90cd0035 	lbu	t5,53(a2)
     b94:	02002825 	move	a1,s0
     b98:	3c073f80 	lui	a3,0x3f80
     b9c:	35ae0003 	ori	t6,t5,0x3
     ba0:	a0ce0035 	sb	t6,53(a2)
     ba4:	0c000000 	jal	0 <func_80AEAC10>
     ba8:	8fa40024 	lw	a0,36(sp)
     bac:	8fbf001c 	lw	ra,28(sp)
     bb0:	8fb00018 	lw	s0,24(sp)
     bb4:	27bd0020 	addiu	sp,sp,32
     bb8:	03e00008 	jr	ra
     bbc:	00000000 	nop

00000bc0 <func_80AEB7D0>:
     bc0:	908e0181 	lbu	t6,385(a0)
     bc4:	31cffffc 	andi	t7,t6,0xfffc
     bc8:	03e00008 	jr	ra
     bcc:	a08f0181 	sb	t7,385(a0)

00000bd0 <func_80AEB7E0>:
     bd0:	27bdffe8 	addiu	sp,sp,-24
     bd4:	afbf0014 	sw	ra,20(sp)
     bd8:	94a21d74 	lhu	v0,7540(a1)
     bdc:	94830004 	lhu	v1,4(a0)
     be0:	0043082a 	slt	at,v0,v1
     be4:	5020001b 	beqzl	at,c54 <func_80AEB7E0+0x84>
     be8:	3c013f80 	lui	at,0x3f80
     bec:	94850002 	lhu	a1,2(a0)
     bf0:	00653023 	subu	a2,v1,a1
     bf4:	18c00016 	blez	a2,c50 <func_80AEB7E0+0x80>
     bf8:	00457023 	subu	t6,v0,a1
     bfc:	448e2000 	mtc1	t6,$f4
     c00:	44864000 	mtc1	a2,$f8
     c04:	3c014700 	lui	at,0x4700
     c08:	468021a0 	cvt.s.w	$f6,$f4
     c0c:	44819000 	mtc1	at,$f18
     c10:	468042a0 	cvt.s.w	$f10,$f8
     c14:	460a3403 	div.s	$f16,$f6,$f10
     c18:	46128102 	mul.s	$f4,$f16,$f18
     c1c:	4600220d 	trunc.w.s	$f8,$f4
     c20:	44044000 	mfc1	a0,$f8
     c24:	00000000 	nop
     c28:	00042400 	sll	a0,a0,0x10
     c2c:	0c000000 	jal	0 <func_80AEAC10>
     c30:	00042403 	sra	a0,a0,0x10
     c34:	3c01bf00 	lui	at,0xbf00
     c38:	44813000 	mtc1	at,$f6
     c3c:	3c013f00 	lui	at,0x3f00
     c40:	44818000 	mtc1	at,$f16
     c44:	46060282 	mul.s	$f10,$f0,$f6
     c48:	10000004 	b	c5c <func_80AEB7E0+0x8c>
     c4c:	46105000 	add.s	$f0,$f10,$f16
     c50:	3c013f80 	lui	at,0x3f80
     c54:	44810000 	mtc1	at,$f0
     c58:	00000000 	nop
     c5c:	8fbf0014 	lw	ra,20(sp)
     c60:	27bd0018 	addiu	sp,sp,24
     c64:	03e00008 	jr	ra
     c68:	00000000 	nop

00000c6c <func_80AEB87C>:
     c6c:	44852000 	mtc1	a1,$f4
     c70:	44863000 	mtc1	a2,$f6
     c74:	468020a0 	cvt.s.w	$f2,$f4
     c78:	46803220 	cvt.s.w	$f8,$f6
     c7c:	46024281 	sub.s	$f10,$f8,$f2
     c80:	460c5402 	mul.s	$f16,$f10,$f12
     c84:	03e00008 	jr	ra
     c88:	46028000 	add.s	$f0,$f16,$f2

00000c8c <func_80AEB89C>:
     c8c:	27bdffe8 	addiu	sp,sp,-24
     c90:	afbf0014 	sw	ra,20(sp)
     c94:	00803025 	move	a2,a0
     c98:	afa60018 	sw	a2,24(sp)
     c9c:	0c000000 	jal	0 <func_80AEAC10>
     ca0:	00a02025 	move	a0,a1
     ca4:	10400013 	beqz	v0,cf4 <func_80AEB89C+0x68>
     ca8:	8fa60018 	lw	a2,24(sp)
     cac:	84430008 	lh	v1,8(v0)
     cb0:	a4c300b6 	sh	v1,182(a2)
     cb4:	a4c30032 	sh	v1,50(a2)
     cb8:	8c4e000c 	lw	t6,12(v0)
     cbc:	448e2000 	mtc1	t6,$f4
     cc0:	00000000 	nop
     cc4:	468021a0 	cvt.s.w	$f6,$f4
     cc8:	e4c60024 	swc1	$f6,36(a2)
     ccc:	8c4f0010 	lw	t7,16(v0)
     cd0:	448f4000 	mtc1	t7,$f8
     cd4:	00000000 	nop
     cd8:	468042a0 	cvt.s.w	$f10,$f8
     cdc:	e4ca0028 	swc1	$f10,40(a2)
     ce0:	8c580014 	lw	t8,20(v0)
     ce4:	44988000 	mtc1	t8,$f16
     ce8:	00000000 	nop
     cec:	468084a0 	cvt.s.w	$f18,$f16
     cf0:	e4d2002c 	swc1	$f18,44(a2)
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	27bd0018 	addiu	sp,sp,24
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_80AEB914>:
     d04:	27bdffe8 	addiu	sp,sp,-24
     d08:	afbf0014 	sw	ra,20(sp)
     d0c:	0c000000 	jal	0 <func_80AEAC10>
     d10:	00000000 	nop
     d14:	8fbf0014 	lw	ra,20(sp)
     d18:	27bd0018 	addiu	sp,sp,24
     d1c:	03e00008 	jr	ra
     d20:	00000000 	nop

00000d24 <func_80AEB934>:
     d24:	27bdffe8 	addiu	sp,sp,-24
     d28:	afbf0014 	sw	ra,20(sp)
     d2c:	0c000000 	jal	0 <func_80AEAC10>
     d30:	00000000 	nop
     d34:	8fbf0014 	lw	ra,20(sp)
     d38:	27bd0018 	addiu	sp,sp,24
     d3c:	03e00008 	jr	ra
     d40:	00000000 	nop

00000d44 <func_80AEB954>:
     d44:	27bdffe8 	addiu	sp,sp,-24
     d48:	afbf0014 	sw	ra,20(sp)
     d4c:	0c000000 	jal	0 <func_80AEAC10>
     d50:	00000000 	nop
     d54:	8fbf0014 	lw	ra,20(sp)
     d58:	27bd0018 	addiu	sp,sp,24
     d5c:	03e00008 	jr	ra
     d60:	00000000 	nop

00000d64 <func_80AEB974>:
     d64:	27bdffc8 	addiu	sp,sp,-56
     d68:	afbf001c 	sw	ra,28(sp)
     d6c:	afa40038 	sw	a0,56(sp)
     d70:	afb00018 	sw	s0,24(sp)
     d74:	afa5003c 	sw	a1,60(sp)
     d78:	0c000000 	jal	0 <func_80AEAC10>
     d7c:	00a02025 	move	a0,a1
     d80:	10400019 	beqz	v0,de8 <func_80AEB974+0x84>
     d84:	00408025 	move	s0,v0
     d88:	00402025 	move	a0,v0
     d8c:	0c000000 	jal	0 <func_80AEAC10>
     d90:	8fa5003c 	lw	a1,60(sp)
     d94:	e7a00030 	swc1	$f0,48(sp)
     d98:	8e060018 	lw	a2,24(s0)
     d9c:	8e05000c 	lw	a1,12(s0)
     da0:	0c000000 	jal	0 <func_80AEAC10>
     da4:	46000306 	mov.s	$f12,$f0
     da8:	8fa20038 	lw	v0,56(sp)
     dac:	e4400024 	swc1	$f0,36(v0)
     db0:	8e06001c 	lw	a2,28(s0)
     db4:	8e050010 	lw	a1,16(s0)
     db8:	24420024 	addiu	v0,v0,36
     dbc:	afa20024 	sw	v0,36(sp)
     dc0:	0c000000 	jal	0 <func_80AEAC10>
     dc4:	c7ac0030 	lwc1	$f12,48(sp)
     dc8:	8fae0024 	lw	t6,36(sp)
     dcc:	e5c00004 	swc1	$f0,4(t6)
     dd0:	8e060020 	lw	a2,32(s0)
     dd4:	8e050014 	lw	a1,20(s0)
     dd8:	0c000000 	jal	0 <func_80AEAC10>
     ddc:	c7ac0030 	lwc1	$f12,48(sp)
     de0:	8faf0024 	lw	t7,36(sp)
     de4:	e5e00008 	swc1	$f0,8(t7)
     de8:	8fbf001c 	lw	ra,28(sp)
     dec:	8fb00018 	lw	s0,24(sp)
     df0:	27bd0038 	addiu	sp,sp,56
     df4:	03e00008 	jr	ra
     df8:	00000000 	nop

00000dfc <func_80AEBA0C>:
     dfc:	27bdffe8 	addiu	sp,sp,-24
     e00:	afbf0014 	sw	ra,20(sp)
     e04:	0c000000 	jal	0 <func_80AEAC10>
     e08:	00000000 	nop
     e0c:	8fbf0014 	lw	ra,20(sp)
     e10:	27bd0018 	addiu	sp,sp,24
     e14:	03e00008 	jr	ra
     e18:	00000000 	nop

00000e1c <func_80AEBA2C>:
     e1c:	27bdffc0 	addiu	sp,sp,-64
     e20:	afbf001c 	sw	ra,28(sp)
     e24:	afa40040 	sw	a0,64(sp)
     e28:	afb00018 	sw	s0,24(sp)
     e2c:	afa50044 	sw	a1,68(sp)
     e30:	0c000000 	jal	0 <func_80AEAC10>
     e34:	00a02025 	move	a0,a1
     e38:	10400027 	beqz	v0,ed8 <func_80AEBA2C+0xbc>
     e3c:	00408025 	move	s0,v0
     e40:	00402025 	move	a0,v0
     e44:	0c000000 	jal	0 <func_80AEAC10>
     e48:	8fa50044 	lw	a1,68(sp)
     e4c:	8fa20040 	lw	v0,64(sp)
     e50:	e7a00030 	swc1	$f0,48(sp)
     e54:	8e060018 	lw	a2,24(s0)
     e58:	c4440364 	lwc1	$f4,868(v0)
     e5c:	24420364 	addiu	v0,v0,868
     e60:	afa20024 	sw	v0,36(sp)
     e64:	4600218d 	trunc.w.s	$f6,$f4
     e68:	46000306 	mov.s	$f12,$f0
     e6c:	44053000 	mfc1	a1,$f6
     e70:	0c000000 	jal	0 <func_80AEAC10>
     e74:	00000000 	nop
     e78:	8fa20040 	lw	v0,64(sp)
     e7c:	e4400024 	swc1	$f0,36(v0)
     e80:	8faf0024 	lw	t7,36(sp)
     e84:	8e06001c 	lw	a2,28(s0)
     e88:	24420024 	addiu	v0,v0,36
     e8c:	c5e80004 	lwc1	$f8,4(t7)
     e90:	afa20020 	sw	v0,32(sp)
     e94:	c7ac0030 	lwc1	$f12,48(sp)
     e98:	4600428d 	trunc.w.s	$f10,$f8
     e9c:	44055000 	mfc1	a1,$f10
     ea0:	0c000000 	jal	0 <func_80AEAC10>
     ea4:	00000000 	nop
     ea8:	8fb90020 	lw	t9,32(sp)
     eac:	e7200004 	swc1	$f0,4(t9)
     eb0:	8fa80024 	lw	t0,36(sp)
     eb4:	8e060020 	lw	a2,32(s0)
     eb8:	c7ac0030 	lwc1	$f12,48(sp)
     ebc:	c5100008 	lwc1	$f16,8(t0)
     ec0:	4600848d 	trunc.w.s	$f18,$f16
     ec4:	44059000 	mfc1	a1,$f18
     ec8:	0c000000 	jal	0 <func_80AEAC10>
     ecc:	00000000 	nop
     ed0:	8faa0020 	lw	t2,32(sp)
     ed4:	e5400008 	swc1	$f0,8(t2)
     ed8:	8fbf001c 	lw	ra,28(sp)
     edc:	8fb00018 	lw	s0,24(sp)
     ee0:	27bd0040 	addiu	sp,sp,64
     ee4:	03e00008 	jr	ra
     ee8:	00000000 	nop

00000eec <func_80AEBAFC>:
     eec:	27bdffe8 	addiu	sp,sp,-24
     ef0:	afbf0014 	sw	ra,20(sp)
     ef4:	8c8e0298 	lw	t6,664(a0)
     ef8:	00803025 	move	a2,a0
     efc:	248400e4 	addiu	a0,a0,228
     f00:	15c00006 	bnez	t6,f1c <func_80AEBAFC+0x30>
     f04:	24052889 	li	a1,10377
     f08:	0c000000 	jal	0 <func_80AEAC10>
     f0c:	afa60018 	sw	a2,24(sp)
     f10:	8fa60018 	lw	a2,24(sp)
     f14:	240f0001 	li	t7,1
     f18:	accf0298 	sw	t7,664(a2)
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	27bd0018 	addiu	sp,sp,24
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <func_80AEBB3C>:
     f2c:	27bdffe8 	addiu	sp,sp,-24
     f30:	afbf0014 	sw	ra,20(sp)
     f34:	afa40018 	sw	a0,24(sp)
     f38:	2484014c 	addiu	a0,a0,332
     f3c:	0c000000 	jal	0 <func_80AEAC10>
     f40:	3c0540a0 	lui	a1,0x40a0
     f44:	10400004 	beqz	v0,f58 <func_80AEBB3C+0x2c>
     f48:	8fa40018 	lw	a0,24(sp)
     f4c:	248400e4 	addiu	a0,a0,228
     f50:	0c000000 	jal	0 <func_80AEAC10>
     f54:	24050863 	li	a1,2147
     f58:	8fbf0014 	lw	ra,20(sp)
     f5c:	27bd0018 	addiu	sp,sp,24
     f60:	03e00008 	jr	ra
     f64:	00000000 	nop

00000f68 <func_80AEBB78>:
     f68:	27bdffe0 	addiu	sp,sp,-32
     f6c:	afb00018 	sw	s0,24(sp)
     f70:	afbf001c 	sw	ra,28(sp)
     f74:	afa40020 	sw	a0,32(sp)
     f78:	2490014c 	addiu	s0,a0,332
     f7c:	02002025 	move	a0,s0
     f80:	0c000000 	jal	0 <func_80AEAC10>
     f84:	3c054080 	lui	a1,0x4080
     f88:	1440000d 	bnez	v0,fc0 <func_80AEBB78+0x58>
     f8c:	02002025 	move	a0,s0
     f90:	0c000000 	jal	0 <func_80AEAC10>
     f94:	3c054150 	lui	a1,0x4150
     f98:	14400009 	bnez	v0,fc0 <func_80AEBB78+0x58>
     f9c:	02002025 	move	a0,s0
     fa0:	0c000000 	jal	0 <func_80AEAC10>
     fa4:	3c0541b0 	lui	a1,0x41b0
     fa8:	14400005 	bnez	v0,fc0 <func_80AEBB78+0x58>
     fac:	02002025 	move	a0,s0
     fb0:	0c000000 	jal	0 <func_80AEAC10>
     fb4:	3c0541f8 	lui	a1,0x41f8
     fb8:	50400006 	beqzl	v0,fd4 <func_80AEBB78+0x6c>
     fbc:	8fbf001c 	lw	ra,28(sp)
     fc0:	8fa40020 	lw	a0,32(sp)
     fc4:	24050839 	li	a1,2105
     fc8:	0c000000 	jal	0 <func_80AEAC10>
     fcc:	248400e4 	addiu	a0,a0,228
     fd0:	8fbf001c 	lw	ra,28(sp)
     fd4:	8fb00018 	lw	s0,24(sp)
     fd8:	27bd0020 	addiu	sp,sp,32
     fdc:	03e00008 	jr	ra
     fe0:	00000000 	nop

00000fe4 <func_80AEBBF4>:
     fe4:	27bdffe8 	addiu	sp,sp,-24
     fe8:	afbf0014 	sw	ra,20(sp)
     fec:	afa40018 	sw	a0,24(sp)
     ff0:	2484014c 	addiu	a0,a0,332
     ff4:	0c000000 	jal	0 <func_80AEAC10>
     ff8:	3c054100 	lui	a1,0x4100
     ffc:	10400004 	beqz	v0,1010 <func_80AEBBF4+0x2c>
    1000:	8fa40018 	lw	a0,24(sp)
    1004:	248400e4 	addiu	a0,a0,228
    1008:	0c000000 	jal	0 <func_80AEAC10>
    100c:	24050873 	li	a1,2163
    1010:	8fbf0014 	lw	ra,20(sp)
    1014:	27bd0018 	addiu	sp,sp,24
    1018:	03e00008 	jr	ra
    101c:	00000000 	nop

00001020 <func_80AEBC30>:
    1020:	27bdffe0 	addiu	sp,sp,-32
    1024:	afbf001c 	sw	ra,28(sp)
    1028:	afa40020 	sw	a0,32(sp)
    102c:	948f1d74 	lhu	t7,7540(a0)
    1030:	240100cd 	li	at,205
    1034:	3c070000 	lui	a3,0x0
    1038:	15e1000a 	bne	t7,at,1064 <func_80AEBC30+0x44>
    103c:	24e70000 	addiu	a3,a3,0
    1040:	8c821c44 	lw	v0,7236(a0)
    1044:	3c180000 	lui	t8,0x0
    1048:	27180000 	addiu	t8,t8,0
    104c:	afb80014 	sw	t8,20(sp)
    1050:	afa70010 	sw	a3,16(sp)
    1054:	24042889 	li	a0,10377
    1058:	24060004 	li	a2,4
    105c:	0c000000 	jal	0 <func_80AEAC10>
    1060:	244500e4 	addiu	a1,v0,228
    1064:	8fbf001c 	lw	ra,28(sp)
    1068:	27bd0020 	addiu	sp,sp,32
    106c:	03e00008 	jr	ra
    1070:	00000000 	nop

00001074 <func_80AEBC84>:
    1074:	27bdffe8 	addiu	sp,sp,-24
    1078:	afbf0014 	sw	ra,20(sp)
    107c:	94ae1d74 	lhu	t6,7540(a1)
    1080:	24010082 	li	at,130
    1084:	248400e4 	addiu	a0,a0,228
    1088:	55c10004 	bnel	t6,at,109c <func_80AEBC84+0x28>
    108c:	8fbf0014 	lw	ra,20(sp)
    1090:	0c000000 	jal	0 <func_80AEAC10>
    1094:	24056863 	li	a1,26723
    1098:	8fbf0014 	lw	ra,20(sp)
    109c:	27bd0018 	addiu	sp,sp,24
    10a0:	03e00008 	jr	ra
    10a4:	00000000 	nop

000010a8 <func_80AEBCB8>:
    10a8:	27bdffd8 	addiu	sp,sp,-40
    10ac:	afbf0024 	sw	ra,36(sp)
    10b0:	10a00012 	beqz	a1,10fc <func_80AEBCB8+0x54>
    10b4:	afa40028 	sw	a0,40(sp)
    10b8:	3c040000 	lui	a0,0x0
    10bc:	0c000000 	jal	0 <func_80AEAC10>
    10c0:	24840000 	addiu	a0,a0,0
    10c4:	44822000 	mtc1	v0,$f4
    10c8:	3c01c100 	lui	at,0xc100
    10cc:	44814000 	mtc1	at,$f8
    10d0:	468021a0 	cvt.s.w	$f6,$f4
    10d4:	8fa40028 	lw	a0,40(sp)
    10d8:	3c050000 	lui	a1,0x0
    10dc:	24a50000 	addiu	a1,a1,0
    10e0:	3c063f80 	lui	a2,0x3f80
    10e4:	24070000 	li	a3,0
    10e8:	e7a60010 	swc1	$f6,16(sp)
    10ec:	afa00014 	sw	zero,20(sp)
    10f0:	e7a80018 	swc1	$f8,24(sp)
    10f4:	0c000000 	jal	0 <func_80AEAC10>
    10f8:	2484014c 	addiu	a0,a0,332
    10fc:	8fbf0024 	lw	ra,36(sp)
    1100:	27bd0028 	addiu	sp,sp,40
    1104:	03e00008 	jr	ra
    1108:	00000000 	nop

0000110c <func_80AEBD1C>:
    110c:	27bdffe0 	addiu	sp,sp,-32
    1110:	afb00014 	sw	s0,20(sp)
    1114:	00808025 	move	s0,a0
    1118:	afb10018 	sw	s1,24(sp)
    111c:	00a08825 	move	s1,a1
    1120:	afbf001c 	sw	ra,28(sp)
    1124:	00a02025 	move	a0,a1
    1128:	0c000000 	jal	0 <func_80AEAC10>
    112c:	24050002 	li	a1,2
    1130:	1040000f 	beqz	v0,1170 <func_80AEBD1C+0x64>
    1134:	240e0001 	li	t6,1
    1138:	ae0e0264 	sw	t6,612(s0)
    113c:	ae000268 	sw	zero,616(s0)
    1140:	02002025 	move	a0,s0
    1144:	0c000000 	jal	0 <func_80AEAC10>
    1148:	02202825 	move	a1,s1
    114c:	02002025 	move	a0,s0
    1150:	0c000000 	jal	0 <func_80AEAC10>
    1154:	02202825 	move	a1,s1
    1158:	02002025 	move	a0,s0
    115c:	0c000000 	jal	0 <func_80AEAC10>
    1160:	02202825 	move	a1,s1
    1164:	02002025 	move	a0,s0
    1168:	0c000000 	jal	0 <func_80AEAC10>
    116c:	02202825 	move	a1,s1
    1170:	8fbf001c 	lw	ra,28(sp)
    1174:	8fb00014 	lw	s0,20(sp)
    1178:	8fb10018 	lw	s1,24(sp)
    117c:	03e00008 	jr	ra
    1180:	27bd0020 	addiu	sp,sp,32

00001184 <func_80AEBD94>:
    1184:	27bdffc0 	addiu	sp,sp,-64
    1188:	afb00028 	sw	s0,40(sp)
    118c:	00808025 	move	s0,a0
    1190:	afbf002c 	sw	ra,44(sp)
    1194:	afa50044 	sw	a1,68(sp)
    1198:	00a02025 	move	a0,a1
    119c:	0c000000 	jal	0 <func_80AEAC10>
    11a0:	24050003 	li	a1,3
    11a4:	1040001c 	beqz	v0,1218 <func_80AEBD94+0x94>
    11a8:	3c040000 	lui	a0,0x0
    11ac:	0c000000 	jal	0 <func_80AEAC10>
    11b0:	24840000 	addiu	a0,a0,0
    11b4:	44822000 	mtc1	v0,$f4
    11b8:	02002025 	move	a0,s0
    11bc:	8fa50044 	lw	a1,68(sp)
    11c0:	468021a0 	cvt.s.w	$f6,$f4
    11c4:	0c000000 	jal	0 <func_80AEAC10>
    11c8:	e7a60034 	swc1	$f6,52(sp)
    11cc:	02002025 	move	a0,s0
    11d0:	0c000000 	jal	0 <func_80AEAC10>
    11d4:	8fa50044 	lw	a1,68(sp)
    11d8:	44800000 	mtc1	zero,$f0
    11dc:	c7a80034 	lwc1	$f8,52(sp)
    11e0:	3c050000 	lui	a1,0x0
    11e4:	240e0002 	li	t6,2
    11e8:	44070000 	mfc1	a3,$f0
    11ec:	afae0014 	sw	t6,20(sp)
    11f0:	24a50000 	addiu	a1,a1,0
    11f4:	2604014c 	addiu	a0,s0,332
    11f8:	3c063f80 	lui	a2,0x3f80
    11fc:	e7a80010 	swc1	$f8,16(sp)
    1200:	0c000000 	jal	0 <func_80AEAC10>
    1204:	e7a00018 	swc1	$f0,24(sp)
    1208:	240f0002 	li	t7,2
    120c:	24180001 	li	t8,1
    1210:	ae0f0264 	sw	t7,612(s0)
    1214:	ae180268 	sw	t8,616(s0)
    1218:	8fbf002c 	lw	ra,44(sp)
    121c:	8fb00028 	lw	s0,40(sp)
    1220:	27bd0040 	addiu	sp,sp,64
    1224:	03e00008 	jr	ra
    1228:	00000000 	nop

0000122c <func_80AEBE3C>:
    122c:	27bdffc8 	addiu	sp,sp,-56
    1230:	afbf0024 	sw	ra,36(sp)
    1234:	10c0001a 	beqz	a2,12a0 <func_80AEBE3C+0x74>
    1238:	afa40038 	sw	a0,56(sp)
    123c:	3c040000 	lui	a0,0x0
    1240:	0c000000 	jal	0 <func_80AEAC10>
    1244:	24840000 	addiu	a0,a0,0
    1248:	44822000 	mtc1	v0,$f4
    124c:	8fa40038 	lw	a0,56(sp)
    1250:	468021a0 	cvt.s.w	$f6,$f4
    1254:	0c000000 	jal	0 <func_80AEAC10>
    1258:	e7a6002c 	swc1	$f6,44(sp)
    125c:	3c01c100 	lui	at,0xc100
    1260:	44815000 	mtc1	at,$f10
    1264:	8fa40038 	lw	a0,56(sp)
    1268:	c7a8002c 	lwc1	$f8,44(sp)
    126c:	3c050000 	lui	a1,0x0
    1270:	24a50000 	addiu	a1,a1,0
    1274:	3c063f80 	lui	a2,0x3f80
    1278:	24070000 	li	a3,0
    127c:	afa00014 	sw	zero,20(sp)
    1280:	2484014c 	addiu	a0,a0,332
    1284:	e7aa0018 	swc1	$f10,24(sp)
    1288:	0c000000 	jal	0 <func_80AEAC10>
    128c:	e7a80010 	swc1	$f8,16(sp)
    1290:	8faf0038 	lw	t7,56(sp)
    1294:	240e0003 	li	t6,3
    1298:	10000003 	b	12a8 <func_80AEBE3C+0x7c>
    129c:	adee0264 	sw	t6,612(t7)
    12a0:	0c000000 	jal	0 <func_80AEAC10>
    12a4:	8fa40038 	lw	a0,56(sp)
    12a8:	8fbf0024 	lw	ra,36(sp)
    12ac:	27bd0038 	addiu	sp,sp,56
    12b0:	03e00008 	jr	ra
    12b4:	00000000 	nop

000012b8 <func_80AEBEC8>:
    12b8:	27bdffc8 	addiu	sp,sp,-56
    12bc:	afa40038 	sw	a0,56(sp)
    12c0:	afbf0024 	sw	ra,36(sp)
    12c4:	afa5003c 	sw	a1,60(sp)
    12c8:	00a02025 	move	a0,a1
    12cc:	0c000000 	jal	0 <func_80AEAC10>
    12d0:	24050006 	li	a1,6
    12d4:	1040001a 	beqz	v0,1340 <func_80AEBEC8+0x88>
    12d8:	3c040000 	lui	a0,0x0
    12dc:	0c000000 	jal	0 <func_80AEAC10>
    12e0:	24840000 	addiu	a0,a0,0
    12e4:	44822000 	mtc1	v0,$f4
    12e8:	8fa40038 	lw	a0,56(sp)
    12ec:	8fa5003c 	lw	a1,60(sp)
    12f0:	468021a0 	cvt.s.w	$f6,$f4
    12f4:	0c000000 	jal	0 <func_80AEAC10>
    12f8:	e7a6002c 	swc1	$f6,44(sp)
    12fc:	3c01c100 	lui	at,0xc100
    1300:	44815000 	mtc1	at,$f10
    1304:	8fa40038 	lw	a0,56(sp)
    1308:	c7a8002c 	lwc1	$f8,44(sp)
    130c:	3c050000 	lui	a1,0x0
    1310:	240e0002 	li	t6,2
    1314:	afae0014 	sw	t6,20(sp)
    1318:	24a50000 	addiu	a1,a1,0
    131c:	3c063f80 	lui	a2,0x3f80
    1320:	24070000 	li	a3,0
    1324:	2484014c 	addiu	a0,a0,332
    1328:	e7aa0018 	swc1	$f10,24(sp)
    132c:	0c000000 	jal	0 <func_80AEAC10>
    1330:	e7a80010 	swc1	$f8,16(sp)
    1334:	8fb80038 	lw	t8,56(sp)
    1338:	240f0004 	li	t7,4
    133c:	af0f0264 	sw	t7,612(t8)
    1340:	8fbf0024 	lw	ra,36(sp)
    1344:	27bd0038 	addiu	sp,sp,56
    1348:	03e00008 	jr	ra
    134c:	00000000 	nop

00001350 <func_80AEBF60>:
    1350:	27bdffe8 	addiu	sp,sp,-24
    1354:	00803025 	move	a2,a0
    1358:	afbf0014 	sw	ra,20(sp)
    135c:	afa5001c 	sw	a1,28(sp)
    1360:	00a02025 	move	a0,a1
    1364:	24050006 	li	a1,6
    1368:	0c000000 	jal	0 <func_80AEAC10>
    136c:	afa60018 	sw	a2,24(sp)
    1370:	1040000e 	beqz	v0,13ac <func_80AEBF60+0x5c>
    1374:	8fa60018 	lw	a2,24(sp)
    1378:	00c02025 	move	a0,a2
    137c:	0c000000 	jal	0 <func_80AEAC10>
    1380:	afa60018 	sw	a2,24(sp)
    1384:	8fa60018 	lw	a2,24(sp)
    1388:	240e0005 	li	t6,5
    138c:	8cd80024 	lw	t8,36(a2)
    1390:	8ccf0028 	lw	t7,40(a2)
    1394:	acce0264 	sw	t6,612(a2)
    1398:	acd80364 	sw	t8,868(a2)
    139c:	8cd8002c 	lw	t8,44(a2)
    13a0:	accf0368 	sw	t7,872(a2)
    13a4:	10000004 	b	13b8 <func_80AEBF60+0x68>
    13a8:	acd8036c 	sw	t8,876(a2)
    13ac:	00c02025 	move	a0,a2
    13b0:	0c000000 	jal	0 <func_80AEAC10>
    13b4:	8fa5001c 	lw	a1,28(sp)
    13b8:	8fbf0014 	lw	ra,20(sp)
    13bc:	27bd0018 	addiu	sp,sp,24
    13c0:	03e00008 	jr	ra
    13c4:	00000000 	nop

000013c8 <func_80AEBFD8>:
    13c8:	27bdffd8 	addiu	sp,sp,-40
    13cc:	afbf0024 	sw	ra,36(sp)
    13d0:	afa40028 	sw	a0,40(sp)
    13d4:	afa5002c 	sw	a1,44(sp)
    13d8:	0c000000 	jal	0 <func_80AEAC10>
    13dc:	00a02025 	move	a0,a1
    13e0:	1040001b 	beqz	v0,1450 <func_80AEBFD8+0x88>
    13e4:	8fae002c 	lw	t6,44(sp)
    13e8:	94440004 	lhu	a0,4(v0)
    13ec:	95c31d74 	lhu	v1,7540(t6)
    13f0:	248ffffe 	addiu	t7,a0,-2
    13f4:	006f082a 	slt	at,v1,t7
    13f8:	14200015 	bnez	at,1450 <func_80AEBFD8+0x88>
    13fc:	3c040000 	lui	a0,0x0
    1400:	0c000000 	jal	0 <func_80AEAC10>
    1404:	24840000 	addiu	a0,a0,0
    1408:	44822000 	mtc1	v0,$f4
    140c:	3c01c100 	lui	at,0xc100
    1410:	44814000 	mtc1	at,$f8
    1414:	468021a0 	cvt.s.w	$f6,$f4
    1418:	8fa40028 	lw	a0,40(sp)
    141c:	3c050000 	lui	a1,0x0
    1420:	24180002 	li	t8,2
    1424:	afb80014 	sw	t8,20(sp)
    1428:	24a50000 	addiu	a1,a1,0
    142c:	e7a60010 	swc1	$f6,16(sp)
    1430:	3c063f80 	lui	a2,0x3f80
    1434:	24070000 	li	a3,0
    1438:	e7a80018 	swc1	$f8,24(sp)
    143c:	0c000000 	jal	0 <func_80AEAC10>
    1440:	2484014c 	addiu	a0,a0,332
    1444:	8fa80028 	lw	t0,40(sp)
    1448:	24190006 	li	t9,6
    144c:	ad190264 	sw	t9,612(t0)
    1450:	8fbf0024 	lw	ra,36(sp)
    1454:	27bd0028 	addiu	sp,sp,40
    1458:	03e00008 	jr	ra
    145c:	00000000 	nop

00001460 <func_80AEC070>:
    1460:	27bdffe8 	addiu	sp,sp,-24
    1464:	afa40018 	sw	a0,24(sp)
    1468:	afbf0014 	sw	ra,20(sp)
    146c:	00a02025 	move	a0,a1
    1470:	afa60020 	sw	a2,32(sp)
    1474:	0c000000 	jal	0 <func_80AEAC10>
    1478:	24050008 	li	a1,8
    147c:	10400005 	beqz	v0,1494 <func_80AEC070+0x34>
    1480:	8fae0020 	lw	t6,32(sp)
    1484:	51c00004 	beqzl	t6,1498 <func_80AEC070+0x38>
    1488:	8fbf0014 	lw	ra,20(sp)
    148c:	0c000000 	jal	0 <func_80AEAC10>
    1490:	8fa40018 	lw	a0,24(sp)
    1494:	8fbf0014 	lw	ra,20(sp)
    1498:	27bd0018 	addiu	sp,sp,24
    149c:	03e00008 	jr	ra
    14a0:	00000000 	nop

000014a4 <func_80AEC0B4>:
    14a4:	27bdffe8 	addiu	sp,sp,-24
    14a8:	afbf0014 	sw	ra,20(sp)
    14ac:	afa40018 	sw	a0,24(sp)
    14b0:	0c000000 	jal	0 <func_80AEAC10>
    14b4:	afa5001c 	sw	a1,28(sp)
    14b8:	0c000000 	jal	0 <func_80AEAC10>
    14bc:	8fa40018 	lw	a0,24(sp)
    14c0:	8fa40018 	lw	a0,24(sp)
    14c4:	0c000000 	jal	0 <func_80AEAC10>
    14c8:	8fa5001c 	lw	a1,28(sp)
    14cc:	0c000000 	jal	0 <func_80AEAC10>
    14d0:	8fa4001c 	lw	a0,28(sp)
    14d4:	8fa40018 	lw	a0,24(sp)
    14d8:	0c000000 	jal	0 <func_80AEAC10>
    14dc:	8fa5001c 	lw	a1,28(sp)
    14e0:	8fbf0014 	lw	ra,20(sp)
    14e4:	27bd0018 	addiu	sp,sp,24
    14e8:	03e00008 	jr	ra
    14ec:	00000000 	nop

000014f0 <func_80AEC100>:
    14f0:	27bdffe8 	addiu	sp,sp,-24
    14f4:	afbf0014 	sw	ra,20(sp)
    14f8:	afa40018 	sw	a0,24(sp)
    14fc:	0c000000 	jal	0 <func_80AEAC10>
    1500:	afa5001c 	sw	a1,28(sp)
    1504:	8fa40018 	lw	a0,24(sp)
    1508:	0c000000 	jal	0 <func_80AEAC10>
    150c:	8fa5001c 	lw	a1,28(sp)
    1510:	8fbf0014 	lw	ra,20(sp)
    1514:	27bd0018 	addiu	sp,sp,24
    1518:	03e00008 	jr	ra
    151c:	00000000 	nop

00001520 <func_80AEC130>:
    1520:	27bdffe0 	addiu	sp,sp,-32
    1524:	afbf0014 	sw	ra,20(sp)
    1528:	afa40020 	sw	a0,32(sp)
    152c:	0c000000 	jal	0 <func_80AEAC10>
    1530:	afa50024 	sw	a1,36(sp)
    1534:	afa2001c 	sw	v0,28(sp)
    1538:	8fa40020 	lw	a0,32(sp)
    153c:	0c000000 	jal	0 <func_80AEAC10>
    1540:	8fa50024 	lw	a1,36(sp)
    1544:	0c000000 	jal	0 <func_80AEAC10>
    1548:	8fa40020 	lw	a0,32(sp)
    154c:	8fa40020 	lw	a0,32(sp)
    1550:	8fa50024 	lw	a1,36(sp)
    1554:	0c000000 	jal	0 <func_80AEAC10>
    1558:	8fa6001c 	lw	a2,28(sp)
    155c:	8fbf0014 	lw	ra,20(sp)
    1560:	27bd0020 	addiu	sp,sp,32
    1564:	03e00008 	jr	ra
    1568:	00000000 	nop

0000156c <func_80AEC17C>:
    156c:	27bdffe0 	addiu	sp,sp,-32
    1570:	afbf001c 	sw	ra,28(sp)
    1574:	afb00018 	sw	s0,24(sp)
    1578:	00808025 	move	s0,a0
    157c:	0c000000 	jal	0 <func_80AEAC10>
    1580:	afa50024 	sw	a1,36(sp)
    1584:	02002025 	move	a0,s0
    1588:	0c000000 	jal	0 <func_80AEAC10>
    158c:	8fa50024 	lw	a1,36(sp)
    1590:	0c000000 	jal	0 <func_80AEAC10>
    1594:	02002025 	move	a0,s0
    1598:	02002025 	move	a0,s0
    159c:	0c000000 	jal	0 <func_80AEAC10>
    15a0:	8fa50024 	lw	a1,36(sp)
    15a4:	02002025 	move	a0,s0
    15a8:	0c000000 	jal	0 <func_80AEAC10>
    15ac:	8fa50024 	lw	a1,36(sp)
    15b0:	8fbf001c 	lw	ra,28(sp)
    15b4:	8fb00018 	lw	s0,24(sp)
    15b8:	27bd0020 	addiu	sp,sp,32
    15bc:	03e00008 	jr	ra
    15c0:	00000000 	nop

000015c4 <func_80AEC1D4>:
    15c4:	27bdffd8 	addiu	sp,sp,-40
    15c8:	afbf001c 	sw	ra,28(sp)
    15cc:	afb00018 	sw	s0,24(sp)
    15d0:	00808025 	move	s0,a0
    15d4:	0c000000 	jal	0 <func_80AEAC10>
    15d8:	afa5002c 	sw	a1,44(sp)
    15dc:	afa20024 	sw	v0,36(sp)
    15e0:	02002025 	move	a0,s0
    15e4:	0c000000 	jal	0 <func_80AEAC10>
    15e8:	8fa5002c 	lw	a1,44(sp)
    15ec:	0c000000 	jal	0 <func_80AEAC10>
    15f0:	02002025 	move	a0,s0
    15f4:	02002025 	move	a0,s0
    15f8:	0c000000 	jal	0 <func_80AEAC10>
    15fc:	8fa5002c 	lw	a1,44(sp)
    1600:	02002025 	move	a0,s0
    1604:	0c000000 	jal	0 <func_80AEAC10>
    1608:	8fa50024 	lw	a1,36(sp)
    160c:	0c000000 	jal	0 <func_80AEAC10>
    1610:	02002025 	move	a0,s0
    1614:	02002025 	move	a0,s0
    1618:	0c000000 	jal	0 <func_80AEAC10>
    161c:	8fa5002c 	lw	a1,44(sp)
    1620:	8fbf001c 	lw	ra,28(sp)
    1624:	8fb00018 	lw	s0,24(sp)
    1628:	27bd0028 	addiu	sp,sp,40
    162c:	03e00008 	jr	ra
    1630:	00000000 	nop

00001634 <func_80AEC244>:
    1634:	27bdffd8 	addiu	sp,sp,-40
    1638:	afbf001c 	sw	ra,28(sp)
    163c:	afb00018 	sw	s0,24(sp)
    1640:	00808025 	move	s0,a0
    1644:	0c000000 	jal	0 <func_80AEAC10>
    1648:	afa5002c 	sw	a1,44(sp)
    164c:	afa20024 	sw	v0,36(sp)
    1650:	02002025 	move	a0,s0
    1654:	0c000000 	jal	0 <func_80AEAC10>
    1658:	8fa5002c 	lw	a1,44(sp)
    165c:	02002025 	move	a0,s0
    1660:	0c000000 	jal	0 <func_80AEAC10>
    1664:	8fa5002c 	lw	a1,44(sp)
    1668:	0c000000 	jal	0 <func_80AEAC10>
    166c:	02002025 	move	a0,s0
    1670:	02002025 	move	a0,s0
    1674:	0c000000 	jal	0 <func_80AEAC10>
    1678:	8fa5002c 	lw	a1,44(sp)
    167c:	02002025 	move	a0,s0
    1680:	0c000000 	jal	0 <func_80AEAC10>
    1684:	8fa50024 	lw	a1,36(sp)
    1688:	0c000000 	jal	0 <func_80AEAC10>
    168c:	02002025 	move	a0,s0
    1690:	02002025 	move	a0,s0
    1694:	0c000000 	jal	0 <func_80AEAC10>
    1698:	8fa5002c 	lw	a1,44(sp)
    169c:	8fbf001c 	lw	ra,28(sp)
    16a0:	8fb00018 	lw	s0,24(sp)
    16a4:	27bd0028 	addiu	sp,sp,40
    16a8:	03e00008 	jr	ra
    16ac:	00000000 	nop

000016b0 <func_80AEC2C0>:
    16b0:	27bdffd8 	addiu	sp,sp,-40
    16b4:	afbf001c 	sw	ra,28(sp)
    16b8:	afb00018 	sw	s0,24(sp)
    16bc:	00808025 	move	s0,a0
    16c0:	0c000000 	jal	0 <func_80AEAC10>
    16c4:	afa5002c 	sw	a1,44(sp)
    16c8:	afa20024 	sw	v0,36(sp)
    16cc:	02002025 	move	a0,s0
    16d0:	0c000000 	jal	0 <func_80AEAC10>
    16d4:	8fa5002c 	lw	a1,44(sp)
    16d8:	0c000000 	jal	0 <func_80AEAC10>
    16dc:	02002025 	move	a0,s0
    16e0:	02002025 	move	a0,s0
    16e4:	0c000000 	jal	0 <func_80AEAC10>
    16e8:	8fa5002c 	lw	a1,44(sp)
    16ec:	02002025 	move	a0,s0
    16f0:	8fa5002c 	lw	a1,44(sp)
    16f4:	0c000000 	jal	0 <func_80AEAC10>
    16f8:	8fa60024 	lw	a2,36(sp)
    16fc:	8fbf001c 	lw	ra,28(sp)
    1700:	8fb00018 	lw	s0,24(sp)
    1704:	27bd0028 	addiu	sp,sp,40
    1708:	03e00008 	jr	ra
    170c:	00000000 	nop

00001710 <func_80AEC320>:
    1710:	3c020000 	lui	v0,0x0
    1714:	94420f20 	lhu	v0,3872(v0)
    1718:	27bdffd8 	addiu	sp,sp,-40
    171c:	afb00020 	sw	s0,32(sp)
    1720:	304e0002 	andi	t6,v0,0x2
    1724:	00808025 	move	s0,a0
    1728:	15c0000e 	bnez	t6,1764 <func_80AEC320+0x54>
    172c:	afbf0024 	sw	ra,36(sp)
    1730:	3c050000 	lui	a1,0x0
    1734:	24a50000 	addiu	a1,a1,0
    1738:	00003025 	move	a2,zero
    173c:	24070000 	li	a3,0
    1740:	0c000000 	jal	0 <func_80AEAC10>
    1744:	afa00010 	sw	zero,16(sp)
    1748:	240f0007 	li	t7,7
    174c:	ae0f0264 	sw	t7,612(s0)
    1750:	02002025 	move	a0,s0
    1754:	0c000000 	jal	0 <func_80AEAC10>
    1758:	24050001 	li	a1,1
    175c:	10000023 	b	17ec <func_80AEC320+0xdc>
    1760:	8fbf0024 	lw	ra,36(sp)
    1764:	30580080 	andi	t8,v0,0x80
    1768:	1300001d 	beqz	t8,17e0 <func_80AEC320+0xd0>
    176c:	30590001 	andi	t9,v0,0x1
    1770:	1720001b 	bnez	t9,17e0 <func_80AEC320+0xd0>
    1774:	30480020 	andi	t0,v0,0x20
    1778:	15000019 	bnez	t0,17e0 <func_80AEC320+0xd0>
    177c:	00000000 	nop
    1780:	0c000000 	jal	0 <func_80AEAC10>
    1784:	02002025 	move	a0,s0
    1788:	14400011 	bnez	v0,17d0 <func_80AEC320+0xc0>
    178c:	02002025 	move	a0,s0
    1790:	3c050000 	lui	a1,0x0
    1794:	24a50000 	addiu	a1,a1,0
    1798:	00003025 	move	a2,zero
    179c:	24070000 	li	a3,0
    17a0:	0c000000 	jal	0 <func_80AEAC10>
    17a4:	afa00010 	sw	zero,16(sp)
    17a8:	82020003 	lb	v0,3(s0)
    17ac:	24090016 	li	t1,22
    17b0:	240affff 	li	t2,-1
    17b4:	ae090264 	sw	t1,612(s0)
    17b8:	a20a0003 	sb	t2,3(s0)
    17bc:	ae000268 	sw	zero,616(s0)
    17c0:	a2020284 	sb	v0,644(s0)
    17c4:	a2020286 	sb	v0,646(s0)
    17c8:	10000007 	b	17e8 <func_80AEC320+0xd8>
    17cc:	a2020285 	sb	v0,645(s0)
    17d0:	0c000000 	jal	0 <func_80AEAC10>
    17d4:	02002025 	move	a0,s0
    17d8:	10000004 	b	17ec <func_80AEC320+0xdc>
    17dc:	8fbf0024 	lw	ra,36(sp)
    17e0:	0c000000 	jal	0 <func_80AEAC10>
    17e4:	02002025 	move	a0,s0
    17e8:	8fbf0024 	lw	ra,36(sp)
    17ec:	8fb00020 	lw	s0,32(sp)
    17f0:	27bd0028 	addiu	sp,sp,40
    17f4:	03e00008 	jr	ra
    17f8:	00000000 	nop

000017fc <func_80AEC40C>:
    17fc:	27bdffe8 	addiu	sp,sp,-24
    1800:	afbf0014 	sw	ra,20(sp)
    1804:	3c014100 	lui	at,0x4100
    1808:	c480026c 	lwc1	$f0,620(a0)
    180c:	44812000 	mtc1	at,$f4
    1810:	3c0e0000 	lui	t6,0x0
    1814:	3c180000 	lui	t8,0x0
    1818:	4604003c 	c.lt.s	$f0,$f4
    181c:	00000000 	nop
    1820:	45000012 	bc1f	186c <func_80AEC40C+0x70>
    1824:	00000000 	nop
    1828:	8dce0000 	lw	t6,0(t6)
    182c:	3c010000 	lui	at,0x0
    1830:	c42a019c 	lwc1	$f10,412(at)
    1834:	85cf145a 	lh	t7,5210(t6)
    1838:	3c010000 	lui	at,0x0
    183c:	c43201a0 	lwc1	$f18,416(at)
    1840:	448f3000 	mtc1	t7,$f6
    1844:	3c013e00 	lui	at,0x3e00
    1848:	46803220 	cvt.s.w	$f8,$f6
    184c:	44813000 	mtc1	at,$f6
    1850:	460a4402 	mul.s	$f16,$f8,$f10
    1854:	46128100 	add.s	$f4,$f16,$f18
    1858:	46062202 	mul.s	$f8,$f4,$f6
    185c:	00000000 	nop
    1860:	46004282 	mul.s	$f10,$f8,$f0
    1864:	1000000d 	b	189c <func_80AEC40C+0xa0>
    1868:	e48a0068 	swc1	$f10,104(a0)
    186c:	8f180000 	lw	t8,0(t8)
    1870:	3c010000 	lui	at,0x0
    1874:	c42401a4 	lwc1	$f4,420(at)
    1878:	8719145a 	lh	t9,5210(t8)
    187c:	3c010000 	lui	at,0x0
    1880:	c42801a8 	lwc1	$f8,424(at)
    1884:	44998000 	mtc1	t9,$f16
    1888:	00000000 	nop
    188c:	468084a0 	cvt.s.w	$f18,$f16
    1890:	46049182 	mul.s	$f6,$f18,$f4
    1894:	46083280 	add.s	$f10,$f6,$f8
    1898:	e48a0068 	swc1	$f10,104(a0)
    189c:	3c01bf80 	lui	at,0xbf80
    18a0:	44818000 	mtc1	at,$f16
    18a4:	0c000000 	jal	0 <func_80AEAC10>
    18a8:	e4900060 	swc1	$f16,96(a0)
    18ac:	8fbf0014 	lw	ra,20(sp)
    18b0:	27bd0018 	addiu	sp,sp,24
    18b4:	03e00008 	jr	ra
    18b8:	00000000 	nop

000018bc <func_80AEC4CC>:
    18bc:	3c01bf80 	lui	at,0xbf80
    18c0:	44812000 	mtc1	at,$f4
    18c4:	27bdffe8 	addiu	sp,sp,-24
    18c8:	afbf0014 	sw	ra,20(sp)
    18cc:	0c000000 	jal	0 <func_80AEAC10>
    18d0:	e4840060 	swc1	$f4,96(a0)
    18d4:	8fbf0014 	lw	ra,20(sp)
    18d8:	27bd0018 	addiu	sp,sp,24
    18dc:	03e00008 	jr	ra
    18e0:	00000000 	nop

000018e4 <func_80AEC4F4>:
    18e4:	27bdffe8 	addiu	sp,sp,-24
    18e8:	afbf0014 	sw	ra,20(sp)
    18ec:	3c014100 	lui	at,0x4100
    18f0:	44811000 	mtc1	at,$f2
    18f4:	c484026c 	lwc1	$f4,620(a0)
    18f8:	3c013e00 	lui	at,0x3e00
    18fc:	2482026c 	addiu	v0,a0,620
    1900:	4602203c 	c.lt.s	$f4,$f2
    1904:	00000000 	nop
    1908:	45020023 	bc1fl	1998 <func_80AEC4F4+0xb4>
    190c:	44803000 	mtc1	zero,$f6
    1910:	44810000 	mtc1	at,$f0
    1914:	3c013f80 	lui	at,0x3f80
    1918:	44814000 	mtc1	at,$f8
    191c:	c4460000 	lwc1	$f6,0(v0)
    1920:	24830068 	addiu	v1,a0,104
    1924:	3c0e0000 	lui	t6,0x0
    1928:	46083280 	add.s	$f10,$f6,$f8
    192c:	3c010000 	lui	at,0x0
    1930:	e44a0000 	swc1	$f10,0(v0)
    1934:	c4520000 	lwc1	$f18,0(v0)
    1938:	c4700000 	lwc1	$f16,0(v1)
    193c:	46121101 	sub.s	$f4,$f2,$f18
    1940:	46002182 	mul.s	$f6,$f4,$f0
    1944:	00000000 	nop
    1948:	46068202 	mul.s	$f8,$f16,$f6
    194c:	e4680000 	swc1	$f8,0(v1)
    1950:	8dce0000 	lw	t6,0(t6)
    1954:	c42401ac 	lwc1	$f4,428(at)
    1958:	3c014150 	lui	at,0x4150
    195c:	85cf145c 	lh	t7,5212(t6)
    1960:	44813000 	mtc1	at,$f6
    1964:	448f5000 	mtc1	t7,$f10
    1968:	00000000 	nop
    196c:	468054a0 	cvt.s.w	$f18,$f10
    1970:	46049402 	mul.s	$f16,$f18,$f4
    1974:	c4520000 	lwc1	$f18,0(v0)
    1978:	46009107 	neg.s	$f4,$f18
    197c:	46068200 	add.s	$f8,$f16,$f6
    1980:	46004282 	mul.s	$f10,$f8,$f0
    1984:	00000000 	nop
    1988:	46045402 	mul.s	$f16,$f10,$f4
    198c:	10000011 	b	19d4 <func_80AEC4F4+0xf0>
    1990:	e4900060 	swc1	$f16,96(a0)
    1994:	44803000 	mtc1	zero,$f6
    1998:	3c180000 	lui	t8,0x0
    199c:	3c010000 	lui	at,0x0
    19a0:	e4860068 	swc1	$f6,104(a0)
    19a4:	8f180000 	lw	t8,0(t8)
    19a8:	c42a01b0 	lwc1	$f10,432(at)
    19ac:	3c014150 	lui	at,0x4150
    19b0:	8719145c 	lh	t9,5212(t8)
    19b4:	44818000 	mtc1	at,$f16
    19b8:	44994000 	mtc1	t9,$f8
    19bc:	00000000 	nop
    19c0:	468044a0 	cvt.s.w	$f18,$f8
    19c4:	460a9102 	mul.s	$f4,$f18,$f10
    19c8:	46102180 	add.s	$f6,$f4,$f16
    19cc:	46003207 	neg.s	$f8,$f6
    19d0:	e4880060 	swc1	$f8,96(a0)
    19d4:	0c000000 	jal	0 <func_80AEAC10>
    19d8:	00000000 	nop
    19dc:	8fbf0014 	lw	ra,20(sp)
    19e0:	27bd0018 	addiu	sp,sp,24
    19e4:	03e00008 	jr	ra
    19e8:	00000000 	nop

000019ec <func_80AEC5FC>:
    19ec:	8ca21c44 	lw	v0,7236(a1)
    19f0:	c480002c 	lwc1	$f0,44(a0)
    19f4:	3c010000 	lui	at,0x0
    19f8:	c442002c 	lwc1	$f2,44(v0)
    19fc:	c42401b4 	lwc1	$f4,436(at)
    1a00:	46001181 	sub.s	$f6,$f2,$f0
    1a04:	4604303e 	c.le.s	$f6,$f4
    1a08:	00000000 	nop
    1a0c:	4502000a 	bc1fl	1a38 <func_80AEC5FC+0x4c>
    1a10:	00001025 	move	v0,zero
    1a14:	c4480028 	lwc1	$f8,40(v0)
    1a18:	c48a0028 	lwc1	$f10,40(a0)
    1a1c:	4608503e 	c.le.s	$f10,$f8
    1a20:	00000000 	nop
    1a24:	45020004 	bc1fl	1a38 <func_80AEC5FC+0x4c>
    1a28:	00001025 	move	v0,zero
    1a2c:	03e00008 	jr	ra
    1a30:	24020001 	li	v0,1
    1a34:	00001025 	move	v0,zero
    1a38:	03e00008 	jr	ra
    1a3c:	00000000 	nop

00001a40 <func_80AEC650>:
    1a40:	27bdffd8 	addiu	sp,sp,-40
    1a44:	afbf0014 	sw	ra,20(sp)
    1a48:	8c8e0280 	lw	t6,640(a0)
    1a4c:	00803025 	move	a2,a0
    1a50:	2484014c 	addiu	a0,a0,332
    1a54:	15c0000e 	bnez	t6,1a90 <func_80AEC650+0x50>
    1a58:	3c054000 	lui	a1,0x4000
    1a5c:	afa4001c 	sw	a0,28(sp)
    1a60:	0c000000 	jal	0 <func_80AEAC10>
    1a64:	afa60028 	sw	a2,40(sp)
    1a68:	14400005 	bnez	v0,1a80 <func_80AEC650+0x40>
    1a6c:	8fa4001c 	lw	a0,28(sp)
    1a70:	0c000000 	jal	0 <func_80AEAC10>
    1a74:	3c0540e0 	lui	a1,0x40e0
    1a78:	50400006 	beqzl	v0,1a94 <func_80AEC650+0x54>
    1a7c:	8fbf0014 	lw	ra,20(sp)
    1a80:	8fa40028 	lw	a0,40(sp)
    1a84:	24050803 	li	a1,2051
    1a88:	0c000000 	jal	0 <func_80AEAC10>
    1a8c:	248400e4 	addiu	a0,a0,228
    1a90:	8fbf0014 	lw	ra,20(sp)
    1a94:	27bd0028 	addiu	sp,sp,40
    1a98:	03e00008 	jr	ra
    1a9c:	00000000 	nop

00001aa0 <func_80AEC6B0>:
    1aa0:	27bdffe0 	addiu	sp,sp,-32
    1aa4:	afbf0014 	sw	ra,20(sp)
    1aa8:	248400e4 	addiu	a0,a0,228
    1aac:	afa4001c 	sw	a0,28(sp)
    1ab0:	0c000000 	jal	0 <func_80AEAC10>
    1ab4:	24052870 	li	a1,10352
    1ab8:	8fa4001c 	lw	a0,28(sp)
    1abc:	0c000000 	jal	0 <func_80AEAC10>
    1ac0:	24056862 	li	a1,26722
    1ac4:	8fbf0014 	lw	ra,20(sp)
    1ac8:	27bd0020 	addiu	sp,sp,32
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop

00001ad4 <func_80AEC6E4>:
    1ad4:	27bdffd8 	addiu	sp,sp,-40
    1ad8:	afa40028 	sw	a0,40(sp)
    1adc:	afbf0024 	sw	ra,36(sp)
    1ae0:	00a02025 	move	a0,a1
    1ae4:	24050004 	li	a1,4
    1ae8:	0c000000 	jal	0 <func_80AEAC10>
    1aec:	24060003 	li	a2,3
    1af0:	1040001b 	beqz	v0,1b60 <func_80AEC6E4+0x8c>
    1af4:	8fae0028 	lw	t6,40(sp)
    1af8:	8dcf0280 	lw	t7,640(t6)
    1afc:	3c040000 	lui	a0,0x0
    1b00:	55e00018 	bnezl	t7,1b64 <func_80AEC6E4+0x90>
    1b04:	8fbf0024 	lw	ra,36(sp)
    1b08:	0c000000 	jal	0 <func_80AEAC10>
    1b0c:	24840000 	addiu	a0,a0,0
    1b10:	44822000 	mtc1	v0,$f4
    1b14:	3c01c100 	lui	at,0xc100
    1b18:	44814000 	mtc1	at,$f8
    1b1c:	468021a0 	cvt.s.w	$f6,$f4
    1b20:	8fa40028 	lw	a0,40(sp)
    1b24:	3c050000 	lui	a1,0x0
    1b28:	24180002 	li	t8,2
    1b2c:	afb80014 	sw	t8,20(sp)
    1b30:	24a50000 	addiu	a1,a1,0
    1b34:	e7a60010 	swc1	$f6,16(sp)
    1b38:	3c063f80 	lui	a2,0x3f80
    1b3c:	24070000 	li	a3,0
    1b40:	e7a80018 	swc1	$f8,24(sp)
    1b44:	0c000000 	jal	0 <func_80AEAC10>
    1b48:	2484014c 	addiu	a0,a0,332
    1b4c:	8fa80028 	lw	t0,40(sp)
    1b50:	24190001 	li	t9,1
    1b54:	ad190280 	sw	t9,640(t0)
    1b58:	0c000000 	jal	0 <func_80AEAC10>
    1b5c:	8fa40028 	lw	a0,40(sp)
    1b60:	8fbf0024 	lw	ra,36(sp)
    1b64:	27bd0028 	addiu	sp,sp,40
    1b68:	03e00008 	jr	ra
    1b6c:	00000000 	nop

00001b70 <func_80AEC780>:
    1b70:	27bdffe0 	addiu	sp,sp,-32
    1b74:	afbf0014 	sw	ra,20(sp)
    1b78:	afa40020 	sw	a0,32(sp)
    1b7c:	8ca31c44 	lw	v1,7236(a1)
    1b80:	afa50024 	sw	a1,36(sp)
    1b84:	0c000000 	jal	0 <func_80AEAC10>
    1b88:	afa30018 	sw	v1,24(sp)
    1b8c:	1040001b 	beqz	v0,1bfc <func_80AEC780+0x8c>
    1b90:	8fa30018 	lw	v1,24(sp)
    1b94:	8fa40024 	lw	a0,36(sp)
    1b98:	0c000000 	jal	0 <func_80AEAC10>
    1b9c:	afa30018 	sw	v1,24(sp)
    1ba0:	14400016 	bnez	v0,1bfc <func_80AEC780+0x8c>
    1ba4:	8fa30018 	lw	v1,24(sp)
    1ba8:	8c6e067c 	lw	t6,1660(v1)
    1bac:	3c010020 	lui	at,0x20
    1bb0:	34216000 	ori	at,at,0x6000
    1bb4:	01c17824 	and	t7,t6,at
    1bb8:	55e00011 	bnezl	t7,1c00 <func_80AEC780+0x90>
    1bbc:	8fbf0014 	lw	ra,20(sp)
    1bc0:	94780088 	lhu	t8,136(v1)
    1bc4:	3c080000 	lui	t0,0x0
    1bc8:	25080000 	addiu	t0,t0,0
    1bcc:	33190001 	andi	t9,t8,0x1
    1bd0:	1320000a 	beqz	t9,1bfc <func_80AEC780+0x8c>
    1bd4:	8fa90024 	lw	t1,36(sp)
    1bd8:	44802000 	mtc1	zero,$f4
    1bdc:	ad281d68 	sw	t0,7528(t1)
    1be0:	240a0001 	li	t2,1
    1be4:	3c010000 	lui	at,0x0
    1be8:	a02a1414 	sb	t2,5140(at)
    1bec:	e4640838 	swc1	$f4,2104(v1)
    1bf0:	8fac0020 	lw	t4,32(sp)
    1bf4:	240b0008 	li	t3,8
    1bf8:	ad8b0264 	sw	t3,612(t4)
    1bfc:	8fbf0014 	lw	ra,20(sp)
    1c00:	27bd0020 	addiu	sp,sp,32
    1c04:	03e00008 	jr	ra
    1c08:	00000000 	nop

00001c0c <func_80AEC81C>:
    1c0c:	27bdffe8 	addiu	sp,sp,-24
    1c10:	00803825 	move	a3,a0
    1c14:	afbf0014 	sw	ra,20(sp)
    1c18:	afa5001c 	sw	a1,28(sp)
    1c1c:	00a02025 	move	a0,a1
    1c20:	24050001 	li	a1,1
    1c24:	afa70018 	sw	a3,24(sp)
    1c28:	0c000000 	jal	0 <func_80AEAC10>
    1c2c:	24060003 	li	a2,3
    1c30:	10400019 	beqz	v0,1c98 <func_80AEC81C+0x8c>
    1c34:	8fa70018 	lw	a3,24(sp)
    1c38:	8fae001c 	lw	t6,28(sp)
    1c3c:	24080009 	li	t0,9
    1c40:	24090001 	li	t1,1
    1c44:	8dc21d98 	lw	v0,7576(t6)
    1c48:	8c4f000c 	lw	t7,12(v0)
    1c4c:	448f2000 	mtc1	t7,$f4
    1c50:	00000000 	nop
    1c54:	468021a0 	cvt.s.w	$f6,$f4
    1c58:	e4e60024 	swc1	$f6,36(a3)
    1c5c:	8c580010 	lw	t8,16(v0)
    1c60:	44984000 	mtc1	t8,$f8
    1c64:	00000000 	nop
    1c68:	468042a0 	cvt.s.w	$f10,$f8
    1c6c:	e4ea0028 	swc1	$f10,40(a3)
    1c70:	8c590014 	lw	t9,20(v0)
    1c74:	44998000 	mtc1	t9,$f16
    1c78:	00000000 	nop
    1c7c:	468084a0 	cvt.s.w	$f18,$f16
    1c80:	e4f2002c 	swc1	$f18,44(a3)
    1c84:	84430008 	lh	v1,8(v0)
    1c88:	ace80264 	sw	t0,612(a3)
    1c8c:	ace90268 	sw	t1,616(a3)
    1c90:	a4e300b6 	sh	v1,182(a3)
    1c94:	a4e30032 	sh	v1,50(a3)
    1c98:	8fbf0014 	lw	ra,20(sp)
    1c9c:	27bd0018 	addiu	sp,sp,24
    1ca0:	03e00008 	jr	ra
    1ca4:	00000000 	nop

00001ca8 <func_80AEC8B8>:
    1ca8:	27bdffd8 	addiu	sp,sp,-40
    1cac:	afa40028 	sw	a0,40(sp)
    1cb0:	afbf0024 	sw	ra,36(sp)
    1cb4:	00a02025 	move	a0,a1
    1cb8:	24050003 	li	a1,3
    1cbc:	0c000000 	jal	0 <func_80AEAC10>
    1cc0:	24060003 	li	a2,3
    1cc4:	10400015 	beqz	v0,1d1c <func_80AEC8B8+0x74>
    1cc8:	3c040000 	lui	a0,0x0
    1ccc:	0c000000 	jal	0 <func_80AEAC10>
    1cd0:	24840000 	addiu	a0,a0,0
    1cd4:	44822000 	mtc1	v0,$f4
    1cd8:	3c01c100 	lui	at,0xc100
    1cdc:	44814000 	mtc1	at,$f8
    1ce0:	468021a0 	cvt.s.w	$f6,$f4
    1ce4:	8fa40028 	lw	a0,40(sp)
    1ce8:	3c050000 	lui	a1,0x0
    1cec:	240e0002 	li	t6,2
    1cf0:	afae0014 	sw	t6,20(sp)
    1cf4:	24a50000 	addiu	a1,a1,0
    1cf8:	e7a60010 	swc1	$f6,16(sp)
    1cfc:	3c063f80 	lui	a2,0x3f80
    1d00:	24070000 	li	a3,0
    1d04:	e7a80018 	swc1	$f8,24(sp)
    1d08:	0c000000 	jal	0 <func_80AEAC10>
    1d0c:	2484014c 	addiu	a0,a0,332
    1d10:	8fb80028 	lw	t8,40(sp)
    1d14:	240f000a 	li	t7,10
    1d18:	af0f0264 	sw	t7,612(t8)
    1d1c:	8fbf0024 	lw	ra,36(sp)
    1d20:	27bd0028 	addiu	sp,sp,40
    1d24:	03e00008 	jr	ra
    1d28:	00000000 	nop

00001d2c <func_80AEC93C>:
    1d2c:	27bdffd0 	addiu	sp,sp,-48
    1d30:	afb00028 	sw	s0,40(sp)
    1d34:	00808025 	move	s0,a0
    1d38:	10a00019 	beqz	a1,1da0 <func_80AEC93C+0x74>
    1d3c:	afbf002c 	sw	ra,44(sp)
    1d40:	3c040000 	lui	a0,0x0
    1d44:	0c000000 	jal	0 <func_80AEAC10>
    1d48:	24840000 	addiu	a0,a0,0
    1d4c:	44822000 	mtc1	v0,$f4
    1d50:	3c01c100 	lui	at,0xc100
    1d54:	44814000 	mtc1	at,$f8
    1d58:	468021a0 	cvt.s.w	$f6,$f4
    1d5c:	3c050000 	lui	a1,0x0
    1d60:	24a50000 	addiu	a1,a1,0
    1d64:	2604014c 	addiu	a0,s0,332
    1d68:	3c063f80 	lui	a2,0x3f80
    1d6c:	24070000 	li	a3,0
    1d70:	e7a60010 	swc1	$f6,16(sp)
    1d74:	afa00014 	sw	zero,20(sp)
    1d78:	0c000000 	jal	0 <func_80AEAC10>
    1d7c:	e7a80018 	swc1	$f8,24(sp)
    1d80:	860e0032 	lh	t6,50(s0)
    1d84:	44805000 	mtc1	zero,$f10
    1d88:	34018000 	li	at,0x8000
    1d8c:	2418000b 	li	t8,11
    1d90:	01c17821 	addu	t7,t6,at
    1d94:	a60f0032 	sh	t7,50(s0)
    1d98:	ae180264 	sw	t8,612(s0)
    1d9c:	e60a026c 	swc1	$f10,620(s0)
    1da0:	8fbf002c 	lw	ra,44(sp)
    1da4:	8fb00028 	lw	s0,40(sp)
    1da8:	27bd0030 	addiu	sp,sp,48
    1dac:	03e00008 	jr	ra
    1db0:	00000000 	nop

00001db4 <func_80AEC9C4>:
    1db4:	3c013f80 	lui	at,0x3f80
    1db8:	44813000 	mtc1	at,$f6
    1dbc:	c484026c 	lwc1	$f4,620(a0)
    1dc0:	3c014100 	lui	at,0x4100
    1dc4:	44818000 	mtc1	at,$f16
    1dc8:	46062200 	add.s	$f8,$f4,$f6
    1dcc:	240e000c 	li	t6,12
    1dd0:	3c01bf80 	lui	at,0xbf80
    1dd4:	e488026c 	swc1	$f8,620(a0)
    1dd8:	c48a026c 	lwc1	$f10,620(a0)
    1ddc:	460a803e 	c.le.s	$f16,$f10
    1de0:	00000000 	nop
    1de4:	45000006 	bc1f	1e00 <func_80AEC9C4+0x4c>
    1de8:	00000000 	nop
    1dec:	44809000 	mtc1	zero,$f18
    1df0:	44812000 	mtc1	at,$f4
    1df4:	ac8e0264 	sw	t6,612(a0)
    1df8:	e492026c 	swc1	$f18,620(a0)
    1dfc:	e4840060 	swc1	$f4,96(a0)
    1e00:	03e00008 	jr	ra
    1e04:	00000000 	nop

00001e08 <func_80AECA18>:
    1e08:	948e0088 	lhu	t6,136(a0)
    1e0c:	31cf0001 	andi	t7,t6,0x1
    1e10:	15e00006 	bnez	t7,1e2c <func_80AECA18+0x24>
    1e14:	00000000 	nop
    1e18:	44800000 	mtc1	zero,$f0
    1e1c:	2418000d 	li	t8,13
    1e20:	ac980264 	sw	t8,612(a0)
    1e24:	e480026c 	swc1	$f0,620(a0)
    1e28:	e4800060 	swc1	$f0,96(a0)
    1e2c:	03e00008 	jr	ra
    1e30:	00000000 	nop

00001e34 <func_80AECA44>:
    1e34:	27bdffe8 	addiu	sp,sp,-24
    1e38:	afa40018 	sw	a0,24(sp)
    1e3c:	afbf0014 	sw	ra,20(sp)
    1e40:	00a02025 	move	a0,a1
    1e44:	24050005 	li	a1,5
    1e48:	0c000000 	jal	0 <func_80AEAC10>
    1e4c:	24060003 	li	a2,3
    1e50:	10400008 	beqz	v0,1e74 <func_80AECA44+0x40>
    1e54:	3c020000 	lui	v0,0x0
    1e58:	24420000 	addiu	v0,v0,0
    1e5c:	944e0f20 	lhu	t6,3872(v0)
    1e60:	8fb90018 	lw	t9,24(sp)
    1e64:	2418000e 	li	t8,14
    1e68:	35cf0002 	ori	t7,t6,0x2
    1e6c:	a44f0f20 	sh	t7,3872(v0)
    1e70:	af380264 	sw	t8,612(t9)
    1e74:	8fbf0014 	lw	ra,20(sp)
    1e78:	27bd0018 	addiu	sp,sp,24
    1e7c:	03e00008 	jr	ra
    1e80:	00000000 	nop

00001e84 <func_80AECA94>:
    1e84:	27bdffe8 	addiu	sp,sp,-24
    1e88:	afbf0014 	sw	ra,20(sp)
    1e8c:	0c000000 	jal	0 <func_80AEAC10>
    1e90:	00000000 	nop
    1e94:	8fbf0014 	lw	ra,20(sp)
    1e98:	27bd0018 	addiu	sp,sp,24
    1e9c:	03e00008 	jr	ra
    1ea0:	00000000 	nop

00001ea4 <func_80AECAB4>:
    1ea4:	27bdffe8 	addiu	sp,sp,-24
    1ea8:	afbf0014 	sw	ra,20(sp)
    1eac:	0c000000 	jal	0 <func_80AEAC10>
    1eb0:	00000000 	nop
    1eb4:	8fbf0014 	lw	ra,20(sp)
    1eb8:	27bd0018 	addiu	sp,sp,24
    1ebc:	03e00008 	jr	ra
    1ec0:	00000000 	nop

00001ec4 <func_80AECAD4>:
    1ec4:	27bdffe8 	addiu	sp,sp,-24
    1ec8:	afbf0014 	sw	ra,20(sp)
    1ecc:	afa40018 	sw	a0,24(sp)
    1ed0:	0c000000 	jal	0 <func_80AEAC10>
    1ed4:	afa5001c 	sw	a1,28(sp)
    1ed8:	0c000000 	jal	0 <func_80AEAC10>
    1edc:	8fa40018 	lw	a0,24(sp)
    1ee0:	8fa40018 	lw	a0,24(sp)
    1ee4:	0c000000 	jal	0 <func_80AEAC10>
    1ee8:	8fa5001c 	lw	a1,28(sp)
    1eec:	8fa40018 	lw	a0,24(sp)
    1ef0:	0c000000 	jal	0 <func_80AEAC10>
    1ef4:	8fa5001c 	lw	a1,28(sp)
    1ef8:	8fbf0014 	lw	ra,20(sp)
    1efc:	27bd0018 	addiu	sp,sp,24
    1f00:	03e00008 	jr	ra
    1f04:	00000000 	nop

00001f08 <func_80AECB18>:
    1f08:	27bdffe0 	addiu	sp,sp,-32
    1f0c:	afbf0014 	sw	ra,20(sp)
    1f10:	afa40020 	sw	a0,32(sp)
    1f14:	0c000000 	jal	0 <func_80AEAC10>
    1f18:	afa50024 	sw	a1,36(sp)
    1f1c:	afa2001c 	sw	v0,28(sp)
    1f20:	0c000000 	jal	0 <func_80AEAC10>
    1f24:	8fa40020 	lw	a0,32(sp)
    1f28:	8fa40020 	lw	a0,32(sp)
    1f2c:	0c000000 	jal	0 <func_80AEAC10>
    1f30:	8fa50024 	lw	a1,36(sp)
    1f34:	8fa40020 	lw	a0,32(sp)
    1f38:	0c000000 	jal	0 <func_80AEAC10>
    1f3c:	8fa5001c 	lw	a1,28(sp)
    1f40:	8fbf0014 	lw	ra,20(sp)
    1f44:	27bd0020 	addiu	sp,sp,32
    1f48:	03e00008 	jr	ra
    1f4c:	00000000 	nop

00001f50 <func_80AECB60>:
    1f50:	27bdffe0 	addiu	sp,sp,-32
    1f54:	afbf001c 	sw	ra,28(sp)
    1f58:	afb00018 	sw	s0,24(sp)
    1f5c:	00808025 	move	s0,a0
    1f60:	0c000000 	jal	0 <func_80AEAC10>
    1f64:	afa50024 	sw	a1,36(sp)
    1f68:	0c000000 	jal	0 <func_80AEAC10>
    1f6c:	02002025 	move	a0,s0
    1f70:	0c000000 	jal	0 <func_80AEAC10>
    1f74:	02002025 	move	a0,s0
    1f78:	02002025 	move	a0,s0
    1f7c:	0c000000 	jal	0 <func_80AEAC10>
    1f80:	8fa50024 	lw	a1,36(sp)
    1f84:	0c000000 	jal	0 <func_80AEAC10>
    1f88:	02002025 	move	a0,s0
    1f8c:	0c000000 	jal	0 <func_80AEAC10>
    1f90:	02002025 	move	a0,s0
    1f94:	8fbf001c 	lw	ra,28(sp)
    1f98:	8fb00018 	lw	s0,24(sp)
    1f9c:	27bd0020 	addiu	sp,sp,32
    1fa0:	03e00008 	jr	ra
    1fa4:	00000000 	nop

00001fa8 <func_80AECBB8>:
    1fa8:	27bdffe0 	addiu	sp,sp,-32
    1fac:	afbf001c 	sw	ra,28(sp)
    1fb0:	afb00018 	sw	s0,24(sp)
    1fb4:	00808025 	move	s0,a0
    1fb8:	0c000000 	jal	0 <func_80AEAC10>
    1fbc:	afa50024 	sw	a1,36(sp)
    1fc0:	02002025 	move	a0,s0
    1fc4:	0c000000 	jal	0 <func_80AEAC10>
    1fc8:	8fa50024 	lw	a1,36(sp)
    1fcc:	0c000000 	jal	0 <func_80AEAC10>
    1fd0:	02002025 	move	a0,s0
    1fd4:	0c000000 	jal	0 <func_80AEAC10>
    1fd8:	02002025 	move	a0,s0
    1fdc:	02002025 	move	a0,s0
    1fe0:	0c000000 	jal	0 <func_80AEAC10>
    1fe4:	8fa50024 	lw	a1,36(sp)
    1fe8:	0c000000 	jal	0 <func_80AEAC10>
    1fec:	02002025 	move	a0,s0
    1ff0:	0c000000 	jal	0 <func_80AEAC10>
    1ff4:	02002025 	move	a0,s0
    1ff8:	8fbf001c 	lw	ra,28(sp)
    1ffc:	8fb00018 	lw	s0,24(sp)
    2000:	27bd0020 	addiu	sp,sp,32
    2004:	03e00008 	jr	ra
    2008:	00000000 	nop

0000200c <func_80AECC1C>:
    200c:	27bdffe0 	addiu	sp,sp,-32
    2010:	afbf001c 	sw	ra,28(sp)
    2014:	afb00018 	sw	s0,24(sp)
    2018:	00808025 	move	s0,a0
    201c:	0c000000 	jal	0 <func_80AEAC10>
    2020:	afa50024 	sw	a1,36(sp)
    2024:	02002025 	move	a0,s0
    2028:	0c000000 	jal	0 <func_80AEAC10>
    202c:	8fa50024 	lw	a1,36(sp)
    2030:	0c000000 	jal	0 <func_80AEAC10>
    2034:	02002025 	move	a0,s0
    2038:	0c000000 	jal	0 <func_80AEAC10>
    203c:	02002025 	move	a0,s0
    2040:	02002025 	move	a0,s0
    2044:	0c000000 	jal	0 <func_80AEAC10>
    2048:	8fa50024 	lw	a1,36(sp)
    204c:	0c000000 	jal	0 <func_80AEAC10>
    2050:	02002025 	move	a0,s0
    2054:	02002025 	move	a0,s0
    2058:	0c000000 	jal	0 <func_80AEAC10>
    205c:	8fa50024 	lw	a1,36(sp)
    2060:	8fbf001c 	lw	ra,28(sp)
    2064:	8fb00018 	lw	s0,24(sp)
    2068:	27bd0020 	addiu	sp,sp,32
    206c:	03e00008 	jr	ra
    2070:	00000000 	nop

00002074 <func_80AECC84>:
    2074:	27bdffe8 	addiu	sp,sp,-24
    2078:	afbf0014 	sw	ra,20(sp)
    207c:	90ae1d6c 	lbu	t6,7532(a1)
    2080:	55c00004 	bnezl	t6,2094 <func_80AECC84+0x20>
    2084:	8fbf0014 	lw	ra,20(sp)
    2088:	0c000000 	jal	0 <func_80AEAC10>
    208c:	00000000 	nop
    2090:	8fbf0014 	lw	ra,20(sp)
    2094:	27bd0018 	addiu	sp,sp,24
    2098:	03e00008 	jr	ra
    209c:	00000000 	nop

000020a0 <func_80AECCB0>:
    20a0:	27bdffa0 	addiu	sp,sp,-96
    20a4:	afbf0034 	sw	ra,52(sp)
    20a8:	afa40060 	sw	a0,96(sp)
    20ac:	afa50064 	sw	a1,100(sp)
    20b0:	8484008a 	lh	a0,138(a0)
    20b4:	0c000000 	jal	0 <func_80AEAC10>
    20b8:	a7a40056 	sh	a0,86(sp)
    20bc:	3c0f0000 	lui	t7,0x0
    20c0:	8def0000 	lw	t7,0(t7)
    20c4:	3c014140 	lui	at,0x4140
    20c8:	44814000 	mtc1	at,$f8
    20cc:	85f81456 	lh	t8,5206(t7)
    20d0:	8fa20060 	lw	v0,96(sp)
    20d4:	87a40056 	lh	a0,86(sp)
    20d8:	44982000 	mtc1	t8,$f4
    20dc:	c4520024 	lwc1	$f18,36(v0)
    20e0:	24420024 	addiu	v0,v0,36
    20e4:	468021a0 	cvt.s.w	$f6,$f4
    20e8:	46083280 	add.s	$f10,$f6,$f8
    20ec:	460a0402 	mul.s	$f16,$f0,$f10
    20f0:	46128100 	add.s	$f4,$f16,$f18
    20f4:	e7a40050 	swc1	$f4,80(sp)
    20f8:	c4460004 	lwc1	$f6,4(v0)
    20fc:	afa2003c 	sw	v0,60(sp)
    2100:	0c000000 	jal	0 <func_80AEAC10>
    2104:	e7a6004c 	swc1	$f6,76(sp)
    2108:	3c190000 	lui	t9,0x0
    210c:	8f390000 	lw	t9,0(t9)
    2110:	3c014140 	lui	at,0x4140
    2114:	44818000 	mtc1	at,$f16
    2118:	87281456 	lh	t0,5206(t9)
    211c:	8fa2003c 	lw	v0,60(sp)
    2120:	8fa60064 	lw	a2,100(sp)
    2124:	44884000 	mtc1	t0,$f8
    2128:	c4460008 	lwc1	$f6,8(v0)
    212c:	87a90056 	lh	t1,86(sp)
    2130:	468042a0 	cvt.s.w	$f10,$f8
    2134:	c7a80050 	lwc1	$f8,80(sp)
    2138:	240a0005 	li	t2,5
    213c:	afaa0028 	sw	t2,40(sp)
    2140:	afa00024 	sw	zero,36(sp)
    2144:	afa0001c 	sw	zero,28(sp)
    2148:	46105480 	add.s	$f18,$f10,$f16
    214c:	c7aa004c 	lwc1	$f10,76(sp)
    2150:	8fa50060 	lw	a1,96(sp)
    2154:	2407005d 	li	a3,93
    2158:	46120102 	mul.s	$f4,$f0,$f18
    215c:	24c41c24 	addiu	a0,a2,7204
    2160:	afa90020 	sw	t1,32(sp)
    2164:	e7a80010 	swc1	$f8,16(sp)
    2168:	e7aa0014 	swc1	$f10,20(sp)
    216c:	46062080 	add.s	$f2,$f4,$f6
    2170:	0c000000 	jal	0 <func_80AEAC10>
    2174:	e7a20018 	swc1	$f2,24(sp)
    2178:	8fab0060 	lw	t3,96(sp)
    217c:	ad620278 	sw	v0,632(t3)
    2180:	8fbf0034 	lw	ra,52(sp)
    2184:	27bd0060 	addiu	sp,sp,96
    2188:	03e00008 	jr	ra
    218c:	00000000 	nop

00002190 <func_80AECDA0>:
    2190:	27bdffe0 	addiu	sp,sp,-32
    2194:	afa50024 	sw	a1,36(sp)
    2198:	afbf001c 	sw	ra,28(sp)
    219c:	3c050000 	lui	a1,0x0
    21a0:	24a50000 	addiu	a1,a1,0
    21a4:	afa00010 	sw	zero,16(sp)
    21a8:	afa40020 	sw	a0,32(sp)
    21ac:	00003025 	move	a2,zero
    21b0:	0c000000 	jal	0 <func_80AEAC10>
    21b4:	24070000 	li	a3,0
    21b8:	8fa40020 	lw	a0,32(sp)
    21bc:	240e000f 	li	t6,15
    21c0:	3c010000 	lui	at,0x0
    21c4:	ac8e0264 	sw	t6,612(a0)
    21c8:	c42401b8 	lwc1	$f4,440(at)
    21cc:	24050005 	li	a1,5
    21d0:	0c000000 	jal	0 <func_80AEAC10>
    21d4:	e48400bc 	swc1	$f4,188(a0)
    21d8:	8fa40020 	lw	a0,32(sp)
    21dc:	0c000000 	jal	0 <func_80AEAC10>
    21e0:	24050002 	li	a1,2
    21e4:	8fbf001c 	lw	ra,28(sp)
    21e8:	27bd0020 	addiu	sp,sp,32
    21ec:	03e00008 	jr	ra
    21f0:	00000000 	nop

000021f4 <func_80AECE04>:
    21f4:	afa50004 	sw	a1,4(sp)
    21f8:	3c010000 	lui	at,0x0
    21fc:	c42601bc 	lwc1	$f6,444(at)
    2200:	c48400bc 	lwc1	$f4,188(a0)
    2204:	46062200 	add.s	$f8,$f4,$f6
    2208:	03e00008 	jr	ra
    220c:	e48800bc 	swc1	$f8,188(a0)

00002210 <func_80AECE20>:
    2210:	27bdffc0 	addiu	sp,sp,-64
    2214:	afa40040 	sw	a0,64(sp)
    2218:	afbf0014 	sw	ra,20(sp)
    221c:	8ca61c44 	lw	a2,7236(a1)
    2220:	8fae0040 	lw	t6,64(sp)
    2224:	84c400b6 	lh	a0,182(a2)
    2228:	c5c4027c 	lwc1	$f4,636(t6)
    222c:	afa60038 	sw	a2,56(sp)
    2230:	a7a40032 	sh	a0,50(sp)
    2234:	0c000000 	jal	0 <func_80AEAC10>
    2238:	e7a40028 	swc1	$f4,40(sp)
    223c:	c7a60028 	lwc1	$f6,40(sp)
    2240:	8fa60038 	lw	a2,56(sp)
    2244:	8fa30040 	lw	v1,64(sp)
    2248:	46060202 	mul.s	$f8,$f0,$f6
    224c:	24c20024 	addiu	v0,a2,36
    2250:	c44a0000 	lwc1	$f10,0(v0)
    2254:	87a40032 	lh	a0,50(sp)
    2258:	24630024 	addiu	v1,v1,36
    225c:	460a4400 	add.s	$f16,$f8,$f10
    2260:	e4700000 	swc1	$f16,0(v1)
    2264:	c4520004 	lwc1	$f18,4(v0)
    2268:	e4720004 	swc1	$f18,4(v1)
    226c:	afa3001c 	sw	v1,28(sp)
    2270:	0c000000 	jal	0 <func_80AEAC10>
    2274:	afa20020 	sw	v0,32(sp)
    2278:	c7a40028 	lwc1	$f4,40(sp)
    227c:	8fa20020 	lw	v0,32(sp)
    2280:	8fa3001c 	lw	v1,28(sp)
    2284:	46040182 	mul.s	$f6,$f0,$f4
    2288:	c4480008 	lwc1	$f8,8(v0)
    228c:	46083280 	add.s	$f10,$f6,$f8
    2290:	e46a0008 	swc1	$f10,8(v1)
    2294:	8fbf0014 	lw	ra,20(sp)
    2298:	27bd0040 	addiu	sp,sp,64
    229c:	03e00008 	jr	ra
    22a0:	00000000 	nop

000022a4 <func_80AECEB4>:
    22a4:	27bdffc8 	addiu	sp,sp,-56
    22a8:	afbf0014 	sw	ra,20(sp)
    22ac:	afa40038 	sw	a0,56(sp)
    22b0:	8cae1c44 	lw	t6,7236(a1)
    22b4:	afae0030 	sw	t6,48(sp)
    22b8:	848400b6 	lh	a0,182(a0)
    22bc:	0c000000 	jal	0 <func_80AEAC10>
    22c0:	a7a40026 	sh	a0,38(sp)
    22c4:	3c180000 	lui	t8,0x0
    22c8:	8f180000 	lw	t8,0(t8)
    22cc:	3c0141f0 	lui	at,0x41f0
    22d0:	44814000 	mtc1	at,$f8
    22d4:	87191458 	lh	t9,5208(t8)
    22d8:	8fa30038 	lw	v1,56(sp)
    22dc:	8fa20030 	lw	v0,48(sp)
    22e0:	44992000 	mtc1	t9,$f4
    22e4:	c4720024 	lwc1	$f18,36(v1)
    22e8:	87a40026 	lh	a0,38(sp)
    22ec:	468021a0 	cvt.s.w	$f6,$f4
    22f0:	24630024 	addiu	v1,v1,36
    22f4:	24420450 	addiu	v0,v0,1104
    22f8:	46083280 	add.s	$f10,$f6,$f8
    22fc:	460a0402 	mul.s	$f16,$f0,$f10
    2300:	46128100 	add.s	$f4,$f16,$f18
    2304:	e4440000 	swc1	$f4,0(v0)
    2308:	afa3001c 	sw	v1,28(sp)
    230c:	0c000000 	jal	0 <func_80AEAC10>
    2310:	afa20020 	sw	v0,32(sp)
    2314:	3c080000 	lui	t0,0x0
    2318:	8d080000 	lw	t0,0(t0)
    231c:	3c0141f0 	lui	at,0x41f0
    2320:	44815000 	mtc1	at,$f10
    2324:	85091458 	lh	t1,5208(t0)
    2328:	8fa3001c 	lw	v1,28(sp)
    232c:	8fa20020 	lw	v0,32(sp)
    2330:	44893000 	mtc1	t1,$f6
    2334:	c4640008 	lwc1	$f4,8(v1)
    2338:	46803220 	cvt.s.w	$f8,$f6
    233c:	460a4400 	add.s	$f16,$f8,$f10
    2340:	46100482 	mul.s	$f18,$f0,$f16
    2344:	46049180 	add.s	$f6,$f18,$f4
    2348:	e4460008 	swc1	$f6,8(v0)
    234c:	8fbf0014 	lw	ra,20(sp)
    2350:	27bd0038 	addiu	sp,sp,56
    2354:	03e00008 	jr	ra
    2358:	00000000 	nop

0000235c <func_80AECF6C>:
    235c:	27bdffb0 	addiu	sp,sp,-80
    2360:	afbf001c 	sw	ra,28(sp)
    2364:	3c013f80 	lui	at,0x3f80
    2368:	44813000 	mtc1	at,$f6
    236c:	c484026c 	lwc1	$f4,620(a0)
    2370:	8ca31c44 	lw	v1,7236(a1)
    2374:	44805000 	mtc1	zero,$f10
    2378:	46062200 	add.s	$f8,$f4,$f6
    237c:	3c014040 	lui	at,0x4040
    2380:	e488026c 	swc1	$f8,620(a0)
    2384:	c4700068 	lwc1	$f16,104(v1)
    2388:	46105032 	c.eq.s	$f10,$f16
    238c:	00000000 	nop
    2390:	45020034 	bc1fl	2464 <func_80AECF6C+0x108>
    2394:	00001025 	move	v0,zero
    2398:	c492026c 	lwc1	$f18,620(a0)
    239c:	44812000 	mtc1	at,$f4
    23a0:	00000000 	nop
    23a4:	4612203e 	c.le.s	$f4,$f18
    23a8:	00000000 	nop
    23ac:	4502002d 	bc1fl	2464 <func_80AECF6C+0x108>
    23b0:	00001025 	move	v0,zero
    23b4:	8ca21c44 	lw	v0,7236(a1)
    23b8:	c4460450 	lwc1	$f6,1104(v0)
    23bc:	e4660024 	swc1	$f6,36(v1)
    23c0:	c4480454 	lwc1	$f8,1108(v0)
    23c4:	c4720024 	lwc1	$f18,36(v1)
    23c8:	e4680028 	swc1	$f8,40(v1)
    23cc:	c44a0458 	lwc1	$f10,1112(v0)
    23d0:	e46a002c 	swc1	$f10,44(v1)
    23d4:	c4900024 	lwc1	$f16,36(a0)
    23d8:	c466002c 	lwc1	$f6,44(v1)
    23dc:	c484002c 	lwc1	$f4,44(a0)
    23e0:	afa30048 	sw	v1,72(sp)
    23e4:	46128301 	sub.s	$f12,$f16,$f18
    23e8:	0c000000 	jal	0 <func_80AEAC10>
    23ec:	46062381 	sub.s	$f14,$f4,$f6
    23f0:	3c010000 	lui	at,0x0
    23f4:	c42801c0 	lwc1	$f8,448(at)
    23f8:	8fa30048 	lw	v1,72(sp)
    23fc:	24060014 	li	a2,20
    2400:	46080282 	mul.s	$f10,$f0,$f8
    2404:	246400b6 	addiu	a0,v1,182
    2408:	84990000 	lh	t9,0(a0)
    240c:	24071838 	li	a3,6200
    2410:	24080064 	li	t0,100
    2414:	4600540d 	trunc.w.s	$f16,$f10
    2418:	44028000 	mfc1	v0,$f16
    241c:	00000000 	nop
    2420:	00027c00 	sll	t7,v0,0x10
    2424:	000fc403 	sra	t8,t7,0x10
    2428:	00022c00 	sll	a1,v0,0x10
    242c:	1319000a 	beq	t8,t9,2458 <func_80AECF6C+0xfc>
    2430:	00052c03 	sra	a1,a1,0x10
    2434:	afa80010 	sw	t0,16(sp)
    2438:	afa30048 	sw	v1,72(sp)
    243c:	0c000000 	jal	0 <func_80AEAC10>
    2440:	afa40020 	sw	a0,32(sp)
    2444:	8fa40020 	lw	a0,32(sp)
    2448:	8fa30048 	lw	v1,72(sp)
    244c:	84890000 	lh	t1,0(a0)
    2450:	10000003 	b	2460 <func_80AECF6C+0x104>
    2454:	a4690032 	sh	t1,50(v1)
    2458:	10000002 	b	2464 <func_80AECF6C+0x108>
    245c:	24020001 	li	v0,1
    2460:	00001025 	move	v0,zero
    2464:	8fbf001c 	lw	ra,28(sp)
    2468:	27bd0050 	addiu	sp,sp,80
    246c:	03e00008 	jr	ra
    2470:	00000000 	nop

00002474 <func_80AED084>:
    2474:	8c820278 	lw	v0,632(a0)
    2478:	50400007 	beqzl	v0,2498 <func_80AED084+0x24>
    247c:	00001025 	move	v0,zero
    2480:	8c4e01ec 	lw	t6,492(v0)
    2484:	54ae0004 	bnel	a1,t6,2498 <func_80AED084+0x24>
    2488:	00001025 	move	v0,zero
    248c:	03e00008 	jr	ra
    2490:	24020001 	li	v0,1
    2494:	00001025 	move	v0,zero
    2498:	03e00008 	jr	ra
    249c:	00000000 	nop

000024a0 <func_80AED0B0>:
    24a0:	8c820278 	lw	v0,632(a0)
    24a4:	10400002 	beqz	v0,24b0 <func_80AED0B0+0x10>
    24a8:	00000000 	nop
    24ac:	ac4501ec 	sw	a1,492(v0)
    24b0:	03e00008 	jr	ra
    24b4:	00000000 	nop

000024b8 <func_80AED0C8>:
    24b8:	afa50004 	sw	a1,4(sp)
    24bc:	240e0010 	li	t6,16
    24c0:	03e00008 	jr	ra
    24c4:	ac8e0264 	sw	t6,612(a0)

000024c8 <func_80AED0D8>:
    24c8:	27bdffe8 	addiu	sp,sp,-24
    24cc:	afbf0014 	sw	ra,20(sp)
    24d0:	8482008a 	lh	v0,138(a0)
    24d4:	240e0011 	li	t6,17
    24d8:	240f0001 	li	t7,1
    24dc:	ac8e0264 	sw	t6,612(a0)
    24e0:	ac8f0268 	sw	t7,616(a0)
    24e4:	a4820032 	sh	v0,50(a0)
    24e8:	0c000000 	jal	0 <func_80AEAC10>
    24ec:	a48200b6 	sh	v0,182(a0)
    24f0:	8fbf0014 	lw	ra,20(sp)
    24f4:	27bd0018 	addiu	sp,sp,24
    24f8:	03e00008 	jr	ra
    24fc:	00000000 	nop

00002500 <func_80AED110>:
    2500:	27bdffe8 	addiu	sp,sp,-24
    2504:	afbf0014 	sw	ra,20(sp)
    2508:	44800000 	mtc1	zero,$f0
    250c:	c48400bc 	lwc1	$f4,188(a0)
    2510:	240e0012 	li	t6,18
    2514:	24050001 	li	a1,1
    2518:	4604003e 	c.le.s	$f0,$f4
    251c:	00000000 	nop
    2520:	45020005 	bc1fl	2538 <func_80AED110+0x38>
    2524:	8fbf0014 	lw	ra,20(sp)
    2528:	ac8e0264 	sw	t6,612(a0)
    252c:	0c000000 	jal	0 <func_80AEAC10>
    2530:	e48000bc 	swc1	$f0,188(a0)
    2534:	8fbf0014 	lw	ra,20(sp)
    2538:	27bd0018 	addiu	sp,sp,24
    253c:	03e00008 	jr	ra
    2540:	00000000 	nop

00002544 <func_80AED154>:
    2544:	27bdffe8 	addiu	sp,sp,-24
    2548:	afbf0014 	sw	ra,20(sp)
    254c:	afa5001c 	sw	a1,28(sp)
    2550:	24050002 	li	a1,2
    2554:	0c000000 	jal	0 <func_80AEAC10>
    2558:	afa40018 	sw	a0,24(sp)
    255c:	10400007 	beqz	v0,257c <func_80AED154+0x38>
    2560:	8fa40018 	lw	a0,24(sp)
    2564:	44802000 	mtc1	zero,$f4
    2568:	240e0013 	li	t6,19
    256c:	ac8e0264 	sw	t6,612(a0)
    2570:	e484026c 	swc1	$f4,620(a0)
    2574:	0c000000 	jal	0 <func_80AEAC10>
    2578:	8fa5001c 	lw	a1,28(sp)
    257c:	8fbf0014 	lw	ra,20(sp)
    2580:	27bd0018 	addiu	sp,sp,24
    2584:	03e00008 	jr	ra
    2588:	00000000 	nop

0000258c <func_80AED19C>:
    258c:	27bdffd8 	addiu	sp,sp,-40
    2590:	afbf0024 	sw	ra,36(sp)
    2594:	10a00018 	beqz	a1,25f8 <func_80AED19C+0x6c>
    2598:	afa40028 	sw	a0,40(sp)
    259c:	3c040000 	lui	a0,0x0
    25a0:	0c000000 	jal	0 <func_80AEAC10>
    25a4:	24840000 	addiu	a0,a0,0
    25a8:	44822000 	mtc1	v0,$f4
    25ac:	3c01c100 	lui	at,0xc100
    25b0:	44814000 	mtc1	at,$f8
    25b4:	468021a0 	cvt.s.w	$f6,$f4
    25b8:	8fa40028 	lw	a0,40(sp)
    25bc:	3c050000 	lui	a1,0x0
    25c0:	240e0002 	li	t6,2
    25c4:	afae0014 	sw	t6,20(sp)
    25c8:	24a50000 	addiu	a1,a1,0
    25cc:	e7a60010 	swc1	$f6,16(sp)
    25d0:	3c063f80 	lui	a2,0x3f80
    25d4:	24070000 	li	a3,0
    25d8:	e7a80018 	swc1	$f8,24(sp)
    25dc:	0c000000 	jal	0 <func_80AEAC10>
    25e0:	2484014c 	addiu	a0,a0,332
    25e4:	8fa40028 	lw	a0,40(sp)
    25e8:	240f0014 	li	t7,20
    25ec:	24050003 	li	a1,3
    25f0:	0c000000 	jal	0 <func_80AEAC10>
    25f4:	ac8f0264 	sw	t7,612(a0)
    25f8:	8fbf0024 	lw	ra,36(sp)
    25fc:	27bd0028 	addiu	sp,sp,40
    2600:	03e00008 	jr	ra
    2604:	00000000 	nop

00002608 <func_80AED218>:
    2608:	27bdffd0 	addiu	sp,sp,-48
    260c:	afbf002c 	sw	ra,44(sp)
    2610:	afb00028 	sw	s0,40(sp)
    2614:	afa50034 	sw	a1,52(sp)
    2618:	00808025 	move	s0,a0
    261c:	0c000000 	jal	0 <func_80AEAC10>
    2620:	24050004 	li	a1,4
    2624:	10400016 	beqz	v0,2680 <func_80AED218+0x78>
    2628:	02002025 	move	a0,s0
    262c:	8fae0034 	lw	t6,52(sp)
    2630:	3c040000 	lui	a0,0x0
    2634:	51c0002b 	beqzl	t6,26e4 <func_80AED218+0xdc>
    2638:	8fbf002c 	lw	ra,44(sp)
    263c:	0c000000 	jal	0 <func_80AEAC10>
    2640:	24840000 	addiu	a0,a0,0
    2644:	44822000 	mtc1	v0,$f4
    2648:	3c01c100 	lui	at,0xc100
    264c:	44814000 	mtc1	at,$f8
    2650:	468021a0 	cvt.s.w	$f6,$f4
    2654:	3c050000 	lui	a1,0x0
    2658:	24a50000 	addiu	a1,a1,0
    265c:	2604014c 	addiu	a0,s0,332
    2660:	3c063f80 	lui	a2,0x3f80
    2664:	24070000 	li	a3,0
    2668:	e7a60010 	swc1	$f6,16(sp)
    266c:	afa00014 	sw	zero,20(sp)
    2670:	0c000000 	jal	0 <func_80AEAC10>
    2674:	e7a80018 	swc1	$f8,24(sp)
    2678:	1000001a 	b	26e4 <func_80AED218+0xdc>
    267c:	8fbf002c 	lw	ra,44(sp)
    2680:	0c000000 	jal	0 <func_80AEAC10>
    2684:	24050005 	li	a1,5
    2688:	10400015 	beqz	v0,26e0 <func_80AED218+0xd8>
    268c:	3c040000 	lui	a0,0x0
    2690:	0c000000 	jal	0 <func_80AEAC10>
    2694:	24840000 	addiu	a0,a0,0
    2698:	44825000 	mtc1	v0,$f10
    269c:	3c01c100 	lui	at,0xc100
    26a0:	44819000 	mtc1	at,$f18
    26a4:	46805420 	cvt.s.w	$f16,$f10
    26a8:	3c050000 	lui	a1,0x0
    26ac:	240f0002 	li	t7,2
    26b0:	afaf0014 	sw	t7,20(sp)
    26b4:	24a50000 	addiu	a1,a1,0
    26b8:	2604014c 	addiu	a0,s0,332
    26bc:	e7b00010 	swc1	$f16,16(sp)
    26c0:	3c063f80 	lui	a2,0x3f80
    26c4:	24070000 	li	a3,0
    26c8:	0c000000 	jal	0 <func_80AEAC10>
    26cc:	e7b20018 	swc1	$f18,24(sp)
    26d0:	c6040090 	lwc1	$f4,144(s0)
    26d4:	24180015 	li	t8,21
    26d8:	ae180264 	sw	t8,612(s0)
    26dc:	e604027c 	swc1	$f4,636(s0)
    26e0:	8fbf002c 	lw	ra,44(sp)
    26e4:	8fb00028 	lw	s0,40(sp)
    26e8:	27bd0030 	addiu	sp,sp,48
    26ec:	03e00008 	jr	ra
    26f0:	00000000 	nop

000026f4 <func_80AED304>:
    26f4:	27bdffe8 	addiu	sp,sp,-24
    26f8:	afbf0014 	sw	ra,20(sp)
    26fc:	0c000000 	jal	0 <func_80AEAC10>
    2700:	00000000 	nop
    2704:	8fbf0014 	lw	ra,20(sp)
    2708:	27bd0018 	addiu	sp,sp,24
    270c:	03e00008 	jr	ra
    2710:	00000000 	nop

00002714 <func_80AED324>:
    2714:	27bdffe8 	addiu	sp,sp,-24
    2718:	afbf0014 	sw	ra,20(sp)
    271c:	0c000000 	jal	0 <func_80AEAC10>
    2720:	00000000 	nop
    2724:	8fbf0014 	lw	ra,20(sp)
    2728:	27bd0018 	addiu	sp,sp,24
    272c:	03e00008 	jr	ra
    2730:	00000000 	nop

00002734 <func_80AED344>:
    2734:	27bdffe8 	addiu	sp,sp,-24
    2738:	afbf0014 	sw	ra,20(sp)
    273c:	0c000000 	jal	0 <func_80AEAC10>
    2740:	afa40018 	sw	a0,24(sp)
    2744:	0c000000 	jal	0 <func_80AEAC10>
    2748:	8fa40018 	lw	a0,24(sp)
    274c:	0c000000 	jal	0 <func_80AEAC10>
    2750:	8fa40018 	lw	a0,24(sp)
    2754:	8fbf0014 	lw	ra,20(sp)
    2758:	27bd0018 	addiu	sp,sp,24
    275c:	03e00008 	jr	ra
    2760:	00000000 	nop

00002764 <func_80AED374>:
    2764:	27bdffe8 	addiu	sp,sp,-24
    2768:	afbf0014 	sw	ra,20(sp)
    276c:	afa40018 	sw	a0,24(sp)
    2770:	0c000000 	jal	0 <func_80AEAC10>
    2774:	afa5001c 	sw	a1,28(sp)
    2778:	8fa40018 	lw	a0,24(sp)
    277c:	0c000000 	jal	0 <func_80AEAC10>
    2780:	8fa5001c 	lw	a1,28(sp)
    2784:	8fbf0014 	lw	ra,20(sp)
    2788:	27bd0018 	addiu	sp,sp,24
    278c:	03e00008 	jr	ra
    2790:	00000000 	nop

00002794 <func_80AED3A4>:
    2794:	27bdffe8 	addiu	sp,sp,-24
    2798:	afbf0014 	sw	ra,20(sp)
    279c:	afa40018 	sw	a0,24(sp)
    27a0:	0c000000 	jal	0 <func_80AEAC10>
    27a4:	afa5001c 	sw	a1,28(sp)
    27a8:	8fa40018 	lw	a0,24(sp)
    27ac:	0c000000 	jal	0 <func_80AEAC10>
    27b0:	8fa5001c 	lw	a1,28(sp)
    27b4:	8fa40018 	lw	a0,24(sp)
    27b8:	0c000000 	jal	0 <func_80AEAC10>
    27bc:	00402825 	move	a1,v0
    27c0:	8fbf0014 	lw	ra,20(sp)
    27c4:	27bd0018 	addiu	sp,sp,24
    27c8:	03e00008 	jr	ra
    27cc:	00000000 	nop

000027d0 <func_80AED3E0>:
    27d0:	27bdffe8 	addiu	sp,sp,-24
    27d4:	afbf0014 	sw	ra,20(sp)
    27d8:	0c000000 	jal	0 <func_80AEAC10>
    27dc:	afa40018 	sw	a0,24(sp)
    27e0:	0c000000 	jal	0 <func_80AEAC10>
    27e4:	8fa40018 	lw	a0,24(sp)
    27e8:	8fa40018 	lw	a0,24(sp)
    27ec:	0c000000 	jal	0 <func_80AEAC10>
    27f0:	00402825 	move	a1,v0
    27f4:	8fbf0014 	lw	ra,20(sp)
    27f8:	27bd0018 	addiu	sp,sp,24
    27fc:	03e00008 	jr	ra
    2800:	00000000 	nop

00002804 <func_80AED414>:
    2804:	27bdffe8 	addiu	sp,sp,-24
    2808:	afbf0014 	sw	ra,20(sp)
    280c:	afa40018 	sw	a0,24(sp)
    2810:	0c000000 	jal	0 <func_80AEAC10>
    2814:	afa5001c 	sw	a1,28(sp)
    2818:	8fa40018 	lw	a0,24(sp)
    281c:	0c000000 	jal	0 <func_80AEAC10>
    2820:	8fa5001c 	lw	a1,28(sp)
    2824:	0c000000 	jal	0 <func_80AEAC10>
    2828:	8fa40018 	lw	a0,24(sp)
    282c:	8fbf0014 	lw	ra,20(sp)
    2830:	27bd0018 	addiu	sp,sp,24
    2834:	03e00008 	jr	ra
    2838:	00000000 	nop

0000283c <func_80AED44C>:
    283c:	3c020000 	lui	v0,0x0
    2840:	94420f20 	lhu	v0,3872(v0)
    2844:	27bdffe0 	addiu	sp,sp,-32
    2848:	afbf001c 	sw	ra,28(sp)
    284c:	304e0002 	andi	t6,v0,0x2
    2850:	11c00020 	beqz	t6,28d4 <func_80AED44C+0x98>
    2854:	304f0020 	andi	t7,v0,0x20
    2858:	15e0001e 	bnez	t7,28d4 <func_80AED44C+0x98>
    285c:	30580001 	andi	t8,v0,0x1
    2860:	1700001c 	bnez	t8,28d4 <func_80AED44C+0x98>
    2864:	30590080 	andi	t9,v0,0x80
    2868:	1720001a 	bnez	t9,28d4 <func_80AED44C+0x98>
    286c:	00000000 	nop
    2870:	0c000000 	jal	0 <func_80AEAC10>
    2874:	afa40020 	sw	a0,32(sp)
    2878:	14400012 	bnez	v0,28c4 <func_80AED44C+0x88>
    287c:	8fa40020 	lw	a0,32(sp)
    2880:	3c050000 	lui	a1,0x0
    2884:	24a50000 	addiu	a1,a1,0
    2888:	00003025 	move	a2,zero
    288c:	24070000 	li	a3,0
    2890:	afa00010 	sw	zero,16(sp)
    2894:	0c000000 	jal	0 <func_80AEAC10>
    2898:	afa40020 	sw	a0,32(sp)
    289c:	8fa40020 	lw	a0,32(sp)
    28a0:	24080016 	li	t0,22
    28a4:	2409ffff 	li	t1,-1
    28a8:	80820003 	lb	v0,3(a0)
    28ac:	ac880264 	sw	t0,612(a0)
    28b0:	a0890003 	sb	t1,3(a0)
    28b4:	a0820284 	sb	v0,644(a0)
    28b8:	a0820286 	sb	v0,646(a0)
    28bc:	10000007 	b	28dc <func_80AED44C+0xa0>
    28c0:	a0820285 	sb	v0,645(a0)
    28c4:	0c000000 	jal	0 <func_80AEAC10>
    28c8:	00000000 	nop
    28cc:	10000004 	b	28e0 <func_80AED44C+0xa4>
    28d0:	8fbf001c 	lw	ra,28(sp)
    28d4:	0c000000 	jal	0 <func_80AEAC10>
    28d8:	00000000 	nop
    28dc:	8fbf001c 	lw	ra,28(sp)
    28e0:	27bd0020 	addiu	sp,sp,32
    28e4:	03e00008 	jr	ra
    28e8:	00000000 	nop

000028ec <func_80AED4FC>:
    28ec:	27bdffe8 	addiu	sp,sp,-24
    28f0:	afbf0014 	sw	ra,20(sp)
    28f4:	248400e4 	addiu	a0,a0,228
    28f8:	0c000000 	jal	0 <func_80AEAC10>
    28fc:	240528ac 	li	a1,10412
    2900:	8fbf0014 	lw	ra,20(sp)
    2904:	27bd0018 	addiu	sp,sp,24
    2908:	03e00008 	jr	ra
    290c:	00000000 	nop

00002910 <func_80AED520>:
    2910:	27bdffe0 	addiu	sp,sp,-32
    2914:	afbf001c 	sw	ra,28(sp)
    2918:	afa40020 	sw	a0,32(sp)
    291c:	afa50024 	sw	a1,36(sp)
    2920:	8ca21c44 	lw	v0,7236(a1)
    2924:	3c070000 	lui	a3,0x0
    2928:	3c0f0000 	lui	t7,0x0
    292c:	24e70000 	addiu	a3,a3,0
    2930:	25ef0000 	addiu	t7,t7,0
    2934:	afaf0014 	sw	t7,20(sp)
    2938:	afa70010 	sw	a3,16(sp)
    293c:	24040883 	li	a0,2179
    2940:	24060004 	li	a2,4
    2944:	0c000000 	jal	0 <func_80AEAC10>
    2948:	244500e4 	addiu	a1,v0,228
    294c:	8fa40020 	lw	a0,32(sp)
    2950:	24056864 	li	a1,26724
    2954:	0c000000 	jal	0 <func_80AEAC10>
    2958:	248400e4 	addiu	a0,a0,228
    295c:	8fbf001c 	lw	ra,28(sp)
    2960:	27bd0020 	addiu	sp,sp,32
    2964:	03e00008 	jr	ra
    2968:	00000000 	nop

0000296c <func_80AED57C>:
    296c:	27bdffe8 	addiu	sp,sp,-24
    2970:	afbf0014 	sw	ra,20(sp)
    2974:	c4860068 	lwc1	$f6,104(a0)
    2978:	44802000 	mtc1	zero,$f4
    297c:	248400e4 	addiu	a0,a0,228
    2980:	46062032 	c.eq.s	$f4,$f6
    2984:	00000000 	nop
    2988:	45030004 	bc1tl	299c <func_80AED57C+0x30>
    298c:	8fbf0014 	lw	ra,20(sp)
    2990:	0c000000 	jal	0 <func_80AEAC10>
    2994:	24056865 	li	a1,26725
    2998:	8fbf0014 	lw	ra,20(sp)
    299c:	27bd0018 	addiu	sp,sp,24
    29a0:	03e00008 	jr	ra
    29a4:	00000000 	nop

000029a8 <func_80AED5B8>:
    29a8:	27bdffe8 	addiu	sp,sp,-24
    29ac:	afbf0014 	sw	ra,20(sp)
    29b0:	248400e4 	addiu	a0,a0,228
    29b4:	0c000000 	jal	0 <func_80AEAC10>
    29b8:	24056860 	li	a1,26720
    29bc:	8fbf0014 	lw	ra,20(sp)
    29c0:	27bd0018 	addiu	sp,sp,24
    29c4:	03e00008 	jr	ra
    29c8:	00000000 	nop

000029cc <func_80AED5DC>:
    29cc:	27bdffe8 	addiu	sp,sp,-24
    29d0:	afbf0014 	sw	ra,20(sp)
    29d4:	248400e4 	addiu	a0,a0,228
    29d8:	0c000000 	jal	0 <func_80AEAC10>
    29dc:	24056866 	li	a1,26726
    29e0:	8fbf0014 	lw	ra,20(sp)
    29e4:	27bd0018 	addiu	sp,sp,24
    29e8:	03e00008 	jr	ra
    29ec:	00000000 	nop

000029f0 <func_80AED600>:
    29f0:	27bdffe8 	addiu	sp,sp,-24
    29f4:	afbf0014 	sw	ra,20(sp)
    29f8:	248400e4 	addiu	a0,a0,228
    29fc:	0c000000 	jal	0 <func_80AEAC10>
    2a00:	24056861 	li	a1,26721
    2a04:	8fbf0014 	lw	ra,20(sp)
    2a08:	27bd0018 	addiu	sp,sp,24
    2a0c:	03e00008 	jr	ra
    2a10:	00000000 	nop

00002a14 <func_80AED624>:
    2a14:	27bdffe8 	addiu	sp,sp,-24
    2a18:	afbf0014 	sw	ra,20(sp)
    2a1c:	3c020001 	lui	v0,0x1
    2a20:	00451021 	addu	v0,v0,a1
    2a24:	80421cbc 	lb	v0,7356(v0)
    2a28:	80830285 	lb	v1,645(a0)
    2a2c:	50430006 	beql	v0,v1,2a48 <func_80AED624+0x34>
    2a30:	808e0284 	lb	t6,644(a0)
    2a34:	0c000000 	jal	0 <func_80AEAC10>
    2a38:	00000000 	nop
    2a3c:	1000001f 	b	2abc <func_80AED624+0xa8>
    2a40:	00001025 	move	v0,zero
    2a44:	808e0284 	lb	t6,644(a0)
    2a48:	3c0f0000 	lui	t7,0x0
    2a4c:	144e0003 	bne	v0,t6,2a5c <func_80AED624+0x48>
    2a50:	00000000 	nop
    2a54:	50430019 	beql	v0,v1,2abc <func_80AED624+0xa8>
    2a58:	24020001 	li	v0,1
    2a5c:	8def0000 	lw	t7,0(t7)
    2a60:	3c014248 	lui	at,0x4248
    2a64:	44814000 	mtc1	at,$f8
    2a68:	85f81474 	lh	t8,5236(t7)
    2a6c:	c4900084 	lwc1	$f16,132(a0)
    2a70:	44982000 	mtc1	t8,$f4
    2a74:	00000000 	nop
    2a78:	468021a0 	cvt.s.w	$f6,$f4
    2a7c:	46083280 	add.s	$f10,$f6,$f8
    2a80:	4610503c 	c.lt.s	$f10,$f16
    2a84:	00000000 	nop
    2a88:	4502000c 	bc1fl	2abc <func_80AED624+0xa8>
    2a8c:	24020001 	li	v0,1
    2a90:	8c990264 	lw	t9,612(a0)
    2a94:	24020021 	li	v0,33
    2a98:	24080002 	li	t0,2
    2a9c:	10590006 	beq	v0,t9,2ab8 <func_80AED624+0xa4>
    2aa0:	240900ff 	li	t1,255
    2aa4:	44809000 	mtc1	zero,$f18
    2aa8:	ac820264 	sw	v0,612(a0)
    2aac:	ac880268 	sw	t0,616(a0)
    2ab0:	ac8902a8 	sw	t1,680(a0)
    2ab4:	e49202a4 	swc1	$f18,676(a0)
    2ab8:	24020001 	li	v0,1
    2abc:	8fbf0014 	lw	ra,20(sp)
    2ac0:	27bd0018 	addiu	sp,sp,24
    2ac4:	03e00008 	jr	ra
    2ac8:	00000000 	nop

00002acc <func_80AED6DC>:
    2acc:	3c020001 	lui	v0,0x1
    2ad0:	00451021 	addu	v0,v0,a1
    2ad4:	80421cbc 	lb	v0,7356(v0)
    2ad8:	44802000 	mtc1	zero,$f4
    2adc:	a0820285 	sb	v0,645(a0)
    2ae0:	03e00008 	jr	ra
    2ae4:	e4840288 	swc1	$f4,648(a0)

00002ae8 <func_80AED6F8>:
    2ae8:	3c050000 	lui	a1,0x0
    2aec:	24a50000 	addiu	a1,a1,0
    2af0:	94a20f20 	lhu	v0,3872(a1)
    2af4:	3c030001 	lui	v1,0x1
    2af8:	00641821 	addu	v1,v1,a0
    2afc:	304e0080 	andi	t6,v0,0x80
    2b00:	15c00007 	bnez	t6,2b20 <func_80AED6F8+0x38>
    2b04:	00000000 	nop
    2b08:	80631cbc 	lb	v1,7356(v1)
    2b0c:	24010002 	li	at,2
    2b10:	344f0080 	ori	t7,v0,0x80
    2b14:	14610002 	bne	v1,at,2b20 <func_80AED6F8+0x38>
    2b18:	00000000 	nop
    2b1c:	a4af0f20 	sh	t7,3872(a1)
    2b20:	03e00008 	jr	ra
    2b24:	00000000 	nop

00002b28 <func_80AED738>:
    2b28:	27bdffe8 	addiu	sp,sp,-24
    2b2c:	afbf0014 	sw	ra,20(sp)
    2b30:	0c000000 	jal	0 <func_80AEAC10>
    2b34:	afa40018 	sw	a0,24(sp)
    2b38:	10400038 	beqz	v0,2c1c <func_80AED738+0xf4>
    2b3c:	8fa40018 	lw	a0,24(sp)
    2b40:	3c0141a0 	lui	at,0x41a0
    2b44:	44811000 	mtc1	at,$f2
    2b48:	3c013f80 	lui	at,0x3f80
    2b4c:	44813000 	mtc1	at,$f6
    2b50:	c48402a4 	lwc1	$f4,676(a0)
    2b54:	3c01437f 	lui	at,0x437f
    2b58:	46062200 	add.s	$f8,$f4,$f6
    2b5c:	e48802a4 	swc1	$f8,676(a0)
    2b60:	c48002a4 	lwc1	$f0,676(a0)
    2b64:	4602003c 	c.lt.s	$f0,$f2
    2b68:	00000000 	nop
    2b6c:	45000029 	bc1f	2c14 <func_80AED738+0xec>
    2b70:	00000000 	nop
    2b74:	46001281 	sub.s	$f10,$f2,$f0
    2b78:	44818000 	mtc1	at,$f16
    2b7c:	24020001 	li	v0,1
    2b80:	3c014f00 	lui	at,0x4f00
    2b84:	46105482 	mul.s	$f18,$f10,$f16
    2b88:	46029103 	div.s	$f4,$f18,$f2
    2b8c:	444ef800 	cfc1	t6,$31
    2b90:	44c2f800 	ctc1	v0,$31
    2b94:	00000000 	nop
    2b98:	460021a4 	cvt.w.s	$f6,$f4
    2b9c:	4442f800 	cfc1	v0,$31
    2ba0:	00000000 	nop
    2ba4:	30420078 	andi	v0,v0,0x78
    2ba8:	50400013 	beqzl	v0,2bf8 <func_80AED738+0xd0>
    2bac:	44023000 	mfc1	v0,$f6
    2bb0:	44813000 	mtc1	at,$f6
    2bb4:	24020001 	li	v0,1
    2bb8:	46062181 	sub.s	$f6,$f4,$f6
    2bbc:	44c2f800 	ctc1	v0,$31
    2bc0:	00000000 	nop
    2bc4:	460031a4 	cvt.w.s	$f6,$f6
    2bc8:	4442f800 	cfc1	v0,$31
    2bcc:	00000000 	nop
    2bd0:	30420078 	andi	v0,v0,0x78
    2bd4:	14400005 	bnez	v0,2bec <func_80AED738+0xc4>
    2bd8:	00000000 	nop
    2bdc:	44023000 	mfc1	v0,$f6
    2be0:	3c018000 	lui	at,0x8000
    2be4:	10000007 	b	2c04 <func_80AED738+0xdc>
    2be8:	00411025 	or	v0,v0,at
    2bec:	10000005 	b	2c04 <func_80AED738+0xdc>
    2bf0:	2402ffff 	li	v0,-1
    2bf4:	44023000 	mfc1	v0,$f6
    2bf8:	00000000 	nop
    2bfc:	0440fffb 	bltz	v0,2bec <func_80AED738+0xc4>
    2c00:	00000000 	nop
    2c04:	44cef800 	ctc1	t6,$31
    2c08:	ac8202a8 	sw	v0,680(a0)
    2c0c:	10000003 	b	2c1c <func_80AED738+0xf4>
    2c10:	a08200c8 	sb	v0,200(a0)
    2c14:	0c000000 	jal	0 <func_80AEAC10>
    2c18:	00000000 	nop
    2c1c:	8fbf0014 	lw	ra,20(sp)
    2c20:	27bd0018 	addiu	sp,sp,24
    2c24:	03e00008 	jr	ra
    2c28:	00000000 	nop

00002c2c <func_80AED83C>:
    2c2c:	27bdffc8 	addiu	sp,sp,-56
    2c30:	afa40038 	sw	a0,56(sp)
    2c34:	afbf001c 	sw	ra,28(sp)
    2c38:	2484037c 	addiu	a0,a0,892
    2c3c:	240e0064 	li	t6,100
    2c40:	afae0010 	sw	t6,16(sp)
    2c44:	afa40024 	sw	a0,36(sp)
    2c48:	00002825 	move	a1,zero
    2c4c:	24060014 	li	a2,20
    2c50:	0c000000 	jal	0 <func_80AEAC10>
    2c54:	24071838 	li	a3,6200
    2c58:	8fa40024 	lw	a0,36(sp)
    2c5c:	240f0064 	li	t7,100
    2c60:	afaf0010 	sw	t7,16(sp)
    2c64:	00002825 	move	a1,zero
    2c68:	24060014 	li	a2,20
    2c6c:	24071838 	li	a3,6200
    2c70:	0c000000 	jal	0 <func_80AEAC10>
    2c74:	24840002 	addiu	a0,a0,2
    2c78:	8fa40038 	lw	a0,56(sp)
    2c7c:	24180064 	li	t8,100
    2c80:	afb80010 	sw	t8,16(sp)
    2c84:	24840382 	addiu	a0,a0,898
    2c88:	afa40024 	sw	a0,36(sp)
    2c8c:	00002825 	move	a1,zero
    2c90:	24060014 	li	a2,20
    2c94:	0c000000 	jal	0 <func_80AEAC10>
    2c98:	24071838 	li	a3,6200
    2c9c:	8fa40024 	lw	a0,36(sp)
    2ca0:	24190064 	li	t9,100
    2ca4:	afb90010 	sw	t9,16(sp)
    2ca8:	00002825 	move	a1,zero
    2cac:	24060014 	li	a2,20
    2cb0:	24071838 	li	a3,6200
    2cb4:	0c000000 	jal	0 <func_80AEAC10>
    2cb8:	24840002 	addiu	a0,a0,2
    2cbc:	8fbf001c 	lw	ra,28(sp)
    2cc0:	27bd0038 	addiu	sp,sp,56
    2cc4:	03e00008 	jr	ra
    2cc8:	00000000 	nop

00002ccc <func_80AED8DC>:
    2ccc:	27bdffb0 	addiu	sp,sp,-80
    2cd0:	afbf0024 	sw	ra,36(sp)
    2cd4:	afb10020 	sw	s1,32(sp)
    2cd8:	afb0001c 	sw	s0,28(sp)
    2cdc:	848e02ac 	lh	t6,684(a0)
    2ce0:	00808025 	move	s0,a0
    2ce4:	260302ac 	addiu	v1,s0,684
    2ce8:	15c00003 	bnez	t6,2cf8 <func_80AED8DC+0x2c>
    2cec:	2404000a 	li	a0,10
    2cf0:	10000005 	b	2d08 <func_80AED8DC+0x3c>
    2cf4:	00001025 	move	v0,zero
    2cf8:	846f0000 	lh	t7,0(v1)
    2cfc:	25f8ffff 	addiu	t8,t7,-1
    2d00:	a4780000 	sh	t8,0(v1)
    2d04:	84620000 	lh	v0,0(v1)
    2d08:	14400016 	bnez	v0,2d64 <func_80AED8DC+0x98>
    2d0c:	24050019 	li	a1,25
    2d10:	260302ac 	addiu	v1,s0,684
    2d14:	0c000000 	jal	0 <func_80AEAC10>
    2d18:	afa30030 	sw	v1,48(sp)
    2d1c:	8fa30030 	lw	v1,48(sp)
    2d20:	24010005 	li	at,5
    2d24:	24190001 	li	t9,1
    2d28:	a4620000 	sh	v0,0(v1)
    2d2c:	84640000 	lh	a0,0(v1)
    2d30:	0081001a 	div	zero,a0,at
    2d34:	00002010 	mfhi	a0
    2d38:	24010001 	li	at,1
    2d3c:	14800003 	bnez	a0,2d4c <func_80AED8DC+0x80>
    2d40:	00000000 	nop
    2d44:	10000006 	b	2d60 <func_80AED8DC+0x94>
    2d48:	ae1902b0 	sw	t9,688(s0)
    2d4c:	14810003 	bne	a0,at,2d5c <func_80AED8DC+0x90>
    2d50:	24080002 	li	t0,2
    2d54:	10000002 	b	2d60 <func_80AED8DC+0x94>
    2d58:	ae0802b0 	sw	t0,688(s0)
    2d5c:	ae0002b0 	sw	zero,688(s0)
    2d60:	a600029e 	sh	zero,670(s0)
    2d64:	8e0202b0 	lw	v0,688(s0)
    2d68:	2604029e 	addiu	a0,s0,670
    2d6c:	2611037e 	addiu	s1,s0,894
    2d70:	1440001b 	bnez	v0,2de0 <func_80AED8DC+0x114>
    2d74:	24010001 	li	at,1
    2d78:	86250000 	lh	a1,0(s1)
    2d7c:	24090190 	li	t1,400
    2d80:	afa90010 	sw	t1,16(sp)
    2d84:	00052823 	negu	a1,a1
    2d88:	00052c00 	sll	a1,a1,0x10
    2d8c:	00052c03 	sra	a1,a1,0x10
    2d90:	afa4002c 	sw	a0,44(sp)
    2d94:	24060001 	li	a2,1
    2d98:	0c000000 	jal	0 <func_80AEAC10>
    2d9c:	24070190 	li	a3,400
    2da0:	8fa4002c 	lw	a0,44(sp)
    2da4:	00002825 	move	a1,zero
    2da8:	24060003 	li	a2,3
    2dac:	84830000 	lh	v1,0(a0)
    2db0:	02202025 	move	a0,s1
    2db4:	240a0064 	li	t2,100
    2db8:	04600003 	bltz	v1,2dc8 <func_80AED8DC+0xfc>
    2dbc:	00031023 	negu	v0,v1
    2dc0:	10000001 	b	2dc8 <func_80AED8DC+0xfc>
    2dc4:	00601025 	move	v0,v1
    2dc8:	00023c00 	sll	a3,v0,0x10
    2dcc:	00073c03 	sra	a3,a3,0x10
    2dd0:	0c000000 	jal	0 <func_80AEAC10>
    2dd4:	afaa0010 	sw	t2,16(sp)
    2dd8:	10000039 	b	2ec0 <func_80AED8DC+0x1f4>
    2ddc:	8fbf0024 	lw	ra,36(sp)
    2de0:	1441001d 	bne	v0,at,2e58 <func_80AED8DC+0x18c>
    2de4:	2611037e 	addiu	s1,s0,894
    2de8:	2611037e 	addiu	s1,s0,894
    2dec:	862b0000 	lh	t3,0(s1)
    2df0:	240cd556 	li	t4,-10922
    2df4:	240d0190 	li	t5,400
    2df8:	018b2823 	subu	a1,t4,t3
    2dfc:	00052c00 	sll	a1,a1,0x10
    2e00:	00052c03 	sra	a1,a1,0x10
    2e04:	afad0010 	sw	t5,16(sp)
    2e08:	afa4002c 	sw	a0,44(sp)
    2e0c:	24060001 	li	a2,1
    2e10:	0c000000 	jal	0 <func_80AEAC10>
    2e14:	24070190 	li	a3,400
    2e18:	8fa4002c 	lw	a0,44(sp)
    2e1c:	2405d556 	li	a1,-10922
    2e20:	24060003 	li	a2,3
    2e24:	84830000 	lh	v1,0(a0)
    2e28:	02202025 	move	a0,s1
    2e2c:	240e0064 	li	t6,100
    2e30:	04600003 	bltz	v1,2e40 <func_80AED8DC+0x174>
    2e34:	00031023 	negu	v0,v1
    2e38:	10000001 	b	2e40 <func_80AED8DC+0x174>
    2e3c:	00601025 	move	v0,v1
    2e40:	00023c00 	sll	a3,v0,0x10
    2e44:	00073c03 	sra	a3,a3,0x10
    2e48:	0c000000 	jal	0 <func_80AEAC10>
    2e4c:	afae0010 	sw	t6,16(sp)
    2e50:	1000001b 	b	2ec0 <func_80AED8DC+0x1f4>
    2e54:	8fbf0024 	lw	ra,36(sp)
    2e58:	862f0000 	lh	t7,0(s1)
    2e5c:	24182aaa 	li	t8,10922
    2e60:	24190190 	li	t9,400
    2e64:	030f2823 	subu	a1,t8,t7
    2e68:	00052c00 	sll	a1,a1,0x10
    2e6c:	00052c03 	sra	a1,a1,0x10
    2e70:	afb90010 	sw	t9,16(sp)
    2e74:	afa4002c 	sw	a0,44(sp)
    2e78:	24060001 	li	a2,1
    2e7c:	0c000000 	jal	0 <func_80AEAC10>
    2e80:	24070190 	li	a3,400
    2e84:	8fa4002c 	lw	a0,44(sp)
    2e88:	24052aaa 	li	a1,10922
    2e8c:	24060003 	li	a2,3
    2e90:	84830000 	lh	v1,0(a0)
    2e94:	02202025 	move	a0,s1
    2e98:	24080064 	li	t0,100
    2e9c:	04600003 	bltz	v1,2eac <func_80AED8DC+0x1e0>
    2ea0:	00031023 	negu	v0,v1
    2ea4:	10000001 	b	2eac <func_80AED8DC+0x1e0>
    2ea8:	00601025 	move	v0,v1
    2eac:	00023c00 	sll	a3,v0,0x10
    2eb0:	00073c03 	sra	a3,a3,0x10
    2eb4:	0c000000 	jal	0 <func_80AEAC10>
    2eb8:	afa80010 	sw	t0,16(sp)
    2ebc:	8fbf0024 	lw	ra,36(sp)
    2ec0:	8fb0001c 	lw	s0,28(sp)
    2ec4:	8fb10020 	lw	s1,32(sp)
    2ec8:	03e00008 	jr	ra
    2ecc:	27bd0050 	addiu	sp,sp,80

00002ed0 <func_80AEDAE0>:
    2ed0:	27bdffe8 	addiu	sp,sp,-24
    2ed4:	00803025 	move	a2,a0
    2ed8:	afbf0014 	sw	ra,20(sp)
    2edc:	24a407c0 	addiu	a0,a1,1984
    2ee0:	90c5007d 	lbu	a1,125(a2)
    2ee4:	0c000000 	jal	0 <func_80AEAC10>
    2ee8:	afa60018 	sw	a2,24(sp)
    2eec:	10400005 	beqz	v0,2f04 <func_80AEDAE0+0x34>
    2ef0:	8fa60018 	lw	a2,24(sp)
    2ef4:	844e0000 	lh	t6,0(v0)
    2ef8:	2401000a 	li	at,10
    2efc:	55c10005 	bnel	t6,at,2f14 <func_80AEDAE0+0x44>
    2f00:	8fbf0014 	lw	ra,20(sp)
    2f04:	94cf0088 	lhu	t7,136(a2)
    2f08:	31f8ffe6 	andi	t8,t7,0xffe6
    2f0c:	a4d80088 	sh	t8,136(a2)
    2f10:	8fbf0014 	lw	ra,20(sp)
    2f14:	27bd0018 	addiu	sp,sp,24
    2f18:	03e00008 	jr	ra
    2f1c:	00000000 	nop

00002f20 <func_80AEDB30>:
    2f20:	27bdffe8 	addiu	sp,sp,-24
    2f24:	afbf0014 	sw	ra,20(sp)
    2f28:	948e0088 	lhu	t6,136(a0)
    2f2c:	00803025 	move	a2,a0
    2f30:	24a407c0 	addiu	a0,a1,1984
    2f34:	31cf0001 	andi	t7,t6,0x1
    2f38:	51e00069 	beqzl	t7,30e0 <func_80AEDB30+0x1c0>
    2f3c:	94cf0088 	lhu	t7,136(a2)
    2f40:	90c5007d 	lbu	a1,125(a2)
    2f44:	0c000000 	jal	0 <func_80AEAC10>
    2f48:	afa60018 	sw	a2,24(sp)
    2f4c:	8fa60018 	lw	a2,24(sp)
    2f50:	44801000 	mtc1	zero,$f2
    2f54:	24c50060 	addiu	a1,a2,96
    2f58:	c4a40000 	lwc1	$f4,0(a1)
    2f5c:	4602203e 	c.le.s	$f4,$f2
    2f60:	00000000 	nop
    2f64:	4502005e 	bc1fl	30e0 <func_80AEDB30+0x1c0>
    2f68:	94cf0088 	lhu	t7,136(a2)
    2f6c:	10400009 	beqz	v0,2f94 <func_80AEDB30+0x74>
    2f70:	3c040000 	lui	a0,0x0
    2f74:	84580000 	lh	t8,0(v0)
    2f78:	2401000a 	li	at,10
    2f7c:	13010002 	beq	t8,at,2f88 <func_80AEDB30+0x68>
    2f80:	00000000 	nop
    2f84:	e4c20068 	swc1	$f2,104(a2)
    2f88:	3c010000 	lui	at,0x0
    2f8c:	1000001d 	b	3004 <func_80AEDB30+0xe4>
    2f90:	c42c01c4 	lwc1	$f12,452(at)
    2f94:	8c840000 	lw	a0,0(a0)
    2f98:	3c010000 	lui	at,0x0
    2f9c:	c42c01c8 	lwc1	$f12,456(at)
    2fa0:	8499148a 	lh	t9,5258(a0)
    2fa4:	3c014040 	lui	at,0x4040
    2fa8:	44818000 	mtc1	at,$f16
    2fac:	44993000 	mtc1	t9,$f6
    2fb0:	24c30068 	addiu	v1,a2,104
    2fb4:	c4600000 	lwc1	$f0,0(v1)
    2fb8:	46803220 	cvt.s.w	$f8,$f6
    2fbc:	460c4282 	mul.s	$f10,$f8,$f12
    2fc0:	46105480 	add.s	$f18,$f10,$f16
    2fc4:	4600903e 	c.le.s	$f18,$f0
    2fc8:	00000000 	nop
    2fcc:	4502000d 	bc1fl	3004 <func_80AEDB30+0xe4>
    2fd0:	e4620000 	swc1	$f2,0(v1)
    2fd4:	8489147a 	lh	t1,5242(a0)
    2fd8:	3c010000 	lui	at,0x0
    2fdc:	c42a01cc 	lwc1	$f10,460(at)
    2fe0:	44892000 	mtc1	t1,$f4
    2fe4:	00000000 	nop
    2fe8:	468021a0 	cvt.s.w	$f6,$f4
    2fec:	460c3202 	mul.s	$f8,$f6,$f12
    2ff0:	460a4400 	add.s	$f16,$f8,$f10
    2ff4:	46100482 	mul.s	$f18,$f0,$f16
    2ff8:	10000002 	b	3004 <func_80AEDB30+0xe4>
    2ffc:	e4720000 	swc1	$f18,0(v1)
    3000:	e4620000 	swc1	$f2,0(v1)
    3004:	1040000f 	beqz	v0,3044 <func_80AEDB30+0x124>
    3008:	00c02025 	move	a0,a2
    300c:	844a0000 	lh	t2,0(v0)
    3010:	2401000a 	li	at,10
    3014:	51410006 	beql	t2,at,3030 <func_80AEDB30+0x110>
    3018:	3c01bf80 	lui	at,0xbf80
    301c:	e4a20000 	swc1	$f2,0(a1)
    3020:	e4c20070 	swc1	$f2,112(a2)
    3024:	1000002a 	b	30d0 <func_80AEDB30+0x1b0>
    3028:	e4c2006c 	swc1	$f2,108(a2)
    302c:	3c01bf80 	lui	at,0xbf80
    3030:	44813000 	mtc1	at,$f6
    3034:	c4a40000 	lwc1	$f4,0(a1)
    3038:	46062202 	mul.s	$f8,$f4,$f6
    303c:	10000024 	b	30d0 <func_80AEDB30+0x1b0>
    3040:	e4a80000 	swc1	$f8,0(a1)
    3044:	3c0b0000 	lui	t3,0x0
    3048:	8d6b0000 	lw	t3,0(t3)
    304c:	3c010000 	lui	at,0x0
    3050:	c42401d0 	lwc1	$f4,464(at)
    3054:	856c147c 	lh	t4,5244(t3)
    3058:	3c0d0000 	lui	t5,0x0
    305c:	3c010000 	lui	at,0x0
    3060:	448c5000 	mtc1	t4,$f10
    3064:	24c2006c 	addiu	v0,a2,108
    3068:	46805420 	cvt.s.w	$f16,$f10
    306c:	c4aa0000 	lwc1	$f10,0(a1)
    3070:	460c8482 	mul.s	$f18,$f16,$f12
    3074:	46049180 	add.s	$f6,$f18,$f4
    3078:	46003207 	neg.s	$f8,$f6
    307c:	46085402 	mul.s	$f16,$f10,$f8
    3080:	e4b00000 	swc1	$f16,0(a1)
    3084:	8dad0000 	lw	t5,0(t5)
    3088:	c42a01d4 	lwc1	$f10,468(at)
    308c:	c4500000 	lwc1	$f16,0(v0)
    3090:	85ae147c 	lh	t6,5244(t5)
    3094:	448e9000 	mtc1	t6,$f18
    3098:	00000000 	nop
    309c:	46809120 	cvt.s.w	$f4,$f18
    30a0:	46008487 	neg.s	$f18,$f16
    30a4:	460c2182 	mul.s	$f6,$f4,$f12
    30a8:	460a3200 	add.s	$f8,$f6,$f10
    30ac:	c4a60000 	lwc1	$f6,0(a1)
    30b0:	46124102 	mul.s	$f4,$f8,$f18
    30b4:	4604303e 	c.le.s	$f6,$f4
    30b8:	00000000 	nop
    30bc:	45000004 	bc1f	30d0 <func_80AEDB30+0x1b0>
    30c0:	00000000 	nop
    30c4:	e4a20000 	swc1	$f2,0(a1)
    30c8:	e4c20070 	swc1	$f2,112(a2)
    30cc:	e4420000 	swc1	$f2,0(v0)
    30d0:	0c000000 	jal	0 <func_80AEAC10>
    30d4:	afa60018 	sw	a2,24(sp)
    30d8:	8fa60018 	lw	a2,24(sp)
    30dc:	94cf0088 	lhu	t7,136(a2)
    30e0:	44801000 	mtc1	zero,$f2
    30e4:	3c010000 	lui	at,0x0
    30e8:	31f80010 	andi	t8,t7,0x10
    30ec:	13000036 	beqz	t8,31c8 <func_80AEDB30+0x2a8>
    30f0:	c42c01dc 	lwc1	$f12,476(at)
    30f4:	3c080000 	lui	t0,0x0
    30f8:	25080000 	addiu	t0,t0,0
    30fc:	8d040000 	lw	a0,0(t0)
    3100:	3c014040 	lui	at,0x4040
    3104:	44812000 	mtc1	at,$f4
    3108:	8499148a 	lh	t9,5258(a0)
    310c:	c4ca0068 	lwc1	$f10,104(a2)
    3110:	24c50060 	addiu	a1,a2,96
    3114:	44998000 	mtc1	t9,$f16
    3118:	24c30068 	addiu	v1,a2,104
    311c:	46808220 	cvt.s.w	$f8,$f16
    3120:	460c4482 	mul.s	$f18,$f8,$f12
    3124:	46049180 	add.s	$f6,$f18,$f4
    3128:	460a303e 	c.le.s	$f6,$f10
    312c:	00000000 	nop
    3130:	4502000d 	bc1fl	3168 <func_80AEDB30+0x248>
    3134:	e4620000 	swc1	$f2,0(v1)
    3138:	8489147a 	lh	t1,5242(a0)
    313c:	3c010000 	lui	at,0x0
    3140:	c42401e0 	lwc1	$f4,480(at)
    3144:	44898000 	mtc1	t1,$f16
    3148:	c4660000 	lwc1	$f6,0(v1)
    314c:	46808220 	cvt.s.w	$f8,$f16
    3150:	460c4482 	mul.s	$f18,$f8,$f12
    3154:	46049280 	add.s	$f10,$f18,$f4
    3158:	460a3402 	mul.s	$f16,$f6,$f10
    315c:	10000002 	b	3168 <func_80AEDB30+0x248>
    3160:	e4700000 	swc1	$f16,0(v1)
    3164:	e4620000 	swc1	$f2,0(v1)
    3168:	c4a00000 	lwc1	$f0,0(a1)
    316c:	4600103e 	c.le.s	$f2,$f0
    3170:	00000000 	nop
    3174:	45020015 	bc1fl	31cc <func_80AEDB30+0x2ac>
    3178:	94cc0088 	lhu	t4,136(a2)
    317c:	8d0a0000 	lw	t2,0(t0)
    3180:	3c010000 	lui	at,0x0
    3184:	c42601e4 	lwc1	$f6,484(at)
    3188:	854b147c 	lh	t3,5244(t2)
    318c:	00c02025 	move	a0,a2
    3190:	448b4000 	mtc1	t3,$f8
    3194:	00000000 	nop
    3198:	468044a0 	cvt.s.w	$f18,$f8
    319c:	460c9102 	mul.s	$f4,$f18,$f12
    31a0:	46062280 	add.s	$f10,$f4,$f6
    31a4:	46005407 	neg.s	$f16,$f10
    31a8:	46100202 	mul.s	$f8,$f0,$f16
    31ac:	e4a80000 	swc1	$f8,0(a1)
    31b0:	0c000000 	jal	0 <func_80AEAC10>
    31b4:	afa60018 	sw	a2,24(sp)
    31b8:	3c010000 	lui	at,0x0
    31bc:	44801000 	mtc1	zero,$f2
    31c0:	c42c01e8 	lwc1	$f12,488(at)
    31c4:	8fa60018 	lw	a2,24(sp)
    31c8:	94cc0088 	lhu	t4,136(a2)
    31cc:	3c080000 	lui	t0,0x0
    31d0:	25080000 	addiu	t0,t0,0
    31d4:	318d0008 	andi	t5,t4,0x8
    31d8:	51a0003f 	beqzl	t5,32d8 <func_80AEDB30+0x3b8>
    31dc:	8fbf0014 	lw	ra,20(sp)
    31e0:	c4d20068 	lwc1	$f18,104(a2)
    31e4:	46121032 	c.eq.s	$f2,$f18
    31e8:	00000000 	nop
    31ec:	4503003a 	bc1tl	32d8 <func_80AEDB30+0x3b8>
    31f0:	8fbf0014 	lw	ra,20(sp)
    31f4:	84c2007e 	lh	v0,126(a2)
    31f8:	84c30032 	lh	v1,50(a2)
    31fc:	34078000 	li	a3,0x8000
    3200:	00027040 	sll	t6,v0,0x1
    3204:	01c32023 	subu	a0,t6,v1
    3208:	00827823 	subu	t7,a0,v0
    320c:	01e7c021 	addu	t8,t7,a3
    3210:	0018cc00 	sll	t9,t8,0x10
    3214:	00194c03 	sra	t1,t9,0x10
    3218:	05200006 	bltz	t1,3234 <func_80AEDB30+0x314>
    321c:	00872821 	addu	a1,a0,a3
    3220:	00872821 	addu	a1,a0,a3
    3224:	00a21823 	subu	v1,a1,v0
    3228:	00031c00 	sll	v1,v1,0x10
    322c:	10000005 	b	3244 <func_80AEDB30+0x324>
    3230:	00031c03 	sra	v1,v1,0x10
    3234:	00a21823 	subu	v1,a1,v0
    3238:	00031c00 	sll	v1,v1,0x10
    323c:	00031c03 	sra	v1,v1,0x10
    3240:	00031823 	negu	v1,v1
    3244:	28614001 	slti	at,v1,16385
    3248:	50200023 	beqzl	at,32d8 <func_80AEDB30+0x3b8>
    324c:	8fbf0014 	lw	ra,20(sp)
    3250:	8d040000 	lw	a0,0(t0)
    3254:	3c014040 	lui	at,0x4040
    3258:	44818000 	mtc1	at,$f16
    325c:	848a148a 	lh	t2,5258(a0)
    3260:	24c30068 	addiu	v1,a2,104
    3264:	c4600000 	lwc1	$f0,0(v1)
    3268:	448a2000 	mtc1	t2,$f4
    326c:	00000000 	nop
    3270:	468021a0 	cvt.s.w	$f6,$f4
    3274:	460c3282 	mul.s	$f10,$f6,$f12
    3278:	46105200 	add.s	$f8,$f10,$f16
    327c:	4600403e 	c.le.s	$f8,$f0
    3280:	00000000 	nop
    3284:	4502000d 	bc1fl	32bc <func_80AEDB30+0x39c>
    3288:	e4620000 	swc1	$f2,0(v1)
    328c:	848b147e 	lh	t3,5246(a0)
    3290:	3c010000 	lui	at,0x0
    3294:	c42a01ec 	lwc1	$f10,492(at)
    3298:	448b9000 	mtc1	t3,$f18
    329c:	00000000 	nop
    32a0:	46809120 	cvt.s.w	$f4,$f18
    32a4:	460c2182 	mul.s	$f6,$f4,$f12
    32a8:	460a3400 	add.s	$f16,$f6,$f10
    32ac:	46100202 	mul.s	$f8,$f0,$f16
    32b0:	10000002 	b	32bc <func_80AEDB30+0x39c>
    32b4:	e4680000 	swc1	$f8,0(v1)
    32b8:	e4620000 	swc1	$f2,0(v1)
    32bc:	a4c50032 	sh	a1,50(a2)
    32c0:	afa60018 	sw	a2,24(sp)
    32c4:	0c000000 	jal	0 <func_80AEAC10>
    32c8:	00c02025 	move	a0,a2
    32cc:	0c000000 	jal	0 <func_80AEAC10>
    32d0:	8fa40018 	lw	a0,24(sp)
    32d4:	8fbf0014 	lw	ra,20(sp)
    32d8:	27bd0018 	addiu	sp,sp,24
    32dc:	03e00008 	jr	ra
    32e0:	00000000 	nop

000032e4 <func_80AEDEF4>:
    32e4:	27bdffe8 	addiu	sp,sp,-24
    32e8:	00803025 	move	a2,a0
    32ec:	afbf0014 	sw	ra,20(sp)
    32f0:	24a407c0 	addiu	a0,a1,1984
    32f4:	90c5007d 	lbu	a1,125(a2)
    32f8:	0c000000 	jal	0 <func_80AEAC10>
    32fc:	afa60018 	sw	a2,24(sp)
    3300:	10400015 	beqz	v0,3358 <func_80AEDEF4+0x74>
    3304:	8fa60018 	lw	a2,24(sp)
    3308:	844e0000 	lh	t6,0(v0)
    330c:	2401000a 	li	at,10
    3310:	24c20068 	addiu	v0,a2,104
    3314:	15c10010 	bne	t6,at,3358 <func_80AEDEF4+0x74>
    3318:	00000000 	nop
    331c:	c4400000 	lwc1	$f0,0(v0)
    3320:	44802000 	mtc1	zero,$f4
    3324:	3c013f80 	lui	at,0x3f80
    3328:	46002032 	c.eq.s	$f4,$f0
    332c:	00000000 	nop
    3330:	45030007 	bc1tl	3350 <func_80AEDEF4+0x6c>
    3334:	44815000 	mtc1	at,$f10
    3338:	3c010000 	lui	at,0x0
    333c:	c42601f0 	lwc1	$f6,496(at)
    3340:	46060202 	mul.s	$f8,$f0,$f6
    3344:	10000004 	b	3358 <func_80AEDEF4+0x74>
    3348:	e4480000 	swc1	$f8,0(v0)
    334c:	44815000 	mtc1	at,$f10
    3350:	00000000 	nop
    3354:	e44a0000 	swc1	$f10,0(v0)
    3358:	3c030000 	lui	v1,0x0
    335c:	8c630000 	lw	v1,0(v1)
    3360:	3c010000 	lui	at,0x0
    3364:	c42201f4 	lwc1	$f2,500(at)
    3368:	846f148a 	lh	t7,5258(v1)
    336c:	3c014040 	lui	at,0x4040
    3370:	44813000 	mtc1	at,$f6
    3374:	448f8000 	mtc1	t7,$f16
    3378:	24c20068 	addiu	v0,a2,104
    337c:	c4400000 	lwc1	$f0,0(v0)
    3380:	468084a0 	cvt.s.w	$f18,$f16
    3384:	46029102 	mul.s	$f4,$f18,$f2
    3388:	46062200 	add.s	$f8,$f4,$f6
    338c:	4600403e 	c.le.s	$f8,$f0
    3390:	00000000 	nop
    3394:	4502000d 	bc1fl	33cc <func_80AEDEF4+0xe8>
    3398:	44805000 	mtc1	zero,$f10
    339c:	84781480 	lh	t8,5248(v1)
    33a0:	3c010000 	lui	at,0x0
    33a4:	c42401f8 	lwc1	$f4,504(at)
    33a8:	44985000 	mtc1	t8,$f10
    33ac:	00000000 	nop
    33b0:	46805420 	cvt.s.w	$f16,$f10
    33b4:	46028482 	mul.s	$f18,$f16,$f2
    33b8:	46049180 	add.s	$f6,$f18,$f4
    33bc:	46060202 	mul.s	$f8,$f0,$f6
    33c0:	10000004 	b	33d4 <func_80AEDEF4+0xf0>
    33c4:	e4480000 	swc1	$f8,0(v0)
    33c8:	44805000 	mtc1	zero,$f10
    33cc:	00000000 	nop
    33d0:	e44a0000 	swc1	$f10,0(v0)
    33d4:	8fbf0014 	lw	ra,20(sp)
    33d8:	27bd0018 	addiu	sp,sp,24
    33dc:	03e00008 	jr	ra
    33e0:	00000000 	nop

000033e4 <func_80AEDFF4>:
    33e4:	27bdffe8 	addiu	sp,sp,-24
    33e8:	afbf0014 	sw	ra,20(sp)
    33ec:	afa40018 	sw	a0,24(sp)
    33f0:	0c000000 	jal	0 <func_80AEAC10>
    33f4:	afa5001c 	sw	a1,28(sp)
    33f8:	8fa40018 	lw	a0,24(sp)
    33fc:	0c000000 	jal	0 <func_80AEAC10>
    3400:	8fa5001c 	lw	a1,28(sp)
    3404:	0c000000 	jal	0 <func_80AEAC10>
    3408:	8fa40018 	lw	a0,24(sp)
    340c:	8fbf0014 	lw	ra,20(sp)
    3410:	27bd0018 	addiu	sp,sp,24
    3414:	03e00008 	jr	ra
    3418:	00000000 	nop

0000341c <func_80AEE02C>:
    341c:	44800000 	mtc1	zero,$f0
    3420:	00000000 	nop
    3424:	e480005c 	swc1	$f0,92(a0)
    3428:	e4800060 	swc1	$f0,96(a0)
    342c:	e4800064 	swc1	$f0,100(a0)
    3430:	e4800068 	swc1	$f0,104(a0)
    3434:	e480006c 	swc1	$f0,108(a0)
    3438:	03e00008 	jr	ra
    343c:	e4800070 	swc1	$f0,112(a0)

00003440 <func_80AEE050>:
    3440:	27bdffd0 	addiu	sp,sp,-48
    3444:	afbf001c 	sw	ra,28(sp)
    3448:	afb00018 	sw	s0,24(sp)
    344c:	8c820350 	lw	v0,848(a0)
    3450:	00808025 	move	s0,a0
    3454:	24010001 	li	at,1
    3458:	14400049 	bnez	v0,3580 <func_80AEE050+0x140>
    345c:	00000000 	nop
    3460:	44800000 	mtc1	zero,$f0
    3464:	c4820070 	lwc1	$f2,112(a0)
    3468:	3c010000 	lui	at,0x0
    346c:	46020032 	c.eq.s	$f0,$f2
    3470:	00000000 	nop
    3474:	45000017 	bc1f	34d4 <func_80AEE050+0x94>
    3478:	00000000 	nop
    347c:	c4840068 	lwc1	$f4,104(a0)
    3480:	240e0001 	li	t6,1
    3484:	46040032 	c.eq.s	$f0,$f4
    3488:	00000000 	nop
    348c:	45000011 	bc1f	34d4 <func_80AEE050+0x94>
    3490:	00000000 	nop
    3494:	0c000000 	jal	0 <func_80AEAC10>
    3498:	ac8e0350 	sw	t6,848(a0)
    349c:	3c014120 	lui	at,0x4120
    34a0:	44814000 	mtc1	at,$f8
    34a4:	c6060084 	lwc1	$f6,132(s0)
    34a8:	3c013f00 	lui	at,0x3f00
    34ac:	44818000 	mtc1	at,$f16
    34b0:	46083281 	sub.s	$f10,$f6,$f8
    34b4:	c6040028 	lwc1	$f4,40(s0)
    34b8:	a600035c 	sh	zero,860(s0)
    34bc:	46105482 	mul.s	$f18,$f10,$f16
    34c0:	e6120358 	swc1	$f18,856(s0)
    34c4:	c6060358 	lwc1	$f6,856(s0)
    34c8:	46062200 	add.s	$f8,$f4,$f6
    34cc:	1000005c 	b	3640 <func_80AEE050+0x200>
    34d0:	e6080354 	swc1	$f8,852(s0)
    34d4:	c42c01fc 	lwc1	$f12,508(at)
    34d8:	c6100060 	lwc1	$f16,96(s0)
    34dc:	e600006c 	swc1	$f0,108(s0)
    34e0:	460c1282 	mul.s	$f10,$f2,$f12
    34e4:	3c010000 	lui	at,0x0
    34e8:	460c8482 	mul.s	$f18,$f16,$f12
    34ec:	e60a0070 	swc1	$f10,112(s0)
    34f0:	c6040070 	lwc1	$f4,112(s0)
    34f4:	e6120060 	swc1	$f18,96(s0)
    34f8:	c4260200 	lwc1	$f6,512(at)
    34fc:	3c013f00 	lui	at,0x3f00
    3500:	44815000 	mtc1	at,$f10
    3504:	4604303e 	c.le.s	$f6,$f4
    3508:	00000000 	nop
    350c:	45020004 	bc1fl	3520 <func_80AEE050+0xe0>
    3510:	c6080068 	lwc1	$f8,104(s0)
    3514:	e6000070 	swc1	$f0,112(s0)
    3518:	e6000060 	swc1	$f0,96(s0)
    351c:	c6080068 	lwc1	$f8,104(s0)
    3520:	3c010000 	lui	at,0x0
    3524:	460a4402 	mul.s	$f16,$f8,$f10
    3528:	e6100068 	swc1	$f16,104(s0)
    352c:	c6040068 	lwc1	$f4,104(s0)
    3530:	c4320204 	lwc1	$f18,516(at)
    3534:	4612203e 	c.le.s	$f4,$f18
    3538:	00000000 	nop
    353c:	45000002 	bc1f	3548 <func_80AEE050+0x108>
    3540:	00000000 	nop
    3544:	e6000068 	swc1	$f0,104(s0)
    3548:	0c000000 	jal	0 <func_80AEAC10>
    354c:	86040032 	lh	a0,50(s0)
    3550:	c6060068 	lwc1	$f6,104(s0)
    3554:	86040032 	lh	a0,50(s0)
    3558:	46060202 	mul.s	$f8,$f0,$f6
    355c:	0c000000 	jal	0 <func_80AEAC10>
    3560:	e608005c 	swc1	$f8,92(s0)
    3564:	c60a0068 	lwc1	$f10,104(s0)
    3568:	02002025 	move	a0,s0
    356c:	460a0402 	mul.s	$f16,$f0,$f10
    3570:	0c000000 	jal	0 <func_80AEAC10>
    3574:	e6100064 	swc1	$f16,100(s0)
    3578:	10000032 	b	3644 <func_80AEE050+0x204>
    357c:	8fbf001c 	lw	ra,28(sp)
    3580:	14410022 	bne	v0,at,360c <func_80AEE050+0x1cc>
    3584:	3c013f80 	lui	at,0x3f80
    3588:	44819000 	mtc1	at,$f18
    358c:	c6000358 	lwc1	$f0,856(s0)
    3590:	4612003e 	c.le.s	$f0,$f18
    3594:	00000000 	nop
    3598:	45020009 	bc1fl	35c0 <func_80AEE050+0x180>
    359c:	e7a00028 	swc1	$f0,40(sp)
    35a0:	0c000000 	jal	0 <func_80AEAC10>
    35a4:	02002025 	move	a0,s0
    35a8:	44800000 	mtc1	zero,$f0
    35ac:	240f0002 	li	t7,2
    35b0:	ae0f0350 	sw	t7,848(s0)
    35b4:	10000022 	b	3640 <func_80AEE050+0x200>
    35b8:	e6000360 	swc1	$f0,864(s0)
    35bc:	e7a00028 	swc1	$f0,40(sp)
    35c0:	c6040354 	lwc1	$f4,852(s0)
    35c4:	e7a40024 	swc1	$f4,36(sp)
    35c8:	0c000000 	jal	0 <func_80AEAC10>
    35cc:	8604035c 	lh	a0,860(s0)
    35d0:	c7a60028 	lwc1	$f6,40(sp)
    35d4:	c7b00024 	lwc1	$f16,36(sp)
    35d8:	8618035c 	lh	t8,860(s0)
    35dc:	46003207 	neg.s	$f8,$f6
    35e0:	3c010000 	lui	at,0x0
    35e4:	46080282 	mul.s	$f10,$f0,$f8
    35e8:	271903e8 	addiu	t9,t8,1000
    35ec:	a619035c 	sh	t9,860(s0)
    35f0:	c6040358 	lwc1	$f4,856(s0)
    35f4:	46105480 	add.s	$f18,$f10,$f16
    35f8:	e6120028 	swc1	$f18,40(s0)
    35fc:	c4260208 	lwc1	$f6,520(at)
    3600:	46062202 	mul.s	$f8,$f4,$f6
    3604:	1000000e 	b	3640 <func_80AEE050+0x200>
    3608:	e6080358 	swc1	$f8,856(s0)
    360c:	3c013f80 	lui	at,0x3f80
    3610:	44818000 	mtc1	at,$f16
    3614:	c60a0360 	lwc1	$f10,864(s0)
    3618:	44800000 	mtc1	zero,$f0
    361c:	24080003 	li	t0,3
    3620:	46105480 	add.s	$f18,$f10,$f16
    3624:	e6120360 	swc1	$f18,864(s0)
    3628:	c6040360 	lwc1	$f4,864(s0)
    362c:	4604003c 	c.lt.s	$f0,$f4
    3630:	00000000 	nop
    3634:	45020003 	bc1fl	3644 <func_80AEE050+0x204>
    3638:	8fbf001c 	lw	ra,28(sp)
    363c:	ae080350 	sw	t0,848(s0)
    3640:	8fbf001c 	lw	ra,28(sp)
    3644:	8fb00018 	lw	s0,24(sp)
    3648:	27bd0030 	addiu	sp,sp,48
    364c:	03e00008 	jr	ra
    3650:	00000000 	nop

00003654 <func_80AEE264>:
    3654:	27bdffe8 	addiu	sp,sp,-24
    3658:	afbf0014 	sw	ra,20(sp)
    365c:	afa40018 	sw	a0,24(sp)
    3660:	0c000000 	jal	0 <func_80AEAC10>
    3664:	afa5001c 	sw	a1,28(sp)
    3668:	8fa40018 	lw	a0,24(sp)
    366c:	14400019 	bnez	v0,36d4 <func_80AEE264+0x80>
    3670:	8fa5001c 	lw	a1,28(sp)
    3674:	8c8e0004 	lw	t6,4(a0)
    3678:	3c020000 	lui	v0,0x0
    367c:	2419404e 	li	t9,16462
    3680:	35cf0009 	ori	t7,t6,0x9
    3684:	ac8f0004 	sw	t7,4(a0)
    3688:	94420f20 	lhu	v0,3872(v0)
    368c:	30580008 	andi	t8,v0,0x8
    3690:	13000005 	beqz	t8,36a8 <func_80AEE264+0x54>
    3694:	30480004 	andi	t0,v0,0x4
    3698:	0c000000 	jal	0 <func_80AEAC10>
    369c:	a499010e 	sh	t9,270(a0)
    36a0:	1000000d 	b	36d8 <func_80AEE264+0x84>
    36a4:	00001025 	move	v0,zero
    36a8:	11000006 	beqz	t0,36c4 <func_80AEE264+0x70>
    36ac:	240a404c 	li	t2,16460
    36b0:	2409404d 	li	t1,16461
    36b4:	0c000000 	jal	0 <func_80AEAC10>
    36b8:	a489010e 	sh	t1,270(a0)
    36bc:	10000006 	b	36d8 <func_80AEE264+0x84>
    36c0:	00001025 	move	v0,zero
    36c4:	0c000000 	jal	0 <func_80AEAC10>
    36c8:	a48a010e 	sh	t2,270(a0)
    36cc:	10000002 	b	36d8 <func_80AEE264+0x84>
    36d0:	00001025 	move	v0,zero
    36d4:	24020001 	li	v0,1
    36d8:	8fbf0014 	lw	ra,20(sp)
    36dc:	27bd0018 	addiu	sp,sp,24
    36e0:	03e00008 	jr	ra
    36e4:	00000000 	nop

000036e8 <func_80AEE2F8>:
    36e8:	27bdffe8 	addiu	sp,sp,-24
    36ec:	afbf0014 	sw	ra,20(sp)
    36f0:	948e0088 	lhu	t6,136(a0)
    36f4:	00a03025 	move	a2,a1
    36f8:	31cf0001 	andi	t7,t6,0x1
    36fc:	11e00018 	beqz	t7,3760 <func_80AEE2F8+0x78>
    3700:	00000000 	nop
    3704:	9082007d 	lbu	v0,125(a0)
    3708:	24010032 	li	at,50
    370c:	10410014 	beq	v0,at,3760 <func_80AEE2F8+0x78>
    3710:	00402825 	move	a1,v0
    3714:	0c000000 	jal	0 <func_80AEAC10>
    3718:	24c407c0 	addiu	a0,a2,1984
    371c:	10400010 	beqz	v0,3760 <func_80AEE2F8+0x78>
    3720:	00000000 	nop
    3724:	84580000 	lh	t8,0(v0)
    3728:	240100e6 	li	at,230
    372c:	1701000c 	bne	t8,at,3760 <func_80AEE2F8+0x78>
    3730:	00000000 	nop
    3734:	8459001c 	lh	t9,28(v0)
    3738:	3c020000 	lui	v0,0x0
    373c:	24010038 	li	at,56
    3740:	00194203 	sra	t0,t9,0x8
    3744:	3109003f 	andi	t1,t0,0x3f
    3748:	15210005 	bne	t1,at,3760 <func_80AEE2F8+0x78>
    374c:	24420000 	addiu	v0,v0,0
    3750:	944a0f20 	lhu	t2,3872(v0)
    3754:	354b0001 	ori	t3,t2,0x1
    3758:	10000006 	b	3774 <func_80AEE2F8+0x8c>
    375c:	a44b0f20 	sh	t3,3872(v0)
    3760:	3c020000 	lui	v0,0x0
    3764:	24420000 	addiu	v0,v0,0
    3768:	944c0f20 	lhu	t4,3872(v0)
    376c:	318dfffe 	andi	t5,t4,0xfffe
    3770:	a44d0f20 	sh	t5,3872(v0)
    3774:	8fbf0014 	lw	ra,20(sp)
    3778:	27bd0018 	addiu	sp,sp,24
    377c:	03e00008 	jr	ra
    3780:	00000000 	nop

00003784 <func_80AEE394>:
    3784:	27bdffd8 	addiu	sp,sp,-40
    3788:	afbf0014 	sw	ra,20(sp)
    378c:	afa5002c 	sw	a1,44(sp)
    3790:	948e0088 	lhu	t6,136(a0)
    3794:	00803025 	move	a2,a0
    3798:	31cf0001 	andi	t7,t6,0x1
    379c:	51e00032 	beqzl	t7,3868 <func_80AEE394+0xe4>
    37a0:	00001025 	move	v0,zero
    37a4:	9082007d 	lbu	v0,125(a0)
    37a8:	24010032 	li	at,50
    37ac:	8fa4002c 	lw	a0,44(sp)
    37b0:	1041002c 	beq	v0,at,3864 <func_80AEE394+0xe0>
    37b4:	00402825 	move	a1,v0
    37b8:	248407c0 	addiu	a0,a0,1984
    37bc:	0c000000 	jal	0 <func_80AEAC10>
    37c0:	afa60028 	sw	a2,40(sp)
    37c4:	8fa60028 	lw	a2,40(sp)
    37c8:	10400026 	beqz	v0,3864 <func_80AEE394+0xe0>
    37cc:	afa20018 	sw	v0,24(sp)
    37d0:	84580000 	lh	t8,0(v0)
    37d4:	240100c8 	li	at,200
    37d8:	57010023 	bnel	t8,at,3868 <func_80AEE394+0xe4>
    37dc:	00001025 	move	v0,zero
    37e0:	8459001c 	lh	t9,28(v0)
    37e4:	8fa4002c 	lw	a0,44(sp)
    37e8:	5720001f 	bnezl	t9,3868 <func_80AEE394+0xe4>
    37ec:	00001025 	move	v0,zero
    37f0:	0c000000 	jal	0 <func_80AEAC10>
    37f4:	afa60028 	sw	a2,40(sp)
    37f8:	1440001a 	bnez	v0,3864 <func_80AEE394+0xe0>
    37fc:	8fa60028 	lw	a2,40(sp)
    3800:	8fa8002c 	lw	t0,44(sp)
    3804:	3c090001 	lui	t1,0x1
    3808:	00c02025 	move	a0,a2
    380c:	01284821 	addu	t1,t1,t0
    3810:	8d2903d8 	lw	t1,984(t1)
    3814:	55200014 	bnezl	t1,3868 <func_80AEE394+0xe4>
    3818:	00001025 	move	v0,zero
    381c:	0c000000 	jal	0 <func_80AEAC10>
    3820:	afa60028 	sw	a2,40(sp)
    3824:	8fab002c 	lw	t3,44(sp)
    3828:	8fa60028 	lw	a2,40(sp)
    382c:	3c0a0000 	lui	t2,0x0
    3830:	254a0000 	addiu	t2,t2,0
    3834:	240c0001 	li	t4,1
    3838:	3c010000 	lui	at,0x0
    383c:	ad6a1d68 	sw	t2,7528(t3)
    3840:	a02c1414 	sb	t4,5140(at)
    3844:	240d0024 	li	t5,36
    3848:	accd0264 	sw	t5,612(a2)
    384c:	acc00268 	sw	zero,616(a2)
    3850:	8fae0018 	lw	t6,24(sp)
    3854:	24020001 	li	v0,1
    3858:	a0c000c8 	sb	zero,200(a2)
    385c:	10000002 	b	3868 <func_80AEE394+0xe4>
    3860:	acce028c 	sw	t6,652(a2)
    3864:	00001025 	move	v0,zero
    3868:	8fbf0014 	lw	ra,20(sp)
    386c:	27bd0028 	addiu	sp,sp,40
    3870:	03e00008 	jr	ra
    3874:	00000000 	nop

00003878 <func_80AEE488>:
    3878:	27bdffe8 	addiu	sp,sp,-24
    387c:	afbf0014 	sw	ra,20(sp)
    3880:	afa40018 	sw	a0,24(sp)
    3884:	0c000000 	jal	0 <func_80AEAC10>
    3888:	afa5001c 	sw	a1,28(sp)
    388c:	8fa40018 	lw	a0,24(sp)
    3890:	1040000a 	beqz	v0,38bc <func_80AEE488+0x44>
    3894:	8fa5001c 	lw	a1,28(sp)
    3898:	3c020001 	lui	v0,0x1
    389c:	00451021 	addu	v0,v0,a1
    38a0:	80421cbc 	lb	v0,7356(v0)
    38a4:	240e001f 	li	t6,31
    38a8:	ac8e0264 	sw	t6,612(a0)
    38ac:	0c000000 	jal	0 <func_80AEAC10>
    38b0:	a0820286 	sb	v0,646(a0)
    38b4:	10000025 	b	394c <func_80AEE488+0xd4>
    38b8:	8fbf0014 	lw	ra,20(sp)
    38bc:	0c000000 	jal	0 <func_80AEAC10>
    38c0:	afa40018 	sw	a0,24(sp)
    38c4:	14400020 	bnez	v0,3948 <func_80AEE488+0xd0>
    38c8:	8fa40018 	lw	a0,24(sp)
    38cc:	948f0088 	lhu	t7,136(a0)
    38d0:	3c020000 	lui	v0,0x0
    38d4:	24420000 	addiu	v0,v0,0
    38d8:	31f80001 	andi	t8,t7,0x1
    38dc:	5700001b 	bnezl	t8,394c <func_80AEE488+0xd4>
    38e0:	8fbf0014 	lw	ra,20(sp)
    38e4:	8c590000 	lw	t9,0(v0)
    38e8:	3c010000 	lui	at,0x0
    38ec:	c420020c 	lwc1	$f0,524(at)
    38f0:	87281484 	lh	t0,5252(t9)
    38f4:	3c010000 	lui	at,0x0
    38f8:	c42a0210 	lwc1	$f10,528(at)
    38fc:	44882000 	mtc1	t0,$f4
    3900:	3c010000 	lui	at,0x0
    3904:	240b001c 	li	t3,28
    3908:	468021a0 	cvt.s.w	$f6,$f4
    390c:	46003202 	mul.s	$f8,$f6,$f0
    3910:	460a4400 	add.s	$f16,$f8,$f10
    3914:	46008487 	neg.s	$f18,$f16
    3918:	e4920070 	swc1	$f18,112(a0)
    391c:	8c490000 	lw	t1,0(v0)
    3920:	c42a0214 	lwc1	$f10,532(at)
    3924:	852a1482 	lh	t2,5250(t1)
    3928:	ac8b0264 	sw	t3,612(a0)
    392c:	448a2000 	mtc1	t2,$f4
    3930:	00000000 	nop
    3934:	468021a0 	cvt.s.w	$f6,$f4
    3938:	46003202 	mul.s	$f8,$f6,$f0
    393c:	460a4400 	add.s	$f16,$f8,$f10
    3940:	46008487 	neg.s	$f18,$f16
    3944:	e492006c 	swc1	$f18,108(a0)
    3948:	8fbf0014 	lw	ra,20(sp)
    394c:	27bd0018 	addiu	sp,sp,24
    3950:	03e00008 	jr	ra
    3954:	00000000 	nop

00003958 <func_80AEE568>:
    3958:	27bdffe0 	addiu	sp,sp,-32
    395c:	afbf001c 	sw	ra,28(sp)
    3960:	afb00018 	sw	s0,24(sp)
    3964:	00808025 	move	s0,a0
    3968:	0c000000 	jal	0 <func_80AEAC10>
    396c:	afa50024 	sw	a1,36(sp)
    3970:	54400025 	bnezl	v0,3a08 <func_80AEE568+0xb0>
    3974:	8fbf001c 	lw	ra,28(sp)
    3978:	960e0088 	lhu	t6,136(s0)
    397c:	31cf0001 	andi	t7,t6,0x1
    3980:	51e00018 	beqzl	t7,39e4 <func_80AEE568+0x8c>
    3984:	44800000 	mtc1	zero,$f0
    3988:	44800000 	mtc1	zero,$f0
    398c:	c6040068 	lwc1	$f4,104(s0)
    3990:	46040032 	c.eq.s	$f0,$f4
    3994:	00000000 	nop
    3998:	45020012 	bc1fl	39e4 <func_80AEE568+0x8c>
    399c:	44800000 	mtc1	zero,$f0
    39a0:	c6060070 	lwc1	$f6,112(s0)
    39a4:	46060032 	c.eq.s	$f0,$f6
    39a8:	00000000 	nop
    39ac:	4502000d 	bc1fl	39e4 <func_80AEE568+0x8c>
    39b0:	44800000 	mtc1	zero,$f0
    39b4:	0c000000 	jal	0 <func_80AEAC10>
    39b8:	02002025 	move	a0,s0
    39bc:	02002025 	move	a0,s0
    39c0:	0c000000 	jal	0 <func_80AEAC10>
    39c4:	8fa50024 	lw	a1,36(sp)
    39c8:	2418001b 	li	t8,27
    39cc:	ae180264 	sw	t8,612(s0)
    39d0:	0c000000 	jal	0 <func_80AEAC10>
    39d4:	02002025 	move	a0,s0
    39d8:	1000000b 	b	3a08 <func_80AEE568+0xb0>
    39dc:	8fbf001c 	lw	ra,28(sp)
    39e0:	44800000 	mtc1	zero,$f0
    39e4:	c6080084 	lwc1	$f8,132(s0)
    39e8:	2419001d 	li	t9,29
    39ec:	4608003c 	c.lt.s	$f0,$f8
    39f0:	00000000 	nop
    39f4:	45020004 	bc1fl	3a08 <func_80AEE568+0xb0>
    39f8:	8fbf001c 	lw	ra,28(sp)
    39fc:	ae190264 	sw	t9,612(s0)
    3a00:	ae000350 	sw	zero,848(s0)
    3a04:	8fbf001c 	lw	ra,28(sp)
    3a08:	8fb00018 	lw	s0,24(sp)
    3a0c:	27bd0020 	addiu	sp,sp,32
    3a10:	03e00008 	jr	ra
    3a14:	00000000 	nop

00003a18 <func_80AEE628>:
    3a18:	27bdffc8 	addiu	sp,sp,-56
    3a1c:	3c0e0001 	lui	t6,0x1
    3a20:	afbf0024 	sw	ra,36(sp)
    3a24:	afa40038 	sw	a0,56(sp)
    3a28:	01c57021 	addu	t6,t6,a1
    3a2c:	81ce1cbc 	lb	t6,7356(t6)
    3a30:	00a02025 	move	a0,a1
    3a34:	0c000000 	jal	0 <func_80AEAC10>
    3a38:	a3ae002f 	sb	t6,47(sp)
    3a3c:	10400019 	beqz	v0,3aa4 <func_80AEE628+0x8c>
    3a40:	3c040000 	lui	a0,0x0
    3a44:	0c000000 	jal	0 <func_80AEAC10>
    3a48:	24840000 	addiu	a0,a0,0
    3a4c:	44822000 	mtc1	v0,$f4
    3a50:	3c01c100 	lui	at,0xc100
    3a54:	44814000 	mtc1	at,$f8
    3a58:	468021a0 	cvt.s.w	$f6,$f4
    3a5c:	8fa40038 	lw	a0,56(sp)
    3a60:	3c050000 	lui	a1,0x0
    3a64:	24a50000 	addiu	a1,a1,0
    3a68:	3c063f80 	lui	a2,0x3f80
    3a6c:	24070000 	li	a3,0
    3a70:	e7a60010 	swc1	$f6,16(sp)
    3a74:	afa00014 	sw	zero,20(sp)
    3a78:	e7a80018 	swc1	$f8,24(sp)
    3a7c:	0c000000 	jal	0 <func_80AEAC10>
    3a80:	2484014c 	addiu	a0,a0,332
    3a84:	3c020000 	lui	v0,0x0
    3a88:	24420000 	addiu	v0,v0,0
    3a8c:	944f0f20 	lhu	t7,3872(v0)
    3a90:	8fa80038 	lw	t0,56(sp)
    3a94:	2419001f 	li	t9,31
    3a98:	35f80010 	ori	t8,t7,0x10
    3a9c:	a4580f20 	sh	t8,3872(v0)
    3aa0:	ad190264 	sw	t9,612(t0)
    3aa4:	83a9002f 	lb	t1,47(sp)
    3aa8:	8faa0038 	lw	t2,56(sp)
    3aac:	a1490286 	sb	t1,646(t2)
    3ab0:	8fbf0024 	lw	ra,36(sp)
    3ab4:	27bd0038 	addiu	sp,sp,56
    3ab8:	03e00008 	jr	ra
    3abc:	00000000 	nop

00003ac0 <func_80AEE6D0>:
    3ac0:	27bdffc8 	addiu	sp,sp,-56
    3ac4:	3c0f0000 	lui	t7,0x0
    3ac8:	95ef0f20 	lhu	t7,3872(t7)
    3acc:	3c0e0001 	lui	t6,0x1
    3ad0:	afbf002c 	sw	ra,44(sp)
    3ad4:	afb00028 	sw	s0,40(sp)
    3ad8:	01c57021 	addu	t6,t6,a1
    3adc:	81ce1cbc 	lb	t6,7356(t6)
    3ae0:	31f80010 	andi	t8,t7,0x10
    3ae4:	00808025 	move	s0,a0
    3ae8:	1700002a 	bnez	t8,3b94 <func_80AEE6D0+0xd4>
    3aec:	a3ae0033 	sb	t6,51(sp)
    3af0:	00a02025 	move	a0,a1
    3af4:	0c000000 	jal	0 <func_80AEAC10>
    3af8:	afa5003c 	sw	a1,60(sp)
    3afc:	50400026 	beqzl	v0,3b98 <func_80AEE6D0+0xd8>
    3b00:	83ac0033 	lb	t4,51(sp)
    3b04:	0c000000 	jal	0 <func_80AEAC10>
    3b08:	8fa4003c 	lw	a0,60(sp)
    3b0c:	1440001d 	bnez	v0,3b84 <func_80AEE6D0+0xc4>
    3b10:	3c040000 	lui	a0,0x0
    3b14:	0c000000 	jal	0 <func_80AEAC10>
    3b18:	24840000 	addiu	a0,a0,0
    3b1c:	44822000 	mtc1	v0,$f4
    3b20:	3c01c100 	lui	at,0xc100
    3b24:	44814000 	mtc1	at,$f8
    3b28:	468021a0 	cvt.s.w	$f6,$f4
    3b2c:	3c050000 	lui	a1,0x0
    3b30:	24a50000 	addiu	a1,a1,0
    3b34:	2604014c 	addiu	a0,s0,332
    3b38:	3c063f80 	lui	a2,0x3f80
    3b3c:	24070000 	li	a3,0
    3b40:	e7a60010 	swc1	$f6,16(sp)
    3b44:	afa00014 	sw	zero,20(sp)
    3b48:	0c000000 	jal	0 <func_80AEAC10>
    3b4c:	e7a80018 	swc1	$f8,24(sp)
    3b50:	0c000000 	jal	0 <func_80AEAC10>
    3b54:	02002025 	move	a0,s0
    3b58:	44805000 	mtc1	zero,$f10
    3b5c:	24190022 	li	t9,34
    3b60:	ae190264 	sw	t9,612(s0)
    3b64:	e60a026c 	swc1	$f10,620(s0)
    3b68:	8fa9003c 	lw	t1,60(sp)
    3b6c:	3c080000 	lui	t0,0x0
    3b70:	25080000 	addiu	t0,t0,0
    3b74:	240a0001 	li	t2,1
    3b78:	3c010000 	lui	at,0x0
    3b7c:	ad281d68 	sw	t0,7528(t1)
    3b80:	a02a1414 	sb	t2,5140(at)
    3b84:	83ab0033 	lb	t3,51(sp)
    3b88:	24020001 	li	v0,1
    3b8c:	10000004 	b	3ba0 <func_80AEE6D0+0xe0>
    3b90:	a20b0286 	sb	t3,646(s0)
    3b94:	83ac0033 	lb	t4,51(sp)
    3b98:	00001025 	move	v0,zero
    3b9c:	a20c0286 	sb	t4,646(s0)
    3ba0:	8fbf002c 	lw	ra,44(sp)
    3ba4:	8fb00028 	lw	s0,40(sp)
    3ba8:	27bd0038 	addiu	sp,sp,56
    3bac:	03e00008 	jr	ra
    3bb0:	00000000 	nop

00003bb4 <func_80AEE7C4>:
    3bb4:	27bdff88 	addiu	sp,sp,-120
    3bb8:	afbf002c 	sw	ra,44(sp)
    3bbc:	afb00028 	sw	s0,40(sp)
    3bc0:	00808025 	move	s0,a0
    3bc4:	0c000000 	jal	0 <func_80AEAC10>
    3bc8:	afa5007c 	sw	a1,124(sp)
    3bcc:	1040004a 	beqz	v0,3cf8 <func_80AEE7C4+0x144>
    3bd0:	02002025 	move	a0,s0
    3bd4:	3c040000 	lui	a0,0x0
    3bd8:	0c000000 	jal	0 <func_80AEAC10>
    3bdc:	24840000 	addiu	a0,a0,0
    3be0:	44822000 	mtc1	v0,$f4
    3be4:	3c01c100 	lui	at,0xc100
    3be8:	44814000 	mtc1	at,$f8
    3bec:	468021a0 	cvt.s.w	$f6,$f4
    3bf0:	3c050000 	lui	a1,0x0
    3bf4:	24a50000 	addiu	a1,a1,0
    3bf8:	2604014c 	addiu	a0,s0,332
    3bfc:	3c063f80 	lui	a2,0x3f80
    3c00:	24070000 	li	a3,0
    3c04:	e7a60010 	swc1	$f6,16(sp)
    3c08:	afa00014 	sw	zero,20(sp)
    3c0c:	0c000000 	jal	0 <func_80AEAC10>
    3c10:	e7a80018 	swc1	$f8,24(sp)
    3c14:	02002025 	move	a0,s0
    3c18:	0c000000 	jal	0 <func_80AEAC10>
    3c1c:	8fa5007c 	lw	a1,124(sp)
    3c20:	3c020000 	lui	v0,0x0
    3c24:	24420000 	addiu	v0,v0,0
    3c28:	8c4e0000 	lw	t6,0(v0)
    3c2c:	3c010000 	lui	at,0x0
    3c30:	c4200218 	lwc1	$f0,536(at)
    3c34:	85cf1486 	lh	t7,5254(t6)
    3c38:	3c013f80 	lui	at,0x3f80
    3c3c:	44811000 	mtc1	at,$f2
    3c40:	448f8000 	mtc1	t7,$f16
    3c44:	c60a0068 	lwc1	$f10,104(s0)
    3c48:	3c010000 	lui	at,0x0
    3c4c:	468084a0 	cvt.s.w	$f18,$f16
    3c50:	c6100060 	lwc1	$f16,96(s0)
    3c54:	02002025 	move	a0,s0
    3c58:	46009102 	mul.s	$f4,$f18,$f0
    3c5c:	46022180 	add.s	$f6,$f4,$f2
    3c60:	46065202 	mul.s	$f8,$f10,$f6
    3c64:	e6080068 	swc1	$f8,104(s0)
    3c68:	8c580000 	lw	t8,0(v0)
    3c6c:	87191488 	lh	t9,5256(t8)
    3c70:	44999000 	mtc1	t9,$f18
    3c74:	00000000 	nop
    3c78:	46809120 	cvt.s.w	$f4,$f18
    3c7c:	46002282 	mul.s	$f10,$f4,$f0
    3c80:	46025180 	add.s	$f6,$f10,$f2
    3c84:	46068202 	mul.s	$f8,$f16,$f6
    3c88:	e6080060 	swc1	$f8,96(s0)
    3c8c:	8c480000 	lw	t0,0(v0)
    3c90:	c430021c 	lwc1	$f16,540(at)
    3c94:	3c010000 	lui	at,0x0
    3c98:	85091484 	lh	t1,5252(t0)
    3c9c:	44899000 	mtc1	t1,$f18
    3ca0:	00000000 	nop
    3ca4:	46809120 	cvt.s.w	$f4,$f18
    3ca8:	46002282 	mul.s	$f10,$f4,$f0
    3cac:	46105180 	add.s	$f6,$f10,$f16
    3cb0:	46003207 	neg.s	$f8,$f6
    3cb4:	e6080070 	swc1	$f8,112(s0)
    3cb8:	8c4a0000 	lw	t2,0(v0)
    3cbc:	c4300220 	lwc1	$f16,544(at)
    3cc0:	854b1482 	lh	t3,5250(t2)
    3cc4:	448b9000 	mtc1	t3,$f18
    3cc8:	00000000 	nop
    3ccc:	46809120 	cvt.s.w	$f4,$f18
    3cd0:	46002282 	mul.s	$f10,$f4,$f0
    3cd4:	46105180 	add.s	$f6,$f10,$f16
    3cd8:	46003207 	neg.s	$f8,$f6
    3cdc:	0c000000 	jal	0 <func_80AEAC10>
    3ce0:	e608006c 	swc1	$f8,108(s0)
    3ce4:	44809000 	mtc1	zero,$f18
    3ce8:	240c001c 	li	t4,28
    3cec:	ae0c0264 	sw	t4,612(s0)
    3cf0:	1000006c 	b	3ea4 <func_80AEE7C4+0x2f0>
    3cf4:	e6120370 	swc1	$f18,880(s0)
    3cf8:	0c000000 	jal	0 <func_80AEAC10>
    3cfc:	8fa5007c 	lw	a1,124(sp)
    3d00:	10400004 	beqz	v0,3d14 <func_80AEE7C4+0x160>
    3d04:	8fad007c 	lw	t5,124(sp)
    3d08:	44802000 	mtc1	zero,$f4
    3d0c:	10000065 	b	3ea4 <func_80AEE7C4+0x2f0>
    3d10:	e6040370 	swc1	$f4,880(s0)
    3d14:	8da21c44 	lw	v0,7236(t5)
    3d18:	3c013f80 	lui	at,0x3f80
    3d1c:	3c040000 	lui	a0,0x0
    3d20:	8c4e0680 	lw	t6,1664(v0)
    3d24:	000e78c0 	sll	t7,t6,0x3
    3d28:	05e1004c 	bgez	t7,3e5c <func_80AEE7C4+0x2a8>
    3d2c:	00000000 	nop
    3d30:	c60a0370 	lwc1	$f10,880(s0)
    3d34:	44818000 	mtc1	at,$f16
    3d38:	8e180264 	lw	t8,612(s0)
    3d3c:	24010020 	li	at,32
    3d40:	46105180 	add.s	$f6,$f10,$f16
    3d44:	26020370 	addiu	v0,s0,880
    3d48:	13010026 	beq	t8,at,3de4 <func_80AEE7C4+0x230>
    3d4c:	e6060370 	swc1	$f6,880(s0)
    3d50:	26020370 	addiu	v0,s0,880
    3d54:	3c0141f0 	lui	at,0x41f0
    3d58:	44814000 	mtc1	at,$f8
    3d5c:	c4520000 	lwc1	$f18,0(v0)
    3d60:	00002025 	move	a0,zero
    3d64:	24050003 	li	a1,3
    3d68:	4612403c 	c.lt.s	$f8,$f18
    3d6c:	00000000 	nop
    3d70:	4502004d 	bc1fl	3ea8 <func_80AEE7C4+0x2f4>
    3d74:	8fbf002c 	lw	ra,44(sp)
    3d78:	0c000000 	jal	0 <func_80AEAC10>
    3d7c:	afa20034 	sw	v0,52(sp)
    3d80:	14400014 	bnez	v0,3dd4 <func_80AEE7C4+0x220>
    3d84:	3c040000 	lui	a0,0x0
    3d88:	0c000000 	jal	0 <func_80AEAC10>
    3d8c:	24840000 	addiu	a0,a0,0
    3d90:	44822000 	mtc1	v0,$f4
    3d94:	3c01c100 	lui	at,0xc100
    3d98:	44818000 	mtc1	at,$f16
    3d9c:	468022a0 	cvt.s.w	$f10,$f4
    3da0:	3c050000 	lui	a1,0x0
    3da4:	24a50000 	addiu	a1,a1,0
    3da8:	2604014c 	addiu	a0,s0,332
    3dac:	3c063f80 	lui	a2,0x3f80
    3db0:	24070000 	li	a3,0
    3db4:	e7aa0010 	swc1	$f10,16(sp)
    3db8:	afa00014 	sw	zero,20(sp)
    3dbc:	0c000000 	jal	0 <func_80AEAC10>
    3dc0:	e7b00018 	swc1	$f16,24(sp)
    3dc4:	0c000000 	jal	0 <func_80AEAC10>
    3dc8:	02002025 	move	a0,s0
    3dcc:	24190020 	li	t9,32
    3dd0:	ae190264 	sw	t9,612(s0)
    3dd4:	44803000 	mtc1	zero,$f6
    3dd8:	8fa80034 	lw	t0,52(sp)
    3ddc:	10000031 	b	3ea4 <func_80AEE7C4+0x2f0>
    3de0:	e5060000 	swc1	$f6,0(t0)
    3de4:	3c014248 	lui	at,0x4248
    3de8:	44814000 	mtc1	at,$f8
    3dec:	c4520000 	lwc1	$f18,0(v0)
    3df0:	3c040000 	lui	a0,0x0
    3df4:	24840000 	addiu	a0,a0,0
    3df8:	4612403c 	c.lt.s	$f8,$f18
    3dfc:	00000000 	nop
    3e00:	45020029 	bc1fl	3ea8 <func_80AEE7C4+0x2f4>
    3e04:	8fbf002c 	lw	ra,44(sp)
    3e08:	0c000000 	jal	0 <func_80AEAC10>
    3e0c:	afa20034 	sw	v0,52(sp)
    3e10:	44822000 	mtc1	v0,$f4
    3e14:	3c01c100 	lui	at,0xc100
    3e18:	44818000 	mtc1	at,$f16
    3e1c:	468022a0 	cvt.s.w	$f10,$f4
    3e20:	3c050000 	lui	a1,0x0
    3e24:	24a50000 	addiu	a1,a1,0
    3e28:	2604014c 	addiu	a0,s0,332
    3e2c:	3c063f80 	lui	a2,0x3f80
    3e30:	24070000 	li	a3,0
    3e34:	e7aa0010 	swc1	$f10,16(sp)
    3e38:	afa00014 	sw	zero,20(sp)
    3e3c:	0c000000 	jal	0 <func_80AEAC10>
    3e40:	e7b00018 	swc1	$f16,24(sp)
    3e44:	2409001f 	li	t1,31
    3e48:	ae090264 	sw	t1,612(s0)
    3e4c:	8faa0034 	lw	t2,52(sp)
    3e50:	44803000 	mtc1	zero,$f6
    3e54:	10000013 	b	3ea4 <func_80AEE7C4+0x2f0>
    3e58:	e5460000 	swc1	$f6,0(t2)
    3e5c:	0c000000 	jal	0 <func_80AEAC10>
    3e60:	24840000 	addiu	a0,a0,0
    3e64:	44824000 	mtc1	v0,$f8
    3e68:	3c01c100 	lui	at,0xc100
    3e6c:	44812000 	mtc1	at,$f4
    3e70:	468044a0 	cvt.s.w	$f18,$f8
    3e74:	3c050000 	lui	a1,0x0
    3e78:	24a50000 	addiu	a1,a1,0
    3e7c:	2604014c 	addiu	a0,s0,332
    3e80:	3c063f80 	lui	a2,0x3f80
    3e84:	24070000 	li	a3,0
    3e88:	e7b20010 	swc1	$f18,16(sp)
    3e8c:	afa00014 	sw	zero,20(sp)
    3e90:	0c000000 	jal	0 <func_80AEAC10>
    3e94:	e7a40018 	swc1	$f4,24(sp)
    3e98:	44805000 	mtc1	zero,$f10
    3e9c:	00000000 	nop
    3ea0:	e60a0370 	swc1	$f10,880(s0)
    3ea4:	8fbf002c 	lw	ra,44(sp)
    3ea8:	8fb00028 	lw	s0,40(sp)
    3eac:	27bd0078 	addiu	sp,sp,120
    3eb0:	03e00008 	jr	ra
    3eb4:	00000000 	nop

00003eb8 <func_80AEEAC8>:
    3eb8:	27bdffe8 	addiu	sp,sp,-24
    3ebc:	afbf0014 	sw	ra,20(sp)
    3ec0:	afa5001c 	sw	a1,28(sp)
    3ec4:	948e0088 	lhu	t6,136(a0)
    3ec8:	00001025 	move	v0,zero
    3ecc:	31cf0001 	andi	t7,t6,0x1
    3ed0:	11e0000c 	beqz	t7,3f04 <func_80AEEAC8+0x4c>
    3ed4:	00000000 	nop
    3ed8:	0c000000 	jal	0 <func_80AEAC10>
    3edc:	afa40018 	sw	a0,24(sp)
    3ee0:	8fa40018 	lw	a0,24(sp)
    3ee4:	0c000000 	jal	0 <func_80AEAC10>
    3ee8:	8fa5001c 	lw	a1,28(sp)
    3eec:	8fa40018 	lw	a0,24(sp)
    3ef0:	2418001b 	li	t8,27
    3ef4:	0c000000 	jal	0 <func_80AEAC10>
    3ef8:	ac980264 	sw	t8,612(a0)
    3efc:	10000001 	b	3f04 <func_80AEEAC8+0x4c>
    3f00:	24020001 	li	v0,1
    3f04:	8fbf0014 	lw	ra,20(sp)
    3f08:	27bd0018 	addiu	sp,sp,24
    3f0c:	03e00008 	jr	ra
    3f10:	00000000 	nop

00003f14 <func_80AEEB24>:
    3f14:	27bdffe8 	addiu	sp,sp,-24
    3f18:	afbf0014 	sw	ra,20(sp)
    3f1c:	0c000000 	jal	0 <func_80AEAC10>
    3f20:	afa40018 	sw	a0,24(sp)
    3f24:	1440001b 	bnez	v0,3f94 <func_80AEEB24+0x80>
    3f28:	8fa40018 	lw	a0,24(sp)
    3f2c:	8c8e0350 	lw	t6,848(a0)
    3f30:	24010003 	li	at,3
    3f34:	240f001e 	li	t7,30
    3f38:	55c10017 	bnel	t6,at,3f98 <func_80AEEB24+0x84>
    3f3c:	8fbf0014 	lw	ra,20(sp)
    3f40:	ac8f0264 	sw	t7,612(a0)
    3f44:	0c000000 	jal	0 <func_80AEAC10>
    3f48:	afa40018 	sw	a0,24(sp)
    3f4c:	3c010000 	lui	at,0x0
    3f50:	8fa40018 	lw	a0,24(sp)
    3f54:	c4240224 	lwc1	$f4,548(at)
    3f58:	3c180000 	lui	t8,0x0
    3f5c:	3c010000 	lui	at,0x0
    3f60:	e484006c 	swc1	$f4,108(a0)
    3f64:	8f180000 	lw	t8,0(t8)
    3f68:	c42a0228 	lwc1	$f10,552(at)
    3f6c:	3c010000 	lui	at,0x0
    3f70:	87191478 	lh	t9,5240(t8)
    3f74:	c432022c 	lwc1	$f18,556(at)
    3f78:	44993000 	mtc1	t9,$f6
    3f7c:	00000000 	nop
    3f80:	46803220 	cvt.s.w	$f8,$f6
    3f84:	460a4402 	mul.s	$f16,$f8,$f10
    3f88:	46128100 	add.s	$f4,$f16,$f18
    3f8c:	46002187 	neg.s	$f6,$f4
    3f90:	e4860070 	swc1	$f6,112(a0)
    3f94:	8fbf0014 	lw	ra,20(sp)
    3f98:	27bd0018 	addiu	sp,sp,24
    3f9c:	03e00008 	jr	ra
    3fa0:	00000000 	nop

00003fa4 <func_80AEEBB4>:
    3fa4:	27bdffe8 	addiu	sp,sp,-24
    3fa8:	afbf0014 	sw	ra,20(sp)
    3fac:	0c000000 	jal	0 <func_80AEAC10>
    3fb0:	00000000 	nop
    3fb4:	8fbf0014 	lw	ra,20(sp)
    3fb8:	27bd0018 	addiu	sp,sp,24
    3fbc:	03e00008 	jr	ra
    3fc0:	00000000 	nop

00003fc4 <func_80AEEBD4>:
    3fc4:	27bdffe0 	addiu	sp,sp,-32
    3fc8:	afbf001c 	sw	ra,28(sp)
    3fcc:	afb10018 	sw	s1,24(sp)
    3fd0:	afb00014 	sw	s0,20(sp)
    3fd4:	00808025 	move	s0,a0
    3fd8:	0c000000 	jal	0 <func_80AEAC10>
    3fdc:	00a08825 	move	s1,a1
    3fe0:	02002025 	move	a0,s0
    3fe4:	0c000000 	jal	0 <func_80AEAC10>
    3fe8:	02202825 	move	a1,s1
    3fec:	02002025 	move	a0,s0
    3ff0:	0c000000 	jal	0 <func_80AEAC10>
    3ff4:	02202825 	move	a1,s1
    3ff8:	0c000000 	jal	0 <func_80AEAC10>
    3ffc:	02002025 	move	a0,s0
    4000:	0c000000 	jal	0 <func_80AEAC10>
    4004:	02002025 	move	a0,s0
    4008:	02002025 	move	a0,s0
    400c:	0c000000 	jal	0 <func_80AEAC10>
    4010:	02202825 	move	a1,s1
    4014:	02002025 	move	a0,s0
    4018:	0c000000 	jal	0 <func_80AEAC10>
    401c:	02202825 	move	a1,s1
    4020:	02002025 	move	a0,s0
    4024:	0c000000 	jal	0 <func_80AEAC10>
    4028:	02202825 	move	a1,s1
    402c:	02002025 	move	a0,s0
    4030:	0c000000 	jal	0 <func_80AEAC10>
    4034:	02202825 	move	a1,s1
    4038:	8fbf001c 	lw	ra,28(sp)
    403c:	8fb00014 	lw	s0,20(sp)
    4040:	8fb10018 	lw	s1,24(sp)
    4044:	03e00008 	jr	ra
    4048:	27bd0020 	addiu	sp,sp,32

0000404c <func_80AEEC5C>:
    404c:	27bdffe0 	addiu	sp,sp,-32
    4050:	afbf001c 	sw	ra,28(sp)
    4054:	afb10018 	sw	s1,24(sp)
    4058:	afb00014 	sw	s0,20(sp)
    405c:	00808025 	move	s0,a0
    4060:	0c000000 	jal	0 <func_80AEAC10>
    4064:	00a08825 	move	s1,a1
    4068:	02002025 	move	a0,s0
    406c:	0c000000 	jal	0 <func_80AEAC10>
    4070:	02202825 	move	a1,s1
    4074:	02002025 	move	a0,s0
    4078:	0c000000 	jal	0 <func_80AEAC10>
    407c:	02202825 	move	a1,s1
    4080:	02002025 	move	a0,s0
    4084:	0c000000 	jal	0 <func_80AEAC10>
    4088:	02202825 	move	a1,s1
    408c:	02002025 	move	a0,s0
    4090:	0c000000 	jal	0 <func_80AEAC10>
    4094:	02202825 	move	a1,s1
    4098:	0c000000 	jal	0 <func_80AEAC10>
    409c:	02002025 	move	a0,s0
    40a0:	0c000000 	jal	0 <func_80AEAC10>
    40a4:	02002025 	move	a0,s0
    40a8:	02002025 	move	a0,s0
    40ac:	0c000000 	jal	0 <func_80AEAC10>
    40b0:	02202825 	move	a1,s1
    40b4:	02002025 	move	a0,s0
    40b8:	0c000000 	jal	0 <func_80AEAC10>
    40bc:	02202825 	move	a1,s1
    40c0:	02002025 	move	a0,s0
    40c4:	0c000000 	jal	0 <func_80AEAC10>
    40c8:	02202825 	move	a1,s1
    40cc:	8fbf001c 	lw	ra,28(sp)
    40d0:	8fb00014 	lw	s0,20(sp)
    40d4:	8fb10018 	lw	s1,24(sp)
    40d8:	03e00008 	jr	ra
    40dc:	27bd0020 	addiu	sp,sp,32

000040e0 <func_80AEECF0>:
    40e0:	27bdffe0 	addiu	sp,sp,-32
    40e4:	afbf001c 	sw	ra,28(sp)
    40e8:	afb00018 	sw	s0,24(sp)
    40ec:	00808025 	move	s0,a0
    40f0:	0c000000 	jal	0 <func_80AEAC10>
    40f4:	afa50024 	sw	a1,36(sp)
    40f8:	02002025 	move	a0,s0
    40fc:	0c000000 	jal	0 <func_80AEAC10>
    4100:	8fa50024 	lw	a1,36(sp)
    4104:	0c000000 	jal	0 <func_80AEAC10>
    4108:	02002025 	move	a0,s0
    410c:	0c000000 	jal	0 <func_80AEAC10>
    4110:	02002025 	move	a0,s0
    4114:	0c000000 	jal	0 <func_80AEAC10>
    4118:	02002025 	move	a0,s0
    411c:	02002025 	move	a0,s0
    4120:	0c000000 	jal	0 <func_80AEAC10>
    4124:	8fa50024 	lw	a1,36(sp)
    4128:	02002025 	move	a0,s0
    412c:	0c000000 	jal	0 <func_80AEAC10>
    4130:	8fa50024 	lw	a1,36(sp)
    4134:	8fbf001c 	lw	ra,28(sp)
    4138:	8fb00018 	lw	s0,24(sp)
    413c:	27bd0020 	addiu	sp,sp,32
    4140:	03e00008 	jr	ra
    4144:	00000000 	nop

00004148 <func_80AEED58>:
    4148:	27bdffe0 	addiu	sp,sp,-32
    414c:	afbf001c 	sw	ra,28(sp)
    4150:	afb00018 	sw	s0,24(sp)
    4154:	00808025 	move	s0,a0
    4158:	0c000000 	jal	0 <func_80AEAC10>
    415c:	afa50024 	sw	a1,36(sp)
    4160:	02002025 	move	a0,s0
    4164:	0c000000 	jal	0 <func_80AEAC10>
    4168:	8fa50024 	lw	a1,36(sp)
    416c:	0c000000 	jal	0 <func_80AEAC10>
    4170:	02002025 	move	a0,s0
    4174:	0c000000 	jal	0 <func_80AEAC10>
    4178:	02002025 	move	a0,s0
    417c:	0c000000 	jal	0 <func_80AEAC10>
    4180:	02002025 	move	a0,s0
    4184:	02002025 	move	a0,s0
    4188:	0c000000 	jal	0 <func_80AEAC10>
    418c:	8fa50024 	lw	a1,36(sp)
    4190:	02002025 	move	a0,s0
    4194:	0c000000 	jal	0 <func_80AEAC10>
    4198:	8fa50024 	lw	a1,36(sp)
    419c:	02002025 	move	a0,s0
    41a0:	0c000000 	jal	0 <func_80AEAC10>
    41a4:	8fa50024 	lw	a1,36(sp)
    41a8:	8fbf001c 	lw	ra,28(sp)
    41ac:	8fb00018 	lw	s0,24(sp)
    41b0:	27bd0020 	addiu	sp,sp,32
    41b4:	03e00008 	jr	ra
    41b8:	00000000 	nop

000041bc <func_80AEEDCC>:
    41bc:	27bdffe0 	addiu	sp,sp,-32
    41c0:	afbf001c 	sw	ra,28(sp)
    41c4:	afb00018 	sw	s0,24(sp)
    41c8:	00808025 	move	s0,a0
    41cc:	0c000000 	jal	0 <func_80AEAC10>
    41d0:	afa50024 	sw	a1,36(sp)
    41d4:	0c000000 	jal	0 <func_80AEAC10>
    41d8:	02002025 	move	a0,s0
    41dc:	02002025 	move	a0,s0
    41e0:	0c000000 	jal	0 <func_80AEAC10>
    41e4:	8fa50024 	lw	a1,36(sp)
    41e8:	02002025 	move	a0,s0
    41ec:	0c000000 	jal	0 <func_80AEAC10>
    41f0:	8fa50024 	lw	a1,36(sp)
    41f4:	0c000000 	jal	0 <func_80AEAC10>
    41f8:	02002025 	move	a0,s0
    41fc:	0c000000 	jal	0 <func_80AEAC10>
    4200:	8fa40024 	lw	a0,36(sp)
    4204:	02002025 	move	a0,s0
    4208:	0c000000 	jal	0 <func_80AEAC10>
    420c:	8fa50024 	lw	a1,36(sp)
    4210:	8fbf001c 	lw	ra,28(sp)
    4214:	8fb00018 	lw	s0,24(sp)
    4218:	27bd0020 	addiu	sp,sp,32
    421c:	03e00008 	jr	ra
    4220:	00000000 	nop

00004224 <func_80AEEE34>:
    4224:	27bdffe0 	addiu	sp,sp,-32
    4228:	afbf001c 	sw	ra,28(sp)
    422c:	afb00018 	sw	s0,24(sp)
    4230:	00808025 	move	s0,a0
    4234:	0c000000 	jal	0 <func_80AEAC10>
    4238:	afa50024 	sw	a1,36(sp)
    423c:	0c000000 	jal	0 <func_80AEAC10>
    4240:	02002025 	move	a0,s0
    4244:	02002025 	move	a0,s0
    4248:	0c000000 	jal	0 <func_80AEAC10>
    424c:	8fa50024 	lw	a1,36(sp)
    4250:	02002025 	move	a0,s0
    4254:	0c000000 	jal	0 <func_80AEAC10>
    4258:	8fa50024 	lw	a1,36(sp)
    425c:	0c000000 	jal	0 <func_80AEAC10>
    4260:	02002025 	move	a0,s0
    4264:	0c000000 	jal	0 <func_80AEAC10>
    4268:	8fa40024 	lw	a0,36(sp)
    426c:	02002025 	move	a0,s0
    4270:	0c000000 	jal	0 <func_80AEAC10>
    4274:	8fa50024 	lw	a1,36(sp)
    4278:	8fbf001c 	lw	ra,28(sp)
    427c:	8fb00018 	lw	s0,24(sp)
    4280:	27bd0020 	addiu	sp,sp,32
    4284:	03e00008 	jr	ra
    4288:	00000000 	nop

0000428c <func_80AEEE9C>:
    428c:	27bdffe0 	addiu	sp,sp,-32
    4290:	afbf001c 	sw	ra,28(sp)
    4294:	afb00018 	sw	s0,24(sp)
    4298:	00808025 	move	s0,a0
    429c:	0c000000 	jal	0 <func_80AEAC10>
    42a0:	afa50024 	sw	a1,36(sp)
    42a4:	02002025 	move	a0,s0
    42a8:	0c000000 	jal	0 <func_80AEAC10>
    42ac:	8fa50024 	lw	a1,36(sp)
    42b0:	02002025 	move	a0,s0
    42b4:	0c000000 	jal	0 <func_80AEAC10>
    42b8:	8fa50024 	lw	a1,36(sp)
    42bc:	0c000000 	jal	0 <func_80AEAC10>
    42c0:	02002025 	move	a0,s0
    42c4:	0c000000 	jal	0 <func_80AEAC10>
    42c8:	02002025 	move	a0,s0
    42cc:	02002025 	move	a0,s0
    42d0:	0c000000 	jal	0 <func_80AEAC10>
    42d4:	8fa50024 	lw	a1,36(sp)
    42d8:	02002025 	move	a0,s0
    42dc:	0c000000 	jal	0 <func_80AEAC10>
    42e0:	8fa50024 	lw	a1,36(sp)
    42e4:	8fbf001c 	lw	ra,28(sp)
    42e8:	8fb00018 	lw	s0,24(sp)
    42ec:	27bd0020 	addiu	sp,sp,32
    42f0:	03e00008 	jr	ra
    42f4:	00000000 	nop

000042f8 <func_80AEEF08>:
    42f8:	27bdffe0 	addiu	sp,sp,-32
    42fc:	afbf001c 	sw	ra,28(sp)
    4300:	afb00018 	sw	s0,24(sp)
    4304:	00808025 	move	s0,a0
    4308:	0c000000 	jal	0 <func_80AEAC10>
    430c:	afa50024 	sw	a1,36(sp)
    4310:	0c000000 	jal	0 <func_80AEAC10>
    4314:	02002025 	move	a0,s0
    4318:	02002025 	move	a0,s0
    431c:	0c000000 	jal	0 <func_80AEAC10>
    4320:	8fa50024 	lw	a1,36(sp)
    4324:	0c000000 	jal	0 <func_80AEAC10>
    4328:	02002025 	move	a0,s0
    432c:	02002025 	move	a0,s0
    4330:	0c000000 	jal	0 <func_80AEAC10>
    4334:	8fa50024 	lw	a1,36(sp)
    4338:	8fbf001c 	lw	ra,28(sp)
    433c:	8fb00018 	lw	s0,24(sp)
    4340:	27bd0020 	addiu	sp,sp,32
    4344:	03e00008 	jr	ra
    4348:	00000000 	nop

0000434c <func_80AEEF5C>:
    434c:	afa40000 	sw	a0,0(sp)
    4350:	03e00008 	jr	ra
    4354:	afa50004 	sw	a1,4(sp)

00004358 <func_80AEEF68>:
    4358:	27bdffe8 	addiu	sp,sp,-24
    435c:	afbf0014 	sw	ra,20(sp)
    4360:	afa5001c 	sw	a1,28(sp)
    4364:	8ca21c44 	lw	v0,7236(a1)
    4368:	3c030000 	lui	v1,0x0
    436c:	24630000 	addiu	v1,v1,0
    4370:	8c580024 	lw	t8,36(v0)
    4374:	3c014040 	lui	at,0x4040
    4378:	44814000 	mtc1	at,$f8
    437c:	ac98038c 	sw	t8,908(a0)
    4380:	8c4f0028 	lw	t7,40(v0)
    4384:	24850374 	addiu	a1,a0,884
    4388:	24070002 	li	a3,2
    438c:	ac8f0390 	sw	t7,912(a0)
    4390:	8c58002c 	lw	t8,44(v0)
    4394:	ac980394 	sw	t8,916(a0)
    4398:	8c790000 	lw	t9,0(v1)
    439c:	87281474 	lh	t0,5236(t9)
    43a0:	44882000 	mtc1	t0,$f4
    43a4:	00000000 	nop
    43a8:	468021a0 	cvt.s.w	$f6,$f4
    43ac:	46083281 	sub.s	$f10,$f6,$f8
    43b0:	e48a0388 	swc1	$f10,904(a0)
    43b4:	8c690000 	lw	t1,0(v1)
    43b8:	85261476 	lh	a2,5238(t1)
    43bc:	24c6000c 	addiu	a2,a2,12
    43c0:	00063400 	sll	a2,a2,0x10
    43c4:	0c000000 	jal	0 <func_80AEAC10>
    43c8:	00063403 	sra	a2,a2,0x10
    43cc:	8fbf0014 	lw	ra,20(sp)
    43d0:	27bd0018 	addiu	sp,sp,24
    43d4:	03e00008 	jr	ra
    43d8:	00000000 	nop

000043dc <func_80AEEFEC>:
    43dc:	27bdffe8 	addiu	sp,sp,-24
    43e0:	afbf0014 	sw	ra,20(sp)
    43e4:	afa5001c 	sw	a1,28(sp)
    43e8:	8ca21c44 	lw	v0,7236(a1)
    43ec:	3c030000 	lui	v1,0x0
    43f0:	24630000 	addiu	v1,v1,0
    43f4:	8c580024 	lw	t8,36(v0)
    43f8:	3c014040 	lui	at,0x4040
    43fc:	44814000 	mtc1	at,$f8
    4400:	ac98038c 	sw	t8,908(a0)
    4404:	8c4f0028 	lw	t7,40(v0)
    4408:	24850374 	addiu	a1,a0,884
    440c:	24070004 	li	a3,4
    4410:	ac8f0390 	sw	t7,912(a0)
    4414:	8c58002c 	lw	t8,44(v0)
    4418:	ac980394 	sw	t8,916(a0)
    441c:	8c790000 	lw	t9,0(v1)
    4420:	87281474 	lh	t0,5236(t9)
    4424:	44882000 	mtc1	t0,$f4
    4428:	00000000 	nop
    442c:	468021a0 	cvt.s.w	$f6,$f4
    4430:	46083281 	sub.s	$f10,$f6,$f8
    4434:	e48a0388 	swc1	$f10,904(a0)
    4438:	8c690000 	lw	t1,0(v1)
    443c:	85261476 	lh	a2,5238(t1)
    4440:	afa40018 	sw	a0,24(sp)
    4444:	24c6000c 	addiu	a2,a2,12
    4448:	00063400 	sll	a2,a2,0x10
    444c:	0c000000 	jal	0 <func_80AEAC10>
    4450:	00063403 	sra	a2,a2,0x10
    4454:	8fa40018 	lw	a0,24(sp)
    4458:	848a00b6 	lh	t2,182(a0)
    445c:	a48a0032 	sh	t2,50(a0)
    4460:	8fbf0014 	lw	ra,20(sp)
    4464:	27bd0018 	addiu	sp,sp,24
    4468:	03e00008 	jr	ra
    446c:	00000000 	nop

00004470 <func_80AEF080>:
    4470:	27bdffe8 	addiu	sp,sp,-24
    4474:	afbf0014 	sw	ra,20(sp)
    4478:	afa40018 	sw	a0,24(sp)
    447c:	2484014c 	addiu	a0,a0,332
    4480:	0c000000 	jal	0 <func_80AEAC10>
    4484:	3c054130 	lui	a1,0x4130
    4488:	10400004 	beqz	v0,449c <func_80AEF080+0x2c>
    448c:	8fa40018 	lw	a0,24(sp)
    4490:	248400e4 	addiu	a0,a0,228
    4494:	0c000000 	jal	0 <func_80AEAC10>
    4498:	240528ac 	li	a1,10412
    449c:	8fbf0014 	lw	ra,20(sp)
    44a0:	27bd0018 	addiu	sp,sp,24
    44a4:	03e00008 	jr	ra
    44a8:	00000000 	nop

000044ac <func_80AEF0BC>:
    44ac:	3c0e0000 	lui	t6,0x0
    44b0:	95ce0f20 	lhu	t6,3872(t6)
    44b4:	27bdffd8 	addiu	sp,sp,-40
    44b8:	afbf0024 	sw	ra,36(sp)
    44bc:	31cf0004 	andi	t7,t6,0x4
    44c0:	afa40028 	sw	a0,40(sp)
    44c4:	11e00021 	beqz	t7,454c <func_80AEF0BC+0xa0>
    44c8:	afa5002c 	sw	a1,44(sp)
    44cc:	3c040000 	lui	a0,0x0
    44d0:	0c000000 	jal	0 <func_80AEAC10>
    44d4:	24840000 	addiu	a0,a0,0
    44d8:	44822000 	mtc1	v0,$f4
    44dc:	3c01c100 	lui	at,0xc100
    44e0:	8fa30028 	lw	v1,40(sp)
    44e4:	468021a0 	cvt.s.w	$f6,$f4
    44e8:	44814000 	mtc1	at,$f8
    44ec:	3c050000 	lui	a1,0x0
    44f0:	24180002 	li	t8,2
    44f4:	afb80014 	sw	t8,20(sp)
    44f8:	24a50000 	addiu	a1,a1,0
    44fc:	e7a60010 	swc1	$f6,16(sp)
    4500:	3c063f80 	lui	a2,0x3f80
    4504:	24070000 	li	a3,0
    4508:	2464014c 	addiu	a0,v1,332
    450c:	0c000000 	jal	0 <func_80AEAC10>
    4510:	e7a80018 	swc1	$f8,24(sp)
    4514:	8fa8002c 	lw	t0,44(sp)
    4518:	8fa30028 	lw	v1,40(sp)
    451c:	3c010001 	lui	at,0x1
    4520:	24190037 	li	t9,55
    4524:	00280821 	addu	at,at,t0
    4528:	a03903dc 	sb	t9,988(at)
    452c:	8c6a0004 	lw	t2,4(v1)
    4530:	2401fff6 	li	at,-10
    4534:	2409001a 	li	t1,26
    4538:	01415824 	and	t3,t2,at
    453c:	24020001 	li	v0,1
    4540:	ac690264 	sw	t1,612(v1)
    4544:	10000002 	b	4550 <func_80AEF0BC+0xa4>
    4548:	ac6b0004 	sw	t3,4(v1)
    454c:	00001025 	move	v0,zero
    4550:	8fbf0024 	lw	ra,36(sp)
    4554:	27bd0028 	addiu	sp,sp,40
    4558:	03e00008 	jr	ra
    455c:	00000000 	nop

00004560 <func_80AEF170>:
    4560:	10c00003 	beqz	a2,4570 <func_80AEF170+0x10>
    4564:	afa50004 	sw	a1,4(sp)
    4568:	240e0019 	li	t6,25
    456c:	ac8e0264 	sw	t6,612(a0)
    4570:	03e00008 	jr	ra
    4574:	00000000 	nop

00004578 <func_80AEF188>:
    4578:	27bdffe8 	addiu	sp,sp,-24
    457c:	afbf0014 	sw	ra,20(sp)
    4580:	afa40018 	sw	a0,24(sp)
    4584:	afa5001c 	sw	a1,28(sp)
    4588:	0c000000 	jal	0 <func_80AEAC10>
    458c:	00a02025 	move	a0,a1
    4590:	1040000f 	beqz	v0,45d0 <func_80AEF188+0x58>
    4594:	8fa40018 	lw	a0,24(sp)
    4598:	0c000000 	jal	0 <func_80AEAC10>
    459c:	8fa5001c 	lw	a1,28(sp)
    45a0:	5440000c 	bnezl	v0,45d4 <func_80AEF188+0x5c>
    45a4:	8fbf0014 	lw	ra,20(sp)
    45a8:	0c000000 	jal	0 <func_80AEAC10>
    45ac:	8fa4001c 	lw	a0,28(sp)
    45b0:	3c020000 	lui	v0,0x0
    45b4:	24420000 	addiu	v0,v0,0
    45b8:	944e0f20 	lhu	t6,3872(v0)
    45bc:	8fb90018 	lw	t9,24(sp)
    45c0:	24180018 	li	t8,24
    45c4:	35cf0004 	ori	t7,t6,0x4
    45c8:	a44f0f20 	sh	t7,3872(v0)
    45cc:	af380264 	sw	t8,612(t9)
    45d0:	8fbf0014 	lw	ra,20(sp)
    45d4:	27bd0018 	addiu	sp,sp,24
    45d8:	03e00008 	jr	ra
    45dc:	00000000 	nop

000045e0 <func_80AEF1F0>:
    45e0:	27bdffd0 	addiu	sp,sp,-48
    45e4:	afb00028 	sw	s0,40(sp)
    45e8:	00808025 	move	s0,a0
    45ec:	afbf002c 	sw	ra,44(sp)
    45f0:	10c00021 	beqz	a2,4678 <func_80AEF1F0+0x98>
    45f4:	afa50034 	sw	a1,52(sp)
    45f8:	3c040000 	lui	a0,0x0
    45fc:	0c000000 	jal	0 <func_80AEAC10>
    4600:	24840000 	addiu	a0,a0,0
    4604:	44822000 	mtc1	v0,$f4
    4608:	44800000 	mtc1	zero,$f0
    460c:	3c050000 	lui	a1,0x0
    4610:	468021a0 	cvt.s.w	$f6,$f4
    4614:	44070000 	mfc1	a3,$f0
    4618:	24a50000 	addiu	a1,a1,0
    461c:	2604014c 	addiu	a0,s0,332
    4620:	3c063f80 	lui	a2,0x3f80
    4624:	afa00014 	sw	zero,20(sp)
    4628:	e7a60010 	swc1	$f6,16(sp)
    462c:	0c000000 	jal	0 <func_80AEAC10>
    4630:	e7a00018 	swc1	$f0,24(sp)
    4634:	0c000000 	jal	0 <func_80AEAC10>
    4638:	8fa40034 	lw	a0,52(sp)
    463c:	3c020000 	lui	v0,0x0
    4640:	24420000 	addiu	v0,v0,0
    4644:	944e0f20 	lhu	t6,3872(v0)
    4648:	02002025 	move	a0,s0
    464c:	8fa50034 	lw	a1,52(sp)
    4650:	35cf0008 	ori	t7,t6,0x8
    4654:	0c000000 	jal	0 <func_80AEAC10>
    4658:	a44f0f20 	sh	t7,3872(v0)
    465c:	02002025 	move	a0,s0
    4660:	0c000000 	jal	0 <func_80AEAC10>
    4664:	8fa50034 	lw	a1,52(sp)
    4668:	2418001b 	li	t8,27
    466c:	ae180264 	sw	t8,612(s0)
    4670:	0c000000 	jal	0 <func_80AEAC10>
    4674:	02002025 	move	a0,s0
    4678:	8fbf002c 	lw	ra,44(sp)
    467c:	8fb00028 	lw	s0,40(sp)
    4680:	27bd0030 	addiu	sp,sp,48
    4684:	03e00008 	jr	ra
    4688:	00000000 	nop

0000468c <func_80AEF29C>:
    468c:	afa50004 	sw	a1,4(sp)
    4690:	240e0017 	li	t6,23
    4694:	03e00008 	jr	ra
    4698:	ac8e0264 	sw	t6,612(a0)

0000469c <func_80AEF2AC>:
    469c:	afa50004 	sw	a1,4(sp)
    46a0:	8c980004 	lw	t8,4(a0)
    46a4:	240e0018 	li	t6,24
    46a8:	240f0001 	li	t7,1
    46ac:	37190009 	ori	t9,t8,0x9
    46b0:	ac8e0264 	sw	t6,612(a0)
    46b4:	ac8f0268 	sw	t7,616(a0)
    46b8:	03e00008 	jr	ra
    46bc:	ac990004 	sw	t9,4(a0)

000046c0 <func_80AEF2D0>:
    46c0:	27bdffd8 	addiu	sp,sp,-40
    46c4:	afbf001c 	sw	ra,28(sp)
    46c8:	afb10018 	sw	s1,24(sp)
    46cc:	afb00014 	sw	s0,20(sp)
    46d0:	00808025 	move	s0,a0
    46d4:	0c000000 	jal	0 <func_80AEAC10>
    46d8:	00a08825 	move	s1,a1
    46dc:	0c000000 	jal	0 <func_80AEAC10>
    46e0:	02002025 	move	a0,s0
    46e4:	0c000000 	jal	0 <func_80AEAC10>
    46e8:	02002025 	move	a0,s0
    46ec:	02002025 	move	a0,s0
    46f0:	0c000000 	jal	0 <func_80AEAC10>
    46f4:	02202825 	move	a1,s1
    46f8:	02002025 	move	a0,s0
    46fc:	0c000000 	jal	0 <func_80AEAC10>
    4700:	02202825 	move	a1,s1
    4704:	02002025 	move	a0,s0
    4708:	0c000000 	jal	0 <func_80AEAC10>
    470c:	02202825 	move	a1,s1
    4710:	afa20024 	sw	v0,36(sp)
    4714:	02002025 	move	a0,s0
    4718:	0c000000 	jal	0 <func_80AEAC10>
    471c:	02202825 	move	a1,s1
    4720:	02002025 	move	a0,s0
    4724:	02202825 	move	a1,s1
    4728:	0c000000 	jal	0 <func_80AEAC10>
    472c:	8fa60024 	lw	a2,36(sp)
    4730:	8fbf001c 	lw	ra,28(sp)
    4734:	8fb00014 	lw	s0,20(sp)
    4738:	8fb10018 	lw	s1,24(sp)
    473c:	03e00008 	jr	ra
    4740:	27bd0028 	addiu	sp,sp,40

00004744 <func_80AEF354>:
    4744:	27bdffe0 	addiu	sp,sp,-32
    4748:	afbf001c 	sw	ra,28(sp)
    474c:	afb00018 	sw	s0,24(sp)
    4750:	00808025 	move	s0,a0
    4754:	0c000000 	jal	0 <func_80AEAC10>
    4758:	afa50024 	sw	a1,36(sp)
    475c:	0c000000 	jal	0 <func_80AEAC10>
    4760:	02002025 	move	a0,s0
    4764:	0c000000 	jal	0 <func_80AEAC10>
    4768:	02002025 	move	a0,s0
    476c:	02002025 	move	a0,s0
    4770:	0c000000 	jal	0 <func_80AEAC10>
    4774:	8fa50024 	lw	a1,36(sp)
    4778:	02002025 	move	a0,s0
    477c:	0c000000 	jal	0 <func_80AEAC10>
    4780:	8fa50024 	lw	a1,36(sp)
    4784:	8fbf001c 	lw	ra,28(sp)
    4788:	8fb00018 	lw	s0,24(sp)
    478c:	27bd0020 	addiu	sp,sp,32
    4790:	03e00008 	jr	ra
    4794:	00000000 	nop

00004798 <func_80AEF3A8>:
    4798:	27bdffd8 	addiu	sp,sp,-40
    479c:	afbf001c 	sw	ra,28(sp)
    47a0:	afb00018 	sw	s0,24(sp)
    47a4:	00808025 	move	s0,a0
    47a8:	0c000000 	jal	0 <func_80AEAC10>
    47ac:	afa5002c 	sw	a1,44(sp)
    47b0:	0c000000 	jal	0 <func_80AEAC10>
    47b4:	02002025 	move	a0,s0
    47b8:	afa20024 	sw	v0,36(sp)
    47bc:	0c000000 	jal	0 <func_80AEAC10>
    47c0:	02002025 	move	a0,s0
    47c4:	0c000000 	jal	0 <func_80AEAC10>
    47c8:	02002025 	move	a0,s0
    47cc:	02002025 	move	a0,s0
    47d0:	0c000000 	jal	0 <func_80AEAC10>
    47d4:	8fa5002c 	lw	a1,44(sp)
    47d8:	02002025 	move	a0,s0
    47dc:	8fa5002c 	lw	a1,44(sp)
    47e0:	0c000000 	jal	0 <func_80AEAC10>
    47e4:	8fa60024 	lw	a2,36(sp)
    47e8:	8fbf001c 	lw	ra,28(sp)
    47ec:	8fb00018 	lw	s0,24(sp)
    47f0:	27bd0028 	addiu	sp,sp,40
    47f4:	03e00008 	jr	ra
    47f8:	00000000 	nop

000047fc <func_80AEF40C>:
    47fc:	27bdffe0 	addiu	sp,sp,-32
    4800:	afb00018 	sw	s0,24(sp)
    4804:	afbf001c 	sw	ra,28(sp)
    4808:	afa40020 	sw	a0,32(sp)
    480c:	2490014c 	addiu	s0,a0,332
    4810:	02002025 	move	a0,s0
    4814:	0c000000 	jal	0 <func_80AEAC10>
    4818:	3c054000 	lui	a1,0x4000
    481c:	14400015 	bnez	v0,4874 <func_80AEF40C+0x78>
    4820:	02002025 	move	a0,s0
    4824:	0c000000 	jal	0 <func_80AEAC10>
    4828:	3c0540e0 	lui	a1,0x40e0
    482c:	14400011 	bnez	v0,4874 <func_80AEF40C+0x78>
    4830:	02002025 	move	a0,s0
    4834:	0c000000 	jal	0 <func_80AEAC10>
    4838:	3c054140 	lui	a1,0x4140
    483c:	1440000d 	bnez	v0,4874 <func_80AEF40C+0x78>
    4840:	02002025 	move	a0,s0
    4844:	0c000000 	jal	0 <func_80AEAC10>
    4848:	3c054190 	lui	a1,0x4190
    484c:	14400009 	bnez	v0,4874 <func_80AEF40C+0x78>
    4850:	02002025 	move	a0,s0
    4854:	0c000000 	jal	0 <func_80AEAC10>
    4858:	3c0541c8 	lui	a1,0x41c8
    485c:	14400005 	bnez	v0,4874 <func_80AEF40C+0x78>
    4860:	02002025 	move	a0,s0
    4864:	0c000000 	jal	0 <func_80AEAC10>
    4868:	3c054204 	lui	a1,0x4204
    486c:	50400006 	beqzl	v0,4888 <func_80AEF40C+0x8c>
    4870:	8fbf001c 	lw	ra,28(sp)
    4874:	8fa40020 	lw	a0,32(sp)
    4878:	24050803 	li	a1,2051
    487c:	0c000000 	jal	0 <func_80AEAC10>
    4880:	248400e4 	addiu	a0,a0,228
    4884:	8fbf001c 	lw	ra,28(sp)
    4888:	8fb00018 	lw	s0,24(sp)
    488c:	27bd0020 	addiu	sp,sp,32
    4890:	03e00008 	jr	ra
    4894:	00000000 	nop

00004898 <func_80AEF4A8>:
    4898:	27bdffe8 	addiu	sp,sp,-24
    489c:	afa40018 	sw	a0,24(sp)
    48a0:	afa5001c 	sw	a1,28(sp)
    48a4:	00a02025 	move	a0,a1
    48a8:	8fa50018 	lw	a1,24(sp)
    48ac:	afbf0014 	sw	ra,20(sp)
    48b0:	24060014 	li	a2,20
    48b4:	24076862 	li	a3,26722
    48b8:	0c000000 	jal	0 <func_80AEAC10>
    48bc:	24a500e4 	addiu	a1,a1,228
    48c0:	8fbf0014 	lw	ra,20(sp)
    48c4:	27bd0018 	addiu	sp,sp,24
    48c8:	03e00008 	jr	ra
    48cc:	00000000 	nop

000048d0 <func_80AEF4E0>:
    48d0:	27bdffe8 	addiu	sp,sp,-24
    48d4:	afbf0014 	sw	ra,20(sp)
    48d8:	afa40018 	sw	a0,24(sp)
    48dc:	2484014c 	addiu	a0,a0,332
    48e0:	0c000000 	jal	0 <func_80AEAC10>
    48e4:	3c0540a0 	lui	a1,0x40a0
    48e8:	10400004 	beqz	v0,48fc <func_80AEF4E0+0x2c>
    48ec:	8fa40018 	lw	a0,24(sp)
    48f0:	248400e4 	addiu	a0,a0,228
    48f4:	0c000000 	jal	0 <func_80AEAC10>
    48f8:	24056863 	li	a1,26723
    48fc:	8fbf0014 	lw	ra,20(sp)
    4900:	27bd0018 	addiu	sp,sp,24
    4904:	03e00008 	jr	ra
    4908:	00000000 	nop

0000490c <func_80AEF51C>:
    490c:	27bdffe8 	addiu	sp,sp,-24
    4910:	afbf0014 	sw	ra,20(sp)
    4914:	248400e4 	addiu	a0,a0,228
    4918:	0c000000 	jal	0 <func_80AEAC10>
    491c:	24056865 	li	a1,26725
    4920:	8fbf0014 	lw	ra,20(sp)
    4924:	27bd0018 	addiu	sp,sp,24
    4928:	03e00008 	jr	ra
    492c:	00000000 	nop

00004930 <func_80AEF540>:
    4930:	27bdffd8 	addiu	sp,sp,-40
    4934:	afbf0024 	sw	ra,36(sp)
    4938:	afb00020 	sw	s0,32(sp)
    493c:	0c000000 	jal	0 <func_80AEAC10>
    4940:	00808025 	move	s0,a0
    4944:	24010002 	li	at,2
    4948:	14410012 	bne	v0,at,4994 <func_80AEF540+0x64>
    494c:	02002025 	move	a0,s0
    4950:	0c000000 	jal	0 <func_80AEAC10>
    4954:	24050003 	li	a1,3
    4958:	02002025 	move	a0,s0
    495c:	0c000000 	jal	0 <func_80AEAC10>
    4960:	24050002 	li	a1,2
    4964:	920e014d 	lbu	t6,333(s0)
    4968:	24010002 	li	at,2
    496c:	02002025 	move	a0,s0
    4970:	11c10008 	beq	t6,at,4994 <func_80AEF540+0x64>
    4974:	3c050000 	lui	a1,0x0
    4978:	24a50000 	addiu	a1,a1,0
    497c:	24060002 	li	a2,2
    4980:	3c07c100 	lui	a3,0xc100
    4984:	0c000000 	jal	0 <func_80AEAC10>
    4988:	afa00010 	sw	zero,16(sp)
    498c:	0c000000 	jal	0 <func_80AEAC10>
    4990:	02002025 	move	a0,s0
    4994:	8fbf0024 	lw	ra,36(sp)
    4998:	8fb00020 	lw	s0,32(sp)
    499c:	27bd0028 	addiu	sp,sp,40
    49a0:	03e00008 	jr	ra
    49a4:	00000000 	nop

000049a8 <func_80AEF5B8>:
    49a8:	3c0e0000 	lui	t6,0x0
    49ac:	8dce1138 	lw	t6,4408(t6)
    49b0:	27bdffe8 	addiu	sp,sp,-24
    49b4:	afbf0014 	sw	ra,20(sp)
    49b8:	15c00012 	bnez	t6,4a04 <func_80AEF5B8+0x5c>
    49bc:	3c014270 	lui	at,0x4270
    49c0:	c4800164 	lwc1	$f0,356(a0)
    49c4:	44812000 	mtc1	at,$f4
    49c8:	24050003 	li	a1,3
    49cc:	4600203e 	c.le.s	$f4,$f0
    49d0:	00000000 	nop
    49d4:	4502000c 	bc1fl	4a08 <func_80AEF5B8+0x60>
    49d8:	8fbf0014 	lw	ra,20(sp)
    49dc:	0c000000 	jal	0 <func_80AEAC10>
    49e0:	afa40018 	sw	a0,24(sp)
    49e4:	8fa40018 	lw	a0,24(sp)
    49e8:	0c000000 	jal	0 <func_80AEAC10>
    49ec:	00002825 	move	a1,zero
    49f0:	0c000000 	jal	0 <func_80AEAC10>
    49f4:	8fa40018 	lw	a0,24(sp)
    49f8:	240f0001 	li	t7,1
    49fc:	3c010000 	lui	at,0x0
    4a00:	ac2f1138 	sw	t7,4408(at)
    4a04:	8fbf0014 	lw	ra,20(sp)
    4a08:	27bd0018 	addiu	sp,sp,24
    4a0c:	03e00008 	jr	ra
    4a10:	00000000 	nop

00004a14 <func_80AEF624>:
    4a14:	27bdffd0 	addiu	sp,sp,-48
    4a18:	afb00028 	sw	s0,40(sp)
    4a1c:	00808025 	move	s0,a0
    4a20:	afbf002c 	sw	ra,44(sp)
    4a24:	afa50034 	sw	a1,52(sp)
    4a28:	00a02025 	move	a0,a1
    4a2c:	24050001 	li	a1,1
    4a30:	0c000000 	jal	0 <func_80AEAC10>
    4a34:	24060003 	li	a2,3
    4a38:	10400032 	beqz	v0,4b04 <func_80AEF624+0xf0>
    4a3c:	3c040000 	lui	a0,0x0
    4a40:	0c000000 	jal	0 <func_80AEAC10>
    4a44:	24840000 	addiu	a0,a0,0
    4a48:	8fae0034 	lw	t6,52(sp)
    4a4c:	44800000 	mtc1	zero,$f0
    4a50:	3c050000 	lui	a1,0x0
    4a54:	8dc81d98 	lw	t0,7576(t6)
    4a58:	24090002 	li	t1,2
    4a5c:	44070000 	mfc1	a3,$f0
    4a60:	8d0f000c 	lw	t7,12(t0)
    4a64:	24a50000 	addiu	a1,a1,0
    4a68:	2604014c 	addiu	a0,s0,332
    4a6c:	448f2000 	mtc1	t7,$f4
    4a70:	3c063f80 	lui	a2,0x3f80
    4a74:	468021a0 	cvt.s.w	$f6,$f4
    4a78:	44822000 	mtc1	v0,$f4
    4a7c:	e6060024 	swc1	$f6,36(s0)
    4a80:	8d180010 	lw	t8,16(t0)
    4a84:	468021a0 	cvt.s.w	$f6,$f4
    4a88:	44984000 	mtc1	t8,$f8
    4a8c:	00000000 	nop
    4a90:	468042a0 	cvt.s.w	$f10,$f8
    4a94:	e60a0028 	swc1	$f10,40(s0)
    4a98:	8d190014 	lw	t9,20(t0)
    4a9c:	44998000 	mtc1	t9,$f16
    4aa0:	00000000 	nop
    4aa4:	468084a0 	cvt.s.w	$f18,$f16
    4aa8:	e612002c 	swc1	$f18,44(s0)
    4aac:	85030006 	lh	v1,6(t0)
    4ab0:	a60300b4 	sh	v1,180(s0)
    4ab4:	a6030030 	sh	v1,48(s0)
    4ab8:	85030008 	lh	v1,8(t0)
    4abc:	a60300b6 	sh	v1,182(s0)
    4ac0:	a6030032 	sh	v1,50(s0)
    4ac4:	8503000a 	lh	v1,10(t0)
    4ac8:	a60300b8 	sh	v1,184(s0)
    4acc:	a6030034 	sh	v1,52(s0)
    4ad0:	afa90014 	sw	t1,20(sp)
    4ad4:	e7a60010 	swc1	$f6,16(sp)
    4ad8:	0c000000 	jal	0 <func_80AEAC10>
    4adc:	e7a00018 	swc1	$f0,24(sp)
    4ae0:	02002025 	move	a0,s0
    4ae4:	0c000000 	jal	0 <func_80AEAC10>
    4ae8:	8fa50034 	lw	a1,52(sp)
    4aec:	240a0025 	li	t2,37
    4af0:	240b0001 	li	t3,1
    4af4:	240c00ff 	li	t4,255
    4af8:	ae0a0264 	sw	t2,612(s0)
    4afc:	ae0b0268 	sw	t3,616(s0)
    4b00:	a20c00c8 	sb	t4,200(s0)
    4b04:	8fbf002c 	lw	ra,44(sp)
    4b08:	8fb00028 	lw	s0,40(sp)
    4b0c:	27bd0030 	addiu	sp,sp,48
    4b10:	03e00008 	jr	ra
    4b14:	00000000 	nop

00004b18 <func_80AEF728>:
    4b18:	27bdffd8 	addiu	sp,sp,-40
    4b1c:	afbf0024 	sw	ra,36(sp)
    4b20:	10a00016 	beqz	a1,4b7c <func_80AEF728+0x64>
    4b24:	afa40028 	sw	a0,40(sp)
    4b28:	3c040000 	lui	a0,0x0
    4b2c:	0c000000 	jal	0 <func_80AEAC10>
    4b30:	24840000 	addiu	a0,a0,0
    4b34:	44822000 	mtc1	v0,$f4
    4b38:	44800000 	mtc1	zero,$f0
    4b3c:	8fa40028 	lw	a0,40(sp)
    4b40:	468021a0 	cvt.s.w	$f6,$f4
    4b44:	3c050000 	lui	a1,0x0
    4b48:	44070000 	mfc1	a3,$f0
    4b4c:	24a50000 	addiu	a1,a1,0
    4b50:	3c063f80 	lui	a2,0x3f80
    4b54:	afa00014 	sw	zero,20(sp)
    4b58:	e7a60010 	swc1	$f6,16(sp)
    4b5c:	2484014c 	addiu	a0,a0,332
    4b60:	0c000000 	jal	0 <func_80AEAC10>
    4b64:	e7a00018 	swc1	$f0,24(sp)
    4b68:	0c000000 	jal	0 <func_80AEAC10>
    4b6c:	8fa40028 	lw	a0,40(sp)
    4b70:	8faf0028 	lw	t7,40(sp)
    4b74:	240e0026 	li	t6,38
    4b78:	adee0264 	sw	t6,612(t7)
    4b7c:	8fbf0024 	lw	ra,36(sp)
    4b80:	27bd0028 	addiu	sp,sp,40
    4b84:	03e00008 	jr	ra
    4b88:	00000000 	nop

00004b8c <func_80AEF79C>:
    4b8c:	27bdffd8 	addiu	sp,sp,-40
    4b90:	afa40028 	sw	a0,40(sp)
    4b94:	afbf0024 	sw	ra,36(sp)
    4b98:	00a02025 	move	a0,a1
    4b9c:	24050002 	li	a1,2
    4ba0:	0c000000 	jal	0 <func_80AEAC10>
    4ba4:	24060003 	li	a2,3
    4ba8:	10400015 	beqz	v0,4c00 <func_80AEF79C+0x74>
    4bac:	3c040000 	lui	a0,0x0
    4bb0:	0c000000 	jal	0 <func_80AEAC10>
    4bb4:	24840000 	addiu	a0,a0,0
    4bb8:	44822000 	mtc1	v0,$f4
    4bbc:	3c01c100 	lui	at,0xc100
    4bc0:	44814000 	mtc1	at,$f8
    4bc4:	468021a0 	cvt.s.w	$f6,$f4
    4bc8:	8fa40028 	lw	a0,40(sp)
    4bcc:	3c050000 	lui	a1,0x0
    4bd0:	240e0002 	li	t6,2
    4bd4:	afae0014 	sw	t6,20(sp)
    4bd8:	24a50000 	addiu	a1,a1,0
    4bdc:	e7a60010 	swc1	$f6,16(sp)
    4be0:	3c063f80 	lui	a2,0x3f80
    4be4:	24070000 	li	a3,0
    4be8:	e7a80018 	swc1	$f8,24(sp)
    4bec:	0c000000 	jal	0 <func_80AEAC10>
    4bf0:	2484014c 	addiu	a0,a0,332
    4bf4:	8fb80028 	lw	t8,40(sp)
    4bf8:	240f0027 	li	t7,39
    4bfc:	af0f0264 	sw	t7,612(t8)
    4c00:	8fbf0024 	lw	ra,36(sp)
    4c04:	27bd0028 	addiu	sp,sp,40
    4c08:	03e00008 	jr	ra
    4c0c:	00000000 	nop

00004c10 <func_80AEF820>:
    4c10:	27bdffd8 	addiu	sp,sp,-40
    4c14:	afbf0024 	sw	ra,36(sp)
    4c18:	10a00015 	beqz	a1,4c70 <func_80AEF820+0x60>
    4c1c:	afa40028 	sw	a0,40(sp)
    4c20:	3c040000 	lui	a0,0x0
    4c24:	0c000000 	jal	0 <func_80AEAC10>
    4c28:	24840000 	addiu	a0,a0,0
    4c2c:	44822000 	mtc1	v0,$f4
    4c30:	3c01c100 	lui	at,0xc100
    4c34:	44814000 	mtc1	at,$f8
    4c38:	468021a0 	cvt.s.w	$f6,$f4
    4c3c:	8fa40028 	lw	a0,40(sp)
    4c40:	3c050000 	lui	a1,0x0
    4c44:	24a50000 	addiu	a1,a1,0
    4c48:	3c063f80 	lui	a2,0x3f80
    4c4c:	24070000 	li	a3,0
    4c50:	e7a60010 	swc1	$f6,16(sp)
    4c54:	afa00014 	sw	zero,20(sp)
    4c58:	e7a80018 	swc1	$f8,24(sp)
    4c5c:	0c000000 	jal	0 <func_80AEAC10>
    4c60:	2484014c 	addiu	a0,a0,332
    4c64:	8faf0028 	lw	t7,40(sp)
    4c68:	240e0028 	li	t6,40
    4c6c:	adee0264 	sw	t6,612(t7)
    4c70:	8fbf0024 	lw	ra,36(sp)
    4c74:	27bd0028 	addiu	sp,sp,40
    4c78:	03e00008 	jr	ra
    4c7c:	00000000 	nop

00004c80 <func_80AEF890>:
    4c80:	3c030000 	lui	v1,0x0
    4c84:	24630000 	addiu	v1,v1,0
    4c88:	8c6e1360 	lw	t6,4960(v1)
    4c8c:	27bdffd8 	addiu	sp,sp,-40
    4c90:	afbf0014 	sw	ra,20(sp)
    4c94:	29c10004 	slti	at,t6,4
    4c98:	afa40028 	sw	a0,40(sp)
    4c9c:	1020001c 	beqz	at,4d10 <func_80AEF890+0x90>
    4ca0:	afa5002c 	sw	a1,44(sp)
    4ca4:	0c000000 	jal	0 <func_80AEAC10>
    4ca8:	00a02025 	move	a0,a1
    4cac:	3c030000 	lui	v1,0x0
    4cb0:	10400017 	beqz	v0,4d10 <func_80AEF890+0x90>
    4cb4:	24630000 	addiu	v1,v1,0
    4cb8:	8faf002c 	lw	t7,44(sp)
    4cbc:	94790f20 	lhu	t9,3872(v1)
    4cc0:	3c180001 	lui	t8,0x1
    4cc4:	030fc021 	addu	t8,t8,t7
    4cc8:	83181cbc 	lb	t8,7356(t8)
    4ccc:	37280020 	ori	t0,t9,0x20
    4cd0:	a4680f20 	sh	t0,3872(v1)
    4cd4:	8fa40028 	lw	a0,40(sp)
    4cd8:	0c000000 	jal	0 <func_80AEAC10>
    4cdc:	a3b8001f 	sb	t8,31(sp)
    4ce0:	8fa4002c 	lw	a0,44(sp)
    4ce4:	0c000000 	jal	0 <func_80AEAC10>
    4ce8:	00402825 	move	a1,v0
    4cec:	8fa40028 	lw	a0,40(sp)
    4cf0:	0c000000 	jal	0 <func_80AEAC10>
    4cf4:	24050001 	li	a1,1
    4cf8:	8faa0028 	lw	t2,40(sp)
    4cfc:	2409002a 	li	t1,42
    4d00:	ad490264 	sw	t1,612(t2)
    4d04:	8fac0028 	lw	t4,40(sp)
    4d08:	83ab001f 	lb	t3,31(sp)
    4d0c:	a18b0003 	sb	t3,3(t4)
    4d10:	8fbf0014 	lw	ra,20(sp)
    4d14:	27bd0028 	addiu	sp,sp,40
    4d18:	03e00008 	jr	ra
    4d1c:	00000000 	nop

00004d20 <func_80AEF930>:
    4d20:	27bdffe0 	addiu	sp,sp,-32
    4d24:	afbf001c 	sw	ra,28(sp)
    4d28:	afb00018 	sw	s0,24(sp)
    4d2c:	00808025 	move	s0,a0
    4d30:	0c000000 	jal	0 <func_80AEAC10>
    4d34:	afa50024 	sw	a1,36(sp)
    4d38:	24010003 	li	at,3
    4d3c:	1441000e 	bne	v0,at,4d78 <func_80AEF930+0x58>
    4d40:	24184048 	li	t8,16456
    4d44:	8e0e0004 	lw	t6,4(s0)
    4d48:	a618010e 	sh	t8,270(s0)
    4d4c:	3305ffff 	andi	a1,t8,0xffff
    4d50:	35cf0009 	ori	t7,t6,0x9
    4d54:	ae0f0004 	sw	t7,4(s0)
    4d58:	0c000000 	jal	0 <func_80AEAC10>
    4d5c:	8fa40024 	lw	a0,36(sp)
    4d60:	02002025 	move	a0,s0
    4d64:	0c000000 	jal	0 <func_80AEAC10>
    4d68:	8fa50024 	lw	a1,36(sp)
    4d6c:	2419002b 	li	t9,43
    4d70:	ae190264 	sw	t9,612(s0)
    4d74:	ae000268 	sw	zero,616(s0)
    4d78:	8fbf001c 	lw	ra,28(sp)
    4d7c:	8fb00018 	lw	s0,24(sp)
    4d80:	27bd0020 	addiu	sp,sp,32
    4d84:	03e00008 	jr	ra
    4d88:	00000000 	nop

00004d8c <func_80AEF99C>:
    4d8c:	27bdffe8 	addiu	sp,sp,-24
    4d90:	afbf0014 	sw	ra,20(sp)
    4d94:	afa40018 	sw	a0,24(sp)
    4d98:	0c000000 	jal	0 <func_80AEAC10>
    4d9c:	00a02025 	move	a0,a1
    4da0:	10400005 	beqz	v0,4db8 <func_80AEF99C+0x2c>
    4da4:	8fa40018 	lw	a0,24(sp)
    4da8:	0c000000 	jal	0 <func_80AEAC10>
    4dac:	24050004 	li	a1,4
    4db0:	0c000000 	jal	0 <func_80AEAC10>
    4db4:	8fa40018 	lw	a0,24(sp)
    4db8:	8fbf0014 	lw	ra,20(sp)
    4dbc:	27bd0018 	addiu	sp,sp,24
    4dc0:	03e00008 	jr	ra
    4dc4:	00000000 	nop

00004dc8 <func_80AEF9D8>:
    4dc8:	27bdffe0 	addiu	sp,sp,-32
    4dcc:	afbf001c 	sw	ra,28(sp)
    4dd0:	afb00018 	sw	s0,24(sp)
    4dd4:	00808025 	move	s0,a0
    4dd8:	0c000000 	jal	0 <func_80AEAC10>
    4ddc:	afa50024 	sw	a1,36(sp)
    4de0:	0c000000 	jal	0 <func_80AEAC10>
    4de4:	02002025 	move	a0,s0
    4de8:	0c000000 	jal	0 <func_80AEAC10>
    4dec:	02002025 	move	a0,s0
    4df0:	02002025 	move	a0,s0
    4df4:	0c000000 	jal	0 <func_80AEAC10>
    4df8:	8fa50024 	lw	a1,36(sp)
    4dfc:	02002025 	move	a0,s0
    4e00:	0c000000 	jal	0 <func_80AEAC10>
    4e04:	8fa50024 	lw	a1,36(sp)
    4e08:	8fbf001c 	lw	ra,28(sp)
    4e0c:	8fb00018 	lw	s0,24(sp)
    4e10:	27bd0020 	addiu	sp,sp,32
    4e14:	03e00008 	jr	ra
    4e18:	00000000 	nop

00004e1c <func_80AEFA2C>:
    4e1c:	27bdffd8 	addiu	sp,sp,-40
    4e20:	afbf001c 	sw	ra,28(sp)
    4e24:	afb00018 	sw	s0,24(sp)
    4e28:	00808025 	move	s0,a0
    4e2c:	0c000000 	jal	0 <func_80AEAC10>
    4e30:	afa5002c 	sw	a1,44(sp)
    4e34:	02002025 	move	a0,s0
    4e38:	0c000000 	jal	0 <func_80AEAC10>
    4e3c:	8fa5002c 	lw	a1,44(sp)
    4e40:	02002025 	move	a0,s0
    4e44:	0c000000 	jal	0 <func_80AEAC10>
    4e48:	8fa5002c 	lw	a1,44(sp)
    4e4c:	0c000000 	jal	0 <func_80AEAC10>
    4e50:	02002025 	move	a0,s0
    4e54:	afa20024 	sw	v0,36(sp)
    4e58:	0c000000 	jal	0 <func_80AEAC10>
    4e5c:	02002025 	move	a0,s0
    4e60:	0c000000 	jal	0 <func_80AEAC10>
    4e64:	02002025 	move	a0,s0
    4e68:	0c000000 	jal	0 <func_80AEAC10>
    4e6c:	02002025 	move	a0,s0
    4e70:	02002025 	move	a0,s0
    4e74:	0c000000 	jal	0 <func_80AEAC10>
    4e78:	8fa50024 	lw	a1,36(sp)
    4e7c:	02002025 	move	a0,s0
    4e80:	0c000000 	jal	0 <func_80AEAC10>
    4e84:	8fa5002c 	lw	a1,44(sp)
    4e88:	8fbf001c 	lw	ra,28(sp)
    4e8c:	8fb00018 	lw	s0,24(sp)
    4e90:	27bd0028 	addiu	sp,sp,40
    4e94:	03e00008 	jr	ra
    4e98:	00000000 	nop

00004e9c <func_80AEFAAC>:
    4e9c:	27bdffe0 	addiu	sp,sp,-32
    4ea0:	afbf001c 	sw	ra,28(sp)
    4ea4:	afb00018 	sw	s0,24(sp)
    4ea8:	00808025 	move	s0,a0
    4eac:	0c000000 	jal	0 <func_80AEAC10>
    4eb0:	afa50024 	sw	a1,36(sp)
    4eb4:	02002025 	move	a0,s0
    4eb8:	0c000000 	jal	0 <func_80AEAC10>
    4ebc:	8fa50024 	lw	a1,36(sp)
    4ec0:	0c000000 	jal	0 <func_80AEAC10>
    4ec4:	02002025 	move	a0,s0
    4ec8:	02002025 	move	a0,s0
    4ecc:	0c000000 	jal	0 <func_80AEAC10>
    4ed0:	8fa50024 	lw	a1,36(sp)
    4ed4:	02002025 	move	a0,s0
    4ed8:	0c000000 	jal	0 <func_80AEAC10>
    4edc:	8fa50024 	lw	a1,36(sp)
    4ee0:	8fbf001c 	lw	ra,28(sp)
    4ee4:	8fb00018 	lw	s0,24(sp)
    4ee8:	27bd0020 	addiu	sp,sp,32
    4eec:	03e00008 	jr	ra
    4ef0:	00000000 	nop

00004ef4 <func_80AEFB04>:
    4ef4:	27bdffd8 	addiu	sp,sp,-40
    4ef8:	afbf001c 	sw	ra,28(sp)
    4efc:	afb00018 	sw	s0,24(sp)
    4f00:	00808025 	move	s0,a0
    4f04:	0c000000 	jal	0 <func_80AEAC10>
    4f08:	afa5002c 	sw	a1,44(sp)
    4f0c:	02002025 	move	a0,s0
    4f10:	0c000000 	jal	0 <func_80AEAC10>
    4f14:	8fa5002c 	lw	a1,44(sp)
    4f18:	0c000000 	jal	0 <func_80AEAC10>
    4f1c:	02002025 	move	a0,s0
    4f20:	afa20024 	sw	v0,36(sp)
    4f24:	0c000000 	jal	0 <func_80AEAC10>
    4f28:	02002025 	move	a0,s0
    4f2c:	02002025 	move	a0,s0
    4f30:	0c000000 	jal	0 <func_80AEAC10>
    4f34:	8fa50024 	lw	a1,36(sp)
    4f38:	02002025 	move	a0,s0
    4f3c:	0c000000 	jal	0 <func_80AEAC10>
    4f40:	8fa5002c 	lw	a1,44(sp)
    4f44:	8fbf001c 	lw	ra,28(sp)
    4f48:	8fb00018 	lw	s0,24(sp)
    4f4c:	27bd0028 	addiu	sp,sp,40
    4f50:	03e00008 	jr	ra
    4f54:	00000000 	nop

00004f58 <func_80AEFB68>:
    4f58:	27bdffe0 	addiu	sp,sp,-32
    4f5c:	afbf001c 	sw	ra,28(sp)
    4f60:	afb00018 	sw	s0,24(sp)
    4f64:	00808025 	move	s0,a0
    4f68:	0c000000 	jal	0 <func_80AEAC10>
    4f6c:	afa50024 	sw	a1,36(sp)
    4f70:	02002025 	move	a0,s0
    4f74:	0c000000 	jal	0 <func_80AEAC10>
    4f78:	8fa50024 	lw	a1,36(sp)
    4f7c:	0c000000 	jal	0 <func_80AEAC10>
    4f80:	02002025 	move	a0,s0
    4f84:	0c000000 	jal	0 <func_80AEAC10>
    4f88:	02002025 	move	a0,s0
    4f8c:	02002025 	move	a0,s0
    4f90:	0c000000 	jal	0 <func_80AEAC10>
    4f94:	8fa50024 	lw	a1,36(sp)
    4f98:	02002025 	move	a0,s0
    4f9c:	0c000000 	jal	0 <func_80AEAC10>
    4fa0:	8fa50024 	lw	a1,36(sp)
    4fa4:	8fbf001c 	lw	ra,28(sp)
    4fa8:	8fb00018 	lw	s0,24(sp)
    4fac:	27bd0020 	addiu	sp,sp,32
    4fb0:	03e00008 	jr	ra
    4fb4:	00000000 	nop

00004fb8 <func_80AEFBC8>:
    4fb8:	27bdffe0 	addiu	sp,sp,-32
    4fbc:	afbf001c 	sw	ra,28(sp)
    4fc0:	afb00018 	sw	s0,24(sp)
    4fc4:	00808025 	move	s0,a0
    4fc8:	0c000000 	jal	0 <func_80AEAC10>
    4fcc:	afa50024 	sw	a1,36(sp)
    4fd0:	02002025 	move	a0,s0
    4fd4:	0c000000 	jal	0 <func_80AEAC10>
    4fd8:	8fa50024 	lw	a1,36(sp)
    4fdc:	0c000000 	jal	0 <func_80AEAC10>
    4fe0:	02002025 	move	a0,s0
    4fe4:	0c000000 	jal	0 <func_80AEAC10>
    4fe8:	02002025 	move	a0,s0
    4fec:	0c000000 	jal	0 <func_80AEAC10>
    4ff0:	02002025 	move	a0,s0
    4ff4:	02002025 	move	a0,s0
    4ff8:	0c000000 	jal	0 <func_80AEAC10>
    4ffc:	8fa50024 	lw	a1,36(sp)
    5000:	8fbf001c 	lw	ra,28(sp)
    5004:	8fb00018 	lw	s0,24(sp)
    5008:	27bd0020 	addiu	sp,sp,32
    500c:	03e00008 	jr	ra
    5010:	00000000 	nop

00005014 <func_80AEFC24>:
    5014:	27bdffe8 	addiu	sp,sp,-24
    5018:	afbf0014 	sw	ra,20(sp)
    501c:	afa40018 	sw	a0,24(sp)
    5020:	0c000000 	jal	0 <func_80AEAC10>
    5024:	afa5001c 	sw	a1,28(sp)
    5028:	8fa40018 	lw	a0,24(sp)
    502c:	0c000000 	jal	0 <func_80AEAC10>
    5030:	8fa5001c 	lw	a1,28(sp)
    5034:	8fbf0014 	lw	ra,20(sp)
    5038:	27bd0018 	addiu	sp,sp,24
    503c:	03e00008 	jr	ra
    5040:	00000000 	nop

00005044 <func_80AEFC54>:
    5044:	3c020000 	lui	v0,0x0
    5048:	94420f20 	lhu	v0,3872(v0)
    504c:	27bdffd8 	addiu	sp,sp,-40
    5050:	afb00020 	sw	s0,32(sp)
    5054:	304e0020 	andi	t6,v0,0x20
    5058:	00808025 	move	s0,a0
    505c:	afbf0024 	sw	ra,36(sp)
    5060:	11c00016 	beqz	t6,50bc <func_80AEFC54+0x78>
    5064:	afa5002c 	sw	a1,44(sp)
    5068:	304f0040 	andi	t7,v0,0x40
    506c:	15e00013 	bnez	t7,50bc <func_80AEFC54+0x78>
    5070:	3c050000 	lui	a1,0x0
    5074:	24a50000 	addiu	a1,a1,0
    5078:	00003025 	move	a2,zero
    507c:	24070000 	li	a3,0
    5080:	0c000000 	jal	0 <func_80AEAC10>
    5084:	afa00010 	sw	zero,16(sp)
    5088:	24180029 	li	t8,41
    508c:	ae180264 	sw	t8,612(s0)
    5090:	0c000000 	jal	0 <func_80AEAC10>
    5094:	8fa4002c 	lw	a0,44(sp)
    5098:	ae02028c 	sw	v0,652(s0)
    509c:	02002025 	move	a0,s0
    50a0:	0c000000 	jal	0 <func_80AEAC10>
    50a4:	24050001 	li	a1,1
    50a8:	8e190004 	lw	t9,4(s0)
    50ac:	2401fff6 	li	at,-10
    50b0:	03214024 	and	t0,t9,at
    50b4:	10000003 	b	50c4 <func_80AEFC54+0x80>
    50b8:	ae080004 	sw	t0,4(s0)
    50bc:	0c000000 	jal	0 <func_80AEAC10>
    50c0:	02002025 	move	a0,s0
    50c4:	8fbf0024 	lw	ra,36(sp)
    50c8:	8fb00020 	lw	s0,32(sp)
    50cc:	27bd0028 	addiu	sp,sp,40
    50d0:	03e00008 	jr	ra
    50d4:	00000000 	nop

000050d8 <func_80AEFCE8>:
    50d8:	27bdffe8 	addiu	sp,sp,-24
    50dc:	afbf0014 	sw	ra,20(sp)
    50e0:	00803025 	move	a2,a0
    50e4:	afa60018 	sw	a2,24(sp)
    50e8:	0c000000 	jal	0 <func_80AEAC10>
    50ec:	00a02025 	move	a0,a1
    50f0:	8fa60018 	lw	a2,24(sp)
    50f4:	240e002a 	li	t6,42
    50f8:	10400007 	beqz	v0,5118 <func_80AEFCE8+0x40>
    50fc:	acc2028c 	sw	v0,652(a2)
    5100:	240f0001 	li	t7,1
    5104:	acce0264 	sw	t6,612(a2)
    5108:	accf0268 	sw	t7,616(a2)
    510c:	00c02025 	move	a0,a2
    5110:	0c000000 	jal	0 <func_80AEAC10>
    5114:	24050001 	li	a1,1
    5118:	8fbf0014 	lw	ra,20(sp)
    511c:	27bd0018 	addiu	sp,sp,24
    5120:	03e00008 	jr	ra
    5124:	00000000 	nop

00005128 <func_80AEFD38>:
    5128:	3c020000 	lui	v0,0x0
    512c:	24420000 	addiu	v0,v0,0
    5130:	944e0eda 	lhu	t6,3802(v0)
    5134:	27bdffe0 	addiu	sp,sp,-32
    5138:	afbf001c 	sw	ra,28(sp)
    513c:	31cf0080 	andi	t7,t6,0x80
    5140:	11e00015 	beqz	t7,5198 <func_80AEFD38+0x70>
    5144:	afa50024 	sw	a1,36(sp)
    5148:	8c580004 	lw	t8,4(v0)
    514c:	24010001 	li	at,1
    5150:	3c050000 	lui	a1,0x0
    5154:	17010010 	bne	t8,at,5198 <func_80AEFD38+0x70>
    5158:	24a50000 	addiu	a1,a1,0
    515c:	00003025 	move	a2,zero
    5160:	24070000 	li	a3,0
    5164:	afa00010 	sw	zero,16(sp)
    5168:	0c000000 	jal	0 <func_80AEAC10>
    516c:	afa40020 	sw	a0,32(sp)
    5170:	8fa40020 	lw	a0,32(sp)
    5174:	2401ffef 	li	at,-17
    5178:	2409002c 	li	t1,44
    517c:	8c990004 	lw	t9,4(a0)
    5180:	240a0001 	li	t2,1
    5184:	ac890264 	sw	t1,612(a0)
    5188:	03214024 	and	t0,t9,at
    518c:	ac880004 	sw	t0,4(a0)
    5190:	10000003 	b	51a0 <func_80AEFD38+0x78>
    5194:	ac8a0268 	sw	t2,616(a0)
    5198:	0c000000 	jal	0 <func_80AEAC10>
    519c:	00000000 	nop
    51a0:	8fbf001c 	lw	ra,28(sp)
    51a4:	27bd0020 	addiu	sp,sp,32
    51a8:	03e00008 	jr	ra
    51ac:	00000000 	nop

000051b0 <func_80AEFDC0>:
    51b0:	27bdffe8 	addiu	sp,sp,-24
    51b4:	afbf0014 	sw	ra,20(sp)
    51b8:	afa5001c 	sw	a1,28(sp)
    51bc:	0c000000 	jal	0 <func_80AEAC10>
    51c0:	afa40018 	sw	a0,24(sp)
    51c4:	14400013 	bnez	v0,5214 <func_80AEFDC0+0x64>
    51c8:	8fa60018 	lw	a2,24(sp)
    51cc:	8cce0004 	lw	t6,4(a2)
    51d0:	2405001f 	li	a1,31
    51d4:	35cf0009 	ori	t7,t6,0x9
    51d8:	accf0004 	sw	t7,4(a2)
    51dc:	afa60018 	sw	a2,24(sp)
    51e0:	0c000000 	jal	0 <func_80AEAC10>
    51e4:	8fa4001c 	lw	a0,28(sp)
    51e8:	8fa60018 	lw	a2,24(sp)
    51ec:	3058ffff 	andi	t8,v0,0xffff
    51f0:	17000003 	bnez	t8,5200 <func_80AEFDC0+0x50>
    51f4:	a4c2010e 	sh	v0,270(a2)
    51f8:	2419402c 	li	t9,16428
    51fc:	a4d9010e 	sh	t9,270(a2)
    5200:	00c02025 	move	a0,a2
    5204:	0c000000 	jal	0 <func_80AEAC10>
    5208:	8fa5001c 	lw	a1,28(sp)
    520c:	10000002 	b	5218 <func_80AEFDC0+0x68>
    5210:	00001025 	move	v0,zero
    5214:	24020001 	li	v0,1
    5218:	8fbf0014 	lw	ra,20(sp)
    521c:	27bd0018 	addiu	sp,sp,24
    5220:	03e00008 	jr	ra
    5224:	00000000 	nop

00005228 <func_80AEFE38>:
    5228:	27bdffe8 	addiu	sp,sp,-24
    522c:	afbf0014 	sw	ra,20(sp)
    5230:	afa40018 	sw	a0,24(sp)
    5234:	0c000000 	jal	0 <func_80AEAC10>
    5238:	24a420d8 	addiu	a0,a1,8408
    523c:	24010002 	li	at,2
    5240:	14410007 	bne	v0,at,5260 <func_80AEFE38+0x38>
    5244:	8fa30018 	lw	v1,24(sp)
    5248:	8c6e0004 	lw	t6,4(v1)
    524c:	2401fff6 	li	at,-10
    5250:	24020001 	li	v0,1
    5254:	01c17824 	and	t7,t6,at
    5258:	10000002 	b	5264 <func_80AEFE38+0x3c>
    525c:	ac6f0004 	sw	t7,4(v1)
    5260:	00001025 	move	v0,zero
    5264:	8fbf0014 	lw	ra,20(sp)
    5268:	27bd0018 	addiu	sp,sp,24
    526c:	03e00008 	jr	ra
    5270:	00000000 	nop

00005274 <func_80AEFE84>:
    5274:	10c00003 	beqz	a2,5284 <func_80AEFE84+0x10>
    5278:	afa50004 	sw	a1,4(sp)
    527c:	240e002d 	li	t6,45
    5280:	ac8e0264 	sw	t6,612(a0)
    5284:	03e00008 	jr	ra
    5288:	00000000 	nop

0000528c <func_80AEFE9C>:
    528c:	27bdffe8 	addiu	sp,sp,-24
    5290:	afbf0014 	sw	ra,20(sp)
    5294:	0c000000 	jal	0 <func_80AEAC10>
    5298:	afa40018 	sw	a0,24(sp)
    529c:	10400003 	beqz	v0,52ac <func_80AEFE9C+0x20>
    52a0:	8faf0018 	lw	t7,24(sp)
    52a4:	240e002c 	li	t6,44
    52a8:	adee0264 	sw	t6,612(t7)
    52ac:	8fbf0014 	lw	ra,20(sp)
    52b0:	27bd0018 	addiu	sp,sp,24
    52b4:	03e00008 	jr	ra
    52b8:	00000000 	nop

000052bc <func_80AEFECC>:
    52bc:	27bdffe0 	addiu	sp,sp,-32
    52c0:	afbf001c 	sw	ra,28(sp)
    52c4:	afb10018 	sw	s1,24(sp)
    52c8:	afb00014 	sw	s0,20(sp)
    52cc:	00808025 	move	s0,a0
    52d0:	0c000000 	jal	0 <func_80AEAC10>
    52d4:	00a08825 	move	s1,a1
    52d8:	0c000000 	jal	0 <func_80AEAC10>
    52dc:	02002025 	move	a0,s0
    52e0:	0c000000 	jal	0 <func_80AEAC10>
    52e4:	02002025 	move	a0,s0
    52e8:	02002025 	move	a0,s0
    52ec:	0c000000 	jal	0 <func_80AEAC10>
    52f0:	02202825 	move	a1,s1
    52f4:	02002025 	move	a0,s0
    52f8:	0c000000 	jal	0 <func_80AEAC10>
    52fc:	02202825 	move	a1,s1
    5300:	02002025 	move	a0,s0
    5304:	0c000000 	jal	0 <func_80AEAC10>
    5308:	02202825 	move	a1,s1
    530c:	02002025 	move	a0,s0
    5310:	02202825 	move	a1,s1
    5314:	0c000000 	jal	0 <func_80AEAC10>
    5318:	00403025 	move	a2,v0
    531c:	8fbf001c 	lw	ra,28(sp)
    5320:	8fb00014 	lw	s0,20(sp)
    5324:	8fb10018 	lw	s1,24(sp)
    5328:	03e00008 	jr	ra
    532c:	27bd0020 	addiu	sp,sp,32

00005330 <func_80AEFF40>:
    5330:	27bdffe0 	addiu	sp,sp,-32
    5334:	afbf001c 	sw	ra,28(sp)
    5338:	afb00018 	sw	s0,24(sp)
    533c:	00808025 	move	s0,a0
    5340:	0c000000 	jal	0 <func_80AEAC10>
    5344:	afa50024 	sw	a1,36(sp)
    5348:	0c000000 	jal	0 <func_80AEAC10>
    534c:	02002025 	move	a0,s0
    5350:	0c000000 	jal	0 <func_80AEAC10>
    5354:	02002025 	move	a0,s0
    5358:	02002025 	move	a0,s0
    535c:	0c000000 	jal	0 <func_80AEAC10>
    5360:	8fa50024 	lw	a1,36(sp)
    5364:	02002025 	move	a0,s0
    5368:	0c000000 	jal	0 <func_80AEAC10>
    536c:	8fa50024 	lw	a1,36(sp)
    5370:	8fbf001c 	lw	ra,28(sp)
    5374:	8fb00018 	lw	s0,24(sp)
    5378:	27bd0020 	addiu	sp,sp,32
    537c:	03e00008 	jr	ra
    5380:	00000000 	nop

00005384 <func_80AEFF94>:
    5384:	3c020000 	lui	v0,0x0
    5388:	94420f20 	lhu	v0,3872(v0)
    538c:	27bdffd8 	addiu	sp,sp,-40
    5390:	afb00020 	sw	s0,32(sp)
    5394:	304e0002 	andi	t6,v0,0x2
    5398:	00808025 	move	s0,a0
    539c:	11c0001e 	beqz	t6,5418 <func_80AEFF94+0x94>
    53a0:	afbf0024 	sw	ra,36(sp)
    53a4:	304f0001 	andi	t7,v0,0x1
    53a8:	11e0001b 	beqz	t7,5418 <func_80AEFF94+0x94>
    53ac:	30580020 	andi	t8,v0,0x20
    53b0:	17000019 	bnez	t8,5418 <func_80AEFF94+0x94>
    53b4:	00000000 	nop
    53b8:	0c000000 	jal	0 <func_80AEAC10>
    53bc:	00000000 	nop
    53c0:	14400015 	bnez	v0,5418 <func_80AEFF94+0x94>
    53c4:	02002025 	move	a0,s0
    53c8:	3c050000 	lui	a1,0x0
    53cc:	24a50000 	addiu	a1,a1,0
    53d0:	00003025 	move	a2,zero
    53d4:	24070000 	li	a3,0
    53d8:	0c000000 	jal	0 <func_80AEAC10>
    53dc:	afa00010 	sw	zero,16(sp)
    53e0:	82020003 	lb	v0,3(s0)
    53e4:	24190016 	li	t9,22
    53e8:	2408ffff 	li	t0,-1
    53ec:	3c040000 	lui	a0,0x0
    53f0:	ae190264 	sw	t9,612(s0)
    53f4:	a2080003 	sb	t0,3(s0)
    53f8:	ae000268 	sw	zero,616(s0)
    53fc:	24840034 	addiu	a0,a0,52
    5400:	a2020284 	sb	v0,644(s0)
    5404:	a2020286 	sb	v0,646(s0)
    5408:	0c000000 	jal	0 <func_80AEAC10>
    540c:	a2020285 	sb	v0,645(s0)
    5410:	10000007 	b	5430 <func_80AEFF94+0xac>
    5414:	8fbf0024 	lw	ra,36(sp)
    5418:	3c040000 	lui	a0,0x0
    541c:	0c000000 	jal	0 <func_80AEAC10>
    5420:	24840060 	addiu	a0,a0,96
    5424:	0c000000 	jal	0 <func_80AEAC10>
    5428:	02002025 	move	a0,s0
    542c:	8fbf0024 	lw	ra,36(sp)
    5430:	8fb00020 	lw	s0,32(sp)
    5434:	27bd0028 	addiu	sp,sp,40
    5438:	03e00008 	jr	ra
    543c:	00000000 	nop

00005440 <func_80AF0050>:
    5440:	27bdffd8 	addiu	sp,sp,-40
    5444:	afa5002c 	sw	a1,44(sp)
    5448:	afbf0024 	sw	ra,36(sp)
    544c:	afb00020 	sw	s0,32(sp)
    5450:	3c050000 	lui	a1,0x0
    5454:	00808025 	move	s0,a0
    5458:	24a50000 	addiu	a1,a1,0
    545c:	afa00010 	sw	zero,16(sp)
    5460:	00003025 	move	a2,zero
    5464:	0c000000 	jal	0 <func_80AEAC10>
    5468:	24070000 	li	a3,0
    546c:	820f0003 	lb	t7,3(s0)
    5470:	240e0024 	li	t6,36
    5474:	ae0e0264 	sw	t6,612(s0)
    5478:	a20f0284 	sb	t7,644(s0)
    547c:	0c000000 	jal	0 <func_80AEAC10>
    5480:	8fa4002c 	lw	a0,44(sp)
    5484:	2418ffff 	li	t8,-1
    5488:	ae02028c 	sw	v0,652(s0)
    548c:	a2180003 	sb	t8,3(s0)
    5490:	8fbf0024 	lw	ra,36(sp)
    5494:	8fb00020 	lw	s0,32(sp)
    5498:	27bd0028 	addiu	sp,sp,40
    549c:	03e00008 	jr	ra
    54a0:	00000000 	nop

000054a4 <EnRu1_Update>:
    54a4:	27bdffe8 	addiu	sp,sp,-24
    54a8:	afbf0014 	sw	ra,20(sp)
    54ac:	8c820264 	lw	v0,612(a0)
    54b0:	04400008 	bltz	v0,54d4 <EnRu1_Update+0x30>
    54b4:	2841002e 	slti	at,v0,46
    54b8:	10200006 	beqz	at,54d4 <EnRu1_Update+0x30>
    54bc:	00027080 	sll	t6,v0,0x2
    54c0:	3c030000 	lui	v1,0x0
    54c4:	006e1821 	addu	v1,v1,t6
    54c8:	8c63113c 	lw	v1,4412(v1)
    54cc:	14600006 	bnez	v1,54e8 <EnRu1_Update+0x44>
    54d0:	00000000 	nop
    54d4:	3c040000 	lui	a0,0x0
    54d8:	0c000000 	jal	0 <func_80AEAC10>
    54dc:	24840090 	addiu	a0,a0,144
    54e0:	10000004 	b	54f4 <EnRu1_Update+0x50>
    54e4:	8fbf0014 	lw	ra,20(sp)
    54e8:	0060f809 	jalr	v1
    54ec:	00000000 	nop
    54f0:	8fbf0014 	lw	ra,20(sp)
    54f4:	27bd0018 	addiu	sp,sp,24
    54f8:	03e00008 	jr	ra
    54fc:	00000000 	nop

00005500 <EnRu1_Init>:
    5500:	27bdffd0 	addiu	sp,sp,-48
    5504:	afb10028 	sw	s1,40(sp)
    5508:	afb00024 	sw	s0,36(sp)
    550c:	00808025 	move	s0,a0
    5510:	00a08825 	move	s1,a1
    5514:	afbf002c 	sw	ra,44(sp)
    5518:	3c060000 	lui	a2,0x0
    551c:	24c60000 	addiu	a2,a2,0
    5520:	24050000 	li	a1,0
    5524:	248400b4 	addiu	a0,a0,180
    5528:	0c000000 	jal	0 <func_80AEAC10>
    552c:	3c0741f0 	lui	a3,0x41f0
    5530:	3c060000 	lui	a2,0x0
    5534:	260e0190 	addiu	t6,s0,400
    5538:	260f01f6 	addiu	t7,s0,502
    553c:	24180011 	li	t8,17
    5540:	afb80018 	sw	t8,24(sp)
    5544:	afaf0014 	sw	t7,20(sp)
    5548:	afae0010 	sw	t6,16(sp)
    554c:	24c60000 	addiu	a2,a2,0
    5550:	02202025 	move	a0,s1
    5554:	2605014c 	addiu	a1,s0,332
    5558:	0c000000 	jal	0 <func_80AEAC10>
    555c:	00003825 	move	a3,zero
    5560:	02002025 	move	a0,s0
    5564:	0c000000 	jal	0 <func_80AEAC10>
    5568:	02202825 	move	a1,s1
    556c:	0c000000 	jal	0 <func_80AEAC10>
    5570:	02002025 	move	a0,s0
    5574:	2c41000b 	sltiu	at,v0,11
    5578:	1020002e 	beqz	at,5634 <EnRu1_Init+0x134>
    557c:	0002c880 	sll	t9,v0,0x2
    5580:	3c010000 	lui	at,0x0
    5584:	00390821 	addu	at,at,t9
    5588:	8c390230 	lw	t9,560(at)
    558c:	03200008 	jr	t9
    5590:	00000000 	nop
    5594:	02002025 	move	a0,s0
    5598:	0c000000 	jal	0 <func_80AEAC10>
    559c:	02202825 	move	a1,s1
    55a0:	1000002d 	b	5658 <EnRu1_Init+0x158>
    55a4:	8fbf002c 	lw	ra,44(sp)
    55a8:	02002025 	move	a0,s0
    55ac:	0c000000 	jal	0 <func_80AEAC10>
    55b0:	02202825 	move	a1,s1
    55b4:	10000028 	b	5658 <EnRu1_Init+0x158>
    55b8:	8fbf002c 	lw	ra,44(sp)
    55bc:	02002025 	move	a0,s0
    55c0:	0c000000 	jal	0 <func_80AEAC10>
    55c4:	02202825 	move	a1,s1
    55c8:	10000023 	b	5658 <EnRu1_Init+0x158>
    55cc:	8fbf002c 	lw	ra,44(sp)
    55d0:	02002025 	move	a0,s0
    55d4:	0c000000 	jal	0 <func_80AEAC10>
    55d8:	02202825 	move	a1,s1
    55dc:	1000001e 	b	5658 <EnRu1_Init+0x158>
    55e0:	8fbf002c 	lw	ra,44(sp)
    55e4:	02002025 	move	a0,s0
    55e8:	0c000000 	jal	0 <func_80AEAC10>
    55ec:	02202825 	move	a1,s1
    55f0:	10000019 	b	5658 <EnRu1_Init+0x158>
    55f4:	8fbf002c 	lw	ra,44(sp)
    55f8:	02002025 	move	a0,s0
    55fc:	0c000000 	jal	0 <func_80AEAC10>
    5600:	02202825 	move	a1,s1
    5604:	10000014 	b	5658 <EnRu1_Init+0x158>
    5608:	8fbf002c 	lw	ra,44(sp)
    560c:	02002025 	move	a0,s0
    5610:	0c000000 	jal	0 <func_80AEAC10>
    5614:	02202825 	move	a1,s1
    5618:	1000000f 	b	5658 <EnRu1_Init+0x158>
    561c:	8fbf002c 	lw	ra,44(sp)
    5620:	02002025 	move	a0,s0
    5624:	0c000000 	jal	0 <func_80AEAC10>
    5628:	02202825 	move	a1,s1
    562c:	1000000a 	b	5658 <EnRu1_Init+0x158>
    5630:	8fbf002c 	lw	ra,44(sp)
    5634:	0c000000 	jal	0 <func_80AEAC10>
    5638:	02002025 	move	a0,s0
    563c:	0c000000 	jal	0 <func_80AEAC10>
    5640:	02002025 	move	a0,s0
    5644:	3c040000 	lui	a0,0x0
    5648:	248400cc 	addiu	a0,a0,204
    564c:	0c000000 	jal	0 <func_80AEAC10>
    5650:	00402825 	move	a1,v0
    5654:	8fbf002c 	lw	ra,44(sp)
    5658:	8fb00024 	lw	s0,36(sp)
    565c:	8fb10028 	lw	s1,40(sp)
    5660:	03e00008 	jr	ra
    5664:	27bd0030 	addiu	sp,sp,48

00005668 <func_80AF0278>:
    5668:	24010008 	li	at,8
    566c:	10c10006 	beq	a2,at,5688 <func_80AF0278+0x20>
    5670:	afa50004 	sw	a1,4(sp)
    5674:	2401000f 	li	at,15
    5678:	10c1000d 	beq	a2,at,56b0 <func_80AF0278+0x48>
    567c:	2482037c 	addiu	v0,a0,892
    5680:	03e00008 	jr	ra
    5684:	00000000 	nop
    5688:	24820382 	addiu	v0,a0,898
    568c:	844f0002 	lh	t7,2(v0)
    5690:	84ee0000 	lh	t6,0(a3)
    5694:	84f90002 	lh	t9,2(a3)
    5698:	01cfc021 	addu	t8,t6,t7
    569c:	a4f80000 	sh	t8,0(a3)
    56a0:	84480000 	lh	t0,0(v0)
    56a4:	03284823 	subu	t1,t9,t0
    56a8:	03e00008 	jr	ra
    56ac:	a4e90002 	sh	t1,2(a3)
    56b0:	84ea0000 	lh	t2,0(a3)
    56b4:	844b0002 	lh	t3,2(v0)
    56b8:	84ed0004 	lh	t5,4(a3)
    56bc:	014b6021 	addu	t4,t2,t3
    56c0:	a4ec0000 	sh	t4,0(a3)
    56c4:	844e0000 	lh	t6,0(v0)
    56c8:	01ae7821 	addu	t7,t5,t6
    56cc:	a4ef0004 	sh	t7,4(a3)
    56d0:	03e00008 	jr	ra
    56d4:	00000000 	nop

000056d8 <EnRu1_OverrideLimbDraw>:
    56d8:	27bdffe8 	addiu	sp,sp,-24
    56dc:	8fae002c 	lw	t6,44(sp)
    56e0:	afbf0014 	sw	ra,20(sp)
    56e4:	afa40018 	sw	a0,24(sp)
    56e8:	afa5001c 	sw	a1,28(sp)
    56ec:	afa60020 	sw	a2,32(sp)
    56f0:	afa70024 	sw	a3,36(sp)
    56f4:	8dc20290 	lw	v0,656(t6)
    56f8:	00a03025 	move	a2,a1
    56fc:	3c040000 	lui	a0,0x0
    5700:	0440000a 	bltz	v0,572c <EnRu1_OverrideLimbDraw+0x54>
    5704:	00000000 	nop
    5708:	1c400008 	bgtz	v0,572c <EnRu1_OverrideLimbDraw+0x54>
    570c:	00027880 	sll	t7,v0,0x2
    5710:	3c030000 	lui	v1,0x0
    5714:	006f1821 	addu	v1,v1,t7
    5718:	8c6311f4 	lw	v1,4596(v1)
    571c:	8fa50018 	lw	a1,24(sp)
    5720:	8fa70028 	lw	a3,40(sp)
    5724:	14600005 	bnez	v1,573c <EnRu1_OverrideLimbDraw+0x64>
    5728:	00000000 	nop
    572c:	0c000000 	jal	0 <func_80AEAC10>
    5730:	248400e8 	addiu	a0,a0,232
    5734:	10000004 	b	5748 <EnRu1_OverrideLimbDraw+0x70>
    5738:	8fbf0014 	lw	ra,20(sp)
    573c:	0060f809 	jalr	v1
    5740:	8fa4002c 	lw	a0,44(sp)
    5744:	8fbf0014 	lw	ra,20(sp)
    5748:	27bd0018 	addiu	sp,sp,24
    574c:	00001025 	move	v0,zero
    5750:	03e00008 	jr	ra
    5754:	00000000 	nop

00005758 <EnRu1_PostLimbDraw>:
    5758:	27bdffc8 	addiu	sp,sp,-56
    575c:	2401000f 	li	at,15
    5760:	afbf0014 	sw	ra,20(sp)
    5764:	afa40038 	sw	a0,56(sp)
    5768:	afa60040 	sw	a2,64(sp)
    576c:	14a10019 	bne	a1,at,57d4 <EnRu1_PostLimbDraw+0x7c>
    5770:	afa70044 	sw	a3,68(sp)
    5774:	3c0e0000 	lui	t6,0x0
    5778:	25ce11f8 	addiu	t6,t6,4600
    577c:	8dd80000 	lw	t8,0(t6)
    5780:	27a40028 	addiu	a0,sp,40
    5784:	27a5001c 	addiu	a1,sp,28
    5788:	ac980000 	sw	t8,0(a0)
    578c:	8dcf0004 	lw	t7,4(t6)
    5790:	ac8f0004 	sw	t7,4(a0)
    5794:	8dd80008 	lw	t8,8(t6)
    5798:	0c000000 	jal	0 <func_80AEAC10>
    579c:	ac980008 	sw	t8,8(a0)
    57a0:	8fa20048 	lw	v0,72(sp)
    57a4:	c7a4001c 	lwc1	$f4,28(sp)
    57a8:	84590030 	lh	t9,48(v0)
    57ac:	e4440038 	swc1	$f4,56(v0)
    57b0:	c7a60020 	lwc1	$f6,32(sp)
    57b4:	84480032 	lh	t0,50(v0)
    57b8:	84490034 	lh	t1,52(v0)
    57bc:	e446003c 	swc1	$f6,60(v0)
    57c0:	c7a80024 	lwc1	$f8,36(sp)
    57c4:	a4590044 	sh	t9,68(v0)
    57c8:	a4480046 	sh	t0,70(v0)
    57cc:	a4490048 	sh	t1,72(v0)
    57d0:	e4480040 	swc1	$f8,64(v0)
    57d4:	8fbf0014 	lw	ra,20(sp)
    57d8:	27bd0038 	addiu	sp,sp,56
    57dc:	03e00008 	jr	ra
    57e0:	00000000 	nop

000057e4 <func_80AF03F4>:
    57e4:	afa40000 	sw	a0,0(sp)
    57e8:	03e00008 	jr	ra
    57ec:	afa50004 	sw	a1,4(sp)

000057f0 <func_80AF0400>:
    57f0:	27bdff78 	addiu	sp,sp,-136
    57f4:	afbf002c 	sw	ra,44(sp)
    57f8:	afb00028 	sw	s0,40(sp)
    57fc:	afa40088 	sw	a0,136(sp)
    5800:	afa5008c 	sw	a1,140(sp)
    5804:	8482025c 	lh	v0,604(a0)
    5808:	3c180000 	lui	t8,0x0
    580c:	3c0a0000 	lui	t2,0x0
    5810:	00027880 	sll	t7,v0,0x2
    5814:	030fc021 	addu	t8,t8,t7
    5818:	8f180058 	lw	t8,88(t8)
    581c:	3c060000 	lui	a2,0x0
    5820:	24c60124 	addiu	a2,a2,292
    5824:	afb80078 	sw	t8,120(sp)
    5828:	84830260 	lh	v1,608(a0)
    582c:	27a40054 	addiu	a0,sp,84
    5830:	24070502 	li	a3,1282
    5834:	0003c880 	sll	t9,v1,0x2
    5838:	01595021 	addu	t2,t2,t9
    583c:	8d4a0070 	lw	t2,112(t2)
    5840:	afaa006c 	sw	t2,108(sp)
    5844:	8ca50000 	lw	a1,0(a1)
    5848:	0c000000 	jal	0 <func_80AEAC10>
    584c:	00a08025 	move	s0,a1
    5850:	8fac008c 	lw	t4,140(sp)
    5854:	0c000000 	jal	0 <func_80AEAC10>
    5858:	8d840000 	lw	a0,0(t4)
    585c:	8fa90078 	lw	t1,120(sp)
    5860:	8e0202c0 	lw	v0,704(s0)
    5864:	3c070000 	lui	a3,0x0
    5868:	0009c100 	sll	t8,t1,0x4
    586c:	00187702 	srl	t6,t8,0x1c
    5870:	3c0fdb06 	lui	t7,0xdb06
    5874:	244d0008 	addiu	t5,v0,8
    5878:	ae0d02c0 	sw	t5,704(s0)
    587c:	35ef0020 	ori	t7,t7,0x20
    5880:	000ec880 	sll	t9,t6,0x2
    5884:	24e70000 	addiu	a3,a3,0
    5888:	00f92021 	addu	a0,a3,t9
    588c:	ac4f0000 	sw	t7,0(v0)
    5890:	8c8a0000 	lw	t2,0(a0)
    5894:	3c0800ff 	lui	t0,0xff
    5898:	3508ffff 	ori	t0,t0,0xffff
    589c:	01282824 	and	a1,t1,t0
    58a0:	3c068000 	lui	a2,0x8000
    58a4:	01455821 	addu	t3,t2,a1
    58a8:	01666021 	addu	t4,t3,a2
    58ac:	ac4c0004 	sw	t4,4(v0)
    58b0:	8e0202c0 	lw	v0,704(s0)
    58b4:	3c09db06 	lui	t1,0xdb06
    58b8:	35290024 	ori	t1,t1,0x24
    58bc:	244d0008 	addiu	t5,v0,8
    58c0:	ae0d02c0 	sw	t5,704(s0)
    58c4:	ac490000 	sw	t1,0(v0)
    58c8:	8c8f0000 	lw	t7,0(a0)
    58cc:	01e5c021 	addu	t8,t7,a1
    58d0:	03067021 	addu	t6,t8,a2
    58d4:	ac4e0004 	sw	t6,4(v0)
    58d8:	8fa4006c 	lw	a0,108(sp)
    58dc:	8e0202c0 	lw	v0,704(s0)
    58e0:	00045100 	sll	t2,a0,0x4
    58e4:	000a5f02 	srl	t3,t2,0x1c
    58e8:	24590008 	addiu	t9,v0,8
    58ec:	ae1902c0 	sw	t9,704(s0)
    58f0:	000b6080 	sll	t4,t3,0x2
    58f4:	00ec6821 	addu	t5,a3,t4
    58f8:	ac490000 	sw	t1,0(v0)
    58fc:	8daf0000 	lw	t7,0(t5)
    5900:	0088c024 	and	t8,a0,t0
    5904:	240c00ff 	li	t4,255
    5908:	01f87021 	addu	t6,t7,t8
    590c:	01c6c821 	addu	t9,t6,a2
    5910:	ac590004 	sw	t9,4(v0)
    5914:	8e0202c0 	lw	v0,704(s0)
    5918:	3c0bfb00 	lui	t3,0xfb00
    591c:	3c180000 	lui	t8,0x0
    5920:	244a0008 	addiu	t2,v0,8
    5924:	ae0a02c0 	sw	t2,704(s0)
    5928:	ac4c0004 	sw	t4,4(v0)
    592c:	ac4b0000 	sw	t3,0(v0)
    5930:	8e0202c0 	lw	v0,704(s0)
    5934:	3c0fdb06 	lui	t7,0xdb06
    5938:	35ef0030 	ori	t7,t7,0x30
    593c:	244d0008 	addiu	t5,v0,8
    5940:	ae0d02c0 	sw	t5,704(s0)
    5944:	27180010 	addiu	t8,t8,16
    5948:	ac580004 	sw	t8,4(v0)
    594c:	ac4f0000 	sw	t7,0(v0)
    5950:	8fa30088 	lw	v1,136(sp)
    5954:	3c190000 	lui	t9,0x0
    5958:	3c0e0000 	lui	t6,0x0
    595c:	2462014c 	addiu	v0,v1,332
    5960:	8c450004 	lw	a1,4(v0)
    5964:	8c460020 	lw	a2,32(v0)
    5968:	90470002 	lbu	a3,2(v0)
    596c:	25ce0000 	addiu	t6,t6,0
    5970:	27390000 	addiu	t9,t9,0
    5974:	afb90014 	sw	t9,20(sp)
    5978:	afae0010 	sw	t6,16(sp)
    597c:	afa30018 	sw	v1,24(sp)
    5980:	8e0a02c0 	lw	t2,704(s0)
    5984:	8fa4008c 	lw	a0,140(sp)
    5988:	0c000000 	jal	0 <func_80AEAC10>
    598c:	afaa001c 	sw	t2,28(sp)
    5990:	ae0202c0 	sw	v0,704(s0)
    5994:	8fab008c 	lw	t3,140(sp)
    5998:	3c060000 	lui	a2,0x0
    599c:	24c60134 	addiu	a2,a2,308
    59a0:	27a40054 	addiu	a0,sp,84
    59a4:	2407051d 	li	a3,1309
    59a8:	0c000000 	jal	0 <func_80AEAC10>
    59ac:	8d650000 	lw	a1,0(t3)
    59b0:	8fbf002c 	lw	ra,44(sp)
    59b4:	8fb00028 	lw	s0,40(sp)
    59b8:	27bd0088 	addiu	sp,sp,136
    59bc:	03e00008 	jr	ra
    59c0:	00000000 	nop

000059c4 <func_80AF05D4>:
    59c4:	27bdff78 	addiu	sp,sp,-136
    59c8:	afbf002c 	sw	ra,44(sp)
    59cc:	afb10028 	sw	s1,40(sp)
    59d0:	afb00024 	sw	s0,36(sp)
    59d4:	afa5008c 	sw	a1,140(sp)
    59d8:	8482025c 	lh	v0,604(a0)
    59dc:	3c0f0000 	lui	t7,0x0
    59e0:	3c190000 	lui	t9,0x0
    59e4:	00027080 	sll	t6,v0,0x2
    59e8:	01ee7821 	addu	t7,t7,t6
    59ec:	8def0058 	lw	t7,88(t7)
    59f0:	00808825 	move	s1,a0
    59f4:	3c060000 	lui	a2,0x0
    59f8:	afaf0078 	sw	t7,120(sp)
    59fc:	84830260 	lh	v1,608(a0)
    5a00:	27a40054 	addiu	a0,sp,84
    5a04:	24c60144 	addiu	a2,a2,324
    5a08:	0003c080 	sll	t8,v1,0x2
    5a0c:	0338c821 	addu	t9,t9,t8
    5a10:	8f390070 	lw	t9,112(t9)
    5a14:	2407052c 	li	a3,1324
    5a18:	afb9006c 	sw	t9,108(sp)
    5a1c:	8ca50000 	lw	a1,0(a1)
    5a20:	0c000000 	jal	0 <func_80AEAC10>
    5a24:	00a08025 	move	s0,a1
    5a28:	8fab008c 	lw	t3,140(sp)
    5a2c:	0c000000 	jal	0 <func_80AEAC10>
    5a30:	8d640000 	lw	a0,0(t3)
    5a34:	8fa90078 	lw	t1,120(sp)
    5a38:	8e0202d0 	lw	v0,720(s0)
    5a3c:	3c070000 	lui	a3,0x0
    5a40:	00097100 	sll	t6,t1,0x4
    5a44:	000e7f02 	srl	t7,t6,0x1c
    5a48:	3c0ddb06 	lui	t5,0xdb06
    5a4c:	244c0008 	addiu	t4,v0,8
    5a50:	ae0c02d0 	sw	t4,720(s0)
    5a54:	35ad0020 	ori	t5,t5,0x20
    5a58:	000fc080 	sll	t8,t7,0x2
    5a5c:	24e70000 	addiu	a3,a3,0
    5a60:	00f82021 	addu	a0,a3,t8
    5a64:	ac4d0000 	sw	t5,0(v0)
    5a68:	8c990000 	lw	t9,0(a0)
    5a6c:	3c0800ff 	lui	t0,0xff
    5a70:	3508ffff 	ori	t0,t0,0xffff
    5a74:	01282824 	and	a1,t1,t0
    5a78:	3c068000 	lui	a2,0x8000
    5a7c:	03255021 	addu	t2,t9,a1
    5a80:	01465821 	addu	t3,t2,a2
    5a84:	ac4b0004 	sw	t3,4(v0)
    5a88:	8e0202d0 	lw	v0,720(s0)
    5a8c:	3c09db06 	lui	t1,0xdb06
    5a90:	35290024 	ori	t1,t1,0x24
    5a94:	244c0008 	addiu	t4,v0,8
    5a98:	ae0c02d0 	sw	t4,720(s0)
    5a9c:	ac490000 	sw	t1,0(v0)
    5aa0:	8c8d0000 	lw	t5,0(a0)
    5aa4:	01a57021 	addu	t6,t5,a1
    5aa8:	01c67821 	addu	t7,t6,a2
    5aac:	ac4f0004 	sw	t7,4(v0)
    5ab0:	8fa4006c 	lw	a0,108(sp)
    5ab4:	8e0202d0 	lw	v0,720(s0)
    5ab8:	0004c900 	sll	t9,a0,0x4
    5abc:	00195702 	srl	t2,t9,0x1c
    5ac0:	24580008 	addiu	t8,v0,8
    5ac4:	ae1802d0 	sw	t8,720(s0)
    5ac8:	000a5880 	sll	t3,t2,0x2
    5acc:	00eb6021 	addu	t4,a3,t3
    5ad0:	ac490000 	sw	t1,0(v0)
    5ad4:	8d8d0000 	lw	t5,0(t4)
    5ad8:	00887024 	and	t6,a0,t0
    5adc:	3c0afb00 	lui	t2,0xfb00
    5ae0:	01ae7821 	addu	t7,t5,t6
    5ae4:	01e6c021 	addu	t8,t7,a2
    5ae8:	ac580004 	sw	t8,4(v0)
    5aec:	8e0202d0 	lw	v0,720(s0)
    5af0:	3c0f0000 	lui	t7,0x0
    5af4:	3c0edb06 	lui	t6,0xdb06
    5af8:	24590008 	addiu	t9,v0,8
    5afc:	ae1902d0 	sw	t9,720(s0)
    5b00:	ac4a0000 	sw	t2,0(v0)
    5b04:	8e2b02a8 	lw	t3,680(s1)
    5b08:	35ce0030 	ori	t6,t6,0x30
    5b0c:	25ef0000 	addiu	t7,t7,0
    5b10:	316c00ff 	andi	t4,t3,0xff
    5b14:	ac4c0004 	sw	t4,4(v0)
    5b18:	8e0202d0 	lw	v0,720(s0)
    5b1c:	3c180000 	lui	t8,0x0
    5b20:	27180000 	addiu	t8,t8,0
    5b24:	244d0008 	addiu	t5,v0,8
    5b28:	ae0d02d0 	sw	t5,720(s0)
    5b2c:	ac4f0004 	sw	t7,4(v0)
    5b30:	ac4e0000 	sw	t6,0(v0)
    5b34:	2622014c 	addiu	v0,s1,332
    5b38:	8c450004 	lw	a1,4(v0)
    5b3c:	8c460020 	lw	a2,32(v0)
    5b40:	90470002 	lbu	a3,2(v0)
    5b44:	afb10018 	sw	s1,24(sp)
    5b48:	afa00014 	sw	zero,20(sp)
    5b4c:	afb80010 	sw	t8,16(sp)
    5b50:	8e1902d0 	lw	t9,720(s0)
    5b54:	8fa4008c 	lw	a0,140(sp)
    5b58:	0c000000 	jal	0 <func_80AEAC10>
    5b5c:	afb9001c 	sw	t9,28(sp)
    5b60:	ae0202d0 	sw	v0,720(s0)
    5b64:	8faa008c 	lw	t2,140(sp)
    5b68:	3c060000 	lui	a2,0x0
    5b6c:	24c60154 	addiu	a2,a2,340
    5b70:	27a40054 	addiu	a0,sp,84
    5b74:	24070549 	li	a3,1353
    5b78:	0c000000 	jal	0 <func_80AEAC10>
    5b7c:	8d450000 	lw	a1,0(t2)
    5b80:	8fbf002c 	lw	ra,44(sp)
    5b84:	8fb00024 	lw	s0,36(sp)
    5b88:	8fb10028 	lw	s1,40(sp)
    5b8c:	03e00008 	jr	ra
    5b90:	27bd0088 	addiu	sp,sp,136

00005b94 <EnRu1_Draw>:
    5b94:	27bdffe8 	addiu	sp,sp,-24
    5b98:	afbf0014 	sw	ra,20(sp)
    5b9c:	8c820268 	lw	v0,616(a0)
    5ba0:	04400008 	bltz	v0,5bc4 <EnRu1_Draw+0x30>
    5ba4:	28410003 	slti	at,v0,3
    5ba8:	10200006 	beqz	at,5bc4 <EnRu1_Draw+0x30>
    5bac:	00027080 	sll	t6,v0,0x2
    5bb0:	3c030000 	lui	v1,0x0
    5bb4:	006e1821 	addu	v1,v1,t6
    5bb8:	8c631204 	lw	v1,4612(v1)
    5bbc:	14600006 	bnez	v1,5bd8 <EnRu1_Draw+0x44>
    5bc0:	00000000 	nop
    5bc4:	3c040000 	lui	a0,0x0
    5bc8:	0c000000 	jal	0 <func_80AEAC10>
    5bcc:	24840164 	addiu	a0,a0,356
    5bd0:	10000004 	b	5be4 <EnRu1_Draw+0x50>
    5bd4:	8fbf0014 	lw	ra,20(sp)
    5bd8:	0060f809 	jalr	v1
    5bdc:	00000000 	nop
    5be0:	8fbf0014 	lw	ra,20(sp)
    5be4:	27bd0018 	addiu	sp,sp,24
    5be8:	03e00008 	jr	ra
    5bec:	00000000 	nop
