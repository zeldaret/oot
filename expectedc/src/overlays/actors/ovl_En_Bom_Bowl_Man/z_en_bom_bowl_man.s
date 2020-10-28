
build/src/overlays/actors/ovl_En_Bom_Bowl_Man/z_en_bom_bowl_man.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBomBowlMan_Init>:
       0:	27bdffa8 	addiu	sp,sp,-88
       4:	afbe0050 	sw	s8,80(sp)
       8:	afb3003c 	sw	s3,60(sp)
       c:	00a09825 	move	s3,a1
      10:	0080f025 	move	s8,a0
      14:	afbf0054 	sw	ra,84(sp)
      18:	3c060000 	lui	a2,0x0
      1c:	afb7004c 	sw	s7,76(sp)
      20:	afb60048 	sw	s6,72(sp)
      24:	afb50044 	sw	s5,68(sp)
      28:	afb40040 	sw	s4,64(sp)
      2c:	afb20038 	sw	s2,56(sp)
      30:	afb10034 	sw	s1,52(sp)
      34:	afb00030 	sw	s0,48(sp)
      38:	24c60000 	addiu	a2,a2,0
      3c:	248400b4 	addiu	a0,a0,180
      40:	24050000 	li	a1,0
      44:	0c000000 	jal	0 <EnBomBowlMan_Init>
      48:	3c0741f0 	lui	a3,0x41f0
      4c:	3c060600 	lui	a2,0x600
      50:	3c070600 	lui	a3,0x600
      54:	27ce0190 	addiu	t6,s8,400
      58:	27cf01d2 	addiu	t7,s8,466
      5c:	2418000b 	li	t8,11
      60:	afb80018 	sw	t8,24(sp)
      64:	afaf0014 	sw	t7,20(sp)
      68:	afae0010 	sw	t6,16(sp)
      6c:	24e70710 	addiu	a3,a3,1808
      70:	24c66eb0 	addiu	a2,a2,28336
      74:	02602025 	move	a0,s3
      78:	0c000000 	jal	0 <EnBomBowlMan_Init>
      7c:	27c5014c 	addiu	a1,s8,332
      80:	3c040000 	lui	a0,0x0
      84:	0c000000 	jal	0 <EnBomBowlMan_Init>
      88:	24840000 	addiu	a0,a0,0
      8c:	3c050001 	lui	a1,0x1
      90:	00b32821 	addu	a1,a1,s3
      94:	3c040000 	lui	a0,0x0
      98:	24840000 	addiu	a0,a0,0
      9c:	0c000000 	jal	0 <EnBomBowlMan_Init>
      a0:	80a51e5d 	lb	a1,7773(a1)
      a4:	8fc80024 	lw	t0,36(s8)
      a8:	3c01c270 	lui	at,0xc270
      ac:	8fd90028 	lw	t9,40(s8)
      b0:	afc80248 	sw	t0,584(s8)
      b4:	8fc8002c 	lw	t0,44(s8)
      b8:	44812000 	mtc1	at,$f4
      bc:	3c053c54 	lui	a1,0x3c54
      c0:	34a5fdf4 	ori	a1,a1,0xfdf4
      c4:	03c02025 	move	a0,s8
      c8:	afd9024c 	sw	t9,588(s8)
      cc:	afc80250 	sw	t0,592(s8)
      d0:	0c000000 	jal	0 <EnBomBowlMan_Init>
      d4:	e7c400bc 	swc1	$f4,188(s8)
      d8:	3c100000 	lui	s0,0x0
      dc:	3c160000 	lui	s6,0x0
      e0:	3c150000 	lui	s5,0x0
      e4:	26b50000 	addiu	s5,s5,0
      e8:	26d60000 	addiu	s6,s6,0
      ec:	26100000 	addiu	s0,s0,0
      f0:	00008825 	move	s1,zero
      f4:	00009025 	move	s2,zero
      f8:	26741c24 	addiu	s4,s3,7204
      fc:	24170002 	li	s7,2
     100:	c6060004 	lwc1	$f6,4(s0)
     104:	c6080008 	lwc1	$f8,8(s0)
     108:	24090001 	li	t1,1
     10c:	afa90024 	sw	t1,36(sp)
     110:	02802025 	move	a0,s4
     114:	02602825 	move	a1,s3
     118:	24060143 	li	a2,323
     11c:	8e070000 	lw	a3,0(s0)
     120:	afa00018 	sw	zero,24(sp)
     124:	afa0001c 	sw	zero,28(sp)
     128:	afa00020 	sw	zero,32(sp)
     12c:	e7a60010 	swc1	$f6,16(sp)
     130:	0c000000 	jal	0 <EnBomBowlMan_Init>
     134:	e7a80014 	swc1	$f8,20(sp)
     138:	10400010 	beqz	v0,17c <EnBomBowlMan_Init+0x17c>
     13c:	2610000c 	addiu	s0,s0,12
     140:	00115080 	sll	t2,s1,0x2
     144:	02aa5821 	addu	t3,s5,t2
     148:	c56a0000 	lwc1	$f10,0(t3)
     14c:	02d21821 	addu	v1,s6,s2
     150:	e44a02f4 	swc1	$f10,756(v0)
     154:	c4700000 	lwc1	$f16,0(v1)
     158:	4600848d 	trunc.w.s	$f18,$f16
     15c:	440d9000 	mfc1	t5,$f18
     160:	00000000 	nop
     164:	a44d033c 	sh	t5,828(v0)
     168:	c4640004 	lwc1	$f4,4(v1)
     16c:	4600218d 	trunc.w.s	$f6,$f4
     170:	440f3000 	mfc1	t7,$f6
     174:	00000000 	nop
     178:	a44f033e 	sh	t7,830(v0)
     17c:	26310001 	addiu	s1,s1,1
     180:	1637ffdf 	bne	s1,s7,100 <EnBomBowlMan_Init+0x100>
     184:	2652000c 	addiu	s2,s2,12
     188:	3c010000 	lui	at,0x0
     18c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     190:	c42c0000 	lwc1	$f12,0(at)
     194:	4600020d 	trunc.w.s	$f8,$f0
     198:	3c090000 	lui	t1,0x0
     19c:	24080001 	li	t0,1
     1a0:	25290000 	addiu	t1,t1,0
     1a4:	44194000 	mfc1	t9,$f8
     1a8:	a3c8001f 	sb	t0,31(s8)
     1ac:	afc90214 	sw	t1,532(s8)
     1b0:	a7d90242 	sh	t9,578(s8)
     1b4:	8fbf0054 	lw	ra,84(sp)
     1b8:	8fbe0050 	lw	s8,80(sp)
     1bc:	8fb7004c 	lw	s7,76(sp)
     1c0:	8fb60048 	lw	s6,72(sp)
     1c4:	8fb50044 	lw	s5,68(sp)
     1c8:	8fb40040 	lw	s4,64(sp)
     1cc:	8fb3003c 	lw	s3,60(sp)
     1d0:	8fb20038 	lw	s2,56(sp)
     1d4:	8fb10034 	lw	s1,52(sp)
     1d8:	8fb00030 	lw	s0,48(sp)
     1dc:	03e00008 	jr	ra
     1e0:	27bd0058 	addiu	sp,sp,88

000001e4 <EnBomBowlMan_Destroy>:
     1e4:	afa40000 	sw	a0,0(sp)
     1e8:	03e00008 	jr	ra
     1ec:	afa50004 	sw	a1,4(sp)

000001f0 <func_809C3820>:
     1f0:	27bdffd0 	addiu	sp,sp,-48
     1f4:	afb00028 	sw	s0,40(sp)
     1f8:	00808025 	move	s0,a0
     1fc:	afbf002c 	sw	ra,44(sp)
     200:	3c040600 	lui	a0,0x600
     204:	afa50034 	sw	a1,52(sp)
     208:	0c000000 	jal	0 <EnBomBowlMan_Init>
     20c:	24840710 	addiu	a0,a0,1808
     210:	44822000 	mtc1	v0,$f4
     214:	3c01c120 	lui	at,0xc120
     218:	44813000 	mtc1	at,$f6
     21c:	46802020 	cvt.s.w	$f0,$f4
     220:	3c050600 	lui	a1,0x600
     224:	24a50710 	addiu	a1,a1,1808
     228:	2604014c 	addiu	a0,s0,332
     22c:	3c063f80 	lui	a2,0x3f80
     230:	24070000 	li	a3,0
     234:	e6000254 	swc1	$f0,596(s0)
     238:	afa00014 	sw	zero,20(sp)
     23c:	e7a00010 	swc1	$f0,16(sp)
     240:	0c000000 	jal	0 <EnBomBowlMan_Init>
     244:	e7a60018 	swc1	$f6,24(sp)
     248:	3c180000 	lui	t8,0x0
     24c:	240e00c0 	li	t6,192
     250:	240f0005 	li	t7,5
     254:	27180000 	addiu	t8,t8,0
     258:	a60e010e 	sh	t6,270(s0)
     25c:	a60f022e 	sh	t7,558(s0)
     260:	ae180214 	sw	t8,532(s0)
     264:	8fbf002c 	lw	ra,44(sp)
     268:	8fb00028 	lw	s0,40(sp)
     26c:	27bd0030 	addiu	sp,sp,48
     270:	03e00008 	jr	ra
     274:	00000000 	nop

00000278 <func_809C38A8>:
     278:	27bdffe8 	addiu	sp,sp,-24
     27c:	afbf0014 	sw	ra,20(sp)
     280:	00803825 	move	a3,a0
     284:	afa5001c 	sw	a1,28(sp)
     288:	afa70018 	sw	a3,24(sp)
     28c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     290:	2484014c 	addiu	a0,a0,332
     294:	8fa40018 	lw	a0,24(sp)
     298:	0c000000 	jal	0 <EnBomBowlMan_Init>
     29c:	8fa5001c 	lw	a1,28(sp)
     2a0:	10400005 	beqz	v0,2b8 <func_809C38A8+0x40>
     2a4:	8fa70018 	lw	a3,24(sp)
     2a8:	3c0e0000 	lui	t6,0x0
     2ac:	25ce0000 	addiu	t6,t6,0
     2b0:	1000001a 	b	31c <func_809C38A8+0xa4>
     2b4:	acee0214 	sw	t6,532(a3)
     2b8:	84ef008a 	lh	t7,138(a3)
     2bc:	84f800b6 	lh	t8,182(a3)
     2c0:	3c0142f0 	lui	at,0x42f0
     2c4:	44810000 	mtc1	at,$f0
     2c8:	01f81023 	subu	v0,t7,t8
     2cc:	00021400 	sll	v0,v0,0x10
     2d0:	00021403 	sra	v0,v0,0x10
     2d4:	04400004 	bltz	v0,2e8 <func_809C38A8+0x70>
     2d8:	00021823 	negu	v1,v0
     2dc:	00021c00 	sll	v1,v0,0x10
     2e0:	10000003 	b	2f0 <func_809C38A8+0x78>
     2e4:	00031c03 	sra	v1,v1,0x10
     2e8:	00031c00 	sll	v1,v1,0x10
     2ec:	00031c03 	sra	v1,v1,0x10
     2f0:	c4e40090 	lwc1	$f4,144(a3)
     2f4:	28614300 	slti	at,v1,17152
     2f8:	4604003c 	c.lt.s	$f0,$f4
     2fc:	00000000 	nop
     300:	45030007 	bc1tl	320 <func_809C38A8+0xa8>
     304:	8fbf0014 	lw	ra,20(sp)
     308:	10200004 	beqz	at,31c <func_809C38A8+0xa4>
     30c:	00e02025 	move	a0,a3
     310:	44060000 	mfc1	a2,$f0
     314:	0c000000 	jal	0 <EnBomBowlMan_Init>
     318:	8fa5001c 	lw	a1,28(sp)
     31c:	8fbf0014 	lw	ra,20(sp)
     320:	27bd0018 	addiu	sp,sp,24
     324:	03e00008 	jr	ra
     328:	00000000 	nop

0000032c <func_809C395C>:
     32c:	27bdffe8 	addiu	sp,sp,-24
     330:	afbf0014 	sw	ra,20(sp)
     334:	afa40018 	sw	a0,24(sp)
     338:	afa5001c 	sw	a1,28(sp)
     33c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     340:	2484014c 	addiu	a0,a0,332
     344:	8fa4001c 	lw	a0,28(sp)
     348:	0c000000 	jal	0 <EnBomBowlMan_Init>
     34c:	248420d8 	addiu	a0,a0,8408
     350:	8fae0018 	lw	t6,24(sp)
     354:	85cf022e 	lh	t7,558(t6)
     358:	55e2000e 	bnel	t7,v0,394 <func_809C395C+0x68>
     35c:	8fbf0014 	lw	ra,20(sp)
     360:	0c000000 	jal	0 <EnBomBowlMan_Init>
     364:	8fa4001c 	lw	a0,28(sp)
     368:	10400009 	beqz	v0,390 <func_809C395C+0x64>
     36c:	8fb9001c 	lw	t9,28(sp)
     370:	3c010001 	lui	at,0x1
     374:	00390821 	addu	at,at,t9
     378:	24180037 	li	t8,55
     37c:	a03803dc 	sb	t8,988(at)
     380:	8fa90018 	lw	t1,24(sp)
     384:	3c080000 	lui	t0,0x0
     388:	25080000 	addiu	t0,t0,0
     38c:	ad280214 	sw	t0,532(t1)
     390:	8fbf0014 	lw	ra,20(sp)
     394:	27bd0018 	addiu	sp,sp,24
     398:	03e00008 	jr	ra
     39c:	00000000 	nop

000003a0 <func_809C39D0>:
     3a0:	27bdffd8 	addiu	sp,sp,-40
     3a4:	afa40028 	sw	a0,40(sp)
     3a8:	afbf0024 	sw	ra,36(sp)
     3ac:	3c040600 	lui	a0,0x600
     3b0:	afa5002c 	sw	a1,44(sp)
     3b4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     3b8:	24840080 	addiu	a0,a0,128
     3bc:	44822000 	mtc1	v0,$f4
     3c0:	8fa30028 	lw	v1,40(sp)
     3c4:	3c01c120 	lui	at,0xc120
     3c8:	46802020 	cvt.s.w	$f0,$f4
     3cc:	44813000 	mtc1	at,$f6
     3d0:	3c050600 	lui	a1,0x600
     3d4:	240e0002 	li	t6,2
     3d8:	24a50080 	addiu	a1,a1,128
     3dc:	3c063f80 	lui	a2,0x3f80
     3e0:	e4600254 	swc1	$f0,596(v1)
     3e4:	afae0014 	sw	t6,20(sp)
     3e8:	e7a00010 	swc1	$f0,16(sp)
     3ec:	24070000 	li	a3,0
     3f0:	2464014c 	addiu	a0,v1,332
     3f4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     3f8:	e7a60018 	swc1	$f6,24(sp)
     3fc:	8fa30028 	lw	v1,40(sp)
     400:	3c180000 	lui	t8,0x0
     404:	240f0001 	li	t7,1
     408:	27180000 	addiu	t8,t8,0
     40c:	a46f0238 	sh	t7,568(v1)
     410:	ac780214 	sw	t8,532(v1)
     414:	8fbf0024 	lw	ra,36(sp)
     418:	27bd0028 	addiu	sp,sp,40
     41c:	03e00008 	jr	ra
     420:	00000000 	nop

00000424 <func_809C3A54>:
     424:	27bdffe0 	addiu	sp,sp,-32
     428:	afbf0014 	sw	ra,20(sp)
     42c:	afa50024 	sw	a1,36(sp)
     430:	c4840164 	lwc1	$f4,356(a0)
     434:	00803025 	move	a2,a0
     438:	afa60020 	sw	a2,32(sp)
     43c:	2484014c 	addiu	a0,a0,332
     440:	0c000000 	jal	0 <EnBomBowlMan_Init>
     444:	e7a4001c 	swc1	$f4,28(sp)
     448:	3c0141f0 	lui	at,0x41f0
     44c:	44814000 	mtc1	at,$f8
     450:	c7a6001c 	lwc1	$f6,28(sp)
     454:	8fa60020 	lw	a2,32(sp)
     458:	240e0005 	li	t6,5
     45c:	46083032 	c.eq.s	$f6,$f8
     460:	3c0f0000 	lui	t7,0x0
     464:	45020011 	bc1fl	4ac <func_809C3A54+0x88>
     468:	94c5010e 	lhu	a1,270(a2)
     46c:	a4ce022e 	sh	t6,558(a2)
     470:	95ef0ed8 	lhu	t7,3800(t7)
     474:	3c190000 	lui	t9,0x0
     478:	240900bf 	li	t1,191
     47c:	31f80020 	andi	t8,t7,0x20
     480:	17000006 	bnez	t8,49c <func_809C3A54+0x78>
     484:	00000000 	nop
     488:	8f390000 	lw	t9,0(t9)
     48c:	240a7058 	li	t2,28760
     490:	872812d8 	lh	t0,4824(t9)
     494:	51000004 	beqzl	t0,4a8 <func_809C3A54+0x84>
     498:	a4ca010e 	sh	t2,270(a2)
     49c:	10000002 	b	4a8 <func_809C3A54+0x84>
     4a0:	a4c9010e 	sh	t1,270(a2)
     4a4:	a4ca010e 	sh	t2,270(a2)
     4a8:	94c5010e 	lhu	a1,270(a2)
     4ac:	afa60020 	sw	a2,32(sp)
     4b0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     4b4:	8fa40024 	lw	a0,36(sp)
     4b8:	8fa60020 	lw	a2,32(sp)
     4bc:	84cb0234 	lh	t3,564(a2)
     4c0:	55600014 	bnezl	t3,514 <func_809C3A54+0xf0>
     4c4:	8fbf0014 	lw	ra,20(sp)
     4c8:	84cc0238 	lh	t4,568(a2)
     4cc:	24020002 	li	v0,2
     4d0:	544c0010 	bnel	v0,t4,514 <func_809C3A54+0xf0>
     4d4:	8fbf0014 	lw	ra,20(sp)
     4d8:	84cd0236 	lh	t5,566(a2)
     4dc:	55a0000d 	bnezl	t5,514 <func_809C3A54+0xf0>
     4e0:	8fbf0014 	lw	ra,20(sp)
     4e4:	84ce023a 	lh	t6,570(a2)
     4e8:	3c190000 	lui	t9,0x0
     4ec:	a4c20234 	sh	v0,564(a2)
     4f0:	25cf0001 	addiu	t7,t6,1
     4f4:	a4cf023a 	sh	t7,570(a2)
     4f8:	84d8023a 	lh	t8,570(a2)
     4fc:	27390000 	addiu	t9,t9,0
     500:	2b010003 	slti	at,t8,3
     504:	54200003 	bnezl	at,514 <func_809C3A54+0xf0>
     508:	8fbf0014 	lw	ra,20(sp)
     50c:	acd90214 	sw	t9,532(a2)
     510:	8fbf0014 	lw	ra,20(sp)
     514:	27bd0020 	addiu	sp,sp,32
     518:	03e00008 	jr	ra
     51c:	00000000 	nop

00000520 <func_809C3B50>:
     520:	27bdffc8 	addiu	sp,sp,-56
     524:	afb00028 	sw	s0,40(sp)
     528:	00808025 	move	s0,a0
     52c:	afbf002c 	sw	ra,44(sp)
     530:	2484014c 	addiu	a0,a0,332
     534:	afa5003c 	sw	a1,60(sp)
     538:	0c000000 	jal	0 <EnBomBowlMan_Init>
     53c:	afa40034 	sw	a0,52(sp)
     540:	8fa4003c 	lw	a0,60(sp)
     544:	0c000000 	jal	0 <EnBomBowlMan_Init>
     548:	248420d8 	addiu	a0,a0,8408
     54c:	860e022e 	lh	t6,558(s0)
     550:	55c2003a 	bnel	t6,v0,63c <func_809C3B50+0x11c>
     554:	8fbf002c 	lw	ra,44(sp)
     558:	0c000000 	jal	0 <EnBomBowlMan_Init>
     55c:	8fa4003c 	lw	a0,60(sp)
     560:	50400036 	beqzl	v0,63c <func_809C3B50+0x11c>
     564:	8fbf002c 	lw	ra,44(sp)
     568:	0c000000 	jal	0 <EnBomBowlMan_Init>
     56c:	8fa4003c 	lw	a0,60(sp)
     570:	3c040600 	lui	a0,0x600
     574:	0c000000 	jal	0 <EnBomBowlMan_Init>
     578:	248472ac 	addiu	a0,a0,29356
     57c:	44822000 	mtc1	v0,$f4
     580:	3c01c120 	lui	at,0xc120
     584:	44813000 	mtc1	at,$f6
     588:	46802020 	cvt.s.w	$f0,$f4
     58c:	3c050600 	lui	a1,0x600
     590:	24a572ac 	addiu	a1,a1,29356
     594:	3c063f80 	lui	a2,0x3f80
     598:	24070000 	li	a3,0
     59c:	e6000254 	swc1	$f0,596(s0)
     5a0:	afa00014 	sw	zero,20(sp)
     5a4:	e7a00010 	swc1	$f0,16(sp)
     5a8:	8fa40034 	lw	a0,52(sp)
     5ac:	0c000000 	jal	0 <EnBomBowlMan_Init>
     5b0:	e7a60018 	swc1	$f6,24(sp)
     5b4:	3c014270 	lui	at,0x4270
     5b8:	240f0003 	li	t7,3
     5bc:	44816000 	mtc1	at,$f12
     5c0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     5c4:	a60f0238 	sh	t7,568(s0)
     5c8:	4600020d 	trunc.w.s	$f8,$f0
     5cc:	3c0b0000 	lui	t3,0x0
     5d0:	24180018 	li	t8,24
     5d4:	3c0d0000 	lui	t5,0x0
     5d8:	44094000 	mfc1	t1,$f8
     5dc:	24190004 	li	t9,4
     5e0:	3305ffff 	andi	a1,t8,0xffff
     5e4:	252a0014 	addiu	t2,t1,20
     5e8:	a60a0236 	sh	t2,566(s0)
     5ec:	956b0ed8 	lhu	t3,3800(t3)
     5f0:	316c0020 	andi	t4,t3,0x20
     5f4:	5580000a 	bnezl	t4,620 <func_809C3B50+0x100>
     5f8:	a618010e 	sh	t8,270(s0)
     5fc:	8dad0000 	lw	t5,0(t5)
     600:	3c0f0000 	lui	t7,0x0
     604:	25ef0000 	addiu	t7,t7,0
     608:	85ae12d8 	lh	t6,4824(t5)
     60c:	55c00004 	bnezl	t6,620 <func_809C3B50+0x100>
     610:	a618010e 	sh	t8,270(s0)
     614:	10000008 	b	638 <func_809C3B50+0x118>
     618:	ae0f0214 	sw	t7,532(s0)
     61c:	a618010e 	sh	t8,270(s0)
     620:	a619022e 	sh	t9,558(s0)
     624:	0c000000 	jal	0 <EnBomBowlMan_Init>
     628:	8fa4003c 	lw	a0,60(sp)
     62c:	3c080000 	lui	t0,0x0
     630:	25080000 	addiu	t0,t0,0
     634:	ae080214 	sw	t0,532(s0)
     638:	8fbf002c 	lw	ra,44(sp)
     63c:	8fb00028 	lw	s0,40(sp)
     640:	27bd0038 	addiu	sp,sp,56
     644:	03e00008 	jr	ra
     648:	00000000 	nop

0000064c <func_809C3C7C>:
     64c:	27bdffe8 	addiu	sp,sp,-24
     650:	afbf0014 	sw	ra,20(sp)
     654:	afa40018 	sw	a0,24(sp)
     658:	afa5001c 	sw	a1,28(sp)
     65c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     660:	2484014c 	addiu	a0,a0,332
     664:	8fa40018 	lw	a0,24(sp)
     668:	0c000000 	jal	0 <EnBomBowlMan_Init>
     66c:	8fa5001c 	lw	a1,28(sp)
     670:	10400005 	beqz	v0,688 <func_809C3C7C+0x3c>
     674:	8fa40018 	lw	a0,24(sp)
     678:	3c0e0000 	lui	t6,0x0
     67c:	25ce0000 	addiu	t6,t6,0
     680:	10000004 	b	694 <func_809C3C7C+0x48>
     684:	ac8e0214 	sw	t6,532(a0)
     688:	8fa5001c 	lw	a1,28(sp)
     68c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     690:	3c0642f0 	lui	a2,0x42f0
     694:	8fbf0014 	lw	ra,20(sp)
     698:	27bd0018 	addiu	sp,sp,24
     69c:	03e00008 	jr	ra
     6a0:	00000000 	nop

000006a4 <func_809C3CD4>:
     6a4:	27bdffe8 	addiu	sp,sp,-24
     6a8:	afbf0014 	sw	ra,20(sp)
     6ac:	afa40018 	sw	a0,24(sp)
     6b0:	afa5001c 	sw	a1,28(sp)
     6b4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     6b8:	2484014c 	addiu	a0,a0,332
     6bc:	8fa4001c 	lw	a0,28(sp)
     6c0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     6c4:	248420d8 	addiu	a0,a0,8408
     6c8:	8fae0018 	lw	t6,24(sp)
     6cc:	85cf022e 	lh	t7,558(t6)
     6d0:	55e2000c 	bnel	t7,v0,704 <func_809C3CD4+0x60>
     6d4:	8fbf0014 	lw	ra,20(sp)
     6d8:	0c000000 	jal	0 <EnBomBowlMan_Init>
     6dc:	8fa4001c 	lw	a0,28(sp)
     6e0:	50400008 	beqzl	v0,704 <func_809C3CD4+0x60>
     6e4:	8fbf0014 	lw	ra,20(sp)
     6e8:	0c000000 	jal	0 <EnBomBowlMan_Init>
     6ec:	8fa4001c 	lw	a0,28(sp)
     6f0:	8fb90018 	lw	t9,24(sp)
     6f4:	3c180000 	lui	t8,0x0
     6f8:	27180000 	addiu	t8,t8,0
     6fc:	af380214 	sw	t8,532(t9)
     700:	8fbf0014 	lw	ra,20(sp)
     704:	27bd0018 	addiu	sp,sp,24
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <func_809C3D40>:
     710:	27bdffe8 	addiu	sp,sp,-24
     714:	afa5001c 	sw	a1,28(sp)
     718:	00802825 	move	a1,a0
     71c:	afbf0014 	sw	ra,20(sp)
     720:	afa40018 	sw	a0,24(sp)
     724:	afa50018 	sw	a1,24(sp)
     728:	0c000000 	jal	0 <EnBomBowlMan_Init>
     72c:	2484014c 	addiu	a0,a0,332
     730:	8fa50018 	lw	a1,24(sp)
     734:	3c0b0000 	lui	t3,0x0
     738:	24080004 	li	t0,4
     73c:	90ae0258 	lbu	t6,600(a1)
     740:	24090019 	li	t1,25
     744:	240a0005 	li	t2,5
     748:	15c0000b 	bnez	t6,778 <func_809C3D40+0x68>
     74c:	256b0000 	addiu	t3,t3,0
     750:	84af0232 	lh	t7,562(a1)
     754:	24180018 	li	t8,24
     758:	2419001a 	li	t9,26
     75c:	55e00004 	bnezl	t7,770 <func_809C3D40+0x60>
     760:	a4b9010e 	sh	t9,270(a1)
     764:	10000002 	b	770 <func_809C3D40+0x60>
     768:	a4b8010e 	sh	t8,270(a1)
     76c:	a4b9010e 	sh	t9,270(a1)
     770:	10000003 	b	780 <func_809C3D40+0x70>
     774:	a4a8022e 	sh	t0,558(a1)
     778:	a4a9010e 	sh	t1,270(a1)
     77c:	a4aa022e 	sh	t2,558(a1)
     780:	acab0214 	sw	t3,532(a1)
     784:	8fbf0014 	lw	ra,20(sp)
     788:	27bd0018 	addiu	sp,sp,24
     78c:	03e00008 	jr	ra
     790:	00000000 	nop

00000794 <func_809C3DC4>:
     794:	27bdffd8 	addiu	sp,sp,-40
     798:	afb00018 	sw	s0,24(sp)
     79c:	00808025 	move	s0,a0
     7a0:	afbf001c 	sw	ra,28(sp)
     7a4:	afa5002c 	sw	a1,44(sp)
     7a8:	0c000000 	jal	0 <EnBomBowlMan_Init>
     7ac:	2484014c 	addiu	a0,a0,332
     7b0:	3c0e0000 	lui	t6,0x0
     7b4:	8dce0000 	lw	t6,0(t6)
     7b8:	8fb8002c 	lw	t8,44(sp)
     7bc:	3c050001 	lui	a1,0x1
     7c0:	85cf12da 	lh	t7,4826(t6)
     7c4:	3c040000 	lui	a0,0x0
     7c8:	00b82821 	addu	a1,a1,t8
     7cc:	11e00013 	beqz	t7,81c <func_809C3DC4+0x88>
     7d0:	24840000 	addiu	a0,a0,0
     7d4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     7d8:	80a51e5d 	lb	a1,7773(a1)
     7dc:	3c040000 	lui	a0,0x0
     7e0:	24840000 	addiu	a0,a0,0
     7e4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     7e8:	8605023e 	lh	a1,574(s0)
     7ec:	3c040000 	lui	a0,0x0
     7f0:	24840000 	addiu	a0,a0,0
     7f4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     7f8:	86050240 	lh	a1,576(s0)
     7fc:	8e19025c 	lw	t9,604(s0)
     800:	3c040000 	lui	a0,0x0
     804:	24840000 	addiu	a0,a0,0
     808:	0c000000 	jal	0 <EnBomBowlMan_Init>
     80c:	93250164 	lbu	a1,356(t9)
     810:	3c040000 	lui	a0,0x0
     814:	0c000000 	jal	0 <EnBomBowlMan_Init>
     818:	24840000 	addiu	a0,a0,0
     81c:	8e02025c 	lw	v0,604(s0)
     820:	a6000244 	sh	zero,580(s0)
     824:	24030001 	li	v1,1
     828:	5040002b 	beqzl	v0,8d8 <func_809C3DC4+0x144>
     82c:	86080244 	lh	t0,580(s0)
     830:	8608023e 	lh	t0,574(s0)
     834:	8fa7002c 	lw	a3,44(sp)
     838:	3c010001 	lui	at,0x1
     83c:	10680010 	beq	v1,t0,880 <func_809C3DC4+0xec>
     840:	00e12821 	addu	a1,a3,at
     844:	86090240 	lh	t1,576(s0)
     848:	5069000e 	beql	v1,t1,884 <func_809C3DC4+0xf0>
     84c:	80ab1e5d 	lb	t3,7773(a1)
     850:	904a0164 	lbu	t2,356(v0)
     854:	24010002 	li	at,2
     858:	3c040000 	lui	a0,0x0
     85c:	15410008 	bne	t2,at,880 <func_809C3DC4+0xec>
     860:	24840000 	addiu	a0,a0,0
     864:	a6030244 	sh	v1,580(s0)
     868:	a0400164 	sb	zero,356(v0)
     86c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     870:	afa50020 	sw	a1,32(sp)
     874:	24030001 	li	v1,1
     878:	8fa50020 	lw	a1,32(sp)
     87c:	8fa7002c 	lw	a3,44(sp)
     880:	80ab1e5d 	lb	t3,7773(a1)
     884:	2401ffff 	li	at,-1
     888:	55610013 	bnel	t3,at,8d8 <func_809C3DC4+0x144>
     88c:	86080244 	lh	t0,580(s0)
     890:	8cec1c48 	lw	t4,7240(a3)
     894:	55800010 	bnezl	t4,8d8 <func_809C3DC4+0x144>
     898:	86080244 	lh	t0,580(s0)
     89c:	8e0d025c 	lw	t5,604(s0)
     8a0:	91ae0164 	lbu	t6,356(t5)
     8a4:	55c0000c 	bnezl	t6,8d8 <func_809C3DC4+0x144>
     8a8:	86080244 	lh	t0,580(s0)
     8ac:	860f023e 	lh	t7,574(s0)
     8b0:	506f0009 	beql	v1,t7,8d8 <func_809C3DC4+0x144>
     8b4:	86080244 	lh	t0,580(s0)
     8b8:	86180240 	lh	t8,576(s0)
     8bc:	3c040000 	lui	a0,0x0
     8c0:	24190002 	li	t9,2
     8c4:	10780003 	beq	v1,t8,8d4 <func_809C3DC4+0x140>
     8c8:	24840000 	addiu	a0,a0,0
     8cc:	0c000000 	jal	0 <EnBomBowlMan_Init>
     8d0:	a6190244 	sh	t9,580(s0)
     8d4:	86080244 	lh	t0,580(s0)
     8d8:	24030001 	li	v1,1
     8dc:	8fa7002c 	lw	a3,44(sp)
     8e0:	11000020 	beqz	t0,964 <func_809C3DC4+0x1d0>
     8e4:	02002025 	move	a0,s0
     8e8:	8e020260 	lw	v0,608(s0)
     8ec:	2409001a 	li	t1,26
     8f0:	240a0004 	li	t2,4
     8f4:	a609010e 	sh	t1,270(s0)
     8f8:	a60a022e 	sh	t2,558(s0)
     8fc:	10400006 	beqz	v0,918 <func_809C3DC4+0x184>
     900:	a2000258 	sb	zero,600(s0)
     904:	8c4b0130 	lw	t3,304(v0)
     908:	51600004 	beqzl	t3,91c <func_809C3DC4+0x188>
     90c:	3c010001 	lui	at,0x1
     910:	a4430160 	sh	v1,352(v0)
     914:	ae000260 	sw	zero,608(s0)
     918:	3c010001 	lui	at,0x1
     91c:	00270821 	addu	at,at,a3
     920:	a0201e5d 	sb	zero,7773(at)
     924:	a603023c 	sh	v1,572(s0)
     928:	9605010e 	lhu	a1,270(s0)
     92c:	00e02025 	move	a0,a3
     930:	0c000000 	jal	0 <EnBomBowlMan_Init>
     934:	00003025 	move	a2,zero
     938:	860c0244 	lh	t4,580(s0)
     93c:	24010002 	li	at,2
     940:	8fa4002c 	lw	a0,44(sp)
     944:	15810003 	bne	t4,at,954 <func_809C3DC4+0x1c0>
     948:	00002825 	move	a1,zero
     94c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     950:	24060008 	li	a2,8
     954:	3c0d0000 	lui	t5,0x0
     958:	25ad0000 	addiu	t5,t5,0
     95c:	10000027 	b	9fc <func_809C3DC4+0x268>
     960:	ae0d0214 	sw	t5,532(s0)
     964:	0c000000 	jal	0 <EnBomBowlMan_Init>
     968:	00e02825 	move	a1,a3
     96c:	1040000b 	beqz	v0,99c <func_809C3DC4+0x208>
     970:	3c0142f0 	lui	at,0x42f0
     974:	920e0258 	lbu	t6,600(s0)
     978:	3c180000 	lui	t8,0x0
     97c:	3c0f0000 	lui	t7,0x0
     980:	15c00004 	bnez	t6,994 <func_809C3DC4+0x200>
     984:	27180000 	addiu	t8,t8,0
     988:	25ef0000 	addiu	t7,t7,0
     98c:	1000001b 	b	9fc <func_809C3DC4+0x268>
     990:	ae0f0214 	sw	t7,532(s0)
     994:	10000019 	b	9fc <func_809C3DC4+0x268>
     998:	ae180214 	sw	t8,532(s0)
     99c:	8619008a 	lh	t9,138(s0)
     9a0:	860800b6 	lh	t0,182(s0)
     9a4:	44810000 	mtc1	at,$f0
     9a8:	03281023 	subu	v0,t9,t0
     9ac:	00021400 	sll	v0,v0,0x10
     9b0:	00021403 	sra	v0,v0,0x10
     9b4:	04400004 	bltz	v0,9c8 <func_809C3DC4+0x234>
     9b8:	00021823 	negu	v1,v0
     9bc:	00021c00 	sll	v1,v0,0x10
     9c0:	10000003 	b	9d0 <func_809C3DC4+0x23c>
     9c4:	00031c03 	sra	v1,v1,0x10
     9c8:	00031c00 	sll	v1,v1,0x10
     9cc:	00031c03 	sra	v1,v1,0x10
     9d0:	c6040090 	lwc1	$f4,144(s0)
     9d4:	28614300 	slti	at,v1,17152
     9d8:	4604003c 	c.lt.s	$f0,$f4
     9dc:	00000000 	nop
     9e0:	45030007 	bc1tl	a00 <func_809C3DC4+0x26c>
     9e4:	8fbf001c 	lw	ra,28(sp)
     9e8:	10200004 	beqz	at,9fc <func_809C3DC4+0x268>
     9ec:	02002025 	move	a0,s0
     9f0:	44060000 	mfc1	a2,$f0
     9f4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     9f8:	8fa5002c 	lw	a1,44(sp)
     9fc:	8fbf001c 	lw	ra,28(sp)
     a00:	8fb00018 	lw	s0,24(sp)
     a04:	27bd0028 	addiu	sp,sp,40
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_809C4040>:
     a10:	27bdffd8 	addiu	sp,sp,-40
     a14:	afb0001c 	sw	s0,28(sp)
     a18:	00808025 	move	s0,a0
     a1c:	afbf0024 	sw	ra,36(sp)
     a20:	afb10020 	sw	s1,32(sp)
     a24:	00a08825 	move	s1,a1
     a28:	0c000000 	jal	0 <EnBomBowlMan_Init>
     a2c:	2484014c 	addiu	a0,a0,332
     a30:	0c000000 	jal	0 <EnBomBowlMan_Init>
     a34:	262420d8 	addiu	a0,s1,8408
     a38:	860e022e 	lh	t6,558(s0)
     a3c:	55c2005f 	bnel	t6,v0,bbc <func_809C4040+0x1ac>
     a40:	8fbf0024 	lw	ra,36(sp)
     a44:	0c000000 	jal	0 <EnBomBowlMan_Init>
     a48:	02202025 	move	a0,s1
     a4c:	5040005b 	beqzl	v0,bbc <func_809C4040+0x1ac>
     a50:	8fbf0024 	lw	ra,36(sp)
     a54:	0c000000 	jal	0 <EnBomBowlMan_Init>
     a58:	02202025 	move	a0,s1
     a5c:	3c020001 	lui	v0,0x1
     a60:	00511021 	addu	v0,v0,s1
     a64:	904204bd 	lbu	v0,1213(v0)
     a68:	24010001 	li	at,1
     a6c:	3c0f0000 	lui	t7,0x0
     a70:	10400005 	beqz	v0,a88 <func_809C4040+0x78>
     a74:	00000000 	nop
     a78:	10410045 	beq	v0,at,b90 <func_809C4040+0x180>
     a7c:	240a002d 	li	t2,45
     a80:	1000004e 	b	bbc <func_809C4040+0x1ac>
     a84:	8fbf0024 	lw	ra,36(sp)
     a88:	85ef0034 	lh	t7,52(t7)
     a8c:	24190085 	li	t9,133
     a90:	3325ffff 	andi	a1,t9,0xffff
     a94:	29e1001e 	slti	at,t7,30
     a98:	14200034 	bnez	at,b6c <func_809C4040+0x15c>
     a9c:	02202025 	move	a0,s1
     aa0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     aa4:	2404ffe2 	li	a0,-30
     aa8:	a6000240 	sh	zero,576(s0)
     aac:	86190240 	lh	t9,576(s0)
     ab0:	24180001 	li	t8,1
     ab4:	3c010001 	lui	at,0x1
     ab8:	a2180258 	sb	t8,600(s0)
     abc:	00310821 	addu	at,at,s1
     ac0:	2408000a 	li	t0,10
     ac4:	a619023e 	sh	t9,574(s0)
     ac8:	a0281e5d 	sb	t0,7773(at)
     acc:	02202025 	move	a0,s1
     ad0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     ad4:	24050038 	li	a1,56
     ad8:	86090232 	lh	t1,562(s0)
     adc:	240e001b 	li	t6,27
     ae0:	31c5ffff 	andi	a1,t6,0xffff
     ae4:	1520000f 	bnez	t1,b24 <func_809C4040+0x114>
     ae8:	02202025 	move	a0,s1
     aec:	860a023c 	lh	t2,572(s0)
     af0:	240b0019 	li	t3,25
     af4:	1540000b 	bnez	t2,b24 <func_809C4040+0x114>
     af8:	00000000 	nop
     afc:	a60b010e 	sh	t3,270(s0)
     b00:	02202025 	move	a0,s1
     b04:	0c000000 	jal	0 <EnBomBowlMan_Init>
     b08:	3165ffff 	andi	a1,t3,0xffff
     b0c:	3c0d0000 	lui	t5,0x0
     b10:	240c0005 	li	t4,5
     b14:	25ad0000 	addiu	t5,t5,0
     b18:	a60c022e 	sh	t4,558(s0)
     b1c:	10000026 	b	bb8 <func_809C4040+0x1a8>
     b20:	ae0d0214 	sw	t5,532(s0)
     b24:	0c000000 	jal	0 <EnBomBowlMan_Init>
     b28:	a60e010e 	sh	t6,270(s0)
     b2c:	240f0005 	li	t7,5
     b30:	a60f022e 	sh	t7,558(s0)
     b34:	afa00010 	sw	zero,16(sp)
     b38:	02202025 	move	a0,s1
     b3c:	24051f4a 	li	a1,8010
     b40:	2406ff9d 	li	a2,-99
     b44:	0c000000 	jal	0 <EnBomBowlMan_Init>
     b48:	00003825 	move	a3,zero
     b4c:	02202025 	move	a0,s1
     b50:	00002825 	move	a1,zero
     b54:	0c000000 	jal	0 <EnBomBowlMan_Init>
     b58:	24060008 	li	a2,8
     b5c:	3c180000 	lui	t8,0x0
     b60:	27180000 	addiu	t8,t8,0
     b64:	10000014 	b	bb8 <func_809C4040+0x1a8>
     b68:	ae180214 	sw	t8,532(s0)
     b6c:	a600023c 	sh	zero,572(s0)
     b70:	0c000000 	jal	0 <EnBomBowlMan_Init>
     b74:	a619010e 	sh	t9,270(s0)
     b78:	3c090000 	lui	t1,0x0
     b7c:	24080005 	li	t0,5
     b80:	25290000 	addiu	t1,t1,0
     b84:	a608022e 	sh	t0,558(s0)
     b88:	1000000b 	b	bb8 <func_809C4040+0x1a8>
     b8c:	ae090214 	sw	t1,532(s0)
     b90:	a600023c 	sh	zero,572(s0)
     b94:	a60a010e 	sh	t2,270(s0)
     b98:	02202025 	move	a0,s1
     b9c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     ba0:	3145ffff 	andi	a1,t2,0xffff
     ba4:	3c0c0000 	lui	t4,0x0
     ba8:	240b0005 	li	t3,5
     bac:	258c0000 	addiu	t4,t4,0
     bb0:	a60b022e 	sh	t3,558(s0)
     bb4:	ae0c0214 	sw	t4,532(s0)
     bb8:	8fbf0024 	lw	ra,36(sp)
     bbc:	8fb0001c 	lw	s0,28(sp)
     bc0:	8fb10020 	lw	s1,32(sp)
     bc4:	03e00008 	jr	ra
     bc8:	27bd0028 	addiu	sp,sp,40

00000bcc <func_809C41FC>:
     bcc:	27bdffd8 	addiu	sp,sp,-40
     bd0:	afb10020 	sw	s1,32(sp)
     bd4:	00808825 	move	s1,a0
     bd8:	afbf0024 	sw	ra,36(sp)
     bdc:	afb0001c 	sw	s0,28(sp)
     be0:	00a08025 	move	s0,a1
     be4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     be8:	2484014c 	addiu	a0,a0,332
     bec:	0c000000 	jal	0 <EnBomBowlMan_Init>
     bf0:	260420d8 	addiu	a0,s0,8408
     bf4:	862e022e 	lh	t6,558(s1)
     bf8:	55c20037 	bnel	t6,v0,cd8 <func_809C41FC+0x10c>
     bfc:	8fbf0024 	lw	ra,36(sp)
     c00:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c04:	02002025 	move	a0,s0
     c08:	50400033 	beqzl	v0,cd8 <func_809C41FC+0x10c>
     c0c:	8fbf0024 	lw	ra,36(sp)
     c10:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c14:	02002025 	move	a0,s0
     c18:	9622010e 	lhu	v0,270(s1)
     c1c:	2401002d 	li	at,45
     c20:	02002025 	move	a0,s0
     c24:	10410003 	beq	v0,at,c34 <func_809C41FC+0x68>
     c28:	24010085 	li	at,133
     c2c:	54410008 	bnel	v0,at,c50 <func_809C41FC+0x84>
     c30:	922f0258 	lbu	t7,600(s1)
     c34:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c38:	24050038 	li	a1,56
     c3c:	10400003 	beqz	v0,c4c <func_809C41FC+0x80>
     c40:	02002025 	move	a0,s0
     c44:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c48:	24050038 	li	a1,56
     c4c:	922f0258 	lbu	t7,600(s1)
     c50:	24010001 	li	at,1
     c54:	2418001b 	li	t8,27
     c58:	15e10014 	bne	t7,at,cac <func_809C41FC+0xe0>
     c5c:	02002025 	move	a0,s0
     c60:	a638010e 	sh	t8,270(s1)
     c64:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c68:	3305ffff 	andi	a1,t8,0xffff
     c6c:	24190005 	li	t9,5
     c70:	a639022e 	sh	t9,558(s1)
     c74:	afa00010 	sw	zero,16(sp)
     c78:	02002025 	move	a0,s0
     c7c:	24051f4a 	li	a1,8010
     c80:	2406ff9d 	li	a2,-99
     c84:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c88:	00003825 	move	a3,zero
     c8c:	02002025 	move	a0,s0
     c90:	00002825 	move	a1,zero
     c94:	0c000000 	jal	0 <EnBomBowlMan_Init>
     c98:	24060008 	li	a2,8
     c9c:	3c080000 	lui	t0,0x0
     ca0:	25080000 	addiu	t0,t0,0
     ca4:	1000000b 	b	cd4 <func_809C41FC+0x108>
     ca8:	ae280214 	sw	t0,532(s1)
     cac:	86290244 	lh	t1,580(s1)
     cb0:	24010002 	li	at,2
     cb4:	02002025 	move	a0,s0
     cb8:	15210003 	bne	t1,at,cc8 <func_809C41FC+0xfc>
     cbc:	00002825 	move	a1,zero
     cc0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     cc4:	24060007 	li	a2,7
     cc8:	3c0a0000 	lui	t2,0x0
     ccc:	254a0000 	addiu	t2,t2,0
     cd0:	ae2a0214 	sw	t2,532(s1)
     cd4:	8fbf0024 	lw	ra,36(sp)
     cd8:	8fb0001c 	lw	s0,28(sp)
     cdc:	8fb10020 	lw	s1,32(sp)
     ce0:	03e00008 	jr	ra
     ce4:	27bd0028 	addiu	sp,sp,40

00000ce8 <func_809C4318>:
     ce8:	27bdffb0 	addiu	sp,sp,-80
     cec:	3c0f0000 	lui	t7,0x0
     cf0:	afbf0024 	sw	ra,36(sp)
     cf4:	afb00020 	sw	s0,32(sp)
     cf8:	afa50054 	sw	a1,84(sp)
     cfc:	25ef0000 	addiu	t7,t7,0
     d00:	8df90000 	lw	t9,0(t7)
     d04:	27ae0044 	addiu	t6,sp,68
     d08:	8df80004 	lw	t8,4(t7)
     d0c:	add90000 	sw	t9,0(t6)
     d10:	8df90008 	lw	t9,8(t7)
     d14:	3c090000 	lui	t1,0x0
     d18:	25290000 	addiu	t1,t1,0
     d1c:	add80004 	sw	t8,4(t6)
     d20:	add90008 	sw	t9,8(t6)
     d24:	8d2b0000 	lw	t3,0(t1)
     d28:	27a80038 	addiu	t0,sp,56
     d2c:	8d2a0004 	lw	t2,4(t1)
     d30:	ad0b0000 	sw	t3,0(t0)
     d34:	8d2b0008 	lw	t3,8(t1)
     d38:	00808025 	move	s0,a0
     d3c:	2484014c 	addiu	a0,a0,332
     d40:	ad0a0004 	sw	t2,4(t0)
     d44:	0c000000 	jal	0 <EnBomBowlMan_Init>
     d48:	ad0b0008 	sw	t3,8(t0)
     d4c:	8fa40054 	lw	a0,84(sp)
     d50:	0c000000 	jal	0 <EnBomBowlMan_Init>
     d54:	248420d8 	addiu	a0,a0,8408
     d58:	860c022e 	lh	t4,558(s0)
     d5c:	5582001f 	bnel	t4,v0,ddc <func_809C4318+0xf4>
     d60:	8fbf0024 	lw	ra,36(sp)
     d64:	0c000000 	jal	0 <EnBomBowlMan_Init>
     d68:	8fa40054 	lw	a0,84(sp)
     d6c:	1040001a 	beqz	v0,dd8 <func_809C4318+0xf0>
     d70:	3c014314 	lui	at,0x4314
     d74:	44812000 	mtc1	at,$f4
     d78:	3c014220 	lui	at,0x4220
     d7c:	44813000 	mtc1	at,$f6
     d80:	3c014396 	lui	at,0x4396
     d84:	44814000 	mtc1	at,$f8
     d88:	240d0032 	li	t5,50
     d8c:	240e000f 	li	t6,15
     d90:	afae0014 	sw	t6,20(sp)
     d94:	afad0010 	sw	t5,16(sp)
     d98:	8fa40054 	lw	a0,84(sp)
     d9c:	27a5002c 	addiu	a1,sp,44
     da0:	27a60038 	addiu	a2,sp,56
     da4:	27a70044 	addiu	a3,sp,68
     da8:	e7a4002c 	swc1	$f4,44(sp)
     dac:	e7a60030 	swc1	$f6,48(sp)
     db0:	0c000000 	jal	0 <EnBomBowlMan_Init>
     db4:	e7a80034 	swc1	$f8,52(sp)
     db8:	02002025 	move	a0,s0
     dbc:	0c000000 	jal	0 <EnBomBowlMan_Init>
     dc0:	2405184b 	li	a1,6219
     dc4:	3c180000 	lui	t8,0x0
     dc8:	240f000a 	li	t7,10
     dcc:	27180000 	addiu	t8,t8,0
     dd0:	a60f022a 	sh	t7,554(s0)
     dd4:	ae180214 	sw	t8,532(s0)
     dd8:	8fbf0024 	lw	ra,36(sp)
     ddc:	8fb00020 	lw	s0,32(sp)
     de0:	27bd0050 	addiu	sp,sp,80
     de4:	03e00008 	jr	ra
     de8:	00000000 	nop

00000dec <func_809C441C>:
     dec:	27bdffb0 	addiu	sp,sp,-80
     df0:	afb00038 	sw	s0,56(sp)
     df4:	00808025 	move	s0,a0
     df8:	afbf003c 	sw	ra,60(sp)
     dfc:	afa50054 	sw	a1,84(sp)
     e00:	0c000000 	jal	0 <EnBomBowlMan_Init>
     e04:	2484014c 	addiu	a0,a0,332
     e08:	860e022a 	lh	t6,554(s0)
     e0c:	55c00085 	bnezl	t6,1024 <L809C44C8+0x18c>
     e10:	8fbf003c 	lw	ra,60(sp)
     e14:	960f0242 	lhu	t7,578(s0)
     e18:	2de10005 	sltiu	at,t7,5
     e1c:	10200020 	beqz	at,ea0 <L809C44C8+0x8>
     e20:	000f7880 	sll	t7,t7,0x2
     e24:	3c010000 	lui	at,0x0
     e28:	002f0821 	addu	at,at,t7
     e2c:	8c2f0000 	lw	t7,0(at)
     e30:	01e00008 	jr	t7
     e34:	00000000 	nop

00000e38 <L809C4468>:
     e38:	3c180000 	lui	t8,0x0
     e3c:	97180ef2 	lhu	t8,3826(t8)
     e40:	00001825 	move	v1,zero
     e44:	33190002 	andi	t9,t8,0x2
     e48:	13200002 	beqz	t9,e54 <L809C4468+0x1c>
     e4c:	00000000 	nop
     e50:	24030004 	li	v1,4
     e54:	10000012 	b	ea0 <L809C44C8+0x8>
     e58:	a7a3004e 	sh	v1,78(sp)

00000e5c <L809C448C>:
     e5c:	24030004 	li	v1,4
     e60:	1000000f 	b	ea0 <L809C44C8+0x8>
     e64:	a7a3004e 	sh	v1,78(sp)

00000e68 <L809C4498>:
     e68:	24030002 	li	v1,2
     e6c:	1000000c 	b	ea0 <L809C44C8+0x8>
     e70:	a7a3004e 	sh	v1,78(sp)

00000e74 <L809C44A4>:
     e74:	3c080000 	lui	t0,0x0
     e78:	95080ef2 	lhu	t0,3826(t0)
     e7c:	24030001 	li	v1,1
     e80:	31090004 	andi	t1,t0,0x4
     e84:	11200002 	beqz	t1,e90 <L809C44A4+0x1c>
     e88:	00000000 	nop
     e8c:	24030004 	li	v1,4
     e90:	10000003 	b	ea0 <L809C44C8+0x8>
     e94:	a7a3004e 	sh	v1,78(sp)

00000e98 <L809C44C8>:
     e98:	24030003 	li	v1,3
     e9c:	a7a3004e 	sh	v1,78(sp)
     ea0:	87a3004e 	lh	v1,78(sp)
     ea4:	3c0a0000 	lui	t2,0x0
     ea8:	3c014314 	lui	at,0x4314
     eac:	a6030230 	sh	v1,560(s0)
     eb0:	8d4a0000 	lw	t2,0(t2)
     eb4:	44813000 	mtc1	at,$f6
     eb8:	3c0d0000 	lui	t5,0x0
     ebc:	854212e2 	lh	v0,4834(t2)
     ec0:	25ad0000 	addiu	t5,t5,0
     ec4:	02002825 	move	a1,s0
     ec8:	10400003 	beqz	v0,ed8 <L809C44C8+0x40>
     ecc:	24070168 	li	a3,360
     ed0:	244bffff 	addiu	t3,v0,-1
     ed4:	a60b0230 	sh	t3,560(s0)
     ed8:	86020230 	lh	v0,560(s0)
     edc:	3c014220 	lui	at,0x4220
     ee0:	44818000 	mtc1	at,$f16
     ee4:	00026080 	sll	t4,v0,0x2
     ee8:	01826023 	subu	t4,t4,v0
     eec:	000c6080 	sll	t4,t4,0x2
     ef0:	018d1821 	addu	v1,t4,t5
     ef4:	c4640000 	lwc1	$f4,0(v1)
     ef8:	3c014396 	lui	at,0x4396
     efc:	c46a0004 	lwc1	$f10,4(v1)
     f00:	46062200 	add.s	$f8,$f4,$f6
     f04:	44813000 	mtc1	at,$f6
     f08:	c4640008 	lwc1	$f4,8(v1)
     f0c:	8fa60054 	lw	a2,84(sp)
     f10:	e7a80010 	swc1	$f8,16(sp)
     f14:	3c0f0000 	lui	t7,0x0
     f18:	00027040 	sll	t6,v0,0x1
     f1c:	46105480 	add.s	$f18,$f10,$f16
     f20:	01ee7821 	addu	t7,t7,t6
     f24:	85ef0000 	lh	t7,0(t7)
     f28:	46062200 	add.s	$f8,$f4,$f6
     f2c:	24580005 	addiu	t8,v0,5
     f30:	24c41c24 	addiu	a0,a2,7204
     f34:	afa40044 	sw	a0,68(sp)
     f38:	afb80028 	sw	t8,40(sp)
     f3c:	e7a80018 	swc1	$f8,24(sp)
     f40:	e7b20014 	swc1	$f18,20(sp)
     f44:	afa00024 	sw	zero,36(sp)
     f48:	afa0001c 	sw	zero,28(sp)
     f4c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     f50:	afaf0020 	sw	t7,32(sp)
     f54:	86190232 	lh	t9,562(s0)
     f58:	8fa40044 	lw	a0,68(sp)
     f5c:	ae020260 	sw	v0,608(s0)
     f60:	17200015 	bnez	t9,fb8 <L809C44C8+0x120>
     f64:	02002825 	move	a1,s0
     f68:	3c0142b4 	lui	at,0x42b4
     f6c:	44818000 	mtc1	at,$f16
     f70:	3c01c457 	lui	at,0xc457
     f74:	44819000 	mtc1	at,$f18
     f78:	44805000 	mtc1	zero,$f10
     f7c:	8fa60054 	lw	a2,84(sp)
     f80:	2407014c 	li	a3,332
     f84:	afa0001c 	sw	zero,28(sp)
     f88:	afa00020 	sw	zero,32(sp)
     f8c:	afa00024 	sw	zero,36(sp)
     f90:	afa00028 	sw	zero,40(sp)
     f94:	e7b00014 	swc1	$f16,20(sp)
     f98:	e7b20018 	swc1	$f18,24(sp)
     f9c:	0c000000 	jal	0 <EnBomBowlMan_Init>
     fa0:	e7aa0010 	swc1	$f10,16(sp)
     fa4:	10400007 	beqz	v0,fc4 <L809C44C8+0x12c>
     fa8:	ae02025c 	sw	v0,604(s0)
     fac:	86080230 	lh	t0,560(s0)
     fb0:	10000004 	b	fc4 <L809C44C8+0x12c>
     fb4:	a448015a 	sh	t0,346(v0)
     fb8:	860a0230 	lh	t2,560(s0)
     fbc:	8e0b025c 	lw	t3,604(s0)
     fc0:	a56a015a 	sh	t2,346(t3)
     fc4:	8e0d025c 	lw	t5,604(s0)
     fc8:	240c0001 	li	t4,1
     fcc:	240e0002 	li	t6,2
     fd0:	a5ac015c 	sh	t4,348(t5)
     fd4:	240f405a 	li	t7,16474
     fd8:	a20e0258 	sb	t6,600(s0)
     fdc:	a60f010e 	sh	t7,270(s0)
     fe0:	8fa40054 	lw	a0,84(sp)
     fe4:	0c000000 	jal	0 <EnBomBowlMan_Init>
     fe8:	31e5ffff 	andi	a1,t7,0xffff
     fec:	86190242 	lh	t9,578(s0)
     ff0:	24180005 	li	t8,5
     ff4:	3c0a0000 	lui	t2,0x0
     ff8:	27280001 	addiu	t0,t9,1
     ffc:	a6080242 	sh	t0,578(s0)
    1000:	86090242 	lh	t1,578(s0)
    1004:	a618022e 	sh	t8,558(s0)
    1008:	254a0000 	addiu	t2,t2,0
    100c:	29210005 	slti	at,t1,5
    1010:	54200003 	bnezl	at,1020 <L809C44C8+0x188>
    1014:	ae0a0214 	sw	t2,532(s0)
    1018:	a6000242 	sh	zero,578(s0)
    101c:	ae0a0214 	sw	t2,532(s0)
    1020:	8fbf003c 	lw	ra,60(sp)
    1024:	8fb00038 	lw	s0,56(sp)
    1028:	27bd0050 	addiu	sp,sp,80
    102c:	03e00008 	jr	ra
    1030:	00000000 	nop

00001034 <func_809C4664>:
    1034:	27bdffe0 	addiu	sp,sp,-32
    1038:	afbf001c 	sw	ra,28(sp)
    103c:	afb00018 	sw	s0,24(sp)
    1040:	afa40020 	sw	a0,32(sp)
    1044:	00a08025 	move	s0,a1
    1048:	0c000000 	jal	0 <EnBomBowlMan_Init>
    104c:	2484014c 	addiu	a0,a0,332
    1050:	0c000000 	jal	0 <EnBomBowlMan_Init>
    1054:	260420d8 	addiu	a0,s0,8408
    1058:	8fae0020 	lw	t6,32(sp)
    105c:	85cf022e 	lh	t7,558(t6)
    1060:	55e20024 	bnel	t7,v0,10f4 <func_809C4664+0xc0>
    1064:	8fbf001c 	lw	ra,28(sp)
    1068:	0c000000 	jal	0 <EnBomBowlMan_Init>
    106c:	02002025 	move	a0,s0
    1070:	50400020 	beqzl	v0,10f4 <func_809C4664+0xc0>
    1074:	8fbf001c 	lw	ra,28(sp)
    1078:	0c000000 	jal	0 <EnBomBowlMan_Init>
    107c:	02002025 	move	a0,s0
    1080:	861807a0 	lh	t8,1952(s0)
    1084:	0018c880 	sll	t9,t8,0x2
    1088:	02194021 	addu	t0,s0,t9
    108c:	0c000000 	jal	0 <EnBomBowlMan_Init>
    1090:	8d040790 	lw	a0,1936(t0)
    1094:	8faa0020 	lw	t2,32(sp)
    1098:	24090001 	li	t1,1
    109c:	3c030000 	lui	v1,0x0
    10a0:	a5490232 	sh	t1,562(t2)
    10a4:	8c630000 	lw	v1,0(v1)
    10a8:	3c040000 	lui	a0,0x0
    10ac:	3c050001 	lui	a1,0x1
    10b0:	846b12d8 	lh	t3,4824(v1)
    10b4:	00b02821 	addu	a1,a1,s0
    10b8:	24840000 	addiu	a0,a0,0
    10bc:	11600002 	beqz	t3,10c8 <func_809C4664+0x94>
    10c0:	00000000 	nop
    10c4:	a46012d8 	sh	zero,4824(v1)
    10c8:	0c000000 	jal	0 <EnBomBowlMan_Init>
    10cc:	80a51e5d 	lb	a1,7773(a1)
    10d0:	02002025 	move	a0,s0
    10d4:	00002825 	move	a1,zero
    10d8:	0c000000 	jal	0 <EnBomBowlMan_Init>
    10dc:	24060007 	li	a2,7
    10e0:	8fad0020 	lw	t5,32(sp)
    10e4:	3c0c0000 	lui	t4,0x0
    10e8:	258c0000 	addiu	t4,t4,0
    10ec:	adac0214 	sw	t4,532(t5)
    10f0:	8fbf001c 	lw	ra,28(sp)
    10f4:	8fb00018 	lw	s0,24(sp)
    10f8:	27bd0020 	addiu	sp,sp,32
    10fc:	03e00008 	jr	ra
    1100:	00000000 	nop

00001104 <EnBomBowlMan_Update>:
    1104:	27bdffd0 	addiu	sp,sp,-48
    1108:	afbf002c 	sw	ra,44(sp)
    110c:	afb00028 	sw	s0,40(sp)
    1110:	afa50034 	sw	a1,52(sp)
    1114:	3c014270 	lui	at,0x4270
    1118:	44810000 	mtc1	at,$f0
    111c:	848e022c 	lh	t6,556(a0)
    1120:	00808025 	move	s0,a0
    1124:	44050000 	mfc1	a1,$f0
    1128:	25cf0001 	addiu	t7,t6,1
    112c:	a48f022c 	sh	t7,556(a0)
    1130:	0c000000 	jal	0 <EnBomBowlMan_Init>
    1134:	e480003c 	swc1	$f0,60(a0)
    1138:	86020238 	lh	v0,568(s0)
    113c:	24010001 	li	at,1
    1140:	24180002 	li	t8,2
    1144:	10400007 	beqz	v0,1164 <EnBomBowlMan_Update+0x60>
    1148:	00000000 	nop
    114c:	10410007 	beq	v0,at,116c <EnBomBowlMan_Update+0x68>
    1150:	24010002 	li	at,2
    1154:	50410010 	beql	v0,at,1198 <EnBomBowlMan_Update+0x94>
    1158:	860a0236 	lh	t2,566(s0)
    115c:	10000016 	b	11b8 <EnBomBowlMan_Update+0xb4>
    1160:	860c0236 	lh	t4,566(s0)
    1164:	10000030 	b	1228 <EnBomBowlMan_Update+0x124>
    1168:	a6180234 	sh	t8,564(s0)
    116c:	86020234 	lh	v0,564(s0)
    1170:	2408001e 	li	t0,30
    1174:	24090002 	li	t1,2
    1178:	18400003 	blez	v0,1188 <EnBomBowlMan_Update+0x84>
    117c:	2459ffff 	addiu	t9,v0,-1
    1180:	10000029 	b	1228 <EnBomBowlMan_Update+0x124>
    1184:	a6190234 	sh	t9,564(s0)
    1188:	a6080236 	sh	t0,566(s0)
    118c:	10000026 	b	1228 <EnBomBowlMan_Update+0x124>
    1190:	a6090238 	sh	t1,568(s0)
    1194:	860a0236 	lh	t2,566(s0)
    1198:	55400024 	bnezl	t2,122c <EnBomBowlMan_Update+0x128>
    119c:	8603022a 	lh	v1,554(s0)
    11a0:	86020234 	lh	v0,564(s0)
    11a4:	18400020 	blez	v0,1228 <EnBomBowlMan_Update+0x124>
    11a8:	244bffff 	addiu	t3,v0,-1
    11ac:	1000001e 	b	1228 <EnBomBowlMan_Update+0x124>
    11b0:	a60b0234 	sh	t3,564(s0)
    11b4:	860c0236 	lh	t4,566(s0)
    11b8:	55800011 	bnezl	t4,1200 <EnBomBowlMan_Update+0xfc>
    11bc:	8e0c0038 	lw	t4,56(s0)
    11c0:	860d0234 	lh	t5,564(s0)
    11c4:	25ae0001 	addiu	t6,t5,1
    11c8:	a60e0234 	sh	t6,564(s0)
    11cc:	860f0234 	lh	t7,564(s0)
    11d0:	29e10003 	slti	at,t7,3
    11d4:	14200009 	bnez	at,11fc <EnBomBowlMan_Update+0xf8>
    11d8:	3c014270 	lui	at,0x4270
    11dc:	44816000 	mtc1	at,$f12
    11e0:	0c000000 	jal	0 <EnBomBowlMan_Init>
    11e4:	a6000234 	sh	zero,564(s0)
    11e8:	4600010d 	trunc.w.s	$f4,$f0
    11ec:	44092000 	mfc1	t1,$f4
    11f0:	00000000 	nop
    11f4:	252a0014 	addiu	t2,t1,20
    11f8:	a60a0236 	sh	t2,566(s0)
    11fc:	8e0c0038 	lw	t4,56(s0)
    1200:	8fa40034 	lw	a0,52(sp)
    1204:	02002825 	move	a1,s0
    1208:	afac0010 	sw	t4,16(sp)
    120c:	8e0b003c 	lw	t3,60(s0)
    1210:	26060218 	addiu	a2,s0,536
    1214:	26070224 	addiu	a3,s0,548
    1218:	afab0014 	sw	t3,20(sp)
    121c:	8e0c0040 	lw	t4,64(s0)
    1220:	0c000000 	jal	0 <EnBomBowlMan_Init>
    1224:	afac0018 	sw	t4,24(sp)
    1228:	8603022a 	lh	v1,554(s0)
    122c:	14600003 	bnez	v1,123c <EnBomBowlMan_Update+0x138>
    1230:	246dffff 	addiu	t5,v1,-1
    1234:	10000003 	b	1244 <EnBomBowlMan_Update+0x140>
    1238:	86020236 	lh	v0,566(s0)
    123c:	a60d022a 	sh	t5,554(s0)
    1240:	86020236 	lh	v0,566(s0)
    1244:	10400002 	beqz	v0,1250 <EnBomBowlMan_Update+0x14c>
    1248:	244effff 	addiu	t6,v0,-1
    124c:	a60e0236 	sh	t6,566(s0)
    1250:	8e190214 	lw	t9,532(s0)
    1254:	02002025 	move	a0,s0
    1258:	8fa50034 	lw	a1,52(sp)
    125c:	0320f809 	jalr	t9
    1260:	00000000 	nop
    1264:	8fbf002c 	lw	ra,44(sp)
    1268:	8fb00028 	lw	s0,40(sp)
    126c:	27bd0030 	addiu	sp,sp,48
    1270:	03e00008 	jr	ra
    1274:	00000000 	nop

00001278 <func_809C48A8>:
    1278:	24010004 	li	at,4
    127c:	afa40000 	sw	a0,0(sp)
    1280:	afa60008 	sw	a2,8(sp)
    1284:	14a1000b 	bne	a1,at,12b4 <func_809C48A8+0x3c>
    1288:	afa7000c 	sw	a3,12(sp)
    128c:	8fa20014 	lw	v0,20(sp)
    1290:	8fa30010 	lw	v1,16(sp)
    1294:	844f021a 	lh	t7,538(v0)
    1298:	846e0000 	lh	t6,0(v1)
    129c:	84790004 	lh	t9,4(v1)
    12a0:	01cfc021 	addu	t8,t6,t7
    12a4:	a4780000 	sh	t8,0(v1)
    12a8:	8448021c 	lh	t0,540(v0)
    12ac:	03284821 	addu	t1,t9,t0
    12b0:	a4690004 	sh	t1,4(v1)
    12b4:	03e00008 	jr	ra
    12b8:	00001025 	move	v0,zero

000012bc <EnBomBowlMan_Draw>:
    12bc:	27bdffb0 	addiu	sp,sp,-80
    12c0:	afbf002c 	sw	ra,44(sp)
    12c4:	afb00028 	sw	s0,40(sp)
    12c8:	afa50054 	sw	a1,84(sp)
    12cc:	8ca50000 	lw	a1,0(a1)
    12d0:	00808025 	move	s0,a0
    12d4:	3c060000 	lui	a2,0x0
    12d8:	24c60000 	addiu	a2,a2,0
    12dc:	27a40038 	addiu	a0,sp,56
    12e0:	2407038b 	li	a3,907
    12e4:	0c000000 	jal	0 <EnBomBowlMan_Init>
    12e8:	afa50048 	sw	a1,72(sp)
    12ec:	8faf0054 	lw	t7,84(sp)
    12f0:	0c000000 	jal	0 <EnBomBowlMan_Init>
    12f4:	8de40000 	lw	a0,0(t7)
    12f8:	8fa50048 	lw	a1,72(sp)
    12fc:	3c19db06 	lui	t9,0xdb06
    1300:	37390020 	ori	t9,t9,0x20
    1304:	8ca302c0 	lw	v1,704(a1)
    1308:	3c040000 	lui	a0,0x0
    130c:	3c0e0000 	lui	t6,0x0
    1310:	24780008 	addiu	t8,v1,8
    1314:	acb802c0 	sw	t8,704(a1)
    1318:	ac790000 	sw	t9,0(v1)
    131c:	86080234 	lh	t0,564(s0)
    1320:	3c0100ff 	lui	at,0xff
    1324:	3421ffff 	ori	at,at,0xffff
    1328:	00084880 	sll	t1,t0,0x2
    132c:	00892021 	addu	a0,a0,t1
    1330:	8c840000 	lw	a0,0(a0)
    1334:	3c190000 	lui	t9,0x0
    1338:	27390000 	addiu	t9,t9,0
    133c:	00045900 	sll	t3,a0,0x4
    1340:	000b6702 	srl	t4,t3,0x1c
    1344:	000c6880 	sll	t5,t4,0x2
    1348:	01cd7021 	addu	t6,t6,t5
    134c:	8dce0000 	lw	t6,0(t6)
    1350:	00815024 	and	t2,a0,at
    1354:	3c018000 	lui	at,0x8000
    1358:	014e7821 	addu	t7,t2,t6
    135c:	01e1c021 	addu	t8,t7,at
    1360:	ac780004 	sw	t8,4(v1)
    1364:	9207014e 	lbu	a3,334(s0)
    1368:	8e06016c 	lw	a2,364(s0)
    136c:	8e050150 	lw	a1,336(s0)
    1370:	afb00018 	sw	s0,24(sp)
    1374:	afa00014 	sw	zero,20(sp)
    1378:	afb90010 	sw	t9,16(sp)
    137c:	0c000000 	jal	0 <EnBomBowlMan_Init>
    1380:	8fa40054 	lw	a0,84(sp)
    1384:	8fa80054 	lw	t0,84(sp)
    1388:	3c060000 	lui	a2,0x0
    138c:	24c60000 	addiu	a2,a2,0
    1390:	27a40038 	addiu	a0,sp,56
    1394:	2407039b 	li	a3,923
    1398:	0c000000 	jal	0 <EnBomBowlMan_Init>
    139c:	8d050000 	lw	a1,0(t0)
    13a0:	8fbf002c 	lw	ra,44(sp)
    13a4:	8fb00028 	lw	s0,40(sp)
    13a8:	27bd0050 	addiu	sp,sp,80
    13ac:	03e00008 	jr	ra
    13b0:	00000000 	nop
	...
