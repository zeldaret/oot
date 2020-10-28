
build/src/overlays/actors/ovl_Demo_6K/z_demo_6k.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80966950>:
       0:	03e00008 	jr	ra
       4:	ac850288 	sw	a1,648(a0)

00000008 <Demo6K_Init>:
       8:	27bdffb0 	addiu	sp,sp,-80
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb10028 	sw	s1,40(sp)
      14:	afb00024 	sw	s0,36(sp)
      18:	afa50054 	sw	a1,84(sp)
      1c:	8485001c 	lh	a1,28(a0)
      20:	00808825 	move	s1,a0
      24:	3c040000 	lui	a0,0x0
      28:	24840000 	addiu	a0,a0,0
      2c:	0c000000 	jal	0 <func_80966950>
      30:	afa50044 	sw	a1,68(sp)
      34:	8fae0044 	lw	t6,68(sp)
      38:	3c050000 	lui	a1,0x0
      3c:	24010001 	li	at,1
      40:	000e7840 	sll	t7,t6,0x1
      44:	00af2821 	addu	a1,a1,t7
      48:	84a50000 	lh	a1,0(a1)
      4c:	8fa40054 	lw	a0,84(sp)
      50:	00008025 	move	s0,zero
      54:	10a10006 	beq	a1,at,70 <Demo6K_Init+0x68>
      58:	3c010001 	lui	at,0x1
      5c:	342117a4 	ori	at,at,0x17a4
      60:	0c000000 	jal	0 <func_80966950>
      64:	00812021 	addu	a0,a0,at
      68:	10000001 	b	70 <Demo6K_Init+0x68>
      6c:	00408025 	move	s0,v0
      70:	3c040000 	lui	a0,0x0
      74:	24840000 	addiu	a0,a0,0
      78:	0c000000 	jal	0 <func_80966950>
      7c:	02002825 	move	a1,s0
      80:	06010008 	bgez	s0,a4 <Demo6K_Init+0x9c>
      84:	3c040000 	lui	a0,0x0
      88:	3c050000 	lui	a1,0x0
      8c:	24a50000 	addiu	a1,a1,0
      90:	24840000 	addiu	a0,a0,0
      94:	0c000000 	jal	0 <func_80966950>
      98:	2406014e 	li	a2,334
      9c:	10000002 	b	a8 <Demo6K_Init+0xa0>
      a0:	00000000 	nop
      a4:	a2300292 	sb	s0,658(s1)
      a8:	3c050000 	lui	a1,0x0
      ac:	24a50000 	addiu	a1,a1,0
      b0:	0c000000 	jal	0 <func_80966950>
      b4:	02202025 	move	a0,s1
      b8:	a620028e 	sh	zero,654(s1)
      bc:	a620028c 	sh	zero,652(s1)
      c0:	a6200290 	sh	zero,656(s1)
      c4:	8fb80044 	lw	t8,68(sp)
      c8:	2f010014 	sltiu	at,t8,20
      cc:	1020009e 	beqz	at,348 <L80966C48+0x50>
      d0:	0018c080 	sll	t8,t8,0x2
      d4:	3c010000 	lui	at,0x0
      d8:	00380821 	addu	at,at,t8
      dc:	8c380000 	lw	t8,0(at)
      e0:	03000008 	jr	t8
      e4:	00000000 	nop

000000e8 <L80966A38>:
      e8:	3c013f80 	lui	at,0x3f80
      ec:	44811000 	mtc1	at,$f2
      f0:	3c190000 	lui	t9,0x0
      f4:	3c080000 	lui	t0,0x0
      f8:	27390000 	addiu	t9,t9,0
      fc:	25080000 	addiu	t0,t0,0
     100:	44051000 	mfc1	a1,$f2
     104:	ae390284 	sw	t9,644(s1)
     108:	ae28014c 	sw	t0,332(s1)
     10c:	0c000000 	jal	0 <func_80966950>
     110:	02202025 	move	a0,s1
     114:	00008025 	move	s0,zero
     118:	02201025 	move	v0,s1
     11c:	02202025 	move	a0,s1
     120:	02002825 	move	a1,s0
     124:	0c000000 	jal	0 <func_80966950>
     128:	afa20030 	sw	v0,48(sp)
     12c:	8fa20030 	lw	v0,48(sp)
     130:	44802000 	mtc1	zero,$f4
     134:	26100001 	addiu	s0,s0,1
     138:	24010010 	li	at,16
     13c:	24420004 	addiu	v0,v0,4
     140:	1601fff6 	bne	s0,at,11c <L80966A38+0x34>
     144:	e44401b0 	swc1	$f4,432(v0)
     148:	44803000 	mtc1	zero,$f6
     14c:	10000084 	b	360 <L80966C48+0x68>
     150:	e6260170 	swc1	$f6,368(s1)

00000154 <L80966AA4>:
     154:	3c090000 	lui	t1,0x0
     158:	3c0a0000 	lui	t2,0x0
     15c:	25290000 	addiu	t1,t1,0
     160:	254a0000 	addiu	t2,t2,0
     164:	3c053e69 	lui	a1,0x3e69
     168:	ae290284 	sw	t1,644(s1)
     16c:	ae2a014c 	sw	t2,332(s1)
     170:	34a578d5 	ori	a1,a1,0x78d5
     174:	0c000000 	jal	0 <func_80966950>
     178:	02202025 	move	a0,s1
     17c:	10000079 	b	364 <L80966C48+0x6c>
     180:	8fad0044 	lw	t5,68(sp)

00000184 <L80966AD4>:
     184:	3c0b0000 	lui	t3,0x0
     188:	3c0c0000 	lui	t4,0x0
     18c:	256b0000 	addiu	t3,t3,0
     190:	258c0000 	addiu	t4,t4,0
     194:	3c053dcc 	lui	a1,0x3dcc
     198:	ae2b0284 	sw	t3,644(s1)
     19c:	ae2c014c 	sw	t4,332(s1)
     1a0:	34a5cccd 	ori	a1,a1,0xcccd
     1a4:	0c000000 	jal	0 <func_80966950>
     1a8:	02202025 	move	a0,s1
     1ac:	44809000 	mtc1	zero,$f18
     1b0:	3c013f80 	lui	at,0x3f80
     1b4:	44818000 	mtc1	at,$f16
     1b8:	e632016c 	swc1	$f18,364(s1)
     1bc:	e6320170 	swc1	$f18,368(s1)
     1c0:	e6300164 	swc1	$f16,356(s1)
     1c4:	10000066 	b	360 <L80966C48+0x68>
     1c8:	e6300168 	swc1	$f16,360(s1)

000001cc <L80966B1C>:
     1cc:	44800000 	mtc1	zero,$f0
     1d0:	3c0d0000 	lui	t5,0x0
     1d4:	3c0e0000 	lui	t6,0x0
     1d8:	25ad0000 	addiu	t5,t5,0
     1dc:	25ce0000 	addiu	t6,t6,0
     1e0:	44050000 	mfc1	a1,$f0
     1e4:	ae2d0284 	sw	t5,644(s1)
     1e8:	ae2e014c 	sw	t6,332(s1)
     1ec:	0c000000 	jal	0 <func_80966950>
     1f0:	02202025 	move	a0,s1
     1f4:	8faf0044 	lw	t7,68(sp)
     1f8:	25f8fffd 	addiu	t8,t7,-3
     1fc:	10000058 	b	360 <L80966C48+0x68>
     200:	a2380293 	sb	t8,659(s1)

00000204 <L80966B54>:
     204:	44800000 	mtc1	zero,$f0
     208:	3c190000 	lui	t9,0x0
     20c:	27390000 	addiu	t9,t9,0
     210:	44050000 	mfc1	a1,$f0
     214:	ae390284 	sw	t9,644(s1)
     218:	0c000000 	jal	0 <func_80966950>
     21c:	02202025 	move	a0,s1
     220:	3c080000 	lui	t0,0x0
     224:	25080000 	addiu	t0,t0,0
     228:	1000004d 	b	360 <L80966C48+0x68>
     22c:	ae28014c 	sw	t0,332(s1)

00000230 <L80966B80>:
     230:	44800000 	mtc1	zero,$f0
     234:	3c090000 	lui	t1,0x0
     238:	25290000 	addiu	t1,t1,0
     23c:	44050000 	mfc1	a1,$f0
     240:	ae290284 	sw	t1,644(s1)
     244:	0c000000 	jal	0 <func_80966950>
     248:	02202025 	move	a0,s1
     24c:	44800000 	mtc1	zero,$f0
     250:	3c0a0000 	lui	t2,0x0
     254:	254a0000 	addiu	t2,t2,0
     258:	ae2a014c 	sw	t2,332(s1)
     25c:	02202025 	move	a0,s1
     260:	240528a5 	li	a1,10405
     264:	e6200064 	swc1	$f0,100(s1)
     268:	e6200060 	swc1	$f0,96(s1)
     26c:	0c000000 	jal	0 <func_80966950>
     270:	e620005c 	swc1	$f0,92(s1)
     274:	1000003b 	b	364 <L80966C48+0x6c>
     278:	8fad0044 	lw	t5,68(sp)

0000027c <L80966BCC>:
     27c:	44800000 	mtc1	zero,$f0
     280:	02202025 	move	a0,s1
     284:	44050000 	mfc1	a1,$f0
     288:	0c000000 	jal	0 <func_80966950>
     28c:	00000000 	nop
     290:	3c0b0000 	lui	t3,0x0
     294:	3c0c0000 	lui	t4,0x0
     298:	256b0000 	addiu	t3,t3,0
     29c:	258c0000 	addiu	t4,t4,0
     2a0:	ae2b014c 	sw	t3,332(s1)
     2a4:	ae2c0284 	sw	t4,644(s1)
     2a8:	8fa40054 	lw	a0,84(sp)
     2ac:	02203025 	move	a2,s1
     2b0:	24070007 	li	a3,7
     2b4:	0c000000 	jal	0 <func_80966950>
     2b8:	24851c24 	addiu	a1,a0,7204
     2bc:	10000029 	b	364 <L80966C48+0x6c>
     2c0:	8fad0044 	lw	t5,68(sp)

000002c4 <L80966C14>:
     2c4:	3c053e0f 	lui	a1,0x3e0f
     2c8:	34a55c29 	ori	a1,a1,0x5c29
     2cc:	0c000000 	jal	0 <func_80966950>
     2d0:	02202025 	move	a0,s1
     2d4:	3c050000 	lui	a1,0x0
     2d8:	24a50000 	addiu	a1,a1,0
     2dc:	0c000000 	jal	0 <func_80966950>
     2e0:	02202025 	move	a0,s1
     2e4:	3c0e0000 	lui	t6,0x0
     2e8:	25ce0000 	addiu	t6,t6,0
     2ec:	ae2e0134 	sw	t6,308(s1)
     2f0:	1000001b 	b	360 <L80966C48+0x68>
     2f4:	a2200293 	sb	zero,659(s1)

000002f8 <L80966C48>:
     2f8:	8e2f0004 	lw	t7,4(s1)
     2fc:	9629028c 	lhu	t1,652(s1)
     300:	3c190000 	lui	t9,0x0
     304:	3c080000 	lui	t0,0x0
     308:	27390000 	addiu	t9,t9,0
     30c:	25080000 	addiu	t0,t0,0
     310:	3c053e4c 	lui	a1,0x3e4c
     314:	35f80020 	ori	t8,t7,0x20
     318:	352a0001 	ori	t2,t1,0x1
     31c:	ae380004 	sw	t8,4(s1)
     320:	ae390284 	sw	t9,644(s1)
     324:	ae28014c 	sw	t0,332(s1)
     328:	a62a028c 	sh	t2,652(s1)
     32c:	34a5cccd 	ori	a1,a1,0xcccd
     330:	0c000000 	jal	0 <func_80966950>
     334:	02202025 	move	a0,s1
     338:	8fab0044 	lw	t3,68(sp)
     33c:	256cfff2 	addiu	t4,t3,-14
     340:	10000007 	b	360 <L80966C48+0x68>
     344:	a22c0293 	sb	t4,659(s1)
     348:	3c040000 	lui	a0,0x0
     34c:	3c050000 	lui	a1,0x0
     350:	24a50000 	addiu	a1,a1,0
     354:	24840000 	addiu	a0,a0,0
     358:	0c000000 	jal	0 <func_80966950>
     35c:	240601b3 	li	a2,435
     360:	8fad0044 	lw	t5,68(sp)
     364:	24010009 	li	at,9
     368:	26300150 	addiu	s0,s1,336
     36c:	11a10009 	beq	t5,at,394 <L80966C48+0x9c>
     370:	02002025 	move	a0,s0
     374:	2401000a 	li	at,10
     378:	11a10008 	beq	t5,at,39c <L80966C48+0xa4>
     37c:	240e0005 	li	t6,5
     380:	2401000b 	li	at,11
     384:	11a10007 	beq	t5,at,3a4 <L80966C48+0xac>
     388:	240f0004 	li	t7,4
     38c:	10000007 	b	3ac <L80966C48+0xb4>
     390:	c6280024 	lwc1	$f8,36(s1)
     394:	10000004 	b	3a8 <L80966C48+0xb0>
     398:	a2200293 	sb	zero,659(s1)
     39c:	10000002 	b	3a8 <L80966C48+0xb0>
     3a0:	a22e0293 	sb	t6,659(s1)
     3a4:	a22f0293 	sb	t7,659(s1)
     3a8:	c6280024 	lwc1	$f8,36(s1)
     3ac:	c6300028 	lwc1	$f16,40(s1)
     3b0:	c624002c 	lwc1	$f4,44(s1)
     3b4:	4600428d 	trunc.w.s	$f10,$f8
     3b8:	240900ff 	li	t1,255
     3bc:	240a00ff 	li	t2,255
     3c0:	4600848d 	trunc.w.s	$f18,$f16
     3c4:	44055000 	mfc1	a1,$f10
     3c8:	240b00ff 	li	t3,255
     3cc:	4600218d 	trunc.w.s	$f6,$f4
     3d0:	44069000 	mfc1	a2,$f18
     3d4:	240c0064 	li	t4,100
     3d8:	00052c00 	sll	a1,a1,0x10
     3dc:	44073000 	mfc1	a3,$f6
     3e0:	00063400 	sll	a2,a2,0x10
     3e4:	00063403 	sra	a2,a2,0x10
     3e8:	00073c00 	sll	a3,a3,0x10
     3ec:	00073c03 	sra	a3,a3,0x10
     3f0:	00052c03 	sra	a1,a1,0x10
     3f4:	afac001c 	sw	t4,28(sp)
     3f8:	afab0018 	sw	t3,24(sp)
     3fc:	afaa0014 	sw	t2,20(sp)
     400:	0c000000 	jal	0 <func_80966950>
     404:	afa90010 	sw	t1,16(sp)
     408:	8fa40054 	lw	a0,84(sp)
     40c:	02003025 	move	a2,s0
     410:	0c000000 	jal	0 <func_80966950>
     414:	248507a8 	addiu	a1,a0,1960
     418:	ae220160 	sw	v0,352(s1)
     41c:	8fbf002c 	lw	ra,44(sp)
     420:	8fb10028 	lw	s1,40(sp)
     424:	8fb00024 	lw	s0,36(sp)
     428:	03e00008 	jr	ra
     42c:	27bd0050 	addiu	sp,sp,80

00000430 <Demo6K_Destroy>:
     430:	27bdffe8 	addiu	sp,sp,-24
     434:	afa40018 	sw	a0,24(sp)
     438:	8fae0018 	lw	t6,24(sp)
     43c:	afbf0014 	sw	ra,20(sp)
     440:	00a02025 	move	a0,a1
     444:	24a507a8 	addiu	a1,a1,1960
     448:	0c000000 	jal	0 <func_80966950>
     44c:	8dc60160 	lw	a2,352(t6)
     450:	8fbf0014 	lw	ra,20(sp)
     454:	27bd0018 	addiu	sp,sp,24
     458:	03e00008 	jr	ra
     45c:	00000000 	nop

00000460 <func_80966DB0>:
     460:	3c010001 	lui	at,0x1
     464:	27bdffe8 	addiu	sp,sp,-24
     468:	00803025 	move	a2,a0
     46c:	342117a4 	ori	at,at,0x17a4
     470:	afbf0014 	sw	ra,20(sp)
     474:	00a12021 	addu	a0,a1,at
     478:	90c50292 	lbu	a1,658(a2)
     47c:	0c000000 	jal	0 <func_80966950>
     480:	afa60018 	sw	a2,24(sp)
     484:	10400007 	beqz	v0,4a4 <func_80966DB0+0x44>
     488:	8fa60018 	lw	a2,24(sp)
     48c:	90ce0292 	lbu	t6,658(a2)
     490:	8ccf0284 	lw	t7,644(a2)
     494:	8cd8014c 	lw	t8,332(a2)
     498:	a0ce001e 	sb	t6,30(a2)
     49c:	accf0134 	sw	t7,308(a2)
     4a0:	acd80288 	sw	t8,648(a2)
     4a4:	8fbf0014 	lw	ra,20(sp)
     4a8:	27bd0018 	addiu	sp,sp,24
     4ac:	03e00008 	jr	ra
     4b0:	00000000 	nop

000004b4 <func_80966E04>:
     4b4:	27bdffe8 	addiu	sp,sp,-24
     4b8:	afbf0014 	sw	ra,20(sp)
     4bc:	afa40018 	sw	a0,24(sp)
     4c0:	94a21d74 	lhu	v0,7540(a1)
     4c4:	00a03025 	move	a2,a1
     4c8:	24052047 	li	a1,8263
     4cc:	284100d7 	slti	at,v0,215
     4d0:	54200006 	bnezl	at,4ec <func_80966E04+0x38>
     4d4:	28410109 	slti	at,v0,265
     4d8:	0c000000 	jal	0 <func_80966950>
     4dc:	afa6001c 	sw	a2,28(sp)
     4e0:	8fa6001c 	lw	a2,28(sp)
     4e4:	94c21d74 	lhu	v0,7540(a2)
     4e8:	28410109 	slti	at,v0,265
     4ec:	14200005 	bnez	at,504 <func_80966E04+0x50>
     4f0:	8fa40018 	lw	a0,24(sp)
     4f4:	2405209a 	li	a1,8346
     4f8:	0c000000 	jal	0 <func_80966950>
     4fc:	afa6001c 	sw	a2,28(sp)
     500:	8fa6001c 	lw	a2,28(sp)
     504:	90ce1d6c 	lbu	t6,7532(a2)
     508:	51c0000c 	beqzl	t6,53c <func_80966E04+0x88>
     50c:	8fbf0014 	lw	ra,20(sp)
     510:	8cc21da4 	lw	v0,7588(a2)
     514:	50400009 	beqzl	v0,53c <func_80966E04+0x88>
     518:	8fbf0014 	lw	ra,20(sp)
     51c:	944f0000 	lhu	t7,0(v0)
     520:	24010002 	li	at,2
     524:	8fa40018 	lw	a0,24(sp)
     528:	15e10003 	bne	t7,at,538 <func_80966E04+0x84>
     52c:	3c050000 	lui	a1,0x0
     530:	0c000000 	jal	0 <func_80966950>
     534:	24a50000 	addiu	a1,a1,0
     538:	8fbf0014 	lw	ra,20(sp)
     53c:	27bd0018 	addiu	sp,sp,24
     540:	03e00008 	jr	ra
     544:	00000000 	nop

00000548 <func_80966E98>:
     548:	27bdffc8 	addiu	sp,sp,-56
     54c:	afbf0034 	sw	ra,52(sp)
     550:	afb00030 	sw	s0,48(sp)
     554:	afa5003c 	sw	a1,60(sp)
     558:	94a21d74 	lhu	v0,7540(a1)
     55c:	00808025 	move	s0,a0
     560:	28410161 	slti	at,v0,353
     564:	50200009 	beqzl	at,58c <func_80966E98+0x44>
     568:	24010156 	li	at,342
     56c:	0c000000 	jal	0 <func_80966950>
     570:	24052047 	li	a1,8263
     574:	02002025 	move	a0,s0
     578:	0c000000 	jal	0 <func_80966950>
     57c:	2405209a 	li	a1,8346
     580:	8faf003c 	lw	t7,60(sp)
     584:	95e21d74 	lhu	v0,7540(t7)
     588:	24010156 	li	at,342
     58c:	54410004 	bnel	v0,at,5a0 <func_80966E98+0x58>
     590:	9602028e 	lhu	v0,654(s0)
     594:	0c000000 	jal	0 <func_80966950>
     598:	24040002 	li	a0,2
     59c:	9602028e 	lhu	v0,654(s0)
     5a0:	24010027 	li	at,39
     5a4:	14410016 	bne	v0,at,600 <func_80966E98+0xb8>
     5a8:	00401825 	move	v1,v0
     5ac:	0c000000 	jal	0 <func_80966950>
     5b0:	2404289c 	li	a0,10396
     5b4:	3c014120 	lui	at,0x4120
     5b8:	44813000 	mtc1	at,$f6
     5bc:	c6040028 	lwc1	$f4,40(s0)
     5c0:	8e070024 	lw	a3,36(s0)
     5c4:	8fa5003c 	lw	a1,60(sp)
     5c8:	46062200 	add.s	$f8,$f4,$f6
     5cc:	24190002 	li	t9,2
     5d0:	240600f5 	li	a2,245
     5d4:	24a41c24 	addiu	a0,a1,7204
     5d8:	e7a80010 	swc1	$f8,16(sp)
     5dc:	c60a002c 	lwc1	$f10,44(s0)
     5e0:	afb90024 	sw	t9,36(sp)
     5e4:	afa00020 	sw	zero,32(sp)
     5e8:	afa0001c 	sw	zero,28(sp)
     5ec:	afa00018 	sw	zero,24(sp)
     5f0:	0c000000 	jal	0 <func_80966950>
     5f4:	e7aa0014 	swc1	$f10,20(sp)
     5f8:	9602028e 	lhu	v0,654(s0)
     5fc:	00401825 	move	v1,v0
     600:	24010040 	li	at,64
     604:	54610005 	bnel	v1,at,61c <func_80966E98+0xd4>
     608:	24480001 	addiu	t0,v0,1
     60c:	0c000000 	jal	0 <func_80966950>
     610:	02002025 	move	a0,s0
     614:	9602028e 	lhu	v0,654(s0)
     618:	24480001 	addiu	t0,v0,1
     61c:	a608028e 	sh	t0,654(s0)
     620:	8fbf0034 	lw	ra,52(sp)
     624:	8fb00030 	lw	s0,48(sp)
     628:	27bd0038 	addiu	sp,sp,56
     62c:	03e00008 	jr	ra
     630:	00000000 	nop

00000634 <func_80966F84>:
     634:	27bdffc0 	addiu	sp,sp,-64
     638:	afbf003c 	sw	ra,60(sp)
     63c:	afb00038 	sw	s0,56(sp)
     640:	9482028e 	lhu	v0,654(a0)
     644:	00808025 	move	s0,a0
     648:	00a03025 	move	a2,a1
     64c:	28410005 	slti	at,v0,5
     650:	10200008 	beqz	at,674 <func_80966F84+0x40>
     654:	00401825 	move	v1,v0
     658:	304e0003 	andi	t6,v0,0x3
     65c:	000e7880 	sll	t7,t6,0x2
     660:	3c010000 	lui	at,0x0
     664:	002f0821 	addu	at,at,t7
     668:	c4240000 	lwc1	$f4,0(at)
     66c:	10000034 	b	740 <func_80966F84+0x10c>
     670:	e4840168 	swc1	$f4,360(a0)
     674:	2861000f 	slti	at,v1,15
     678:	10200013 	beqz	at,6c8 <func_80966F84+0x94>
     67c:	3c010000 	lui	at,0x0
     680:	c4280000 	lwc1	$f8,0(at)
     684:	c6060050 	lwc1	$f6,80(s0)
     688:	02002025 	move	a0,s0
     68c:	46083280 	add.s	$f10,$f6,$f8
     690:	e60a0050 	swc1	$f10,80(s0)
     694:	0c000000 	jal	0 <func_80966950>
     698:	8e050050 	lw	a1,80(s0)
     69c:	3c053f19 	lui	a1,0x3f19
     6a0:	3c063d4c 	lui	a2,0x3d4c
     6a4:	34c6cccd 	ori	a2,a2,0xcccd
     6a8:	34a5999a 	ori	a1,a1,0x999a
     6ac:	0c000000 	jal	0 <func_80966950>
     6b0:	26040170 	addiu	a0,s0,368
     6b4:	3c013f80 	lui	at,0x3f80
     6b8:	44818000 	mtc1	at,$f16
     6bc:	9602028e 	lhu	v0,654(s0)
     6c0:	1000001f 	b	740 <func_80966F84+0x10c>
     6c4:	e6100168 	swc1	$f16,360(s0)
     6c8:	2401000f 	li	at,15
     6cc:	54610011 	bnel	v1,at,714 <func_80966F84+0xe0>
     6d0:	3c063ca3 	lui	a2,0x3ca3
     6d4:	c6120024 	lwc1	$f18,36(s0)
     6d8:	24180001 	li	t8,1
     6dc:	24c41c24 	addiu	a0,a2,7204
     6e0:	e7b20010 	swc1	$f18,16(sp)
     6e4:	c6040028 	lwc1	$f4,40(s0)
     6e8:	02002825 	move	a1,s0
     6ec:	24070101 	li	a3,257
     6f0:	e7a40014 	swc1	$f4,20(sp)
     6f4:	c606002c 	lwc1	$f6,44(s0)
     6f8:	afb80028 	sw	t8,40(sp)
     6fc:	afa00024 	sw	zero,36(sp)
     700:	afa00020 	sw	zero,32(sp)
     704:	afa0001c 	sw	zero,28(sp)
     708:	0c000000 	jal	0 <func_80966950>
     70c:	e7a60018 	swc1	$f6,24(sp)
     710:	3c063ca3 	lui	a2,0x3ca3
     714:	34c6d70a 	ori	a2,a2,0xd70a
     718:	2604016c 	addiu	a0,s0,364
     71c:	0c000000 	jal	0 <func_80966950>
     720:	3c053f80 	lui	a1,0x3f80
     724:	9602028e 	lhu	v0,654(s0)
     728:	3c010000 	lui	at,0x0
     72c:	30590001 	andi	t9,v0,0x1
     730:	00194080 	sll	t0,t9,0x2
     734:	00280821 	addu	at,at,t0
     738:	c4280000 	lwc1	$f8,0(at)
     73c:	e6080168 	swc1	$f8,360(s0)
     740:	24490001 	addiu	t1,v0,1
     744:	a609028e 	sh	t1,654(s0)
     748:	8fbf003c 	lw	ra,60(sp)
     74c:	8fb00038 	lw	s0,56(sp)
     750:	27bd0040 	addiu	sp,sp,64
     754:	03e00008 	jr	ra
     758:	00000000 	nop

0000075c <func_809670AC>:
     75c:	27bdffe8 	addiu	sp,sp,-24
     760:	afbf0014 	sw	ra,20(sp)
     764:	afa5001c 	sw	a1,28(sp)
     768:	948e0290 	lhu	t6,656(a0)
     76c:	9482028e 	lhu	v0,654(a0)
     770:	25cf0001 	addiu	t7,t6,1
     774:	2841000a 	slti	at,v0,10
     778:	10200004 	beqz	at,78c <func_809670AC+0x30>
     77c:	a48f0290 	sh	t7,656(a0)
     780:	24580001 	addiu	t8,v0,1
     784:	10000011 	b	7cc <func_809670AC+0x70>
     788:	a498028e 	sh	t8,654(a0)
     78c:	c4800050 	lwc1	$f0,80(a0)
     790:	44802000 	mtc1	zero,$f4
     794:	3c010000 	lui	at,0x0
     798:	4600203c 	c.lt.s	$f4,$f0
     79c:	00000000 	nop
     7a0:	45000008 	bc1f	7c4 <func_809670AC+0x68>
     7a4:	00000000 	nop
     7a8:	c4260000 	lwc1	$f6,0(at)
     7ac:	46060201 	sub.s	$f8,$f0,$f6
     7b0:	e4880050 	swc1	$f8,80(a0)
     7b4:	0c000000 	jal	0 <func_80966950>
     7b8:	8c850050 	lw	a1,80(a0)
     7bc:	10000004 	b	7d0 <func_809670AC+0x74>
     7c0:	8fbf0014 	lw	ra,20(sp)
     7c4:	0c000000 	jal	0 <func_80966950>
     7c8:	00000000 	nop
     7cc:	8fbf0014 	lw	ra,20(sp)
     7d0:	27bd0018 	addiu	sp,sp,24
     7d4:	03e00008 	jr	ra
     7d8:	00000000 	nop

000007dc <func_8096712C>:
     7dc:	27bdffe8 	addiu	sp,sp,-24
     7e0:	afbf0014 	sw	ra,20(sp)
     7e4:	3c010000 	lui	at,0x0
     7e8:	c4220000 	lwc1	$f2,0(at)
     7ec:	c4800050 	lwc1	$f0,80(a0)
     7f0:	8ca2009c 	lw	v0,156(a1)
     7f4:	00a03025 	move	a2,a1
     7f8:	4602003c 	c.lt.s	$f0,$f2
     7fc:	3c010000 	lui	at,0x0
     800:	304e0001 	andi	t6,v0,0x1
     804:	45000005 	bc1f	81c <func_8096712C+0x40>
     808:	00000000 	nop
     80c:	c4240000 	lwc1	$f4,0(at)
     810:	46040180 	add.s	$f6,$f0,$f4
     814:	10000007 	b	834 <func_8096712C+0x58>
     818:	e4860050 	swc1	$f6,80(a0)
     81c:	11c00004 	beqz	t6,830 <func_8096712C+0x54>
     820:	3c010000 	lui	at,0x0
     824:	c4280000 	lwc1	$f8,0(at)
     828:	10000002 	b	834 <func_8096712C+0x58>
     82c:	e4880050 	swc1	$f8,80(a0)
     830:	e4820050 	swc1	$f2,80(a0)
     834:	90cf1d6c 	lbu	t7,7532(a2)
     838:	51e00013 	beqzl	t7,888 <func_8096712C+0xac>
     83c:	8c850050 	lw	a1,80(a0)
     840:	8cc21da4 	lw	v0,7588(a2)
     844:	50400010 	beqzl	v0,888 <func_8096712C+0xac>
     848:	8c850050 	lw	a1,80(a0)
     84c:	94580000 	lhu	t8,0(v0)
     850:	24010002 	li	at,2
     854:	3c050000 	lui	a1,0x0
     858:	1701000a 	bne	t8,at,884 <func_8096712C+0xa8>
     85c:	24a50000 	addiu	a1,a1,0
     860:	afa40018 	sw	a0,24(sp)
     864:	0c000000 	jal	0 <func_80966950>
     868:	afa6001c 	sw	a2,28(sp)
     86c:	8fa40018 	lw	a0,24(sp)
     870:	3c010000 	lui	at,0x0
     874:	c4220000 	lwc1	$f2,0(at)
     878:	8fa6001c 	lw	a2,28(sp)
     87c:	a480028e 	sh	zero,654(a0)
     880:	e4820050 	swc1	$f2,80(a0)
     884:	8c850050 	lw	a1,80(a0)
     888:	afa6001c 	sw	a2,28(sp)
     88c:	0c000000 	jal	0 <func_80966950>
     890:	afa40018 	sw	a0,24(sp)
     894:	8fa40018 	lw	a0,24(sp)
     898:	8fa6001c 	lw	a2,28(sp)
     89c:	2401000d 	li	at,13
     8a0:	94990290 	lhu	t9,656(a0)
     8a4:	27280001 	addiu	t0,t9,1
     8a8:	a4880290 	sh	t0,656(a0)
     8ac:	84c900a4 	lh	t1,164(a2)
     8b0:	5521000d 	bnel	t1,at,8e8 <func_8096712C+0x10c>
     8b4:	8fbf0014 	lw	ra,20(sp)
     8b8:	848b001c 	lh	t3,28(a0)
     8bc:	3c0d0000 	lui	t5,0x0
     8c0:	94ca1d74 	lhu	t2,7540(a2)
     8c4:	000b6040 	sll	t4,t3,0x1
     8c8:	01ac6821 	addu	t5,t5,t4
     8cc:	95ad0000 	lhu	t5,0(t5)
     8d0:	014d082a 	slt	at,t2,t5
     8d4:	50200004 	beqzl	at,8e8 <func_8096712C+0x10c>
     8d8:	8fbf0014 	lw	ra,20(sp)
     8dc:	0c000000 	jal	0 <func_80966950>
     8e0:	24052047 	li	a1,8263
     8e4:	8fbf0014 	lw	ra,20(sp)
     8e8:	27bd0018 	addiu	sp,sp,24
     8ec:	03e00008 	jr	ra
     8f0:	00000000 	nop

000008f4 <func_80967244>:
     8f4:	27bdffb0 	addiu	sp,sp,-80
     8f8:	afbf002c 	sw	ra,44(sp)
     8fc:	afb00028 	sw	s0,40(sp)
     900:	afa50054 	sw	a1,84(sp)
     904:	c4840024 	lwc1	$f4,36(a0)
     908:	3c010000 	lui	at,0x0
     90c:	00808025 	move	s0,a0
     910:	e7a40044 	swc1	$f4,68(sp)
     914:	c4860028 	lwc1	$f6,40(a0)
     918:	c42c0000 	lwc1	$f12,0(at)
     91c:	e7a60048 	swc1	$f6,72(sp)
     920:	c488002c 	lwc1	$f8,44(a0)
     924:	0c000000 	jal	0 <func_80966950>
     928:	e7a8004c 	swc1	$f8,76(sp)
     92c:	4600028d 	trunc.w.s	$f10,$f0
     930:	3c010000 	lui	at,0x0
     934:	c42c0000 	lwc1	$f12,0(at)
     938:	440f5000 	mfc1	t7,$f10
     93c:	0c000000 	jal	0 <func_80966950>
     940:	a7af0042 	sh	t7,66(sp)
     944:	4600040d 	trunc.w.s	$f16,$f0
     948:	44028000 	mfc1	v0,$f16
     94c:	00000000 	nop
     950:	00022400 	sll	a0,v0,0x10
     954:	00042403 	sra	a0,a0,0x10
     958:	0c000000 	jal	0 <func_80966950>
     95c:	a7a20040 	sh	v0,64(sp)
     960:	e7a00038 	swc1	$f0,56(sp)
     964:	0c000000 	jal	0 <func_80966950>
     968:	87a40042 	lh	a0,66(sp)
     96c:	c7b20038 	lwc1	$f18,56(sp)
     970:	3c0141a0 	lui	at,0x41a0
     974:	44813000 	mtc1	at,$f6
     978:	46120102 	mul.s	$f4,$f0,$f18
     97c:	3c010000 	lui	at,0x0
     980:	87a40040 	lh	a0,64(sp)
     984:	46062202 	mul.s	$f8,$f4,$f6
     988:	0c000000 	jal	0 <func_80966950>
     98c:	e4280000 	swc1	$f8,0(at)
     990:	e7a00038 	swc1	$f0,56(sp)
     994:	0c000000 	jal	0 <func_80966950>
     998:	87a40042 	lh	a0,66(sp)
     99c:	c7aa0038 	lwc1	$f10,56(sp)
     9a0:	3c0141a0 	lui	at,0x41a0
     9a4:	44819000 	mtc1	at,$f18
     9a8:	460a0402 	mul.s	$f16,$f0,$f10
     9ac:	3c010000 	lui	at,0x0
     9b0:	87a40042 	lh	a0,66(sp)
     9b4:	46128102 	mul.s	$f4,$f16,$f18
     9b8:	0c000000 	jal	0 <func_80966950>
     9bc:	e4240000 	swc1	$f4,0(at)
     9c0:	3c0141a0 	lui	at,0x41a0
     9c4:	44813000 	mtc1	at,$f6
     9c8:	44805000 	mtc1	zero,$f10
     9cc:	3c010000 	lui	at,0x0
     9d0:	46060202 	mul.s	$f8,$f0,$f6
     9d4:	24030003 	li	v1,3
     9d8:	3c020000 	lui	v0,0x0
     9dc:	24420000 	addiu	v0,v0,0
     9e0:	8fa40054 	lw	a0,84(sp)
     9e4:	3c060000 	lui	a2,0x0
     9e8:	3c070000 	lui	a3,0x0
     9ec:	e4280000 	swc1	$f8,0(at)
     9f0:	3c010000 	lui	at,0x0
     9f4:	e42a0000 	swc1	$f10,0(at)
     9f8:	92190293 	lbu	t9,659(s0)
     9fc:	3c010000 	lui	at,0x0
     a00:	24e70000 	addiu	a3,a3,0
     a04:	03230019 	multu	t9,v1
     a08:	24c60000 	addiu	a2,a2,0
     a0c:	27a50044 	addiu	a1,sp,68
     a10:	00004012 	mflo	t0
     a14:	00484821 	addu	t1,v0,t0
     a18:	912a0000 	lbu	t2,0(t1)
     a1c:	a02a0000 	sb	t2,0(at)
     a20:	920b0293 	lbu	t3,659(s0)
     a24:	01630019 	multu	t3,v1
     a28:	3c0b0000 	lui	t3,0x0
     a2c:	256b0000 	addiu	t3,t3,0
     a30:	00006012 	mflo	t4
     a34:	004c6821 	addu	t5,v0,t4
     a38:	91ae0001 	lbu	t6,1(t5)
     a3c:	3c0c0000 	lui	t4,0x0
     a40:	258c0000 	addiu	t4,t4,0
     a44:	a02e0000 	sb	t6,0(at)
     a48:	920f0293 	lbu	t7,659(s0)
     a4c:	240d0014 	li	t5,20
     a50:	01e30019 	multu	t7,v1
     a54:	0000c012 	mflo	t8
     a58:	0058c821 	addu	t9,v0,t8
     a5c:	93280002 	lbu	t0,2(t9)
     a60:	a0280000 	sb	t0,0(at)
     a64:	848900a4 	lh	t1,164(a0)
     a68:	24010043 	li	at,67
     a6c:	55210004 	bnel	t1,at,a80 <func_80967244+0x18c>
     a70:	948a1d74 	lhu	t2,7540(a0)
     a74:	10000008 	b	a98 <func_80967244+0x1a4>
     a78:	24021770 	li	v0,6000
     a7c:	948a1d74 	lhu	t2,7540(a0)
     a80:	24024650 	li	v0,18000
     a84:	294101a3 	slti	at,t2,419
     a88:	10200003 	beqz	at,a98 <func_80967244+0x1a4>
     a8c:	00000000 	nop
     a90:	10000001 	b	a98 <func_80967244+0x1a4>
     a94:	24021770 	li	v0,6000
     a98:	afab0010 	sw	t3,16(sp)
     a9c:	afac0014 	sw	t4,20(sp)
     aa0:	afa20018 	sw	v0,24(sp)
     aa4:	0c000000 	jal	0 <func_80966950>
     aa8:	afad001c 	sw	t5,28(sp)
     aac:	8fbf002c 	lw	ra,44(sp)
     ab0:	8fb00028 	lw	s0,40(sp)
     ab4:	27bd0050 	addiu	sp,sp,80
     ab8:	03e00008 	jr	ra
     abc:	00000000 	nop

00000ac0 <func_80967410>:
     ac0:	27bdffe0 	addiu	sp,sp,-32
     ac4:	afbf0014 	sw	ra,20(sp)
     ac8:	afa50024 	sw	a1,36(sp)
     acc:	948e0290 	lhu	t6,656(a0)
     ad0:	8486001c 	lh	a2,28(a0)
     ad4:	3c053e4c 	lui	a1,0x3e4c
     ad8:	25cf0001 	addiu	t7,t6,1
     adc:	a48f0290 	sh	t7,656(a0)
     ae0:	24c6fff2 	addiu	a2,a2,-14
     ae4:	afa6001c 	sw	a2,28(sp)
     ae8:	afa40020 	sw	a0,32(sp)
     aec:	0c000000 	jal	0 <func_80966950>
     af0:	34a5cccd 	ori	a1,a1,0xcccd
     af4:	8fa50024 	lw	a1,36(sp)
     af8:	8fa6001c 	lw	a2,28(sp)
     afc:	8fa40020 	lw	a0,32(sp)
     b00:	90b81d6c 	lbu	t8,7532(a1)
     b04:	0006c880 	sll	t9,a2,0x2
     b08:	00b91021 	addu	v0,a1,t9
     b0c:	5300001a 	beqzl	t8,b78 <func_80967410+0xb8>
     b10:	948f028c 	lhu	t7,652(a0)
     b14:	8c481d8c 	lw	t0,7564(v0)
     b18:	51000017 	beqzl	t0,b78 <func_80967410+0xb8>
     b1c:	948f028c 	lhu	t7,652(a0)
     b20:	afa20018 	sw	v0,24(sp)
     b24:	0c000000 	jal	0 <func_80966950>
     b28:	afa40020 	sw	a0,32(sp)
     b2c:	8fa20018 	lw	v0,24(sp)
     b30:	24010003 	li	at,3
     b34:	8fa40020 	lw	a0,32(sp)
     b38:	8c491d8c 	lw	t1,7564(v0)
     b3c:	8fa50024 	lw	a1,36(sp)
     b40:	952a0000 	lhu	t2,0(t1)
     b44:	55410008 	bnel	t2,at,b68 <func_80967410+0xa8>
     b48:	948d028c 	lhu	t5,652(a0)
     b4c:	948b028c 	lhu	t3,652(a0)
     b50:	316cfffe 	andi	t4,t3,0xfffe
     b54:	0c000000 	jal	0 <func_80966950>
     b58:	a48c028c 	sh	t4,652(a0)
     b5c:	10000009 	b	b84 <func_80967410+0xc4>
     b60:	8fbf0014 	lw	ra,20(sp)
     b64:	948d028c 	lhu	t5,652(a0)
     b68:	35ae0001 	ori	t6,t5,0x1
     b6c:	10000004 	b	b80 <func_80967410+0xc0>
     b70:	a48e028c 	sh	t6,652(a0)
     b74:	948f028c 	lhu	t7,652(a0)
     b78:	35f80001 	ori	t8,t7,0x1
     b7c:	a498028c 	sh	t8,652(a0)
     b80:	8fbf0014 	lw	ra,20(sp)
     b84:	27bd0020 	addiu	sp,sp,32
     b88:	03e00008 	jr	ra
     b8c:	00000000 	nop

00000b90 <func_809674E0>:
     b90:	27bdffd0 	addiu	sp,sp,-48
     b94:	afbf002c 	sw	ra,44(sp)
     b98:	afb00028 	sw	s0,40(sp)
     b9c:	3c010000 	lui	at,0x0
     ba0:	c4220000 	lwc1	$f2,0(at)
     ba4:	c4800050 	lwc1	$f0,80(a0)
     ba8:	8ca2009c 	lw	v0,156(a1)
     bac:	00808025 	move	s0,a0
     bb0:	4602003c 	c.lt.s	$f0,$f2
     bb4:	3c010000 	lui	at,0x0
     bb8:	304e0001 	andi	t6,v0,0x1
     bbc:	45000005 	bc1f	bd4 <func_809674E0+0x44>
     bc0:	00000000 	nop
     bc4:	c4240000 	lwc1	$f4,0(at)
     bc8:	46040180 	add.s	$f6,$f0,$f4
     bcc:	10000007 	b	bec <func_809674E0+0x5c>
     bd0:	e4860050 	swc1	$f6,80(a0)
     bd4:	11c00004 	beqz	t6,be8 <func_809674E0+0x58>
     bd8:	3c010000 	lui	at,0x0
     bdc:	c4280000 	lwc1	$f8,0(at)
     be0:	10000002 	b	bec <func_809674E0+0x5c>
     be4:	e6080050 	swc1	$f8,80(s0)
     be8:	e6020050 	swc1	$f2,80(s0)
     bec:	02002025 	move	a0,s0
     bf0:	0c000000 	jal	0 <func_80966950>
     bf4:	8e050050 	lw	a1,80(s0)
     bf8:	960f0290 	lhu	t7,656(s0)
     bfc:	25f80001 	addiu	t8,t7,1
     c00:	3302ffff 	andi	v0,t8,0xffff
     c04:	28410030 	slti	at,v0,48
     c08:	14200005 	bnez	at,c20 <func_809674E0+0x90>
     c0c:	a6180290 	sh	t8,656(s0)
     c10:	0c000000 	jal	0 <func_80966950>
     c14:	02002025 	move	a0,s0
     c18:	10000026 	b	cb4 <func_809674E0+0x124>
     c1c:	920b0293 	lbu	t3,659(s0)
     c20:	28410028 	slti	at,v0,40
     c24:	14200022 	bnez	at,cb0 <func_809674E0+0x120>
     c28:	2459ffd9 	addiu	t9,v0,-39
     c2c:	44995000 	mtc1	t9,$f10
     c30:	3c013f80 	lui	at,0x3f80
     c34:	44819000 	mtc1	at,$f18
     c38:	46805420 	cvt.s.w	$f16,$f10
     c3c:	3c014110 	lui	at,0x4110
     c40:	44812000 	mtc1	at,$f4
     c44:	3c010000 	lui	at,0x0
     c48:	c4280000 	lwc1	$f8,0(at)
     c4c:	c6020024 	lwc1	$f2,36(s0)
     c50:	46102181 	sub.s	$f6,$f4,$f16
     c54:	3c014198 	lui	at,0x4198
     c58:	c60c0028 	lwc1	$f12,40(s0)
     c5c:	46024281 	sub.s	$f10,$f8,$f2
     c60:	c60e002c 	lwc1	$f14,44(s0)
     c64:	02002025 	move	a0,s0
     c68:	46069003 	div.s	$f0,$f18,$f6
     c6c:	44813000 	mtc1	at,$f6
     c70:	3c010000 	lui	at,0x0
     c74:	240530a7 	li	a1,12455
     c78:	460c3201 	sub.s	$f8,$f6,$f12
     c7c:	46005102 	mul.s	$f4,$f10,$f0
     c80:	00000000 	nop
     c84:	46004282 	mul.s	$f10,$f8,$f0
     c88:	46041480 	add.s	$f18,$f2,$f4
     c8c:	460a6100 	add.s	$f4,$f12,$f10
     c90:	e6120024 	swc1	$f18,36(s0)
     c94:	e6040028 	swc1	$f4,40(s0)
     c98:	c4320000 	lwc1	$f18,0(at)
     c9c:	460e9181 	sub.s	$f6,$f18,$f14
     ca0:	46003202 	mul.s	$f8,$f6,$f0
     ca4:	46087280 	add.s	$f10,$f14,$f8
     ca8:	0c000000 	jal	0 <func_80966950>
     cac:	e60a002c 	swc1	$f10,44(s0)
     cb0:	920b0293 	lbu	t3,659(s0)
     cb4:	3c0d0000 	lui	t5,0x0
     cb8:	c6040024 	lwc1	$f4,36(s0)
     cbc:	000b6080 	sll	t4,t3,0x2
     cc0:	25ad0000 	addiu	t5,t5,0
     cc4:	018b6023 	subu	t4,t4,t3
     cc8:	018d1021 	addu	v0,t4,t5
     ccc:	4600248d 	trunc.w.s	$f18,$f4
     cd0:	c6060028 	lwc1	$f6,40(s0)
     cd4:	904e0000 	lbu	t6,0(v0)
     cd8:	904f0001 	lbu	t7,1(v0)
     cdc:	90580002 	lbu	t8,2(v0)
     ce0:	c60a002c 	lwc1	$f10,44(s0)
     ce4:	4600320d 	trunc.w.s	$f8,$f6
     ce8:	44059000 	mfc1	a1,$f18
     cec:	3c01457a 	lui	at,0x457a
     cf0:	afae0010 	sw	t6,16(sp)
     cf4:	afaf0014 	sw	t7,20(sp)
     cf8:	afb80018 	sw	t8,24(sp)
     cfc:	c6120050 	lwc1	$f18,80(s0)
     d00:	44813000 	mtc1	at,$f6
     d04:	44064000 	mfc1	a2,$f8
     d08:	4600510d 	trunc.w.s	$f4,$f10
     d0c:	46069202 	mul.s	$f8,$f18,$f6
     d10:	00052c00 	sll	a1,a1,0x10
     d14:	00063400 	sll	a2,a2,0x10
     d18:	44072000 	mfc1	a3,$f4
     d1c:	00063403 	sra	a2,a2,0x10
     d20:	00052c03 	sra	a1,a1,0x10
     d24:	00073c00 	sll	a3,a3,0x10
     d28:	4600428d 	trunc.w.s	$f10,$f8
     d2c:	00073c03 	sra	a3,a3,0x10
     d30:	26040150 	addiu	a0,s0,336
     d34:	44085000 	mfc1	t0,$f10
     d38:	0c000000 	jal	0 <func_80966950>
     d3c:	afa8001c 	sw	t0,28(sp)
     d40:	8fbf002c 	lw	ra,44(sp)
     d44:	8fb00028 	lw	s0,40(sp)
     d48:	27bd0030 	addiu	sp,sp,48
     d4c:	03e00008 	jr	ra
     d50:	00000000 	nop

00000d54 <func_809676A4>:
     d54:	27bdff68 	addiu	sp,sp,-152
     d58:	3c0143fa 	lui	at,0x43fa
     d5c:	44813000 	mtc1	at,$f6
     d60:	f7bc0048 	sdc1	$f28,72(sp)
     d64:	3c010000 	lui	at,0x0
     d68:	c43c0000 	lwc1	$f28,0(at)
     d6c:	f7ba0040 	sdc1	$f26,64(sp)
     d70:	3c0140a0 	lui	at,0x40a0
     d74:	afbf007c 	sw	ra,124(sp)
     d78:	afbe0078 	sw	s8,120(sp)
     d7c:	afb70074 	sw	s7,116(sp)
     d80:	afb60070 	sw	s6,112(sp)
     d84:	afb5006c 	sw	s5,108(sp)
     d88:	afb40068 	sw	s4,104(sp)
     d8c:	afb30064 	sw	s3,100(sp)
     d90:	afb20060 	sw	s2,96(sp)
     d94:	afb1005c 	sw	s1,92(sp)
     d98:	afb00058 	sw	s0,88(sp)
     d9c:	f7be0050 	sdc1	$f30,80(sp)
     da0:	f7b80038 	sdc1	$f24,56(sp)
     da4:	f7b60030 	sdc1	$f22,48(sp)
     da8:	f7b40028 	sdc1	$f20,40(sp)
     dac:	4481d000 	mtc1	at,$f26
     db0:	c4840050 	lwc1	$f4,80(a0)
     db4:	3c01c120 	lui	at,0xc120
     db8:	4481c000 	mtc1	at,$f24
     dbc:	3c014000 	lui	at,0x4000
     dc0:	3c140000 	lui	s4,0x0
     dc4:	3c150000 	lui	s5,0x0
     dc8:	3c160000 	lui	s6,0x0
     dcc:	3c170000 	lui	s7,0x0
     dd0:	4481b000 	mtc1	at,$f22
     dd4:	4480f000 	mtc1	zero,$f30
     dd8:	46062502 	mul.s	$f20,$f4,$f6
     ddc:	00808025 	move	s0,a0
     de0:	00a09025 	move	s2,a1
     de4:	26f70000 	addiu	s7,s7,0
     de8:	26d60000 	addiu	s6,s6,0
     dec:	26b50000 	addiu	s5,s5,0
     df0:	26940000 	addiu	s4,s4,0
     df4:	00008825 	move	s1,zero
     df8:	27b3008c 	addiu	s3,sp,140
     dfc:	241e0008 	li	s8,8
     e00:	0c000000 	jal	0 <func_80966950>
     e04:	4600a306 	mov.s	$f12,$f20
     e08:	c6080024 	lwc1	$f8,36(s0)
     e0c:	4600a306 	mov.s	$f12,$f20
     e10:	46080280 	add.s	$f10,$f0,$f8
     e14:	0c000000 	jal	0 <func_80966950>
     e18:	e7aa008c 	swc1	$f10,140(sp)
     e1c:	c6100028 	lwc1	$f16,40(s0)
     e20:	4600a306 	mov.s	$f12,$f20
     e24:	46100480 	add.s	$f18,$f0,$f16
     e28:	0c000000 	jal	0 <func_80966950>
     e2c:	e7b20090 	swc1	$f18,144(sp)
     e30:	c604002c 	lwc1	$f4,44(s0)
     e34:	4600b306 	mov.s	$f12,$f22
     e38:	46040180 	add.s	$f6,$f0,$f4
     e3c:	0c000000 	jal	0 <func_80966950>
     e40:	e7a60094 	swc1	$f6,148(sp)
     e44:	3c010000 	lui	at,0x0
     e48:	e4200000 	swc1	$f0,0(at)
     e4c:	0c000000 	jal	0 <func_80966950>
     e50:	4600c306 	mov.s	$f12,$f24
     e54:	461a0201 	sub.s	$f8,$f0,$f26
     e58:	3c010000 	lui	at,0x0
     e5c:	4600b306 	mov.s	$f12,$f22
     e60:	461c4282 	mul.s	$f10,$f8,$f28
     e64:	0c000000 	jal	0 <func_80966950>
     e68:	e42a0000 	swc1	$f10,0(at)
     e6c:	3c010000 	lui	at,0x0
     e70:	e4200000 	swc1	$f0,0(at)
     e74:	3c010000 	lui	at,0x0
     e78:	240e01f4 	li	t6,500
     e7c:	240f0014 	li	t7,20
     e80:	e43e0000 	swc1	$f30,0(at)
     e84:	afaf001c 	sw	t7,28(sp)
     e88:	afae0018 	sw	t6,24(sp)
     e8c:	02402025 	move	a0,s2
     e90:	02602825 	move	a1,s3
     e94:	02803025 	move	a2,s4
     e98:	02a03825 	move	a3,s5
     e9c:	afb60010 	sw	s6,16(sp)
     ea0:	0c000000 	jal	0 <func_80966950>
     ea4:	afb70014 	sw	s7,20(sp)
     ea8:	26310001 	addiu	s1,s1,1
     eac:	163effd4 	bne	s1,s8,e00 <func_809676A4+0xac>
     eb0:	00000000 	nop
     eb4:	8fbf007c 	lw	ra,124(sp)
     eb8:	d7b40028 	ldc1	$f20,40(sp)
     ebc:	d7b60030 	ldc1	$f22,48(sp)
     ec0:	d7b80038 	ldc1	$f24,56(sp)
     ec4:	d7ba0040 	ldc1	$f26,64(sp)
     ec8:	d7bc0048 	ldc1	$f28,72(sp)
     ecc:	d7be0050 	ldc1	$f30,80(sp)
     ed0:	8fb00058 	lw	s0,88(sp)
     ed4:	8fb1005c 	lw	s1,92(sp)
     ed8:	8fb20060 	lw	s2,96(sp)
     edc:	8fb30064 	lw	s3,100(sp)
     ee0:	8fb40068 	lw	s4,104(sp)
     ee4:	8fb5006c 	lw	s5,108(sp)
     ee8:	8fb60070 	lw	s6,112(sp)
     eec:	8fb70074 	lw	s7,116(sp)
     ef0:	8fbe0078 	lw	s8,120(sp)
     ef4:	03e00008 	jr	ra
     ef8:	27bd0098 	addiu	sp,sp,152

00000efc <func_8096784C>:
     efc:	27bdffd0 	addiu	sp,sp,-48
     f00:	afbf002c 	sw	ra,44(sp)
     f04:	afb00028 	sw	s0,40(sp)
     f08:	afa50034 	sw	a1,52(sp)
     f0c:	948f0290 	lhu	t7,656(a0)
     f10:	8ca3009c 	lw	v1,156(a1)
     f14:	00808025 	move	s0,a0
     f18:	25f80001 	addiu	t8,t7,1
     f1c:	3302ffff 	andi	v0,t8,0xffff
     f20:	28410019 	slti	at,v0,25
     f24:	14200005 	bnez	at,f3c <func_8096784C+0x40>
     f28:	a4980290 	sh	t8,656(a0)
     f2c:	0c000000 	jal	0 <func_80966950>
     f30:	00000000 	nop
     f34:	10000034 	b	1008 <func_8096784C+0x10c>
     f38:	02002025 	move	a0,s0
     f3c:	28410005 	slti	at,v0,5
     f40:	14200028 	bnez	at,fe4 <func_8096784C+0xe8>
     f44:	30790001 	andi	t9,v1,0x1
     f48:	3c010000 	lui	at,0x0
     f4c:	0c000000 	jal	0 <func_80966950>
     f50:	c42c0000 	lwc1	$f12,0(at)
     f54:	c604005c 	lwc1	$f4,92(s0)
     f58:	3c010000 	lui	at,0x0
     f5c:	c6080060 	lwc1	$f8,96(s0)
     f60:	46002180 	add.s	$f6,$f4,$f0
     f64:	e606005c 	swc1	$f6,92(s0)
     f68:	c42a0000 	lwc1	$f10,0(at)
     f6c:	3c010000 	lui	at,0x0
     f70:	460a4400 	add.s	$f16,$f8,$f10
     f74:	e6100060 	swc1	$f16,96(s0)
     f78:	0c000000 	jal	0 <func_80966950>
     f7c:	c42c0000 	lwc1	$f12,0(at)
     f80:	c6120064 	lwc1	$f18,100(s0)
     f84:	c6060024 	lwc1	$f6,36(s0)
     f88:	c608005c 	lwc1	$f8,92(s0)
     f8c:	46009100 	add.s	$f4,$f18,$f0
     f90:	c6120060 	lwc1	$f18,96(s0)
     f94:	c6100028 	lwc1	$f16,40(s0)
     f98:	46083280 	add.s	$f10,$f6,$f8
     f9c:	e6040064 	swc1	$f4,100(s0)
     fa0:	c6080064 	lwc1	$f8,100(s0)
     fa4:	c606002c 	lwc1	$f6,44(s0)
     fa8:	e60a0024 	swc1	$f10,36(s0)
     fac:	46128100 	add.s	$f4,$f16,$f18
     fb0:	3c010000 	lui	at,0x0
     fb4:	c6100050 	lwc1	$f16,80(s0)
     fb8:	46083280 	add.s	$f10,$f6,$f8
     fbc:	e6040028 	swc1	$f4,40(s0)
     fc0:	02002025 	move	a0,s0
     fc4:	e60a002c 	swc1	$f10,44(s0)
     fc8:	c4320000 	lwc1	$f18,0(at)
     fcc:	46128101 	sub.s	$f4,$f16,$f18
     fd0:	e6040050 	swc1	$f4,80(s0)
     fd4:	0c000000 	jal	0 <func_80966950>
     fd8:	8fa50034 	lw	a1,52(sp)
     fdc:	1000000a 	b	1008 <func_8096784C+0x10c>
     fe0:	02002025 	move	a0,s0
     fe4:	13200005 	beqz	t9,ffc <func_8096784C+0x100>
     fe8:	3c010000 	lui	at,0x0
     fec:	3c010000 	lui	at,0x0
     ff0:	c4260000 	lwc1	$f6,0(at)
     ff4:	10000003 	b	1004 <func_8096784C+0x108>
     ff8:	e6060050 	swc1	$f6,80(s0)
     ffc:	c4280000 	lwc1	$f8,0(at)
    1000:	e6080050 	swc1	$f8,80(s0)
    1004:	02002025 	move	a0,s0
    1008:	0c000000 	jal	0 <func_80966950>
    100c:	8e050050 	lw	a1,80(s0)
    1010:	920b0293 	lbu	t3,659(s0)
    1014:	3c0d0000 	lui	t5,0x0
    1018:	c60a0024 	lwc1	$f10,36(s0)
    101c:	000b6080 	sll	t4,t3,0x2
    1020:	25ad0000 	addiu	t5,t5,0
    1024:	018b6023 	subu	t4,t4,t3
    1028:	018d1021 	addu	v0,t4,t5
    102c:	4600540d 	trunc.w.s	$f16,$f10
    1030:	904e0000 	lbu	t6,0(v0)
    1034:	904f0001 	lbu	t7,1(v0)
    1038:	90580002 	lbu	t8,2(v0)
    103c:	c6120028 	lwc1	$f18,40(s0)
    1040:	c606002c 	lwc1	$f6,44(s0)
    1044:	44058000 	mfc1	a1,$f16
    1048:	3c01457a 	lui	at,0x457a
    104c:	afae0010 	sw	t6,16(sp)
    1050:	afaf0014 	sw	t7,20(sp)
    1054:	afb80018 	sw	t8,24(sp)
    1058:	c60a0050 	lwc1	$f10,80(s0)
    105c:	44818000 	mtc1	at,$f16
    1060:	4600910d 	trunc.w.s	$f4,$f18
    1064:	00052c00 	sll	a1,a1,0x10
    1068:	46105482 	mul.s	$f18,$f10,$f16
    106c:	4600320d 	trunc.w.s	$f8,$f6
    1070:	44062000 	mfc1	a2,$f4
    1074:	00052c03 	sra	a1,a1,0x10
    1078:	26040150 	addiu	a0,s0,336
    107c:	44074000 	mfc1	a3,$f8
    1080:	00063400 	sll	a2,a2,0x10
    1084:	4600910d 	trunc.w.s	$f4,$f18
    1088:	00073c00 	sll	a3,a3,0x10
    108c:	00073c03 	sra	a3,a3,0x10
    1090:	00063403 	sra	a2,a2,0x10
    1094:	44082000 	mfc1	t0,$f4
    1098:	0c000000 	jal	0 <func_80966950>
    109c:	afa8001c 	sw	t0,28(sp)
    10a0:	8fbf002c 	lw	ra,44(sp)
    10a4:	8fb00028 	lw	s0,40(sp)
    10a8:	27bd0030 	addiu	sp,sp,48
    10ac:	03e00008 	jr	ra
    10b0:	00000000 	nop

000010b4 <func_80967A04>:
    10b4:	44852000 	mtc1	a1,$f4
    10b8:	3c014120 	lui	at,0x4120
    10bc:	44814000 	mtc1	at,$f8
    10c0:	468021a0 	cvt.s.w	$f6,$f4
    10c4:	3c0142a0 	lui	at,0x42a0
    10c8:	44818000 	mtc1	at,$f16
    10cc:	27bdffe0 	addiu	sp,sp,-32
    10d0:	afb00018 	sw	s0,24(sp)
    10d4:	00057880 	sll	t7,a1,0x2
    10d8:	46083282 	mul.s	$f10,$f6,$f8
    10dc:	afbf001c 	sw	ra,28(sp)
    10e0:	afa40020 	sw	a0,32(sp)
    10e4:	008f8021 	addu	s0,a0,t7
    10e8:	3c0142c8 	lui	at,0x42c8
    10ec:	44816000 	mtc1	at,$f12
    10f0:	46105481 	sub.s	$f18,$f10,$f16
    10f4:	e6120174 	swc1	$f18,372(s0)
    10f8:	0c000000 	jal	0 <func_80966950>
    10fc:	afa50024 	sw	a1,36(sp)
    1100:	3c0142c8 	lui	at,0x42c8
    1104:	44812000 	mtc1	at,$f4
    1108:	3c0140c0 	lui	at,0x40c0
    110c:	44816000 	mtc1	at,$f12
    1110:	46040180 	add.s	$f6,$f0,$f4
    1114:	0c000000 	jal	0 <func_80966950>
    1118:	e60601b4 	swc1	$f6,436(s0)
    111c:	3c01c040 	lui	at,0xc040
    1120:	44814000 	mtc1	at,$f8
    1124:	3c0140c0 	lui	at,0x40c0
    1128:	44816000 	mtc1	at,$f12
    112c:	46004281 	sub.s	$f10,$f8,$f0
    1130:	0c000000 	jal	0 <func_80966950>
    1134:	e60a01f4 	swc1	$f10,500(s0)
    1138:	4600040d 	trunc.w.s	$f16,$f0
    113c:	8fa80020 	lw	t0,32(sp)
    1140:	8fa90024 	lw	t1,36(sp)
    1144:	3c010000 	lui	at,0x0
    1148:	44198000 	mfc1	t9,$f16
    114c:	01095021 	addu	t2,t0,t1
    1150:	a1590274 	sb	t9,628(t2)
    1154:	0c000000 	jal	0 <func_80966950>
    1158:	c42c0000 	lwc1	$f12,0(at)
    115c:	3c010000 	lui	at,0x0
    1160:	c4320000 	lwc1	$f18,0(at)
    1164:	46120100 	add.s	$f4,$f0,$f18
    1168:	e6040234 	swc1	$f4,564(s0)
    116c:	8fbf001c 	lw	ra,28(sp)
    1170:	8fb00018 	lw	s0,24(sp)
    1174:	27bd0020 	addiu	sp,sp,32
    1178:	03e00008 	jr	ra
    117c:	00000000 	nop

00001180 <func_80967AD0>:
    1180:	27bdffd0 	addiu	sp,sp,-48
    1184:	afbf002c 	sw	ra,44(sp)
    1188:	afb30028 	sw	s3,40(sp)
    118c:	afb20024 	sw	s2,36(sp)
    1190:	afb10020 	sw	s1,32(sp)
    1194:	afb0001c 	sw	s0,28(sp)
    1198:	f7b40010 	sdc1	$f20,16(sp)
    119c:	90ae1d6c 	lbu	t6,7532(a1)
    11a0:	00a08025 	move	s0,a1
    11a4:	00809025 	move	s2,a0
    11a8:	51c00013 	beqzl	t6,11f8 <func_80967AD0+0x78>
    11ac:	c64a0170 	lwc1	$f10,368(s2)
    11b0:	8ca21d90 	lw	v0,7568(a1)
    11b4:	50400010 	beqzl	v0,11f8 <func_80967AD0+0x78>
    11b8:	c64a0170 	lwc1	$f10,368(s2)
    11bc:	944f0000 	lhu	t7,0(v0)
    11c0:	24010002 	li	at,2
    11c4:	15e10007 	bne	t7,at,11e4 <func_80967AD0+0x64>
    11c8:	3c013f80 	lui	at,0x3f80
    11cc:	44813000 	mtc1	at,$f6
    11d0:	c4840170 	lwc1	$f4,368(a0)
    11d4:	240520bc 	li	a1,8380
    11d8:	46062200 	add.s	$f8,$f4,$f6
    11dc:	0c000000 	jal	0 <func_80966950>
    11e0:	e4880170 	swc1	$f8,368(a0)
    11e4:	02402025 	move	a0,s2
    11e8:	02002825 	move	a1,s0
    11ec:	0c000000 	jal	0 <func_80966950>
    11f0:	24060001 	li	a2,1
    11f4:	c64a0170 	lwc1	$f10,368(s2)
    11f8:	00004080 	sll	t0,zero,0x2
    11fc:	02488021 	addu	s0,s2,t0
    1200:	4600540d 	trunc.w.s	$f16,$f10
    1204:	00008825 	move	s1,zero
    1208:	44198000 	mfc1	t9,$f16
    120c:	00000000 	nop
    1210:	5b20001b 	blezl	t9,1280 <func_80967AD0+0x100>
    1214:	964b028e 	lhu	t3,654(s2)
    1218:	4480a000 	mtc1	zero,$f20
    121c:	24130010 	li	s3,16
    1220:	c61201b4 	lwc1	$f18,436(s0)
    1224:	c60401f4 	lwc1	$f4,500(s0)
    1228:	02402025 	move	a0,s2
    122c:	46049180 	add.s	$f6,$f18,$f4
    1230:	e60601b4 	swc1	$f6,436(s0)
    1234:	c60801b4 	lwc1	$f8,436(s0)
    1238:	4614403c 	c.lt.s	$f8,$f20
    123c:	00000000 	nop
    1240:	45020004 	bc1fl	1254 <func_80967AD0+0xd4>
    1244:	c64a0170 	lwc1	$f10,368(s2)
    1248:	0c000000 	jal	0 <func_80966950>
    124c:	02202825 	move	a1,s1
    1250:	c64a0170 	lwc1	$f10,368(s2)
    1254:	26310001 	addiu	s1,s1,1
    1258:	26100004 	addiu	s0,s0,4
    125c:	4600540d 	trunc.w.s	$f16,$f10
    1260:	440a8000 	mfc1	t2,$f16
    1264:	00000000 	nop
    1268:	022a082a 	slt	at,s1,t2
    126c:	50200004 	beqzl	at,1280 <func_80967AD0+0x100>
    1270:	964b028e 	lhu	t3,654(s2)
    1274:	5633ffeb 	bnel	s1,s3,1224 <func_80967AD0+0xa4>
    1278:	c61201b4 	lwc1	$f18,436(s0)
    127c:	964b028e 	lhu	t3,654(s2)
    1280:	256c0001 	addiu	t4,t3,1
    1284:	a64c028e 	sh	t4,654(s2)
    1288:	8fbf002c 	lw	ra,44(sp)
    128c:	8fb30028 	lw	s3,40(sp)
    1290:	8fb20024 	lw	s2,36(sp)
    1294:	8fb10020 	lw	s1,32(sp)
    1298:	8fb0001c 	lw	s0,28(sp)
    129c:	d7b40010 	ldc1	$f20,16(sp)
    12a0:	03e00008 	jr	ra
    12a4:	27bd0030 	addiu	sp,sp,48

000012a8 <func_80967BF8>:
    12a8:	27bdff68 	addiu	sp,sp,-152
    12ac:	f7be0050 	sdc1	$f30,80(sp)
    12b0:	3c014000 	lui	at,0x4000
    12b4:	4481f000 	mtc1	at,$f30
    12b8:	f7bc0048 	sdc1	$f28,72(sp)
    12bc:	3c014080 	lui	at,0x4080
    12c0:	4481e000 	mtc1	at,$f28
    12c4:	f7ba0040 	sdc1	$f26,64(sp)
    12c8:	3c013f80 	lui	at,0x3f80
    12cc:	4481d000 	mtc1	at,$f26
    12d0:	f7b80038 	sdc1	$f24,56(sp)
    12d4:	3c0141f0 	lui	at,0x41f0
    12d8:	4481c000 	mtc1	at,$f24
    12dc:	f7b60030 	sdc1	$f22,48(sp)
    12e0:	3c014100 	lui	at,0x4100
    12e4:	4481b000 	mtc1	at,$f22
    12e8:	afb60070 	sw	s6,112(sp)
    12ec:	afb5006c 	sw	s5,108(sp)
    12f0:	afb40068 	sw	s4,104(sp)
    12f4:	afb30064 	sw	s3,100(sp)
    12f8:	f7b40028 	sdc1	$f20,40(sp)
    12fc:	3c014170 	lui	at,0x4170
    1300:	afbe0078 	sw	s8,120(sp)
    1304:	afb70074 	sw	s7,116(sp)
    1308:	afb20060 	sw	s2,96(sp)
    130c:	afb1005c 	sw	s1,92(sp)
    1310:	afb00058 	sw	s0,88(sp)
    1314:	3c130000 	lui	s3,0x0
    1318:	3c140000 	lui	s4,0x0
    131c:	3c150000 	lui	s5,0x0
    1320:	3c160000 	lui	s6,0x0
    1324:	4481a000 	mtc1	at,$f20
    1328:	00808825 	move	s1,a0
    132c:	00a0f025 	move	s8,a1
    1330:	afbf007c 	sw	ra,124(sp)
    1334:	26d60000 	addiu	s6,s6,0
    1338:	26b50000 	addiu	s5,s5,0
    133c:	26940000 	addiu	s4,s4,0
    1340:	26730000 	addiu	s3,s3,0
    1344:	00008025 	move	s0,zero
    1348:	27b2008c 	addiu	s2,sp,140
    134c:	24170096 	li	s7,150
    1350:	0c000000 	jal	0 <func_80966950>
    1354:	4600a306 	mov.s	$f12,$f20
    1358:	c6240024 	lwc1	$f4,36(s1)
    135c:	4600a306 	mov.s	$f12,$f20
    1360:	46040180 	add.s	$f6,$f0,$f4
    1364:	0c000000 	jal	0 <func_80966950>
    1368:	e7a6008c 	swc1	$f6,140(sp)
    136c:	c6280028 	lwc1	$f8,40(s1)
    1370:	4600a306 	mov.s	$f12,$f20
    1374:	46080280 	add.s	$f10,$f0,$f8
    1378:	46185400 	add.s	$f16,$f10,$f24
    137c:	0c000000 	jal	0 <func_80966950>
    1380:	e7b00090 	swc1	$f16,144(sp)
    1384:	c632002c 	lwc1	$f18,44(s1)
    1388:	4600b306 	mov.s	$f12,$f22
    138c:	46120100 	add.s	$f4,$f0,$f18
    1390:	0c000000 	jal	0 <func_80966950>
    1394:	e7a40094 	swc1	$f4,148(sp)
    1398:	461a0180 	add.s	$f6,$f0,$f26
    139c:	3c010000 	lui	at,0x0
    13a0:	4600e306 	mov.s	$f12,$f28
    13a4:	0c000000 	jal	0 <func_80966950>
    13a8:	e4260000 	swc1	$f6,0(at)
    13ac:	3c010000 	lui	at,0x0
    13b0:	e4200000 	swc1	$f0,0(at)
    13b4:	0c000000 	jal	0 <func_80966950>
    13b8:	4600b306 	mov.s	$f12,$f22
    13bc:	461e0200 	add.s	$f8,$f0,$f30
    13c0:	44805000 	mtc1	zero,$f10
    13c4:	3c010000 	lui	at,0x0
    13c8:	e4280000 	swc1	$f8,0(at)
    13cc:	3c010000 	lui	at,0x0
    13d0:	e42a0000 	swc1	$f10,0(at)
    13d4:	3c014270 	lui	at,0x4270
    13d8:	44816000 	mtc1	at,$f12
    13dc:	0c000000 	jal	0 <func_80966950>
    13e0:	00000000 	nop
    13e4:	4600040d 	trunc.w.s	$f16,$f0
    13e8:	240e03e8 	li	t6,1000
    13ec:	afae0018 	sw	t6,24(sp)
    13f0:	03c02025 	move	a0,s8
    13f4:	44188000 	mfc1	t8,$f16
    13f8:	02402825 	move	a1,s2
    13fc:	02603025 	move	a2,s3
    1400:	2719003c 	addiu	t9,t8,60
    1404:	afb9001c 	sw	t9,28(sp)
    1408:	02803825 	move	a3,s4
    140c:	afb50010 	sw	s5,16(sp)
    1410:	0c000000 	jal	0 <func_80966950>
    1414:	afb60014 	sw	s6,20(sp)
    1418:	26100001 	addiu	s0,s0,1
    141c:	1617ffcc 	bne	s0,s7,1350 <func_80967BF8+0xa8>
    1420:	00000000 	nop
    1424:	8fbf007c 	lw	ra,124(sp)
    1428:	d7b40028 	ldc1	$f20,40(sp)
    142c:	d7b60030 	ldc1	$f22,48(sp)
    1430:	d7b80038 	ldc1	$f24,56(sp)
    1434:	d7ba0040 	ldc1	$f26,64(sp)
    1438:	d7bc0048 	ldc1	$f28,72(sp)
    143c:	d7be0050 	ldc1	$f30,80(sp)
    1440:	8fb00058 	lw	s0,88(sp)
    1444:	8fb1005c 	lw	s1,92(sp)
    1448:	8fb20060 	lw	s2,96(sp)
    144c:	8fb30064 	lw	s3,100(sp)
    1450:	8fb40068 	lw	s4,104(sp)
    1454:	8fb5006c 	lw	s5,108(sp)
    1458:	8fb60070 	lw	s6,112(sp)
    145c:	8fb70074 	lw	s7,116(sp)
    1460:	8fbe0078 	lw	s8,120(sp)
    1464:	03e00008 	jr	ra
    1468:	27bd0098 	addiu	sp,sp,152

0000146c <func_80967DBC>:
    146c:	27bdffd0 	addiu	sp,sp,-48
    1470:	afbf002c 	sw	ra,44(sp)
    1474:	afb00028 	sw	s0,40(sp)
    1478:	afa50034 	sw	a1,52(sp)
    147c:	00808025 	move	s0,a0
    1480:	0c000000 	jal	0 <func_80966950>
    1484:	240530b4 	li	a1,12468
    1488:	960e0290 	lhu	t6,656(s0)
    148c:	25cf0001 	addiu	t7,t6,1
    1490:	31f8ffff 	andi	t8,t7,0xffff
    1494:	2b01002d 	slti	at,t8,45
    1498:	14200044 	bnez	at,15ac <func_80967DBC+0x140>
    149c:	a60f0290 	sh	t7,656(s0)
    14a0:	92020293 	lbu	v0,659(s0)
    14a4:	240800ff 	li	t0,255
    14a8:	284100ec 	slti	at,v0,236
    14ac:	10200003 	beqz	at,14bc <func_80967DBC+0x50>
    14b0:	24590014 	addiu	t9,v0,20
    14b4:	10000002 	b	14c0 <func_80967DBC+0x54>
    14b8:	a2190293 	sb	t9,659(s0)
    14bc:	a2080293 	sb	t0,659(s0)
    14c0:	96020290 	lhu	v0,656(s0)
    14c4:	8fa50034 	lw	a1,52(sp)
    14c8:	28410069 	slti	at,v0,105
    14cc:	5420000c 	bnezl	at,1500 <func_80967DBC+0x94>
    14d0:	2841005f 	slti	at,v0,95
    14d4:	0c000000 	jal	0 <func_80966950>
    14d8:	8ca41c44 	lw	a0,7236(a1)
    14dc:	0c000000 	jal	0 <func_80966950>
    14e0:	02002025 	move	a0,s0
    14e4:	8fa90034 	lw	t1,52(sp)
    14e8:	240538a8 	li	a1,14504
    14ec:	0c000000 	jal	0 <func_80966950>
    14f0:	8d241c44 	lw	a0,7236(t1)
    14f4:	10000016 	b	1550 <func_80967DBC+0xe4>
    14f8:	c60a0024 	lwc1	$f10,36(s0)
    14fc:	2841005f 	slti	at,v0,95
    1500:	14200012 	bnez	at,154c <func_80967DBC+0xe0>
    1504:	3c010000 	lui	at,0x0
    1508:	c4260000 	lwc1	$f6,0(at)
    150c:	c6040050 	lwc1	$f4,80(s0)
    1510:	02002025 	move	a0,s0
    1514:	46062200 	add.s	$f8,$f4,$f6
    1518:	44054000 	mfc1	a1,$f8
    151c:	0c000000 	jal	0 <func_80966950>
    1520:	00000000 	nop
    1524:	960a0290 	lhu	t2,656(s0)
    1528:	2401005f 	li	at,95
    152c:	3c040000 	lui	a0,0x0
    1530:	55410007 	bnel	t2,at,1550 <func_80967DBC+0xe4>
    1534:	c60a0024 	lwc1	$f10,36(s0)
    1538:	0c000000 	jal	0 <func_80966950>
    153c:	24840000 	addiu	a0,a0,0
    1540:	02002025 	move	a0,s0
    1544:	0c000000 	jal	0 <func_80966950>
    1548:	240538b5 	li	a1,14517
    154c:	c60a0024 	lwc1	$f10,36(s0)
    1550:	c6120028 	lwc1	$f18,40(s0)
    1554:	c606002c 	lwc1	$f6,44(s0)
    1558:	4600540d 	trunc.w.s	$f16,$f10
    155c:	240e00ff 	li	t6,255
    1560:	240f00c8 	li	t7,200
    1564:	4600910d 	trunc.w.s	$f4,$f18
    1568:	44058000 	mfc1	a1,$f16
    156c:	afaf0014 	sw	t7,20(sp)
    1570:	4600320d 	trunc.w.s	$f8,$f6
    1574:	44062000 	mfc1	a2,$f4
    1578:	afae0010 	sw	t6,16(sp)
    157c:	afa00018 	sw	zero,24(sp)
    1580:	44074000 	mfc1	a3,$f8
    1584:	92180293 	lbu	t8,659(s0)
    1588:	00052c00 	sll	a1,a1,0x10
    158c:	00063400 	sll	a2,a2,0x10
    1590:	00073c00 	sll	a3,a3,0x10
    1594:	00073c03 	sra	a3,a3,0x10
    1598:	00063403 	sra	a2,a2,0x10
    159c:	00052c03 	sra	a1,a1,0x10
    15a0:	26040150 	addiu	a0,s0,336
    15a4:	0c000000 	jal	0 <func_80966950>
    15a8:	afb8001c 	sw	t8,28(sp)
    15ac:	8fbf002c 	lw	ra,44(sp)
    15b0:	8fb00028 	lw	s0,40(sp)
    15b4:	27bd0030 	addiu	sp,sp,48
    15b8:	03e00008 	jr	ra
    15bc:	00000000 	nop

000015c0 <func_80967F10>:
    15c0:	27bdffc8 	addiu	sp,sp,-56
    15c4:	afbf0034 	sw	ra,52(sp)
    15c8:	afb00030 	sw	s0,48(sp)
    15cc:	94820290 	lhu	v0,656(a0)
    15d0:	00808025 	move	s0,a0
    15d4:	24a41c24 	addiu	a0,a1,7204
    15d8:	1440000d 	bnez	v0,1610 <func_80967F10+0x50>
    15dc:	240600f5 	li	a2,245
    15e0:	c6040028 	lwc1	$f4,40(s0)
    15e4:	8e070024 	lw	a3,36(s0)
    15e8:	240e000d 	li	t6,13
    15ec:	e7a40010 	swc1	$f4,16(sp)
    15f0:	c606002c 	lwc1	$f6,44(s0)
    15f4:	afae0024 	sw	t6,36(sp)
    15f8:	afa00020 	sw	zero,32(sp)
    15fc:	afa0001c 	sw	zero,28(sp)
    1600:	afa00018 	sw	zero,24(sp)
    1604:	0c000000 	jal	0 <func_80966950>
    1608:	e7a60014 	swc1	$f6,20(sp)
    160c:	96020290 	lhu	v0,656(s0)
    1610:	244f0001 	addiu	t7,v0,1
    1614:	31e2ffff 	andi	v0,t7,0xffff
    1618:	2841003d 	slti	at,v0,61
    161c:	14200004 	bnez	at,1630 <func_80967F10+0x70>
    1620:	a60f0290 	sh	t7,656(s0)
    1624:	0c000000 	jal	0 <func_80966950>
    1628:	02002025 	move	a0,s0
    162c:	96020290 	lhu	v0,656(s0)
    1630:	44824000 	mtc1	v0,$f8
    1634:	02002025 	move	a0,s0
    1638:	04410005 	bgez	v0,1650 <func_80967F10+0x90>
    163c:	468042a0 	cvt.s.w	$f10,$f8
    1640:	3c014f80 	lui	at,0x4f80
    1644:	44818000 	mtc1	at,$f16
    1648:	00000000 	nop
    164c:	46105280 	add.s	$f10,$f10,$f16
    1650:	3c010000 	lui	at,0x0
    1654:	c4320000 	lwc1	$f18,0(at)
    1658:	3c010000 	lui	at,0x0
    165c:	c4260000 	lwc1	$f6,0(at)
    1660:	46125102 	mul.s	$f4,$f10,$f18
    1664:	46043201 	sub.s	$f8,$f6,$f4
    1668:	44054000 	mfc1	a1,$f8
    166c:	0c000000 	jal	0 <func_80966950>
    1670:	00000000 	nop
    1674:	8fbf0034 	lw	ra,52(sp)
    1678:	8fb00030 	lw	s0,48(sp)
    167c:	27bd0038 	addiu	sp,sp,56
    1680:	03e00008 	jr	ra
    1684:	00000000 	nop

00001688 <Demo6K_Update>:
    1688:	27bdffe8 	addiu	sp,sp,-24
    168c:	afbf0014 	sw	ra,20(sp)
    1690:	8c990288 	lw	t9,648(a0)
    1694:	0320f809 	jalr	t9
    1698:	00000000 	nop
    169c:	8fbf0014 	lw	ra,20(sp)
    16a0:	27bd0018 	addiu	sp,sp,24
    16a4:	03e00008 	jr	ra
    16a8:	00000000 	nop

000016ac <func_80967FFC>:
    16ac:	27bdff28 	addiu	sp,sp,-216
    16b0:	afbf0064 	sw	ra,100(sp)
    16b4:	afbe0060 	sw	s8,96(sp)
    16b8:	afb7005c 	sw	s7,92(sp)
    16bc:	afb60058 	sw	s6,88(sp)
    16c0:	afb50054 	sw	s5,84(sp)
    16c4:	afb40050 	sw	s4,80(sp)
    16c8:	afb3004c 	sw	s3,76(sp)
    16cc:	afb20048 	sw	s2,72(sp)
    16d0:	afb10044 	sw	s1,68(sp)
    16d4:	afb00040 	sw	s0,64(sp)
    16d8:	f7b40038 	sdc1	$f20,56(sp)
    16dc:	afa500dc 	sw	a1,220(sp)
    16e0:	8ca50000 	lw	a1,0(a1)
    16e4:	9492028e 	lhu	s2,654(a0)
    16e8:	3c060000 	lui	a2,0x0
    16ec:	24c60000 	addiu	a2,a2,0
    16f0:	27a400b8 	addiu	a0,sp,184
    16f4:	2407042e 	li	a3,1070
    16f8:	0c000000 	jal	0 <func_80966950>
    16fc:	00a08025 	move	s0,a1
    1700:	8faf00dc 	lw	t7,220(sp)
    1704:	0c000000 	jal	0 <func_80966950>
    1708:	8de40000 	lw	a0,0(t7)
    170c:	3c010000 	lui	at,0x0
    1710:	c4340000 	lwc1	$f20,0(at)
    1714:	24050001 	li	a1,1
    1718:	0c000000 	jal	0 <func_80966950>
    171c:	4600a306 	mov.s	$f12,$f20
    1720:	8e0202d0 	lw	v0,720(s0)
    1724:	3c19db06 	lui	t9,0xdb06
    1728:	37390020 	ori	t9,t9,0x20
    172c:	24580008 	addiu	t8,v0,8
    1730:	ae1802d0 	sw	t8,720(s0)
    1734:	ac590000 	sw	t9,0(v0)
    1738:	8fa800dc 	lw	t0,220(sp)
    173c:	001248c0 	sll	t1,s2,0x3
    1740:	312a7fff 	andi	t2,t1,0x7fff
    1744:	8d040000 	lw	a0,0(t0)
    1748:	240b7fff 	li	t3,32767
    174c:	016a3823 	subu	a3,t3,t2
    1750:	24180020 	li	t8,32
    1754:	240c0010 	li	t4,16
    1758:	240d0200 	li	t5,512
    175c:	240e0001 	li	t6,1
    1760:	240f0010 	li	t7,16
    1764:	afaf0024 	sw	t7,36(sp)
    1768:	afae0018 	sw	t6,24(sp)
    176c:	afad0014 	sw	t5,20(sp)
    1770:	afac0010 	sw	t4,16(sp)
    1774:	afb80028 	sw	t8,40(sp)
    1778:	afa70020 	sw	a3,32(sp)
    177c:	afa0001c 	sw	zero,28(sp)
    1780:	00002825 	move	a1,zero
    1784:	00003025 	move	a2,zero
    1788:	0c000000 	jal	0 <func_80966950>
    178c:	00408825 	move	s1,v0
    1790:	3c080000 	lui	t0,0x0
    1794:	25080000 	addiu	t0,t0,0
    1798:	ae220004 	sw	v0,4(s1)
    179c:	250a0024 	addiu	t2,t0,36
    17a0:	27b90088 	addiu	t9,sp,136
    17a4:	8d0b0000 	lw	t3,0(t0)
    17a8:	2508000c 	addiu	t0,t0,12
    17ac:	2739000c 	addiu	t9,t9,12
    17b0:	af2bfff4 	sw	t3,-12(t9)
    17b4:	8d09fff8 	lw	t1,-8(t0)
    17b8:	af29fff8 	sw	t1,-8(t9)
    17bc:	8d0bfffc 	lw	t3,-4(t0)
    17c0:	150afff8 	bne	t0,t2,17a4 <func_80967FFC+0xf8>
    17c4:	af2bfffc 	sw	t3,-4(t9)
    17c8:	4600a306 	mov.s	$f12,$f20
    17cc:	0c000000 	jal	0 <func_80966950>
    17d0:	24050001 	li	a1,1
    17d4:	3c0c0600 	lui	t4,0x600
    17d8:	258c22b0 	addiu	t4,t4,8880
    17dc:	3c010000 	lui	at,0x0
    17e0:	3c17fa00 	lui	s7,0xfa00
    17e4:	3c150000 	lui	s5,0x0
    17e8:	3c14da38 	lui	s4,0xda38
    17ec:	36940003 	ori	s4,s4,0x3
    17f0:	26b50000 	addiu	s5,s5,0
    17f4:	36f70080 	ori	s7,s7,0x80
    17f8:	c4340000 	lwc1	$f20,0(at)
    17fc:	afac006c 	sw	t4,108(sp)
    1800:	00009825 	move	s3,zero
    1804:	27b10088 	addiu	s1,sp,136
    1808:	3c1efb00 	lui	s8,0xfb00
    180c:	3c16e700 	lui	s6,0xe700
    1810:	4600a306 	mov.s	$f12,$f20
    1814:	0c000000 	jal	0 <func_80966950>
    1818:	24050001 	li	a1,1
    181c:	8e0202d0 	lw	v0,720(s0)
    1820:	02a02825 	move	a1,s5
    1824:	2406045b 	li	a2,1115
    1828:	244d0008 	addiu	t5,v0,8
    182c:	ae0d02d0 	sw	t5,720(s0)
    1830:	ac540000 	sw	s4,0(v0)
    1834:	8fae00dc 	lw	t6,220(sp)
    1838:	00409025 	move	s2,v0
    183c:	0c000000 	jal	0 <func_80966950>
    1840:	8dc40000 	lw	a0,0(t6)
    1844:	ae420004 	sw	v0,4(s2)
    1848:	8e0202d0 	lw	v0,720(s0)
    184c:	26730001 	addiu	s3,s3,1
    1850:	24010006 	li	at,6
    1854:	244f0008 	addiu	t7,v0,8
    1858:	ae0f02d0 	sw	t7,720(s0)
    185c:	ac400004 	sw	zero,4(v0)
    1860:	ac560000 	sw	s6,0(v0)
    1864:	8e0202d0 	lw	v0,720(s0)
    1868:	26310006 	addiu	s1,s1,6
    186c:	24580008 	addiu	t8,v0,8
    1870:	ae1802d0 	sw	t8,720(s0)
    1874:	ac570000 	sw	s7,0(v0)
    1878:	922bfffa 	lbu	t3,-6(s1)
    187c:	9228fffc 	lbu	t0,-4(s1)
    1880:	922ffffb 	lbu	t7,-5(s1)
    1884:	000b6600 	sll	t4,t3,0x18
    1888:	0008ca00 	sll	t9,t0,0x8
    188c:	032c6825 	or	t5,t9,t4
    1890:	000fc400 	sll	t8,t7,0x10
    1894:	01b85025 	or	t2,t5,t8
    1898:	354800ff 	ori	t0,t2,0xff
    189c:	ac480004 	sw	t0,4(v0)
    18a0:	8e0202d0 	lw	v0,720(s0)
    18a4:	24490008 	addiu	t1,v0,8
    18a8:	ae0902d0 	sw	t1,720(s0)
    18ac:	ac5e0000 	sw	s8,0(v0)
    18b0:	922ffffd 	lbu	t7,-3(s1)
    18b4:	9239ffff 	lbu	t9,-1(s1)
    18b8:	9228fffe 	lbu	t0,-2(s1)
    18bc:	000f6e00 	sll	t5,t7,0x18
    18c0:	00196200 	sll	t4,t9,0x8
    18c4:	018dc025 	or	t8,t4,t5
    18c8:	00084c00 	sll	t1,t0,0x10
    18cc:	03095825 	or	t3,t8,t1
    18d0:	357900ff 	ori	t9,t3,0xff
    18d4:	ac590004 	sw	t9,4(v0)
    18d8:	8e0202d0 	lw	v0,720(s0)
    18dc:	3c0fde00 	lui	t7,0xde00
    18e0:	244e0008 	addiu	t6,v0,8
    18e4:	ae0e02d0 	sw	t6,720(s0)
    18e8:	ac4f0000 	sw	t7,0(v0)
    18ec:	8fac006c 	lw	t4,108(sp)
    18f0:	1661ffc7 	bne	s3,at,1810 <func_80967FFC+0x164>
    18f4:	ac4c0004 	sw	t4,4(v0)
    18f8:	8fad00dc 	lw	t5,220(sp)
    18fc:	3c060000 	lui	a2,0x0
    1900:	24c60000 	addiu	a2,a2,0
    1904:	27a400b8 	addiu	a0,sp,184
    1908:	24070467 	li	a3,1127
    190c:	0c000000 	jal	0 <func_80966950>
    1910:	8da50000 	lw	a1,0(t5)
    1914:	8fbf0064 	lw	ra,100(sp)
    1918:	d7b40038 	ldc1	$f20,56(sp)
    191c:	8fb00040 	lw	s0,64(sp)
    1920:	8fb10044 	lw	s1,68(sp)
    1924:	8fb20048 	lw	s2,72(sp)
    1928:	8fb3004c 	lw	s3,76(sp)
    192c:	8fb40050 	lw	s4,80(sp)
    1930:	8fb50054 	lw	s5,84(sp)
    1934:	8fb60058 	lw	s6,88(sp)
    1938:	8fb7005c 	lw	s7,92(sp)
    193c:	8fbe0060 	lw	s8,96(sp)
    1940:	03e00008 	jr	ra
    1944:	27bd00d8 	addiu	sp,sp,216

00001948 <func_80968298>:
    1948:	27bdff50 	addiu	sp,sp,-176
    194c:	afbf003c 	sw	ra,60(sp)
    1950:	afb00038 	sw	s0,56(sp)
    1954:	afa400b0 	sw	a0,176(sp)
    1958:	afa500b4 	sw	a1,180(sp)
    195c:	948f028e 	lhu	t7,654(a0)
    1960:	3c020600 	lui	v0,0x600
    1964:	244235e0 	addiu	v0,v0,13792
    1968:	afaf00a4 	sw	t7,164(sp)
    196c:	c4860168 	lwc1	$f6,360(a0)
    1970:	c4840164 	lwc1	$f4,356(a0)
    1974:	0002c100 	sll	t8,v0,0x4
    1978:	0018cf02 	srl	t9,t8,0x1c
    197c:	46062202 	mul.s	$f8,$f4,$f6
    1980:	00194880 	sll	t1,t9,0x2
    1984:	3c0a0000 	lui	t2,0x0
    1988:	01495021 	addu	t2,t2,t1
    198c:	3c0100ff 	lui	at,0xff
    1990:	8d4a0000 	lw	t2,0(t2)
    1994:	3421ffff 	ori	at,at,0xffff
    1998:	00415824 	and	t3,v0,at
    199c:	e7a800a0 	swc1	$f8,160(sp)
    19a0:	8ca50000 	lw	a1,0(a1)
    19a4:	3c018000 	lui	at,0x8000
    19a8:	014b4021 	addu	t0,t2,t3
    19ac:	01014021 	addu	t0,t0,at
    19b0:	3c060000 	lui	a2,0x0
    19b4:	24c60000 	addiu	a2,a2,0
    19b8:	afa8009c 	sw	t0,156(sp)
    19bc:	27a4007c 	addiu	a0,sp,124
    19c0:	24070479 	li	a3,1145
    19c4:	0c000000 	jal	0 <func_80966950>
    19c8:	00a08025 	move	s0,a1
    19cc:	8fad00b0 	lw	t5,176(sp)
    19d0:	3c01437f 	lui	at,0x437f
    19d4:	44818000 	mtc1	at,$f16
    19d8:	c5aa0170 	lwc1	$f10,368(t5)
    19dc:	8e0402d0 	lw	a0,720(s0)
    19e0:	46105482 	mul.s	$f18,$f10,$f16
    19e4:	4600910d 	trunc.w.s	$f4,$f18
    19e8:	44052000 	mfc1	a1,$f4
    19ec:	0c000000 	jal	0 <func_80966950>
    19f0:	a3a50093 	sb	a1,147(sp)
    19f4:	93b90093 	lbu	t9,147(sp)
    19f8:	8fa8009c 	lw	t0,156(sp)
    19fc:	ae0202d0 	sw	v0,720(s0)
    1a00:	244e0008 	addiu	t6,v0,8
    1a04:	ae0e02d0 	sw	t6,720(s0)
    1a08:	3c18fa00 	lui	t8,0xfa00
    1a0c:	ac580000 	sw	t8,0(v0)
    1a10:	ac590004 	sw	t9,4(v0)
    1a14:	8e0202d0 	lw	v0,720(s0)
    1a18:	3c0ae300 	lui	t2,0xe300
    1a1c:	354a1a01 	ori	t2,t2,0x1a01
    1a20:	24490008 	addiu	t1,v0,8
    1a24:	ae0902d0 	sw	t1,720(s0)
    1a28:	240b0030 	li	t3,48
    1a2c:	ac4b0004 	sw	t3,4(v0)
    1a30:	ac4a0000 	sw	t2,0(v0)
    1a34:	8e0202d0 	lw	v0,720(s0)
    1a38:	3c0de300 	lui	t5,0xe300
    1a3c:	35ad1801 	ori	t5,t5,0x1801
    1a40:	244c0008 	addiu	t4,v0,8
    1a44:	ae0c02d0 	sw	t4,720(s0)
    1a48:	240f00c0 	li	t7,192
    1a4c:	ac4f0004 	sw	t7,4(v0)
    1a50:	ac4d0000 	sw	t5,0(v0)
    1a54:	8e0202d0 	lw	v0,720(s0)
    1a58:	3c18f64f 	lui	t8,0xf64f
    1a5c:	3718c3bc 	ori	t8,t8,0xc3bc
    1a60:	244e0008 	addiu	t6,v0,8
    1a64:	ae0e02d0 	sw	t6,720(s0)
    1a68:	ac400004 	sw	zero,4(v0)
    1a6c:	ac580000 	sw	t8,0(v0)
    1a70:	8fb900b4 	lw	t9,180(sp)
    1a74:	8f240000 	lw	a0,0(t9)
    1a78:	0c000000 	jal	0 <func_80966950>
    1a7c:	afa8009c 	sw	t0,156(sp)
    1a80:	8fa900b0 	lw	t1,176(sp)
    1a84:	3c01437f 	lui	at,0x437f
    1a88:	44814000 	mtc1	at,$f8
    1a8c:	c526016c 	lwc1	$f6,364(t1)
    1a90:	3c030000 	lui	v1,0x0
    1a94:	8fa8009c 	lw	t0,156(sp)
    1a98:	46083282 	mul.s	$f10,$f6,$f8
    1a9c:	24630000 	addiu	v1,v1,0
    1aa0:	00001025 	move	v0,zero
    1aa4:	2404003f 	li	a0,63
    1aa8:	3c010000 	lui	at,0x0
    1aac:	4600540d 	trunc.w.s	$f16,$f10
    1ab0:	44058000 	mfc1	a1,$f16
    1ab4:	00000000 	nop
    1ab8:	30a500ff 	andi	a1,a1,0xff
    1abc:	906b0000 	lbu	t3,0(v1)
    1ac0:	00026100 	sll	t4,v0,0x4
    1ac4:	010c6821 	addu	t5,t0,t4
    1ac8:	544b0004 	bnel	v0,t3,1adc <func_80968298+0x194>
    1acc:	a1a5000f 	sb	a1,15(t5)
    1ad0:	10000002 	b	1adc <func_80968298+0x194>
    1ad4:	24630001 	addiu	v1,v1,1
    1ad8:	a1a5000f 	sb	a1,15(t5)
    1adc:	24420001 	addiu	v0,v0,1
    1ae0:	5444fff7 	bnel	v0,a0,1ac0 <func_80968298+0x178>
    1ae4:	906b0000 	lbu	t3,0(v1)
    1ae8:	c42c0000 	lwc1	$f12,0(at)
    1aec:	0c000000 	jal	0 <func_80966950>
    1af0:	24050001 	li	a1,1
    1af4:	8e0202d0 	lw	v0,720(s0)
    1af8:	3c0eda38 	lui	t6,0xda38
    1afc:	35ce0003 	ori	t6,t6,0x3
    1b00:	244f0008 	addiu	t7,v0,8
    1b04:	ae0f02d0 	sw	t7,720(s0)
    1b08:	ac4e0000 	sw	t6,0(v0)
    1b0c:	8fb800b4 	lw	t8,180(sp)
    1b10:	3c050000 	lui	a1,0x0
    1b14:	24a50000 	addiu	a1,a1,0
    1b18:	8f040000 	lw	a0,0(t8)
    1b1c:	24060492 	li	a2,1170
    1b20:	0c000000 	jal	0 <func_80966950>
    1b24:	afa20068 	sw	v0,104(sp)
    1b28:	8fa30068 	lw	v1,104(sp)
    1b2c:	3c09fa00 	lui	t1,0xfa00
    1b30:	3c0ad2d2 	lui	t2,0xd2d2
    1b34:	ac620004 	sw	v0,4(v1)
    1b38:	8e0202d0 	lw	v0,720(s0)
    1b3c:	354ad2ff 	ori	t2,t2,0xd2ff
    1b40:	35290080 	ori	t1,t1,0x80
    1b44:	24590008 	addiu	t9,v0,8
    1b48:	ae1902d0 	sw	t9,720(s0)
    1b4c:	ac490000 	sw	t1,0(v0)
    1b50:	ac4a0004 	sw	t2,4(v0)
    1b54:	8e0202d0 	lw	v0,720(s0)
    1b58:	3c0d6464 	lui	t5,0x6464
    1b5c:	35ad64ff 	ori	t5,t5,0x64ff
    1b60:	244b0008 	addiu	t3,v0,8
    1b64:	ae0b02d0 	sw	t3,720(s0)
    1b68:	3c0cfb00 	lui	t4,0xfb00
    1b6c:	ac4c0000 	sw	t4,0(v0)
    1b70:	ac4d0004 	sw	t5,4(v0)
    1b74:	8e0202d0 	lw	v0,720(s0)
    1b78:	8fa800a4 	lw	t0,164(sp)
    1b7c:	3c0edb06 	lui	t6,0xdb06
    1b80:	244f0008 	addiu	t7,v0,8
    1b84:	ae0f02d0 	sw	t7,720(s0)
    1b88:	35ce0020 	ori	t6,t6,0x20
    1b8c:	ac4e0000 	sw	t6,0(v0)
    1b90:	8fb800b4 	lw	t8,180(sp)
    1b94:	0008c880 	sll	t9,t0,0x2
    1b98:	0328c823 	subu	t9,t9,t0
    1b9c:	8f040000 	lw	a0,0(t8)
    1ba0:	00083880 	sll	a3,t0,0x2
    1ba4:	0019c840 	sll	t9,t9,0x1
    1ba8:	24090fff 	li	t1,4095
    1bac:	00e83823 	subu	a3,a3,t0
    1bb0:	00073880 	sll	a3,a3,0x2
    1bb4:	01393023 	subu	a2,t1,t9
    1bb8:	30c60fff 	andi	a2,a2,0xfff
    1bbc:	30e70fff 	andi	a3,a3,0xfff
    1bc0:	240f0020 	li	t7,32
    1bc4:	240d0040 	li	t5,64
    1bc8:	240c0001 	li	t4,1
    1bcc:	240b0040 	li	t3,64
    1bd0:	240a0080 	li	t2,128
    1bd4:	afaa0010 	sw	t2,16(sp)
    1bd8:	afab0014 	sw	t3,20(sp)
    1bdc:	afac0018 	sw	t4,24(sp)
    1be0:	afad0024 	sw	t5,36(sp)
    1be4:	afaf0028 	sw	t7,40(sp)
    1be8:	afa70020 	sw	a3,32(sp)
    1bec:	afa6001c 	sw	a2,28(sp)
    1bf0:	00002825 	move	a1,zero
    1bf4:	0c000000 	jal	0 <func_80966950>
    1bf8:	afa2005c 	sw	v0,92(sp)
    1bfc:	8fa3005c 	lw	v1,92(sp)
    1c00:	3c090600 	lui	t1,0x600
    1c04:	252939d0 	addiu	t1,t1,14800
    1c08:	ac620004 	sw	v0,4(v1)
    1c0c:	8e0202d0 	lw	v0,720(s0)
    1c10:	3c18de00 	lui	t8,0xde00
    1c14:	24070001 	li	a3,1
    1c18:	244e0008 	addiu	t6,v0,8
    1c1c:	ae0e02d0 	sw	t6,720(s0)
    1c20:	ac490004 	sw	t1,4(v0)
    1c24:	ac580000 	sw	t8,0(v0)
    1c28:	c7ac00a0 	lwc1	$f12,160(sp)
    1c2c:	44066000 	mfc1	a2,$f12
    1c30:	0c000000 	jal	0 <func_80966950>
    1c34:	46006386 	mov.s	$f14,$f12
    1c38:	8e0202d0 	lw	v0,720(s0)
    1c3c:	3c0ada38 	lui	t2,0xda38
    1c40:	354a0003 	ori	t2,t2,0x3
    1c44:	24590008 	addiu	t9,v0,8
    1c48:	ae1902d0 	sw	t9,720(s0)
    1c4c:	ac4a0000 	sw	t2,0(v0)
    1c50:	8fab00b4 	lw	t3,180(sp)
    1c54:	3c050000 	lui	a1,0x0
    1c58:	24a50000 	addiu	a1,a1,0
    1c5c:	8d640000 	lw	a0,0(t3)
    1c60:	240604a5 	li	a2,1189
    1c64:	0c000000 	jal	0 <func_80966950>
    1c68:	afa20054 	sw	v0,84(sp)
    1c6c:	8fa30054 	lw	v1,84(sp)
    1c70:	ac620004 	sw	v0,4(v1)
    1c74:	8fac00b4 	lw	t4,180(sp)
    1c78:	0c000000 	jal	0 <func_80966950>
    1c7c:	8d840000 	lw	a0,0(t4)
    1c80:	8e0202d0 	lw	v0,720(s0)
    1c84:	3c0ffa00 	lui	t7,0xfa00
    1c88:	240effff 	li	t6,-1
    1c8c:	244d0008 	addiu	t5,v0,8
    1c90:	ae0d02d0 	sw	t5,720(s0)
    1c94:	ac4e0004 	sw	t6,4(v0)
    1c98:	ac4f0000 	sw	t7,0(v0)
    1c9c:	8e0202d0 	lw	v0,720(s0)
    1ca0:	3c193232 	lui	t9,0x3232
    1ca4:	373932ff 	ori	t9,t9,0x32ff
    1ca8:	24580008 	addiu	t8,v0,8
    1cac:	ae1802d0 	sw	t8,720(s0)
    1cb0:	3c09fb00 	lui	t1,0xfb00
    1cb4:	ac490000 	sw	t1,0(v0)
    1cb8:	ac590004 	sw	t9,4(v0)
    1cbc:	8e0202d0 	lw	v0,720(s0)
    1cc0:	3c0c0600 	lui	t4,0x600
    1cc4:	258c1040 	addiu	t4,t4,4160
    1cc8:	244a0008 	addiu	t2,v0,8
    1ccc:	ae0a02d0 	sw	t2,720(s0)
    1cd0:	3c0bde00 	lui	t3,0xde00
    1cd4:	ac4b0000 	sw	t3,0(v0)
    1cd8:	ac4c0004 	sw	t4,4(v0)
    1cdc:	8fad00b4 	lw	t5,180(sp)
    1ce0:	3c060000 	lui	a2,0x0
    1ce4:	24c60000 	addiu	a2,a2,0
    1ce8:	27a4007c 	addiu	a0,sp,124
    1cec:	240704ae 	li	a3,1198
    1cf0:	0c000000 	jal	0 <func_80966950>
    1cf4:	8da50000 	lw	a1,0(t5)
    1cf8:	8fbf003c 	lw	ra,60(sp)
    1cfc:	8fb00038 	lw	s0,56(sp)
    1d00:	27bd00b0 	addiu	sp,sp,176
    1d04:	03e00008 	jr	ra
    1d08:	00000000 	nop

00001d0c <func_8096865C>:
    1d0c:	27bdffa0 	addiu	sp,sp,-96
    1d10:	afbf001c 	sw	ra,28(sp)
    1d14:	afb00018 	sw	s0,24(sp)
    1d18:	afa40060 	sw	a0,96(sp)
    1d1c:	afa50064 	sw	a1,100(sp)
    1d20:	8ca50000 	lw	a1,0(a1)
    1d24:	3c060000 	lui	a2,0x0
    1d28:	24c60000 	addiu	a2,a2,0
    1d2c:	27a40040 	addiu	a0,sp,64
    1d30:	240704b8 	li	a3,1208
    1d34:	0c000000 	jal	0 <func_80966950>
    1d38:	00a08025 	move	s0,a1
    1d3c:	8fa20060 	lw	v0,96(sp)
    1d40:	944f028c 	lhu	t7,652(v0)
    1d44:	31f80001 	andi	t8,t7,0x1
    1d48:	5700007f 	bnezl	t8,1f48 <func_8096865C+0x23c>
    1d4c:	8faa0064 	lw	t2,100(sp)
    1d50:	8459001c 	lh	t9,28(v0)
    1d54:	3c090401 	lui	t1,0x401
    1d58:	3c080401 	lui	t0,0x401
    1d5c:	2b210009 	slti	at,t9,9
    1d60:	14200004 	bnez	at,1d74 <func_8096865C+0x68>
    1d64:	252901a8 	addiu	t1,t1,424
    1d68:	25080130 	addiu	t0,t0,304
    1d6c:	10000002 	b	1d78 <func_8096865C+0x6c>
    1d70:	afa80054 	sw	t0,84(sp)
    1d74:	afa90054 	sw	t1,84(sp)
    1d78:	8faa0064 	lw	t2,100(sp)
    1d7c:	0c000000 	jal	0 <func_80966950>
    1d80:	8d440000 	lw	a0,0(t2)
    1d84:	8e0202d0 	lw	v0,720(s0)
    1d88:	3c0cfa00 	lui	t4,0xfa00
    1d8c:	358c8080 	ori	t4,t4,0x8080
    1d90:	244b0008 	addiu	t3,v0,8
    1d94:	ae0b02d0 	sw	t3,720(s0)
    1d98:	240dffff 	li	t5,-1
    1d9c:	ac4d0004 	sw	t5,4(v0)
    1da0:	ac4c0000 	sw	t4,0(v0)
    1da4:	8e0202d0 	lw	v0,720(s0)
    1da8:	3c0ffb00 	lui	t7,0xfb00
    1dac:	3c090000 	lui	t1,0x0
    1db0:	244e0008 	addiu	t6,v0,8
    1db4:	ae0e02d0 	sw	t6,720(s0)
    1db8:	ac4f0000 	sw	t7,0(v0)
    1dbc:	8fb80060 	lw	t8,96(sp)
    1dc0:	25290000 	addiu	t1,t1,0
    1dc4:	3c010001 	lui	at,0x1
    1dc8:	93190293 	lbu	t9,659(t8)
    1dcc:	34211da0 	ori	at,at,0x1da0
    1dd0:	24050001 	li	a1,1
    1dd4:	00194080 	sll	t0,t9,0x2
    1dd8:	01194023 	subu	t0,t0,t9
    1ddc:	01091821 	addu	v1,t0,t1
    1de0:	906b0002 	lbu	t3,2(v1)
    1de4:	906e0000 	lbu	t6,0(v1)
    1de8:	90680001 	lbu	t0,1(v1)
    1dec:	000b6200 	sll	t4,t3,0x8
    1df0:	000e7e00 	sll	t7,t6,0x18
    1df4:	018fc025 	or	t8,t4,t7
    1df8:	00084c00 	sll	t1,t0,0x10
    1dfc:	03095025 	or	t2,t8,t1
    1e00:	354b00ff 	ori	t3,t2,0xff
    1e04:	ac4b0004 	sw	t3,4(v0)
    1e08:	8fa40064 	lw	a0,100(sp)
    1e0c:	0c000000 	jal	0 <func_80966950>
    1e10:	00812021 	addu	a0,a0,at
    1e14:	0c000000 	jal	0 <func_80966950>
    1e18:	00000000 	nop
    1e1c:	8fad0060 	lw	t5,96(sp)
    1e20:	3c010000 	lui	at,0x0
    1e24:	c4280000 	lwc1	$f8,0(at)
    1e28:	95ae0290 	lhu	t6,656(t5)
    1e2c:	24050001 	li	a1,1
    1e30:	000e6080 	sll	t4,t6,0x2
    1e34:	018e6023 	subu	t4,t4,t6
    1e38:	000c6040 	sll	t4,t4,0x1
    1e3c:	448c2000 	mtc1	t4,$f4
    1e40:	00000000 	nop
    1e44:	468021a0 	cvt.s.w	$f6,$f4
    1e48:	46083302 	mul.s	$f12,$f6,$f8
    1e4c:	0c000000 	jal	0 <func_80966950>
    1e50:	00000000 	nop
    1e54:	8e0202d0 	lw	v0,720(s0)
    1e58:	3c19da38 	lui	t9,0xda38
    1e5c:	37390003 	ori	t9,t9,0x3
    1e60:	244f0008 	addiu	t7,v0,8
    1e64:	ae0f02d0 	sw	t7,720(s0)
    1e68:	ac590000 	sw	t9,0(v0)
    1e6c:	8fa80064 	lw	t0,100(sp)
    1e70:	3c050000 	lui	a1,0x0
    1e74:	24a50000 	addiu	a1,a1,0
    1e78:	8d040000 	lw	a0,0(t0)
    1e7c:	240604ce 	li	a2,1230
    1e80:	0c000000 	jal	0 <func_80966950>
    1e84:	afa20034 	sw	v0,52(sp)
    1e88:	8fa30034 	lw	v1,52(sp)
    1e8c:	3c09de00 	lui	t1,0xde00
    1e90:	ac620004 	sw	v0,4(v1)
    1e94:	8e0202d0 	lw	v0,720(s0)
    1e98:	24580008 	addiu	t8,v0,8
    1e9c:	ae1802d0 	sw	t8,720(s0)
    1ea0:	ac490000 	sw	t1,0(v0)
    1ea4:	8faa0054 	lw	t2,84(sp)
    1ea8:	0c000000 	jal	0 <func_80966950>
    1eac:	ac4a0004 	sw	t2,4(v0)
    1eb0:	8fab0060 	lw	t3,96(sp)
    1eb4:	3c010000 	lui	at,0x0
    1eb8:	c4240000 	lwc1	$f4,0(at)
    1ebc:	956d0290 	lhu	t5,656(t3)
    1ec0:	24050001 	li	a1,1
    1ec4:	000d7080 	sll	t6,t5,0x2
    1ec8:	01cd7023 	subu	t6,t6,t5
    1ecc:	000e7040 	sll	t6,t6,0x1
    1ed0:	448e5000 	mtc1	t6,$f10
    1ed4:	00000000 	nop
    1ed8:	46805420 	cvt.s.w	$f16,$f10
    1edc:	46008487 	neg.s	$f18,$f16
    1ee0:	46049302 	mul.s	$f12,$f18,$f4
    1ee4:	0c000000 	jal	0 <func_80966950>
    1ee8:	00000000 	nop
    1eec:	8e0202d0 	lw	v0,720(s0)
    1ef0:	3c0fda38 	lui	t7,0xda38
    1ef4:	35ef0003 	ori	t7,t7,0x3
    1ef8:	244c0008 	addiu	t4,v0,8
    1efc:	ae0c02d0 	sw	t4,720(s0)
    1f00:	ac4f0000 	sw	t7,0(v0)
    1f04:	8fb90064 	lw	t9,100(sp)
    1f08:	3c050000 	lui	a1,0x0
    1f0c:	24a50000 	addiu	a1,a1,0
    1f10:	8f240000 	lw	a0,0(t9)
    1f14:	240604d4 	li	a2,1236
    1f18:	0c000000 	jal	0 <func_80966950>
    1f1c:	afa2002c 	sw	v0,44(sp)
    1f20:	8fa3002c 	lw	v1,44(sp)
    1f24:	3c18de00 	lui	t8,0xde00
    1f28:	ac620004 	sw	v0,4(v1)
    1f2c:	8e0202d0 	lw	v0,720(s0)
    1f30:	24480008 	addiu	t0,v0,8
    1f34:	ae0802d0 	sw	t0,720(s0)
    1f38:	ac580000 	sw	t8,0(v0)
    1f3c:	8fa90054 	lw	t1,84(sp)
    1f40:	ac490004 	sw	t1,4(v0)
    1f44:	8faa0064 	lw	t2,100(sp)
    1f48:	3c060000 	lui	a2,0x0
    1f4c:	24c60000 	addiu	a2,a2,0
    1f50:	27a40040 	addiu	a0,sp,64
    1f54:	240704da 	li	a3,1242
    1f58:	0c000000 	jal	0 <func_80966950>
    1f5c:	8d450000 	lw	a1,0(t2)
    1f60:	8fbf001c 	lw	ra,28(sp)
    1f64:	8fb00018 	lw	s0,24(sp)
    1f68:	27bd0060 	addiu	sp,sp,96
    1f6c:	03e00008 	jr	ra
    1f70:	00000000 	nop

00001f74 <func_809688C4>:
    1f74:	27bdff58 	addiu	sp,sp,-168
    1f78:	afbf0044 	sw	ra,68(sp)
    1f7c:	afbe0040 	sw	s8,64(sp)
    1f80:	afb7003c 	sw	s7,60(sp)
    1f84:	afb60038 	sw	s6,56(sp)
    1f88:	afb50034 	sw	s5,52(sp)
    1f8c:	afb40030 	sw	s4,48(sp)
    1f90:	afb3002c 	sw	s3,44(sp)
    1f94:	afb20028 	sw	s2,40(sp)
    1f98:	afb10024 	sw	s1,36(sp)
    1f9c:	afb00020 	sw	s0,32(sp)
    1fa0:	f7b40018 	sdc1	$f20,24(sp)
    1fa4:	90a21d6c 	lbu	v0,7532(a1)
    1fa8:	0080b025 	move	s6,a0
    1fac:	00a0b825 	move	s7,a1
    1fb0:	0002102b 	sltu	v0,zero,v0
    1fb4:	10400003 	beqz	v0,1fc4 <func_809688C4+0x50>
    1fb8:	8cb0009c 	lw	s0,156(a1)
    1fbc:	8ca21d90 	lw	v0,7568(a1)
    1fc0:	0002102b 	sltu	v0,zero,v0
    1fc4:	5040008a 	beqzl	v0,21f0 <func_809688C4+0x27c>
    1fc8:	8fbf0044 	lw	ra,68(sp)
    1fcc:	8eee1d90 	lw	t6,7568(s7)
    1fd0:	24010001 	li	at,1
    1fd4:	3c060000 	lui	a2,0x0
    1fd8:	95cf0000 	lhu	t7,0(t6)
    1fdc:	24c60000 	addiu	a2,a2,0
    1fe0:	27a40084 	addiu	a0,sp,132
    1fe4:	51e10082 	beql	t7,at,21f0 <func_809688C4+0x27c>
    1fe8:	8fbf0044 	lw	ra,68(sp)
    1fec:	8ee50000 	lw	a1,0(s7)
    1ff0:	240704fd 	li	a3,1277
    1ff4:	0c000000 	jal	0 <func_80966950>
    1ff8:	00a08825 	move	s1,a1
    1ffc:	0c000000 	jal	0 <func_80966950>
    2000:	8ee40000 	lw	a0,0(s7)
    2004:	8e2202d0 	lw	v0,720(s1)
    2008:	3c19fa00 	lui	t9,0xfa00
    200c:	37398080 	ori	t9,t9,0x8080
    2010:	24580008 	addiu	t8,v0,8
    2014:	ae3802d0 	sw	t8,720(s1)
    2018:	2408ffff 	li	t0,-1
    201c:	ac480004 	sw	t0,4(v0)
    2020:	ac590000 	sw	t9,0(v0)
    2024:	86e907a0 	lh	t1,1952(s7)
    2028:	00095080 	sll	t2,t1,0x2
    202c:	02ea5821 	addu	t3,s7,t2
    2030:	0c000000 	jal	0 <func_80966950>
    2034:	8d640790 	lw	a0,1936(t3)
    2038:	34018000 	li	at,0x8000
    203c:	00416021 	addu	t4,v0,at
    2040:	000c6c00 	sll	t5,t4,0x10
    2044:	000d7403 	sra	t6,t5,0x10
    2048:	448e2000 	mtc1	t6,$f4
    204c:	3c010000 	lui	at,0x0
    2050:	c4280000 	lwc1	$f8,0(at)
    2054:	468021a0 	cvt.s.w	$f6,$f4
    2058:	24050001 	li	a1,1
    205c:	46083302 	mul.s	$f12,$f6,$f8
    2060:	0c000000 	jal	0 <func_80966950>
    2064:	00000000 	nop
    2068:	3c0f0401 	lui	t7,0x401
    206c:	3c010001 	lui	at,0x1
    2070:	34211da0 	ori	at,at,0x1da0
    2074:	25ef0130 	addiu	t7,t7,304
    2078:	4480a000 	mtc1	zero,$f20
    207c:	afaf0058 	sw	t7,88(sp)
    2080:	02e1f021 	addu	s8,s7,at
    2084:	00009825 	move	s3,zero
    2088:	0200a025 	move	s4,s0
    208c:	02c09025 	move	s2,s6
    2090:	02c0a825 	move	s5,s6
    2094:	8e2202d0 	lw	v0,720(s1)
    2098:	3c19e700 	lui	t9,0xe700
    209c:	3c09fb00 	lui	t1,0xfb00
    20a0:	24580008 	addiu	t8,v0,8
    20a4:	ae3802d0 	sw	t8,720(s1)
    20a8:	ac400004 	sw	zero,4(v0)
    20ac:	ac590000 	sw	t9,0(v0)
    20b0:	8e2202d0 	lw	v0,720(s1)
    20b4:	3c0c0000 	lui	t4,0x0
    20b8:	258c0000 	addiu	t4,t4,0
    20bc:	24480008 	addiu	t0,v0,8
    20c0:	ae2802d0 	sw	t0,720(s1)
    20c4:	ac490000 	sw	t1,0(v0)
    20c8:	92aa0274 	lbu	t2,628(s5)
    20cc:	000a5880 	sll	t3,t2,0x2
    20d0:	016a5823 	subu	t3,t3,t2
    20d4:	016c1821 	addu	v1,t3,t4
    20d8:	906e0002 	lbu	t6,2(v1)
    20dc:	90790000 	lbu	t9,0(v1)
    20e0:	906b0001 	lbu	t3,1(v1)
    20e4:	000e7a00 	sll	t7,t6,0x8
    20e8:	00194600 	sll	t0,t9,0x18
    20ec:	01e84825 	or	t1,t7,t0
    20f0:	000b6400 	sll	t4,t3,0x10
    20f4:	012c6825 	or	t5,t1,t4
    20f8:	35ae00ff 	ori	t6,t5,0xff
    20fc:	0c000000 	jal	0 <func_80966950>
    2100:	ac4e0004 	sw	t6,4(v0)
    2104:	4406a000 	mfc1	a2,$f20
    2108:	c64c0174 	lwc1	$f12,372(s2)
    210c:	c64e01b4 	lwc1	$f14,436(s2)
    2110:	0c000000 	jal	0 <func_80966950>
    2114:	24070001 	li	a3,1
    2118:	32980003 	andi	t8,s4,0x3
    211c:	0018c880 	sll	t9,t8,0x2
    2120:	3c010000 	lui	at,0x0
    2124:	00390821 	addu	at,at,t9
    2128:	c42a0000 	lwc1	$f10,0(at)
    212c:	c6500234 	lwc1	$f16,564(s2)
    2130:	24070001 	li	a3,1
    2134:	46105302 	mul.s	$f12,$f10,$f16
    2138:	44066000 	mfc1	a2,$f12
    213c:	0c000000 	jal	0 <func_80966950>
    2140:	46006386 	mov.s	$f14,$f12
    2144:	0c000000 	jal	0 <func_80966950>
    2148:	03c02025 	move	a0,s8
    214c:	8e2202d0 	lw	v0,720(s1)
    2150:	3c08da38 	lui	t0,0xda38
    2154:	35080003 	ori	t0,t0,0x3
    2158:	244f0008 	addiu	t7,v0,8
    215c:	ae2f02d0 	sw	t7,720(s1)
    2160:	3c050000 	lui	a1,0x0
    2164:	ac480000 	sw	t0,0(v0)
    2168:	8ee40000 	lw	a0,0(s7)
    216c:	24a50000 	addiu	a1,a1,0
    2170:	24060511 	li	a2,1297
    2174:	0c000000 	jal	0 <func_80966950>
    2178:	00408025 	move	s0,v0
    217c:	ae020004 	sw	v0,4(s0)
    2180:	8e2202d0 	lw	v0,720(s1)
    2184:	3c0bde00 	lui	t3,0xde00
    2188:	244a0008 	addiu	t2,v0,8
    218c:	ae2a02d0 	sw	t2,720(s1)
    2190:	ac4b0000 	sw	t3,0(v0)
    2194:	8fa90058 	lw	t1,88(sp)
    2198:	0c000000 	jal	0 <func_80966950>
    219c:	ac490004 	sw	t1,4(v0)
    21a0:	26730004 	addiu	s3,s3,4
    21a4:	24010040 	li	at,64
    21a8:	26940001 	addiu	s4,s4,1
    21ac:	26520004 	addiu	s2,s2,4
    21b0:	1661ffb8 	bne	s3,at,2094 <func_809688C4+0x120>
    21b4:	26b50001 	addiu	s5,s5,1
    21b8:	8e2202d0 	lw	v0,720(s1)
    21bc:	3c0dde00 	lui	t5,0xde00
    21c0:	3c060000 	lui	a2,0x0
    21c4:	244c0008 	addiu	t4,v0,8
    21c8:	ae2c02d0 	sw	t4,720(s1)
    21cc:	ac4d0000 	sw	t5,0(v0)
    21d0:	8fae0058 	lw	t6,88(sp)
    21d4:	24c60000 	addiu	a2,a2,0
    21d8:	27a40084 	addiu	a0,sp,132
    21dc:	ac4e0004 	sw	t6,4(v0)
    21e0:	8ee50000 	lw	a1,0(s7)
    21e4:	0c000000 	jal	0 <func_80966950>
    21e8:	24070519 	li	a3,1305
    21ec:	8fbf0044 	lw	ra,68(sp)
    21f0:	d7b40018 	ldc1	$f20,24(sp)
    21f4:	8fb00020 	lw	s0,32(sp)
    21f8:	8fb10024 	lw	s1,36(sp)
    21fc:	8fb20028 	lw	s2,40(sp)
    2200:	8fb3002c 	lw	s3,44(sp)
    2204:	8fb40030 	lw	s4,48(sp)
    2208:	8fb50034 	lw	s5,52(sp)
    220c:	8fb60038 	lw	s6,56(sp)
    2210:	8fb7003c 	lw	s7,60(sp)
    2214:	8fbe0040 	lw	s8,64(sp)
    2218:	03e00008 	jr	ra
    221c:	27bd00a8 	addiu	sp,sp,168

00002220 <func_80968B70>:
    2220:	27bdff78 	addiu	sp,sp,-136
    2224:	afbf003c 	sw	ra,60(sp)
    2228:	afb10038 	sw	s1,56(sp)
    222c:	afb00034 	sw	s0,52(sp)
    2230:	afa5008c 	sw	a1,140(sp)
    2234:	948e0290 	lhu	t6,656(a0)
    2238:	00808825 	move	s1,a0
    223c:	3c060000 	lui	a2,0x0
    2240:	afae007c 	sw	t6,124(sp)
    2244:	8ca50000 	lw	a1,0(a1)
    2248:	24c60000 	addiu	a2,a2,0
    224c:	27a40060 	addiu	a0,sp,96
    2250:	24070524 	li	a3,1316
    2254:	0c000000 	jal	0 <func_80966950>
    2258:	00a08025 	move	s0,a1
    225c:	8fb8008c 	lw	t8,140(sp)
    2260:	0c000000 	jal	0 <func_80966950>
    2264:	8f040000 	lw	a0,0(t8)
    2268:	8fa4008c 	lw	a0,140(sp)
    226c:	3c010001 	lui	at,0x1
    2270:	34211da0 	ori	at,at,0x1da0
    2274:	24050001 	li	a1,1
    2278:	0c000000 	jal	0 <func_80966950>
    227c:	00812021 	addu	a0,a0,at
    2280:	3c010000 	lui	at,0x0
    2284:	c42c0000 	lwc1	$f12,0(at)
    2288:	0c000000 	jal	0 <func_80966950>
    228c:	24050001 	li	a1,1
    2290:	8e0202d0 	lw	v0,720(s0)
    2294:	3c09da38 	lui	t1,0xda38
    2298:	35290003 	ori	t1,t1,0x3
    229c:	24590008 	addiu	t9,v0,8
    22a0:	ae1902d0 	sw	t9,720(s0)
    22a4:	ac490000 	sw	t1,0(v0)
    22a8:	8faa008c 	lw	t2,140(sp)
    22ac:	3c050000 	lui	a1,0x0
    22b0:	24a50000 	addiu	a1,a1,0
    22b4:	8d440000 	lw	a0,0(t2)
    22b8:	2406052a 	li	a2,1322
    22bc:	0c000000 	jal	0 <func_80966950>
    22c0:	afa2005c 	sw	v0,92(sp)
    22c4:	8fa3005c 	lw	v1,92(sp)
    22c8:	3c0cdb06 	lui	t4,0xdb06
    22cc:	358c0020 	ori	t4,t4,0x20
    22d0:	ac620004 	sw	v0,4(v1)
    22d4:	8e0202d0 	lw	v0,720(s0)
    22d8:	8fa8007c 	lw	t0,124(sp)
    22dc:	241800ff 	li	t8,255
    22e0:	244b0008 	addiu	t3,v0,8
    22e4:	ae0b02d0 	sw	t3,720(s0)
    22e8:	ac4c0000 	sw	t4,0(v0)
    22ec:	8fad008c 	lw	t5,140(sp)
    22f0:	00087040 	sll	t6,t0,0x1
    22f4:	31cf00ff 	andi	t7,t6,0xff
    22f8:	8da40000 	lw	a0,0(t5)
    22fc:	00085900 	sll	t3,t0,0x4
    2300:	01685823 	subu	t3,t3,t0
    2304:	316c03ff 	andi	t4,t3,0x3ff
    2308:	240d0010 	li	t5,16
    230c:	030f3023 	subu	a2,t8,t7
    2310:	240e0040 	li	t6,64
    2314:	24190020 	li	t9,32
    2318:	24090020 	li	t1,32
    231c:	240a0001 	li	t2,1
    2320:	afaa0018 	sw	t2,24(sp)
    2324:	afa90014 	sw	t1,20(sp)
    2328:	afb90010 	sw	t9,16(sp)
    232c:	afae0028 	sw	t6,40(sp)
    2330:	afa6001c 	sw	a2,28(sp)
    2334:	afad0024 	sw	t5,36(sp)
    2338:	afac0020 	sw	t4,32(sp)
    233c:	00002825 	move	a1,zero
    2340:	00003825 	move	a3,zero
    2344:	0c000000 	jal	0 <func_80966950>
    2348:	afa20058 	sw	v0,88(sp)
    234c:	8fa30058 	lw	v1,88(sp)
    2350:	3c060000 	lui	a2,0x0
    2354:	24190064 	li	t9,100
    2358:	ac620004 	sw	v0,4(v1)
    235c:	96220290 	lhu	v0,656(s1)
    2360:	24c60000 	addiu	a2,a2,0
    2364:	28410028 	slti	at,v0,40
    2368:	10200066 	beqz	at,2504 <func_80968B70+0x2e4>
    236c:	00402025 	move	a0,v0
    2370:	44822000 	mtc1	v0,$f4
    2374:	3c014f80 	lui	at,0x4f80
    2378:	04410004 	bgez	v0,238c <func_80968B70+0x16c>
    237c:	468021a0 	cvt.s.w	$f6,$f4
    2380:	44814000 	mtc1	at,$f8
    2384:	00000000 	nop
    2388:	46083180 	add.s	$f6,$f6,$f8
    238c:	3c014020 	lui	at,0x4020
    2390:	44815000 	mtc1	at,$f10
    2394:	3c0142c8 	lui	at,0x42c8
    2398:	44819000 	mtc1	at,$f18
    239c:	460a3402 	mul.s	$f16,$f6,$f10
    23a0:	24030001 	li	v1,1
    23a4:	3c014f00 	lui	at,0x4f00
    23a8:	46109101 	sub.s	$f4,$f18,$f16
    23ac:	4458f800 	cfc1	t8,$31
    23b0:	44c3f800 	ctc1	v1,$31
    23b4:	00000000 	nop
    23b8:	46002224 	cvt.w.s	$f8,$f4
    23bc:	4443f800 	cfc1	v1,$31
    23c0:	00000000 	nop
    23c4:	30630078 	andi	v1,v1,0x78
    23c8:	50600013 	beqzl	v1,2418 <func_80968B70+0x1f8>
    23cc:	44034000 	mfc1	v1,$f8
    23d0:	44814000 	mtc1	at,$f8
    23d4:	24030001 	li	v1,1
    23d8:	46082201 	sub.s	$f8,$f4,$f8
    23dc:	44c3f800 	ctc1	v1,$31
    23e0:	00000000 	nop
    23e4:	46004224 	cvt.w.s	$f8,$f8
    23e8:	4443f800 	cfc1	v1,$31
    23ec:	00000000 	nop
    23f0:	30630078 	andi	v1,v1,0x78
    23f4:	14600005 	bnez	v1,240c <func_80968B70+0x1ec>
    23f8:	00000000 	nop
    23fc:	44034000 	mfc1	v1,$f8
    2400:	3c018000 	lui	at,0x8000
    2404:	10000007 	b	2424 <func_80968B70+0x204>
    2408:	00611825 	or	v1,v1,at
    240c:	10000005 	b	2424 <func_80968B70+0x204>
    2410:	2403ffff 	li	v1,-1
    2414:	44034000 	mfc1	v1,$f8
    2418:	00000000 	nop
    241c:	0460fffb 	bltz	v1,240c <func_80968B70+0x1ec>
    2420:	00000000 	nop
    2424:	306f00ff 	andi	t7,v1,0xff
    2428:	032f4823 	subu	t1,t9,t7
    242c:	a3a3007a 	sb	v1,122(sp)
    2430:	a3a30078 	sb	v1,120(sp)
    2434:	a3a00075 	sb	zero,117(sp)
    2438:	a3a00079 	sb	zero,121(sp)
    243c:	a3a90074 	sb	t1,116(sp)
    2440:	962a0290 	lhu	t2,656(s1)
    2444:	44d8f800 	ctc1	t8,$31
    2448:	3c014f80 	lui	at,0x4f80
    244c:	448a3000 	mtc1	t2,$f6
    2450:	00097040 	sll	t6,t1,0x1
    2454:	05410004 	bgez	t2,2468 <func_80968B70+0x248>
    2458:	468032a0 	cvt.s.w	$f10,$f6
    245c:	44819000 	mtc1	at,$f18
    2460:	00000000 	nop
    2464:	46125280 	add.s	$f10,$f10,$f18
    2468:	3c0140cc 	lui	at,0x40cc
    246c:	44818000 	mtc1	at,$f16
    2470:	240c0001 	li	t4,1
    2474:	3c014f00 	lui	at,0x4f00
    2478:	46105102 	mul.s	$f4,$f10,$f16
    247c:	444bf800 	cfc1	t3,$31
    2480:	44ccf800 	ctc1	t4,$31
    2484:	00000000 	nop
    2488:	46002224 	cvt.w.s	$f8,$f4
    248c:	444cf800 	cfc1	t4,$31
    2490:	00000000 	nop
    2494:	318c0078 	andi	t4,t4,0x78
    2498:	51800013 	beqzl	t4,24e8 <func_80968B70+0x2c8>
    249c:	440c4000 	mfc1	t4,$f8
    24a0:	44814000 	mtc1	at,$f8
    24a4:	240c0001 	li	t4,1
    24a8:	46082201 	sub.s	$f8,$f4,$f8
    24ac:	44ccf800 	ctc1	t4,$31
    24b0:	00000000 	nop
    24b4:	46004224 	cvt.w.s	$f8,$f8
    24b8:	444cf800 	cfc1	t4,$31
    24bc:	00000000 	nop
    24c0:	318c0078 	andi	t4,t4,0x78
    24c4:	15800005 	bnez	t4,24dc <func_80968B70+0x2bc>
    24c8:	00000000 	nop
    24cc:	440c4000 	mfc1	t4,$f8
    24d0:	3c018000 	lui	at,0x8000
    24d4:	10000007 	b	24f4 <func_80968B70+0x2d4>
    24d8:	01816025 	or	t4,t4,at
    24dc:	10000005 	b	24f4 <func_80968B70+0x2d4>
    24e0:	240cffff 	li	t4,-1
    24e4:	440c4000 	mfc1	t4,$f8
    24e8:	00000000 	nop
    24ec:	0580fffb 	bltz	t4,24dc <func_80968B70+0x2bc>
    24f0:	00000000 	nop
    24f4:	44cbf800 	ctc1	t3,$31
    24f8:	a3ac007b 	sb	t4,123(sp)
    24fc:	10000026 	b	2598 <func_80968B70+0x378>
    2500:	a3ae0076 	sb	t6,118(sp)
    2504:	28810032 	slti	at,a0,50
    2508:	10200013 	beqz	at,2558 <func_80968B70+0x338>
    250c:	0004c080 	sll	t8,a0,0x2
    2510:	0004c080 	sll	t8,a0,0x2
    2514:	0304c021 	addu	t8,t8,a0
    2518:	2702ff38 	addiu	v0,t8,-200
    251c:	240a0064 	li	t2,100
    2520:	00024880 	sll	t1,v0,0x2
    2524:	240d00c8 	li	t5,200
    2528:	240f00ff 	li	t7,255
    252c:	01425823 	subu	t3,t2,v0
    2530:	00026040 	sll	t4,v0,0x1
    2534:	01a97023 	subu	t6,t5,t1
    2538:	a3a20078 	sb	v0,120(sp)
    253c:	a3a0007a 	sb	zero,122(sp)
    2540:	a3a00079 	sb	zero,121(sp)
    2544:	a3af007b 	sb	t7,123(sp)
    2548:	a3ab0074 	sb	t3,116(sp)
    254c:	a3ac0075 	sb	t4,117(sp)
    2550:	10000011 	b	2598 <func_80968B70+0x378>
    2554:	a3ae0076 	sb	t6,118(sp)
    2558:	0304c021 	addu	t8,t8,a0
    255c:	2702ff06 	addiu	v0,t8,-250
    2560:	00021840 	sll	v1,v0,0x1
    2564:	0002c880 	sll	t9,v0,0x2
    2568:	24630032 	addiu	v1,v1,50
    256c:	240b0064 	li	t3,100
    2570:	0322c823 	subu	t9,t9,v0
    2574:	240a00ff 	li	t2,255
    2578:	01626023 	subu	t4,t3,v0
    257c:	a3a2007a 	sb	v0,122(sp)
    2580:	a3a00076 	sb	zero,118(sp)
    2584:	a3b90079 	sb	t9,121(sp)
    2588:	a3aa007b 	sb	t2,123(sp)
    258c:	a3a30074 	sb	v1,116(sp)
    2590:	a3a30078 	sb	v1,120(sp)
    2594:	a3ac0075 	sb	t4,117(sp)
    2598:	8e0202d0 	lw	v0,720(s0)
    259c:	3c09fa00 	lui	t1,0xfa00
    25a0:	35290080 	ori	t1,t1,0x80
    25a4:	244d0008 	addiu	t5,v0,8
    25a8:	ae0d02d0 	sw	t5,720(s0)
    25ac:	ac490000 	sw	t1,0(v0)
    25b0:	93b90078 	lbu	t9,120(sp)
    25b4:	93b8007b 	lbu	t8,123(sp)
    25b8:	93ad0079 	lbu	t5,121(sp)
    25bc:	00195600 	sll	t2,t9,0x18
    25c0:	93b9007a 	lbu	t9,122(sp)
    25c4:	030a5825 	or	t3,t8,t2
    25c8:	000d4c00 	sll	t1,t5,0x10
    25cc:	01697025 	or	t6,t3,t1
    25d0:	0019c200 	sll	t8,t9,0x8
    25d4:	01d85025 	or	t2,t6,t8
    25d8:	ac4a0004 	sw	t2,4(v0)
    25dc:	8e0202d0 	lw	v0,720(s0)
    25e0:	3c0dfb00 	lui	t5,0xfb00
    25e4:	27a40060 	addiu	a0,sp,96
    25e8:	244c0008 	addiu	t4,v0,8
    25ec:	ae0c02d0 	sw	t4,720(s0)
    25f0:	ac4d0000 	sw	t5,0(v0)
    25f4:	93ae0074 	lbu	t6,116(sp)
    25f8:	93a90076 	lbu	t1,118(sp)
    25fc:	93ad0075 	lbu	t5,117(sp)
    2600:	000ec600 	sll	t8,t6,0x18
    2604:	00097a00 	sll	t7,t1,0x8
    2608:	01f85025 	or	t2,t7,t8
    260c:	000d5c00 	sll	t3,t5,0x10
    2610:	014b4825 	or	t1,t2,t3
    2614:	35390080 	ori	t9,t1,0x80
    2618:	ac590004 	sw	t9,4(v0)
    261c:	8e0202d0 	lw	v0,720(s0)
    2620:	3c180600 	lui	t8,0x600
    2624:	27181190 	addiu	t8,t8,4496
    2628:	244e0008 	addiu	t6,v0,8
    262c:	ae0e02d0 	sw	t6,720(s0)
    2630:	3c0fde00 	lui	t7,0xde00
    2634:	ac4f0000 	sw	t7,0(v0)
    2638:	ac580004 	sw	t8,4(v0)
    263c:	8fac008c 	lw	t4,140(sp)
    2640:	24070558 	li	a3,1368
    2644:	0c000000 	jal	0 <func_80966950>
    2648:	8d850000 	lw	a1,0(t4)
    264c:	8fbf003c 	lw	ra,60(sp)
    2650:	8fb00034 	lw	s0,52(sp)
    2654:	8fb10038 	lw	s1,56(sp)
    2658:	03e00008 	jr	ra
    265c:	27bd0088 	addiu	sp,sp,136

00002660 <func_80968FB0>:
    2660:	27bdff98 	addiu	sp,sp,-104
    2664:	afbf0014 	sw	ra,20(sp)
    2668:	afa40068 	sw	a0,104(sp)
    266c:	afa5006c 	sw	a1,108(sp)
    2670:	8ca40000 	lw	a0,0(a1)
    2674:	0c000000 	jal	0 <func_80966950>
    2678:	24050020 	li	a1,32
    267c:	8fa3006c 	lw	v1,108(sp)
    2680:	3c0f0001 	lui	t7,0x1
    2684:	3c060000 	lui	a2,0x0
    2688:	01e37821 	addu	t7,t7,v1
    268c:	8def1de4 	lw	t7,7652(t7)
    2690:	24c60000 	addiu	a2,a2,0
    2694:	27a40040 	addiu	a0,sp,64
    2698:	a7af005e 	sh	t7,94(sp)
    269c:	8c650000 	lw	a1,0(v1)
    26a0:	afa20060 	sw	v0,96(sp)
    26a4:	2407056a 	li	a3,1386
    26a8:	0c000000 	jal	0 <func_80966950>
    26ac:	afa50050 	sw	a1,80(sp)
    26b0:	8fb8006c 	lw	t8,108(sp)
    26b4:	0c000000 	jal	0 <func_80966950>
    26b8:	8f040000 	lw	a0,0(t8)
    26bc:	97b9005e 	lhu	t9,94(sp)
    26c0:	3c0c0000 	lui	t4,0x0
    26c4:	3c010000 	lui	at,0x0
    26c8:	00195080 	sll	t2,t9,0x2
    26cc:	314b000f 	andi	t3,t2,0xf
    26d0:	018b6021 	addu	t4,t4,t3
    26d4:	918c0000 	lbu	t4,0(t4)
    26d8:	c4280000 	lwc1	$f8,0(at)
    26dc:	3c013f80 	lui	at,0x3f80
    26e0:	448c2000 	mtc1	t4,$f4
    26e4:	44818000 	mtc1	at,$f16
    26e8:	8fa20068 	lw	v0,104(sp)
    26ec:	468021a0 	cvt.s.w	$f6,$f4
    26f0:	24070001 	li	a3,1
    26f4:	c4520050 	lwc1	$f18,80(v0)
    26f8:	c4440054 	lwc1	$f4,84(v0)
    26fc:	46083282 	mul.s	$f10,$f6,$f8
    2700:	c4460058 	lwc1	$f6,88(v0)
    2704:	46105000 	add.s	$f0,$f10,$f16
    2708:	46009302 	mul.s	$f12,$f18,$f0
    270c:	00000000 	nop
    2710:	46002382 	mul.s	$f14,$f4,$f0
    2714:	00000000 	nop
    2718:	46003202 	mul.s	$f8,$f6,$f0
    271c:	44064000 	mfc1	a2,$f8
    2720:	0c000000 	jal	0 <func_80966950>
    2724:	00000000 	nop
    2728:	8fa90050 	lw	t1,80(sp)
    272c:	8fa80060 	lw	t0,96(sp)
    2730:	3c0eda38 	lui	t6,0xda38
    2734:	8d2202d0 	lw	v0,720(t1)
    2738:	35ce0003 	ori	t6,t6,0x3
    273c:	3c050000 	lui	a1,0x0
    2740:	244d0008 	addiu	t5,v0,8
    2744:	ad2d02d0 	sw	t5,720(t1)
    2748:	ac4e0000 	sw	t6,0(v0)
    274c:	8faf006c 	lw	t7,108(sp)
    2750:	24a50000 	addiu	a1,a1,0
    2754:	24060572 	li	a2,1394
    2758:	8de40000 	lw	a0,0(t7)
    275c:	afa90050 	sw	t1,80(sp)
    2760:	afa80060 	sw	t0,96(sp)
    2764:	0c000000 	jal	0 <func_80966950>
    2768:	afa2003c 	sw	v0,60(sp)
    276c:	8fa3003c 	lw	v1,60(sp)
    2770:	8fa90050 	lw	t1,80(sp)
    2774:	8fa80060 	lw	t0,96(sp)
    2778:	ac620004 	sw	v0,4(v1)
    277c:	8d2202d0 	lw	v0,720(t1)
    2780:	3c19db06 	lui	t9,0xdb06
    2784:	37390020 	ori	t9,t9,0x20
    2788:	24580008 	addiu	t8,v0,8
    278c:	ad3802d0 	sw	t8,720(t1)
    2790:	ac480004 	sw	t0,4(v0)
    2794:	ac590000 	sw	t9,0(v0)
    2798:	01001025 	move	v0,t0
    279c:	3c0ae700 	lui	t2,0xe700
    27a0:	ac4a0000 	sw	t2,0(v0)
    27a4:	ac400004 	sw	zero,4(v0)
    27a8:	3c0bfa00 	lui	t3,0xfa00
    27ac:	25080008 	addiu	t0,t0,8
    27b0:	01001025 	move	v0,t0
    27b4:	356b0080 	ori	t3,t3,0x80
    27b8:	ac4b0000 	sw	t3,0(v0)
    27bc:	8fac0068 	lw	t4,104(sp)
    27c0:	2401ff00 	li	at,-256
    27c4:	25080008 	addiu	t0,t0,8
    27c8:	918e0293 	lbu	t6,659(t4)
    27cc:	3c190c18 	lui	t9,0xc18
    27d0:	3c18e200 	lui	t8,0xe200
    27d4:	01c17825 	or	t7,t6,at
    27d8:	ac4f0004 	sw	t7,4(v0)
    27dc:	01001025 	move	v0,t0
    27e0:	3718001c 	ori	t8,t8,0x1c
    27e4:	37394b50 	ori	t9,t9,0x4b50
    27e8:	ac590004 	sw	t9,4(v0)
    27ec:	ac580000 	sw	t8,0(v0)
    27f0:	3c0adf00 	lui	t2,0xdf00
    27f4:	ad0a0008 	sw	t2,8(t0)
    27f8:	ad00000c 	sw	zero,12(t0)
    27fc:	8d2202d0 	lw	v0,720(t1)
    2800:	3c0dffc8 	lui	t5,0xffc8
    2804:	35ad00ff 	ori	t5,t5,0xff
    2808:	244b0008 	addiu	t3,v0,8
    280c:	ad2b02d0 	sw	t3,720(t1)
    2810:	3c0cfb00 	lui	t4,0xfb00
    2814:	ac4c0000 	sw	t4,0(v0)
    2818:	ac4d0004 	sw	t5,4(v0)
    281c:	8d2202d0 	lw	v0,720(t1)
    2820:	3c180401 	lui	t8,0x401
    2824:	27185780 	addiu	t8,t8,22400
    2828:	244e0008 	addiu	t6,v0,8
    282c:	ad2e02d0 	sw	t6,720(t1)
    2830:	3c0fde00 	lui	t7,0xde00
    2834:	ac4f0000 	sw	t7,0(v0)
    2838:	ac580004 	sw	t8,4(v0)
    283c:	8fb9006c 	lw	t9,108(sp)
    2840:	3c060000 	lui	a2,0x0
    2844:	25080008 	addiu	t0,t0,8
    2848:	24c60000 	addiu	a2,a2,0
    284c:	27a40040 	addiu	a0,sp,64
    2850:	24070583 	li	a3,1411
    2854:	0c000000 	jal	0 <func_80966950>
    2858:	8f250000 	lw	a1,0(t9)
    285c:	8fbf0014 	lw	ra,20(sp)
    2860:	27bd0068 	addiu	sp,sp,104
    2864:	03e00008 	jr	ra
    2868:	00000000 	nop

0000286c <func_809691BC>:
    286c:	27bdffd0 	addiu	sp,sp,-48
    2870:	00067880 	sll	t7,a2,0x2
    2874:	afbf0014 	sw	ra,20(sp)
    2878:	afa40030 	sw	a0,48(sp)
    287c:	afa60038 	sw	a2,56(sp)
    2880:	00afc021 	addu	t8,a1,t7
    2884:	8f021d8c 	lw	v0,7564(t8)
    2888:	00a03825 	move	a3,a1
    288c:	8c4a0018 	lw	t2,24(v0)
    2890:	8c59000c 	lw	t9,12(v0)
    2894:	8c480010 	lw	t0,16(v0)
    2898:	448a5000 	mtc1	t2,$f10
    289c:	8c490014 	lw	t1,20(v0)
    28a0:	44992000 	mtc1	t9,$f4
    28a4:	46805420 	cvt.s.w	$f16,$f10
    28a8:	44883000 	mtc1	t0,$f6
    28ac:	44894000 	mtc1	t1,$f8
    28b0:	468020a0 	cvt.s.w	$f2,$f4
    28b4:	e7b00018 	swc1	$f16,24(sp)
    28b8:	8c4b001c 	lw	t3,28(v0)
    28bc:	448b9000 	mtc1	t3,$f18
    28c0:	46803320 	cvt.s.w	$f12,$f6
    28c4:	46809120 	cvt.s.w	$f4,$f18
    28c8:	468043a0 	cvt.s.w	$f14,$f8
    28cc:	e7a4001c 	swc1	$f4,28(sp)
    28d0:	8c4c0020 	lw	t4,32(v0)
    28d4:	448c3000 	mtc1	t4,$f6
    28d8:	00000000 	nop
    28dc:	46803220 	cvt.s.w	$f8,$f6
    28e0:	e7a80020 	swc1	$f8,32(sp)
    28e4:	94e61d74 	lhu	a2,7540(a3)
    28e8:	94450002 	lhu	a1,2(v0)
    28ec:	94440004 	lhu	a0,4(v0)
    28f0:	e7ae002c 	swc1	$f14,44(sp)
    28f4:	e7ac0028 	swc1	$f12,40(sp)
    28f8:	0c000000 	jal	0 <func_80966950>
    28fc:	e7a20024 	swc1	$f2,36(sp)
    2900:	c7a20024 	lwc1	$f2,36(sp)
    2904:	c7aa0018 	lwc1	$f10,24(sp)
    2908:	8fa20030 	lw	v0,48(sp)
    290c:	c7ac0028 	lwc1	$f12,40(sp)
    2910:	46025401 	sub.s	$f16,$f10,$f2
    2914:	c7ae002c 	lwc1	$f14,44(sp)
    2918:	46008482 	mul.s	$f18,$f16,$f0
    291c:	46029100 	add.s	$f4,$f18,$f2
    2920:	e4440024 	swc1	$f4,36(v0)
    2924:	c7a6001c 	lwc1	$f6,28(sp)
    2928:	460c3201 	sub.s	$f8,$f6,$f12
    292c:	46004282 	mul.s	$f10,$f8,$f0
    2930:	460c5400 	add.s	$f16,$f10,$f12
    2934:	e4500028 	swc1	$f16,40(v0)
    2938:	c7b20020 	lwc1	$f18,32(sp)
    293c:	460e9101 	sub.s	$f4,$f18,$f14
    2940:	46002182 	mul.s	$f6,$f4,$f0
    2944:	460e3200 	add.s	$f8,$f6,$f14
    2948:	e448002c 	swc1	$f8,44(v0)
    294c:	8fbf0014 	lw	ra,20(sp)
    2950:	27bd0030 	addiu	sp,sp,48
    2954:	03e00008 	jr	ra
    2958:	00000000 	nop
    295c:	00000000 	nop
