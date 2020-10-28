
build/src/code/game.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <GameState_FaultPrint>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afb40028 	sw	s4,40(sp)
       8:	3c140000 	lui	s4,0x0
       c:	26940000 	addiu	s4,s4,0
      10:	afbf002c 	sw	ra,44(sp)
      14:	3c040000 	lui	a0,0x0
      18:	afb30024 	sw	s3,36(sp)
      1c:	afb20020 	sw	s2,32(sp)
      20:	afb1001c 	sw	s1,28(sp)
      24:	afb00018 	sw	s0,24(sp)
      28:	24840000 	addiu	a0,a0,0
      2c:	0c000000 	jal	0 <GameState_FaultPrint>
      30:	96850000 	lhu	a1,0(s4)
      34:	3c060000 	lui	a2,0x0
      38:	24c60014 	addiu	a2,a2,20
      3c:	24040078 	li	a0,120
      40:	240500b4 	li	a1,180
      44:	0c000000 	jal	0 <GameState_FaultPrint>
      48:	96870000 	lhu	a3,0(s4)
      4c:	3c120000 	lui	s2,0x0
      50:	3c110000 	lui	s1,0x0
      54:	2631001c 	addiu	s1,s1,28
      58:	26520000 	addiu	s2,s2,0
      5c:	00008025 	move	s0,zero
      60:	24130011 	li	s3,17
      64:	968e0000 	lhu	t6,0(s4)
      68:	240f0001 	li	t7,1
      6c:	020fc004 	sllv	t8,t7,s0
      70:	01d8c824 	and	t9,t6,t8
      74:	13200007 	beqz	t9,94 <GameState_FaultPrint+0x94>
      78:	001020c0 	sll	a0,s0,0x3
      7c:	02504021 	addu	t0,s2,s0
      80:	91070000 	lbu	a3,0(t0)
      84:	24840078 	addiu	a0,a0,120
      88:	240500be 	li	a1,190
      8c:	0c000000 	jal	0 <GameState_FaultPrint>
      90:	02203025 	move	a2,s1
      94:	26100001 	addiu	s0,s0,1
      98:	5613fff3 	bnel	s0,s3,68 <GameState_FaultPrint+0x68>
      9c:	968e0000 	lhu	t6,0(s4)
      a0:	8fbf002c 	lw	ra,44(sp)
      a4:	8fb00018 	lw	s0,24(sp)
      a8:	8fb1001c 	lw	s1,28(sp)
      ac:	8fb20020 	lw	s2,32(sp)
      b0:	8fb30024 	lw	s3,36(sp)
      b4:	8fb40028 	lw	s4,40(sp)
      b8:	03e00008 	jr	ra
      bc:	27bd0030 	addiu	sp,sp,48

000000c0 <GameState_SetFBFilter>:
      c0:	27bdffd8 	addiu	sp,sp,-40
      c4:	afbf0014 	sw	ra,20(sp)
      c8:	afa40028 	sw	a0,40(sp)
      cc:	8c8f0000 	lw	t7,0(a0)
      d0:	3c020000 	lui	v0,0x0
      d4:	8c420000 	lw	v0,0(v0)
      d8:	afaf0024 	sw	t7,36(sp)
      dc:	84430174 	lh	v1,372(v0)
      e0:	18600011 	blez	v1,128 <GameState_SetFBFilter+0x68>
      e4:	28610005 	slti	at,v1,5
      e8:	1020000f 	beqz	at,128 <GameState_SetFBFilter+0x68>
      ec:	3c040000 	lui	a0,0x0
      f0:	24840000 	addiu	a0,a0,0
      f4:	ac830000 	sw	v1,0(a0)
      f8:	84580176 	lh	t8,374(v0)
      fc:	27a50024 	addiu	a1,sp,36
     100:	a0980008 	sb	t8,8(a0)
     104:	84590178 	lh	t9,376(v0)
     108:	a0990009 	sb	t9,9(a0)
     10c:	8448017a 	lh	t0,378(v0)
     110:	a088000a 	sb	t0,10(a0)
     114:	8449017c 	lh	t1,380(v0)
     118:	0c000000 	jal	0 <GameState_FaultPrint>
     11c:	a089000b 	sb	t1,11(a0)
     120:	10000036 	b	1fc <GameState_SetFBFilter+0x13c>
     124:	8fb90024 	lw	t9,36(sp)
     128:	24010005 	li	at,5
     12c:	10610003 	beq	v1,at,13c <GameState_SetFBFilter+0x7c>
     130:	3c040000 	lui	a0,0x0
     134:	24010006 	li	at,6
     138:	14610018 	bne	v1,at,19c <GameState_SetFBFilter+0xdc>
     13c:	386a0006 	xori	t2,v1,0x6
     140:	24840000 	addiu	a0,a0,0
     144:	2d4a0001 	sltiu	t2,t2,1
     148:	ac8a0000 	sw	t2,0(a0)
     14c:	844b0176 	lh	t3,374(v0)
     150:	27a50024 	addiu	a1,sp,36
     154:	a08b0008 	sb	t3,8(a0)
     158:	844c0178 	lh	t4,376(v0)
     15c:	a08c0009 	sb	t4,9(a0)
     160:	844d017a 	lh	t5,378(v0)
     164:	a08d000a 	sb	t5,10(a0)
     168:	844e017c 	lh	t6,380(v0)
     16c:	a08e000b 	sb	t6,11(a0)
     170:	844f017e 	lh	t7,382(v0)
     174:	a08f000c 	sb	t7,12(a0)
     178:	84580180 	lh	t8,384(v0)
     17c:	a098000d 	sb	t8,13(a0)
     180:	84590182 	lh	t9,386(v0)
     184:	a099000e 	sb	t9,14(a0)
     188:	8448017c 	lh	t0,380(v0)
     18c:	0c000000 	jal	0 <GameState_FaultPrint>
     190:	a088000f 	sb	t0,15(a0)
     194:	10000019 	b	1fc <GameState_SetFBFilter+0x13c>
     198:	8fb90024 	lw	t9,36(sp)
     19c:	24010007 	li	at,7
     1a0:	14610015 	bne	v1,at,1f8 <GameState_SetFBFilter+0x138>
     1a4:	3c040000 	lui	a0,0x0
     1a8:	24840000 	addiu	a0,a0,0
     1ac:	ac800000 	sw	zero,0(a0)
     1b0:	84490176 	lh	t1,374(v0)
     1b4:	27a50024 	addiu	a1,sp,36
     1b8:	a0890008 	sb	t1,8(a0)
     1bc:	844a0178 	lh	t2,376(v0)
     1c0:	a08a0009 	sb	t2,9(a0)
     1c4:	844b017a 	lh	t3,378(v0)
     1c8:	a08b000a 	sb	t3,10(a0)
     1cc:	844c017c 	lh	t4,380(v0)
     1d0:	a08c000b 	sb	t4,11(a0)
     1d4:	844d017e 	lh	t5,382(v0)
     1d8:	a08d000c 	sb	t5,12(a0)
     1dc:	844e0180 	lh	t6,384(v0)
     1e0:	a08e000d 	sb	t6,13(a0)
     1e4:	844f0182 	lh	t7,386(v0)
     1e8:	a08f000e 	sb	t7,14(a0)
     1ec:	8458017c 	lh	t8,380(v0)
     1f0:	0c000000 	jal	0 <GameState_FaultPrint>
     1f4:	a098000f 	sb	t8,15(a0)
     1f8:	8fb90024 	lw	t9,36(sp)
     1fc:	8fa80028 	lw	t0,40(sp)
     200:	ad190000 	sw	t9,0(t0)
     204:	8fbf0014 	lw	ra,20(sp)
     208:	27bd0028 	addiu	sp,sp,40
     20c:	03e00008 	jr	ra
     210:	00000000 	nop

00000214 <func_800C4344>:
     214:	3c060000 	lui	a2,0x0
     218:	24c60000 	addiu	a2,a2,0
     21c:	8cc30000 	lw	v1,0(a2)
     220:	27bdffe8 	addiu	sp,sp,-24
     224:	afbf0014 	sw	ra,20(sp)
     228:	afa40018 	sw	a0,24(sp)
     22c:	84621074 	lh	v0,4212(v1)
     230:	24010014 	li	at,20
     234:	54410006 	bnel	v0,at,250 <func_800C4344+0x3c>
     238:	2401000c 	li	at,12
     23c:	846e1078 	lh	t6,4216(v1)
     240:	3c010000 	lui	at,0x0
     244:	ac2e0000 	sw	t6,0(at)
     248:	84621074 	lh	v0,4212(v1)
     24c:	2401000c 	li	at,12
     250:	14410034 	bne	v0,at,324 <func_800C4344+0x110>
     254:	8faf0018 	lw	t7,24(sp)
     258:	84621076 	lh	v0,4214(v1)
     25c:	00003825 	move	a3,zero
     260:	2c410004 	sltiu	at,v0,4
     264:	10200003 	beqz	at,274 <func_800C4344+0x60>
     268:	00000000 	nop
     26c:	10000001 	b	274 <func_800C4344+0x60>
     270:	00403825 	move	a3,v0
     274:	0007c080 	sll	t8,a3,0x2
     278:	0307c023 	subu	t8,t8,a3
     27c:	0018c0c0 	sll	t8,t8,0x3
     280:	01f81021 	addu	v0,t7,t8
     284:	94590014 	lhu	t9,20(v0)
     288:	94681078 	lhu	t0,4216(v1)
     28c:	a479107a 	sh	t9,4218(v1)
     290:	8cca0000 	lw	t2,0(a2)
     294:	94490020 	lhu	t1,32(v0)
     298:	01002827 	nor	a1,t0,zero
     29c:	a549107c 	sh	t1,4220(t2)
     2a0:	8ccc0000 	lw	t4,0(a2)
     2a4:	804b0028 	lb	t3,40(v0)
     2a8:	a58b107e 	sh	t3,4222(t4)
     2ac:	8cce0000 	lw	t6,0(a2)
     2b0:	804d0029 	lb	t5,41(v0)
     2b4:	a5cd1080 	sh	t5,4224(t6)
     2b8:	8cd80000 	lw	t8,0(a2)
     2bc:	804f0028 	lb	t7,40(v0)
     2c0:	a70f1082 	sh	t7,4226(t8)
     2c4:	8cc90000 	lw	t1,0(a2)
     2c8:	80590029 	lb	t9,41(v0)
     2cc:	a5391084 	sh	t9,4228(t1)
     2d0:	8ccb0000 	lw	t3,0(a2)
     2d4:	804a0016 	lb	t2,22(v0)
     2d8:	a56a1086 	sh	t2,4230(t3)
     2dc:	8ccd0000 	lw	t5,0(a2)
     2e0:	804c0017 	lb	t4,23(v0)
     2e4:	a5ac1088 	sh	t4,4232(t5)
     2e8:	944e0014 	lhu	t6,20(v0)
     2ec:	8cd80000 	lw	t8,0(a2)
     2f0:	010e7826 	xor	t7,t0,t6
     2f4:	2def0001 	sltiu	t7,t7,1
     2f8:	a70f108e 	sh	t7,4238(t8)
     2fc:	94590014 	lhu	t9,20(v0)
     300:	8ccb0000 	lw	t3,0(a2)
     304:	03254827 	nor	t1,t9,a1
     308:	2d2a0001 	sltiu	t2,t1,1
     30c:	a56a1090 	sh	t2,4240(t3)
     310:	944c0020 	lhu	t4,32(v0)
     314:	8ccf0000 	lw	t7,0(a2)
     318:	01856827 	nor	t5,t4,a1
     31c:	2dae0001 	sltiu	t6,t5,1
     320:	a5ee1092 	sh	t6,4242(t7)
     324:	3c180000 	lui	t8,0x0
     328:	8f180000 	lw	t8,0(t8)
     32c:	8fa40018 	lw	a0,24(sp)
     330:	53000006 	beqzl	t8,34c <func_800C4344+0x138>
     334:	8cc30000 	lw	v1,0(a2)
     338:	0c000000 	jal	0 <GameState_FaultPrint>
     33c:	2484002c 	addiu	a0,a0,44
     340:	3c060000 	lui	a2,0x0
     344:	24c60000 	addiu	a2,a2,0
     348:	8cc30000 	lw	v1,0(a2)
     34c:	3c010000 	lui	at,0x0
     350:	240b2000 	li	t3,8192
     354:	8479104c 	lh	t9,4172(v1)
     358:	ac390000 	sw	t9,0(at)
     35c:	846200fe 	lh	v0,254(v1)
     360:	3c010000 	lui	at,0x0
     364:	10400006 	beqz	v0,380 <func_800C4344+0x16c>
     368:	2449000f 	addiu	t1,v0,15
     36c:	2401fff0 	li	at,-16
     370:	01215024 	and	t2,t1,at
     374:	3c010000 	lui	at,0x0
     378:	10000002 	b	384 <func_800C4344+0x170>
     37c:	ac2a0000 	sw	t2,0(at)
     380:	ac2b0000 	sw	t3,0(at)
     384:	846c104e 	lh	t4,4174(v1)
     388:	3c010000 	lui	at,0x0
     38c:	24020008 	li	v0,8
     390:	ac2c0000 	sw	t4,0(at)
     394:	846d1050 	lh	t5,4176(v1)
     398:	3c010000 	lui	at,0x0
     39c:	ac2d0000 	sw	t5,0(at)
     3a0:	846e1074 	lh	t6,4212(v1)
     3a4:	544e001d 	bnel	v0,t6,41c <func_800C4344+0x208>
     3a8:	8fbf0014 	lw	ra,20(sp)
     3ac:	846f1090 	lh	t7,4240(v1)
     3b0:	504f000a 	beql	v0,t7,3dc <func_800C4344+0x1c8>
     3b4:	846a1076 	lh	t2,4214(v1)
     3b8:	a4621090 	sh	v0,4240(v1)
     3bc:	8cd80000 	lw	t8,0(a2)
     3c0:	a7001076 	sh	zero,4214(t8)
     3c4:	8cd90000 	lw	t9,0(a2)
     3c8:	a7201078 	sh	zero,4216(t9)
     3cc:	8cc90000 	lw	t1,0(a2)
     3d0:	a520107a 	sh	zero,4218(t1)
     3d4:	8cc30000 	lw	v1,0(a2)
     3d8:	846a1076 	lh	t2,4214(v1)
     3dc:	0543000f 	bgezl	t2,41c <func_800C4344+0x208>
     3e0:	8fbf0014 	lw	ra,20(sp)
     3e4:	a4601076 	sh	zero,4214(v1)
     3e8:	8cc30000 	lw	v1,0(a2)
     3ec:	8462107a 	lh	v0,4218(v1)
     3f0:	14400003 	bnez	v0,400 <func_800C4344+0x1ec>
     3f4:	00023900 	sll	a3,v0,0x4
     3f8:	10000001 	b	400 <func_800C4344+0x1ec>
     3fc:	24070100 	li	a3,256
     400:	84641078 	lh	a0,4216(v1)
     404:	3c018000 	lui	at,0x8000
     408:	00e02825 	move	a1,a3
     40c:	00042200 	sll	a0,a0,0x8
     410:	0c000000 	jal	0 <GameState_FaultPrint>
     414:	00812021 	addu	a0,a0,at
     418:	8fbf0014 	lw	ra,20(sp)
     41c:	27bd0018 	addiu	sp,sp,24
     420:	03e00008 	jr	ra
     424:	00000000 	nop

00000428 <GameState_DrawInputDisplay>:
     428:	27bdffe8 	addiu	sp,sp,-24
     42c:	afb30014 	sw	s3,20(sp)
     430:	afb20010 	sw	s2,16(sp)
     434:	afb1000c 	sw	s1,12(sp)
     438:	afb00008 	sw	s0,8(sp)
     43c:	afa40018 	sw	a0,24(sp)
     440:	8ca20000 	lw	v0,0(a1)
     444:	3087ffff 	andi	a3,a0,0xffff
     448:	3c03e700 	lui	v1,0xe700
     44c:	00402025 	move	a0,v0
     450:	ac830000 	sw	v1,0(a0)
     454:	ac800004 	sw	zero,4(a0)
     458:	24420008 	addiu	v0,v0,8
     45c:	00402025 	move	a0,v0
     460:	3c0eef30 	lui	t6,0xef30
     464:	ac8e0000 	sw	t6,0(a0)
     468:	ac800004 	sw	zero,4(a0)
     46c:	3c120000 	lui	s2,0x0
     470:	24420008 	addiu	v0,v0,8
     474:	26520020 	addiu	s2,s2,32
     478:	00002025 	move	a0,zero
     47c:	3c10f700 	lui	s0,0xf700
     480:	3c11f600 	lui	s1,0xf600
     484:	24130010 	li	s3,16
     488:	240a0001 	li	t2,1
     48c:	240b0002 	li	t3,2
     490:	240f0001 	li	t7,1
     494:	008fc004 	sllv	t8,t7,a0
     498:	00f8c824 	and	t9,a3,t8
     49c:	1320001c 	beqz	t9,510 <GameState_DrawInputDisplay+0xe8>
     4a0:	00047040 	sll	t6,a0,0x1
     4a4:	00403025 	move	a2,v0
     4a8:	acd00000 	sw	s0,0(a2)
     4ac:	024e4021 	addu	t0,s2,t6
     4b0:	95090000 	lhu	t1,0(t0)
     4b4:	000a6080 	sll	t4,t2,0x2
     4b8:	258c00e1 	addiu	t4,t4,225
     4bc:	00097c00 	sll	t7,t1,0x10
     4c0:	319903ff 	andi	t9,t4,0x3ff
     4c4:	012fc025 	or	t8,t1,t7
     4c8:	00046880 	sll	t5,a0,0x2
     4cc:	00197380 	sll	t6,t9,0xe
     4d0:	25ad00e2 	addiu	t5,t5,226
     4d4:	acd80004 	sw	t8,4(a2)
     4d8:	24420008 	addiu	v0,v0,8
     4dc:	01d17825 	or	t7,t6,s1
     4e0:	00403025 	move	a2,v0
     4e4:	31b903ff 	andi	t9,t5,0x3ff
     4e8:	00197380 	sll	t6,t9,0xe
     4ec:	35f8037c 	ori	t8,t7,0x37c
     4f0:	35cf0370 	ori	t7,t6,0x370
     4f4:	accf0004 	sw	t7,4(a2)
     4f8:	acd80000 	sw	t8,0(a2)
     4fc:	24420008 	addiu	v0,v0,8
     500:	00403025 	move	a2,v0
     504:	acc30000 	sw	v1,0(a2)
     508:	acc00004 	sw	zero,4(a2)
     50c:	24420008 	addiu	v0,v0,8
     510:	24180001 	li	t8,1
     514:	0158c804 	sllv	t9,t8,t2
     518:	00f97024 	and	t6,a3,t9
     51c:	11c0001c 	beqz	t6,590 <GameState_DrawInputDisplay+0x168>
     520:	00403025 	move	a2,v0
     524:	00047840 	sll	t7,a0,0x1
     528:	024fc021 	addu	t8,s2,t7
     52c:	acd00000 	sw	s0,0(a2)
     530:	97080002 	lhu	t0,2(t8)
     534:	000b4880 	sll	t1,t3,0x2
     538:	252900e1 	addiu	t1,t1,225
     53c:	0008cc00 	sll	t9,t0,0x10
     540:	312f03ff 	andi	t7,t1,0x3ff
     544:	01197025 	or	t6,t0,t9
     548:	000fc380 	sll	t8,t7,0xe
     54c:	000a6080 	sll	t4,t2,0x2
     550:	258c00e2 	addiu	t4,t4,226
     554:	0311c825 	or	t9,t8,s1
     558:	acce0004 	sw	t6,4(a2)
     55c:	24420008 	addiu	v0,v0,8
     560:	00403025 	move	a2,v0
     564:	318f03ff 	andi	t7,t4,0x3ff
     568:	000fc380 	sll	t8,t7,0xe
     56c:	372e037c 	ori	t6,t9,0x37c
     570:	37190370 	ori	t9,t8,0x370
     574:	acd90004 	sw	t9,4(a2)
     578:	acce0000 	sw	t6,0(a2)
     57c:	24420008 	addiu	v0,v0,8
     580:	00403025 	move	a2,v0
     584:	acc30000 	sw	v1,0(a2)
     588:	acc00004 	sw	zero,4(a2)
     58c:	24420008 	addiu	v0,v0,8
     590:	01602025 	move	a0,t3
     594:	254a0002 	addiu	t2,t2,2
     598:	1573ffbd 	bne	t3,s3,490 <GameState_DrawInputDisplay+0x68>
     59c:	256b0002 	addiu	t3,t3,2
     5a0:	aca20000 	sw	v0,0(a1)
     5a4:	8fb30014 	lw	s3,20(sp)
     5a8:	8fb20010 	lw	s2,16(sp)
     5ac:	8fb1000c 	lw	s1,12(sp)
     5b0:	8fb00008 	lw	s0,8(sp)
     5b4:	03e00008 	jr	ra
     5b8:	27bd0018 	addiu	sp,sp,24

000005bc <GameState_Draw>:
     5bc:	27bdff80 	addiu	sp,sp,-128
     5c0:	afbf0014 	sw	ra,20(sp)
     5c4:	afa40080 	sw	a0,128(sp)
     5c8:	3c060000 	lui	a2,0x0
     5cc:	afa50084 	sw	a1,132(sp)
     5d0:	24c60040 	addiu	a2,a2,64
     5d4:	27a40064 	addiu	a0,sp,100
     5d8:	0c000000 	jal	0 <GameState_FaultPrint>
     5dc:	240702ea 	li	a3,746
     5e0:	8fae0084 	lw	t6,132(sp)
     5e4:	8dc402c0 	lw	a0,704(t6)
     5e8:	0c000000 	jal	0 <GameState_FaultPrint>
     5ec:	afa40078 	sw	a0,120(sp)
     5f0:	8faf0084 	lw	t7,132(sp)
     5f4:	afa2007c 	sw	v0,124(sp)
     5f8:	3c19de00 	lui	t9,0xde00
     5fc:	8de302b0 	lw	v1,688(t7)
     600:	3c020000 	lui	v0,0x0
     604:	24010001 	li	at,1
     608:	24780008 	addiu	t8,v1,8
     60c:	adf802b0 	sw	t8,688(t7)
     610:	ac790000 	sw	t9,0(v1)
     614:	8fa8007c 	lw	t0,124(sp)
     618:	ac680004 	sw	t0,4(v1)
     61c:	8c420000 	lw	v0,0(v0)
     620:	84490184 	lh	t1,388(v0)
     624:	55210006 	bnel	t1,at,640 <GameState_Draw+0x84>
     628:	8faa0080 	lw	t2,128(sp)
     62c:	0c000000 	jal	0 <GameState_FaultPrint>
     630:	27a4007c 	addiu	a0,sp,124
     634:	3c020000 	lui	v0,0x0
     638:	8c420000 	lw	v0,0(v0)
     63c:	8faa0080 	lw	t2,128(sp)
     640:	3c030000 	lui	v1,0x0
     644:	24630000 	addiu	v1,v1,0
     648:	954b0014 	lhu	t3,20(t2)
     64c:	954c0020 	lhu	t4,32(t2)
     650:	016c6825 	or	t5,t3,t4
     654:	a46d0000 	sh	t5,0(v1)
     658:	844e1032 	lh	t6,4146(v0)
     65c:	31a4ffff 	andi	a0,t5,0xffff
     660:	55c00006 	bnezl	t6,67c <GameState_Draw+0xc0>
     664:	8458011c 	lh	t8,284(v0)
     668:	0c000000 	jal	0 <GameState_FaultPrint>
     66c:	27a5007c 	addiu	a1,sp,124
     670:	3c020000 	lui	v0,0x0
     674:	8c420000 	lw	v0,0(v0)
     678:	8458011c 	lh	t8,284(v0)
     67c:	330f0001 	andi	t7,t8,0x1
     680:	51e00010 	beqzl	t7,6c4 <GameState_Draw+0x108>
     684:	845900d4 	lh	t9,212(v0)
     688:	0c000000 	jal	0 <GameState_FaultPrint>
     68c:	27a4002c 	addiu	a0,sp,44
     690:	27a4002c 	addiu	a0,sp,44
     694:	0c000000 	jal	0 <GameState_FaultPrint>
     698:	8fa5007c 	lw	a1,124(sp)
     69c:	0c000000 	jal	0 <GameState_FaultPrint>
     6a0:	27a4002c 	addiu	a0,sp,44
     6a4:	0c000000 	jal	0 <GameState_FaultPrint>
     6a8:	27a4002c 	addiu	a0,sp,44
     6ac:	afa2007c 	sw	v0,124(sp)
     6b0:	0c000000 	jal	0 <GameState_FaultPrint>
     6b4:	27a4002c 	addiu	a0,sp,44
     6b8:	3c020000 	lui	v0,0x0
     6bc:	8c420000 	lw	v0,0(v0)
     6c0:	845900d4 	lh	t9,212(v0)
     6c4:	07230010 	bgezl	t9,708 <GameState_Draw+0x14c>
     6c8:	8fa9007c 	lw	t1,124(sp)
     6cc:	0c000000 	jal	0 <GameState_FaultPrint>
     6d0:	00000000 	nop
     6d4:	0c000000 	jal	0 <GameState_FaultPrint>
     6d8:	00000000 	nop
     6dc:	8fa40080 	lw	a0,128(sp)
     6e0:	0c000000 	jal	0 <GameState_FaultPrint>
     6e4:	24840074 	addiu	a0,a0,116
     6e8:	3c040000 	lui	a0,0x0
     6ec:	2484004c 	addiu	a0,a0,76
     6f0:	0c000000 	jal	0 <GameState_FaultPrint>
     6f4:	00402825 	move	a1,v0
     6f8:	3c080000 	lui	t0,0x0
     6fc:	8d080000 	lw	t0,0(t0)
     700:	a50000d4 	sh	zero,212(t0)
     704:	8fa9007c 	lw	t1,124(sp)
     708:	3c0bdf00 	lui	t3,0xdf00
     70c:	252a0008 	addiu	t2,t1,8
     710:	afaa007c 	sw	t2,124(sp)
     714:	ad200004 	sw	zero,4(t1)
     718:	ad2b0000 	sw	t3,0(t1)
     71c:	8fa5007c 	lw	a1,124(sp)
     720:	0c000000 	jal	0 <GameState_FaultPrint>
     724:	8fa40078 	lw	a0,120(sp)
     728:	8fac007c 	lw	t4,124(sp)
     72c:	8fad0084 	lw	t5,132(sp)
     730:	3c060000 	lui	a2,0x0
     734:	24c6007c 	addiu	a2,a2,124
     738:	adac02c0 	sw	t4,704(t5)
     73c:	8fa50084 	lw	a1,132(sp)
     740:	27a40064 	addiu	a0,sp,100
     744:	0c000000 	jal	0 <GameState_FaultPrint>
     748:	24070320 	li	a3,800
     74c:	0c000000 	jal	0 <GameState_FaultPrint>
     750:	8fa40084 	lw	a0,132(sp)
     754:	3c0e0000 	lui	t6,0x0
     758:	8dce0000 	lw	t6,0(t6)
     75c:	3c040000 	lui	a0,0x0
     760:	24840000 	addiu	a0,a0,0
     764:	85d800d4 	lh	t8,212(t6)
     768:	53000009 	beqzl	t8,790 <GameState_Draw+0x1d4>
     76c:	8fbf0014 	lw	ra,20(sp)
     770:	0c000000 	jal	0 <GameState_FaultPrint>
     774:	8fa50084 	lw	a1,132(sp)
     778:	3c040000 	lui	a0,0x0
     77c:	24840000 	addiu	a0,a0,0
     780:	8fa50084 	lw	a1,132(sp)
     784:	0c000000 	jal	0 <GameState_FaultPrint>
     788:	8fa60080 	lw	a2,128(sp)
     78c:	8fbf0014 	lw	ra,20(sp)
     790:	27bd0080 	addiu	sp,sp,128
     794:	03e00008 	jr	ra
     798:	00000000 	nop

0000079c <GameState_SetFrameBuffer>:
     79c:	27bdffa8 	addiu	sp,sp,-88
     7a0:	afbf0014 	sw	ra,20(sp)
     7a4:	00802825 	move	a1,a0
     7a8:	3c060000 	lui	a2,0x0
     7ac:	24c60088 	addiu	a2,a2,136
     7b0:	afa50058 	sw	a1,88(sp)
     7b4:	27a40044 	addiu	a0,sp,68
     7b8:	0c000000 	jal	0 <GameState_FaultPrint>
     7bc:	2407032e 	li	a3,814
     7c0:	8fa50058 	lw	a1,88(sp)
     7c4:	3c06db06 	lui	a2,0xdb06
     7c8:	3c07db06 	lui	a3,0xdb06
     7cc:	8ca202c0 	lw	v0,704(a1)
     7d0:	34e7003c 	ori	a3,a3,0x3c
     7d4:	3c08db06 	lui	t0,0xdb06
     7d8:	244e0008 	addiu	t6,v0,8
     7dc:	acae02c0 	sw	t6,704(a1)
     7e0:	ac400004 	sw	zero,4(v0)
     7e4:	ac460000 	sw	a2,0(v0)
     7e8:	8ca202c0 	lw	v0,704(a1)
     7ec:	3c040000 	lui	a0,0x0
     7f0:	24840000 	addiu	a0,a0,0
     7f4:	244f0008 	addiu	t7,v0,8
     7f8:	acaf02c0 	sw	t7,704(a1)
     7fc:	ac470000 	sw	a3,0(v0)
     800:	8cb802dc 	lw	t8,732(a1)
     804:	35080038 	ori	t0,t0,0x38
     808:	ac580004 	sw	t8,4(v0)
     80c:	8ca202c0 	lw	v0,704(a1)
     810:	24590008 	addiu	t9,v0,8
     814:	acb902c0 	sw	t9,704(a1)
     818:	ac440004 	sw	a0,4(v0)
     81c:	ac480000 	sw	t0,0(v0)
     820:	8ca202d0 	lw	v0,720(a1)
     824:	24490008 	addiu	t1,v0,8
     828:	aca902d0 	sw	t1,720(a1)
     82c:	ac400004 	sw	zero,4(v0)
     830:	ac460000 	sw	a2,0(v0)
     834:	8ca202d0 	lw	v0,720(a1)
     838:	244a0008 	addiu	t2,v0,8
     83c:	acaa02d0 	sw	t2,720(a1)
     840:	ac470000 	sw	a3,0(v0)
     844:	8cab02dc 	lw	t3,732(a1)
     848:	ac4b0004 	sw	t3,4(v0)
     84c:	8ca202d0 	lw	v0,720(a1)
     850:	244c0008 	addiu	t4,v0,8
     854:	acac02d0 	sw	t4,720(a1)
     858:	ac440004 	sw	a0,4(v0)
     85c:	ac480000 	sw	t0,0(v0)
     860:	8ca202b0 	lw	v0,688(a1)
     864:	244d0008 	addiu	t5,v0,8
     868:	acad02b0 	sw	t5,688(a1)
     86c:	ac400004 	sw	zero,4(v0)
     870:	ac460000 	sw	a2,0(v0)
     874:	8ca202b0 	lw	v0,688(a1)
     878:	3c060000 	lui	a2,0x0
     87c:	24c60094 	addiu	a2,a2,148
     880:	244e0008 	addiu	t6,v0,8
     884:	acae02b0 	sw	t6,688(a1)
     888:	ac470000 	sw	a3,0(v0)
     88c:	8caf02dc 	lw	t7,732(a1)
     890:	24070346 	li	a3,838
     894:	ac4f0004 	sw	t7,4(v0)
     898:	8ca202b0 	lw	v0,688(a1)
     89c:	24580008 	addiu	t8,v0,8
     8a0:	acb802b0 	sw	t8,688(a1)
     8a4:	ac440004 	sw	a0,4(v0)
     8a8:	27a40044 	addiu	a0,sp,68
     8ac:	0c000000 	jal	0 <GameState_FaultPrint>
     8b0:	ac480000 	sw	t0,0(v0)
     8b4:	8fbf0014 	lw	ra,20(sp)
     8b8:	27bd0058 	addiu	sp,sp,88
     8bc:	03e00008 	jr	ra
     8c0:	00000000 	nop

000008c4 <func_800C49F4>:
     8c4:	27bdffb8 	addiu	sp,sp,-72
     8c8:	afb00018 	sw	s0,24(sp)
     8cc:	00808025 	move	s0,a0
     8d0:	afbf001c 	sw	ra,28(sp)
     8d4:	3c060000 	lui	a2,0x0
     8d8:	24c600a0 	addiu	a2,a2,160
     8dc:	02002825 	move	a1,s0
     8e0:	27a4002c 	addiu	a0,sp,44
     8e4:	0c000000 	jal	0 <GameState_FaultPrint>
     8e8:	2407034e 	li	a3,846
     8ec:	8e0602c0 	lw	a2,704(s0)
     8f0:	00c02025 	move	a0,a2
     8f4:	0c000000 	jal	0 <GameState_FaultPrint>
     8f8:	afa60040 	sw	a2,64(sp)
     8fc:	8e0402b0 	lw	a0,688(s0)
     900:	8fa60040 	lw	a2,64(sp)
     904:	3c0fde00 	lui	t7,0xde00
     908:	248e0008 	addiu	t6,a0,8
     90c:	ae0e02b0 	sw	t6,688(s0)
     910:	ac820004 	sw	v0,4(a0)
     914:	ac8f0000 	sw	t7,0(a0)
     918:	3c18df00 	lui	t8,0xdf00
     91c:	ac580000 	sw	t8,0(v0)
     920:	ac400004 	sw	zero,4(v0)
     924:	24450008 	addiu	a1,v0,8
     928:	afa50044 	sw	a1,68(sp)
     92c:	0c000000 	jal	0 <GameState_FaultPrint>
     930:	00c02025 	move	a0,a2
     934:	8fa50044 	lw	a1,68(sp)
     938:	3c060000 	lui	a2,0x0
     93c:	24c600ac 	addiu	a2,a2,172
     940:	ae0502c0 	sw	a1,704(s0)
     944:	02002825 	move	a1,s0
     948:	27a4002c 	addiu	a0,sp,44
     94c:	0c000000 	jal	0 <GameState_FaultPrint>
     950:	24070361 	li	a3,865
     954:	8fbf001c 	lw	ra,28(sp)
     958:	8fb00018 	lw	s0,24(sp)
     95c:	27bd0048 	addiu	sp,sp,72
     960:	03e00008 	jr	ra
     964:	00000000 	nop

00000968 <GameState_ReqPadData>:
     968:	27bdffe8 	addiu	sp,sp,-24
     96c:	00803825 	move	a3,a0
     970:	afbf0014 	sw	ra,20(sp)
     974:	3c040000 	lui	a0,0x0
     978:	24840000 	addiu	a0,a0,0
     97c:	24e50014 	addiu	a1,a3,20
     980:	0c000000 	jal	0 <GameState_FaultPrint>
     984:	24060001 	li	a2,1
     988:	8fbf0014 	lw	ra,20(sp)
     98c:	27bd0018 	addiu	sp,sp,24
     990:	03e00008 	jr	ra
     994:	00000000 	nop

00000998 <GameState_Update>:
     998:	27bdffe0 	addiu	sp,sp,-32
     99c:	afbf0014 	sw	ra,20(sp)
     9a0:	afa40020 	sw	a0,32(sp)
     9a4:	8c860000 	lw	a2,0(a0)
     9a8:	00c02025 	move	a0,a2
     9ac:	0c000000 	jal	0 <GameState_FaultPrint>
     9b0:	afa6001c 	sw	a2,28(sp)
     9b4:	8fa40020 	lw	a0,32(sp)
     9b8:	8c990004 	lw	t9,4(a0)
     9bc:	0320f809 	jalr	t9
     9c0:	00000000 	nop
     9c4:	0c000000 	jal	0 <GameState_FaultPrint>
     9c8:	8fa40020 	lw	a0,32(sp)
     9cc:	3c070000 	lui	a3,0x0
     9d0:	24e70000 	addiu	a3,a3,0
     9d4:	8ce20000 	lw	v0,0(a3)
     9d8:	24040001 	li	a0,1
     9dc:	8fa6001c 	lw	a2,28(sp)
     9e0:	84430152 	lh	v1,338(v0)
     9e4:	1483002d 	bne	a0,v1,a9c <GameState_Update+0x104>
     9e8:	28610002 	slti	at,v1,2
     9ec:	84430134 	lh	v1,308(v0)
     9f0:	3c0f0000 	lui	t7,0x0
     9f4:	25ef0000 	addiu	t7,t7,0
     9f8:	04610010 	bgez	v1,a3c <GameState_Update+0xa4>
     9fc:	3c180000 	lui	t8,0x0
     a00:	a4400134 	sh	zero,308(v0)
     a04:	accf0284 	sw	t7,644(a2)
     a08:	8f180000 	lw	t8,0(t8)
     a0c:	3c010000 	lui	at,0x0
     a10:	24050002 	li	a1,2
     a14:	acd802e4 	sw	t8,740(a2)
     a18:	c4240000 	lwc1	$f4,0(at)
     a1c:	3c010000 	lui	at,0x0
     a20:	e4c402f4 	swc1	$f4,756(a2)
     a24:	c4260000 	lwc1	$f6,0(at)
     a28:	3c013f80 	lui	at,0x3f80
     a2c:	44810000 	mtc1	at,$f0
     a30:	e4c602f8 	swc1	$f6,760(a2)
     a34:	1000006d 	b	bec <GameState_Update+0x254>
     a38:	8ce20000 	lw	v0,0(a3)
     a3c:	18600013 	blez	v1,a8c <GameState_Update+0xf4>
     a40:	3c040000 	lui	a0,0x0
     a44:	8fa50020 	lw	a1,32(sp)
     a48:	24840000 	addiu	a0,a0,0
     a4c:	afa6001c 	sw	a2,28(sp)
     a50:	0c000000 	jal	0 <GameState_FaultPrint>
     a54:	24a50014 	addiu	a1,a1,20
     a58:	8fa6001c 	lw	a2,28(sp)
     a5c:	3c030000 	lui	v1,0x0
     a60:	24630000 	addiu	v1,v1,0
     a64:	3c013f80 	lui	at,0x3f80
     a68:	44810000 	mtc1	at,$f0
     a6c:	acc30284 	sw	v1,644(a2)
     a70:	8c690080 	lw	t1,128(v1)
     a74:	3c070000 	lui	a3,0x0
     a78:	24e70000 	addiu	a3,a3,0
     a7c:	e4c002f4 	swc1	$f0,756(a2)
     a80:	e4c002f8 	swc1	$f0,760(a2)
     a84:	acc902e4 	sw	t1,740(a2)
     a88:	8ce20000 	lw	v0,0(a3)
     a8c:	3c013f80 	lui	at,0x3f80
     a90:	44810000 	mtc1	at,$f0
     a94:	10000055 	b	bec <GameState_Update+0x254>
     a98:	24050002 	li	a1,2
     a9c:	1420004f 	bnez	at,bdc <GameState_Update+0x244>
     aa0:	24050002 	li	a1,2
     aa4:	3c0a0000 	lui	t2,0x0
     aa8:	254a0000 	addiu	t2,t2,0
     aac:	acca0284 	sw	t2,644(a2)
     ab0:	3c0b0000 	lui	t3,0x0
     ab4:	8d6b0000 	lw	t3,0(t3)
     ab8:	3c010000 	lui	at,0x0
     abc:	3c190000 	lui	t9,0x0
     ac0:	accb02e4 	sw	t3,740(a2)
     ac4:	c4280000 	lwc1	$f8,0(at)
     ac8:	3c010000 	lui	at,0x0
     acc:	3c180000 	lui	t8,0x0
     ad0:	e4c802f4 	swc1	$f8,756(a2)
     ad4:	c42a0000 	lwc1	$f10,0(at)
     ad8:	24010006 	li	at,6
     adc:	3c0a0000 	lui	t2,0x0
     ae0:	e4ca02f8 	swc1	$f10,760(a2)
     ae4:	8ce20000 	lw	v0,0(a3)
     ae8:	24050002 	li	a1,2
     aec:	3c0d0000 	lui	t5,0x0
     af0:	84430152 	lh	v1,338(v0)
     af4:	27390000 	addiu	t9,t9,0
     af8:	27180000 	addiu	t8,t8,0
     afc:	10610006 	beq	v1,at,b18 <GameState_Update+0x180>
     b00:	254a0000 	addiu	t2,t2,0
     b04:	14a3000c 	bne	a1,v1,b38 <GameState_Update+0x1a0>
     b08:	3c080000 	lui	t0,0x0
     b0c:	25080000 	addiu	t0,t0,0
     b10:	8d0c0000 	lw	t4,0(t0)
     b14:	148c0008 	bne	a0,t4,b38 <GameState_Update+0x1a0>
     b18:	3c013f80 	lui	at,0x3f80
     b1c:	44810000 	mtc1	at,$f0
     b20:	25ad0000 	addiu	t5,t5,0
     b24:	accd0284 	sw	t5,644(a2)
     b28:	e4c002f8 	swc1	$f0,760(a2)
     b2c:	8ce20000 	lw	v0,0(a3)
     b30:	24050002 	li	a1,2
     b34:	84430152 	lh	v1,338(v0)
     b38:	3c013f80 	lui	at,0x3f80
     b3c:	44810000 	mtc1	at,$f0
     b40:	3c080000 	lui	t0,0x0
     b44:	24010005 	li	at,5
     b48:	10610006 	beq	v1,at,b64 <GameState_Update+0x1cc>
     b4c:	25080000 	addiu	t0,t0,0
     b50:	54a30009 	bnel	a1,v1,b78 <GameState_Update+0x1e0>
     b54:	24010004 	li	at,4
     b58:	8d0e0000 	lw	t6,0(t0)
     b5c:	54ae0006 	bnel	a1,t6,b78 <GameState_Update+0x1e0>
     b60:	24010004 	li	at,4
     b64:	acd90284 	sw	t9,644(a2)
     b68:	e4c002f8 	swc1	$f0,760(a2)
     b6c:	8ce20000 	lw	v0,0(a3)
     b70:	84430152 	lh	v1,338(v0)
     b74:	24010004 	li	at,4
     b78:	50610007 	beql	v1,at,b98 <GameState_Update+0x200>
     b7c:	acd80284 	sw	t8,644(a2)
     b80:	54a30009 	bnel	a1,v1,ba8 <GameState_Update+0x210>
     b84:	24010003 	li	at,3
     b88:	8d0f0000 	lw	t7,0(t0)
     b8c:	55e00006 	bnezl	t7,ba8 <GameState_Update+0x210>
     b90:	24010003 	li	at,3
     b94:	acd80284 	sw	t8,644(a2)
     b98:	e4c002f8 	swc1	$f0,760(a2)
     b9c:	8ce20000 	lw	v0,0(a3)
     ba0:	84430152 	lh	v1,338(v0)
     ba4:	24010003 	li	at,3
     ba8:	50610007 	beql	v1,at,bc8 <GameState_Update+0x230>
     bac:	acca0284 	sw	t2,644(a2)
     bb0:	54a3000f 	bnel	a1,v1,bf0 <GameState_Update+0x258>
     bb4:	844b1074 	lh	t3,4212(v0)
     bb8:	8d090000 	lw	t1,0(t0)
     bbc:	5520000c 	bnezl	t1,bf0 <GameState_Update+0x258>
     bc0:	844b1074 	lh	t3,4212(v0)
     bc4:	acca0284 	sw	t2,644(a2)
     bc8:	3c010000 	lui	at,0x0
     bcc:	c43003d8 	lwc1	$f16,984(at)
     bd0:	e4d002f8 	swc1	$f16,760(a2)
     bd4:	10000005 	b	bec <GameState_Update+0x254>
     bd8:	8ce20000 	lw	v0,0(a3)
     bdc:	3c013f80 	lui	at,0x3f80
     be0:	acc00284 	sw	zero,644(a2)
     be4:	44810000 	mtc1	at,$f0
     be8:	8ce20000 	lw	v0,0(a3)
     bec:	844b1074 	lh	t3,4212(v0)
     bf0:	24030015 	li	v1,21
     bf4:	546b0046 	bnel	v1,t3,d10 <GameState_Update+0x378>
     bf8:	84490190 	lh	t1,400(v0)
     bfc:	844c1092 	lh	t4,4242(v0)
     c00:	24090030 	li	t1,48
     c04:	506c000f 	beql	v1,t4,c44 <GameState_Update+0x2ac>
     c08:	84431078 	lh	v1,4216(v0)
     c0c:	a4431092 	sh	v1,4242(v0)
     c10:	8ced0000 	lw	t5,0(a3)
     c14:	3c040000 	lui	a0,0x0
     c18:	24840000 	addiu	a0,a0,0
     c1c:	a5a01076 	sh	zero,4214(t5)
     c20:	8cf90000 	lw	t9,0(a3)
     c24:	908e0000 	lbu	t6,0(a0)
     c28:	a72e1078 	sh	t6,4216(t9)
     c2c:	8cef0000 	lw	t7,0(a3)
     c30:	a5e0107a 	sh	zero,4218(t7)
     c34:	8cf80000 	lw	t8,0(a3)
     c38:	a700107c 	sh	zero,4220(t8)
     c3c:	8ce20000 	lw	v0,0(a3)
     c40:	84431078 	lh	v1,4216(v0)
     c44:	3c040000 	lui	a0,0x0
     c48:	24840000 	addiu	a0,a0,0
     c4c:	04630005 	bgezl	v1,c64 <GameState_Update+0x2cc>
     c50:	28610031 	slti	at,v1,49
     c54:	a4401078 	sh	zero,4216(v0)
     c58:	8ce20000 	lw	v0,0(a3)
     c5c:	84431078 	lh	v1,4216(v0)
     c60:	28610031 	slti	at,v1,49
     c64:	54200005 	bnezl	at,c7c <GameState_Update+0x2e4>
     c68:	844a107a 	lh	t2,4218(v0)
     c6c:	a4491078 	sh	t1,4216(v0)
     c70:	8ce20000 	lw	v0,0(a3)
     c74:	84431078 	lh	v1,4216(v0)
     c78:	844a107a 	lh	t2,4218(v0)
     c7c:	55430006 	bnel	t2,v1,c98 <GameState_Update+0x300>
     c80:	a443107a 	sh	v1,4218(v0)
     c84:	844b107c 	lh	t3,4220(v0)
     c88:	844c1076 	lh	t4,4214(v0)
     c8c:	516c0020 	beql	t3,t4,d10 <GameState_Update+0x378>
     c90:	84490190 	lh	t1,400(v0)
     c94:	a443107a 	sh	v1,4218(v0)
     c98:	8ce20000 	lw	v0,0(a3)
     c9c:	3c014370 	lui	at,0x4370
     ca0:	844d1076 	lh	t5,4214(v0)
     ca4:	a44d107c 	sh	t5,4220(v0)
     ca8:	8ce20000 	lw	v0,0(a3)
     cac:	844e1078 	lh	t6,4216(v0)
     cb0:	a08e0000 	sb	t6,0(a0)
     cb4:	84591076 	lh	t9,4214(v0)
     cb8:	31cf00ff 	andi	t7,t6,0xff
     cbc:	1720000e 	bnez	t9,cf8 <GameState_Update+0x360>
     cc0:	00000000 	nop
     cc4:	448f9000 	mtc1	t7,$f18
     cc8:	44810000 	mtc1	at,$f0
     ccc:	05e10005 	bgez	t7,ce4 <GameState_Update+0x34c>
     cd0:	46809120 	cvt.s.w	$f4,$f18
     cd4:	3c014f80 	lui	at,0x4f80
     cd8:	44813000 	mtc1	at,$f6
     cdc:	00000000 	nop
     ce0:	46062100 	add.s	$f4,$f4,$f6
     ce4:	46002200 	add.s	$f8,$f4,$f0
     ce8:	3c010000 	lui	at,0x0
     cec:	46080283 	div.s	$f10,$f0,$f8
     cf0:	10000003 	b	d00 <GameState_Update+0x368>
     cf4:	e42a0000 	swc1	$f10,0(at)
     cf8:	3c010000 	lui	at,0x0
     cfc:	e4200000 	swc1	$f0,0(at)
     d00:	24180001 	li	t8,1
     d04:	3c010000 	lui	at,0x0
     d08:	a0380000 	sb	t8,0(at)
     d0c:	84490190 	lh	t1,400(v0)
     d10:	50a90008 	beql	a1,t1,d34 <GameState_Update+0x39c>
     d14:	8fa20020 	lw	v0,32(sp)
     d18:	8fa40020 	lw	a0,32(sp)
     d1c:	00c02825 	move	a1,a2
     d20:	0c000000 	jal	0 <GameState_FaultPrint>
     d24:	afa6001c 	sw	a2,28(sp)
     d28:	0c000000 	jal	0 <GameState_FaultPrint>
     d2c:	8fa4001c 	lw	a0,28(sp)
     d30:	8fa20020 	lw	v0,32(sp)
     d34:	8c4a009c 	lw	t2,156(v0)
     d38:	254b0001 	addiu	t3,t2,1
     d3c:	ac4b009c 	sw	t3,156(v0)
     d40:	8fbf0014 	lw	ra,20(sp)
     d44:	27bd0020 	addiu	sp,sp,32
     d48:	03e00008 	jr	ra
     d4c:	00000000 	nop

00000d50 <GameState_InitArena>:
     d50:	27bdffe8 	addiu	sp,sp,-24
     d54:	afa40018 	sw	a0,24(sp)
     d58:	afbf0014 	sw	ra,20(sp)
     d5c:	3c040000 	lui	a0,0x0
     d60:	afa5001c 	sw	a1,28(sp)
     d64:	0c000000 	jal	0 <GameState_FaultPrint>
     d68:	248400b8 	addiu	a0,a0,184
     d6c:	8fa40018 	lw	a0,24(sp)
     d70:	3c060000 	lui	a2,0x0
     d74:	24c600d8 	addiu	a2,a2,216
     d78:	8fa5001c 	lw	a1,28(sp)
     d7c:	240703e0 	li	a3,992
     d80:	0c000000 	jal	0 <GameState_FaultPrint>
     d84:	24840084 	addiu	a0,a0,132
     d88:	8fa30018 	lw	v1,24(sp)
     d8c:	10400009 	beqz	v0,db4 <GameState_InitArena+0x64>
     d90:	00402825 	move	a1,v0
     d94:	24640074 	addiu	a0,v1,116
     d98:	0c000000 	jal	0 <GameState_FaultPrint>
     d9c:	8fa6001c 	lw	a2,28(sp)
     da0:	3c040000 	lui	a0,0x0
     da4:	0c000000 	jal	0 <GameState_FaultPrint>
     da8:	248400e4 	addiu	a0,a0,228
     dac:	1000000d 	b	de4 <GameState_InitArena+0x94>
     db0:	8fbf0014 	lw	ra,20(sp)
     db4:	24640074 	addiu	a0,v1,116
     db8:	00002825 	move	a1,zero
     dbc:	0c000000 	jal	0 <GameState_FaultPrint>
     dc0:	00003025 	move	a2,zero
     dc4:	3c040000 	lui	a0,0x0
     dc8:	0c000000 	jal	0 <GameState_FaultPrint>
     dcc:	248400f8 	addiu	a0,a0,248
     dd0:	3c040000 	lui	a0,0x0
     dd4:	2484010c 	addiu	a0,a0,268
     dd8:	0c000000 	jal	0 <GameState_FaultPrint>
     ddc:	240503e7 	li	a1,999
     de0:	8fbf0014 	lw	ra,20(sp)
     de4:	27bd0018 	addiu	sp,sp,24
     de8:	03e00008 	jr	ra
     dec:	00000000 	nop

00000df0 <GameState_Realloc>:
     df0:	27bdffc0 	addiu	sp,sp,-64
     df4:	afbf001c 	sw	ra,28(sp)
     df8:	afa50044 	sw	a1,68(sp)
     dfc:	8c8e0078 	lw	t6,120(a0)
     e00:	00803025 	move	a2,a0
     e04:	24840074 	addiu	a0,a0,116
     e08:	afa40020 	sw	a0,32(sp)
     e0c:	afa60040 	sw	a2,64(sp)
     e10:	0c000000 	jal	0 <GameState_FaultPrint>
     e14:	afae0028 	sw	t6,40(sp)
     e18:	8fa60040 	lw	a2,64(sp)
     e1c:	8fa50028 	lw	a1,40(sp)
     e20:	24c40084 	addiu	a0,a2,132
     e24:	0c000000 	jal	0 <GameState_FaultPrint>
     e28:	afa40024 	sw	a0,36(sp)
     e2c:	3c040000 	lui	a0,0x0
     e30:	0c000000 	jal	0 <GameState_FaultPrint>
     e34:	24840118 	addiu	a0,a0,280
     e38:	27a40034 	addiu	a0,sp,52
     e3c:	27a50030 	addiu	a1,sp,48
     e40:	0c000000 	jal	0 <GameState_FaultPrint>
     e44:	27a6002c 	addiu	a2,sp,44
     e48:	8fb80034 	lw	t8,52(sp)
     e4c:	8faf0044 	lw	t7,68(sp)
     e50:	3c040000 	lui	a0,0x0
     e54:	2719fff0 	addiu	t9,t8,-16
     e58:	032f082b 	sltu	at,t9,t7
     e5c:	10200017 	beqz	at,ebc <GameState_Realloc+0xcc>
     e60:	2484012c 	addiu	a0,a0,300
     e64:	0c000000 	jal	0 <GameState_FaultPrint>
     e68:	24050007 	li	a1,7
     e6c:	3c040000 	lui	a0,0x0
     e70:	0c000000 	jal	0 <GameState_FaultPrint>
     e74:	24840130 	addiu	a0,a0,304
     e78:	3c040000 	lui	a0,0x0
     e7c:	0c000000 	jal	0 <GameState_FaultPrint>
     e80:	24840138 	addiu	a0,a0,312
     e84:	8fa8002c 	lw	t0,44(sp)
     e88:	3c040000 	lui	a0,0x0
     e8c:	24840178 	addiu	a0,a0,376
     e90:	8fa50044 	lw	a1,68(sp)
     e94:	8fa60034 	lw	a2,52(sp)
     e98:	8fa70030 	lw	a3,48(sp)
     e9c:	0c000000 	jal	0 <GameState_FaultPrint>
     ea0:	afa80010 	sw	t0,16(sp)
     ea4:	3c040000 	lui	a0,0x0
     ea8:	0c000000 	jal	0 <GameState_FaultPrint>
     eac:	248401a4 	addiu	a0,a0,420
     eb0:	8fa90034 	lw	t1,52(sp)
     eb4:	252afff0 	addiu	t2,t1,-16
     eb8:	afaa0044 	sw	t2,68(sp)
     ebc:	3c040000 	lui	a0,0x0
     ec0:	248401a8 	addiu	a0,a0,424
     ec4:	0c000000 	jal	0 <GameState_FaultPrint>
     ec8:	8fa50044 	lw	a1,68(sp)
     ecc:	3c060000 	lui	a2,0x0
     ed0:	24c601cc 	addiu	a2,a2,460
     ed4:	8fa40024 	lw	a0,36(sp)
     ed8:	8fa50044 	lw	a1,68(sp)
     edc:	0c000000 	jal	0 <GameState_FaultPrint>
     ee0:	24070409 	li	a3,1033
     ee4:	10400009 	beqz	v0,f0c <GameState_Realloc+0x11c>
     ee8:	00402825 	move	a1,v0
     eec:	8fa40020 	lw	a0,32(sp)
     ef0:	0c000000 	jal	0 <GameState_FaultPrint>
     ef4:	8fa60044 	lw	a2,68(sp)
     ef8:	3c040000 	lui	a0,0x0
     efc:	0c000000 	jal	0 <GameState_FaultPrint>
     f00:	248401d8 	addiu	a0,a0,472
     f04:	1000000f 	b	f44 <GameState_Realloc+0x154>
     f08:	8fbf001c 	lw	ra,28(sp)
     f0c:	8fa40020 	lw	a0,32(sp)
     f10:	00002825 	move	a1,zero
     f14:	0c000000 	jal	0 <GameState_FaultPrint>
     f18:	00003025 	move	a2,zero
     f1c:	3c040000 	lui	a0,0x0
     f20:	0c000000 	jal	0 <GameState_FaultPrint>
     f24:	248401ec 	addiu	a0,a0,492
     f28:	0c000000 	jal	0 <GameState_FaultPrint>
     f2c:	00000000 	nop
     f30:	3c040000 	lui	a0,0x0
     f34:	24840200 	addiu	a0,a0,512
     f38:	0c000000 	jal	0 <GameState_FaultPrint>
     f3c:	24050414 	li	a1,1044
     f40:	8fbf001c 	lw	ra,28(sp)
     f44:	27bd0040 	addiu	sp,sp,64
     f48:	03e00008 	jr	ra
     f4c:	00000000 	nop

00000f50 <GameState_Init>:
     f50:	27bdffd0 	addiu	sp,sp,-48
     f54:	afb00018 	sw	s0,24(sp)
     f58:	00808025 	move	s0,a0
     f5c:	afbf001c 	sw	ra,28(sp)
     f60:	3c040000 	lui	a0,0x0
     f64:	afa50034 	sw	a1,52(sp)
     f68:	afa60038 	sw	a2,56(sp)
     f6c:	0c000000 	jal	0 <GameState_FaultPrint>
     f70:	2484020c 	addiu	a0,a0,524
     f74:	8fae0038 	lw	t6,56(sp)
     f78:	240f0001 	li	t7,1
     f7c:	ae00009c 	sw	zero,156(s0)
     f80:	ae000004 	sw	zero,4(s0)
     f84:	ae000008 	sw	zero,8(s0)
     f88:	ae0f0098 	sw	t7,152(s0)
     f8c:	0c000000 	jal	0 <GameState_FaultPrint>
     f90:	ae0e0000 	sw	t6,0(s0)
     f94:	afa20028 	sw	v0,40(sp)
     f98:	afa3002c 	sw	v1,44(sp)
     f9c:	ae000010 	sw	zero,16(s0)
     fa0:	0c000000 	jal	0 <GameState_FaultPrint>
     fa4:	ae00000c 	sw	zero,12(s0)
     fa8:	8fb80028 	lw	t8,40(sp)
     fac:	8fb9002c 	lw	t9,44(sp)
     fb0:	afa20020 	sw	v0,32(sp)
     fb4:	00582023 	subu	a0,v0,t8
     fb8:	0079082b 	sltu	at,v1,t9
     fbc:	afa30024 	sw	v1,36(sp)
     fc0:	00812023 	subu	a0,a0,at
     fc4:	24060000 	li	a2,0
     fc8:	24070040 	li	a3,64
     fcc:	0c000000 	jal	0 <GameState_FaultPrint>
     fd0:	00792823 	subu	a1,v1,t9
     fd4:	00402025 	move	a0,v0
     fd8:	00602825 	move	a1,v1
     fdc:	24060000 	li	a2,0
     fe0:	0c000000 	jal	0 <GameState_FaultPrint>
     fe4:	24070bb8 	li	a3,3000
     fe8:	3c040000 	lui	a0,0x0
     fec:	24840228 	addiu	a0,a0,552
     ff0:	00403025 	move	a2,v0
     ff4:	0c000000 	jal	0 <GameState_FaultPrint>
     ff8:	00603825 	move	a3,v1
     ffc:	8fa80020 	lw	t0,32(sp)
    1000:	8fa90024 	lw	t1,36(sp)
    1004:	26040084 	addiu	a0,s0,132
    1008:	afa80028 	sw	t0,40(sp)
    100c:	0c000000 	jal	0 <GameState_FaultPrint>
    1010:	afa9002c 	sw	t1,44(sp)
    1014:	0c000000 	jal	0 <GameState_FaultPrint>
    1018:	00000000 	nop
    101c:	8faa0028 	lw	t2,40(sp)
    1020:	8fab002c 	lw	t3,44(sp)
    1024:	afa20020 	sw	v0,32(sp)
    1028:	004a2023 	subu	a0,v0,t2
    102c:	006b082b 	sltu	at,v1,t3
    1030:	afa30024 	sw	v1,36(sp)
    1034:	00812023 	subu	a0,a0,at
    1038:	24060000 	li	a2,0
    103c:	24070040 	li	a3,64
    1040:	0c000000 	jal	0 <GameState_FaultPrint>
    1044:	006b2823 	subu	a1,v1,t3
    1048:	00402025 	move	a0,v0
    104c:	00602825 	move	a1,v1
    1050:	24060000 	li	a2,0
    1054:	0c000000 	jal	0 <GameState_FaultPrint>
    1058:	24070bb8 	li	a3,3000
    105c:	3c040000 	lui	a0,0x0
    1060:	24840250 	addiu	a0,a0,592
    1064:	00403025 	move	a2,v0
    1068:	0c000000 	jal	0 <GameState_FaultPrint>
    106c:	00603825 	move	a3,v1
    1070:	8fac0020 	lw	t4,32(sp)
    1074:	8fad0024 	lw	t5,36(sp)
    1078:	02002025 	move	a0,s0
    107c:	3c050010 	lui	a1,0x10
    1080:	afac0028 	sw	t4,40(sp)
    1084:	0c000000 	jal	0 <GameState_FaultPrint>
    1088:	afad002c 	sw	t5,44(sp)
    108c:	3c0f0000 	lui	t7,0x0
    1090:	8def0000 	lw	t7,0(t7)
    1094:	240e0003 	li	t6,3
    1098:	02002025 	move	a0,s0
    109c:	a5ee0110 	sh	t6,272(t7)
    10a0:	8fb90034 	lw	t9,52(sp)
    10a4:	0320f809 	jalr	t9
    10a8:	00000000 	nop
    10ac:	0c000000 	jal	0 <GameState_FaultPrint>
    10b0:	00000000 	nop
    10b4:	8fb80028 	lw	t8,40(sp)
    10b8:	8fb9002c 	lw	t9,44(sp)
    10bc:	afa20020 	sw	v0,32(sp)
    10c0:	00582023 	subu	a0,v0,t8
    10c4:	0079082b 	sltu	at,v1,t9
    10c8:	afa30024 	sw	v1,36(sp)
    10cc:	00812023 	subu	a0,a0,at
    10d0:	24060000 	li	a2,0
    10d4:	24070040 	li	a3,64
    10d8:	0c000000 	jal	0 <GameState_FaultPrint>
    10dc:	00792823 	subu	a1,v1,t9
    10e0:	00402025 	move	a0,v0
    10e4:	00602825 	move	a1,v1
    10e8:	24060000 	li	a2,0
    10ec:	0c000000 	jal	0 <GameState_FaultPrint>
    10f0:	24070bb8 	li	a3,3000
    10f4:	3c040000 	lui	a0,0x0
    10f8:	24840270 	addiu	a0,a0,624
    10fc:	00403025 	move	a2,v0
    1100:	0c000000 	jal	0 <GameState_FaultPrint>
    1104:	00603825 	move	a3,v1
    1108:	8fa80020 	lw	t0,32(sp)
    110c:	8fa90024 	lw	t1,36(sp)
    1110:	3c040000 	lui	a0,0x0
    1114:	3c060000 	lui	a2,0x0
    1118:	afa80028 	sw	t0,40(sp)
    111c:	afa9002c 	sw	t1,44(sp)
    1120:	8e050008 	lw	a1,8(s0)
    1124:	24c60298 	addiu	a2,a2,664
    1128:	24840288 	addiu	a0,a0,648
    112c:	0c000000 	jal	0 <GameState_FaultPrint>
    1130:	24070440 	li	a3,1088
    1134:	3c040000 	lui	a0,0x0
    1138:	0c000000 	jal	0 <GameState_FaultPrint>
    113c:	24840000 	addiu	a0,a0,0
    1140:	3c040000 	lui	a0,0x0
    1144:	0c000000 	jal	0 <GameState_FaultPrint>
    1148:	24840000 	addiu	a0,a0,0
    114c:	3c040000 	lui	a0,0x0
    1150:	0c000000 	jal	0 <GameState_FaultPrint>
    1154:	24840000 	addiu	a0,a0,0
    1158:	3c0a0000 	lui	t2,0x0
    115c:	8d4a0000 	lw	t2,0(t2)
    1160:	3c040000 	lui	a0,0x0
    1164:	854b0134 	lh	t3,308(t2)
    1168:	15600003 	bnez	t3,1178 <GameState_Init+0x228>
    116c:	00000000 	nop
    1170:	0c000000 	jal	0 <GameState_FaultPrint>
    1174:	24840000 	addiu	a0,a0,0
    1178:	3c040000 	lui	a0,0x0
    117c:	0c000000 	jal	0 <GameState_FaultPrint>
    1180:	24840000 	addiu	a0,a0,0
    1184:	0c000000 	jal	0 <GameState_FaultPrint>
    1188:	00000000 	nop
    118c:	8e040000 	lw	a0,0(s0)
    1190:	00002825 	move	a1,zero
    1194:	24060001 	li	a2,1
    1198:	0c000000 	jal	0 <GameState_FaultPrint>
    119c:	2484005c 	addiu	a0,a0,92
    11a0:	0c000000 	jal	0 <GameState_FaultPrint>
    11a4:	00000000 	nop
    11a8:	8fac0028 	lw	t4,40(sp)
    11ac:	8fad002c 	lw	t5,44(sp)
    11b0:	24060000 	li	a2,0
    11b4:	004c2023 	subu	a0,v0,t4
    11b8:	006d082b 	sltu	at,v1,t5
    11bc:	00812023 	subu	a0,a0,at
    11c0:	24070040 	li	a3,64
    11c4:	0c000000 	jal	0 <GameState_FaultPrint>
    11c8:	006d2823 	subu	a1,v1,t5
    11cc:	00402025 	move	a0,v0
    11d0:	00602825 	move	a1,v1
    11d4:	24060000 	li	a2,0
    11d8:	0c000000 	jal	0 <GameState_FaultPrint>
    11dc:	24070bb8 	li	a3,3000
    11e0:	3c040000 	lui	a0,0x0
    11e4:	248402a4 	addiu	a0,a0,676
    11e8:	00403025 	move	a2,v0
    11ec:	0c000000 	jal	0 <GameState_FaultPrint>
    11f0:	00603825 	move	a3,v1
    11f4:	3c040000 	lui	a0,0x0
    11f8:	3c050000 	lui	a1,0x0
    11fc:	24a50000 	addiu	a1,a1,0
    1200:	24840000 	addiu	a0,a0,0
    1204:	00003025 	move	a2,zero
    1208:	0c000000 	jal	0 <GameState_FaultPrint>
    120c:	00003825 	move	a3,zero
    1210:	3c040000 	lui	a0,0x0
    1214:	0c000000 	jal	0 <GameState_FaultPrint>
    1218:	248402c4 	addiu	a0,a0,708
    121c:	8fbf001c 	lw	ra,28(sp)
    1220:	8fb00018 	lw	s0,24(sp)
    1224:	27bd0030 	addiu	sp,sp,48
    1228:	03e00008 	jr	ra
    122c:	00000000 	nop

00001230 <GameState_Destroy>:
    1230:	27bdffe0 	addiu	sp,sp,-32
    1234:	afb00018 	sw	s0,24(sp)
    1238:	00808025 	move	s0,a0
    123c:	afbf001c 	sw	ra,28(sp)
    1240:	3c040000 	lui	a0,0x0
    1244:	0c000000 	jal	0 <GameState_FaultPrint>
    1248:	248402e0 	addiu	a0,a0,736
    124c:	0c000000 	jal	0 <GameState_FaultPrint>
    1250:	00000000 	nop
    1254:	0c000000 	jal	0 <GameState_FaultPrint>
    1258:	00000000 	nop
    125c:	8e040000 	lw	a0,0(s0)
    1260:	00002825 	move	a1,zero
    1264:	24060001 	li	a2,1
    1268:	0c000000 	jal	0 <GameState_FaultPrint>
    126c:	2484005c 	addiu	a0,a0,92
    1270:	3c040000 	lui	a0,0x0
    1274:	3c060000 	lui	a2,0x0
    1278:	24c60308 	addiu	a2,a2,776
    127c:	248402f8 	addiu	a0,a0,760
    1280:	8e050008 	lw	a1,8(s0)
    1284:	0c000000 	jal	0 <GameState_FaultPrint>
    1288:	24070473 	li	a3,1139
    128c:	8e020008 	lw	v0,8(s0)
    1290:	10400003 	beqz	v0,12a0 <GameState_Destroy+0x70>
    1294:	00000000 	nop
    1298:	0040f809 	jalr	v0
    129c:	02002025 	move	a0,s0
    12a0:	0c000000 	jal	0 <GameState_FaultPrint>
    12a4:	00000000 	nop
    12a8:	3c040000 	lui	a0,0x0
    12ac:	0c000000 	jal	0 <GameState_FaultPrint>
    12b0:	24840000 	addiu	a0,a0,0
    12b4:	3c040000 	lui	a0,0x0
    12b8:	0c000000 	jal	0 <GameState_FaultPrint>
    12bc:	24840000 	addiu	a0,a0,0
    12c0:	3c040000 	lui	a0,0x0
    12c4:	0c000000 	jal	0 <GameState_FaultPrint>
    12c8:	24840000 	addiu	a0,a0,0
    12cc:	3c040000 	lui	a0,0x0
    12d0:	0c000000 	jal	0 <GameState_FaultPrint>
    12d4:	24840000 	addiu	a0,a0,0
    12d8:	3c0e0000 	lui	t6,0x0
    12dc:	8dce0000 	lw	t6,0(t6)
    12e0:	3c040000 	lui	a0,0x0
    12e4:	85cf0134 	lh	t7,308(t6)
    12e8:	15e00003 	bnez	t7,12f8 <GameState_Destroy+0xc8>
    12ec:	00000000 	nop
    12f0:	0c000000 	jal	0 <GameState_FaultPrint>
    12f4:	24840000 	addiu	a0,a0,0
    12f8:	0c000000 	jal	0 <GameState_FaultPrint>
    12fc:	26040074 	addiu	a0,s0,116
    1300:	0c000000 	jal	0 <GameState_FaultPrint>
    1304:	26040084 	addiu	a0,s0,132
    1308:	0c000000 	jal	0 <GameState_FaultPrint>
    130c:	00000000 	nop
    1310:	3c040000 	lui	a0,0x0
    1314:	0c000000 	jal	0 <GameState_FaultPrint>
    1318:	24840000 	addiu	a0,a0,0
    131c:	3c040000 	lui	a0,0x0
    1320:	0c000000 	jal	0 <GameState_FaultPrint>
    1324:	24840314 	addiu	a0,a0,788
    1328:	8fbf001c 	lw	ra,28(sp)
    132c:	8fb00018 	lw	s0,24(sp)
    1330:	27bd0020 	addiu	sp,sp,32
    1334:	03e00008 	jr	ra
    1338:	00000000 	nop

0000133c <GameState_GetInit>:
    133c:	03e00008 	jr	ra
    1340:	8c82000c 	lw	v0,12(a0)

00001344 <GameState_GetSize>:
    1344:	03e00008 	jr	ra
    1348:	8c820010 	lw	v0,16(a0)

0000134c <GameState_IsRunning>:
    134c:	03e00008 	jr	ra
    1350:	8c820098 	lw	v0,152(a0)

00001354 <GameState_Alloc>:
    1354:	27bdffd8 	addiu	sp,sp,-40
    1358:	afb0001c 	sw	s0,28(sp)
    135c:	afbf0024 	sw	ra,36(sp)
    1360:	24900074 	addiu	s0,a0,116
    1364:	afb10020 	sw	s1,32(sp)
    1368:	afa5002c 	sw	a1,44(sp)
    136c:	afa60030 	sw	a2,48(sp)
    1370:	afa70034 	sw	a3,52(sp)
    1374:	0c000000 	jal	0 <GameState_FaultPrint>
    1378:	02002025 	move	a0,s0
    137c:	10400005 	beqz	v0,1394 <GameState_Alloc+0x40>
    1380:	3c040000 	lui	a0,0x0
    1384:	0c000000 	jal	0 <GameState_FaultPrint>
    1388:	2484032c 	addiu	a0,a0,812
    138c:	1000001a 	b	13f8 <GameState_Alloc+0xa4>
    1390:	00008825 	move	s1,zero
    1394:	0c000000 	jal	0 <GameState_FaultPrint>
    1398:	02002025 	move	a0,s0
    139c:	8fa5002c 	lw	a1,44(sp)
    13a0:	0045082b 	sltu	at,v0,a1
    13a4:	1020000a 	beqz	at,13d0 <GameState_Alloc+0x7c>
    13a8:	00000000 	nop
    13ac:	0c000000 	jal	0 <GameState_FaultPrint>
    13b0:	02002025 	move	a0,s0
    13b4:	3c040000 	lui	a0,0x0
    13b8:	24840344 	addiu	a0,a0,836
    13bc:	8fa5002c 	lw	a1,44(sp)
    13c0:	0c000000 	jal	0 <GameState_FaultPrint>
    13c4:	00403025 	move	a2,v0
    13c8:	1000000b 	b	13f8 <GameState_Alloc+0xa4>
    13cc:	00008825 	move	s1,zero
    13d0:	0c000000 	jal	0 <GameState_FaultPrint>
    13d4:	02002025 	move	a0,s0
    13d8:	00408825 	move	s1,v0
    13dc:	0c000000 	jal	0 <GameState_FaultPrint>
    13e0:	02002025 	move	a0,s0
    13e4:	10400004 	beqz	v0,13f8 <GameState_Alloc+0xa4>
    13e8:	3c040000 	lui	a0,0x0
    13ec:	0c000000 	jal	0 <GameState_FaultPrint>
    13f0:	2484038c 	addiu	a0,a0,908
    13f4:	00008825 	move	s1,zero
    13f8:	12200010 	beqz	s1,143c <GameState_Alloc+0xe8>
    13fc:	3c040000 	lui	a0,0x0
    1400:	0c000000 	jal	0 <GameState_FaultPrint>
    1404:	248403a8 	addiu	a0,a0,936
    1408:	8fa5002c 	lw	a1,44(sp)
    140c:	8fae0030 	lw	t6,48(sp)
    1410:	8faf0034 	lw	t7,52(sp)
    1414:	3c040000 	lui	a0,0x0
    1418:	248403b0 	addiu	a0,a0,944
    141c:	02203025 	move	a2,s1
    1420:	02253821 	addu	a3,s1,a1
    1424:	afae0010 	sw	t6,16(sp)
    1428:	0c000000 	jal	0 <GameState_FaultPrint>
    142c:	afaf0014 	sw	t7,20(sp)
    1430:	3c040000 	lui	a0,0x0
    1434:	0c000000 	jal	0 <GameState_FaultPrint>
    1438:	248403d4 	addiu	a0,a0,980
    143c:	8fbf0024 	lw	ra,36(sp)
    1440:	02201025 	move	v0,s1
    1444:	8fb10020 	lw	s1,32(sp)
    1448:	8fb0001c 	lw	s0,28(sp)
    144c:	03e00008 	jr	ra
    1450:	27bd0028 	addiu	sp,sp,40

00001454 <GameState_AllocEndAlign16>:
    1454:	27bdffe8 	addiu	sp,sp,-24
    1458:	afbf0014 	sw	ra,20(sp)
    145c:	0c000000 	jal	0 <GameState_FaultPrint>
    1460:	24840074 	addiu	a0,a0,116
    1464:	8fbf0014 	lw	ra,20(sp)
    1468:	27bd0018 	addiu	sp,sp,24
    146c:	03e00008 	jr	ra
    1470:	00000000 	nop

00001474 <GameState_GetArenaSize>:
    1474:	27bdffe8 	addiu	sp,sp,-24
    1478:	afbf0014 	sw	ra,20(sp)
    147c:	0c000000 	jal	0 <GameState_FaultPrint>
    1480:	24840074 	addiu	a0,a0,116
    1484:	8fbf0014 	lw	ra,20(sp)
    1488:	27bd0018 	addiu	sp,sp,24
    148c:	03e00008 	jr	ra
    1490:	00000000 	nop
	...
