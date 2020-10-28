
build/src/overlays/actors/ovl_Boss_Ganondrof/z_boss_ganondrof.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80910640>:
       0:	afa60008 	sw	a2,8(sp)
       4:	00063400 	sll	a2,a2,0x10
       8:	00063403 	sra	a2,a2,0x10
       c:	00c57021 	addu	t6,a2,a1
      10:	91cf0000 	lbu	t7,0(t6)
      14:	11e00008 	beqz	t7,38 <func_80910640+0x38>
      18:	00000000 	nop
      1c:	04c10003 	bgez	a2,2c <func_80910640+0x2c>
      20:	0006c083 	sra	t8,a2,0x2
      24:	24c10003 	addiu	at,a2,3
      28:	0001c083 	sra	t8,at,0x2
      2c:	0018c840 	sll	t9,t8,0x1
      30:	00994021 	addu	t0,a0,t9
      34:	a5000000 	sh	zero,0(t0)
      38:	03e00008 	jr	ra
      3c:	00000000 	nop

00000040 <func_80910680>:
      40:	afa60008 	sw	a2,8(sp)
      44:	00063400 	sll	a2,a2,0x10
      48:	00063403 	sra	a2,a2,0x10
      4c:	00c57021 	addu	t6,a2,a1
      50:	91cf0000 	lbu	t7,0(t6)
      54:	11e00008 	beqz	t7,78 <func_80910680+0x38>
      58:	00000000 	nop
      5c:	04c10003 	bgez	a2,6c <func_80910680+0x2c>
      60:	0006c043 	sra	t8,a2,0x1
      64:	24c10001 	addiu	at,a2,1
      68:	0001c043 	sra	t8,at,0x1
      6c:	0018c840 	sll	t9,t8,0x1
      70:	00994021 	addu	t0,a0,t9
      74:	a5000000 	sh	zero,0(t0)
      78:	03e00008 	jr	ra
      7c:	00000000 	nop

00000080 <func_809106C0>:
      80:	afa60008 	sw	a2,8(sp)
      84:	00063400 	sll	a2,a2,0x10
      88:	00063403 	sra	a2,a2,0x10
      8c:	00c57021 	addu	t6,a2,a1
      90:	91cf0000 	lbu	t7,0(t6)
      94:	0006c040 	sll	t8,a2,0x1
      98:	0098c821 	addu	t9,a0,t8
      9c:	11e00002 	beqz	t7,a8 <func_809106C0+0x28>
      a0:	00000000 	nop
      a4:	a7200000 	sh	zero,0(t9)
      a8:	03e00008 	jr	ra
      ac:	00000000 	nop

000000b0 <func_809106F0>:
      b0:	afa60008 	sw	a2,8(sp)
      b4:	00063400 	sll	a2,a2,0x10
      b8:	00063403 	sra	a2,a2,0x10
      bc:	00c57021 	addu	t6,a2,a1
      c0:	91cf0000 	lbu	t7,0(t6)
      c4:	30d900f0 	andi	t9,a2,0xf0
      c8:	00194040 	sll	t0,t9,0x1
      cc:	11e00008 	beqz	t7,f0 <func_809106F0+0x40>
      d0:	30d8000f 	andi	t8,a2,0xf
      d4:	03084821 	addu	t1,t8,t0
      d8:	00095400 	sll	t2,t1,0x10
      dc:	000a5c03 	sra	t3,t2,0x10
      e0:	000b6040 	sll	t4,t3,0x1
      e4:	008c1021 	addu	v0,a0,t4
      e8:	a4400020 	sh	zero,32(v0)
      ec:	a4400000 	sh	zero,0(v0)
      f0:	03e00008 	jr	ra
      f4:	00000000 	nop

000000f8 <func_80910738>:
      f8:	afa60008 	sw	a2,8(sp)
      fc:	00063400 	sll	a2,a2,0x10
     100:	00063403 	sra	a2,a2,0x10
     104:	00c57021 	addu	t6,a2,a1
     108:	91cf0000 	lbu	t7,0(t6)
     10c:	30d8000f 	andi	t8,a2,0xf
     110:	0018c840 	sll	t9,t8,0x1
     114:	11e00009 	beqz	t7,13c <func_80910738+0x44>
     118:	30c800f0 	andi	t0,a2,0xf0
     11c:	00084840 	sll	t1,t0,0x1
     120:	03295021 	addu	t2,t9,t1
     124:	000a5c00 	sll	t3,t2,0x10
     128:	000b6403 	sra	t4,t3,0x10
     12c:	000c6840 	sll	t5,t4,0x1
     130:	008d1021 	addu	v0,a0,t5
     134:	a4400002 	sh	zero,2(v0)
     138:	a4400000 	sh	zero,0(v0)
     13c:	03e00008 	jr	ra
     140:	00000000 	nop

00000144 <func_80910784>:
     144:	27bdffc0 	addiu	sp,sp,-64
     148:	afbe0038 	sw	s8,56(sp)
     14c:	afb70034 	sw	s7,52(sp)
     150:	afb60030 	sw	s6,48(sp)
     154:	afb30024 	sw	s3,36(sp)
     158:	afb20020 	sw	s2,32(sp)
     15c:	0005b400 	sll	s6,a1,0x10
     160:	afb5002c 	sw	s5,44(sp)
     164:	afb40028 	sw	s4,40(sp)
     168:	afb00018 	sw	s0,24(sp)
     16c:	3c1200ff 	lui	s2,0xff
     170:	3c130000 	lui	s3,0x0
     174:	3c170000 	lui	s7,0x0
     178:	3c1e0000 	lui	s8,0x0
     17c:	0080a825 	move	s5,a0
     180:	0016b403 	sra	s6,s6,0x10
     184:	afbf003c 	sw	ra,60(sp)
     188:	afb1001c 	sw	s1,28(sp)
     18c:	afa50044 	sw	a1,68(sp)
     190:	27de0000 	addiu	s8,s8,0
     194:	26f70000 	addiu	s7,s7,0
     198:	26730000 	addiu	s3,s3,0
     19c:	3652ffff 	ori	s2,s2,0xffff
     1a0:	00008025 	move	s0,zero
     1a4:	3c148000 	lui	s4,0x8000
     1a8:	00108880 	sll	s1,s0,0x2
     1ac:	02f17021 	addu	t6,s7,s1
     1b0:	8dc20000 	lw	v0,0(t6)
     1b4:	00163400 	sll	a2,s6,0x10
     1b8:	00063403 	sra	a2,a2,0x10
     1bc:	0002c100 	sll	t8,v0,0x4
     1c0:	0018cf02 	srl	t9,t8,0x1c
     1c4:	00194080 	sll	t0,t9,0x2
     1c8:	02684821 	addu	t1,s3,t0
     1cc:	8d2a0000 	lw	t2,0(t1)
     1d0:	00527824 	and	t7,v0,s2
     1d4:	02a02825 	move	a1,s5
     1d8:	01ea5821 	addu	t3,t7,t2
     1dc:	0c000000 	jal	0 <func_80910640>
     1e0:	01742021 	addu	a0,t3,s4
     1e4:	03d16021 	addu	t4,s8,s1
     1e8:	8d820000 	lw	v0,0(t4)
     1ec:	00163400 	sll	a2,s6,0x10
     1f0:	00063403 	sra	a2,a2,0x10
     1f4:	00027100 	sll	t6,v0,0x4
     1f8:	000ec702 	srl	t8,t6,0x1c
     1fc:	0018c880 	sll	t9,t8,0x2
     200:	02794021 	addu	t0,s3,t9
     204:	8d090000 	lw	t1,0(t0)
     208:	00526824 	and	t5,v0,s2
     20c:	02a02825 	move	a1,s5
     210:	01a97821 	addu	t7,t5,t1
     214:	0c000000 	jal	0 <func_80910640>
     218:	01f42021 	addu	a0,t7,s4
     21c:	26100001 	addiu	s0,s0,1
     220:	00108400 	sll	s0,s0,0x10
     224:	00108403 	sra	s0,s0,0x10
     228:	2a010005 	slti	at,s0,5
     22c:	5420ffdf 	bnezl	at,1ac <func_80910784+0x68>
     230:	00108880 	sll	s1,s0,0x2
     234:	3c110000 	lui	s1,0x0
     238:	26310000 	addiu	s1,s1,0
     23c:	00008025 	move	s0,zero
     240:	00105080 	sll	t2,s0,0x2
     244:	022a5821 	addu	t3,s1,t2
     248:	8d620000 	lw	v0,0(t3)
     24c:	00163400 	sll	a2,s6,0x10
     250:	00063403 	sra	a2,a2,0x10
     254:	00027100 	sll	t6,v0,0x4
     258:	000ec702 	srl	t8,t6,0x1c
     25c:	0018c880 	sll	t9,t8,0x2
     260:	02794021 	addu	t0,s3,t9
     264:	8d0d0000 	lw	t5,0(t0)
     268:	00526024 	and	t4,v0,s2
     26c:	02a02825 	move	a1,s5
     270:	018d4821 	addu	t1,t4,t5
     274:	0c000000 	jal	0 <func_80910640>
     278:	01342021 	addu	a0,t1,s4
     27c:	26100001 	addiu	s0,s0,1
     280:	00108400 	sll	s0,s0,0x10
     284:	00108403 	sra	s0,s0,0x10
     288:	2a010009 	slti	at,s0,9
     28c:	5420ffed 	bnezl	at,244 <func_80910784+0x100>
     290:	00105080 	sll	t2,s0,0x2
     294:	3c110000 	lui	s1,0x0
     298:	26310000 	addiu	s1,s1,0
     29c:	00008025 	move	s0,zero
     2a0:	00107880 	sll	t7,s0,0x2
     2a4:	022f5021 	addu	t2,s1,t7
     2a8:	8d420000 	lw	v0,0(t2)
     2ac:	00163400 	sll	a2,s6,0x10
     2b0:	00063403 	sra	a2,a2,0x10
     2b4:	00027100 	sll	t6,v0,0x4
     2b8:	000ec702 	srl	t8,t6,0x1c
     2bc:	0018c880 	sll	t9,t8,0x2
     2c0:	02794021 	addu	t0,s3,t9
     2c4:	8d0c0000 	lw	t4,0(t0)
     2c8:	00525824 	and	t3,v0,s2
     2cc:	02a02825 	move	a1,s5
     2d0:	016c6821 	addu	t5,t3,t4
     2d4:	0c000000 	jal	0 <func_80910640>
     2d8:	01b42021 	addu	a0,t5,s4
     2dc:	26100001 	addiu	s0,s0,1
     2e0:	00108400 	sll	s0,s0,0x10
     2e4:	00108403 	sra	s0,s0,0x10
     2e8:	2a010002 	slti	at,s0,2
     2ec:	5420ffed 	bnezl	at,2a4 <func_80910784+0x160>
     2f0:	00107880 	sll	t7,s0,0x2
     2f4:	3c020601 	lui	v0,0x601
     2f8:	2442b380 	addiu	v0,v0,-19584
     2fc:	00024900 	sll	t1,v0,0x4
     300:	00097f02 	srl	t7,t1,0x1c
     304:	000f5080 	sll	t2,t7,0x2
     308:	026a7021 	addu	t6,s3,t2
     30c:	8dd80000 	lw	t8,0(t6)
     310:	0052c824 	and	t9,v0,s2
     314:	00163400 	sll	a2,s6,0x10
     318:	03194021 	addu	t0,t8,t9
     31c:	01142021 	addu	a0,t0,s4
     320:	00063403 	sra	a2,a2,0x10
     324:	0c000000 	jal	0 <func_80910640>
     328:	02a02825 	move	a1,s5
     32c:	3c020600 	lui	v0,0x600
     330:	24423db0 	addiu	v0,v0,15792
     334:	00025900 	sll	t3,v0,0x4
     338:	000b6702 	srl	t4,t3,0x1c
     33c:	000c6880 	sll	t5,t4,0x2
     340:	026d4821 	addu	t1,s3,t5
     344:	8d2f0000 	lw	t7,0(t1)
     348:	00525024 	and	t2,v0,s2
     34c:	00163400 	sll	a2,s6,0x10
     350:	01ea7021 	addu	t6,t7,t2
     354:	01d42021 	addu	a0,t6,s4
     358:	00063403 	sra	a2,a2,0x10
     35c:	0c000000 	jal	0 <func_80910640>
     360:	02a02825 	move	a1,s5
     364:	3c110000 	lui	s1,0x0
     368:	26310000 	addiu	s1,s1,0
     36c:	00008025 	move	s0,zero
     370:	0010c080 	sll	t8,s0,0x2
     374:	0238c821 	addu	t9,s1,t8
     378:	8f220000 	lw	v0,0(t9)
     37c:	00163400 	sll	a2,s6,0x10
     380:	00063403 	sra	a2,a2,0x10
     384:	00025900 	sll	t3,v0,0x4
     388:	000b6702 	srl	t4,t3,0x1c
     38c:	000c6880 	sll	t5,t4,0x2
     390:	026d4821 	addu	t1,s3,t5
     394:	8d2f0000 	lw	t7,0(t1)
     398:	00524024 	and	t0,v0,s2
     39c:	02a02825 	move	a1,s5
     3a0:	010f5021 	addu	t2,t0,t7
     3a4:	0c000000 	jal	0 <func_80910640>
     3a8:	01542021 	addu	a0,t2,s4
     3ac:	26100001 	addiu	s0,s0,1
     3b0:	00108400 	sll	s0,s0,0x10
     3b4:	00108403 	sra	s0,s0,0x10
     3b8:	2a010002 	slti	at,s0,2
     3bc:	5420ffed 	bnezl	at,374 <func_80910784+0x230>
     3c0:	0010c080 	sll	t8,s0,0x2
     3c4:	8fbf003c 	lw	ra,60(sp)
     3c8:	8fb00018 	lw	s0,24(sp)
     3cc:	8fb1001c 	lw	s1,28(sp)
     3d0:	8fb20020 	lw	s2,32(sp)
     3d4:	8fb30024 	lw	s3,36(sp)
     3d8:	8fb40028 	lw	s4,40(sp)
     3dc:	8fb5002c 	lw	s5,44(sp)
     3e0:	8fb60030 	lw	s6,48(sp)
     3e4:	8fb70034 	lw	s7,52(sp)
     3e8:	8fbe0038 	lw	s8,56(sp)
     3ec:	03e00008 	jr	ra
     3f0:	27bd0040 	addiu	sp,sp,64

000003f4 <func_80910A34>:
     3f4:	c4840000 	lwc1	$f4,0(a0)
     3f8:	4600218d 	trunc.w.s	$f6,$f4
     3fc:	440f3000 	mfc1	t7,$f6
     400:	00000000 	nop
     404:	a4af0046 	sh	t7,70(a1)
     408:	c4880004 	lwc1	$f8,4(a0)
     40c:	4600428d 	trunc.w.s	$f10,$f8
     410:	44195000 	mfc1	t9,$f10
     414:	00000000 	nop
     418:	a4b90048 	sh	t9,72(a1)
     41c:	c4900008 	lwc1	$f16,8(a0)
     420:	4600848d 	trunc.w.s	$f18,$f16
     424:	44099000 	mfc1	t1,$f18
     428:	03e00008 	jr	ra
     42c:	a4a9004a 	sh	t1,74(a1)

00000430 <BossGanondrof_Init>:
     430:	27bdffb0 	addiu	sp,sp,-80
     434:	afb10038 	sw	s1,56(sp)
     438:	00a08825 	move	s1,a1
     43c:	afbf003c 	sw	ra,60(sp)
     440:	afb00034 	sw	s0,52(sp)
     444:	3c050000 	lui	a1,0x0
     448:	00808025 	move	s0,a0
     44c:	0c000000 	jal	0 <func_80910640>
     450:	24a50000 	addiu	a1,a1,0
     454:	44800000 	mtc1	zero,$f0
     458:	260400b4 	addiu	a0,s0,180
     45c:	00003025 	move	a2,zero
     460:	44050000 	mfc1	a1,$f0
     464:	44070000 	mfc1	a3,$f0
     468:	0c000000 	jal	0 <func_80910640>
     46c:	00000000 	nop
     470:	3c053c23 	lui	a1,0x3c23
     474:	34a5d70a 	ori	a1,a1,0xd70a
     478:	0c000000 	jal	0 <func_80910640>
     47c:	02002025 	move	a0,s0
     480:	3c060601 	lui	a2,0x601
     484:	3c070600 	lui	a3,0x600
     488:	24e73ca4 	addiu	a3,a3,15524
     48c:	24c6c710 	addiu	a2,a2,-14576
     490:	02202025 	move	a0,s1
     494:	2605014c 	addiu	a1,s0,332
     498:	afa00010 	sw	zero,16(sp)
     49c:	afa00014 	sw	zero,20(sp)
     4a0:	0c000000 	jal	0 <func_80910640>
     4a4:	afa00018 	sw	zero,24(sp)
     4a8:	860e001c 	lh	t6,28(s0)
     4ac:	240f0001 	li	t7,1
     4b0:	2418001e 	li	t8,30
     4b4:	29c1000a 	slti	at,t6,10
     4b8:	10200026 	beqz	at,554 <BossGanondrof_Init+0x124>
     4bc:	02202025 	move	a0,s1
     4c0:	a60f001c 	sh	t7,28(s0)
     4c4:	a21800af 	sb	t8,175(s0)
     4c8:	260604d0 	addiu	a2,s0,1232
     4cc:	afa60044 	sw	a2,68(sp)
     4d0:	0c000000 	jal	0 <func_80910640>
     4d4:	262507a8 	addiu	a1,s1,1960
     4d8:	c6040024 	lwc1	$f4,36(s0)
     4dc:	c6080028 	lwc1	$f8,40(s0)
     4e0:	c610002c 	lwc1	$f16,44(s0)
     4e4:	4600218d 	trunc.w.s	$f6,$f4
     4e8:	ae0204cc 	sw	v0,1228(s0)
     4ec:	240a00ff 	li	t2,255
     4f0:	4600428d 	trunc.w.s	$f10,$f8
     4f4:	44053000 	mfc1	a1,$f6
     4f8:	240b00ff 	li	t3,255
     4fc:	4600848d 	trunc.w.s	$f18,$f16
     500:	44065000 	mfc1	a2,$f10
     504:	240c00ff 	li	t4,255
     508:	240d00ff 	li	t5,255
     50c:	44079000 	mfc1	a3,$f18
     510:	00052c00 	sll	a1,a1,0x10
     514:	00063400 	sll	a2,a2,0x10
     518:	00073c00 	sll	a3,a3,0x10
     51c:	00073c03 	sra	a3,a3,0x10
     520:	00063403 	sra	a2,a2,0x10
     524:	00052c03 	sra	a1,a1,0x10
     528:	afad001c 	sw	t5,28(sp)
     52c:	afac0018 	sw	t4,24(sp)
     530:	afab0014 	sw	t3,20(sp)
     534:	afaa0010 	sw	t2,16(sp)
     538:	0c000000 	jal	0 <func_80910640>
     53c:	8fa40044 	lw	a0,68(sp)
     540:	02002025 	move	a0,s0
     544:	0c000000 	jal	0 <func_80910640>
     548:	02202825 	move	a1,s1
     54c:	10000004 	b	560 <BossGanondrof_Init+0x130>
     550:	260504e0 	addiu	a1,s0,1248
     554:	0c000000 	jal	0 <func_80910640>
     558:	02002025 	move	a0,s0
     55c:	260504e0 	addiu	a1,s0,1248
     560:	afa50040 	sw	a1,64(sp)
     564:	0c000000 	jal	0 <func_80910640>
     568:	02202025 	move	a0,s1
     56c:	2605052c 	addiu	a1,s0,1324
     570:	afa50044 	sw	a1,68(sp)
     574:	0c000000 	jal	0 <func_80910640>
     578:	02202025 	move	a0,s1
     57c:	3c070000 	lui	a3,0x0
     580:	24e70000 	addiu	a3,a3,0
     584:	02202025 	move	a0,s1
     588:	8fa50040 	lw	a1,64(sp)
     58c:	0c000000 	jal	0 <func_80910640>
     590:	02003025 	move	a2,s0
     594:	3c070000 	lui	a3,0x0
     598:	24e70000 	addiu	a3,a3,0
     59c:	02202025 	move	a0,s1
     5a0:	8fa50044 	lw	a1,68(sp)
     5a4:	0c000000 	jal	0 <func_80910640>
     5a8:	02003025 	move	a2,s0
     5ac:	8e0e0004 	lw	t6,4(s0)
     5b0:	2401fffe 	li	at,-2
     5b4:	3c050001 	lui	a1,0x1
     5b8:	01c17824 	and	t7,t6,at
     5bc:	ae0f0004 	sw	t7,4(s0)
     5c0:	00b12821 	addu	a1,a1,s1
     5c4:	80a51cbc 	lb	a1,7356(a1)
     5c8:	0c000000 	jal	0 <func_80910640>
     5cc:	02202025 	move	a0,s1
     5d0:	50400026 	beqzl	v0,66c <BossGanondrof_Init+0x23c>
     5d4:	c6100024 	lwc1	$f16,36(s0)
     5d8:	0c000000 	jal	0 <func_80910640>
     5dc:	02002025 	move	a0,s0
     5e0:	3c01c204 	lui	at,0xc204
     5e4:	44812000 	mtc1	at,$f4
     5e8:	3c010000 	lui	at,0x0
     5ec:	c4260000 	lwc1	$f6,0(at)
     5f0:	26301c24 	addiu	s0,s1,7204
     5f4:	2418ffff 	li	t8,-1
     5f8:	afb80024 	sw	t8,36(sp)
     5fc:	02002025 	move	a0,s0
     600:	02202825 	move	a1,s1
     604:	2406005d 	li	a2,93
     608:	3c074160 	lui	a3,0x4160
     60c:	afa00018 	sw	zero,24(sp)
     610:	afa0001c 	sw	zero,28(sp)
     614:	afa00020 	sw	zero,32(sp)
     618:	e7a40010 	swc1	$f4,16(sp)
     61c:	0c000000 	jal	0 <func_80910640>
     620:	e7a60014 	swc1	$f6,20(sp)
     624:	3c01c204 	lui	at,0xc204
     628:	44814000 	mtc1	at,$f8
     62c:	3c010000 	lui	at,0x0
     630:	c42a0000 	lwc1	$f10,0(at)
     634:	02002025 	move	a0,s0
     638:	02202825 	move	a1,s1
     63c:	2406005f 	li	a2,95
     640:	3c074356 	lui	a3,0x4356
     644:	afa00018 	sw	zero,24(sp)
     648:	afa0001c 	sw	zero,28(sp)
     64c:	afa00020 	sw	zero,32(sp)
     650:	afa00024 	sw	zero,36(sp)
     654:	e7a80010 	swc1	$f8,16(sp)
     658:	0c000000 	jal	0 <func_80910640>
     65c:	e7aa0014 	swc1	$f10,20(sp)
     660:	10000012 	b	6ac <BossGanondrof_Init+0x27c>
     664:	8fbf003c 	lw	ra,60(sp)
     668:	c6100024 	lwc1	$f16,36(s0)
     66c:	26241c24 	addiu	a0,s1,7204
     670:	02002825 	move	a1,s0
     674:	e7b00010 	swc1	$f16,16(sp)
     678:	c6120028 	lwc1	$f18,40(s0)
     67c:	02203025 	move	a2,s1
     680:	24070067 	li	a3,103
     684:	e7b20014 	swc1	$f18,20(sp)
     688:	c604002c 	lwc1	$f4,44(s0)
     68c:	afa00024 	sw	zero,36(sp)
     690:	afa00020 	sw	zero,32(sp)
     694:	afa0001c 	sw	zero,28(sp)
     698:	e7a40018 	swc1	$f4,24(sp)
     69c:	8619001c 	lh	t9,28(s0)
     6a0:	0c000000 	jal	0 <func_80910640>
     6a4:	afb90028 	sw	t9,40(sp)
     6a8:	8fbf003c 	lw	ra,60(sp)
     6ac:	8fb00034 	lw	s0,52(sp)
     6b0:	8fb10038 	lw	s1,56(sp)
     6b4:	03e00008 	jr	ra
     6b8:	27bd0050 	addiu	sp,sp,80

000006bc <BossGanondrof_Destroy>:
     6bc:	27bdffe0 	addiu	sp,sp,-32
     6c0:	afb00014 	sw	s0,20(sp)
     6c4:	00808025 	move	s0,a0
     6c8:	afbf001c 	sw	ra,28(sp)
     6cc:	afb10018 	sw	s1,24(sp)
     6d0:	3c040000 	lui	a0,0x0
     6d4:	00a08825 	move	s1,a1
     6d8:	0c000000 	jal	0 <func_80910640>
     6dc:	24840000 	addiu	a0,a0,0
     6e0:	2604014c 	addiu	a0,s0,332
     6e4:	0c000000 	jal	0 <func_80910640>
     6e8:	02202825 	move	a1,s1
     6ec:	02202025 	move	a0,s1
     6f0:	0c000000 	jal	0 <func_80910640>
     6f4:	260504e0 	addiu	a1,s0,1248
     6f8:	02202025 	move	a0,s1
     6fc:	0c000000 	jal	0 <func_80910640>
     700:	2605052c 	addiu	a1,s0,1324
     704:	860e001c 	lh	t6,28(s0)
     708:	24010001 	li	at,1
     70c:	02202025 	move	a0,s1
     710:	15c10003 	bne	t6,at,720 <BossGanondrof_Destroy+0x64>
     714:	262507a8 	addiu	a1,s1,1960
     718:	0c000000 	jal	0 <func_80910640>
     71c:	8e0604cc 	lw	a2,1228(s0)
     720:	3c040000 	lui	a0,0x0
     724:	0c000000 	jal	0 <func_80910640>
     728:	24840000 	addiu	a0,a0,0
     72c:	8fbf001c 	lw	ra,28(sp)
     730:	8fb00014 	lw	s0,20(sp)
     734:	8fb10018 	lw	s1,24(sp)
     738:	03e00008 	jr	ra
     73c:	27bd0020 	addiu	sp,sp,32

00000740 <func_80910D80>:
     740:	27bdffe8 	addiu	sp,sp,-24
     744:	afa5001c 	sw	a1,28(sp)
     748:	afbf0014 	sw	ra,20(sp)
     74c:	00803025 	move	a2,a0
     750:	3c050600 	lui	a1,0x600
     754:	24a519a4 	addiu	a1,a1,6564
     758:	afa60018 	sw	a2,24(sp)
     75c:	0c000000 	jal	0 <func_80910640>
     760:	2484014c 	addiu	a0,a0,332
     764:	8fa60018 	lw	a2,24(sp)
     768:	3c0e0000 	lui	t6,0x0
     76c:	25ce0000 	addiu	t6,t6,0
     770:	240f0001 	li	t7,1
     774:	acce0190 	sw	t6,400(a2)
     778:	a4cf01a8 	sh	t7,424(a2)
     77c:	8fbf0014 	lw	ra,20(sp)
     780:	27bd0018 	addiu	sp,sp,24
     784:	03e00008 	jr	ra
     788:	00000000 	nop

0000078c <func_80910DCC>:
     78c:	27bdff60 	addiu	sp,sp,-160
     790:	afbf0054 	sw	ra,84(sp)
     794:	afb30050 	sw	s3,80(sp)
     798:	afb2004c 	sw	s2,76(sp)
     79c:	afb10048 	sw	s1,72(sp)
     7a0:	afb00044 	sw	s0,68(sp)
     7a4:	f7b60038 	sdc1	$f22,56(sp)
     7a8:	f7b40030 	sdc1	$f20,48(sp)
     7ac:	afa500a4 	sw	a1,164(sp)
     7b0:	8c8e011c 	lw	t6,284(a0)
     7b4:	00809825 	move	s3,a0
     7b8:	2491014c 	addiu	s1,a0,332
     7bc:	02202025 	move	a0,s1
     7c0:	0c000000 	jal	0 <func_80910640>
     7c4:	afae0094 	sw	t6,148(sp)
     7c8:	8fa60094 	lw	a2,148(sp)
     7cc:	3c040000 	lui	a0,0x0
     7d0:	24840000 	addiu	a0,a0,0
     7d4:	8cd80024 	lw	t8,36(a2)
     7d8:	ae780024 	sw	t8,36(s3)
     7dc:	8ccf0028 	lw	t7,40(a2)
     7e0:	ae6f0028 	sw	t7,40(s3)
     7e4:	8cd8002c 	lw	t8,44(a2)
     7e8:	ae78002c 	sw	t8,44(s3)
     7ec:	84c30032 	lh	v1,50(a2)
     7f0:	a6630032 	sh	v1,50(s3)
     7f4:	a66300b6 	sh	v1,182(s3)
     7f8:	0c000000 	jal	0 <func_80910640>
     7fc:	90c5014c 	lbu	a1,332(a2)
     800:	866201be 	lh	v0,446(s3)
     804:	1040003b 	beqz	v0,8f4 <func_80910DCC+0x168>
     808:	28410019 	slti	at,v0,25
     80c:	10200039 	beqz	at,8f4 <func_80910DCC+0x168>
     810:	3c190000 	lui	t9,0x0
     814:	27390000 	addiu	t9,t9,0
     818:	8f290000 	lw	t1,0(t9)
     81c:	27b0007c 	addiu	s0,sp,124
     820:	3c0a0000 	lui	t2,0x0
     824:	ae090000 	sw	t1,0(s0)
     828:	8f280004 	lw	t0,4(t9)
     82c:	254a0000 	addiu	t2,t2,0
     830:	27b20070 	addiu	s2,sp,112
     834:	ae080004 	sw	t0,4(s0)
     838:	8f290008 	lw	t1,8(t9)
     83c:	3c014120 	lui	at,0x4120
     840:	4481a000 	mtc1	at,$f20
     844:	ae090008 	sw	t1,8(s0)
     848:	8d4c0000 	lw	t4,0(t2)
     84c:	4600a306 	mov.s	$f12,$f20
     850:	ae4c0000 	sw	t4,0(s2)
     854:	8d4b0004 	lw	t3,4(t2)
     858:	ae4b0004 	sw	t3,4(s2)
     85c:	8d4c0008 	lw	t4,8(t2)
     860:	0c000000 	jal	0 <func_80910640>
     864:	ae4c0008 	sw	t4,8(s2)
     868:	c66402c0 	lwc1	$f4,704(s3)
     86c:	3c01c0a0 	lui	at,0xc0a0
     870:	44816000 	mtc1	at,$f12
     874:	46040180 	add.s	$f6,$f0,$f4
     878:	0c000000 	jal	0 <func_80910640>
     87c:	e7a60088 	swc1	$f6,136(sp)
     880:	c66802c4 	lwc1	$f8,708(s3)
     884:	4600a306 	mov.s	$f12,$f20
     888:	46080280 	add.s	$f10,$f0,$f8
     88c:	0c000000 	jal	0 <func_80910640>
     890:	e7aa008c 	swc1	$f10,140(sp)
     894:	c67002c8 	lwc1	$f16,712(s3)
     898:	3c0140a0 	lui	at,0x40a0
     89c:	44812000 	mtc1	at,$f4
     8a0:	46100480 	add.s	$f18,$f0,$f16
     8a4:	3c010000 	lui	at,0x0
     8a8:	c4280000 	lwc1	$f8,0(at)
     8ac:	4600a306 	mov.s	$f12,$f20
     8b0:	46049180 	add.s	$f6,$f18,$f4
     8b4:	e7a80074 	swc1	$f8,116(sp)
     8b8:	0c000000 	jal	0 <func_80910640>
     8bc:	e7a60090 	swc1	$f6,144(sp)
     8c0:	4600028d 	trunc.w.s	$f10,$f0
     8c4:	8fa400a4 	lw	a0,164(sp)
     8c8:	27a50088 	addiu	a1,sp,136
     8cc:	02003025 	move	a2,s0
     8d0:	440e5000 	mfc1	t6,$f10
     8d4:	02403825 	move	a3,s2
     8d8:	afa00014 	sw	zero,20(sp)
     8dc:	000e7c00 	sll	t7,t6,0x10
     8e0:	000fc403 	sra	t8,t7,0x10
     8e4:	27190005 	addiu	t9,t8,5
     8e8:	0c000000 	jal	0 <func_80910640>
     8ec:	afb90010 	sw	t9,16(sp)
     8f0:	866201be 	lh	v0,446(s3)
     8f4:	24010014 	li	at,20
     8f8:	54410004 	bnel	v0,at,90c <func_80910DCC+0x180>
     8fc:	2401001e 	li	at,30
     900:	a66001a8 	sh	zero,424(s3)
     904:	866201be 	lh	v0,446(s3)
     908:	2401001e 	li	at,30
     90c:	14410004 	bne	v0,at,920 <func_80910DCC+0x194>
     910:	3c040000 	lui	a0,0x0
     914:	24840000 	addiu	a0,a0,0
     918:	0c000000 	jal	0 <func_80910640>
     91c:	240538a1 	li	a1,14497
     920:	8fa80094 	lw	t0,148(sp)
     924:	24010003 	li	at,3
     928:	3c100600 	lui	s0,0x600
     92c:	9103014c 	lbu	v1,332(t0)
     930:	26101144 	addiu	s0,s0,4420
     934:	54610014 	bnel	v1,at,988 <func_80910DCC+0x1fc>
     938:	24120002 	li	s2,2
     93c:	0c000000 	jal	0 <func_80910640>
     940:	02002025 	move	a0,s0
     944:	44828000 	mtc1	v0,$f16
     948:	4480b000 	mtc1	zero,$f22
     94c:	24090003 	li	t1,3
     950:	468084a0 	cvt.s.w	$f18,$f16
     954:	4407b000 	mfc1	a3,$f22
     958:	afa90014 	sw	t1,20(sp)
     95c:	02202025 	move	a0,s1
     960:	02002825 	move	a1,s0
     964:	3c063f00 	lui	a2,0x3f00
     968:	e7b20010 	swc1	$f18,16(sp)
     96c:	0c000000 	jal	0 <func_80910640>
     970:	e7b60018 	swc1	$f22,24(sp)
     974:	240a0028 	li	t2,40
     978:	a66a01be 	sh	t2,446(s3)
     97c:	8fab0094 	lw	t3,148(sp)
     980:	9163014c 	lbu	v1,332(t3)
     984:	24120002 	li	s2,2
     988:	4480b000 	mtc1	zero,$f22
     98c:	16430007 	bne	s2,v1,9ac <func_80910DCC+0x220>
     990:	02202025 	move	a0,s1
     994:	3c050600 	lui	a1,0x600
     998:	24a52684 	addiu	a1,a1,9860
     99c:	0c000000 	jal	0 <func_80910640>
     9a0:	3c06c040 	lui	a2,0xc040
     9a4:	8fac0094 	lw	t4,148(sp)
     9a8:	9183014c 	lbu	v1,332(t4)
     9ac:	24010005 	li	at,5
     9b0:	14610007 	bne	v1,at,9d0 <func_80910DCC+0x244>
     9b4:	02202025 	move	a0,s1
     9b8:	3c050600 	lui	a1,0x600
     9bc:	24a519a4 	addiu	a1,a1,6564
     9c0:	0c000000 	jal	0 <func_80910640>
     9c4:	3c06c150 	lui	a2,0xc150
     9c8:	8fad0094 	lw	t5,148(sp)
     9cc:	91a3014c 	lbu	v1,332(t5)
     9d0:	2401000a 	li	at,10
     9d4:	1461001a 	bne	v1,at,a40 <func_80910DCC+0x2b4>
     9d8:	02202025 	move	a0,s1
     9dc:	3c050601 	lui	a1,0x601
     9e0:	24a5d99c 	addiu	a1,a1,-9828
     9e4:	0c000000 	jal	0 <func_80910640>
     9e8:	3c06c0e0 	lui	a2,0xc0e0
     9ec:	c6640200 	lwc1	$f4,512(s3)
     9f0:	8e70011c 	lw	s0,284(s3)
     9f4:	8fa600a4 	lw	a2,164(sp)
     9f8:	e7a40010 	swc1	$f4,16(sp)
     9fc:	c6660204 	lwc1	$f6,516(s3)
     a00:	240f0032 	li	t7,50
     a04:	24180026 	li	t8,38
     a08:	e7a60014 	swc1	$f6,20(sp)
     a0c:	c6680208 	lwc1	$f8,520(s3)
     a10:	afb80028 	sw	t8,40(sp)
     a14:	afa00024 	sw	zero,36(sp)
     a18:	afa00020 	sw	zero,32(sp)
     a1c:	afaf001c 	sw	t7,28(sp)
     a20:	02602825 	move	a1,s3
     a24:	2407006d 	li	a3,109
     a28:	24c41c24 	addiu	a0,a2,7204
     a2c:	0c000000 	jal	0 <func_80910640>
     a30:	e7a80018 	swc1	$f8,24(sp)
     a34:	ae70011c 	sw	s0,284(s3)
     a38:	8fb90094 	lw	t9,148(sp)
     a3c:	9323014c 	lbu	v1,332(t9)
     a40:	2401000b 	li	at,11
     a44:	14610005 	bne	v1,at,a5c <func_80910DCC+0x2d0>
     a48:	02202025 	move	a0,s1
     a4c:	3c050601 	lui	a1,0x601
     a50:	24a5df80 	addiu	a1,a1,-8320
     a54:	0c000000 	jal	0 <func_80910640>
     a58:	3c06c0a0 	lui	a2,0xc0a0
     a5c:	866201aa 	lh	v0,426(s3)
     a60:	24010001 	li	at,1
     a64:	50410006 	beql	v0,at,a80 <func_80910DCC+0x2f4>
     a68:	3c01437f 	lui	at,0x437f
     a6c:	10520011 	beq	v0,s2,ab4 <func_80910DCC+0x328>
     a70:	3c01437f 	lui	at,0x437f
     a74:	1000001c 	b	ae8 <func_80910DCC+0x35c>
     a78:	86640194 	lh	a0,404(s3)
     a7c:	3c01437f 	lui	at,0x437f
     a80:	44810000 	mtc1	at,$f0
     a84:	3c014220 	lui	at,0x4220
     a88:	44818000 	mtc1	at,$f16
     a8c:	c66a01e0 	lwc1	$f10,480(s3)
     a90:	46105480 	add.s	$f18,$f10,$f16
     a94:	e67201e0 	swc1	$f18,480(s3)
     a98:	c66401e0 	lwc1	$f4,480(s3)
     a9c:	4604003e 	c.le.s	$f0,$f4
     aa0:	00000000 	nop
     aa4:	45020010 	bc1fl	ae8 <func_80910DCC+0x35c>
     aa8:	86640194 	lh	a0,404(s3)
     aac:	1000000d 	b	ae4 <func_80910DCC+0x358>
     ab0:	e66001e0 	swc1	$f0,480(s3)
     ab4:	44810000 	mtc1	at,$f0
     ab8:	3c0141a0 	lui	at,0x41a0
     abc:	44814000 	mtc1	at,$f8
     ac0:	c66601d4 	lwc1	$f6,468(s3)
     ac4:	46083280 	add.s	$f10,$f6,$f8
     ac8:	e66a01d4 	swc1	$f10,468(s3)
     acc:	c67001d4 	lwc1	$f16,468(s3)
     ad0:	4610003c 	c.lt.s	$f0,$f16
     ad4:	00000000 	nop
     ad8:	45020003 	bc1fl	ae8 <func_80910DCC+0x35c>
     adc:	86640194 	lh	a0,404(s3)
     ae0:	e66001d4 	swc1	$f0,468(s3)
     ae4:	86640194 	lh	a0,404(s3)
     ae8:	00800821 	move	at,a0
     aec:	000420c0 	sll	a0,a0,0x3
     af0:	00812023 	subu	a0,a0,at
     af4:	000420c0 	sll	a0,a0,0x3
     af8:	00812023 	subu	a0,a0,at
     afc:	00042080 	sll	a0,a0,0x2
     b00:	00812021 	addu	a0,a0,at
     b04:	000420c0 	sll	a0,a0,0x3
     b08:	00042400 	sll	a0,a0,0x10
     b0c:	0c000000 	jal	0 <func_80910640>
     b10:	00042403 	sra	a0,a0,0x10
     b14:	86640194 	lh	a0,404(s3)
     b18:	44809000 	mtc1	zero,$f18
     b1c:	00800821 	move	at,a0
     b20:	000420c0 	sll	a0,a0,0x3
     b24:	00812021 	addu	a0,a0,at
     b28:	46120102 	mul.s	$f4,$f0,$f18
     b2c:	000420c0 	sll	a0,a0,0x3
     b30:	00812023 	subu	a0,a0,at
     b34:	000420c0 	sll	a0,a0,0x3
     b38:	00812023 	subu	a0,a0,at
     b3c:	00042080 	sll	a0,a0,0x2
     b40:	00042400 	sll	a0,a0,0x10
     b44:	e66403d4 	swc1	$f4,980(s3)
     b48:	0c000000 	jal	0 <func_80910640>
     b4c:	00042403 	sra	a0,a0,0x10
     b50:	3c014396 	lui	at,0x4396
     b54:	44813000 	mtc1	at,$f6
     b58:	3c0142c8 	lui	at,0x42c8
     b5c:	4481a000 	mtc1	at,$f20
     b60:	46060202 	mul.s	$f8,$f0,$f6
     b64:	00008025 	move	s0,zero
     b68:	e66803d8 	swc1	$f8,984(s3)
     b6c:	00109080 	sll	s2,s0,0x2
     b70:	02509023 	subu	s2,s2,s0
     b74:	001290c0 	sll	s2,s2,0x3
     b78:	86680194 	lh	t0,404(s3)
     b7c:	02509021 	addu	s2,s2,s0
     b80:	00129040 	sll	s2,s2,0x1
     b84:	264907b0 	addiu	t1,s2,1968
     b88:	01090019 	multu	t0,t1
     b8c:	00002012 	mflo	a0
     b90:	00042400 	sll	a0,a0,0x10
     b94:	0c000000 	jal	0 <func_80910640>
     b98:	00042403 	sra	a0,a0,0x10
     b9c:	46140282 	mul.s	$f10,$f0,$f20
     ba0:	00105080 	sll	t2,s0,0x2
     ba4:	026a8821 	addu	s1,s3,t2
     ba8:	264c08dc 	addiu	t4,s2,2268
     bac:	e62a0454 	swc1	$f10,1108(s1)
     bb0:	866b0194 	lh	t3,404(s3)
     bb4:	016c0019 	multu	t3,t4
     bb8:	00002012 	mflo	a0
     bbc:	00042400 	sll	a0,a0,0x10
     bc0:	0c000000 	jal	0 <func_80910640>
     bc4:	00042403 	sra	a0,a0,0x10
     bc8:	46140402 	mul.s	$f16,$f0,$f20
     bcc:	26100001 	addiu	s0,s0,1
     bd0:	00108400 	sll	s0,s0,0x10
     bd4:	00108403 	sra	s0,s0,0x10
     bd8:	2a01001e 	slti	at,s0,30
     bdc:	1420ffe3 	bnez	at,b6c <func_80910DCC+0x3e0>
     be0:	e63003dc 	swc1	$f16,988(s1)
     be4:	8fad0094 	lw	t5,148(sp)
     be8:	240100ff 	li	at,255
     bec:	91ae014c 	lbu	t6,332(t5)
     bf0:	55c1000e 	bnel	t6,at,c2c <func_80910DCC+0x4a0>
     bf4:	8fb80094 	lw	t8,148(sp)
     bf8:	0c000000 	jal	0 <func_80910640>
     bfc:	02602025 	move	a0,s3
     c00:	00008025 	move	s0,zero
     c04:	00107880 	sll	t7,s0,0x2
     c08:	26100001 	addiu	s0,s0,1
     c0c:	00108400 	sll	s0,s0,0x10
     c10:	00108403 	sra	s0,s0,0x10
     c14:	2a01001e 	slti	at,s0,30
     c18:	026f8821 	addu	s1,s3,t7
     c1c:	e63603dc 	swc1	$f22,988(s1)
     c20:	1420fff8 	bnez	at,c04 <func_80910DCC+0x478>
     c24:	e6360454 	swc1	$f22,1108(s1)
     c28:	8fb80094 	lw	t8,148(sp)
     c2c:	a300014c 	sb	zero,332(t8)
     c30:	8fbf0054 	lw	ra,84(sp)
     c34:	8fb30050 	lw	s3,80(sp)
     c38:	8fb2004c 	lw	s2,76(sp)
     c3c:	8fb10048 	lw	s1,72(sp)
     c40:	8fb00044 	lw	s0,68(sp)
     c44:	d7b60038 	ldc1	$f22,56(sp)
     c48:	d7b40030 	ldc1	$f20,48(sp)
     c4c:	03e00008 	jr	ra
     c50:	27bd00a0 	addiu	sp,sp,160

00000c54 <func_80911294>:
     c54:	27bdffe8 	addiu	sp,sp,-24
     c58:	afbf0014 	sw	ra,20(sp)
     c5c:	afa40018 	sw	a0,24(sp)
     c60:	3c050600 	lui	a1,0x600
     c64:	24a53ca4 	addiu	a1,a1,15524
     c68:	2484014c 	addiu	a0,a0,332
     c6c:	0c000000 	jal	0 <func_80910640>
     c70:	3c06c0a0 	lui	a2,0xc0a0
     c74:	8faf0018 	lw	t7,24(sp)
     c78:	3c0e0000 	lui	t6,0x0
     c7c:	25ce0000 	addiu	t6,t6,0
     c80:	adee0190 	sw	t6,400(t7)
     c84:	8fbf0014 	lw	ra,20(sp)
     c88:	27bd0018 	addiu	sp,sp,24
     c8c:	03e00008 	jr	ra
     c90:	00000000 	nop

00000c94 <func_809112D4>:
     c94:	27bdffb0 	addiu	sp,sp,-80
     c98:	afb00034 	sw	s0,52(sp)
     c9c:	afbf003c 	sw	ra,60(sp)
     ca0:	afb10038 	sw	s1,56(sp)
     ca4:	afa50054 	sw	a1,84(sp)
     ca8:	00808025 	move	s0,a0
     cac:	8c91011c 	lw	s1,284(a0)
     cb0:	3c040000 	lui	a0,0x0
     cb4:	0c000000 	jal	0 <func_80910640>
     cb8:	24840000 	addiu	a0,a0,0
     cbc:	2607014c 	addiu	a3,s0,332
     cc0:	00e02025 	move	a0,a3
     cc4:	0c000000 	jal	0 <func_80910640>
     cc8:	afa70040 	sw	a3,64(sp)
     ccc:	3c040000 	lui	a0,0x0
     cd0:	0c000000 	jal	0 <func_80910640>
     cd4:	24840000 	addiu	a0,a0,0
     cd8:	9222014c 	lbu	v0,332(s1)
     cdc:	8fa70040 	lw	a3,64(sp)
     ce0:	24010001 	li	at,1
     ce4:	1441001e 	bne	v0,at,d60 <func_809112D4+0xcc>
     ce8:	00e02025 	move	a0,a3
     cec:	3c050601 	lui	a1,0x601
     cf0:	24a5d99c 	addiu	a1,a1,-9828
     cf4:	0c000000 	jal	0 <func_80910640>
     cf8:	3c06c000 	lui	a2,0xc000
     cfc:	8e0e0004 	lw	t6,4(s0)
     d00:	8e18011c 	lw	t8,284(s0)
     d04:	8fa60054 	lw	a2,84(sp)
     d08:	35cf0001 	ori	t7,t6,0x1
     d0c:	ae0f0004 	sw	t7,4(s0)
     d10:	afb80048 	sw	t8,72(sp)
     d14:	c6040200 	lwc1	$f4,512(s0)
     d18:	2419001e 	li	t9,30
     d1c:	24080026 	li	t0,38
     d20:	e7a40010 	swc1	$f4,16(sp)
     d24:	c6060204 	lwc1	$f6,516(s0)
     d28:	02002825 	move	a1,s0
     d2c:	2407006d 	li	a3,109
     d30:	e7a60014 	swc1	$f6,20(sp)
     d34:	c6080208 	lwc1	$f8,520(s0)
     d38:	afa80028 	sw	t0,40(sp)
     d3c:	afa00024 	sw	zero,36(sp)
     d40:	afa00020 	sw	zero,32(sp)
     d44:	afb9001c 	sw	t9,28(sp)
     d48:	24c41c24 	addiu	a0,a2,7204
     d4c:	0c000000 	jal	0 <func_80910640>
     d50:	e7a80018 	swc1	$f8,24(sp)
     d54:	8fa90048 	lw	t1,72(sp)
     d58:	1000001e 	b	dd4 <func_809112D4+0x140>
     d5c:	ae09011c 	sw	t1,284(s0)
     d60:	24010003 	li	at,3
     d64:	14410007 	bne	v0,at,d84 <func_809112D4+0xf0>
     d68:	00e02025 	move	a0,a3
     d6c:	3c050600 	lui	a1,0x600
     d70:	24a53080 	addiu	a1,a1,12416
     d74:	0c000000 	jal	0 <func_80910640>
     d78:	3c06c000 	lui	a2,0xc000
     d7c:	10000015 	b	dd4 <func_809112D4+0x140>
     d80:	00000000 	nop
     d84:	24010004 	li	at,4
     d88:	14410007 	bne	v0,at,da8 <func_809112D4+0x114>
     d8c:	00e02025 	move	a0,a3
     d90:	3c050601 	lui	a1,0x601
     d94:	24a5df80 	addiu	a1,a1,-8320
     d98:	0c000000 	jal	0 <func_80910640>
     d9c:	3c06c000 	lui	a2,0xc000
     da0:	1000000c 	b	dd4 <func_809112D4+0x140>
     da4:	00000000 	nop
     da8:	24010005 	li	at,5
     dac:	14410009 	bne	v0,at,dd4 <func_809112D4+0x140>
     db0:	00e02025 	move	a0,a3
     db4:	3c050600 	lui	a1,0x600
     db8:	24a53ca4 	addiu	a1,a1,15524
     dbc:	0c000000 	jal	0 <func_80910640>
     dc0:	3c06c000 	lui	a2,0xc000
     dc4:	8e0a0004 	lw	t2,4(s0)
     dc8:	2401fffe 	li	at,-2
     dcc:	01415824 	and	t3,t2,at
     dd0:	ae0b0004 	sw	t3,4(s0)
     dd4:	3c040000 	lui	a0,0x0
     dd8:	0c000000 	jal	0 <func_80910640>
     ddc:	24840000 	addiu	a0,a0,0
     de0:	8e2d0024 	lw	t5,36(s1)
     de4:	920e01c9 	lbu	t6,457(s0)
     de8:	02002025 	move	a0,s0
     dec:	ae0d0024 	sw	t5,36(s0)
     df0:	8e2c0028 	lw	t4,40(s1)
     df4:	3c010000 	lui	at,0x0
     df8:	ae0c0028 	sw	t4,40(s0)
     dfc:	8e2d002c 	lw	t5,44(s1)
     e00:	ae0d002c 	sw	t5,44(s0)
     e04:	c62a0028 	lwc1	$f10,40(s1)
     e08:	e60a0028 	swc1	$f10,40(s0)
     e0c:	86220032 	lh	v0,50(s1)
     e10:	a6020032 	sh	v0,50(s0)
     e14:	11c00011 	beqz	t6,e5c <func_809112D4+0x1c8>
     e18:	a60200b6 	sh	v0,182(s0)
     e1c:	0c000000 	jal	0 <func_80910640>
     e20:	3c05c1a0 	lui	a1,0xc1a0
     e24:	240f0064 	li	t7,100
     e28:	24180014 	li	t8,20
     e2c:	2419003c 	li	t9,60
     e30:	2408ffdf 	li	t0,-33
     e34:	a60f01bc 	sh	t7,444(s0)
     e38:	a6180520 	sh	t8,1312(s0)
     e3c:	a6190522 	sh	t9,1314(s0)
     e40:	a6080524 	sh	t0,1316(s0)
     e44:	02002025 	move	a0,s0
     e48:	0c000000 	jal	0 <func_80910640>
     e4c:	240538b0 	li	a1,14512
     e50:	2409001a 	li	t1,26
     e54:	1000000f 	b	e94 <func_809112D4+0x200>
     e58:	a2090117 	sb	t1,279(s0)
     e5c:	c4200000 	lwc1	$f0,0(at)
     e60:	c6300050 	lwc1	$f16,80(s1)
     e64:	a220014c 	sb	zero,332(s1)
     e68:	3c040000 	lui	a0,0x0
     e6c:	46008483 	div.s	$f18,$f16,$f0
     e70:	24840000 	addiu	a0,a0,0
     e74:	e6120050 	swc1	$f18,80(s0)
     e78:	c6240054 	lwc1	$f4,84(s1)
     e7c:	46002183 	div.s	$f6,$f4,$f0
     e80:	e6060054 	swc1	$f6,84(s0)
     e84:	c6280058 	lwc1	$f8,88(s1)
     e88:	46004283 	div.s	$f10,$f8,$f0
     e8c:	0c000000 	jal	0 <func_80910640>
     e90:	e60a0058 	swc1	$f10,88(s0)
     e94:	8fbf003c 	lw	ra,60(sp)
     e98:	8fb00034 	lw	s0,52(sp)
     e9c:	8fb10038 	lw	s1,56(sp)
     ea0:	03e00008 	jr	ra
     ea4:	27bd0050 	addiu	sp,sp,80

00000ea8 <func_809114E8>:
     ea8:	44856000 	mtc1	a1,$f12
     eac:	27bdffe8 	addiu	sp,sp,-24
     eb0:	afbf0014 	sw	ra,20(sp)
     eb4:	00803825 	move	a3,a0
     eb8:	3c050601 	lui	a1,0x601
     ebc:	44066000 	mfc1	a2,$f12
     ec0:	24a50060 	addiu	a1,a1,96
     ec4:	afa70018 	sw	a3,24(sp)
     ec8:	0c000000 	jal	0 <func_80910640>
     ecc:	2484014c 	addiu	a0,a0,332
     ed0:	8fa70018 	lw	a3,24(sp)
     ed4:	44802000 	mtc1	zero,$f4
     ed8:	3c0e0000 	lui	t6,0x0
     edc:	8cef0004 	lw	t7,4(a3)
     ee0:	25ce0000 	addiu	t6,t6,0
     ee4:	acee0190 	sw	t6,400(a3)
     ee8:	35f80001 	ori	t8,t7,0x1
     eec:	acf80004 	sw	t8,4(a3)
     ef0:	0c000000 	jal	0 <func_80910640>
     ef4:	e4e401cc 	swc1	$f4,460(a3)
     ef8:	3c014280 	lui	at,0x4280
     efc:	44813000 	mtc1	at,$f6
     f00:	8fa70018 	lw	a3,24(sp)
     f04:	46060202 	mul.s	$f8,$f0,$f6
     f08:	4600428d 	trunc.w.s	$f10,$f8
     f0c:	440a5000 	mfc1	t2,$f10
     f10:	00000000 	nop
     f14:	254b001e 	addiu	t3,t2,30
     f18:	a4eb01bc 	sh	t3,444(a3)
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	27bd0018 	addiu	sp,sp,24
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <func_8091156C>:
     f2c:	27bdff78 	addiu	sp,sp,-136
     f30:	afbf002c 	sw	ra,44(sp)
     f34:	afb10028 	sw	s1,40(sp)
     f38:	afb00024 	sw	s0,36(sp)
     f3c:	f7b40018 	sdc1	$f20,24(sp)
     f40:	afa5008c 	sw	a1,140(sp)
     f44:	8caf1c44 	lw	t7,7236(a1)
     f48:	00808825 	move	s1,a0
     f4c:	2484014c 	addiu	a0,a0,332
     f50:	0c000000 	jal	0 <func_80910640>
     f54:	afaf0078 	sw	t7,120(sp)
     f58:	922201c9 	lbu	v0,457(s1)
     f5c:	24010001 	li	at,1
     f60:	1041000d 	beq	v0,at,f98 <func_8091156C+0x6c>
     f64:	24010002 	li	at,2
     f68:	104100a9 	beq	v0,at,1210 <func_8091156C+0x2e4>
     f6c:	8fb80078 	lw	t8,120(sp)
     f70:	24010003 	li	at,3
     f74:	104100d2 	beq	v0,at,12c0 <func_8091156C+0x394>
     f78:	8faa0078 	lw	t2,120(sp)
     f7c:	24010004 	li	at,4
     f80:	10410101 	beq	v0,at,1388 <func_8091156C+0x45c>
     f84:	8faf0078 	lw	t7,120(sp)
     f88:	3c0142c8 	lui	at,0x42c8
     f8c:	4481a000 	mtc1	at,$f20
     f90:	10000126 	b	142c <func_8091156C+0x500>
     f94:	3c063d4c 	lui	a2,0x3d4c
     f98:	863801bc 	lh	t8,444(s1)
     f9c:	5700004d 	bnezl	t8,10d4 <func_8091156C+0x1a8>
     fa0:	862a01be 	lh	t2,446(s1)
     fa4:	0c000000 	jal	0 <func_80910640>
     fa8:	00000000 	nop
     fac:	3c014280 	lui	at,0x4280
     fb0:	44812000 	mtc1	at,$f4
     fb4:	00000000 	nop
     fb8:	46040182 	mul.s	$f6,$f0,$f4
     fbc:	4600320d 	trunc.w.s	$f8,$f6
     fc0:	440a4000 	mfc1	t2,$f8
     fc4:	00000000 	nop
     fc8:	254b001e 	addiu	t3,t2,30
     fcc:	0c000000 	jal	0 <func_80910640>
     fd0:	a62b01bc 	sh	t3,444(s1)
     fd4:	922c00af 	lbu	t4,175(s1)
     fd8:	29810005 	slti	at,t4,5
     fdc:	10200025 	beqz	at,1074 <func_8091156C+0x148>
     fe0:	3c013e80 	lui	at,0x3e80
     fe4:	44815000 	mtc1	at,$f10
     fe8:	02202025 	move	a0,s1
     fec:	3c010000 	lui	at,0x0
     ff0:	460a003c 	c.lt.s	$f0,$f10
     ff4:	00000000 	nop
     ff8:	45000005 	bc1f	1010 <func_8091156C+0xe4>
     ffc:	00000000 	nop
    1000:	0c000000 	jal	0 <func_80910640>
    1004:	8fa5008c 	lw	a1,140(sp)
    1008:	10000032 	b	10d4 <func_8091156C+0x1a8>
    100c:	862a01be 	lh	t2,446(s1)
    1010:	c4300000 	lwc1	$f16,0(at)
    1014:	240d0004 	li	t5,4
    1018:	240e003c 	li	t6,60
    101c:	4600803e 	c.le.s	$f16,$f0
    1020:	240f0002 	li	t7,2
    1024:	2418003c 	li	t8,60
    1028:	02202025 	move	a0,s1
    102c:	4500000a 	bc1f	1058 <func_8091156C+0x12c>
    1030:	240538b0 	li	a1,14512
    1034:	44809000 	mtc1	zero,$f18
    1038:	a22d01c9 	sb	t5,457(s1)
    103c:	a62e01bc 	sh	t6,444(s1)
    1040:	02202025 	move	a0,s1
    1044:	240538b0 	li	a1,14512
    1048:	0c000000 	jal	0 <func_80910640>
    104c:	e63201cc 	swc1	$f18,460(s1)
    1050:	10000020 	b	10d4 <func_8091156C+0x1a8>
    1054:	862a01be 	lh	t2,446(s1)
    1058:	44802000 	mtc1	zero,$f4
    105c:	a22f01c9 	sb	t7,457(s1)
    1060:	a63801bc 	sh	t8,444(s1)
    1064:	0c000000 	jal	0 <func_80910640>
    1068:	e62401cc 	swc1	$f4,460(s1)
    106c:	10000019 	b	10d4 <func_8091156C+0x1a8>
    1070:	862a01be 	lh	t2,446(s1)
    1074:	3c013f00 	lui	at,0x3f00
    1078:	44813000 	mtc1	at,$f6
    107c:	02202025 	move	a0,s1
    1080:	4606003c 	c.lt.s	$f0,$f6
    1084:	00000000 	nop
    1088:	45010007 	bc1t	10a8 <func_8091156C+0x17c>
    108c:	00000000 	nop
    1090:	863901a6 	lh	t9,422(s1)
    1094:	24080002 	li	t0,2
    1098:	2409003c 	li	t1,60
    109c:	2b210005 	slti	at,t9,5
    10a0:	10200005 	beqz	at,10b8 <func_8091156C+0x18c>
    10a4:	240538b0 	li	a1,14512
    10a8:	0c000000 	jal	0 <func_80910640>
    10ac:	8fa5008c 	lw	a1,140(sp)
    10b0:	10000008 	b	10d4 <func_8091156C+0x1a8>
    10b4:	862a01be 	lh	t2,446(s1)
    10b8:	44804000 	mtc1	zero,$f8
    10bc:	a22801c9 	sb	t0,457(s1)
    10c0:	a62901bc 	sh	t1,444(s1)
    10c4:	02202025 	move	a0,s1
    10c8:	0c000000 	jal	0 <func_80910640>
    10cc:	e62801cc 	swc1	$f8,460(s1)
    10d0:	862a01be 	lh	t2,446(s1)
    10d4:	3c014160 	lui	at,0x4160
    10d8:	8fab0078 	lw	t3,120(sp)
    10dc:	11400007 	beqz	t2,10fc <func_8091156C+0x1d0>
    10e0:	00000000 	nop
    10e4:	44815000 	mtc1	at,$f10
    10e8:	3c010000 	lui	at,0x0
    10ec:	c4300000 	lwc1	$f16,0(at)
    10f0:	e7aa0084 	swc1	$f10,132(sp)
    10f4:	10000027 	b	1194 <func_8091156C+0x268>
    10f8:	e7b0007c 	swc1	$f16,124(sp)
    10fc:	0c000000 	jal	0 <func_80910640>
    1100:	856400b6 	lh	a0,182(t3)
    1104:	3c014334 	lui	at,0x4334
    1108:	4481a000 	mtc1	at,$f20
    110c:	8fac0078 	lw	t4,120(sp)
    1110:	46140482 	mul.s	$f18,$f0,$f20
    1114:	c5840024 	lwc1	$f4,36(t4)
    1118:	46049180 	add.s	$f6,$f18,$f4
    111c:	e7a60084 	swc1	$f6,132(sp)
    1120:	0c000000 	jal	0 <func_80910640>
    1124:	858400b6 	lh	a0,182(t4)
    1128:	46140202 	mul.s	$f8,$f0,$f20
    112c:	8fad0078 	lw	t5,120(sp)
    1130:	3c014160 	lui	at,0x4160
    1134:	44812000 	mtc1	at,$f4
    1138:	c5aa002c 	lwc1	$f10,44(t5)
    113c:	c7b20084 	lwc1	$f18,132(sp)
    1140:	3c010000 	lui	at,0x0
    1144:	460a4400 	add.s	$f16,$f8,$f10
    1148:	c4260000 	lwc1	$f6,0(at)
    114c:	3c01438c 	lui	at,0x438c
    1150:	46049081 	sub.s	$f2,$f18,$f4
    1154:	44819000 	mtc1	at,$f18
    1158:	e7b0007c 	swc1	$f16,124(sp)
    115c:	46068301 	sub.s	$f12,$f16,$f6
    1160:	46021202 	mul.s	$f8,$f2,$f2
    1164:	00000000 	nop
    1168:	460c6282 	mul.s	$f10,$f12,$f12
    116c:	460a4000 	add.s	$f0,$f8,$f10
    1170:	46000004 	sqrt.s	$f0,$f0
    1174:	4600903c 	c.lt.s	$f18,$f0
    1178:	00000000 	nop
    117c:	45000005 	bc1f	1194 <func_8091156C+0x268>
    1180:	00000000 	nop
    1184:	44802000 	mtc1	zero,$f4
    1188:	240e0032 	li	t6,50
    118c:	a62e01be 	sh	t6,446(s1)
    1190:	e62401cc 	swc1	$f4,460(s1)
    1194:	8faf0078 	lw	t7,120(sp)
    1198:	3c0142c8 	lui	at,0x42c8
    119c:	4481a000 	mtc1	at,$f20
    11a0:	c5f00028 	lwc1	$f16,40(t7)
    11a4:	46148180 	add.s	$f6,$f16,$f20
    11a8:	e7a60080 	swc1	$f6,128(sp)
    11ac:	86240194 	lh	a0,404(s1)
    11b0:	00800821 	move	at,a0
    11b4:	00042080 	sll	a0,a0,0x2
    11b8:	00812021 	addu	a0,a0,at
    11bc:	00042200 	sll	a0,a0,0x8
    11c0:	00042400 	sll	a0,a0,0x10
    11c4:	0c000000 	jal	0 <func_80910640>
    11c8:	00042403 	sra	a0,a0,0x10
    11cc:	46140282 	mul.s	$f10,$f0,$f20
    11d0:	c7a80084 	lwc1	$f8,132(sp)
    11d4:	460a4480 	add.s	$f18,$f8,$f10
    11d8:	e7b20084 	swc1	$f18,132(sp)
    11dc:	86240194 	lh	a0,404(s1)
    11e0:	00800821 	move	at,a0
    11e4:	000420c0 	sll	a0,a0,0x3
    11e8:	00812023 	subu	a0,a0,at
    11ec:	00042200 	sll	a0,a0,0x8
    11f0:	00042400 	sll	a0,a0,0x10
    11f4:	0c000000 	jal	0 <func_80910640>
    11f8:	00042403 	sra	a0,a0,0x10
    11fc:	46140402 	mul.s	$f16,$f0,$f20
    1200:	c7a4007c 	lwc1	$f4,124(sp)
    1204:	46102180 	add.s	$f6,$f4,$f16
    1208:	10000087 	b	1428 <func_8091156C+0x4fc>
    120c:	e7a6007c 	swc1	$f6,124(sp)
    1210:	3c0142c8 	lui	at,0x42c8
    1214:	4481a000 	mtc1	at,$f20
    1218:	c7080028 	lwc1	$f8,40(t8)
    121c:	46144280 	add.s	$f10,$f8,$f20
    1220:	46145480 	add.s	$f18,$f10,$f20
    1224:	e7b20080 	swc1	$f18,128(sp)
    1228:	86240194 	lh	a0,404(s1)
    122c:	00800821 	move	at,a0
    1230:	00042080 	sll	a0,a0,0x2
    1234:	00812021 	addu	a0,a0,at
    1238:	00042200 	sll	a0,a0,0x8
    123c:	00042400 	sll	a0,a0,0x10
    1240:	0c000000 	jal	0 <func_80910640>
    1244:	00042403 	sra	a0,a0,0x10
    1248:	46140402 	mul.s	$f16,$f0,$f20
    124c:	44802000 	mtc1	zero,$f4
    1250:	00000000 	nop
    1254:	46102180 	add.s	$f6,$f4,$f16
    1258:	e7a60084 	swc1	$f6,132(sp)
    125c:	86240194 	lh	a0,404(s1)
    1260:	00800821 	move	at,a0
    1264:	000420c0 	sll	a0,a0,0x3
    1268:	00812023 	subu	a0,a0,at
    126c:	00042200 	sll	a0,a0,0x8
    1270:	00042400 	sll	a0,a0,0x10
    1274:	0c000000 	jal	0 <func_80910640>
    1278:	00042403 	sra	a0,a0,0x10
    127c:	46140282 	mul.s	$f10,$f0,$f20
    1280:	3c010000 	lui	at,0x0
    1284:	c4280000 	lwc1	$f8,0(at)
    1288:	24080003 	li	t0,3
    128c:	02202025 	move	a0,s1
    1290:	460a4480 	add.s	$f18,$f8,$f10
    1294:	e7b2007c 	swc1	$f18,124(sp)
    1298:	863901bc 	lh	t9,444(s1)
    129c:	57200063 	bnezl	t9,142c <func_8091156C+0x500>
    12a0:	3c063d4c 	lui	a2,0x3d4c
    12a4:	a22801c9 	sb	t0,457(s1)
    12a8:	a22001ca 	sb	zero,458(s1)
    12ac:	0c000000 	jal	0 <func_80910640>
    12b0:	8fa5008c 	lw	a1,140(sp)
    12b4:	24090050 	li	t1,80
    12b8:	1000005b 	b	1428 <func_8091156C+0x4fc>
    12bc:	a62901bc 	sh	t1,444(s1)
    12c0:	3c0142c8 	lui	at,0x42c8
    12c4:	4481a000 	mtc1	at,$f20
    12c8:	c5440028 	lwc1	$f4,40(t2)
    12cc:	46142400 	add.s	$f16,$f4,$f20
    12d0:	46148180 	add.s	$f6,$f16,$f20
    12d4:	e7a60080 	swc1	$f6,128(sp)
    12d8:	86240194 	lh	a0,404(s1)
    12dc:	00800821 	move	at,a0
    12e0:	00042080 	sll	a0,a0,0x2
    12e4:	00812021 	addu	a0,a0,at
    12e8:	00042200 	sll	a0,a0,0x8
    12ec:	00042400 	sll	a0,a0,0x10
    12f0:	0c000000 	jal	0 <func_80910640>
    12f4:	00042403 	sra	a0,a0,0x10
    12f8:	3c014248 	lui	at,0x4248
    12fc:	44815000 	mtc1	at,$f10
    1300:	44804000 	mtc1	zero,$f8
    1304:	460a0482 	mul.s	$f18,$f0,$f10
    1308:	46124100 	add.s	$f4,$f8,$f18
    130c:	e7a40084 	swc1	$f4,132(sp)
    1310:	86240194 	lh	a0,404(s1)
    1314:	00800821 	move	at,a0
    1318:	000420c0 	sll	a0,a0,0x3
    131c:	00812023 	subu	a0,a0,at
    1320:	00042200 	sll	a0,a0,0x8
    1324:	00042400 	sll	a0,a0,0x10
    1328:	0c000000 	jal	0 <func_80910640>
    132c:	00042403 	sra	a0,a0,0x10
    1330:	3c010000 	lui	at,0x0
    1334:	c4300000 	lwc1	$f16,0(at)
    1338:	3c014248 	lui	at,0x4248
    133c:	44813000 	mtc1	at,$f6
    1340:	02202025 	move	a0,s1
    1344:	46060282 	mul.s	$f10,$f0,$f6
    1348:	460a8200 	add.s	$f8,$f16,$f10
    134c:	e7a8007c 	swc1	$f8,124(sp)
    1350:	922b01ca 	lbu	t3,458(s1)
    1354:	51600007 	beqzl	t3,1374 <func_8091156C+0x448>
    1358:	862d01bc 	lh	t5,444(s1)
    135c:	a22001ca 	sb	zero,458(s1)
    1360:	0c000000 	jal	0 <func_80910640>
    1364:	8fa5008c 	lw	a1,140(sp)
    1368:	240c0050 	li	t4,80
    136c:	a62c01bc 	sh	t4,444(s1)
    1370:	862d01bc 	lh	t5,444(s1)
    1374:	240e0001 	li	t6,1
    1378:	55a0002c 	bnezl	t5,142c <func_8091156C+0x500>
    137c:	3c063d4c 	lui	a2,0x3d4c
    1380:	10000029 	b	1428 <func_8091156C+0x4fc>
    1384:	a22e01c9 	sb	t6,457(s1)
    1388:	3c0142c8 	lui	at,0x42c8
    138c:	4481a000 	mtc1	at,$f20
    1390:	c5f20028 	lwc1	$f18,40(t7)
    1394:	3c014248 	lui	at,0x4248
    1398:	44813000 	mtc1	at,$f6
    139c:	46149100 	add.s	$f4,$f18,$f20
    13a0:	46062400 	add.s	$f16,$f4,$f6
    13a4:	e7b00080 	swc1	$f16,128(sp)
    13a8:	86240194 	lh	a0,404(s1)
    13ac:	00800821 	move	at,a0
    13b0:	00042080 	sll	a0,a0,0x2
    13b4:	00812021 	addu	a0,a0,at
    13b8:	00042200 	sll	a0,a0,0x8
    13bc:	00042400 	sll	a0,a0,0x10
    13c0:	0c000000 	jal	0 <func_80910640>
    13c4:	00042403 	sra	a0,a0,0x10
    13c8:	46140202 	mul.s	$f8,$f0,$f20
    13cc:	44805000 	mtc1	zero,$f10
    13d0:	00000000 	nop
    13d4:	46085480 	add.s	$f18,$f10,$f8
    13d8:	e7b20084 	swc1	$f18,132(sp)
    13dc:	86240194 	lh	a0,404(s1)
    13e0:	00800821 	move	at,a0
    13e4:	000420c0 	sll	a0,a0,0x3
    13e8:	00812023 	subu	a0,a0,at
    13ec:	00042200 	sll	a0,a0,0x8
    13f0:	00042400 	sll	a0,a0,0x10
    13f4:	0c000000 	jal	0 <func_80910640>
    13f8:	00042403 	sra	a0,a0,0x10
    13fc:	46140182 	mul.s	$f6,$f0,$f20
    1400:	3c010000 	lui	at,0x0
    1404:	c4240000 	lwc1	$f4,0(at)
    1408:	02202025 	move	a0,s1
    140c:	46062400 	add.s	$f16,$f4,$f6
    1410:	e7b0007c 	swc1	$f16,124(sp)
    1414:	863801bc 	lh	t8,444(s1)
    1418:	57000004 	bnezl	t8,142c <func_8091156C+0x500>
    141c:	3c063d4c 	lui	a2,0x3d4c
    1420:	0c000000 	jal	0 <func_80910640>
    1424:	8fa5008c 	lw	a1,140(sp)
    1428:	3c063d4c 	lui	a2,0x3d4c
    142c:	34c6cccd 	ori	a2,a2,0xcccd
    1430:	26240024 	addiu	a0,s1,36
    1434:	8fa50084 	lw	a1,132(sp)
    1438:	0c000000 	jal	0 <func_80910640>
    143c:	8e2701cc 	lw	a3,460(s1)
    1440:	863901c0 	lh	t9,448(s1)
    1444:	26240028 	addiu	a0,s1,40
    1448:	8fa50080 	lw	a1,128(sp)
    144c:	1320000c 	beqz	t9,1480 <func_8091156C+0x554>
    1450:	3c063d4c 	lui	a2,0x3d4c
    1454:	c7aa0080 	lwc1	$f10,128(sp)
    1458:	3c063dcc 	lui	a2,0x3dcc
    145c:	34c6cccd 	ori	a2,a2,0xcccd
    1460:	46145200 	add.s	$f8,$f10,$f20
    1464:	26240028 	addiu	a0,s1,40
    1468:	3c074248 	lui	a3,0x4248
    146c:	44054000 	mfc1	a1,$f8
    1470:	0c000000 	jal	0 <func_80910640>
    1474:	00000000 	nop
    1478:	10000005 	b	1490 <func_8091156C+0x564>
    147c:	3c063d4c 	lui	a2,0x3d4c
    1480:	34c6cccd 	ori	a2,a2,0xcccd
    1484:	0c000000 	jal	0 <func_80910640>
    1488:	3c074120 	lui	a3,0x4120
    148c:	3c063d4c 	lui	a2,0x3d4c
    1490:	34c6cccd 	ori	a2,a2,0xcccd
    1494:	2624002c 	addiu	a0,s1,44
    1498:	8fa5007c 	lw	a1,124(sp)
    149c:	0c000000 	jal	0 <func_80910640>
    14a0:	8e2701cc 	lw	a3,460(s1)
    14a4:	262401cc 	addiu	a0,s1,460
    14a8:	3c054248 	lui	a1,0x4248
    14ac:	3c063f80 	lui	a2,0x3f80
    14b0:	0c000000 	jal	0 <func_80910640>
    14b4:	3c073f00 	lui	a3,0x3f00
    14b8:	86240194 	lh	a0,404(s1)
    14bc:	c6320024 	lwc1	$f18,36(s1)
    14c0:	c6240100 	lwc1	$f4,256(s1)
    14c4:	00800821 	move	at,a0
    14c8:	00042080 	sll	a0,a0,0x2
    14cc:	00812023 	subu	a0,a0,at
    14d0:	c630002c 	lwc1	$f16,44(s1)
    14d4:	c62a0108 	lwc1	$f10,264(s1)
    14d8:	00042100 	sll	a0,a0,0x4
    14dc:	00812023 	subu	a0,a0,at
    14e0:	000420c0 	sll	a0,a0,0x3
    14e4:	46049181 	sub.s	$f6,$f18,$f4
    14e8:	00812023 	subu	a0,a0,at
    14ec:	00042080 	sll	a0,a0,0x2
    14f0:	460a8201 	sub.s	$f8,$f16,$f10
    14f4:	00042400 	sll	a0,a0,0x10
    14f8:	e626005c 	swc1	$f6,92(s1)
    14fc:	00042403 	sra	a0,a0,0x10
    1500:	0c000000 	jal	0 <func_80910640>
    1504:	e6280064 	swc1	$f8,100(s1)
    1508:	46000100 	add.s	$f4,$f0,$f0
    150c:	c6320028 	lwc1	$f18,40(s1)
    1510:	262400b6 	addiu	a0,s1,182
    1514:	8625008a 	lh	a1,138(s1)
    1518:	46049180 	add.s	$f6,$f18,$f4
    151c:	24060005 	li	a2,5
    1520:	24070bb8 	li	a3,3000
    1524:	0c000000 	jal	0 <func_80910640>
    1528:	e6260028 	swc1	$f6,40(s1)
    152c:	86280194 	lh	t0,404(s1)
    1530:	3c0b0000 	lui	t3,0x0
    1534:	256b0000 	addiu	t3,t3,0
    1538:	31090001 	andi	t1,t0,0x1
    153c:	1520003c 	bnez	t1,1630 <func_8091156C+0x704>
    1540:	27aa0050 	addiu	t2,sp,80
    1544:	8d6d0000 	lw	t5,0(t3)
    1548:	8d6c0004 	lw	t4,4(t3)
    154c:	3c0f0000 	lui	t7,0x0
    1550:	ad4d0000 	sw	t5,0(t2)
    1554:	8d6d0008 	lw	t5,8(t3)
    1558:	25ef0000 	addiu	t7,t7,0
    155c:	ad4c0004 	sw	t4,4(t2)
    1560:	ad4d0008 	sw	t5,8(t2)
    1564:	8df90000 	lw	t9,0(t7)
    1568:	27ae0044 	addiu	t6,sp,68
    156c:	8df80004 	lw	t8,4(t7)
    1570:	add90000 	sw	t9,0(t6)
    1574:	8df90008 	lw	t9,8(t7)
    1578:	3c0141a0 	lui	at,0x41a0
    157c:	4481a000 	mtc1	at,$f20
    1580:	00008025 	move	s0,zero
    1584:	add80004 	sw	t8,4(t6)
    1588:	add90008 	sw	t9,8(t6)
    158c:	0c000000 	jal	0 <func_80910640>
    1590:	4600a306 	mov.s	$f12,$f20
    1594:	c6300200 	lwc1	$f16,512(s1)
    1598:	4600a306 	mov.s	$f12,$f20
    159c:	46100280 	add.s	$f10,$f0,$f16
    15a0:	0c000000 	jal	0 <func_80910640>
    15a4:	e7aa005c 	swc1	$f10,92(sp)
    15a8:	c6280204 	lwc1	$f8,516(s1)
    15ac:	4600a306 	mov.s	$f12,$f20
    15b0:	46080480 	add.s	$f18,$f0,$f8
    15b4:	0c000000 	jal	0 <func_80910640>
    15b8:	e7b20060 	swc1	$f18,96(sp)
    15bc:	c6240208 	lwc1	$f4,520(s1)
    15c0:	3c010000 	lui	at,0x0
    15c4:	c4300000 	lwc1	$f16,0(at)
    15c8:	46040180 	add.s	$f6,$f0,$f4
    15cc:	e7b00048 	swc1	$f16,72(sp)
    15d0:	0c000000 	jal	0 <func_80910640>
    15d4:	e7a60064 	swc1	$f6,100(sp)
    15d8:	3c0142a0 	lui	at,0x42a0
    15dc:	44815000 	mtc1	at,$f10
    15e0:	8fa4008c 	lw	a0,140(sp)
    15e4:	27a5005c 	addiu	a1,sp,92
    15e8:	460a0202 	mul.s	$f8,$f0,$f10
    15ec:	27a60050 	addiu	a2,sp,80
    15f0:	27a70044 	addiu	a3,sp,68
    15f4:	afa00014 	sw	zero,20(sp)
    15f8:	4600448d 	trunc.w.s	$f18,$f8
    15fc:	44099000 	mfc1	t1,$f18
    1600:	00000000 	nop
    1604:	00095400 	sll	t2,t1,0x10
    1608:	000a5c03 	sra	t3,t2,0x10
    160c:	256c0096 	addiu	t4,t3,150
    1610:	0c000000 	jal	0 <func_80910640>
    1614:	afac0010 	sw	t4,16(sp)
    1618:	26100001 	addiu	s0,s0,1
    161c:	00108400 	sll	s0,s0,0x10
    1620:	00108403 	sra	s0,s0,0x10
    1624:	2a010003 	slti	at,s0,3
    1628:	1420ffd8 	bnez	at,158c <func_8091156C+0x660>
    162c:	00000000 	nop
    1630:	8fad0078 	lw	t5,120(sp)
    1634:	02202025 	move	a0,s1
    1638:	91ae0a73 	lbu	t6,2675(t5)
    163c:	51c00004 	beqzl	t6,1650 <func_8091156C+0x724>
    1640:	02202025 	move	a0,s1
    1644:	0c000000 	jal	0 <func_80910640>
    1648:	8fa5008c 	lw	a1,140(sp)
    164c:	02202025 	move	a0,s1
    1650:	0c000000 	jal	0 <func_80910640>
    1654:	240530a4 	li	a1,12452
    1658:	8fbf002c 	lw	ra,44(sp)
    165c:	d7b40018 	ldc1	$f20,24(sp)
    1660:	8fb00024 	lw	s0,36(sp)
    1664:	8fb10028 	lw	s1,40(sp)
    1668:	03e00008 	jr	ra
    166c:	27bd0088 	addiu	sp,sp,136

00001670 <func_80911CB0>:
    1670:	27bdffb8 	addiu	sp,sp,-72
    1674:	afb00038 	sw	s0,56(sp)
    1678:	00808025 	move	s0,a0
    167c:	afbf003c 	sw	ra,60(sp)
    1680:	3c040601 	lui	a0,0x601
    1684:	afa5004c 	sw	a1,76(sp)
    1688:	0c000000 	jal	0 <func_80910640>
    168c:	2484ec94 	addiu	a0,a0,-4972
    1690:	44822000 	mtc1	v0,$f4
    1694:	3c050601 	lui	a1,0x601
    1698:	24a5ec94 	addiu	a1,a1,-4972
    169c:	468021a0 	cvt.s.w	$f6,$f4
    16a0:	2604014c 	addiu	a0,s0,332
    16a4:	3c06c0a0 	lui	a2,0xc0a0
    16a8:	0c000000 	jal	0 <func_80910640>
    16ac:	e60601d0 	swc1	$f6,464(s0)
    16b0:	3c0e0000 	lui	t6,0x0
    16b4:	25ce0000 	addiu	t6,t6,0
    16b8:	0c000000 	jal	0 <func_80910640>
    16bc:	ae0e0190 	sw	t6,400(s0)
    16c0:	3c010000 	lui	at,0x0
    16c4:	c4280000 	lwc1	$f8,0(at)
    16c8:	24080019 	li	t0,25
    16cc:	24020019 	li	v0,25
    16d0:	4608003e 	c.le.s	$f0,$f8
    16d4:	00000000 	nop
    16d8:	4502000f 	bc1fl	1718 <func_80911CB0+0xa8>
    16dc:	a60001a2 	sh	zero,418(s0)
    16e0:	860f01a6 	lh	t7,422(s0)
    16e4:	29e1000a 	slti	at,t7,10
    16e8:	5420000b 	bnezl	at,1718 <func_80911CB0+0xa8>
    16ec:	a60001a2 	sh	zero,418(s0)
    16f0:	921801c9 	lbu	t8,457(s0)
    16f4:	24030001 	li	v1,1
    16f8:	241903e8 	li	t9,1000
    16fc:	54780006 	bnel	v1,t8,1718 <func_80911CB0+0xa8>
    1700:	a60001a2 	sh	zero,418(s0)
    1704:	a60301a2 	sh	v1,418(s0)
    1708:	a61901a4 	sh	t9,420(s0)
    170c:	10000003 	b	171c <func_80911CB0+0xac>
    1710:	24020020 	li	v0,32
    1714:	a60001a2 	sh	zero,418(s0)
    1718:	a60801a4 	sh	t0,420(s0)
    171c:	8e09011c 	lw	t1,284(s0)
    1720:	8fa6004c 	lw	a2,76(sp)
    1724:	240a0026 	li	t2,38
    1728:	afa90044 	sw	t1,68(sp)
    172c:	c60a0200 	lwc1	$f10,512(s0)
    1730:	02002825 	move	a1,s0
    1734:	2407006d 	li	a3,109
    1738:	e7aa0010 	swc1	$f10,16(sp)
    173c:	c6100204 	lwc1	$f16,516(s0)
    1740:	24c41c24 	addiu	a0,a2,7204
    1744:	e7b00014 	swc1	$f16,20(sp)
    1748:	c6120208 	lwc1	$f18,520(s0)
    174c:	afaa0028 	sw	t2,40(sp)
    1750:	afa00024 	sw	zero,36(sp)
    1754:	afa00020 	sw	zero,32(sp)
    1758:	afa2001c 	sw	v0,28(sp)
    175c:	0c000000 	jal	0 <func_80910640>
    1760:	e7b20018 	swc1	$f18,24(sp)
    1764:	860c01a6 	lh	t4,422(s0)
    1768:	8fab0044 	lw	t3,68(sp)
    176c:	02002025 	move	a0,s0
    1770:	258d0001 	addiu	t5,t4,1
    1774:	a60d01a6 	sh	t5,422(s0)
    1778:	240538aa 	li	a1,14506
    177c:	0c000000 	jal	0 <func_80910640>
    1780:	ae0b011c 	sw	t3,284(s0)
    1784:	8fbf003c 	lw	ra,60(sp)
    1788:	8fb00038 	lw	s0,56(sp)
    178c:	27bd0048 	addiu	sp,sp,72
    1790:	03e00008 	jr	ra
    1794:	00000000 	nop

00001798 <func_80911DD8>:
    1798:	27bdffb0 	addiu	sp,sp,-80
    179c:	afb00038 	sw	s0,56(sp)
    17a0:	00808025 	move	s0,a0
    17a4:	afbf003c 	sw	ra,60(sp)
    17a8:	2484014c 	addiu	a0,a0,332
    17ac:	afa50054 	sw	a1,84(sp)
    17b0:	0c000000 	jal	0 <func_80910640>
    17b4:	afa40044 	sw	a0,68(sp)
    17b8:	c60401d0 	lwc1	$f4,464(s0)
    17bc:	3c040000 	lui	a0,0x0
    17c0:	24840000 	addiu	a0,a0,0
    17c4:	4600218d 	trunc.w.s	$f6,$f4
    17c8:	44053000 	mfc1	a1,$f6
    17cc:	00000000 	nop
    17d0:	00052c00 	sll	a1,a1,0x10
    17d4:	0c000000 	jal	0 <func_80910640>
    17d8:	00052c03 	sra	a1,a1,0x10
    17dc:	3c040000 	lui	a0,0x0
    17e0:	24840000 	addiu	a0,a0,0
    17e4:	0c000000 	jal	0 <func_80910640>
    17e8:	860501a4 	lh	a1,420(s0)
    17ec:	8fa40044 	lw	a0,68(sp)
    17f0:	0c000000 	jal	0 <func_80910640>
    17f4:	8e0501d0 	lw	a1,464(s0)
    17f8:	10400003 	beqz	v0,1808 <func_80911DD8+0x70>
    17fc:	02002025 	move	a0,s0
    1800:	0c000000 	jal	0 <func_80910640>
    1804:	3c05c0c0 	lui	a1,0xc0c0
    1808:	860f01a2 	lh	t7,418(s0)
    180c:	8fa40044 	lw	a0,68(sp)
    1810:	51e00012 	beqzl	t7,185c <func_80911DD8+0xc4>
    1814:	861901a4 	lh	t9,420(s0)
    1818:	0c000000 	jal	0 <func_80910640>
    181c:	3c0541a8 	lui	a1,0x41a8
    1820:	1040000d 	beqz	v0,1858 <func_80911DD8+0xc0>
    1824:	3c040601 	lui	a0,0x601
    1828:	0c000000 	jal	0 <func_80910640>
    182c:	2484f48c 	addiu	a0,a0,-2932
    1830:	44824000 	mtc1	v0,$f8
    1834:	3c050601 	lui	a1,0x601
    1838:	24a5f48c 	addiu	a1,a1,-2932
    183c:	468042a0 	cvt.s.w	$f10,$f8
    1840:	24060000 	li	a2,0
    1844:	e60a01d0 	swc1	$f10,464(s0)
    1848:	0c000000 	jal	0 <func_80910640>
    184c:	8fa40044 	lw	a0,68(sp)
    1850:	2418000a 	li	t8,10
    1854:	a61801a4 	sh	t8,420(s0)
    1858:	861901a4 	lh	t9,420(s0)
    185c:	8fa40044 	lw	a0,68(sp)
    1860:	44998000 	mtc1	t9,$f16
    1864:	00000000 	nop
    1868:	46808420 	cvt.s.w	$f16,$f16
    186c:	44058000 	mfc1	a1,$f16
    1870:	0c000000 	jal	0 <func_80910640>
    1874:	00000000 	nop
    1878:	50400011 	beqzl	v0,18c0 <func_80911DD8+0x128>
    187c:	860901a4 	lh	t1,420(s0)
    1880:	920801c9 	lbu	t0,457(s0)
    1884:	240538a6 	li	a1,14502
    1888:	02002025 	move	a0,s0
    188c:	29010002 	slti	at,t0,2
    1890:	10200005 	beqz	at,18a8 <func_80911DD8+0x110>
    1894:	00000000 	nop
    1898:	0c000000 	jal	0 <func_80910640>
    189c:	02002025 	move	a0,s0
    18a0:	10000004 	b	18b4 <func_80911DD8+0x11c>
    18a4:	02002025 	move	a0,s0
    18a8:	0c000000 	jal	0 <func_80910640>
    18ac:	240538a5 	li	a1,14501
    18b0:	02002025 	move	a0,s0
    18b4:	0c000000 	jal	0 <func_80910640>
    18b8:	240538b2 	li	a1,14514
    18bc:	860901a4 	lh	t1,420(s0)
    18c0:	8fa40044 	lw	a0,68(sp)
    18c4:	44899000 	mtc1	t1,$f18
    18c8:	00000000 	nop
    18cc:	468094a0 	cvt.s.w	$f18,$f18
    18d0:	44059000 	mfc1	a1,$f18
    18d4:	0c000000 	jal	0 <func_80910640>
    18d8:	00000000 	nop
    18dc:	50400017 	beqzl	v0,193c <func_80911DD8+0x1a4>
    18e0:	260400b6 	addiu	a0,s0,182
    18e4:	8e0a011c 	lw	t2,284(s0)
    18e8:	8fa60054 	lw	a2,84(sp)
    18ec:	240c0032 	li	t4,50
    18f0:	afaa004c 	sw	t2,76(sp)
    18f4:	c6040200 	lwc1	$f4,512(s0)
    18f8:	02002825 	move	a1,s0
    18fc:	2407006d 	li	a3,109
    1900:	e7a40010 	swc1	$f4,16(sp)
    1904:	c6060204 	lwc1	$f6,516(s0)
    1908:	24c41c24 	addiu	a0,a2,7204
    190c:	e7a60014 	swc1	$f6,20(sp)
    1910:	c6080208 	lwc1	$f8,520(s0)
    1914:	e7a80018 	swc1	$f8,24(sp)
    1918:	860b01a2 	lh	t3,418(s0)
    191c:	afac0028 	sw	t4,40(sp)
    1920:	afa00024 	sw	zero,36(sp)
    1924:	afa00020 	sw	zero,32(sp)
    1928:	0c000000 	jal	0 <func_80910640>
    192c:	afab001c 	sw	t3,28(sp)
    1930:	8fad004c 	lw	t5,76(sp)
    1934:	ae0d011c 	sw	t5,284(s0)
    1938:	260400b6 	addiu	a0,s0,182
    193c:	8605008a 	lh	a1,138(s0)
    1940:	24060005 	li	a2,5
    1944:	0c000000 	jal	0 <func_80910640>
    1948:	240707d0 	li	a3,2000
    194c:	c60a0024 	lwc1	$f10,36(s0)
    1950:	c610005c 	lwc1	$f16,92(s0)
    1954:	c604002c 	lwc1	$f4,44(s0)
    1958:	c6060064 	lwc1	$f6,100(s0)
    195c:	46105480 	add.s	$f18,$f10,$f16
    1960:	2604005c 	addiu	a0,s0,92
    1964:	3c053f80 	lui	a1,0x3f80
    1968:	46062200 	add.s	$f8,$f4,$f6
    196c:	e6120024 	swc1	$f18,36(s0)
    1970:	3c063f00 	lui	a2,0x3f00
    1974:	0c000000 	jal	0 <func_80910640>
    1978:	e608002c 	swc1	$f8,44(s0)
    197c:	26040064 	addiu	a0,s0,100
    1980:	3c053f80 	lui	a1,0x3f80
    1984:	0c000000 	jal	0 <func_80910640>
    1988:	3c063f00 	lui	a2,0x3f00
    198c:	86040194 	lh	a0,404(s0)
    1990:	00800821 	move	at,a0
    1994:	00042080 	sll	a0,a0,0x2
    1998:	00812023 	subu	a0,a0,at
    199c:	00042100 	sll	a0,a0,0x4
    19a0:	00812023 	subu	a0,a0,at
    19a4:	000420c0 	sll	a0,a0,0x3
    19a8:	00812023 	subu	a0,a0,at
    19ac:	00042080 	sll	a0,a0,0x2
    19b0:	00042400 	sll	a0,a0,0x10
    19b4:	0c000000 	jal	0 <func_80910640>
    19b8:	00042403 	sra	a0,a0,0x10
    19bc:	46000400 	add.s	$f16,$f0,$f0
    19c0:	c60a0028 	lwc1	$f10,40(s0)
    19c4:	46105480 	add.s	$f18,$f10,$f16
    19c8:	e6120028 	swc1	$f18,40(s0)
    19cc:	8fbf003c 	lw	ra,60(sp)
    19d0:	8fb00038 	lw	s0,56(sp)
    19d4:	27bd0050 	addiu	sp,sp,80
    19d8:	03e00008 	jr	ra
    19dc:	00000000 	nop

000019e0 <func_80912020>:
    19e0:	27bdffe0 	addiu	sp,sp,-32
    19e4:	afbf0014 	sw	ra,20(sp)
    19e8:	afa40020 	sw	a0,32(sp)
    19ec:	0c000000 	jal	0 <func_80910640>
    19f0:	afa50024 	sw	a1,36(sp)
    19f4:	3c010000 	lui	at,0x0
    19f8:	c4240000 	lwc1	$f4,0(at)
    19fc:	3c040000 	lui	a0,0x0
    1a00:	46040182 	mul.s	$f6,$f0,$f4
    1a04:	4600320d 	trunc.w.s	$f8,$f6
    1a08:	44024000 	mfc1	v0,$f8
    1a0c:	00000000 	nop
    1a10:	00027c00 	sll	t7,v0,0x10
    1a14:	000fc403 	sra	t8,t7,0x10
    1a18:	0018c880 	sll	t9,t8,0x2
    1a1c:	00992021 	addu	a0,a0,t9
    1a20:	8c840000 	lw	a0,0(a0)
    1a24:	0c000000 	jal	0 <func_80910640>
    1a28:	a7a2001e 	sh	v0,30(sp)
    1a2c:	44825000 	mtc1	v0,$f10
    1a30:	8fa30020 	lw	v1,32(sp)
    1a34:	3c050000 	lui	a1,0x0
    1a38:	46805420 	cvt.s.w	$f16,$f10
    1a3c:	24060000 	li	a2,0
    1a40:	2464014c 	addiu	a0,v1,332
    1a44:	e47001d0 	swc1	$f16,464(v1)
    1a48:	87a8001e 	lh	t0,30(sp)
    1a4c:	00084880 	sll	t1,t0,0x2
    1a50:	00a92821 	addu	a1,a1,t1
    1a54:	0c000000 	jal	0 <func_80910640>
    1a58:	8ca50000 	lw	a1,0(a1)
    1a5c:	8fab0020 	lw	t3,32(sp)
    1a60:	3c0a0000 	lui	t2,0x0
    1a64:	254a0000 	addiu	t2,t2,0
    1a68:	ad6a0190 	sw	t2,400(t3)
    1a6c:	8fbf0014 	lw	ra,20(sp)
    1a70:	27bd0020 	addiu	sp,sp,32
    1a74:	03e00008 	jr	ra
    1a78:	00000000 	nop

00001a7c <func_809120BC>:
    1a7c:	27bdffd8 	addiu	sp,sp,-40
    1a80:	afb00018 	sw	s0,24(sp)
    1a84:	00808025 	move	s0,a0
    1a88:	afbf001c 	sw	ra,28(sp)
    1a8c:	2484014c 	addiu	a0,a0,332
    1a90:	afa5002c 	sw	a1,44(sp)
    1a94:	0c000000 	jal	0 <func_80910640>
    1a98:	afa40020 	sw	a0,32(sp)
    1a9c:	8fa40020 	lw	a0,32(sp)
    1aa0:	0c000000 	jal	0 <func_80910640>
    1aa4:	3c0540a0 	lui	a1,0x40a0
    1aa8:	10400009 	beqz	v0,1ad0 <func_809120BC+0x54>
    1aac:	02002025 	move	a0,s0
    1ab0:	0c000000 	jal	0 <func_80910640>
    1ab4:	240538b2 	li	a1,14514
    1ab8:	3c040000 	lui	a0,0x0
    1abc:	0c000000 	jal	0 <func_80910640>
    1ac0:	24840000 	addiu	a0,a0,0
    1ac4:	3c040000 	lui	a0,0x0
    1ac8:	0c000000 	jal	0 <func_80910640>
    1acc:	24840000 	addiu	a0,a0,0
    1ad0:	8fa40020 	lw	a0,32(sp)
    1ad4:	0c000000 	jal	0 <func_80910640>
    1ad8:	8e0501d0 	lw	a1,464(s0)
    1adc:	10400003 	beqz	v0,1aec <func_809120BC+0x70>
    1ae0:	02002025 	move	a0,s0
    1ae4:	0c000000 	jal	0 <func_80910640>
    1ae8:	24050000 	li	a1,0
    1aec:	c6040024 	lwc1	$f4,36(s0)
    1af0:	c606005c 	lwc1	$f6,92(s0)
    1af4:	c60a002c 	lwc1	$f10,44(s0)
    1af8:	c6100064 	lwc1	$f16,100(s0)
    1afc:	46062200 	add.s	$f8,$f4,$f6
    1b00:	2604005c 	addiu	a0,s0,92
    1b04:	3c053f80 	lui	a1,0x3f80
    1b08:	46105480 	add.s	$f18,$f10,$f16
    1b0c:	e6080024 	swc1	$f8,36(s0)
    1b10:	3c063f00 	lui	a2,0x3f00
    1b14:	0c000000 	jal	0 <func_80910640>
    1b18:	e612002c 	swc1	$f18,44(s0)
    1b1c:	26040064 	addiu	a0,s0,100
    1b20:	3c053f80 	lui	a1,0x3f80
    1b24:	0c000000 	jal	0 <func_80910640>
    1b28:	3c063f00 	lui	a2,0x3f00
    1b2c:	86040194 	lh	a0,404(s0)
    1b30:	00800821 	move	at,a0
    1b34:	00042080 	sll	a0,a0,0x2
    1b38:	00812023 	subu	a0,a0,at
    1b3c:	00042100 	sll	a0,a0,0x4
    1b40:	00812023 	subu	a0,a0,at
    1b44:	000420c0 	sll	a0,a0,0x3
    1b48:	00812023 	subu	a0,a0,at
    1b4c:	00042080 	sll	a0,a0,0x2
    1b50:	00042400 	sll	a0,a0,0x10
    1b54:	0c000000 	jal	0 <func_80910640>
    1b58:	00042403 	sra	a0,a0,0x10
    1b5c:	46000180 	add.s	$f6,$f0,$f0
    1b60:	c6040028 	lwc1	$f4,40(s0)
    1b64:	920e01ca 	lbu	t6,458(s0)
    1b68:	02002025 	move	a0,s0
    1b6c:	46062200 	add.s	$f8,$f4,$f6
    1b70:	11c00006 	beqz	t6,1b8c <func_809120BC+0x110>
    1b74:	e6080028 	swc1	$f8,40(s0)
    1b78:	a20001ca 	sb	zero,458(s0)
    1b7c:	0c000000 	jal	0 <func_80910640>
    1b80:	8fa5002c 	lw	a1,44(sp)
    1b84:	240f0050 	li	t7,80
    1b88:	a60f01bc 	sh	t7,444(s0)
    1b8c:	8fbf001c 	lw	ra,28(sp)
    1b90:	8fb00018 	lw	s0,24(sp)
    1b94:	27bd0028 	addiu	sp,sp,40
    1b98:	03e00008 	jr	ra
    1b9c:	00000000 	nop

00001ba0 <func_809121E0>:
    1ba0:	27bdffd8 	addiu	sp,sp,-40
    1ba4:	3c0e0000 	lui	t6,0x0
    1ba8:	25ce0000 	addiu	t6,t6,0
    1bac:	afbf001c 	sw	ra,28(sp)
    1bb0:	afb00018 	sw	s0,24(sp)
    1bb4:	afa5002c 	sw	a1,44(sp)
    1bb8:	afae0024 	sw	t6,36(sp)
    1bbc:	8c8f0190 	lw	t7,400(a0)
    1bc0:	00808025 	move	s0,a0
    1bc4:	3c040601 	lui	a0,0x601
    1bc8:	11cf0011 	beq	t6,t7,1c10 <func_809121E0+0x70>
    1bcc:	00000000 	nop
    1bd0:	3c040601 	lui	a0,0x601
    1bd4:	0c000000 	jal	0 <func_80910640>
    1bd8:	248408d8 	addiu	a0,a0,2264
    1bdc:	44822000 	mtc1	v0,$f4
    1be0:	3c050601 	lui	a1,0x601
    1be4:	24a508d8 	addiu	a1,a1,2264
    1be8:	468021a0 	cvt.s.w	$f6,$f4
    1bec:	2604014c 	addiu	a0,s0,332
    1bf0:	24060000 	li	a2,0
    1bf4:	0c000000 	jal	0 <func_80910640>
    1bf8:	e60601d0 	swc1	$f6,464(s0)
    1bfc:	24180032 	li	t8,50
    1c00:	2419003c 	li	t9,60
    1c04:	a61801bc 	sh	t8,444(s0)
    1c08:	1000000b 	b	1c38 <func_809121E0+0x98>
    1c0c:	a21901c8 	sb	t9,456(s0)
    1c10:	0c000000 	jal	0 <func_80910640>
    1c14:	2484fac8 	addiu	a0,a0,-1336
    1c18:	44824000 	mtc1	v0,$f8
    1c1c:	3c050601 	lui	a1,0x601
    1c20:	24a5fac8 	addiu	a1,a1,-1336
    1c24:	468042a0 	cvt.s.w	$f10,$f8
    1c28:	2604014c 	addiu	a0,s0,332
    1c2c:	24060000 	li	a2,0
    1c30:	0c000000 	jal	0 <func_80910640>
    1c34:	e60a01d0 	swc1	$f10,464(s0)
    1c38:	44800000 	mtc1	zero,$f0
    1c3c:	8fa80024 	lw	t0,36(sp)
    1c40:	a60001a2 	sh	zero,418(s0)
    1c44:	e600005c 	swc1	$f0,92(s0)
    1c48:	ae080190 	sw	t0,400(s0)
    1c4c:	e6000064 	swc1	$f0,100(s0)
    1c50:	8fbf001c 	lw	ra,28(sp)
    1c54:	8fb00018 	lw	s0,24(sp)
    1c58:	27bd0028 	addiu	sp,sp,40
    1c5c:	03e00008 	jr	ra
    1c60:	00000000 	nop

00001c64 <func_809122A4>:
    1c64:	27bdffd8 	addiu	sp,sp,-40
    1c68:	afb00018 	sw	s0,24(sp)
    1c6c:	00808025 	move	s0,a0
    1c70:	afbf001c 	sw	ra,28(sp)
    1c74:	3c040000 	lui	a0,0x0
    1c78:	afa5002c 	sw	a1,44(sp)
    1c7c:	0c000000 	jal	0 <func_80910640>
    1c80:	24840000 	addiu	a0,a0,0
    1c84:	2604014c 	addiu	a0,s0,332
    1c88:	0c000000 	jal	0 <func_80910640>
    1c8c:	afa40024 	sw	a0,36(sp)
    1c90:	3c010000 	lui	at,0x0
    1c94:	c4240000 	lwc1	$f4,0(at)
    1c98:	3c0140a0 	lui	at,0x40a0
    1c9c:	44813000 	mtc1	at,$f6
    1ca0:	c6080028 	lwc1	$f8,40(s0)
    1ca4:	e604006c 	swc1	$f4,108(s0)
    1ca8:	4606403e 	c.le.s	$f8,$f6
    1cac:	00000000 	nop
    1cb0:	4500001e 	bc1f	1d2c <func_809122A4+0xc8>
    1cb4:	00000000 	nop
    1cb8:	860e01a2 	lh	t6,418(s0)
    1cbc:	3c040601 	lui	a0,0x601
    1cc0:	55c0000e 	bnezl	t6,1cfc <func_809122A4+0x98>
    1cc4:	44800000 	mtc1	zero,$f0
    1cc8:	0c000000 	jal	0 <func_80910640>
    1ccc:	24841bcc 	addiu	a0,a0,7116
    1cd0:	44825000 	mtc1	v0,$f10
    1cd4:	3c050601 	lui	a1,0x601
    1cd8:	24a51bcc 	addiu	a1,a1,7116
    1cdc:	46805420 	cvt.s.w	$f16,$f10
    1ce0:	3c06c120 	lui	a2,0xc120
    1ce4:	e61001d0 	swc1	$f16,464(s0)
    1ce8:	0c000000 	jal	0 <func_80910640>
    1cec:	8fa40024 	lw	a0,36(sp)
    1cf0:	240f0001 	li	t7,1
    1cf4:	a60f01a2 	sh	t7,418(s0)
    1cf8:	44800000 	mtc1	zero,$f0
    1cfc:	8e0501d0 	lw	a1,464(s0)
    1d00:	e6000060 	swc1	$f0,96(s0)
    1d04:	e600006c 	swc1	$f0,108(s0)
    1d08:	0c000000 	jal	0 <func_80910640>
    1d0c:	8fa40024 	lw	a0,36(sp)
    1d10:	10400003 	beqz	v0,1d20 <func_809122A4+0xbc>
    1d14:	02002025 	move	a0,s0
    1d18:	0c000000 	jal	0 <func_80910640>
    1d1c:	240538b1 	li	a1,14513
    1d20:	8e180004 	lw	t8,4(s0)
    1d24:	37190400 	ori	t9,t8,0x400
    1d28:	ae190004 	sw	t9,4(s0)
    1d2c:	3c040000 	lui	a0,0x0
    1d30:	24840000 	addiu	a0,a0,0
    1d34:	0c000000 	jal	0 <func_80910640>
    1d38:	860501bc 	lh	a1,444(s0)
    1d3c:	860801bc 	lh	t0,444(s0)
    1d40:	02002025 	move	a0,s0
    1d44:	1500000c 	bnez	t0,1d78 <func_809122A4+0x114>
    1d48:	00000000 	nop
    1d4c:	0c000000 	jal	0 <func_80910640>
    1d50:	3c05c0a0 	lui	a1,0xc0a0
    1d54:	44809000 	mtc1	zero,$f18
    1d58:	44802000 	mtc1	zero,$f4
    1d5c:	2402001e 	li	v0,30
    1d60:	24090001 	li	t1,1
    1d64:	a60201bc 	sh	v0,444(s0)
    1d68:	a60201c0 	sh	v0,448(s0)
    1d6c:	a20901c9 	sb	t1,457(s0)
    1d70:	e6120060 	swc1	$f18,96(s0)
    1d74:	e604006c 	swc1	$f4,108(s0)
    1d78:	0c000000 	jal	0 <func_80910640>
    1d7c:	02002025 	move	a0,s0
    1d80:	8fbf001c 	lw	ra,28(sp)
    1d84:	8fb00018 	lw	s0,24(sp)
    1d88:	27bd0028 	addiu	sp,sp,40
    1d8c:	03e00008 	jr	ra
    1d90:	00000000 	nop

00001d94 <func_809123D4>:
    1d94:	27bdffe8 	addiu	sp,sp,-24
    1d98:	00803825 	move	a3,a0
    1d9c:	afbf0014 	sw	ra,20(sp)
    1da0:	3c040601 	lui	a0,0x601
    1da4:	afa5001c 	sw	a1,28(sp)
    1da8:	24840344 	addiu	a0,a0,836
    1dac:	0c000000 	jal	0 <func_80910640>
    1db0:	afa70018 	sw	a3,24(sp)
    1db4:	44822000 	mtc1	v0,$f4
    1db8:	8fa70018 	lw	a3,24(sp)
    1dbc:	3c050601 	lui	a1,0x601
    1dc0:	468021a0 	cvt.s.w	$f6,$f4
    1dc4:	24a50344 	addiu	a1,a1,836
    1dc8:	3c06c040 	lui	a2,0xc040
    1dcc:	24e4014c 	addiu	a0,a3,332
    1dd0:	0c000000 	jal	0 <func_80910640>
    1dd4:	e4e601d0 	swc1	$f6,464(a3)
    1dd8:	8fa40018 	lw	a0,24(sp)
    1ddc:	3c0e0000 	lui	t6,0x0
    1de0:	25ce0000 	addiu	t6,t6,0
    1de4:	240f000a 	li	t7,10
    1de8:	240538aa 	li	a1,14506
    1dec:	ac8e0190 	sw	t6,400(a0)
    1df0:	0c000000 	jal	0 <func_80910640>
    1df4:	a48f01bc 	sh	t7,444(a0)
    1df8:	8fbf0014 	lw	ra,20(sp)
    1dfc:	27bd0018 	addiu	sp,sp,24
    1e00:	03e00008 	jr	ra
    1e04:	00000000 	nop

00001e08 <func_80912448>:
    1e08:	27bdffe0 	addiu	sp,sp,-32
    1e0c:	afb00018 	sw	s0,24(sp)
    1e10:	00808025 	move	s0,a0
    1e14:	afbf001c 	sw	ra,28(sp)
    1e18:	afa50024 	sw	a1,36(sp)
    1e1c:	240e0009 	li	t6,9
    1e20:	a08e04f4 	sb	t6,1268(a0)
    1e24:	0c000000 	jal	0 <func_80910640>
    1e28:	2484014c 	addiu	a0,a0,332
    1e2c:	c6040024 	lwc1	$f4,36(s0)
    1e30:	c606005c 	lwc1	$f6,92(s0)
    1e34:	c60a002c 	lwc1	$f10,44(s0)
    1e38:	c6100064 	lwc1	$f16,100(s0)
    1e3c:	46062200 	add.s	$f8,$f4,$f6
    1e40:	2604005c 	addiu	a0,s0,92
    1e44:	3c053f80 	lui	a1,0x3f80
    1e48:	46105480 	add.s	$f18,$f10,$f16
    1e4c:	e6080024 	swc1	$f8,36(s0)
    1e50:	3c063f00 	lui	a2,0x3f00
    1e54:	0c000000 	jal	0 <func_80910640>
    1e58:	e612002c 	swc1	$f18,44(s0)
    1e5c:	26040064 	addiu	a0,s0,100
    1e60:	3c053f80 	lui	a1,0x3f80
    1e64:	0c000000 	jal	0 <func_80910640>
    1e68:	3c063f00 	lui	a2,0x3f00
    1e6c:	86040194 	lh	a0,404(s0)
    1e70:	00800821 	move	at,a0
    1e74:	00042080 	sll	a0,a0,0x2
    1e78:	00812023 	subu	a0,a0,at
    1e7c:	00042100 	sll	a0,a0,0x4
    1e80:	00812023 	subu	a0,a0,at
    1e84:	000420c0 	sll	a0,a0,0x3
    1e88:	00812023 	subu	a0,a0,at
    1e8c:	00042080 	sll	a0,a0,0x2
    1e90:	00042400 	sll	a0,a0,0x10
    1e94:	0c000000 	jal	0 <func_80910640>
    1e98:	00042403 	sra	a0,a0,0x10
    1e9c:	46000180 	add.s	$f6,$f0,$f0
    1ea0:	c6040028 	lwc1	$f4,40(s0)
    1ea4:	860f01bc 	lh	t7,444(s0)
    1ea8:	02002025 	move	a0,s0
    1eac:	46062200 	add.s	$f8,$f4,$f6
    1eb0:	15e00007 	bnez	t7,1ed0 <func_80912448+0xc8>
    1eb4:	e6080028 	swc1	$f8,40(s0)
    1eb8:	0c000000 	jal	0 <func_80910640>
    1ebc:	3c05c0a0 	lui	a1,0xc0a0
    1ec0:	2418000a 	li	t8,10
    1ec4:	24190001 	li	t9,1
    1ec8:	a61801bc 	sh	t8,444(s0)
    1ecc:	a21901c9 	sb	t9,457(s0)
    1ed0:	8fbf001c 	lw	ra,28(sp)
    1ed4:	8fb00018 	lw	s0,24(sp)
    1ed8:	27bd0020 	addiu	sp,sp,32
    1edc:	03e00008 	jr	ra
    1ee0:	00000000 	nop

00001ee4 <func_80912524>:
    1ee4:	27bdffe8 	addiu	sp,sp,-24
    1ee8:	00803825 	move	a3,a0
    1eec:	afbf0014 	sw	ra,20(sp)
    1ef0:	3c040601 	lui	a0,0x601
    1ef4:	afa5001c 	sw	a1,28(sp)
    1ef8:	248429e0 	addiu	a0,a0,10720
    1efc:	0c000000 	jal	0 <func_80910640>
    1f00:	afa70018 	sw	a3,24(sp)
    1f04:	44822000 	mtc1	v0,$f4
    1f08:	8fa70018 	lw	a3,24(sp)
    1f0c:	3c050601 	lui	a1,0x601
    1f10:	468021a0 	cvt.s.w	$f6,$f4
    1f14:	24a529e0 	addiu	a1,a1,10720
    1f18:	3c06c040 	lui	a2,0xc040
    1f1c:	24e4014c 	addiu	a0,a3,332
    1f20:	0c000000 	jal	0 <func_80910640>
    1f24:	e4e601d0 	swc1	$f6,464(a3)
    1f28:	8fa70018 	lw	a3,24(sp)
    1f2c:	3c0e0000 	lui	t6,0x0
    1f30:	25ce0000 	addiu	t6,t6,0
    1f34:	240f0014 	li	t7,20
    1f38:	acee0190 	sw	t6,400(a3)
    1f3c:	a4ef01bc 	sh	t7,444(a3)
    1f40:	a4e001a2 	sh	zero,418(a3)
    1f44:	8fbf0014 	lw	ra,20(sp)
    1f48:	27bd0018 	addiu	sp,sp,24
    1f4c:	03e00008 	jr	ra
    1f50:	00000000 	nop

00001f54 <func_80912594>:
    1f54:	27bdff20 	addiu	sp,sp,-224
    1f58:	afb10060 	sw	s1,96(sp)
    1f5c:	afbf0064 	sw	ra,100(sp)
    1f60:	afb0005c 	sw	s0,92(sp)
    1f64:	f7bc0050 	sdc1	$f28,80(sp)
    1f68:	f7ba0048 	sdc1	$f26,72(sp)
    1f6c:	f7b80040 	sdc1	$f24,64(sp)
    1f70:	f7b60038 	sdc1	$f22,56(sp)
    1f74:	f7b40030 	sdc1	$f20,48(sp)
    1f78:	3c014160 	lui	at,0x4160
    1f7c:	44819000 	mtc1	at,$f18
    1f80:	afa500e4 	sw	a1,228(sp)
    1f84:	c4900024 	lwc1	$f16,36(a0)
    1f88:	c48e002c 	lwc1	$f14,44(a0)
    1f8c:	3c010000 	lui	at,0x0
    1f90:	c42c0000 	lwc1	$f12,0(at)
    1f94:	46128501 	sub.s	$f20,$f16,$f18
    1f98:	00808825 	move	s1,a0
    1f9c:	8cb01c44 	lw	s0,7236(a1)
    1fa0:	460c7581 	sub.s	$f22,$f14,$f12
    1fa4:	240f0009 	li	t7,9
    1fa8:	a08f04f4 	sb	t7,1268(a0)
    1fac:	2484014c 	addiu	a0,a0,332
    1fb0:	0c000000 	jal	0 <func_80910640>
    1fb4:	afa40070 	sw	a0,112(sp)
    1fb8:	862301a2 	lh	v1,418(s1)
    1fbc:	1060000a 	beqz	v1,1fe8 <func_80912594+0x94>
    1fc0:	24010001 	li	at,1
    1fc4:	10610043 	beq	v1,at,20d4 <func_80912594+0x180>
    1fc8:	8fa40070 	lw	a0,112(sp)
    1fcc:	24010002 	li	at,2
    1fd0:	10610051 	beq	v1,at,2118 <func_80912594+0x1c4>
    1fd4:	24010003 	li	at,3
    1fd8:	10610094 	beq	v1,at,222c <func_80912594+0x2d8>
    1fdc:	00000000 	nop
    1fe0:	100000e7 	b	2380 <func_80912594+0x42c>
    1fe4:	c6200028 	lwc1	$f0,40(s1)
    1fe8:	862201bc 	lh	v0,444(s1)
    1fec:	240100da 	li	at,218
    1ff0:	02202025 	move	a0,s1
    1ff4:	54410005 	bnel	v0,at,200c <func_80912594+0xb8>
    1ff8:	24010013 	li	at,19
    1ffc:	0c000000 	jal	0 <func_80910640>
    2000:	240538aa 	li	a1,14506
    2004:	862201bc 	lh	v0,444(s1)
    2008:	24010013 	li	at,19
    200c:	14410003 	bne	v0,at,201c <func_80912594+0xc8>
    2010:	02202025 	move	a0,s1
    2014:	0c000000 	jal	0 <func_80910640>
    2018:	240538a9 	li	a1,14505
    201c:	c6320024 	lwc1	$f18,36(s1)
    2020:	c624005c 	lwc1	$f4,92(s1)
    2024:	3c013f80 	lui	at,0x3f80
    2028:	4481c000 	mtc1	at,$f24
    202c:	c628002c 	lwc1	$f8,44(s1)
    2030:	c62a0064 	lwc1	$f10,100(s1)
    2034:	3c013f00 	lui	at,0x3f00
    2038:	46049180 	add.s	$f6,$f18,$f4
    203c:	4481d000 	mtc1	at,$f26
    2040:	4405c000 	mfc1	a1,$f24
    2044:	460a4480 	add.s	$f18,$f8,$f10
    2048:	4406d000 	mfc1	a2,$f26
    204c:	e6260024 	swc1	$f6,36(s1)
    2050:	2624005c 	addiu	a0,s1,92
    2054:	0c000000 	jal	0 <func_80910640>
    2058:	e632002c 	swc1	$f18,44(s1)
    205c:	4405c000 	mfc1	a1,$f24
    2060:	4406d000 	mfc1	a2,$f26
    2064:	0c000000 	jal	0 <func_80910640>
    2068:	26240064 	addiu	a0,s1,100
    206c:	863801bc 	lh	t8,444(s1)
    2070:	3c100601 	lui	s0,0x601
    2074:	26101f44 	addiu	s0,s0,8004
    2078:	1700000f 	bnez	t8,20b8 <func_80912594+0x164>
    207c:	24190001 	li	t9,1
    2080:	4480c000 	mtc1	zero,$f24
    2084:	2408000a 	li	t0,10
    2088:	a63901a2 	sh	t9,418(s1)
    208c:	a62801bc 	sh	t0,444(s1)
    2090:	02002025 	move	a0,s0
    2094:	0c000000 	jal	0 <func_80910640>
    2098:	e6380068 	swc1	$f24,104(s1)
    209c:	44822000 	mtc1	v0,$f4
    20a0:	4406c000 	mfc1	a2,$f24
    20a4:	02002825 	move	a1,s0
    20a8:	468021a0 	cvt.s.w	$f6,$f4
    20ac:	e62601d0 	swc1	$f6,464(s1)
    20b0:	0c000000 	jal	0 <func_80910640>
    20b4:	8fa40070 	lw	a0,112(sp)
    20b8:	262400b6 	addiu	a0,s1,182
    20bc:	8625008a 	lh	a1,138(s1)
    20c0:	24060005 	li	a2,5
    20c4:	0c000000 	jal	0 <func_80910640>
    20c8:	240707d0 	li	a3,2000
    20cc:	100000ac 	b	2380 <func_80912594+0x42c>
    20d0:	c6200028 	lwc1	$f0,40(s1)
    20d4:	0c000000 	jal	0 <func_80910640>
    20d8:	8e2501d0 	lw	a1,464(s1)
    20dc:	1040000e 	beqz	v0,2118 <func_80912594+0x1c4>
    20e0:	3c040601 	lui	a0,0x601
    20e4:	0c000000 	jal	0 <func_80910640>
    20e8:	2484267c 	addiu	a0,a0,9852
    20ec:	44824000 	mtc1	v0,$f8
    20f0:	4480c000 	mtc1	zero,$f24
    20f4:	3c050601 	lui	a1,0x601
    20f8:	468042a0 	cvt.s.w	$f10,$f8
    20fc:	4406c000 	mfc1	a2,$f24
    2100:	24a5267c 	addiu	a1,a1,9852
    2104:	e62a01d0 	swc1	$f10,464(s1)
    2108:	0c000000 	jal	0 <func_80910640>
    210c:	8fa40070 	lw	a0,112(sp)
    2110:	24090002 	li	t1,2
    2114:	a62901a2 	sh	t1,418(s1)
    2118:	862a01bc 	lh	t2,444(s1)
    211c:	262400b6 	addiu	a0,s1,182
    2120:	24060005 	li	a2,5
    2124:	1140001d 	beqz	t2,219c <func_80912594+0x248>
    2128:	240707d0 	li	a3,2000
    212c:	0c000000 	jal	0 <func_80910640>
    2130:	8625008a 	lh	a1,138(s1)
    2134:	3c014220 	lui	at,0x4220
    2138:	c6120024 	lwc1	$f18,36(s0)
    213c:	c6240024 	lwc1	$f4,36(s1)
    2140:	44814000 	mtc1	at,$f8
    2144:	c6060028 	lwc1	$f6,40(s0)
    2148:	46049081 	sub.s	$f2,$f18,$f4
    214c:	c604002c 	lwc1	$f4,44(s0)
    2150:	c6320028 	lwc1	$f18,40(s1)
    2154:	46083280 	add.s	$f10,$f6,$f8
    2158:	c626002c 	lwc1	$f6,44(s1)
    215c:	46021202 	mul.s	$f8,$f2,$f2
    2160:	862b00b6 	lh	t3,182(s1)
    2164:	46062401 	sub.s	$f16,$f4,$f6
    2168:	a62b0032 	sh	t3,50(s1)
    216c:	46125301 	sub.s	$f12,$f10,$f18
    2170:	46108282 	mul.s	$f10,$f16,$f16
    2174:	460a4000 	add.s	$f0,$f8,$f10
    2178:	0c000000 	jal	0 <func_80910640>
    217c:	46000384 	sqrt.s	$f14,$f0
    2180:	3c010000 	lui	at,0x0
    2184:	c4320000 	lwc1	$f18,0(at)
    2188:	46120102 	mul.s	$f4,$f0,$f18
    218c:	4600218d 	trunc.w.s	$f6,$f4
    2190:	440d3000 	mfc1	t5,$f6
    2194:	00000000 	nop
    2198:	a62d0030 	sh	t5,48(s1)
    219c:	0c000000 	jal	0 <func_80910640>
    21a0:	02202025 	move	a0,s1
    21a4:	0c000000 	jal	0 <func_80910640>
    21a8:	02202025 	move	a0,s1
    21ac:	3c013f80 	lui	at,0x3f80
    21b0:	4481c000 	mtc1	at,$f24
    21b4:	3c013f00 	lui	at,0x3f00
    21b8:	4481d000 	mtc1	at,$f26
    21bc:	4406c000 	mfc1	a2,$f24
    21c0:	26240068 	addiu	a0,s1,104
    21c4:	4407d000 	mfc1	a3,$f26
    21c8:	0c000000 	jal	0 <func_80910640>
    21cc:	3c054120 	lui	a1,0x4120
    21d0:	4614a202 	mul.s	$f8,$f20,$f20
    21d4:	3c01438c 	lui	at,0x438c
    21d8:	44819000 	mtc1	at,$f18
    21dc:	4616b282 	mul.s	$f10,$f22,$f22
    21e0:	3c010000 	lui	at,0x0
    21e4:	240e0003 	li	t6,3
    21e8:	240f0014 	li	t7,20
    21ec:	460a4000 	add.s	$f0,$f8,$f10
    21f0:	46000004 	sqrt.s	$f0,$f0
    21f4:	4600903c 	c.lt.s	$f18,$f0
    21f8:	00000000 	nop
    21fc:	45030008 	bc1tl	2220 <func_80912594+0x2cc>
    2200:	a62e01a2 	sh	t6,418(s1)
    2204:	c624008c 	lwc1	$f4,140(s1)
    2208:	c4260000 	lwc1	$f6,0(at)
    220c:	4606203c 	c.lt.s	$f4,$f6
    2210:	00000000 	nop
    2214:	45000003 	bc1f	2224 <func_80912594+0x2d0>
    2218:	00000000 	nop
    221c:	a62e01a2 	sh	t6,418(s1)
    2220:	a62f01bc 	sh	t7,444(s1)
    2224:	10000056 	b	2380 <func_80912594+0x42c>
    2228:	c6200028 	lwc1	$f0,40(s1)
    222c:	3c010000 	lui	at,0x0
    2230:	c4280000 	lwc1	$f8,0(at)
    2234:	02202025 	move	a0,s1
    2238:	0c000000 	jal	0 <func_80910640>
    223c:	e628006c 	swc1	$f8,108(s1)
    2240:	c62a0028 	lwc1	$f10,40(s1)
    2244:	3c040000 	lui	a0,0x0
    2248:	24840000 	addiu	a0,a0,0
    224c:	460054a1 	cvt.d.s	$f18,$f10
    2250:	44079000 	mfc1	a3,$f18
    2254:	44069800 	mfc1	a2,$f19
    2258:	0c000000 	jal	0 <func_80910640>
    225c:	00000000 	nop
    2260:	3c0140a0 	lui	at,0x40a0
    2264:	44810000 	mtc1	at,$f0
    2268:	c6240028 	lwc1	$f4,40(s1)
    226c:	4614a182 	mul.s	$f6,$f20,$f20
    2270:	4600203c 	c.lt.s	$f4,$f0
    2274:	4616b202 	mul.s	$f8,$f22,$f22
    2278:	45020005 	bc1fl	2290 <func_80912594+0x33c>
    227c:	46083000 	add.s	$f0,$f6,$f8
    2280:	4480c000 	mtc1	zero,$f24
    2284:	e6200028 	swc1	$f0,40(s1)
    2288:	e6380060 	swc1	$f24,96(s1)
    228c:	46083000 	add.s	$f0,$f6,$f8
    2290:	3c01438c 	lui	at,0x438c
    2294:	44815000 	mtc1	at,$f10
    2298:	3c014000 	lui	at,0x4000
    229c:	46000004 	sqrt.s	$f0,$f0
    22a0:	4600503c 	c.lt.s	$f10,$f0
    22a4:	00000000 	nop
    22a8:	4502000b 	bc1fl	22d8 <func_80912594+0x384>
    22ac:	3c014000 	lui	at,0x4000
    22b0:	4481a000 	mtc1	at,$f20
    22b4:	3c013f80 	lui	at,0x3f80
    22b8:	4481c000 	mtc1	at,$f24
    22bc:	4406a000 	mfc1	a2,$f20
    22c0:	26240068 	addiu	a0,s1,104
    22c4:	4405c000 	mfc1	a1,$f24
    22c8:	0c000000 	jal	0 <func_80910640>
    22cc:	00000000 	nop
    22d0:	a62001bc 	sh	zero,444(s1)
    22d4:	3c014000 	lui	at,0x4000
    22d8:	863801bc 	lh	t8,444(s1)
    22dc:	4481a000 	mtc1	at,$f20
    22e0:	3c013f80 	lui	at,0x3f80
    22e4:	4481c000 	mtc1	at,$f24
    22e8:	57000025 	bnezl	t8,2380 <func_80912594+0x42c>
    22ec:	c6200028 	lwc1	$f0,40(s1)
    22f0:	4405c000 	mfc1	a1,$f24
    22f4:	4406a000 	mfc1	a2,$f20
    22f8:	0c000000 	jal	0 <func_80910640>
    22fc:	26240068 	addiu	a0,s1,104
    2300:	4405c000 	mfc1	a1,$f24
    2304:	4406a000 	mfc1	a2,$f20
    2308:	0c000000 	jal	0 <func_80910640>
    230c:	26240060 	addiu	a0,s1,96
    2310:	262400b6 	addiu	a0,s1,182
    2314:	8625008a 	lh	a1,138(s1)
    2318:	24060005 	li	a2,5
    231c:	0c000000 	jal	0 <func_80910640>
    2320:	240707d0 	li	a3,2000
    2324:	3c013f00 	lui	at,0x3f00
    2328:	4481d000 	mtc1	at,$f26
    232c:	c6320068 	lwc1	$f18,104(s1)
    2330:	461a903e 	c.le.s	$f18,$f26
    2334:	00000000 	nop
    2338:	45020011 	bc1fl	2380 <func_80912594+0x42c>
    233c:	c6200028 	lwc1	$f0,40(s1)
    2340:	c6200060 	lwc1	$f0,96(s1)
    2344:	3c010000 	lui	at,0x0
    2348:	c4240000 	lwc1	$f4,0(at)
    234c:	46000005 	abs.s	$f0,$f0
    2350:	02202025 	move	a0,s1
    2354:	4604003e 	c.le.s	$f0,$f4
    2358:	00000000 	nop
    235c:	45020008 	bc1fl	2380 <func_80912594+0x42c>
    2360:	c6200028 	lwc1	$f0,40(s1)
    2364:	0c000000 	jal	0 <func_80910640>
    2368:	3c05c120 	lui	a1,0xc120
    236c:	2419001e 	li	t9,30
    2370:	24080001 	li	t0,1
    2374:	a63901bc 	sh	t9,444(s1)
    2378:	a22801c9 	sb	t0,457(s1)
    237c:	c6200028 	lwc1	$f0,40(s1)
    2380:	3c014248 	lui	at,0x4248
    2384:	44813000 	mtc1	at,$f6
    2388:	00000000 	nop
    238c:	4600303c 	c.lt.s	$f6,$f0
    2390:	00000000 	nop
    2394:	45000011 	bc1f	23dc <func_80912594+0x488>
    2398:	00000000 	nop
    239c:	86240194 	lh	a0,404(s1)
    23a0:	00800821 	move	at,a0
    23a4:	00042080 	sll	a0,a0,0x2
    23a8:	00812023 	subu	a0,a0,at
    23ac:	00042100 	sll	a0,a0,0x4
    23b0:	00812023 	subu	a0,a0,at
    23b4:	000420c0 	sll	a0,a0,0x3
    23b8:	00812023 	subu	a0,a0,at
    23bc:	00042080 	sll	a0,a0,0x2
    23c0:	00042400 	sll	a0,a0,0x10
    23c4:	0c000000 	jal	0 <func_80910640>
    23c8:	00042403 	sra	a0,a0,0x10
    23cc:	46000280 	add.s	$f10,$f0,$f0
    23d0:	c6280028 	lwc1	$f8,40(s1)
    23d4:	460a4480 	add.s	$f18,$f8,$f10
    23d8:	e6320028 	swc1	$f18,40(s1)
    23dc:	3c0a0000 	lui	t2,0x0
    23e0:	254a0000 	addiu	t2,t2,0
    23e4:	8d4c0000 	lw	t4,0(t2)
    23e8:	27a900a4 	addiu	t1,sp,164
    23ec:	8d4b0004 	lw	t3,4(t2)
    23f0:	ad2c0000 	sw	t4,0(t1)
    23f4:	8d4c0008 	lw	t4,8(t2)
    23f8:	3c0e0000 	lui	t6,0x0
    23fc:	25ce0000 	addiu	t6,t6,0
    2400:	ad2b0004 	sw	t3,4(t1)
    2404:	ad2c0008 	sw	t4,8(t1)
    2408:	8dd80000 	lw	t8,0(t6)
    240c:	27ad0098 	addiu	t5,sp,152
    2410:	8dcf0004 	lw	t7,4(t6)
    2414:	adb80000 	sw	t8,0(t5)
    2418:	8dd80008 	lw	t8,8(t6)
    241c:	3c080000 	lui	t0,0x0
    2420:	25080000 	addiu	t0,t0,0
    2424:	adaf0004 	sw	t7,4(t5)
    2428:	adb80008 	sw	t8,8(t5)
    242c:	8d0a0000 	lw	t2,0(t0)
    2430:	3c014120 	lui	at,0x4120
    2434:	44812000 	mtc1	at,$f4
    2438:	27b9008c 	addiu	t9,sp,140
    243c:	3c01c248 	lui	at,0xc248
    2440:	af2a0000 	sw	t2,0(t9)
    2444:	8d0a0008 	lw	t2,8(t0)
    2448:	8d090004 	lw	t1,4(t0)
    244c:	4481e000 	mtc1	at,$f28
    2450:	3c0143fa 	lui	at,0x43fa
    2454:	4481d000 	mtc1	at,$f26
    2458:	3c010000 	lui	at,0x0
    245c:	af2a0008 	sw	t2,8(t9)
    2460:	af290004 	sw	t1,4(t9)
    2464:	c4380000 	lwc1	$f24,0(at)
    2468:	3c014700 	lui	at,0x4700
    246c:	4481b000 	mtc1	at,$f22
    2470:	3c01447a 	lui	at,0x447a
    2474:	4481a000 	mtc1	at,$f20
    2478:	00008025 	move	s0,zero
    247c:	e7a40090 	swc1	$f4,144(sp)
    2480:	0c000000 	jal	0 <func_80910640>
    2484:	00000000 	nop
    2488:	862b00b6 	lh	t3,182(s1)
    248c:	00002825 	move	a1,zero
    2490:	448b3000 	mtc1	t3,$f6
    2494:	00000000 	nop
    2498:	46803220 	cvt.s.w	$f8,$f6
    249c:	46164283 	div.s	$f10,$f8,$f22
    24a0:	46185302 	mul.s	$f12,$f10,$f24
    24a4:	0c000000 	jal	0 <func_80910640>
    24a8:	00000000 	nop
    24ac:	862c00b4 	lh	t4,180(s1)
    24b0:	24050001 	li	a1,1
    24b4:	448c9000 	mtc1	t4,$f18
    24b8:	00000000 	nop
    24bc:	46809120 	cvt.s.w	$f4,$f18
    24c0:	46162183 	div.s	$f6,$f4,$f22
    24c4:	46183302 	mul.s	$f12,$f6,$f24
    24c8:	0c000000 	jal	0 <func_80910640>
    24cc:	00000000 	nop
    24d0:	862d01ac 	lh	t5,428(s1)
    24d4:	24050001 	li	a1,1
    24d8:	448d4000 	mtc1	t5,$f8
    24dc:	00000000 	nop
    24e0:	468042a0 	cvt.s.w	$f10,$f8
    24e4:	46165483 	div.s	$f18,$f10,$f22
    24e8:	46189302 	mul.s	$f12,$f18,$f24
    24ec:	0c000000 	jal	0 <func_80910640>
    24f0:	00000000 	nop
    24f4:	27a4008c 	addiu	a0,sp,140
    24f8:	0c000000 	jal	0 <func_80910640>
    24fc:	27a50080 	addiu	a1,sp,128
    2500:	0c000000 	jal	0 <func_80910640>
    2504:	00000000 	nop
    2508:	c6240200 	lwc1	$f4,512(s1)
    250c:	c7a60080 	lwc1	$f6,128(sp)
    2510:	c7b20084 	lwc1	$f18,132(sp)
    2514:	24010007 	li	at,7
    2518:	46062200 	add.s	$f8,$f4,$f6
    251c:	0201001a 	div	zero,s0,at
    2520:	e7a800b0 	swc1	$f8,176(sp)
    2524:	c62a0204 	lwc1	$f10,516(s1)
    2528:	00007810 	mfhi	t7
    252c:	240e0096 	li	t6,150
    2530:	46125100 	add.s	$f4,$f10,$f18
    2534:	c7aa0088 	lwc1	$f10,136(sp)
    2538:	8fa400e4 	lw	a0,228(sp)
    253c:	27a500b0 	addiu	a1,sp,176
    2540:	e7a400b4 	swc1	$f4,180(sp)
    2544:	c6280208 	lwc1	$f8,520(s1)
    2548:	afaf0014 	sw	t7,20(sp)
    254c:	afae0010 	sw	t6,16(sp)
    2550:	460a4100 	add.s	$f4,$f8,$f10
    2554:	461a3202 	mul.s	$f8,$f6,$f26
    2558:	27a600a4 	addiu	a2,sp,164
    255c:	27a70098 	addiu	a3,sp,152
    2560:	e7a400b8 	swc1	$f4,184(sp)
    2564:	46144103 	div.s	$f4,$f8,$f20
    2568:	461a9202 	mul.s	$f8,$f18,$f26
    256c:	e7a400a4 	swc1	$f4,164(sp)
    2570:	46144103 	div.s	$f4,$f8,$f20
    2574:	461a5202 	mul.s	$f8,$f10,$f26
    2578:	e7a400a8 	swc1	$f4,168(sp)
    257c:	46144103 	div.s	$f4,$f8,$f20
    2580:	461c3202 	mul.s	$f8,$f6,$f28
    2584:	00000000 	nop
    2588:	461c9182 	mul.s	$f6,$f18,$f28
    258c:	e7a400ac 	swc1	$f4,172(sp)
    2590:	46144103 	div.s	$f4,$f8,$f20
    2594:	46143203 	div.s	$f8,$f6,$f20
    2598:	e7a40098 	swc1	$f4,152(sp)
    259c:	461c5102 	mul.s	$f4,$f10,$f28
    25a0:	46142483 	div.s	$f18,$f4,$f20
    25a4:	e7a8009c 	swc1	$f8,156(sp)
    25a8:	0c000000 	jal	0 <func_80910640>
    25ac:	e7b200a0 	swc1	$f18,160(sp)
    25b0:	863801ac 	lh	t8,428(s1)
    25b4:	26100001 	addiu	s0,s0,1
    25b8:	00108400 	sll	s0,s0,0x10
    25bc:	00108403 	sra	s0,s0,0x10
    25c0:	2a01000a 	slti	at,s0,10
    25c4:	27191a5c 	addiu	t9,t8,6748
    25c8:	1420ffad 	bnez	at,2480 <func_80912594+0x52c>
    25cc:	a63901ac 	sh	t9,428(s1)
    25d0:	86280194 	lh	t0,404(s1)
    25d4:	8fa600e4 	lw	a2,228(sp)
    25d8:	02202825 	move	a1,s1
    25dc:	31090007 	andi	t1,t0,0x7
    25e0:	15200012 	bnez	t1,262c <func_80912594+0x6d8>
    25e4:	24c41c24 	addiu	a0,a2,7204
    25e8:	c6260200 	lwc1	$f6,512(s1)
    25ec:	8e30011c 	lw	s0,284(s1)
    25f0:	240b0008 	li	t3,8
    25f4:	e7a60010 	swc1	$f6,16(sp)
    25f8:	c6280204 	lwc1	$f8,516(s1)
    25fc:	240c0001 	li	t4,1
    2600:	240d0026 	li	t5,38
    2604:	e7a80014 	swc1	$f8,20(sp)
    2608:	c62a0208 	lwc1	$f10,520(s1)
    260c:	afad0028 	sw	t5,40(sp)
    2610:	afa00024 	sw	zero,36(sp)
    2614:	afac0020 	sw	t4,32(sp)
    2618:	afab001c 	sw	t3,28(sp)
    261c:	2407006d 	li	a3,109
    2620:	0c000000 	jal	0 <func_80910640>
    2624:	e7aa0018 	swc1	$f10,24(sp)
    2628:	ae30011c 	sw	s0,284(s1)
    262c:	8fbf0064 	lw	ra,100(sp)
    2630:	d7b40030 	ldc1	$f20,48(sp)
    2634:	d7b60038 	ldc1	$f22,56(sp)
    2638:	d7b80040 	ldc1	$f24,64(sp)
    263c:	d7ba0048 	ldc1	$f26,72(sp)
    2640:	d7bc0050 	ldc1	$f28,80(sp)
    2644:	8fb0005c 	lw	s0,92(sp)
    2648:	8fb10060 	lw	s1,96(sp)
    264c:	03e00008 	jr	ra
    2650:	27bd00e0 	addiu	sp,sp,224

00002654 <func_80912C94>:
    2654:	27bdffe0 	addiu	sp,sp,-32
    2658:	afb00018 	sw	s0,24(sp)
    265c:	afa50024 	sw	a1,36(sp)
    2660:	00808025 	move	s0,a0
    2664:	afbf001c 	sw	ra,28(sp)
    2668:	3c050600 	lui	a1,0x600
    266c:	24a5090c 	addiu	a1,a1,2316
    2670:	0c000000 	jal	0 <func_80910640>
    2674:	2484014c 	addiu	a0,a0,332
    2678:	3c040600 	lui	a0,0x600
    267c:	0c000000 	jal	0 <func_80910640>
    2680:	2484090c 	addiu	a0,a0,2316
    2684:	44822000 	mtc1	v0,$f4
    2688:	3c0e0000 	lui	t6,0x0
    268c:	25ce0000 	addiu	t6,t6,0
    2690:	468021a0 	cvt.s.w	$f6,$f4
    2694:	3c041001 	lui	a0,0x1001
    2698:	ae0e0190 	sw	t6,400(s0)
    269c:	348400ff 	ori	a0,a0,0xff
    26a0:	0c000000 	jal	0 <func_80910640>
    26a4:	e60601d0 	swc1	$f6,464(s0)
    26a8:	02002025 	move	a0,s0
    26ac:	0c000000 	jal	0 <func_80910640>
    26b0:	240538af 	li	a1,14511
    26b4:	8e180004 	lw	t8,4(s0)
    26b8:	2401fffe 	li	at,-2
    26bc:	240f0001 	li	t7,1
    26c0:	24080032 	li	t0,50
    26c4:	0301c824 	and	t9,t8,at
    26c8:	a60f035e 	sh	t7,862(s0)
    26cc:	ae190004 	sw	t9,4(s0)
    26d0:	a6000194 	sh	zero,404(s0)
    26d4:	a20801c8 	sb	t0,456(s0)
    26d8:	8fbf001c 	lw	ra,28(sp)
    26dc:	8fb00018 	lw	s0,24(sp)
    26e0:	27bd0020 	addiu	sp,sp,32
    26e4:	03e00008 	jr	ra
    26e8:	00000000 	nop

000026ec <func_80912D2C>:
    26ec:	27bdff40 	addiu	sp,sp,-192
    26f0:	afb40048 	sw	s4,72(sp)
    26f4:	afb20040 	sw	s2,64(sp)
    26f8:	00809025 	move	s2,a0
    26fc:	afbf004c 	sw	ra,76(sp)
    2700:	afb30044 	sw	s3,68(sp)
    2704:	afb1003c 	sw	s1,60(sp)
    2708:	afb00038 	sw	s0,56(sp)
    270c:	a3a000bf 	sb	zero,191(sp)
    2710:	a3a000be 	sb	zero,190(sp)
    2714:	00a0a025 	move	s4,a1
    2718:	8cb31c44 	lw	s3,7236(a1)
    271c:	00a02025 	move	a0,a1
    2720:	0c000000 	jal	0 <func_80910640>
    2724:	00002825 	move	a1,zero
    2728:	c6640080 	lwc1	$f4,128(s3)
    272c:	3c040000 	lui	a0,0x0
    2730:	00408025 	move	s0,v0
    2734:	460021a1 	cvt.d.s	$f6,$f4
    2738:	24840000 	addiu	a0,a0,0
    273c:	44073000 	mfc1	a3,$f6
    2740:	44063800 	mfc1	a2,$f7
    2744:	0c000000 	jal	0 <func_80910640>
    2748:	00000000 	nop
    274c:	2651014c 	addiu	s1,s2,332
    2750:	0c000000 	jal	0 <func_80910640>
    2754:	02202025 	move	a0,s1
    2758:	864e01b6 	lh	t6,438(s2)
    275c:	25cf0001 	addiu	t7,t6,1
    2760:	a64f01b6 	sh	t7,438(s2)
    2764:	864301b6 	lh	v1,438(s2)
    2768:	2861003d 	slti	at,v1,61
    276c:	14200002 	bnez	at,2778 <func_80912D2C+0x8c>
    2770:	286101f4 	slti	at,v1,500
    2774:	14200005 	bnez	at,278c <func_80912D2C+0xa0>
    2778:	286101f6 	slti	at,v1,502
    277c:	14200006 	bnez	at,2798 <func_80912D2C+0xac>
    2780:	2861026c 	slti	at,v1,620
    2784:	50200005 	beqzl	at,279c <func_80912D2C+0xb0>
    2788:	8658035e 	lh	t8,862(s2)
    278c:	02402025 	move	a0,s2
    2790:	0c000000 	jal	0 <func_80910640>
    2794:	2405301c 	li	a1,12316
    2798:	8658035e 	lh	t8,862(s2)
    279c:	2719ffff 	addiu	t9,t8,-1
    27a0:	2f210006 	sltiu	at,t9,6
    27a4:	1020023d 	beqz	at,309c <L8091352C+0x1b0>
    27a8:	0019c880 	sll	t9,t9,0x2
    27ac:	3c010000 	lui	at,0x0
    27b0:	00390821 	addu	at,at,t9
    27b4:	8c390000 	lw	t9,0(at)
    27b8:	03200008 	jr	t9
    27bc:	00000000 	nop

000027c0 <L80912E00>:
    27c0:	02802025 	move	a0,s4
    27c4:	0c000000 	jal	0 <func_80910640>
    27c8:	26851d64 	addiu	a1,s4,7524
    27cc:	02802025 	move	a0,s4
    27d0:	02402825 	move	a1,s2
    27d4:	0c000000 	jal	0 <func_80910640>
    27d8:	24060001 	li	a2,1
    27dc:	0c000000 	jal	0 <func_80910640>
    27e0:	02802025 	move	a0,s4
    27e4:	a642035c 	sh	v0,860(s2)
    27e8:	02802025 	move	a0,s4
    27ec:	00002825 	move	a1,zero
    27f0:	0c000000 	jal	0 <func_80910640>
    27f4:	24060001 	li	a2,1
    27f8:	3c040000 	lui	a0,0x0
    27fc:	0c000000 	jal	0 <func_80910640>
    2800:	24840000 	addiu	a0,a0,0
    2804:	02802025 	move	a0,s4
    2808:	8645035c 	lh	a1,860(s2)
    280c:	0c000000 	jal	0 <func_80910640>
    2810:	24060007 	li	a2,7
    2814:	3c040000 	lui	a0,0x0
    2818:	0c000000 	jal	0 <func_80910640>
    281c:	24840000 	addiu	a0,a0,0
    2820:	44804000 	mtc1	zero,$f8
    2824:	24080002 	li	t0,2
    2828:	a648035e 	sh	t0,862(s2)
    282c:	24090032 	li	t1,50
    2830:	e6680068 	swc1	$f8,104(s3)
    2834:	a64901bc 	sh	t1,444(s2)
    2838:	8e0b005c 	lw	t3,92(s0)
    283c:	3c014248 	lui	at,0x4248
    2840:	44817000 	mtc1	at,$f14
    2844:	ae4b0360 	sw	t3,864(s2)
    2848:	8e0a0060 	lw	t2,96(s0)
    284c:	3c0142c8 	lui	at,0x42c8
    2850:	44815000 	mtc1	at,$f10
    2854:	ae4a0364 	sw	t2,868(s2)
    2858:	8e0b0064 	lw	t3,100(s0)
    285c:	c64c0214 	lwc1	$f12,532(s2)
    2860:	3c014120 	lui	at,0x4120
    2864:	ae4b0368 	sw	t3,872(s2)
    2868:	8e0d0050 	lw	t5,80(s0)
    286c:	460a6400 	add.s	$f16,$f12,$f10
    2870:	44813000 	mtc1	at,$f6
    2874:	ae4d036c 	sw	t5,876(s2)
    2878:	8e0c0054 	lw	t4,84(s0)
    287c:	c6440210 	lwc1	$f4,528(s2)
    2880:	460e8480 	add.s	$f18,$f16,$f14
    2884:	ae4c0370 	sw	t4,880(s2)
    2888:	8e0d0058 	lw	t5,88(s0)
    288c:	46062201 	sub.s	$f8,$f4,$f6
    2890:	c642020c 	lwc1	$f2,524(s2)
    2894:	e6520398 	swc1	$f18,920(s2)
    2898:	e64e0394 	swc1	$f14,916(s2)
    289c:	e64803ac 	swc1	$f8,940(s2)
    28a0:	e64c03b0 	swc1	$f12,944(s2)
    28a4:	ae4d0374 	sw	t5,884(s2)
    28a8:	e6420390 	swc1	$f2,912(s2)
    28ac:	e64203a8 	swc1	$f2,936(s2)
    28b0:	c60a005c 	lwc1	$f10,92(s0)
    28b4:	c6520394 	lwc1	$f18,916(s2)
    28b8:	c6460398 	lwc1	$f6,920(s2)
    28bc:	46025001 	sub.s	$f0,$f10,$f2
    28c0:	c64a03a8 	lwc1	$f10,936(s2)
    28c4:	3c010000 	lui	at,0x0
    28c8:	240e0096 	li	t6,150
    28cc:	46000005 	abs.s	$f0,$f0
    28d0:	e6400378 	swc1	$f0,888(s2)
    28d4:	c6100060 	lwc1	$f16,96(s0)
    28d8:	46128001 	sub.s	$f0,$f16,$f18
    28dc:	c65203ac 	lwc1	$f18,940(s2)
    28e0:	46000005 	abs.s	$f0,$f0
    28e4:	e640037c 	swc1	$f0,892(s2)
    28e8:	c6040064 	lwc1	$f4,100(s0)
    28ec:	46062001 	sub.s	$f0,$f4,$f6
    28f0:	c64603b0 	lwc1	$f6,944(s2)
    28f4:	46000005 	abs.s	$f0,$f0
    28f8:	e6400380 	swc1	$f0,896(s2)
    28fc:	c6080050 	lwc1	$f8,80(s0)
    2900:	460a4001 	sub.s	$f0,$f8,$f10
    2904:	46000005 	abs.s	$f0,$f0
    2908:	e6400384 	swc1	$f0,900(s2)
    290c:	c6100054 	lwc1	$f16,84(s0)
    2910:	46128001 	sub.s	$f0,$f16,$f18
    2914:	46000005 	abs.s	$f0,$f0
    2918:	e6400388 	swc1	$f0,904(s2)
    291c:	c6040058 	lwc1	$f4,88(s0)
    2920:	c4220000 	lwc1	$f2,0(at)
    2924:	3c010000 	lui	at,0x0
    2928:	46062001 	sub.s	$f0,$f4,$f6
    292c:	46000005 	abs.s	$f0,$f0
    2930:	e640038c 	swc1	$f0,908(s2)
    2934:	c4280000 	lwc1	$f8,0(at)
    2938:	3c010000 	lui	at,0x0
    293c:	e64803c4 	swc1	$f8,964(s2)
    2940:	c42a0000 	lwc1	$f10,0(at)
    2944:	3c010000 	lui	at,0x0
    2948:	e64a03a4 	swc1	$f10,932(s2)
    294c:	c4300000 	lwc1	$f16,0(at)
    2950:	3c010000 	lui	at,0x0
    2954:	e65003a0 	swc1	$f16,928(s2)
    2958:	c4320000 	lwc1	$f18,0(at)
    295c:	a64001a2 	sh	zero,418(s2)
    2960:	a64e01bc 	sh	t6,444(s2)
    2964:	e64203b4 	swc1	$f2,948(s2)
    2968:	e64203b8 	swc1	$f2,952(s2)
    296c:	e64203bc 	swc1	$f2,956(s2)
    2970:	e652039c 	swc1	$f18,924(s2)

00002974 <L80912FB4>:
    2974:	864201a2 	lh	v0,418(s2)
    2978:	24010001 	li	at,1
    297c:	02202025 	move	a0,s1
    2980:	10400008 	beqz	v0,29a4 <L80912FB4+0x30>
    2984:	00000000 	nop
    2988:	1041001d 	beq	v0,at,2a00 <L80912FB4+0x8c>
    298c:	02202025 	move	a0,s1
    2990:	24010002 	li	at,2
    2994:	5041002b 	beql	v0,at,2a44 <L80912FB4+0xd0>
    2998:	24080001 	li	t0,1
    299c:	1000002b 	b	2a4c <L80912FB4+0xd8>
    29a0:	86450194 	lh	a1,404(s2)
    29a4:	0c000000 	jal	0 <func_80910640>
    29a8:	8e4501d0 	lw	a1,464(s2)
    29ac:	10400026 	beqz	v0,2a48 <L80912FB4+0xd4>
    29b0:	3c100601 	lui	s0,0x601
    29b4:	261008d8 	addiu	s0,s0,2264
    29b8:	0c000000 	jal	0 <func_80910640>
    29bc:	02002025 	move	a0,s0
    29c0:	44822000 	mtc1	v0,$f4
    29c4:	44803000 	mtc1	zero,$f6
    29c8:	240f0003 	li	t7,3
    29cc:	46802020 	cvt.s.w	$f0,$f4
    29d0:	02202025 	move	a0,s1
    29d4:	02002825 	move	a1,s0
    29d8:	3c063f00 	lui	a2,0x3f00
    29dc:	24070000 	li	a3,0
    29e0:	e64001d0 	swc1	$f0,464(s2)
    29e4:	afaf0014 	sw	t7,20(sp)
    29e8:	e7a00010 	swc1	$f0,16(sp)
    29ec:	0c000000 	jal	0 <func_80910640>
    29f0:	e7a60018 	swc1	$f6,24(sp)
    29f4:	24180001 	li	t8,1
    29f8:	10000013 	b	2a48 <L80912FB4+0xd4>
    29fc:	a65801a2 	sh	t8,418(s2)
    2a00:	0c000000 	jal	0 <func_80910640>
    2a04:	8e4501d0 	lw	a1,464(s2)
    2a08:	1040000d 	beqz	v0,2a40 <L80912FB4+0xcc>
    2a0c:	3c100600 	lui	s0,0x600
    2a10:	26100d84 	addiu	s0,s0,3460
    2a14:	0c000000 	jal	0 <func_80910640>
    2a18:	02002025 	move	a0,s0
    2a1c:	44824000 	mtc1	v0,$f8
    2a20:	02202025 	move	a0,s1
    2a24:	02002825 	move	a1,s0
    2a28:	468042a0 	cvt.s.w	$f10,$f8
    2a2c:	3c06c1a0 	lui	a2,0xc1a0
    2a30:	0c000000 	jal	0 <func_80910640>
    2a34:	e64a01d0 	swc1	$f10,464(s2)
    2a38:	24190002 	li	t9,2
    2a3c:	a65901a2 	sh	t9,418(s2)
    2a40:	24080001 	li	t0,1
    2a44:	a3a800be 	sb	t0,190(sp)
    2a48:	86450194 	lh	a1,404(s2)
    2a4c:	264400b6 	addiu	a0,s2,182
    2a50:	24060005 	li	a2,5
    2a54:	00050823 	negu	at,a1
    2a58:	00012880 	sll	a1,at,0x2
    2a5c:	00a12823 	subu	a1,a1,at
    2a60:	000528c0 	sll	a1,a1,0x3
    2a64:	00a12821 	addu	a1,a1,at
    2a68:	00052880 	sll	a1,a1,0x2
    2a6c:	00052c00 	sll	a1,a1,0x10
    2a70:	00052c03 	sra	a1,a1,0x10
    2a74:	0c000000 	jal	0 <func_80910640>
    2a78:	24070bb8 	li	a3,3000
    2a7c:	3c014270 	lui	at,0x4270
    2a80:	44819000 	mtc1	at,$f18
    2a84:	c6500214 	lwc1	$f16,532(s2)
    2a88:	3c063ca3 	lui	a2,0x3ca3
    2a8c:	34c6d70a 	ori	a2,a2,0xd70a
    2a90:	46128100 	add.s	$f4,$f16,$f18
    2a94:	26440398 	addiu	a0,s2,920
    2a98:	3c073f00 	lui	a3,0x3f00
    2a9c:	44052000 	mfc1	a1,$f4
    2aa0:	0c000000 	jal	0 <func_80910640>
    2aa4:	00000000 	nop
    2aa8:	3c063d4c 	lui	a2,0x3d4c
    2aac:	34c6cccd 	ori	a2,a2,0xcccd
    2ab0:	26440028 	addiu	a0,s2,40
    2ab4:	3c0542c8 	lui	a1,0x42c8
    2ab8:	0c000000 	jal	0 <func_80910640>
    2abc:	3c0742c8 	lui	a3,0x42c8
    2ac0:	86440194 	lh	a0,404(s2)
    2ac4:	00800821 	move	at,a0
    2ac8:	00042080 	sll	a0,a0,0x2
    2acc:	00812023 	subu	a0,a0,at
    2ad0:	00042100 	sll	a0,a0,0x4
    2ad4:	00812023 	subu	a0,a0,at
    2ad8:	000420c0 	sll	a0,a0,0x3
    2adc:	00812023 	subu	a0,a0,at
    2ae0:	00042080 	sll	a0,a0,0x2
    2ae4:	00042400 	sll	a0,a0,0x10
    2ae8:	0c000000 	jal	0 <func_80910640>
    2aec:	00042403 	sra	a0,a0,0x10
    2af0:	c6460028 	lwc1	$f6,40(s2)
    2af4:	3c014120 	lui	at,0x4120
    2af8:	44819000 	mtc1	at,$f18
    2afc:	c6500210 	lwc1	$f16,528(s2)
    2b00:	46003200 	add.s	$f8,$f6,$f0
    2b04:	864901bc 	lh	t1,444(s2)
    2b08:	c64a020c 	lwc1	$f10,524(s2)
    2b0c:	46128101 	sub.s	$f4,$f16,$f18
    2b10:	c6460214 	lwc1	$f6,532(s2)
    2b14:	e6480028 	swc1	$f8,40(s2)
    2b18:	e64a03a8 	swc1	$f10,936(s2)
    2b1c:	e64403ac 	swc1	$f4,940(s2)
    2b20:	1520015e 	bnez	t1,309c <L8091352C+0x1b0>
    2b24:	e64603b0 	swc1	$f6,944(s2)
    2b28:	3c014396 	lui	at,0x4396
    2b2c:	44814000 	mtc1	at,$f8
    2b30:	3c014348 	lui	at,0x4348
    2b34:	44815000 	mtc1	at,$f10
    2b38:	3c01c33a 	lui	at,0xc33a
    2b3c:	44818000 	mtc1	at,$f16
    2b40:	240a0003 	li	t2,3
    2b44:	240b015e 	li	t3,350
    2b48:	240c0032 	li	t4,50
    2b4c:	a64a035e 	sh	t2,862(s2)
    2b50:	a64b01bc 	sh	t3,444(s2)
    2b54:	a64c01be 	sh	t4,446(s2)
    2b58:	e64801d8 	swc1	$f8,472(s2)
    2b5c:	e64a0394 	swc1	$f10,916(s2)
    2b60:	3c010000 	lui	at,0x0
    2b64:	e6700024 	swc1	$f16,36(s3)
    2b68:	c4320000 	lwc1	$f18,0(at)
    2b6c:	240d0001 	li	t5,1
    2b70:	240e0001 	li	t6,1
    2b74:	e672002c 	swc1	$f18,44(s3)
    2b78:	a3ad00bf 	sb	t5,191(sp)
    2b7c:	10000147 	b	309c <L8091352C+0x1b0>
    2b80:	a3ae00be 	sb	t6,190(sp)

00002b84 <L809131C4>:
    2b84:	864f01be 	lh	t7,446(s2)
    2b88:	24010001 	li	at,1
    2b8c:	26841c24 	addiu	a0,s4,7204
    2b90:	15e10019 	bne	t7,at,2bf8 <L809131C4+0x74>
    2b94:	02402825 	move	a1,s2
    2b98:	3c014160 	lui	at,0x4160
    2b9c:	44812000 	mtc1	at,$f4
    2ba0:	8e50011c 	lw	s0,284(s2)
    2ba4:	3c01c1f0 	lui	at,0xc1f0
    2ba8:	44813000 	mtc1	at,$f6
    2bac:	3c010000 	lui	at,0x0
    2bb0:	c4280000 	lwc1	$f8,0(at)
    2bb4:	24184000 	li	t8,16384
    2bb8:	24190029 	li	t9,41
    2bbc:	afb90028 	sw	t9,40(sp)
    2bc0:	afb8001c 	sw	t8,28(sp)
    2bc4:	afa00024 	sw	zero,36(sp)
    2bc8:	afa00020 	sw	zero,32(sp)
    2bcc:	02803025 	move	a2,s4
    2bd0:	2407006d 	li	a3,109
    2bd4:	e7a40010 	swc1	$f4,16(sp)
    2bd8:	e7a60014 	swc1	$f6,20(sp)
    2bdc:	0c000000 	jal	0 <func_80910640>
    2be0:	e7a80018 	swc1	$f8,24(sp)
    2be4:	ae50011c 	sw	s0,284(s2)
    2be8:	02802025 	move	a0,s4
    2bec:	2405108e 	li	a1,4238
    2bf0:	0c000000 	jal	0 <func_80910640>
    2bf4:	00003025 	move	a2,zero
    2bf8:	86440194 	lh	a0,404(s2)
    2bfc:	864800b6 	lh	t0,182(s2)
    2c00:	00800821 	move	at,a0
    2c04:	00042080 	sll	a0,a0,0x2
    2c08:	00812023 	subu	a0,a0,at
    2c0c:	00042100 	sll	a0,a0,0x4
    2c10:	00812023 	subu	a0,a0,at
    2c14:	000420c0 	sll	a0,a0,0x3
    2c18:	00812023 	subu	a0,a0,at
    2c1c:	00042080 	sll	a0,a0,0x2
    2c20:	00042400 	sll	a0,a0,0x10
    2c24:	2509ff38 	addiu	t1,t0,-200
    2c28:	a64900b6 	sh	t1,182(s2)
    2c2c:	0c000000 	jal	0 <func_80910640>
    2c30:	00042403 	sra	a0,a0,0x10
    2c34:	3c0142f0 	lui	at,0x42f0
    2c38:	44812000 	mtc1	at,$f4
    2c3c:	c65201dc 	lwc1	$f18,476(s2)
    2c40:	c64a0028 	lwc1	$f10,40(s2)
    2c44:	46049180 	add.s	$f6,$f18,$f4
    2c48:	46005400 	add.s	$f16,$f10,$f0
    2c4c:	e64601dc 	swc1	$f6,476(s2)
    2c50:	c64801dc 	lwc1	$f8,476(s2)
    2c54:	e6500028 	swc1	$f16,40(s2)
    2c58:	4600428d 	trunc.w.s	$f10,$f8
    2c5c:	44045000 	mfc1	a0,$f10
    2c60:	00000000 	nop
    2c64:	00042400 	sll	a0,a0,0x10
    2c68:	0c000000 	jal	0 <func_80910640>
    2c6c:	00042403 	sra	a0,a0,0x10
    2c70:	c65001d8 	lwc1	$f16,472(s2)
    2c74:	46008482 	mul.s	$f18,$f16,$f0
    2c78:	e7b200b8 	swc1	$f18,184(sp)
    2c7c:	c64401dc 	lwc1	$f4,476(s2)
    2c80:	4600218d 	trunc.w.s	$f6,$f4
    2c84:	44043000 	mfc1	a0,$f6
    2c88:	00000000 	nop
    2c8c:	00042400 	sll	a0,a0,0x10
    2c90:	0c000000 	jal	0 <func_80910640>
    2c94:	00042403 	sra	a0,a0,0x10
    2c98:	3c014160 	lui	at,0x4160
    2c9c:	44815000 	mtc1	at,$f10
    2ca0:	c7b000b8 	lwc1	$f16,184(sp)
    2ca4:	c64801d8 	lwc1	$f8,472(s2)
    2ca8:	c6440394 	lwc1	$f4,916(s2)
    2cac:	46105480 	add.s	$f18,$f10,$f16
    2cb0:	46004082 	mul.s	$f2,$f8,$f0
    2cb4:	3c010000 	lui	at,0x0
    2cb8:	e6440364 	swc1	$f4,868(s2)
    2cbc:	e6520360 	swc1	$f18,864(s2)
    2cc0:	c4260000 	lwc1	$f6,0(at)
    2cc4:	3c014160 	lui	at,0x4160
    2cc8:	44815000 	mtc1	at,$f10
    2ccc:	46023200 	add.s	$f8,$f6,$f2
    2cd0:	3c01c120 	lui	at,0xc120
    2cd4:	44818000 	mtc1	at,$f16
    2cd8:	3c010000 	lui	at,0x0
    2cdc:	e6480368 	swc1	$f8,872(s2)
    2ce0:	e64a036c 	swc1	$f10,876(s2)
    2ce4:	e6500370 	swc1	$f16,880(s2)
    2ce8:	c4320000 	lwc1	$f18,0(at)
    2cec:	3c063d4c 	lui	a2,0x3d4c
    2cf0:	34c6cccd 	ori	a2,a2,0xcccd
    2cf4:	26440394 	addiu	a0,s2,916
    2cf8:	24050000 	li	a1,0
    2cfc:	3c073f00 	lui	a3,0x3f00
    2d00:	0c000000 	jal	0 <func_80910640>
    2d04:	e6520374 	swc1	$f18,884(s2)
    2d08:	3c063d4c 	lui	a2,0x3d4c
    2d0c:	34c6cccd 	ori	a2,a2,0xcccd
    2d10:	264401d8 	addiu	a0,s2,472
    2d14:	3c05432a 	lui	a1,0x432a
    2d18:	0c000000 	jal	0 <func_80910640>
    2d1c:	3c073f80 	lui	a3,0x3f80
    2d20:	3c063d4c 	lui	a2,0x3d4c
    2d24:	34c6cccd 	ori	a2,a2,0xcccd
    2d28:	26440024 	addiu	a0,s2,36
    2d2c:	3c054160 	lui	a1,0x4160
    2d30:	0c000000 	jal	0 <func_80910640>
    2d34:	3c073fc0 	lui	a3,0x3fc0
    2d38:	3c063d4c 	lui	a2,0x3d4c
    2d3c:	34c6cccd 	ori	a2,a2,0xcccd
    2d40:	26440028 	addiu	a0,s2,40
    2d44:	3c054248 	lui	a1,0x4248
    2d48:	0c000000 	jal	0 <func_80910640>
    2d4c:	3c073f80 	lui	a3,0x3f80
    2d50:	3c05c54f 	lui	a1,0xc54f
    2d54:	3c063d4c 	lui	a2,0x3d4c
    2d58:	34c6cccd 	ori	a2,a2,0xcccd
    2d5c:	34a53000 	ori	a1,a1,0x3000
    2d60:	2644002c 	addiu	a0,s2,44
    2d64:	0c000000 	jal	0 <func_80910640>
    2d68:	3c073fc0 	lui	a3,0x3fc0
    2d6c:	864c01bc 	lh	t4,444(s2)
    2d70:	240d0004 	li	t5,4
    2d74:	240e0032 	li	t6,50
    2d78:	15800015 	bnez	t4,2dd0 <L809131C4+0x24c>
    2d7c:	02202025 	move	a0,s1
    2d80:	3c050600 	lui	a1,0x600
    2d84:	a64d035e 	sh	t5,862(s2)
    2d88:	a64e01bc 	sh	t6,444(s2)
    2d8c:	24a5189c 	addiu	a1,a1,6300
    2d90:	0c000000 	jal	0 <func_80910640>
    2d94:	3c06c120 	lui	a2,0xc120
    2d98:	3c014160 	lui	at,0x4160
    2d9c:	44812000 	mtc1	at,$f4
    2da0:	3c014248 	lui	at,0x4248
    2da4:	44813000 	mtc1	at,$f6
    2da8:	3c010000 	lui	at,0x0
    2dac:	e6440024 	swc1	$f4,36(s2)
    2db0:	e6460028 	swc1	$f6,40(s2)
    2db4:	c4280000 	lwc1	$f8,0(at)
    2db8:	a64000b6 	sh	zero,182(s2)
    2dbc:	a64001ae 	sh	zero,430(s2)
    2dc0:	02402025 	move	a0,s2
    2dc4:	240538ac 	li	a1,14508
    2dc8:	0c000000 	jal	0 <func_80910640>
    2dcc:	e648002c 	swc1	$f8,44(s2)
    2dd0:	240f0001 	li	t7,1
    2dd4:	24180001 	li	t8,1
    2dd8:	a3af00bf 	sb	t7,191(sp)
    2ddc:	100000af 	b	309c <L8091352C+0x1b0>
    2de0:	a3b800be 	sb	t8,190(sp)

00002de4 <L80913424>:
    2de4:	3c014248 	lui	at,0x4248
    2de8:	44810000 	mtc1	at,$f0
    2dec:	24190001 	li	t9,1
    2df0:	24080002 	li	t0,2
    2df4:	3c014160 	lui	at,0x4160
    2df8:	44815000 	mtc1	at,$f10
    2dfc:	a3b900bf 	sb	t9,191(sp)
    2e00:	a3a800be 	sb	t0,190(sp)
    2e04:	3c010000 	lui	at,0x0
    2e08:	e6400028 	swc1	$f0,40(s2)
    2e0c:	e6400364 	swc1	$f0,868(s2)
    2e10:	e64a0360 	swc1	$f10,864(s2)
    2e14:	c4300000 	lwc1	$f16,0(at)
    2e18:	3c014160 	lui	at,0x4160
    2e1c:	44819000 	mtc1	at,$f18
    2e20:	3c01428c 	lui	at,0x428c
    2e24:	44812000 	mtc1	at,$f4
    2e28:	864901bc 	lh	t1,444(s2)
    2e2c:	3c010000 	lui	at,0x0
    2e30:	e6500368 	swc1	$f16,872(s2)
    2e34:	e652036c 	swc1	$f18,876(s2)
    2e38:	e6440370 	swc1	$f4,880(s2)
    2e3c:	c4260000 	lwc1	$f6,0(at)
    2e40:	240a0005 	li	t2,5
    2e44:	15200095 	bnez	t1,309c <L8091352C+0x1b0>
    2e48:	e6460374 	swc1	$f6,884(s2)
    2e4c:	3c050600 	lui	a1,0x600
    2e50:	a64a035e 	sh	t2,862(s2)
    2e54:	24a51ab0 	addiu	a1,a1,6832
    2e58:	02202025 	move	a0,s1
    2e5c:	0c000000 	jal	0 <func_80910640>
    2e60:	3c06c120 	lui	a2,0xc120
    2e64:	240b0028 	li	t3,40
    2e68:	a64001ae 	sh	zero,430(s2)
    2e6c:	1000008b 	b	309c <L8091352C+0x1b0>
    2e70:	a64b01bc 	sh	t3,444(s2)

00002e74 <L809134B4>:
    2e74:	240c0001 	li	t4,1
    2e78:	240d0003 	li	t5,3
    2e7c:	3c053d4c 	lui	a1,0x3d4c
    2e80:	a3ac00bf 	sb	t4,191(sp)
    2e84:	a3ad00be 	sb	t5,190(sp)
    2e88:	34a5cccd 	ori	a1,a1,0xcccd
    2e8c:	26440364 	addiu	a0,s2,868
    2e90:	0c000000 	jal	0 <func_80910640>
    2e94:	3c063f80 	lui	a2,0x3f80
    2e98:	3c05c544 	lui	a1,0xc544
    2e9c:	3c063d4c 	lui	a2,0x3d4c
    2ea0:	34c6cccd 	ori	a2,a2,0xcccd
    2ea4:	34a59000 	ori	a1,a1,0x9000
    2ea8:	26440368 	addiu	a0,s2,872
    2eac:	0c000000 	jal	0 <func_80910640>
    2eb0:	3c074000 	lui	a3,0x4000
    2eb4:	3c063d4c 	lui	a2,0x3d4c
    2eb8:	34c6cccd 	ori	a2,a2,0xcccd
    2ebc:	26440370 	addiu	a0,s2,880
    2ec0:	3c0541a0 	lui	a1,0x41a0
    2ec4:	0c000000 	jal	0 <func_80910640>
    2ec8:	3c073f80 	lui	a3,0x3f80
    2ecc:	864e01bc 	lh	t6,444(s2)
    2ed0:	240f00fa 	li	t7,250
    2ed4:	24180006 	li	t8,6
    2ed8:	55c00071 	bnezl	t6,30a0 <L8091352C+0x1b4>
    2edc:	93a900be 	lbu	t1,190(sp)
    2ee0:	a64f01bc 	sh	t7,444(s2)
    2ee4:	1000006d 	b	309c <L8091352C+0x1b0>
    2ee8:	a658035e 	sh	t8,862(s2)

00002eec <L8091352C>:
    2eec:	24190001 	li	t9,1
    2ef0:	2408000a 	li	t0,10
    2ef4:	a3b900bf 	sb	t9,191(sp)
    2ef8:	a3a800be 	sb	t0,190(sp)
    2efc:	864901bc 	lh	t1,444(s2)
    2f00:	24010096 	li	at,150
    2f04:	55210014 	bnel	t1,at,2f58 <L8091352C+0x6c>
    2f08:	3c053d4c 	lui	a1,0x3d4c
    2f0c:	0c000000 	jal	0 <func_80910640>
    2f10:	24040021 	li	a0,33
    2f14:	3c01c204 	lui	at,0xc204
    2f18:	44814000 	mtc1	at,$f8
    2f1c:	3c010000 	lui	at,0x0
    2f20:	c42a0000 	lwc1	$f10,0(at)
    2f24:	240affff 	li	t2,-1
    2f28:	afaa0024 	sw	t2,36(sp)
    2f2c:	26841c24 	addiu	a0,s4,7204
    2f30:	02802825 	move	a1,s4
    2f34:	2406005d 	li	a2,93
    2f38:	3c074160 	lui	a3,0x4160
    2f3c:	afa00018 	sw	zero,24(sp)
    2f40:	afa0001c 	sw	zero,28(sp)
    2f44:	afa00020 	sw	zero,32(sp)
    2f48:	e7a80010 	swc1	$f8,16(sp)
    2f4c:	0c000000 	jal	0 <func_80910640>
    2f50:	e7aa0014 	swc1	$f10,20(sp)
    2f54:	3c053d4c 	lui	a1,0x3d4c
    2f58:	34a5cccd 	ori	a1,a1,0xcccd
    2f5c:	26440364 	addiu	a0,s2,868
    2f60:	0c000000 	jal	0 <func_80910640>
    2f64:	3c063f80 	lui	a2,0x3f80
    2f68:	3c05c544 	lui	a1,0xc544
    2f6c:	3c063d4c 	lui	a2,0x3d4c
    2f70:	34c6cccd 	ori	a2,a2,0xcccd
    2f74:	34a59000 	ori	a1,a1,0x9000
    2f78:	26440368 	addiu	a0,s2,872
    2f7c:	0c000000 	jal	0 <func_80910640>
    2f80:	3c074000 	lui	a3,0x4000
    2f84:	3c063d4c 	lui	a2,0x3d4c
    2f88:	34c6cccd 	ori	a2,a2,0xcccd
    2f8c:	26440370 	addiu	a0,s2,880
    2f90:	3c0541a0 	lui	a1,0x41a0
    2f94:	0c000000 	jal	0 <func_80910640>
    2f98:	3c073f80 	lui	a3,0x3f80
    2f9c:	864b01bc 	lh	t3,444(s2)
    2fa0:	26510360 	addiu	s1,s2,864
    2fa4:	5560003e 	bnezl	t3,30a0 <L8091352C+0x1b4>
    2fa8:	93a900be 	lbu	t1,190(sp)
    2fac:	8e2d0000 	lw	t5,0(s1)
    2fb0:	8e53011c 	lw	s3,284(s2)
    2fb4:	26881c24 	addiu	t0,s4,7204
    2fb8:	ae0d005c 	sw	t5,92(s0)
    2fbc:	8e2c0004 	lw	t4,4(s1)
    2fc0:	02802025 	move	a0,s4
    2fc4:	00003025 	move	a2,zero
    2fc8:	ae0c0060 	sw	t4,96(s0)
    2fcc:	8e2d0008 	lw	t5,8(s1)
    2fd0:	ae0d0064 	sw	t5,100(s0)
    2fd4:	8e2f0000 	lw	t7,0(s1)
    2fd8:	ae0f0074 	sw	t7,116(s0)
    2fdc:	8e2e0004 	lw	t6,4(s1)
    2fe0:	ae0e0078 	sw	t6,120(s0)
    2fe4:	8e2f0008 	lw	t7,8(s1)
    2fe8:	ae0f007c 	sw	t7,124(s0)
    2fec:	8e59036c 	lw	t9,876(s2)
    2ff0:	ae190050 	sw	t9,80(s0)
    2ff4:	8e580370 	lw	t8,880(s2)
    2ff8:	ae180054 	sw	t8,84(s0)
    2ffc:	8e590374 	lw	t9,884(s2)
    3000:	ae190058 	sw	t9,88(s0)
    3004:	8645035c 	lh	a1,860(s2)
    3008:	0c000000 	jal	0 <func_80910640>
    300c:	afa80060 	sw	t0,96(sp)
    3010:	a640035c 	sh	zero,860(s2)
    3014:	02802025 	move	a0,s4
    3018:	0c000000 	jal	0 <func_80910640>
    301c:	26851d64 	addiu	a1,s4,7524
    3020:	02802025 	move	a0,s4
    3024:	02402825 	move	a1,s2
    3028:	0c000000 	jal	0 <func_80910640>
    302c:	24060007 	li	a2,7
    3030:	3c01c204 	lui	at,0xc204
    3034:	44818000 	mtc1	at,$f16
    3038:	3c010000 	lui	at,0x0
    303c:	c4320000 	lwc1	$f18,0(at)
    3040:	8fa40060 	lw	a0,96(sp)
    3044:	02802825 	move	a1,s4
    3048:	2406005f 	li	a2,95
    304c:	3c074160 	lui	a3,0x4160
    3050:	afa00018 	sw	zero,24(sp)
    3054:	afa0001c 	sw	zero,28(sp)
    3058:	afa00020 	sw	zero,32(sp)
    305c:	afa00024 	sw	zero,36(sp)
    3060:	e7b00010 	swc1	$f16,16(sp)
    3064:	0c000000 	jal	0 <func_80910640>
    3068:	e7b20014 	swc1	$f18,20(sp)
    306c:	24030001 	li	v1,1
    3070:	ae53011c 	sw	s3,284(s2)
    3074:	a24301c6 	sb	v1,454(s2)
    3078:	3c050001 	lui	a1,0x1
    307c:	a263014e 	sb	v1,334(s3)
    3080:	00b42821 	addu	a1,a1,s4
    3084:	80a51cbc 	lb	a1,7356(a1)
    3088:	0c000000 	jal	0 <func_80910640>
    308c:	02802025 	move	a0,s4
    3090:	02802025 	move	a0,s4
    3094:	0c000000 	jal	0 <func_80910640>
    3098:	24050022 	li	a1,34
    309c:	93a900be 	lbu	t1,190(sp)
    30a0:	3c0b0000 	lui	t3,0x0
    30a4:	256b0000 	addiu	t3,t3,0
    30a8:	11200103 	beqz	t1,34b8 <L8091352C+0x5cc>
    30ac:	27aa0088 	addiu	t2,sp,136
    30b0:	8d6d0000 	lw	t5,0(t3)
    30b4:	8d6c0004 	lw	t4,4(t3)
    30b8:	3c0f0000 	lui	t7,0x0
    30bc:	ad4d0000 	sw	t5,0(t2)
    30c0:	8d6d0008 	lw	t5,8(t3)
    30c4:	25ef0000 	addiu	t7,t7,0
    30c8:	ad4c0004 	sw	t4,4(t2)
    30cc:	ad4d0008 	sw	t5,8(t2)
    30d0:	8df90000 	lw	t9,0(t7)
    30d4:	27ae007c 	addiu	t6,sp,124
    30d8:	8df80004 	lw	t8,4(t7)
    30dc:	add90000 	sw	t9,0(t6)
    30e0:	8df90008 	lw	t9,8(t7)
    30e4:	3c090000 	lui	t1,0x0
    30e8:	25290000 	addiu	t1,t1,0
    30ec:	add80004 	sw	t8,4(t6)
    30f0:	add90008 	sw	t9,8(t6)
    30f4:	8d2b0000 	lw	t3,0(t1)
    30f8:	27a80070 	addiu	t0,sp,112
    30fc:	8d2a0004 	lw	t2,4(t1)
    3100:	ad0b0000 	sw	t3,0(t0)
    3104:	8d2b0008 	lw	t3,8(t1)
    3108:	ad0a0004 	sw	t2,4(t0)
    310c:	24190014 	li	t9,20
    3110:	ad0b0008 	sw	t3,8(t0)
    3114:	c6460100 	lwc1	$f6,256(s2)
    3118:	c6440024 	lwc1	$f4,36(s2)
    311c:	93b300be 	lbu	s3,190(sp)
    3120:	46062201 	sub.s	$f8,$f4,$f6
    3124:	2a61000a 	slti	at,s3,10
    3128:	e7a80088 	swc1	$f8,136(sp)
    312c:	c6500108 	lwc1	$f16,264(s2)
    3130:	c64a002c 	lwc1	$f10,44(s2)
    3134:	46105481 	sub.s	$f18,$f10,$f16
    3138:	102000b8 	beqz	at,341c <L8091352C+0x530>
    313c:	e7b20090 	swc1	$f18,144(sp)
    3140:	864201b4 	lh	v0,436(s2)
    3144:	3c0c0001 	lui	t4,0x1
    3148:	01946021 	addu	t4,t4,s4
    314c:	14400038 	bnez	v0,3230 <L8091352C+0x344>
    3150:	2448ffff 	addiu	t0,v0,-1
    3154:	918c0ae3 	lbu	t4,2787(t4)
    3158:	3c010001 	lui	at,0x1
    315c:	240d0003 	li	t5,3
    3160:	1580001b 	bnez	t4,31d0 <L8091352C+0x2e4>
    3164:	00340821 	addu	at,at,s4
    3168:	3c010001 	lui	at,0x1
    316c:	00340821 	addu	at,at,s4
    3170:	a02d0ae3 	sb	t5,2787(at)
    3174:	3c0140a0 	lui	at,0x40a0
    3178:	44816000 	mtc1	at,$f12
    317c:	0c000000 	jal	0 <func_80910640>
    3180:	00000000 	nop
    3184:	4600010d 	trunc.w.s	$f4,$f0
    3188:	3c014080 	lui	at,0x4080
    318c:	44815000 	mtc1	at,$f10
    3190:	3c010001 	lui	at,0x1
    3194:	440f2000 	mfc1	t7,$f4
    3198:	00340821 	addu	at,at,s4
    319c:	240a0028 	li	t2,40
    31a0:	000fc400 	sll	t8,t7,0x10
    31a4:	0018cc03 	sra	t9,t8,0x10
    31a8:	44993000 	mtc1	t9,$f6
    31ac:	00000000 	nop
    31b0:	46803220 	cvt.s.w	$f8,$f6
    31b4:	460a4400 	add.s	$f16,$f8,$f10
    31b8:	4600848d 	trunc.w.s	$f18,$f16
    31bc:	44099000 	mfc1	t1,$f18
    31c0:	00000000 	nop
    31c4:	a64901b4 	sh	t1,436(s2)
    31c8:	1000001a 	b	3234 <L8091352C+0x348>
    31cc:	a42a0afa 	sh	t2,2810(at)
    31d0:	a0200ae3 	sb	zero,2787(at)
    31d4:	3c014000 	lui	at,0x4000
    31d8:	44816000 	mtc1	at,$f12
    31dc:	0c000000 	jal	0 <func_80910640>
    31e0:	00000000 	nop
    31e4:	4600010d 	trunc.w.s	$f4,$f0
    31e8:	3c014000 	lui	at,0x4000
    31ec:	44815000 	mtc1	at,$f10
    31f0:	3c010001 	lui	at,0x1
    31f4:	440c2000 	mfc1	t4,$f4
    31f8:	00340821 	addu	at,at,s4
    31fc:	24190014 	li	t9,20
    3200:	000c6c00 	sll	t5,t4,0x10
    3204:	000d7403 	sra	t6,t5,0x10
    3208:	448e3000 	mtc1	t6,$f6
    320c:	00000000 	nop
    3210:	46803220 	cvt.s.w	$f8,$f6
    3214:	460a4400 	add.s	$f16,$f8,$f10
    3218:	4600848d 	trunc.w.s	$f18,$f16
    321c:	44189000 	mfc1	t8,$f18
    3220:	00000000 	nop
    3224:	a65801b4 	sh	t8,436(s2)
    3228:	10000002 	b	3234 <L8091352C+0x348>
    322c:	a4390afa 	sh	t9,2810(at)
    3230:	a64801b4 	sh	t0,436(s2)
    3234:	00008825 	move	s1,zero
    3238:	864201b2 	lh	v0,434(s2)
    323c:	24010019 	li	at,25
    3240:	a7a2006e 	sh	v0,110(sp)
    3244:	24490001 	addiu	t1,v0,1
    3248:	a64901b2 	sh	t1,434(s2)
    324c:	864a01b2 	lh	t2,434(s2)
    3250:	0141001a 	div	zero,t2,at
    3254:	3c0140a0 	lui	at,0x40a0
    3258:	00005810 	mfhi	t3
    325c:	44816000 	mtc1	at,$f12
    3260:	0c000000 	jal	0 <func_80910640>
    3264:	a64b01b2 	sh	t3,434(s2)
    3268:	87ac006e 	lh	t4,110(sp)
    326c:	3c0140a0 	lui	at,0x40a0
    3270:	44816000 	mtc1	at,$f12
    3274:	000c6880 	sll	t5,t4,0x2
    3278:	01ac6823 	subu	t5,t5,t4
    327c:	000d6880 	sll	t5,t5,0x2
    3280:	024d8021 	addu	s0,s2,t5
    3284:	c6040218 	lwc1	$f4,536(s0)
    3288:	46040180 	add.s	$f6,$f0,$f4
    328c:	0c000000 	jal	0 <func_80910640>
    3290:	e7a60094 	swc1	$f6,148(sp)
    3294:	c608021c 	lwc1	$f8,540(s0)
    3298:	3c0140a0 	lui	at,0x40a0
    329c:	44816000 	mtc1	at,$f12
    32a0:	46080280 	add.s	$f10,$f0,$f8
    32a4:	0c000000 	jal	0 <func_80910640>
    32a8:	e7aa0098 	swc1	$f10,152(sp)
    32ac:	c6100220 	lwc1	$f16,544(s0)
    32b0:	44802000 	mtc1	zero,$f4
    32b4:	24010003 	li	at,3
    32b8:	46100480 	add.s	$f18,$f0,$f16
    32bc:	e7a40080 	swc1	$f4,128(sp)
    32c0:	1661001f 	bne	s3,at,3340 <L8091352C+0x454>
    32c4:	e7b2009c 	swc1	$f18,156(sp)
    32c8:	3c010000 	lui	at,0x0
    32cc:	c4260000 	lwc1	$f6,0(at)
    32d0:	3c014160 	lui	at,0x4160
    32d4:	44814000 	mtc1	at,$f8
    32d8:	c7aa0094 	lwc1	$f10,148(sp)
    32dc:	3c010000 	lui	at,0x0
    32e0:	c4300000 	lwc1	$f16,0(at)
    32e4:	460a4001 	sub.s	$f0,$f8,$f10
    32e8:	3c010000 	lui	at,0x0
    32ec:	e7a60080 	swc1	$f6,128(sp)
    32f0:	c7a6009c 	lwc1	$f6,156(sp)
    32f4:	c4240000 	lwc1	$f4,0(at)
    32f8:	46100482 	mul.s	$f18,$f0,$f16
    32fc:	3c010000 	lui	at,0x0
    3300:	46062081 	sub.s	$f2,$f4,$f6
    3304:	c4280000 	lwc1	$f8,0(at)
    3308:	3c010000 	lui	at,0x0
    330c:	c4300000 	lwc1	$f16,0(at)
    3310:	46081282 	mul.s	$f10,$f2,$f8
    3314:	3c01bf80 	lui	at,0xbf80
    3318:	44812000 	mtc1	at,$f4
    331c:	e7b2007c 	swc1	$f18,124(sp)
    3320:	3c010000 	lui	at,0x0
    3324:	46100482 	mul.s	$f18,$f0,$f16
    3328:	c4260000 	lwc1	$f6,0(at)
    332c:	e7aa0084 	swc1	$f10,132(sp)
    3330:	e7a40074 	swc1	$f4,116(sp)
    3334:	46061202 	mul.s	$f8,$f2,$f6
    3338:	e7b20070 	swc1	$f18,112(sp)
    333c:	e7a80078 	swc1	$f8,120(sp)
    3340:	3c0141a0 	lui	at,0x41a0
    3344:	44816000 	mtc1	at,$f12
    3348:	0c000000 	jal	0 <func_80910640>
    334c:	00000000 	nop
    3350:	4600028d 	trunc.w.s	$f10,$f0
    3354:	93a900be 	lbu	t1,190(sp)
    3358:	02802025 	move	a0,s4
    335c:	27a50094 	addiu	a1,sp,148
    3360:	440f5000 	mfc1	t7,$f10
    3364:	27a60088 	addiu	a2,sp,136
    3368:	27a7007c 	addiu	a3,sp,124
    336c:	000fc400 	sll	t8,t7,0x10
    3370:	0018cc03 	sra	t9,t8,0x10
    3374:	2728000f 	addiu	t0,t9,15
    3378:	afa80010 	sw	t0,16(sp)
    337c:	0c000000 	jal	0 <func_80910640>
    3380:	afa90014 	sw	t1,20(sp)
    3384:	0c000000 	jal	0 <func_80910640>
    3388:	00000000 	nop
    338c:	3c013f00 	lui	at,0x3f00
    3390:	44818000 	mtc1	at,$f16
    3394:	24010003 	li	at,3
    3398:	4610003c 	c.lt.s	$f0,$f16
    339c:	00000000 	nop
    33a0:	45030003 	bc1tl	33b0 <L8091352C+0x4c4>
    33a4:	3c014080 	lui	at,0x4080
    33a8:	16610015 	bne	s3,at,3400 <L8091352C+0x514>
    33ac:	3c014080 	lui	at,0x4080
    33b0:	44816000 	mtc1	at,$f12
    33b4:	0c000000 	jal	0 <func_80910640>
    33b8:	00000000 	nop
    33bc:	4600048d 	trunc.w.s	$f18,$f0
    33c0:	240fffff 	li	t7,-1
    33c4:	2418000a 	li	t8,10
    33c8:	afb8001c 	sw	t8,28(sp)
    33cc:	440b9000 	mfc1	t3,$f18
    33d0:	afaf0018 	sw	t7,24(sp)
    33d4:	02802025 	move	a0,s4
    33d8:	000b6400 	sll	t4,t3,0x10
    33dc:	000c6c03 	sra	t5,t4,0x10
    33e0:	25ae0007 	addiu	t6,t5,7
    33e4:	afae0014 	sw	t6,20(sp)
    33e8:	27a50094 	addiu	a1,sp,148
    33ec:	27a60088 	addiu	a2,sp,136
    33f0:	27a70070 	addiu	a3,sp,112
    33f4:	afa00010 	sw	zero,16(sp)
    33f8:	0c000000 	jal	0 <func_80910640>
    33fc:	afa00020 	sw	zero,32(sp)
    3400:	26310001 	addiu	s1,s1,1
    3404:	00118c00 	sll	s1,s1,0x10
    3408:	00118c03 	sra	s1,s1,0x10
    340c:	5a20ff8b 	blezl	s1,323c <L8091352C+0x350>
    3410:	864201b2 	lh	v0,434(s2)
    3414:	10000008 	b	3438 <L8091352C+0x54c>
    3418:	24020001 	li	v0,1
    341c:	3c010001 	lui	at,0x1
    3420:	00340821 	addu	at,at,s4
    3424:	a0200ae3 	sb	zero,2787(at)
    3428:	3c010001 	lui	at,0x1
    342c:	00340821 	addu	at,at,s4
    3430:	a4390afa 	sh	t9,2810(at)
    3434:	24020001 	li	v0,1
    3438:	3c100000 	lui	s0,0x0
    343c:	a64201b0 	sh	v0,432(s2)
    3440:	26100000 	addiu	s0,s0,0
    3444:	00008825 	move	s1,zero
    3448:	24020001 	li	v0,1
    344c:	14530005 	bne	v0,s3,3464 <L8091352C+0x578>
    3450:	864501ae 	lh	a1,430(s2)
    3454:	0c000000 	jal	0 <func_80910640>
    3458:	02002025 	move	a0,s0
    345c:	1000000c 	b	3490 <L8091352C+0x5a4>
    3460:	864501ae 	lh	a1,430(s2)
    3464:	24010002 	li	at,2
    3468:	16610006 	bne	s3,at,3484 <L8091352C+0x598>
    346c:	3c040000 	lui	a0,0x0
    3470:	3c040000 	lui	a0,0x0
    3474:	0c000000 	jal	0 <func_80910640>
    3478:	24840000 	addiu	a0,a0,0
    347c:	10000004 	b	3490 <L8091352C+0x5a4>
    3480:	864501ae 	lh	a1,430(s2)
    3484:	0c000000 	jal	0 <func_80910640>
    3488:	24840000 	addiu	a0,a0,0
    348c:	864501ae 	lh	a1,430(s2)
    3490:	26310001 	addiu	s1,s1,1
    3494:	00118c00 	sll	s1,s1,0x10
    3498:	28a10100 	slti	at,a1,256
    349c:	10200003 	beqz	at,34ac <L8091352C+0x5c0>
    34a0:	00118c03 	sra	s1,s1,0x10
    34a4:	24a80001 	addiu	t0,a1,1
    34a8:	a64801ae 	sh	t0,430(s2)
    34ac:	2a210005 	slti	at,s1,5
    34b0:	5420ffe6 	bnezl	at,344c <L8091352C+0x560>
    34b4:	24020001 	li	v0,1
    34b8:	8645035c 	lh	a1,860(s2)
    34bc:	50a0004e 	beqzl	a1,35f8 <L8091352C+0x70c>
    34c0:	8fbf004c 	lw	ra,76(sp)
    34c4:	93aa00bf 	lbu	t2,191(sp)
    34c8:	2649036c 	addiu	t1,s2,876
    34cc:	afa90058 	sw	t1,88(sp)
    34d0:	15400044 	bnez	t2,35e4 <L8091352C+0x6f8>
    34d4:	26510360 	addiu	s1,s2,864
    34d8:	c6440378 	lwc1	$f4,888(s2)
    34dc:	c64603c0 	lwc1	$f6,960(s2)
    34e0:	8e450390 	lw	a1,912(s2)
    34e4:	8e46039c 	lw	a2,924(s2)
    34e8:	46062202 	mul.s	$f8,$f4,$f6
    34ec:	264b0370 	addiu	t3,s2,880
    34f0:	afab0050 	sw	t3,80(sp)
    34f4:	02202025 	move	a0,s1
    34f8:	26500364 	addiu	s0,s2,868
    34fc:	26530368 	addiu	s3,s2,872
    3500:	44074000 	mfc1	a3,$f8
    3504:	0c000000 	jal	0 <func_80910640>
    3508:	00000000 	nop
    350c:	c64a037c 	lwc1	$f10,892(s2)
    3510:	c65003c0 	lwc1	$f16,960(s2)
    3514:	02002025 	move	a0,s0
    3518:	8e450394 	lw	a1,916(s2)
    351c:	46105482 	mul.s	$f18,$f10,$f16
    3520:	8e4603a0 	lw	a2,928(s2)
    3524:	44079000 	mfc1	a3,$f18
    3528:	0c000000 	jal	0 <func_80910640>
    352c:	00000000 	nop
    3530:	c6440380 	lwc1	$f4,896(s2)
    3534:	c64603c0 	lwc1	$f6,960(s2)
    3538:	02602025 	move	a0,s3
    353c:	8e450398 	lw	a1,920(s2)
    3540:	46062202 	mul.s	$f8,$f4,$f6
    3544:	8e4603a4 	lw	a2,932(s2)
    3548:	44074000 	mfc1	a3,$f8
    354c:	0c000000 	jal	0 <func_80910640>
    3550:	00000000 	nop
    3554:	c64a0384 	lwc1	$f10,900(s2)
    3558:	c65003c0 	lwc1	$f16,960(s2)
    355c:	8fa40058 	lw	a0,88(sp)
    3560:	8e4503a8 	lw	a1,936(s2)
    3564:	46105482 	mul.s	$f18,$f10,$f16
    3568:	8e4603b4 	lw	a2,948(s2)
    356c:	44079000 	mfc1	a3,$f18
    3570:	0c000000 	jal	0 <func_80910640>
    3574:	00000000 	nop
    3578:	c6440388 	lwc1	$f4,904(s2)
    357c:	c64603c0 	lwc1	$f6,960(s2)
    3580:	8fa40050 	lw	a0,80(sp)
    3584:	8e4503ac 	lw	a1,940(s2)
    3588:	46062202 	mul.s	$f8,$f4,$f6
    358c:	8e4603b8 	lw	a2,952(s2)
    3590:	44074000 	mfc1	a3,$f8
    3594:	0c000000 	jal	0 <func_80910640>
    3598:	00000000 	nop
    359c:	c64a038c 	lwc1	$f10,908(s2)
    35a0:	c65003c0 	lwc1	$f16,960(s2)
    35a4:	26440374 	addiu	a0,s2,884
    35a8:	8e4503b0 	lw	a1,944(s2)
    35ac:	46105482 	mul.s	$f18,$f10,$f16
    35b0:	8e4603bc 	lw	a2,956(s2)
    35b4:	44079000 	mfc1	a3,$f18
    35b8:	0c000000 	jal	0 <func_80910640>
    35bc:	00000000 	nop
    35c0:	3c013f80 	lui	at,0x3f80
    35c4:	44810000 	mtc1	at,$f0
    35c8:	264403c0 	addiu	a0,s2,960
    35cc:	8e4703c4 	lw	a3,964(s2)
    35d0:	44050000 	mfc1	a1,$f0
    35d4:	44060000 	mfc1	a2,$f0
    35d8:	0c000000 	jal	0 <func_80910640>
    35dc:	00000000 	nop
    35e0:	8645035c 	lh	a1,860(s2)
    35e4:	02802025 	move	a0,s4
    35e8:	8fa60058 	lw	a2,88(sp)
    35ec:	0c000000 	jal	0 <func_80910640>
    35f0:	02203825 	move	a3,s1
    35f4:	8fbf004c 	lw	ra,76(sp)
    35f8:	8fb00038 	lw	s0,56(sp)
    35fc:	8fb1003c 	lw	s1,60(sp)
    3600:	8fb20040 	lw	s2,64(sp)
    3604:	8fb30044 	lw	s3,68(sp)
    3608:	8fb40048 	lw	s4,72(sp)
    360c:	03e00008 	jr	ra
    3610:	27bd00c0 	addiu	sp,sp,192

00003614 <func_80913C54>:
    3614:	27bdffd0 	addiu	sp,sp,-48
    3618:	afbf001c 	sw	ra,28(sp)
    361c:	afb00018 	sw	s0,24(sp)
    3620:	afa50034 	sw	a1,52(sp)
    3624:	848201a0 	lh	v0,416(a0)
    3628:	00808025 	move	s0,a0
    362c:	8c87011c 	lw	a3,284(a0)
    3630:	10400007 	beqz	v0,3650 <func_80913C54+0x3c>
    3634:	244effff 	addiu	t6,v0,-1
    3638:	908f04f1 	lbu	t7,1265(a0)
    363c:	a48e01a0 	sh	t6,416(a0)
    3640:	a08001c7 	sb	zero,455(a0)
    3644:	31f8fffd 	andi	t8,t7,0xfffd
    3648:	1000007b 	b	3838 <func_80913C54+0x224>
    364c:	a09804f1 	sb	t8,1265(a0)
    3650:	920304f1 	lbu	v1,1265(s0)
    3654:	30620002 	andi	v0,v1,0x2
    3658:	50400005 	beqzl	v0,3670 <func_80913C54+0x5c>
    365c:	920801c7 	lbu	t0,455(s0)
    3660:	821900af 	lb	t9,175(s0)
    3664:	1f200004 	bgtz	t9,3678 <func_80913C54+0x64>
    3668:	00000000 	nop
    366c:	920801c7 	lbu	t0,455(s0)
    3670:	51000072 	beqzl	t0,383c <func_80913C54+0x228>
    3674:	8fbf001c 	lw	ra,28(sp)
    3678:	50400006 	beqzl	v0,3694 <func_80913C54+0x80>
    367c:	920a01c9 	lbu	t2,457(s0)
    3680:	8e06051c 	lw	a2,1308(s0)
    3684:	3069fffd 	andi	t1,v1,0xfffd
    3688:	a20904f1 	sb	t1,1265(s0)
    368c:	afa60024 	sw	a2,36(sp)
    3690:	920a01c9 	lbu	t2,457(s0)
    3694:	8fa60024 	lw	a2,36(sp)
    3698:	11400055 	beqz	t2,37f0 <func_80913C54+0x1dc>
    369c:	00000000 	nop
    36a0:	50400014 	beqzl	v0,36f4 <func_80913C54+0xe0>
    36a4:	8e180190 	lw	t8,400(s0)
    36a8:	8e0c0190 	lw	t4,400(s0)
    36ac:	3c0b0000 	lui	t3,0x0
    36b0:	256b0000 	addiu	t3,t3,0
    36b4:	516c000f 	beql	t3,t4,36f4 <func_80913C54+0xe0>
    36b8:	8e180190 	lw	t8,400(s0)
    36bc:	8ccd0000 	lw	t5,0(a2)
    36c0:	3c010001 	lui	at,0x1
    36c4:	3421f8a4 	ori	at,at,0xf8a4
    36c8:	01a17024 	and	t6,t5,at
    36cc:	11c00008 	beqz	t6,36f0 <func_80913C54+0xdc>
    36d0:	02002025 	move	a0,s0
    36d4:	0c000000 	jal	0 <func_80910640>
    36d8:	00002825 	move	a1,zero
    36dc:	3c040000 	lui	a0,0x0
    36e0:	0c000000 	jal	0 <func_80910640>
    36e4:	24840000 	addiu	a0,a0,0
    36e8:	10000053 	b	3838 <func_80913C54+0x224>
    36ec:	a20001c7 	sb	zero,455(s0)
    36f0:	8e180190 	lw	t8,400(s0)
    36f4:	3c0f0000 	lui	t7,0x0
    36f8:	25ef0000 	addiu	t7,t7,0
    36fc:	11f80038 	beq	t7,t8,37e0 <func_80913C54+0x1cc>
    3700:	02002025 	move	a0,s0
    3704:	921901c7 	lbu	t9,455(s0)
    3708:	57200023 	bnezl	t9,3798 <func_80913C54+0x184>
    370c:	02002025 	move	a0,s0
    3710:	8cc40000 	lw	a0,0(a2)
    3714:	30880080 	andi	t0,a0,0x80
    3718:	55000048 	bnezl	t0,383c <func_80913C54+0x228>
    371c:	8fbf001c 	lw	ra,28(sp)
    3720:	a3a00022 	sb	zero,34(sp)
    3724:	0c000000 	jal	0 <func_80910640>
    3728:	afa70028 	sw	a3,40(sp)
    372c:	93a50022 	lbu	a1,34(sp)
    3730:	8fa70028 	lw	a3,40(sp)
    3734:	14400003 	bnez	v0,3744 <func_80913C54+0x130>
    3738:	304400ff 	andi	a0,v0,0xff
    373c:	10000002 	b	3748 <func_80913C54+0x134>
    3740:	24040002 	li	a0,2
    3744:	24050001 	li	a1,1
    3748:	920300af 	lbu	v1,175(s0)
    374c:	00031600 	sll	v0,v1,0x18
    3750:	00021603 	sra	v0,v0,0x18
    3754:	28410003 	slti	at,v0,3
    3758:	10200003 	beqz	at,3768 <func_80913C54+0x154>
    375c:	00644823 	subu	t1,v1,a0
    3760:	10a00003 	beqz	a1,3770 <func_80913C54+0x15c>
    3764:	00000000 	nop
    3768:	a20900af 	sb	t1,175(s0)
    376c:	820200af 	lb	v0,175(s0)
    3770:	1c400008 	bgtz	v0,3794 <func_80913C54+0x180>
    3774:	02002025 	move	a0,s0
    3778:	0c000000 	jal	0 <func_80910640>
    377c:	8fa50034 	lw	a1,52(sp)
    3780:	8fa40034 	lw	a0,52(sp)
    3784:	0c000000 	jal	0 <func_80910640>
    3788:	02002825 	move	a1,s0
    378c:	1000002b 	b	383c <func_80913C54+0x228>
    3790:	8fbf001c 	lw	ra,28(sp)
    3794:	02002025 	move	a0,s0
    3798:	8fa50034 	lw	a1,52(sp)
    379c:	0c000000 	jal	0 <func_80910640>
    37a0:	afa70028 	sw	a3,40(sp)
    37a4:	920a01c7 	lbu	t2,455(s0)
    37a8:	8fa70028 	lw	a3,40(sp)
    37ac:	240c000a 	li	t4,10
    37b0:	29410002 	slti	at,t2,2
    37b4:	14200003 	bnez	at,37c4 <func_80913C54+0x1b0>
    37b8:	240d0014 	li	t5,20
    37bc:	240b0078 	li	t3,120
    37c0:	a60b01bc 	sh	t3,444(s0)
    37c4:	a60c01a0 	sh	t4,416(s0)
    37c8:	a4ed01de 	sh	t5,478(a3)
    37cc:	02002025 	move	a0,s0
    37d0:	0c000000 	jal	0 <func_80910640>
    37d4:	240538ae 	li	a1,14510
    37d8:	10000017 	b	3838 <func_80913C54+0x224>
    37dc:	a20001c7 	sb	zero,455(s0)
    37e0:	0c000000 	jal	0 <func_80910640>
    37e4:	00002825 	move	a1,zero
    37e8:	10000013 	b	3838 <func_80913C54+0x224>
    37ec:	a20001c7 	sb	zero,455(s0)
    37f0:	50400011 	beqzl	v0,3838 <func_80913C54+0x224>
    37f4:	a20001c7 	sb	zero,455(s0)
    37f8:	8cce0000 	lw	t6,0(a2)
    37fc:	3c010001 	lui	at,0x1
    3800:	3421f8a4 	ori	at,at,0xf8a4
    3804:	01c17824 	and	t7,t6,at
    3808:	11e0000a 	beqz	t7,3834 <func_80913C54+0x220>
    380c:	2418000a 	li	t8,10
    3810:	921900af 	lbu	t9,175(s0)
    3814:	a61801a0 	sh	t8,416(s0)
    3818:	24090014 	li	t1,20
    381c:	2728fffe 	addiu	t0,t9,-2
    3820:	a20800af 	sb	t0,175(s0)
    3824:	a4e901de 	sh	t1,478(a3)
    3828:	02002025 	move	a0,s0
    382c:	0c000000 	jal	0 <func_80910640>
    3830:	240538ae 	li	a1,14510
    3834:	a20001c7 	sb	zero,455(s0)
    3838:	8fbf001c 	lw	ra,28(sp)
    383c:	8fb00018 	lw	s0,24(sp)
    3840:	27bd0030 	addiu	sp,sp,48
    3844:	03e00008 	jr	ra
    3848:	00000000 	nop

0000384c <BossGanondrof_Update>:
    384c:	27bdff88 	addiu	sp,sp,-120
    3850:	afb1002c 	sw	s1,44(sp)
    3854:	00808825 	move	s1,a0
    3858:	afb20030 	sw	s2,48(sp)
    385c:	00a09025 	move	s2,a1
    3860:	afbf0034 	sw	ra,52(sp)
    3864:	afb00028 	sw	s0,40(sp)
    3868:	3c040000 	lui	a0,0x0
    386c:	24840000 	addiu	a0,a0,0
    3870:	0c000000 	jal	0 <func_80910640>
    3874:	8625001c 	lh	a1,28(s1)
    3878:	8e2e0004 	lw	t6,4(s1)
    387c:	923901c6 	lbu	t9,454(s1)
    3880:	2401fbff 	li	at,-1025
    3884:	24180003 	li	t8,3
    3888:	01c17824 	and	t7,t6,at
    388c:	ae2f0004 	sw	t7,4(s1)
    3890:	13200005 	beqz	t9,38a8 <BossGanondrof_Update+0x5c>
    3894:	a23804f4 	sb	t8,1268(s1)
    3898:	0c000000 	jal	0 <func_80910640>
    389c:	02202025 	move	a0,s1
    38a0:	100000fa 	b	3c8c <BossGanondrof_Update+0x440>
    38a4:	8fbf0034 	lw	ra,52(sp)
    38a8:	86280194 	lh	t0,404(s1)
    38ac:	3c040000 	lui	a0,0x0
    38b0:	8e30011c 	lw	s0,284(s1)
    38b4:	25090001 	addiu	t1,t0,1
    38b8:	a6290194 	sh	t1,404(s1)
    38bc:	24840000 	addiu	a0,a0,0
    38c0:	0c000000 	jal	0 <func_80910640>
    38c4:	8625001c 	lh	a1,28(s1)
    38c8:	8e390190 	lw	t9,400(s1)
    38cc:	02202025 	move	a0,s1
    38d0:	02402825 	move	a1,s2
    38d4:	0320f809 	jalr	t9
    38d8:	00000000 	nop
    38dc:	00001025 	move	v0,zero
    38e0:	00025040 	sll	t2,v0,0x1
    38e4:	022a1821 	addu	v1,s1,t2
    38e8:	846401bc 	lh	a0,444(v1)
    38ec:	24420001 	addiu	v0,v0,1
    38f0:	00021400 	sll	v0,v0,0x10
    38f4:	10800003 	beqz	a0,3904 <BossGanondrof_Update+0xb8>
    38f8:	00021403 	sra	v0,v0,0x10
    38fc:	248bffff 	addiu	t3,a0,-1
    3900:	a46b01bc 	sh	t3,444(v1)
    3904:	28410005 	slti	at,v0,5
    3908:	5420fff6 	bnezl	at,38e4 <BossGanondrof_Update+0x98>
    390c:	00025040 	sll	t2,v0,0x1
    3910:	8622019c 	lh	v0,412(s1)
    3914:	10400002 	beqz	v0,3920 <BossGanondrof_Update+0xd4>
    3918:	244cffff 	addiu	t4,v0,-1
    391c:	a62c019c 	sh	t4,412(s1)
    3920:	8622019e 	lh	v0,414(s1)
    3924:	10400002 	beqz	v0,3930 <BossGanondrof_Update+0xe4>
    3928:	244dffff 	addiu	t5,v0,-1
    392c:	a62d019e 	sh	t5,414(s1)
    3930:	8e2f0190 	lw	t7,400(s1)
    3934:	3c0e0000 	lui	t6,0x0
    3938:	25ce0000 	addiu	t6,t6,0
    393c:	11cf0003 	beq	t6,t7,394c <BossGanondrof_Update+0x100>
    3940:	02202025 	move	a0,s1
    3944:	0c000000 	jal	0 <func_80910640>
    3948:	02402825 	move	a1,s2
    394c:	3c040000 	lui	a0,0x0
    3950:	0c000000 	jal	0 <func_80910640>
    3954:	24840000 	addiu	a0,a0,0
    3958:	2624020c 	addiu	a0,s1,524
    395c:	262504e0 	addiu	a1,s1,1248
    3960:	afa5003c 	sw	a1,60(sp)
    3964:	0c000000 	jal	0 <func_80910640>
    3968:	afa40038 	sw	a0,56(sp)
    396c:	2625052c 	addiu	a1,s1,1324
    3970:	afa50040 	sw	a1,64(sp)
    3974:	0c000000 	jal	0 <func_80910640>
    3978:	26240200 	addiu	a0,s1,512
    397c:	923801c9 	lbu	t8,457(s1)
    3980:	17000009 	bnez	t8,39a8 <BossGanondrof_Update+0x15c>
    3984:	00000000 	nop
    3988:	9208014d 	lbu	t0,333(s0)
    398c:	3c010001 	lui	at,0x1
    3990:	34211e60 	ori	at,at,0x1e60
    3994:	15000004 	bnez	t0,39a8 <BossGanondrof_Update+0x15c>
    3998:	02402025 	move	a0,s2
    399c:	02412821 	addu	a1,s2,at
    39a0:	0c000000 	jal	0 <func_80910640>
    39a4:	8fa6003c 	lw	a2,60(sp)
    39a8:	3c090000 	lui	t1,0x0
    39ac:	25290000 	addiu	t1,t1,0
    39b0:	afa90044 	sw	t1,68(sp)
    39b4:	8e220190 	lw	v0,400(s1)
    39b8:	3c030001 	lui	v1,0x1
    39bc:	34631e60 	ori	v1,v1,0x1e60
    39c0:	1522000f 	bne	t1,v0,3a00 <BossGanondrof_Update+0x1b4>
    39c4:	3c0a0000 	lui	t2,0x0
    39c8:	863901bc 	lh	t9,444(s1)
    39cc:	02438021 	addu	s0,s2,v1
    39d0:	02002825 	move	a1,s0
    39d4:	2b210002 	slti	at,t9,2
    39d8:	14200009 	bnez	at,3a00 <BossGanondrof_Update+0x1b4>
    39dc:	02402025 	move	a0,s2
    39e0:	0c000000 	jal	0 <func_80910640>
    39e4:	8fa6003c 	lw	a2,60(sp)
    39e8:	02402025 	move	a0,s2
    39ec:	02002825 	move	a1,s0
    39f0:	0c000000 	jal	0 <func_80910640>
    39f4:	8fa6003c 	lw	a2,60(sp)
    39f8:	1000001a 	b	3a64 <BossGanondrof_Update+0x218>
    39fc:	8fac0038 	lw	t4,56(sp)
    3a00:	254a0000 	addiu	t2,t2,0
    3a04:	15420007 	bne	t2,v0,3a24 <BossGanondrof_Update+0x1d8>
    3a08:	3c0b0000 	lui	t3,0x0
    3a0c:	02402025 	move	a0,s2
    3a10:	02432821 	addu	a1,s2,v1
    3a14:	0c000000 	jal	0 <func_80910640>
    3a18:	8fa6003c 	lw	a2,60(sp)
    3a1c:	10000011 	b	3a64 <BossGanondrof_Update+0x218>
    3a20:	8fac0038 	lw	t4,56(sp)
    3a24:	256b0000 	addiu	t3,t3,0
    3a28:	1562000d 	bne	t3,v0,3a60 <BossGanondrof_Update+0x214>
    3a2c:	02402025 	move	a0,s2
    3a30:	02438021 	addu	s0,s2,v1
    3a34:	02002825 	move	a1,s0
    3a38:	0c000000 	jal	0 <func_80910640>
    3a3c:	8fa6003c 	lw	a2,60(sp)
    3a40:	02402025 	move	a0,s2
    3a44:	02002825 	move	a1,s0
    3a48:	0c000000 	jal	0 <func_80910640>
    3a4c:	8fa6003c 	lw	a2,60(sp)
    3a50:	02402025 	move	a0,s2
    3a54:	02002825 	move	a1,s0
    3a58:	0c000000 	jal	0 <func_80910640>
    3a5c:	8fa60040 	lw	a2,64(sp)
    3a60:	8fac0038 	lw	t4,56(sp)
    3a64:	862400b6 	lh	a0,182(s1)
    3a68:	8d8e0000 	lw	t6,0(t4)
    3a6c:	00042023 	negu	a0,a0
    3a70:	00042400 	sll	a0,a0,0x10
    3a74:	ae2e0038 	sw	t6,56(s1)
    3a78:	8d8d0004 	lw	t5,4(t4)
    3a7c:	00042403 	sra	a0,a0,0x10
    3a80:	ae2d003c 	sw	t5,60(s1)
    3a84:	8d8e0008 	lw	t6,8(t4)
    3a88:	0c000000 	jal	0 <func_80910640>
    3a8c:	ae2e0040 	sw	t6,64(s1)
    3a90:	862400b6 	lh	a0,182(s1)
    3a94:	e7a00070 	swc1	$f0,112(sp)
    3a98:	00042023 	negu	a0,a0
    3a9c:	00042400 	sll	a0,a0,0x10
    3aa0:	0c000000 	jal	0 <func_80910640>
    3aa4:	00042403 	sra	a0,a0,0x10
    3aa8:	c7b00070 	lwc1	$f16,112(sp)
    3aac:	c6220064 	lwc1	$f2,100(s1)
    3ab0:	c62c005c 	lwc1	$f12,92(s1)
    3ab4:	3c014396 	lui	at,0x4396
    3ab8:	46101102 	mul.s	$f4,$f2,$f16
    3abc:	44819000 	mtc1	at,$f18
    3ac0:	46008287 	neg.s	$f10,$f16
    3ac4:	460c0182 	mul.s	$f6,$f0,$f12
    3ac8:	262403c8 	addiu	a0,s1,968
    3acc:	3c063f80 	lui	a2,0x3f80
    3ad0:	3c074416 	lui	a3,0x4416
    3ad4:	46062200 	add.s	$f8,$f4,$f6
    3ad8:	46124382 	mul.s	$f14,$f8,$f18
    3adc:	00000000 	nop
    3ae0:	460c5102 	mul.s	$f4,$f10,$f12
    3ae4:	00000000 	nop
    3ae8:	46020182 	mul.s	$f6,$f0,$f2
    3aec:	44057000 	mfc1	a1,$f14
    3af0:	46062200 	add.s	$f8,$f4,$f6
    3af4:	46124282 	mul.s	$f10,$f8,$f18
    3af8:	0c000000 	jal	0 <func_80910640>
    3afc:	e7aa0068 	swc1	$f10,104(sp)
    3b00:	262403cc 	addiu	a0,s1,972
    3b04:	8fa50068 	lw	a1,104(sp)
    3b08:	3c063f80 	lui	a2,0x3f80
    3b0c:	0c000000 	jal	0 <func_80910640>
    3b10:	3c074416 	lui	a3,0x4416
    3b14:	922f01c9 	lbu	t7,457(s1)
    3b18:	8fb80044 	lw	t8,68(sp)
    3b1c:	51e0001b 	beqzl	t7,3b8c <BossGanondrof_Update+0x340>
    3b20:	44801000 	mtc1	zero,$f2
    3b24:	8e280190 	lw	t0,400(s1)
    3b28:	53080018 	beql	t8,t0,3b8c <BossGanondrof_Update+0x340>
    3b2c:	44801000 	mtc1	zero,$f2
    3b30:	8629035e 	lh	t1,862(s1)
    3b34:	55200015 	bnezl	t1,3b8c <BossGanondrof_Update+0x340>
    3b38:	44801000 	mtc1	zero,$f2
    3b3c:	86240194 	lh	a0,404(s1)
    3b40:	00800821 	move	at,a0
    3b44:	000420c0 	sll	a0,a0,0x3
    3b48:	00812021 	addu	a0,a0,at
    3b4c:	000420c0 	sll	a0,a0,0x3
    3b50:	00812023 	subu	a0,a0,at
    3b54:	000420c0 	sll	a0,a0,0x3
    3b58:	00812023 	subu	a0,a0,at
    3b5c:	00042080 	sll	a0,a0,0x2
    3b60:	00042400 	sll	a0,a0,0x10
    3b64:	0c000000 	jal	0 <func_80910640>
    3b68:	00042403 	sra	a0,a0,0x10
    3b6c:	3c01c3fa 	lui	at,0xc3fa
    3b70:	44812000 	mtc1	at,$f4
    3b74:	3c0143fa 	lui	at,0x43fa
    3b78:	44814000 	mtc1	at,$f8
    3b7c:	46040182 	mul.s	$f6,$f0,$f4
    3b80:	10000003 	b	3b90 <BossGanondrof_Update+0x344>
    3b84:	46083081 	sub.s	$f2,$f6,$f8
    3b88:	44801000 	mtc1	zero,$f2
    3b8c:	00000000 	nop
    3b90:	44051000 	mfc1	a1,$f2
    3b94:	262403d0 	addiu	a0,s1,976
    3b98:	3c063f80 	lui	a2,0x3f80
    3b9c:	0c000000 	jal	0 <func_80910640>
    3ba0:	3c0742c8 	lui	a3,0x42c8
    3ba4:	922201c8 	lbu	v0,456(s1)
    3ba8:	3c040000 	lui	a0,0x0
    3bac:	24840000 	addiu	a0,a0,0
    3bb0:	10400019 	beqz	v0,3c18 <BossGanondrof_Update+0x3cc>
    3bb4:	2459ffff 	addiu	t9,v0,-1
    3bb8:	0c000000 	jal	0 <func_80910640>
    3bbc:	a23901c8 	sb	t9,456(s1)
    3bc0:	262a0024 	addiu	t2,s1,36
    3bc4:	afaa0048 	sw	t2,72(sp)
    3bc8:	00008025 	move	s0,zero
    3bcc:	3c040000 	lui	a0,0x0
    3bd0:	0c000000 	jal	0 <func_80910640>
    3bd4:	24840000 	addiu	a0,a0,0
    3bd8:	240b0002 	li	t3,2
    3bdc:	afab0010 	sw	t3,16(sp)
    3be0:	02402025 	move	a0,s2
    3be4:	02202825 	move	a1,s1
    3be8:	8fa60048 	lw	a2,72(sp)
    3bec:	0c000000 	jal	0 <func_80910640>
    3bf0:	2407002d 	li	a3,45
    3bf4:	26100001 	addiu	s0,s0,1
    3bf8:	00108400 	sll	s0,s0,0x10
    3bfc:	00108403 	sra	s0,s0,0x10
    3c00:	2a010007 	slti	at,s0,7
    3c04:	1420fff1 	bnez	at,3bcc <BossGanondrof_Update+0x380>
    3c08:	00000000 	nop
    3c0c:	3c040000 	lui	a0,0x0
    3c10:	0c000000 	jal	0 <func_80910640>
    3c14:	24840000 	addiu	a0,a0,0
    3c18:	862c001c 	lh	t4,28(s1)
    3c1c:	24010001 	li	at,1
    3c20:	262404d0 	addiu	a0,s1,1232
    3c24:	15810018 	bne	t4,at,3c88 <BossGanondrof_Update+0x43c>
    3c28:	241800ff 	li	t8,255
    3c2c:	c62a0200 	lwc1	$f10,512(s1)
    3c30:	c6260204 	lwc1	$f6,516(s1)
    3c34:	240800ff 	li	t0,255
    3c38:	4600510d 	trunc.w.s	$f4,$f10
    3c3c:	c62a0208 	lwc1	$f10,520(s1)
    3c40:	240900ff 	li	t1,255
    3c44:	4600320d 	trunc.w.s	$f8,$f6
    3c48:	44052000 	mfc1	a1,$f4
    3c4c:	241900c8 	li	t9,200
    3c50:	4600510d 	trunc.w.s	$f4,$f10
    3c54:	44064000 	mfc1	a2,$f8
    3c58:	00052c00 	sll	a1,a1,0x10
    3c5c:	00052c03 	sra	a1,a1,0x10
    3c60:	44072000 	mfc1	a3,$f4
    3c64:	00063400 	sll	a2,a2,0x10
    3c68:	00063403 	sra	a2,a2,0x10
    3c6c:	00073c00 	sll	a3,a3,0x10
    3c70:	00073c03 	sra	a3,a3,0x10
    3c74:	afb9001c 	sw	t9,28(sp)
    3c78:	afa90018 	sw	t1,24(sp)
    3c7c:	afa80014 	sw	t0,20(sp)
    3c80:	0c000000 	jal	0 <func_80910640>
    3c84:	afb80010 	sw	t8,16(sp)
    3c88:	8fbf0034 	lw	ra,52(sp)
    3c8c:	8fb00028 	lw	s0,40(sp)
    3c90:	8fb1002c 	lw	s1,44(sp)
    3c94:	8fb20030 	lw	s2,48(sp)
    3c98:	03e00008 	jr	ra
    3c9c:	27bd0078 	addiu	sp,sp,120

00003ca0 <func_809142E0>:
    3ca0:	24aefffb 	addiu	t6,a1,-5
    3ca4:	2dc10015 	sltiu	at,t6,21
    3ca8:	afa40000 	sw	a0,0(sp)
    3cac:	102000e2 	beqz	at,4038 <L80914678>
    3cb0:	afa7000c 	sw	a3,12(sp)
    3cb4:	000e7080 	sll	t6,t6,0x2
    3cb8:	3c010000 	lui	at,0x0
    3cbc:	002e0821 	addu	at,at,t6
    3cc0:	8c2e0000 	lw	t6,0(at)
    3cc4:	01c00008 	jr	t6
    3cc8:	00000000 	nop

00003ccc <L8091430C>:
    3ccc:	8fa20014 	lw	v0,20(sp)
    3cd0:	3c0f0000 	lui	t7,0x0
    3cd4:	25ef0000 	addiu	t7,t7,0
    3cd8:	8c580190 	lw	t8,400(v0)
    3cdc:	55f80008 	bnel	t7,t8,3d00 <L8091430C+0x34>
    3ce0:	8fa30010 	lw	v1,16(sp)
    3ce4:	845901a8 	lh	t9,424(v0)
    3ce8:	3c080600 	lui	t0,0x600
    3cec:	25084ec0 	addiu	t0,t0,20160
    3cf0:	53200003 	beqzl	t9,3d00 <L8091430C+0x34>
    3cf4:	8fa30010 	lw	v1,16(sp)
    3cf8:	acc80000 	sw	t0,0(a2)
    3cfc:	8fa30010 	lw	v1,16(sp)
    3d00:	00054880 	sll	t1,a1,0x2
    3d04:	00492021 	addu	a0,v0,t1
    3d08:	846a0002 	lh	t2,2(v1)
    3d0c:	c4880454 	lwc1	$f8,1108(a0)
    3d10:	846d0004 	lh	t5,4(v1)
    3d14:	448a2000 	mtc1	t2,$f4
    3d18:	00001025 	move	v0,zero
    3d1c:	448d9000 	mtc1	t5,$f18
    3d20:	468021a0 	cvt.s.w	$f6,$f4
    3d24:	46809120 	cvt.s.w	$f4,$f18
    3d28:	46083280 	add.s	$f10,$f6,$f8
    3d2c:	4600540d 	trunc.w.s	$f16,$f10
    3d30:	440c8000 	mfc1	t4,$f16
    3d34:	00000000 	nop
    3d38:	a46c0002 	sh	t4,2(v1)
    3d3c:	c48603dc 	lwc1	$f6,988(a0)
    3d40:	46062200 	add.s	$f8,$f4,$f6
    3d44:	4600428d 	trunc.w.s	$f10,$f8
    3d48:	440f5000 	mfc1	t7,$f10
    3d4c:	03e00008 	jr	ra
    3d50:	a46f0004 	sh	t7,4(v1)

00003d54 <L80914394>:
    3d54:	8fa30010 	lw	v1,16(sp)
    3d58:	8fa20014 	lw	v0,20(sp)
    3d5c:	84780002 	lh	t8,2(v1)
    3d60:	c45003c8 	lwc1	$f16,968(v0)
    3d64:	c45203d0 	lwc1	$f18,976(v0)
    3d68:	44983000 	mtc1	t8,$f6
    3d6c:	84690004 	lh	t1,4(v1)
    3d70:	46128100 	add.s	$f4,$f16,$f18
    3d74:	44899000 	mtc1	t1,$f18
    3d78:	46803220 	cvt.s.w	$f8,$f6
    3d7c:	468091a0 	cvt.s.w	$f6,$f18
    3d80:	46044280 	add.s	$f10,$f8,$f4
    3d84:	4600540d 	trunc.w.s	$f16,$f10
    3d88:	44088000 	mfc1	t0,$f16
    3d8c:	00000000 	nop
    3d90:	a4680002 	sh	t0,2(v1)
    3d94:	c44803cc 	lwc1	$f8,972(v0)
    3d98:	00001025 	move	v0,zero
    3d9c:	46083100 	add.s	$f4,$f6,$f8
    3da0:	4600228d 	trunc.w.s	$f10,$f4
    3da4:	440b5000 	mfc1	t3,$f10
    3da8:	03e00008 	jr	ra
    3dac:	a46b0004 	sh	t3,4(v1)

00003db0 <L809143F0>:
    3db0:	8fa30010 	lw	v1,16(sp)
    3db4:	8fa20014 	lw	v0,20(sp)
    3db8:	846c0002 	lh	t4,2(v1)
    3dbc:	c45003c8 	lwc1	$f16,968(v0)
    3dc0:	c45203d0 	lwc1	$f18,976(v0)
    3dc4:	448c4000 	mtc1	t4,$f8
    3dc8:	846f0004 	lh	t7,4(v1)
    3dcc:	46128180 	add.s	$f6,$f16,$f18
    3dd0:	448f9000 	mtc1	t7,$f18
    3dd4:	46804120 	cvt.s.w	$f4,$f8
    3dd8:	46809220 	cvt.s.w	$f8,$f18
    3ddc:	46062280 	add.s	$f10,$f4,$f6
    3de0:	4600540d 	trunc.w.s	$f16,$f10
    3de4:	440e8000 	mfc1	t6,$f16
    3de8:	00000000 	nop
    3dec:	a46e0002 	sh	t6,2(v1)
    3df0:	c44403cc 	lwc1	$f4,972(v0)
    3df4:	00001025 	move	v0,zero
    3df8:	46044180 	add.s	$f6,$f8,$f4
    3dfc:	4600328d 	trunc.w.s	$f10,$f6
    3e00:	44195000 	mfc1	t9,$f10
    3e04:	03e00008 	jr	ra
    3e08:	a4790004 	sh	t9,4(v1)

00003e0c <L8091444C>:
    3e0c:	8fa30010 	lw	v1,16(sp)
    3e10:	8fa20014 	lw	v0,20(sp)
    3e14:	84680002 	lh	t0,2(v1)
    3e18:	c45003c8 	lwc1	$f16,968(v0)
    3e1c:	c45203d0 	lwc1	$f18,976(v0)
    3e20:	44882000 	mtc1	t0,$f4
    3e24:	846b0004 	lh	t3,4(v1)
    3e28:	46128200 	add.s	$f8,$f16,$f18
    3e2c:	448b9000 	mtc1	t3,$f18
    3e30:	468021a0 	cvt.s.w	$f6,$f4
    3e34:	46809120 	cvt.s.w	$f4,$f18
    3e38:	46083280 	add.s	$f10,$f6,$f8
    3e3c:	4600540d 	trunc.w.s	$f16,$f10
    3e40:	440a8000 	mfc1	t2,$f16
    3e44:	00000000 	nop
    3e48:	a46a0002 	sh	t2,2(v1)
    3e4c:	c44603cc 	lwc1	$f6,972(v0)
    3e50:	00001025 	move	v0,zero
    3e54:	46062200 	add.s	$f8,$f4,$f6
    3e58:	4600428d 	trunc.w.s	$f10,$f8
    3e5c:	440d5000 	mfc1	t5,$f10
    3e60:	03e00008 	jr	ra
    3e64:	a46d0004 	sh	t5,4(v1)

00003e68 <L809144A8>:
    3e68:	8fa30010 	lw	v1,16(sp)
    3e6c:	8fa20014 	lw	v0,20(sp)
    3e70:	846e0002 	lh	t6,2(v1)
    3e74:	c45003c8 	lwc1	$f16,968(v0)
    3e78:	c45203d0 	lwc1	$f18,976(v0)
    3e7c:	448e3000 	mtc1	t6,$f6
    3e80:	84790004 	lh	t9,4(v1)
    3e84:	46128101 	sub.s	$f4,$f16,$f18
    3e88:	44999000 	mtc1	t9,$f18
    3e8c:	46803220 	cvt.s.w	$f8,$f6
    3e90:	468091a0 	cvt.s.w	$f6,$f18
    3e94:	46044280 	add.s	$f10,$f8,$f4
    3e98:	4600540d 	trunc.w.s	$f16,$f10
    3e9c:	44188000 	mfc1	t8,$f16
    3ea0:	00000000 	nop
    3ea4:	a4780002 	sh	t8,2(v1)
    3ea8:	c44803cc 	lwc1	$f8,972(v0)
    3eac:	00001025 	move	v0,zero
    3eb0:	46083100 	add.s	$f4,$f6,$f8
    3eb4:	4600228d 	trunc.w.s	$f10,$f4
    3eb8:	44095000 	mfc1	t1,$f10
    3ebc:	03e00008 	jr	ra
    3ec0:	a4690004 	sh	t1,4(v1)

00003ec4 <L80914504>:
    3ec4:	8fa30010 	lw	v1,16(sp)
    3ec8:	8fa20014 	lw	v0,20(sp)
    3ecc:	846a0002 	lh	t2,2(v1)
    3ed0:	c45003c8 	lwc1	$f16,968(v0)
    3ed4:	c45203d0 	lwc1	$f18,976(v0)
    3ed8:	448a4000 	mtc1	t2,$f8
    3edc:	846d0004 	lh	t5,4(v1)
    3ee0:	46128181 	sub.s	$f6,$f16,$f18
    3ee4:	448d9000 	mtc1	t5,$f18
    3ee8:	46804120 	cvt.s.w	$f4,$f8
    3eec:	46809220 	cvt.s.w	$f8,$f18
    3ef0:	46062280 	add.s	$f10,$f4,$f6
    3ef4:	4600540d 	trunc.w.s	$f16,$f10
    3ef8:	440c8000 	mfc1	t4,$f16
    3efc:	00000000 	nop
    3f00:	a46c0002 	sh	t4,2(v1)
    3f04:	c44403cc 	lwc1	$f4,972(v0)
    3f08:	00001025 	move	v0,zero
    3f0c:	46044180 	add.s	$f6,$f8,$f4
    3f10:	4600328d 	trunc.w.s	$f10,$f6
    3f14:	440f5000 	mfc1	t7,$f10
    3f18:	03e00008 	jr	ra
    3f1c:	a46f0004 	sh	t7,4(v1)

00003f20 <L80914560>:
    3f20:	8fa30010 	lw	v1,16(sp)
    3f24:	8fa20014 	lw	v0,20(sp)
    3f28:	84780002 	lh	t8,2(v1)
    3f2c:	c45003c8 	lwc1	$f16,968(v0)
    3f30:	c45203d0 	lwc1	$f18,976(v0)
    3f34:	44982000 	mtc1	t8,$f4
    3f38:	84690004 	lh	t1,4(v1)
    3f3c:	46128201 	sub.s	$f8,$f16,$f18
    3f40:	44899000 	mtc1	t1,$f18
    3f44:	468021a0 	cvt.s.w	$f6,$f4
    3f48:	46809120 	cvt.s.w	$f4,$f18
    3f4c:	46083280 	add.s	$f10,$f6,$f8
    3f50:	4600540d 	trunc.w.s	$f16,$f10
    3f54:	44088000 	mfc1	t0,$f16
    3f58:	00000000 	nop
    3f5c:	a4680002 	sh	t0,2(v1)
    3f60:	c44603cc 	lwc1	$f6,972(v0)
    3f64:	00001025 	move	v0,zero
    3f68:	46062200 	add.s	$f8,$f4,$f6
    3f6c:	4600428d 	trunc.w.s	$f10,$f8
    3f70:	440b5000 	mfc1	t3,$f10
    3f74:	03e00008 	jr	ra
    3f78:	a46b0004 	sh	t3,4(v1)

00003f7c <L809145BC>:
    3f7c:	8fa30010 	lw	v1,16(sp)
    3f80:	8fa20014 	lw	v0,20(sp)
    3f84:	846c0002 	lh	t4,2(v1)
    3f88:	c44403d4 	lwc1	$f4,980(v0)
    3f8c:	846f0004 	lh	t7,4(v1)
    3f90:	448c8000 	mtc1	t4,$f16
    3f94:	448f5000 	mtc1	t7,$f10
    3f98:	468084a0 	cvt.s.w	$f18,$f16
    3f9c:	46805420 	cvt.s.w	$f16,$f10
    3fa0:	46049180 	add.s	$f6,$f18,$f4
    3fa4:	4600320d 	trunc.w.s	$f8,$f6
    3fa8:	440e4000 	mfc1	t6,$f8
    3fac:	00000000 	nop
    3fb0:	a46e0002 	sh	t6,2(v1)
    3fb4:	c45203d8 	lwc1	$f18,984(v0)
    3fb8:	00001025 	move	v0,zero
    3fbc:	46128100 	add.s	$f4,$f16,$f18
    3fc0:	4600218d 	trunc.w.s	$f6,$f4
    3fc4:	44193000 	mfc1	t9,$f6
    3fc8:	03e00008 	jr	ra
    3fcc:	a4790004 	sh	t9,4(v1)

00003fd0 <L80914610>:
    3fd0:	8fa30010 	lw	v1,16(sp)
    3fd4:	8fa20014 	lw	v0,20(sp)
    3fd8:	84680002 	lh	t0,2(v1)
    3fdc:	c45003d4 	lwc1	$f16,980(v0)
    3fe0:	846b0004 	lh	t3,4(v1)
    3fe4:	44884000 	mtc1	t0,$f8
    3fe8:	448b3000 	mtc1	t3,$f6
    3fec:	468042a0 	cvt.s.w	$f10,$f8
    3ff0:	46803220 	cvt.s.w	$f8,$f6
    3ff4:	46105480 	add.s	$f18,$f10,$f16
    3ff8:	4600910d 	trunc.w.s	$f4,$f18
    3ffc:	440a2000 	mfc1	t2,$f4
    4000:	00000000 	nop
    4004:	a46a0002 	sh	t2,2(v1)
    4008:	c44a03d8 	lwc1	$f10,984(v0)
    400c:	00001025 	move	v0,zero
    4010:	460a4400 	add.s	$f16,$f8,$f10
    4014:	4600848d 	trunc.w.s	$f18,$f16
    4018:	440d9000 	mfc1	t5,$f18
    401c:	03e00008 	jr	ra
    4020:	a46d0004 	sh	t5,4(v1)

00004024 <L80914664>:
    4024:	8fa20014 	lw	v0,20(sp)
    4028:	844e035e 	lh	t6,862(v0)
    402c:	51c00003 	beqzl	t6,403c <L80914678+0x4>
    4030:	8fa30010 	lw	v1,16(sp)
    4034:	acc00000 	sw	zero,0(a2)

00004038 <L80914678>:
    4038:	8fa30010 	lw	v1,16(sp)
    403c:	8fa20014 	lw	v0,20(sp)
    4040:	00057880 	sll	t7,a1,0x2
    4044:	84780002 	lh	t8,2(v1)
    4048:	004f2021 	addu	a0,v0,t7
    404c:	c4880454 	lwc1	$f8,1108(a0)
    4050:	44982000 	mtc1	t8,$f4
    4054:	84690004 	lh	t1,4(v1)
    4058:	468021a0 	cvt.s.w	$f6,$f4
    405c:	44899000 	mtc1	t1,$f18
    4060:	00000000 	nop
    4064:	46809120 	cvt.s.w	$f4,$f18
    4068:	46083280 	add.s	$f10,$f6,$f8
    406c:	4600540d 	trunc.w.s	$f16,$f10
    4070:	44088000 	mfc1	t0,$f16
    4074:	00000000 	nop
    4078:	a4680002 	sh	t0,2(v1)
    407c:	c48603dc 	lwc1	$f6,988(a0)
    4080:	46062200 	add.s	$f8,$f4,$f6
    4084:	4600428d 	trunc.w.s	$f10,$f8
    4088:	440b5000 	mfc1	t3,$f10
    408c:	00000000 	nop
    4090:	a46b0004 	sh	t3,4(v1)
    4094:	03e00008 	jr	ra
    4098:	00001025 	move	v0,zero

0000409c <func_809146DC>:
    409c:	27bdffe8 	addiu	sp,sp,-24
    40a0:	afa60020 	sw	a2,32(sp)
    40a4:	2401000e 	li	at,14
    40a8:	00a03025 	move	a2,a1
    40ac:	afbf0014 	sw	ra,20(sp)
    40b0:	afa40018 	sw	a0,24(sp)
    40b4:	afa5001c 	sw	a1,28(sp)
    40b8:	14a10009 	bne	a1,at,40e0 <func_809146DC+0x44>
    40bc:	afa70024 	sw	a3,36(sp)
    40c0:	8fa50028 	lw	a1,40(sp)
    40c4:	3c040000 	lui	a0,0x0
    40c8:	24840000 	addiu	a0,a0,0
    40cc:	afa6001c 	sw	a2,28(sp)
    40d0:	0c000000 	jal	0 <func_80910640>
    40d4:	24a5020c 	addiu	a1,a1,524
    40d8:	1000000a 	b	4104 <func_809146DC+0x68>
    40dc:	8fa6001c 	lw	a2,28(sp)
    40e0:	2401000d 	li	at,13
    40e4:	14c10007 	bne	a2,at,4104 <func_809146DC+0x68>
    40e8:	3c040000 	lui	a0,0x0
    40ec:	8fa50028 	lw	a1,40(sp)
    40f0:	24840000 	addiu	a0,a0,0
    40f4:	afa6001c 	sw	a2,28(sp)
    40f8:	0c000000 	jal	0 <func_80910640>
    40fc:	24a50200 	addiu	a1,a1,512
    4100:	8fa6001c 	lw	a2,28(sp)
    4104:	8fa20028 	lw	v0,40(sp)
    4108:	28c1001a 	slti	at,a2,26
    410c:	904e01c9 	lbu	t6,457(v0)
    4110:	15c00006 	bnez	t6,412c <func_809146DC+0x90>
    4114:	00000000 	nop
    4118:	8c580190 	lw	t8,400(v0)
    411c:	3c0f0000 	lui	t7,0x0
    4120:	25ef0000 	addiu	t7,t7,0
    4124:	55f8000b 	bnel	t7,t8,4154 <func_809146DC+0xb8>
    4128:	8fbf0014 	lw	ra,20(sp)
    412c:	10200008 	beqz	at,4150 <func_809146DC+0xb4>
    4130:	3c040000 	lui	a0,0x0
    4134:	0006c880 	sll	t9,a2,0x2
    4138:	0326c823 	subu	t9,t9,a2
    413c:	0019c880 	sll	t9,t9,0x2
    4140:	00592821 	addu	a1,v0,t9
    4144:	24a5020c 	addiu	a1,a1,524
    4148:	0c000000 	jal	0 <func_80910640>
    414c:	24840000 	addiu	a0,a0,0
    4150:	8fbf0014 	lw	ra,20(sp)
    4154:	27bd0018 	addiu	sp,sp,24
    4158:	03e00008 	jr	ra
    415c:	00000000 	nop

00004160 <func_809147A0>:
    4160:	27bdffe8 	addiu	sp,sp,-24
    4164:	afbf0014 	sw	ra,20(sp)
    4168:	0c000000 	jal	0 <func_80910640>
    416c:	24050020 	li	a1,32
    4170:	3c0ee700 	lui	t6,0xe700
    4174:	00402825 	move	a1,v0
    4178:	ac4e0000 	sw	t6,0(v0)
    417c:	24440008 	addiu	a0,v0,8
    4180:	ac400004 	sw	zero,4(v0)
    4184:	00801025 	move	v0,a0
    4188:	3c0fe200 	lui	t7,0xe200
    418c:	3c18c811 	lui	t8,0xc811
    4190:	37183078 	ori	t8,t8,0x3078
    4194:	35ef001c 	ori	t7,t7,0x1c
    4198:	ac4f0000 	sw	t7,0(v0)
    419c:	ac580004 	sw	t8,4(v0)
    41a0:	24840008 	addiu	a0,a0,8
    41a4:	00801025 	move	v0,a0
    41a8:	3c19d9ff 	lui	t9,0xd9ff
    41ac:	3739fbff 	ori	t9,t9,0xfbff
    41b0:	ac590000 	sw	t9,0(v0)
    41b4:	ac400004 	sw	zero,4(v0)
    41b8:	3c08df00 	lui	t0,0xdf00
    41bc:	ac880008 	sw	t0,8(a0)
    41c0:	ac80000c 	sw	zero,12(a0)
    41c4:	8fbf0014 	lw	ra,20(sp)
    41c8:	24840008 	addiu	a0,a0,8
    41cc:	27bd0018 	addiu	sp,sp,24
    41d0:	03e00008 	jr	ra
    41d4:	00a01025 	move	v0,a1

000041d8 <func_80914818>:
    41d8:	27bdffe8 	addiu	sp,sp,-24
    41dc:	afbf0014 	sw	ra,20(sp)
    41e0:	0c000000 	jal	0 <func_80910640>
    41e4:	24050008 	li	a1,8
    41e8:	3c0edf00 	lui	t6,0xdf00
    41ec:	ac4e0000 	sw	t6,0(v0)
    41f0:	ac400004 	sw	zero,4(v0)
    41f4:	8fbf0014 	lw	ra,20(sp)
    41f8:	27bd0018 	addiu	sp,sp,24
    41fc:	03e00008 	jr	ra
    4200:	00000000 	nop

00004204 <BossGanondrof_Draw>:
    4204:	27bdffa0 	addiu	sp,sp,-96
    4208:	afbf002c 	sw	ra,44(sp)
    420c:	afb10028 	sw	s1,40(sp)
    4210:	afb00024 	sw	s0,36(sp)
    4214:	afa50064 	sw	a1,100(sp)
    4218:	8ca50000 	lw	a1,0(a1)
    421c:	00808825 	move	s1,a0
    4220:	3c060000 	lui	a2,0x0
    4224:	24c60000 	addiu	a2,a2,0
    4228:	27a40040 	addiu	a0,sp,64
    422c:	24070e84 	li	a3,3716
    4230:	0c000000 	jal	0 <func_80910640>
    4234:	00a08025 	move	s0,a1
    4238:	3c040000 	lui	a0,0x0
    423c:	24840000 	addiu	a0,a0,0
    4240:	0c000000 	jal	0 <func_80910640>
    4244:	8e250130 	lw	a1,304(s1)
    4248:	3c040000 	lui	a0,0x0
    424c:	24840000 	addiu	a0,a0,0
    4250:	0c000000 	jal	0 <func_80910640>
    4254:	96250110 	lhu	a1,272(s1)
    4258:	922f01c9 	lbu	t7,457(s1)
    425c:	8e22011c 	lw	v0,284(s1)
    4260:	55e0000f 	bnezl	t7,42a0 <BossGanondrof_Draw+0x9c>
    4264:	c6320028 	lwc1	$f18,40(s1)
    4268:	845801e0 	lh	t8,480(v0)
    426c:	3c010000 	lui	at,0x0
    4270:	c4280000 	lwc1	$f8,0(at)
    4274:	44982000 	mtc1	t8,$f4
    4278:	3c014700 	lui	at,0x4700
    427c:	44818000 	mtc1	at,$f16
    4280:	468021a0 	cvt.s.w	$f6,$f4
    4284:	afa20054 	sw	v0,84(sp)
    4288:	24050001 	li	a1,1
    428c:	46083282 	mul.s	$f10,$f6,$f8
    4290:	0c000000 	jal	0 <func_80910640>
    4294:	46105303 	div.s	$f12,$f10,$f16
    4298:	8fa20054 	lw	v0,84(sp)
    429c:	c6320028 	lwc1	$f18,40(s1)
    42a0:	3c040000 	lui	a0,0x0
    42a4:	24840000 	addiu	a0,a0,0
    42a8:	46009121 	cvt.d.s	$f4,$f18
    42ac:	afa20054 	sw	v0,84(sp)
    42b0:	44072000 	mfc1	a3,$f4
    42b4:	44062800 	mfc1	a2,$f5
    42b8:	0c000000 	jal	0 <func_80910640>
    42bc:	00000000 	nop
    42c0:	8fb90064 	lw	t9,100(sp)
    42c4:	0c000000 	jal	0 <func_80910640>
    42c8:	8f240000 	lw	a0,0(t9)
    42cc:	862801a0 	lh	t0,416(s1)
    42d0:	8fa20054 	lw	v0,84(sp)
    42d4:	24050001 	li	a1,1
    42d8:	31090004 	andi	t1,t0,0x4
    42dc:	5120000e 	beqzl	t1,4318 <BossGanondrof_Draw+0x114>
    42e0:	444cf800 	cfc1	t4,$31
    42e4:	8e0402c0 	lw	a0,704(s0)
    42e8:	240a0384 	li	t2,900
    42ec:	240b044b 	li	t3,1099
    42f0:	afab0018 	sw	t3,24(sp)
    42f4:	afaa0014 	sw	t2,20(sp)
    42f8:	afa00010 	sw	zero,16(sp)
    42fc:	240500ff 	li	a1,255
    4300:	24060032 	li	a2,50
    4304:	0c000000 	jal	0 <func_80910640>
    4308:	00003825 	move	a3,zero
    430c:	10000076 	b	44e8 <BossGanondrof_Draw+0x2e4>
    4310:	ae0202c0 	sw	v0,704(s0)
    4314:	444cf800 	cfc1	t4,$31
    4318:	44c5f800 	ctc1	a1,$31
    431c:	c44601e8 	lwc1	$f6,488(v0)
    4320:	8e0402c0 	lw	a0,704(s0)
    4324:	3c014f00 	lui	at,0x4f00
    4328:	46003224 	cvt.w.s	$f8,$f6
    432c:	4445f800 	cfc1	a1,$31
    4330:	00000000 	nop
    4334:	30a50078 	andi	a1,a1,0x78
    4338:	50a00013 	beqzl	a1,4388 <BossGanondrof_Draw+0x184>
    433c:	44054000 	mfc1	a1,$f8
    4340:	44814000 	mtc1	at,$f8
    4344:	24050001 	li	a1,1
    4348:	46083201 	sub.s	$f8,$f6,$f8
    434c:	44c5f800 	ctc1	a1,$31
    4350:	00000000 	nop
    4354:	46004224 	cvt.w.s	$f8,$f8
    4358:	4445f800 	cfc1	a1,$31
    435c:	00000000 	nop
    4360:	30a50078 	andi	a1,a1,0x78
    4364:	14a00005 	bnez	a1,437c <BossGanondrof_Draw+0x178>
    4368:	00000000 	nop
    436c:	44054000 	mfc1	a1,$f8
    4370:	3c018000 	lui	at,0x8000
    4374:	10000007 	b	4394 <BossGanondrof_Draw+0x190>
    4378:	00a12825 	or	a1,a1,at
    437c:	10000005 	b	4394 <BossGanondrof_Draw+0x190>
    4380:	2405ffff 	li	a1,-1
    4384:	44054000 	mfc1	a1,$f8
    4388:	00000000 	nop
    438c:	04a0fffb 	bltz	a1,437c <BossGanondrof_Draw+0x178>
    4390:	00000000 	nop
    4394:	44ccf800 	ctc1	t4,$31
    4398:	24060001 	li	a2,1
    439c:	c44a01ec 	lwc1	$f10,492(v0)
    43a0:	3c014f00 	lui	at,0x4f00
    43a4:	444df800 	cfc1	t5,$31
    43a8:	44c6f800 	ctc1	a2,$31
    43ac:	00000000 	nop
    43b0:	46005424 	cvt.w.s	$f16,$f10
    43b4:	4446f800 	cfc1	a2,$31
    43b8:	00000000 	nop
    43bc:	30c60078 	andi	a2,a2,0x78
    43c0:	50c00013 	beqzl	a2,4410 <BossGanondrof_Draw+0x20c>
    43c4:	44068000 	mfc1	a2,$f16
    43c8:	44818000 	mtc1	at,$f16
    43cc:	24060001 	li	a2,1
    43d0:	46105401 	sub.s	$f16,$f10,$f16
    43d4:	44c6f800 	ctc1	a2,$31
    43d8:	00000000 	nop
    43dc:	46008424 	cvt.w.s	$f16,$f16
    43e0:	4446f800 	cfc1	a2,$31
    43e4:	00000000 	nop
    43e8:	30c60078 	andi	a2,a2,0x78
    43ec:	14c00005 	bnez	a2,4404 <BossGanondrof_Draw+0x200>
    43f0:	00000000 	nop
    43f4:	44068000 	mfc1	a2,$f16
    43f8:	3c018000 	lui	at,0x8000
    43fc:	10000007 	b	441c <BossGanondrof_Draw+0x218>
    4400:	00c13025 	or	a2,a2,at
    4404:	10000005 	b	441c <BossGanondrof_Draw+0x218>
    4408:	2406ffff 	li	a2,-1
    440c:	44068000 	mfc1	a2,$f16
    4410:	00000000 	nop
    4414:	04c0fffb 	bltz	a2,4404 <BossGanondrof_Draw+0x200>
    4418:	00000000 	nop
    441c:	44cdf800 	ctc1	t5,$31
    4420:	24070001 	li	a3,1
    4424:	c45201f0 	lwc1	$f18,496(v0)
    4428:	3c014f00 	lui	at,0x4f00
    442c:	444ef800 	cfc1	t6,$31
    4430:	44c7f800 	ctc1	a3,$31
    4434:	00000000 	nop
    4438:	46009124 	cvt.w.s	$f4,$f18
    443c:	4447f800 	cfc1	a3,$31
    4440:	00000000 	nop
    4444:	30e70078 	andi	a3,a3,0x78
    4448:	50e00013 	beqzl	a3,4498 <BossGanondrof_Draw+0x294>
    444c:	44072000 	mfc1	a3,$f4
    4450:	44812000 	mtc1	at,$f4
    4454:	24070001 	li	a3,1
    4458:	46049101 	sub.s	$f4,$f18,$f4
    445c:	44c7f800 	ctc1	a3,$31
    4460:	00000000 	nop
    4464:	46002124 	cvt.w.s	$f4,$f4
    4468:	4447f800 	cfc1	a3,$31
    446c:	00000000 	nop
    4470:	30e70078 	andi	a3,a3,0x78
    4474:	14e00005 	bnez	a3,448c <BossGanondrof_Draw+0x288>
    4478:	00000000 	nop
    447c:	44072000 	mfc1	a3,$f4
    4480:	3c018000 	lui	at,0x8000
    4484:	10000007 	b	44a4 <BossGanondrof_Draw+0x2a0>
    4488:	00e13825 	or	a3,a3,at
    448c:	10000005 	b	44a4 <BossGanondrof_Draw+0x2a0>
    4490:	2407ffff 	li	a3,-1
    4494:	44072000 	mfc1	a3,$f4
    4498:	00000000 	nop
    449c:	04e0fffb 	bltz	a3,448c <BossGanondrof_Draw+0x288>
    44a0:	00000000 	nop
    44a4:	afa00010 	sw	zero,16(sp)
    44a8:	c44601f4 	lwc1	$f6,500(v0)
    44ac:	44cef800 	ctc1	t6,$31
    44b0:	00000000 	nop
    44b4:	4600320d 	trunc.w.s	$f8,$f6
    44b8:	44184000 	mfc1	t8,$f8
    44bc:	00000000 	nop
    44c0:	271903e3 	addiu	t9,t8,995
    44c4:	afb90014 	sw	t9,20(sp)
    44c8:	c44a01f8 	lwc1	$f10,504(v0)
    44cc:	4600540d 	trunc.w.s	$f16,$f10
    44d0:	44098000 	mfc1	t1,$f16
    44d4:	00000000 	nop
    44d8:	252a03e8 	addiu	t2,t1,1000
    44dc:	0c000000 	jal	0 <func_80910640>
    44e0:	afaa0018 	sw	t2,24(sp)
    44e4:	ae0202c0 	sw	v0,704(s0)
    44e8:	3c040000 	lui	a0,0x0
    44ec:	0c000000 	jal	0 <func_80910640>
    44f0:	24840000 	addiu	a0,a0,0
    44f4:	c63201d4 	lwc1	$f18,468(s1)
    44f8:	3c040000 	lui	a0,0x0
    44fc:	24840000 	addiu	a0,a0,0
    4500:	4600910d 	trunc.w.s	$f4,$f18
    4504:	44052000 	mfc1	a1,$f4
    4508:	00000000 	nop
    450c:	00052c00 	sll	a1,a1,0x10
    4510:	0c000000 	jal	0 <func_80910640>
    4514:	00052c03 	sra	a1,a1,0x10
    4518:	8e0202c0 	lw	v0,704(s0)
    451c:	3c0dfb00 	lui	t5,0xfb00
    4520:	244c0008 	addiu	t4,v0,8
    4524:	ae0c02c0 	sw	t4,704(s0)
    4528:	ac4d0000 	sw	t5,0(v0)
    452c:	c62601d4 	lwc1	$f6,468(s1)
    4530:	c62a01e0 	lwc1	$f10,480(s1)
    4534:	4600320d 	trunc.w.s	$f8,$f6
    4538:	4600540d 	trunc.w.s	$f16,$f10
    453c:	44034000 	mfc1	v1,$f8
    4540:	44088000 	mfc1	t0,$f16
    4544:	00031c00 	sll	v1,v1,0x10
    4548:	00031c03 	sra	v1,v1,0x10
    454c:	306300ff 	andi	v1,v1,0xff
    4550:	00035600 	sll	t2,v1,0x18
    4554:	310900ff 	andi	t1,t0,0xff
    4558:	012a5825 	or	t3,t1,t2
    455c:	00036400 	sll	t4,v1,0x10
    4560:	016c6825 	or	t5,t3,t4
    4564:	00037200 	sll	t6,v1,0x8
    4568:	01ae7825 	or	t7,t5,t6
    456c:	ac4f0004 	sw	t7,4(v0)
    4570:	863801b0 	lh	t8,432(s1)
    4574:	5300000f 	beqzl	t8,45b4 <BossGanondrof_Draw+0x3b0>
    4578:	8e0202c0 	lw	v0,704(s0)
    457c:	8e0202c0 	lw	v0,704(s0)
    4580:	3c08db06 	lui	t0,0xdb06
    4584:	35080020 	ori	t0,t0,0x20
    4588:	24590008 	addiu	t9,v0,8
    458c:	ae1902c0 	sw	t9,704(s0)
    4590:	ac480000 	sw	t0,0(v0)
    4594:	8fa90064 	lw	t1,100(sp)
    4598:	8d240000 	lw	a0,0(t1)
    459c:	0c000000 	jal	0 <func_80910640>
    45a0:	afa20038 	sw	v0,56(sp)
    45a4:	8fa30038 	lw	v1,56(sp)
    45a8:	1000000d 	b	45e0 <BossGanondrof_Draw+0x3dc>
    45ac:	ac620004 	sw	v0,4(v1)
    45b0:	8e0202c0 	lw	v0,704(s0)
    45b4:	3c0bdb06 	lui	t3,0xdb06
    45b8:	356b0020 	ori	t3,t3,0x20
    45bc:	244a0008 	addiu	t2,v0,8
    45c0:	ae0a02c0 	sw	t2,704(s0)
    45c4:	ac4b0000 	sw	t3,0(v0)
    45c8:	8fac0064 	lw	t4,100(sp)
    45cc:	8d840000 	lw	a0,0(t4)
    45d0:	0c000000 	jal	0 <func_80910640>
    45d4:	afa20034 	sw	v0,52(sp)
    45d8:	8fa30034 	lw	v1,52(sp)
    45dc:	ac620004 	sw	v0,4(v1)
    45e0:	3c0d0000 	lui	t5,0x0
    45e4:	25ad0000 	addiu	t5,t5,0
    45e8:	8e250150 	lw	a1,336(s1)
    45ec:	8e26016c 	lw	a2,364(s1)
    45f0:	3c070000 	lui	a3,0x0
    45f4:	24e70000 	addiu	a3,a3,0
    45f8:	afb10014 	sw	s1,20(sp)
    45fc:	afad0010 	sw	t5,16(sp)
    4600:	0c000000 	jal	0 <func_80910640>
    4604:	8fa40064 	lw	a0,100(sp)
    4608:	3c040000 	lui	a0,0x0
    460c:	0c000000 	jal	0 <func_80910640>
    4610:	24840000 	addiu	a0,a0,0
    4614:	8fa40064 	lw	a0,100(sp)
    4618:	0c000000 	jal	0 <func_80910640>
    461c:	8e0502c0 	lw	a1,704(s0)
    4620:	ae0202c0 	sw	v0,704(s0)
    4624:	8fae0064 	lw	t6,100(sp)
    4628:	3c060000 	lui	a2,0x0
    462c:	24c60000 	addiu	a2,a2,0
    4630:	27a40040 	addiu	a0,sp,64
    4634:	24070ee6 	li	a3,3814
    4638:	0c000000 	jal	0 <func_80910640>
    463c:	8dc50000 	lw	a1,0(t6)
    4640:	3c040000 	lui	a0,0x0
    4644:	24840000 	addiu	a0,a0,0
    4648:	0c000000 	jal	0 <func_80910640>
    464c:	8625001c 	lh	a1,28(s1)
    4650:	8fbf002c 	lw	ra,44(sp)
    4654:	8fb00024 	lw	s0,36(sp)
    4658:	8fb10028 	lw	s1,40(sp)
    465c:	03e00008 	jr	ra
    4660:	27bd0060 	addiu	sp,sp,96
	...
