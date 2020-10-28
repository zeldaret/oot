
build/src/code/graph.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Graph_FaultClient>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf0014 	sw	ra,20(sp)
       8:	0c000000 	jal	0 <Graph_FaultClient>
       c:	00000000 	nop
      10:	afa2001c 	sw	v0,28(sp)
      14:	0c000000 	jal	0 <Graph_FaultClient>
      18:	00002025 	move	a0,zero
      1c:	8fae001c 	lw	t6,28(sp)
      20:	104e0005 	beq	v0,t6,38 <Graph_FaultClient+0x38>
      24:	00000000 	nop
      28:	0c000000 	jal	0 <Graph_FaultClient>
      2c:	00002025 	move	a0,zero
      30:	10000004 	b	44 <Graph_FaultClient+0x44>
      34:	00402025 	move	a0,v0
      38:	0c000000 	jal	0 <Graph_FaultClient>
      3c:	24040001 	li	a0,1
      40:	00402025 	move	a0,v0
      44:	0c000000 	jal	0 <Graph_FaultClient>
      48:	00000000 	nop
      4c:	0c000000 	jal	0 <Graph_FaultClient>
      50:	00000000 	nop
      54:	0c000000 	jal	0 <Graph_FaultClient>
      58:	8fa4001c 	lw	a0,28(sp)
      5c:	8fbf0014 	lw	ra,20(sp)
      60:	27bd0020 	addiu	sp,sp,32
      64:	03e00008 	jr	ra
      68:	00000000 	nop

0000006c <Graph_DisassembleUCode>:
      6c:	3c020000 	lui	v0,0x0
      70:	24420000 	addiu	v0,v0,0
      74:	8c430000 	lw	v1,0(v0)
      78:	27bdff08 	addiu	sp,sp,-248
      7c:	afbf0014 	sw	ra,20(sp)
      80:	afa400f8 	sw	a0,248(sp)
      84:	846e1074 	lh	t6,4212(v1)
      88:	24010007 	li	at,7
      8c:	55c10071 	bnel	t6,at,254 <Graph_DisassembleUCode+0x1e8>
      90:	8fbf0014 	lw	ra,20(sp)
      94:	846f1076 	lh	t7,4214(v1)
      98:	51e0006e 	beqzl	t7,254 <Graph_DisassembleUCode+0x1e8>
      9c:	8fbf0014 	lw	ra,20(sp)
      a0:	0c000000 	jal	0 <Graph_FaultClient>
      a4:	27a40020 	addiu	a0,sp,32
      a8:	3c020000 	lui	v0,0x0
      ac:	24420000 	addiu	v0,v0,0
      b0:	8c580000 	lw	t8,0(v0)
      b4:	3c060000 	lui	a2,0x0
      b8:	24c60000 	addiu	a2,a2,0
      bc:	8719107a 	lh	t9,4218(t8)
      c0:	27a40020 	addiu	a0,sp,32
      c4:	24050003 	li	a1,3
      c8:	0c000000 	jal	0 <Graph_FaultClient>
      cc:	afb900dc 	sw	t9,220(sp)
      d0:	3c050000 	lui	a1,0x0
      d4:	24a50000 	addiu	a1,a1,0
      d8:	0c000000 	jal	0 <Graph_FaultClient>
      dc:	27a40020 	addiu	a0,sp,32
      e0:	27a40020 	addiu	a0,sp,32
      e4:	0c000000 	jal	0 <Graph_FaultClient>
      e8:	8fa500f8 	lw	a1,248(sp)
      ec:	3c020000 	lui	v0,0x0
      f0:	24420000 	addiu	v0,v0,0
      f4:	8c490000 	lw	t1,0(v0)
      f8:	8fa800ac 	lw	t0,172(sp)
      fc:	24010001 	li	at,1
     100:	3c040000 	lui	a0,0x0
     104:	a528108e 	sh	t0,4238(t1)
     108:	8faa00bc 	lw	t2,188(sp)
     10c:	8fae00c0 	lw	t6,192(sp)
     110:	8fac00b8 	lw	t4,184(sp)
     114:	8fb900c4 	lw	t9,196(sp)
     118:	000a5840 	sll	t3,t2,0x1
     11c:	8c490000 	lw	t1,0(v0)
     120:	000e7840 	sll	t7,t6,0x1
     124:	016c6821 	addu	t5,t3,t4
     128:	01afc021 	addu	t8,t5,t7
     12c:	03194021 	addu	t0,t8,t9
     130:	a528107c 	sh	t0,4220(t1)
     134:	8c4b0000 	lw	t3,0(v0)
     138:	8faa00b0 	lw	t2,176(sp)
     13c:	24840000 	addiu	a0,a0,0
     140:	a56a107e 	sh	t2,4222(t3)
     144:	8c4e0000 	lw	t6,0(v0)
     148:	8fac00b4 	lw	t4,180(sp)
     14c:	a5cc1080 	sh	t4,4224(t6)
     150:	8c4f0000 	lw	t7,0(v0)
     154:	8fad00b8 	lw	t5,184(sp)
     158:	a5ed1082 	sh	t5,4226(t7)
     15c:	8c590000 	lw	t9,0(v0)
     160:	8fb800bc 	lw	t8,188(sp)
     164:	a7381084 	sh	t8,4228(t9)
     168:	8c490000 	lw	t1,0(v0)
     16c:	8fa800c0 	lw	t0,192(sp)
     170:	a5281086 	sh	t0,4230(t1)
     174:	8c4b0000 	lw	t3,0(v0)
     178:	8faa00c4 	lw	t2,196(sp)
     17c:	a56a1088 	sh	t2,4232(t3)
     180:	8c4e0000 	lw	t6,0(v0)
     184:	8fac00d8 	lw	t4,216(sp)
     188:	a5cc108a 	sh	t4,4234(t6)
     18c:	8c4f0000 	lw	t7,0(v0)
     190:	8fad00c8 	lw	t5,200(sp)
     194:	a5ed108c 	sh	t5,4236(t7)
     198:	8c580000 	lw	t8,0(v0)
     19c:	87031078 	lh	v1,4216(t8)
     1a0:	10610003 	beq	v1,at,1b0 <Graph_DisassembleUCode+0x144>
     1a4:	24010002 	li	at,2
     1a8:	14610027 	bne	v1,at,248 <Graph_DisassembleUCode+0x1dc>
     1ac:	00000000 	nop
     1b0:	0c000000 	jal	0 <Graph_FaultClient>
     1b4:	8fa500b0 	lw	a1,176(sp)
     1b8:	3c040000 	lui	a0,0x0
     1bc:	2484000c 	addiu	a0,a0,12
     1c0:	0c000000 	jal	0 <Graph_FaultClient>
     1c4:	8fa500b4 	lw	a1,180(sp)
     1c8:	3c040000 	lui	a0,0x0
     1cc:	2484001c 	addiu	a0,a0,28
     1d0:	0c000000 	jal	0 <Graph_FaultClient>
     1d4:	8fa500b8 	lw	a1,184(sp)
     1d8:	3c040000 	lui	a0,0x0
     1dc:	2484002c 	addiu	a0,a0,44
     1e0:	0c000000 	jal	0 <Graph_FaultClient>
     1e4:	8fa500bc 	lw	a1,188(sp)
     1e8:	3c040000 	lui	a0,0x0
     1ec:	2484003c 	addiu	a0,a0,60
     1f0:	0c000000 	jal	0 <Graph_FaultClient>
     1f4:	8fa500c0 	lw	a1,192(sp)
     1f8:	3c040000 	lui	a0,0x0
     1fc:	2484004c 	addiu	a0,a0,76
     200:	0c000000 	jal	0 <Graph_FaultClient>
     204:	8fa500c4 	lw	a1,196(sp)
     208:	3c040000 	lui	a0,0x0
     20c:	2484005c 	addiu	a0,a0,92
     210:	0c000000 	jal	0 <Graph_FaultClient>
     214:	8fa500d8 	lw	a1,216(sp)
     218:	3c040000 	lui	a0,0x0
     21c:	2484006c 	addiu	a0,a0,108
     220:	0c000000 	jal	0 <Graph_FaultClient>
     224:	8fa500c8 	lw	a1,200(sp)
     228:	3c040000 	lui	a0,0x0
     22c:	24840080 	addiu	a0,a0,128
     230:	0c000000 	jal	0 <Graph_FaultClient>
     234:	8fa500a8 	lw	a1,168(sp)
     238:	3c040000 	lui	a0,0x0
     23c:	24840090 	addiu	a0,a0,144
     240:	0c000000 	jal	0 <Graph_FaultClient>
     244:	8fa500ac 	lw	a1,172(sp)
     248:	0c000000 	jal	0 <Graph_FaultClient>
     24c:	27a40020 	addiu	a0,sp,32
     250:	8fbf0014 	lw	ra,20(sp)
     254:	27bd00f8 	addiu	sp,sp,248
     258:	03e00008 	jr	ra
     25c:	00000000 	nop

00000260 <Graph_UCodeFaultClient>:
     260:	27bdff10 	addiu	sp,sp,-240
     264:	afbf0014 	sw	ra,20(sp)
     268:	afa400f0 	sw	a0,240(sp)
     26c:	0c000000 	jal	0 <Graph_FaultClient>
     270:	27a40018 	addiu	a0,sp,24
     274:	240e0001 	li	t6,1
     278:	3c060000 	lui	a2,0x0
     27c:	afae00d4 	sw	t6,212(sp)
     280:	24c60000 	addiu	a2,a2,0
     284:	27a40018 	addiu	a0,sp,24
     288:	0c000000 	jal	0 <Graph_FaultClient>
     28c:	24050003 	li	a1,3
     290:	3c050000 	lui	a1,0x0
     294:	24a50000 	addiu	a1,a1,0
     298:	0c000000 	jal	0 <Graph_FaultClient>
     29c:	27a40018 	addiu	a0,sp,24
     2a0:	27a40018 	addiu	a0,sp,24
     2a4:	0c000000 	jal	0 <Graph_FaultClient>
     2a8:	8fa500f0 	lw	a1,240(sp)
     2ac:	0c000000 	jal	0 <Graph_FaultClient>
     2b0:	27a40018 	addiu	a0,sp,24
     2b4:	8fbf0014 	lw	ra,20(sp)
     2b8:	27bd00f0 	addiu	sp,sp,240
     2bc:	03e00008 	jr	ra
     2c0:	00000000 	nop

000002c4 <Graph_InitTHGA>:
     2c4:	27bdffc8 	addiu	sp,sp,-56
     2c8:	afbf001c 	sw	ra,28(sp)
     2cc:	afb10018 	sw	s1,24(sp)
     2d0:	afb00014 	sw	s0,20(sp)
     2d4:	8c8e02d8 	lw	t6,728(a0)
     2d8:	3c190000 	lui	t9,0x0
     2dc:	27390000 	addiu	t9,t9,0
     2e0:	31cf0001 	andi	t7,t6,0x1
     2e4:	000fc0c0 	sll	t8,t7,0x3
     2e8:	030fc021 	addu	t8,t8,t7
     2ec:	0018c0c0 	sll	t8,t8,0x3
     2f0:	030fc021 	addu	t8,t8,t7
     2f4:	0018c180 	sll	t8,t8,0x6
     2f8:	030fc021 	addu	t8,t8,t7
     2fc:	0018c100 	sll	t8,t8,0x4
     300:	03198821 	addu	s1,t8,t9
     304:	24081234 	li	t0,4660
     308:	3c010001 	lui	at,0x1
     30c:	a6280000 	sh	t0,0(s1)
     310:	00310821 	addu	at,at,s1
     314:	24095678 	li	t1,22136
     318:	00808025 	move	s0,a0
     31c:	a4292408 	sh	t1,9224(at)
     320:	26250008 	addiu	a1,s1,8
     324:	afa50030 	sw	a1,48(sp)
     328:	248402b8 	addiu	a0,a0,696
     32c:	0c000000 	jal	0 <Graph_FaultClient>
     330:	3406bf00 	li	a2,0xbf00
     334:	3401bf08 	li	at,0xbf08
     338:	02212821 	addu	a1,s1,at
     33c:	afa5002c 	sw	a1,44(sp)
     340:	260402c8 	addiu	a0,s0,712
     344:	0c000000 	jal	0 <Graph_FaultClient>
     348:	24064000 	li	a2,16384
     34c:	3401ff08 	li	at,0xff08
     350:	02212821 	addu	a1,s1,at
     354:	afa50028 	sw	a1,40(sp)
     358:	260402a8 	addiu	a0,s0,680
     35c:	0c000000 	jal	0 <Graph_FaultClient>
     360:	24062000 	li	a2,8192
     364:	3c010001 	lui	at,0x1
     368:	34211f08 	ori	at,at,0x1f08
     36c:	02212821 	addu	a1,s1,at
     370:	afa50024 	sw	a1,36(sp)
     374:	260401b4 	addiu	a0,s0,436
     378:	0c000000 	jal	0 <Graph_FaultClient>
     37c:	24060400 	li	a2,1024
     380:	8faa0030 	lw	t2,48(sp)
     384:	8fa50024 	lw	a1,36(sp)
     388:	8e0402e8 	lw	a0,744(s0)
     38c:	ae0a0000 	sw	t2,0(s0)
     390:	8fab002c 	lw	t3,44(sp)
     394:	ae0b0004 	sw	t3,4(s0)
     398:	8fac0028 	lw	t4,40(sp)
     39c:	ae0501b0 	sw	a1,432(s0)
     3a0:	ae0c0010 	sw	t4,16(s0)
     3a4:	04810004 	bgez	a0,3b8 <Graph_InitTHGA+0xf4>
     3a8:	30840001 	andi	a0,a0,0x1
     3ac:	10800002 	beqz	a0,3b8 <Graph_InitTHGA+0xf4>
     3b0:	00000000 	nop
     3b4:	2484fffe 	addiu	a0,a0,-2
     3b8:	0c000000 	jal	0 <Graph_FaultClient>
     3bc:	00000000 	nop
     3c0:	ae0202dc 	sw	v0,732(s0)
     3c4:	ae000014 	sw	zero,20(s0)
     3c8:	8fbf001c 	lw	ra,28(sp)
     3cc:	8fb10018 	lw	s1,24(sp)
     3d0:	8fb00014 	lw	s0,20(sp)
     3d4:	03e00008 	jr	ra
     3d8:	27bd0038 	addiu	sp,sp,56

000003dc <Graph_GetNextGameState>:
     3dc:	27bdffe0 	addiu	sp,sp,-32
     3e0:	afbf0014 	sw	ra,20(sp)
     3e4:	0c000000 	jal	0 <Graph_FaultClient>
     3e8:	00000000 	nop
     3ec:	3c0e0000 	lui	t6,0x0
     3f0:	25ce0000 	addiu	t6,t6,0
     3f4:	144e0004 	bne	v0,t6,408 <Graph_GetNextGameState+0x2c>
     3f8:	00403025 	move	a2,v0
     3fc:	3c020000 	lui	v0,0x0
     400:	10000029 	b	4a8 <Graph_GetNextGameState+0xcc>
     404:	24420000 	addiu	v0,v0,0
     408:	3c0f0000 	lui	t7,0x0
     40c:	25ef0000 	addiu	t7,t7,0
     410:	144f0004 	bne	v0,t7,424 <Graph_GetNextGameState+0x48>
     414:	3c180000 	lui	t8,0x0
     418:	3c020000 	lui	v0,0x0
     41c:	10000022 	b	4a8 <Graph_GetNextGameState+0xcc>
     420:	24420030 	addiu	v0,v0,48
     424:	27180000 	addiu	t8,t8,0
     428:	14580004 	bne	v0,t8,43c <Graph_GetNextGameState+0x60>
     42c:	3c190000 	lui	t9,0x0
     430:	3c020000 	lui	v0,0x0
     434:	1000001c 	b	4a8 <Graph_GetNextGameState+0xcc>
     438:	24420060 	addiu	v0,v0,96
     43c:	27390000 	addiu	t9,t9,0
     440:	14590004 	bne	v0,t9,454 <Graph_GetNextGameState+0x78>
     444:	3c080000 	lui	t0,0x0
     448:	3c020000 	lui	v0,0x0
     44c:	10000016 	b	4a8 <Graph_GetNextGameState+0xcc>
     450:	24420090 	addiu	v0,v0,144
     454:	25080000 	addiu	t0,t0,0
     458:	14480004 	bne	v0,t0,46c <Graph_GetNextGameState+0x90>
     45c:	3c090000 	lui	t1,0x0
     460:	3c020000 	lui	v0,0x0
     464:	10000010 	b	4a8 <Graph_GetNextGameState+0xcc>
     468:	244200c0 	addiu	v0,v0,192
     46c:	25290000 	addiu	t1,t1,0
     470:	14490004 	bne	v0,t1,484 <Graph_GetNextGameState+0xa8>
     474:	3c040000 	lui	a0,0x0
     478:	3c020000 	lui	v0,0x0
     47c:	1000000a 	b	4a8 <Graph_GetNextGameState+0xcc>
     480:	244200f0 	addiu	v0,v0,240
     484:	2484009c 	addiu	a0,a0,156
     488:	240502b8 	li	a1,696
     48c:	0c000000 	jal	0 <Graph_FaultClient>
     490:	afa6001c 	sw	a2,28(sp)
     494:	3c040000 	lui	a0,0x0
     498:	248400a8 	addiu	a0,a0,168
     49c:	0c000000 	jal	0 <Graph_FaultClient>
     4a0:	8fa5001c 	lw	a1,28(sp)
     4a4:	00001025 	move	v0,zero
     4a8:	8fbf0014 	lw	ra,20(sp)
     4ac:	27bd0020 	addiu	sp,sp,32
     4b0:	03e00008 	jr	ra
     4b4:	00000000 	nop

000004b8 <Graph_Init>:
     4b8:	27bdffe8 	addiu	sp,sp,-24
     4bc:	afbf0014 	sw	ra,20(sp)
     4c0:	afa40018 	sw	a0,24(sp)
     4c4:	0c000000 	jal	0 <Graph_FaultClient>
     4c8:	24050300 	li	a1,768
     4cc:	8fa70018 	lw	a3,24(sp)
     4d0:	3c0e0000 	lui	t6,0x0
     4d4:	3c010000 	lui	at,0x0
     4d8:	ace002d8 	sw	zero,728(a3)
     4dc:	ace002e8 	sw	zero,744(a3)
     4e0:	ace00284 	sw	zero,644(a3)
     4e4:	8dce0000 	lw	t6,0(t6)
     4e8:	24060008 	li	a2,8
     4ec:	24e4005c 	addiu	a0,a3,92
     4f0:	acee02e4 	sw	t6,740(a3)
     4f4:	c4240000 	lwc1	$f4,0(at)
     4f8:	3c010000 	lui	at,0x0
     4fc:	24e50038 	addiu	a1,a3,56
     500:	e4e402f4 	swc1	$f4,756(a3)
     504:	c4260000 	lwc1	$f6,0(at)
     508:	0c000000 	jal	0 <Graph_FaultClient>
     50c:	e4e602f8 	swc1	$f6,760(a3)
     510:	0c000000 	jal	0 <Graph_FaultClient>
     514:	00000000 	nop
     518:	3c040000 	lui	a0,0x0
     51c:	3c050000 	lui	a1,0x0
     520:	24a50000 	addiu	a1,a1,0
     524:	24840000 	addiu	a0,a0,0
     528:	00003025 	move	a2,zero
     52c:	0c000000 	jal	0 <Graph_FaultClient>
     530:	00003825 	move	a3,zero
     534:	8fbf0014 	lw	ra,20(sp)
     538:	27bd0018 	addiu	sp,sp,24
     53c:	03e00008 	jr	ra
     540:	00000000 	nop

00000544 <Graph_Destroy>:
     544:	27bdffe8 	addiu	sp,sp,-24
     548:	afbf0014 	sw	ra,20(sp)
     54c:	0c000000 	jal	0 <Graph_FaultClient>
     550:	afa40018 	sw	a0,24(sp)
     554:	3c040000 	lui	a0,0x0
     558:	0c000000 	jal	0 <Graph_FaultClient>
     55c:	24840000 	addiu	a0,a0,0
     560:	8fbf0014 	lw	ra,20(sp)
     564:	27bd0018 	addiu	sp,sp,24
     568:	03e00008 	jr	ra
     56c:	00000000 	nop

00000570 <Graph_TaskSet00>:
     570:	27bdff68 	addiu	sp,sp,-152
     574:	afbf002c 	sw	ra,44(sp)
     578:	afb10028 	sw	s1,40(sp)
     57c:	00808825 	move	s1,a0
     580:	0c000000 	jal	0 <Graph_FaultClient>
     584:	afb00024 	sw	s0,36(sp)
     588:	3c0e0000 	lui	t6,0x0
     58c:	3c0f0000 	lui	t7,0x0
     590:	8def0004 	lw	t7,4(t7)
     594:	8dce0000 	lw	t6,0(t6)
     598:	3c100000 	lui	s0,0x0
     59c:	26100000 	addiu	s0,s0,0
     5a0:	8e080000 	lw	t0,0(s0)
     5a4:	8e090004 	lw	t1,4(s0)
     5a8:	006f082b 	sltu	at,v1,t7
     5ac:	004ec023 	subu	t8,v0,t6
     5b0:	0301c023 	subu	t8,t8,at
     5b4:	006fc823 	subu	t9,v1,t7
     5b8:	3c0c0000 	lui	t4,0x0
     5bc:	03085023 	subu	t2,t8,t0
     5c0:	0329082b 	sltu	at,t9,t1
     5c4:	01415023 	subu	t2,t2,at
     5c8:	258c0000 	addiu	t4,t4,0
     5cc:	ad8a0000 	sw	t2,0(t4)
     5d0:	03295823 	subu	t3,t9,t1
     5d4:	ad8b0004 	sw	t3,4(t4)
     5d8:	240f0000 	li	t7,0
     5dc:	240e0000 	li	t6,0
     5e0:	3c070861 	lui	a3,0x861
     5e4:	2625005c 	addiu	a1,s1,92
     5e8:	240d029a 	li	t5,666
     5ec:	afad001c 	sw	t5,28(sp)
     5f0:	afa50018 	sw	a1,24(sp)
     5f4:	afa50038 	sw	a1,56(sp)
     5f8:	34e7c468 	ori	a3,a3,0xc468
     5fc:	afae0010 	sw	t6,16(sp)
     600:	afaf0014 	sw	t7,20(sp)
     604:	27a40070 	addiu	a0,sp,112
     608:	0c000000 	jal	0 <Graph_FaultClient>
     60c:	24060000 	li	a2,0
     610:	8fa40038 	lw	a0,56(sp)
     614:	27a5006c 	addiu	a1,sp,108
     618:	0c000000 	jal	0 <Graph_FaultClient>
     61c:	24060001 	li	a2,1
     620:	0c000000 	jal	0 <Graph_FaultClient>
     624:	27a40070 	addiu	a0,sp,112
     628:	8fb8006c 	lw	t8,108(sp)
     62c:	2401029a 	li	at,666
     630:	1701002c 	bne	t8,at,6e4 <Graph_TaskSet00+0x174>
     634:	3c040000 	lui	a0,0x0
     638:	0c000000 	jal	0 <Graph_FaultClient>
     63c:	248400c0 	addiu	a0,a0,192
     640:	3c040000 	lui	a0,0x0
     644:	0c000000 	jal	0 <Graph_FaultClient>
     648:	248400c8 	addiu	a0,a0,200
     64c:	3c040000 	lui	a0,0x0
     650:	0c000000 	jal	0 <Graph_FaultClient>
     654:	248400e4 	addiu	a0,a0,228
     658:	3c04a404 	lui	a0,0xa404
     65c:	0c000000 	jal	0 <Graph_FaultClient>
     660:	24050020 	li	a1,32
     664:	3c04a410 	lui	a0,0xa410
     668:	0c000000 	jal	0 <Graph_FaultClient>
     66c:	24050020 	li	a1,32
     670:	3c040000 	lui	a0,0x0
     674:	24840000 	addiu	a0,a0,0
     678:	0c000000 	jal	0 <Graph_FaultClient>
     67c:	24050c00 	li	a1,3072
     680:	3c020000 	lui	v0,0x0
     684:	3c040000 	lui	a0,0x0
     688:	8c840030 	lw	a0,48(a0)
     68c:	24420000 	addiu	v0,v0,0
     690:	8c480000 	lw	t0,0(v0)
     694:	2419ffff 	li	t9,-1
     698:	1080000d 	beqz	a0,6d0 <Graph_TaskSet00+0x160>
     69c:	a51900e0 	sh	t9,224(t0)
     6a0:	8c4a0000 	lw	t2,0(v0)
     6a4:	24090007 	li	t1,7
     6a8:	240b0001 	li	t3,1
     6ac:	a5491074 	sh	t1,4212(t2)
     6b0:	8c4c0000 	lw	t4,0(v0)
     6b4:	240e0002 	li	t6,2
     6b8:	3c010000 	lui	at,0x0
     6bc:	a58b1076 	sh	t3,4214(t4)
     6c0:	8c4f0000 	lw	t7,0(v0)
     6c4:	a5ee107a 	sh	t6,4218(t7)
     6c8:	0c000000 	jal	0 <Graph_FaultClient>
     6cc:	ac240030 	sw	a0,48(at)
     6d0:	3c040000 	lui	a0,0x0
     6d4:	3c050000 	lui	a1,0x0
     6d8:	24a500fc 	addiu	a1,a1,252
     6dc:	0c000000 	jal	0 <Graph_FaultClient>
     6e0:	248400e8 	addiu	a0,a0,232
     6e4:	8fa40038 	lw	a0,56(sp)
     6e8:	27a5006c 	addiu	a1,sp,108
     6ec:	0c000000 	jal	0 <Graph_FaultClient>
     6f0:	00003025 	move	a2,zero
     6f4:	8e2602ec 	lw	a2,748(s1)
     6f8:	8e2401b0 	lw	a0,432(s1)
     6fc:	3c010000 	lui	at,0x0
     700:	10c00004 	beqz	a2,714 <Graph_TaskSet00+0x1a4>
     704:	ac240030 	sw	a0,48(at)
     708:	02202025 	move	a0,s1
     70c:	00c0f809 	jalr	a2
     710:	8e2502f0 	lw	a1,752(s1)
     714:	0c000000 	jal	0 <Graph_FaultClient>
     718:	00000000 	nop
     71c:	3c040000 	lui	a0,0x0
     720:	24840000 	addiu	a0,a0,0
     724:	8c980000 	lw	t8,0(a0)
     728:	8c990004 	lw	t9,4(a0)
     72c:	57000004 	bnezl	t8,740 <Graph_TaskSet00+0x1d0>
     730:	8e080000 	lw	t0,0(s0)
     734:	53200012 	beqzl	t9,780 <Graph_TaskSet00+0x210>
     738:	8e180000 	lw	t8,0(s0)
     73c:	8e080000 	lw	t0,0(s0)
     740:	8e090004 	lw	t1,4(s0)
     744:	8c8c0000 	lw	t4,0(a0)
     748:	8c8d0004 	lw	t5,4(a0)
     74c:	01235821 	addu	t3,t1,v1
     750:	0163082b 	sltu	at,t3,v1
     754:	00285021 	addu	t2,at,t0
     758:	01425021 	addu	t2,t2,v0
     75c:	014c7023 	subu	t6,t2,t4
     760:	016d082b 	sltu	at,t3,t5
     764:	01c17023 	subu	t6,t6,at
     768:	ae0e0000 	sw	t6,0(s0)
     76c:	016d7823 	subu	t7,t3,t5
     770:	ae0f0004 	sw	t7,4(s0)
     774:	ac820000 	sw	v0,0(a0)
     778:	ac830004 	sw	v1,4(a0)
     77c:	8e180000 	lw	t8,0(s0)
     780:	8e190004 	lw	t9,4(s0)
     784:	3c080000 	lui	t0,0x0
     788:	25080000 	addiu	t0,t0,0
     78c:	ad180000 	sw	t8,0(t0)
     790:	240a0000 	li	t2,0
     794:	ad190004 	sw	t9,4(t0)
     798:	ae0a0000 	sw	t2,0(s0)
     79c:	240b0000 	li	t3,0
     7a0:	0c000000 	jal	0 <Graph_FaultClient>
     7a4:	ae0b0004 	sw	t3,4(s0)
     7a8:	3c010000 	lui	at,0x0
     7ac:	ac220000 	sw	v0,0(at)
     7b0:	ac230004 	sw	v1,4(at)
     7b4:	26300088 	addiu	s0,s1,136
     7b8:	24090001 	li	t1,1
     7bc:	240c0004 	li	t4,4
     7c0:	ae090000 	sw	t1,0(s0)
     7c4:	0c000000 	jal	0 <Graph_FaultClient>
     7c8:	ae0c0004 	sw	t4,4(s0)
     7cc:	0c000000 	jal	0 <Graph_FaultClient>
     7d0:	ae020008 	sw	v0,8(s0)
     7d4:	0c000000 	jal	0 <Graph_FaultClient>
     7d8:	ae02000c 	sw	v0,12(s0)
     7dc:	0c000000 	jal	0 <Graph_FaultClient>
     7e0:	ae020010 	sw	v0,16(s0)
     7e4:	3c0f0000 	lui	t7,0x0
     7e8:	3c190000 	lui	t9,0x0
     7ec:	3c080002 	lui	t0,0x2
     7f0:	240d1000 	li	t5,4096
     7f4:	240e0800 	li	t6,2048
     7f8:	25ef0000 	addiu	t7,t7,0
     7fc:	24180400 	li	t8,1024
     800:	27390000 	addiu	t9,t9,0
     804:	25088000 	addiu	t0,t0,-32768
     808:	ae020018 	sw	v0,24(s0)
     80c:	ae0d0014 	sw	t5,20(s0)
     810:	ae0e001c 	sw	t6,28(s0)
     814:	ae0f0020 	sw	t7,32(s0)
     818:	ae180024 	sw	t8,36(s0)
     81c:	ae190028 	sw	t9,40(s0)
     820:	ae08002c 	sw	t0,44(s0)
     824:	8e2a01b0 	lw	t2,432(s1)
     828:	3c060000 	lui	a2,0x0
     82c:	24c6010c 	addiu	a2,a2,268
     830:	27a40048 	addiu	a0,sp,72
     834:	02202825 	move	a1,s1
     838:	2407033c 	li	a3,828
     83c:	0c000000 	jal	0 <Graph_FaultClient>
     840:	ae0a0030 	sw	t2,48(s0)
     844:	8e2b01bc 	lw	t3,444(s1)
     848:	8e2901b0 	lw	t1,432(s1)
     84c:	3c060000 	lui	a2,0x0
     850:	24c60118 	addiu	a2,a2,280
     854:	01696023 	subu	t4,t3,t1
     858:	ae0c0034 	sw	t4,52(s0)
     85c:	27a40048 	addiu	a0,sp,72
     860:	02202825 	move	a1,s1
     864:	0c000000 	jal	0 <Graph_FaultClient>
     868:	2407033e 	li	a3,830
     86c:	3c0d0000 	lui	t5,0x0
     870:	25ad0000 	addiu	t5,t5,0
     874:	240e0c00 	li	t6,3072
     878:	ae0d0038 	sw	t5,56(s0)
     87c:	ae0e003c 	sw	t6,60(s0)
     880:	26250078 	addiu	a1,s1,120
     884:	240f0063 	li	t7,99
     888:	aca00000 	sw	zero,0(a1)
     88c:	acaf0008 	sw	t7,8(a1)
     890:	3c020000 	lui	v0,0x0
     894:	8c420000 	lw	v0,0(v0)
     898:	3c0e0000 	lui	t6,0x0
     89c:	25ce0000 	addiu	t6,t6,0
     8a0:	84430116 	lh	v1,278(v0)
     8a4:	30780001 	andi	t8,v1,0x1
     8a8:	13000009 	beqz	t8,8d0 <Graph_TaskSet00+0x360>
     8ac:	3079fffe 	andi	t9,v1,0xfffe
     8b0:	a4590116 	sh	t9,278(v0)
     8b4:	8ca80008 	lw	t0,8(a1)
     8b8:	2401ffbf 	li	at,-65
     8bc:	01015024 	and	t2,t0,at
     8c0:	acaa0008 	sw	t2,8(a1)
     8c4:	8e2b02e8 	lw	t3,744(s1)
     8c8:	2569ffff 	addiu	t1,t3,-1
     8cc:	ae2902e8 	sw	t1,744(s1)
     8d0:	3c030000 	lui	v1,0x0
     8d4:	8c630034 	lw	v1,52(v1)
     8d8:	24010003 	li	at,3
     8dc:	8fac0038 	lw	t4,56(sp)
     8e0:	000368c0 	sll	t5,v1,0x3
     8e4:	01a36823 	subu	t5,t5,v1
     8e8:	24630001 	addiu	v1,v1,1
     8ec:	0061001a 	div	zero,v1,at
     8f0:	aca00054 	sw	zero,84(a1)
     8f4:	acac0050 	sw	t4,80(a1)
     8f8:	8e2f02dc 	lw	t7,732(s1)
     8fc:	000d6880 	sll	t5,t5,0x2
     900:	01ae1021 	addu	v0,t5,t6
     904:	ac4f0000 	sw	t7,0(v0)
     908:	8e3802dc 	lw	t8,732(s1)
     90c:	3c0a0000 	lui	t2,0x0
     910:	00001810 	mfhi	v1
     914:	ac580004 	sw	t8,4(v0)
     918:	8e390284 	lw	t9,644(s1)
     91c:	3c010000 	lui	at,0x0
     920:	3c040000 	lui	a0,0x0
     924:	ac590008 	sw	t9,8(v0)
     928:	8e2802e4 	lw	t0,740(s1)
     92c:	24840038 	addiu	a0,a0,56
     930:	24060001 	li	a2,1
     934:	ac48000c 	sw	t0,12(v0)
     938:	c62402f4 	lwc1	$f4,756(s1)
     93c:	e4440014 	swc1	$f4,20(v0)
     940:	c62602f8 	lwc1	$f6,760(s1)
     944:	a0400010 	sb	zero,16(v0)
     948:	e4460018 	swc1	$f6,24(v0)
     94c:	8d4a0000 	lw	t2,0(t2)
     950:	854b0110 	lh	t3,272(t2)
     954:	a04b0011 	sb	t3,17(v0)
     958:	aca2000c 	sw	v0,12(a1)
     95c:	ac230034 	sw	v1,52(at)
     960:	0c000000 	jal	0 <Graph_FaultClient>
     964:	ae240058 	sw	a0,88(s1)
     968:	3c040000 	lui	a0,0x0
     96c:	0c000000 	jal	0 <Graph_FaultClient>
     970:	24840000 	addiu	a0,a0,0
     974:	8fbf002c 	lw	ra,44(sp)
     978:	8fb00024 	lw	s0,36(sp)
     97c:	8fb10028 	lw	s1,40(sp)
     980:	03e00008 	jr	ra
     984:	27bd0098 	addiu	sp,sp,152

00000988 <Graph_Update>:
     988:	27bdff38 	addiu	sp,sp,-200
     98c:	afbf001c 	sw	ra,28(sp)
     990:	afb00018 	sw	s0,24(sp)
     994:	afa500cc 	sw	a1,204(sp)
     998:	00808025 	move	s0,a0
     99c:	0c000000 	jal	0 <Graph_FaultClient>
     9a0:	aca000a0 	sw	zero,160(a1)
     9a4:	3c060000 	lui	a2,0x0
     9a8:	24c60124 	addiu	a2,a2,292
     9ac:	27a400b0 	addiu	a0,sp,176
     9b0:	02002825 	move	a1,s0
     9b4:	0c000000 	jal	0 <Graph_FaultClient>
     9b8:	240703c6 	li	a3,966
     9bc:	8e0201bc 	lw	v0,444(s0)
     9c0:	3c180000 	lui	t8,0x0
     9c4:	27180130 	addiu	t8,t8,304
     9c8:	244f0008 	addiu	t7,v0,8
     9cc:	ae0f01bc 	sw	t7,444(s0)
     9d0:	3c080002 	lui	t0,0x2
     9d4:	ac480000 	sw	t0,0(v0)
     9d8:	ac580004 	sw	t8,4(v0)
     9dc:	8e0202c0 	lw	v0,704(s0)
     9e0:	3c090000 	lui	t1,0x0
     9e4:	25290140 	addiu	t1,t1,320
     9e8:	24590008 	addiu	t9,v0,8
     9ec:	ae1902c0 	sw	t9,704(s0)
     9f0:	ac490004 	sw	t1,4(v0)
     9f4:	ac480000 	sw	t0,0(v0)
     9f8:	8e0202d0 	lw	v0,720(s0)
     9fc:	3c0b0000 	lui	t3,0x0
     a00:	256b0154 	addiu	t3,t3,340
     a04:	244a0008 	addiu	t2,v0,8
     a08:	ae0a02d0 	sw	t2,720(s0)
     a0c:	ac4b0004 	sw	t3,4(v0)
     a10:	ac480000 	sw	t0,0(v0)
     a14:	8e0202b0 	lw	v0,688(s0)
     a18:	3c0d0000 	lui	t5,0x0
     a1c:	25ad0168 	addiu	t5,t5,360
     a20:	244c0008 	addiu	t4,v0,8
     a24:	ae0c02b0 	sw	t4,688(s0)
     a28:	3c060000 	lui	a2,0x0
     a2c:	24c6017c 	addiu	a2,a2,380
     a30:	27a400b0 	addiu	a0,sp,176
     a34:	02002825 	move	a1,s0
     a38:	240703cf 	li	a3,975
     a3c:	ac4d0004 	sw	t5,4(v0)
     a40:	0c000000 	jal	0 <Graph_FaultClient>
     a44:	ac480000 	sw	t0,0(v0)
     a48:	0c000000 	jal	0 <Graph_FaultClient>
     a4c:	8fa400cc 	lw	a0,204(sp)
     a50:	0c000000 	jal	0 <Graph_FaultClient>
     a54:	8fa400cc 	lw	a0,204(sp)
     a58:	3c060000 	lui	a2,0x0
     a5c:	24c60188 	addiu	a2,a2,392
     a60:	27a4008c 	addiu	a0,sp,140
     a64:	02002825 	move	a1,s0
     a68:	0c000000 	jal	0 <Graph_FaultClient>
     a6c:	240703db 	li	a3,987
     a70:	8e0201bc 	lw	v0,444(s0)
     a74:	3c0f0000 	lui	t7,0x0
     a78:	3c080002 	lui	t0,0x2
     a7c:	244e0008 	addiu	t6,v0,8
     a80:	ae0e01bc 	sw	t6,444(s0)
     a84:	25ef0194 	addiu	t7,t7,404
     a88:	ac4f0004 	sw	t7,4(v0)
     a8c:	ac480000 	sw	t0,0(v0)
     a90:	8e0202c0 	lw	v0,704(s0)
     a94:	3c190000 	lui	t9,0x0
     a98:	273901a4 	addiu	t9,t9,420
     a9c:	24580008 	addiu	t8,v0,8
     aa0:	ae1802c0 	sw	t8,704(s0)
     aa4:	ac590004 	sw	t9,4(v0)
     aa8:	ac480000 	sw	t0,0(v0)
     aac:	8e0202d0 	lw	v0,720(s0)
     ab0:	3c0a0000 	lui	t2,0x0
     ab4:	254a01b8 	addiu	t2,t2,440
     ab8:	24490008 	addiu	t1,v0,8
     abc:	ae0902d0 	sw	t1,720(s0)
     ac0:	ac4a0004 	sw	t2,4(v0)
     ac4:	ac480000 	sw	t0,0(v0)
     ac8:	8e0202b0 	lw	v0,688(s0)
     acc:	3c0c0000 	lui	t4,0x0
     ad0:	258c01cc 	addiu	t4,t4,460
     ad4:	244b0008 	addiu	t3,v0,8
     ad8:	ae0b02b0 	sw	t3,688(s0)
     adc:	3c060000 	lui	a2,0x0
     ae0:	24c601e0 	addiu	a2,a2,480
     ae4:	27a4008c 	addiu	a0,sp,140
     ae8:	02002825 	move	a1,s0
     aec:	240703e4 	li	a3,996
     af0:	ac4c0004 	sw	t4,4(v0)
     af4:	0c000000 	jal	0 <Graph_FaultClient>
     af8:	ac480000 	sw	t0,0(v0)
     afc:	3c060000 	lui	a2,0x0
     b00:	24c601ec 	addiu	a2,a2,492
     b04:	27a40068 	addiu	a0,sp,104
     b08:	02002825 	move	a1,s0
     b0c:	0c000000 	jal	0 <Graph_FaultClient>
     b10:	240703e7 	li	a3,999
     b14:	8e0201bc 	lw	v0,444(s0)
     b18:	3c04de01 	lui	a0,0xde01
     b1c:	3c0be700 	lui	t3,0xe700
     b20:	244d0008 	addiu	t5,v0,8
     b24:	ae0d01bc 	sw	t5,444(s0)
     b28:	ac440000 	sw	a0,0(v0)
     b2c:	8e0e0000 	lw	t6,0(s0)
     b30:	3c0de900 	lui	t5,0xe900
     b34:	3c060000 	lui	a2,0x0
     b38:	ac4e0004 	sw	t6,4(v0)
     b3c:	8e0202c0 	lw	v0,704(s0)
     b40:	24c601f8 	addiu	a2,a2,504
     b44:	02002825 	move	a1,s0
     b48:	244f0008 	addiu	t7,v0,8
     b4c:	ae0f02c0 	sw	t7,704(s0)
     b50:	ac440000 	sw	a0,0(v0)
     b54:	8e180004 	lw	t8,4(s0)
     b58:	3c0fdf00 	lui	t7,0xdf00
     b5c:	24070404 	li	a3,1028
     b60:	ac580004 	sw	t8,4(v0)
     b64:	8e0202d0 	lw	v0,720(s0)
     b68:	24590008 	addiu	t9,v0,8
     b6c:	ae1902d0 	sw	t9,720(s0)
     b70:	ac440000 	sw	a0,0(v0)
     b74:	8e090010 	lw	t1,16(s0)
     b78:	27a40068 	addiu	a0,sp,104
     b7c:	ac490004 	sw	t1,4(v0)
     b80:	8e0202b0 	lw	v0,688(s0)
     b84:	244a0008 	addiu	t2,v0,8
     b88:	ae0a02b0 	sw	t2,688(s0)
     b8c:	ac400004 	sw	zero,4(v0)
     b90:	ac4b0000 	sw	t3,0(v0)
     b94:	8e0202b0 	lw	v0,688(s0)
     b98:	244c0008 	addiu	t4,v0,8
     b9c:	ae0c02b0 	sw	t4,688(s0)
     ba0:	ac400004 	sw	zero,4(v0)
     ba4:	ac4d0000 	sw	t5,0(v0)
     ba8:	8e0202b0 	lw	v0,688(s0)
     bac:	244e0008 	addiu	t6,v0,8
     bb0:	ae0e02b0 	sw	t6,688(s0)
     bb4:	ac400004 	sw	zero,4(v0)
     bb8:	0c000000 	jal	0 <Graph_FaultClient>
     bbc:	ac4f0000 	sw	t7,0(v0)
     bc0:	3c080000 	lui	t0,0x0
     bc4:	25080000 	addiu	t0,t0,0
     bc8:	8d020000 	lw	v0,0(t0)
     bcc:	2401000a 	li	at,10
     bd0:	84431074 	lh	v1,4212(v0)
     bd4:	54610010 	bnel	v1,at,c18 <Graph_Update+0x290>
     bd8:	24010007 	li	at,7
     bdc:	8458108e 	lh	t8,4238(v0)
     be0:	24010002 	li	at,2
     be4:	24190007 	li	t9,7
     be8:	5701000b 	bnel	t8,at,c18 <Graph_Update+0x290>
     bec:	24010007 	li	at,7
     bf0:	a4591074 	sh	t9,4212(v0)
     bf4:	8d0a0000 	lw	t2,0(t0)
     bf8:	2409ffff 	li	t1,-1
     bfc:	a5491076 	sh	t1,4214(t2)
     c00:	8d020000 	lw	v0,0(t0)
     c04:	844b108c 	lh	t3,4236(v0)
     c08:	a44b107a 	sh	t3,4218(v0)
     c0c:	8d020000 	lw	v0,0(t0)
     c10:	84431074 	lh	v1,4212(v0)
     c14:	24010007 	li	at,7
     c18:	5461002d 	bnel	v1,at,cd0 <Graph_Update+0x348>
     c1c:	afa000c4 	sw	zero,196(sp)
     c20:	844c1076 	lh	t4,4214(v0)
     c24:	5180002a 	beqzl	t4,cd0 <Graph_Update+0x348>
     c28:	afa000c4 	sw	zero,196(sp)
     c2c:	844d1078 	lh	t5,4216(v0)
     c30:	24010003 	li	at,3
     c34:	3c040000 	lui	a0,0x0
     c38:	15a10007 	bne	t5,at,c58 <Graph_Update+0x2d0>
     c3c:	24840000 	addiu	a0,a0,0
     c40:	3c050000 	lui	a1,0x0
     c44:	3c070000 	lui	a3,0x0
     c48:	24e70204 	addiu	a3,a3,516
     c4c:	24a50000 	addiu	a1,a1,0
     c50:	0c000000 	jal	0 <Graph_FaultClient>
     c54:	8e0601b0 	lw	a2,432(s0)
     c58:	0c000000 	jal	0 <Graph_FaultClient>
     c5c:	8e0401b0 	lw	a0,432(s0)
     c60:	3c080000 	lui	t0,0x0
     c64:	25080000 	addiu	t0,t0,0
     c68:	8d020000 	lw	v0,0(t0)
     c6c:	24010003 	li	at,3
     c70:	3c040000 	lui	a0,0x0
     c74:	844e1078 	lh	t6,4216(v0)
     c78:	55c10006 	bnel	t6,at,c94 <Graph_Update+0x30c>
     c7c:	84431076 	lh	v1,4214(v0)
     c80:	0c000000 	jal	0 <Graph_FaultClient>
     c84:	24840000 	addiu	a0,a0,0
     c88:	3c020000 	lui	v0,0x0
     c8c:	8c420000 	lw	v0,0(v0)
     c90:	84431076 	lh	v1,4214(v0)
     c94:	3c04a404 	lui	a0,0xa404
     c98:	04610009 	bgez	v1,cc0 <Graph_Update+0x338>
     c9c:	00000000 	nop
     ca0:	0c000000 	jal	0 <Graph_FaultClient>
     ca4:	24050020 	li	a1,32
     ca8:	3c04a410 	lui	a0,0xa410
     cac:	0c000000 	jal	0 <Graph_FaultClient>
     cb0:	24050020 	li	a1,32
     cb4:	3c020000 	lui	v0,0x0
     cb8:	8c420000 	lw	v0,0(v0)
     cbc:	84431076 	lh	v1,4214(v0)
     cc0:	04630003 	bgezl	v1,cd0 <Graph_Update+0x348>
     cc4:	afa000c4 	sw	zero,196(sp)
     cc8:	a4401076 	sh	zero,4214(v0)
     ccc:	afa000c4 	sw	zero,196(sp)
     cd0:	8e0f02d8 	lw	t7,728(s0)
     cd4:	3c090000 	lui	t1,0x0
     cd8:	25290000 	addiu	t1,t1,0
     cdc:	31f80001 	andi	t8,t7,0x1
     ce0:	0018c8c0 	sll	t9,t8,0x3
     ce4:	0338c821 	addu	t9,t9,t8
     ce8:	0019c8c0 	sll	t9,t9,0x3
     cec:	0338c821 	addu	t9,t9,t8
     cf0:	0019c980 	sll	t9,t9,0x6
     cf4:	0338c821 	addu	t9,t9,t8
     cf8:	0019c900 	sll	t9,t9,0x4
     cfc:	03295021 	addu	t2,t9,t1
     d00:	afaa004c 	sw	t2,76(sp)
     d04:	954b0000 	lhu	t3,0(t2)
     d08:	24011234 	li	at,4660
     d0c:	1161000b 	beq	t3,at,d3c <Graph_Update+0x3b4>
     d10:	3c040000 	lui	a0,0x0
     d14:	24840214 	addiu	a0,a0,532
     d18:	0c000000 	jal	0 <Graph_FaultClient>
     d1c:	24050007 	li	a1,7
     d20:	3c040000 	lui	a0,0x0
     d24:	0c000000 	jal	0 <Graph_FaultClient>
     d28:	24840218 	addiu	a0,a0,536
     d2c:	3c040000 	lui	a0,0x0
     d30:	2484024c 	addiu	a0,a0,588
     d34:	0c000000 	jal	0 <Graph_FaultClient>
     d38:	2405042e 	li	a1,1070
     d3c:	8fac004c 	lw	t4,76(sp)
     d40:	3c0d0001 	lui	t5,0x1
     d44:	24015678 	li	at,22136
     d48:	01ac6821 	addu	t5,t5,t4
     d4c:	95ad2408 	lhu	t5,9224(t5)
     d50:	11a1000d 	beq	t5,at,d88 <Graph_Update+0x400>
     d54:	240e0001 	li	t6,1
     d58:	3c040000 	lui	a0,0x0
     d5c:	afae00c4 	sw	t6,196(sp)
     d60:	24840258 	addiu	a0,a0,600
     d64:	0c000000 	jal	0 <Graph_FaultClient>
     d68:	24050007 	li	a1,7
     d6c:	3c040000 	lui	a0,0x0
     d70:	0c000000 	jal	0 <Graph_FaultClient>
     d74:	2484025c 	addiu	a0,a0,604
     d78:	3c040000 	lui	a0,0x0
     d7c:	24840290 	addiu	a0,a0,656
     d80:	0c000000 	jal	0 <Graph_FaultClient>
     d84:	24050434 	li	a1,1076
     d88:	0c000000 	jal	0 <Graph_FaultClient>
     d8c:	260402b8 	addiu	a0,s0,696
     d90:	10400009 	beqz	v0,db8 <Graph_Update+0x430>
     d94:	240f0001 	li	t7,1
     d98:	3c040000 	lui	a0,0x0
     d9c:	afaf00c4 	sw	t7,196(sp)
     da0:	2484029c 	addiu	a0,a0,668
     da4:	0c000000 	jal	0 <Graph_FaultClient>
     da8:	24050007 	li	a1,7
     dac:	3c040000 	lui	a0,0x0
     db0:	0c000000 	jal	0 <Graph_FaultClient>
     db4:	248402a0 	addiu	a0,a0,672
     db8:	0c000000 	jal	0 <Graph_FaultClient>
     dbc:	260402c8 	addiu	a0,s0,712
     dc0:	10400009 	beqz	v0,de8 <Graph_Update+0x460>
     dc4:	24180001 	li	t8,1
     dc8:	3c040000 	lui	a0,0x0
     dcc:	afb800c4 	sw	t8,196(sp)
     dd0:	248402dc 	addiu	a0,a0,732
     dd4:	0c000000 	jal	0 <Graph_FaultClient>
     dd8:	24050007 	li	a1,7
     ddc:	3c040000 	lui	a0,0x0
     de0:	0c000000 	jal	0 <Graph_FaultClient>
     de4:	248402e0 	addiu	a0,a0,736
     de8:	0c000000 	jal	0 <Graph_FaultClient>
     dec:	260402a8 	addiu	a0,s0,680
     df0:	10400009 	beqz	v0,e18 <Graph_Update+0x490>
     df4:	24190001 	li	t9,1
     df8:	3c040000 	lui	a0,0x0
     dfc:	afb900c4 	sw	t9,196(sp)
     e00:	2484031c 	addiu	a0,a0,796
     e04:	0c000000 	jal	0 <Graph_FaultClient>
     e08:	24050007 	li	a1,7
     e0c:	3c040000 	lui	a0,0x0
     e10:	0c000000 	jal	0 <Graph_FaultClient>
     e14:	24840320 	addiu	a0,a0,800
     e18:	8fa900c4 	lw	t1,196(sp)
     e1c:	15200009 	bnez	t1,e44 <Graph_Update+0x4bc>
     e20:	00000000 	nop
     e24:	0c000000 	jal	0 <Graph_FaultClient>
     e28:	02002025 	move	a0,s0
     e2c:	8e0a02d8 	lw	t2,728(s0)
     e30:	8e0c02e8 	lw	t4,744(s0)
     e34:	254b0001 	addiu	t3,t2,1
     e38:	258d0001 	addiu	t5,t4,1
     e3c:	ae0b02d8 	sw	t3,728(s0)
     e40:	ae0d02e8 	sw	t5,744(s0)
     e44:	0c000000 	jal	0 <Graph_FaultClient>
     e48:	00000000 	nop
     e4c:	0c000000 	jal	0 <Graph_FaultClient>
     e50:	00000000 	nop
     e54:	3c040000 	lui	a0,0x0
     e58:	24840000 	addiu	a0,a0,0
     e5c:	8c8e0000 	lw	t6,0(a0)
     e60:	8c8f0004 	lw	t7,4(a0)
     e64:	3c180000 	lui	t8,0x0
     e68:	27180000 	addiu	t8,t8,0
     e6c:	3c050000 	lui	a1,0x0
     e70:	af0e0000 	sw	t6,0(t8)
     e74:	24a50000 	addiu	a1,a1,0
     e78:	af0f0004 	sw	t7,4(t8)
     e7c:	8caa0000 	lw	t2,0(a1)
     e80:	8cab0004 	lw	t3,4(a1)
     e84:	3c190000 	lui	t9,0x0
     e88:	27390000 	addiu	t9,t9,0
     e8c:	3c060000 	lui	a2,0x0
     e90:	af2a0000 	sw	t2,0(t9)
     e94:	24c60000 	addiu	a2,a2,0
     e98:	af2b0004 	sw	t3,4(t9)
     e9c:	8ccc0000 	lw	t4,0(a2)
     ea0:	8ccd0004 	lw	t5,4(a2)
     ea4:	3c090000 	lui	t1,0x0
     ea8:	25290000 	addiu	t1,t1,0
     eac:	ad2c0000 	sw	t4,0(t1)
     eb0:	ad2d0004 	sw	t5,4(t1)
     eb4:	240e0000 	li	t6,0
     eb8:	ac8e0000 	sw	t6,0(a0)
     ebc:	240f0000 	li	t7,0
     ec0:	ac8f0004 	sw	t7,4(a0)
     ec4:	24180000 	li	t8,0
     ec8:	acb80000 	sw	t8,0(a1)
     ecc:	24190000 	li	t9,0
     ed0:	acb90004 	sw	t9,4(a1)
     ed4:	240a0000 	li	t2,0
     ed8:	acca0000 	sw	t2,0(a2)
     edc:	240b0000 	li	t3,0
     ee0:	accb0004 	sw	t3,4(a2)
     ee4:	3c0c0000 	lui	t4,0x0
     ee8:	8d8c0000 	lw	t4,0(t4)
     eec:	3c0d0000 	lui	t5,0x0
     ef0:	8dad0004 	lw	t5,4(t5)
     ef4:	afac0020 	sw	t4,32(sp)
     ef8:	15800002 	bnez	t4,f04 <Graph_Update+0x57c>
     efc:	afad0024 	sw	t5,36(sp)
     f00:	11a00008 	beqz	t5,f24 <Graph_Update+0x59c>
     f04:	006d082b 	sltu	at,v1,t5
     f08:	004c7023 	subu	t6,v0,t4
     f0c:	3c090000 	lui	t1,0x0
     f10:	25290000 	addiu	t1,t1,0
     f14:	01c17023 	subu	t6,t6,at
     f18:	ad2e0000 	sw	t6,0(t1)
     f1c:	006d7823 	subu	t7,v1,t5
     f20:	ad2f0004 	sw	t7,4(t1)
     f24:	3c040000 	lui	a0,0x0
     f28:	8c840000 	lw	a0,0(a0)
     f2c:	3c010000 	lui	at,0x0
     f30:	ac220000 	sw	v0,0(at)
     f34:	10800015 	beqz	a0,f8c <Graph_Update+0x604>
     f38:	ac230004 	sw	v1,4(at)
     f3c:	8fa200cc 	lw	v0,204(sp)
     f40:	2401dfff 	li	at,-8193
     f44:	94580020 	lhu	t8,32(v0)
     f48:	0301c827 	nor	t9,t8,at
     f4c:	1720000f 	bnez	t9,f8c <Graph_Update+0x604>
     f50:	00000000 	nop
     f54:	944a0014 	lhu	t2,20(v0)
     f58:	2401ffcf 	li	at,-49
     f5c:	3c0c0000 	lui	t4,0x0
     f60:	01415827 	nor	t3,t2,at
     f64:	15600009 	bnez	t3,f8c <Graph_Update+0x604>
     f68:	3c010000 	lui	at,0x0
     f6c:	ac20135c 	sw	zero,4956(at)
     f70:	258c0000 	addiu	t4,t4,0
     f74:	240d0240 	li	t5,576
     f78:	ac4d0010 	sw	t5,16(v0)
     f7c:	ac4c000c 	sw	t4,12(v0)
     f80:	ac400098 	sw	zero,152(v0)
     f84:	3c040000 	lui	a0,0x0
     f88:	8c840000 	lw	a0,0(a0)
     f8c:	10800014 	beqz	a0,fe0 <Graph_Update+0x658>
     f90:	3c040000 	lui	a0,0x0
     f94:	0c000000 	jal	0 <Graph_FaultClient>
     f98:	8c840000 	lw	a0,0(a0)
     f9c:	10400010 	beqz	v0,fe0 <Graph_Update+0x658>
     fa0:	8fae00cc 	lw	t6,204(sp)
     fa4:	8dcf00a0 	lw	t7,160(t6)
     fa8:	3c040000 	lui	a0,0x0
     fac:	55e0000d 	bnezl	t7,fe4 <Graph_Update+0x65c>
     fb0:	8fbf001c 	lw	ra,28(sp)
     fb4:	0c000000 	jal	0 <Graph_FaultClient>
     fb8:	2484035c 	addiu	a0,a0,860
     fbc:	8fb800cc 	lw	t8,204(sp)
     fc0:	3c090000 	lui	t1,0x0
     fc4:	25290000 	addiu	t1,t1,0
     fc8:	af09000c 	sw	t1,12(t8)
     fcc:	8faa00cc 	lw	t2,204(sp)
     fd0:	241900ac 	li	t9,172
     fd4:	ad590010 	sw	t9,16(t2)
     fd8:	8fab00cc 	lw	t3,204(sp)
     fdc:	ad600098 	sw	zero,152(t3)
     fe0:	8fbf001c 	lw	ra,28(sp)
     fe4:	8fb00018 	lw	s0,24(sp)
     fe8:	27bd00c8 	addiu	sp,sp,200
     fec:	03e00008 	jr	ra
     ff0:	00000000 	nop

00000ff4 <Graph_ThreadEntry>:
     ff4:	27bdfc60 	addiu	sp,sp,-928
     ff8:	afb00018 	sw	s0,24(sp)
     ffc:	3c100000 	lui	s0,0x0
    1000:	afa403a0 	sw	a0,928(sp)
    1004:	26100000 	addiu	s0,s0,0
    1008:	afbf003c 	sw	ra,60(sp)
    100c:	afb30024 	sw	s3,36(sp)
    1010:	3c040000 	lui	a0,0x0
    1014:	afbe0038 	sw	s8,56(sp)
    1018:	afb70034 	sw	s7,52(sp)
    101c:	afb60030 	sw	s6,48(sp)
    1020:	afb5002c 	sw	s5,44(sp)
    1024:	afb40028 	sw	s4,40(sp)
    1028:	afb20020 	sw	s2,32(sp)
    102c:	afb1001c 	sw	s1,28(sp)
    1030:	02009825 	move	s3,s0
    1034:	0c000000 	jal	0 <Graph_FaultClient>
    1038:	24840390 	addiu	a0,a0,912
    103c:	27b200a0 	addiu	s2,sp,160
    1040:	0c000000 	jal	0 <Graph_FaultClient>
    1044:	02402025 	move	a0,s2
    1048:	1200003b 	beqz	s0,1138 <Graph_ThreadEntry+0x144>
    104c:	3c170000 	lui	s7,0x0
    1050:	3c1e0000 	lui	s8,0x0
    1054:	3c160000 	lui	s6,0x0
    1058:	26d603b0 	addiu	s6,s6,944
    105c:	27de03d4 	addiu	s8,s8,980
    1060:	26f703c8 	addiu	s7,s7,968
    1064:	27b50040 	addiu	s5,sp,64
    1068:	0260a025 	move	s4,s3
    106c:	0c000000 	jal	0 <Graph_FaultClient>
    1070:	02602025 	move	a0,s3
    1074:	8e71002c 	lw	s1,44(s3)
    1078:	02c02025 	move	a0,s6
    107c:	0c000000 	jal	0 <Graph_FaultClient>
    1080:	02202825 	move	a1,s1
    1084:	02202025 	move	a0,s1
    1088:	02e02825 	move	a1,s7
    108c:	0c000000 	jal	0 <Graph_FaultClient>
    1090:	240604ac 	li	a2,1196
    1094:	1440000c 	bnez	v0,10c8 <Graph_ThreadEntry+0xd4>
    1098:	00408025 	move	s0,v0
    109c:	0c000000 	jal	0 <Graph_FaultClient>
    10a0:	03c02025 	move	a0,s8
    10a4:	3c050000 	lui	a1,0x0
    10a8:	24a503e0 	addiu	a1,a1,992
    10ac:	02a02025 	move	a0,s5
    10b0:	0c000000 	jal	0 <Graph_FaultClient>
    10b4:	02203025 	move	a2,s1
    10b8:	3c040000 	lui	a0,0x0
    10bc:	248403f8 	addiu	a0,a0,1016
    10c0:	0c000000 	jal	0 <Graph_FaultClient>
    10c4:	02a02825 	move	a1,s5
    10c8:	02002025 	move	a0,s0
    10cc:	8e650018 	lw	a1,24(s3)
    10d0:	0c000000 	jal	0 <Graph_FaultClient>
    10d4:	02403025 	move	a2,s2
    10d8:	0c000000 	jal	0 <Graph_FaultClient>
    10dc:	02002025 	move	a0,s0
    10e0:	10400007 	beqz	v0,1100 <Graph_ThreadEntry+0x10c>
    10e4:	02402025 	move	a0,s2
    10e8:	0c000000 	jal	0 <Graph_FaultClient>
    10ec:	02002825 	move	a1,s0
    10f0:	0c000000 	jal	0 <Graph_FaultClient>
    10f4:	02002025 	move	a0,s0
    10f8:	5440fffb 	bnezl	v0,10e8 <Graph_ThreadEntry+0xf4>
    10fc:	02402025 	move	a0,s2
    1100:	0c000000 	jal	0 <Graph_FaultClient>
    1104:	02002025 	move	a0,s0
    1108:	00409825 	move	s3,v0
    110c:	0c000000 	jal	0 <Graph_FaultClient>
    1110:	02002025 	move	a0,s0
    1114:	3c050000 	lui	a1,0x0
    1118:	24a50414 	addiu	a1,a1,1044
    111c:	02002025 	move	a0,s0
    1120:	0c000000 	jal	0 <Graph_FaultClient>
    1124:	240604cb 	li	a2,1227
    1128:	0c000000 	jal	0 <Graph_FaultClient>
    112c:	02802025 	move	a0,s4
    1130:	5660ffce 	bnezl	s3,106c <Graph_ThreadEntry+0x78>
    1134:	0260a025 	move	s4,s3
    1138:	0c000000 	jal	0 <Graph_FaultClient>
    113c:	02402025 	move	a0,s2
    1140:	3c040000 	lui	a0,0x0
    1144:	0c000000 	jal	0 <Graph_FaultClient>
    1148:	24840420 	addiu	a0,a0,1056
    114c:	8fbf003c 	lw	ra,60(sp)
    1150:	8fb00018 	lw	s0,24(sp)
    1154:	8fb1001c 	lw	s1,28(sp)
    1158:	8fb20020 	lw	s2,32(sp)
    115c:	8fb30024 	lw	s3,36(sp)
    1160:	8fb40028 	lw	s4,40(sp)
    1164:	8fb5002c 	lw	s5,44(sp)
    1168:	8fb60030 	lw	s6,48(sp)
    116c:	8fb70034 	lw	s7,52(sp)
    1170:	8fbe0038 	lw	s8,56(sp)
    1174:	03e00008 	jr	ra
    1178:	27bd03a0 	addiu	sp,sp,928

0000117c <Graph_Alloc>:
    117c:	27bdffe0 	addiu	sp,sp,-32
    1180:	3c0e0000 	lui	t6,0x0
    1184:	8dce0000 	lw	t6,0(t6)
    1188:	afbf001c 	sw	ra,28(sp)
    118c:	afa40020 	sw	a0,32(sp)
    1190:	afa50024 	sw	a1,36(sp)
    1194:	85cf104a 	lh	t7,4170(t6)
    1198:	8fa20020 	lw	v0,32(sp)
    119c:	24010001 	li	at,1
    11a0:	15e1000a 	bne	t7,at,11cc <Graph_Alloc+0x50>
    11a4:	244202b8 	addiu	v0,v0,696
    11a8:	8c580008 	lw	t8,8(v0)
    11ac:	8c460000 	lw	a2,0(v0)
    11b0:	8c470004 	lw	a3,4(v0)
    11b4:	afb80010 	sw	t8,16(sp)
    11b8:	8c59000c 	lw	t9,12(v0)
    11bc:	3c040000 	lui	a0,0x0
    11c0:	24840440 	addiu	a0,a0,1088
    11c4:	0c000000 	jal	0 <Graph_FaultClient>
    11c8:	afb90014 	sw	t9,20(sp)
    11cc:	8fa50024 	lw	a1,36(sp)
    11d0:	8fa40020 	lw	a0,32(sp)
    11d4:	2401fff0 	li	at,-16
    11d8:	24a5000f 	addiu	a1,a1,15
    11dc:	00a12824 	and	a1,a1,at
    11e0:	0c000000 	jal	0 <Graph_FaultClient>
    11e4:	248402b8 	addiu	a0,a0,696
    11e8:	8fbf001c 	lw	ra,28(sp)
    11ec:	27bd0020 	addiu	sp,sp,32
    11f0:	03e00008 	jr	ra
    11f4:	00000000 	nop

000011f8 <Graph_Alloc2>:
    11f8:	27bdffe0 	addiu	sp,sp,-32
    11fc:	3c0e0000 	lui	t6,0x0
    1200:	8dce0000 	lw	t6,0(t6)
    1204:	afbf001c 	sw	ra,28(sp)
    1208:	afa40020 	sw	a0,32(sp)
    120c:	afa50024 	sw	a1,36(sp)
    1210:	85cf104a 	lh	t7,4170(t6)
    1214:	8fa20020 	lw	v0,32(sp)
    1218:	24010001 	li	at,1
    121c:	15e1000a 	bne	t7,at,1248 <Graph_Alloc2+0x50>
    1220:	244202b8 	addiu	v0,v0,696
    1224:	8c580008 	lw	t8,8(v0)
    1228:	8c460000 	lw	a2,0(v0)
    122c:	8c470004 	lw	a3,4(v0)
    1230:	afb80010 	sw	t8,16(sp)
    1234:	8c59000c 	lw	t9,12(v0)
    1238:	3c040000 	lui	a0,0x0
    123c:	24840484 	addiu	a0,a0,1156
    1240:	0c000000 	jal	0 <Graph_FaultClient>
    1244:	afb90014 	sw	t9,20(sp)
    1248:	8fa50024 	lw	a1,36(sp)
    124c:	8fa40020 	lw	a0,32(sp)
    1250:	2401fff0 	li	at,-16
    1254:	24a5000f 	addiu	a1,a1,15
    1258:	00a12824 	and	a1,a1,at
    125c:	0c000000 	jal	0 <Graph_FaultClient>
    1260:	248402b8 	addiu	a0,a0,696
    1264:	8fbf001c 	lw	ra,28(sp)
    1268:	27bd0020 	addiu	sp,sp,32
    126c:	03e00008 	jr	ra
    1270:	00000000 	nop

00001274 <Graph_OpenDisps>:
    1274:	3c020000 	lui	v0,0x0
    1278:	8c420000 	lw	v0,0(v0)
    127c:	24010007 	li	at,7
    1280:	844e1074 	lh	t6,4212(v0)
    1284:	15c1001d 	bne	t6,at,12fc <Graph_OpenDisps+0x88>
    1288:	00000000 	nop
    128c:	844f1078 	lh	t7,4216(v0)
    1290:	24010004 	li	at,4
    1294:	11e10019 	beq	t7,at,12fc <Graph_OpenDisps+0x88>
    1298:	00000000 	nop
    129c:	8cb802c0 	lw	t8,704(a1)
    12a0:	3c010007 	lui	at,0x7
    12a4:	ac980000 	sw	t8,0(a0)
    12a8:	8cb902d0 	lw	t9,720(a1)
    12ac:	ac990004 	sw	t9,4(a0)
    12b0:	8ca802b0 	lw	t0,688(a1)
    12b4:	ac880008 	sw	t0,8(a0)
    12b8:	8ca202c0 	lw	v0,704(a1)
    12bc:	30e4ffff 	andi	a0,a3,0xffff
    12c0:	00812025 	or	a0,a0,at
    12c4:	24490008 	addiu	t1,v0,8
    12c8:	aca902c0 	sw	t1,704(a1)
    12cc:	ac460004 	sw	a2,4(v0)
    12d0:	ac440000 	sw	a0,0(v0)
    12d4:	8ca202d0 	lw	v0,720(a1)
    12d8:	244a0008 	addiu	t2,v0,8
    12dc:	acaa02d0 	sw	t2,720(a1)
    12e0:	ac460004 	sw	a2,4(v0)
    12e4:	ac440000 	sw	a0,0(v0)
    12e8:	8ca202b0 	lw	v0,688(a1)
    12ec:	244b0008 	addiu	t3,v0,8
    12f0:	acab02b0 	sw	t3,688(a1)
    12f4:	ac460004 	sw	a2,4(v0)
    12f8:	ac440000 	sw	a0,0(v0)
    12fc:	03e00008 	jr	ra
    1300:	00000000 	nop

00001304 <Graph_CloseDisps>:
    1304:	3c020000 	lui	v0,0x0
    1308:	8c420000 	lw	v0,0(v0)
    130c:	24010007 	li	at,7
    1310:	844e1074 	lh	t6,4212(v0)
    1314:	15c1002c 	bne	t6,at,13c8 <Graph_CloseDisps+0xc4>
    1318:	00000000 	nop
    131c:	844f1078 	lh	t7,4216(v0)
    1320:	24010004 	li	at,4
    1324:	11e10028 	beq	t7,at,13c8 <Graph_CloseDisps+0xc4>
    1328:	00000000 	nop
    132c:	8c830000 	lw	v1,0(a0)
    1330:	8ca202c0 	lw	v0,704(a1)
    1334:	30e9ffff 	andi	t1,a3,0xffff
    1338:	24780008 	addiu	t8,v1,8
    133c:	14580003 	bne	v0,t8,134c <Graph_CloseDisps+0x48>
    1340:	24590008 	addiu	t9,v0,8
    1344:	10000006 	b	1360 <Graph_CloseDisps+0x5c>
    1348:	aca302c0 	sw	v1,704(a1)
    134c:	acb902c0 	sw	t9,704(a1)
    1350:	3c010008 	lui	at,0x8
    1354:	01215025 	or	t2,t1,at
    1358:	ac4a0000 	sw	t2,0(v0)
    135c:	ac460004 	sw	a2,4(v0)
    1360:	8c820004 	lw	v0,4(a0)
    1364:	8ca302d0 	lw	v1,720(a1)
    1368:	3c010008 	lui	at,0x8
    136c:	244b0008 	addiu	t3,v0,8
    1370:	146b0003 	bne	v1,t3,1380 <Graph_CloseDisps+0x7c>
    1374:	246c0008 	addiu	t4,v1,8
    1378:	10000006 	b	1394 <Graph_CloseDisps+0x90>
    137c:	aca202d0 	sw	v0,720(a1)
    1380:	30e2ffff 	andi	v0,a3,0xffff
    1384:	acac02d0 	sw	t4,720(a1)
    1388:	00411025 	or	v0,v0,at
    138c:	ac620000 	sw	v0,0(v1)
    1390:	ac660004 	sw	a2,4(v1)
    1394:	8c820008 	lw	v0,8(a0)
    1398:	8ca302b0 	lw	v1,688(a1)
    139c:	3c010008 	lui	at,0x8
    13a0:	244d0008 	addiu	t5,v0,8
    13a4:	146d0003 	bne	v1,t5,13b4 <Graph_CloseDisps+0xb0>
    13a8:	246e0008 	addiu	t6,v1,8
    13ac:	03e00008 	jr	ra
    13b0:	aca202b0 	sw	v0,688(a1)
    13b4:	30e2ffff 	andi	v0,a3,0xffff
    13b8:	acae02b0 	sw	t6,688(a1)
    13bc:	00411025 	or	v0,v0,at
    13c0:	ac620000 	sw	v0,0(v1)
    13c4:	ac660004 	sw	a2,4(v1)
    13c8:	03e00008 	jr	ra
    13cc:	00000000 	nop

000013d0 <Graph_GfxPlusOne>:
    13d0:	03e00008 	jr	ra
    13d4:	24820008 	addiu	v0,a0,8

000013d8 <Graph_BranchDlist>:
    13d8:	3c0ede01 	lui	t6,0xde01
    13dc:	ac8e0000 	sw	t6,0(a0)
    13e0:	ac850004 	sw	a1,4(a0)
    13e4:	03e00008 	jr	ra
    13e8:	00a01025 	move	v0,a1

000013ec <Graph_DlistAlloc>:
    13ec:	8c820000 	lw	v0,0(a0)
    13f0:	24a50007 	addiu	a1,a1,7
    13f4:	2401fff8 	li	at,-8
    13f8:	00a12824 	and	a1,a1,at
    13fc:	24430008 	addiu	v1,v0,8
    1400:	00653021 	addu	a2,v1,a1
    1404:	3c0ede01 	lui	t6,0xde01
    1408:	ac4e0000 	sw	t6,0(v0)
    140c:	ac460004 	sw	a2,4(v0)
    1410:	ac860000 	sw	a2,0(a0)
    1414:	03e00008 	jr	ra
    1418:	00601025 	move	v0,v1
    141c:	00000000 	nop
