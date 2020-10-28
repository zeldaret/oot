
build/src/code/z_demo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Cutscene_DrawDebugInfo>:
       0:	27bdffa0 	addiu	sp,sp,-96
       4:	afb00020 	sw	s0,32(sp)
       8:	27b00030 	addiu	s0,sp,48
       c:	afbf0024 	sw	ra,36(sp)
      10:	afa40060 	sw	a0,96(sp)
      14:	afa50064 	sw	a1,100(sp)
      18:	afa60068 	sw	a2,104(sp)
      1c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      20:	02002025 	move	a0,s0
      24:	8fae0064 	lw	t6,100(sp)
      28:	02002025 	move	a0,s0
      2c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      30:	8dc50000 	lw	a1,0(t6)
      34:	02002025 	move	a0,s0
      38:	24050016 	li	a1,22
      3c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      40:	24060019 	li	a2,25
      44:	240f0020 	li	t7,32
      48:	afaf0010 	sw	t7,16(sp)
      4c:	02002025 	move	a0,s0
      50:	240500ff 	li	a1,255
      54:	240600ff 	li	a2,255
      58:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      5c:	24070037 	li	a3,55
      60:	3c050000 	lui	a1,0x0
      64:	3c060000 	lui	a2,0x0
      68:	24c60004 	addiu	a2,a2,4
      6c:	24a50000 	addiu	a1,a1,0
      70:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      74:	02002025 	move	a0,s0
      78:	24180020 	li	t8,32
      7c:	afb80010 	sw	t8,16(sp)
      80:	02002025 	move	a0,s0
      84:	240500ff 	li	a1,255
      88:	240600ff 	li	a2,255
      8c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      90:	240700ff 	li	a3,255
      94:	8fb90068 	lw	t9,104(sp)
      98:	3c050000 	lui	a1,0x0
      9c:	24a5000c 	addiu	a1,a1,12
      a0:	02002025 	move	a0,s0
      a4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      a8:	97260010 	lhu	a2,16(t9)
      ac:	2408003c 	li	t0,60
      b0:	afa80010 	sw	t0,16(sp)
      b4:	02002025 	move	a0,s0
      b8:	24050032 	li	a1,50
      bc:	240600ff 	li	a2,255
      c0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      c4:	240700ff 	li	a3,255
      c8:	02002025 	move	a0,s0
      cc:	24050004 	li	a1,4
      d0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      d4:	2406001a 	li	a2,26
      d8:	3c050000 	lui	a1,0x0
      dc:	3c060000 	lui	a2,0x0
      e0:	24c60018 	addiu	a2,a2,24
      e4:	24a50014 	addiu	a1,a1,20
      e8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      ec:	02002025 	move	a0,s0
      f0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
      f4:	02002025 	move	a0,s0
      f8:	8fa90064 	lw	t1,100(sp)
      fc:	02002025 	move	a0,s0
     100:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     104:	ad220000 	sw	v0,0(t1)
     108:	8fbf0024 	lw	ra,36(sp)
     10c:	8fb00020 	lw	s0,32(sp)
     110:	27bd0060 	addiu	sp,sp,96
     114:	03e00008 	jr	ra
     118:	00000000 	nop

0000011c <func_8006450C>:
     11c:	44802000 	mtc1	zero,$f4
     120:	afa40000 	sw	a0,0(sp)
     124:	a0a00008 	sb	zero,8(a1)
     128:	03e00008 	jr	ra
     12c:	e4a4000c 	swc1	$f4,12(a1)

00000130 <func_80064520>:
     130:	afa40000 	sw	a0,0(sp)
     134:	240e0001 	li	t6,1
     138:	a0ae0008 	sb	t6,8(a1)
     13c:	03e00008 	jr	ra
     140:	aca00024 	sw	zero,36(a1)

00000144 <func_80064534>:
     144:	afa40000 	sw	a0,0(sp)
     148:	90ae0008 	lbu	t6,8(a1)
     14c:	24010004 	li	at,4
     150:	240f0003 	li	t7,3
     154:	11c10002 	beq	t6,at,160 <func_80064534+0x1c>
     158:	00000000 	nop
     15c:	a0af0008 	sb	t7,8(a1)
     160:	03e00008 	jr	ra
     164:	00000000 	nop

00000168 <func_80064558>:
     168:	3c0e0000 	lui	t6,0x0
     16c:	8dce0008 	lw	t6,8(t6)
     170:	3401fff0 	li	at,0xfff0
     174:	27bdffe8 	addiu	sp,sp,-24
     178:	01c1082a 	slt	at,t6,at
     17c:	10200008 	beqz	at,1a0 <func_80064558+0x38>
     180:	afbf0014 	sw	ra,20(sp)
     184:	90af0008 	lbu	t7,8(a1)
     188:	3c190000 	lui	t9,0x0
     18c:	000fc080 	sll	t8,t7,0x2
     190:	0338c821 	addu	t9,t9,t8
     194:	8f390000 	lw	t9,0(t9)
     198:	0320f809 	jalr	t9
     19c:	00000000 	nop
     1a0:	8fbf0014 	lw	ra,20(sp)
     1a4:	27bd0018 	addiu	sp,sp,24
     1a8:	03e00008 	jr	ra
     1ac:	00000000 	nop

000001b0 <func_800645A0>:
     1b0:	27bdffe8 	addiu	sp,sp,-24
     1b4:	afbf0014 	sw	ra,20(sp)
     1b8:	948e0020 	lhu	t6,32(a0)
     1bc:	2401fdff 	li	at,-513
     1c0:	00803025 	move	a2,a0
     1c4:	01c17827 	nor	t7,t6,at
     1c8:	55e00010 	bnezl	t7,20c <func_800645A0+0x5c>
     1cc:	94c90020 	lhu	t1,32(a2)
     1d0:	90b80008 	lbu	t8,8(a1)
     1d4:	3c030000 	lui	v1,0x0
     1d8:	24630000 	addiu	v1,v1,0
     1dc:	5700000b 	bnezl	t8,20c <func_800645A0+0x5c>
     1e0:	94c90020 	lhu	t1,32(a2)
     1e4:	8c791360 	lw	t9,4960(v1)
     1e8:	24070001 	li	a3,1
     1ec:	3408fffd 	li	t0,0xfffd
     1f0:	2b210004 	slti	at,t9,4
     1f4:	14200004 	bnez	at,208 <func_800645A0+0x58>
     1f8:	3c010000 	lui	at,0x0
     1fc:	a0200000 	sb	zero,0(at)
     200:	ac680008 	sw	t0,8(v1)
     204:	a0671414 	sb	a3,5140(v1)
     208:	94c90020 	lhu	t1,32(a2)
     20c:	2401f7ff 	li	at,-2049
     210:	3c030000 	lui	v1,0x0
     214:	01215027 	nor	t2,t1,at
     218:	24630000 	addiu	v1,v1,0
     21c:	15400011 	bnez	t2,264 <func_800645A0+0xb4>
     220:	24070001 	li	a3,1
     224:	90ab0008 	lbu	t3,8(a1)
     228:	5560000f 	bnezl	t3,268 <func_800645A0+0xb8>
     22c:	90621414 	lbu	v0,5140(v1)
     230:	8c6c1360 	lw	t4,4960(v1)
     234:	3c0d0000 	lui	t5,0x0
     238:	29810004 	slti	at,t4,4
     23c:	5420000a 	bnezl	at,268 <func_800645A0+0xb8>
     240:	90621414 	lbu	v0,5140(v1)
     244:	8dad0000 	lw	t5,0(t5)
     248:	3c010000 	lui	at,0x0
     24c:	340efffd 	li	t6,0xfffd
     250:	55a00005 	bnezl	t5,268 <func_800645A0+0xb8>
     254:	90621414 	lbu	v0,5140(v1)
     258:	a0270000 	sb	a3,0(at)
     25c:	ac6e0008 	sw	t6,8(v1)
     260:	a0671414 	sb	a3,5140(v1)
     264:	90621414 	lbu	v0,5140(v1)
     268:	3c0f0001 	lui	t7,0x1
     26c:	01e67821 	addu	t7,t7,a2
     270:	10400007 	beqz	v0,290 <func_800645A0+0xe0>
     274:	00000000 	nop
     278:	81ef1e15 	lb	t7,7701(t7)
     27c:	24010014 	li	at,20
     280:	15e10003 	bne	t7,at,290 <func_800645A0+0xe0>
     284:	00000000 	nop
     288:	a0601414 	sb	zero,5140(v1)
     28c:	300200ff 	andi	v0,zero,0xff
     290:	50400012 	beqzl	v0,2dc <func_800645A0+0x12c>
     294:	8c680008 	lw	t0,8(v1)
     298:	90b80008 	lbu	t8,8(a1)
     29c:	3c040000 	lui	a0,0x0
     2a0:	24840038 	addiu	a0,a0,56
     2a4:	5700000d 	bnezl	t8,2dc <func_800645A0+0x12c>
     2a8:	8c680008 	lw	t0,8(v1)
     2ac:	afa5001c 	sw	a1,28(sp)
     2b0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     2b4:	afa60018 	sw	a2,24(sp)
     2b8:	3c030000 	lui	v1,0x0
     2bc:	24630000 	addiu	v1,v1,0
     2c0:	24070001 	li	a3,1
     2c4:	3419fffd 	li	t9,0xfffd
     2c8:	8fa5001c 	lw	a1,28(sp)
     2cc:	8fa60018 	lw	a2,24(sp)
     2d0:	ac790008 	sw	t9,8(v1)
     2d4:	a0671414 	sb	a3,5140(v1)
     2d8:	8c680008 	lw	t0,8(v1)
     2dc:	3401fff0 	li	at,0xfff0
     2e0:	00c02025 	move	a0,a2
     2e4:	0101082a 	slt	at,t0,at
     2e8:	5420000e 	bnezl	at,324 <func_800645A0+0x174>
     2ec:	8fbf0014 	lw	ra,20(sp)
     2f0:	afa5001c 	sw	a1,28(sp)
     2f4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     2f8:	afa60018 	sw	a2,24(sp)
     2fc:	8fa5001c 	lw	a1,28(sp)
     300:	3c190000 	lui	t9,0x0
     304:	8fa40018 	lw	a0,24(sp)
     308:	90a90008 	lbu	t1,8(a1)
     30c:	00095080 	sll	t2,t1,0x2
     310:	032ac821 	addu	t9,t9,t2
     314:	8f390000 	lw	t9,0(t9)
     318:	0320f809 	jalr	t9
     31c:	00000000 	nop
     320:	8fbf0014 	lw	ra,20(sp)
     324:	27bd0018 	addiu	sp,sp,24
     328:	03e00008 	jr	ra
     32c:	00000000 	nop

00000330 <func_80064720>:
     330:	afa40000 	sw	a0,0(sp)
     334:	03e00008 	jr	ra
     338:	afa50004 	sw	a1,4(sp)

0000033c <func_8006472C>:
     33c:	44866000 	mtc1	a2,$f12
     340:	27bdffe8 	addiu	sp,sp,-24
     344:	afa40018 	sw	a0,24(sp)
     348:	24a4000c 	addiu	a0,a1,12
     34c:	afbf0014 	sw	ra,20(sp)
     350:	3c063dcc 	lui	a2,0x3dcc
     354:	44056000 	mfc1	a1,$f12
     358:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     35c:	34c6cccd 	ori	a2,a2,0xcccd
     360:	8fbf0014 	lw	ra,20(sp)
     364:	27bd0018 	addiu	sp,sp,24
     368:	03e00008 	jr	ra
     36c:	00000000 	nop

00000370 <func_80064760>:
     370:	27bdffe8 	addiu	sp,sp,-24
     374:	afbf0014 	sw	ra,20(sp)
     378:	afa40018 	sw	a0,24(sp)
     37c:	afa5001c 	sw	a1,28(sp)
     380:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     384:	24040001 	li	a0,1
     388:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     38c:	24040020 	li	a0,32
     390:	8fa40018 	lw	a0,24(sp)
     394:	8fa5001c 	lw	a1,28(sp)
     398:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     39c:	3c063f80 	lui	a2,0x3f80
     3a0:	50400008 	beqzl	v0,3c4 <func_80064760+0x54>
     3a4:	8fbf0014 	lw	ra,20(sp)
     3a8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     3ac:	24040001 	li	a0,1
     3b0:	8fae001c 	lw	t6,28(sp)
     3b4:	91cf0008 	lbu	t7,8(t6)
     3b8:	25f80001 	addiu	t8,t7,1
     3bc:	a1d80008 	sb	t8,8(t6)
     3c0:	8fbf0014 	lw	ra,20(sp)
     3c4:	27bd0018 	addiu	sp,sp,24
     3c8:	03e00008 	jr	ra
     3cc:	00000000 	nop

000003d0 <func_800647C0>:
     3d0:	27bdffe8 	addiu	sp,sp,-24
     3d4:	afbf0014 	sw	ra,20(sp)
     3d8:	afa40018 	sw	a0,24(sp)
     3dc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     3e0:	afa5001c 	sw	a1,28(sp)
     3e4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     3e8:	24040001 	li	a0,1
     3ec:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     3f0:	24040020 	li	a0,32
     3f4:	8fa40018 	lw	a0,24(sp)
     3f8:	8fa5001c 	lw	a1,28(sp)
     3fc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     400:	3c063f80 	lui	a2,0x3f80
     404:	50400008 	beqzl	v0,428 <func_800647C0+0x58>
     408:	8fbf0014 	lw	ra,20(sp)
     40c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     410:	24040001 	li	a0,1
     414:	8fae001c 	lw	t6,28(sp)
     418:	91cf0008 	lbu	t7,8(t6)
     41c:	25f80001 	addiu	t8,t7,1
     420:	a1d80008 	sb	t8,8(t6)
     424:	8fbf0014 	lw	ra,20(sp)
     428:	27bd0018 	addiu	sp,sp,24
     42c:	03e00008 	jr	ra
     430:	00000000 	nop

00000434 <func_80064824>:
     434:	27bdffb8 	addiu	sp,sp,-72
     438:	afbf002c 	sw	ra,44(sp)
     43c:	afb00028 	sw	s0,40(sp)
     440:	afa5004c 	sw	a1,76(sp)
     444:	afa60050 	sw	a2,80(sp)
     448:	94af0010 	lhu	t7,16(a1)
     44c:	8c891c44 	lw	t1,7236(a0)
     450:	00808025 	move	s0,a0
     454:	afaf0038 	sw	t7,56(sp)
     458:	94d90002 	lhu	t9,2(a2)
     45c:	00001025 	move	v0,zero
     460:	01f9082a 	slt	at,t7,t9
     464:	142001d3 	bnez	at,bb4 <func_80064824+0x780>
     468:	afb90030 	sw	t9,48(sp)
     46c:	94c30004 	lhu	v1,4(a2)
     470:	97a6003a 	lhu	a2,58(sp)
     474:	97a50032 	lhu	a1,50(sp)
     478:	01e3082a 	slt	at,t7,v1
     47c:	14200002 	bnez	at,488 <func_80064824+0x54>
     480:	2464ffff 	addiu	a0,v1,-1
     484:	172301cb 	bne	t9,v1,bb4 <func_80064824+0x780>
     488:	3084ffff 	andi	a0,a0,0xffff
     48c:	a3a2003f 	sb	v0,63(sp)
     490:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     494:	afa90044 	sw	t1,68(sp)
     498:	8fa30050 	lw	v1,80(sp)
     49c:	8fa4004c 	lw	a0,76(sp)
     4a0:	93a2003f 	lbu	v0,63(sp)
     4a4:	946a0002 	lhu	t2,2(v1)
     4a8:	94870010 	lhu	a3,16(a0)
     4ac:	8fa90044 	lw	t1,68(sp)
     4b0:	55470003 	bnel	t2,a3,4c0 <func_80064824+0x8c>
     4b4:	946b0000 	lhu	t3,0(v1)
     4b8:	24020001 	li	v0,1
     4bc:	946b0000 	lhu	t3,0(v1)
     4c0:	256cffff 	addiu	t4,t3,-1
     4c4:	2d810023 	sltiu	at,t4,35
     4c8:	102001ba 	beqz	at,bb4 <func_80064824+0x780>
     4cc:	000c6080 	sll	t4,t4,0x2
     4d0:	3c010000 	lui	at,0x0
     4d4:	002c0821 	addu	at,at,t4
     4d8:	8c2c00bc 	lw	t4,188(at)
     4dc:	01800008 	jr	t4
     4e0:	00000000 	nop
     4e4:	104001b3 	beqz	v0,bb4 <func_80064824+0x780>
     4e8:	2404000e 	li	a0,14
     4ec:	24050004 	li	a1,4
     4f0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     4f4:	2406003f 	li	a2,63
     4f8:	2404000e 	li	a0,14
     4fc:	24050001 	li	a1,1
     500:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     504:	24060001 	li	a2,1
     508:	3c010001 	lui	at,0x1
     50c:	00300821 	addu	at,at,s0
     510:	240d0014 	li	t5,20
     514:	100001a7 	b	bb4 <func_80064824+0x780>
     518:	a02d0b12 	sb	t5,2834(at)
     51c:	104001a5 	beqz	v0,bb4 <func_80064824+0x780>
     520:	2404000f 	li	a0,15
     524:	00002825 	move	a1,zero
     528:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     52c:	00003025 	move	a2,zero
     530:	02002025 	move	a0,s0
     534:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     538:	24050003 	li	a1,3
     53c:	24020001 	li	v0,1
     540:	3c010000 	lui	at,0x0
     544:	1000019b 	b	bb4 <func_80064824+0x780>
     548:	a0220000 	sb	v0,0(at)
     54c:	10400199 	beqz	v0,bb4 <func_80064824+0x780>
     550:	02002025 	move	a0,s0
     554:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     558:	00002825 	move	a1,zero
     55c:	3c040000 	lui	a0,0x0
     560:	24840000 	addiu	a0,a0,0
     564:	8c8e0000 	lw	t6,0(a0)
     568:	24010053 	li	at,83
     56c:	02002025 	move	a0,s0
     570:	55c10191 	bnel	t6,at,bb8 <func_80064824+0x784>
     574:	8fbf002c 	lw	ra,44(sp)
     578:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     57c:	24050002 	li	a1,2
     580:	1000018d 	b	bb8 <func_80064824+0x784>
     584:	8fbf002c 	lw	ra,44(sp)
     588:	3c020001 	lui	v0,0x1
     58c:	00501021 	addu	v0,v0,s0
     590:	84420ac4 	lh	v0,2756(v0)
     594:	28413200 	slti	at,v0,12800
     598:	10200186 	beqz	at,bb4 <func_80064824+0x780>
     59c:	244f0023 	addiu	t7,v0,35
     5a0:	3c010001 	lui	at,0x1
     5a4:	00300821 	addu	at,at,s0
     5a8:	10000182 	b	bb4 <func_80064824+0x780>
     5ac:	a42f0ac4 	sh	t7,2756(at)
     5b0:	10400180 	beqz	v0,bb4 <func_80064824+0x780>
     5b4:	2403003c 	li	v1,60
     5b8:	3c010001 	lui	at,0x1
     5bc:	24020001 	li	v0,1
     5c0:	00300821 	addu	at,at,s0
     5c4:	a0220a3d 	sb	v0,2621(at)
     5c8:	3c010001 	lui	at,0x1
     5cc:	00300821 	addu	at,at,s0
     5d0:	a0220a3b 	sb	v0,2619(at)
     5d4:	3c010001 	lui	at,0x1
     5d8:	00300821 	addu	at,at,s0
     5dc:	a0200a3c 	sb	zero,2620(at)
     5e0:	3c010001 	lui	at,0x1
     5e4:	00300821 	addu	at,at,s0
     5e8:	a4230a3e 	sh	v1,2622(at)
     5ec:	3c010001 	lui	at,0x1
     5f0:	00300821 	addu	at,at,s0
     5f4:	a0220a45 	sb	v0,2629(at)
     5f8:	3c010001 	lui	at,0x1
     5fc:	00300821 	addu	at,at,s0
     600:	a0200a43 	sb	zero,2627(at)
     604:	3c010001 	lui	at,0x1
     608:	00300821 	addu	at,at,s0
     60c:	a0220a44 	sb	v0,2628(at)
     610:	3c010001 	lui	at,0x1
     614:	00300821 	addu	at,at,s0
     618:	a4230a48 	sh	v1,2632(at)
     61c:	3c190001 	lui	t9,0x1
     620:	0330c821 	addu	t9,t9,s0
     624:	97390a48 	lhu	t9,2632(t9)
     628:	3c010001 	lui	at,0x1
     62c:	00300821 	addu	at,at,s0
     630:	10000160 	b	bb4 <func_80064824+0x780>
     634:	a4390a46 	sh	t9,2630(at)
     638:	3c010001 	lui	at,0x1
     63c:	02011021 	addu	v0,s0,at
     640:	84431d30 	lh	v1,7472(v0)
     644:	28610080 	slti	at,v1,128
     648:	1020015a 	beqz	at,bb4 <func_80064824+0x780>
     64c:	24780004 	addiu	t8,v1,4
     650:	10000158 	b	bb4 <func_80064824+0x780>
     654:	a4581d30 	sh	t8,7472(v0)
     658:	3c010001 	lui	at,0x1
     65c:	00300821 	addu	at,at,s0
     660:	240a0010 	li	t2,16
     664:	10000153 	b	bb4 <func_80064824+0x780>
     668:	a02a0b15 	sb	t2,2837(at)
     66c:	02002025 	move	a0,s0
     670:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     674:	24050001 	li	a1,1
     678:	1000014f 	b	bb8 <func_80064824+0x784>
     67c:	8fbf002c 	lw	ra,44(sp)
     680:	3c010001 	lui	at,0x1
     684:	02011021 	addu	v0,s0,at
     688:	84431d30 	lh	v1,7472(v0)
     68c:	28610672 	slti	at,v1,1650
     690:	10200003 	beqz	at,6a0 <func_80064824+0x26c>
     694:	246b0014 	addiu	t3,v1,20
     698:	a44b1d30 	sh	t3,7472(v0)
     69c:	94870010 	lhu	a3,16(a0)
     6a0:	2401030f 	li	at,783
     6a4:	54e10006 	bnel	a3,at,6c0 <func_80064824+0x28c>
     6a8:	240102cd 	li	at,717
     6ac:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     6b0:	2404288e 	li	a0,10382
     6b4:	10000140 	b	bb8 <func_80064824+0x784>
     6b8:	8fbf002c 	lw	ra,44(sp)
     6bc:	240102cd 	li	at,717
     6c0:	54e1013d 	bnel	a3,at,bb8 <func_80064824+0x784>
     6c4:	8fbf002c 	lw	ra,44(sp)
     6c8:	1000013a 	b	bb4 <func_80064824+0x780>
     6cc:	a4401d30 	sh	zero,7472(v0)
     6d0:	50400139 	beqzl	v0,bb8 <func_80064824+0x784>
     6d4:	8fbf002c 	lw	ra,44(sp)
     6d8:	908c0008 	lbu	t4,8(a0)
     6dc:	24010004 	li	at,4
     6e0:	240d0003 	li	t5,3
     6e4:	51810134 	beql	t4,at,bb8 <func_80064824+0x784>
     6e8:	8fbf002c 	lw	ra,44(sp)
     6ec:	10000131 	b	bb4 <func_80064824+0x780>
     6f0:	a08d0008 	sb	t5,8(a0)
     6f4:	3c010001 	lui	at,0x1
     6f8:	02011021 	addu	v0,s0,at
     6fc:	84431d32 	lh	v1,7474(v0)
     700:	2404286f 	li	a0,10351
     704:	54600006 	bnezl	v1,720 <func_80064824+0x2ec>
     708:	286100ff 	slti	at,v1,255
     70c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     710:	afa20038 	sw	v0,56(sp)
     714:	8fa20038 	lw	v0,56(sp)
     718:	84431d32 	lh	v1,7474(v0)
     71c:	286100ff 	slti	at,v1,255
     720:	10200124 	beqz	at,bb4 <func_80064824+0x780>
     724:	246e0005 	addiu	t6,v1,5
     728:	10000122 	b	bb4 <func_80064824+0x780>
     72c:	a44e1d32 	sh	t6,7474(v0)
     730:	10400120 	beqz	v0,bb4 <func_80064824+0x780>
     734:	02002025 	move	a0,s0
     738:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     73c:	24050001 	li	a1,1
     740:	1000011d 	b	bb8 <func_80064824+0x784>
     744:	8fbf002c 	lw	ra,44(sp)
     748:	1040011a 	beqz	v0,bb4 <func_80064824+0x780>
     74c:	02002025 	move	a0,s0
     750:	8d2601b0 	lw	a2,432(t1)
     754:	240f0078 	li	t7,120
     758:	24190090 	li	t9,144
     75c:	24180018 	li	t8,24
     760:	240a0014 	li	t2,20
     764:	afaa001c 	sw	t2,28(sp)
     768:	afb80018 	sw	t8,24(sp)
     76c:	afb90014 	sw	t9,20(sp)
     770:	afaf0010 	sw	t7,16(sp)
     774:	26051d4c 	addiu	a1,s0,7500
     778:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     77c:	240700a0 	li	a3,160
     780:	1000010d 	b	bb8 <func_80064824+0x784>
     784:	8fbf002c 	lw	ra,44(sp)
     788:	5040010b 	beqzl	v0,bb8 <func_80064824+0x784>
     78c:	8fbf002c 	lw	ra,44(sp)
     790:	860b07a0 	lh	t3,1952(s0)
     794:	24050006 	li	a1,6
     798:	000b6080 	sll	t4,t3,0x2
     79c:	020c6821 	addu	t5,s0,t4
     7a0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     7a4:	8da40790 	lw	a0,1936(t5)
     7a8:	3c100000 	lui	s0,0x0
     7ac:	26100000 	addiu	s0,s0,0
     7b0:	a6020000 	sh	v0,0(s0)
     7b4:	86040000 	lh	a0,0(s0)
     7b8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     7bc:	24057fff 	li	a1,32767
     7c0:	86040000 	lh	a0,0(s0)
     7c4:	24050004 	li	a1,4
     7c8:	00003025 	move	a2,zero
     7cc:	240703e8 	li	a3,1000
     7d0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     7d4:	afa00010 	sw	zero,16(sp)
     7d8:	86040000 	lh	a0,0(s0)
     7dc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     7e0:	24050320 	li	a1,800
     7e4:	100000f4 	b	bb8 <func_80064824+0x784>
     7e8:	8fbf002c 	lw	ra,44(sp)
     7ec:	104000f1 	beqz	v0,bb4 <func_80064824+0x780>
     7f0:	3c100000 	lui	s0,0x0
     7f4:	26100000 	addiu	s0,s0,0
     7f8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     7fc:	86040000 	lh	a0,0(s0)
     800:	100000ed 	b	bb8 <func_80064824+0x784>
     804:	8fbf002c 	lw	ra,44(sp)
     808:	3c010001 	lui	at,0x1
     80c:	02011021 	addu	v0,s0,at
     810:	3c040000 	lui	a0,0x0
     814:	a0400b12 	sb	zero,2834(v0)
     818:	00300821 	addu	at,at,s0
     81c:	240e0002 	li	t6,2
     820:	24840000 	addiu	a0,a0,0
     824:	a02e0b01 	sb	t6,2817(at)
     828:	9483000c 	lhu	v1,12(a0)
     82c:	24050001 	li	a1,1
     830:	00003025 	move	a2,zero
     834:	28614aab 	slti	at,v1,19115
     838:	10200002 	beqz	at,844 <func_80064824+0x410>
     83c:	246f001e 	addiu	t7,v1,30
     840:	a48f000c 	sh	t7,12(a0)
     844:	90590b13 	lbu	t9,2835(v0)
     848:	3c010000 	lui	at,0x0
     84c:	2404000e 	li	a0,14
     850:	572000d9 	bnezl	t9,bb8 <func_80064824+0x784>
     854:	8fbf002c 	lw	ra,44(sp)
     858:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     85c:	a0200000 	sb	zero,0(at)
     860:	100000d5 	b	bb8 <func_80064824+0x784>
     864:	8fbf002c 	lw	ra,44(sp)
     868:	3c040000 	lui	a0,0x0
     86c:	24840000 	addiu	a0,a0,0
     870:	94980ee0 	lhu	t8,3808(a0)
     874:	370a0020 	ori	t2,t8,0x20
     878:	100000ce 	b	bb4 <func_80064824+0x780>
     87c:	a48a0ee0 	sh	t2,3808(a0)
     880:	3c040000 	lui	a0,0x0
     884:	24840000 	addiu	a0,a0,0
     888:	948b0ee0 	lhu	t3,3808(a0)
     88c:	356c0080 	ori	t4,t3,0x80
     890:	100000c8 	b	bb4 <func_80064824+0x780>
     894:	a48c0ee0 	sh	t4,3808(a0)
     898:	3c040000 	lui	a0,0x0
     89c:	24840000 	addiu	a0,a0,0
     8a0:	948d0ee0 	lhu	t5,3808(a0)
     8a4:	35ae0200 	ori	t6,t5,0x200
     8a8:	100000c2 	b	bb4 <func_80064824+0x780>
     8ac:	a48e0ee0 	sh	t6,3808(a0)
     8b0:	3c020000 	lui	v0,0x0
     8b4:	24420000 	addiu	v0,v0,0
     8b8:	240300ff 	li	v1,255
     8bc:	a0430000 	sb	v1,0(v0)
     8c0:	a0430001 	sb	v1,1(v0)
     8c4:	a0430002 	sb	v1,2(v0)
     8c8:	100000ba 	b	bb4 <func_80064824+0x780>
     8cc:	a0430003 	sb	v1,3(v0)
     8d0:	3c01437f 	lui	at,0x437f
     8d4:	44812000 	mtc1	at,$f4
     8d8:	240a0001 	li	t2,1
     8dc:	3c020000 	lui	v0,0x0
     8e0:	46002182 	mul.s	$f6,$f4,$f0
     8e4:	24420000 	addiu	v0,v0,0
     8e8:	240300ff 	li	v1,255
     8ec:	240f00b4 	li	t7,180
     8f0:	24190064 	li	t9,100
     8f4:	a0430000 	sb	v1,0(v0)
     8f8:	a04f0001 	sb	t7,1(v0)
     8fc:	4458f800 	cfc1	t8,$31
     900:	44caf800 	ctc1	t2,$31
     904:	a0590002 	sb	t9,2(v0)
     908:	3c014f00 	lui	at,0x4f00
     90c:	46003224 	cvt.w.s	$f8,$f6
     910:	444af800 	cfc1	t2,$31
     914:	00000000 	nop
     918:	314a0078 	andi	t2,t2,0x78
     91c:	51400013 	beqzl	t2,96c <func_80064824+0x538>
     920:	440a4000 	mfc1	t2,$f8
     924:	44814000 	mtc1	at,$f8
     928:	240a0001 	li	t2,1
     92c:	46083201 	sub.s	$f8,$f6,$f8
     930:	44caf800 	ctc1	t2,$31
     934:	00000000 	nop
     938:	46004224 	cvt.w.s	$f8,$f8
     93c:	444af800 	cfc1	t2,$31
     940:	00000000 	nop
     944:	314a0078 	andi	t2,t2,0x78
     948:	15400005 	bnez	t2,960 <func_80064824+0x52c>
     94c:	00000000 	nop
     950:	440a4000 	mfc1	t2,$f8
     954:	3c018000 	lui	at,0x8000
     958:	10000007 	b	978 <func_80064824+0x544>
     95c:	01415025 	or	t2,t2,at
     960:	10000005 	b	978 <func_80064824+0x544>
     964:	240affff 	li	t2,-1
     968:	440a4000 	mfc1	t2,$f8
     96c:	00000000 	nop
     970:	0540fffb 	bltz	t2,960 <func_80064824+0x52c>
     974:	00000000 	nop
     978:	44d8f800 	ctc1	t8,$31
     97c:	3c010000 	lui	at,0x0
     980:	1000008c 	b	bb4 <func_80064824+0x780>
     984:	a02a0003 	sb	t2,3(at)
     988:	3c010001 	lui	at,0x1
     98c:	00300821 	addu	at,at,s0
     990:	10000088 	b	bb4 <func_80064824+0x780>
     994:	ac201cc8 	sw	zero,7368(at)
     998:	3c040000 	lui	a0,0x0
     99c:	24840000 	addiu	a0,a0,0
     9a0:	948b000c 	lhu	t3,12(a0)
     9a4:	3401caab 	li	at,0xcaab
     9a8:	340ecaaa 	li	t6,0xcaaa
     9ac:	256c001e 	addiu	t4,t3,30
     9b0:	318dffff 	andi	t5,t4,0xffff
     9b4:	01a1082a 	slt	at,t5,at
     9b8:	1420007e 	bnez	at,bb4 <func_80064824+0x780>
     9bc:	a48c000c 	sh	t4,12(a0)
     9c0:	1000007c 	b	bb4 <func_80064824+0x780>
     9c4:	a48e000c 	sh	t6,12(a0)
     9c8:	3c040000 	lui	a0,0x0
     9cc:	24840000 	addiu	a0,a0,0
     9d0:	9483000c 	lhu	v1,12(a0)
     9d4:	28613000 	slti	at,v1,12288
     9d8:	14200002 	bnez	at,9e4 <func_80064824+0x5b0>
     9dc:	28614555 	slti	at,v1,17749
     9e0:	14200074 	bnez	at,bb4 <func_80064824+0x780>
     9e4:	28614555 	slti	at,v1,17749
     9e8:	14200008 	bnez	at,a0c <func_80064824+0x5d8>
     9ec:	3401aaab 	li	at,0xaaab
     9f0:	0061082a 	slt	at,v1,at
     9f4:	10200005 	beqz	at,a0c <func_80064824+0x5d8>
     9f8:	24020001 	li	v0,1
     9fc:	3c010001 	lui	at,0x1
     a00:	00300821 	addu	at,at,s0
     a04:	1000006b 	b	bb4 <func_80064824+0x780>
     a08:	a0220ae3 	sb	v0,2787(at)
     a0c:	3401aaab 	li	at,0xaaab
     a10:	0061082a 	slt	at,v1,at
     a14:	14200009 	bnez	at,a3c <func_80064824+0x608>
     a18:	24190003 	li	t9,3
     a1c:	3401c556 	li	at,0xc556
     a20:	0061082a 	slt	at,v1,at
     a24:	10200005 	beqz	at,a3c <func_80064824+0x608>
     a28:	240f0002 	li	t7,2
     a2c:	3c010001 	lui	at,0x1
     a30:	00300821 	addu	at,at,s0
     a34:	1000005f 	b	bb4 <func_80064824+0x780>
     a38:	a02f0ae3 	sb	t7,2787(at)
     a3c:	3c010001 	lui	at,0x1
     a40:	00300821 	addu	at,at,s0
     a44:	1000005b 	b	bb4 <func_80064824+0x780>
     a48:	a0390ae3 	sb	t9,2787(at)
     a4c:	8e18009c 	lw	t8,156(s0)
     a50:	3c010001 	lui	at,0x1
     a54:	02011021 	addu	v0,s0,at
     a58:	330a0008 	andi	t2,t8,0x8
     a5c:	51400010 	beqzl	t2,aa0 <func_80064824+0x66c>
     a60:	84430ab0 	lh	v1,2736(v0)
     a64:	3c010001 	lui	at,0x1
     a68:	02011021 	addu	v0,s0,at
     a6c:	84430ab0 	lh	v1,2736(v0)
     a70:	28610028 	slti	at,v1,40
     a74:	1020004f 	beqz	at,bb4 <func_80064824+0x780>
     a78:	246b0002 	addiu	t3,v1,2
     a7c:	844c0ab8 	lh	t4,2744(v0)
     a80:	844e0aba 	lh	t6,2746(v0)
     a84:	a44b0ab0 	sh	t3,2736(v0)
     a88:	258dfffd 	addiu	t5,t4,-3
     a8c:	25cffffd 	addiu	t7,t6,-3
     a90:	a44d0ab8 	sh	t5,2744(v0)
     a94:	10000047 	b	bb4 <func_80064824+0x780>
     a98:	a44f0aba 	sh	t7,2746(v0)
     a9c:	84430ab0 	lh	v1,2736(v0)
     aa0:	28610003 	slti	at,v1,3
     aa4:	14200043 	bnez	at,bb4 <func_80064824+0x780>
     aa8:	2479fffe 	addiu	t9,v1,-2
     aac:	84580ab8 	lh	t8,2744(v0)
     ab0:	844b0aba 	lh	t3,2746(v0)
     ab4:	a4590ab0 	sh	t9,2736(v0)
     ab8:	270a0003 	addiu	t2,t8,3
     abc:	256c0003 	addiu	t4,t3,3
     ac0:	a44a0ab8 	sh	t2,2744(v0)
     ac4:	1000003b 	b	bb4 <func_80064824+0x780>
     ac8:	a44c0aba 	sh	t4,2746(v0)
     acc:	3c010001 	lui	at,0x1
     ad0:	24020001 	li	v0,1
     ad4:	00300821 	addu	at,at,s0
     ad8:	10000036 	b	bb4 <func_80064824+0x780>
     adc:	a0221de9 	sb	v0,7657(at)
     ae0:	3c010001 	lui	at,0x1
     ae4:	00300821 	addu	at,at,s0
     ae8:	10000032 	b	bb4 <func_80064824+0x780>
     aec:	a0201de9 	sb	zero,7657(at)
     af0:	02002025 	move	a0,s0
     af4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     af8:	24050003 	li	a1,3
     afc:	1000002e 	b	bb8 <func_80064824+0x784>
     b00:	8fbf002c 	lw	ra,44(sp)
     b04:	02002025 	move	a0,s0
     b08:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     b0c:	24050004 	li	a1,4
     b10:	10000029 	b	bb8 <func_80064824+0x784>
     b14:	8fbf002c 	lw	ra,44(sp)
     b18:	10400004 	beqz	v0,b2c <func_80064824+0x6f8>
     b1c:	3c010001 	lui	at,0x1
     b20:	24020001 	li	v0,1
     b24:	00300821 	addu	at,at,s0
     b28:	a0220b0a 	sb	v0,2826(at)
     b2c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     b30:	240420c0 	li	a0,8384
     b34:	10000020 	b	bb8 <func_80064824+0x784>
     b38:	8fbf002c 	lw	ra,44(sp)
     b3c:	3c040000 	lui	a0,0x0
     b40:	24840000 	addiu	a0,a0,0
     b44:	240d0001 	li	t5,1
     b48:	1000001a 	b	bb4 <func_80064824+0x780>
     b4c:	a48d1422 	sh	t5,5154(a0)
     b50:	3c040000 	lui	a0,0x0
     b54:	24840000 	addiu	a0,a0,0
     b58:	8c8e0010 	lw	t6,16(a0)
     b5c:	3c190000 	lui	t9,0x0
     b60:	3c0b0000 	lui	t3,0x0
     b64:	15c00006 	bnez	t6,b80 <func_80064824+0x74c>
     b68:	00000000 	nop
     b6c:	948f000c 	lhu	t7,12(a0)
     b70:	97390000 	lhu	t9,0(t9)
     b74:	01f9c023 	subu	t8,t7,t9
     b78:	1000000e 	b	bb4 <func_80064824+0x780>
     b7c:	a498000c 	sh	t8,12(a0)
     b80:	956b0000 	lhu	t3,0(t3)
     b84:	948a000c 	lhu	t2,12(a0)
     b88:	000b6040 	sll	t4,t3,0x1
     b8c:	014c6823 	subu	t5,t2,t4
     b90:	10000008 	b	bb4 <func_80064824+0x780>
     b94:	a48d000c 	sh	t5,12(a0)
     b98:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     b9c:	00000000 	nop
     ba0:	8fa30050 	lw	v1,80(sp)
     ba4:	8fa4004c 	lw	a0,76(sp)
     ba8:	946e0002 	lhu	t6,2(v1)
     bac:	25cfffff 	addiu	t7,t6,-1
     bb0:	a48f0010 	sh	t7,16(a0)
     bb4:	8fbf002c 	lw	ra,44(sp)
     bb8:	8fb00028 	lw	s0,40(sp)
     bbc:	27bd0048 	addiu	sp,sp,72
     bc0:	03e00008 	jr	ra
     bc4:	00000000 	nop

00000bc8 <Cutscene_Command_SetLighting>:
     bc8:	94ce0002 	lhu	t6,2(a2)
     bcc:	94af0010 	lhu	t7,16(a1)
     bd0:	15cf000b 	bne	t6,t7,c00 <Cutscene_Command_SetLighting+0x38>
     bd4:	00000000 	nop
     bd8:	90d80001 	lbu	t8,1(a2)
     bdc:	3c010001 	lui	at,0x1
     be0:	00240821 	addu	at,at,a0
     be4:	2719ffff 	addiu	t9,t8,-1
     be8:	a0390ae3 	sb	t9,2787(at)
     bec:	3c013f80 	lui	at,0x3f80
     bf0:	44812000 	mtc1	at,$f4
     bf4:	3c010001 	lui	at,0x1
     bf8:	00240821 	addu	at,at,a0
     bfc:	e4240afc 	swc1	$f4,2812(at)
     c00:	03e00008 	jr	ra
     c04:	00000000 	nop

00000c08 <Cutscene_Command_PlayBGM>:
     c08:	27bdffe8 	addiu	sp,sp,-24
     c0c:	afbf0014 	sw	ra,20(sp)
     c10:	afa40018 	sw	a0,24(sp)
     c14:	94af0010 	lhu	t7,16(a1)
     c18:	94ce0002 	lhu	t6,2(a2)
     c1c:	55cf0006 	bnel	t6,t7,c38 <Cutscene_Command_PlayBGM+0x30>
     c20:	8fbf0014 	lw	ra,20(sp)
     c24:	90c40001 	lbu	a0,1(a2)
     c28:	2484ffff 	addiu	a0,a0,-1
     c2c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     c30:	3084ffff 	andi	a0,a0,0xffff
     c34:	8fbf0014 	lw	ra,20(sp)
     c38:	27bd0018 	addiu	sp,sp,24
     c3c:	03e00008 	jr	ra
     c40:	00000000 	nop

00000c44 <Cutscene_Command_StopBGM>:
     c44:	27bdffe8 	addiu	sp,sp,-24
     c48:	afbf0014 	sw	ra,20(sp)
     c4c:	afa40018 	sw	a0,24(sp)
     c50:	94af0010 	lhu	t7,16(a1)
     c54:	94ce0002 	lhu	t6,2(a2)
     c58:	55cf0006 	bnel	t6,t7,c74 <Cutscene_Command_StopBGM+0x30>
     c5c:	8fbf0014 	lw	ra,20(sp)
     c60:	90c40001 	lbu	a0,1(a2)
     c64:	2484ffff 	addiu	a0,a0,-1
     c68:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     c6c:	3084ffff 	andi	a0,a0,0xffff
     c70:	8fbf0014 	lw	ra,20(sp)
     c74:	27bd0018 	addiu	sp,sp,24
     c78:	03e00008 	jr	ra
     c7c:	00000000 	nop

00000c80 <Cutscene_Command_FadeBGM>:
     c80:	27bdffe8 	addiu	sp,sp,-24
     c84:	afbf0014 	sw	ra,20(sp)
     c88:	afa40018 	sw	a0,24(sp)
     c8c:	94a30010 	lhu	v1,16(a1)
     c90:	94c20002 	lhu	v0,2(a2)
     c94:	54430017 	bnel	v0,v1,cf4 <Cutscene_Command_FadeBGM+0x74>
     c98:	8fbf0014 	lw	ra,20(sp)
     c9c:	94c40004 	lhu	a0,4(a2)
     ca0:	0064082a 	slt	at,v1,a0
     ca4:	50200013 	beqzl	at,cf4 <Cutscene_Command_FadeBGM+0x74>
     ca8:	8fbf0014 	lw	ra,20(sp)
     cac:	94ce0000 	lhu	t6,0(a2)
     cb0:	00821823 	subu	v1,a0,v0
     cb4:	24010003 	li	at,3
     cb8:	15c10008 	bne	t6,at,cdc <Cutscene_Command_FadeBGM+0x5c>
     cbc:	306300ff 	andi	v1,v1,0xff
     cc0:	3c011100 	lui	at,0x1100
     cc4:	342100ff 	ori	at,at,0xff
     cc8:	00032400 	sll	a0,v1,0x10
     ccc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     cd0:	00812025 	or	a0,a0,at
     cd4:	10000007 	b	cf4 <Cutscene_Command_FadeBGM+0x74>
     cd8:	8fbf0014 	lw	ra,20(sp)
     cdc:	3c011000 	lui	at,0x1000
     ce0:	342100ff 	ori	at,at,0xff
     ce4:	00032400 	sll	a0,v1,0x10
     ce8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     cec:	00812025 	or	a0,a0,at
     cf0:	8fbf0014 	lw	ra,20(sp)
     cf4:	27bd0018 	addiu	sp,sp,24
     cf8:	03e00008 	jr	ra
     cfc:	00000000 	nop

00000d00 <Cutscene_Command_09>:
     d00:	27bdffe8 	addiu	sp,sp,-24
     d04:	afbf0014 	sw	ra,20(sp)
     d08:	afa40018 	sw	a0,24(sp)
     d0c:	94af0010 	lhu	t7,16(a1)
     d10:	94ce0002 	lhu	t6,2(a2)
     d14:	00c02025 	move	a0,a2
     d18:	55cf0007 	bnel	t6,t7,d38 <Cutscene_Command_09+0x38>
     d1c:	8fbf0014 	lw	ra,20(sp)
     d20:	44806000 	mtc1	zero,$f12
     d24:	90c50006 	lbu	a1,6(a2)
     d28:	90c60007 	lbu	a2,7(a2)
     d2c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     d30:	90870008 	lbu	a3,8(a0)
     d34:	8fbf0014 	lw	ra,20(sp)
     d38:	27bd0018 	addiu	sp,sp,24
     d3c:	03e00008 	jr	ra
     d40:	00000000 	nop

00000d44 <func_80065134>:
     d44:	afa40000 	sw	a0,0(sp)
     d48:	94af0010 	lhu	t7,16(a1)
     d4c:	94ce0002 	lhu	t6,2(a2)
     d50:	3c050000 	lui	a1,0x0
     d54:	15cf0022 	bne	t6,t7,de0 <func_80065134+0x9c>
     d58:	00000000 	nop
     d5c:	90d80006 	lbu	t8,6(a2)
     d60:	3c013cb4 	lui	at,0x3cb4
     d64:	44810000 	mtc1	at,$f0
     d68:	44982000 	mtc1	t8,$f4
     d6c:	24a50000 	addiu	a1,a1,0
     d70:	07010005 	bgez	t8,d88 <func_80065134+0x44>
     d74:	468021a0 	cvt.s.w	$f6,$f4
     d78:	3c014f80 	lui	at,0x4f80
     d7c:	44814000 	mtc1	at,$f8
     d80:	00000000 	nop
     d84:	46083180 	add.s	$f6,$f6,$f8
     d88:	90c80007 	lbu	t0,7(a2)
     d8c:	3c014270 	lui	at,0x4270
     d90:	44815000 	mtc1	at,$f10
     d94:	25090001 	addiu	t1,t0,1
     d98:	44894000 	mtc1	t1,$f8
     d9c:	460a3402 	mul.s	$f16,$f6,$f10
     da0:	468041a0 	cvt.s.w	$f6,$f8
     da4:	46008483 	div.s	$f18,$f16,$f0
     da8:	46003283 	div.s	$f10,$f6,$f0
     dac:	4600910d 	trunc.w.s	$f4,$f18
     db0:	44022000 	mfc1	v0,$f4
     db4:	00000000 	nop
     db8:	00021400 	sll	v0,v0,0x10
     dbc:	00021403 	sra	v0,v0,0x10
     dc0:	4600540d 	trunc.w.s	$f16,$f10
     dc4:	44038000 	mfc1	v1,$f16
     dc8:	00000000 	nop
     dcc:	00031c00 	sll	v1,v1,0x10
     dd0:	00031c03 	sra	v1,v1,0x10
     dd4:	00432021 	addu	a0,v0,v1
     dd8:	a4a4000c 	sh	a0,12(a1)
     ddc:	a4a4141a 	sh	a0,5146(a1)
     de0:	03e00008 	jr	ra
     de4:	00000000 	nop

00000de8 <Cutscene_Command_Terminator>:
     de8:	27bdffd0 	addiu	sp,sp,-48
     dec:	3c030000 	lui	v1,0x0
     df0:	24630000 	addiu	v1,v1,0
     df4:	8c62135c 	lw	v0,4956(v1)
     df8:	afbf0024 	sw	ra,36(sp)
     dfc:	afb00020 	sw	s0,32(sp)
     e00:	afa50034 	sw	a1,52(sp)
     e04:	afa60038 	sw	a2,56(sp)
     e08:	8c8e1c44 	lw	t6,7236(a0)
     e0c:	00808025 	move	s0,a0
     e10:	00003825 	move	a3,zero
     e14:	1040002d 	beqz	v0,ecc <Cutscene_Command_Terminator+0xe4>
     e18:	afae002c 	sw	t6,44(sp)
     e1c:	24010003 	li	at,3
     e20:	5041002b 	beql	v0,at,ed0 <Cutscene_Command_Terminator+0xe8>
     e24:	8fae0034 	lw	t6,52(sp)
     e28:	848f00a4 	lh	t7,164(a0)
     e2c:	24010051 	li	at,81
     e30:	51e10027 	beql	t7,at,ed0 <Cutscene_Command_Terminator+0xe8>
     e34:	8fae0034 	lw	t6,52(sp)
     e38:	94b90010 	lhu	t9,16(a1)
     e3c:	2b210015 	slti	at,t9,21
     e40:	54200023 	bnezl	at,ed0 <Cutscene_Command_Terminator+0xe8>
     e44:	8fae0034 	lw	t6,52(sp)
     e48:	94820020 	lhu	v0,32(a0)
     e4c:	3c01ffff 	lui	at,0xffff
     e50:	34217fff 	ori	at,at,0x7fff
     e54:	00414027 	nor	t0,v0,at
     e58:	11000007 	beqz	t0,e78 <Cutscene_Command_Terminator+0x90>
     e5c:	2401bfff 	li	at,-16385
     e60:	00414827 	nor	t1,v0,at
     e64:	11200004 	beqz	t1,e78 <Cutscene_Command_Terminator+0x90>
     e68:	2401efff 	li	at,-4097
     e6c:	00415027 	nor	t2,v0,at
     e70:	55400017 	bnezl	t2,ed0 <Cutscene_Command_Terminator+0xe8>
     e74:	8fae0034 	lw	t6,52(sp)
     e78:	8c6b1354 	lw	t3,4948(v1)
     e7c:	3401fedc 	li	at,0xfedc
     e80:	3c0c0001 	lui	t4,0x1
     e84:	11610011 	beq	t3,at,ecc <Cutscene_Command_Terminator+0xe4>
     e88:	01906021 	addu	t4,t4,s0
     e8c:	818c1e15 	lb	t4,7701(t4)
     e90:	3c050000 	lui	a1,0x0
     e94:	24a50000 	addiu	a1,a1,0
     e98:	1580000c 	bnez	t4,ecc <Cutscene_Command_Terminator+0xe4>
     e9c:	24044823 	li	a0,18467
     ea0:	3c070000 	lui	a3,0x0
     ea4:	3c0d0000 	lui	t5,0x0
     ea8:	24e70000 	addiu	a3,a3,0
     eac:	25ad0000 	addiu	t5,t5,0
     eb0:	afad0014 	sw	t5,20(sp)
     eb4:	afa70010 	sw	a3,16(sp)
     eb8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     ebc:	24060004 	li	a2,4
     ec0:	3c030000 	lui	v1,0x0
     ec4:	24630000 	addiu	v1,v1,0
     ec8:	24070001 	li	a3,1
     ecc:	8fae0034 	lw	t6,52(sp)
     ed0:	8faf0038 	lw	t7,56(sp)
     ed4:	24060004 	li	a2,4
     ed8:	95c20010 	lhu	v0,16(t6)
     edc:	95f80002 	lhu	t8,2(t7)
     ee0:	8faa0034 	lw	t2,52(sp)
     ee4:	00002025 	move	a0,zero
     ee8:	1302000e 	beq	t8,v0,f24 <Cutscene_Command_Terminator+0x13c>
     eec:	00000000 	nop
     ef0:	14e0000c 	bnez	a3,f24 <Cutscene_Command_Terminator+0x13c>
     ef4:	28410015 	slti	at,v0,21
     ef8:	54200721 	bnezl	at,2b80 <Cutscene_Command_Terminator+0x1d98>
     efc:	8fbf0024 	lw	ra,36(sp)
     f00:	96190020 	lhu	t9,32(s0)
     f04:	2401efff 	li	at,-4097
     f08:	03214027 	nor	t0,t9,at
     f0c:	5500071c 	bnezl	t0,2b80 <Cutscene_Command_Terminator+0x1d98>
     f10:	8fbf0024 	lw	ra,36(sp)
     f14:	8c691354 	lw	t1,4948(v1)
     f18:	3401fedc 	li	at,0xfedc
     f1c:	51210718 	beql	t1,at,2b80 <Cutscene_Command_Terminator+0x1d98>
     f20:	8fbf0024 	lw	ra,36(sp)
     f24:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     f28:	a1460008 	sb	a2,8(t2)
     f2c:	3c030000 	lui	v1,0x0
     f30:	8fac0038 	lw	t4,56(sp)
     f34:	24630000 	addiu	v1,v1,0
     f38:	240b0001 	li	t3,1
     f3c:	a06b1410 	sb	t3,5136(v1)
     f40:	3c040000 	lui	a0,0x0
     f44:	24840050 	addiu	a0,a0,80
     f48:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
     f4c:	95850000 	lhu	a1,0(t4)
     f50:	3c030000 	lui	v1,0x0
     f54:	24630000 	addiu	v1,v1,0
     f58:	8c6d135c 	lw	t5,4956(v1)
     f5c:	24060004 	li	a2,4
     f60:	8fae0038 	lw	t6,56(sp)
     f64:	11a00007 	beqz	t5,f84 <Cutscene_Command_Terminator+0x19c>
     f68:	8fb80034 	lw	t8,52(sp)
     f6c:	95cf0002 	lhu	t7,2(t6)
     f70:	97190010 	lhu	t9,16(t8)
     f74:	24070001 	li	a3,1
     f78:	51f90003 	beql	t7,t9,f88 <Cutscene_Command_Terminator+0x1a0>
     f7c:	8fa80038 	lw	t0,56(sp)
     f80:	a06713e7 	sb	a3,5095(v1)
     f84:	8fa80038 	lw	t0,56(sp)
     f88:	ac600008 	sw	zero,8(v1)
     f8c:	24070001 	li	a3,1
     f90:	95090000 	lhu	t1,0(t0)
     f94:	252affff 	addiu	t2,t1,-1
     f98:	2d410077 	sltiu	at,t2,119
     f9c:	102006f7 	beqz	at,2b7c <Cutscene_Command_Terminator+0x1d94>
     fa0:	000a5080 	sll	t2,t2,0x2
     fa4:	3c010000 	lui	at,0x0
     fa8:	002a0821 	addu	at,at,t2
     fac:	8c2a0148 	lw	t2,328(at)
     fb0:	01400008 	jr	t2
     fb4:	00000000 	nop
     fb8:	3c010001 	lui	at,0x1
     fbc:	00300821 	addu	at,at,s0
     fc0:	240b00a0 	li	t3,160
     fc4:	a42b1e1a 	sh	t3,7706(at)
     fc8:	340cfff1 	li	t4,0xfff1
     fcc:	3c010001 	lui	at,0x1
     fd0:	ac6c0008 	sw	t4,8(v1)
     fd4:	00300821 	addu	at,at,s0
     fd8:	240d0014 	li	t5,20
     fdc:	a02d1e15 	sb	t5,7701(at)
     fe0:	3c010001 	lui	at,0x1
     fe4:	24020002 	li	v0,2
     fe8:	00300821 	addu	at,at,s0
     fec:	100006e3 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
     ff0:	a0221e5e 	sb	v0,7774(at)
     ff4:	3c010001 	lui	at,0x1
     ff8:	00300821 	addu	at,at,s0
     ffc:	240e00a0 	li	t6,160
    1000:	a42e1e1a 	sh	t6,7706(at)
    1004:	3418fff0 	li	t8,0xfff0
    1008:	3c010001 	lui	at,0x1
    100c:	ac780008 	sw	t8,8(v1)
    1010:	00300821 	addu	at,at,s0
    1014:	240f0014 	li	t7,20
    1018:	a02f1e15 	sb	t7,7701(at)
    101c:	3c010001 	lui	at,0x1
    1020:	00300821 	addu	at,at,s0
    1024:	2419000a 	li	t9,10
    1028:	100006d4 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    102c:	a0391e5e 	sb	t9,7774(at)
    1030:	3c010001 	lui	at,0x1
    1034:	00300821 	addu	at,at,s0
    1038:	24080117 	li	t0,279
    103c:	a4281e1a 	sh	t0,7706(at)
    1040:	3409fff1 	li	t1,0xfff1
    1044:	3c010001 	lui	at,0x1
    1048:	ac690008 	sw	t1,8(v1)
    104c:	00300821 	addu	at,at,s0
    1050:	240a0014 	li	t2,20
    1054:	a02a1e15 	sb	t2,7701(at)
    1058:	3c010001 	lui	at,0x1
    105c:	00300821 	addu	at,at,s0
    1060:	240b000a 	li	t3,10
    1064:	100006c5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1068:	a02b1e5e 	sb	t3,7774(at)
    106c:	3c010001 	lui	at,0x1
    1070:	00300821 	addu	at,at,s0
    1074:	240c013d 	li	t4,317
    1078:	a42c1e1a 	sh	t4,7706(at)
    107c:	340dfff0 	li	t5,0xfff0
    1080:	3c010001 	lui	at,0x1
    1084:	ac6d0008 	sw	t5,8(v1)
    1088:	00300821 	addu	at,at,s0
    108c:	240e0014 	li	t6,20
    1090:	a02e1e15 	sb	t6,7701(at)
    1094:	3c010001 	lui	at,0x1
    1098:	00300821 	addu	at,at,s0
    109c:	2418000a 	li	t8,10
    10a0:	100006b6 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    10a4:	a0381e5e 	sb	t8,7774(at)
    10a8:	3c010001 	lui	at,0x1
    10ac:	00300821 	addu	at,at,s0
    10b0:	240f00ee 	li	t7,238
    10b4:	a42f1e1a 	sh	t7,7706(at)
    10b8:	3419fff0 	li	t9,0xfff0
    10bc:	3c010001 	lui	at,0x1
    10c0:	ac790008 	sw	t9,8(v1)
    10c4:	00300821 	addu	at,at,s0
    10c8:	24080014 	li	t0,20
    10cc:	a0281e15 	sb	t0,7701(at)
    10d0:	3c010001 	lui	at,0x1
    10d4:	00300821 	addu	at,at,s0
    10d8:	2409000a 	li	t1,10
    10dc:	100006a7 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    10e0:	a0291e5e 	sb	t1,7774(at)
    10e4:	3c010001 	lui	at,0x1
    10e8:	00300821 	addu	at,at,s0
    10ec:	240a00a0 	li	t2,160
    10f0:	a42a1e1a 	sh	t2,7706(at)
    10f4:	340bfff2 	li	t3,0xfff2
    10f8:	3c010001 	lui	at,0x1
    10fc:	ac6b0008 	sw	t3,8(v1)
    1100:	00300821 	addu	at,at,s0
    1104:	240c0014 	li	t4,20
    1108:	a02c1e15 	sb	t4,7701(at)
    110c:	3c010001 	lui	at,0x1
    1110:	00300821 	addu	at,at,s0
    1114:	240d000a 	li	t5,10
    1118:	10000698 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    111c:	a02d1e5e 	sb	t5,7774(at)
    1120:	3c010001 	lui	at,0x1
    1124:	00300821 	addu	at,at,s0
    1128:	240e00ee 	li	t6,238
    112c:	a42e1e1a 	sh	t6,7706(at)
    1130:	3418fff2 	li	t8,0xfff2
    1134:	3c010001 	lui	at,0x1
    1138:	ac780008 	sw	t8,8(v1)
    113c:	00300821 	addu	at,at,s0
    1140:	240f0014 	li	t7,20
    1144:	a02f1e15 	sb	t7,7701(at)
    1148:	3c010001 	lui	at,0x1
    114c:	00300821 	addu	at,at,s0
    1150:	2419000b 	li	t9,11
    1154:	10000689 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1158:	a0391e5e 	sb	t9,7774(at)
    115c:	94620edc 	lhu	v0,3804(v1)
    1160:	ac600e80 	sw	zero,3712(v1)
    1164:	a06013b3 	sb	zero,5043(v1)
    1168:	30480020 	andi	t0,v0,0x20
    116c:	15000012 	bnez	t0,11b8 <Cutscene_Command_Terminator+0x3d0>
    1170:	24060003 	li	a2,3
    1174:	34490020 	ori	t1,v0,0x20
    1178:	3c010001 	lui	at,0x1
    117c:	a4690edc 	sh	t1,3804(v1)
    1180:	00300821 	addu	at,at,s0
    1184:	240a00a0 	li	t2,160
    1188:	a42a1e1a 	sh	t2,7706(at)
    118c:	3c010001 	lui	at,0x1
    1190:	00300821 	addu	at,at,s0
    1194:	240b0014 	li	t3,20
    1198:	a02b1e15 	sb	t3,7701(at)
    119c:	340cfff3 	li	t4,0xfff3
    11a0:	3c010001 	lui	at,0x1
    11a4:	ac6c0008 	sw	t4,8(v1)
    11a8:	00300821 	addu	at,at,s0
    11ac:	240d000b 	li	t5,11
    11b0:	10000672 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    11b4:	a02d1e5e 	sb	t5,7774(at)
    11b8:	8c6e1360 	lw	t6,4960(v1)
    11bc:	240f02ca 	li	t7,714
    11c0:	24190014 	li	t9,20
    11c4:	29c10004 	slti	at,t6,4
    11c8:	5020000c 	beqzl	at,11fc <Cutscene_Command_Terminator+0x414>
    11cc:	3c010001 	lui	at,0x1
    11d0:	8c780004 	lw	t8,4(v1)
    11d4:	3c010001 	lui	at,0x1
    11d8:	00300821 	addu	at,at,s0
    11dc:	53000006 	beqzl	t8,11f8 <Cutscene_Command_Terminator+0x410>
    11e0:	a0271de8 	sb	a3,7656(at)
    11e4:	3c010001 	lui	at,0x1
    11e8:	00300821 	addu	at,at,s0
    11ec:	10000002 	b	11f8 <Cutscene_Command_Terminator+0x410>
    11f0:	a0201de8 	sb	zero,7656(at)
    11f4:	a0271de8 	sb	a3,7656(at)
    11f8:	3c010001 	lui	at,0x1
    11fc:	00300821 	addu	at,at,s0
    1200:	a42f1e1a 	sh	t7,7706(at)
    1204:	3c010001 	lui	at,0x1
    1208:	00300821 	addu	at,at,s0
    120c:	a0391e15 	sb	t9,7701(at)
    1210:	3c010001 	lui	at,0x1
    1214:	00300821 	addu	at,at,s0
    1218:	a0261e5e 	sb	a2,7774(at)
    121c:	10000657 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1220:	a066141d 	sb	a2,5149(v1)
    1224:	3c010001 	lui	at,0x1
    1228:	00300821 	addu	at,at,s0
    122c:	24080117 	li	t0,279
    1230:	a4281e1a 	sh	t0,7706(at)
    1234:	3409fff0 	li	t1,0xfff0
    1238:	3c010001 	lui	at,0x1
    123c:	ac690008 	sw	t1,8(v1)
    1240:	00300821 	addu	at,at,s0
    1244:	240a0014 	li	t2,20
    1248:	a02a1e15 	sb	t2,7701(at)
    124c:	3c010001 	lui	at,0x1
    1250:	00300821 	addu	at,at,s0
    1254:	240b000c 	li	t3,12
    1258:	10000648 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    125c:	a02b1e5e 	sb	t3,7774(at)
    1260:	3c010001 	lui	at,0x1
    1264:	00300821 	addu	at,at,s0
    1268:	240c00bb 	li	t4,187
    126c:	a42c1e1a 	sh	t4,7706(at)
    1270:	340dfff0 	li	t5,0xfff0
    1274:	3c010001 	lui	at,0x1
    1278:	ac6d0008 	sw	t5,8(v1)
    127c:	00300821 	addu	at,at,s0
    1280:	240e0014 	li	t6,20
    1284:	a02e1e15 	sb	t6,7701(at)
    1288:	3c010001 	lui	at,0x1
    128c:	24020002 	li	v0,2
    1290:	00300821 	addu	at,at,s0
    1294:	10000639 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1298:	a0221e5e 	sb	v0,7774(at)
    129c:	3c010001 	lui	at,0x1
    12a0:	00300821 	addu	at,at,s0
    12a4:	241800ee 	li	t8,238
    12a8:	a4381e1a 	sh	t8,7706(at)
    12ac:	340ffff3 	li	t7,0xfff3
    12b0:	3c010001 	lui	at,0x1
    12b4:	ac6f0008 	sw	t7,8(v1)
    12b8:	00300821 	addu	at,at,s0
    12bc:	24190014 	li	t9,20
    12c0:	a0391e15 	sb	t9,7701(at)
    12c4:	3c010001 	lui	at,0x1
    12c8:	24060003 	li	a2,3
    12cc:	00300821 	addu	at,at,s0
    12d0:	1000062a 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    12d4:	a0261e5e 	sb	a2,7774(at)
    12d8:	3c010001 	lui	at,0x1
    12dc:	00300821 	addu	at,at,s0
    12e0:	2408047a 	li	t0,1146
    12e4:	a4281e1a 	sh	t0,7706(at)
    12e8:	3c010001 	lui	at,0x1
    12ec:	00300821 	addu	at,at,s0
    12f0:	24090014 	li	t1,20
    12f4:	a0291e15 	sb	t1,7701(at)
    12f8:	3c010001 	lui	at,0x1
    12fc:	24020002 	li	v0,2
    1300:	00300821 	addu	at,at,s0
    1304:	1000061d 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1308:	a0221e5e 	sb	v0,7774(at)
    130c:	3c010001 	lui	at,0x1
    1310:	00300821 	addu	at,at,s0
    1314:	240a010e 	li	t2,270
    1318:	a42a1e1a 	sh	t2,7706(at)
    131c:	3c010001 	lui	at,0x1
    1320:	00300821 	addu	at,at,s0
    1324:	240b0014 	li	t3,20
    1328:	a02b1e15 	sb	t3,7701(at)
    132c:	3c010001 	lui	at,0x1
    1330:	24020002 	li	v0,2
    1334:	00300821 	addu	at,at,s0
    1338:	a0221e5e 	sb	v0,7774(at)
    133c:	1000060f 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1340:	a062141d 	sb	v0,5149(v1)
    1344:	3c010001 	lui	at,0x1
    1348:	00300821 	addu	at,at,s0
    134c:	240c0457 	li	t4,1111
    1350:	a42c1e1a 	sh	t4,7706(at)
    1354:	3c010001 	lui	at,0x1
    1358:	00300821 	addu	at,at,s0
    135c:	240d0014 	li	t5,20
    1360:	a02d1e15 	sb	t5,7701(at)
    1364:	3c010001 	lui	at,0x1
    1368:	24020002 	li	v0,2
    136c:	00300821 	addu	at,at,s0
    1370:	10000602 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1374:	a0221e5e 	sb	v0,7774(at)
    1378:	3c010001 	lui	at,0x1
    137c:	00300821 	addu	at,at,s0
    1380:	240e0053 	li	t6,83
    1384:	a42e1e1a 	sh	t6,7706(at)
    1388:	3c010001 	lui	at,0x1
    138c:	00300821 	addu	at,at,s0
    1390:	24180014 	li	t8,20
    1394:	a0381e15 	sb	t8,7701(at)
    1398:	340ffff4 	li	t7,0xfff4
    139c:	3c010001 	lui	at,0x1
    13a0:	24060003 	li	a2,3
    13a4:	ac6f0008 	sw	t7,8(v1)
    13a8:	00300821 	addu	at,at,s0
    13ac:	100005f3 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    13b0:	a0261e5e 	sb	a2,7774(at)
    13b4:	3c010001 	lui	at,0x1
    13b8:	00300821 	addu	at,at,s0
    13bc:	24190053 	li	t9,83
    13c0:	a4391e1a 	sh	t9,7706(at)
    13c4:	3c010001 	lui	at,0x1
    13c8:	00300821 	addu	at,at,s0
    13cc:	24080014 	li	t0,20
    13d0:	a0281e15 	sb	t0,7701(at)
    13d4:	3409fff5 	li	t1,0xfff5
    13d8:	3c010001 	lui	at,0x1
    13dc:	24060003 	li	a2,3
    13e0:	ac690008 	sw	t1,8(v1)
    13e4:	00300821 	addu	at,at,s0
    13e8:	100005e4 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    13ec:	a0261e5e 	sb	a2,7774(at)
    13f0:	3c010001 	lui	at,0x1
    13f4:	00300821 	addu	at,at,s0
    13f8:	240a0053 	li	t2,83
    13fc:	a42a1e1a 	sh	t2,7706(at)
    1400:	3c010001 	lui	at,0x1
    1404:	00300821 	addu	at,at,s0
    1408:	240b0014 	li	t3,20
    140c:	a02b1e15 	sb	t3,7701(at)
    1410:	340cfff6 	li	t4,0xfff6
    1414:	3c010001 	lui	at,0x1
    1418:	24060003 	li	a2,3
    141c:	ac6c0008 	sw	t4,8(v1)
    1420:	00300821 	addu	at,at,s0
    1424:	100005d5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1428:	a0261e5e 	sb	a2,7774(at)
    142c:	946d0edc 	lhu	t5,3804(v1)
    1430:	3c010001 	lui	at,0x1
    1434:	00300821 	addu	at,at,s0
    1438:	35ae8000 	ori	t6,t5,0x8000
    143c:	a46e0edc 	sh	t6,3804(v1)
    1440:	24180324 	li	t8,804
    1444:	a4381e1a 	sh	t8,7706(at)
    1448:	3c010001 	lui	at,0x1
    144c:	00300821 	addu	at,at,s0
    1450:	240f0014 	li	t7,20
    1454:	a02f1e15 	sb	t7,7701(at)
    1458:	3c010001 	lui	at,0x1
    145c:	24020002 	li	v0,2
    1460:	00300821 	addu	at,at,s0
    1464:	a0221e5e 	sb	v0,7774(at)
    1468:	100005c4 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    146c:	a062141d 	sb	v0,5149(v1)
    1470:	3c010001 	lui	at,0x1
    1474:	00300821 	addu	at,at,s0
    1478:	2419013d 	li	t9,317
    147c:	a4391e1a 	sh	t9,7706(at)
    1480:	3c010001 	lui	at,0x1
    1484:	00300821 	addu	at,at,s0
    1488:	24080014 	li	t0,20
    148c:	a0281e15 	sb	t0,7701(at)
    1490:	3c010001 	lui	at,0x1
    1494:	00300821 	addu	at,at,s0
    1498:	a0261e5e 	sb	a2,7774(at)
    149c:	34098000 	li	t1,0x8000
    14a0:	100005b6 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    14a4:	ac690008 	sw	t1,8(v1)
    14a8:	3c010001 	lui	at,0x1
    14ac:	00300821 	addu	at,at,s0
    14b0:	240a0102 	li	t2,258
    14b4:	a42a1e1a 	sh	t2,7706(at)
    14b8:	3c010001 	lui	at,0x1
    14bc:	00300821 	addu	at,at,s0
    14c0:	240b0014 	li	t3,20
    14c4:	a02b1e15 	sb	t3,7701(at)
    14c8:	340cfff0 	li	t4,0xfff0
    14cc:	3c010001 	lui	at,0x1
    14d0:	24060003 	li	a2,3
    14d4:	ac6c0008 	sw	t4,8(v1)
    14d8:	00300821 	addu	at,at,s0
    14dc:	100005a7 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    14e0:	a0261e5e 	sb	a2,7774(at)
    14e4:	02002025 	move	a0,s0
    14e8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    14ec:	2405005d 	li	a1,93
    14f0:	3c010001 	lui	at,0x1
    14f4:	00300821 	addu	at,at,s0
    14f8:	240d0123 	li	t5,291
    14fc:	a42d1e1a 	sh	t5,7706(at)
    1500:	3c010001 	lui	at,0x1
    1504:	00300821 	addu	at,at,s0
    1508:	240e0014 	li	t6,20
    150c:	3c030000 	lui	v1,0x0
    1510:	a02e1e15 	sb	t6,7701(at)
    1514:	24630000 	addiu	v1,v1,0
    1518:	3418fff0 	li	t8,0xfff0
    151c:	3c010001 	lui	at,0x1
    1520:	24060003 	li	a2,3
    1524:	ac780008 	sw	t8,8(v1)
    1528:	00300821 	addu	at,at,s0
    152c:	10000593 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1530:	a0261e5e 	sb	a2,7774(at)
    1534:	3c010001 	lui	at,0x1
    1538:	00300821 	addu	at,at,s0
    153c:	240f00a0 	li	t7,160
    1540:	a42f1e1a 	sh	t7,7706(at)
    1544:	3c010001 	lui	at,0x1
    1548:	00300821 	addu	at,at,s0
    154c:	24190014 	li	t9,20
    1550:	a0391e15 	sb	t9,7701(at)
    1554:	3408fff8 	li	t0,0xfff8
    1558:	3c010001 	lui	at,0x1
    155c:	24060003 	li	a2,3
    1560:	ac680008 	sw	t0,8(v1)
    1564:	00300821 	addu	at,at,s0
    1568:	10000584 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    156c:	a0261e5e 	sb	a2,7774(at)
    1570:	3c010001 	lui	at,0x1
    1574:	00300821 	addu	at,at,s0
    1578:	24090028 	li	t1,40
    157c:	a4291e1a 	sh	t1,7706(at)
    1580:	3c010001 	lui	at,0x1
    1584:	00300821 	addu	at,at,s0
    1588:	240a0014 	li	t2,20
    158c:	a02a1e15 	sb	t2,7701(at)
    1590:	3c010001 	lui	at,0x1
    1594:	24020002 	li	v0,2
    1598:	00300821 	addu	at,at,s0
    159c:	10000577 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    15a0:	a0221e5e 	sb	v0,7774(at)
    15a4:	3c010001 	lui	at,0x1
    15a8:	00300821 	addu	at,at,s0
    15ac:	a0201de8 	sb	zero,7656(at)
    15b0:	3c010001 	lui	at,0x1
    15b4:	00300821 	addu	at,at,s0
    15b8:	240b006b 	li	t3,107
    15bc:	a42b1e1a 	sh	t3,7706(at)
    15c0:	3c010001 	lui	at,0x1
    15c4:	00300821 	addu	at,at,s0
    15c8:	240c0014 	li	t4,20
    15cc:	a02c1e15 	sb	t4,7701(at)
    15d0:	340dfff0 	li	t5,0xfff0
    15d4:	3c010001 	lui	at,0x1
    15d8:	24060003 	li	a2,3
    15dc:	ac6d0008 	sw	t5,8(v1)
    15e0:	00300821 	addu	at,at,s0
    15e4:	10000565 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    15e8:	a0261e5e 	sb	a2,7774(at)
    15ec:	3c010001 	lui	at,0x1
    15f0:	00300821 	addu	at,at,s0
    15f4:	240e0053 	li	t6,83
    15f8:	a42e1e1a 	sh	t6,7706(at)
    15fc:	3c010001 	lui	at,0x1
    1600:	00300821 	addu	at,at,s0
    1604:	24180014 	li	t8,20
    1608:	a0381e15 	sb	t8,7701(at)
    160c:	340ffff4 	li	t7,0xfff4
    1610:	3c010001 	lui	at,0x1
    1614:	24060003 	li	a2,3
    1618:	ac6f0008 	sw	t7,8(v1)
    161c:	00300821 	addu	at,at,s0
    1620:	10000556 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1624:	a0261e5e 	sb	a2,7774(at)
    1628:	3c010001 	lui	at,0x1
    162c:	00300821 	addu	at,at,s0
    1630:	24190053 	li	t9,83
    1634:	a4391e1a 	sh	t9,7706(at)
    1638:	3c010001 	lui	at,0x1
    163c:	00300821 	addu	at,at,s0
    1640:	24080014 	li	t0,20
    1644:	a0281e15 	sb	t0,7701(at)
    1648:	3409fff5 	li	t1,0xfff5
    164c:	3c010001 	lui	at,0x1
    1650:	24060003 	li	a2,3
    1654:	ac690008 	sw	t1,8(v1)
    1658:	00300821 	addu	at,at,s0
    165c:	10000547 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1660:	a0261e5e 	sb	a2,7774(at)
    1664:	3c010001 	lui	at,0x1
    1668:	00300821 	addu	at,at,s0
    166c:	240a0053 	li	t2,83
    1670:	a42a1e1a 	sh	t2,7706(at)
    1674:	3c010001 	lui	at,0x1
    1678:	00300821 	addu	at,at,s0
    167c:	240b0014 	li	t3,20
    1680:	a02b1e15 	sb	t3,7701(at)
    1684:	340cfff6 	li	t4,0xfff6
    1688:	3c010001 	lui	at,0x1
    168c:	24060003 	li	a2,3
    1690:	ac6c0008 	sw	t4,8(v1)
    1694:	00300821 	addu	at,at,s0
    1698:	10000538 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    169c:	a0261e5e 	sb	a2,7774(at)
    16a0:	3c010001 	lui	at,0x1
    16a4:	00300821 	addu	at,at,s0
    16a8:	240d006b 	li	t5,107
    16ac:	a42d1e1a 	sh	t5,7706(at)
    16b0:	3c010001 	lui	at,0x1
    16b4:	00300821 	addu	at,at,s0
    16b8:	240e0014 	li	t6,20
    16bc:	a02e1e15 	sb	t6,7701(at)
    16c0:	3c010001 	lui	at,0x1
    16c4:	24060003 	li	a2,3
    16c8:	a0601415 	sb	zero,5141(v1)
    16cc:	00300821 	addu	at,at,s0
    16d0:	1000052a 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    16d4:	a0261e5e 	sb	a2,7774(at)
    16d8:	3c010001 	lui	at,0x1
    16dc:	00300821 	addu	at,at,s0
    16e0:	2418006b 	li	t8,107
    16e4:	a4381e1a 	sh	t8,7706(at)
    16e8:	3c010001 	lui	at,0x1
    16ec:	00300821 	addu	at,at,s0
    16f0:	240f0014 	li	t7,20
    16f4:	a02f1e15 	sb	t7,7701(at)
    16f8:	3c010001 	lui	at,0x1
    16fc:	24060003 	li	a2,3
    1700:	00300821 	addu	at,at,s0
    1704:	a0261e5e 	sb	a2,7774(at)
    1708:	02002025 	move	a0,s0
    170c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    1710:	24050067 	li	a1,103
    1714:	3c030000 	lui	v1,0x0
    1718:	24630000 	addiu	v1,v1,0
    171c:	24190001 	li	t9,1
    1720:	10000516 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1724:	a0791415 	sb	t9,5141(v1)
    1728:	3c010001 	lui	at,0x1
    172c:	00300821 	addu	at,at,s0
    1730:	2408006b 	li	t0,107
    1734:	a4281e1a 	sh	t0,7706(at)
    1738:	3c010001 	lui	at,0x1
    173c:	00300821 	addu	at,at,s0
    1740:	24090014 	li	t1,20
    1744:	a0291e15 	sb	t1,7701(at)
    1748:	3c010001 	lui	at,0x1
    174c:	24060003 	li	a2,3
    1750:	00300821 	addu	at,at,s0
    1754:	24020002 	li	v0,2
    1758:	a0261e5e 	sb	a2,7774(at)
    175c:	10000507 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1760:	a0621415 	sb	v0,5141(v1)
    1764:	3c010001 	lui	at,0x1
    1768:	00300821 	addu	at,at,s0
    176c:	a0271de8 	sb	a3,7656(at)
    1770:	3c010001 	lui	at,0x1
    1774:	00300821 	addu	at,at,s0
    1778:	240a00cd 	li	t2,205
    177c:	a42a1e1a 	sh	t2,7706(at)
    1780:	3c010001 	lui	at,0x1
    1784:	00300821 	addu	at,at,s0
    1788:	240b0014 	li	t3,20
    178c:	a02b1e15 	sb	t3,7701(at)
    1790:	340cfff2 	li	t4,0xfff2
    1794:	3c010001 	lui	at,0x1
    1798:	ac6c0008 	sw	t4,8(v1)
    179c:	00300821 	addu	at,at,s0
    17a0:	240d000b 	li	t5,11
    17a4:	100004f5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    17a8:	a02d1e5e 	sb	t5,7774(at)
    17ac:	3c010001 	lui	at,0x1
    17b0:	00300821 	addu	at,at,s0
    17b4:	240e00cd 	li	t6,205
    17b8:	a42e1e1a 	sh	t6,7706(at)
    17bc:	3c010001 	lui	at,0x1
    17c0:	00300821 	addu	at,at,s0
    17c4:	24180014 	li	t8,20
    17c8:	a0381e15 	sb	t8,7701(at)
    17cc:	3c010001 	lui	at,0x1
    17d0:	24060003 	li	a2,3
    17d4:	00300821 	addu	at,at,s0
    17d8:	100004e8 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    17dc:	a0261e5e 	sb	a2,7774(at)
    17e0:	3c010001 	lui	at,0x1
    17e4:	00300821 	addu	at,at,s0
    17e8:	240f00a0 	li	t7,160
    17ec:	a42f1e1a 	sh	t7,7706(at)
    17f0:	3c010001 	lui	at,0x1
    17f4:	00300821 	addu	at,at,s0
    17f8:	24190014 	li	t9,20
    17fc:	a0391e15 	sb	t9,7701(at)
    1800:	3408fff3 	li	t0,0xfff3
    1804:	3c010001 	lui	at,0x1
    1808:	24060003 	li	a2,3
    180c:	ac680008 	sw	t0,8(v1)
    1810:	00300821 	addu	at,at,s0
    1814:	100004d9 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1818:	a0261e5e 	sb	a2,7774(at)
    181c:	3c010001 	lui	at,0x1
    1820:	00300821 	addu	at,at,s0
    1824:	240900cd 	li	t1,205
    1828:	a4291e1a 	sh	t1,7706(at)
    182c:	3c010001 	lui	at,0x1
    1830:	00300821 	addu	at,at,s0
    1834:	240a0014 	li	t2,20
    1838:	a02a1e15 	sb	t2,7701(at)
    183c:	340bfff0 	li	t3,0xfff0
    1840:	3c010001 	lui	at,0x1
    1844:	ac6b0008 	sw	t3,8(v1)
    1848:	00300821 	addu	at,at,s0
    184c:	100004cb 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1850:	a0261e5e 	sb	a2,7774(at)
    1854:	3c010001 	lui	at,0x1
    1858:	00300821 	addu	at,at,s0
    185c:	240c00a0 	li	t4,160
    1860:	a42c1e1a 	sh	t4,7706(at)
    1864:	3c010001 	lui	at,0x1
    1868:	00300821 	addu	at,at,s0
    186c:	240d0014 	li	t5,20
    1870:	a02d1e15 	sb	t5,7701(at)
    1874:	340efff4 	li	t6,0xfff4
    1878:	3c010001 	lui	at,0x1
    187c:	ac6e0008 	sw	t6,8(v1)
    1880:	00300821 	addu	at,at,s0
    1884:	100004bd 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1888:	a0261e5e 	sb	a2,7774(at)
    188c:	3c010001 	lui	at,0x1
    1890:	00300821 	addu	at,at,s0
    1894:	24180053 	li	t8,83
    1898:	a4381e1a 	sh	t8,7706(at)
    189c:	3c010001 	lui	at,0x1
    18a0:	00300821 	addu	at,at,s0
    18a4:	240f0014 	li	t7,20
    18a8:	a02f1e15 	sb	t7,7701(at)
    18ac:	3419fff9 	li	t9,0xfff9
    18b0:	3c010001 	lui	at,0x1
    18b4:	ac790008 	sw	t9,8(v1)
    18b8:	00300821 	addu	at,at,s0
    18bc:	100004af 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    18c0:	a0261e5e 	sb	a2,7774(at)
    18c4:	3c010001 	lui	at,0x1
    18c8:	00300821 	addu	at,at,s0
    18cc:	a0201de8 	sb	zero,7656(at)
    18d0:	3c010001 	lui	at,0x1
    18d4:	00300821 	addu	at,at,s0
    18d8:	24080053 	li	t0,83
    18dc:	a4281e1a 	sh	t0,7706(at)
    18e0:	3c010001 	lui	at,0x1
    18e4:	00300821 	addu	at,at,s0
    18e8:	24090014 	li	t1,20
    18ec:	a0291e15 	sb	t1,7701(at)
    18f0:	340afffa 	li	t2,0xfffa
    18f4:	3c010001 	lui	at,0x1
    18f8:	ac6a0008 	sw	t2,8(v1)
    18fc:	00300821 	addu	at,at,s0
    1900:	1000049e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1904:	a0261e5e 	sb	a2,7774(at)
    1908:	3c010001 	lui	at,0x1
    190c:	00300821 	addu	at,at,s0
    1910:	240b04e6 	li	t3,1254
    1914:	a42b1e1a 	sh	t3,7706(at)
    1918:	3c010001 	lui	at,0x1
    191c:	00300821 	addu	at,at,s0
    1920:	240c0014 	li	t4,20
    1924:	a02c1e15 	sb	t4,7701(at)
    1928:	3c010001 	lui	at,0x1
    192c:	24020002 	li	v0,2
    1930:	00300821 	addu	at,at,s0
    1934:	10000491 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1938:	a0221e5e 	sb	v0,7774(at)
    193c:	3c010001 	lui	at,0x1
    1940:	00300821 	addu	at,at,s0
    1944:	240d00db 	li	t5,219
    1948:	a42d1e1a 	sh	t5,7706(at)
    194c:	3c010001 	lui	at,0x1
    1950:	00300821 	addu	at,at,s0
    1954:	240e0014 	li	t6,20
    1958:	a02e1e15 	sb	t6,7701(at)
    195c:	3418fff2 	li	t8,0xfff2
    1960:	3c010001 	lui	at,0x1
    1964:	ac780008 	sw	t8,8(v1)
    1968:	00300821 	addu	at,at,s0
    196c:	10000483 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1970:	a0261e5e 	sb	a2,7774(at)
    1974:	3c010001 	lui	at,0x1
    1978:	00300821 	addu	at,at,s0
    197c:	240f0503 	li	t7,1283
    1980:	a42f1e1a 	sh	t7,7706(at)
    1984:	3c010001 	lui	at,0x1
    1988:	00300821 	addu	at,at,s0
    198c:	24190014 	li	t9,20
    1990:	a0391e15 	sb	t9,7701(at)
    1994:	3c010001 	lui	at,0x1
    1998:	00300821 	addu	at,at,s0
    199c:	10000477 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    19a0:	a0261e5e 	sb	a2,7774(at)
    19a4:	3c010001 	lui	at,0x1
    19a8:	00300821 	addu	at,at,s0
    19ac:	24080320 	li	t0,800
    19b0:	a4281e1a 	sh	t0,7706(at)
    19b4:	3c010001 	lui	at,0x1
    19b8:	00300821 	addu	at,at,s0
    19bc:	24090014 	li	t1,20
    19c0:	a0291e15 	sb	t1,7701(at)
    19c4:	3c010001 	lui	at,0x1
    19c8:	00300821 	addu	at,at,s0
    19cc:	240a0011 	li	t2,17
    19d0:	1000046a 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    19d4:	a02a1e5e 	sb	t2,7774(at)
    19d8:	946b0edc 	lhu	t3,3804(v1)
    19dc:	3c010001 	lui	at,0x1
    19e0:	00300821 	addu	at,at,s0
    19e4:	356c8000 	ori	t4,t3,0x8000
    19e8:	a46c0edc 	sh	t4,3804(v1)
    19ec:	240d0324 	li	t5,804
    19f0:	a42d1e1a 	sh	t5,7706(at)
    19f4:	3c010001 	lui	at,0x1
    19f8:	00300821 	addu	at,at,s0
    19fc:	240e0014 	li	t6,20
    1a00:	a02e1e15 	sb	t6,7701(at)
    1a04:	3c010001 	lui	at,0x1
    1a08:	00300821 	addu	at,at,s0
    1a0c:	1000045b 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1a10:	a0261e5e 	sb	a2,7774(at)
    1a14:	02002025 	move	a0,s0
    1a18:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    1a1c:	2405005e 	li	a1,94
    1a20:	3c030000 	lui	v1,0x0
    1a24:	24630000 	addiu	v1,v1,0
    1a28:	94780ede 	lhu	t8,3806(v1)
    1a2c:	3c010001 	lui	at,0x1
    1a30:	00300821 	addu	at,at,s0
    1a34:	370f0010 	ori	t7,t8,0x10
    1a38:	a46f0ede 	sh	t7,3806(v1)
    1a3c:	241900db 	li	t9,219
    1a40:	a4391e1a 	sh	t9,7706(at)
    1a44:	3c010001 	lui	at,0x1
    1a48:	00300821 	addu	at,at,s0
    1a4c:	24080014 	li	t0,20
    1a50:	a0281e15 	sb	t0,7701(at)
    1a54:	3409fff1 	li	t1,0xfff1
    1a58:	3c010001 	lui	at,0x1
    1a5c:	24060004 	li	a2,4
    1a60:	ac690008 	sw	t1,8(v1)
    1a64:	00300821 	addu	at,at,s0
    1a68:	10000444 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1a6c:	a0261e5e 	sb	a2,7774(at)
    1a70:	3c010001 	lui	at,0x1
    1a74:	00300821 	addu	at,at,s0
    1a78:	240a01ed 	li	t2,493
    1a7c:	a42a1e1a 	sh	t2,7706(at)
    1a80:	3c010001 	lui	at,0x1
    1a84:	00300821 	addu	at,at,s0
    1a88:	240b0014 	li	t3,20
    1a8c:	a02b1e15 	sb	t3,7701(at)
    1a90:	3c010001 	lui	at,0x1
    1a94:	2402000f 	li	v0,15
    1a98:	00300821 	addu	at,at,s0
    1a9c:	a0221e5e 	sb	v0,7774(at)
    1aa0:	10000436 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1aa4:	a062141d 	sb	v0,5149(v1)
    1aa8:	3c010001 	lui	at,0x1
    1aac:	00300821 	addu	at,at,s0
    1ab0:	240c058c 	li	t4,1420
    1ab4:	a42c1e1a 	sh	t4,7706(at)
    1ab8:	3c010001 	lui	at,0x1
    1abc:	00300821 	addu	at,at,s0
    1ac0:	240d0014 	li	t5,20
    1ac4:	a02d1e15 	sb	t5,7701(at)
    1ac8:	3c010001 	lui	at,0x1
    1acc:	00300821 	addu	at,at,s0
    1ad0:	1000042a 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1ad4:	a0261e5e 	sb	a2,7774(at)
    1ad8:	3c010001 	lui	at,0x1
    1adc:	00300821 	addu	at,at,s0
    1ae0:	240e0513 	li	t6,1299
    1ae4:	a42e1e1a 	sh	t6,7706(at)
    1ae8:	3c010001 	lui	at,0x1
    1aec:	00300821 	addu	at,at,s0
    1af0:	24180014 	li	t8,20
    1af4:	a0381e15 	sb	t8,7701(at)
    1af8:	3c010001 	lui	at,0x1
    1afc:	00300821 	addu	at,at,s0
    1b00:	240f0011 	li	t7,17
    1b04:	1000041d 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1b08:	a02f1e5e 	sb	t7,7774(at)
    1b0c:	3c010001 	lui	at,0x1
    1b10:	00300821 	addu	at,at,s0
    1b14:	241900cd 	li	t9,205
    1b18:	a4391e1a 	sh	t9,7706(at)
    1b1c:	3408fff8 	li	t0,0xfff8
    1b20:	3c010001 	lui	at,0x1
    1b24:	ac680008 	sw	t0,8(v1)
    1b28:	00300821 	addu	at,at,s0
    1b2c:	24090014 	li	t1,20
    1b30:	a0291e15 	sb	t1,7701(at)
    1b34:	3c010001 	lui	at,0x1
    1b38:	00300821 	addu	at,at,s0
    1b3c:	240a0029 	li	t2,41
    1b40:	1000040e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1b44:	a02a1e5e 	sb	t2,7774(at)
    1b48:	3c010001 	lui	at,0x1
    1b4c:	00300821 	addu	at,at,s0
    1b50:	240b0053 	li	t3,83
    1b54:	a42b1e1a 	sh	t3,7706(at)
    1b58:	340cfff7 	li	t4,0xfff7
    1b5c:	3c010001 	lui	at,0x1
    1b60:	ac6c0008 	sw	t4,8(v1)
    1b64:	00300821 	addu	at,at,s0
    1b68:	240d0014 	li	t5,20
    1b6c:	a02d1e15 	sb	t5,7701(at)
    1b70:	3c010001 	lui	at,0x1
    1b74:	00300821 	addu	at,at,s0
    1b78:	240e000b 	li	t6,11
    1b7c:	100003ff 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1b80:	a02e1e5e 	sb	t6,7774(at)
    1b84:	3c010001 	lui	at,0x1
    1b88:	00300821 	addu	at,at,s0
    1b8c:	2418050f 	li	t8,1295
    1b90:	a4381e1a 	sh	t8,7706(at)
    1b94:	3c010001 	lui	at,0x1
    1b98:	00300821 	addu	at,at,s0
    1b9c:	240f0014 	li	t7,20
    1ba0:	a02f1e15 	sb	t7,7701(at)
    1ba4:	3c010001 	lui	at,0x1
    1ba8:	24060003 	li	a2,3
    1bac:	00300821 	addu	at,at,s0
    1bb0:	100003f2 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1bb4:	a0261e5e 	sb	a2,7774(at)
    1bb8:	24190003 	li	t9,3
    1bbc:	ac79135c 	sw	t9,4956(v1)
    1bc0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    1bc4:	2404006f 	li	a0,111
    1bc8:	3c010001 	lui	at,0x1
    1bcc:	00300821 	addu	at,at,s0
    1bd0:	24080001 	li	t0,1
    1bd4:	a0281de8 	sb	t0,7656(at)
    1bd8:	3c010001 	lui	at,0x1
    1bdc:	00300821 	addu	at,at,s0
    1be0:	24090117 	li	t1,279
    1be4:	3c030000 	lui	v1,0x0
    1be8:	a4291e1a 	sh	t1,7706(at)
    1bec:	24630000 	addiu	v1,v1,0
    1bf0:	340afff2 	li	t2,0xfff2
    1bf4:	3c010001 	lui	at,0x1
    1bf8:	ac6a0008 	sw	t2,8(v1)
    1bfc:	00300821 	addu	at,at,s0
    1c00:	240b0014 	li	t3,20
    1c04:	a02b1e15 	sb	t3,7701(at)
    1c08:	3c010001 	lui	at,0x1
    1c0c:	24020002 	li	v0,2
    1c10:	00300821 	addu	at,at,s0
    1c14:	100003d9 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1c18:	a0221e5e 	sb	v0,7774(at)
    1c1c:	3c010001 	lui	at,0x1
    1c20:	00300821 	addu	at,at,s0
    1c24:	240c0129 	li	t4,297
    1c28:	a42c1e1a 	sh	t4,7706(at)
    1c2c:	340dfff1 	li	t5,0xfff1
    1c30:	3c010001 	lui	at,0x1
    1c34:	ac6d0008 	sw	t5,8(v1)
    1c38:	00300821 	addu	at,at,s0
    1c3c:	240e0014 	li	t6,20
    1c40:	a02e1e15 	sb	t6,7701(at)
    1c44:	3c010001 	lui	at,0x1
    1c48:	24020002 	li	v0,2
    1c4c:	00300821 	addu	at,at,s0
    1c50:	100003ca 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1c54:	a0221e5e 	sb	v0,7774(at)
    1c58:	3c010001 	lui	at,0x1
    1c5c:	00300821 	addu	at,at,s0
    1c60:	241800db 	li	t8,219
    1c64:	a4381e1a 	sh	t8,7706(at)
    1c68:	340ffff4 	li	t7,0xfff4
    1c6c:	3c010001 	lui	at,0x1
    1c70:	ac6f0008 	sw	t7,8(v1)
    1c74:	00300821 	addu	at,at,s0
    1c78:	24190014 	li	t9,20
    1c7c:	a0391e15 	sb	t9,7701(at)
    1c80:	3c010001 	lui	at,0x1
    1c84:	24020002 	li	v0,2
    1c88:	00300821 	addu	at,at,s0
    1c8c:	100003bb 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1c90:	a0221e5e 	sb	v0,7774(at)
    1c94:	3c010001 	lui	at,0x1
    1c98:	00300821 	addu	at,at,s0
    1c9c:	2408013d 	li	t0,317
    1ca0:	a4281e1a 	sh	t0,7706(at)
    1ca4:	3409fff3 	li	t1,0xfff3
    1ca8:	3c010001 	lui	at,0x1
    1cac:	ac690008 	sw	t1,8(v1)
    1cb0:	00300821 	addu	at,at,s0
    1cb4:	240a0014 	li	t2,20
    1cb8:	a02a1e15 	sb	t2,7701(at)
    1cbc:	3c010001 	lui	at,0x1
    1cc0:	24020002 	li	v0,2
    1cc4:	00300821 	addu	at,at,s0
    1cc8:	100003ac 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1ccc:	a0221e5e 	sb	v0,7774(at)
    1cd0:	3c010001 	lui	at,0x1
    1cd4:	00300821 	addu	at,at,s0
    1cd8:	240b014d 	li	t3,333
    1cdc:	a42b1e1a 	sh	t3,7706(at)
    1ce0:	340cfff1 	li	t4,0xfff1
    1ce4:	3c010001 	lui	at,0x1
    1ce8:	ac6c0008 	sw	t4,8(v1)
    1cec:	00300821 	addu	at,at,s0
    1cf0:	240d0014 	li	t5,20
    1cf4:	a02d1e15 	sb	t5,7701(at)
    1cf8:	3c010001 	lui	at,0x1
    1cfc:	24020002 	li	v0,2
    1d00:	00300821 	addu	at,at,s0
    1d04:	1000039d 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1d08:	a0221e5e 	sb	v0,7774(at)
    1d0c:	3c010001 	lui	at,0x1
    1d10:	00300821 	addu	at,at,s0
    1d14:	240e0102 	li	t6,258
    1d18:	a42e1e1a 	sh	t6,7706(at)
    1d1c:	3418fff1 	li	t8,0xfff1
    1d20:	3c010001 	lui	at,0x1
    1d24:	ac780008 	sw	t8,8(v1)
    1d28:	00300821 	addu	at,at,s0
    1d2c:	240f0014 	li	t7,20
    1d30:	a02f1e15 	sb	t7,7701(at)
    1d34:	3c010001 	lui	at,0x1
    1d38:	24020002 	li	v0,2
    1d3c:	00300821 	addu	at,at,s0
    1d40:	1000038e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1d44:	a0221e5e 	sb	v0,7774(at)
    1d48:	3c010001 	lui	at,0x1
    1d4c:	00300821 	addu	at,at,s0
    1d50:	2419010e 	li	t9,270
    1d54:	a4391e1a 	sh	t9,7706(at)
    1d58:	3408fff2 	li	t0,0xfff2
    1d5c:	3c010001 	lui	at,0x1
    1d60:	ac680008 	sw	t0,8(v1)
    1d64:	00300821 	addu	at,at,s0
    1d68:	24090014 	li	t1,20
    1d6c:	a0291e15 	sb	t1,7701(at)
    1d70:	3c010001 	lui	at,0x1
    1d74:	24020002 	li	v0,2
    1d78:	00300821 	addu	at,at,s0
    1d7c:	1000037f 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1d80:	a0221e5e 	sb	v0,7774(at)
    1d84:	3c010001 	lui	at,0x1
    1d88:	00300821 	addu	at,at,s0
    1d8c:	240a0108 	li	t2,264
    1d90:	a42a1e1a 	sh	t2,7706(at)
    1d94:	340bfff0 	li	t3,0xfff0
    1d98:	3c010001 	lui	at,0x1
    1d9c:	ac6b0008 	sw	t3,8(v1)
    1da0:	00300821 	addu	at,at,s0
    1da4:	240c0014 	li	t4,20
    1da8:	a02c1e15 	sb	t4,7701(at)
    1dac:	3c010001 	lui	at,0x1
    1db0:	24020002 	li	v0,2
    1db4:	00300821 	addu	at,at,s0
    1db8:	10000370 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1dbc:	a0221e5e 	sb	v0,7774(at)
    1dc0:	3c010001 	lui	at,0x1
    1dc4:	00300821 	addu	at,at,s0
    1dc8:	a0201de8 	sb	zero,7656(at)
    1dcc:	3c010001 	lui	at,0x1
    1dd0:	00300821 	addu	at,at,s0
    1dd4:	240d00ee 	li	t5,238
    1dd8:	a42d1e1a 	sh	t5,7706(at)
    1ddc:	340efff6 	li	t6,0xfff6
    1de0:	3c010001 	lui	at,0x1
    1de4:	ac6e0008 	sw	t6,8(v1)
    1de8:	00300821 	addu	at,at,s0
    1dec:	24180014 	li	t8,20
    1df0:	a0381e15 	sb	t8,7701(at)
    1df4:	3c010001 	lui	at,0x1
    1df8:	24020002 	li	v0,2
    1dfc:	00300821 	addu	at,at,s0
    1e00:	1000035e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1e04:	a0221e5e 	sb	v0,7774(at)
    1e08:	3c010001 	lui	at,0x1
    1e0c:	00300821 	addu	at,at,s0
    1e10:	240f00ee 	li	t7,238
    1e14:	a42f1e1a 	sh	t7,7706(at)
    1e18:	3419fff7 	li	t9,0xfff7
    1e1c:	3c010001 	lui	at,0x1
    1e20:	ac790008 	sw	t9,8(v1)
    1e24:	00300821 	addu	at,at,s0
    1e28:	24080014 	li	t0,20
    1e2c:	a0281e15 	sb	t0,7701(at)
    1e30:	3c010001 	lui	at,0x1
    1e34:	24020002 	li	v0,2
    1e38:	00300821 	addu	at,at,s0
    1e3c:	1000034f 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1e40:	a0221e5e 	sb	v0,7774(at)
    1e44:	3c010001 	lui	at,0x1
    1e48:	00300821 	addu	at,at,s0
    1e4c:	240900cd 	li	t1,205
    1e50:	a4291e1a 	sh	t1,7706(at)
    1e54:	340afff5 	li	t2,0xfff5
    1e58:	3c010001 	lui	at,0x1
    1e5c:	ac6a0008 	sw	t2,8(v1)
    1e60:	00300821 	addu	at,at,s0
    1e64:	240b0014 	li	t3,20
    1e68:	a02b1e15 	sb	t3,7701(at)
    1e6c:	3c010001 	lui	at,0x1
    1e70:	24020002 	li	v0,2
    1e74:	00300821 	addu	at,at,s0
    1e78:	10000340 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1e7c:	a0221e5e 	sb	v0,7774(at)
    1e80:	3c010001 	lui	at,0x1
    1e84:	00300821 	addu	at,at,s0
    1e88:	a0271de8 	sb	a3,7656(at)
    1e8c:	3c010001 	lui	at,0x1
    1e90:	00300821 	addu	at,at,s0
    1e94:	240c0157 	li	t4,343
    1e98:	a42c1e1a 	sh	t4,7706(at)
    1e9c:	340dfff2 	li	t5,0xfff2
    1ea0:	3c010001 	lui	at,0x1
    1ea4:	ac6d0008 	sw	t5,8(v1)
    1ea8:	00300821 	addu	at,at,s0
    1eac:	240e0014 	li	t6,20
    1eb0:	a02e1e15 	sb	t6,7701(at)
    1eb4:	3c010001 	lui	at,0x1
    1eb8:	24020002 	li	v0,2
    1ebc:	00300821 	addu	at,at,s0
    1ec0:	1000032e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1ec4:	a0221e5e 	sb	v0,7774(at)
    1ec8:	3c010001 	lui	at,0x1
    1ecc:	00300821 	addu	at,at,s0
    1ed0:	24180554 	li	t8,1364
    1ed4:	a4381e1a 	sh	t8,7706(at)
    1ed8:	3c010001 	lui	at,0x1
    1edc:	00300821 	addu	at,at,s0
    1ee0:	240f0014 	li	t7,20
    1ee4:	a02f1e15 	sb	t7,7701(at)
    1ee8:	3c010001 	lui	at,0x1
    1eec:	24020002 	li	v0,2
    1ef0:	00300821 	addu	at,at,s0
    1ef4:	10000321 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1ef8:	a0221e5e 	sb	v0,7774(at)
    1efc:	3c010001 	lui	at,0x1
    1f00:	00300821 	addu	at,at,s0
    1f04:	2419027e 	li	t9,638
    1f08:	a4391e1a 	sh	t9,7706(at)
    1f0c:	3c010001 	lui	at,0x1
    1f10:	00300821 	addu	at,at,s0
    1f14:	24080014 	li	t0,20
    1f18:	a0281e15 	sb	t0,7701(at)
    1f1c:	3c010001 	lui	at,0x1
    1f20:	24020002 	li	v0,2
    1f24:	00300821 	addu	at,at,s0
    1f28:	10000314 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1f2c:	a0221e5e 	sb	v0,7774(at)
    1f30:	3c010001 	lui	at,0x1
    1f34:	00300821 	addu	at,at,s0
    1f38:	240900a0 	li	t1,160
    1f3c:	a4291e1a 	sh	t1,7706(at)
    1f40:	3c010001 	lui	at,0x1
    1f44:	00300821 	addu	at,at,s0
    1f48:	240a0014 	li	t2,20
    1f4c:	a02a1e15 	sb	t2,7701(at)
    1f50:	340bfff5 	li	t3,0xfff5
    1f54:	3c010001 	lui	at,0x1
    1f58:	24020002 	li	v0,2
    1f5c:	ac6b0008 	sw	t3,8(v1)
    1f60:	00300821 	addu	at,at,s0
    1f64:	10000305 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1f68:	a0221e5e 	sb	v0,7774(at)
    1f6c:	3c010001 	lui	at,0x1
    1f70:	00300821 	addu	at,at,s0
    1f74:	240c05e8 	li	t4,1512
    1f78:	a42c1e1a 	sh	t4,7706(at)
    1f7c:	3c010001 	lui	at,0x1
    1f80:	00300821 	addu	at,at,s0
    1f84:	240d0014 	li	t5,20
    1f88:	a02d1e15 	sb	t5,7701(at)
    1f8c:	3c010001 	lui	at,0x1
    1f90:	24020002 	li	v0,2
    1f94:	00300821 	addu	at,at,s0
    1f98:	100002f8 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1f9c:	a0221e5e 	sb	v0,7774(at)
    1fa0:	3c010001 	lui	at,0x1
    1fa4:	00300821 	addu	at,at,s0
    1fa8:	240e013d 	li	t6,317
    1fac:	a42e1e1a 	sh	t6,7706(at)
    1fb0:	3c010001 	lui	at,0x1
    1fb4:	00300821 	addu	at,at,s0
    1fb8:	24180014 	li	t8,20
    1fbc:	a0381e15 	sb	t8,7701(at)
    1fc0:	340ffff4 	li	t7,0xfff4
    1fc4:	3c010001 	lui	at,0x1
    1fc8:	24020002 	li	v0,2
    1fcc:	ac6f0008 	sw	t7,8(v1)
    1fd0:	00300821 	addu	at,at,s0
    1fd4:	a0221e5e 	sb	v0,7774(at)
    1fd8:	100002e8 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    1fdc:	a062141d 	sb	v0,5149(v1)
    1fe0:	94790070 	lhu	t9,112(v1)
    1fe4:	02002025 	move	a0,s0
    1fe8:	8fa5002c 	lw	a1,44(sp)
    1fec:	37280100 	ori	t0,t9,0x100
    1ff0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    1ff4:	a4680070 	sh	t0,112(v1)
    1ff8:	3c030000 	lui	v1,0x0
    1ffc:	24630000 	addiu	v1,v1,0
    2000:	94690070 	lhu	t1,112(v1)
    2004:	02002025 	move	a0,s0
    2008:	8fa5002c 	lw	a1,44(sp)
    200c:	352a1000 	ori	t2,t1,0x1000
    2010:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2014:	a46a0070 	sh	t2,112(v1)
    2018:	3c010001 	lui	at,0x1
    201c:	00300821 	addu	at,at,s0
    2020:	240b0001 	li	t3,1
    2024:	a02b1de8 	sb	t3,7656(at)
    2028:	3c010001 	lui	at,0x1
    202c:	00300821 	addu	at,at,s0
    2030:	240c0053 	li	t4,83
    2034:	a42c1e1a 	sh	t4,7706(at)
    2038:	3c010001 	lui	at,0x1
    203c:	00300821 	addu	at,at,s0
    2040:	240d0014 	li	t5,20
    2044:	3c030000 	lui	v1,0x0
    2048:	a02d1e15 	sb	t5,7701(at)
    204c:	24630000 	addiu	v1,v1,0
    2050:	340efff1 	li	t6,0xfff1
    2054:	3c010001 	lui	at,0x1
    2058:	24020002 	li	v0,2
    205c:	ac6e0008 	sw	t6,8(v1)
    2060:	00300821 	addu	at,at,s0
    2064:	100002c5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2068:	a0221e5e 	sb	v0,7774(at)
    206c:	3c010001 	lui	at,0x1
    2070:	00300821 	addu	at,at,s0
    2074:	24180400 	li	t8,1024
    2078:	a4381e1a 	sh	t8,7706(at)
    207c:	3c010001 	lui	at,0x1
    2080:	00300821 	addu	at,at,s0
    2084:	240f0014 	li	t7,20
    2088:	a02f1e15 	sb	t7,7701(at)
    208c:	3419fff0 	li	t9,0xfff0
    2090:	3c010001 	lui	at,0x1
    2094:	24020002 	li	v0,2
    2098:	ac790008 	sw	t9,8(v1)
    209c:	00300821 	addu	at,at,s0
    20a0:	a0221e5e 	sb	v0,7774(at)
    20a4:	100002b5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    20a8:	a062141d 	sb	v0,5149(v1)
    20ac:	3c010001 	lui	at,0x1
    20b0:	00300821 	addu	at,at,s0
    20b4:	a0271de8 	sb	a3,7656(at)
    20b8:	3c010001 	lui	at,0x1
    20bc:	00300821 	addu	at,at,s0
    20c0:	24080157 	li	t0,343
    20c4:	a4281e1a 	sh	t0,7706(at)
    20c8:	3c010001 	lui	at,0x1
    20cc:	00300821 	addu	at,at,s0
    20d0:	24090014 	li	t1,20
    20d4:	a0291e15 	sb	t1,7701(at)
    20d8:	340afff2 	li	t2,0xfff2
    20dc:	3c010001 	lui	at,0x1
    20e0:	24020002 	li	v0,2
    20e4:	ac6a0008 	sw	t2,8(v1)
    20e8:	00300821 	addu	at,at,s0
    20ec:	100002a3 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    20f0:	a0221e5e 	sb	v0,7774(at)
    20f4:	3c010001 	lui	at,0x1
    20f8:	00300821 	addu	at,at,s0
    20fc:	240b0157 	li	t3,343
    2100:	a42b1e1a 	sh	t3,7706(at)
    2104:	3c010001 	lui	at,0x1
    2108:	00300821 	addu	at,at,s0
    210c:	240c0014 	li	t4,20
    2110:	a02c1e15 	sb	t4,7701(at)
    2114:	340dfff3 	li	t5,0xfff3
    2118:	3c010001 	lui	at,0x1
    211c:	24060003 	li	a2,3
    2120:	ac6d0008 	sw	t5,8(v1)
    2124:	00300821 	addu	at,at,s0
    2128:	a0261e5e 	sb	a2,7774(at)
    212c:	10000293 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2130:	a066141d 	sb	a2,5149(v1)
    2134:	3c010001 	lui	at,0x1
    2138:	00300821 	addu	at,at,s0
    213c:	a0271de8 	sb	a3,7656(at)
    2140:	3c010001 	lui	at,0x1
    2144:	00300821 	addu	at,at,s0
    2148:	240e0157 	li	t6,343
    214c:	a42e1e1a 	sh	t6,7706(at)
    2150:	3c010001 	lui	at,0x1
    2154:	00300821 	addu	at,at,s0
    2158:	24180014 	li	t8,20
    215c:	a0381e15 	sb	t8,7701(at)
    2160:	340ffff4 	li	t7,0xfff4
    2164:	3c010001 	lui	at,0x1
    2168:	24020002 	li	v0,2
    216c:	ac6f0008 	sw	t7,8(v1)
    2170:	00300821 	addu	at,at,s0
    2174:	10000281 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2178:	a0221e5e 	sb	v0,7774(at)
    217c:	3c010001 	lui	at,0x1
    2180:	00300821 	addu	at,at,s0
    2184:	a0201de8 	sb	zero,7656(at)
    2188:	3c010001 	lui	at,0x1
    218c:	00300821 	addu	at,at,s0
    2190:	24190157 	li	t9,343
    2194:	a4391e1a 	sh	t9,7706(at)
    2198:	3c010001 	lui	at,0x1
    219c:	00300821 	addu	at,at,s0
    21a0:	24080014 	li	t0,20
    21a4:	a0281e15 	sb	t0,7701(at)
    21a8:	3409fff5 	li	t1,0xfff5
    21ac:	3c010001 	lui	at,0x1
    21b0:	24020002 	li	v0,2
    21b4:	ac690008 	sw	t1,8(v1)
    21b8:	00300821 	addu	at,at,s0
    21bc:	1000026f 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    21c0:	a0221e5e 	sb	v0,7774(at)
    21c4:	3c010001 	lui	at,0x1
    21c8:	00300821 	addu	at,at,s0
    21cc:	a0271de8 	sb	a3,7656(at)
    21d0:	3c010001 	lui	at,0x1
    21d4:	00300821 	addu	at,at,s0
    21d8:	240a0157 	li	t2,343
    21dc:	a42a1e1a 	sh	t2,7706(at)
    21e0:	3c010001 	lui	at,0x1
    21e4:	00300821 	addu	at,at,s0
    21e8:	240b0014 	li	t3,20
    21ec:	a02b1e15 	sb	t3,7701(at)
    21f0:	340cfff6 	li	t4,0xfff6
    21f4:	3c010001 	lui	at,0x1
    21f8:	24020002 	li	v0,2
    21fc:	ac6c0008 	sw	t4,8(v1)
    2200:	00300821 	addu	at,at,s0
    2204:	1000025d 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2208:	a0221e5e 	sb	v0,7774(at)
    220c:	3c010001 	lui	at,0x1
    2210:	00300821 	addu	at,at,s0
    2214:	240d0157 	li	t5,343
    2218:	a42d1e1a 	sh	t5,7706(at)
    221c:	3c010001 	lui	at,0x1
    2220:	00300821 	addu	at,at,s0
    2224:	240e0014 	li	t6,20
    2228:	a02e1e15 	sb	t6,7701(at)
    222c:	3418fff7 	li	t8,0xfff7
    2230:	3c010001 	lui	at,0x1
    2234:	24020002 	li	v0,2
    2238:	ac780008 	sw	t8,8(v1)
    223c:	00300821 	addu	at,at,s0
    2240:	1000024e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2244:	a0221e5e 	sb	v0,7774(at)
    2248:	3c010001 	lui	at,0x1
    224c:	00300821 	addu	at,at,s0
    2250:	240f0157 	li	t7,343
    2254:	a42f1e1a 	sh	t7,7706(at)
    2258:	3c010001 	lui	at,0x1
    225c:	00300821 	addu	at,at,s0
    2260:	24190014 	li	t9,20
    2264:	a0391e15 	sb	t9,7701(at)
    2268:	3c010001 	lui	at,0x1
    226c:	24020002 	li	v0,2
    2270:	00300821 	addu	at,at,s0
    2274:	10000241 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2278:	a0221e5e 	sb	v0,7774(at)
    227c:	3c010001 	lui	at,0x1
    2280:	00300821 	addu	at,at,s0
    2284:	240802ae 	li	t0,686
    2288:	a4281e1a 	sh	t0,7706(at)
    228c:	3c010001 	lui	at,0x1
    2290:	00300821 	addu	at,at,s0
    2294:	24090014 	li	t1,20
    2298:	a0291e15 	sb	t1,7701(at)
    229c:	3c010001 	lui	at,0x1
    22a0:	24060003 	li	a2,3
    22a4:	00300821 	addu	at,at,s0
    22a8:	10000234 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    22ac:	a0261e5e 	sb	a2,7774(at)
    22b0:	94620edc 	lhu	v0,3804(v1)
    22b4:	304a0100 	andi	t2,v0,0x100
    22b8:	11400013 	beqz	t2,2308 <Cutscene_Command_Terminator+0x1520>
    22bc:	304b0200 	andi	t3,v0,0x200
    22c0:	11600011 	beqz	t3,2308 <Cutscene_Command_Terminator+0x1520>
    22c4:	304c0400 	andi	t4,v0,0x400
    22c8:	1180000f 	beqz	t4,2308 <Cutscene_Command_Terminator+0x1520>
    22cc:	24020002 	li	v0,2
    22d0:	3c010001 	lui	at,0x1
    22d4:	00300821 	addu	at,at,s0
    22d8:	240d0053 	li	t5,83
    22dc:	a42d1e1a 	sh	t5,7706(at)
    22e0:	3c010001 	lui	at,0x1
    22e4:	00300821 	addu	at,at,s0
    22e8:	240e0014 	li	t6,20
    22ec:	a02e1e15 	sb	t6,7701(at)
    22f0:	3418fff3 	li	t8,0xfff3
    22f4:	3c010001 	lui	at,0x1
    22f8:	ac780008 	sw	t8,8(v1)
    22fc:	00300821 	addu	at,at,s0
    2300:	1000021e 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2304:	a0221e5e 	sb	v0,7774(at)
    2308:	8c621360 	lw	v0,4960(v1)
    230c:	24010008 	li	at,8
    2310:	240f00fc 	li	t7,252
    2314:	10410009 	beq	v0,at,233c <Cutscene_Command_Terminator+0x1554>
    2318:	24190014 	li	t9,20
    231c:	24010009 	li	at,9
    2320:	10410011 	beq	v0,at,2368 <Cutscene_Command_Terminator+0x1580>
    2324:	24080147 	li	t0,327
    2328:	2401000a 	li	at,10
    232c:	1041001a 	beq	v0,at,2398 <Cutscene_Command_Terminator+0x15b0>
    2330:	24060003 	li	a2,3
    2334:	10000212 	b	2b80 <Cutscene_Command_Terminator+0x1d98>
    2338:	8fbf0024 	lw	ra,36(sp)
    233c:	3c010001 	lui	at,0x1
    2340:	00300821 	addu	at,at,s0
    2344:	a42f1e1a 	sh	t7,7706(at)
    2348:	3c010001 	lui	at,0x1
    234c:	00300821 	addu	at,at,s0
    2350:	a0391e15 	sb	t9,7701(at)
    2354:	3c010001 	lui	at,0x1
    2358:	24020002 	li	v0,2
    235c:	00300821 	addu	at,at,s0
    2360:	10000206 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2364:	a0221e5e 	sb	v0,7774(at)
    2368:	3c010001 	lui	at,0x1
    236c:	00300821 	addu	at,at,s0
    2370:	a4281e1a 	sh	t0,7706(at)
    2374:	3c010001 	lui	at,0x1
    2378:	00300821 	addu	at,at,s0
    237c:	24090014 	li	t1,20
    2380:	a0291e15 	sb	t1,7701(at)
    2384:	3c010001 	lui	at,0x1
    2388:	24020002 	li	v0,2
    238c:	00300821 	addu	at,at,s0
    2390:	100001fa 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2394:	a0221e5e 	sb	v0,7774(at)
    2398:	3c010001 	lui	at,0x1
    239c:	00300821 	addu	at,at,s0
    23a0:	240a0102 	li	t2,258
    23a4:	a42a1e1a 	sh	t2,7706(at)
    23a8:	3c010001 	lui	at,0x1
    23ac:	00300821 	addu	at,at,s0
    23b0:	240b0014 	li	t3,20
    23b4:	a02b1e15 	sb	t3,7701(at)
    23b8:	340cfff0 	li	t4,0xfff0
    23bc:	3c010001 	lui	at,0x1
    23c0:	ac6c0008 	sw	t4,8(v1)
    23c4:	00300821 	addu	at,at,s0
    23c8:	100001ec 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    23cc:	a0261e5e 	sb	a2,7774(at)
    23d0:	3c0d0000 	lui	t5,0x0
    23d4:	8dad0010 	lw	t5,16(t5)
    23d8:	8c6e00a4 	lw	t6,164(v1)
    23dc:	24060003 	li	a2,3
    23e0:	240c0610 	li	t4,1552
    23e4:	01aec024 	and	t8,t5,t6
    23e8:	13000010 	beqz	t8,242c <Cutscene_Command_Terminator+0x1644>
    23ec:	3c010001 	lui	at,0x1
    23f0:	3c010001 	lui	at,0x1
    23f4:	00300821 	addu	at,at,s0
    23f8:	240f006b 	li	t7,107
    23fc:	a42f1e1a 	sh	t7,7706(at)
    2400:	3c010001 	lui	at,0x1
    2404:	00300821 	addu	at,at,s0
    2408:	24190014 	li	t9,20
    240c:	a0391e15 	sb	t9,7701(at)
    2410:	3408fff1 	li	t0,0xfff1
    2414:	3c010001 	lui	at,0x1
    2418:	ac680008 	sw	t0,8(v1)
    241c:	00300821 	addu	at,at,s0
    2420:	24090005 	li	t1,5
    2424:	100001d5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2428:	a0291e5e 	sb	t1,7774(at)
    242c:	946a0eec 	lhu	t2,3820(v1)
    2430:	00300821 	addu	at,at,s0
    2434:	240d0014 	li	t5,20
    2438:	354b0100 	ori	t3,t2,0x100
    243c:	a46b0eec 	sh	t3,3820(v1)
    2440:	a42c1e1a 	sh	t4,7706(at)
    2444:	3c010001 	lui	at,0x1
    2448:	00300821 	addu	at,at,s0
    244c:	a02d1e15 	sb	t5,7701(at)
    2450:	3c010001 	lui	at,0x1
    2454:	00300821 	addu	at,at,s0
    2458:	a0261e5e 	sb	a2,7774(at)
    245c:	100001c7 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2460:	a066141d 	sb	a2,5149(v1)
    2464:	3c0e0000 	lui	t6,0x0
    2468:	8dce000c 	lw	t6,12(t6)
    246c:	8c7800a4 	lw	t8,164(v1)
    2470:	24060003 	li	a2,3
    2474:	240b0580 	li	t3,1408
    2478:	01d87824 	and	t7,t6,t8
    247c:	11e00010 	beqz	t7,24c0 <Cutscene_Command_Terminator+0x16d8>
    2480:	3c010001 	lui	at,0x1
    2484:	3c010001 	lui	at,0x1
    2488:	00300821 	addu	at,at,s0
    248c:	2419006b 	li	t9,107
    2490:	a4391e1a 	sh	t9,7706(at)
    2494:	3c010001 	lui	at,0x1
    2498:	00300821 	addu	at,at,s0
    249c:	24080014 	li	t0,20
    24a0:	a0281e15 	sb	t0,7701(at)
    24a4:	3409fff1 	li	t1,0xfff1
    24a8:	3c010001 	lui	at,0x1
    24ac:	ac690008 	sw	t1,8(v1)
    24b0:	00300821 	addu	at,at,s0
    24b4:	240a0005 	li	t2,5
    24b8:	100001b0 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    24bc:	a02a1e5e 	sb	t2,7774(at)
    24c0:	00300821 	addu	at,at,s0
    24c4:	a42b1e1a 	sh	t3,7706(at)
    24c8:	3c010001 	lui	at,0x1
    24cc:	00300821 	addu	at,at,s0
    24d0:	240c0014 	li	t4,20
    24d4:	a02c1e15 	sb	t4,7701(at)
    24d8:	3c010001 	lui	at,0x1
    24dc:	00300821 	addu	at,at,s0
    24e0:	a0261e5e 	sb	a2,7774(at)
    24e4:	100001a5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    24e8:	a066141d 	sb	a2,5149(v1)
    24ec:	3c010001 	lui	at,0x1
    24f0:	00300821 	addu	at,at,s0
    24f4:	240d0564 	li	t5,1380
    24f8:	a42d1e1a 	sh	t5,7706(at)
    24fc:	3c010001 	lui	at,0x1
    2500:	00300821 	addu	at,at,s0
    2504:	240e0014 	li	t6,20
    2508:	a02e1e15 	sb	t6,7701(at)
    250c:	3c010001 	lui	at,0x1
    2510:	24060003 	li	a2,3
    2514:	00300821 	addu	at,at,s0
    2518:	a0261e5e 	sb	a2,7774(at)
    251c:	10000197 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2520:	a066141d 	sb	a2,5149(v1)
    2524:	3c010001 	lui	at,0x1
    2528:	00300821 	addu	at,at,s0
    252c:	24180608 	li	t8,1544
    2530:	a4381e1a 	sh	t8,7706(at)
    2534:	3c010001 	lui	at,0x1
    2538:	00300821 	addu	at,at,s0
    253c:	240f0014 	li	t7,20
    2540:	a02f1e15 	sb	t7,7701(at)
    2544:	3c010001 	lui	at,0x1
    2548:	24020002 	li	v0,2
    254c:	00300821 	addu	at,at,s0
    2550:	a0221e5e 	sb	v0,7774(at)
    2554:	10000189 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2558:	a062141d 	sb	v0,5149(v1)
    255c:	3c010001 	lui	at,0x1
    2560:	00300821 	addu	at,at,s0
    2564:	241900ee 	li	t9,238
    2568:	a4391e1a 	sh	t9,7706(at)
    256c:	3408fff8 	li	t0,0xfff8
    2570:	3c010001 	lui	at,0x1
    2574:	ac680008 	sw	t0,8(v1)
    2578:	00300821 	addu	at,at,s0
    257c:	24090014 	li	t1,20
    2580:	a0291e15 	sb	t1,7701(at)
    2584:	3c010001 	lui	at,0x1
    2588:	24060003 	li	a2,3
    258c:	00300821 	addu	at,at,s0
    2590:	a0261e5e 	sb	a2,7774(at)
    2594:	10000179 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2598:	a066141d 	sb	a2,5149(v1)
    259c:	3c010001 	lui	at,0x1
    25a0:	00300821 	addu	at,at,s0
    25a4:	240a01f5 	li	t2,501
    25a8:	a42a1e1a 	sh	t2,7706(at)
    25ac:	3c010001 	lui	at,0x1
    25b0:	00300821 	addu	at,at,s0
    25b4:	240b0014 	li	t3,20
    25b8:	a02b1e15 	sb	t3,7701(at)
    25bc:	3c010001 	lui	at,0x1
    25c0:	2402000f 	li	v0,15
    25c4:	00300821 	addu	at,at,s0
    25c8:	1000016c 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    25cc:	a0221e5e 	sb	v0,7774(at)
    25d0:	3c010001 	lui	at,0x1
    25d4:	00300821 	addu	at,at,s0
    25d8:	240c0590 	li	t4,1424
    25dc:	a42c1e1a 	sh	t4,7706(at)
    25e0:	3c010001 	lui	at,0x1
    25e4:	00300821 	addu	at,at,s0
    25e8:	240d0014 	li	t5,20
    25ec:	a02d1e15 	sb	t5,7701(at)
    25f0:	3c010001 	lui	at,0x1
    25f4:	24020002 	li	v0,2
    25f8:	00300821 	addu	at,at,s0
    25fc:	1000015f 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2600:	a0221e5e 	sb	v0,7774(at)
    2604:	3c010001 	lui	at,0x1
    2608:	00300821 	addu	at,at,s0
    260c:	240e00cd 	li	t6,205
    2610:	a42e1e1a 	sh	t6,7706(at)
    2614:	3c010001 	lui	at,0x1
    2618:	00300821 	addu	at,at,s0
    261c:	24180014 	li	t8,20
    2620:	a0381e15 	sb	t8,7701(at)
    2624:	340ffff3 	li	t7,0xfff3
    2628:	3c010001 	lui	at,0x1
    262c:	24020002 	li	v0,2
    2630:	ac6f0008 	sw	t7,8(v1)
    2634:	00300821 	addu	at,at,s0
    2638:	10000150 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    263c:	a0221e5e 	sb	v0,7774(at)
    2640:	3c040000 	lui	a0,0x0
    2644:	24840000 	addiu	a0,a0,0
    2648:	90820000 	lbu	v0,0(a0)
    264c:	3c010001 	lui	at,0x1
    2650:	00300821 	addu	at,at,s0
    2654:	10400009 	beqz	v0,267c <Cutscene_Command_Terminator+0x1894>
    2658:	2419008d 	li	t9,141
    265c:	24010001 	li	at,1
    2660:	10410015 	beq	v0,at,26b8 <Cutscene_Command_Terminator+0x18d0>
    2664:	240c0147 	li	t4,327
    2668:	24010002 	li	at,2
    266c:	10410023 	beq	v0,at,26fc <Cutscene_Command_Terminator+0x1914>
    2670:	241900a0 	li	t9,160
    2674:	10000142 	b	2b80 <Cutscene_Command_Terminator+0x1d98>
    2678:	8fbf0024 	lw	ra,36(sp)
    267c:	a4391e1a 	sh	t9,7706(at)
    2680:	3c010001 	lui	at,0x1
    2684:	00300821 	addu	at,at,s0
    2688:	24080014 	li	t0,20
    268c:	a0281e15 	sb	t0,7701(at)
    2690:	3409fff2 	li	t1,0xfff2
    2694:	3c010001 	lui	at,0x1
    2698:	24020002 	li	v0,2
    269c:	ac690008 	sw	t1,8(v1)
    26a0:	00300821 	addu	at,at,s0
    26a4:	a0221e5e 	sb	v0,7774(at)
    26a8:	908a0000 	lbu	t2,0(a0)
    26ac:	254b0001 	addiu	t3,t2,1
    26b0:	10000132 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    26b4:	a08b0000 	sb	t3,0(a0)
    26b8:	3c010001 	lui	at,0x1
    26bc:	00300821 	addu	at,at,s0
    26c0:	a42c1e1a 	sh	t4,7706(at)
    26c4:	3c010001 	lui	at,0x1
    26c8:	00300821 	addu	at,at,s0
    26cc:	240d0014 	li	t5,20
    26d0:	a02d1e15 	sb	t5,7701(at)
    26d4:	340efff1 	li	t6,0xfff1
    26d8:	3c010001 	lui	at,0x1
    26dc:	24020002 	li	v0,2
    26e0:	ac6e0008 	sw	t6,8(v1)
    26e4:	00300821 	addu	at,at,s0
    26e8:	a0221e5e 	sb	v0,7774(at)
    26ec:	90980000 	lbu	t8,0(a0)
    26f0:	270f0001 	addiu	t7,t8,1
    26f4:	10000121 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    26f8:	a08f0000 	sb	t7,0(a0)
    26fc:	3c010001 	lui	at,0x1
    2700:	00300821 	addu	at,at,s0
    2704:	a4391e1a 	sh	t9,7706(at)
    2708:	3c010001 	lui	at,0x1
    270c:	00300821 	addu	at,at,s0
    2710:	24080014 	li	t0,20
    2714:	a0281e15 	sb	t0,7701(at)
    2718:	3409fff6 	li	t1,0xfff6
    271c:	3c010001 	lui	at,0x1
    2720:	24020002 	li	v0,2
    2724:	ac690008 	sw	t1,8(v1)
    2728:	00300821 	addu	at,at,s0
    272c:	a0221e5e 	sb	v0,7774(at)
    2730:	10000112 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2734:	a0800000 	sb	zero,0(a0)
    2738:	3c010001 	lui	at,0x1
    273c:	00300821 	addu	at,at,s0
    2740:	240a00e4 	li	t2,228
    2744:	a42a1e1a 	sh	t2,7706(at)
    2748:	3c010001 	lui	at,0x1
    274c:	00300821 	addu	at,at,s0
    2750:	240b0014 	li	t3,20
    2754:	a02b1e15 	sb	t3,7701(at)
    2758:	340cfff1 	li	t4,0xfff1
    275c:	3c010001 	lui	at,0x1
    2760:	24020002 	li	v0,2
    2764:	ac6c0008 	sw	t4,8(v1)
    2768:	00300821 	addu	at,at,s0
    276c:	10000103 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2770:	a0221e5e 	sb	v0,7774(at)
    2774:	3c010001 	lui	at,0x1
    2778:	00300821 	addu	at,at,s0
    277c:	240d0574 	li	t5,1396
    2780:	a42d1e1a 	sh	t5,7706(at)
    2784:	3c010001 	lui	at,0x1
    2788:	00300821 	addu	at,at,s0
    278c:	240e0014 	li	t6,20
    2790:	a02e1e15 	sb	t6,7701(at)
    2794:	3c010001 	lui	at,0x1
    2798:	24020002 	li	v0,2
    279c:	00300821 	addu	at,at,s0
    27a0:	100000f6 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    27a4:	a0221e5e 	sb	v0,7774(at)
    27a8:	3c010001 	lui	at,0x1
    27ac:	00300821 	addu	at,at,s0
    27b0:	24180538 	li	t8,1336
    27b4:	a4381e1a 	sh	t8,7706(at)
    27b8:	3c010001 	lui	at,0x1
    27bc:	00300821 	addu	at,at,s0
    27c0:	240f0014 	li	t7,20
    27c4:	a02f1e15 	sb	t7,7701(at)
    27c8:	3c010001 	lui	at,0x1
    27cc:	24020002 	li	v0,2
    27d0:	00300821 	addu	at,at,s0
    27d4:	100000e9 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    27d8:	a0221e5e 	sb	v0,7774(at)
    27dc:	3c010001 	lui	at,0x1
    27e0:	00300821 	addu	at,at,s0
    27e4:	2419053c 	li	t9,1340
    27e8:	a4391e1a 	sh	t9,7706(at)
    27ec:	3c010001 	lui	at,0x1
    27f0:	00300821 	addu	at,at,s0
    27f4:	24080014 	li	t0,20
    27f8:	a0281e15 	sb	t0,7701(at)
    27fc:	3c010001 	lui	at,0x1
    2800:	24020002 	li	v0,2
    2804:	00300821 	addu	at,at,s0
    2808:	100000dc 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    280c:	a0221e5e 	sb	v0,7774(at)
    2810:	3c010001 	lui	at,0x1
    2814:	00300821 	addu	at,at,s0
    2818:	24090540 	li	t1,1344
    281c:	a4291e1a 	sh	t1,7706(at)
    2820:	3c010001 	lui	at,0x1
    2824:	00300821 	addu	at,at,s0
    2828:	240a0014 	li	t2,20
    282c:	a02a1e15 	sb	t2,7701(at)
    2830:	3c010001 	lui	at,0x1
    2834:	24020002 	li	v0,2
    2838:	00300821 	addu	at,at,s0
    283c:	100000cf 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2840:	a0221e5e 	sb	v0,7774(at)
    2844:	3c010001 	lui	at,0x1
    2848:	00300821 	addu	at,at,s0
    284c:	240b0544 	li	t3,1348
    2850:	a42b1e1a 	sh	t3,7706(at)
    2854:	3c010001 	lui	at,0x1
    2858:	00300821 	addu	at,at,s0
    285c:	240c0014 	li	t4,20
    2860:	a02c1e15 	sb	t4,7701(at)
    2864:	3c010001 	lui	at,0x1
    2868:	24020002 	li	v0,2
    286c:	00300821 	addu	at,at,s0
    2870:	100000c2 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2874:	a0221e5e 	sb	v0,7774(at)
    2878:	3c010001 	lui	at,0x1
    287c:	00300821 	addu	at,at,s0
    2880:	240d0548 	li	t5,1352
    2884:	a42d1e1a 	sh	t5,7706(at)
    2888:	3c010001 	lui	at,0x1
    288c:	00300821 	addu	at,at,s0
    2890:	240e0014 	li	t6,20
    2894:	a02e1e15 	sb	t6,7701(at)
    2898:	3c010001 	lui	at,0x1
    289c:	24020002 	li	v0,2
    28a0:	00300821 	addu	at,at,s0
    28a4:	100000b5 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    28a8:	a0221e5e 	sb	v0,7774(at)
    28ac:	3c010001 	lui	at,0x1
    28b0:	00300821 	addu	at,at,s0
    28b4:	2418054c 	li	t8,1356
    28b8:	a4381e1a 	sh	t8,7706(at)
    28bc:	3c010001 	lui	at,0x1
    28c0:	00300821 	addu	at,at,s0
    28c4:	240f0014 	li	t7,20
    28c8:	a02f1e15 	sb	t7,7701(at)
    28cc:	3c010001 	lui	at,0x1
    28d0:	24020002 	li	v0,2
    28d4:	00300821 	addu	at,at,s0
    28d8:	100000a8 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    28dc:	a0221e5e 	sb	v0,7774(at)
    28e0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    28e4:	240400bb 	li	a0,187
    28e8:	3c030000 	lui	v1,0x0
    28ec:	10400032 	beqz	v0,29b8 <Cutscene_Command_Terminator+0x1bd0>
    28f0:	24630000 	addiu	v1,v1,0
    28f4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    28f8:	240400bc 	li	a0,188
    28fc:	3c030000 	lui	v1,0x0
    2900:	1040002d 	beqz	v0,29b8 <Cutscene_Command_Terminator+0x1bd0>
    2904:	24630000 	addiu	v1,v1,0
    2908:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    290c:	240400bd 	li	a0,189
    2910:	3c030000 	lui	v1,0x0
    2914:	10400028 	beqz	v0,29b8 <Cutscene_Command_Terminator+0x1bd0>
    2918:	24630000 	addiu	v1,v1,0
    291c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2920:	240400be 	li	a0,190
    2924:	3c030000 	lui	v1,0x0
    2928:	10400023 	beqz	v0,29b8 <Cutscene_Command_Terminator+0x1bd0>
    292c:	24630000 	addiu	v1,v1,0
    2930:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2934:	240400bf 	li	a0,191
    2938:	3c030000 	lui	v1,0x0
    293c:	1040001e 	beqz	v0,29b8 <Cutscene_Command_Terminator+0x1bd0>
    2940:	24630000 	addiu	v1,v1,0
    2944:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2948:	240400ad 	li	a0,173
    294c:	3c030000 	lui	v1,0x0
    2950:	10400019 	beqz	v0,29b8 <Cutscene_Command_Terminator+0x1bd0>
    2954:	24630000 	addiu	v1,v1,0
    2958:	3c020000 	lui	v0,0x0
    295c:	24420000 	addiu	v0,v0,0
    2960:	0002c900 	sll	t9,v0,0x4
    2964:	00194702 	srl	t0,t9,0x1c
    2968:	00084880 	sll	t1,t0,0x2
    296c:	3c0a0000 	lui	t2,0x0
    2970:	01495021 	addu	t2,t2,t1
    2974:	3c0100ff 	lui	at,0xff
    2978:	8d4a0000 	lw	t2,0(t2)
    297c:	3421ffff 	ori	at,at,0xffff
    2980:	00415824 	and	t3,v0,at
    2984:	3c018000 	lui	at,0x8000
    2988:	014b6021 	addu	t4,t2,t3
    298c:	01816821 	addu	t5,t4,at
    2990:	ae0d1d68 	sw	t5,7528(s0)
    2994:	a6001d74 	sh	zero,7540(s0)
    2998:	8faf0034 	lw	t7,52(sp)
    299c:	240e0001 	li	t6,1
    29a0:	3418ffff 	li	t8,0xffff
    29a4:	24060003 	li	a2,3
    29a8:	a06e1414 	sb	t6,5140(v1)
    29ac:	ac780008 	sw	t8,8(v1)
    29b0:	10000072 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    29b4:	a1e60008 	sb	a2,8(t7)
    29b8:	8fa80034 	lw	t0,52(sp)
    29bc:	3419ffff 	li	t9,0xffff
    29c0:	24060003 	li	a2,3
    29c4:	ac790008 	sw	t9,8(v1)
    29c8:	1000006c 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    29cc:	a1060008 	sb	a2,8(t0)
    29d0:	3c010001 	lui	at,0x1
    29d4:	00300821 	addu	at,at,s0
    29d8:	24090185 	li	t1,389
    29dc:	a4291e1a 	sh	t1,7706(at)
    29e0:	3c010001 	lui	at,0x1
    29e4:	00300821 	addu	at,at,s0
    29e8:	240a0014 	li	t2,20
    29ec:	a02a1e15 	sb	t2,7701(at)
    29f0:	3c010001 	lui	at,0x1
    29f4:	24020002 	li	v0,2
    29f8:	00300821 	addu	at,at,s0
    29fc:	1000005f 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2a00:	a0221e5e 	sb	v0,7774(at)
    2a04:	3c010001 	lui	at,0x1
    2a08:	00300821 	addu	at,at,s0
    2a0c:	240b0594 	li	t3,1428
    2a10:	a42b1e1a 	sh	t3,7706(at)
    2a14:	3c010001 	lui	at,0x1
    2a18:	00300821 	addu	at,at,s0
    2a1c:	240c0014 	li	t4,20
    2a20:	a02c1e15 	sb	t4,7701(at)
    2a24:	3c010001 	lui	at,0x1
    2a28:	24020002 	li	v0,2
    2a2c:	00300821 	addu	at,at,s0
    2a30:	a0221e5e 	sb	v0,7774(at)
    2a34:	10000051 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2a38:	a062141d 	sb	v0,5149(v1)
    2a3c:	946d0eec 	lhu	t5,3820(v1)
    2a40:	24060003 	li	a2,3
    2a44:	24190610 	li	t9,1552
    2a48:	31ae0100 	andi	t6,t5,0x100
    2a4c:	11c0000e 	beqz	t6,2a88 <Cutscene_Command_Terminator+0x1ca0>
    2a50:	3c010001 	lui	at,0x1
    2a54:	3c010001 	lui	at,0x1
    2a58:	00300821 	addu	at,at,s0
    2a5c:	24180580 	li	t8,1408
    2a60:	a4381e1a 	sh	t8,7706(at)
    2a64:	3c010001 	lui	at,0x1
    2a68:	00300821 	addu	at,at,s0
    2a6c:	240f0014 	li	t7,20
    2a70:	a02f1e15 	sb	t7,7701(at)
    2a74:	3c010001 	lui	at,0x1
    2a78:	24060003 	li	a2,3
    2a7c:	00300821 	addu	at,at,s0
    2a80:	1000000a 	b	2aac <Cutscene_Command_Terminator+0x1cc4>
    2a84:	a0261e5e 	sb	a2,7774(at)
    2a88:	00300821 	addu	at,at,s0
    2a8c:	a4391e1a 	sh	t9,7706(at)
    2a90:	3c010001 	lui	at,0x1
    2a94:	00300821 	addu	at,at,s0
    2a98:	24080014 	li	t0,20
    2a9c:	a0281e15 	sb	t0,7701(at)
    2aa0:	3c010001 	lui	at,0x1
    2aa4:	00300821 	addu	at,at,s0
    2aa8:	a0261e5e 	sb	a2,7774(at)
    2aac:	10000033 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2ab0:	a066141d 	sb	a2,5149(v1)
    2ab4:	24090003 	li	t1,3
    2ab8:	ac69135c 	sw	t1,4956(v1)
    2abc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2ac0:	2404006f 	li	a0,111
    2ac4:	3c010001 	lui	at,0x1
    2ac8:	00300821 	addu	at,at,s0
    2acc:	a0201de8 	sb	zero,7656(at)
    2ad0:	3c010001 	lui	at,0x1
    2ad4:	00300821 	addu	at,at,s0
    2ad8:	240a00cd 	li	t2,205
    2adc:	3c030000 	lui	v1,0x0
    2ae0:	a42a1e1a 	sh	t2,7706(at)
    2ae4:	24630000 	addiu	v1,v1,0
    2ae8:	340bfff7 	li	t3,0xfff7
    2aec:	3c010001 	lui	at,0x1
    2af0:	ac6b0008 	sw	t3,8(v1)
    2af4:	00300821 	addu	at,at,s0
    2af8:	240c0014 	li	t4,20
    2afc:	a02c1e15 	sb	t4,7701(at)
    2b00:	3c010001 	lui	at,0x1
    2b04:	24060003 	li	a2,3
    2b08:	00300821 	addu	at,at,s0
    2b0c:	1000001b 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2b10:	a0261e5e 	sb	a2,7774(at)
    2b14:	240d0517 	li	t5,1303
    2b18:	a46d1378 	sh	t5,4984(v1)
    2b1c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2b20:	02002025 	move	a0,s0
    2b24:	3c030000 	lui	v1,0x0
    2b28:	24630000 	addiu	v1,v1,0
    2b2c:	24020002 	li	v0,2
    2b30:	240efffe 	li	t6,-2
    2b34:	ac6e1364 	sw	t6,4964(v1)
    2b38:	10000010 	b	2b7c <Cutscene_Command_Terminator+0x1d94>
    2b3c:	a062141d 	sb	v0,5149(v1)
    2b40:	34028000 	li	v0,0x8000
    2b44:	3c010001 	lui	at,0x1
    2b48:	a462000c 	sh	v0,12(v1)
    2b4c:	a462141a 	sh	v0,5146(v1)
    2b50:	00300821 	addu	at,at,s0
    2b54:	241805f0 	li	t8,1520
    2b58:	a4381e1a 	sh	t8,7706(at)
    2b5c:	3c010001 	lui	at,0x1
    2b60:	00300821 	addu	at,at,s0
    2b64:	240f0014 	li	t7,20
    2b68:	a02f1e15 	sb	t7,7701(at)
    2b6c:	3c010001 	lui	at,0x1
    2b70:	24060003 	li	a2,3
    2b74:	00300821 	addu	at,at,s0
    2b78:	a0261e5e 	sb	a2,7774(at)
    2b7c:	8fbf0024 	lw	ra,36(sp)
    2b80:	8fb00020 	lw	s0,32(sp)
    2b84:	27bd0030 	addiu	sp,sp,48
    2b88:	03e00008 	jr	ra
    2b8c:	00000000 	nop

00002b90 <Cutscene_Command_TransitionFX>:
    2b90:	27bdffe0 	addiu	sp,sp,-32
    2b94:	afbf001c 	sw	ra,28(sp)
    2b98:	afa40020 	sw	a0,32(sp)
    2b9c:	afa50024 	sw	a1,36(sp)
    2ba0:	94cf0002 	lhu	t7,2(a2)
    2ba4:	94a20010 	lhu	v0,16(a1)
    2ba8:	00c03825 	move	a3,a2
    2bac:	004f082a 	slt	at,v0,t7
    2bb0:	5420026a 	bnezl	at,355c <Cutscene_Command_TransitionFX+0x9cc>
    2bb4:	8fbf001c 	lw	ra,28(sp)
    2bb8:	94d80004 	lhu	t8,4(a2)
    2bbc:	24190001 	li	t9,1
    2bc0:	0302082a 	slt	at,t8,v0
    2bc4:	14200264 	bnez	at,3558 <Cutscene_Command_TransitionFX+0x9c8>
    2bc8:	3c010001 	lui	at,0x1
    2bcc:	00240821 	addu	at,at,a0
    2bd0:	a0390b05 	sb	t9,2821(at)
    2bd4:	8fa90024 	lw	t1,36(sp)
    2bd8:	94c50002 	lhu	a1,2(a2)
    2bdc:	94c40004 	lhu	a0,4(a2)
    2be0:	95260010 	lhu	a2,16(t1)
    2be4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2be8:	afa70028 	sw	a3,40(sp)
    2bec:	8fa70028 	lw	a3,40(sp)
    2bf0:	8fa40020 	lw	a0,32(sp)
    2bf4:	94ea0000 	lhu	t2,0(a3)
    2bf8:	254bffff 	addiu	t3,t2,-1
    2bfc:	2d61000d 	sltiu	at,t3,13
    2c00:	10200255 	beqz	at,3558 <Cutscene_Command_TransitionFX+0x9c8>
    2c04:	000b5880 	sll	t3,t3,0x2
    2c08:	3c010000 	lui	at,0x0
    2c0c:	002b0821 	addu	at,at,t3
    2c10:	8c2b0324 	lw	t3,804(at)
    2c14:	01600008 	jr	t3
    2c18:	00000000 	nop
    2c1c:	3c010001 	lui	at,0x1
    2c20:	240300a0 	li	v1,160
    2c24:	00811021 	addu	v0,a0,at
    2c28:	a0430b06 	sb	v1,2822(v0)
    2c2c:	a0430b07 	sb	v1,2823(v0)
    2c30:	a0430b08 	sb	v1,2824(v0)
    2c34:	94ec0000 	lhu	t4,0(a3)
    2c38:	24010001 	li	at,1
    2c3c:	1581005f 	bne	t4,at,2dbc <Cutscene_Command_TransitionFX+0x22c>
    2c40:	3c01437f 	lui	at,0x437f
    2c44:	44812000 	mtc1	at,$f4
    2c48:	240e0001 	li	t6,1
    2c4c:	44801000 	mtc1	zero,$f2
    2c50:	46002182 	mul.s	$f6,$f4,$f0
    2c54:	3c014f00 	lui	at,0x4f00
    2c58:	3c0f0000 	lui	t7,0x0
    2c5c:	444df800 	cfc1	t5,$31
    2c60:	44cef800 	ctc1	t6,$31
    2c64:	00000000 	nop
    2c68:	46003224 	cvt.w.s	$f8,$f6
    2c6c:	444ef800 	cfc1	t6,$31
    2c70:	00000000 	nop
    2c74:	31ce0078 	andi	t6,t6,0x78
    2c78:	51c00013 	beqzl	t6,2cc8 <Cutscene_Command_TransitionFX+0x138>
    2c7c:	440e4000 	mfc1	t6,$f8
    2c80:	44814000 	mtc1	at,$f8
    2c84:	240e0001 	li	t6,1
    2c88:	46083201 	sub.s	$f8,$f6,$f8
    2c8c:	44cef800 	ctc1	t6,$31
    2c90:	00000000 	nop
    2c94:	46004224 	cvt.w.s	$f8,$f8
    2c98:	444ef800 	cfc1	t6,$31
    2c9c:	00000000 	nop
    2ca0:	31ce0078 	andi	t6,t6,0x78
    2ca4:	15c00005 	bnez	t6,2cbc <Cutscene_Command_TransitionFX+0x12c>
    2ca8:	00000000 	nop
    2cac:	440e4000 	mfc1	t6,$f8
    2cb0:	3c018000 	lui	at,0x8000
    2cb4:	10000007 	b	2cd4 <Cutscene_Command_TransitionFX+0x144>
    2cb8:	01c17025 	or	t6,t6,at
    2cbc:	10000005 	b	2cd4 <Cutscene_Command_TransitionFX+0x144>
    2cc0:	240effff 	li	t6,-1
    2cc4:	440e4000 	mfc1	t6,$f8
    2cc8:	00000000 	nop
    2ccc:	05c0fffb 	bltz	t6,2cbc <Cutscene_Command_TransitionFX+0x12c>
    2cd0:	00000000 	nop
    2cd4:	44cdf800 	ctc1	t5,$31
    2cd8:	a04e0b09 	sb	t6,2825(v0)
    2cdc:	46020032 	c.eq.s	$f0,$f2
    2ce0:	00000000 	nop
    2ce4:	45020012 	bc1fl	2d30 <Cutscene_Command_TransitionFX+0x1a0>
    2ce8:	46020032 	c.eq.s	$f0,$f2
    2cec:	8def0000 	lw	t7,0(t7)
    2cf0:	2401006b 	li	at,107
    2cf4:	3c070000 	lui	a3,0x0
    2cf8:	15e1000c 	bne	t7,at,2d2c <Cutscene_Command_TransitionFX+0x19c>
    2cfc:	24e70000 	addiu	a3,a3,0
    2d00:	3c180000 	lui	t8,0x0
    2d04:	27180000 	addiu	t8,t8,0
    2d08:	3c050000 	lui	a1,0x0
    2d0c:	24a50000 	addiu	a1,a1,0
    2d10:	afb80014 	sw	t8,20(sp)
    2d14:	24044833 	li	a0,18483
    2d18:	24060004 	li	a2,4
    2d1c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2d20:	afa70010 	sw	a3,16(sp)
    2d24:	1000020d 	b	355c <Cutscene_Command_TransitionFX+0x9cc>
    2d28:	8fbf001c 	lw	ra,28(sp)
    2d2c:	46020032 	c.eq.s	$f0,$f2
    2d30:	3c020000 	lui	v0,0x0
    2d34:	45020016 	bc1fl	2d90 <Cutscene_Command_TransitionFX+0x200>
    2d38:	46020032 	c.eq.s	$f0,$f2
    2d3c:	8c420000 	lw	v0,0(v0)
    2d40:	24010053 	li	at,83
    2d44:	3c070000 	lui	a3,0x0
    2d48:	10410005 	beq	v0,at,2d60 <Cutscene_Command_TransitionFX+0x1d0>
    2d4c:	24e70000 	addiu	a3,a3,0
    2d50:	24010138 	li	at,312
    2d54:	10410002 	beq	v0,at,2d60 <Cutscene_Command_TransitionFX+0x1d0>
    2d58:	24010371 	li	at,881
    2d5c:	1441000b 	bne	v0,at,2d8c <Cutscene_Command_TransitionFX+0x1fc>
    2d60:	3c190000 	lui	t9,0x0
    2d64:	27390000 	addiu	t9,t9,0
    2d68:	3c050000 	lui	a1,0x0
    2d6c:	24a50000 	addiu	a1,a1,0
    2d70:	afb90014 	sw	t9,20(sp)
    2d74:	24042846 	li	a0,10310
    2d78:	24060004 	li	a2,4
    2d7c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2d80:	afa70010 	sw	a3,16(sp)
    2d84:	100001f5 	b	355c <Cutscene_Command_TransitionFX+0x9cc>
    2d88:	8fbf001c 	lw	ra,28(sp)
    2d8c:	46020032 	c.eq.s	$f0,$f2
    2d90:	00000000 	nop
    2d94:	450201f1 	bc1fl	355c <Cutscene_Command_TransitionFX+0x9cc>
    2d98:	8fbf001c 	lw	ra,28(sp)
    2d9c:	848800a4 	lh	t0,164(a0)
    2da0:	2401000d 	li	at,13
    2da4:	550101ed 	bnel	t0,at,355c <Cutscene_Command_TransitionFX+0x9cc>
    2da8:	8fbf001c 	lw	ra,28(sp)
    2dac:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    2db0:	24042846 	li	a0,10310
    2db4:	100001e9 	b	355c <Cutscene_Command_TransitionFX+0x9cc>
    2db8:	8fbf001c 	lw	ra,28(sp)
    2dbc:	3c013f80 	lui	at,0x3f80
    2dc0:	44815000 	mtc1	at,$f10
    2dc4:	3c01437f 	lui	at,0x437f
    2dc8:	44819000 	mtc1	at,$f18
    2dcc:	46005401 	sub.s	$f16,$f10,$f0
    2dd0:	240a0001 	li	t2,1
    2dd4:	3c014f00 	lui	at,0x4f00
    2dd8:	46128102 	mul.s	$f4,$f16,$f18
    2ddc:	4449f800 	cfc1	t1,$31
    2de0:	44caf800 	ctc1	t2,$31
    2de4:	00000000 	nop
    2de8:	460021a4 	cvt.w.s	$f6,$f4
    2dec:	444af800 	cfc1	t2,$31
    2df0:	00000000 	nop
    2df4:	314a0078 	andi	t2,t2,0x78
    2df8:	51400013 	beqzl	t2,2e48 <Cutscene_Command_TransitionFX+0x2b8>
    2dfc:	440a3000 	mfc1	t2,$f6
    2e00:	44813000 	mtc1	at,$f6
    2e04:	240a0001 	li	t2,1
    2e08:	46062181 	sub.s	$f6,$f4,$f6
    2e0c:	44caf800 	ctc1	t2,$31
    2e10:	00000000 	nop
    2e14:	460031a4 	cvt.w.s	$f6,$f6
    2e18:	444af800 	cfc1	t2,$31
    2e1c:	00000000 	nop
    2e20:	314a0078 	andi	t2,t2,0x78
    2e24:	15400005 	bnez	t2,2e3c <Cutscene_Command_TransitionFX+0x2ac>
    2e28:	00000000 	nop
    2e2c:	440a3000 	mfc1	t2,$f6
    2e30:	3c018000 	lui	at,0x8000
    2e34:	10000007 	b	2e54 <Cutscene_Command_TransitionFX+0x2c4>
    2e38:	01415025 	or	t2,t2,at
    2e3c:	10000005 	b	2e54 <Cutscene_Command_TransitionFX+0x2c4>
    2e40:	240affff 	li	t2,-1
    2e44:	440a3000 	mfc1	t2,$f6
    2e48:	00000000 	nop
    2e4c:	0540fffb 	bltz	t2,2e3c <Cutscene_Command_TransitionFX+0x2ac>
    2e50:	00000000 	nop
    2e54:	44c9f800 	ctc1	t1,$31
    2e58:	100001bf 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    2e5c:	a04a0b09 	sb	t2,2825(v0)
    2e60:	3c010001 	lui	at,0x1
    2e64:	00811021 	addu	v0,a0,at
    2e68:	240b00ff 	li	t3,255
    2e6c:	a0400b06 	sb	zero,2822(v0)
    2e70:	a0400b07 	sb	zero,2823(v0)
    2e74:	a04b0b08 	sb	t3,2824(v0)
    2e78:	94ec0000 	lhu	t4,0(a3)
    2e7c:	24010002 	li	at,2
    2e80:	15810026 	bne	t4,at,2f1c <Cutscene_Command_TransitionFX+0x38c>
    2e84:	3c01437f 	lui	at,0x437f
    2e88:	44814000 	mtc1	at,$f8
    2e8c:	240e0001 	li	t6,1
    2e90:	3c014f00 	lui	at,0x4f00
    2e94:	46004282 	mul.s	$f10,$f8,$f0
    2e98:	444df800 	cfc1	t5,$31
    2e9c:	44cef800 	ctc1	t6,$31
    2ea0:	00000000 	nop
    2ea4:	46005424 	cvt.w.s	$f16,$f10
    2ea8:	444ef800 	cfc1	t6,$31
    2eac:	00000000 	nop
    2eb0:	31ce0078 	andi	t6,t6,0x78
    2eb4:	51c00013 	beqzl	t6,2f04 <Cutscene_Command_TransitionFX+0x374>
    2eb8:	440e8000 	mfc1	t6,$f16
    2ebc:	44818000 	mtc1	at,$f16
    2ec0:	240e0001 	li	t6,1
    2ec4:	46105401 	sub.s	$f16,$f10,$f16
    2ec8:	44cef800 	ctc1	t6,$31
    2ecc:	00000000 	nop
    2ed0:	46008424 	cvt.w.s	$f16,$f16
    2ed4:	444ef800 	cfc1	t6,$31
    2ed8:	00000000 	nop
    2edc:	31ce0078 	andi	t6,t6,0x78
    2ee0:	15c00005 	bnez	t6,2ef8 <Cutscene_Command_TransitionFX+0x368>
    2ee4:	00000000 	nop
    2ee8:	440e8000 	mfc1	t6,$f16
    2eec:	3c018000 	lui	at,0x8000
    2ef0:	10000007 	b	2f10 <Cutscene_Command_TransitionFX+0x380>
    2ef4:	01c17025 	or	t6,t6,at
    2ef8:	10000005 	b	2f10 <Cutscene_Command_TransitionFX+0x380>
    2efc:	240effff 	li	t6,-1
    2f00:	440e8000 	mfc1	t6,$f16
    2f04:	00000000 	nop
    2f08:	05c0fffb 	bltz	t6,2ef8 <Cutscene_Command_TransitionFX+0x368>
    2f0c:	00000000 	nop
    2f10:	44cdf800 	ctc1	t5,$31
    2f14:	10000190 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    2f18:	a04e0b09 	sb	t6,2825(v0)
    2f1c:	3c013f80 	lui	at,0x3f80
    2f20:	44819000 	mtc1	at,$f18
    2f24:	3c01437f 	lui	at,0x437f
    2f28:	44813000 	mtc1	at,$f6
    2f2c:	46009101 	sub.s	$f4,$f18,$f0
    2f30:	24180001 	li	t8,1
    2f34:	3c014f00 	lui	at,0x4f00
    2f38:	46062202 	mul.s	$f8,$f4,$f6
    2f3c:	444ff800 	cfc1	t7,$31
    2f40:	44d8f800 	ctc1	t8,$31
    2f44:	00000000 	nop
    2f48:	460042a4 	cvt.w.s	$f10,$f8
    2f4c:	4458f800 	cfc1	t8,$31
    2f50:	00000000 	nop
    2f54:	33180078 	andi	t8,t8,0x78
    2f58:	53000013 	beqzl	t8,2fa8 <Cutscene_Command_TransitionFX+0x418>
    2f5c:	44185000 	mfc1	t8,$f10
    2f60:	44815000 	mtc1	at,$f10
    2f64:	24180001 	li	t8,1
    2f68:	460a4281 	sub.s	$f10,$f8,$f10
    2f6c:	44d8f800 	ctc1	t8,$31
    2f70:	00000000 	nop
    2f74:	460052a4 	cvt.w.s	$f10,$f10
    2f78:	4458f800 	cfc1	t8,$31
    2f7c:	00000000 	nop
    2f80:	33180078 	andi	t8,t8,0x78
    2f84:	17000005 	bnez	t8,2f9c <Cutscene_Command_TransitionFX+0x40c>
    2f88:	00000000 	nop
    2f8c:	44185000 	mfc1	t8,$f10
    2f90:	3c018000 	lui	at,0x8000
    2f94:	10000007 	b	2fb4 <Cutscene_Command_TransitionFX+0x424>
    2f98:	0301c025 	or	t8,t8,at
    2f9c:	10000005 	b	2fb4 <Cutscene_Command_TransitionFX+0x424>
    2fa0:	2418ffff 	li	t8,-1
    2fa4:	44185000 	mfc1	t8,$f10
    2fa8:	00000000 	nop
    2fac:	0700fffb 	bltz	t8,2f9c <Cutscene_Command_TransitionFX+0x40c>
    2fb0:	00000000 	nop
    2fb4:	44cff800 	ctc1	t7,$31
    2fb8:	10000167 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    2fbc:	a0580b09 	sb	t8,2825(v0)
    2fc0:	3c010001 	lui	at,0x1
    2fc4:	00811021 	addu	v0,a0,at
    2fc8:	241900ff 	li	t9,255
    2fcc:	a0590b06 	sb	t9,2822(v0)
    2fd0:	a0400b07 	sb	zero,2823(v0)
    2fd4:	a0400b08 	sb	zero,2824(v0)
    2fd8:	94e80000 	lhu	t0,0(a3)
    2fdc:	24010003 	li	at,3
    2fe0:	15010029 	bne	t0,at,3088 <Cutscene_Command_TransitionFX+0x4f8>
    2fe4:	3c013f80 	lui	at,0x3f80
    2fe8:	44818000 	mtc1	at,$f16
    2fec:	3c01437f 	lui	at,0x437f
    2ff0:	44812000 	mtc1	at,$f4
    2ff4:	46008481 	sub.s	$f18,$f16,$f0
    2ff8:	240a0001 	li	t2,1
    2ffc:	3c014f00 	lui	at,0x4f00
    3000:	46049182 	mul.s	$f6,$f18,$f4
    3004:	4449f800 	cfc1	t1,$31
    3008:	44caf800 	ctc1	t2,$31
    300c:	00000000 	nop
    3010:	46003224 	cvt.w.s	$f8,$f6
    3014:	444af800 	cfc1	t2,$31
    3018:	00000000 	nop
    301c:	314a0078 	andi	t2,t2,0x78
    3020:	51400013 	beqzl	t2,3070 <Cutscene_Command_TransitionFX+0x4e0>
    3024:	440a4000 	mfc1	t2,$f8
    3028:	44814000 	mtc1	at,$f8
    302c:	240a0001 	li	t2,1
    3030:	46083201 	sub.s	$f8,$f6,$f8
    3034:	44caf800 	ctc1	t2,$31
    3038:	00000000 	nop
    303c:	46004224 	cvt.w.s	$f8,$f8
    3040:	444af800 	cfc1	t2,$31
    3044:	00000000 	nop
    3048:	314a0078 	andi	t2,t2,0x78
    304c:	15400005 	bnez	t2,3064 <Cutscene_Command_TransitionFX+0x4d4>
    3050:	00000000 	nop
    3054:	440a4000 	mfc1	t2,$f8
    3058:	3c018000 	lui	at,0x8000
    305c:	10000007 	b	307c <Cutscene_Command_TransitionFX+0x4ec>
    3060:	01415025 	or	t2,t2,at
    3064:	10000005 	b	307c <Cutscene_Command_TransitionFX+0x4ec>
    3068:	240affff 	li	t2,-1
    306c:	440a4000 	mfc1	t2,$f8
    3070:	00000000 	nop
    3074:	0540fffb 	bltz	t2,3064 <Cutscene_Command_TransitionFX+0x4d4>
    3078:	00000000 	nop
    307c:	44c9f800 	ctc1	t1,$31
    3080:	10000135 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    3084:	a04a0b09 	sb	t2,2825(v0)
    3088:	3c01437f 	lui	at,0x437f
    308c:	44815000 	mtc1	at,$f10
    3090:	240c0001 	li	t4,1
    3094:	3c014f00 	lui	at,0x4f00
    3098:	46005402 	mul.s	$f16,$f10,$f0
    309c:	444bf800 	cfc1	t3,$31
    30a0:	44ccf800 	ctc1	t4,$31
    30a4:	00000000 	nop
    30a8:	460084a4 	cvt.w.s	$f18,$f16
    30ac:	444cf800 	cfc1	t4,$31
    30b0:	00000000 	nop
    30b4:	318c0078 	andi	t4,t4,0x78
    30b8:	51800013 	beqzl	t4,3108 <Cutscene_Command_TransitionFX+0x578>
    30bc:	440c9000 	mfc1	t4,$f18
    30c0:	44819000 	mtc1	at,$f18
    30c4:	240c0001 	li	t4,1
    30c8:	46128481 	sub.s	$f18,$f16,$f18
    30cc:	44ccf800 	ctc1	t4,$31
    30d0:	00000000 	nop
    30d4:	460094a4 	cvt.w.s	$f18,$f18
    30d8:	444cf800 	cfc1	t4,$31
    30dc:	00000000 	nop
    30e0:	318c0078 	andi	t4,t4,0x78
    30e4:	15800005 	bnez	t4,30fc <Cutscene_Command_TransitionFX+0x56c>
    30e8:	00000000 	nop
    30ec:	440c9000 	mfc1	t4,$f18
    30f0:	3c018000 	lui	at,0x8000
    30f4:	10000007 	b	3114 <Cutscene_Command_TransitionFX+0x584>
    30f8:	01816025 	or	t4,t4,at
    30fc:	10000005 	b	3114 <Cutscene_Command_TransitionFX+0x584>
    3100:	240cffff 	li	t4,-1
    3104:	440c9000 	mfc1	t4,$f18
    3108:	00000000 	nop
    310c:	0580fffb 	bltz	t4,30fc <Cutscene_Command_TransitionFX+0x56c>
    3110:	00000000 	nop
    3114:	44cbf800 	ctc1	t3,$31
    3118:	1000010f 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    311c:	a04c0b09 	sb	t4,2825(v0)
    3120:	3c010001 	lui	at,0x1
    3124:	00811021 	addu	v0,a0,at
    3128:	240d00ff 	li	t5,255
    312c:	a0400b06 	sb	zero,2822(v0)
    3130:	a04d0b07 	sb	t5,2823(v0)
    3134:	a0400b08 	sb	zero,2824(v0)
    3138:	94ee0000 	lhu	t6,0(a3)
    313c:	24010004 	li	at,4
    3140:	15c10029 	bne	t6,at,31e8 <Cutscene_Command_TransitionFX+0x658>
    3144:	3c013f80 	lui	at,0x3f80
    3148:	44812000 	mtc1	at,$f4
    314c:	3c01437f 	lui	at,0x437f
    3150:	44814000 	mtc1	at,$f8
    3154:	46002181 	sub.s	$f6,$f4,$f0
    3158:	24180001 	li	t8,1
    315c:	3c014f00 	lui	at,0x4f00
    3160:	46083282 	mul.s	$f10,$f6,$f8
    3164:	444ff800 	cfc1	t7,$31
    3168:	44d8f800 	ctc1	t8,$31
    316c:	00000000 	nop
    3170:	46005424 	cvt.w.s	$f16,$f10
    3174:	4458f800 	cfc1	t8,$31
    3178:	00000000 	nop
    317c:	33180078 	andi	t8,t8,0x78
    3180:	53000013 	beqzl	t8,31d0 <Cutscene_Command_TransitionFX+0x640>
    3184:	44188000 	mfc1	t8,$f16
    3188:	44818000 	mtc1	at,$f16
    318c:	24180001 	li	t8,1
    3190:	46105401 	sub.s	$f16,$f10,$f16
    3194:	44d8f800 	ctc1	t8,$31
    3198:	00000000 	nop
    319c:	46008424 	cvt.w.s	$f16,$f16
    31a0:	4458f800 	cfc1	t8,$31
    31a4:	00000000 	nop
    31a8:	33180078 	andi	t8,t8,0x78
    31ac:	17000005 	bnez	t8,31c4 <Cutscene_Command_TransitionFX+0x634>
    31b0:	00000000 	nop
    31b4:	44188000 	mfc1	t8,$f16
    31b8:	3c018000 	lui	at,0x8000
    31bc:	10000007 	b	31dc <Cutscene_Command_TransitionFX+0x64c>
    31c0:	0301c025 	or	t8,t8,at
    31c4:	10000005 	b	31dc <Cutscene_Command_TransitionFX+0x64c>
    31c8:	2418ffff 	li	t8,-1
    31cc:	44188000 	mfc1	t8,$f16
    31d0:	00000000 	nop
    31d4:	0700fffb 	bltz	t8,31c4 <Cutscene_Command_TransitionFX+0x634>
    31d8:	00000000 	nop
    31dc:	44cff800 	ctc1	t7,$31
    31e0:	100000dd 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    31e4:	a0580b09 	sb	t8,2825(v0)
    31e8:	3c01437f 	lui	at,0x437f
    31ec:	44819000 	mtc1	at,$f18
    31f0:	24080001 	li	t0,1
    31f4:	3c014f00 	lui	at,0x4f00
    31f8:	46009102 	mul.s	$f4,$f18,$f0
    31fc:	4459f800 	cfc1	t9,$31
    3200:	44c8f800 	ctc1	t0,$31
    3204:	00000000 	nop
    3208:	460021a4 	cvt.w.s	$f6,$f4
    320c:	4448f800 	cfc1	t0,$31
    3210:	00000000 	nop
    3214:	31080078 	andi	t0,t0,0x78
    3218:	51000013 	beqzl	t0,3268 <Cutscene_Command_TransitionFX+0x6d8>
    321c:	44083000 	mfc1	t0,$f6
    3220:	44813000 	mtc1	at,$f6
    3224:	24080001 	li	t0,1
    3228:	46062181 	sub.s	$f6,$f4,$f6
    322c:	44c8f800 	ctc1	t0,$31
    3230:	00000000 	nop
    3234:	460031a4 	cvt.w.s	$f6,$f6
    3238:	4448f800 	cfc1	t0,$31
    323c:	00000000 	nop
    3240:	31080078 	andi	t0,t0,0x78
    3244:	15000005 	bnez	t0,325c <Cutscene_Command_TransitionFX+0x6cc>
    3248:	00000000 	nop
    324c:	44083000 	mfc1	t0,$f6
    3250:	3c018000 	lui	at,0x8000
    3254:	10000007 	b	3274 <Cutscene_Command_TransitionFX+0x6e4>
    3258:	01014025 	or	t0,t0,at
    325c:	10000005 	b	3274 <Cutscene_Command_TransitionFX+0x6e4>
    3260:	2408ffff 	li	t0,-1
    3264:	44083000 	mfc1	t0,$f6
    3268:	00000000 	nop
    326c:	0500fffb 	bltz	t0,325c <Cutscene_Command_TransitionFX+0x6cc>
    3270:	00000000 	nop
    3274:	44d9f800 	ctc1	t9,$31
    3278:	100000b7 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    327c:	a0480b09 	sb	t0,2825(v0)
    3280:	24090001 	li	t1,1
    3284:	3c010000 	lui	at,0x0
    3288:	100000b3 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    328c:	a0291410 	sb	t1,5136(at)
    3290:	3c010001 	lui	at,0x1
    3294:	00811021 	addu	v0,a0,at
    3298:	a0400b06 	sb	zero,2822(v0)
    329c:	a0400b07 	sb	zero,2823(v0)
    32a0:	a0400b08 	sb	zero,2824(v0)
    32a4:	94ea0000 	lhu	t2,0(a3)
    32a8:	2401000a 	li	at,10
    32ac:	15410029 	bne	t2,at,3354 <Cutscene_Command_TransitionFX+0x7c4>
    32b0:	3c013f80 	lui	at,0x3f80
    32b4:	44814000 	mtc1	at,$f8
    32b8:	3c01437f 	lui	at,0x437f
    32bc:	44818000 	mtc1	at,$f16
    32c0:	46004281 	sub.s	$f10,$f8,$f0
    32c4:	240c0001 	li	t4,1
    32c8:	3c014f00 	lui	at,0x4f00
    32cc:	46105482 	mul.s	$f18,$f10,$f16
    32d0:	444bf800 	cfc1	t3,$31
    32d4:	44ccf800 	ctc1	t4,$31
    32d8:	00000000 	nop
    32dc:	46009124 	cvt.w.s	$f4,$f18
    32e0:	444cf800 	cfc1	t4,$31
    32e4:	00000000 	nop
    32e8:	318c0078 	andi	t4,t4,0x78
    32ec:	51800013 	beqzl	t4,333c <Cutscene_Command_TransitionFX+0x7ac>
    32f0:	440c2000 	mfc1	t4,$f4
    32f4:	44812000 	mtc1	at,$f4
    32f8:	240c0001 	li	t4,1
    32fc:	46049101 	sub.s	$f4,$f18,$f4
    3300:	44ccf800 	ctc1	t4,$31
    3304:	00000000 	nop
    3308:	46002124 	cvt.w.s	$f4,$f4
    330c:	444cf800 	cfc1	t4,$31
    3310:	00000000 	nop
    3314:	318c0078 	andi	t4,t4,0x78
    3318:	15800005 	bnez	t4,3330 <Cutscene_Command_TransitionFX+0x7a0>
    331c:	00000000 	nop
    3320:	440c2000 	mfc1	t4,$f4
    3324:	3c018000 	lui	at,0x8000
    3328:	10000007 	b	3348 <Cutscene_Command_TransitionFX+0x7b8>
    332c:	01816025 	or	t4,t4,at
    3330:	10000005 	b	3348 <Cutscene_Command_TransitionFX+0x7b8>
    3334:	240cffff 	li	t4,-1
    3338:	440c2000 	mfc1	t4,$f4
    333c:	00000000 	nop
    3340:	0580fffb 	bltz	t4,3330 <Cutscene_Command_TransitionFX+0x7a0>
    3344:	00000000 	nop
    3348:	44cbf800 	ctc1	t3,$31
    334c:	10000082 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    3350:	a04c0b09 	sb	t4,2825(v0)
    3354:	3c01437f 	lui	at,0x437f
    3358:	44813000 	mtc1	at,$f6
    335c:	240e0001 	li	t6,1
    3360:	3c014f00 	lui	at,0x4f00
    3364:	46003202 	mul.s	$f8,$f6,$f0
    3368:	444df800 	cfc1	t5,$31
    336c:	44cef800 	ctc1	t6,$31
    3370:	00000000 	nop
    3374:	460042a4 	cvt.w.s	$f10,$f8
    3378:	444ef800 	cfc1	t6,$31
    337c:	00000000 	nop
    3380:	31ce0078 	andi	t6,t6,0x78
    3384:	51c00013 	beqzl	t6,33d4 <Cutscene_Command_TransitionFX+0x844>
    3388:	440e5000 	mfc1	t6,$f10
    338c:	44815000 	mtc1	at,$f10
    3390:	240e0001 	li	t6,1
    3394:	460a4281 	sub.s	$f10,$f8,$f10
    3398:	44cef800 	ctc1	t6,$31
    339c:	00000000 	nop
    33a0:	460052a4 	cvt.w.s	$f10,$f10
    33a4:	444ef800 	cfc1	t6,$31
    33a8:	00000000 	nop
    33ac:	31ce0078 	andi	t6,t6,0x78
    33b0:	15c00005 	bnez	t6,33c8 <Cutscene_Command_TransitionFX+0x838>
    33b4:	00000000 	nop
    33b8:	440e5000 	mfc1	t6,$f10
    33bc:	3c018000 	lui	at,0x8000
    33c0:	10000007 	b	33e0 <Cutscene_Command_TransitionFX+0x850>
    33c4:	01c17025 	or	t6,t6,at
    33c8:	10000005 	b	33e0 <Cutscene_Command_TransitionFX+0x850>
    33cc:	240effff 	li	t6,-1
    33d0:	440e5000 	mfc1	t6,$f10
    33d4:	00000000 	nop
    33d8:	05c0fffb 	bltz	t6,33c8 <Cutscene_Command_TransitionFX+0x838>
    33dc:	00000000 	nop
    33e0:	44cdf800 	ctc1	t5,$31
    33e4:	1000005c 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    33e8:	a04e0b09 	sb	t6,2825(v0)
    33ec:	3c01437f 	lui	at,0x437f
    33f0:	44818000 	mtc1	at,$f16
    33f4:	3c01431b 	lui	at,0x431b
    33f8:	44819000 	mtc1	at,$f18
    33fc:	24180001 	li	t8,1
    3400:	3c014f00 	lui	at,0x4f00
    3404:	46009102 	mul.s	$f4,$f18,$f0
    3408:	46048181 	sub.s	$f6,$f16,$f4
    340c:	444ff800 	cfc1	t7,$31
    3410:	44d8f800 	ctc1	t8,$31
    3414:	00000000 	nop
    3418:	46003224 	cvt.w.s	$f8,$f6
    341c:	4458f800 	cfc1	t8,$31
    3420:	00000000 	nop
    3424:	33180078 	andi	t8,t8,0x78
    3428:	53000013 	beqzl	t8,3478 <Cutscene_Command_TransitionFX+0x8e8>
    342c:	44184000 	mfc1	t8,$f8
    3430:	44814000 	mtc1	at,$f8
    3434:	24180001 	li	t8,1
    3438:	46083201 	sub.s	$f8,$f6,$f8
    343c:	44d8f800 	ctc1	t8,$31
    3440:	00000000 	nop
    3444:	46004224 	cvt.w.s	$f8,$f8
    3448:	4458f800 	cfc1	t8,$31
    344c:	00000000 	nop
    3450:	33180078 	andi	t8,t8,0x78
    3454:	17000005 	bnez	t8,346c <Cutscene_Command_TransitionFX+0x8dc>
    3458:	00000000 	nop
    345c:	44184000 	mfc1	t8,$f8
    3460:	3c018000 	lui	at,0x8000
    3464:	10000007 	b	3484 <Cutscene_Command_TransitionFX+0x8f4>
    3468:	0301c025 	or	t8,t8,at
    346c:	10000005 	b	3484 <Cutscene_Command_TransitionFX+0x8f4>
    3470:	2418ffff 	li	t8,-1
    3474:	44184000 	mfc1	t8,$f8
    3478:	00000000 	nop
    347c:	0700fffb 	bltz	t8,346c <Cutscene_Command_TransitionFX+0x8dc>
    3480:	00000000 	nop
    3484:	44cff800 	ctc1	t7,$31
    3488:	3c010000 	lui	at,0x0
    348c:	10000032 	b	3558 <Cutscene_Command_TransitionFX+0x9c8>
    3490:	a0381410 	sb	t8,5136(at)
    3494:	3c010001 	lui	at,0x1
    3498:	00811021 	addu	v0,a0,at
    349c:	3c013f80 	lui	at,0x3f80
    34a0:	44815000 	mtc1	at,$f10
    34a4:	3c01431b 	lui	at,0x431b
    34a8:	44818000 	mtc1	at,$f16
    34ac:	46005481 	sub.s	$f18,$f10,$f0
    34b0:	3c01437f 	lui	at,0x437f
    34b4:	44813000 	mtc1	at,$f6
    34b8:	24080001 	li	t0,1
    34bc:	46109102 	mul.s	$f4,$f18,$f16
    34c0:	a0400b06 	sb	zero,2822(v0)
    34c4:	a0400b07 	sb	zero,2823(v0)
    34c8:	a0400b08 	sb	zero,2824(v0)
    34cc:	3c014f00 	lui	at,0x4f00
    34d0:	46043201 	sub.s	$f8,$f6,$f4
    34d4:	4459f800 	cfc1	t9,$31
    34d8:	44c8f800 	ctc1	t0,$31
    34dc:	00000000 	nop
    34e0:	460042a4 	cvt.w.s	$f10,$f8
    34e4:	4448f800 	cfc1	t0,$31
    34e8:	00000000 	nop
    34ec:	31080078 	andi	t0,t0,0x78
    34f0:	51000013 	beqzl	t0,3540 <Cutscene_Command_TransitionFX+0x9b0>
    34f4:	44085000 	mfc1	t0,$f10
    34f8:	44815000 	mtc1	at,$f10
    34fc:	24080001 	li	t0,1
    3500:	460a4281 	sub.s	$f10,$f8,$f10
    3504:	44c8f800 	ctc1	t0,$31
    3508:	00000000 	nop
    350c:	460052a4 	cvt.w.s	$f10,$f10
    3510:	4448f800 	cfc1	t0,$31
    3514:	00000000 	nop
    3518:	31080078 	andi	t0,t0,0x78
    351c:	15000005 	bnez	t0,3534 <Cutscene_Command_TransitionFX+0x9a4>
    3520:	00000000 	nop
    3524:	44085000 	mfc1	t0,$f10
    3528:	3c018000 	lui	at,0x8000
    352c:	10000007 	b	354c <Cutscene_Command_TransitionFX+0x9bc>
    3530:	01014025 	or	t0,t0,at
    3534:	10000005 	b	354c <Cutscene_Command_TransitionFX+0x9bc>
    3538:	2408ffff 	li	t0,-1
    353c:	44085000 	mfc1	t0,$f10
    3540:	00000000 	nop
    3544:	0500fffb 	bltz	t0,3534 <Cutscene_Command_TransitionFX+0x9a4>
    3548:	00000000 	nop
    354c:	44d9f800 	ctc1	t9,$31
    3550:	a0480b09 	sb	t0,2825(v0)
    3554:	00000000 	nop
    3558:	8fbf001c 	lw	ra,28(sp)
    355c:	27bd0020 	addiu	sp,sp,32
    3560:	03e00008 	jr	ra
    3564:	00000000 	nop

00003568 <Cutscene_Command_CameraPositions>:
    3568:	27bdffd0 	addiu	sp,sp,-48
    356c:	afbf002c 	sw	ra,44(sp)
    3570:	afb30028 	sw	s3,40(sp)
    3574:	afb20024 	sw	s2,36(sp)
    3578:	afb10020 	sw	s1,32(sp)
    357c:	afb0001c 	sw	s0,28(sp)
    3580:	afa40030 	sw	a0,48(sp)
    3584:	afa7003c 	sw	a3,60(sp)
    3588:	94a30010 	lhu	v1,16(a1)
    358c:	94c20002 	lhu	v0,2(a2)
    3590:	00a09825 	move	s3,a1
    3594:	24110001 	li	s1,1
    3598:	0043082a 	slt	at,v0,v1
    359c:	00c04025 	move	t0,a2
    35a0:	24d00008 	addiu	s0,a2,8
    35a4:	10200034 	beqz	at,3678 <Cutscene_Command_CameraPositions+0x110>
    35a8:	24120008 	li	s2,8
    35ac:	94ce0004 	lhu	t6,4(a2)
    35b0:	006e082a 	slt	at,v1,t6
    35b4:	50200031 	beqzl	at,367c <Cutscene_Command_CameraPositions+0x114>
    35b8:	2402ffff 	li	v0,-1
    35bc:	94a30018 	lhu	v1,24(a1)
    35c0:	0062082a 	slt	at,v1,v0
    35c4:	14200004 	bnez	at,35d8 <Cutscene_Command_CameraPositions+0x70>
    35c8:	3401f000 	li	at,0xf000
    35cc:	0061082a 	slt	at,v1,at
    35d0:	5420002a 	bnezl	at,367c <Cutscene_Command_CameraPositions+0x114>
    35d4:	2402ffff 	li	v0,-1
    35d8:	9278001a 	lbu	t8,26(s3)
    35dc:	240f0001 	li	t7,1
    35e0:	a26f001b 	sb	t7,27(s3)
    35e4:	13000024 	beqz	t8,3678 <Cutscene_Command_CameraPositions+0x110>
    35e8:	ae700020 	sw	s0,32(s3)
    35ec:	95190002 	lhu	t9,2(t0)
    35f0:	3c090000 	lui	t1,0x0
    35f4:	24060025 	li	a2,37
    35f8:	a6790018 	sh	t9,24(s3)
    35fc:	91290000 	lbu	t1,0(t1)
    3600:	8fa40030 	lw	a0,48(sp)
    3604:	5120001d 	beqzl	t1,367c <Cutscene_Command_CameraPositions+0x114>
    3608:	2402ffff 	li	v0,-1
    360c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3610:	86650016 	lh	a1,22(s3)
    3614:	3c050000 	lui	a1,0x0
    3618:	84a50000 	lh	a1,0(a1)
    361c:	8fa40030 	lw	a0,48(sp)
    3620:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3624:	24060001 	li	a2,1
    3628:	8fa40030 	lw	a0,48(sp)
    362c:	86650016 	lh	a1,22(s3)
    3630:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3634:	24060007 	li	a2,7
    3638:	8fa40030 	lw	a0,48(sp)
    363c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3640:	86650016 	lh	a1,22(s3)
    3644:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3648:	00402025 	move	a0,v0
    364c:	8fa40030 	lw	a0,48(sp)
    3650:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3654:	86650016 	lh	a1,22(s3)
    3658:	8faa0030 	lw	t2,48(sp)
    365c:	93ab003f 	lbu	t3,63(sp)
    3660:	8e65001c 	lw	a1,28(s3)
    3664:	8e660020 	lw	a2,32(s3)
    3668:	8d471c44 	lw	a3,7236(t2)
    366c:	00402025 	move	a0,v0
    3670:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3674:	afab0010 	sw	t3,16(sp)
    3678:	2402ffff 	li	v0,-1
    367c:	820c0000 	lb	t4,0(s0)
    3680:	26100010 	addiu	s0,s0,16
    3684:	144c0002 	bne	v0,t4,3690 <Cutscene_Command_CameraPositions+0x128>
    3688:	00000000 	nop
    368c:	00008825 	move	s1,zero
    3690:	1620fffa 	bnez	s1,367c <Cutscene_Command_CameraPositions+0x114>
    3694:	26520010 	addiu	s2,s2,16
    3698:	8fbf002c 	lw	ra,44(sp)
    369c:	02401025 	move	v0,s2
    36a0:	8fb20024 	lw	s2,36(sp)
    36a4:	8fb0001c 	lw	s0,28(sp)
    36a8:	8fb10020 	lw	s1,32(sp)
    36ac:	8fb30028 	lw	s3,40(sp)
    36b0:	03e00008 	jr	ra
    36b4:	27bd0030 	addiu	sp,sp,48

000036b8 <Cutscene_Command_CameraFocus>:
    36b8:	27bdffd0 	addiu	sp,sp,-48
    36bc:	afbf002c 	sw	ra,44(sp)
    36c0:	afb30028 	sw	s3,40(sp)
    36c4:	afb20024 	sw	s2,36(sp)
    36c8:	afb10020 	sw	s1,32(sp)
    36cc:	afb0001c 	sw	s0,28(sp)
    36d0:	afa40030 	sw	a0,48(sp)
    36d4:	afa7003c 	sw	a3,60(sp)
    36d8:	94a30010 	lhu	v1,16(a1)
    36dc:	94c20002 	lhu	v0,2(a2)
    36e0:	00a09825 	move	s3,a1
    36e4:	24110001 	li	s1,1
    36e8:	0043082a 	slt	at,v0,v1
    36ec:	00c04025 	move	t0,a2
    36f0:	24d00008 	addiu	s0,a2,8
    36f4:	10200036 	beqz	at,37d0 <Cutscene_Command_CameraFocus+0x118>
    36f8:	24120008 	li	s2,8
    36fc:	94ce0004 	lhu	t6,4(a2)
    3700:	3c040000 	lui	a0,0x0
    3704:	24840000 	addiu	a0,a0,0
    3708:	006e082a 	slt	at,v1,t6
    370c:	50200031 	beqzl	at,37d4 <Cutscene_Command_CameraFocus+0x11c>
    3710:	2402ffff 	li	v0,-1
    3714:	94830000 	lhu	v1,0(a0)
    3718:	0062082a 	slt	at,v1,v0
    371c:	14200004 	bnez	at,3730 <Cutscene_Command_CameraFocus+0x78>
    3720:	3401f000 	li	at,0xf000
    3724:	0061082a 	slt	at,v1,at
    3728:	5420002a 	bnezl	at,37d4 <Cutscene_Command_CameraFocus+0x11c>
    372c:	2402ffff 	li	v0,-1
    3730:	9278001b 	lbu	t8,27(s3)
    3734:	240f0001 	li	t7,1
    3738:	a26f001a 	sb	t7,26(s3)
    373c:	13000024 	beqz	t8,37d0 <Cutscene_Command_CameraFocus+0x118>
    3740:	ae70001c 	sw	s0,28(s3)
    3744:	95190002 	lhu	t9,2(t0)
    3748:	3c090000 	lui	t1,0x0
    374c:	24060025 	li	a2,37
    3750:	a4990000 	sh	t9,0(a0)
    3754:	91290000 	lbu	t1,0(t1)
    3758:	8fa40030 	lw	a0,48(sp)
    375c:	5120001d 	beqzl	t1,37d4 <Cutscene_Command_CameraFocus+0x11c>
    3760:	2402ffff 	li	v0,-1
    3764:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3768:	86650016 	lh	a1,22(s3)
    376c:	3c050000 	lui	a1,0x0
    3770:	84a50000 	lh	a1,0(a1)
    3774:	8fa40030 	lw	a0,48(sp)
    3778:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    377c:	24060001 	li	a2,1
    3780:	8fa40030 	lw	a0,48(sp)
    3784:	86650016 	lh	a1,22(s3)
    3788:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    378c:	24060007 	li	a2,7
    3790:	8fa40030 	lw	a0,48(sp)
    3794:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3798:	86650016 	lh	a1,22(s3)
    379c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    37a0:	00402025 	move	a0,v0
    37a4:	8fa40030 	lw	a0,48(sp)
    37a8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    37ac:	86650016 	lh	a1,22(s3)
    37b0:	8faa0030 	lw	t2,48(sp)
    37b4:	93ab003f 	lbu	t3,63(sp)
    37b8:	8e65001c 	lw	a1,28(s3)
    37bc:	8e660020 	lw	a2,32(s3)
    37c0:	8d471c44 	lw	a3,7236(t2)
    37c4:	00402025 	move	a0,v0
    37c8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    37cc:	afab0010 	sw	t3,16(sp)
    37d0:	2402ffff 	li	v0,-1
    37d4:	820c0000 	lb	t4,0(s0)
    37d8:	26100010 	addiu	s0,s0,16
    37dc:	144c0002 	bne	v0,t4,37e8 <Cutscene_Command_CameraFocus+0x130>
    37e0:	00000000 	nop
    37e4:	00008825 	move	s1,zero
    37e8:	1620fffa 	bnez	s1,37d4 <Cutscene_Command_CameraFocus+0x11c>
    37ec:	26520010 	addiu	s2,s2,16
    37f0:	8fbf002c 	lw	ra,44(sp)
    37f4:	02401025 	move	v0,s2
    37f8:	8fb20024 	lw	s2,36(sp)
    37fc:	8fb0001c 	lw	s0,28(sp)
    3800:	8fb10020 	lw	s1,32(sp)
    3804:	8fb30028 	lw	s3,40(sp)
    3808:	03e00008 	jr	ra
    380c:	27bd0030 	addiu	sp,sp,48

00003810 <Cutscene_Command_07>:
    3810:	27bdffb0 	addiu	sp,sp,-80
    3814:	afbf001c 	sw	ra,28(sp)
    3818:	afb10018 	sw	s1,24(sp)
    381c:	afb00014 	sw	s0,20(sp)
    3820:	afa7005c 	sw	a3,92(sp)
    3824:	00c04025 	move	t0,a2
    3828:	95020002 	lhu	v0,2(t0)
    382c:	94a70010 	lhu	a3,16(a1)
    3830:	00a08025 	move	s0,a1
    3834:	00808825 	move	s1,a0
    3838:	0047082a 	slt	at,v0,a3
    383c:	10200064 	beqz	at,39d0 <Cutscene_Command_07+0x1c0>
    3840:	24c60008 	addiu	a2,a2,8
    3844:	950e0004 	lhu	t6,4(t0)
    3848:	3c040000 	lui	a0,0x0
    384c:	24840000 	addiu	a0,a0,0
    3850:	00ee082a 	slt	at,a3,t6
    3854:	5020005f 	beqzl	at,39d4 <Cutscene_Command_07+0x1c4>
    3858:	8fbf001c 	lw	ra,28(sp)
    385c:	94830000 	lhu	v1,0(a0)
    3860:	0062082a 	slt	at,v1,v0
    3864:	14200004 	bnez	at,3878 <Cutscene_Command_07+0x68>
    3868:	3401f000 	li	at,0xf000
    386c:	0061082a 	slt	at,v1,at
    3870:	54200058 	bnezl	at,39d4 <Cutscene_Command_07+0x1c4>
    3874:	8fbf001c 	lw	ra,28(sp)
    3878:	9218001a 	lbu	t8,26(s0)
    387c:	240f0001 	li	t7,1
    3880:	a20f001b 	sb	t7,27(s0)
    3884:	13000052 	beqz	t8,39d0 <Cutscene_Command_07+0x1c0>
    3888:	ae060020 	sw	a2,32(s0)
    388c:	95190002 	lhu	t9,2(t0)
    3890:	3c090000 	lui	t1,0x0
    3894:	a4990000 	sh	t9,0(a0)
    3898:	91290000 	lbu	t1,0(t1)
    389c:	02202025 	move	a0,s1
    38a0:	5120004c 	beqzl	t1,39d4 <Cutscene_Command_07+0x1c4>
    38a4:	8fbf001c 	lw	ra,28(sp)
    38a8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    38ac:	86050016 	lh	a1,22(s0)
    38b0:	afa2002c 	sw	v0,44(sp)
    38b4:	ac400090 	sw	zero,144(v0)
    38b8:	02202025 	move	a0,s1
    38bc:	00002825 	move	a1,zero
    38c0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    38c4:	24060001 	li	a2,1
    38c8:	02202025 	move	a0,s1
    38cc:	86050016 	lh	a1,22(s0)
    38d0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    38d4:	24060007 	li	a2,7
    38d8:	02202025 	move	a0,s1
    38dc:	86050016 	lh	a1,22(s0)
    38e0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    38e4:	24060021 	li	a2,33
    38e8:	8e0a001c 	lw	t2,28(s0)
    38ec:	3c013fb4 	lui	at,0x3fb4
    38f0:	44814000 	mtc1	at,$f8
    38f4:	814b0001 	lb	t3,1(t2)
    38f8:	8fa4002c 	lw	a0,44(sp)
    38fc:	24050040 	li	a1,64
    3900:	448b2000 	mtc1	t3,$f4
    3904:	27a60028 	addiu	a2,sp,40
    3908:	468021a0 	cvt.s.w	$f6,$f4
    390c:	46083282 	mul.s	$f10,$f6,$f8
    3910:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3914:	e7aa0028 	swc1	$f10,40(sp)
    3918:	8e0c001c 	lw	t4,28(s0)
    391c:	02202025 	move	a0,s1
    3920:	27a6003c 	addiu	a2,sp,60
    3924:	858d0008 	lh	t5,8(t4)
    3928:	27a70030 	addiu	a3,sp,48
    392c:	448d8000 	mtc1	t5,$f16
    3930:	00000000 	nop
    3934:	468084a0 	cvt.s.w	$f18,$f16
    3938:	e7b2003c 	swc1	$f18,60(sp)
    393c:	8e0e001c 	lw	t6,28(s0)
    3940:	85cf000a 	lh	t7,10(t6)
    3944:	448f2000 	mtc1	t7,$f4
    3948:	00000000 	nop
    394c:	468021a0 	cvt.s.w	$f6,$f4
    3950:	e7a60040 	swc1	$f6,64(sp)
    3954:	8e18001c 	lw	t8,28(s0)
    3958:	8719000c 	lh	t9,12(t8)
    395c:	44994000 	mtc1	t9,$f8
    3960:	00000000 	nop
    3964:	468042a0 	cvt.s.w	$f10,$f8
    3968:	e7aa0044 	swc1	$f10,68(sp)
    396c:	8e090020 	lw	t1,32(s0)
    3970:	852a0008 	lh	t2,8(t1)
    3974:	448a8000 	mtc1	t2,$f16
    3978:	00000000 	nop
    397c:	468084a0 	cvt.s.w	$f18,$f16
    3980:	e7b20030 	swc1	$f18,48(sp)
    3984:	8e0b0020 	lw	t3,32(s0)
    3988:	856c000a 	lh	t4,10(t3)
    398c:	448c2000 	mtc1	t4,$f4
    3990:	00000000 	nop
    3994:	468021a0 	cvt.s.w	$f6,$f4
    3998:	e7a60034 	swc1	$f6,52(sp)
    399c:	8e0d0020 	lw	t5,32(s0)
    39a0:	85ae000c 	lh	t6,12(t5)
    39a4:	448e4000 	mtc1	t6,$f8
    39a8:	00000000 	nop
    39ac:	468042a0 	cvt.s.w	$f10,$f8
    39b0:	e7aa0038 	swc1	$f10,56(sp)
    39b4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    39b8:	86050016 	lh	a1,22(s0)
    39bc:	8e0f0020 	lw	t7,32(s0)
    39c0:	02202025 	move	a0,s1
    39c4:	86050016 	lh	a1,22(s0)
    39c8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    39cc:	8de60004 	lw	a2,4(t7)
    39d0:	8fbf001c 	lw	ra,28(sp)
    39d4:	8fb00014 	lw	s0,20(sp)
    39d8:	8fb10018 	lw	s1,24(sp)
    39dc:	24020018 	li	v0,24
    39e0:	03e00008 	jr	ra
    39e4:	27bd0050 	addiu	sp,sp,80

000039e8 <Cutscene_Command_08>:
    39e8:	27bdffb0 	addiu	sp,sp,-80
    39ec:	afbf001c 	sw	ra,28(sp)
    39f0:	afb10018 	sw	s1,24(sp)
    39f4:	afb00014 	sw	s0,20(sp)
    39f8:	afa7005c 	sw	a3,92(sp)
    39fc:	00c04025 	move	t0,a2
    3a00:	95020002 	lhu	v0,2(t0)
    3a04:	94a70010 	lhu	a3,16(a1)
    3a08:	00a08025 	move	s0,a1
    3a0c:	00808825 	move	s1,a0
    3a10:	0047082a 	slt	at,v0,a3
    3a14:	10200057 	beqz	at,3b74 <Cutscene_Command_08+0x18c>
    3a18:	24c60008 	addiu	a2,a2,8
    3a1c:	950e0004 	lhu	t6,4(t0)
    3a20:	3c040000 	lui	a0,0x0
    3a24:	24840000 	addiu	a0,a0,0
    3a28:	00ee082a 	slt	at,a3,t6
    3a2c:	50200052 	beqzl	at,3b78 <Cutscene_Command_08+0x190>
    3a30:	8fbf001c 	lw	ra,28(sp)
    3a34:	94830000 	lhu	v1,0(a0)
    3a38:	0062082a 	slt	at,v1,v0
    3a3c:	14200004 	bnez	at,3a50 <Cutscene_Command_08+0x68>
    3a40:	3401f000 	li	at,0xf000
    3a44:	0061082a 	slt	at,v1,at
    3a48:	5420004b 	bnezl	at,3b78 <Cutscene_Command_08+0x190>
    3a4c:	8fbf001c 	lw	ra,28(sp)
    3a50:	9218001b 	lbu	t8,27(s0)
    3a54:	240f0001 	li	t7,1
    3a58:	a20f001a 	sb	t7,26(s0)
    3a5c:	13000045 	beqz	t8,3b74 <Cutscene_Command_08+0x18c>
    3a60:	ae06001c 	sw	a2,28(s0)
    3a64:	95190002 	lhu	t9,2(t0)
    3a68:	3c090000 	lui	t1,0x0
    3a6c:	a4990000 	sh	t9,0(a0)
    3a70:	91290000 	lbu	t1,0(t1)
    3a74:	02202025 	move	a0,s1
    3a78:	5120003f 	beqzl	t1,3b78 <Cutscene_Command_08+0x190>
    3a7c:	8fbf001c 	lw	ra,28(sp)
    3a80:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3a84:	86050016 	lh	a1,22(s0)
    3a88:	ac400090 	sw	zero,144(v0)
    3a8c:	02202025 	move	a0,s1
    3a90:	00002825 	move	a1,zero
    3a94:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3a98:	24060001 	li	a2,1
    3a9c:	02202025 	move	a0,s1
    3aa0:	86050016 	lh	a1,22(s0)
    3aa4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3aa8:	24060007 	li	a2,7
    3aac:	02202025 	move	a0,s1
    3ab0:	86050016 	lh	a1,22(s0)
    3ab4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3ab8:	24060021 	li	a2,33
    3abc:	8e0a001c 	lw	t2,28(s0)
    3ac0:	02202025 	move	a0,s1
    3ac4:	27a6003c 	addiu	a2,sp,60
    3ac8:	854b0008 	lh	t3,8(t2)
    3acc:	27a70030 	addiu	a3,sp,48
    3ad0:	448b2000 	mtc1	t3,$f4
    3ad4:	00000000 	nop
    3ad8:	468021a0 	cvt.s.w	$f6,$f4
    3adc:	e7a6003c 	swc1	$f6,60(sp)
    3ae0:	8e0c001c 	lw	t4,28(s0)
    3ae4:	858d000a 	lh	t5,10(t4)
    3ae8:	448d4000 	mtc1	t5,$f8
    3aec:	00000000 	nop
    3af0:	468042a0 	cvt.s.w	$f10,$f8
    3af4:	e7aa0040 	swc1	$f10,64(sp)
    3af8:	8e0e001c 	lw	t6,28(s0)
    3afc:	85cf000c 	lh	t7,12(t6)
    3b00:	448f8000 	mtc1	t7,$f16
    3b04:	00000000 	nop
    3b08:	468084a0 	cvt.s.w	$f18,$f16
    3b0c:	e7b20044 	swc1	$f18,68(sp)
    3b10:	8e180020 	lw	t8,32(s0)
    3b14:	87190008 	lh	t9,8(t8)
    3b18:	44992000 	mtc1	t9,$f4
    3b1c:	00000000 	nop
    3b20:	468021a0 	cvt.s.w	$f6,$f4
    3b24:	e7a60030 	swc1	$f6,48(sp)
    3b28:	8e090020 	lw	t1,32(s0)
    3b2c:	852a000a 	lh	t2,10(t1)
    3b30:	448a4000 	mtc1	t2,$f8
    3b34:	00000000 	nop
    3b38:	468042a0 	cvt.s.w	$f10,$f8
    3b3c:	e7aa0034 	swc1	$f10,52(sp)
    3b40:	8e0b0020 	lw	t3,32(s0)
    3b44:	856c000c 	lh	t4,12(t3)
    3b48:	448c8000 	mtc1	t4,$f16
    3b4c:	00000000 	nop
    3b50:	468084a0 	cvt.s.w	$f18,$f16
    3b54:	e7b20038 	swc1	$f18,56(sp)
    3b58:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3b5c:	86050016 	lh	a1,22(s0)
    3b60:	8e0d0020 	lw	t5,32(s0)
    3b64:	02202025 	move	a0,s1
    3b68:	86050016 	lh	a1,22(s0)
    3b6c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3b70:	8da60004 	lw	a2,4(t5)
    3b74:	8fbf001c 	lw	ra,28(sp)
    3b78:	8fb00014 	lw	s0,20(sp)
    3b7c:	8fb10018 	lw	s1,24(sp)
    3b80:	24020018 	li	v0,24
    3b84:	03e00008 	jr	ra
    3b88:	27bd0050 	addiu	sp,sp,80

00003b8c <Cutscene_Command_Textbox>:
    3b8c:	27bdffd8 	addiu	sp,sp,-40
    3b90:	afbf0014 	sw	ra,20(sp)
    3b94:	afa40028 	sw	a0,40(sp)
    3b98:	afa5002c 	sw	a1,44(sp)
    3b9c:	94cf0002 	lhu	t7,2(a2)
    3ba0:	94a30010 	lhu	v1,16(a1)
    3ba4:	00c03825 	move	a3,a2
    3ba8:	01e3082a 	slt	at,t7,v1
    3bac:	502000a8 	beqzl	at,3e50 <Cutscene_Command_Textbox+0x2c4>
    3bb0:	8fbf0014 	lw	ra,20(sp)
    3bb4:	94c40004 	lhu	a0,4(a2)
    3bb8:	0083082a 	slt	at,a0,v1
    3bbc:	542000a4 	bnezl	at,3e50 <Cutscene_Command_Textbox+0x2c4>
    3bc0:	8fbf0014 	lw	ra,20(sp)
    3bc4:	94d80006 	lhu	t8,6(a2)
    3bc8:	24010002 	li	at,2
    3bcc:	3c190000 	lui	t9,0x0
    3bd0:	1301002c 	beq	t8,at,3c84 <Cutscene_Command_Textbox+0xf8>
    3bd4:	3c0e0000 	lui	t6,0x0
    3bd8:	94c20000 	lhu	v0,0(a2)
    3bdc:	97390000 	lhu	t9,0(t9)
    3be0:	3c010000 	lui	at,0x0
    3be4:	50590033 	beql	v0,t9,3cb4 <Cutscene_Command_Textbox+0x128>
    3be8:	0064082a 	slt	at,v1,a0
    3bec:	a4220000 	sh	v0,0(at)
    3bf0:	94c30006 	lhu	v1,6(a2)
    3bf4:	24010003 	li	at,3
    3bf8:	3c080000 	lui	t0,0x0
    3bfc:	1461000c 	bne	v1,at,3c30 <Cutscene_Command_Textbox+0xa4>
    3c00:	3c090000 	lui	t1,0x0
    3c04:	8d080050 	lw	t0,80(t0)
    3c08:	8d2900a4 	lw	t1,164(t1)
    3c0c:	8fa40028 	lw	a0,40(sp)
    3c10:	01095024 	and	t2,t0,t1
    3c14:	51400007 	beqzl	t2,3c34 <Cutscene_Command_Textbox+0xa8>
    3c18:	24010004 	li	at,4
    3c1c:	94c50008 	lhu	a1,8(a2)
    3c20:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3c24:	00003025 	move	a2,zero
    3c28:	10000089 	b	3e50 <Cutscene_Command_Textbox+0x2c4>
    3c2c:	8fbf0014 	lw	ra,20(sp)
    3c30:	24010004 	li	at,4
    3c34:	1461000d 	bne	v1,at,3c6c <Cutscene_Command_Textbox+0xe0>
    3c38:	3c0b0000 	lui	t3,0x0
    3c3c:	3c0c0000 	lui	t4,0x0
    3c40:	8d8c00a4 	lw	t4,164(t4)
    3c44:	8d6b004c 	lw	t3,76(t3)
    3c48:	8fa40028 	lw	a0,40(sp)
    3c4c:	00003025 	move	a2,zero
    3c50:	016c6824 	and	t5,t3,t4
    3c54:	51a00006 	beqzl	t5,3c70 <Cutscene_Command_Textbox+0xe4>
    3c58:	8fa40028 	lw	a0,40(sp)
    3c5c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3c60:	94e50008 	lhu	a1,8(a3)
    3c64:	1000007a 	b	3e50 <Cutscene_Command_Textbox+0x2c4>
    3c68:	8fbf0014 	lw	ra,20(sp)
    3c6c:	8fa40028 	lw	a0,40(sp)
    3c70:	94e50000 	lhu	a1,0(a3)
    3c74:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3c78:	00003025 	move	a2,zero
    3c7c:	10000074 	b	3e50 <Cutscene_Command_Textbox+0x2c4>
    3c80:	8fbf0014 	lw	ra,20(sp)
    3c84:	94e20000 	lhu	v0,0(a3)
    3c88:	95ce0000 	lhu	t6,0(t6)
    3c8c:	3c010000 	lui	at,0x0
    3c90:	504e0008 	beql	v0,t6,3cb4 <Cutscene_Command_Textbox+0x128>
    3c94:	0064082a 	slt	at,v1,a0
    3c98:	a4220000 	sh	v0,0(at)
    3c9c:	94e50000 	lhu	a1,0(a3)
    3ca0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3ca4:	8fa40028 	lw	a0,40(sp)
    3ca8:	10000069 	b	3e50 <Cutscene_Command_Textbox+0x2c4>
    3cac:	8fbf0014 	lw	ra,20(sp)
    3cb0:	0064082a 	slt	at,v1,a0
    3cb4:	54200066 	bnezl	at,3e50 <Cutscene_Command_Textbox+0x2c4>
    3cb8:	8fbf0014 	lw	ra,20(sp)
    3cbc:	8fa40028 	lw	a0,40(sp)
    3cc0:	a7a30024 	sh	v1,36(sp)
    3cc4:	afa70030 	sw	a3,48(sp)
    3cc8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3ccc:	248420d8 	addiu	a0,a0,8408
    3cd0:	24010002 	li	at,2
    3cd4:	8fa6002c 	lw	a2,44(sp)
    3cd8:	8fa70030 	lw	a3,48(sp)
    3cdc:	10410051 	beq	v0,at,3e24 <Cutscene_Command_Textbox+0x298>
    3ce0:	a3a20027 	sb	v0,39(sp)
    3ce4:	1040004f 	beqz	v0,3e24 <Cutscene_Command_Textbox+0x298>
    3ce8:	24010007 	li	at,7
    3cec:	1041004d 	beq	v0,at,3e24 <Cutscene_Command_Textbox+0x298>
    3cf0:	24010008 	li	at,8
    3cf4:	5041004c 	beql	v0,at,3e28 <Cutscene_Command_Textbox+0x29c>
    3cf8:	87ae0024 	lh	t6,36(sp)
    3cfc:	94cf0010 	lhu	t7,16(a2)
    3d00:	24010004 	li	at,4
    3d04:	25f8ffff 	addiu	t8,t7,-1
    3d08:	14410026 	bne	v0,at,3da4 <Cutscene_Command_Textbox+0x218>
    3d0c:	a4d80010 	sh	t8,16(a2)
    3d10:	8fa40028 	lw	a0,40(sp)
    3d14:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3d18:	afa70030 	sw	a3,48(sp)
    3d1c:	8fa6002c 	lw	a2,44(sp)
    3d20:	10400020 	beqz	v0,3da4 <Cutscene_Command_Textbox+0x218>
    3d24:	8fa70030 	lw	a3,48(sp)
    3d28:	8fa40028 	lw	a0,40(sp)
    3d2c:	3c190001 	lui	t9,0x1
    3d30:	0324c821 	addu	t9,t9,a0
    3d34:	933904bd 	lbu	t9,1213(t9)
    3d38:	5720000f 	bnezl	t9,3d78 <Cutscene_Command_Textbox+0x1ec>
    3d3c:	94e5000a 	lhu	a1,10(a3)
    3d40:	94e50008 	lhu	a1,8(a3)
    3d44:	3401ffff 	li	at,0xffff
    3d48:	50a10007 	beql	a1,at,3d68 <Cutscene_Command_Textbox+0x1dc>
    3d4c:	94c80010 	lhu	t0,16(a2)
    3d50:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3d54:	afa70030 	sw	a3,48(sp)
    3d58:	8fa6002c 	lw	a2,44(sp)
    3d5c:	10000011 	b	3da4 <Cutscene_Command_Textbox+0x218>
    3d60:	8fa70030 	lw	a3,48(sp)
    3d64:	94c80010 	lhu	t0,16(a2)
    3d68:	25090001 	addiu	t1,t0,1
    3d6c:	1000000d 	b	3da4 <Cutscene_Command_Textbox+0x218>
    3d70:	a4c90010 	sh	t1,16(a2)
    3d74:	94e5000a 	lhu	a1,10(a3)
    3d78:	3401ffff 	li	at,0xffff
    3d7c:	50a10007 	beql	a1,at,3d9c <Cutscene_Command_Textbox+0x210>
    3d80:	94ca0010 	lhu	t2,16(a2)
    3d84:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3d88:	afa70030 	sw	a3,48(sp)
    3d8c:	8fa6002c 	lw	a2,44(sp)
    3d90:	10000004 	b	3da4 <Cutscene_Command_Textbox+0x218>
    3d94:	8fa70030 	lw	a3,48(sp)
    3d98:	94ca0010 	lhu	t2,16(a2)
    3d9c:	254b0001 	addiu	t3,t2,1
    3da0:	a4cb0010 	sh	t3,16(a2)
    3da4:	93a20027 	lbu	v0,39(sp)
    3da8:	24010009 	li	at,9
    3dac:	8fa40028 	lw	a0,40(sp)
    3db0:	54410011 	bnel	v0,at,3df8 <Cutscene_Command_Textbox+0x26c>
    3db4:	24010005 	li	at,5
    3db8:	94e50008 	lhu	a1,8(a3)
    3dbc:	3401ffff 	li	at,0xffff
    3dc0:	50a1000a 	beql	a1,at,3dec <Cutscene_Command_Textbox+0x260>
    3dc4:	94cc0010 	lhu	t4,16(a2)
    3dc8:	afa2001c 	sw	v0,28(sp)
    3dcc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3dd0:	afa70030 	sw	a3,48(sp)
    3dd4:	8fa2001c 	lw	v0,28(sp)
    3dd8:	8fa6002c 	lw	a2,44(sp)
    3ddc:	8fa70030 	lw	a3,48(sp)
    3de0:	10000004 	b	3df4 <Cutscene_Command_Textbox+0x268>
    3de4:	8fa40028 	lw	a0,40(sp)
    3de8:	94cc0010 	lhu	t4,16(a2)
    3dec:	258d0001 	addiu	t5,t4,1
    3df0:	a4cd0010 	sh	t5,16(a2)
    3df4:	24010005 	li	at,5
    3df8:	5441000b 	bnel	v0,at,3e28 <Cutscene_Command_Textbox+0x29c>
    3dfc:	87ae0024 	lh	t6,36(sp)
    3e00:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3e04:	afa70030 	sw	a3,48(sp)
    3e08:	8fa6002c 	lw	a2,44(sp)
    3e0c:	10400005 	beqz	v0,3e24 <Cutscene_Command_Textbox+0x298>
    3e10:	8fa70030 	lw	a3,48(sp)
    3e14:	8fa40028 	lw	a0,40(sp)
    3e18:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3e1c:	94e50000 	lhu	a1,0(a3)
    3e20:	8fa6002c 	lw	a2,44(sp)
    3e24:	87ae0024 	lh	t6,36(sp)
    3e28:	94cf0010 	lhu	t7,16(a2)
    3e2c:	55cf0008 	bnel	t6,t7,3e50 <Cutscene_Command_Textbox+0x2c4>
    3e30:	8fbf0014 	lw	ra,20(sp)
    3e34:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3e38:	24040001 	li	a0,1
    3e3c:	3c010000 	lui	at,0x0
    3e40:	a4200000 	sh	zero,0(at)
    3e44:	3c010000 	lui	at,0x0
    3e48:	a4200000 	sh	zero,0(at)
    3e4c:	8fbf0014 	lw	ra,20(sp)
    3e50:	27bd0028 	addiu	sp,sp,40
    3e54:	03e00008 	jr	ra
    3e58:	00000000 	nop

00003e5c <Cutscene_ProcessCommands>:
    3e5c:	27bdffa8 	addiu	sp,sp,-88
    3e60:	afb2001c 	sw	s2,28(sp)
    3e64:	00a09025 	move	s2,a1
    3e68:	afb30020 	sw	s3,32(sp)
    3e6c:	afb10018 	sw	s1,24(sp)
    3e70:	00c08825 	move	s1,a2
    3e74:	00809825 	move	s3,a0
    3e78:	afbf002c 	sw	ra,44(sp)
    3e7c:	00c02825 	move	a1,a2
    3e80:	afb50028 	sw	s5,40(sp)
    3e84:	afb40024 	sw	s4,36(sp)
    3e88:	afb00014 	sw	s0,20(sp)
    3e8c:	24060004 	li	a2,4
    3e90:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3e94:	27a40050 	addiu	a0,sp,80
    3e98:	26310004 	addiu	s1,s1,4
    3e9c:	02202825 	move	a1,s1
    3ea0:	27a40040 	addiu	a0,sp,64
    3ea4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3ea8:	24060004 	li	a2,4
    3eac:	8fae0040 	lw	t6,64(sp)
    3eb0:	964f0010 	lhu	t7,16(s2)
    3eb4:	26310004 	addiu	s1,s1,4
    3eb8:	01cf082a 	slt	at,t6,t7
    3ebc:	50200009 	beqzl	at,3ee4 <Cutscene_ProcessCommands+0x88>
    3ec0:	96680020 	lhu	t0,32(s3)
    3ec4:	92580008 	lbu	t8,8(s2)
    3ec8:	24010004 	li	at,4
    3ecc:	24190003 	li	t9,3
    3ed0:	53010004 	beql	t8,at,3ee4 <Cutscene_ProcessCommands+0x88>
    3ed4:	96680020 	lhu	t0,32(s3)
    3ed8:	10000253 	b	4828 <Cutscene_ProcessCommands+0x9cc>
    3edc:	a2590008 	sb	t9,8(s2)
    3ee0:	96680020 	lhu	t0,32(s3)
    3ee4:	2401feff 	li	at,-257
    3ee8:	240a0003 	li	t2,3
    3eec:	01014827 	nor	t1,t0,at
    3ef0:	55200004 	bnezl	t1,3f04 <Cutscene_ProcessCommands+0xa8>
    3ef4:	8fab0050 	lw	t3,80(sp)
    3ef8:	1000024b 	b	4828 <Cutscene_ProcessCommands+0x9cc>
    3efc:	a24a0008 	sb	t2,8(s2)
    3f00:	8fab0050 	lw	t3,80(sp)
    3f04:	a7a00056 	sh	zero,86(sp)
    3f08:	3415ffff 	li	s5,0xffff
    3f0c:	19600246 	blez	t3,4828 <Cutscene_ProcessCommands+0x9cc>
    3f10:	27b40048 	addiu	s4,sp,72
    3f14:	27a4004c 	addiu	a0,sp,76
    3f18:	02202825 	move	a1,s1
    3f1c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3f20:	24060004 	li	a2,4
    3f24:	8fa3004c 	lw	v1,76(sp)
    3f28:	2401ffff 	li	at,-1
    3f2c:	26310004 	addiu	s1,s1,4
    3f30:	1061023d 	beq	v1,at,4828 <Cutscene_ProcessCommands+0x9cc>
    3f34:	246cffff 	addiu	t4,v1,-1
    3f38:	28610091 	slti	at,v1,145
    3f3c:	14200005 	bnez	at,3f54 <Cutscene_ProcessCommands+0xf8>
    3f40:	240103e8 	li	at,1000
    3f44:	106101fc 	beq	v1,at,4738 <Cutscene_ProcessCommands+0x8dc>
    3f48:	02602025 	move	a0,s3
    3f4c:	10000221 	b	47d4 <Cutscene_ProcessCommands+0x978>
    3f50:	02802025 	move	a0,s4
    3f54:	2d810090 	sltiu	at,t4,144
    3f58:	1020021d 	beqz	at,47d0 <Cutscene_ProcessCommands+0x974>
    3f5c:	000c6080 	sll	t4,t4,0x2
    3f60:	3c010000 	lui	at,0x0
    3f64:	002c0821 	addu	at,at,t4
    3f68:	8c2c0358 	lw	t4,856(at)
    3f6c:	01800008 	jr	t4
    3f70:	00000000 	nop
    3f74:	02802025 	move	a0,s4
    3f78:	02202825 	move	a1,s1
    3f7c:	24060004 	li	a2,4
    3f80:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3f84:	00008025 	move	s0,zero
    3f88:	8fa30048 	lw	v1,72(sp)
    3f8c:	26310004 	addiu	s1,s1,4
    3f90:	1860021d 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    3f94:	02602025 	move	a0,s3
    3f98:	02402825 	move	a1,s2
    3f9c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3fa0:	02203025 	move	a2,s1
    3fa4:	8fa30048 	lw	v1,72(sp)
    3fa8:	26100001 	addiu	s0,s0,1
    3fac:	00108400 	sll	s0,s0,0x10
    3fb0:	00108403 	sra	s0,s0,0x10
    3fb4:	0203082a 	slt	at,s0,v1
    3fb8:	1420fff6 	bnez	at,3f94 <Cutscene_ProcessCommands+0x138>
    3fbc:	26310030 	addiu	s1,s1,48
    3fc0:	10000212 	b	480c <Cutscene_ProcessCommands+0x9b0>
    3fc4:	87a20056 	lh	v0,86(sp)
    3fc8:	02802025 	move	a0,s4
    3fcc:	02202825 	move	a1,s1
    3fd0:	24060004 	li	a2,4
    3fd4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3fd8:	00008025 	move	s0,zero
    3fdc:	8fa30048 	lw	v1,72(sp)
    3fe0:	26310004 	addiu	s1,s1,4
    3fe4:	18600208 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    3fe8:	02602025 	move	a0,s3
    3fec:	02402825 	move	a1,s2
    3ff0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    3ff4:	02203025 	move	a2,s1
    3ff8:	8fa30048 	lw	v1,72(sp)
    3ffc:	26100001 	addiu	s0,s0,1
    4000:	00108400 	sll	s0,s0,0x10
    4004:	00108403 	sra	s0,s0,0x10
    4008:	0203082a 	slt	at,s0,v1
    400c:	1420fff6 	bnez	at,3fe8 <Cutscene_ProcessCommands+0x18c>
    4010:	26310030 	addiu	s1,s1,48
    4014:	100001fd 	b	480c <Cutscene_ProcessCommands+0x9b0>
    4018:	87a20056 	lh	v0,86(sp)
    401c:	02802025 	move	a0,s4
    4020:	02202825 	move	a1,s1
    4024:	24060004 	li	a2,4
    4028:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    402c:	00008025 	move	s0,zero
    4030:	8fa30048 	lw	v1,72(sp)
    4034:	26310004 	addiu	s1,s1,4
    4038:	186001f3 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    403c:	02602025 	move	a0,s3
    4040:	02402825 	move	a1,s2
    4044:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4048:	02203025 	move	a2,s1
    404c:	8fa30048 	lw	v1,72(sp)
    4050:	26100001 	addiu	s0,s0,1
    4054:	00108400 	sll	s0,s0,0x10
    4058:	00108403 	sra	s0,s0,0x10
    405c:	0203082a 	slt	at,s0,v1
    4060:	1420fff6 	bnez	at,403c <Cutscene_ProcessCommands+0x1e0>
    4064:	26310030 	addiu	s1,s1,48
    4068:	100001e8 	b	480c <Cutscene_ProcessCommands+0x9b0>
    406c:	87a20056 	lh	v0,86(sp)
    4070:	02802025 	move	a0,s4
    4074:	02202825 	move	a1,s1
    4078:	24060004 	li	a2,4
    407c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4080:	00008025 	move	s0,zero
    4084:	8fa30048 	lw	v1,72(sp)
    4088:	26310004 	addiu	s1,s1,4
    408c:	186001de 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    4090:	02602025 	move	a0,s3
    4094:	02402825 	move	a1,s2
    4098:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    409c:	02203025 	move	a2,s1
    40a0:	8fa30048 	lw	v1,72(sp)
    40a4:	26100001 	addiu	s0,s0,1
    40a8:	00108400 	sll	s0,s0,0x10
    40ac:	00108403 	sra	s0,s0,0x10
    40b0:	0203082a 	slt	at,s0,v1
    40b4:	1420fff6 	bnez	at,4090 <Cutscene_ProcessCommands+0x234>
    40b8:	26310030 	addiu	s1,s1,48
    40bc:	100001d3 	b	480c <Cutscene_ProcessCommands+0x9b0>
    40c0:	87a20056 	lh	v0,86(sp)
    40c4:	02802025 	move	a0,s4
    40c8:	02202825 	move	a1,s1
    40cc:	24060004 	li	a2,4
    40d0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    40d4:	00008025 	move	s0,zero
    40d8:	8fa30048 	lw	v1,72(sp)
    40dc:	26310004 	addiu	s1,s1,4
    40e0:	186001c9 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    40e4:	02602025 	move	a0,s3
    40e8:	02402825 	move	a1,s2
    40ec:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    40f0:	02203025 	move	a2,s1
    40f4:	8fa30048 	lw	v1,72(sp)
    40f8:	26100001 	addiu	s0,s0,1
    40fc:	00108400 	sll	s0,s0,0x10
    4100:	00108403 	sra	s0,s0,0x10
    4104:	0203082a 	slt	at,s0,v1
    4108:	1420fff6 	bnez	at,40e4 <Cutscene_ProcessCommands+0x288>
    410c:	26310030 	addiu	s1,s1,48
    4110:	100001be 	b	480c <Cutscene_ProcessCommands+0x9b0>
    4114:	87a20056 	lh	v0,86(sp)
    4118:	02802025 	move	a0,s4
    411c:	02202825 	move	a1,s1
    4120:	24060004 	li	a2,4
    4124:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4128:	00008025 	move	s0,zero
    412c:	8fa30048 	lw	v1,72(sp)
    4130:	26310004 	addiu	s1,s1,4
    4134:	186001b4 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    4138:	02602025 	move	a0,s3
    413c:	02402825 	move	a1,s2
    4140:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4144:	02203025 	move	a2,s1
    4148:	8fa30048 	lw	v1,72(sp)
    414c:	26100001 	addiu	s0,s0,1
    4150:	00108400 	sll	s0,s0,0x10
    4154:	00108403 	sra	s0,s0,0x10
    4158:	0203082a 	slt	at,s0,v1
    415c:	1420fff6 	bnez	at,4138 <Cutscene_ProcessCommands+0x2dc>
    4160:	2631000c 	addiu	s1,s1,12
    4164:	100001a9 	b	480c <Cutscene_ProcessCommands+0x9b0>
    4168:	87a20056 	lh	v0,86(sp)
    416c:	02802025 	move	a0,s4
    4170:	02202825 	move	a1,s1
    4174:	24060004 	li	a2,4
    4178:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    417c:	00008025 	move	s0,zero
    4180:	8fa30048 	lw	v1,72(sp)
    4184:	26310004 	addiu	s1,s1,4
    4188:	1860019f 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    418c:	02602025 	move	a0,s3
    4190:	02402825 	move	a1,s2
    4194:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4198:	02203025 	move	a2,s1
    419c:	8fa30048 	lw	v1,72(sp)
    41a0:	26100001 	addiu	s0,s0,1
    41a4:	00108400 	sll	s0,s0,0x10
    41a8:	00108403 	sra	s0,s0,0x10
    41ac:	0203082a 	slt	at,s0,v1
    41b0:	1420fff6 	bnez	at,418c <Cutscene_ProcessCommands+0x330>
    41b4:	2631000c 	addiu	s1,s1,12
    41b8:	10000194 	b	480c <Cutscene_ProcessCommands+0x9b0>
    41bc:	87a20056 	lh	v0,86(sp)
    41c0:	02802025 	move	a0,s4
    41c4:	02202825 	move	a1,s1
    41c8:	24060004 	li	a2,4
    41cc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    41d0:	00008025 	move	s0,zero
    41d4:	8fa30048 	lw	v1,72(sp)
    41d8:	26310004 	addiu	s1,s1,4
    41dc:	5860018b 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    41e0:	87a20056 	lh	v0,86(sp)
    41e4:	96420010 	lhu	v0,16(s2)
    41e8:	962d0002 	lhu	t5,2(s1)
    41ec:	26100001 	addiu	s0,s0,1
    41f0:	01a2082a 	slt	at,t5,v0
    41f4:	50200007 	beqzl	at,4214 <Cutscene_ProcessCommands+0x3b8>
    41f8:	8fa30048 	lw	v1,72(sp)
    41fc:	962e0004 	lhu	t6,4(s1)
    4200:	01c2082a 	slt	at,t6,v0
    4204:	54200003 	bnezl	at,4214 <Cutscene_ProcessCommands+0x3b8>
    4208:	8fa30048 	lw	v1,72(sp)
    420c:	ae510024 	sw	s1,36(s2)
    4210:	8fa30048 	lw	v1,72(sp)
    4214:	00108400 	sll	s0,s0,0x10
    4218:	00108403 	sra	s0,s0,0x10
    421c:	0203082a 	slt	at,s0,v1
    4220:	1420fff0 	bnez	at,41e4 <Cutscene_ProcessCommands+0x388>
    4224:	26310030 	addiu	s1,s1,48
    4228:	10000178 	b	480c <Cutscene_ProcessCommands+0x9b0>
    422c:	87a20056 	lh	v0,86(sp)
    4230:	02802025 	move	a0,s4
    4234:	02202825 	move	a1,s1
    4238:	24060004 	li	a2,4
    423c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4240:	00008025 	move	s0,zero
    4244:	8fa30048 	lw	v1,72(sp)
    4248:	26310004 	addiu	s1,s1,4
    424c:	5860016f 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4250:	87a20056 	lh	v0,86(sp)
    4254:	96420010 	lhu	v0,16(s2)
    4258:	962f0002 	lhu	t7,2(s1)
    425c:	26100001 	addiu	s0,s0,1
    4260:	01e2082a 	slt	at,t7,v0
    4264:	50200007 	beqzl	at,4284 <Cutscene_ProcessCommands+0x428>
    4268:	8fa30048 	lw	v1,72(sp)
    426c:	96380004 	lhu	t8,4(s1)
    4270:	0302082a 	slt	at,t8,v0
    4274:	54200003 	bnezl	at,4284 <Cutscene_ProcessCommands+0x428>
    4278:	8fa30048 	lw	v1,72(sp)
    427c:	ae510028 	sw	s1,40(s2)
    4280:	8fa30048 	lw	v1,72(sp)
    4284:	00108400 	sll	s0,s0,0x10
    4288:	00108403 	sra	s0,s0,0x10
    428c:	0203082a 	slt	at,s0,v1
    4290:	1420fff0 	bnez	at,4254 <Cutscene_ProcessCommands+0x3f8>
    4294:	26310030 	addiu	s1,s1,48
    4298:	1000015c 	b	480c <Cutscene_ProcessCommands+0x9b0>
    429c:	87a20056 	lh	v0,86(sp)
    42a0:	02802025 	move	a0,s4
    42a4:	02202825 	move	a1,s1
    42a8:	24060004 	li	a2,4
    42ac:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    42b0:	00008025 	move	s0,zero
    42b4:	8fa30048 	lw	v1,72(sp)
    42b8:	26310004 	addiu	s1,s1,4
    42bc:	58600153 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    42c0:	87a20056 	lh	v0,86(sp)
    42c4:	96420010 	lhu	v0,16(s2)
    42c8:	96390002 	lhu	t9,2(s1)
    42cc:	26100001 	addiu	s0,s0,1
    42d0:	0322082a 	slt	at,t9,v0
    42d4:	50200007 	beqzl	at,42f4 <Cutscene_ProcessCommands+0x498>
    42d8:	8fa30048 	lw	v1,72(sp)
    42dc:	96280004 	lhu	t0,4(s1)
    42e0:	0102082a 	slt	at,t0,v0
    42e4:	54200003 	bnezl	at,42f4 <Cutscene_ProcessCommands+0x498>
    42e8:	8fa30048 	lw	v1,72(sp)
    42ec:	ae51002c 	sw	s1,44(s2)
    42f0:	8fa30048 	lw	v1,72(sp)
    42f4:	00108400 	sll	s0,s0,0x10
    42f8:	00108403 	sra	s0,s0,0x10
    42fc:	0203082a 	slt	at,s0,v1
    4300:	1420fff0 	bnez	at,42c4 <Cutscene_ProcessCommands+0x468>
    4304:	26310030 	addiu	s1,s1,48
    4308:	10000140 	b	480c <Cutscene_ProcessCommands+0x9b0>
    430c:	87a20056 	lh	v0,86(sp)
    4310:	02802025 	move	a0,s4
    4314:	02202825 	move	a1,s1
    4318:	24060004 	li	a2,4
    431c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4320:	00008025 	move	s0,zero
    4324:	8fa30048 	lw	v1,72(sp)
    4328:	26310004 	addiu	s1,s1,4
    432c:	58600137 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4330:	87a20056 	lh	v0,86(sp)
    4334:	96420010 	lhu	v0,16(s2)
    4338:	96290002 	lhu	t1,2(s1)
    433c:	26100001 	addiu	s0,s0,1
    4340:	0122082a 	slt	at,t1,v0
    4344:	50200007 	beqzl	at,4364 <Cutscene_ProcessCommands+0x508>
    4348:	8fa30048 	lw	v1,72(sp)
    434c:	962a0004 	lhu	t2,4(s1)
    4350:	0142082a 	slt	at,t2,v0
    4354:	54200003 	bnezl	at,4364 <Cutscene_ProcessCommands+0x508>
    4358:	8fa30048 	lw	v1,72(sp)
    435c:	ae510030 	sw	s1,48(s2)
    4360:	8fa30048 	lw	v1,72(sp)
    4364:	00108400 	sll	s0,s0,0x10
    4368:	00108403 	sra	s0,s0,0x10
    436c:	0203082a 	slt	at,s0,v1
    4370:	1420fff0 	bnez	at,4334 <Cutscene_ProcessCommands+0x4d8>
    4374:	26310030 	addiu	s1,s1,48
    4378:	10000124 	b	480c <Cutscene_ProcessCommands+0x9b0>
    437c:	87a20056 	lh	v0,86(sp)
    4380:	02802025 	move	a0,s4
    4384:	02202825 	move	a1,s1
    4388:	24060004 	li	a2,4
    438c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4390:	00008025 	move	s0,zero
    4394:	8fa30048 	lw	v1,72(sp)
    4398:	26310004 	addiu	s1,s1,4
    439c:	5860011b 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    43a0:	87a20056 	lh	v0,86(sp)
    43a4:	96420010 	lhu	v0,16(s2)
    43a8:	962b0002 	lhu	t3,2(s1)
    43ac:	26100001 	addiu	s0,s0,1
    43b0:	0162082a 	slt	at,t3,v0
    43b4:	50200007 	beqzl	at,43d4 <Cutscene_ProcessCommands+0x578>
    43b8:	8fa30048 	lw	v1,72(sp)
    43bc:	962c0004 	lhu	t4,4(s1)
    43c0:	0182082a 	slt	at,t4,v0
    43c4:	54200003 	bnezl	at,43d4 <Cutscene_ProcessCommands+0x578>
    43c8:	8fa30048 	lw	v1,72(sp)
    43cc:	ae510034 	sw	s1,52(s2)
    43d0:	8fa30048 	lw	v1,72(sp)
    43d4:	00108400 	sll	s0,s0,0x10
    43d8:	00108403 	sra	s0,s0,0x10
    43dc:	0203082a 	slt	at,s0,v1
    43e0:	1420fff0 	bnez	at,43a4 <Cutscene_ProcessCommands+0x548>
    43e4:	26310030 	addiu	s1,s1,48
    43e8:	10000108 	b	480c <Cutscene_ProcessCommands+0x9b0>
    43ec:	87a20056 	lh	v0,86(sp)
    43f0:	02802025 	move	a0,s4
    43f4:	02202825 	move	a1,s1
    43f8:	24060004 	li	a2,4
    43fc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4400:	00008025 	move	s0,zero
    4404:	8fa30048 	lw	v1,72(sp)
    4408:	26310004 	addiu	s1,s1,4
    440c:	586000ff 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4410:	87a20056 	lh	v0,86(sp)
    4414:	96420010 	lhu	v0,16(s2)
    4418:	962d0002 	lhu	t5,2(s1)
    441c:	26100001 	addiu	s0,s0,1
    4420:	01a2082a 	slt	at,t5,v0
    4424:	50200007 	beqzl	at,4444 <Cutscene_ProcessCommands+0x5e8>
    4428:	8fa30048 	lw	v1,72(sp)
    442c:	962e0004 	lhu	t6,4(s1)
    4430:	01c2082a 	slt	at,t6,v0
    4434:	54200003 	bnezl	at,4444 <Cutscene_ProcessCommands+0x5e8>
    4438:	8fa30048 	lw	v1,72(sp)
    443c:	ae510038 	sw	s1,56(s2)
    4440:	8fa30048 	lw	v1,72(sp)
    4444:	00108400 	sll	s0,s0,0x10
    4448:	00108403 	sra	s0,s0,0x10
    444c:	0203082a 	slt	at,s0,v1
    4450:	1420fff0 	bnez	at,4414 <Cutscene_ProcessCommands+0x5b8>
    4454:	26310030 	addiu	s1,s1,48
    4458:	100000ec 	b	480c <Cutscene_ProcessCommands+0x9b0>
    445c:	87a20056 	lh	v0,86(sp)
    4460:	02802025 	move	a0,s4
    4464:	02202825 	move	a1,s1
    4468:	24060004 	li	a2,4
    446c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4470:	00008025 	move	s0,zero
    4474:	8fa30048 	lw	v1,72(sp)
    4478:	26310004 	addiu	s1,s1,4
    447c:	586000e3 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4480:	87a20056 	lh	v0,86(sp)
    4484:	96420010 	lhu	v0,16(s2)
    4488:	962f0002 	lhu	t7,2(s1)
    448c:	26100001 	addiu	s0,s0,1
    4490:	01e2082a 	slt	at,t7,v0
    4494:	50200007 	beqzl	at,44b4 <Cutscene_ProcessCommands+0x658>
    4498:	8fa30048 	lw	v1,72(sp)
    449c:	96380004 	lhu	t8,4(s1)
    44a0:	0302082a 	slt	at,t8,v0
    44a4:	54200003 	bnezl	at,44b4 <Cutscene_ProcessCommands+0x658>
    44a8:	8fa30048 	lw	v1,72(sp)
    44ac:	ae51003c 	sw	s1,60(s2)
    44b0:	8fa30048 	lw	v1,72(sp)
    44b4:	00108400 	sll	s0,s0,0x10
    44b8:	00108403 	sra	s0,s0,0x10
    44bc:	0203082a 	slt	at,s0,v1
    44c0:	1420fff0 	bnez	at,4484 <Cutscene_ProcessCommands+0x628>
    44c4:	26310030 	addiu	s1,s1,48
    44c8:	100000d0 	b	480c <Cutscene_ProcessCommands+0x9b0>
    44cc:	87a20056 	lh	v0,86(sp)
    44d0:	02802025 	move	a0,s4
    44d4:	02202825 	move	a1,s1
    44d8:	24060004 	li	a2,4
    44dc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    44e0:	00008025 	move	s0,zero
    44e4:	8fa30048 	lw	v1,72(sp)
    44e8:	26310004 	addiu	s1,s1,4
    44ec:	586000c7 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    44f0:	87a20056 	lh	v0,86(sp)
    44f4:	96420010 	lhu	v0,16(s2)
    44f8:	96390002 	lhu	t9,2(s1)
    44fc:	26100001 	addiu	s0,s0,1
    4500:	0322082a 	slt	at,t9,v0
    4504:	50200007 	beqzl	at,4524 <Cutscene_ProcessCommands+0x6c8>
    4508:	8fa30048 	lw	v1,72(sp)
    450c:	96280004 	lhu	t0,4(s1)
    4510:	0102082a 	slt	at,t0,v0
    4514:	54200003 	bnezl	at,4524 <Cutscene_ProcessCommands+0x6c8>
    4518:	8fa30048 	lw	v1,72(sp)
    451c:	ae510040 	sw	s1,64(s2)
    4520:	8fa30048 	lw	v1,72(sp)
    4524:	00108400 	sll	s0,s0,0x10
    4528:	00108403 	sra	s0,s0,0x10
    452c:	0203082a 	slt	at,s0,v1
    4530:	1420fff0 	bnez	at,44f4 <Cutscene_ProcessCommands+0x698>
    4534:	26310030 	addiu	s1,s1,48
    4538:	100000b4 	b	480c <Cutscene_ProcessCommands+0x9b0>
    453c:	87a20056 	lh	v0,86(sp)
    4540:	02802025 	move	a0,s4
    4544:	02202825 	move	a1,s1
    4548:	24060004 	li	a2,4
    454c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4550:	00008025 	move	s0,zero
    4554:	8fa30048 	lw	v1,72(sp)
    4558:	26310004 	addiu	s1,s1,4
    455c:	586000ab 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4560:	87a20056 	lh	v0,86(sp)
    4564:	96420010 	lhu	v0,16(s2)
    4568:	96290002 	lhu	t1,2(s1)
    456c:	26100001 	addiu	s0,s0,1
    4570:	0122082a 	slt	at,t1,v0
    4574:	50200007 	beqzl	at,4594 <Cutscene_ProcessCommands+0x738>
    4578:	8fa30048 	lw	v1,72(sp)
    457c:	962a0004 	lhu	t2,4(s1)
    4580:	0142082a 	slt	at,t2,v0
    4584:	54200003 	bnezl	at,4594 <Cutscene_ProcessCommands+0x738>
    4588:	8fa30048 	lw	v1,72(sp)
    458c:	ae510044 	sw	s1,68(s2)
    4590:	8fa30048 	lw	v1,72(sp)
    4594:	00108400 	sll	s0,s0,0x10
    4598:	00108403 	sra	s0,s0,0x10
    459c:	0203082a 	slt	at,s0,v1
    45a0:	1420fff0 	bnez	at,4564 <Cutscene_ProcessCommands+0x708>
    45a4:	26310030 	addiu	s1,s1,48
    45a8:	10000098 	b	480c <Cutscene_ProcessCommands+0x9b0>
    45ac:	87a20056 	lh	v0,86(sp)
    45b0:	02802025 	move	a0,s4
    45b4:	02202825 	move	a1,s1
    45b8:	24060004 	li	a2,4
    45bc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    45c0:	00008025 	move	s0,zero
    45c4:	8fa30048 	lw	v1,72(sp)
    45c8:	26310004 	addiu	s1,s1,4
    45cc:	5860008f 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    45d0:	87a20056 	lh	v0,86(sp)
    45d4:	96420010 	lhu	v0,16(s2)
    45d8:	962b0002 	lhu	t3,2(s1)
    45dc:	26100001 	addiu	s0,s0,1
    45e0:	0162082a 	slt	at,t3,v0
    45e4:	50200007 	beqzl	at,4604 <Cutscene_ProcessCommands+0x7a8>
    45e8:	8fa30048 	lw	v1,72(sp)
    45ec:	962c0004 	lhu	t4,4(s1)
    45f0:	0182082a 	slt	at,t4,v0
    45f4:	54200003 	bnezl	at,4604 <Cutscene_ProcessCommands+0x7a8>
    45f8:	8fa30048 	lw	v1,72(sp)
    45fc:	ae510048 	sw	s1,72(s2)
    4600:	8fa30048 	lw	v1,72(sp)
    4604:	00108400 	sll	s0,s0,0x10
    4608:	00108403 	sra	s0,s0,0x10
    460c:	0203082a 	slt	at,s0,v1
    4610:	1420fff0 	bnez	at,45d4 <Cutscene_ProcessCommands+0x778>
    4614:	26310030 	addiu	s1,s1,48
    4618:	1000007c 	b	480c <Cutscene_ProcessCommands+0x9b0>
    461c:	87a20056 	lh	v0,86(sp)
    4620:	02802025 	move	a0,s4
    4624:	02202825 	move	a1,s1
    4628:	24060004 	li	a2,4
    462c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4630:	00008025 	move	s0,zero
    4634:	8fa30048 	lw	v1,72(sp)
    4638:	26310004 	addiu	s1,s1,4
    463c:	58600073 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4640:	87a20056 	lh	v0,86(sp)
    4644:	96420010 	lhu	v0,16(s2)
    4648:	962d0002 	lhu	t5,2(s1)
    464c:	26100001 	addiu	s0,s0,1
    4650:	01a2082a 	slt	at,t5,v0
    4654:	50200007 	beqzl	at,4674 <Cutscene_ProcessCommands+0x818>
    4658:	8fa30048 	lw	v1,72(sp)
    465c:	962e0004 	lhu	t6,4(s1)
    4660:	01c2082a 	slt	at,t6,v0
    4664:	54200003 	bnezl	at,4674 <Cutscene_ProcessCommands+0x818>
    4668:	8fa30048 	lw	v1,72(sp)
    466c:	ae51004c 	sw	s1,76(s2)
    4670:	8fa30048 	lw	v1,72(sp)
    4674:	00108400 	sll	s0,s0,0x10
    4678:	00108403 	sra	s0,s0,0x10
    467c:	0203082a 	slt	at,s0,v1
    4680:	1420fff0 	bnez	at,4644 <Cutscene_ProcessCommands+0x7e8>
    4684:	26310030 	addiu	s1,s1,48
    4688:	10000060 	b	480c <Cutscene_ProcessCommands+0x9b0>
    468c:	87a20056 	lh	v0,86(sp)
    4690:	02602025 	move	a0,s3
    4694:	02402825 	move	a1,s2
    4698:	02203025 	move	a2,s1
    469c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    46a0:	00003825 	move	a3,zero
    46a4:	10000058 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    46a8:	02228821 	addu	s1,s1,v0
    46ac:	02602025 	move	a0,s3
    46b0:	02402825 	move	a1,s2
    46b4:	02203025 	move	a2,s1
    46b8:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    46bc:	24070001 	li	a3,1
    46c0:	10000051 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    46c4:	02228821 	addu	s1,s1,v0
    46c8:	02602025 	move	a0,s3
    46cc:	02402825 	move	a1,s2
    46d0:	02203025 	move	a2,s1
    46d4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    46d8:	00003825 	move	a3,zero
    46dc:	1000004a 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    46e0:	02228821 	addu	s1,s1,v0
    46e4:	02602025 	move	a0,s3
    46e8:	02402825 	move	a1,s2
    46ec:	02203025 	move	a2,s1
    46f0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    46f4:	24070001 	li	a3,1
    46f8:	10000043 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    46fc:	02228821 	addu	s1,s1,v0
    4700:	02602025 	move	a0,s3
    4704:	02402825 	move	a1,s2
    4708:	02203025 	move	a2,s1
    470c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4710:	00003825 	move	a3,zero
    4714:	1000003c 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    4718:	02228821 	addu	s1,s1,v0
    471c:	02602025 	move	a0,s3
    4720:	02402825 	move	a1,s2
    4724:	02203025 	move	a2,s1
    4728:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    472c:	00003825 	move	a3,zero
    4730:	10000035 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    4734:	02228821 	addu	s1,s1,v0
    4738:	26310004 	addiu	s1,s1,4
    473c:	02203025 	move	a2,s1
    4740:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4744:	02402825 	move	a1,s2
    4748:	1000002f 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    474c:	26310008 	addiu	s1,s1,8
    4750:	02802025 	move	a0,s4
    4754:	02202825 	move	a1,s1
    4758:	24060004 	li	a2,4
    475c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4760:	00008025 	move	s0,zero
    4764:	8fa30048 	lw	v1,72(sp)
    4768:	26310004 	addiu	s1,s1,4
    476c:	58600027 	blezl	v1,480c <Cutscene_ProcessCommands+0x9b0>
    4770:	87a20056 	lh	v0,86(sp)
    4774:	962f0000 	lhu	t7,0(s1)
    4778:	02602025 	move	a0,s3
    477c:	02402825 	move	a1,s2
    4780:	52af0004 	beql	s5,t7,4794 <Cutscene_ProcessCommands+0x938>
    4784:	8fa30048 	lw	v1,72(sp)
    4788:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    478c:	02203025 	move	a2,s1
    4790:	8fa30048 	lw	v1,72(sp)
    4794:	26100001 	addiu	s0,s0,1
    4798:	00108400 	sll	s0,s0,0x10
    479c:	00108403 	sra	s0,s0,0x10
    47a0:	0203082a 	slt	at,s0,v1
    47a4:	1420fff3 	bnez	at,4774 <Cutscene_ProcessCommands+0x918>
    47a8:	2631000c 	addiu	s1,s1,12
    47ac:	10000017 	b	480c <Cutscene_ProcessCommands+0x9b0>
    47b0:	87a20056 	lh	v0,86(sp)
    47b4:	26310004 	addiu	s1,s1,4
    47b8:	02203025 	move	a2,s1
    47bc:	02602025 	move	a0,s3
    47c0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    47c4:	02402825 	move	a1,s2
    47c8:	1000000f 	b	4808 <Cutscene_ProcessCommands+0x9ac>
    47cc:	26310008 	addiu	s1,s1,8
    47d0:	02802025 	move	a0,s4
    47d4:	02202825 	move	a1,s1
    47d8:	24060004 	li	a2,4
    47dc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    47e0:	00008025 	move	s0,zero
    47e4:	8fa30048 	lw	v1,72(sp)
    47e8:	26310004 	addiu	s1,s1,4
    47ec:	18600006 	blez	v1,4808 <Cutscene_ProcessCommands+0x9ac>
    47f0:	26100001 	addiu	s0,s0,1
    47f4:	00108400 	sll	s0,s0,0x10
    47f8:	00108403 	sra	s0,s0,0x10
    47fc:	0203082a 	slt	at,s0,v1
    4800:	1420fffb 	bnez	at,47f0 <Cutscene_ProcessCommands+0x994>
    4804:	26310030 	addiu	s1,s1,48
    4808:	87a20056 	lh	v0,86(sp)
    480c:	8fb80050 	lw	t8,80(sp)
    4810:	24420001 	addiu	v0,v0,1
    4814:	00021400 	sll	v0,v0,0x10
    4818:	00021403 	sra	v0,v0,0x10
    481c:	0058082a 	slt	at,v0,t8
    4820:	1420fdbc 	bnez	at,3f14 <Cutscene_ProcessCommands+0xb8>
    4824:	a7a20056 	sh	v0,86(sp)
    4828:	8fbf002c 	lw	ra,44(sp)
    482c:	8fb00014 	lw	s0,20(sp)
    4830:	8fb10018 	lw	s1,24(sp)
    4834:	8fb2001c 	lw	s2,28(sp)
    4838:	8fb30020 	lw	s3,32(sp)
    483c:	8fb40024 	lw	s4,36(sp)
    4840:	8fb50028 	lw	s5,40(sp)
    4844:	03e00008 	jr	ra
    4848:	27bd0058 	addiu	sp,sp,88

0000484c <func_80068C3C>:
    484c:	3c0e0000 	lui	t6,0x0
    4850:	8dce0008 	lw	t6,8(t6)
    4854:	27bdffb8 	addiu	sp,sp,-72
    4858:	3401fff0 	li	at,0xfff0
    485c:	afb00018 	sw	s0,24(sp)
    4860:	01c1082a 	slt	at,t6,at
    4864:	00808025 	move	s0,a0
    4868:	afbf001c 	sw	ra,28(sp)
    486c:	14200044 	bnez	at,4980 <func_80068C3C+0x134>
    4870:	afa5004c 	sw	a1,76(sp)
    4874:	3c0f0000 	lui	t7,0x0
    4878:	8def0000 	lw	t7,0(t7)
    487c:	3c060000 	lui	a2,0x0
    4880:	24c60068 	addiu	a2,a2,104
    4884:	85f812d4 	lh	t8,4820(t7)
    4888:	24071005 	li	a3,4101
    488c:	53000029 	beqzl	t8,4934 <func_80068C3C+0xe8>
    4890:	8fb8004c 	lw	t8,76(sp)
    4894:	8c850000 	lw	a1,0(a0)
    4898:	27a4002c 	addiu	a0,sp,44
    489c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    48a0:	afa5003c 	sw	a1,60(sp)
    48a4:	8fb9003c 	lw	t9,60(sp)
    48a8:	8f2402c0 	lw	a0,704(t9)
    48ac:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    48b0:	afa40040 	sw	a0,64(sp)
    48b4:	8fa7003c 	lw	a3,60(sp)
    48b8:	afa20044 	sw	v0,68(sp)
    48bc:	3c09de00 	lui	t1,0xde00
    48c0:	8ce302b0 	lw	v1,688(a3)
    48c4:	02002025 	move	a0,s0
    48c8:	27a50044 	addiu	a1,sp,68
    48cc:	24680008 	addiu	t0,v1,8
    48d0:	ace802b0 	sw	t0,688(a3)
    48d4:	ac690000 	sw	t1,0(v1)
    48d8:	8faa0044 	lw	t2,68(sp)
    48dc:	ac6a0004 	sw	t2,4(v1)
    48e0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    48e4:	8fa6004c 	lw	a2,76(sp)
    48e8:	8fab0044 	lw	t3,68(sp)
    48ec:	3c0ddf00 	lui	t5,0xdf00
    48f0:	256c0008 	addiu	t4,t3,8
    48f4:	afac0044 	sw	t4,68(sp)
    48f8:	ad600004 	sw	zero,4(t3)
    48fc:	ad6d0000 	sw	t5,0(t3)
    4900:	8fa50044 	lw	a1,68(sp)
    4904:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4908:	8fa40040 	lw	a0,64(sp)
    490c:	8fae0044 	lw	t6,68(sp)
    4910:	8faf003c 	lw	t7,60(sp)
    4914:	3c060000 	lui	a2,0x0
    4918:	24c60074 	addiu	a2,a2,116
    491c:	adee02c0 	sw	t6,704(t7)
    4920:	8e050000 	lw	a1,0(s0)
    4924:	27a4002c 	addiu	a0,sp,44
    4928:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    492c:	2407100c 	li	a3,4108
    4930:	8fb8004c 	lw	t8,76(sp)
    4934:	3c090000 	lui	t1,0x0
    4938:	3c060000 	lui	a2,0x0
    493c:	97190010 	lhu	t9,16(t8)
    4940:	02002025 	move	a0,s0
    4944:	27280001 	addiu	t0,t9,1
    4948:	a7080010 	sh	t0,16(t8)
    494c:	8d290000 	lw	t1,0(t1)
    4950:	8fa5004c 	lw	a1,76(sp)
    4954:	852a1452 	lh	t2,5202(t1)
    4958:	11400007 	beqz	t2,4978 <func_80068C3C+0x12c>
    495c:	00000000 	nop
    4960:	02002025 	move	a0,s0
    4964:	8fa5004c 	lw	a1,76(sp)
    4968:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    496c:	8cc60000 	lw	a2,0(a2)
    4970:	10000004 	b	4984 <func_80068C3C+0x138>
    4974:	8fbf001c 	lw	ra,28(sp)
    4978:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    497c:	8e061d68 	lw	a2,7528(s0)
    4980:	8fbf001c 	lw	ra,28(sp)
    4984:	8fb00018 	lw	s0,24(sp)
    4988:	27bd0048 	addiu	sp,sp,72
    498c:	03e00008 	jr	ra
    4990:	00000000 	nop

00004994 <func_80068D84>:
    4994:	27bdffe8 	addiu	sp,sp,-24
    4998:	afbf0014 	sw	ra,20(sp)
    499c:	afa5001c 	sw	a1,28(sp)
    49a0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    49a4:	24060000 	li	a2,0
    49a8:	50400006 	beqzl	v0,49c4 <func_80068D84+0x30>
    49ac:	8fbf0014 	lw	ra,20(sp)
    49b0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    49b4:	00002025 	move	a0,zero
    49b8:	8fae001c 	lw	t6,28(sp)
    49bc:	a1c00008 	sb	zero,8(t6)
    49c0:	8fbf0014 	lw	ra,20(sp)
    49c4:	27bd0018 	addiu	sp,sp,24
    49c8:	03e00008 	jr	ra
    49cc:	00000000 	nop

000049d0 <func_80068DC0>:
    49d0:	27bdffe0 	addiu	sp,sp,-32
    49d4:	afbf001c 	sw	ra,28(sp)
    49d8:	afb00018 	sw	s0,24(sp)
    49dc:	00a08025 	move	s0,a1
    49e0:	afa40020 	sw	a0,32(sp)
    49e4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    49e8:	24060000 	li	a2,0
    49ec:	10400036 	beqz	v0,4ac8 <func_80068DC0+0xf8>
    49f0:	3c040000 	lui	a0,0x0
    49f4:	ae000024 	sw	zero,36(s0)
    49f8:	00001025 	move	v0,zero
    49fc:	00027080 	sll	t6,v0,0x2
    4a00:	24420001 	addiu	v0,v0,1
    4a04:	00021400 	sll	v0,v0,0x10
    4a08:	00021403 	sra	v0,v0,0x10
    4a0c:	2841000a 	slti	at,v0,10
    4a10:	020e7821 	addu	t7,s0,t6
    4a14:	1420fff9 	bnez	at,49fc <func_80068DC0+0x2c>
    4a18:	ade00028 	sw	zero,40(t7)
    4a1c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4a20:	24840080 	addiu	a0,a0,128
    4a24:	3c030000 	lui	v1,0x0
    4a28:	24630000 	addiu	v1,v1,0
    4a2c:	ac600008 	sw	zero,8(v1)
    4a30:	ac60135c 	sw	zero,4956(v1)
    4a34:	3c180000 	lui	t8,0x0
    4a38:	93180000 	lbu	t8,0(t8)
    4a3c:	1300001f 	beqz	t8,4abc <func_80068DC0+0xec>
    4a40:	00000000 	nop
    4a44:	8c620000 	lw	v0,0(v1)
    4a48:	2401028a 	li	at,650
    4a4c:	8fa40020 	lw	a0,32(sp)
    4a50:	10410008 	beq	v0,at,4a74 <func_80068DC0+0xa4>
    4a54:	3c050000 	lui	a1,0x0
    4a58:	2401028e 	li	at,654
    4a5c:	10410005 	beq	v0,at,4a74 <func_80068DC0+0xa4>
    4a60:	24010292 	li	at,658
    4a64:	10410003 	beq	v0,at,4a74 <func_80068DC0+0xa4>
    4a68:	24010476 	li	at,1142
    4a6c:	14410004 	bne	v0,at,4a80 <func_80068DC0+0xb0>
    4a70:	00000000 	nop
    4a74:	84a50000 	lh	a1,0(a1)
    4a78:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4a7c:	86060016 	lh	a2,22(s0)
    4a80:	3c050000 	lui	a1,0x0
    4a84:	84a50000 	lh	a1,0(a1)
    4a88:	8fa40020 	lw	a0,32(sp)
    4a8c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4a90:	24060007 	li	a2,7
    4a94:	8fa40020 	lw	a0,32(sp)
    4a98:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4a9c:	86050016 	lh	a1,22(s0)
    4aa0:	3c080000 	lui	t0,0x0
    4aa4:	85080000 	lh	t0,0(t0)
    4aa8:	8fb90020 	lw	t9,32(sp)
    4aac:	00084880 	sll	t1,t0,0x2
    4ab0:	03295021 	addu	t2,t9,t1
    4ab4:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ab8:	8d440790 	lw	a0,1936(t2)
    4abc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ac0:	00002025 	move	a0,zero
    4ac4:	a2000008 	sb	zero,8(s0)
    4ac8:	8fbf001c 	lw	ra,28(sp)
    4acc:	8fb00018 	lw	s0,24(sp)
    4ad0:	27bd0020 	addiu	sp,sp,32
    4ad4:	03e00008 	jr	ra
    4ad8:	00000000 	nop

00004adc <func_80068ECC>:
    4adc:	3c0e0000 	lui	t6,0x0
    4ae0:	91ce1414 	lbu	t6,5140(t6)
    4ae4:	27bdffe0 	addiu	sp,sp,-32
    4ae8:	afb00018 	sw	s0,24(sp)
    4aec:	00a08025 	move	s0,a1
    4af0:	afbf001c 	sw	ra,28(sp)
    4af4:	11c0000a 	beqz	t6,4b20 <func_80068ECC+0x44>
    4af8:	afa40020 	sw	a0,32(sp)
    4afc:	90af0008 	lbu	t7,8(a1)
    4b00:	15e00007 	bnez	t7,4b20 <func_80068ECC+0x44>
    4b04:	00000000 	nop
    4b08:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4b0c:	00000000 	nop
    4b10:	14400003 	bnez	v0,4b20 <func_80068ECC+0x44>
    4b14:	3418fffd 	li	t8,0xfffd
    4b18:	3c010000 	lui	at,0x0
    4b1c:	ac380008 	sw	t8,8(at)
    4b20:	3c190000 	lui	t9,0x0
    4b24:	8f390008 	lw	t9,8(t9)
    4b28:	3401fff0 	li	at,0xfff0
    4b2c:	0321082a 	slt	at,t9,at
    4b30:	54200045 	bnezl	at,4c48 <func_80068ECC+0x16c>
    4b34:	8fbf001c 	lw	ra,28(sp)
    4b38:	92080008 	lbu	t0,8(s0)
    4b3c:	8fa40020 	lw	a0,32(sp)
    4b40:	55000041 	bnezl	t0,4c48 <func_80068ECC+0x16c>
    4b44:	8fbf001c 	lw	ra,28(sp)
    4b48:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4b4c:	00002825 	move	a1,zero
    4b50:	3c010000 	lui	at,0x0
    4b54:	a4200000 	sh	zero,0(at)
    4b58:	3c010000 	lui	at,0x0
    4b5c:	a4200000 	sh	zero,0(at)
    4b60:	a6000012 	sh	zero,18(s0)
    4b64:	ae000024 	sw	zero,36(s0)
    4b68:	00001025 	move	v0,zero
    4b6c:	00024880 	sll	t1,v0,0x2
    4b70:	24420001 	addiu	v0,v0,1
    4b74:	304200ff 	andi	v0,v0,0xff
    4b78:	2841000a 	slti	at,v0,10
    4b7c:	02095021 	addu	t2,s0,t1
    4b80:	1420fffa 	bnez	at,4b6c <func_80068ECC+0x90>
    4b84:	ad400028 	sw	zero,40(t2)
    4b88:	920b0008 	lbu	t3,8(s0)
    4b8c:	24010001 	li	at,1
    4b90:	256c0001 	addiu	t4,t3,1
    4b94:	318d00ff 	andi	t5,t4,0xff
    4b98:	15a10028 	bne	t5,at,4c3c <func_80068ECC+0x160>
    4b9c:	a20c0008 	sb	t4,8(s0)
    4ba0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ba4:	24040001 	li	a0,1
    4ba8:	3402ffff 	li	v0,0xffff
    4bac:	a6020010 	sh	v0,16(s0)
    4bb0:	a6020018 	sh	v0,24(s0)
    4bb4:	3c010000 	lui	at,0x0
    4bb8:	a4220000 	sh	v0,0(at)
    4bbc:	3c010000 	lui	at,0x0
    4bc0:	a4220000 	sh	v0,0(at)
    4bc4:	3c010000 	lui	at,0x0
    4bc8:	a4220000 	sh	v0,0(at)
    4bcc:	a200001a 	sb	zero,26(s0)
    4bd0:	a200001b 	sb	zero,27(s0)
    4bd4:	8fae0020 	lw	t6,32(sp)
    4bd8:	3c180000 	lui	t8,0x0
    4bdc:	93180000 	lbu	t8,0(t8)
    4be0:	85cf07a0 	lh	t7,1952(t6)
    4be4:	3c010000 	lui	at,0x0
    4be8:	13000004 	beqz	t8,4bfc <func_80068ECC+0x120>
    4bec:	a42f0000 	sh	t7,0(at)
    4bf0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4bf4:	01c02025 	move	a0,t6
    4bf8:	ae020014 	sw	v0,20(s0)
    4bfc:	3c190000 	lui	t9,0x0
    4c00:	93391414 	lbu	t9,5140(t9)
    4c04:	5720000b 	bnezl	t9,4c34 <func_80068ECC+0x158>
    4c08:	8fa40020 	lw	a0,32(sp)
    4c0c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4c10:	24040001 	li	a0,1
    4c14:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4c18:	24040020 	li	a0,32
    4c1c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4c20:	24040020 	li	a0,32
    4c24:	92080008 	lbu	t0,8(s0)
    4c28:	25090001 	addiu	t1,t0,1
    4c2c:	a2090008 	sb	t1,8(s0)
    4c30:	8fa40020 	lw	a0,32(sp)
    4c34:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4c38:	02002825 	move	a1,s0
    4c3c:	3c010000 	lui	at,0x0
    4c40:	a0201414 	sb	zero,5140(at)
    4c44:	8fbf001c 	lw	ra,28(sp)
    4c48:	8fb00018 	lw	s0,24(sp)
    4c4c:	27bd0020 	addiu	sp,sp,32
    4c50:	03e00008 	jr	ra
    4c54:	00000000 	nop

00004c58 <func_80069048>:
    4c58:	3c010000 	lui	at,0x0
    4c5c:	afa40000 	sw	a0,0(sp)
    4c60:	a4200000 	sh	zero,0(at)
    4c64:	00001025 	move	v0,zero
    4c68:	24420001 	addiu	v0,v0,1
    4c6c:	00021400 	sll	v0,v0,0x10
    4c70:	00021403 	sra	v0,v0,0x10
    4c74:	28410014 	slti	at,v0,20
    4c78:	5420fffc 	bnezl	at,4c6c <func_80069048+0x14>
    4c7c:	24420001 	addiu	v0,v0,1
    4c80:	3c010000 	lui	at,0x0
    4c84:	03e00008 	jr	ra
    4c88:	a0200000 	sb	zero,0(at)

00004c8c <func_8006907C>:
    4c8c:	3c020000 	lui	v0,0x0
    4c90:	24420000 	addiu	v0,v0,0
    4c94:	944e0000 	lhu	t6,0(v0)
    4c98:	afa40000 	sw	a0,0(sp)
    4c9c:	11c00002 	beqz	t6,4ca8 <func_8006907C+0x1c>
    4ca0:	00000000 	nop
    4ca4:	a4400000 	sh	zero,0(v0)
    4ca8:	03e00008 	jr	ra
    4cac:	00000000 	nop

00004cb0 <Cutscene_HandleEntranceTriggers>:
    4cb0:	27bdffc8 	addiu	sp,sp,-56
    4cb4:	afb40024 	sw	s4,36(sp)
    4cb8:	afb30020 	sw	s3,32(sp)
    4cbc:	afb70030 	sw	s7,48(sp)
    4cc0:	afb6002c 	sw	s6,44(sp)
    4cc4:	afb50028 	sw	s5,40(sp)
    4cc8:	afb2001c 	sw	s2,28(sp)
    4ccc:	3c130000 	lui	s3,0x0
    4cd0:	3c140000 	lui	s4,0x0
    4cd4:	afbf0034 	sw	ra,52(sp)
    4cd8:	afb10018 	sw	s1,24(sp)
    4cdc:	afb00014 	sw	s0,20(sp)
    4ce0:	afa40038 	sw	a0,56(sp)
    4ce4:	26940000 	addiu	s4,s4,0
    4ce8:	26730000 	addiu	s3,s3,0
    4cec:	00009025 	move	s2,zero
    4cf0:	24150002 	li	s5,2
    4cf4:	24160018 	li	s6,24
    4cf8:	3417fff0 	li	s7,0xfff0
    4cfc:	001270c0 	sll	t6,s2,0x3
    4d00:	028e8821 	addu	s1,s4,t6
    4d04:	92300002 	lbu	s0,2(s1)
    4d08:	8e620000 	lw	v0,0(s3)
    4d0c:	56b00003 	bnel	s5,s0,4d1c <Cutscene_HandleEntranceTriggers+0x6c>
    4d10:	962f0000 	lhu	t7,0(s1)
    4d14:	92700007 	lbu	s0,7(s3)
    4d18:	962f0000 	lhu	t7,0(s1)
    4d1c:	544f001c 	bnel	v0,t7,4d90 <Cutscene_HandleEntranceTriggers+0xe0>
    4d20:	26520001 	addiu	s2,s2,1
    4d24:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4d28:	92240003 	lbu	a0,3(s1)
    4d2c:	50400005 	beqzl	v0,4d44 <Cutscene_HandleEntranceTriggers+0x94>
    4d30:	8e790008 	lw	t9,8(s3)
    4d34:	92380003 	lbu	t8,3(s1)
    4d38:	56d80015 	bnel	s6,t8,4d90 <Cutscene_HandleEntranceTriggers+0xe0>
    4d3c:	26520001 	addiu	s2,s2,1
    4d40:	8e790008 	lw	t9,8(s3)
    4d44:	0337082a 	slt	at,t9,s7
    4d48:	50200011 	beqzl	at,4d90 <Cutscene_HandleEntranceTriggers+0xe0>
    4d4c:	26520001 	addiu	s2,s2,1
    4d50:	92680007 	lbu	t0,7(s3)
    4d54:	5608000e 	bnel	s0,t0,4d90 <Cutscene_HandleEntranceTriggers+0xe0>
    4d58:	26520001 	addiu	s2,s2,1
    4d5c:	8e691364 	lw	t1,4964(s3)
    4d60:	5d20000b 	bgtzl	t1,4d90 <Cutscene_HandleEntranceTriggers+0xe0>
    4d64:	26520001 	addiu	s2,s2,1
    4d68:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4d6c:	92240003 	lbu	a0,3(s1)
    4d70:	8fa40038 	lw	a0,56(sp)
    4d74:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4d78:	8e250004 	lw	a1,4(s1)
    4d7c:	240a0002 	li	t2,2
    4d80:	a26a1414 	sb	t2,5140(s3)
    4d84:	10000007 	b	4da4 <Cutscene_HandleEntranceTriggers+0xf4>
    4d88:	a26013c7 	sb	zero,5063(s3)
    4d8c:	26520001 	addiu	s2,s2,1
    4d90:	00129400 	sll	s2,s2,0x10
    4d94:	00129403 	sra	s2,s2,0x10
    4d98:	2a410022 	slti	at,s2,34
    4d9c:	5420ffd8 	bnezl	at,4d00 <Cutscene_HandleEntranceTriggers+0x50>
    4da0:	001270c0 	sll	t6,s2,0x3
    4da4:	8fbf0034 	lw	ra,52(sp)
    4da8:	8fb00014 	lw	s0,20(sp)
    4dac:	8fb10018 	lw	s1,24(sp)
    4db0:	8fb2001c 	lw	s2,28(sp)
    4db4:	8fb30020 	lw	s3,32(sp)
    4db8:	8fb40024 	lw	s4,36(sp)
    4dbc:	8fb50028 	lw	s5,40(sp)
    4dc0:	8fb6002c 	lw	s6,44(sp)
    4dc4:	8fb70030 	lw	s7,48(sp)
    4dc8:	03e00008 	jr	ra
    4dcc:	27bd0038 	addiu	sp,sp,56

00004dd0 <Cutscene_HandleConditionalTriggers>:
    4dd0:	27bdffe0 	addiu	sp,sp,-32
    4dd4:	afb00018 	sw	s0,24(sp)
    4dd8:	3c100000 	lui	s0,0x0
    4ddc:	afa40020 	sw	a0,32(sp)
    4de0:	26100000 	addiu	s0,s0,0
    4de4:	afbf001c 	sw	ra,28(sp)
    4de8:	3c040000 	lui	a0,0x0
    4dec:	24840098 	addiu	a0,a0,152
    4df0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4df4:	8e051364 	lw	a1,4964(s0)
    4df8:	8e0e135c 	lw	t6,4956(s0)
    4dfc:	55c00076 	bnezl	t6,4fd8 <Cutscene_HandleConditionalTriggers+0x208>
    4e00:	8fbf001c 	lw	ra,28(sp)
    4e04:	8e0f1364 	lw	t7,4964(s0)
    4e08:	5de00073 	bgtzl	t7,4fd8 <Cutscene_HandleConditionalTriggers+0x208>
    4e0c:	8fbf001c 	lw	ra,28(sp)
    4e10:	8e180008 	lw	t8,8(s0)
    4e14:	3401fff0 	li	at,0xfff0
    4e18:	0301082a 	slt	at,t8,at
    4e1c:	5020006e 	beqzl	at,4fd8 <Cutscene_HandleConditionalTriggers+0x208>
    4e20:	8fbf001c 	lw	ra,28(sp)
    4e24:	8e190000 	lw	t9,0(s0)
    4e28:	240101e1 	li	at,481
    4e2c:	5721000d 	bnel	t9,at,4e64 <Cutscene_HandleConditionalTriggers+0x94>
    4e30:	8e0a0000 	lw	t2,0(s0)
    4e34:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4e38:	240400ac 	li	a0,172
    4e3c:	54400009 	bnezl	v0,4e64 <Cutscene_HandleConditionalTriggers+0x94>
    4e40:	8e0a0000 	lw	t2,0(s0)
    4e44:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4e48:	240400ac 	li	a0,172
    4e4c:	24080123 	li	t0,291
    4e50:	3409fff0 	li	t1,0xfff0
    4e54:	ae080000 	sw	t0,0(s0)
    4e58:	1000005e 	b	4fd4 <Cutscene_HandleConditionalTriggers+0x204>
    4e5c:	ae090008 	sw	t1,8(s0)
    4e60:	8e0a0000 	lw	t2,0(s0)
    4e64:	240100db 	li	at,219
    4e68:	55410016 	bnel	t2,at,4ec4 <Cutscene_HandleConditionalTriggers+0xf4>
    4e6c:	8e180000 	lw	t8,0(s0)
    4e70:	8e0b0004 	lw	t3,4(s0)
    4e74:	55600013 	bnezl	t3,4ec4 <Cutscene_HandleConditionalTriggers+0xf4>
    4e78:	8e180000 	lw	t8,0(s0)
    4e7c:	96020edc 	lhu	v0,3804(s0)
    4e80:	304c0100 	andi	t4,v0,0x100
    4e84:	1180000e 	beqz	t4,4ec0 <Cutscene_HandleConditionalTriggers+0xf0>
    4e88:	304d0200 	andi	t5,v0,0x200
    4e8c:	11a0000c 	beqz	t5,4ec0 <Cutscene_HandleConditionalTriggers+0xf0>
    4e90:	304e0400 	andi	t6,v0,0x400
    4e94:	51c0000b 	beqzl	t6,4ec4 <Cutscene_HandleConditionalTriggers+0xf4>
    4e98:	8e180000 	lw	t8,0(s0)
    4e9c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ea0:	240400aa 	li	a0,170
    4ea4:	54400007 	bnezl	v0,4ec4 <Cutscene_HandleConditionalTriggers+0xf4>
    4ea8:	8e180000 	lw	t8,0(s0)
    4eac:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4eb0:	240400aa 	li	a0,170
    4eb4:	340ffff0 	li	t7,0xfff0
    4eb8:	10000046 	b	4fd4 <Cutscene_HandleConditionalTriggers+0x204>
    4ebc:	ae0f0008 	sw	t7,8(s0)
    4ec0:	8e180000 	lw	t8,0(s0)
    4ec4:	240105e0 	li	at,1504
    4ec8:	1701000f 	bne	t8,at,4f08 <Cutscene_HandleConditionalTriggers+0x138>
    4ecc:	00000000 	nop
    4ed0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ed4:	240400c1 	li	a0,193
    4ed8:	1440000b 	bnez	v0,4f08 <Cutscene_HandleConditionalTriggers+0x138>
    4edc:	00000000 	nop
    4ee0:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ee4:	240400c1 	li	a0,193
    4ee8:	8fa40020 	lw	a0,32(sp)
    4eec:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4ef0:	24050007 	li	a1,7
    4ef4:	2419011e 	li	t9,286
    4ef8:	3408fff0 	li	t0,0xfff0
    4efc:	ae190000 	sw	t9,0(s0)
    4f00:	10000034 	b	4fd4 <Cutscene_HandleConditionalTriggers+0x204>
    4f04:	ae080008 	sw	t0,8(s0)
    4f08:	3c030000 	lui	v1,0x0
    4f0c:	24630000 	addiu	v1,v1,0
    4f10:	8c69000c 	lw	t1,12(v1)
    4f14:	8e0200a4 	lw	v0,164(s0)
    4f18:	01225024 	and	t2,t1,v0
    4f1c:	1140001b 	beqz	t2,4f8c <Cutscene_HandleConditionalTriggers+0x1bc>
    4f20:	00000000 	nop
    4f24:	8c6b0010 	lw	t3,16(v1)
    4f28:	01626024 	and	t4,t3,v0
    4f2c:	11800017 	beqz	t4,4f8c <Cutscene_HandleConditionalTriggers+0x1bc>
    4f30:	00000000 	nop
    4f34:	8e0d0004 	lw	t5,4(s0)
    4f38:	15a00014 	bnez	t5,4f8c <Cutscene_HandleConditionalTriggers+0x1bc>
    4f3c:	00000000 	nop
    4f40:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4f44:	240400c4 	li	a0,196
    4f48:	14400010 	bnez	v0,4f8c <Cutscene_HandleConditionalTriggers+0x1bc>
    4f4c:	00000000 	nop
    4f50:	8e050000 	lw	a1,0(s0)
    4f54:	3c0f0000 	lui	t7,0x0
    4f58:	24010043 	li	at,67
    4f5c:	00057080 	sll	t6,a1,0x2
    4f60:	01ee7821 	addu	t7,t7,t6
    4f64:	81ef0000 	lb	t7,0(t7)
    4f68:	15e10008 	bne	t7,at,4f8c <Cutscene_HandleConditionalTriggers+0x1bc>
    4f6c:	00000000 	nop
    4f70:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4f74:	240400c4 	li	a0,196
    4f78:	24180053 	li	t8,83
    4f7c:	3419fff8 	li	t9,0xfff8
    4f80:	ae180000 	sw	t8,0(s0)
    4f84:	10000013 	b	4fd4 <Cutscene_HandleConditionalTriggers+0x204>
    4f88:	ae190008 	sw	t9,8(s0)
    4f8c:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4f90:	240400c7 	li	a0,199
    4f94:	54400010 	bnezl	v0,4fd8 <Cutscene_HandleConditionalTriggers+0x208>
    4f98:	8fbf001c 	lw	ra,28(sp)
    4f9c:	8e050000 	lw	a1,0(s0)
    4fa0:	3c090000 	lui	t1,0x0
    4fa4:	2401004f 	li	at,79
    4fa8:	00054080 	sll	t0,a1,0x2
    4fac:	01284821 	addu	t1,t1,t0
    4fb0:	81290000 	lb	t1,0(t1)
    4fb4:	55210008 	bnel	t1,at,4fd8 <Cutscene_HandleConditionalTriggers+0x208>
    4fb8:	8fbf001c 	lw	ra,28(sp)
    4fbc:	0c000000 	jal	0 <Cutscene_DrawDebugInfo>
    4fc0:	240400c7 	li	a0,199
    4fc4:	240a0517 	li	t2,1303
    4fc8:	340bfff0 	li	t3,0xfff0
    4fcc:	ae0a0000 	sw	t2,0(s0)
    4fd0:	ae0b0008 	sw	t3,8(s0)
    4fd4:	8fbf001c 	lw	ra,28(sp)
    4fd8:	8fb00018 	lw	s0,24(sp)
    4fdc:	27bd0020 	addiu	sp,sp,32
    4fe0:	03e00008 	jr	ra
    4fe4:	00000000 	nop

00004fe8 <Cutscene_SetSegment>:
    4fe8:	00051100 	sll	v0,a1,0x4
    4fec:	00021702 	srl	v0,v0,0x1c
    4ff0:	1040000c 	beqz	v0,5024 <Cutscene_SetSegment+0x3c>
    4ff4:	00027080 	sll	t6,v0,0x2
    4ff8:	3c0f0000 	lui	t7,0x0
    4ffc:	01ee7821 	addu	t7,t7,t6
    5000:	3c0100ff 	lui	at,0xff
    5004:	8def0000 	lw	t7,0(t7)
    5008:	3421ffff 	ori	at,at,0xffff
    500c:	00a1c024 	and	t8,a1,at
    5010:	3c018000 	lui	at,0x8000
    5014:	01f8c821 	addu	t9,t7,t8
    5018:	03214021 	addu	t0,t9,at
    501c:	03e00008 	jr	ra
    5020:	ac881d68 	sw	t0,7528(a0)
    5024:	ac851d68 	sw	a1,7528(a0)
    5028:	03e00008 	jr	ra
    502c:	00000000 	nop
