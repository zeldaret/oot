
build/src/overlays/actors/ovl_En_Dns/z_en_dns.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDns_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afbf002c 	sw	ra,44(sp)
       8:	afb00028 	sw	s0,40(sp)
       c:	afa50044 	sw	a1,68(sp)
      10:	8486001c 	lh	a2,28(a0)
      14:	00808025 	move	s0,a0
      18:	24010006 	li	at,6
      1c:	04c10009 	bgez	a2,44 <EnDns_Init+0x44>
      20:	3c040000 	lui	a0,0x0
      24:	3c040000 	lui	a0,0x0
      28:	24840000 	addiu	a0,a0,0
      2c:	0c000000 	jal	0 <EnDns_Init>
      30:	00c02825 	move	a1,a2
      34:	0c000000 	jal	0 <EnDns_Init>
      38:	02002025 	move	a0,s0
      3c:	10000055 	b	194 <EnDns_Init+0x194>
      40:	8fbf002c 	lw	ra,44(sp)
      44:	14c1000d 	bne	a2,at,7c <EnDns_Init+0x7c>
      48:	24840000 	addiu	a0,a0,0
      4c:	3c0e0000 	lui	t6,0x0
      50:	8dce0004 	lw	t6,4(t6)
      54:	24010005 	li	at,5
      58:	24020011 	li	v0,17
      5c:	11c00003 	beqz	t6,6c <EnDns_Init+0x6c>
      60:	240f0003 	li	t7,3
      64:	10000001 	b	6c <EnDns_Init+0x6c>
      68:	24020005 	li	v0,5
      6c:	54410004 	bnel	v0,at,80 <EnDns_Init+0x80>
      70:	0006c080 	sll	t8,a2,0x2
      74:	a60f001c 	sh	t7,28(s0)
      78:	8606001c 	lh	a2,28(s0)
      7c:	0006c080 	sll	t8,a2,0x2
      80:	3c050000 	lui	a1,0x0
      84:	00b82821 	addu	a1,a1,t8
      88:	0c000000 	jal	0 <EnDns_Init>
      8c:	8ca50000 	lw	a1,0(a1)
      90:	3c050000 	lui	a1,0x0
      94:	24a50000 	addiu	a1,a1,0
      98:	0c000000 	jal	0 <EnDns_Init>
      9c:	02002025 	move	a0,s0
      a0:	3c060600 	lui	a2,0x600
      a4:	3c070600 	lui	a3,0x600
      a8:	26190190 	addiu	t9,s0,400
      ac:	260801fc 	addiu	t0,s0,508
      b0:	24090012 	li	t1,18
      b4:	afa90018 	sw	t1,24(sp)
      b8:	afa80014 	sw	t0,20(sp)
      bc:	afb90010 	sw	t9,16(sp)
      c0:	24e709a0 	addiu	a3,a3,2464
      c4:	24c641a8 	addiu	a2,a2,16808
      c8:	8fa40044 	lw	a0,68(sp)
      cc:	0c000000 	jal	0 <EnDns_Init>
      d0:	2605014c 	addiu	a1,s0,332
      d4:	2605026c 	addiu	a1,s0,620
      d8:	afa50034 	sw	a1,52(sp)
      dc:	0c000000 	jal	0 <EnDns_Init>
      e0:	8fa40044 	lw	a0,68(sp)
      e4:	3c070000 	lui	a3,0x0
      e8:	8fa50034 	lw	a1,52(sp)
      ec:	24e70000 	addiu	a3,a3,0
      f0:	8fa40044 	lw	a0,68(sp)
      f4:	0c000000 	jal	0 <EnDns_Init>
      f8:	02003025 	move	a2,s0
      fc:	3c060000 	lui	a2,0x0
     100:	24c60000 	addiu	a2,a2,0
     104:	260400b4 	addiu	a0,s0,180
     108:	24050000 	li	a1,0
     10c:	0c000000 	jal	0 <EnDns_Init>
     110:	3c07420c 	lui	a3,0x420c
     114:	860a001c 	lh	t2,28(s0)
     118:	3c0c0000 	lui	t4,0x0
     11c:	3c053c23 	lui	a1,0x3c23
     120:	000a5840 	sll	t3,t2,0x1
     124:	018b6021 	addu	t4,t4,t3
     128:	958c0000 	lhu	t4,0(t4)
     12c:	34a5d70a 	ori	a1,a1,0xd70a
     130:	02002025 	move	a0,s0
     134:	0c000000 	jal	0 <EnDns_Init>
     138:	a60c010e 	sh	t4,270(s0)
     13c:	44800000 	mtc1	zero,$f0
     140:	860e001c 	lh	t6,28(s0)
     144:	3c01bf80 	lui	at,0xbf80
     148:	44812000 	mtc1	at,$f4
     14c:	24020001 	li	v0,1
     150:	240d00ff 	li	t5,255
     154:	3c180000 	lui	t8,0x0
     158:	000e7880 	sll	t7,t6,0x2
     15c:	a20d00ae 	sb	t5,174(s0)
     160:	a20202bb 	sb	v0,699(s0)
     164:	a20202bc 	sb	v0,700(s0)
     168:	a20002bd 	sb	zero,701(s0)
     16c:	030fc021 	addu	t8,t8,t7
     170:	e6000068 	swc1	$f0,104(s0)
     174:	e6000060 	swc1	$f0,96(s0)
     178:	e604006c 	swc1	$f4,108(s0)
     17c:	8f180000 	lw	t8,0(t8)
     180:	3c190000 	lui	t9,0x0
     184:	27390000 	addiu	t9,t9,0
     188:	ae190268 	sw	t9,616(s0)
     18c:	ae1802c0 	sw	t8,704(s0)
     190:	8fbf002c 	lw	ra,44(sp)
     194:	8fb00028 	lw	s0,40(sp)
     198:	27bd0040 	addiu	sp,sp,64
     19c:	03e00008 	jr	ra
     1a0:	00000000 	nop

000001a4 <EnDns_Destroy>:
     1a4:	27bdffe8 	addiu	sp,sp,-24
     1a8:	00803025 	move	a2,a0
     1ac:	afbf0014 	sw	ra,20(sp)
     1b0:	00a02025 	move	a0,a1
     1b4:	0c000000 	jal	0 <EnDns_Init>
     1b8:	24c5026c 	addiu	a1,a2,620
     1bc:	8fbf0014 	lw	ra,20(sp)
     1c0:	27bd0018 	addiu	sp,sp,24
     1c4:	03e00008 	jr	ra
     1c8:	00000000 	nop

000001cc <func_809EF51C>:
     1cc:	27bdffd0 	addiu	sp,sp,-48
     1d0:	afa50034 	sw	a1,52(sp)
     1d4:	93ae0037 	lbu	t6,55(sp)
     1d8:	3c180000 	lui	t8,0x0
     1dc:	27180000 	addiu	t8,t8,0
     1e0:	000e7880 	sll	t7,t6,0x2
     1e4:	01ee7823 	subu	t7,t7,t6
     1e8:	000f7880 	sll	t7,t7,0x2
     1ec:	afbf0024 	sw	ra,36(sp)
     1f0:	afa40030 	sw	a0,48(sp)
     1f4:	01f81821 	addu	v1,t7,t8
     1f8:	8c640000 	lw	a0,0(v1)
     1fc:	0c000000 	jal	0 <EnDns_Init>
     200:	afa30028 	sw	v1,40(sp)
     204:	8fa80030 	lw	t0,48(sp)
     208:	93b90037 	lbu	t9,55(sp)
     20c:	44822000 	mtc1	v0,$f4
     210:	8fa30028 	lw	v1,40(sp)
     214:	a11902ba 	sb	t9,698(t0)
     218:	468021a0 	cvt.s.w	$f6,$f4
     21c:	c4680008 	lwc1	$f8,8(v1)
     220:	90690004 	lbu	t1,4(v1)
     224:	3c063f80 	lui	a2,0x3f80
     228:	24070000 	li	a3,0
     22c:	2504014c 	addiu	a0,t0,332
     230:	e7a60010 	swc1	$f6,16(sp)
     234:	8c650000 	lw	a1,0(v1)
     238:	e7a80018 	swc1	$f8,24(sp)
     23c:	0c000000 	jal	0 <EnDns_Init>
     240:	afa90014 	sw	t1,20(sp)
     244:	8fbf0024 	lw	ra,36(sp)
     248:	27bd0030 	addiu	sp,sp,48
     24c:	03e00008 	jr	ra
     250:	00000000 	nop

00000254 <func_809EF5A4>:
     254:	3c030000 	lui	v1,0x0
     258:	24630000 	addiu	v1,v1,0
     25c:	3c0f0000 	lui	t7,0x0
     260:	8def001c 	lw	t7,28(t7)
     264:	8c6e00a0 	lw	t6,160(v1)
     268:	3c190000 	lui	t9,0x0
     26c:	93390007 	lbu	t9,7(t9)
     270:	01cfc024 	and	t8,t6,t7
     274:	3c020000 	lui	v0,0x0
     278:	03384007 	srav	t0,t8,t9
     27c:	00084840 	sll	t1,t0,0x1
     280:	00491021 	addu	v0,v0,t1
     284:	94420038 	lhu	v0,56(v0)
     288:	27bdffe8 	addiu	sp,sp,-24
     28c:	afbf0014 	sw	ra,20(sp)
     290:	10400009 	beqz	v0,2b8 <func_809EF5A4+0x64>
     294:	3c0a0000 	lui	t2,0x0
     298:	914a0001 	lbu	t2,1(t2)
     29c:	006a5821 	addu	t3,v1,t2
     2a0:	816c008c 	lb	t4,140(t3)
     2a4:	0182082a 	slt	at,t4,v0
     2a8:	54200004 	bnezl	at,2bc <func_809EF5A4+0x68>
     2ac:	8c8e02c0 	lw	t6,704(a0)
     2b0:	10000011 	b	2f8 <func_809EF5A4+0xa4>
     2b4:	24020001 	li	v0,1
     2b8:	8c8e02c0 	lw	t6,704(a0)
     2bc:	846d0034 	lh	t5,52(v1)
     2c0:	85cf0000 	lh	t7,0(t6)
     2c4:	01af082a 	slt	at,t5,t7
     2c8:	10200003 	beqz	at,2d8 <func_809EF5A4+0x84>
     2cc:	00000000 	nop
     2d0:	10000009 	b	2f8 <func_809EF5A4+0xa4>
     2d4:	00001025 	move	v0,zero
     2d8:	0c000000 	jal	0 <EnDns_Init>
     2dc:	24040001 	li	a0,1
     2e0:	240100ff 	li	at,255
     2e4:	54410004 	bnel	v0,at,2f8 <func_809EF5A4+0xa4>
     2e8:	24020004 	li	v0,4
     2ec:	10000002 	b	2f8 <func_809EF5A4+0xa4>
     2f0:	24020002 	li	v0,2
     2f4:	24020004 	li	v0,4
     2f8:	8fbf0014 	lw	ra,20(sp)
     2fc:	27bd0018 	addiu	sp,sp,24
     300:	03e00008 	jr	ra
     304:	00000000 	nop

00000308 <func_809EF658>:
     308:	3c030000 	lui	v1,0x0
     30c:	24630000 	addiu	v1,v1,0
     310:	3c0f0000 	lui	t7,0x0
     314:	8def0018 	lw	t7,24(t7)
     318:	8c6e00a0 	lw	t6,160(v1)
     31c:	3c190000 	lui	t9,0x0
     320:	93390006 	lbu	t9,6(t9)
     324:	01cfc024 	and	t8,t6,t7
     328:	3c020000 	lui	v0,0x0
     32c:	03384007 	srav	t0,t8,t9
     330:	00084840 	sll	t1,t0,0x1
     334:	00491021 	addu	v0,v0,t1
     338:	94420030 	lhu	v0,48(v0)
     33c:	27bdffe8 	addiu	sp,sp,-24
     340:	afbf0014 	sw	ra,20(sp)
     344:	10400009 	beqz	v0,36c <func_809EF658+0x64>
     348:	3c0a0000 	lui	t2,0x0
     34c:	914a0000 	lbu	t2,0(t2)
     350:	006a5821 	addu	t3,v1,t2
     354:	816c008c 	lb	t4,140(t3)
     358:	0182082a 	slt	at,t4,v0
     35c:	54200004 	bnezl	at,370 <func_809EF658+0x68>
     360:	8c8e02c0 	lw	t6,704(a0)
     364:	10000011 	b	3ac <func_809EF658+0xa4>
     368:	24020001 	li	v0,1
     36c:	8c8e02c0 	lw	t6,704(a0)
     370:	846d0034 	lh	t5,52(v1)
     374:	85cf0000 	lh	t7,0(t6)
     378:	01af082a 	slt	at,t5,t7
     37c:	10200003 	beqz	at,38c <func_809EF658+0x84>
     380:	00000000 	nop
     384:	10000009 	b	3ac <func_809EF658+0xa4>
     388:	00001025 	move	v0,zero
     38c:	0c000000 	jal	0 <EnDns_Init>
     390:	00002025 	move	a0,zero
     394:	240100ff 	li	at,255
     398:	54410004 	bnel	v0,at,3ac <func_809EF658+0xa4>
     39c:	24020004 	li	v0,4
     3a0:	10000002 	b	3ac <func_809EF658+0xa4>
     3a4:	24020002 	li	v0,2
     3a8:	24020004 	li	v0,4
     3ac:	8fbf0014 	lw	ra,20(sp)
     3b0:	27bd0018 	addiu	sp,sp,24
     3b4:	03e00008 	jr	ra
     3b8:	00000000 	nop

000003bc <func_809EF70C>:
     3bc:	8c8f02c0 	lw	t7,704(a0)
     3c0:	3c0e0000 	lui	t6,0x0
     3c4:	85ce0034 	lh	t6,52(t6)
     3c8:	85f80000 	lh	t8,0(t7)
     3cc:	24020004 	li	v0,4
     3d0:	01d8082a 	slt	at,t6,t8
     3d4:	10200003 	beqz	at,3e4 <func_809EF70C+0x28>
     3d8:	00000000 	nop
     3dc:	03e00008 	jr	ra
     3e0:	00001025 	move	v0,zero
     3e4:	03e00008 	jr	ra
     3e8:	00000000 	nop

000003ec <func_809EF73C>:
     3ec:	3c0e0000 	lui	t6,0x0
     3f0:	91ce0006 	lbu	t6,6(t6)
     3f4:	3c030000 	lui	v1,0x0
     3f8:	24630000 	addiu	v1,v1,0
     3fc:	006e1021 	addu	v0,v1,t6
     400:	904f0074 	lbu	t7,116(v0)
     404:	27bdffe8 	addiu	sp,sp,-24
     408:	240100ff 	li	at,255
     40c:	15e10003 	bne	t7,at,41c <func_809EF73C+0x30>
     410:	afbf0014 	sw	ra,20(sp)
     414:	10000022 	b	4a0 <func_809EF73C+0xb4>
     418:	24020003 	li	v0,3
     41c:	3c080000 	lui	t0,0x0
     420:	8d080014 	lw	t0,20(t0)
     424:	8c7900a0 	lw	t9,160(v1)
     428:	3c0a0000 	lui	t2,0x0
     42c:	914a0005 	lbu	t2,5(t2)
     430:	03284824 	and	t1,t9,t0
     434:	3c0d0000 	lui	t5,0x0
     438:	01495807 	srav	t3,t1,t2
     43c:	000b6040 	sll	t4,t3,0x1
     440:	01ac6821 	addu	t5,t5,t4
     444:	95ad0028 	lhu	t5,40(t5)
     448:	8058008c 	lb	t8,140(v0)
     44c:	030d082a 	slt	at,t8,t5
     450:	54200004 	bnezl	at,464 <func_809EF73C+0x78>
     454:	8c8f02c0 	lw	t7,704(a0)
     458:	10000011 	b	4a0 <func_809EF73C+0xb4>
     45c:	24020001 	li	v0,1
     460:	8c8f02c0 	lw	t7,704(a0)
     464:	846e0034 	lh	t6,52(v1)
     468:	85f90000 	lh	t9,0(t7)
     46c:	01d9082a 	slt	at,t6,t9
     470:	10200003 	beqz	at,480 <func_809EF73C+0x94>
     474:	00000000 	nop
     478:	10000009 	b	4a0 <func_809EF73C+0xb4>
     47c:	00001025 	move	v0,zero
     480:	0c000000 	jal	0 <EnDns_Init>
     484:	24040058 	li	a0,88
     488:	240100ff 	li	at,255
     48c:	54410004 	bnel	v0,at,4a0 <func_809EF73C+0xb4>
     490:	24020004 	li	v0,4
     494:	10000002 	b	4a0 <func_809EF73C+0xb4>
     498:	24020002 	li	v0,2
     49c:	24020004 	li	v0,4
     4a0:	8fbf0014 	lw	ra,20(sp)
     4a4:	27bd0018 	addiu	sp,sp,24
     4a8:	03e00008 	jr	ra
     4ac:	00000000 	nop

000004b0 <func_809EF800>:
     4b0:	3c020000 	lui	v0,0x0
     4b4:	24420000 	addiu	v0,v0,0
     4b8:	3c0e0000 	lui	t6,0x0
     4bc:	8dce0010 	lw	t6,16(t6)
     4c0:	944f009c 	lhu	t7,156(v0)
     4c4:	01cfc024 	and	t8,t6,t7
     4c8:	53000004 	beqzl	t8,4dc <func_809EF800+0x2c>
     4cc:	8c8802c0 	lw	t0,704(a0)
     4d0:	03e00008 	jr	ra
     4d4:	24020001 	li	v0,1
     4d8:	8c8802c0 	lw	t0,704(a0)
     4dc:	84590034 	lh	t9,52(v0)
     4e0:	24020004 	li	v0,4
     4e4:	85090000 	lh	t1,0(t0)
     4e8:	0329082a 	slt	at,t9,t1
     4ec:	10200003 	beqz	at,4fc <func_809EF800+0x4c>
     4f0:	00000000 	nop
     4f4:	03e00008 	jr	ra
     4f8:	00001025 	move	v0,zero
     4fc:	03e00008 	jr	ra
     500:	00000000 	nop

00000504 <func_809EF854>:
     504:	3c020000 	lui	v0,0x0
     508:	24420000 	addiu	v0,v0,0
     50c:	3c0e0000 	lui	t6,0x0
     510:	8dce004c 	lw	t6,76(t6)
     514:	8c4f00a4 	lw	t7,164(v0)
     518:	3c190000 	lui	t9,0x0
     51c:	3c0b0000 	lui	t3,0x0
     520:	01cfc024 	and	t8,t6,t7
     524:	17000003 	bnez	t8,534 <func_809EF854+0x30>
     528:	3c0d0000 	lui	t5,0x0
     52c:	03e00008 	jr	ra
     530:	24020003 	li	v0,3
     534:	8c4a00a0 	lw	t2,160(v0)
     538:	8d6b0004 	lw	t3,4(t3)
     53c:	91ad0001 	lbu	t5,1(t5)
     540:	93390002 	lbu	t9,2(t9)
     544:	014b6024 	and	t4,t2,t3
     548:	01ac7007 	srav	t6,t4,t5
     54c:	000e7840 	sll	t7,t6,0x1
     550:	3c180000 	lui	t8,0x0
     554:	030fc021 	addu	t8,t8,t7
     558:	00594021 	addu	t0,v0,t9
     55c:	8109008c 	lb	t1,140(t0)
     560:	97180008 	lhu	t8,8(t8)
     564:	0138082a 	slt	at,t1,t8
     568:	54200004 	bnezl	at,57c <func_809EF854+0x78>
     56c:	8c8802c0 	lw	t0,704(a0)
     570:	03e00008 	jr	ra
     574:	24020001 	li	v0,1
     578:	8c8802c0 	lw	t0,704(a0)
     57c:	84590034 	lh	t9,52(v0)
     580:	24020004 	li	v0,4
     584:	850a0000 	lh	t2,0(t0)
     588:	032a082a 	slt	at,t9,t2
     58c:	10200003 	beqz	at,59c <func_809EF854+0x98>
     590:	00000000 	nop
     594:	03e00008 	jr	ra
     598:	00001025 	move	v0,zero
     59c:	03e00008 	jr	ra
     5a0:	00000000 	nop

000005a4 <func_809EF8F4>:
     5a4:	27bdffe8 	addiu	sp,sp,-24
     5a8:	afbf0014 	sw	ra,20(sp)
     5ac:	afa40018 	sw	a0,24(sp)
     5b0:	0c000000 	jal	0 <EnDns_Init>
     5b4:	24040003 	li	a0,3
     5b8:	240100ff 	li	at,255
     5bc:	14410003 	bne	v0,at,5cc <func_809EF8F4+0x28>
     5c0:	8fbf0014 	lw	ra,20(sp)
     5c4:	10000021 	b	64c <func_809EF8F4+0xa8>
     5c8:	24020003 	li	v0,3
     5cc:	3c020000 	lui	v0,0x0
     5d0:	24420000 	addiu	v0,v0,0
     5d4:	3c080000 	lui	t0,0x0
     5d8:	8d080000 	lw	t0,0(t0)
     5dc:	8c5900a0 	lw	t9,160(v0)
     5e0:	3c0a0000 	lui	t2,0x0
     5e4:	914a0000 	lbu	t2,0(t2)
     5e8:	3c0e0000 	lui	t6,0x0
     5ec:	91ce0003 	lbu	t6,3(t6)
     5f0:	03284824 	and	t1,t9,t0
     5f4:	01495807 	srav	t3,t1,t2
     5f8:	000b6040 	sll	t4,t3,0x1
     5fc:	3c0d0000 	lui	t5,0x0
     600:	01ac6821 	addu	t5,t5,t4
     604:	004e7821 	addu	t7,v0,t6
     608:	81f8008c 	lb	t8,140(t7)
     60c:	95ad0000 	lhu	t5,0(t5)
     610:	8faf0018 	lw	t7,24(sp)
     614:	030d082a 	slt	at,t8,t5
     618:	54200004 	bnezl	at,62c <func_809EF8F4+0x88>
     61c:	8df902c0 	lw	t9,704(t7)
     620:	1000000a 	b	64c <func_809EF8F4+0xa8>
     624:	24020001 	li	v0,1
     628:	8df902c0 	lw	t9,704(t7)
     62c:	844e0034 	lh	t6,52(v0)
     630:	24020004 	li	v0,4
     634:	87280000 	lh	t0,0(t9)
     638:	01c8082a 	slt	at,t6,t0
     63c:	10200003 	beqz	at,64c <func_809EF8F4+0xa8>
     640:	00000000 	nop
     644:	10000001 	b	64c <func_809EF8F4+0xa8>
     648:	00001025 	move	v0,zero
     64c:	03e00008 	jr	ra
     650:	27bd0018 	addiu	sp,sp,24

00000654 <func_809EF9A4>:
     654:	27bdffe8 	addiu	sp,sp,-24
     658:	afbf0014 	sw	ra,20(sp)
     65c:	0c000000 	jal	0 <EnDns_Init>
     660:	afa40018 	sw	a0,24(sp)
     664:	14400003 	bnez	v0,674 <func_809EF9A4+0x20>
     668:	8fbf0014 	lw	ra,20(sp)
     66c:	1000000c 	b	6a0 <func_809EF9A4+0x4c>
     670:	24020001 	li	v0,1
     674:	8faf0018 	lw	t7,24(sp)
     678:	3c0e0000 	lui	t6,0x0
     67c:	85ce0034 	lh	t6,52(t6)
     680:	8df802c0 	lw	t8,704(t7)
     684:	24020004 	li	v0,4
     688:	87190000 	lh	t9,0(t8)
     68c:	01d9082a 	slt	at,t6,t9
     690:	10200003 	beqz	at,6a0 <func_809EF9A4+0x4c>
     694:	00000000 	nop
     698:	10000001 	b	6a0 <func_809EF9A4+0x4c>
     69c:	00001025 	move	v0,zero
     6a0:	03e00008 	jr	ra
     6a4:	27bd0018 	addiu	sp,sp,24

000006a8 <func_809EF9F8>:
     6a8:	27bdffe8 	addiu	sp,sp,-24
     6ac:	afbf0014 	sw	ra,20(sp)
     6b0:	8c8e02c0 	lw	t6,704(a0)
     6b4:	85c40000 	lh	a0,0(t6)
     6b8:	00042023 	negu	a0,a0
     6bc:	00042400 	sll	a0,a0,0x10
     6c0:	0c000000 	jal	0 <EnDns_Init>
     6c4:	00042403 	sra	a0,a0,0x10
     6c8:	8fbf0014 	lw	ra,20(sp)
     6cc:	27bd0018 	addiu	sp,sp,24
     6d0:	03e00008 	jr	ra
     6d4:	00000000 	nop

000006d8 <func_809EFA28>:
     6d8:	27bdffe8 	addiu	sp,sp,-24
     6dc:	afbf0014 	sw	ra,20(sp)
     6e0:	8c8e02c0 	lw	t6,704(a0)
     6e4:	85c40000 	lh	a0,0(t6)
     6e8:	00042023 	negu	a0,a0
     6ec:	00042400 	sll	a0,a0,0x10
     6f0:	0c000000 	jal	0 <EnDns_Init>
     6f4:	00042403 	sra	a0,a0,0x10
     6f8:	8fbf0014 	lw	ra,20(sp)
     6fc:	27bd0018 	addiu	sp,sp,24
     700:	03e00008 	jr	ra
     704:	00000000 	nop

00000708 <func_809EFA58>:
     708:	3c020000 	lui	v0,0x0
     70c:	24420000 	addiu	v0,v0,0
     710:	944e0ef0 	lhu	t6,3824(v0)
     714:	27bdffe8 	addiu	sp,sp,-24
     718:	afbf0014 	sw	ra,20(sp)
     71c:	35cf0800 	ori	t7,t6,0x800
     720:	a44f0ef0 	sh	t7,3824(v0)
     724:	8c9802c0 	lw	t8,704(a0)
     728:	87040000 	lh	a0,0(t8)
     72c:	00042023 	negu	a0,a0
     730:	00042400 	sll	a0,a0,0x10
     734:	0c000000 	jal	0 <EnDns_Init>
     738:	00042403 	sra	a0,a0,0x10
     73c:	8fbf0014 	lw	ra,20(sp)
     740:	27bd0018 	addiu	sp,sp,24
     744:	03e00008 	jr	ra
     748:	00000000 	nop

0000074c <func_809EFA9C>:
     74c:	27bdffe8 	addiu	sp,sp,-24
     750:	afbf0014 	sw	ra,20(sp)
     754:	8c8e02c0 	lw	t6,704(a0)
     758:	85c40000 	lh	a0,0(t6)
     75c:	00042023 	negu	a0,a0
     760:	00042400 	sll	a0,a0,0x10
     764:	0c000000 	jal	0 <EnDns_Init>
     768:	00042403 	sra	a0,a0,0x10
     76c:	8fbf0014 	lw	ra,20(sp)
     770:	27bd0018 	addiu	sp,sp,24
     774:	03e00008 	jr	ra
     778:	00000000 	nop

0000077c <func_809EFACC>:
     77c:	27bdffe8 	addiu	sp,sp,-24
     780:	afbf0014 	sw	ra,20(sp)
     784:	8c8e02c0 	lw	t6,704(a0)
     788:	85c40000 	lh	a0,0(t6)
     78c:	00042023 	negu	a0,a0
     790:	00042400 	sll	a0,a0,0x10
     794:	0c000000 	jal	0 <EnDns_Init>
     798:	00042403 	sra	a0,a0,0x10
     79c:	8fbf0014 	lw	ra,20(sp)
     7a0:	27bd0018 	addiu	sp,sp,24
     7a4:	03e00008 	jr	ra
     7a8:	00000000 	nop

000007ac <func_809EFAFC>:
     7ac:	3c020000 	lui	v0,0x0
     7b0:	24420000 	addiu	v0,v0,0
     7b4:	944e0f2a 	lhu	t6,3882(v0)
     7b8:	27bdffe8 	addiu	sp,sp,-24
     7bc:	afbf0014 	sw	ra,20(sp)
     7c0:	35cf0004 	ori	t7,t6,0x4
     7c4:	a44f0f2a 	sh	t7,3882(v0)
     7c8:	8c9802c0 	lw	t8,704(a0)
     7cc:	87040000 	lh	a0,0(t8)
     7d0:	00042023 	negu	a0,a0
     7d4:	00042400 	sll	a0,a0,0x10
     7d8:	0c000000 	jal	0 <EnDns_Init>
     7dc:	00042403 	sra	a0,a0,0x10
     7e0:	8fbf0014 	lw	ra,20(sp)
     7e4:	27bd0018 	addiu	sp,sp,24
     7e8:	03e00008 	jr	ra
     7ec:	00000000 	nop

000007f0 <func_809EFB40>:
     7f0:	3c020000 	lui	v0,0x0
     7f4:	24420000 	addiu	v0,v0,0
     7f8:	944e0f2a 	lhu	t6,3882(v0)
     7fc:	27bdffe8 	addiu	sp,sp,-24
     800:	afbf0014 	sw	ra,20(sp)
     804:	35cf0008 	ori	t7,t6,0x8
     808:	a44f0f2a 	sh	t7,3882(v0)
     80c:	8c9802c0 	lw	t8,704(a0)
     810:	87040000 	lh	a0,0(t8)
     814:	00042023 	negu	a0,a0
     818:	00042400 	sll	a0,a0,0x10
     81c:	0c000000 	jal	0 <EnDns_Init>
     820:	00042403 	sra	a0,a0,0x10
     824:	8fbf0014 	lw	ra,20(sp)
     828:	27bd0018 	addiu	sp,sp,24
     82c:	03e00008 	jr	ra
     830:	00000000 	nop

00000834 <func_809EFB84>:
     834:	27bdffe8 	addiu	sp,sp,-24
     838:	afbf0014 	sw	ra,20(sp)
     83c:	afa5001c 	sw	a1,28(sp)
     840:	c4860164 	lwc1	$f6,356(a0)
     844:	c484015c 	lwc1	$f4,348(a0)
     848:	3c0e0000 	lui	t6,0x0
     84c:	25ce0000 	addiu	t6,t6,0
     850:	46062032 	c.eq.s	$f4,$f6
     854:	00002825 	move	a1,zero
     858:	45020004 	bc1fl	86c <func_809EFB84+0x38>
     85c:	8fbf0014 	lw	ra,20(sp)
     860:	0c000000 	jal	0 <EnDns_Init>
     864:	ac8e0268 	sw	t6,616(a0)
     868:	8fbf0014 	lw	ra,20(sp)
     86c:	27bd0018 	addiu	sp,sp,24
     870:	03e00008 	jr	ra
     874:	00000000 	nop

00000878 <func_809EFBC8>:
     878:	27bdffd8 	addiu	sp,sp,-40
     87c:	afb00020 	sw	s0,32(sp)
     880:	00808025 	move	s0,a0
     884:	afbf0024 	sw	ra,36(sp)
     888:	afa5002c 	sw	a1,44(sp)
     88c:	8605008a 	lh	a1,138(s0)
     890:	afa00010 	sw	zero,16(sp)
     894:	248400b6 	addiu	a0,a0,182
     898:	24060003 	li	a2,3
     89c:	0c000000 	jal	0 <EnDns_Init>
     8a0:	240707d0 	li	a3,2000
     8a4:	860e00b6 	lh	t6,182(s0)
     8a8:	02002025 	move	a0,s0
     8ac:	a60e0032 	sh	t6,50(s0)
     8b0:	0c000000 	jal	0 <EnDns_Init>
     8b4:	8fa5002c 	lw	a1,44(sp)
     8b8:	10400004 	beqz	v0,8cc <func_809EFBC8+0x54>
     8bc:	3c0f0000 	lui	t7,0x0
     8c0:	25ef0000 	addiu	t7,t7,0
     8c4:	1000001c 	b	938 <func_809EFBC8+0xc0>
     8c8:	ae0f0268 	sw	t7,616(s0)
     8cc:	9218027e 	lbu	t8,638(s0)
     8d0:	02002025 	move	a0,s0
     8d4:	33190002 	andi	t9,t8,0x2
     8d8:	57200005 	bnezl	t9,8f0 <func_809EFBC8+0x78>
     8dc:	8e090004 	lw	t1,4(s0)
     8e0:	9208010c 	lbu	t0,268(s0)
     8e4:	51000007 	beqzl	t0,904 <func_809EFBC8+0x8c>
     8e8:	8e0b0004 	lw	t3,4(s0)
     8ec:	8e090004 	lw	t1,4(s0)
     8f0:	3c010001 	lui	at,0x1
     8f4:	01215025 	or	t2,t1,at
     8f8:	10000006 	b	914 <func_809EFBC8+0x9c>
     8fc:	ae0a0004 	sw	t2,4(s0)
     900:	8e0b0004 	lw	t3,4(s0)
     904:	3c01fffe 	lui	at,0xfffe
     908:	3421ffff 	ori	at,at,0xffff
     90c:	01616024 	and	t4,t3,at
     910:	ae0c0004 	sw	t4,4(s0)
     914:	3c014302 	lui	at,0x4302
     918:	44813000 	mtc1	at,$f6
     91c:	c6040090 	lwc1	$f4,144(s0)
     920:	4606203c 	c.lt.s	$f4,$f6
     924:	00000000 	nop
     928:	45020004 	bc1fl	93c <func_809EFBC8+0xc4>
     92c:	8fbf0024 	lw	ra,36(sp)
     930:	0c000000 	jal	0 <EnDns_Init>
     934:	8fa5002c 	lw	a1,44(sp)
     938:	8fbf0024 	lw	ra,36(sp)
     93c:	8fb00020 	lw	s0,32(sp)
     940:	27bd0028 	addiu	sp,sp,40
     944:	03e00008 	jr	ra
     948:	00000000 	nop

0000094c <func_809EFC9C>:
     94c:	27bdffe0 	addiu	sp,sp,-32
     950:	afb00018 	sw	s0,24(sp)
     954:	00808025 	move	s0,a0
     958:	afbf001c 	sw	ra,28(sp)
     95c:	24a420d8 	addiu	a0,a1,8408
     960:	0c000000 	jal	0 <EnDns_Init>
     964:	afa50024 	sw	a1,36(sp)
     968:	24010004 	li	at,4
     96c:	1441003f 	bne	v0,at,a6c <L809EFD8C+0x30>
     970:	8fa60024 	lw	a2,36(sp)
     974:	00c02025 	move	a0,a2
     978:	0c000000 	jal	0 <EnDns_Init>
     97c:	afa60024 	sw	a2,36(sp)
     980:	1040003a 	beqz	v0,a6c <L809EFD8C+0x30>
     984:	8fa60024 	lw	a2,36(sp)
     988:	3c020001 	lui	v0,0x1
     98c:	00461021 	addu	v0,v0,a2
     990:	904204bd 	lbu	v0,1213(v0)
     994:	10400005 	beqz	v0,9ac <func_809EFC9C+0x60>
     998:	24010001 	li	at,1
     99c:	1041002e 	beq	v0,at,a58 <L809EFD8C+0x1c>
     9a0:	00c02025 	move	a0,a2
     9a4:	10000032 	b	a70 <L809EFD8C+0x34>
     9a8:	8fbf001c 	lw	ra,28(sp)
     9ac:	afa60024 	sw	a2,36(sp)
     9b0:	8e0e02c0 	lw	t6,704(s0)
     9b4:	02002025 	move	a0,s0
     9b8:	8dd90008 	lw	t9,8(t6)
     9bc:	0320f809 	jalr	t9
     9c0:	00000000 	nop
     9c4:	2c410005 	sltiu	at,v0,5
     9c8:	10200028 	beqz	at,a6c <L809EFD8C+0x30>
     9cc:	8fa60024 	lw	a2,36(sp)
     9d0:	00027880 	sll	t7,v0,0x2
     9d4:	3c010000 	lui	at,0x0
     9d8:	002f0821 	addu	at,at,t7
     9dc:	8c2f0000 	lw	t7,0(at)
     9e0:	01e00008 	jr	t7
     9e4:	00000000 	nop

000009e8 <L809EFD38>:
     9e8:	00c02025 	move	a0,a2
     9ec:	0c000000 	jal	0 <EnDns_Init>
     9f0:	240510a5 	li	a1,4261
     9f4:	3c180000 	lui	t8,0x0
     9f8:	27180000 	addiu	t8,t8,0
     9fc:	1000001b 	b	a6c <L809EFD8C+0x30>
     a00:	ae180268 	sw	t8,616(s0)

00000a04 <L809EFD54>:
     a04:	00c02025 	move	a0,a2
     a08:	0c000000 	jal	0 <EnDns_Init>
     a0c:	240510a6 	li	a1,4262
     a10:	3c080000 	lui	t0,0x0
     a14:	25080000 	addiu	t0,t0,0
     a18:	10000014 	b	a6c <L809EFD8C+0x30>
     a1c:	ae080268 	sw	t0,616(s0)

00000a20 <L809EFD70>:
     a20:	00c02025 	move	a0,a2
     a24:	0c000000 	jal	0 <EnDns_Init>
     a28:	240510de 	li	a1,4318
     a2c:	3c090000 	lui	t1,0x0
     a30:	25290000 	addiu	t1,t1,0
     a34:	1000000d 	b	a6c <L809EFD8C+0x30>
     a38:	ae090268 	sw	t1,616(s0)

00000a3c <L809EFD8C>:
     a3c:	00c02025 	move	a0,a2
     a40:	0c000000 	jal	0 <EnDns_Init>
     a44:	240510a7 	li	a1,4263
     a48:	3c0a0000 	lui	t2,0x0
     a4c:	254a0000 	addiu	t2,t2,0
     a50:	10000006 	b	a6c <L809EFD8C+0x30>
     a54:	ae0a0268 	sw	t2,616(s0)
     a58:	0c000000 	jal	0 <EnDns_Init>
     a5c:	240510a4 	li	a1,4260
     a60:	3c0b0000 	lui	t3,0x0
     a64:	256b0000 	addiu	t3,t3,0
     a68:	ae0b0268 	sw	t3,616(s0)
     a6c:	8fbf001c 	lw	ra,28(sp)
     a70:	8fb00018 	lw	s0,24(sp)
     a74:	27bd0020 	addiu	sp,sp,32
     a78:	03e00008 	jr	ra
     a7c:	00000000 	nop

00000a80 <func_809EFDD0>:
     a80:	27bdffe0 	addiu	sp,sp,-32
     a84:	afbf001c 	sw	ra,28(sp)
     a88:	8482001c 	lh	v0,28(a0)
     a8c:	24010009 	li	at,9
     a90:	3c0e0000 	lui	t6,0x0
     a94:	14410019 	bne	v0,at,afc <func_809EFDD0+0x7c>
     a98:	3c0f0000 	lui	t7,0x0
     a9c:	8dce00a0 	lw	t6,160(t6)
     aa0:	8def0018 	lw	t7,24(t7)
     aa4:	3c190000 	lui	t9,0x0
     aa8:	93390006 	lbu	t9,6(t9)
     aac:	01cfc024 	and	t8,t6,t7
     ab0:	3c074302 	lui	a3,0x4302
     ab4:	03384007 	srav	t0,t8,t9
     ab8:	29010002 	slti	at,t0,2
     abc:	10200008 	beqz	at,ae0 <func_809EFDD0+0x60>
     ac0:	24060078 	li	a2,120
     ac4:	3c0142c8 	lui	at,0x42c8
     ac8:	44812000 	mtc1	at,$f4
     acc:	24060077 	li	a2,119
     ad0:	0c000000 	jal	0 <EnDns_Init>
     ad4:	e7a40010 	swc1	$f4,16(sp)
     ad8:	1000002c 	b	b8c <func_809EFDD0+0x10c>
     adc:	8fbf001c 	lw	ra,28(sp)
     ae0:	3c0142c8 	lui	at,0x42c8
     ae4:	44813000 	mtc1	at,$f6
     ae8:	3c074302 	lui	a3,0x4302
     aec:	0c000000 	jal	0 <EnDns_Init>
     af0:	e7a60010 	swc1	$f6,16(sp)
     af4:	10000025 	b	b8c <func_809EFDD0+0x10c>
     af8:	8fbf001c 	lw	ra,28(sp)
     afc:	2401000a 	li	at,10
     b00:	1441001b 	bne	v0,at,b70 <func_809EFDD0+0xf0>
     b04:	3c074302 	lui	a3,0x4302
     b08:	3c090000 	lui	t1,0x0
     b0c:	3c0a0000 	lui	t2,0x0
     b10:	8d4a001c 	lw	t2,28(t2)
     b14:	8d2900a0 	lw	t1,160(t1)
     b18:	3c0c0000 	lui	t4,0x0
     b1c:	918c0007 	lbu	t4,7(t4)
     b20:	012a5824 	and	t3,t1,t2
     b24:	3c074302 	lui	a3,0x4302
     b28:	018b6807 	srav	t5,t3,t4
     b2c:	29a10002 	slti	at,t5,2
     b30:	10200008 	beqz	at,b54 <func_809EFDD0+0xd4>
     b34:	2406007a 	li	a2,122
     b38:	3c0142c8 	lui	at,0x42c8
     b3c:	44814000 	mtc1	at,$f8
     b40:	24060079 	li	a2,121
     b44:	0c000000 	jal	0 <EnDns_Init>
     b48:	e7a80010 	swc1	$f8,16(sp)
     b4c:	1000000f 	b	b8c <func_809EFDD0+0x10c>
     b50:	8fbf001c 	lw	ra,28(sp)
     b54:	3c0142c8 	lui	at,0x42c8
     b58:	44815000 	mtc1	at,$f10
     b5c:	3c074302 	lui	a3,0x4302
     b60:	0c000000 	jal	0 <EnDns_Init>
     b64:	e7aa0010 	swc1	$f10,16(sp)
     b68:	10000008 	b	b8c <func_809EFDD0+0x10c>
     b6c:	8fbf001c 	lw	ra,28(sp)
     b70:	8c8e02c0 	lw	t6,704(a0)
     b74:	3c0142c8 	lui	at,0x42c8
     b78:	44818000 	mtc1	at,$f16
     b7c:	8dc60004 	lw	a2,4(t6)
     b80:	0c000000 	jal	0 <EnDns_Init>
     b84:	e7b00010 	swc1	$f16,16(sp)
     b88:	8fbf001c 	lw	ra,28(sp)
     b8c:	27bd0020 	addiu	sp,sp,32
     b90:	03e00008 	jr	ra
     b94:	00000000 	nop

00000b98 <func_809EFEE8>:
     b98:	27bdffe8 	addiu	sp,sp,-24
     b9c:	afbf0014 	sw	ra,20(sp)
     ba0:	afa40018 	sw	a0,24(sp)
     ba4:	afa5001c 	sw	a1,28(sp)
     ba8:	0c000000 	jal	0 <EnDns_Init>
     bac:	24a420d8 	addiu	a0,a1,8408
     bb0:	24010005 	li	at,5
     bb4:	5441000f 	bnel	v0,at,bf4 <func_809EFEE8+0x5c>
     bb8:	8fbf0014 	lw	ra,20(sp)
     bbc:	0c000000 	jal	0 <EnDns_Init>
     bc0:	8fa4001c 	lw	a0,28(sp)
     bc4:	5040000b 	beqzl	v0,bf4 <func_809EFEE8+0x5c>
     bc8:	8fbf0014 	lw	ra,20(sp)
     bcc:	0c000000 	jal	0 <EnDns_Init>
     bd0:	8fa4001c 	lw	a0,28(sp)
     bd4:	8fa40018 	lw	a0,24(sp)
     bd8:	0c000000 	jal	0 <EnDns_Init>
     bdc:	8fa5001c 	lw	a1,28(sp)
     be0:	8faf0018 	lw	t7,24(sp)
     be4:	3c0e0000 	lui	t6,0x0
     be8:	25ce0000 	addiu	t6,t6,0
     bec:	adee0268 	sw	t6,616(t7)
     bf0:	8fbf0014 	lw	ra,20(sp)
     bf4:	27bd0018 	addiu	sp,sp,24
     bf8:	03e00008 	jr	ra
     bfc:	00000000 	nop

00000c00 <func_809EFF50>:
     c00:	27bdffe8 	addiu	sp,sp,-24
     c04:	afbf0014 	sw	ra,20(sp)
     c08:	afa5001c 	sw	a1,28(sp)
     c0c:	0c000000 	jal	0 <EnDns_Init>
     c10:	afa40018 	sw	a0,24(sp)
     c14:	10400006 	beqz	v0,c30 <func_809EFF50+0x30>
     c18:	8fa40018 	lw	a0,24(sp)
     c1c:	3c0e0000 	lui	t6,0x0
     c20:	25ce0000 	addiu	t6,t6,0
     c24:	ac800118 	sw	zero,280(a0)
     c28:	10000003 	b	c38 <func_809EFF50+0x38>
     c2c:	ac8e0268 	sw	t6,616(a0)
     c30:	0c000000 	jal	0 <EnDns_Init>
     c34:	8fa5001c 	lw	a1,28(sp)
     c38:	8fbf0014 	lw	ra,20(sp)
     c3c:	27bd0018 	addiu	sp,sp,24
     c40:	03e00008 	jr	ra
     c44:	00000000 	nop

00000c48 <func_809EFF98>:
     c48:	27bdffe0 	addiu	sp,sp,-32
     c4c:	afbf001c 	sw	ra,28(sp)
     c50:	afb00018 	sw	s0,24(sp)
     c54:	8ca21c44 	lw	v0,7236(a1)
     c58:	00808025 	move	s0,a0
     c5c:	24a420d8 	addiu	a0,a1,8408
     c60:	8c4e067c 	lw	t6,1660(v0)
     c64:	31cf0400 	andi	t7,t6,0x400
     c68:	51e0001e 	beqzl	t7,ce4 <func_809EFF98+0x9c>
     c6c:	8e0c02c0 	lw	t4,704(s0)
     c70:	0c000000 	jal	0 <EnDns_Init>
     c74:	afa50024 	sw	a1,36(sp)
     c78:	24010006 	li	at,6
     c7c:	1441002a 	bne	v0,at,d28 <func_809EFF98+0xe0>
     c80:	8fa50024 	lw	a1,36(sp)
     c84:	0c000000 	jal	0 <EnDns_Init>
     c88:	00a02025 	move	a0,a1
     c8c:	50400027 	beqzl	v0,d2c <func_809EFF98+0xe4>
     c90:	8fbf001c 	lw	ra,28(sp)
     c94:	8e1802c0 	lw	t8,704(s0)
     c98:	02002025 	move	a0,s0
     c9c:	8f19000c 	lw	t9,12(t8)
     ca0:	0320f809 	jalr	t9
     ca4:	00000000 	nop
     ca8:	8e090004 	lw	t1,4(s0)
     cac:	2401fffe 	li	at,-2
     cb0:	24080001 	li	t0,1
     cb4:	01215024 	and	t2,t1,at
     cb8:	a20802bd 	sb	t0,701(s0)
     cbc:	a20002bb 	sb	zero,699(s0)
     cc0:	ae0a0004 	sw	t2,4(s0)
     cc4:	02002025 	move	a0,s0
     cc8:	0c000000 	jal	0 <EnDns_Init>
     ccc:	24050001 	li	a1,1
     cd0:	3c0b0000 	lui	t3,0x0
     cd4:	256b0000 	addiu	t3,t3,0
     cd8:	10000013 	b	d28 <func_809EFF98+0xe0>
     cdc:	ae0b0268 	sw	t3,616(s0)
     ce0:	8e0c02c0 	lw	t4,704(s0)
     ce4:	02002025 	move	a0,s0
     ce8:	8d99000c 	lw	t9,12(t4)
     cec:	0320f809 	jalr	t9
     cf0:	00000000 	nop
     cf4:	8e0e0004 	lw	t6,4(s0)
     cf8:	2401fffe 	li	at,-2
     cfc:	240d0001 	li	t5,1
     d00:	01c17824 	and	t7,t6,at
     d04:	a20d02bd 	sb	t5,701(s0)
     d08:	a20002bb 	sb	zero,699(s0)
     d0c:	ae0f0004 	sw	t7,4(s0)
     d10:	02002025 	move	a0,s0
     d14:	0c000000 	jal	0 <EnDns_Init>
     d18:	24050001 	li	a1,1
     d1c:	3c180000 	lui	t8,0x0
     d20:	27180000 	addiu	t8,t8,0
     d24:	ae180268 	sw	t8,616(s0)
     d28:	8fbf001c 	lw	ra,28(sp)
     d2c:	8fb00018 	lw	s0,24(sp)
     d30:	27bd0020 	addiu	sp,sp,32
     d34:	03e00008 	jr	ra
     d38:	00000000 	nop

00000d3c <func_809F008C>:
     d3c:	27bdffe0 	addiu	sp,sp,-32
     d40:	afb00018 	sw	s0,24(sp)
     d44:	00808025 	move	s0,a0
     d48:	afbf001c 	sw	ra,28(sp)
     d4c:	afa50024 	sw	a1,36(sp)
     d50:	0c000000 	jal	0 <EnDns_Init>
     d54:	24a420d8 	addiu	a0,a1,8408
     d58:	24010006 	li	at,6
     d5c:	54410010 	bnel	v0,at,da0 <func_809F008C+0x64>
     d60:	8fbf001c 	lw	ra,28(sp)
     d64:	0c000000 	jal	0 <EnDns_Init>
     d68:	8fa40024 	lw	a0,36(sp)
     d6c:	1040000b 	beqz	v0,d9c <func_809F008C+0x60>
     d70:	2401fffe 	li	at,-2
     d74:	8e0e0004 	lw	t6,4(s0)
     d78:	a20002bb 	sb	zero,699(s0)
     d7c:	02002025 	move	a0,s0
     d80:	01c17824 	and	t7,t6,at
     d84:	ae0f0004 	sw	t7,4(s0)
     d88:	0c000000 	jal	0 <EnDns_Init>
     d8c:	24050001 	li	a1,1
     d90:	3c180000 	lui	t8,0x0
     d94:	27180000 	addiu	t8,t8,0
     d98:	ae180268 	sw	t8,616(s0)
     d9c:	8fbf001c 	lw	ra,28(sp)
     da0:	8fb00018 	lw	s0,24(sp)
     da4:	27bd0020 	addiu	sp,sp,32
     da8:	03e00008 	jr	ra
     dac:	00000000 	nop

00000db0 <func_809F0100>:
     db0:	27bdffe8 	addiu	sp,sp,-24
     db4:	00803025 	move	a2,a0
     db8:	afbf0014 	sw	ra,20(sp)
     dbc:	3c040600 	lui	a0,0x600
     dc0:	afa5001c 	sw	a1,28(sp)
     dc4:	24844404 	addiu	a0,a0,17412
     dc8:	0c000000 	jal	0 <EnDns_Init>
     dcc:	afa60018 	sw	a2,24(sp)
     dd0:	44822000 	mtc1	v0,$f4
     dd4:	8fa60018 	lw	a2,24(sp)
     dd8:	24053987 	li	a1,14727
     ddc:	468021a0 	cvt.s.w	$f6,$f4
     de0:	c4c80164 	lwc1	$f8,356(a2)
     de4:	00c02025 	move	a0,a2
     de8:	46083032 	c.eq.s	$f6,$f8
     dec:	00000000 	nop
     df0:	4502000b 	bc1fl	e20 <func_809F0100+0x70>
     df4:	8fbf0014 	lw	ra,20(sp)
     df8:	0c000000 	jal	0 <EnDns_Init>
     dfc:	afa60018 	sw	a2,24(sp)
     e00:	8fa60018 	lw	a2,24(sp)
     e04:	3c0e0000 	lui	t6,0x0
     e08:	25ce0000 	addiu	t6,t6,0
     e0c:	c4ca0028 	lwc1	$f10,40(a2)
     e10:	acce0268 	sw	t6,616(a2)
     e14:	a0c002bc 	sb	zero,700(a2)
     e18:	e4ca02c4 	swc1	$f10,708(a2)
     e1c:	8fbf0014 	lw	ra,20(sp)
     e20:	27bd0018 	addiu	sp,sp,24
     e24:	03e00008 	jr	ra
     e28:	00000000 	nop

00000e2c <func_809F017C>:
     e2c:	27bdffb8 	addiu	sp,sp,-72
     e30:	afbf002c 	sw	ra,44(sp)
     e34:	afb40028 	sw	s4,40(sp)
     e38:	afb30024 	sw	s3,36(sp)
     e3c:	afb20020 	sw	s2,32(sp)
     e40:	afb1001c 	sw	s1,28(sp)
     e44:	afb00018 	sw	s0,24(sp)
     e48:	848e02b8 	lh	t6,696(a0)
     e4c:	c4860028 	lwc1	$f6,40(a0)
     e50:	c48402c4 	lwc1	$f4,708(a0)
     e54:	31cf0003 	andi	t7,t6,0x3
     e58:	00a09025 	move	s2,a1
     e5c:	00809825 	move	s3,a0
     e60:	15e0000d 	bnez	t7,e98 <func_809F017C+0x6c>
     e64:	46062001 	sub.s	$f0,$f4,$f6
     e68:	c4880024 	lwc1	$f8,36(a0)
     e6c:	27a60038 	addiu	a2,sp,56
     e70:	e7a80038 	swc1	$f8,56(sp)
     e74:	c48a02c4 	lwc1	$f10,708(a0)
     e78:	e7aa003c 	swc1	$f10,60(sp)
     e7c:	c490002c 	lwc1	$f16,44(a0)
     e80:	00a02025 	move	a0,a1
     e84:	3c0541a0 	lui	a1,0x41a0
     e88:	e7a00044 	swc1	$f0,68(sp)
     e8c:	0c000000 	jal	0 <EnDns_Init>
     e90:	e7b00040 	swc1	$f16,64(sp)
     e94:	c7a00044 	lwc1	$f0,68(sp)
     e98:	3c0143c8 	lui	at,0x43c8
     e9c:	44819000 	mtc1	at,$f18
     ea0:	867800b6 	lh	t8,182(s3)
     ea4:	27b40038 	addiu	s4,sp,56
     ea8:	4600903c 	c.lt.s	$f18,$f0
     eac:	27192000 	addiu	t9,t8,8192
     eb0:	a67900b6 	sh	t9,182(s3)
     eb4:	45020017 	bc1fl	f14 <func_809F017C+0xe8>
     eb8:	8fbf002c 	lw	ra,44(sp)
     ebc:	926802bd 	lbu	t0,701(s3)
     ec0:	11000011 	beqz	t0,f08 <func_809F017C+0xdc>
     ec4:	00000000 	nop
     ec8:	c6640024 	lwc1	$f4,36(s3)
     ecc:	00008025 	move	s0,zero
     ed0:	24110003 	li	s1,3
     ed4:	e7a40038 	swc1	$f4,56(sp)
     ed8:	c66602c4 	lwc1	$f6,708(s3)
     edc:	e7a6003c 	swc1	$f6,60(sp)
     ee0:	c668002c 	lwc1	$f8,44(s3)
     ee4:	e7a80040 	swc1	$f8,64(sp)
     ee8:	00113400 	sll	a2,s1,0x10
     eec:	00063403 	sra	a2,a2,0x10
     ef0:	02402025 	move	a0,s2
     ef4:	0c000000 	jal	0 <EnDns_Init>
     ef8:	02802825 	move	a1,s4
     efc:	26100001 	addiu	s0,s0,1
     f00:	5611fffa 	bnel	s0,s1,eec <func_809F017C+0xc0>
     f04:	00113400 	sll	a2,s1,0x10
     f08:	0c000000 	jal	0 <EnDns_Init>
     f0c:	02602025 	move	a0,s3
     f10:	8fbf002c 	lw	ra,44(sp)
     f14:	8fb00018 	lw	s0,24(sp)
     f18:	8fb1001c 	lw	s1,28(sp)
     f1c:	8fb20020 	lw	s2,32(sp)
     f20:	8fb30024 	lw	s3,36(sp)
     f24:	8fb40028 	lw	s4,40(sp)
     f28:	03e00008 	jr	ra
     f2c:	27bd0048 	addiu	sp,sp,72

00000f30 <EnDns_Update>:
     f30:	27bdffc8 	addiu	sp,sp,-56
     f34:	afbf0024 	sw	ra,36(sp)
     f38:	afb00020 	sw	s0,32(sp)
     f3c:	afa5003c 	sw	a1,60(sp)
     f40:	848e02b8 	lh	t6,696(a0)
     f44:	8498001c 	lh	t8,28(a0)
     f48:	3c080000 	lui	t0,0x0
     f4c:	25cf0001 	addiu	t7,t6,1
     f50:	0018c840 	sll	t9,t8,0x1
     f54:	a48f02b8 	sh	t7,696(a0)
     f58:	01194021 	addu	t0,t0,t9
     f5c:	95080000 	lhu	t0,0(t0)
     f60:	00808025 	move	s0,a0
     f64:	3c054270 	lui	a1,0x4270
     f68:	0c000000 	jal	0 <EnDns_Init>
     f6c:	a488010e 	sh	t0,270(a0)
     f70:	3c053c23 	lui	a1,0x3c23
     f74:	34a5d70a 	ori	a1,a1,0xd70a
     f78:	0c000000 	jal	0 <EnDns_Init>
     f7c:	02002025 	move	a0,s0
     f80:	0c000000 	jal	0 <EnDns_Init>
     f84:	2604014c 	addiu	a0,s0,332
     f88:	0c000000 	jal	0 <EnDns_Init>
     f8c:	02002025 	move	a0,s0
     f90:	8e190268 	lw	t9,616(s0)
     f94:	02002025 	move	a0,s0
     f98:	8fa5003c 	lw	a1,60(sp)
     f9c:	0320f809 	jalr	t9
     fa0:	00000000 	nop
     fa4:	920902bc 	lbu	t1,700(s0)
     fa8:	3c0141a0 	lui	at,0x41a0
     fac:	8fa4003c 	lw	a0,60(sp)
     fb0:	11200008 	beqz	t1,fd4 <EnDns_Update+0xa4>
     fb4:	02002825 	move	a1,s0
     fb8:	44810000 	mtc1	at,$f0
     fbc:	240a0004 	li	t2,4
     fc0:	afaa0014 	sw	t2,20(sp)
     fc4:	44060000 	mfc1	a2,$f0
     fc8:	44070000 	mfc1	a3,$f0
     fcc:	0c000000 	jal	0 <EnDns_Init>
     fd0:	e7a00010 	swc1	$f0,16(sp)
     fd4:	920b02bb 	lbu	t3,699(s0)
     fd8:	2606026c 	addiu	a2,s0,620
     fdc:	00c02825 	move	a1,a2
     fe0:	11600009 	beqz	t3,1008 <EnDns_Update+0xd8>
     fe4:	02002025 	move	a0,s0
     fe8:	0c000000 	jal	0 <EnDns_Init>
     fec:	afa6002c 	sw	a2,44(sp)
     ff0:	8fa4003c 	lw	a0,60(sp)
     ff4:	3c010001 	lui	at,0x1
     ff8:	34211e60 	ori	at,at,0x1e60
     ffc:	8fa6002c 	lw	a2,44(sp)
    1000:	0c000000 	jal	0 <EnDns_Init>
    1004:	00812821 	addu	a1,a0,at
    1008:	8fbf0024 	lw	ra,36(sp)
    100c:	8fb00020 	lw	s0,32(sp)
    1010:	27bd0038 	addiu	sp,sp,56
    1014:	03e00008 	jr	ra
    1018:	00000000 	nop

0000101c <EnDns_Draw>:
    101c:	27bdffd8 	addiu	sp,sp,-40
    1020:	afbf0024 	sw	ra,36(sp)
    1024:	afa40028 	sw	a0,40(sp)
    1028:	afa5002c 	sw	a1,44(sp)
    102c:	0c000000 	jal	0 <EnDns_Init>
    1030:	8ca40000 	lw	a0,0(a1)
    1034:	8fa20028 	lw	v0,40(sp)
    1038:	8fa4002c 	lw	a0,44(sp)
    103c:	8c450150 	lw	a1,336(v0)
    1040:	8c46016c 	lw	a2,364(v0)
    1044:	9047014e 	lbu	a3,334(v0)
    1048:	afa00014 	sw	zero,20(sp)
    104c:	afa00010 	sw	zero,16(sp)
    1050:	0c000000 	jal	0 <EnDns_Init>
    1054:	afa20018 	sw	v0,24(sp)
    1058:	8fbf0024 	lw	ra,36(sp)
    105c:	27bd0028 	addiu	sp,sp,40
    1060:	03e00008 	jr	ra
    1064:	00000000 	nop
	...
