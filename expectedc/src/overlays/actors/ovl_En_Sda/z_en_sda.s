
build/src/overlays/actors/ovl_En_Sda/z_en_sda.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSda_Init>:
       0:	afa40000 	sw	a0,0(sp)
       4:	03e00008 	jr	ra
       8:	afa50004 	sw	a1,4(sp)

0000000c <EnSda_Destroy>:
       c:	afa40000 	sw	a0,0(sp)
      10:	03e00008 	jr	ra
      14:	afa50004 	sw	a1,4(sp)

00000018 <EnSda_Update>:
      18:	27bdffe8 	addiu	sp,sp,-24
      1c:	00803025 	move	a2,a0
      20:	afbf0014 	sw	ra,20(sp)
      24:	3c040000 	lui	a0,0x0
      28:	afa5001c 	sw	a1,28(sp)
      2c:	24840000 	addiu	a0,a0,0
      30:	0c000000 	jal	0 <EnSda_Init>
      34:	afa60018 	sw	a2,24(sp)
      38:	8fa60018 	lw	a2,24(sp)
      3c:	24010001 	li	at,1
      40:	8faf001c 	lw	t7,28(sp)
      44:	84ce001c 	lh	t6,28(a2)
      48:	55c10004 	bnel	t6,at,5c <EnSda_Update+0x44>
      4c:	8de21c44 	lw	v0,7236(t7)
      50:	10000002 	b	5c <EnSda_Update+0x44>
      54:	8cc20118 	lw	v0,280(a2)
      58:	8de21c44 	lw	v0,7236(t7)
      5c:	8c590024 	lw	t9,36(v0)
      60:	3c040000 	lui	a0,0x0
      64:	24840000 	addiu	a0,a0,0
      68:	acd90024 	sw	t9,36(a2)
      6c:	8c580028 	lw	t8,40(v0)
      70:	acd80028 	sw	t8,40(a2)
      74:	8c59002c 	lw	t9,44(v0)
      78:	0c000000 	jal	0 <EnSda_Init>
      7c:	acd9002c 	sw	t9,44(a2)
      80:	8fbf0014 	lw	ra,20(sp)
      84:	27bd0018 	addiu	sp,sp,24
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <EnSda_Draw>:
      90:	27bdffd0 	addiu	sp,sp,-48
      94:	afbf001c 	sw	ra,28(sp)
      98:	afb00018 	sw	s0,24(sp)
      9c:	afa40030 	sw	a0,48(sp)
      a0:	afa50034 	sw	a1,52(sp)
      a4:	8ca40000 	lw	a0,0(a1)
      a8:	0c000000 	jal	0 <EnSda_Init>
      ac:	24051000 	li	a1,4096
      b0:	3c040000 	lui	a0,0x0
      b4:	afa20024 	sw	v0,36(sp)
      b8:	0c000000 	jal	0 <EnSda_Init>
      bc:	24840000 	addiu	a0,a0,0
      c0:	8fa40030 	lw	a0,48(sp)
      c4:	24010001 	li	at,1
      c8:	8fb80034 	lw	t8,52(sp)
      cc:	848f001c 	lh	t7,28(a0)
      d0:	55e10004 	bnel	t7,at,e4 <EnSda_Draw+0x54>
      d4:	8f101c44 	lw	s0,7236(t8)
      d8:	10000002 	b	e4 <EnSda_Draw+0x54>
      dc:	8c900118 	lw	s0,280(a0)
      e0:	8f101c44 	lw	s0,7236(t8)
      e4:	a20000c8 	sb	zero,200(s0)
      e8:	8fa70034 	lw	a3,52(sp)
      ec:	8fa50024 	lw	a1,36(sp)
      f0:	0c000000 	jal	0 <EnSda_Init>
      f4:	02003025 	move	a2,s0
      f8:	3c190000 	lui	t9,0x0
      fc:	8f390000 	lw	t9,0(t9)
     100:	8fa40024 	lw	a0,36(sp)
     104:	02002825 	move	a1,s0
     108:	872809d4 	lh	t0,2516(t9)
     10c:	29010005 	slti	at,t0,5
     110:	10200003 	beqz	at,120 <EnSda_Draw+0x90>
     114:	00000000 	nop
     118:	0c000000 	jal	0 <EnSda_Init>
     11c:	8fa60034 	lw	a2,52(sp)
     120:	3c040000 	lui	a0,0x0
     124:	0c000000 	jal	0 <EnSda_Init>
     128:	24840000 	addiu	a0,a0,0
     12c:	8fbf001c 	lw	ra,28(sp)
     130:	8fb00018 	lw	s0,24(sp)
     134:	27bd0030 	addiu	sp,sp,48
     138:	03e00008 	jr	ra
     13c:	00000000 	nop

00000140 <func_80AF8F60>:
     140:	27bdff50 	addiu	sp,sp,-176
     144:	f7be0040 	sdc1	$f30,64(sp)
     148:	3c014170 	lui	at,0x4170
     14c:	4481f000 	mtc1	at,$f30
     150:	f7bc0038 	sdc1	$f28,56(sp)
     154:	3c0142d2 	lui	at,0x42d2
     158:	4481e000 	mtc1	at,$f28
     15c:	f7ba0030 	sdc1	$f26,48(sp)
     160:	3c0141f0 	lui	at,0x41f0
     164:	4481d000 	mtc1	at,$f26
     168:	afb5005c 	sw	s5,92(sp)
     16c:	afb20050 	sw	s2,80(sp)
     170:	afb1004c 	sw	s1,76(sp)
     174:	f7b80028 	sdc1	$f24,40(sp)
     178:	f7b60020 	sdc1	$f22,32(sp)
     17c:	f7b40018 	sdc1	$f20,24(sp)
     180:	3c014298 	lui	at,0x4298
     184:	afb60060 	sw	s6,96(sp)
     188:	afb40058 	sw	s4,88(sp)
     18c:	afb30054 	sw	s3,84(sp)
     190:	afb00048 	sw	s0,72(sp)
     194:	3c110000 	lui	s1,0x0
     198:	3c120000 	lui	s2,0x0
     19c:	3c150000 	lui	s5,0x0
     1a0:	4486a000 	mtc1	a2,$f20
     1a4:	4481c000 	mtc1	at,$f24
     1a8:	4480b000 	mtc1	zero,$f22
     1ac:	00a08025 	move	s0,a1
     1b0:	0080a025 	move	s4,a0
     1b4:	afbf0064 	sw	ra,100(sp)
     1b8:	26b50000 	addiu	s5,s5,0
     1bc:	26520000 	addiu	s2,s2,0
     1c0:	26310000 	addiu	s1,s1,0
     1c4:	00009825 	move	s3,zero
     1c8:	2416000c 	li	s6,12
     1cc:	87ab00a0 	lh	t3,160(sp)
     1d0:	4616a032 	c.eq.s	$f20,$f22
     1d4:	00000000 	nop
     1d8:	45010006 	bc1t	1f4 <func_80AF8F60+0xb4>
     1dc:	00137040 	sll	t6,s3,0x1
     1e0:	3c0b0000 	lui	t3,0x0
     1e4:	016e5821 	addu	t3,t3,t6
     1e8:	856b0000 	lh	t3,0(t3)
     1ec:	05620157 	bltzl	t3,74c <func_80AF8F60+0x60c>
     1f0:	26730001 	addiu	s3,s3,1
     1f4:	4614b03c 	c.lt.s	$f22,$f20
     1f8:	3c040000 	lui	a0,0x0
     1fc:	8c840000 	lw	a0,0(a0)
     200:	45000029 	bc1f	2a8 <func_80AF8F60+0x168>
     204:	00000000 	nop
     208:	01760019 	multu	t3,s6
     20c:	00007812 	mflo	t7
     210:	02af1021 	addu	v0,s5,t7
     214:	c4440000 	lwc1	$f4,0(v0)
     218:	02760019 	multu	s3,s6
     21c:	c44a0004 	lwc1	$f10,4(v0)
     220:	0000c012 	mflo	t8
     224:	02b81821 	addu	v1,s5,t8
     228:	c4600000 	lwc1	$f0,0(v1)
     22c:	c4620004 	lwc1	$f2,4(v1)
     230:	c46c0008 	lwc1	$f12,8(v1)
     234:	46002181 	sub.s	$f6,$f4,$f0
     238:	46025101 	sub.s	$f4,$f10,$f2
     23c:	46143202 	mul.s	$f8,$f6,$f20
     240:	00000000 	nop
     244:	46142182 	mul.s	$f6,$f4,$f20
     248:	46004380 	add.s	$f14,$f8,$f0
     24c:	c4480008 	lwc1	$f8,8(v0)
     250:	46023400 	add.s	$f16,$f6,$f2
     254:	c6860024 	lwc1	$f6,36(s4)
     258:	460c4281 	sub.s	$f10,$f8,$f12
     25c:	46067201 	sub.s	$f8,$f14,$f6
     260:	46145102 	mul.s	$f4,$f10,$f20
     264:	e7a80088 	swc1	$f8,136(sp)
     268:	84991334 	lh	t9,4916(a0)
     26c:	c6860028 	lwc1	$f6,40(s4)
     270:	44995000 	mtc1	t9,$f10
     274:	460c2480 	add.s	$f18,$f4,$f12
     278:	46805120 	cvt.s.w	$f4,$f10
     27c:	46068201 	sub.s	$f8,$f16,$f6
     280:	46082280 	add.s	$f10,$f4,$f8
     284:	46185180 	add.s	$f6,$f10,$f24
     288:	461a3100 	add.s	$f4,$f6,$f26
     28c:	461c2201 	sub.s	$f8,$f4,$f28
     290:	461e4280 	add.s	$f10,$f8,$f30
     294:	e7aa008c 	swc1	$f10,140(sp)
     298:	c686002c 	lwc1	$f6,44(s4)
     29c:	46069101 	sub.s	$f4,$f18,$f6
     2a0:	10000018 	b	304 <func_80AF8F60+0x1c4>
     2a4:	e7a40090 	swc1	$f4,144(sp)
     2a8:	02760019 	multu	s3,s6
     2ac:	c68a0024 	lwc1	$f10,36(s4)
     2b0:	00007012 	mflo	t6
     2b4:	02ae1821 	addu	v1,s5,t6
     2b8:	c4680000 	lwc1	$f8,0(v1)
     2bc:	c4640004 	lwc1	$f4,4(v1)
     2c0:	460a4181 	sub.s	$f6,$f8,$f10
     2c4:	e7a60088 	swc1	$f6,136(sp)
     2c8:	848f1334 	lh	t7,4916(a0)
     2cc:	c6880028 	lwc1	$f8,40(s4)
     2d0:	448f3000 	mtc1	t7,$f6
     2d4:	46082281 	sub.s	$f10,$f4,$f8
     2d8:	46803120 	cvt.s.w	$f4,$f6
     2dc:	460a2200 	add.s	$f8,$f4,$f10
     2e0:	46184180 	add.s	$f6,$f8,$f24
     2e4:	461a3100 	add.s	$f4,$f6,$f26
     2e8:	c4660008 	lwc1	$f6,8(v1)
     2ec:	461c2281 	sub.s	$f10,$f4,$f28
     2f0:	461e5200 	add.s	$f8,$f10,$f30
     2f4:	e7a8008c 	swc1	$f8,140(sp)
     2f8:	c684002c 	lwc1	$f4,44(s4)
     2fc:	46043281 	sub.s	$f10,$f6,$f4
     300:	e7aa0090 	swc1	$f10,144(sp)
     304:	27a40088 	addiu	a0,sp,136
     308:	0c000000 	jal	0 <EnSda_Init>
     30c:	27a5007c 	addiu	a1,sp,124
     310:	3c040000 	lui	a0,0x0
     314:	8c840000 	lw	a0,0(a0)
     318:	3c0142c8 	lui	at,0x42c8
     31c:	44812000 	mtc1	at,$f4
     320:	84981336 	lh	t8,4918(a0)
     324:	3c013f80 	lui	at,0x3f80
     328:	3c020000 	lui	v0,0x0
     32c:	44984000 	mtc1	t8,$f8
     330:	00531021 	addu	v0,v0,s3
     334:	90420000 	lbu	v0,0(v0)
     338:	468041a0 	cvt.s.w	$f6,$f8
     33c:	44814000 	mtc1	at,$f8
     340:	3c0142c8 	lui	at,0x42c8
     344:	3c0c0000 	lui	t4,0x0
     348:	3c0d0000 	lui	t5,0x0
     34c:	3c1f0000 	lui	ra,0x0
     350:	46043283 	div.s	$f10,$f6,$f4
     354:	c7a4007c 	lwc1	$f4,124(sp)
     358:	27ff0000 	addiu	ra,ra,0
     35c:	25ad0000 	addiu	t5,t5,0
     360:	258c0000 	addiu	t4,t4,0
     364:	240a00ff 	li	t2,255
     368:	00005825 	move	t3,zero
     36c:	2406fe80 	li	a2,-384
     370:	460a4180 	add.s	$f6,$f8,$f10
     374:	46062202 	mul.s	$f8,$f4,$f6
     378:	44813000 	mtc1	at,$f6
     37c:	3c013f80 	lui	at,0x3f80
     380:	e7a8007c 	swc1	$f8,124(sp)
     384:	84991336 	lh	t9,4918(a0)
     388:	44995000 	mtc1	t9,$f10
     38c:	00000000 	nop
     390:	46805120 	cvt.s.w	$f4,$f10
     394:	46062283 	div.s	$f10,$f4,$f6
     398:	44812000 	mtc1	at,$f4
     39c:	3c014200 	lui	at,0x4200
     3a0:	460a2180 	add.s	$f6,$f4,$f10
     3a4:	c7a40080 	lwc1	$f4,128(sp)
     3a8:	46062282 	mul.s	$f10,$f4,$f6
     3ac:	44812000 	mtc1	at,$f4
     3b0:	24010002 	li	at,2
     3b4:	46044180 	add.s	$f6,$f8,$f4
     3b8:	e7aa0080 	swc1	$f10,128(sp)
     3bc:	4600510d 	trunc.w.s	$f4,$f10
     3c0:	4600320d 	trunc.w.s	$f8,$f6
     3c4:	44092000 	mfc1	t1,$f4
     3c8:	44084000 	mfc1	t0,$f8
     3cc:	00094c00 	sll	t1,t1,0x10
     3d0:	00094c03 	sra	t1,t1,0x10
     3d4:	00094980 	sll	t1,t1,0x6
     3d8:	00094c00 	sll	t1,t1,0x10
     3dc:	00084400 	sll	t0,t0,0x10
     3e0:	00084403 	sra	t0,t0,0x10
     3e4:	14410029 	bne	v0,at,48c <func_80AF8F60+0x34c>
     3e8:	00094c03 	sra	t1,t1,0x10
     3ec:	000bc040 	sll	t8,t3,0x1
     3f0:	01983821 	addu	a3,t4,t8
     3f4:	84e50000 	lh	a1,0(a3)
     3f8:	256b0001 	addiu	t3,t3,1
     3fc:	000b5c00 	sll	t3,t3,0x10
     400:	00052023 	negu	a0,a1
     404:	00042400 	sll	a0,a0,0x10
     408:	00042403 	sra	a0,a0,0x10
     40c:	0085082a 	slt	at,a0,a1
     410:	10200017 	beqz	at,470 <func_80AF8F60+0x330>
     414:	000b5c03 	sra	t3,t3,0x10
     418:	01041821 	addu	v1,t0,a0
     41c:	00031c00 	sll	v1,v1,0x10
     420:	00031c03 	sra	v1,v1,0x10
     424:	0460000d 	bltz	v1,45c <func_80AF8F60+0x31c>
     428:	24840001 	addiu	a0,a0,1
     42c:	28610040 	slti	at,v1,64
     430:	1020000a 	beqz	at,45c <func_80AF8F60+0x31c>
     434:	01261021 	addu	v0,t1,a2
     438:	00021400 	sll	v0,v0,0x10
     43c:	00021403 	sra	v0,v0,0x10
     440:	04400006 	bltz	v0,45c <func_80AF8F60+0x31c>
     444:	28411000 	slti	at,v0,4096
     448:	10200004 	beqz	at,45c <func_80AF8F60+0x31c>
     44c:	0203c821 	addu	t9,s0,v1
     450:	03227021 	addu	t6,t9,v0
     454:	a1ca0000 	sb	t2,0(t6)
     458:	84e50000 	lh	a1,0(a3)
     45c:	00042400 	sll	a0,a0,0x10
     460:	00042403 	sra	a0,a0,0x10
     464:	0085082a 	slt	at,a0,a1
     468:	5420ffec 	bnezl	at,41c <func_80AF8F60+0x2dc>
     46c:	01041821 	addu	v1,t0,a0
     470:	24c60040 	addiu	a2,a2,64
     474:	00063400 	sll	a2,a2,0x10
     478:	2961000c 	slti	at,t3,12
     47c:	1420ffdb 	bnez	at,3ec <func_80AF8F60+0x2ac>
     480:	00063403 	sra	a2,a2,0x10
     484:	100000b1 	b	74c <func_80AF8F60+0x60c>
     488:	26730001 	addiu	s3,s3,1
     48c:	24010001 	li	at,1
     490:	1441002a 	bne	v0,at,53c <func_80AF8F60+0x3fc>
     494:	00005825 	move	t3,zero
     498:	2406ff00 	li	a2,-256
     49c:	000b7840 	sll	t7,t3,0x1
     4a0:	01af3821 	addu	a3,t5,t7
     4a4:	84e50000 	lh	a1,0(a3)
     4a8:	256b0001 	addiu	t3,t3,1
     4ac:	000b5c00 	sll	t3,t3,0x10
     4b0:	00052023 	negu	a0,a1
     4b4:	00042400 	sll	a0,a0,0x10
     4b8:	00042403 	sra	a0,a0,0x10
     4bc:	0085082a 	slt	at,a0,a1
     4c0:	10200017 	beqz	at,520 <func_80AF8F60+0x3e0>
     4c4:	000b5c03 	sra	t3,t3,0x10
     4c8:	01041821 	addu	v1,t0,a0
     4cc:	00031c00 	sll	v1,v1,0x10
     4d0:	00031c03 	sra	v1,v1,0x10
     4d4:	0460000d 	bltz	v1,50c <func_80AF8F60+0x3cc>
     4d8:	24840001 	addiu	a0,a0,1
     4dc:	28610040 	slti	at,v1,64
     4e0:	1020000a 	beqz	at,50c <func_80AF8F60+0x3cc>
     4e4:	01261021 	addu	v0,t1,a2
     4e8:	00021400 	sll	v0,v0,0x10
     4ec:	00021403 	sra	v0,v0,0x10
     4f0:	04400006 	bltz	v0,50c <func_80AF8F60+0x3cc>
     4f4:	28411000 	slti	at,v0,4096
     4f8:	10200004 	beqz	at,50c <func_80AF8F60+0x3cc>
     4fc:	0203c021 	addu	t8,s0,v1
     500:	0302c821 	addu	t9,t8,v0
     504:	a32a0000 	sb	t2,0(t9)
     508:	84e50000 	lh	a1,0(a3)
     50c:	00042400 	sll	a0,a0,0x10
     510:	00042403 	sra	a0,a0,0x10
     514:	0085082a 	slt	at,a0,a1
     518:	5420ffec 	bnezl	at,4cc <func_80AF8F60+0x38c>
     51c:	01041821 	addu	v1,t0,a0
     520:	24c60040 	addiu	a2,a2,64
     524:	00063400 	sll	a2,a2,0x10
     528:	29610008 	slti	at,t3,8
     52c:	1420ffdb 	bnez	at,49c <func_80AF8F60+0x35c>
     530:	00063403 	sra	a2,a2,0x10
     534:	10000085 	b	74c <func_80AF8F60+0x60c>
     538:	26730001 	addiu	s3,s3,1
     53c:	1440002d 	bnez	v0,5f4 <func_80AF8F60+0x4b4>
     540:	24010004 	li	at,4
     544:	00005825 	move	t3,zero
     548:	2406ff40 	li	a2,-192
     54c:	000b7040 	sll	t6,t3,0x1
     550:	03ee3821 	addu	a3,ra,t6
     554:	84e20000 	lh	v0,0(a3)
     558:	256b0001 	addiu	t3,t3,1
     55c:	000b5c00 	sll	t3,t3,0x10
     560:	00022023 	negu	a0,v0
     564:	00042400 	sll	a0,a0,0x10
     568:	00042403 	sra	a0,a0,0x10
     56c:	2445ffff 	addiu	a1,v0,-1
     570:	0085082a 	slt	at,a0,a1
     574:	10200018 	beqz	at,5d8 <func_80AF8F60+0x498>
     578:	000b5c03 	sra	t3,t3,0x10
     57c:	01041821 	addu	v1,t0,a0
     580:	00031c00 	sll	v1,v1,0x10
     584:	00031c03 	sra	v1,v1,0x10
     588:	0460000e 	bltz	v1,5c4 <func_80AF8F60+0x484>
     58c:	24840001 	addiu	a0,a0,1
     590:	28610040 	slti	at,v1,64
     594:	1020000b 	beqz	at,5c4 <func_80AF8F60+0x484>
     598:	01261021 	addu	v0,t1,a2
     59c:	00021400 	sll	v0,v0,0x10
     5a0:	00021403 	sra	v0,v0,0x10
     5a4:	04400007 	bltz	v0,5c4 <func_80AF8F60+0x484>
     5a8:	28411000 	slti	at,v0,4096
     5ac:	10200005 	beqz	at,5c4 <func_80AF8F60+0x484>
     5b0:	02037821 	addu	t7,s0,v1
     5b4:	01e2c021 	addu	t8,t7,v0
     5b8:	a30a0000 	sb	t2,0(t8)
     5bc:	84e50000 	lh	a1,0(a3)
     5c0:	24a5ffff 	addiu	a1,a1,-1
     5c4:	00042400 	sll	a0,a0,0x10
     5c8:	00042403 	sra	a0,a0,0x10
     5cc:	0085082a 	slt	at,a0,a1
     5d0:	5420ffeb 	bnezl	at,580 <func_80AF8F60+0x440>
     5d4:	01041821 	addu	v1,t0,a0
     5d8:	24c60040 	addiu	a2,a2,64
     5dc:	00063400 	sll	a2,a2,0x10
     5e0:	29610007 	slti	at,t3,7
     5e4:	1420ffd9 	bnez	at,54c <func_80AF8F60+0x40c>
     5e8:	00063403 	sra	a2,a2,0x10
     5ec:	10000057 	b	74c <func_80AF8F60+0x60c>
     5f0:	26730001 	addiu	s3,s3,1
     5f4:	1441002b 	bne	v0,at,6a4 <func_80AF8F60+0x564>
     5f8:	00005825 	move	t3,zero
     5fc:	00005825 	move	t3,zero
     600:	2406fe40 	li	a2,-448
     604:	000bc840 	sll	t9,t3,0x1
     608:	02393821 	addu	a3,s1,t9
     60c:	84e50000 	lh	a1,0(a3)
     610:	256b0001 	addiu	t3,t3,1
     614:	000b5c00 	sll	t3,t3,0x10
     618:	00052023 	negu	a0,a1
     61c:	00042400 	sll	a0,a0,0x10
     620:	00042403 	sra	a0,a0,0x10
     624:	0085082a 	slt	at,a0,a1
     628:	10200017 	beqz	at,688 <func_80AF8F60+0x548>
     62c:	000b5c03 	sra	t3,t3,0x10
     630:	01041821 	addu	v1,t0,a0
     634:	00031c00 	sll	v1,v1,0x10
     638:	00031c03 	sra	v1,v1,0x10
     63c:	0460000d 	bltz	v1,674 <func_80AF8F60+0x534>
     640:	24840001 	addiu	a0,a0,1
     644:	28610040 	slti	at,v1,64
     648:	1020000a 	beqz	at,674 <func_80AF8F60+0x534>
     64c:	01261021 	addu	v0,t1,a2
     650:	00021400 	sll	v0,v0,0x10
     654:	00021403 	sra	v0,v0,0x10
     658:	04400006 	bltz	v0,674 <func_80AF8F60+0x534>
     65c:	28411000 	slti	at,v0,4096
     660:	10200004 	beqz	at,674 <func_80AF8F60+0x534>
     664:	02037021 	addu	t6,s0,v1
     668:	01c27821 	addu	t7,t6,v0
     66c:	a1ea0000 	sb	t2,0(t7)
     670:	84e50000 	lh	a1,0(a3)
     674:	00042400 	sll	a0,a0,0x10
     678:	00042403 	sra	a0,a0,0x10
     67c:	0085082a 	slt	at,a0,a1
     680:	5420ffec 	bnezl	at,634 <func_80AF8F60+0x4f4>
     684:	01041821 	addu	v1,t0,a0
     688:	24c60040 	addiu	a2,a2,64
     68c:	00063400 	sll	a2,a2,0x10
     690:	2961000e 	slti	at,t3,14
     694:	1420ffdb 	bnez	at,604 <func_80AF8F60+0x4c4>
     698:	00063403 	sra	a2,a2,0x10
     69c:	1000002b 	b	74c <func_80AF8F60+0x60c>
     6a0:	26730001 	addiu	s3,s3,1
     6a4:	2406ff80 	li	a2,-128
     6a8:	000bc040 	sll	t8,t3,0x1
     6ac:	02583821 	addu	a3,s2,t8
     6b0:	84e20000 	lh	v0,0(a3)
     6b4:	256b0001 	addiu	t3,t3,1
     6b8:	000b5c00 	sll	t3,t3,0x10
     6bc:	00022023 	negu	a0,v0
     6c0:	00042400 	sll	a0,a0,0x10
     6c4:	00042403 	sra	a0,a0,0x10
     6c8:	2445ffff 	addiu	a1,v0,-1
     6cc:	0085082a 	slt	at,a0,a1
     6d0:	10200018 	beqz	at,734 <func_80AF8F60+0x5f4>
     6d4:	000b5c03 	sra	t3,t3,0x10
     6d8:	01041821 	addu	v1,t0,a0
     6dc:	00031c00 	sll	v1,v1,0x10
     6e0:	00031c03 	sra	v1,v1,0x10
     6e4:	0460000e 	bltz	v1,720 <func_80AF8F60+0x5e0>
     6e8:	24840001 	addiu	a0,a0,1
     6ec:	28610040 	slti	at,v1,64
     6f0:	1020000b 	beqz	at,720 <func_80AF8F60+0x5e0>
     6f4:	01261021 	addu	v0,t1,a2
     6f8:	00021400 	sll	v0,v0,0x10
     6fc:	00021403 	sra	v0,v0,0x10
     700:	04400007 	bltz	v0,720 <func_80AF8F60+0x5e0>
     704:	28411000 	slti	at,v0,4096
     708:	10200005 	beqz	at,720 <func_80AF8F60+0x5e0>
     70c:	0203c821 	addu	t9,s0,v1
     710:	03227021 	addu	t6,t9,v0
     714:	a1ca0000 	sb	t2,0(t6)
     718:	84e50000 	lh	a1,0(a3)
     71c:	24a5ffff 	addiu	a1,a1,-1
     720:	00042400 	sll	a0,a0,0x10
     724:	00042403 	sra	a0,a0,0x10
     728:	0085082a 	slt	at,a0,a1
     72c:	5420ffeb 	bnezl	at,6dc <func_80AF8F60+0x59c>
     730:	01041821 	addu	v1,t0,a0
     734:	24c60040 	addiu	a2,a2,64
     738:	00063400 	sll	a2,a2,0x10
     73c:	29610006 	slti	at,t3,6
     740:	1420ffd9 	bnez	at,6a8 <func_80AF8F60+0x568>
     744:	00063403 	sra	a2,a2,0x10
     748:	26730001 	addiu	s3,s3,1
     74c:	00139c00 	sll	s3,s3,0x10
     750:	00139c03 	sra	s3,s3,0x10
     754:	2a610010 	slti	at,s3,16
     758:	5420fe9e 	bnezl	at,1d4 <func_80AF8F60+0x94>
     75c:	4616a032 	c.eq.s	$f20,$f22
     760:	8fbf0064 	lw	ra,100(sp)
     764:	a7ab00a0 	sh	t3,160(sp)
     768:	d7b40018 	ldc1	$f20,24(sp)
     76c:	d7b60020 	ldc1	$f22,32(sp)
     770:	d7b80028 	ldc1	$f24,40(sp)
     774:	d7ba0030 	ldc1	$f26,48(sp)
     778:	d7bc0038 	ldc1	$f28,56(sp)
     77c:	d7be0040 	ldc1	$f30,64(sp)
     780:	8fb00048 	lw	s0,72(sp)
     784:	8fb1004c 	lw	s1,76(sp)
     788:	8fb20050 	lw	s2,80(sp)
     78c:	8fb30054 	lw	s3,84(sp)
     790:	8fb40058 	lw	s4,88(sp)
     794:	8fb5005c 	lw	s5,92(sp)
     798:	8fb60060 	lw	s6,96(sp)
     79c:	03e00008 	jr	ra
     7a0:	27bd00b0 	addiu	sp,sp,176

000007a4 <func_80AF95C4>:
     7a4:	27bdfe50 	addiu	sp,sp,-432
     7a8:	afb60040 	sw	s6,64(sp)
     7ac:	0080b025 	move	s6,a0
     7b0:	afbf004c 	sw	ra,76(sp)
     7b4:	afb5003c 	sw	s5,60(sp)
     7b8:	afb1002c 	sw	s1,44(sp)
     7bc:	3c040000 	lui	a0,0x0
     7c0:	00a08825 	move	s1,a1
     7c4:	00c0a825 	move	s5,a2
     7c8:	afbe0048 	sw	s8,72(sp)
     7cc:	afb70044 	sw	s7,68(sp)
     7d0:	afb40038 	sw	s4,56(sp)
     7d4:	afb30034 	sw	s3,52(sp)
     7d8:	afb20030 	sw	s2,48(sp)
     7dc:	afb00028 	sw	s0,40(sp)
     7e0:	f7b60020 	sdc1	$f22,32(sp)
     7e4:	f7b40018 	sdc1	$f20,24(sp)
     7e8:	afa701bc 	sw	a3,444(sp)
     7ec:	0c000000 	jal	0 <EnSda_Init>
     7f0:	24840000 	addiu	a0,a0,0
     7f4:	3c1e0000 	lui	s8,0x0
     7f8:	27de0000 	addiu	s8,s8,0
     7fc:	8fce0000 	lw	t6,0(s8)
     800:	02201025 	move	v0,s1
     804:	00009825 	move	s3,zero
     808:	85cf1346 	lh	t7,4934(t6)
     80c:	241000ff 	li	s0,255
     810:	11e0001d 	beqz	t7,888 <func_80AF95C4+0xe4>
     814:	00000000 	nop
     818:	02201025 	move	v0,s1
     81c:	00009825 	move	s3,zero
     820:	241000ff 	li	s0,255
     824:	2404003f 	li	a0,63
     828:	06600002 	bltz	s3,834 <func_80AF95C4+0x90>
     82c:	2a610040 	slti	at,s3,64
     830:	1420000a 	bnez	at,85c <func_80AF95C4+0xb8>
     834:	2a610fc0 	slti	at,s3,4032
     838:	14200004 	bnez	at,84c <func_80AF95C4+0xa8>
     83c:	3263003f 	andi	v1,s3,0x3f
     840:	2a611000 	slti	at,s3,4096
     844:	14200005 	bnez	at,85c <func_80AF95C4+0xb8>
     848:	00000000 	nop
     84c:	10600003 	beqz	v1,85c <func_80AF95C4+0xb8>
     850:	00000000 	nop
     854:	54830004 	bnel	a0,v1,868 <func_80AF95C4+0xc4>
     858:	a0400000 	sb	zero,0(v0)
     85c:	10000002 	b	868 <func_80AF95C4+0xc4>
     860:	a0500000 	sb	s0,0(v0)
     864:	a0400000 	sb	zero,0(v0)
     868:	26730001 	addiu	s3,s3,1
     86c:	00139c00 	sll	s3,s3,0x10
     870:	00139c03 	sra	s3,s3,0x10
     874:	2a611000 	slti	at,s3,4096
     878:	1420ffeb 	bnez	at,828 <func_80AF95C4+0x84>
     87c:	24420001 	addiu	v0,v0,1
     880:	10000009 	b	8a8 <func_80AF95C4+0x104>
     884:	8fd80000 	lw	t8,0(s8)
     888:	26730001 	addiu	s3,s3,1
     88c:	00139c00 	sll	s3,s3,0x10
     890:	00139c03 	sra	s3,s3,0x10
     894:	2a610400 	slti	at,s3,1024
     898:	24420004 	addiu	v0,v0,4
     89c:	1420fffa 	bnez	at,888 <func_80AF95C4+0xe4>
     8a0:	ac40fffc 	sw	zero,-4(v0)
     8a4:	8fd80000 	lw	t8,0(s8)
     8a8:	3c0142c8 	lui	at,0x42c8
     8ac:	4481b000 	mtc1	at,$f22
     8b0:	87191338 	lh	t9,4920(t8)
     8b4:	00002825 	move	a1,zero
     8b8:	272b0046 	addiu	t3,t9,70
     8bc:	448b2000 	mtc1	t3,$f4
     8c0:	00000000 	nop
     8c4:	468021a0 	cvt.s.w	$f6,$f4
     8c8:	0c000000 	jal	0 <EnSda_Init>
     8cc:	46163303 	div.s	$f12,$f6,$f22
     8d0:	3c120000 	lui	s2,0x0
     8d4:	3c030000 	lui	v1,0x0
     8d8:	24630000 	addiu	v1,v1,0
     8dc:	26520000 	addiu	s2,s2,0
     8e0:	00009825 	move	s3,zero
     8e4:	2414000c 	li	s4,12
     8e8:	00736021 	addu	t4,v1,s3
     8ec:	81820000 	lb	v0,0(t4)
     8f0:	0442000f 	bltzl	v0,930 <func_80AF95C4+0x18c>
     8f4:	26730001 	addiu	s3,s3,1
     8f8:	00540019 	multu	v0,s4
     8fc:	00006812 	mflo	t5
     900:	024d7021 	addu	t6,s2,t5
     904:	00000000 	nop
     908:	02740019 	multu	s3,s4
     90c:	00007812 	mflo	t7
     910:	02afc021 	addu	t8,s5,t7
     914:	8f0b0908 	lw	t3,2312(t8)
     918:	adcb0000 	sw	t3,0(t6)
     91c:	8f19090c 	lw	t9,2316(t8)
     920:	add90004 	sw	t9,4(t6)
     924:	8f0b0910 	lw	t3,2320(t8)
     928:	adcb0008 	sw	t3,8(t6)
     92c:	26730001 	addiu	s3,s3,1
     930:	00139c00 	sll	s3,s3,0x10
     934:	00139c03 	sra	s3,s3,0x10
     938:	2a610012 	slti	at,s3,18
     93c:	5420ffeb 	bnezl	at,8ec <func_80AF95C4+0x148>
     940:	00736021 	addu	t4,v1,s3
     944:	3c040000 	lui	a0,0x0
     948:	0c000000 	jal	0 <EnSda_Init>
     94c:	24840000 	addiu	a0,a0,0
     950:	c6420000 	lwc1	$f2,0(s2)
     954:	c65200b4 	lwc1	$f18,180(s2)
     958:	3c010000 	lui	at,0x0
     95c:	c42e0000 	lwc1	$f14,0(at)
     960:	46029101 	sub.s	$f4,$f18,$f2
     964:	3c014040 	lui	at,0x4040
     968:	44815000 	mtc1	at,$f10
     96c:	c6480004 	lwc1	$f8,4(s2)
     970:	460e2182 	mul.s	$f6,$f4,$f14
     974:	c64c0008 	lwc1	$f12,8(s2)
     978:	460a4400 	add.s	$f16,$f8,$f10
     97c:	c64a00b8 	lwc1	$f10,184(s2)
     980:	3c010000 	lui	at,0x0
     984:	00009825 	move	s3,zero
     988:	e6500004 	swc1	$f16,4(s2)
     98c:	46023200 	add.s	$f8,$f6,$f2
     990:	c6400004 	lwc1	$f0,4(s2)
     994:	e64800b4 	swc1	$f8,180(s2)
     998:	46005401 	sub.s	$f16,$f10,$f0
     99c:	c64800bc 	lwc1	$f8,188(s2)
     9a0:	c4320000 	lwc1	$f18,0(at)
     9a4:	3c0140a0 	lui	at,0x40a0
     9a8:	460c4281 	sub.s	$f10,$f8,$f12
     9ac:	46128102 	mul.s	$f4,$f16,$f18
     9b0:	4481a000 	mtc1	at,$f20
     9b4:	460e5402 	mul.s	$f16,$f10,$f14
     9b8:	46002180 	add.s	$f6,$f4,$f0
     9bc:	460c8480 	add.s	$f18,$f16,$f12
     9c0:	e64600b8 	swc1	$f6,184(s2)
     9c4:	e65200bc 	swc1	$f18,188(s2)
     9c8:	44932000 	mtc1	s3,$f4
     9cc:	02a02025 	move	a0,s5
     9d0:	02202825 	move	a1,s1
     9d4:	468021a0 	cvt.s.w	$f6,$f4
     9d8:	46143203 	div.s	$f8,$f6,$f20
     9dc:	44064000 	mfc1	a2,$f8
     9e0:	0c000000 	jal	0 <EnSda_Init>
     9e4:	00000000 	nop
     9e8:	26730001 	addiu	s3,s3,1
     9ec:	00139c00 	sll	s3,s3,0x10
     9f0:	00139c03 	sra	s3,s3,0x10
     9f4:	2a610006 	slti	at,s3,6
     9f8:	5420fff4 	bnezl	at,9cc <func_80AF95C4+0x228>
     9fc:	44932000 	mtc1	s3,$f4
     a00:	3c040000 	lui	a0,0x0
     a04:	0c000000 	jal	0 <EnSda_Init>
     a08:	24840000 	addiu	a0,a0,0
     a0c:	86cc001c 	lh	t4,28(s6)
     a10:	24010001 	li	at,1
     a14:	26b20a20 	addiu	s2,s5,2592
     a18:	118100e1 	beq	t4,at,da0 <func_80AF95C4+0x5fc>
     a1c:	02402025 	move	a0,s2
     a20:	27a50178 	addiu	a1,sp,376
     a24:	0c000000 	jal	0 <EnSda_Init>
     a28:	00003025 	move	a2,zero
     a2c:	8fc30000 	lw	v1,0(s8)
     a30:	87ad017a 	lh	t5,378(sp)
     a34:	34018000 	li	at,0x8000
     a38:	846f0a82 	lh	t7,2690(v1)
     a3c:	87ab0178 	lh	t3,376(sp)
     a40:	02402025 	move	a0,s2
     a44:	000f73c0 	sll	t6,t7,0xf
     a48:	01aec021 	addu	t8,t5,t6
     a4c:	0301c821 	addu	t9,t8,at
     a50:	a7b9017a 	sh	t9,378(sp)
     a54:	846c0a84 	lh	t4,2692(v1)
     a58:	00002825 	move	a1,zero
     a5c:	258fffff 	addiu	t7,t4,-1
     a60:	016f0019 	multu	t3,t7
     a64:	00006812 	mflo	t5
     a68:	a7ad0178 	sh	t5,376(sp)
     a6c:	0c000000 	jal	0 <EnSda_Init>
     a70:	00000000 	nop
     a74:	3c040000 	lui	a0,0x0
     a78:	24840000 	addiu	a0,a0,0
     a7c:	0c000000 	jal	0 <EnSda_Init>
     a80:	27a5016c 	addiu	a1,sp,364
     a84:	87ae017a 	lh	t6,378(sp)
     a88:	3c014700 	lui	at,0x4700
     a8c:	4481a000 	mtc1	at,$f20
     a90:	448e5000 	mtc1	t6,$f10
     a94:	3c010000 	lui	at,0x0
     a98:	c4240000 	lwc1	$f4,0(at)
     a9c:	46805420 	cvt.s.w	$f16,$f10
     aa0:	00002825 	move	a1,zero
     aa4:	46148483 	div.s	$f18,$f16,$f20
     aa8:	46049302 	mul.s	$f12,$f18,$f4
     aac:	0c000000 	jal	0 <EnSda_Init>
     ab0:	00000000 	nop
     ab4:	87b80178 	lh	t8,376(sp)
     ab8:	3c010000 	lui	at,0x0
     abc:	c4300000 	lwc1	$f16,0(at)
     ac0:	44983000 	mtc1	t8,$f6
     ac4:	24050001 	li	a1,1
     ac8:	46803220 	cvt.s.w	$f8,$f6
     acc:	46144283 	div.s	$f10,$f8,$f20
     ad0:	46105302 	mul.s	$f12,$f10,$f16
     ad4:	0c000000 	jal	0 <EnSda_Init>
     ad8:	00000000 	nop
     adc:	3c014080 	lui	at,0x4080
     ae0:	4481a000 	mtc1	at,$f20
     ae4:	00009825 	move	s3,zero
     ae8:	27b70064 	addiu	s7,sp,100
     aec:	27b60188 	addiu	s6,sp,392
     af0:	02740019 	multu	s3,s4
     af4:	3c190000 	lui	t9,0x0
     af8:	27390000 	addiu	t9,t9,0
     afc:	02c02825 	move	a1,s6
     b00:	00009012 	mflo	s2
     b04:	02592021 	addu	a0,s2,t9
     b08:	0c000000 	jal	0 <EnSda_Init>
     b0c:	00000000 	nop
     b10:	8fc30000 	lw	v1,0(s8)
     b14:	c7aa0188 	lwc1	$f10,392(sp)
     b18:	02f21021 	addu	v0,s7,s2
     b1c:	846c0a78 	lh	t4,2680(v1)
     b20:	26730001 	addiu	s3,s3,1
     b24:	00139c00 	sll	s3,s3,0x10
     b28:	448c9000 	mtc1	t4,$f18
     b2c:	00139c03 	sra	s3,s3,0x10
     b30:	2a610016 	slti	at,s3,22
     b34:	46809120 	cvt.s.w	$f4,$f18
     b38:	c7b2016c 	lwc1	$f18,364(sp)
     b3c:	46162183 	div.s	$f6,$f4,$f22
     b40:	46143200 	add.s	$f8,$f6,$f20
     b44:	460a4402 	mul.s	$f16,$f8,$f10
     b48:	46128100 	add.s	$f4,$f16,$f18
     b4c:	e4440000 	swc1	$f4,0(v0)
     b50:	846b0a78 	lh	t3,2680(v1)
     b54:	c7b2018c 	lwc1	$f18,396(sp)
     b58:	448b3000 	mtc1	t3,$f6
     b5c:	00000000 	nop
     b60:	46803220 	cvt.s.w	$f8,$f6
     b64:	c7a60170 	lwc1	$f6,368(sp)
     b68:	46164283 	div.s	$f10,$f8,$f22
     b6c:	46145400 	add.s	$f16,$f10,$f20
     b70:	46128102 	mul.s	$f4,$f16,$f18
     b74:	46062200 	add.s	$f8,$f4,$f6
     b78:	e4480004 	swc1	$f8,4(v0)
     b7c:	846f0a78 	lh	t7,2680(v1)
     b80:	c7a60190 	lwc1	$f6,400(sp)
     b84:	448f5000 	mtc1	t7,$f10
     b88:	00000000 	nop
     b8c:	46805420 	cvt.s.w	$f16,$f10
     b90:	c7aa0174 	lwc1	$f10,372(sp)
     b94:	46168483 	div.s	$f18,$f16,$f22
     b98:	46149100 	add.s	$f4,$f18,$f20
     b9c:	46062202 	mul.s	$f8,$f4,$f6
     ba0:	460a4400 	add.s	$f16,$f8,$f10
     ba4:	1420ffd2 	bnez	at,af0 <func_80AF95C4+0x34c>
     ba8:	e4500008 	swc1	$f16,8(v0)
     bac:	846d1338 	lh	t5,4920(v1)
     bb0:	00002825 	move	a1,zero
     bb4:	25ae0046 	addiu	t6,t5,70
     bb8:	448e9000 	mtc1	t6,$f18
     bbc:	00000000 	nop
     bc0:	46809120 	cvt.s.w	$f4,$f18
     bc4:	0c000000 	jal	0 <EnSda_Init>
     bc8:	46162303 	div.s	$f12,$f4,$f22
     bcc:	3c013f80 	lui	at,0x3f80
     bd0:	3c120000 	lui	s2,0x0
     bd4:	4481a000 	mtc1	at,$f20
     bd8:	26520000 	addiu	s2,s2,0
     bdc:	00009825 	move	s3,zero
     be0:	02740019 	multu	s3,s4
     be4:	c6a80024 	lwc1	$f8,36(s5)
     be8:	8fd90000 	lw	t9,0(s8)
     bec:	3c014180 	lui	at,0x4180
     bf0:	27a40194 	addiu	a0,sp,404
     bf4:	02c02825 	move	a1,s6
     bf8:	0000c012 	mflo	t8
     bfc:	02f81021 	addu	v0,s7,t8
     c00:	c4460000 	lwc1	$f6,0(v0)
     c04:	46083281 	sub.s	$f10,$f6,$f8
     c08:	e7aa0194 	swc1	$f10,404(sp)
     c0c:	872c0a74 	lh	t4,2676(t9)
     c10:	c6b20028 	lwc1	$f18,40(s5)
     c14:	c4500004 	lwc1	$f16,4(v0)
     c18:	448c3000 	mtc1	t4,$f6
     c1c:	46128101 	sub.s	$f4,$f16,$f18
     c20:	44818000 	mtc1	at,$f16
     c24:	46803220 	cvt.s.w	$f8,$f6
     c28:	46044280 	add.s	$f10,$f8,$f4
     c2c:	46105480 	add.s	$f18,$f10,$f16
     c30:	e7b20198 	swc1	$f18,408(sp)
     c34:	c6a8002c 	lwc1	$f8,44(s5)
     c38:	c4460008 	lwc1	$f6,8(v0)
     c3c:	46083101 	sub.s	$f4,$f6,$f8
     c40:	0c000000 	jal	0 <EnSda_Init>
     c44:	e7a4019c 	swc1	$f4,412(sp)
     c48:	8fc30000 	lw	v1,0(s8)
     c4c:	c7aa0188 	lwc1	$f10,392(sp)
     c50:	3c014200 	lui	at,0x4200
     c54:	846b0a88 	lh	t3,2696(v1)
     c58:	26730001 	addiu	s3,s3,1
     c5c:	00139c00 	sll	s3,s3,0x10
     c60:	448b8000 	mtc1	t3,$f16
     c64:	00139c03 	sra	s3,s3,0x10
     c68:	468084a0 	cvt.s.w	$f18,$f16
     c6c:	c7b0018c 	lwc1	$f16,396(sp)
     c70:	46169183 	div.s	$f6,$f18,$f22
     c74:	4606a200 	add.s	$f8,$f20,$f6
     c78:	46085102 	mul.s	$f4,$f10,$f8
     c7c:	e7a40188 	swc1	$f4,392(sp)
     c80:	846f0a88 	lh	t7,2696(v1)
     c84:	448f9000 	mtc1	t7,$f18
     c88:	00000000 	nop
     c8c:	468091a0 	cvt.s.w	$f6,$f18
     c90:	46163283 	div.s	$f10,$f6,$f22
     c94:	44813000 	mtc1	at,$f6
     c98:	460aa200 	add.s	$f8,$f20,$f10
     c9c:	46062280 	add.s	$f10,$f4,$f6
     ca0:	46088482 	mul.s	$f18,$f16,$f8
     ca4:	4600540d 	trunc.w.s	$f16,$f10
     ca8:	e7b2018c 	swc1	$f18,396(sp)
     cac:	4600920d 	trunc.w.s	$f8,$f18
     cb0:	44088000 	mfc1	t0,$f16
     cb4:	44094000 	mfc1	t1,$f8
     cb8:	00084400 	sll	t0,t0,0x10
     cbc:	00084403 	sra	t0,t0,0x10
     cc0:	00094c00 	sll	t1,t1,0x10
     cc4:	00094c03 	sra	t1,t1,0x10
     cc8:	00094980 	sll	t1,t1,0x6
     ccc:	00094c00 	sll	t1,t1,0x10
     cd0:	00094c03 	sra	t1,t1,0x10
     cd4:	00005025 	move	t2,zero
     cd8:	2407ff40 	li	a3,-192
     cdc:	000ac040 	sll	t8,t2,0x1
     ce0:	02583021 	addu	a2,s2,t8
     ce4:	84c20000 	lh	v0,0(a2)
     ce8:	254a0001 	addiu	t2,t2,1
     cec:	000a5400 	sll	t2,t2,0x10
     cf0:	00022023 	negu	a0,v0
     cf4:	00042400 	sll	a0,a0,0x10
     cf8:	00042403 	sra	a0,a0,0x10
     cfc:	2445ffff 	addiu	a1,v0,-1
     d00:	0085082a 	slt	at,a0,a1
     d04:	10200018 	beqz	at,d68 <func_80AF95C4+0x5c4>
     d08:	000a5403 	sra	t2,t2,0x10
     d0c:	01041021 	addu	v0,t0,a0
     d10:	00021400 	sll	v0,v0,0x10
     d14:	00021403 	sra	v0,v0,0x10
     d18:	0440000e 	bltz	v0,d54 <func_80AF95C4+0x5b0>
     d1c:	24840001 	addiu	a0,a0,1
     d20:	28410040 	slti	at,v0,64
     d24:	1020000b 	beqz	at,d54 <func_80AF95C4+0x5b0>
     d28:	01271821 	addu	v1,t1,a3
     d2c:	00031c00 	sll	v1,v1,0x10
     d30:	00031c03 	sra	v1,v1,0x10
     d34:	04600007 	bltz	v1,d54 <func_80AF95C4+0x5b0>
     d38:	28611000 	slti	at,v1,4096
     d3c:	10200005 	beqz	at,d54 <func_80AF95C4+0x5b0>
     d40:	0222c821 	addu	t9,s1,v0
     d44:	03236021 	addu	t4,t9,v1
     d48:	a1900000 	sb	s0,0(t4)
     d4c:	84c50000 	lh	a1,0(a2)
     d50:	24a5ffff 	addiu	a1,a1,-1
     d54:	00042400 	sll	a0,a0,0x10
     d58:	00042403 	sra	a0,a0,0x10
     d5c:	0085082a 	slt	at,a0,a1
     d60:	5420ffeb 	bnezl	at,d10 <func_80AF95C4+0x56c>
     d64:	01041021 	addu	v0,t0,a0
     d68:	24e70040 	addiu	a3,a3,64
     d6c:	00073c00 	sll	a3,a3,0x10
     d70:	29410007 	slti	at,t2,7
     d74:	1420ffd9 	bnez	at,cdc <func_80AF95C4+0x538>
     d78:	00073c03 	sra	a3,a3,0x10
     d7c:	254a0001 	addiu	t2,t2,1
     d80:	000a5400 	sll	t2,t2,0x10
     d84:	000a5403 	sra	t2,t2,0x10
     d88:	29410006 	slti	at,t2,6
     d8c:	5420ffd2 	bnezl	at,cd8 <func_80AF95C4+0x534>
     d90:	00005025 	move	t2,zero
     d94:	2a610016 	slti	at,s3,22
     d98:	1420ff91 	bnez	at,be0 <func_80AF95C4+0x43c>
     d9c:	00000000 	nop
     da0:	8fcb0000 	lw	t3,0(s8)
     da4:	24010001 	li	at,1
     da8:	02201025 	move	v0,s1
     dac:	856f134e 	lh	t7,4942(t3)
     db0:	00009825 	move	s3,zero
     db4:	240400ff 	li	a0,255
     db8:	15e10014 	bne	t7,at,e0c <func_80AF95C4+0x668>
     dbc:	00000000 	nop
     dc0:	904d0000 	lbu	t5,0(v0)
     dc4:	51a0000c 	beqzl	t5,df8 <func_80AF95C4+0x654>
     dc8:	26730001 	addiu	s3,s3,1
     dcc:	8fc30000 	lw	v1,0(s8)
     dd0:	00137183 	sra	t6,s3,0x6
     dd4:	8478134c 	lh	t8,4940(v1)
     dd8:	846b134e 	lh	t3,4942(v1)
     ddc:	27190004 	addiu	t9,t8,4
     de0:	01d90019 	multu	t6,t9
     de4:	008b7823 	subu	t7,a0,t3
     de8:	00006012 	mflo	t4
     dec:	01ec6823 	subu	t5,t7,t4
     df0:	a04d0000 	sb	t5,0(v0)
     df4:	26730001 	addiu	s3,s3,1
     df8:	00139c00 	sll	s3,s3,0x10
     dfc:	00139c03 	sra	s3,s3,0x10
     e00:	2a611000 	slti	at,s3,4096
     e04:	1420ffee 	bnez	at,dc0 <func_80AF95C4+0x61c>
     e08:	24420001 	addiu	v0,v0,1
     e0c:	3c040000 	lui	a0,0x0
     e10:	0c000000 	jal	0 <EnSda_Init>
     e14:	24840000 	addiu	a0,a0,0
     e18:	8fbf004c 	lw	ra,76(sp)
     e1c:	d7b40018 	ldc1	$f20,24(sp)
     e20:	d7b60020 	ldc1	$f22,32(sp)
     e24:	8fb00028 	lw	s0,40(sp)
     e28:	8fb1002c 	lw	s1,44(sp)
     e2c:	8fb20030 	lw	s2,48(sp)
     e30:	8fb30034 	lw	s3,52(sp)
     e34:	8fb40038 	lw	s4,56(sp)
     e38:	8fb5003c 	lw	s5,60(sp)
     e3c:	8fb60040 	lw	s6,64(sp)
     e40:	8fb70044 	lw	s7,68(sp)
     e44:	8fbe0048 	lw	s8,72(sp)
     e48:	03e00008 	jr	ra
     e4c:	27bd01b0 	addiu	sp,sp,432

00000e50 <func_80AF9C70>:
     e50:	27bdff58 	addiu	sp,sp,-168
     e54:	afbf0034 	sw	ra,52(sp)
     e58:	afb40030 	sw	s4,48(sp)
     e5c:	afb3002c 	sw	s3,44(sp)
     e60:	afb20028 	sw	s2,40(sp)
     e64:	afb10024 	sw	s1,36(sp)
     e68:	afb00020 	sw	s0,32(sp)
     e6c:	f7b40018 	sdc1	$f20,24(sp)
     e70:	afa400a8 	sw	a0,168(sp)
     e74:	8cd20000 	lw	s2,0(a2)
     e78:	00c0a025 	move	s4,a2
     e7c:	00a08825 	move	s1,a1
     e80:	3c060000 	lui	a2,0x0
     e84:	24c60000 	addiu	a2,a2,0
     e88:	27a40080 	addiu	a0,sp,128
     e8c:	2407033a 	li	a3,826
     e90:	0c000000 	jal	0 <EnSda_Init>
     e94:	02402825 	move	a1,s2
     e98:	3c040000 	lui	a0,0x0
     e9c:	0c000000 	jal	0 <EnSda_Init>
     ea0:	24840000 	addiu	a0,a0,0
     ea4:	0c000000 	jal	0 <EnSda_Init>
     ea8:	8e840000 	lw	a0,0(s4)
     eac:	8e4302d0 	lw	v1,720(s2)
     eb0:	3c130000 	lui	s3,0x0
     eb4:	3c0ffa00 	lui	t7,0xfa00
     eb8:	246e0008 	addiu	t6,v1,8
     ebc:	ae4e02d0 	sw	t6,720(s2)
     ec0:	26730000 	addiu	s3,s3,0
     ec4:	ac6f0000 	sw	t7,0(v1)
     ec8:	8e780000 	lw	t8,0(s3)
     ecc:	3c0bfb00 	lui	t3,0xfb00
     ed0:	00003825 	move	a3,zero
     ed4:	8719133c 	lh	t9,4924(t8)
     ed8:	27280032 	addiu	t0,t9,50
     edc:	310900ff 	andi	t1,t0,0xff
     ee0:	ac690004 	sw	t1,4(v1)
     ee4:	8e4302d0 	lw	v1,720(s2)
     ee8:	246a0008 	addiu	t2,v1,8
     eec:	ae4a02d0 	sw	t2,720(s2)
     ef0:	ac600004 	sw	zero,4(v1)
     ef4:	ac6b0000 	sw	t3,0(v1)
     ef8:	8e26002c 	lw	a2,44(s1)
     efc:	c62e0080 	lwc1	$f14,128(s1)
     f00:	0c000000 	jal	0 <EnSda_Init>
     f04:	c62c0024 	lwc1	$f12,36(s1)
     f08:	8e6c0000 	lw	t4,0(s3)
     f0c:	3c0142c8 	lui	at,0x42c8
     f10:	44814000 	mtc1	at,$f8
     f14:	858d133a 	lh	t5,4922(t4)
     f18:	24050001 	li	a1,1
     f1c:	448d2000 	mtc1	t5,$f4
     f20:	00000000 	nop
     f24:	468021a0 	cvt.s.w	$f6,$f4
     f28:	0c000000 	jal	0 <EnSda_Init>
     f2c:	46083303 	div.s	$f12,$f6,$f8
     f30:	8e6e0000 	lw	t6,0(s3)
     f34:	3c013f80 	lui	at,0x3f80
     f38:	4481a000 	mtc1	at,$f20
     f3c:	85cf1352 	lh	t7,4946(t6)
     f40:	3c014120 	lui	at,0x4120
     f44:	44819000 	mtc1	at,$f18
     f48:	448f5000 	mtc1	t7,$f10
     f4c:	24070001 	li	a3,1
     f50:	4600a306 	mov.s	$f12,$f20
     f54:	46805420 	cvt.s.w	$f16,$f10
     f58:	4600a386 	mov.s	$f14,$f20
     f5c:	46128103 	div.s	$f4,$f16,$f18
     f60:	46142180 	add.s	$f6,$f4,$f20
     f64:	44063000 	mfc1	a2,$f6
     f68:	0c000000 	jal	0 <EnSda_Init>
     f6c:	00000000 	nop
     f70:	8e700000 	lw	s0,0(s3)
     f74:	3c014120 	lui	at,0x4120
     f78:	44811000 	mtc1	at,$f2
     f7c:	86181350 	lh	t8,4944(s0)
     f80:	86191340 	lh	t9,4928(s0)
     f84:	3c014000 	lui	at,0x4000
     f88:	44984000 	mtc1	t8,$f8
     f8c:	44819000 	mtc1	at,$f18
     f90:	c6240028 	lwc1	$f4,40(s1)
     f94:	468042a0 	cvt.s.w	$f10,$f8
     f98:	c6260080 	lwc1	$f6,128(s1)
     f9c:	86081342 	lh	t0,4930(s0)
     fa0:	860a1348 	lh	t2,4936(s0)
     fa4:	3c0141a0 	lui	at,0x41a0
     fa8:	46062201 	sub.s	$f8,$f4,$f6
     fac:	2509fffb 	addiu	t1,t0,-5
     fb0:	44892000 	mtc1	t1,$f4
     fb4:	46025403 	div.s	$f16,$f10,$f2
     fb8:	44995000 	mtc1	t9,$f10
     fbc:	44807000 	mtc1	zero,$f14
     fc0:	24070001 	li	a3,1
     fc4:	468021a0 	cvt.s.w	$f6,$f4
     fc8:	46128300 	add.s	$f12,$f16,$f18
     fcc:	46805420 	cvt.s.w	$f16,$f10
     fd0:	46104480 	add.s	$f18,$f8,$f16
     fd4:	448a8000 	mtc1	t2,$f16
     fd8:	46069282 	mul.s	$f10,$f18,$f6
     fdc:	44813000 	mtc1	at,$f6
     fe0:	46808120 	cvt.s.w	$f4,$f16
     fe4:	46025203 	div.s	$f8,$f10,$f2
     fe8:	46082480 	add.s	$f18,$f4,$f8
     fec:	46069001 	sub.s	$f0,$f18,$f6
     ff0:	44060000 	mfc1	a2,$f0
     ff4:	0c000000 	jal	0 <EnSda_Init>
     ff8:	00000000 	nop
     ffc:	8e700000 	lw	s0,0(s3)
    1000:	3c01447a 	lui	at,0x447a
    1004:	44810000 	mtc1	at,$f0
    1008:	860d134a 	lh	t5,4938(s0)
    100c:	860b1344 	lh	t3,4932(s0)
    1010:	3c010000 	lui	at,0x0
    1014:	25aeff06 	addiu	t6,t5,-250
    1018:	448e4000 	mtc1	t6,$f8
    101c:	256cff06 	addiu	t4,t3,-250
    1020:	448c5000 	mtc1	t4,$f10
    1024:	468044a0 	cvt.s.w	$f18,$f8
    1028:	c4220000 	lwc1	$f2,0(at)
    102c:	4600a386 	mov.s	$f14,$f20
    1030:	24070001 	li	a3,1
    1034:	46805420 	cvt.s.w	$f16,$f10
    1038:	46009183 	div.s	$f6,$f18,$f0
    103c:	46008103 	div.s	$f4,$f16,$f0
    1040:	46023280 	add.s	$f10,$f6,$f2
    1044:	44065000 	mfc1	a2,$f10
    1048:	0c000000 	jal	0 <EnSda_Init>
    104c:	46022300 	add.s	$f12,$f4,$f2
    1050:	8e5002d0 	lw	s0,720(s2)
    1054:	3c18da38 	lui	t8,0xda38
    1058:	37180003 	ori	t8,t8,0x3
    105c:	260f0008 	addiu	t7,s0,8
    1060:	ae4f02d0 	sw	t7,720(s2)
    1064:	3c050000 	lui	a1,0x0
    1068:	ae180000 	sw	t8,0(s0)
    106c:	8e840000 	lw	a0,0(s4)
    1070:	24a50000 	addiu	a1,a1,0
    1074:	0c000000 	jal	0 <EnSda_Init>
    1078:	2406035c 	li	a2,860
    107c:	ae020004 	sw	v0,4(s0)
    1080:	8e4302d0 	lw	v1,720(s2)
    1084:	3c080000 	lui	t0,0x0
    1088:	25080000 	addiu	t0,t0,0
    108c:	24790008 	addiu	t9,v1,8
    1090:	ae5902d0 	sw	t9,720(s2)
    1094:	3c05de00 	lui	a1,0xde00
    1098:	ac650000 	sw	a1,0(v1)
    109c:	ac680004 	sw	t0,4(v1)
    10a0:	8e4302d0 	lw	v1,720(s2)
    10a4:	3c0afd90 	lui	t2,0xfd90
    10a8:	3c0e0709 	lui	t6,0x709
    10ac:	24690008 	addiu	t1,v1,8
    10b0:	ae4902d0 	sw	t1,720(s2)
    10b4:	ac6a0000 	sw	t2,0(v1)
    10b8:	8fab00a8 	lw	t3,168(sp)
    10bc:	35ce8260 	ori	t6,t6,0x8260
    10c0:	3c0df590 	lui	t5,0xf590
    10c4:	ac6b0004 	sw	t3,4(v1)
    10c8:	8e4302d0 	lw	v1,720(s2)
    10cc:	3c18e600 	lui	t8,0xe600
    10d0:	3c09077f 	lui	t1,0x77f
    10d4:	246c0008 	addiu	t4,v1,8
    10d8:	ae4c02d0 	sw	t4,720(s2)
    10dc:	ac6e0004 	sw	t6,4(v1)
    10e0:	ac6d0000 	sw	t5,0(v1)
    10e4:	8e4302d0 	lw	v1,720(s2)
    10e8:	3529f100 	ori	t1,t1,0xf100
    10ec:	3c08f300 	lui	t0,0xf300
    10f0:	246f0008 	addiu	t7,v1,8
    10f4:	ae4f02d0 	sw	t7,720(s2)
    10f8:	ac600004 	sw	zero,4(v1)
    10fc:	ac780000 	sw	t8,0(v1)
    1100:	8e4302d0 	lw	v1,720(s2)
    1104:	3c0be700 	lui	t3,0xe700
    1108:	3c0df588 	lui	t5,0xf588
    110c:	24790008 	addiu	t9,v1,8
    1110:	ae5902d0 	sw	t9,720(s2)
    1114:	ac690004 	sw	t1,4(v1)
    1118:	ac680000 	sw	t0,0(v1)
    111c:	8e4302d0 	lw	v1,720(s2)
    1120:	3c0e0009 	lui	t6,0x9
    1124:	35ce8260 	ori	t6,t6,0x8260
    1128:	246a0008 	addiu	t2,v1,8
    112c:	ae4a02d0 	sw	t2,720(s2)
    1130:	ac600004 	sw	zero,4(v1)
    1134:	ac6b0000 	sw	t3,0(v1)
    1138:	8e4302d0 	lw	v1,720(s2)
    113c:	35ad1000 	ori	t5,t5,0x1000
    1140:	3c19000f 	lui	t9,0xf
    1144:	246c0008 	addiu	t4,v1,8
    1148:	ae4c02d0 	sw	t4,720(s2)
    114c:	ac6e0004 	sw	t6,4(v1)
    1150:	ac6d0000 	sw	t5,0(v1)
    1154:	8e4302d0 	lw	v1,720(s2)
    1158:	3739c0fc 	ori	t9,t9,0xc0fc
    115c:	3c18f200 	lui	t8,0xf200
    1160:	246f0008 	addiu	t7,v1,8
    1164:	ae4f02d0 	sw	t7,720(s2)
    1168:	ac790004 	sw	t9,4(v1)
    116c:	ac780000 	sw	t8,0(v1)
    1170:	8e4302d0 	lw	v1,720(s2)
    1174:	3c040000 	lui	a0,0x0
    1178:	24840000 	addiu	a0,a0,0
    117c:	24680008 	addiu	t0,v1,8
    1180:	ae4802d0 	sw	t0,720(s2)
    1184:	ac640004 	sw	a0,4(v1)
    1188:	ac650000 	sw	a1,0(v1)
    118c:	8e700000 	lw	s0,0(s3)
    1190:	00008825 	move	s1,zero
    1194:	86090a70 	lh	t1,2672(s0)
    1198:	19200029 	blez	t1,1240 <func_80AF9C70+0x3f0>
    119c:	00000000 	nop
    11a0:	afa40040 	sw	a0,64(sp)
    11a4:	860a0a72 	lh	t2,2674(s0)
    11a8:	3c0142c8 	lui	at,0x42c8
    11ac:	44814000 	mtc1	at,$f8
    11b0:	448a8000 	mtc1	t2,$f16
    11b4:	4600a386 	mov.s	$f14,$f20
    11b8:	24070001 	li	a3,1
    11bc:	46808120 	cvt.s.w	$f4,$f16
    11c0:	46082483 	div.s	$f18,$f4,$f8
    11c4:	46149300 	add.s	$f12,$f18,$f20
    11c8:	44066000 	mfc1	a2,$f12
    11cc:	0c000000 	jal	0 <EnSda_Init>
    11d0:	00000000 	nop
    11d4:	8e5002d0 	lw	s0,720(s2)
    11d8:	3c0cda38 	lui	t4,0xda38
    11dc:	358c0003 	ori	t4,t4,0x3
    11e0:	260b0008 	addiu	t3,s0,8
    11e4:	ae4b02d0 	sw	t3,720(s2)
    11e8:	3c050000 	lui	a1,0x0
    11ec:	ae0c0000 	sw	t4,0(s0)
    11f0:	8e840000 	lw	a0,0(s4)
    11f4:	24a50000 	addiu	a1,a1,0
    11f8:	0c000000 	jal	0 <EnSda_Init>
    11fc:	2406036d 	li	a2,877
    1200:	ae020004 	sw	v0,4(s0)
    1204:	8e4302d0 	lw	v1,720(s2)
    1208:	3c0ede00 	lui	t6,0xde00
    120c:	26310001 	addiu	s1,s1,1
    1210:	246d0008 	addiu	t5,v1,8
    1214:	ae4d02d0 	sw	t5,720(s2)
    1218:	ac6e0000 	sw	t6,0(v1)
    121c:	8faf0040 	lw	t7,64(sp)
    1220:	00118c00 	sll	s1,s1,0x10
    1224:	00118c03 	sra	s1,s1,0x10
    1228:	ac6f0004 	sw	t7,4(v1)
    122c:	8e700000 	lw	s0,0(s3)
    1230:	86180a70 	lh	t8,2672(s0)
    1234:	0238082a 	slt	at,s1,t8
    1238:	5420ffdb 	bnezl	at,11a8 <func_80AF9C70+0x358>
    123c:	860a0a72 	lh	t2,2674(s0)
    1240:	3c040000 	lui	a0,0x0
    1244:	0c000000 	jal	0 <EnSda_Init>
    1248:	24840000 	addiu	a0,a0,0
    124c:	3c060000 	lui	a2,0x0
    1250:	24c60000 	addiu	a2,a2,0
    1254:	27a40080 	addiu	a0,sp,128
    1258:	02402825 	move	a1,s2
    125c:	0c000000 	jal	0 <EnSda_Init>
    1260:	24070372 	li	a3,882
    1264:	8fbf0034 	lw	ra,52(sp)
    1268:	d7b40018 	ldc1	$f20,24(sp)
    126c:	8fb00020 	lw	s0,32(sp)
    1270:	8fb10024 	lw	s1,36(sp)
    1274:	8fb20028 	lw	s2,40(sp)
    1278:	8fb3002c 	lw	s3,44(sp)
    127c:	8fb40030 	lw	s4,48(sp)
    1280:	03e00008 	jr	ra
    1284:	27bd00a8 	addiu	sp,sp,168
	...
