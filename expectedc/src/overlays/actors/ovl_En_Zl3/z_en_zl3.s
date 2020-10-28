
build/src/overlays/actors/ovl_En_Zl3/z_en_zl3.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B533B0>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	00803025 	move	a2,a0
       8:	afa50024 	sw	a1,36(sp)
       c:	00a02025 	move	a0,a1
      10:	afbf0014 	sw	ra,20(sp)
      14:	24c50378 	addiu	a1,a2,888
      18:	afa50018 	sw	a1,24(sp)
      1c:	0c000000 	jal	0 <func_80B533B0>
      20:	afa60020 	sw	a2,32(sp)
      24:	3c070000 	lui	a3,0x0
      28:	8fa50018 	lw	a1,24(sp)
      2c:	8fa60020 	lw	a2,32(sp)
      30:	24e70000 	addiu	a3,a3,0
      34:	0c000000 	jal	0 <func_80B533B0>
      38:	8fa40024 	lw	a0,36(sp)
      3c:	8fbf0014 	lw	ra,20(sp)
      40:	27bd0020 	addiu	sp,sp,32
      44:	03e00008 	jr	ra
      48:	00000000 	nop

0000004c <func_80B533FC>:
      4c:	27bdffd0 	addiu	sp,sp,-48
      50:	afbf0014 	sw	ra,20(sp)
      54:	afa50034 	sw	a1,52(sp)
      58:	24860378 	addiu	a2,a0,888
      5c:	00c02825 	move	a1,a2
      60:	0c000000 	jal	0 <func_80B533B0>
      64:	afa60018 	sw	a2,24(sp)
      68:	8fa40034 	lw	a0,52(sp)
      6c:	3c010001 	lui	at,0x1
      70:	34211e60 	ori	at,at,0x1e60
      74:	8fa60018 	lw	a2,24(sp)
      78:	0c000000 	jal	0 <func_80B533B0>
      7c:	00812821 	addu	a1,a0,at
      80:	8fbf0014 	lw	ra,20(sp)
      84:	27bd0030 	addiu	sp,sp,48
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <EnZl3_Destroy>:
      90:	27bdffe8 	addiu	sp,sp,-24
      94:	00803025 	move	a2,a0
      98:	afbf0014 	sw	ra,20(sp)
      9c:	00a02025 	move	a0,a1
      a0:	0c000000 	jal	0 <func_80B533B0>
      a4:	24c50378 	addiu	a1,a2,888
      a8:	8fbf0014 	lw	ra,20(sp)
      ac:	27bd0018 	addiu	sp,sp,24
      b0:	03e00008 	jr	ra
      b4:	00000000 	nop

000000b8 <func_80B53468>:
      b8:	27bdffe8 	addiu	sp,sp,-24
      bc:	afbf0014 	sw	ra,20(sp)
      c0:	0c000000 	jal	0 <func_80B533B0>
      c4:	24040062 	li	a0,98
      c8:	8fbf0014 	lw	ra,20(sp)
      cc:	27bd0018 	addiu	sp,sp,24
      d0:	03e00008 	jr	ra
      d4:	00000000 	nop

000000d8 <func_80B53488>:
      d8:	8c8303d4 	lw	v1,980(a0)
      dc:	1460000d 	bnez	v1,114 <func_80B53488+0x3c>
      e0:	00000000 	nop
      e4:	8ca21c7c 	lw	v0,7292(a1)
      e8:	2405017a 	li	a1,378
      ec:	10400009 	beqz	v0,114 <func_80B53488+0x3c>
      f0:	00000000 	nop
      f4:	844e0000 	lh	t6,0(v0)
      f8:	54ae0004 	bnel	a1,t6,10c <func_80B53488+0x34>
      fc:	8c420124 	lw	v0,292(v0)
     100:	03e00008 	jr	ra
     104:	ac8203d4 	sw	v0,980(a0)
     108:	8c420124 	lw	v0,292(v0)
     10c:	5440fffa 	bnezl	v0,f8 <func_80B53488+0x20>
     110:	844e0000 	lh	t6,0(v0)
     114:	03e00008 	jr	ra
     118:	00601025 	move	v0,v1

0000011c <func_80B534CC>:
     11c:	27bdffc8 	addiu	sp,sp,-56
     120:	afbf0014 	sw	ra,20(sp)
     124:	848e0246 	lh	t6,582(a0)
     128:	00803025 	move	a2,a0
     12c:	24c30246 	addiu	v1,a2,582
     130:	15c00003 	bnez	t6,140 <func_80B534CC+0x24>
     134:	00001025 	move	v0,zero
     138:	10000005 	b	150 <func_80B534CC+0x34>
     13c:	24830246 	addiu	v1,a0,582
     140:	846f0000 	lh	t7,0(v1)
     144:	25f8ffff 	addiu	t8,t7,-1
     148:	a4780000 	sh	t8,0(v1)
     14c:	84620000 	lh	v0,0(v1)
     150:	14400008 	bnez	v0,174 <func_80B534CC+0x58>
     154:	2404003c 	li	a0,60
     158:	2405003c 	li	a1,60
     15c:	afa3001c 	sw	v1,28(sp)
     160:	0c000000 	jal	0 <func_80B533B0>
     164:	afa60038 	sw	a2,56(sp)
     168:	8fa3001c 	lw	v1,28(sp)
     16c:	8fa60038 	lw	a2,56(sp)
     170:	a4620000 	sh	v0,0(v1)
     174:	84790000 	lh	t9,0(v1)
     178:	24c20244 	addiu	v0,a2,580
     17c:	a4590000 	sh	t9,0(v0)
     180:	84480000 	lh	t0,0(v0)
     184:	29010003 	slti	at,t0,3
     188:	54200003 	bnezl	at,198 <func_80B534CC+0x7c>
     18c:	8fbf0014 	lw	ra,20(sp)
     190:	a4400000 	sh	zero,0(v0)
     194:	8fbf0014 	lw	ra,20(sp)
     198:	27bd0038 	addiu	sp,sp,56
     19c:	03e00008 	jr	ra
     1a0:	00000000 	nop

000001a4 <func_80B53554>:
     1a4:	afa50004 	sw	a1,4(sp)
     1a8:	00052c00 	sll	a1,a1,0x10
     1ac:	00052c03 	sra	a1,a1,0x10
     1b0:	03e00008 	jr	ra
     1b4:	a4850244 	sh	a1,580(a0)

000001b8 <func_80B53568>:
     1b8:	afa50004 	sw	a1,4(sp)
     1bc:	00052c00 	sll	a1,a1,0x10
     1c0:	00052c03 	sra	a1,a1,0x10
     1c4:	03e00008 	jr	ra
     1c8:	a4850248 	sh	a1,584(a0)

000001cc <func_80B5357C>:
     1cc:	27bdffd0 	addiu	sp,sp,-48
     1d0:	afbf0014 	sw	ra,20(sp)
     1d4:	afa40030 	sw	a0,48(sp)
     1d8:	0c000000 	jal	0 <func_80B533B0>
     1dc:	afa50034 	sw	a1,52(sp)
     1e0:	3c013f00 	lui	at,0x3f00
     1e4:	44812000 	mtc1	at,$f4
     1e8:	3c014120 	lui	at,0x4120
     1ec:	44814000 	mtc1	at,$f8
     1f0:	46040181 	sub.s	$f6,$f0,$f4
     1f4:	8fa20030 	lw	v0,48(sp)
     1f8:	46083282 	mul.s	$f10,$f6,$f8
     1fc:	c4500024 	lwc1	$f16,36(v0)
     200:	24420024 	addiu	v0,v0,36
     204:	46105480 	add.s	$f18,$f10,$f16
     208:	e7b20020 	swc1	$f18,32(sp)
     20c:	c4440004 	lwc1	$f4,4(v0)
     210:	afa2001c 	sw	v0,28(sp)
     214:	0c000000 	jal	0 <func_80B533B0>
     218:	e7a40024 	swc1	$f4,36(sp)
     21c:	3c013f00 	lui	at,0x3f00
     220:	44813000 	mtc1	at,$f6
     224:	3c014120 	lui	at,0x4120
     228:	44815000 	mtc1	at,$f10
     22c:	46060201 	sub.s	$f8,$f0,$f6
     230:	8fa2001c 	lw	v0,28(sp)
     234:	8fa40034 	lw	a0,52(sp)
     238:	27a50020 	addiu	a1,sp,32
     23c:	460a4402 	mul.s	$f16,$f8,$f10
     240:	c4520008 	lwc1	$f18,8(v0)
     244:	24060003 	li	a2,3
     248:	46128100 	add.s	$f4,$f16,$f18
     24c:	0c000000 	jal	0 <func_80B533B0>
     250:	e7a40028 	swc1	$f4,40(sp)
     254:	8fbf0014 	lw	ra,20(sp)
     258:	27bd0030 	addiu	sp,sp,48
     25c:	03e00008 	jr	ra
     260:	00000000 	nop

00000264 <func_80B53614>:
     264:	27bdffd0 	addiu	sp,sp,-48
     268:	3c010000 	lui	at,0x0
     26c:	c4240000 	lwc1	$f4,0(at)
     270:	3c010000 	lui	at,0x0
     274:	c4260000 	lwc1	$f6,0(at)
     278:	afbf002c 	sw	ra,44(sp)
     27c:	afa40030 	sw	a0,48(sp)
     280:	240e0012 	li	t6,18
     284:	afae0024 	sw	t6,36(sp)
     288:	24a41c24 	addiu	a0,a1,7204
     28c:	afa00018 	sw	zero,24(sp)
     290:	afa0001c 	sw	zero,28(sp)
     294:	afa00020 	sw	zero,32(sp)
     298:	2406003b 	li	a2,59
     29c:	3c07c3dd 	lui	a3,0xc3dd
     2a0:	e7a40010 	swc1	$f4,16(sp)
     2a4:	0c000000 	jal	0 <func_80B533B0>
     2a8:	e7a60014 	swc1	$f6,20(sp)
     2ac:	8fbf002c 	lw	ra,44(sp)
     2b0:	27bd0030 	addiu	sp,sp,48
     2b4:	03e00008 	jr	ra
     2b8:	00000000 	nop

000002bc <func_80B5366C>:
     2bc:	27bdffe0 	addiu	sp,sp,-32
     2c0:	3c0141f0 	lui	at,0x41f0
     2c4:	44810000 	mtc1	at,$f0
     2c8:	afa50024 	sw	a1,36(sp)
     2cc:	00802825 	move	a1,a0
     2d0:	afbf001c 	sw	ra,28(sp)
     2d4:	afa40020 	sw	a0,32(sp)
     2d8:	240e0005 	li	t6,5
     2dc:	44070000 	mfc1	a3,$f0
     2e0:	afae0014 	sw	t6,20(sp)
     2e4:	8fa40024 	lw	a0,36(sp)
     2e8:	3c064296 	lui	a2,0x4296
     2ec:	0c000000 	jal	0 <func_80B533B0>
     2f0:	e7a00010 	swc1	$f0,16(sp)
     2f4:	8fbf001c 	lw	ra,28(sp)
     2f8:	27bd0020 	addiu	sp,sp,32
     2fc:	03e00008 	jr	ra
     300:	00000000 	nop

00000304 <func_80B536B4>:
     304:	948e0088 	lhu	t6,136(a0)
     308:	31cffff6 	andi	t7,t6,0xfff6
     30c:	03e00008 	jr	ra
     310:	a48f0088 	sh	t7,136(a0)

00000314 <func_80B536C4>:
     314:	27bdffc8 	addiu	sp,sp,-56
     318:	afa40038 	sw	a0,56(sp)
     31c:	afbf001c 	sw	ra,28(sp)
     320:	24840400 	addiu	a0,a0,1024
     324:	240e0064 	li	t6,100
     328:	afae0010 	sw	t6,16(sp)
     32c:	afa40024 	sw	a0,36(sp)
     330:	00002825 	move	a1,zero
     334:	24060014 	li	a2,20
     338:	0c000000 	jal	0 <func_80B533B0>
     33c:	24071838 	li	a3,6200
     340:	8fa40024 	lw	a0,36(sp)
     344:	240f0064 	li	t7,100
     348:	afaf0010 	sw	t7,16(sp)
     34c:	00002825 	move	a1,zero
     350:	24060014 	li	a2,20
     354:	24071838 	li	a3,6200
     358:	0c000000 	jal	0 <func_80B533B0>
     35c:	24840002 	addiu	a0,a0,2
     360:	8fa40038 	lw	a0,56(sp)
     364:	24180064 	li	t8,100
     368:	afb80010 	sw	t8,16(sp)
     36c:	24840406 	addiu	a0,a0,1030
     370:	afa40024 	sw	a0,36(sp)
     374:	00002825 	move	a1,zero
     378:	24060014 	li	a2,20
     37c:	0c000000 	jal	0 <func_80B533B0>
     380:	24071838 	li	a3,6200
     384:	8fa40024 	lw	a0,36(sp)
     388:	24190064 	li	t9,100
     38c:	afb90010 	sw	t9,16(sp)
     390:	00002825 	move	a1,zero
     394:	24060014 	li	a2,20
     398:	24071838 	li	a3,6200
     39c:	0c000000 	jal	0 <func_80B533B0>
     3a0:	24840002 	addiu	a0,a0,2
     3a4:	8fbf001c 	lw	ra,28(sp)
     3a8:	27bd0038 	addiu	sp,sp,56
     3ac:	03e00008 	jr	ra
     3b0:	00000000 	nop

000003b4 <func_80B53764>:
     3b4:	27bdffe8 	addiu	sp,sp,-24
     3b8:	afbf0014 	sw	ra,20(sp)
     3bc:	afa5001c 	sw	a1,28(sp)
     3c0:	8ca21c44 	lw	v0,7236(a1)
     3c4:	3c030000 	lui	v1,0x0
     3c8:	24630000 	addiu	v1,v1,0
     3cc:	8c580024 	lw	t8,36(v0)
     3d0:	3c014180 	lui	at,0x4180
     3d4:	44814000 	mtc1	at,$f8
     3d8:	ac980410 	sw	t8,1040(a0)
     3dc:	8c4f0028 	lw	t7,40(v0)
     3e0:	248503f8 	addiu	a1,a0,1016
     3e4:	24070002 	li	a3,2
     3e8:	ac8f0414 	sw	t7,1044(a0)
     3ec:	8c58002c 	lw	t8,44(v0)
     3f0:	ac980418 	sw	t8,1048(a0)
     3f4:	8c790000 	lw	t9,0(v1)
     3f8:	87281474 	lh	t0,5236(t9)
     3fc:	44882000 	mtc1	t0,$f4
     400:	00000000 	nop
     404:	468021a0 	cvt.s.w	$f6,$f4
     408:	46083281 	sub.s	$f10,$f6,$f8
     40c:	e48a040c 	swc1	$f10,1036(a0)
     410:	8c690000 	lw	t1,0(v1)
     414:	85261476 	lh	a2,5238(t1)
     418:	24c6000c 	addiu	a2,a2,12
     41c:	00063400 	sll	a2,a2,0x10
     420:	0c000000 	jal	0 <func_80B533B0>
     424:	00063403 	sra	a2,a2,0x10
     428:	8fbf0014 	lw	ra,20(sp)
     42c:	27bd0018 	addiu	sp,sp,24
     430:	03e00008 	jr	ra
     434:	00000000 	nop

00000438 <func_80B537E8>:
     438:	27bdffb0 	addiu	sp,sp,-80
     43c:	afbf002c 	sw	ra,44(sp)
     440:	afb20028 	sw	s2,40(sp)
     444:	afb10024 	sw	s1,36(sp)
     448:	afb00020 	sw	s0,32(sp)
     44c:	8491008a 	lh	s1,138(a0)
     450:	848e0032 	lh	t6,50(a0)
     454:	00809025 	move	s2,a0
     458:	24060005 	li	a2,5
     45c:	022e7823 	subu	t7,s1,t6
     460:	000fc400 	sll	t8,t7,0x10
     464:	0018cc03 	sra	t9,t8,0x10
     468:	07200007 	bltz	t9,488 <func_80B537E8+0x50>
     46c:	24071838 	li	a3,6200
     470:	24900032 	addiu	s0,a0,50
     474:	86080000 	lh	t0,0(s0)
     478:	02281023 	subu	v0,s1,t0
     47c:	00021400 	sll	v0,v0,0x10
     480:	10000007 	b	4a0 <func_80B537E8+0x68>
     484:	00021403 	sra	v0,v0,0x10
     488:	26500032 	addiu	s0,s2,50
     48c:	86090000 	lh	t1,0(s0)
     490:	02291023 	subu	v0,s1,t1
     494:	00021400 	sll	v0,v0,0x10
     498:	00021403 	sra	v0,v0,0x10
     49c:	00021023 	negu	v0,v0
     4a0:	264403d0 	addiu	a0,s2,976
     4a4:	00022c00 	sll	a1,v0,0x10
     4a8:	240a0064 	li	t2,100
     4ac:	afaa0010 	sw	t2,16(sp)
     4b0:	00052c03 	sra	a1,a1,0x10
     4b4:	0c000000 	jal	0 <func_80B533B0>
     4b8:	afa40030 	sw	a0,48(sp)
     4bc:	8fab0030 	lw	t3,48(sp)
     4c0:	00112c00 	sll	a1,s1,0x10
     4c4:	240c0064 	li	t4,100
     4c8:	85670000 	lh	a3,0(t3)
     4cc:	afac0010 	sw	t4,16(sp)
     4d0:	00052c03 	sra	a1,a1,0x10
     4d4:	02002025 	move	a0,s0
     4d8:	0c000000 	jal	0 <func_80B533B0>
     4dc:	24060005 	li	a2,5
     4e0:	860d0000 	lh	t5,0(s0)
     4e4:	a64d00b6 	sh	t5,182(s2)
     4e8:	8fbf002c 	lw	ra,44(sp)
     4ec:	8fb20028 	lw	s2,40(sp)
     4f0:	8fb10024 	lw	s1,36(sp)
     4f4:	8fb00020 	lw	s0,32(sp)
     4f8:	03e00008 	jr	ra
     4fc:	27bd0050 	addiu	sp,sp,80

00000500 <func_80B538B0>:
     500:	27bdffe8 	addiu	sp,sp,-24
     504:	afbf0014 	sw	ra,20(sp)
     508:	8482008a 	lh	v0,138(a0)
     50c:	848e0032 	lh	t6,50(a0)
     510:	240a0001 	li	t2,1
     514:	3c0b0000 	lui	t3,0x0
     518:	004e7823 	subu	t7,v0,t6
     51c:	000fc400 	sll	t8,t7,0x10
     520:	0018cc03 	sra	t9,t8,0x10
     524:	07220007 	bltzl	t9,544 <func_80B538B0+0x44>
     528:	84890032 	lh	t1,50(a0)
     52c:	84880032 	lh	t0,50(a0)
     530:	00481823 	subu	v1,v0,t0
     534:	00031c00 	sll	v1,v1,0x10
     538:	10000006 	b	554 <func_80B538B0+0x54>
     53c:	00031c03 	sra	v1,v1,0x10
     540:	84890032 	lh	t1,50(a0)
     544:	00491823 	subu	v1,v0,t1
     548:	00031c00 	sll	v1,v1,0x10
     54c:	00031c03 	sra	v1,v1,0x10
     550:	00031823 	negu	v1,v1
     554:	28611556 	slti	at,v1,5462
     558:	14200002 	bnez	at,564 <func_80B538B0+0x64>
     55c:	3c010000 	lui	at,0x0
     560:	ac2a0000 	sw	t2,0(at)
     564:	8d6b0000 	lw	t3,0(t3)
     568:	51600008 	beqzl	t3,58c <func_80B538B0+0x8c>
     56c:	a48003d0 	sh	zero,976(a0)
     570:	0c000000 	jal	0 <func_80B533B0>
     574:	00000000 	nop
     578:	14400004 	bnez	v0,58c <func_80B538B0+0x8c>
     57c:	3c010000 	lui	at,0x0
     580:	10000002 	b	58c <func_80B538B0+0x8c>
     584:	ac200000 	sw	zero,0(at)
     588:	a48003d0 	sh	zero,976(a0)
     58c:	8fbf0014 	lw	ra,20(sp)
     590:	27bd0018 	addiu	sp,sp,24
     594:	03e00008 	jr	ra
     598:	00000000 	nop

0000059c <func_80B5394C>:
     59c:	27bdffe8 	addiu	sp,sp,-24
     5a0:	afbf0014 	sw	ra,20(sp)
     5a4:	0c000000 	jal	0 <func_80B533B0>
     5a8:	2484014c 	addiu	a0,a0,332
     5ac:	8fbf0014 	lw	ra,20(sp)
     5b0:	27bd0018 	addiu	sp,sp,24
     5b4:	03e00008 	jr	ra
     5b8:	00000000 	nop

000005bc <func_80B5396C>:
     5bc:	03e00008 	jr	ra
     5c0:	908203c8 	lbu	v0,968(a0)

000005c4 <func_80B53974>:
     5c4:	afa50004 	sw	a1,4(sp)
     5c8:	03e00008 	jr	ra
     5cc:	a08503c8 	sb	a1,968(a0)

000005d0 <func_80B53980>:
     5d0:	afa50004 	sw	a1,4(sp)
     5d4:	8c8e02fc 	lw	t6,764(a0)
     5d8:	00052c00 	sll	a1,a1,0x10
     5dc:	00052c03 	sra	a1,a1,0x10
     5e0:	11c00070 	beqz	t6,7a4 <func_80B53980+0x1d4>
     5e4:	8c82024c 	lw	v0,588(a0)
     5e8:	00067840 	sll	t7,a2,0x1
     5ec:	008f4821 	addu	t1,a0,t7
     5f0:	853902bc 	lh	t9,700(t1)
     5f4:	8538028c 	lh	t8,652(t1)
     5f8:	852a025c 	lh	t2,604(t1)
     5fc:	00b94023 	subu	t0,a1,t9
     600:	44882000 	mtc1	t0,$f4
     604:	34018001 	li	at,0x8001
     608:	03053821 	addu	a3,t8,a1
     60c:	46802020 	cvt.s.w	$f0,$f4
     610:	00073c00 	sll	a3,a3,0x10
     614:	00073c03 	sra	a3,a3,0x10
     618:	01401825 	move	v1,t2
     61c:	46000005 	abs.s	$f0,$f0
     620:	4600018d 	trunc.w.s	$f6,$f0
     624:	440c3000 	mfc1	t4,$f6
     628:	00000000 	nop
     62c:	0181082a 	slt	at,t4,at
     630:	14200007 	bnez	at,650 <func_80B53980+0x80>
     634:	00000000 	nop
     638:	18a00004 	blez	a1,64c <func_80B53980+0x7c>
     63c:	3c010001 	lui	at,0x1
     640:	3c01ffff 	lui	at,0xffff
     644:	10000002 	b	650 <func_80B53980+0x80>
     648:	01014021 	addu	t0,t0,at
     64c:	01014021 	addu	t0,t0,at
     650:	14c00003 	bnez	a2,660 <func_80B53980+0x90>
     654:	24010004 	li	at,4
     658:	10410008 	beq	v0,at,67c <func_80B53980+0xac>
     65c:	00000000 	nop
     660:	11000006 	beqz	t0,67c <func_80B53980+0xac>
     664:	01036823 	subu	t5,t0,v1
     668:	05a10003 	bgez	t5,678 <func_80B53980+0xa8>
     66c:	000d7103 	sra	t6,t5,0x4
     670:	25a1000f 	addiu	at,t5,15
     674:	00017103 	sra	t6,at,0x4
     678:	006e1821 	addu	v1,v1,t6
     67c:	10600006 	beqz	v1,698 <func_80B53980+0xc8>
     680:	00e54023 	subu	t0,a3,a1
     684:	2401000a 	li	at,10
     688:	0061001a 	div	zero,v1,at
     68c:	00007812 	mflo	t7
     690:	006f1823 	subu	v1,v1,t7
     694:	00000000 	nop
     698:	00084400 	sll	t0,t0,0x10
     69c:	00084403 	sra	t0,t0,0x10
     6a0:	11000005 	beqz	t0,6b8 <func_80B53980+0xe8>
     6a4:	24010032 	li	at,50
     6a8:	0101001a 	div	zero,t0,at
     6ac:	0000c012 	mflo	t8
     6b0:	00781823 	subu	v1,v1,t8
     6b4:	00000000 	nop
     6b8:	01430019 	multu	t2,v1
     6bc:	00e33821 	addu	a3,a3,v1
     6c0:	00e54023 	subu	t0,a3,a1
     6c4:	00084400 	sll	t0,t0,0x10
     6c8:	00084403 	sra	t0,t0,0x10
     6cc:	2901ff9d 	slti	at,t0,-99
     6d0:	0000c812 	mflo	t9
     6d4:	1f200007 	bgtz	t9,6f4 <func_80B53980+0x124>
     6d8:	00000000 	nop
     6dc:	14200005 	bnez	at,6f4 <func_80B53980+0x124>
     6e0:	29010064 	slti	at,t0,100
     6e4:	10200003 	beqz	at,6f4 <func_80B53980+0x124>
     6e8:	00000000 	nop
     6ec:	00a03825 	move	a3,a1
     6f0:	00001825 	move	v1,zero
     6f4:	14c00028 	bnez	a2,798 <func_80B53980+0x1c8>
     6f8:	24010003 	li	at,3
     6fc:	14410026 	bne	v0,at,798 <func_80B53980+0x1c8>
     700:	2488014c 	addiu	t0,a0,332
     704:	910b0001 	lbu	t3,1(t0)
     708:	24010002 	li	at,2
     70c:	24a2d508 	addiu	v0,a1,-11000
     710:	55610018 	bnel	t3,at,774 <func_80B53980+0x1a4>
     714:	00e2082a 	slt	at,a3,v0
     718:	c5000018 	lwc1	$f0,24(t0)
     71c:	c48203dc 	lwc1	$f2,988(a0)
     720:	3c010000 	lui	at,0x0
     724:	c42a0000 	lwc1	$f10,0(at)
     728:	46020203 	div.s	$f8,$f0,$f2
     72c:	460a4402 	mul.s	$f16,$f8,$f10
     730:	4600848d 	trunc.w.s	$f18,$f16
     734:	440d9000 	mfc1	t5,$f18
     738:	00000000 	nop
     73c:	01a51021 	addu	v0,t5,a1
     740:	00e2082a 	slt	at,a3,v0
     744:	54200015 	bnezl	at,79c <func_80B53980+0x1cc>
     748:	00e57023 	subu	t6,a3,a1
     74c:	18600012 	blez	v1,798 <func_80B53980+0x1c8>
     750:	00403825 	move	a3,v0
     754:	04610002 	bgez	v1,760 <func_80B53980+0x190>
     758:	00600821 	move	at,v1
     75c:	24610001 	addiu	at,v1,1
     760:	00011843 	sra	v1,at,0x1
     764:	00031823 	negu	v1,v1
     768:	1000000c 	b	79c <func_80B53980+0x1cc>
     76c:	00e57023 	subu	t6,a3,a1
     770:	00e2082a 	slt	at,a3,v0
     774:	54200009 	bnezl	at,79c <func_80B53980+0x1cc>
     778:	00e57023 	subu	t6,a3,a1
     77c:	18600006 	blez	v1,798 <func_80B53980+0x1c8>
     780:	00403825 	move	a3,v0
     784:	04610002 	bgez	v1,790 <func_80B53980+0x1c0>
     788:	00600821 	move	at,v1
     78c:	24610001 	addiu	at,v1,1
     790:	00011843 	sra	v1,at,0x1
     794:	00031823 	negu	v1,v1
     798:	00e57023 	subu	t6,a3,a1
     79c:	a523025c 	sh	v1,604(t1)
     7a0:	a52e028c 	sh	t6,652(t1)
     7a4:	00067840 	sll	t7,a2,0x1
     7a8:	008fc021 	addu	t8,a0,t7
     7ac:	03e00008 	jr	ra
     7b0:	a70502bc 	sh	a1,700(t8)

000007b4 <func_80B53B64>:
     7b4:	afa40000 	sw	a0,0(sp)
     7b8:	afa50004 	sw	a1,4(sp)
     7bc:	24080002 	li	t0,2
     7c0:	14c80005 	bne	a2,t0,7d8 <func_80B53B64+0x24>
     7c4:	8c87024c 	lw	a3,588(a0)
     7c8:	24053a98 	li	a1,15000
     7cc:	00006025 	move	t4,zero
     7d0:	1000001c 	b	844 <func_80B53B64+0x90>
     7d4:	240b0005 	li	t3,5
     7d8:	240b0005 	li	t3,5
     7dc:	14cb0004 	bne	a2,t3,7f0 <func_80B53B64+0x3c>
     7e0:	24010008 	li	at,8
     7e4:	240532c8 	li	a1,13000
     7e8:	10000016 	b	844 <func_80B53B64+0x90>
     7ec:	240c0003 	li	t4,3
     7f0:	14c10003 	bne	a2,at,800 <func_80B53B64+0x4c>
     7f4:	24052ee0 	li	a1,12000
     7f8:	10000012 	b	844 <func_80B53B64+0x90>
     7fc:	240c0006 	li	t4,6
     800:	2401000b 	li	at,11
     804:	14c10003 	bne	a2,at,814 <func_80B53B64+0x60>
     808:	24054000 	li	a1,16384
     80c:	1000000d 	b	844 <func_80B53B64+0x90>
     810:	240c0009 	li	t4,9
     814:	2401000e 	li	at,14
     818:	14c10003 	bne	a2,at,828 <func_80B53B64+0x74>
     81c:	24054000 	li	a1,16384
     820:	10000008 	b	844 <func_80B53B64+0x90>
     824:	240c000c 	li	t4,12
     828:	24010011 	li	at,17
     82c:	14c10004 	bne	a2,at,840 <func_80B53B64+0x8c>
     830:	24054000 	li	a1,16384
     834:	24054000 	li	a1,16384
     838:	10000002 	b	844 <func_80B53B64+0x90>
     83c:	240c000f 	li	t4,15
     840:	240c0012 	li	t4,18
     844:	8faf0000 	lw	t7,0(sp)
     848:	0006c840 	sll	t9,a2,0x1
     84c:	8df802fc 	lw	t8,764(t7)
     850:	01f95021 	addu	t2,t7,t9
     854:	530001d1 	beqzl	t8,f9c <func_80B53B64+0x7e8>
     858:	8fae0000 	lw	t6,0(sp)
     85c:	87b80006 	lh	t8,6(sp)
     860:	854f02bc 	lh	t7,700(t2)
     864:	854e028c 	lh	t6,652(t2)
     868:	8549025c 	lh	t1,604(t2)
     86c:	030f1823 	subu	v1,t8,t7
     870:	44832000 	mtc1	v1,$f4
     874:	01d82021 	addu	a0,t6,t8
     878:	8faf0000 	lw	t7,0(sp)
     87c:	46802020 	cvt.s.w	$f0,$f4
     880:	34018001 	li	at,0x8001
     884:	00042400 	sll	a0,a0,0x10
     888:	000cc840 	sll	t9,t4,0x1
     88c:	00042403 	sra	a0,a0,0x10
     890:	01201025 	move	v0,t1
     894:	46000005 	abs.s	$f0,$f0
     898:	4600018d 	trunc.w.s	$f6,$f0
     89c:	440e3000 	mfc1	t6,$f6
     8a0:	00000000 	nop
     8a4:	01c1082a 	slt	at,t6,at
     8a8:	14200007 	bnez	at,8c8 <func_80B53B64+0x114>
     8ac:	01f97021 	addu	t6,t7,t9
     8b0:	1b000004 	blez	t8,8c4 <func_80B53B64+0x110>
     8b4:	3c010001 	lui	at,0x1
     8b8:	3c01ffff 	lui	at,0xffff
     8bc:	10000002 	b	8c8 <func_80B53B64+0x114>
     8c0:	00611821 	addu	v1,v1,at
     8c4:	00611821 	addu	v1,v1,at
     8c8:	0580000a 	bltz	t4,8f4 <func_80B53B64+0x140>
     8cc:	24010003 	li	at,3
     8d0:	85cd025c 	lh	t5,604(t6)
     8d4:	05a00003 	bltz	t5,8e4 <func_80B53B64+0x130>
     8d8:	000d6023 	negu	t4,t5
     8dc:	10000001 	b	8e4 <func_80B53B64+0x130>
     8e0:	01a06025 	move	t4,t5
     8e4:	0181001a 	div	zero,t4,at
     8e8:	0000c012 	mflo	t8
     8ec:	00781821 	addu	v1,v1,t8
     8f0:	00000000 	nop
     8f4:	14c8000d 	bne	a2,t0,92c <func_80B53B64+0x178>
     8f8:	00000000 	nop
     8fc:	10eb0003 	beq	a3,t3,90c <func_80B53B64+0x158>
     900:	24010018 	li	at,24
     904:	14e10009 	bne	a3,at,92c <func_80B53B64+0x178>
     908:	00000000 	nop
     90c:	1060002f 	beqz	v1,9cc <func_80B53B64+0x218>
     910:	00627823 	subu	t7,v1,v0
     914:	2401000a 	li	at,10
     918:	01e1001a 	div	zero,t7,at
     91c:	0000c812 	mflo	t9
     920:	00591023 	subu	v0,v0,t9
     924:	10000029 	b	9cc <func_80B53B64+0x218>
     928:	00000000 	nop
     92c:	14c8000e 	bne	a2,t0,968 <func_80B53B64+0x1b4>
     930:	24010016 	li	at,22
     934:	14e1000c 	bne	a3,at,968 <func_80B53B64+0x1b4>
     938:	8fae0000 	lw	t6,0(sp)
     93c:	91d8014d 	lbu	t8,333(t6)
     940:	15180009 	bne	t0,t8,968 <func_80B53B64+0x1b4>
     944:	00000000 	nop
     948:	10600020 	beqz	v1,9cc <func_80B53B64+0x218>
     94c:	00627823 	subu	t7,v1,v0
     950:	2401000a 	li	at,10
     954:	01e1001a 	div	zero,t7,at
     958:	0000c812 	mflo	t9
     95c:	00591023 	subu	v0,v0,t9
     960:	1000001a 	b	9cc <func_80B53B64+0x218>
     964:	00000000 	nop
     968:	14c80011 	bne	a2,t0,9b0 <func_80B53B64+0x1fc>
     96c:	24010014 	li	at,20
     970:	10e10004 	beq	a3,at,984 <func_80B53B64+0x1d0>
     974:	8fae0000 	lw	t6,0(sp)
     978:	24010015 	li	at,21
     97c:	14e1000c 	bne	a3,at,9b0 <func_80B53B64+0x1fc>
     980:	00000000 	nop
     984:	91d8014d 	lbu	t8,333(t6)
     988:	15180009 	bne	t0,t8,9b0 <func_80B53B64+0x1fc>
     98c:	00000000 	nop
     990:	1060000e 	beqz	v1,9cc <func_80B53B64+0x218>
     994:	00627823 	subu	t7,v1,v0
     998:	2401000a 	li	at,10
     99c:	01e1001a 	div	zero,t7,at
     9a0:	0000c812 	mflo	t9
     9a4:	00591023 	subu	v0,v0,t9
     9a8:	10000008 	b	9cc <func_80B53B64+0x218>
     9ac:	00000000 	nop
     9b0:	10600006 	beqz	v1,9cc <func_80B53B64+0x218>
     9b4:	00627023 	subu	t6,v1,v0
     9b8:	05c10003 	bgez	t6,9c8 <func_80B53B64+0x214>
     9bc:	000ec103 	sra	t8,t6,0x4
     9c0:	25c1000f 	addiu	at,t6,15
     9c4:	0001c103 	sra	t8,at,0x4
     9c8:	00581021 	addu	v0,v0,t8
     9cc:	10400006 	beqz	v0,9e8 <func_80B53B64+0x234>
     9d0:	00851823 	subu	v1,a0,a1
     9d4:	2401000a 	li	at,10
     9d8:	0041001a 	div	zero,v0,at
     9dc:	00007812 	mflo	t7
     9e0:	004f1023 	subu	v0,v0,t7
     9e4:	00000000 	nop
     9e8:	00031c00 	sll	v1,v1,0x10
     9ec:	00031c03 	sra	v1,v1,0x10
     9f0:	10600005 	beqz	v1,a08 <func_80B53B64+0x254>
     9f4:	24010032 	li	at,50
     9f8:	0061001a 	div	zero,v1,at
     9fc:	0000c812 	mflo	t9
     a00:	00591023 	subu	v0,v0,t9
     a04:	00000000 	nop
     a08:	01220019 	multu	t1,v0
     a0c:	00822021 	addu	a0,a0,v0
     a10:	00851823 	subu	v1,a0,a1
     a14:	00031c00 	sll	v1,v1,0x10
     a18:	00031c03 	sra	v1,v1,0x10
     a1c:	2861ff9d 	slti	at,v1,-99
     a20:	00007012 	mflo	t6
     a24:	1dc00007 	bgtz	t6,a44 <func_80B53B64+0x290>
     a28:	00000000 	nop
     a2c:	14200005 	bnez	at,a44 <func_80B53B64+0x290>
     a30:	28610064 	slti	at,v1,100
     a34:	10200003 	beqz	at,a44 <func_80B53B64+0x290>
     a38:	00000000 	nop
     a3c:	00a02025 	move	a0,a1
     a40:	00001025 	move	v0,zero
     a44:	14c80108 	bne	a2,t0,e68 <func_80B53B64+0x6b4>
     a48:	2401000b 	li	at,11
     a4c:	24010004 	li	at,4
     a50:	14e1001c 	bne	a3,at,ac4 <func_80B53B64+0x310>
     a54:	8fb80000 	lw	t8,0(sp)
     a58:	2703014c 	addiu	v1,t8,332
     a5c:	906f0001 	lbu	t7,1(v1)
     a60:	550f014a 	bnel	t0,t7,f8c <func_80B53B64+0x7d8>
     a64:	a542025c 	sh	v0,604(t2)
     a68:	c4600018 	lwc1	$f0,24(v1)
     a6c:	c70203e0 	lwc1	$f2,992(t8)
     a70:	3c01c4fa 	lui	at,0xc4fa
     a74:	44818000 	mtc1	at,$f16
     a78:	46001201 	sub.s	$f8,$f2,$f0
     a7c:	46024283 	div.s	$f10,$f8,$f2
     a80:	46105482 	mul.s	$f18,$f10,$f16
     a84:	4600910d 	trunc.w.s	$f4,$f18
     a88:	440e2000 	mfc1	t6,$f4
     a8c:	00000000 	nop
     a90:	01c53821 	addu	a3,t6,a1
     a94:	00e4082a 	slt	at,a3,a0
     a98:	5420013c 	bnezl	at,f8c <func_80B53B64+0x7d8>
     a9c:	a542025c 	sh	v0,604(t2)
     aa0:	04410139 	bgez	v0,f88 <func_80B53B64+0x7d4>
     aa4:	00e02025 	move	a0,a3
     aa8:	04410002 	bgez	v0,ab4 <func_80B53B64+0x300>
     aac:	00400821 	move	at,v0
     ab0:	24410001 	addiu	at,v0,1
     ab4:	00011043 	sra	v0,at,0x1
     ab8:	00021023 	negu	v0,v0
     abc:	10000133 	b	f8c <func_80B53B64+0x7d8>
     ac0:	a542025c 	sh	v0,604(t2)
     ac4:	14eb0029 	bne	a3,t3,b6c <func_80B53B64+0x3b8>
     ac8:	24010014 	li	at,20
     acc:	8faf0000 	lw	t7,0(sp)
     ad0:	25e3014c 	addiu	v1,t7,332
     ad4:	90780001 	lbu	t8,1(v1)
     ad8:	55180018 	bnel	t0,t8,b3c <func_80B53B64+0x388>
     adc:	24a3f830 	addiu	v1,a1,-2000
     ae0:	c4600018 	lwc1	$f0,24(v1)
     ae4:	c5e203e4 	lwc1	$f2,996(t7)
     ae8:	3c01c4fa 	lui	at,0xc4fa
     aec:	44814000 	mtc1	at,$f8
     af0:	46020183 	div.s	$f6,$f0,$f2
     af4:	46083282 	mul.s	$f10,$f6,$f8
     af8:	4600540d 	trunc.w.s	$f16,$f10
     afc:	440e8000 	mfc1	t6,$f16
     b00:	00000000 	nop
     b04:	01c53821 	addu	a3,t6,a1
     b08:	00e4082a 	slt	at,a3,a0
     b0c:	5420011f 	bnezl	at,f8c <func_80B53B64+0x7d8>
     b10:	a542025c 	sh	v0,604(t2)
     b14:	0441011c 	bgez	v0,f88 <func_80B53B64+0x7d4>
     b18:	00e02025 	move	a0,a3
     b1c:	04410002 	bgez	v0,b28 <func_80B53B64+0x374>
     b20:	00400821 	move	at,v0
     b24:	24410001 	addiu	at,v0,1
     b28:	00011043 	sra	v0,at,0x1
     b2c:	00021023 	negu	v0,v0
     b30:	10000116 	b	f8c <func_80B53B64+0x7d8>
     b34:	a542025c 	sh	v0,604(t2)
     b38:	24a3f830 	addiu	v1,a1,-2000
     b3c:	0064082a 	slt	at,v1,a0
     b40:	54200112 	bnezl	at,f8c <func_80B53B64+0x7d8>
     b44:	a542025c 	sh	v0,604(t2)
     b48:	0441010f 	bgez	v0,f88 <func_80B53B64+0x7d4>
     b4c:	00602025 	move	a0,v1
     b50:	04410002 	bgez	v0,b5c <func_80B53B64+0x3a8>
     b54:	00400821 	move	at,v0
     b58:	24410001 	addiu	at,v0,1
     b5c:	00011043 	sra	v0,at,0x1
     b60:	00021023 	negu	v0,v0
     b64:	10000109 	b	f8c <func_80B53B64+0x7d8>
     b68:	a542025c 	sh	v0,604(t2)
     b6c:	10e10003 	beq	a3,at,b7c <func_80B53B64+0x3c8>
     b70:	8fb80000 	lw	t8,0(sp)
     b74:	24010015 	li	at,21
     b78:	14e10034 	bne	a3,at,c4c <func_80B53B64+0x498>
     b7c:	2703014c 	addiu	v1,t8,332
     b80:	906f0001 	lbu	t7,1(v1)
     b84:	3c014228 	lui	at,0x4228
     b88:	550f0024 	bnel	t0,t7,c1c <func_80B53B64+0x468>
     b8c:	24a31068 	addiu	v1,a1,4200
     b90:	44816000 	mtc1	at,$f12
     b94:	c4600018 	lwc1	$f0,24(v1)
     b98:	c70203f4 	lwc1	$f2,1012(t8)
     b9c:	3c010000 	lui	at,0x0
     ba0:	460c003e 	c.le.s	$f0,$f12
     ba4:	00000000 	nop
     ba8:	45020004 	bc1fl	bbc <func_80B53B64+0x408>
     bac:	460c0481 	sub.s	$f18,$f0,$f12
     bb0:	1000000d 	b	be8 <func_80B53B64+0x434>
     bb4:	24a3f830 	addiu	v1,a1,-2000
     bb8:	460c0481 	sub.s	$f18,$f0,$f12
     bbc:	c4240000 	lwc1	$f4,0(at)
     bc0:	3c01c4fa 	lui	at,0xc4fa
     bc4:	460c1201 	sub.s	$f8,$f2,$f12
     bc8:	46049182 	mul.s	$f6,$f18,$f4
     bcc:	44818000 	mtc1	at,$f16
     bd0:	46083283 	div.s	$f10,$f6,$f8
     bd4:	46105480 	add.s	$f18,$f10,$f16
     bd8:	4600910d 	trunc.w.s	$f4,$f18
     bdc:	440e2000 	mfc1	t6,$f4
     be0:	00000000 	nop
     be4:	01c51821 	addu	v1,t6,a1
     be8:	0064082a 	slt	at,v1,a0
     bec:	542000e7 	bnezl	at,f8c <func_80B53B64+0x7d8>
     bf0:	a542025c 	sh	v0,604(t2)
     bf4:	044100e4 	bgez	v0,f88 <func_80B53B64+0x7d4>
     bf8:	00602025 	move	a0,v1
     bfc:	04410002 	bgez	v0,c08 <func_80B53B64+0x454>
     c00:	00400821 	move	at,v0
     c04:	24410001 	addiu	at,v0,1
     c08:	00011043 	sra	v0,at,0x1
     c0c:	00021023 	negu	v0,v0
     c10:	100000de 	b	f8c <func_80B53B64+0x7d8>
     c14:	a542025c 	sh	v0,604(t2)
     c18:	24a31068 	addiu	v1,a1,4200
     c1c:	0064082a 	slt	at,v1,a0
     c20:	542000da 	bnezl	at,f8c <func_80B53B64+0x7d8>
     c24:	a542025c 	sh	v0,604(t2)
     c28:	044100d7 	bgez	v0,f88 <func_80B53B64+0x7d4>
     c2c:	00602025 	move	a0,v1
     c30:	04410002 	bgez	v0,c3c <func_80B53B64+0x488>
     c34:	00400821 	move	at,v0
     c38:	24410001 	addiu	at,v0,1
     c3c:	00011043 	sra	v0,at,0x1
     c40:	00021023 	negu	v0,v0
     c44:	100000d1 	b	f8c <func_80B53B64+0x7d8>
     c48:	a542025c 	sh	v0,604(t2)
     c4c:	24010016 	li	at,22
     c50:	14e1002b 	bne	a3,at,d00 <func_80B53B64+0x54c>
     c54:	8faf0000 	lw	t7,0(sp)
     c58:	25e3014c 	addiu	v1,t7,332
     c5c:	90780001 	lbu	t8,1(v1)
     c60:	5518001b 	bnel	t0,t8,cd0 <func_80B53B64+0x51c>
     c64:	24a3f830 	addiu	v1,a1,-2000
     c68:	c4600018 	lwc1	$f0,24(v1)
     c6c:	c5e203ec 	lwc1	$f2,1004(t7)
     c70:	3c010000 	lui	at,0x0
     c74:	c4280000 	lwc1	$f8,0(at)
     c78:	46020183 	div.s	$f6,$f0,$f2
     c7c:	3c010000 	lui	at,0x0
     c80:	c4300000 	lwc1	$f16,0(at)
     c84:	46083282 	mul.s	$f10,$f6,$f8
     c88:	46105480 	add.s	$f18,$f10,$f16
     c8c:	4600910d 	trunc.w.s	$f4,$f18
     c90:	440e2000 	mfc1	t6,$f4
     c94:	00000000 	nop
     c98:	01c53821 	addu	a3,t6,a1
     c9c:	00e4082a 	slt	at,a3,a0
     ca0:	542000ba 	bnezl	at,f8c <func_80B53B64+0x7d8>
     ca4:	a542025c 	sh	v0,604(t2)
     ca8:	044100b7 	bgez	v0,f88 <func_80B53B64+0x7d4>
     cac:	00e02025 	move	a0,a3
     cb0:	04410002 	bgez	v0,cbc <func_80B53B64+0x508>
     cb4:	00400821 	move	at,v0
     cb8:	24410001 	addiu	at,v0,1
     cbc:	00011043 	sra	v0,at,0x1
     cc0:	00021023 	negu	v0,v0
     cc4:	100000b1 	b	f8c <func_80B53B64+0x7d8>
     cc8:	a542025c 	sh	v0,604(t2)
     ccc:	24a3f830 	addiu	v1,a1,-2000
     cd0:	0064082a 	slt	at,v1,a0
     cd4:	542000ad 	bnezl	at,f8c <func_80B53B64+0x7d8>
     cd8:	a542025c 	sh	v0,604(t2)
     cdc:	044100aa 	bgez	v0,f88 <func_80B53B64+0x7d4>
     ce0:	00602025 	move	a0,v1
     ce4:	04410002 	bgez	v0,cf0 <func_80B53B64+0x53c>
     ce8:	00400821 	move	at,v0
     cec:	24410001 	addiu	at,v0,1
     cf0:	00011043 	sra	v0,at,0x1
     cf4:	00021023 	negu	v0,v0
     cf8:	100000a4 	b	f8c <func_80B53B64+0x7d8>
     cfc:	a542025c 	sh	v0,604(t2)
     d00:	24010017 	li	at,23
     d04:	14e1002b 	bne	a3,at,db4 <func_80B53B64+0x600>
     d08:	8fb80000 	lw	t8,0(sp)
     d0c:	2703014c 	addiu	v1,t8,332
     d10:	906f0001 	lbu	t7,1(v1)
     d14:	550f001b 	bnel	t0,t7,d84 <func_80B53B64+0x5d0>
     d18:	24a3da80 	addiu	v1,a1,-9600
     d1c:	c4600018 	lwc1	$f0,24(v1)
     d20:	c70203f0 	lwc1	$f2,1008(t8)
     d24:	3c010000 	lui	at,0x0
     d28:	c4280000 	lwc1	$f8,0(at)
     d2c:	46020183 	div.s	$f6,$f0,$f2
     d30:	3c01c4fa 	lui	at,0xc4fa
     d34:	44818000 	mtc1	at,$f16
     d38:	46083282 	mul.s	$f10,$f6,$f8
     d3c:	46105480 	add.s	$f18,$f10,$f16
     d40:	4600910d 	trunc.w.s	$f4,$f18
     d44:	440e2000 	mfc1	t6,$f4
     d48:	00000000 	nop
     d4c:	01c53821 	addu	a3,t6,a1
     d50:	00e4082a 	slt	at,a3,a0
     d54:	5420008d 	bnezl	at,f8c <func_80B53B64+0x7d8>
     d58:	a542025c 	sh	v0,604(t2)
     d5c:	0441008a 	bgez	v0,f88 <func_80B53B64+0x7d4>
     d60:	00e02025 	move	a0,a3
     d64:	04410002 	bgez	v0,d70 <func_80B53B64+0x5bc>
     d68:	00400821 	move	at,v0
     d6c:	24410001 	addiu	at,v0,1
     d70:	00011043 	sra	v0,at,0x1
     d74:	00021023 	negu	v0,v0
     d78:	10000084 	b	f8c <func_80B53B64+0x7d8>
     d7c:	a542025c 	sh	v0,604(t2)
     d80:	24a3da80 	addiu	v1,a1,-9600
     d84:	0064082a 	slt	at,v1,a0
     d88:	54200080 	bnezl	at,f8c <func_80B53B64+0x7d8>
     d8c:	a542025c 	sh	v0,604(t2)
     d90:	0441007d 	bgez	v0,f88 <func_80B53B64+0x7d4>
     d94:	00602025 	move	a0,v1
     d98:	04410002 	bgez	v0,da4 <func_80B53B64+0x5f0>
     d9c:	00400821 	move	at,v0
     da0:	24410001 	addiu	at,v0,1
     da4:	00011043 	sra	v0,at,0x1
     da8:	00021023 	negu	v0,v0
     dac:	10000077 	b	f8c <func_80B53B64+0x7d8>
     db0:	a542025c 	sh	v0,604(t2)
     db4:	24010018 	li	at,24
     db8:	14e10073 	bne	a3,at,f88 <func_80B53B64+0x7d4>
     dbc:	8faf0000 	lw	t7,0(sp)
     dc0:	25e3014c 	addiu	v1,t7,332
     dc4:	90780001 	lbu	t8,1(v1)
     dc8:	5518001b 	bnel	t0,t8,e38 <func_80B53B64+0x684>
     dcc:	24a32c88 	addiu	v1,a1,11400
     dd0:	c4600018 	lwc1	$f0,24(v1)
     dd4:	c5e203e8 	lwc1	$f2,1000(t7)
     dd8:	3c010000 	lui	at,0x0
     ddc:	c4280000 	lwc1	$f8,0(at)
     de0:	46020183 	div.s	$f6,$f0,$f2
     de4:	3c01c616 	lui	at,0xc616
     de8:	44818000 	mtc1	at,$f16
     dec:	46083282 	mul.s	$f10,$f6,$f8
     df0:	46105480 	add.s	$f18,$f10,$f16
     df4:	4600910d 	trunc.w.s	$f4,$f18
     df8:	440e2000 	mfc1	t6,$f4
     dfc:	00000000 	nop
     e00:	01c53821 	addu	a3,t6,a1
     e04:	00e4082a 	slt	at,a3,a0
     e08:	54200060 	bnezl	at,f8c <func_80B53B64+0x7d8>
     e0c:	a542025c 	sh	v0,604(t2)
     e10:	0441005d 	bgez	v0,f88 <func_80B53B64+0x7d4>
     e14:	00e02025 	move	a0,a3
     e18:	04410002 	bgez	v0,e24 <func_80B53B64+0x670>
     e1c:	00400821 	move	at,v0
     e20:	24410001 	addiu	at,v0,1
     e24:	00011043 	sra	v0,at,0x1
     e28:	00021023 	negu	v0,v0
     e2c:	10000057 	b	f8c <func_80B53B64+0x7d8>
     e30:	a542025c 	sh	v0,604(t2)
     e34:	24a32c88 	addiu	v1,a1,11400
     e38:	0064082a 	slt	at,v1,a0
     e3c:	54200053 	bnezl	at,f8c <func_80B53B64+0x7d8>
     e40:	a542025c 	sh	v0,604(t2)
     e44:	04410050 	bgez	v0,f88 <func_80B53B64+0x7d4>
     e48:	00602025 	move	a0,v1
     e4c:	04410002 	bgez	v0,e58 <func_80B53B64+0x6a4>
     e50:	00400821 	move	at,v0
     e54:	24410001 	addiu	at,v0,1
     e58:	00011043 	sra	v0,at,0x1
     e5c:	00021023 	negu	v0,v0
     e60:	1000004a 	b	f8c <func_80B53B64+0x7d8>
     e64:	a542025c 	sh	v0,604(t2)
     e68:	10c10002 	beq	a2,at,e74 <func_80B53B64+0x6c0>
     e6c:	24010011 	li	at,17
     e70:	14c10045 	bne	a2,at,f88 <func_80B53B64+0x7d4>
     e74:	24010004 	li	at,4
     e78:	14e10028 	bne	a3,at,f1c <func_80B53B64+0x768>
     e7c:	8fb80000 	lw	t8,0(sp)
     e80:	2703014c 	addiu	v1,t8,332
     e84:	906f0001 	lbu	t7,1(v1)
     e88:	550f0018 	bnel	t0,t7,eec <func_80B53B64+0x738>
     e8c:	24a3e4a8 	addiu	v1,a1,-7000
     e90:	c4600018 	lwc1	$f0,24(v1)
     e94:	c70203e0 	lwc1	$f2,992(t8)
     e98:	3c010000 	lui	at,0x0
     e9c:	c4280000 	lwc1	$f8,0(at)
     ea0:	46020183 	div.s	$f6,$f0,$f2
     ea4:	46083282 	mul.s	$f10,$f6,$f8
     ea8:	4600540d 	trunc.w.s	$f16,$f10
     eac:	440e8000 	mfc1	t6,$f16
     eb0:	00000000 	nop
     eb4:	01c53821 	addu	a3,t6,a1
     eb8:	0087082a 	slt	at,a0,a3
     ebc:	54200033 	bnezl	at,f8c <func_80B53B64+0x7d8>
     ec0:	a542025c 	sh	v0,604(t2)
     ec4:	18400030 	blez	v0,f88 <func_80B53B64+0x7d4>
     ec8:	00e02025 	move	a0,a3
     ecc:	04410002 	bgez	v0,ed8 <func_80B53B64+0x724>
     ed0:	00400821 	move	at,v0
     ed4:	24410001 	addiu	at,v0,1
     ed8:	00011043 	sra	v0,at,0x1
     edc:	00021023 	negu	v0,v0
     ee0:	1000002a 	b	f8c <func_80B53B64+0x7d8>
     ee4:	a542025c 	sh	v0,604(t2)
     ee8:	24a3e4a8 	addiu	v1,a1,-7000
     eec:	0083082a 	slt	at,a0,v1
     ef0:	54200026 	bnezl	at,f8c <func_80B53B64+0x7d8>
     ef4:	a542025c 	sh	v0,604(t2)
     ef8:	18400023 	blez	v0,f88 <func_80B53B64+0x7d4>
     efc:	00602025 	move	a0,v1
     f00:	04410002 	bgez	v0,f0c <func_80B53B64+0x758>
     f04:	00400821 	move	at,v0
     f08:	24410001 	addiu	at,v0,1
     f0c:	00011043 	sra	v0,at,0x1
     f10:	00021023 	negu	v0,v0
     f14:	1000001d 	b	f8c <func_80B53B64+0x7d8>
     f18:	a542025c 	sh	v0,604(t2)
     f1c:	14eb001a 	bne	a3,t3,f88 <func_80B53B64+0x7d4>
     f20:	8faf0000 	lw	t7,0(sp)
     f24:	25e3014c 	addiu	v1,t7,332
     f28:	90780001 	lbu	t8,1(v1)
     f2c:	55180017 	bnel	t0,t8,f8c <func_80B53B64+0x7d8>
     f30:	a542025c 	sh	v0,604(t2)
     f34:	c4600018 	lwc1	$f0,24(v1)
     f38:	c5e203e4 	lwc1	$f2,996(t7)
     f3c:	3c010000 	lui	at,0x0
     f40:	c4260000 	lwc1	$f6,0(at)
     f44:	46001481 	sub.s	$f18,$f2,$f0
     f48:	46029103 	div.s	$f4,$f18,$f2
     f4c:	46062202 	mul.s	$f8,$f4,$f6
     f50:	4600428d 	trunc.w.s	$f10,$f8
     f54:	440e5000 	mfc1	t6,$f10
     f58:	00000000 	nop
     f5c:	01c53821 	addu	a3,t6,a1
     f60:	0087082a 	slt	at,a0,a3
     f64:	54200009 	bnezl	at,f8c <func_80B53B64+0x7d8>
     f68:	a542025c 	sh	v0,604(t2)
     f6c:	18400006 	blez	v0,f88 <func_80B53B64+0x7d4>
     f70:	00e02025 	move	a0,a3
     f74:	04410002 	bgez	v0,f80 <func_80B53B64+0x7cc>
     f78:	00400821 	move	at,v0
     f7c:	24410001 	addiu	at,v0,1
     f80:	00011043 	sra	v0,at,0x1
     f84:	00021023 	negu	v0,v0
     f88:	a542025c 	sh	v0,604(t2)
     f8c:	87b80006 	lh	t8,6(sp)
     f90:	00987823 	subu	t7,a0,t8
     f94:	a54f028c 	sh	t7,652(t2)
     f98:	8fae0000 	lw	t6,0(sp)
     f9c:	87b90006 	lh	t9,6(sp)
     fa0:	0006c040 	sll	t8,a2,0x1
     fa4:	01d87821 	addu	t7,t6,t8
     fa8:	03e00008 	jr	ra
     fac:	a5f902bc 	sh	t9,700(t7)

00000fb0 <func_80B54360>:
     fb0:	afa50004 	sw	a1,4(sp)
     fb4:	8c8e02fc 	lw	t6,764(a0)
     fb8:	00053c00 	sll	a3,a1,0x10
     fbc:	00073c03 	sra	a3,a3,0x10
     fc0:	11c00082 	beqz	t6,11cc <func_80B54360+0x21c>
     fc4:	00067840 	sll	t7,a2,0x1
     fc8:	008f2821 	addu	a1,a0,t7
     fcc:	84b8028c 	lh	t8,652(a1)
     fd0:	84a9025c 	lh	t1,604(a1)
     fd4:	84b902bc 	lh	t9,700(a1)
     fd8:	03071823 	subu	v1,t8,a3
     fdc:	00034400 	sll	t0,v1,0x10
     fe0:	00084403 	sra	t0,t0,0x10
     fe4:	24010001 	li	at,1
     fe8:	01005025 	move	t2,t0
     fec:	01201025 	move	v0,t1
     ff0:	14c10004 	bne	a2,at,1004 <func_80B54360+0x54>
     ff4:	00f95823 	subu	t3,a3,t9
     ff8:	00006025 	move	t4,zero
     ffc:	1000003b 	b	10ec <func_80B54360+0x13c>
    1000:	848d025c 	lh	t5,604(a0)
    1004:	24010004 	li	at,4
    1008:	14c10003 	bne	a2,at,1018 <func_80B54360+0x68>
    100c:	240c0003 	li	t4,3
    1010:	10000036 	b	10ec <func_80B54360+0x13c>
    1014:	848d0262 	lh	t5,610(a0)
    1018:	24010007 	li	at,7
    101c:	14c10003 	bne	a2,at,102c <func_80B54360+0x7c>
    1020:	240c0006 	li	t4,6
    1024:	10000031 	b	10ec <func_80B54360+0x13c>
    1028:	848d0268 	lh	t5,616(a0)
    102c:	2401000a 	li	at,10
    1030:	54c1000b 	bnel	a2,at,1060 <func_80B54360+0xb0>
    1034:	2401000d 	li	at,13
    1038:	848e026e 	lh	t6,622(a0)
    103c:	240c0009 	li	t4,9
    1040:	05c20004 	bltzl	t6,1054 <func_80B54360+0xa4>
    1044:	848d026e 	lh	t5,622(a0)
    1048:	10000028 	b	10ec <func_80B54360+0x13c>
    104c:	848d026e 	lh	t5,622(a0)
    1050:	848d026e 	lh	t5,622(a0)
    1054:	10000025 	b	10ec <func_80B54360+0x13c>
    1058:	000d6823 	negu	t5,t5
    105c:	2401000d 	li	at,13
    1060:	54c1000b 	bnel	a2,at,1090 <func_80B54360+0xe0>
    1064:	24010010 	li	at,16
    1068:	848f0274 	lh	t7,628(a0)
    106c:	240c000c 	li	t4,12
    1070:	05e20004 	bltzl	t7,1084 <func_80B54360+0xd4>
    1074:	848d0274 	lh	t5,628(a0)
    1078:	1000001c 	b	10ec <func_80B54360+0x13c>
    107c:	848d0274 	lh	t5,628(a0)
    1080:	848d0274 	lh	t5,628(a0)
    1084:	10000019 	b	10ec <func_80B54360+0x13c>
    1088:	000d6823 	negu	t5,t5
    108c:	24010010 	li	at,16
    1090:	54c1000d 	bnel	a2,at,10c8 <func_80B54360+0x118>
    1094:	84990280 	lh	t9,640(a0)
    1098:	8498027a 	lh	t8,634(a0)
    109c:	240c000f 	li	t4,15
    10a0:	07020005 	bltzl	t8,10b8 <func_80B54360+0x108>
    10a4:	848d027a 	lh	t5,634(a0)
    10a8:	848d027a 	lh	t5,634(a0)
    10ac:	1000000f 	b	10ec <func_80B54360+0x13c>
    10b0:	000d6823 	negu	t5,t5
    10b4:	848d027a 	lh	t5,634(a0)
    10b8:	000d6823 	negu	t5,t5
    10bc:	1000000b 	b	10ec <func_80B54360+0x13c>
    10c0:	000d6823 	negu	t5,t5
    10c4:	84990280 	lh	t9,640(a0)
    10c8:	240c0012 	li	t4,18
    10cc:	07220005 	bltzl	t9,10e4 <func_80B54360+0x134>
    10d0:	848d0280 	lh	t5,640(a0)
    10d4:	848d0280 	lh	t5,640(a0)
    10d8:	10000004 	b	10ec <func_80B54360+0x13c>
    10dc:	000d6823 	negu	t5,t5
    10e0:	848d0280 	lh	t5,640(a0)
    10e4:	000d6823 	negu	t5,t5
    10e8:	000d6823 	negu	t5,t5
    10ec:	448b2000 	mtc1	t3,$f4
    10f0:	34018001 	li	at,0x8001
    10f4:	46802020 	cvt.s.w	$f0,$f4
    10f8:	46000005 	abs.s	$f0,$f0
    10fc:	4600018d 	trunc.w.s	$f6,$f0
    1100:	440f3000 	mfc1	t7,$f6
    1104:	00000000 	nop
    1108:	01e1082a 	slt	at,t7,at
    110c:	14200007 	bnez	at,112c <func_80B54360+0x17c>
    1110:	00000000 	nop
    1114:	18e00004 	blez	a3,1128 <func_80B54360+0x178>
    1118:	3c010001 	lui	at,0x1
    111c:	3c01ffff 	lui	at,0xffff
    1120:	10000002 	b	112c <func_80B54360+0x17c>
    1124:	01615821 	addu	t3,t3,at
    1128:	01615821 	addu	t3,t3,at
    112c:	05800005 	bltz	t4,1144 <func_80B54360+0x194>
    1130:	24010003 	li	at,3
    1134:	01a1001a 	div	zero,t5,at
    1138:	0000c012 	mflo	t8
    113c:	01785821 	addu	t3,t3,t8
    1140:	00000000 	nop
    1144:	11600006 	beqz	t3,1160 <func_80B54360+0x1b0>
    1148:	0162c823 	subu	t9,t3,v0
    114c:	07210003 	bgez	t9,115c <func_80B54360+0x1ac>
    1150:	00197103 	sra	t6,t9,0x4
    1154:	2721000f 	addiu	at,t9,15
    1158:	00017103 	sra	t6,at,0x4
    115c:	004e1021 	addu	v0,v0,t6
    1160:	10400005 	beqz	v0,1178 <func_80B54360+0x1c8>
    1164:	2401000a 	li	at,10
    1168:	0041001a 	div	zero,v0,at
    116c:	00007812 	mflo	t7
    1170:	004f1023 	subu	v0,v0,t7
    1174:	00000000 	nop
    1178:	11000005 	beqz	t0,1190 <func_80B54360+0x1e0>
    117c:	24010032 	li	at,50
    1180:	0101001a 	div	zero,t0,at
    1184:	0000c012 	mflo	t8
    1188:	00581023 	subu	v0,v0,t8
    118c:	00000000 	nop
    1190:	01220019 	multu	t1,v0
    1194:	00621821 	addu	v1,v1,v0
    1198:	2941ff9d 	slti	at,t2,-99
    119c:	0000c812 	mflo	t9
    11a0:	5f200008 	bgtzl	t9,11c4 <func_80B54360+0x214>
    11a4:	00e37021 	addu	t6,a3,v1
    11a8:	14200005 	bnez	at,11c0 <func_80B54360+0x210>
    11ac:	29410064 	slti	at,t2,100
    11b0:	50200004 	beqzl	at,11c4 <func_80B54360+0x214>
    11b4:	00e37021 	addu	t6,a3,v1
    11b8:	00001825 	move	v1,zero
    11bc:	00001025 	move	v0,zero
    11c0:	00e37021 	addu	t6,a3,v1
    11c4:	a4a2025c 	sh	v0,604(a1)
    11c8:	a4ae028c 	sh	t6,652(a1)
    11cc:	00067840 	sll	t7,a2,0x1
    11d0:	008fc021 	addu	t8,a0,t7
    11d4:	03e00008 	jr	ra
    11d8:	a70702bc 	sh	a3,700(t8)

000011dc <func_80B5458C>:
    11dc:	27bdff70 	addiu	sp,sp,-144
    11e0:	2401000e 	li	at,14
    11e4:	afbf0014 	sw	ra,20(sp)
    11e8:	afa40090 	sw	a0,144(sp)
    11ec:	afa60098 	sw	a2,152(sp)
    11f0:	14a101bf 	bne	a1,at,18f0 <func_80B5458C+0x714>
    11f4:	afa7009c 	sw	a3,156(sp)
    11f8:	8c840000 	lw	a0,0(a0)
    11fc:	0c000000 	jal	0 <func_80B533B0>
    1200:	240501c0 	li	a1,448
    1204:	8fa800a0 	lw	t0,160(sp)
    1208:	8fa300a4 	lw	v1,164(sp)
    120c:	afa20078 	sw	v0,120(sp)
    1210:	850f0000 	lh	t7,0(t0)
    1214:	84780402 	lh	t8,1026(v1)
    1218:	850a0004 	lh	t2,4(t0)
    121c:	3c0edb06 	lui	t6,0xdb06
    1220:	01f8c821 	addu	t9,t7,t8
    1224:	a5190000 	sh	t9,0(t0)
    1228:	846b0400 	lh	t3,1024(v1)
    122c:	35ce0030 	ori	t6,t6,0x30
    1230:	24630400 	addiu	v1,v1,1024
    1234:	014b6021 	addu	t4,t2,t3
    1238:	a50c0004 	sh	t4,4(t0)
    123c:	8fa500a8 	lw	a1,168(sp)
    1240:	8ca40000 	lw	a0,0(a1)
    1244:	248d0008 	addiu	t5,a0,8
    1248:	acad0000 	sw	t5,0(a1)
    124c:	ac820004 	sw	v0,4(a0)
    1250:	0c000000 	jal	0 <func_80B533B0>
    1254:	ac8e0000 	sw	t6,0(a0)
    1258:	8fa9009c 	lw	t1,156(sp)
    125c:	24070001 	li	a3,1
    1260:	c52c0000 	lwc1	$f12,0(t1)
    1264:	c52e0004 	lwc1	$f14,4(t1)
    1268:	0c000000 	jal	0 <func_80B533B0>
    126c:	8d260008 	lw	a2,8(t1)
    1270:	8fa800a0 	lw	t0,160(sp)
    1274:	24070001 	li	a3,1
    1278:	85040000 	lh	a0,0(t0)
    127c:	85050002 	lh	a1,2(t0)
    1280:	0c000000 	jal	0 <func_80B533B0>
    1284:	85060004 	lh	a2,4(t0)
    1288:	0c000000 	jal	0 <func_80B533B0>
    128c:	00000000 	nop
    1290:	3c0143b5 	lui	at,0x43b5
    1294:	44816000 	mtc1	at,$f12
    1298:	3c01c305 	lui	at,0xc305
    129c:	44817000 	mtc1	at,$f14
    12a0:	24060000 	li	a2,0
    12a4:	0c000000 	jal	0 <func_80B533B0>
    12a8:	24070001 	li	a3,1
    12ac:	0c000000 	jal	0 <func_80B533B0>
    12b0:	27a40038 	addiu	a0,sp,56
    12b4:	27a40038 	addiu	a0,sp,56
    12b8:	27a50030 	addiu	a1,sp,48
    12bc:	0c000000 	jal	0 <func_80B533B0>
    12c0:	00003025 	move	a2,zero
    12c4:	0c000000 	jal	0 <func_80B533B0>
    12c8:	8fa40090 	lw	a0,144(sp)
    12cc:	1440000d 	bnez	v0,1304 <func_80B5458C+0x128>
    12d0:	00000000 	nop
    12d4:	8fa400a4 	lw	a0,164(sp)
    12d8:	87a50032 	lh	a1,50(sp)
    12dc:	0c000000 	jal	0 <func_80B533B0>
    12e0:	00003025 	move	a2,zero
    12e4:	8fa400a4 	lw	a0,164(sp)
    12e8:	87a50030 	lh	a1,48(sp)
    12ec:	0c000000 	jal	0 <func_80B533B0>
    12f0:	24060001 	li	a2,1
    12f4:	8fa400a4 	lw	a0,164(sp)
    12f8:	87a50034 	lh	a1,52(sp)
    12fc:	0c000000 	jal	0 <func_80B533B0>
    1300:	24060002 	li	a2,2
    1304:	3c020000 	lui	v0,0x0
    1308:	8c420000 	lw	v0,0(v0)
    130c:	8fa300a4 	lw	v1,164(sp)
    1310:	24070001 	li	a3,1
    1314:	844f1492 	lh	t7,5266(v0)
    1318:	84591494 	lh	t9,5268(v0)
    131c:	844b1496 	lh	t3,5270(v0)
    1320:	846c0290 	lh	t4,656(v1)
    1324:	846a028e 	lh	t2,654(v1)
    1328:	8478028c 	lh	t8,652(v1)
    132c:	016c3021 	addu	a2,t3,t4
    1330:	032a2821 	addu	a1,t9,t2
    1334:	01f82021 	addu	a0,t7,t8
    1338:	00042400 	sll	a0,a0,0x10
    133c:	00052c00 	sll	a1,a1,0x10
    1340:	00063400 	sll	a2,a2,0x10
    1344:	2463028c 	addiu	v1,v1,652
    1348:	afa30020 	sw	v1,32(sp)
    134c:	00063403 	sra	a2,a2,0x10
    1350:	00052c03 	sra	a1,a1,0x10
    1354:	0c000000 	jal	0 <func_80B533B0>
    1358:	00042403 	sra	a0,a0,0x10
    135c:	3c01c33c 	lui	at,0xc33c
    1360:	44816000 	mtc1	at,$f12
    1364:	3c01c338 	lui	at,0xc338
    1368:	44817000 	mtc1	at,$f14
    136c:	24060000 	li	a2,0
    1370:	0c000000 	jal	0 <func_80B533B0>
    1374:	24070001 	li	a3,1
    1378:	3c050000 	lui	a1,0x0
    137c:	24a50000 	addiu	a1,a1,0
    1380:	8fa40078 	lw	a0,120(sp)
    1384:	0c000000 	jal	0 <func_80B533B0>
    1388:	240605d2 	li	a2,1490
    138c:	0c000000 	jal	0 <func_80B533B0>
    1390:	27a40038 	addiu	a0,sp,56
    1394:	27a40038 	addiu	a0,sp,56
    1398:	27a50030 	addiu	a1,sp,48
    139c:	0c000000 	jal	0 <func_80B533B0>
    13a0:	00003025 	move	a2,zero
    13a4:	0c000000 	jal	0 <func_80B533B0>
    13a8:	8fa40090 	lw	a0,144(sp)
    13ac:	14400005 	bnez	v0,13c4 <func_80B5458C+0x1e8>
    13b0:	00000000 	nop
    13b4:	8fa400a4 	lw	a0,164(sp)
    13b8:	87a50032 	lh	a1,50(sp)
    13bc:	0c000000 	jal	0 <func_80B533B0>
    13c0:	24060003 	li	a2,3
    13c4:	3c020000 	lui	v0,0x0
    13c8:	8fa30020 	lw	v1,32(sp)
    13cc:	8c420000 	lw	v0,0(v0)
    13d0:	24070001 	li	a3,1
    13d4:	846e0006 	lh	t6,6(v1)
    13d8:	84780008 	lh	t8,8(v1)
    13dc:	846a000a 	lh	t2,10(v1)
    13e0:	844d1498 	lh	t5,5272(v0)
    13e4:	844f149a 	lh	t7,5274(v0)
    13e8:	8459149c 	lh	t9,5276(v0)
    13ec:	01ae2021 	addu	a0,t5,t6
    13f0:	01f82821 	addu	a1,t7,t8
    13f4:	032a3021 	addu	a2,t9,t2
    13f8:	00063400 	sll	a2,a2,0x10
    13fc:	00052c00 	sll	a1,a1,0x10
    1400:	00042400 	sll	a0,a0,0x10
    1404:	00042403 	sra	a0,a0,0x10
    1408:	00052c03 	sra	a1,a1,0x10
    140c:	0c000000 	jal	0 <func_80B533B0>
    1410:	00063403 	sra	a2,a2,0x10
    1414:	3c01c3cd 	lui	at,0xc3cd
    1418:	44816000 	mtc1	at,$f12
    141c:	3c01c338 	lui	at,0xc338
    1420:	44817000 	mtc1	at,$f14
    1424:	24060000 	li	a2,0
    1428:	0c000000 	jal	0 <func_80B533B0>
    142c:	24070001 	li	a3,1
    1430:	8fa40078 	lw	a0,120(sp)
    1434:	3c050000 	lui	a1,0x0
    1438:	24a50000 	addiu	a1,a1,0
    143c:	240605fe 	li	a2,1534
    1440:	0c000000 	jal	0 <func_80B533B0>
    1444:	24840040 	addiu	a0,a0,64
    1448:	0c000000 	jal	0 <func_80B533B0>
    144c:	27a40038 	addiu	a0,sp,56
    1450:	27a40038 	addiu	a0,sp,56
    1454:	27a50030 	addiu	a1,sp,48
    1458:	0c000000 	jal	0 <func_80B533B0>
    145c:	00003025 	move	a2,zero
    1460:	0c000000 	jal	0 <func_80B533B0>
    1464:	8fa40090 	lw	a0,144(sp)
    1468:	14400005 	bnez	v0,1480 <func_80B5458C+0x2a4>
    146c:	00000000 	nop
    1470:	8fa400a4 	lw	a0,164(sp)
    1474:	87a50030 	lh	a1,48(sp)
    1478:	0c000000 	jal	0 <func_80B533B0>
    147c:	24060007 	li	a2,7
    1480:	3c020000 	lui	v0,0x0
    1484:	8fa30020 	lw	v1,32(sp)
    1488:	8c420000 	lw	v0,0(v0)
    148c:	24070001 	li	a3,1
    1490:	846c000c 	lh	t4,12(v1)
    1494:	846e000e 	lh	t6,14(v1)
    1498:	84780010 	lh	t8,16(v1)
    149c:	844b149e 	lh	t3,5278(v0)
    14a0:	844d14a0 	lh	t5,5280(v0)
    14a4:	844f14a2 	lh	t7,5282(v0)
    14a8:	016c2021 	addu	a0,t3,t4
    14ac:	01ae2821 	addu	a1,t5,t6
    14b0:	01f83021 	addu	a2,t7,t8
    14b4:	00063400 	sll	a2,a2,0x10
    14b8:	00052c00 	sll	a1,a1,0x10
    14bc:	00042400 	sll	a0,a0,0x10
    14c0:	00042403 	sra	a0,a0,0x10
    14c4:	00052c03 	sra	a1,a1,0x10
    14c8:	0c000000 	jal	0 <func_80B533B0>
    14cc:	00063403 	sra	a2,a2,0x10
    14d0:	3c010000 	lui	at,0x0
    14d4:	c42c0000 	lwc1	$f12,0(at)
    14d8:	3c01c1d0 	lui	at,0xc1d0
    14dc:	44817000 	mtc1	at,$f14
    14e0:	24060000 	li	a2,0
    14e4:	0c000000 	jal	0 <func_80B533B0>
    14e8:	24070001 	li	a3,1
    14ec:	8fa40078 	lw	a0,120(sp)
    14f0:	3c050000 	lui	a1,0x0
    14f4:	24a50000 	addiu	a1,a1,0
    14f8:	24060612 	li	a2,1554
    14fc:	0c000000 	jal	0 <func_80B533B0>
    1500:	24840080 	addiu	a0,a0,128
    1504:	0c000000 	jal	0 <func_80B533B0>
    1508:	00000000 	nop
    150c:	0c000000 	jal	0 <func_80B533B0>
    1510:	00000000 	nop
    1514:	3c010000 	lui	at,0x0
    1518:	c42c0000 	lwc1	$f12,0(at)
    151c:	3c010000 	lui	at,0x0
    1520:	3c0643c2 	lui	a2,0x43c2
    1524:	34c68000 	ori	a2,a2,0x8000
    1528:	c42e0000 	lwc1	$f14,0(at)
    152c:	0c000000 	jal	0 <func_80B533B0>
    1530:	24070001 	li	a3,1
    1534:	0c000000 	jal	0 <func_80B533B0>
    1538:	27a40038 	addiu	a0,sp,56
    153c:	27a40038 	addiu	a0,sp,56
    1540:	27a50030 	addiu	a1,sp,48
    1544:	0c000000 	jal	0 <func_80B533B0>
    1548:	00003025 	move	a2,zero
    154c:	0c000000 	jal	0 <func_80B533B0>
    1550:	8fa40090 	lw	a0,144(sp)
    1554:	1440000d 	bnez	v0,158c <func_80B5458C+0x3b0>
    1558:	00000000 	nop
    155c:	8fa400a4 	lw	a0,164(sp)
    1560:	87a50032 	lh	a1,50(sp)
    1564:	0c000000 	jal	0 <func_80B533B0>
    1568:	24060009 	li	a2,9
    156c:	8fa400a4 	lw	a0,164(sp)
    1570:	87a50030 	lh	a1,48(sp)
    1574:	0c000000 	jal	0 <func_80B533B0>
    1578:	2406000a 	li	a2,10
    157c:	8fa400a4 	lw	a0,164(sp)
    1580:	87a50034 	lh	a1,52(sp)
    1584:	0c000000 	jal	0 <func_80B533B0>
    1588:	2406000b 	li	a2,11
    158c:	3c020000 	lui	v0,0x0
    1590:	8fa30020 	lw	v1,32(sp)
    1594:	8c420000 	lw	v0,0(v0)
    1598:	24070001 	li	a3,1
    159c:	846a0012 	lh	t2,18(v1)
    15a0:	846c0014 	lh	t4,20(v1)
    15a4:	846e0016 	lh	t6,22(v1)
    15a8:	845914a4 	lh	t9,5284(v0)
    15ac:	844b14a6 	lh	t3,5286(v0)
    15b0:	844d14a8 	lh	t5,5288(v0)
    15b4:	032a2021 	addu	a0,t9,t2
    15b8:	016c2821 	addu	a1,t3,t4
    15bc:	01ae3021 	addu	a2,t5,t6
    15c0:	00063400 	sll	a2,a2,0x10
    15c4:	00052c00 	sll	a1,a1,0x10
    15c8:	00042400 	sll	a0,a0,0x10
    15cc:	00042403 	sra	a0,a0,0x10
    15d0:	00052c03 	sra	a1,a1,0x10
    15d4:	0c000000 	jal	0 <func_80B533B0>
    15d8:	00063403 	sra	a2,a2,0x10
    15dc:	3c010000 	lui	at,0x0
    15e0:	c42c0000 	lwc1	$f12,0(at)
    15e4:	3c01bf80 	lui	at,0xbf80
    15e8:	44817000 	mtc1	at,$f14
    15ec:	3c06c040 	lui	a2,0xc040
    15f0:	0c000000 	jal	0 <func_80B533B0>
    15f4:	24070001 	li	a3,1
    15f8:	8fa40078 	lw	a0,120(sp)
    15fc:	3c050000 	lui	a1,0x0
    1600:	24a50000 	addiu	a1,a1,0
    1604:	2406062b 	li	a2,1579
    1608:	0c000000 	jal	0 <func_80B533B0>
    160c:	248400c0 	addiu	a0,a0,192
    1610:	0c000000 	jal	0 <func_80B533B0>
    1614:	27a40038 	addiu	a0,sp,56
    1618:	27a40038 	addiu	a0,sp,56
    161c:	27a50030 	addiu	a1,sp,48
    1620:	0c000000 	jal	0 <func_80B533B0>
    1624:	00003025 	move	a2,zero
    1628:	0c000000 	jal	0 <func_80B533B0>
    162c:	8fa40090 	lw	a0,144(sp)
    1630:	1440000d 	bnez	v0,1668 <func_80B5458C+0x48c>
    1634:	00000000 	nop
    1638:	8fa400a4 	lw	a0,164(sp)
    163c:	87a50032 	lh	a1,50(sp)
    1640:	0c000000 	jal	0 <func_80B533B0>
    1644:	2406000c 	li	a2,12
    1648:	8fa400a4 	lw	a0,164(sp)
    164c:	87a50030 	lh	a1,48(sp)
    1650:	0c000000 	jal	0 <func_80B533B0>
    1654:	2406000d 	li	a2,13
    1658:	8fa400a4 	lw	a0,164(sp)
    165c:	87a50034 	lh	a1,52(sp)
    1660:	0c000000 	jal	0 <func_80B533B0>
    1664:	2406000e 	li	a2,14
    1668:	3c020000 	lui	v0,0x0
    166c:	8fa30020 	lw	v1,32(sp)
    1670:	8c420000 	lw	v0,0(v0)
    1674:	24070001 	li	a3,1
    1678:	84780018 	lh	t8,24(v1)
    167c:	846a001a 	lh	t2,26(v1)
    1680:	846c001c 	lh	t4,28(v1)
    1684:	844f14aa 	lh	t7,5290(v0)
    1688:	845914ac 	lh	t9,5292(v0)
    168c:	844b14ae 	lh	t3,5294(v0)
    1690:	01f82021 	addu	a0,t7,t8
    1694:	032a2821 	addu	a1,t9,t2
    1698:	016c3021 	addu	a2,t3,t4
    169c:	00063400 	sll	a2,a2,0x10
    16a0:	00052c00 	sll	a1,a1,0x10
    16a4:	00042400 	sll	a0,a0,0x10
    16a8:	00042403 	sra	a0,a0,0x10
    16ac:	00052c03 	sra	a1,a1,0x10
    16b0:	0c000000 	jal	0 <func_80B533B0>
    16b4:	00063403 	sra	a2,a2,0x10
    16b8:	3c01c3df 	lui	at,0xc3df
    16bc:	44816000 	mtc1	at,$f12
    16c0:	3c01c250 	lui	at,0xc250
    16c4:	44817000 	mtc1	at,$f14
    16c8:	3c0642a8 	lui	a2,0x42a8
    16cc:	0c000000 	jal	0 <func_80B533B0>
    16d0:	24070001 	li	a3,1
    16d4:	8fa40078 	lw	a0,120(sp)
    16d8:	3c050000 	lui	a1,0x0
    16dc:	24a50000 	addiu	a1,a1,0
    16e0:	2406063e 	li	a2,1598
    16e4:	0c000000 	jal	0 <func_80B533B0>
    16e8:	24840100 	addiu	a0,a0,256
    16ec:	0c000000 	jal	0 <func_80B533B0>
    16f0:	00000000 	nop
    16f4:	0c000000 	jal	0 <func_80B533B0>
    16f8:	00000000 	nop
    16fc:	3c010000 	lui	at,0x0
    1700:	c42c0000 	lwc1	$f12,0(at)
    1704:	3c010000 	lui	at,0x0
    1708:	3c06c3c2 	lui	a2,0xc3c2
    170c:	34c68000 	ori	a2,a2,0x8000
    1710:	c42e0000 	lwc1	$f14,0(at)
    1714:	0c000000 	jal	0 <func_80B533B0>
    1718:	24070001 	li	a3,1
    171c:	0c000000 	jal	0 <func_80B533B0>
    1720:	27a40038 	addiu	a0,sp,56
    1724:	27a40038 	addiu	a0,sp,56
    1728:	27a50030 	addiu	a1,sp,48
    172c:	0c000000 	jal	0 <func_80B533B0>
    1730:	00003025 	move	a2,zero
    1734:	0c000000 	jal	0 <func_80B533B0>
    1738:	8fa40090 	lw	a0,144(sp)
    173c:	1440000d 	bnez	v0,1774 <func_80B5458C+0x598>
    1740:	00000000 	nop
    1744:	8fa400a4 	lw	a0,164(sp)
    1748:	87a50032 	lh	a1,50(sp)
    174c:	0c000000 	jal	0 <func_80B533B0>
    1750:	2406000f 	li	a2,15
    1754:	8fa400a4 	lw	a0,164(sp)
    1758:	87a50030 	lh	a1,48(sp)
    175c:	0c000000 	jal	0 <func_80B533B0>
    1760:	24060010 	li	a2,16
    1764:	8fa400a4 	lw	a0,164(sp)
    1768:	87a50034 	lh	a1,52(sp)
    176c:	0c000000 	jal	0 <func_80B533B0>
    1770:	24060011 	li	a2,17
    1774:	3c020000 	lui	v0,0x0
    1778:	8fa30020 	lw	v1,32(sp)
    177c:	8c420000 	lw	v0,0(v0)
    1780:	24070001 	li	a3,1
    1784:	846e001e 	lh	t6,30(v1)
    1788:	84780020 	lh	t8,32(v1)
    178c:	846a0022 	lh	t2,34(v1)
    1790:	844d14b0 	lh	t5,5296(v0)
    1794:	844f14b2 	lh	t7,5298(v0)
    1798:	845914b4 	lh	t9,5300(v0)
    179c:	01ae2021 	addu	a0,t5,t6
    17a0:	01f82821 	addu	a1,t7,t8
    17a4:	032a3021 	addu	a2,t9,t2
    17a8:	00063400 	sll	a2,a2,0x10
    17ac:	00052c00 	sll	a1,a1,0x10
    17b0:	00042400 	sll	a0,a0,0x10
    17b4:	00042403 	sra	a0,a0,0x10
    17b8:	00052c03 	sra	a1,a1,0x10
    17bc:	0c000000 	jal	0 <func_80B533B0>
    17c0:	00063403 	sra	a2,a2,0x10
    17c4:	3c010000 	lui	at,0x0
    17c8:	c42c0000 	lwc1	$f12,0(at)
    17cc:	3c01bf80 	lui	at,0xbf80
    17d0:	44817000 	mtc1	at,$f14
    17d4:	3c064040 	lui	a2,0x4040
    17d8:	0c000000 	jal	0 <func_80B533B0>
    17dc:	24070001 	li	a3,1
    17e0:	8fa40078 	lw	a0,120(sp)
    17e4:	3c050000 	lui	a1,0x0
    17e8:	24a50000 	addiu	a1,a1,0
    17ec:	24060657 	li	a2,1623
    17f0:	0c000000 	jal	0 <func_80B533B0>
    17f4:	24840140 	addiu	a0,a0,320
    17f8:	0c000000 	jal	0 <func_80B533B0>
    17fc:	27a40038 	addiu	a0,sp,56
    1800:	27a40038 	addiu	a0,sp,56
    1804:	27a50030 	addiu	a1,sp,48
    1808:	0c000000 	jal	0 <func_80B533B0>
    180c:	00003025 	move	a2,zero
    1810:	0c000000 	jal	0 <func_80B533B0>
    1814:	8fa40090 	lw	a0,144(sp)
    1818:	1440000c 	bnez	v0,184c <func_80B5458C+0x670>
    181c:	8fa400a4 	lw	a0,164(sp)
    1820:	87a50032 	lh	a1,50(sp)
    1824:	0c000000 	jal	0 <func_80B533B0>
    1828:	24060012 	li	a2,18
    182c:	8fa400a4 	lw	a0,164(sp)
    1830:	87a50030 	lh	a1,48(sp)
    1834:	0c000000 	jal	0 <func_80B533B0>
    1838:	24060013 	li	a2,19
    183c:	8fa400a4 	lw	a0,164(sp)
    1840:	87a50034 	lh	a1,52(sp)
    1844:	0c000000 	jal	0 <func_80B533B0>
    1848:	24060014 	li	a2,20
    184c:	3c020000 	lui	v0,0x0
    1850:	8c420000 	lw	v0,0(v0)
    1854:	8fac0020 	lw	t4,32(sp)
    1858:	24070001 	li	a3,1
    185c:	844b14b6 	lh	t3,5302(v0)
    1860:	844e14b8 	lh	t6,5304(v0)
    1864:	845814ba 	lh	t8,5306(v0)
    1868:	858d0024 	lh	t5,36(t4)
    186c:	858f0026 	lh	t7,38(t4)
    1870:	85990028 	lh	t9,40(t4)
    1874:	016d2021 	addu	a0,t3,t5
    1878:	01cf2821 	addu	a1,t6,t7
    187c:	03193021 	addu	a2,t8,t9
    1880:	00063400 	sll	a2,a2,0x10
    1884:	00052c00 	sll	a1,a1,0x10
    1888:	00042400 	sll	a0,a0,0x10
    188c:	00042403 	sra	a0,a0,0x10
    1890:	00052c03 	sra	a1,a1,0x10
    1894:	0c000000 	jal	0 <func_80B533B0>
    1898:	00063403 	sra	a2,a2,0x10
    189c:	3c01c3df 	lui	at,0xc3df
    18a0:	44816000 	mtc1	at,$f12
    18a4:	3c01c250 	lui	at,0xc250
    18a8:	44817000 	mtc1	at,$f14
    18ac:	3c06c2a8 	lui	a2,0xc2a8
    18b0:	0c000000 	jal	0 <func_80B533B0>
    18b4:	24070001 	li	a3,1
    18b8:	8fa40078 	lw	a0,120(sp)
    18bc:	3c050000 	lui	a1,0x0
    18c0:	24a50000 	addiu	a1,a1,0
    18c4:	2406066a 	li	a2,1642
    18c8:	0c000000 	jal	0 <func_80B533B0>
    18cc:	24840180 	addiu	a0,a0,384
    18d0:	0c000000 	jal	0 <func_80B533B0>
    18d4:	00000000 	nop
    18d8:	0c000000 	jal	0 <func_80B533B0>
    18dc:	00000000 	nop
    18e0:	8fab00a4 	lw	t3,164(sp)
    18e4:	240a0001 	li	t2,1
    18e8:	1000000e 	b	1924 <func_80B5458C+0x748>
    18ec:	ad6a02fc 	sw	t2,764(t3)
    18f0:	24010007 	li	at,7
    18f4:	14a1000b 	bne	a1,at,1924 <func_80B5458C+0x748>
    18f8:	8fa800a0 	lw	t0,160(sp)
    18fc:	8fa200a4 	lw	v0,164(sp)
    1900:	850d0000 	lh	t5,0(t0)
    1904:	850c0002 	lh	t4,2(t0)
    1908:	844e0408 	lh	t6,1032(v0)
    190c:	24420406 	addiu	v0,v0,1030
    1910:	01ae7821 	addu	t7,t5,t6
    1914:	a50f0000 	sh	t7,0(t0)
    1918:	84580000 	lh	t8,0(v0)
    191c:	0198c823 	subu	t9,t4,t8
    1920:	a5190002 	sh	t9,2(t0)
    1924:	8fbf0014 	lw	ra,20(sp)
    1928:	27bd0090 	addiu	sp,sp,144
    192c:	00001025 	move	v0,zero
    1930:	03e00008 	jr	ra
    1934:	00000000 	nop

00001938 <func_80B54CE8>:
    1938:	27bdffb8 	addiu	sp,sp,-72
    193c:	2401000d 	li	at,13
    1940:	afbf0014 	sw	ra,20(sp)
    1944:	afa40048 	sw	a0,72(sp)
    1948:	afa60050 	sw	a2,80(sp)
    194c:	14a1000f 	bne	a1,at,198c <func_80B54CE8+0x54>
    1950:	afa70054 	sw	a3,84(sp)
    1954:	3c0e0000 	lui	t6,0x0
    1958:	25ce0000 	addiu	t6,t6,0
    195c:	8dd80000 	lw	t8,0(t6)
    1960:	8fa20058 	lw	v0,88(sp)
    1964:	27a40034 	addiu	a0,sp,52
    1968:	ac980000 	sw	t8,0(a0)
    196c:	8dcf0004 	lw	t7,4(t6)
    1970:	2445031c 	addiu	a1,v0,796
    1974:	ac8f0004 	sw	t7,4(a0)
    1978:	8dd80008 	lw	t8,8(t6)
    197c:	0c000000 	jal	0 <func_80B533B0>
    1980:	ac980008 	sw	t8,8(a0)
    1984:	1000001c 	b	19f8 <func_80B54CE8+0xc0>
    1988:	8fbf0014 	lw	ra,20(sp)
    198c:	2401000e 	li	at,14
    1990:	14a10018 	bne	a1,at,19f4 <func_80B54CE8+0xbc>
    1994:	3c190000 	lui	t9,0x0
    1998:	27390000 	addiu	t9,t9,0
    199c:	8f290000 	lw	t1,0(t9)
    19a0:	27a40024 	addiu	a0,sp,36
    19a4:	27a50018 	addiu	a1,sp,24
    19a8:	ac890000 	sw	t1,0(a0)
    19ac:	8f280004 	lw	t0,4(t9)
    19b0:	ac880004 	sw	t0,4(a0)
    19b4:	8f290008 	lw	t1,8(t9)
    19b8:	0c000000 	jal	0 <func_80B533B0>
    19bc:	ac890008 	sw	t1,8(a0)
    19c0:	8fa20058 	lw	v0,88(sp)
    19c4:	c7a40018 	lwc1	$f4,24(sp)
    19c8:	844a0030 	lh	t2,48(v0)
    19cc:	e4440038 	swc1	$f4,56(v0)
    19d0:	c7a6001c 	lwc1	$f6,28(sp)
    19d4:	844b0032 	lh	t3,50(v0)
    19d8:	844c0034 	lh	t4,52(v0)
    19dc:	e446003c 	swc1	$f6,60(v0)
    19e0:	c7a80020 	lwc1	$f8,32(sp)
    19e4:	a44a0044 	sh	t2,68(v0)
    19e8:	a44b0046 	sh	t3,70(v0)
    19ec:	a44c0048 	sh	t4,72(v0)
    19f0:	e4480040 	swc1	$f8,64(v0)
    19f4:	8fbf0014 	lw	ra,20(sp)
    19f8:	27bd0048 	addiu	sp,sp,72
    19fc:	03e00008 	jr	ra
    1a00:	00000000 	nop

00001a04 <func_80B54DB4>:
    1a04:	8483001c 	lh	v1,28(a0)
    1a08:	00031a03 	sra	v1,v1,0x8
    1a0c:	03e00008 	jr	ra
    1a10:	306200ff 	andi	v0,v1,0xff

00001a14 <func_80B54DC4>:
    1a14:	8483001c 	lh	v1,28(a0)
    1a18:	00031903 	sra	v1,v1,0x4
    1a1c:	03e00008 	jr	ra
    1a20:	3062000f 	andi	v0,v1,0xf

00001a24 <func_80B54DD4>:
    1a24:	8483001c 	lh	v1,28(a0)
    1a28:	03e00008 	jr	ra
    1a2c:	3062000f 	andi	v0,v1,0xf

00001a30 <func_80B54DE0>:
    1a30:	8c820318 	lw	v0,792(a0)
    1a34:	3c180001 	lui	t8,0x1
    1a38:	3c018000 	lui	at,0x8000
    1a3c:	00027100 	sll	t6,v0,0x4
    1a40:	01c27021 	addu	t6,t6,v0
    1a44:	000e7080 	sll	t6,t6,0x2
    1a48:	00ae7821 	addu	t7,a1,t6
    1a4c:	030fc021 	addu	t8,t8,t7
    1a50:	8f1817b4 	lw	t8,6068(t8)
    1a54:	0301c821 	addu	t9,t8,at
    1a58:	3c010000 	lui	at,0x0
    1a5c:	03e00008 	jr	ra
    1a60:	ac390018 	sw	t9,24(at)

00001a64 <func_80B54E14>:
    1a64:	27bdffd8 	addiu	sp,sp,-40
    1a68:	afbf0024 	sw	ra,36(sp)
    1a6c:	afa40028 	sw	a0,40(sp)
    1a70:	afa5002c 	sw	a1,44(sp)
    1a74:	afa60030 	sw	a2,48(sp)
    1a78:	afa70034 	sw	a3,52(sp)
    1a7c:	0c000000 	jal	0 <func_80B533B0>
    1a80:	00a02025 	move	a0,a1
    1a84:	8fae0038 	lw	t6,56(sp)
    1a88:	8fa40028 	lw	a0,40(sp)
    1a8c:	8fa5002c 	lw	a1,44(sp)
    1a90:	15c00007 	bnez	t6,1ab0 <func_80B54E14+0x4c>
    1a94:	2484014c 	addiu	a0,a0,332
    1a98:	44822000 	mtc1	v0,$f4
    1a9c:	3c013f80 	lui	at,0x3f80
    1aa0:	44800000 	mtc1	zero,$f0
    1aa4:	44816000 	mtc1	at,$f12
    1aa8:	10000006 	b	1ac4 <func_80B54E14+0x60>
    1aac:	468020a0 	cvt.s.w	$f2,$f4
    1ab0:	44823000 	mtc1	v0,$f6
    1ab4:	3c01bf80 	lui	at,0xbf80
    1ab8:	44801000 	mtc1	zero,$f2
    1abc:	44816000 	mtc1	at,$f12
    1ac0:	46803020 	cvt.s.w	$f0,$f6
    1ac4:	93af0033 	lbu	t7,51(sp)
    1ac8:	c7a80034 	lwc1	$f8,52(sp)
    1acc:	44066000 	mfc1	a2,$f12
    1ad0:	44070000 	mfc1	a3,$f0
    1ad4:	e7a20010 	swc1	$f2,16(sp)
    1ad8:	afaf0014 	sw	t7,20(sp)
    1adc:	0c000000 	jal	0 <func_80B533B0>
    1ae0:	e7a80018 	swc1	$f8,24(sp)
    1ae4:	8fbf0024 	lw	ra,36(sp)
    1ae8:	27bd0028 	addiu	sp,sp,40
    1aec:	03e00008 	jr	ra
    1af0:	00000000 	nop

00001af4 <func_80B54EA4>:
    1af4:	27bdffd0 	addiu	sp,sp,-48
    1af8:	afbf002c 	sw	ra,44(sp)
    1afc:	afa40030 	sw	a0,48(sp)
    1b00:	c4800024 	lwc1	$f0,36(a0)
    1b04:	c4820028 	lwc1	$f2,40(a0)
    1b08:	c48c002c 	lwc1	$f12,44(a0)
    1b0c:	44070000 	mfc1	a3,$f0
    1b10:	afa00024 	sw	zero,36(sp)
    1b14:	afa00020 	sw	zero,32(sp)
    1b18:	afa0001c 	sw	zero,28(sp)
    1b1c:	afa00018 	sw	zero,24(sp)
    1b20:	24a41c24 	addiu	a0,a1,7204
    1b24:	240601cc 	li	a2,460
    1b28:	e7a20010 	swc1	$f2,16(sp)
    1b2c:	0c000000 	jal	0 <func_80B533B0>
    1b30:	e7ac0014 	swc1	$f12,20(sp)
    1b34:	8fbf002c 	lw	ra,44(sp)
    1b38:	27bd0030 	addiu	sp,sp,48
    1b3c:	03e00008 	jr	ra
    1b40:	00000000 	nop

00001b44 <func_80B54EF4>:
    1b44:	27bdffe8 	addiu	sp,sp,-24
    1b48:	afbf0014 	sw	ra,20(sp)
    1b4c:	248400e4 	addiu	a0,a0,228
    1b50:	0c000000 	jal	0 <func_80B533B0>
    1b54:	24056879 	li	a1,26745
    1b58:	8fbf0014 	lw	ra,20(sp)
    1b5c:	27bd0018 	addiu	sp,sp,24
    1b60:	03e00008 	jr	ra
    1b64:	00000000 	nop

00001b68 <func_80B54F18>:
    1b68:	27bdffc0 	addiu	sp,sp,-64
    1b6c:	afbf003c 	sw	ra,60(sp)
    1b70:	afb00038 	sw	s0,56(sp)
    1b74:	8c8e02f8 	lw	t6,760(a0)
    1b78:	00808025 	move	s0,a0
    1b7c:	00a03025 	move	a2,a1
    1b80:	15c0001b 	bnez	t6,1bf0 <func_80B54F18+0x88>
    1b84:	3c0f0000 	lui	t7,0x0
    1b88:	8def0000 	lw	t7,0(t7)
    1b8c:	3c01c1d0 	lui	at,0xc1d0
    1b90:	44814000 	mtc1	at,$f8
    1b94:	85f8145e 	lh	t8,5214(t7)
    1b98:	c4900028 	lwc1	$f16,40(a0)
    1b9c:	c4800024 	lwc1	$f0,36(a0)
    1ba0:	44982000 	mtc1	t8,$f4
    1ba4:	c48c002c 	lwc1	$f12,44(a0)
    1ba8:	24a41c24 	addiu	a0,a1,7204
    1bac:	468021a0 	cvt.s.w	$f6,$f4
    1bb0:	24194000 	li	t9,16384
    1bb4:	24080003 	li	t0,3
    1bb8:	afa80028 	sw	t0,40(sp)
    1bbc:	afb90020 	sw	t9,32(sp)
    1bc0:	02002825 	move	a1,s0
    1bc4:	46083280 	add.s	$f10,$f6,$f8
    1bc8:	afa00024 	sw	zero,36(sp)
    1bcc:	afa0001c 	sw	zero,28(sp)
    1bd0:	2407005d 	li	a3,93
    1bd4:	46105080 	add.s	$f2,$f10,$f16
    1bd8:	e7a00010 	swc1	$f0,16(sp)
    1bdc:	e7ac0018 	swc1	$f12,24(sp)
    1be0:	0c000000 	jal	0 <func_80B533B0>
    1be4:	e7a20014 	swc1	$f2,20(sp)
    1be8:	24090001 	li	t1,1
    1bec:	ae0902f8 	sw	t1,760(s0)
    1bf0:	8fbf003c 	lw	ra,60(sp)
    1bf4:	8fb00038 	lw	s0,56(sp)
    1bf8:	27bd0040 	addiu	sp,sp,64
    1bfc:	03e00008 	jr	ra
    1c00:	00000000 	nop

00001c04 <func_80B54FB4>:
    1c04:	27bdffd8 	addiu	sp,sp,-40
    1c08:	afb00020 	sw	s0,32(sp)
    1c0c:	00808025 	move	s0,a0
    1c10:	afbf0024 	sw	ra,36(sp)
    1c14:	3c040000 	lui	a0,0x0
    1c18:	afa5002c 	sw	a1,44(sp)
    1c1c:	0c000000 	jal	0 <func_80B533B0>
    1c20:	24840000 	addiu	a0,a0,0
    1c24:	3c050601 	lui	a1,0x601
    1c28:	24a58ad0 	addiu	a1,a1,-30000
    1c2c:	02002025 	move	a0,s0
    1c30:	00003025 	move	a2,zero
    1c34:	24070000 	li	a3,0
    1c38:	0c000000 	jal	0 <func_80B533B0>
    1c3c:	afa00010 	sw	zero,16(sp)
    1c40:	02002025 	move	a0,s0
    1c44:	0c000000 	jal	0 <func_80B533B0>
    1c48:	24050004 	li	a1,4
    1c4c:	02002025 	move	a0,s0
    1c50:	0c000000 	jal	0 <func_80B533B0>
    1c54:	24050002 	li	a1,2
    1c58:	24020001 	li	v0,1
    1c5c:	ae02024c 	sw	v0,588(s0)
    1c60:	ae020250 	sw	v0,592(s0)
    1c64:	8fa5002c 	lw	a1,44(sp)
    1c68:	0c000000 	jal	0 <func_80B533B0>
    1c6c:	02002025 	move	a0,s0
    1c70:	a60000b8 	sh	zero,184(s0)
    1c74:	860e0034 	lh	t6,52(s0)
    1c78:	860f00b8 	lh	t7,184(s0)
    1c7c:	3c040000 	lui	a0,0x0
    1c80:	24840000 	addiu	a0,a0,0
    1c84:	ae0e03c4 	sw	t6,964(s0)
    1c88:	0c000000 	jal	0 <func_80B533B0>
    1c8c:	a60f0034 	sh	t7,52(s0)
    1c90:	8fbf0024 	lw	ra,36(sp)
    1c94:	8fb00020 	lw	s0,32(sp)
    1c98:	27bd0028 	addiu	sp,sp,40
    1c9c:	03e00008 	jr	ra
    1ca0:	00000000 	nop

00001ca4 <func_80B55054>:
    1ca4:	27bdffe8 	addiu	sp,sp,-24
    1ca8:	afbf0014 	sw	ra,20(sp)
    1cac:	8c8e0328 	lw	t6,808(a0)
    1cb0:	00802825 	move	a1,a0
    1cb4:	51c0001f 	beqzl	t6,1d34 <func_80B55054+0x90>
    1cb8:	8fbf0014 	lw	ra,20(sp)
    1cbc:	8c84011c 	lw	a0,284(a0)
    1cc0:	3c014198 	lui	at,0x4198
    1cc4:	5080001b 	beqzl	a0,1d34 <func_80B55054+0x90>
    1cc8:	8fbf0014 	lw	ra,20(sp)
    1ccc:	c4a402ec 	lwc1	$f4,748(a1)
    1cd0:	44813000 	mtc1	at,$f6
    1cd4:	3c0141a0 	lui	at,0x41a0
    1cd8:	24a202ec 	addiu	v0,a1,748
    1cdc:	4606203c 	c.lt.s	$f4,$f6
    1ce0:	00000000 	nop
    1ce4:	4500000e 	bc1f	1d20 <func_80B55054+0x7c>
    1ce8:	00000000 	nop
    1cec:	44814000 	mtc1	at,$f8
    1cf0:	c44a0000 	lwc1	$f10,0(v0)
    1cf4:	3c01414c 	lui	at,0x414c
    1cf8:	44819000 	mtc1	at,$f18
    1cfc:	460a4401 	sub.s	$f16,$f8,$f10
    1d00:	3c013f80 	lui	at,0x3f80
    1d04:	44814000 	mtc1	at,$f8
    1d08:	46128102 	mul.s	$f4,$f16,$f18
    1d0c:	e48401a8 	swc1	$f4,424(a0)
    1d10:	c4460000 	lwc1	$f6,0(v0)
    1d14:	46083280 	add.s	$f10,$f6,$f8
    1d18:	10000005 	b	1d30 <func_80B55054+0x8c>
    1d1c:	e44a0000 	swc1	$f10,0(v0)
    1d20:	0c000000 	jal	0 <func_80B533B0>
    1d24:	afa50018 	sw	a1,24(sp)
    1d28:	8fa50018 	lw	a1,24(sp)
    1d2c:	aca0011c 	sw	zero,284(a1)
    1d30:	8fbf0014 	lw	ra,20(sp)
    1d34:	27bd0018 	addiu	sp,sp,24
    1d38:	03e00008 	jr	ra
    1d3c:	00000000 	nop

00001d40 <func_80B550F0>:
    1d40:	8c82011c 	lw	v0,284(a0)
    1d44:	10400011 	beqz	v0,1d8c <func_80B550F0+0x4c>
    1d48:	00000000 	nop
    1d4c:	c4840024 	lwc1	$f4,36(a0)
    1d50:	3c0e0000 	lui	t6,0x0
    1d54:	3c01c1d0 	lui	at,0xc1d0
    1d58:	e4440024 	swc1	$f4,36(v0)
    1d5c:	8dce0000 	lw	t6,0(t6)
    1d60:	44815000 	mtc1	at,$f10
    1d64:	c4920028 	lwc1	$f18,40(a0)
    1d68:	85cf145e 	lh	t7,5214(t6)
    1d6c:	448f3000 	mtc1	t7,$f6
    1d70:	00000000 	nop
    1d74:	46803220 	cvt.s.w	$f8,$f6
    1d78:	460a4400 	add.s	$f16,$f8,$f10
    1d7c:	46128100 	add.s	$f4,$f16,$f18
    1d80:	e4440028 	swc1	$f4,40(v0)
    1d84:	c486002c 	lwc1	$f6,44(a0)
    1d88:	e446002c 	swc1	$f6,44(v0)
    1d8c:	03e00008 	jr	ra
    1d90:	00000000 	nop

00001d94 <func_80B55144>:
    1d94:	3c010000 	lui	at,0x0
    1d98:	c4200000 	lwc1	$f0,0(at)
    1d9c:	3c014000 	lui	at,0x4000
    1da0:	44812000 	mtc1	at,$f4
    1da4:	27bdffe8 	addiu	sp,sp,-24
    1da8:	afbf0014 	sw	ra,20(sp)
    1dac:	4604003c 	c.lt.s	$f0,$f4
    1db0:	3c014080 	lui	at,0x4080
    1db4:	4502000b 	bc1fl	1de4 <func_80B55144+0x50>
    1db8:	44814000 	mtc1	at,$f8
    1dbc:	3c013f80 	lui	at,0x3f80
    1dc0:	44813000 	mtc1	at,$f6
    1dc4:	3c010000 	lui	at,0x0
    1dc8:	24050002 	li	a1,2
    1dcc:	46060000 	add.s	$f0,$f0,$f6
    1dd0:	0c000000 	jal	0 <func_80B533B0>
    1dd4:	e4200000 	swc1	$f0,0(at)
    1dd8:	10000012 	b	1e24 <func_80B55144+0x90>
    1ddc:	8fbf0014 	lw	ra,20(sp)
    1de0:	44814000 	mtc1	at,$f8
    1de4:	3c013f80 	lui	at,0x3f80
    1de8:	4608003c 	c.lt.s	$f0,$f8
    1dec:	00000000 	nop
    1df0:	45000009 	bc1f	1e18 <func_80B55144+0x84>
    1df4:	00000000 	nop
    1df8:	44815000 	mtc1	at,$f10
    1dfc:	3c010000 	lui	at,0x0
    1e00:	24050001 	li	a1,1
    1e04:	460a0000 	add.s	$f0,$f0,$f10
    1e08:	0c000000 	jal	0 <func_80B533B0>
    1e0c:	e4200000 	swc1	$f0,0(at)
    1e10:	10000004 	b	1e24 <func_80B55144+0x90>
    1e14:	8fbf0014 	lw	ra,20(sp)
    1e18:	0c000000 	jal	0 <func_80B533B0>
    1e1c:	00000000 	nop
    1e20:	8fbf0014 	lw	ra,20(sp)
    1e24:	27bd0018 	addiu	sp,sp,24
    1e28:	03e00008 	jr	ra
    1e2c:	00000000 	nop

00001e30 <func_80B551E0>:
    1e30:	27bdffe0 	addiu	sp,sp,-32
    1e34:	afbf001c 	sw	ra,28(sp)
    1e38:	3c050601 	lui	a1,0x601
    1e3c:	afa40020 	sw	a0,32(sp)
    1e40:	24a58ad0 	addiu	a1,a1,-30000
    1e44:	afa00010 	sw	zero,16(sp)
    1e48:	00003025 	move	a2,zero
    1e4c:	0c000000 	jal	0 <func_80B533B0>
    1e50:	24070000 	li	a3,0
    1e54:	8faf0020 	lw	t7,32(sp)
    1e58:	240e0001 	li	t6,1
    1e5c:	adee024c 	sw	t6,588(t7)
    1e60:	8fbf001c 	lw	ra,28(sp)
    1e64:	27bd0020 	addiu	sp,sp,32
    1e68:	03e00008 	jr	ra
    1e6c:	00000000 	nop

00001e70 <func_80B55220>:
    1e70:	27bdffe0 	addiu	sp,sp,-32
    1e74:	afbf001c 	sw	ra,28(sp)
    1e78:	3c050601 	lui	a1,0x601
    1e7c:	24a591d8 	addiu	a1,a1,-28200
    1e80:	afa00010 	sw	zero,16(sp)
    1e84:	afa40020 	sw	a0,32(sp)
    1e88:	24060002 	li	a2,2
    1e8c:	0c000000 	jal	0 <func_80B533B0>
    1e90:	24070000 	li	a3,0
    1e94:	8fa40020 	lw	a0,32(sp)
    1e98:	240e0002 	li	t6,2
    1e9c:	00002825 	move	a1,zero
    1ea0:	0c000000 	jal	0 <func_80B533B0>
    1ea4:	ac8e024c 	sw	t6,588(a0)
    1ea8:	8fbf001c 	lw	ra,28(sp)
    1eac:	27bd0020 	addiu	sp,sp,32
    1eb0:	03e00008 	jr	ra
    1eb4:	00000000 	nop

00001eb8 <func_80B55268>:
    1eb8:	27bdffe0 	addiu	sp,sp,-32
    1ebc:	afbf001c 	sw	ra,28(sp)
    1ec0:	3c050601 	lui	a1,0x601
    1ec4:	afa40020 	sw	a0,32(sp)
    1ec8:	24a591d8 	addiu	a1,a1,-28200
    1ecc:	afa00010 	sw	zero,16(sp)
    1ed0:	24060002 	li	a2,2
    1ed4:	0c000000 	jal	0 <func_80B533B0>
    1ed8:	24070000 	li	a3,0
    1edc:	8faf0020 	lw	t7,32(sp)
    1ee0:	240e0003 	li	t6,3
    1ee4:	adee024c 	sw	t6,588(t7)
    1ee8:	8fbf001c 	lw	ra,28(sp)
    1eec:	27bd0020 	addiu	sp,sp,32
    1ef0:	03e00008 	jr	ra
    1ef4:	00000000 	nop

00001ef8 <func_80B552A8>:
    1ef8:	27bdffe0 	addiu	sp,sp,-32
    1efc:	10a00007 	beqz	a1,1f1c <func_80B552A8+0x24>
    1f00:	afbf001c 	sw	ra,28(sp)
    1f04:	3c050601 	lui	a1,0x601
    1f08:	24a599a0 	addiu	a1,a1,-26208
    1f0c:	00003025 	move	a2,zero
    1f10:	24070000 	li	a3,0
    1f14:	0c000000 	jal	0 <func_80B533B0>
    1f18:	afa00010 	sw	zero,16(sp)
    1f1c:	8fbf001c 	lw	ra,28(sp)
    1f20:	27bd0020 	addiu	sp,sp,32
    1f24:	03e00008 	jr	ra
    1f28:	00000000 	nop

00001f2c <func_80B552DC>:
    1f2c:	27bdffe0 	addiu	sp,sp,-32
    1f30:	afbf001c 	sw	ra,28(sp)
    1f34:	3c050601 	lui	a1,0x601
    1f38:	afa40020 	sw	a0,32(sp)
    1f3c:	24a5a598 	addiu	a1,a1,-23144
    1f40:	afa00010 	sw	zero,16(sp)
    1f44:	24060002 	li	a2,2
    1f48:	0c000000 	jal	0 <func_80B533B0>
    1f4c:	3c07c100 	lui	a3,0xc100
    1f50:	0c000000 	jal	0 <func_80B533B0>
    1f54:	8fa40020 	lw	a0,32(sp)
    1f58:	8fa40020 	lw	a0,32(sp)
    1f5c:	0c000000 	jal	0 <func_80B533B0>
    1f60:	24050002 	li	a1,2
    1f64:	8faf0020 	lw	t7,32(sp)
    1f68:	240e0004 	li	t6,4
    1f6c:	0c000000 	jal	0 <func_80B533B0>
    1f70:	adee024c 	sw	t6,588(t7)
    1f74:	8fbf001c 	lw	ra,28(sp)
    1f78:	27bd0020 	addiu	sp,sp,32
    1f7c:	03e00008 	jr	ra
    1f80:	00000000 	nop

00001f84 <func_80B55334>:
    1f84:	27bdffe0 	addiu	sp,sp,-32
    1f88:	10a00007 	beqz	a1,1fa8 <func_80B55334+0x24>
    1f8c:	afbf001c 	sw	ra,28(sp)
    1f90:	3c050601 	lui	a1,0x601
    1f94:	24a5aacc 	addiu	a1,a1,-21812
    1f98:	00003025 	move	a2,zero
    1f9c:	24070000 	li	a3,0
    1fa0:	0c000000 	jal	0 <func_80B533B0>
    1fa4:	afa00010 	sw	zero,16(sp)
    1fa8:	8fbf001c 	lw	ra,28(sp)
    1fac:	27bd0020 	addiu	sp,sp,32
    1fb0:	03e00008 	jr	ra
    1fb4:	00000000 	nop

00001fb8 <func_80B55368>:
    1fb8:	27bdffe0 	addiu	sp,sp,-32
    1fbc:	afbf001c 	sw	ra,28(sp)
    1fc0:	3c050601 	lui	a1,0x601
    1fc4:	afa40020 	sw	a0,32(sp)
    1fc8:	24a5a334 	addiu	a1,a1,-23756
    1fcc:	afa00010 	sw	zero,16(sp)
    1fd0:	24060002 	li	a2,2
    1fd4:	0c000000 	jal	0 <func_80B533B0>
    1fd8:	3c07c100 	lui	a3,0xc100
    1fdc:	8fa40020 	lw	a0,32(sp)
    1fe0:	0c000000 	jal	0 <func_80B533B0>
    1fe4:	00002825 	move	a1,zero
    1fe8:	8faf0020 	lw	t7,32(sp)
    1fec:	240e0005 	li	t6,5
    1ff0:	adee024c 	sw	t6,588(t7)
    1ff4:	8fbf001c 	lw	ra,28(sp)
    1ff8:	27bd0020 	addiu	sp,sp,32
    1ffc:	03e00008 	jr	ra
    2000:	00000000 	nop

00002004 <func_80B553B4>:
    2004:	27bdffe0 	addiu	sp,sp,-32
    2008:	10a00007 	beqz	a1,2028 <func_80B553B4+0x24>
    200c:	afbf001c 	sw	ra,28(sp)
    2010:	3c050601 	lui	a1,0x601
    2014:	24a59fbc 	addiu	a1,a1,-24644
    2018:	00003025 	move	a2,zero
    201c:	24070000 	li	a3,0
    2020:	0c000000 	jal	0 <func_80B533B0>
    2024:	afa00010 	sw	zero,16(sp)
    2028:	8fbf001c 	lw	ra,28(sp)
    202c:	27bd0020 	addiu	sp,sp,32
    2030:	03e00008 	jr	ra
    2034:	00000000 	nop

00002038 <func_80B553E8>:
    2038:	27bdffe8 	addiu	sp,sp,-24
    203c:	afbf0014 	sw	ra,20(sp)
    2040:	0c000000 	jal	0 <func_80B533B0>
    2044:	00000000 	nop
    2048:	8fbf0014 	lw	ra,20(sp)
    204c:	27bd0018 	addiu	sp,sp,24
    2050:	03e00008 	jr	ra
    2054:	00000000 	nop

00002058 <func_80B55408>:
    2058:	27bdffe8 	addiu	sp,sp,-24
    205c:	afbf0014 	sw	ra,20(sp)
    2060:	8c85011c 	lw	a1,284(a0)
    2064:	00803025 	move	a2,a0
    2068:	10a00004 	beqz	a1,207c <func_80B55408+0x24>
    206c:	00a02025 	move	a0,a1
    2070:	0c000000 	jal	0 <func_80B533B0>
    2074:	afa60018 	sw	a2,24(sp)
    2078:	8fa60018 	lw	a2,24(sp)
    207c:	0c000000 	jal	0 <func_80B533B0>
    2080:	00c02025 	move	a0,a2
    2084:	8fbf0014 	lw	ra,20(sp)
    2088:	27bd0018 	addiu	sp,sp,24
    208c:	03e00008 	jr	ra
    2090:	00000000 	nop

00002094 <func_80B55444>:
    2094:	27bdffd8 	addiu	sp,sp,-40
    2098:	afbf001c 	sw	ra,28(sp)
    209c:	afb00018 	sw	s0,24(sp)
    20a0:	00808025 	move	s0,a0
    20a4:	0c000000 	jal	0 <func_80B533B0>
    20a8:	afa5002c 	sw	a1,44(sp)
    20ac:	04400037 	bltz	v0,218c <L80B55520+0x1c>
    20b0:	afa20024 	sw	v0,36(sp)
    20b4:	8e0302f0 	lw	v1,752(s0)
    20b8:	2c410009 	sltiu	at,v0,9
    20bc:	50430034 	beql	v0,v1,2190 <L80B55520+0x20>
    20c0:	8fbf001c 	lw	ra,28(sp)
    20c4:	1020002c 	beqz	at,2178 <L80B55520+0x8>
    20c8:	00027080 	sll	t6,v0,0x2
    20cc:	3c010000 	lui	at,0x0
    20d0:	002e0821 	addu	at,at,t6
    20d4:	8c2e0000 	lw	t6,0(at)
    20d8:	01c00008 	jr	t6
    20dc:	00000000 	nop

000020e0 <L80B55490>:
    20e0:	0c000000 	jal	0 <func_80B533B0>
    20e4:	02002025 	move	a0,s0
    20e8:	10000027 	b	2188 <L80B55520+0x18>
    20ec:	8fb80024 	lw	t8,36(sp)

000020f0 <L80B554A0>:
    20f0:	02002025 	move	a0,s0
    20f4:	0c000000 	jal	0 <func_80B533B0>
    20f8:	24050003 	li	a1,3
    20fc:	0c000000 	jal	0 <func_80B533B0>
    2100:	02002025 	move	a0,s0
    2104:	10000020 	b	2188 <L80B55520+0x18>
    2108:	8fb80024 	lw	t8,36(sp)

0000210c <L80B554BC>:
    210c:	0c000000 	jal	0 <func_80B533B0>
    2110:	02002025 	move	a0,s0
    2114:	1000001c 	b	2188 <L80B55520+0x18>
    2118:	8fb80024 	lw	t8,36(sp)

0000211c <L80B554CC>:
    211c:	0c000000 	jal	0 <func_80B533B0>
    2120:	02002025 	move	a0,s0
    2124:	10000018 	b	2188 <L80B55520+0x18>
    2128:	8fb80024 	lw	t8,36(sp)

0000212c <L80B554DC>:
    212c:	0c000000 	jal	0 <func_80B533B0>
    2130:	02002025 	move	a0,s0
    2134:	10000014 	b	2188 <L80B55520+0x18>
    2138:	8fb80024 	lw	t8,36(sp)

0000213c <L80B554EC>:
    213c:	0c000000 	jal	0 <func_80B533B0>
    2140:	02002025 	move	a0,s0
    2144:	10000010 	b	2188 <L80B55520+0x18>
    2148:	8fb80024 	lw	t8,36(sp)

0000214c <L80B554FC>:
    214c:	02002025 	move	a0,s0
    2150:	0c000000 	jal	0 <func_80B533B0>
    2154:	8fa5002c 	lw	a1,44(sp)
    2158:	1000000b 	b	2188 <L80B55520+0x18>
    215c:	8fb80024 	lw	t8,36(sp)

00002160 <L80B55510>:
    2160:	0c000000 	jal	0 <func_80B533B0>
    2164:	02002025 	move	a0,s0
    2168:	10000007 	b	2188 <L80B55520+0x18>
    216c:	8fb80024 	lw	t8,36(sp)

00002170 <L80B55520>:
    2170:	240f0001 	li	t7,1
    2174:	ae0f0328 	sw	t7,808(s0)
    2178:	3c040000 	lui	a0,0x0
    217c:	0c000000 	jal	0 <func_80B533B0>
    2180:	24840000 	addiu	a0,a0,0
    2184:	8fb80024 	lw	t8,36(sp)
    2188:	ae1802f0 	sw	t8,752(s0)
    218c:	8fbf001c 	lw	ra,28(sp)
    2190:	8fb00018 	lw	s0,24(sp)
    2194:	27bd0028 	addiu	sp,sp,40
    2198:	03e00008 	jr	ra
    219c:	00000000 	nop

000021a0 <func_80B55550>:
    21a0:	27bdffe0 	addiu	sp,sp,-32
    21a4:	afbf001c 	sw	ra,28(sp)
    21a8:	afb00018 	sw	s0,24(sp)
    21ac:	00808025 	move	s0,a0
    21b0:	0c000000 	jal	0 <func_80B533B0>
    21b4:	afa50024 	sw	a1,36(sp)
    21b8:	02002025 	move	a0,s0
    21bc:	0c000000 	jal	0 <func_80B533B0>
    21c0:	8fa50024 	lw	a1,36(sp)
    21c4:	0c000000 	jal	0 <func_80B533B0>
    21c8:	02002025 	move	a0,s0
    21cc:	0c000000 	jal	0 <func_80B533B0>
    21d0:	02002025 	move	a0,s0
    21d4:	02002025 	move	a0,s0
    21d8:	0c000000 	jal	0 <func_80B533B0>
    21dc:	8fa50024 	lw	a1,36(sp)
    21e0:	8fbf001c 	lw	ra,28(sp)
    21e4:	8fb00018 	lw	s0,24(sp)
    21e8:	27bd0020 	addiu	sp,sp,32
    21ec:	03e00008 	jr	ra
    21f0:	00000000 	nop

000021f4 <func_80B555A4>:
    21f4:	27bdffe0 	addiu	sp,sp,-32
    21f8:	afbf001c 	sw	ra,28(sp)
    21fc:	afb00018 	sw	s0,24(sp)
    2200:	00808025 	move	s0,a0
    2204:	0c000000 	jal	0 <func_80B533B0>
    2208:	afa50024 	sw	a1,36(sp)
    220c:	02002025 	move	a0,s0
    2210:	0c000000 	jal	0 <func_80B533B0>
    2214:	8fa50024 	lw	a1,36(sp)
    2218:	02002025 	move	a0,s0
    221c:	0c000000 	jal	0 <func_80B533B0>
    2220:	24050002 	li	a1,2
    2224:	0c000000 	jal	0 <func_80B533B0>
    2228:	02002025 	move	a0,s0
    222c:	0c000000 	jal	0 <func_80B533B0>
    2230:	02002025 	move	a0,s0
    2234:	02002025 	move	a0,s0
    2238:	0c000000 	jal	0 <func_80B533B0>
    223c:	8fa50024 	lw	a1,36(sp)
    2240:	8fbf001c 	lw	ra,28(sp)
    2244:	8fb00018 	lw	s0,24(sp)
    2248:	27bd0020 	addiu	sp,sp,32
    224c:	03e00008 	jr	ra
    2250:	00000000 	nop

00002254 <func_80B55604>:
    2254:	27bdffe0 	addiu	sp,sp,-32
    2258:	afbf001c 	sw	ra,28(sp)
    225c:	afb00018 	sw	s0,24(sp)
    2260:	00808025 	move	s0,a0
    2264:	0c000000 	jal	0 <func_80B533B0>
    2268:	afa50024 	sw	a1,36(sp)
    226c:	02002025 	move	a0,s0
    2270:	0c000000 	jal	0 <func_80B533B0>
    2274:	8fa50024 	lw	a1,36(sp)
    2278:	0c000000 	jal	0 <func_80B533B0>
    227c:	02002025 	move	a0,s0
    2280:	0c000000 	jal	0 <func_80B533B0>
    2284:	02002025 	move	a0,s0
    2288:	02002025 	move	a0,s0
    228c:	0c000000 	jal	0 <func_80B533B0>
    2290:	00402825 	move	a1,v0
    2294:	0c000000 	jal	0 <func_80B533B0>
    2298:	02002025 	move	a0,s0
    229c:	02002025 	move	a0,s0
    22a0:	0c000000 	jal	0 <func_80B533B0>
    22a4:	8fa50024 	lw	a1,36(sp)
    22a8:	8fbf001c 	lw	ra,28(sp)
    22ac:	8fb00018 	lw	s0,24(sp)
    22b0:	27bd0020 	addiu	sp,sp,32
    22b4:	03e00008 	jr	ra
    22b8:	00000000 	nop

000022bc <func_80B5566C>:
    22bc:	27bdffe0 	addiu	sp,sp,-32
    22c0:	afbf001c 	sw	ra,28(sp)
    22c4:	afb00018 	sw	s0,24(sp)
    22c8:	00808025 	move	s0,a0
    22cc:	0c000000 	jal	0 <func_80B533B0>
    22d0:	afa50024 	sw	a1,36(sp)
    22d4:	02002025 	move	a0,s0
    22d8:	0c000000 	jal	0 <func_80B533B0>
    22dc:	8fa50024 	lw	a1,36(sp)
    22e0:	0c000000 	jal	0 <func_80B533B0>
    22e4:	02002025 	move	a0,s0
    22e8:	0c000000 	jal	0 <func_80B533B0>
    22ec:	02002025 	move	a0,s0
    22f0:	02002025 	move	a0,s0
    22f4:	0c000000 	jal	0 <func_80B533B0>
    22f8:	00402825 	move	a1,v0
    22fc:	02002025 	move	a0,s0
    2300:	0c000000 	jal	0 <func_80B533B0>
    2304:	8fa50024 	lw	a1,36(sp)
    2308:	8fbf001c 	lw	ra,28(sp)
    230c:	8fb00018 	lw	s0,24(sp)
    2310:	27bd0020 	addiu	sp,sp,32
    2314:	03e00008 	jr	ra
    2318:	00000000 	nop

0000231c <func_80B556CC>:
    231c:	27bdffe0 	addiu	sp,sp,-32
    2320:	afbf001c 	sw	ra,28(sp)
    2324:	afb00018 	sw	s0,24(sp)
    2328:	00808025 	move	s0,a0
    232c:	0c000000 	jal	0 <func_80B533B0>
    2330:	afa50024 	sw	a1,36(sp)
    2334:	02002025 	move	a0,s0
    2338:	0c000000 	jal	0 <func_80B533B0>
    233c:	8fa50024 	lw	a1,36(sp)
    2340:	0c000000 	jal	0 <func_80B533B0>
    2344:	02002025 	move	a0,s0
    2348:	0c000000 	jal	0 <func_80B533B0>
    234c:	02002025 	move	a0,s0
    2350:	02002025 	move	a0,s0
    2354:	0c000000 	jal	0 <func_80B533B0>
    2358:	00402825 	move	a1,v0
    235c:	02002025 	move	a0,s0
    2360:	0c000000 	jal	0 <func_80B533B0>
    2364:	8fa50024 	lw	a1,36(sp)
    2368:	8fbf001c 	lw	ra,28(sp)
    236c:	8fb00018 	lw	s0,24(sp)
    2370:	27bd0020 	addiu	sp,sp,32
    2374:	03e00008 	jr	ra
    2378:	00000000 	nop

0000237c <func_80B5572C>:
    237c:	27bdffe0 	addiu	sp,sp,-32
    2380:	afbf001c 	sw	ra,28(sp)
    2384:	afb00018 	sw	s0,24(sp)
    2388:	00808025 	move	s0,a0
    238c:	0c000000 	jal	0 <func_80B533B0>
    2390:	afa50024 	sw	a1,36(sp)
    2394:	02002025 	move	a0,s0
    2398:	0c000000 	jal	0 <func_80B533B0>
    239c:	8fa50024 	lw	a1,36(sp)
    23a0:	0c000000 	jal	0 <func_80B533B0>
    23a4:	02002025 	move	a0,s0
    23a8:	0c000000 	jal	0 <func_80B533B0>
    23ac:	02002025 	move	a0,s0
    23b0:	02002025 	move	a0,s0
    23b4:	0c000000 	jal	0 <func_80B533B0>
    23b8:	8fa50024 	lw	a1,36(sp)
    23bc:	8fbf001c 	lw	ra,28(sp)
    23c0:	8fb00018 	lw	s0,24(sp)
    23c4:	27bd0020 	addiu	sp,sp,32
    23c8:	03e00008 	jr	ra
    23cc:	00000000 	nop

000023d0 <func_80B55780>:
    23d0:	27bdffd8 	addiu	sp,sp,-40
    23d4:	afb00020 	sw	s0,32(sp)
    23d8:	00808025 	move	s0,a0
    23dc:	afbf0024 	sw	ra,36(sp)
    23e0:	3c040000 	lui	a0,0x0
    23e4:	afa5002c 	sw	a1,44(sp)
    23e8:	0c000000 	jal	0 <func_80B533B0>
    23ec:	24840000 	addiu	a0,a0,0
    23f0:	3c050600 	lui	a1,0x600
    23f4:	24a55a0c 	addiu	a1,a1,23052
    23f8:	02002025 	move	a0,s0
    23fc:	00003025 	move	a2,zero
    2400:	24070000 	li	a3,0
    2404:	0c000000 	jal	0 <func_80B533B0>
    2408:	afa00010 	sw	zero,16(sp)
    240c:	240e0007 	li	t6,7
    2410:	240f0001 	li	t7,1
    2414:	3c040000 	lui	a0,0x0
    2418:	ae0e024c 	sw	t6,588(s0)
    241c:	ae0f0250 	sw	t7,592(s0)
    2420:	0c000000 	jal	0 <func_80B533B0>
    2424:	24840000 	addiu	a0,a0,0
    2428:	02002025 	move	a0,s0
    242c:	0c000000 	jal	0 <func_80B533B0>
    2430:	24050001 	li	a1,1
    2434:	8e180004 	lw	t8,4(s0)
    2438:	2401fffe 	li	at,-2
    243c:	0301c824 	and	t9,t8,at
    2440:	ae190004 	sw	t9,4(s0)
    2444:	8fbf0024 	lw	ra,36(sp)
    2448:	8fb00020 	lw	s0,32(sp)
    244c:	27bd0028 	addiu	sp,sp,40
    2450:	03e00008 	jr	ra
    2454:	00000000 	nop

00002458 <func_80B55808>:
    2458:	27bdffe8 	addiu	sp,sp,-24
    245c:	afbf0014 	sw	ra,20(sp)
    2460:	248400e4 	addiu	a0,a0,228
    2464:	0c000000 	jal	0 <func_80B533B0>
    2468:	24056879 	li	a1,26745
    246c:	8fbf0014 	lw	ra,20(sp)
    2470:	27bd0018 	addiu	sp,sp,24
    2474:	03e00008 	jr	ra
    2478:	00000000 	nop

0000247c <func_80B5582C>:
    247c:	27bdffe8 	addiu	sp,sp,-24
    2480:	afa40018 	sw	a0,24(sp)
    2484:	afbf0014 	sw	ra,20(sp)
    2488:	3c040000 	lui	a0,0x0
    248c:	24840000 	addiu	a0,a0,0
    2490:	24056875 	li	a1,26741
    2494:	0c000000 	jal	0 <func_80B533B0>
    2498:	24060002 	li	a2,2
    249c:	8fbf0014 	lw	ra,20(sp)
    24a0:	27bd0018 	addiu	sp,sp,24
    24a4:	03e00008 	jr	ra
    24a8:	00000000 	nop

000024ac <func_80B5585C>:
    24ac:	27bdffe8 	addiu	sp,sp,-24
    24b0:	afbf0014 	sw	ra,20(sp)
    24b4:	908e014d 	lbu	t6,333(a0)
    24b8:	00803025 	move	a2,a0
    24bc:	24010002 	li	at,2
    24c0:	15c10009 	bne	t6,at,24e8 <func_80B5585C+0x3c>
    24c4:	2484014c 	addiu	a0,a0,332
    24c8:	3c054080 	lui	a1,0x4080
    24cc:	0c000000 	jal	0 <func_80B533B0>
    24d0:	afa60018 	sw	a2,24(sp)
    24d4:	10400004 	beqz	v0,24e8 <func_80B5585C+0x3c>
    24d8:	8fa60018 	lw	a2,24(sp)
    24dc:	24c400e4 	addiu	a0,a2,228
    24e0:	0c000000 	jal	0 <func_80B533B0>
    24e4:	24056879 	li	a1,26745
    24e8:	8fbf0014 	lw	ra,20(sp)
    24ec:	27bd0018 	addiu	sp,sp,24
    24f0:	03e00008 	jr	ra
    24f4:	00000000 	nop

000024f8 <func_80B558A8>:
    24f8:	27bdffb0 	addiu	sp,sp,-80
    24fc:	afbf001c 	sw	ra,28(sp)
    2500:	afb10018 	sw	s1,24(sp)
    2504:	afb00014 	sw	s0,20(sp)
    2508:	8c8f0024 	lw	t7,36(a0)
    250c:	84910032 	lh	s1,50(a0)
    2510:	27a2002c 	addiu	v0,sp,44
    2514:	ac4f0000 	sw	t7,0(v0)
    2518:	8c8e0028 	lw	t6,40(a0)
    251c:	8c590000 	lw	t9,0(v0)
    2520:	24900338 	addiu	s0,a0,824
    2524:	ac4e0004 	sw	t6,4(v0)
    2528:	8c8f002c 	lw	t7,44(a0)
    252c:	ac4f0008 	sw	t7,8(v0)
    2530:	ac99032c 	sw	t9,812(a0)
    2534:	8c580004 	lw	t8,4(v0)
    2538:	ac980330 	sw	t8,816(a0)
    253c:	8c590008 	lw	t9,8(v0)
    2540:	ac990334 	sw	t9,820(a0)
    2544:	8c490000 	lw	t1,0(v0)
    2548:	00112400 	sll	a0,s1,0x10
    254c:	00042403 	sra	a0,a0,0x10
    2550:	ae090000 	sw	t1,0(s0)
    2554:	8c480004 	lw	t0,4(v0)
    2558:	ae080004 	sw	t0,4(s0)
    255c:	8c490008 	lw	t1,8(v0)
    2560:	0c000000 	jal	0 <func_80B533B0>
    2564:	ae090008 	sw	t1,8(s0)
    2568:	00112400 	sll	a0,s1,0x10
    256c:	00042403 	sra	a0,a0,0x10
    2570:	0c000000 	jal	0 <func_80B533B0>
    2574:	e7a00024 	swc1	$f0,36(sp)
    2578:	3c010000 	lui	at,0x0
    257c:	c4240000 	lwc1	$f4,0(at)
    2580:	c7a60024 	lwc1	$f6,36(sp)
    2584:	3c010000 	lui	at,0x0
    2588:	c42a0000 	lwc1	$f10,0(at)
    258c:	46062202 	mul.s	$f8,$f4,$f6
    2590:	c6040008 	lwc1	$f4,8(s0)
    2594:	00112400 	sll	a0,s1,0x10
    2598:	46005402 	mul.s	$f16,$f10,$f0
    259c:	00042403 	sra	a0,a0,0x10
    25a0:	46088481 	sub.s	$f18,$f16,$f8
    25a4:	46122180 	add.s	$f6,$f4,$f18
    25a8:	0c000000 	jal	0 <func_80B533B0>
    25ac:	e6060008 	swc1	$f6,8(s0)
    25b0:	00112400 	sll	a0,s1,0x10
    25b4:	00042403 	sra	a0,a0,0x10
    25b8:	0c000000 	jal	0 <func_80B533B0>
    25bc:	e7a00024 	swc1	$f0,36(sp)
    25c0:	3c010000 	lui	at,0x0
    25c4:	c42a0000 	lwc1	$f10,0(at)
    25c8:	c7b00024 	lwc1	$f16,36(sp)
    25cc:	3c010000 	lui	at,0x0
    25d0:	c4240000 	lwc1	$f4,0(at)
    25d4:	46105202 	mul.s	$f8,$f10,$f16
    25d8:	c60a0000 	lwc1	$f10,0(s0)
    25dc:	3c010000 	lui	at,0x0
    25e0:	46002482 	mul.s	$f18,$f4,$f0
    25e4:	c6040004 	lwc1	$f4,4(s0)
    25e8:	46089180 	add.s	$f6,$f18,$f8
    25ec:	46065400 	add.s	$f16,$f10,$f6
    25f0:	e6100000 	swc1	$f16,0(s0)
    25f4:	c4320000 	lwc1	$f18,0(at)
    25f8:	46122200 	add.s	$f8,$f4,$f18
    25fc:	e6080004 	swc1	$f8,4(s0)
    2600:	8fbf001c 	lw	ra,28(sp)
    2604:	8fb10018 	lw	s1,24(sp)
    2608:	8fb00014 	lw	s0,20(sp)
    260c:	03e00008 	jr	ra
    2610:	27bd0050 	addiu	sp,sp,80

00002614 <func_80B559C4>:
    2614:	27bdffe0 	addiu	sp,sp,-32
    2618:	afa40020 	sw	a0,32(sp)
    261c:	afbf001c 	sw	ra,28(sp)
    2620:	3c040600 	lui	a0,0x600
    2624:	0c000000 	jal	0 <func_80B533B0>
    2628:	24845248 	addiu	a0,a0,21064
    262c:	8fa80020 	lw	t0,32(sp)
    2630:	240f0003 	li	t7,3
    2634:	3044ffff 	andi	a0,v0,0xffff
    2638:	c5040164 	lwc1	$f4,356(t0)
    263c:	afaf0010 	sw	t7,16(sp)
    2640:	00002825 	move	a1,zero
    2644:	4600218d 	trunc.w.s	$f6,$f4
    2648:	24070003 	li	a3,3
    264c:	44063000 	mfc1	a2,$f6
    2650:	0c000000 	jal	0 <func_80B533B0>
    2654:	30c6ffff 	andi	a2,a2,0xffff
    2658:	8fa80020 	lw	t0,32(sp)
    265c:	2503032c 	addiu	v1,t0,812
    2660:	25040338 	addiu	a0,t0,824
    2664:	c4880000 	lwc1	$f8,0(a0)
    2668:	c4620000 	lwc1	$f2,0(v1)
    266c:	25020024 	addiu	v0,t0,36
    2670:	46024281 	sub.s	$f10,$f8,$f2
    2674:	460a0402 	mul.s	$f16,$f0,$f10
    2678:	46101480 	add.s	$f18,$f2,$f16
    267c:	e4520000 	swc1	$f18,0(v0)
    2680:	c4840008 	lwc1	$f4,8(a0)
    2684:	c46c0008 	lwc1	$f12,8(v1)
    2688:	460c2181 	sub.s	$f6,$f4,$f12
    268c:	46060202 	mul.s	$f8,$f0,$f6
    2690:	46086280 	add.s	$f10,$f12,$f8
    2694:	e44a0008 	swc1	$f10,8(v0)
    2698:	8fbf001c 	lw	ra,28(sp)
    269c:	27bd0020 	addiu	sp,sp,32
    26a0:	03e00008 	jr	ra
    26a4:	00000000 	nop

000026a8 <func_80B55A58>:
    26a8:	27bdffe8 	addiu	sp,sp,-24
    26ac:	afbf0014 	sw	ra,20(sp)
    26b0:	84ae07a0 	lh	t6,1952(a1)
    26b4:	55c00004 	bnezl	t6,26c8 <func_80B55A58+0x20>
    26b8:	8fbf0014 	lw	ra,20(sp)
    26bc:	0c000000 	jal	0 <func_80B533B0>
    26c0:	00000000 	nop
    26c4:	8fbf0014 	lw	ra,20(sp)
    26c8:	27bd0018 	addiu	sp,sp,24
    26cc:	03e00008 	jr	ra
    26d0:	00000000 	nop

000026d4 <func_80B55A84>:
    26d4:	27bdffe0 	addiu	sp,sp,-32
    26d8:	afbf001c 	sw	ra,28(sp)
    26dc:	3c050600 	lui	a1,0x600
    26e0:	afa40020 	sw	a0,32(sp)
    26e4:	24a55a0c 	addiu	a1,a1,23052
    26e8:	afa00010 	sw	zero,16(sp)
    26ec:	00003025 	move	a2,zero
    26f0:	0c000000 	jal	0 <func_80B533B0>
    26f4:	24070000 	li	a3,0
    26f8:	8faf0020 	lw	t7,32(sp)
    26fc:	240e0007 	li	t6,7
    2700:	adee024c 	sw	t6,588(t7)
    2704:	8fbf001c 	lw	ra,28(sp)
    2708:	27bd0020 	addiu	sp,sp,32
    270c:	03e00008 	jr	ra
    2710:	00000000 	nop

00002714 <func_80B55AC4>:
    2714:	27bdffe0 	addiu	sp,sp,-32
    2718:	afbf001c 	sw	ra,28(sp)
    271c:	3c050600 	lui	a1,0x600
    2720:	afa40020 	sw	a0,32(sp)
    2724:	24a5499c 	addiu	a1,a1,18844
    2728:	afa00010 	sw	zero,16(sp)
    272c:	24060002 	li	a2,2
    2730:	0c000000 	jal	0 <func_80B533B0>
    2734:	3c07c100 	lui	a3,0xc100
    2738:	8faf0020 	lw	t7,32(sp)
    273c:	240e0008 	li	t6,8
    2740:	adee024c 	sw	t6,588(t7)
    2744:	8fbf001c 	lw	ra,28(sp)
    2748:	27bd0020 	addiu	sp,sp,32
    274c:	03e00008 	jr	ra
    2750:	00000000 	nop

00002754 <func_80B55B04>:
    2754:	27bdffe0 	addiu	sp,sp,-32
    2758:	10a00007 	beqz	a1,2778 <func_80B55B04+0x24>
    275c:	afbf001c 	sw	ra,28(sp)
    2760:	3c050600 	lui	a1,0x600
    2764:	24a54408 	addiu	a1,a1,17416
    2768:	00003025 	move	a2,zero
    276c:	24070000 	li	a3,0
    2770:	0c000000 	jal	0 <func_80B533B0>
    2774:	afa00010 	sw	zero,16(sp)
    2778:	8fbf001c 	lw	ra,28(sp)
    277c:	27bd0020 	addiu	sp,sp,32
    2780:	03e00008 	jr	ra
    2784:	00000000 	nop

00002788 <func_80B55B38>:
    2788:	27bdffe0 	addiu	sp,sp,-32
    278c:	afbf001c 	sw	ra,28(sp)
    2790:	3c050600 	lui	a1,0x600
    2794:	afa40020 	sw	a0,32(sp)
    2798:	24a56508 	addiu	a1,a1,25864
    279c:	afa00010 	sw	zero,16(sp)
    27a0:	24060002 	li	a2,2
    27a4:	0c000000 	jal	0 <func_80B533B0>
    27a8:	3c07c100 	lui	a3,0xc100
    27ac:	8faf0020 	lw	t7,32(sp)
    27b0:	240e0009 	li	t6,9
    27b4:	adee024c 	sw	t6,588(t7)
    27b8:	8fbf001c 	lw	ra,28(sp)
    27bc:	27bd0020 	addiu	sp,sp,32
    27c0:	03e00008 	jr	ra
    27c4:	00000000 	nop

000027c8 <func_80B55B78>:
    27c8:	27bdffe0 	addiu	sp,sp,-32
    27cc:	10a00007 	beqz	a1,27ec <func_80B55B78+0x24>
    27d0:	afbf001c 	sw	ra,28(sp)
    27d4:	3c050600 	lui	a1,0x600
    27d8:	24a561c4 	addiu	a1,a1,25028
    27dc:	00003025 	move	a2,zero
    27e0:	24070000 	li	a3,0
    27e4:	0c000000 	jal	0 <func_80B533B0>
    27e8:	afa00010 	sw	zero,16(sp)
    27ec:	8fbf001c 	lw	ra,28(sp)
    27f0:	27bd0020 	addiu	sp,sp,32
    27f4:	03e00008 	jr	ra
    27f8:	00000000 	nop

000027fc <func_80B55BAC>:
    27fc:	27bdffd8 	addiu	sp,sp,-40
    2800:	afbf0024 	sw	ra,36(sp)
    2804:	afb00020 	sw	s0,32(sp)
    2808:	3c050600 	lui	a1,0x600
    280c:	00808025 	move	s0,a0
    2810:	24a55248 	addiu	a1,a1,21064
    2814:	afa00010 	sw	zero,16(sp)
    2818:	24060002 	li	a2,2
    281c:	0c000000 	jal	0 <func_80B533B0>
    2820:	3c07c100 	lui	a3,0xc100
    2824:	0c000000 	jal	0 <func_80B533B0>
    2828:	02002025 	move	a0,s0
    282c:	0c000000 	jal	0 <func_80B533B0>
    2830:	02002025 	move	a0,s0
    2834:	02002025 	move	a0,s0
    2838:	0c000000 	jal	0 <func_80B533B0>
    283c:	24050002 	li	a1,2
    2840:	240e000a 	li	t6,10
    2844:	ae0e024c 	sw	t6,588(s0)
    2848:	8fbf0024 	lw	ra,36(sp)
    284c:	8fb00020 	lw	s0,32(sp)
    2850:	27bd0028 	addiu	sp,sp,40
    2854:	03e00008 	jr	ra
    2858:	00000000 	nop

0000285c <func_80B55C0C>:
    285c:	27bdffe0 	addiu	sp,sp,-32
    2860:	afbf001c 	sw	ra,28(sp)
    2864:	3c050600 	lui	a1,0x600
    2868:	afa40020 	sw	a0,32(sp)
    286c:	24a554e0 	addiu	a1,a1,21728
    2870:	afa00010 	sw	zero,16(sp)
    2874:	00003025 	move	a2,zero
    2878:	0c000000 	jal	0 <func_80B533B0>
    287c:	24070000 	li	a3,0
    2880:	8faf0020 	lw	t7,32(sp)
    2884:	240e000b 	li	t6,11
    2888:	adee024c 	sw	t6,588(t7)
    288c:	8fbf001c 	lw	ra,28(sp)
    2890:	27bd0020 	addiu	sp,sp,32
    2894:	03e00008 	jr	ra
    2898:	00000000 	nop

0000289c <func_80B55C4C>:
    289c:	27bdffe8 	addiu	sp,sp,-24
    28a0:	10a00003 	beqz	a1,28b0 <func_80B55C4C+0x14>
    28a4:	afbf0014 	sw	ra,20(sp)
    28a8:	0c000000 	jal	0 <func_80B533B0>
    28ac:	00000000 	nop
    28b0:	8fbf0014 	lw	ra,20(sp)
    28b4:	27bd0018 	addiu	sp,sp,24
    28b8:	03e00008 	jr	ra
    28bc:	00000000 	nop

000028c0 <func_80B55C70>:
    28c0:	27bdffe0 	addiu	sp,sp,-32
    28c4:	afbf001c 	sw	ra,28(sp)
    28c8:	3c050601 	lui	a1,0x601
    28cc:	24a58684 	addiu	a1,a1,-31100
    28d0:	afa00010 	sw	zero,16(sp)
    28d4:	afa40020 	sw	a0,32(sp)
    28d8:	24060002 	li	a2,2
    28dc:	0c000000 	jal	0 <func_80B533B0>
    28e0:	3c07c100 	lui	a3,0xc100
    28e4:	8fa40020 	lw	a0,32(sp)
    28e8:	2401fff6 	li	at,-10
    28ec:	240e000c 	li	t6,12
    28f0:	8c8f0004 	lw	t7,4(a0)
    28f4:	ac8e024c 	sw	t6,588(a0)
    28f8:	01e1c024 	and	t8,t7,at
    28fc:	2401fffe 	li	at,-2
    2900:	03014024 	and	t0,t8,at
    2904:	ac980004 	sw	t8,4(a0)
    2908:	ac880004 	sw	t0,4(a0)
    290c:	8fbf001c 	lw	ra,28(sp)
    2910:	27bd0020 	addiu	sp,sp,32
    2914:	03e00008 	jr	ra
    2918:	00000000 	nop

0000291c <func_80B55CCC>:
    291c:	27bdffe0 	addiu	sp,sp,-32
    2920:	10a00007 	beqz	a1,2940 <func_80B55CCC+0x24>
    2924:	afbf001c 	sw	ra,28(sp)
    2928:	3c050600 	lui	a1,0x600
    292c:	24a56f04 	addiu	a1,a1,28420
    2930:	00003025 	move	a2,zero
    2934:	24070000 	li	a3,0
    2938:	0c000000 	jal	0 <func_80B533B0>
    293c:	afa00010 	sw	zero,16(sp)
    2940:	8fbf001c 	lw	ra,28(sp)
    2944:	27bd0020 	addiu	sp,sp,32
    2948:	03e00008 	jr	ra
    294c:	00000000 	nop

00002950 <func_80B55D00>:
    2950:	27bdffe8 	addiu	sp,sp,-24
    2954:	afbf0014 	sw	ra,20(sp)
    2958:	afa5001c 	sw	a1,28(sp)
    295c:	0c000000 	jal	0 <func_80B533B0>
    2960:	afa40018 	sw	a0,24(sp)
    2964:	10400004 	beqz	v0,2978 <func_80B55D00+0x28>
    2968:	8fa40018 	lw	a0,24(sp)
    296c:	240e000d 	li	t6,13
    2970:	1000001f 	b	29f0 <func_80B55D00+0xa0>
    2974:	ac8e024c 	sw	t6,588(a0)
    2978:	848f008a 	lh	t7,138(a0)
    297c:	849800b6 	lh	t8,182(a0)
    2980:	01f81023 	subu	v0,t7,t8
    2984:	00021400 	sll	v0,v0,0x10
    2988:	00021403 	sra	v0,v0,0x10
    298c:	04400003 	bltz	v0,299c <func_80B55D00+0x4c>
    2990:	00021823 	negu	v1,v0
    2994:	10000001 	b	299c <func_80B55D00+0x4c>
    2998:	00401825 	move	v1,v0
    299c:	28614301 	slti	at,v1,17153
    29a0:	5020000d 	beqzl	at,29d8 <func_80B55D00+0x88>
    29a4:	8c8c0004 	lw	t4,4(a0)
    29a8:	8c990004 	lw	t9,4(a0)
    29ac:	240b70d5 	li	t3,28885
    29b0:	a48b010e 	sh	t3,270(a0)
    29b4:	37280009 	ori	t0,t9,0x9
    29b8:	ac880004 	sw	t0,4(a0)
    29bc:	350a0001 	ori	t2,t0,0x1
    29c0:	ac8a0004 	sw	t2,4(a0)
    29c4:	0c000000 	jal	0 <func_80B533B0>
    29c8:	8fa5001c 	lw	a1,28(sp)
    29cc:	10000009 	b	29f4 <func_80B55D00+0xa4>
    29d0:	8fbf0014 	lw	ra,20(sp)
    29d4:	8c8c0004 	lw	t4,4(a0)
    29d8:	2401fff6 	li	at,-10
    29dc:	01816824 	and	t5,t4,at
    29e0:	2401fffe 	li	at,-2
    29e4:	ac8d0004 	sw	t5,4(a0)
    29e8:	01a17824 	and	t7,t5,at
    29ec:	ac8f0004 	sw	t7,4(a0)
    29f0:	8fbf0014 	lw	ra,20(sp)
    29f4:	27bd0018 	addiu	sp,sp,24
    29f8:	03e00008 	jr	ra
    29fc:	00000000 	nop

00002a00 <func_80B55DB0>:
    2a00:	27bdffe8 	addiu	sp,sp,-24
    2a04:	afbf0014 	sw	ra,20(sp)
    2a08:	00803025 	move	a2,a0
    2a0c:	afa60018 	sw	a2,24(sp)
    2a10:	0c000000 	jal	0 <func_80B533B0>
    2a14:	24a420d8 	addiu	a0,a1,8408
    2a18:	24010002 	li	at,2
    2a1c:	1441000a 	bne	v0,at,2a48 <func_80B55DB0+0x48>
    2a20:	8fa60018 	lw	a2,24(sp)
    2a24:	8cce0004 	lw	t6,4(a2)
    2a28:	2401fff6 	li	at,-10
    2a2c:	2408000c 	li	t0,12
    2a30:	01c17824 	and	t7,t6,at
    2a34:	2401fffe 	li	at,-2
    2a38:	accf0004 	sw	t7,4(a2)
    2a3c:	01e1c824 	and	t9,t7,at
    2a40:	acd90004 	sw	t9,4(a2)
    2a44:	acc8024c 	sw	t0,588(a2)
    2a48:	8fbf0014 	lw	ra,20(sp)
    2a4c:	27bd0018 	addiu	sp,sp,24
    2a50:	03e00008 	jr	ra
    2a54:	00000000 	nop

00002a58 <func_80B55E08>:
    2a58:	27bdffe0 	addiu	sp,sp,-32
    2a5c:	afbf001c 	sw	ra,28(sp)
    2a60:	3c050600 	lui	a1,0x600
    2a64:	afa40020 	sw	a0,32(sp)
    2a68:	24a56ab0 	addiu	a1,a1,27312
    2a6c:	afa00010 	sw	zero,16(sp)
    2a70:	24060002 	li	a2,2
    2a74:	0c000000 	jal	0 <func_80B533B0>
    2a78:	3c07c100 	lui	a3,0xc100
    2a7c:	8faf0020 	lw	t7,32(sp)
    2a80:	240e000e 	li	t6,14
    2a84:	adee024c 	sw	t6,588(t7)
    2a88:	8fbf001c 	lw	ra,28(sp)
    2a8c:	27bd0020 	addiu	sp,sp,32
    2a90:	03e00008 	jr	ra
    2a94:	00000000 	nop

00002a98 <func_80B55E48>:
    2a98:	27bdffe0 	addiu	sp,sp,-32
    2a9c:	10a00007 	beqz	a1,2abc <func_80B55E48+0x24>
    2aa0:	afbf001c 	sw	ra,28(sp)
    2aa4:	3c050601 	lui	a1,0x601
    2aa8:	24a58050 	addiu	a1,a1,-32688
    2aac:	00003025 	move	a2,zero
    2ab0:	24070000 	li	a3,0
    2ab4:	0c000000 	jal	0 <func_80B533B0>
    2ab8:	afa00010 	sw	zero,16(sp)
    2abc:	8fbf001c 	lw	ra,28(sp)
    2ac0:	27bd0020 	addiu	sp,sp,32
    2ac4:	03e00008 	jr	ra
    2ac8:	00000000 	nop

00002acc <func_80B55E7C>:
    2acc:	27bdffe0 	addiu	sp,sp,-32
    2ad0:	afbf001c 	sw	ra,28(sp)
    2ad4:	3c050600 	lui	a1,0x600
    2ad8:	afa40020 	sw	a0,32(sp)
    2adc:	24a57a78 	addiu	a1,a1,31352
    2ae0:	afa00010 	sw	zero,16(sp)
    2ae4:	24060002 	li	a2,2
    2ae8:	0c000000 	jal	0 <func_80B533B0>
    2aec:	3c07c100 	lui	a3,0xc100
    2af0:	8faf0020 	lw	t7,32(sp)
    2af4:	240e000f 	li	t6,15
    2af8:	adee024c 	sw	t6,588(t7)
    2afc:	8fbf001c 	lw	ra,28(sp)
    2b00:	27bd0020 	addiu	sp,sp,32
    2b04:	03e00008 	jr	ra
    2b08:	00000000 	nop

00002b0c <func_80B55EBC>:
    2b0c:	27bdffe0 	addiu	sp,sp,-32
    2b10:	10a00007 	beqz	a1,2b30 <func_80B55EBC+0x24>
    2b14:	afbf001c 	sw	ra,28(sp)
    2b18:	3c050600 	lui	a1,0x600
    2b1c:	24a57c84 	addiu	a1,a1,31876
    2b20:	00003025 	move	a2,zero
    2b24:	24070000 	li	a3,0
    2b28:	0c000000 	jal	0 <func_80B533B0>
    2b2c:	afa00010 	sw	zero,16(sp)
    2b30:	8fbf001c 	lw	ra,28(sp)
    2b34:	27bd0020 	addiu	sp,sp,32
    2b38:	03e00008 	jr	ra
    2b3c:	00000000 	nop

00002b40 <func_80B55EF0>:
    2b40:	27bdffe0 	addiu	sp,sp,-32
    2b44:	afbf001c 	sw	ra,28(sp)
    2b48:	3c050601 	lui	a1,0x601
    2b4c:	24a582f8 	addiu	a1,a1,-32008
    2b50:	afa00010 	sw	zero,16(sp)
    2b54:	afa40020 	sw	a0,32(sp)
    2b58:	24060002 	li	a2,2
    2b5c:	0c000000 	jal	0 <func_80B533B0>
    2b60:	3c07c100 	lui	a3,0xc100
    2b64:	8fa40020 	lw	a0,32(sp)
    2b68:	240e0010 	li	t6,16
    2b6c:	00002825 	move	a1,zero
    2b70:	0c000000 	jal	0 <func_80B533B0>
    2b74:	ac8e024c 	sw	t6,588(a0)
    2b78:	8fbf001c 	lw	ra,28(sp)
    2b7c:	27bd0020 	addiu	sp,sp,32
    2b80:	03e00008 	jr	ra
    2b84:	00000000 	nop

00002b88 <func_80B55F38>:
    2b88:	27bdffe0 	addiu	sp,sp,-32
    2b8c:	10a00007 	beqz	a1,2bac <func_80B55F38+0x24>
    2b90:	afbf001c 	sw	ra,28(sp)
    2b94:	3c050600 	lui	a1,0x600
    2b98:	24a53ff8 	addiu	a1,a1,16376
    2b9c:	00003025 	move	a2,zero
    2ba0:	24070000 	li	a3,0
    2ba4:	0c000000 	jal	0 <func_80B533B0>
    2ba8:	afa00010 	sw	zero,16(sp)
    2bac:	8fbf001c 	lw	ra,28(sp)
    2bb0:	27bd0020 	addiu	sp,sp,32
    2bb4:	03e00008 	jr	ra
    2bb8:	00000000 	nop

00002bbc <func_80B55F6C>:
    2bbc:	27bdffe8 	addiu	sp,sp,-24
    2bc0:	afbf0014 	sw	ra,20(sp)
    2bc4:	afa5001c 	sw	a1,28(sp)
    2bc8:	0c000000 	jal	0 <func_80B533B0>
    2bcc:	afa40018 	sw	a0,24(sp)
    2bd0:	10400004 	beqz	v0,2be4 <func_80B55F6C+0x28>
    2bd4:	8fa40018 	lw	a0,24(sp)
    2bd8:	240e0012 	li	t6,18
    2bdc:	1000002b 	b	2c8c <func_80B55F6C+0xd0>
    2be0:	ac8e024c 	sw	t6,588(a0)
    2be4:	848f008a 	lh	t7,138(a0)
    2be8:	849800b6 	lh	t8,182(a0)
    2bec:	8fa5001c 	lw	a1,28(sp)
    2bf0:	01f81023 	subu	v0,t7,t8
    2bf4:	00021400 	sll	v0,v0,0x10
    2bf8:	00021403 	sra	v0,v0,0x10
    2bfc:	04400003 	bltz	v0,2c0c <func_80B55F6C+0x50>
    2c00:	00021823 	negu	v1,v0
    2c04:	10000001 	b	2c0c <func_80B55F6C+0x50>
    2c08:	00401825 	move	v1,v0
    2c0c:	28614301 	slti	at,v1,17153
    2c10:	50200018 	beqzl	at,2c74 <func_80B55F6C+0xb8>
    2c14:	8c8c0004 	lw	t4,4(a0)
    2c18:	0c000000 	jal	0 <func_80B533B0>
    2c1c:	afa40018 	sw	a0,24(sp)
    2c20:	1040001a 	beqz	v0,2c8c <func_80B55F6C+0xd0>
    2c24:	8fa40018 	lw	a0,24(sp)
    2c28:	3c010000 	lui	at,0x0
    2c2c:	c4240000 	lwc1	$f4,0(at)
    2c30:	c4460324 	lwc1	$f6,804(v0)
    2c34:	4604303e 	c.le.s	$f6,$f4
    2c38:	00000000 	nop
    2c3c:	45020014 	bc1fl	2c90 <func_80B55F6C+0xd4>
    2c40:	8fbf0014 	lw	ra,20(sp)
    2c44:	8c990004 	lw	t9,4(a0)
    2c48:	240b7059 	li	t3,28761
    2c4c:	a48b010e 	sh	t3,270(a0)
    2c50:	37280009 	ori	t0,t9,0x9
    2c54:	ac880004 	sw	t0,4(a0)
    2c58:	350a0001 	ori	t2,t0,0x1
    2c5c:	ac8a0004 	sw	t2,4(a0)
    2c60:	0c000000 	jal	0 <func_80B533B0>
    2c64:	8fa5001c 	lw	a1,28(sp)
    2c68:	10000009 	b	2c90 <func_80B55F6C+0xd4>
    2c6c:	8fbf0014 	lw	ra,20(sp)
    2c70:	8c8c0004 	lw	t4,4(a0)
    2c74:	2401fff6 	li	at,-10
    2c78:	01816824 	and	t5,t4,at
    2c7c:	2401fffe 	li	at,-2
    2c80:	ac8d0004 	sw	t5,4(a0)
    2c84:	01a17824 	and	t7,t5,at
    2c88:	ac8f0004 	sw	t7,4(a0)
    2c8c:	8fbf0014 	lw	ra,20(sp)
    2c90:	27bd0018 	addiu	sp,sp,24
    2c94:	03e00008 	jr	ra
    2c98:	00000000 	nop

00002c9c <func_80B5604C>:
    2c9c:	27bdffe0 	addiu	sp,sp,-32
    2ca0:	afbf001c 	sw	ra,28(sp)
    2ca4:	3c050600 	lui	a1,0x600
    2ca8:	24a57664 	addiu	a1,a1,30308
    2cac:	afa00010 	sw	zero,16(sp)
    2cb0:	afa40020 	sw	a0,32(sp)
    2cb4:	24060002 	li	a2,2
    2cb8:	0c000000 	jal	0 <func_80B533B0>
    2cbc:	3c07c100 	lui	a3,0xc100
    2cc0:	8fa40020 	lw	a0,32(sp)
    2cc4:	240e0011 	li	t6,17
    2cc8:	0c000000 	jal	0 <func_80B533B0>
    2ccc:	ac8e024c 	sw	t6,588(a0)
    2cd0:	8fbf001c 	lw	ra,28(sp)
    2cd4:	27bd0020 	addiu	sp,sp,32
    2cd8:	03e00008 	jr	ra
    2cdc:	00000000 	nop

00002ce0 <func_80B56090>:
    2ce0:	27bdffd8 	addiu	sp,sp,-40
    2ce4:	afbf0024 	sw	ra,36(sp)
    2ce8:	afb00020 	sw	s0,32(sp)
    2cec:	00808025 	move	s0,a0
    2cf0:	0c000000 	jal	0 <func_80B533B0>
    2cf4:	afa5002c 	sw	a1,44(sp)
    2cf8:	8e0e02f0 	lw	t6,752(s0)
    2cfc:	8faf002c 	lw	t7,44(sp)
    2d00:	544e0011 	bnel	v0,t6,2d48 <func_80B56090+0x68>
    2d04:	8fbf0024 	lw	ra,36(sp)
    2d08:	11e0000e 	beqz	t7,2d44 <func_80B56090+0x64>
    2d0c:	02002025 	move	a0,s0
    2d10:	3c050600 	lui	a1,0x600
    2d14:	24a53ff8 	addiu	a1,a1,16376
    2d18:	00003025 	move	a2,zero
    2d1c:	24070000 	li	a3,0
    2d20:	0c000000 	jal	0 <func_80B533B0>
    2d24:	afa00010 	sw	zero,16(sp)
    2d28:	24180010 	li	t8,16
    2d2c:	ae18024c 	sw	t8,588(s0)
    2d30:	02002025 	move	a0,s0
    2d34:	0c000000 	jal	0 <func_80B533B0>
    2d38:	24050007 	li	a1,7
    2d3c:	24190007 	li	t9,7
    2d40:	ae1902f0 	sw	t9,752(s0)
    2d44:	8fbf0024 	lw	ra,36(sp)
    2d48:	8fb00020 	lw	s0,32(sp)
    2d4c:	27bd0028 	addiu	sp,sp,40
    2d50:	03e00008 	jr	ra
    2d54:	00000000 	nop

00002d58 <func_80B56108>:
    2d58:	27bdffe8 	addiu	sp,sp,-24
    2d5c:	afbf0014 	sw	ra,20(sp)
    2d60:	00803025 	move	a2,a0
    2d64:	afa60018 	sw	a2,24(sp)
    2d68:	0c000000 	jal	0 <func_80B533B0>
    2d6c:	24a420d8 	addiu	a0,a1,8408
    2d70:	24010002 	li	at,2
    2d74:	1441000a 	bne	v0,at,2da0 <func_80B56108+0x48>
    2d78:	8fa60018 	lw	a2,24(sp)
    2d7c:	8cce0004 	lw	t6,4(a2)
    2d80:	2401fff6 	li	at,-10
    2d84:	24080010 	li	t0,16
    2d88:	01c17824 	and	t7,t6,at
    2d8c:	2401fffe 	li	at,-2
    2d90:	accf0004 	sw	t7,4(a2)
    2d94:	01e1c824 	and	t9,t7,at
    2d98:	acd90004 	sw	t9,4(a2)
    2d9c:	acc8024c 	sw	t0,588(a2)
    2da0:	8fbf0014 	lw	ra,20(sp)
    2da4:	27bd0018 	addiu	sp,sp,24
    2da8:	03e00008 	jr	ra
    2dac:	00000000 	nop

00002db0 <func_80B56160>:
    2db0:	27bdffe0 	addiu	sp,sp,-32
    2db4:	afbf001c 	sw	ra,28(sp)
    2db8:	3c050600 	lui	a1,0x600
    2dbc:	afa40020 	sw	a0,32(sp)
    2dc0:	24a501d8 	addiu	a1,a1,472
    2dc4:	afa00010 	sw	zero,16(sp)
    2dc8:	00003025 	move	a2,zero
    2dcc:	0c000000 	jal	0 <func_80B533B0>
    2dd0:	24070000 	li	a3,0
    2dd4:	8faf0020 	lw	t7,32(sp)
    2dd8:	240e0013 	li	t6,19
    2ddc:	adee024c 	sw	t6,588(t7)
    2de0:	8fbf001c 	lw	ra,28(sp)
    2de4:	27bd0020 	addiu	sp,sp,32
    2de8:	03e00008 	jr	ra
    2dec:	00000000 	nop

00002df0 <func_80B561A0>:
    2df0:	27bdffe0 	addiu	sp,sp,-32
    2df4:	afbf001c 	sw	ra,28(sp)
    2df8:	3c050600 	lui	a1,0x600
    2dfc:	afa40020 	sw	a0,32(sp)
    2e00:	24a51110 	addiu	a1,a1,4368
    2e04:	afa00010 	sw	zero,16(sp)
    2e08:	24060002 	li	a2,2
    2e0c:	0c000000 	jal	0 <func_80B533B0>
    2e10:	3c07c100 	lui	a3,0xc100
    2e14:	8faf0020 	lw	t7,32(sp)
    2e18:	240e0014 	li	t6,20
    2e1c:	adee024c 	sw	t6,588(t7)
    2e20:	8fbf001c 	lw	ra,28(sp)
    2e24:	27bd0020 	addiu	sp,sp,32
    2e28:	03e00008 	jr	ra
    2e2c:	00000000 	nop

00002e30 <func_80B561E0>:
    2e30:	27bdffe0 	addiu	sp,sp,-32
    2e34:	10a00007 	beqz	a1,2e54 <func_80B561E0+0x24>
    2e38:	afbf001c 	sw	ra,28(sp)
    2e3c:	3c050600 	lui	a1,0x600
    2e40:	24a504f4 	addiu	a1,a1,1268
    2e44:	00003025 	move	a2,zero
    2e48:	24070000 	li	a3,0
    2e4c:	0c000000 	jal	0 <func_80B533B0>
    2e50:	afa00010 	sw	zero,16(sp)
    2e54:	8fbf001c 	lw	ra,28(sp)
    2e58:	27bd0020 	addiu	sp,sp,32
    2e5c:	03e00008 	jr	ra
    2e60:	00000000 	nop

00002e64 <func_80B56214>:
    2e64:	27bdffe8 	addiu	sp,sp,-24
    2e68:	afbf0014 	sw	ra,20(sp)
    2e6c:	afa5001c 	sw	a1,28(sp)
    2e70:	0c000000 	jal	0 <func_80B533B0>
    2e74:	afa40018 	sw	a0,24(sp)
    2e78:	10400004 	beqz	v0,2e8c <func_80B56214+0x28>
    2e7c:	8fa40018 	lw	a0,24(sp)
    2e80:	240e0015 	li	t6,21
    2e84:	1000002b 	b	2f34 <func_80B56214+0xd0>
    2e88:	ac8e024c 	sw	t6,588(a0)
    2e8c:	848f008a 	lh	t7,138(a0)
    2e90:	849800b6 	lh	t8,182(a0)
    2e94:	8fa5001c 	lw	a1,28(sp)
    2e98:	01f81023 	subu	v0,t7,t8
    2e9c:	00021400 	sll	v0,v0,0x10
    2ea0:	00021403 	sra	v0,v0,0x10
    2ea4:	04400003 	bltz	v0,2eb4 <func_80B56214+0x50>
    2ea8:	00021823 	negu	v1,v0
    2eac:	10000001 	b	2eb4 <func_80B56214+0x50>
    2eb0:	00401825 	move	v1,v0
    2eb4:	28614301 	slti	at,v1,17153
    2eb8:	50200018 	beqzl	at,2f1c <func_80B56214+0xb8>
    2ebc:	8c8c0004 	lw	t4,4(a0)
    2ec0:	0c000000 	jal	0 <func_80B533B0>
    2ec4:	afa40018 	sw	a0,24(sp)
    2ec8:	1040001a 	beqz	v0,2f34 <func_80B56214+0xd0>
    2ecc:	8fa40018 	lw	a0,24(sp)
    2ed0:	3c010000 	lui	at,0x0
    2ed4:	c4240000 	lwc1	$f4,0(at)
    2ed8:	c4460324 	lwc1	$f6,804(v0)
    2edc:	4604303e 	c.le.s	$f6,$f4
    2ee0:	00000000 	nop
    2ee4:	45020014 	bc1fl	2f38 <func_80B56214+0xd4>
    2ee8:	8fbf0014 	lw	ra,20(sp)
    2eec:	8c990004 	lw	t9,4(a0)
    2ef0:	240b7059 	li	t3,28761
    2ef4:	a48b010e 	sh	t3,270(a0)
    2ef8:	37280009 	ori	t0,t9,0x9
    2efc:	ac880004 	sw	t0,4(a0)
    2f00:	350a0001 	ori	t2,t0,0x1
    2f04:	ac8a0004 	sw	t2,4(a0)
    2f08:	0c000000 	jal	0 <func_80B533B0>
    2f0c:	8fa5001c 	lw	a1,28(sp)
    2f10:	10000009 	b	2f38 <func_80B56214+0xd4>
    2f14:	8fbf0014 	lw	ra,20(sp)
    2f18:	8c8c0004 	lw	t4,4(a0)
    2f1c:	2401fff6 	li	at,-10
    2f20:	01816824 	and	t5,t4,at
    2f24:	2401fffe 	li	at,-2
    2f28:	ac8d0004 	sw	t5,4(a0)
    2f2c:	01a17824 	and	t7,t5,at
    2f30:	ac8f0004 	sw	t7,4(a0)
    2f34:	8fbf0014 	lw	ra,20(sp)
    2f38:	27bd0018 	addiu	sp,sp,24
    2f3c:	03e00008 	jr	ra
    2f40:	00000000 	nop

00002f44 <func_80B562F4>:
    2f44:	27bdffe8 	addiu	sp,sp,-24
    2f48:	afbf0014 	sw	ra,20(sp)
    2f4c:	00803025 	move	a2,a0
    2f50:	afa60018 	sw	a2,24(sp)
    2f54:	0c000000 	jal	0 <func_80B533B0>
    2f58:	24a420d8 	addiu	a0,a1,8408
    2f5c:	24010002 	li	at,2
    2f60:	1441000a 	bne	v0,at,2f8c <func_80B562F4+0x48>
    2f64:	8fa60018 	lw	a2,24(sp)
    2f68:	8cce0004 	lw	t6,4(a2)
    2f6c:	2401fff6 	li	at,-10
    2f70:	24080014 	li	t0,20
    2f74:	01c17824 	and	t7,t6,at
    2f78:	2401fffe 	li	at,-2
    2f7c:	accf0004 	sw	t7,4(a2)
    2f80:	01e1c824 	and	t9,t7,at
    2f84:	acd90004 	sw	t9,4(a2)
    2f88:	acc8024c 	sw	t0,588(a2)
    2f8c:	8fbf0014 	lw	ra,20(sp)
    2f90:	27bd0018 	addiu	sp,sp,24
    2f94:	03e00008 	jr	ra
    2f98:	00000000 	nop

00002f9c <func_80B5634C>:
    2f9c:	27bdffe0 	addiu	sp,sp,-32
    2fa0:	afbf001c 	sw	ra,28(sp)
    2fa4:	3c050600 	lui	a1,0x600
    2fa8:	afa40020 	sw	a0,32(sp)
    2fac:	24a52348 	addiu	a1,a1,9032
    2fb0:	afa00010 	sw	zero,16(sp)
    2fb4:	24060002 	li	a2,2
    2fb8:	0c000000 	jal	0 <func_80B533B0>
    2fbc:	3c07c100 	lui	a3,0xc100
    2fc0:	8faf0020 	lw	t7,32(sp)
    2fc4:	240e0016 	li	t6,22
    2fc8:	adee024c 	sw	t6,588(t7)
    2fcc:	8fbf001c 	lw	ra,28(sp)
    2fd0:	27bd0020 	addiu	sp,sp,32
    2fd4:	03e00008 	jr	ra
    2fd8:	00000000 	nop

00002fdc <func_80B5638C>:
    2fdc:	27bdffe0 	addiu	sp,sp,-32
    2fe0:	10a00007 	beqz	a1,3000 <func_80B5638C+0x24>
    2fe4:	afbf001c 	sw	ra,28(sp)
    2fe8:	3c050600 	lui	a1,0x600
    2fec:	24a5210c 	addiu	a1,a1,8460
    2ff0:	00003025 	move	a2,zero
    2ff4:	24070000 	li	a3,0
    2ff8:	0c000000 	jal	0 <func_80B533B0>
    2ffc:	afa00010 	sw	zero,16(sp)
    3000:	8fbf001c 	lw	ra,28(sp)
    3004:	27bd0020 	addiu	sp,sp,32
    3008:	03e00008 	jr	ra
    300c:	00000000 	nop

00003010 <func_80B563C0>:
    3010:	27bdffe0 	addiu	sp,sp,-32
    3014:	afbf001c 	sw	ra,28(sp)
    3018:	3c050600 	lui	a1,0x600
    301c:	afa40020 	sw	a0,32(sp)
    3020:	24a52e54 	addiu	a1,a1,11860
    3024:	afa00010 	sw	zero,16(sp)
    3028:	24060002 	li	a2,2
    302c:	0c000000 	jal	0 <func_80B533B0>
    3030:	3c07c100 	lui	a3,0xc100
    3034:	8faf0020 	lw	t7,32(sp)
    3038:	240e0017 	li	t6,23
    303c:	adee024c 	sw	t6,588(t7)
    3040:	8fbf001c 	lw	ra,28(sp)
    3044:	27bd0020 	addiu	sp,sp,32
    3048:	03e00008 	jr	ra
    304c:	00000000 	nop

00003050 <func_80B56400>:
    3050:	27bdffe0 	addiu	sp,sp,-32
    3054:	10a00007 	beqz	a1,3074 <func_80B56400+0x24>
    3058:	afbf001c 	sw	ra,28(sp)
    305c:	3c050600 	lui	a1,0x600
    3060:	24a52710 	addiu	a1,a1,10000
    3064:	00003025 	move	a2,zero
    3068:	24070000 	li	a3,0
    306c:	0c000000 	jal	0 <func_80B533B0>
    3070:	afa00010 	sw	zero,16(sp)
    3074:	8fbf001c 	lw	ra,28(sp)
    3078:	27bd0020 	addiu	sp,sp,32
    307c:	03e00008 	jr	ra
    3080:	00000000 	nop

00003084 <func_80B56434>:
    3084:	27bdffe0 	addiu	sp,sp,-32
    3088:	afbf001c 	sw	ra,28(sp)
    308c:	3c050600 	lui	a1,0x600
    3090:	afa40020 	sw	a0,32(sp)
    3094:	24a51d8c 	addiu	a1,a1,7564
    3098:	afa00010 	sw	zero,16(sp)
    309c:	24060002 	li	a2,2
    30a0:	0c000000 	jal	0 <func_80B533B0>
    30a4:	3c07c100 	lui	a3,0xc100
    30a8:	8faf0020 	lw	t7,32(sp)
    30ac:	240e0018 	li	t6,24
    30b0:	adee024c 	sw	t6,588(t7)
    30b4:	8fbf001c 	lw	ra,28(sp)
    30b8:	27bd0020 	addiu	sp,sp,32
    30bc:	03e00008 	jr	ra
    30c0:	00000000 	nop

000030c4 <func_80B56474>:
    30c4:	27bdffe0 	addiu	sp,sp,-32
    30c8:	10a00007 	beqz	a1,30e8 <func_80B56474+0x24>
    30cc:	afbf001c 	sw	ra,28(sp)
    30d0:	3c050600 	lui	a1,0x600
    30d4:	24a514dc 	addiu	a1,a1,5340
    30d8:	00003025 	move	a2,zero
    30dc:	24070000 	li	a3,0
    30e0:	0c000000 	jal	0 <func_80B533B0>
    30e4:	afa00010 	sw	zero,16(sp)
    30e8:	8fbf001c 	lw	ra,28(sp)
    30ec:	27bd0020 	addiu	sp,sp,32
    30f0:	03e00008 	jr	ra
    30f4:	00000000 	nop

000030f8 <func_80B564A8>:
    30f8:	27bdffd8 	addiu	sp,sp,-40
    30fc:	afbf001c 	sw	ra,28(sp)
    3100:	afb00018 	sw	s0,24(sp)
    3104:	00808025 	move	s0,a0
    3108:	0c000000 	jal	0 <func_80B533B0>
    310c:	afa5002c 	sw	a1,44(sp)
    3110:	3c030000 	lui	v1,0x0
    3114:	8c630000 	lw	v1,0(v1)
    3118:	afa20024 	sw	v0,36(sp)
    311c:	3c010000 	lui	at,0x0
    3120:	18600004 	blez	v1,3134 <func_80B564A8+0x3c>
    3124:	00000000 	nop
    3128:	2463ffff 	addiu	v1,v1,-1
    312c:	1000000a 	b	3158 <func_80B564A8+0x60>
    3130:	ac230000 	sw	v1,0(at)
    3134:	14600008 	bnez	v1,3158 <func_80B564A8+0x60>
    3138:	3c010000 	lui	at,0x0
    313c:	2463ffff 	addiu	v1,v1,-1
    3140:	ac230000 	sw	v1,0(at)
    3144:	24010008 	li	at,8
    3148:	54410004 	bnel	v0,at,315c <func_80B564A8+0x64>
    314c:	8fae0024 	lw	t6,36(sp)
    3150:	0c000000 	jal	0 <func_80B533B0>
    3154:	02002025 	move	a0,s0
    3158:	8fae0024 	lw	t6,36(sp)
    315c:	05c2004e 	bltzl	t6,3298 <L80B56624+0x24>
    3160:	8fbf001c 	lw	ra,28(sp)
    3164:	8e0202f0 	lw	v0,752(s0)
    3168:	2dc1000f 	sltiu	at,t6,15
    316c:	51c2004a 	beql	t6,v0,3298 <L80B56624+0x24>
    3170:	8fbf001c 	lw	ra,28(sp)
    3174:	10200043 	beqz	at,3284 <L80B56624+0x10>
    3178:	3c040000 	lui	a0,0x0
    317c:	000e7880 	sll	t7,t6,0x2
    3180:	3c010000 	lui	at,0x0
    3184:	002f0821 	addu	at,at,t7
    3188:	8c2f0000 	lw	t7,0(at)
    318c:	01e00008 	jr	t7
    3190:	00000000 	nop

00003194 <L80B56544>:
    3194:	0c000000 	jal	0 <func_80B533B0>
    3198:	02002025 	move	a0,s0
    319c:	1000003c 	b	3290 <L80B56624+0x1c>
    31a0:	8fb80024 	lw	t8,36(sp)

000031a4 <L80B56554>:
    31a4:	0c000000 	jal	0 <func_80B533B0>
    31a8:	02002025 	move	a0,s0
    31ac:	10000038 	b	3290 <L80B56624+0x1c>
    31b0:	8fb80024 	lw	t8,36(sp)

000031b4 <L80B56564>:
    31b4:	0c000000 	jal	0 <func_80B533B0>
    31b8:	02002025 	move	a0,s0
    31bc:	10000034 	b	3290 <L80B56624+0x1c>
    31c0:	8fb80024 	lw	t8,36(sp)

000031c4 <L80B56574>:
    31c4:	0c000000 	jal	0 <func_80B533B0>
    31c8:	02002025 	move	a0,s0
    31cc:	10000030 	b	3290 <L80B56624+0x1c>
    31d0:	8fb80024 	lw	t8,36(sp)

000031d4 <L80B56584>:
    31d4:	0c000000 	jal	0 <func_80B533B0>
    31d8:	02002025 	move	a0,s0
    31dc:	1000002c 	b	3290 <L80B56624+0x1c>
    31e0:	8fb80024 	lw	t8,36(sp)

000031e4 <L80B56594>:
    31e4:	0c000000 	jal	0 <func_80B533B0>
    31e8:	02002025 	move	a0,s0
    31ec:	10000028 	b	3290 <L80B56624+0x1c>
    31f0:	8fb80024 	lw	t8,36(sp)

000031f4 <L80B565A4>:
    31f4:	0c000000 	jal	0 <func_80B533B0>
    31f8:	02002025 	move	a0,s0
    31fc:	10000024 	b	3290 <L80B56624+0x1c>
    3200:	8fb80024 	lw	t8,36(sp)

00003204 <L80B565B4>:
    3204:	0c000000 	jal	0 <func_80B533B0>
    3208:	02002025 	move	a0,s0
    320c:	10000020 	b	3290 <L80B56624+0x1c>
    3210:	8fb80024 	lw	t8,36(sp)

00003214 <L80B565C4>:
    3214:	2403000a 	li	v1,10
    3218:	3c010000 	lui	at,0x0
    321c:	1000001b 	b	328c <L80B56624+0x18>
    3220:	ac230000 	sw	v1,0(at)

00003224 <L80B565D4>:
    3224:	0c000000 	jal	0 <func_80B533B0>
    3228:	02002025 	move	a0,s0
    322c:	10000018 	b	3290 <L80B56624+0x1c>
    3230:	8fb80024 	lw	t8,36(sp)

00003234 <L80B565E4>:
    3234:	0c000000 	jal	0 <func_80B533B0>
    3238:	02002025 	move	a0,s0
    323c:	10000014 	b	3290 <L80B56624+0x1c>
    3240:	8fb80024 	lw	t8,36(sp)

00003244 <L80B565F4>:
    3244:	0c000000 	jal	0 <func_80B533B0>
    3248:	02002025 	move	a0,s0
    324c:	10000010 	b	3290 <L80B56624+0x1c>
    3250:	8fb80024 	lw	t8,36(sp)

00003254 <L80B56604>:
    3254:	0c000000 	jal	0 <func_80B533B0>
    3258:	02002025 	move	a0,s0
    325c:	1000000c 	b	3290 <L80B56624+0x1c>
    3260:	8fb80024 	lw	t8,36(sp)

00003264 <L80B56614>:
    3264:	0c000000 	jal	0 <func_80B533B0>
    3268:	02002025 	move	a0,s0
    326c:	10000008 	b	3290 <L80B56624+0x1c>
    3270:	8fb80024 	lw	t8,36(sp)

00003274 <L80B56624>:
    3274:	0c000000 	jal	0 <func_80B533B0>
    3278:	02002025 	move	a0,s0
    327c:	10000004 	b	3290 <L80B56624+0x1c>
    3280:	8fb80024 	lw	t8,36(sp)
    3284:	0c000000 	jal	0 <func_80B533B0>
    3288:	24840000 	addiu	a0,a0,0
    328c:	8fb80024 	lw	t8,36(sp)
    3290:	ae1802f0 	sw	t8,752(s0)
    3294:	8fbf001c 	lw	ra,28(sp)
    3298:	8fb00018 	lw	s0,24(sp)
    329c:	27bd0028 	addiu	sp,sp,40
    32a0:	03e00008 	jr	ra
    32a4:	00000000 	nop

000032a8 <func_80B56658>:
    32a8:	27bdffe0 	addiu	sp,sp,-32
    32ac:	afbf001c 	sw	ra,28(sp)
    32b0:	afb00018 	sw	s0,24(sp)
    32b4:	00808025 	move	s0,a0
    32b8:	0c000000 	jal	0 <func_80B533B0>
    32bc:	afa50024 	sw	a1,36(sp)
    32c0:	02002025 	move	a0,s0
    32c4:	0c000000 	jal	0 <func_80B533B0>
    32c8:	8fa50024 	lw	a1,36(sp)
    32cc:	0c000000 	jal	0 <func_80B533B0>
    32d0:	02002025 	move	a0,s0
    32d4:	0c000000 	jal	0 <func_80B533B0>
    32d8:	02002025 	move	a0,s0
    32dc:	02002025 	move	a0,s0
    32e0:	0c000000 	jal	0 <func_80B533B0>
    32e4:	8fa50024 	lw	a1,36(sp)
    32e8:	8fbf001c 	lw	ra,28(sp)
    32ec:	8fb00018 	lw	s0,24(sp)
    32f0:	27bd0020 	addiu	sp,sp,32
    32f4:	03e00008 	jr	ra
    32f8:	00000000 	nop

000032fc <func_80B566AC>:
    32fc:	27bdffe0 	addiu	sp,sp,-32
    3300:	afbf001c 	sw	ra,28(sp)
    3304:	afb00018 	sw	s0,24(sp)
    3308:	00808025 	move	s0,a0
    330c:	0c000000 	jal	0 <func_80B533B0>
    3310:	afa50024 	sw	a1,36(sp)
    3314:	02002025 	move	a0,s0
    3318:	0c000000 	jal	0 <func_80B533B0>
    331c:	8fa50024 	lw	a1,36(sp)
    3320:	0c000000 	jal	0 <func_80B533B0>
    3324:	02002025 	move	a0,s0
    3328:	0c000000 	jal	0 <func_80B533B0>
    332c:	02002025 	move	a0,s0
    3330:	02002025 	move	a0,s0
    3334:	0c000000 	jal	0 <func_80B533B0>
    3338:	00402825 	move	a1,v0
    333c:	02002025 	move	a0,s0
    3340:	0c000000 	jal	0 <func_80B533B0>
    3344:	8fa50024 	lw	a1,36(sp)
    3348:	8fbf001c 	lw	ra,28(sp)
    334c:	8fb00018 	lw	s0,24(sp)
    3350:	27bd0020 	addiu	sp,sp,32
    3354:	03e00008 	jr	ra
    3358:	00000000 	nop

0000335c <func_80B5670C>:
    335c:	27bdffe0 	addiu	sp,sp,-32
    3360:	afbf001c 	sw	ra,28(sp)
    3364:	afb00018 	sw	s0,24(sp)
    3368:	00808025 	move	s0,a0
    336c:	0c000000 	jal	0 <func_80B533B0>
    3370:	afa50024 	sw	a1,36(sp)
    3374:	02002025 	move	a0,s0
    3378:	0c000000 	jal	0 <func_80B533B0>
    337c:	8fa50024 	lw	a1,36(sp)
    3380:	0c000000 	jal	0 <func_80B533B0>
    3384:	02002025 	move	a0,s0
    3388:	0c000000 	jal	0 <func_80B533B0>
    338c:	02002025 	move	a0,s0
    3390:	02002025 	move	a0,s0
    3394:	0c000000 	jal	0 <func_80B533B0>
    3398:	00402825 	move	a1,v0
    339c:	02002025 	move	a0,s0
    33a0:	0c000000 	jal	0 <func_80B533B0>
    33a4:	8fa50024 	lw	a1,36(sp)
    33a8:	8fbf001c 	lw	ra,28(sp)
    33ac:	8fb00018 	lw	s0,24(sp)
    33b0:	27bd0020 	addiu	sp,sp,32
    33b4:	03e00008 	jr	ra
    33b8:	00000000 	nop

000033bc <func_80B5676C>:
    33bc:	27bdffd8 	addiu	sp,sp,-40
    33c0:	afbf001c 	sw	ra,28(sp)
    33c4:	afb00018 	sw	s0,24(sp)
    33c8:	00808025 	move	s0,a0
    33cc:	0c000000 	jal	0 <func_80B533B0>
    33d0:	afa5002c 	sw	a1,44(sp)
    33d4:	02002025 	move	a0,s0
    33d8:	0c000000 	jal	0 <func_80B533B0>
    33dc:	8fa5002c 	lw	a1,44(sp)
    33e0:	0c000000 	jal	0 <func_80B533B0>
    33e4:	02002025 	move	a0,s0
    33e8:	0c000000 	jal	0 <func_80B533B0>
    33ec:	02002025 	move	a0,s0
    33f0:	afa20024 	sw	v0,36(sp)
    33f4:	0c000000 	jal	0 <func_80B533B0>
    33f8:	02002025 	move	a0,s0
    33fc:	02002025 	move	a0,s0
    3400:	0c000000 	jal	0 <func_80B533B0>
    3404:	8fa50024 	lw	a1,36(sp)
    3408:	8fbf001c 	lw	ra,28(sp)
    340c:	8fb00018 	lw	s0,24(sp)
    3410:	27bd0028 	addiu	sp,sp,40
    3414:	03e00008 	jr	ra
    3418:	00000000 	nop

0000341c <func_80B567CC>:
    341c:	27bdffe0 	addiu	sp,sp,-32
    3420:	afbf001c 	sw	ra,28(sp)
    3424:	afb00018 	sw	s0,24(sp)
    3428:	00808025 	move	s0,a0
    342c:	0c000000 	jal	0 <func_80B533B0>
    3430:	afa50024 	sw	a1,36(sp)
    3434:	02002025 	move	a0,s0
    3438:	0c000000 	jal	0 <func_80B533B0>
    343c:	8fa50024 	lw	a1,36(sp)
    3440:	02002025 	move	a0,s0
    3444:	0c000000 	jal	0 <func_80B533B0>
    3448:	8fa50024 	lw	a1,36(sp)
    344c:	0c000000 	jal	0 <func_80B533B0>
    3450:	02002025 	move	a0,s0
    3454:	0c000000 	jal	0 <func_80B533B0>
    3458:	02002025 	move	a0,s0
    345c:	02002025 	move	a0,s0
    3460:	0c000000 	jal	0 <func_80B533B0>
    3464:	8fa50024 	lw	a1,36(sp)
    3468:	8fbf001c 	lw	ra,28(sp)
    346c:	8fb00018 	lw	s0,24(sp)
    3470:	27bd0020 	addiu	sp,sp,32
    3474:	03e00008 	jr	ra
    3478:	00000000 	nop

0000347c <func_80B5682C>:
    347c:	27bdffe0 	addiu	sp,sp,-32
    3480:	afbf001c 	sw	ra,28(sp)
    3484:	afb10018 	sw	s1,24(sp)
    3488:	afb00014 	sw	s0,20(sp)
    348c:	00808025 	move	s0,a0
    3490:	0c000000 	jal	0 <func_80B533B0>
    3494:	00a08825 	move	s1,a1
    3498:	02002025 	move	a0,s0
    349c:	0c000000 	jal	0 <func_80B533B0>
    34a0:	02202825 	move	a1,s1
    34a4:	02002025 	move	a0,s0
    34a8:	0c000000 	jal	0 <func_80B533B0>
    34ac:	02202825 	move	a1,s1
    34b0:	02002025 	move	a0,s0
    34b4:	0c000000 	jal	0 <func_80B533B0>
    34b8:	02202825 	move	a1,s1
    34bc:	0c000000 	jal	0 <func_80B533B0>
    34c0:	02002025 	move	a0,s0
    34c4:	0c000000 	jal	0 <func_80B533B0>
    34c8:	02002025 	move	a0,s0
    34cc:	02002025 	move	a0,s0
    34d0:	0c000000 	jal	0 <func_80B533B0>
    34d4:	00402825 	move	a1,v0
    34d8:	02002025 	move	a0,s0
    34dc:	0c000000 	jal	0 <func_80B533B0>
    34e0:	02202825 	move	a1,s1
    34e4:	02002025 	move	a0,s0
    34e8:	0c000000 	jal	0 <func_80B533B0>
    34ec:	02202825 	move	a1,s1
    34f0:	8fbf001c 	lw	ra,28(sp)
    34f4:	8fb00014 	lw	s0,20(sp)
    34f8:	8fb10018 	lw	s1,24(sp)
    34fc:	03e00008 	jr	ra
    3500:	27bd0020 	addiu	sp,sp,32

00003504 <func_80B568B4>:
    3504:	27bdffe0 	addiu	sp,sp,-32
    3508:	afbf001c 	sw	ra,28(sp)
    350c:	afb00018 	sw	s0,24(sp)
    3510:	00808025 	move	s0,a0
    3514:	0c000000 	jal	0 <func_80B533B0>
    3518:	afa50024 	sw	a1,36(sp)
    351c:	0c000000 	jal	0 <func_80B533B0>
    3520:	02002025 	move	a0,s0
    3524:	02002025 	move	a0,s0
    3528:	0c000000 	jal	0 <func_80B533B0>
    352c:	8fa50024 	lw	a1,36(sp)
    3530:	02002025 	move	a0,s0
    3534:	0c000000 	jal	0 <func_80B533B0>
    3538:	8fa50024 	lw	a1,36(sp)
    353c:	0c000000 	jal	0 <func_80B533B0>
    3540:	02002025 	move	a0,s0
    3544:	0c000000 	jal	0 <func_80B533B0>
    3548:	02002025 	move	a0,s0
    354c:	02002025 	move	a0,s0
    3550:	0c000000 	jal	0 <func_80B533B0>
    3554:	8fa50024 	lw	a1,36(sp)
    3558:	8fbf001c 	lw	ra,28(sp)
    355c:	8fb00018 	lw	s0,24(sp)
    3560:	27bd0020 	addiu	sp,sp,32
    3564:	03e00008 	jr	ra
    3568:	00000000 	nop

0000356c <func_80B5691C>:
    356c:	27bdffe0 	addiu	sp,sp,-32
    3570:	afbf001c 	sw	ra,28(sp)
    3574:	afb00018 	sw	s0,24(sp)
    3578:	00808025 	move	s0,a0
    357c:	0c000000 	jal	0 <func_80B533B0>
    3580:	afa50024 	sw	a1,36(sp)
    3584:	02002025 	move	a0,s0
    3588:	0c000000 	jal	0 <func_80B533B0>
    358c:	8fa50024 	lw	a1,36(sp)
    3590:	0c000000 	jal	0 <func_80B533B0>
    3594:	02002025 	move	a0,s0
    3598:	0c000000 	jal	0 <func_80B533B0>
    359c:	02002025 	move	a0,s0
    35a0:	02002025 	move	a0,s0
    35a4:	0c000000 	jal	0 <func_80B533B0>
    35a8:	00402825 	move	a1,v0
    35ac:	02002025 	move	a0,s0
    35b0:	0c000000 	jal	0 <func_80B533B0>
    35b4:	8fa50024 	lw	a1,36(sp)
    35b8:	8fbf001c 	lw	ra,28(sp)
    35bc:	8fb00018 	lw	s0,24(sp)
    35c0:	27bd0020 	addiu	sp,sp,32
    35c4:	03e00008 	jr	ra
    35c8:	00000000 	nop

000035cc <func_80B5697C>:
    35cc:	27bdffe0 	addiu	sp,sp,-32
    35d0:	afbf001c 	sw	ra,28(sp)
    35d4:	afb00018 	sw	s0,24(sp)
    35d8:	00808025 	move	s0,a0
    35dc:	0c000000 	jal	0 <func_80B533B0>
    35e0:	afa50024 	sw	a1,36(sp)
    35e4:	02002025 	move	a0,s0
    35e8:	0c000000 	jal	0 <func_80B533B0>
    35ec:	8fa50024 	lw	a1,36(sp)
    35f0:	0c000000 	jal	0 <func_80B533B0>
    35f4:	02002025 	move	a0,s0
    35f8:	0c000000 	jal	0 <func_80B533B0>
    35fc:	02002025 	move	a0,s0
    3600:	02002025 	move	a0,s0
    3604:	0c000000 	jal	0 <func_80B533B0>
    3608:	00402825 	move	a1,v0
    360c:	0c000000 	jal	0 <func_80B533B0>
    3610:	02002025 	move	a0,s0
    3614:	02002025 	move	a0,s0
    3618:	0c000000 	jal	0 <func_80B533B0>
    361c:	8fa50024 	lw	a1,36(sp)
    3620:	8fbf001c 	lw	ra,28(sp)
    3624:	8fb00018 	lw	s0,24(sp)
    3628:	27bd0020 	addiu	sp,sp,32
    362c:	03e00008 	jr	ra
    3630:	00000000 	nop

00003634 <func_80B569E4>:
    3634:	27bdffe0 	addiu	sp,sp,-32
    3638:	afbf001c 	sw	ra,28(sp)
    363c:	afb10018 	sw	s1,24(sp)
    3640:	afb00014 	sw	s0,20(sp)
    3644:	00808025 	move	s0,a0
    3648:	0c000000 	jal	0 <func_80B533B0>
    364c:	00a08825 	move	s1,a1
    3650:	02002025 	move	a0,s0
    3654:	0c000000 	jal	0 <func_80B533B0>
    3658:	02202825 	move	a1,s1
    365c:	0c000000 	jal	0 <func_80B533B0>
    3660:	02002025 	move	a0,s0
    3664:	02002025 	move	a0,s0
    3668:	0c000000 	jal	0 <func_80B533B0>
    366c:	02202825 	move	a1,s1
    3670:	0c000000 	jal	0 <func_80B533B0>
    3674:	02002025 	move	a0,s0
    3678:	0c000000 	jal	0 <func_80B533B0>
    367c:	02002025 	move	a0,s0
    3680:	02002025 	move	a0,s0
    3684:	0c000000 	jal	0 <func_80B533B0>
    3688:	00402825 	move	a1,v0
    368c:	02002025 	move	a0,s0
    3690:	0c000000 	jal	0 <func_80B533B0>
    3694:	02202825 	move	a1,s1
    3698:	02002025 	move	a0,s0
    369c:	0c000000 	jal	0 <func_80B533B0>
    36a0:	02202825 	move	a1,s1
    36a4:	8fbf001c 	lw	ra,28(sp)
    36a8:	8fb00014 	lw	s0,20(sp)
    36ac:	8fb10018 	lw	s1,24(sp)
    36b0:	03e00008 	jr	ra
    36b4:	27bd0020 	addiu	sp,sp,32

000036b8 <func_80B56A68>:
    36b8:	27bdffd8 	addiu	sp,sp,-40
    36bc:	afbf001c 	sw	ra,28(sp)
    36c0:	afb00018 	sw	s0,24(sp)
    36c4:	00808025 	move	s0,a0
    36c8:	0c000000 	jal	0 <func_80B533B0>
    36cc:	afa5002c 	sw	a1,44(sp)
    36d0:	02002025 	move	a0,s0
    36d4:	0c000000 	jal	0 <func_80B533B0>
    36d8:	8fa5002c 	lw	a1,44(sp)
    36dc:	0c000000 	jal	0 <func_80B533B0>
    36e0:	02002025 	move	a0,s0
    36e4:	02002025 	move	a0,s0
    36e8:	0c000000 	jal	0 <func_80B533B0>
    36ec:	8fa5002c 	lw	a1,44(sp)
    36f0:	0c000000 	jal	0 <func_80B533B0>
    36f4:	02002025 	move	a0,s0
    36f8:	0c000000 	jal	0 <func_80B533B0>
    36fc:	02002025 	move	a0,s0
    3700:	afa20024 	sw	v0,36(sp)
    3704:	02002025 	move	a0,s0
    3708:	0c000000 	jal	0 <func_80B533B0>
    370c:	8fa5002c 	lw	a1,44(sp)
    3710:	02002025 	move	a0,s0
    3714:	0c000000 	jal	0 <func_80B533B0>
    3718:	8fa50024 	lw	a1,36(sp)
    371c:	8fbf001c 	lw	ra,28(sp)
    3720:	8fb00018 	lw	s0,24(sp)
    3724:	27bd0028 	addiu	sp,sp,40
    3728:	03e00008 	jr	ra
    372c:	00000000 	nop

00003730 <func_80B56AE0>:
    3730:	27bdffe0 	addiu	sp,sp,-32
    3734:	afbf001c 	sw	ra,28(sp)
    3738:	afb00018 	sw	s0,24(sp)
    373c:	00808025 	move	s0,a0
    3740:	0c000000 	jal	0 <func_80B533B0>
    3744:	afa50024 	sw	a1,36(sp)
    3748:	02002025 	move	a0,s0
    374c:	0c000000 	jal	0 <func_80B533B0>
    3750:	8fa50024 	lw	a1,36(sp)
    3754:	0c000000 	jal	0 <func_80B533B0>
    3758:	02002025 	move	a0,s0
    375c:	02002025 	move	a0,s0
    3760:	0c000000 	jal	0 <func_80B533B0>
    3764:	8fa50024 	lw	a1,36(sp)
    3768:	0c000000 	jal	0 <func_80B533B0>
    376c:	02002025 	move	a0,s0
    3770:	0c000000 	jal	0 <func_80B533B0>
    3774:	02002025 	move	a0,s0
    3778:	02002025 	move	a0,s0
    377c:	0c000000 	jal	0 <func_80B533B0>
    3780:	00402825 	move	a1,v0
    3784:	02002025 	move	a0,s0
    3788:	0c000000 	jal	0 <func_80B533B0>
    378c:	8fa50024 	lw	a1,36(sp)
    3790:	8fbf001c 	lw	ra,28(sp)
    3794:	8fb00018 	lw	s0,24(sp)
    3798:	27bd0020 	addiu	sp,sp,32
    379c:	03e00008 	jr	ra
    37a0:	00000000 	nop

000037a4 <func_80B56B54>:
    37a4:	27bdffe0 	addiu	sp,sp,-32
    37a8:	afbf001c 	sw	ra,28(sp)
    37ac:	afb00018 	sw	s0,24(sp)
    37b0:	00808025 	move	s0,a0
    37b4:	0c000000 	jal	0 <func_80B533B0>
    37b8:	afa50024 	sw	a1,36(sp)
    37bc:	02002025 	move	a0,s0
    37c0:	0c000000 	jal	0 <func_80B533B0>
    37c4:	8fa50024 	lw	a1,36(sp)
    37c8:	0c000000 	jal	0 <func_80B533B0>
    37cc:	02002025 	move	a0,s0
    37d0:	0c000000 	jal	0 <func_80B533B0>
    37d4:	02002025 	move	a0,s0
    37d8:	02002025 	move	a0,s0
    37dc:	0c000000 	jal	0 <func_80B533B0>
    37e0:	8fa50024 	lw	a1,36(sp)
    37e4:	8fbf001c 	lw	ra,28(sp)
    37e8:	8fb00018 	lw	s0,24(sp)
    37ec:	27bd0020 	addiu	sp,sp,32
    37f0:	03e00008 	jr	ra
    37f4:	00000000 	nop

000037f8 <func_80B56BA8>:
    37f8:	27bdffe0 	addiu	sp,sp,-32
    37fc:	afbf001c 	sw	ra,28(sp)
    3800:	afb10018 	sw	s1,24(sp)
    3804:	afb00014 	sw	s0,20(sp)
    3808:	00808025 	move	s0,a0
    380c:	0c000000 	jal	0 <func_80B533B0>
    3810:	00a08825 	move	s1,a1
    3814:	02002025 	move	a0,s0
    3818:	0c000000 	jal	0 <func_80B533B0>
    381c:	02202825 	move	a1,s1
    3820:	02002025 	move	a0,s0
    3824:	0c000000 	jal	0 <func_80B533B0>
    3828:	02202825 	move	a1,s1
    382c:	0c000000 	jal	0 <func_80B533B0>
    3830:	02002025 	move	a0,s0
    3834:	0c000000 	jal	0 <func_80B533B0>
    3838:	02002025 	move	a0,s0
    383c:	02002025 	move	a0,s0
    3840:	0c000000 	jal	0 <func_80B533B0>
    3844:	00402825 	move	a1,v0
    3848:	02002025 	move	a0,s0
    384c:	0c000000 	jal	0 <func_80B533B0>
    3850:	02202825 	move	a1,s1
    3854:	02002025 	move	a0,s0
    3858:	0c000000 	jal	0 <func_80B533B0>
    385c:	02202825 	move	a1,s1
    3860:	8fbf001c 	lw	ra,28(sp)
    3864:	8fb00014 	lw	s0,20(sp)
    3868:	8fb10018 	lw	s1,24(sp)
    386c:	03e00008 	jr	ra
    3870:	27bd0020 	addiu	sp,sp,32

00003874 <func_80B56C24>:
    3874:	27bdffe0 	addiu	sp,sp,-32
    3878:	afbf001c 	sw	ra,28(sp)
    387c:	afb00018 	sw	s0,24(sp)
    3880:	00808025 	move	s0,a0
    3884:	0c000000 	jal	0 <func_80B533B0>
    3888:	afa50024 	sw	a1,36(sp)
    388c:	02002025 	move	a0,s0
    3890:	0c000000 	jal	0 <func_80B533B0>
    3894:	8fa50024 	lw	a1,36(sp)
    3898:	02002025 	move	a0,s0
    389c:	0c000000 	jal	0 <func_80B533B0>
    38a0:	8fa50024 	lw	a1,36(sp)
    38a4:	0c000000 	jal	0 <func_80B533B0>
    38a8:	02002025 	move	a0,s0
    38ac:	0c000000 	jal	0 <func_80B533B0>
    38b0:	02002025 	move	a0,s0
    38b4:	02002025 	move	a0,s0
    38b8:	0c000000 	jal	0 <func_80B533B0>
    38bc:	8fa50024 	lw	a1,36(sp)
    38c0:	8fbf001c 	lw	ra,28(sp)
    38c4:	8fb00018 	lw	s0,24(sp)
    38c8:	27bd0020 	addiu	sp,sp,32
    38cc:	03e00008 	jr	ra
    38d0:	00000000 	nop

000038d4 <func_80B56C84>:
    38d4:	27bdffe0 	addiu	sp,sp,-32
    38d8:	afbf001c 	sw	ra,28(sp)
    38dc:	afb00018 	sw	s0,24(sp)
    38e0:	00808025 	move	s0,a0
    38e4:	0c000000 	jal	0 <func_80B533B0>
    38e8:	afa50024 	sw	a1,36(sp)
    38ec:	02002025 	move	a0,s0
    38f0:	0c000000 	jal	0 <func_80B533B0>
    38f4:	8fa50024 	lw	a1,36(sp)
    38f8:	0c000000 	jal	0 <func_80B533B0>
    38fc:	02002025 	move	a0,s0
    3900:	0c000000 	jal	0 <func_80B533B0>
    3904:	02002025 	move	a0,s0
    3908:	02002025 	move	a0,s0
    390c:	0c000000 	jal	0 <func_80B533B0>
    3910:	00402825 	move	a1,v0
    3914:	02002025 	move	a0,s0
    3918:	0c000000 	jal	0 <func_80B533B0>
    391c:	8fa50024 	lw	a1,36(sp)
    3920:	8fbf001c 	lw	ra,28(sp)
    3924:	8fb00018 	lw	s0,24(sp)
    3928:	27bd0020 	addiu	sp,sp,32
    392c:	03e00008 	jr	ra
    3930:	00000000 	nop

00003934 <func_80B56CE4>:
    3934:	27bdffe0 	addiu	sp,sp,-32
    3938:	afbf001c 	sw	ra,28(sp)
    393c:	afb00018 	sw	s0,24(sp)
    3940:	00808025 	move	s0,a0
    3944:	0c000000 	jal	0 <func_80B533B0>
    3948:	afa50024 	sw	a1,36(sp)
    394c:	02002025 	move	a0,s0
    3950:	0c000000 	jal	0 <func_80B533B0>
    3954:	8fa50024 	lw	a1,36(sp)
    3958:	0c000000 	jal	0 <func_80B533B0>
    395c:	02002025 	move	a0,s0
    3960:	0c000000 	jal	0 <func_80B533B0>
    3964:	02002025 	move	a0,s0
    3968:	02002025 	move	a0,s0
    396c:	0c000000 	jal	0 <func_80B533B0>
    3970:	00402825 	move	a1,v0
    3974:	02002025 	move	a0,s0
    3978:	0c000000 	jal	0 <func_80B533B0>
    397c:	8fa50024 	lw	a1,36(sp)
    3980:	8fbf001c 	lw	ra,28(sp)
    3984:	8fb00018 	lw	s0,24(sp)
    3988:	27bd0020 	addiu	sp,sp,32
    398c:	03e00008 	jr	ra
    3990:	00000000 	nop

00003994 <func_80B56D44>:
    3994:	27bdffe0 	addiu	sp,sp,-32
    3998:	afbf001c 	sw	ra,28(sp)
    399c:	afb00018 	sw	s0,24(sp)
    39a0:	00808025 	move	s0,a0
    39a4:	0c000000 	jal	0 <func_80B533B0>
    39a8:	afa50024 	sw	a1,36(sp)
    39ac:	02002025 	move	a0,s0
    39b0:	0c000000 	jal	0 <func_80B533B0>
    39b4:	8fa50024 	lw	a1,36(sp)
    39b8:	0c000000 	jal	0 <func_80B533B0>
    39bc:	02002025 	move	a0,s0
    39c0:	0c000000 	jal	0 <func_80B533B0>
    39c4:	02002025 	move	a0,s0
    39c8:	02002025 	move	a0,s0
    39cc:	0c000000 	jal	0 <func_80B533B0>
    39d0:	00402825 	move	a1,v0
    39d4:	02002025 	move	a0,s0
    39d8:	0c000000 	jal	0 <func_80B533B0>
    39dc:	8fa50024 	lw	a1,36(sp)
    39e0:	8fbf001c 	lw	ra,28(sp)
    39e4:	8fb00018 	lw	s0,24(sp)
    39e8:	27bd0020 	addiu	sp,sp,32
    39ec:	03e00008 	jr	ra
    39f0:	00000000 	nop

000039f4 <func_80B56DA4>:
    39f4:	27bdffe8 	addiu	sp,sp,-24
    39f8:	afbf0014 	sw	ra,20(sp)
    39fc:	afa40018 	sw	a0,24(sp)
    3a00:	0c000000 	jal	0 <func_80B533B0>
    3a04:	240428d9 	li	a0,10457
    3a08:	8fbf0014 	lw	ra,20(sp)
    3a0c:	27bd0018 	addiu	sp,sp,24
    3a10:	03e00008 	jr	ra
    3a14:	00000000 	nop

00003a18 <func_80B56DC8>:
    3a18:	27bdffe8 	addiu	sp,sp,-24
    3a1c:	afbf0014 	sw	ra,20(sp)
    3a20:	248400e4 	addiu	a0,a0,228
    3a24:	0c000000 	jal	0 <func_80B533B0>
    3a28:	24056879 	li	a1,26745
    3a2c:	8fbf0014 	lw	ra,20(sp)
    3a30:	27bd0018 	addiu	sp,sp,24
    3a34:	03e00008 	jr	ra
    3a38:	00000000 	nop

00003a3c <func_80B56DEC>:
    3a3c:	27bdffe8 	addiu	sp,sp,-24
    3a40:	afbf0014 	sw	ra,20(sp)
    3a44:	908e014d 	lbu	t6,333(a0)
    3a48:	00803025 	move	a2,a0
    3a4c:	24010002 	li	at,2
    3a50:	15c10009 	bne	t6,at,3a78 <func_80B56DEC+0x3c>
    3a54:	2484014c 	addiu	a0,a0,332
    3a58:	3c054110 	lui	a1,0x4110
    3a5c:	0c000000 	jal	0 <func_80B533B0>
    3a60:	afa60018 	sw	a2,24(sp)
    3a64:	10400004 	beqz	v0,3a78 <func_80B56DEC+0x3c>
    3a68:	8fa60018 	lw	a2,24(sp)
    3a6c:	24c400e4 	addiu	a0,a2,228
    3a70:	0c000000 	jal	0 <func_80B533B0>
    3a74:	24056877 	li	a1,26743
    3a78:	8fbf0014 	lw	ra,20(sp)
    3a7c:	27bd0018 	addiu	sp,sp,24
    3a80:	03e00008 	jr	ra
    3a84:	00000000 	nop

00003a88 <func_80B56E38>:
    3a88:	27bdffc8 	addiu	sp,sp,-56
    3a8c:	afb00018 	sw	s0,24(sp)
    3a90:	00808025 	move	s0,a0
    3a94:	afbf001c 	sw	ra,28(sp)
    3a98:	afa5003c 	sw	a1,60(sp)
    3a9c:	2484014c 	addiu	a0,a0,332
    3aa0:	afa40020 	sw	a0,32(sp)
    3aa4:	0c000000 	jal	0 <func_80B533B0>
    3aa8:	3c0540c0 	lui	a1,0x40c0
    3aac:	14400005 	bnez	v0,3ac4 <func_80B56E38+0x3c>
    3ab0:	8fa40020 	lw	a0,32(sp)
    3ab4:	0c000000 	jal	0 <func_80B533B0>
    3ab8:	24050000 	li	a1,0
    3abc:	5040000e 	beqzl	v0,3af8 <func_80B56E38+0x70>
    3ac0:	8fbf001c 	lw	ra,28(sp)
    3ac4:	960e0088 	lhu	t6,136(s0)
    3ac8:	8fa4003c 	lw	a0,60(sp)
    3acc:	31cf0001 	andi	t7,t6,0x1
    3ad0:	11e00008 	beqz	t7,3af4 <func_80B56E38+0x6c>
    3ad4:	248407c0 	addiu	a0,a0,1984
    3ad8:	8e050078 	lw	a1,120(s0)
    3adc:	0c000000 	jal	0 <func_80B533B0>
    3ae0:	9206007d 	lbu	a2,125(s0)
    3ae4:	24430800 	addiu	v1,v0,2048
    3ae8:	3065ffff 	andi	a1,v1,0xffff
    3aec:	0c000000 	jal	0 <func_80B533B0>
    3af0:	260400e4 	addiu	a0,s0,228
    3af4:	8fbf001c 	lw	ra,28(sp)
    3af8:	8fb00018 	lw	s0,24(sp)
    3afc:	27bd0038 	addiu	sp,sp,56
    3b00:	03e00008 	jr	ra
    3b04:	00000000 	nop

00003b08 <func_80B56EB8>:
    3b08:	27bdffe8 	addiu	sp,sp,-24
    3b0c:	afbf0014 	sw	ra,20(sp)
    3b10:	0c000000 	jal	0 <func_80B533B0>
    3b14:	afa5001c 	sw	a1,28(sp)
    3b18:	8fa4001c 	lw	a0,28(sp)
    3b1c:	0c000000 	jal	0 <func_80B533B0>
    3b20:	00402825 	move	a1,v0
    3b24:	8fbf0014 	lw	ra,20(sp)
    3b28:	27bd0018 	addiu	sp,sp,24
    3b2c:	03e00008 	jr	ra
    3b30:	00000000 	nop

00003b34 <func_80B56EE4>:
    3b34:	27bdffe8 	addiu	sp,sp,-24
    3b38:	afbf0014 	sw	ra,20(sp)
    3b3c:	0c000000 	jal	0 <func_80B533B0>
    3b40:	afa5001c 	sw	a1,28(sp)
    3b44:	8fa4001c 	lw	a0,28(sp)
    3b48:	0c000000 	jal	0 <func_80B533B0>
    3b4c:	00402825 	move	a1,v0
    3b50:	8fbf0014 	lw	ra,20(sp)
    3b54:	27bd0018 	addiu	sp,sp,24
    3b58:	03e00008 	jr	ra
    3b5c:	00000000 	nop

00003b60 <func_80B56F10>:
    3b60:	27bdffe0 	addiu	sp,sp,-32
    3b64:	3c030001 	lui	v1,0x1
    3b68:	afbf0014 	sw	ra,20(sp)
    3b6c:	00651821 	addu	v1,v1,a1
    3b70:	8c631e08 	lw	v1,7688(v1)
    3b74:	00803025 	move	a2,a0
    3b78:	10600011 	beqz	v1,3bc0 <func_80B56F10+0x60>
    3b7c:	00000000 	nop
    3b80:	afa30018 	sw	v1,24(sp)
    3b84:	0c000000 	jal	0 <func_80B533B0>
    3b88:	afa60020 	sw	a2,32(sp)
    3b8c:	8fa30018 	lw	v1,24(sp)
    3b90:	8fa60020 	lw	a2,32(sp)
    3b94:	000270c0 	sll	t6,v0,0x3
    3b98:	006e1821 	addu	v1,v1,t6
    3b9c:	acc3030c 	sw	v1,780(a2)
    3ba0:	906f0000 	lbu	t7,0(v1)
    3ba4:	3c040000 	lui	a0,0x0
    3ba8:	24840000 	addiu	a0,a0,0
    3bac:	00402825 	move	a1,v0
    3bb0:	0c000000 	jal	0 <func_80B533B0>
    3bb4:	accf0310 	sw	t7,784(a2)
    3bb8:	10000005 	b	3bd0 <func_80B56F10+0x70>
    3bbc:	8fbf0014 	lw	ra,20(sp)
    3bc0:	3c040000 	lui	a0,0x0
    3bc4:	0c000000 	jal	0 <func_80B533B0>
    3bc8:	24840000 	addiu	a0,a0,0
    3bcc:	8fbf0014 	lw	ra,20(sp)
    3bd0:	27bd0020 	addiu	sp,sp,32
    3bd4:	03e00008 	jr	ra
    3bd8:	00000000 	nop

00003bdc <func_80B56F8C>:
    3bdc:	8c820310 	lw	v0,784(a0)
    3be0:	00a2082a 	slt	at,a1,v0
    3be4:	10200003 	beqz	at,3bf4 <func_80B56F8C+0x18>
    3be8:	00001025 	move	v0,zero
    3bec:	03e00008 	jr	ra
    3bf0:	24020001 	li	v0,1
    3bf4:	03e00008 	jr	ra
    3bf8:	00000000 	nop

00003bfc <func_80B56FAC>:
    3bfc:	27bdffe0 	addiu	sp,sp,-32
    3c00:	afbf0014 	sw	ra,20(sp)
    3c04:	afa50024 	sw	a1,36(sp)
    3c08:	8c86030c 	lw	a2,780(a0)
    3c0c:	50c00019 	beqzl	a2,3c74 <func_80B56FAC+0x78>
    3c10:	00001025 	move	v0,zero
    3c14:	0c000000 	jal	0 <func_80B533B0>
    3c18:	afa60018 	sw	a2,24(sp)
    3c1c:	10400014 	beqz	v0,3c70 <func_80B56FAC+0x74>
    3c20:	8fa60018 	lw	a2,24(sp)
    3c24:	8cc30004 	lw	v1,4(a2)
    3c28:	8faa0024 	lw	t2,36(sp)
    3c2c:	3c190000 	lui	t9,0x0
    3c30:	00037100 	sll	t6,v1,0x4
    3c34:	000e7f02 	srl	t7,t6,0x1c
    3c38:	000fc080 	sll	t8,t7,0x2
    3c3c:	0338c821 	addu	t9,t9,t8
    3c40:	8f390000 	lw	t9,0(t9)
    3c44:	3c0100ff 	lui	at,0xff
    3c48:	3421ffff 	ori	at,at,0xffff
    3c4c:	000a5880 	sll	t3,t2,0x2
    3c50:	00614024 	and	t0,v1,at
    3c54:	016a5823 	subu	t3,t3,t2
    3c58:	000b5840 	sll	t3,t3,0x1
    3c5c:	03284821 	addu	t1,t9,t0
    3c60:	012b2021 	addu	a0,t1,t3
    3c64:	3c018000 	lui	at,0x8000
    3c68:	10000002 	b	3c74 <func_80B56FAC+0x78>
    3c6c:	00811021 	addu	v0,a0,at
    3c70:	00001025 	move	v0,zero
    3c74:	8fbf0014 	lw	ra,20(sp)
    3c78:	27bd0020 	addiu	sp,sp,32
    3c7c:	03e00008 	jr	ra
    3c80:	00000000 	nop

00003c84 <func_80B57034>:
    3c84:	27bdffe0 	addiu	sp,sp,-32
    3c88:	afbf0014 	sw	ra,20(sp)
    3c8c:	afa40020 	sw	a0,32(sp)
    3c90:	0c000000 	jal	0 <func_80B533B0>
    3c94:	afa60028 	sw	a2,40(sp)
    3c98:	8fa40020 	lw	a0,32(sp)
    3c9c:	8fa50028 	lw	a1,40(sp)
    3ca0:	0c000000 	jal	0 <func_80B533B0>
    3ca4:	afa2001c 	sw	v0,28(sp)
    3ca8:	10400025 	beqz	v0,3d40 <func_80B57034+0xbc>
    3cac:	8fa3001c 	lw	v1,28(sp)
    3cb0:	50600024 	beqzl	v1,3d44 <func_80B57034+0xc0>
    3cb4:	00001025 	move	v0,zero
    3cb8:	844e0000 	lh	t6,0(v0)
    3cbc:	846f0000 	lh	t7,0(v1)
    3cc0:	44800000 	mtc1	zero,$f0
    3cc4:	84590004 	lh	t9,4(v0)
    3cc8:	01cfc023 	subu	t8,t6,t7
    3ccc:	44982000 	mtc1	t8,$f4
    3cd0:	84680004 	lh	t0,4(v1)
    3cd4:	46802320 	cvt.s.w	$f12,$f4
    3cd8:	03284823 	subu	t1,t9,t0
    3cdc:	44893000 	mtc1	t1,$f6
    3ce0:	00000000 	nop
    3ce4:	468033a0 	cvt.s.w	$f14,$f6
    3ce8:	46006032 	c.eq.s	$f12,$f0
    3cec:	00000000 	nop
    3cf0:	45000007 	bc1f	3d10 <func_80B57034+0x8c>
    3cf4:	00000000 	nop
    3cf8:	46007032 	c.eq.s	$f14,$f0
    3cfc:	00000000 	nop
    3d00:	45000003 	bc1f	3d10 <func_80B57034+0x8c>
    3d04:	00000000 	nop
    3d08:	1000000e 	b	3d44 <func_80B57034+0xc0>
    3d0c:	00001025 	move	v0,zero
    3d10:	0c000000 	jal	0 <func_80B533B0>
    3d14:	00000000 	nop
    3d18:	3c010000 	lui	at,0x0
    3d1c:	c4280000 	lwc1	$f8,0(at)
    3d20:	46080282 	mul.s	$f10,$f0,$f8
    3d24:	4600540d 	trunc.w.s	$f16,$f10
    3d28:	44038000 	mfc1	v1,$f16
    3d2c:	00000000 	nop
    3d30:	00031c00 	sll	v1,v1,0x10
    3d34:	00031c03 	sra	v1,v1,0x10
    3d38:	10000002 	b	3d44 <func_80B57034+0xc0>
    3d3c:	00601025 	move	v0,v1
    3d40:	00001025 	move	v0,zero
    3d44:	8fbf0014 	lw	ra,20(sp)
    3d48:	27bd0020 	addiu	sp,sp,32
    3d4c:	03e00008 	jr	ra
    3d50:	00000000 	nop

00003d54 <func_80B57104>:
    3d54:	27bdffe8 	addiu	sp,sp,-24
    3d58:	afbf0014 	sw	ra,20(sp)
    3d5c:	0c000000 	jal	0 <func_80B533B0>
    3d60:	afa40018 	sw	a0,24(sp)
    3d64:	1040001f 	beqz	v0,3de4 <func_80B57104+0x90>
    3d68:	8fa40018 	lw	a0,24(sp)
    3d6c:	844e0000 	lh	t6,0(v0)
    3d70:	c4880024 	lwc1	$f8,36(a0)
    3d74:	844f0004 	lh	t7,4(v0)
    3d78:	448e2000 	mtc1	t6,$f4
    3d7c:	44800000 	mtc1	zero,$f0
    3d80:	448f5000 	mtc1	t7,$f10
    3d84:	468021a0 	cvt.s.w	$f6,$f4
    3d88:	c492002c 	lwc1	$f18,44(a0)
    3d8c:	46805420 	cvt.s.w	$f16,$f10
    3d90:	46083301 	sub.s	$f12,$f6,$f8
    3d94:	46128381 	sub.s	$f14,$f16,$f18
    3d98:	46006032 	c.eq.s	$f12,$f0
    3d9c:	00000000 	nop
    3da0:	45000005 	bc1f	3db8 <func_80B57104+0x64>
    3da4:	00000000 	nop
    3da8:	46007032 	c.eq.s	$f14,$f0
    3dac:	00000000 	nop
    3db0:	4503000d 	bc1tl	3de8 <func_80B57104+0x94>
    3db4:	00001025 	move	v0,zero
    3db8:	0c000000 	jal	0 <func_80B533B0>
    3dbc:	00000000 	nop
    3dc0:	3c010000 	lui	at,0x0
    3dc4:	c4240000 	lwc1	$f4,0(at)
    3dc8:	46040182 	mul.s	$f6,$f0,$f4
    3dcc:	4600320d 	trunc.w.s	$f8,$f6
    3dd0:	44024000 	mfc1	v0,$f8
    3dd4:	00000000 	nop
    3dd8:	00021400 	sll	v0,v0,0x10
    3ddc:	10000002 	b	3de8 <func_80B57104+0x94>
    3de0:	00021403 	sra	v0,v0,0x10
    3de4:	00001025 	move	v0,zero
    3de8:	8fbf0014 	lw	ra,20(sp)
    3dec:	27bd0018 	addiu	sp,sp,24
    3df0:	03e00008 	jr	ra
    3df4:	00000000 	nop

00003df8 <func_80B571A8>:
    3df8:	27bdffd8 	addiu	sp,sp,-40
    3dfc:	afbf0014 	sw	ra,20(sp)
    3e00:	8c870314 	lw	a3,788(a0)
    3e04:	afa40028 	sw	a0,40(sp)
    3e08:	24e60001 	addiu	a2,a3,1
    3e0c:	00c02825 	move	a1,a2
    3e10:	afa60018 	sw	a2,24(sp)
    3e14:	0c000000 	jal	0 <func_80B533B0>
    3e18:	afa70020 	sw	a3,32(sp)
    3e1c:	8fa40028 	lw	a0,40(sp)
    3e20:	8fa60018 	lw	a2,24(sp)
    3e24:	14400003 	bnez	v0,3e34 <func_80B571A8+0x3c>
    3e28:	8fa70020 	lw	a3,32(sp)
    3e2c:	10000003 	b	3e3c <func_80B571A8+0x44>
    3e30:	848200b6 	lh	v0,182(a0)
    3e34:	0c000000 	jal	0 <func_80B533B0>
    3e38:	00e02825 	move	a1,a3
    3e3c:	8fbf0014 	lw	ra,20(sp)
    3e40:	27bd0028 	addiu	sp,sp,40
    3e44:	03e00008 	jr	ra
    3e48:	00000000 	nop

00003e4c <func_80B571FC>:
    3e4c:	27bdffe0 	addiu	sp,sp,-32
    3e50:	afbf0014 	sw	ra,20(sp)
    3e54:	8c850314 	lw	a1,788(a0)
    3e58:	afa40020 	sw	a0,32(sp)
    3e5c:	0c000000 	jal	0 <func_80B533B0>
    3e60:	afa50018 	sw	a1,24(sp)
    3e64:	8fa40020 	lw	a0,32(sp)
    3e68:	14400003 	bnez	v0,3e78 <func_80B571FC+0x2c>
    3e6c:	8fa50018 	lw	a1,24(sp)
    3e70:	10000003 	b	3e80 <func_80B571FC+0x34>
    3e74:	848200b6 	lh	v0,182(a0)
    3e78:	0c000000 	jal	0 <func_80B533B0>
    3e7c:	00000000 	nop
    3e80:	8fbf0014 	lw	ra,20(sp)
    3e84:	27bd0020 	addiu	sp,sp,32
    3e88:	03e00008 	jr	ra
    3e8c:	00000000 	nop

00003e90 <func_80B57240>:
    3e90:	27bdffd0 	addiu	sp,sp,-48
    3e94:	afbf001c 	sw	ra,28(sp)
    3e98:	0c000000 	jal	0 <func_80B533B0>
    3e9c:	afa40030 	sw	a0,48(sp)
    3ea0:	8fa40030 	lw	a0,48(sp)
    3ea4:	00022c00 	sll	a1,v0,0x10
    3ea8:	240e03e8 	li	t6,1000
    3eac:	24840032 	addiu	a0,a0,50
    3eb0:	afa40024 	sw	a0,36(sp)
    3eb4:	afae0010 	sw	t6,16(sp)
    3eb8:	00052c03 	sra	a1,a1,0x10
    3ebc:	24060002 	li	a2,2
    3ec0:	0c000000 	jal	0 <func_80B533B0>
    3ec4:	24071900 	li	a3,6400
    3ec8:	8fa40024 	lw	a0,36(sp)
    3ecc:	8fb80030 	lw	t8,48(sp)
    3ed0:	848f0000 	lh	t7,0(a0)
    3ed4:	a70f00b6 	sh	t7,182(t8)
    3ed8:	8fbf001c 	lw	ra,28(sp)
    3edc:	27bd0030 	addiu	sp,sp,48
    3ee0:	03e00008 	jr	ra
    3ee4:	00000000 	nop

00003ee8 <func_80B57298>:
    3ee8:	27bdffd0 	addiu	sp,sp,-48
    3eec:	afbf001c 	sw	ra,28(sp)
    3ef0:	0c000000 	jal	0 <func_80B533B0>
    3ef4:	afa40030 	sw	a0,48(sp)
    3ef8:	8fa40030 	lw	a0,48(sp)
    3efc:	00022c00 	sll	a1,v0,0x10
    3f00:	240e03e8 	li	t6,1000
    3f04:	24840032 	addiu	a0,a0,50
    3f08:	afa40024 	sw	a0,36(sp)
    3f0c:	afae0010 	sw	t6,16(sp)
    3f10:	00052c03 	sra	a1,a1,0x10
    3f14:	24060002 	li	a2,2
    3f18:	0c000000 	jal	0 <func_80B533B0>
    3f1c:	24071900 	li	a3,6400
    3f20:	8fa40024 	lw	a0,36(sp)
    3f24:	8fb80030 	lw	t8,48(sp)
    3f28:	848f0000 	lh	t7,0(a0)
    3f2c:	a70f00b6 	sh	t7,182(t8)
    3f30:	8fbf001c 	lw	ra,28(sp)
    3f34:	27bd0030 	addiu	sp,sp,48
    3f38:	03e00008 	jr	ra
    3f3c:	00000000 	nop

00003f40 <func_80B572F0>:
    3f40:	848200a4 	lh	v0,164(a0)
    3f44:	2401000e 	li	at,14
    3f48:	54410004 	bnel	v0,at,3f5c <func_80B572F0+0x1c>
    3f4c:	2401001a 	li	at,26
    3f50:	03e00008 	jr	ra
    3f54:	240271a8 	li	v0,29096
    3f58:	2401001a 	li	at,26
    3f5c:	14410003 	bne	v0,at,3f6c <func_80B572F0+0x2c>
    3f60:	240371ab 	li	v1,29099
    3f64:	03e00008 	jr	ra
    3f68:	240271a9 	li	v0,29097
    3f6c:	03e00008 	jr	ra
    3f70:	00601025 	move	v0,v1

00003f74 <func_80B57324>:
    3f74:	27bdffe8 	addiu	sp,sp,-24
    3f78:	afbf0014 	sw	ra,20(sp)
    3f7c:	0c000000 	jal	0 <func_80B533B0>
    3f80:	00000000 	nop
    3f84:	10400003 	beqz	v0,3f94 <func_80B57324+0x20>
    3f88:	8fbf0014 	lw	ra,20(sp)
    3f8c:	10000002 	b	3f98 <func_80B57324+0x24>
    3f90:	24020001 	li	v0,1
    3f94:	00001025 	move	v0,zero
    3f98:	03e00008 	jr	ra
    3f9c:	27bd0018 	addiu	sp,sp,24

00003fa0 <func_80B57350>:
    3fa0:	27bdffe8 	addiu	sp,sp,-24
    3fa4:	afbf0014 	sw	ra,20(sp)
    3fa8:	afa5001c 	sw	a1,28(sp)
    3fac:	848f00b6 	lh	t7,182(a0)
    3fb0:	848e008a 	lh	t6,138(a0)
    3fb4:	00803025 	move	a2,a0
    3fb8:	01cf1023 	subu	v0,t6,t7
    3fbc:	00021400 	sll	v0,v0,0x10
    3fc0:	00021403 	sra	v0,v0,0x10
    3fc4:	04400003 	bltz	v0,3fd4 <func_80B57350+0x34>
    3fc8:	00021823 	negu	v1,v0
    3fcc:	10000001 	b	3fd4 <func_80B57350+0x34>
    3fd0:	00401825 	move	v1,v0
    3fd4:	28614301 	slti	at,v1,17153
    3fd8:	5020000c 	beqzl	at,400c <func_80B57350+0x6c>
    3fdc:	8fbf0014 	lw	ra,20(sp)
    3fe0:	8cd80004 	lw	t8,4(a2)
    3fe4:	37190009 	ori	t9,t8,0x9
    3fe8:	acd90004 	sw	t9,4(a2)
    3fec:	afa60018 	sw	a2,24(sp)
    3ff0:	0c000000 	jal	0 <func_80B533B0>
    3ff4:	8fa4001c 	lw	a0,28(sp)
    3ff8:	8fa40018 	lw	a0,24(sp)
    3ffc:	a482010e 	sh	v0,270(a0)
    4000:	0c000000 	jal	0 <func_80B533B0>
    4004:	8fa5001c 	lw	a1,28(sp)
    4008:	8fbf0014 	lw	ra,20(sp)
    400c:	27bd0018 	addiu	sp,sp,24
    4010:	03e00008 	jr	ra
    4014:	00000000 	nop

00004018 <func_80B573C8>:
    4018:	27bdffe8 	addiu	sp,sp,-24
    401c:	afbf0014 	sw	ra,20(sp)
    4020:	afa40018 	sw	a0,24(sp)
    4024:	0c000000 	jal	0 <func_80B533B0>
    4028:	24a420d8 	addiu	a0,a1,8408
    402c:	24010002 	li	at,2
    4030:	14410003 	bne	v0,at,4040 <func_80B573C8+0x28>
    4034:	8fbf0014 	lw	ra,20(sp)
    4038:	10000002 	b	4044 <func_80B573C8+0x2c>
    403c:	24020001 	li	v0,1
    4040:	00001025 	move	v0,zero
    4044:	03e00008 	jr	ra
    4048:	27bd0018 	addiu	sp,sp,24

0000404c <func_80B573FC>:
    404c:	afa60008 	sw	a2,8(sp)
    4050:	8ca21c44 	lw	v0,7236(a1)
    4054:	c48c0024 	lwc1	$f12,36(a0)
    4058:	c48e002c 	lwc1	$f14,44(a0)
    405c:	c4400024 	lwc1	$f0,36(v0)
    4060:	c442002c 	lwc1	$f2,44(v0)
    4064:	c7aa0008 	lwc1	$f10,8(sp)
    4068:	460c0401 	sub.s	$f16,$f0,$f12
    406c:	00001025 	move	v0,zero
    4070:	460e1481 	sub.s	$f18,$f2,$f14
    4074:	46108102 	mul.s	$f4,$f16,$f16
    4078:	00000000 	nop
    407c:	46129182 	mul.s	$f6,$f18,$f18
    4080:	46062200 	add.s	$f8,$f4,$f6
    4084:	460a5102 	mul.s	$f4,$f10,$f10
    4088:	4604403c 	c.lt.s	$f8,$f4
    408c:	00000000 	nop
    4090:	45000003 	bc1f	40a0 <func_80B573FC+0x54>
    4094:	00000000 	nop
    4098:	03e00008 	jr	ra
    409c:	24020001 	li	v0,1
    40a0:	03e00008 	jr	ra
    40a4:	00000000 	nop

000040a8 <func_80B57458>:
    40a8:	27bdffb8 	addiu	sp,sp,-72
    40ac:	afbf0014 	sw	ra,20(sp)
    40b0:	afa5004c 	sw	a1,76(sp)
    40b4:	c4840024 	lwc1	$f4,36(a0)
    40b8:	e7a40040 	swc1	$f4,64(sp)
    40bc:	8ca21c44 	lw	v0,7236(a1)
    40c0:	c480002c 	lwc1	$f0,44(a0)
    40c4:	c4460024 	lwc1	$f6,36(v0)
    40c8:	e7a6002c 	swc1	$f6,44(sp)
    40cc:	c442002c 	lwc1	$f2,44(v0)
    40d0:	afa40048 	sw	a0,72(sp)
    40d4:	e7a0003c 	swc1	$f0,60(sp)
    40d8:	0c000000 	jal	0 <func_80B533B0>
    40dc:	e7a20028 	swc1	$f2,40(sp)
    40e0:	c7a8002c 	lwc1	$f8,44(sp)
    40e4:	c7aa0040 	lwc1	$f10,64(sp)
    40e8:	44807000 	mtc1	zero,$f14
    40ec:	00021c00 	sll	v1,v0,0x10
    40f0:	460a4301 	sub.s	$f12,$f8,$f10
    40f4:	00031c03 	sra	v1,v1,0x10
    40f8:	8fa40048 	lw	a0,72(sp)
    40fc:	c7a0003c 	lwc1	$f0,60(sp)
    4100:	460e6032 	c.eq.s	$f12,$f14
    4104:	c7a20028 	lwc1	$f2,40(sp)
    4108:	45020009 	bc1fl	4130 <func_80B57458+0x88>
    410c:	46001381 	sub.s	$f14,$f2,$f0
    4110:	46001401 	sub.s	$f16,$f2,$f0
    4114:	460e8032 	c.eq.s	$f16,$f14
    4118:	00000000 	nop
    411c:	45020004 	bc1fl	4130 <func_80B57458+0x88>
    4120:	46001381 	sub.s	$f14,$f2,$f0
    4124:	1000001f 	b	41a4 <func_80B57458+0xfc>
    4128:	24020001 	li	v0,1
    412c:	46001381 	sub.s	$f14,$f2,$f0
    4130:	a7a3001c 	sh	v1,28(sp)
    4134:	0c000000 	jal	0 <func_80B533B0>
    4138:	afa40048 	sw	a0,72(sp)
    413c:	3c010000 	lui	at,0x0
    4140:	c4320000 	lwc1	$f18,0(at)
    4144:	87a3001c 	lh	v1,28(sp)
    4148:	8fa40048 	lw	a0,72(sp)
    414c:	46120102 	mul.s	$f4,$f0,$f18
    4150:	4600218d 	trunc.w.s	$f6,$f4
    4154:	44083000 	mfc1	t0,$f6
    4158:	00000000 	nop
    415c:	00681023 	subu	v0,v1,t0
    4160:	00021400 	sll	v0,v0,0x10
    4164:	00021403 	sra	v0,v0,0x10
    4168:	28411555 	slti	at,v0,5461
    416c:	50200004 	beqzl	at,4180 <func_80B57458+0xd8>
    4170:	28414000 	slti	at,v0,16384
    4174:	1000000b 	b	41a4 <func_80B57458+0xfc>
    4178:	24020001 	li	v0,1
    417c:	28414000 	slti	at,v0,16384
    4180:	10200007 	beqz	at,41a0 <func_80B57458+0xf8>
    4184:	8fa5004c 	lw	a1,76(sp)
    4188:	0c000000 	jal	0 <func_80B533B0>
    418c:	3c064316 	lui	a2,0x4316
    4190:	50400004 	beqzl	v0,41a4 <func_80B57458+0xfc>
    4194:	00001025 	move	v0,zero
    4198:	10000002 	b	41a4 <func_80B57458+0xfc>
    419c:	24020001 	li	v0,1
    41a0:	00001025 	move	v0,zero
    41a4:	8fbf0014 	lw	ra,20(sp)
    41a8:	27bd0048 	addiu	sp,sp,72
    41ac:	03e00008 	jr	ra
    41b0:	00000000 	nop

000041b4 <func_80B57564>:
    41b4:	27bdffe8 	addiu	sp,sp,-24
    41b8:	afbf0014 	sw	ra,20(sp)
    41bc:	afa40018 	sw	a0,24(sp)
    41c0:	afa5001c 	sw	a1,28(sp)
    41c4:	0c000000 	jal	0 <func_80B533B0>
    41c8:	3c064248 	lui	a2,0x4248
    41cc:	14400005 	bnez	v0,41e4 <func_80B57564+0x30>
    41d0:	8fa40018 	lw	a0,24(sp)
    41d4:	0c000000 	jal	0 <func_80B533B0>
    41d8:	8fa5001c 	lw	a1,28(sp)
    41dc:	50400004 	beqzl	v0,41f0 <func_80B57564+0x3c>
    41e0:	00001025 	move	v0,zero
    41e4:	10000002 	b	41f0 <func_80B57564+0x3c>
    41e8:	24020001 	li	v0,1
    41ec:	00001025 	move	v0,zero
    41f0:	8fbf0014 	lw	ra,20(sp)
    41f4:	27bd0018 	addiu	sp,sp,24
    41f8:	03e00008 	jr	ra
    41fc:	00000000 	nop

00004200 <func_80B575B0>:
    4200:	27bdffe8 	addiu	sp,sp,-24
    4204:	afbf0014 	sw	ra,20(sp)
    4208:	0c000000 	jal	0 <func_80B533B0>
    420c:	3c064316 	lui	a2,0x4316
    4210:	8fbf0014 	lw	ra,20(sp)
    4214:	27bd0018 	addiu	sp,sp,24
    4218:	03e00008 	jr	ra
    421c:	00000000 	nop

00004220 <func_80B575D0>:
    4220:	27bdffe8 	addiu	sp,sp,-24
    4224:	afbf0014 	sw	ra,20(sp)
    4228:	0c000000 	jal	0 <func_80B533B0>
    422c:	3c064248 	lui	a2,0x4248
    4230:	8fbf0014 	lw	ra,20(sp)
    4234:	27bd0018 	addiu	sp,sp,24
    4238:	03e00008 	jr	ra
    423c:	00000000 	nop

00004240 <func_80B575F0>:
    4240:	27bdffe8 	addiu	sp,sp,-24
    4244:	afbf0014 	sw	ra,20(sp)
    4248:	afa40018 	sw	a0,24(sp)
    424c:	84a200a4 	lh	v0,164(a1)
    4250:	2401000e 	li	at,14
    4254:	5441000d 	bnel	v0,at,428c <func_80B575F0+0x4c>
    4258:	00001025 	move	v0,zero
    425c:	0c000000 	jal	0 <func_80B533B0>
    4260:	00000000 	nop
    4264:	24010026 	li	at,38
    4268:	14410007 	bne	v0,at,4288 <func_80B575F0+0x48>
    426c:	8fae0018 	lw	t6,24(sp)
    4270:	8dc20314 	lw	v0,788(t6)
    4274:	24010001 	li	at,1
    4278:	54410004 	bnel	v0,at,428c <func_80B575F0+0x4c>
    427c:	00001025 	move	v0,zero
    4280:	10000002 	b	428c <func_80B575F0+0x4c>
    4284:	24020001 	li	v0,1
    4288:	00001025 	move	v0,zero
    428c:	8fbf0014 	lw	ra,20(sp)
    4290:	27bd0018 	addiu	sp,sp,24
    4294:	03e00008 	jr	ra
    4298:	00000000 	nop

0000429c <func_80B5764C>:
    429c:	27bdffe0 	addiu	sp,sp,-32
    42a0:	afbf001c 	sw	ra,28(sp)
    42a4:	afa40020 	sw	a0,32(sp)
    42a8:	afa50024 	sw	a1,36(sp)
    42ac:	84a200a4 	lh	v0,164(a1)
    42b0:	2401000e 	li	at,14
    42b4:	54410015 	bnel	v0,at,430c <func_80B5764C+0x70>
    42b8:	8fbf001c 	lw	ra,28(sp)
    42bc:	0c000000 	jal	0 <func_80B533B0>
    42c0:	00000000 	nop
    42c4:	24010026 	li	at,38
    42c8:	1441000f 	bne	v0,at,4308 <func_80B5764C+0x6c>
    42cc:	8faf0020 	lw	t7,32(sp)
    42d0:	8de20314 	lw	v0,788(t7)
    42d4:	24010001 	li	at,1
    42d8:	24420001 	addiu	v0,v0,1
    42dc:	5441000b 	bnel	v0,at,430c <func_80B5764C+0x70>
    42e0:	8fbf001c 	lw	ra,28(sp)
    42e4:	0c000000 	jal	0 <func_80B533B0>
    42e8:	8fa40024 	lw	a0,36(sp)
    42ec:	14400006 	bnez	v0,4308 <func_80B5764C+0x6c>
    42f0:	8fa40024 	lw	a0,36(sp)
    42f4:	240503e8 	li	a1,1000
    42f8:	24060028 	li	a2,40
    42fc:	8fa70020 	lw	a3,32(sp)
    4300:	0c000000 	jal	0 <func_80B533B0>
    4304:	afa00010 	sw	zero,16(sp)
    4308:	8fbf001c 	lw	ra,28(sp)
    430c:	27bd0020 	addiu	sp,sp,32
    4310:	03e00008 	jr	ra
    4314:	00000000 	nop

00004318 <func_80B576C8>:
    4318:	27bdffe8 	addiu	sp,sp,-24
    431c:	afbf0014 	sw	ra,20(sp)
    4320:	0c000000 	jal	0 <func_80B533B0>
    4324:	afa40018 	sw	a0,24(sp)
    4328:	10400007 	beqz	v0,4348 <func_80B576C8+0x30>
    432c:	8fbf0014 	lw	ra,20(sp)
    4330:	8fae0018 	lw	t6,24(sp)
    4334:	8dcf03d8 	lw	t7,984(t6)
    4338:	55e00004 	bnezl	t7,434c <func_80B576C8+0x34>
    433c:	00001025 	move	v0,zero
    4340:	10000002 	b	434c <func_80B576C8+0x34>
    4344:	24020001 	li	v0,1
    4348:	00001025 	move	v0,zero
    434c:	03e00008 	jr	ra
    4350:	27bd0018 	addiu	sp,sp,24

00004354 <func_80B57704>:
    4354:	27bdffe8 	addiu	sp,sp,-24
    4358:	afbf0014 	sw	ra,20(sp)
    435c:	00a03825 	move	a3,a1
    4360:	8c8503c4 	lw	a1,964(a0)
    4364:	0c000000 	jal	0 <func_80B533B0>
    4368:	00e02025 	move	a0,a3
    436c:	8fbf0014 	lw	ra,20(sp)
    4370:	27bd0018 	addiu	sp,sp,24
    4374:	03e00008 	jr	ra
    4378:	00000000 	nop

0000437c <func_80B5772C>:
    437c:	27bdffe8 	addiu	sp,sp,-24
    4380:	afbf0014 	sw	ra,20(sp)
    4384:	00a03825 	move	a3,a1
    4388:	8c8503c4 	lw	a1,964(a0)
    438c:	0c000000 	jal	0 <func_80B533B0>
    4390:	00e02025 	move	a0,a3
    4394:	8fbf0014 	lw	ra,20(sp)
    4398:	27bd0018 	addiu	sp,sp,24
    439c:	03e00008 	jr	ra
    43a0:	00000000 	nop

000043a4 <func_80B57754>:
    43a4:	3c0e0000 	lui	t6,0x0
    43a8:	85ce13f0 	lh	t6,5104(t6)
    43ac:	27bdffd0 	addiu	sp,sp,-48
    43b0:	afbf002c 	sw	ra,44(sp)
    43b4:	15c00011 	bnez	t6,43fc <func_80B57754+0x58>
    43b8:	afa40030 	sw	a0,48(sp)
    43bc:	8faf0030 	lw	t7,48(sp)
    43c0:	24180001 	li	t8,1
    43c4:	24a41c24 	addiu	a0,a1,7204
    43c8:	c5e40028 	lwc1	$f4,40(t7)
    43cc:	8de70024 	lw	a3,36(t7)
    43d0:	240601cb 	li	a2,459
    43d4:	e7a40010 	swc1	$f4,16(sp)
    43d8:	c5e6002c 	lwc1	$f6,44(t7)
    43dc:	afb80024 	sw	t8,36(sp)
    43e0:	afa00020 	sw	zero,32(sp)
    43e4:	afa0001c 	sw	zero,28(sp)
    43e8:	afa00018 	sw	zero,24(sp)
    43ec:	0c000000 	jal	0 <func_80B533B0>
    43f0:	e7a60014 	swc1	$f6,20(sp)
    43f4:	0c000000 	jal	0 <func_80B533B0>
    43f8:	8fa40030 	lw	a0,48(sp)
    43fc:	8fbf002c 	lw	ra,44(sp)
    4400:	27bd0030 	addiu	sp,sp,48
    4404:	03e00008 	jr	ra
    4408:	00000000 	nop

0000440c <func_80B577BC>:
    440c:	27bdffb8 	addiu	sp,sp,-72
    4410:	afbf002c 	sw	ra,44(sp)
    4414:	afa40048 	sw	a0,72(sp)
    4418:	c4b20004 	lwc1	$f18,4(a1)
    441c:	8c821c44 	lw	v0,7236(a0)
    4420:	c4b00000 	lwc1	$f16,0(a1)
    4424:	e7b20034 	swc1	$f18,52(sp)
    4428:	c4b20008 	lwc1	$f18,8(a1)
    442c:	c44a0024 	lwc1	$f10,36(v0)
    4430:	c448002c 	lwc1	$f8,44(v0)
    4434:	e7b00038 	swc1	$f16,56(sp)
    4438:	46105301 	sub.s	$f12,$f10,$f16
    443c:	e7b20030 	swc1	$f18,48(sp)
    4440:	0c000000 	jal	0 <func_80B533B0>
    4444:	46124381 	sub.s	$f14,$f8,$f18
    4448:	3c010000 	lui	at,0x0
    444c:	c4320000 	lwc1	$f18,0(at)
    4450:	c7a20038 	lwc1	$f2,56(sp)
    4454:	8fa50048 	lw	a1,72(sp)
    4458:	46120102 	mul.s	$f4,$f0,$f18
    445c:	c7b00030 	lwc1	$f16,48(sp)
    4460:	c7aa0034 	lwc1	$f10,52(sp)
    4464:	24190005 	li	t9,5
    4468:	44071000 	mfc1	a3,$f2
    446c:	afb90024 	sw	t9,36(sp)
    4470:	24060002 	li	a2,2
    4474:	4600218d 	trunc.w.s	$f6,$f4
    4478:	afa00018 	sw	zero,24(sp)
    447c:	afa00020 	sw	zero,32(sp)
    4480:	24a41c24 	addiu	a0,a1,7204
    4484:	44183000 	mfc1	t8,$f6
    4488:	e7b00014 	swc1	$f16,20(sp)
    448c:	e7aa0010 	swc1	$f10,16(sp)
    4490:	0c000000 	jal	0 <func_80B533B0>
    4494:	afb8001c 	sw	t8,28(sp)
    4498:	8fbf002c 	lw	ra,44(sp)
    449c:	27bd0048 	addiu	sp,sp,72
    44a0:	03e00008 	jr	ra
    44a4:	00000000 	nop

000044a8 <func_80B57858>:
    44a8:	27bdffe8 	addiu	sp,sp,-24
    44ac:	afbf0014 	sw	ra,20(sp)
    44b0:	3c050000 	lui	a1,0x0
    44b4:	afa40018 	sw	a0,24(sp)
    44b8:	0c000000 	jal	0 <func_80B533B0>
    44bc:	24a50000 	addiu	a1,a1,0
    44c0:	3c050000 	lui	a1,0x0
    44c4:	24a50000 	addiu	a1,a1,0
    44c8:	0c000000 	jal	0 <func_80B533B0>
    44cc:	8fa40018 	lw	a0,24(sp)
    44d0:	8fbf0014 	lw	ra,20(sp)
    44d4:	27bd0018 	addiu	sp,sp,24
    44d8:	03e00008 	jr	ra
    44dc:	00000000 	nop

000044e0 <func_80B57890>:
    44e0:	27bdffd8 	addiu	sp,sp,-40
    44e4:	afbf0014 	sw	ra,20(sp)
    44e8:	3c070001 	lui	a3,0x1
    44ec:	00e53821 	addu	a3,a3,a1
    44f0:	90e71dea 	lbu	a3,7658(a3)
    44f4:	84a300a4 	lh	v1,164(a1)
    44f8:	afa5002c 	sw	a1,44(sp)
    44fc:	a3a70023 	sb	a3,35(sp)
    4500:	0c000000 	jal	0 <func_80B533B0>
    4504:	a7a30020 	sh	v1,32(sp)
    4508:	87a30020 	lh	v1,32(sp)
    450c:	2401000e 	li	at,14
    4510:	8fa6002c 	lw	a2,44(sp)
    4514:	93a70023 	lbu	a3,35(sp)
    4518:	14610024 	bne	v1,at,45ac <func_80B57890+0xcc>
    451c:	00404025 	move	t0,v0
    4520:	24010024 	li	at,36
    4524:	54410006 	bnel	v0,at,4540 <func_80B57890+0x60>
    4528:	24010025 	li	at,37
    452c:	54e00004 	bnezl	a3,4540 <func_80B57890+0x60>
    4530:	24010025 	li	at,37
    4534:	1000005f 	b	46b4 <func_80B57890+0x1d4>
    4538:	24020001 	li	v0,1
    453c:	24010025 	li	at,37
    4540:	14410005 	bne	v0,at,4558 <func_80B57890+0x78>
    4544:	24010002 	li	at,2
    4548:	54e10004 	bnel	a3,at,455c <func_80B57890+0x7c>
    454c:	24010026 	li	at,38
    4550:	10000058 	b	46b4 <func_80B57890+0x1d4>
    4554:	24020001 	li	v0,1
    4558:	24010026 	li	at,38
    455c:	14410005 	bne	v0,at,4574 <func_80B57890+0x94>
    4560:	24010004 	li	at,4
    4564:	54e10004 	bnel	a3,at,4578 <func_80B57890+0x98>
    4568:	24010027 	li	at,39
    456c:	10000051 	b	46b4 <func_80B57890+0x1d4>
    4570:	24020001 	li	v0,1
    4574:	24010027 	li	at,39
    4578:	14410005 	bne	v0,at,4590 <func_80B57890+0xb0>
    457c:	24010006 	li	at,6
    4580:	54e10004 	bnel	a3,at,4594 <func_80B57890+0xb4>
    4584:	24010028 	li	at,40
    4588:	1000004a 	b	46b4 <func_80B57890+0x1d4>
    458c:	24020001 	li	v0,1
    4590:	24010028 	li	at,40
    4594:	14410046 	bne	v0,at,46b0 <func_80B57890+0x1d0>
    4598:	24010006 	li	at,6
    459c:	54e10045 	bnel	a3,at,46b4 <func_80B57890+0x1d4>
    45a0:	00001025 	move	v0,zero
    45a4:	10000043 	b	46b4 <func_80B57890+0x1d4>
    45a8:	24020001 	li	v0,1
    45ac:	2401001a 	li	at,26
    45b0:	1461002f 	bne	v1,at,4670 <func_80B57890+0x190>
    45b4:	24010020 	li	at,32
    45b8:	54410019 	bnel	v0,at,4620 <func_80B57890+0x140>
    45bc:	24010021 	li	at,33
    45c0:	14e00016 	bnez	a3,461c <func_80B57890+0x13c>
    45c4:	00c02025 	move	a0,a2
    45c8:	24050037 	li	a1,55
    45cc:	afa6002c 	sw	a2,44(sp)
    45d0:	a3a70023 	sb	a3,35(sp)
    45d4:	0c000000 	jal	0 <func_80B533B0>
    45d8:	afa8001c 	sw	t0,28(sp)
    45dc:	8fa6002c 	lw	a2,44(sp)
    45e0:	93a70023 	lbu	a3,35(sp)
    45e4:	1040000d 	beqz	v0,461c <func_80B57890+0x13c>
    45e8:	8fa8001c 	lw	t0,28(sp)
    45ec:	84c200a4 	lh	v0,164(a2)
    45f0:	2401004f 	li	at,79
    45f4:	10410007 	beq	v0,at,4614 <func_80B57890+0x134>
    45f8:	2401001a 	li	at,26
    45fc:	10410005 	beq	v0,at,4614 <func_80B57890+0x134>
    4600:	2401000e 	li	at,14
    4604:	10410003 	beq	v0,at,4614 <func_80B57890+0x134>
    4608:	2401000f 	li	at,15
    460c:	54410004 	bnel	v0,at,4620 <func_80B57890+0x140>
    4610:	24010021 	li	at,33
    4614:	10000027 	b	46b4 <func_80B57890+0x1d4>
    4618:	24020001 	li	v0,1
    461c:	24010021 	li	at,33
    4620:	15010005 	bne	t0,at,4638 <func_80B57890+0x158>
    4624:	24010002 	li	at,2
    4628:	54e10004 	bnel	a3,at,463c <func_80B57890+0x15c>
    462c:	24010022 	li	at,34
    4630:	10000020 	b	46b4 <func_80B57890+0x1d4>
    4634:	24020001 	li	v0,1
    4638:	24010022 	li	at,34
    463c:	15010005 	bne	t0,at,4654 <func_80B57890+0x174>
    4640:	24010004 	li	at,4
    4644:	54e10004 	bnel	a3,at,4658 <func_80B57890+0x178>
    4648:	24010023 	li	at,35
    464c:	10000019 	b	46b4 <func_80B57890+0x1d4>
    4650:	24020001 	li	v0,1
    4654:	24010023 	li	at,35
    4658:	15010015 	bne	t0,at,46b0 <func_80B57890+0x1d0>
    465c:	24010006 	li	at,6
    4660:	54e10014 	bnel	a3,at,46b4 <func_80B57890+0x1d4>
    4664:	00001025 	move	v0,zero
    4668:	10000012 	b	46b4 <func_80B57890+0x1d4>
    466c:	24020001 	li	v0,1
    4670:	2401000f 	li	at,15
    4674:	1461000e 	bne	v1,at,46b0 <func_80B57890+0x1d0>
    4678:	24010029 	li	at,41
    467c:	54410006 	bnel	v0,at,4698 <func_80B57890+0x1b8>
    4680:	2401002a 	li	at,42
    4684:	54e00004 	bnezl	a3,4698 <func_80B57890+0x1b8>
    4688:	2401002a 	li	at,42
    468c:	10000009 	b	46b4 <func_80B57890+0x1d4>
    4690:	24020001 	li	v0,1
    4694:	2401002a 	li	at,42
    4698:	54410006 	bnel	v0,at,46b4 <func_80B57890+0x1d4>
    469c:	00001025 	move	v0,zero
    46a0:	54e00004 	bnezl	a3,46b4 <func_80B57890+0x1d4>
    46a4:	00001025 	move	v0,zero
    46a8:	10000002 	b	46b4 <func_80B57890+0x1d4>
    46ac:	24020001 	li	v0,1
    46b0:	00001025 	move	v0,zero
    46b4:	8fbf0014 	lw	ra,20(sp)
    46b8:	27bd0028 	addiu	sp,sp,40
    46bc:	03e00008 	jr	ra
    46c0:	00000000 	nop

000046c4 <func_80B57A74>:
    46c4:	8c821c64 	lw	v0,7268(a0)
    46c8:	24040001 	li	a0,1
    46cc:	240300b4 	li	v1,180
    46d0:	10400008 	beqz	v0,46f4 <func_80B57A74+0x30>
    46d4:	00000000 	nop
    46d8:	844e0000 	lh	t6,0(v0)
    46dc:	546e0003 	bnel	v1,t6,46ec <func_80B57A74+0x28>
    46e0:	8c420124 	lw	v0,292(v0)
    46e4:	a444015c 	sh	a0,348(v0)
    46e8:	8c420124 	lw	v0,292(v0)
    46ec:	5440fffb 	bnezl	v0,46dc <func_80B57A74+0x18>
    46f0:	844e0000 	lh	t6,0(v0)
    46f4:	03e00008 	jr	ra
    46f8:	00000000 	nop

000046fc <func_80B57AAC>:
    46fc:	27bdffe0 	addiu	sp,sp,-32
    4700:	afbf001c 	sw	ra,28(sp)
    4704:	10a00006 	beqz	a1,4720 <func_80B57AAC+0x24>
    4708:	afa60028 	sw	a2,40(sp)
    470c:	00c02825 	move	a1,a2
    4710:	00003025 	move	a2,zero
    4714:	3c07c100 	lui	a3,0xc100
    4718:	0c000000 	jal	0 <func_80B533B0>
    471c:	afa00010 	sw	zero,16(sp)
    4720:	8fbf001c 	lw	ra,28(sp)
    4724:	27bd0020 	addiu	sp,sp,32
    4728:	03e00008 	jr	ra
    472c:	00000000 	nop

00004730 <func_80B57AE0>:
    4730:	27bdffb8 	addiu	sp,sp,-72
    4734:	afbf001c 	sw	ra,28(sp)
    4738:	afb10018 	sw	s1,24(sp)
    473c:	afb00014 	sw	s0,20(sp)
    4740:	afa5004c 	sw	a1,76(sp)
    4744:	848e00b6 	lh	t6,182(a0)
    4748:	44800000 	mtc1	zero,$f0
    474c:	24910348 	addiu	s1,a0,840
    4750:	a7ae0042 	sh	t6,66(sp)
    4754:	8c8f0314 	lw	t7,788(a0)
    4758:	8c880024 	lw	t0,36(a0)
    475c:	a4800344 	sh	zero,836(a0)
    4760:	25f80001 	addiu	t8,t7,1
    4764:	ac980314 	sw	t8,788(a0)
    4768:	e4800360 	swc1	$f0,864(a0)
    476c:	e4800364 	swc1	$f0,868(a0)
    4770:	e4800368 	swc1	$f0,872(a0)
    4774:	ae280000 	sw	t0,0(s1)
    4778:	8c990028 	lw	t9,40(a0)
    477c:	00808025 	move	s0,a0
    4780:	ae390004 	sw	t9,4(s1)
    4784:	8c88002c 	lw	t0,44(a0)
    4788:	ae280008 	sw	t0,8(s1)
    478c:	0c000000 	jal	0 <func_80B533B0>
    4790:	8e050314 	lw	a1,788(s0)
    4794:	10400012 	beqz	v0,47e0 <func_80B57AE0+0xb0>
    4798:	00000000 	nop
    479c:	84490000 	lh	t1,0(v0)
    47a0:	26030354 	addiu	v1,s0,852
    47a4:	44892000 	mtc1	t1,$f4
    47a8:	00000000 	nop
    47ac:	468021a0 	cvt.s.w	$f6,$f4
    47b0:	e4660000 	swc1	$f6,0(v1)
    47b4:	844a0002 	lh	t2,2(v0)
    47b8:	448a4000 	mtc1	t2,$f8
    47bc:	00000000 	nop
    47c0:	468042a0 	cvt.s.w	$f10,$f8
    47c4:	e46a0004 	swc1	$f10,4(v1)
    47c8:	844b0004 	lh	t3,4(v0)
    47cc:	448b8000 	mtc1	t3,$f16
    47d0:	00000000 	nop
    47d4:	468084a0 	cvt.s.w	$f18,$f16
    47d8:	10000016 	b	4834 <func_80B57AE0+0x104>
    47dc:	e4720008 	swc1	$f18,8(v1)
    47e0:	0c000000 	jal	0 <func_80B533B0>
    47e4:	87a40042 	lh	a0,66(sp)
    47e8:	3c014348 	lui	at,0x4348
    47ec:	44812000 	mtc1	at,$f4
    47f0:	c6280000 	lwc1	$f8,0(s1)
    47f4:	26030354 	addiu	v1,s0,852
    47f8:	46040182 	mul.s	$f6,$f0,$f4
    47fc:	46083280 	add.s	$f10,$f6,$f8
    4800:	e46a0000 	swc1	$f10,0(v1)
    4804:	c6300004 	lwc1	$f16,4(s1)
    4808:	e4700004 	swc1	$f16,4(v1)
    480c:	afa30020 	sw	v1,32(sp)
    4810:	0c000000 	jal	0 <func_80B533B0>
    4814:	87a40042 	lh	a0,66(sp)
    4818:	3c014348 	lui	at,0x4348
    481c:	44819000 	mtc1	at,$f18
    4820:	c6260008 	lwc1	$f6,8(s1)
    4824:	8fa30020 	lw	v1,32(sp)
    4828:	46120102 	mul.s	$f4,$f0,$f18
    482c:	46062200 	add.s	$f8,$f4,$f6
    4830:	e4680008 	swc1	$f8,8(v1)
    4834:	c46a0000 	lwc1	$f10,0(v1)
    4838:	c6300000 	lwc1	$f16,0(s1)
    483c:	c4720008 	lwc1	$f18,8(v1)
    4840:	c6240008 	lwc1	$f4,8(s1)
    4844:	46105081 	sub.s	$f2,$f10,$f16
    4848:	3c0c0000 	lui	t4,0x0
    484c:	8d8c0000 	lw	t4,0(t4)
    4850:	46049301 	sub.s	$f12,$f18,$f4
    4854:	46021182 	mul.s	$f6,$f2,$f2
    4858:	858d1460 	lh	t5,5216(t4)
    485c:	3c014100 	lui	at,0x4100
    4860:	460c6202 	mul.s	$f8,$f12,$f12
    4864:	448d5000 	mtc1	t5,$f10
    4868:	44819000 	mtc1	at,$f18
    486c:	46805420 	cvt.s.w	$f16,$f10
    4870:	46083000 	add.s	$f0,$f6,$f8
    4874:	46128100 	add.s	$f4,$f16,$f18
    4878:	46000004 	sqrt.s	$f0,$f0
    487c:	46040183 	div.s	$f6,$f0,$f4
    4880:	4600320d 	trunc.w.s	$f8,$f6
    4884:	440f4000 	mfc1	t7,$f8
    4888:	00000000 	nop
    488c:	a60f0346 	sh	t7,838(s0)
    4890:	8fbf001c 	lw	ra,28(sp)
    4894:	8fb10018 	lw	s1,24(sp)
    4898:	8fb00014 	lw	s0,20(sp)
    489c:	03e00008 	jr	ra
    48a0:	27bd0048 	addiu	sp,sp,72

000048a4 <func_80B57C54>:
    48a4:	948e0344 	lhu	t6,836(a0)
    48a8:	948f0346 	lhu	t7,838(a0)
    48ac:	00001025 	move	v0,zero
    48b0:	01cf082a 	slt	at,t6,t7
    48b4:	14200003 	bnez	at,48c4 <func_80B57C54+0x20>
    48b8:	00000000 	nop
    48bc:	03e00008 	jr	ra
    48c0:	24020001 	li	v0,1
    48c4:	03e00008 	jr	ra
    48c8:	00000000 	nop

000048cc <func_80B57C7C>:
    48cc:	afa40000 	sw	a0,0(sp)
    48d0:	afa50004 	sw	a1,4(sp)
    48d4:	03e00008 	jr	ra
    48d8:	24020001 	li	v0,1

000048dc <func_80B57C8C>:
    48dc:	27bdffe8 	addiu	sp,sp,-24
    48e0:	afbf0014 	sw	ra,20(sp)
    48e4:	8c850314 	lw	a1,788(a0)
    48e8:	0c000000 	jal	0 <func_80B533B0>
    48ec:	24a50002 	addiu	a1,a1,2
    48f0:	8fbf0014 	lw	ra,20(sp)
    48f4:	27bd0018 	addiu	sp,sp,24
    48f8:	2c420001 	sltiu	v0,v0,1
    48fc:	03e00008 	jr	ra
    4900:	00000000 	nop

00004904 <func_80B57CB4>:
    4904:	27bdffd8 	addiu	sp,sp,-40
    4908:	afbf0024 	sw	ra,36(sp)
    490c:	afb00020 	sw	s0,32(sp)
    4910:	afa5002c 	sw	a1,44(sp)
    4914:	948e0344 	lhu	t6,836(a0)
    4918:	00808025 	move	s0,a0
    491c:	24180003 	li	t8,3
    4920:	25cf0001 	addiu	t7,t6,1
    4924:	a48f0344 	sh	t7,836(a0)
    4928:	96060344 	lhu	a2,836(s0)
    492c:	94840346 	lhu	a0,838(a0)
    4930:	afb80010 	sw	t8,16(sp)
    4934:	00002825 	move	a1,zero
    4938:	0c000000 	jal	0 <func_80B533B0>
    493c:	24070003 	li	a3,3
    4940:	26020348 	addiu	v0,s0,840
    4944:	26030354 	addiu	v1,s0,852
    4948:	c4640000 	lwc1	$f4,0(v1)
    494c:	c4420000 	lwc1	$f2,0(v0)
    4950:	26040024 	addiu	a0,s0,36
    4954:	46022181 	sub.s	$f6,$f4,$f2
    4958:	46060202 	mul.s	$f8,$f0,$f6
    495c:	46081280 	add.s	$f10,$f2,$f8
    4960:	e48a0000 	swc1	$f10,0(a0)
    4964:	c4700004 	lwc1	$f16,4(v1)
    4968:	c44c0004 	lwc1	$f12,4(v0)
    496c:	c6080360 	lwc1	$f8,864(s0)
    4970:	460c8481 	sub.s	$f18,$f16,$f12
    4974:	46120102 	mul.s	$f4,$f0,$f18
    4978:	46046180 	add.s	$f6,$f12,$f4
    497c:	46083280 	add.s	$f10,$f6,$f8
    4980:	e48a0004 	swc1	$f10,4(a0)
    4984:	c4700008 	lwc1	$f16,8(v1)
    4988:	c44e0008 	lwc1	$f14,8(v0)
    498c:	460e8481 	sub.s	$f18,$f16,$f14
    4990:	46120102 	mul.s	$f4,$f0,$f18
    4994:	46047180 	add.s	$f6,$f14,$f4
    4998:	e4860008 	swc1	$f6,8(a0)
    499c:	8fbf0024 	lw	ra,36(sp)
    49a0:	8fb00020 	lw	s0,32(sp)
    49a4:	27bd0028 	addiu	sp,sp,40
    49a8:	03e00008 	jr	ra
    49ac:	00000000 	nop

000049b0 <func_80B57D60>:
    49b0:	27bdffe8 	addiu	sp,sp,-24
    49b4:	afbf0014 	sw	ra,20(sp)
    49b8:	0c000000 	jal	0 <func_80B533B0>
    49bc:	afa5001c 	sw	a1,28(sp)
    49c0:	8fbf0014 	lw	ra,20(sp)
    49c4:	27bd0018 	addiu	sp,sp,24
    49c8:	03e00008 	jr	ra
    49cc:	00000000 	nop

000049d0 <func_80B57D80>:
    49d0:	27bdffb8 	addiu	sp,sp,-72
    49d4:	afbf001c 	sw	ra,28(sp)
    49d8:	afb00018 	sw	s0,24(sp)
    49dc:	8cae1c44 	lw	t6,7236(a1)
    49e0:	00808025 	move	s0,a0
    49e4:	afae0038 	sw	t6,56(sp)
    49e8:	0c000000 	jal	0 <func_80B533B0>
    49ec:	8c850314 	lw	a1,788(a0)
    49f0:	8faf0038 	lw	t7,56(sp)
    49f4:	a7a20032 	sh	v0,50(sp)
    49f8:	260503f8 	addiu	a1,s0,1016
    49fc:	c5e40028 	lwc1	$f4,40(t7)
    4a00:	00022400 	sll	a0,v0,0x10
    4a04:	00042403 	sra	a0,a0,0x10
    4a08:	e4a4001c 	swc1	$f4,28(a1)
    4a0c:	0c000000 	jal	0 <func_80B533B0>
    4a10:	afa50024 	sw	a1,36(sp)
    4a14:	c6060090 	lwc1	$f6,144(s0)
    4a18:	c60a0024 	lwc1	$f10,36(s0)
    4a1c:	8fa50024 	lw	a1,36(sp)
    4a20:	46060202 	mul.s	$f8,$f0,$f6
    4a24:	460a4400 	add.s	$f16,$f8,$f10
    4a28:	e4b00018 	swc1	$f16,24(a1)
    4a2c:	0c000000 	jal	0 <func_80B533B0>
    4a30:	87a40032 	lh	a0,50(sp)
    4a34:	c6120090 	lwc1	$f18,144(s0)
    4a38:	c606002c 	lwc1	$f6,44(s0)
    4a3c:	8fa50024 	lw	a1,36(sp)
    4a40:	46120102 	mul.s	$f4,$f0,$f18
    4a44:	3c020000 	lui	v0,0x0
    4a48:	24420000 	addiu	v0,v0,0
    4a4c:	3c014180 	lui	at,0x4180
    4a50:	44819000 	mtc1	at,$f18
    4a54:	02002025 	move	a0,s0
    4a58:	24070004 	li	a3,4
    4a5c:	46062200 	add.s	$f8,$f4,$f6
    4a60:	e4a80020 	swc1	$f8,32(a1)
    4a64:	8c580000 	lw	t8,0(v0)
    4a68:	87191474 	lh	t9,5236(t8)
    4a6c:	44995000 	mtc1	t9,$f10
    4a70:	00000000 	nop
    4a74:	46805420 	cvt.s.w	$f16,$f10
    4a78:	46128101 	sub.s	$f4,$f16,$f18
    4a7c:	e4a40014 	swc1	$f4,20(a1)
    4a80:	8c480000 	lw	t0,0(v0)
    4a84:	85061476 	lh	a2,5238(t0)
    4a88:	24c6000c 	addiu	a2,a2,12
    4a8c:	00063400 	sll	a2,a2,0x10
    4a90:	0c000000 	jal	0 <func_80B533B0>
    4a94:	00063403 	sra	a2,a2,0x10
    4a98:	260200b6 	addiu	v0,s0,182
    4a9c:	87a60032 	lh	a2,50(sp)
    4aa0:	84450000 	lh	a1,0(v0)
    4aa4:	00c52023 	subu	a0,a2,a1
    4aa8:	04800004 	bltz	a0,4abc <func_80B57D80+0xec>
    4aac:	00041823 	negu	v1,a0
    4ab0:	00041c00 	sll	v1,a0,0x10
    4ab4:	10000003 	b	4ac4 <func_80B57D80+0xf4>
    4ab8:	00031c03 	sra	v1,v1,0x10
    4abc:	00031c00 	sll	v1,v1,0x10
    4ac0:	00031c03 	sra	v1,v1,0x10
    4ac4:	28610321 	slti	at,v1,801
    4ac8:	50200007 	beqzl	at,4ae8 <func_80B57D80+0x118>
    4acc:	a6050032 	sh	a1,50(s0)
    4ad0:	a4460000 	sh	a2,0(v0)
    4ad4:	84490000 	lh	t1,0(v0)
    4ad8:	00001825 	move	v1,zero
    4adc:	a6090032 	sh	t1,50(s0)
    4ae0:	84450000 	lh	a1,0(v0)
    4ae4:	a6050032 	sh	a1,50(s0)
    4ae8:	8fbf001c 	lw	ra,28(sp)
    4aec:	8fb00018 	lw	s0,24(sp)
    4af0:	27bd0048 	addiu	sp,sp,72
    4af4:	03e00008 	jr	ra
    4af8:	00601025 	move	v0,v1

00004afc <func_80B57EAC>:
    4afc:	27bdffe8 	addiu	sp,sp,-24
    4b00:	afbf0014 	sw	ra,20(sp)
    4b04:	afa5001c 	sw	a1,28(sp)
    4b08:	0c000000 	jal	0 <func_80B533B0>
    4b0c:	afa40018 	sw	a0,24(sp)
    4b10:	10400004 	beqz	v0,4b24 <func_80B57EAC+0x28>
    4b14:	8fa40018 	lw	a0,24(sp)
    4b18:	240e001a 	li	t6,26
    4b1c:	10000003 	b	4b2c <func_80B57EAC+0x30>
    4b20:	ac8e024c 	sw	t6,588(a0)
    4b24:	0c000000 	jal	0 <func_80B533B0>
    4b28:	8fa5001c 	lw	a1,28(sp)
    4b2c:	8fbf0014 	lw	ra,20(sp)
    4b30:	27bd0018 	addiu	sp,sp,24
    4b34:	03e00008 	jr	ra
    4b38:	00000000 	nop

00004b3c <func_80B57EEC>:
    4b3c:	27bdffe8 	addiu	sp,sp,-24
    4b40:	afbf0014 	sw	ra,20(sp)
    4b44:	0c000000 	jal	0 <func_80B533B0>
    4b48:	afa40018 	sw	a0,24(sp)
    4b4c:	10400003 	beqz	v0,4b5c <func_80B57EEC+0x20>
    4b50:	8faf0018 	lw	t7,24(sp)
    4b54:	240e001b 	li	t6,27
    4b58:	adee024c 	sw	t6,588(t7)
    4b5c:	8fbf0014 	lw	ra,20(sp)
    4b60:	27bd0018 	addiu	sp,sp,24
    4b64:	03e00008 	jr	ra
    4b68:	00000000 	nop

00004b6c <func_80B57F1C>:
    4b6c:	27bdffe0 	addiu	sp,sp,-32
    4b70:	afbf001c 	sw	ra,28(sp)
    4b74:	afa50024 	sw	a1,36(sp)
    4b78:	0c000000 	jal	0 <func_80B533B0>
    4b7c:	afa40020 	sw	a0,32(sp)
    4b80:	14400010 	bnez	v0,4bc4 <func_80B57F1C+0x58>
    4b84:	8fa40020 	lw	a0,32(sp)
    4b88:	3c050601 	lui	a1,0x601
    4b8c:	24a59be4 	addiu	a1,a1,-25628
    4b90:	00003025 	move	a2,zero
    4b94:	3c07c100 	lui	a3,0xc100
    4b98:	afa00010 	sw	zero,16(sp)
    4b9c:	0c000000 	jal	0 <func_80B533B0>
    4ba0:	afa40020 	sw	a0,32(sp)
    4ba4:	8fa40020 	lw	a0,32(sp)
    4ba8:	240e0022 	li	t6,34
    4bac:	8c8f0314 	lw	t7,788(a0)
    4bb0:	ac8e024c 	sw	t6,588(a0)
    4bb4:	25f8ffff 	addiu	t8,t7,-1
    4bb8:	ac980314 	sw	t8,788(a0)
    4bbc:	0c000000 	jal	0 <func_80B533B0>
    4bc0:	8fa50024 	lw	a1,36(sp)
    4bc4:	8fbf001c 	lw	ra,28(sp)
    4bc8:	27bd0020 	addiu	sp,sp,32
    4bcc:	03e00008 	jr	ra
    4bd0:	00000000 	nop

00004bd4 <func_80B57F84>:
    4bd4:	27bdffd8 	addiu	sp,sp,-40
    4bd8:	afbf0024 	sw	ra,36(sp)
    4bdc:	afb00020 	sw	s0,32(sp)
    4be0:	00808025 	move	s0,a0
    4be4:	0c000000 	jal	0 <func_80B533B0>
    4be8:	afa5002c 	sw	a1,44(sp)
    4bec:	10400017 	beqz	v0,4c4c <func_80B57F84+0x78>
    4bf0:	02002025 	move	a0,s0
    4bf4:	0c000000 	jal	0 <func_80B533B0>
    4bf8:	8fa5002c 	lw	a1,44(sp)
    4bfc:	50400014 	beqzl	v0,4c50 <func_80B57F84+0x7c>
    4c00:	00001025 	move	v0,zero
    4c04:	0c000000 	jal	0 <func_80B533B0>
    4c08:	8fa4002c 	lw	a0,44(sp)
    4c0c:	1440000f 	bnez	v0,4c4c <func_80B57F84+0x78>
    4c10:	02002025 	move	a0,s0
    4c14:	3c050601 	lui	a1,0x601
    4c18:	24a59fbc 	addiu	a1,a1,-24644
    4c1c:	00003025 	move	a2,zero
    4c20:	3c07c100 	lui	a3,0xc100
    4c24:	0c000000 	jal	0 <func_80B533B0>
    4c28:	afa00010 	sw	zero,16(sp)
    4c2c:	44802000 	mtc1	zero,$f4
    4c30:	240e0024 	li	t6,36
    4c34:	ae0e024c 	sw	t6,588(s0)
    4c38:	e60402ec 	swc1	$f4,748(s0)
    4c3c:	0c000000 	jal	0 <func_80B533B0>
    4c40:	8fa4002c 	lw	a0,44(sp)
    4c44:	10000002 	b	4c50 <func_80B57F84+0x7c>
    4c48:	24020001 	li	v0,1
    4c4c:	00001025 	move	v0,zero
    4c50:	8fbf0024 	lw	ra,36(sp)
    4c54:	8fb00020 	lw	s0,32(sp)
    4c58:	27bd0028 	addiu	sp,sp,40
    4c5c:	03e00008 	jr	ra
    4c60:	00000000 	nop

00004c64 <func_80B58014>:
    4c64:	27bdffc8 	addiu	sp,sp,-56
    4c68:	afbf0024 	sw	ra,36(sp)
    4c6c:	afb10020 	sw	s1,32(sp)
    4c70:	afb0001c 	sw	s0,28(sp)
    4c74:	8ca21c44 	lw	v0,7236(a1)
    4c78:	00808025 	move	s0,a0
    4c7c:	00a08825 	move	s1,a1
    4c80:	804e0a78 	lb	t6,2680(v0)
    4c84:	afa20030 	sw	v0,48(sp)
    4c88:	0c000000 	jal	0 <func_80B533B0>
    4c8c:	a3ae002f 	sb	t6,47(sp)
    4c90:	1040000d 	beqz	v0,4cc8 <func_80B58014+0x64>
    4c94:	02002025 	move	a0,s0
    4c98:	3c050600 	lui	a1,0x600
    4c9c:	24a53ff8 	addiu	a1,a1,16376
    4ca0:	00003025 	move	a2,zero
    4ca4:	3c07c130 	lui	a3,0xc130
    4ca8:	0c000000 	jal	0 <func_80B533B0>
    4cac:	afa00010 	sw	zero,16(sp)
    4cb0:	240f001d 	li	t7,29
    4cb4:	ae0f024c 	sw	t7,588(s0)
    4cb8:	0c000000 	jal	0 <func_80B533B0>
    4cbc:	02002025 	move	a0,s0
    4cc0:	10000064 	b	4e54 <func_80B58014+0x1f0>
    4cc4:	8fbf0024 	lw	ra,36(sp)
    4cc8:	0c000000 	jal	0 <func_80B533B0>
    4ccc:	02002025 	move	a0,s0
    4cd0:	1040000c 	beqz	v0,4d04 <func_80B58014+0xa0>
    4cd4:	02002025 	move	a0,s0
    4cd8:	0c000000 	jal	0 <func_80B533B0>
    4cdc:	02202825 	move	a1,s1
    4ce0:	10400008 	beqz	v0,4d04 <func_80B58014+0xa0>
    4ce4:	02202025 	move	a0,s1
    4ce8:	24050fa0 	li	a1,4000
    4cec:	2406ff9d 	li	a2,-99
    4cf0:	02003825 	move	a3,s0
    4cf4:	0c000000 	jal	0 <func_80B533B0>
    4cf8:	afa00010 	sw	zero,16(sp)
    4cfc:	10000054 	b	4e50 <func_80B58014+0x1ec>
    4d00:	a60003d0 	sh	zero,976(s0)
    4d04:	02002025 	move	a0,s0
    4d08:	0c000000 	jal	0 <func_80B533B0>
    4d0c:	02202825 	move	a1,s1
    4d10:	10400018 	beqz	v0,4d74 <func_80B58014+0x110>
    4d14:	02002025 	move	a0,s0
    4d18:	0c000000 	jal	0 <func_80B533B0>
    4d1c:	02202825 	move	a1,s1
    4d20:	10400014 	beqz	v0,4d74 <func_80B58014+0x110>
    4d24:	00000000 	nop
    4d28:	0c000000 	jal	0 <func_80B533B0>
    4d2c:	02202025 	move	a0,s1
    4d30:	14400010 	bnez	v0,4d74 <func_80B58014+0x110>
    4d34:	2418001f 	li	t8,31
    4d38:	44802000 	mtc1	zero,$f4
    4d3c:	ae18024c 	sw	t8,588(s0)
    4d40:	02002025 	move	a0,s0
    4d44:	0c000000 	jal	0 <func_80B533B0>
    4d48:	e60403cc 	swc1	$f4,972(s0)
    4d4c:	24190001 	li	t9,1
    4d50:	ae1903d8 	sw	t9,984(s0)
    4d54:	afa00010 	sw	zero,16(sp)
    4d58:	02202025 	move	a0,s1
    4d5c:	24050faa 	li	a1,4010
    4d60:	2406ff9d 	li	a2,-99
    4d64:	0c000000 	jal	0 <func_80B533B0>
    4d68:	02003825 	move	a3,s0
    4d6c:	10000039 	b	4e54 <func_80B58014+0x1f0>
    4d70:	8fbf0024 	lw	ra,36(sp)
    4d74:	0c000000 	jal	0 <func_80B533B0>
    4d78:	02002025 	move	a0,s0
    4d7c:	1440001a 	bnez	v0,4de8 <func_80B58014+0x184>
    4d80:	02002025 	move	a0,s0
    4d84:	0c000000 	jal	0 <func_80B533B0>
    4d88:	02202825 	move	a1,s1
    4d8c:	14400016 	bnez	v0,4de8 <func_80B58014+0x184>
    4d90:	02002025 	move	a0,s0
    4d94:	0c000000 	jal	0 <func_80B533B0>
    4d98:	02202825 	move	a1,s1
    4d9c:	10400012 	beqz	v0,4de8 <func_80B58014+0x184>
    4da0:	02002025 	move	a0,s0
    4da4:	3c050601 	lui	a1,0x601
    4da8:	24a59be4 	addiu	a1,a1,-25628
    4dac:	00003025 	move	a2,zero
    4db0:	3c07c100 	lui	a3,0xc100
    4db4:	0c000000 	jal	0 <func_80B533B0>
    4db8:	afa00010 	sw	zero,16(sp)
    4dbc:	02002025 	move	a0,s0
    4dc0:	0c000000 	jal	0 <func_80B533B0>
    4dc4:	02202825 	move	a1,s1
    4dc8:	24080022 	li	t0,34
    4dcc:	ae08024c 	sw	t0,588(s0)
    4dd0:	a60003d0 	sh	zero,976(s0)
    4dd4:	02002025 	move	a0,s0
    4dd8:	0c000000 	jal	0 <func_80B533B0>
    4ddc:	02202825 	move	a1,s1
    4de0:	1000001c 	b	4e54 <func_80B58014+0x1f0>
    4de4:	8fbf0024 	lw	ra,36(sp)
    4de8:	83a9002f 	lb	t1,47(sp)
    4dec:	8faa0030 	lw	t2,48(sp)
    4df0:	02002025 	move	a0,s0
    4df4:	1d200004 	bgtz	t1,4e08 <func_80B58014+0x1a4>
    4df8:	3c050600 	lui	a1,0x600
    4dfc:	854b0896 	lh	t3,2198(t2)
    4e00:	29610033 	slti	at,t3,51
    4e04:	1420000d 	bnez	at,4e3c <func_80B58014+0x1d8>
    4e08:	24a57664 	addiu	a1,a1,30308
    4e0c:	00003025 	move	a2,zero
    4e10:	3c07c130 	lui	a3,0xc130
    4e14:	0c000000 	jal	0 <func_80B533B0>
    4e18:	afa00010 	sw	zero,16(sp)
    4e1c:	240c001e 	li	t4,30
    4e20:	ae0c024c 	sw	t4,588(s0)
    4e24:	0c000000 	jal	0 <func_80B533B0>
    4e28:	02002025 	move	a0,s0
    4e2c:	0c000000 	jal	0 <func_80B533B0>
    4e30:	02002025 	move	a0,s0
    4e34:	10000007 	b	4e54 <func_80B58014+0x1f0>
    4e38:	8fbf0024 	lw	ra,36(sp)
    4e3c:	02002025 	move	a0,s0
    4e40:	0c000000 	jal	0 <func_80B533B0>
    4e44:	02202825 	move	a1,s1
    4e48:	0c000000 	jal	0 <func_80B533B0>
    4e4c:	02002025 	move	a0,s0
    4e50:	8fbf0024 	lw	ra,36(sp)
    4e54:	8fb0001c 	lw	s0,28(sp)
    4e58:	8fb10020 	lw	s1,32(sp)
    4e5c:	03e00008 	jr	ra
    4e60:	27bd0038 	addiu	sp,sp,56

00004e64 <func_80B58214>:
    4e64:	27bdffe0 	addiu	sp,sp,-32
    4e68:	afbf001c 	sw	ra,28(sp)
    4e6c:	0c000000 	jal	0 <func_80B533B0>
    4e70:	afa40020 	sw	a0,32(sp)
    4e74:	1040000c 	beqz	v0,4ea8 <func_80B58214+0x44>
    4e78:	8fa40020 	lw	a0,32(sp)
    4e7c:	3c050601 	lui	a1,0x601
    4e80:	24a59fbc 	addiu	a1,a1,-24644
    4e84:	00003025 	move	a2,zero
    4e88:	3c07c130 	lui	a3,0xc130
    4e8c:	0c000000 	jal	0 <func_80B533B0>
    4e90:	afa00010 	sw	zero,16(sp)
    4e94:	8faf0020 	lw	t7,32(sp)
    4e98:	240e001c 	li	t6,28
    4e9c:	adee024c 	sw	t6,588(t7)
    4ea0:	8fb80020 	lw	t8,32(sp)
    4ea4:	a70003d0 	sh	zero,976(t8)
    4ea8:	8fbf001c 	lw	ra,28(sp)
    4eac:	27bd0020 	addiu	sp,sp,32
    4eb0:	03e00008 	jr	ra
    4eb4:	00000000 	nop

00004eb8 <func_80B58268>:
    4eb8:	27bdffe0 	addiu	sp,sp,-32
    4ebc:	afbf001c 	sw	ra,28(sp)
    4ec0:	8ca31c44 	lw	v1,7236(a1)
    4ec4:	80620a78 	lb	v0,2680(v1)
    4ec8:	5c400010 	bgtzl	v0,4f0c <func_80B58268+0x54>
    4ecc:	8fbf001c 	lw	ra,28(sp)
    4ed0:	846e0896 	lh	t6,2198(v1)
    4ed4:	3c050601 	lui	a1,0x601
    4ed8:	24a59fbc 	addiu	a1,a1,-24644
    4edc:	29c10033 	slti	at,t6,51
    4ee0:	10200009 	beqz	at,4f08 <func_80B58268+0x50>
    4ee4:	00003025 	move	a2,zero
    4ee8:	3c07c130 	lui	a3,0xc130
    4eec:	afa00010 	sw	zero,16(sp)
    4ef0:	0c000000 	jal	0 <func_80B533B0>
    4ef4:	afa40020 	sw	a0,32(sp)
    4ef8:	8fa40020 	lw	a0,32(sp)
    4efc:	240f001c 	li	t7,28
    4f00:	ac8f024c 	sw	t7,588(a0)
    4f04:	a48003d0 	sh	zero,976(a0)
    4f08:	8fbf001c 	lw	ra,28(sp)
    4f0c:	27bd0020 	addiu	sp,sp,32
    4f10:	03e00008 	jr	ra
    4f14:	00000000 	nop

00004f18 <func_80B582C8>:
    4f18:	3c030000 	lui	v1,0x0
    4f1c:	8c630000 	lw	v1,0(v1)
    4f20:	27bdffd0 	addiu	sp,sp,-48
    4f24:	afbf001c 	sw	ra,28(sp)
    4f28:	afa50034 	sw	a1,52(sp)
    4f2c:	846e1470 	lh	t6,5232(v1)
    4f30:	3c014120 	lui	at,0x4120
    4f34:	44815000 	mtc1	at,$f10
    4f38:	448e3000 	mtc1	t6,$f6
    4f3c:	c48403cc 	lwc1	$f4,972(a0)
    4f40:	3c013f80 	lui	at,0x3f80
    4f44:	46803220 	cvt.s.w	$f8,$f6
    4f48:	248203cc 	addiu	v0,a0,972
    4f4c:	460a4400 	add.s	$f16,$f8,$f10
    4f50:	46102032 	c.eq.s	$f4,$f16
    4f54:	00000000 	nop
    4f58:	45020012 	bc1fl	4fa4 <func_80B582C8+0x8c>
    4f5c:	846f1472 	lh	t7,5234(v1)
    4f60:	44816000 	mtc1	at,$f12
    4f64:	c4520000 	lwc1	$f18,0(v0)
    4f68:	3c050601 	lui	a1,0x601
    4f6c:	24a58050 	addiu	a1,a1,-32688
    4f70:	460c9180 	add.s	$f6,$f18,$f12
    4f74:	00003025 	move	a2,zero
    4f78:	3c07c140 	lui	a3,0xc140
    4f7c:	e4460000 	swc1	$f6,0(v0)
    4f80:	afa40030 	sw	a0,48(sp)
    4f84:	0c000000 	jal	0 <func_80B533B0>
    4f88:	afa00010 	sw	zero,16(sp)
    4f8c:	8fa40030 	lw	a0,48(sp)
    4f90:	0c000000 	jal	0 <func_80B533B0>
    4f94:	8fa50034 	lw	a1,52(sp)
    4f98:	10000057 	b	50f8 <func_80B582C8+0x1e0>
    4f9c:	8fbf001c 	lw	ra,28(sp)
    4fa0:	846f1472 	lh	t7,5234(v1)
    4fa4:	3c0141a0 	lui	at,0x41a0
    4fa8:	44812000 	mtc1	at,$f4
    4fac:	448f4000 	mtc1	t7,$f8
    4fb0:	248203cc 	addiu	v0,a0,972
    4fb4:	c4400000 	lwc1	$f0,0(v0)
    4fb8:	468042a0 	cvt.s.w	$f10,$f8
    4fbc:	3c013f80 	lui	at,0x3f80
    4fc0:	46045400 	add.s	$f16,$f10,$f4
    4fc4:	46100032 	c.eq.s	$f0,$f16
    4fc8:	00000000 	nop
    4fcc:	45020011 	bc1fl	5014 <func_80B582C8+0xfc>
    4fd0:	84781474 	lh	t8,5236(v1)
    4fd4:	44816000 	mtc1	at,$f12
    4fd8:	00000000 	nop
    4fdc:	460c0480 	add.s	$f18,$f0,$f12
    4fe0:	e4520000 	swc1	$f18,0(v0)
    4fe4:	0c000000 	jal	0 <func_80B533B0>
    4fe8:	afa40030 	sw	a0,48(sp)
    4fec:	3c050600 	lui	a1,0x600
    4ff0:	8fa40030 	lw	a0,48(sp)
    4ff4:	24a53ff8 	addiu	a1,a1,16376
    4ff8:	00003025 	move	a2,zero
    4ffc:	3c07c140 	lui	a3,0xc140
    5000:	0c000000 	jal	0 <func_80B533B0>
    5004:	afa00010 	sw	zero,16(sp)
    5008:	1000003b 	b	50f8 <func_80B582C8+0x1e0>
    500c:	8fbf001c 	lw	ra,28(sp)
    5010:	84781474 	lh	t8,5236(v1)
    5014:	3c0141f0 	lui	at,0x41f0
    5018:	44815000 	mtc1	at,$f10
    501c:	44983000 	mtc1	t8,$f6
    5020:	3c013f80 	lui	at,0x3f80
    5024:	46803220 	cvt.s.w	$f8,$f6
    5028:	460a4100 	add.s	$f4,$f8,$f10
    502c:	46040032 	c.eq.s	$f0,$f4
    5030:	00000000 	nop
    5034:	4502000a 	bc1fl	5060 <func_80B582C8+0x148>
    5038:	84791476 	lh	t9,5238(v1)
    503c:	44816000 	mtc1	at,$f12
    5040:	00000000 	nop
    5044:	460c0400 	add.s	$f16,$f0,$f12
    5048:	e4500000 	swc1	$f16,0(v0)
    504c:	0c000000 	jal	0 <func_80B533B0>
    5050:	8fa40034 	lw	a0,52(sp)
    5054:	10000028 	b	50f8 <func_80B582C8+0x1e0>
    5058:	8fbf001c 	lw	ra,28(sp)
    505c:	84791476 	lh	t9,5238(v1)
    5060:	3c014220 	lui	at,0x4220
    5064:	44814000 	mtc1	at,$f8
    5068:	44999000 	mtc1	t9,$f18
    506c:	8fa80034 	lw	t0,52(sp)
    5070:	3c013f80 	lui	at,0x3f80
    5074:	468091a0 	cvt.s.w	$f6,$f18
    5078:	46083080 	add.s	$f2,$f6,$f8
    507c:	46020032 	c.eq.s	$f0,$f2
    5080:	00000000 	nop
    5084:	4502000f 	bc1fl	50c4 <func_80B582C8+0x1ac>
    5088:	44816000 	mtc1	at,$f12
    508c:	850907a0 	lh	t1,1952(t0)
    5090:	00095080 	sll	t2,t1,0x2
    5094:	010a5821 	addu	t3,t0,t2
    5098:	8d640790 	lw	a0,1936(t3)
    509c:	0c000000 	jal	0 <func_80B533B0>
    50a0:	afa20024 	sw	v0,36(sp)
    50a4:	8fa20024 	lw	v0,36(sp)
    50a8:	3c013f80 	lui	at,0x3f80
    50ac:	44816000 	mtc1	at,$f12
    50b0:	c44a0000 	lwc1	$f10,0(v0)
    50b4:	460c5100 	add.s	$f4,$f10,$f12
    50b8:	1000000e 	b	50f4 <func_80B582C8+0x1dc>
    50bc:	e4440000 	swc1	$f4,0(v0)
    50c0:	44816000 	mtc1	at,$f12
    50c4:	240c0020 	li	t4,32
    50c8:	460c1400 	add.s	$f16,$f2,$f12
    50cc:	4600803e 	c.le.s	$f16,$f0
    50d0:	00000000 	nop
    50d4:	45020006 	bc1fl	50f0 <func_80B582C8+0x1d8>
    50d8:	460c0180 	add.s	$f6,$f0,$f12
    50dc:	44809000 	mtc1	zero,$f18
    50e0:	ac8c024c 	sw	t4,588(a0)
    50e4:	10000003 	b	50f4 <func_80B582C8+0x1dc>
    50e8:	e4520000 	swc1	$f18,0(v0)
    50ec:	460c0180 	add.s	$f6,$f0,$f12
    50f0:	e4460000 	swc1	$f6,0(v0)
    50f4:	8fbf001c 	lw	ra,28(sp)
    50f8:	27bd0030 	addiu	sp,sp,48
    50fc:	03e00008 	jr	ra
    5100:	00000000 	nop

00005104 <func_80B584B4>:
    5104:	27bdffc8 	addiu	sp,sp,-56
    5108:	afbf0024 	sw	ra,36(sp)
    510c:	afb10020 	sw	s1,32(sp)
    5110:	afb0001c 	sw	s0,28(sp)
    5114:	8ca21c44 	lw	v0,7236(a1)
    5118:	3c0145fa 	lui	at,0x45fa
    511c:	44812000 	mtc1	at,$f4
    5120:	804e0a78 	lb	t6,2680(v0)
    5124:	00808025 	move	s0,a0
    5128:	00a08825 	move	s1,a1
    512c:	00a02025 	move	a0,a1
    5130:	02002825 	move	a1,s0
    5134:	24060002 	li	a2,2
    5138:	24070005 	li	a3,5
    513c:	a3ae002f 	sb	t6,47(sp)
    5140:	0c000000 	jal	0 <func_80B533B0>
    5144:	e7a40010 	swc1	$f4,16(sp)
    5148:	3c0f0000 	lui	t7,0x0
    514c:	8def0000 	lw	t7,0(t7)
    5150:	15e00020 	bnez	t7,51d4 <func_80B584B4+0xd0>
    5154:	00000000 	nop
    5158:	5440000f 	bnezl	v0,5198 <func_80B584B4+0x94>
    515c:	83b9002f 	lb	t9,47(sp)
    5160:	0c000000 	jal	0 <func_80B533B0>
    5164:	02202025 	move	a0,s1
    5168:	1440000a 	bnez	v0,5194 <func_80B584B4+0x90>
    516c:	24180021 	li	t8,33
    5170:	ae18024c 	sw	t8,588(s0)
    5174:	afa00010 	sw	zero,16(sp)
    5178:	02202025 	move	a0,s1
    517c:	24050fab 	li	a1,4011
    5180:	2406ff9d 	li	a2,-99
    5184:	0c000000 	jal	0 <func_80B533B0>
    5188:	02003825 	move	a3,s0
    518c:	10000035 	b	5264 <func_80B584B4+0x160>
    5190:	8fbf0024 	lw	ra,36(sp)
    5194:	83b9002f 	lb	t9,47(sp)
    5198:	3c050600 	lui	a1,0x600
    519c:	24a53ff8 	addiu	a1,a1,16376
    51a0:	1b20002f 	blez	t9,5260 <func_80B584B4+0x15c>
    51a4:	02002025 	move	a0,s0
    51a8:	00003025 	move	a2,zero
    51ac:	3c07c140 	lui	a3,0xc140
    51b0:	0c000000 	jal	0 <func_80B533B0>
    51b4:	afa00010 	sw	zero,16(sp)
    51b8:	24080001 	li	t0,1
    51bc:	3c010000 	lui	at,0x0
    51c0:	ac280000 	sw	t0,0(at)
    51c4:	0c000000 	jal	0 <func_80B533B0>
    51c8:	02002025 	move	a0,s0
    51cc:	10000025 	b	5264 <func_80B584B4+0x160>
    51d0:	8fbf0024 	lw	ra,36(sp)
    51d4:	54400018 	bnezl	v0,5238 <func_80B584B4+0x134>
    51d8:	83aa002f 	lb	t2,47(sp)
    51dc:	0c000000 	jal	0 <func_80B533B0>
    51e0:	02202025 	move	a0,s1
    51e4:	14400013 	bnez	v0,5234 <func_80B584B4+0x130>
    51e8:	02002025 	move	a0,s0
    51ec:	3c050600 	lui	a1,0x600
    51f0:	24a57664 	addiu	a1,a1,30308
    51f4:	00003025 	move	a2,zero
    51f8:	3c07c140 	lui	a3,0xc140
    51fc:	0c000000 	jal	0 <func_80B533B0>
    5200:	afa00010 	sw	zero,16(sp)
    5204:	3c010000 	lui	at,0x0
    5208:	ac200000 	sw	zero,0(at)
    520c:	24090021 	li	t1,33
    5210:	ae09024c 	sw	t1,588(s0)
    5214:	afa00010 	sw	zero,16(sp)
    5218:	02202025 	move	a0,s1
    521c:	24050fab 	li	a1,4011
    5220:	2406ff9d 	li	a2,-99
    5224:	0c000000 	jal	0 <func_80B533B0>
    5228:	02003825 	move	a3,s0
    522c:	1000000d 	b	5264 <func_80B584B4+0x160>
    5230:	8fbf0024 	lw	ra,36(sp)
    5234:	83aa002f 	lb	t2,47(sp)
    5238:	3c050600 	lui	a1,0x600
    523c:	24a57664 	addiu	a1,a1,30308
    5240:	1d400007 	bgtz	t2,5260 <func_80B584B4+0x15c>
    5244:	02002025 	move	a0,s0
    5248:	00003025 	move	a2,zero
    524c:	3c07c140 	lui	a3,0xc140
    5250:	0c000000 	jal	0 <func_80B533B0>
    5254:	afa00010 	sw	zero,16(sp)
    5258:	3c010000 	lui	at,0x0
    525c:	ac200000 	sw	zero,0(at)
    5260:	8fbf0024 	lw	ra,36(sp)
    5264:	8fb0001c 	lw	s0,28(sp)
    5268:	8fb10020 	lw	s1,32(sp)
    526c:	03e00008 	jr	ra
    5270:	27bd0038 	addiu	sp,sp,56

00005274 <func_80B58624>:
    5274:	27bdffc0 	addiu	sp,sp,-64
    5278:	3c020000 	lui	v0,0x0
    527c:	8c420000 	lw	v0,0(v0)
    5280:	afbf0024 	sw	ra,36(sp)
    5284:	afb10020 	sw	s1,32(sp)
    5288:	afb0001c 	sw	s0,28(sp)
    528c:	844e1478 	lh	t6,5240(v0)
    5290:	3c014120 	lui	at,0x4120
    5294:	44815000 	mtc1	at,$f10
    5298:	448e3000 	mtc1	t6,$f6
    529c:	c48403cc 	lwc1	$f4,972(a0)
    52a0:	00808025 	move	s0,a0
    52a4:	46803220 	cvt.s.w	$f8,$f6
    52a8:	00a08825 	move	s1,a1
    52ac:	3c013f80 	lui	at,0x3f80
    52b0:	248303cc 	addiu	v1,a0,972
    52b4:	460a4400 	add.s	$f16,$f8,$f10
    52b8:	46102032 	c.eq.s	$f4,$f16
    52bc:	00000000 	nop
    52c0:	45020011 	bc1fl	5308 <func_80B58624+0x94>
    52c4:	844f147a 	lh	t7,5242(v0)
    52c8:	44816000 	mtc1	at,$f12
    52cc:	c4720000 	lwc1	$f18,0(v1)
    52d0:	3c050601 	lui	a1,0x601
    52d4:	24a58050 	addiu	a1,a1,-32688
    52d8:	460c9180 	add.s	$f6,$f18,$f12
    52dc:	00003025 	move	a2,zero
    52e0:	3c07c140 	lui	a3,0xc140
    52e4:	e4660000 	swc1	$f6,0(v1)
    52e8:	0c000000 	jal	0 <func_80B533B0>
    52ec:	afa00010 	sw	zero,16(sp)
    52f0:	02002025 	move	a0,s0
    52f4:	0c000000 	jal	0 <func_80B533B0>
    52f8:	02202825 	move	a1,s1
    52fc:	10000063 	b	548c <func_80B58624+0x218>
    5300:	8fbf0024 	lw	ra,36(sp)
    5304:	844f147a 	lh	t7,5242(v0)
    5308:	3c0141a0 	lui	at,0x41a0
    530c:	44812000 	mtc1	at,$f4
    5310:	448f4000 	mtc1	t7,$f8
    5314:	260303cc 	addiu	v1,s0,972
    5318:	c4600000 	lwc1	$f0,0(v1)
    531c:	468042a0 	cvt.s.w	$f10,$f8
    5320:	3c013f80 	lui	at,0x3f80
    5324:	46045080 	add.s	$f2,$f10,$f4
    5328:	46020032 	c.eq.s	$f0,$f2
    532c:	00000000 	nop
    5330:	45020015 	bc1fl	5388 <func_80B58624+0x114>
    5334:	44816000 	mtc1	at,$f12
    5338:	3c013f80 	lui	at,0x3f80
    533c:	44816000 	mtc1	at,$f12
    5340:	241871ac 	li	t8,29100
    5344:	3305ffff 	andi	a1,t8,0xffff
    5348:	460c0400 	add.s	$f16,$f0,$f12
    534c:	02202025 	move	a0,s1
    5350:	00003025 	move	a2,zero
    5354:	e4700000 	swc1	$f16,0(v1)
    5358:	0c000000 	jal	0 <func_80B533B0>
    535c:	a618010e 	sh	t8,270(s0)
    5360:	3c050600 	lui	a1,0x600
    5364:	24a53ff8 	addiu	a1,a1,16376
    5368:	02002025 	move	a0,s0
    536c:	00003025 	move	a2,zero
    5370:	3c07c140 	lui	a3,0xc140
    5374:	0c000000 	jal	0 <func_80B533B0>
    5378:	afa00010 	sw	zero,16(sp)
    537c:	10000043 	b	548c <func_80B58624+0x218>
    5380:	8fbf0024 	lw	ra,36(sp)
    5384:	44816000 	mtc1	at,$f12
    5388:	262420d8 	addiu	a0,s1,8408
    538c:	460c1480 	add.s	$f18,$f2,$f12
    5390:	46120032 	c.eq.s	$f0,$f18
    5394:	00000000 	nop
    5398:	4502001d 	bc1fl	5410 <func_80B58624+0x19c>
    539c:	8459147c 	lh	t9,5244(v0)
    53a0:	0c000000 	jal	0 <func_80B533B0>
    53a4:	afa30028 	sw	v1,40(sp)
    53a8:	3c013f80 	lui	at,0x3f80
    53ac:	44816000 	mtc1	at,$f12
    53b0:	24010002 	li	at,2
    53b4:	14410034 	bne	v0,at,5488 <func_80B58624+0x214>
    53b8:	8fa30028 	lw	v1,40(sp)
    53bc:	c4660000 	lwc1	$f6,0(v1)
    53c0:	02002025 	move	a0,s0
    53c4:	02202825 	move	a1,s1
    53c8:	460c3200 	add.s	$f8,$f6,$f12
    53cc:	0c000000 	jal	0 <func_80B533B0>
    53d0:	e4680000 	swc1	$f8,0(v1)
    53d4:	02002025 	move	a0,s0
    53d8:	0c000000 	jal	0 <func_80B533B0>
    53dc:	02202825 	move	a1,s1
    53e0:	02002025 	move	a0,s0
    53e4:	0c000000 	jal	0 <func_80B533B0>
    53e8:	02202825 	move	a1,s1
    53ec:	02002025 	move	a0,s0
    53f0:	0c000000 	jal	0 <func_80B533B0>
    53f4:	02202825 	move	a1,s1
    53f8:	02002025 	move	a0,s0
    53fc:	0c000000 	jal	0 <func_80B533B0>
    5400:	02202825 	move	a1,s1
    5404:	10000021 	b	548c <func_80B58624+0x218>
    5408:	8fbf0024 	lw	ra,36(sp)
    540c:	8459147c 	lh	t9,5244(v0)
    5410:	3c0141f0 	lui	at,0x41f0
    5414:	44818000 	mtc1	at,$f16
    5418:	44995000 	mtc1	t9,$f10
    541c:	2408001c 	li	t0,28
    5420:	46805120 	cvt.s.w	$f4,$f10
    5424:	46102480 	add.s	$f18,$f4,$f16
    5428:	4600903e 	c.le.s	$f18,$f0
    542c:	00000000 	nop
    5430:	45020014 	bc1fl	5484 <func_80B58624+0x210>
    5434:	460c0200 	add.s	$f8,$f0,$f12
    5438:	ae08024c 	sw	t0,588(s0)
    543c:	862907a0 	lh	t1,1952(s1)
    5440:	00095080 	sll	t2,t1,0x2
    5444:	022a5821 	addu	t3,s1,t2
    5448:	8d640790 	lw	a0,1936(t3)
    544c:	0c000000 	jal	0 <func_80B533B0>
    5450:	afa30028 	sw	v1,40(sp)
    5454:	3c050601 	lui	a1,0x601
    5458:	24a59fbc 	addiu	a1,a1,-24644
    545c:	02002025 	move	a0,s0
    5460:	00003025 	move	a2,zero
    5464:	3c07c140 	lui	a3,0xc140
    5468:	0c000000 	jal	0 <func_80B533B0>
    546c:	afa00010 	sw	zero,16(sp)
    5470:	8fa30028 	lw	v1,40(sp)
    5474:	44803000 	mtc1	zero,$f6
    5478:	10000003 	b	5488 <func_80B58624+0x214>
    547c:	e4660000 	swc1	$f6,0(v1)
    5480:	460c0200 	add.s	$f8,$f0,$f12
    5484:	e4680000 	swc1	$f8,0(v1)
    5488:	8fbf0024 	lw	ra,36(sp)
    548c:	8fb0001c 	lw	s0,28(sp)
    5490:	8fb10020 	lw	s1,32(sp)
    5494:	03e00008 	jr	ra
    5498:	27bd0040 	addiu	sp,sp,64

0000549c <func_80B5884C>:
    549c:	27bdffe0 	addiu	sp,sp,-32
    54a0:	afa50024 	sw	a1,36(sp)
    54a4:	afbf001c 	sw	ra,28(sp)
    54a8:	3c050600 	lui	a1,0x600
    54ac:	24a538c0 	addiu	a1,a1,14528
    54b0:	afa00010 	sw	zero,16(sp)
    54b4:	afa40020 	sw	a0,32(sp)
    54b8:	24060002 	li	a2,2
    54bc:	0c000000 	jal	0 <func_80B533B0>
    54c0:	3c07c100 	lui	a3,0xc100
    54c4:	8fa40020 	lw	a0,32(sp)
    54c8:	240e0025 	li	t6,37
    54cc:	240f0001 	li	t7,1
    54d0:	ac8e024c 	sw	t6,588(a0)
    54d4:	ac8f036c 	sw	t7,876(a0)
    54d8:	8fbf001c 	lw	ra,28(sp)
    54dc:	27bd0020 	addiu	sp,sp,32
    54e0:	03e00008 	jr	ra
    54e4:	00000000 	nop

000054e8 <func_80B58898>:
    54e8:	27bdffe0 	addiu	sp,sp,-32
    54ec:	afa50024 	sw	a1,36(sp)
    54f0:	afbf001c 	sw	ra,28(sp)
    54f4:	3c050600 	lui	a1,0x600
    54f8:	240e0001 	li	t6,1
    54fc:	afae0010 	sw	t6,16(sp)
    5500:	24a538c0 	addiu	a1,a1,14528
    5504:	afa40020 	sw	a0,32(sp)
    5508:	24060002 	li	a2,2
    550c:	0c000000 	jal	0 <func_80B533B0>
    5510:	3c07c100 	lui	a3,0xc100
    5514:	8fa40020 	lw	a0,32(sp)
    5518:	240f0026 	li	t7,38
    551c:	24180001 	li	t8,1
    5520:	ac8f024c 	sw	t7,588(a0)
    5524:	ac980374 	sw	t8,884(a0)
    5528:	8fbf001c 	lw	ra,28(sp)
    552c:	27bd0020 	addiu	sp,sp,32
    5530:	03e00008 	jr	ra
    5534:	00000000 	nop

00005538 <func_80B588E8>:
    5538:	27bdffe0 	addiu	sp,sp,-32
    553c:	afa50024 	sw	a1,36(sp)
    5540:	afbf001c 	sw	ra,28(sp)
    5544:	3c050601 	lui	a1,0x601
    5548:	afa40020 	sw	a0,32(sp)
    554c:	24a59be4 	addiu	a1,a1,-25628
    5550:	afa00010 	sw	zero,16(sp)
    5554:	00003025 	move	a2,zero
    5558:	0c000000 	jal	0 <func_80B533B0>
    555c:	3c07c100 	lui	a3,0xc100
    5560:	8fa40020 	lw	a0,32(sp)
    5564:	0c000000 	jal	0 <func_80B533B0>
    5568:	8fa50024 	lw	a1,36(sp)
    556c:	8faf0020 	lw	t7,32(sp)
    5570:	240e0027 	li	t6,39
    5574:	adee024c 	sw	t6,588(t7)
    5578:	8fbf001c 	lw	ra,28(sp)
    557c:	27bd0020 	addiu	sp,sp,32
    5580:	03e00008 	jr	ra
    5584:	00000000 	nop

00005588 <func_80B58938>:
    5588:	27bdffe0 	addiu	sp,sp,-32
    558c:	afbf001c 	sw	ra,28(sp)
    5590:	afa40020 	sw	a0,32(sp)
    5594:	0c000000 	jal	0 <func_80B533B0>
    5598:	afa50024 	sw	a1,36(sp)
    559c:	1040000e 	beqz	v0,55d8 <func_80B58938+0x50>
    55a0:	8fa40020 	lw	a0,32(sp)
    55a4:	3c050601 	lui	a1,0x601
    55a8:	24a59fbc 	addiu	a1,a1,-24644
    55ac:	00003025 	move	a2,zero
    55b0:	3c07c100 	lui	a3,0xc100
    55b4:	0c000000 	jal	0 <func_80B533B0>
    55b8:	afa00010 	sw	zero,16(sp)
    55bc:	8faf0020 	lw	t7,32(sp)
    55c0:	240e001c 	li	t6,28
    55c4:	24020001 	li	v0,1
    55c8:	adee024c 	sw	t6,588(t7)
    55cc:	8fb80020 	lw	t8,32(sp)
    55d0:	10000002 	b	55dc <func_80B58938+0x54>
    55d4:	a70003d0 	sh	zero,976(t8)
    55d8:	00001025 	move	v0,zero
    55dc:	8fbf001c 	lw	ra,28(sp)
    55e0:	27bd0020 	addiu	sp,sp,32
    55e4:	03e00008 	jr	ra
    55e8:	00000000 	nop

000055ec <func_80B5899C>:
    55ec:	27bdffe0 	addiu	sp,sp,-32
    55f0:	afbf001c 	sw	ra,28(sp)
    55f4:	948e0088 	lhu	t6,136(a0)
    55f8:	31cf0001 	andi	t7,t6,0x1
    55fc:	51e00017 	beqzl	t7,565c <func_80B5899C+0x70>
    5600:	00001025 	move	v0,zero
    5604:	8ca31c44 	lw	v1,7236(a1)
    5608:	3c050600 	lui	a1,0x600
    560c:	24a57664 	addiu	a1,a1,30308
    5610:	80620a78 	lb	v0,2680(v1)
    5614:	24060002 	li	a2,2
    5618:	3c07c130 	lui	a3,0xc130
    561c:	5c400006 	bgtzl	v0,5638 <func_80B5899C+0x4c>
    5620:	afa00010 	sw	zero,16(sp)
    5624:	84780896 	lh	t8,2198(v1)
    5628:	2b010033 	slti	at,t8,51
    562c:	5420000b 	bnezl	at,565c <func_80B5899C+0x70>
    5630:	00001025 	move	v0,zero
    5634:	afa00010 	sw	zero,16(sp)
    5638:	0c000000 	jal	0 <func_80B533B0>
    563c:	afa40020 	sw	a0,32(sp)
    5640:	8fa40020 	lw	a0,32(sp)
    5644:	24190023 	li	t9,35
    5648:	0c000000 	jal	0 <func_80B533B0>
    564c:	ac99024c 	sw	t9,588(a0)
    5650:	10000002 	b	565c <func_80B5899C+0x70>
    5654:	24020001 	li	v0,1
    5658:	00001025 	move	v0,zero
    565c:	8fbf001c 	lw	ra,28(sp)
    5660:	27bd0020 	addiu	sp,sp,32
    5664:	03e00008 	jr	ra
    5668:	00000000 	nop

0000566c <func_80B58A1C>:
    566c:	27bdffe8 	addiu	sp,sp,-24
    5670:	afbf0014 	sw	ra,20(sp)
    5674:	afa40018 	sw	a0,24(sp)
    5678:	0c000000 	jal	0 <func_80B533B0>
    567c:	afa5001c 	sw	a1,28(sp)
    5680:	14400003 	bnez	v0,5690 <func_80B58A1C+0x24>
    5684:	8fa40018 	lw	a0,24(sp)
    5688:	0c000000 	jal	0 <func_80B533B0>
    568c:	8fa5001c 	lw	a1,28(sp)
    5690:	8fbf0014 	lw	ra,20(sp)
    5694:	27bd0018 	addiu	sp,sp,24
    5698:	03e00008 	jr	ra
    569c:	00000000 	nop

000056a0 <func_80B58A50>:
    56a0:	27bdffe0 	addiu	sp,sp,-32
    56a4:	afbf001c 	sw	ra,28(sp)
    56a8:	afa40020 	sw	a0,32(sp)
    56ac:	8ca31c44 	lw	v1,7236(a1)
    56b0:	80620a78 	lb	v0,2680(v1)
    56b4:	5c40000e 	bgtzl	v0,56f0 <func_80B58A50+0x50>
    56b8:	8fbf001c 	lw	ra,28(sp)
    56bc:	846e0896 	lh	t6,2198(v1)
    56c0:	3c050601 	lui	a1,0x601
    56c4:	24a59be4 	addiu	a1,a1,-25628
    56c8:	29c10033 	slti	at,t6,51
    56cc:	10200007 	beqz	at,56ec <func_80B58A50+0x4c>
    56d0:	00003025 	move	a2,zero
    56d4:	3c07c130 	lui	a3,0xc130
    56d8:	0c000000 	jal	0 <func_80B533B0>
    56dc:	afa00010 	sw	zero,16(sp)
    56e0:	8fb80020 	lw	t8,32(sp)
    56e4:	240f0022 	li	t7,34
    56e8:	af0f024c 	sw	t7,588(t8)
    56ec:	8fbf001c 	lw	ra,28(sp)
    56f0:	27bd0020 	addiu	sp,sp,32
    56f4:	03e00008 	jr	ra
    56f8:	00000000 	nop

000056fc <func_80B58AAC>:
    56fc:	27bdffe8 	addiu	sp,sp,-24
    5700:	afbf0014 	sw	ra,20(sp)
    5704:	3c013f80 	lui	at,0x3f80
    5708:	44813000 	mtc1	at,$f6
    570c:	c48402ec 	lwc1	$f4,748(a0)
    5710:	3c020000 	lui	v0,0x0
    5714:	3c0141c0 	lui	at,0x41c0
    5718:	46062200 	add.s	$f8,$f4,$f6
    571c:	44812000 	mtc1	at,$f4
    5720:	e48802ec 	swc1	$f8,748(a0)
    5724:	8c420000 	lw	v0,0(v0)
    5728:	c48a02ec 	lwc1	$f10,748(a0)
    572c:	844e1462 	lh	t6,5218(v0)
    5730:	448e8000 	mtc1	t6,$f16
    5734:	00000000 	nop
    5738:	468084a0 	cvt.s.w	$f18,$f16
    573c:	46049180 	add.s	$f6,$f18,$f4
    5740:	460a303e 	c.le.s	$f6,$f10
    5744:	00000000 	nop
    5748:	4502000d 	bc1fl	5780 <func_80B58AAC+0x84>
    574c:	84581464 	lh	t8,5220(v0)
    5750:	8c8f036c 	lw	t7,876(a0)
    5754:	55e0000a 	bnezl	t7,5780 <func_80B58AAC+0x84>
    5758:	84581464 	lh	t8,5220(v0)
    575c:	afa40018 	sw	a0,24(sp)
    5760:	0c000000 	jal	0 <func_80B533B0>
    5764:	afa5001c 	sw	a1,28(sp)
    5768:	8fa40018 	lw	a0,24(sp)
    576c:	0c000000 	jal	0 <func_80B533B0>
    5770:	8fa5001c 	lw	a1,28(sp)
    5774:	10000035 	b	584c <func_80B58AAC+0x150>
    5778:	8fbf0014 	lw	ra,20(sp)
    577c:	84581464 	lh	t8,5220(v0)
    5780:	3c014248 	lui	at,0x4248
    5784:	44819000 	mtc1	at,$f18
    5788:	44984000 	mtc1	t8,$f8
    578c:	c48002ec 	lwc1	$f0,748(a0)
    5790:	46804420 	cvt.s.w	$f16,$f8
    5794:	46128100 	add.s	$f4,$f16,$f18
    5798:	4600203e 	c.le.s	$f4,$f0
    579c:	00000000 	nop
    57a0:	4502000b 	bc1fl	57d0 <func_80B58AAC+0xd4>
    57a4:	84491466 	lh	t1,5222(v0)
    57a8:	8c990370 	lw	t9,880(a0)
    57ac:	57200008 	bnezl	t9,57d0 <func_80B58AAC+0xd4>
    57b0:	84491466 	lh	t1,5222(v0)
    57b4:	0c000000 	jal	0 <func_80B533B0>
    57b8:	afa40018 	sw	a0,24(sp)
    57bc:	8fa40018 	lw	a0,24(sp)
    57c0:	24080001 	li	t0,1
    57c4:	10000020 	b	5848 <func_80B58AAC+0x14c>
    57c8:	ac880370 	sw	t0,880(a0)
    57cc:	84491466 	lh	t1,5222(v0)
    57d0:	3c014260 	lui	at,0x4260
    57d4:	44814000 	mtc1	at,$f8
    57d8:	44895000 	mtc1	t1,$f10
    57dc:	00000000 	nop
    57e0:	468051a0 	cvt.s.w	$f6,$f10
    57e4:	46083400 	add.s	$f16,$f6,$f8
    57e8:	4600803e 	c.le.s	$f16,$f0
    57ec:	00000000 	nop
    57f0:	45020009 	bc1fl	5818 <func_80B58AAC+0x11c>
    57f4:	844b1468 	lh	t3,5224(v0)
    57f8:	8c8a0374 	lw	t2,884(a0)
    57fc:	55400006 	bnezl	t2,5818 <func_80B58AAC+0x11c>
    5800:	844b1468 	lh	t3,5224(v0)
    5804:	0c000000 	jal	0 <func_80B533B0>
    5808:	00000000 	nop
    580c:	1000000f 	b	584c <func_80B58AAC+0x150>
    5810:	8fbf0014 	lw	ra,20(sp)
    5814:	844b1468 	lh	t3,5224(v0)
    5818:	3c0142a4 	lui	at,0x42a4
    581c:	44815000 	mtc1	at,$f10
    5820:	448b9000 	mtc1	t3,$f18
    5824:	00000000 	nop
    5828:	46809120 	cvt.s.w	$f4,$f18
    582c:	460a2180 	add.s	$f6,$f4,$f10
    5830:	4600303e 	c.le.s	$f6,$f0
    5834:	00000000 	nop
    5838:	45020004 	bc1fl	584c <func_80B58AAC+0x150>
    583c:	8fbf0014 	lw	ra,20(sp)
    5840:	0c000000 	jal	0 <func_80B533B0>
    5844:	00000000 	nop
    5848:	8fbf0014 	lw	ra,20(sp)
    584c:	27bd0018 	addiu	sp,sp,24
    5850:	03e00008 	jr	ra
    5854:	00000000 	nop

00005858 <func_80B58C08>:
    5858:	27bdffb8 	addiu	sp,sp,-72
    585c:	afbf0024 	sw	ra,36(sp)
    5860:	afb00020 	sw	s0,32(sp)
    5864:	afa5004c 	sw	a1,76(sp)
    5868:	948e0344 	lhu	t6,836(a0)
    586c:	3c180000 	lui	t8,0x0
    5870:	94890346 	lhu	t1,838(a0)
    5874:	25cf0001 	addiu	t7,t6,1
    5878:	a48f0344 	sh	t7,836(a0)
    587c:	8f180000 	lw	t8,0(t8)
    5880:	00808025 	move	s0,a0
    5884:	31e8ffff 	andi	t0,t7,0xffff
    5888:	8719146a 	lh	t9,5226(t8)
    588c:	afa80030 	sw	t0,48(sp)
    5890:	afa00010 	sw	zero,16(sp)
    5894:	01395023 	subu	t2,t1,t9
    5898:	254bfffe 	addiu	t3,t2,-2
    589c:	afab0028 	sw	t3,40(sp)
    58a0:	3106ffff 	andi	a2,t0,0xffff
    58a4:	00002825 	move	a1,zero
    58a8:	24070003 	li	a3,3
    58ac:	afa9002c 	sw	t1,44(sp)
    58b0:	0c000000 	jal	0 <func_80B533B0>
    58b4:	3124ffff 	andi	a0,t1,0xffff
    58b8:	26020348 	addiu	v0,s0,840
    58bc:	26030354 	addiu	v1,s0,852
    58c0:	c4640000 	lwc1	$f4,0(v1)
    58c4:	c4420000 	lwc1	$f2,0(v0)
    58c8:	8fa80030 	lw	t0,48(sp)
    58cc:	8fa9002c 	lw	t1,44(sp)
    58d0:	46022181 	sub.s	$f6,$f4,$f2
    58d4:	26040024 	addiu	a0,s0,36
    58d8:	3c0f0000 	lui	t7,0x0
    58dc:	46060202 	mul.s	$f8,$f0,$f6
    58e0:	46081280 	add.s	$f10,$f2,$f8
    58e4:	e48a0000 	swc1	$f10,0(a0)
    58e8:	c4700004 	lwc1	$f16,4(v1)
    58ec:	c44c0004 	lwc1	$f12,4(v0)
    58f0:	c6080360 	lwc1	$f8,864(s0)
    58f4:	460c8481 	sub.s	$f18,$f16,$f12
    58f8:	46120102 	mul.s	$f4,$f0,$f18
    58fc:	46046180 	add.s	$f6,$f12,$f4
    5900:	46083280 	add.s	$f10,$f6,$f8
    5904:	e48a0004 	swc1	$f10,4(a0)
    5908:	c4700008 	lwc1	$f16,8(v1)
    590c:	c44e0008 	lwc1	$f14,8(v0)
    5910:	460e8481 	sub.s	$f18,$f16,$f14
    5914:	46120102 	mul.s	$f4,$f0,$f18
    5918:	46047180 	add.s	$f6,$f14,$f4
    591c:	e4860008 	swc1	$f6,8(a0)
    5920:	8fac0028 	lw	t4,40(sp)
    5924:	010c6823 	subu	t5,t0,t4
    5928:	05a20014 	bltzl	t5,597c <func_80B58C08+0x124>
    592c:	01286823 	subu	t5,t1,t0
    5930:	8def0000 	lw	t7,0(t7)
    5934:	01287023 	subu	t6,t1,t0
    5938:	448e4000 	mtc1	t6,$f8
    593c:	85f8146a 	lh	t8,5226(t7)
    5940:	3c01437f 	lui	at,0x437f
    5944:	468042a0 	cvt.s.w	$f10,$f8
    5948:	27190002 	addiu	t9,t8,2
    594c:	44998000 	mtc1	t9,$f16
    5950:	44813000 	mtc1	at,$f6
    5954:	240c0002 	li	t4,2
    5958:	468084a0 	cvt.s.w	$f18,$f16
    595c:	ae0c0250 	sw	t4,592(s0)
    5960:	46125103 	div.s	$f4,$f10,$f18
    5964:	46062202 	mul.s	$f8,$f4,$f6
    5968:	4600440d 	trunc.w.s	$f16,$f8
    596c:	440b8000 	mfc1	t3,$f16
    5970:	00000000 	nop
    5974:	ae0b0258 	sw	t3,600(s0)
    5978:	01286823 	subu	t5,t1,t0
    597c:	5da00004 	bgtzl	t5,5990 <func_80B58C08+0x138>
    5980:	8fbf0024 	lw	ra,36(sp)
    5984:	0c000000 	jal	0 <func_80B533B0>
    5988:	02002025 	move	a0,s0
    598c:	8fbf0024 	lw	ra,36(sp)
    5990:	8fb00020 	lw	s0,32(sp)
    5994:	27bd0048 	addiu	sp,sp,72
    5998:	03e00008 	jr	ra
    599c:	00000000 	nop

000059a0 <func_80B58D50>:
    59a0:	27bdffe0 	addiu	sp,sp,-32
    59a4:	afbf001c 	sw	ra,28(sp)
    59a8:	afb00018 	sw	s0,24(sp)
    59ac:	00808025 	move	s0,a0
    59b0:	0c000000 	jal	0 <func_80B533B0>
    59b4:	afa50024 	sw	a1,36(sp)
    59b8:	02002025 	move	a0,s0
    59bc:	0c000000 	jal	0 <func_80B533B0>
    59c0:	8fa50024 	lw	a1,36(sp)
    59c4:	02002025 	move	a0,s0
    59c8:	0c000000 	jal	0 <func_80B533B0>
    59cc:	8fa50024 	lw	a1,36(sp)
    59d0:	0c000000 	jal	0 <func_80B533B0>
    59d4:	02002025 	move	a0,s0
    59d8:	0c000000 	jal	0 <func_80B533B0>
    59dc:	02002025 	move	a0,s0
    59e0:	02002025 	move	a0,s0
    59e4:	0c000000 	jal	0 <func_80B533B0>
    59e8:	8fa50024 	lw	a1,36(sp)
    59ec:	8fbf001c 	lw	ra,28(sp)
    59f0:	8fb00018 	lw	s0,24(sp)
    59f4:	27bd0020 	addiu	sp,sp,32
    59f8:	03e00008 	jr	ra
    59fc:	00000000 	nop

00005a00 <func_80B58DB0>:
    5a00:	27bdffe0 	addiu	sp,sp,-32
    5a04:	afbf001c 	sw	ra,28(sp)
    5a08:	afb00018 	sw	s0,24(sp)
    5a0c:	00808025 	move	s0,a0
    5a10:	0c000000 	jal	0 <func_80B533B0>
    5a14:	afa50024 	sw	a1,36(sp)
    5a18:	02002025 	move	a0,s0
    5a1c:	0c000000 	jal	0 <func_80B533B0>
    5a20:	8fa50024 	lw	a1,36(sp)
    5a24:	02002025 	move	a0,s0
    5a28:	0c000000 	jal	0 <func_80B533B0>
    5a2c:	8fa50024 	lw	a1,36(sp)
    5a30:	0c000000 	jal	0 <func_80B533B0>
    5a34:	02002025 	move	a0,s0
    5a38:	0c000000 	jal	0 <func_80B533B0>
    5a3c:	02002025 	move	a0,s0
    5a40:	02002025 	move	a0,s0
    5a44:	0c000000 	jal	0 <func_80B533B0>
    5a48:	8fa50024 	lw	a1,36(sp)
    5a4c:	8fbf001c 	lw	ra,28(sp)
    5a50:	8fb00018 	lw	s0,24(sp)
    5a54:	27bd0020 	addiu	sp,sp,32
    5a58:	03e00008 	jr	ra
    5a5c:	00000000 	nop

00005a60 <func_80B58E10>:
    5a60:	27bdffe0 	addiu	sp,sp,-32
    5a64:	afbf001c 	sw	ra,28(sp)
    5a68:	afb00018 	sw	s0,24(sp)
    5a6c:	00808025 	move	s0,a0
    5a70:	0c000000 	jal	0 <func_80B533B0>
    5a74:	afa50024 	sw	a1,36(sp)
    5a78:	02002025 	move	a0,s0
    5a7c:	0c000000 	jal	0 <func_80B533B0>
    5a80:	3c054270 	lui	a1,0x4270
    5a84:	02002025 	move	a0,s0
    5a88:	0c000000 	jal	0 <func_80B533B0>
    5a8c:	8fa50024 	lw	a1,36(sp)
    5a90:	02002025 	move	a0,s0
    5a94:	0c000000 	jal	0 <func_80B533B0>
    5a98:	8fa50024 	lw	a1,36(sp)
    5a9c:	0c000000 	jal	0 <func_80B533B0>
    5aa0:	02002025 	move	a0,s0
    5aa4:	0c000000 	jal	0 <func_80B533B0>
    5aa8:	02002025 	move	a0,s0
    5aac:	02002025 	move	a0,s0
    5ab0:	0c000000 	jal	0 <func_80B533B0>
    5ab4:	8fa50024 	lw	a1,36(sp)
    5ab8:	8fbf001c 	lw	ra,28(sp)
    5abc:	8fb00018 	lw	s0,24(sp)
    5ac0:	27bd0020 	addiu	sp,sp,32
    5ac4:	03e00008 	jr	ra
    5ac8:	00000000 	nop

00005acc <func_80B58E7C>:
    5acc:	27bdffe0 	addiu	sp,sp,-32
    5ad0:	afbf001c 	sw	ra,28(sp)
    5ad4:	afb10018 	sw	s1,24(sp)
    5ad8:	afb00014 	sw	s0,20(sp)
    5adc:	00808025 	move	s0,a0
    5ae0:	0c000000 	jal	0 <func_80B533B0>
    5ae4:	00a08825 	move	s1,a1
    5ae8:	02002025 	move	a0,s0
    5aec:	0c000000 	jal	0 <func_80B533B0>
    5af0:	02202825 	move	a1,s1
    5af4:	02002025 	move	a0,s0
    5af8:	0c000000 	jal	0 <func_80B533B0>
    5afc:	02202825 	move	a1,s1
    5b00:	02002025 	move	a0,s0
    5b04:	0c000000 	jal	0 <func_80B533B0>
    5b08:	02202825 	move	a1,s1
    5b0c:	0c000000 	jal	0 <func_80B533B0>
    5b10:	02002025 	move	a0,s0
    5b14:	0c000000 	jal	0 <func_80B533B0>
    5b18:	02002025 	move	a0,s0
    5b1c:	02002025 	move	a0,s0
    5b20:	0c000000 	jal	0 <func_80B533B0>
    5b24:	02202825 	move	a1,s1
    5b28:	0c000000 	jal	0 <func_80B533B0>
    5b2c:	02002025 	move	a0,s0
    5b30:	8fbf001c 	lw	ra,28(sp)
    5b34:	8fb00014 	lw	s0,20(sp)
    5b38:	8fb10018 	lw	s1,24(sp)
    5b3c:	03e00008 	jr	ra
    5b40:	27bd0020 	addiu	sp,sp,32

00005b44 <func_80B58EF4>:
    5b44:	27bdffe0 	addiu	sp,sp,-32
    5b48:	afbf001c 	sw	ra,28(sp)
    5b4c:	afb10018 	sw	s1,24(sp)
    5b50:	afb00014 	sw	s0,20(sp)
    5b54:	00808025 	move	s0,a0
    5b58:	0c000000 	jal	0 <func_80B533B0>
    5b5c:	00a08825 	move	s1,a1
    5b60:	0c000000 	jal	0 <func_80B533B0>
    5b64:	02002025 	move	a0,s0
    5b68:	02002025 	move	a0,s0
    5b6c:	0c000000 	jal	0 <func_80B533B0>
    5b70:	02202825 	move	a1,s1
    5b74:	02002025 	move	a0,s0
    5b78:	0c000000 	jal	0 <func_80B533B0>
    5b7c:	02202825 	move	a1,s1
    5b80:	02002025 	move	a0,s0
    5b84:	0c000000 	jal	0 <func_80B533B0>
    5b88:	02202825 	move	a1,s1
    5b8c:	0c000000 	jal	0 <func_80B533B0>
    5b90:	02002025 	move	a0,s0
    5b94:	0c000000 	jal	0 <func_80B533B0>
    5b98:	02002025 	move	a0,s0
    5b9c:	02002025 	move	a0,s0
    5ba0:	0c000000 	jal	0 <func_80B533B0>
    5ba4:	02202825 	move	a1,s1
    5ba8:	8fbf001c 	lw	ra,28(sp)
    5bac:	8fb00014 	lw	s0,20(sp)
    5bb0:	8fb10018 	lw	s1,24(sp)
    5bb4:	03e00008 	jr	ra
    5bb8:	27bd0020 	addiu	sp,sp,32

00005bbc <func_80B58F6C>:
    5bbc:	27bdffe0 	addiu	sp,sp,-32
    5bc0:	afbf001c 	sw	ra,28(sp)
    5bc4:	afb00018 	sw	s0,24(sp)
    5bc8:	00808025 	move	s0,a0
    5bcc:	0c000000 	jal	0 <func_80B533B0>
    5bd0:	afa50024 	sw	a1,36(sp)
    5bd4:	0c000000 	jal	0 <func_80B533B0>
    5bd8:	02002025 	move	a0,s0
    5bdc:	0c000000 	jal	0 <func_80B533B0>
    5be0:	02002025 	move	a0,s0
    5be4:	02002025 	move	a0,s0
    5be8:	0c000000 	jal	0 <func_80B533B0>
    5bec:	8fa50024 	lw	a1,36(sp)
    5bf0:	02002025 	move	a0,s0
    5bf4:	0c000000 	jal	0 <func_80B533B0>
    5bf8:	8fa50024 	lw	a1,36(sp)
    5bfc:	0c000000 	jal	0 <func_80B533B0>
    5c00:	02002025 	move	a0,s0
    5c04:	0c000000 	jal	0 <func_80B533B0>
    5c08:	02002025 	move	a0,s0
    5c0c:	02002025 	move	a0,s0
    5c10:	0c000000 	jal	0 <func_80B533B0>
    5c14:	8fa50024 	lw	a1,36(sp)
    5c18:	8fbf001c 	lw	ra,28(sp)
    5c1c:	8fb00018 	lw	s0,24(sp)
    5c20:	27bd0020 	addiu	sp,sp,32
    5c24:	03e00008 	jr	ra
    5c28:	00000000 	nop

00005c2c <func_80B58FDC>:
    5c2c:	27bdffe0 	addiu	sp,sp,-32
    5c30:	afbf001c 	sw	ra,28(sp)
    5c34:	afb00018 	sw	s0,24(sp)
    5c38:	00808025 	move	s0,a0
    5c3c:	0c000000 	jal	0 <func_80B533B0>
    5c40:	afa50024 	sw	a1,36(sp)
    5c44:	0c000000 	jal	0 <func_80B533B0>
    5c48:	02002025 	move	a0,s0
    5c4c:	0c000000 	jal	0 <func_80B533B0>
    5c50:	02002025 	move	a0,s0
    5c54:	02002025 	move	a0,s0
    5c58:	0c000000 	jal	0 <func_80B533B0>
    5c5c:	8fa50024 	lw	a1,36(sp)
    5c60:	02002025 	move	a0,s0
    5c64:	0c000000 	jal	0 <func_80B533B0>
    5c68:	8fa50024 	lw	a1,36(sp)
    5c6c:	0c000000 	jal	0 <func_80B533B0>
    5c70:	02002025 	move	a0,s0
    5c74:	0c000000 	jal	0 <func_80B533B0>
    5c78:	02002025 	move	a0,s0
    5c7c:	02002025 	move	a0,s0
    5c80:	0c000000 	jal	0 <func_80B533B0>
    5c84:	8fa50024 	lw	a1,36(sp)
    5c88:	8fbf001c 	lw	ra,28(sp)
    5c8c:	8fb00018 	lw	s0,24(sp)
    5c90:	27bd0020 	addiu	sp,sp,32
    5c94:	03e00008 	jr	ra
    5c98:	00000000 	nop

00005c9c <func_80B5904C>:
    5c9c:	27bdffe0 	addiu	sp,sp,-32
    5ca0:	afbf001c 	sw	ra,28(sp)
    5ca4:	afb00018 	sw	s0,24(sp)
    5ca8:	00808025 	move	s0,a0
    5cac:	0c000000 	jal	0 <func_80B533B0>
    5cb0:	afa50024 	sw	a1,36(sp)
    5cb4:	0c000000 	jal	0 <func_80B533B0>
    5cb8:	02002025 	move	a0,s0
    5cbc:	0c000000 	jal	0 <func_80B533B0>
    5cc0:	02002025 	move	a0,s0
    5cc4:	02002025 	move	a0,s0
    5cc8:	0c000000 	jal	0 <func_80B533B0>
    5ccc:	8fa50024 	lw	a1,36(sp)
    5cd0:	02002025 	move	a0,s0
    5cd4:	0c000000 	jal	0 <func_80B533B0>
    5cd8:	8fa50024 	lw	a1,36(sp)
    5cdc:	0c000000 	jal	0 <func_80B533B0>
    5ce0:	02002025 	move	a0,s0
    5ce4:	0c000000 	jal	0 <func_80B533B0>
    5ce8:	02002025 	move	a0,s0
    5cec:	02002025 	move	a0,s0
    5cf0:	0c000000 	jal	0 <func_80B533B0>
    5cf4:	8fa50024 	lw	a1,36(sp)
    5cf8:	8fbf001c 	lw	ra,28(sp)
    5cfc:	8fb00018 	lw	s0,24(sp)
    5d00:	27bd0020 	addiu	sp,sp,32
    5d04:	03e00008 	jr	ra
    5d08:	00000000 	nop

00005d0c <func_80B590BC>:
    5d0c:	27bdffe0 	addiu	sp,sp,-32
    5d10:	afbf001c 	sw	ra,28(sp)
    5d14:	afb00018 	sw	s0,24(sp)
    5d18:	00808025 	move	s0,a0
    5d1c:	0c000000 	jal	0 <func_80B533B0>
    5d20:	afa50024 	sw	a1,36(sp)
    5d24:	0c000000 	jal	0 <func_80B533B0>
    5d28:	02002025 	move	a0,s0
    5d2c:	0c000000 	jal	0 <func_80B533B0>
    5d30:	02002025 	move	a0,s0
    5d34:	02002025 	move	a0,s0
    5d38:	0c000000 	jal	0 <func_80B533B0>
    5d3c:	8fa50024 	lw	a1,36(sp)
    5d40:	02002025 	move	a0,s0
    5d44:	0c000000 	jal	0 <func_80B533B0>
    5d48:	8fa50024 	lw	a1,36(sp)
    5d4c:	0c000000 	jal	0 <func_80B533B0>
    5d50:	02002025 	move	a0,s0
    5d54:	0c000000 	jal	0 <func_80B533B0>
    5d58:	02002025 	move	a0,s0
    5d5c:	02002025 	move	a0,s0
    5d60:	0c000000 	jal	0 <func_80B533B0>
    5d64:	8fa50024 	lw	a1,36(sp)
    5d68:	8fbf001c 	lw	ra,28(sp)
    5d6c:	8fb00018 	lw	s0,24(sp)
    5d70:	27bd0020 	addiu	sp,sp,32
    5d74:	03e00008 	jr	ra
    5d78:	00000000 	nop

00005d7c <func_80B5912C>:
    5d7c:	27bdffe0 	addiu	sp,sp,-32
    5d80:	afbf001c 	sw	ra,28(sp)
    5d84:	afb10018 	sw	s1,24(sp)
    5d88:	afb00014 	sw	s0,20(sp)
    5d8c:	00808025 	move	s0,a0
    5d90:	0c000000 	jal	0 <func_80B533B0>
    5d94:	00a08825 	move	s1,a1
    5d98:	0c000000 	jal	0 <func_80B533B0>
    5d9c:	02002025 	move	a0,s0
    5da0:	02002025 	move	a0,s0
    5da4:	0c000000 	jal	0 <func_80B533B0>
    5da8:	02202825 	move	a1,s1
    5dac:	02002025 	move	a0,s0
    5db0:	0c000000 	jal	0 <func_80B533B0>
    5db4:	02202825 	move	a1,s1
    5db8:	02002025 	move	a0,s0
    5dbc:	0c000000 	jal	0 <func_80B533B0>
    5dc0:	02202825 	move	a1,s1
    5dc4:	0c000000 	jal	0 <func_80B533B0>
    5dc8:	02002025 	move	a0,s0
    5dcc:	0c000000 	jal	0 <func_80B533B0>
    5dd0:	02002025 	move	a0,s0
    5dd4:	02002025 	move	a0,s0
    5dd8:	0c000000 	jal	0 <func_80B533B0>
    5ddc:	02202825 	move	a1,s1
    5de0:	02002025 	move	a0,s0
    5de4:	0c000000 	jal	0 <func_80B533B0>
    5de8:	02202825 	move	a1,s1
    5dec:	02002025 	move	a0,s0
    5df0:	0c000000 	jal	0 <func_80B533B0>
    5df4:	02202825 	move	a1,s1
    5df8:	8fbf001c 	lw	ra,28(sp)
    5dfc:	8fb00014 	lw	s0,20(sp)
    5e00:	8fb10018 	lw	s1,24(sp)
    5e04:	03e00008 	jr	ra
    5e08:	27bd0020 	addiu	sp,sp,32

00005e0c <func_80B591BC>:
    5e0c:	27bdffe0 	addiu	sp,sp,-32
    5e10:	afbf001c 	sw	ra,28(sp)
    5e14:	afb00018 	sw	s0,24(sp)
    5e18:	00808025 	move	s0,a0
    5e1c:	0c000000 	jal	0 <func_80B533B0>
    5e20:	afa50024 	sw	a1,36(sp)
    5e24:	0c000000 	jal	0 <func_80B533B0>
    5e28:	02002025 	move	a0,s0
    5e2c:	0c000000 	jal	0 <func_80B533B0>
    5e30:	02002025 	move	a0,s0
    5e34:	02002025 	move	a0,s0
    5e38:	0c000000 	jal	0 <func_80B533B0>
    5e3c:	8fa50024 	lw	a1,36(sp)
    5e40:	02002025 	move	a0,s0
    5e44:	0c000000 	jal	0 <func_80B533B0>
    5e48:	8fa50024 	lw	a1,36(sp)
    5e4c:	0c000000 	jal	0 <func_80B533B0>
    5e50:	02002025 	move	a0,s0
    5e54:	0c000000 	jal	0 <func_80B533B0>
    5e58:	02002025 	move	a0,s0
    5e5c:	02002025 	move	a0,s0
    5e60:	0c000000 	jal	0 <func_80B533B0>
    5e64:	8fa50024 	lw	a1,36(sp)
    5e68:	8fbf001c 	lw	ra,28(sp)
    5e6c:	8fb00018 	lw	s0,24(sp)
    5e70:	27bd0020 	addiu	sp,sp,32
    5e74:	03e00008 	jr	ra
    5e78:	00000000 	nop

00005e7c <func_80B5922C>:
    5e7c:	27bdffe0 	addiu	sp,sp,-32
    5e80:	afbf001c 	sw	ra,28(sp)
    5e84:	afb00018 	sw	s0,24(sp)
    5e88:	00808025 	move	s0,a0
    5e8c:	0c000000 	jal	0 <func_80B533B0>
    5e90:	afa50024 	sw	a1,36(sp)
    5e94:	0c000000 	jal	0 <func_80B533B0>
    5e98:	02002025 	move	a0,s0
    5e9c:	0c000000 	jal	0 <func_80B533B0>
    5ea0:	02002025 	move	a0,s0
    5ea4:	02002025 	move	a0,s0
    5ea8:	0c000000 	jal	0 <func_80B533B0>
    5eac:	3c054270 	lui	a1,0x4270
    5eb0:	02002025 	move	a0,s0
    5eb4:	0c000000 	jal	0 <func_80B533B0>
    5eb8:	8fa50024 	lw	a1,36(sp)
    5ebc:	02002025 	move	a0,s0
    5ec0:	0c000000 	jal	0 <func_80B533B0>
    5ec4:	8fa50024 	lw	a1,36(sp)
    5ec8:	0c000000 	jal	0 <func_80B533B0>
    5ecc:	02002025 	move	a0,s0
    5ed0:	0c000000 	jal	0 <func_80B533B0>
    5ed4:	02002025 	move	a0,s0
    5ed8:	02002025 	move	a0,s0
    5edc:	0c000000 	jal	0 <func_80B533B0>
    5ee0:	8fa50024 	lw	a1,36(sp)
    5ee4:	8fbf001c 	lw	ra,28(sp)
    5ee8:	8fb00018 	lw	s0,24(sp)
    5eec:	27bd0020 	addiu	sp,sp,32
    5ef0:	03e00008 	jr	ra
    5ef4:	00000000 	nop

00005ef8 <func_80B592A8>:
    5ef8:	27bdffe0 	addiu	sp,sp,-32
    5efc:	afbf001c 	sw	ra,28(sp)
    5f00:	afb00018 	sw	s0,24(sp)
    5f04:	00808025 	move	s0,a0
    5f08:	0c000000 	jal	0 <func_80B533B0>
    5f0c:	afa50024 	sw	a1,36(sp)
    5f10:	0c000000 	jal	0 <func_80B533B0>
    5f14:	02002025 	move	a0,s0
    5f18:	0c000000 	jal	0 <func_80B533B0>
    5f1c:	02002025 	move	a0,s0
    5f20:	02002025 	move	a0,s0
    5f24:	0c000000 	jal	0 <func_80B533B0>
    5f28:	3c054270 	lui	a1,0x4270
    5f2c:	02002025 	move	a0,s0
    5f30:	0c000000 	jal	0 <func_80B533B0>
    5f34:	8fa50024 	lw	a1,36(sp)
    5f38:	02002025 	move	a0,s0
    5f3c:	0c000000 	jal	0 <func_80B533B0>
    5f40:	8fa50024 	lw	a1,36(sp)
    5f44:	0c000000 	jal	0 <func_80B533B0>
    5f48:	02002025 	move	a0,s0
    5f4c:	0c000000 	jal	0 <func_80B533B0>
    5f50:	02002025 	move	a0,s0
    5f54:	3c060600 	lui	a2,0x600
    5f58:	24c63d20 	addiu	a2,a2,15648
    5f5c:	02002025 	move	a0,s0
    5f60:	0c000000 	jal	0 <func_80B533B0>
    5f64:	00402825 	move	a1,v0
    5f68:	0c000000 	jal	0 <func_80B533B0>
    5f6c:	02002025 	move	a0,s0
    5f70:	02002025 	move	a0,s0
    5f74:	0c000000 	jal	0 <func_80B533B0>
    5f78:	8fa50024 	lw	a1,36(sp)
    5f7c:	8fbf001c 	lw	ra,28(sp)
    5f80:	8fb00018 	lw	s0,24(sp)
    5f84:	27bd0020 	addiu	sp,sp,32
    5f88:	03e00008 	jr	ra
    5f8c:	00000000 	nop

00005f90 <func_80B59340>:
    5f90:	27bdffe0 	addiu	sp,sp,-32
    5f94:	afbf001c 	sw	ra,28(sp)
    5f98:	afb00018 	sw	s0,24(sp)
    5f9c:	00808025 	move	s0,a0
    5fa0:	0c000000 	jal	0 <func_80B533B0>
    5fa4:	afa50024 	sw	a1,36(sp)
    5fa8:	0c000000 	jal	0 <func_80B533B0>
    5fac:	02002025 	move	a0,s0
    5fb0:	0c000000 	jal	0 <func_80B533B0>
    5fb4:	02002025 	move	a0,s0
    5fb8:	02002025 	move	a0,s0
    5fbc:	0c000000 	jal	0 <func_80B533B0>
    5fc0:	3c054270 	lui	a1,0x4270
    5fc4:	02002025 	move	a0,s0
    5fc8:	0c000000 	jal	0 <func_80B533B0>
    5fcc:	8fa50024 	lw	a1,36(sp)
    5fd0:	02002025 	move	a0,s0
    5fd4:	0c000000 	jal	0 <func_80B533B0>
    5fd8:	8fa50024 	lw	a1,36(sp)
    5fdc:	0c000000 	jal	0 <func_80B533B0>
    5fe0:	02002025 	move	a0,s0
    5fe4:	0c000000 	jal	0 <func_80B533B0>
    5fe8:	02002025 	move	a0,s0
    5fec:	3c060601 	lui	a2,0x601
    5ff0:	24c69fbc 	addiu	a2,a2,-24644
    5ff4:	02002025 	move	a0,s0
    5ff8:	0c000000 	jal	0 <func_80B533B0>
    5ffc:	00402825 	move	a1,v0
    6000:	02002025 	move	a0,s0
    6004:	0c000000 	jal	0 <func_80B533B0>
    6008:	8fa50024 	lw	a1,36(sp)
    600c:	8fbf001c 	lw	ra,28(sp)
    6010:	8fb00018 	lw	s0,24(sp)
    6014:	27bd0020 	addiu	sp,sp,32
    6018:	03e00008 	jr	ra
    601c:	00000000 	nop

00006020 <func_80B593D0>:
    6020:	27bdffe0 	addiu	sp,sp,-32
    6024:	afbf001c 	sw	ra,28(sp)
    6028:	afb00018 	sw	s0,24(sp)
    602c:	00808025 	move	s0,a0
    6030:	0c000000 	jal	0 <func_80B533B0>
    6034:	afa50024 	sw	a1,36(sp)
    6038:	0c000000 	jal	0 <func_80B533B0>
    603c:	02002025 	move	a0,s0
    6040:	0c000000 	jal	0 <func_80B533B0>
    6044:	02002025 	move	a0,s0
    6048:	02002025 	move	a0,s0
    604c:	0c000000 	jal	0 <func_80B533B0>
    6050:	8fa50024 	lw	a1,36(sp)
    6054:	02002025 	move	a0,s0
    6058:	0c000000 	jal	0 <func_80B533B0>
    605c:	8fa50024 	lw	a1,36(sp)
    6060:	02002025 	move	a0,s0
    6064:	0c000000 	jal	0 <func_80B533B0>
    6068:	3c054270 	lui	a1,0x4270
    606c:	0c000000 	jal	0 <func_80B533B0>
    6070:	02002025 	move	a0,s0
    6074:	0c000000 	jal	0 <func_80B533B0>
    6078:	02002025 	move	a0,s0
    607c:	02002025 	move	a0,s0
    6080:	0c000000 	jal	0 <func_80B533B0>
    6084:	8fa50024 	lw	a1,36(sp)
    6088:	8fbf001c 	lw	ra,28(sp)
    608c:	8fb00018 	lw	s0,24(sp)
    6090:	27bd0020 	addiu	sp,sp,32
    6094:	03e00008 	jr	ra
    6098:	00000000 	nop

0000609c <func_80B5944C>:
    609c:	27bdffe0 	addiu	sp,sp,-32
    60a0:	2401000e 	li	at,14
    60a4:	afbf001c 	sw	ra,28(sp)
    60a8:	afb00018 	sw	s0,24(sp)
    60ac:	afa40020 	sw	a0,32(sp)
    60b0:	afa60028 	sw	a2,40(sp)
    60b4:	14a10087 	bne	a1,at,62d4 <func_80B5944C+0x238>
    60b8:	afa7002c 	sw	a3,44(sp)
    60bc:	8c840000 	lw	a0,0(a0)
    60c0:	0c000000 	jal	0 <func_80B533B0>
    60c4:	240501c0 	li	a1,448
    60c8:	8fa50038 	lw	a1,56(sp)
    60cc:	3c0fdb06 	lui	t7,0xdb06
    60d0:	35ef0030 	ori	t7,t7,0x30
    60d4:	8ca40000 	lw	a0,0(a1)
    60d8:	00408025 	move	s0,v0
    60dc:	248e0008 	addiu	t6,a0,8
    60e0:	acae0000 	sw	t6,0(a1)
    60e4:	ac820004 	sw	v0,4(a0)
    60e8:	ac8f0000 	sw	t7,0(a0)
    60ec:	8fa30030 	lw	v1,48(sp)
    60f0:	8fa20034 	lw	v0,52(sp)
    60f4:	84780000 	lh	t8,0(v1)
    60f8:	84590402 	lh	t9,1026(v0)
    60fc:	846a0004 	lh	t2,4(v1)
    6100:	24420400 	addiu	v0,v0,1024
    6104:	03194821 	addu	t1,t8,t9
    6108:	a4690000 	sh	t1,0(v1)
    610c:	844b0000 	lh	t3,0(v0)
    6110:	014b6021 	addu	t4,t2,t3
    6114:	0c000000 	jal	0 <func_80B533B0>
    6118:	a46c0004 	sh	t4,4(v1)
    611c:	8fa8002c 	lw	t0,44(sp)
    6120:	24070001 	li	a3,1
    6124:	c50c0000 	lwc1	$f12,0(t0)
    6128:	c50e0004 	lwc1	$f14,4(t0)
    612c:	0c000000 	jal	0 <func_80B533B0>
    6130:	8d060008 	lw	a2,8(t0)
    6134:	8fa30030 	lw	v1,48(sp)
    6138:	24070001 	li	a3,1
    613c:	84640000 	lh	a0,0(v1)
    6140:	84650002 	lh	a1,2(v1)
    6144:	0c000000 	jal	0 <func_80B533B0>
    6148:	84660004 	lh	a2,4(v1)
    614c:	0c000000 	jal	0 <func_80B533B0>
    6150:	00000000 	nop
    6154:	3c01432e 	lui	at,0x432e
    6158:	44816000 	mtc1	at,$f12
    615c:	3c010000 	lui	at,0x0
    6160:	c42e0000 	lwc1	$f14,0(at)
    6164:	24060000 	li	a2,0
    6168:	0c000000 	jal	0 <func_80B533B0>
    616c:	24070001 	li	a3,1
    6170:	3c050000 	lui	a1,0x0
    6174:	24a50000 	addiu	a1,a1,0
    6178:	02002025 	move	a0,s0
    617c:	0c000000 	jal	0 <func_80B533B0>
    6180:	240609a7 	li	a2,2471
    6184:	3c01c3cd 	lui	at,0xc3cd
    6188:	44816000 	mtc1	at,$f12
    618c:	3c01c338 	lui	at,0xc338
    6190:	44817000 	mtc1	at,$f14
    6194:	24060000 	li	a2,0
    6198:	0c000000 	jal	0 <func_80B533B0>
    619c:	24070001 	li	a3,1
    61a0:	3c050000 	lui	a1,0x0
    61a4:	24a50000 	addiu	a1,a1,0
    61a8:	26040040 	addiu	a0,s0,64
    61ac:	0c000000 	jal	0 <func_80B533B0>
    61b0:	240609aa 	li	a2,2474
    61b4:	3c010000 	lui	at,0x0
    61b8:	c42c0000 	lwc1	$f12,0(at)
    61bc:	3c01c1d0 	lui	at,0xc1d0
    61c0:	44817000 	mtc1	at,$f14
    61c4:	24060000 	li	a2,0
    61c8:	0c000000 	jal	0 <func_80B533B0>
    61cc:	24070001 	li	a3,1
    61d0:	3c050000 	lui	a1,0x0
    61d4:	24a50000 	addiu	a1,a1,0
    61d8:	26040080 	addiu	a0,s0,128
    61dc:	0c000000 	jal	0 <func_80B533B0>
    61e0:	240609ad 	li	a2,2477
    61e4:	0c000000 	jal	0 <func_80B533B0>
    61e8:	00000000 	nop
    61ec:	0c000000 	jal	0 <func_80B533B0>
    61f0:	00000000 	nop
    61f4:	3c014220 	lui	at,0x4220
    61f8:	44816000 	mtc1	at,$f12
    61fc:	3c014384 	lui	at,0x4384
    6200:	44817000 	mtc1	at,$f14
    6204:	3c0643c1 	lui	a2,0x43c1
    6208:	0c000000 	jal	0 <func_80B533B0>
    620c:	24070001 	li	a3,1
    6210:	3c050000 	lui	a1,0x0
    6214:	24a50000 	addiu	a1,a1,0
    6218:	260400c0 	addiu	a0,s0,192
    621c:	0c000000 	jal	0 <func_80B533B0>
    6220:	240609b3 	li	a2,2483
    6224:	3c01c3df 	lui	at,0xc3df
    6228:	44816000 	mtc1	at,$f12
    622c:	3c01c250 	lui	at,0xc250
    6230:	44817000 	mtc1	at,$f14
    6234:	3c0642a8 	lui	a2,0x42a8
    6238:	0c000000 	jal	0 <func_80B533B0>
    623c:	24070001 	li	a3,1
    6240:	3c050000 	lui	a1,0x0
    6244:	24a50000 	addiu	a1,a1,0
    6248:	26040100 	addiu	a0,s0,256
    624c:	0c000000 	jal	0 <func_80B533B0>
    6250:	240609b6 	li	a2,2486
    6254:	0c000000 	jal	0 <func_80B533B0>
    6258:	00000000 	nop
    625c:	0c000000 	jal	0 <func_80B533B0>
    6260:	00000000 	nop
    6264:	3c014220 	lui	at,0x4220
    6268:	44816000 	mtc1	at,$f12
    626c:	3c014384 	lui	at,0x4384
    6270:	44817000 	mtc1	at,$f14
    6274:	3c06c3c1 	lui	a2,0xc3c1
    6278:	0c000000 	jal	0 <func_80B533B0>
    627c:	24070001 	li	a3,1
    6280:	3c050000 	lui	a1,0x0
    6284:	24a50000 	addiu	a1,a1,0
    6288:	26040140 	addiu	a0,s0,320
    628c:	0c000000 	jal	0 <func_80B533B0>
    6290:	240609bc 	li	a2,2492
    6294:	3c01c3df 	lui	at,0xc3df
    6298:	44816000 	mtc1	at,$f12
    629c:	3c01c250 	lui	at,0xc250
    62a0:	44817000 	mtc1	at,$f14
    62a4:	3c06c2a8 	lui	a2,0xc2a8
    62a8:	0c000000 	jal	0 <func_80B533B0>
    62ac:	24070001 	li	a3,1
    62b0:	3c050000 	lui	a1,0x0
    62b4:	24a50000 	addiu	a1,a1,0
    62b8:	26040180 	addiu	a0,s0,384
    62bc:	0c000000 	jal	0 <func_80B533B0>
    62c0:	240609bf 	li	a2,2495
    62c4:	0c000000 	jal	0 <func_80B533B0>
    62c8:	00000000 	nop
    62cc:	0c000000 	jal	0 <func_80B533B0>
    62d0:	00000000 	nop
    62d4:	8fbf001c 	lw	ra,28(sp)
    62d8:	8fb00018 	lw	s0,24(sp)
    62dc:	27bd0020 	addiu	sp,sp,32
    62e0:	03e00008 	jr	ra
    62e4:	00001025 	move	v0,zero

000062e8 <func_80B59698>:
    62e8:	27bdffe0 	addiu	sp,sp,-32
    62ec:	afa40020 	sw	a0,32(sp)
    62f0:	afbf0014 	sw	ra,20(sp)
    62f4:	00a03025 	move	a2,a1
    62f8:	00a02025 	move	a0,a1
    62fc:	24050037 	li	a1,55
    6300:	0c000000 	jal	0 <func_80B533B0>
    6304:	afa60024 	sw	a2,36(sp)
    6308:	0002182b 	sltu	v1,zero,v0
    630c:	10600010 	beqz	v1,6350 <func_80B59698+0x68>
    6310:	8fa60024 	lw	a2,36(sp)
    6314:	84c200a4 	lh	v0,164(a2)
    6318:	3843004f 	xori	v1,v0,0x4f
    631c:	2c630001 	sltiu	v1,v1,1
    6320:	1460000b 	bnez	v1,6350 <func_80B59698+0x68>
    6324:	00000000 	nop
    6328:	3843001a 	xori	v1,v0,0x1a
    632c:	2c630001 	sltiu	v1,v1,1
    6330:	14600007 	bnez	v1,6350 <func_80B59698+0x68>
    6334:	00000000 	nop
    6338:	3843000e 	xori	v1,v0,0xe
    633c:	2c630001 	sltiu	v1,v1,1
    6340:	14600003 	bnez	v1,6350 <func_80B59698+0x68>
    6344:	00000000 	nop
    6348:	3843000f 	xori	v1,v0,0xf
    634c:	2c630001 	sltiu	v1,v1,1
    6350:	10600014 	beqz	v1,63a4 <func_80B59698+0xbc>
    6354:	3c0e0001 	lui	t6,0x1
    6358:	01c67021 	addu	t6,t6,a2
    635c:	91ce1dea 	lbu	t6,7658(t6)
    6360:	8fa40020 	lw	a0,32(sp)
    6364:	0c000000 	jal	0 <func_80B533B0>
    6368:	a3ae001b 	sb	t6,27(sp)
    636c:	24010020 	li	at,32
    6370:	1441000c 	bne	v0,at,63a4 <func_80B59698+0xbc>
    6374:	93af001b 	lbu	t7,27(sp)
    6378:	15e0000a 	bnez	t7,63a4 <func_80B59698+0xbc>
    637c:	3c020000 	lui	v0,0x0
    6380:	24420000 	addiu	v0,v0,0
    6384:	845813d4 	lh	t8,5076(v0)
    6388:	1b000004 	blez	t8,639c <func_80B59698+0xb4>
    638c:	00000000 	nop
    6390:	845913d2 	lh	t9,5074(v0)
    6394:	57200004 	bnezl	t9,63a8 <func_80B59698+0xc0>
    6398:	00001025 	move	v0,zero
    639c:	10000002 	b	63a8 <func_80B59698+0xc0>
    63a0:	24020001 	li	v0,1
    63a4:	00001025 	move	v0,zero
    63a8:	8fbf0014 	lw	ra,20(sp)
    63ac:	27bd0020 	addiu	sp,sp,32
    63b0:	03e00008 	jr	ra
    63b4:	00000000 	nop

000063b8 <func_80B59768>:
    63b8:	27bdffe0 	addiu	sp,sp,-32
    63bc:	afa40020 	sw	a0,32(sp)
    63c0:	afbf0014 	sw	ra,20(sp)
    63c4:	00a03025 	move	a2,a1
    63c8:	00a02025 	move	a0,a1
    63cc:	24050037 	li	a1,55
    63d0:	0c000000 	jal	0 <func_80B533B0>
    63d4:	afa60024 	sw	a2,36(sp)
    63d8:	0002182b 	sltu	v1,zero,v0
    63dc:	10600010 	beqz	v1,6420 <func_80B59768+0x68>
    63e0:	8fa60024 	lw	a2,36(sp)
    63e4:	84c200a4 	lh	v0,164(a2)
    63e8:	3843004f 	xori	v1,v0,0x4f
    63ec:	2c630001 	sltiu	v1,v1,1
    63f0:	1460000b 	bnez	v1,6420 <func_80B59768+0x68>
    63f4:	00000000 	nop
    63f8:	3843001a 	xori	v1,v0,0x1a
    63fc:	2c630001 	sltiu	v1,v1,1
    6400:	14600007 	bnez	v1,6420 <func_80B59768+0x68>
    6404:	00000000 	nop
    6408:	3843000e 	xori	v1,v0,0xe
    640c:	2c630001 	sltiu	v1,v1,1
    6410:	14600003 	bnez	v1,6420 <func_80B59768+0x68>
    6414:	00000000 	nop
    6418:	3843000f 	xori	v1,v0,0xf
    641c:	2c630001 	sltiu	v1,v1,1
    6420:	10600010 	beqz	v1,6464 <func_80B59768+0xac>
    6424:	3c0e0001 	lui	t6,0x1
    6428:	01c67021 	addu	t6,t6,a2
    642c:	91ce1dea 	lbu	t6,7658(t6)
    6430:	8fa40020 	lw	a0,32(sp)
    6434:	0c000000 	jal	0 <func_80B533B0>
    6438:	a3ae001b 	sb	t6,27(sp)
    643c:	24010020 	li	at,32
    6440:	14410008 	bne	v0,at,6464 <func_80B59768+0xac>
    6444:	93af001b 	lbu	t7,27(sp)
    6448:	15e00006 	bnez	t7,6464 <func_80B59768+0xac>
    644c:	3c180000 	lui	t8,0x0
    6450:	871813d4 	lh	t8,5076(t8)
    6454:	5f000004 	bgtzl	t8,6468 <func_80B59768+0xb0>
    6458:	00001025 	move	v0,zero
    645c:	10000002 	b	6468 <func_80B59768+0xb0>
    6460:	24020001 	li	v0,1
    6464:	00001025 	move	v0,zero
    6468:	8fbf0014 	lw	ra,20(sp)
    646c:	27bd0020 	addiu	sp,sp,32
    6470:	03e00008 	jr	ra
    6474:	00000000 	nop

00006478 <func_80B59828>:
    6478:	27bdffc8 	addiu	sp,sp,-56
    647c:	afbf0034 	sw	ra,52(sp)
    6480:	afb10030 	sw	s1,48(sp)
    6484:	afb0002c 	sw	s0,44(sp)
    6488:	00a08025 	move	s0,a1
    648c:	0c000000 	jal	0 <func_80B533B0>
    6490:	00808825 	move	s1,a0
    6494:	14400008 	bnez	v0,64b8 <func_80B59828+0x40>
    6498:	02202025 	move	a0,s1
    649c:	0c000000 	jal	0 <func_80B533B0>
    64a0:	02002825 	move	a1,s0
    64a4:	1440001f 	bnez	v0,6524 <func_80B59828+0xac>
    64a8:	02202025 	move	a0,s1
    64ac:	0c000000 	jal	0 <func_80B533B0>
    64b0:	02002825 	move	a1,s0
    64b4:	1040001b 	beqz	v0,6524 <func_80B59828+0xac>
    64b8:	3c050601 	lui	a1,0x601
    64bc:	24a59fbc 	addiu	a1,a1,-24644
    64c0:	02202025 	move	a0,s1
    64c4:	00003025 	move	a2,zero
    64c8:	24070000 	li	a3,0
    64cc:	0c000000 	jal	0 <func_80B533B0>
    64d0:	afa00010 	sw	zero,16(sp)
    64d4:	8e2e0004 	lw	t6,4(s1)
    64d8:	02202025 	move	a0,s1
    64dc:	02002825 	move	a1,s0
    64e0:	35cf0009 	ori	t7,t6,0x9
    64e4:	0c000000 	jal	0 <func_80B533B0>
    64e8:	ae2f0004 	sw	t7,4(s1)
    64ec:	0c000000 	jal	0 <func_80B533B0>
    64f0:	02202025 	move	a0,s1
    64f4:	a62000b8 	sh	zero,184(s1)
    64f8:	86380034 	lh	t8,52(s1)
    64fc:	863900b8 	lh	t9,184(s1)
    6500:	2408001c 	li	t0,28
    6504:	24090001 	li	t1,1
    6508:	a62200b6 	sh	v0,182(s1)
    650c:	a6220032 	sh	v0,50(s1)
    6510:	ae28024c 	sw	t0,588(s1)
    6514:	ae290250 	sw	t1,592(s1)
    6518:	ae3803c4 	sw	t8,964(s1)
    651c:	10000003 	b	652c <func_80B59828+0xb4>
    6520:	a6390034 	sh	t9,52(s1)
    6524:	0c000000 	jal	0 <func_80B533B0>
    6528:	02202025 	move	a0,s1
    652c:	02202025 	move	a0,s1
    6530:	0c000000 	jal	0 <func_80B533B0>
    6534:	02002825 	move	a1,s0
    6538:	10400040 	beqz	v0,663c <func_80B59828+0x1c4>
    653c:	00000000 	nop
    6540:	0c000000 	jal	0 <func_80B533B0>
    6544:	240400b4 	li	a0,180
    6548:	0c000000 	jal	0 <func_80B533B0>
    654c:	00000000 	nop
    6550:	240a0140 	li	t2,320
    6554:	3c010000 	lui	at,0x0
    6558:	a42a1424 	sh	t2,5156(at)
    655c:	0c000000 	jal	0 <func_80B533B0>
    6560:	02002025 	move	a0,s0
    6564:	02002025 	move	a0,s0
    6568:	0c000000 	jal	0 <func_80B533B0>
    656c:	24050020 	li	a1,32
    6570:	10400014 	beqz	v0,65c4 <func_80B59828+0x14c>
    6574:	02002025 	move	a0,s0
    6578:	0c000000 	jal	0 <func_80B533B0>
    657c:	24050020 	li	a1,32
    6580:	3c010000 	lui	at,0x0
    6584:	c4240000 	lwc1	$f4,0(at)
    6588:	3c01c22c 	lui	at,0xc22c
    658c:	44813000 	mtc1	at,$f6
    6590:	240b2000 	li	t3,8192
    6594:	240c2000 	li	t4,8192
    6598:	afac0024 	sw	t4,36(sp)
    659c:	afab001c 	sw	t3,28(sp)
    65a0:	26041c24 	addiu	a0,s0,7204
    65a4:	02002825 	move	a1,s0
    65a8:	24060177 	li	a2,375
    65ac:	3c07c310 	lui	a3,0xc310
    65b0:	afa00018 	sw	zero,24(sp)
    65b4:	afa00020 	sw	zero,32(sp)
    65b8:	e7a40010 	swc1	$f4,16(sp)
    65bc:	0c000000 	jal	0 <func_80B533B0>
    65c0:	e7a60014 	swc1	$f6,20(sp)
    65c4:	02002025 	move	a0,s0
    65c8:	0c000000 	jal	0 <func_80B533B0>
    65cc:	24050021 	li	a1,33
    65d0:	02002025 	move	a0,s0
    65d4:	0c000000 	jal	0 <func_80B533B0>
    65d8:	24050022 	li	a1,34
    65dc:	02002025 	move	a0,s0
    65e0:	0c000000 	jal	0 <func_80B533B0>
    65e4:	24050023 	li	a1,35
    65e8:	02002025 	move	a0,s0
    65ec:	0c000000 	jal	0 <func_80B533B0>
    65f0:	24050024 	li	a1,36
    65f4:	02002025 	move	a0,s0
    65f8:	0c000000 	jal	0 <func_80B533B0>
    65fc:	24050025 	li	a1,37
    6600:	02002025 	move	a0,s0
    6604:	0c000000 	jal	0 <func_80B533B0>
    6608:	24050026 	li	a1,38
    660c:	02002025 	move	a0,s0
    6610:	0c000000 	jal	0 <func_80B533B0>
    6614:	24050027 	li	a1,39
    6618:	02002025 	move	a0,s0
    661c:	0c000000 	jal	0 <func_80B533B0>
    6620:	24050028 	li	a1,40
    6624:	02002025 	move	a0,s0
    6628:	0c000000 	jal	0 <func_80B533B0>
    662c:	24050029 	li	a1,41
    6630:	02002025 	move	a0,s0
    6634:	0c000000 	jal	0 <func_80B533B0>
    6638:	2405002a 	li	a1,42
    663c:	0c000000 	jal	0 <func_80B533B0>
    6640:	02202025 	move	a0,s1
    6644:	24010020 	li	at,32
    6648:	1441001c 	bne	v0,at,66bc <func_80B59828+0x244>
    664c:	02202025 	move	a0,s1
    6650:	0c000000 	jal	0 <func_80B533B0>
    6654:	02002825 	move	a1,s0
    6658:	02002025 	move	a0,s0
    665c:	0c000000 	jal	0 <func_80B533B0>
    6660:	24050037 	li	a1,55
    6664:	0002202b 	sltu	a0,zero,v0
    6668:	10800010 	beqz	a0,66ac <func_80B59828+0x234>
    666c:	02002825 	move	a1,s0
    6670:	860200a4 	lh	v0,164(s0)
    6674:	3844004f 	xori	a0,v0,0x4f
    6678:	2c840001 	sltiu	a0,a0,1
    667c:	1480000b 	bnez	a0,66ac <func_80B59828+0x234>
    6680:	00000000 	nop
    6684:	3844001a 	xori	a0,v0,0x1a
    6688:	2c840001 	sltiu	a0,a0,1
    668c:	14800007 	bnez	a0,66ac <func_80B59828+0x234>
    6690:	00000000 	nop
    6694:	3844000e 	xori	a0,v0,0xe
    6698:	2c840001 	sltiu	a0,a0,1
    669c:	14800003 	bnez	a0,66ac <func_80B59828+0x234>
    66a0:	00000000 	nop
    66a4:	3844000f 	xori	a0,v0,0xf
    66a8:	2c840001 	sltiu	a0,a0,1
    66ac:	50800004 	beqzl	a0,66c0 <func_80B59828+0x248>
    66b0:	8fbf0034 	lw	ra,52(sp)
    66b4:	0c000000 	jal	0 <func_80B533B0>
    66b8:	02202025 	move	a0,s1
    66bc:	8fbf0034 	lw	ra,52(sp)
    66c0:	8fb0002c 	lw	s0,44(sp)
    66c4:	8fb10030 	lw	s1,48(sp)
    66c8:	03e00008 	jr	ra
    66cc:	27bd0038 	addiu	sp,sp,56

000066d0 <func_80B59A80>:
    66d0:	27bdffe0 	addiu	sp,sp,-32
    66d4:	afbf001c 	sw	ra,28(sp)
    66d8:	0c000000 	jal	0 <func_80B533B0>
    66dc:	00000000 	nop
    66e0:	1040000b 	beqz	v0,6710 <func_80B59A80+0x40>
    66e4:	3c070000 	lui	a3,0x0
    66e8:	3c0e0000 	lui	t6,0x0
    66ec:	24e70000 	addiu	a3,a3,0
    66f0:	25ce0000 	addiu	t6,t6,0
    66f4:	3c050000 	lui	a1,0x0
    66f8:	24a50000 	addiu	a1,a1,0
    66fc:	afae0014 	sw	t6,20(sp)
    6700:	afa70010 	sw	a3,16(sp)
    6704:	24045806 	li	a0,22534
    6708:	0c000000 	jal	0 <func_80B533B0>
    670c:	24060004 	li	a2,4
    6710:	8fbf001c 	lw	ra,28(sp)
    6714:	27bd0020 	addiu	sp,sp,32
    6718:	03e00008 	jr	ra
    671c:	00000000 	nop

00006720 <func_80B59AD0>:
    6720:	27bdffe0 	addiu	sp,sp,-32
    6724:	afb00014 	sw	s0,20(sp)
    6728:	00808025 	move	s0,a0
    672c:	afb10018 	sw	s1,24(sp)
    6730:	00a08825 	move	s1,a1
    6734:	afbf001c 	sw	ra,28(sp)
    6738:	00a02025 	move	a0,a1
    673c:	0c000000 	jal	0 <func_80B533B0>
    6740:	24050036 	li	a1,54
    6744:	0c000000 	jal	0 <func_80B533B0>
    6748:	240400b4 	li	a0,180
    674c:	02002025 	move	a0,s0
    6750:	0c000000 	jal	0 <func_80B533B0>
    6754:	02202825 	move	a1,s1
    6758:	02002025 	move	a0,s0
    675c:	0c000000 	jal	0 <func_80B533B0>
    6760:	02202825 	move	a1,s1
    6764:	3c020000 	lui	v0,0x0
    6768:	24420000 	addiu	v0,v0,0
    676c:	944e0eec 	lhu	t6,3820(v0)
    6770:	02002025 	move	a0,s0
    6774:	02202825 	move	a1,s1
    6778:	31cfff7f 	andi	t7,t6,0xff7f
    677c:	0c000000 	jal	0 <func_80B533B0>
    6780:	a44f0eec 	sh	t7,3820(v0)
    6784:	24180140 	li	t8,320
    6788:	3c010000 	lui	at,0x0
    678c:	a4381424 	sh	t8,5156(at)
    6790:	0c000000 	jal	0 <func_80B533B0>
    6794:	02202025 	move	a0,s1
    6798:	2419001b 	li	t9,27
    679c:	24080001 	li	t0,1
    67a0:	ae19024c 	sw	t9,588(s0)
    67a4:	ae080250 	sw	t0,592(s0)
    67a8:	8fbf001c 	lw	ra,28(sp)
    67ac:	8fb10018 	lw	s1,24(sp)
    67b0:	8fb00014 	lw	s0,20(sp)
    67b4:	03e00008 	jr	ra
    67b8:	27bd0020 	addiu	sp,sp,32

000067bc <func_80B59B6C>:
    67bc:	27bdffd0 	addiu	sp,sp,-48
    67c0:	afbf0024 	sw	ra,36(sp)
    67c4:	afb00014 	sw	s0,20(sp)
    67c8:	00808025 	move	s0,a0
    67cc:	afb30020 	sw	s3,32(sp)
    67d0:	afb2001c 	sw	s2,28(sp)
    67d4:	afb10018 	sw	s1,24(sp)
    67d8:	0c000000 	jal	0 <func_80B533B0>
    67dc:	afa50034 	sw	a1,52(sp)
    67e0:	3c030601 	lui	v1,0x601
    67e4:	246391d8 	addiu	v1,v1,-28200
    67e8:	00037100 	sll	t6,v1,0x4
    67ec:	3c110000 	lui	s1,0x0
    67f0:	000e7f02 	srl	t7,t6,0x1c
    67f4:	26310000 	addiu	s1,s1,0
    67f8:	000fc080 	sll	t8,t7,0x2
    67fc:	0238c821 	addu	t9,s1,t8
    6800:	8f280000 	lw	t0,0(t9)
    6804:	3c1200ff 	lui	s2,0xff
    6808:	3652ffff 	ori	s2,s2,0xffff
    680c:	00724824 	and	t1,v1,s2
    6810:	3c138000 	lui	s3,0x8000
    6814:	01095021 	addu	t2,t0,t1
    6818:	afa2002c 	sw	v0,44(sp)
    681c:	0c000000 	jal	0 <func_80B533B0>
    6820:	01532021 	addu	a0,t2,s3
    6824:	44822000 	mtc1	v0,$f4
    6828:	3c030601 	lui	v1,0x601
    682c:	2463a598 	addiu	v1,v1,-23144
    6830:	468021a0 	cvt.s.w	$f6,$f4
    6834:	00035900 	sll	t3,v1,0x4
    6838:	000b6702 	srl	t4,t3,0x1c
    683c:	000c6880 	sll	t5,t4,0x2
    6840:	022d7021 	addu	t6,s1,t5
    6844:	0072c024 	and	t8,v1,s2
    6848:	e60603dc 	swc1	$f6,988(s0)
    684c:	8dcf0000 	lw	t7,0(t6)
    6850:	01f8c821 	addu	t9,t7,t8
    6854:	0c000000 	jal	0 <func_80B533B0>
    6858:	03332021 	addu	a0,t9,s3
    685c:	44824000 	mtc1	v0,$f8
    6860:	3c030601 	lui	v1,0x601
    6864:	2463a334 	addiu	v1,v1,-23756
    6868:	468042a0 	cvt.s.w	$f10,$f8
    686c:	00034100 	sll	t0,v1,0x4
    6870:	00084f02 	srl	t1,t0,0x1c
    6874:	00095080 	sll	t2,t1,0x2
    6878:	022a5821 	addu	t3,s1,t2
    687c:	00726824 	and	t5,v1,s2
    6880:	e60a03e0 	swc1	$f10,992(s0)
    6884:	8d6c0000 	lw	t4,0(t3)
    6888:	018d7021 	addu	t6,t4,t5
    688c:	0c000000 	jal	0 <func_80B533B0>
    6890:	01d32021 	addu	a0,t6,s3
    6894:	44828000 	mtc1	v0,$f16
    6898:	3c030600 	lui	v1,0x600
    689c:	24631110 	addiu	v1,v1,4368
    68a0:	468084a0 	cvt.s.w	$f18,$f16
    68a4:	00037900 	sll	t7,v1,0x4
    68a8:	000fc702 	srl	t8,t7,0x1c
    68ac:	0018c880 	sll	t9,t8,0x2
    68b0:	02394021 	addu	t0,s1,t9
    68b4:	00725024 	and	t2,v1,s2
    68b8:	e61203e4 	swc1	$f18,996(s0)
    68bc:	8d090000 	lw	t1,0(t0)
    68c0:	012a5821 	addu	t3,t1,t2
    68c4:	0c000000 	jal	0 <func_80B533B0>
    68c8:	01732021 	addu	a0,t3,s3
    68cc:	44822000 	mtc1	v0,$f4
    68d0:	3c030600 	lui	v1,0x600
    68d4:	24632348 	addiu	v1,v1,9032
    68d8:	468021a0 	cvt.s.w	$f6,$f4
    68dc:	00036100 	sll	t4,v1,0x4
    68e0:	000c6f02 	srl	t5,t4,0x1c
    68e4:	000d7080 	sll	t6,t5,0x2
    68e8:	022e7821 	addu	t7,s1,t6
    68ec:	0072c824 	and	t9,v1,s2
    68f0:	e60603f4 	swc1	$f6,1012(s0)
    68f4:	8df80000 	lw	t8,0(t7)
    68f8:	03194021 	addu	t0,t8,t9
    68fc:	0c000000 	jal	0 <func_80B533B0>
    6900:	01132021 	addu	a0,t0,s3
    6904:	44824000 	mtc1	v0,$f8
    6908:	3c030600 	lui	v1,0x600
    690c:	24632e54 	addiu	v1,v1,11860
    6910:	468042a0 	cvt.s.w	$f10,$f8
    6914:	00034900 	sll	t1,v1,0x4
    6918:	00095702 	srl	t2,t1,0x1c
    691c:	000a5880 	sll	t3,t2,0x2
    6920:	022b6021 	addu	t4,s1,t3
    6924:	00727024 	and	t6,v1,s2
    6928:	e60a03ec 	swc1	$f10,1004(s0)
    692c:	8d8d0000 	lw	t5,0(t4)
    6930:	01ae7821 	addu	t7,t5,t6
    6934:	0c000000 	jal	0 <func_80B533B0>
    6938:	01f32021 	addu	a0,t7,s3
    693c:	44828000 	mtc1	v0,$f16
    6940:	3c030600 	lui	v1,0x600
    6944:	24631d8c 	addiu	v1,v1,7564
    6948:	468084a0 	cvt.s.w	$f18,$f16
    694c:	0003c100 	sll	t8,v1,0x4
    6950:	0018cf02 	srl	t9,t8,0x1c
    6954:	00194080 	sll	t0,t9,0x2
    6958:	02284821 	addu	t1,s1,t0
    695c:	00725824 	and	t3,v1,s2
    6960:	e61203f0 	swc1	$f18,1008(s0)
    6964:	8d2a0000 	lw	t2,0(t1)
    6968:	014b6021 	addu	t4,t2,t3
    696c:	0c000000 	jal	0 <func_80B533B0>
    6970:	01932021 	addu	a0,t4,s3
    6974:	44822000 	mtc1	v0,$f4
    6978:	8fa3002c 	lw	v1,44(sp)
    697c:	24010001 	li	at,1
    6980:	468021a0 	cvt.s.w	$f6,$f4
    6984:	02002025 	move	a0,s0
    6988:	10600008 	beqz	v1,69ac <func_80B59B6C+0x1f0>
    698c:	e60603e8 	swc1	$f6,1000(s0)
    6990:	1061000a 	beq	v1,at,69bc <func_80B59B6C+0x200>
    6994:	02002025 	move	a0,s0
    6998:	24010003 	li	at,3
    699c:	1061000b 	beq	v1,at,69cc <func_80B59B6C+0x210>
    69a0:	02002025 	move	a0,s0
    69a4:	1000000d 	b	69dc <func_80B59B6C+0x220>
    69a8:	3c040000 	lui	a0,0x0
    69ac:	0c000000 	jal	0 <func_80B533B0>
    69b0:	8fa50034 	lw	a1,52(sp)
    69b4:	1000000e 	b	69f0 <func_80B59B6C+0x234>
    69b8:	8fbf0024 	lw	ra,36(sp)
    69bc:	0c000000 	jal	0 <func_80B533B0>
    69c0:	8fa50034 	lw	a1,52(sp)
    69c4:	1000000a 	b	69f0 <func_80B59B6C+0x234>
    69c8:	8fbf0024 	lw	ra,36(sp)
    69cc:	0c000000 	jal	0 <func_80B533B0>
    69d0:	8fa50034 	lw	a1,52(sp)
    69d4:	10000006 	b	69f0 <func_80B59B6C+0x234>
    69d8:	8fbf0024 	lw	ra,36(sp)
    69dc:	0c000000 	jal	0 <func_80B533B0>
    69e0:	24840000 	addiu	a0,a0,0
    69e4:	0c000000 	jal	0 <func_80B533B0>
    69e8:	02002025 	move	a0,s0
    69ec:	8fbf0024 	lw	ra,36(sp)
    69f0:	8fb00014 	lw	s0,20(sp)
    69f4:	8fb10018 	lw	s1,24(sp)
    69f8:	8fb2001c 	lw	s2,28(sp)
    69fc:	8fb30020 	lw	s3,32(sp)
    6a00:	03e00008 	jr	ra
    6a04:	27bd0030 	addiu	sp,sp,48

00006a08 <func_80B59DB8>:
    6a08:	27bdffd0 	addiu	sp,sp,-48
    6a0c:	3c010001 	lui	at,0x1
    6a10:	afa40030 	sw	a0,48(sp)
    6a14:	342117a4 	ori	at,at,0x17a4
    6a18:	afbf0014 	sw	ra,20(sp)
    6a1c:	afa50034 	sw	a1,52(sp)
    6a20:	00a12021 	addu	a0,a1,at
    6a24:	afa4001c 	sw	a0,28(sp)
    6a28:	0c000000 	jal	0 <func_80B533B0>
    6a2c:	2405014f 	li	a1,335
    6a30:	8fa4001c 	lw	a0,28(sp)
    6a34:	04410006 	bgez	v0,6a50 <func_80B59DB8+0x48>
    6a38:	00403025 	move	a2,v0
    6a3c:	3c040000 	lui	a0,0x0
    6a40:	0c000000 	jal	0 <func_80B533B0>
    6a44:	24840000 	addiu	a0,a0,0
    6a48:	1000000e 	b	6a84 <func_80B59DB8+0x7c>
    6a4c:	8fbf0014 	lw	ra,20(sp)
    6a50:	00c02825 	move	a1,a2
    6a54:	0c000000 	jal	0 <func_80B533B0>
    6a58:	afa60024 	sw	a2,36(sp)
    6a5c:	10400008 	beqz	v0,6a80 <func_80B59DB8+0x78>
    6a60:	8fa60024 	lw	a2,36(sp)
    6a64:	8fa40030 	lw	a0,48(sp)
    6a68:	ac860318 	sw	a2,792(a0)
    6a6c:	0c000000 	jal	0 <func_80B533B0>
    6a70:	8fa50034 	lw	a1,52(sp)
    6a74:	8fa40030 	lw	a0,48(sp)
    6a78:	0c000000 	jal	0 <func_80B533B0>
    6a7c:	8fa50034 	lw	a1,52(sp)
    6a80:	8fbf0014 	lw	ra,20(sp)
    6a84:	27bd0030 	addiu	sp,sp,48
    6a88:	03e00008 	jr	ra
    6a8c:	00000000 	nop

00006a90 <EnZl3_Update>:
    6a90:	27bdffe8 	addiu	sp,sp,-24
    6a94:	afbf0014 	sw	ra,20(sp)
    6a98:	8c82024c 	lw	v0,588(a0)
    6a9c:	04400008 	bltz	v0,6ac0 <EnZl3_Update+0x30>
    6aa0:	28410028 	slti	at,v0,40
    6aa4:	10200006 	beqz	at,6ac0 <EnZl3_Update+0x30>
    6aa8:	00027080 	sll	t6,v0,0x2
    6aac:	3c030000 	lui	v1,0x0
    6ab0:	006e1821 	addu	v1,v1,t6
    6ab4:	8c630000 	lw	v1,0(v1)
    6ab8:	14600006 	bnez	v1,6ad4 <EnZl3_Update+0x44>
    6abc:	00000000 	nop
    6ac0:	3c040000 	lui	a0,0x0
    6ac4:	0c000000 	jal	0 <func_80B533B0>
    6ac8:	24840000 	addiu	a0,a0,0
    6acc:	10000004 	b	6ae0 <EnZl3_Update+0x50>
    6ad0:	8fbf0014 	lw	ra,20(sp)
    6ad4:	0060f809 	jalr	v1
    6ad8:	00000000 	nop
    6adc:	8fbf0014 	lw	ra,20(sp)
    6ae0:	27bd0018 	addiu	sp,sp,24
    6ae4:	03e00008 	jr	ra
    6ae8:	00000000 	nop

00006aec <EnZl3_Init>:
    6aec:	27bdffb8 	addiu	sp,sp,-72
    6af0:	afb00028 	sw	s0,40(sp)
    6af4:	00808025 	move	s0,a0
    6af8:	afbf002c 	sw	ra,44(sp)
    6afc:	3c040000 	lui	a0,0x0
    6b00:	afa5004c 	sw	a1,76(sp)
    6b04:	0c000000 	jal	0 <func_80B533B0>
    6b08:	24840000 	addiu	a0,a0,0
    6b0c:	260400b4 	addiu	a0,s0,180
    6b10:	3c060000 	lui	a2,0x0
    6b14:	24c60000 	addiu	a2,a2,0
    6b18:	afa40034 	sw	a0,52(sp)
    6b1c:	24050000 	li	a1,0
    6b20:	0c000000 	jal	0 <func_80B533B0>
    6b24:	3c0741f0 	lui	a3,0x41f0
    6b28:	8fae0034 	lw	t6,52(sp)
    6b2c:	02002025 	move	a0,s0
    6b30:	a1c00014 	sb	zero,20(t6)
    6b34:	0c000000 	jal	0 <func_80B533B0>
    6b38:	8fa5004c 	lw	a1,76(sp)
    6b3c:	3c060601 	lui	a2,0x601
    6b40:	260f0190 	addiu	t7,s0,400
    6b44:	261801ea 	addiu	t8,s0,490
    6b48:	2419000f 	li	t9,15
    6b4c:	afb90018 	sw	t9,24(sp)
    6b50:	afb80014 	sw	t8,20(sp)
    6b54:	afaf0010 	sw	t7,16(sp)
    6b58:	24c60d70 	addiu	a2,a2,3440
    6b5c:	8fa4004c 	lw	a0,76(sp)
    6b60:	2605014c 	addiu	a1,s0,332
    6b64:	0c000000 	jal	0 <func_80B533B0>
    6b68:	00003825 	move	a3,zero
    6b6c:	0c000000 	jal	0 <func_80B533B0>
    6b70:	02002025 	move	a0,s0
    6b74:	24010001 	li	at,1
    6b78:	10410005 	beq	v0,at,6b90 <EnZl3_Init+0xa4>
    6b7c:	24010003 	li	at,3
    6b80:	10410006 	beq	v0,at,6b9c <EnZl3_Init+0xb0>
    6b84:	02002025 	move	a0,s0
    6b88:	10000006 	b	6ba4 <EnZl3_Init+0xb8>
    6b8c:	00000000 	nop
    6b90:	3c010000 	lui	at,0x0
    6b94:	10000003 	b	6ba4 <EnZl3_Init+0xb8>
    6b98:	a42013d2 	sh	zero,5074(at)
    6b9c:	0c000000 	jal	0 <func_80B533B0>
    6ba0:	8fa5004c 	lw	a1,76(sp)
    6ba4:	3c040000 	lui	a0,0x0
    6ba8:	0c000000 	jal	0 <func_80B533B0>
    6bac:	24840000 	addiu	a0,a0,0
    6bb0:	8fbf002c 	lw	ra,44(sp)
    6bb4:	8fb00028 	lw	s0,40(sp)
    6bb8:	27bd0048 	addiu	sp,sp,72
    6bbc:	03e00008 	jr	ra
    6bc0:	00000000 	nop

00006bc4 <func_80B59F74>:
    6bc4:	27bdffd8 	addiu	sp,sp,-40
    6bc8:	8fae003c 	lw	t6,60(sp)
    6bcc:	afbf0024 	sw	ra,36(sp)
    6bd0:	8dc20308 	lw	v0,776(t6)
    6bd4:	04400009 	bltz	v0,6bfc <func_80B59F74+0x38>
    6bd8:	28410002 	slti	at,v0,2
    6bdc:	10200007 	beqz	at,6bfc <func_80B59F74+0x38>
    6be0:	00027880 	sll	t7,v0,0x2
    6be4:	3c030000 	lui	v1,0x0
    6be8:	006f1821 	addu	v1,v1,t7
    6bec:	8c630000 	lw	v1,0(v1)
    6bf0:	8fb80038 	lw	t8,56(sp)
    6bf4:	54600007 	bnezl	v1,6c14 <func_80B59F74+0x50>
    6bf8:	8fb9003c 	lw	t9,60(sp)
    6bfc:	3c040000 	lui	a0,0x0
    6c00:	0c000000 	jal	0 <func_80B533B0>
    6c04:	24840000 	addiu	a0,a0,0
    6c08:	10000007 	b	6c28 <func_80B59F74+0x64>
    6c0c:	00001025 	move	v0,zero
    6c10:	8fb9003c 	lw	t9,60(sp)
    6c14:	8fa80040 	lw	t0,64(sp)
    6c18:	afb80010 	sw	t8,16(sp)
    6c1c:	afb90014 	sw	t9,20(sp)
    6c20:	0060f809 	jalr	v1
    6c24:	afa80018 	sw	t0,24(sp)
    6c28:	8fbf0024 	lw	ra,36(sp)
    6c2c:	27bd0028 	addiu	sp,sp,40
    6c30:	03e00008 	jr	ra
    6c34:	00000000 	nop

00006c38 <func_80B59FE8>:
    6c38:	afa40000 	sw	a0,0(sp)
    6c3c:	03e00008 	jr	ra
    6c40:	afa50004 	sw	a1,4(sp)

00006c44 <func_80B59FF4>:
    6c44:	27bdff78 	addiu	sp,sp,-136
    6c48:	afbf002c 	sw	ra,44(sp)
    6c4c:	afb00028 	sw	s0,40(sp)
    6c50:	afa40088 	sw	a0,136(sp)
    6c54:	afa5008c 	sw	a1,140(sp)
    6c58:	84820244 	lh	v0,580(a0)
    6c5c:	3c180000 	lui	t8,0x0
    6c60:	3c0a0000 	lui	t2,0x0
    6c64:	00027880 	sll	t7,v0,0x2
    6c68:	030fc021 	addu	t8,t8,t7
    6c6c:	8f180000 	lw	t8,0(t8)
    6c70:	3c060000 	lui	a2,0x0
    6c74:	24c60000 	addiu	a2,a2,0
    6c78:	afb80078 	sw	t8,120(sp)
    6c7c:	84830248 	lh	v1,584(a0)
    6c80:	27a40054 	addiu	a0,sp,84
    6c84:	24070875 	li	a3,2165
    6c88:	0003c880 	sll	t9,v1,0x2
    6c8c:	01595021 	addu	t2,t2,t9
    6c90:	8d4a0000 	lw	t2,0(t2)
    6c94:	afaa006c 	sw	t2,108(sp)
    6c98:	8ca50000 	lw	a1,0(a1)
    6c9c:	0c000000 	jal	0 <func_80B533B0>
    6ca0:	00a08025 	move	s0,a1
    6ca4:	8fac008c 	lw	t4,140(sp)
    6ca8:	0c000000 	jal	0 <func_80B533B0>
    6cac:	8d840000 	lw	a0,0(t4)
    6cb0:	8fa90078 	lw	t1,120(sp)
    6cb4:	8e0202c0 	lw	v0,704(s0)
    6cb8:	3c070000 	lui	a3,0x0
    6cbc:	0009c100 	sll	t8,t1,0x4
    6cc0:	00187702 	srl	t6,t8,0x1c
    6cc4:	3c0fdb06 	lui	t7,0xdb06
    6cc8:	244d0008 	addiu	t5,v0,8
    6ccc:	ae0d02c0 	sw	t5,704(s0)
    6cd0:	35ef0020 	ori	t7,t7,0x20
    6cd4:	000ec880 	sll	t9,t6,0x2
    6cd8:	24e70000 	addiu	a3,a3,0
    6cdc:	00f92021 	addu	a0,a3,t9
    6ce0:	ac4f0000 	sw	t7,0(v0)
    6ce4:	8c8a0000 	lw	t2,0(a0)
    6ce8:	3c0800ff 	lui	t0,0xff
    6cec:	3508ffff 	ori	t0,t0,0xffff
    6cf0:	01282824 	and	a1,t1,t0
    6cf4:	3c068000 	lui	a2,0x8000
    6cf8:	01455821 	addu	t3,t2,a1
    6cfc:	01666021 	addu	t4,t3,a2
    6d00:	ac4c0004 	sw	t4,4(v0)
    6d04:	8e0202c0 	lw	v0,704(s0)
    6d08:	3c0fdb06 	lui	t7,0xdb06
    6d0c:	35ef0024 	ori	t7,t7,0x24
    6d10:	244d0008 	addiu	t5,v0,8
    6d14:	ae0d02c0 	sw	t5,704(s0)
    6d18:	ac4f0000 	sw	t7,0(v0)
    6d1c:	8c980000 	lw	t8,0(a0)
    6d20:	3c0bdb06 	lui	t3,0xdb06
    6d24:	356b0028 	ori	t3,t3,0x28
    6d28:	03057021 	addu	t6,t8,a1
    6d2c:	01c6c821 	addu	t9,t6,a2
    6d30:	ac590004 	sw	t9,4(v0)
    6d34:	8fa4006c 	lw	a0,108(sp)
    6d38:	8e0202c0 	lw	v0,704(s0)
    6d3c:	00046100 	sll	t4,a0,0x4
    6d40:	000c6f02 	srl	t5,t4,0x1c
    6d44:	244a0008 	addiu	t2,v0,8
    6d48:	ae0a02c0 	sw	t2,704(s0)
    6d4c:	000d7880 	sll	t7,t5,0x2
    6d50:	00efc021 	addu	t8,a3,t7
    6d54:	ac4b0000 	sw	t3,0(v0)
    6d58:	8f0e0000 	lw	t6,0(t8)
    6d5c:	0088c824 	and	t9,a0,t0
    6d60:	240f00ff 	li	t7,255
    6d64:	01d95021 	addu	t2,t6,t9
    6d68:	01465821 	addu	t3,t2,a2
    6d6c:	ac4b0004 	sw	t3,4(v0)
    6d70:	8e0202c0 	lw	v0,704(s0)
    6d74:	3c0dfb00 	lui	t5,0xfb00
    6d78:	3c190000 	lui	t9,0x0
    6d7c:	244c0008 	addiu	t4,v0,8
    6d80:	ae0c02c0 	sw	t4,704(s0)
    6d84:	ac4f0004 	sw	t7,4(v0)
    6d88:	ac4d0000 	sw	t5,0(v0)
    6d8c:	8e0202c0 	lw	v0,704(s0)
    6d90:	3c0edb06 	lui	t6,0xdb06
    6d94:	35ce002c 	ori	t6,t6,0x2c
    6d98:	24580008 	addiu	t8,v0,8
    6d9c:	ae1802c0 	sw	t8,704(s0)
    6da0:	27390010 	addiu	t9,t9,16
    6da4:	ac590004 	sw	t9,4(v0)
    6da8:	ac4e0000 	sw	t6,0(v0)
    6dac:	8fa30088 	lw	v1,136(sp)
    6db0:	3c0b0000 	lui	t3,0x0
    6db4:	3c0a0000 	lui	t2,0x0
    6db8:	2462014c 	addiu	v0,v1,332
    6dbc:	8c450004 	lw	a1,4(v0)
    6dc0:	8c460020 	lw	a2,32(v0)
    6dc4:	90470002 	lbu	a3,2(v0)
    6dc8:	254a0000 	addiu	t2,t2,0
    6dcc:	256b0000 	addiu	t3,t3,0
    6dd0:	afab0014 	sw	t3,20(sp)
    6dd4:	afaa0010 	sw	t2,16(sp)
    6dd8:	afa30018 	sw	v1,24(sp)
    6ddc:	8e0c02c0 	lw	t4,704(s0)
    6de0:	8fa4008c 	lw	a0,140(sp)
    6de4:	0c000000 	jal	0 <func_80B533B0>
    6de8:	afac001c 	sw	t4,28(sp)
    6dec:	ae0202c0 	sw	v0,704(s0)
    6df0:	8fad008c 	lw	t5,140(sp)
    6df4:	3c060000 	lui	a2,0x0
    6df8:	24c60000 	addiu	a2,a2,0
    6dfc:	27a40054 	addiu	a0,sp,84
    6e00:	2407088e 	li	a3,2190
    6e04:	0c000000 	jal	0 <func_80B533B0>
    6e08:	8da50000 	lw	a1,0(t5)
    6e0c:	8fbf002c 	lw	ra,44(sp)
    6e10:	8fb00028 	lw	s0,40(sp)
    6e14:	27bd0088 	addiu	sp,sp,136
    6e18:	03e00008 	jr	ra
    6e1c:	00000000 	nop

00006e20 <func_80B5A1D0>:
    6e20:	27bdff78 	addiu	sp,sp,-136
    6e24:	afbf002c 	sw	ra,44(sp)
    6e28:	afb10028 	sw	s1,40(sp)
    6e2c:	afb00024 	sw	s0,36(sp)
    6e30:	afa5008c 	sw	a1,140(sp)
    6e34:	84820244 	lh	v0,580(a0)
    6e38:	3c0f0000 	lui	t7,0x0
    6e3c:	3c190000 	lui	t9,0x0
    6e40:	00027080 	sll	t6,v0,0x2
    6e44:	01ee7821 	addu	t7,t7,t6
    6e48:	8def0000 	lw	t7,0(t7)
    6e4c:	00808825 	move	s1,a0
    6e50:	3c060000 	lui	a2,0x0
    6e54:	afaf0078 	sw	t7,120(sp)
    6e58:	84830248 	lh	v1,584(a0)
    6e5c:	27a40054 	addiu	a0,sp,84
    6e60:	24c60000 	addiu	a2,a2,0
    6e64:	0003c080 	sll	t8,v1,0x2
    6e68:	0338c821 	addu	t9,t9,t8
    6e6c:	8f390000 	lw	t9,0(t9)
    6e70:	2407089d 	li	a3,2205
    6e74:	afb9006c 	sw	t9,108(sp)
    6e78:	8ca50000 	lw	a1,0(a1)
    6e7c:	0c000000 	jal	0 <func_80B533B0>
    6e80:	00a08025 	move	s0,a1
    6e84:	8fab008c 	lw	t3,140(sp)
    6e88:	0c000000 	jal	0 <func_80B533B0>
    6e8c:	8d640000 	lw	a0,0(t3)
    6e90:	8fa90078 	lw	t1,120(sp)
    6e94:	8e0202d0 	lw	v0,720(s0)
    6e98:	3c070000 	lui	a3,0x0
    6e9c:	00097100 	sll	t6,t1,0x4
    6ea0:	000e7f02 	srl	t7,t6,0x1c
    6ea4:	3c0ddb06 	lui	t5,0xdb06
    6ea8:	244c0008 	addiu	t4,v0,8
    6eac:	ae0c02d0 	sw	t4,720(s0)
    6eb0:	35ad0020 	ori	t5,t5,0x20
    6eb4:	000fc080 	sll	t8,t7,0x2
    6eb8:	24e70000 	addiu	a3,a3,0
    6ebc:	00f82021 	addu	a0,a3,t8
    6ec0:	ac4d0000 	sw	t5,0(v0)
    6ec4:	8c990000 	lw	t9,0(a0)
    6ec8:	3c0800ff 	lui	t0,0xff
    6ecc:	3508ffff 	ori	t0,t0,0xffff
    6ed0:	01282824 	and	a1,t1,t0
    6ed4:	3c068000 	lui	a2,0x8000
    6ed8:	03255021 	addu	t2,t9,a1
    6edc:	01465821 	addu	t3,t2,a2
    6ee0:	ac4b0004 	sw	t3,4(v0)
    6ee4:	8e0202d0 	lw	v0,720(s0)
    6ee8:	3c0ddb06 	lui	t5,0xdb06
    6eec:	35ad0024 	ori	t5,t5,0x24
    6ef0:	244c0008 	addiu	t4,v0,8
    6ef4:	ae0c02d0 	sw	t4,720(s0)
    6ef8:	ac4d0000 	sw	t5,0(v0)
    6efc:	8c8e0000 	lw	t6,0(a0)
    6f00:	3c0adb06 	lui	t2,0xdb06
    6f04:	354a0028 	ori	t2,t2,0x28
    6f08:	01c57821 	addu	t7,t6,a1
    6f0c:	01e6c021 	addu	t8,t7,a2
    6f10:	ac580004 	sw	t8,4(v0)
    6f14:	8fa4006c 	lw	a0,108(sp)
    6f18:	8e0202d0 	lw	v0,720(s0)
    6f1c:	00045900 	sll	t3,a0,0x4
    6f20:	000b6702 	srl	t4,t3,0x1c
    6f24:	24590008 	addiu	t9,v0,8
    6f28:	ae1902d0 	sw	t9,720(s0)
    6f2c:	000c6880 	sll	t5,t4,0x2
    6f30:	00ed7021 	addu	t6,a3,t5
    6f34:	ac4a0000 	sw	t2,0(v0)
    6f38:	8dcf0000 	lw	t7,0(t6)
    6f3c:	0088c024 	and	t8,a0,t0
    6f40:	3c0cfb00 	lui	t4,0xfb00
    6f44:	01f8c821 	addu	t9,t7,t8
    6f48:	03265021 	addu	t2,t9,a2
    6f4c:	ac4a0004 	sw	t2,4(v0)
    6f50:	8e0202d0 	lw	v0,720(s0)
    6f54:	3c190000 	lui	t9,0x0
    6f58:	3c18db06 	lui	t8,0xdb06
    6f5c:	244b0008 	addiu	t3,v0,8
    6f60:	ae0b02d0 	sw	t3,720(s0)
    6f64:	ac4c0000 	sw	t4,0(v0)
    6f68:	8e2d0258 	lw	t5,600(s1)
    6f6c:	3718002c 	ori	t8,t8,0x2c
    6f70:	27390000 	addiu	t9,t9,0
    6f74:	31ae00ff 	andi	t6,t5,0xff
    6f78:	ac4e0004 	sw	t6,4(v0)
    6f7c:	8e0202d0 	lw	v0,720(s0)
    6f80:	3c0a0000 	lui	t2,0x0
    6f84:	254a0000 	addiu	t2,t2,0
    6f88:	244f0008 	addiu	t7,v0,8
    6f8c:	ae0f02d0 	sw	t7,720(s0)
    6f90:	ac590004 	sw	t9,4(v0)
    6f94:	ac580000 	sw	t8,0(v0)
    6f98:	2622014c 	addiu	v0,s1,332
    6f9c:	8c450004 	lw	a1,4(v0)
    6fa0:	8c460020 	lw	a2,32(v0)
    6fa4:	90470002 	lbu	a3,2(v0)
    6fa8:	afb10018 	sw	s1,24(sp)
    6fac:	afa00014 	sw	zero,20(sp)
    6fb0:	afaa0010 	sw	t2,16(sp)
    6fb4:	8e0b02d0 	lw	t3,720(s0)
    6fb8:	8fa4008c 	lw	a0,140(sp)
    6fbc:	0c000000 	jal	0 <func_80B533B0>
    6fc0:	afab001c 	sw	t3,28(sp)
    6fc4:	ae0202d0 	sw	v0,720(s0)
    6fc8:	8fac008c 	lw	t4,140(sp)
    6fcc:	3c060000 	lui	a2,0x0
    6fd0:	24c60000 	addiu	a2,a2,0
    6fd4:	27a40054 	addiu	a0,sp,84
    6fd8:	240708ba 	li	a3,2234
    6fdc:	0c000000 	jal	0 <func_80B533B0>
    6fe0:	8d850000 	lw	a1,0(t4)
    6fe4:	8fbf002c 	lw	ra,44(sp)
    6fe8:	8fb00024 	lw	s0,36(sp)
    6fec:	8fb10028 	lw	s1,40(sp)
    6ff0:	03e00008 	jr	ra
    6ff4:	27bd0088 	addiu	sp,sp,136

00006ff8 <EnZl3_Draw>:
    6ff8:	27bdffe8 	addiu	sp,sp,-24
    6ffc:	afbf0014 	sw	ra,20(sp)
    7000:	8c820250 	lw	v0,592(a0)
    7004:	04400008 	bltz	v0,7028 <EnZl3_Draw+0x30>
    7008:	28410003 	slti	at,v0,3
    700c:	10200006 	beqz	at,7028 <EnZl3_Draw+0x30>
    7010:	00027080 	sll	t6,v0,0x2
    7014:	3c030000 	lui	v1,0x0
    7018:	006e1821 	addu	v1,v1,t6
    701c:	8c630000 	lw	v1,0(v1)
    7020:	14600006 	bnez	v1,703c <EnZl3_Draw+0x44>
    7024:	00000000 	nop
    7028:	3c040000 	lui	a0,0x0
    702c:	0c000000 	jal	0 <func_80B533B0>
    7030:	24840000 	addiu	a0,a0,0
    7034:	10000004 	b	7048 <EnZl3_Draw+0x50>
    7038:	8fbf0014 	lw	ra,20(sp)
    703c:	0060f809 	jalr	v1
    7040:	00000000 	nop
    7044:	8fbf0014 	lw	ra,20(sp)
    7048:	27bd0018 	addiu	sp,sp,24
    704c:	03e00008 	jr	ra
    7050:	00000000 	nop
	...
