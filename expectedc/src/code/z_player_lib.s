
build/src/code/z_player_lib.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Player_SetBootData>:
       0:	3c060000 	lui	a2,0x0
       4:	24c60000 	addiu	a2,a2,0
       8:	8ccf0000 	lw	t7,0(a2)
       c:	240e07d0 	li	t6,2000
      10:	24180172 	li	t8,370
      14:	a5ee004a 	sh	t6,74(t7)
      18:	8cd90000 	lw	t9,0(a2)
      1c:	3c080000 	lui	t0,0x0
      20:	24010001 	li	at,1
      24:	a7380074 	sh	t8,116(t9)
      28:	80a2014f 	lb	v0,335(a1)
      2c:	3c180000 	lui	t8,0x0
      30:	27180000 	addiu	t8,t8,0
      34:	14400006 	bnez	v0,50 <Player_SetBootData+0x50>
      38:	00000000 	nop
      3c:	8d080004 	lw	t0,4(t0)
      40:	51000011 	beqzl	t0,88 <Player_SetBootData+0x88>
      44:	00027900 	sll	t7,v0,0x4
      48:	1000000e 	b	84 <Player_SetBootData+0x84>
      4c:	24020005 	li	v0,5
      50:	5441000d 	bnel	v0,at,88 <Player_SetBootData+0x88>
      54:	00027900 	sll	t7,v0,0x4
      58:	8ca9067c 	lw	t1,1660(a1)
      5c:	00095100 	sll	t2,t1,0x4
      60:	05430003 	bgezl	t2,70 <Player_SetBootData+0x70>
      64:	8ccc0000 	lw	t4,0(a2)
      68:	24020004 	li	v0,4
      6c:	8ccc0000 	lw	t4,0(a2)
      70:	240b01f4 	li	t3,500
      74:	240d0064 	li	t5,100
      78:	a58b004a 	sh	t3,74(t4)
      7c:	8cce0000 	lw	t6,0(a2)
      80:	a5cd0074 	sh	t5,116(t6)
      84:	00027900 	sll	t7,v0,0x4
      88:	01e27821 	addu	t7,t7,v0
      8c:	000f7840 	sll	t7,t7,0x1
      90:	01f81821 	addu	v1,t7,t8
      94:	84790000 	lh	t9,0(v1)
      98:	8cc80000 	lw	t0,0(a2)
      9c:	24010002 	li	at,2
      a0:	a519003a 	sh	t9,58(t0)
      a4:	8cca0000 	lw	t2,0(a2)
      a8:	84690002 	lh	t1,2(v1)
      ac:	a5490050 	sh	t1,80(t2)
      b0:	8ccc0000 	lw	t4,0(a2)
      b4:	846b0004 	lh	t3,4(v1)
      b8:	a58b0054 	sh	t3,84(t4)
      bc:	8cce0000 	lw	t6,0(a2)
      c0:	846d0006 	lh	t5,6(v1)
      c4:	a5cd0058 	sh	t5,88(t6)
      c8:	8cd80000 	lw	t8,0(a2)
      cc:	846f0008 	lh	t7,8(v1)
      d0:	a70f005a 	sh	t7,90(t8)
      d4:	8cc80000 	lw	t0,0(a2)
      d8:	8479000a 	lh	t9,10(v1)
      dc:	a519005c 	sh	t9,92(t0)
      e0:	8cca0000 	lw	t2,0(a2)
      e4:	8469000c 	lh	t1,12(v1)
      e8:	a549005e 	sh	t1,94(t2)
      ec:	8ccc0000 	lw	t4,0(a2)
      f0:	846b000e 	lh	t3,14(v1)
      f4:	a58b0060 	sh	t3,96(t4)
      f8:	8cce0000 	lw	t6,0(a2)
      fc:	846d0010 	lh	t5,16(v1)
     100:	a5cd006a 	sh	t5,106(t6)
     104:	8cd80000 	lw	t8,0(a2)
     108:	846f0012 	lh	t7,18(v1)
     10c:	a70f006e 	sh	t7,110(t8)
     110:	8cc80000 	lw	t0,0(a2)
     114:	84790014 	lh	t9,20(v1)
     118:	a519009c 	sh	t9,156(t0)
     11c:	8cca0000 	lw	t2,0(a2)
     120:	84690016 	lh	t1,22(v1)
     124:	a549009e 	sh	t1,158(t2)
     128:	8ccc0000 	lw	t4,0(a2)
     12c:	846b0018 	lh	t3,24(v1)
     130:	a58b0758 	sh	t3,1880(t4)
     134:	8cce0000 	lw	t6,0(a2)
     138:	846d001a 	lh	t5,26(v1)
     13c:	3c0b0001 	lui	t3,0x1
     140:	01645821 	addu	t3,t3,a0
     144:	a5cd075a 	sh	t5,1882(t6)
     148:	8cd80000 	lw	t8,0(a2)
     14c:	846f001c 	lh	t7,28(v1)
     150:	a70f075c 	sh	t7,1884(t8)
     154:	8cc80000 	lw	t0,0(a2)
     158:	8479001e 	lh	t9,30(v1)
     15c:	a519075e 	sh	t9,1886(t0)
     160:	8cca0000 	lw	t2,0(a2)
     164:	84690020 	lh	t1,32(v1)
     168:	a5490492 	sh	t1,1170(t2)
     16c:	916b1cbf 	lbu	t3,7359(t3)
     170:	15610004 	bne	t3,at,184 <Player_SetBootData+0x184>
     174:	00000000 	nop
     178:	8ccd0000 	lw	t5,0(a2)
     17c:	240c01f4 	li	t4,500
     180:	a5ac006e 	sh	t4,110(t5)
     184:	03e00008 	jr	ra
     188:	00000000 	nop

0000018c <Player_InBlockingCsMode>:
     18c:	27bdffe8 	addiu	sp,sp,-24
     190:	afbf0014 	sw	ra,20(sp)
     194:	8ca3067c 	lw	v1,1660(a1)
     198:	3c012000 	lui	at,0x2000
     19c:	34210080 	ori	at,at,0x80
     1a0:	00611024 	and	v0,v1,at
     1a4:	0002102b 	sltu	v0,zero,v0
     1a8:	54400020 	bnezl	v0,22c <Player_InBlockingCsMode+0xa0>
     1ac:	8fbf0014 	lw	ra,20(sp)
     1b0:	90a20444 	lbu	v0,1092(a1)
     1b4:	0002102b 	sltu	v0,zero,v0
     1b8:	5440001c 	bnezl	v0,22c <Player_InBlockingCsMode+0xa0>
     1bc:	8fbf0014 	lw	ra,20(sp)
     1c0:	3c020001 	lui	v0,0x1
     1c4:	00441021 	addu	v0,v0,a0
     1c8:	80421e15 	lb	v0,7701(v0)
     1cc:	38420014 	xori	v0,v0,0x14
     1d0:	2c420001 	sltiu	v0,v0,1
     1d4:	54400015 	bnezl	v0,22c <Player_InBlockingCsMode+0xa0>
     1d8:	8fbf0014 	lw	ra,20(sp)
     1dc:	30620001 	andi	v0,v1,0x1
     1e0:	0002102b 	sltu	v0,zero,v0
     1e4:	54400011 	bnezl	v0,22c <Player_InBlockingCsMode+0xa0>
     1e8:	8fbf0014 	lw	ra,20(sp)
     1ec:	90a20692 	lbu	v0,1682(a1)
     1f0:	30420080 	andi	v0,v0,0x80
     1f4:	0002102b 	sltu	v0,zero,v0
     1f8:	5440000c 	bnezl	v0,22c <Player_InBlockingCsMode+0xa0>
     1fc:	8fbf0014 	lw	ra,20(sp)
     200:	3c020000 	lui	v0,0x0
     204:	844213f0 	lh	v0,5104(v0)
     208:	00a02025 	move	a0,a1
     20c:	0002102b 	sltu	v0,zero,v0
     210:	50400006 	beqzl	v0,22c <Player_InBlockingCsMode+0xa0>
     214:	8fbf0014 	lw	ra,20(sp)
     218:	0c000000 	jal	0 <Player_SetBootData>
     21c:	80a50154 	lb	a1,340(a1)
     220:	28420000 	slti	v0,v0,0
     224:	38420001 	xori	v0,v0,0x1
     228:	8fbf0014 	lw	ra,20(sp)
     22c:	27bd0018 	addiu	sp,sp,24
     230:	03e00008 	jr	ra
     234:	00000000 	nop

00000238 <Player_InCsMode>:
     238:	27bdffe0 	addiu	sp,sp,-32
     23c:	afbf0014 	sw	ra,20(sp)
     240:	8c851c44 	lw	a1,7236(a0)
     244:	0c000000 	jal	0 <Player_SetBootData>
     248:	afa5001c 	sw	a1,28(sp)
     24c:	0002102b 	sltu	v0,zero,v0
     250:	14400004 	bnez	v0,264 <Player_InCsMode+0x2c>
     254:	8fa5001c 	lw	a1,28(sp)
     258:	90a206ad 	lbu	v0,1709(a1)
     25c:	38420004 	xori	v0,v0,0x4
     260:	2c420001 	sltiu	v0,v0,1
     264:	8fbf0014 	lw	ra,20(sp)
     268:	27bd0020 	addiu	sp,sp,32
     26c:	03e00008 	jr	ra
     270:	00000000 	nop

00000274 <func_8008E9C4>:
     274:	8c82067c 	lw	v0,1660(a0)
     278:	03e00008 	jr	ra
     27c:	30420010 	andi	v0,v0,0x10

00000280 <Player_IsChildWithHylianShield>:
     280:	3c020000 	lui	v0,0x0
     284:	8c420004 	lw	v0,4(v0)
     288:	0002102b 	sltu	v0,zero,v0
     28c:	10400004 	beqz	v0,2a0 <Player_IsChildWithHylianShield+0x20>
     290:	00000000 	nop
     294:	8082014e 	lb	v0,334(a0)
     298:	38420002 	xori	v0,v0,0x2
     29c:	2c420001 	sltiu	v0,v0,1
     2a0:	03e00008 	jr	ra
     2a4:	00000000 	nop

000002a8 <Player_ActionToModelGroup>:
     2a8:	3c030000 	lui	v1,0x0
     2ac:	00651821 	addu	v1,v1,a1
     2b0:	90630000 	lbu	v1,0(v1)
     2b4:	27bdffe0 	addiu	sp,sp,-32
     2b8:	24010002 	li	at,2
     2bc:	14610007 	bne	v1,at,2dc <Player_ActionToModelGroup+0x34>
     2c0:	afbf0014 	sw	ra,20(sp)
     2c4:	0c000000 	jal	0 <Player_SetBootData>
     2c8:	afa3001c 	sw	v1,28(sp)
     2cc:	10400003 	beqz	v0,2dc <Player_ActionToModelGroup+0x34>
     2d0:	8fa3001c 	lw	v1,28(sp)
     2d4:	10000002 	b	2e0 <Player_ActionToModelGroup+0x38>
     2d8:	24020001 	li	v0,1
     2dc:	00601025 	move	v0,v1
     2e0:	8fbf0014 	lw	ra,20(sp)
     2e4:	27bd0020 	addiu	sp,sp,32
     2e8:	03e00008 	jr	ra
     2ec:	00000000 	nop

000002f0 <Player_SetModelsForHoldingShield>:
     2f0:	27bdffe8 	addiu	sp,sp,-24
     2f4:	afbf0014 	sw	ra,20(sp)
     2f8:	8c8e067c 	lw	t6,1660(a0)
     2fc:	000e7a40 	sll	t7,t6,0x9
     300:	05e30033 	bgezl	t7,3d0 <Player_SetModelsForHoldingShield+0xe0>
     304:	8fbf0014 	lw	ra,20(sp)
     308:	80820154 	lb	v0,340(a0)
     30c:	04400004 	bltz	v0,320 <Player_SetModelsForHoldingShield+0x30>
     310:	00000000 	nop
     314:	80980151 	lb	t8,337(a0)
     318:	5702002d 	bnel	t8,v0,3d0 <Player_SetModelsForHoldingShield+0xe0>
     31c:	8fbf0014 	lw	ra,20(sp)
     320:	0c000000 	jal	0 <Player_SetBootData>
     324:	afa40018 	sw	a0,24(sp)
     328:	14400028 	bnez	v0,3cc <Player_SetModelsForHoldingShield+0xdc>
     32c:	8fa40018 	lw	a0,24(sp)
     330:	0c000000 	jal	0 <Player_SetBootData>
     334:	afa40018 	sw	a0,24(sp)
     338:	14400024 	bnez	v0,3cc <Player_SetModelsForHoldingShield+0xdc>
     33c:	8fa40018 	lw	a0,24(sp)
     340:	3c050000 	lui	a1,0x0
     344:	2419000a 	li	t9,10
     348:	24a50000 	addiu	a1,a1,0
     34c:	3c060000 	lui	a2,0x0
     350:	a099015d 	sb	t9,349(a0)
     354:	8ca80004 	lw	t0,4(a1)
     358:	24c60000 	addiu	a2,a2,0
     35c:	8cca0028 	lw	t2,40(a2)
     360:	9082015e 	lbu	v0,350(a0)
     364:	00084880 	sll	t1,t0,0x2
     368:	24010012 	li	at,18
     36c:	012a5821 	addu	t3,t1,t2
     370:	ac8b0160 	sw	t3,352(a0)
     374:	14410005 	bne	v0,at,38c <Player_SetModelsForHoldingShield+0x9c>
     378:	00401825 	move	v1,v0
     37c:	240c0010 	li	t4,16
     380:	a08c015e 	sb	t4,350(a0)
     384:	10000006 	b	3a0 <Player_SetModelsForHoldingShield+0xb0>
     388:	318200ff 	andi	v0,t4,0xff
     38c:	24010013 	li	at,19
     390:	14610003 	bne	v1,at,3a0 <Player_SetModelsForHoldingShield+0xb0>
     394:	240d0011 	li	t5,17
     398:	a08d015e 	sb	t5,350(a0)
     39c:	31a200ff 	andi	v0,t5,0xff
     3a0:	0002c080 	sll	t8,v0,0x2
     3a4:	8cae0004 	lw	t6,4(a1)
     3a8:	00d8c821 	addu	t9,a2,t8
     3ac:	8f280000 	lw	t0,0(t9)
     3b0:	000e7880 	sll	t7,t6,0x2
     3b4:	240a0002 	li	t2,2
     3b8:	240bffff 	li	t3,-1
     3bc:	01e84821 	addu	t1,t7,t0
     3c0:	ac890168 	sw	t1,360(a0)
     3c4:	a08a015b 	sb	t2,347(a0)
     3c8:	a08b0154 	sb	t3,340(a0)
     3cc:	8fbf0014 	lw	ra,20(sp)
     3d0:	27bd0018 	addiu	sp,sp,24
     3d4:	03e00008 	jr	ra
     3d8:	00000000 	nop

000003dc <Player_SetModels>:
     3dc:	00057080 	sll	t6,a1,0x2
     3e0:	3c0f0000 	lui	t7,0x0
     3e4:	25ef0000 	addiu	t7,t7,0
     3e8:	01c57021 	addu	t6,t6,a1
     3ec:	01cf1021 	addu	v0,t6,t7
     3f0:	90580001 	lbu	t8,1(v0)
     3f4:	27bdffe8 	addiu	sp,sp,-24
     3f8:	afbf0014 	sw	ra,20(sp)
     3fc:	a098015c 	sb	t8,348(a0)
     400:	90590002 	lbu	t9,2(v0)
     404:	3c030000 	lui	v1,0x0
     408:	3c060000 	lui	a2,0x0
     40c:	a099015d 	sb	t9,349(a0)
     410:	90480003 	lbu	t0,3(v0)
     414:	24c60000 	addiu	a2,a2,0
     418:	24630000 	addiu	v1,v1,0
     41c:	a088015e 	sb	t0,350(a0)
     420:	904b0001 	lbu	t3,1(v0)
     424:	8c690004 	lw	t1,4(v1)
     428:	000b6080 	sll	t4,t3,0x2
     42c:	00cc6821 	addu	t5,a2,t4
     430:	8dae0000 	lw	t6,0(t5)
     434:	00095080 	sll	t2,t1,0x2
     438:	014e7821 	addu	t7,t2,t6
     43c:	ac8f0164 	sw	t7,356(a0)
     440:	90480002 	lbu	t0,2(v0)
     444:	8c780004 	lw	t8,4(v1)
     448:	00084880 	sll	t1,t0,0x2
     44c:	00c95821 	addu	t3,a2,t1
     450:	8d6c0000 	lw	t4,0(t3)
     454:	0018c880 	sll	t9,t8,0x2
     458:	032c6821 	addu	t5,t9,t4
     45c:	ac8d0160 	sw	t5,352(a0)
     460:	904f0003 	lbu	t7,3(v0)
     464:	8c6a0004 	lw	t2,4(v1)
     468:	000fc080 	sll	t8,t7,0x2
     46c:	00d84021 	addu	t0,a2,t8
     470:	8d090000 	lw	t1,0(t0)
     474:	000a7080 	sll	t6,t2,0x2
     478:	01c95821 	addu	t3,t6,t1
     47c:	ac8b0168 	sw	t3,360(a0)
     480:	904d0004 	lbu	t5,4(v0)
     484:	8c790004 	lw	t9,4(v1)
     488:	000d5080 	sll	t2,t5,0x2
     48c:	00ca7821 	addu	t7,a2,t2
     490:	8df80000 	lw	t8,0(t7)
     494:	00196080 	sll	t4,t9,0x2
     498:	01984021 	addu	t0,t4,t8
     49c:	0c000000 	jal	0 <Player_SetBootData>
     4a0:	ac88016c 	sw	t0,364(a0)
     4a4:	8fbf0014 	lw	ra,20(sp)
     4a8:	27bd0018 	addiu	sp,sp,24
     4ac:	03e00008 	jr	ra
     4b0:	00000000 	nop

000004b4 <Player_SetModelGroup>:
     4b4:	27bdffe8 	addiu	sp,sp,-24
     4b8:	afbf0014 	sw	ra,20(sp)
     4bc:	24010001 	li	at,1
     4c0:	14a10003 	bne	a1,at,4d0 <Player_SetModelGroup+0x1c>
     4c4:	a0850158 	sb	a1,344(a0)
     4c8:	10000007 	b	4e8 <Player_SetModelGroup+0x34>
     4cc:	a080015b 	sb	zero,347(a0)
     4d0:	00057080 	sll	t6,a1,0x2
     4d4:	01c57021 	addu	t6,t6,a1
     4d8:	3c0f0000 	lui	t7,0x0
     4dc:	01ee7821 	addu	t7,t7,t6
     4e0:	91ef0000 	lbu	t7,0(t7)
     4e4:	a08f015b 	sb	t7,347(a0)
     4e8:	9098015b 	lbu	t8,347(a0)
     4ec:	2b010003 	slti	at,t8,3
     4f0:	10200005 	beqz	at,508 <Player_SetModelGroup+0x54>
     4f4:	00000000 	nop
     4f8:	8099014e 	lb	t9,334(a0)
     4fc:	17200002 	bnez	t9,508 <Player_SetModelGroup+0x54>
     500:	00000000 	nop
     504:	a080015b 	sb	zero,347(a0)
     508:	0c000000 	jal	0 <Player_SetBootData>
     50c:	00000000 	nop
     510:	8fbf0014 	lw	ra,20(sp)
     514:	27bd0018 	addiu	sp,sp,24
     518:	03e00008 	jr	ra
     51c:	00000000 	nop

00000520 <func_8008EC70>:
     520:	27bdffe8 	addiu	sp,sp,-24
     524:	afbf0014 	sw	ra,20(sp)
     528:	80850151 	lb	a1,337(a0)
     52c:	a0850154 	sb	a1,340(a0)
     530:	0c000000 	jal	0 <Player_SetBootData>
     534:	afa40018 	sw	a0,24(sp)
     538:	8fa40018 	lw	a0,24(sp)
     53c:	0c000000 	jal	0 <Player_SetBootData>
     540:	00402825 	move	a1,v0
     544:	8fa40018 	lw	a0,24(sp)
     548:	a08006ad 	sb	zero,1709(a0)
     54c:	8fbf0014 	lw	ra,20(sp)
     550:	27bd0018 	addiu	sp,sp,24
     554:	03e00008 	jr	ra
     558:	00000000 	nop

0000055c <Player_SetEquipmentData>:
     55c:	27bdffe8 	addiu	sp,sp,-24
     560:	afbf0014 	sw	ra,20(sp)
     564:	afa40018 	sw	a0,24(sp)
     568:	90ae0444 	lbu	t6,1092(a1)
     56c:	24010056 	li	at,86
     570:	00a03025 	move	a2,a1
     574:	11c10031 	beq	t6,at,63c <Player_SetEquipmentData+0xe0>
     578:	3c020000 	lui	v0,0x0
     57c:	3c030000 	lui	v1,0x0
     580:	24630000 	addiu	v1,v1,0
     584:	24420000 	addiu	v0,v0,0
     588:	3c040000 	lui	a0,0x0
     58c:	944f0070 	lhu	t7,112(v0)
     590:	94780002 	lhu	t8,2(v1)
     594:	24840000 	addiu	a0,a0,0
     598:	90880001 	lbu	t0,1(a0)
     59c:	01f8c824 	and	t9,t7,t8
     5a0:	240500ff 	li	a1,255
     5a4:	01194807 	srav	t1,t9,t0
     5a8:	a0c9014e 	sb	t1,334(a2)
     5ac:	944a0070 	lhu	t2,112(v0)
     5b0:	946b0004 	lhu	t3,4(v1)
     5b4:	908d0002 	lbu	t5,2(a0)
     5b8:	014b6024 	and	t4,t2,t3
     5bc:	01ac7007 	srav	t6,t4,t5
     5c0:	25cfffff 	addiu	t7,t6,-1
     5c4:	a0cf014c 	sb	t7,332(a2)
     5c8:	94790006 	lhu	t9,6(v1)
     5cc:	94580070 	lhu	t8,112(v0)
     5d0:	90890003 	lbu	t1,3(a0)
     5d4:	00c02025 	move	a0,a2
     5d8:	03194024 	and	t0,t8,t9
     5dc:	01285007 	srav	t2,t0,t1
     5e0:	254bffff 	addiu	t3,t2,-1
     5e4:	a0cb014f 	sb	t3,335(a2)
     5e8:	904c13e2 	lbu	t4,5090(v0)
     5ec:	54ac0004 	bnel	a1,t4,600 <Player_SetEquipmentData+0xa4>
     5f0:	90430068 	lbu	v1,104(v0)
     5f4:	10000008 	b	618 <Player_SetEquipmentData+0xbc>
     5f8:	a0c5014d 	sb	a1,333(a2)
     5fc:	90430068 	lbu	v1,104(v0)
     600:	24010055 	li	at,85
     604:	14610003 	bne	v1,at,614 <Player_SetEquipmentData+0xb8>
     608:	00601025 	move	v0,v1
     60c:	10000001 	b	614 <Player_SetEquipmentData+0xb8>
     610:	2402003d 	li	v0,61
     614:	a0c2014d 	sb	v0,333(a2)
     618:	80c50151 	lb	a1,337(a2)
     61c:	0c000000 	jal	0 <Player_SetBootData>
     620:	afa6001c 	sw	a2,28(sp)
     624:	8fa4001c 	lw	a0,28(sp)
     628:	0c000000 	jal	0 <Player_SetBootData>
     62c:	00402825 	move	a1,v0
     630:	8fa5001c 	lw	a1,28(sp)
     634:	0c000000 	jal	0 <Player_SetBootData>
     638:	8fa40018 	lw	a0,24(sp)
     63c:	8fbf0014 	lw	ra,20(sp)
     640:	27bd0018 	addiu	sp,sp,24
     644:	03e00008 	jr	ra
     648:	00000000 	nop

0000064c <Player_UpdateBottleHeld>:
     64c:	27bdffe8 	addiu	sp,sp,-24
     650:	afa5001c 	sw	a1,28(sp)
     654:	8fae001c 	lw	t6,28(sp)
     658:	afbf0014 	sw	ra,20(sp)
     65c:	afa60020 	sw	a2,32(sp)
     660:	afa70024 	sw	a3,36(sp)
     664:	93a50023 	lbu	a1,35(sp)
     668:	0c000000 	jal	0 <Player_SetBootData>
     66c:	91c60150 	lbu	a2,336(t6)
     670:	8fa30020 	lw	v1,32(sp)
     674:	24010014 	li	at,20
     678:	8fa2001c 	lw	v0,28(sp)
     67c:	10610003 	beq	v1,at,68c <Player_UpdateBottleHeld+0x40>
     680:	8fa40024 	lw	a0,36(sp)
     684:	a0430152 	sb	v1,338(v0)
     688:	a0440151 	sb	a0,337(v0)
     68c:	a0440154 	sb	a0,340(v0)
     690:	8fbf0014 	lw	ra,20(sp)
     694:	27bd0018 	addiu	sp,sp,24
     698:	03e00008 	jr	ra
     69c:	00000000 	nop

000006a0 <func_8008EDF0>:
     6a0:	8c8e0680 	lw	t6,1664(a0)
     6a4:	2401dfff 	li	at,-8193
     6a8:	ac800664 	sw	zero,1636(a0)
     6ac:	01c17824 	and	t7,t6,at
     6b0:	03e00008 	jr	ra
     6b4:	ac8f0680 	sw	t7,1664(a0)

000006b8 <func_8008EE08>:
     6b8:	27bdffe8 	addiu	sp,sp,-24
     6bc:	afbf0014 	sw	ra,20(sp)
     6c0:	948e0088 	lhu	t6,136(a0)
     6c4:	31cf0001 	andi	t7,t6,0x1
     6c8:	55e00013 	bnezl	t7,718 <func_8008EE08+0x60>
     6cc:	8c88067c 	lw	t0,1660(a0)
     6d0:	8c82067c 	lw	v0,1660(a0)
     6d4:	3c0108a0 	lui	at,0x8a0
     6d8:	0041c024 	and	t8,v0,at
     6dc:	1700000d 	bnez	t8,714 <func_8008EE08+0x5c>
     6e0:	3c01000c 	lui	at,0xc
     6e4:	0041c824 	and	t9,v0,at
     6e8:	57200011 	bnezl	t9,730 <func_8008EE08+0x78>
     6ec:	3c01002c 	lui	at,0x2c
     6f0:	c4840028 	lwc1	$f4,40(a0)
     6f4:	c4860080 	lwc1	$f6,128(a0)
     6f8:	3c0142c8 	lui	at,0x42c8
     6fc:	44815000 	mtc1	at,$f10
     700:	46062201 	sub.s	$f8,$f4,$f6
     704:	460a403c 	c.lt.s	$f8,$f10
     708:	00000000 	nop
     70c:	45020008 	bc1fl	730 <func_8008EE08+0x78>
     710:	3c01002c 	lui	at,0x2c
     714:	8c88067c 	lw	t0,1660(a0)
     718:	3c01bff0 	lui	at,0xbff0
     71c:	34217fff 	ori	at,at,0x7fff
     720:	01014824 	and	t1,t0,at
     724:	10000007 	b	744 <func_8008EE08+0x8c>
     728:	ac89067c 	sw	t1,1660(a0)
     72c:	3c01002c 	lui	at,0x2c
     730:	00415024 	and	t2,v0,at
     734:	15400003 	bnez	t2,744 <func_8008EE08+0x8c>
     738:	3c010008 	lui	at,0x8
     73c:	00415825 	or	t3,v0,at
     740:	ac8b067c 	sw	t3,1660(a0)
     744:	0c000000 	jal	0 <Player_SetBootData>
     748:	00000000 	nop
     74c:	8fbf0014 	lw	ra,20(sp)
     750:	27bd0018 	addiu	sp,sp,24
     754:	03e00008 	jr	ra
     758:	00000000 	nop

0000075c <func_8008EEAC>:
     75c:	27bdffe0 	addiu	sp,sp,-32
     760:	afbf0014 	sw	ra,20(sp)
     764:	afa40020 	sw	a0,32(sp)
     768:	afa50024 	sw	a1,36(sp)
     76c:	8c861c44 	lw	a2,7236(a0)
     770:	00c02025 	move	a0,a2
     774:	0c000000 	jal	0 <Player_SetBootData>
     778:	afa6001c 	sw	a2,28(sp)
     77c:	8fa6001c 	lw	a2,28(sp)
     780:	8fa20024 	lw	v0,36(sp)
     784:	3c010001 	lui	at,0x1
     788:	8ccf067c 	lw	t7,1660(a2)
     78c:	acc20664 	sw	v0,1636(a2)
     790:	acc20684 	sw	v0,1668(a2)
     794:	01e1c025 	or	t8,t7,at
     798:	acd8067c 	sw	t8,1660(a2)
     79c:	8fa40020 	lw	a0,32(sp)
     7a0:	0c000000 	jal	0 <Player_SetBootData>
     7a4:	00002825 	move	a1,zero
     7a8:	00402025 	move	a0,v0
     7ac:	24050008 	li	a1,8
     7b0:	0c000000 	jal	0 <Player_SetBootData>
     7b4:	8fa60024 	lw	a2,36(sp)
     7b8:	8fa40020 	lw	a0,32(sp)
     7bc:	0c000000 	jal	0 <Player_SetBootData>
     7c0:	00002825 	move	a1,zero
     7c4:	00402025 	move	a0,v0
     7c8:	0c000000 	jal	0 <Player_SetBootData>
     7cc:	24050002 	li	a1,2
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	27bd0020 	addiu	sp,sp,32
     7d8:	03e00008 	jr	ra
     7dc:	00000000 	nop

000007e0 <func_8008EF30>:
     7e0:	8c831c44 	lw	v1,7236(a0)
     7e4:	3c010080 	lui	at,0x80
     7e8:	8c62067c 	lw	v0,1660(v1)
     7ec:	03e00008 	jr	ra
     7f0:	00411024 	and	v0,v0,at

000007f4 <func_8008EF44>:
     7f4:	3c010001 	lui	at,0x1
     7f8:	00240821 	addu	at,at,a0
     7fc:	24ae0001 	addiu	t6,a1,1
     800:	a02e1e5c 	sb	t6,7772(at)
     804:	03e00008 	jr	ra
     808:	24020001 	li	v0,1

0000080c <Player_IsBurningStickInRange>:
     80c:	27bdffd0 	addiu	sp,sp,-48
     810:	afbf0014 	sw	ra,20(sp)
     814:	afa7003c 	sw	a3,60(sp)
     818:	8c821c44 	lw	v0,7236(a0)
     81c:	44866000 	mtc1	a2,$f12
     820:	24010006 	li	at,6
     824:	804e0151 	lb	t6,337(v0)
     828:	55c1002a 	bnel	t6,at,8d4 <Player_IsBurningStickInRange+0xc8>
     82c:	00001025 	move	v0,zero
     830:	844f0860 	lh	t7,2144(v0)
     834:	244408b8 	addiu	a0,v0,2232
     838:	27a60020 	addiu	a2,sp,32
     83c:	51e00025 	beqzl	t7,8d4 <Player_IsBurningStickInRange+0xc8>
     840:	00001025 	move	v0,zero
     844:	0c000000 	jal	0 <Player_SetBootData>
     848:	e7ac0038 	swc1	$f12,56(sp)
     84c:	c7a00020 	lwc1	$f0,32(sp)
     850:	c7a20028 	lwc1	$f2,40(sp)
     854:	c7ac0038 	lwc1	$f12,56(sp)
     858:	46000102 	mul.s	$f4,$f0,$f0
     85c:	c7a00024 	lwc1	$f0,36(sp)
     860:	00001025 	move	v0,zero
     864:	46021182 	mul.s	$f6,$f2,$f2
     868:	46062200 	add.s	$f8,$f4,$f6
     86c:	460c6282 	mul.s	$f10,$f12,$f12
     870:	460a403e 	c.le.s	$f8,$f10
     874:	00000000 	nop
     878:	45000002 	bc1f	884 <Player_IsBurningStickInRange+0x78>
     87c:	00000000 	nop
     880:	24020001 	li	v0,1
     884:	50400014 	beqzl	v0,8d8 <Player_IsBurningStickInRange+0xcc>
     888:	8fbf0014 	lw	ra,20(sp)
     88c:	44808000 	mtc1	zero,$f16
     890:	00001025 	move	v0,zero
     894:	c7b2003c 	lwc1	$f18,60(sp)
     898:	4600803e 	c.le.s	$f16,$f0
     89c:	00000000 	nop
     8a0:	45000002 	bc1f	8ac <Player_IsBurningStickInRange+0xa0>
     8a4:	00000000 	nop
     8a8:	24020001 	li	v0,1
     8ac:	5040000a 	beqzl	v0,8d8 <Player_IsBurningStickInRange+0xcc>
     8b0:	8fbf0014 	lw	ra,20(sp)
     8b4:	4612003e 	c.le.s	$f0,$f18
     8b8:	00001025 	move	v0,zero
     8bc:	45020006 	bc1fl	8d8 <Player_IsBurningStickInRange+0xcc>
     8c0:	8fbf0014 	lw	ra,20(sp)
     8c4:	24020001 	li	v0,1
     8c8:	10000003 	b	8d8 <Player_IsBurningStickInRange+0xcc>
     8cc:	8fbf0014 	lw	ra,20(sp)
     8d0:	00001025 	move	v0,zero
     8d4:	8fbf0014 	lw	ra,20(sp)
     8d8:	27bd0030 	addiu	sp,sp,48
     8dc:	03e00008 	jr	ra
     8e0:	00000000 	nop

000008e4 <Player_GetStrength>:
     8e4:	3c020000 	lui	v0,0x0
     8e8:	24420000 	addiu	v0,v0,0
     8ec:	3c0f0000 	lui	t7,0x0
     8f0:	8def0008 	lw	t7,8(t7)
     8f4:	8c4e00a0 	lw	t6,160(v0)
     8f8:	8c480004 	lw	t0,4(v0)
     8fc:	3c190000 	lui	t9,0x0
     900:	93390002 	lbu	t9,2(t9)
     904:	01cfc024 	and	t8,t6,t7
     908:	15000003 	bnez	t0,918 <Player_GetStrength+0x34>
     90c:	03381807 	srav	v1,t8,t9
     910:	03e00008 	jr	ra
     914:	00601025 	move	v0,v1
     918:	10600003 	beqz	v1,928 <Player_GetStrength+0x44>
     91c:	00001025 	move	v0,zero
     920:	03e00008 	jr	ra
     924:	24020001 	li	v0,1
     928:	03e00008 	jr	ra
     92c:	00000000 	nop

00000930 <Player_GetMask>:
     930:	8c831c44 	lw	v1,7236(a0)
     934:	03e00008 	jr	ra
     938:	9062015f 	lbu	v0,351(v1)

0000093c <Player_UnsetMask>:
     93c:	8c821c44 	lw	v0,7236(a0)
     940:	03e00008 	jr	ra
     944:	a040015f 	sb	zero,351(v0)

00000948 <Player_HasMirrorShieldEquipped>:
     948:	8c831c44 	lw	v1,7236(a0)
     94c:	8062014e 	lb	v0,334(v1)
     950:	38420003 	xori	v0,v0,0x3
     954:	03e00008 	jr	ra
     958:	2c420001 	sltiu	v0,v0,1

0000095c <Player_HasMirrorShieldSetToDraw>:
     95c:	8c831c44 	lw	v1,7236(a0)
     960:	9062015d 	lbu	v0,349(v1)
     964:	3842000a 	xori	v0,v0,0xa
     968:	2c420001 	sltiu	v0,v0,1
     96c:	10400004 	beqz	v0,980 <Player_HasMirrorShieldSetToDraw+0x24>
     970:	00000000 	nop
     974:	8062014e 	lb	v0,334(v1)
     978:	38420003 	xori	v0,v0,0x3
     97c:	2c420001 	sltiu	v0,v0,1
     980:	03e00008 	jr	ra
     984:	00000000 	nop

00000988 <Player_ActionToMagicSpell>:
     988:	24a2ffeb 	addiu	v0,a1,-21
     98c:	04400006 	bltz	v0,9a8 <Player_ActionToMagicSpell+0x20>
     990:	afa40000 	sw	a0,0(sp)
     994:	28410006 	slti	at,v0,6
     998:	50200004 	beqzl	at,9ac <Player_ActionToMagicSpell+0x24>
     99c:	2402ffff 	li	v0,-1
     9a0:	03e00008 	jr	ra
     9a4:	00000000 	nop
     9a8:	2402ffff 	li	v0,-1
     9ac:	03e00008 	jr	ra
     9b0:	00000000 	nop

000009b4 <Player_HoldsHookshot>:
     9b4:	80830151 	lb	v1,337(a0)
     9b8:	38620010 	xori	v0,v1,0x10
     9bc:	2c420001 	sltiu	v0,v0,1
     9c0:	14400003 	bnez	v0,9d0 <Player_HoldsHookshot+0x1c>
     9c4:	00000000 	nop
     9c8:	38620011 	xori	v0,v1,0x11
     9cc:	2c420001 	sltiu	v0,v0,1
     9d0:	03e00008 	jr	ra
     9d4:	00000000 	nop

000009d8 <func_8008F128>:
     9d8:	27bdffe8 	addiu	sp,sp,-24
     9dc:	afbf0014 	sw	ra,20(sp)
     9e0:	0c000000 	jal	0 <Player_SetBootData>
     9e4:	afa40018 	sw	a0,24(sp)
     9e8:	0002102b 	sltu	v0,zero,v0
     9ec:	10400004 	beqz	v0,a00 <func_8008F128+0x28>
     9f0:	8fbf0014 	lw	ra,20(sp)
     9f4:	8fae0018 	lw	t6,24(sp)
     9f8:	8dc203ac 	lw	v0,940(t6)
     9fc:	2c420001 	sltiu	v0,v0,1
     a00:	03e00008 	jr	ra
     a04:	27bd0018 	addiu	sp,sp,24

00000a08 <Player_ActionToSword>:
     a08:	2482fffe 	addiu	v0,a0,-2
     a0c:	18400005 	blez	v0,a24 <Player_ActionToSword+0x1c>
     a10:	28410006 	slti	at,v0,6
     a14:	50200004 	beqzl	at,a28 <Player_ActionToSword+0x20>
     a18:	00001025 	move	v0,zero
     a1c:	03e00008 	jr	ra
     a20:	00000000 	nop
     a24:	00001025 	move	v0,zero
     a28:	03e00008 	jr	ra
     a2c:	00000000 	nop

00000a30 <Player_GetSwordHeld>:
     a30:	27bdffe8 	addiu	sp,sp,-24
     a34:	afbf0014 	sw	ra,20(sp)
     a38:	0c000000 	jal	0 <Player_SetBootData>
     a3c:	80840151 	lb	a0,337(a0)
     a40:	8fbf0014 	lw	ra,20(sp)
     a44:	27bd0018 	addiu	sp,sp,24
     a48:	03e00008 	jr	ra
     a4c:	00000000 	nop

00000a50 <Player_HoldsTwoHandedWeapon>:
     a50:	80820151 	lb	v0,337(a0)
     a54:	28410005 	slti	at,v0,5
     a58:	14200005 	bnez	at,a70 <Player_HoldsTwoHandedWeapon+0x20>
     a5c:	28410008 	slti	at,v0,8
     a60:	50200004 	beqzl	at,a74 <Player_HoldsTwoHandedWeapon+0x24>
     a64:	00001025 	move	v0,zero
     a68:	03e00008 	jr	ra
     a6c:	24020001 	li	v0,1
     a70:	00001025 	move	v0,zero
     a74:	03e00008 	jr	ra
     a78:	00000000 	nop

00000a7c <Player_HoldsBrokenKnife>:
     a7c:	80820151 	lb	v0,337(a0)
     a80:	3c0e0000 	lui	t6,0x0
     a84:	38420005 	xori	v0,v0,0x5
     a88:	2c420001 	sltiu	v0,v0,1
     a8c:	1040000f 	beqz	v0,acc <Player_HoldsBrokenKnife+0x50>
     a90:	00000000 	nop
     a94:	95ce0036 	lhu	t6,54(t6)
     a98:	44802000 	mtc1	zero,$f4
     a9c:	3c014f80 	lui	at,0x4f80
     aa0:	448e3000 	mtc1	t6,$f6
     aa4:	05c10004 	bgez	t6,ab8 <Player_HoldsBrokenKnife+0x3c>
     aa8:	46803220 	cvt.s.w	$f8,$f6
     aac:	44815000 	mtc1	at,$f10
     ab0:	00000000 	nop
     ab4:	460a4200 	add.s	$f8,$f8,$f10
     ab8:	4604403e 	c.le.s	$f8,$f4
     abc:	00001025 	move	v0,zero
     ac0:	45000002 	bc1f	acc <Player_HoldsBrokenKnife+0x50>
     ac4:	00000000 	nop
     ac8:	24020001 	li	v0,1
     acc:	03e00008 	jr	ra
     ad0:	00000000 	nop

00000ad4 <Player_ActionToBottle>:
     ad4:	24a2ffe2 	addiu	v0,a1,-30
     ad8:	04400006 	bltz	v0,af4 <Player_ActionToBottle+0x20>
     adc:	afa40000 	sw	a0,0(sp)
     ae0:	2841000d 	slti	at,v0,13
     ae4:	50200004 	beqzl	at,af8 <Player_ActionToBottle+0x24>
     ae8:	2402ffff 	li	v0,-1
     aec:	03e00008 	jr	ra
     af0:	00000000 	nop
     af4:	2402ffff 	li	v0,-1
     af8:	03e00008 	jr	ra
     afc:	00000000 	nop

00000b00 <Player_GetBottleHeld>:
     b00:	27bdffe8 	addiu	sp,sp,-24
     b04:	afbf0014 	sw	ra,20(sp)
     b08:	0c000000 	jal	0 <Player_SetBootData>
     b0c:	80850151 	lb	a1,337(a0)
     b10:	8fbf0014 	lw	ra,20(sp)
     b14:	27bd0018 	addiu	sp,sp,24
     b18:	03e00008 	jr	ra
     b1c:	00000000 	nop

00000b20 <Player_ActionToExplosive>:
     b20:	24a2ffee 	addiu	v0,a1,-18
     b24:	04400006 	bltz	v0,b40 <Player_ActionToExplosive+0x20>
     b28:	afa40000 	sw	a0,0(sp)
     b2c:	28410002 	slti	at,v0,2
     b30:	50200004 	beqzl	at,b44 <Player_ActionToExplosive+0x24>
     b34:	2402ffff 	li	v0,-1
     b38:	03e00008 	jr	ra
     b3c:	00000000 	nop
     b40:	2402ffff 	li	v0,-1
     b44:	03e00008 	jr	ra
     b48:	00000000 	nop

00000b4c <Player_GetExplosiveHeld>:
     b4c:	27bdffe8 	addiu	sp,sp,-24
     b50:	afbf0014 	sw	ra,20(sp)
     b54:	0c000000 	jal	0 <Player_SetBootData>
     b58:	80850151 	lb	a1,337(a0)
     b5c:	8fbf0014 	lw	ra,20(sp)
     b60:	27bd0018 	addiu	sp,sp,24
     b64:	03e00008 	jr	ra
     b68:	00000000 	nop

00000b6c <func_8008F2BC>:
     b6c:	24010001 	li	at,1
     b70:	afa40000 	sw	a0,0(sp)
     b74:	10a10007 	beq	a1,at,b94 <func_8008F2BC+0x28>
     b78:	00001825 	move	v1,zero
     b7c:	24a2fffd 	addiu	v0,a1,-3
     b80:	04400006 	bltz	v0,b9c <func_8008F2BC+0x30>
     b84:	00401825 	move	v1,v0
     b88:	28410003 	slti	at,v0,3
     b8c:	50200004 	beqzl	at,ba0 <func_8008F2BC+0x34>
     b90:	2402ffff 	li	v0,-1
     b94:	03e00008 	jr	ra
     b98:	00601025 	move	v0,v1
     b9c:	2402ffff 	li	v0,-1
     ba0:	03e00008 	jr	ra
     ba4:	00000000 	nop

00000ba8 <func_8008F2F8>:
     ba8:	27bdffd8 	addiu	sp,sp,-40
     bac:	3c0e0001 	lui	t6,0x1
     bb0:	afbf0014 	sw	ra,20(sp)
     bb4:	01c47021 	addu	t6,t6,a0
     bb8:	91ce1cbe 	lbu	t6,7358(t6)
     bbc:	24010003 	li	at,3
     bc0:	8c851c44 	lw	a1,7236(a0)
     bc4:	55c10004 	bnel	t6,at,bd8 <func_8008F2F8+0x30>
     bc8:	94a20840 	lhu	v0,2112(a1)
     bcc:	1000001d 	b	c44 <func_8008F2F8+0x9c>
     bd0:	00001825 	move	v1,zero
     bd4:	94a20840 	lhu	v0,2112(a1)
     bd8:	28410051 	slti	at,v0,81
     bdc:	54200012 	bnezl	at,c28 <func_8008F2F8+0x80>
     be0:	8cb9067c 	lw	t9,1660(a1)
     be4:	80a3014f 	lb	v1,335(a1)
     be8:	24010001 	li	at,1
     bec:	10610002 	beq	v1,at,bf8 <func_8008F2F8+0x50>
     bf0:	2841012c 	slti	at,v0,300
     bf4:	1420000b 	bnez	at,c24 <func_8008F2F8+0x7c>
     bf8:	24010001 	li	at,1
     bfc:	14610007 	bne	v1,at,c1c <func_8008F2F8+0x74>
     c00:	00000000 	nop
     c04:	94af0088 	lhu	t7,136(a1)
     c08:	31f80001 	andi	t8,t7,0x1
     c0c:	13000003 	beqz	t8,c1c <func_8008F2F8+0x74>
     c10:	00000000 	nop
     c14:	1000000b 	b	c44 <func_8008F2F8+0x9c>
     c18:	24030001 	li	v1,1
     c1c:	10000009 	b	c44 <func_8008F2F8+0x9c>
     c20:	24030003 	li	v1,3
     c24:	8cb9067c 	lw	t9,1660(a1)
     c28:	00194100 	sll	t0,t9,0x4
     c2c:	05010003 	bgez	t0,c3c <func_8008F2F8+0x94>
     c30:	00000000 	nop
     c34:	10000003 	b	c44 <func_8008F2F8+0x9c>
     c38:	24030002 	li	v1,2
     c3c:	10000034 	b	d10 <func_8008F2F8+0x168>
     c40:	00001025 	move	v0,zero
     c44:	afa3001c 	sw	v1,28(sp)
     c48:	afa40028 	sw	a0,40(sp)
     c4c:	0c000000 	jal	0 <Player_SetBootData>
     c50:	afa50024 	sw	a1,36(sp)
     c54:	8fa3001c 	lw	v1,28(sp)
     c58:	8fa40028 	lw	a0,40(sp)
     c5c:	1440002b 	bnez	v0,d0c <func_8008F2F8+0x164>
     c60:	8fa50024 	lw	a1,36(sp)
     c64:	3c0a0000 	lui	t2,0x0
     c68:	254a0000 	addiu	t2,t2,0
     c6c:	00034880 	sll	t1,v1,0x2
     c70:	012a3821 	addu	a3,t1,t2
     c74:	90e20000 	lbu	v0,0(a3)
     c78:	3c0b0000 	lui	t3,0x0
     c7c:	50400024 	beqzl	v0,d10 <func_8008F2F8+0x168>
     c80:	24620001 	addiu	v0,v1,1
     c84:	916b13c6 	lbu	t3,5062(t3)
     c88:	01626024 	and	t4,t3,v0
     c8c:	55800020 	bnezl	t4,d10 <func_8008F2F8+0x168>
     c90:	24620001 	addiu	v0,v1,1
     c94:	54600005 	bnezl	v1,cac <func_8008F2F8+0x104>
     c98:	24020001 	li	v0,1
     c9c:	80ad014c 	lb	t5,332(a1)
     ca0:	24020001 	li	v0,1
     ca4:	144d000c 	bne	v0,t5,cd8 <func_8008F2F8+0x130>
     ca8:	24020001 	li	v0,1
     cac:	10620003 	beq	v1,v0,cbc <func_8008F2F8+0x114>
     cb0:	24010003 	li	at,3
     cb4:	54610016 	bnel	v1,at,d10 <func_8008F2F8+0x168>
     cb8:	24620001 	addiu	v0,v1,1
     cbc:	80ae014f 	lb	t6,335(a1)
     cc0:	544e0013 	bnel	v0,t6,d10 <func_8008F2F8+0x168>
     cc4:	24620001 	addiu	v0,v1,1
     cc8:	80af014c 	lb	t7,332(a1)
     ccc:	24010002 	li	at,2
     cd0:	51e1000f 	beql	t7,at,d10 <func_8008F2F8+0x168>
     cd4:	24620001 	addiu	v0,v1,1
     cd8:	94e50002 	lhu	a1,2(a3)
     cdc:	afa70018 	sw	a3,24(sp)
     ce0:	afa3001c 	sw	v1,28(sp)
     ce4:	0c000000 	jal	0 <Player_SetBootData>
     ce8:	00003025 	move	a2,zero
     cec:	8fa70018 	lw	a3,24(sp)
     cf0:	3c180000 	lui	t8,0x0
     cf4:	931813c6 	lbu	t8,5062(t8)
     cf8:	90f90000 	lbu	t9,0(a3)
     cfc:	3c010000 	lui	at,0x0
     d00:	8fa3001c 	lw	v1,28(sp)
     d04:	03194025 	or	t0,t8,t9
     d08:	a02813c6 	sb	t0,5062(at)
     d0c:	24620001 	addiu	v0,v1,1
     d10:	8fbf0014 	lw	ra,20(sp)
     d14:	27bd0028 	addiu	sp,sp,40
     d18:	03e00008 	jr	ra
     d1c:	00000000 	nop

00000d20 <func_8008F470>:
     d20:	27bdff78 	addiu	sp,sp,-136
     d24:	afbf0024 	sw	ra,36(sp)
     d28:	afa40088 	sw	a0,136(sp)
     d2c:	afa5008c 	sw	a1,140(sp)
     d30:	afa60090 	sw	a2,144(sp)
     d34:	afa70094 	sw	a3,148(sp)
     d38:	84c20084 	lh	v0,132(a2)
     d3c:	8c850000 	lw	a1,0(a0)
     d40:	3c060000 	lui	a2,0x0
     d44:	3049000f 	andi	t1,v0,0xf
     d48:	00025103 	sra	t2,v0,0x4
     d4c:	2529ffff 	addiu	t1,t1,-1
     d50:	254affff 	addiu	t2,t2,-1
     d54:	afaa007c 	sw	t2,124(sp)
     d58:	afa90080 	sw	t1,128(sp)
     d5c:	24c60000 	addiu	a2,a2,0
     d60:	27a40068 	addiu	a0,sp,104
     d64:	240706b9 	li	a3,1721
     d68:	0c000000 	jal	0 <Player_SetBootData>
     d6c:	afa50078 	sw	a1,120(sp)
     d70:	8fa90080 	lw	t1,128(sp)
     d74:	8fa80078 	lw	t0,120(sp)
     d78:	8faa007c 	lw	t2,124(sp)
     d7c:	05210006 	bgez	t1,d98 <func_8008F470+0x78>
     d80:	3c0500ff 	lui	a1,0xff
     d84:	8fb800a4 	lw	t8,164(sp)
     d88:	3c090000 	lui	t1,0x0
     d8c:	0018c840 	sll	t9,t8,0x1
     d90:	01394821 	addu	t1,t1,t9
     d94:	91290000 	lbu	t1,0(t1)
     d98:	8d0202c0 	lw	v0,704(t0)
     d9c:	3c0cdb06 	lui	t4,0xdb06
     da0:	358c0020 	ori	t4,t4,0x20
     da4:	244b0008 	addiu	t3,v0,8
     da8:	ad0b02c0 	sw	t3,704(t0)
     dac:	00096880 	sll	t5,t1,0x2
     db0:	3c040000 	lui	a0,0x0
     db4:	008d2021 	addu	a0,a0,t5
     db8:	ac4c0000 	sw	t4,0(v0)
     dbc:	8c840000 	lw	a0,0(a0)
     dc0:	3c060000 	lui	a2,0x0
     dc4:	24c60000 	addiu	a2,a2,0
     dc8:	00047900 	sll	t7,a0,0x4
     dcc:	000fc702 	srl	t8,t7,0x1c
     dd0:	0018c880 	sll	t9,t8,0x2
     dd4:	00d95821 	addu	t3,a2,t9
     dd8:	8d6c0000 	lw	t4,0(t3)
     ddc:	34a5ffff 	ori	a1,a1,0xffff
     de0:	00857024 	and	t6,a0,a1
     de4:	3c078000 	lui	a3,0x8000
     de8:	01cc6821 	addu	t5,t6,t4
     dec:	01a77821 	addu	t7,t5,a3
     df0:	05410006 	bgez	t2,e0c <func_8008F470+0xec>
     df4:	ac4f0004 	sw	t7,4(v0)
     df8:	8fb800a4 	lw	t8,164(sp)
     dfc:	3c0a0000 	lui	t2,0x0
     e00:	0018c840 	sll	t9,t8,0x1
     e04:	01595021 	addu	t2,t2,t9
     e08:	914a0001 	lbu	t2,1(t2)
     e0c:	8d0202c0 	lw	v0,704(t0)
     e10:	3c0edb06 	lui	t6,0xdb06
     e14:	35ce0024 	ori	t6,t6,0x24
     e18:	244b0008 	addiu	t3,v0,8
     e1c:	ad0b02c0 	sw	t3,704(t0)
     e20:	000a6080 	sll	t4,t2,0x2
     e24:	3c040000 	lui	a0,0x0
     e28:	008c2021 	addu	a0,a0,t4
     e2c:	ac4e0000 	sw	t6,0(v0)
     e30:	8c840000 	lw	a0,0(a0)
     e34:	24090003 	li	t1,3
     e38:	3c010000 	lui	at,0x0
     e3c:	00047900 	sll	t7,a0,0x4
     e40:	000fc702 	srl	t8,t7,0x1c
     e44:	0018c880 	sll	t9,t8,0x2
     e48:	00d95821 	addu	t3,a2,t9
     e4c:	8d6e0000 	lw	t6,0(t3)
     e50:	00856824 	and	t5,a0,a1
     e54:	3c19fb00 	lui	t9,0xfb00
     e58:	01ae6021 	addu	t4,t5,t6
     e5c:	01877821 	addu	t7,t4,a3
     e60:	ac4f0004 	sw	t7,4(v0)
     e64:	8d0202c0 	lw	v0,704(t0)
     e68:	3c0e0000 	lui	t6,0x0
     e6c:	25ce0000 	addiu	t6,t6,0
     e70:	24580008 	addiu	t8,v0,8
     e74:	ad1802c0 	sw	t8,704(t0)
     e78:	ac590000 	sw	t9,0(v0)
     e7c:	8fab009c 	lw	t3,156(sp)
     e80:	01690019 	multu	t3,t1
     e84:	00006812 	mflo	t5
     e88:	01ae1821 	addu	v1,t5,t6
     e8c:	906f0000 	lbu	t7,0(v1)
     e90:	906b0001 	lbu	t3,1(v1)
     e94:	000fc600 	sll	t8,t7,0x18
     e98:	906f0002 	lbu	t7,2(v1)
     e9c:	000b6c00 	sll	t5,t3,0x10
     ea0:	030d7025 	or	t6,t8,t5
     ea4:	000fca00 	sll	t9,t7,0x8
     ea8:	01d95825 	or	t3,t6,t9
     eac:	ac4b0004 	sw	t3,4(v0)
     eb0:	8fa20098 	lw	v0,152(sp)
     eb4:	8faf00b0 	lw	t7,176(sp)
     eb8:	8fac00ac 	lw	t4,172(sp)
     ebc:	8fad00a8 	lw	t5,168(sp)
     ec0:	0002c040 	sll	t8,v0,0x1
     ec4:	ac380000 	sw	t8,0(at)
     ec8:	afa80078 	sw	t0,120(sp)
     ecc:	8fa70094 	lw	a3,148(sp)
     ed0:	8fa60090 	lw	a2,144(sp)
     ed4:	8fa5008c 	lw	a1,140(sp)
     ed8:	8fa40088 	lw	a0,136(sp)
     edc:	afa2001c 	sw	v0,28(sp)
     ee0:	afaf0018 	sw	t7,24(sp)
     ee4:	afac0014 	sw	t4,20(sp)
     ee8:	0c000000 	jal	0 <Player_SetBootData>
     eec:	afad0010 	sw	t5,16(sp)
     ef0:	8fa200a8 	lw	v0,168(sp)
     ef4:	3c0e0000 	lui	t6,0x0
     ef8:	25ce0000 	addiu	t6,t6,0
     efc:	8fa80078 	lw	t0,120(sp)
     f00:	104e007f 	beq	v0,t6,1100 <func_8008F470+0x3e0>
     f04:	24090003 	li	t1,3
     f08:	3c190000 	lui	t9,0x0
     f0c:	27390000 	addiu	t9,t9,0
     f10:	1059007b 	beq	v0,t9,1100 <func_8008F470+0x3e0>
     f14:	3c020000 	lui	v0,0x0
     f18:	24420000 	addiu	v0,v0,0
     f1c:	8c4b135c 	lw	t3,4956(v0)
     f20:	512b0078 	beql	t1,t3,1104 <func_8008F470+0x3e4>
     f24:	8fb80088 	lw	t8,136(sp)
     f28:	8c580004 	lw	t8,4(v0)
     f2c:	3c0c0000 	lui	t4,0x0
     f30:	3c0e0000 	lui	t6,0x0
     f34:	17000066 	bnez	t8,10d0 <func_8008F470+0x3b0>
     f38:	00000000 	nop
     f3c:	8c4d00a0 	lw	t5,160(v0)
     f40:	8d8c0008 	lw	t4,8(t4)
     f44:	91ce0002 	lbu	t6,2(t6)
     f48:	3c0be700 	lui	t3,0xe700
     f4c:	01ac7824 	and	t7,t5,t4
     f50:	01cf2807 	srav	a1,t7,t6
     f54:	28a10002 	slti	at,a1,2
     f58:	54200049 	bnezl	at,1080 <func_8008F470+0x360>
     f5c:	8fa600a0 	lw	a2,160(sp)
     f60:	00a90019 	multu	a1,t1
     f64:	8d0202c0 	lw	v0,704(t0)
     f68:	3c0e0000 	lui	t6,0x0
     f6c:	25ce0000 	addiu	t6,t6,0
     f70:	24590008 	addiu	t9,v0,8
     f74:	ad1902c0 	sw	t9,704(t0)
     f78:	ac4b0000 	sw	t3,0(v0)
     f7c:	ac400004 	sw	zero,4(v0)
     f80:	8d0202c0 	lw	v0,704(t0)
     f84:	3c0dfb00 	lui	t5,0xfb00
     f88:	00006012 	mflo	t4
     f8c:	24580008 	addiu	t8,v0,8
     f90:	ad1802c0 	sw	t8,704(t0)
     f94:	258ffffa 	addiu	t7,t4,-6
     f98:	01ee1821 	addu	v1,t7,t6
     f9c:	ac4d0000 	sw	t5,0(v0)
     fa0:	906b0000 	lbu	t3,0(v1)
     fa4:	906c0001 	lbu	t4,1(v1)
     fa8:	3c05de00 	lui	a1,0xde00
     fac:	000bc600 	sll	t8,t3,0x18
     fb0:	906b0002 	lbu	t3,2(v1)
     fb4:	000c7c00 	sll	t7,t4,0x10
     fb8:	030f7025 	or	t6,t8,t7
     fbc:	000b6a00 	sll	t5,t3,0x8
     fc0:	01cd6025 	or	t4,t6,t5
     fc4:	ac4c0004 	sw	t4,4(v0)
     fc8:	8d0202c0 	lw	v0,704(t0)
     fcc:	3c0f0000 	lui	t7,0x0
     fd0:	25ef0000 	addiu	t7,t7,0
     fd4:	24580008 	addiu	t8,v0,8
     fd8:	ad1802c0 	sw	t8,704(t0)
     fdc:	ac450000 	sw	a1,0(v0)
     fe0:	ac4f0004 	sw	t7,4(v0)
     fe4:	8d0202c0 	lw	v0,704(t0)
     fe8:	3c0b0000 	lui	t3,0x0
     fec:	256b0000 	addiu	t3,t3,0
     ff0:	24590008 	addiu	t9,v0,8
     ff4:	ad1902c0 	sw	t9,704(t0)
     ff8:	ac450000 	sw	a1,0(v0)
     ffc:	ac4b0004 	sw	t3,4(v0)
    1000:	8d0202c0 	lw	v0,704(t0)
    1004:	3c0d0000 	lui	t5,0x0
    1008:	3c180000 	lui	t8,0x0
    100c:	244e0008 	addiu	t6,v0,8
    1010:	ad0e02c0 	sw	t6,704(t0)
    1014:	ac450000 	sw	a1,0(v0)
    1018:	8dad0000 	lw	t5,0(t5)
    101c:	27180000 	addiu	t8,t8,0
    1020:	3c0c0000 	lui	t4,0x0
    1024:	15a00004 	bnez	t5,1038 <func_8008F470+0x318>
    1028:	00401825 	move	v1,v0
    102c:	258c0000 	addiu	t4,t4,0
    1030:	10000002 	b	103c <func_8008F470+0x31c>
    1034:	ac4c0004 	sw	t4,4(v0)
    1038:	ac780004 	sw	t8,4(v1)
    103c:	8d0202c0 	lw	v0,704(t0)
    1040:	3c190000 	lui	t9,0x0
    1044:	24010008 	li	at,8
    1048:	244f0008 	addiu	t7,v0,8
    104c:	ad0f02c0 	sw	t7,704(t0)
    1050:	ac450000 	sw	a1,0(v0)
    1054:	8f390000 	lw	t9,0(t9)
    1058:	3c0e0000 	lui	t6,0x0
    105c:	25ce0000 	addiu	t6,t6,0
    1060:	17210005 	bne	t9,at,1078 <func_8008F470+0x358>
    1064:	00401825 	move	v1,v0
    1068:	3c0b0000 	lui	t3,0x0
    106c:	256b0000 	addiu	t3,t3,0
    1070:	10000002 	b	107c <func_8008F470+0x35c>
    1074:	ac4b0004 	sw	t3,4(v0)
    1078:	ac6e0004 	sw	t6,4(v1)
    107c:	8fa600a0 	lw	a2,160(sp)
    1080:	3c05de00 	lui	a1,0xde00
    1084:	3c0f0000 	lui	t7,0x0
    1088:	10c0001d 	beqz	a2,1100 <func_8008F470+0x3e0>
    108c:	000660c0 	sll	t4,a2,0x3
    1090:	8d0202c0 	lw	v0,704(t0)
    1094:	2598fff8 	addiu	t8,t4,-8
    1098:	25ef0000 	addiu	t7,t7,0
    109c:	244d0008 	addiu	t5,v0,8
    10a0:	ad0d02c0 	sw	t5,704(t0)
    10a4:	030f2021 	addu	a0,t8,t7
    10a8:	ac450000 	sw	a1,0(v0)
    10ac:	8c990000 	lw	t9,0(a0)
    10b0:	ac590004 	sw	t9,4(v0)
    10b4:	8d0202c0 	lw	v0,704(t0)
    10b8:	244b0008 	addiu	t3,v0,8
    10bc:	ad0b02c0 	sw	t3,704(t0)
    10c0:	ac450000 	sw	a1,0(v0)
    10c4:	8c8e0004 	lw	t6,4(a0)
    10c8:	1000000d 	b	1100 <func_8008F470+0x3e0>
    10cc:	ac4e0004 	sw	t6,4(v0)
    10d0:	0c000000 	jal	0 <Player_SetBootData>
    10d4:	afa80078 	sw	t0,120(sp)
    10d8:	18400009 	blez	v0,1100 <func_8008F470+0x3e0>
    10dc:	8fa80078 	lw	t0,120(sp)
    10e0:	8d0202c0 	lw	v0,704(t0)
    10e4:	3c0c0000 	lui	t4,0x0
    10e8:	258c0000 	addiu	t4,t4,0
    10ec:	244d0008 	addiu	t5,v0,8
    10f0:	ad0d02c0 	sw	t5,704(t0)
    10f4:	3c05de00 	lui	a1,0xde00
    10f8:	ac450000 	sw	a1,0(v0)
    10fc:	ac4c0004 	sw	t4,4(v0)
    1100:	8fb80088 	lw	t8,136(sp)
    1104:	3c060000 	lui	a2,0x0
    1108:	24c60014 	addiu	a2,a2,20
    110c:	27a40068 	addiu	a0,sp,104
    1110:	2407070b 	li	a3,1803
    1114:	0c000000 	jal	0 <Player_SetBootData>
    1118:	8f050000 	lw	a1,0(t8)
    111c:	8fbf0024 	lw	ra,36(sp)
    1120:	27bd0088 	addiu	sp,sp,136
    1124:	03e00008 	jr	ra
    1128:	00000000 	nop

0000112c <func_8008F87C>:
    112c:	27bdff50 	addiu	sp,sp,-176
    1130:	afbf0024 	sw	ra,36(sp)
    1134:	f7b40018 	sdc1	$f20,24(sp)
    1138:	afa400b0 	sw	a0,176(sp)
    113c:	afa500b4 	sw	a1,180(sp)
    1140:	afa600b8 	sw	a2,184(sp)
    1144:	afa700bc 	sw	a3,188(sp)
    1148:	c4a40054 	lwc1	$f4,84(a1)
    114c:	44803000 	mtc1	zero,$f6
    1150:	00000000 	nop
    1154:	4604303e 	c.le.s	$f6,$f4
    1158:	00000000 	nop
    115c:	45020102 	bc1fl	1568 <func_8008F87C+0x43c>
    1160:	8fbf0024 	lw	ra,36(sp)
    1164:	8caf067c 	lw	t7,1660(a1)
    1168:	00a02025 	move	a0,a1
    116c:	31f80080 	andi	t8,t7,0x80
    1170:	570000fd 	bnezl	t8,1568 <func_8008F87C+0x43c>
    1174:	8fbf0024 	lw	ra,36(sp)
    1178:	0c000000 	jal	0 <Player_SetBootData>
    117c:	80a50154 	lb	a1,340(a1)
    1180:	044100f8 	bgez	v0,1564 <func_8008F87C+0x438>
    1184:	3c030000 	lui	v1,0x0
    1188:	8c630004 	lw	v1,4(v1)
    118c:	3c010000 	lui	at,0x0
    1190:	8fb900b4 	lw	t9,180(sp)
    1194:	00031080 	sll	v0,v1,0x2
    1198:	00220821 	addu	at,at,v0
    119c:	c4280000 	lwc1	$f8,0(at)
    11a0:	3c010000 	lui	at,0x0
    11a4:	00220821 	addu	at,at,v0
    11a8:	c42a0000 	lwc1	$f10,0(at)
    11ac:	3c010000 	lui	at,0x0
    11b0:	00220821 	addu	at,at,v0
    11b4:	e7a8007c 	swc1	$f8,124(sp)
    11b8:	e7aa0078 	swc1	$f10,120(sp)
    11bc:	c4240000 	lwc1	$f4,0(at)
    11c0:	c72606c4 	lwc1	$f6,1732(t9)
    11c4:	0c000000 	jal	0 <Player_SetBootData>
    11c8:	46062501 	sub.s	$f20,$f4,$f6
    11cc:	8fa400bc 	lw	a0,188(sp)
    11d0:	0c000000 	jal	0 <Player_SetBootData>
    11d4:	8fa500c0 	lw	a1,192(sp)
    11d8:	3c040000 	lui	a0,0x0
    11dc:	24840000 	addiu	a0,a0,0
    11e0:	0c000000 	jal	0 <Player_SetBootData>
    11e4:	27a500a4 	addiu	a1,sp,164
    11e8:	8fa200c8 	lw	v0,200(sp)
    11ec:	3c030000 	lui	v1,0x0
    11f0:	8c630004 	lw	v1,4(v1)
    11f4:	8fae00b8 	lw	t6,184(sp)
    11f8:	00400821 	move	at,v0
    11fc:	00021080 	sll	v0,v0,0x2
    1200:	00037880 	sll	t7,v1,0x2
    1204:	8dd90020 	lw	t9,32(t6)
    1208:	00411023 	subu	v0,v0,at
    120c:	3c180000 	lui	t8,0x0
    1210:	01e37823 	subu	t7,t7,v1
    1214:	000f7880 	sll	t7,t7,0x2
    1218:	27180000 	addiu	t8,t8,0
    121c:	00021040 	sll	v0,v0,0x1
    1220:	afa20038 	sw	v0,56(sp)
    1224:	01f82021 	addu	a0,t7,t8
    1228:	0c000000 	jal	0 <Player_SetBootData>
    122c:	03222821 	addu	a1,t9,v0
    1230:	3c030000 	lui	v1,0x0
    1234:	8c630004 	lw	v1,4(v1)
    1238:	44807000 	mtc1	zero,$f14
    123c:	3c010000 	lui	at,0x0
    1240:	00037880 	sll	t7,v1,0x2
    1244:	002f0821 	addu	at,at,t7
    1248:	44067000 	mfc1	a2,$f14
    124c:	c42c0000 	lwc1	$f12,0(at)
    1250:	0c000000 	jal	0 <Player_SetBootData>
    1254:	24070001 	li	a3,1
    1258:	3c040000 	lui	a0,0x0
    125c:	24840000 	addiu	a0,a0,0
    1260:	0c000000 	jal	0 <Player_SetBootData>
    1264:	27a50098 	addiu	a1,sp,152
    1268:	3c040000 	lui	a0,0x0
    126c:	24840000 	addiu	a0,a0,0
    1270:	0c000000 	jal	0 <Player_SetBootData>
    1274:	27a5008c 	addiu	a1,sp,140
    1278:	0c000000 	jal	0 <Player_SetBootData>
    127c:	00000000 	nop
    1280:	3c014170 	lui	at,0x4170
    1284:	44815000 	mtc1	at,$f10
    1288:	c7a80090 	lwc1	$f8,144(sp)
    128c:	8fa400b0 	lw	a0,176(sp)
    1290:	27b8008c 	addiu	t8,sp,140
    1294:	460a4100 	add.s	$f4,$f8,$f10
    1298:	248407c0 	addiu	a0,a0,1984
    129c:	afa40034 	sw	a0,52(sp)
    12a0:	afb80010 	sw	t8,16(sp)
    12a4:	e7a40090 	swc1	$f4,144(sp)
    12a8:	27a50088 	addiu	a1,sp,136
    12ac:	27a60084 	addiu	a2,sp,132
    12b0:	0c000000 	jal	0 <Player_SetBootData>
    12b4:	8fa700b4 	lw	a3,180(sp)
    12b8:	46140080 	add.s	$f2,$f0,$f20
    12bc:	c7a6009c 	lwc1	$f6,156(sp)
    12c0:	c7a80098 	lwc1	$f8,152(sp)
    12c4:	c7aa00a4 	lwc1	$f10,164(sp)
    12c8:	4602303c 	c.lt.s	$f6,$f2
    12cc:	e7a20080 	swc1	$f2,128(sp)
    12d0:	450200a5 	bc1fl	1568 <func_8008F87C+0x43c>
    12d4:	8fbf0024 	lw	ra,36(sp)
    12d8:	460a4301 	sub.s	$f12,$f8,$f10
    12dc:	c7a800ac 	lwc1	$f8,172(sp)
    12e0:	c7a400a0 	lwc1	$f4,160(sp)
    12e4:	c7aa00a8 	lwc1	$f10,168(sp)
    12e8:	e7ac0070 	swc1	$f12,112(sp)
    12ec:	46082381 	sub.s	$f14,$f4,$f8
    12f0:	460c6102 	mul.s	$f4,$f12,$f12
    12f4:	460a3401 	sub.s	$f16,$f6,$f10
    12f8:	e7ae0068 	swc1	$f14,104(sp)
    12fc:	46108202 	mul.s	$f8,$f16,$f16
    1300:	46082180 	add.s	$f6,$f4,$f8
    1304:	460e7282 	mul.s	$f10,$f14,$f14
    1308:	c7a80078 	lwc1	$f8,120(sp)
    130c:	460a3000 	add.s	$f0,$f6,$f10
    1310:	46000004 	sqrt.s	$f0,$f0
    1314:	46000102 	mul.s	$f4,$f0,$f0
    1318:	46000280 	add.s	$f10,$f0,$f0
    131c:	46082180 	add.s	$f6,$f4,$f8
    1320:	c7a4007c 	lwc1	$f4,124(sp)
    1324:	460a3083 	div.s	$f2,$f6,$f10
    1328:	46021482 	mul.s	$f18,$f2,$f2
    132c:	e7a20060 	swc1	$f2,96(sp)
    1330:	c7ae0060 	lwc1	$f14,96(sp)
    1334:	4612203c 	c.lt.s	$f4,$f18
    1338:	46122501 	sub.s	$f20,$f4,$f18
    133c:	45020005 	bc1fl	1354 <func_8008F87C+0x228>
    1340:	4600a004 	sqrt.s	$f0,$f20
    1344:	4480a000 	mtc1	zero,$f20
    1348:	10000003 	b	1358 <func_8008F87C+0x22c>
    134c:	00000000 	nop
    1350:	4600a004 	sqrt.s	$f0,$f20
    1354:	46000506 	mov.s	$f20,$f0
    1358:	0c000000 	jal	0 <Player_SetBootData>
    135c:	4600a306 	mov.s	$f12,$f20
    1360:	c7a80080 	lwc1	$f8,128(sp)
    1364:	c7a600a8 	lwc1	$f6,168(sp)
    1368:	c7aa0070 	lwc1	$f10,112(sp)
    136c:	e7a00054 	swc1	$f0,84(sp)
    1370:	46064301 	sub.s	$f12,$f8,$f6
    1374:	460a5102 	mul.s	$f4,$f10,$f10
    1378:	c7aa0068 	lwc1	$f10,104(sp)
    137c:	460c6202 	mul.s	$f8,$f12,$f12
    1380:	46082180 	add.s	$f6,$f4,$f8
    1384:	460a5102 	mul.s	$f4,$f10,$f10
    1388:	c7aa0078 	lwc1	$f10,120(sp)
    138c:	46043000 	add.s	$f0,$f6,$f4
    1390:	46000004 	sqrt.s	$f0,$f0
    1394:	46000202 	mul.s	$f8,$f0,$f0
    1398:	46000100 	add.s	$f4,$f0,$f0
    139c:	460a4180 	add.s	$f6,$f8,$f10
    13a0:	c7aa007c 	lwc1	$f10,124(sp)
    13a4:	46043383 	div.s	$f14,$f6,$f4
    13a8:	460e7482 	mul.s	$f18,$f14,$f14
    13ac:	460e0201 	sub.s	$f8,$f0,$f14
    13b0:	e7a8005c 	swc1	$f8,92(sp)
    13b4:	4612503c 	c.lt.s	$f10,$f18
    13b8:	46125501 	sub.s	$f20,$f10,$f18
    13bc:	45020005 	bc1fl	13d4 <func_8008F87C+0x2a8>
    13c0:	4600a004 	sqrt.s	$f0,$f20
    13c4:	4480a000 	mtc1	zero,$f20
    13c8:	10000003 	b	13d8 <func_8008F87C+0x2ac>
    13cc:	00000000 	nop
    13d0:	4600a004 	sqrt.s	$f0,$f20
    13d4:	46000506 	mov.s	$f20,$f0
    13d8:	0c000000 	jal	0 <Player_SetBootData>
    13dc:	4600a306 	mov.s	$f12,$f20
    13e0:	c7ac005c 	lwc1	$f12,92(sp)
    13e4:	4600a386 	mov.s	$f14,$f20
    13e8:	0c000000 	jal	0 <Player_SetBootData>
    13ec:	e7a00050 	swc1	$f0,80(sp)
    13f0:	3c010000 	lui	at,0x0
    13f4:	c42c0190 	lwc1	$f12,400(at)
    13f8:	3c010000 	lui	at,0x0
    13fc:	c4260194 	lwc1	$f6,404(at)
    1400:	3c010000 	lui	at,0x0
    1404:	c7a20050 	lwc1	$f2,80(sp)
    1408:	c4240198 	lwc1	$f4,408(at)
    140c:	8faa00b8 	lw	t2,184(sp)
    1410:	8fab0038 	lw	t3,56(sp)
    1414:	46022201 	sub.s	$f8,$f4,$f2
    1418:	8d4e0020 	lw	t6,32(t2)
    141c:	34018000 	li	at,0x8000
    1420:	46080280 	add.s	$f10,$f0,$f8
    1424:	01cb1821 	addu	v1,t6,t3
    1428:	84790004 	lh	t9,4(v1)
    142c:	84620000 	lh	v0,0(v1)
    1430:	460a3101 	sub.s	$f4,$f6,$f10
    1434:	c7aa0054 	lwc1	$f10,84(sp)
    1438:	00022023 	negu	a0,v0
    143c:	460c2202 	mul.s	$f8,$f4,$f12
    1440:	460a1101 	sub.s	$f4,$f2,$f10
    1444:	4600418d 	trunc.w.s	$f6,$f8
    1448:	460c2202 	mul.s	$f8,$f4,$f12
    144c:	440e3000 	mfc1	t6,$f6
    1450:	00000000 	nop
    1454:	01d94823 	subu	t1,t6,t9
    1458:	00094c00 	sll	t1,t1,0x10
    145c:	00094c03 	sra	t1,t1,0x10
    1460:	04400003 	bltz	v0,1470 <func_8008F87C+0x344>
    1464:	4600418d 	trunc.w.s	$f6,$f8
    1468:	10000001 	b	1470 <func_8008F87C+0x344>
    146c:	00402025 	move	a0,v0
    1470:	84620002 	lh	v0,2(v1)
    1474:	8fad00c0 	lw	t5,192(sp)
    1478:	04400003 	bltz	v0,1488 <func_8008F87C+0x35c>
    147c:	00021823 	negu	v1,v0
    1480:	10000001 	b	1488 <func_8008F87C+0x35c>
    1484:	00401825 	move	v1,v0
    1488:	00647821 	addu	t7,v1,a0
    148c:	000fc400 	sll	t8,t7,0x10
    1490:	00187403 	sra	t6,t8,0x10
    1494:	44023000 	mfc1	v0,$f6
    1498:	05c30005 	bgezl	t6,14b0 <func_8008F87C+0x384>
    149c:	85af0004 	lh	t7,4(t5)
    14a0:	01214821 	addu	t1,t1,at
    14a4:	00094c00 	sll	t1,t1,0x10
    14a8:	00094c03 	sra	t1,t1,0x10
    14ac:	85af0004 	lh	t7,4(t5)
    14b0:	00021400 	sll	v0,v0,0x10
    14b4:	00021403 	sra	v0,v0,0x10
    14b8:	01e2c023 	subu	t8,t7,v0
    14bc:	a5b80004 	sh	t8,4(t5)
    14c0:	8fb900c4 	lw	t9,196(sp)
    14c4:	240c0006 	li	t4,6
    14c8:	8d4e0020 	lw	t6,32(t2)
    14cc:	032c0019 	multu	t9,t4
    14d0:	00007812 	mflo	t7
    14d4:	01cf3821 	addu	a3,t6,t7
    14d8:	84f80004 	lh	t8,4(a3)
    14dc:	0302c823 	subu	t9,t8,v0
    14e0:	a4f90004 	sh	t9,4(a3)
    14e4:	8d4e0020 	lw	t6,32(t2)
    14e8:	01cb1821 	addu	v1,t6,t3
    14ec:	846f0004 	lh	t7,4(v1)
    14f0:	01e9c021 	addu	t8,t7,t1
    14f4:	a4780004 	sh	t8,4(v1)
    14f8:	8fae00cc 	lw	t6,204(sp)
    14fc:	8d590020 	lw	t9,32(t2)
    1500:	01cc0019 	multu	t6,t4
    1504:	00007812 	mflo	t7
    1508:	032f4021 	addu	t0,t9,t7
    150c:	85180004 	lh	t8,4(t0)
    1510:	03027021 	addu	t6,t8,v0
    1514:	01c9c823 	subu	t9,t6,t1
    1518:	a5190004 	sh	t9,4(t0)
    151c:	8fa60084 	lw	a2,132(sp)
    1520:	8fa50088 	lw	a1,136(sp)
    1524:	0c000000 	jal	0 <Player_SetBootData>
    1528:	8fa40034 	lw	a0,52(sp)
    152c:	28410002 	slti	at,v0,2
    1530:	1420000c 	bnez	at,1564 <func_8008F87C+0x438>
    1534:	28410004 	slti	at,v0,4
    1538:	1020000a 	beqz	at,1564 <func_8008F87C+0x438>
    153c:	8fa40034 	lw	a0,52(sp)
    1540:	8fa50088 	lw	a1,136(sp)
    1544:	0c000000 	jal	0 <Player_SetBootData>
    1548:	8fa60084 	lw	a2,132(sp)
    154c:	14400005 	bnez	v0,1564 <func_8008F87C+0x438>
    1550:	c7aa0080 	lwc1	$f10,128(sp)
    1554:	e7aa0090 	swc1	$f10,144(sp)
    1558:	8fa400b0 	lw	a0,176(sp)
    155c:	0c000000 	jal	0 <Player_SetBootData>
    1560:	27a5008c 	addiu	a1,sp,140
    1564:	8fbf0024 	lw	ra,36(sp)
    1568:	d7b40018 	ldc1	$f20,24(sp)
    156c:	27bd00b0 	addiu	sp,sp,176
    1570:	03e00008 	jr	ra
    1574:	00000000 	nop

00001578 <func_8008FCC8>:
    1578:	27bdffd0 	addiu	sp,sp,-48
    157c:	afb10028 	sw	s1,40(sp)
    1580:	24010001 	li	at,1
    1584:	00e08825 	move	s1,a3
    1588:	afbf002c 	sw	ra,44(sp)
    158c:	14a10057 	bne	a1,at,16ec <func_8008FCC8+0x174>
    1590:	afb00024 	sw	s0,36(sp)
    1594:	8fb00044 	lw	s0,68(sp)
    1598:	3c010000 	lui	at,0x0
    159c:	3c190000 	lui	t9,0x0
    15a0:	920e015c 	lbu	t6,348(s0)
    15a4:	8f390004 	lw	t9,4(t9)
    15a8:	261808fc 	addiu	t8,s0,2300
    15ac:	ac2e0000 	sw	t6,0(at)
    15b0:	920f015d 	lbu	t7,349(s0)
    15b4:	3c010000 	lui	at,0x0
    15b8:	ac2f0000 	sw	t7,0(at)
    15bc:	3c010000 	lui	at,0x0
    15c0:	1320001b 	beqz	t9,1630 <func_8008FCC8+0xb8>
    15c4:	ac380000 	sw	t8,0(at)
    15c8:	920201e9 	lbu	v0,489(s0)
    15cc:	3c010000 	lui	at,0x0
    15d0:	30430004 	andi	v1,v0,0x4
    15d4:	10600003 	beqz	v1,15e4 <func_8008FCC8+0x6c>
    15d8:	30480001 	andi	t0,v0,0x1
    15dc:	1100000b 	beqz	t0,160c <func_8008FCC8+0x94>
    15e0:	00000000 	nop
    15e4:	c420019c 	lwc1	$f0,412(at)
    15e8:	c6240000 	lwc1	$f4,0(s1)
    15ec:	c6280008 	lwc1	$f8,8(s1)
    15f0:	46002182 	mul.s	$f6,$f4,$f0
    15f4:	00000000 	nop
    15f8:	46004282 	mul.s	$f10,$f8,$f0
    15fc:	e6260000 	swc1	$f6,0(s1)
    1600:	e62a0008 	swc1	$f10,8(s1)
    1604:	920201e9 	lbu	v0,489(s0)
    1608:	30430004 	andi	v1,v0,0x4
    160c:	3c010000 	lui	at,0x0
    1610:	10600004 	beqz	v1,1624 <func_8008FCC8+0xac>
    1614:	c42001a0 	lwc1	$f0,416(at)
    1618:	30490002 	andi	t1,v0,0x2
    161c:	51200005 	beqzl	t1,1634 <func_8008FCC8+0xbc>
    1620:	c6240004 	lwc1	$f4,4(s1)
    1624:	c6300004 	lwc1	$f16,4(s1)
    1628:	46008482 	mul.s	$f18,$f16,$f0
    162c:	e6320004 	swc1	$f18,4(s1)
    1630:	c6240004 	lwc1	$f4,4(s1)
    1634:	c60606c4 	lwc1	$f6,1732(s0)
    1638:	46062201 	sub.s	$f8,$f4,$f6
    163c:	e6280004 	swc1	$f8,4(s1)
    1640:	860406c2 	lh	a0,1730(s0)
    1644:	5080009a 	beqzl	a0,18b0 <func_8008FCC8+0x338>
    1648:	00001025 	move	v0,zero
    164c:	0c000000 	jal	0 <Player_SetBootData>
    1650:	00000000 	nop
    1654:	3c013f80 	lui	at,0x3f80
    1658:	44815000 	mtc1	at,$f10
    165c:	3c014348 	lui	at,0x4348
    1660:	44819000 	mtc1	at,$f18
    1664:	460a0401 	sub.s	$f16,$f0,$f10
    1668:	c6260004 	lwc1	$f6,4(s1)
    166c:	c62c0000 	lwc1	$f12,0(s1)
    1670:	8e260008 	lw	a2,8(s1)
    1674:	46128102 	mul.s	$f4,$f16,$f18
    1678:	24070001 	li	a3,1
    167c:	0c000000 	jal	0 <Player_SetBootData>
    1680:	46062380 	add.s	$f14,$f4,$f6
    1684:	860a06c2 	lh	t2,1730(s0)
    1688:	3c010000 	lui	at,0x0
    168c:	c43001a4 	lwc1	$f16,420(at)
    1690:	448a4000 	mtc1	t2,$f8
    1694:	24050001 	li	a1,1
    1698:	468042a0 	cvt.s.w	$f10,$f8
    169c:	46105302 	mul.s	$f12,$f10,$f16
    16a0:	0c000000 	jal	0 <Player_SetBootData>
    16a4:	00000000 	nop
    16a8:	8fa20040 	lw	v0,64(sp)
    16ac:	24070001 	li	a3,1
    16b0:	84440000 	lh	a0,0(v0)
    16b4:	84450002 	lh	a1,2(v0)
    16b8:	0c000000 	jal	0 <Player_SetBootData>
    16bc:	84460004 	lh	a2,4(v0)
    16c0:	8fa20040 	lw	v0,64(sp)
    16c4:	44800000 	mtc1	zero,$f0
    16c8:	00000000 	nop
    16cc:	e6200008 	swc1	$f0,8(s1)
    16d0:	e6200004 	swc1	$f0,4(s1)
    16d4:	e6200000 	swc1	$f0,0(s1)
    16d8:	a4400004 	sh	zero,4(v0)
    16dc:	84430004 	lh	v1,4(v0)
    16e0:	a4430002 	sh	v1,2(v0)
    16e4:	10000071 	b	18ac <func_8008FCC8+0x334>
    16e8:	a4430000 	sh	v1,0(v0)
    16ec:	8ccb0000 	lw	t3,0(a2)
    16f0:	3c020000 	lui	v0,0x0
    16f4:	24420000 	addiu	v0,v0,0
    16f8:	11600004 	beqz	t3,170c <func_8008FCC8+0x194>
    16fc:	2401000b 	li	at,11
    1700:	8c4c0000 	lw	t4,0(v0)
    1704:	258d000c 	addiu	t5,t4,12
    1708:	ac4d0000 	sw	t5,0(v0)
    170c:	14a1000f 	bne	a1,at,174c <func_8008FCC8+0x1d4>
    1710:	8fa20040 	lw	v0,64(sp)
    1714:	8fb00044 	lw	s0,68(sp)
    1718:	844e0000 	lh	t6,0(v0)
    171c:	84590002 	lh	t9,2(v0)
    1720:	860f06ba 	lh	t7,1722(s0)
    1724:	844a0004 	lh	t2,4(v0)
    1728:	01cfc021 	addu	t8,t6,t7
    172c:	a4580000 	sh	t8,0(v0)
    1730:	860806b8 	lh	t0,1720(s0)
    1734:	03284823 	subu	t1,t9,t0
    1738:	a4490002 	sh	t1,2(v0)
    173c:	860b06b6 	lh	t3,1718(s0)
    1740:	014b6021 	addu	t4,t2,t3
    1744:	10000059 	b	18ac <func_8008FCC8+0x334>
    1748:	a44c0004 	sh	t4,4(v0)
    174c:	2401000a 	li	at,10
    1750:	14a10034 	bne	a1,at,1824 <func_8008FCC8+0x2ac>
    1754:	8fb00044 	lw	s0,68(sp)
    1758:	860d06b0 	lh	t5,1712(s0)
    175c:	3c010000 	lui	at,0x0
    1760:	24050001 	li	a1,1
    1764:	51a0000d 	beqzl	t5,179c <func_8008FCC8+0x224>
    1768:	860206be 	lh	v0,1726(s0)
    176c:	0c000000 	jal	0 <Player_SetBootData>
    1770:	c42c01a8 	lwc1	$f12,424(at)
    1774:	860e06b0 	lh	t6,1712(s0)
    1778:	3c010000 	lui	at,0x0
    177c:	c42601ac 	lwc1	$f6,428(at)
    1780:	448e9000 	mtc1	t6,$f18
    1784:	24050001 	li	a1,1
    1788:	46809120 	cvt.s.w	$f4,$f18
    178c:	46062302 	mul.s	$f12,$f4,$f6
    1790:	0c000000 	jal	0 <Player_SetBootData>
    1794:	00000000 	nop
    1798:	860206be 	lh	v0,1726(s0)
    179c:	5040000a 	beqzl	v0,17c8 <func_8008FCC8+0x250>
    17a0:	860206bc 	lh	v0,1724(s0)
    17a4:	44824000 	mtc1	v0,$f8
    17a8:	3c010000 	lui	at,0x0
    17ac:	c43001b0 	lwc1	$f16,432(at)
    17b0:	468042a0 	cvt.s.w	$f10,$f8
    17b4:	24050001 	li	a1,1
    17b8:	46105302 	mul.s	$f12,$f10,$f16
    17bc:	0c000000 	jal	0 <Player_SetBootData>
    17c0:	00000000 	nop
    17c4:	860206bc 	lh	v0,1724(s0)
    17c8:	5040000a 	beqzl	v0,17f4 <func_8008FCC8+0x27c>
    17cc:	860206c0 	lh	v0,1728(s0)
    17d0:	44829000 	mtc1	v0,$f18
    17d4:	3c010000 	lui	at,0x0
    17d8:	c42601b4 	lwc1	$f6,436(at)
    17dc:	46809120 	cvt.s.w	$f4,$f18
    17e0:	24050001 	li	a1,1
    17e4:	46062302 	mul.s	$f12,$f4,$f6
    17e8:	0c000000 	jal	0 <Player_SetBootData>
    17ec:	00000000 	nop
    17f0:	860206c0 	lh	v0,1728(s0)
    17f4:	5040002e 	beqzl	v0,18b0 <func_8008FCC8+0x338>
    17f8:	00001025 	move	v0,zero
    17fc:	44824000 	mtc1	v0,$f8
    1800:	3c010000 	lui	at,0x0
    1804:	c43001b8 	lwc1	$f16,440(at)
    1808:	468042a0 	cvt.s.w	$f10,$f8
    180c:	24050001 	li	a1,1
    1810:	46105302 	mul.s	$f12,$f10,$f16
    1814:	0c000000 	jal	0 <Player_SetBootData>
    1818:	00000000 	nop
    181c:	10000024 	b	18b0 <func_8008FCC8+0x338>
    1820:	00001025 	move	v0,zero
    1824:	24010007 	li	at,7
    1828:	14a1000e 	bne	a1,at,1864 <func_8008FCC8+0x2ec>
    182c:	8fa20040 	lw	v0,64(sp)
    1830:	8fa50044 	lw	a1,68(sp)
    1834:	240f0007 	li	t7,7
    1838:	24180008 	li	t8,8
    183c:	24190009 	li	t9,9
    1840:	afb9001c 	sw	t9,28(sp)
    1844:	afb80018 	sw	t8,24(sp)
    1848:	afaf0014 	sw	t7,20(sp)
    184c:	02203825 	move	a3,s1
    1850:	afa20010 	sw	v0,16(sp)
    1854:	0c000000 	jal	0 <Player_SetBootData>
    1858:	24a601b4 	addiu	a2,a1,436
    185c:	10000014 	b	18b0 <func_8008FCC8+0x338>
    1860:	00001025 	move	v0,zero
    1864:	24010004 	li	at,4
    1868:	14a1000e 	bne	a1,at,18a4 <func_8008FCC8+0x32c>
    186c:	8fa20040 	lw	v0,64(sp)
    1870:	8fa50044 	lw	a1,68(sp)
    1874:	24080004 	li	t0,4
    1878:	24090005 	li	t1,5
    187c:	240a0006 	li	t2,6
    1880:	afaa001c 	sw	t2,28(sp)
    1884:	afa90018 	sw	t1,24(sp)
    1888:	afa80014 	sw	t0,20(sp)
    188c:	02203825 	move	a3,s1
    1890:	afa20010 	sw	v0,16(sp)
    1894:	0c000000 	jal	0 <Player_SetBootData>
    1898:	24a601b4 	addiu	a2,a1,436
    189c:	10000004 	b	18b0 <func_8008FCC8+0x338>
    18a0:	00001025 	move	v0,zero
    18a4:	10000002 	b	18b0 <func_8008FCC8+0x338>
    18a8:	00001025 	move	v0,zero
    18ac:	00001025 	move	v0,zero
    18b0:	8fbf002c 	lw	ra,44(sp)
    18b4:	8fb00024 	lw	s0,36(sp)
    18b8:	8fb10028 	lw	s1,40(sp)
    18bc:	03e00008 	jr	ra
    18c0:	27bd0030 	addiu	sp,sp,48

000018c4 <func_80090014>:
    18c4:	27bdffd8 	addiu	sp,sp,-40
    18c8:	afb00020 	sw	s0,32(sp)
    18cc:	8fb0003c 	lw	s0,60(sp)
    18d0:	8fae0038 	lw	t6,56(sp)
    18d4:	afbf0024 	sw	ra,36(sp)
    18d8:	afa5002c 	sw	a1,44(sp)
    18dc:	afa60030 	sw	a2,48(sp)
    18e0:	afb00014 	sw	s0,20(sp)
    18e4:	0c000000 	jal	0 <Player_SetBootData>
    18e8:	afae0010 	sw	t6,16(sp)
    18ec:	8fa5002c 	lw	a1,44(sp)
    18f0:	144000a6 	bnez	v0,1b8c <func_80090014+0x2c8>
    18f4:	8fa60030 	lw	a2,48(sp)
    18f8:	24070010 	li	a3,16
    18fc:	14a70043 	bne	a1,a3,1a0c <func_80090014+0x148>
    1900:	24040013 	li	a0,19
    1904:	3c040000 	lui	a0,0x0
    1908:	24840000 	addiu	a0,a0,0
    190c:	8c830000 	lw	v1,0(a0)
    1910:	24010004 	li	at,4
    1914:	8e020164 	lw	v0,356(s0)
    1918:	14610011 	bne	v1,at,1960 <func_80090014+0x9c>
    191c:	3c050000 	lui	a1,0x0
    1920:	24a50000 	addiu	a1,a1,0
    1924:	94af0036 	lhu	t7,54(a1)
    1928:	44802000 	mtc1	zero,$f4
    192c:	3c014f80 	lui	at,0x4f80
    1930:	448f3000 	mtc1	t7,$f6
    1934:	05e10004 	bgez	t7,1948 <func_80090014+0x84>
    1938:	46803220 	cvt.s.w	$f8,$f6
    193c:	44815000 	mtc1	at,$f10
    1940:	00000000 	nop
    1944:	460a4200 	add.s	$f8,$f8,$f10
    1948:	4604403e 	c.le.s	$f8,$f4
    194c:	00000000 	nop
    1950:	45000003 	bc1f	1960 <func_80090014+0x9c>
    1954:	00000000 	nop
    1958:	10000025 	b	19f0 <func_80090014+0x12c>
    195c:	24420010 	addiu	v0,v0,16
    1960:	3c050000 	lui	a1,0x0
    1964:	24010006 	li	at,6
    1968:	1461000c 	bne	v1,at,199c <func_80090014+0xd8>
    196c:	24a50000 	addiu	a1,a1,0
    1970:	8e18067c 	lw	t8,1660(s0)
    1974:	3c0a0000 	lui	t2,0x0
    1978:	0018c980 	sll	t9,t8,0x6
    197c:	07230008 	bgezl	t9,19a0 <func_80090014+0xdc>
    1980:	920b015c 	lbu	t3,348(s0)
    1984:	8ca80004 	lw	t0,4(a1)
    1988:	254a0000 	addiu	t2,t2,0
    198c:	ac800000 	sw	zero,0(a0)
    1990:	00084880 	sll	t1,t0,0x2
    1994:	10000016 	b	19f0 <func_80090014+0x12c>
    1998:	012a1021 	addu	v0,t1,t2
    199c:	920b015c 	lbu	t3,348(s0)
    19a0:	3c014000 	lui	at,0x4000
    19a4:	15600012 	bnez	t3,19f0 <func_80090014+0x12c>
    19a8:	00000000 	nop
    19ac:	44818000 	mtc1	at,$f16
    19b0:	c6120068 	lwc1	$f18,104(s0)
    19b4:	4612803c 	c.lt.s	$f16,$f18
    19b8:	00000000 	nop
    19bc:	4500000c 	bc1f	19f0 <func_80090014+0x12c>
    19c0:	00000000 	nop
    19c4:	8e0c067c 	lw	t4,1660(s0)
    19c8:	3c180000 	lui	t8,0x0
    19cc:	27180000 	addiu	t8,t8,0
    19d0:	000c6900 	sll	t5,t4,0x4
    19d4:	05a00006 	bltz	t5,19f0 <func_80090014+0x12c>
    19d8:	00000000 	nop
    19dc:	8cae0004 	lw	t6,4(a1)
    19e0:	24190001 	li	t9,1
    19e4:	ac990000 	sw	t9,0(a0)
    19e8:	000e7880 	sll	t7,t6,0x2
    19ec:	01f81021 	addu	v0,t7,t8
    19f0:	3c080000 	lui	t0,0x0
    19f4:	8d080000 	lw	t0,0(t0)
    19f8:	00084880 	sll	t1,t0,0x2
    19fc:	00495021 	addu	t2,v0,t1
    1a00:	8d4b0000 	lw	t3,0(t2)
    1a04:	10000061 	b	1b8c <func_80090014+0x2c8>
    1a08:	accb0000 	sw	t3,0(a2)
    1a0c:	14a40029 	bne	a1,a0,1ab4 <func_80090014+0x1f0>
    1a10:	24010014 	li	at,20
    1a14:	3c030000 	lui	v1,0x0
    1a18:	24630000 	addiu	v1,v1,0
    1a1c:	8c6c0000 	lw	t4,0(v1)
    1a20:	2401000a 	li	at,10
    1a24:	8e020160 	lw	v0,352(s0)
    1a28:	55810006 	bnel	t4,at,1a44 <func_80090014+0x180>
    1a2c:	920f015d 	lbu	t7,349(s0)
    1a30:	820d014e 	lb	t5,334(s0)
    1a34:	000d7100 	sll	t6,t5,0x4
    1a38:	10000017 	b	1a98 <func_80090014+0x1d4>
    1a3c:	004e1021 	addu	v0,v0,t6
    1a40:	920f015d 	lbu	t7,349(s0)
    1a44:	24010008 	li	at,8
    1a48:	15e10013 	bne	t7,at,1a98 <func_80090014+0x1d4>
    1a4c:	3c014000 	lui	at,0x4000
    1a50:	44813000 	mtc1	at,$f6
    1a54:	c60a0068 	lwc1	$f10,104(s0)
    1a58:	460a303c 	c.lt.s	$f6,$f10
    1a5c:	00000000 	nop
    1a60:	4500000d 	bc1f	1a98 <func_80090014+0x1d4>
    1a64:	00000000 	nop
    1a68:	8e18067c 	lw	t8,1660(s0)
    1a6c:	3c050000 	lui	a1,0x0
    1a70:	24a50000 	addiu	a1,a1,0
    1a74:	0018c900 	sll	t9,t8,0x4
    1a78:	07200007 	bltz	t9,1a98 <func_80090014+0x1d4>
    1a7c:	3c0a0000 	lui	t2,0x0
    1a80:	8ca80004 	lw	t0,4(a1)
    1a84:	254a0000 	addiu	t2,t2,0
    1a88:	240b0009 	li	t3,9
    1a8c:	00084880 	sll	t1,t0,0x2
    1a90:	012a1021 	addu	v0,t1,t2
    1a94:	ac6b0000 	sw	t3,0(v1)
    1a98:	3c0c0000 	lui	t4,0x0
    1a9c:	8d8c0000 	lw	t4,0(t4)
    1aa0:	000c6880 	sll	t5,t4,0x2
    1aa4:	004d7021 	addu	t6,v0,t5
    1aa8:	8dcf0000 	lw	t7,0(t6)
    1aac:	10000037 	b	1b8c <func_80090014+0x2c8>
    1ab0:	accf0000 	sw	t7,0(a2)
    1ab4:	14a1002c 	bne	a1,at,1b68 <func_80090014+0x2a4>
    1ab8:	3c0b0000 	lui	t3,0x0
    1abc:	9202015e 	lbu	v0,350(s0)
    1ac0:	24010012 	li	at,18
    1ac4:	8e030168 	lw	v1,360(s0)
    1ac8:	10410003 	beq	v0,at,1ad8 <func_80090014+0x214>
    1acc:	3c050000 	lui	a1,0x0
    1ad0:	14820010 	bne	a0,v0,1b14 <func_80090014+0x250>
    1ad4:	00000000 	nop
    1ad8:	8202014e 	lb	v0,334(s0)
    1adc:	24a50000 	addiu	a1,a1,0
    1ae0:	8cb90004 	lw	t9,4(a1)
    1ae4:	0002c100 	sll	t8,v0,0x4
    1ae8:	00781821 	addu	v1,v1,t8
    1aec:	13200018 	beqz	t9,1b50 <func_80090014+0x28c>
    1af0:	28410002 	slti	at,v0,2
    1af4:	10200016 	beqz	at,1b50 <func_80090014+0x28c>
    1af8:	00000000 	nop
    1afc:	90a80068 	lbu	t0,104(a1)
    1b00:	2401003b 	li	at,59
    1b04:	11010012 	beq	t0,at,1b50 <func_80090014+0x28c>
    1b08:	00000000 	nop
    1b0c:	10000010 	b	1b50 <func_80090014+0x28c>
    1b10:	24630040 	addiu	v1,v1,64
    1b14:	3c050000 	lui	a1,0x0
    1b18:	24a50000 	addiu	a1,a1,0
    1b1c:	8ca90004 	lw	t1,4(a1)
    1b20:	1120000b 	beqz	t1,1b50 <func_80090014+0x28c>
    1b24:	00000000 	nop
    1b28:	10e20003 	beq	a3,v0,1b38 <func_80090014+0x274>
    1b2c:	24010011 	li	at,17
    1b30:	14410007 	bne	v0,at,1b50 <func_80090014+0x28c>
    1b34:	00000000 	nop
    1b38:	90aa0068 	lbu	t2,104(a1)
    1b3c:	2401003b 	li	at,59
    1b40:	11410003 	beq	t2,at,1b50 <func_80090014+0x28c>
    1b44:	00000000 	nop
    1b48:	3c030000 	lui	v1,0x0
    1b4c:	24630000 	addiu	v1,v1,0
    1b50:	8d6b0000 	lw	t3,0(t3)
    1b54:	000b6080 	sll	t4,t3,0x2
    1b58:	006c6821 	addu	t5,v1,t4
    1b5c:	8dae0000 	lw	t6,0(t5)
    1b60:	1000000a 	b	1b8c <func_80090014+0x2c8>
    1b64:	acce0000 	sw	t6,0(a2)
    1b68:	24010002 	li	at,2
    1b6c:	14a10007 	bne	a1,at,1b8c <func_80090014+0x2c8>
    1b70:	3c180000 	lui	t8,0x0
    1b74:	8f180000 	lw	t8,0(t8)
    1b78:	8e0f016c 	lw	t7,364(s0)
    1b7c:	0018c880 	sll	t9,t8,0x2
    1b80:	01f94021 	addu	t0,t7,t9
    1b84:	8d090000 	lw	t1,0(t0)
    1b88:	acc90000 	sw	t1,0(a2)
    1b8c:	8fbf0024 	lw	ra,36(sp)
    1b90:	8fb00020 	lw	s0,32(sp)
    1b94:	27bd0028 	addiu	sp,sp,40
    1b98:	03e00008 	jr	ra
    1b9c:	00001025 	move	v0,zero

00001ba0 <func_800902F0>:
    1ba0:	27bdffe0 	addiu	sp,sp,-32
    1ba4:	8fae0030 	lw	t6,48(sp)
    1ba8:	8faf0034 	lw	t7,52(sp)
    1bac:	afbf001c 	sw	ra,28(sp)
    1bb0:	afa50024 	sw	a1,36(sp)
    1bb4:	afa60028 	sw	a2,40(sp)
    1bb8:	afae0010 	sw	t6,16(sp)
    1bbc:	0c000000 	jal	0 <Player_SetBootData>
    1bc0:	afaf0014 	sw	t7,20(sp)
    1bc4:	8fa40034 	lw	a0,52(sp)
    1bc8:	8fa50024 	lw	a1,36(sp)
    1bcc:	14400043 	bnez	v0,1cdc <func_800902F0+0x13c>
    1bd0:	8fa60028 	lw	a2,40(sp)
    1bd4:	909806ad 	lbu	t8,1709(a0)
    1bd8:	24010002 	li	at,2
    1bdc:	53010004 	beql	t8,at,1bf0 <func_800902F0+0x50>
    1be0:	2401000f 	li	at,15
    1be4:	1000003d 	b	1cdc <func_800902F0+0x13c>
    1be8:	acc00000 	sw	zero,0(a2)
    1bec:	2401000f 	li	at,15
    1bf0:	14a10008 	bne	a1,at,1c14 <func_800902F0+0x74>
    1bf4:	3c020000 	lui	v0,0x0
    1bf8:	8c420004 	lw	v0,4(v0)
    1bfc:	3c080000 	lui	t0,0x0
    1c00:	0002c880 	sll	t9,v0,0x2
    1c04:	01194021 	addu	t0,t0,t9
    1c08:	8d080000 	lw	t0,0(t0)
    1c0c:	10000033 	b	1cdc <func_800902F0+0x13c>
    1c10:	acc80000 	sw	t0,0(a2)
    1c14:	24010010 	li	at,16
    1c18:	14a10008 	bne	a1,at,1c3c <func_800902F0+0x9c>
    1c1c:	3c020000 	lui	v0,0x0
    1c20:	8c420004 	lw	v0,4(v0)
    1c24:	3c0a0000 	lui	t2,0x0
    1c28:	00024880 	sll	t1,v0,0x2
    1c2c:	01495021 	addu	t2,t2,t1
    1c30:	8d4a0000 	lw	t2,0(t2)
    1c34:	10000029 	b	1cdc <func_800902F0+0x13c>
    1c38:	acca0000 	sw	t2,0(a2)
    1c3c:	24010011 	li	at,17
    1c40:	14a10008 	bne	a1,at,1c64 <func_800902F0+0xc4>
    1c44:	3c020000 	lui	v0,0x0
    1c48:	8c420004 	lw	v0,4(v0)
    1c4c:	3c0c0000 	lui	t4,0x0
    1c50:	00025880 	sll	t3,v0,0x2
    1c54:	018b6021 	addu	t4,t4,t3
    1c58:	8d8c0000 	lw	t4,0(t4)
    1c5c:	1000001f 	b	1cdc <func_800902F0+0x13c>
    1c60:	accc0000 	sw	t4,0(a2)
    1c64:	24010012 	li	at,18
    1c68:	14a10008 	bne	a1,at,1c8c <func_800902F0+0xec>
    1c6c:	3c020000 	lui	v0,0x0
    1c70:	8c420004 	lw	v0,4(v0)
    1c74:	3c0e0000 	lui	t6,0x0
    1c78:	00026880 	sll	t5,v0,0x2
    1c7c:	01cd7021 	addu	t6,t6,t5
    1c80:	8dce0000 	lw	t6,0(t6)
    1c84:	10000015 	b	1cdc <func_800902F0+0x13c>
    1c88:	acce0000 	sw	t6,0(a2)
    1c8c:	24010013 	li	at,19
    1c90:	54a10012 	bnel	a1,at,1cdc <func_800902F0+0x13c>
    1c94:	acc00000 	sw	zero,0(a2)
    1c98:	0c000000 	jal	0 <Player_SetBootData>
    1c9c:	afa60028 	sw	a2,40(sp)
    1ca0:	10400005 	beqz	v0,1cb8 <func_800902F0+0x118>
    1ca4:	8fa60028 	lw	a2,40(sp)
    1ca8:	3c0f0000 	lui	t7,0x0
    1cac:	25ef0000 	addiu	t7,t7,0
    1cb0:	1000000a 	b	1cdc <func_800902F0+0x13c>
    1cb4:	accf0000 	sw	t7,0(a2)
    1cb8:	3c020000 	lui	v0,0x0
    1cbc:	8c420004 	lw	v0,4(v0)
    1cc0:	3c190000 	lui	t9,0x0
    1cc4:	0002c080 	sll	t8,v0,0x2
    1cc8:	0338c821 	addu	t9,t9,t8
    1ccc:	8f390000 	lw	t9,0(t9)
    1cd0:	10000002 	b	1cdc <func_800902F0+0x13c>
    1cd4:	acd90000 	sw	t9,0(a2)
    1cd8:	acc00000 	sw	zero,0(a2)
    1cdc:	8fbf001c 	lw	ra,28(sp)
    1ce0:	27bd0020 	addiu	sp,sp,32
    1ce4:	00001025 	move	v0,zero
    1ce8:	03e00008 	jr	ra
    1cec:	00000000 	nop

00001cf0 <func_80090440>:
    1cf0:	27bdffe0 	addiu	sp,sp,-32
    1cf4:	8fae0030 	lw	t6,48(sp)
    1cf8:	8faf0034 	lw	t7,52(sp)
    1cfc:	afbf001c 	sw	ra,28(sp)
    1d00:	afa60028 	sw	a2,40(sp)
    1d04:	afae0010 	sw	t6,16(sp)
    1d08:	0c000000 	jal	0 <Player_SetBootData>
    1d0c:	afaf0014 	sw	t7,20(sp)
    1d10:	14400002 	bnez	v0,1d1c <func_80090440+0x2c>
    1d14:	8fb80028 	lw	t8,40(sp)
    1d18:	af000000 	sw	zero,0(t8)
    1d1c:	8fbf001c 	lw	ra,28(sp)
    1d20:	27bd0020 	addiu	sp,sp,32
    1d24:	00001025 	move	v0,zero
    1d28:	03e00008 	jr	ra
    1d2c:	00000000 	nop

00001d30 <func_80090480>:
    1d30:	27bdffd8 	addiu	sp,sp,-40
    1d34:	afbf0024 	sw	ra,36(sp)
    1d38:	afb10020 	sw	s1,32(sp)
    1d3c:	afb0001c 	sw	s0,28(sp)
    1d40:	afa40028 	sw	a0,40(sp)
    1d44:	afa70034 	sw	a3,52(sp)
    1d48:	8cce0000 	lw	t6,0(a2)
    1d4c:	00c08025 	move	s0,a2
    1d50:	00a08825 	move	s1,a1
    1d54:	15c0000f 	bnez	t6,1d94 <func_80090480+0x64>
    1d58:	8fb80034 	lw	t8,52(sp)
    1d5c:	50a00004 	beqzl	a1,1d70 <func_80090480+0x40>
    1d60:	26040004 	addiu	a0,s0,4
    1d64:	0c000000 	jal	0 <Player_SetBootData>
    1d68:	00000000 	nop
    1d6c:	26040004 	addiu	a0,s0,4
    1d70:	0c000000 	jal	0 <Player_SetBootData>
    1d74:	8fa50034 	lw	a1,52(sp)
    1d78:	26040010 	addiu	a0,s0,16
    1d7c:	0c000000 	jal	0 <Player_SetBootData>
    1d80:	8fa50038 	lw	a1,56(sp)
    1d84:	240f0001 	li	t7,1
    1d88:	ae0f0000 	sw	t7,0(s0)
    1d8c:	10000044 	b	1ea0 <func_80090480+0x170>
    1d90:	24020001 	li	v0,1
    1d94:	c7040000 	lwc1	$f4,0(t8)
    1d98:	c6060004 	lwc1	$f6,4(s0)
    1d9c:	46062032 	c.eq.s	$f4,$f6
    1da0:	00000000 	nop
    1da4:	45000026 	bc1f	1e40 <func_80090480+0x110>
    1da8:	00000000 	nop
    1dac:	c7080004 	lwc1	$f8,4(t8)
    1db0:	c60a0008 	lwc1	$f10,8(s0)
    1db4:	460a4032 	c.eq.s	$f8,$f10
    1db8:	00000000 	nop
    1dbc:	45000020 	bc1f	1e40 <func_80090480+0x110>
    1dc0:	00000000 	nop
    1dc4:	c7100008 	lwc1	$f16,8(t8)
    1dc8:	c612000c 	lwc1	$f18,12(s0)
    1dcc:	8fa50038 	lw	a1,56(sp)
    1dd0:	46128032 	c.eq.s	$f16,$f18
    1dd4:	00000000 	nop
    1dd8:	45000019 	bc1f	1e40 <func_80090480+0x110>
    1ddc:	00000000 	nop
    1de0:	c4a40000 	lwc1	$f4,0(a1)
    1de4:	c6060010 	lwc1	$f6,16(s0)
    1de8:	46062032 	c.eq.s	$f4,$f6
    1dec:	00000000 	nop
    1df0:	45000013 	bc1f	1e40 <func_80090480+0x110>
    1df4:	00000000 	nop
    1df8:	c4a80004 	lwc1	$f8,4(a1)
    1dfc:	c60a0014 	lwc1	$f10,20(s0)
    1e00:	460a4032 	c.eq.s	$f8,$f10
    1e04:	00000000 	nop
    1e08:	4500000d 	bc1f	1e40 <func_80090480+0x110>
    1e0c:	00000000 	nop
    1e10:	c4b00008 	lwc1	$f16,8(a1)
    1e14:	c6120018 	lwc1	$f18,24(s0)
    1e18:	46128032 	c.eq.s	$f16,$f18
    1e1c:	00000000 	nop
    1e20:	45000007 	bc1f	1e40 <func_80090480+0x110>
    1e24:	00000000 	nop
    1e28:	12200003 	beqz	s1,1e38 <func_80090480+0x108>
    1e2c:	8fa40028 	lw	a0,40(sp)
    1e30:	0c000000 	jal	0 <Player_SetBootData>
    1e34:	02202825 	move	a1,s1
    1e38:	10000019 	b	1ea0 <func_80090480+0x170>
    1e3c:	00001025 	move	v0,zero
    1e40:	1220000e 	beqz	s1,1e7c <func_80090480+0x14c>
    1e44:	8fa50038 	lw	a1,56(sp)
    1e48:	26190004 	addiu	t9,s0,4
    1e4c:	afb90010 	sw	t9,16(sp)
    1e50:	02202025 	move	a0,s1
    1e54:	8fa60034 	lw	a2,52(sp)
    1e58:	0c000000 	jal	0 <Player_SetBootData>
    1e5c:	26070010 	addiu	a3,s0,16
    1e60:	8fa40028 	lw	a0,40(sp)
    1e64:	3c010001 	lui	at,0x1
    1e68:	34211e60 	ori	at,at,0x1e60
    1e6c:	02203025 	move	a2,s1
    1e70:	0c000000 	jal	0 <Player_SetBootData>
    1e74:	00812821 	addu	a1,a0,at
    1e78:	8fa50038 	lw	a1,56(sp)
    1e7c:	26040010 	addiu	a0,s0,16
    1e80:	0c000000 	jal	0 <Player_SetBootData>
    1e84:	26110004 	addiu	s1,s0,4
    1e88:	02202025 	move	a0,s1
    1e8c:	0c000000 	jal	0 <Player_SetBootData>
    1e90:	8fa50034 	lw	a1,52(sp)
    1e94:	24080001 	li	t0,1
    1e98:	ae080000 	sw	t0,0(s0)
    1e9c:	24020001 	li	v0,1
    1ea0:	8fbf0024 	lw	ra,36(sp)
    1ea4:	8fb0001c 	lw	s0,28(sp)
    1ea8:	8fb10020 	lw	s1,32(sp)
    1eac:	03e00008 	jr	ra
    1eb0:	27bd0028 	addiu	sp,sp,40

00001eb4 <func_80090604>:
    1eb4:	27bdffa8 	addiu	sp,sp,-88
    1eb8:	afbf001c 	sw	ra,28(sp)
    1ebc:	afa40058 	sw	a0,88(sp)
    1ec0:	afa5005c 	sw	a1,92(sp)
    1ec4:	afa60060 	sw	a2,96(sp)
    1ec8:	afa70064 	sw	a3,100(sp)
    1ecc:	8caf067c 	lw	t7,1660(a1)
    1ed0:	000fc240 	sll	t8,t7,0x9
    1ed4:	07030028 	bgezl	t8,1f78 <func_80090604+0xc4>
    1ed8:	8fbf001c 	lw	ra,28(sp)
    1edc:	80b9014e 	lb	t9,334(a1)
    1ee0:	3c080000 	lui	t0,0x0
    1ee4:	01194021 	addu	t0,t0,t9
    1ee8:	9108050c 	lbu	t0,1292(t0)
    1eec:	a0a805f8 	sb	t0,1528(a1)
    1ef0:	8fa40064 	lw	a0,100(sp)
    1ef4:	0c000000 	jal	0 <Player_SetBootData>
    1ef8:	27a50028 	addiu	a1,sp,40
    1efc:	8fa40064 	lw	a0,100(sp)
    1f00:	27a50034 	addiu	a1,sp,52
    1f04:	0c000000 	jal	0 <Player_SetBootData>
    1f08:	2484000c 	addiu	a0,a0,12
    1f0c:	8fa40064 	lw	a0,100(sp)
    1f10:	27a50040 	addiu	a1,sp,64
    1f14:	0c000000 	jal	0 <Player_SetBootData>
    1f18:	24840018 	addiu	a0,a0,24
    1f1c:	8fa40064 	lw	a0,100(sp)
    1f20:	27a5004c 	addiu	a1,sp,76
    1f24:	0c000000 	jal	0 <Player_SetBootData>
    1f28:	24840024 	addiu	a0,a0,36
    1f2c:	27a9004c 	addiu	t1,sp,76
    1f30:	afa90010 	sw	t1,16(sp)
    1f34:	8fa40060 	lw	a0,96(sp)
    1f38:	27a50028 	addiu	a1,sp,40
    1f3c:	27a60034 	addiu	a2,sp,52
    1f40:	0c000000 	jal	0 <Player_SetBootData>
    1f44:	27a70040 	addiu	a3,sp,64
    1f48:	8fa40058 	lw	a0,88(sp)
    1f4c:	3c010001 	lui	at,0x1
    1f50:	34211e60 	ori	at,at,0x1e60
    1f54:	00812821 	addu	a1,a0,at
    1f58:	afa50024 	sw	a1,36(sp)
    1f5c:	0c000000 	jal	0 <Player_SetBootData>
    1f60:	8fa60060 	lw	a2,96(sp)
    1f64:	8fa50024 	lw	a1,36(sp)
    1f68:	8fa40058 	lw	a0,88(sp)
    1f6c:	0c000000 	jal	0 <Player_SetBootData>
    1f70:	8fa60060 	lw	a2,96(sp)
    1f74:	8fbf001c 	lw	ra,28(sp)
    1f78:	27bd0058 	addiu	sp,sp,88
    1f7c:	03e00008 	jr	ra
    1f80:	00000000 	nop

00001f84 <func_800906D4>:
    1f84:	27bdffb0 	addiu	sp,sp,-80
    1f88:	afb00020 	sw	s0,32(sp)
    1f8c:	afa40050 	sw	a0,80(sp)
    1f90:	00a08025 	move	s0,a1
    1f94:	afbf0024 	sw	ra,36(sp)
    1f98:	3c040000 	lui	a0,0x0
    1f9c:	afa60058 	sw	a2,88(sp)
    1fa0:	24840000 	addiu	a0,a0,0
    1fa4:	0c000000 	jal	0 <Player_SetBootData>
    1fa8:	27a5002c 	addiu	a1,sp,44
    1fac:	3c040000 	lui	a0,0x0
    1fb0:	2484000c 	addiu	a0,a0,12
    1fb4:	0c000000 	jal	0 <Player_SetBootData>
    1fb8:	27a50038 	addiu	a1,sp,56
    1fbc:	3c040000 	lui	a0,0x0
    1fc0:	24840018 	addiu	a0,a0,24
    1fc4:	0c000000 	jal	0 <Player_SetBootData>
    1fc8:	27a50044 	addiu	a1,sp,68
    1fcc:	27ae002c 	addiu	t6,sp,44
    1fd0:	afae0010 	sw	t6,16(sp)
    1fd4:	8fa40050 	lw	a0,80(sp)
    1fd8:	00002825 	move	a1,zero
    1fdc:	260608b4 	addiu	a2,s0,2228
    1fe0:	0c000000 	jal	0 <Player_SetBootData>
    1fe4:	8fa70058 	lw	a3,88(sp)
    1fe8:	5040000c 	beqzl	v0,201c <func_800906D4+0x98>
    1fec:	82190843 	lb	t9,2115(s0)
    1ff0:	8e0f067c 	lw	t7,1660(s0)
    1ff4:	000fc240 	sll	t8,t7,0x9
    1ff8:	07020008 	bltzl	t8,201c <func_800906D4+0x98>
    1ffc:	82190843 	lb	t9,2115(s0)
    2000:	0c000000 	jal	0 <Player_SetBootData>
    2004:	8e040670 	lw	a0,1648(s0)
    2008:	00402025 	move	a0,v0
    200c:	260508b8 	addiu	a1,s0,2232
    2010:	0c000000 	jal	0 <Player_SetBootData>
    2014:	260608c4 	addiu	a2,s0,2244
    2018:	82190843 	lb	t9,2115(s0)
    201c:	5b200019 	blezl	t9,2084 <func_800906D4+0x100>
    2020:	8fbf0024 	lw	ra,36(sp)
    2024:	82080842 	lb	t0,2114(s0)
    2028:	8fa40050 	lw	a0,80(sp)
    202c:	260504e4 	addiu	a1,s0,1252
    2030:	29010018 	slti	at,t0,24
    2034:	14200005 	bnez	at,204c <func_800906D4+0xc8>
    2038:	260608d0 	addiu	a2,s0,2256
    203c:	8e090680 	lw	t1,1664(s0)
    2040:	00095380 	sll	t2,t1,0xe
    2044:	0543000f 	bgezl	t2,2084 <func_800906D4+0x100>
    2048:	8fbf0024 	lw	ra,36(sp)
    204c:	8fa70058 	lw	a3,88(sp)
    2050:	27ab0038 	addiu	t3,sp,56
    2054:	afab0010 	sw	t3,16(sp)
    2058:	0c000000 	jal	0 <Player_SetBootData>
    205c:	24e7000c 	addiu	a3,a3,12
    2060:	8fa70058 	lw	a3,88(sp)
    2064:	27ac0044 	addiu	t4,sp,68
    2068:	afac0010 	sw	t4,16(sp)
    206c:	8fa40050 	lw	a0,80(sp)
    2070:	26050564 	addiu	a1,s0,1380
    2074:	260608ec 	addiu	a2,s0,2284
    2078:	0c000000 	jal	0 <Player_SetBootData>
    207c:	24e70018 	addiu	a3,a3,24
    2080:	8fbf0024 	lw	ra,36(sp)
    2084:	8fb00020 	lw	s0,32(sp)
    2088:	27bd0050 	addiu	sp,sp,80
    208c:	03e00008 	jr	ra
    2090:	00000000 	nop

00002094 <Player_DrawGetItemImpl>:
    2094:	27bdffb0 	addiu	sp,sp,-80
    2098:	afbf001c 	sw	ra,28(sp)
    209c:	afb00018 	sw	s0,24(sp)
    20a0:	afa40050 	sw	a0,80(sp)
    20a4:	afa60058 	sw	a2,88(sp)
    20a8:	afa7005c 	sw	a3,92(sp)
    20ac:	80ae0693 	lb	t6,1683(a1)
    20b0:	00a08025 	move	s0,a1
    20b4:	3c014160 	lui	at,0x4160
    20b8:	11c00005 	beqz	t6,20d0 <Player_DrawGetItemImpl+0x3c>
    20bc:	27a40038 	addiu	a0,sp,56
    20c0:	3c0140c0 	lui	at,0x40c0
    20c4:	44812000 	mtc1	at,$f4
    20c8:	10000004 	b	20dc <Player_DrawGetItemImpl+0x48>
    20cc:	e7a4004c 	swc1	$f4,76(sp)
    20d0:	44813000 	mtc1	at,$f6
    20d4:	00000000 	nop
    20d8:	e7a6004c 	swc1	$f6,76(sp)
    20dc:	8faf0050 	lw	t7,80(sp)
    20e0:	3c060000 	lui	a2,0x0
    20e4:	24c60028 	addiu	a2,a2,40
    20e8:	8de50000 	lw	a1,0(t7)
    20ec:	24070961 	li	a3,2401
    20f0:	0c000000 	jal	0 <Player_SetBootData>
    20f4:	afa50048 	sw	a1,72(sp)
    20f8:	8e1801b0 	lw	t8,432(s0)
    20fc:	3c018000 	lui	at,0x8000
    2100:	8fa80048 	lw	t0,72(sp)
    2104:	0301c821 	addu	t9,t8,at
    2108:	3c010000 	lui	at,0x0
    210c:	ac390018 	sw	t9,24(at)
    2110:	8d0302c0 	lw	v1,704(t0)
    2114:	3c04db06 	lui	a0,0xdb06
    2118:	34840018 	ori	a0,a0,0x18
    211c:	24690008 	addiu	t1,v1,8
    2120:	ad0902c0 	sw	t1,704(t0)
    2124:	ac640000 	sw	a0,0(v1)
    2128:	8e0a01b0 	lw	t2,432(s0)
    212c:	ac6a0004 	sw	t2,4(v1)
    2130:	8d0302d0 	lw	v1,720(t0)
    2134:	246b0008 	addiu	t3,v1,8
    2138:	ad0b02d0 	sw	t3,720(t0)
    213c:	ac640000 	sw	a0,0(v1)
    2140:	8e0c01b0 	lw	t4,432(s0)
    2144:	ac6c0004 	sw	t4,4(v1)
    2148:	0c000000 	jal	0 <Player_SetBootData>
    214c:	860400b6 	lh	a0,182(s0)
    2150:	e7a00028 	swc1	$f0,40(sp)
    2154:	0c000000 	jal	0 <Player_SetBootData>
    2158:	860400b6 	lh	a0,182(s0)
    215c:	3c0d0000 	lui	t5,0x0
    2160:	8dad0000 	lw	t5,0(t5)
    2164:	3c010000 	lui	at,0x0
    2168:	c42201bc 	lwc1	$f2,444(at)
    216c:	c7a80028 	lwc1	$f8,40(sp)
    2170:	85ae0788 	lh	t6,1928(t5)
    2174:	8fa20058 	lw	v0,88(sp)
    2178:	46024282 	mul.s	$f10,$f8,$f2
    217c:	448e3000 	mtc1	t6,$f6
    2180:	c4500000 	lwc1	$f16,0(v0)
    2184:	3c014120 	lui	at,0x4120
    2188:	c7a4004c 	lwc1	$f4,76(sp)
    218c:	c4520004 	lwc1	$f18,4(v0)
    2190:	46803220 	cvt.s.w	$f8,$f6
    2194:	c4460008 	lwc1	$f6,8(v0)
    2198:	00003825 	move	a3,zero
    219c:	46105300 	add.s	$f12,$f10,$f16
    21a0:	44815000 	mtc1	at,$f10
    21a4:	46049380 	add.s	$f14,$f18,$f4
    21a8:	460a4403 	div.s	$f16,$f8,$f10
    21ac:	46101480 	add.s	$f18,$f2,$f16
    21b0:	46120102 	mul.s	$f4,$f0,$f18
    21b4:	46062200 	add.s	$f8,$f4,$f6
    21b8:	44064000 	mfc1	a2,$f8
    21bc:	0c000000 	jal	0 <Player_SetBootData>
    21c0:	00000000 	nop
    21c4:	8faf0050 	lw	t7,80(sp)
    21c8:	3c050001 	lui	a1,0x1
    21cc:	00002025 	move	a0,zero
    21d0:	00af2821 	addu	a1,a1,t7
    21d4:	8ca51de4 	lw	a1,7652(a1)
    21d8:	00003025 	move	a2,zero
    21dc:	24070001 	li	a3,1
    21e0:	00a00821 	move	at,a1
    21e4:	00052940 	sll	a1,a1,0x5
    21e8:	00a12823 	subu	a1,a1,at
    21ec:	00052880 	sll	a1,a1,0x2
    21f0:	00a12821 	addu	a1,a1,at
    21f4:	000528c0 	sll	a1,a1,0x3
    21f8:	00052c00 	sll	a1,a1,0x10
    21fc:	0c000000 	jal	0 <Player_SetBootData>
    2200:	00052c03 	sra	a1,a1,0x10
    2204:	3c010000 	lui	at,0x0
    2208:	c42c01c0 	lwc1	$f12,448(at)
    220c:	24070001 	li	a3,1
    2210:	44066000 	mfc1	a2,$f12
    2214:	0c000000 	jal	0 <Player_SetBootData>
    2218:	46006386 	mov.s	$f14,$f12
    221c:	8fa5005c 	lw	a1,92(sp)
    2220:	8fa40050 	lw	a0,80(sp)
    2224:	24a5ffff 	addiu	a1,a1,-1
    2228:	00052c00 	sll	a1,a1,0x10
    222c:	0c000000 	jal	0 <Player_SetBootData>
    2230:	00052c03 	sra	a1,a1,0x10
    2234:	8fb80050 	lw	t8,80(sp)
    2238:	3c060000 	lui	a2,0x0
    223c:	24c6003c 	addiu	a2,a2,60
    2240:	27a40038 	addiu	a0,sp,56
    2244:	24070975 	li	a3,2421
    2248:	0c000000 	jal	0 <Player_SetBootData>
    224c:	8f050000 	lw	a1,0(t8)
    2250:	8fbf001c 	lw	ra,28(sp)
    2254:	8fb00018 	lw	s0,24(sp)
    2258:	27bd0050 	addiu	sp,sp,80
    225c:	03e00008 	jr	ra
    2260:	00000000 	nop

00002264 <Player_DrawGetItem>:
    2264:	27bdffe0 	addiu	sp,sp,-32
    2268:	afbf001c 	sw	ra,28(sp)
    226c:	afb00018 	sw	s0,24(sp)
    2270:	afa40020 	sw	a0,32(sp)
    2274:	90ae0170 	lbu	t6,368(a1)
    2278:	00a08025 	move	s0,a1
    227c:	24a40194 	addiu	a0,a1,404
    2280:	11c00005 	beqz	t6,2298 <Player_DrawGetItem+0x34>
    2284:	00002825 	move	a1,zero
    2288:	0c000000 	jal	0 <Player_SetBootData>
    228c:	00003025 	move	a2,zero
    2290:	5440000d 	bnezl	v0,22c8 <Player_DrawGetItem+0x64>
    2294:	8fbf001c 	lw	ra,28(sp)
    2298:	82020862 	lb	v0,2146(s0)
    229c:	a2000170 	sb	zero,368(s0)
    22a0:	8fa40020 	lw	a0,32(sp)
    22a4:	04400003 	bltz	v0,22b4 <Player_DrawGetItem+0x50>
    22a8:	02002825 	move	a1,s0
    22ac:	10000002 	b	22b8 <Player_DrawGetItem+0x54>
    22b0:	00403825 	move	a3,v0
    22b4:	00023823 	negu	a3,v0
    22b8:	3c060000 	lui	a2,0x0
    22bc:	0c000000 	jal	0 <Player_SetBootData>
    22c0:	24c60000 	addiu	a2,a2,0
    22c4:	8fbf001c 	lw	ra,28(sp)
    22c8:	8fb00018 	lw	s0,24(sp)
    22cc:	27bd0020 	addiu	sp,sp,32
    22d0:	03e00008 	jr	ra
    22d4:	00000000 	nop

000022d8 <func_80090A28>:
    22d8:	3c070000 	lui	a3,0x0
    22dc:	24e70000 	addiu	a3,a3,0
    22e0:	c4e40000 	lwc1	$f4,0(a3)
    22e4:	27bdffe8 	addiu	sp,sp,-24
    22e8:	3c060000 	lui	a2,0x0
    22ec:	24c60000 	addiu	a2,a2,0
    22f0:	afbf0014 	sw	ra,20(sp)
    22f4:	afa5001c 	sw	a1,28(sp)
    22f8:	e4c40000 	swc1	$f4,0(a2)
    22fc:	90820845 	lbu	v0,2117(a0)
    2300:	24180009 	li	t8,9
    2304:	28410003 	slti	at,v0,3
    2308:	1420000f 	bnez	at,2348 <func_80090A28+0x70>
    230c:	244e0001 	addiu	t6,v0,1
    2310:	31cf00ff 	andi	t7,t6,0xff
    2314:	030fc823 	subu	t9,t8,t7
    2318:	44993000 	mtc1	t9,$f6
    231c:	a08e0845 	sb	t6,2117(a0)
    2320:	3c010000 	lui	at,0x0
    2324:	46803220 	cvt.s.w	$f8,$f6
    2328:	c42a01c4 	lwc1	$f10,452(at)
    232c:	3c013f80 	lui	at,0x3f80
    2330:	44819000 	mtc1	at,$f18
    2334:	c4c60000 	lwc1	$f6,0(a2)
    2338:	460a4402 	mul.s	$f16,$f8,$f10
    233c:	46109100 	add.s	$f4,$f18,$f16
    2340:	46043202 	mul.s	$f8,$f6,$f4
    2344:	e4c80000 	swc1	$f8,0(a2)
    2348:	3c014496 	lui	at,0x4496
    234c:	44819000 	mtc1	at,$f18
    2350:	c4ca0000 	lwc1	$f10,0(a2)
    2354:	3c010000 	lui	at,0x0
    2358:	00e02025 	move	a0,a3
    235c:	46125400 	add.s	$f16,$f10,$f18
    2360:	8fa5001c 	lw	a1,28(sp)
    2364:	e4d00000 	swc1	$f16,0(a2)
    2368:	c4c60000 	lwc1	$f6,0(a2)
    236c:	0c000000 	jal	0 <Player_SetBootData>
    2370:	e4260000 	swc1	$f6,0(at)
    2374:	8fa5001c 	lw	a1,28(sp)
    2378:	3c060000 	lui	a2,0x0
    237c:	24c40000 	addiu	a0,a2,0
    2380:	0c000000 	jal	0 <Player_SetBootData>
    2384:	24a5000c 	addiu	a1,a1,12
    2388:	8fa5001c 	lw	a1,28(sp)
    238c:	3c040000 	lui	a0,0x0
    2390:	24840000 	addiu	a0,a0,0
    2394:	0c000000 	jal	0 <Player_SetBootData>
    2398:	24a50018 	addiu	a1,a1,24
    239c:	8fbf0014 	lw	ra,20(sp)
    23a0:	27bd0018 	addiu	sp,sp,24
    23a4:	03e00008 	jr	ra
    23a8:	00000000 	nop

000023ac <func_80090AFC>:
    23ac:	27bdff60 	addiu	sp,sp,-160
    23b0:	afb00030 	sw	s0,48(sp)
    23b4:	44802000 	mtc1	zero,$f4
    23b8:	3c100000 	lui	s0,0x0
    23bc:	26100558 	addiu	s0,s0,1368
    23c0:	afbf0034 	sw	ra,52(sp)
    23c4:	afa400a0 	sw	a0,160(sp)
    23c8:	afa500a4 	sw	a1,164(sp)
    23cc:	3c010000 	lui	at,0x0
    23d0:	afa600a8 	sw	a2,168(sp)
    23d4:	27a5008c 	addiu	a1,sp,140
    23d8:	02002025 	move	a0,s0
    23dc:	0c000000 	jal	0 <Player_SetBootData>
    23e0:	e4240560 	swc1	$f4,1376(at)
    23e4:	c7a600a8 	lwc1	$f6,168(sp)
    23e8:	3c010000 	lui	at,0x0
    23ec:	02002025 	move	a0,s0
    23f0:	27a50080 	addiu	a1,sp,128
    23f4:	0c000000 	jal	0 <Player_SetBootData>
    23f8:	e4260560 	swc1	$f6,1376(at)
    23fc:	8fa400a0 	lw	a0,160(sp)
    2400:	27ae009c 	addiu	t6,sp,156
    2404:	240f0001 	li	t7,1
    2408:	24180001 	li	t8,1
    240c:	24190001 	li	t9,1
    2410:	24080001 	li	t0,1
    2414:	27a90098 	addiu	t1,sp,152
    2418:	afa90024 	sw	t1,36(sp)
    241c:	afa80020 	sw	t0,32(sp)
    2420:	afb9001c 	sw	t9,28(sp)
    2424:	afb80018 	sw	t8,24(sp)
    2428:	afaf0014 	sw	t7,20(sp)
    242c:	afae0010 	sw	t6,16(sp)
    2430:	27a5008c 	addiu	a1,sp,140
    2434:	27a60080 	addiu	a2,sp,128
    2438:	27a70074 	addiu	a3,sp,116
    243c:	0c000000 	jal	0 <Player_SetBootData>
    2440:	248407c0 	addiu	a0,a0,1984
    2444:	1040005d 	beqz	v0,25bc <func_80090AFC+0x210>
    2448:	8faa00a0 	lw	t2,160(sp)
    244c:	8d450000 	lw	a1,0(t2)
    2450:	3c060000 	lui	a2,0x0
    2454:	24c60050 	addiu	a2,a2,80
    2458:	27a4004c 	addiu	a0,sp,76
    245c:	24070a0c 	li	a3,2572
    2460:	0c000000 	jal	0 <Player_SetBootData>
    2464:	00a08025 	move	s0,a1
    2468:	8e0402b0 	lw	a0,688(s0)
    246c:	0c000000 	jal	0 <Player_SetBootData>
    2470:	24050007 	li	a1,7
    2474:	ae0202b0 	sw	v0,688(s0)
    2478:	8fa400a0 	lw	a0,160(sp)
    247c:	3c010001 	lui	at,0x1
    2480:	34211d60 	ori	at,at,0x1d60
    2484:	27a50074 	addiu	a1,sp,116
    2488:	27a60068 	addiu	a2,sp,104
    248c:	27a70064 	addiu	a3,sp,100
    2490:	0c000000 	jal	0 <Player_SetBootData>
    2494:	00812021 	addu	a0,a0,at
    2498:	3c014348 	lui	at,0x4348
    249c:	44811000 	mtc1	at,$f2
    24a0:	c7a00064 	lwc1	$f0,100(sp)
    24a4:	3c010000 	lui	at,0x0
    24a8:	00003825 	move	a3,zero
    24ac:	4602003c 	c.lt.s	$f0,$f2
    24b0:	00000000 	nop
    24b4:	45020005 	bc1fl	24cc <func_80090AFC+0x120>
    24b8:	46020283 	div.s	$f10,$f0,$f2
    24bc:	c42801c8 	lwc1	$f8,456(at)
    24c0:	10000006 	b	24dc <func_80090AFC+0x130>
    24c4:	e7a80060 	swc1	$f8,96(sp)
    24c8:	46020283 	div.s	$f10,$f0,$f2
    24cc:	3c010000 	lui	at,0x0
    24d0:	c43001cc 	lwc1	$f16,460(at)
    24d4:	46105302 	mul.s	$f12,$f10,$f16
    24d8:	e7ac0060 	swc1	$f12,96(sp)
    24dc:	c7ac0074 	lwc1	$f12,116(sp)
    24e0:	c7ae0078 	lwc1	$f14,120(sp)
    24e4:	0c000000 	jal	0 <Player_SetBootData>
    24e8:	8fa6007c 	lw	a2,124(sp)
    24ec:	c7ac0060 	lwc1	$f12,96(sp)
    24f0:	24070001 	li	a3,1
    24f4:	44066000 	mfc1	a2,$f12
    24f8:	0c000000 	jal	0 <Player_SetBootData>
    24fc:	46006386 	mov.s	$f14,$f12
    2500:	8e0202b0 	lw	v0,688(s0)
    2504:	3c0cda38 	lui	t4,0xda38
    2508:	358c0003 	ori	t4,t4,0x3
    250c:	244b0008 	addiu	t3,v0,8
    2510:	ae0b02b0 	sw	t3,688(s0)
    2514:	ac4c0000 	sw	t4,0(v0)
    2518:	8fad00a0 	lw	t5,160(sp)
    251c:	3c050000 	lui	a1,0x0
    2520:	24a50064 	addiu	a1,a1,100
    2524:	8da40000 	lw	a0,0(t5)
    2528:	24060a1b 	li	a2,2587
    252c:	0c000000 	jal	0 <Player_SetBootData>
    2530:	afa20048 	sw	v0,72(sp)
    2534:	8fa30048 	lw	v1,72(sp)
    2538:	3c0fdb06 	lui	t7,0xdb06
    253c:	35ef0018 	ori	t7,t7,0x18
    2540:	ac620004 	sw	v0,4(v1)
    2544:	8e0202b0 	lw	v0,688(s0)
    2548:	3c0b0001 	lui	t3,0x1
    254c:	3c0dde00 	lui	t5,0xde00
    2550:	244e0008 	addiu	t6,v0,8
    2554:	ae0e02b0 	sw	t6,688(s0)
    2558:	ac4f0000 	sw	t7,0(v0)
    255c:	8fb900a4 	lw	t9,164(sp)
    2560:	8fb800a0 	lw	t8,160(sp)
    2564:	3c0e0000 	lui	t6,0x0
    2568:	8328001e 	lb	t0,30(t9)
    256c:	25ce0000 	addiu	t6,t6,0
    2570:	3c060000 	lui	a2,0x0
    2574:	00084900 	sll	t1,t0,0x4
    2578:	01284821 	addu	t1,t1,t0
    257c:	00094880 	sll	t1,t1,0x2
    2580:	03095021 	addu	t2,t8,t1
    2584:	016a5821 	addu	t3,t3,t2
    2588:	8d6b17b4 	lw	t3,6068(t3)
    258c:	24c60078 	addiu	a2,a2,120
    2590:	27a4004c 	addiu	a0,sp,76
    2594:	ac4b0004 	sw	t3,4(v0)
    2598:	8e0202b0 	lw	v0,688(s0)
    259c:	24070a20 	li	a3,2592
    25a0:	244c0008 	addiu	t4,v0,8
    25a4:	ae0c02b0 	sw	t4,688(s0)
    25a8:	ac4e0004 	sw	t6,4(v0)
    25ac:	ac4d0000 	sw	t5,0(v0)
    25b0:	8faf00a0 	lw	t7,160(sp)
    25b4:	0c000000 	jal	0 <Player_SetBootData>
    25b8:	8de50000 	lw	a1,0(t7)
    25bc:	8fbf0034 	lw	ra,52(sp)
    25c0:	8fb00030 	lw	s0,48(sp)
    25c4:	27bd00a0 	addiu	sp,sp,160
    25c8:	03e00008 	jr	ra
    25cc:	00000000 	nop

000025d0 <func_80090D20>:
    25d0:	27bdfe70 	addiu	sp,sp,-400
    25d4:	afbf0024 	sw	ra,36(sp)
    25d8:	afb00020 	sw	s0,32(sp)
    25dc:	afa40190 	sw	a0,400(sp)
    25e0:	afa50194 	sw	a1,404(sp)
    25e4:	afa60198 	sw	a2,408(sp)
    25e8:	afa7019c 	sw	a3,412(sp)
    25ec:	8ccf0000 	lw	t7,0(a2)
    25f0:	3c040000 	lui	a0,0x0
    25f4:	24840000 	addiu	a0,a0,0
    25f8:	11e00003 	beqz	t7,2608 <func_80090D20+0x38>
    25fc:	3c050000 	lui	a1,0x0
    2600:	0c000000 	jal	0 <Player_SetBootData>
    2604:	8ca50000 	lw	a1,0(a1)
    2608:	8fb80194 	lw	t8,404(sp)
    260c:	24010010 	li	at,16
    2610:	8fb001a0 	lw	s0,416(sp)
    2614:	17010121 	bne	t8,at,2a9c <func_80090D20+0x4cc>
    2618:	8fab0194 	lw	t3,404(sp)
    261c:	3c050000 	lui	a1,0x0
    2620:	8ca50000 	lw	a1,0(a1)
    2624:	0c000000 	jal	0 <Player_SetBootData>
    2628:	260403b0 	addiu	a0,s0,944
    262c:	82050154 	lb	a1,340(s0)
    2630:	24010006 	li	at,6
    2634:	8fb90190 	lw	t9,400(sp)
    2638:	14a10057 	bne	a1,at,2798 <func_80090D20+0x1c8>
    263c:	27a40110 	addiu	a0,sp,272
    2640:	8f250000 	lw	a1,0(t9)
    2644:	3c060000 	lui	a2,0x0
    2648:	24c60000 	addiu	a2,a2,0
    264c:	24070a49 	li	a3,2633
    2650:	0c000000 	jal	0 <Player_SetBootData>
    2654:	afa50120 	sw	a1,288(sp)
    2658:	c6040054 	lwc1	$f4,84(s0)
    265c:	44803000 	mtc1	zero,$f6
    2660:	3c010000 	lui	at,0x0
    2664:	4604303e 	c.le.s	$f6,$f4
    2668:	00000000 	nop
    266c:	45000014 	bc1f	26c0 <func_80090D20+0xf0>
    2670:	00000000 	nop
    2674:	c608085c 	lwc1	$f8,2140(s0)
    2678:	c42a0000 	lwc1	$f10,0(at)
    267c:	3c010000 	lui	at,0x0
    2680:	02002025 	move	a0,s0
    2684:	460a4402 	mul.s	$f16,$f8,$f10
    2688:	27a50124 	addiu	a1,sp,292
    268c:	0c000000 	jal	0 <Player_SetBootData>
    2690:	e4300000 	swc1	$f16,0(at)
    2694:	820a0843 	lb	t2,2115(s0)
    2698:	27a60124 	addiu	a2,sp,292
    269c:	02002825 	move	a1,s0
    26a0:	11400005 	beqz	t2,26b8 <func_80090D20+0xe8>
    26a4:	260408b8 	addiu	a0,s0,2232
    26a8:	0c000000 	jal	0 <Player_SetBootData>
    26ac:	8fa40190 	lw	a0,400(sp)
    26b0:	10000003 	b	26c0 <func_80090D20+0xf0>
    26b4:	00000000 	nop
    26b8:	0c000000 	jal	0 <Player_SetBootData>
    26bc:	00c02825 	move	a1,a2
    26c0:	3c010000 	lui	at,0x0
    26c4:	c42c0000 	lwc1	$f12,0(at)
    26c8:	3c010000 	lui	at,0x0
    26cc:	3c06c207 	lui	a2,0xc207
    26d0:	34c647ae 	ori	a2,a2,0x47ae
    26d4:	c42e0000 	lwc1	$f14,0(at)
    26d8:	0c000000 	jal	0 <Player_SetBootData>
    26dc:	24070001 	li	a3,1
    26e0:	24048000 	li	a0,-32768
    26e4:	00002825 	move	a1,zero
    26e8:	24064000 	li	a2,16384
    26ec:	0c000000 	jal	0 <Player_SetBootData>
    26f0:	24070001 	li	a3,1
    26f4:	3c013f80 	lui	at,0x3f80
    26f8:	44816000 	mtc1	at,$f12
    26fc:	c60e085c 	lwc1	$f14,2140(s0)
    2700:	24070001 	li	a3,1
    2704:	44066000 	mfc1	a2,$f12
    2708:	0c000000 	jal	0 <Player_SetBootData>
    270c:	00000000 	nop
    2710:	8fa70120 	lw	a3,288(sp)
    2714:	3c0cda38 	lui	t4,0xda38
    2718:	358c0003 	ori	t4,t4,0x3
    271c:	8ce202c0 	lw	v0,704(a3)
    2720:	3c050000 	lui	a1,0x0
    2724:	24a50000 	addiu	a1,a1,0
    2728:	244b0008 	addiu	t3,v0,8
    272c:	aceb02c0 	sw	t3,704(a3)
    2730:	ac4c0000 	sw	t4,0(v0)
    2734:	8fad0190 	lw	t5,400(sp)
    2738:	24060a5d 	li	a2,2653
    273c:	8da40000 	lw	a0,0(t5)
    2740:	0c000000 	jal	0 <Player_SetBootData>
    2744:	afa2010c 	sw	v0,268(sp)
    2748:	8fa3010c 	lw	v1,268(sp)
    274c:	3c190000 	lui	t9,0x0
    2750:	27390000 	addiu	t9,t9,0
    2754:	ac620004 	sw	v0,4(v1)
    2758:	8fae0120 	lw	t6,288(sp)
    275c:	3c18de00 	lui	t8,0xde00
    2760:	3c060000 	lui	a2,0x0
    2764:	8dc202c0 	lw	v0,704(t6)
    2768:	24c60000 	addiu	a2,a2,0
    276c:	27a40110 	addiu	a0,sp,272
    2770:	244f0008 	addiu	t7,v0,8
    2774:	adcf02c0 	sw	t7,704(t6)
    2778:	ac590004 	sw	t9,4(v0)
    277c:	ac580000 	sw	t8,0(v0)
    2780:	8faa0190 	lw	t2,400(sp)
    2784:	24070a60 	li	a3,2656
    2788:	0c000000 	jal	0 <Player_SetBootData>
    278c:	8d450000 	lw	a1,0(t2)
    2790:	10000072 	b	295c <func_80090D20+0x38c>
    2794:	c6000054 	lwc1	$f0,84(s0)
    2798:	c6000054 	lwc1	$f0,84(s0)
    279c:	44809000 	mtc1	zero,$f18
    27a0:	8fad0198 	lw	t5,408(sp)
    27a4:	4600903e 	c.le.s	$f18,$f0
    27a8:	00000000 	nop
    27ac:	4502001e 	bc1fl	2828 <func_80090D20+0x258>
    27b0:	8daf0000 	lw	t7,0(t5)
    27b4:	820b0843 	lb	t3,2115(s0)
    27b8:	5160001b 	beqzl	t3,2828 <func_80090D20+0x258>
    27bc:	8daf0000 	lw	t7,0(t5)
    27c0:	0c000000 	jal	0 <Player_SetBootData>
    27c4:	02002025 	move	a0,s0
    27c8:	10400005 	beqz	v0,27e0 <func_80090D20+0x210>
    27cc:	3c010000 	lui	at,0x0
    27d0:	c4240000 	lwc1	$f4,0(at)
    27d4:	3c010000 	lui	at,0x0
    27d8:	10000009 	b	2800 <func_80090D20+0x230>
    27dc:	e4240000 	swc1	$f4,0(at)
    27e0:	0c000000 	jal	0 <Player_SetBootData>
    27e4:	02002025 	move	a0,s0
    27e8:	00026080 	sll	t4,v0,0x2
    27ec:	3c010000 	lui	at,0x0
    27f0:	002c0821 	addu	at,at,t4
    27f4:	c4260000 	lwc1	$f6,0(at)
    27f8:	3c010000 	lui	at,0x0
    27fc:	e4260000 	swc1	$f6,0(at)
    2800:	02002025 	move	a0,s0
    2804:	0c000000 	jal	0 <Player_SetBootData>
    2808:	27a500e4 	addiu	a1,sp,228
    280c:	8fa40190 	lw	a0,400(sp)
    2810:	02002825 	move	a1,s0
    2814:	0c000000 	jal	0 <Player_SetBootData>
    2818:	27a600e4 	addiu	a2,sp,228
    281c:	1000004f 	b	295c <func_80090D20+0x38c>
    2820:	c6000054 	lwc1	$f0,84(s0)
    2824:	8daf0000 	lw	t7,0(t5)
    2828:	51e0004d 	beqzl	t7,2960 <func_80090D20+0x390>
    282c:	44804000 	mtc1	zero,$f8
    2830:	920e015c 	lbu	t6,348(s0)
    2834:	24010007 	li	at,7
    2838:	55c10049 	bnel	t6,at,2960 <func_80090D20+0x390>
    283c:	44804000 	mtc1	zero,$f8
    2840:	0c000000 	jal	0 <Player_SetBootData>
    2844:	02002025 	move	a0,s0
    2848:	8faa0190 	lw	t2,400(sp)
    284c:	0002c080 	sll	t8,v0,0x2
    2850:	3c190000 	lui	t9,0x0
    2854:	8d450000 	lw	a1,0(t2)
    2858:	27390000 	addiu	t9,t9,0
    285c:	0302c023 	subu	t8,t8,v0
    2860:	03194821 	addu	t1,t8,t9
    2864:	3c060000 	lui	a2,0x0
    2868:	24c60000 	addiu	a2,a2,0
    286c:	afa900e0 	sw	t1,224(sp)
    2870:	27a400cc 	addiu	a0,sp,204
    2874:	24070a96 	li	a3,2710
    2878:	0c000000 	jal	0 <Player_SetBootData>
    287c:	afa500dc 	sw	a1,220(sp)
    2880:	8fa800dc 	lw	t0,220(sp)
    2884:	8fa900e0 	lw	t1,224(sp)
    2888:	3c0cda38 	lui	t4,0xda38
    288c:	8d0202d0 	lw	v0,720(t0)
    2890:	358c0003 	ori	t4,t4,0x3
    2894:	3c050000 	lui	a1,0x0
    2898:	244b0008 	addiu	t3,v0,8
    289c:	ad0b02d0 	sw	t3,720(t0)
    28a0:	ac4c0000 	sw	t4,0(v0)
    28a4:	8fad0190 	lw	t5,400(sp)
    28a8:	24a50000 	addiu	a1,a1,0
    28ac:	24060a98 	li	a2,2712
    28b0:	8da40000 	lw	a0,0(t5)
    28b4:	afa800dc 	sw	t0,220(sp)
    28b8:	afa900e0 	sw	t1,224(sp)
    28bc:	0c000000 	jal	0 <Player_SetBootData>
    28c0:	afa200c8 	sw	v0,200(sp)
    28c4:	8fa300c8 	lw	v1,200(sp)
    28c8:	8fa800dc 	lw	t0,220(sp)
    28cc:	8fa900e0 	lw	t1,224(sp)
    28d0:	ac620004 	sw	v0,4(v1)
    28d4:	8d0202d0 	lw	v0,720(t0)
    28d8:	3c0efb00 	lui	t6,0xfb00
    28dc:	3c060000 	lui	a2,0x0
    28e0:	244f0008 	addiu	t7,v0,8
    28e4:	ad0f02d0 	sw	t7,720(t0)
    28e8:	ac4e0000 	sw	t6,0(v0)
    28ec:	91390000 	lbu	t9,0(t1)
    28f0:	912c0001 	lbu	t4,1(t1)
    28f4:	91380002 	lbu	t8,2(t1)
    28f8:	00195600 	sll	t2,t9,0x18
    28fc:	000c6c00 	sll	t5,t4,0x10
    2900:	014d7825 	or	t7,t2,t5
    2904:	0018ca00 	sll	t9,t8,0x8
    2908:	01f95825 	or	t3,t7,t9
    290c:	ac4b0004 	sw	t3,4(v0)
    2910:	8d0202d0 	lw	v0,720(t0)
    2914:	3c0ade00 	lui	t2,0xde00
    2918:	3c090000 	lui	t1,0x0
    291c:	244c0008 	addiu	t4,v0,8
    2920:	ad0c02d0 	sw	t4,720(t0)
    2924:	ac4a0000 	sw	t2,0(v0)
    2928:	8d290004 	lw	t1,4(t1)
    292c:	3c0e0000 	lui	t6,0x0
    2930:	24c60000 	addiu	a2,a2,0
    2934:	00096880 	sll	t5,t1,0x2
    2938:	01cd7021 	addu	t6,t6,t5
    293c:	8dce0000 	lw	t6,0(t6)
    2940:	27a400cc 	addiu	a0,sp,204
    2944:	24070a9d 	li	a3,2717
    2948:	ac4e0004 	sw	t6,4(v0)
    294c:	8fb80190 	lw	t8,400(sp)
    2950:	0c000000 	jal	0 <Player_SetBootData>
    2954:	8f050000 	lw	a1,0(t8)
    2958:	c6000054 	lwc1	$f0,84(s0)
    295c:	44804000 	mtc1	zero,$f8
    2960:	00000000 	nop
    2964:	4600403e 	c.le.s	$f8,$f0
    2968:	00000000 	nop
    296c:	4502019a 	bc1fl	2fd8 <func_80090D20+0xa08>
    2970:	8fbf0024 	lw	ra,36(sp)
    2974:	0c000000 	jal	0 <Player_SetBootData>
    2978:	02002025 	move	a0,s0
    297c:	1440003f 	bnez	v0,2a7c <func_80090D20+0x4ac>
    2980:	260409e0 	addiu	a0,s0,2528
    2984:	8e0303ac 	lw	v1,940(s0)
    2988:	1060003c 	beqz	v1,2a7c <func_80090D20+0x4ac>
    298c:	00000000 	nop
    2990:	8e02067c 	lw	v0,1660(s0)
    2994:	3c040000 	lui	a0,0x0
    2998:	24840000 	addiu	a0,a0,0
    299c:	304f0200 	andi	t7,v0,0x200
    29a0:	11e00019 	beqz	t7,2a08 <func_80090D20+0x438>
    29a4:	304c0800 	andi	t4,v0,0x800
    29a8:	24650024 	addiu	a1,v1,36
    29ac:	0c000000 	jal	0 <Player_SetBootData>
    29b0:	afa30148 	sw	v1,328(sp)
    29b4:	240469e8 	li	a0,27112
    29b8:	2405a8f8 	li	a1,-22280
    29bc:	2406458e 	li	a2,17806
    29c0:	0c000000 	jal	0 <Player_SetBootData>
    29c4:	24070001 	li	a3,1
    29c8:	0c000000 	jal	0 <Player_SetBootData>
    29cc:	27a4014c 	addiu	a0,sp,332
    29d0:	8fa30148 	lw	v1,328(sp)
    29d4:	27a4014c 	addiu	a0,sp,332
    29d8:	00003025 	move	a2,zero
    29dc:	24700030 	addiu	s0,v1,48
    29e0:	0c000000 	jal	0 <Player_SetBootData>
    29e4:	02002825 	move	a1,s0
    29e8:	8a0b0000 	lwl	t3,0(s0)
    29ec:	8fa30148 	lw	v1,328(sp)
    29f0:	9a0b0003 	lwr	t3,3(s0)
    29f4:	a86b00b4 	swl	t3,180(v1)
    29f8:	b86b00b7 	swr	t3,183(v1)
    29fc:	960b0004 	lhu	t3,4(s0)
    2a00:	10000174 	b	2fd4 <func_80090D20+0xa04>
    2a04:	a46b00b8 	sh	t3,184(v1)
    2a08:	11800172 	beqz	t4,2fd4 <func_80090D20+0xa04>
    2a0c:	27a4014c 	addiu	a0,sp,332
    2a10:	0c000000 	jal	0 <Player_SetBootData>
    2a14:	afa30148 	sw	v1,328(sp)
    2a18:	27a4014c 	addiu	a0,sp,332
    2a1c:	27a500b8 	addiu	a1,sp,184
    2a20:	0c000000 	jal	0 <Player_SetBootData>
    2a24:	00003025 	move	a2,zero
    2a28:	8fa30148 	lw	v1,328(sp)
    2a2c:	87ae00b8 	lh	t6,184(sp)
    2a30:	8c6a0004 	lw	t2,4(v1)
    2a34:	000a6b80 	sll	t5,t2,0xe
    2a38:	05a30009 	bgezl	t5,2a60 <func_80090D20+0x490>
    2a3c:	860f00b6 	lh	t7,182(s0)
    2a40:	861803bc 	lh	t8,956(s0)
    2a44:	01d81023 	subu	v0,t6,t8
    2a48:	00021400 	sll	v0,v0,0x10
    2a4c:	00021403 	sra	v0,v0,0x10
    2a50:	a46200b4 	sh	v0,180(v1)
    2a54:	1000015f 	b	2fd4 <func_80090D20+0xa04>
    2a58:	a4620030 	sh	v0,48(v1)
    2a5c:	860f00b6 	lh	t7,182(s0)
    2a60:	861903be 	lh	t9,958(s0)
    2a64:	01f91021 	addu	v0,t7,t9
    2a68:	00021400 	sll	v0,v0,0x10
    2a6c:	00021403 	sra	v0,v0,0x10
    2a70:	a46200b6 	sh	v0,182(v1)
    2a74:	10000157 	b	2fd4 <func_80090D20+0xa04>
    2a78:	a4620032 	sh	v0,50(v1)
    2a7c:	0c000000 	jal	0 <Player_SetBootData>
    2a80:	afa4002c 	sw	a0,44(sp)
    2a84:	8fa4002c 	lw	a0,44(sp)
    2a88:	260503bc 	addiu	a1,s0,956
    2a8c:	0c000000 	jal	0 <Player_SetBootData>
    2a90:	00003025 	move	a2,zero
    2a94:	10000150 	b	2fd8 <func_80090D20+0xa08>
    2a98:	8fbf0024 	lw	ra,36(sp)
    2a9c:	24010013 	li	at,19
    2aa0:	15610113 	bne	t3,at,2ef0 <func_80090D20+0x920>
    2aa4:	8fb001a0 	lw	s0,416(sp)
    2aa8:	8fb001a0 	lw	s0,416(sp)
    2aac:	240100ff 	li	at,255
    2ab0:	8e0c03ac 	lw	t4,940(s0)
    2ab4:	afac00b4 	sw	t4,180(sp)
    2ab8:	9202015d 	lbu	v0,349(s0)
    2abc:	54410006 	bnel	v0,at,2ad8 <func_80090D20+0x508>
    2ac0:	2401000b 	li	at,11
    2ac4:	0c000000 	jal	0 <Player_SetBootData>
    2ac8:	26040a20 	addiu	a0,s0,2592
    2acc:	10000091 	b	2d14 <func_80090D20+0x744>
    2ad0:	c6000054 	lwc1	$f0,84(s0)
    2ad4:	2401000b 	li	at,11
    2ad8:	10410004 	beq	v0,at,2aec <func_80090D20+0x51c>
    2adc:	3c0a0000 	lui	t2,0x0
    2ae0:	2401000c 	li	at,12
    2ae4:	5441007a 	bnel	v0,at,2cd0 <func_80090D20+0x700>
    2ae8:	c6000054 	lwc1	$f0,84(s0)
    2aec:	8d4a0004 	lw	t2,4(t2)
    2af0:	3c0e0000 	lui	t6,0x0
    2af4:	8faf0190 	lw	t7,400(sp)
    2af8:	25ce0000 	addiu	t6,t6,0
    2afc:	000a6900 	sll	t5,t2,0x4
    2b00:	01aec021 	addu	t8,t5,t6
    2b04:	afb800b0 	sw	t8,176(sp)
    2b08:	8de50000 	lw	a1,0(t7)
    2b0c:	3c060000 	lui	a2,0x0
    2b10:	24c60000 	addiu	a2,a2,0
    2b14:	27a4009c 	addiu	a0,sp,156
    2b18:	24070adf 	li	a3,2783
    2b1c:	0c000000 	jal	0 <Player_SetBootData>
    2b20:	afa500ac 	sw	a1,172(sp)
    2b24:	0c000000 	jal	0 <Player_SetBootData>
    2b28:	00000000 	nop
    2b2c:	8fa200b0 	lw	v0,176(sp)
    2b30:	24070001 	li	a3,1
    2b34:	c44c0004 	lwc1	$f12,4(v0)
    2b38:	c44e0008 	lwc1	$f14,8(v0)
    2b3c:	0c000000 	jal	0 <Player_SetBootData>
    2b40:	8c46000c 	lw	a2,12(v0)
    2b44:	8e19067c 	lw	t9,1660(s0)
    2b48:	332b0200 	andi	t3,t9,0x200
    2b4c:	5160002b 	beqzl	t3,2bfc <func_80090D20+0x62c>
    2b50:	3c013f80 	lui	at,0x3f80
    2b54:	860c0860 	lh	t4,2144(s0)
    2b58:	05820028 	bltzl	t4,2bfc <func_80090D20+0x62c>
    2b5c:	3c013f80 	lui	at,0x3f80
    2b60:	860a0834 	lh	t2,2100(s0)
    2b64:	3c040000 	lui	a0,0x0
    2b68:	24840000 	addiu	a0,a0,0
    2b6c:	2941000b 	slti	at,t2,11
    2b70:	50200022 	beqzl	at,2bfc <func_80090D20+0x62c>
    2b74:	3c013f80 	lui	at,0x3f80
    2b78:	0c000000 	jal	0 <Player_SetBootData>
    2b7c:	27a50090 	addiu	a1,sp,144
    2b80:	3c040000 	lui	a0,0x0
    2b84:	8c840000 	lw	a0,0(a0)
    2b88:	0c000000 	jal	0 <Player_SetBootData>
    2b8c:	27a50090 	addiu	a1,sp,144
    2b90:	3c014040 	lui	at,0x4040
    2b94:	44811000 	mtc1	at,$f2
    2b98:	3c013f80 	lui	at,0x3f80
    2b9c:	4602003c 	c.lt.s	$f0,$f2
    2ba0:	46020281 	sub.s	$f10,$f0,$f2
    2ba4:	45000004 	bc1f	2bb8 <func_80090D20+0x5e8>
    2ba8:	e60a0858 	swc1	$f10,2136(s0)
    2bac:	44808000 	mtc1	zero,$f16
    2bb0:	1000000d 	b	2be8 <func_80090D20+0x618>
    2bb4:	e6100858 	swc1	$f16,2136(s0)
    2bb8:	44816000 	mtc1	at,$f12
    2bbc:	3c010000 	lui	at,0x0
    2bc0:	c4240000 	lwc1	$f4,0(at)
    2bc4:	c6120858 	lwc1	$f18,2136(s0)
    2bc8:	46049182 	mul.s	$f6,$f18,$f4
    2bcc:	e6060858 	swc1	$f6,2136(s0)
    2bd0:	c6080858 	lwc1	$f8,2136(s0)
    2bd4:	4608603c 	c.lt.s	$f12,$f8
    2bd8:	00000000 	nop
    2bdc:	45020003 	bc1fl	2bec <func_80090D20+0x61c>
    2be0:	3c01bf00 	lui	at,0xbf00
    2be4:	e60c0858 	swc1	$f12,2136(s0)
    2be8:	3c01bf00 	lui	at,0xbf00
    2bec:	44815000 	mtc1	at,$f10
    2bf0:	00000000 	nop
    2bf4:	e60a085c 	swc1	$f10,2140(s0)
    2bf8:	3c013f80 	lui	at,0x3f80
    2bfc:	44816000 	mtc1	at,$f12
    2c00:	c60e0858 	lwc1	$f14,2136(s0)
    2c04:	24070001 	li	a3,1
    2c08:	44066000 	mfc1	a2,$f12
    2c0c:	0c000000 	jal	0 <Player_SetBootData>
    2c10:	00000000 	nop
    2c14:	3c0d0000 	lui	t5,0x0
    2c18:	8dad0004 	lw	t5,4(t5)
    2c1c:	3c010000 	lui	at,0x0
    2c20:	51a00008 	beqzl	t5,2c44 <func_80090D20+0x674>
    2c24:	8fa700ac 	lw	a3,172(sp)
    2c28:	c6100858 	lwc1	$f16,2136(s0)
    2c2c:	c4320000 	lwc1	$f18,0(at)
    2c30:	24050001 	li	a1,1
    2c34:	46128302 	mul.s	$f12,$f16,$f18
    2c38:	0c000000 	jal	0 <Player_SetBootData>
    2c3c:	00000000 	nop
    2c40:	8fa700ac 	lw	a3,172(sp)
    2c44:	3c18da38 	lui	t8,0xda38
    2c48:	37180003 	ori	t8,t8,0x3
    2c4c:	8ce202d0 	lw	v0,720(a3)
    2c50:	3c050000 	lui	a1,0x0
    2c54:	24a50000 	addiu	a1,a1,0
    2c58:	244e0008 	addiu	t6,v0,8
    2c5c:	acee02d0 	sw	t6,720(a3)
    2c60:	ac580000 	sw	t8,0(v0)
    2c64:	8faf0190 	lw	t7,400(sp)
    2c68:	24060af4 	li	a2,2804
    2c6c:	8de40000 	lw	a0,0(t7)
    2c70:	0c000000 	jal	0 <Player_SetBootData>
    2c74:	afa20088 	sw	v0,136(sp)
    2c78:	8fa30088 	lw	v1,136(sp)
    2c7c:	3c0cde00 	lui	t4,0xde00
    2c80:	ac620004 	sw	v0,4(v1)
    2c84:	8fb900ac 	lw	t9,172(sp)
    2c88:	8f2202d0 	lw	v0,720(t9)
    2c8c:	244b0008 	addiu	t3,v0,8
    2c90:	af2b02d0 	sw	t3,720(t9)
    2c94:	ac4c0000 	sw	t4,0(v0)
    2c98:	8faa00b0 	lw	t2,176(sp)
    2c9c:	8d4d0000 	lw	t5,0(t2)
    2ca0:	0c000000 	jal	0 <Player_SetBootData>
    2ca4:	ac4d0004 	sw	t5,4(v0)
    2ca8:	8fae0190 	lw	t6,400(sp)
    2cac:	3c060000 	lui	a2,0x0
    2cb0:	24c60000 	addiu	a2,a2,0
    2cb4:	27a4009c 	addiu	a0,sp,156
    2cb8:	24070af9 	li	a3,2809
    2cbc:	0c000000 	jal	0 <Player_SetBootData>
    2cc0:	8dc50000 	lw	a1,0(t6)
    2cc4:	10000013 	b	2d14 <func_80090D20+0x744>
    2cc8:	c6000054 	lwc1	$f0,84(s0)
    2ccc:	c6000054 	lwc1	$f0,84(s0)
    2cd0:	44802000 	mtc1	zero,$f4
    2cd4:	2401000a 	li	at,10
    2cd8:	4600203e 	c.le.s	$f4,$f0
    2cdc:	00000000 	nop
    2ce0:	4502000d 	bc1fl	2d18 <func_80090D20+0x748>
    2ce4:	44803000 	mtc1	zero,$f6
    2ce8:	5441000b 	bnel	v0,at,2d18 <func_80090D20+0x748>
    2cec:	44803000 	mtc1	zero,$f6
    2cf0:	0c000000 	jal	0 <Player_SetBootData>
    2cf4:	26040a20 	addiu	a0,s0,2592
    2cf8:	3c070000 	lui	a3,0x0
    2cfc:	24e70000 	addiu	a3,a3,0
    2d00:	8fa40190 	lw	a0,400(sp)
    2d04:	02002825 	move	a1,s0
    2d08:	0c000000 	jal	0 <Player_SetBootData>
    2d0c:	260605e4 	addiu	a2,s0,1508
    2d10:	c6000054 	lwc1	$f0,84(s0)
    2d14:	44803000 	mtc1	zero,$f6
    2d18:	00000000 	nop
    2d1c:	4600303e 	c.le.s	$f6,$f0
    2d20:	00000000 	nop
    2d24:	450200ac 	bc1fl	2fd8 <func_80090D20+0xa08>
    2d28:	8fbf0024 	lw	ra,36(sp)
    2d2c:	82020151 	lb	v0,337(s0)
    2d30:	24010010 	li	at,16
    2d34:	3c040000 	lui	a0,0x0
    2d38:	10410004 	beq	v0,at,2d4c <func_80090D20+0x77c>
    2d3c:	24840000 	addiu	a0,a0,0
    2d40:	24010011 	li	at,17
    2d44:	54410036 	bnel	v0,at,2e20 <func_80090D20+0x850>
    2d48:	820a0862 	lb	t2,2146(s0)
    2d4c:	0c000000 	jal	0 <Player_SetBootData>
    2d50:	260503c8 	addiu	a1,s0,968
    2d54:	8fb800b4 	lw	t8,180(sp)
    2d58:	3c040000 	lui	a0,0x0
    2d5c:	24840000 	addiu	a0,a0,0
    2d60:	5300002f 	beqzl	t8,2e20 <func_80090D20+0x850>
    2d64:	820a0862 	lb	t2,2146(s0)
    2d68:	0c000000 	jal	0 <Player_SetBootData>
    2d6c:	27050024 	addiu	a1,t8,36
    2d70:	00002025 	move	a0,zero
    2d74:	2405c000 	li	a1,-16384
    2d78:	2406c000 	li	a2,-16384
    2d7c:	0c000000 	jal	0 <Player_SetBootData>
    2d80:	24070001 	li	a3,1
    2d84:	0c000000 	jal	0 <Player_SetBootData>
    2d88:	27a40044 	addiu	a0,sp,68
    2d8c:	8fa500b4 	lw	a1,180(sp)
    2d90:	27a40044 	addiu	a0,sp,68
    2d94:	00003025 	move	a2,zero
    2d98:	24a50030 	addiu	a1,a1,48
    2d9c:	0c000000 	jal	0 <Player_SetBootData>
    2da0:	afa5002c 	sw	a1,44(sp)
    2da4:	8fa5002c 	lw	a1,44(sp)
    2da8:	8faf00b4 	lw	t7,180(sp)
    2dac:	02002025 	move	a0,s0
    2db0:	88b90000 	lwl	t9,0(a1)
    2db4:	98b90003 	lwr	t9,3(a1)
    2db8:	a9f900b4 	swl	t9,180(t7)
    2dbc:	b9f900b7 	swr	t9,183(t7)
    2dc0:	94b90004 	lhu	t9,4(a1)
    2dc4:	0c000000 	jal	0 <Player_SetBootData>
    2dc8:	a5f900b8 	sh	t9,184(t7)
    2dcc:	10400013 	beqz	v0,2e1c <func_80090D20+0x84c>
    2dd0:	3c0143fa 	lui	at,0x43fa
    2dd4:	44816000 	mtc1	at,$f12
    2dd8:	3c014396 	lui	at,0x4396
    2ddc:	44817000 	mtc1	at,$f14
    2de0:	24060000 	li	a2,0
    2de4:	0c000000 	jal	0 <Player_SetBootData>
    2de8:	24070001 	li	a3,1
    2dec:	820c0151 	lb	t4,337(s0)
    2df0:	24010010 	li	at,16
    2df4:	8fa40190 	lw	a0,400(sp)
    2df8:	15810003 	bne	t4,at,2e08 <func_80090D20+0x838>
    2dfc:	3c010000 	lui	at,0x0
    2e00:	10000003 	b	2e10 <func_80090D20+0x840>
    2e04:	c4200000 	lwc1	$f0,0(at)
    2e08:	3c010000 	lui	at,0x0
    2e0c:	c4200000 	lwc1	$f0,0(at)
    2e10:	44060000 	mfc1	a2,$f0
    2e14:	0c000000 	jal	0 <Player_SetBootData>
    2e18:	02002825 	move	a1,s0
    2e1c:	820a0862 	lb	t2,2146(s0)
    2e20:	55400008 	bnezl	t2,2e44 <func_80090D20+0x874>
    2e24:	8e0e067c 	lw	t6,1660(s0)
    2e28:	0c000000 	jal	0 <Player_SetBootData>
    2e2c:	02002025 	move	a0,s0
    2e30:	14400068 	bnez	v0,2fd4 <func_80090D20+0xa04>
    2e34:	8fad00b4 	lw	t5,180(sp)
    2e38:	51a00067 	beqzl	t5,2fd8 <func_80090D20+0xa08>
    2e3c:	8fbf0024 	lw	ra,36(sp)
    2e40:	8e0e067c 	lw	t6,1660(s0)
    2e44:	31d80400 	andi	t8,t6,0x400
    2e48:	5700000e 	bnezl	t8,2e84 <func_80090D20+0x8b4>
    2e4c:	c60809bc 	lwc1	$f8,2492(s0)
    2e50:	820f0862 	lb	t7,2146(s0)
    2e54:	51e0000b 	beqzl	t7,2e84 <func_80090D20+0x8b4>
    2e58:	c60809bc 	lwc1	$f8,2492(s0)
    2e5c:	820b0693 	lb	t3,1683(s0)
    2e60:	3c040000 	lui	a0,0x0
    2e64:	24840000 	addiu	a0,a0,0
    2e68:	51600006 	beqzl	t3,2e84 <func_80090D20+0x8b4>
    2e6c:	c60809bc 	lwc1	$f8,2492(s0)
    2e70:	0c000000 	jal	0 <Player_SetBootData>
    2e74:	260503b0 	addiu	a1,s0,944
    2e78:	10000015 	b	2ed0 <func_80090D20+0x900>
    2e7c:	82190862 	lb	t9,2146(s0)
    2e80:	c60809bc 	lwc1	$f8,2492(s0)
    2e84:	c60a03b0 	lwc1	$f10,944(s0)
    2e88:	3c013f00 	lui	at,0x3f00
    2e8c:	44810000 	mtc1	at,$f0
    2e90:	460a4400 	add.s	$f16,$f8,$f10
    2e94:	3c010000 	lui	at,0x0
    2e98:	46008482 	mul.s	$f18,$f16,$f0
    2e9c:	e4320000 	swc1	$f18,0(at)
    2ea0:	c60603b4 	lwc1	$f6,948(s0)
    2ea4:	c60409c0 	lwc1	$f4,2496(s0)
    2ea8:	46062200 	add.s	$f8,$f4,$f6
    2eac:	46004282 	mul.s	$f10,$f8,$f0
    2eb0:	e42a0004 	swc1	$f10,4(at)
    2eb4:	c61203b8 	lwc1	$f18,952(s0)
    2eb8:	c61009c4 	lwc1	$f16,2500(s0)
    2ebc:	3c010000 	lui	at,0x0
    2ec0:	46128100 	add.s	$f4,$f16,$f18
    2ec4:	46002182 	mul.s	$f6,$f4,$f0
    2ec8:	e4260008 	swc1	$f6,8(at)
    2ecc:	82190862 	lb	t9,2146(s0)
    2ed0:	8fa400b4 	lw	a0,180(sp)
    2ed4:	3c050000 	lui	a1,0x0
    2ed8:	1720003e 	bnez	t9,2fd4 <func_80090D20+0xa04>
    2edc:	24840024 	addiu	a0,a0,36
    2ee0:	0c000000 	jal	0 <Player_SetBootData>
    2ee4:	24a50000 	addiu	a1,a1,0
    2ee8:	1000003b 	b	2fd8 <func_80090D20+0xa08>
    2eec:	8fbf0024 	lw	ra,36(sp)
    2ef0:	c6080054 	lwc1	$f8,84(s0)
    2ef4:	44805000 	mtc1	zero,$f10
    2ef8:	8fac0194 	lw	t4,404(sp)
    2efc:	24010014 	li	at,20
    2f00:	4608503e 	c.le.s	$f10,$f8
    2f04:	00000000 	nop
    2f08:	45020033 	bc1fl	2fd8 <func_80090D20+0xa08>
    2f0c:	8fbf0024 	lw	ra,36(sp)
    2f10:	15810019 	bne	t4,at,2f78 <func_80090D20+0x9a8>
    2f14:	8faa0194 	lw	t2,404(sp)
    2f18:	9202015d 	lbu	v0,349(s0)
    2f1c:	2401000a 	li	at,10
    2f20:	1041002c 	beq	v0,at,2fd4 <func_80090D20+0xa04>
    2f24:	240100ff 	li	at,255
    2f28:	5041002b 	beql	v0,at,2fd8 <func_80090D20+0xa08>
    2f2c:	8fbf0024 	lw	ra,36(sp)
    2f30:	0c000000 	jal	0 <Player_SetBootData>
    2f34:	02002025 	move	a0,s0
    2f38:	10400006 	beqz	v0,2f54 <func_80090D20+0x984>
    2f3c:	8fa40190 	lw	a0,400(sp)
    2f40:	3c070000 	lui	a3,0x0
    2f44:	24e70000 	addiu	a3,a3,0
    2f48:	02002825 	move	a1,s0
    2f4c:	0c000000 	jal	0 <Player_SetBootData>
    2f50:	260605e4 	addiu	a2,s0,1508
    2f54:	3c040000 	lui	a0,0x0
    2f58:	3c050000 	lui	a1,0x0
    2f5c:	24a50000 	addiu	a1,a1,0
    2f60:	0c000000 	jal	0 <Player_SetBootData>
    2f64:	24840000 	addiu	a0,a0,0
    2f68:	0c000000 	jal	0 <Player_SetBootData>
    2f6c:	26040a20 	addiu	a0,s0,2592
    2f70:	10000019 	b	2fd8 <func_80090D20+0xa08>
    2f74:	8fbf0024 	lw	ra,36(sp)
    2f78:	2401000b 	li	at,11
    2f7c:	15410007 	bne	t2,at,2f9c <func_80090D20+0x9cc>
    2f80:	3c090000 	lui	t1,0x0
    2f84:	3c040000 	lui	a0,0x0
    2f88:	24840000 	addiu	a0,a0,0
    2f8c:	0c000000 	jal	0 <Player_SetBootData>
    2f90:	26050038 	addiu	a1,s0,56
    2f94:	10000010 	b	2fd8 <func_80090D20+0xa08>
    2f98:	8fbf0024 	lw	ra,36(sp)
    2f9c:	8d290004 	lw	t1,4(t1)
    2fa0:	3c0e0000 	lui	t6,0x0
    2fa4:	25ce0000 	addiu	t6,t6,0
    2fa8:	00096880 	sll	t5,t1,0x2
    2fac:	01a96823 	subu	t5,t5,t1
    2fb0:	000d6880 	sll	t5,t5,0x2
    2fb4:	01ae3821 	addu	a3,t5,t6
    2fb8:	24180006 	li	t8,6
    2fbc:	afb80010 	sw	t8,16(sp)
    2fc0:	afa70014 	sw	a3,20(sp)
    2fc4:	02002025 	move	a0,s0
    2fc8:	8fa50194 	lw	a1,404(sp)
    2fcc:	0c000000 	jal	0 <Player_SetBootData>
    2fd0:	24060009 	li	a2,9
    2fd4:	8fbf0024 	lw	ra,36(sp)
    2fd8:	8fb00020 	lw	s0,32(sp)
    2fdc:	27bd0190 	addiu	sp,sp,400
    2fe0:	03e00008 	jr	ra
    2fe4:	00000000 	nop

00002fe8 <func_80091738>:
    2fe8:	3c020000 	lui	v0,0x0
    2fec:	8c420004 	lw	v0,4(v0)
    2ff0:	27bdffb8 	addiu	sp,sp,-72
    2ff4:	3c030000 	lui	v1,0x0
    2ff8:	24630000 	addiu	v1,v1,0
    2ffc:	afa5004c 	sw	a1,76(sp)
    3000:	3c0f0000 	lui	t7,0x0
    3004:	00027040 	sll	t6,v0,0x1
    3008:	afa40048 	sw	a0,72(sp)
    300c:	01ee7821 	addu	t7,t7,t6
    3010:	85ef0000 	lh	t7,0(t7)
    3014:	8c650008 	lw	a1,8(v1)
    3018:	8c78000c 	lw	t8,12(v1)
    301c:	8fa4004c 	lw	a0,76(sp)
    3020:	afbf002c 	sw	ra,44(sp)
    3024:	afa60050 	sw	a2,80(sp)
    3028:	3c070000 	lui	a3,0x0
    302c:	24190ba6 	li	t9,2982
    3030:	afb00028 	sw	s0,40(sp)
    3034:	afb90010 	sw	t9,16(sp)
    3038:	24e70140 	addiu	a3,a3,320
    303c:	a7af0046 	sh	t7,70(sp)
    3040:	03053023 	subu	a2,t8,a1
    3044:	0c000000 	jal	0 <Player_SetBootData>
    3048:	24843800 	addiu	a0,a0,14336
    304c:	87aa0046 	lh	t2,70(sp)
    3050:	3c0c0000 	lui	t4,0x0
    3054:	258c0000 	addiu	t4,t4,0
    3058:	000a58c0 	sll	t3,t2,0x3
    305c:	016c1021 	addu	v0,t3,t4
    3060:	8c450000 	lw	a1,0(v0)
    3064:	8c4d0004 	lw	t5,4(v0)
    3068:	8fa4004c 	lw	a0,76(sp)
    306c:	34018800 	li	at,0x8800
    3070:	3c070000 	lui	a3,0x0
    3074:	240e0bac 	li	t6,2988
    3078:	01a58023 	subu	s0,t5,a1
    307c:	00812021 	addu	a0,a0,at
    3080:	afa40034 	sw	a0,52(sp)
    3084:	02003025 	move	a2,s0
    3088:	afae0010 	sw	t6,16(sp)
    308c:	0c000000 	jal	0 <Player_SetBootData>
    3090:	24e70154 	addiu	a3,a3,340
    3094:	8faf0034 	lw	t7,52(sp)
    3098:	2401fff0 	li	at,-16
    309c:	8fa9004c 	lw	t1,76(sp)
    30a0:	01f01821 	addu	v1,t7,s0
    30a4:	2463000f 	addiu	v1,v1,15
    30a8:	00611824 	and	v1,v1,at
    30ac:	3c018000 	lui	at,0x8000
    30b0:	34213800 	ori	at,at,0x3800
    30b4:	0121c021 	addu	t8,t1,at
    30b8:	3c080000 	lui	t0,0x0
    30bc:	3c018000 	lui	at,0x8000
    30c0:	25080000 	addiu	t0,t0,0
    30c4:	34218800 	ori	at,at,0x8800
    30c8:	0121c821 	addu	t9,t1,at
    30cc:	ad180010 	sw	t8,16(t0)
    30d0:	ad190018 	sw	t9,24(t0)
    30d4:	3c020000 	lui	v0,0x0
    30d8:	8c420004 	lw	v0,4(v0)
    30dc:	3c060000 	lui	a2,0x0
    30e0:	3c070000 	lui	a3,0x0
    30e4:	00025080 	sll	t2,v0,0x2
    30e8:	00ca3021 	addu	a2,a2,t2
    30ec:	240b0009 	li	t3,9
    30f0:	240c0016 	li	t4,22
    30f4:	afac001c 	sw	t4,28(sp)
    30f8:	afab0010 	sw	t3,16(sp)
    30fc:	8cc60000 	lw	a2,0(a2)
    3100:	24e70000 	addiu	a3,a3,0
    3104:	afa30014 	sw	v1,20(sp)
    3108:	afa30018 	sw	v1,24(sp)
    310c:	8fa40048 	lw	a0,72(sp)
    3110:	0c000000 	jal	0 <Player_SetBootData>
    3114:	8fa50050 	lw	a1,80(sp)
    3118:	8fbf002c 	lw	ra,44(sp)
    311c:	34018890 	li	at,0x8890
    3120:	02011021 	addu	v0,s0,at
    3124:	8fb00028 	lw	s0,40(sp)
    3128:	03e00008 	jr	ra
    312c:	27bd0048 	addiu	sp,sp,72

00003130 <func_80091880>:
    3130:	afa40000 	sw	a0,0(sp)
    3134:	8fa40014 	lw	a0,20(sp)
    3138:	afa60008 	sw	a2,8(sp)
    313c:	afa7000c 	sw	a3,12(sp)
    3140:	908e0000 	lbu	t6,0(a0)
    3144:	3c020000 	lui	v0,0x0
    3148:	24080002 	li	t0,2
    314c:	004e1021 	addu	v0,v0,t6
    3150:	9042ffff 	lbu	v0,-1(v0)
    3154:	00c03825 	move	a3,a2
    3158:	00001825 	move	v1,zero
    315c:	15020009 	bne	t0,v0,3184 <func_80091880+0x54>
    3160:	24010010 	li	at,16
    3164:	3c0f0000 	lui	t7,0x0
    3168:	8def0004 	lw	t7,4(t7)
    316c:	11e00005 	beqz	t7,3184 <func_80091880+0x54>
    3170:	00000000 	nop
    3174:	90980001 	lbu	t8,1(a0)
    3178:	15180002 	bne	t0,t8,3184 <func_80091880+0x54>
    317c:	00000000 	nop
    3180:	24020001 	li	v0,1
    3184:	14a1001c 	bne	a1,at,31f8 <func_80091880+0xc8>
    3188:	3c180000 	lui	t8,0x0
    318c:	0002c880 	sll	t9,v0,0x2
    3190:	0322c821 	addu	t9,t9,v0
    3194:	3c060000 	lui	a2,0x0
    3198:	00d93021 	addu	a2,a2,t9
    319c:	90c60001 	lbu	a2,1(a2)
    31a0:	3c010000 	lui	at,0x0
    31a4:	3c050000 	lui	a1,0x0
    31a8:	ac260000 	sw	a2,0(at)
    31ac:	24010004 	li	at,4
    31b0:	14c1003c 	bne	a2,at,32a4 <func_80091880+0x174>
    31b4:	8ca50004 	lw	a1,4(a1)
    31b8:	3c0a0000 	lui	t2,0x0
    31bc:	954a0036 	lhu	t2,54(t2)
    31c0:	44802000 	mtc1	zero,$f4
    31c4:	3c014f80 	lui	at,0x4f80
    31c8:	448a3000 	mtc1	t2,$f6
    31cc:	05410004 	bgez	t2,31e0 <func_80091880+0xb0>
    31d0:	46803220 	cvt.s.w	$f8,$f6
    31d4:	44815000 	mtc1	at,$f10
    31d8:	00000000 	nop
    31dc:	460a4200 	add.s	$f8,$f8,$f10
    31e0:	4604403e 	c.le.s	$f8,$f4
    31e4:	00000000 	nop
    31e8:	4502002f 	bc1fl	32a8 <func_80091880+0x178>
    31ec:	00067880 	sll	t7,a2,0x2
    31f0:	1000002c 	b	32a4 <func_80091880+0x174>
    31f4:	24030004 	li	v1,4
    31f8:	24090013 	li	t1,19
    31fc:	14a9000f 	bne	a1,t1,323c <func_80091880+0x10c>
    3200:	24010014 	li	at,20
    3204:	00025880 	sll	t3,v0,0x2
    3208:	01625821 	addu	t3,t3,v0
    320c:	3c060000 	lui	a2,0x0
    3210:	00cb3021 	addu	a2,a2,t3
    3214:	90c60002 	lbu	a2,2(a2)
    3218:	3c010000 	lui	at,0x0
    321c:	3c050000 	lui	a1,0x0
    3220:	ac260000 	sw	a2,0(at)
    3224:	2401000a 	li	at,10
    3228:	14c1001e 	bne	a2,at,32a4 <func_80091880+0x174>
    322c:	8ca50004 	lw	a1,4(a1)
    3230:	90830001 	lbu	v1,1(a0)
    3234:	1000001b 	b	32a4 <func_80091880+0x174>
    3238:	00031880 	sll	v1,v1,0x2
    323c:	14a1000e 	bne	a1,at,3278 <func_80091880+0x148>
    3240:	00026080 	sll	t4,v0,0x2
    3244:	01826021 	addu	t4,t4,v0
    3248:	3c060000 	lui	a2,0x0
    324c:	00cc3021 	addu	a2,a2,t4
    3250:	90c60003 	lbu	a2,3(a2)
    3254:	3c050000 	lui	a1,0x0
    3258:	24010012 	li	at,18
    325c:	10c10003 	beq	a2,at,326c <func_80091880+0x13c>
    3260:	8ca50004 	lw	a1,4(a1)
    3264:	54c90010 	bnel	a2,t1,32a8 <func_80091880+0x178>
    3268:	00067880 	sll	t7,a2,0x2
    326c:	90830001 	lbu	v1,1(a0)
    3270:	1000000c 	b	32a4 <func_80091880+0x174>
    3274:	00031880 	sll	v1,v1,0x2
    3278:	14a80008 	bne	a1,t0,329c <func_80091880+0x16c>
    327c:	00026880 	sll	t5,v0,0x2
    3280:	01a26821 	addu	t5,t5,v0
    3284:	3c060000 	lui	a2,0x0
    3288:	00cd3021 	addu	a2,a2,t5
    328c:	3c050000 	lui	a1,0x0
    3290:	8ca50004 	lw	a1,4(a1)
    3294:	10000003 	b	32a4 <func_80091880+0x174>
    3298:	90c60004 	lbu	a2,4(a2)
    329c:	03e00008 	jr	ra
    32a0:	00001025 	move	v0,zero
    32a4:	00067880 	sll	t7,a2,0x2
    32a8:	030fc021 	addu	t8,t8,t7
    32ac:	8f180000 	lw	t8,0(t8)
    32b0:	00057080 	sll	t6,a1,0x2
    32b4:	0003c880 	sll	t9,v1,0x2
    32b8:	01d82021 	addu	a0,t6,t8
    32bc:	00995021 	addu	t2,a0,t9
    32c0:	8d4b0000 	lw	t3,0(t2)
    32c4:	00001025 	move	v0,zero
    32c8:	aceb0000 	sw	t3,0(a3)
    32cc:	03e00008 	jr	ra
    32d0:	00000000 	nop

000032d4 <func_80091A24>:
    32d4:	27bdfed0 	addiu	sp,sp,-304
    32d8:	afbf0034 	sw	ra,52(sp)
    32dc:	afa40130 	sw	a0,304(sp)
    32e0:	afa50134 	sw	a1,308(sp)
    32e4:	afa60138 	sw	a2,312(sp)
    32e8:	afa7013c 	sw	a3,316(sp)
    32ec:	8c840000 	lw	a0,0(a0)
    32f0:	0c000000 	jal	0 <Player_SetBootData>
    32f4:	24050040 	li	a1,64
    32f8:	8faf0130 	lw	t7,304(sp)
    32fc:	afa2011c 	sw	v0,284(sp)
    3300:	24050040 	li	a1,64
    3304:	0c000000 	jal	0 <Player_SetBootData>
    3308:	8de40000 	lw	a0,0(t7)
    330c:	8fb80130 	lw	t8,304(sp)
    3310:	afa20118 	sw	v0,280(sp)
    3314:	3c060000 	lui	a2,0x0
    3318:	8f050000 	lw	a1,0(t8)
    331c:	24c60168 	addiu	a2,a2,360
    3320:	27a40104 	addiu	a0,sp,260
    3324:	24070c39 	li	a3,3129
    3328:	0c000000 	jal	0 <Player_SetBootData>
    332c:	afa50114 	sw	a1,276(sp)
    3330:	8fa30114 	lw	v1,276(sp)
    3334:	3c05de00 	lui	a1,0xde00
    3338:	3c1fe700 	lui	ra,0xe700
    333c:	8c6402c0 	lw	a0,704(v1)
    3340:	3c014080 	lui	at,0x4080
    3344:	44810000 	mtc1	at,$f0
    3348:	afa40128 	sw	a0,296(sp)
    334c:	8c6202d0 	lw	v0,720(v1)
    3350:	24990008 	addiu	t9,a0,8
    3354:	ac7902c0 	sw	t9,704(v1)
    3358:	afa20124 	sw	v0,292(sp)
    335c:	8c6401bc 	lw	a0,444(v1)
    3360:	244e0008 	addiu	t6,v0,8
    3364:	ac6e02d0 	sw	t6,720(v1)
    3368:	248f0008 	addiu	t7,a0,8
    336c:	ac6f01bc 	sw	t7,444(v1)
    3370:	ac850000 	sw	a1,0(a0)
    3374:	8c7802c0 	lw	t8,704(v1)
    3378:	3c01ff10 	lui	at,0xff10
    337c:	3c08e300 	lui	t0,0xe300
    3380:	ac980004 	sw	t8,4(a0)
    3384:	8c6401bc 	lw	a0,444(v1)
    3388:	3c18db06 	lui	t8,0xdb06
    338c:	35080a01 	ori	t0,t0,0xa01
    3390:	24990008 	addiu	t9,a0,8
    3394:	ac7901bc 	sw	t9,444(v1)
    3398:	ac850000 	sw	a1,0(a0)
    339c:	8c6e02d0 	lw	t6,720(v1)
    33a0:	3c05d900 	lui	a1,0xd900
    33a4:	3c090030 	lui	t1,0x30
    33a8:	ac8e0004 	sw	t6,4(a0)
    33ac:	8c6402c0 	lw	a0,704(v1)
    33b0:	3c0ae200 	lui	t2,0xe200
    33b4:	354a001c 	ori	t2,t2,0x1c
    33b8:	248f0008 	addiu	t7,a0,8
    33bc:	ac6f02c0 	sw	t7,704(v1)
    33c0:	ac800004 	sw	zero,4(a0)
    33c4:	ac980000 	sw	t8,0(a0)
    33c8:	8c6402c0 	lw	a0,704(v1)
    33cc:	3c18d700 	lui	t8,0xd700
    33d0:	3c0bf700 	lui	t3,0xf700
    33d4:	24990008 	addiu	t9,a0,8
    33d8:	ac7902c0 	sw	t9,704(v1)
    33dc:	ac800004 	sw	zero,4(a0)
    33e0:	ac9f0000 	sw	ra,0(a0)
    33e4:	8c6402c0 	lw	a0,704(v1)
    33e8:	2419ffff 	li	t9,-1
    33ec:	248e0008 	addiu	t6,a0,8
    33f0:	ac6e02c0 	sw	t6,704(v1)
    33f4:	ac800004 	sw	zero,4(a0)
    33f8:	ac850000 	sw	a1,0(a0)
    33fc:	8c6402c0 	lw	a0,704(v1)
    3400:	248f0008 	addiu	t7,a0,8
    3404:	ac6f02c0 	sw	t7,704(v1)
    3408:	ac990004 	sw	t9,4(a0)
    340c:	ac980000 	sw	t8,0(a0)
    3410:	8c6402c0 	lw	a0,704(v1)
    3414:	3c18fffe 	lui	t8,0xfffe
    3418:	3c0ffcff 	lui	t7,0xfcff
    341c:	248e0008 	addiu	t6,a0,8
    3420:	ac6e02c0 	sw	t6,704(v1)
    3424:	35efffff 	ori	t7,t7,0xffff
    3428:	3718793c 	ori	t8,t8,0x793c
    342c:	ac980004 	sw	t8,4(a0)
    3430:	ac8f0000 	sw	t7,0(a0)
    3434:	8c6402c0 	lw	a0,704(v1)
    3438:	3c0eef38 	lui	t6,0xef38
    343c:	35ce2c30 	ori	t6,t6,0x2c30
    3440:	24990008 	addiu	t9,a0,8
    3444:	ac7902c0 	sw	t9,704(v1)
    3448:	ac800004 	sw	zero,4(a0)
    344c:	ac8e0000 	sw	t6,0(a0)
    3450:	8c6402c0 	lw	a0,704(v1)
    3454:	3c180022 	lui	t8,0x22
    3458:	37180405 	ori	t8,t8,0x405
    345c:	248f0008 	addiu	t7,a0,8
    3460:	ac6f02c0 	sw	t7,704(v1)
    3464:	ac980004 	sw	t8,4(a0)
    3468:	ac850000 	sw	a1,0(a0)
    346c:	8fac015c 	lw	t4,348(sp)
    3470:	8fad0160 	lw	t5,352(sp)
    3474:	8c6402c0 	lw	a0,704(v1)
    3478:	448c2000 	mtc1	t4,$f4
    347c:	448d3000 	mtc1	t5,$f6
    3480:	24990008 	addiu	t9,a0,8
    3484:	468020a0 	cvt.s.w	$f2,$f4
    3488:	ac7902c0 	sw	t9,704(v1)
    348c:	3c0eed00 	lui	t6,0xed00
    3490:	ac8e0000 	sw	t6,0(a0)
    3494:	24050001 	li	a1,1
    3498:	46803320 	cvt.s.w	$f12,$f6
    349c:	46001202 	mul.s	$f8,$f2,$f0
    34a0:	000c1040 	sll	v0,t4,0x1
    34a4:	46006402 	mul.s	$f16,$f12,$f0
    34a8:	4600428d 	trunc.w.s	$f10,$f8
    34ac:	4600848d 	trunc.w.s	$f18,$f16
    34b0:	44185000 	mfc1	t8,$f10
    34b4:	460c1103 	div.s	$f4,$f2,$f12
    34b8:	33190fff 	andi	t9,t8,0xfff
    34bc:	44189000 	mfc1	t8,$f18
    34c0:	00197300 	sll	t6,t9,0xc
    34c4:	33190fff 	andi	t9,t8,0xfff
    34c8:	01d97825 	or	t7,t6,t9
    34cc:	ac8f0004 	sw	t7,4(a0)
    34d0:	8c6402c0 	lw	a0,704(v1)
    34d4:	3c0edb04 	lui	t6,0xdb04
    34d8:	35ce0004 	ori	t6,t6,0x4
    34dc:	24980008 	addiu	t8,a0,8
    34e0:	ac7802c0 	sw	t8,704(v1)
    34e4:	ac850004 	sw	a1,4(a0)
    34e8:	ac8e0000 	sw	t6,0(a0)
    34ec:	8c6402c0 	lw	a0,704(v1)
    34f0:	3c0fdb04 	lui	t7,0xdb04
    34f4:	35ef000c 	ori	t7,t7,0xc
    34f8:	24990008 	addiu	t9,a0,8
    34fc:	ac7902c0 	sw	t9,704(v1)
    3500:	ac850004 	sw	a1,4(a0)
    3504:	ac8f0000 	sw	t7,0(a0)
    3508:	8c6402c0 	lw	a0,704(v1)
    350c:	3c0edb04 	lui	t6,0xdb04
    3510:	35ce0014 	ori	t6,t6,0x14
    3514:	24980008 	addiu	t8,a0,8
    3518:	ac7802c0 	sw	t8,704(v1)
    351c:	3405ffff 	li	a1,0xffff
    3520:	ac850004 	sw	a1,4(a0)
    3524:	ac8e0000 	sw	t6,0(a0)
    3528:	8c6402c0 	lw	a0,704(v1)
    352c:	3c0fdb04 	lui	t7,0xdb04
    3530:	35ef001c 	ori	t7,t7,0x1c
    3534:	24990008 	addiu	t9,a0,8
    3538:	ac7902c0 	sw	t9,704(v1)
    353c:	ac850004 	sw	a1,4(a0)
    3540:	ac8f0000 	sw	t7,0(a0)
    3544:	8c6402c0 	lw	a0,704(v1)
    3548:	2585ffff 	addiu	a1,t4,-1
    354c:	30a60fff 	andi	a2,a1,0xfff
    3550:	24980008 	addiu	t8,a0,8
    3554:	00c13025 	or	a2,a2,at
    3558:	ac7802c0 	sw	t8,704(v1)
    355c:	ac860000 	sw	a2,0(a0)
    3560:	8fae0174 	lw	t6,372(sp)
    3564:	3c01f600 	lui	at,0xf600
    3568:	ac8e0004 	sw	t6,4(a0)
    356c:	8c6402c0 	lw	a0,704(v1)
    3570:	3c0efffc 	lui	t6,0xfffc
    3574:	35cefffc 	ori	t6,t6,0xfffc
    3578:	24990008 	addiu	t9,a0,8
    357c:	ac7902c0 	sw	t9,704(v1)
    3580:	ac890004 	sw	t1,4(a0)
    3584:	ac880000 	sw	t0,0(a0)
    3588:	8c6402c0 	lw	a0,704(v1)
    358c:	248f0008 	addiu	t7,a0,8
    3590:	ac6f02c0 	sw	t7,704(v1)
    3594:	ac800004 	sw	zero,4(a0)
    3598:	ac8a0000 	sw	t2,0(a0)
    359c:	8c6402c0 	lw	a0,704(v1)
    35a0:	30af03ff 	andi	t7,a1,0x3ff
    35a4:	3c050000 	lui	a1,0x0
    35a8:	24980008 	addiu	t8,a0,8
    35ac:	ac7802c0 	sw	t8,704(v1)
    35b0:	ac8e0004 	sw	t6,4(a0)
    35b4:	ac8b0000 	sw	t3,0(a0)
    35b8:	8c6402c0 	lw	a0,704(v1)
    35bc:	000fc380 	sll	t8,t7,0xe
    35c0:	03017025 	or	t6,t8,at
    35c4:	24990008 	addiu	t9,a0,8
    35c8:	ac7902c0 	sw	t9,704(v1)
    35cc:	25b9ffff 	addiu	t9,t5,-1
    35d0:	332f03ff 	andi	t7,t9,0x3ff
    35d4:	000fc080 	sll	t8,t7,0x2
    35d8:	01d83825 	or	a3,t6,t8
    35dc:	ac870000 	sw	a3,0(a0)
    35e0:	ac800004 	sw	zero,4(a0)
    35e4:	8c6402c0 	lw	a0,704(v1)
    35e8:	24a50690 	addiu	a1,a1,1680
    35ec:	3c014120 	lui	at,0x4120
    35f0:	24990008 	addiu	t9,a0,8
    35f4:	ac7902c0 	sw	t9,704(v1)
    35f8:	ac800004 	sw	zero,4(a0)
    35fc:	ac9f0000 	sw	ra,0(a0)
    3600:	8c6402c0 	lw	a0,704(v1)
    3604:	44813000 	mtc1	at,$f6
    3608:	3c01457a 	lui	at,0x457a
    360c:	248f0008 	addiu	t7,a0,8
    3610:	ac6f02c0 	sw	t7,704(v1)
    3614:	ac860000 	sw	a2,0(a0)
    3618:	8fae0170 	lw	t6,368(sp)
    361c:	44814000 	mtc1	at,$f8
    3620:	3c013f80 	lui	at,0x3f80
    3624:	ac8e0004 	sw	t6,4(a0)
    3628:	8c6402c0 	lw	a0,704(v1)
    362c:	3c0e0001 	lui	t6,0x1
    3630:	35ce0001 	ori	t6,t6,0x1
    3634:	24980008 	addiu	t8,a0,8
    3638:	ac7802c0 	sw	t8,704(v1)
    363c:	ac890004 	sw	t1,4(a0)
    3640:	ac880000 	sw	t0,0(a0)
    3644:	8c6402c0 	lw	a0,704(v1)
    3648:	44815000 	mtc1	at,$f10
    364c:	24990008 	addiu	t9,a0,8
    3650:	ac7902c0 	sw	t9,704(v1)
    3654:	ac800004 	sw	zero,4(a0)
    3658:	ac8a0000 	sw	t2,0(a0)
    365c:	8c6402c0 	lw	a0,704(v1)
    3660:	248f0008 	addiu	t7,a0,8
    3664:	ac6f02c0 	sw	t7,704(v1)
    3668:	ac8e0004 	sw	t6,4(a0)
    366c:	ac8b0000 	sw	t3,0(a0)
    3670:	8c6402c0 	lw	a0,704(v1)
    3674:	3c0efe00 	lui	t6,0xfe00
    3678:	24980008 	addiu	t8,a0,8
    367c:	ac7802c0 	sw	t8,704(v1)
    3680:	ac800004 	sw	zero,4(a0)
    3684:	ac870000 	sw	a3,0(a0)
    3688:	8c6402c0 	lw	a0,704(v1)
    368c:	44072000 	mfc1	a3,$f4
    3690:	24990008 	addiu	t9,a0,8
    3694:	ac7902c0 	sw	t9,704(v1)
    3698:	ac800004 	sw	zero,4(a0)
    369c:	ac9f0000 	sw	ra,0(a0)
    36a0:	8c6402c0 	lw	a0,704(v1)
    36a4:	248f0008 	addiu	t7,a0,8
    36a8:	ac6f02c0 	sw	t7,704(v1)
    36ac:	ac8e0000 	sw	t6,0(a0)
    36b0:	8fb80174 	lw	t8,372(sp)
    36b4:	3c0fdc08 	lui	t7,0xdc08
    36b8:	35ef0008 	ori	t7,t7,0x8
    36bc:	ac980004 	sw	t8,4(a0)
    36c0:	000d2040 	sll	a0,t5,0x1
    36c4:	a4a20000 	sh	v0,0(a1)
    36c8:	a4a20008 	sh	v0,8(a1)
    36cc:	a4a4000a 	sh	a0,10(a1)
    36d0:	a4a40002 	sh	a0,2(a1)
    36d4:	8c6402c0 	lw	a0,704(v1)
    36d8:	24990008 	addiu	t9,a0,8
    36dc:	ac7902c0 	sw	t9,704(v1)
    36e0:	ac850004 	sw	a1,4(a0)
    36e4:	ac8f0000 	sw	t7,0(a0)
    36e8:	8fa6016c 	lw	a2,364(sp)
    36ec:	8fa4011c 	lw	a0,284(sp)
    36f0:	27a50122 	addiu	a1,sp,290
    36f4:	afa30114 	sw	v1,276(sp)
    36f8:	e7a60010 	swc1	$f6,16(sp)
    36fc:	e7a80014 	swc1	$f8,20(sp)
    3700:	0c000000 	jal	0 <Player_SetBootData>
    3704:	e7aa0018 	swc1	$f10,24(sp)
    3708:	8fa30114 	lw	v1,276(sp)
    370c:	3c18db0e 	lui	t8,0xdb0e
    3710:	44800000 	mtc1	zero,$f0
    3714:	8c6402c0 	lw	a0,704(v1)
    3718:	3c013f80 	lui	at,0x3f80
    371c:	44813000 	mtc1	at,$f6
    3720:	248e0008 	addiu	t6,a0,8
    3724:	ac6e02c0 	sw	t6,704(v1)
    3728:	ac980000 	sw	t8,0(a0)
    372c:	97b90122 	lhu	t9,290(sp)
    3730:	3c0eda38 	lui	t6,0xda38
    3734:	35ce0007 	ori	t6,t6,0x7
    3738:	ac990004 	sw	t9,4(a0)
    373c:	8c6402c0 	lw	a0,704(v1)
    3740:	248f0008 	addiu	t7,a0,8
    3744:	ac6f02c0 	sw	t7,704(v1)
    3748:	ac8e0000 	sw	t6,0(a0)
    374c:	8fb8011c 	lw	t8,284(sp)
    3750:	ac980004 	sw	t8,4(a0)
    3754:	8fa80168 	lw	t0,360(sp)
    3758:	8fa20164 	lw	v0,356(sp)
    375c:	8fa40118 	lw	a0,280(sp)
    3760:	c5100000 	lwc1	$f16,0(t0)
    3764:	8c450000 	lw	a1,0(v0)
    3768:	8c460004 	lw	a2,4(v0)
    376c:	8c470008 	lw	a3,8(v0)
    3770:	e7b00010 	swc1	$f16,16(sp)
    3774:	c5120004 	lwc1	$f18,4(t0)
    3778:	e7b20014 	swc1	$f18,20(sp)
    377c:	c5040008 	lwc1	$f4,8(t0)
    3780:	afa30114 	sw	v1,276(sp)
    3784:	e7a00024 	swc1	$f0,36(sp)
    3788:	e7a0001c 	swc1	$f0,28(sp)
    378c:	e7a60020 	swc1	$f6,32(sp)
    3790:	0c000000 	jal	0 <Player_SetBootData>
    3794:	e7a40018 	swc1	$f4,24(sp)
    3798:	8fa30114 	lw	v1,276(sp)
    379c:	3c0fda38 	lui	t7,0xda38
    37a0:	35ef0005 	ori	t7,t7,0x5
    37a4:	8c6402c0 	lw	a0,704(v1)
    37a8:	24990008 	addiu	t9,a0,8
    37ac:	ac7902c0 	sw	t9,704(v1)
    37b0:	ac8f0000 	sw	t7,0(a0)
    37b4:	8fae0118 	lw	t6,280(sp)
    37b8:	ac8e0004 	sw	t6,4(a0)
    37bc:	8fb8014c 	lw	t8,332(sp)
    37c0:	8fb90154 	lw	t9,340(sp)
    37c4:	8fa20140 	lw	v0,320(sp)
    37c8:	a3b8012c 	sb	t8,300(sp)
    37cc:	a3b9012d 	sb	t9,301(sp)
    37d0:	8c460008 	lw	a2,8(v0)
    37d4:	c44e0004 	lwc1	$f14,4(v0)
    37d8:	c44c0000 	lwc1	$f12,0(v0)
    37dc:	8fa70144 	lw	a3,324(sp)
    37e0:	0c000000 	jal	0 <Player_SetBootData>
    37e4:	afa30114 	sw	v1,276(sp)
    37e8:	c7ac0148 	lwc1	$f12,328(sp)
    37ec:	24070001 	li	a3,1
    37f0:	44066000 	mfc1	a2,$f12
    37f4:	0c000000 	jal	0 <Player_SetBootData>
    37f8:	46006386 	mov.s	$f14,$f12
    37fc:	8fa30114 	lw	v1,276(sp)
    3800:	3c0edb06 	lui	t6,0xdb06
    3804:	35ce0010 	ori	t6,t6,0x10
    3808:	8c6402c0 	lw	a0,704(v1)
    380c:	248f0008 	addiu	t7,a0,8
    3810:	ac6f02c0 	sw	t7,704(v1)
    3814:	ac8e0000 	sw	t6,0(a0)
    3818:	8fb80134 	lw	t8,308(sp)
    381c:	3c0fdb06 	lui	t7,0xdb06
    3820:	35ef0018 	ori	t7,t7,0x18
    3824:	ac980004 	sw	t8,4(a0)
    3828:	8c6402c0 	lw	a0,704(v1)
    382c:	24990008 	addiu	t9,a0,8
    3830:	ac7902c0 	sw	t9,704(v1)
    3834:	ac8f0000 	sw	t7,0(a0)
    3838:	8fae0138 	lw	t6,312(sp)
    383c:	240f0018 	li	t7,24
    3840:	3c19db02 	lui	t9,0xdb02
    3844:	ac8e0004 	sw	t6,4(a0)
    3848:	8c6402c0 	lw	a0,704(v1)
    384c:	24980008 	addiu	t8,a0,8
    3850:	ac7802c0 	sw	t8,704(v1)
    3854:	ac8f0004 	sw	t7,4(a0)
    3858:	ac990000 	sw	t9,0(a0)
    385c:	8c6402c0 	lw	a0,704(v1)
    3860:	3c190000 	lui	t9,0x0
    3864:	3c18dc08 	lui	t8,0xdc08
    3868:	248e0008 	addiu	t6,a0,8
    386c:	ac6e02c0 	sw	t6,704(v1)
    3870:	3718060a 	ori	t8,t8,0x60a
    3874:	273906a8 	addiu	t9,t9,1704
    3878:	ac990004 	sw	t9,4(a0)
    387c:	ac980000 	sw	t8,0(a0)
    3880:	8c6402c0 	lw	a0,704(v1)
    3884:	3c180000 	lui	t8,0x0
    3888:	3c0edc08 	lui	t6,0xdc08
    388c:	248f0008 	addiu	t7,a0,8
    3890:	ac6f02c0 	sw	t7,704(v1)
    3894:	35ce090a 	ori	t6,t6,0x90a
    3898:	271806a0 	addiu	t8,t8,1696
    389c:	ac980004 	sw	t8,4(a0)
    38a0:	ac8e0000 	sw	t6,0(a0)
    38a4:	8fa40130 	lw	a0,304(sp)
    38a8:	0c000000 	jal	0 <Player_SetBootData>
    38ac:	afa30114 	sw	v1,276(sp)
    38b0:	8fa30114 	lw	v1,276(sp)
    38b4:	241903e5 	li	t9,997
    38b8:	240f03e8 	li	t7,1000
    38bc:	8c6402c0 	lw	a0,704(v1)
    38c0:	afaf0018 	sw	t7,24(sp)
    38c4:	afb90014 	sw	t9,20(sp)
    38c8:	afa00010 	sw	zero,16(sp)
    38cc:	248e0008 	addiu	t6,a0,8
    38d0:	00002825 	move	a1,zero
    38d4:	00003025 	move	a2,zero
    38d8:	00003825 	move	a3,zero
    38dc:	0c000000 	jal	0 <Player_SetBootData>
    38e0:	ac6e02c0 	sw	t6,704(v1)
    38e4:	8fa30114 	lw	v1,276(sp)
    38e8:	8fa80130 	lw	t0,304(sp)
    38ec:	3c060000 	lui	a2,0x0
    38f0:	ac6202c0 	sw	v0,704(v1)
    38f4:	8fa40140 	lw	a0,320(sp)
    38f8:	24c606b8 	addiu	a2,a2,1720
    38fc:	8d070000 	lw	a3,0(t0)
    3900:	0c000000 	jal	0 <Player_SetBootData>
    3904:	250500e0 	addiu	a1,t0,224
    3908:	8fa30114 	lw	v1,276(sp)
    390c:	3c19db06 	lui	t9,0xdb06
    3910:	3c0f0000 	lui	t7,0x0
    3914:	8c6402c0 	lw	a0,704(v1)
    3918:	25ef0000 	addiu	t7,t7,0
    391c:	37390030 	ori	t9,t9,0x30
    3920:	24980008 	addiu	t8,a0,8
    3924:	ac7802c0 	sw	t8,704(v1)
    3928:	ac8f0004 	sw	t7,4(a0)
    392c:	ac990000 	sw	t9,0(a0)
    3930:	8fa2013c 	lw	v0,316(sp)
    3934:	8fb80158 	lw	t8,344(sp)
    3938:	8fae0150 	lw	t6,336(sp)
    393c:	8c450004 	lw	a1,4(v0)
    3940:	8c460020 	lw	a2,32(v0)
    3944:	90470002 	lbu	a3,2(v0)
    3948:	3c190000 	lui	t9,0x0
    394c:	27390000 	addiu	t9,t9,0
    3950:	27af012c 	addiu	t7,sp,300
    3954:	afaf0028 	sw	t7,40(sp)
    3958:	afb90020 	sw	t9,32(sp)
    395c:	afa00024 	sw	zero,36(sp)
    3960:	afa0001c 	sw	zero,28(sp)
    3964:	afa00010 	sw	zero,16(sp)
    3968:	8fa40130 	lw	a0,304(sp)
    396c:	afa30114 	sw	v1,276(sp)
    3970:	afb80018 	sw	t8,24(sp)
    3974:	0c000000 	jal	0 <Player_SetBootData>
    3978:	afae0014 	sw	t6,20(sp)
    397c:	8fa30114 	lw	v1,276(sp)
    3980:	3c05df00 	lui	a1,0xdf00
    3984:	3c060000 	lui	a2,0x0
    3988:	8c6402c0 	lw	a0,704(v1)
    398c:	24c6017c 	addiu	a2,a2,380
    3990:	24070cd8 	li	a3,3288
    3994:	248e0008 	addiu	t6,a0,8
    3998:	ac6e02c0 	sw	t6,704(v1)
    399c:	ac800004 	sw	zero,4(a0)
    39a0:	ac850000 	sw	a1,0(a0)
    39a4:	8c6202d0 	lw	v0,720(v1)
    39a8:	24580008 	addiu	t8,v0,8
    39ac:	ac7802d0 	sw	t8,720(v1)
    39b0:	ac400004 	sw	zero,4(v0)
    39b4:	ac450000 	sw	a1,0(v0)
    39b8:	8fa40128 	lw	a0,296(sp)
    39bc:	3c02de01 	lui	v0,0xde01
    39c0:	ac820000 	sw	v0,0(a0)
    39c4:	8c7902c0 	lw	t9,704(v1)
    39c8:	ac990004 	sw	t9,4(a0)
    39cc:	8fa40124 	lw	a0,292(sp)
    39d0:	ac820000 	sw	v0,0(a0)
    39d4:	8c6f02d0 	lw	t7,720(v1)
    39d8:	ac8f0004 	sw	t7,4(a0)
    39dc:	8fae0130 	lw	t6,304(sp)
    39e0:	27a40104 	addiu	a0,sp,260
    39e4:	0c000000 	jal	0 <Player_SetBootData>
    39e8:	8dc50000 	lw	a1,0(t6)
    39ec:	8fbf0034 	lw	ra,52(sp)
    39f0:	27bd0130 	addiu	sp,sp,304
    39f4:	03e00008 	jr	ra
    39f8:	00000000 	nop

000039fc <func_8009214C>:
    39fc:	3c018000 	lui	at,0x8000
    3a00:	34213800 	ori	at,at,0x3800
    3a04:	00a17821 	addu	t7,a1,at
    3a08:	3c080000 	lui	t0,0x0
    3a0c:	3c018000 	lui	at,0x8000
    3a10:	25080000 	addiu	t0,t0,0
    3a14:	34218800 	ori	at,at,0x8800
    3a18:	00a1c821 	addu	t9,a1,at
    3a1c:	27bdffa8 	addiu	sp,sp,-88
    3a20:	ad0f0010 	sw	t7,16(t0)
    3a24:	ad190018 	sw	t9,24(t0)
    3a28:	3c090000 	lui	t1,0x0
    3a2c:	8d290004 	lw	t1,4(t1)
    3a30:	afb00050 	sw	s0,80(sp)
    3a34:	00c08025 	move	s0,a2
    3a38:	afbf0054 	sw	ra,84(sp)
    3a3c:	afa40058 	sw	a0,88(sp)
    3a40:	afa5005c 	sw	a1,92(sp)
    3a44:	1120000b 	beqz	t1,3a74 <func_8009214C+0x78>
    3a48:	afa70064 	sw	a3,100(sp)
    3a4c:	8faa0078 	lw	t2,120(sp)
    3a50:	24010001 	li	at,1
    3a54:	3c040000 	lui	a0,0x0
    3a58:	15410004 	bne	t2,at,3a6c <func_8009214C+0x70>
    3a5c:	00000000 	nop
    3a60:	3c040000 	lui	a0,0x0
    3a64:	10000010 	b	3aa8 <func_8009214C+0xac>
    3a68:	24840000 	addiu	a0,a0,0
    3a6c:	1000000e 	b	3aa8 <func_8009214C+0xac>
    3a70:	24840000 	addiu	a0,a0,0
    3a74:	8fab0070 	lw	t3,112(sp)
    3a78:	24010003 	li	at,3
    3a7c:	3c040000 	lui	a0,0x0
    3a80:	15610003 	bne	t3,at,3a90 <func_8009214C+0x94>
    3a84:	8fac0078 	lw	t4,120(sp)
    3a88:	10000007 	b	3aa8 <func_8009214C+0xac>
    3a8c:	24840000 	addiu	a0,a0,0
    3a90:	11800004 	beqz	t4,3aa4 <func_8009214C+0xa8>
    3a94:	3c040000 	lui	a0,0x0
    3a98:	3c040000 	lui	a0,0x0
    3a9c:	10000002 	b	3aa8 <func_8009214C+0xac>
    3aa0:	24840000 	addiu	a0,a0,0
    3aa4:	24840000 	addiu	a0,a0,0
    3aa8:	00046900 	sll	t5,a0,0x4
    3aac:	000d7702 	srl	t6,t5,0x1c
    3ab0:	000e7880 	sll	t7,t6,0x2
    3ab4:	010fc021 	addu	t8,t0,t7
    3ab8:	3c0100ff 	lui	at,0xff
    3abc:	8f190000 	lw	t9,0(t8)
    3ac0:	3421ffff 	ori	at,at,0xffff
    3ac4:	920a0000 	lbu	t2,0(s0)
    3ac8:	00814824 	and	t1,a0,at
    3acc:	3c018000 	lui	at,0x8000
    3ad0:	03292021 	addu	a0,t9,t1
    3ad4:	00812021 	addu	a0,a0,at
    3ad8:	8e020020 	lw	v0,32(s0)
    3adc:	1940000e 	blez	t2,3b18 <func_8009214C+0x11c>
    3ae0:	00001825 	move	v1,zero
    3ae4:	888c0000 	lwl	t4,0(a0)
    3ae8:	988c0003 	lwr	t4,3(a0)
    3aec:	24630001 	addiu	v1,v1,1
    3af0:	24420006 	addiu	v0,v0,6
    3af4:	a84cfffa 	swl	t4,-6(v0)
    3af8:	b84cfffd 	swr	t4,-3(v0)
    3afc:	948c0004 	lhu	t4,4(a0)
    3b00:	24840006 	addiu	a0,a0,6
    3b04:	a44cfffe 	sh	t4,-2(v0)
    3b08:	920d0000 	lbu	t5,0(s0)
    3b0c:	006d082a 	slt	at,v1,t5
    3b10:	5420fff5 	bnezl	at,3ae8 <func_8009214C+0xec>
    3b14:	888c0000 	lwl	t4,0(a0)
    3b18:	8faf005c 	lw	t7,92(sp)
    3b1c:	8fb80064 	lw	t8,100(sp)
    3b20:	8fb90068 	lw	t9,104(sp)
    3b24:	34018800 	li	at,0x8800
    3b28:	01e13021 	addu	a2,t7,at
    3b2c:	3c014270 	lui	at,0x4270
    3b30:	44813000 	mtc1	at,$f6
    3b34:	c7a4006c 	lwc1	$f4,108(sp)
    3b38:	8fa90070 	lw	t1,112(sp)
    3b3c:	8faa0074 	lw	t2,116(sp)
    3b40:	8fab0078 	lw	t3,120(sp)
    3b44:	8fac007c 	lw	t4,124(sp)
    3b48:	afb80010 	sw	t8,16(sp)
    3b4c:	afb90014 	sw	t9,20(sp)
    3b50:	8fa40058 	lw	a0,88(sp)
    3b54:	3c190000 	lui	t9,0x0
    3b58:	3c180000 	lui	t8,0x0
    3b5c:	25e53800 	addiu	a1,t7,14336
    3b60:	240f0070 	li	t7,112
    3b64:	271806c4 	addiu	t8,t8,1732
    3b68:	273906d0 	addiu	t9,t9,1744
    3b6c:	240d0040 	li	t5,64
    3b70:	afad002c 	sw	t5,44(sp)
    3b74:	afb90038 	sw	t9,56(sp)
    3b78:	afb80034 	sw	t8,52(sp)
    3b7c:	afaf0030 	sw	t7,48(sp)
    3b80:	e7a40018 	swc1	$f4,24(sp)
    3b84:	e7a6003c 	swc1	$f6,60(sp)
    3b88:	afa9001c 	sw	t1,28(sp)
    3b8c:	afaa0020 	sw	t2,32(sp)
    3b90:	afab0024 	sw	t3,36(sp)
    3b94:	afac0028 	sw	t4,40(sp)
    3b98:	8c890000 	lw	t1,0(a0)
    3b9c:	02003825 	move	a3,s0
    3ba0:	8d2202dc 	lw	v0,732(t1)
    3ba4:	244a3800 	addiu	t2,v0,14336
    3ba8:	afaa0044 	sw	t2,68(sp)
    3bac:	0c000000 	jal	0 <Player_SetBootData>
    3bb0:	afa20040 	sw	v0,64(sp)
    3bb4:	8fbf0054 	lw	ra,84(sp)
    3bb8:	8fb00050 	lw	s0,80(sp)
    3bbc:	27bd0058 	addiu	sp,sp,88
    3bc0:	03e00008 	jr	ra
    3bc4:	00000000 	nop
	...
