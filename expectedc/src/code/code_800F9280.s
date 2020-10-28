
build/src/code/code_800F9280.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800F9280>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	3c0e0000 	lui	t6,0x0
       8:	91ce0000 	lbu	t6,0(t6)
       c:	afb00018 	sw	s0,24(sp)
      10:	afa60040 	sw	a2,64(sp)
      14:	30c600ff 	andi	a2,a2,0xff
      18:	309000ff 	andi	s0,a0,0xff
      1c:	afbf001c 	sw	ra,28(sp)
      20:	afa40038 	sw	a0,56(sp)
      24:	afa5003c 	sw	a1,60(sp)
      28:	11c00003 	beqz	t6,38 <func_800F9280+0x38>
      2c:	afa70044 	sw	a3,68(sp)
      30:	24010002 	li	at,2
      34:	1601006a 	bne	s0,at,1e0 <func_800F9280+0x1e0>
      38:	30c6007f 	andi	a2,a2,0x7f
      3c:	30c600ff 	andi	a2,a2,0xff
      40:	2401007f 	li	at,127
      44:	14c10019 	bne	a2,at,ac <func_800F9280+0xac>
      48:	00c03825 	move	a3,a2
      4c:	97af0046 	lhu	t7,70(sp)
      50:	3c080000 	lui	t0,0x0
      54:	85082854 	lh	t0,10324(t0)
      58:	000fc0c3 	sra	t8,t7,0x3
      5c:	0018c900 	sll	t9,t8,0x4
      60:	0338c823 	subu	t9,t9,t8
      64:	0019c880 	sll	t9,t9,0x2
      68:	03280019 	multu	t9,t0
      6c:	93ab003f 	lbu	t3,63(sp)
      70:	320300ff 	andi	v1,s0,0xff
      74:	00031c00 	sll	v1,v1,0x10
      78:	3c018500 	lui	at,0x8500
      7c:	00614825 	or	t1,v1,at
      80:	000b6200 	sll	t4,t3,0x8
      84:	012c2025 	or	a0,t1,t4
      88:	afa30028 	sw	v1,40(sp)
      8c:	afa6002c 	sw	a2,44(sp)
      90:	00001012 	mflo	v0
      94:	3045ffff 	andi	a1,v0,0xffff
      98:	0c000000 	jal	0 <func_800F9280>
      9c:	00000000 	nop
      a0:	8fa30028 	lw	v1,40(sp)
      a4:	10000018 	b	108 <func_800F9280+0x108>
      a8:	8fa7002c 	lw	a3,44(sp)
      ac:	3c080000 	lui	t0,0x0
      b0:	95082854 	lhu	t0,10324(t0)
      b4:	97b90046 	lhu	t9,70(sp)
      b8:	320300ff 	andi	v1,s0,0xff
      bc:	93ae003f 	lbu	t6,63(sp)
      c0:	03280019 	multu	t9,t0
      c4:	00031c00 	sll	v1,v1,0x10
      c8:	3c018200 	lui	at,0x8200
      cc:	00616825 	or	t5,v1,at
      d0:	01c07825 	move	t7,t6
      d4:	000fc200 	sll	t8,t7,0x8
      d8:	01b82025 	or	a0,t5,t8
      dc:	afa30028 	sw	v1,40(sp)
      e0:	afa7002c 	sw	a3,44(sp)
      e4:	00002812 	mflo	a1
      e8:	04a10002 	bgez	a1,f4 <func_800F9280+0xf4>
      ec:	00a00821 	move	at,a1
      f0:	24a10003 	addiu	at,a1,3
      f4:	00012883 	sra	a1,at,0x2
      f8:	0c000000 	jal	0 <func_800F9280>
      fc:	00000000 	nop
     100:	8fa30028 	lw	v1,40(sp)
     104:	8fa7002c 	lw	a3,44(sp)
     108:	00105080 	sll	t2,s0,0x2
     10c:	01505021 	addu	t2,t2,s0
     110:	000a5080 	sll	t2,t2,0x2
     114:	01505023 	subu	t2,t2,s0
     118:	000a50c0 	sll	t2,t2,0x3
     11c:	01505021 	addu	t2,t2,s0
     120:	3c0b0000 	lui	t3,0x0
     124:	256b0000 	addiu	t3,t3,0
     128:	000a5080 	sll	t2,t2,0x2
     12c:	3c013f80 	lui	at,0x3f80
     130:	014b3021 	addu	a2,t2,t3
     134:	44810000 	mtc1	at,$f0
     138:	c4c20000 	lwc1	$f2,0(a2)
     13c:	93a9003f 	lbu	t1,63(sp)
     140:	00076200 	sll	t4,a3,0x8
     144:	46020032 	c.eq.s	$f0,$f2
     148:	012c1025 	or	v0,t1,t4
     14c:	a4c20254 	sh	v0,596(a2)
     150:	a4c20256 	sh	v0,598(a2)
     154:	45010008 	bc1t	178 <func_800F9280+0x178>
     158:	3c014100 	lui	at,0x4100
     15c:	44051000 	mfc1	a1,$f2
     160:	00612025 	or	a0,v1,at
     164:	0c000000 	jal	0 <func_800F9280>
     168:	afa60024 	sw	a2,36(sp)
     16c:	3c013f80 	lui	at,0x3f80
     170:	44810000 	mtc1	at,$f0
     174:	8fa60024 	lw	a2,36(sp)
     178:	00107080 	sll	t6,s0,0x2
     17c:	01d07021 	addu	t6,t6,s0
     180:	000e7080 	sll	t6,t6,0x2
     184:	01d07023 	subu	t6,t6,s0
     188:	000e70c0 	sll	t6,t6,0x3
     18c:	01d07021 	addu	t6,t6,s0
     190:	3c0f0000 	lui	t7,0x0
     194:	25ef0000 	addiu	t7,t7,0
     198:	000e7080 	sll	t6,t6,0x2
     19c:	a4c00028 	sh	zero,40(a2)
     1a0:	a4c00018 	sh	zero,24(a2)
     1a4:	acc00014 	sw	zero,20(a2)
     1a8:	01cf2021 	addu	a0,t6,t7
     1ac:	00001825 	move	v1,zero
     1b0:	00036940 	sll	t5,v1,0x5
     1b4:	24630001 	addiu	v1,v1,1
     1b8:	008d1021 	addu	v0,a0,t5
     1bc:	306300ff 	andi	v1,v1,0xff
     1c0:	28610010 	slti	at,v1,16
     1c4:	e4400050 	swc1	$f0,80(v0)
     1c8:	a440005c 	sh	zero,92(v0)
     1cc:	e4400060 	swc1	$f0,96(v0)
     1d0:	1420fff7 	bnez	at,1b0 <func_800F9280+0x1b0>
     1d4:	a440006c 	sh	zero,108(v0)
     1d8:	a4c00250 	sh	zero,592(a2)
     1dc:	a4c00252 	sh	zero,594(a2)
     1e0:	8fbf001c 	lw	ra,28(sp)
     1e4:	8fb00018 	lw	s0,24(sp)
     1e8:	27bd0038 	addiu	sp,sp,56
     1ec:	03e00008 	jr	ra
     1f0:	00000000 	nop

000001f4 <func_800F9474>:
     1f4:	3c0e0000 	lui	t6,0x0
     1f8:	95ce2854 	lhu	t6,10324(t6)
     1fc:	30a6ffff 	andi	a2,a1,0xffff
     200:	27bdffe8 	addiu	sp,sp,-24
     204:	00ce0019 	multu	a2,t6
     208:	afa40018 	sw	a0,24(sp)
     20c:	93a4001b 	lbu	a0,27(sp)
     210:	afa5001c 	sw	a1,28(sp)
     214:	3c018300 	lui	at,0x8300
     218:	00042400 	sll	a0,a0,0x10
     21c:	00812025 	or	a0,a0,at
     220:	afbf0014 	sw	ra,20(sp)
     224:	00002812 	mflo	a1
     228:	04a10002 	bgez	a1,234 <func_800F9474+0x40>
     22c:	00a00821 	move	at,a1
     230:	24a10003 	addiu	at,a1,3
     234:	00012883 	sra	a1,at,0x2
     238:	0c000000 	jal	0 <func_800F9280>
     23c:	00000000 	nop
     240:	93b8001b 	lbu	t8,27(sp)
     244:	8fbf0014 	lw	ra,20(sp)
     248:	3c010000 	lui	at,0x0
     24c:	0018c880 	sll	t9,t8,0x2
     250:	0338c821 	addu	t9,t9,t8
     254:	0019c880 	sll	t9,t9,0x2
     258:	0338c823 	subu	t9,t9,t8
     25c:	0019c8c0 	sll	t9,t9,0x3
     260:	0338c821 	addu	t9,t9,t8
     264:	0019c880 	sll	t9,t9,0x2
     268:	00390821 	addu	at,at,t9
     26c:	340fffff 	li	t7,0xffff
     270:	a42f0000 	sh	t7,0(at)
     274:	03e00008 	jr	ra
     278:	27bd0018 	addiu	sp,sp,24

0000027c <func_800F94FC>:
     27c:	3c0e0000 	lui	t6,0x0
     280:	91ce0000 	lbu	t6,0(t6)
     284:	27bdff98 	addiu	sp,sp,-104
     288:	afb00018 	sw	s0,24(sp)
     28c:	00808025 	move	s0,a0
     290:	11c0000f 	beqz	t6,2d0 <func_800F94FC+0x54>
     294:	afbf001c 	sw	ra,28(sp)
     298:	3c01f000 	lui	at,0xf000
     29c:	00817824 	and	t7,a0,at
     2a0:	3c017000 	lui	at,0x7000
     2a4:	11e1000a 	beq	t7,at,2d0 <func_800F94FC+0x54>
     2a8:	3c040000 	lui	a0,0x0
     2ac:	00102c02 	srl	a1,s0,0x10
     2b0:	30a5ffff 	andi	a1,a1,0xffff
     2b4:	0c000000 	jal	0 <func_800F9280>
     2b8:	24840000 	addiu	a0,a0,0
     2bc:	3c040000 	lui	a0,0x0
     2c0:	02002825 	move	a1,s0
     2c4:	30a5ffff 	andi	a1,a1,0xffff
     2c8:	0c000000 	jal	0 <func_800F9280>
     2cc:	24840000 	addiu	a0,a0,0
     2d0:	3c010f00 	lui	at,0xf00
     2d4:	02013824 	and	a3,s0,at
     2d8:	0010c702 	srl	t8,s0,0x1c
     2dc:	331900ff 	andi	t9,t8,0xff
     2e0:	00073e02 	srl	a3,a3,0x18
     2e4:	2f210010 	sltiu	at,t9,16
     2e8:	102002a3 	beqz	at,d78 <L800F9FB8+0x40>
     2ec:	30e500ff 	andi	a1,a3,0xff
     2f0:	0019c880 	sll	t9,t9,0x2
     2f4:	3c010000 	lui	at,0x0
     2f8:	00390821 	addu	at,at,t9
     2fc:	8c390000 	lw	t9,0(at)
     300:	03200008 	jr	t9
     304:	00000000 	nop

00000308 <L800F9588>:
     308:	30e400ff 	andi	a0,a3,0xff
     30c:	00046880 	sll	t5,a0,0x2
     310:	01a46821 	addu	t5,t5,a0
     314:	000d6880 	sll	t5,t5,0x2
     318:	01a46823 	subu	t5,t5,a0
     31c:	000d68c0 	sll	t5,t5,0x3
     320:	3c090000 	lui	t1,0x0
     324:	01a46821 	addu	t5,t5,a0
     328:	25290000 	addiu	t1,t1,0
     32c:	000d6880 	sll	t5,t5,0x2
     330:	012d7021 	addu	t6,t1,t5
     334:	91cf0260 	lbu	t7,608(t6)
     338:	3206ff00 	andi	a2,s0,0xff00
     33c:	00063202 	srl	a2,a2,0x8
     340:	15e0028d 	bnez	t7,d78 <L800F9FB8+0x40>
     344:	30c600ff 	andi	a2,a2,0xff
     348:	28c10080 	slti	at,a2,128
     34c:	1020028a 	beqz	at,d78 <L800F9FB8+0x40>
     350:	02002825 	move	a1,s0
     354:	3c0100ff 	lui	at,0xff
     358:	02013824 	and	a3,s0,at
     35c:	00073b42 	srl	a3,a3,0xd
     360:	30e7ffff 	andi	a3,a3,0xffff
     364:	0c000000 	jal	0 <func_800F9280>
     368:	30a500ff 	andi	a1,a1,0xff
     36c:	10000283 	b	d7c <L800F9FB8+0x44>
     370:	8fbf001c 	lw	ra,28(sp)

00000374 <L800F95F4>:
     374:	3c0100ff 	lui	at,0xff
     378:	02012824 	and	a1,s0,at
     37c:	00052b42 	srl	a1,a1,0xd
     380:	30a5ffff 	andi	a1,a1,0xffff
     384:	0c000000 	jal	0 <func_800F9280>
     388:	30e400ff 	andi	a0,a3,0xff
     38c:	1000027b 	b	d7c <L800F9FB8+0x44>
     390:	8fbf001c 	lw	ra,28(sp)

00000394 <L800F9614>:
     394:	3c020000 	lui	v0,0x0
     398:	24420000 	addiu	v0,v0,0
     39c:	30f800ff 	andi	t8,a3,0xff
     3a0:	00586021 	addu	t4,v0,t8
     3a4:	918a0000 	lbu	t2,0(t4)
     3a8:	afb8002c 	sw	t8,44(sp)
     3ac:	00001825 	move	v1,zero
     3b0:	19400023 	blez	t2,440 <L800F9614+0xac>
     3b4:	01405825 	move	t3,t2
     3b8:	00187880 	sll	t7,t8,0x2
     3bc:	01f87821 	addu	t7,t7,t8
     3c0:	3c180000 	lui	t8,0x0
     3c4:	27180000 	addiu	t8,t8,0
     3c8:	000f7840 	sll	t7,t7,0x1
     3cc:	320400ff 	andi	a0,s0,0xff
     3d0:	afa40030 	sw	a0,48(sp)
     3d4:	01f83021 	addu	a2,t7,t8
     3d8:	00036840 	sll	t5,v1,0x1
     3dc:	00cd7021 	addu	t6,a2,t5
     3e0:	91d90000 	lbu	t9,0(t6)
     3e4:	00457821 	addu	t7,v0,a1
     3e8:	5499000f 	bnel	a0,t9,428 <L800F9614+0x94>
     3ec:	91f80000 	lbu	t8,0(t7)
     3f0:	14600261 	bnez	v1,d78 <L800F9FB8+0x40>
     3f4:	93a4002f 	lbu	a0,47(sp)
     3f8:	3c0100ff 	lui	at,0xff
     3fc:	02013824 	and	a3,s0,at
     400:	3206ff00 	andi	a2,s0,0xff00
     404:	00063202 	srl	a2,a2,0x8
     408:	00073b42 	srl	a3,a3,0xd
     40c:	30e7ffff 	andi	a3,a3,0xffff
     410:	30c600ff 	andi	a2,a2,0xff
     414:	0c000000 	jal	0 <func_800F9280>
     418:	93a50033 	lbu	a1,51(sp)
     41c:	10000257 	b	d7c <L800F9FB8+0x44>
     420:	8fbf001c 	lw	ra,28(sp)
     424:	91f80000 	lbu	t8,0(t7)
     428:	24630001 	addiu	v1,v1,1
     42c:	306300ff 	andi	v1,v1,0xff
     430:	0078082a 	slt	at,v1,t8
     434:	5420ffe9 	bnezl	at,3dc <L800F9614+0x48>
     438:	00036840 	sll	t5,v1,0x1
     43c:	00001825 	move	v1,zero
     440:	8fb9002c 	lw	t9,44(sp)
     444:	3c180000 	lui	t8,0x0
     448:	27180000 	addiu	t8,t8,0
     44c:	00197880 	sll	t7,t9,0x2
     450:	01f97821 	addu	t7,t7,t9
     454:	000f7840 	sll	t7,t7,0x1
     458:	320e00ff 	andi	t6,s0,0xff
     45c:	314900ff 	andi	t1,t2,0xff
     460:	afae0030 	sw	t6,48(sp)
     464:	19600014 	blez	t3,4b8 <L800F9614+0x124>
     468:	01f83021 	addu	a2,t7,t8
     46c:	3204ff00 	andi	a0,s0,0xff00
     470:	3c020000 	lui	v0,0x0
     474:	00451021 	addu	v0,v0,a1
     478:	00042202 	srl	a0,a0,0x8
     47c:	308400ff 	andi	a0,a0,0xff
     480:	90420000 	lbu	v0,0(v0)
     484:	00036840 	sll	t5,v1,0x1
     488:	00cd7021 	addu	t6,a2,t5
     48c:	91d90001 	lbu	t9,1(t6)
     490:	0099082a 	slt	at,a0,t9
     494:	54200004 	bnezl	at,4a8 <L800F9614+0x114>
     498:	24630001 	addiu	v1,v1,1
     49c:	306900ff 	andi	t1,v1,0xff
     4a0:	314300ff 	andi	v1,t2,0xff
     4a4:	24630001 	addiu	v1,v1,1
     4a8:	306300ff 	andi	v1,v1,0xff
     4ac:	0062082a 	slt	at,v1,v0
     4b0:	5420fff5 	bnezl	at,488 <L800F9614+0xf4>
     4b4:	00036840 	sll	t5,v1,0x1
     4b8:	320fff00 	andi	t7,s0,0xff00
     4bc:	000fc202 	srl	t8,t7,0x8
     4c0:	330d00ff 	andi	t5,t8,0xff
     4c4:	29610005 	slti	at,t3,5
     4c8:	10200004 	beqz	at,4dc <L800F9614+0x148>
     4cc:	afad003c 	sw	t5,60(sp)
     4d0:	254e0001 	addiu	t6,t2,1
     4d4:	a18e0000 	sb	t6,0(t4)
     4d8:	31cb00ff 	andi	t3,t6,0xff
     4dc:	2563ffff 	addiu	v1,t3,-1
     4e0:	306300ff 	andi	v1,v1,0xff
     4e4:	00601025 	move	v0,v1
     4e8:	1123000d 	beq	t1,v1,520 <L800F9614+0x18c>
     4ec:	01204025 	move	t0,t1
     4f0:	00027840 	sll	t7,v0,0x1
     4f4:	00cf2821 	addu	a1,a2,t7
     4f8:	90b8ffff 	lbu	t8,-1(a1)
     4fc:	0003c840 	sll	t9,v1,0x1
     500:	00d92021 	addu	a0,a2,t9
     504:	a0980001 	sb	t8,1(a0)
     508:	90adfffe 	lbu	t5,-2(a1)
     50c:	2463ffff 	addiu	v1,v1,-1
     510:	306300ff 	andi	v1,v1,0xff
     514:	00601025 	move	v0,v1
     518:	1503fff5 	bne	t0,v1,4f0 <L800F9614+0x15c>
     51c:	a08d0000 	sb	t5,0(a0)
     520:	8fb9003c 	lw	t9,60(sp)
     524:	8faf0030 	lw	t7,48(sp)
     528:	00097040 	sll	t6,t1,0x1
     52c:	00ce1021 	addu	v0,a2,t6
     530:	a0590001 	sb	t9,1(v0)
     534:	15000210 	bnez	t0,d78 <L800F9FB8+0x40>
     538:	a04f0000 	sb	t7,0(v0)
     53c:	3c0100ff 	lui	at,0xff
     540:	02013824 	and	a3,s0,at
     544:	00073b42 	srl	a3,a3,0xd
     548:	30e7ffff 	andi	a3,a3,0xffff
     54c:	93a4002f 	lbu	a0,47(sp)
     550:	93a50033 	lbu	a1,51(sp)
     554:	0c000000 	jal	0 <func_800F9280>
     558:	93a6003f 	lbu	a2,63(sp)
     55c:	10000207 	b	d7c <L800F9FB8+0x44>
     560:	8fbf001c 	lw	ra,28(sp)

00000564 <L800F97E4>:
     564:	3c180000 	lui	t8,0x0
     568:	27180000 	addiu	t8,t8,0
     56c:	30ed00ff 	andi	t5,a3,0xff
     570:	030d6021 	addu	t4,t8,t5
     574:	918a0000 	lbu	t2,0(t4)
     578:	afad002c 	sw	t5,44(sp)
     57c:	00001825 	move	v1,zero
     580:	01404825 	move	t1,t2
     584:	19400017 	blez	t2,5e4 <L800F97E4+0x80>
     588:	01405825 	move	t3,t2
     58c:	000d7880 	sll	t7,t5,0x2
     590:	01ed7821 	addu	t7,t7,t5
     594:	3c0d0000 	lui	t5,0x0
     598:	25ad0000 	addiu	t5,t5,0
     59c:	000f7840 	sll	t7,t7,0x1
     5a0:	00b8c821 	addu	t9,a1,t8
     5a4:	02002025 	move	a0,s0
     5a8:	308400ff 	andi	a0,a0,0xff
     5ac:	93220000 	lbu	v0,0(t9)
     5b0:	01ed3021 	addu	a2,t7,t5
     5b4:	0003c040 	sll	t8,v1,0x1
     5b8:	00d8c821 	addu	t9,a2,t8
     5bc:	932e0000 	lbu	t6,0(t9)
     5c0:	548e0004 	bnel	a0,t6,5d4 <L800F97E4+0x70>
     5c4:	24630001 	addiu	v1,v1,1
     5c8:	306900ff 	andi	t1,v1,0xff
     5cc:	314300ff 	andi	v1,t2,0xff
     5d0:	24630001 	addiu	v1,v1,1
     5d4:	306300ff 	andi	v1,v1,0xff
     5d8:	0062082a 	slt	at,v1,v0
     5dc:	5420fff6 	bnezl	at,5b8 <L800F97E4+0x54>
     5e0:	0003c040 	sll	t8,v1,0x1
     5e4:	112b001c 	beq	t1,t3,658 <L800F97E4+0xf4>
     5e8:	01204025 	move	t0,t1
     5ec:	2567ffff 	addiu	a3,t3,-1
     5f0:	0127082a 	slt	at,t1,a3
     5f4:	10200016 	beqz	at,650 <L800F97E4+0xec>
     5f8:	312300ff 	andi	v1,t1,0xff
     5fc:	8faf002c 	lw	t7,44(sp)
     600:	3c180000 	lui	t8,0x0
     604:	27180000 	addiu	t8,t8,0
     608:	000f6880 	sll	t5,t7,0x2
     60c:	01af6821 	addu	t5,t5,t7
     610:	000d6840 	sll	t5,t5,0x1
     614:	01b83021 	addu	a2,t5,t8
     618:	00601025 	move	v0,v1
     61c:	00027040 	sll	t6,v0,0x1
     620:	00ce2821 	addu	a1,a2,t6
     624:	90af0003 	lbu	t7,3(a1)
     628:	0003c840 	sll	t9,v1,0x1
     62c:	00d92021 	addu	a0,a2,t9
     630:	24630001 	addiu	v1,v1,1
     634:	a08f0001 	sb	t7,1(a0)
     638:	90ad0002 	lbu	t5,2(a1)
     63c:	306300ff 	andi	v1,v1,0xff
     640:	0067082a 	slt	at,v1,a3
     644:	00601025 	move	v0,v1
     648:	1420fff4 	bnez	at,61c <L800F97E4+0xb8>
     64c:	a08d0000 	sb	t5,0(a0)
     650:	2558ffff 	addiu	t8,t2,-1
     654:	a1980000 	sb	t8,0(t4)
     658:	150001c7 	bnez	t0,d78 <L800F9FB8+0x40>
     65c:	93a4002f 	lbu	a0,47(sp)
     660:	3c0100ff 	lui	at,0xff
     664:	02013824 	and	a3,s0,at
     668:	00073b42 	srl	a3,a3,0xd
     66c:	30e7ffff 	andi	a3,a3,0xffff
     670:	30e5ffff 	andi	a1,a3,0xffff
     674:	afa7003c 	sw	a3,60(sp)
     678:	0c000000 	jal	0 <func_800F9280>
     67c:	afac0024 	sw	t4,36(sp)
     680:	8fac0024 	lw	t4,36(sp)
     684:	8fa4002c 	lw	a0,44(sp)
     688:	8fa7003c 	lw	a3,60(sp)
     68c:	91990000 	lbu	t9,0(t4)
     690:	00047080 	sll	t6,a0,0x2
     694:	01c47021 	addu	t6,t6,a0
     698:	132001b7 	beqz	t9,d78 <L800F9FB8+0x40>
     69c:	000e7040 	sll	t6,t6,0x1
     6a0:	3c0f0000 	lui	t7,0x0
     6a4:	25ef0000 	addiu	t7,t7,0
     6a8:	01cf1021 	addu	v0,t6,t7
     6ac:	90450000 	lbu	a1,0(v0)
     6b0:	0c000000 	jal	0 <func_800F9280>
     6b4:	90460001 	lbu	a2,1(v0)
     6b8:	100001b0 	b	d7c <L800F9FB8+0x44>
     6bc:	8fbf001c 	lw	ra,28(sp)

000006c0 <L800F9940>:
     6c0:	3c0100ff 	lui	at,0xff
     6c4:	02011024 	and	v0,s0,at
     6c8:	000213c2 	srl	v0,v0,0xf
     6cc:	304300ff 	andi	v1,v0,0xff
     6d0:	14600003 	bnez	v1,6e0 <L800F9940+0x20>
     6d4:	304500ff 	andi	a1,v0,0xff
     6d8:	24650001 	addiu	a1,v1,1
     6dc:	30a500ff 	andi	a1,a1,0xff
     6e0:	30ed00ff 	andi	t5,a3,0xff
     6e4:	000dc080 	sll	t8,t5,0x2
     6e8:	030dc021 	addu	t8,t8,t5
     6ec:	0018c080 	sll	t8,t8,0x2
     6f0:	030dc023 	subu	t8,t8,t5
     6f4:	0018c0c0 	sll	t8,t8,0x3
     6f8:	320e00ff 	andi	t6,s0,0xff
     6fc:	448e2000 	mtc1	t6,$f4
     700:	3c090000 	lui	t1,0x0
     704:	030dc021 	addu	t8,t8,t5
     708:	25290000 	addiu	t1,t1,0
     70c:	0018c080 	sll	t8,t8,0x2
     710:	01381021 	addu	v0,t1,t8
     714:	05c10005 	bgez	t6,72c <L800F9940+0x6c>
     718:	468021a0 	cvt.s.w	$f6,$f4
     71c:	3c014f80 	lui	at,0x4f80
     720:	44814000 	mtc1	at,$f8
     724:	00000000 	nop
     728:	46083180 	add.s	$f6,$f6,$f8
     72c:	3c0142fe 	lui	at,0x42fe
     730:	44815000 	mtc1	at,$f10
     734:	c4420000 	lwc1	$f2,0(v0)
     738:	460a3003 	div.s	$f0,$f6,$f10
     73c:	46001032 	c.eq.s	$f2,$f0
     740:	e4400004 	swc1	$f0,4(v0)
     744:	4503018d 	bc1tl	d7c <L800F9FB8+0x44>
     748:	8fbf001c 	lw	ra,28(sp)
     74c:	c4500004 	lwc1	$f16,4(v0)
     750:	44852000 	mtc1	a1,$f4
     754:	3c014f80 	lui	at,0x4f80
     758:	46101481 	sub.s	$f18,$f2,$f16
     75c:	04a10004 	bgez	a1,770 <L800F9940+0xb0>
     760:	46802220 	cvt.s.w	$f8,$f4
     764:	44813000 	mtc1	at,$f6
     768:	00000000 	nop
     76c:	46064200 	add.s	$f8,$f8,$f6
     770:	46089283 	div.s	$f10,$f18,$f8
     774:	a445000c 	sh	a1,12(v0)
     778:	1000017f 	b	d78 <L800F9FB8+0x40>
     77c:	e44a0008 	swc1	$f10,8(v0)

00000780 <L800F9A00>:
     780:	3c0100ff 	lui	at,0xff
     784:	02011024 	and	v0,s0,at
     788:	000213c2 	srl	v0,v0,0xf
     78c:	304300ff 	andi	v1,v0,0xff
     790:	02003025 	move	a2,s0
     794:	304500ff 	andi	a1,v0,0xff
     798:	14600003 	bnez	v1,7a8 <L800F9A00+0x28>
     79c:	30c6ffff 	andi	a2,a2,0xffff
     7a0:	24650001 	addiu	a1,v1,1
     7a4:	30a500ff 	andi	a1,a1,0xff
     7a8:	44858000 	mtc1	a1,$f16
     7ac:	00001825 	move	v1,zero
     7b0:	04a10005 	bgez	a1,7c8 <L800F9A00+0x48>
     7b4:	468080a0 	cvt.s.w	$f2,$f16
     7b8:	3c014f80 	lui	at,0x4f80
     7bc:	44812000 	mtc1	at,$f4
     7c0:	00000000 	nop
     7c4:	46041080 	add.s	$f2,$f2,$f4
     7c8:	30e800ff 	andi	t0,a3,0xff
     7cc:	00087880 	sll	t7,t0,0x2
     7d0:	01e87821 	addu	t7,t7,t0
     7d4:	000f7880 	sll	t7,t7,0x2
     7d8:	01e87823 	subu	t7,t7,t0
     7dc:	000f78c0 	sll	t7,t7,0x3
     7e0:	44863000 	mtc1	a2,$f6
     7e4:	01e87821 	addu	t7,t7,t0
     7e8:	3c0d0000 	lui	t5,0x0
     7ec:	25ad0000 	addiu	t5,t5,0
     7f0:	000f7880 	sll	t7,t7,0x2
     7f4:	01ed2021 	addu	a0,t7,t5
     7f8:	04c10005 	bgez	a2,810 <L800F9A00+0x90>
     7fc:	468034a0 	cvt.s.w	$f18,$f6
     800:	3c014f80 	lui	at,0x4f80
     804:	44814000 	mtc1	at,$f8
     808:	00000000 	nop
     80c:	46089480 	add.s	$f18,$f18,$f8
     810:	3c01447a 	lui	at,0x447a
     814:	44815000 	mtc1	at,$f10
     818:	3c090000 	lui	t1,0x0
     81c:	25290000 	addiu	t1,t1,0
     820:	460a9003 	div.s	$f0,$f18,$f10
     824:	0003c140 	sll	t8,v1,0x5
     828:	00981021 	addu	v0,a0,t8
     82c:	c4500060 	lwc1	$f16,96(v0)
     830:	24630001 	addiu	v1,v1,1
     834:	306300ff 	andi	v1,v1,0xff
     838:	46008101 	sub.s	$f4,$f16,$f0
     83c:	28610010 	slti	at,v1,16
     840:	e4400064 	swc1	$f0,100(v0)
     844:	a445006c 	sh	a1,108(v0)
     848:	46022183 	div.s	$f6,$f4,$f2
     84c:	1420fff5 	bnez	at,824 <L800F9A00+0xa4>
     850:	e4460068 	swc1	$f6,104(v0)
     854:	00087080 	sll	t6,t0,0x2
     858:	01c87021 	addu	t6,t6,t0
     85c:	000e7080 	sll	t6,t6,0x2
     860:	01c87023 	subu	t6,t6,t0
     864:	000e70c0 	sll	t6,t6,0x3
     868:	01c87021 	addu	t6,t6,t0
     86c:	000e7080 	sll	t6,t6,0x2
     870:	012e7821 	addu	t7,t1,t6
     874:	3419ffff 	li	t9,0xffff
     878:	1000013f 	b	d78 <L800F9FB8+0x40>
     87c:	a5f90250 	sh	t9,592(t7)

00000880 <L800F9B00>:
     880:	3c0100ff 	lui	at,0xff
     884:	02011024 	and	v0,s0,at
     888:	000213c2 	srl	v0,v0,0xf
     88c:	304300ff 	andi	v1,v0,0xff
     890:	14600003 	bnez	v1,8a0 <L800F9B00+0x20>
     894:	304500ff 	andi	a1,v0,0xff
     898:	24650001 	addiu	a1,v1,1
     89c:	30a500ff 	andi	a1,a1,0xff
     8a0:	30ed00ff 	andi	t5,a3,0xff
     8a4:	000dc080 	sll	t8,t5,0x2
     8a8:	030dc021 	addu	t8,t8,t5
     8ac:	0018c080 	sll	t8,t8,0x2
     8b0:	030dc023 	subu	t8,t8,t5
     8b4:	0018c0c0 	sll	t8,t8,0x3
     8b8:	3204f000 	andi	a0,s0,0xf000
     8bc:	3c090000 	lui	t1,0x0
     8c0:	00042302 	srl	a0,a0,0xc
     8c4:	030dc021 	addu	t8,t8,t5
     8c8:	320f0fff 	andi	t7,s0,0xfff
     8cc:	448f4000 	mtc1	t7,$f8
     8d0:	25290000 	addiu	t1,t1,0
     8d4:	0018c080 	sll	t8,t8,0x2
     8d8:	308400ff 	andi	a0,a0,0xff
     8dc:	00047140 	sll	t6,a0,0x5
     8e0:	01381021 	addu	v0,t1,t8
     8e4:	004e1821 	addu	v1,v0,t6
     8e8:	05e10005 	bgez	t7,900 <L800F9B00+0x80>
     8ec:	468044a0 	cvt.s.w	$f18,$f8
     8f0:	3c014f80 	lui	at,0x4f80
     8f4:	44815000 	mtc1	at,$f10
     8f8:	00000000 	nop
     8fc:	460a9480 	add.s	$f18,$f18,$f10
     900:	3c01447a 	lui	at,0x447a
     904:	44818000 	mtc1	at,$f16
     908:	c4640060 	lwc1	$f4,96(v1)
     90c:	44854000 	mtc1	a1,$f8
     910:	46109003 	div.s	$f0,$f18,$f16
     914:	468042a0 	cvt.s.w	$f10,$f8
     918:	e4600064 	swc1	$f0,100(v1)
     91c:	04a10005 	bgez	a1,934 <L800F9B00+0xb4>
     920:	46002181 	sub.s	$f6,$f4,$f0
     924:	3c014f80 	lui	at,0x4f80
     928:	44819000 	mtc1	at,$f18
     92c:	00000000 	nop
     930:	46125280 	add.s	$f10,$f10,$f18
     934:	460a3403 	div.s	$f16,$f6,$f10
     938:	a465006c 	sh	a1,108(v1)
     93c:	24180001 	li	t8,1
     940:	00987004 	sllv	t6,t8,a0
     944:	e4700068 	swc1	$f16,104(v1)
     948:	944d0250 	lhu	t5,592(v0)
     94c:	01aec825 	or	t9,t5,t6
     950:	10000109 	b	d78 <L800F9FB8+0x40>
     954:	a4590250 	sh	t9,592(v0)

00000958 <L800F9BD8>:
     958:	3c0100ff 	lui	at,0xff
     95c:	02011024 	and	v0,s0,at
     960:	000213c2 	srl	v0,v0,0xf
     964:	304300ff 	andi	v1,v0,0xff
     968:	14600003 	bnez	v1,978 <L800F9BD8+0x20>
     96c:	304500ff 	andi	a1,v0,0xff
     970:	24650001 	addiu	a1,v1,1
     974:	30a500ff 	andi	a1,a1,0xff
     978:	30e800ff 	andi	t0,a3,0xff
     97c:	00087880 	sll	t7,t0,0x2
     980:	01e87821 	addu	t7,t7,t0
     984:	000f7880 	sll	t7,t7,0x2
     988:	01e87823 	subu	t7,t7,t0
     98c:	000f78c0 	sll	t7,t7,0x3
     990:	32060f00 	andi	a2,s0,0xf00
     994:	3c090000 	lui	t1,0x0
     998:	00063202 	srl	a2,a2,0x8
     99c:	01e87821 	addu	t7,t7,t0
     9a0:	320e00ff 	andi	t6,s0,0xff
     9a4:	448e2000 	mtc1	t6,$f4
     9a8:	25290000 	addiu	t1,t1,0
     9ac:	000f7880 	sll	t7,t7,0x2
     9b0:	30c600ff 	andi	a2,a2,0xff
     9b4:	00062140 	sll	a0,a2,0x5
     9b8:	012fc021 	addu	t8,t1,t7
     9bc:	03041021 	addu	v0,t8,a0
     9c0:	05c10005 	bgez	t6,9d8 <L800F9BD8+0x80>
     9c4:	46802220 	cvt.s.w	$f8,$f4
     9c8:	3c014f80 	lui	at,0x4f80
     9cc:	44819000 	mtc1	at,$f18
     9d0:	00000000 	nop
     9d4:	46124200 	add.s	$f8,$f8,$f18
     9d8:	3c0142fe 	lui	at,0x42fe
     9dc:	44813000 	mtc1	at,$f6
     9e0:	c44a0050 	lwc1	$f10,80(v0)
     9e4:	46064003 	div.s	$f0,$f8,$f6
     9e8:	46005032 	c.eq.s	$f10,$f0
     9ec:	e4400054 	swc1	$f0,84(v0)
     9f0:	450100e1 	bc1t	d78 <L800F9FB8+0x40>
     9f4:	0008c880 	sll	t9,t0,0x2
     9f8:	0328c821 	addu	t9,t9,t0
     9fc:	0019c880 	sll	t9,t9,0x2
     a00:	0328c823 	subu	t9,t9,t0
     a04:	0019c8c0 	sll	t9,t9,0x3
     a08:	0328c821 	addu	t9,t9,t0
     a0c:	0019c880 	sll	t9,t9,0x2
     a10:	01391021 	addu	v0,t1,t9
     a14:	00441821 	addu	v1,v0,a0
     a18:	c4700050 	lwc1	$f16,80(v1)
     a1c:	c4640054 	lwc1	$f4,84(v1)
     a20:	44854000 	mtc1	a1,$f8
     a24:	3c014f80 	lui	at,0x4f80
     a28:	46048481 	sub.s	$f18,$f16,$f4
     a2c:	04a10004 	bgez	a1,a40 <L800F9BD8+0xe8>
     a30:	468041a0 	cvt.s.w	$f6,$f8
     a34:	44815000 	mtc1	at,$f10
     a38:	00000000 	nop
     a3c:	460a3180 	add.s	$f6,$f6,$f10
     a40:	46069403 	div.s	$f16,$f18,$f6
     a44:	a465005c 	sh	a1,92(v1)
     a48:	24180001 	li	t8,1
     a4c:	00d86804 	sllv	t5,t8,a2
     a50:	e4700058 	swc1	$f16,88(v1)
     a54:	944f0252 	lhu	t7,594(v0)
     a58:	01ed7025 	or	t6,t7,t5
     a5c:	100000c6 	b	d78 <L800F9FB8+0x40>
     a60:	a44e0252 	sh	t6,594(v0)

00000a64 <L800F9CE4>:
     a64:	30f800ff 	andi	t8,a3,0xff
     a68:	00187c00 	sll	t7,t8,0x10
     a6c:	3c014600 	lui	at,0x4600
     a70:	01e16825 	or	t5,t7,at
     a74:	3c0100ff 	lui	at,0xff
     a78:	02017024 	and	t6,s0,at
     a7c:	000ec402 	srl	t8,t6,0x10
     a80:	02002825 	move	a1,s0
     a84:	00052e00 	sll	a1,a1,0x18
     a88:	330f00ff 	andi	t7,t8,0xff
     a8c:	01af2025 	or	a0,t5,t7
     a90:	0c000000 	jal	0 <func_800F9280>
     a94:	00052e03 	sra	a1,a1,0x18
     a98:	100000b8 	b	d7c <L800F9FB8+0x44>
     a9c:	8fbf001c 	lw	ra,28(sp)

00000aa0 <L800F9D20>:
     aa0:	30e200ff 	andi	v0,a3,0xff
     aa4:	00027080 	sll	t6,v0,0x2
     aa8:	01c27021 	addu	t6,t6,v0
     aac:	000e7080 	sll	t6,t6,0x2
     ab0:	01c27023 	subu	t6,t6,v0
     ab4:	000e70c0 	sll	t6,t6,0x3
     ab8:	3c090000 	lui	t1,0x0
     abc:	01c27021 	addu	t6,t6,v0
     ac0:	25290000 	addiu	t1,t1,0
     ac4:	000e7080 	sll	t6,t6,0x2
     ac8:	012ec821 	addu	t9,t1,t6
     acc:	32060f00 	andi	a2,s0,0xf00
     ad0:	97380258 	lhu	t8,600(t9)
     ad4:	00063202 	srl	a2,a2,0x8
     ad8:	30c600ff 	andi	a2,a2,0xff
     adc:	240d0001 	li	t5,1
     ae0:	00cd7804 	sllv	t7,t5,a2
     ae4:	030f7024 	and	t6,t8,t7
     ae8:	15c000a3 	bnez	t6,d78 <L800F9FB8+0x40>
     aec:	305900ff 	andi	t9,v0,0xff
     af0:	00196c00 	sll	t5,t9,0x10
     af4:	3c010600 	lui	at,0x600
     af8:	01a1c025 	or	t8,t5,at
     afc:	30cf00ff 	andi	t7,a2,0xff
     b00:	000f7200 	sll	t6,t7,0x8
     b04:	3c0100ff 	lui	at,0xff
     b08:	02016824 	and	t5,s0,at
     b0c:	030ec825 	or	t9,t8,t6
     b10:	000dc402 	srl	t8,t5,0x10
     b14:	02002825 	move	a1,s0
     b18:	00052e00 	sll	a1,a1,0x18
     b1c:	330e00ff 	andi	t6,t8,0xff
     b20:	032e2025 	or	a0,t9,t6
     b24:	0c000000 	jal	0 <func_800F9280>
     b28:	00052e03 	sra	a1,a1,0x18
     b2c:	10000093 	b	d7c <L800F9FB8+0x44>
     b30:	8fbf001c 	lw	ra,28(sp)

00000b34 <L800F9DB4>:
     b34:	30ef00ff 	andi	t7,a3,0xff
     b38:	000fc080 	sll	t8,t7,0x2
     b3c:	030fc021 	addu	t8,t8,t7
     b40:	0018c080 	sll	t8,t8,0x2
     b44:	030fc023 	subu	t8,t8,t7
     b48:	0018c0c0 	sll	t8,t8,0x3
     b4c:	3c090000 	lui	t1,0x0
     b50:	030fc021 	addu	t8,t8,t7
     b54:	25290000 	addiu	t1,t1,0
     b58:	0018c080 	sll	t8,t8,0x2
     b5c:	0138c821 	addu	t9,t1,t8
     b60:	10000085 	b	d78 <L800F9FB8+0x40>
     b64:	a7300258 	sh	s0,600(t9)

00000b68 <L800F9DE8>:
     b68:	02003025 	move	a2,s0
     b6c:	30c6ffff 	andi	a2,a2,0xffff
     b70:	10c00013 	beqz	a2,bc0 <L800F9DE8+0x58>
     b74:	00c01825 	move	v1,a2
     b78:	00e01025 	move	v0,a3
     b7c:	304200ff 	andi	v0,v0,0xff
     b80:	00021400 	sll	v0,v0,0x10
     b84:	3c019000 	lui	at,0x9000
     b88:	00412025 	or	a0,v0,at
     b8c:	afa20030 	sw	v0,48(sp)
     b90:	30c5ffff 	andi	a1,a2,0xffff
     b94:	afa60034 	sw	a2,52(sp)
     b98:	0c000000 	jal	0 <func_800F9280>
     b9c:	afa70038 	sw	a3,56(sp)
     ba0:	8fa20030 	lw	v0,48(sp)
     ba4:	3c010800 	lui	at,0x800
     ba8:	24050001 	li	a1,1
     bac:	00412025 	or	a0,v0,at
     bb0:	0c000000 	jal	0 <func_800F9280>
     bb4:	3484ff00 	ori	a0,a0,0xff00
     bb8:	8fa30034 	lw	v1,52(sp)
     bbc:	8fa70038 	lw	a3,56(sp)
     bc0:	3866ffff 	xori	a2,v1,0xffff
     bc4:	10c0006c 	beqz	a2,d78 <L800F9FB8+0x40>
     bc8:	00e01025 	move	v0,a3
     bcc:	304200ff 	andi	v0,v0,0xff
     bd0:	00021400 	sll	v0,v0,0x10
     bd4:	3c019000 	lui	at,0x9000
     bd8:	00412025 	or	a0,v0,at
     bdc:	3c010800 	lui	at,0x800
     be0:	00418025 	or	s0,v0,at
     be4:	3610ff00 	ori	s0,s0,0xff00
     be8:	0c000000 	jal	0 <func_800F9280>
     bec:	30c5ffff 	andi	a1,a2,0xffff
     bf0:	02002025 	move	a0,s0
     bf4:	0c000000 	jal	0 <func_800F9280>
     bf8:	00002825 	move	a1,zero
     bfc:	1000005f 	b	d7c <L800F9FB8+0x44>
     c00:	8fbf001c 	lw	ra,28(sp)

00000c04 <L800F9E84>:
     c04:	30ee00ff 	andi	t6,a3,0xff
     c08:	000e7880 	sll	t7,t6,0x2
     c0c:	01ee7821 	addu	t7,t7,t6
     c10:	000f7880 	sll	t7,t7,0x2
     c14:	01ee7823 	subu	t7,t7,t6
     c18:	000f78c0 	sll	t7,t7,0x3
     c1c:	3c090000 	lui	t1,0x0
     c20:	01ee7821 	addu	t7,t7,t6
     c24:	25290000 	addiu	t1,t1,0
     c28:	000f7880 	sll	t7,t7,0x2
     c2c:	012fc021 	addu	t8,t1,t7
     c30:	10000051 	b	d78 <L800F9FB8+0x40>
     c34:	af100014 	sw	s0,20(t8)

00000c38 <L800F9EB8>:
     c38:	3c0100f0 	lui	at,0xf0
     c3c:	02016824 	and	t5,s0,at
     c40:	000dcd02 	srl	t9,t5,0x14
     c44:	332e00ff 	andi	t6,t9,0xff
     c48:	2401000f 	li	at,15
     c4c:	11c10019 	beq	t6,at,cb4 <L800F9EB8+0x7c>
     c50:	30ef00ff 	andi	t7,a3,0xff
     c54:	000fc080 	sll	t8,t7,0x2
     c58:	030fc021 	addu	t8,t8,t7
     c5c:	0018c080 	sll	t8,t8,0x2
     c60:	030fc023 	subu	t8,t8,t7
     c64:	0018c0c0 	sll	t8,t8,0x3
     c68:	3c090000 	lui	t1,0x0
     c6c:	030fc021 	addu	t8,t8,t7
     c70:	25290000 	addiu	t1,t1,0
     c74:	0018c080 	sll	t8,t8,0x2
     c78:	01381021 	addu	v0,t1,t8
     c7c:	9043004d 	lbu	v1,77(v0)
     c80:	28610007 	slti	at,v1,7
     c84:	1020003c 	beqz	at,d78 <L800F9FB8+0x40>
     c88:	306900ff 	andi	t1,v1,0xff
     c8c:	246d0001 	addiu	t5,v1,1
     c90:	29210008 	slti	at,t1,8
     c94:	10200038 	beqz	at,d78 <L800F9FB8+0x40>
     c98:	a04d004d 	sb	t5,77(v0)
     c9c:	0009c880 	sll	t9,t1,0x2
     ca0:	00597021 	addu	t6,v0,t9
     ca4:	add0002c 	sw	s0,44(t6)
     ca8:	240f0002 	li	t7,2
     cac:	10000032 	b	d78 <L800F9FB8+0x40>
     cb0:	a04f004c 	sb	t7,76(v0)
     cb4:	30f800ff 	andi	t8,a3,0xff
     cb8:	00186880 	sll	t5,t8,0x2
     cbc:	01b86821 	addu	t5,t5,t8
     cc0:	000d6880 	sll	t5,t5,0x2
     cc4:	01b86823 	subu	t5,t5,t8
     cc8:	000d68c0 	sll	t5,t5,0x3
     ccc:	3c090000 	lui	t1,0x0
     cd0:	01b86821 	addu	t5,t5,t8
     cd4:	25290000 	addiu	t1,t1,0
     cd8:	000d6880 	sll	t5,t5,0x2
     cdc:	012dc821 	addu	t9,t1,t5
     ce0:	10000025 	b	d78 <L800F9FB8+0x40>
     ce4:	a320004d 	sb	zero,77(t9)

00000ce8 <L800F9F68>:
     ce8:	32020f00 	andi	v0,s0,0xf00
     cec:	00021202 	srl	v0,v0,0x8
     cf0:	304200ff 	andi	v0,v0,0xff
     cf4:	10400006 	beqz	v0,d10 <L800F9F68+0x28>
     cf8:	3c04f000 	lui	a0,0xf000
     cfc:	24010001 	li	at,1
     d00:	1041000a 	beq	v0,at,d2c <L800F9F68+0x44>
     d04:	32190001 	andi	t9,s0,0x1
     d08:	1000001c 	b	d7c <L800F9FB8+0x44>
     d0c:	8fbf001c 	lw	ra,28(sp)
     d10:	320f00ff 	andi	t7,s0,0xff
     d14:	3c050000 	lui	a1,0x0
     d18:	00af2821 	addu	a1,a1,t7
     d1c:	0c000000 	jal	0 <func_800F9280>
     d20:	90a50000 	lbu	a1,0(a1)
     d24:	10000015 	b	d7c <L800F9FB8+0x44>
     d28:	8fbf001c 	lw	ra,28(sp)
     d2c:	3c010000 	lui	at,0x0
     d30:	10000011 	b	d78 <L800F9FB8+0x40>
     d34:	a0390000 	sb	t9,0(at)

00000d38 <L800F9FB8>:
     d38:	320eff00 	andi	t6,s0,0xff00
     d3c:	3c030000 	lui	v1,0x0
     d40:	000e7a02 	srl	t7,t6,0x8
     d44:	3c010000 	lui	at,0x0
     d48:	24630000 	addiu	v1,v1,0
     d4c:	a02f0000 	sb	t7,0(at)
     d50:	90780000 	lbu	t8,0(v1)
     d54:	a0700000 	sb	s0,0(v1)
     d58:	320400ff 	andi	a0,s0,0xff
     d5c:	0c000000 	jal	0 <func_800F9280>
     d60:	a3b80059 	sb	t8,89(sp)
     d64:	0c000000 	jal	0 <func_800F9280>
     d68:	93a40059 	lbu	a0,89(sp)
     d6c:	3c04f800 	lui	a0,0xf800
     d70:	0c000000 	jal	0 <func_800F9280>
     d74:	00002825 	move	a1,zero
     d78:	8fbf001c 	lw	ra,28(sp)
     d7c:	8fb00018 	lw	s0,24(sp)
     d80:	27bd0068 	addiu	sp,sp,104
     d84:	03e00008 	jr	ra
     d88:	00000000 	nop

00000d8c <Audio_SetBGM>:
     d8c:	3c030000 	lui	v1,0x0
     d90:	24630000 	addiu	v1,v1,0
     d94:	90620000 	lbu	v0,0(v1)
     d98:	3c010000 	lui	at,0x0
     d9c:	00027080 	sll	t6,v0,0x2
     da0:	002e0821 	addu	at,at,t6
     da4:	ac240000 	sw	a0,0(at)
     da8:	244f0001 	addiu	t7,v0,1
     dac:	03e00008 	jr	ra
     db0:	a06f0000 	sb	t7,0(v1)

00000db4 <func_800FA034>:
     db4:	27bdffd8 	addiu	sp,sp,-40
     db8:	afb2001c 	sw	s2,28(sp)
     dbc:	afb10018 	sw	s1,24(sp)
     dc0:	3c110000 	lui	s1,0x0
     dc4:	3c120000 	lui	s2,0x0
     dc8:	26520000 	addiu	s2,s2,0
     dcc:	26310000 	addiu	s1,s1,0
     dd0:	afb00014 	sw	s0,20(sp)
     dd4:	92300000 	lbu	s0,0(s1)
     dd8:	924e0000 	lbu	t6,0(s2)
     ddc:	afb30020 	sw	s3,32(sp)
     de0:	afbf0024 	sw	ra,36(sp)
     de4:	120e000c 	beq	s0,t6,e18 <func_800FA034+0x64>
     de8:	3c130000 	lui	s3,0x0
     dec:	26730000 	addiu	s3,s3,0
     df0:	00107880 	sll	t7,s0,0x2
     df4:	026fc021 	addu	t8,s3,t7
     df8:	8f040000 	lw	a0,0(t8)
     dfc:	26190001 	addiu	t9,s0,1
     e00:	0c000000 	jal	0 <func_800F9280>
     e04:	a2390000 	sb	t9,0(s1)
     e08:	92300000 	lbu	s0,0(s1)
     e0c:	92480000 	lbu	t0,0(s2)
     e10:	5608fff8 	bnel	s0,t0,df4 <func_800FA034+0x40>
     e14:	00107880 	sll	t7,s0,0x2
     e18:	8fbf0024 	lw	ra,36(sp)
     e1c:	8fb00014 	lw	s0,20(sp)
     e20:	8fb10018 	lw	s1,24(sp)
     e24:	8fb2001c 	lw	s2,28(sp)
     e28:	8fb30020 	lw	s3,32(sp)
     e2c:	03e00008 	jr	ra
     e30:	27bd0028 	addiu	sp,sp,40

00000e34 <func_800FA0B4>:
     e34:	afa40000 	sw	a0,0(sp)
     e38:	308400ff 	andi	a0,a0,0xff
     e3c:	00047080 	sll	t6,a0,0x2
     e40:	01c47023 	subu	t6,t6,a0
     e44:	000e7080 	sll	t6,t6,0x2
     e48:	01c47023 	subu	t6,t6,a0
     e4c:	000e7140 	sll	t6,t6,0x5
     e50:	3c0f0000 	lui	t7,0x0
     e54:	01ee7821 	addu	t7,t7,t6
     e58:	8def3530 	lw	t7,13616(t7)
     e5c:	0004c880 	sll	t9,a0,0x2
     e60:	0324c821 	addu	t9,t9,a0
     e64:	000fc7c2 	srl	t8,t7,0x1f
     e68:	17000003 	bnez	t8,e78 <func_800FA0B4+0x44>
     e6c:	0019c880 	sll	t9,t9,0x2
     e70:	03e00008 	jr	ra
     e74:	3402ffff 	li	v0,0xffff
     e78:	0324c823 	subu	t9,t9,a0
     e7c:	0019c8c0 	sll	t9,t9,0x3
     e80:	0324c821 	addu	t9,t9,a0
     e84:	0019c880 	sll	t9,t9,0x2
     e88:	3c020000 	lui	v0,0x0
     e8c:	00591021 	addu	v0,v0,t9
     e90:	94420000 	lhu	v0,0(v0)
     e94:	03e00008 	jr	ra
     e98:	00000000 	nop

00000e9c <func_800FA11C>:
     e9c:	3c020000 	lui	v0,0x0
     ea0:	3c030000 	lui	v1,0x0
     ea4:	90630000 	lbu	v1,0(v1)
     ea8:	90420000 	lbu	v0,0(v0)
     eac:	3c060000 	lui	a2,0x0
     eb0:	24c60000 	addiu	a2,a2,0
     eb4:	1062000c 	beq	v1,v0,ee8 <func_800FA11C+0x4c>
     eb8:	00027080 	sll	t6,v0,0x2
     ebc:	00ce7821 	addu	t7,a2,t6
     ec0:	8df80000 	lw	t8,0(t7)
     ec4:	24420001 	addiu	v0,v0,1
     ec8:	304200ff 	andi	v0,v0,0xff
     ecc:	0305c824 	and	t9,t8,a1
     ed0:	14990003 	bne	a0,t9,ee0 <func_800FA11C+0x44>
     ed4:	00000000 	nop
     ed8:	03e00008 	jr	ra
     edc:	00001025 	move	v0,zero
     ee0:	5462fff6 	bnel	v1,v0,ebc <func_800FA11C+0x20>
     ee4:	00027080 	sll	t6,v0,0x2
     ee8:	24020001 	li	v0,1
     eec:	03e00008 	jr	ra
     ef0:	00000000 	nop

00000ef4 <func_800FA174>:
     ef4:	afa40000 	sw	a0,0(sp)
     ef8:	308400ff 	andi	a0,a0,0xff
     efc:	3c010000 	lui	at,0x0
     f00:	00240821 	addu	at,at,a0
     f04:	03e00008 	jr	ra
     f08:	a0200000 	sb	zero,0(at)

00000f0c <func_800FA18C>:
     f0c:	afa40000 	sw	a0,0(sp)
     f10:	308400ff 	andi	a0,a0,0xff
     f14:	00047080 	sll	t6,a0,0x2
     f18:	01c47021 	addu	t6,t6,a0
     f1c:	000e7080 	sll	t6,t6,0x2
     f20:	01c47023 	subu	t6,t6,a0
     f24:	000e70c0 	sll	t6,t6,0x3
     f28:	01c47021 	addu	t6,t6,a0
     f2c:	3c0f0000 	lui	t7,0x0
     f30:	25ef0000 	addiu	t7,t7,0
     f34:	000e7080 	sll	t6,t6,0x2
     f38:	01cf1821 	addu	v1,t6,t7
     f3c:	9066004d 	lbu	a2,77(v1)
     f40:	afa50004 	sw	a1,4(sp)
     f44:	30a700ff 	andi	a3,a1,0xff
     f48:	18c0001b 	blez	a2,fb8 <func_800FA18C+0xac>
     f4c:	00001025 	move	v0,zero
     f50:	0004c080 	sll	t8,a0,0x2
     f54:	0304c021 	addu	t8,t8,a0
     f58:	0018c080 	sll	t8,t8,0x2
     f5c:	0304c023 	subu	t8,t8,a0
     f60:	0018c0c0 	sll	t8,t8,0x3
     f64:	0304c021 	addu	t8,t8,a0
     f68:	0018c080 	sll	t8,t8,0x2
     f6c:	030f2821 	addu	a1,t8,t7
     f70:	00e04025 	move	t0,a3
     f74:	3c0aff00 	lui	t2,0xff00
     f78:	3c0900f0 	lui	t1,0xf0
     f7c:	0002c880 	sll	t9,v0,0x2
     f80:	00b93821 	addu	a3,a1,t9
     f84:	8ceb002c 	lw	t3,44(a3)
     f88:	24420001 	addiu	v0,v0,1
     f8c:	304200ff 	andi	v0,v0,0xff
     f90:	01692024 	and	a0,t3,t1
     f94:	00042502 	srl	a0,a0,0x14
     f98:	308400ff 	andi	a0,a0,0xff
     f9c:	55040004 	bnel	t0,a0,fb0 <func_800FA18C+0xa4>
     fa0:	0046082a 	slt	at,v0,a2
     fa4:	acea002c 	sw	t2,44(a3)
     fa8:	9066004d 	lbu	a2,77(v1)
     fac:	0046082a 	slt	at,v0,a2
     fb0:	5420fff3 	bnezl	at,f80 <func_800FA18C+0x74>
     fb4:	0002c880 	sll	t9,v0,0x2
     fb8:	03e00008 	jr	ra
     fbc:	00000000 	nop

00000fc0 <func_800FA240>:
     fc0:	27bdffe8 	addiu	sp,sp,-24
     fc4:	afa40018 	sw	a0,24(sp)
     fc8:	93ae001b 	lbu	t6,27(sp)
     fcc:	3c090000 	lui	t1,0x0
     fd0:	25290000 	addiu	t1,t1,0
     fd4:	000e7880 	sll	t7,t6,0x2
     fd8:	01ee7821 	addu	t7,t7,t6
     fdc:	000f7880 	sll	t7,t7,0x2
     fe0:	01ee7823 	subu	t7,t7,t6
     fe4:	000f78c0 	sll	t7,t7,0x3
     fe8:	01ee7821 	addu	t7,t7,t6
     fec:	afa5001c 	sw	a1,28(sp)
     ff0:	000f7880 	sll	t7,t7,0x2
     ff4:	30a500ff 	andi	a1,a1,0xff
     ff8:	afa70024 	sw	a3,36(sp)
     ffc:	012f1821 	addu	v1,t1,t7
    1000:	30e700ff 	andi	a3,a3,0xff
    1004:	0065c821 	addu	t9,v1,a1
    1008:	30d8007f 	andi	t8,a2,0x7f
    100c:	afbf0014 	sw	ra,20(sp)
    1010:	afa60020 	sw	a2,32(sp)
    1014:	a338000e 	sb	t8,14(t9)
    1018:	10e0000e 	beqz	a3,1054 <func_800FA240+0x94>
    101c:	00e04025 	move	t0,a3
    1020:	93aa001b 	lbu	t2,27(sp)
    1024:	240c0001 	li	t4,1
    1028:	000a5880 	sll	t3,t2,0x2
    102c:	016a5821 	addu	t3,t3,t2
    1030:	000b5880 	sll	t3,t3,0x2
    1034:	016a5823 	subu	t3,t3,t2
    1038:	000b58c0 	sll	t3,t3,0x3
    103c:	016a5821 	addu	t3,t3,t2
    1040:	000b5880 	sll	t3,t3,0x2
    1044:	012b1021 	addu	v0,t1,t3
    1048:	a04c0013 	sb	t4,19(v0)
    104c:	1000003f 	b	114c <func_800FA240+0x18c>
    1050:	a0470012 	sb	a3,18(v0)
    1054:	3c013f80 	lui	at,0x3f80
    1058:	44810000 	mtc1	at,$f0
    105c:	3c0142fe 	lui	at,0x42fe
    1060:	44811000 	mtc1	at,$f2
    1064:	00001025 	move	v0,zero
    1068:	00626821 	addu	t5,v1,v0
    106c:	91ae000e 	lbu	t6,14(t5)
    1070:	3c014f80 	lui	at,0x4f80
    1074:	448e2000 	mtc1	t6,$f4
    1078:	05c10004 	bgez	t6,108c <func_800FA240+0xcc>
    107c:	468021a0 	cvt.s.w	$f6,$f4
    1080:	44814000 	mtc1	at,$f8
    1084:	00000000 	nop
    1088:	46083180 	add.s	$f6,$f6,$f8
    108c:	46023283 	div.s	$f10,$f6,$f2
    1090:	24420001 	addiu	v0,v0,1
    1094:	304200ff 	andi	v0,v0,0xff
    1098:	28410004 	slti	at,v0,4
    109c:	460a0002 	mul.s	$f0,$f0,$f10
    10a0:	5420fff2 	bnezl	at,106c <func_800FA240+0xac>
    10a4:	00626821 	addu	t5,v1,v0
    10a8:	46020402 	mul.s	$f16,$f0,$f2
    10ac:	240d0001 	li	t5,1
    10b0:	93af001b 	lbu	t7,27(sp)
    10b4:	3c014000 	lui	at,0x4000
    10b8:	00085400 	sll	t2,t0,0x10
    10bc:	000fc600 	sll	t8,t7,0x18
    10c0:	0301c825 	or	t9,t8,at
    10c4:	444cf800 	cfc1	t4,$31
    10c8:	44cdf800 	ctc1	t5,$31
    10cc:	032a5825 	or	t3,t9,t2
    10d0:	460084a4 	cvt.w.s	$f18,$f16
    10d4:	444df800 	cfc1	t5,$31
    10d8:	00000000 	nop
    10dc:	31ad0078 	andi	t5,t5,0x78
    10e0:	11a00012 	beqz	t5,112c <func_800FA240+0x16c>
    10e4:	3c014f00 	lui	at,0x4f00
    10e8:	44819000 	mtc1	at,$f18
    10ec:	240d0001 	li	t5,1
    10f0:	46128481 	sub.s	$f18,$f16,$f18
    10f4:	44cdf800 	ctc1	t5,$31
    10f8:	00000000 	nop
    10fc:	460094a4 	cvt.w.s	$f18,$f18
    1100:	444df800 	cfc1	t5,$31
    1104:	00000000 	nop
    1108:	31ad0078 	andi	t5,t5,0x78
    110c:	15a00005 	bnez	t5,1124 <func_800FA240+0x164>
    1110:	00000000 	nop
    1114:	440d9000 	mfc1	t5,$f18
    1118:	3c018000 	lui	at,0x8000
    111c:	10000007 	b	113c <func_800FA240+0x17c>
    1120:	01a16825 	or	t5,t5,at
    1124:	10000005 	b	113c <func_800FA240+0x17c>
    1128:	240dffff 	li	t5,-1
    112c:	440d9000 	mfc1	t5,$f18
    1130:	00000000 	nop
    1134:	05a0fffb 	bltz	t5,1124 <func_800FA240+0x164>
    1138:	00000000 	nop
    113c:	44ccf800 	ctc1	t4,$31
    1140:	31ae00ff 	andi	t6,t5,0xff
    1144:	0c000000 	jal	0 <func_800F9280>
    1148:	016e2025 	or	a0,t3,t6
    114c:	8fbf0014 	lw	ra,20(sp)
    1150:	27bd0018 	addiu	sp,sp,24
    1154:	03e00008 	jr	ra
    1158:	00000000 	nop

0000115c <func_800FA3DC>:
    115c:	27bdff70 	addiu	sp,sp,-144
    1160:	afb7003c 	sw	s7,60(sp)
    1164:	f7b40018 	sdc1	$f20,24(sp)
    1168:	3c0142fe 	lui	at,0x42fe
    116c:	afbe0040 	sw	s8,64(sp)
    1170:	afb60038 	sw	s6,56(sp)
    1174:	afb50034 	sw	s5,52(sp)
    1178:	3c170000 	lui	s7,0x0
    117c:	4481a000 	mtc1	at,$f20
    1180:	afbf0044 	sw	ra,68(sp)
    1184:	afb40030 	sw	s4,48(sp)
    1188:	afb3002c 	sw	s3,44(sp)
    118c:	afb20028 	sw	s2,40(sp)
    1190:	afb10024 	sw	s1,36(sp)
    1194:	afb00020 	sw	s0,32(sp)
    1198:	26f70000 	addiu	s7,s7,0
    119c:	0000a825 	move	s5,zero
    11a0:	3c16e300 	lui	s6,0xe300
    11a4:	241e0264 	li	s8,612
    11a8:	02be0019 	multu	s5,s8
    11ac:	00007012 	mflo	t6
    11b0:	02ee9021 	addu	s2,s7,t6
    11b4:	924f0260 	lbu	t7,608(s2)
    11b8:	51e00010 	beqzl	t7,11fc <func_800FA3DC+0xa0>
    11bc:	92580013 	lbu	t8,19(s2)
    11c0:	0c000000 	jal	0 <func_800F9280>
    11c4:	27a40070 	addiu	a0,sp,112
    11c8:	24010001 	li	at,1
    11cc:	10410007 	beq	v0,at,11ec <func_800FA3DC+0x90>
    11d0:	24010002 	li	at,2
    11d4:	10410005 	beq	v0,at,11ec <func_800FA3DC+0x90>
    11d8:	24010003 	li	at,3
    11dc:	10410003 	beq	v0,at,11ec <func_800FA3DC+0x90>
    11e0:	24010004 	li	at,4
    11e4:	54410005 	bnel	v0,at,11fc <func_800FA3DC+0xa0>
    11e8:	92580013 	lbu	t8,19(s2)
    11ec:	a2400260 	sb	zero,608(s2)
    11f0:	0c000000 	jal	0 <func_800F9280>
    11f4:	8e44025c 	lw	a0,604(s2)
    11f8:	92580013 	lbu	t8,19(s2)
    11fc:	13000047 	beqz	t8,131c <func_800FA3DC+0x1c0>
    1200:	0015c880 	sll	t9,s5,0x2
    1204:	0335c821 	addu	t9,t9,s5
    1208:	0019c880 	sll	t9,t9,0x2
    120c:	0335c823 	subu	t9,t9,s5
    1210:	0019c8c0 	sll	t9,t9,0x3
    1214:	3c013f80 	lui	at,0x3f80
    1218:	0335c821 	addu	t9,t9,s5
    121c:	0019c880 	sll	t9,t9,0x2
    1220:	44810000 	mtc1	at,$f0
    1224:	02f9a021 	addu	s4,s7,t9
    1228:	00009825 	move	s3,zero
    122c:	02a01025 	move	v0,s5
    1230:	02935021 	addu	t2,s4,s3
    1234:	914b000e 	lbu	t3,14(t2)
    1238:	3c014f80 	lui	at,0x4f80
    123c:	448b2000 	mtc1	t3,$f4
    1240:	05610004 	bgez	t3,1254 <func_800FA3DC+0xf8>
    1244:	468021a0 	cvt.s.w	$f6,$f4
    1248:	44814000 	mtc1	at,$f8
    124c:	00000000 	nop
    1250:	46083180 	add.s	$f6,$f6,$f8
    1254:	46143283 	div.s	$f10,$f6,$f20
    1258:	26730001 	addiu	s3,s3,1
    125c:	327300ff 	andi	s3,s3,0xff
    1260:	2a610004 	slti	at,s3,4
    1264:	460a0002 	mul.s	$f0,$f0,$f10
    1268:	5420fff2 	bnezl	at,1234 <func_800FA3DC+0xd8>
    126c:	02935021 	addu	t2,s4,s3
    1270:	46140402 	mul.s	$f16,$f0,$f20
    1274:	240a0001 	li	t2,1
    1278:	924c0012 	lbu	t4,18(s2)
    127c:	3c014000 	lui	at,0x4000
    1280:	00027e00 	sll	t7,v0,0x18
    1284:	000c6c00 	sll	t5,t4,0x10
    1288:	01a17025 	or	t6,t5,at
    128c:	4459f800 	cfc1	t9,$31
    1290:	44caf800 	ctc1	t2,$31
    1294:	01cfc025 	or	t8,t6,t7
    1298:	3c014f00 	lui	at,0x4f00
    129c:	460084a4 	cvt.w.s	$f18,$f16
    12a0:	444af800 	cfc1	t2,$31
    12a4:	00000000 	nop
    12a8:	314a0078 	andi	t2,t2,0x78
    12ac:	51400013 	beqzl	t2,12fc <func_800FA3DC+0x1a0>
    12b0:	440a9000 	mfc1	t2,$f18
    12b4:	44819000 	mtc1	at,$f18
    12b8:	240a0001 	li	t2,1
    12bc:	46128481 	sub.s	$f18,$f16,$f18
    12c0:	44caf800 	ctc1	t2,$31
    12c4:	00000000 	nop
    12c8:	460094a4 	cvt.w.s	$f18,$f18
    12cc:	444af800 	cfc1	t2,$31
    12d0:	00000000 	nop
    12d4:	314a0078 	andi	t2,t2,0x78
    12d8:	15400005 	bnez	t2,12f0 <func_800FA3DC+0x194>
    12dc:	00000000 	nop
    12e0:	440a9000 	mfc1	t2,$f18
    12e4:	3c018000 	lui	at,0x8000
    12e8:	10000007 	b	1308 <func_800FA3DC+0x1ac>
    12ec:	01415025 	or	t2,t2,at
    12f0:	10000005 	b	1308 <func_800FA3DC+0x1ac>
    12f4:	240affff 	li	t2,-1
    12f8:	440a9000 	mfc1	t2,$f18
    12fc:	00000000 	nop
    1300:	0540fffb 	bltz	t2,12f0 <func_800FA3DC+0x194>
    1304:	00000000 	nop
    1308:	44d9f800 	ctc1	t9,$31
    130c:	314b00ff 	andi	t3,t2,0xff
    1310:	0c000000 	jal	0 <func_800F9280>
    1314:	030b2025 	or	a0,t8,t3
    1318:	a2400013 	sb	zero,19(s2)
    131c:	9642000c 	lhu	v0,12(s2)
    1320:	10400011 	beqz	v0,1368 <func_800FA3DC+0x20c>
    1324:	244cffff 	addiu	t4,v0,-1
    1328:	318dffff 	andi	t5,t4,0xffff
    132c:	11a00006 	beqz	t5,1348 <func_800FA3DC+0x1ec>
    1330:	a64c000c 	sh	t4,12(s2)
    1334:	c6440000 	lwc1	$f4,0(s2)
    1338:	c6480008 	lwc1	$f8,8(s2)
    133c:	46082181 	sub.s	$f6,$f4,$f8
    1340:	10000003 	b	1350 <func_800FA3DC+0x1f4>
    1344:	e6460000 	swc1	$f6,0(s2)
    1348:	c64a0004 	lwc1	$f10,4(s2)
    134c:	e64a0000 	swc1	$f10,0(s2)
    1350:	32a400ff 	andi	a0,s5,0xff
    1354:	00042400 	sll	a0,a0,0x10
    1358:	3c014100 	lui	at,0x4100
    135c:	00812025 	or	a0,a0,at
    1360:	0c000000 	jal	0 <func_800F9280>
    1364:	8e450000 	lw	a1,0(s2)
    1368:	8e450014 	lw	a1,20(s2)
    136c:	10a0008f 	beqz	a1,15ac <func_800FA3DC+0x450>
    1370:	3c0100ff 	lui	at,0xff
    1374:	00a11024 	and	v0,a1,at
    1378:	000213c2 	srl	v0,v0,0xf
    137c:	30a40fff 	andi	a0,a1,0xfff
    1380:	304700ff 	andi	a3,v0,0xff
    1384:	00a01825 	move	v1,a1
    1388:	304800ff 	andi	t0,v0,0xff
    138c:	14e00003 	bnez	a3,139c <func_800FA3DC+0x240>
    1390:	3086ffff 	andi	a2,a0,0xffff
    1394:	24e80001 	addiu	t0,a3,1
    1398:	310800ff 	andi	t0,t0,0xff
    139c:	00157080 	sll	t6,s5,0x2
    13a0:	01d57023 	subu	t6,t6,s5
    13a4:	000e7080 	sll	t6,t6,0x2
    13a8:	01d57023 	subu	t6,t6,s5
    13ac:	3c0f0000 	lui	t7,0x0
    13b0:	25ef0000 	addiu	t7,t7,0
    13b4:	000e7140 	sll	t6,t6,0x5
    13b8:	01cf2821 	addu	a1,t6,t7
    13bc:	8cb93530 	lw	t9,13616(a1)
    13c0:	24010030 	li	at,48
    13c4:	3062f000 	andi	v0,v1,0xf000
    13c8:	001957c2 	srl	t2,t9,0x1f
    13cc:	51400078 	beqzl	t2,15b0 <func_800FA3DC+0x454>
    13d0:	96420028 	lhu	v0,40(s2)
    13d4:	94a93538 	lhu	t1,13624(a1)
    13d8:	00021302 	srl	v0,v0,0xc
    13dc:	304200ff 	andi	v0,v0,0xff
    13e0:	0121001a 	div	zero,t1,at
    13e4:	00004812 	mflo	t1
    13e8:	24010001 	li	at,1
    13ec:	1041000c 	beq	v0,at,1420 <func_800FA3DC+0x2c4>
    13f0:	3127ffff 	andi	a3,t1,0xffff
    13f4:	24010002 	li	at,2
    13f8:	1041000d 	beq	v0,at,1430 <func_800FA3DC+0x2d4>
    13fc:	3083ffff 	andi	v1,a0,0xffff
    1400:	24010003 	li	at,3
    1404:	10410011 	beq	v0,at,144c <func_800FA3DC+0x2f0>
    1408:	308bffff 	andi	t3,a0,0xffff
    140c:	24010004 	li	at,4
    1410:	50410045 	beql	v0,at,1528 <func_800FA3DC+0x3cc>
    1414:	96420018 	lhu	v0,24(s2)
    1418:	10000048 	b	153c <func_800FA3DC+0x3e0>
    141c:	96420018 	lhu	v0,24(s2)
    1420:	00873021 	addu	a2,a0,a3
    1424:	30c6ffff 	andi	a2,a2,0xffff
    1428:	10000044 	b	153c <func_800FA3DC+0x3e0>
    142c:	96420018 	lhu	v0,24(s2)
    1430:	0067082a 	slt	at,v1,a3
    1434:	10200003 	beqz	at,1444 <func_800FA3DC+0x2e8>
    1438:	00e01025 	move	v0,a3
    143c:	00433023 	subu	a2,v0,v1
    1440:	30c6ffff 	andi	a2,a2,0xffff
    1444:	1000003d 	b	153c <func_800FA3DC+0x3e0>
    1448:	96420018 	lhu	v0,24(s2)
    144c:	448b8000 	mtc1	t3,$f16
    1450:	44875000 	mtc1	a3,$f10
    1454:	05610005 	bgez	t3,146c <func_800FA3DC+0x310>
    1458:	468084a0 	cvt.s.w	$f18,$f16
    145c:	3c014f80 	lui	at,0x4f80
    1460:	44812000 	mtc1	at,$f4
    1464:	00000000 	nop
    1468:	46049480 	add.s	$f18,$f18,$f4
    146c:	3c0142c8 	lui	at,0x42c8
    1470:	44814000 	mtc1	at,$f8
    1474:	46805420 	cvt.s.w	$f16,$f10
    1478:	04e10005 	bgez	a3,1490 <func_800FA3DC+0x334>
    147c:	46089183 	div.s	$f6,$f18,$f8
    1480:	3c014f80 	lui	at,0x4f80
    1484:	44812000 	mtc1	at,$f4
    1488:	00000000 	nop
    148c:	46048400 	add.s	$f16,$f16,$f4
    1490:	46068482 	mul.s	$f18,$f16,$f6
    1494:	24060001 	li	a2,1
    1498:	3c014f00 	lui	at,0x4f00
    149c:	444cf800 	cfc1	t4,$31
    14a0:	44c6f800 	ctc1	a2,$31
    14a4:	00000000 	nop
    14a8:	46009224 	cvt.w.s	$f8,$f18
    14ac:	4446f800 	cfc1	a2,$31
    14b0:	00000000 	nop
    14b4:	30c60078 	andi	a2,a2,0x78
    14b8:	50c00013 	beqzl	a2,1508 <func_800FA3DC+0x3ac>
    14bc:	44064000 	mfc1	a2,$f8
    14c0:	44814000 	mtc1	at,$f8
    14c4:	24060001 	li	a2,1
    14c8:	46089201 	sub.s	$f8,$f18,$f8
    14cc:	44c6f800 	ctc1	a2,$31
    14d0:	00000000 	nop
    14d4:	46004224 	cvt.w.s	$f8,$f8
    14d8:	4446f800 	cfc1	a2,$31
    14dc:	00000000 	nop
    14e0:	30c60078 	andi	a2,a2,0x78
    14e4:	14c00005 	bnez	a2,14fc <func_800FA3DC+0x3a0>
    14e8:	00000000 	nop
    14ec:	44064000 	mfc1	a2,$f8
    14f0:	3c018000 	lui	at,0x8000
    14f4:	10000007 	b	1514 <func_800FA3DC+0x3b8>
    14f8:	00c13025 	or	a2,a2,at
    14fc:	10000005 	b	1514 <func_800FA3DC+0x3b8>
    1500:	2406ffff 	li	a2,-1
    1504:	44064000 	mfc1	a2,$f8
    1508:	00000000 	nop
    150c:	04c0fffb 	bltz	a2,14fc <func_800FA3DC+0x3a0>
    1510:	00000000 	nop
    1514:	44ccf800 	ctc1	t4,$31
    1518:	30c6ffff 	andi	a2,a2,0xffff
    151c:	10000007 	b	153c <func_800FA3DC+0x3e0>
    1520:	96420018 	lhu	v0,24(s2)
    1524:	96420018 	lhu	v0,24(s2)
    1528:	30e6ffff 	andi	a2,a3,0xffff
    152c:	10400003 	beqz	v0,153c <func_800FA3DC+0x3e0>
    1530:	00000000 	nop
    1534:	10000001 	b	153c <func_800FA3DC+0x3e0>
    1538:	3046ffff 	andi	a2,v0,0xffff
    153c:	44898000 	mtc1	t1,$f16
    1540:	28c1012d 	slti	at,a2,301
    1544:	14200002 	bnez	at,1550 <func_800FA3DC+0x3f4>
    1548:	468080a0 	cvt.s.w	$f2,$f16
    154c:	2406012c 	li	a2,300
    1550:	44865000 	mtc1	a2,$f10
    1554:	14400002 	bnez	v0,1560 <func_800FA3DC+0x404>
    1558:	3c014f80 	lui	at,0x4f80
    155c:	a6470018 	sh	a3,24(s2)
    1560:	04c10004 	bgez	a2,1574 <func_800FA3DC+0x418>
    1564:	46805020 	cvt.s.w	$f0,$f10
    1568:	44812000 	mtc1	at,$f4
    156c:	00000000 	nop
    1570:	46040000 	add.s	$f0,$f0,$f4
    1574:	44889000 	mtc1	t0,$f18
    1578:	e6400020 	swc1	$f0,32(s2)
    157c:	e642001c 	swc1	$f2,28(s2)
    1580:	46001181 	sub.s	$f6,$f2,$f0
    1584:	3c014f80 	lui	at,0x4f80
    1588:	05010004 	bgez	t0,159c <func_800FA3DC+0x440>
    158c:	46809220 	cvt.s.w	$f8,$f18
    1590:	44815000 	mtc1	at,$f10
    1594:	00000000 	nop
    1598:	460a4200 	add.s	$f8,$f8,$f10
    159c:	46083103 	div.s	$f4,$f6,$f8
    15a0:	a6480028 	sh	t0,40(s2)
    15a4:	ae400014 	sw	zero,20(s2)
    15a8:	e6440024 	swc1	$f4,36(s2)
    15ac:	96420028 	lhu	v0,40(s2)
    15b0:	10400014 	beqz	v0,1604 <func_800FA3DC+0x4a8>
    15b4:	244dffff 	addiu	t5,v0,-1
    15b8:	31aeffff 	andi	t6,t5,0xffff
    15bc:	32a300ff 	andi	v1,s5,0xff
    15c0:	a64d0028 	sh	t5,40(s2)
    15c4:	11c00006 	beqz	t6,15e0 <func_800FA3DC+0x484>
    15c8:	00031c00 	sll	v1,v1,0x10
    15cc:	c650001c 	lwc1	$f16,28(s2)
    15d0:	c6520024 	lwc1	$f18,36(s2)
    15d4:	46128281 	sub.s	$f10,$f16,$f18
    15d8:	10000003 	b	15e8 <func_800FA3DC+0x48c>
    15dc:	e64a001c 	swc1	$f10,28(s2)
    15e0:	c6460020 	lwc1	$f6,32(s2)
    15e4:	e646001c 	swc1	$f6,28(s2)
    15e8:	c648001c 	lwc1	$f8,28(s2)
    15ec:	3c014700 	lui	at,0x4700
    15f0:	00612025 	or	a0,v1,at
    15f4:	4600410d 	trunc.w.s	$f4,$f8
    15f8:	44052000 	mfc1	a1,$f4
    15fc:	0c000000 	jal	0 <func_800F9280>
    1600:	00000000 	nop
    1604:	96590252 	lhu	t9,594(s2)
    1608:	1320002c 	beqz	t9,16bc <func_800FA3DC+0x560>
    160c:	00155080 	sll	t2,s5,0x2
    1610:	01555021 	addu	t2,t2,s5
    1614:	000a5080 	sll	t2,t2,0x2
    1618:	01555023 	subu	t2,t2,s5
    161c:	000a50c0 	sll	t2,t2,0x3
    1620:	01555021 	addu	t2,t2,s5
    1624:	000a5080 	sll	t2,t2,0x2
    1628:	02eaa021 	addu	s4,s7,t2
    162c:	00008025 	move	s0,zero
    1630:	00102140 	sll	a0,s0,0x5
    1634:	02841021 	addu	v0,s4,a0
    1638:	9443005c 	lhu	v1,92(v0)
    163c:	32a600ff 	andi	a2,s5,0xff
    1640:	00063400 	sll	a2,a2,0x10
    1644:	10600018 	beqz	v1,16a8 <func_800FA3DC+0x54c>
    1648:	2478ffff 	addiu	t8,v1,-1
    164c:	3c010100 	lui	at,0x100
    1650:	330bffff 	andi	t3,t8,0xffff
    1654:	a458005c 	sh	t8,92(v0)
    1658:	11600006 	beqz	t3,1674 <func_800FA3DC+0x518>
    165c:	00c13025 	or	a2,a2,at
    1660:	c4500050 	lwc1	$f16,80(v0)
    1664:	c4520058 	lwc1	$f18,88(v0)
    1668:	46128281 	sub.s	$f10,$f16,$f18
    166c:	10000009 	b	1694 <func_800FA3DC+0x538>
    1670:	e44a0050 	swc1	$f10,80(v0)
    1674:	02441821 	addu	v1,s2,a0
    1678:	c4660054 	lwc1	$f6,84(v1)
    167c:	240d0001 	li	t5,1
    1680:	020d7004 	sllv	t6,t5,s0
    1684:	e4660050 	swc1	$f6,80(v1)
    1688:	964c0252 	lhu	t4,594(s2)
    168c:	018e7826 	xor	t7,t4,t6
    1690:	a64f0252 	sh	t7,594(s2)
    1694:	321900ff 	andi	t9,s0,0xff
    1698:	00195200 	sll	t2,t9,0x8
    169c:	00ca2025 	or	a0,a2,t2
    16a0:	0c000000 	jal	0 <func_800F9280>
    16a4:	8c450050 	lw	a1,80(v0)
    16a8:	26100001 	addiu	s0,s0,1
    16ac:	321000ff 	andi	s0,s0,0xff
    16b0:	2a010010 	slti	at,s0,16
    16b4:	5420ffdf 	bnezl	at,1634 <func_800FA3DC+0x4d8>
    16b8:	00102140 	sll	a0,s0,0x5
    16bc:	96580250 	lhu	t8,592(s2)
    16c0:	1300002c 	beqz	t8,1774 <func_800FA3DC+0x618>
    16c4:	00155880 	sll	t3,s5,0x2
    16c8:	01755821 	addu	t3,t3,s5
    16cc:	000b5880 	sll	t3,t3,0x2
    16d0:	01755823 	subu	t3,t3,s5
    16d4:	000b58c0 	sll	t3,t3,0x3
    16d8:	01755821 	addu	t3,t3,s5
    16dc:	000b5880 	sll	t3,t3,0x2
    16e0:	02eba021 	addu	s4,s7,t3
    16e4:	00008025 	move	s0,zero
    16e8:	00102140 	sll	a0,s0,0x5
    16ec:	02841021 	addu	v0,s4,a0
    16f0:	9443006c 	lhu	v1,108(v0)
    16f4:	32a600ff 	andi	a2,s5,0xff
    16f8:	00063400 	sll	a2,a2,0x10
    16fc:	10600018 	beqz	v1,1760 <func_800FA3DC+0x604>
    1700:	246dffff 	addiu	t5,v1,-1
    1704:	3c010400 	lui	at,0x400
    1708:	31acffff 	andi	t4,t5,0xffff
    170c:	a44d006c 	sh	t5,108(v0)
    1710:	11800006 	beqz	t4,172c <func_800FA3DC+0x5d0>
    1714:	00c13025 	or	a2,a2,at
    1718:	c4480060 	lwc1	$f8,96(v0)
    171c:	c4440068 	lwc1	$f4,104(v0)
    1720:	46044401 	sub.s	$f16,$f8,$f4
    1724:	10000009 	b	174c <func_800FA3DC+0x5f0>
    1728:	e4500060 	swc1	$f16,96(v0)
    172c:	02441821 	addu	v1,s2,a0
    1730:	c4720064 	lwc1	$f18,100(v1)
    1734:	240f0001 	li	t7,1
    1738:	020fc804 	sllv	t9,t7,s0
    173c:	e4720060 	swc1	$f18,96(v1)
    1740:	964e0250 	lhu	t6,592(s2)
    1744:	01d95026 	xor	t2,t6,t9
    1748:	a64a0250 	sh	t2,592(s2)
    174c:	321800ff 	andi	t8,s0,0xff
    1750:	00185a00 	sll	t3,t8,0x8
    1754:	00cb2025 	or	a0,a2,t3
    1758:	0c000000 	jal	0 <func_800F9280>
    175c:	8c450060 	lw	a1,96(v0)
    1760:	26100001 	addiu	s0,s0,1
    1764:	321000ff 	andi	s0,s0,0xff
    1768:	2a010010 	slti	at,s0,16
    176c:	5420ffdf 	bnezl	at,16ec <func_800FA3DC+0x590>
    1770:	00102140 	sll	a0,s0,0x5
    1774:	924d004d 	lbu	t5,77(s2)
    1778:	11a000bc 	beqz	t5,1a6c <L800FACD4+0x18>
    177c:	3c04f000 	lui	a0,0xf000
    1780:	0c000000 	jal	0 <func_800F9280>
    1784:	00802825 	move	a1,a0
    1788:	54400004 	bnezl	v0,179c <func_800FA3DC+0x640>
    178c:	9242004c 	lbu	v0,76(s2)
    1790:	100000bb 	b	1a80 <L800FACD4+0x2c>
    1794:	a240004d 	sb	zero,77(s2)
    1798:	9242004c 	lbu	v0,76(s2)
    179c:	00157880 	sll	t7,s5,0x2
    17a0:	01f57823 	subu	t7,t7,s5
    17a4:	10400004 	beqz	v0,17b8 <func_800FA3DC+0x65c>
    17a8:	000f7880 	sll	t7,t7,0x2
    17ac:	244cffff 	addiu	t4,v0,-1
    17b0:	100000ae 	b	1a6c <L800FACD4+0x18>
    17b4:	a24c004c 	sb	t4,76(s2)
    17b8:	01f57823 	subu	t7,t7,s5
    17bc:	000f7940 	sll	t7,t7,0x5
    17c0:	3c0e0000 	lui	t6,0x0
    17c4:	01cf7021 	addu	t6,t6,t7
    17c8:	8dce3530 	lw	t6,13616(t6)
    17cc:	000ecfc2 	srl	t9,t6,0x1f
    17d0:	572000a7 	bnezl	t9,1a70 <L800FACD4+0x1c>
    17d4:	26b50001 	addiu	s5,s5,1
    17d8:	9243004d 	lbu	v1,77(s2)
    17dc:	00155080 	sll	t2,s5,0x2
    17e0:	01555021 	addu	t2,t2,s5
    17e4:	186000a0 	blez	v1,1a68 <L800FACD4+0x14>
    17e8:	00009825 	move	s3,zero
    17ec:	000a5080 	sll	t2,t2,0x2
    17f0:	01555023 	subu	t2,t2,s5
    17f4:	000a50c0 	sll	t2,t2,0x3
    17f8:	01555021 	addu	t2,t2,s5
    17fc:	000a5080 	sll	t2,t2,0x2
    1800:	02eaa021 	addu	s4,s7,t2
    1804:	0013c080 	sll	t8,s3,0x2
    1808:	02985821 	addu	t3,s4,t8
    180c:	8d62002c 	lw	v0,44(t3)
    1810:	3c0100f0 	lui	at,0xf0
    1814:	00412024 	and	a0,v0,at
    1818:	3c01000f 	lui	at,0xf
    181c:	00042502 	srl	a0,a0,0x14
    1820:	00418824 	and	s1,v0,at
    1824:	308400ff 	andi	a0,a0,0xff
    1828:	3050ff00 	andi	s0,v0,0xff00
    182c:	00118c02 	srl	s1,s1,0x10
    1830:	00108202 	srl	s0,s0,0x8
    1834:	2c81000f 	sltiu	at,a0,15
    1838:	00403825 	move	a3,v0
    183c:	323100ff 	andi	s1,s1,0xff
    1840:	321000ff 	andi	s0,s0,0xff
    1844:	10200083 	beqz	at,1a54 <L800FACD4>
    1848:	30e700ff 	andi	a3,a3,0xff
    184c:	00046880 	sll	t5,a0,0x2
    1850:	3c010000 	lui	at,0x0
    1854:	002d0821 	addu	at,at,t5
    1858:	8c2d0000 	lw	t5,0(at)
    185c:	01a00008 	jr	t5
    1860:	00000000 	nop

00001864 <L800FAAE4>:
    1864:	322400ff 	andi	a0,s1,0xff
    1868:	24050001 	li	a1,1
    186c:	0c000000 	jal	0 <func_800F9280>
    1870:	2406007f 	li	a2,127
    1874:	10000077 	b	1a54 <L800FACD4>
    1878:	9243004d 	lbu	v1,77(s2)

0000187c <L800FAAFC>:
    187c:	3c0c0000 	lui	t4,0x0
    1880:	01956021 	addu	t4,t4,s5
    1884:	918c0000 	lbu	t4,0(t4)
    1888:	322400ff 	andi	a0,s1,0xff
    188c:	24050001 	li	a1,1
    1890:	14ec0070 	bne	a3,t4,1a54 <L800FACD4>
    1894:	2406007f 	li	a2,127
    1898:	0c000000 	jal	0 <func_800F9280>
    189c:	320700ff 	andi	a3,s0,0xff
    18a0:	1000006c 	b	1a54 <L800FACD4>
    18a4:	9243004d 	lbu	v1,77(s2)

000018a8 <L800FAB28>:
    18a8:	964f0254 	lhu	t7,596(s2)
    18ac:	3c013000 	lui	at,0x3000
    18b0:	0015ce00 	sll	t9,s5,0x18
    18b4:	01e17025 	or	t6,t7,at
    18b8:	0c000000 	jal	0 <func_800F9280>
    18bc:	01d92025 	or	a0,t6,t9
    18c0:	10000064 	b	1a54 <L800FACD4>
    18c4:	9243004d 	lbu	v1,77(s2)

000018c8 <L800FAB48>:
    18c8:	023e0019 	multu	s1,s8
    18cc:	00115e00 	sll	t3,s1,0x18
    18d0:	3c010001 	lui	at,0x1
    18d4:	00005012 	mflo	t2
    18d8:	02ea8021 	addu	s0,s7,t2
    18dc:	96180254 	lhu	t8,596(s0)
    18e0:	030b2025 	or	a0,t8,t3
    18e4:	0c000000 	jal	0 <func_800F9280>
    18e8:	00812025 	or	a0,a0,at
    18ec:	240d0001 	li	t5,1
    18f0:	240c007f 	li	t4,127
    18f4:	a20d0013 	sb	t5,19(s0)
    18f8:	a20c000f 	sb	t4,15(s0)
    18fc:	10000055 	b	1a54 <L800FACD4>
    1900:	9243004d 	lbu	v1,77(s2)

00001904 <L800FAB84>:
    1904:	3c01b000 	lui	at,0xb000
    1908:	34213000 	ori	at,at,0x3000
    190c:	00117e00 	sll	t7,s1,0x18
    1910:	01e17025 	or	t6,t7,at
    1914:	0010cc00 	sll	t9,s0,0x10
    1918:	01d95025 	or	t2,t6,t9
    191c:	0c000000 	jal	0 <func_800F9280>
    1920:	01472025 	or	a0,t2,a3
    1924:	1000004b 	b	1a54 <L800FACD4>
    1928:	9243004d 	lbu	v1,77(s2)

0000192c <L800FABAC>:
    192c:	3c01b000 	lui	at,0xb000
    1930:	34214000 	ori	at,at,0x4000
    1934:	0011c600 	sll	t8,s1,0x18
    1938:	03015825 	or	t3,t8,at
    193c:	00076c00 	sll	t5,a3,0x10
    1940:	0c000000 	jal	0 <func_800F9280>
    1944:	016d2025 	or	a0,t3,t5
    1948:	10000042 	b	1a54 <L800FACD4>
    194c:	9243004d 	lbu	v1,77(s2)

00001950 <L800FABD0>:
    1950:	023e0019 	multu	s1,s8
    1954:	0011ce00 	sll	t9,s1,0x18
    1958:	3043ffff 	andi	v1,v0,0xffff
    195c:	00006012 	mflo	t4
    1960:	02ec8021 	addu	s0,s7,t4
    1964:	920f004e 	lbu	t7,78(s0)
    1968:	000f7400 	sll	t6,t7,0x10
    196c:	01d95025 	or	t2,t6,t9
    1970:	0c000000 	jal	0 <func_800F9280>
    1974:	01432025 	or	a0,t2,v1
    1978:	322400ff 	andi	a0,s1,0xff
    197c:	24050001 	li	a1,1
    1980:	2406007f 	li	a2,127
    1984:	0c000000 	jal	0 <func_800F9280>
    1988:	00003825 	move	a3,zero
    198c:	a200004e 	sb	zero,78(s0)
    1990:	10000030 	b	1a54 <L800FACD4>
    1994:	9243004d 	lbu	v1,77(s2)

00001998 <L800FAC18>:
    1998:	a250004e 	sb	s0,78(s2)
    199c:	1000002d 	b	1a54 <L800FACD4>
    19a0:	9243004d 	lbu	v1,77(s2)

000019a4 <L800FAC24>:
    19a4:	322400ff 	andi	a0,s1,0xff
    19a8:	320500ff 	andi	a1,s0,0xff
    19ac:	0c000000 	jal	0 <func_800F9280>
    19b0:	2406007f 	li	a2,127
    19b4:	10000027 	b	1a54 <L800FACD4>
    19b8:	9243004d 	lbu	v1,77(s2)

000019bc <L800FAC3C>:
    19bc:	30f80001 	andi	t8,a3,0x1
    19c0:	13000004 	beqz	t8,19d4 <L800FAC3C+0x18>
    19c4:	00e08025 	move	s0,a3
    19c8:	02c02025 	move	a0,s6
    19cc:	0c000000 	jal	0 <func_800F9280>
    19d0:	00002825 	move	a1,zero
    19d4:	320b0002 	andi	t3,s0,0x2
    19d8:	11600003 	beqz	t3,19e8 <L800FAC3C+0x2c>
    19dc:	02c02025 	move	a0,s6
    19e0:	0c000000 	jal	0 <func_800F9280>
    19e4:	24050001 	li	a1,1
    19e8:	320d0004 	andi	t5,s0,0x4
    19ec:	11a00003 	beqz	t5,19fc <L800FAC3C+0x40>
    19f0:	02c02025 	move	a0,s6
    19f4:	0c000000 	jal	0 <func_800F9280>
    19f8:	24050002 	li	a1,2
    19fc:	10000015 	b	1a54 <L800FACD4>
    1a00:	9243004d 	lbu	v1,77(s2)

00001a04 <L800FAC84>:
    1a04:	00116600 	sll	t4,s1,0x18
    1a08:	3c01a000 	lui	at,0xa000
    1a0c:	3043ffff 	andi	v1,v0,0xffff
    1a10:	01817825 	or	t7,t4,at
    1a14:	0c000000 	jal	0 <func_800F9280>
    1a18:	01e32025 	or	a0,t7,v1
    1a1c:	1000000d 	b	1a54 <L800FACD4>
    1a20:	9243004d 	lbu	v1,77(s2)

00001a24 <L800FACA4>:
    1a24:	00075880 	sll	t3,a3,0x2
    1a28:	01675821 	addu	t3,t3,a3
    1a2c:	00117600 	sll	t6,s1,0x18
    1a30:	3c015000 	lui	at,0x5000
    1a34:	01c1c825 	or	t9,t6,at
    1a38:	000b5840 	sll	t3,t3,0x1
    1a3c:	00105400 	sll	t2,s0,0x10
    1a40:	032ac025 	or	t8,t9,t2
    1a44:	316dffff 	andi	t5,t3,0xffff
    1a48:	0c000000 	jal	0 <func_800F9280>
    1a4c:	030d2025 	or	a0,t8,t5
    1a50:	9243004d 	lbu	v1,77(s2)

00001a54 <L800FACD4>:
    1a54:	26730001 	addiu	s3,s3,1
    1a58:	327300ff 	andi	s3,s3,0xff
    1a5c:	0263082a 	slt	at,s3,v1
    1a60:	5420ff69 	bnezl	at,1808 <func_800FA3DC+0x6ac>
    1a64:	0013c080 	sll	t8,s3,0x2
    1a68:	a240004d 	sb	zero,77(s2)
    1a6c:	26b50001 	addiu	s5,s5,1
    1a70:	32b500ff 	andi	s5,s5,0xff
    1a74:	2aa10004 	slti	at,s5,4
    1a78:	1420fdcb 	bnez	at,11a8 <func_800FA3DC+0x4c>
    1a7c:	00000000 	nop
    1a80:	8fbf0044 	lw	ra,68(sp)
    1a84:	d7b40018 	ldc1	$f20,24(sp)
    1a88:	8fb00020 	lw	s0,32(sp)
    1a8c:	8fb10024 	lw	s1,36(sp)
    1a90:	8fb20028 	lw	s2,40(sp)
    1a94:	8fb3002c 	lw	s3,44(sp)
    1a98:	8fb40030 	lw	s4,48(sp)
    1a9c:	8fb50034 	lw	s5,52(sp)
    1aa0:	8fb60038 	lw	s6,56(sp)
    1aa4:	8fb7003c 	lw	s7,60(sp)
    1aa8:	8fbe0040 	lw	s8,64(sp)
    1aac:	03e00008 	jr	ra
    1ab0:	27bd0090 	addiu	sp,sp,144

00001ab4 <func_800FAD34>:
    1ab4:	3c030000 	lui	v1,0x0
    1ab8:	90630000 	lbu	v1,0(v1)
    1abc:	27bdffe0 	addiu	sp,sp,-32
    1ac0:	afbf001c 	sw	ra,28(sp)
    1ac4:	afb00018 	sw	s0,24(sp)
    1ac8:	10600026 	beqz	v1,1b64 <func_800FAD34+0xb0>
    1acc:	00601025 	move	v0,v1
    1ad0:	24100001 	li	s0,1
    1ad4:	1602000f 	bne	s0,v0,1b14 <func_800FAD34+0x60>
    1ad8:	24010002 	li	at,2
    1adc:	0c000000 	jal	0 <func_800F9280>
    1ae0:	00000000 	nop
    1ae4:	14500008 	bne	v0,s0,1b08 <func_800FAD34+0x54>
    1ae8:	3c010000 	lui	at,0x0
    1aec:	3c050000 	lui	a1,0x0
    1af0:	a0200000 	sb	zero,0(at)
    1af4:	80a50000 	lb	a1,0(a1)
    1af8:	0c000000 	jal	0 <func_800F9280>
    1afc:	3c044602 	lui	a0,0x4602
    1b00:	0c000000 	jal	0 <func_800F9280>
    1b04:	00000000 	nop
    1b08:	3c030000 	lui	v1,0x0
    1b0c:	10000015 	b	1b64 <func_800FAD34+0xb0>
    1b10:	90630000 	lbu	v1,0(v1)
    1b14:	54410014 	bnel	v0,at,1b68 <func_800FAD34+0xb4>
    1b18:	8fbf001c 	lw	ra,28(sp)
    1b1c:	0c000000 	jal	0 <func_800F9280>
    1b20:	00000000 	nop
    1b24:	10500005 	beq	v0,s0,1b3c <func_800FAD34+0x88>
    1b28:	00000000 	nop
    1b2c:	0c000000 	jal	0 <func_800F9280>
    1b30:	00000000 	nop
    1b34:	1450fffd 	bne	v0,s0,1b2c <func_800FAD34+0x78>
    1b38:	00000000 	nop
    1b3c:	3c010000 	lui	at,0x0
    1b40:	3c050000 	lui	a1,0x0
    1b44:	a0200000 	sb	zero,0(at)
    1b48:	80a50000 	lb	a1,0(a1)
    1b4c:	0c000000 	jal	0 <func_800F9280>
    1b50:	3c044602 	lui	a0,0x4602
    1b54:	0c000000 	jal	0 <func_800F9280>
    1b58:	00000000 	nop
    1b5c:	3c030000 	lui	v1,0x0
    1b60:	90630000 	lbu	v1,0(v1)
    1b64:	8fbf001c 	lw	ra,28(sp)
    1b68:	8fb00018 	lw	s0,24(sp)
    1b6c:	27bd0020 	addiu	sp,sp,32
    1b70:	03e00008 	jr	ra
    1b74:	00601025 	move	v0,v1

00001b78 <func_800FADF8>:
    1b78:	3c070000 	lui	a3,0x0
    1b7c:	3c060000 	lui	a2,0x0
    1b80:	24c60000 	addiu	a2,a2,0
    1b84:	24e70000 	addiu	a3,a3,0
    1b88:	00001025 	move	v0,zero
    1b8c:	240b0001 	li	t3,1
    1b90:	240a007f 	li	t2,127
    1b94:	3409ffff 	li	t1,0xffff
    1b98:	24080264 	li	t0,612
    1b9c:	00480019 	multu	v0,t0
    1ba0:	00c27021 	addu	t6,a2,v0
    1ba4:	a1c00000 	sb	zero,0(t6)
    1ba8:	0002c080 	sll	t8,v0,0x2
    1bac:	0302c021 	addu	t8,t8,v0
    1bb0:	0018c080 	sll	t8,t8,0x2
    1bb4:	0302c023 	subu	t8,t8,v0
    1bb8:	0018c0c0 	sll	t8,t8,0x3
    1bbc:	0302c021 	addu	t8,t8,v0
    1bc0:	0018c080 	sll	t8,t8,0x2
    1bc4:	00007812 	mflo	t7
    1bc8:	00ef1821 	addu	v1,a3,t7
    1bcc:	a4690254 	sh	t1,596(v1)
    1bd0:	a4690256 	sh	t1,598(v1)
    1bd4:	a4600028 	sh	zero,40(v1)
    1bd8:	a4600018 	sh	zero,24(v1)
    1bdc:	ac600014 	sw	zero,20(v1)
    1be0:	a4600258 	sh	zero,600(v1)
    1be4:	a060004d 	sb	zero,77(v1)
    1be8:	a060004e 	sb	zero,78(v1)
    1bec:	a4600250 	sh	zero,592(v1)
    1bf0:	a4600252 	sh	zero,594(v1)
    1bf4:	00f82821 	addu	a1,a3,t8
    1bf8:	00002025 	move	a0,zero
    1bfc:	00a4c821 	addu	t9,a1,a0
    1c00:	24840001 	addiu	a0,a0,1
    1c04:	308400ff 	andi	a0,a0,0xff
    1c08:	28810004 	slti	at,a0,4
    1c0c:	1420fffb 	bnez	at,1bfc <func_800FADF8+0x84>
    1c10:	a32a000e 	sb	t2,14(t9)
    1c14:	24420001 	addiu	v0,v0,1
    1c18:	304200ff 	andi	v0,v0,0xff
    1c1c:	28410004 	slti	at,v0,4
    1c20:	a06b0012 	sb	t3,18(v1)
    1c24:	1420ffdd 	bnez	at,1b9c <func_800FADF8+0x24>
    1c28:	a06b0013 	sb	t3,19(v1)
    1c2c:	03e00008 	jr	ra
    1c30:	00000000 	nop

00001c34 <func_800FAEB4>:
    1c34:	3c013f80 	lui	at,0x3f80
    1c38:	27bdffe8 	addiu	sp,sp,-24
    1c3c:	3c070000 	lui	a3,0x0
    1c40:	44810000 	mtc1	at,$f0
    1c44:	afbf0014 	sw	ra,20(sp)
    1c48:	24e70000 	addiu	a3,a3,0
    1c4c:	00003025 	move	a2,zero
    1c50:	24080264 	li	t0,612
    1c54:	2404007f 	li	a0,127
    1c58:	00c80019 	multu	a2,t0
    1c5c:	00067880 	sll	t7,a2,0x2
    1c60:	01e67821 	addu	t7,t7,a2
    1c64:	000f7880 	sll	t7,t7,0x2
    1c68:	01e67823 	subu	t7,t7,a2
    1c6c:	000f78c0 	sll	t7,t7,0x3
    1c70:	01e67821 	addu	t7,t7,a2
    1c74:	000f7880 	sll	t7,t7,0x2
    1c78:	00ef1821 	addu	v1,a3,t7
    1c7c:	00001025 	move	v0,zero
    1c80:	00007012 	mflo	t6
    1c84:	00ee2821 	addu	a1,a3,t6
    1c88:	e4a00000 	swc1	$f0,0(a1)
    1c8c:	a4a0000c 	sh	zero,12(a1)
    1c90:	a0a00013 	sb	zero,19(a1)
    1c94:	0062c021 	addu	t8,v1,v0
    1c98:	24420001 	addiu	v0,v0,1
    1c9c:	304200ff 	andi	v0,v0,0xff
    1ca0:	28410004 	slti	at,v0,4
    1ca4:	1420fffb 	bnez	at,1c94 <func_800FAEB4+0x60>
    1ca8:	a304000e 	sb	a0,14(t8)
    1cac:	24c60001 	addiu	a2,a2,1
    1cb0:	30c600ff 	andi	a2,a2,0xff
    1cb4:	28c10004 	slti	at,a2,4
    1cb8:	1420ffe7 	bnez	at,1c58 <func_800FAEB4+0x24>
    1cbc:	00000000 	nop
    1cc0:	0c000000 	jal	0 <func_800F9280>
    1cc4:	00000000 	nop
    1cc8:	8fbf0014 	lw	ra,20(sp)
    1ccc:	27bd0018 	addiu	sp,sp,24
    1cd0:	03e00008 	jr	ra
    1cd4:	00000000 	nop
	...
