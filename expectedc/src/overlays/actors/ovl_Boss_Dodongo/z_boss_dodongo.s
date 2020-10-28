
build/src/overlays/actors/ovl_Boss_Dodongo/z_boss_dodongo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808C1190>:
       0:	afa60008 	sw	a2,8(sp)
       4:	00063400 	sll	a2,a2,0x10
       8:	00063403 	sra	a2,a2,0x10
       c:	00c57021 	addu	t6,a2,a1
      10:	91cf0000 	lbu	t7,0(t6)
      14:	11e00008 	beqz	t7,38 <func_808C1190+0x38>
      18:	00000000 	nop
      1c:	04c10003 	bgez	a2,2c <func_808C1190+0x2c>
      20:	0006c043 	sra	t8,a2,0x1
      24:	24c10001 	addiu	at,a2,1
      28:	0001c043 	sra	t8,at,0x1
      2c:	0018c840 	sll	t9,t8,0x1
      30:	00994021 	addu	t0,a0,t9
      34:	a5000000 	sh	zero,0(t0)
      38:	03e00008 	jr	ra
      3c:	00000000 	nop

00000040 <func_808C11D0>:
      40:	afa60008 	sw	a2,8(sp)
      44:	00063400 	sll	a2,a2,0x10
      48:	00063403 	sra	a2,a2,0x10
      4c:	00c57021 	addu	t6,a2,a1
      50:	91cf0000 	lbu	t7,0(t6)
      54:	0006c040 	sll	t8,a2,0x1
      58:	0098c821 	addu	t9,a0,t8
      5c:	11e00002 	beqz	t7,68 <func_808C11D0+0x28>
      60:	00000000 	nop
      64:	a7200000 	sh	zero,0(t9)
      68:	03e00008 	jr	ra
      6c:	00000000 	nop

00000070 <func_808C1200>:
      70:	afa60008 	sw	a2,8(sp)
      74:	00063400 	sll	a2,a2,0x10
      78:	00063403 	sra	a2,a2,0x10
      7c:	00c57021 	addu	t6,a2,a1
      80:	91cf0000 	lbu	t7,0(t6)
      84:	0006c040 	sll	t8,a2,0x1
      88:	0098c821 	addu	t9,a0,t8
      8c:	11e00002 	beqz	t7,98 <func_808C1200+0x28>
      90:	00000000 	nop
      94:	a7200000 	sh	zero,0(t9)
      98:	03e00008 	jr	ra
      9c:	00000000 	nop

000000a0 <func_808C1230>:
      a0:	afa60008 	sw	a2,8(sp)
      a4:	00063400 	sll	a2,a2,0x10
      a8:	00063403 	sra	a2,a2,0x10
      ac:	00c57021 	addu	t6,a2,a1
      b0:	91cf0000 	lbu	t7,0(t6)
      b4:	30d900f0 	andi	t9,a2,0xf0
      b8:	00194040 	sll	t0,t9,0x1
      bc:	11e00008 	beqz	t7,e0 <func_808C1230+0x40>
      c0:	30d8000f 	andi	t8,a2,0xf
      c4:	03084821 	addu	t1,t8,t0
      c8:	00095400 	sll	t2,t1,0x10
      cc:	000a5c03 	sra	t3,t2,0x10
      d0:	000b6040 	sll	t4,t3,0x1
      d4:	008c1021 	addu	v0,a0,t4
      d8:	a4400020 	sh	zero,32(v0)
      dc:	a4400000 	sh	zero,0(v0)
      e0:	03e00008 	jr	ra
      e4:	00000000 	nop

000000e8 <func_808C1278>:
      e8:	afa60008 	sw	a2,8(sp)
      ec:	00063400 	sll	a2,a2,0x10
      f0:	00063403 	sra	a2,a2,0x10
      f4:	00c57021 	addu	t6,a2,a1
      f8:	91cf0000 	lbu	t7,0(t6)
      fc:	30d8000f 	andi	t8,a2,0xf
     100:	0018c840 	sll	t9,t8,0x1
     104:	11e00009 	beqz	t7,12c <func_808C1278+0x44>
     108:	30c800f0 	andi	t0,a2,0xf0
     10c:	00084840 	sll	t1,t0,0x1
     110:	03295021 	addu	t2,t9,t1
     114:	000a5c00 	sll	t3,t2,0x10
     118:	000b6403 	sra	t4,t3,0x10
     11c:	000c6840 	sll	t5,t4,0x1
     120:	008d1021 	addu	v0,a0,t5
     124:	a4400002 	sh	zero,2(v0)
     128:	a4400000 	sh	zero,0(v0)
     12c:	03e00008 	jr	ra
     130:	00000000 	nop

00000134 <func_808C12C4>:
     134:	3c020601 	lui	v0,0x601
     138:	27bdffd0 	addiu	sp,sp,-48
     13c:	24425890 	addiu	v0,v0,22672
     140:	afb20020 	sw	s2,32(sp)
     144:	00027100 	sll	t6,v0,0x4
     148:	3c120000 	lui	s2,0x0
     14c:	000e7f02 	srl	t7,t6,0x1c
     150:	26520000 	addiu	s2,s2,0
     154:	000fc080 	sll	t8,t7,0x2
     158:	afb30024 	sw	s3,36(sp)
     15c:	0258c821 	addu	t9,s2,t8
     160:	8f280000 	lw	t0,0(t9)
     164:	3c1300ff 	lui	s3,0xff
     168:	afb1001c 	sw	s1,28(sp)
     16c:	00058c00 	sll	s1,a1,0x10
     170:	3673ffff 	ori	s3,s3,0xffff
     174:	00118c03 	sra	s1,s1,0x10
     178:	afb40028 	sw	s4,40(sp)
     17c:	afb00018 	sw	s0,24(sp)
     180:	00534824 	and	t1,v0,s3
     184:	00808025 	move	s0,a0
     188:	3c148000 	lui	s4,0x8000
     18c:	afbf002c 	sw	ra,44(sp)
     190:	afa50034 	sw	a1,52(sp)
     194:	00113400 	sll	a2,s1,0x10
     198:	01095021 	addu	t2,t0,t1
     19c:	01542021 	addu	a0,t2,s4
     1a0:	00063403 	sra	a2,a2,0x10
     1a4:	0c000000 	jal	0 <func_808C1190>
     1a8:	02002825 	move	a1,s0
     1ac:	3c020601 	lui	v0,0x601
     1b0:	24427210 	addiu	v0,v0,29200
     1b4:	00025900 	sll	t3,v0,0x4
     1b8:	000b6702 	srl	t4,t3,0x1c
     1bc:	000c6880 	sll	t5,t4,0x2
     1c0:	024d7021 	addu	t6,s2,t5
     1c4:	8dcf0000 	lw	t7,0(t6)
     1c8:	0053c024 	and	t8,v0,s3
     1cc:	00113400 	sll	a2,s1,0x10
     1d0:	01f8c821 	addu	t9,t7,t8
     1d4:	03342021 	addu	a0,t9,s4
     1d8:	00063403 	sra	a2,a2,0x10
     1dc:	0c000000 	jal	0 <func_808C1190>
     1e0:	02002825 	move	a1,s0
     1e4:	3c020601 	lui	v0,0x601
     1e8:	24425d90 	addiu	v0,v0,23952
     1ec:	00024100 	sll	t0,v0,0x4
     1f0:	00084f02 	srl	t1,t0,0x1c
     1f4:	00095080 	sll	t2,t1,0x2
     1f8:	024a5821 	addu	t3,s2,t2
     1fc:	8d6c0000 	lw	t4,0(t3)
     200:	00536824 	and	t5,v0,s3
     204:	00113400 	sll	a2,s1,0x10
     208:	018d7021 	addu	t6,t4,t5
     20c:	01d42021 	addu	a0,t6,s4
     210:	00063403 	sra	a2,a2,0x10
     214:	0c000000 	jal	0 <func_808C1190>
     218:	02002825 	move	a1,s0
     21c:	3c020601 	lui	v0,0x601
     220:	24426390 	addiu	v0,v0,25488
     224:	00027900 	sll	t7,v0,0x4
     228:	000fc702 	srl	t8,t7,0x1c
     22c:	0018c880 	sll	t9,t8,0x2
     230:	02594021 	addu	t0,s2,t9
     234:	8d090000 	lw	t1,0(t0)
     238:	00535024 	and	t2,v0,s3
     23c:	00113400 	sll	a2,s1,0x10
     240:	012a5821 	addu	t3,t1,t2
     244:	01742021 	addu	a0,t3,s4
     248:	00063403 	sra	a2,a2,0x10
     24c:	0c000000 	jal	0 <func_808C1190>
     250:	02002825 	move	a1,s0
     254:	3c020601 	lui	v0,0x601
     258:	24426590 	addiu	v0,v0,26000
     25c:	00026100 	sll	t4,v0,0x4
     260:	000c6f02 	srl	t5,t4,0x1c
     264:	000d7080 	sll	t6,t5,0x2
     268:	024e7821 	addu	t7,s2,t6
     26c:	8df80000 	lw	t8,0(t7)
     270:	0053c824 	and	t9,v0,s3
     274:	00113400 	sll	a2,s1,0x10
     278:	03194021 	addu	t0,t8,t9
     27c:	01142021 	addu	a0,t0,s4
     280:	00063403 	sra	a2,a2,0x10
     284:	0c000000 	jal	0 <func_808C1190>
     288:	02002825 	move	a1,s0
     28c:	3c020601 	lui	v0,0x601
     290:	24426790 	addiu	v0,v0,26512
     294:	00024900 	sll	t1,v0,0x4
     298:	00095702 	srl	t2,t1,0x1c
     29c:	000a5880 	sll	t3,t2,0x2
     2a0:	024b6021 	addu	t4,s2,t3
     2a4:	8d8d0000 	lw	t5,0(t4)
     2a8:	00537024 	and	t6,v0,s3
     2ac:	00113400 	sll	a2,s1,0x10
     2b0:	01ae7821 	addu	t7,t5,t6
     2b4:	01f42021 	addu	a0,t7,s4
     2b8:	00063403 	sra	a2,a2,0x10
     2bc:	0c000000 	jal	0 <func_808C1190>
     2c0:	02002825 	move	a1,s0
     2c4:	3c020601 	lui	v0,0x601
     2c8:	24425990 	addiu	v0,v0,22928
     2cc:	0002c100 	sll	t8,v0,0x4
     2d0:	0018cf02 	srl	t9,t8,0x1c
     2d4:	00194080 	sll	t0,t9,0x2
     2d8:	02484821 	addu	t1,s2,t0
     2dc:	8d2a0000 	lw	t2,0(t1)
     2e0:	00535824 	and	t3,v0,s3
     2e4:	00113400 	sll	a2,s1,0x10
     2e8:	014b6021 	addu	t4,t2,t3
     2ec:	01942021 	addu	a0,t4,s4
     2f0:	00063403 	sra	a2,a2,0x10
     2f4:	0c000000 	jal	0 <func_808C1190>
     2f8:	02002825 	move	a1,s0
     2fc:	3c020601 	lui	v0,0x601
     300:	24425f90 	addiu	v0,v0,24464
     304:	00026900 	sll	t5,v0,0x4
     308:	000d7702 	srl	t6,t5,0x1c
     30c:	000e7880 	sll	t7,t6,0x2
     310:	024fc021 	addu	t8,s2,t7
     314:	8f190000 	lw	t9,0(t8)
     318:	00534024 	and	t0,v0,s3
     31c:	00113400 	sll	a2,s1,0x10
     320:	03284821 	addu	t1,t9,t0
     324:	01342021 	addu	a0,t1,s4
     328:	00063403 	sra	a2,a2,0x10
     32c:	0c000000 	jal	0 <func_808C1190>
     330:	02002825 	move	a1,s0
     334:	3c020601 	lui	v0,0x601
     338:	24426990 	addiu	v0,v0,27024
     33c:	00025100 	sll	t2,v0,0x4
     340:	000a5f02 	srl	t3,t2,0x1c
     344:	000b6080 	sll	t4,t3,0x2
     348:	024c6821 	addu	t5,s2,t4
     34c:	8dae0000 	lw	t6,0(t5)
     350:	00537824 	and	t7,v0,s3
     354:	00113400 	sll	a2,s1,0x10
     358:	01cfc021 	addu	t8,t6,t7
     35c:	03142021 	addu	a0,t8,s4
     360:	00063403 	sra	a2,a2,0x10
     364:	0c000000 	jal	0 <func_808C1190>
     368:	02002825 	move	a1,s0
     36c:	3c020601 	lui	v0,0x601
     370:	24426e10 	addiu	v0,v0,28176
     374:	0002c900 	sll	t9,v0,0x4
     378:	00194702 	srl	t0,t9,0x1c
     37c:	00084880 	sll	t1,t0,0x2
     380:	02495021 	addu	t2,s2,t1
     384:	8d4b0000 	lw	t3,0(t2)
     388:	00536024 	and	t4,v0,s3
     38c:	00113400 	sll	a2,s1,0x10
     390:	016c6821 	addu	t5,t3,t4
     394:	01b42021 	addu	a0,t5,s4
     398:	00063403 	sra	a2,a2,0x10
     39c:	0c000000 	jal	0 <func_808C1190>
     3a0:	02002825 	move	a1,s0
     3a4:	8fbf002c 	lw	ra,44(sp)
     3a8:	8fb00018 	lw	s0,24(sp)
     3ac:	8fb1001c 	lw	s1,28(sp)
     3b0:	8fb20020 	lw	s2,32(sp)
     3b4:	8fb30024 	lw	s3,36(sp)
     3b8:	8fb40028 	lw	s4,40(sp)
     3bc:	03e00008 	jr	ra
     3c0:	27bd0030 	addiu	sp,sp,48

000003c4 <func_808C1554>:
     3c4:	44862000 	mtc1	a2,$f4
     3c8:	3c014248 	lui	at,0x4248
     3cc:	44813000 	mtc1	at,$f6
     3d0:	46802020 	cvt.s.w	$f0,$f4
     3d4:	3c0142c8 	lui	at,0x42c8
     3d8:	44815000 	mtc1	at,$f10
     3dc:	27bdefa0 	addiu	sp,sp,-4192
     3e0:	3c020000 	lui	v0,0x0
     3e4:	00047100 	sll	t6,a0,0x4
     3e8:	46060202 	mul.s	$f8,$f0,$f6
     3ec:	00055900 	sll	t3,a1,0x4
     3f0:	24420000 	addiu	v0,v0,0
     3f4:	000e7f02 	srl	t7,t6,0x1c
     3f8:	000b6702 	srl	t4,t3,0x1c
     3fc:	000fc080 	sll	t8,t7,0x2
     400:	000c6880 	sll	t5,t4,0x2
     404:	460a4403 	div.s	$f16,$f8,$f10
     408:	afb2002c 	sw	s2,44(sp)
     40c:	3c0300ff 	lui	v1,0xff
     410:	0058c821 	addu	t9,v0,t8
     414:	004d7021 	addu	t6,v0,t5
     418:	8f280000 	lw	t0,0(t9)
     41c:	8dcf0000 	lw	t7,0(t6)
     420:	3463ffff 	ori	v1,v1,0xffff
     424:	f7b40010 	sdc1	$f20,16(sp)
     428:	4487a000 	mtc1	a3,$f20
     42c:	3c078000 	lui	a3,0x8000
     430:	00834824 	and	t1,a0,v1
     434:	00a3c024 	and	t8,a1,v1
     438:	afb30030 	sw	s3,48(sp)
     43c:	afb10028 	sw	s1,40(sp)
     440:	afb00024 	sw	s0,36(sp)
     444:	f7b60018 	sdc1	$f22,24(sp)
     448:	3c010000 	lui	at,0x0
     44c:	01095021 	addu	t2,t0,t1
     450:	01f8c821 	addu	t9,t7,t8
     454:	afbf0034 	sw	ra,52(sp)
     458:	01479821 	addu	s3,t2,a3
     45c:	03278821 	addu	s1,t9,a3
     460:	4600848d 	trunc.w.s	$f18,$f16
     464:	c4360000 	lwc1	$f22,0(at)
     468:	00008025 	move	s0,zero
     46c:	e7a0004c 	swc1	$f0,76(sp)
     470:	44129000 	mfc1	s2,$f18
     474:	00000000 	nop
     478:	00129400 	sll	s2,s2,0x10
     47c:	00129403 	sra	s2,s2,0x10
     480:	c7a0004c 	lwc1	$f0,76(sp)
     484:	06010003 	bgez	s0,494 <func_808C1554+0xd0>
     488:	00104943 	sra	t1,s0,0x5
     48c:	2601001f 	addiu	at,s0,31
     490:	00014943 	sra	t1,at,0x5
     494:	01325021 	addu	t2,t1,s2
     498:	314b001f 	andi	t3,t2,0x1f
     49c:	448b2000 	mtc1	t3,$f4
     4a0:	00000000 	nop
     4a4:	468021a0 	cvt.s.w	$f6,$f4
     4a8:	46163302 	mul.s	$f12,$f6,$f22
     4ac:	0c000000 	jal	0 <func_808C1190>
     4b0:	00000000 	nop
     4b4:	46140202 	mul.s	$f8,$f0,$f20
     4b8:	00106040 	sll	t4,s0,0x1
     4bc:	00107040 	sll	t6,s0,0x1
     4c0:	26100020 	addiu	s0,s0,32
     4c4:	00108400 	sll	s0,s0,0x10
     4c8:	27ad0054 	addiu	t5,sp,84
     4cc:	00108403 	sra	s0,s0,0x10
     4d0:	4600428d 	trunc.w.s	$f10,$f8
     4d4:	018d1821 	addu	v1,t4,t5
     4d8:	022e2021 	addu	a0,s1,t6
     4dc:	00001025 	move	v0,zero
     4e0:	44055000 	mfc1	a1,$f10
     4e4:	00000000 	nop
     4e8:	00052c00 	sll	a1,a1,0x10
     4ec:	00052c03 	sra	a1,a1,0x10
     4f0:	0002c040 	sll	t8,v0,0x1
     4f4:	00a24821 	addu	t1,a1,v0
     4f8:	24420001 	addiu	v0,v0,1
     4fc:	00021400 	sll	v0,v0,0x10
     500:	312a001f 	andi	t2,t1,0x1f
     504:	0098c821 	addu	t9,a0,t8
     508:	97280000 	lhu	t0,0(t9)
     50c:	00021403 	sra	v0,v0,0x10
     510:	000a5840 	sll	t3,t2,0x1
     514:	28410020 	slti	at,v0,32
     518:	006b6021 	addu	t4,v1,t3
     51c:	1420fff4 	bnez	at,4f0 <func_808C1554+0x12c>
     520:	a5880000 	sh	t0,0(t4)
     524:	2a010800 	slti	at,s0,2048
     528:	5420ffd6 	bnezl	at,484 <func_808C1554+0xc0>
     52c:	c7a0004c 	lwc1	$f0,76(sp)
     530:	3c0142a0 	lui	at,0x42a0
     534:	44819000 	mtc1	at,$f18
     538:	c7b0004c 	lwc1	$f16,76(sp)
     53c:	3c0142c8 	lui	at,0x42c8
     540:	44813000 	mtc1	at,$f6
     544:	46128102 	mul.s	$f4,$f16,$f18
     548:	00008025 	move	s0,zero
     54c:	46062203 	div.s	$f8,$f4,$f6
     550:	4600428d 	trunc.w.s	$f10,$f8
     554:	44115000 	mfc1	s1,$f10
     558:	00000000 	nop
     55c:	00118c00 	sll	s1,s1,0x10
     560:	00118c03 	sra	s1,s1,0x10
     564:	02117021 	addu	t6,s0,s1
     568:	31cf001f 	andi	t7,t6,0x1f
     56c:	448f8000 	mtc1	t7,$f16
     570:	00000000 	nop
     574:	468084a0 	cvt.s.w	$f18,$f16
     578:	46169302 	mul.s	$f12,$f18,$f22
     57c:	0c000000 	jal	0 <func_808C1190>
     580:	00000000 	nop
     584:	46140102 	mul.s	$f4,$f0,$f20
     588:	0010c040 	sll	t8,s0,0x1
     58c:	00104840 	sll	t1,s0,0x1
     590:	26100001 	addiu	s0,s0,1
     594:	00108400 	sll	s0,s0,0x10
     598:	27b90054 	addiu	t9,sp,84
     59c:	00108403 	sra	s0,s0,0x10
     5a0:	4600218d 	trunc.w.s	$f6,$f4
     5a4:	03191821 	addu	v1,t8,t9
     5a8:	02692021 	addu	a0,s3,t1
     5ac:	00001025 	move	v0,zero
     5b0:	44053000 	mfc1	a1,$f6
     5b4:	00000000 	nop
     5b8:	00052c00 	sll	a1,a1,0x10
     5bc:	00052c03 	sra	a1,a1,0x10
     5c0:	00052940 	sll	a1,a1,0x5
     5c4:	00052c00 	sll	a1,a1,0x10
     5c8:	00052c03 	sra	a1,a1,0x10
     5cc:	00a26821 	addu	t5,a1,v0
     5d0:	31ae07ff 	andi	t6,t5,0x7ff
     5d4:	00025840 	sll	t3,v0,0x1
     5d8:	24420020 	addiu	v0,v0,32
     5dc:	000e7c00 	sll	t7,t6,0x10
     5e0:	00021400 	sll	v0,v0,0x10
     5e4:	000fc403 	sra	t8,t7,0x10
     5e8:	006b4021 	addu	t0,v1,t3
     5ec:	950c0000 	lhu	t4,0(t0)
     5f0:	00021403 	sra	v0,v0,0x10
     5f4:	0018c840 	sll	t9,t8,0x1
     5f8:	28410800 	slti	at,v0,2048
     5fc:	00994821 	addu	t1,a0,t9
     600:	1420fff2 	bnez	at,5cc <func_808C1554+0x208>
     604:	a52c0000 	sh	t4,0(t1)
     608:	2a010020 	slti	at,s0,32
     60c:	5420ffd6 	bnezl	at,568 <func_808C1554+0x1a4>
     610:	02117021 	addu	t6,s0,s1
     614:	8fbf0034 	lw	ra,52(sp)
     618:	d7b40010 	ldc1	$f20,16(sp)
     61c:	d7b60018 	ldc1	$f22,24(sp)
     620:	8fb00024 	lw	s0,36(sp)
     624:	8fb10028 	lw	s1,40(sp)
     628:	8fb2002c 	lw	s2,44(sp)
     62c:	8fb30030 	lw	s3,48(sp)
     630:	03e00008 	jr	ra
     634:	27bd1060 	addiu	sp,sp,4192

00000638 <func_808C17C8>:
     638:	27bdffd8 	addiu	sp,sp,-40
     63c:	afb00018 	sw	s0,24(sp)
     640:	87b0003e 	lh	s0,62(sp)
     644:	3c030001 	lui	v1,0x1
     648:	afbf001c 	sw	ra,28(sp)
     64c:	00641821 	addu	v1,v1,a0
     650:	8c631e10 	lw	v1,7696(v1)
     654:	1a00002d 	blez	s0,70c <func_808C17C8+0xd4>
     658:	00001025 	move	v0,zero
     65c:	906e0024 	lbu	t6,36(v1)
     660:	24420001 	addiu	v0,v0,1
     664:	00021400 	sll	v0,v0,0x10
     668:	15c00025 	bnez	t6,700 <func_808C17C8+0xc8>
     66c:	00021403 	sra	v0,v0,0x10
     670:	240f0001 	li	t7,1
     674:	a06f0024 	sb	t7,36(v1)
     678:	8cb90000 	lw	t9,0(a1)
     67c:	3c01447a 	lui	at,0x447a
     680:	44813000 	mtc1	at,$f6
     684:	ac790000 	sw	t9,0(v1)
     688:	8cb80004 	lw	t8,4(a1)
     68c:	240c00ff 	li	t4,255
     690:	3c014120 	lui	at,0x4120
     694:	ac780004 	sw	t8,4(v1)
     698:	8cb90008 	lw	t9,8(a1)
     69c:	44816000 	mtc1	at,$f12
     6a0:	ac790008 	sw	t9,8(v1)
     6a4:	8cc90000 	lw	t1,0(a2)
     6a8:	ac69000c 	sw	t1,12(v1)
     6ac:	8cc80004 	lw	t0,4(a2)
     6b0:	ac680010 	sw	t0,16(v1)
     6b4:	8cc90008 	lw	t1,8(a2)
     6b8:	ac690014 	sw	t1,20(v1)
     6bc:	8ceb0000 	lw	t3,0(a3)
     6c0:	ac6b0018 	sw	t3,24(v1)
     6c4:	8cea0004 	lw	t2,4(a3)
     6c8:	ac6a001c 	sw	t2,28(v1)
     6cc:	8ceb0008 	lw	t3,8(a3)
     6d0:	ac6b0020 	sw	t3,32(v1)
     6d4:	c7a40038 	lwc1	$f4,56(sp)
     6d8:	a46c002a 	sh	t4,42(v1)
     6dc:	46062203 	div.s	$f8,$f4,$f6
     6e0:	e468002c 	swc1	$f8,44(v1)
     6e4:	0c000000 	jal	0 <func_808C1190>
     6e8:	afa30020 	sw	v1,32(sp)
     6ec:	4600028d 	trunc.w.s	$f10,$f0
     6f0:	8fa30020 	lw	v1,32(sp)
     6f4:	44185000 	mfc1	t8,$f10
     6f8:	10000004 	b	70c <func_808C17C8+0xd4>
     6fc:	a0780025 	sb	t8,37(v1)
     700:	0050082a 	slt	at,v0,s0
     704:	1420ffd5 	bnez	at,65c <func_808C17C8+0x24>
     708:	24630030 	addiu	v1,v1,48
     70c:	8fbf001c 	lw	ra,28(sp)
     710:	8fb00018 	lw	s0,24(sp)
     714:	27bd0028 	addiu	sp,sp,40
     718:	03e00008 	jr	ra
     71c:	00000000 	nop

00000720 <func_808C18B0>:
     720:	27bdffe8 	addiu	sp,sp,-24
     724:	afbf0014 	sw	ra,20(sp)
     728:	8ca61c4c 	lw	a2,7244(a1)
     72c:	3c014220 	lui	at,0x4220
     730:	00001025 	move	v0,zero
     734:	10c00026 	beqz	a2,7d0 <func_808C18B0+0xb0>
     738:	00000000 	nop
     73c:	44818000 	mtc1	at,$f16
     740:	00000000 	nop
     744:	54c40004 	bnel	a2,a0,758 <func_808C18B0+0x38>
     748:	c4c40024 	lwc1	$f4,36(a2)
     74c:	1000001e 	b	7c8 <func_808C18B0+0xa8>
     750:	8cc60124 	lw	a2,292(a2)
     754:	c4c40024 	lwc1	$f4,36(a2)
     758:	c486041c 	lwc1	$f6,1052(a0)
     75c:	c4c80028 	lwc1	$f8,40(a2)
     760:	c48a0420 	lwc1	$f10,1056(a0)
     764:	46062081 	sub.s	$f2,$f4,$f6
     768:	c4840424 	lwc1	$f4,1060(a0)
     76c:	c4d2002c 	lwc1	$f18,44(a2)
     770:	460a4301 	sub.s	$f12,$f8,$f10
     774:	46001005 	abs.s	$f0,$f2
     778:	46049381 	sub.s	$f14,$f18,$f4
     77c:	4610003c 	c.lt.s	$f0,$f16
     780:	00000000 	nop
     784:	45020010 	bc1fl	7c8 <func_808C18B0+0xa8>
     788:	8cc60124 	lw	a2,292(a2)
     78c:	46006005 	abs.s	$f0,$f12
     790:	4610003c 	c.lt.s	$f0,$f16
     794:	00000000 	nop
     798:	4502000b 	bc1fl	7c8 <func_808C18B0+0xa8>
     79c:	8cc60124 	lw	a2,292(a2)
     7a0:	46007005 	abs.s	$f0,$f14
     7a4:	4610003c 	c.lt.s	$f0,$f16
     7a8:	00000000 	nop
     7ac:	45020006 	bc1fl	7c8 <func_808C18B0+0xa8>
     7b0:	8cc60124 	lw	a2,292(a2)
     7b4:	0c000000 	jal	0 <func_808C1190>
     7b8:	00c02025 	move	a0,a2
     7bc:	10000004 	b	7d0 <func_808C18B0+0xb0>
     7c0:	24020001 	li	v0,1
     7c4:	8cc60124 	lw	a2,292(a2)
     7c8:	14c0ffde 	bnez	a2,744 <func_808C18B0+0x24>
     7cc:	00000000 	nop
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	27bd0018 	addiu	sp,sp,24
     7d8:	03e00008 	jr	ra
     7dc:	00000000 	nop

000007e0 <BossDodongo_Init>:
     7e0:	27bdffa0 	addiu	sp,sp,-96
     7e4:	afb30040 	sw	s3,64(sp)
     7e8:	3c010001 	lui	at,0x1
     7ec:	00a09825 	move	s3,a1
     7f0:	00250821 	addu	at,at,a1
     7f4:	afbf0044 	sw	ra,68(sp)
     7f8:	afb2003c 	sw	s2,60(sp)
     7fc:	afb10038 	sw	s1,56(sp)
     800:	afb00034 	sw	s0,52(sp)
     804:	248e0920 	addiu	t6,a0,2336
     808:	3c050000 	lui	a1,0x0
     80c:	00808025 	move	s0,a0
     810:	ac2e1e10 	sw	t6,7696(at)
     814:	0c000000 	jal	0 <func_808C1190>
     818:	24a50000 	addiu	a1,a1,0
     81c:	3c05460f 	lui	a1,0x460f
     820:	3c060000 	lui	a2,0x0
     824:	24c60000 	addiu	a2,a2,0
     828:	34a5c000 	ori	a1,a1,0xc000
     82c:	260400b4 	addiu	a0,s0,180
     830:	0c000000 	jal	0 <func_808C1190>
     834:	3c07437a 	lui	a3,0x437a
     838:	3c053c23 	lui	a1,0x3c23
     83c:	34a5d70a 	ori	a1,a1,0xd70a
     840:	0c000000 	jal	0 <func_808C1190>
     844:	02002025 	move	a0,s0
     848:	3c120601 	lui	s2,0x601
     84c:	2652f0d8 	addiu	s2,s2,-3880
     850:	2611014c 	addiu	s1,s0,332
     854:	3c060602 	lui	a2,0x602
     858:	24c6b310 	addiu	a2,a2,-19696
     85c:	02202825 	move	a1,s1
     860:	02403825 	move	a3,s2
     864:	02602025 	move	a0,s3
     868:	afa00010 	sw	zero,16(sp)
     86c:	afa00014 	sw	zero,20(sp)
     870:	0c000000 	jal	0 <func_808C1190>
     874:	afa00018 	sw	zero,24(sp)
     878:	02202025 	move	a0,s1
     87c:	0c000000 	jal	0 <func_808C1190>
     880:	02402825 	move	a1,s2
     884:	3c013f80 	lui	at,0x3f80
     888:	44812000 	mtc1	at,$f4
     88c:	02002025 	move	a0,s0
     890:	02602825 	move	a1,s3
     894:	0c000000 	jal	0 <func_808C1190>
     898:	e60401f8 	swc1	$f4,504(s0)
     89c:	240f000c 	li	t7,12
     8a0:	a60f0194 	sh	t7,404(s0)
     8a4:	3c010000 	lui	at,0x0
     8a8:	c4260000 	lwc1	$f6,0(at)
     8ac:	3c01447a 	lui	at,0x447a
     8b0:	44814000 	mtc1	at,$f8
     8b4:	3c014000 	lui	at,0x4000
     8b8:	44815000 	mtc1	at,$f10
     8bc:	241800ff 	li	t8,255
     8c0:	a21800ae 	sb	t8,174(s0)
     8c4:	3c010000 	lui	at,0x0
     8c8:	e606021c 	swc1	$f6,540(s0)
     8cc:	e6080220 	swc1	$f8,544(s0)
     8d0:	e60a0224 	swc1	$f10,548(s0)
     8d4:	c4300000 	lwc1	$f16,0(at)
     8d8:	26110440 	addiu	s1,s0,1088
     8dc:	02202825 	move	a1,s1
     8e0:	02602025 	move	a0,s3
     8e4:	0c000000 	jal	0 <func_808C1190>
     8e8:	e6100228 	swc1	$f16,552(s0)
     8ec:	3c070000 	lui	a3,0x0
     8f0:	26190460 	addiu	t9,s0,1120
     8f4:	afb90010 	sw	t9,16(sp)
     8f8:	24e70000 	addiu	a3,a3,0
     8fc:	02602025 	move	a0,s3
     900:	02202825 	move	a1,s1
     904:	0c000000 	jal	0 <func_808C1190>
     908:	02003025 	move	a2,s0
     90c:	3c050001 	lui	a1,0x1
     910:	00b32821 	addu	a1,a1,s3
     914:	80a51cbc 	lb	a1,7356(a1)
     918:	0c000000 	jal	0 <func_808C1190>
     91c:	02602025 	move	a0,s3
     920:	1040005a 	beqz	v0,a8c <BossDodongo_Init+0x2ac>
     924:	3c050000 	lui	a1,0x0
     928:	3c020300 	lui	v0,0x300
     92c:	3c030000 	lui	v1,0x0
     930:	244221d8 	addiu	v0,v0,8664
     934:	24630000 	addiu	v1,v1,0
     938:	00024100 	sll	t0,v0,0x4
     93c:	00037900 	sll	t7,v1,0x4
     940:	24a50000 	addiu	a1,a1,0
     944:	00084f02 	srl	t1,t0,0x1c
     948:	000fc702 	srl	t8,t7,0x1c
     94c:	00095080 	sll	t2,t1,0x2
     950:	0018c880 	sll	t9,t8,0x2
     954:	3c0600ff 	lui	a2,0xff
     958:	00aa5821 	addu	t3,a1,t2
     95c:	00b94021 	addu	t0,a1,t9
     960:	8d6c0000 	lw	t4,0(t3)
     964:	8d090000 	lw	t1,0(t0)
     968:	34c6ffff 	ori	a2,a2,0xffff
     96c:	00466824 	and	t5,v0,a2
     970:	00665024 	and	t2,v1,a2
     974:	3c078000 	lui	a3,0x8000
     978:	018d7021 	addu	t6,t4,t5
     97c:	012a5821 	addu	t3,t1,t2
     980:	01c78821 	addu	s1,t6,a3
     984:	01679021 	addu	s2,t3,a3
     988:	0c000000 	jal	0 <func_808C1190>
     98c:	02002025 	move	a0,s0
     990:	3c010000 	lui	at,0x0
     994:	c4320000 	lwc1	$f18,0(at)
     998:	3c010000 	lui	at,0x0
     99c:	c4240000 	lwc1	$f4,0(at)
     9a0:	3c010000 	lui	at,0x0
     9a4:	c4260000 	lwc1	$f6,0(at)
     9a8:	26641c24 	addiu	a0,s3,7204
     9ac:	afa40048 	sw	a0,72(sp)
     9b0:	02002825 	move	a1,s0
     9b4:	02603025 	move	a2,s3
     9b8:	2407005d 	li	a3,93
     9bc:	afa0001c 	sw	zero,28(sp)
     9c0:	afa00020 	sw	zero,32(sp)
     9c4:	afa00024 	sw	zero,36(sp)
     9c8:	afa00028 	sw	zero,40(sp)
     9cc:	e7b20010 	swc1	$f18,16(sp)
     9d0:	e7a40014 	swc1	$f4,20(sp)
     9d4:	0c000000 	jal	0 <func_808C1190>
     9d8:	e7a60018 	swc1	$f6,24(sp)
     9dc:	3c010000 	lui	at,0x0
     9e0:	c4280000 	lwc1	$f8,0(at)
     9e4:	3c010000 	lui	at,0x0
     9e8:	c42a0000 	lwc1	$f10,0(at)
     9ec:	3c07c45e 	lui	a3,0xc45e
     9f0:	240c6000 	li	t4,24576
     9f4:	afac0024 	sw	t4,36(sp)
     9f8:	34e78000 	ori	a3,a3,0x8000
     9fc:	8fa40048 	lw	a0,72(sp)
     a00:	02602825 	move	a1,s3
     a04:	24060059 	li	a2,89
     a08:	afa00018 	sw	zero,24(sp)
     a0c:	afa0001c 	sw	zero,28(sp)
     a10:	afa00020 	sw	zero,32(sp)
     a14:	e7a80010 	swc1	$f8,16(sp)
     a18:	0c000000 	jal	0 <func_808C1190>
     a1c:	e7aa0014 	swc1	$f10,20(sp)
     a20:	3c010000 	lui	at,0x0
     a24:	c4300000 	lwc1	$f16,0(at)
     a28:	3c010000 	lui	at,0x0
     a2c:	c4320000 	lwc1	$f18,0(at)
     a30:	3c07c42c 	lui	a3,0xc42c
     a34:	34e78000 	ori	a3,a3,0x8000
     a38:	8fa40048 	lw	a0,72(sp)
     a3c:	02602825 	move	a1,s3
     a40:	2406005f 	li	a2,95
     a44:	afa00018 	sw	zero,24(sp)
     a48:	afa0001c 	sw	zero,28(sp)
     a4c:	afa00020 	sw	zero,32(sp)
     a50:	afa00024 	sw	zero,36(sp)
     a54:	e7b00010 	swc1	$f16,16(sp)
     a58:	0c000000 	jal	0 <func_808C1190>
     a5c:	e7b20014 	swc1	$f18,20(sp)
     a60:	00001825 	move	v1,zero
     a64:	00031040 	sll	v0,v1,0x1
     a68:	24630001 	addiu	v1,v1,1
     a6c:	00031c00 	sll	v1,v1,0x10
     a70:	02426821 	addu	t5,s2,v0
     a74:	95ae0000 	lhu	t6,0(t5)
     a78:	00031c03 	sra	v1,v1,0x10
     a7c:	28610800 	slti	at,v1,2048
     a80:	02227821 	addu	t7,s1,v0
     a84:	1420fff7 	bnez	at,a64 <BossDodongo_Init+0x284>
     a88:	a5ee0000 	sh	t6,0(t7)
     a8c:	8e180004 	lw	t8,4(s0)
     a90:	2401fffe 	li	at,-2
     a94:	0301c824 	and	t9,t8,at
     a98:	ae190004 	sw	t9,4(s0)
     a9c:	8fbf0044 	lw	ra,68(sp)
     aa0:	8fb30040 	lw	s3,64(sp)
     aa4:	8fb2003c 	lw	s2,60(sp)
     aa8:	8fb10038 	lw	s1,56(sp)
     aac:	8fb00034 	lw	s0,52(sp)
     ab0:	03e00008 	jr	ra
     ab4:	27bd0060 	addiu	sp,sp,96

00000ab8 <BossDodongo_Destroy>:
     ab8:	27bdffe8 	addiu	sp,sp,-24
     abc:	afbf0014 	sw	ra,20(sp)
     ac0:	afa40018 	sw	a0,24(sp)
     ac4:	afa5001c 	sw	a1,28(sp)
     ac8:	0c000000 	jal	0 <func_808C1190>
     acc:	2484014c 	addiu	a0,a0,332
     ad0:	8fa50018 	lw	a1,24(sp)
     ad4:	8fa4001c 	lw	a0,28(sp)
     ad8:	0c000000 	jal	0 <func_808C1190>
     adc:	24a50440 	addiu	a1,a1,1088
     ae0:	8fbf0014 	lw	ra,20(sp)
     ae4:	27bd0018 	addiu	sp,sp,24
     ae8:	03e00008 	jr	ra
     aec:	00000000 	nop

00000af0 <func_808C1C80>:
     af0:	27bdffd8 	addiu	sp,sp,-40
     af4:	afa40028 	sw	a0,40(sp)
     af8:	afbf0024 	sw	ra,36(sp)
     afc:	3c040601 	lui	a0,0x601
     b00:	afa5002c 	sw	a1,44(sp)
     b04:	0c000000 	jal	0 <func_808C1190>
     b08:	2484f0d8 	addiu	a0,a0,-3880
     b0c:	44822000 	mtc1	v0,$f4
     b10:	3c01c120 	lui	at,0xc120
     b14:	8fa30028 	lw	v1,40(sp)
     b18:	468021a0 	cvt.s.w	$f6,$f4
     b1c:	44814000 	mtc1	at,$f8
     b20:	3c050601 	lui	a1,0x601
     b24:	24a5f0d8 	addiu	a1,a1,-3880
     b28:	3c063f80 	lui	a2,0x3f80
     b2c:	24070000 	li	a3,0
     b30:	e7a60010 	swc1	$f6,16(sp)
     b34:	afa00014 	sw	zero,20(sp)
     b38:	2464014c 	addiu	a0,v1,332
     b3c:	0c000000 	jal	0 <func_808C1190>
     b40:	e7a80018 	swc1	$f8,24(sp)
     b44:	8fa30028 	lw	v1,40(sp)
     b48:	3c0e0000 	lui	t6,0x0
     b4c:	25ce0000 	addiu	t6,t6,0
     b50:	240f0001 	li	t7,1
     b54:	ac6e0190 	sw	t6,400(v1)
     b58:	a460019c 	sh	zero,412(v1)
     b5c:	a46f01bc 	sh	t7,444(v1)
     b60:	8fbf0024 	lw	ra,36(sp)
     b64:	27bd0028 	addiu	sp,sp,40
     b68:	03e00008 	jr	ra
     b6c:	00000000 	nop

00000b70 <func_808C1D00>:
     b70:	27bdff88 	addiu	sp,sp,-120
     b74:	afb00028 	sw	s0,40(sp)
     b78:	afbf002c 	sw	ra,44(sp)
     b7c:	8cae1c44 	lw	t6,7236(a1)
     b80:	00808025 	move	s0,a0
     b84:	00a03025 	move	a2,a1
     b88:	00a02025 	move	a0,a1
     b8c:	00002825 	move	a1,zero
     b90:	afa6007c 	sw	a2,124(sp)
     b94:	0c000000 	jal	0 <func_808C1190>
     b98:	afae006c 	sw	t6,108(sp)
     b9c:	afa20070 	sw	v0,112(sp)
     ba0:	86030196 	lh	v1,406(s0)
     ba4:	10600002 	beqz	v1,bb0 <func_808C1D00+0x40>
     ba8:	246fffff 	addiu	t7,v1,-1
     bac:	a60f0196 	sh	t7,406(s0)
     bb0:	86030198 	lh	v1,408(s0)
     bb4:	10600002 	beqz	v1,bc0 <func_808C1D00+0x50>
     bb8:	2478ffff 	addiu	t8,v1,-1
     bbc:	a6180198 	sh	t8,408(s0)
     bc0:	8602019a 	lh	v0,410(s0)
     bc4:	10400002 	beqz	v0,bd0 <func_808C1D00+0x60>
     bc8:	2459ffff 	addiu	t9,v0,-1
     bcc:	a619019a 	sh	t9,410(s0)
     bd0:	9608019c 	lhu	t0,412(s0)
     bd4:	2d010005 	sltiu	at,t0,5
     bd8:	1020026f 	beqz	at,1598 <L808C23A8+0x380>
     bdc:	00084080 	sll	t0,t0,0x2
     be0:	3c010000 	lui	at,0x0
     be4:	00280821 	addu	at,at,t0
     be8:	8c280000 	lw	t0,0(at)
     bec:	01000008 	jr	t0
     bf0:	00000000 	nop

00000bf4 <L808C1D84>:
     bf4:	8fa9006c 	lw	t1,108(sp)
     bf8:	3c010000 	lui	at,0x0
     bfc:	c4260000 	lwc1	$f6,0(at)
     c00:	c5240028 	lwc1	$f4,40(t1)
     c04:	24020001 	li	v0,1
     c08:	3c010000 	lui	at,0x0
     c0c:	4606203c 	c.lt.s	$f4,$f6
     c10:	00000000 	nop
     c14:	45020261 	bc1fl	159c <L808C23A8+0x384>
     c18:	860b01b4 	lh	t3,436(s0)
     c1c:	a602019c 	sh	v0,412(s0)
     c20:	c4280000 	lwc1	$f8,0(at)
     c24:	3c010000 	lui	at,0x0
     c28:	e6080024 	swc1	$f8,36(s0)
     c2c:	c42a0000 	lwc1	$f10,0(at)
     c30:	a60201a0 	sh	v0,416(s0)
     c34:	10000258 	b	1598 <L808C23A8+0x380>
     c38:	e60a002c 	swc1	$f10,44(s0)

00000c3c <L808C1DCC>:
     c3c:	8fa4007c 	lw	a0,124(sp)
     c40:	0c000000 	jal	0 <func_808C1190>
     c44:	24851d64 	addiu	a1,a0,7524
     c48:	8fa4007c 	lw	a0,124(sp)
     c4c:	02002825 	move	a1,s0
     c50:	0c000000 	jal	0 <func_808C1190>
     c54:	24060001 	li	a2,1
     c58:	0c000000 	jal	0 <func_808C1190>
     c5c:	8fa4007c 	lw	a0,124(sp)
     c60:	0c000000 	jal	0 <func_808C1190>
     c64:	8fa4007c 	lw	a0,124(sp)
     c68:	a60201b4 	sh	v0,436(s0)
     c6c:	8fa4007c 	lw	a0,124(sp)
     c70:	00002825 	move	a1,zero
     c74:	0c000000 	jal	0 <func_808C1190>
     c78:	24060001 	li	a2,1
     c7c:	8fa4007c 	lw	a0,124(sp)
     c80:	860501b4 	lh	a1,436(s0)
     c84:	0c000000 	jal	0 <func_808C1190>
     c88:	24060007 	li	a2,7
     c8c:	3c010000 	lui	at,0x0
     c90:	c4200000 	lwc1	$f0,0(at)
     c94:	3c0143f0 	lui	at,0x43f0
     c98:	44818000 	mtc1	at,$f16
     c9c:	3c014248 	lui	at,0x4248
     ca0:	44812000 	mtc1	at,$f4
     ca4:	46100481 	sub.s	$f18,$f0,$f16
     ca8:	240b0002 	li	t3,2
     cac:	240c003c 	li	t4,60
     cb0:	240d00a0 	li	t5,160
     cb4:	a60b019c 	sh	t3,412(s0)
     cb8:	a60c0196 	sh	t4,406(s0)
     cbc:	a60d0198 	sh	t5,408(s0)
     cc0:	46049180 	add.s	$f6,$f18,$f4
     cc4:	8fae006c 	lw	t6,108(sp)
     cc8:	e5c00028 	swc1	$f0,40(t6)
     ccc:	e606042c 	swc1	$f6,1068(s0)

00000cd0 <L808C1E60>:
     cd0:	86030198 	lh	v1,408(s0)
     cd4:	8fa2006c 	lw	v0,108(sp)
     cd8:	240f3fff 	li	t7,16383
     cdc:	28610083 	slti	at,v1,131
     ce0:	1420001c 	bnez	at,d54 <L808C1E60+0x84>
     ce4:	02002825 	move	a1,s0
     ce8:	3c010000 	lui	at,0x0
     cec:	c4200000 	lwc1	$f0,0(at)
     cf0:	3c010000 	lui	at,0x0
     cf4:	44805000 	mtc1	zero,$f10
     cf8:	e4400024 	swc1	$f0,36(v0)
     cfc:	c4280000 	lwc1	$f8,0(at)
     d00:	a44f0032 	sh	t7,50(v0)
     d04:	84580032 	lh	t8,50(v0)
     d08:	e44a0068 	swc1	$f10,104(v0)
     d0c:	e448002c 	swc1	$f8,44(v0)
     d10:	a45800b6 	sh	t8,182(v0)
     d14:	3c0142c8 	lui	at,0x42c8
     d18:	e6000428 	swc1	$f0,1064(s0)
     d1c:	c450002c 	lwc1	$f16,44(v0)
     d20:	44819000 	mtc1	at,$f18
     d24:	3c0141a0 	lui	at,0x41a0
     d28:	44815000 	mtc1	at,$f10
     d2c:	46128101 	sub.s	$f4,$f16,$f18
     d30:	86030198 	lh	v1,408(s0)
     d34:	e6040430 	swc1	$f4,1072(s0)
     d38:	c4460024 	lwc1	$f6,36(v0)
     d3c:	e6060434 	swc1	$f6,1076(s0)
     d40:	c4480028 	lwc1	$f8,40(v0)
     d44:	460a4400 	add.s	$f16,$f8,$f10
     d48:	e6100438 	swc1	$f16,1080(s0)
     d4c:	c452002c 	lwc1	$f18,44(v0)
     d50:	e612043c 	swc1	$f18,1084(s0)
     d54:	2401006e 	li	at,110
     d58:	14610006 	bne	v1,at,d74 <L808C1E60+0xa4>
     d5c:	8fa2006c 	lw	v0,108(sp)
     d60:	8fa4007c 	lw	a0,124(sp)
     d64:	0c000000 	jal	0 <func_808C1190>
     d68:	24060009 	li	a2,9
     d6c:	86030198 	lh	v1,408(s0)
     d70:	8fa2006c 	lw	v0,108(sp)
     d74:	24010005 	li	at,5
     d78:	14610006 	bne	v1,at,d94 <L808C1E60+0xc4>
     d7c:	8fa4007c 	lw	a0,124(sp)
     d80:	02002825 	move	a1,s0
     d84:	0c000000 	jal	0 <func_808C1190>
     d88:	2406000c 	li	a2,12
     d8c:	86030198 	lh	v1,408(s0)
     d90:	8fa2006c 	lw	v0,108(sp)
     d94:	28610006 	slti	at,v1,6
     d98:	10200004 	beqz	at,dac <L808C1E60+0xdc>
     d9c:	02002025 	move	a0,s0
     da0:	2419bfff 	li	t9,-16385
     da4:	10000003 	b	db4 <L808C1E60+0xe4>
     da8:	a45900b6 	sh	t9,182(v0)
     dac:	24083fff 	li	t0,16383
     db0:	a44800b6 	sh	t0,182(v0)
     db4:	86090198 	lh	t1,408(s0)
     db8:	240a0001 	li	t2,1
     dbc:	240b0002 	li	t3,2
     dc0:	2921003c 	slti	at,t1,60
     dc4:	50200004 	beqzl	at,dd8 <L808C1E60+0x108>
     dc8:	a60b01bc 	sh	t3,444(s0)
     dcc:	10000002 	b	dd8 <L808C1E60+0x108>
     dd0:	a60a01bc 	sh	t2,444(s0)
     dd4:	a60b01bc 	sh	t3,444(s0)
     dd8:	0c000000 	jal	0 <func_808C1190>
     ddc:	8fa5007c 	lw	a1,124(sp)
     de0:	86030196 	lh	v1,406(s0)
     de4:	24010001 	li	at,1
     de8:	3c041001 	lui	a0,0x1001
     dec:	14610004 	bne	v1,at,e00 <L808C1E60+0x130>
     df0:	00000000 	nop
     df4:	0c000000 	jal	0 <func_808C1190>
     df8:	348400ff 	ori	a0,a0,0xff
     dfc:	86030196 	lh	v1,406(s0)
     e00:	1460003a 	bnez	v1,eec <L808C1E60+0x21c>
     e04:	8fac006c 	lw	t4,108(sp)
     e08:	3c0141f0 	lui	at,0x41f0
     e0c:	44813000 	mtc1	at,$f6
     e10:	3c0141a0 	lui	at,0x41a0
     e14:	44818000 	mtc1	at,$f16
     e18:	c60a0204 	lwc1	$f10,516(s0)
     e1c:	c60403ec 	lwc1	$f4,1004(s0)
     e20:	3c063e4c 	lui	a2,0x3e4c
     e24:	46105482 	mul.s	$f18,$f10,$f16
     e28:	46062200 	add.s	$f8,$f4,$f6
     e2c:	44802000 	mtc1	zero,$f4
     e30:	34c6cccd 	ori	a2,a2,0xcccd
     e34:	26040428 	addiu	a0,s0,1064
     e38:	44054000 	mfc1	a1,$f8
     e3c:	e7a40010 	swc1	$f4,16(sp)
     e40:	44079000 	mfc1	a3,$f18
     e44:	0c000000 	jal	0 <func_808C1190>
     e48:	00000000 	nop
     e4c:	3c0141a0 	lui	at,0x41a0
     e50:	44814000 	mtc1	at,$f8
     e54:	c6060204 	lwc1	$f6,516(s0)
     e58:	44808000 	mtc1	zero,$f16
     e5c:	8e0503f0 	lw	a1,1008(s0)
     e60:	46083282 	mul.s	$f10,$f6,$f8
     e64:	3c063e4c 	lui	a2,0x3e4c
     e68:	34c6cccd 	ori	a2,a2,0xcccd
     e6c:	2604042c 	addiu	a0,s0,1068
     e70:	e7b00010 	swc1	$f16,16(sp)
     e74:	44075000 	mfc1	a3,$f10
     e78:	0c000000 	jal	0 <func_808C1190>
     e7c:	00000000 	nop
     e80:	3c014120 	lui	at,0x4120
     e84:	44812000 	mtc1	at,$f4
     e88:	3c0141a0 	lui	at,0x41a0
     e8c:	44815000 	mtc1	at,$f10
     e90:	c6080204 	lwc1	$f8,516(s0)
     e94:	c61203f4 	lwc1	$f18,1012(s0)
     e98:	3c063e4c 	lui	a2,0x3e4c
     e9c:	460a4402 	mul.s	$f16,$f8,$f10
     ea0:	46049180 	add.s	$f6,$f18,$f4
     ea4:	44809000 	mtc1	zero,$f18
     ea8:	34c6cccd 	ori	a2,a2,0xcccd
     eac:	26040430 	addiu	a0,s0,1072
     eb0:	44053000 	mfc1	a1,$f6
     eb4:	e7b20010 	swc1	$f18,16(sp)
     eb8:	44078000 	mfc1	a3,$f16
     ebc:	0c000000 	jal	0 <func_808C1190>
     ec0:	00000000 	nop
     ec4:	44802000 	mtc1	zero,$f4
     ec8:	3c073ca3 	lui	a3,0x3ca3
     ecc:	34e7d70a 	ori	a3,a3,0xd70a
     ed0:	26040204 	addiu	a0,s0,516
     ed4:	3c053f80 	lui	a1,0x3f80
     ed8:	3c063f80 	lui	a2,0x3f80
     edc:	0c000000 	jal	0 <func_808C1190>
     ee0:	e7a40010 	swc1	$f4,16(sp)
     ee4:	1000000c 	b	f18 <L808C1E60+0x248>
     ee8:	00000000 	nop
     eec:	c5860024 	lwc1	$f6,36(t4)
     ef0:	3c0141a0 	lui	at,0x41a0
     ef4:	44815000 	mtc1	at,$f10
     ef8:	e6060434 	swc1	$f6,1076(s0)
     efc:	8fad006c 	lw	t5,108(sp)
     f00:	c5a80028 	lwc1	$f8,40(t5)
     f04:	460a4400 	add.s	$f16,$f8,$f10
     f08:	e6100438 	swc1	$f16,1080(s0)
     f0c:	8fae006c 	lw	t6,108(sp)
     f10:	c5d2002c 	lwc1	$f18,44(t6)
     f14:	e612043c 	swc1	$f18,1084(s0)
     f18:	3c0f0000 	lui	t7,0x0
     f1c:	95ef0ee2 	lhu	t7,3810(t7)
     f20:	31f80002 	andi	t8,t7,0x2
     f24:	5300002d 	beqzl	t8,fdc <L808C1E60+0x30c>
     f28:	860e0198 	lh	t6,408(s0)
     f2c:	86190198 	lh	t9,408(s0)
     f30:	24010064 	li	at,100
     f34:	24083fff 	li	t0,16383
     f38:	17210197 	bne	t9,at,1598 <L808C23A8+0x380>
     f3c:	24090002 	li	t1,2
     f40:	3c010000 	lui	at,0x0
     f44:	c4240000 	lwc1	$f4,0(at)
     f48:	3c010000 	lui	at,0x0
     f4c:	44804000 	mtc1	zero,$f8
     f50:	e6040024 	swc1	$f4,36(s0)
     f54:	c4260000 	lwc1	$f6,0(at)
     f58:	240a0004 	li	t2,4
     f5c:	240b001e 	li	t3,30
     f60:	240c0096 	li	t4,150
     f64:	3c040601 	lui	a0,0x601
     f68:	a6080032 	sh	t0,50(s0)
     f6c:	a60001a2 	sh	zero,418(s0)
     f70:	a60901a0 	sh	t1,416(s0)
     f74:	a60a019c 	sh	t2,412(s0)
     f78:	a60b0196 	sh	t3,406(s0)
     f7c:	a60c0198 	sh	t4,408(s0)
     f80:	24848eec 	addiu	a0,a0,-28948
     f84:	e6080204 	swc1	$f8,516(s0)
     f88:	0c000000 	jal	0 <func_808C1190>
     f8c:	e606002c 	swc1	$f6,44(s0)
     f90:	44825000 	mtc1	v0,$f10
     f94:	44809000 	mtc1	zero,$f18
     f98:	2604014c 	addiu	a0,s0,332
     f9c:	46805420 	cvt.s.w	$f16,$f10
     fa0:	3c050601 	lui	a1,0x601
     fa4:	240d0002 	li	t5,2
     fa8:	afad0014 	sw	t5,20(sp)
     fac:	24a58eec 	addiu	a1,a1,-28948
     fb0:	afa4003c 	sw	a0,60(sp)
     fb4:	e7b00010 	swc1	$f16,16(sp)
     fb8:	3c063f80 	lui	a2,0x3f80
     fbc:	24070000 	li	a3,0
     fc0:	0c000000 	jal	0 <func_808C1190>
     fc4:	e7b20018 	swc1	$f18,24(sp)
     fc8:	0c000000 	jal	0 <func_808C1190>
     fcc:	8fa4003c 	lw	a0,60(sp)
     fd0:	10000172 	b	159c <L808C23A8+0x384>
     fd4:	860b01b4 	lh	t3,436(s0)
     fd8:	860e0198 	lh	t6,408(s0)
     fdc:	240f0003 	li	t7,3
     fe0:	24180014 	li	t8,20
     fe4:	55c0016d 	bnezl	t6,159c <L808C23A8+0x384>
     fe8:	860b01b4 	lh	t3,436(s0)
     fec:	44802000 	mtc1	zero,$f4
     ff0:	a60f019c 	sh	t7,412(s0)
     ff4:	a618019e 	sh	t8,414(s0)
     ff8:	10000167 	b	1598 <L808C23A8+0x380>
     ffc:	e6040204 	swc1	$f4,516(s0)

00001000 <L808C2190>:
    1000:	02002025 	move	a0,s0
    1004:	0c000000 	jal	0 <func_808C1190>
    1008:	8fa5007c 	lw	a1,124(sp)
    100c:	8619019e 	lh	t9,414(s0)
    1010:	3c010000 	lui	at,0x0
    1014:	c42a0000 	lwc1	$f10,0(at)
    1018:	44993000 	mtc1	t9,$f6
    101c:	00000000 	nop
    1020:	46803220 	cvt.s.w	$f8,$f6
    1024:	460a4302 	mul.s	$f12,$f8,$f10
    1028:	0c000000 	jal	0 <func_808C1190>
    102c:	00000000 	nop
    1030:	3c010000 	lui	at,0x0
    1034:	c4300000 	lwc1	$f16,0(at)
    1038:	44802000 	mtc1	zero,$f4
    103c:	3c073c23 	lui	a3,0x3c23
    1040:	46100482 	mul.s	$f18,$f0,$f16
    1044:	34e7d70a 	ori	a3,a3,0xd70a
    1048:	2604020c 	addiu	a0,s0,524
    104c:	3c063f80 	lui	a2,0x3f80
    1050:	e7a40010 	swc1	$f4,16(sp)
    1054:	44059000 	mfc1	a1,$f18
    1058:	0c000000 	jal	0 <func_808C1190>
    105c:	00000000 	nop
    1060:	3c0142b4 	lui	at,0x42b4
    1064:	44814000 	mtc1	at,$f8
    1068:	3c0141a0 	lui	at,0x41a0
    106c:	44819000 	mtc1	at,$f18
    1070:	c6100204 	lwc1	$f16,516(s0)
    1074:	c60603ec 	lwc1	$f6,1004(s0)
    1078:	3c063e4c 	lui	a2,0x3e4c
    107c:	46128102 	mul.s	$f4,$f16,$f18
    1080:	46083280 	add.s	$f10,$f6,$f8
    1084:	44803000 	mtc1	zero,$f6
    1088:	34c6cccd 	ori	a2,a2,0xcccd
    108c:	26040428 	addiu	a0,s0,1064
    1090:	44055000 	mfc1	a1,$f10
    1094:	e7a60010 	swc1	$f6,16(sp)
    1098:	44072000 	mfc1	a3,$f4
    109c:	0c000000 	jal	0 <func_808C1190>
    10a0:	00000000 	nop
    10a4:	3c014248 	lui	at,0x4248
    10a8:	44815000 	mtc1	at,$f10
    10ac:	3c0141a0 	lui	at,0x41a0
    10b0:	44812000 	mtc1	at,$f4
    10b4:	c6120204 	lwc1	$f18,516(s0)
    10b8:	c60803f0 	lwc1	$f8,1008(s0)
    10bc:	3c063e4c 	lui	a2,0x3e4c
    10c0:	46049182 	mul.s	$f6,$f18,$f4
    10c4:	460a4400 	add.s	$f16,$f8,$f10
    10c8:	44804000 	mtc1	zero,$f8
    10cc:	34c6cccd 	ori	a2,a2,0xcccd
    10d0:	2604042c 	addiu	a0,s0,1068
    10d4:	44058000 	mfc1	a1,$f16
    10d8:	e7a80010 	swc1	$f8,16(sp)
    10dc:	44073000 	mfc1	a3,$f6
    10e0:	0c000000 	jal	0 <func_808C1190>
    10e4:	00000000 	nop
    10e8:	3c0141a0 	lui	at,0x41a0
    10ec:	44818000 	mtc1	at,$f16
    10f0:	c60a0204 	lwc1	$f10,516(s0)
    10f4:	44802000 	mtc1	zero,$f4
    10f8:	8e0503f4 	lw	a1,1012(s0)
    10fc:	46105482 	mul.s	$f18,$f10,$f16
    1100:	3c063e4c 	lui	a2,0x3e4c
    1104:	34c6cccd 	ori	a2,a2,0xcccd
    1108:	26040430 	addiu	a0,s0,1072
    110c:	e7a40010 	swc1	$f4,16(sp)
    1110:	44079000 	mfc1	a3,$f18
    1114:	0c000000 	jal	0 <func_808C1190>
    1118:	00000000 	nop
    111c:	3c014120 	lui	at,0x4120
    1120:	44814000 	mtc1	at,$f8
    1124:	3c0141a0 	lui	at,0x41a0
    1128:	44819000 	mtc1	at,$f18
    112c:	c6100204 	lwc1	$f16,516(s0)
    1130:	c60603f0 	lwc1	$f6,1008(s0)
    1134:	3c063e4c 	lui	a2,0x3e4c
    1138:	46128102 	mul.s	$f4,$f16,$f18
    113c:	46083281 	sub.s	$f10,$f6,$f8
    1140:	44803000 	mtc1	zero,$f6
    1144:	34c6cccd 	ori	a2,a2,0xcccd
    1148:	26040438 	addiu	a0,s0,1080
    114c:	44055000 	mfc1	a1,$f10
    1150:	e7a60010 	swc1	$f6,16(sp)
    1154:	44072000 	mfc1	a3,$f4
    1158:	0c000000 	jal	0 <func_808C1190>
    115c:	00000000 	nop
    1160:	44804000 	mtc1	zero,$f8
    1164:	3c073ca3 	lui	a3,0x3ca3
    1168:	34e7d70a 	ori	a3,a3,0xd70a
    116c:	26040204 	addiu	a0,s0,516
    1170:	3c053f80 	lui	a1,0x3f80
    1174:	3c063f80 	lui	a2,0x3f80
    1178:	0c000000 	jal	0 <func_808C1190>
    117c:	e7a80010 	swc1	$f8,16(sp)
    1180:	8fa8006c 	lw	t0,108(sp)
    1184:	c6100024 	lwc1	$f16,36(s0)
    1188:	3c014348 	lui	at,0x4348
    118c:	c50a0024 	lwc1	$f10,36(t0)
    1190:	44819000 	mtc1	at,$f18
    1194:	3c040601 	lui	a0,0x601
    1198:	46105001 	sub.s	$f0,$f10,$f16
    119c:	24090004 	li	t1,4
    11a0:	240a001e 	li	t2,30
    11a4:	240b0096 	li	t3,150
    11a8:	46000005 	abs.s	$f0,$f0
    11ac:	24848eec 	addiu	a0,a0,-28948
    11b0:	4612003c 	c.lt.s	$f0,$f18
    11b4:	00000000 	nop
    11b8:	450200f8 	bc1fl	159c <L808C23A8+0x384>
    11bc:	860b01b4 	lh	t3,436(s0)
    11c0:	44802000 	mtc1	zero,$f4
    11c4:	a609019c 	sh	t1,412(s0)
    11c8:	a60a0196 	sh	t2,406(s0)
    11cc:	a60b0198 	sh	t3,408(s0)
    11d0:	0c000000 	jal	0 <func_808C1190>
    11d4:	e6040204 	swc1	$f4,516(s0)
    11d8:	44823000 	mtc1	v0,$f6
    11dc:	3c01c0a0 	lui	at,0xc0a0
    11e0:	44815000 	mtc1	at,$f10
    11e4:	46803220 	cvt.s.w	$f8,$f6
    11e8:	3c050601 	lui	a1,0x601
    11ec:	240c0002 	li	t4,2
    11f0:	afac0014 	sw	t4,20(sp)
    11f4:	24a58eec 	addiu	a1,a1,-28948
    11f8:	2604014c 	addiu	a0,s0,332
    11fc:	e7a80010 	swc1	$f8,16(sp)
    1200:	3c063f80 	lui	a2,0x3f80
    1204:	24070000 	li	a3,0
    1208:	0c000000 	jal	0 <func_808C1190>
    120c:	e7aa0018 	swc1	$f10,24(sp)
    1210:	100000e2 	b	159c <L808C23A8+0x384>
    1214:	860b01b4 	lh	t3,436(s0)

00001218 <L808C23A8>:
    1218:	44800000 	mtc1	zero,$f0
    121c:	3c073c23 	lui	a3,0x3c23
    1220:	34e7d70a 	ori	a3,a3,0xd70a
    1224:	44050000 	mfc1	a1,$f0
    1228:	2604020c 	addiu	a0,s0,524
    122c:	3c063f80 	lui	a2,0x3f80
    1230:	0c000000 	jal	0 <func_808C1190>
    1234:	e7a00010 	swc1	$f0,16(sp)
    1238:	3c0d0000 	lui	t5,0x0
    123c:	95ad0ee2 	lhu	t5,3810(t5)
    1240:	8faf006c 	lw	t7,108(sp)
    1244:	31ae0002 	andi	t6,t5,0x2
    1248:	11c00004 	beqz	t6,125c <L808C23A8+0x44>
    124c:	3c01c248 	lui	at,0xc248
    1250:	44810000 	mtc1	at,$f0
    1254:	10000004 	b	1268 <L808C23A8+0x50>
    1258:	3c01428c 	lui	at,0x428c
    125c:	44800000 	mtc1	zero,$f0
    1260:	00000000 	nop
    1264:	3c01428c 	lui	at,0x428c
    1268:	44812000 	mtc1	at,$f4
    126c:	c5f00024 	lwc1	$f16,36(t7)
    1270:	3c0141a0 	lui	at,0x41a0
    1274:	44815000 	mtc1	at,$f10
    1278:	c6080204 	lwc1	$f8,516(s0)
    127c:	46008480 	add.s	$f18,$f16,$f0
    1280:	26040428 	addiu	a0,s0,1064
    1284:	460a4402 	mul.s	$f16,$f8,$f10
    1288:	3c063e4c 	lui	a2,0x3e4c
    128c:	46049180 	add.s	$f6,$f18,$f4
    1290:	44809000 	mtc1	zero,$f18
    1294:	34c6cccd 	ori	a2,a2,0xcccd
    1298:	afa40038 	sw	a0,56(sp)
    129c:	44053000 	mfc1	a1,$f6
    12a0:	44078000 	mfc1	a3,$f16
    12a4:	0c000000 	jal	0 <func_808C1190>
    12a8:	e7b20010 	swc1	$f18,16(sp)
    12ac:	3c014120 	lui	at,0x4120
    12b0:	44813000 	mtc1	at,$f6
    12b4:	3c0141a0 	lui	at,0x41a0
    12b8:	44818000 	mtc1	at,$f16
    12bc:	8fb8006c 	lw	t8,108(sp)
    12c0:	c60a0204 	lwc1	$f10,516(s0)
    12c4:	3c063e4c 	lui	a2,0x3e4c
    12c8:	c7040028 	lwc1	$f4,40(t8)
    12cc:	46105482 	mul.s	$f18,$f10,$f16
    12d0:	34c6cccd 	ori	a2,a2,0xcccd
    12d4:	46062200 	add.s	$f8,$f4,$f6
    12d8:	44802000 	mtc1	zero,$f4
    12dc:	2604042c 	addiu	a0,s0,1068
    12e0:	44054000 	mfc1	a1,$f8
    12e4:	44079000 	mfc1	a3,$f18
    12e8:	0c000000 	jal	0 <func_808C1190>
    12ec:	e7a40010 	swc1	$f4,16(sp)
    12f0:	3c014270 	lui	at,0x4270
    12f4:	44814000 	mtc1	at,$f8
    12f8:	3c0141a0 	lui	at,0x41a0
    12fc:	44819000 	mtc1	at,$f18
    1300:	8fb9006c 	lw	t9,108(sp)
    1304:	c6100204 	lwc1	$f16,516(s0)
    1308:	3c063e4c 	lui	a2,0x3e4c
    130c:	c726002c 	lwc1	$f6,44(t9)
    1310:	46128102 	mul.s	$f4,$f16,$f18
    1314:	34c6cccd 	ori	a2,a2,0xcccd
    1318:	46083281 	sub.s	$f10,$f6,$f8
    131c:	44803000 	mtc1	zero,$f6
    1320:	26040430 	addiu	a0,s0,1072
    1324:	44055000 	mfc1	a1,$f10
    1328:	44072000 	mfc1	a3,$f4
    132c:	0c000000 	jal	0 <func_808C1190>
    1330:	e7a60010 	swc1	$f6,16(sp)
    1334:	3c0141a0 	lui	at,0x41a0
    1338:	44815000 	mtc1	at,$f10
    133c:	c6080204 	lwc1	$f8,516(s0)
    1340:	44809000 	mtc1	zero,$f18
    1344:	26040434 	addiu	a0,s0,1076
    1348:	460a4402 	mul.s	$f16,$f8,$f10
    134c:	8e0503ec 	lw	a1,1004(s0)
    1350:	3c063e4c 	lui	a2,0x3e4c
    1354:	34c6cccd 	ori	a2,a2,0xcccd
    1358:	afa40034 	sw	a0,52(sp)
    135c:	e7b20010 	swc1	$f18,16(sp)
    1360:	44078000 	mfc1	a3,$f16
    1364:	0c000000 	jal	0 <func_808C1190>
    1368:	00000000 	nop
    136c:	3c0141a0 	lui	at,0x41a0
    1370:	44813000 	mtc1	at,$f6
    1374:	c6040204 	lwc1	$f4,516(s0)
    1378:	44805000 	mtc1	zero,$f10
    137c:	8e0503f0 	lw	a1,1008(s0)
    1380:	46062202 	mul.s	$f8,$f4,$f6
    1384:	3c063e4c 	lui	a2,0x3e4c
    1388:	34c6cccd 	ori	a2,a2,0xcccd
    138c:	26040438 	addiu	a0,s0,1080
    1390:	e7aa0010 	swc1	$f10,16(sp)
    1394:	44074000 	mfc1	a3,$f8
    1398:	0c000000 	jal	0 <func_808C1190>
    139c:	00000000 	nop
    13a0:	3c0141a0 	lui	at,0x41a0
    13a4:	44819000 	mtc1	at,$f18
    13a8:	c6100204 	lwc1	$f16,516(s0)
    13ac:	44803000 	mtc1	zero,$f6
    13b0:	8e0503f4 	lw	a1,1012(s0)
    13b4:	46128102 	mul.s	$f4,$f16,$f18
    13b8:	3c063e4c 	lui	a2,0x3e4c
    13bc:	34c6cccd 	ori	a2,a2,0xcccd
    13c0:	2604043c 	addiu	a0,s0,1084
    13c4:	e7a60010 	swc1	$f6,16(sp)
    13c8:	44072000 	mfc1	a3,$f4
    13cc:	0c000000 	jal	0 <func_808C1190>
    13d0:	00000000 	nop
    13d4:	3c013f80 	lui	at,0x3f80
    13d8:	44811000 	mtc1	at,$f2
    13dc:	44804000 	mtc1	zero,$f8
    13e0:	3c073ca3 	lui	a3,0x3ca3
    13e4:	44051000 	mfc1	a1,$f2
    13e8:	44061000 	mfc1	a2,$f2
    13ec:	34e7d70a 	ori	a3,a3,0xd70a
    13f0:	26040204 	addiu	a0,s0,516
    13f4:	0c000000 	jal	0 <func_808C1190>
    13f8:	e7a80010 	swc1	$f8,16(sp)
    13fc:	86080196 	lh	t0,406(s0)
    1400:	5500000d 	bnezl	t0,1438 <L808C23A8+0x220>
    1404:	86030198 	lh	v1,408(s0)
    1408:	0c000000 	jal	0 <func_808C1190>
    140c:	2604014c 	addiu	a0,s0,332
    1410:	44805000 	mtc1	zero,$f10
    1414:	3c053d4c 	lui	a1,0x3d4c
    1418:	3c073ba3 	lui	a3,0x3ba3
    141c:	34e7d70a 	ori	a3,a3,0xd70a
    1420:	34a5cccd 	ori	a1,a1,0xcccd
    1424:	26040208 	addiu	a0,s0,520
    1428:	3c063f80 	lui	a2,0x3f80
    142c:	0c000000 	jal	0 <func_808C1190>
    1430:	e7aa0010 	swc1	$f10,16(sp)
    1434:	86030198 	lh	v1,408(s0)
    1438:	24010064 	li	at,100
    143c:	02002025 	move	a0,s0
    1440:	54610005 	bnel	v1,at,1458 <L808C23A8+0x240>
    1444:	2401005a 	li	at,90
    1448:	0c000000 	jal	0 <func_808C1190>
    144c:	24053852 	li	a1,14418
    1450:	86030198 	lh	v1,408(s0)
    1454:	2401005a 	li	at,90
    1458:	1461001f 	bne	v1,at,14d8 <L808C23A8+0x2c0>
    145c:	3c090000 	lui	t1,0x0
    1460:	95290ee2 	lhu	t1,3810(t1)
    1464:	8fa4007c 	lw	a0,124(sp)
    1468:	3c020601 	lui	v0,0x601
    146c:	312a0002 	andi	t2,t1,0x2
    1470:	15400016 	bnez	t2,14cc <L808C23A8+0x2b4>
    1474:	24851d4c 	addiu	a1,a0,7500
    1478:	24427410 	addiu	v0,v0,29712
    147c:	00025900 	sll	t3,v0,0x4
    1480:	000b6702 	srl	t4,t3,0x1c
    1484:	000c6880 	sll	t5,t4,0x2
    1488:	3c0e0000 	lui	t6,0x0
    148c:	01cd7021 	addu	t6,t6,t5
    1490:	3c0100ff 	lui	at,0xff
    1494:	8dce0000 	lw	t6,0(t6)
    1498:	3421ffff 	ori	at,at,0xffff
    149c:	00417824 	and	t7,v0,at
    14a0:	3c018000 	lui	at,0x8000
    14a4:	241800b4 	li	t8,180
    14a8:	24190080 	li	t9,128
    14ac:	24080028 	li	t0,40
    14b0:	01cf3021 	addu	a2,t6,t7
    14b4:	00c13021 	addu	a2,a2,at
    14b8:	afa80018 	sw	t0,24(sp)
    14bc:	afb90014 	sw	t9,20(sp)
    14c0:	afb80010 	sw	t8,16(sp)
    14c4:	0c000000 	jal	0 <func_808C1190>
    14c8:	240700a0 	li	a3,160
    14cc:	0c000000 	jal	0 <func_808C1190>
    14d0:	2404006b 	li	a0,107
    14d4:	86030198 	lh	v1,408(s0)
    14d8:	54600030 	bnezl	v1,159c <L808C23A8+0x384>
    14dc:	860b01b4 	lh	t3,436(s0)
    14e0:	8fa30038 	lw	v1,56(sp)
    14e4:	8fa20070 	lw	v0,112(sp)
    14e8:	00003025 	move	a2,zero
    14ec:	8c6a0000 	lw	t2,0(v1)
    14f0:	ac4a005c 	sw	t2,92(v0)
    14f4:	8c690004 	lw	t1,4(v1)
    14f8:	ac490060 	sw	t1,96(v0)
    14fc:	8c6a0008 	lw	t2,8(v1)
    1500:	ac4a0064 	sw	t2,100(v0)
    1504:	8c6c0000 	lw	t4,0(v1)
    1508:	ac4c0074 	sw	t4,116(v0)
    150c:	8c6b0004 	lw	t3,4(v1)
    1510:	ac4b0078 	sw	t3,120(v0)
    1514:	8c6c0008 	lw	t4,8(v1)
    1518:	ac4c007c 	sw	t4,124(v0)
    151c:	8fad0034 	lw	t5,52(sp)
    1520:	8daf0000 	lw	t7,0(t5)
    1524:	ac4f0050 	sw	t7,80(v0)
    1528:	8dae0004 	lw	t6,4(t5)
    152c:	ac4e0054 	sw	t6,84(v0)
    1530:	8daf0008 	lw	t7,8(t5)
    1534:	ac4f0058 	sw	t7,88(v0)
    1538:	860501b4 	lh	a1,436(s0)
    153c:	0c000000 	jal	0 <func_808C1190>
    1540:	8fa4007c 	lw	a0,124(sp)
    1544:	8fa4007c 	lw	a0,124(sp)
    1548:	a60001b4 	sh	zero,436(s0)
    154c:	0c000000 	jal	0 <func_808C1190>
    1550:	24851d64 	addiu	a1,a0,7524
    1554:	8fa4007c 	lw	a0,124(sp)
    1558:	02002825 	move	a1,s0
    155c:	0c000000 	jal	0 <func_808C1190>
    1560:	24060007 	li	a2,7
    1564:	0c000000 	jal	0 <func_808C1190>
    1568:	02002025 	move	a0,s0
    156c:	24180032 	li	t8,50
    1570:	a61801da 	sh	t8,474(s0)
    1574:	a60001bc 	sh	zero,444(s0)
    1578:	8fa8006c 	lw	t0,108(sp)
    157c:	2419bffe 	li	t9,-16386
    1580:	3c090000 	lui	t1,0x0
    1584:	a51900b6 	sh	t9,182(t0)
    1588:	95290ee2 	lhu	t1,3810(t1)
    158c:	3c010000 	lui	at,0x0
    1590:	352a0002 	ori	t2,t1,0x2
    1594:	a42a0ee2 	sh	t2,3810(at)
    1598:	860b01b4 	lh	t3,436(s0)
    159c:	5160004f 	beqzl	t3,16dc <L808C23A8+0x4c4>
    15a0:	8fbf002c 	lw	ra,44(sp)
    15a4:	860201b6 	lh	v0,438(s0)
    15a8:	10400002 	beqz	v0,15b4 <L808C23A8+0x39c>
    15ac:	244cffff 	addiu	t4,v0,-1
    15b0:	a60c01b6 	sh	t4,438(s0)
    15b4:	c6100428 	lwc1	$f16,1064(s0)
    15b8:	3c010000 	lui	at,0x0
    15bc:	c4260000 	lwc1	$f6,0(at)
    15c0:	e7b00060 	swc1	$f16,96(sp)
    15c4:	860d01b6 	lh	t5,438(s0)
    15c8:	3c0142b4 	lui	at,0x42b4
    15cc:	44815000 	mtc1	at,$f10
    15d0:	448d9000 	mtc1	t5,$f18
    15d4:	3c014334 	lui	at,0x4334
    15d8:	46809120 	cvt.s.w	$f4,$f18
    15dc:	44819000 	mtc1	at,$f18
    15e0:	46062202 	mul.s	$f8,$f4,$f6
    15e4:	00000000 	nop
    15e8:	460a4402 	mul.s	$f16,$f8,$f10
    15ec:	0c000000 	jal	0 <func_808C1190>
    15f0:	46128303 	div.s	$f12,$f16,$f18
    15f4:	860e01b6 	lh	t6,438(s0)
    15f8:	3c010000 	lui	at,0x0
    15fc:	c42a0000 	lwc1	$f10,0(at)
    1600:	448e2000 	mtc1	t6,$f4
    1604:	c612042c 	lwc1	$f18,1068(s0)
    1608:	3c010000 	lui	at,0x0
    160c:	468021a0 	cvt.s.w	$f6,$f4
    1610:	46003202 	mul.s	$f8,$f6,$f0
    1614:	00000000 	nop
    1618:	460a4402 	mul.s	$f16,$f8,$f10
    161c:	46128100 	add.s	$f4,$f16,$f18
    1620:	c4320000 	lwc1	$f18,0(at)
    1624:	3c0142b4 	lui	at,0x42b4
    1628:	e7a40064 	swc1	$f4,100(sp)
    162c:	c6060430 	lwc1	$f6,1072(s0)
    1630:	e7a60068 	swc1	$f6,104(sp)
    1634:	c6080434 	lwc1	$f8,1076(s0)
    1638:	44813000 	mtc1	at,$f6
    163c:	3c014334 	lui	at,0x4334
    1640:	e7a80054 	swc1	$f8,84(sp)
    1644:	860f01b6 	lh	t7,438(s0)
    1648:	448f5000 	mtc1	t7,$f10
    164c:	00000000 	nop
    1650:	46805420 	cvt.s.w	$f16,$f10
    1654:	44815000 	mtc1	at,$f10
    1658:	46128102 	mul.s	$f4,$f16,$f18
    165c:	00000000 	nop
    1660:	46062202 	mul.s	$f8,$f4,$f6
    1664:	0c000000 	jal	0 <func_808C1190>
    1668:	460a4303 	div.s	$f12,$f8,$f10
    166c:	861801b6 	lh	t8,438(s0)
    1670:	3c010000 	lui	at,0x0
    1674:	c4260000 	lwc1	$f6,0(at)
    1678:	44988000 	mtc1	t8,$f16
    167c:	c60a0438 	lwc1	$f10,1080(s0)
    1680:	3c013f80 	lui	at,0x3f80
    1684:	468084a0 	cvt.s.w	$f18,$f16
    1688:	27b90048 	addiu	t9,sp,72
    168c:	8fa4007c 	lw	a0,124(sp)
    1690:	27a60054 	addiu	a2,sp,84
    1694:	27a70060 	addiu	a3,sp,96
    1698:	46009102 	mul.s	$f4,$f18,$f0
    169c:	00000000 	nop
    16a0:	46062202 	mul.s	$f8,$f4,$f6
    16a4:	44813000 	mtc1	at,$f6
    16a8:	460a4400 	add.s	$f16,$f8,$f10
    16ac:	e7b00058 	swc1	$f16,88(sp)
    16b0:	c612043c 	lwc1	$f18,1084(s0)
    16b4:	e7b2005c 	swc1	$f18,92(sp)
    16b8:	c604020c 	lwc1	$f4,524(s0)
    16bc:	e7a6004c 	swc1	$f6,76(sp)
    16c0:	e7a40048 	swc1	$f4,72(sp)
    16c4:	c608020c 	lwc1	$f8,524(s0)
    16c8:	e7a80050 	swc1	$f8,80(sp)
    16cc:	860501b4 	lh	a1,436(s0)
    16d0:	0c000000 	jal	0 <func_808C1190>
    16d4:	afb90010 	sw	t9,16(sp)
    16d8:	8fbf002c 	lw	ra,44(sp)
    16dc:	8fb00028 	lw	s0,40(sp)
    16e0:	27bd0078 	addiu	sp,sp,120
    16e4:	03e00008 	jr	ra
    16e8:	00000000 	nop

000016ec <func_808C287C>:
    16ec:	27bdffd0 	addiu	sp,sp,-48
    16f0:	afbf0024 	sw	ra,36(sp)
    16f4:	afa40030 	sw	a0,48(sp)
    16f8:	8c8f0190 	lw	t7,400(a0)
    16fc:	3c030000 	lui	v1,0x0
    1700:	24630000 	addiu	v1,v1,0
    1704:	106f0016 	beq	v1,t7,1760 <func_808C287C+0x74>
    1708:	3c040600 	lui	a0,0x600
    170c:	24841074 	addiu	a0,a0,4212
    1710:	0c000000 	jal	0 <func_808C1190>
    1714:	afa30028 	sw	v1,40(sp)
    1718:	44822000 	mtc1	v0,$f4
    171c:	3c01c0a0 	lui	at,0xc0a0
    1720:	44814000 	mtc1	at,$f8
    1724:	468021a0 	cvt.s.w	$f6,$f4
    1728:	8fa40030 	lw	a0,48(sp)
    172c:	3c050600 	lui	a1,0x600
    1730:	24180002 	li	t8,2
    1734:	afb80014 	sw	t8,20(sp)
    1738:	24a51074 	addiu	a1,a1,4212
    173c:	e7a60010 	swc1	$f6,16(sp)
    1740:	3c063f80 	lui	a2,0x3f80
    1744:	24070000 	li	a3,0
    1748:	e7a80018 	swc1	$f8,24(sp)
    174c:	0c000000 	jal	0 <func_808C1190>
    1750:	2484014c 	addiu	a0,a0,332
    1754:	8fa30028 	lw	v1,40(sp)
    1758:	8fb90030 	lw	t9,48(sp)
    175c:	af230190 	sw	v1,400(t9)
    1760:	8fa90030 	lw	t1,48(sp)
    1764:	24080064 	li	t0,100
    1768:	a52801da 	sh	t0,474(t1)
    176c:	8fbf0024 	lw	ra,36(sp)
    1770:	27bd0030 	addiu	sp,sp,48
    1774:	03e00008 	jr	ra
    1778:	00000000 	nop

0000177c <func_808C290C>:
    177c:	27bdffd0 	addiu	sp,sp,-48
    1780:	afb00028 	sw	s0,40(sp)
    1784:	00808025 	move	s0,a0
    1788:	afbf002c 	sw	ra,44(sp)
    178c:	3c040601 	lui	a0,0x601
    1790:	0c000000 	jal	0 <func_808C1190>
    1794:	2484e848 	addiu	a0,a0,-6072
    1798:	44822000 	mtc1	v0,$f4
    179c:	3c01c0a0 	lui	at,0xc0a0
    17a0:	44814000 	mtc1	at,$f8
    17a4:	468021a0 	cvt.s.w	$f6,$f4
    17a8:	3c050601 	lui	a1,0x601
    17ac:	240e0002 	li	t6,2
    17b0:	afae0014 	sw	t6,20(sp)
    17b4:	24a5e848 	addiu	a1,a1,-6072
    17b8:	2604014c 	addiu	a0,s0,332
    17bc:	e7a60010 	swc1	$f6,16(sp)
    17c0:	3c063f80 	lui	a2,0x3f80
    17c4:	24070000 	li	a3,0
    17c8:	0c000000 	jal	0 <func_808C1190>
    17cc:	e7a80018 	swc1	$f8,24(sp)
    17d0:	3c014248 	lui	at,0x4248
    17d4:	44815000 	mtc1	at,$f10
    17d8:	3c014396 	lui	at,0x4396
    17dc:	44818000 	mtc1	at,$f16
    17e0:	3c0f0000 	lui	t7,0x0
    17e4:	25ef0000 	addiu	t7,t7,0
    17e8:	2418000a 	li	t8,10
    17ec:	24190002 	li	t9,2
    17f0:	24080023 	li	t0,35
    17f4:	ae0f0190 	sw	t7,400(s0)
    17f8:	a61801b0 	sh	t8,432(s0)
    17fc:	a61901c0 	sh	t9,448(s0)
    1800:	a60801da 	sh	t0,474(s0)
    1804:	e60a01fc 	swc1	$f10,508(s0)
    1808:	e6100200 	swc1	$f16,512(s0)
    180c:	8fbf002c 	lw	ra,44(sp)
    1810:	8fb00028 	lw	s0,40(sp)
    1814:	27bd0030 	addiu	sp,sp,48
    1818:	03e00008 	jr	ra
    181c:	00000000 	nop

00001820 <func_808C29B0>:
    1820:	27bdffd0 	addiu	sp,sp,-48
    1824:	afb00028 	sw	s0,40(sp)
    1828:	00808025 	move	s0,a0
    182c:	afbf002c 	sw	ra,44(sp)
    1830:	3c040602 	lui	a0,0x602
    1834:	0c000000 	jal	0 <func_808C1190>
    1838:	2484d934 	addiu	a0,a0,-9932
    183c:	44822000 	mtc1	v0,$f4
    1840:	3c01c120 	lui	at,0xc120
    1844:	44814000 	mtc1	at,$f8
    1848:	468021a0 	cvt.s.w	$f6,$f4
    184c:	3c050602 	lui	a1,0x602
    1850:	240e0002 	li	t6,2
    1854:	afae0014 	sw	t6,20(sp)
    1858:	24a5d934 	addiu	a1,a1,-9932
    185c:	2604014c 	addiu	a0,s0,332
    1860:	e7a60010 	swc1	$f6,16(sp)
    1864:	3c063f80 	lui	a2,0x3f80
    1868:	24070000 	li	a3,0
    186c:	0c000000 	jal	0 <func_808C1190>
    1870:	e7a80018 	swc1	$f8,24(sp)
    1874:	8e180004 	lw	t8,4(s0)
    1878:	44805000 	mtc1	zero,$f10
    187c:	3c0f0000 	lui	t7,0x0
    1880:	25ef0000 	addiu	t7,t7,0
    1884:	37190001 	ori	t9,t8,0x1
    1888:	a60001aa 	sh	zero,426(s0)
    188c:	ae0f0190 	sw	t7,400(s0)
    1890:	a60001da 	sh	zero,474(s0)
    1894:	ae190004 	sw	t9,4(s0)
    1898:	e60a01e4 	swc1	$f10,484(s0)
    189c:	8fbf002c 	lw	ra,44(sp)
    18a0:	8fb00028 	lw	s0,40(sp)
    18a4:	27bd0030 	addiu	sp,sp,48
    18a8:	03e00008 	jr	ra
    18ac:	00000000 	nop

000018b0 <func_808C2A40>:
    18b0:	3c01426c 	lui	at,0x426c
    18b4:	44812000 	mtc1	at,$f4
    18b8:	27bdffd8 	addiu	sp,sp,-40
    18bc:	3c01c0a0 	lui	at,0xc0a0
    18c0:	44813000 	mtc1	at,$f6
    18c4:	afbf0024 	sw	ra,36(sp)
    18c8:	afa40028 	sw	a0,40(sp)
    18cc:	3c050601 	lui	a1,0x601
    18d0:	240e0002 	li	t6,2
    18d4:	afae0014 	sw	t6,20(sp)
    18d8:	24a5df38 	addiu	a1,a1,-8392
    18dc:	2484014c 	addiu	a0,a0,332
    18e0:	3c063f80 	lui	a2,0x3f80
    18e4:	24070000 	li	a3,0
    18e8:	e7a40010 	swc1	$f4,16(sp)
    18ec:	0c000000 	jal	0 <func_808C1190>
    18f0:	e7a60018 	swc1	$f6,24(sp)
    18f4:	8fa20028 	lw	v0,40(sp)
    18f8:	3c0f0000 	lui	t7,0x0
    18fc:	25ef0000 	addiu	t7,t7,0
    1900:	2418001b 	li	t8,27
    1904:	ac4f0190 	sw	t7,400(v0)
    1908:	a44001a8 	sh	zero,424(v0)
    190c:	a45801da 	sh	t8,474(v0)
    1910:	8fbf0024 	lw	ra,36(sp)
    1914:	27bd0028 	addiu	sp,sp,40
    1918:	03e00008 	jr	ra
    191c:	00000000 	nop

00001920 <func_808C2AB0>:
    1920:	44800000 	mtc1	zero,$f0
    1924:	27bdffd0 	addiu	sp,sp,-48
    1928:	afb00028 	sw	s0,40(sp)
    192c:	afbf002c 	sw	ra,44(sp)
    1930:	00808025 	move	s0,a0
    1934:	e4800068 	swc1	$f0,104(a0)
    1938:	e48001e4 	swc1	$f0,484(a0)
    193c:	3c040600 	lui	a0,0x600
    1940:	0c000000 	jal	0 <func_808C1190>
    1944:	248461d4 	addiu	a0,a0,25044
    1948:	44822000 	mtc1	v0,$f4
    194c:	44800000 	mtc1	zero,$f0
    1950:	3c050600 	lui	a1,0x600
    1954:	468021a0 	cvt.s.w	$f6,$f4
    1958:	240e0002 	li	t6,2
    195c:	44070000 	mfc1	a3,$f0
    1960:	afae0014 	sw	t6,20(sp)
    1964:	24a561d4 	addiu	a1,a1,25044
    1968:	2604014c 	addiu	a0,s0,332
    196c:	e7a60010 	swc1	$f6,16(sp)
    1970:	3c063f80 	lui	a2,0x3f80
    1974:	0c000000 	jal	0 <func_808C1190>
    1978:	e7a00018 	swc1	$f0,24(sp)
    197c:	3c0f0000 	lui	t7,0x0
    1980:	25ef0000 	addiu	t7,t7,0
    1984:	24180032 	li	t8,50
    1988:	ae0f0190 	sw	t7,400(s0)
    198c:	a61801da 	sh	t8,474(s0)
    1990:	a60001ae 	sh	zero,430(s0)
    1994:	8fbf002c 	lw	ra,44(sp)
    1998:	8fb00028 	lw	s0,40(sp)
    199c:	27bd0030 	addiu	sp,sp,48
    19a0:	03e00008 	jr	ra
    19a4:	00000000 	nop

000019a8 <func_808C2B38>:
    19a8:	44802000 	mtc1	zero,$f4
    19ac:	27bdffd0 	addiu	sp,sp,-48
    19b0:	afb00028 	sw	s0,40(sp)
    19b4:	afbf002c 	sw	ra,44(sp)
    19b8:	00808025 	move	s0,a0
    19bc:	e4840068 	swc1	$f4,104(a0)
    19c0:	3c040601 	lui	a0,0x601
    19c4:	0c000000 	jal	0 <func_808C1190>
    19c8:	24848eec 	addiu	a0,a0,-28948
    19cc:	44823000 	mtc1	v0,$f6
    19d0:	3c01c0a0 	lui	at,0xc0a0
    19d4:	44815000 	mtc1	at,$f10
    19d8:	46803220 	cvt.s.w	$f8,$f6
    19dc:	3c050601 	lui	a1,0x601
    19e0:	240e0002 	li	t6,2
    19e4:	afae0014 	sw	t6,20(sp)
    19e8:	24a58eec 	addiu	a1,a1,-28948
    19ec:	2604014c 	addiu	a0,s0,332
    19f0:	e7a80010 	swc1	$f8,16(sp)
    19f4:	3c063f80 	lui	a2,0x3f80
    19f8:	24070000 	li	a3,0
    19fc:	0c000000 	jal	0 <func_808C1190>
    1a00:	e7aa0018 	swc1	$f10,24(sp)
    1a04:	3c0f0000 	lui	t7,0x0
    1a08:	25ef0000 	addiu	t7,t7,0
    1a0c:	24180064 	li	t8,100
    1a10:	24190001 	li	t9,1
    1a14:	ae0f0190 	sw	t7,400(s0)
    1a18:	a61801da 	sh	t8,474(s0)
    1a1c:	a60001ac 	sh	zero,428(s0)
    1a20:	a21901e2 	sb	t9,482(s0)
    1a24:	8fbf002c 	lw	ra,44(sp)
    1a28:	8fb00028 	lw	s0,40(sp)
    1a2c:	27bd0030 	addiu	sp,sp,48
    1a30:	03e00008 	jr	ra
    1a34:	00000000 	nop

00001a38 <func_808C2BC8>:
    1a38:	27bdffd8 	addiu	sp,sp,-40
    1a3c:	afa40028 	sw	a0,40(sp)
    1a40:	afbf001c 	sw	ra,28(sp)
    1a44:	2484014c 	addiu	a0,a0,332
    1a48:	afa5002c 	sw	a1,44(sp)
    1a4c:	0c000000 	jal	0 <func_808C1190>
    1a50:	afa40020 	sw	a0,32(sp)
    1a54:	3c010000 	lui	at,0x0
    1a58:	c4240000 	lwc1	$f4,0(at)
    1a5c:	8fa40028 	lw	a0,40(sp)
    1a60:	3c073ca3 	lui	a3,0x3ca3
    1a64:	34e7d70a 	ori	a3,a3,0xd70a
    1a68:	3c053f80 	lui	a1,0x3f80
    1a6c:	3c063f00 	lui	a2,0x3f00
    1a70:	e7a40010 	swc1	$f4,16(sp)
    1a74:	0c000000 	jal	0 <func_808C1190>
    1a78:	248401f8 	addiu	a0,a0,504
    1a7c:	8fa40028 	lw	a0,40(sp)
    1a80:	44803000 	mtc1	zero,$f6
    1a84:	3c053d4c 	lui	a1,0x3d4c
    1a88:	3c073ba3 	lui	a3,0x3ba3
    1a8c:	34e7d70a 	ori	a3,a3,0xd70a
    1a90:	34a5cccd 	ori	a1,a1,0xcccd
    1a94:	3c063f80 	lui	a2,0x3f80
    1a98:	24840208 	addiu	a0,a0,520
    1a9c:	0c000000 	jal	0 <func_808C1190>
    1aa0:	e7a60010 	swc1	$f6,16(sp)
    1aa4:	3c040600 	lui	a0,0x600
    1aa8:	0c000000 	jal	0 <func_808C1190>
    1aac:	24841074 	addiu	a0,a0,4212
    1ab0:	44824000 	mtc1	v0,$f8
    1ab4:	8fa40020 	lw	a0,32(sp)
    1ab8:	46804220 	cvt.s.w	$f8,$f8
    1abc:	44054000 	mfc1	a1,$f8
    1ac0:	0c000000 	jal	0 <func_808C1190>
    1ac4:	00000000 	nop
    1ac8:	50400004 	beqzl	v0,1adc <func_808C2BC8+0xa4>
    1acc:	8fbf001c 	lw	ra,28(sp)
    1ad0:	0c000000 	jal	0 <func_808C1190>
    1ad4:	8fa40028 	lw	a0,40(sp)
    1ad8:	8fbf001c 	lw	ra,28(sp)
    1adc:	27bd0028 	addiu	sp,sp,40
    1ae0:	03e00008 	jr	ra
    1ae4:	00000000 	nop

00001ae8 <func_808C2C78>:
    1ae8:	27bdff60 	addiu	sp,sp,-160
    1aec:	afb70068 	sw	s7,104(sp)
    1af0:	44802000 	mtc1	zero,$f4
    1af4:	00a0b825 	move	s7,a1
    1af8:	afb10050 	sw	s1,80(sp)
    1afc:	00808825 	move	s1,a0
    1b00:	afbf006c 	sw	ra,108(sp)
    1b04:	3c053d4c 	lui	a1,0x3d4c
    1b08:	3c073ba3 	lui	a3,0x3ba3
    1b0c:	afb60064 	sw	s6,100(sp)
    1b10:	afb50060 	sw	s5,96(sp)
    1b14:	afb4005c 	sw	s4,92(sp)
    1b18:	afb30058 	sw	s3,88(sp)
    1b1c:	afb20054 	sw	s2,84(sp)
    1b20:	afb0004c 	sw	s0,76(sp)
    1b24:	f7ba0040 	sdc1	$f26,64(sp)
    1b28:	f7b80038 	sdc1	$f24,56(sp)
    1b2c:	f7b60030 	sdc1	$f22,48(sp)
    1b30:	f7b40028 	sdc1	$f20,40(sp)
    1b34:	34e7d70a 	ori	a3,a3,0xd70a
    1b38:	34a5cccd 	ori	a1,a1,0xcccd
    1b3c:	24840208 	addiu	a0,a0,520
    1b40:	3c063f80 	lui	a2,0x3f80
    1b44:	0c000000 	jal	0 <func_808C1190>
    1b48:	e7a40010 	swc1	$f4,16(sp)
    1b4c:	2624014c 	addiu	a0,s1,332
    1b50:	0c000000 	jal	0 <func_808C1190>
    1b54:	afa40070 	sw	a0,112(sp)
    1b58:	862e01da 	lh	t6,474(s1)
    1b5c:	00008025 	move	s0,zero
    1b60:	3c0142b4 	lui	at,0x42b4
    1b64:	15c00066 	bnez	t6,1d00 <func_808C2C78+0x218>
    1b68:	3c160000 	lui	s6,0x0
    1b6c:	4481d000 	mtc1	at,$f26
    1b70:	3c014040 	lui	at,0x4040
    1b74:	4481c000 	mtc1	at,$f24
    1b78:	3c010000 	lui	at,0x0
    1b7c:	c4360000 	lwc1	$f22,0(at)
    1b80:	3c0141a0 	lui	at,0x41a0
    1b84:	3c150000 	lui	s5,0x0
    1b88:	4481a000 	mtc1	at,$f20
    1b8c:	26b50000 	addiu	s5,s5,0
    1b90:	26d60000 	addiu	s6,s6,0
    1b94:	27b40084 	addiu	s4,sp,132
    1b98:	27b30090 	addiu	s3,sp,144
    1b9c:	27b20078 	addiu	s2,sp,120
    1ba0:	0c000000 	jal	0 <func_808C1190>
    1ba4:	4600a306 	mov.s	$f12,$f20
    1ba8:	e7a00090 	swc1	$f0,144(sp)
    1bac:	0c000000 	jal	0 <func_808C1190>
    1bb0:	4600a306 	mov.s	$f12,$f20
    1bb4:	e7a00094 	swc1	$f0,148(sp)
    1bb8:	0c000000 	jal	0 <func_808C1190>
    1bbc:	4600a306 	mov.s	$f12,$f20
    1bc0:	c7a60090 	lwc1	$f6,144(sp)
    1bc4:	c7aa0094 	lwc1	$f10,148(sp)
    1bc8:	e7a00098 	swc1	$f0,152(sp)
    1bcc:	46163202 	mul.s	$f8,$f6,$f22
    1bd0:	240f01f4 	li	t7,500
    1bd4:	2418000a 	li	t8,10
    1bd8:	46165402 	mul.s	$f16,$f10,$f22
    1bdc:	2419000a 	li	t9,10
    1be0:	02e02025 	move	a0,s7
    1be4:	46160482 	mul.s	$f18,$f0,$f22
    1be8:	e7a80084 	swc1	$f8,132(sp)
    1bec:	02402825 	move	a1,s2
    1bf0:	46183202 	mul.s	$f8,$f6,$f24
    1bf4:	e7b00088 	swc1	$f16,136(sp)
    1bf8:	02603025 	move	a2,s3
    1bfc:	02803825 	move	a3,s4
    1c00:	e7b2008c 	swc1	$f18,140(sp)
    1c04:	c6240024 	lwc1	$f4,36(s1)
    1c08:	46082400 	add.s	$f16,$f4,$f8
    1c0c:	46185102 	mul.s	$f4,$f10,$f24
    1c10:	e7b00078 	swc1	$f16,120(sp)
    1c14:	c6320028 	lwc1	$f18,40(s1)
    1c18:	461a9180 	add.s	$f6,$f18,$f26
    1c1c:	46180482 	mul.s	$f18,$f0,$f24
    1c20:	46043200 	add.s	$f8,$f6,$f4
    1c24:	e7a8007c 	swc1	$f8,124(sp)
    1c28:	c630002c 	lwc1	$f16,44(s1)
    1c2c:	afb90020 	sw	t9,32(sp)
    1c30:	afb8001c 	sw	t8,28(sp)
    1c34:	46128280 	add.s	$f10,$f16,$f18
    1c38:	afaf0018 	sw	t7,24(sp)
    1c3c:	afb60014 	sw	s6,20(sp)
    1c40:	afb50010 	sw	s5,16(sp)
    1c44:	0c000000 	jal	0 <func_808C1190>
    1c48:	e7aa0080 	swc1	$f10,128(sp)
    1c4c:	26100001 	addiu	s0,s0,1
    1c50:	00108400 	sll	s0,s0,0x10
    1c54:	00108403 	sra	s0,s0,0x10
    1c58:	2a01001e 	slti	at,s0,30
    1c5c:	1420ffd0 	bnez	at,1ba0 <func_808C2C78+0xb8>
    1c60:	00000000 	nop
    1c64:	3c100600 	lui	s0,0x600
    1c68:	26104e0c 	addiu	s0,s0,19980
    1c6c:	0c000000 	jal	0 <func_808C1190>
    1c70:	02002025 	move	a0,s0
    1c74:	44823000 	mtc1	v0,$f6
    1c78:	3c01c0a0 	lui	at,0xc0a0
    1c7c:	44814000 	mtc1	at,$f8
    1c80:	46803120 	cvt.s.w	$f4,$f6
    1c84:	24080002 	li	t0,2
    1c88:	afa80014 	sw	t0,20(sp)
    1c8c:	8fa40070 	lw	a0,112(sp)
    1c90:	02002825 	move	a1,s0
    1c94:	3c063f80 	lui	a2,0x3f80
    1c98:	e7a40010 	swc1	$f4,16(sp)
    1c9c:	24070000 	li	a3,0
    1ca0:	0c000000 	jal	0 <func_808C1190>
    1ca4:	e7a80018 	swc1	$f8,24(sp)
    1ca8:	3c090000 	lui	t1,0x0
    1cac:	25290000 	addiu	t1,t1,0
    1cb0:	ae290190 	sw	t1,400(s1)
    1cb4:	02202025 	move	a0,s1
    1cb8:	0c000000 	jal	0 <func_808C1190>
    1cbc:	2405180e 	li	a1,6158
    1cc0:	02202025 	move	a0,s1
    1cc4:	0c000000 	jal	0 <func_808C1190>
    1cc8:	24053806 	li	a1,14342
    1ccc:	02202025 	move	a0,s1
    1cd0:	02e02825 	move	a1,s7
    1cd4:	24060004 	li	a2,4
    1cd8:	0c000000 	jal	0 <func_808C1190>
    1cdc:	2407000a 	li	a3,10
    1ce0:	862a0194 	lh	t2,404(s1)
    1ce4:	240d0001 	li	t5,1
    1ce8:	254bfffe 	addiu	t3,t2,-2
    1cec:	a62b0194 	sh	t3,404(s1)
    1cf0:	862c0194 	lh	t4,404(s1)
    1cf4:	5d800003 	bgtzl	t4,1d04 <func_808C2C78+0x21c>
    1cf8:	8fbf006c 	lw	ra,108(sp)
    1cfc:	a62d0194 	sh	t5,404(s1)
    1d00:	8fbf006c 	lw	ra,108(sp)
    1d04:	d7b40028 	ldc1	$f20,40(sp)
    1d08:	d7b60030 	ldc1	$f22,48(sp)
    1d0c:	d7b80038 	ldc1	$f24,56(sp)
    1d10:	d7ba0040 	ldc1	$f26,64(sp)
    1d14:	8fb0004c 	lw	s0,76(sp)
    1d18:	8fb10050 	lw	s1,80(sp)
    1d1c:	8fb20054 	lw	s2,84(sp)
    1d20:	8fb30058 	lw	s3,88(sp)
    1d24:	8fb4005c 	lw	s4,92(sp)
    1d28:	8fb50060 	lw	s5,96(sp)
    1d2c:	8fb60064 	lw	s6,100(sp)
    1d30:	8fb70068 	lw	s7,104(sp)
    1d34:	03e00008 	jr	ra
    1d38:	27bd00a0 	addiu	sp,sp,160

00001d3c <func_808C2ECC>:
    1d3c:	27bdffc8 	addiu	sp,sp,-56
    1d40:	afbf002c 	sw	ra,44(sp)
    1d44:	afb00028 	sw	s0,40(sp)
    1d48:	afa5003c 	sw	a1,60(sp)
    1d4c:	240e000a 	li	t6,10
    1d50:	a48e01be 	sh	t6,446(a0)
    1d54:	3c010000 	lui	at,0x0
    1d58:	c4240000 	lwc1	$f4,0(at)
    1d5c:	00808025 	move	s0,a0
    1d60:	3c053fa6 	lui	a1,0x3fa6
    1d64:	3c073dcc 	lui	a3,0x3dcc
    1d68:	34e7cccd 	ori	a3,a3,0xcccd
    1d6c:	34a56666 	ori	a1,a1,0x6666
    1d70:	248401f8 	addiu	a0,a0,504
    1d74:	3c063f80 	lui	a2,0x3f80
    1d78:	0c000000 	jal	0 <func_808C1190>
    1d7c:	e7a40010 	swc1	$f4,16(sp)
    1d80:	2604014c 	addiu	a0,s0,332
    1d84:	0c000000 	jal	0 <func_808C1190>
    1d88:	afa40030 	sw	a0,48(sp)
    1d8c:	3c040600 	lui	a0,0x600
    1d90:	0c000000 	jal	0 <func_808C1190>
    1d94:	24844e0c 	addiu	a0,a0,19980
    1d98:	44823000 	mtc1	v0,$f6
    1d9c:	8fa40030 	lw	a0,48(sp)
    1da0:	468031a0 	cvt.s.w	$f6,$f6
    1da4:	44053000 	mfc1	a1,$f6
    1da8:	0c000000 	jal	0 <func_808C1190>
    1dac:	00000000 	nop
    1db0:	10400015 	beqz	v0,1e08 <func_808C2ECC+0xcc>
    1db4:	3c040600 	lui	a0,0x600
    1db8:	0c000000 	jal	0 <func_808C1190>
    1dbc:	248442a8 	addiu	a0,a0,17064
    1dc0:	44824000 	mtc1	v0,$f8
    1dc4:	3c01c0a0 	lui	at,0xc0a0
    1dc8:	44818000 	mtc1	at,$f16
    1dcc:	468042a0 	cvt.s.w	$f10,$f8
    1dd0:	3c050600 	lui	a1,0x600
    1dd4:	24a542a8 	addiu	a1,a1,17064
    1dd8:	8fa40030 	lw	a0,48(sp)
    1ddc:	3c063f80 	lui	a2,0x3f80
    1de0:	24070000 	li	a3,0
    1de4:	e7aa0010 	swc1	$f10,16(sp)
    1de8:	afa00014 	sw	zero,20(sp)
    1dec:	0c000000 	jal	0 <func_808C1190>
    1df0:	e7b00018 	swc1	$f16,24(sp)
    1df4:	3c0f0000 	lui	t7,0x0
    1df8:	25ef0000 	addiu	t7,t7,0
    1dfc:	24180064 	li	t8,100
    1e00:	ae0f0190 	sw	t7,400(s0)
    1e04:	a61801da 	sh	t8,474(s0)
    1e08:	8fbf002c 	lw	ra,44(sp)
    1e0c:	8fb00028 	lw	s0,40(sp)
    1e10:	27bd0038 	addiu	sp,sp,56
    1e14:	03e00008 	jr	ra
    1e18:	00000000 	nop

00001e1c <func_808C2FAC>:
    1e1c:	27bdffc8 	addiu	sp,sp,-56
    1e20:	afbf002c 	sw	ra,44(sp)
    1e24:	afb00028 	sw	s0,40(sp)
    1e28:	afa5003c 	sw	a1,60(sp)
    1e2c:	00808025 	move	s0,a0
    1e30:	0c000000 	jal	0 <func_808C1190>
    1e34:	24053051 	li	a1,12369
    1e38:	240e000a 	li	t6,10
    1e3c:	a60e01be 	sh	t6,446(s0)
    1e40:	3c010000 	lui	at,0x0
    1e44:	c4240000 	lwc1	$f4,0(at)
    1e48:	3c073ca3 	lui	a3,0x3ca3
    1e4c:	34e7d70a 	ori	a3,a3,0xd70a
    1e50:	260401f8 	addiu	a0,s0,504
    1e54:	3c053f80 	lui	a1,0x3f80
    1e58:	3c063f00 	lui	a2,0x3f00
    1e5c:	0c000000 	jal	0 <func_808C1190>
    1e60:	e7a40010 	swc1	$f4,16(sp)
    1e64:	44803000 	mtc1	zero,$f6
    1e68:	3c053d4c 	lui	a1,0x3d4c
    1e6c:	3c073ba3 	lui	a3,0x3ba3
    1e70:	34e7d70a 	ori	a3,a3,0xd70a
    1e74:	34a5cccd 	ori	a1,a1,0xcccd
    1e78:	26040208 	addiu	a0,s0,520
    1e7c:	3c063f80 	lui	a2,0x3f80
    1e80:	0c000000 	jal	0 <func_808C1190>
    1e84:	e7a60010 	swc1	$f6,16(sp)
    1e88:	2604014c 	addiu	a0,s0,332
    1e8c:	0c000000 	jal	0 <func_808C1190>
    1e90:	afa40030 	sw	a0,48(sp)
    1e94:	860f01da 	lh	t7,474(s0)
    1e98:	3c040601 	lui	a0,0x601
    1e9c:	55e00015 	bnezl	t7,1ef4 <func_808C2FAC+0xd8>
    1ea0:	8fbf002c 	lw	ra,44(sp)
    1ea4:	0c000000 	jal	0 <func_808C1190>
    1ea8:	24849d10 	addiu	a0,a0,-25328
    1eac:	44824000 	mtc1	v0,$f8
    1eb0:	3c01c0a0 	lui	at,0xc0a0
    1eb4:	44818000 	mtc1	at,$f16
    1eb8:	468042a0 	cvt.s.w	$f10,$f8
    1ebc:	3c050601 	lui	a1,0x601
    1ec0:	24180002 	li	t8,2
    1ec4:	afb80014 	sw	t8,20(sp)
    1ec8:	24a59d10 	addiu	a1,a1,-25328
    1ecc:	8fa40030 	lw	a0,48(sp)
    1ed0:	e7aa0010 	swc1	$f10,16(sp)
    1ed4:	3c063f80 	lui	a2,0x3f80
    1ed8:	24070000 	li	a3,0
    1edc:	0c000000 	jal	0 <func_808C1190>
    1ee0:	e7b00018 	swc1	$f16,24(sp)
    1ee4:	3c190000 	lui	t9,0x0
    1ee8:	27390000 	addiu	t9,t9,0
    1eec:	ae190190 	sw	t9,400(s0)
    1ef0:	8fbf002c 	lw	ra,44(sp)
    1ef4:	8fb00028 	lw	s0,40(sp)
    1ef8:	27bd0038 	addiu	sp,sp,56
    1efc:	03e00008 	jr	ra
    1f00:	00000000 	nop

00001f04 <func_808C3094>:
    1f04:	27bdffe0 	addiu	sp,sp,-32
    1f08:	afa40020 	sw	a0,32(sp)
    1f0c:	afbf0014 	sw	ra,20(sp)
    1f10:	2484014c 	addiu	a0,a0,332
    1f14:	afa50024 	sw	a1,36(sp)
    1f18:	0c000000 	jal	0 <func_808C1190>
    1f1c:	afa40018 	sw	a0,24(sp)
    1f20:	3c040601 	lui	a0,0x601
    1f24:	0c000000 	jal	0 <func_808C1190>
    1f28:	24849d10 	addiu	a0,a0,-25328
    1f2c:	44822000 	mtc1	v0,$f4
    1f30:	8fa40018 	lw	a0,24(sp)
    1f34:	46802120 	cvt.s.w	$f4,$f4
    1f38:	44052000 	mfc1	a1,$f4
    1f3c:	0c000000 	jal	0 <func_808C1190>
    1f40:	00000000 	nop
    1f44:	50400004 	beqzl	v0,1f58 <func_808C3094+0x54>
    1f48:	8fbf0014 	lw	ra,20(sp)
    1f4c:	0c000000 	jal	0 <func_808C1190>
    1f50:	8fa40020 	lw	a0,32(sp)
    1f54:	8fbf0014 	lw	ra,20(sp)
    1f58:	27bd0020 	addiu	sp,sp,32
    1f5c:	03e00008 	jr	ra
    1f60:	00000000 	nop

00001f64 <func_808C30F4>:
    1f64:	27bdffb8 	addiu	sp,sp,-72
    1f68:	3c0f0000 	lui	t7,0x0
    1f6c:	afbf0024 	sw	ra,36(sp)
    1f70:	afb00020 	sw	s0,32(sp)
    1f74:	afa5004c 	sw	a1,76(sp)
    1f78:	25ef0000 	addiu	t7,t7,0
    1f7c:	8df90000 	lw	t9,0(t7)
    1f80:	27ae0038 	addiu	t6,sp,56
    1f84:	8df80004 	lw	t8,4(t7)
    1f88:	add90000 	sw	t9,0(t6)
    1f8c:	8df90008 	lw	t9,8(t7)
    1f90:	3c090000 	lui	t1,0x0
    1f94:	25290000 	addiu	t1,t1,0
    1f98:	add80004 	sw	t8,4(t6)
    1f9c:	add90008 	sw	t9,8(t6)
    1fa0:	8d2b0000 	lw	t3,0(t1)
    1fa4:	27a8002c 	addiu	t0,sp,44
    1fa8:	8d2a0004 	lw	t2,4(t1)
    1fac:	ad0b0000 	sw	t3,0(t0)
    1fb0:	8d2b0008 	lw	t3,8(t1)
    1fb4:	00808025 	move	s0,a0
    1fb8:	2484014c 	addiu	a0,a0,332
    1fbc:	ad0a0004 	sw	t2,4(t0)
    1fc0:	ad0b0008 	sw	t3,8(t0)
    1fc4:	0c000000 	jal	0 <func_808C1190>
    1fc8:	afa40028 	sw	a0,40(sp)
    1fcc:	8fa40028 	lw	a0,40(sp)
    1fd0:	0c000000 	jal	0 <func_808C1190>
    1fd4:	3c054140 	lui	a1,0x4140
    1fd8:	10400003 	beqz	v0,1fe8 <func_808C30F4+0x84>
    1fdc:	02002025 	move	a0,s0
    1fe0:	0c000000 	jal	0 <func_808C1190>
    1fe4:	24053805 	li	a1,14341
    1fe8:	8fa40028 	lw	a0,40(sp)
    1fec:	0c000000 	jal	0 <func_808C1190>
    1ff0:	3c054188 	lui	a1,0x4188
    1ff4:	10400003 	beqz	v0,2004 <func_808C30F4+0xa0>
    1ff8:	3c014188 	lui	at,0x4188
    1ffc:	240c001c 	li	t4,28
    2000:	a60c01c8 	sh	t4,456(s0)
    2004:	c6000164 	lwc1	$f0,356(s0)
    2008:	44812000 	mtc1	at,$f4
    200c:	3c01420c 	lui	at,0x420c
    2010:	4600203c 	c.lt.s	$f4,$f0
    2014:	00000000 	nop
    2018:	45020015 	bc1fl	2070 <func_808C30F4+0x10c>
    201c:	860f01da 	lh	t7,474(s0)
    2020:	44813000 	mtc1	at,$f6
    2024:	02002025 	move	a0,s0
    2028:	8fa5004c 	lw	a1,76(sp)
    202c:	4606003c 	c.lt.s	$f0,$f6
    2030:	00000000 	nop
    2034:	4502000e 	bc1fl	2070 <func_808C30F4+0x10c>
    2038:	860f01da 	lh	t7,474(s0)
    203c:	0c000000 	jal	0 <func_808C1190>
    2040:	860601ae 	lh	a2,430(s0)
    2044:	860d01ae 	lh	t5,430(s0)
    2048:	44800000 	mtc1	zero,$f0
    204c:	26040244 	addiu	a0,s0,580
    2050:	25ae0001 	addiu	t6,t5,1
    2054:	a60e01ae 	sh	t6,430(s0)
    2058:	44050000 	mfc1	a1,$f0
    205c:	3c063f80 	lui	a2,0x3f80
    2060:	3c074100 	lui	a3,0x4100
    2064:	0c000000 	jal	0 <func_808C1190>
    2068:	e7a00010 	swc1	$f0,16(sp)
    206c:	860f01da 	lh	t7,474(s0)
    2070:	55e00004 	bnezl	t7,2084 <func_808C30F4+0x120>
    2074:	8fbf0024 	lw	ra,36(sp)
    2078:	0c000000 	jal	0 <func_808C1190>
    207c:	02002025 	move	a0,s0
    2080:	8fbf0024 	lw	ra,36(sp)
    2084:	8fb00020 	lw	s0,32(sp)
    2088:	27bd0048 	addiu	sp,sp,72
    208c:	03e00008 	jr	ra
    2090:	00000000 	nop

00002094 <func_808C3224>:
    2094:	27bdffd8 	addiu	sp,sp,-40
    2098:	afbf0024 	sw	ra,36(sp)
    209c:	afb00020 	sw	s0,32(sp)
    20a0:	afa5002c 	sw	a1,44(sp)
    20a4:	848f01ac 	lh	t7,428(a0)
    20a8:	240e0001 	li	t6,1
    20ac:	00808025 	move	s0,a0
    20b0:	29e10015 	slti	at,t7,21
    20b4:	14200003 	bnez	at,20c4 <func_808C3224+0x30>
    20b8:	a08e01e2 	sb	t6,482(a0)
    20bc:	0c000000 	jal	0 <func_808C1190>
    20c0:	2405304f 	li	a1,12367
    20c4:	44802000 	mtc1	zero,$f4
    20c8:	3c053d4c 	lui	a1,0x3d4c
    20cc:	3c073ba3 	lui	a3,0x3ba3
    20d0:	34e7d70a 	ori	a3,a3,0xd70a
    20d4:	34a5cccd 	ori	a1,a1,0xcccd
    20d8:	26040208 	addiu	a0,s0,520
    20dc:	3c063f80 	lui	a2,0x3f80
    20e0:	0c000000 	jal	0 <func_808C1190>
    20e4:	e7a40010 	swc1	$f4,16(sp)
    20e8:	0c000000 	jal	0 <func_808C1190>
    20ec:	2604014c 	addiu	a0,s0,332
    20f0:	861801da 	lh	t8,474(s0)
    20f4:	57000006 	bnezl	t8,2110 <func_808C3224+0x7c>
    20f8:	861901ac 	lh	t9,428(s0)
    20fc:	0c000000 	jal	0 <func_808C1190>
    2100:	02002025 	move	a0,s0
    2104:	10000013 	b	2154 <func_808C3224+0xc0>
    2108:	8fbf0024 	lw	ra,36(sp)
    210c:	861901ac 	lh	t9,428(s0)
    2110:	27280001 	addiu	t0,t9,1
    2114:	a60801ac 	sh	t0,428(s0)
    2118:	860201ac 	lh	v0,428(s0)
    211c:	28410015 	slti	at,v0,21
    2120:	1420000b 	bnez	at,2150 <func_808C3224+0xbc>
    2124:	28410052 	slti	at,v0,82
    2128:	10200009 	beqz	at,2150 <func_808C3224+0xbc>
    212c:	02002025 	move	a0,s0
    2130:	0c000000 	jal	0 <func_808C1190>
    2134:	8fa5002c 	lw	a1,44(sp)
    2138:	10400005 	beqz	v0,2150 <func_808C3224+0xbc>
    213c:	02002025 	move	a0,s0
    2140:	0c000000 	jal	0 <func_808C1190>
    2144:	24053850 	li	a1,14416
    2148:	0c000000 	jal	0 <func_808C1190>
    214c:	02002025 	move	a0,s0
    2150:	8fbf0024 	lw	ra,36(sp)
    2154:	8fb00020 	lw	s0,32(sp)
    2158:	27bd0028 	addiu	sp,sp,40
    215c:	03e00008 	jr	ra
    2160:	00000000 	nop

00002164 <func_808C32F4>:
    2164:	27bdffb0 	addiu	sp,sp,-80
    2168:	afbf0034 	sw	ra,52(sp)
    216c:	afb00030 	sw	s0,48(sp)
    2170:	afa50054 	sw	a1,84(sp)
    2174:	848e01aa 	lh	t6,426(a0)
    2178:	00808025 	move	s0,a0
    217c:	15c0000c 	bnez	t6,21b0 <func_808C32F4+0x4c>
    2180:	2484014c 	addiu	a0,a0,332
    2184:	afa4003c 	sw	a0,60(sp)
    2188:	0c000000 	jal	0 <func_808C1190>
    218c:	3c054160 	lui	a1,0x4160
    2190:	10400050 	beqz	v0,22d4 <func_808C32F4+0x170>
    2194:	8fa4003c 	lw	a0,60(sp)
    2198:	3c050602 	lui	a1,0x602
    219c:	0c000000 	jal	0 <func_808C1190>
    21a0:	24a5cae0 	addiu	a1,a1,-13600
    21a4:	24030001 	li	v1,1
    21a8:	1000004a 	b	22d4 <func_808C32F4+0x170>
    21ac:	a60301aa 	sh	v1,426(s0)
    21b0:	860f01bc 	lh	t7,444(s0)
    21b4:	24010002 	li	at,2
    21b8:	11e10046 	beq	t7,at,22d4 <func_808C32F4+0x170>
    21bc:	00000000 	nop
    21c0:	c6040164 	lwc1	$f4,356(s0)
    21c4:	24030001 	li	v1,1
    21c8:	2401001f 	li	at,31
    21cc:	4600218d 	trunc.w.s	$f6,$f4
    21d0:	44023000 	mfc1	v0,$f6
    21d4:	00000000 	nop
    21d8:	10620003 	beq	v1,v0,21e8 <func_808C32F4+0x84>
    21dc:	00000000 	nop
    21e0:	1441003c 	bne	v0,at,22d4 <func_808C32F4+0x170>
    21e4:	00000000 	nop
    21e8:	14620012 	bne	v1,v0,2234 <func_808C32F4+0xd0>
    21ec:	8fa40054 	lw	a0,84(sp)
    21f0:	3c014100 	lui	at,0x4100
    21f4:	44814000 	mtc1	at,$f8
    21f8:	2419000a 	li	t9,10
    21fc:	240801f4 	li	t0,500
    2200:	2409000a 	li	t1,10
    2204:	afa9001c 	sw	t1,28(sp)
    2208:	afa80018 	sw	t0,24(sp)
    220c:	afb90010 	sw	t9,16(sp)
    2210:	8fa40054 	lw	a0,84(sp)
    2214:	02002825 	move	a1,s0
    2218:	26060410 	addiu	a2,s0,1040
    221c:	3c0741c8 	lui	a3,0x41c8
    2220:	afa00020 	sw	zero,32(sp)
    2224:	0c000000 	jal	0 <func_808C1190>
    2228:	e7a80014 	swc1	$f8,20(sp)
    222c:	10000010 	b	2270 <func_808C32F4+0x10c>
    2230:	860d01bc 	lh	t5,444(s0)
    2234:	3c014100 	lui	at,0x4100
    2238:	44815000 	mtc1	at,$f10
    223c:	240a000a 	li	t2,10
    2240:	240b01f4 	li	t3,500
    2244:	240c000a 	li	t4,10
    2248:	afac001c 	sw	t4,28(sp)
    224c:	afab0018 	sw	t3,24(sp)
    2250:	afaa0010 	sw	t2,16(sp)
    2254:	02002825 	move	a1,s0
    2258:	26060404 	addiu	a2,s0,1028
    225c:	3c0741c8 	lui	a3,0x41c8
    2260:	afa00020 	sw	zero,32(sp)
    2264:	0c000000 	jal	0 <func_808C1190>
    2268:	e7aa0014 	swc1	$f10,20(sp)
    226c:	860d01bc 	lh	t5,444(s0)
    2270:	02002025 	move	a0,s0
    2274:	11a00005 	beqz	t5,228c <func_808C32F4+0x128>
    2278:	00000000 	nop
    227c:	0c000000 	jal	0 <func_808C1190>
    2280:	24043808 	li	a0,14344
    2284:	10000004 	b	2298 <func_808C32F4+0x134>
    2288:	860e01b4 	lh	t6,436(s0)
    228c:	0c000000 	jal	0 <func_808C1190>
    2290:	24053808 	li	a1,14344
    2294:	860e01b4 	lh	t6,436(s0)
    2298:	240f000a 	li	t7,10
    229c:	240500b4 	li	a1,180
    22a0:	15c00008 	bnez	t6,22c4 <func_808C32F4+0x160>
    22a4:	24060014 	li	a2,20
    22a8:	02002025 	move	a0,s0
    22ac:	8fa50054 	lw	a1,84(sp)
    22b0:	24060004 	li	a2,4
    22b4:	0c000000 	jal	0 <func_808C1190>
    22b8:	2407000a 	li	a3,10
    22bc:	10000005 	b	22d4 <func_808C32F4+0x170>
    22c0:	00000000 	nop
    22c4:	44806000 	mtc1	zero,$f12
    22c8:	a60f01b6 	sh	t7,438(s0)
    22cc:	0c000000 	jal	0 <func_808C1190>
    22d0:	24070064 	li	a3,100
    22d4:	0c000000 	jal	0 <func_808C1190>
    22d8:	2604014c 	addiu	a0,s0,332
    22dc:	3c010000 	lui	at,0x0
    22e0:	c4200000 	lwc1	$f0,0(at)
    22e4:	3c014080 	lui	at,0x4080
    22e8:	44818000 	mtc1	at,$f16
    22ec:	3c013e80 	lui	at,0x3e80
    22f0:	44812000 	mtc1	at,$f4
    22f4:	46100482 	mul.s	$f18,$f0,$f16
    22f8:	861801a0 	lh	t8,416(s0)
    22fc:	3c080000 	lui	t0,0x0
    2300:	46040182 	mul.s	$f6,$f0,$f4
    2304:	0018c880 	sll	t9,t8,0x2
    2308:	0338c823 	subu	t9,t9,t8
    230c:	0019c880 	sll	t9,t9,0x2
    2310:	25080000 	addiu	t0,t0,0
    2314:	03284821 	addu	t1,t9,t0
    2318:	44804000 	mtc1	zero,$f8
    231c:	afa9004c 	sw	t1,76(sp)
    2320:	44073000 	mfc1	a3,$f6
    2324:	44059000 	mfc1	a1,$f18
    2328:	e60001ec 	swc1	$f0,492(s0)
    232c:	260401e4 	addiu	a0,s0,484
    2330:	3c063f80 	lui	a2,0x3f80
    2334:	0c000000 	jal	0 <func_808C1190>
    2338:	e7a80010 	swc1	$f8,16(sp)
    233c:	8faa004c 	lw	t2,76(sp)
    2340:	44805000 	mtc1	zero,$f10
    2344:	3c063e99 	lui	a2,0x3e99
    2348:	8e0701e4 	lw	a3,484(s0)
    234c:	8d450000 	lw	a1,0(t2)
    2350:	34c6999a 	ori	a2,a2,0x999a
    2354:	26040024 	addiu	a0,s0,36
    2358:	0c000000 	jal	0 <func_808C1190>
    235c:	e7aa0010 	swc1	$f10,16(sp)
    2360:	8fab004c 	lw	t3,76(sp)
    2364:	44808000 	mtc1	zero,$f16
    2368:	3c063e99 	lui	a2,0x3e99
    236c:	8e0701e4 	lw	a3,484(s0)
    2370:	8d650008 	lw	a1,8(t3)
    2374:	34c6999a 	ori	a2,a2,0x999a
    2378:	2604002c 	addiu	a0,s0,44
    237c:	0c000000 	jal	0 <func_808C1190>
    2380:	e7b00010 	swc1	$f16,16(sp)
    2384:	8fa2004c 	lw	v0,76(sp)
    2388:	c6040024 	lwc1	$f4,36(s0)
    238c:	3c0142a0 	lui	at,0x42a0
    2390:	c4520000 	lwc1	$f18,0(v0)
    2394:	260401e8 	addiu	a0,s0,488
    2398:	3c0544fa 	lui	a1,0x44fa
    239c:	46049181 	sub.s	$f6,$f18,$f4
    23a0:	44812000 	mtc1	at,$f4
    23a4:	3c063f80 	lui	a2,0x3f80
    23a8:	e7a60048 	swc1	$f6,72(sp)
    23ac:	c60a002c 	lwc1	$f10,44(s0)
    23b0:	c4480008 	lwc1	$f8,8(v0)
    23b4:	460a4401 	sub.s	$f16,$f8,$f10
    23b8:	44804000 	mtc1	zero,$f8
    23bc:	e7b00044 	swc1	$f16,68(sp)
    23c0:	c61201ec 	lwc1	$f18,492(s0)
    23c4:	e7a80010 	swc1	$f8,16(sp)
    23c8:	46049182 	mul.s	$f6,$f18,$f4
    23cc:	44073000 	mfc1	a3,$f6
    23d0:	0c000000 	jal	0 <func_808C1190>
    23d4:	00000000 	nop
    23d8:	c7ac0048 	lwc1	$f12,72(sp)
    23dc:	0c000000 	jal	0 <func_808C1190>
    23e0:	c7ae0044 	lwc1	$f14,68(sp)
    23e4:	3c010000 	lui	at,0x0
    23e8:	c42a0000 	lwc1	$f10,0(at)
    23ec:	c60401ec 	lwc1	$f4,492(s0)
    23f0:	c60601e8 	lwc1	$f6,488(s0)
    23f4:	460a0402 	mul.s	$f16,$f0,$f10
    23f8:	240e0005 	li	t6,5
    23fc:	afae0010 	sw	t6,16(sp)
    2400:	46062202 	mul.s	$f8,$f4,$f6
    2404:	26040032 	addiu	a0,s0,50
    2408:	24060005 	li	a2,5
    240c:	4600848d 	trunc.w.s	$f18,$f16
    2410:	4600428d 	trunc.w.s	$f10,$f8
    2414:	44059000 	mfc1	a1,$f18
    2418:	44075000 	mfc1	a3,$f10
    241c:	00052c00 	sll	a1,a1,0x10
    2420:	00052c03 	sra	a1,a1,0x10
    2424:	00073c00 	sll	a3,a3,0x10
    2428:	0c000000 	jal	0 <func_808C1190>
    242c:	00073c03 	sra	a3,a3,0x10
    2430:	260401c4 	addiu	a0,s0,452
    2434:	00002825 	move	a1,zero
    2438:	24060002 	li	a2,2
    243c:	240707d0 	li	a3,2000
    2440:	0c000000 	jal	0 <func_808C1190>
    2444:	afa00010 	sw	zero,16(sp)
    2448:	c7a00048 	lwc1	$f0,72(sp)
    244c:	3c0140a0 	lui	at,0x40a0
    2450:	44811000 	mtc1	at,$f2
    2454:	46000005 	abs.s	$f0,$f0
    2458:	4602003e 	c.le.s	$f0,$f2
    245c:	c7a00044 	lwc1	$f0,68(sp)
    2460:	4502001e 	bc1fl	24dc <func_808C32F4+0x378>
    2464:	860d01da 	lh	t5,474(s0)
    2468:	46000005 	abs.s	$f0,$f0
    246c:	4602003e 	c.le.s	$f0,$f2
    2470:	00000000 	nop
    2474:	45020019 	bc1fl	24dc <func_808C32F4+0x378>
    2478:	860d01da 	lh	t5,474(s0)
    247c:	860f01a2 	lh	t7,418(s0)
    2480:	44808000 	mtc1	zero,$f16
    2484:	44809000 	mtc1	zero,$f18
    2488:	e61001e8 	swc1	$f16,488(s0)
    248c:	15e0000a 	bnez	t7,24b8 <func_808C32F4+0x354>
    2490:	e61201e4 	swc1	$f18,484(s0)
    2494:	861801a0 	lh	t8,416(s0)
    2498:	27190001 	addiu	t9,t8,1
    249c:	a61901a0 	sh	t9,416(s0)
    24a0:	860801a0 	lh	t0,416(s0)
    24a4:	29010004 	slti	at,t0,4
    24a8:	5420000c 	bnezl	at,24dc <func_808C32F4+0x378>
    24ac:	860d01da 	lh	t5,474(s0)
    24b0:	10000009 	b	24d8 <func_808C32F4+0x374>
    24b4:	a60001a0 	sh	zero,416(s0)
    24b8:	860901a0 	lh	t1,416(s0)
    24bc:	240c0003 	li	t4,3
    24c0:	252affff 	addiu	t2,t1,-1
    24c4:	a60a01a0 	sh	t2,416(s0)
    24c8:	860b01a0 	lh	t3,416(s0)
    24cc:	05630003 	bgezl	t3,24dc <func_808C32F4+0x378>
    24d0:	860d01da 	lh	t5,474(s0)
    24d4:	a60c01a0 	sh	t4,416(s0)
    24d8:	860d01da 	lh	t5,474(s0)
    24dc:	55a00021 	bnezl	t5,2564 <func_808C32F4+0x400>
    24e0:	8fbf0034 	lw	ra,52(sp)
    24e4:	860e01bc 	lh	t6,444(s0)
    24e8:	3c0143fa 	lui	at,0x43fa
    24ec:	55c0001d 	bnezl	t6,2564 <func_808C32F4+0x400>
    24f0:	8fbf0034 	lw	ra,52(sp)
    24f4:	c6040090 	lwc1	$f4,144(s0)
    24f8:	44813000 	mtc1	at,$f6
    24fc:	00000000 	nop
    2500:	4606203c 	c.lt.s	$f4,$f6
    2504:	00000000 	nop
    2508:	4502000e 	bc1fl	2544 <func_808C32F4+0x3e0>
    250c:	861901ba 	lh	t9,442(s0)
    2510:	860f01a4 	lh	t7,420(s0)
    2514:	51e0000b 	beqzl	t7,2544 <func_808C32F4+0x3e0>
    2518:	861901ba 	lh	t9,442(s0)
    251c:	861801ba 	lh	t8,442(s0)
    2520:	57000008 	bnezl	t8,2544 <func_808C32F4+0x3e0>
    2524:	861901ba 	lh	t9,442(s0)
    2528:	0c000000 	jal	0 <func_808C1190>
    252c:	02002025 	move	a0,s0
    2530:	02002025 	move	a0,s0
    2534:	8fa50054 	lw	a1,84(sp)
    2538:	0c000000 	jal	0 <func_808C1190>
    253c:	2406ffff 	li	a2,-1
    2540:	861901ba 	lh	t9,442(s0)
    2544:	57200007 	bnezl	t9,2564 <func_808C32F4+0x400>
    2548:	8fbf0034 	lw	ra,52(sp)
    254c:	860801b8 	lh	t0,440(s0)
    2550:	55000004 	bnezl	t0,2564 <func_808C32F4+0x400>
    2554:	8fbf0034 	lw	ra,52(sp)
    2558:	0c000000 	jal	0 <func_808C1190>
    255c:	02002025 	move	a0,s0
    2560:	8fbf0034 	lw	ra,52(sp)
    2564:	8fb00030 	lw	s0,48(sp)
    2568:	27bd0050 	addiu	sp,sp,80
    256c:	03e00008 	jr	ra
    2570:	00000000 	nop

00002574 <func_808C3704>:
    2574:	27bdffa0 	addiu	sp,sp,-96
    2578:	afbf0034 	sw	ra,52(sp)
    257c:	afb00030 	sw	s0,48(sp)
    2580:	afa50064 	sw	a1,100(sp)
    2584:	8c8e0004 	lw	t6,4(a0)
    2588:	3c010100 	lui	at,0x100
    258c:	00808025 	move	s0,a0
    2590:	01c17825 	or	t7,t6,at
    2594:	ac8f0004 	sw	t7,4(a0)
    2598:	0c000000 	jal	0 <func_808C1190>
    259c:	2484014c 	addiu	a0,a0,332
    25a0:	860201da 	lh	v0,474(s0)
    25a4:	2401000a 	li	at,10
    25a8:	02002025 	move	a0,s0
    25ac:	14410006 	bne	v0,at,25c8 <func_808C3704+0x54>
    25b0:	3c014170 	lui	at,0x4170
    25b4:	44812000 	mtc1	at,$f4
    25b8:	24053805 	li	a1,14341
    25bc:	0c000000 	jal	0 <func_808C1190>
    25c0:	e6040060 	swc1	$f4,96(s0)
    25c4:	860201da 	lh	v0,474(s0)
    25c8:	24010001 	li	at,1
    25cc:	14410004 	bne	v0,at,25e0 <func_808C3704+0x6c>
    25d0:	02002025 	move	a0,s0
    25d4:	0c000000 	jal	0 <func_808C1190>
    25d8:	2405384d 	li	a1,14413
    25dc:	860201da 	lh	v0,474(s0)
    25e0:	861801a0 	lh	t8,416(s0)
    25e4:	3c080000 	lui	t0,0x0
    25e8:	25080000 	addiu	t0,t0,0
    25ec:	0018c880 	sll	t9,t8,0x2
    25f0:	0338c823 	subu	t9,t9,t8
    25f4:	0019c880 	sll	t9,t9,0x2
    25f8:	3c014040 	lui	at,0x4040
    25fc:	44813000 	mtc1	at,$f6
    2600:	03284821 	addu	t1,t9,t0
    2604:	afa9005c 	sw	t1,92(sp)
    2608:	14400048 	bnez	v0,272c <func_808C3704+0x1b8>
    260c:	e60601ec 	swc1	$f6,492(s0)
    2610:	3c0140a0 	lui	at,0x40a0
    2614:	44814000 	mtc1	at,$f8
    2618:	c60001ec 	lwc1	$f0,492(s0)
    261c:	3c013e80 	lui	at,0x3e80
    2620:	44818000 	mtc1	at,$f16
    2624:	46080282 	mul.s	$f10,$f0,$f8
    2628:	44802000 	mtc1	zero,$f4
    262c:	260401e4 	addiu	a0,s0,484
    2630:	46100482 	mul.s	$f18,$f0,$f16
    2634:	3c063f80 	lui	a2,0x3f80
    2638:	e7a40010 	swc1	$f4,16(sp)
    263c:	44055000 	mfc1	a1,$f10
    2640:	44079000 	mfc1	a3,$f18
    2644:	0c000000 	jal	0 <func_808C1190>
    2648:	00000000 	nop
    264c:	8faa005c 	lw	t2,92(sp)
    2650:	44803000 	mtc1	zero,$f6
    2654:	26040024 	addiu	a0,s0,36
    2658:	8e0701e4 	lw	a3,484(s0)
    265c:	8d450000 	lw	a1,0(t2)
    2660:	afa40040 	sw	a0,64(sp)
    2664:	3c063f80 	lui	a2,0x3f80
    2668:	0c000000 	jal	0 <func_808C1190>
    266c:	e7a60010 	swc1	$f6,16(sp)
    2670:	8fab005c 	lw	t3,92(sp)
    2674:	44804000 	mtc1	zero,$f8
    2678:	8e0701e4 	lw	a3,484(s0)
    267c:	8d650008 	lw	a1,8(t3)
    2680:	2604002c 	addiu	a0,s0,44
    2684:	3c063f80 	lui	a2,0x3f80
    2688:	0c000000 	jal	0 <func_808C1190>
    268c:	e7a80010 	swc1	$f8,16(sp)
    2690:	860c01c4 	lh	t4,452(s0)
    2694:	960e0088 	lhu	t6,136(s0)
    2698:	3c010000 	lui	at,0x0
    269c:	258d07d0 	addiu	t5,t4,2000
    26a0:	31cf0001 	andi	t7,t6,0x1
    26a4:	11e00021 	beqz	t7,272c <func_808C3704+0x1b8>
    26a8:	a60d01c4 	sh	t5,452(s0)
    26ac:	c42a0000 	lwc1	$f10,0(at)
    26b0:	02002025 	move	a0,s0
    26b4:	2405304e 	li	a1,12366
    26b8:	0c000000 	jal	0 <func_808C1190>
    26bc:	e60a0228 	swc1	$f10,552(s0)
    26c0:	8602019e 	lh	v0,414(s0)
    26c4:	8fa40064 	lw	a0,100(sp)
    26c8:	24050002 	li	a1,2
    26cc:	30580007 	andi	t8,v0,0x7
    26d0:	17000005 	bnez	t8,26e8 <func_808C3704+0x174>
    26d4:	248401e0 	addiu	a0,a0,480
    26d8:	24060001 	li	a2,1
    26dc:	0c000000 	jal	0 <func_808C1190>
    26e0:	24070008 	li	a3,8
    26e4:	8602019e 	lh	v0,414(s0)
    26e8:	30590001 	andi	t9,v0,0x1
    26ec:	1720000f 	bnez	t9,272c <func_808C3704+0x1b8>
    26f0:	8fa40064 	lw	a0,100(sp)
    26f4:	3c014100 	lui	at,0x4100
    26f8:	44818000 	mtc1	at,$f16
    26fc:	24080003 	li	t0,3
    2700:	240901f4 	li	t1,500
    2704:	240a000a 	li	t2,10
    2708:	afaa001c 	sw	t2,28(sp)
    270c:	afa90018 	sw	t1,24(sp)
    2710:	afa80010 	sw	t0,16(sp)
    2714:	02002825 	move	a1,s0
    2718:	8fa60040 	lw	a2,64(sp)
    271c:	3c074220 	lui	a3,0x4220
    2720:	afa00020 	sw	zero,32(sp)
    2724:	0c000000 	jal	0 <func_808C1190>
    2728:	e7b00014 	swc1	$f16,20(sp)
    272c:	8fab005c 	lw	t3,92(sp)
    2730:	c6040024 	lwc1	$f4,36(s0)
    2734:	3c0142c8 	lui	at,0x42c8
    2738:	c5720000 	lwc1	$f18,0(t3)
    273c:	260401e8 	addiu	a0,s0,488
    2740:	3c0544fa 	lui	a1,0x44fa
    2744:	46049181 	sub.s	$f6,$f18,$f4
    2748:	44812000 	mtc1	at,$f4
    274c:	3c063f80 	lui	a2,0x3f80
    2750:	e7a6004c 	swc1	$f6,76(sp)
    2754:	c60a002c 	lwc1	$f10,44(s0)
    2758:	c5680008 	lwc1	$f8,8(t3)
    275c:	460a4401 	sub.s	$f16,$f8,$f10
    2760:	44804000 	mtc1	zero,$f8
    2764:	e7b00048 	swc1	$f16,72(sp)
    2768:	c61201ec 	lwc1	$f18,492(s0)
    276c:	e7a80010 	swc1	$f8,16(sp)
    2770:	46049182 	mul.s	$f6,$f18,$f4
    2774:	44073000 	mfc1	a3,$f6
    2778:	0c000000 	jal	0 <func_808C1190>
    277c:	00000000 	nop
    2780:	c7ac004c 	lwc1	$f12,76(sp)
    2784:	0c000000 	jal	0 <func_808C1190>
    2788:	c7ae0048 	lwc1	$f14,72(sp)
    278c:	3c010000 	lui	at,0x0
    2790:	c42a0000 	lwc1	$f10,0(at)
    2794:	c60401ec 	lwc1	$f4,492(s0)
    2798:	c60601e8 	lwc1	$f6,488(s0)
    279c:	460a0402 	mul.s	$f16,$f0,$f10
    27a0:	afa00010 	sw	zero,16(sp)
    27a4:	26040032 	addiu	a0,s0,50
    27a8:	46062202 	mul.s	$f8,$f4,$f6
    27ac:	24060005 	li	a2,5
    27b0:	4600848d 	trunc.w.s	$f18,$f16
    27b4:	4600428d 	trunc.w.s	$f10,$f8
    27b8:	44059000 	mfc1	a1,$f18
    27bc:	44075000 	mfc1	a3,$f10
    27c0:	00052c00 	sll	a1,a1,0x10
    27c4:	00052c03 	sra	a1,a1,0x10
    27c8:	00073c00 	sll	a3,a3,0x10
    27cc:	0c000000 	jal	0 <func_808C1190>
    27d0:	00073c03 	sra	a3,a3,0x10
    27d4:	c7a0004c 	lwc1	$f0,76(sp)
    27d8:	3c014170 	lui	at,0x4170
    27dc:	44811000 	mtc1	at,$f2
    27e0:	46000005 	abs.s	$f0,$f0
    27e4:	4602003e 	c.le.s	$f0,$f2
    27e8:	c7a00048 	lwc1	$f0,72(sp)
    27ec:	4502005c 	bc1fl	2960 <func_808C3704+0x3ec>
    27f0:	8fbf0034 	lw	ra,52(sp)
    27f4:	46000005 	abs.s	$f0,$f0
    27f8:	4602003e 	c.le.s	$f0,$f2
    27fc:	00000000 	nop
    2800:	45020057 	bc1fl	2960 <func_808C3704+0x3ec>
    2804:	8fbf0034 	lw	ra,52(sp)
    2808:	860e01a8 	lh	t6,424(s0)
    280c:	02002025 	move	a0,s0
    2810:	2405384d 	li	a1,14413
    2814:	25cf0001 	addiu	t7,t6,1
    2818:	a60f01a8 	sh	t7,424(s0)
    281c:	861801a8 	lh	t8,424(s0)
    2820:	8fb90064 	lw	t9,100(sp)
    2824:	2b010002 	slti	at,t8,2
    2828:	14200036 	bnez	at,2904 <func_808C3704+0x390>
    282c:	272801e0 	addiu	t0,t9,480
    2830:	afa80040 	sw	t0,64(sp)
    2834:	860901a6 	lh	t1,422(s0)
    2838:	44808000 	mtc1	zero,$f16
    283c:	44809000 	mtc1	zero,$f18
    2840:	11200005 	beqz	t1,2858 <func_808C3704+0x2e4>
    2844:	02002025 	move	a0,s0
    2848:	860a01a2 	lh	t2,418(s0)
    284c:	240b0001 	li	t3,1
    2850:	016a6023 	subu	t4,t3,t2
    2854:	a60c01a2 	sh	t4,418(s0)
    2858:	e61001e8 	swc1	$f16,488(s0)
    285c:	0c000000 	jal	0 <func_808C1190>
    2860:	e61201e4 	swc1	$f18,484(s0)
    2864:	3c010000 	lui	at,0x0
    2868:	c4240000 	lwc1	$f4,0(at)
    286c:	3c0141a0 	lui	at,0x41a0
    2870:	44813000 	mtc1	at,$f6
    2874:	02002025 	move	a0,s0
    2878:	2405384c 	li	a1,14412
    287c:	e6040228 	swc1	$f4,552(s0)
    2880:	0c000000 	jal	0 <func_808C1190>
    2884:	e6060060 	swc1	$f6,96(s0)
    2888:	8fa40040 	lw	a0,64(sp)
    288c:	24050002 	li	a1,2
    2890:	24060006 	li	a2,6
    2894:	0c000000 	jal	0 <func_808C1190>
    2898:	24070008 	li	a3,8
    289c:	c6080024 	lwc1	$f8,36(s0)
    28a0:	3c014270 	lui	at,0x4270
    28a4:	44818000 	mtc1	at,$f16
    28a8:	e7a80050 	swc1	$f8,80(sp)
    28ac:	c60a0028 	lwc1	$f10,40(s0)
    28b0:	240d0320 	li	t5,800
    28b4:	240e000a 	li	t6,10
    28b8:	46105480 	add.s	$f18,$f10,$f16
    28bc:	8fa40064 	lw	a0,100(sp)
    28c0:	27a50050 	addiu	a1,sp,80
    28c4:	3c06437a 	lui	a2,0x437a
    28c8:	e7b20054 	swc1	$f18,84(sp)
    28cc:	c604002c 	lwc1	$f4,44(s0)
    28d0:	afa00018 	sw	zero,24(sp)
    28d4:	afae0014 	sw	t6,20(sp)
    28d8:	afad0010 	sw	t5,16(sp)
    28dc:	24070028 	li	a3,40
    28e0:	0c000000 	jal	0 <func_808C1190>
    28e4:	e7a40058 	swc1	$f4,88(sp)
    28e8:	02002025 	move	a0,s0
    28ec:	8fa50064 	lw	a1,100(sp)
    28f0:	24060006 	li	a2,6
    28f4:	0c000000 	jal	0 <func_808C1190>
    28f8:	2407000f 	li	a3,15
    28fc:	10000004 	b	2910 <func_808C3704+0x39c>
    2900:	860f01a2 	lh	t7,418(s0)
    2904:	0c000000 	jal	0 <func_808C1190>
    2908:	e6020060 	swc1	$f2,96(s0)
    290c:	860f01a2 	lh	t7,418(s0)
    2910:	55e0000b 	bnezl	t7,2940 <func_808C3704+0x3cc>
    2914:	860901a0 	lh	t1,416(s0)
    2918:	861801a0 	lh	t8,416(s0)
    291c:	27190001 	addiu	t9,t8,1
    2920:	a61901a0 	sh	t9,416(s0)
    2924:	860801a0 	lh	t0,416(s0)
    2928:	29010004 	slti	at,t0,4
    292c:	5420000c 	bnezl	at,2960 <func_808C3704+0x3ec>
    2930:	8fbf0034 	lw	ra,52(sp)
    2934:	10000009 	b	295c <func_808C3704+0x3e8>
    2938:	a60001a0 	sh	zero,416(s0)
    293c:	860901a0 	lh	t1,416(s0)
    2940:	240c0003 	li	t4,3
    2944:	252bffff 	addiu	t3,t1,-1
    2948:	a60b01a0 	sh	t3,416(s0)
    294c:	860a01a0 	lh	t2,416(s0)
    2950:	05430003 	bgezl	t2,2960 <func_808C3704+0x3ec>
    2954:	8fbf0034 	lw	ra,52(sp)
    2958:	a60c01a0 	sh	t4,416(s0)
    295c:	8fbf0034 	lw	ra,52(sp)
    2960:	8fb00030 	lw	s0,48(sp)
    2964:	27bd0060 	addiu	sp,sp,96
    2968:	03e00008 	jr	ra
    296c:	00000000 	nop

00002970 <BossDodongo_Update>:
    2970:	27bdff50 	addiu	sp,sp,-176
    2974:	afbf002c 	sw	ra,44(sp)
    2978:	afb10028 	sw	s1,40(sp)
    297c:	afb00024 	sw	s0,36(sp)
    2980:	8ca21c44 	lw	v0,7236(a1)
    2984:	00808825 	move	s1,a0
    2988:	afa2009c 	sw	v0,156(sp)
    298c:	afa20098 	sw	v0,152(sp)
    2990:	848e019e 	lh	t6,414(a0)
    2994:	848301da 	lh	v1,474(a0)
    2998:	a08001e2 	sb	zero,482(a0)
    299c:	25cf0001 	addiu	t7,t6,1
    29a0:	10600003 	beqz	v1,29b0 <BossDodongo_Update+0x40>
    29a4:	a48f019e 	sh	t7,414(a0)
    29a8:	2478ffff 	addiu	t8,v1,-1
    29ac:	a49801da 	sh	t8,474(a0)
    29b0:	862201dc 	lh	v0,476(s1)
    29b4:	02202025 	move	a0,s1
    29b8:	10400002 	beqz	v0,29c4 <BossDodongo_Update+0x54>
    29bc:	2459ffff 	addiu	t9,v0,-1
    29c0:	a63901dc 	sh	t9,476(s1)
    29c4:	862201de 	lh	v0,478(s1)
    29c8:	10400002 	beqz	v0,29d4 <BossDodongo_Update+0x64>
    29cc:	244affff 	addiu	t2,v0,-1
    29d0:	a62a01de 	sh	t2,478(s1)
    29d4:	862201c0 	lh	v0,448(s1)
    29d8:	10400002 	beqz	v0,29e4 <BossDodongo_Update+0x74>
    29dc:	244bffff 	addiu	t3,v0,-1
    29e0:	a62b01c0 	sh	t3,448(s1)
    29e4:	862201c8 	lh	v0,456(s1)
    29e8:	10400002 	beqz	v0,29f4 <BossDodongo_Update+0x84>
    29ec:	244cffff 	addiu	t4,v0,-1
    29f0:	a62c01c8 	sh	t4,456(s1)
    29f4:	0c000000 	jal	0 <func_808C1190>
    29f8:	afa500b4 	sw	a1,180(sp)
    29fc:	44802000 	mtc1	zero,$f4
    2a00:	02202025 	move	a0,s1
    2a04:	4600203c 	c.lt.s	$f4,$f0
    2a08:	00000000 	nop
    2a0c:	45020006 	bc1fl	2a28 <BossDodongo_Update+0xb8>
    2a10:	a62001a4 	sh	zero,420(s1)
    2a14:	4600018d 	trunc.w.s	$f6,$f0
    2a18:	440e3000 	mfc1	t6,$f6
    2a1c:	10000002 	b	2a28 <BossDodongo_Update+0xb8>
    2a20:	a62e01a4 	sh	t6,420(s1)
    2a24:	a62001a4 	sh	zero,420(s1)
    2a28:	0c000000 	jal	0 <func_808C1190>
    2a2c:	8fa500b4 	lw	a1,180(sp)
    2a30:	44804000 	mtc1	zero,$f8
    2a34:	02202025 	move	a0,s1
    2a38:	4600403c 	c.lt.s	$f8,$f0
    2a3c:	00000000 	nop
    2a40:	45020006 	bc1fl	2a5c <BossDodongo_Update+0xec>
    2a44:	a62001a6 	sh	zero,422(s1)
    2a48:	4600028d 	trunc.w.s	$f10,$f0
    2a4c:	44185000 	mfc1	t8,$f10
    2a50:	10000002 	b	2a5c <BossDodongo_Update+0xec>
    2a54:	a63801a6 	sh	t8,422(s1)
    2a58:	a62001a6 	sh	zero,422(s1)
    2a5c:	0c000000 	jal	0 <func_808C1190>
    2a60:	8fa500b4 	lw	a1,180(sp)
    2a64:	02202025 	move	a0,s1
    2a68:	0c000000 	jal	0 <func_808C1190>
    2a6c:	8fa500b4 	lw	a1,180(sp)
    2a70:	8e390190 	lw	t9,400(s1)
    2a74:	02202025 	move	a0,s1
    2a78:	8fa500b4 	lw	a1,180(sp)
    2a7c:	0320f809 	jalr	t9
    2a80:	00000000 	nop
    2a84:	862a0032 	lh	t2,50(s1)
    2a88:	44808000 	mtc1	zero,$f16
    2a8c:	8e250228 	lw	a1,552(s1)
    2a90:	a62a00b6 	sh	t2,182(s1)
    2a94:	262400bc 	addiu	a0,s1,188
    2a98:	3c063f80 	lui	a2,0x3f80
    2a9c:	3c0742c8 	lui	a3,0x42c8
    2aa0:	0c000000 	jal	0 <func_808C1190>
    2aa4:	e7b00010 	swc1	$f16,16(sp)
    2aa8:	0c000000 	jal	0 <func_808C1190>
    2aac:	02202025 	move	a0,s1
    2ab0:	02202025 	move	a0,s1
    2ab4:	0c000000 	jal	0 <func_808C1190>
    2ab8:	8fa500b4 	lw	a1,180(sp)
    2abc:	3c014120 	lui	at,0x4120
    2ac0:	44810000 	mtc1	at,$f0
    2ac4:	3c0141a0 	lui	at,0x41a0
    2ac8:	44819000 	mtc1	at,$f18
    2acc:	240b0004 	li	t3,4
    2ad0:	44060000 	mfc1	a2,$f0
    2ad4:	44070000 	mfc1	a3,$f0
    2ad8:	afab0014 	sw	t3,20(sp)
    2adc:	8fa400b4 	lw	a0,180(sp)
    2ae0:	02202825 	move	a1,s1
    2ae4:	0c000000 	jal	0 <func_808C1190>
    2ae8:	e7b20010 	swc1	$f18,16(sp)
    2aec:	44800000 	mtc1	zero,$f0
    2af0:	3c073a83 	lui	a3,0x3a83
    2af4:	34e7126f 	ori	a3,a3,0x126f
    2af8:	44050000 	mfc1	a1,$f0
    2afc:	26240208 	addiu	a0,s1,520
    2b00:	3c063f80 	lui	a2,0x3f80
    2b04:	0c000000 	jal	0 <func_808C1190>
    2b08:	e7a00010 	swc1	$f0,16(sp)
    2b0c:	44801000 	mtc1	zero,$f2
    2b10:	3c073a83 	lui	a3,0x3a83
    2b14:	34e7126f 	ori	a3,a3,0x126f
    2b18:	44051000 	mfc1	a1,$f2
    2b1c:	2624020c 	addiu	a0,s1,524
    2b20:	3c063f80 	lui	a2,0x3f80
    2b24:	0c000000 	jal	0 <func_808C1190>
    2b28:	e7a20010 	swc1	$f2,16(sp)
    2b2c:	862c019e 	lh	t4,414(s1)
    2b30:	318d007f 	andi	t5,t4,0x7f
    2b34:	15a00011 	bnez	t5,2b7c <BossDodongo_Update+0x20c>
    2b38:	00008025 	move	s0,zero
    2b3c:	0c000000 	jal	0 <func_808C1190>
    2b40:	00000000 	nop
    2b44:	3c013e80 	lui	at,0x3e80
    2b48:	44812000 	mtc1	at,$f4
    2b4c:	3c013f00 	lui	at,0x3f00
    2b50:	44814000 	mtc1	at,$f8
    2b54:	46040182 	mul.s	$f6,$f0,$f4
    2b58:	00107080 	sll	t6,s0,0x2
    2b5c:	26100001 	addiu	s0,s0,1
    2b60:	00108400 	sll	s0,s0,0x10
    2b64:	00108403 	sra	s0,s0,0x10
    2b68:	2a010032 	slti	at,s0,50
    2b6c:	022e7821 	addu	t7,s1,t6
    2b70:	46083280 	add.s	$f10,$f6,$f8
    2b74:	1420fff1 	bnez	at,2b3c <BossDodongo_Update+0x1cc>
    2b78:	e5ea0324 	swc1	$f10,804(t7)
    2b7c:	00008025 	move	s0,zero
    2b80:	0010c080 	sll	t8,s0,0x2
    2b84:	02381021 	addu	v0,s1,t8
    2b88:	c450025c 	lwc1	$f16,604(v0)
    2b8c:	c4520324 	lwc1	$f18,804(v0)
    2b90:	26100001 	addiu	s0,s0,1
    2b94:	00108400 	sll	s0,s0,0x10
    2b98:	46128100 	add.s	$f4,$f16,$f18
    2b9c:	00108403 	sra	s0,s0,0x10
    2ba0:	2a010032 	slti	at,s0,50
    2ba4:	1420fff6 	bnez	at,2b80 <BossDodongo_Update+0x210>
    2ba8:	e444025c 	swc1	$f4,604(v0)
    2bac:	862201c8 	lh	v0,456(s1)
    2bb0:	104000b6 	beqz	v0,2e8c <BossDodongo_Update+0x51c>
    2bb4:	2841000b 	slti	at,v0,11
    2bb8:	14200013 	bnez	at,2c08 <BossDodongo_Update+0x298>
    2bbc:	26240240 	addiu	a0,s1,576
    2bc0:	30590001 	andi	t9,v0,0x1
    2bc4:	13200005 	beqz	t9,2bdc <BossDodongo_Update+0x26c>
    2bc8:	26240240 	addiu	a0,s1,576
    2bcc:	3c014220 	lui	at,0x4220
    2bd0:	44810000 	mtc1	at,$f0
    2bd4:	10000005 	b	2bec <BossDodongo_Update+0x27c>
    2bd8:	44803000 	mtc1	zero,$f6
    2bdc:	3c014270 	lui	at,0x4270
    2be0:	44810000 	mtc1	at,$f0
    2be4:	00000000 	nop
    2be8:	44803000 	mtc1	zero,$f6
    2bec:	44050000 	mfc1	a1,$f0
    2bf0:	3c063f80 	lui	a2,0x3f80
    2bf4:	3c074248 	lui	a3,0x4248
    2bf8:	0c000000 	jal	0 <func_808C1190>
    2bfc:	e7a60010 	swc1	$f6,16(sp)
    2c00:	10000008 	b	2c24 <BossDodongo_Update+0x2b4>
    2c04:	8fa300b4 	lw	v1,180(sp)
    2c08:	44804000 	mtc1	zero,$f8
    2c0c:	24050000 	li	a1,0
    2c10:	3c063f80 	lui	a2,0x3f80
    2c14:	3c074120 	lui	a3,0x4120
    2c18:	0c000000 	jal	0 <func_808C1190>
    2c1c:	e7a80010 	swc1	$f8,16(sp)
    2c20:	8fa300b4 	lw	v1,180(sp)
    2c24:	3c010001 	lui	at,0x1
    2c28:	00611021 	addu	v0,v1,at
    2c2c:	844a0aba 	lh	t2,2746(v0)
    2c30:	55400097 	bnezl	t2,2e90 <BossDodongo_Update+0x520>
    2c34:	862201be 	lh	v0,446(s1)
    2c38:	844b0ab4 	lh	t3,2740(v0)
    2c3c:	240d0001 	li	t5,1
    2c40:	55600093 	bnezl	t3,2e90 <BossDodongo_Update+0x520>
    2c44:	862201be 	lh	v0,446(s1)
    2c48:	444cf800 	cfc1	t4,$31
    2c4c:	44cdf800 	ctc1	t5,$31
    2c50:	c62a0240 	lwc1	$f10,576(s1)
    2c54:	3c010000 	lui	at,0x0
    2c58:	c4200000 	lwc1	$f0,0(at)
    2c5c:	46005424 	cvt.w.s	$f16,$f10
    2c60:	3c014f00 	lui	at,0x4f00
    2c64:	240b0001 	li	t3,1
    2c68:	444df800 	cfc1	t5,$31
    2c6c:	00000000 	nop
    2c70:	31ad0078 	andi	t5,t5,0x78
    2c74:	51a00013 	beqzl	t5,2cc4 <BossDodongo_Update+0x354>
    2c78:	440d8000 	mfc1	t5,$f16
    2c7c:	44818000 	mtc1	at,$f16
    2c80:	240d0001 	li	t5,1
    2c84:	46105401 	sub.s	$f16,$f10,$f16
    2c88:	44cdf800 	ctc1	t5,$31
    2c8c:	00000000 	nop
    2c90:	46008424 	cvt.w.s	$f16,$f16
    2c94:	444df800 	cfc1	t5,$31
    2c98:	00000000 	nop
    2c9c:	31ad0078 	andi	t5,t5,0x78
    2ca0:	15a00005 	bnez	t5,2cb8 <BossDodongo_Update+0x348>
    2ca4:	00000000 	nop
    2ca8:	440d8000 	mfc1	t5,$f16
    2cac:	3c018000 	lui	at,0x8000
    2cb0:	10000007 	b	2cd0 <BossDodongo_Update+0x360>
    2cb4:	01a16825 	or	t5,t5,at
    2cb8:	10000005 	b	2cd0 <BossDodongo_Update+0x360>
    2cbc:	240dffff 	li	t5,-1
    2cc0:	440d8000 	mfc1	t5,$f16
    2cc4:	00000000 	nop
    2cc8:	05a0fffb 	bltz	t5,2cb8 <BossDodongo_Update+0x348>
    2ccc:	00000000 	nop
    2cd0:	31ae00ff 	andi	t6,t5,0xff
    2cd4:	a44e0ab6 	sh	t6,2742(v0)
    2cd8:	44ccf800 	ctc1	t4,$31
    2cdc:	c6320240 	lwc1	$f18,576(s1)
    2ce0:	24180001 	li	t8,1
    2ce4:	3c014f00 	lui	at,0x4f00
    2ce8:	46009102 	mul.s	$f4,$f18,$f0
    2cec:	444ff800 	cfc1	t7,$31
    2cf0:	44d8f800 	ctc1	t8,$31
    2cf4:	00000000 	nop
    2cf8:	460021a4 	cvt.w.s	$f6,$f4
    2cfc:	4458f800 	cfc1	t8,$31
    2d00:	00000000 	nop
    2d04:	33180078 	andi	t8,t8,0x78
    2d08:	53000013 	beqzl	t8,2d58 <BossDodongo_Update+0x3e8>
    2d0c:	44183000 	mfc1	t8,$f6
    2d10:	44813000 	mtc1	at,$f6
    2d14:	24180001 	li	t8,1
    2d18:	46062181 	sub.s	$f6,$f4,$f6
    2d1c:	44d8f800 	ctc1	t8,$31
    2d20:	00000000 	nop
    2d24:	460031a4 	cvt.w.s	$f6,$f6
    2d28:	4458f800 	cfc1	t8,$31
    2d2c:	00000000 	nop
    2d30:	33180078 	andi	t8,t8,0x78
    2d34:	17000005 	bnez	t8,2d4c <BossDodongo_Update+0x3dc>
    2d38:	00000000 	nop
    2d3c:	44183000 	mfc1	t8,$f6
    2d40:	3c018000 	lui	at,0x8000
    2d44:	10000007 	b	2d64 <BossDodongo_Update+0x3f4>
    2d48:	0301c025 	or	t8,t8,at
    2d4c:	10000005 	b	2d64 <BossDodongo_Update+0x3f4>
    2d50:	2418ffff 	li	t8,-1
    2d54:	44183000 	mfc1	t8,$f6
    2d58:	00000000 	nop
    2d5c:	0700fffb 	bltz	t8,2d4c <BossDodongo_Update+0x3dc>
    2d60:	00000000 	nop
    2d64:	44cff800 	ctc1	t7,$31
    2d68:	331900ff 	andi	t9,t8,0xff
    2d6c:	a4590ab8 	sh	t9,2744(v0)
    2d70:	c6280240 	lwc1	$f8,576(s1)
    2d74:	444af800 	cfc1	t2,$31
    2d78:	44cbf800 	ctc1	t3,$31
    2d7c:	3c014f00 	lui	at,0x4f00
    2d80:	460042a4 	cvt.w.s	$f10,$f8
    2d84:	444bf800 	cfc1	t3,$31
    2d88:	00000000 	nop
    2d8c:	316b0078 	andi	t3,t3,0x78
    2d90:	51600013 	beqzl	t3,2de0 <BossDodongo_Update+0x470>
    2d94:	440b5000 	mfc1	t3,$f10
    2d98:	44815000 	mtc1	at,$f10
    2d9c:	240b0001 	li	t3,1
    2da0:	460a4281 	sub.s	$f10,$f8,$f10
    2da4:	44cbf800 	ctc1	t3,$31
    2da8:	00000000 	nop
    2dac:	460052a4 	cvt.w.s	$f10,$f10
    2db0:	444bf800 	cfc1	t3,$31
    2db4:	00000000 	nop
    2db8:	316b0078 	andi	t3,t3,0x78
    2dbc:	15600005 	bnez	t3,2dd4 <BossDodongo_Update+0x464>
    2dc0:	00000000 	nop
    2dc4:	440b5000 	mfc1	t3,$f10
    2dc8:	3c018000 	lui	at,0x8000
    2dcc:	10000007 	b	2dec <BossDodongo_Update+0x47c>
    2dd0:	01615825 	or	t3,t3,at
    2dd4:	10000005 	b	2dec <BossDodongo_Update+0x47c>
    2dd8:	240bffff 	li	t3,-1
    2ddc:	440b5000 	mfc1	t3,$f10
    2de0:	00000000 	nop
    2de4:	0560fffb 	bltz	t3,2dd4 <BossDodongo_Update+0x464>
    2de8:	00000000 	nop
    2dec:	316c00ff 	andi	t4,t3,0xff
    2df0:	a44c0ab0 	sh	t4,2736(v0)
    2df4:	44caf800 	ctc1	t2,$31
    2df8:	c6300240 	lwc1	$f16,576(s1)
    2dfc:	240e0001 	li	t6,1
    2e00:	3c014f00 	lui	at,0x4f00
    2e04:	46008482 	mul.s	$f18,$f16,$f0
    2e08:	444df800 	cfc1	t5,$31
    2e0c:	44cef800 	ctc1	t6,$31
    2e10:	00000000 	nop
    2e14:	46009124 	cvt.w.s	$f4,$f18
    2e18:	444ef800 	cfc1	t6,$31
    2e1c:	00000000 	nop
    2e20:	31ce0078 	andi	t6,t6,0x78
    2e24:	51c00013 	beqzl	t6,2e74 <BossDodongo_Update+0x504>
    2e28:	440e2000 	mfc1	t6,$f4
    2e2c:	44812000 	mtc1	at,$f4
    2e30:	240e0001 	li	t6,1
    2e34:	46049101 	sub.s	$f4,$f18,$f4
    2e38:	44cef800 	ctc1	t6,$31
    2e3c:	00000000 	nop
    2e40:	46002124 	cvt.w.s	$f4,$f4
    2e44:	444ef800 	cfc1	t6,$31
    2e48:	00000000 	nop
    2e4c:	31ce0078 	andi	t6,t6,0x78
    2e50:	15c00005 	bnez	t6,2e68 <BossDodongo_Update+0x4f8>
    2e54:	00000000 	nop
    2e58:	440e2000 	mfc1	t6,$f4
    2e5c:	3c018000 	lui	at,0x8000
    2e60:	10000007 	b	2e80 <BossDodongo_Update+0x510>
    2e64:	01c17025 	or	t6,t6,at
    2e68:	10000005 	b	2e80 <BossDodongo_Update+0x510>
    2e6c:	240effff 	li	t6,-1
    2e70:	440e2000 	mfc1	t6,$f4
    2e74:	00000000 	nop
    2e78:	05c0fffb 	bltz	t6,2e68 <BossDodongo_Update+0x4f8>
    2e7c:	00000000 	nop
    2e80:	44cdf800 	ctc1	t5,$31
    2e84:	31cf00ff 	andi	t7,t6,0xff
    2e88:	a44f0ab2 	sh	t7,2738(v0)
    2e8c:	862201be 	lh	v0,446(s1)
    2e90:	8fa300b4 	lw	v1,180(sp)
    2e94:	3c063f80 	lui	a2,0x3f80
    2e98:	1040003b 	beqz	v0,2f88 <BossDodongo_Update+0x618>
    2e9c:	3c0740a0 	lui	a3,0x40a0
    2ea0:	284103e8 	slti	at,v0,1000
    2ea4:	14200011 	bnez	at,2eec <BossDodongo_Update+0x57c>
    2ea8:	2458ffff 	addiu	t8,v0,-1
    2eac:	44803000 	mtc1	zero,$f6
    2eb0:	26240210 	addiu	a0,s1,528
    2eb4:	3c0541f0 	lui	a1,0x41f0
    2eb8:	3c063f80 	lui	a2,0x3f80
    2ebc:	3c0741a0 	lui	a3,0x41a0
    2ec0:	0c000000 	jal	0 <func_808C1190>
    2ec4:	e7a60010 	swc1	$f6,16(sp)
    2ec8:	44804000 	mtc1	zero,$f8
    2ecc:	26240214 	addiu	a0,s1,532
    2ed0:	3c054120 	lui	a1,0x4120
    2ed4:	3c063f80 	lui	a2,0x3f80
    2ed8:	3c0741a0 	lui	a3,0x41a0
    2edc:	0c000000 	jal	0 <func_808C1190>
    2ee0:	e7a80010 	swc1	$f8,16(sp)
    2ee4:	10000011 	b	2f2c <BossDodongo_Update+0x5bc>
    2ee8:	44809000 	mtc1	zero,$f18
    2eec:	44805000 	mtc1	zero,$f10
    2ef0:	a63801be 	sh	t8,446(s1)
    2ef4:	26240210 	addiu	a0,s1,528
    2ef8:	3c05437f 	lui	a1,0x437f
    2efc:	3c063f80 	lui	a2,0x3f80
    2f00:	3c0741a0 	lui	a3,0x41a0
    2f04:	0c000000 	jal	0 <func_808C1190>
    2f08:	e7aa0010 	swc1	$f10,16(sp)
    2f0c:	44808000 	mtc1	zero,$f16
    2f10:	26240214 	addiu	a0,s1,532
    2f14:	24050000 	li	a1,0
    2f18:	3c063f80 	lui	a2,0x3f80
    2f1c:	3c0741a0 	lui	a3,0x41a0
    2f20:	0c000000 	jal	0 <func_808C1190>
    2f24:	e7b00010 	swc1	$f16,16(sp)
    2f28:	44809000 	mtc1	zero,$f18
    2f2c:	26240218 	addiu	a0,s1,536
    2f30:	24050000 	li	a1,0
    2f34:	3c063f80 	lui	a2,0x3f80
    2f38:	3c0741a0 	lui	a3,0x41a0
    2f3c:	0c000000 	jal	0 <func_808C1190>
    2f40:	e7b20010 	swc1	$f18,16(sp)
    2f44:	44802000 	mtc1	zero,$f4
    2f48:	2624021c 	addiu	a0,s1,540
    2f4c:	3c054461 	lui	a1,0x4461
    2f50:	3c063f80 	lui	a2,0x3f80
    2f54:	3c074120 	lui	a3,0x4120
    2f58:	0c000000 	jal	0 <func_808C1190>
    2f5c:	e7a40010 	swc1	$f4,16(sp)
    2f60:	44803000 	mtc1	zero,$f6
    2f64:	3c054489 	lui	a1,0x4489
    2f68:	34a56000 	ori	a1,a1,0x6000
    2f6c:	26240220 	addiu	a0,s1,544
    2f70:	3c063f80 	lui	a2,0x3f80
    2f74:	3c074120 	lui	a3,0x4120
    2f78:	0c000000 	jal	0 <func_808C1190>
    2f7c:	e7a60010 	swc1	$f6,16(sp)
    2f80:	10000042 	b	308c <BossDodongo_Update+0x71c>
    2f84:	8fb8009c 	lw	t8,156(sp)
    2f88:	907907af 	lbu	t9,1967(v1)
    2f8c:	44808000 	mtc1	zero,$f16
    2f90:	26240210 	addiu	a0,s1,528
    2f94:	44994000 	mtc1	t9,$f8
    2f98:	3c014f80 	lui	at,0x4f80
    2f9c:	07210004 	bgez	t9,2fb0 <BossDodongo_Update+0x640>
    2fa0:	46804220 	cvt.s.w	$f8,$f8
    2fa4:	44815000 	mtc1	at,$f10
    2fa8:	00000000 	nop
    2fac:	460a4200 	add.s	$f8,$f8,$f10
    2fb0:	44054000 	mfc1	a1,$f8
    2fb4:	0c000000 	jal	0 <func_808C1190>
    2fb8:	e7b00010 	swc1	$f16,16(sp)
    2fbc:	8faa00b4 	lw	t2,180(sp)
    2fc0:	44803000 	mtc1	zero,$f6
    2fc4:	26240214 	addiu	a0,s1,532
    2fc8:	914b07b0 	lbu	t3,1968(t2)
    2fcc:	3c063f80 	lui	a2,0x3f80
    2fd0:	3c0740a0 	lui	a3,0x40a0
    2fd4:	448b9000 	mtc1	t3,$f18
    2fd8:	3c014f80 	lui	at,0x4f80
    2fdc:	05610004 	bgez	t3,2ff0 <BossDodongo_Update+0x680>
    2fe0:	468094a0 	cvt.s.w	$f18,$f18
    2fe4:	44812000 	mtc1	at,$f4
    2fe8:	00000000 	nop
    2fec:	46049480 	add.s	$f18,$f18,$f4
    2ff0:	44059000 	mfc1	a1,$f18
    2ff4:	0c000000 	jal	0 <func_808C1190>
    2ff8:	e7a60010 	swc1	$f6,16(sp)
    2ffc:	8fac00b4 	lw	t4,180(sp)
    3000:	44808000 	mtc1	zero,$f16
    3004:	26240218 	addiu	a0,s1,536
    3008:	918d07b1 	lbu	t5,1969(t4)
    300c:	3c063f80 	lui	a2,0x3f80
    3010:	3c0740a0 	lui	a3,0x40a0
    3014:	448d4000 	mtc1	t5,$f8
    3018:	3c014f80 	lui	at,0x4f80
    301c:	05a10004 	bgez	t5,3030 <BossDodongo_Update+0x6c0>
    3020:	46804220 	cvt.s.w	$f8,$f8
    3024:	44815000 	mtc1	at,$f10
    3028:	00000000 	nop
    302c:	460a4200 	add.s	$f8,$f8,$f10
    3030:	44054000 	mfc1	a1,$f8
    3034:	0c000000 	jal	0 <func_808C1190>
    3038:	e7b00010 	swc1	$f16,16(sp)
    303c:	8fae00b4 	lw	t6,180(sp)
    3040:	44802000 	mtc1	zero,$f4
    3044:	2624021c 	addiu	a0,s1,540
    3048:	85cf07b2 	lh	t7,1970(t6)
    304c:	3c063f80 	lui	a2,0x3f80
    3050:	3c0740a0 	lui	a3,0x40a0
    3054:	448f9000 	mtc1	t7,$f18
    3058:	e7a40010 	swc1	$f4,16(sp)
    305c:	468094a0 	cvt.s.w	$f18,$f18
    3060:	44059000 	mfc1	a1,$f18
    3064:	0c000000 	jal	0 <func_808C1190>
    3068:	00000000 	nop
    306c:	44803000 	mtc1	zero,$f6
    3070:	26240220 	addiu	a0,s1,544
    3074:	3c05447a 	lui	a1,0x447a
    3078:	3c063f80 	lui	a2,0x3f80
    307c:	3c0740a0 	lui	a3,0x40a0
    3080:	0c000000 	jal	0 <func_808C1190>
    3084:	e7a60010 	swc1	$f6,16(sp)
    3088:	8fb8009c 	lw	t8,156(sp)
    308c:	3c01c47a 	lui	at,0xc47a
    3090:	44815000 	mtc1	at,$f10
    3094:	c7080028 	lwc1	$f8,40(t8)
    3098:	3c010000 	lui	at,0x0
    309c:	460a403c 	c.lt.s	$f8,$f10
    30a0:	00000000 	nop
    30a4:	45020103 	bc1fl	34b4 <BossDodongo_Update+0xb44>
    30a8:	862e01c6 	lh	t6,454(s1)
    30ac:	a7a0008c 	sh	zero,140(sp)
    30b0:	c6200224 	lwc1	$f0,548(s1)
    30b4:	c4300000 	lwc1	$f16,0(at)
    30b8:	24100001 	li	s0,1
    30bc:	00001825 	move	v1,zero
    30c0:	4600803c 	c.lt.s	$f16,$f0
    30c4:	3c010000 	lui	at,0x0
    30c8:	45000003 	bc1f	30d8 <BossDodongo_Update+0x768>
    30cc:	00000000 	nop
    30d0:	1000003d 	b	31c8 <BossDodongo_Update+0x858>
    30d4:	a7a00090 	sh	zero,144(sp)
    30d8:	c4320000 	lwc1	$f18,0(at)
    30dc:	24100003 	li	s0,3
    30e0:	24190001 	li	t9,1
    30e4:	4600903c 	c.lt.s	$f18,$f0
    30e8:	00001825 	move	v1,zero
    30ec:	3c010000 	lui	at,0x0
    30f0:	45000003 	bc1f	3100 <BossDodongo_Update+0x790>
    30f4:	00000000 	nop
    30f8:	10000033 	b	31c8 <BossDodongo_Update+0x858>
    30fc:	a7b90090 	sh	t9,144(sp)
    3100:	c4240000 	lwc1	$f4,0(at)
    3104:	24100007 	li	s0,7
    3108:	240a0003 	li	t2,3
    310c:	4600203c 	c.lt.s	$f4,$f0
    3110:	3c010000 	lui	at,0x0
    3114:	4500000c 	bc1f	3148 <BossDodongo_Update+0x7d8>
    3118:	00000000 	nop
    311c:	0c000000 	jal	0 <func_808C1190>
    3120:	a7aa0090 	sh	t2,144(sp)
    3124:	3c010000 	lui	at,0x0
    3128:	c4260000 	lwc1	$f6,0(at)
    312c:	46060202 	mul.s	$f8,$f0,$f6
    3130:	4600428d 	trunc.w.s	$f10,$f8
    3134:	44035000 	mfc1	v1,$f10
    3138:	00000000 	nop
    313c:	00031c00 	sll	v1,v1,0x10
    3140:	10000021 	b	31c8 <BossDodongo_Update+0x858>
    3144:	00031c03 	sra	v1,v1,0x10
    3148:	c4300000 	lwc1	$f16,0(at)
    314c:	240c0fff 	li	t4,4095
    3150:	24100001 	li	s0,1
    3154:	4600803c 	c.lt.s	$f16,$f0
    3158:	240effff 	li	t6,-1
    315c:	24030001 	li	v1,1
    3160:	4502000e 	bc1fl	319c <BossDodongo_Update+0x82c>
    3164:	a7ae0090 	sh	t6,144(sp)
    3168:	24100007 	li	s0,7
    316c:	0c000000 	jal	0 <func_808C1190>
    3170:	a7ac0090 	sh	t4,144(sp)
    3174:	3c010000 	lui	at,0x0
    3178:	c4320000 	lwc1	$f18,0(at)
    317c:	46120102 	mul.s	$f4,$f0,$f18
    3180:	4600218d 	trunc.w.s	$f6,$f4
    3184:	44033000 	mfc1	v1,$f6
    3188:	00000000 	nop
    318c:	00031c00 	sll	v1,v1,0x10
    3190:	1000000d 	b	31c8 <BossDodongo_Update+0x858>
    3194:	00031c03 	sra	v1,v1,0x10
    3198:	a7ae0090 	sh	t6,144(sp)
    319c:	0c000000 	jal	0 <func_808C1190>
    31a0:	a7a3008e 	sh	v1,142(sp)
    31a4:	3c014248 	lui	at,0x4248
    31a8:	44814000 	mtc1	at,$f8
    31ac:	87a3008e 	lh	v1,142(sp)
    31b0:	46080282 	mul.s	$f10,$f0,$f8
    31b4:	4600540d 	trunc.w.s	$f16,$f10
    31b8:	440a8000 	mfc1	t2,$f16
    31bc:	00000000 	nop
    31c0:	254bffce 	addiu	t3,t2,-50
    31c4:	a7ab008c 	sh	t3,140(sp)
    31c8:	8fac0098 	lw	t4,152(sp)
    31cc:	918d0444 	lbu	t5,1092(t4)
    31d0:	29a1000a 	slti	at,t5,10
    31d4:	54200003 	bnezl	at,31e4 <BossDodongo_Update+0x874>
    31d8:	8626019e 	lh	a2,414(s1)
    31dc:	2410ffff 	li	s0,-1
    31e0:	8626019e 	lh	a2,414(s1)
    31e4:	00d07024 	and	t6,a2,s0
    31e8:	55c00035 	bnezl	t6,32c0 <BossDodongo_Update+0x950>
    31ec:	87ae0090 	lh	t6,144(sp)
    31f0:	0c000000 	jal	0 <func_808C1190>
    31f4:	a7a3008e 	sh	v1,142(sp)
    31f8:	3c0143a5 	lui	at,0x43a5
    31fc:	44819000 	mtc1	at,$f18
    3200:	00000000 	nop
    3204:	46120102 	mul.s	$f4,$f0,$f18
    3208:	0c000000 	jal	0 <func_808C1190>
    320c:	e7a4007c 	swc1	$f4,124(sp)
    3210:	3c010000 	lui	at,0x0
    3214:	c4260000 	lwc1	$f6,0(at)
    3218:	46060302 	mul.s	$f12,$f0,$f6
    321c:	0c000000 	jal	0 <func_808C1190>
    3220:	e7ac0078 	swc1	$f12,120(sp)
    3224:	c7a8007c 	lwc1	$f8,124(sp)
    3228:	3c010000 	lui	at,0x0
    322c:	c4300000 	lwc1	$f16,0(at)
    3230:	46080282 	mul.s	$f10,$f0,$f8
    3234:	3c010000 	lui	at,0x0
    3238:	c4240000 	lwc1	$f4,0(at)
    323c:	c7ac0078 	lwc1	$f12,120(sp)
    3240:	e7a40084 	swc1	$f4,132(sp)
    3244:	46105480 	add.s	$f18,$f10,$f16
    3248:	0c000000 	jal	0 <func_808C1190>
    324c:	e7b20080 	swc1	$f18,128(sp)
    3250:	c7a6007c 	lwc1	$f6,124(sp)
    3254:	3c010000 	lui	at,0x0
    3258:	c42a0000 	lwc1	$f10,0(at)
    325c:	46060202 	mul.s	$f8,$f0,$f6
    3260:	87a3008e 	lh	v1,142(sp)
    3264:	87ac008c 	lh	t4,140(sp)
    3268:	3c0f0000 	lui	t7,0x0
    326c:	0003c880 	sll	t9,v1,0x2
    3270:	3c180000 	lui	t8,0x0
    3274:	240a000a 	li	t2,10
    3278:	460a4400 	add.s	$f16,$f8,$f10
    327c:	0323c821 	addu	t9,t9,v1
    3280:	01595823 	subu	t3,t2,t9
    3284:	27180000 	addiu	t8,t8,0
    3288:	25ef0000 	addiu	t7,t7,0
    328c:	00031080 	sll	v0,v1,0x2
    3290:	258d0064 	addiu	t5,t4,100
    3294:	e7b00088 	swc1	$f16,136(sp)
    3298:	afad0018 	sw	t5,24(sp)
    329c:	004f3021 	addu	a2,v0,t7
    32a0:	00583821 	addu	a3,v0,t8
    32a4:	afab0010 	sw	t3,16(sp)
    32a8:	8fa400b4 	lw	a0,180(sp)
    32ac:	27a50080 	addiu	a1,sp,128
    32b0:	0c000000 	jal	0 <func_808C1190>
    32b4:	afa30014 	sw	v1,20(sp)
    32b8:	8626019e 	lh	a2,414(s1)
    32bc:	87ae0090 	lh	t6,144(sp)
    32c0:	3c0a0000 	lui	t2,0x0
    32c4:	254a0000 	addiu	t2,t2,0
    32c8:	00ce7824 	and	t7,a2,t6
    32cc:	15e00072 	bnez	t7,3498 <BossDodongo_Update+0xb28>
    32d0:	27b8006c 	addiu	t8,sp,108
    32d4:	8d4b0000 	lw	t3,0(t2)
    32d8:	8d590004 	lw	t9,4(t2)
    32dc:	3c0d0000 	lui	t5,0x0
    32e0:	af0b0000 	sw	t3,0(t8)
    32e4:	8d4b0008 	lw	t3,8(t2)
    32e8:	25ad0000 	addiu	t5,t5,0
    32ec:	af190004 	sw	t9,4(t8)
    32f0:	af0b0008 	sw	t3,8(t8)
    32f4:	8daf0000 	lw	t7,0(t5)
    32f8:	27ac0060 	addiu	t4,sp,96
    32fc:	8dae0004 	lw	t6,4(t5)
    3300:	ad8f0000 	sw	t7,0(t4)
    3304:	8daf0008 	lw	t7,8(t5)
    3308:	ad8e0004 	sw	t6,4(t4)
    330c:	0c000000 	jal	0 <func_808C1190>
    3310:	ad8f0008 	sw	t7,8(t4)
    3314:	3c0143a5 	lui	at,0x43a5
    3318:	44819000 	mtc1	at,$f18
    331c:	00000000 	nop
    3320:	46120102 	mul.s	$f4,$f0,$f18
    3324:	0c000000 	jal	0 <func_808C1190>
    3328:	e7a40050 	swc1	$f4,80(sp)
    332c:	3c010000 	lui	at,0x0
    3330:	c4260000 	lwc1	$f6,0(at)
    3334:	46060302 	mul.s	$f12,$f0,$f6
    3338:	0c000000 	jal	0 <func_808C1190>
    333c:	e7ac004c 	swc1	$f12,76(sp)
    3340:	c7a80050 	lwc1	$f8,80(sp)
    3344:	3c010000 	lui	at,0x0
    3348:	c4300000 	lwc1	$f16,0(at)
    334c:	46080282 	mul.s	$f10,$f0,$f8
    3350:	3c010000 	lui	at,0x0
    3354:	c4240000 	lwc1	$f4,0(at)
    3358:	c7ac004c 	lwc1	$f12,76(sp)
    335c:	e7a40058 	swc1	$f4,88(sp)
    3360:	46105480 	add.s	$f18,$f10,$f16
    3364:	0c000000 	jal	0 <func_808C1190>
    3368:	e7b20054 	swc1	$f18,84(sp)
    336c:	c7a60050 	lwc1	$f6,80(sp)
    3370:	3c010000 	lui	at,0x0
    3374:	c42a0000 	lwc1	$f10,0(at)
    3378:	46060202 	mul.s	$f8,$f0,$f6
    337c:	8fa400b4 	lw	a0,180(sp)
    3380:	27a50054 	addiu	a1,sp,84
    3384:	460a4400 	add.s	$f16,$f8,$f10
    3388:	0c000000 	jal	0 <func_808C1190>
    338c:	e7b0005c 	swc1	$f16,92(sp)
    3390:	00008025 	move	s0,zero
    3394:	3c010000 	lui	at,0x0
    3398:	c4320000 	lwc1	$f18,0(at)
    339c:	3c013f00 	lui	at,0x3f00
    33a0:	44816000 	mtc1	at,$f12
    33a4:	0c000000 	jal	0 <func_808C1190>
    33a8:	e7b20064 	swc1	$f18,100(sp)
    33ac:	3c013f00 	lui	at,0x3f00
    33b0:	44816000 	mtc1	at,$f12
    33b4:	0c000000 	jal	0 <func_808C1190>
    33b8:	e7a00060 	swc1	$f0,96(sp)
    33bc:	0c000000 	jal	0 <func_808C1190>
    33c0:	e7a00068 	swc1	$f0,104(sp)
    33c4:	3c0143a5 	lui	at,0x43a5
    33c8:	44812000 	mtc1	at,$f4
    33cc:	00000000 	nop
    33d0:	46040182 	mul.s	$f6,$f0,$f4
    33d4:	0c000000 	jal	0 <func_808C1190>
    33d8:	e7a60050 	swc1	$f6,80(sp)
    33dc:	3c010000 	lui	at,0x0
    33e0:	c4280000 	lwc1	$f8,0(at)
    33e4:	46080302 	mul.s	$f12,$f0,$f8
    33e8:	0c000000 	jal	0 <func_808C1190>
    33ec:	e7ac004c 	swc1	$f12,76(sp)
    33f0:	c7aa0050 	lwc1	$f10,80(sp)
    33f4:	3c010000 	lui	at,0x0
    33f8:	c4320000 	lwc1	$f18,0(at)
    33fc:	460a0402 	mul.s	$f16,$f0,$f10
    3400:	3c010000 	lui	at,0x0
    3404:	c4260000 	lwc1	$f6,0(at)
    3408:	c7ac004c 	lwc1	$f12,76(sp)
    340c:	e7a60058 	swc1	$f6,88(sp)
    3410:	46128100 	add.s	$f4,$f16,$f18
    3414:	0c000000 	jal	0 <func_808C1190>
    3418:	e7a40054 	swc1	$f4,84(sp)
    341c:	c7a80050 	lwc1	$f8,80(sp)
    3420:	3c010000 	lui	at,0x0
    3424:	c4300000 	lwc1	$f16,0(at)
    3428:	46080282 	mul.s	$f10,$f0,$f8
    342c:	3c014000 	lui	at,0x4000
    3430:	44816000 	mtc1	at,$f12
    3434:	46105480 	add.s	$f18,$f10,$f16
    3438:	0c000000 	jal	0 <func_808C1190>
    343c:	e7b2005c 	swc1	$f18,92(sp)
    3440:	4600010d 	trunc.w.s	$f4,$f0
    3444:	240d0050 	li	t5,80
    3448:	afad0014 	sw	t5,20(sp)
    344c:	8fa400b4 	lw	a0,180(sp)
    3450:	440a2000 	mfc1	t2,$f4
    3454:	27a50054 	addiu	a1,sp,84
    3458:	27a6006c 	addiu	a2,sp,108
    345c:	000acc00 	sll	t9,t2,0x10
    3460:	00195c03 	sra	t3,t9,0x10
    3464:	256c0006 	addiu	t4,t3,6
    3468:	448c3000 	mtc1	t4,$f6
    346c:	27a70060 	addiu	a3,sp,96
    3470:	46803220 	cvt.s.w	$f8,$f6
    3474:	0c000000 	jal	0 <func_808C1190>
    3478:	e7a80010 	swc1	$f8,16(sp)
    347c:	26100001 	addiu	s0,s0,1
    3480:	00108400 	sll	s0,s0,0x10
    3484:	00108403 	sra	s0,s0,0x10
    3488:	2a010004 	slti	at,s0,4
    348c:	1420ffc1 	bnez	at,3394 <BossDodongo_Update+0xa24>
    3490:	00000000 	nop
    3494:	8626019e 	lh	a2,414(s1)
    3498:	3c040300 	lui	a0,0x300
    349c:	3c050000 	lui	a1,0x0
    34a0:	24a50000 	addiu	a1,a1,0
    34a4:	248421d8 	addiu	a0,a0,8664
    34a8:	0c000000 	jal	0 <func_808C1190>
    34ac:	8e270224 	lw	a3,548(s1)
    34b0:	862e01c6 	lh	t6,454(s1)
    34b4:	3c070000 	lui	a3,0x0
    34b8:	24e70000 	addiu	a3,a3,0
    34bc:	11c00031 	beqz	t6,3584 <BossDodongo_Update+0xc14>
    34c0:	3c0800ff 	lui	t0,0xff
    34c4:	3c020000 	lui	v0,0x0
    34c8:	24420000 	addiu	v0,v0,0
    34cc:	00027900 	sll	t7,v0,0x4
    34d0:	3c030000 	lui	v1,0x0
    34d4:	000fc702 	srl	t8,t7,0x1c
    34d8:	24630000 	addiu	v1,v1,0
    34dc:	00185080 	sll	t2,t8,0x2
    34e0:	00037100 	sll	t6,v1,0x4
    34e4:	00eac821 	addu	t9,a3,t2
    34e8:	000e7f02 	srl	t7,t6,0x1c
    34ec:	8f2b0000 	lw	t3,0(t9)
    34f0:	000fc080 	sll	t8,t7,0x2
    34f4:	3508ffff 	ori	t0,t0,0xffff
    34f8:	00f85021 	addu	t2,a3,t8
    34fc:	8d590000 	lw	t9,0(t2)
    3500:	00486024 	and	t4,v0,t0
    3504:	016c6821 	addu	t5,t3,t4
    3508:	3c098000 	lui	t1,0x8000
    350c:	00685824 	and	t3,v1,t0
    3510:	032b6021 	addu	t4,t9,t3
    3514:	01a92821 	addu	a1,t5,t1
    3518:	01893021 	addu	a2,t4,t1
    351c:	00002025 	move	a0,zero
    3520:	862301c2 	lh	v1,450(s1)
    3524:	24840001 	addiu	a0,a0,1
    3528:	00042400 	sll	a0,a0,0x10
    352c:	306307ff 	andi	v1,v1,0x7ff
    3530:	00031c00 	sll	v1,v1,0x10
    3534:	00031c03 	sra	v1,v1,0x10
    3538:	00031040 	sll	v0,v1,0x1
    353c:	00c26821 	addu	t5,a2,v0
    3540:	95ae0000 	lhu	t6,0(t5)
    3544:	00a27821 	addu	t7,a1,v0
    3548:	00042403 	sra	a0,a0,0x10
    354c:	a5ee0000 	sh	t6,0(t7)
    3550:	863801c2 	lh	t8,450(s1)
    3554:	28810014 	slti	at,a0,20
    3558:	270a0025 	addiu	t2,t8,37
    355c:	1420fff0 	bnez	at,3520 <BossDodongo_Update+0xbb0>
    3560:	a62a01c2 	sh	t2,450(s1)
    3564:	44800000 	mtc1	zero,$f0
    3568:	3c073c23 	lui	a3,0x3c23
    356c:	34e7d70a 	ori	a3,a3,0xd70a
    3570:	44050000 	mfc1	a1,$f0
    3574:	26240224 	addiu	a0,s1,548
    3578:	3c063f80 	lui	a2,0x3f80
    357c:	0c000000 	jal	0 <func_808C1190>
    3580:	e7a00010 	swc1	$f0,16(sp)
    3584:	863901bc 	lh	t9,444(s1)
    3588:	5720001c 	bnezl	t9,35fc <BossDodongo_Update+0xc8c>
    358c:	8e2a0190 	lw	t2,400(s1)
    3590:	8e2c0190 	lw	t4,400(s1)
    3594:	3c0b0000 	lui	t3,0x0
    3598:	256b0000 	addiu	t3,t3,0
    359c:	116c0006 	beq	t3,t4,35b8 <BossDodongo_Update+0xc48>
    35a0:	8fa400b4 	lw	a0,180(sp)
    35a4:	3c010001 	lui	at,0x1
    35a8:	34211e60 	ori	at,at,0x1e60
    35ac:	00812821 	addu	a1,a0,at
    35b0:	0c000000 	jal	0 <func_808C1190>
    35b4:	26260440 	addiu	a2,s1,1088
    35b8:	8fa400b4 	lw	a0,180(sp)
    35bc:	3c010001 	lui	at,0x1
    35c0:	34211e60 	ori	at,at,0x1e60
    35c4:	26260440 	addiu	a2,s1,1088
    35c8:	00818021 	addu	s0,a0,at
    35cc:	02002825 	move	a1,s0
    35d0:	0c000000 	jal	0 <func_808C1190>
    35d4:	afa60034 	sw	a2,52(sp)
    35d8:	8e2f0190 	lw	t7,400(s1)
    35dc:	3c030000 	lui	v1,0x0
    35e0:	24630000 	addiu	v1,v1,0
    35e4:	146f0004 	bne	v1,t7,35f8 <BossDodongo_Update+0xc88>
    35e8:	8fa60034 	lw	a2,52(sp)
    35ec:	8fa400b4 	lw	a0,180(sp)
    35f0:	0c000000 	jal	0 <func_808C1190>
    35f4:	02002825 	move	a1,s0
    35f8:	8e2a0190 	lw	t2,400(s1)
    35fc:	3c180000 	lui	t8,0x0
    3600:	3c030000 	lui	v1,0x0
    3604:	27180000 	addiu	t8,t8,0
    3608:	170a0005 	bne	t8,t2,3620 <BossDodongo_Update+0xcb0>
    360c:	24630000 	addiu	v1,v1,0
    3610:	44800000 	mtc1	zero,$f0
    3614:	8e39045c 	lw	t9,1116(s1)
    3618:	10000006 	b	3634 <BossDodongo_Update+0xcc4>
    361c:	e7200038 	swc1	$f0,56(t9)
    3620:	3c013f80 	lui	at,0x3f80
    3624:	44815000 	mtc1	at,$f10
    3628:	8e2b045c 	lw	t3,1116(s1)
    362c:	44800000 	mtc1	zero,$f0
    3630:	e56a0038 	swc1	$f10,56(t3)
    3634:	3c013f80 	lui	at,0x3f80
    3638:	44811000 	mtc1	at,$f2
    363c:	24100006 	li	s0,6
    3640:	2402000c 	li	v0,12
    3644:	5202000e 	beql	s0,v0,3680 <BossDodongo_Update+0xd10>
    3648:	26100001 	addiu	s0,s0,1
    364c:	8e2c0190 	lw	t4,400(s1)
    3650:	546c0007 	bnel	v1,t4,3670 <BossDodongo_Update+0xd00>
    3654:	8e38045c 	lw	t8,1116(s1)
    3658:	8e2d045c 	lw	t5,1116(s1)
    365c:	00107180 	sll	t6,s0,0x6
    3660:	01ae7821 	addu	t7,t5,t6
    3664:	10000005 	b	367c <BossDodongo_Update+0xd0c>
    3668:	e5e00038 	swc1	$f0,56(t7)
    366c:	8e38045c 	lw	t8,1116(s1)
    3670:	00105180 	sll	t2,s0,0x6
    3674:	030ac821 	addu	t9,t8,t2
    3678:	e7220038 	swc1	$f2,56(t9)
    367c:	26100001 	addiu	s0,s0,1
    3680:	00108400 	sll	s0,s0,0x10
    3684:	00108403 	sra	s0,s0,0x10
    3688:	2a010013 	slti	at,s0,19
    368c:	1420ffed 	bnez	at,3644 <BossDodongo_Update+0xcd4>
    3690:	00000000 	nop
    3694:	44808000 	mtc1	zero,$f16
    3698:	c6320244 	lwc1	$f18,580(s1)
    369c:	3c020000 	lui	v0,0x0
    36a0:	24420000 	addiu	v0,v0,0
    36a4:	46128032 	c.eq.s	$f16,$f18
    36a8:	26240244 	addiu	a0,s1,580
    36ac:	3c063f80 	lui	a2,0x3f80
    36b0:	3c074000 	lui	a3,0x4000
    36b4:	45030033 	bc1tl	3784 <BossDodongo_Update+0xe14>
    36b8:	8c4e0000 	lw	t6,0(v0)
    36bc:	3c020000 	lui	v0,0x0
    36c0:	24420000 	addiu	v0,v0,0
    36c4:	8c4c0000 	lw	t4,0(v0)
    36c8:	240b0001 	li	t3,1
    36cc:	240d00ff 	li	t5,255
    36d0:	a58b0454 	sh	t3,1108(t4)
    36d4:	8c4e0000 	lw	t6,0(v0)
    36d8:	240f0050 	li	t7,80
    36dc:	4459f800 	cfc1	t9,$31
    36e0:	a5cd0456 	sh	t5,1110(t6)
    36e4:	8c580000 	lw	t8,0(v0)
    36e8:	44cbf800 	ctc1	t3,$31
    36ec:	3c014f00 	lui	at,0x4f00
    36f0:	a70f0458 	sh	t7,1112(t8)
    36f4:	8c4a0000 	lw	t2,0(v0)
    36f8:	a540045a 	sh	zero,1114(t2)
    36fc:	c6240244 	lwc1	$f4,580(s1)
    3700:	460021a4 	cvt.w.s	$f6,$f4
    3704:	444bf800 	cfc1	t3,$31
    3708:	00000000 	nop
    370c:	316b0078 	andi	t3,t3,0x78
    3710:	51600013 	beqzl	t3,3760 <BossDodongo_Update+0xdf0>
    3714:	440b3000 	mfc1	t3,$f6
    3718:	44813000 	mtc1	at,$f6
    371c:	240b0001 	li	t3,1
    3720:	46062181 	sub.s	$f6,$f4,$f6
    3724:	44cbf800 	ctc1	t3,$31
    3728:	00000000 	nop
    372c:	460031a4 	cvt.w.s	$f6,$f6
    3730:	444bf800 	cfc1	t3,$31
    3734:	00000000 	nop
    3738:	316b0078 	andi	t3,t3,0x78
    373c:	15600005 	bnez	t3,3754 <BossDodongo_Update+0xde4>
    3740:	00000000 	nop
    3744:	440b3000 	mfc1	t3,$f6
    3748:	3c018000 	lui	at,0x8000
    374c:	10000007 	b	376c <BossDodongo_Update+0xdfc>
    3750:	01615825 	or	t3,t3,at
    3754:	10000005 	b	376c <BossDodongo_Update+0xdfc>
    3758:	240bffff 	li	t3,-1
    375c:	440b3000 	mfc1	t3,$f6
    3760:	00000000 	nop
    3764:	0560fffb 	bltz	t3,3754 <BossDodongo_Update+0xde4>
    3768:	00000000 	nop
    376c:	8c4d0000 	lw	t5,0(v0)
    3770:	44d9f800 	ctc1	t9,$31
    3774:	316c00ff 	andi	t4,t3,0xff
    3778:	10000003 	b	3788 <BossDodongo_Update+0xe18>
    377c:	a5ac045c 	sh	t4,1116(t5)
    3780:	8c4e0000 	lw	t6,0(v0)
    3784:	a5c00454 	sh	zero,1108(t6)
    3788:	44050000 	mfc1	a1,$f0
    378c:	0c000000 	jal	0 <func_808C1190>
    3790:	e7a00010 	swc1	$f0,16(sp)
    3794:	0c000000 	jal	0 <func_808C1190>
    3798:	8fa400b4 	lw	a0,180(sp)
    379c:	8fbf002c 	lw	ra,44(sp)
    37a0:	8fb00024 	lw	s0,36(sp)
    37a4:	8fb10028 	lw	s1,40(sp)
    37a8:	03e00008 	jr	ra
    37ac:	27bd00b0 	addiu	sp,sp,176

000037b0 <func_808C4940>:
    37b0:	27bdffb0 	addiu	sp,sp,-80
    37b4:	24010006 	li	at,6
    37b8:	afbf0014 	sw	ra,20(sp)
    37bc:	afa40050 	sw	a0,80(sp)
    37c0:	afa50054 	sw	a1,84(sp)
    37c4:	10a10001 	beq	a1,at,37cc <func_808C4940+0x1c>
    37c8:	afa60058 	sw	a2,88(sp)
    37cc:	00e02025 	move	a0,a3
    37d0:	0c000000 	jal	0 <func_808C1190>
    37d4:	8fa50060 	lw	a1,96(sp)
    37d8:	8faf0058 	lw	t7,88(sp)
    37dc:	3c060000 	lui	a2,0x0
    37e0:	24c60000 	addiu	a2,a2,0
    37e4:	8df80000 	lw	t8,0(t7)
    37e8:	8fb90050 	lw	t9,80(sp)
    37ec:	27a40030 	addiu	a0,sp,48
    37f0:	5300007f 	beqzl	t8,39f0 <func_808C4940+0x240>
    37f4:	8fbf0014 	lw	ra,20(sp)
    37f8:	8f250000 	lw	a1,0(t9)
    37fc:	24070ecb 	li	a3,3787
    3800:	0c000000 	jal	0 <func_808C1190>
    3804:	afa50040 	sw	a1,64(sp)
    3808:	3c013f80 	lui	at,0x3f80
    380c:	44817000 	mtc1	at,$f14
    3810:	8fa30054 	lw	v1,84(sp)
    3814:	24010021 	li	at,33
    3818:	8fa80064 	lw	t0,100(sp)
    381c:	10610004 	beq	v1,at,3830 <func_808C4940+0x80>
    3820:	46007006 	mov.s	$f0,$f14
    3824:	24010030 	li	at,48
    3828:	54610004 	bnel	v1,at,383c <func_808C4940+0x8c>
    382c:	e7a00048 	swc1	$f0,72(sp)
    3830:	c50001f8 	lwc1	$f0,504(t0)
    3834:	46000386 	mov.s	$f14,$f0
    3838:	e7a00048 	swc1	$f0,72(sp)
    383c:	0c000000 	jal	0 <func_808C1190>
    3840:	e7ae004c 	swc1	$f14,76(sp)
    3844:	c7a00048 	lwc1	$f0,72(sp)
    3848:	3c013f80 	lui	at,0x3f80
    384c:	44816000 	mtc1	at,$f12
    3850:	44060000 	mfc1	a2,$f0
    3854:	c7ae004c 	lwc1	$f14,76(sp)
    3858:	0c000000 	jal	0 <func_808C1190>
    385c:	24070001 	li	a3,1
    3860:	8fa30054 	lw	v1,84(sp)
    3864:	24010006 	li	at,6
    3868:	1061003f 	beq	v1,at,3968 <func_808C4940+0x1b8>
    386c:	24010007 	li	at,7
    3870:	1061003d 	beq	v1,at,3968 <func_808C4940+0x1b8>
    3874:	8fa90064 	lw	t1,100(sp)
    3878:	00035080 	sll	t2,v1,0x2
    387c:	012a1021 	addu	v0,t1,t2
    3880:	3c010000 	lui	at,0x0
    3884:	c4260000 	lwc1	$f6,0(at)
    3888:	c444025c 	lwc1	$f4,604(v0)
    388c:	afa20020 	sw	v0,32(sp)
    3890:	24050001 	li	a1,1
    3894:	46062302 	mul.s	$f12,$f4,$f6
    3898:	0c000000 	jal	0 <func_808C1190>
    389c:	00000000 	nop
    38a0:	8fab0020 	lw	t3,32(sp)
    38a4:	3c010000 	lui	at,0x0
    38a8:	c42a0000 	lwc1	$f10,0(at)
    38ac:	c568025c 	lwc1	$f8,604(t3)
    38b0:	24050001 	li	a1,1
    38b4:	460a4302 	mul.s	$f12,$f8,$f10
    38b8:	0c000000 	jal	0 <func_808C1190>
    38bc:	00000000 	nop
    38c0:	8fac0020 	lw	t4,32(sp)
    38c4:	3c010000 	lui	at,0x0
    38c8:	c4320000 	lwc1	$f18,0(at)
    38cc:	c590025c 	lwc1	$f16,604(t4)
    38d0:	24050001 	li	a1,1
    38d4:	46128302 	mul.s	$f12,$f16,$f18
    38d8:	0c000000 	jal	0 <func_808C1190>
    38dc:	00000000 	nop
    38e0:	8fad0064 	lw	t5,100(sp)
    38e4:	3c013f80 	lui	at,0x3f80
    38e8:	44811000 	mtc1	at,$f2
    38ec:	c5a00208 	lwc1	$f0,520(t5)
    38f0:	24070001 	li	a3,1
    38f4:	46001301 	sub.s	$f12,$f2,$f0
    38f8:	46020380 	add.s	$f14,$f0,$f2
    38fc:	44066000 	mfc1	a2,$f12
    3900:	0c000000 	jal	0 <func_808C1190>
    3904:	00000000 	nop
    3908:	8fae0020 	lw	t6,32(sp)
    390c:	3c010000 	lui	at,0x0
    3910:	c4260000 	lwc1	$f6,0(at)
    3914:	c5c4025c 	lwc1	$f4,604(t6)
    3918:	24050001 	li	a1,1
    391c:	46062302 	mul.s	$f12,$f4,$f6
    3920:	0c000000 	jal	0 <func_808C1190>
    3924:	46006307 	neg.s	$f12,$f12
    3928:	8faf0020 	lw	t7,32(sp)
    392c:	3c010000 	lui	at,0x0
    3930:	c42a0000 	lwc1	$f10,0(at)
    3934:	c5e8025c 	lwc1	$f8,604(t7)
    3938:	24050001 	li	a1,1
    393c:	460a4302 	mul.s	$f12,$f8,$f10
    3940:	0c000000 	jal	0 <func_808C1190>
    3944:	46006307 	neg.s	$f12,$f12
    3948:	8fb80020 	lw	t8,32(sp)
    394c:	3c010000 	lui	at,0x0
    3950:	c4320000 	lwc1	$f18,0(at)
    3954:	c710025c 	lwc1	$f16,604(t8)
    3958:	24050001 	li	a1,1
    395c:	46128302 	mul.s	$f12,$f16,$f18
    3960:	0c000000 	jal	0 <func_808C1190>
    3964:	46006307 	neg.s	$f12,$f12
    3968:	8fa70040 	lw	a3,64(sp)
    396c:	3c08da38 	lui	t0,0xda38
    3970:	35080003 	ori	t0,t0,0x3
    3974:	8ce202c0 	lw	v0,704(a3)
    3978:	3c050000 	lui	a1,0x0
    397c:	24a50000 	addiu	a1,a1,0
    3980:	24590008 	addiu	t9,v0,8
    3984:	acf902c0 	sw	t9,704(a3)
    3988:	ac480000 	sw	t0,0(v0)
    398c:	8fa90050 	lw	t1,80(sp)
    3990:	24060eee 	li	a2,3822
    3994:	8d240000 	lw	a0,0(t1)
    3998:	0c000000 	jal	0 <func_808C1190>
    399c:	afa2002c 	sw	v0,44(sp)
    39a0:	8fa3002c 	lw	v1,44(sp)
    39a4:	3c0cde00 	lui	t4,0xde00
    39a8:	ac620004 	sw	v0,4(v1)
    39ac:	8faa0040 	lw	t2,64(sp)
    39b0:	8d4202c0 	lw	v0,704(t2)
    39b4:	244b0008 	addiu	t3,v0,8
    39b8:	ad4b02c0 	sw	t3,704(t2)
    39bc:	ac4c0000 	sw	t4,0(v0)
    39c0:	8fad0058 	lw	t5,88(sp)
    39c4:	8dae0000 	lw	t6,0(t5)
    39c8:	0c000000 	jal	0 <func_808C1190>
    39cc:	ac4e0004 	sw	t6,4(v0)
    39d0:	8faf0050 	lw	t7,80(sp)
    39d4:	3c060000 	lui	a2,0x0
    39d8:	24c60000 	addiu	a2,a2,0
    39dc:	27a40030 	addiu	a0,sp,48
    39e0:	24070ef2 	li	a3,3826
    39e4:	0c000000 	jal	0 <func_808C1190>
    39e8:	8de50000 	lw	a1,0(t7)
    39ec:	8fbf0014 	lw	ra,20(sp)
    39f0:	27bd0050 	addiu	sp,sp,80
    39f4:	24020001 	li	v0,1
    39f8:	03e00008 	jr	ra
    39fc:	00000000 	nop

00003a00 <func_808C4B90>:
    3a00:	27bdffe8 	addiu	sp,sp,-24
    3a04:	24010006 	li	at,6
    3a08:	afbf0014 	sw	ra,20(sp)
    3a0c:	afa40018 	sw	a0,24(sp)
    3a10:	afa5001c 	sw	a1,28(sp)
    3a14:	afa60020 	sw	a2,32(sp)
    3a18:	14a10017 	bne	a1,at,3a78 <func_808C4B90+0x78>
    3a1c:	afa70024 	sw	a3,36(sp)
    3a20:	8fa50028 	lw	a1,40(sp)
    3a24:	3c040000 	lui	a0,0x0
    3a28:	24840000 	addiu	a0,a0,0
    3a2c:	0c000000 	jal	0 <func_808C1190>
    3a30:	24a503ec 	addiu	a1,a1,1004
    3a34:	8fa50028 	lw	a1,40(sp)
    3a38:	3c040000 	lui	a0,0x0
    3a3c:	24840000 	addiu	a0,a0,0
    3a40:	0c000000 	jal	0 <func_808C1190>
    3a44:	24a50038 	addiu	a1,a1,56
    3a48:	8fa50028 	lw	a1,40(sp)
    3a4c:	3c040000 	lui	a0,0x0
    3a50:	24840000 	addiu	a0,a0,0
    3a54:	0c000000 	jal	0 <func_808C1190>
    3a58:	24a503f8 	addiu	a1,a1,1016
    3a5c:	8fa50028 	lw	a1,40(sp)
    3a60:	3c040000 	lui	a0,0x0
    3a64:	24840000 	addiu	a0,a0,0
    3a68:	0c000000 	jal	0 <func_808C1190>
    3a6c:	24a5041c 	addiu	a1,a1,1052
    3a70:	10000014 	b	3ac4 <func_808C4B90+0xc4>
    3a74:	8fa50028 	lw	a1,40(sp)
    3a78:	8faf001c 	lw	t7,28(sp)
    3a7c:	24010027 	li	at,39
    3a80:	3c040000 	lui	a0,0x0
    3a84:	15e10007 	bne	t7,at,3aa4 <func_808C4B90+0xa4>
    3a88:	8fb8001c 	lw	t8,28(sp)
    3a8c:	8fa50028 	lw	a1,40(sp)
    3a90:	24840000 	addiu	a0,a0,0
    3a94:	0c000000 	jal	0 <func_808C1190>
    3a98:	24a50410 	addiu	a1,a1,1040
    3a9c:	10000009 	b	3ac4 <func_808C4B90+0xc4>
    3aa0:	8fa50028 	lw	a1,40(sp)
    3aa4:	2401002e 	li	at,46
    3aa8:	17010005 	bne	t8,at,3ac0 <func_808C4B90+0xc0>
    3aac:	3c040000 	lui	a0,0x0
    3ab0:	8fa50028 	lw	a1,40(sp)
    3ab4:	24840000 	addiu	a0,a0,0
    3ab8:	0c000000 	jal	0 <func_808C1190>
    3abc:	24a50404 	addiu	a1,a1,1028
    3ac0:	8fa50028 	lw	a1,40(sp)
    3ac4:	8fa4001c 	lw	a0,28(sp)
    3ac8:	0c000000 	jal	0 <func_808C1190>
    3acc:	24a50440 	addiu	a1,a1,1088
    3ad0:	8fbf0014 	lw	ra,20(sp)
    3ad4:	27bd0018 	addiu	sp,sp,24
    3ad8:	03e00008 	jr	ra
    3adc:	00000000 	nop

00003ae0 <BossDodongo_Draw>:
    3ae0:	27bdffa8 	addiu	sp,sp,-88
    3ae4:	afb20030 	sw	s2,48(sp)
    3ae8:	00a09025 	move	s2,a1
    3aec:	afbf0034 	sw	ra,52(sp)
    3af0:	afb1002c 	sw	s1,44(sp)
    3af4:	afb00028 	sw	s0,40(sp)
    3af8:	8ca50000 	lw	a1,0(a1)
    3afc:	00808025 	move	s0,a0
    3b00:	3c060000 	lui	a2,0x0
    3b04:	24c60000 	addiu	a2,a2,0
    3b08:	27a4003c 	addiu	a0,sp,60
    3b0c:	24070f52 	li	a3,3922
    3b10:	0c000000 	jal	0 <func_808C1190>
    3b14:	00a08825 	move	s1,a1
    3b18:	0c000000 	jal	0 <func_808C1190>
    3b1c:	8e440000 	lw	a0,0(s2)
    3b20:	860201c0 	lh	v0,448(s0)
    3b24:	24050001 	li	a1,1
    3b28:	28410002 	slti	at,v0,2
    3b2c:	1420000e 	bnez	at,3b68 <BossDodongo_Draw+0x88>
    3b30:	304e0001 	andi	t6,v0,0x1
    3b34:	11c0000c 	beqz	t6,3b68 <BossDodongo_Draw+0x88>
    3b38:	240600ff 	li	a2,255
    3b3c:	8e2402c0 	lw	a0,704(s1)
    3b40:	240f0384 	li	t7,900
    3b44:	2418044b 	li	t8,1099
    3b48:	afb80018 	sw	t8,24(sp)
    3b4c:	afaf0014 	sw	t7,20(sp)
    3b50:	afa00010 	sw	zero,16(sp)
    3b54:	240500ff 	li	a1,255
    3b58:	0c000000 	jal	0 <func_808C1190>
    3b5c:	240700ff 	li	a3,255
    3b60:	10000073 	b	3d30 <BossDodongo_Draw+0x250>
    3b64:	ae2202c0 	sw	v0,704(s1)
    3b68:	4459f800 	cfc1	t9,$31
    3b6c:	44c5f800 	ctc1	a1,$31
    3b70:	c6040210 	lwc1	$f4,528(s0)
    3b74:	8e2402c0 	lw	a0,704(s1)
    3b78:	3c014f00 	lui	at,0x4f00
    3b7c:	460021a4 	cvt.w.s	$f6,$f4
    3b80:	4445f800 	cfc1	a1,$31
    3b84:	00000000 	nop
    3b88:	30a50078 	andi	a1,a1,0x78
    3b8c:	50a00013 	beqzl	a1,3bdc <BossDodongo_Draw+0xfc>
    3b90:	44053000 	mfc1	a1,$f6
    3b94:	44813000 	mtc1	at,$f6
    3b98:	24050001 	li	a1,1
    3b9c:	46062181 	sub.s	$f6,$f4,$f6
    3ba0:	44c5f800 	ctc1	a1,$31
    3ba4:	00000000 	nop
    3ba8:	460031a4 	cvt.w.s	$f6,$f6
    3bac:	4445f800 	cfc1	a1,$31
    3bb0:	00000000 	nop
    3bb4:	30a50078 	andi	a1,a1,0x78
    3bb8:	14a00005 	bnez	a1,3bd0 <BossDodongo_Draw+0xf0>
    3bbc:	00000000 	nop
    3bc0:	44053000 	mfc1	a1,$f6
    3bc4:	3c018000 	lui	at,0x8000
    3bc8:	10000007 	b	3be8 <BossDodongo_Draw+0x108>
    3bcc:	00a12825 	or	a1,a1,at
    3bd0:	10000005 	b	3be8 <BossDodongo_Draw+0x108>
    3bd4:	2405ffff 	li	a1,-1
    3bd8:	44053000 	mfc1	a1,$f6
    3bdc:	00000000 	nop
    3be0:	04a0fffb 	bltz	a1,3bd0 <BossDodongo_Draw+0xf0>
    3be4:	00000000 	nop
    3be8:	44d9f800 	ctc1	t9,$31
    3bec:	24060001 	li	a2,1
    3bf0:	c6080214 	lwc1	$f8,532(s0)
    3bf4:	3c014f00 	lui	at,0x4f00
    3bf8:	4448f800 	cfc1	t0,$31
    3bfc:	44c6f800 	ctc1	a2,$31
    3c00:	00000000 	nop
    3c04:	460042a4 	cvt.w.s	$f10,$f8
    3c08:	4446f800 	cfc1	a2,$31
    3c0c:	00000000 	nop
    3c10:	30c60078 	andi	a2,a2,0x78
    3c14:	50c00013 	beqzl	a2,3c64 <BossDodongo_Draw+0x184>
    3c18:	44065000 	mfc1	a2,$f10
    3c1c:	44815000 	mtc1	at,$f10
    3c20:	24060001 	li	a2,1
    3c24:	460a4281 	sub.s	$f10,$f8,$f10
    3c28:	44c6f800 	ctc1	a2,$31
    3c2c:	00000000 	nop
    3c30:	460052a4 	cvt.w.s	$f10,$f10
    3c34:	4446f800 	cfc1	a2,$31
    3c38:	00000000 	nop
    3c3c:	30c60078 	andi	a2,a2,0x78
    3c40:	14c00005 	bnez	a2,3c58 <BossDodongo_Draw+0x178>
    3c44:	00000000 	nop
    3c48:	44065000 	mfc1	a2,$f10
    3c4c:	3c018000 	lui	at,0x8000
    3c50:	10000007 	b	3c70 <BossDodongo_Draw+0x190>
    3c54:	00c13025 	or	a2,a2,at
    3c58:	10000005 	b	3c70 <BossDodongo_Draw+0x190>
    3c5c:	2406ffff 	li	a2,-1
    3c60:	44065000 	mfc1	a2,$f10
    3c64:	00000000 	nop
    3c68:	04c0fffb 	bltz	a2,3c58 <BossDodongo_Draw+0x178>
    3c6c:	00000000 	nop
    3c70:	44c8f800 	ctc1	t0,$31
    3c74:	24070001 	li	a3,1
    3c78:	c6100218 	lwc1	$f16,536(s0)
    3c7c:	3c014f00 	lui	at,0x4f00
    3c80:	4449f800 	cfc1	t1,$31
    3c84:	44c7f800 	ctc1	a3,$31
    3c88:	00000000 	nop
    3c8c:	460084a4 	cvt.w.s	$f18,$f16
    3c90:	4447f800 	cfc1	a3,$31
    3c94:	00000000 	nop
    3c98:	30e70078 	andi	a3,a3,0x78
    3c9c:	50e00013 	beqzl	a3,3cec <BossDodongo_Draw+0x20c>
    3ca0:	44079000 	mfc1	a3,$f18
    3ca4:	44819000 	mtc1	at,$f18
    3ca8:	24070001 	li	a3,1
    3cac:	46128481 	sub.s	$f18,$f16,$f18
    3cb0:	44c7f800 	ctc1	a3,$31
    3cb4:	00000000 	nop
    3cb8:	460094a4 	cvt.w.s	$f18,$f18
    3cbc:	4447f800 	cfc1	a3,$31
    3cc0:	00000000 	nop
    3cc4:	30e70078 	andi	a3,a3,0x78
    3cc8:	14e00005 	bnez	a3,3ce0 <BossDodongo_Draw+0x200>
    3ccc:	00000000 	nop
    3cd0:	44079000 	mfc1	a3,$f18
    3cd4:	3c018000 	lui	at,0x8000
    3cd8:	10000007 	b	3cf8 <BossDodongo_Draw+0x218>
    3cdc:	00e13825 	or	a3,a3,at
    3ce0:	10000005 	b	3cf8 <BossDodongo_Draw+0x218>
    3ce4:	2407ffff 	li	a3,-1
    3ce8:	44079000 	mfc1	a3,$f18
    3cec:	00000000 	nop
    3cf0:	04e0fffb 	bltz	a3,3ce0 <BossDodongo_Draw+0x200>
    3cf4:	00000000 	nop
    3cf8:	afa00010 	sw	zero,16(sp)
    3cfc:	c604021c 	lwc1	$f4,540(s0)
    3d00:	44c9f800 	ctc1	t1,$31
    3d04:	00000000 	nop
    3d08:	4600218d 	trunc.w.s	$f6,$f4
    3d0c:	440b3000 	mfc1	t3,$f6
    3d10:	00000000 	nop
    3d14:	afab0014 	sw	t3,20(sp)
    3d18:	c6080220 	lwc1	$f8,544(s0)
    3d1c:	4600428d 	trunc.w.s	$f10,$f8
    3d20:	440d5000 	mfc1	t5,$f10
    3d24:	0c000000 	jal	0 <func_808C1190>
    3d28:	afad0018 	sw	t5,24(sp)
    3d2c:	ae2202c0 	sw	v0,704(s1)
    3d30:	c60c023c 	lwc1	$f12,572(s0)
    3d34:	0c000000 	jal	0 <func_808C1190>
    3d38:	24050001 	li	a1,1
    3d3c:	860e01c4 	lh	t6,452(s0)
    3d40:	3c014700 	lui	at,0x4700
    3d44:	44812000 	mtc1	at,$f4
    3d48:	448e8000 	mtc1	t6,$f16
    3d4c:	3c010000 	lui	at,0x0
    3d50:	c4280000 	lwc1	$f8,0(at)
    3d54:	468084a0 	cvt.s.w	$f18,$f16
    3d58:	24050001 	li	a1,1
    3d5c:	46049183 	div.s	$f6,$f18,$f4
    3d60:	46083302 	mul.s	$f12,$f6,$f8
    3d64:	0c000000 	jal	0 <func_808C1190>
    3d68:	00000000 	nop
    3d6c:	3c0f0000 	lui	t7,0x0
    3d70:	25ef0000 	addiu	t7,t7,0
    3d74:	8e050150 	lw	a1,336(s0)
    3d78:	8e06016c 	lw	a2,364(s0)
    3d7c:	3c070000 	lui	a3,0x0
    3d80:	24e70000 	addiu	a3,a3,0
    3d84:	afb00014 	sw	s0,20(sp)
    3d88:	afaf0010 	sw	t7,16(sp)
    3d8c:	0c000000 	jal	0 <func_808C1190>
    3d90:	02402025 	move	a0,s2
    3d94:	02402025 	move	a0,s2
    3d98:	0c000000 	jal	0 <func_808C1190>
    3d9c:	8e2502c0 	lw	a1,704(s1)
    3da0:	ae2202c0 	sw	v0,704(s1)
    3da4:	3c060000 	lui	a2,0x0
    3da8:	24c60000 	addiu	a2,a2,0
    3dac:	8e450000 	lw	a1,0(s2)
    3db0:	27a4003c 	addiu	a0,sp,60
    3db4:	0c000000 	jal	0 <func_808C1190>
    3db8:	24070f8d 	li	a3,3981
    3dbc:	0c000000 	jal	0 <func_808C1190>
    3dc0:	02402025 	move	a0,s2
    3dc4:	8fbf0034 	lw	ra,52(sp)
    3dc8:	8fb00028 	lw	s0,40(sp)
    3dcc:	8fb1002c 	lw	s1,44(sp)
    3dd0:	8fb20030 	lw	s2,48(sp)
    3dd4:	03e00008 	jr	ra
    3dd8:	27bd0058 	addiu	sp,sp,88

00003ddc <func_808C4F6C>:
    3ddc:	27bdffc8 	addiu	sp,sp,-56
    3de0:	afbf001c 	sw	ra,28(sp)
    3de4:	afb00018 	sw	s0,24(sp)
    3de8:	8ca21c44 	lw	v0,7236(a1)
    3dec:	c4860024 	lwc1	$f6,36(a0)
    3df0:	00808025 	move	s0,a0
    3df4:	c4440024 	lwc1	$f4,36(v0)
    3df8:	46062201 	sub.s	$f8,$f4,$f6
    3dfc:	e7a80034 	swc1	$f8,52(sp)
    3e00:	c490002c 	lwc1	$f16,44(a0)
    3e04:	c44a002c 	lwc1	$f10,44(v0)
    3e08:	46105481 	sub.s	$f18,$f10,$f16
    3e0c:	e7b20030 	swc1	$f18,48(sp)
    3e10:	84840032 	lh	a0,50(a0)
    3e14:	00042023 	negu	a0,a0
    3e18:	00042400 	sll	a0,a0,0x10
    3e1c:	0c000000 	jal	0 <func_808C1190>
    3e20:	00042403 	sra	a0,a0,0x10
    3e24:	e7a00020 	swc1	$f0,32(sp)
    3e28:	86040032 	lh	a0,50(s0)
    3e2c:	00042023 	negu	a0,a0
    3e30:	00042400 	sll	a0,a0,0x10
    3e34:	0c000000 	jal	0 <func_808C1190>
    3e38:	00042403 	sra	a0,a0,0x10
    3e3c:	c7a40020 	lwc1	$f4,32(sp)
    3e40:	c7a60034 	lwc1	$f6,52(sp)
    3e44:	c7aa0030 	lwc1	$f10,48(sp)
    3e48:	46062202 	mul.s	$f8,$f4,$f6
    3e4c:	00000000 	nop
    3e50:	460a0402 	mul.s	$f16,$f0,$f10
    3e54:	46088480 	add.s	$f18,$f16,$f8
    3e58:	e7b2002c 	swc1	$f18,44(sp)
    3e5c:	86040032 	lh	a0,50(s0)
    3e60:	00042023 	negu	a0,a0
    3e64:	00042400 	sll	a0,a0,0x10
    3e68:	0c000000 	jal	0 <func_808C1190>
    3e6c:	00042403 	sra	a0,a0,0x10
    3e70:	e7a00020 	swc1	$f0,32(sp)
    3e74:	86040032 	lh	a0,50(s0)
    3e78:	00042023 	negu	a0,a0
    3e7c:	00042400 	sll	a0,a0,0x10
    3e80:	0c000000 	jal	0 <func_808C1190>
    3e84:	00042403 	sra	a0,a0,0x10
    3e88:	c7a40020 	lwc1	$f4,32(sp)
    3e8c:	c7aa0034 	lwc1	$f10,52(sp)
    3e90:	c7a80030 	lwc1	$f8,48(sp)
    3e94:	46002187 	neg.s	$f6,$f4
    3e98:	3c014316 	lui	at,0x4316
    3e9c:	460a3402 	mul.s	$f16,$f6,$f10
    3ea0:	44812000 	mtc1	at,$f4
    3ea4:	3c0142c8 	lui	at,0x42c8
    3ea8:	46080482 	mul.s	$f18,$f0,$f8
    3eac:	c7a0002c 	lwc1	$f0,44(sp)
    3eb0:	8fbf001c 	lw	ra,28(sp)
    3eb4:	46000005 	abs.s	$f0,$f0
    3eb8:	4604003c 	c.lt.s	$f0,$f4
    3ebc:	46109080 	add.s	$f2,$f18,$f16
    3ec0:	45020010 	bc1fl	3f04 <func_808C4F6C+0x128>
    3ec4:	3c01bf80 	lui	at,0xbf80
    3ec8:	44813000 	mtc1	at,$f6
    3ecc:	3c0144fa 	lui	at,0x44fa
    3ed0:	4602303e 	c.le.s	$f6,$f2
    3ed4:	00000000 	nop
    3ed8:	4502000a 	bc1fl	3f04 <func_808C4F6C+0x128>
    3edc:	3c01bf80 	lui	at,0xbf80
    3ee0:	44815000 	mtc1	at,$f10
    3ee4:	00000000 	nop
    3ee8:	460a103e 	c.le.s	$f2,$f10
    3eec:	00000000 	nop
    3ef0:	45020004 	bc1fl	3f04 <func_808C4F6C+0x128>
    3ef4:	3c01bf80 	lui	at,0xbf80
    3ef8:	10000004 	b	3f0c <func_808C4F6C+0x130>
    3efc:	46001006 	mov.s	$f0,$f2
    3f00:	3c01bf80 	lui	at,0xbf80
    3f04:	44810000 	mtc1	at,$f0
    3f08:	00000000 	nop
    3f0c:	8fb00018 	lw	s0,24(sp)
    3f10:	03e00008 	jr	ra
    3f14:	27bd0038 	addiu	sp,sp,56

00003f18 <func_808C50A8>:
    3f18:	27bdffc8 	addiu	sp,sp,-56
    3f1c:	afbf001c 	sw	ra,28(sp)
    3f20:	afb00018 	sw	s0,24(sp)
    3f24:	8ca21c44 	lw	v0,7236(a1)
    3f28:	c4860024 	lwc1	$f6,36(a0)
    3f2c:	00808025 	move	s0,a0
    3f30:	c4440024 	lwc1	$f4,36(v0)
    3f34:	240f8000 	li	t7,-32768
    3f38:	46062201 	sub.s	$f8,$f4,$f6
    3f3c:	e7a80034 	swc1	$f8,52(sp)
    3f40:	c490002c 	lwc1	$f16,44(a0)
    3f44:	c44a002c 	lwc1	$f10,44(v0)
    3f48:	46105481 	sub.s	$f18,$f10,$f16
    3f4c:	e7b20030 	swc1	$f18,48(sp)
    3f50:	848e0032 	lh	t6,50(a0)
    3f54:	01ee2023 	subu	a0,t7,t6
    3f58:	00042400 	sll	a0,a0,0x10
    3f5c:	0c000000 	jal	0 <func_808C1190>
    3f60:	00042403 	sra	a0,a0,0x10
    3f64:	e7a00020 	swc1	$f0,32(sp)
    3f68:	86180032 	lh	t8,50(s0)
    3f6c:	24198000 	li	t9,-32768
    3f70:	03382023 	subu	a0,t9,t8
    3f74:	00042400 	sll	a0,a0,0x10
    3f78:	0c000000 	jal	0 <func_808C1190>
    3f7c:	00042403 	sra	a0,a0,0x10
    3f80:	c7a40020 	lwc1	$f4,32(sp)
    3f84:	c7a60034 	lwc1	$f6,52(sp)
    3f88:	c7aa0030 	lwc1	$f10,48(sp)
    3f8c:	24098000 	li	t1,-32768
    3f90:	46062202 	mul.s	$f8,$f4,$f6
    3f94:	00000000 	nop
    3f98:	460a0402 	mul.s	$f16,$f0,$f10
    3f9c:	46088480 	add.s	$f18,$f16,$f8
    3fa0:	e7b2002c 	swc1	$f18,44(sp)
    3fa4:	86080032 	lh	t0,50(s0)
    3fa8:	01282023 	subu	a0,t1,t0
    3fac:	00042400 	sll	a0,a0,0x10
    3fb0:	0c000000 	jal	0 <func_808C1190>
    3fb4:	00042403 	sra	a0,a0,0x10
    3fb8:	e7a00020 	swc1	$f0,32(sp)
    3fbc:	860a0032 	lh	t2,50(s0)
    3fc0:	240b8000 	li	t3,-32768
    3fc4:	016a2023 	subu	a0,t3,t2
    3fc8:	00042400 	sll	a0,a0,0x10
    3fcc:	0c000000 	jal	0 <func_808C1190>
    3fd0:	00042403 	sra	a0,a0,0x10
    3fd4:	c7a40020 	lwc1	$f4,32(sp)
    3fd8:	c7aa0034 	lwc1	$f10,52(sp)
    3fdc:	c7a80030 	lwc1	$f8,48(sp)
    3fe0:	46002187 	neg.s	$f6,$f4
    3fe4:	3c014316 	lui	at,0x4316
    3fe8:	460a3402 	mul.s	$f16,$f6,$f10
    3fec:	44812000 	mtc1	at,$f4
    3ff0:	3c0142c8 	lui	at,0x42c8
    3ff4:	46080482 	mul.s	$f18,$f0,$f8
    3ff8:	c7a0002c 	lwc1	$f0,44(sp)
    3ffc:	8fbf001c 	lw	ra,28(sp)
    4000:	46000005 	abs.s	$f0,$f0
    4004:	4604003c 	c.lt.s	$f0,$f4
    4008:	46109080 	add.s	$f2,$f18,$f16
    400c:	45020010 	bc1fl	4050 <func_808C50A8+0x138>
    4010:	3c01bf80 	lui	at,0xbf80
    4014:	44813000 	mtc1	at,$f6
    4018:	3c0144fa 	lui	at,0x44fa
    401c:	4602303e 	c.le.s	$f6,$f2
    4020:	00000000 	nop
    4024:	4502000a 	bc1fl	4050 <func_808C50A8+0x138>
    4028:	3c01bf80 	lui	at,0xbf80
    402c:	44815000 	mtc1	at,$f10
    4030:	00000000 	nop
    4034:	460a103e 	c.le.s	$f2,$f10
    4038:	00000000 	nop
    403c:	45020004 	bc1fl	4050 <func_808C50A8+0x138>
    4040:	3c01bf80 	lui	at,0xbf80
    4044:	10000004 	b	4058 <func_808C50A8+0x140>
    4048:	46001006 	mov.s	$f0,$f2
    404c:	3c01bf80 	lui	at,0xbf80
    4050:	44810000 	mtc1	at,$f0
    4054:	00000000 	nop
    4058:	8fb00018 	lw	s0,24(sp)
    405c:	03e00008 	jr	ra
    4060:	27bd0038 	addiu	sp,sp,56

00004064 <func_808C51F4>:
    4064:	27bdffe8 	addiu	sp,sp,-24
    4068:	afbf0014 	sw	ra,20(sp)
    406c:	8ca51c44 	lw	a1,7236(a1)
    4070:	0c000000 	jal	0 <func_808C1190>
    4074:	afa40018 	sw	a0,24(sp)
    4078:	8fa40018 	lw	a0,24(sp)
    407c:	848e0032 	lh	t6,50(a0)
    4080:	004e1823 	subu	v1,v0,t6
    4084:	00031c00 	sll	v1,v1,0x10
    4088:	00031c03 	sra	v1,v1,0x10
    408c:	286138e3 	slti	at,v1,14563
    4090:	10200005 	beqz	at,40a8 <func_808C51F4+0x44>
    4094:	2861c71e 	slti	at,v1,-14562
    4098:	14200003 	bnez	at,40a8 <func_808C51F4+0x44>
    409c:	240f0001 	li	t7,1
    40a0:	10000002 	b	40ac <func_808C51F4+0x48>
    40a4:	a48f01b8 	sh	t7,440(a0)
    40a8:	a48001b8 	sh	zero,440(a0)
    40ac:	8fbf0014 	lw	ra,20(sp)
    40b0:	27bd0018 	addiu	sp,sp,24
    40b4:	03e00008 	jr	ra
    40b8:	00000000 	nop

000040bc <func_808C524C>:
    40bc:	afa50004 	sw	a1,4(sp)
    40c0:	3c014348 	lui	at,0x4348
    40c4:	3c050000 	lui	a1,0x0
    40c8:	44816000 	mtc1	at,$f12
    40cc:	a48001ba 	sh	zero,442(a0)
    40d0:	24a50000 	addiu	a1,a1,0
    40d4:	c4820024 	lwc1	$f2,36(a0)
    40d8:	00001025 	move	v0,zero
    40dc:	2406000c 	li	a2,12
    40e0:	00460019 	multu	v0,a2
    40e4:	24420001 	addiu	v0,v0,1
    40e8:	00021400 	sll	v0,v0,0x10
    40ec:	00021403 	sra	v0,v0,0x10
    40f0:	28410004 	slti	at,v0,4
    40f4:	00007012 	mflo	t6
    40f8:	00ae1821 	addu	v1,a1,t6
    40fc:	c4640000 	lwc1	$f4,0(v1)
    4100:	46041001 	sub.s	$f0,$f2,$f4
    4104:	46000005 	abs.s	$f0,$f0
    4108:	460c003c 	c.lt.s	$f0,$f12
    410c:	00000000 	nop
    4110:	4500000b 	bc1f	4140 <func_808C524C+0x84>
    4114:	00000000 	nop
    4118:	c486002c 	lwc1	$f6,44(a0)
    411c:	c4680008 	lwc1	$f8,8(v1)
    4120:	46083001 	sub.s	$f0,$f6,$f8
    4124:	46000005 	abs.s	$f0,$f0
    4128:	460c003c 	c.lt.s	$f0,$f12
    412c:	00000000 	nop
    4130:	45000003 	bc1f	4140 <func_808C524C+0x84>
    4134:	240f0001 	li	t7,1
    4138:	03e00008 	jr	ra
    413c:	a48f01ba 	sh	t7,442(a0)
    4140:	1420ffe7 	bnez	at,40e0 <func_808C524C+0x24>
    4144:	00000000 	nop
    4148:	03e00008 	jr	ra
    414c:	00000000 	nop

00004150 <func_808C52E0>:
    4150:	27bdffc8 	addiu	sp,sp,-56
    4154:	afa5003c 	sw	a1,60(sp)
    4158:	00802825 	move	a1,a0
    415c:	afbf0034 	sw	ra,52(sp)
    4160:	afa40038 	sw	a0,56(sp)
    4164:	afa60040 	sw	a2,64(sp)
    4168:	c4a403ec 	lwc1	$f4,1004(a1)
    416c:	3c0141a0 	lui	at,0x41a0
    4170:	44814000 	mtc1	at,$f8
    4174:	e7a40010 	swc1	$f4,16(sp)
    4178:	c4a603f0 	lwc1	$f6,1008(a1)
    417c:	8fa6003c 	lw	a2,60(sp)
    4180:	87af0042 	lh	t7,66(sp)
    4184:	46083281 	sub.s	$f10,$f6,$f8
    4188:	24070030 	li	a3,48
    418c:	24c41c24 	addiu	a0,a2,7204
    4190:	e7aa0014 	swc1	$f10,20(sp)
    4194:	c4b003f4 	lwc1	$f16,1012(a1)
    4198:	afa0001c 	sw	zero,28(sp)
    419c:	e7b00018 	swc1	$f16,24(sp)
    41a0:	84ae00b6 	lh	t6,182(a1)
    41a4:	afa00024 	sw	zero,36(sp)
    41a8:	afaf0028 	sw	t7,40(sp)
    41ac:	0c000000 	jal	0 <func_808C1190>
    41b0:	afae0020 	sw	t6,32(sp)
    41b4:	8fbf0034 	lw	ra,52(sp)
    41b8:	27bd0038 	addiu	sp,sp,56
    41bc:	03e00008 	jr	ra
    41c0:	00000000 	nop

000041c4 <func_808C5354>:
    41c4:	27bdffd0 	addiu	sp,sp,-48
    41c8:	afbf001c 	sw	ra,28(sp)
    41cc:	afb00018 	sw	s0,24(sp)
    41d0:	afa50034 	sw	a1,52(sp)
    41d4:	848e0194 	lh	t6,404(a0)
    41d8:	00808025 	move	s0,a0
    41dc:	5dc0000e 	bgtzl	t6,4218 <func_808C5354+0x54>
    41e0:	861901c0 	lh	t9,448(s0)
    41e4:	8c980190 	lw	t8,400(a0)
    41e8:	3c0f0000 	lui	t7,0x0
    41ec:	25ef0000 	addiu	t7,t7,0
    41f0:	51f80009 	beql	t7,t8,4218 <func_808C5354+0x54>
    41f4:	861901c0 	lh	t9,448(s0)
    41f8:	0c000000 	jal	0 <func_808C1190>
    41fc:	00000000 	nop
    4200:	8fa40034 	lw	a0,52(sp)
    4204:	0c000000 	jal	0 <func_808C1190>
    4208:	02002825 	move	a1,s0
    420c:	10000044 	b	4320 <func_808C5354+0x15c>
    4210:	8fbf001c 	lw	ra,28(sp)
    4214:	861901c0 	lh	t9,448(s0)
    4218:	57200041 	bnezl	t9,4320 <func_808C5354+0x15c>
    421c:	8fbf001c 	lw	ra,28(sp)
    4220:	8e090190 	lw	t1,400(s0)
    4224:	3c080000 	lui	t0,0x0
    4228:	25080000 	addiu	t0,t0,0
    422c:	1509001c 	bne	t0,t1,42a0 <func_808C5354+0xdc>
    4230:	00001025 	move	v0,zero
    4234:	8e07045c 	lw	a3,1116(s0)
    4238:	00025180 	sll	t2,v0,0x6
    423c:	00ea1821 	addu	v1,a3,t2
    4240:	90660016 	lbu	a2,22(v1)
    4244:	24420001 	addiu	v0,v0,1
    4248:	00021400 	sll	v0,v0,0x10
    424c:	30cb0002 	andi	t3,a2,0x2
    4250:	11600010 	beqz	t3,4294 <func_808C5354+0xd0>
    4254:	00021403 	sra	v0,v0,0x10
    4258:	8c650024 	lw	a1,36(v1)
    425c:	8ca40000 	lw	a0,0(a1)
    4260:	308c0010 	andi	t4,a0,0x10
    4264:	15800002 	bnez	t4,4270 <func_808C5354+0xac>
    4268:	308d0004 	andi	t5,a0,0x4
    426c:	11a00009 	beqz	t5,4294 <func_808C5354+0xd0>
    4270:	30cefffd 	andi	t6,a2,0xfffd
    4274:	a06e0016 	sb	t6,22(v1)
    4278:	240f0002 	li	t7,2
    427c:	a60f01c0 	sh	t7,448(s0)
    4280:	0c000000 	jal	0 <func_808C1190>
    4284:	02002025 	move	a0,s0
    4288:	24180032 	li	t8,50
    428c:	10000023 	b	431c <func_808C5354+0x158>
    4290:	a61801da 	sh	t8,474(s0)
    4294:	28410013 	slti	at,v0,19
    4298:	5420ffe8 	bnezl	at,423c <func_808C5354+0x78>
    429c:	00025180 	sll	t2,v0,0x6
    42a0:	8e07045c 	lw	a3,1116(s0)
    42a4:	3c0a0000 	lui	t2,0x0
    42a8:	90e30016 	lbu	v1,22(a3)
    42ac:	30790002 	andi	t9,v1,0x2
    42b0:	1320001a 	beqz	t9,431c <func_808C5354+0x158>
    42b4:	3068fffd 	andi	t0,v1,0xfffd
    42b8:	a0e80016 	sb	t0,22(a3)
    42bc:	8e020190 	lw	v0,400(s0)
    42c0:	8e09045c 	lw	t1,1116(s0)
    42c4:	254a0000 	addiu	t2,t2,0
    42c8:	11420005 	beq	t2,v0,42e0 <func_808C5354+0x11c>
    42cc:	8d250024 	lw	a1,36(t1)
    42d0:	3c0b0000 	lui	t3,0x0
    42d4:	256b0000 	addiu	t3,t3,0
    42d8:	55620011 	bnel	t3,v0,4320 <func_808C5354+0x15c>
    42dc:	8fbf001c 	lw	ra,28(sp)
    42e0:	0c000000 	jal	0 <func_808C1190>
    42e4:	8ca40000 	lw	a0,0(a1)
    42e8:	1040000c 	beqz	v0,431c <func_808C5354+0x158>
    42ec:	a3a20027 	sb	v0,39(sp)
    42f0:	02002025 	move	a0,s0
    42f4:	0c000000 	jal	0 <func_808C1190>
    42f8:	24053806 	li	a1,14342
    42fc:	0c000000 	jal	0 <func_808C1190>
    4300:	02002025 	move	a0,s0
    4304:	240c0005 	li	t4,5
    4308:	a60c01c0 	sh	t4,448(s0)
    430c:	93ae0027 	lbu	t6,39(sp)
    4310:	860d0194 	lh	t5,404(s0)
    4314:	01ae7823 	subu	t7,t5,t6
    4318:	a60f0194 	sh	t7,404(s0)
    431c:	8fbf001c 	lw	ra,28(sp)
    4320:	8fb00018 	lw	s0,24(sp)
    4324:	27bd0030 	addiu	sp,sp,48
    4328:	03e00008 	jr	ra
    432c:	00000000 	nop

00004330 <func_808C54C0>:
    4330:	44800000 	mtc1	zero,$f0
    4334:	27bdffd0 	addiu	sp,sp,-48
    4338:	afb00028 	sw	s0,40(sp)
    433c:	afbf002c 	sw	ra,44(sp)
    4340:	00808025 	move	s0,a0
    4344:	e4800068 	swc1	$f0,104(a0)
    4348:	e48001e4 	swc1	$f0,484(a0)
    434c:	3c040600 	lui	a0,0x600
    4350:	0c000000 	jal	0 <func_808C1190>
    4354:	24842d0c 	addiu	a0,a0,11532
    4358:	44822000 	mtc1	v0,$f4
    435c:	3c01c0a0 	lui	at,0xc0a0
    4360:	44814000 	mtc1	at,$f8
    4364:	468021a0 	cvt.s.w	$f6,$f4
    4368:	3c050600 	lui	a1,0x600
    436c:	240e0002 	li	t6,2
    4370:	afae0014 	sw	t6,20(sp)
    4374:	24a52d0c 	addiu	a1,a1,11532
    4378:	2604014c 	addiu	a0,s0,332
    437c:	e7a60010 	swc1	$f6,16(sp)
    4380:	3c063f80 	lui	a2,0x3f80
    4384:	24070000 	li	a3,0
    4388:	0c000000 	jal	0 <func_808C1190>
    438c:	e7a80018 	swc1	$f8,24(sp)
    4390:	3c0f0000 	lui	t7,0x0
    4394:	25ef0000 	addiu	t7,t7,0
    4398:	ae0f0190 	sw	t7,400(s0)
    439c:	02002025 	move	a0,s0
    43a0:	0c000000 	jal	0 <func_808C1190>
    43a4:	24053807 	li	a1,14343
    43a8:	8e180004 	lw	t8,4(s0)
    43ac:	2401fffa 	li	at,-6
    43b0:	24080001 	li	t0,1
    43b4:	3c041001 	lui	a0,0x1001
    43b8:	0301c824 	and	t9,t8,at
    43bc:	a60001da 	sh	zero,474(s0)
    43c0:	a600019c 	sh	zero,412(s0)
    43c4:	ae190004 	sw	t9,4(s0)
    43c8:	a60801bc 	sh	t0,444(s0)
    43cc:	0c000000 	jal	0 <func_808C1190>
    43d0:	348400ff 	ori	a0,a0,0xff
    43d4:	8fbf002c 	lw	ra,44(sp)
    43d8:	8fb00028 	lw	s0,40(sp)
    43dc:	27bd0030 	addiu	sp,sp,48
    43e0:	03e00008 	jr	ra
    43e4:	00000000 	nop

000043e8 <func_808C5578>:
    43e8:	27bdfe60 	addiu	sp,sp,-416
    43ec:	afb00038 	sw	s0,56(sp)
    43f0:	afbf003c 	sw	ra,60(sp)
    43f4:	afa501a4 	sw	a1,420(sp)
    43f8:	8caf1c44 	lw	t7,7236(a1)
    43fc:	00808025 	move	s0,a0
    4400:	2484014c 	addiu	a0,a0,332
    4404:	afa4004c 	sw	a0,76(sp)
    4408:	0c000000 	jal	0 <func_808C1190>
    440c:	afaf0160 	sw	t7,352(sp)
    4410:	8603019c 	lh	v1,412(s0)
    4414:	2861000a 	slti	at,v1,10
    4418:	14200006 	bnez	at,4434 <func_808C5578+0x4c>
    441c:	0003c080 	sll	t8,v1,0x2
    4420:	24010064 	li	at,100
    4424:	5061057b 	beql	v1,at,5a14 <L808C5FE4+0xbc0>
    4428:	860801da 	lh	t0,474(s0)
    442c:	100005b2 	b	5af8 <L808C6C84+0x4>
    4430:	860501b4 	lh	a1,436(s0)
    4434:	2c61000a 	sltiu	at,v1,10
    4438:	102005ae 	beqz	at,5af4 <L808C6C84>
    443c:	3c010000 	lui	at,0x0
    4440:	00380821 	addu	at,at,t8
    4444:	8c380000 	lw	t8,0(at)
    4448:	03000008 	jr	t8
    444c:	00000000 	nop

00004450 <L808C55E0>:
    4450:	8fa401a4 	lw	a0,420(sp)
    4454:	24190005 	li	t9,5
    4458:	a619019c 	sh	t9,412(s0)
    445c:	0c000000 	jal	0 <func_808C1190>
    4460:	24851d64 	addiu	a1,a0,7524
    4464:	8fa401a4 	lw	a0,420(sp)
    4468:	02002825 	move	a1,s0
    446c:	0c000000 	jal	0 <func_808C1190>
    4470:	24060001 	li	a2,1
    4474:	0c000000 	jal	0 <func_808C1190>
    4478:	8fa401a4 	lw	a0,420(sp)
    447c:	a60201b4 	sh	v0,436(s0)
    4480:	8fa401a4 	lw	a0,420(sp)
    4484:	00002825 	move	a1,zero
    4488:	0c000000 	jal	0 <func_808C1190>
    448c:	24060003 	li	a2,3
    4490:	8fa401a4 	lw	a0,420(sp)
    4494:	860501b4 	lh	a1,436(s0)
    4498:	0c000000 	jal	0 <func_808C1190>
    449c:	24060007 	li	a2,7
    44a0:	8fa401a4 	lw	a0,420(sp)
    44a4:	0c000000 	jal	0 <func_808C1190>
    44a8:	00002825 	move	a1,zero
    44ac:	c444005c 	lwc1	$f4,92(v0)
    44b0:	e6040428 	swc1	$f4,1064(s0)
    44b4:	c4460060 	lwc1	$f6,96(v0)
    44b8:	e606042c 	swc1	$f6,1068(s0)
    44bc:	c4480064 	lwc1	$f8,100(v0)
    44c0:	e6080430 	swc1	$f8,1072(s0)
    44c4:	c44a0050 	lwc1	$f10,80(v0)
    44c8:	e60a0434 	swc1	$f10,1076(s0)
    44cc:	c4520054 	lwc1	$f18,84(v0)
    44d0:	e6120438 	swc1	$f18,1080(s0)
    44d4:	c4440058 	lwc1	$f4,88(v0)
    44d8:	10000586 	b	5af4 <L808C6C84>
    44dc:	e604043c 	swc1	$f4,1084(s0)

000044e0 <L808C5670>:
    44e0:	860400b6 	lh	a0,182(s0)
    44e4:	2484ec78 	addiu	a0,a0,-5000
    44e8:	00042400 	sll	a0,a0,0x10
    44ec:	0c000000 	jal	0 <func_808C1190>
    44f0:	00042403 	sra	a0,a0,0x10
    44f4:	3c014316 	lui	at,0x4316
    44f8:	44813000 	mtc1	at,$f6
    44fc:	860400b6 	lh	a0,182(s0)
    4500:	46060302 	mul.s	$f12,$f0,$f6
    4504:	2484ec78 	addiu	a0,a0,-5000
    4508:	00042400 	sll	a0,a0,0x10
    450c:	00042403 	sra	a0,a0,0x10
    4510:	0c000000 	jal	0 <func_808C1190>
    4514:	e7ac0180 	swc1	$f12,384(sp)
    4518:	3c014316 	lui	at,0x4316
    451c:	44814000 	mtc1	at,$f8
    4520:	c7ac0180 	lwc1	$f12,384(sp)
    4524:	c60a0024 	lwc1	$f10,36(s0)
    4528:	46080382 	mul.s	$f14,$f0,$f8
    452c:	8fa40160 	lw	a0,352(sp)
    4530:	460c5480 	add.s	$f18,$f10,$f12
    4534:	44802000 	mtc1	zero,$f4
    4538:	3c063f00 	lui	a2,0x3f00
    453c:	3c0740a0 	lui	a3,0x40a0
    4540:	44059000 	mfc1	a1,$f18
    4544:	e7ae017c 	swc1	$f14,380(sp)
    4548:	24840024 	addiu	a0,a0,36
    454c:	0c000000 	jal	0 <func_808C1190>
    4550:	e7a40010 	swc1	$f4,16(sp)
    4554:	c7ae017c 	lwc1	$f14,380(sp)
    4558:	c606002c 	lwc1	$f6,44(s0)
    455c:	8fa40160 	lw	a0,352(sp)
    4560:	44805000 	mtc1	zero,$f10
    4564:	460e3200 	add.s	$f8,$f6,$f14
    4568:	3c063f00 	lui	a2,0x3f00
    456c:	3c0740a0 	lui	a3,0x40a0
    4570:	2484002c 	addiu	a0,a0,44
    4574:	44054000 	mfc1	a1,$f8
    4578:	0c000000 	jal	0 <func_808C1190>
    457c:	e7aa0010 	swc1	$f10,16(sp)
    4580:	44809000 	mtc1	zero,$f18
    4584:	3c053d8f 	lui	a1,0x3d8f
    4588:	3c073ba3 	lui	a3,0x3ba3
    458c:	34e7d70a 	ori	a3,a3,0xd70a
    4590:	34a55c29 	ori	a1,a1,0x5c29
    4594:	26040208 	addiu	a0,s0,520
    4598:	3c063f80 	lui	a2,0x3f80
    459c:	0c000000 	jal	0 <func_808C1190>
    45a0:	e7b20010 	swc1	$f18,16(sp)
    45a4:	0c000000 	jal	0 <func_808C1190>
    45a8:	86040032 	lh	a0,50(s0)
    45ac:	3c014366 	lui	at,0x4366
    45b0:	44812000 	mtc1	at,$f4
    45b4:	86040032 	lh	a0,50(s0)
    45b8:	46040302 	mul.s	$f12,$f0,$f4
    45bc:	0c000000 	jal	0 <func_808C1190>
    45c0:	e7ac0180 	swc1	$f12,384(sp)
    45c4:	3c014366 	lui	at,0x4366
    45c8:	44813000 	mtc1	at,$f6
    45cc:	c7ac0180 	lwc1	$f12,384(sp)
    45d0:	c6080024 	lwc1	$f8,36(s0)
    45d4:	46060382 	mul.s	$f14,$f0,$f6
    45d8:	3c010000 	lui	at,0x0
    45dc:	460c4280 	add.s	$f10,$f8,$f12
    45e0:	c4320000 	lwc1	$f18,0(at)
    45e4:	3c063e4c 	lui	a2,0x3e4c
    45e8:	34c6cccd 	ori	a2,a2,0xcccd
    45ec:	44055000 	mfc1	a1,$f10
    45f0:	e7ae017c 	swc1	$f14,380(sp)
    45f4:	26040428 	addiu	a0,s0,1064
    45f8:	3c074248 	lui	a3,0x4248
    45fc:	0c000000 	jal	0 <func_808C1190>
    4600:	e7b20010 	swc1	$f18,16(sp)
    4604:	3c0141a0 	lui	at,0x41a0
    4608:	44813000 	mtc1	at,$f6
    460c:	c6040028 	lwc1	$f4,40(s0)
    4610:	3c010000 	lui	at,0x0
    4614:	c42a0000 	lwc1	$f10,0(at)
    4618:	46062200 	add.s	$f8,$f4,$f6
    461c:	3c063e4c 	lui	a2,0x3e4c
    4620:	34c6cccd 	ori	a2,a2,0xcccd
    4624:	2604042c 	addiu	a0,s0,1068
    4628:	44054000 	mfc1	a1,$f8
    462c:	3c074248 	lui	a3,0x4248
    4630:	0c000000 	jal	0 <func_808C1190>
    4634:	e7aa0010 	swc1	$f10,16(sp)
    4638:	c7ae017c 	lwc1	$f14,380(sp)
    463c:	c612002c 	lwc1	$f18,44(s0)
    4640:	3c010000 	lui	at,0x0
    4644:	c4260000 	lwc1	$f6,0(at)
    4648:	460e9100 	add.s	$f4,$f18,$f14
    464c:	3c063e4c 	lui	a2,0x3e4c
    4650:	34c6cccd 	ori	a2,a2,0xcccd
    4654:	26040430 	addiu	a0,s0,1072
    4658:	44052000 	mfc1	a1,$f4
    465c:	3c074248 	lui	a3,0x4248
    4660:	0c000000 	jal	0 <func_808C1190>
    4664:	e7a60010 	swc1	$f6,16(sp)
    4668:	3c010000 	lui	at,0x0
    466c:	c4280000 	lwc1	$f8,0(at)
    4670:	8e050024 	lw	a1,36(s0)
    4674:	3c063e4c 	lui	a2,0x3e4c
    4678:	34c6cccd 	ori	a2,a2,0xcccd
    467c:	26040434 	addiu	a0,s0,1076
    4680:	3c0741f0 	lui	a3,0x41f0
    4684:	0c000000 	jal	0 <func_808C1190>
    4688:	e7a80010 	swc1	$f8,16(sp)
    468c:	3c01428c 	lui	at,0x428c
    4690:	44819000 	mtc1	at,$f18
    4694:	c60a003c 	lwc1	$f10,60(s0)
    4698:	3c010000 	lui	at,0x0
    469c:	c4260000 	lwc1	$f6,0(at)
    46a0:	46125101 	sub.s	$f4,$f10,$f18
    46a4:	3c063e4c 	lui	a2,0x3e4c
    46a8:	34c6cccd 	ori	a2,a2,0xcccd
    46ac:	26040438 	addiu	a0,s0,1080
    46b0:	44052000 	mfc1	a1,$f4
    46b4:	3c0741f0 	lui	a3,0x41f0
    46b8:	0c000000 	jal	0 <func_808C1190>
    46bc:	e7a60010 	swc1	$f6,16(sp)
    46c0:	3c010000 	lui	at,0x0
    46c4:	c4280000 	lwc1	$f8,0(at)
    46c8:	8e05002c 	lw	a1,44(s0)
    46cc:	3c063e4c 	lui	a2,0x3e4c
    46d0:	34c6cccd 	ori	a2,a2,0xcccd
    46d4:	2604043c 	addiu	a0,s0,1084
    46d8:	3c0741f0 	lui	a3,0x41f0
    46dc:	0c000000 	jal	0 <func_808C1190>
    46e0:	e7a80010 	swc1	$f8,16(sp)
    46e4:	3c040600 	lui	a0,0x600
    46e8:	0c000000 	jal	0 <func_808C1190>
    46ec:	24842d0c 	addiu	a0,a0,11532
    46f0:	44825000 	mtc1	v0,$f10
    46f4:	8fa4004c 	lw	a0,76(sp)
    46f8:	468052a0 	cvt.s.w	$f10,$f10
    46fc:	44055000 	mfc1	a1,$f10
    4700:	0c000000 	jal	0 <func_808C1190>
    4704:	00000000 	nop
    4708:	104004fa 	beqz	v0,5af4 <L808C6C84>
    470c:	3c040600 	lui	a0,0x600
    4710:	0c000000 	jal	0 <func_808C1190>
    4714:	24843cf8 	addiu	a0,a0,15608
    4718:	44829000 	mtc1	v0,$f18
    471c:	3c01bf80 	lui	at,0xbf80
    4720:	44813000 	mtc1	at,$f6
    4724:	46809120 	cvt.s.w	$f4,$f18
    4728:	3c050600 	lui	a1,0x600
    472c:	24080002 	li	t0,2
    4730:	afa80014 	sw	t0,20(sp)
    4734:	24a53cf8 	addiu	a1,a1,15608
    4738:	8fa4004c 	lw	a0,76(sp)
    473c:	e7a40010 	swc1	$f4,16(sp)
    4740:	3c063f80 	lui	a2,0x3f80
    4744:	24070000 	li	a3,0
    4748:	0c000000 	jal	0 <func_808C1190>
    474c:	e7a60018 	swc1	$f6,24(sp)
    4750:	24090006 	li	t1,6
    4754:	a609019c 	sh	t1,412(s0)
    4758:	3c010000 	lui	at,0x0
    475c:	c4280000 	lwc1	$f8,0(at)
    4760:	3c010000 	lui	at,0x0
    4764:	c42a0000 	lwc1	$f10,0(at)
    4768:	8fa501a4 	lw	a1,420(sp)
    476c:	3c07c45e 	lui	a3,0xc45e
    4770:	240b6000 	li	t3,24576
    4774:	afab0024 	sw	t3,36(sp)
    4778:	34e78000 	ori	a3,a3,0x8000
    477c:	afa00020 	sw	zero,32(sp)
    4780:	afa0001c 	sw	zero,28(sp)
    4784:	afa00018 	sw	zero,24(sp)
    4788:	24060059 	li	a2,89
    478c:	e7a80010 	swc1	$f8,16(sp)
    4790:	e7aa0014 	swc1	$f10,20(sp)
    4794:	0c000000 	jal	0 <func_808C1190>
    4798:	24a41c24 	addiu	a0,a1,7204
    479c:	100004d6 	b	5af8 <L808C6C84+0x4>
    47a0:	860501b4 	lh	a1,436(s0)

000047a4 <L808C5934>:
    47a4:	3c010000 	lui	at,0x0
    47a8:	c4320000 	lwc1	$f18,0(at)
    47ac:	8e050024 	lw	a1,36(s0)
    47b0:	3c063e4c 	lui	a2,0x3e4c
    47b4:	34c6cccd 	ori	a2,a2,0xcccd
    47b8:	26040434 	addiu	a0,s0,1076
    47bc:	3c0741f0 	lui	a3,0x41f0
    47c0:	0c000000 	jal	0 <func_808C1190>
    47c4:	e7b20010 	swc1	$f18,16(sp)
    47c8:	3c01428c 	lui	at,0x428c
    47cc:	44813000 	mtc1	at,$f6
    47d0:	c6040028 	lwc1	$f4,40(s0)
    47d4:	3c014302 	lui	at,0x4302
    47d8:	44815000 	mtc1	at,$f10
    47dc:	46062201 	sub.s	$f8,$f4,$f6
    47e0:	3c010000 	lui	at,0x0
    47e4:	c4240000 	lwc1	$f4,0(at)
    47e8:	3c063e4c 	lui	a2,0x3e4c
    47ec:	460a4480 	add.s	$f18,$f8,$f10
    47f0:	34c6cccd 	ori	a2,a2,0xcccd
    47f4:	26040438 	addiu	a0,s0,1080
    47f8:	3c0741a0 	lui	a3,0x41a0
    47fc:	44059000 	mfc1	a1,$f18
    4800:	0c000000 	jal	0 <func_808C1190>
    4804:	e7a40010 	swc1	$f4,16(sp)
    4808:	3c010000 	lui	at,0x0
    480c:	c4260000 	lwc1	$f6,0(at)
    4810:	8e05002c 	lw	a1,44(s0)
    4814:	3c063e4c 	lui	a2,0x3e4c
    4818:	34c6cccd 	ori	a2,a2,0xcccd
    481c:	2604043c 	addiu	a0,s0,1084
    4820:	3c0741f0 	lui	a3,0x41f0
    4824:	0c000000 	jal	0 <func_808C1190>
    4828:	e7a60010 	swc1	$f6,16(sp)
    482c:	3c040600 	lui	a0,0x600
    4830:	0c000000 	jal	0 <func_808C1190>
    4834:	24843cf8 	addiu	a0,a0,15608
    4838:	44824000 	mtc1	v0,$f8
    483c:	8fa4004c 	lw	a0,76(sp)
    4840:	46804220 	cvt.s.w	$f8,$f8
    4844:	44054000 	mfc1	a1,$f8
    4848:	0c000000 	jal	0 <func_808C1190>
    484c:	00000000 	nop
    4850:	104004a8 	beqz	v0,5af4 <L808C6C84>
    4854:	8fa4004c 	lw	a0,76(sp)
    4858:	3c01426c 	lui	at,0x426c
    485c:	44815000 	mtc1	at,$f10
    4860:	3c01bf80 	lui	at,0xbf80
    4864:	44819000 	mtc1	at,$f18
    4868:	3c050601 	lui	a1,0x601
    486c:	240c0002 	li	t4,2
    4870:	afac0014 	sw	t4,20(sp)
    4874:	24a5df38 	addiu	a1,a1,-8392
    4878:	3c063f80 	lui	a2,0x3f80
    487c:	3c0741f0 	lui	a3,0x41f0
    4880:	e7aa0010 	swc1	$f10,16(sp)
    4884:	0c000000 	jal	0 <func_808C1190>
    4888:	e7b20018 	swc1	$f18,24(sp)
    488c:	240d0007 	li	t5,7
    4890:	a60d019c 	sh	t5,412(s0)
    4894:	3c010000 	lui	at,0x0
    4898:	c4240000 	lwc1	$f4,0(at)
    489c:	44803000 	mtc1	zero,$f6
    48a0:	44804000 	mtc1	zero,$f8
    48a4:	a60001a8 	sh	zero,424(s0)
    48a8:	a600019e 	sh	zero,414(s0)
    48ac:	e6040228 	swc1	$f4,552(s0)
    48b0:	e6060204 	swc1	$f6,516(s0)
    48b4:	1000048f 	b	5af4 <L808C6C84>
    48b8:	e60801e4 	swc1	$f8,484(s0)

000048bc <L808C5A4C>:
    48bc:	860e01c4 	lh	t6,452(s0)
    48c0:	44805000 	mtc1	zero,$f10
    48c4:	8e050024 	lw	a1,36(s0)
    48c8:	25cf07d0 	addiu	t7,t6,2000
    48cc:	a60f01c4 	sh	t7,452(s0)
    48d0:	3c063e4c 	lui	a2,0x3e4c
    48d4:	34c6cccd 	ori	a2,a2,0xcccd
    48d8:	26040434 	addiu	a0,s0,1076
    48dc:	3c0741f0 	lui	a3,0x41f0
    48e0:	0c000000 	jal	0 <func_808C1190>
    48e4:	e7aa0010 	swc1	$f10,16(sp)
    48e8:	3c01428c 	lui	at,0x428c
    48ec:	44812000 	mtc1	at,$f4
    48f0:	c6120028 	lwc1	$f18,40(s0)
    48f4:	3c014302 	lui	at,0x4302
    48f8:	44814000 	mtc1	at,$f8
    48fc:	46049181 	sub.s	$f6,$f18,$f4
    4900:	44809000 	mtc1	zero,$f18
    4904:	3c063e4c 	lui	a2,0x3e4c
    4908:	34c6cccd 	ori	a2,a2,0xcccd
    490c:	46083280 	add.s	$f10,$f6,$f8
    4910:	26040438 	addiu	a0,s0,1080
    4914:	3c0741a0 	lui	a3,0x41a0
    4918:	e7b20010 	swc1	$f18,16(sp)
    491c:	44055000 	mfc1	a1,$f10
    4920:	0c000000 	jal	0 <func_808C1190>
    4924:	00000000 	nop
    4928:	44802000 	mtc1	zero,$f4
    492c:	8e05002c 	lw	a1,44(s0)
    4930:	3c063e4c 	lui	a2,0x3e4c
    4934:	34c6cccd 	ori	a2,a2,0xcccd
    4938:	2604043c 	addiu	a0,s0,1084
    493c:	3c0741f0 	lui	a3,0x41f0
    4940:	0c000000 	jal	0 <func_808C1190>
    4944:	e7a40010 	swc1	$f4,16(sp)
    4948:	3c010000 	lui	at,0x0
    494c:	c4220000 	lwc1	$f2,0(at)
    4950:	3c0140a0 	lui	at,0x40a0
    4954:	44814000 	mtc1	at,$f8
    4958:	c6060204 	lwc1	$f6,516(s0)
    495c:	3c05c45e 	lui	a1,0xc45e
    4960:	44061000 	mfc1	a2,$f2
    4964:	46083282 	mul.s	$f10,$f6,$f8
    4968:	34a58000 	ori	a1,a1,0x8000
    496c:	26040428 	addiu	a0,s0,1064
    4970:	e7a20010 	swc1	$f2,16(sp)
    4974:	44075000 	mfc1	a3,$f10
    4978:	0c000000 	jal	0 <func_808C1190>
    497c:	00000000 	nop
    4980:	3c010000 	lui	at,0x0
    4984:	c4220000 	lwc1	$f2,0(at)
    4988:	3c0140a0 	lui	at,0x40a0
    498c:	44812000 	mtc1	at,$f4
    4990:	c6120204 	lwc1	$f18,516(s0)
    4994:	3c05c54e 	lui	a1,0xc54e
    4998:	44061000 	mfc1	a2,$f2
    499c:	46049182 	mul.s	$f6,$f18,$f4
    49a0:	34a58000 	ori	a1,a1,0x8000
    49a4:	26040430 	addiu	a0,s0,1072
    49a8:	e7a20010 	swc1	$f2,16(sp)
    49ac:	44073000 	mfc1	a3,$f6
    49b0:	0c000000 	jal	0 <func_808C1190>
    49b4:	00000000 	nop
    49b8:	3c013f80 	lui	at,0x3f80
    49bc:	44811000 	mtc1	at,$f2
    49c0:	44804000 	mtc1	zero,$f8
    49c4:	3c073dcc 	lui	a3,0x3dcc
    49c8:	44051000 	mfc1	a1,$f2
    49cc:	44061000 	mfc1	a2,$f2
    49d0:	34e7cccd 	ori	a3,a3,0xcccd
    49d4:	26040204 	addiu	a0,s0,516
    49d8:	0c000000 	jal	0 <func_808C1190>
    49dc:	e7a80010 	swc1	$f8,16(sp)
    49e0:	861801da 	lh	t8,474(s0)
    49e4:	24010001 	li	at,1
    49e8:	3c0c0000 	lui	t4,0x0
    49ec:	17010018 	bne	t8,at,4a50 <L808C5A4C+0x194>
    49f0:	258c0000 	addiu	t4,t4,0
    49f4:	3c013fc0 	lui	at,0x3fc0
    49f8:	44819000 	mtc1	at,$f18
    49fc:	c60a01e4 	lwc1	$f10,484(s0)
    4a00:	860801a2 	lh	t0,418(s0)
    4a04:	24190008 	li	t9,8
    4a08:	46125103 	div.s	$f4,$f10,$f18
    4a0c:	a619019c 	sh	t9,412(s0)
    4a10:	3c01c37a 	lui	at,0xc37a
    4a14:	240903e8 	li	t1,1000
    4a18:	15000005 	bnez	t0,4a30 <L808C5A4C+0x174>
    4a1c:	e6040068 	swc1	$f4,104(s0)
    4a20:	3c01437a 	lui	at,0x437a
    4a24:	44813000 	mtc1	at,$f6
    4a28:	10000004 	b	4a3c <L808C5A4C+0x180>
    4a2c:	e6060238 	swc1	$f6,568(s0)
    4a30:	44814000 	mtc1	at,$f8
    4a34:	00000000 	nop
    4a38:	e6080238 	swc1	$f8,568(s0)
    4a3c:	3c0144fa 	lui	at,0x44fa
    4a40:	44815000 	mtc1	at,$f10
    4a44:	a60901da 	sh	t1,474(s0)
    4a48:	1000042a 	b	5af4 <L808C6C84>
    4a4c:	e60a0234 	swc1	$f10,564(s0)
    4a50:	3c014040 	lui	at,0x4040
    4a54:	44810000 	mtc1	at,$f0
    4a58:	3c0140a0 	lui	at,0x40a0
    4a5c:	44819000 	mtc1	at,$f18
    4a60:	3c013e80 	lui	at,0x3e80
    4a64:	44813000 	mtc1	at,$f6
    4a68:	46120102 	mul.s	$f4,$f0,$f18
    4a6c:	860a01a0 	lh	t2,416(s0)
    4a70:	44805000 	mtc1	zero,$f10
    4a74:	46060202 	mul.s	$f8,$f0,$f6
    4a78:	000a5880 	sll	t3,t2,0x2
    4a7c:	016a5823 	subu	t3,t3,t2
    4a80:	000b5880 	sll	t3,t3,0x2
    4a84:	016c6821 	addu	t5,t3,t4
    4a88:	afad019c 	sw	t5,412(sp)
    4a8c:	44052000 	mfc1	a1,$f4
    4a90:	44074000 	mfc1	a3,$f8
    4a94:	e60001ec 	swc1	$f0,492(s0)
    4a98:	260401e4 	addiu	a0,s0,484
    4a9c:	3c063f80 	lui	a2,0x3f80
    4aa0:	0c000000 	jal	0 <func_808C1190>
    4aa4:	e7aa0010 	swc1	$f10,16(sp)
    4aa8:	8fa2019c 	lw	v0,412(sp)
    4aac:	c6040024 	lwc1	$f4,36(s0)
    4ab0:	c608002c 	lwc1	$f8,44(s0)
    4ab4:	c4520000 	lwc1	$f18,0(v0)
    4ab8:	c4460008 	lwc1	$f6,8(v0)
    4abc:	3c014348 	lui	at,0x4348
    4ac0:	46049301 	sub.s	$f12,$f18,$f4
    4ac4:	44818000 	mtc1	at,$f16
    4ac8:	3c01428c 	lui	at,0x428c
    4acc:	46083381 	sub.s	$f14,$f6,$f8
    4ad0:	460c6282 	mul.s	$f10,$f12,$f12
    4ad4:	00000000 	nop
    4ad8:	460e7482 	mul.s	$f18,$f14,$f14
    4adc:	46125000 	add.s	$f0,$f10,$f18
    4ae0:	46000004 	sqrt.s	$f0,$f0
    4ae4:	4610003c 	c.lt.s	$f0,$f16
    4ae8:	46100081 	sub.s	$f2,$f0,$f16
    4aec:	44810000 	mtc1	at,$f0
    4af0:	45010004 	bc1t	4b04 <L808C5A4C+0x248>
    4af4:	00000000 	nop
    4af8:	860e01da 	lh	t6,474(s0)
    4afc:	51c00004 	beqzl	t6,4b10 <L808C5A4C+0x254>
    4b00:	4602003c 	c.lt.s	$f0,$f2
    4b04:	44801000 	mtc1	zero,$f2
    4b08:	00000000 	nop
    4b0c:	4602003c 	c.lt.s	$f0,$f2
    4b10:	00000000 	nop
    4b14:	45020003 	bc1fl	4b24 <L808C5A4C+0x268>
    4b18:	8604019e 	lh	a0,414(s0)
    4b1c:	46000086 	mov.s	$f2,$f0
    4b20:	8604019e 	lh	a0,414(s0)
    4b24:	e7a20178 	swc1	$f2,376(sp)
    4b28:	00800821 	move	at,a0
    4b2c:	00042140 	sll	a0,a0,0x5
    4b30:	00812023 	subu	a0,a0,at
    4b34:	00042080 	sll	a0,a0,0x2
    4b38:	00812021 	addu	a0,a0,at
    4b3c:	000420c0 	sll	a0,a0,0x3
    4b40:	00042400 	sll	a0,a0,0x10
    4b44:	0c000000 	jal	0 <func_808C1190>
    4b48:	00042403 	sra	a0,a0,0x10
    4b4c:	3c01c248 	lui	at,0xc248
    4b50:	44816000 	mtc1	at,$f12
    4b54:	3c0142c8 	lui	at,0x42c8
    4b58:	44813000 	mtc1	at,$f6
    4b5c:	460c0102 	mul.s	$f4,$f0,$f12
    4b60:	8604019e 	lh	a0,414(s0)
    4b64:	00800821 	move	at,a0
    4b68:	00042140 	sll	a0,a0,0x5
    4b6c:	00812023 	subu	a0,a0,at
    4b70:	46062203 	div.s	$f8,$f4,$f6
    4b74:	00042080 	sll	a0,a0,0x2
    4b78:	00812021 	addu	a0,a0,at
    4b7c:	000420c0 	sll	a0,a0,0x3
    4b80:	00042400 	sll	a0,a0,0x10
    4b84:	00042403 	sra	a0,a0,0x10
    4b88:	0c000000 	jal	0 <func_808C1190>
    4b8c:	e608023c 	swc1	$f8,572(s0)
    4b90:	c7a20178 	lwc1	$f2,376(sp)
    4b94:	44809000 	mtc1	zero,$f18
    4b98:	44802000 	mtc1	zero,$f4
    4b9c:	46020282 	mul.s	$f10,$f0,$f2
    4ba0:	e7b20198 	swc1	$f18,408(sp)
    4ba4:	e7a40194 	swc1	$f4,404(sp)
    4ba8:	3c010000 	lui	at,0x0
    4bac:	00002825 	move	a1,zero
    4bb0:	e7aa0190 	swc1	$f10,400(sp)
    4bb4:	860f00b6 	lh	t7,182(s0)
    4bb8:	c42a0000 	lwc1	$f10,0(at)
    4bbc:	448f3000 	mtc1	t7,$f6
    4bc0:	00000000 	nop
    4bc4:	46803220 	cvt.s.w	$f8,$f6
    4bc8:	460a4302 	mul.s	$f12,$f8,$f10
    4bcc:	0c000000 	jal	0 <func_808C1190>
    4bd0:	00000000 	nop
    4bd4:	27a40190 	addiu	a0,sp,400
    4bd8:	0c000000 	jal	0 <func_808C1190>
    4bdc:	27a50184 	addiu	a1,sp,388
    4be0:	8fb8019c 	lw	t8,412(sp)
    4be4:	c7a40184 	lwc1	$f4,388(sp)
    4be8:	44804000 	mtc1	zero,$f8
    4bec:	c7120000 	lwc1	$f18,0(t8)
    4bf0:	26040024 	addiu	a0,s0,36
    4bf4:	8e0701e4 	lw	a3,484(s0)
    4bf8:	46049180 	add.s	$f6,$f18,$f4
    4bfc:	afa40048 	sw	a0,72(sp)
    4c00:	3c063f80 	lui	a2,0x3f80
    4c04:	e7a80010 	swc1	$f8,16(sp)
    4c08:	44053000 	mfc1	a1,$f6
    4c0c:	0c000000 	jal	0 <func_808C1190>
    4c10:	00000000 	nop
    4c14:	8fb9019c 	lw	t9,412(sp)
    4c18:	c7b2018c 	lwc1	$f18,396(sp)
    4c1c:	44803000 	mtc1	zero,$f6
    4c20:	c72a0008 	lwc1	$f10,8(t9)
    4c24:	8e0701e4 	lw	a3,484(s0)
    4c28:	2604002c 	addiu	a0,s0,44
    4c2c:	46125100 	add.s	$f4,$f10,$f18
    4c30:	3c063f80 	lui	a2,0x3f80
    4c34:	e7a60010 	swc1	$f6,16(sp)
    4c38:	44052000 	mfc1	a1,$f4
    4c3c:	0c000000 	jal	0 <func_808C1190>
    4c40:	00000000 	nop
    4c44:	02002025 	move	a0,s0
    4c48:	0c000000 	jal	0 <func_808C1190>
    4c4c:	2405304e 	li	a1,12366
    4c50:	8603019e 	lh	v1,414(s0)
    4c54:	8fa401a4 	lw	a0,420(sp)
    4c58:	24050002 	li	a1,2
    4c5c:	30680007 	andi	t0,v1,0x7
    4c60:	15000005 	bnez	t0,4c78 <L808C5A4C+0x3bc>
    4c64:	248401e0 	addiu	a0,a0,480
    4c68:	24060001 	li	a2,1
    4c6c:	0c000000 	jal	0 <func_808C1190>
    4c70:	24070008 	li	a3,8
    4c74:	8603019e 	lh	v1,414(s0)
    4c78:	30690001 	andi	t1,v1,0x1
    4c7c:	1520000f 	bnez	t1,4cbc <L808C5A4C+0x400>
    4c80:	8fa401a4 	lw	a0,420(sp)
    4c84:	3c014100 	lui	at,0x4100
    4c88:	44814000 	mtc1	at,$f8
    4c8c:	240a0003 	li	t2,3
    4c90:	240b01f4 	li	t3,500
    4c94:	240c000a 	li	t4,10
    4c98:	afac001c 	sw	t4,28(sp)
    4c9c:	afab0018 	sw	t3,24(sp)
    4ca0:	afaa0010 	sw	t2,16(sp)
    4ca4:	02002825 	move	a1,s0
    4ca8:	8fa60048 	lw	a2,72(sp)
    4cac:	3c074220 	lui	a3,0x4220
    4cb0:	afa00020 	sw	zero,32(sp)
    4cb4:	0c000000 	jal	0 <func_808C1190>
    4cb8:	e7a80014 	swc1	$f8,20(sp)
    4cbc:	8fad019c 	lw	t5,412(sp)
    4cc0:	c6120024 	lwc1	$f18,36(s0)
    4cc4:	3c0142c8 	lui	at,0x42c8
    4cc8:	c5aa0000 	lwc1	$f10,0(t5)
    4ccc:	c60801ec 	lwc1	$f8,492(s0)
    4cd0:	c606002c 	lwc1	$f6,44(s0)
    4cd4:	46125301 	sub.s	$f12,$f10,$f18
    4cd8:	44815000 	mtc1	at,$f10
    4cdc:	c5a40008 	lwc1	$f4,8(t5)
    4ce0:	3c0544bb 	lui	a1,0x44bb
    4ce4:	460a4482 	mul.s	$f18,$f8,$f10
    4ce8:	46062381 	sub.s	$f14,$f4,$f6
    4cec:	44802000 	mtc1	zero,$f4
    4cf0:	34a58000 	ori	a1,a1,0x8000
    4cf4:	e7ac0180 	swc1	$f12,384(sp)
    4cf8:	e7ae017c 	swc1	$f14,380(sp)
    4cfc:	260401e8 	addiu	a0,s0,488
    4d00:	44079000 	mfc1	a3,$f18
    4d04:	3c063f80 	lui	a2,0x3f80
    4d08:	0c000000 	jal	0 <func_808C1190>
    4d0c:	e7a40010 	swc1	$f4,16(sp)
    4d10:	c7ac0180 	lwc1	$f12,384(sp)
    4d14:	0c000000 	jal	0 <func_808C1190>
    4d18:	c7ae017c 	lwc1	$f14,380(sp)
    4d1c:	3c010000 	lui	at,0x0
    4d20:	c4260000 	lwc1	$f6,0(at)
    4d24:	c61201ec 	lwc1	$f18,492(s0)
    4d28:	c60401e8 	lwc1	$f4,488(s0)
    4d2c:	46060202 	mul.s	$f8,$f0,$f6
    4d30:	afa00010 	sw	zero,16(sp)
    4d34:	26040032 	addiu	a0,s0,50
    4d38:	46049182 	mul.s	$f6,$f18,$f4
    4d3c:	24060005 	li	a2,5
    4d40:	4600428d 	trunc.w.s	$f10,$f8
    4d44:	4600320d 	trunc.w.s	$f8,$f6
    4d48:	44055000 	mfc1	a1,$f10
    4d4c:	44074000 	mfc1	a3,$f8
    4d50:	00052c00 	sll	a1,a1,0x10
    4d54:	00052c03 	sra	a1,a1,0x10
    4d58:	00073c00 	sll	a3,a3,0x10
    4d5c:	0c000000 	jal	0 <func_808C1190>
    4d60:	00073c03 	sra	a3,a3,0x10
    4d64:	c7ac0180 	lwc1	$f12,384(sp)
    4d68:	3c014170 	lui	at,0x4170
    4d6c:	44811000 	mtc1	at,$f2
    4d70:	46006005 	abs.s	$f0,$f12
    4d74:	c7ae017c 	lwc1	$f14,380(sp)
    4d78:	4602003e 	c.le.s	$f0,$f2
    4d7c:	00000000 	nop
    4d80:	4502035d 	bc1fl	5af8 <L808C6C84+0x4>
    4d84:	860501b4 	lh	a1,436(s0)
    4d88:	46007005 	abs.s	$f0,$f14
    4d8c:	02002025 	move	a0,s0
    4d90:	4602003e 	c.le.s	$f0,$f2
    4d94:	2405384d 	li	a1,14413
    4d98:	45020357 	bc1fl	5af8 <L808C6C84+0x4>
    4d9c:	860501b4 	lh	a1,436(s0)
    4da0:	0c000000 	jal	0 <func_808C1190>
    4da4:	e6020060 	swc1	$f2,96(s0)
    4da8:	861801a2 	lh	t8,418(s0)
    4dac:	240e000a 	li	t6,10
    4db0:	27a50154 	addiu	a1,sp,340
    4db4:	5700000b 	bnezl	t8,4de4 <L808C5A4C+0x528>
    4db8:	860a01a0 	lh	t2,416(s0)
    4dbc:	861901a0 	lh	t9,416(s0)
    4dc0:	27280001 	addiu	t0,t9,1
    4dc4:	a60801a0 	sh	t0,416(s0)
    4dc8:	860901a0 	lh	t1,416(s0)
    4dcc:	29210004 	slti	at,t1,4
    4dd0:	5420000c 	bnezl	at,4e04 <L808C5A4C+0x548>
    4dd4:	c60a0024 	lwc1	$f10,36(s0)
    4dd8:	10000009 	b	4e00 <L808C5A4C+0x544>
    4ddc:	a60001a0 	sh	zero,416(s0)
    4de0:	860a01a0 	lh	t2,416(s0)
    4de4:	240d0003 	li	t5,3
    4de8:	254bffff 	addiu	t3,t2,-1
    4dec:	a60b01a0 	sh	t3,416(s0)
    4df0:	860c01a0 	lh	t4,416(s0)
    4df4:	05830003 	bgezl	t4,4e04 <L808C5A4C+0x548>
    4df8:	c60a0024 	lwc1	$f10,36(s0)
    4dfc:	a60d01a0 	sh	t5,416(s0)
    4e00:	c60a0024 	lwc1	$f10,36(s0)
    4e04:	a60e01da 	sh	t6,474(s0)
    4e08:	3c014270 	lui	at,0x4270
    4e0c:	e7aa0154 	swc1	$f10,340(sp)
    4e10:	c6120028 	lwc1	$f18,40(s0)
    4e14:	44812000 	mtc1	at,$f4
    4e18:	240f0320 	li	t7,800
    4e1c:	2418000a 	li	t8,10
    4e20:	46049180 	add.s	$f6,$f18,$f4
    4e24:	8fa401a4 	lw	a0,420(sp)
    4e28:	3c06437a 	lui	a2,0x437a
    4e2c:	24070028 	li	a3,40
    4e30:	e7a60158 	swc1	$f6,344(sp)
    4e34:	c608002c 	lwc1	$f8,44(s0)
    4e38:	afa00018 	sw	zero,24(sp)
    4e3c:	afb80014 	sw	t8,20(sp)
    4e40:	afaf0010 	sw	t7,16(sp)
    4e44:	0c000000 	jal	0 <func_808C1190>
    4e48:	e7a8015c 	swc1	$f8,348(sp)
    4e4c:	1000032a 	b	5af8 <L808C6C84+0x4>
    4e50:	860501b4 	lh	a1,436(s0)

00004e54 <L808C5FE4>:
    4e54:	860301da 	lh	v1,474(s0)
    4e58:	24010374 	li	at,884
    4e5c:	3c040600 	lui	a0,0x600
    4e60:	54610024 	bnel	v1,at,4ef4 <L808C5FE4+0xa0>
    4e64:	28610356 	slti	at,v1,854
    4e68:	0c000000 	jal	0 <func_808C1190>
    4e6c:	248442a8 	addiu	a0,a0,17064
    4e70:	44825000 	mtc1	v0,$f10
    4e74:	3c01c1a0 	lui	at,0xc1a0
    4e78:	44812000 	mtc1	at,$f4
    4e7c:	468054a0 	cvt.s.w	$f18,$f10
    4e80:	3c050600 	lui	a1,0x600
    4e84:	24a542a8 	addiu	a1,a1,17064
    4e88:	8fa4004c 	lw	a0,76(sp)
    4e8c:	3c063f80 	lui	a2,0x3f80
    4e90:	24070000 	li	a3,0
    4e94:	e7b20010 	swc1	$f18,16(sp)
    4e98:	afa00014 	sw	zero,20(sp)
    4e9c:	0c000000 	jal	0 <func_808C1190>
    4ea0:	e7a40018 	swc1	$f4,24(sp)
    4ea4:	c6060428 	lwc1	$f6,1064(s0)
    4ea8:	c6080024 	lwc1	$f8,36(s0)
    4eac:	c60a0430 	lwc1	$f10,1072(s0)
    4eb0:	c612002c 	lwc1	$f18,44(s0)
    4eb4:	46083301 	sub.s	$f12,$f6,$f8
    4eb8:	46125381 	sub.s	$f14,$f10,$f18
    4ebc:	460c6102 	mul.s	$f4,$f12,$f12
    4ec0:	00000000 	nop
    4ec4:	460e7182 	mul.s	$f6,$f14,$f14
    4ec8:	46062000 	add.s	$f0,$f4,$f6
    4ecc:	46000004 	sqrt.s	$f0,$f0
    4ed0:	0c000000 	jal	0 <func_808C1190>
    4ed4:	e600022c 	swc1	$f0,556(s0)
    4ed8:	2419015e 	li	t9,350
    4edc:	24080009 	li	t0,9
    4ee0:	e6000230 	swc1	$f0,560(s0)
    4ee4:	a61901dc 	sh	t9,476(s0)
    4ee8:	a608019c 	sh	t0,412(s0)
    4eec:	860301da 	lh	v1,474(s0)
    4ef0:	28610356 	slti	at,v1,854
    4ef4:	10200013 	beqz	at,4f44 <L808C5FE4+0xf0>
    4ef8:	00001025 	move	v0,zero
    4efc:	3c040000 	lui	a0,0x0
    4f00:	860501cc 	lh	a1,460(s0)
    4f04:	a7a20176 	sh	v0,374(sp)
    4f08:	0c000000 	jal	0 <func_808C1190>
    4f0c:	24840000 	addiu	a0,a0,0
    4f10:	860301cc 	lh	v1,460(s0)
    4f14:	87a20176 	lh	v0,374(sp)
    4f18:	28610100 	slti	at,v1,256
    4f1c:	10200003 	beqz	at,4f2c <L808C5FE4+0xd8>
    4f20:	24420001 	addiu	v0,v0,1
    4f24:	24690001 	addiu	t1,v1,1
    4f28:	a60901cc 	sh	t1,460(s0)
    4f2c:	00021400 	sll	v0,v0,0x10
    4f30:	00021403 	sra	v0,v0,0x10
    4f34:	28410002 	slti	at,v0,2
    4f38:	1420fff0 	bnez	at,4efc <L808C5FE4+0xa8>
    4f3c:	00000000 	nop
    4f40:	860301da 	lh	v1,474(s0)
    4f44:	286103d8 	slti	at,v1,984
    4f48:	10200007 	beqz	at,4f68 <L808C5FE4+0x114>
    4f4c:	260401c4 	addiu	a0,s0,452
    4f50:	2405c000 	li	a1,-16384
    4f54:	2406000a 	li	a2,10
    4f58:	2407012c 	li	a3,300
    4f5c:	0c000000 	jal	0 <func_808C1190>
    4f60:	afa00010 	sw	zero,16(sp)
    4f64:	860301da 	lh	v1,474(s0)
    4f68:	24010388 	li	at,904
    4f6c:	14610004 	bne	v1,at,4f80 <L808C5FE4+0x12c>
    4f70:	02002025 	move	a0,s0
    4f74:	0c000000 	jal	0 <func_808C1190>
    4f78:	24053853 	li	a1,14419
    4f7c:	860301da 	lh	v1,474(s0)
    4f80:	28610356 	slti	at,v1,854
    4f84:	10200004 	beqz	at,4f98 <L808C5FE4+0x144>
    4f88:	02002025 	move	a0,s0
    4f8c:	0c000000 	jal	0 <func_808C1190>
    4f90:	24053054 	li	a1,12372
    4f94:	860301da 	lh	v1,474(s0)
    4f98:	240103c0 	li	at,960
    4f9c:	14610004 	bne	v1,at,4fb0 <L808C5FE4+0x15c>
    4fa0:	02002025 	move	a0,s0
    4fa4:	0c000000 	jal	0 <func_808C1190>
    4fa8:	24053855 	li	a1,14421
    4fac:	860301da 	lh	v1,474(s0)
    4fb0:	286103c0 	slti	at,v1,960
    4fb4:	102000be 	beqz	at,52b0 <L808C5FE4+0x45c>
    4fb8:	02002025 	move	a0,s0
    4fbc:	44800000 	mtc1	zero,$f0
    4fc0:	260400c4 	addiu	a0,s0,196
    4fc4:	3c063f80 	lui	a2,0x3f80
    4fc8:	44050000 	mfc1	a1,$f0
    4fcc:	3c074120 	lui	a3,0x4120
    4fd0:	0c000000 	jal	0 <func_808C1190>
    4fd4:	e7a00010 	swc1	$f0,16(sp)
    4fd8:	860301da 	lh	v1,474(s0)
    4fdc:	286102c6 	slti	at,v1,710
    4fe0:	142000c7 	bnez	at,5300 <L808C5FE4+0x4ac>
    4fe4:	240102c6 	li	at,710
    4fe8:	14610035 	bne	v1,at,50c0 <L808C5FE4+0x26c>
    4fec:	27a400f4 	addiu	a0,sp,244
    4ff0:	3c0a0000 	lui	t2,0x0
    4ff4:	27a30124 	addiu	v1,sp,292
    4ff8:	254a0000 	addiu	t2,t2,0
    4ffc:	254e0030 	addiu	t6,t2,48
    5000:	00606825 	move	t5,v1
    5004:	8d4c0000 	lw	t4,0(t2)
    5008:	254a000c 	addiu	t2,t2,12
    500c:	25ad000c 	addiu	t5,t5,12
    5010:	adacfff4 	sw	t4,-12(t5)
    5014:	8d4bfff8 	lw	t3,-8(t2)
    5018:	adabfff8 	sw	t3,-8(t5)
    501c:	8d4cfffc 	lw	t4,-4(t2)
    5020:	154efff8 	bne	t2,t6,5004 <L808C5FE4+0x1b0>
    5024:	adacfffc 	sw	t4,-4(t5)
    5028:	3c0f0000 	lui	t7,0x0
    502c:	25ef0000 	addiu	t7,t7,0
    5030:	25e90030 	addiu	t1,t7,48
    5034:	00804025 	move	t0,a0
    5038:	8df90000 	lw	t9,0(t7)
    503c:	25ef000c 	addiu	t7,t7,12
    5040:	2508000c 	addiu	t0,t0,12
    5044:	ad19fff4 	sw	t9,-12(t0)
    5048:	8df8fff8 	lw	t8,-8(t7)
    504c:	ad18fff8 	sw	t8,-8(t0)
    5050:	8df9fffc 	lw	t9,-4(t7)
    5054:	15e9fff8 	bne	t7,t1,5038 <L808C5FE4+0x1e4>
    5058:	ad19fffc 	sw	t9,-4(t0)
    505c:	860a01a2 	lh	t2,418(s0)
    5060:	240e0001 	li	t6,1
    5064:	a60e01c6 	sh	t6,454(s0)
    5068:	55400008 	bnezl	t2,508c <L808C5FE4+0x238>
    506c:	860c01a0 	lh	t4,416(s0)
    5070:	860d01a0 	lh	t5,416(s0)
    5074:	000d5880 	sll	t3,t5,0x2
    5078:	016d5823 	subu	t3,t3,t5
    507c:	000b5880 	sll	t3,t3,0x2
    5080:	10000006 	b	509c <L808C5FE4+0x248>
    5084:	006b1021 	addu	v0,v1,t3
    5088:	860c01a0 	lh	t4,416(s0)
    508c:	000c4880 	sll	t1,t4,0x2
    5090:	012c4823 	subu	t1,t1,t4
    5094:	00094880 	sll	t1,t1,0x2
    5098:	00891021 	addu	v0,a0,t1
    509c:	c4480000 	lwc1	$f8,0(v0)
    50a0:	8faf0160 	lw	t7,352(sp)
    50a4:	44800000 	mtc1	zero,$f0
    50a8:	e5e80024 	swc1	$f8,36(t7)
    50ac:	8fa80160 	lw	t0,352(sp)
    50b0:	c44a0008 	lwc1	$f10,8(v0)
    50b4:	e50a002c 	swc1	$f10,44(t0)
    50b8:	860301da 	lh	v1,474(s0)
    50bc:	e6000204 	swc1	$f0,516(s0)
    50c0:	44800000 	mtc1	zero,$f0
    50c4:	28610375 	slti	at,v1,885
    50c8:	1420000a 	bnez	at,50f4 <L808C5FE4+0x2a0>
    50cc:	26040228 	addiu	a0,s0,552
    50d0:	3c063e4c 	lui	a2,0x3e4c
    50d4:	34c6cccd 	ori	a2,a2,0xcccd
    50d8:	26040228 	addiu	a0,s0,552
    50dc:	3c054348 	lui	a1,0x4348
    50e0:	3c0742c8 	lui	a3,0x42c8
    50e4:	0c000000 	jal	0 <func_808C1190>
    50e8:	e7a00010 	swc1	$f0,16(sp)
    50ec:	10000008 	b	5110 <L808C5FE4+0x2bc>
    50f0:	00000000 	nop
    50f4:	3c05c5ce 	lui	a1,0xc5ce
    50f8:	3c063e4c 	lui	a2,0x3e4c
    50fc:	34c6cccd 	ori	a2,a2,0xcccd
    5100:	34a54000 	ori	a1,a1,0x4000
    5104:	3c0741f0 	lui	a3,0x41f0
    5108:	0c000000 	jal	0 <func_808C1190>
    510c:	e7a00010 	swc1	$f0,16(sp)
    5110:	3c190000 	lui	t9,0x0
    5114:	27390000 	addiu	t9,t9,0
    5118:	8f2a0000 	lw	t2,0(t9)
    511c:	8f2e0004 	lw	t6,4(t9)
    5120:	27b800e4 	addiu	t8,sp,228
    5124:	3c0b0000 	lui	t3,0x0
    5128:	256b0000 	addiu	t3,t3,0
    512c:	af0a0000 	sw	t2,0(t8)
    5130:	af0e0004 	sw	t6,4(t8)
    5134:	8d6c0004 	lw	t4,4(t3)
    5138:	8d690000 	lw	t1,0(t3)
    513c:	3c0142f0 	lui	at,0x42f0
    5140:	27ad00dc 	addiu	t5,sp,220
    5144:	44816000 	mtc1	at,$f12
    5148:	adac0004 	sw	t4,4(t5)
    514c:	0c000000 	jal	0 <func_808C1190>
    5150:	ada90000 	sw	t1,0(t5)
    5154:	c6120038 	lwc1	$f18,56(s0)
    5158:	3c014248 	lui	at,0x4248
    515c:	44816000 	mtc1	at,$f12
    5160:	46120100 	add.s	$f4,$f0,$f18
    5164:	0c000000 	jal	0 <func_808C1190>
    5168:	e7a40168 	swc1	$f4,360(sp)
    516c:	c6060028 	lwc1	$f6,40(s0)
    5170:	3c0142f0 	lui	at,0x42f0
    5174:	44816000 	mtc1	at,$f12
    5178:	46060200 	add.s	$f8,$f0,$f6
    517c:	0c000000 	jal	0 <func_808C1190>
    5180:	e7a8016c 	swc1	$f8,364(sp)
    5184:	c60a0040 	lwc1	$f10,64(s0)
    5188:	3c0f0000 	lui	t7,0x0
    518c:	3c080000 	lui	t0,0x0
    5190:	460a0480 	add.s	$f18,$f0,$f10
    5194:	25080000 	addiu	t0,t0,0
    5198:	25ef0000 	addiu	t7,t7,0
    519c:	3c060000 	lui	a2,0x0
    51a0:	3c070000 	lui	a3,0x0
    51a4:	241801f4 	li	t8,500
    51a8:	2419000a 	li	t9,10
    51ac:	240e000a 	li	t6,10
    51b0:	e7b20170 	swc1	$f18,368(sp)
    51b4:	afae0020 	sw	t6,32(sp)
    51b8:	afb9001c 	sw	t9,28(sp)
    51bc:	afb80018 	sw	t8,24(sp)
    51c0:	24e70000 	addiu	a3,a3,0
    51c4:	24c60000 	addiu	a2,a2,0
    51c8:	afaf0010 	sw	t7,16(sp)
    51cc:	afa80014 	sw	t0,20(sp)
    51d0:	8fa401a4 	lw	a0,420(sp)
    51d4:	0c000000 	jal	0 <func_808C1190>
    51d8:	27a50168 	addiu	a1,sp,360
    51dc:	3c0142f0 	lui	at,0x42f0
    51e0:	44816000 	mtc1	at,$f12
    51e4:	0c000000 	jal	0 <func_808C1190>
    51e8:	00000000 	nop
    51ec:	c6040038 	lwc1	$f4,56(s0)
    51f0:	3c010000 	lui	at,0x0
    51f4:	c4280000 	lwc1	$f8,0(at)
    51f8:	46040180 	add.s	$f6,$f0,$f4
    51fc:	3c0142f0 	lui	at,0x42f0
    5200:	44816000 	mtc1	at,$f12
    5204:	e7a8016c 	swc1	$f8,364(sp)
    5208:	0c000000 	jal	0 <func_808C1190>
    520c:	e7a60168 	swc1	$f6,360(sp)
    5210:	c60a0040 	lwc1	$f10,64(s0)
    5214:	460a0480 	add.s	$f18,$f0,$f10
    5218:	0c000000 	jal	0 <func_808C1190>
    521c:	e7b20170 	swc1	$f18,368(sp)
    5220:	3c010000 	lui	at,0x0
    5224:	c4240000 	lwc1	$f4,0(at)
    5228:	46040182 	mul.s	$f6,$f0,$f4
    522c:	4600320d 	trunc.w.s	$f8,$f6
    5230:	44034000 	mfc1	v1,$f8
    5234:	00000000 	nop
    5238:	00031c00 	sll	v1,v1,0x10
    523c:	00031c03 	sra	v1,v1,0x10
    5240:	0c000000 	jal	0 <func_808C1190>
    5244:	a7a300ee 	sh	v1,238(sp)
    5248:	3c0142c8 	lui	at,0x42c8
    524c:	44815000 	mtc1	at,$f10
    5250:	87a300ee 	lh	v1,238(sp)
    5254:	2409000a 	li	t1,10
    5258:	460a0482 	mul.s	$f18,$f0,$f10
    525c:	00036080 	sll	t4,v1,0x2
    5260:	01836021 	addu	t4,t4,v1
    5264:	012c7823 	subu	t7,t1,t4
    5268:	27ad00e4 	addiu	t5,sp,228
    526c:	27ab00dc 	addiu	t3,sp,220
    5270:	00031080 	sll	v0,v1,0x2
    5274:	4600910d 	trunc.w.s	$f4,$f18
    5278:	004d3021 	addu	a2,v0,t5
    527c:	004b3821 	addu	a3,v0,t3
    5280:	afaf0010 	sw	t7,16(sp)
    5284:	44182000 	mfc1	t8,$f4
    5288:	8fa401a4 	lw	a0,420(sp)
    528c:	27a50168 	addiu	a1,sp,360
    5290:	0018cc00 	sll	t9,t8,0x10
    5294:	00197403 	sra	t6,t9,0x10
    5298:	25ca0064 	addiu	t2,t6,100
    529c:	afaa0018 	sw	t2,24(sp)
    52a0:	0c000000 	jal	0 <func_808C1190>
    52a4:	afa30014 	sw	v1,20(sp)
    52a8:	10000016 	b	5304 <L808C5FE4+0x4b0>
    52ac:	44800000 	mtc1	zero,$f0
    52b0:	0c000000 	jal	0 <func_808C1190>
    52b4:	2405304e 	li	a1,12366
    52b8:	860d019e 	lh	t5,414(s0)
    52bc:	8fa401a4 	lw	a0,420(sp)
    52c0:	02002825 	move	a1,s0
    52c4:	31ab0001 	andi	t3,t5,0x1
    52c8:	1560000d 	bnez	t3,5300 <L808C5FE4+0x4ac>
    52cc:	26060024 	addiu	a2,s0,36
    52d0:	3c014100 	lui	at,0x4100
    52d4:	44813000 	mtc1	at,$f6
    52d8:	24090003 	li	t1,3
    52dc:	240c01f4 	li	t4,500
    52e0:	240f000a 	li	t7,10
    52e4:	afaf001c 	sw	t7,28(sp)
    52e8:	afac0018 	sw	t4,24(sp)
    52ec:	afa90010 	sw	t1,16(sp)
    52f0:	3c074220 	lui	a3,0x4220
    52f4:	afa00020 	sw	zero,32(sp)
    52f8:	0c000000 	jal	0 <func_808C1190>
    52fc:	e7a60014 	swc1	$f6,20(sp)
    5300:	44800000 	mtc1	zero,$f0
    5304:	3c063e4c 	lui	a2,0x3e4c
    5308:	3c073dcc 	lui	a3,0x3dcc
    530c:	44050000 	mfc1	a1,$f0
    5310:	34e7cccd 	ori	a3,a3,0xcccd
    5314:	34c6cccd 	ori	a2,a2,0xcccd
    5318:	26040068 	addiu	a0,s0,104
    531c:	0c000000 	jal	0 <func_808C1190>
    5320:	e7a00010 	swc1	$f0,16(sp)
    5324:	c6020238 	lwc1	$f2,568(s0)
    5328:	c60a0234 	lwc1	$f10,564(s0)
    532c:	86080032 	lh	t0,50(s0)
    5330:	4600120d 	trunc.w.s	$f8,$f2
    5334:	860b01c4 	lh	t3,452(s0)
    5338:	860e01da 	lh	t6,474(s0)
    533c:	4600548d 	trunc.w.s	$f18,$f10
    5340:	440a4000 	mfc1	t2,$f8
    5344:	29c10367 	slti	at,t6,871
    5348:	26040238 	addiu	a0,s0,568
    534c:	44189000 	mfc1	t8,$f18
    5350:	010a6821 	addu	t5,t0,t2
    5354:	a60d0032 	sh	t5,50(s0)
    5358:	0178c821 	addu	t9,t3,t8
    535c:	1420001c 	bnez	at,53d0 <L808C5FE4+0x57c>
    5360:	a61901c4 	sh	t9,452(s0)
    5364:	860801a2 	lh	t0,418(s0)
    5368:	3c01c3e1 	lui	at,0xc3e1
    536c:	5500000e 	bnezl	t0,53a8 <L808C5FE4+0x554>
    5370:	44815000 	mtc1	at,$f10
    5374:	3c0143e1 	lui	at,0x43e1
    5378:	44812000 	mtc1	at,$f4
    537c:	3c014120 	lui	at,0x4120
    5380:	4604103c 	c.lt.s	$f2,$f4
    5384:	00000000 	nop
    5388:	45020019 	bc1fl	53f0 <L808C5FE4+0x59c>
    538c:	44800000 	mtc1	zero,$f0
    5390:	44813000 	mtc1	at,$f6
    5394:	00000000 	nop
    5398:	46061200 	add.s	$f8,$f2,$f6
    539c:	10000013 	b	53ec <L808C5FE4+0x598>
    53a0:	e6080238 	swc1	$f8,568(s0)
    53a4:	44815000 	mtc1	at,$f10
    53a8:	3c014120 	lui	at,0x4120
    53ac:	4602503c 	c.lt.s	$f10,$f2
    53b0:	00000000 	nop
    53b4:	4502000e 	bc1fl	53f0 <L808C5FE4+0x59c>
    53b8:	44800000 	mtc1	zero,$f0
    53bc:	44819000 	mtc1	at,$f18
    53c0:	00000000 	nop
    53c4:	46121101 	sub.s	$f4,$f2,$f18
    53c8:	10000008 	b	53ec <L808C5FE4+0x598>
    53cc:	e6040238 	swc1	$f4,568(s0)
    53d0:	44800000 	mtc1	zero,$f0
    53d4:	3c063d4c 	lui	a2,0x3d4c
    53d8:	34c6cccd 	ori	a2,a2,0xcccd
    53dc:	44050000 	mfc1	a1,$f0
    53e0:	3c074220 	lui	a3,0x4220
    53e4:	0c000000 	jal	0 <func_808C1190>
    53e8:	e7a00010 	swc1	$f0,16(sp)
    53ec:	44800000 	mtc1	zero,$f0
    53f0:	3c063e4c 	lui	a2,0x3e4c
    53f4:	34c6cccd 	ori	a2,a2,0xcccd
    53f8:	44050000 	mfc1	a1,$f0
    53fc:	26040234 	addiu	a0,s0,564
    5400:	3c074188 	lui	a3,0x4188
    5404:	0c000000 	jal	0 <func_808C1190>
    5408:	e7a00010 	swc1	$f0,16(sp)
    540c:	44803000 	mtc1	zero,$f6
    5410:	26040434 	addiu	a0,s0,1076
    5414:	8e050024 	lw	a1,36(s0)
    5418:	3c063e4c 	lui	a2,0x3e4c
    541c:	34c6cccd 	ori	a2,a2,0xcccd
    5420:	afa40048 	sw	a0,72(sp)
    5424:	3c0741f0 	lui	a3,0x41f0
    5428:	0c000000 	jal	0 <func_808C1190>
    542c:	e7a60010 	swc1	$f6,16(sp)
    5430:	3c01428c 	lui	at,0x428c
    5434:	44815000 	mtc1	at,$f10
    5438:	c6080028 	lwc1	$f8,40(s0)
    543c:	3c014302 	lui	at,0x4302
    5440:	44812000 	mtc1	at,$f4
    5444:	460a4481 	sub.s	$f18,$f8,$f10
    5448:	44804000 	mtc1	zero,$f8
    544c:	3c063e4c 	lui	a2,0x3e4c
    5450:	34c6cccd 	ori	a2,a2,0xcccd
    5454:	46049180 	add.s	$f6,$f18,$f4
    5458:	26040438 	addiu	a0,s0,1080
    545c:	3c0741a0 	lui	a3,0x41a0
    5460:	e7a80010 	swc1	$f8,16(sp)
    5464:	44053000 	mfc1	a1,$f6
    5468:	0c000000 	jal	0 <func_808C1190>
    546c:	00000000 	nop
    5470:	44805000 	mtc1	zero,$f10
    5474:	8e05002c 	lw	a1,44(s0)
    5478:	3c063e4c 	lui	a2,0x3e4c
    547c:	34c6cccd 	ori	a2,a2,0xcccd
    5480:	2604043c 	addiu	a0,s0,1084
    5484:	3c0741f0 	lui	a3,0x41f0
    5488:	0c000000 	jal	0 <func_808C1190>
    548c:	e7aa0010 	swc1	$f10,16(sp)
    5490:	860a019c 	lh	t2,412(s0)
    5494:	24010009 	li	at,9
    5498:	554100b8 	bnel	t2,at,577c <L808C5FE4+0x928>
    549c:	860a01a2 	lh	t2,418(s0)
    54a0:	860d01da 	lh	t5,474(s0)
    54a4:	27a300ac 	addiu	v1,sp,172
    54a8:	3c090000 	lui	t1,0x0
    54ac:	29a102c6 	slti	at,t5,710
    54b0:	10200064 	beqz	at,5644 <L808C5FE4+0x7f0>
    54b4:	2604022c 	addiu	a0,s0,556
    54b8:	25290000 	addiu	t1,t1,0
    54bc:	27a4007c 	addiu	a0,sp,124
    54c0:	25380030 	addiu	t8,t1,48
    54c4:	00605825 	move	t3,v1
    54c8:	8d2f0000 	lw	t7,0(t1)
    54cc:	2529000c 	addiu	t1,t1,12
    54d0:	256b000c 	addiu	t3,t3,12
    54d4:	ad6ffff4 	sw	t7,-12(t3)
    54d8:	8d2cfff8 	lw	t4,-8(t1)
    54dc:	ad6cfff8 	sw	t4,-8(t3)
    54e0:	8d2ffffc 	lw	t7,-4(t1)
    54e4:	1538fff8 	bne	t1,t8,54c8 <L808C5FE4+0x674>
    54e8:	ad6ffffc 	sw	t7,-4(t3)
    54ec:	3c190000 	lui	t9,0x0
    54f0:	27390000 	addiu	t9,t9,0
    54f4:	272d0030 	addiu	t5,t9,48
    54f8:	00805025 	move	t2,a0
    54fc:	8f280000 	lw	t0,0(t9)
    5500:	2739000c 	addiu	t9,t9,12
    5504:	254a000c 	addiu	t2,t2,12
    5508:	ad48fff4 	sw	t0,-12(t2)
    550c:	8f2efff8 	lw	t6,-8(t9)
    5510:	ad4efff8 	sw	t6,-8(t2)
    5514:	8f28fffc 	lw	t0,-4(t9)
    5518:	172dfff8 	bne	t9,t5,54fc <L808C5FE4+0x6a8>
    551c:	ad48fffc 	sw	t0,-4(t2)
    5520:	861801a2 	lh	t8,418(s0)
    5524:	57000008 	bnezl	t8,5548 <L808C5FE4+0x6f4>
    5528:	860c01a0 	lh	t4,416(s0)
    552c:	860901a0 	lh	t1,416(s0)
    5530:	00095880 	sll	t3,t1,0x2
    5534:	01695823 	subu	t3,t3,t1
    5538:	000b5880 	sll	t3,t3,0x2
    553c:	10000006 	b	5558 <L808C5FE4+0x704>
    5540:	006b1021 	addu	v0,v1,t3
    5544:	860c01a0 	lh	t4,416(s0)
    5548:	000c7880 	sll	t7,t4,0x2
    554c:	01ec7823 	subu	t7,t7,t4
    5550:	000f7880 	sll	t7,t7,0x2
    5554:	008f1021 	addu	v0,a0,t7
    5558:	3c0141a0 	lui	at,0x41a0
    555c:	44812000 	mtc1	at,$f4
    5560:	c6120204 	lwc1	$f18,516(s0)
    5564:	44804000 	mtc1	zero,$f8
    5568:	8c450000 	lw	a1,0(v0)
    556c:	46049182 	mul.s	$f6,$f18,$f4
    5570:	26040428 	addiu	a0,s0,1064
    5574:	3c063e4c 	lui	a2,0x3e4c
    5578:	34c6cccd 	ori	a2,a2,0xcccd
    557c:	afa4004c 	sw	a0,76(sp)
    5580:	afa20078 	sw	v0,120(sp)
    5584:	e7a80010 	swc1	$f8,16(sp)
    5588:	44073000 	mfc1	a3,$f6
    558c:	0c000000 	jal	0 <func_808C1190>
    5590:	00000000 	nop
    5594:	8fad0160 	lw	t5,352(sp)
    5598:	3c0141f0 	lui	at,0x41f0
    559c:	44819000 	mtc1	at,$f18
    55a0:	c5aa0028 	lwc1	$f10,40(t5)
    55a4:	3c0141a0 	lui	at,0x41a0
    55a8:	44814000 	mtc1	at,$f8
    55ac:	c6060204 	lwc1	$f6,516(s0)
    55b0:	46125100 	add.s	$f4,$f10,$f18
    55b4:	44809000 	mtc1	zero,$f18
    55b8:	46083282 	mul.s	$f10,$f6,$f8
    55bc:	3c063dcc 	lui	a2,0x3dcc
    55c0:	44052000 	mfc1	a1,$f4
    55c4:	34c6cccd 	ori	a2,a2,0xcccd
    55c8:	2604042c 	addiu	a0,s0,1068
    55cc:	e7b20010 	swc1	$f18,16(sp)
    55d0:	44075000 	mfc1	a3,$f10
    55d4:	0c000000 	jal	0 <func_808C1190>
    55d8:	00000000 	nop
    55dc:	3c0141a0 	lui	at,0x41a0
    55e0:	44813000 	mtc1	at,$f6
    55e4:	c6040204 	lwc1	$f4,516(s0)
    55e8:	8fa20078 	lw	v0,120(sp)
    55ec:	44805000 	mtc1	zero,$f10
    55f0:	46062202 	mul.s	$f8,$f4,$f6
    55f4:	3c063dcc 	lui	a2,0x3dcc
    55f8:	8c450008 	lw	a1,8(v0)
    55fc:	34c6cccd 	ori	a2,a2,0xcccd
    5600:	26040430 	addiu	a0,s0,1072
    5604:	e7aa0010 	swc1	$f10,16(sp)
    5608:	44074000 	mfc1	a3,$f8
    560c:	0c000000 	jal	0 <func_808C1190>
    5610:	00000000 	nop
    5614:	3c013f80 	lui	at,0x3f80
    5618:	44811000 	mtc1	at,$f2
    561c:	44809000 	mtc1	zero,$f18
    5620:	3c073ca3 	lui	a3,0x3ca3
    5624:	44051000 	mfc1	a1,$f2
    5628:	44061000 	mfc1	a2,$f2
    562c:	34e7d70a 	ori	a3,a3,0xd70a
    5630:	26040204 	addiu	a0,s0,516
    5634:	0c000000 	jal	0 <func_808C1190>
    5638:	e7b20010 	swc1	$f18,16(sp)
    563c:	1000008c 	b	5870 <L808C5FE4+0xa1c>
    5640:	860301da 	lh	v1,474(s0)
    5644:	861901a2 	lh	t9,418(s0)
    5648:	3c010000 	lui	at,0x0
    564c:	57200008 	bnezl	t9,5670 <L808C5FE4+0x81c>
    5650:	c60a0230 	lwc1	$f10,560(s0)
    5654:	3c010000 	lui	at,0x0
    5658:	c4260000 	lwc1	$f6,0(at)
    565c:	c6040230 	lwc1	$f4,560(s0)
    5660:	46062200 	add.s	$f8,$f4,$f6
    5664:	10000005 	b	567c <L808C5FE4+0x828>
    5668:	e6080230 	swc1	$f8,560(s0)
    566c:	c60a0230 	lwc1	$f10,560(s0)
    5670:	c4320000 	lwc1	$f18,0(at)
    5674:	46125101 	sub.s	$f4,$f10,$f18
    5678:	e6040230 	swc1	$f4,560(s0)
    567c:	3c010000 	lui	at,0x0
    5680:	c4200000 	lwc1	$f0,0(at)
    5684:	3c05435c 	lui	a1,0x435c
    5688:	3c0740a0 	lui	a3,0x40a0
    568c:	44060000 	mfc1	a2,$f0
    5690:	0c000000 	jal	0 <func_808C1190>
    5694:	e7a00010 	swc1	$f0,16(sp)
    5698:	0c000000 	jal	0 <func_808C1190>
    569c:	c60c0230 	lwc1	$f12,560(s0)
    56a0:	c606022c 	lwc1	$f6,556(s0)
    56a4:	46003202 	mul.s	$f8,$f6,$f0
    56a8:	e7a80180 	swc1	$f8,384(sp)
    56ac:	0c000000 	jal	0 <func_808C1190>
    56b0:	c60c0230 	lwc1	$f12,560(s0)
    56b4:	c60a022c 	lwc1	$f10,556(s0)
    56b8:	c7ac0180 	lwc1	$f12,384(sp)
    56bc:	c6120024 	lwc1	$f18,36(s0)
    56c0:	46005382 	mul.s	$f14,$f10,$f0
    56c4:	44803000 	mtc1	zero,$f6
    56c8:	460c9100 	add.s	$f4,$f18,$f12
    56cc:	26040428 	addiu	a0,s0,1064
    56d0:	3c063e4c 	lui	a2,0x3e4c
    56d4:	34c6cccd 	ori	a2,a2,0xcccd
    56d8:	44052000 	mfc1	a1,$f4
    56dc:	afa4004c 	sw	a0,76(sp)
    56e0:	e7ae017c 	swc1	$f14,380(sp)
    56e4:	3c074248 	lui	a3,0x4248
    56e8:	0c000000 	jal	0 <func_808C1190>
    56ec:	e7a60010 	swc1	$f6,16(sp)
    56f0:	3c0141a0 	lui	at,0x41a0
    56f4:	44815000 	mtc1	at,$f10
    56f8:	c6080028 	lwc1	$f8,40(s0)
    56fc:	44802000 	mtc1	zero,$f4
    5700:	3c063e4c 	lui	a2,0x3e4c
    5704:	460a4480 	add.s	$f18,$f8,$f10
    5708:	34c6cccd 	ori	a2,a2,0xcccd
    570c:	2604042c 	addiu	a0,s0,1068
    5710:	3c074248 	lui	a3,0x4248
    5714:	44059000 	mfc1	a1,$f18
    5718:	0c000000 	jal	0 <func_808C1190>
    571c:	e7a40010 	swc1	$f4,16(sp)
    5720:	c7ae017c 	lwc1	$f14,380(sp)
    5724:	c606002c 	lwc1	$f6,44(s0)
    5728:	44805000 	mtc1	zero,$f10
    572c:	3c063e4c 	lui	a2,0x3e4c
    5730:	460e3200 	add.s	$f8,$f6,$f14
    5734:	34c6cccd 	ori	a2,a2,0xcccd
    5738:	26040430 	addiu	a0,s0,1072
    573c:	3c074248 	lui	a3,0x4248
    5740:	44054000 	mfc1	a1,$f8
    5744:	0c000000 	jal	0 <func_808C1190>
    5748:	e7aa0010 	swc1	$f10,16(sp)
    574c:	44801000 	mtc1	zero,$f2
    5750:	3c063e4c 	lui	a2,0x3e4c
    5754:	3c073c23 	lui	a3,0x3c23
    5758:	44051000 	mfc1	a1,$f2
    575c:	34e7d70a 	ori	a3,a3,0xd70a
    5760:	34c6cccd 	ori	a2,a2,0xcccd
    5764:	2604023c 	addiu	a0,s0,572
    5768:	0c000000 	jal	0 <func_808C1190>
    576c:	e7a20010 	swc1	$f2,16(sp)
    5770:	1000003f 	b	5870 <L808C5FE4+0xa1c>
    5774:	860301da 	lh	v1,474(s0)
    5778:	860a01a2 	lh	t2,418(s0)
    577c:	2604023c 	addiu	a0,s0,572
    5780:	3c053f00 	lui	a1,0x3f00
    5784:	1540000c 	bnez	t2,57b8 <L808C5FE4+0x964>
    5788:	3c063e4c 	lui	a2,0x3e4c
    578c:	44809000 	mtc1	zero,$f18
    5790:	3c063e4c 	lui	a2,0x3e4c
    5794:	3c073d4c 	lui	a3,0x3d4c
    5798:	34e7cccd 	ori	a3,a3,0xcccd
    579c:	34c6cccd 	ori	a2,a2,0xcccd
    57a0:	2604023c 	addiu	a0,s0,572
    57a4:	3c05bf00 	lui	a1,0xbf00
    57a8:	0c000000 	jal	0 <func_808C1190>
    57ac:	e7b20010 	swc1	$f18,16(sp)
    57b0:	10000007 	b	57d0 <L808C5FE4+0x97c>
    57b4:	00000000 	nop
    57b8:	44802000 	mtc1	zero,$f4
    57bc:	3c073d4c 	lui	a3,0x3d4c
    57c0:	34e7cccd 	ori	a3,a3,0xcccd
    57c4:	34c6cccd 	ori	a2,a2,0xcccd
    57c8:	0c000000 	jal	0 <func_808C1190>
    57cc:	e7a40010 	swc1	$f4,16(sp)
    57d0:	3c010000 	lui	at,0x0
    57d4:	c4200000 	lwc1	$f0,0(at)
    57d8:	3c0140a0 	lui	at,0x40a0
    57dc:	44814000 	mtc1	at,$f8
    57e0:	c6060204 	lwc1	$f6,516(s0)
    57e4:	26040428 	addiu	a0,s0,1064
    57e8:	3c05c45e 	lui	a1,0xc45e
    57ec:	46083282 	mul.s	$f10,$f6,$f8
    57f0:	44060000 	mfc1	a2,$f0
    57f4:	34a58000 	ori	a1,a1,0x8000
    57f8:	afa4004c 	sw	a0,76(sp)
    57fc:	e7a00010 	swc1	$f0,16(sp)
    5800:	44075000 	mfc1	a3,$f10
    5804:	0c000000 	jal	0 <func_808C1190>
    5808:	00000000 	nop
    580c:	3c010000 	lui	at,0x0
    5810:	c4220000 	lwc1	$f2,0(at)
    5814:	3c0140a0 	lui	at,0x40a0
    5818:	44812000 	mtc1	at,$f4
    581c:	c6120204 	lwc1	$f18,516(s0)
    5820:	3c05c54e 	lui	a1,0xc54e
    5824:	44061000 	mfc1	a2,$f2
    5828:	46049182 	mul.s	$f6,$f18,$f4
    582c:	34a58000 	ori	a1,a1,0x8000
    5830:	26040430 	addiu	a0,s0,1072
    5834:	e7a20010 	swc1	$f2,16(sp)
    5838:	44073000 	mfc1	a3,$f6
    583c:	0c000000 	jal	0 <func_808C1190>
    5840:	00000000 	nop
    5844:	3c013f80 	lui	at,0x3f80
    5848:	44811000 	mtc1	at,$f2
    584c:	44804000 	mtc1	zero,$f8
    5850:	3c073d4c 	lui	a3,0x3d4c
    5854:	44051000 	mfc1	a1,$f2
    5858:	44061000 	mfc1	a2,$f2
    585c:	34e7cccd 	ori	a3,a3,0xcccd
    5860:	26040204 	addiu	a0,s0,516
    5864:	0c000000 	jal	0 <func_808C1190>
    5868:	e7a80010 	swc1	$f8,16(sp)
    586c:	860301da 	lh	v1,474(s0)
    5870:	24010334 	li	at,820
    5874:	5461001f 	bnel	v1,at,58f4 <L808C5FE4+0xaa0>
    5878:	24010258 	li	at,600
    587c:	0c000000 	jal	0 <func_808C1190>
    5880:	24040021 	li	a0,33
    5884:	0c000000 	jal	0 <func_808C1190>
    5888:	860400b6 	lh	a0,182(s0)
    588c:	e7a00050 	swc1	$f0,80(sp)
    5890:	0c000000 	jal	0 <func_808C1190>
    5894:	860400b6 	lh	a0,182(s0)
    5898:	3c01c248 	lui	at,0xc248
    589c:	44816000 	mtc1	at,$f12
    58a0:	c7aa0050 	lwc1	$f10,80(sp)
    58a4:	c6040024 	lwc1	$f4,36(s0)
    58a8:	c6080028 	lwc1	$f8,40(s0)
    58ac:	460c5482 	mul.s	$f18,$f10,$f12
    58b0:	8fa501a4 	lw	a1,420(sp)
    58b4:	e7a80010 	swc1	$f8,16(sp)
    58b8:	460c0282 	mul.s	$f10,$f0,$f12
    58bc:	2406005f 	li	a2,95
    58c0:	24a41c24 	addiu	a0,a1,7204
    58c4:	46049180 	add.s	$f6,$f18,$f4
    58c8:	c612002c 	lwc1	$f18,44(s0)
    58cc:	afa00024 	sw	zero,36(sp)
    58d0:	afa00020 	sw	zero,32(sp)
    58d4:	46125100 	add.s	$f4,$f10,$f18
    58d8:	44073000 	mfc1	a3,$f6
    58dc:	afa0001c 	sw	zero,28(sp)
    58e0:	afa00018 	sw	zero,24(sp)
    58e4:	0c000000 	jal	0 <func_808C1190>
    58e8:	e7a40014 	swc1	$f4,20(sp)
    58ec:	860301da 	lh	v1,474(s0)
    58f0:	24010258 	li	at,600
    58f4:	14610046 	bne	v1,at,5a10 <L808C5FE4+0xbbc>
    58f8:	8fa401a4 	lw	a0,420(sp)
    58fc:	248e1c24 	addiu	t6,a0,7204
    5900:	afae0044 	sw	t6,68(sp)
    5904:	0c000000 	jal	0 <func_808C1190>
    5908:	00002825 	move	a1,zero
    590c:	8fa8004c 	lw	t0,76(sp)
    5910:	00003025 	move	a2,zero
    5914:	8d090000 	lw	t1,0(t0)
    5918:	ac49005c 	sw	t1,92(v0)
    591c:	8d180004 	lw	t8,4(t0)
    5920:	ac580060 	sw	t8,96(v0)
    5924:	8d090008 	lw	t1,8(t0)
    5928:	ac490064 	sw	t1,100(v0)
    592c:	8fab004c 	lw	t3,76(sp)
    5930:	8d6f0000 	lw	t7,0(t3)
    5934:	ac4f0074 	sw	t7,116(v0)
    5938:	8d6c0004 	lw	t4,4(t3)
    593c:	ac4c0078 	sw	t4,120(v0)
    5940:	8d6f0008 	lw	t7,8(t3)
    5944:	ac4f007c 	sw	t7,124(v0)
    5948:	8fad0048 	lw	t5,72(sp)
    594c:	8daa0000 	lw	t2,0(t5)
    5950:	ac4a0050 	sw	t2,80(v0)
    5954:	8db90004 	lw	t9,4(t5)
    5958:	ac590054 	sw	t9,84(v0)
    595c:	8daa0008 	lw	t2,8(t5)
    5960:	ac4a0058 	sw	t2,88(v0)
    5964:	860501b4 	lh	a1,436(s0)
    5968:	0c000000 	jal	0 <func_808C1190>
    596c:	8fa401a4 	lw	a0,420(sp)
    5970:	240e0064 	li	t6,100
    5974:	a60001bc 	sh	zero,444(s0)
    5978:	a60001b4 	sh	zero,436(s0)
    597c:	a60e019c 	sh	t6,412(s0)
    5980:	8fa401a4 	lw	a0,420(sp)
    5984:	00002825 	move	a1,zero
    5988:	0c000000 	jal	0 <func_808C1190>
    598c:	24060007 	li	a2,7
    5990:	8fa401a4 	lw	a0,420(sp)
    5994:	0c000000 	jal	0 <func_808C1190>
    5998:	24851d64 	addiu	a1,a0,7524
    599c:	8fa401a4 	lw	a0,420(sp)
    59a0:	02002825 	move	a1,s0
    59a4:	0c000000 	jal	0 <func_808C1190>
    59a8:	24060007 	li	a2,7
    59ac:	3c010000 	lui	at,0x0
    59b0:	c4260000 	lwc1	$f6,0(at)
    59b4:	3c010000 	lui	at,0x0
    59b8:	c4280000 	lwc1	$f8,0(at)
    59bc:	3c010000 	lui	at,0x0
    59c0:	c42a0000 	lwc1	$f10,0(at)
    59c4:	8fa40044 	lw	a0,68(sp)
    59c8:	02002825 	move	a1,s0
    59cc:	8fa601a4 	lw	a2,420(sp)
    59d0:	2407005d 	li	a3,93
    59d4:	afa0001c 	sw	zero,28(sp)
    59d8:	afa00020 	sw	zero,32(sp)
    59dc:	afa00024 	sw	zero,36(sp)
    59e0:	afa00028 	sw	zero,40(sp)
    59e4:	e7a60010 	swc1	$f6,16(sp)
    59e8:	e7a80014 	swc1	$f8,20(sp)
    59ec:	0c000000 	jal	0 <func_808C1190>
    59f0:	e7aa0018 	swc1	$f10,24(sp)
    59f4:	8fa401a4 	lw	a0,420(sp)
    59f8:	44809000 	mtc1	zero,$f18
    59fc:	3c050001 	lui	a1,0x1
    5a00:	00a42821 	addu	a1,a1,a0
    5a04:	e6120168 	swc1	$f18,360(s0)
    5a08:	0c000000 	jal	0 <func_808C1190>
    5a0c:	80a51cbc 	lb	a1,7356(a1)
    5a10:	860801da 	lh	t0,474(s0)
    5a14:	290102c6 	slti	at,t0,710
    5a18:	50200037 	beqzl	at,5af8 <L808C6C84+0x4>
    5a1c:	860501b4 	lh	a1,436(s0)
    5a20:	0c000000 	jal	0 <func_808C1190>
    5a24:	00000000 	nop
    5a28:	3c013f00 	lui	at,0x3f00
    5a2c:	44812000 	mtc1	at,$f4
    5a30:	3c180000 	lui	t8,0x0
    5a34:	3c090000 	lui	t1,0x0
    5a38:	4604003c 	c.lt.s	$f0,$f4
    5a3c:	3c014270 	lui	at,0x4270
    5a40:	4502002d 	bc1fl	5af8 <L808C6C84+0x4>
    5a44:	860501b4 	lh	a1,436(s0)
    5a48:	8f180000 	lw	t8,0(t8)
    5a4c:	8d290000 	lw	t1,0(t1)
    5a50:	44816000 	mtc1	at,$f12
    5a54:	afb80064 	sw	t8,100(sp)
    5a58:	0c000000 	jal	0 <func_808C1190>
    5a5c:	afa90060 	sw	t1,96(sp)
    5a60:	c6060038 	lwc1	$f6,56(s0)
    5a64:	46060200 	add.s	$f8,$f0,$f6
    5a68:	0c000000 	jal	0 <func_808C1190>
    5a6c:	e7a80068 	swc1	$f8,104(sp)
    5a70:	3c014248 	lui	at,0x4248
    5a74:	44815000 	mtc1	at,$f10
    5a78:	3c010000 	lui	at,0x0
    5a7c:	c4240000 	lwc1	$f4,0(at)
    5a80:	460a0482 	mul.s	$f18,$f0,$f10
    5a84:	3c014270 	lui	at,0x4270
    5a88:	44816000 	mtc1	at,$f12
    5a8c:	46049180 	add.s	$f6,$f18,$f4
    5a90:	0c000000 	jal	0 <func_808C1190>
    5a94:	e7a6006c 	swc1	$f6,108(sp)
    5a98:	c6080040 	lwc1	$f8,64(s0)
    5a9c:	46080280 	add.s	$f10,$f0,$f8
    5aa0:	0c000000 	jal	0 <func_808C1190>
    5aa4:	e7aa0070 	swc1	$f10,112(sp)
    5aa8:	3c014248 	lui	at,0x4248
    5aac:	44819000 	mtc1	at,$f18
    5ab0:	240b0005 	li	t3,5
    5ab4:	240c0001 	li	t4,1
    5ab8:	46120102 	mul.s	$f4,$f0,$f18
    5abc:	afac0014 	sw	t4,20(sp)
    5ac0:	afab0010 	sw	t3,16(sp)
    5ac4:	8fa401a4 	lw	a0,420(sp)
    5ac8:	27a50068 	addiu	a1,sp,104
    5acc:	27a60064 	addiu	a2,sp,100
    5ad0:	27a70060 	addiu	a3,sp,96
    5ad4:	4600218d 	trunc.w.s	$f6,$f4
    5ad8:	440d3000 	mfc1	t5,$f6
    5adc:	00000000 	nop
    5ae0:	000dcc00 	sll	t9,t5,0x10
    5ae4:	00195403 	sra	t2,t9,0x10
    5ae8:	254e0032 	addiu	t6,t2,50
    5aec:	0c000000 	jal	0 <func_808C1190>
    5af0:	afae0018 	sw	t6,24(sp)

00005af4 <L808C6C84>:
    5af4:	860501b4 	lh	a1,436(s0)
    5af8:	8fa401a4 	lw	a0,420(sp)
    5afc:	26060434 	addiu	a2,s0,1076
    5b00:	50a00004 	beqzl	a1,5b14 <L808C6C84+0x20>
    5b04:	8fbf003c 	lw	ra,60(sp)
    5b08:	0c000000 	jal	0 <func_808C1190>
    5b0c:	26070428 	addiu	a3,s0,1064
    5b10:	8fbf003c 	lw	ra,60(sp)
    5b14:	8fb00038 	lw	s0,56(sp)
    5b18:	27bd01a0 	addiu	sp,sp,416
    5b1c:	03e00008 	jr	ra
    5b20:	00000000 	nop

00005b24 <func_808C6CB4>:
    5b24:	3c0e0000 	lui	t6,0x0
    5b28:	25ce0000 	addiu	t6,t6,0
    5b2c:	8dd80000 	lw	t8,0(t6)
    5b30:	3c020001 	lui	v0,0x1
    5b34:	27bdffe8 	addiu	sp,sp,-24
    5b38:	00441021 	addu	v0,v0,a0
    5b3c:	27a60008 	addiu	a2,sp,8
    5b40:	8c421e10 	lw	v0,7696(v0)
    5b44:	acd80000 	sw	t8,0(a2)
    5b48:	8dcf0004 	lw	t7,4(t6)
    5b4c:	00001825 	move	v1,zero
    5b50:	24080003 	li	t0,3
    5b54:	accf0004 	sw	t7,4(a2)
    5b58:	8dd80008 	lw	t8,8(t6)
    5b5c:	24070001 	li	a3,1
    5b60:	acd80008 	sw	t8,8(a2)
    5b64:	90590024 	lbu	t9,36(v0)
    5b68:	24630001 	addiu	v1,v1,1
    5b6c:	00031c00 	sll	v1,v1,0x10
    5b70:	13200034 	beqz	t9,5c44 <func_808C6CB4+0x120>
    5b74:	00031c03 	sra	v1,v1,0x10
    5b78:	c440000c 	lwc1	$f0,12(v0)
    5b7c:	c4440000 	lwc1	$f4,0(v0)
    5b80:	c4420010 	lwc1	$f2,16(v0)
    5b84:	c4480004 	lwc1	$f8,4(v0)
    5b88:	c44c0014 	lwc1	$f12,20(v0)
    5b8c:	c4500008 	lwc1	$f16,8(v0)
    5b90:	46002180 	add.s	$f6,$f4,$f0
    5b94:	c4440018 	lwc1	$f4,24(v0)
    5b98:	90490025 	lbu	t1,37(v0)
    5b9c:	46024280 	add.s	$f10,$f8,$f2
    5ba0:	c448001c 	lwc1	$f8,28(v0)
    5ba4:	e4460000 	swc1	$f6,0(v0)
    5ba8:	460c8480 	add.s	$f18,$f16,$f12
    5bac:	c4500020 	lwc1	$f16,32(v0)
    5bb0:	e44a0004 	swc1	$f10,4(v0)
    5bb4:	46040180 	add.s	$f6,$f0,$f4
    5bb8:	e4520008 	swc1	$f18,8(v0)
    5bbc:	904b0024 	lbu	t3,36(v0)
    5bc0:	46081280 	add.s	$f10,$f2,$f8
    5bc4:	252a0001 	addiu	t2,t1,1
    5bc8:	a04a0025 	sb	t2,37(v0)
    5bcc:	46106480 	add.s	$f18,$f12,$f16
    5bd0:	e446000c 	swc1	$f6,12(v0)
    5bd4:	e44a0010 	swc1	$f10,16(v0)
    5bd8:	14eb001a 	bne	a3,t3,5c44 <func_808C6CB4+0x120>
    5bdc:	e4520014 	swc1	$f18,20(v0)
    5be0:	314400ff 	andi	a0,t2,0xff
    5be4:	04810004 	bgez	a0,5bf8 <func_808C6CB4+0xd4>
    5be8:	30840003 	andi	a0,a0,0x3
    5bec:	10800002 	beqz	a0,5bf8 <func_808C6CB4+0xd4>
    5bf0:	00000000 	nop
    5bf4:	2484fffc 	addiu	a0,a0,-4
    5bf8:	00042400 	sll	a0,a0,0x10
    5bfc:	00042403 	sra	a0,a0,0x10
    5c00:	00880019 	multu	a0,t0
    5c04:	8458002a 	lh	t8,42(v0)
    5c08:	2719ffec 	addiu	t9,t8,-20
    5c0c:	00006012 	mflo	t4
    5c10:	00cc2821 	addu	a1,a2,t4
    5c14:	90ad0000 	lbu	t5,0(a1)
    5c18:	a04d0026 	sb	t5,38(v0)
    5c1c:	90ae0001 	lbu	t6,1(a1)
    5c20:	a04e0027 	sb	t6,39(v0)
    5c24:	90af0002 	lbu	t7,2(a1)
    5c28:	a459002a 	sh	t9,42(v0)
    5c2c:	8449002a 	lh	t1,42(v0)
    5c30:	a04f0028 	sb	t7,40(v0)
    5c34:	5d200004 	bgtzl	t1,5c48 <func_808C6CB4+0x124>
    5c38:	28610050 	slti	at,v1,80
    5c3c:	a440002a 	sh	zero,42(v0)
    5c40:	a0400024 	sb	zero,36(v0)
    5c44:	28610050 	slti	at,v1,80
    5c48:	1420ffc6 	bnez	at,5b64 <func_808C6CB4+0x40>
    5c4c:	24420030 	addiu	v0,v0,48
    5c50:	03e00008 	jr	ra
    5c54:	27bd0018 	addiu	sp,sp,24

00005c58 <func_808C6DE8>:
    5c58:	27bdff70 	addiu	sp,sp,-144
    5c5c:	afb00020 	sw	s0,32(sp)
    5c60:	afbf0044 	sw	ra,68(sp)
    5c64:	afbe0040 	sw	s8,64(sp)
    5c68:	afb7003c 	sw	s7,60(sp)
    5c6c:	afb60038 	sw	s6,56(sp)
    5c70:	afb50034 	sw	s5,52(sp)
    5c74:	afb40030 	sw	s4,48(sp)
    5c78:	afb3002c 	sw	s3,44(sp)
    5c7c:	afb20028 	sw	s2,40(sp)
    5c80:	afb10024 	sw	s1,36(sp)
    5c84:	f7b40018 	sdc1	$f20,24(sp)
    5c88:	8c910000 	lw	s1,0(a0)
    5c8c:	3c100001 	lui	s0,0x1
    5c90:	0080b825 	move	s7,a0
    5c94:	02048021 	addu	s0,s0,a0
    5c98:	3c060000 	lui	a2,0x0
    5c9c:	00009825 	move	s3,zero
    5ca0:	8e101e10 	lw	s0,7696(s0)
    5ca4:	24c60000 	addiu	a2,a2,0
    5ca8:	27a4006c 	addiu	a0,sp,108
    5cac:	2407146c 	li	a3,5228
    5cb0:	0c000000 	jal	0 <func_808C1190>
    5cb4:	02202825 	move	a1,s1
    5cb8:	0c000000 	jal	0 <func_808C1190>
    5cbc:	8ee40000 	lw	a0,0(s7)
    5cc0:	3c013f80 	lui	at,0x3f80
    5cc4:	4481a000 	mtc1	at,$f20
    5cc8:	0000a025 	move	s4,zero
    5ccc:	241e0001 	li	s8,1
    5cd0:	3c16de00 	lui	s6,0xde00
    5cd4:	920e0024 	lbu	t6,36(s0)
    5cd8:	3c010001 	lui	at,0x1
    5cdc:	34211da0 	ori	at,at,0x1da0
    5ce0:	17ce0042 	bne	s8,t6,5dec <func_808C6DE8+0x194>
    5ce4:	02e19021 	addu	s2,s7,at
    5ce8:	8e2202d0 	lw	v0,720(s1)
    5cec:	3c150601 	lui	s5,0x601
    5cf0:	3c18e700 	lui	t8,0xe700
    5cf4:	244f0008 	addiu	t7,v0,8
    5cf8:	ae2f02d0 	sw	t7,720(s1)
    5cfc:	26b59dd0 	addiu	s5,s5,-25136
    5d00:	ac400004 	sw	zero,4(v0)
    5d04:	1660000a 	bnez	s3,5d30 <func_808C6DE8+0xd8>
    5d08:	ac580000 	sw	t8,0(v0)
    5d0c:	8e2202d0 	lw	v0,720(s1)
    5d10:	3c040601 	lui	a0,0x601
    5d14:	24849d50 	addiu	a0,a0,-25264
    5d18:	24590008 	addiu	t9,v0,8
    5d1c:	ae3902d0 	sw	t9,720(s1)
    5d20:	26730001 	addiu	s3,s3,1
    5d24:	327300ff 	andi	s3,s3,0xff
    5d28:	ac440004 	sw	a0,4(v0)
    5d2c:	ac560000 	sw	s6,0(v0)
    5d30:	8e2202d0 	lw	v0,720(s1)
    5d34:	3c09fa00 	lui	t1,0xfa00
    5d38:	00003825 	move	a3,zero
    5d3c:	24480008 	addiu	t0,v0,8
    5d40:	ae2802d0 	sw	t0,720(s1)
    5d44:	ac490000 	sw	t1,0(v0)
    5d48:	920b0026 	lbu	t3,38(s0)
    5d4c:	920e0027 	lbu	t6,39(s0)
    5d50:	92080028 	lbu	t0,40(s0)
    5d54:	000b6600 	sll	t4,t3,0x18
    5d58:	860b002a 	lh	t3,42(s0)
    5d5c:	000e7c00 	sll	t7,t6,0x10
    5d60:	018fc025 	or	t8,t4,t7
    5d64:	00084a00 	sll	t1,t0,0x8
    5d68:	03095025 	or	t2,t8,t1
    5d6c:	316d00ff 	andi	t5,t3,0xff
    5d70:	014d7025 	or	t6,t2,t5
    5d74:	ac4e0004 	sw	t6,4(v0)
    5d78:	8e060008 	lw	a2,8(s0)
    5d7c:	c60e0004 	lwc1	$f14,4(s0)
    5d80:	0c000000 	jal	0 <func_808C1190>
    5d84:	c60c0000 	lwc1	$f12,0(s0)
    5d88:	0c000000 	jal	0 <func_808C1190>
    5d8c:	02402025 	move	a0,s2
    5d90:	c60c002c 	lwc1	$f12,44(s0)
    5d94:	4406a000 	mfc1	a2,$f20
    5d98:	24070001 	li	a3,1
    5d9c:	0c000000 	jal	0 <func_808C1190>
    5da0:	46006386 	mov.s	$f14,$f12
    5da4:	8e2202d0 	lw	v0,720(s1)
    5da8:	3c0fda38 	lui	t7,0xda38
    5dac:	35ef0003 	ori	t7,t7,0x3
    5db0:	244c0008 	addiu	t4,v0,8
    5db4:	ae2c02d0 	sw	t4,720(s1)
    5db8:	3c050000 	lui	a1,0x0
    5dbc:	24a50000 	addiu	a1,a1,0
    5dc0:	02202025 	move	a0,s1
    5dc4:	24061485 	li	a2,5253
    5dc8:	ac4f0000 	sw	t7,0(v0)
    5dcc:	0c000000 	jal	0 <func_808C1190>
    5dd0:	00409025 	move	s2,v0
    5dd4:	ae420004 	sw	v0,4(s2)
    5dd8:	8e2202d0 	lw	v0,720(s1)
    5ddc:	24590008 	addiu	t9,v0,8
    5de0:	ae3902d0 	sw	t9,720(s1)
    5de4:	ac550004 	sw	s5,4(v0)
    5de8:	ac560000 	sw	s6,0(v0)
    5dec:	26940001 	addiu	s4,s4,1
    5df0:	0014a400 	sll	s4,s4,0x10
    5df4:	0014a403 	sra	s4,s4,0x10
    5df8:	2a810050 	slti	at,s4,80
    5dfc:	1420ffb5 	bnez	at,5cd4 <func_808C6DE8+0x7c>
    5e00:	26100030 	addiu	s0,s0,48
    5e04:	3c060000 	lui	a2,0x0
    5e08:	24c60000 	addiu	a2,a2,0
    5e0c:	27a4006c 	addiu	a0,sp,108
    5e10:	02202825 	move	a1,s1
    5e14:	0c000000 	jal	0 <func_808C1190>
    5e18:	2407148a 	li	a3,5258
    5e1c:	8fbf0044 	lw	ra,68(sp)
    5e20:	d7b40018 	ldc1	$f20,24(sp)
    5e24:	8fb00020 	lw	s0,32(sp)
    5e28:	8fb10024 	lw	s1,36(sp)
    5e2c:	8fb20028 	lw	s2,40(sp)
    5e30:	8fb3002c 	lw	s3,44(sp)
    5e34:	8fb40030 	lw	s4,48(sp)
    5e38:	8fb50034 	lw	s5,52(sp)
    5e3c:	8fb60038 	lw	s6,56(sp)
    5e40:	8fb7003c 	lw	s7,60(sp)
    5e44:	8fbe0040 	lw	s8,64(sp)
    5e48:	03e00008 	jr	ra
    5e4c:	27bd0090 	addiu	sp,sp,144
