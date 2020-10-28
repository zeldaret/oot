
build/src/overlays/actors/ovl_En_Vb_Ball/z_en_vb_ball.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnVbBall_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa5003c 	sw	a1,60(sp)
      10:	848e001c 	lh	t6,28(a0)
      14:	00808025 	move	s0,a0
      18:	26050168 	addiu	a1,s0,360
      1c:	29c100c8 	slti	at,t6,200
      20:	1420001e 	bnez	at,9c <EnVbBall_Init+0x9c>
      24:	8fa4003c 	lw	a0,60(sp)
      28:	3c014440 	lui	at,0x4440
      2c:	44816000 	mtc1	at,$f12
      30:	0c000000 	jal	0 <EnVbBall_Init>
      34:	00000000 	nop
      38:	3c014440 	lui	at,0x4440
      3c:	44816000 	mtc1	at,$f12
      40:	0c000000 	jal	0 <EnVbBall_Init>
      44:	e600015c 	swc1	$f0,348(s0)
      48:	e6000158 	swc1	$f0,344(s0)
      4c:	c60c0024 	lwc1	$f12,36(s0)
      50:	0c000000 	jal	0 <EnVbBall_Init>
      54:	c60e002c 	lwc1	$f14,44(s0)
      58:	3c014040 	lui	at,0x4040
      5c:	44816000 	mtc1	at,$f12
      60:	0c000000 	jal	0 <EnVbBall_Init>
      64:	e7a00028 	swc1	$f0,40(sp)
      68:	e6000060 	swc1	$f0,96(s0)
      6c:	0c000000 	jal	0 <EnVbBall_Init>
      70:	c7ac0028 	lwc1	$f12,40(sp)
      74:	46000100 	add.s	$f4,$f0,$f0
      78:	e604005c 	swc1	$f4,92(s0)
      7c:	0c000000 	jal	0 <EnVbBall_Init>
      80:	c7ac0028 	lwc1	$f12,40(sp)
      84:	46000180 	add.s	$f6,$f0,$f0
      88:	3c010000 	lui	at,0x0
      8c:	e6060064 	swc1	$f6,100(s0)
      90:	c4280000 	lwc1	$f8,0(at)
      94:	10000035 	b	16c <EnVbBall_Init+0x16c>
      98:	e608006c 	swc1	$f8,108(s0)
      9c:	0c000000 	jal	0 <EnVbBall_Init>
      a0:	afa50024 	sw	a1,36(sp)
      a4:	3c070000 	lui	a3,0x0
      a8:	8fa50024 	lw	a1,36(sp)
      ac:	24e70000 	addiu	a3,a3,0
      b0:	8fa4003c 	lw	a0,60(sp)
      b4:	0c000000 	jal	0 <EnVbBall_Init>
      b8:	02003025 	move	a2,s0
      bc:	860f0034 	lh	t7,52(s0)
      c0:	3c010000 	lui	at,0x0
      c4:	c4320000 	lwc1	$f18,0(at)
      c8:	448f5000 	mtc1	t7,$f10
      cc:	02002025 	move	a0,s0
      d0:	46805420 	cvt.s.w	$f16,$f10
      d4:	46128103 	div.s	$f4,$f16,$f18
      d8:	44052000 	mfc1	a1,$f4
      dc:	0c000000 	jal	0 <EnVbBall_Init>
      e0:	00000000 	nop
      e4:	3c010000 	lui	at,0x0
      e8:	c4260000 	lwc1	$f6,0(at)
      ec:	c6000054 	lwc1	$f0,84(s0)
      f0:	3c010000 	lui	at,0x0
      f4:	46060202 	mul.s	$f8,$f0,$f6
      f8:	4600428d 	trunc.w.s	$f10,$f8
      fc:	44195000 	mfc1	t9,$f10
     100:	00000000 	nop
     104:	a61901a8 	sh	t9,424(s0)
     108:	c4300000 	lwc1	$f16,0(at)
     10c:	3c010000 	lui	at,0x0
     110:	46100482 	mul.s	$f18,$f0,$f16
     114:	4600910d 	trunc.w.s	$f4,$f18
     118:	44092000 	mfc1	t1,$f4
     11c:	00000000 	nop
     120:	a60901aa 	sh	t1,426(s0)
     124:	c4260000 	lwc1	$f6,0(at)
     128:	3c014600 	lui	at,0x4600
     12c:	44816000 	mtc1	at,$f12
     130:	46060202 	mul.s	$f8,$f0,$f6
     134:	4600428d 	trunc.w.s	$f10,$f8
     138:	440b5000 	mfc1	t3,$f10
     13c:	0c000000 	jal	0 <EnVbBall_Init>
     140:	a60b01ac 	sh	t3,428(s0)
     144:	3c014600 	lui	at,0x4600
     148:	44816000 	mtc1	at,$f12
     14c:	0c000000 	jal	0 <EnVbBall_Init>
     150:	e6000158 	swc1	$f0,344(s0)
     154:	3c014288 	lui	at,0x4288
     158:	44819000 	mtc1	at,$f18
     15c:	c6100054 	lwc1	$f16,84(s0)
     160:	e600015c 	swc1	$f0,348(s0)
     164:	46128102 	mul.s	$f4,$f16,$f18
     168:	e6040160 	swc1	$f4,352(s0)
     16c:	8fbf001c 	lw	ra,28(sp)
     170:	8fb00018 	lw	s0,24(sp)
     174:	27bd0038 	addiu	sp,sp,56
     178:	03e00008 	jr	ra
     17c:	00000000 	nop

00000180 <EnVbBall_Destroy>:
     180:	27bdffe8 	addiu	sp,sp,-24
     184:	afbf0014 	sw	ra,20(sp)
     188:	848e001c 	lh	t6,28(a0)
     18c:	00803025 	move	a2,a0
     190:	00a02025 	move	a0,a1
     194:	29c100c8 	slti	at,t6,200
     198:	50200004 	beqzl	at,1ac <EnVbBall_Destroy+0x2c>
     19c:	8fbf0014 	lw	ra,20(sp)
     1a0:	0c000000 	jal	0 <EnVbBall_Init>
     1a4:	24c50168 	addiu	a1,a2,360
     1a8:	8fbf0014 	lw	ra,20(sp)
     1ac:	27bd0018 	addiu	sp,sp,24
     1b0:	03e00008 	jr	ra
     1b4:	00000000 	nop

000001b8 <func_80B29158>:
     1b8:	27bdffe8 	addiu	sp,sp,-24
     1bc:	afbf0014 	sw	ra,20(sp)
     1c0:	afa40018 	sw	a0,24(sp)
     1c4:	00001025 	move	v0,zero
     1c8:	90ae0024 	lbu	t6,36(a1)
     1cc:	24420001 	addiu	v0,v0,1
     1d0:	00021400 	sll	v0,v0,0x10
     1d4:	15c00027 	bnez	t6,274 <func_80B29158+0xbc>
     1d8:	00021403 	sra	v0,v0,0x10
     1dc:	240f0002 	li	t7,2
     1e0:	a0af0024 	sb	t7,36(a1)
     1e4:	8cd90000 	lw	t9,0(a2)
     1e8:	3c01447a 	lui	at,0x447a
     1ec:	44813000 	mtc1	at,$f6
     1f0:	acb90000 	sw	t9,0(a1)
     1f4:	8cd80004 	lw	t8,4(a2)
     1f8:	3c0142c8 	lui	at,0x42c8
     1fc:	44816000 	mtc1	at,$f12
     200:	acb80004 	sw	t8,4(a1)
     204:	8cd90008 	lw	t9,8(a2)
     208:	acb90008 	sw	t9,8(a1)
     20c:	8ce90000 	lw	t1,0(a3)
     210:	aca9000c 	sw	t1,12(a1)
     214:	8ce80004 	lw	t0,4(a3)
     218:	aca80010 	sw	t0,16(a1)
     21c:	8ce90008 	lw	t1,8(a3)
     220:	aca90014 	sw	t1,20(a1)
     224:	8faa0028 	lw	t2,40(sp)
     228:	8d4c0000 	lw	t4,0(t2)
     22c:	acac0018 	sw	t4,24(a1)
     230:	8d4b0004 	lw	t3,4(t2)
     234:	acab001c 	sw	t3,28(a1)
     238:	8d4c0008 	lw	t4,8(t2)
     23c:	acac0020 	sw	t4,32(a1)
     240:	c7a4002c 	lwc1	$f4,44(sp)
     244:	46062203 	div.s	$f8,$f4,$f6
     248:	e4a80030 	swc1	$f8,48(a1)
     24c:	0c000000 	jal	0 <EnVbBall_Init>
     250:	afa5001c 	sw	a1,28(sp)
     254:	8fa5001c 	lw	a1,28(sp)
     258:	3c0142c8 	lui	at,0x42c8
     25c:	44816000 	mtc1	at,$f12
     260:	0c000000 	jal	0 <EnVbBall_Init>
     264:	e4a00034 	swc1	$f0,52(a1)
     268:	8fa5001c 	lw	a1,28(sp)
     26c:	10000004 	b	280 <func_80B29158+0xc8>
     270:	e4a00038 	swc1	$f0,56(a1)
     274:	284100b4 	slti	at,v0,180
     278:	1420ffd3 	bnez	at,1c8 <func_80B29158+0x10>
     27c:	24a5003c 	addiu	a1,a1,60
     280:	8fbf0014 	lw	ra,20(sp)
     284:	27bd0018 	addiu	sp,sp,24
     288:	03e00008 	jr	ra
     28c:	00000000 	nop

00000290 <func_80B29230>:
     290:	afa40000 	sw	a0,0(sp)
     294:	00001025 	move	v0,zero
     298:	90ae0024 	lbu	t6,36(a1)
     29c:	24420001 	addiu	v0,v0,1
     2a0:	00021400 	sll	v0,v0,0x10
     2a4:	15c0001d 	bnez	t6,31c <func_80B29230+0x8c>
     2a8:	00021403 	sra	v0,v0,0x10
     2ac:	240f0003 	li	t7,3
     2b0:	a0af0024 	sb	t7,36(a1)
     2b4:	8cd90000 	lw	t9,0(a2)
     2b8:	3c0143c8 	lui	at,0x43c8
     2bc:	44813000 	mtc1	at,$f6
     2c0:	acb90000 	sw	t9,0(a1)
     2c4:	8cd80004 	lw	t8,4(a2)
     2c8:	acb80004 	sw	t8,4(a1)
     2cc:	8cd90008 	lw	t9,8(a2)
     2d0:	acb90008 	sw	t9,8(a1)
     2d4:	8ce90000 	lw	t1,0(a3)
     2d8:	aca9000c 	sw	t1,12(a1)
     2dc:	8ce80004 	lw	t0,4(a3)
     2e0:	aca80010 	sw	t0,16(a1)
     2e4:	8ce90008 	lw	t1,8(a3)
     2e8:	aca90014 	sw	t1,20(a1)
     2ec:	8faa0010 	lw	t2,16(sp)
     2f0:	8d4c0000 	lw	t4,0(t2)
     2f4:	acac0018 	sw	t4,24(a1)
     2f8:	8d4b0004 	lw	t3,4(t2)
     2fc:	acab001c 	sw	t3,28(a1)
     300:	8d4c0008 	lw	t4,8(t2)
     304:	a4a0002c 	sh	zero,44(a1)
     308:	acac0020 	sw	t4,32(a1)
     30c:	c7a40014 	lwc1	$f4,20(sp)
     310:	46062203 	div.s	$f8,$f4,$f6
     314:	03e00008 	jr	ra
     318:	e4a80030 	swc1	$f8,48(a1)
     31c:	284100b4 	slti	at,v0,180
     320:	1420ffdd 	bnez	at,298 <func_80B29230+0x8>
     324:	24a5003c 	addiu	a1,a1,60
     328:	03e00008 	jr	ra
     32c:	00000000 	nop

00000330 <func_80B292D0>:
     330:	27bdff48 	addiu	sp,sp,-184
     334:	3c014248 	lui	at,0x4248
     338:	44810000 	mtc1	at,$f0
     33c:	afb3005c 	sw	s3,92(sp)
     340:	afbf0074 	sw	ra,116(sp)
     344:	afbe0070 	sw	s8,112(sp)
     348:	afb7006c 	sw	s7,108(sp)
     34c:	afb60068 	sw	s6,104(sp)
     350:	afb50064 	sw	s5,100(sp)
     354:	afb40060 	sw	s4,96(sp)
     358:	afb20058 	sw	s2,88(sp)
     35c:	afb10054 	sw	s1,84(sp)
     360:	afb00050 	sw	s0,80(sp)
     364:	f7be0048 	sdc1	$f30,72(sp)
     368:	f7bc0040 	sdc1	$f28,64(sp)
     36c:	f7ba0038 	sdc1	$f26,56(sp)
     370:	f7b80030 	sdc1	$f24,48(sp)
     374:	f7b60028 	sdc1	$f22,40(sp)
     378:	f7b40020 	sdc1	$f20,32(sp)
     37c:	3c0142c8 	lui	at,0x42c8
     380:	44812000 	mtc1	at,$f4
     384:	00809825 	move	s3,a0
     388:	8c910118 	lw	s1,280(a0)
     38c:	00a0f025 	move	s8,a1
     390:	00a02025 	move	a0,a1
     394:	240e0004 	li	t6,4
     398:	44060000 	mfc1	a2,$f0
     39c:	44070000 	mfc1	a3,$f0
     3a0:	afae0014 	sw	t6,20(sp)
     3a4:	02602825 	move	a1,s3
     3a8:	0c000000 	jal	0 <EnVbBall_Init>
     3ac:	e7a40010 	swc1	$f4,16(sp)
     3b0:	966f0088 	lhu	t7,136(s3)
     3b4:	31f80001 	andi	t8,t7,0x1
     3b8:	5300007c 	beqzl	t8,5ac <func_80B292D0+0x27c>
     3bc:	3c014248 	lui	at,0x4248
     3c0:	44803000 	mtc1	zero,$f6
     3c4:	c6680060 	lwc1	$f8,96(s3)
     3c8:	3c014680 	lui	at,0x4680
     3cc:	4606403e 	c.le.s	$f8,$f6
     3d0:	00000000 	nop
     3d4:	45020075 	bc1fl	5ac <func_80B292D0+0x27c>
     3d8:	3c014248 	lui	at,0x4248
     3dc:	4481a000 	mtc1	at,$f20
     3e0:	0c000000 	jal	0 <EnVbBall_Init>
     3e4:	4600a306 	mov.s	$f12,$f20
     3e8:	e6600158 	swc1	$f0,344(s3)
     3ec:	0c000000 	jal	0 <EnVbBall_Init>
     3f0:	4600a306 	mov.s	$f12,$f20
     3f4:	e660015c 	swc1	$f0,348(s3)
     3f8:	c66c0024 	lwc1	$f12,36(s3)
     3fc:	0c000000 	jal	0 <EnVbBall_Init>
     400:	c66e002c 	lwc1	$f14,44(s3)
     404:	46000506 	mov.s	$f20,$f0
     408:	0c000000 	jal	0 <EnVbBall_Init>
     40c:	46000306 	mov.s	$f12,$f0
     410:	3c014120 	lui	at,0x4120
     414:	44815000 	mtc1	at,$f10
     418:	4600a306 	mov.s	$f12,$f20
     41c:	460a0402 	mul.s	$f16,$f0,$f10
     420:	0c000000 	jal	0 <EnVbBall_Init>
     424:	e670005c 	swc1	$f16,92(s3)
     428:	3c014120 	lui	at,0x4120
     42c:	44819000 	mtc1	at,$f18
     430:	3c01bf00 	lui	at,0xbf00
     434:	44814000 	mtc1	at,$f8
     438:	46120102 	mul.s	$f4,$f0,$f18
     43c:	c6660060 	lwc1	$f6,96(s3)
     440:	8679001c 	lh	t9,28(s3)
     444:	3c070000 	lui	a3,0x0
     448:	46083282 	mul.s	$f10,$f6,$f8
     44c:	33280001 	andi	t0,t9,0x1
     450:	24e70000 	addiu	a3,a3,0
     454:	e6640064 	swc1	$f4,100(s3)
     458:	24043927 	li	a0,14631
     45c:	266500e4 	addiu	a1,s3,228
     460:	11000007 	beqz	t0,480 <func_80B292D0+0x150>
     464:	e66a0060 	swc1	$f10,96(s3)
     468:	3c090000 	lui	t1,0x0
     46c:	25290000 	addiu	t1,t1,0
     470:	afa90014 	sw	t1,20(sp)
     474:	24060004 	li	a2,4
     478:	0c000000 	jal	0 <EnVbBall_Init>
     47c:	afa70010 	sw	a3,16(sp)
     480:	3c014348 	lui	at,0x4348
     484:	4481f000 	mtc1	at,$f30
     488:	3c0142a0 	lui	at,0x42a0
     48c:	4481e000 	mtc1	at,$f28
     490:	3c010000 	lui	at,0x0
     494:	c43a0000 	lwc1	$f26,0(at)
     498:	3c013f80 	lui	at,0x3f80
     49c:	4481c000 	mtc1	at,$f24
     4a0:	3c0141a0 	lui	at,0x41a0
     4a4:	4481b000 	mtc1	at,$f22
     4a8:	3c014100 	lui	at,0x4100
     4ac:	26341970 	addiu	s4,s1,6512
     4b0:	3c160000 	lui	s6,0x0
     4b4:	3c150000 	lui	s5,0x0
     4b8:	4481a000 	mtc1	at,$f20
     4bc:	26b50000 	addiu	s5,s5,0
     4c0:	26d60000 	addiu	s6,s6,0
     4c4:	27b10098 	addiu	s1,sp,152
     4c8:	00008025 	move	s0,zero
     4cc:	27b70080 	addiu	s7,sp,128
     4d0:	27b2008c 	addiu	s2,sp,140
     4d4:	8eab0000 	lw	t3,0(s5)
     4d8:	8ecd0000 	lw	t5,0(s6)
     4dc:	8eaa0004 	lw	t2,4(s5)
     4e0:	ae2b0000 	sw	t3,0(s1)
     4e4:	ae4d0000 	sw	t5,0(s2)
     4e8:	8eab0008 	lw	t3,8(s5)
     4ec:	8ecd0008 	lw	t5,8(s6)
     4f0:	8ecc0004 	lw	t4,4(s6)
     4f4:	4600a306 	mov.s	$f12,$f20
     4f8:	ae2a0004 	sw	t2,4(s1)
     4fc:	ae2b0008 	sw	t3,8(s1)
     500:	ae4d0008 	sw	t5,8(s2)
     504:	0c000000 	jal	0 <EnVbBall_Init>
     508:	ae4c0004 	sw	t4,4(s2)
     50c:	e7a00098 	swc1	$f0,152(sp)
     510:	0c000000 	jal	0 <EnVbBall_Init>
     514:	4600c306 	mov.s	$f12,$f24
     518:	e7a0009c 	swc1	$f0,156(sp)
     51c:	0c000000 	jal	0 <EnVbBall_Init>
     520:	4600a306 	mov.s	$f12,$f20
     524:	e7a000a0 	swc1	$f0,160(sp)
     528:	e7ba0090 	swc1	$f26,144(sp)
     52c:	0c000000 	jal	0 <EnVbBall_Init>
     530:	4600b306 	mov.s	$f12,$f22
     534:	c6700024 	lwc1	$f16,36(s3)
     538:	3c014120 	lui	at,0x4120
     53c:	44813000 	mtc1	at,$f6
     540:	46100480 	add.s	$f18,$f0,$f16
     544:	4600b306 	mov.s	$f12,$f22
     548:	e7b20080 	swc1	$f18,128(sp)
     54c:	c6640080 	lwc1	$f4,128(s3)
     550:	46062200 	add.s	$f8,$f4,$f6
     554:	0c000000 	jal	0 <EnVbBall_Init>
     558:	e7a80084 	swc1	$f8,132(sp)
     55c:	c66a002c 	lwc1	$f10,44(s3)
     560:	4600e306 	mov.s	$f12,$f28
     564:	460a0400 	add.s	$f16,$f0,$f10
     568:	0c000000 	jal	0 <EnVbBall_Init>
     56c:	e7b00088 	swc1	$f16,136(sp)
     570:	461e0480 	add.s	$f18,$f0,$f30
     574:	03c02025 	move	a0,s8
     578:	02802825 	move	a1,s4
     57c:	02e03025 	move	a2,s7
     580:	e7b20014 	swc1	$f18,20(sp)
     584:	02203825 	move	a3,s1
     588:	0c000000 	jal	0 <EnVbBall_Init>
     58c:	afb20010 	sw	s2,16(sp)
     590:	26100001 	addiu	s0,s0,1
     594:	00108400 	sll	s0,s0,0x10
     598:	00108403 	sra	s0,s0,0x10
     59c:	2a01000a 	slti	at,s0,10
     5a0:	5420ffcd 	bnezl	at,4d8 <func_80B292D0+0x1a8>
     5a4:	8eab0000 	lw	t3,0(s5)
     5a8:	3c014248 	lui	at,0x4248
     5ac:	44813000 	mtc1	at,$f6
     5b0:	c6640028 	lwc1	$f4,40(s3)
     5b4:	4606203c 	c.lt.s	$f4,$f6
     5b8:	00000000 	nop
     5bc:	45020004 	bc1fl	5d0 <func_80B292D0+0x2a0>
     5c0:	8fbf0074 	lw	ra,116(sp)
     5c4:	0c000000 	jal	0 <EnVbBall_Init>
     5c8:	02602025 	move	a0,s3
     5cc:	8fbf0074 	lw	ra,116(sp)
     5d0:	d7b40020 	ldc1	$f20,32(sp)
     5d4:	d7b60028 	ldc1	$f22,40(sp)
     5d8:	d7b80030 	ldc1	$f24,48(sp)
     5dc:	d7ba0038 	ldc1	$f26,56(sp)
     5e0:	d7bc0040 	ldc1	$f28,64(sp)
     5e4:	d7be0048 	ldc1	$f30,72(sp)
     5e8:	8fb00050 	lw	s0,80(sp)
     5ec:	8fb10054 	lw	s1,84(sp)
     5f0:	8fb20058 	lw	s2,88(sp)
     5f4:	8fb3005c 	lw	s3,92(sp)
     5f8:	8fb40060 	lw	s4,96(sp)
     5fc:	8fb50064 	lw	s5,100(sp)
     600:	8fb60068 	lw	s6,104(sp)
     604:	8fb7006c 	lw	s7,108(sp)
     608:	8fbe0070 	lw	s8,112(sp)
     60c:	03e00008 	jr	ra
     610:	27bd00b8 	addiu	sp,sp,184

00000614 <EnVbBall_Update>:
     614:	27bdfef0 	addiu	sp,sp,-272
     618:	afbf0064 	sw	ra,100(sp)
     61c:	afb50060 	sw	s5,96(sp)
     620:	afb4005c 	sw	s4,92(sp)
     624:	afb30058 	sw	s3,88(sp)
     628:	afb20054 	sw	s2,84(sp)
     62c:	afb10050 	sw	s1,80(sp)
     630:	afb0004c 	sw	s0,76(sp)
     634:	f7b80040 	sdc1	$f24,64(sp)
     638:	f7b60038 	sdc1	$f22,56(sp)
     63c:	f7b40030 	sdc1	$f20,48(sp)
     640:	8c8e0118 	lw	t6,280(a0)
     644:	00808825 	move	s1,a0
     648:	00a0a025 	move	s4,a1
     64c:	afae0104 	sw	t6,260(sp)
     650:	848f0152 	lh	t7,338(a0)
     654:	84820150 	lh	v0,336(a0)
     658:	3c01bf80 	lui	at,0xbf80
     65c:	25f80001 	addiu	t8,t7,1
     660:	10400003 	beqz	v0,670 <EnVbBall_Update+0x5c>
     664:	a4980152 	sh	t8,338(a0)
     668:	2459ffff 	addiu	t9,v0,-1
     66c:	a4990150 	sh	t9,336(a0)
     670:	c6240158 	lwc1	$f4,344(s1)
     674:	c628015c 	lwc1	$f8,348(s1)
     678:	44810000 	mtc1	at,$f0
     67c:	4600218d 	trunc.w.s	$f6,$f4
     680:	c6300060 	lwc1	$f16,96(s1)
     684:	862800b4 	lh	t0,180(s1)
     688:	4600428d 	trunc.w.s	$f10,$f8
     68c:	440c3000 	mfc1	t4,$f6
     690:	862e00b6 	lh	t6,182(s1)
     694:	46008480 	add.s	$f18,$f16,$f0
     698:	44095000 	mfc1	t1,$f10
     69c:	010c6821 	addu	t5,t0,t4
     6a0:	a62d00b4 	sh	t5,180(s1)
     6a4:	01c95021 	addu	t2,t6,t1
     6a8:	a62a00b6 	sh	t2,182(s1)
     6ac:	e6320060 	swc1	$f18,96(s1)
     6b0:	02202025 	move	a0,s1
     6b4:	0c000000 	jal	0 <EnVbBall_Init>
     6b8:	e620006c 	swc1	$f0,108(s1)
     6bc:	862b001c 	lh	t3,28(s1)
     6c0:	26240164 	addiu	a0,s1,356
     6c4:	3c05432f 	lui	a1,0x432f
     6c8:	296100c8 	slti	at,t3,200
     6cc:	14200006 	bnez	at,6e8 <EnVbBall_Update+0xd4>
     6d0:	3c063f80 	lui	a2,0x3f80
     6d4:	02202025 	move	a0,s1
     6d8:	0c000000 	jal	0 <EnVbBall_Init>
     6dc:	02802825 	move	a1,s4
     6e0:	100001b4 	b	db4 <EnVbBall_Update+0x7a0>
     6e4:	8fbf0064 	lw	ra,100(sp)
     6e8:	0c000000 	jal	0 <EnVbBall_Init>
     6ec:	3c074220 	lui	a3,0x4220
     6f0:	3c014248 	lui	at,0x4248
     6f4:	44810000 	mtc1	at,$f0
     6f8:	3c010000 	lui	at,0x0
     6fc:	c4260000 	lwc1	$f6,0(at)
     700:	c6240054 	lwc1	$f4,84(s1)
     704:	c6280028 	lwc1	$f8,40(s1)
     708:	3c0142c8 	lui	at,0x42c8
     70c:	46062502 	mul.s	$f20,$f4,$f6
     710:	44818000 	mtc1	at,$f16
     714:	24080004 	li	t0,4
     718:	44060000 	mfc1	a2,$f0
     71c:	44070000 	mfc1	a3,$f0
     720:	02802025 	move	a0,s4
     724:	02202825 	move	a1,s1
     728:	46144281 	sub.s	$f10,$f8,$f20
     72c:	e62a0028 	swc1	$f10,40(s1)
     730:	afa80014 	sw	t0,20(sp)
     734:	0c000000 	jal	0 <EnVbBall_Init>
     738:	e7b00010 	swc1	$f16,16(sp)
     73c:	c6320028 	lwc1	$f18,40(s1)
     740:	962c0088 	lhu	t4,136(s1)
     744:	46149100 	add.s	$f4,$f18,$f20
     748:	318d0001 	andi	t5,t4,0x1
     74c:	11a00186 	beqz	t5,d68 <EnVbBall_Update+0x754>
     750:	e6240028 	swc1	$f4,40(s1)
     754:	44803000 	mtc1	zero,$f6
     758:	c6280060 	lwc1	$f8,96(s1)
     75c:	4606403e 	c.le.s	$f8,$f6
     760:	00000000 	nop
     764:	45020181 	bc1fl	d6c <EnVbBall_Update+0x758>
     768:	92220178 	lbu	v0,376(s1)
     76c:	8622001c 	lh	v0,28(s1)
     770:	24150064 	li	s5,100
     774:	24010065 	li	at,101
     778:	12a20003 	beq	s5,v0,788 <EnVbBall_Update+0x174>
     77c:	00000000 	nop
     780:	1441012c 	bne	v0,at,c34 <EnVbBall_Update+0x620>
     784:	00009025 	move	s2,zero
     788:	0c000000 	jal	0 <EnVbBall_Init>
     78c:	02202025 	move	a0,s1
     790:	8622001c 	lh	v0,28(s1)
     794:	02202025 	move	a0,s1
     798:	02802825 	move	a1,s4
     79c:	16a20004 	bne	s5,v0,7b0 <EnVbBall_Update+0x19c>
     7a0:	24060005 	li	a2,5
     7a4:	0c000000 	jal	0 <EnVbBall_Init>
     7a8:	2407000a 	li	a3,10
     7ac:	8622001c 	lh	v0,28(s1)
     7b0:	16a20004 	bne	s5,v0,7c4 <EnVbBall_Update+0x1b0>
     7b4:	00009025 	move	s2,zero
     7b8:	240f0002 	li	t7,2
     7bc:	10000003 	b	7cc <EnVbBall_Update+0x1b8>
     7c0:	a7af00fa 	sh	t7,250(sp)
     7c4:	24180002 	li	t8,2
     7c8:	a7b800fa 	sh	t8,250(sp)
     7cc:	3c0140a0 	lui	at,0x40a0
     7d0:	4481c000 	mtc1	at,$f24
     7d4:	3c014120 	lui	at,0x4120
     7d8:	4481b000 	mtc1	at,$f22
     7dc:	3c014040 	lui	at,0x4040
     7e0:	26991c24 	addiu	t9,s4,7204
     7e4:	3c130000 	lui	s3,0x0
     7e8:	4481a000 	mtc1	at,$f20
     7ec:	26730000 	addiu	s3,s3,0
     7f0:	afb9006c 	sw	t9,108(sp)
     7f4:	862e001c 	lh	t6,28(s1)
     7f8:	3c014150 	lui	at,0x4150
     7fc:	16ae0010 	bne	s5,t6,840 <EnVbBall_Update+0x22c>
     800:	00000000 	nop
     804:	44816000 	mtc1	at,$f12
     808:	0c000000 	jal	0 <EnVbBall_Init>
     80c:	00000000 	nop
     810:	e7a000ec 	swc1	$f0,236(sp)
     814:	0c000000 	jal	0 <EnVbBall_Init>
     818:	4600c306 	mov.s	$f12,$f24
     81c:	3c0140c0 	lui	at,0x40c0
     820:	44815000 	mtc1	at,$f10
     824:	3c014150 	lui	at,0x4150
     828:	44816000 	mtc1	at,$f12
     82c:	460a0400 	add.s	$f16,$f0,$f10
     830:	0c000000 	jal	0 <EnVbBall_Init>
     834:	e7b000f0 	swc1	$f16,240(sp)
     838:	1000000d 	b	870 <EnVbBall_Update+0x25c>
     83c:	e7a000f4 	swc1	$f0,244(sp)
     840:	0c000000 	jal	0 <EnVbBall_Init>
     844:	4600b306 	mov.s	$f12,$f22
     848:	e7a000ec 	swc1	$f0,236(sp)
     84c:	0c000000 	jal	0 <EnVbBall_Init>
     850:	4600a306 	mov.s	$f12,$f20
     854:	3c014080 	lui	at,0x4080
     858:	44819000 	mtc1	at,$f18
     85c:	4600b306 	mov.s	$f12,$f22
     860:	46120100 	add.s	$f4,$f0,$f18
     864:	0c000000 	jal	0 <EnVbBall_Init>
     868:	e7a400f0 	swc1	$f4,240(sp)
     86c:	e7a000f4 	swc1	$f0,244(sp)
     870:	c6260024 	lwc1	$f6,36(s1)
     874:	c7a800ec 	lwc1	$f8,236(sp)
     878:	c7b200f0 	lwc1	$f18,240(sp)
     87c:	3c013f00 	lui	at,0x3f00
     880:	46083280 	add.s	$f10,$f6,$f8
     884:	c7a800f4 	lwc1	$f8,244(sp)
     888:	8fa4006c 	lw	a0,108(sp)
     88c:	02202825 	move	a1,s1
     890:	e7aa0010 	swc1	$f10,16(sp)
     894:	c6300028 	lwc1	$f16,40(s1)
     898:	02803025 	move	a2,s4
     89c:	240700ad 	li	a3,173
     8a0:	46128100 	add.s	$f4,$f16,$f18
     8a4:	e7a40014 	swc1	$f4,20(sp)
     8a8:	c626002c 	lwc1	$f6,44(s1)
     8ac:	afa00020 	sw	zero,32(sp)
     8b0:	afa0001c 	sw	zero,28(sp)
     8b4:	46083280 	add.s	$f10,$f6,$f8
     8b8:	44812000 	mtc1	at,$f4
     8bc:	e7aa0018 	swc1	$f10,24(sp)
     8c0:	86290034 	lh	t1,52(s1)
     8c4:	44898000 	mtc1	t1,$f16
     8c8:	00000000 	nop
     8cc:	468084a0 	cvt.s.w	$f18,$f16
     8d0:	46049182 	mul.s	$f6,$f18,$f4
     8d4:	4600320d 	trunc.w.s	$f8,$f6
     8d8:	440b4000 	mfc1	t3,$f8
     8dc:	00000000 	nop
     8e0:	afab0024 	sw	t3,36(sp)
     8e4:	8628001c 	lh	t0,28(s1)
     8e8:	250c0001 	addiu	t4,t0,1
     8ec:	0c000000 	jal	0 <EnVbBall_Init>
     8f0:	afac0028 	sw	t4,40(sp)
     8f4:	10400031 	beqz	v0,9bc <EnVbBall_Update+0x3a8>
     8f8:	00408025 	move	s0,v0
     8fc:	5640000d 	bnezl	s2,934 <EnVbBall_Update+0x320>
     900:	8e380118 	lw	t8,280(s1)
     904:	862d001c 	lh	t5,28(s1)
     908:	240438d7 	li	a0,14551
     90c:	244500e4 	addiu	a1,v0,228
     910:	16ad0007 	bne	s5,t5,930 <EnVbBall_Update+0x31c>
     914:	24060004 	li	a2,4
     918:	3c0f0000 	lui	t7,0x0
     91c:	25ef0000 	addiu	t7,t7,0
     920:	afaf0014 	sw	t7,20(sp)
     924:	02603825 	move	a3,s3
     928:	0c000000 	jal	0 <EnVbBall_Init>
     92c:	afb30010 	sw	s3,16(sp)
     930:	8e380118 	lw	t8,280(s1)
     934:	27b900ec 	addiu	t9,sp,236
     938:	44805000 	mtc1	zero,$f10
     93c:	ae180118 	sw	t8,280(s0)
     940:	8f290000 	lw	t1,0(t9)
     944:	3c010000 	lui	at,0x0
     948:	ae09005c 	sw	t1,92(s0)
     94c:	8f2e0004 	lw	t6,4(t9)
     950:	ae0e0060 	sw	t6,96(s0)
     954:	8f290008 	lw	t1,8(t9)
     958:	e60a015c 	swc1	$f10,348(s0)
     95c:	ae090064 	sw	t1,100(s0)
     960:	c7b000ec 	lwc1	$f16,236(sp)
     964:	c7a400f4 	lwc1	$f4,244(sp)
     968:	c4280000 	lwc1	$f8,0(at)
     96c:	46108482 	mul.s	$f18,$f16,$f16
     970:	00000000 	nop
     974:	46042182 	mul.s	$f6,$f4,$f4
     978:	46069000 	add.s	$f0,$f18,$f6
     97c:	46000004 	sqrt.s	$f0,$f0
     980:	46004282 	mul.s	$f10,$f8,$f0
     984:	e60a0158 	swc1	$f10,344(s0)
     988:	c7ae00f4 	lwc1	$f14,244(sp)
     98c:	0c000000 	jal	0 <EnVbBall_Init>
     990:	c7ac00ec 	lwc1	$f12,236(sp)
     994:	3c010000 	lui	at,0x0
     998:	c4300000 	lwc1	$f16,0(at)
     99c:	3c014348 	lui	at,0x4348
     9a0:	44813000 	mtc1	at,$f6
     9a4:	46100102 	mul.s	$f4,$f0,$f16
     9a8:	e6060164 	swc1	$f6,356(s0)
     9ac:	4600248d 	trunc.w.s	$f18,$f4
     9b0:	440b9000 	mfc1	t3,$f18
     9b4:	00000000 	nop
     9b8:	a60b00b6 	sh	t3,182(s0)
     9bc:	87a800fa 	lh	t0,250(sp)
     9c0:	26520001 	addiu	s2,s2,1
     9c4:	00129400 	sll	s2,s2,0x10
     9c8:	00129403 	sra	s2,s2,0x10
     9cc:	0248082a 	slt	at,s2,t0
     9d0:	5420ff89 	bnezl	at,7f8 <EnVbBall_Update+0x1e4>
     9d4:	862e001c 	lh	t6,28(s1)
     9d8:	3c014120 	lui	at,0x4120
     9dc:	4481b000 	mtc1	at,$f22
     9e0:	3c0140a0 	lui	at,0x40a0
     9e4:	8fb30104 	lw	s3,260(sp)
     9e8:	4481c000 	mtc1	at,$f24
     9ec:	3c0141c8 	lui	at,0x41c8
     9f0:	4481a000 	mtc1	at,$f20
     9f4:	00009025 	move	s2,zero
     9f8:	27b000d8 	addiu	s0,sp,216
     9fc:	26731970 	addiu	s3,s3,6512
     a00:	3c0c0000 	lui	t4,0x0
     a04:	258c0000 	addiu	t4,t4,0
     a08:	8d8f0000 	lw	t7,0(t4)
     a0c:	3c190000 	lui	t9,0x0
     a10:	27390000 	addiu	t9,t9,0
     a14:	ae0f0000 	sw	t7,0(s0)
     a18:	8d8d0004 	lw	t5,4(t4)
     a1c:	27b800cc 	addiu	t8,sp,204
     a20:	4600a306 	mov.s	$f12,$f20
     a24:	ae0d0004 	sw	t5,4(s0)
     a28:	8d8f0008 	lw	t7,8(t4)
     a2c:	ae0f0008 	sw	t7,8(s0)
     a30:	8f290000 	lw	t1,0(t9)
     a34:	8f2e0004 	lw	t6,4(t9)
     a38:	af090000 	sw	t1,0(t8)
     a3c:	8f290008 	lw	t1,8(t9)
     a40:	af0e0004 	sw	t6,4(t8)
     a44:	0c000000 	jal	0 <EnVbBall_Init>
     a48:	af090008 	sw	t1,8(t8)
     a4c:	e7a000d8 	swc1	$f0,216(sp)
     a50:	0c000000 	jal	0 <EnVbBall_Init>
     a54:	4600c306 	mov.s	$f12,$f24
     a58:	3c014100 	lui	at,0x4100
     a5c:	44814000 	mtc1	at,$f8
     a60:	4600a306 	mov.s	$f12,$f20
     a64:	46080280 	add.s	$f10,$f0,$f8
     a68:	0c000000 	jal	0 <EnVbBall_Init>
     a6c:	e7aa00dc 	swc1	$f10,220(sp)
     a70:	e7a000e0 	swc1	$f0,224(sp)
     a74:	0c000000 	jal	0 <EnVbBall_Init>
     a78:	4600b306 	mov.s	$f12,$f22
     a7c:	c6300024 	lwc1	$f16,36(s1)
     a80:	4600b306 	mov.s	$f12,$f22
     a84:	46100100 	add.s	$f4,$f0,$f16
     a88:	0c000000 	jal	0 <EnVbBall_Init>
     a8c:	e7a400c0 	swc1	$f4,192(sp)
     a90:	c6320028 	lwc1	$f18,40(s1)
     a94:	4600b306 	mov.s	$f12,$f22
     a98:	46120180 	add.s	$f6,$f0,$f18
     a9c:	0c000000 	jal	0 <EnVbBall_Init>
     aa0:	e7a600c4 	swc1	$f6,196(sp)
     aa4:	c628002c 	lwc1	$f8,44(s1)
     aa8:	3c014140 	lui	at,0x4140
     aac:	44816000 	mtc1	at,$f12
     ab0:	46080280 	add.s	$f10,$f0,$f8
     ab4:	0c000000 	jal	0 <EnVbBall_Init>
     ab8:	e7aa00c8 	swc1	$f10,200(sp)
     abc:	4600040d 	trunc.w.s	$f16,$f0
     ac0:	27aa00cc 	addiu	t2,sp,204
     ac4:	afaa0010 	sw	t2,16(sp)
     ac8:	02802025 	move	a0,s4
     acc:	44088000 	mfc1	t0,$f16
     ad0:	02602825 	move	a1,s3
     ad4:	27a600c0 	addiu	a2,sp,192
     ad8:	00086400 	sll	t4,t0,0x10
     adc:	000c6c03 	sra	t5,t4,0x10
     ae0:	25af000f 	addiu	t7,t5,15
     ae4:	448f2000 	mtc1	t7,$f4
     ae8:	02003825 	move	a3,s0
     aec:	468024a0 	cvt.s.w	$f18,$f4
     af0:	0c000000 	jal	0 <EnVbBall_Init>
     af4:	e7b20014 	swc1	$f18,20(sp)
     af8:	26520001 	addiu	s2,s2,1
     afc:	00129400 	sll	s2,s2,0x10
     b00:	00129403 	sra	s2,s2,0x10
     b04:	2a41000f 	slti	at,s2,15
     b08:	1420ffbd 	bnez	at,a00 <EnVbBall_Update+0x3ec>
     b0c:	00000000 	nop
     b10:	3c0143af 	lui	at,0x43af
     b14:	4481c000 	mtc1	at,$f24
     b18:	3c013f00 	lui	at,0x3f00
     b1c:	4481b000 	mtc1	at,$f22
     b20:	3c0141f0 	lui	at,0x41f0
     b24:	4481a000 	mtc1	at,$f20
     b28:	00009025 	move	s2,zero
     b2c:	27b000b4 	addiu	s0,sp,180
     b30:	3c180000 	lui	t8,0x0
     b34:	27180000 	addiu	t8,t8,0
     b38:	8f0e0000 	lw	t6,0(t8)
     b3c:	3c0a0000 	lui	t2,0x0
     b40:	254a0000 	addiu	t2,t2,0
     b44:	ae0e0000 	sw	t6,0(s0)
     b48:	8f190004 	lw	t9,4(t8)
     b4c:	27a900a8 	addiu	t1,sp,168
     b50:	3c014100 	lui	at,0x4100
     b54:	ae190004 	sw	t9,4(s0)
     b58:	8f0e0008 	lw	t6,8(t8)
     b5c:	44816000 	mtc1	at,$f12
     b60:	ae0e0008 	sw	t6,8(s0)
     b64:	8d480000 	lw	t0,0(t2)
     b68:	8d4b0004 	lw	t3,4(t2)
     b6c:	ad280000 	sw	t0,0(t1)
     b70:	8d480008 	lw	t0,8(t2)
     b74:	ad2b0004 	sw	t3,4(t1)
     b78:	0c000000 	jal	0 <EnVbBall_Init>
     b7c:	ad280008 	sw	t0,8(t1)
     b80:	3c013f80 	lui	at,0x3f80
     b84:	44816000 	mtc1	at,$f12
     b88:	0c000000 	jal	0 <EnVbBall_Init>
     b8c:	e7a000b4 	swc1	$f0,180(sp)
     b90:	3c014100 	lui	at,0x4100
     b94:	44816000 	mtc1	at,$f12
     b98:	0c000000 	jal	0 <EnVbBall_Init>
     b9c:	e7a000b8 	swc1	$f0,184(sp)
     ba0:	e7a000bc 	swc1	$f0,188(sp)
     ba4:	e7b600ac 	swc1	$f22,172(sp)
     ba8:	0c000000 	jal	0 <EnVbBall_Init>
     bac:	4600a306 	mov.s	$f12,$f20
     bb0:	c6260024 	lwc1	$f6,36(s1)
     bb4:	4600a306 	mov.s	$f12,$f20
     bb8:	46060200 	add.s	$f8,$f0,$f6
     bbc:	0c000000 	jal	0 <EnVbBall_Init>
     bc0:	e7a8009c 	swc1	$f8,156(sp)
     bc4:	c62a0028 	lwc1	$f10,40(s1)
     bc8:	4600a306 	mov.s	$f12,$f20
     bcc:	460a0400 	add.s	$f16,$f0,$f10
     bd0:	0c000000 	jal	0 <EnVbBall_Init>
     bd4:	e7b000a0 	swc1	$f16,160(sp)
     bd8:	c624002c 	lwc1	$f4,44(s1)
     bdc:	3c0142c8 	lui	at,0x42c8
     be0:	44816000 	mtc1	at,$f12
     be4:	46040480 	add.s	$f18,$f0,$f4
     be8:	0c000000 	jal	0 <EnVbBall_Init>
     bec:	e7b200a4 	swc1	$f18,164(sp)
     bf0:	46180180 	add.s	$f6,$f0,$f24
     bf4:	27ac00a8 	addiu	t4,sp,168
     bf8:	afac0010 	sw	t4,16(sp)
     bfc:	02802025 	move	a0,s4
     c00:	e7a60014 	swc1	$f6,20(sp)
     c04:	02602825 	move	a1,s3
     c08:	27a6009c 	addiu	a2,sp,156
     c0c:	0c000000 	jal	0 <EnVbBall_Init>
     c10:	02003825 	move	a3,s0
     c14:	26520001 	addiu	s2,s2,1
     c18:	00129400 	sll	s2,s2,0x10
     c1c:	00129403 	sra	s2,s2,0x10
     c20:	2a41000a 	slti	at,s2,10
     c24:	1420ffc2 	bnez	at,b30 <EnVbBall_Update+0x51c>
     c28:	00000000 	nop
     c2c:	1000004f 	b	d6c <EnVbBall_Update+0x758>
     c30:	92220178 	lbu	v0,376(s1)
     c34:	3c0140a0 	lui	at,0x40a0
     c38:	4481c000 	mtc1	at,$f24
     c3c:	3c014120 	lui	at,0x4120
     c40:	8fb30104 	lw	s3,260(sp)
     c44:	4481b000 	mtc1	at,$f22
     c48:	3c014040 	lui	at,0x4040
     c4c:	4481a000 	mtc1	at,$f20
     c50:	27b00090 	addiu	s0,sp,144
     c54:	26731970 	addiu	s3,s3,6512
     c58:	3c0d0000 	lui	t5,0x0
     c5c:	25ad0000 	addiu	t5,t5,0
     c60:	8db80000 	lw	t8,0(t5)
     c64:	3c0e0000 	lui	t6,0x0
     c68:	25ce0000 	addiu	t6,t6,0
     c6c:	ae180000 	sw	t8,0(s0)
     c70:	8daf0004 	lw	t7,4(t5)
     c74:	27b90084 	addiu	t9,sp,132
     c78:	4600b306 	mov.s	$f12,$f22
     c7c:	ae0f0004 	sw	t7,4(s0)
     c80:	8db80008 	lw	t8,8(t5)
     c84:	ae180008 	sw	t8,8(s0)
     c88:	8dca0000 	lw	t2,0(t6)
     c8c:	8dc90004 	lw	t1,4(t6)
     c90:	af2a0000 	sw	t2,0(t9)
     c94:	8dca0008 	lw	t2,8(t6)
     c98:	af290004 	sw	t1,4(t9)
     c9c:	0c000000 	jal	0 <EnVbBall_Init>
     ca0:	af2a0008 	sw	t2,8(t9)
     ca4:	e7a00090 	swc1	$f0,144(sp)
     ca8:	0c000000 	jal	0 <EnVbBall_Init>
     cac:	4600a306 	mov.s	$f12,$f20
     cb0:	46140200 	add.s	$f8,$f0,$f20
     cb4:	4600b306 	mov.s	$f12,$f22
     cb8:	0c000000 	jal	0 <EnVbBall_Init>
     cbc:	e7a80094 	swc1	$f8,148(sp)
     cc0:	e7a00098 	swc1	$f0,152(sp)
     cc4:	0c000000 	jal	0 <EnVbBall_Init>
     cc8:	4600c306 	mov.s	$f12,$f24
     ccc:	c62a0024 	lwc1	$f10,36(s1)
     cd0:	4600c306 	mov.s	$f12,$f24
     cd4:	460a0400 	add.s	$f16,$f0,$f10
     cd8:	0c000000 	jal	0 <EnVbBall_Init>
     cdc:	e7b00078 	swc1	$f16,120(sp)
     ce0:	c6240028 	lwc1	$f4,40(s1)
     ce4:	4600c306 	mov.s	$f12,$f24
     ce8:	46040480 	add.s	$f18,$f0,$f4
     cec:	0c000000 	jal	0 <EnVbBall_Init>
     cf0:	e7b2007c 	swc1	$f18,124(sp)
     cf4:	c626002c 	lwc1	$f6,44(s1)
     cf8:	3c014140 	lui	at,0x4140
     cfc:	44816000 	mtc1	at,$f12
     d00:	46060200 	add.s	$f8,$f0,$f6
     d04:	0c000000 	jal	0 <EnVbBall_Init>
     d08:	e7a80080 	swc1	$f8,128(sp)
     d0c:	4600028d 	trunc.w.s	$f10,$f0
     d10:	27ab0084 	addiu	t3,sp,132
     d14:	afab0010 	sw	t3,16(sp)
     d18:	02802025 	move	a0,s4
     d1c:	440c5000 	mfc1	t4,$f10
     d20:	02602825 	move	a1,s3
     d24:	27a60078 	addiu	a2,sp,120
     d28:	000c6c00 	sll	t5,t4,0x10
     d2c:	000d7c03 	sra	t7,t5,0x10
     d30:	25f8000f 	addiu	t8,t7,15
     d34:	44988000 	mtc1	t8,$f16
     d38:	02003825 	move	a3,s0
     d3c:	46808120 	cvt.s.w	$f4,$f16
     d40:	0c000000 	jal	0 <EnVbBall_Init>
     d44:	e7a40014 	swc1	$f4,20(sp)
     d48:	26520001 	addiu	s2,s2,1
     d4c:	00129400 	sll	s2,s2,0x10
     d50:	00129403 	sra	s2,s2,0x10
     d54:	2a410005 	slti	at,s2,5
     d58:	1420ffbf 	bnez	at,c58 <EnVbBall_Update+0x644>
     d5c:	00000000 	nop
     d60:	0c000000 	jal	0 <EnVbBall_Init>
     d64:	02202025 	move	a0,s1
     d68:	92220178 	lbu	v0,376(s1)
     d6c:	2405083e 	li	a1,2110
     d70:	30590002 	andi	t9,v0,0x2
     d74:	13200004 	beqz	t9,d88 <EnVbBall_Update+0x774>
     d78:	304efffd 	andi	t6,v0,0xfffd
     d7c:	8e841c44 	lw	a0,7236(s4)
     d80:	0c000000 	jal	0 <EnVbBall_Init>
     d84:	a22e0178 	sb	t6,376(s1)
     d88:	26300168 	addiu	s0,s1,360
     d8c:	02002825 	move	a1,s0
     d90:	0c000000 	jal	0 <EnVbBall_Init>
     d94:	02202025 	move	a0,s1
     d98:	3c010001 	lui	at,0x1
     d9c:	34211e60 	ori	at,at,0x1e60
     da0:	02812821 	addu	a1,s4,at
     da4:	02802025 	move	a0,s4
     da8:	0c000000 	jal	0 <EnVbBall_Init>
     dac:	02003025 	move	a2,s0
     db0:	8fbf0064 	lw	ra,100(sp)
     db4:	d7b40030 	ldc1	$f20,48(sp)
     db8:	d7b60038 	ldc1	$f22,56(sp)
     dbc:	d7b80040 	ldc1	$f24,64(sp)
     dc0:	8fb0004c 	lw	s0,76(sp)
     dc4:	8fb10050 	lw	s1,80(sp)
     dc8:	8fb20054 	lw	s2,84(sp)
     dcc:	8fb30058 	lw	s3,88(sp)
     dd0:	8fb4005c 	lw	s4,92(sp)
     dd4:	8fb50060 	lw	s5,96(sp)
     dd8:	03e00008 	jr	ra
     ddc:	27bd0110 	addiu	sp,sp,272

00000de0 <EnVbBall_Draw>:
     de0:	27bdffa8 	addiu	sp,sp,-88
     de4:	afbf001c 	sw	ra,28(sp)
     de8:	afb00018 	sw	s0,24(sp)
     dec:	afa40058 	sw	a0,88(sp)
     df0:	afa5005c 	sw	a1,92(sp)
     df4:	8ca50000 	lw	a1,0(a1)
     df8:	3c060000 	lui	a2,0x0
     dfc:	24c60000 	addiu	a2,a2,0
     e00:	27a4003c 	addiu	a0,sp,60
     e04:	2407025c 	li	a3,604
     e08:	0c000000 	jal	0 <EnVbBall_Init>
     e0c:	00a08025 	move	s0,a1
     e10:	8faf005c 	lw	t7,92(sp)
     e14:	0c000000 	jal	0 <EnVbBall_Init>
     e18:	8de40000 	lw	a0,0(t7)
     e1c:	8e0202c0 	lw	v0,704(s0)
     e20:	3c19da38 	lui	t9,0xda38
     e24:	37390003 	ori	t9,t9,0x3
     e28:	24580008 	addiu	t8,v0,8
     e2c:	ae1802c0 	sw	t8,704(s0)
     e30:	ac590000 	sw	t9,0(v0)
     e34:	8fa8005c 	lw	t0,92(sp)
     e38:	3c050000 	lui	a1,0x0
     e3c:	24a50000 	addiu	a1,a1,0
     e40:	8d040000 	lw	a0,0(t0)
     e44:	2406025f 	li	a2,607
     e48:	0c000000 	jal	0 <EnVbBall_Init>
     e4c:	afa20038 	sw	v0,56(sp)
     e50:	8fa30038 	lw	v1,56(sp)
     e54:	3c040601 	lui	a0,0x601
     e58:	24849f20 	addiu	a0,a0,-24800
     e5c:	ac620004 	sw	v0,4(v1)
     e60:	8fa90058 	lw	t1,88(sp)
     e64:	00046100 	sll	t4,a0,0x4
     e68:	000c6f02 	srl	t5,t4,0x1c
     e6c:	852a001c 	lh	t2,28(t1)
     e70:	000d7080 	sll	t6,t5,0x2
     e74:	3c0bde00 	lui	t3,0xde00
     e78:	294100c8 	slti	at,t2,200
     e7c:	14200016 	bnez	at,ed8 <EnVbBall_Draw+0xf8>
     e80:	3c0f0000 	lui	t7,0x0
     e84:	8e0202c0 	lw	v0,704(s0)
     e88:	3c040601 	lui	a0,0x601
     e8c:	2484b2f8 	addiu	a0,a0,-19720
     e90:	00046900 	sll	t5,a0,0x4
     e94:	000d7702 	srl	t6,t5,0x1c
     e98:	244b0008 	addiu	t3,v0,8
     e9c:	ae0b02c0 	sw	t3,704(s0)
     ea0:	000e7880 	sll	t7,t6,0x2
     ea4:	3c0cde00 	lui	t4,0xde00
     ea8:	3c180000 	lui	t8,0x0
     eac:	030fc021 	addu	t8,t8,t7
     eb0:	3c0100ff 	lui	at,0xff
     eb4:	ac4c0000 	sw	t4,0(v0)
     eb8:	8f180000 	lw	t8,0(t8)
     ebc:	3421ffff 	ori	at,at,0xffff
     ec0:	0081c824 	and	t9,a0,at
     ec4:	3c018000 	lui	at,0x8000
     ec8:	03194021 	addu	t0,t8,t9
     ecc:	01014821 	addu	t1,t0,at
     ed0:	1000004e 	b	100c <EnVbBall_Draw+0x22c>
     ed4:	ac490004 	sw	t1,4(v0)
     ed8:	8e0202c0 	lw	v0,704(s0)
     edc:	01ee7821 	addu	t7,t7,t6
     ee0:	3c0100ff 	lui	at,0xff
     ee4:	244a0008 	addiu	t2,v0,8
     ee8:	ae0a02c0 	sw	t2,704(s0)
     eec:	ac4b0000 	sw	t3,0(v0)
     ef0:	8def0000 	lw	t7,0(t7)
     ef4:	3421ffff 	ori	at,at,0xffff
     ef8:	0081c024 	and	t8,a0,at
     efc:	3c018000 	lui	at,0x8000
     f00:	01f8c821 	addu	t9,t7,t8
     f04:	03214021 	addu	t0,t9,at
     f08:	ac480004 	sw	t0,4(v0)
     f0c:	8fa9005c 	lw	t1,92(sp)
     f10:	0c000000 	jal	0 <EnVbBall_Init>
     f14:	8d240000 	lw	a0,0(t1)
     f18:	8e0202d0 	lw	v0,720(s0)
     f1c:	8fa40058 	lw	a0,88(sp)
     f20:	3c0bfa00 	lui	t3,0xfa00
     f24:	244a0008 	addiu	t2,v0,8
     f28:	ae0a02d0 	sw	t2,720(s0)
     f2c:	ac4b0000 	sw	t3,0(v0)
     f30:	c4840164 	lwc1	$f4,356(a0)
     f34:	3c0142c8 	lui	at,0x42c8
     f38:	44817000 	mtc1	at,$f14
     f3c:	4600218d 	trunc.w.s	$f6,$f4
     f40:	00003825 	move	a3,zero
     f44:	440f3000 	mfc1	t7,$f6
     f48:	00000000 	nop
     f4c:	31f800ff 	andi	t8,t7,0xff
     f50:	ac580004 	sw	t8,4(v0)
     f54:	8c86002c 	lw	a2,44(a0)
     f58:	0c000000 	jal	0 <EnVbBall_Init>
     f5c:	c48c0024 	lwc1	$f12,36(a0)
     f60:	8fb90058 	lw	t9,88(sp)
     f64:	3c013f80 	lui	at,0x3f80
     f68:	44817000 	mtc1	at,$f14
     f6c:	c72c0160 	lwc1	$f12,352(t9)
     f70:	24070001 	li	a3,1
     f74:	44066000 	mfc1	a2,$f12
     f78:	0c000000 	jal	0 <EnVbBall_Init>
     f7c:	00000000 	nop
     f80:	8e0202d0 	lw	v0,720(s0)
     f84:	3c09da38 	lui	t1,0xda38
     f88:	35290003 	ori	t1,t1,0x3
     f8c:	24480008 	addiu	t0,v0,8
     f90:	ae0802d0 	sw	t0,720(s0)
     f94:	ac490000 	sw	t1,0(v0)
     f98:	8faa005c 	lw	t2,92(sp)
     f9c:	3c050000 	lui	a1,0x0
     fa0:	24a50000 	addiu	a1,a1,0
     fa4:	8d440000 	lw	a0,0(t2)
     fa8:	24060272 	li	a2,626
     fac:	0c000000 	jal	0 <EnVbBall_Init>
     fb0:	afa20028 	sw	v0,40(sp)
     fb4:	8fa30028 	lw	v1,40(sp)
     fb8:	3c040405 	lui	a0,0x405
     fbc:	24849210 	addiu	a0,a0,-28144
     fc0:	ac620004 	sw	v0,4(v1)
     fc4:	8e0202d0 	lw	v0,720(s0)
     fc8:	00046900 	sll	t5,a0,0x4
     fcc:	000d7702 	srl	t6,t5,0x1c
     fd0:	244b0008 	addiu	t3,v0,8
     fd4:	ae0b02d0 	sw	t3,720(s0)
     fd8:	000e7880 	sll	t7,t6,0x2
     fdc:	3c0cde00 	lui	t4,0xde00
     fe0:	3c180000 	lui	t8,0x0
     fe4:	030fc021 	addu	t8,t8,t7
     fe8:	3c0100ff 	lui	at,0xff
     fec:	ac4c0000 	sw	t4,0(v0)
     ff0:	8f180000 	lw	t8,0(t8)
     ff4:	3421ffff 	ori	at,at,0xffff
     ff8:	0081c824 	and	t9,a0,at
     ffc:	3c018000 	lui	at,0x8000
    1000:	03194021 	addu	t0,t8,t9
    1004:	01014821 	addu	t1,t0,at
    1008:	ac490004 	sw	t1,4(v0)
    100c:	8faa005c 	lw	t2,92(sp)
    1010:	3c060000 	lui	a2,0x0
    1014:	24c60000 	addiu	a2,a2,0
    1018:	27a4003c 	addiu	a0,sp,60
    101c:	24070278 	li	a3,632
    1020:	0c000000 	jal	0 <EnVbBall_Init>
    1024:	8d450000 	lw	a1,0(t2)
    1028:	8fbf001c 	lw	ra,28(sp)
    102c:	8fb00018 	lw	s0,24(sp)
    1030:	27bd0058 	addiu	sp,sp,88
    1034:	03e00008 	jr	ra
    1038:	00000000 	nop
    103c:	00000000 	nop
