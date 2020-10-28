
build/src/overlays/actors/ovl_En_Bigokuta/z_en_bigokuta.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBigokuta_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb30034 	sw	s3,52(sp)
       8:	00a09825 	move	s3,a1
       c:	afbf003c 	sw	ra,60(sp)
      10:	afb20030 	sw	s2,48(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00809025 	move	s2,a0
      1c:	afb40038 	sw	s4,56(sp)
      20:	afb1002c 	sw	s1,44(sp)
      24:	afb00028 	sw	s0,40(sp)
      28:	0c000000 	jal	0 <EnBigokuta_Init>
      2c:	24a50000 	addiu	a1,a1,0
      30:	3c060600 	lui	a2,0x600
      34:	3c070600 	lui	a3,0x600
      38:	264e019c 	addiu	t6,s2,412
      3c:	264f0214 	addiu	t7,s2,532
      40:	24180014 	li	t8,20
      44:	afb80018 	sw	t8,24(sp)
      48:	afaf0014 	sw	t7,20(sp)
      4c:	afae0010 	sw	t6,16(sp)
      50:	24e714b8 	addiu	a3,a3,5304
      54:	24c66bc0 	addiu	a2,a2,27584
      58:	02602025 	move	a0,s3
      5c:	0c000000 	jal	0 <EnBigokuta_Init>
      60:	2645014c 	addiu	a1,s2,332
      64:	2650028c 	addiu	s0,s2,652
      68:	02002825 	move	a1,s0
      6c:	0c000000 	jal	0 <EnBigokuta_Init>
      70:	02602025 	move	a0,s3
      74:	3c070000 	lui	a3,0x0
      78:	265902ac 	addiu	t9,s2,684
      7c:	afb90010 	sw	t9,16(sp)
      80:	24e70000 	addiu	a3,a3,0
      84:	02602025 	move	a0,s3
      88:	02002825 	move	a1,s0
      8c:	0c000000 	jal	0 <EnBigokuta_Init>
      90:	02403025 	move	a2,s2
      94:	8e4202a8 	lw	v0,680(s2)
      98:	3c100000 	lui	s0,0x0
      9c:	3c140000 	lui	s4,0x0
      a0:	8448002e 	lh	t0,46(v0)
      a4:	26940000 	addiu	s4,s4,0
      a8:	26100000 	addiu	s0,s0,0
      ac:	265102ec 	addiu	s1,s2,748
      b0:	a4480036 	sh	t0,54(v0)
      b4:	02602025 	move	a0,s3
      b8:	0c000000 	jal	0 <EnBigokuta_Init>
      bc:	02202825 	move	a1,s1
      c0:	02602025 	move	a0,s3
      c4:	02202825 	move	a1,s1
      c8:	02403025 	move	a2,s2
      cc:	0c000000 	jal	0 <EnBigokuta_Init>
      d0:	02003825 	move	a3,s0
      d4:	2610002c 	addiu	s0,s0,44
      d8:	1614fff6 	bne	s0,s4,b4 <EnBigokuta_Init+0xb4>
      dc:	2631004c 	addiu	s1,s1,76
      e0:	3c050000 	lui	a1,0x0
      e4:	3c060000 	lui	a2,0x0
      e8:	24c60000 	addiu	a2,a2,0
      ec:	24a50000 	addiu	a1,a1,0
      f0:	0c000000 	jal	0 <EnBigokuta_Init>
      f4:	26440098 	addiu	a0,s2,152
      f8:	8649001c 	lh	t1,28(s2)
      fc:	24100001 	li	s0,1
     100:	a2500194 	sb	s0,404(s2)
     104:	15200009 	bnez	t1,12c <EnBigokuta_Init+0x12c>
     108:	02602025 	move	a0,s3
     10c:	26651c24 	addiu	a1,s3,7204
     110:	02403025 	move	a2,s2
     114:	0c000000 	jal	0 <EnBigokuta_Init>
     118:	24070006 	li	a3,6
     11c:	0c000000 	jal	0 <EnBigokuta_Init>
     120:	02402025 	move	a0,s2
     124:	10000009 	b	14c <EnBigokuta_Init+0x14c>
     128:	8fbf003c 	lw	ra,60(sp)
     12c:	0c000000 	jal	0 <EnBigokuta_Init>
     130:	02402025 	move	a0,s2
     134:	a640019a 	sh	zero,410(s2)
     138:	a6500196 	sh	s0,406(s2)
     13c:	3c010000 	lui	at,0x0
     140:	c4240000 	lwc1	$f4,0(at)
     144:	e644000c 	swc1	$f4,12(s2)
     148:	8fbf003c 	lw	ra,60(sp)
     14c:	8fb00028 	lw	s0,40(sp)
     150:	8fb1002c 	lw	s1,44(sp)
     154:	8fb20030 	lw	s2,48(sp)
     158:	8fb30034 	lw	s3,52(sp)
     15c:	8fb40038 	lw	s4,56(sp)
     160:	03e00008 	jr	ra
     164:	27bd0040 	addiu	sp,sp,64

00000168 <EnBigokuta_Destroy>:
     168:	27bdffd0 	addiu	sp,sp,-48
     16c:	afb20020 	sw	s2,32(sp)
     170:	00809025 	move	s2,a0
     174:	afb30024 	sw	s3,36(sp)
     178:	00a09825 	move	s3,a1
     17c:	afbf002c 	sw	ra,44(sp)
     180:	00a02025 	move	a0,a1
     184:	afb40028 	sw	s4,40(sp)
     188:	afb1001c 	sw	s1,28(sp)
     18c:	afb00018 	sw	s0,24(sp)
     190:	0c000000 	jal	0 <EnBigokuta_Init>
     194:	2645028c 	addiu	a1,s2,652
     198:	00008025 	move	s0,zero
     19c:	265102ec 	addiu	s1,s2,748
     1a0:	24140098 	li	s4,152
     1a4:	02602025 	move	a0,s3
     1a8:	0c000000 	jal	0 <EnBigokuta_Init>
     1ac:	02202825 	move	a1,s1
     1b0:	2610004c 	addiu	s0,s0,76
     1b4:	1614fffb 	bne	s0,s4,1a4 <EnBigokuta_Destroy+0x3c>
     1b8:	2631004c 	addiu	s1,s1,76
     1bc:	8fbf002c 	lw	ra,44(sp)
     1c0:	8fb00018 	lw	s0,24(sp)
     1c4:	8fb1001c 	lw	s1,28(sp)
     1c8:	8fb20020 	lw	s2,32(sp)
     1cc:	8fb30024 	lw	s3,36(sp)
     1d0:	8fb40028 	lw	s4,40(sp)
     1d4:	03e00008 	jr	ra
     1d8:	27bd0030 	addiu	sp,sp,48

000001dc <func_809BCE3C>:
     1dc:	27bdffe8 	addiu	sp,sp,-24
     1e0:	afbf0014 	sw	ra,20(sp)
     1e4:	808f0194 	lb	t7,404(a0)
     1e8:	848e00b6 	lh	t6,182(a0)
     1ec:	00802825 	move	a1,a0
     1f0:	000f0823 	negu	at,t7
     1f4:	0001c380 	sll	t8,at,0xe
     1f8:	01d8c821 	addu	t9,t6,t8
     1fc:	a4990032 	sh	t9,50(a0)
     200:	84840032 	lh	a0,50(a0)
     204:	0c000000 	jal	0 <EnBigokuta_Init>
     208:	afa50018 	sw	a1,24(sp)
     20c:	3c010000 	lui	at,0x0
     210:	c4240000 	lwc1	$f4,0(at)
     214:	8fa50018 	lw	a1,24(sp)
     218:	46040182 	mul.s	$f6,$f0,$f4
     21c:	c4a80008 	lwc1	$f8,8(a1)
     220:	84a40032 	lh	a0,50(a1)
     224:	46083280 	add.s	$f10,$f6,$f8
     228:	0c000000 	jal	0 <EnBigokuta_Init>
     22c:	e4aa0024 	swc1	$f10,36(a1)
     230:	3c010000 	lui	at,0x0
     234:	c4300000 	lwc1	$f16,0(at)
     238:	8fa50018 	lw	a1,24(sp)
     23c:	46100482 	mul.s	$f18,$f0,$f16
     240:	c4a40010 	lwc1	$f4,16(a1)
     244:	46049180 	add.s	$f6,$f18,$f4
     248:	e4a6002c 	swc1	$f6,44(a1)
     24c:	8fbf0014 	lw	ra,20(sp)
     250:	27bd0018 	addiu	sp,sp,24
     254:	03e00008 	jr	ra
     258:	00000000 	nop

0000025c <func_809BCEBC>:
     25c:	27bdffd0 	addiu	sp,sp,-48
     260:	afbf001c 	sw	ra,28(sp)
     264:	afa50034 	sw	a1,52(sp)
     268:	c4880024 	lwc1	$f8,36(a0)
     26c:	c486000c 	lwc1	$f6,12(a0)
     270:	c4840028 	lwc1	$f4,40(a0)
     274:	3c014040 	lui	at,0x4040
     278:	e7a80024 	swc1	$f8,36(sp)
     27c:	c48a000c 	lwc1	$f10,12(a0)
     280:	44818000 	mtc1	at,$f16
     284:	46062001 	sub.s	$f0,$f4,$f6
     288:	3c0f0001 	lui	t7,0x1
     28c:	01e57821 	addu	t7,t7,a1
     290:	46105480 	add.s	$f18,$f10,$f16
     294:	24010007 	li	at,7
     298:	e7b20028 	swc1	$f18,40(sp)
     29c:	c484002c 	lwc1	$f4,44(a0)
     2a0:	e7a4002c 	swc1	$f4,44(sp)
     2a4:	8def1de4 	lw	t7,7652(t7)
     2a8:	01e1001b 	divu	zero,t7,at
     2ac:	0000c010 	mfhi	t8
     2b0:	57000012 	bnezl	t8,2fc <func_809BCEBC+0xa0>
     2b4:	8fbf001c 	lw	ra,28(sp)
     2b8:	44803000 	mtc1	zero,$f6
     2bc:	3c01c2c8 	lui	at,0xc2c8
     2c0:	4606003e 	c.le.s	$f0,$f6
     2c4:	00000000 	nop
     2c8:	4502000c 	bc1fl	2fc <func_809BCEBC+0xa0>
     2cc:	8fbf001c 	lw	ra,28(sp)
     2d0:	44814000 	mtc1	at,$f8
     2d4:	00a02025 	move	a0,a1
     2d8:	27a50024 	addiu	a1,sp,36
     2dc:	4600403c 	c.lt.s	$f8,$f0
     2e0:	24060320 	li	a2,800
     2e4:	24070514 	li	a3,1300
     2e8:	45020004 	bc1fl	2fc <func_809BCEBC+0xa0>
     2ec:	8fbf001c 	lw	ra,28(sp)
     2f0:	0c000000 	jal	0 <EnBigokuta_Init>
     2f4:	afa00010 	sw	zero,16(sp)
     2f8:	8fbf001c 	lw	ra,28(sp)
     2fc:	27bd0030 	addiu	sp,sp,48
     300:	03e00008 	jr	ra
     304:	00000000 	nop

00000308 <func_809BCF68>:
     308:	27bdffb8 	addiu	sp,sp,-72
     30c:	3c010001 	lui	at,0x1
     310:	afbf0024 	sw	ra,36(sp)
     314:	afb00020 	sw	s0,32(sp)
     318:	afa5004c 	sw	a1,76(sp)
     31c:	00a11821 	addu	v1,a1,at
     320:	8c6e1de4 	lw	t6,7652(v1)
     324:	00808025 	move	s0,a0
     328:	24041200 	li	a0,4608
     32c:	31cf0001 	andi	t7,t6,0x1
     330:	11e00010 	beqz	t7,374 <func_809BCF68+0x6c>
     334:	24050c00 	li	a1,3072
     338:	24041200 	li	a0,4608
     33c:	24050c00 	li	a1,3072
     340:	0c000000 	jal	0 <EnBigokuta_Init>
     344:	afa30034 	sw	v1,52(sp)
     348:	82080194 	lb	t0,404(s0)
     34c:	861800b6 	lh	t8,182(s0)
     350:	8fa30034 	lw	v1,52(sp)
     354:	00084880 	sll	t1,t0,0x2
     358:	01284821 	addu	t1,t1,t0
     35c:	00094a40 	sll	t1,t1,0x9
     360:	0058c821 	addu	t9,v0,t8
     364:	03292023 	subu	a0,t9,t1
     368:	00042400 	sll	a0,a0,0x10
     36c:	1000000d 	b	3a4 <func_809BCF68+0x9c>
     370:	00042403 	sra	a0,a0,0x10
     374:	0c000000 	jal	0 <EnBigokuta_Init>
     378:	afa30034 	sw	v1,52(sp)
     37c:	820b0194 	lb	t3,404(s0)
     380:	860a00b6 	lh	t2,182(s0)
     384:	8fa30034 	lw	v1,52(sp)
     388:	000b6080 	sll	t4,t3,0x2
     38c:	018b6021 	addu	t4,t4,t3
     390:	000c6240 	sll	t4,t4,0x9
     394:	014c6823 	subu	t5,t2,t4
     398:	01a22023 	subu	a0,t5,v0
     39c:	00042400 	sll	a0,a0,0x10
     3a0:	00042403 	sra	a0,a0,0x10
     3a4:	3c0e0000 	lui	t6,0x0
     3a8:	25ce0000 	addiu	t6,t6,0
     3ac:	afae0030 	sw	t6,48(sp)
     3b0:	8e020190 	lw	v0,400(s0)
     3b4:	3c0f0000 	lui	t7,0x0
     3b8:	25ef0000 	addiu	t7,t7,0
     3bc:	11c2003a 	beq	t6,v0,4a8 <func_809BCF68+0x1a0>
     3c0:	00000000 	nop
     3c4:	11e20005 	beq	t7,v0,3dc <func_809BCF68+0xd4>
     3c8:	00000000 	nop
     3cc:	8c781de4 	lw	t8,7652(v1)
     3d0:	33080002 	andi	t0,t8,0x2
     3d4:	1100001e 	beqz	t0,450 <func_809BCF68+0x148>
     3d8:	00000000 	nop
     3dc:	0c000000 	jal	0 <EnBigokuta_Init>
     3e0:	a7a4003a 	sh	a0,58(sp)
     3e4:	3c0142a0 	lui	at,0x42a0
     3e8:	44813000 	mtc1	at,$f6
     3ec:	c6040024 	lwc1	$f4,36(s0)
     3f0:	87a4003a 	lh	a0,58(sp)
     3f4:	46060202 	mul.s	$f8,$f0,$f6
     3f8:	46082281 	sub.s	$f10,$f4,$f8
     3fc:	0c000000 	jal	0 <EnBigokuta_Init>
     400:	e7aa003c 	swc1	$f10,60(sp)
     404:	3c0142a0 	lui	at,0x42a0
     408:	44819000 	mtc1	at,$f18
     40c:	c610002c 	lwc1	$f16,44(s0)
     410:	3c013f80 	lui	at,0x3f80
     414:	46120182 	mul.s	$f6,$f0,$f18
     418:	44815000 	mtc1	at,$f10
     41c:	8fa4004c 	lw	a0,76(sp)
     420:	27a5003c 	addiu	a1,sp,60
     424:	24060064 	li	a2,100
     428:	240701f4 	li	a3,500
     42c:	46068101 	sub.s	$f4,$f16,$f6
     430:	e7a40044 	swc1	$f4,68(sp)
     434:	c608000c 	lwc1	$f8,12(s0)
     438:	afa00010 	sw	zero,16(sp)
     43c:	460a4480 	add.s	$f18,$f8,$f10
     440:	0c000000 	jal	0 <EnBigokuta_Init>
     444:	e7b20040 	swc1	$f18,64(sp)
     448:	10000033 	b	518 <func_809BCF68+0x210>
     44c:	24190001 	li	t9,1
     450:	0c000000 	jal	0 <EnBigokuta_Init>
     454:	a7a4003a 	sh	a0,58(sp)
     458:	3c0142f0 	lui	at,0x42f0
     45c:	44813000 	mtc1	at,$f6
     460:	c6100024 	lwc1	$f16,36(s0)
     464:	87a4003a 	lh	a0,58(sp)
     468:	46060102 	mul.s	$f4,$f0,$f6
     46c:	46048201 	sub.s	$f8,$f16,$f4
     470:	0c000000 	jal	0 <EnBigokuta_Init>
     474:	e7a8003c 	swc1	$f8,60(sp)
     478:	3c0142f0 	lui	at,0x42f0
     47c:	44819000 	mtc1	at,$f18
     480:	c60a002c 	lwc1	$f10,44(s0)
     484:	3c0140a0 	lui	at,0x40a0
     488:	46120182 	mul.s	$f6,$f0,$f18
     48c:	44814000 	mtc1	at,$f8
     490:	46065401 	sub.s	$f16,$f10,$f6
     494:	e7b00044 	swc1	$f16,68(sp)
     498:	c604000c 	lwc1	$f4,12(s0)
     49c:	46082480 	add.s	$f18,$f4,$f8
     4a0:	1000001c 	b	514 <func_809BCF68+0x20c>
     4a4:	e7b20040 	swc1	$f18,64(sp)
     4a8:	0c000000 	jal	0 <EnBigokuta_Init>
     4ac:	a7a4003a 	sh	a0,58(sp)
     4b0:	3c014248 	lui	at,0x4248
     4b4:	44813000 	mtc1	at,$f6
     4b8:	c60a0024 	lwc1	$f10,36(s0)
     4bc:	87a4003a 	lh	a0,58(sp)
     4c0:	46060402 	mul.s	$f16,$f0,$f6
     4c4:	46105101 	sub.s	$f4,$f10,$f16
     4c8:	0c000000 	jal	0 <EnBigokuta_Init>
     4cc:	e7a4003c 	swc1	$f4,60(sp)
     4d0:	3c014248 	lui	at,0x4248
     4d4:	44819000 	mtc1	at,$f18
     4d8:	c608002c 	lwc1	$f8,44(s0)
     4dc:	3c013f80 	lui	at,0x3f80
     4e0:	46120182 	mul.s	$f6,$f0,$f18
     4e4:	44812000 	mtc1	at,$f4
     4e8:	8fa4004c 	lw	a0,76(sp)
     4ec:	27a5003c 	addiu	a1,sp,60
     4f0:	24060064 	li	a2,100
     4f4:	240701f4 	li	a3,500
     4f8:	46064281 	sub.s	$f10,$f8,$f6
     4fc:	e7aa0044 	swc1	$f10,68(sp)
     500:	c610000c 	lwc1	$f16,12(s0)
     504:	afa00010 	sw	zero,16(sp)
     508:	46048480 	add.s	$f18,$f16,$f4
     50c:	0c000000 	jal	0 <EnBigokuta_Init>
     510:	e7b20040 	swc1	$f18,64(sp)
     514:	24190001 	li	t9,1
     518:	24090320 	li	t1,800
     51c:	afa90014 	sw	t1,20(sp)
     520:	afb90010 	sw	t9,16(sp)
     524:	8fa4004c 	lw	a0,76(sp)
     528:	27a5003c 	addiu	a1,sp,60
     52c:	00003025 	move	a2,zero
     530:	0c000000 	jal	0 <EnBigokuta_Init>
     534:	00003825 	move	a3,zero
     538:	8fab0030 	lw	t3,48(sp)
     53c:	8e0a0190 	lw	t2,400(s0)
     540:	02002025 	move	a0,s0
     544:	516a0004 	beql	t3,t2,558 <func_809BCF68+0x250>
     548:	8fbf0024 	lw	ra,36(sp)
     54c:	0c000000 	jal	0 <EnBigokuta_Init>
     550:	24053105 	li	a1,12549
     554:	8fbf0024 	lw	ra,36(sp)
     558:	8fb00020 	lw	s0,32(sp)
     55c:	27bd0048 	addiu	sp,sp,72
     560:	03e00008 	jr	ra
     564:	00000000 	nop

00000568 <func_809BD1C8>:
     568:	27bdffa8 	addiu	sp,sp,-88
     56c:	afbf003c 	sw	ra,60(sp)
     570:	afb40038 	sw	s4,56(sp)
     574:	afb30034 	sw	s3,52(sp)
     578:	afb20030 	sw	s2,48(sp)
     57c:	afb1002c 	sw	s1,44(sp)
     580:	afb00028 	sw	s0,40(sp)
     584:	f7b40020 	sdc1	$f20,32(sp)
     588:	c4840028 	lwc1	$f4,40(a0)
     58c:	3c014270 	lui	at,0x4270
     590:	4481a000 	mtc1	at,$f20
     594:	00808825 	move	s1,a0
     598:	00a0a025 	move	s4,a1
     59c:	00008025 	move	s0,zero
     5a0:	27b20048 	addiu	s2,sp,72
     5a4:	24130004 	li	s3,4
     5a8:	e7a4004c 	swc1	$f4,76(sp)
     5ac:	2a010002 	slti	at,s0,2
     5b0:	14200003 	bnez	at,5c0 <func_809BD1C8+0x58>
     5b4:	2402ffff 	li	v0,-1
     5b8:	10000001 	b	5c0 <func_809BD1C8+0x58>
     5bc:	24020001 	li	v0,1
     5c0:	44823000 	mtc1	v0,$f6
     5c4:	c6300024 	lwc1	$f16,36(s1)
     5c8:	320e0001 	andi	t6,s0,0x1
     5cc:	46803220 	cvt.s.w	$f8,$f6
     5d0:	2402ffff 	li	v0,-1
     5d4:	46144282 	mul.s	$f10,$f8,$f20
     5d8:	46105480 	add.s	$f18,$f10,$f16
     5dc:	11c00003 	beqz	t6,5ec <func_809BD1C8+0x84>
     5e0:	e7b20048 	swc1	$f18,72(sp)
     5e4:	10000001 	b	5ec <func_809BD1C8+0x84>
     5e8:	24020001 	li	v0,1
     5ec:	44822000 	mtc1	v0,$f4
     5f0:	c62a002c 	lwc1	$f10,44(s1)
     5f4:	240f0001 	li	t7,1
     5f8:	468021a0 	cvt.s.w	$f6,$f4
     5fc:	241807d0 	li	t8,2000
     600:	afb80014 	sw	t8,20(sp)
     604:	afaf0010 	sw	t7,16(sp)
     608:	02802025 	move	a0,s4
     60c:	02402825 	move	a1,s2
     610:	46143202 	mul.s	$f8,$f6,$f20
     614:	00003025 	move	a2,zero
     618:	00003825 	move	a3,zero
     61c:	460a4400 	add.s	$f16,$f8,$f10
     620:	0c000000 	jal	0 <EnBigokuta_Init>
     624:	e7b00050 	swc1	$f16,80(sp)
     628:	26100001 	addiu	s0,s0,1
     62c:	5613ffe0 	bnel	s0,s3,5b0 <func_809BD1C8+0x48>
     630:	2a010002 	slti	at,s0,2
     634:	02202025 	move	a0,s1
     638:	0c000000 	jal	0 <EnBigokuta_Init>
     63c:	240539ed 	li	a1,14829
     640:	02202025 	move	a0,s1
     644:	0c000000 	jal	0 <EnBigokuta_Init>
     648:	24053879 	li	a1,14457
     64c:	02202025 	move	a0,s1
     650:	02802825 	move	a1,s4
     654:	2406000a 	li	a2,10
     658:	0c000000 	jal	0 <EnBigokuta_Init>
     65c:	24070008 	li	a3,8
     660:	8fbf003c 	lw	ra,60(sp)
     664:	d7b40020 	ldc1	$f20,32(sp)
     668:	8fb00028 	lw	s0,40(sp)
     66c:	8fb1002c 	lw	s1,44(sp)
     670:	8fb20030 	lw	s2,48(sp)
     674:	8fb30034 	lw	s3,52(sp)
     678:	8fb40038 	lw	s4,56(sp)
     67c:	03e00008 	jr	ra
     680:	27bd0058 	addiu	sp,sp,88

00000684 <func_809BD2E4>:
     684:	27bdffe8 	addiu	sp,sp,-24
     688:	afbf0014 	sw	ra,20(sp)
     68c:	8c820118 	lw	v0,280(a0)
     690:	00803825 	move	a3,a0
     694:	24060010 	li	a2,16
     698:	10400003 	beqz	v0,6a8 <func_809BD2E4+0x24>
     69c:	24440032 	addiu	a0,v0,50
     6a0:	0c000000 	jal	0 <EnBigokuta_Init>
     6a4:	84e5019a 	lh	a1,410(a3)
     6a8:	8fbf0014 	lw	ra,20(sp)
     6ac:	27bd0018 	addiu	sp,sp,24
     6b0:	03e00008 	jr	ra
     6b4:	00000000 	nop

000006b8 <func_809BD318>:
     6b8:	27bdffe8 	addiu	sp,sp,-24
     6bc:	afbf0014 	sw	ra,20(sp)
     6c0:	00803025 	move	a2,a0
     6c4:	3c050600 	lui	a1,0x600
     6c8:	24a514b8 	addiu	a1,a1,5304
     6cc:	afa60018 	sw	a2,24(sp)
     6d0:	0c000000 	jal	0 <EnBigokuta_Init>
     6d4:	2484014c 	addiu	a0,a0,332
     6d8:	8fa60018 	lw	a2,24(sp)
     6dc:	3c010000 	lui	at,0x0
     6e0:	3c0f0000 	lui	t7,0x0
     6e4:	a4c0019a 	sh	zero,410(a2)
     6e8:	c4240000 	lwc1	$f4,0(at)
     6ec:	240e0079 	li	t6,121
     6f0:	25ef0000 	addiu	t7,t7,0
     6f4:	a4ce0196 	sh	t6,406(a2)
     6f8:	accf0190 	sw	t7,400(a2)
     6fc:	e4c4000c 	swc1	$f4,12(a2)
     700:	8fbf0014 	lw	ra,20(sp)
     704:	27bd0018 	addiu	sp,sp,24
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <func_809BD370>:
     710:	27bdffe8 	addiu	sp,sp,-24
     714:	afbf0014 	sw	ra,20(sp)
     718:	240e0015 	li	t6,21
     71c:	a48e0196 	sh	t6,406(a0)
     720:	afa40018 	sw	a0,24(sp)
     724:	0c000000 	jal	0 <EnBigokuta_Init>
     728:	2405386c 	li	a1,14444
     72c:	8fa40018 	lw	a0,24(sp)
     730:	3c0f0000 	lui	t7,0x0
     734:	25ef0000 	addiu	t7,t7,0
     738:	ac8f0190 	sw	t7,400(a0)
     73c:	8fbf0014 	lw	ra,20(sp)
     740:	27bd0018 	addiu	sp,sp,24
     744:	03e00008 	jr	ra
     748:	00000000 	nop

0000074c <func_809BD3AC>:
     74c:	3c010000 	lui	at,0x0
     750:	c4260000 	lwc1	$f6,0(at)
     754:	c4840008 	lwc1	$f4,8(a0)
     758:	c48a000c 	lwc1	$f10,12(a0)
     75c:	3c0f0000 	lui	t7,0x0
     760:	46062200 	add.s	$f8,$f4,$f6
     764:	240e000a 	li	t6,10
     768:	25ef0000 	addiu	t7,t7,0
     76c:	a48e0196 	sh	t6,406(a0)
     770:	e4880024 	swc1	$f8,36(a0)
     774:	ac8f0190 	sw	t7,400(a0)
     778:	03e00008 	jr	ra
     77c:	e48a0028 	swc1	$f10,40(a0)

00000780 <func_809BD3E0>:
     780:	3c0f0000 	lui	t7,0x0
     784:	240e0028 	li	t6,40
     788:	25ef0000 	addiu	t7,t7,0
     78c:	a48e0196 	sh	t6,406(a0)
     790:	03e00008 	jr	ra
     794:	ac8f0190 	sw	t7,400(a0)

00000798 <func_809BD3F8>:
     798:	27bdffe8 	addiu	sp,sp,-24
     79c:	afbf0014 	sw	ra,20(sp)
     7a0:	00803825 	move	a3,a0
     7a4:	3c050600 	lui	a1,0x600
     7a8:	24a51ca4 	addiu	a1,a1,7332
     7ac:	afa70018 	sw	a3,24(sp)
     7b0:	2484014c 	addiu	a0,a0,332
     7b4:	0c000000 	jal	0 <EnBigokuta_Init>
     7b8:	3c06c0a0 	lui	a2,0xc0a0
     7bc:	8fa40018 	lw	a0,24(sp)
     7c0:	240e015e 	li	t6,350
     7c4:	240f0050 	li	t7,80
     7c8:	80980194 	lb	t8,404(a0)
     7cc:	a48e0196 	sh	t6,406(a0)
     7d0:	a48f0198 	sh	t7,408(a0)
     7d4:	00180823 	negu	at,t8
     7d8:	0001ca40 	sll	t9,at,0x9
     7dc:	0c000000 	jal	0 <EnBigokuta_Init>
     7e0:	a499019a 	sh	t9,410(a0)
     7e4:	8fa70018 	lw	a3,24(sp)
     7e8:	3c0c0000 	lui	t4,0x0
     7ec:	258c0000 	addiu	t4,t4,0
     7f0:	90e802fc 	lbu	t0,764(a3)
     7f4:	90ea029d 	lbu	t2,669(a3)
     7f8:	acec0190 	sw	t4,400(a3)
     7fc:	35090001 	ori	t1,t0,0x1
     800:	354b0001 	ori	t3,t2,0x1
     804:	a0e902fc 	sb	t1,764(a3)
     808:	a0eb029d 	sb	t3,669(a3)
     80c:	8fbf0014 	lw	ra,20(sp)
     810:	27bd0018 	addiu	sp,sp,24
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_809BD47C>:
     81c:	908f029d 	lbu	t7,669(a0)
     820:	3c190000 	lui	t9,0x0
     824:	240e0010 	li	t6,16
     828:	27390000 	addiu	t9,t9,0
     82c:	31f8fffe 	andi	t8,t7,0xfffe
     830:	a48e0196 	sh	t6,406(a0)
     834:	a098029d 	sb	t8,669(a0)
     838:	a0800114 	sb	zero,276(a0)
     83c:	03e00008 	jr	ra
     840:	ac990190 	sw	t9,400(a0)

00000844 <func_809BD4A4>:
     844:	27bdffe8 	addiu	sp,sp,-24
     848:	afbf0014 	sw	ra,20(sp)
     84c:	00803825 	move	a3,a0
     850:	3c050600 	lui	a1,0x600
     854:	24a514b8 	addiu	a1,a1,5304
     858:	afa70018 	sw	a3,24(sp)
     85c:	2484014c 	addiu	a0,a0,332
     860:	0c000000 	jal	0 <EnBigokuta_Init>
     864:	3c06c0a0 	lui	a2,0xc0a0
     868:	8fa70018 	lw	a3,24(sp)
     86c:	34018000 	li	at,0x8000
     870:	3c0d0000 	lui	t5,0x0
     874:	84ef00b6 	lh	t7,182(a3)
     878:	80f90194 	lb	t9,404(a3)
     87c:	90e9029d 	lbu	t1,669(a3)
     880:	90eb02fc 	lbu	t3,764(a3)
     884:	240e0001 	li	t6,1
     888:	25ad0000 	addiu	t5,t5,0
     88c:	01e1c021 	addu	t8,t7,at
     890:	00194240 	sll	t0,t9,0x9
     894:	312afffe 	andi	t2,t1,0xfffe
     898:	356c0001 	ori	t4,t3,0x1
     89c:	a0ee0195 	sb	t6,405(a3)
     8a0:	a4f80030 	sh	t8,48(a3)
     8a4:	a4e8019a 	sh	t0,410(a3)
     8a8:	a0ea029d 	sb	t2,669(a3)
     8ac:	a0ec02fc 	sb	t4,764(a3)
     8b0:	aced0190 	sw	t5,400(a3)
     8b4:	8fbf0014 	lw	ra,20(sp)
     8b8:	27bd0018 	addiu	sp,sp,24
     8bc:	03e00008 	jr	ra
     8c0:	00000000 	nop

000008c4 <func_809BD524>:
     8c4:	27bdffd8 	addiu	sp,sp,-40
     8c8:	afb00020 	sw	s0,32(sp)
     8cc:	00808025 	move	s0,a0
     8d0:	afbf0024 	sw	ra,36(sp)
     8d4:	3c050600 	lui	a1,0x600
     8d8:	24a50d1c 	addiu	a1,a1,3356
     8dc:	2484014c 	addiu	a0,a0,332
     8e0:	0c000000 	jal	0 <EnBigokuta_Init>
     8e4:	3c06c0a0 	lui	a2,0xc0a0
     8e8:	920f02fc 	lbu	t7,764(s0)
     8ec:	240e0050 	li	t6,80
     8f0:	a60e0196 	sh	t6,406(s0)
     8f4:	35f80001 	ori	t8,t7,0x1
     8f8:	a600019a 	sh	zero,410(s0)
     8fc:	a21802fc 	sb	t8,764(s0)
     900:	02002025 	move	a0,s0
     904:	0c000000 	jal	0 <EnBigokuta_Init>
     908:	24053904 	li	a1,14596
     90c:	8e1902a8 	lw	t9,680(s0)
     910:	240b0001 	li	t3,1
     914:	240c0014 	li	t4,20
     918:	8f280024 	lw	t0,36(t9)
     91c:	240d0050 	li	t5,80
     920:	02002025 	move	a0,s0
     924:	8d090000 	lw	t1,0(t0)
     928:	00002825 	move	a1,zero
     92c:	240600ff 	li	a2,255
     930:	312a0001 	andi	t2,t1,0x1
     934:	51400005 	beqzl	t2,94c <func_809BD524+0x88>
     938:	a2000195 	sb	zero,405(s0)
     93c:	a20b0195 	sb	t3,405(s0)
     940:	10000003 	b	950 <func_809BD524+0x8c>
     944:	a60c0196 	sh	t4,406(s0)
     948:	a2000195 	sb	zero,405(s0)
     94c:	a60d0196 	sh	t5,406(s0)
     950:	860e0196 	lh	t6,406(s0)
     954:	00003825 	move	a3,zero
     958:	0c000000 	jal	0 <EnBigokuta_Init>
     95c:	afae0010 	sw	t6,16(sp)
     960:	3c0f0000 	lui	t7,0x0
     964:	25ef0000 	addiu	t7,t7,0
     968:	ae0f0190 	sw	t7,400(s0)
     96c:	8fbf0024 	lw	ra,36(sp)
     970:	8fb00020 	lw	s0,32(sp)
     974:	27bd0028 	addiu	sp,sp,40
     978:	03e00008 	jr	ra
     97c:	00000000 	nop

00000980 <func_809BD5E0>:
     980:	27bdffd8 	addiu	sp,sp,-40
     984:	afb00020 	sw	s0,32(sp)
     988:	00808025 	move	s0,a0
     98c:	afbf0024 	sw	ra,36(sp)
     990:	3c050600 	lui	a1,0x600
     994:	24a50444 	addiu	a1,a1,1092
     998:	2484014c 	addiu	a0,a0,332
     99c:	0c000000 	jal	0 <EnBigokuta_Init>
     9a0:	3c06c0a0 	lui	a2,0xc0a0
     9a4:	920f02fc 	lbu	t7,764(s0)
     9a8:	240e0018 	li	t6,24
     9ac:	a60e0196 	sh	t6,406(s0)
     9b0:	31f8fffe 	andi	t8,t7,0xfffe
     9b4:	a600019a 	sh	zero,410(s0)
     9b8:	a21802fc 	sb	t8,764(s0)
     9bc:	24190018 	li	t9,24
     9c0:	afb90010 	sw	t9,16(sp)
     9c4:	02002025 	move	a0,s0
     9c8:	24054000 	li	a1,16384
     9cc:	240600ff 	li	a2,255
     9d0:	0c000000 	jal	0 <EnBigokuta_Init>
     9d4:	00003825 	move	a3,zero
     9d8:	3c080000 	lui	t0,0x0
     9dc:	25080000 	addiu	t0,t0,0
     9e0:	ae080190 	sw	t0,400(s0)
     9e4:	8fbf0024 	lw	ra,36(sp)
     9e8:	8fb00020 	lw	s0,32(sp)
     9ec:	27bd0028 	addiu	sp,sp,40
     9f0:	03e00008 	jr	ra
     9f4:	00000000 	nop

000009f8 <func_809BD658>:
     9f8:	27bdffe8 	addiu	sp,sp,-24
     9fc:	afbf0014 	sw	ra,20(sp)
     a00:	00803825 	move	a3,a0
     a04:	3c050600 	lui	a1,0x600
     a08:	24a50a74 	addiu	a1,a1,2676
     a0c:	afa70018 	sw	a3,24(sp)
     a10:	2484014c 	addiu	a0,a0,332
     a14:	0c000000 	jal	0 <EnBigokuta_Init>
     a18:	3c06c0a0 	lui	a2,0xc0a0
     a1c:	8fa40018 	lw	a0,24(sp)
     a20:	0c000000 	jal	0 <EnBigokuta_Init>
     a24:	2405390a 	li	a1,14602
     a28:	8fa70018 	lw	a3,24(sp)
     a2c:	3c180000 	lui	t8,0x0
     a30:	240e0026 	li	t6,38
     a34:	240f000a 	li	t7,10
     a38:	27180000 	addiu	t8,t8,0
     a3c:	a4ee0196 	sh	t6,406(a3)
     a40:	a4ef0198 	sh	t7,408(a3)
     a44:	acf80190 	sw	t8,400(a3)
     a48:	8fbf0014 	lw	ra,20(sp)
     a4c:	27bd0018 	addiu	sp,sp,24
     a50:	03e00008 	jr	ra
     a54:	00000000 	nop

00000a58 <func_809BD6B8>:
     a58:	27bdffe8 	addiu	sp,sp,-24
     a5c:	afbf0014 	sw	ra,20(sp)
     a60:	908e0195 	lbu	t6,405(a0)
     a64:	55c00010 	bnezl	t6,aa8 <func_809BD6B8+0x50>
     a68:	849900b6 	lh	t9,182(a0)
     a6c:	0c000000 	jal	0 <EnBigokuta_Init>
     a70:	afa40018 	sw	a0,24(sp)
     a74:	3c013f00 	lui	at,0x3f00
     a78:	44812000 	mtc1	at,$f4
     a7c:	8fa40018 	lw	a0,24(sp)
     a80:	240f0018 	li	t7,24
     a84:	4604003c 	c.lt.s	$f0,$f4
     a88:	2418001c 	li	t8,28
     a8c:	45000003 	bc1f	a9c <func_809BD6B8+0x44>
     a90:	00000000 	nop
     a94:	10000011 	b	adc <func_809BD6B8+0x84>
     a98:	a48f0196 	sh	t7,406(a0)
     a9c:	1000000f 	b	adc <func_809BD6B8+0x84>
     aa0:	a4980196 	sh	t8,406(a0)
     aa4:	849900b6 	lh	t9,182(a0)
     aa8:	8488008a 	lh	t0,138(a0)
     aac:	24090004 	li	t1,4
     ab0:	03281023 	subu	v0,t9,t0
     ab4:	04400003 	bltz	v0,ac4 <func_809BD6B8+0x6c>
     ab8:	00021823 	negu	v1,v0
     abc:	10000001 	b	ac4 <func_809BD6B8+0x6c>
     ac0:	00401825 	move	v1,v0
     ac4:	28614000 	slti	at,v1,16384
     ac8:	54200004 	bnezl	at,adc <func_809BD6B8+0x84>
     acc:	a4800196 	sh	zero,406(a0)
     ad0:	10000002 	b	adc <func_809BD6B8+0x84>
     ad4:	a4890196 	sh	t1,406(a0)
     ad8:	a4800196 	sh	zero,406(a0)
     adc:	908a029d 	lbu	t2,669(a0)
     ae0:	3c0c0000 	lui	t4,0x0
     ae4:	258c0000 	addiu	t4,t4,0
     ae8:	314bfffe 	andi	t3,t2,0xfffe
     aec:	a480019a 	sh	zero,410(a0)
     af0:	a08b029d 	sb	t3,669(a0)
     af4:	ac8c0190 	sw	t4,400(a0)
     af8:	8fbf0014 	lw	ra,20(sp)
     afc:	27bd0018 	addiu	sp,sp,24
     b00:	03e00008 	jr	ra
     b04:	00000000 	nop

00000b08 <func_809BD768>:
     b08:	27bdffe8 	addiu	sp,sp,-24
     b0c:	afbf0014 	sw	ra,20(sp)
     b10:	0c000000 	jal	0 <EnBigokuta_Init>
     b14:	afa40018 	sw	a0,24(sp)
     b18:	3c013f00 	lui	at,0x3f00
     b1c:	44812000 	mtc1	at,$f4
     b20:	8fa40018 	lw	a0,24(sp)
     b24:	240f0001 	li	t7,1
     b28:	4604003c 	c.lt.s	$f0,$f4
     b2c:	240effff 	li	t6,-1
     b30:	2401fffe 	li	at,-2
     b34:	24053908 	li	a1,14600
     b38:	45020004 	bc1fl	b4c <func_809BD768+0x44>
     b3c:	a08f0194 	sb	t7,404(a0)
     b40:	10000002 	b	b4c <func_809BD768+0x44>
     b44:	a08e0194 	sb	t6,404(a0)
     b48:	a08f0194 	sb	t7,404(a0)
     b4c:	8c980004 	lw	t8,4(a0)
     b50:	908802fc 	lbu	t0,764(a0)
     b54:	a480019a 	sh	zero,410(a0)
     b58:	0301c824 	and	t9,t8,at
     b5c:	01014824 	and	t1,t0,at
     b60:	ac990004 	sw	t9,4(a0)
     b64:	a08902fc 	sb	t1,764(a0)
     b68:	0c000000 	jal	0 <EnBigokuta_Init>
     b6c:	afa40018 	sw	a0,24(sp)
     b70:	8fa40018 	lw	a0,24(sp)
     b74:	3c0a0000 	lui	t2,0x0
     b78:	254a0000 	addiu	t2,t2,0
     b7c:	ac8a0190 	sw	t2,400(a0)
     b80:	8fbf0014 	lw	ra,20(sp)
     b84:	27bd0018 	addiu	sp,sp,24
     b88:	03e00008 	jr	ra
     b8c:	00000000 	nop

00000b90 <func_809BD7F0>:
     b90:	27bdffe8 	addiu	sp,sp,-24
     b94:	afbf0014 	sw	ra,20(sp)
     b98:	00803025 	move	a2,a0
     b9c:	8ca41c44 	lw	a0,7236(a1)
     ba0:	afa60018 	sw	a2,24(sp)
     ba4:	0c000000 	jal	0 <EnBigokuta_Init>
     ba8:	24c50008 	addiu	a1,a2,8
     bac:	8fa40018 	lw	a0,24(sp)
     bb0:	808f0194 	lb	t7,404(a0)
     bb4:	a4820032 	sh	v0,50(a0)
     bb8:	848e0032 	lh	t6,50(a0)
     bbc:	000fc380 	sll	t8,t7,0xe
     bc0:	01d8c821 	addu	t9,t6,t8
     bc4:	0c000000 	jal	0 <EnBigokuta_Init>
     bc8:	a49900b6 	sh	t9,182(a0)
     bcc:	8fa60018 	lw	a2,24(sp)
     bd0:	3c080000 	lui	t0,0x0
     bd4:	25080000 	addiu	t0,t0,0
     bd8:	acc80190 	sw	t0,400(a2)
     bdc:	8fbf0014 	lw	ra,20(sp)
     be0:	27bd0018 	addiu	sp,sp,24
     be4:	03e00008 	jr	ra
     be8:	00000000 	nop

00000bec <func_809BD84C>:
     bec:	27bdffe0 	addiu	sp,sp,-32
     bf0:	afb00018 	sw	s0,24(sp)
     bf4:	00808025 	move	s0,a0
     bf8:	afbf001c 	sw	ra,28(sp)
     bfc:	afa50024 	sw	a1,36(sp)
     c00:	0c000000 	jal	0 <EnBigokuta_Init>
     c04:	2484014c 	addiu	a0,a0,332
     c08:	860e0196 	lh	t6,406(s0)
     c0c:	2401000d 	li	at,13
     c10:	02002025 	move	a0,s0
     c14:	25cfffff 	addiu	t7,t6,-1
     c18:	a60f0196 	sh	t7,406(s0)
     c1c:	86020196 	lh	v0,406(s0)
     c20:	10410003 	beq	v0,at,c30 <func_809BD84C+0x44>
     c24:	2401ffec 	li	at,-20
     c28:	54410005 	bnel	v0,at,c40 <func_809BD84C+0x54>
     c2c:	24010001 	li	at,1
     c30:	0c000000 	jal	0 <EnBigokuta_Init>
     c34:	24053906 	li	a1,14598
     c38:	86020196 	lh	v0,406(s0)
     c3c:	24010001 	li	at,1
     c40:	54410004 	bnel	v0,at,c54 <func_809BD84C+0x68>
     c44:	8618001c 	lh	t8,28(s0)
     c48:	0c000000 	jal	0 <EnBigokuta_Init>
     c4c:	24040038 	li	a0,56
     c50:	8618001c 	lh	t8,28(s0)
     c54:	24010001 	li	at,1
     c58:	57010004 	bnel	t8,at,c6c <func_809BD84C+0x80>
     c5c:	8fbf001c 	lw	ra,28(sp)
     c60:	0c000000 	jal	0 <EnBigokuta_Init>
     c64:	02002025 	move	a0,s0
     c68:	8fbf001c 	lw	ra,28(sp)
     c6c:	8fb00018 	lw	s0,24(sp)
     c70:	27bd0020 	addiu	sp,sp,32
     c74:	03e00008 	jr	ra
     c78:	00000000 	nop

00000c7c <func_809BD8DC>:
     c7c:	27bdffc8 	addiu	sp,sp,-56
     c80:	afbf0024 	sw	ra,36(sp)
     c84:	afb00020 	sw	s0,32(sp)
     c88:	afa5003c 	sw	a1,60(sp)
     c8c:	848e0196 	lh	t6,406(a0)
     c90:	00808025 	move	s0,a0
     c94:	25cfffff 	addiu	t7,t6,-1
     c98:	a48f0196 	sh	t7,406(a0)
     c9c:	84820196 	lh	v0,406(a0)
     ca0:	04400060 	bltz	v0,e24 <func_809BD8DC+0x1a8>
     ca4:	2841ffff 	slti	at,v0,-1
     ca8:	3c010000 	lui	at,0x0
     cac:	c4260000 	lwc1	$f6,0(at)
     cb0:	c6040008 	lwc1	$f4,8(s0)
     cb4:	3c064148 	lui	a2,0x4148
     cb8:	34c66186 	ori	a2,a2,0x6186
     cbc:	46062200 	add.s	$f8,$f4,$f6
     cc0:	24840024 	addiu	a0,a0,36
     cc4:	44054000 	mfc1	a1,$f8
     cc8:	0c000000 	jal	0 <EnBigokuta_Init>
     ccc:	00000000 	nop
     cd0:	86020196 	lh	v0,406(s0)
     cd4:	2841000e 	slti	at,v0,14
     cd8:	1020000f 	beqz	at,d18 <func_809BD8DC+0x9c>
     cdc:	2458fff9 	addiu	t8,v0,-7
     ce0:	44825000 	mtc1	v0,$f10
     ce4:	3c010000 	lui	at,0x0
     ce8:	c4320000 	lwc1	$f18,0(at)
     cec:	46805420 	cvt.s.w	$f16,$f10
     cf0:	46128302 	mul.s	$f12,$f16,$f18
     cf4:	0c000000 	jal	0 <EnBigokuta_Init>
     cf8:	00000000 	nop
     cfc:	3c014348 	lui	at,0x4348
     d00:	44812000 	mtc1	at,$f4
     d04:	c608000c 	lwc1	$f8,12(s0)
     d08:	46040182 	mul.s	$f6,$f0,$f4
     d0c:	46083280 	add.s	$f10,$f6,$f8
     d10:	10000011 	b	d58 <func_809BD8DC+0xdc>
     d14:	e60a0028 	swc1	$f10,40(s0)
     d18:	44988000 	mtc1	t8,$f16
     d1c:	3c010000 	lui	at,0x0
     d20:	c4240000 	lwc1	$f4,0(at)
     d24:	468084a0 	cvt.s.w	$f18,$f16
     d28:	46049302 	mul.s	$f12,$f18,$f4
     d2c:	0c000000 	jal	0 <EnBigokuta_Init>
     d30:	00000000 	nop
     d34:	3c01428c 	lui	at,0x428c
     d38:	44814000 	mtc1	at,$f8
     d3c:	3c014302 	lui	at,0x4302
     d40:	44818000 	mtc1	at,$f16
     d44:	c606000c 	lwc1	$f6,12(s0)
     d48:	46100482 	mul.s	$f18,$f0,$f16
     d4c:	46083280 	add.s	$f10,$f6,$f8
     d50:	460a9100 	add.s	$f4,$f18,$f10
     d54:	e6040028 	swc1	$f4,40(s0)
     d58:	86190196 	lh	t9,406(s0)
     d5c:	3c014220 	lui	at,0x4220
     d60:	57200045 	bnezl	t9,e78 <func_809BD8DC+0x1fc>
     d64:	8fbf0024 	lw	ra,36(sp)
     d68:	c6060024 	lwc1	$f6,36(s0)
     d6c:	44814000 	mtc1	at,$f8
     d70:	3c01428c 	lui	at,0x428c
     d74:	44812000 	mtc1	at,$f4
     d78:	46083400 	add.s	$f16,$f6,$f8
     d7c:	24080001 	li	t0,1
     d80:	240907d0 	li	t1,2000
     d84:	8fa4003c 	lw	a0,60(sp)
     d88:	e7b0002c 	swc1	$f16,44(sp)
     d8c:	c6120028 	lwc1	$f18,40(s0)
     d90:	27a5002c 	addiu	a1,sp,44
     d94:	00003025 	move	a2,zero
     d98:	e7b20030 	swc1	$f18,48(sp)
     d9c:	c60a002c 	lwc1	$f10,44(s0)
     da0:	afa90014 	sw	t1,20(sp)
     da4:	afa80010 	sw	t0,16(sp)
     da8:	46045181 	sub.s	$f6,$f10,$f4
     dac:	00003825 	move	a3,zero
     db0:	0c000000 	jal	0 <EnBigokuta_Init>
     db4:	e7a60034 	swc1	$f6,52(sp)
     db8:	3c014220 	lui	at,0x4220
     dbc:	44818000 	mtc1	at,$f16
     dc0:	c6080024 	lwc1	$f8,36(s0)
     dc4:	240a0001 	li	t2,1
     dc8:	240b07d0 	li	t3,2000
     dcc:	46104481 	sub.s	$f18,$f8,$f16
     dd0:	afab0014 	sw	t3,20(sp)
     dd4:	afaa0010 	sw	t2,16(sp)
     dd8:	8fa4003c 	lw	a0,60(sp)
     ddc:	e7b2002c 	swc1	$f18,44(sp)
     de0:	27a5002c 	addiu	a1,sp,44
     de4:	00003025 	move	a2,zero
     de8:	0c000000 	jal	0 <EnBigokuta_Init>
     dec:	00003825 	move	a3,zero
     df0:	02002025 	move	a0,s0
     df4:	0c000000 	jal	0 <EnBigokuta_Init>
     df8:	240539ed 	li	a1,14829
     dfc:	02002025 	move	a0,s0
     e00:	0c000000 	jal	0 <EnBigokuta_Init>
     e04:	24053879 	li	a1,14457
     e08:	44806000 	mtc1	zero,$f12
     e0c:	240500ff 	li	a1,255
     e10:	24060014 	li	a2,20
     e14:	0c000000 	jal	0 <EnBigokuta_Init>
     e18:	24070096 	li	a3,150
     e1c:	10000016 	b	e78 <func_809BD8DC+0x1fc>
     e20:	8fbf0024 	lw	ra,36(sp)
     e24:	10200013 	beqz	at,e74 <func_809BD8DC+0x1f8>
     e28:	244c0001 	addiu	t4,v0,1
     e2c:	448c5000 	mtc1	t4,$f10
     e30:	3c010000 	lui	at,0x0
     e34:	c4260000 	lwc1	$f6,0(at)
     e38:	46805120 	cvt.s.w	$f4,$f10
     e3c:	46062302 	mul.s	$f12,$f4,$f6
     e40:	0c000000 	jal	0 <EnBigokuta_Init>
     e44:	00000000 	nop
     e48:	3c0141a0 	lui	at,0x41a0
     e4c:	44818000 	mtc1	at,$f16
     e50:	c608000c 	lwc1	$f8,12(s0)
     e54:	860d0196 	lh	t5,406(s0)
     e58:	46100482 	mul.s	$f18,$f0,$f16
     e5c:	2401fff6 	li	at,-10
     e60:	46124281 	sub.s	$f10,$f8,$f18
     e64:	15a10003 	bne	t5,at,e74 <func_809BD8DC+0x1f8>
     e68:	e60a0028 	swc1	$f10,40(s0)
     e6c:	0c000000 	jal	0 <EnBigokuta_Init>
     e70:	02002025 	move	a0,s0
     e74:	8fbf0024 	lw	ra,36(sp)
     e78:	8fb00020 	lw	s0,32(sp)
     e7c:	27bd0038 	addiu	sp,sp,56
     e80:	03e00008 	jr	ra
     e84:	00000000 	nop

00000e88 <func_809BDAE8>:
     e88:	27bdffe0 	addiu	sp,sp,-32
     e8c:	afb00018 	sw	s0,24(sp)
     e90:	00808025 	move	s0,a0
     e94:	afbf001c 	sw	ra,28(sp)
     e98:	afa50024 	sw	a1,36(sp)
     e9c:	86050016 	lh	a1,22(s0)
     ea0:	248400b6 	addiu	a0,a0,182
     ea4:	24060400 	li	a2,1024
     ea8:	24a54000 	addiu	a1,a1,16384
     eac:	00052c00 	sll	a1,a1,0x10
     eb0:	0c000000 	jal	0 <EnBigokuta_Init>
     eb4:	00052c03 	sra	a1,a1,0x10
     eb8:	50400019 	beqzl	v0,f20 <func_809BDAE8+0x98>
     ebc:	8fbf001c 	lw	ra,28(sp)
     ec0:	86020196 	lh	v0,406(s0)
     ec4:	10400003 	beqz	v0,ed4 <func_809BDAE8+0x4c>
     ec8:	244effff 	addiu	t6,v0,-1
     ecc:	a60e0196 	sh	t6,406(s0)
     ed0:	86020196 	lh	v0,406(s0)
     ed4:	54400012 	bnezl	v0,f20 <func_809BDAE8+0x98>
     ed8:	8fbf001c 	lw	ra,28(sp)
     edc:	0c000000 	jal	0 <EnBigokuta_Init>
     ee0:	02002025 	move	a0,s0
     ee4:	8fa40024 	lw	a0,36(sp)
     ee8:	c6040028 	lwc1	$f4,40(s0)
     eec:	02003025 	move	a2,s0
     ef0:	24070005 	li	a3,5
     ef4:	24851c24 	addiu	a1,a0,7204
     ef8:	0c000000 	jal	0 <EnBigokuta_Init>
     efc:	e604000c 	swc1	$f4,12(s0)
     f00:	240f0002 	li	t7,2
     f04:	a60f001c 	sh	t7,28(s0)
     f08:	02002025 	move	a0,s0
     f0c:	0c000000 	jal	0 <EnBigokuta_Init>
     f10:	24053906 	li	a1,14598
     f14:	0c000000 	jal	0 <EnBigokuta_Init>
     f18:	02002025 	move	a0,s0
     f1c:	8fbf001c 	lw	ra,28(sp)
     f20:	8fb00018 	lw	s0,24(sp)
     f24:	27bd0020 	addiu	sp,sp,32
     f28:	03e00008 	jr	ra
     f2c:	00000000 	nop

00000f30 <func_809BDB90>:
     f30:	27bdffe8 	addiu	sp,sp,-24
     f34:	afa5001c 	sw	a1,28(sp)
     f38:	00802825 	move	a1,a0
     f3c:	afbf0014 	sw	ra,20(sp)
     f40:	afa40018 	sw	a0,24(sp)
     f44:	afa50018 	sw	a1,24(sp)
     f48:	0c000000 	jal	0 <EnBigokuta_Init>
     f4c:	2484014c 	addiu	a0,a0,332
     f50:	8fa50018 	lw	a1,24(sp)
     f54:	84a20196 	lh	v0,406(a1)
     f58:	10400003 	beqz	v0,f68 <func_809BDB90+0x38>
     f5c:	244effff 	addiu	t6,v0,-1
     f60:	a4ae0196 	sh	t6,406(a1)
     f64:	84a20196 	lh	v0,406(a1)
     f68:	5440000c 	bnezl	v0,f9c <func_809BDB90+0x6c>
     f6c:	8fbf0014 	lw	ra,20(sp)
     f70:	84af001c 	lh	t7,28(a1)
     f74:	24010003 	li	at,3
     f78:	24040038 	li	a0,56
     f7c:	15e10004 	bne	t7,at,f90 <func_809BDB90+0x60>
     f80:	00000000 	nop
     f84:	0c000000 	jal	0 <EnBigokuta_Init>
     f88:	afa50018 	sw	a1,24(sp)
     f8c:	8fa50018 	lw	a1,24(sp)
     f90:	0c000000 	jal	0 <EnBigokuta_Init>
     f94:	00a02025 	move	a0,a1
     f98:	8fbf0014 	lw	ra,20(sp)
     f9c:	27bd0018 	addiu	sp,sp,24
     fa0:	03e00008 	jr	ra
     fa4:	00000000 	nop

00000fa8 <func_809BDC08>:
     fa8:	27bdffc0 	addiu	sp,sp,-64
     fac:	afb00018 	sw	s0,24(sp)
     fb0:	afbf001c 	sw	ra,28(sp)
     fb4:	afa50044 	sw	a1,68(sp)
     fb8:	8caf1c44 	lw	t7,7236(a1)
     fbc:	00808025 	move	s0,a0
     fc0:	2484014c 	addiu	a0,a0,332
     fc4:	afa40024 	sw	a0,36(sp)
     fc8:	0c000000 	jal	0 <EnBigokuta_Init>
     fcc:	afaf003c 	sw	t7,60(sp)
     fd0:	8fa40024 	lw	a0,36(sp)
     fd4:	0c000000 	jal	0 <EnBigokuta_Init>
     fd8:	24050000 	li	a1,0
     fdc:	10400003 	beqz	v0,fec <func_809BDC08+0x44>
     fe0:	02002025 	move	a0,s0
     fe4:	0c000000 	jal	0 <EnBigokuta_Init>
     fe8:	240538c5 	li	a1,14533
     fec:	86180196 	lh	t8,406(s0)
     ff0:	8fa4003c 	lw	a0,60(sp)
     ff4:	07010015 	bgez	t8,104c <func_809BDC08+0xa4>
     ff8:	00000000 	nop
     ffc:	82080194 	lb	t0,404(s0)
    1000:	861900b6 	lh	t9,182(s0)
    1004:	02002025 	move	a0,s0
    1008:	00084a40 	sll	t1,t0,0x9
    100c:	03295021 	addu	t2,t9,t1
    1010:	0c000000 	jal	0 <EnBigokuta_Init>
    1014:	a60a00b6 	sh	t2,182(s0)
    1018:	860b0196 	lh	t3,406(s0)
    101c:	240e015e 	li	t6,350
    1020:	02002025 	move	a0,s0
    1024:	256c0001 	addiu	t4,t3,1
    1028:	a60c0196 	sh	t4,406(s0)
    102c:	860d0196 	lh	t5,406(s0)
    1030:	15a00002 	bnez	t5,103c <func_809BDC08+0x94>
    1034:	00000000 	nop
    1038:	a60e0196 	sh	t6,406(s0)
    103c:	0c000000 	jal	0 <EnBigokuta_Init>
    1040:	8fa50044 	lw	a1,68(sp)
    1044:	1000009f 	b	12c4 <func_809BDC08+0x31c>
    1048:	8fbf001c 	lw	ra,28(sp)
    104c:	0c000000 	jal	0 <EnBigokuta_Init>
    1050:	26050008 	addiu	a1,s0,8
    1054:	3c014334 	lui	at,0x4334
    1058:	44812000 	mtc1	at,$f4
    105c:	3c010000 	lui	at,0x0
    1060:	c4280000 	lwc1	$f8,0(at)
    1064:	46040181 	sub.s	$f6,$f0,$f4
    1068:	8fa6003c 	lw	a2,60(sp)
    106c:	02002025 	move	a0,s0
    1070:	27a50028 	addiu	a1,sp,40
    1074:	46083282 	mul.s	$f10,$f6,$f8
    1078:	24c60024 	addiu	a2,a2,36
    107c:	4600540d 	trunc.w.s	$f16,$f10
    1080:	44038000 	mfc1	v1,$f16
    1084:	00000000 	nop
    1088:	00031c00 	sll	v1,v1,0x10
    108c:	00031c03 	sra	v1,v1,0x10
    1090:	0c000000 	jal	0 <EnBigokuta_Init>
    1094:	a7a30036 	sh	v1,54(sp)
    1098:	c7a00028 	lwc1	$f0,40(sp)
    109c:	3c010000 	lui	at,0x0
    10a0:	c4320000 	lwc1	$f18,0(at)
    10a4:	46000005 	abs.s	$f0,$f0
    10a8:	87a30036 	lh	v1,54(sp)
    10ac:	4600903c 	c.lt.s	$f18,$f0
    10b0:	c7a60030 	lwc1	$f6,48(sp)
    10b4:	45030014 	bc1tl	1108 <func_809BDC08+0x160>
    10b8:	86020196 	lh	v0,406(s0)
    10bc:	44802000 	mtc1	zero,$f4
    10c0:	02002025 	move	a0,s0
    10c4:	24051b00 	li	a1,6912
    10c8:	4606203c 	c.lt.s	$f4,$f6
    10cc:	00000000 	nop
    10d0:	45020014 	bc1fl	1124 <func_809BDC08+0x17c>
    10d4:	3c01437a 	lui	at,0x437a
    10d8:	0c000000 	jal	0 <EnBigokuta_Init>
    10dc:	a7a30036 	sh	v1,54(sp)
    10e0:	1440000f 	bnez	v0,1120 <func_809BDC08+0x178>
    10e4:	87a30036 	lh	v1,54(sp)
    10e8:	02002025 	move	a0,s0
    10ec:	24052000 	li	a1,8192
    10f0:	8fa60044 	lw	a2,68(sp)
    10f4:	0c000000 	jal	0 <EnBigokuta_Init>
    10f8:	a7a30036 	sh	v1,54(sp)
    10fc:	14400008 	bnez	v0,1120 <func_809BDC08+0x178>
    1100:	87a30036 	lh	v1,54(sp)
    1104:	86020196 	lh	v0,406(s0)
    1108:	2463ff80 	addiu	v1,v1,-128
    110c:	00031c00 	sll	v1,v1,0x10
    1110:	10400003 	beqz	v0,1120 <func_809BDC08+0x178>
    1114:	00031c03 	sra	v1,v1,0x10
    1118:	2458ffff 	addiu	t8,v0,-1
    111c:	a6180196 	sh	t8,406(s0)
    1120:	3c01437a 	lui	at,0x437a
    1124:	44815000 	mtc1	at,$f10
    1128:	c6080090 	lwc1	$f8,144(s0)
    112c:	02002025 	move	a0,s0
    1130:	24056000 	li	a1,24576
    1134:	460a403c 	c.lt.s	$f8,$f10
    1138:	00000000 	nop
    113c:	45020015 	bc1fl	1194 <func_809BDC08+0x1ec>
    1140:	24190050 	li	t9,80
    1144:	0c000000 	jal	0 <EnBigokuta_Init>
    1148:	a7a30036 	sh	v1,54(sp)
    114c:	14400010 	bnez	v0,1190 <func_809BDC08+0x1e8>
    1150:	87a30036 	lh	v1,54(sp)
    1154:	86020198 	lh	v0,408(s0)
    1158:	3c014334 	lui	at,0x4334
    115c:	44819000 	mtc1	at,$f18
    1160:	10400002 	beqz	v0,116c <func_809BDC08+0x1c4>
    1164:	2448ffff 	addiu	t0,v0,-1
    1168:	a6080198 	sh	t0,408(s0)
    116c:	c6100090 	lwc1	$f16,144(s0)
    1170:	4612803c 	c.lt.s	$f16,$f18
    1174:	00000000 	nop
    1178:	45020008 	bc1fl	119c <func_809BDC08+0x1f4>
    117c:	920900af 	lbu	t1,175(s0)
    1180:	24630020 	addiu	v1,v1,32
    1184:	00031c00 	sll	v1,v1,0x10
    1188:	10000003 	b	1198 <func_809BDC08+0x1f0>
    118c:	00031c03 	sra	v1,v1,0x10
    1190:	24190050 	li	t9,80
    1194:	a6190198 	sh	t9,408(s0)
    1198:	920900af 	lbu	t1,175(s0)
    119c:	24010001 	li	at,1
    11a0:	246a0130 	addiu	t2,v1,304
    11a4:	5521000d 	bnel	t1,at,11dc <func_809BDC08+0x234>
    11a8:	24630130 	addiu	v1,v1,304
    11ac:	448a2000 	mtc1	t2,$f4
    11b0:	3c010000 	lui	at,0x0
    11b4:	c4280000 	lwc1	$f8,0(at)
    11b8:	468021a0 	cvt.s.w	$f6,$f4
    11bc:	46083282 	mul.s	$f10,$f6,$f8
    11c0:	4600540d 	trunc.w.s	$f16,$f10
    11c4:	44038000 	mfc1	v1,$f16
    11c8:	00000000 	nop
    11cc:	00031c00 	sll	v1,v1,0x10
    11d0:	10000004 	b	11e4 <func_809BDC08+0x23c>
    11d4:	00031c03 	sra	v1,v1,0x10
    11d8:	24630130 	addiu	v1,v1,304
    11dc:	00031c00 	sll	v1,v1,0x10
    11e0:	00031c03 	sra	v1,v1,0x10
    11e4:	820d0194 	lb	t5,404(s0)
    11e8:	860c00b6 	lh	t4,182(s0)
    11ec:	02002025 	move	a0,s0
    11f0:	006d0019 	multu	v1,t5
    11f4:	00007012 	mflo	t6
    11f8:	018e7821 	addu	t7,t4,t6
    11fc:	0c000000 	jal	0 <EnBigokuta_Init>
    1200:	a60f00b6 	sh	t7,182(s0)
    1204:	02002025 	move	a0,s0
    1208:	0c000000 	jal	0 <EnBigokuta_Init>
    120c:	8fa50044 	lw	a1,68(sp)
    1210:	86180198 	lh	t8,408(s0)
    1214:	57000006 	bnezl	t8,1230 <func_809BDC08+0x288>
    1218:	86080196 	lh	t0,406(s0)
    121c:	0c000000 	jal	0 <EnBigokuta_Init>
    1220:	02002025 	move	a0,s0
    1224:	10000027 	b	12c4 <func_809BDC08+0x31c>
    1228:	8fbf001c 	lw	ra,28(sp)
    122c:	86080196 	lh	t0,406(s0)
    1230:	55000006 	bnezl	t0,124c <func_809BDC08+0x2a4>
    1234:	92190195 	lbu	t9,405(s0)
    1238:	0c000000 	jal	0 <EnBigokuta_Init>
    123c:	02002025 	move	a0,s0
    1240:	10000020 	b	12c4 <func_809BDC08+0x31c>
    1244:	8fbf001c 	lw	ra,28(sp)
    1248:	92190195 	lbu	t9,405(s0)
    124c:	5320001d 	beqzl	t9,12c4 <func_809BDC08+0x31c>
    1250:	8fbf001c 	lw	ra,28(sp)
    1254:	8609008a 	lh	t1,138(s0)
    1258:	860a00b6 	lh	t2,182(s0)
    125c:	012a1023 	subu	v0,t1,t2
    1260:	00021400 	sll	v0,v0,0x10
    1264:	00021403 	sra	v0,v0,0x10
    1268:	04430005 	bgezl	v0,1280 <func_809BDC08+0x2d8>
    126c:	28414100 	slti	at,v0,16640
    1270:	00021023 	negu	v0,v0
    1274:	00021400 	sll	v0,v0,0x10
    1278:	00021403 	sra	v0,v0,0x10
    127c:	28414100 	slti	at,v0,16640
    1280:	1020000f 	beqz	at,12c0 <func_809BDC08+0x318>
    1284:	28413f01 	slti	at,v0,16129
    1288:	5420000e 	bnezl	at,12c4 <func_809BDC08+0x31c>
    128c:	8fbf001c 	lw	ra,28(sp)
    1290:	0c000000 	jal	0 <EnBigokuta_Init>
    1294:	00000000 	nop
    1298:	3c010000 	lui	at,0x0
    129c:	c4320000 	lwc1	$f18,0(at)
    12a0:	02002025 	move	a0,s0
    12a4:	4612003c 	c.lt.s	$f0,$f18
    12a8:	00000000 	nop
    12ac:	45020004 	bc1fl	12c0 <func_809BDC08+0x318>
    12b0:	a2000195 	sb	zero,405(s0)
    12b4:	0c000000 	jal	0 <EnBigokuta_Init>
    12b8:	a6000196 	sh	zero,406(s0)
    12bc:	a2000195 	sb	zero,405(s0)
    12c0:	8fbf001c 	lw	ra,28(sp)
    12c4:	8fb00018 	lw	s0,24(sp)
    12c8:	27bd0040 	addiu	sp,sp,64
    12cc:	03e00008 	jr	ra
    12d0:	00000000 	nop

000012d4 <func_809BDF34>:
    12d4:	27bdffe0 	addiu	sp,sp,-32
    12d8:	afb00018 	sw	s0,24(sp)
    12dc:	00808025 	move	s0,a0
    12e0:	afbf001c 	sw	ra,28(sp)
    12e4:	afa50024 	sw	a1,36(sp)
    12e8:	0c000000 	jal	0 <EnBigokuta_Init>
    12ec:	2484014c 	addiu	a0,a0,332
    12f0:	86020196 	lh	v0,406(s0)
    12f4:	10400003 	beqz	v0,1304 <func_809BDF34+0x30>
    12f8:	244effff 	addiu	t6,v0,-1
    12fc:	a60e0196 	sh	t6,406(s0)
    1300:	86020196 	lh	v0,406(s0)
    1304:	44822000 	mtc1	v0,$f4
    1308:	3c010000 	lui	at,0x0
    130c:	c4280000 	lwc1	$f8,0(at)
    1310:	468021a0 	cvt.s.w	$f6,$f4
    1314:	46083302 	mul.s	$f12,$f6,$f8
    1318:	0c000000 	jal	0 <EnBigokuta_Init>
    131c:	00000000 	nop
    1320:	3c0142c8 	lui	at,0x42c8
    1324:	44815000 	mtc1	at,$f10
    1328:	c612000c 	lwc1	$f18,12(s0)
    132c:	860f0196 	lh	t7,406(s0)
    1330:	460a0402 	mul.s	$f16,$f0,$f10
    1334:	02002025 	move	a0,s0
    1338:	46128100 	add.s	$f4,$f16,$f18
    133c:	15e00005 	bnez	t7,1354 <func_809BDF34+0x80>
    1340:	e6040028 	swc1	$f4,40(s0)
    1344:	0c000000 	jal	0 <EnBigokuta_Init>
    1348:	8fa50024 	lw	a1,36(sp)
    134c:	0c000000 	jal	0 <EnBigokuta_Init>
    1350:	02002025 	move	a0,s0
    1354:	8fbf001c 	lw	ra,28(sp)
    1358:	8fb00018 	lw	s0,24(sp)
    135c:	27bd0020 	addiu	sp,sp,32
    1360:	03e00008 	jr	ra
    1364:	00000000 	nop

00001368 <func_809BDFC8>:
    1368:	27bdffe0 	addiu	sp,sp,-32
    136c:	afb00018 	sw	s0,24(sp)
    1370:	00808025 	move	s0,a0
    1374:	afbf001c 	sw	ra,28(sp)
    1378:	afa50024 	sw	a1,36(sp)
    137c:	0c000000 	jal	0 <EnBigokuta_Init>
    1380:	2484014c 	addiu	a0,a0,332
    1384:	86030196 	lh	v1,406(s0)
    1388:	24010014 	li	at,20
    138c:	02002025 	move	a0,s0
    1390:	10600003 	beqz	v1,13a0 <func_809BDFC8+0x38>
    1394:	246effff 	addiu	t6,v1,-1
    1398:	a60e0196 	sh	t6,406(s0)
    139c:	86030196 	lh	v1,406(s0)
    13a0:	14610004 	bne	v1,at,13b4 <func_809BDFC8+0x4c>
    13a4:	00000000 	nop
    13a8:	0c000000 	jal	0 <EnBigokuta_Init>
    13ac:	24053906 	li	a1,14598
    13b0:	86030196 	lh	v1,406(s0)
    13b4:	1460000b 	bnez	v1,13e4 <func_809BDFC8+0x7c>
    13b8:	260400b6 	addiu	a0,s0,182
    13bc:	86050030 	lh	a1,48(s0)
    13c0:	0c000000 	jal	0 <EnBigokuta_Init>
    13c4:	24060800 	li	a2,2048
    13c8:	50400007 	beqzl	v0,13e8 <func_809BDFC8+0x80>
    13cc:	8fbf001c 	lw	ra,28(sp)
    13d0:	820f0194 	lb	t7,404(s0)
    13d4:	02002025 	move	a0,s0
    13d8:	000fc023 	negu	t8,t7
    13dc:	0c000000 	jal	0 <EnBigokuta_Init>
    13e0:	a2180194 	sb	t8,404(s0)
    13e4:	8fbf001c 	lw	ra,28(sp)
    13e8:	8fb00018 	lw	s0,24(sp)
    13ec:	27bd0020 	addiu	sp,sp,32
    13f0:	03e00008 	jr	ra
    13f4:	00000000 	nop

000013f8 <func_809BE058>:
    13f8:	27bdffd8 	addiu	sp,sp,-40
    13fc:	afbf001c 	sw	ra,28(sp)
    1400:	afb00018 	sw	s0,24(sp)
    1404:	84820196 	lh	v0,406(a0)
    1408:	00808025 	move	s0,a0
    140c:	8ca31c44 	lw	v1,7236(a1)
    1410:	10400002 	beqz	v0,141c <func_809BE058+0x24>
    1414:	244effff 	addiu	t6,v0,-1
    1418:	a48e0196 	sh	t6,406(a0)
    141c:	2604014c 	addiu	a0,s0,332
    1420:	0c000000 	jal	0 <EnBigokuta_Init>
    1424:	afa30024 	sw	v1,36(sp)
    1428:	9202029e 	lbu	v0,670(s0)
    142c:	8fa30024 	lw	v1,36(sp)
    1430:	3c013f80 	lui	at,0x3f80
    1434:	30420002 	andi	v0,v0,0x2
    1438:	5440000a 	bnezl	v0,1464 <func_809BE058+0x6c>
    143c:	44816000 	mtc1	at,$f12
    1440:	920f02fe 	lbu	t7,766(s0)
    1444:	31f80002 	andi	t8,t7,0x2
    1448:	57000006 	bnezl	t8,1464 <func_809BE058+0x6c>
    144c:	44816000 	mtc1	at,$f12
    1450:	9219034a 	lbu	t9,842(s0)
    1454:	33280002 	andi	t0,t9,0x2
    1458:	51000028 	beqzl	t0,14fc <func_809BE058+0x104>
    145c:	860d0196 	lh	t5,406(s0)
    1460:	44816000 	mtc1	at,$f12
    1464:	c4600068 	lwc1	$f0,104(v1)
    1468:	3c01bf80 	lui	at,0xbf80
    146c:	460c003c 	c.lt.s	$f0,$f12
    1470:	00000000 	nop
    1474:	45020004 	bc1fl	1488 <func_809BE058+0x90>
    1478:	46000086 	mov.s	$f2,$f0
    147c:	10000002 	b	1488 <func_809BE058+0x90>
    1480:	46006086 	mov.s	$f2,$f12
    1484:	46000086 	mov.s	$f2,$f0
    1488:	5440000a 	bnezl	v0,14b4 <func_809BE058+0xbc>
    148c:	860400b6 	lh	a0,182(s0)
    1490:	920902fe 	lbu	t1,766(s0)
    1494:	920b034a 	lbu	t3,842(s0)
    1498:	44812000 	mtc1	at,$f4
    149c:	312afffd 	andi	t2,t1,0xfffd
    14a0:	316cfffd 	andi	t4,t3,0xfffd
    14a4:	46041082 	mul.s	$f2,$f2,$f4
    14a8:	a20a02fe 	sb	t2,766(s0)
    14ac:	a20c034a 	sb	t4,842(s0)
    14b0:	860400b6 	lh	a0,182(s0)
    14b4:	e7a20020 	swc1	$f2,32(sp)
    14b8:	0c000000 	jal	0 <EnBigokuta_Init>
    14bc:	afa30024 	sw	v1,36(sp)
    14c0:	c7a20020 	lwc1	$f2,32(sp)
    14c4:	8fa30024 	lw	v1,36(sp)
    14c8:	46001202 	mul.s	$f8,$f2,$f0
    14cc:	c4660024 	lwc1	$f6,36(v1)
    14d0:	46083281 	sub.s	$f10,$f6,$f8
    14d4:	e46a0024 	swc1	$f10,36(v1)
    14d8:	0c000000 	jal	0 <EnBigokuta_Init>
    14dc:	860400b6 	lh	a0,182(s0)
    14e0:	c7a20020 	lwc1	$f2,32(sp)
    14e4:	8fa30024 	lw	v1,36(sp)
    14e8:	46001482 	mul.s	$f18,$f2,$f0
    14ec:	c470002c 	lwc1	$f16,44(v1)
    14f0:	46128101 	sub.s	$f4,$f16,$f18
    14f4:	e464002c 	swc1	$f4,44(v1)
    14f8:	860d0196 	lh	t5,406(s0)
    14fc:	55a00004 	bnezl	t5,1510 <func_809BE058+0x118>
    1500:	8fbf001c 	lw	ra,28(sp)
    1504:	0c000000 	jal	0 <EnBigokuta_Init>
    1508:	02002025 	move	a0,s0
    150c:	8fbf001c 	lw	ra,28(sp)
    1510:	8fb00018 	lw	s0,24(sp)
    1514:	27bd0028 	addiu	sp,sp,40
    1518:	03e00008 	jr	ra
    151c:	00000000 	nop

00001520 <func_809BE180>:
    1520:	27bdffe0 	addiu	sp,sp,-32
    1524:	afb00018 	sw	s0,24(sp)
    1528:	00808025 	move	s0,a0
    152c:	afbf001c 	sw	ra,28(sp)
    1530:	afa50024 	sw	a1,36(sp)
    1534:	0c000000 	jal	0 <EnBigokuta_Init>
    1538:	2484014c 	addiu	a0,a0,332
    153c:	86020196 	lh	v0,406(s0)
    1540:	10400003 	beqz	v0,1550 <func_809BE180+0x30>
    1544:	244effff 	addiu	t6,v0,-1
    1548:	a60e0196 	sh	t6,406(s0)
    154c:	86020196 	lh	v0,406(s0)
    1550:	1440000c 	bnez	v0,1584 <func_809BE180+0x64>
    1554:	28410008 	slti	at,v0,8
    1558:	920f00af 	lbu	t7,175(s0)
    155c:	11e00005 	beqz	t7,1574 <func_809BE180+0x54>
    1560:	00000000 	nop
    1564:	0c000000 	jal	0 <EnBigokuta_Init>
    1568:	02002025 	move	a0,s0
    156c:	10000023 	b	15fc <func_809BE180+0xdc>
    1570:	8fbf001c 	lw	ra,28(sp)
    1574:	0c000000 	jal	0 <EnBigokuta_Init>
    1578:	02002025 	move	a0,s0
    157c:	1000001f 	b	15fc <func_809BE180+0xdc>
    1580:	8fbf001c 	lw	ra,28(sp)
    1584:	1420001c 	bnez	at,15f8 <func_809BE180+0xd8>
    1588:	244afff8 	addiu	t2,v0,-8
    158c:	82190194 	lb	t9,404(s0)
    1590:	448a2000 	mtc1	t2,$f4
    1594:	861800b6 	lh	t8,182(s0)
    1598:	00194240 	sll	t0,t9,0x9
    159c:	468021a0 	cvt.s.w	$f6,$f4
    15a0:	03084821 	addu	t1,t8,t0
    15a4:	a60900b6 	sh	t1,182(s0)
    15a8:	3c010000 	lui	at,0x0
    15ac:	c4280000 	lwc1	$f8,0(at)
    15b0:	46083302 	mul.s	$f12,$f6,$f8
    15b4:	0c000000 	jal	0 <EnBigokuta_Init>
    15b8:	00000000 	nop
    15bc:	3c0142c8 	lui	at,0x42c8
    15c0:	44815000 	mtc1	at,$f10
    15c4:	c612000c 	lwc1	$f18,12(s0)
    15c8:	02002025 	move	a0,s0
    15cc:	460a0402 	mul.s	$f16,$f0,$f10
    15d0:	46128100 	add.s	$f4,$f16,$f18
    15d4:	0c000000 	jal	0 <EnBigokuta_Init>
    15d8:	e6040028 	swc1	$f4,40(s0)
    15dc:	860b0196 	lh	t3,406(s0)
    15e0:	24010008 	li	at,8
    15e4:	02002025 	move	a0,s0
    15e8:	55610004 	bnel	t3,at,15fc <func_809BE180+0xdc>
    15ec:	8fbf001c 	lw	ra,28(sp)
    15f0:	0c000000 	jal	0 <EnBigokuta_Init>
    15f4:	8fa50024 	lw	a1,36(sp)
    15f8:	8fbf001c 	lw	ra,28(sp)
    15fc:	8fb00018 	lw	s0,24(sp)
    1600:	27bd0020 	addiu	sp,sp,32
    1604:	03e00008 	jr	ra
    1608:	00000000 	nop

0000160c <func_809BE26C>:
    160c:	27bdffc0 	addiu	sp,sp,-64
    1610:	afbf002c 	sw	ra,44(sp)
    1614:	afb00028 	sw	s0,40(sp)
    1618:	afa50044 	sw	a1,68(sp)
    161c:	84820196 	lh	v0,406(a0)
    1620:	00808025 	move	s0,a0
    1624:	1040000c 	beqz	v0,1658 <func_809BE26C+0x4c>
    1628:	00000000 	nop
    162c:	10400003 	beqz	v0,163c <func_809BE26C+0x30>
    1630:	244effff 	addiu	t6,v0,-1
    1634:	a48e0196 	sh	t6,406(a0)
    1638:	84820196 	lh	v0,406(a0)
    163c:	2841000a 	slti	at,v0,10
    1640:	5420004c 	bnezl	at,1774 <func_809BE26C+0x168>
    1644:	8fbf002c 	lw	ra,44(sp)
    1648:	860f00b6 	lh	t7,182(s0)
    164c:	25f82000 	addiu	t8,t7,8192
    1650:	10000047 	b	1770 <func_809BE26C+0x164>
    1654:	a61800b6 	sh	t8,182(s0)
    1658:	0c000000 	jal	0 <EnBigokuta_Init>
    165c:	2604014c 	addiu	a0,s0,332
    1660:	10400043 	beqz	v0,1770 <func_809BE26C+0x164>
    1664:	24010006 	li	at,6
    1668:	86020198 	lh	v0,408(s0)
    166c:	3c060000 	lui	a2,0x0
    1670:	24c60000 	addiu	a2,a2,0
    1674:	10400003 	beqz	v0,1684 <func_809BE26C+0x78>
    1678:	2459ffff 	addiu	t9,v0,-1
    167c:	a6190198 	sh	t9,408(s0)
    1680:	86020198 	lh	v0,408(s0)
    1684:	1441001b 	bne	v0,at,16f4 <func_809BE26C+0xe8>
    1688:	27a50034 	addiu	a1,sp,52
    168c:	c6040024 	lwc1	$f4,36(s0)
    1690:	3c014316 	lui	at,0x4316
    1694:	44814000 	mtc1	at,$f8
    1698:	e7a40034 	swc1	$f4,52(sp)
    169c:	c6060028 	lwc1	$f6,40(s0)
    16a0:	3c080000 	lui	t0,0x0
    16a4:	3c090000 	lui	t1,0x0
    16a8:	46083280 	add.s	$f10,$f6,$f8
    16ac:	25290000 	addiu	t1,t1,0
    16b0:	25080000 	addiu	t0,t0,0
    16b4:	240a04b0 	li	t2,1200
    16b8:	e7aa0038 	swc1	$f10,56(sp)
    16bc:	c610002c 	lwc1	$f16,44(s0)
    16c0:	240b0014 	li	t3,20
    16c4:	afab001c 	sw	t3,28(sp)
    16c8:	afaa0018 	sw	t2,24(sp)
    16cc:	afa90014 	sw	t1,20(sp)
    16d0:	afa80010 	sw	t0,16(sp)
    16d4:	8fa40044 	lw	a0,68(sp)
    16d8:	00c03825 	move	a3,a2
    16dc:	0c000000 	jal	0 <EnBigokuta_Init>
    16e0:	e7b0003c 	swc1	$f16,60(sp)
    16e4:	02002025 	move	a0,s0
    16e8:	0c000000 	jal	0 <EnBigokuta_Init>
    16ec:	240538c7 	li	a1,14535
    16f0:	86020198 	lh	v0,408(s0)
    16f4:	1440001e 	bnez	v0,1770 <func_809BE26C+0x164>
    16f8:	26040054 	addiu	a0,s0,84
    16fc:	3c063a83 	lui	a2,0x3a83
    1700:	34c6126f 	ori	a2,a2,0x126f
    1704:	0c000000 	jal	0 <EnBigokuta_Init>
    1708:	24050000 	li	a1,0
    170c:	10400018 	beqz	v0,1770 <func_809BE26C+0x164>
    1710:	8fa40044 	lw	a0,68(sp)
    1714:	0c000000 	jal	0 <EnBigokuta_Init>
    1718:	82050003 	lb	a1,3(s0)
    171c:	8fac0044 	lw	t4,68(sp)
    1720:	24050003 	li	a1,3
    1724:	0c000000 	jal	0 <EnBigokuta_Init>
    1728:	8d840790 	lw	a0,1936(t4)
    172c:	8fad0044 	lw	t5,68(sp)
    1730:	24050004 	li	a1,4
    1734:	0c000000 	jal	0 <EnBigokuta_Init>
    1738:	8da40790 	lw	a0,1936(t5)
    173c:	26050024 	addiu	a1,s0,36
    1740:	afa50030 	sw	a1,48(sp)
    1744:	8fa40044 	lw	a0,68(sp)
    1748:	24060032 	li	a2,50
    174c:	0c000000 	jal	0 <EnBigokuta_Init>
    1750:	240738c5 	li	a3,14533
    1754:	8fa40044 	lw	a0,68(sp)
    1758:	02002825 	move	a1,s0
    175c:	8fa60030 	lw	a2,48(sp)
    1760:	0c000000 	jal	0 <EnBigokuta_Init>
    1764:	240700b0 	li	a3,176
    1768:	0c000000 	jal	0 <EnBigokuta_Init>
    176c:	02002025 	move	a0,s0
    1770:	8fbf002c 	lw	ra,44(sp)
    1774:	8fb00028 	lw	s0,40(sp)
    1778:	27bd0040 	addiu	sp,sp,64
    177c:	03e00008 	jr	ra
    1780:	00000000 	nop

00001784 <func_809BE3E4>:
    1784:	27bdffe8 	addiu	sp,sp,-24
    1788:	afbf0014 	sw	ra,20(sp)
    178c:	00803025 	move	a2,a0
    1790:	afa5001c 	sw	a1,28(sp)
    1794:	afa60018 	sw	a2,24(sp)
    1798:	0c000000 	jal	0 <EnBigokuta_Init>
    179c:	2484014c 	addiu	a0,a0,332
    17a0:	8fa60018 	lw	a2,24(sp)
    17a4:	84c20196 	lh	v0,406(a2)
    17a8:	00c02025 	move	a0,a2
    17ac:	10400008 	beqz	v0,17d0 <func_809BE3E4+0x4c>
    17b0:	00000000 	nop
    17b4:	10400002 	beqz	v0,17c0 <func_809BE3E4+0x3c>
    17b8:	244effff 	addiu	t6,v0,-1
    17bc:	a4ce0196 	sh	t6,406(a2)
    17c0:	84cf00b6 	lh	t7,182(a2)
    17c4:	84c20196 	lh	v0,406(a2)
    17c8:	25f82000 	addiu	t8,t7,8192
    17cc:	a4d800b6 	sh	t8,182(a2)
    17d0:	54400016 	bnezl	v0,182c <func_809BE3E4+0xa8>
    17d4:	00c02025 	move	a0,a2
    17d8:	84d900b6 	lh	t9,182(a2)
    17dc:	84c80032 	lh	t0,50(a2)
    17e0:	240c0001 	li	t4,1
    17e4:	240dffff 	li	t5,-1
    17e8:	03284823 	subu	t1,t9,t0
    17ec:	00095400 	sll	t2,t1,0x10
    17f0:	000a5c03 	sra	t3,t2,0x10
    17f4:	59600004 	blezl	t3,1808 <func_809BE3E4+0x84>
    17f8:	a0cd0194 	sb	t5,404(a2)
    17fc:	10000002 	b	1808 <func_809BE3E4+0x84>
    1800:	a0cc0194 	sb	t4,404(a2)
    1804:	a0cd0194 	sb	t5,404(a2)
    1808:	0c000000 	jal	0 <EnBigokuta_Init>
    180c:	afa60018 	sw	a2,24(sp)
    1810:	8fa60018 	lw	a2,24(sp)
    1814:	240fffd8 	li	t7,-40
    1818:	90ce0195 	lbu	t6,405(a2)
    181c:	55c00003 	bnezl	t6,182c <func_809BE3E4+0xa8>
    1820:	00c02025 	move	a0,a2
    1824:	a4cf0196 	sh	t7,406(a2)
    1828:	00c02025 	move	a0,a2
    182c:	0c000000 	jal	0 <EnBigokuta_Init>
    1830:	8fa5001c 	lw	a1,28(sp)
    1834:	8fbf0014 	lw	ra,20(sp)
    1838:	27bd0018 	addiu	sp,sp,24
    183c:	03e00008 	jr	ra
    1840:	00000000 	nop

00001844 <func_809BE4A4>:
    1844:	27bdffe8 	addiu	sp,sp,-24
    1848:	afbf0014 	sw	ra,20(sp)
    184c:	afa5001c 	sw	a1,28(sp)
    1850:	3c014120 	lui	at,0x4120
    1854:	44813000 	mtc1	at,$f6
    1858:	c4840028 	lwc1	$f4,40(a0)
    185c:	3c01c348 	lui	at,0xc348
    1860:	44819000 	mtc1	at,$f18
    1864:	46062201 	sub.s	$f8,$f4,$f6
    1868:	c490000c 	lwc1	$f16,12(a0)
    186c:	848e00b6 	lh	t6,182(a0)
    1870:	46128100 	add.s	$f4,$f16,$f18
    1874:	e4880028 	swc1	$f8,40(a0)
    1878:	c48a0028 	lwc1	$f10,40(a0)
    187c:	25cf2000 	addiu	t7,t6,8192
    1880:	a48f00b6 	sh	t7,182(a0)
    1884:	4604503c 	c.lt.s	$f10,$f4
    1888:	8fa5001c 	lw	a1,28(sp)
    188c:	45000004 	bc1f	18a0 <func_809BE4A4+0x5c>
    1890:	00000000 	nop
    1894:	0c000000 	jal	0 <EnBigokuta_Init>
    1898:	afa40018 	sw	a0,24(sp)
    189c:	8fa40018 	lw	a0,24(sp)
    18a0:	0c000000 	jal	0 <EnBigokuta_Init>
    18a4:	8fa5001c 	lw	a1,28(sp)
    18a8:	8fbf0014 	lw	ra,20(sp)
    18ac:	27bd0018 	addiu	sp,sp,24
    18b0:	03e00008 	jr	ra
    18b4:	00000000 	nop

000018b8 <func_809BE518>:
    18b8:	27bdffe8 	addiu	sp,sp,-24
    18bc:	afbf0014 	sw	ra,20(sp)
    18c0:	afa5001c 	sw	a1,28(sp)
    18c4:	00803825 	move	a3,a0
    18c8:	8ce5000c 	lw	a1,12(a3)
    18cc:	afa70018 	sw	a3,24(sp)
    18d0:	24840028 	addiu	a0,a0,40
    18d4:	0c000000 	jal	0 <EnBigokuta_Init>
    18d8:	3c064120 	lui	a2,0x4120
    18dc:	10400006 	beqz	v0,18f8 <func_809BE518+0x40>
    18e0:	8fa70018 	lw	a3,24(sp)
    18e4:	8cee0004 	lw	t6,4(a3)
    18e8:	00e02025 	move	a0,a3
    18ec:	35cf0001 	ori	t7,t6,0x1
    18f0:	0c000000 	jal	0 <EnBigokuta_Init>
    18f4:	acef0004 	sw	t7,4(a3)
    18f8:	8fbf0014 	lw	ra,20(sp)
    18fc:	27bd0018 	addiu	sp,sp,24
    1900:	03e00008 	jr	ra
    1904:	00000000 	nop

00001908 <func_809BE568>:
    1908:	27bdffe0 	addiu	sp,sp,-32
    190c:	afbf0014 	sw	ra,20(sp)
    1910:	00802825 	move	a1,a0
    1914:	848400b6 	lh	a0,182(a0)
    1918:	0c000000 	jal	0 <EnBigokuta_Init>
    191c:	afa50020 	sw	a1,32(sp)
    1920:	8fa50020 	lw	a1,32(sp)
    1924:	84a400b6 	lh	a0,182(a1)
    1928:	0c000000 	jal	0 <EnBigokuta_Init>
    192c:	e7a00018 	swc1	$f0,24(sp)
    1930:	8fa50020 	lw	a1,32(sp)
    1934:	c7a20018 	lwc1	$f2,24(sp)
    1938:	3c020000 	lui	v0,0x0
    193c:	8ca402a8 	lw	a0,680(a1)
    1940:	c4a40024 	lwc1	$f4,36(a1)
    1944:	24420000 	addiu	v0,v0,0
    1948:	848e0028 	lh	t6,40(a0)
    194c:	848f002c 	lh	t7,44(a0)
    1950:	00a01825 	move	v1,a1
    1954:	448e3000 	mtc1	t6,$f6
    1958:	448f9000 	mtc1	t7,$f18
    195c:	46803220 	cvt.s.w	$f8,$f6
    1960:	468091a0 	cvt.s.w	$f6,$f18
    1964:	46004282 	mul.s	$f10,$f8,$f0
    1968:	460a2400 	add.s	$f16,$f4,$f10
    196c:	46023202 	mul.s	$f8,$f6,$f2
    1970:	46104100 	add.s	$f4,$f8,$f16
    1974:	4600228d 	trunc.w.s	$f10,$f4
    1978:	44195000 	mfc1	t9,$f10
    197c:	00000000 	nop
    1980:	a4990030 	sh	t9,48(a0)
    1984:	8ca402a8 	lw	a0,680(a1)
    1988:	c4b2002c 	lwc1	$f18,44(a1)
    198c:	8488002c 	lh	t0,44(a0)
    1990:	84890028 	lh	t1,40(a0)
    1994:	44883000 	mtc1	t0,$f6
    1998:	44895000 	mtc1	t1,$f10
    199c:	46803220 	cvt.s.w	$f8,$f6
    19a0:	468051a0 	cvt.s.w	$f6,$f10
    19a4:	46004402 	mul.s	$f16,$f8,$f0
    19a8:	46109100 	add.s	$f4,$f18,$f16
    19ac:	46023202 	mul.s	$f8,$f6,$f2
    19b0:	46082481 	sub.s	$f18,$f4,$f8
    19b4:	4600940d 	trunc.w.s	$f16,$f18
    19b8:	440b8000 	mfc1	t3,$f16
    19bc:	00000000 	nop
    19c0:	a48b0034 	sh	t3,52(a0)
    19c4:	8ca402a8 	lw	a0,680(a1)
    19c8:	c4a40028 	lwc1	$f4,40(a1)
    19cc:	848c002a 	lh	t4,42(a0)
    19d0:	448c5000 	mtc1	t4,$f10
    19d4:	00000000 	nop
    19d8:	468051a0 	cvt.s.w	$f6,$f10
    19dc:	46043200 	add.s	$f8,$f6,$f4
    19e0:	4600448d 	trunc.w.s	$f18,$f8
    19e4:	440e9000 	mfc1	t6,$f18
    19e8:	00000000 	nop
    19ec:	a48e0032 	sh	t6,50(a0)
    19f0:	3c040000 	lui	a0,0x0
    19f4:	24840000 	addiu	a0,a0,0
    19f8:	2442002c 	addiu	v0,v0,44
    19fc:	10440027 	beq	v0,a0,1a9c <func_809BE568+0x194>
    1a00:	844ffffe 	lh	t7,-2(v0)
    1a04:	448f9000 	mtc1	t7,$f18
    1a08:	8458fffa 	lh	t8,-6(v0)
    1a0c:	c4b00024 	lwc1	$f16,36(a1)
    1a10:	468094a0 	cvt.s.w	$f18,$f18
    1a14:	44987000 	mtc1	t8,$f14
    1a18:	2442002c 	addiu	v0,v0,44
    1a1c:	2463004c 	addiu	v1,v1,76
    1a20:	468073a0 	cvt.s.w	$f14,$f14
    1a24:	46029482 	mul.s	$f18,$f18,$f2
    1a28:	46128480 	add.s	$f18,$f16,$f18
    1a2c:	46007382 	mul.s	$f14,$f14,$f0
    1a30:	46127480 	add.s	$f18,$f14,$f18
    1a34:	4600948d 	trunc.w.s	$f18,$f18
    1a38:	44089000 	mfc1	t0,$f18
    1a3c:	00000000 	nop
    1a40:	a46802e6 	sh	t0,742(v1)
    1a44:	8449ffd2 	lh	t1,-46(v0)
    1a48:	844affce 	lh	t2,-50(v0)
    1a4c:	c4b2002c 	lwc1	$f18,44(a1)
    1a50:	44897000 	mtc1	t1,$f14
    1a54:	448a8000 	mtc1	t2,$f16
    1a58:	468073a0 	cvt.s.w	$f14,$f14
    1a5c:	46808420 	cvt.s.w	$f16,$f16
    1a60:	46007382 	mul.s	$f14,$f14,$f0
    1a64:	460e9380 	add.s	$f14,$f18,$f14
    1a68:	46028402 	mul.s	$f16,$f16,$f2
    1a6c:	46107401 	sub.s	$f16,$f14,$f16
    1a70:	4600840d 	trunc.w.s	$f16,$f16
    1a74:	440c8000 	mfc1	t4,$f16
    1a78:	00000000 	nop
    1a7c:	a46c02ea 	sh	t4,746(v1)
    1a80:	c4b00028 	lwc1	$f16,40(a1)
    1a84:	4600840d 	trunc.w.s	$f16,$f16
    1a88:	440e8000 	mfc1	t6,$f16
    1a8c:	00000000 	nop
    1a90:	a46e02e8 	sh	t6,744(v1)
    1a94:	1444ffdb 	bne	v0,a0,1a04 <func_809BE568+0xfc>
    1a98:	844ffffe 	lh	t7,-2(v0)
    1a9c:	448f9000 	mtc1	t7,$f18
    1aa0:	8458fffa 	lh	t8,-6(v0)
    1aa4:	c4b00024 	lwc1	$f16,36(a1)
    1aa8:	468094a0 	cvt.s.w	$f18,$f18
    1aac:	44987000 	mtc1	t8,$f14
    1ab0:	2463004c 	addiu	v1,v1,76
    1ab4:	468073a0 	cvt.s.w	$f14,$f14
    1ab8:	46029482 	mul.s	$f18,$f18,$f2
    1abc:	46128480 	add.s	$f18,$f16,$f18
    1ac0:	46007382 	mul.s	$f14,$f14,$f0
    1ac4:	46127480 	add.s	$f18,$f14,$f18
    1ac8:	4600948d 	trunc.w.s	$f18,$f18
    1acc:	44089000 	mfc1	t0,$f18
    1ad0:	00000000 	nop
    1ad4:	a46802e6 	sh	t0,742(v1)
    1ad8:	8449fffe 	lh	t1,-2(v0)
    1adc:	844afffa 	lh	t2,-6(v0)
    1ae0:	c4b2002c 	lwc1	$f18,44(a1)
    1ae4:	44897000 	mtc1	t1,$f14
    1ae8:	448a8000 	mtc1	t2,$f16
    1aec:	468073a0 	cvt.s.w	$f14,$f14
    1af0:	46808420 	cvt.s.w	$f16,$f16
    1af4:	46007382 	mul.s	$f14,$f14,$f0
    1af8:	460e9380 	add.s	$f14,$f18,$f14
    1afc:	46028402 	mul.s	$f16,$f16,$f2
    1b00:	46107401 	sub.s	$f16,$f14,$f16
    1b04:	4600840d 	trunc.w.s	$f16,$f16
    1b08:	440c8000 	mfc1	t4,$f16
    1b0c:	00000000 	nop
    1b10:	a46c02ea 	sh	t4,746(v1)
    1b14:	c4b00028 	lwc1	$f16,40(a1)
    1b18:	4600840d 	trunc.w.s	$f16,$f16
    1b1c:	440e8000 	mfc1	t6,$f16
    1b20:	00000000 	nop
    1b24:	a46e02e8 	sh	t6,744(v1)
    1b28:	8fbf0014 	lw	ra,20(sp)
    1b2c:	27bd0020 	addiu	sp,sp,32
    1b30:	03e00008 	jr	ra
    1b34:	00000000 	nop

00001b38 <func_809BE798>:
    1b38:	27bdffd0 	addiu	sp,sp,-48
    1b3c:	afbf0024 	sw	ra,36(sp)
    1b40:	afb00020 	sw	s0,32(sp)
    1b44:	afa50034 	sw	a1,52(sp)
    1b48:	908602fc 	lbu	a2,764(a0)
    1b4c:	00808025 	move	s0,a0
    1b50:	02002825 	move	a1,s0
    1b54:	30ce0002 	andi	t6,a2,0x2
    1b58:	15c00009 	bnez	t6,1b80 <func_809BE798+0x48>
    1b5c:	30cafffd 	andi	t2,a2,0xfffd
    1b60:	908f0348 	lbu	t7,840(a0)
    1b64:	31f80002 	andi	t8,t7,0x2
    1b68:	57000006 	bnezl	t8,1b84 <func_809BE798+0x4c>
    1b6c:	86080032 	lh	t0,50(s0)
    1b70:	9099029c 	lbu	t9,668(a0)
    1b74:	33290002 	andi	t1,t9,0x2
    1b78:	5120003c 	beqzl	t1,1c6c <func_809BE798+0x134>
    1b7c:	8fbf0024 	lw	ra,36(sp)
    1b80:	86080032 	lh	t0,50(s0)
    1b84:	860f008a 	lh	t7,138(s0)
    1b88:	920b0348 	lbu	t3,840(s0)
    1b8c:	920d029c 	lbu	t5,668(s0)
    1b90:	01e81023 	subu	v0,t7,t0
    1b94:	00021400 	sll	v0,v0,0x10
    1b98:	00021403 	sra	v0,v0,0x10
    1b9c:	28414001 	slti	at,v0,16385
    1ba0:	316cfffd 	andi	t4,t3,0xfffd
    1ba4:	31aefffd 	andi	t6,t5,0xfffd
    1ba8:	a20a02fc 	sb	t2,764(s0)
    1bac:	a20c0348 	sb	t4,840(s0)
    1bb0:	14200003 	bnez	at,1bc0 <func_809BE798+0x88>
    1bb4:	a20e029c 	sb	t6,668(s0)
    1bb8:	10000009 	b	1be0 <func_809BE798+0xa8>
    1bbc:	24024000 	li	v0,16384
    1bc0:	18400003 	blez	v0,1bd0 <func_809BE798+0x98>
    1bc4:	2841c000 	slti	at,v0,-16384
    1bc8:	10000005 	b	1be0 <func_809BE798+0xa8>
    1bcc:	24026000 	li	v0,24576
    1bd0:	10200003 	beqz	at,1be0 <func_809BE798+0xa8>
    1bd4:	2402a000 	li	v0,-24576
    1bd8:	10000001 	b	1be0 <func_809BE798+0xa8>
    1bdc:	2402c000 	li	v0,-16384
    1be0:	3c0140a0 	lui	at,0x40a0
    1be4:	44812000 	mtc1	at,$f4
    1be8:	01023821 	addu	a3,t0,v0
    1bec:	00073c00 	sll	a3,a3,0x10
    1bf0:	00073c03 	sra	a3,a3,0x10
    1bf4:	8fa40034 	lw	a0,52(sp)
    1bf8:	3c064120 	lui	a2,0x4120
    1bfc:	a7a2002e 	sh	v0,46(sp)
    1c00:	0c000000 	jal	0 <EnBigokuta_Init>
    1c04:	e7a40010 	swc1	$f4,16(sp)
    1c08:	8e030190 	lw	v1,400(s0)
    1c0c:	3c180000 	lui	t8,0x0
    1c10:	27180000 	addiu	t8,t8,0
    1c14:	17030006 	bne	t8,v1,1c30 <func_809BE798+0xf8>
    1c18:	87a2002e 	lh	v0,46(sp)
    1c1c:	0c000000 	jal	0 <EnBigokuta_Init>
    1c20:	02002025 	move	a0,s0
    1c24:	24190028 	li	t9,40
    1c28:	1000000f 	b	1c68 <func_809BE798+0x130>
    1c2c:	a6190196 	sh	t9,406(s0)
    1c30:	3c090000 	lui	t1,0x0
    1c34:	25290000 	addiu	t1,t1,0
    1c38:	5523000c 	bnel	t1,v1,1c6c <func_809BE798+0x134>
    1c3c:	8fbf0024 	lw	ra,36(sp)
    1c40:	82030194 	lb	v1,404(s0)
    1c44:	00430019 	multu	v0,v1
    1c48:	00005012 	mflo	t2
    1c4c:	59400007 	blezl	t2,1c6c <func_809BE798+0x134>
    1c50:	8fbf0024 	lw	ra,36(sp)
    1c54:	860c0196 	lh	t4,406(s0)
    1c58:	00035823 	negu	t3,v1
    1c5c:	a20b0194 	sb	t3,404(s0)
    1c60:	258d0004 	addiu	t5,t4,4
    1c64:	a60d0196 	sh	t5,406(s0)
    1c68:	8fbf0024 	lw	ra,36(sp)
    1c6c:	8fb00020 	lw	s0,32(sp)
    1c70:	27bd0030 	addiu	sp,sp,48
    1c74:	03e00008 	jr	ra
    1c78:	00000000 	nop

00001c7c <func_809BE8DC>:
    1c7c:	27bdffe0 	addiu	sp,sp,-32
    1c80:	afbf001c 	sw	ra,28(sp)
    1c84:	afb00018 	sw	s0,24(sp)
    1c88:	afa50024 	sw	a1,36(sp)
    1c8c:	9083029d 	lbu	v1,669(a0)
    1c90:	00808025 	move	s0,a0
    1c94:	306e0002 	andi	t6,v1,0x2
    1c98:	51c00030 	beqzl	t6,1d5c <func_809BE8DC+0xe0>
    1c9c:	8fbf001c 	lw	ra,28(sp)
    1ca0:	908200b1 	lbu	v0,177(a0)
    1ca4:	306ffffd 	andi	t7,v1,0xfffd
    1ca8:	a08f029d 	sb	t7,669(a0)
    1cac:	14400004 	bnez	v0,1cc0 <func_809BE8DC+0x44>
    1cb0:	24010001 	li	at,1
    1cb4:	909800b0 	lbu	t8,176(a0)
    1cb8:	53000028 	beqzl	t8,1d5c <func_809BE8DC+0xe0>
    1cbc:	8fbf001c 	lw	ra,28(sp)
    1cc0:	5441000b 	bnel	v0,at,1cf0 <func_809BE8DC+0x74>
    1cc4:	2401000f 	li	at,15
    1cc8:	8e080190 	lw	t0,400(s0)
    1ccc:	3c190000 	lui	t9,0x0
    1cd0:	27390000 	addiu	t9,t9,0
    1cd4:	53280021 	beql	t9,t0,1d5c <func_809BE8DC+0xe0>
    1cd8:	8fbf001c 	lw	ra,28(sp)
    1cdc:	0c000000 	jal	0 <EnBigokuta_Init>
    1ce0:	02002025 	move	a0,s0
    1ce4:	1000001d 	b	1d5c <func_809BE8DC+0xe0>
    1ce8:	8fbf001c 	lw	ra,28(sp)
    1cec:	2401000f 	li	at,15
    1cf0:	14410005 	bne	v0,at,1d08 <func_809BE8DC+0x8c>
    1cf4:	02002025 	move	a0,s0
    1cf8:	0c000000 	jal	0 <EnBigokuta_Init>
    1cfc:	02002025 	move	a0,s0
    1d00:	10000016 	b	1d5c <func_809BE8DC+0xe0>
    1d04:	8fbf001c 	lw	ra,28(sp)
    1d08:	0c000000 	jal	0 <EnBigokuta_Init>
    1d0c:	24054000 	li	a1,16384
    1d10:	54400012 	bnezl	v0,1d5c <func_809BE8DC+0xe0>
    1d14:	8fbf001c 	lw	ra,28(sp)
    1d18:	0c000000 	jal	0 <EnBigokuta_Init>
    1d1c:	02002025 	move	a0,s0
    1d20:	14400009 	bnez	v0,1d48 <func_809BE8DC+0xcc>
    1d24:	02002025 	move	a0,s0
    1d28:	02002025 	move	a0,s0
    1d2c:	0c000000 	jal	0 <EnBigokuta_Init>
    1d30:	24053909 	li	a1,14601
    1d34:	8fa40024 	lw	a0,36(sp)
    1d38:	0c000000 	jal	0 <EnBigokuta_Init>
    1d3c:	02002825 	move	a1,s0
    1d40:	10000003 	b	1d50 <func_809BE8DC+0xd4>
    1d44:	00000000 	nop
    1d48:	0c000000 	jal	0 <EnBigokuta_Init>
    1d4c:	24053907 	li	a1,14599
    1d50:	0c000000 	jal	0 <EnBigokuta_Init>
    1d54:	02002025 	move	a0,s0
    1d58:	8fbf001c 	lw	ra,28(sp)
    1d5c:	8fb00018 	lw	s0,24(sp)
    1d60:	27bd0020 	addiu	sp,sp,32
    1d64:	03e00008 	jr	ra
    1d68:	00000000 	nop

00001d6c <EnBigokuta_Update>:
    1d6c:	27bdffd0 	addiu	sp,sp,-48
    1d70:	afbf002c 	sw	ra,44(sp)
    1d74:	afb40024 	sw	s4,36(sp)
    1d78:	afb2001c 	sw	s2,28(sp)
    1d7c:	00a09025 	move	s2,a1
    1d80:	0080a025 	move	s4,a0
    1d84:	afb50028 	sw	s5,40(sp)
    1d88:	afb30020 	sw	s3,32(sp)
    1d8c:	afb10018 	sw	s1,24(sp)
    1d90:	0c000000 	jal	0 <EnBigokuta_Init>
    1d94:	afb00014 	sw	s0,20(sp)
    1d98:	02802025 	move	a0,s4
    1d9c:	0c000000 	jal	0 <EnBigokuta_Init>
    1da0:	02402825 	move	a1,s2
    1da4:	8e990190 	lw	t9,400(s4)
    1da8:	02802025 	move	a0,s4
    1dac:	02402825 	move	a1,s2
    1db0:	0320f809 	jalr	t9
    1db4:	00000000 	nop
    1db8:	0c000000 	jal	0 <EnBigokuta_Init>
    1dbc:	02802025 	move	a0,s4
    1dc0:	0c000000 	jal	0 <EnBigokuta_Init>
    1dc4:	02802025 	move	a0,s4
    1dc8:	8e440790 	lw	a0,1936(s2)
    1dcc:	0c000000 	jal	0 <EnBigokuta_Init>
    1dd0:	24050034 	li	a1,52
    1dd4:	8e440790 	lw	a0,1936(s2)
    1dd8:	0c000000 	jal	0 <EnBigokuta_Init>
    1ddc:	24050004 	li	a1,4
    1de0:	928e02fc 	lbu	t6,764(s4)
    1de4:	31cf0001 	andi	t7,t6,0x1
    1de8:	51e00037 	beqzl	t7,1ec8 <EnBigokuta_Update+0x15c>
    1dec:	928d029d 	lbu	t5,669(s4)
    1df0:	8e880190 	lw	t0,400(s4)
    1df4:	3c180000 	lui	t8,0x0
    1df8:	27180000 	addiu	t8,t8,0
    1dfc:	13080013 	beq	t8,t0,1e4c <EnBigokuta_Update+0xe0>
    1e00:	00008025 	move	s0,zero
    1e04:	3c010001 	lui	at,0x1
    1e08:	34211e60 	ori	at,at,0x1e60
    1e0c:	02419821 	addu	s3,s2,at
    1e10:	00008025 	move	s0,zero
    1e14:	269102ec 	addiu	s1,s4,748
    1e18:	24150098 	li	s5,152
    1e1c:	02402025 	move	a0,s2
    1e20:	02602825 	move	a1,s3
    1e24:	0c000000 	jal	0 <EnBigokuta_Init>
    1e28:	02203025 	move	a2,s1
    1e2c:	2610004c 	addiu	s0,s0,76
    1e30:	1615fffa 	bne	s0,s5,1e1c <EnBigokuta_Update+0xb0>
    1e34:	2631004c 	addiu	s1,s1,76
    1e38:	8e890004 	lw	t1,4(s4)
    1e3c:	3c010100 	lui	at,0x100
    1e40:	01215025 	or	t2,t1,at
    1e44:	1000000d 	b	1e7c <EnBigokuta_Update+0x110>
    1e48:	ae8a0004 	sw	t2,4(s4)
    1e4c:	3c010001 	lui	at,0x1
    1e50:	34211e60 	ori	at,at,0x1e60
    1e54:	02419821 	addu	s3,s2,at
    1e58:	269102ec 	addiu	s1,s4,748
    1e5c:	24150098 	li	s5,152
    1e60:	02402025 	move	a0,s2
    1e64:	02602825 	move	a1,s3
    1e68:	0c000000 	jal	0 <EnBigokuta_Init>
    1e6c:	02203025 	move	a2,s1
    1e70:	2610004c 	addiu	s0,s0,76
    1e74:	1615fffa 	bne	s0,s5,1e60 <EnBigokuta_Update+0xf4>
    1e78:	2631004c 	addiu	s1,s1,76
    1e7c:	00008025 	move	s0,zero
    1e80:	269102ec 	addiu	s1,s4,748
    1e84:	24150098 	li	s5,152
    1e88:	02402025 	move	a0,s2
    1e8c:	02602825 	move	a1,s3
    1e90:	0c000000 	jal	0 <EnBigokuta_Init>
    1e94:	02203025 	move	a2,s1
    1e98:	2610004c 	addiu	s0,s0,76
    1e9c:	1615fffa 	bne	s0,s5,1e88 <EnBigokuta_Update+0x11c>
    1ea0:	2631004c 	addiu	s1,s1,76
    1ea4:	928b029d 	lbu	t3,669(s4)
    1ea8:	02402025 	move	a0,s2
    1eac:	02602825 	move	a1,s3
    1eb0:	316c0001 	andi	t4,t3,0x1
    1eb4:	51800004 	beqzl	t4,1ec8 <EnBigokuta_Update+0x15c>
    1eb8:	928d029d 	lbu	t5,669(s4)
    1ebc:	0c000000 	jal	0 <EnBigokuta_Init>
    1ec0:	2686028c 	addiu	a2,s4,652
    1ec4:	928d029d 	lbu	t5,669(s4)
    1ec8:	3c010001 	lui	at,0x1
    1ecc:	34211e60 	ori	at,at,0x1e60
    1ed0:	31b90001 	andi	t9,t5,0x1
    1ed4:	02419821 	addu	s3,s2,at
    1ed8:	13200006 	beqz	t9,1ef4 <EnBigokuta_Update+0x188>
    1edc:	2686028c 	addiu	a2,s4,652
    1ee0:	02402025 	move	a0,s2
    1ee4:	0c000000 	jal	0 <EnBigokuta_Init>
    1ee8:	02602825 	move	a1,s3
    1eec:	10000005 	b	1f04 <EnBigokuta_Update+0x198>
    1ef0:	3c0141c8 	lui	at,0x41c8
    1ef4:	02402025 	move	a0,s2
    1ef8:	0c000000 	jal	0 <EnBigokuta_Init>
    1efc:	02602825 	move	a1,s3
    1f00:	3c0141c8 	lui	at,0x41c8
    1f04:	44813000 	mtc1	at,$f6
    1f08:	c6840054 	lwc1	$f4,84(s4)
    1f0c:	3c0142c8 	lui	at,0x42c8
    1f10:	44815000 	mtc1	at,$f10
    1f14:	46062202 	mul.s	$f8,$f4,$f6
    1f18:	02802025 	move	a0,s4
    1f1c:	460a4402 	mul.s	$f16,$f8,$f10
    1f20:	44058000 	mfc1	a1,$f16
    1f24:	0c000000 	jal	0 <EnBigokuta_Init>
    1f28:	00000000 	nop
    1f2c:	02802025 	move	a0,s4
    1f30:	0c000000 	jal	0 <EnBigokuta_Init>
    1f34:	02402825 	move	a1,s2
    1f38:	8fbf002c 	lw	ra,44(sp)
    1f3c:	8fb00014 	lw	s0,20(sp)
    1f40:	8fb10018 	lw	s1,24(sp)
    1f44:	8fb2001c 	lw	s2,28(sp)
    1f48:	8fb30020 	lw	s3,32(sp)
    1f4c:	8fb40024 	lw	s4,36(sp)
    1f50:	8fb50028 	lw	s5,40(sp)
    1f54:	03e00008 	jr	ra
    1f58:	27bd0030 	addiu	sp,sp,48

00001f5c <func_809BEBBC>:
    1f5c:	27bdff98 	addiu	sp,sp,-104
    1f60:	2401000f 	li	at,15
    1f64:	afbf0014 	sw	ra,20(sp)
    1f68:	afa40068 	sw	a0,104(sp)
    1f6c:	afa60070 	sw	a2,112(sp)
    1f70:	14a10098 	bne	a1,at,21d4 <func_809BEBBC+0x278>
    1f74:	afa70074 	sw	a3,116(sp)
    1f78:	8fa3007c 	lw	v1,124(sp)
    1f7c:	3c020000 	lui	v0,0x0
    1f80:	24420000 	addiu	v0,v0,0
    1f84:	8c640190 	lw	a0,400(v1)
    1f88:	3c0e0000 	lui	t6,0x0
    1f8c:	25ce0000 	addiu	t6,t6,0
    1f90:	10440003 	beq	v0,a0,1fa0 <func_809BEBBC+0x44>
    1f94:	8faf0068 	lw	t7,104(sp)
    1f98:	55c40128 	bnel	t6,a0,243c <func_809BEBBC+0x4e0>
    1f9c:	8fbf0014 	lw	ra,20(sp)
    1fa0:	8de50000 	lw	a1,0(t7)
    1fa4:	3c060000 	lui	a2,0x0
    1fa8:	24c60000 	addiu	a2,a2,0
    1fac:	afa2001c 	sw	v0,28(sp)
    1fb0:	27a40044 	addiu	a0,sp,68
    1fb4:	2407077a 	li	a3,1914
    1fb8:	0c000000 	jal	0 <EnBigokuta_Init>
    1fbc:	afa50054 	sw	a1,84(sp)
    1fc0:	8fa3007c 	lw	v1,124(sp)
    1fc4:	8fa2001c 	lw	v0,28(sp)
    1fc8:	8fa80054 	lw	t0,84(sp)
    1fcc:	8c780190 	lw	t8,400(v1)
    1fd0:	54580020 	bnel	v0,t8,2054 <func_809BEBBC+0xf8>
    1fd4:	846a0196 	lh	t2,406(v1)
    1fd8:	84790196 	lh	t9,406(v1)
    1fdc:	2404000c 	li	a0,12
    1fe0:	0324001a 	div	zero,t9,a0
    1fe4:	14800002 	bnez	a0,1ff0 <func_809BEBBC+0x94>
    1fe8:	00000000 	nop
    1fec:	0007000d 	break	0x7
    1ff0:	2401ffff 	li	at,-1
    1ff4:	14810004 	bne	a0,at,2008 <func_809BEBBC+0xac>
    1ff8:	3c018000 	lui	at,0x8000
    1ffc:	17210002 	bne	t9,at,2008 <func_809BEBBC+0xac>
    2000:	00000000 	nop
    2004:	0006000d 	break	0x6
    2008:	00001010 	mfhi	v0
    200c:	28410008 	slti	at,v0,8
    2010:	14200008 	bnez	at,2034 <func_809BEBBC+0xd8>
    2014:	00824823 	subu	t1,a0,v0
    2018:	44892000 	mtc1	t1,$f4
    201c:	3c010000 	lui	at,0x0
    2020:	c4280000 	lwc1	$f8,0(at)
    2024:	468021a0 	cvt.s.w	$f6,$f4
    2028:	46083282 	mul.s	$f10,$f6,$f8
    202c:	10000025 	b	20c4 <func_809BEBBC+0x168>
    2030:	e7aa005c 	swc1	$f10,92(sp)
    2034:	44828000 	mtc1	v0,$f16
    2038:	3c010000 	lui	at,0x0
    203c:	c4240000 	lwc1	$f4,0(at)
    2040:	468084a0 	cvt.s.w	$f18,$f16
    2044:	46049002 	mul.s	$f0,$f18,$f4
    2048:	1000001e 	b	20c4 <func_809BEBBC+0x168>
    204c:	e7a0005c 	swc1	$f0,92(sp)
    2050:	846a0196 	lh	t2,406(v1)
    2054:	24040006 	li	a0,6
    2058:	0144001a 	div	zero,t2,a0
    205c:	14800002 	bnez	a0,2068 <func_809BEBBC+0x10c>
    2060:	00000000 	nop
    2064:	0007000d 	break	0x7
    2068:	2401ffff 	li	at,-1
    206c:	14810004 	bne	a0,at,2080 <func_809BEBBC+0x124>
    2070:	3c018000 	lui	at,0x8000
    2074:	15410002 	bne	t2,at,2080 <func_809BEBBC+0x124>
    2078:	00000000 	nop
    207c:	0006000d 	break	0x6
    2080:	00001010 	mfhi	v0
    2084:	28410004 	slti	at,v0,4
    2088:	14200008 	bnez	at,20ac <func_809BEBBC+0x150>
    208c:	00825823 	subu	t3,a0,v0
    2090:	448b3000 	mtc1	t3,$f6
    2094:	3c010000 	lui	at,0x0
    2098:	c42a0000 	lwc1	$f10,0(at)
    209c:	46803220 	cvt.s.w	$f8,$f6
    20a0:	460a4002 	mul.s	$f0,$f8,$f10
    20a4:	10000007 	b	20c4 <func_809BEBBC+0x168>
    20a8:	e7a0005c 	swc1	$f0,92(sp)
    20ac:	44828000 	mtc1	v0,$f16
    20b0:	3c010000 	lui	at,0x0
    20b4:	c4240000 	lwc1	$f4,0(at)
    20b8:	468084a0 	cvt.s.w	$f18,$f16
    20bc:	46049002 	mul.s	$f0,$f18,$f4
    20c0:	e7a0005c 	swc1	$f0,92(sp)
    20c4:	c7ac005c 	lwc1	$f12,92(sp)
    20c8:	0c000000 	jal	0 <EnBigokuta_Init>
    20cc:	afa80054 	sw	t0,84(sp)
    20d0:	3c0142fa 	lui	at,0x42fa
    20d4:	44813000 	mtc1	at,$f6
    20d8:	3c014302 	lui	at,0x4302
    20dc:	44815000 	mtc1	at,$f10
    20e0:	46060202 	mul.s	$f8,$f0,$f6
    20e4:	8fa80054 	lw	t0,84(sp)
    20e8:	24020001 	li	v0,1
    20ec:	3c0de700 	lui	t5,0xe700
    20f0:	8d0302c0 	lw	v1,704(t0)
    20f4:	3c0ffb00 	lui	t7,0xfb00
    20f8:	3c060000 	lui	a2,0x0
    20fc:	460a4400 	add.s	$f16,$f8,$f10
    2100:	246c0008 	addiu	t4,v1,8
    2104:	ad0c02c0 	sw	t4,704(t0)
    2108:	ac600004 	sw	zero,4(v1)
    210c:	4458f800 	cfc1	t8,$31
    2110:	44c2f800 	ctc1	v0,$31
    2114:	ac6d0000 	sw	t5,0(v1)
    2118:	8d0402c0 	lw	a0,704(t0)
    211c:	460084a4 	cvt.w.s	$f18,$f16
    2120:	3c014f00 	lui	at,0x4f00
    2124:	248e0008 	addiu	t6,a0,8
    2128:	ad0e02c0 	sw	t6,704(t0)
    212c:	4442f800 	cfc1	v0,$31
    2130:	24c60000 	addiu	a2,a2,0
    2134:	24070799 	li	a3,1945
    2138:	30420078 	andi	v0,v0,0x78
    213c:	10400012 	beqz	v0,2188 <func_809BEBBC+0x22c>
    2140:	ac8f0000 	sw	t7,0(a0)
    2144:	44819000 	mtc1	at,$f18
    2148:	24020001 	li	v0,1
    214c:	46128481 	sub.s	$f18,$f16,$f18
    2150:	44c2f800 	ctc1	v0,$31
    2154:	00000000 	nop
    2158:	460094a4 	cvt.w.s	$f18,$f18
    215c:	4442f800 	cfc1	v0,$31
    2160:	00000000 	nop
    2164:	30420078 	andi	v0,v0,0x78
    2168:	14400005 	bnez	v0,2180 <func_809BEBBC+0x224>
    216c:	00000000 	nop
    2170:	44029000 	mfc1	v0,$f18
    2174:	3c018000 	lui	at,0x8000
    2178:	10000007 	b	2198 <func_809BEBBC+0x23c>
    217c:	00411025 	or	v0,v0,at
    2180:	10000005 	b	2198 <func_809BEBBC+0x23c>
    2184:	2402ffff 	li	v0,-1
    2188:	44029000 	mfc1	v0,$f18
    218c:	00000000 	nop
    2190:	0440fffb 	bltz	v0,2180 <func_809BEBBC+0x224>
    2194:	00000000 	nop
    2198:	304200ff 	andi	v0,v0,0xff
    219c:	0002ce00 	sll	t9,v0,0x18
    21a0:	00024c00 	sll	t1,v0,0x10
    21a4:	03295025 	or	t2,t9,t1
    21a8:	00025a00 	sll	t3,v0,0x8
    21ac:	014b6025 	or	t4,t2,t3
    21b0:	358d00ff 	ori	t5,t4,0xff
    21b4:	ac8d0004 	sw	t5,4(a0)
    21b8:	8fae0068 	lw	t6,104(sp)
    21bc:	44d8f800 	ctc1	t8,$31
    21c0:	27a40044 	addiu	a0,sp,68
    21c4:	0c000000 	jal	0 <EnBigokuta_Init>
    21c8:	8dc50000 	lw	a1,0(t6)
    21cc:	1000009b 	b	243c <func_809BEBBC+0x4e0>
    21d0:	8fbf0014 	lw	ra,20(sp)
    21d4:	2401000a 	li	at,10
    21d8:	14a10058 	bne	a1,at,233c <func_809BEBBC+0x3e0>
    21dc:	8faf0068 	lw	t7,104(sp)
    21e0:	8de50000 	lw	a1,0(t7)
    21e4:	3c060000 	lui	a2,0x0
    21e8:	24c60000 	addiu	a2,a2,0
    21ec:	27a40028 	addiu	a0,sp,40
    21f0:	2407079e 	li	a3,1950
    21f4:	0c000000 	jal	0 <EnBigokuta_Init>
    21f8:	afa50038 	sw	a1,56(sp)
    21fc:	8fa3007c 	lw	v1,124(sp)
    2200:	3c180000 	lui	t8,0x0
    2204:	27180000 	addiu	t8,t8,0
    2208:	8c790190 	lw	t9,400(v1)
    220c:	8fa80038 	lw	t0,56(sp)
    2210:	3c0ce700 	lui	t4,0xe700
    2214:	1719002e 	bne	t8,t9,22d0 <func_809BEBBC+0x374>
    2218:	3c0efb00 	lui	t6,0xfb00
    221c:	84690196 	lh	t1,406(v1)
    2220:	3c010000 	lui	at,0x0
    2224:	c4280000 	lwc1	$f8,0(at)
    2228:	44892000 	mtc1	t1,$f4
    222c:	24050001 	li	a1,1
    2230:	3c014f00 	lui	at,0x4f00
    2234:	468021a0 	cvt.s.w	$f6,$f4
    2238:	46083282 	mul.s	$f10,$f6,$f8
    223c:	444af800 	cfc1	t2,$31
    2240:	44c5f800 	ctc1	a1,$31
    2244:	00000000 	nop
    2248:	46005424 	cvt.w.s	$f16,$f10
    224c:	4445f800 	cfc1	a1,$31
    2250:	00000000 	nop
    2254:	30a50078 	andi	a1,a1,0x78
    2258:	50a00017 	beqzl	a1,22b8 <func_809BEBBC+0x35c>
    225c:	44058000 	mfc1	a1,$f16
    2260:	44818000 	mtc1	at,$f16
    2264:	24050001 	li	a1,1
    2268:	46105401 	sub.s	$f16,$f10,$f16
    226c:	44c5f800 	ctc1	a1,$31
    2270:	00000000 	nop
    2274:	46008424 	cvt.w.s	$f16,$f16
    2278:	4445f800 	cfc1	a1,$31
    227c:	00000000 	nop
    2280:	30a50078 	andi	a1,a1,0x78
    2284:	54a00008 	bnezl	a1,22a8 <func_809BEBBC+0x34c>
    2288:	2405ffff 	li	a1,-1
    228c:	44058000 	mfc1	a1,$f16
    2290:	3c018000 	lui	at,0x8000
    2294:	44caf800 	ctc1	t2,$31
    2298:	00a12825 	or	a1,a1,at
    229c:	1000000d 	b	22d4 <func_809BEBBC+0x378>
    22a0:	30a500ff 	andi	a1,a1,0xff
    22a4:	2405ffff 	li	a1,-1
    22a8:	44caf800 	ctc1	t2,$31
    22ac:	10000009 	b	22d4 <func_809BEBBC+0x378>
    22b0:	30a500ff 	andi	a1,a1,0xff
    22b4:	44058000 	mfc1	a1,$f16
    22b8:	00000000 	nop
    22bc:	04a2fffa 	bltzl	a1,22a8 <func_809BEBBC+0x34c>
    22c0:	2405ffff 	li	a1,-1
    22c4:	44caf800 	ctc1	t2,$31
    22c8:	10000002 	b	22d4 <func_809BEBBC+0x378>
    22cc:	30a500ff 	andi	a1,a1,0xff
    22d0:	240500ff 	li	a1,255
    22d4:	8d0302c0 	lw	v1,704(t0)
    22d8:	30a200ff 	andi	v0,a1,0xff
    22dc:	00027e00 	sll	t7,v0,0x18
    22e0:	246b0008 	addiu	t3,v1,8
    22e4:	ad0b02c0 	sw	t3,704(t0)
    22e8:	ac600004 	sw	zero,4(v1)
    22ec:	ac6c0000 	sw	t4,0(v1)
    22f0:	8d0302c0 	lw	v1,704(t0)
    22f4:	0002c400 	sll	t8,v0,0x10
    22f8:	01f8c825 	or	t9,t7,t8
    22fc:	00024a00 	sll	t1,v0,0x8
    2300:	246d0008 	addiu	t5,v1,8
    2304:	ad0d02c0 	sw	t5,704(t0)
    2308:	03295025 	or	t2,t9,t1
    230c:	01425825 	or	t3,t2,v0
    2310:	ac6b0004 	sw	t3,4(v1)
    2314:	ac6e0000 	sw	t6,0(v1)
    2318:	8fac0068 	lw	t4,104(sp)
    231c:	3c060000 	lui	a2,0x0
    2320:	24c60000 	addiu	a2,a2,0
    2324:	27a40028 	addiu	a0,sp,40
    2328:	240707b4 	li	a3,1972
    232c:	0c000000 	jal	0 <EnBigokuta_Init>
    2330:	8d850000 	lw	a1,0(t4)
    2334:	10000041 	b	243c <func_809BEBBC+0x4e0>
    2338:	8fbf0014 	lw	ra,20(sp)
    233c:	24010011 	li	at,17
    2340:	14a1003d 	bne	a1,at,2438 <func_809BEBBC+0x4dc>
    2344:	8fa3007c 	lw	v1,124(sp)
    2348:	8c6e0190 	lw	t6,400(v1)
    234c:	3c0d0000 	lui	t5,0x0
    2350:	25ad0000 	addiu	t5,t5,0
    2354:	55ae0039 	bnel	t5,t6,243c <func_809BEBBC+0x4e0>
    2358:	8fbf0014 	lw	ra,20(sp)
    235c:	84620198 	lh	v0,408(v1)
    2360:	28410005 	slti	at,v0,5
    2364:	50200012 	beqzl	at,23b0 <func_809BEBBC+0x454>
    2368:	28410008 	slti	at,v0,8
    236c:	44829000 	mtc1	v0,$f18
    2370:	3c013f80 	lui	at,0x3f80
    2374:	44817000 	mtc1	at,$f14
    2378:	46809120 	cvt.s.w	$f4,$f18
    237c:	3c010000 	lui	at,0x0
    2380:	c4260000 	lwc1	$f6,0(at)
    2384:	3c013e80 	lui	at,0x3e80
    2388:	44815000 	mtc1	at,$f10
    238c:	44067000 	mfc1	a2,$f14
    2390:	46062202 	mul.s	$f8,$f4,$f6
    2394:	24070001 	li	a3,1
    2398:	460a4402 	mul.s	$f16,$f8,$f10
    239c:	0c000000 	jal	0 <EnBigokuta_Init>
    23a0:	460e8300 	add.s	$f12,$f16,$f14
    23a4:	10000025 	b	243c <func_809BEBBC+0x4e0>
    23a8:	8fbf0014 	lw	ra,20(sp)
    23ac:	28410008 	slti	at,v0,8
    23b0:	10200013 	beqz	at,2400 <func_809BEBBC+0x4a4>
    23b4:	2458fff8 	addiu	t8,v0,-8
    23b8:	244ffffb 	addiu	t7,v0,-5
    23bc:	448f9000 	mtc1	t7,$f18
    23c0:	3c010000 	lui	at,0x0
    23c4:	c4260000 	lwc1	$f6,0(at)
    23c8:	46809120 	cvt.s.w	$f4,$f18
    23cc:	3c013fa0 	lui	at,0x3fa0
    23d0:	44814000 	mtc1	at,$f8
    23d4:	3c013f80 	lui	at,0x3f80
    23d8:	44815000 	mtc1	at,$f10
    23dc:	24070001 	li	a3,1
    23e0:	46062002 	mul.s	$f0,$f4,$f6
    23e4:	46005380 	add.s	$f14,$f10,$f0
    23e8:	46004301 	sub.s	$f12,$f8,$f0
    23ec:	44067000 	mfc1	a2,$f14
    23f0:	0c000000 	jal	0 <EnBigokuta_Init>
    23f4:	00000000 	nop
    23f8:	10000010 	b	243c <func_809BEBBC+0x4e0>
    23fc:	8fbf0014 	lw	ra,20(sp)
    2400:	44988000 	mtc1	t8,$f16
    2404:	3c013e00 	lui	at,0x3e00
    2408:	44812000 	mtc1	at,$f4
    240c:	468084a0 	cvt.s.w	$f18,$f16
    2410:	3c013f80 	lui	at,0x3f80
    2414:	44816000 	mtc1	at,$f12
    2418:	3c013fa0 	lui	at,0x3fa0
    241c:	44813000 	mtc1	at,$f6
    2420:	24070001 	li	a3,1
    2424:	46049002 	mul.s	$f0,$f18,$f4
    2428:	46003381 	sub.s	$f14,$f6,$f0
    242c:	44067000 	mfc1	a2,$f14
    2430:	0c000000 	jal	0 <EnBigokuta_Init>
    2434:	00000000 	nop
    2438:	8fbf0014 	lw	ra,20(sp)
    243c:	27bd0068 	addiu	sp,sp,104
    2440:	00001025 	move	v0,zero
    2444:	03e00008 	jr	ra
    2448:	00000000 	nop

0000244c <EnBigokuta_Draw>:
    244c:	27bdff90 	addiu	sp,sp,-112
    2450:	afbf002c 	sw	ra,44(sp)
    2454:	afb00028 	sw	s0,40(sp)
    2458:	afa50074 	sw	a1,116(sp)
    245c:	8ca50000 	lw	a1,0(a1)
    2460:	00808025 	move	s0,a0
    2464:	3c060000 	lui	a2,0x0
    2468:	24c60000 	addiu	a2,a2,0
    246c:	27a40058 	addiu	a0,sp,88
    2470:	240707e1 	li	a3,2017
    2474:	0c000000 	jal	0 <EnBigokuta_Init>
    2478:	afa50068 	sw	a1,104(sp)
    247c:	8e0f0190 	lw	t7,400(s0)
    2480:	3c050000 	lui	a1,0x0
    2484:	24a50000 	addiu	a1,a1,0
    2488:	14af0008 	bne	a1,t7,24ac <EnBigokuta_Draw+0x60>
    248c:	8fa80068 	lw	t0,104(sp)
    2490:	86180196 	lh	t8,406(s0)
    2494:	57000006 	bnezl	t8,24b0 <EnBigokuta_Draw+0x64>
    2498:	8fa90074 	lw	t1,116(sp)
    249c:	86190198 	lh	t9,408(s0)
    24a0:	8faa0074 	lw	t2,116(sp)
    24a4:	53200053 	beqzl	t9,25f4 <EnBigokuta_Draw+0x1a8>
    24a8:	8d440000 	lw	a0,0(t2)
    24ac:	8fa90074 	lw	t1,116(sp)
    24b0:	8d240000 	lw	a0,0(t1)
    24b4:	afa80068 	sw	t0,104(sp)
    24b8:	0c000000 	jal	0 <EnBigokuta_Init>
    24bc:	afa5003c 	sw	a1,60(sp)
    24c0:	8fa80068 	lw	t0,104(sp)
    24c4:	8fa5003c 	lw	a1,60(sp)
    24c8:	3c0bdb06 	lui	t3,0xdb06
    24cc:	8d0302c0 	lw	v1,704(t0)
    24d0:	3c0c0000 	lui	t4,0x0
    24d4:	258c0010 	addiu	t4,t4,16
    24d8:	246a0008 	addiu	t2,v1,8
    24dc:	ad0a02c0 	sw	t2,704(t0)
    24e0:	356b0030 	ori	t3,t3,0x30
    24e4:	ac6b0000 	sw	t3,0(v1)
    24e8:	ac6c0004 	sw	t4,4(v1)
    24ec:	8d0302c0 	lw	v1,704(t0)
    24f0:	3c0efb00 	lui	t6,0xfb00
    24f4:	240fffff 	li	t7,-1
    24f8:	246d0008 	addiu	t5,v1,8
    24fc:	ad0d02c0 	sw	t5,704(t0)
    2500:	ac6f0004 	sw	t7,4(v1)
    2504:	ac6e0000 	sw	t6,0(v1)
    2508:	86030196 	lh	v1,406(s0)
    250c:	30780001 	andi	t8,v1,0x1
    2510:	5300002c 	beqzl	t8,25c4 <EnBigokuta_Draw+0x178>
    2514:	8e050150 	lw	a1,336(s0)
    2518:	8e020190 	lw	v0,400(s0)
    251c:	3c190000 	lui	t9,0x0
    2520:	27390000 	addiu	t9,t9,0
    2524:	17220003 	bne	t9,v0,2534 <EnBigokuta_Draw+0xe8>
    2528:	28610008 	slti	at,v1,8
    252c:	10200005 	beqz	at,2544 <EnBigokuta_Draw+0xf8>
    2530:	00000000 	nop
    2534:	14a20022 	bne	a1,v0,25c0 <EnBigokuta_Draw+0x174>
    2538:	2861000a 	slti	at,v1,10
    253c:	54200021 	bnezl	at,25c4 <EnBigokuta_Draw+0x178>
    2540:	8e050150 	lw	a1,336(s0)
    2544:	0c000000 	jal	0 <EnBigokuta_Init>
    2548:	00000000 	nop
    254c:	3c010000 	lui	at,0x0
    2550:	c4240000 	lwc1	$f4,0(at)
    2554:	46040182 	mul.s	$f6,$f0,$f4
    2558:	0c000000 	jal	0 <EnBigokuta_Init>
    255c:	e7a6004c 	swc1	$f6,76(sp)
    2560:	3c010000 	lui	at,0x0
    2564:	c4280000 	lwc1	$f8,0(at)
    2568:	24050001 	li	a1,1
    256c:	46080302 	mul.s	$f12,$f0,$f8
    2570:	0c000000 	jal	0 <EnBigokuta_Init>
    2574:	e7ac0048 	swc1	$f12,72(sp)
    2578:	c7ac004c 	lwc1	$f12,76(sp)
    257c:	0c000000 	jal	0 <EnBigokuta_Init>
    2580:	24050001 	li	a1,1
    2584:	3c010000 	lui	at,0x0
    2588:	c42c0000 	lwc1	$f12,0(at)
    258c:	3c010000 	lui	at,0x0
    2590:	c42e0000 	lwc1	$f14,0(at)
    2594:	44066000 	mfc1	a2,$f12
    2598:	0c000000 	jal	0 <EnBigokuta_Init>
    259c:	24070001 	li	a3,1
    25a0:	c7ac004c 	lwc1	$f12,76(sp)
    25a4:	24050001 	li	a1,1
    25a8:	0c000000 	jal	0 <EnBigokuta_Init>
    25ac:	46006307 	neg.s	$f12,$f12
    25b0:	c7ac0048 	lwc1	$f12,72(sp)
    25b4:	24050001 	li	a1,1
    25b8:	0c000000 	jal	0 <EnBigokuta_Init>
    25bc:	46006307 	neg.s	$f12,$f12
    25c0:	8e050150 	lw	a1,336(s0)
    25c4:	8e06016c 	lw	a2,364(s0)
    25c8:	9207014e 	lbu	a3,334(s0)
    25cc:	3c090000 	lui	t1,0x0
    25d0:	25290000 	addiu	t1,t1,0
    25d4:	afa90010 	sw	t1,16(sp)
    25d8:	afb00018 	sw	s0,24(sp)
    25dc:	afa00014 	sw	zero,20(sp)
    25e0:	0c000000 	jal	0 <EnBigokuta_Init>
    25e4:	8fa40074 	lw	a0,116(sp)
    25e8:	10000048 	b	270c <EnBigokuta_Draw+0x2c0>
    25ec:	8fab0074 	lw	t3,116(sp)
    25f0:	8d440000 	lw	a0,0(t2)
    25f4:	0c000000 	jal	0 <EnBigokuta_Init>
    25f8:	afa80068 	sw	t0,104(sp)
    25fc:	8fa80068 	lw	t0,104(sp)
    2600:	3c0cdb06 	lui	t4,0xdb06
    2604:	3c0d0000 	lui	t5,0x0
    2608:	8d0302d0 	lw	v1,720(t0)
    260c:	25ad0000 	addiu	t5,t5,0
    2610:	358c0030 	ori	t4,t4,0x30
    2614:	246b0008 	addiu	t3,v1,8
    2618:	ad0b02d0 	sw	t3,720(t0)
    261c:	ac6d0004 	sw	t5,4(v1)
    2620:	ac6c0000 	sw	t4,0(v1)
    2624:	8d0202d0 	lw	v0,720(t0)
    2628:	3c0ffb00 	lui	t7,0xfb00
    262c:	3c010000 	lui	at,0x0
    2630:	244e0008 	addiu	t6,v0,8
    2634:	ad0e02d0 	sw	t6,720(t0)
    2638:	ac4f0000 	sw	t7,0(v0)
    263c:	c4300000 	lwc1	$f16,0(at)
    2640:	c60a0054 	lwc1	$f10,84(s0)
    2644:	24190001 	li	t9,1
    2648:	3c014f00 	lui	at,0x4f00
    264c:	46105482 	mul.s	$f18,$f10,$f16
    2650:	4458f800 	cfc1	t8,$31
    2654:	44d9f800 	ctc1	t9,$31
    2658:	00000000 	nop
    265c:	46009124 	cvt.w.s	$f4,$f18
    2660:	4459f800 	cfc1	t9,$31
    2664:	00000000 	nop
    2668:	33390078 	andi	t9,t9,0x78
    266c:	53200013 	beqzl	t9,26bc <EnBigokuta_Draw+0x270>
    2670:	44192000 	mfc1	t9,$f4
    2674:	44812000 	mtc1	at,$f4
    2678:	24190001 	li	t9,1
    267c:	46049101 	sub.s	$f4,$f18,$f4
    2680:	44d9f800 	ctc1	t9,$31
    2684:	00000000 	nop
    2688:	46002124 	cvt.w.s	$f4,$f4
    268c:	4459f800 	cfc1	t9,$31
    2690:	00000000 	nop
    2694:	33390078 	andi	t9,t9,0x78
    2698:	17200005 	bnez	t9,26b0 <EnBigokuta_Draw+0x264>
    269c:	00000000 	nop
    26a0:	44192000 	mfc1	t9,$f4
    26a4:	3c018000 	lui	at,0x8000
    26a8:	10000007 	b	26c8 <EnBigokuta_Draw+0x27c>
    26ac:	0321c825 	or	t9,t9,at
    26b0:	10000005 	b	26c8 <EnBigokuta_Draw+0x27c>
    26b4:	2419ffff 	li	t9,-1
    26b8:	44192000 	mfc1	t9,$f4
    26bc:	00000000 	nop
    26c0:	0720fffb 	bltz	t9,26b0 <EnBigokuta_Draw+0x264>
    26c4:	00000000 	nop
    26c8:	332900ff 	andi	t1,t9,0xff
    26cc:	ac490004 	sw	t1,4(v0)
    26d0:	9207014e 	lbu	a3,334(s0)
    26d4:	8e06016c 	lw	a2,364(s0)
    26d8:	8e050150 	lw	a1,336(s0)
    26dc:	afa00018 	sw	zero,24(sp)
    26e0:	afa00014 	sw	zero,20(sp)
    26e4:	afa00010 	sw	zero,16(sp)
    26e8:	8d0a02d0 	lw	t2,720(t0)
    26ec:	44d8f800 	ctc1	t8,$31
    26f0:	afa80068 	sw	t0,104(sp)
    26f4:	8fa40074 	lw	a0,116(sp)
    26f8:	0c000000 	jal	0 <EnBigokuta_Init>
    26fc:	afaa001c 	sw	t2,28(sp)
    2700:	8fa80068 	lw	t0,104(sp)
    2704:	ad0202d0 	sw	v0,720(t0)
    2708:	8fab0074 	lw	t3,116(sp)
    270c:	3c060000 	lui	a2,0x0
    2710:	24c60000 	addiu	a2,a2,0
    2714:	27a40058 	addiu	a0,sp,88
    2718:	2407081c 	li	a3,2076
    271c:	0c000000 	jal	0 <EnBigokuta_Init>
    2720:	8d650000 	lw	a1,0(t3)
    2724:	8fbf002c 	lw	ra,44(sp)
    2728:	8fb00028 	lw	s0,40(sp)
    272c:	27bd0070 	addiu	sp,sp,112
    2730:	03e00008 	jr	ra
    2734:	00000000 	nop
	...
