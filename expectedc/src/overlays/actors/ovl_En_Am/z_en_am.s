
build/src/overlays/actors/ovl_En_Am/z_en_am.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809ADF20>:
       0:	03e00008 	jr	ra
       4:	ac850254 	sw	a1,596(a0)

00000008 <func_809ADF28>:
       8:	27bdffb8 	addiu	sp,sp,-72
       c:	afbf0024 	sw	ra,36(sp)
      10:	afb00020 	sw	s0,32(sp)
      14:	afa5004c 	sw	a1,76(sp)
      18:	afa60050 	sw	a2,80(sp)
      1c:	afa70054 	sw	a3,84(sp)
      20:	24820024 	addiu	v0,a0,36
      24:	8c580000 	lw	t8,0(v0)
      28:	27ae0030 	addiu	t6,sp,48
      2c:	00808025 	move	s0,a0
      30:	add80000 	sw	t8,0(t6)
      34:	8c4f0004 	lw	t7,4(v0)
      38:	adcf0004 	sw	t7,4(t6)
      3c:	8c580008 	lw	t8,8(v0)
      40:	add80008 	sw	t8,8(t6)
      44:	94990088 	lhu	t9,136(a0)
      48:	afa2002c 	sw	v0,44(sp)
      4c:	87a40056 	lh	a0,86(sp)
      50:	0c000000 	jal	0 <func_809ADF20>
      54:	a7b90044 	sh	t9,68(sp)
      58:	c7a40050 	lwc1	$f4,80(sp)
      5c:	87a40056 	lh	a0,86(sp)
      60:	46040182 	mul.s	$f6,$f0,$f4
      64:	0c000000 	jal	0 <func_809ADF20>
      68:	e7a60040 	swc1	$f6,64(sp)
      6c:	c6080024 	lwc1	$f8,36(s0)
      70:	c7aa0040 	lwc1	$f10,64(sp)
      74:	c612002c 	lwc1	$f18,44(s0)
      78:	44801000 	mtc1	zero,$f2
      7c:	460a4400 	add.s	$f16,$f8,$f10
      80:	24080004 	li	t0,4
      84:	44061000 	mfc1	a2,$f2
      88:	44071000 	mfc1	a3,$f2
      8c:	e6100024 	swc1	$f16,36(s0)
      90:	c7a40050 	lwc1	$f4,80(sp)
      94:	02002825 	move	a1,s0
      98:	46040182 	mul.s	$f6,$f0,$f4
      9c:	46069200 	add.s	$f8,$f18,$f6
      a0:	e608002c 	swc1	$f8,44(s0)
      a4:	afa80014 	sw	t0,20(sp)
      a8:	8fa4004c 	lw	a0,76(sp)
      ac:	0c000000 	jal	0 <func_809ADF20>
      b0:	e7a20010 	swc1	$f2,16(sp)
      b4:	27aa0030 	addiu	t2,sp,48
      b8:	8d4c0000 	lw	t4,0(t2)
      bc:	8fa9002c 	lw	t1,44(sp)
      c0:	3c0141a0 	lui	at,0x41a0
      c4:	ad2c0000 	sw	t4,0(t1)
      c8:	8d4b0004 	lw	t3,4(t2)
      cc:	ad2b0004 	sw	t3,4(t1)
      d0:	8d4c0008 	lw	t4,8(t2)
      d4:	ad2c0008 	sw	t4,8(t1)
      d8:	96030088 	lhu	v1,136(s0)
      dc:	87ad0044 	lh	t5,68(sp)
      e0:	30630001 	andi	v1,v1,0x1
      e4:	00031c00 	sll	v1,v1,0x10
      e8:	00031c03 	sra	v1,v1,0x10
      ec:	5460000b 	bnezl	v1,11c <func_809ADF28+0x114>
      f0:	a60d0088 	sh	t5,136(s0)
      f4:	c610000c 	lwc1	$f16,12(s0)
      f8:	44812000 	mtc1	at,$f4
      fc:	c60a0080 	lwc1	$f10,128(s0)
     100:	46048481 	sub.s	$f18,$f16,$f4
     104:	460a903e 	c.le.s	$f18,$f10
     108:	00000000 	nop
     10c:	45020003 	bc1fl	11c <func_809ADF28+0x114>
     110:	a60d0088 	sh	t5,136(s0)
     114:	24030001 	li	v1,1
     118:	a60d0088 	sh	t5,136(s0)
     11c:	8fbf0024 	lw	ra,36(sp)
     120:	8fb00020 	lw	s0,32(sp)
     124:	27bd0048 	addiu	sp,sp,72
     128:	03e00008 	jr	ra
     12c:	00601025 	move	v0,v1

00000130 <EnAm_Init>:
     130:	27bdffb8 	addiu	sp,sp,-72
     134:	afb10028 	sw	s1,40(sp)
     138:	00a08825 	move	s1,a1
     13c:	afbf002c 	sw	ra,44(sp)
     140:	afb00024 	sw	s0,36(sp)
     144:	3c050000 	lui	a1,0x0
     148:	00808025 	move	s0,a0
     14c:	afa00044 	sw	zero,68(sp)
     150:	0c000000 	jal	0 <func_809ADF20>
     154:	24a50000 	addiu	a1,a1,0
     158:	3c060000 	lui	a2,0x0
     15c:	24c60000 	addiu	a2,a2,0
     160:	260400b4 	addiu	a0,s0,180
     164:	24050000 	li	a1,0
     168:	0c000000 	jal	0 <func_809ADF20>
     16c:	3c074240 	lui	a3,0x4240
     170:	3c060600 	lui	a2,0x600
     174:	3c070600 	lui	a3,0x600
     178:	260e01ac 	addiu	t6,s0,428
     17c:	260f0200 	addiu	t7,s0,512
     180:	2418000e 	li	t8,14
     184:	afb80018 	sw	t8,24(sp)
     188:	afaf0014 	sw	t7,20(sp)
     18c:	afae0010 	sw	t6,16(sp)
     190:	24e7033c 	addiu	a3,a3,828
     194:	24c65948 	addiu	a2,a2,22856
     198:	02202025 	move	a0,s1
     19c:	0c000000 	jal	0 <func_809ADF20>
     1a0:	26050164 	addiu	a1,s0,356
     1a4:	3c053c23 	lui	a1,0x3c23
     1a8:	34a5d70a 	ori	a1,a1,0xd70a
     1ac:	0c000000 	jal	0 <func_809ADF20>
     1b0:	02002025 	move	a0,s0
     1b4:	02002025 	move	a0,s0
     1b8:	0c000000 	jal	0 <func_809ADF20>
     1bc:	00002825 	move	a1,zero
     1c0:	26050274 	addiu	a1,s0,628
     1c4:	afa50034 	sw	a1,52(sp)
     1c8:	0c000000 	jal	0 <func_809ADF20>
     1cc:	02202025 	move	a0,s1
     1d0:	260502c0 	addiu	a1,s0,704
     1d4:	afa50038 	sw	a1,56(sp)
     1d8:	0c000000 	jal	0 <func_809ADF20>
     1dc:	02202025 	move	a0,s1
     1e0:	3c070000 	lui	a3,0x0
     1e4:	24e70000 	addiu	a3,a3,0
     1e8:	02202025 	move	a0,s1
     1ec:	8fa50034 	lw	a1,52(sp)
     1f0:	0c000000 	jal	0 <func_809ADF20>
     1f4:	02003025 	move	a2,s0
     1f8:	8619001c 	lh	t9,28(s0)
     1fc:	02202025 	move	a0,s1
     200:	8fa50038 	lw	a1,56(sp)
     204:	17200020 	bnez	t9,288 <EnAm_Init+0x158>
     208:	02003025 	move	a2,s0
     20c:	24080001 	li	t0,1
     210:	a20800af 	sb	t0,175(s0)
     214:	3c070000 	lui	a3,0x0
     218:	24e70000 	addiu	a3,a3,0
     21c:	8fa50038 	lw	a1,56(sp)
     220:	02202025 	move	a0,s1
     224:	0c000000 	jal	0 <func_809ADF20>
     228:	02003025 	move	a2,s0
     22c:	24090035 	li	t1,53
     230:	240a000d 	li	t2,13
     234:	3c040600 	lui	a0,0x600
     238:	a2090286 	sb	t1,646(s0)
     23c:	a20a02d2 	sb	t2,722(s0)
     240:	24840118 	addiu	a0,a0,280
     244:	0c000000 	jal	0 <func_809ADF20>
     248:	27a50044 	addiu	a1,sp,68
     24c:	02202025 	move	a0,s1
     250:	26250810 	addiu	a1,s1,2064
     254:	02003025 	move	a2,s0
     258:	0c000000 	jal	0 <func_809ADF20>
     25c:	8fa70044 	lw	a3,68(sp)
     260:	ae02014c 	sw	v0,332(s0)
     264:	02202025 	move	a0,s1
     268:	26251c24 	addiu	a1,s1,7204
     26c:	02003025 	move	a2,s0
     270:	0c000000 	jal	0 <func_809ADF20>
     274:	24070001 	li	a3,1
     278:	0c000000 	jal	0 <func_809ADF20>
     27c:	02002025 	move	a0,s0
     280:	10000017 	b	2e0 <EnAm_Init+0x1b0>
     284:	240d00fe 	li	t5,254
     288:	3c070000 	lui	a3,0x0
     28c:	0c000000 	jal	0 <func_809ADF20>
     290:	24e70000 	addiu	a3,a3,0
     294:	2605030c 	addiu	a1,s0,780
     298:	afa50038 	sw	a1,56(sp)
     29c:	0c000000 	jal	0 <func_809ADF20>
     2a0:	02202025 	move	a0,s1
     2a4:	3c070000 	lui	a3,0x0
     2a8:	8fa50038 	lw	a1,56(sp)
     2ac:	24e70000 	addiu	a3,a3,0
     2b0:	02202025 	move	a0,s1
     2b4:	0c000000 	jal	0 <func_809ADF20>
     2b8:	02003025 	move	a2,s0
     2bc:	3c0c0000 	lui	t4,0x0
     2c0:	240b0001 	li	t3,1
     2c4:	258c0000 	addiu	t4,t4,0
     2c8:	a20b00af 	sb	t3,175(s0)
     2cc:	ae0c0098 	sw	t4,152(s0)
     2d0:	0c000000 	jal	0 <func_809ADF20>
     2d4:	02002025 	move	a0,s0
     2d8:	a6000258 	sh	zero,600(s0)
     2dc:	240d00fe 	li	t5,254
     2e0:	a20d00ae 	sb	t5,174(s0)
     2e4:	8fbf002c 	lw	ra,44(sp)
     2e8:	8fb10028 	lw	s1,40(sp)
     2ec:	8fb00024 	lw	s0,36(sp)
     2f0:	03e00008 	jr	ra
     2f4:	27bd0048 	addiu	sp,sp,72

000002f8 <EnAm_Destroy>:
     2f8:	27bdffe8 	addiu	sp,sp,-24
     2fc:	afa40018 	sw	a0,24(sp)
     300:	8fae0018 	lw	t6,24(sp)
     304:	afbf0014 	sw	ra,20(sp)
     308:	00a03825 	move	a3,a1
     30c:	00a02025 	move	a0,a1
     310:	8dc6014c 	lw	a2,332(t6)
     314:	afa7001c 	sw	a3,28(sp)
     318:	0c000000 	jal	0 <func_809ADF20>
     31c:	24a50810 	addiu	a1,a1,2064
     320:	8fa50018 	lw	a1,24(sp)
     324:	8fa4001c 	lw	a0,28(sp)
     328:	0c000000 	jal	0 <func_809ADF20>
     32c:	24a50274 	addiu	a1,a1,628
     330:	8fa50018 	lw	a1,24(sp)
     334:	8fa4001c 	lw	a0,28(sp)
     338:	0c000000 	jal	0 <func_809ADF20>
     33c:	24a502c0 	addiu	a1,a1,704
     340:	8fbf0014 	lw	ra,20(sp)
     344:	27bd0018 	addiu	sp,sp,24
     348:	03e00008 	jr	ra
     34c:	00000000 	nop

00000350 <func_809AE270>:
     350:	27bdff70 	addiu	sp,sp,-144
     354:	f7ba0040 	sdc1	$f26,64(sp)
     358:	3c0e0000 	lui	t6,0x0
     35c:	afbf006c 	sw	ra,108(sp)
     360:	afb70068 	sw	s7,104(sp)
     364:	afb60064 	sw	s6,100(sp)
     368:	afb50060 	sw	s5,96(sp)
     36c:	afb4005c 	sw	s4,92(sp)
     370:	afb30058 	sw	s3,88(sp)
     374:	afb20054 	sw	s2,84(sp)
     378:	afb10050 	sw	s1,80(sp)
     37c:	afb0004c 	sw	s0,76(sp)
     380:	f7b80038 	sdc1	$f24,56(sp)
     384:	f7b60030 	sdc1	$f22,48(sp)
     388:	f7b40028 	sdc1	$f20,40(sp)
     38c:	25ce0000 	addiu	t6,t6,0
     390:	3c014220 	lui	at,0x4220
     394:	8dd80000 	lw	t8,0(t6)
     398:	4481d000 	mtc1	at,$f26
     39c:	3c014120 	lui	at,0x4120
     3a0:	27b6007c 	addiu	s6,sp,124
     3a4:	3c190000 	lui	t9,0x0
     3a8:	4481c000 	mtc1	at,$f24
     3ac:	27390000 	addiu	t9,t9,0
     3b0:	3c014282 	lui	at,0x4282
     3b4:	aed80000 	sw	t8,0(s6)
     3b8:	8f290000 	lw	t1,0(t9)
     3bc:	4481b000 	mtc1	at,$f22
     3c0:	3c013f00 	lui	at,0x3f00
     3c4:	27b70078 	addiu	s7,sp,120
     3c8:	3c130000 	lui	s3,0x0
     3cc:	3c140000 	lui	s4,0x0
     3d0:	4481a000 	mtc1	at,$f20
     3d4:	00808025 	move	s0,a0
     3d8:	00a0a825 	move	s5,a1
     3dc:	26940000 	addiu	s4,s4,0
     3e0:	26730000 	addiu	s3,s3,0
     3e4:	24110004 	li	s1,4
     3e8:	27b20080 	addiu	s2,sp,128
     3ec:	aee90000 	sw	t1,0(s7)
     3f0:	0c000000 	jal	0 <func_809ADF20>
     3f4:	00000000 	nop
     3f8:	46140101 	sub.s	$f4,$f0,$f20
     3fc:	c6080024 	lwc1	$f8,36(s0)
     400:	46162182 	mul.s	$f6,$f4,$f22
     404:	46083280 	add.s	$f10,$f6,$f8
     408:	0c000000 	jal	0 <func_809ADF20>
     40c:	e7aa0080 	swc1	$f10,128(sp)
     410:	46140401 	sub.s	$f16,$f0,$f20
     414:	c6040028 	lwc1	$f4,40(s0)
     418:	46188482 	mul.s	$f18,$f16,$f24
     41c:	461a2180 	add.s	$f6,$f4,$f26
     420:	46069200 	add.s	$f8,$f18,$f6
     424:	0c000000 	jal	0 <func_809ADF20>
     428:	e7a80084 	swc1	$f8,132(sp)
     42c:	46140281 	sub.s	$f10,$f0,$f20
     430:	c604002c 	lwc1	$f4,44(s0)
     434:	afb70014 	sw	s7,20(sp)
     438:	afb60010 	sw	s6,16(sp)
     43c:	46165402 	mul.s	$f16,$f10,$f22
     440:	02a02025 	move	a0,s5
     444:	02402825 	move	a1,s2
     448:	02603025 	move	a2,s3
     44c:	02803825 	move	a3,s4
     450:	46048480 	add.s	$f18,$f16,$f4
     454:	0c000000 	jal	0 <func_809ADF20>
     458:	e7b20088 	swc1	$f18,136(sp)
     45c:	2631ffff 	addiu	s1,s1,-1
     460:	1620ffe3 	bnez	s1,3f0 <func_809AE270+0xa0>
     464:	00000000 	nop
     468:	02002025 	move	a0,s0
     46c:	0c000000 	jal	0 <func_809ADF20>
     470:	24053844 	li	a1,14404
     474:	3c014100 	lui	at,0x4100
     478:	44813000 	mtc1	at,$f6
     47c:	240a0003 	li	t2,3
     480:	240b012c 	li	t3,300
     484:	240c000f 	li	t4,15
     488:	afac001c 	sw	t4,28(sp)
     48c:	afab0018 	sw	t3,24(sp)
     490:	afaa0010 	sw	t2,16(sp)
     494:	02a02025 	move	a0,s5
     498:	02002825 	move	a1,s0
     49c:	26060024 	addiu	a2,s0,36
     4a0:	3c074080 	lui	a3,0x4080
     4a4:	afa00020 	sw	zero,32(sp)
     4a8:	0c000000 	jal	0 <func_809ADF20>
     4ac:	e7a60014 	swc1	$f6,20(sp)
     4b0:	8fbf006c 	lw	ra,108(sp)
     4b4:	d7b40028 	ldc1	$f20,40(sp)
     4b8:	d7b60030 	ldc1	$f22,48(sp)
     4bc:	d7b80038 	ldc1	$f24,56(sp)
     4c0:	d7ba0040 	ldc1	$f26,64(sp)
     4c4:	8fb0004c 	lw	s0,76(sp)
     4c8:	8fb10050 	lw	s1,80(sp)
     4cc:	8fb20054 	lw	s2,84(sp)
     4d0:	8fb30058 	lw	s3,88(sp)
     4d4:	8fb4005c 	lw	s4,92(sp)
     4d8:	8fb50060 	lw	s5,96(sp)
     4dc:	8fb60064 	lw	s6,100(sp)
     4e0:	8fb70068 	lw	s7,104(sp)
     4e4:	03e00008 	jr	ra
     4e8:	27bd0090 	addiu	sp,sp,144

000004ec <func_809AE40C>:
     4ec:	27bdffd0 	addiu	sp,sp,-48
     4f0:	afb00028 	sw	s0,40(sp)
     4f4:	00808025 	move	s0,a0
     4f8:	afbf002c 	sw	ra,44(sp)
     4fc:	3c040600 	lui	a0,0x600
     500:	0c000000 	jal	0 <func_809ADF20>
     504:	2484033c 	addiu	a0,a0,828
     508:	44822000 	mtc1	v0,$f4
     50c:	44801000 	mtc1	zero,$f2
     510:	3c050600 	lui	a1,0x600
     514:	46802020 	cvt.s.w	$f0,$f4
     518:	44061000 	mfc1	a2,$f2
     51c:	24a5033c 	addiu	a1,a1,828
     520:	26040164 	addiu	a0,s0,356
     524:	afa00014 	sw	zero,20(sp)
     528:	e7a20018 	swc1	$f2,24(sp)
     52c:	44070000 	mfc1	a3,$f0
     530:	0c000000 	jal	0 <func_809ADF20>
     534:	e7a00010 	swc1	$f0,16(sp)
     538:	920f0266 	lbu	t7,614(s0)
     53c:	44803000 	mtc1	zero,$f6
     540:	240e0003 	li	t6,3
     544:	240100ff 	li	at,255
     548:	ae0e01a8 	sw	t6,424(s0)
     54c:	15e10003 	bne	t7,at,55c <func_809AE40C+0x70>
     550:	e6060068 	swc1	$f6,104(s0)
     554:	10000003 	b	564 <func_809AE40C+0x78>
     558:	a6000258 	sh	zero,600(s0)
     55c:	24180001 	li	t8,1
     560:	a6180258 	sh	t8,600(s0)
     564:	3c050000 	lui	a1,0x0
     568:	24a50000 	addiu	a1,a1,0
     56c:	0c000000 	jal	0 <func_809ADF20>
     570:	02002025 	move	a0,s0
     574:	8fbf002c 	lw	ra,44(sp)
     578:	8fb00028 	lw	s0,40(sp)
     57c:	27bd0030 	addiu	sp,sp,48
     580:	03e00008 	jr	ra
     584:	00000000 	nop

00000588 <func_809AE4A8>:
     588:	27bdffd0 	addiu	sp,sp,-48
     58c:	afb00028 	sw	s0,40(sp)
     590:	00808025 	move	s0,a0
     594:	afbf002c 	sw	ra,44(sp)
     598:	3c040600 	lui	a0,0x600
     59c:	0c000000 	jal	0 <func_809ADF20>
     5a0:	2484033c 	addiu	a0,a0,828
     5a4:	44822000 	mtc1	v0,$f4
     5a8:	44801000 	mtc1	zero,$f2
     5ac:	3c050600 	lui	a1,0x600
     5b0:	46802020 	cvt.s.w	$f0,$f4
     5b4:	44061000 	mfc1	a2,$f2
     5b8:	24a5033c 	addiu	a1,a1,828
     5bc:	26040164 	addiu	a0,s0,356
     5c0:	afa00014 	sw	zero,20(sp)
     5c4:	e7a20018 	swc1	$f2,24(sp)
     5c8:	44070000 	mfc1	a3,$f0
     5cc:	0c000000 	jal	0 <func_809ADF20>
     5d0:	e7a00010 	swc1	$f0,16(sp)
     5d4:	8e0e0004 	lw	t6,4(s0)
     5d8:	44803000 	mtc1	zero,$f6
     5dc:	2401fffe 	li	at,-2
     5e0:	24180003 	li	t8,3
     5e4:	3c050000 	lui	a1,0x0
     5e8:	01c17824 	and	t7,t6,at
     5ec:	ae0f0004 	sw	t7,4(s0)
     5f0:	ae1801a8 	sw	t8,424(s0)
     5f4:	24a50000 	addiu	a1,a1,0
     5f8:	02002025 	move	a0,s0
     5fc:	0c000000 	jal	0 <func_809ADF20>
     600:	e6060068 	swc1	$f6,104(s0)
     604:	8fbf002c 	lw	ra,44(sp)
     608:	8fb00028 	lw	s0,40(sp)
     60c:	27bd0030 	addiu	sp,sp,48
     610:	03e00008 	jr	ra
     614:	00000000 	nop

00000618 <func_809AE538>:
     618:	27bdffe8 	addiu	sp,sp,-24
     61c:	afbf0014 	sw	ra,20(sp)
     620:	00803825 	move	a3,a0
     624:	3c050600 	lui	a1,0x600
     628:	24a50238 	addiu	a1,a1,568
     62c:	afa70018 	sw	a3,24(sp)
     630:	24840164 	addiu	a0,a0,356
     634:	0c000000 	jal	0 <func_809ADF20>
     638:	3c064080 	lui	a2,0x4080
     63c:	8fa40018 	lw	a0,24(sp)
     640:	44802000 	mtc1	zero,$f4
     644:	240e0003 	li	t6,3
     648:	849800b6 	lh	t8,182(a0)
     64c:	240f000a 	li	t7,10
     650:	3c050000 	lui	a1,0x0
     654:	24a50000 	addiu	a1,a1,0
     658:	a48e0258 	sh	t6,600(a0)
     65c:	ac8f01a8 	sw	t7,424(a0)
     660:	e4840068 	swc1	$f4,104(a0)
     664:	0c000000 	jal	0 <func_809ADF20>
     668:	a4980032 	sh	t8,50(a0)
     66c:	8fbf0014 	lw	ra,20(sp)
     670:	27bd0018 	addiu	sp,sp,24
     674:	03e00008 	jr	ra
     678:	00000000 	nop

0000067c <func_809AE59C>:
     67c:	27bdffe8 	addiu	sp,sp,-24
     680:	afbf0014 	sw	ra,20(sp)
     684:	00803825 	move	a3,a0
     688:	3c050600 	lui	a1,0x600
     68c:	24a50238 	addiu	a1,a1,568
     690:	afa70018 	sw	a3,24(sp)
     694:	24840164 	addiu	a0,a0,356
     698:	0c000000 	jal	0 <func_809ADF20>
     69c:	3c064080 	lui	a2,0x4080
     6a0:	8fa40018 	lw	a0,24(sp)
     6a4:	44802000 	mtc1	zero,$f4
     6a8:	240e0003 	li	t6,3
     6ac:	849900b6 	lh	t9,182(a0)
     6b0:	240f0028 	li	t7,40
     6b4:	2418000a 	li	t8,10
     6b8:	3c050000 	lui	a1,0x0
     6bc:	24a50000 	addiu	a1,a1,0
     6c0:	a48e0258 	sh	t6,600(a0)
     6c4:	a48f025a 	sh	t7,602(a0)
     6c8:	ac9801a8 	sw	t8,424(a0)
     6cc:	e4840068 	swc1	$f4,104(a0)
     6d0:	0c000000 	jal	0 <func_809ADF20>
     6d4:	a4990032 	sh	t9,50(a0)
     6d8:	8fbf0014 	lw	ra,20(sp)
     6dc:	27bd0018 	addiu	sp,sp,24
     6e0:	03e00008 	jr	ra
     6e4:	00000000 	nop

000006e8 <func_809AE608>:
     6e8:	27bdffe8 	addiu	sp,sp,-24
     6ec:	afbf0014 	sw	ra,20(sp)
     6f0:	00803825 	move	a3,a0
     6f4:	3c050600 	lui	a1,0x600
     6f8:	24a50238 	addiu	a1,a1,568
     6fc:	afa70018 	sw	a3,24(sp)
     700:	24840164 	addiu	a0,a0,356
     704:	0c000000 	jal	0 <func_809ADF20>
     708:	3c064080 	lui	a2,0x4080
     70c:	8fa40018 	lw	a0,24(sp)
     710:	44802000 	mtc1	zero,$f4
     714:	240e0007 	li	t6,7
     718:	240f0001 	li	t7,1
     71c:	3c050000 	lui	a1,0x0
     720:	24a50000 	addiu	a1,a1,0
     724:	ac8e01a8 	sw	t6,424(a0)
     728:	a48f0258 	sh	t7,600(a0)
     72c:	0c000000 	jal	0 <func_809ADF20>
     730:	e4840068 	swc1	$f4,104(a0)
     734:	8fbf0014 	lw	ra,20(sp)
     738:	27bd0018 	addiu	sp,sp,24
     73c:	03e00008 	jr	ra
     740:	00000000 	nop

00000744 <func_809AE664>:
     744:	27bdffe8 	addiu	sp,sp,-24
     748:	afbf0014 	sw	ra,20(sp)
     74c:	00803825 	move	a3,a0
     750:	3c050600 	lui	a1,0x600
     754:	24a50238 	addiu	a1,a1,568
     758:	afa70018 	sw	a3,24(sp)
     75c:	24840164 	addiu	a0,a0,356
     760:	0c000000 	jal	0 <func_809ADF20>
     764:	3c064080 	lui	a2,0x4080
     768:	8fa40018 	lw	a0,24(sp)
     76c:	44802000 	mtc1	zero,$f4
     770:	240e0007 	li	t6,7
     774:	240f0001 	li	t7,1
     778:	3c050000 	lui	a1,0x0
     77c:	24a50000 	addiu	a1,a1,0
     780:	ac8e01a8 	sw	t6,424(a0)
     784:	a48f0258 	sh	t7,600(a0)
     788:	0c000000 	jal	0 <func_809ADF20>
     78c:	e4840068 	swc1	$f4,104(a0)
     790:	8fbf0014 	lw	ra,20(sp)
     794:	27bd0018 	addiu	sp,sp,24
     798:	03e00008 	jr	ra
     79c:	00000000 	nop

000007a0 <func_809AE6C0>:
     7a0:	27bdffe8 	addiu	sp,sp,-24
     7a4:	afbf0014 	sw	ra,20(sp)
     7a8:	00803825 	move	a3,a0
     7ac:	3c050600 	lui	a1,0x600
     7b0:	24a50238 	addiu	a1,a1,568
     7b4:	afa70018 	sw	a3,24(sp)
     7b8:	24840164 	addiu	a0,a0,356
     7bc:	0c000000 	jal	0 <func_809ADF20>
     7c0:	3c064080 	lui	a2,0x4080
     7c4:	8fa40018 	lw	a0,24(sp)
     7c8:	44802000 	mtc1	zero,$f4
     7cc:	240e0007 	li	t6,7
     7d0:	848f00b6 	lh	t7,182(a0)
     7d4:	3c050000 	lui	a1,0x0
     7d8:	24a50000 	addiu	a1,a1,0
     7dc:	ac8e01a8 	sw	t6,424(a0)
     7e0:	e4840068 	swc1	$f4,104(a0)
     7e4:	0c000000 	jal	0 <func_809ADF20>
     7e8:	a48f0032 	sh	t7,50(a0)
     7ec:	8fbf0014 	lw	ra,20(sp)
     7f0:	27bd0018 	addiu	sp,sp,24
     7f4:	03e00008 	jr	ra
     7f8:	00000000 	nop

000007fc <func_809AE71C>:
     7fc:	27bdffd0 	addiu	sp,sp,-48
     800:	afb00028 	sw	s0,40(sp)
     804:	00808025 	move	s0,a0
     808:	afbf002c 	sw	ra,44(sp)
     80c:	3c040600 	lui	a0,0x600
     810:	afa50034 	sw	a1,52(sp)
     814:	0c000000 	jal	0 <func_809ADF20>
     818:	24845b3c 	addiu	a0,a0,23356
     81c:	44822000 	mtc1	v0,$f4
     820:	3c0140c0 	lui	at,0x40c0
     824:	44814000 	mtc1	at,$f8
     828:	468021a0 	cvt.s.w	$f6,$f4
     82c:	44808000 	mtc1	zero,$f16
     830:	3c050600 	lui	a1,0x600
     834:	240e0002 	li	t6,2
     838:	afae0014 	sw	t6,20(sp)
     83c:	24a55b3c 	addiu	a1,a1,23356
     840:	46083281 	sub.s	$f10,$f6,$f8
     844:	26040164 	addiu	a0,s0,356
     848:	3c063f80 	lui	a2,0x3f80
     84c:	3c074080 	lui	a3,0x4080
     850:	e7aa0010 	swc1	$f10,16(sp)
     854:	0c000000 	jal	0 <func_809ADF20>
     858:	e7b00018 	swc1	$f16,24(sp)
     85c:	8618008a 	lh	t8,138(s0)
     860:	240f0001 	li	t7,1
     864:	ae0f01a8 	sw	t7,424(s0)
     868:	02002025 	move	a0,s0
     86c:	24053847 	li	a1,14407
     870:	0c000000 	jal	0 <func_809ADF20>
     874:	a6180032 	sh	t8,50(s0)
     878:	02002025 	move	a0,s0
     87c:	8fa50034 	lw	a1,52(sp)
     880:	3c06c0c0 	lui	a2,0xc0c0
     884:	0c000000 	jal	0 <func_809ADF20>
     888:	86070032 	lh	a3,50(s0)
     88c:	10400005 	beqz	v0,8a4 <func_809AE71C+0xa8>
     890:	02002825 	move	a1,s0
     894:	3c01c0c0 	lui	at,0xc0c0
     898:	44819000 	mtc1	at,$f18
     89c:	00000000 	nop
     8a0:	e6120068 	swc1	$f18,104(s0)
     8a4:	a2000114 	sb	zero,276(s0)
     8a8:	0c000000 	jal	0 <func_809ADF20>
     8ac:	8fa40034 	lw	a0,52(sp)
     8b0:	3c050000 	lui	a1,0x0
     8b4:	24a50000 	addiu	a1,a1,0
     8b8:	0c000000 	jal	0 <func_809ADF20>
     8bc:	02002025 	move	a0,s0
     8c0:	8fbf002c 	lw	ra,44(sp)
     8c4:	8fb00028 	lw	s0,40(sp)
     8c8:	27bd0030 	addiu	sp,sp,48
     8cc:	03e00008 	jr	ra
     8d0:	00000000 	nop

000008d4 <func_809AE7F4>:
     8d4:	27bdffd0 	addiu	sp,sp,-48
     8d8:	44800000 	mtc1	zero,$f0
     8dc:	3c014100 	lui	at,0x4100
     8e0:	44812000 	mtc1	at,$f4
     8e4:	afb00028 	sw	s0,40(sp)
     8e8:	afa50034 	sw	a1,52(sp)
     8ec:	00808025 	move	s0,a0
     8f0:	afbf002c 	sw	ra,44(sp)
     8f4:	3c050600 	lui	a1,0x600
     8f8:	240e0002 	li	t6,2
     8fc:	44070000 	mfc1	a3,$f0
     900:	afae0014 	sw	t6,20(sp)
     904:	24a5033c 	addiu	a1,a1,828
     908:	24840164 	addiu	a0,a0,356
     90c:	3c063f80 	lui	a2,0x3f80
     910:	e7a00018 	swc1	$f0,24(sp)
     914:	0c000000 	jal	0 <func_809ADF20>
     918:	e7a40010 	swc1	$f4,16(sp)
     91c:	860f008a 	lh	t7,138(s0)
     920:	02002025 	move	a0,s0
     924:	3c06c0c0 	lui	a2,0xc0c0
     928:	a60f0032 	sh	t7,50(s0)
     92c:	86070032 	lh	a3,50(s0)
     930:	0c000000 	jal	0 <func_809ADF20>
     934:	8fa50034 	lw	a1,52(sp)
     938:	10400005 	beqz	v0,950 <func_809AE7F4+0x7c>
     93c:	24180005 	li	t8,5
     940:	3c01c0c0 	lui	at,0xc0c0
     944:	44813000 	mtc1	at,$f6
     948:	00000000 	nop
     94c:	e6060068 	swc1	$f6,104(s0)
     950:	24190008 	li	t9,8
     954:	3c050000 	lui	a1,0x0
     958:	a6000264 	sh	zero,612(s0)
     95c:	a6000258 	sh	zero,600(s0)
     960:	a618025a 	sh	t8,602(s0)
     964:	ae1901a8 	sw	t9,424(s0)
     968:	24a50000 	addiu	a1,a1,0
     96c:	0c000000 	jal	0 <func_809ADF20>
     970:	02002025 	move	a0,s0
     974:	8fbf002c 	lw	ra,44(sp)
     978:	8fb00028 	lw	s0,40(sp)
     97c:	27bd0030 	addiu	sp,sp,48
     980:	03e00008 	jr	ra
     984:	00000000 	nop

00000988 <func_809AE8A8>:
     988:	27bdffc8 	addiu	sp,sp,-56
     98c:	afbf0024 	sw	ra,36(sp)
     990:	afb00020 	sw	s0,32(sp)
     994:	848e0258 	lh	t6,600(a0)
     998:	00808025 	move	s0,a0
     99c:	8ca21c44 	lw	v0,7236(a1)
     9a0:	55c0000d 	bnezl	t6,9d8 <func_809AE8A8+0x50>
     9a4:	920a0285 	lbu	t2,645(s0)
     9a8:	908f0286 	lbu	t7,646(a0)
     9ac:	31f80002 	andi	t8,t7,0x2
     9b0:	53000005 	beqzl	t8,9c8 <func_809AE8A8+0x40>
     9b4:	92080285 	lbu	t0,645(s0)
     9b8:	8c990280 	lw	t9,640(a0)
     9bc:	50590006 	beql	v0,t9,9d8 <func_809AE8A8+0x50>
     9c0:	920a0285 	lbu	t2,645(s0)
     9c4:	92080285 	lbu	t0,645(s0)
     9c8:	31090002 	andi	t1,t0,0x2
     9cc:	51200043 	beqzl	t1,adc <func_809AE8A8+0x154>
     9d0:	92020266 	lbu	v0,614(s0)
     9d4:	920a0285 	lbu	t2,645(s0)
     9d8:	92020266 	lbu	v0,614(s0)
     9dc:	02002025 	move	a0,s0
     9e0:	314bfffd 	andi	t3,t2,0xfffd
     9e4:	1440000e 	bnez	v0,a20 <func_809AE8A8+0x98>
     9e8:	a20b0285 	sb	t3,645(s0)
     9ec:	0c000000 	jal	0 <func_809ADF20>
     9f0:	24053845 	li	a1,14405
     9f4:	02002025 	move	a0,s0
     9f8:	0c000000 	jal	0 <func_809ADF20>
     9fc:	24053848 	li	a1,14408
     a00:	240c0008 	li	t4,8
     a04:	afac0010 	sw	t4,16(sp)
     a08:	02002025 	move	a0,s0
     a0c:	24054000 	li	a1,16384
     a10:	240600ff 	li	a2,255
     a14:	0c000000 	jal	0 <func_809ADF20>
     a18:	00003825 	move	a3,zero
     a1c:	92020266 	lbu	v0,614(s0)
     a20:	284100f0 	slti	at,v0,240
     a24:	1420000d 	bnez	at,a5c <func_809AE8A8+0xd4>
     a28:	240d00c8 	li	t5,200
     a2c:	8e0f0004 	lw	t7,4(s0)
     a30:	44801000 	mtc1	zero,$f2
     a34:	240e00ff 	li	t6,255
     a38:	35f80001 	ori	t8,t7,0x1
     a3c:	a60d025c 	sh	t5,604(s0)
     a40:	a20e0266 	sb	t6,614(s0)
     a44:	ae180004 	sw	t8,4(s0)
     a48:	02002025 	move	a0,s0
     a4c:	0c000000 	jal	0 <func_809ADF20>
     a50:	e60200bc 	swc1	$f2,188(s0)
     a54:	10000063 	b	be4 <func_809AE8A8+0x25c>
     a58:	8fbf0024 	lw	ra,36(sp)
     a5c:	0c000000 	jal	0 <func_809ADF20>
     a60:	00000000 	nop
     a64:	3c013f00 	lui	at,0x3f00
     a68:	44812000 	mtc1	at,$f4
     a6c:	3c014120 	lui	at,0x4120
     a70:	44814000 	mtc1	at,$f8
     a74:	46040181 	sub.s	$f6,$f0,$f4
     a78:	46083282 	mul.s	$f10,$f6,$f8
     a7c:	e7aa002c 	swc1	$f10,44(sp)
     a80:	0c000000 	jal	0 <func_809ADF20>
     a84:	860400b6 	lh	a0,182(s0)
     a88:	c7b0002c 	lwc1	$f16,44(sp)
     a8c:	46100482 	mul.s	$f18,$f0,$f16
     a90:	e7b20034 	swc1	$f18,52(sp)
     a94:	0c000000 	jal	0 <func_809ADF20>
     a98:	860400b6 	lh	a0,182(s0)
     a9c:	c6040268 	lwc1	$f4,616(s0)
     aa0:	c7a60034 	lwc1	$f6,52(sp)
     aa4:	c60a0270 	lwc1	$f10,624(s0)
     aa8:	92190266 	lbu	t9,614(s0)
     aac:	46062200 	add.s	$f8,$f4,$f6
     ab0:	24090001 	li	t1,1
     ab4:	27280014 	addiu	t0,t9,20
     ab8:	e6080024 	swc1	$f8,36(s0)
     abc:	c7b0002c 	lwc1	$f16,44(sp)
     ac0:	a2080266 	sb	t0,614(s0)
     ac4:	a6090258 	sh	t1,600(s0)
     ac8:	46100482 	mul.s	$f18,$f0,$f16
     acc:	46125100 	add.s	$f4,$f10,$f18
     ad0:	10000043 	b	be0 <func_809AE8A8+0x258>
     ad4:	e604002c 	swc1	$f4,44(s0)
     ad8:	92020266 	lbu	v0,614(s0)
     adc:	2841000b 	slti	at,v0,11
     ae0:	14200003 	bnez	at,af0 <func_809AE8A8+0x168>
     ae4:	244afff6 	addiu	t2,v0,-10
     ae8:	1000003d 	b	be0 <func_809AE8A8+0x258>
     aec:	a20a0266 	sb	t2,614(s0)
     af0:	8e0b0004 	lw	t3,4(s0)
     af4:	8e0d014c 	lw	t5,332(s0)
     af8:	2401fffe 	li	at,-2
     afc:	01616024 	and	t4,t3,at
     b00:	a2000266 	sb	zero,614(s0)
     b04:	05a10002 	bgez	t5,b10 <func_809AE8A8+0x188>
     b08:	ae0c0004 	sw	t4,4(s0)
     b0c:	a6000264 	sh	zero,612(s0)
     b10:	c6060068 	lwc1	$f6,104(s0)
     b14:	c6080150 	lwc1	$f8,336(s0)
     b18:	3c01c020 	lui	at,0xc020
     b1c:	44811000 	mtc1	at,$f2
     b20:	46083400 	add.s	$f16,$f6,$f8
     b24:	8e0f0024 	lw	t7,36(s0)
     b28:	8e0e0028 	lw	t6,40(s0)
     b2c:	86180158 	lh	t8,344(s0)
     b30:	e6100068 	swc1	$f16,104(s0)
     b34:	c6000068 	lwc1	$f0,104(s0)
     b38:	ae0f0268 	sw	t7,616(s0)
     b3c:	8e0f002c 	lw	t7,44(s0)
     b40:	4602003c 	c.lt.s	$f0,$f2
     b44:	3c014020 	lui	at,0x4020
     b48:	ae0e026c 	sw	t6,620(s0)
     b4c:	a6180032 	sh	t8,50(s0)
     b50:	45000003 	bc1f	b60 <func_809AE8A8+0x1d8>
     b54:	ae0f0270 	sw	t7,624(s0)
     b58:	1000000b 	b	b88 <func_809AE8A8+0x200>
     b5c:	e6020068 	swc1	$f2,104(s0)
     b60:	44816000 	mtc1	at,$f12
     b64:	00000000 	nop
     b68:	4600603c 	c.lt.s	$f12,$f0
     b6c:	00000000 	nop
     b70:	45020004 	bc1fl	b84 <func_809AE8A8+0x1fc>
     b74:	46000086 	mov.s	$f2,$f0
     b78:	10000002 	b	b84 <func_809AE8A8+0x1fc>
     b7c:	46006086 	mov.s	$f2,$f12
     b80:	46000086 	mov.s	$f2,$f0
     b84:	e6020068 	swc1	$f2,104(s0)
     b88:	3c013f80 	lui	at,0x3f80
     b8c:	44810000 	mtc1	at,$f0
     b90:	44801000 	mtc1	zero,$f2
     b94:	26040068 	addiu	a0,s0,104
     b98:	44060000 	mfc1	a2,$f0
     b9c:	44070000 	mfc1	a3,$f0
     ba0:	44051000 	mfc1	a1,$f2
     ba4:	0c000000 	jal	0 <func_809ADF20>
     ba8:	e7a20010 	swc1	$f2,16(sp)
     bac:	44801000 	mtc1	zero,$f2
     bb0:	c60a0068 	lwc1	$f10,104(s0)
     bb4:	02002025 	move	a0,s0
     bb8:	460a1032 	c.eq.s	$f2,$f10
     bbc:	00000000 	nop
     bc0:	45030006 	bc1tl	bdc <func_809AE8A8+0x254>
     bc4:	e6020154 	swc1	$f2,340(s0)
     bc8:	0c000000 	jal	0 <func_809ADF20>
     bcc:	2405200a 	li	a1,8202
     bd0:	44801000 	mtc1	zero,$f2
     bd4:	00000000 	nop
     bd8:	e6020154 	swc1	$f2,340(s0)
     bdc:	e6020150 	swc1	$f2,336(s0)
     be0:	8fbf0024 	lw	ra,36(sp)
     be4:	8fb00020 	lw	s0,32(sp)
     be8:	27bd0038 	addiu	sp,sp,56
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <func_809AEB14>:
     bf4:	27bdffd0 	addiu	sp,sp,-48
     bf8:	afb00020 	sw	s0,32(sp)
     bfc:	00808025 	move	s0,a0
     c00:	afbf0024 	sw	ra,36(sp)
     c04:	afa50034 	sw	a1,52(sp)
     c08:	26050008 	addiu	a1,s0,8
     c0c:	0c000000 	jal	0 <func_809ADF20>
     c10:	24840024 	addiu	a0,a0,36
     c14:	a7a2002e 	sh	v0,46(sp)
     c18:	3c014100 	lui	at,0x4100
     c1c:	44812000 	mtc1	at,$f4
     c20:	c600017c 	lwc1	$f0,380(s0)
     c24:	87a5002e 	lh	a1,46(sp)
     c28:	26040032 	addiu	a0,s0,50
     c2c:	46002032 	c.eq.s	$f4,$f0
     c30:	24060001 	li	a2,1
     c34:	24071f40 	li	a3,8000
     c38:	3c014130 	lui	at,0x4130
     c3c:	45020008 	bc1fl	c60 <func_809AEB14+0x6c>
     c40:	44814000 	mtc1	at,$f8
     c44:	0c000000 	jal	0 <func_809ADF20>
     c48:	afa00010 	sw	zero,16(sp)
     c4c:	3c014140 	lui	at,0x4140
     c50:	44813000 	mtc1	at,$f6
     c54:	1000001b 	b	cc4 <func_809AEB14+0xd0>
     c58:	e6060060 	swc1	$f6,96(s0)
     c5c:	44814000 	mtc1	at,$f8
     c60:	00000000 	nop
     c64:	4600403c 	c.lt.s	$f8,$f0
     c68:	00000000 	nop
     c6c:	45000015 	bc1f	cc4 <func_809AEB14+0xd0>
     c70:	00000000 	nop
     c74:	960e0088 	lhu	t6,136(s0)
     c78:	3c014130 	lui	at,0x4130
     c7c:	02002025 	move	a0,s0
     c80:	31cf0001 	andi	t7,t6,0x1
     c84:	15e00004 	bnez	t7,c98 <func_809AEB14+0xa4>
     c88:	00000000 	nop
     c8c:	44815000 	mtc1	at,$f10
     c90:	1000000c 	b	cc4 <func_809AEB14+0xd0>
     c94:	e60a017c 	swc1	$f10,380(s0)
     c98:	0c000000 	jal	0 <func_809ADF20>
     c9c:	8fa50034 	lw	a1,52(sp)
     ca0:	87b8002e 	lh	t8,46(sp)
     ca4:	86190032 	lh	t9,50(s0)
     ca8:	44808000 	mtc1	zero,$f16
     cac:	57190003 	bnel	t8,t9,cbc <func_809AEB14+0xc8>
     cb0:	c6120080 	lwc1	$f18,128(s0)
     cb4:	a6000258 	sh	zero,600(s0)
     cb8:	c6120080 	lwc1	$f18,128(s0)
     cbc:	e6100060 	swc1	$f16,96(s0)
     cc0:	e6120028 	swc1	$f18,40(s0)
     cc4:	0c000000 	jal	0 <func_809ADF20>
     cc8:	26040164 	addiu	a0,s0,356
     ccc:	86080258 	lh	t0,600(s0)
     cd0:	55000004 	bnezl	t0,ce4 <func_809AEB14+0xf0>
     cd4:	86090032 	lh	t1,50(s0)
     cd8:	0c000000 	jal	0 <func_809ADF20>
     cdc:	02002025 	move	a0,s0
     ce0:	86090032 	lh	t1,50(s0)
     ce4:	a60900b6 	sh	t1,182(s0)
     ce8:	8fbf0024 	lw	ra,36(sp)
     cec:	8fb00020 	lw	s0,32(sp)
     cf0:	27bd0030 	addiu	sp,sp,48
     cf4:	03e00008 	jr	ra
     cf8:	00000000 	nop

00000cfc <func_809AEC1C>:
     cfc:	27bdffd8 	addiu	sp,sp,-40
     d00:	afbf0024 	sw	ra,36(sp)
     d04:	afb00020 	sw	s0,32(sp)
     d08:	3c014100 	lui	at,0x4100
     d0c:	44812000 	mtc1	at,$f4
     d10:	c480017c 	lwc1	$f0,380(a0)
     d14:	00808025 	move	s0,a0
     d18:	3c014130 	lui	at,0x4130
     d1c:	46002032 	c.eq.s	$f4,$f0
     d20:	00000000 	nop
     d24:	45020019 	bc1fl	d8c <func_809AEC1C+0x90>
     d28:	44812000 	mtc1	at,$f4
     d2c:	c4860008 	lwc1	$f6,8(a0)
     d30:	c4880024 	lwc1	$f8,36(a0)
     d34:	46083032 	c.eq.s	$f6,$f8
     d38:	00000000 	nop
     d3c:	4502000d 	bc1fl	d74 <func_809AEC1C+0x78>
     d40:	3c014140 	lui	at,0x4140
     d44:	c48a0010 	lwc1	$f10,16(a0)
     d48:	c490002c 	lwc1	$f16,44(a0)
     d4c:	24840032 	addiu	a0,a0,50
     d50:	24060001 	li	a2,1
     d54:	46105032 	c.eq.s	$f10,$f16
     d58:	24071f40 	li	a3,8000
     d5c:	45020005 	bc1fl	d74 <func_809AEC1C+0x78>
     d60:	3c014140 	lui	at,0x4140
     d64:	86050016 	lh	a1,22(s0)
     d68:	0c000000 	jal	0 <func_809ADF20>
     d6c:	afa00010 	sw	zero,16(sp)
     d70:	3c014140 	lui	at,0x4140
     d74:	44819000 	mtc1	at,$f18
     d78:	240e0002 	li	t6,2
     d7c:	a60e0258 	sh	t6,600(s0)
     d80:	1000001b 	b	df0 <func_809AEC1C+0xf4>
     d84:	e6120060 	swc1	$f18,96(s0)
     d88:	44812000 	mtc1	at,$f4
     d8c:	00000000 	nop
     d90:	4600203c 	c.lt.s	$f4,$f0
     d94:	00000000 	nop
     d98:	45020016 	bc1fl	df4 <func_809AEC1C+0xf8>
     d9c:	860a0258 	lh	t2,600(s0)
     da0:	960f0088 	lhu	t7,136(s0)
     da4:	3c014130 	lui	at,0x4130
     da8:	24190001 	li	t9,1
     dac:	31f80001 	andi	t8,t7,0x1
     db0:	17000004 	bnez	t8,dc4 <func_809AEC1C+0xc8>
     db4:	02002025 	move	a0,s0
     db8:	44813000 	mtc1	at,$f6
     dbc:	1000000c 	b	df0 <func_809AEC1C+0xf4>
     dc0:	e606017c 	swc1	$f6,380(s0)
     dc4:	0c000000 	jal	0 <func_809ADF20>
     dc8:	a6190258 	sh	t9,600(s0)
     dcc:	86080032 	lh	t0,50(s0)
     dd0:	86090016 	lh	t1,22(s0)
     dd4:	44804000 	mtc1	zero,$f8
     dd8:	55090003 	bnel	t0,t1,de8 <func_809AEC1C+0xec>
     ddc:	c60a0080 	lwc1	$f10,128(s0)
     de0:	a6000258 	sh	zero,600(s0)
     de4:	c60a0080 	lwc1	$f10,128(s0)
     de8:	e6080060 	swc1	$f8,96(s0)
     dec:	e60a0028 	swc1	$f10,40(s0)
     df0:	860a0258 	lh	t2,600(s0)
     df4:	24010002 	li	at,2
     df8:	26040024 	addiu	a0,s0,36
     dfc:	1541000d 	bne	t2,at,e34 <func_809AEC1C+0x138>
     e00:	3c063f80 	lui	a2,0x3f80
     e04:	44808000 	mtc1	zero,$f16
     e08:	8e050008 	lw	a1,8(s0)
     e0c:	3c074100 	lui	a3,0x4100
     e10:	0c000000 	jal	0 <func_809ADF20>
     e14:	e7b00010 	swc1	$f16,16(sp)
     e18:	44809000 	mtc1	zero,$f18
     e1c:	8e050010 	lw	a1,16(s0)
     e20:	2604002c 	addiu	a0,s0,44
     e24:	3c063f80 	lui	a2,0x3f80
     e28:	3c074100 	lui	a3,0x4100
     e2c:	0c000000 	jal	0 <func_809ADF20>
     e30:	e7b20010 	swc1	$f18,16(sp)
     e34:	0c000000 	jal	0 <func_809ADF20>
     e38:	26040164 	addiu	a0,s0,356
     e3c:	860b0258 	lh	t3,600(s0)
     e40:	55600004 	bnezl	t3,e54 <func_809AEC1C+0x158>
     e44:	860c0032 	lh	t4,50(s0)
     e48:	0c000000 	jal	0 <func_809ADF20>
     e4c:	02002025 	move	a0,s0
     e50:	860c0032 	lh	t4,50(s0)
     e54:	a60c00b6 	sh	t4,182(s0)
     e58:	8fbf0024 	lw	ra,36(sp)
     e5c:	8fb00020 	lw	s0,32(sp)
     e60:	27bd0028 	addiu	sp,sp,40
     e64:	03e00008 	jr	ra
     e68:	00000000 	nop

00000e6c <func_809AED8C>:
     e6c:	27bdffd0 	addiu	sp,sp,-48
     e70:	afb00020 	sw	s0,32(sp)
     e74:	00808025 	move	s0,a0
     e78:	afa50034 	sw	a1,52(sp)
     e7c:	afbf0024 	sw	ra,36(sp)
     e80:	26050008 	addiu	a1,s0,8
     e84:	afa50028 	sw	a1,40(sp)
     e88:	0c000000 	jal	0 <func_809ADF20>
     e8c:	24840024 	addiu	a0,a0,36
     e90:	3c014100 	lui	at,0x4100
     e94:	44812000 	mtc1	at,$f4
     e98:	c600017c 	lwc1	$f0,380(s0)
     e9c:	00022c00 	sll	a1,v0,0x10
     ea0:	00052c03 	sra	a1,a1,0x10
     ea4:	46002032 	c.eq.s	$f4,$f0
     ea8:	3c014130 	lui	at,0x4130
     eac:	45020009 	bc1fl	ed4 <func_809AED8C+0x68>
     eb0:	44815000 	mtc1	at,$f10
     eb4:	3c014140 	lui	at,0x4140
     eb8:	44813000 	mtc1	at,$f6
     ebc:	3c0140c0 	lui	at,0x40c0
     ec0:	44814000 	mtc1	at,$f8
     ec4:	e6060060 	swc1	$f6,96(s0)
     ec8:	1000002e 	b	f84 <func_809AED8C+0x118>
     ecc:	e6080068 	swc1	$f8,104(s0)
     ed0:	44815000 	mtc1	at,$f10
     ed4:	00000000 	nop
     ed8:	4600503c 	c.lt.s	$f10,$f0
     edc:	00000000 	nop
     ee0:	45020029 	bc1fl	f88 <func_809AED8C+0x11c>
     ee4:	44803000 	mtc1	zero,$f6
     ee8:	960e0088 	lhu	t6,136(s0)
     eec:	26040032 	addiu	a0,s0,50
     ef0:	24060001 	li	a2,1
     ef4:	31cf0001 	andi	t7,t6,0x1
     ef8:	15e00005 	bnez	t7,f10 <func_809AED8C+0xa4>
     efc:	24070bb8 	li	a3,3000
     f00:	3c014130 	lui	at,0x4130
     f04:	44818000 	mtc1	at,$f16
     f08:	1000001e 	b	f84 <func_809AED8C+0x118>
     f0c:	e610017c 	swc1	$f16,380(s0)
     f10:	0c000000 	jal	0 <func_809ADF20>
     f14:	afa00010 	sw	zero,16(sp)
     f18:	96180088 	lhu	t8,136(s0)
     f1c:	44800000 	mtc1	zero,$f0
     f20:	02002025 	move	a0,s0
     f24:	33190002 	andi	t9,t8,0x2
     f28:	53200005 	beqzl	t9,f40 <func_809AED8C+0xd4>
     f2c:	c6120080 	lwc1	$f18,128(s0)
     f30:	86080258 	lh	t0,600(s0)
     f34:	2509ffff 	addiu	t1,t0,-1
     f38:	a6090258 	sh	t1,600(s0)
     f3c:	c6120080 	lwc1	$f18,128(s0)
     f40:	e6000060 	swc1	$f0,96(s0)
     f44:	e6000068 	swc1	$f0,104(s0)
     f48:	e6120028 	swc1	$f18,40(s0)
     f4c:	0c000000 	jal	0 <func_809ADF20>
     f50:	8fa50034 	lw	a1,52(sp)
     f54:	02002025 	move	a0,s0
     f58:	0c000000 	jal	0 <func_809ADF20>
     f5c:	8fa50028 	lw	a1,40(sp)
     f60:	3c0142a0 	lui	at,0x42a0
     f64:	44812000 	mtc1	at,$f4
     f68:	00000000 	nop
     f6c:	4604003c 	c.lt.s	$f0,$f4
     f70:	00000000 	nop
     f74:	45020004 	bc1fl	f88 <func_809AED8C+0x11c>
     f78:	44803000 	mtc1	zero,$f6
     f7c:	0c000000 	jal	0 <func_809ADF20>
     f80:	02002025 	move	a0,s0
     f84:	44803000 	mtc1	zero,$f6
     f88:	c6080068 	lwc1	$f8,104(s0)
     f8c:	46083032 	c.eq.s	$f6,$f8
     f90:	00000000 	nop
     f94:	45010009 	bc1t	fbc <func_809AED8C+0x150>
     f98:	00000000 	nop
     f9c:	960a0088 	lhu	t2,136(s0)
     fa0:	314b0008 	andi	t3,t2,0x8
     fa4:	11600005 	beqz	t3,fbc <func_809AED8C+0x150>
     fa8:	00000000 	nop
     fac:	860c007e 	lh	t4,126(s0)
     fb0:	02002025 	move	a0,s0
     fb4:	0c000000 	jal	0 <func_809ADF20>
     fb8:	a60c0032 	sh	t4,50(s0)
     fbc:	0c000000 	jal	0 <func_809ADF20>
     fc0:	26040164 	addiu	a0,s0,356
     fc4:	860d0032 	lh	t5,50(s0)
     fc8:	a60d00b6 	sh	t5,182(s0)
     fcc:	8fbf0024 	lw	ra,36(sp)
     fd0:	8fb00020 	lw	s0,32(sp)
     fd4:	27bd0030 	addiu	sp,sp,48
     fd8:	03e00008 	jr	ra
     fdc:	00000000 	nop

00000fe0 <func_809AEF00>:
     fe0:	27bdffe0 	addiu	sp,sp,-32
     fe4:	afbf001c 	sw	ra,28(sp)
     fe8:	afb00018 	sw	s0,24(sp)
     fec:	44801000 	mtc1	zero,$f2
     ff0:	c4800068 	lwc1	$f0,104(a0)
     ff4:	00808025 	move	s0,a0
     ff8:	3c013f00 	lui	at,0x3f00
     ffc:	4602003c 	c.lt.s	$f0,$f2
    1000:	3c06c100 	lui	a2,0xc100
    1004:	45020006 	bc1fl	1020 <func_809AEF00+0x40>
    1008:	c6080060 	lwc1	$f8,96(s0)
    100c:	44812000 	mtc1	at,$f4
    1010:	00000000 	nop
    1014:	46040180 	add.s	$f6,$f0,$f4
    1018:	e4860068 	swc1	$f6,104(a0)
    101c:	c6080060 	lwc1	$f8,96(s0)
    1020:	02002025 	move	a0,s0
    1024:	4602403e 	c.le.s	$f8,$f2
    1028:	00000000 	nop
    102c:	45000007 	bc1f	104c <func_809AEF00+0x6c>
    1030:	00000000 	nop
    1034:	0c000000 	jal	0 <func_809ADF20>
    1038:	86070032 	lh	a3,50(s0)
    103c:	44801000 	mtc1	zero,$f2
    1040:	14400002 	bnez	v0,104c <func_809AEF00+0x6c>
    1044:	00000000 	nop
    1048:	e6020068 	swc1	$f2,104(s0)
    104c:	0c000000 	jal	0 <func_809ADF20>
    1050:	26040164 	addiu	a0,s0,356
    1054:	50400007 	beqzl	v0,1074 <func_809AEF00+0x94>
    1058:	8fbf001c 	lw	ra,28(sp)
    105c:	0c000000 	jal	0 <func_809ADF20>
    1060:	02002025 	move	a0,s0
    1064:	240e0040 	li	t6,64
    1068:	a60e0260 	sh	t6,608(s0)
    106c:	a6000262 	sh	zero,610(s0)
    1070:	8fbf001c 	lw	ra,28(sp)
    1074:	8fb00018 	lw	s0,24(sp)
    1078:	27bd0020 	addiu	sp,sp,32
    107c:	03e00008 	jr	ra
    1080:	00000000 	nop

00001084 <func_809AEFA4>:
    1084:	27bdffd0 	addiu	sp,sp,-48
    1088:	afbf0024 	sw	ra,36(sp)
    108c:	afb00020 	sw	s0,32(sp)
    1090:	848e008a 	lh	t6,138(a0)
    1094:	00808025 	move	s0,a0
    1098:	3c014100 	lui	at,0x4100
    109c:	afae0028 	sw	t6,40(sp)
    10a0:	84980032 	lh	t8,50(a0)
    10a4:	01d81023 	subu	v0,t6,t8
    10a8:	00021400 	sll	v0,v0,0x10
    10ac:	00021403 	sra	v0,v0,0x10
    10b0:	04430005 	bgezl	v0,10c8 <func_809AEFA4+0x44>
    10b4:	8603025a 	lh	v1,602(s0)
    10b8:	00021023 	negu	v0,v0
    10bc:	00021400 	sll	v0,v0,0x10
    10c0:	00021403 	sra	v0,v0,0x10
    10c4:	8603025a 	lh	v1,602(s0)
    10c8:	10600003 	beqz	v1,10d8 <func_809AEFA4+0x54>
    10cc:	2479ffff 	addiu	t9,v1,-1
    10d0:	10000035 	b	11a8 <func_809AEFA4+0x124>
    10d4:	a619025a 	sh	t9,602(s0)
    10d8:	c600017c 	lwc1	$f0,380(s0)
    10dc:	44812000 	mtc1	at,$f4
    10e0:	26040032 	addiu	a0,s0,50
    10e4:	24060001 	li	a2,1
    10e8:	46002032 	c.eq.s	$f4,$f0
    10ec:	24071f40 	li	a3,8000
    10f0:	3c014130 	lui	at,0x4130
    10f4:	45020009 	bc1fl	111c <func_809AEFA4+0x98>
    10f8:	44814000 	mtc1	at,$f8
    10fc:	87a5002a 	lh	a1,42(sp)
    1100:	0c000000 	jal	0 <func_809ADF20>
    1104:	afa00010 	sw	zero,16(sp)
    1108:	3c014140 	lui	at,0x4140
    110c:	44813000 	mtc1	at,$f6
    1110:	10000019 	b	1178 <func_809AEFA4+0xf4>
    1114:	e6060060 	swc1	$f6,96(s0)
    1118:	44814000 	mtc1	at,$f8
    111c:	00000000 	nop
    1120:	4600403c 	c.lt.s	$f8,$f0
    1124:	00000000 	nop
    1128:	45000013 	bc1f	1178 <func_809AEFA4+0xf4>
    112c:	00000000 	nop
    1130:	96080088 	lhu	t0,136(s0)
    1134:	28410dac 	slti	at,v0,3500
    1138:	31090001 	andi	t1,t0,0x1
    113c:	15200005 	bnez	t1,1154 <func_809AEFA4+0xd0>
    1140:	00000000 	nop
    1144:	3c014130 	lui	at,0x4130
    1148:	44815000 	mtc1	at,$f10
    114c:	1000000a 	b	1178 <func_809AEFA4+0xf4>
    1150:	e60a017c 	swc1	$f10,380(s0)
    1154:	50200003 	beqzl	at,1164 <func_809AEFA4+0xe0>
    1158:	44808000 	mtc1	zero,$f16
    115c:	a6000258 	sh	zero,600(s0)
    1160:	44808000 	mtc1	zero,$f16
    1164:	c6120080 	lwc1	$f18,128(s0)
    1168:	02002025 	move	a0,s0
    116c:	e6100060 	swc1	$f16,96(s0)
    1170:	0c000000 	jal	0 <func_809ADF20>
    1174:	e6120028 	swc1	$f18,40(s0)
    1178:	0c000000 	jal	0 <func_809ADF20>
    117c:	26040164 	addiu	a0,s0,356
    1180:	860a0258 	lh	t2,600(s0)
    1184:	55400007 	bnezl	t2,11a4 <func_809AEFA4+0x120>
    1188:	860b0032 	lh	t3,50(s0)
    118c:	0c000000 	jal	0 <func_809ADF20>
    1190:	02002025 	move	a0,s0
    1194:	02002025 	move	a0,s0
    1198:	0c000000 	jal	0 <func_809ADF20>
    119c:	24053848 	li	a1,14408
    11a0:	860b0032 	lh	t3,50(s0)
    11a4:	a60b00b6 	sh	t3,182(s0)
    11a8:	8fbf0024 	lw	ra,36(sp)
    11ac:	8fb00020 	lw	s0,32(sp)
    11b0:	27bd0030 	addiu	sp,sp,48
    11b4:	03e00008 	jr	ra
    11b8:	00000000 	nop

000011bc <func_809AF0DC>:
    11bc:	27bdffd8 	addiu	sp,sp,-40
    11c0:	afbf0024 	sw	ra,36(sp)
    11c4:	afb00020 	sw	s0,32(sp)
    11c8:	afa5002c 	sw	a1,44(sp)
    11cc:	848e0260 	lh	t6,608(a0)
    11d0:	00808025 	move	s0,a0
    11d4:	29c10034 	slti	at,t6,52
    11d8:	1020007f 	beqz	at,13d8 <func_809AF0DC+0x21c>
    11dc:	3c014100 	lui	at,0x4100
    11e0:	44812000 	mtc1	at,$f4
    11e4:	c480017c 	lwc1	$f0,380(a0)
    11e8:	3c014130 	lui	at,0x4130
    11ec:	46002032 	c.eq.s	$f4,$f0
    11f0:	00000000 	nop
    11f4:	45020017 	bc1fl	1254 <func_809AF0DC+0x98>
    11f8:	44818000 	mtc1	at,$f16
    11fc:	3c014140 	lui	at,0x4140
    1200:	44813000 	mtc1	at,$f6
    1204:	3c0642a0 	lui	a2,0x42a0
    1208:	e4860060 	swc1	$f6,96(a0)
    120c:	86070032 	lh	a3,50(s0)
    1210:	0c000000 	jal	0 <func_809ADF20>
    1214:	8fa5002c 	lw	a1,44(sp)
    1218:	10400004 	beqz	v0,122c <func_809AF0DC+0x70>
    121c:	3c0140c0 	lui	at,0x40c0
    1220:	44814000 	mtc1	at,$f8
    1224:	10000004 	b	1238 <func_809AF0DC+0x7c>
    1228:	e6080068 	swc1	$f8,104(s0)
    122c:	44805000 	mtc1	zero,$f10
    1230:	00000000 	nop
    1234:	e60a0068 	swc1	$f10,104(s0)
    1238:	9218031c 	lbu	t8,796(s0)
    123c:	240f0001 	li	t7,1
    1240:	a60f0264 	sh	t7,612(s0)
    1244:	3319fff9 	andi	t9,t8,0xfff9
    1248:	10000036 	b	1324 <func_809AF0DC+0x168>
    124c:	a219031c 	sb	t9,796(s0)
    1250:	44818000 	mtc1	at,$f16
    1254:	00000000 	nop
    1258:	4600803c 	c.lt.s	$f16,$f0
    125c:	00000000 	nop
    1260:	45020031 	bc1fl	1328 <func_809AF0DC+0x16c>
    1264:	44808000 	mtc1	zero,$f16
    1268:	96080088 	lhu	t0,136(s0)
    126c:	26040032 	addiu	a0,s0,50
    1270:	24060001 	li	a2,1
    1274:	31090001 	andi	t1,t0,0x1
    1278:	15200005 	bnez	t1,1290 <func_809AF0DC+0xd4>
    127c:	24071770 	li	a3,6000
    1280:	3c014130 	lui	at,0x4130
    1284:	44819000 	mtc1	at,$f18
    1288:	10000026 	b	1324 <func_809AF0DC+0x168>
    128c:	e612017c 	swc1	$f18,380(s0)
    1290:	8605008a 	lh	a1,138(s0)
    1294:	0c000000 	jal	0 <func_809ADF20>
    1298:	afa00010 	sw	zero,16(sp)
    129c:	960a0088 	lhu	t2,136(s0)
    12a0:	44802000 	mtc1	zero,$f4
    12a4:	44803000 	mtc1	zero,$f6
    12a8:	314b0002 	andi	t3,t2,0x2
    12ac:	11600004 	beqz	t3,12c0 <func_809AF0DC+0x104>
    12b0:	02002025 	move	a0,s0
    12b4:	860c0258 	lh	t4,600(s0)
    12b8:	258dffff 	addiu	t5,t4,-1
    12bc:	a60d0258 	sh	t5,600(s0)
    12c0:	c6080080 	lwc1	$f8,128(s0)
    12c4:	e6040060 	swc1	$f4,96(s0)
    12c8:	e6060068 	swc1	$f6,104(s0)
    12cc:	a6000264 	sh	zero,612(s0)
    12d0:	e6080028 	swc1	$f8,40(s0)
    12d4:	0c000000 	jal	0 <func_809ADF20>
    12d8:	8fa5002c 	lw	a1,44(sp)
    12dc:	02002025 	move	a0,s0
    12e0:	0c000000 	jal	0 <func_809ADF20>
    12e4:	26050008 	addiu	a1,s0,8
    12e8:	3c014370 	lui	at,0x4370
    12ec:	44815000 	mtc1	at,$f10
    12f0:	00000000 	nop
    12f4:	4600503c 	c.lt.s	$f10,$f0
    12f8:	00000000 	nop
    12fc:	45030005 	bc1tl	1314 <func_809AF0DC+0x158>
    1300:	860f0260 	lh	t7,608(s0)
    1304:	860e025c 	lh	t6,604(s0)
    1308:	55c00007 	bnezl	t6,1328 <func_809AF0DC+0x16c>
    130c:	44808000 	mtc1	zero,$f16
    1310:	860f0260 	lh	t7,608(s0)
    1314:	55e00004 	bnezl	t7,1328 <func_809AF0DC+0x16c>
    1318:	44808000 	mtc1	zero,$f16
    131c:	0c000000 	jal	0 <func_809ADF20>
    1320:	02002025 	move	a0,s0
    1324:	44808000 	mtc1	zero,$f16
    1328:	c6120068 	lwc1	$f18,104(s0)
    132c:	46128032 	c.eq.s	$f16,$f18
    1330:	00000000 	nop
    1334:	4501000f 	bc1t	1374 <func_809AF0DC+0x1b8>
    1338:	00000000 	nop
    133c:	96180088 	lhu	t8,136(s0)
    1340:	33190008 	andi	t9,t8,0x8
    1344:	1320000b 	beqz	t9,1374 <func_809AF0DC+0x1b8>
    1348:	00000000 	nop
    134c:	8602007e 	lh	v0,126(s0)
    1350:	86080032 	lh	t0,50(s0)
    1354:	02002025 	move	a0,s0
    1358:	00484823 	subu	t1,v0,t0
    135c:	01225021 	addu	t2,t1,v0
    1360:	0c000000 	jal	0 <func_809ADF20>
    1364:	a60a0032 	sh	t2,50(s0)
    1368:	960b0088 	lhu	t3,136(s0)
    136c:	316cfff7 	andi	t4,t3,0xfff7
    1370:	a60c0088 	sh	t4,136(s0)
    1374:	0c000000 	jal	0 <func_809ADF20>
    1378:	26040164 	addiu	a0,s0,356
    137c:	860d0258 	lh	t5,600(s0)
    1380:	55a00007 	bnezl	t5,13a0 <func_809AF0DC+0x1e4>
    1384:	860f0260 	lh	t7,608(s0)
    1388:	860e0260 	lh	t6,608(s0)
    138c:	55c00004 	bnezl	t6,13a0 <func_809AF0DC+0x1e4>
    1390:	860f0260 	lh	t7,608(s0)
    1394:	0c000000 	jal	0 <func_809ADF20>
    1398:	02002025 	move	a0,s0
    139c:	860f0260 	lh	t7,608(s0)
    13a0:	55e00005 	bnezl	t7,13b8 <func_809AF0DC+0x1fc>
    13a4:	86020262 	lh	v0,610(s0)
    13a8:	86180032 	lh	t8,50(s0)
    13ac:	1000000a 	b	13d8 <func_809AF0DC+0x21c>
    13b0:	a61800b6 	sh	t8,182(s0)
    13b4:	86020262 	lh	v0,610(s0)
    13b8:	28411f40 	slti	at,v0,8000
    13bc:	10200003 	beqz	at,13cc <func_809AF0DC+0x210>
    13c0:	24590320 	addiu	t9,v0,800
    13c4:	a6190262 	sh	t9,610(s0)
    13c8:	86020262 	lh	v0,610(s0)
    13cc:	860800b6 	lh	t0,182(s0)
    13d0:	01024821 	addu	t1,t0,v0
    13d4:	a60900b6 	sh	t1,182(s0)
    13d8:	8fbf0024 	lw	ra,36(sp)
    13dc:	8fb00020 	lw	s0,32(sp)
    13e0:	27bd0028 	addiu	sp,sp,40
    13e4:	03e00008 	jr	ra
    13e8:	00000000 	nop

000013ec <func_809AF30C>:
    13ec:	27bdffc8 	addiu	sp,sp,-56
    13f0:	afbf0024 	sw	ra,36(sp)
    13f4:	afb00020 	sw	s0,32(sp)
    13f8:	afa5003c 	sw	a1,60(sp)
    13fc:	8caf1c44 	lw	t7,7236(a1)
    1400:	00808025 	move	s0,a0
    1404:	00001825 	move	v1,zero
    1408:	afaf0034 	sw	t7,52(sp)
    140c:	84980158 	lh	t8,344(a0)
    1410:	84860258 	lh	a2,600(a0)
    1414:	2405200a 	li	a1,8202
    1418:	44982000 	mtc1	t8,$f4
    141c:	24c8f800 	addiu	t0,a2,-2048
    1420:	14c0000a 	bnez	a2,144c <func_809AF30C+0x60>
    1424:	468020a0 	cvt.s.w	$f2,$f4
    1428:	44806000 	mtc1	zero,$f12
    142c:	c4860150 	lwc1	$f6,336(a0)
    1430:	24198000 	li	t9,-32768
    1434:	46066032 	c.eq.s	$f12,$f6
    1438:	00000000 	nop
    143c:	4503006f 	bc1tl	15fc <func_809AF30C+0x210>
    1440:	960d0088 	lhu	t5,136(s0)
    1444:	1000006c 	b	15f8 <func_809AF30C+0x20c>
    1448:	a4990258 	sh	t9,600(a0)
    144c:	a6080258 	sh	t0,600(s0)
    1450:	e7a20030 	swc1	$f2,48(sp)
    1454:	a7a3002e 	sh	v1,46(sp)
    1458:	0c000000 	jal	0 <func_809ADF20>
    145c:	02002025 	move	a0,s0
    1460:	44806000 	mtc1	zero,$f12
    1464:	c6000150 	lwc1	$f0,336(s0)
    1468:	87a3002e 	lh	v1,46(sp)
    146c:	c7a20030 	lwc1	$f2,48(sp)
    1470:	460c003c 	c.lt.s	$f0,$f12
    1474:	26040024 	addiu	a0,s0,36
    1478:	45020008 	bc1fl	149c <func_809AF30C+0xb0>
    147c:	920b0286 	lbu	t3,646(s0)
    1480:	86090158 	lh	t1,344(s0)
    1484:	34018000 	li	at,0x8000
    1488:	01215021 	addu	t2,t1,at
    148c:	448a4000 	mtc1	t2,$f8
    1490:	00000000 	nop
    1494:	468040a0 	cvt.s.w	$f2,$f8
    1498:	920b0286 	lbu	t3,646(s0)
    149c:	316c0002 	andi	t4,t3,0x2
    14a0:	51800011 	beqzl	t4,14e8 <func_809AF30C+0xfc>
    14a4:	46006032 	c.eq.s	$f12,$f0
    14a8:	8e050280 	lw	a1,640(s0)
    14ac:	e7a20030 	swc1	$f2,48(sp)
    14b0:	0c000000 	jal	0 <func_809ADF20>
    14b4:	24a50024 	addiu	a1,a1,36
    14b8:	44825000 	mtc1	v0,$f10
    14bc:	c7a20030 	lwc1	$f2,48(sp)
    14c0:	44806000 	mtc1	zero,$f12
    14c4:	46805420 	cvt.s.w	$f16,$f10
    14c8:	c6000150 	lwc1	$f0,336(s0)
    14cc:	46028481 	sub.s	$f18,$f16,$f2
    14d0:	4600910d 	trunc.w.s	$f4,$f18
    14d4:	44032000 	mfc1	v1,$f4
    14d8:	00000000 	nop
    14dc:	00031c00 	sll	v1,v1,0x10
    14e0:	00031c03 	sra	v1,v1,0x10
    14e4:	46006032 	c.eq.s	$f12,$f0
    14e8:	00000000 	nop
    14ec:	4503002e 	bc1tl	15a8 <func_809AF30C+0x1bc>
    14f0:	8fa20034 	lw	v0,52(sp)
    14f4:	86060258 	lh	a2,600(s0)
    14f8:	50c0002b 	beqzl	a2,15a8 <func_809AF30C+0x1bc>
    14fc:	8fa20034 	lw	v0,52(sp)
    1500:	960e0088 	lhu	t6,136(s0)
    1504:	00062400 	sll	a0,a2,0x10
    1508:	00042403 	sra	a0,a0,0x10
    150c:	31cf0001 	andi	t7,t6,0x1
    1510:	51e00025 	beqzl	t7,15a8 <func_809AF30C+0x1bc>
    1514:	8fa20034 	lw	v0,52(sp)
    1518:	0c000000 	jal	0 <func_809ADF20>
    151c:	a7a3002e 	sh	v1,46(sp)
    1520:	3c013f00 	lui	at,0x3f00
    1524:	44814000 	mtc1	at,$f8
    1528:	c6060150 	lwc1	$f6,336(s0)
    152c:	3c014220 	lui	at,0x4220
    1530:	44819000 	mtc1	at,$f18
    1534:	46083282 	mul.s	$f10,$f6,$f8
    1538:	2419000a 	li	t9,10
    153c:	afb90010 	sw	t9,16(sp)
    1540:	8fa4003c 	lw	a0,60(sp)
    1544:	02002825 	move	a1,s0
    1548:	24060014 	li	a2,20
    154c:	460a0402 	mul.s	$f16,$f0,$f10
    1550:	46128100 	add.s	$f4,$f16,$f18
    1554:	4600218d 	trunc.w.s	$f6,$f4
    1558:	44073000 	mfc1	a3,$f6
    155c:	00000000 	nop
    1560:	00073c00 	sll	a3,a3,0x10
    1564:	0c000000 	jal	0 <func_809ADF20>
    1568:	00073c03 	sra	a3,a3,0x10
    156c:	44806000 	mtc1	zero,$f12
    1570:	1040000c 	beqz	v0,15a4 <func_809AF30C+0x1b8>
    1574:	87a3002e 	lh	v1,46(sp)
    1578:	92080286 	lbu	t0,646(s0)
    157c:	31090002 	andi	t1,t0,0x2
    1580:	51200012 	beqzl	t1,15cc <func_809AF30C+0x1e0>
    1584:	860c0158 	lh	t4,344(s0)
    1588:	04600003 	bltz	v1,1598 <func_809AF30C+0x1ac>
    158c:	00031023 	negu	v0,v1
    1590:	10000001 	b	1598 <func_809AF30C+0x1ac>
    1594:	00601025 	move	v0,v1
    1598:	28412001 	slti	at,v0,8193
    159c:	5020000b 	beqzl	at,15cc <func_809AF30C+0x1e0>
    15a0:	860c0158 	lh	t4,344(s0)
    15a4:	8fa20034 	lw	v0,52(sp)
    15a8:	a6000258 	sh	zero,600(s0)
    15ac:	2401feae 	li	at,-338
    15b0:	8c4a0680 	lw	t2,1664(v0)
    15b4:	e44c0068 	swc1	$f12,104(v0)
    15b8:	01415824 	and	t3,t2,at
    15bc:	ac4b0680 	sw	t3,1664(v0)
    15c0:	e60c0150 	swc1	$f12,336(s0)
    15c4:	e60c0154 	swc1	$f12,340(s0)
    15c8:	860c0158 	lh	t4,344(s0)
    15cc:	86040258 	lh	a0,600(s0)
    15d0:	0c000000 	jal	0 <func_809ADF20>
    15d4:	a60c0032 	sh	t4,50(s0)
    15d8:	3c013f00 	lui	at,0x3f00
    15dc:	44815000 	mtc1	at,$f10
    15e0:	c6080150 	lwc1	$f8,336(s0)
    15e4:	44806000 	mtc1	zero,$f12
    15e8:	460a4402 	mul.s	$f16,$f8,$f10
    15ec:	00000000 	nop
    15f0:	46100482 	mul.s	$f18,$f0,$f16
    15f4:	e6120068 	swc1	$f18,104(s0)
    15f8:	960d0088 	lhu	t5,136(s0)
    15fc:	02002025 	move	a0,s0
    1600:	31ae0002 	andi	t6,t5,0x2
    1604:	51c00006 	beqzl	t6,1620 <func_809AF30C+0x234>
    1608:	e60c0154 	swc1	$f12,340(s0)
    160c:	0c000000 	jal	0 <func_809ADF20>
    1610:	24052835 	li	a1,10293
    1614:	44806000 	mtc1	zero,$f12
    1618:	00000000 	nop
    161c:	e60c0154 	swc1	$f12,340(s0)
    1620:	e60c0150 	swc1	$f12,336(s0)
    1624:	8fbf0024 	lw	ra,36(sp)
    1628:	8fb00020 	lw	s0,32(sp)
    162c:	27bd0038 	addiu	sp,sp,56
    1630:	03e00008 	jr	ra
    1634:	00000000 	nop

00001638 <func_809AF558>:
    1638:	27bdffd0 	addiu	sp,sp,-48
    163c:	afb00028 	sw	s0,40(sp)
    1640:	00808025 	move	s0,a0
    1644:	afbf002c 	sw	ra,44(sp)
    1648:	3c040600 	lui	a0,0x600
    164c:	afa50034 	sw	a1,52(sp)
    1650:	0c000000 	jal	0 <func_809ADF20>
    1654:	24845b3c 	addiu	a0,a0,23356
    1658:	44822000 	mtc1	v0,$f4
    165c:	44800000 	mtc1	zero,$f0
    1660:	3c050600 	lui	a1,0x600
    1664:	468021a0 	cvt.s.w	$f6,$f4
    1668:	240e0002 	li	t6,2
    166c:	44070000 	mfc1	a3,$f0
    1670:	afae0014 	sw	t6,20(sp)
    1674:	24a55b3c 	addiu	a1,a1,23356
    1678:	26040164 	addiu	a0,s0,356
    167c:	e7a60010 	swc1	$f6,16(sp)
    1680:	3c063f80 	lui	a2,0x3f80
    1684:	0c000000 	jal	0 <func_809ADF20>
    1688:	e7a00018 	swc1	$f0,24(sp)
    168c:	860f008a 	lh	t7,138(s0)
    1690:	02002025 	move	a0,s0
    1694:	3c06c0c0 	lui	a2,0xc0c0
    1698:	a60f0032 	sh	t7,50(s0)
    169c:	86070032 	lh	a3,50(s0)
    16a0:	0c000000 	jal	0 <func_809ADF20>
    16a4:	8fa50034 	lw	a1,52(sp)
    16a8:	10400005 	beqz	v0,16c0 <func_809AF558+0x88>
    16ac:	02002025 	move	a0,s0
    16b0:	3c01c0c0 	lui	at,0xc0c0
    16b4:	44814000 	mtc1	at,$f8
    16b8:	00000000 	nop
    16bc:	e6080068 	swc1	$f8,104(s0)
    16c0:	24180064 	li	t8,100
    16c4:	afb80010 	sw	t8,16(sp)
    16c8:	00002825 	move	a1,zero
    16cc:	24060078 	li	a2,120
    16d0:	0c000000 	jal	0 <func_809ADF20>
    16d4:	00003825 	move	a3,zero
    16d8:	92190267 	lbu	t9,615(s0)
    16dc:	2401000d 	li	at,13
    16e0:	24090006 	li	t1,6
    16e4:	17210003 	bne	t9,at,16f4 <func_809AF558+0xbc>
    16e8:	02002025 	move	a0,s0
    16ec:	24080030 	li	t0,48
    16f0:	a608025e 	sh	t0,606(s0)
    16f4:	ae0901a8 	sw	t1,424(s0)
    16f8:	0c000000 	jal	0 <func_809ADF20>
    16fc:	2405389e 	li	a1,14494
    1700:	3c050000 	lui	a1,0x0
    1704:	24a50000 	addiu	a1,a1,0
    1708:	0c000000 	jal	0 <func_809ADF20>
    170c:	02002025 	move	a0,s0
    1710:	8fbf002c 	lw	ra,44(sp)
    1714:	8fb00028 	lw	s0,40(sp)
    1718:	27bd0030 	addiu	sp,sp,48
    171c:	03e00008 	jr	ra
    1720:	00000000 	nop

00001724 <func_809AF644>:
    1724:	27bdffd8 	addiu	sp,sp,-40
    1728:	afb00020 	sw	s0,32(sp)
    172c:	00808025 	move	s0,a0
    1730:	afbf0024 	sw	ra,36(sp)
    1734:	afa5002c 	sw	a1,44(sp)
    1738:	86050032 	lh	a1,50(s0)
    173c:	afa00010 	sw	zero,16(sp)
    1740:	248400b6 	addiu	a0,a0,182
    1744:	24060001 	li	a2,1
    1748:	0c000000 	jal	0 <func_809ADF20>
    174c:	24070fa0 	li	a3,4000
    1750:	44801000 	mtc1	zero,$f2
    1754:	c6000068 	lwc1	$f0,104(s0)
    1758:	3c013f00 	lui	at,0x3f00
    175c:	02002025 	move	a0,s0
    1760:	4602003c 	c.lt.s	$f0,$f2
    1764:	3c06c110 	lui	a2,0xc110
    1768:	45020006 	bc1fl	1784 <func_809AF644+0x60>
    176c:	c6080060 	lwc1	$f8,96(s0)
    1770:	44812000 	mtc1	at,$f4
    1774:	00000000 	nop
    1778:	46040180 	add.s	$f6,$f0,$f4
    177c:	e6060068 	swc1	$f6,104(s0)
    1780:	c6080060 	lwc1	$f8,96(s0)
    1784:	8fa5002c 	lw	a1,44(sp)
    1788:	4602403e 	c.le.s	$f8,$f2
    178c:	00000000 	nop
    1790:	45020008 	bc1fl	17b4 <func_809AF644+0x90>
    1794:	920e0114 	lbu	t6,276(s0)
    1798:	0c000000 	jal	0 <func_809ADF20>
    179c:	86070032 	lh	a3,50(s0)
    17a0:	44801000 	mtc1	zero,$f2
    17a4:	54400003 	bnezl	v0,17b4 <func_809AF644+0x90>
    17a8:	920e0114 	lbu	t6,276(s0)
    17ac:	e6020068 	swc1	$f2,104(s0)
    17b0:	920e0114 	lbu	t6,276(s0)
    17b4:	55c0000c 	bnezl	t6,17e8 <func_809AF644+0xc4>
    17b8:	8fbf0024 	lw	ra,36(sp)
    17bc:	920f00af 	lbu	t7,175(s0)
    17c0:	02002025 	move	a0,s0
    17c4:	11e00005 	beqz	t7,17dc <func_809AF644+0xb8>
    17c8:	00000000 	nop
    17cc:	0c000000 	jal	0 <func_809ADF20>
    17d0:	02002025 	move	a0,s0
    17d4:	10000004 	b	17e8 <func_809AF644+0xc4>
    17d8:	8fbf0024 	lw	ra,36(sp)
    17dc:	0c000000 	jal	0 <func_809ADF20>
    17e0:	8fa5002c 	lw	a1,44(sp)
    17e4:	8fbf0024 	lw	ra,36(sp)
    17e8:	8fb00020 	lw	s0,32(sp)
    17ec:	27bd0028 	addiu	sp,sp,40
    17f0:	03e00008 	jr	ra
    17f4:	00000000 	nop

000017f8 <func_809AF718>:
    17f8:	27bdffe0 	addiu	sp,sp,-32
    17fc:	afbf001c 	sw	ra,28(sp)
    1800:	afb00018 	sw	s0,24(sp)
    1804:	44801000 	mtc1	zero,$f2
    1808:	c4800068 	lwc1	$f0,104(a0)
    180c:	00808025 	move	s0,a0
    1810:	3c013f00 	lui	at,0x3f00
    1814:	4602003c 	c.lt.s	$f0,$f2
    1818:	00000000 	nop
    181c:	45020006 	bc1fl	1838 <func_809AF718+0x40>
    1820:	c6080060 	lwc1	$f8,96(s0)
    1824:	44812000 	mtc1	at,$f4
    1828:	00000000 	nop
    182c:	46040180 	add.s	$f6,$f0,$f4
    1830:	e4860068 	swc1	$f6,104(a0)
    1834:	c6080060 	lwc1	$f8,96(s0)
    1838:	3c013fc0 	lui	at,0x3fc0
    183c:	4602403e 	c.le.s	$f8,$f2
    1840:	00000000 	nop
    1844:	4500000d 	bc1f	187c <func_809AF718+0x84>
    1848:	00000000 	nop
    184c:	c60a0068 	lwc1	$f10,104(s0)
    1850:	44818000 	mtc1	at,$f16
    1854:	02002025 	move	a0,s0
    1858:	86070032 	lh	a3,50(s0)
    185c:	46105482 	mul.s	$f18,$f10,$f16
    1860:	44069000 	mfc1	a2,$f18
    1864:	0c000000 	jal	0 <func_809ADF20>
    1868:	00000000 	nop
    186c:	44801000 	mtc1	zero,$f2
    1870:	14400002 	bnez	v0,187c <func_809AF718+0x84>
    1874:	00000000 	nop
    1878:	e6020068 	swc1	$f2,104(s0)
    187c:	0c000000 	jal	0 <func_809ADF20>
    1880:	26040164 	addiu	a0,s0,356
    1884:	44801000 	mtc1	zero,$f2
    1888:	10400003 	beqz	v0,1898 <func_809AF718+0xa0>
    188c:	02002025 	move	a0,s0
    1890:	0c000000 	jal	0 <func_809ADF20>
    1894:	e6020068 	swc1	$f2,104(s0)
    1898:	8fbf001c 	lw	ra,28(sp)
    189c:	8fb00018 	lw	s0,24(sp)
    18a0:	27bd0020 	addiu	sp,sp,32
    18a4:	03e00008 	jr	ra
    18a8:	00000000 	nop

000018ac <func_809AF7CC>:
    18ac:	27bdffc0 	addiu	sp,sp,-64
    18b0:	afb00020 	sw	s0,32(sp)
    18b4:	00808025 	move	s0,a0
    18b8:	afa50044 	sw	a1,68(sp)
    18bc:	afbf0024 	sw	ra,36(sp)
    18c0:	26050358 	addiu	a1,s0,856
    18c4:	3c040000 	lui	a0,0x0
    18c8:	24840000 	addiu	a0,a0,0
    18cc:	0c000000 	jal	0 <func_809ADF20>
    18d0:	afa50038 	sw	a1,56(sp)
    18d4:	3c040000 	lui	a0,0x0
    18d8:	2605034c 	addiu	a1,s0,844
    18dc:	afa50034 	sw	a1,52(sp)
    18e0:	0c000000 	jal	0 <func_809ADF20>
    18e4:	24840000 	addiu	a0,a0,0
    18e8:	3c040000 	lui	a0,0x0
    18ec:	26050370 	addiu	a1,s0,880
    18f0:	afa5002c 	sw	a1,44(sp)
    18f4:	0c000000 	jal	0 <func_809ADF20>
    18f8:	24840000 	addiu	a0,a0,0
    18fc:	3c040000 	lui	a0,0x0
    1900:	26070364 	addiu	a3,s0,868
    1904:	00e02825 	move	a1,a3
    1908:	afa70030 	sw	a3,48(sp)
    190c:	0c000000 	jal	0 <func_809ADF20>
    1910:	24840000 	addiu	a0,a0,0
    1914:	8fae002c 	lw	t6,44(sp)
    1918:	8fa70030 	lw	a3,48(sp)
    191c:	2604030c 	addiu	a0,s0,780
    1920:	8fa50034 	lw	a1,52(sp)
    1924:	8fa60038 	lw	a2,56(sp)
    1928:	0c000000 	jal	0 <func_809ADF20>
    192c:	afae0010 	sw	t6,16(sp)
    1930:	8fbf0024 	lw	ra,36(sp)
    1934:	8fb00020 	lw	s0,32(sp)
    1938:	27bd0040 	addiu	sp,sp,64
    193c:	03e00008 	jr	ra
    1940:	00000000 	nop

00001944 <func_809AF864>:
    1944:	27bdffd0 	addiu	sp,sp,-48
    1948:	afbf0014 	sw	ra,20(sp)
    194c:	afa50034 	sw	a1,52(sp)
    1950:	848e0260 	lh	t6,608(a0)
    1954:	00803825 	move	a3,a0
    1958:	55c0005d 	bnezl	t6,1ad0 <func_809AF864+0x18c>
    195c:	8fbf0014 	lw	ra,20(sp)
    1960:	908202d1 	lbu	v0,721(a0)
    1964:	304f0080 	andi	t7,v0,0x80
    1968:	11e0000c 	beqz	t7,199c <func_809AF864+0x58>
    196c:	3058ff7d 	andi	t8,v0,0xff7d
    1970:	90990285 	lbu	t9,645(a0)
    1974:	8c8901a8 	lw	t1,424(a0)
    1978:	a09802d1 	sb	t8,721(a0)
    197c:	3328fffd 	andi	t0,t9,0xfffd
    1980:	29210005 	slti	at,t1,5
    1984:	14200051 	bnez	at,1acc <func_809AF864+0x188>
    1988:	a0880285 	sb	t0,645(a0)
    198c:	0c000000 	jal	0 <func_809ADF20>
    1990:	8fa50034 	lw	a1,52(sp)
    1994:	1000004e 	b	1ad0 <func_809AF864+0x18c>
    1998:	8fbf0014 	lw	ra,20(sp)
    199c:	90e20285 	lbu	v0,645(a3)
    19a0:	304a0002 	andi	t2,v0,0x2
    19a4:	5140004a 	beqzl	t2,1ad0 <func_809AF864+0x18c>
    19a8:	8fbf0014 	lw	ra,20(sp)
    19ac:	8ceb01a8 	lw	t3,424(a3)
    19b0:	29610005 	slti	at,t3,5
    19b4:	54200046 	bnezl	at,1ad0 <func_809AF864+0x18c>
    19b8:	8fbf0014 	lw	ra,20(sp)
    19bc:	90e300b1 	lbu	v1,177(a3)
    19c0:	304cfffd 	andi	t4,v0,0xfffd
    19c4:	2401000e 	li	at,14
    19c8:	10610040 	beq	v1,at,1acc <func_809AF864+0x188>
    19cc:	a0ec0285 	sb	t4,645(a3)
    19d0:	a4e00264 	sh	zero,612(a3)
    19d4:	a0e30267 	sb	v1,615(a3)
    19d8:	afa70030 	sw	a3,48(sp)
    19dc:	00e02025 	move	a0,a3
    19e0:	24e5028c 	addiu	a1,a3,652
    19e4:	0c000000 	jal	0 <func_809ADF20>
    19e8:	00003025 	move	a2,zero
    19ec:	8fa70030 	lw	a3,48(sp)
    19f0:	24010001 	li	at,1
    19f4:	8fa60034 	lw	a2,52(sp)
    19f8:	90e200b1 	lbu	v0,177(a3)
    19fc:	24030006 	li	v1,6
    1a00:	50410006 	beql	v0,at,1a1c <func_809AF864+0xd8>
    1a04:	8ced01a8 	lw	t5,424(a3)
    1a08:	10620003 	beq	v1,v0,1a18 <func_809AF864+0xd4>
    1a0c:	2401000d 	li	at,13
    1a10:	54410021 	bnel	v0,at,1a98 <func_809AF864+0x154>
    1a14:	2401000f 	li	at,15
    1a18:	8ced01a8 	lw	t5,424(a3)
    1a1c:	24030006 	li	v1,6
    1a20:	00e02025 	move	a0,a3
    1a24:	106d0009 	beq	v1,t5,1a4c <func_809AF864+0x108>
    1a28:	00c02825 	move	a1,a2
    1a2c:	0c000000 	jal	0 <func_809ADF20>
    1a30:	afa70030 	sw	a3,48(sp)
    1a34:	8fa70030 	lw	a3,48(sp)
    1a38:	90ee00b0 	lbu	t6,176(a3)
    1a3c:	51c00024 	beqzl	t6,1ad0 <func_809AF864+0x18c>
    1a40:	8fbf0014 	lw	ra,20(sp)
    1a44:	10000021 	b	1acc <func_809AF864+0x188>
    1a48:	a0e000af 	sb	zero,175(a3)
    1a4c:	54620020 	bnel	v1,v0,1ad0 <func_809AF864+0x18c>
    1a50:	8fbf0014 	lw	ra,20(sp)
    1a54:	8cf80024 	lw	t8,36(a3)
    1a58:	27a50020 	addiu	a1,sp,32
    1a5c:	3c014248 	lui	at,0x4248
    1a60:	acb80000 	sw	t8,0(a1)
    1a64:	8cef0028 	lw	t7,40(a3)
    1a68:	44813000 	mtc1	at,$f6
    1a6c:	00c02025 	move	a0,a2
    1a70:	acaf0004 	sw	t7,4(a1)
    1a74:	8cf8002c 	lw	t8,44(a3)
    1a78:	acb80008 	sw	t8,8(a1)
    1a7c:	c7a40024 	lwc1	$f4,36(sp)
    1a80:	46062200 	add.s	$f8,$f4,$f6
    1a84:	0c000000 	jal	0 <func_809ADF20>
    1a88:	e7a80024 	swc1	$f8,36(sp)
    1a8c:	10000010 	b	1ad0 <func_809AF864+0x18c>
    1a90:	8fbf0014 	lw	ra,20(sp)
    1a94:	2401000f 	li	at,15
    1a98:	10410005 	beq	v0,at,1ab0 <func_809AF864+0x16c>
    1a9c:	00e02025 	move	a0,a3
    1aa0:	8cf901a8 	lw	t9,424(a3)
    1aa4:	00c02825 	move	a1,a2
    1aa8:	14790006 	bne	v1,t9,1ac4 <func_809AF864+0x180>
    1aac:	00000000 	nop
    1ab0:	a0e000af 	sb	zero,175(a3)
    1ab4:	0c000000 	jal	0 <func_809ADF20>
    1ab8:	00c02825 	move	a1,a2
    1abc:	10000004 	b	1ad0 <func_809AF864+0x18c>
    1ac0:	8fbf0014 	lw	ra,20(sp)
    1ac4:	0c000000 	jal	0 <func_809ADF20>
    1ac8:	00e02025 	move	a0,a3
    1acc:	8fbf0014 	lw	ra,20(sp)
    1ad0:	27bd0030 	addiu	sp,sp,48
    1ad4:	03e00008 	jr	ra
    1ad8:	00000000 	nop

00001adc <EnAm_Update>:
    1adc:	27bdff78 	addiu	sp,sp,-136
    1ae0:	afbf004c 	sw	ra,76(sp)
    1ae4:	afb30048 	sw	s3,72(sp)
    1ae8:	afb20044 	sw	s2,68(sp)
    1aec:	afb10040 	sw	s1,64(sp)
    1af0:	afb0003c 	sw	s0,60(sp)
    1af4:	f7b60030 	sdc1	$f22,48(sp)
    1af8:	f7b40028 	sdc1	$f20,40(sp)
    1afc:	848e001c 	lh	t6,28(a0)
    1b00:	00809025 	move	s2,a0
    1b04:	00a09825 	move	s3,a1
    1b08:	51c00004 	beqzl	t6,1b1c <EnAm_Update+0x40>
    1b0c:	924f00b1 	lbu	t7,177(s2)
    1b10:	0c000000 	jal	0 <func_809ADF20>
    1b14:	00000000 	nop
    1b18:	924f00b1 	lbu	t7,177(s2)
    1b1c:	2401000e 	li	at,14
    1b20:	51e10085 	beql	t7,at,1d38 <EnAm_Update+0x25c>
    1b24:	26510274 	addiu	s1,s2,628
    1b28:	8642025c 	lh	v0,604(s2)
    1b2c:	10400002 	beqz	v0,1b38 <EnAm_Update+0x5c>
    1b30:	2458ffff 	addiu	t8,v0,-1
    1b34:	a658025c 	sh	t8,604(s2)
    1b38:	8e590254 	lw	t9,596(s2)
    1b3c:	02402025 	move	a0,s2
    1b40:	02602825 	move	a1,s3
    1b44:	0320f809 	jalr	t9
    1b48:	00000000 	nop
    1b4c:	86420260 	lh	v0,608(s2)
    1b50:	1040006c 	beqz	v0,1d04 <EnAm_Update+0x228>
    1b54:	2448ffff 	addiu	t0,v0,-1
    1b58:	a6480260 	sh	t0,608(s2)
    1b5c:	86420260 	lh	v0,608(s2)
    1b60:	3c090001 	lui	t1,0x1
    1b64:	01334821 	addu	t1,t1,s3
    1b68:	1440005e 	bnez	v0,1ce4 <EnAm_Update+0x208>
    1b6c:	30590003 	andi	t9,v0,0x3
    1b70:	8d291de4 	lw	t1,7652(t1)
    1b74:	3c014f80 	lui	at,0x4f80
    1b78:	02402025 	move	a0,s2
    1b7c:	00095080 	sll	t2,t1,0x2
    1b80:	01495021 	addu	t2,t2,t1
    1b84:	000a5040 	sll	t2,t2,0x1
    1b88:	448a2000 	mtc1	t2,$f4
    1b8c:	05410004 	bgez	t2,1ba0 <EnAm_Update+0xc4>
    1b90:	46802520 	cvt.s.w	$f20,$f4
    1b94:	44813000 	mtc1	at,$f6
    1b98:	00000000 	nop
    1b9c:	4606a500 	add.s	$f20,$f20,$f6
    1ba0:	0c000000 	jal	0 <func_809ADF20>
    1ba4:	02602825 	move	a1,s3
    1ba8:	c6480028 	lwc1	$f8,40(s2)
    1bac:	8e470024 	lw	a3,36(s2)
    1bb0:	240b0002 	li	t3,2
    1bb4:	e7a80010 	swc1	$f8,16(sp)
    1bb8:	c64a002c 	lwc1	$f10,44(s2)
    1bbc:	afa00024 	sw	zero,36(sp)
    1bc0:	afab0020 	sw	t3,32(sp)
    1bc4:	afa0001c 	sw	zero,28(sp)
    1bc8:	afa00018 	sw	zero,24(sp)
    1bcc:	26641c24 	addiu	a0,s3,7204
    1bd0:	02602825 	move	a1,s3
    1bd4:	24060010 	li	a2,16
    1bd8:	0c000000 	jal	0 <func_809ADF20>
    1bdc:	e7aa0014 	swc1	$f10,20(sp)
    1be0:	10400002 	beqz	v0,1bec <EnAm_Update+0x110>
    1be4:	02402025 	move	a0,s2
    1be8:	a44001f8 	sh	zero,504(v0)
    1bec:	0c000000 	jal	0 <func_809ADF20>
    1bf0:	24053846 	li	a1,14406
    1bf4:	02602025 	move	a0,s3
    1bf8:	02402825 	move	a1,s2
    1bfc:	26460024 	addiu	a2,s2,36
    1c00:	0c000000 	jal	0 <func_809ADF20>
    1c04:	240700a0 	li	a3,160
    1c08:	3c0140e0 	lui	at,0x40e0
    1c0c:	3c110000 	lui	s1,0x0
    1c10:	4481b000 	mtc1	at,$f22
    1c14:	26310000 	addiu	s1,s1,0
    1c18:	24100009 	li	s0,9
    1c1c:	0c000000 	jal	0 <func_809ADF20>
    1c20:	4600a306 	mov.s	$f12,$f20
    1c24:	46160402 	mul.s	$f16,$f0,$f22
    1c28:	c6520024 	lwc1	$f18,36(s2)
    1c2c:	3c014120 	lui	at,0x4120
    1c30:	44816000 	mtc1	at,$f12
    1c34:	46128100 	add.s	$f4,$f16,$f18
    1c38:	0c000000 	jal	0 <func_809ADF20>
    1c3c:	e7a40070 	swc1	$f4,112(sp)
    1c40:	3c014220 	lui	at,0x4220
    1c44:	44814000 	mtc1	at,$f8
    1c48:	3c0140c0 	lui	at,0x40c0
    1c4c:	44818000 	mtc1	at,$f16
    1c50:	c6460028 	lwc1	$f6,40(s2)
    1c54:	4600a306 	mov.s	$f12,$f20
    1c58:	46100482 	mul.s	$f18,$f0,$f16
    1c5c:	46083280 	add.s	$f10,$f6,$f8
    1c60:	460a9100 	add.s	$f4,$f18,$f10
    1c64:	0c000000 	jal	0 <func_809ADF20>
    1c68:	e7a40074 	swc1	$f4,116(sp)
    1c6c:	46160182 	mul.s	$f6,$f0,$f22
    1c70:	c648002c 	lwc1	$f8,44(s2)
    1c74:	3c0c0000 	lui	t4,0x0
    1c78:	3c0d0000 	lui	t5,0x0
    1c7c:	25ad0000 	addiu	t5,t5,0
    1c80:	258c0000 	addiu	t4,t4,0
    1c84:	240e00c8 	li	t6,200
    1c88:	46083400 	add.s	$f16,$f6,$f8
    1c8c:	240f002d 	li	t7,45
    1c90:	2418000c 	li	t8,12
    1c94:	afb80020 	sw	t8,32(sp)
    1c98:	e7b00078 	swc1	$f16,120(sp)
    1c9c:	afaf001c 	sw	t7,28(sp)
    1ca0:	afae0018 	sw	t6,24(sp)
    1ca4:	afac0010 	sw	t4,16(sp)
    1ca8:	afad0014 	sw	t5,20(sp)
    1cac:	02602025 	move	a0,s3
    1cb0:	27a50070 	addiu	a1,sp,112
    1cb4:	02203025 	move	a2,s1
    1cb8:	0c000000 	jal	0 <func_809ADF20>
    1cbc:	02203825 	move	a3,s1
    1cc0:	3c014270 	lui	at,0x4270
    1cc4:	44819000 	mtc1	at,$f18
    1cc8:	2610ffff 	addiu	s0,s0,-1
    1ccc:	0601ffd3 	bgez	s0,1c1c <EnAm_Update+0x140>
    1cd0:	4612a500 	add.s	$f20,$f20,$f18
    1cd4:	0c000000 	jal	0 <func_809ADF20>
    1cd8:	02402025 	move	a0,s2
    1cdc:	1000005f 	b	1e5c <EnAm_Update+0x380>
    1ce0:	8fbf004c 	lw	ra,76(sp)
    1ce4:	17200007 	bnez	t9,1d04 <EnAm_Update+0x228>
    1ce8:	02402025 	move	a0,s2
    1cec:	24080004 	li	t0,4
    1cf0:	afa80010 	sw	t0,16(sp)
    1cf4:	24054000 	li	a1,16384
    1cf8:	240600ff 	li	a2,255
    1cfc:	0c000000 	jal	0 <func_809ADF20>
    1d00:	00003825 	move	a3,zero
    1d04:	0c000000 	jal	0 <func_809ADF20>
    1d08:	02402025 	move	a0,s2
    1d0c:	3c0142a0 	lui	at,0x42a0
    1d10:	44815000 	mtc1	at,$f10
    1d14:	2409001d 	li	t1,29
    1d18:	afa90014 	sw	t1,20(sp)
    1d1c:	02602025 	move	a0,s3
    1d20:	02402825 	move	a1,s2
    1d24:	3c0641a0 	lui	a2,0x41a0
    1d28:	3c0741e0 	lui	a3,0x41e0
    1d2c:	0c000000 	jal	0 <func_809ADF20>
    1d30:	e7aa0010 	swc1	$f10,16(sp)
    1d34:	26510274 	addiu	s1,s2,628
    1d38:	02202825 	move	a1,s1
    1d3c:	0c000000 	jal	0 <func_809ADF20>
    1d40:	02402025 	move	a0,s2
    1d44:	265002c0 	addiu	s0,s2,704
    1d48:	02002825 	move	a1,s0
    1d4c:	0c000000 	jal	0 <func_809ADF20>
    1d50:	02402025 	move	a0,s2
    1d54:	3c010001 	lui	at,0x1
    1d58:	34211e60 	ori	at,at,0x1e60
    1d5c:	02612821 	addu	a1,s3,at
    1d60:	afa5005c 	sw	a1,92(sp)
    1d64:	02602025 	move	a0,s3
    1d68:	0c000000 	jal	0 <func_809ADF20>
    1d6c:	02203025 	move	a2,s1
    1d70:	864a001c 	lh	t2,28(s2)
    1d74:	3c010000 	lui	at,0x0
    1d78:	02602025 	move	a0,s3
    1d7c:	11400034 	beqz	t2,1e50 <EnAm_Update+0x374>
    1d80:	8fa5005c 	lw	a1,92(sp)
    1d84:	c6440050 	lwc1	$f4,80(s2)
    1d88:	c4260000 	lwc1	$f6,0(at)
    1d8c:	02402025 	move	a0,s2
    1d90:	46062202 	mul.s	$f8,$f4,$f6
    1d94:	44054000 	mfc1	a1,$f8
    1d98:	0c000000 	jal	0 <func_809ADF20>
    1d9c:	00000000 	nop
    1da0:	924b0114 	lbu	t3,276(s2)
    1da4:	02602025 	move	a0,s3
    1da8:	8fa5005c 	lw	a1,92(sp)
    1dac:	55600004 	bnezl	t3,1dc0 <EnAm_Update+0x2e4>
    1db0:	02602025 	move	a0,s3
    1db4:	0c000000 	jal	0 <func_809ADF20>
    1db8:	02003025 	move	a2,s0
    1dbc:	02602025 	move	a0,s3
    1dc0:	8fa5005c 	lw	a1,92(sp)
    1dc4:	0c000000 	jal	0 <func_809ADF20>
    1dc8:	02203025 	move	a2,s1
    1dcc:	8e4c01a8 	lw	t4,424(s2)
    1dd0:	29810004 	slti	at,t4,4
    1dd4:	54200021 	bnezl	at,1e5c <EnAm_Update+0x380>
    1dd8:	8fbf004c 	lw	ra,76(sp)
    1ddc:	864d0264 	lh	t5,612(s2)
    1de0:	59a0001e 	blezl	t5,1e5c <EnAm_Update+0x380>
    1de4:	8fbf004c 	lw	ra,76(sp)
    1de8:	9242031c 	lbu	v0,796(s2)
    1dec:	02402025 	move	a0,s2
    1df0:	02602825 	move	a1,s3
    1df4:	304e0004 	andi	t6,v0,0x4
    1df8:	15c00010 	bnez	t6,1e3c <EnAm_Update+0x360>
    1dfc:	3059fff9 	andi	t9,v0,0xfff9
    1e00:	304f0002 	andi	t7,v0,0x2
    1e04:	51e00008 	beqzl	t7,1e28 <EnAm_Update+0x34c>
    1e08:	02602025 	move	a0,s3
    1e0c:	8e641c44 	lw	a0,7236(s3)
    1e10:	8e580310 	lw	t8,784(s2)
    1e14:	54980004 	bnel	a0,t8,1e28 <EnAm_Update+0x34c>
    1e18:	02602025 	move	a0,s3
    1e1c:	0c000000 	jal	0 <func_809ADF20>
    1e20:	2405083e 	li	a1,2110
    1e24:	02602025 	move	a0,s3
    1e28:	8fa5005c 	lw	a1,92(sp)
    1e2c:	0c000000 	jal	0 <func_809ADF20>
    1e30:	2646030c 	addiu	a2,s2,780
    1e34:	10000009 	b	1e5c <EnAm_Update+0x380>
    1e38:	8fbf004c 	lw	ra,76(sp)
    1e3c:	a259031c 	sb	t9,796(s2)
    1e40:	0c000000 	jal	0 <func_809ADF20>
    1e44:	ae400310 	sw	zero,784(s2)
    1e48:	10000004 	b	1e5c <EnAm_Update+0x380>
    1e4c:	8fbf004c 	lw	ra,76(sp)
    1e50:	0c000000 	jal	0 <func_809ADF20>
    1e54:	02003025 	move	a2,s0
    1e58:	8fbf004c 	lw	ra,76(sp)
    1e5c:	d7b40028 	ldc1	$f20,40(sp)
    1e60:	d7b60030 	ldc1	$f22,48(sp)
    1e64:	8fb0003c 	lw	s0,60(sp)
    1e68:	8fb10040 	lw	s1,64(sp)
    1e6c:	8fb20044 	lw	s2,68(sp)
    1e70:	8fb30048 	lw	s3,72(sp)
    1e74:	03e00008 	jr	ra
    1e78:	27bd0088 	addiu	sp,sp,136

00001e7c <func_809AFD9C>:
    1e7c:	27bdffe8 	addiu	sp,sp,-24
    1e80:	afa60020 	sw	a2,32(sp)
    1e84:	24010001 	li	at,1
    1e88:	00803025 	move	a2,a0
    1e8c:	afbf0014 	sw	ra,20(sp)
    1e90:	afa40018 	sw	a0,24(sp)
    1e94:	14a10007 	bne	a1,at,1eb4 <func_809AFD9C+0x38>
    1e98:	afa70024 	sw	a3,36(sp)
    1e9c:	8fa40028 	lw	a0,40(sp)
    1ea0:	848e0264 	lh	t6,612(a0)
    1ea4:	51c00004 	beqzl	t6,1eb8 <func_809AFD9C+0x3c>
    1ea8:	8fbf0014 	lw	ra,20(sp)
    1eac:	0c000000 	jal	0 <func_809ADF20>
    1eb0:	00c02825 	move	a1,a2
    1eb4:	8fbf0014 	lw	ra,20(sp)
    1eb8:	27bd0018 	addiu	sp,sp,24
    1ebc:	03e00008 	jr	ra
    1ec0:	00000000 	nop

00001ec4 <EnAm_Draw>:
    1ec4:	27bdff88 	addiu	sp,sp,-120
    1ec8:	afb10038 	sw	s1,56(sp)
    1ecc:	00a08825 	move	s1,a1
    1ed0:	afbf003c 	sw	ra,60(sp)
    1ed4:	afb00034 	sw	s0,52(sp)
    1ed8:	8ca50000 	lw	a1,0(a1)
    1edc:	00808025 	move	s0,a0
    1ee0:	3c060000 	lui	a2,0x0
    1ee4:	24c60000 	addiu	a2,a2,0
    1ee8:	27a40050 	addiu	a0,sp,80
    1eec:	2407062c 	li	a3,1580
    1ef0:	0c000000 	jal	0 <func_809ADF20>
    1ef4:	afa50060 	sw	a1,96(sp)
    1ef8:	0c000000 	jal	0 <func_809ADF20>
    1efc:	8e240000 	lw	a0,0(s1)
    1f00:	8fa40060 	lw	a0,96(sp)
    1f04:	3c0ffb00 	lui	t7,0xfb00
    1f08:	3c090000 	lui	t1,0x0
    1f0c:	8c8302c0 	lw	v1,704(a0)
    1f10:	25290000 	addiu	t1,t1,0
    1f14:	00003825 	move	a3,zero
    1f18:	246e0008 	addiu	t6,v1,8
    1f1c:	ac8e02c0 	sw	t6,704(a0)
    1f20:	ac6f0000 	sw	t7,0(v1)
    1f24:	92190266 	lbu	t9,614(s0)
    1f28:	02202025 	move	a0,s1
    1f2c:	ac790004 	sw	t9,4(v1)
    1f30:	8e060184 	lw	a2,388(s0)
    1f34:	8e050168 	lw	a1,360(s0)
    1f38:	afb00014 	sw	s0,20(sp)
    1f3c:	0c000000 	jal	0 <func_809ADF20>
    1f40:	afa90010 	sw	t1,16(sp)
    1f44:	860a025e 	lh	t2,606(s0)
    1f48:	11400031 	beqz	t2,2010 <EnAm_Draw+0x14c>
    1f4c:	00000000 	nop
    1f50:	860d025e 	lh	t5,606(s0)
    1f54:	920b0114 	lbu	t3,276(s0)
    1f58:	3c190000 	lui	t9,0x0
    1f5c:	25aeffff 	addiu	t6,t5,-1
    1f60:	a60e025e 	sh	t6,606(s0)
    1f64:	8608025e 	lh	t0,606(s0)
    1f68:	256c0001 	addiu	t4,t3,1
    1f6c:	a20c0114 	sb	t4,276(s0)
    1f70:	310f0003 	andi	t7,t0,0x3
    1f74:	15e00026 	bnez	t7,2010 <EnAm_Draw+0x14c>
    1f78:	00081883 	sra	v1,t0,0x2
    1f7c:	0003c080 	sll	t8,v1,0x2
    1f80:	0303c023 	subu	t8,t8,v1
    1f84:	0018c080 	sll	t8,t8,0x2
    1f88:	27390000 	addiu	t9,t9,0
    1f8c:	03191021 	addu	v0,t8,t9
    1f90:	c4440000 	lwc1	$f4,0(v0)
    1f94:	c6060024 	lwc1	$f6,36(s0)
    1f98:	c44a0004 	lwc1	$f10,4(v0)
    1f9c:	3c010000 	lui	at,0x0
    1fa0:	46062200 	add.s	$f8,$f4,$f6
    1fa4:	c4440008 	lwc1	$f4,8(v0)
    1fa8:	24090096 	li	t1,150
    1fac:	240a0096 	li	t2,150
    1fb0:	e7a80068 	swc1	$f8,104(sp)
    1fb4:	c6100028 	lwc1	$f16,40(s0)
    1fb8:	240b00fa 	li	t3,250
    1fbc:	240c00eb 	li	t4,235
    1fc0:	46105480 	add.s	$f18,$f10,$f16
    1fc4:	c42a0000 	lwc1	$f10,0(at)
    1fc8:	240d00f5 	li	t5,245
    1fcc:	240e00ff 	li	t6,255
    1fd0:	e7b2006c 	swc1	$f18,108(sp)
    1fd4:	c606002c 	lwc1	$f6,44(s0)
    1fd8:	afae0024 	sw	t6,36(sp)
    1fdc:	afad0020 	sw	t5,32(sp)
    1fe0:	46062200 	add.s	$f8,$f4,$f6
    1fe4:	afac001c 	sw	t4,28(sp)
    1fe8:	afab0018 	sw	t3,24(sp)
    1fec:	afaa0014 	sw	t2,20(sp)
    1ff0:	e7a80070 	swc1	$f8,112(sp)
    1ff4:	afa90010 	sw	t1,16(sp)
    1ff8:	02202025 	move	a0,s1
    1ffc:	02002825 	move	a1,s0
    2000:	27a60068 	addiu	a2,sp,104
    2004:	24070096 	li	a3,150
    2008:	0c000000 	jal	0 <func_809ADF20>
    200c:	e7aa0028 	swc1	$f10,40(sp)
    2010:	3c060000 	lui	a2,0x0
    2014:	24c60000 	addiu	a2,a2,0
    2018:	27a40050 	addiu	a0,sp,80
    201c:	8e250000 	lw	a1,0(s1)
    2020:	0c000000 	jal	0 <func_809ADF20>
    2024:	24070645 	li	a3,1605
    2028:	8fbf003c 	lw	ra,60(sp)
    202c:	8fb00034 	lw	s0,52(sp)
    2030:	8fb10038 	lw	s1,56(sp)
    2034:	03e00008 	jr	ra
    2038:	27bd0078 	addiu	sp,sp,120
    203c:	00000000 	nop
