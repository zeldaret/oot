
build/src/overlays/actors/ovl_En_Wf/z_en_wf.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B33CB0>:
       0:	03e00008 	jr	ra
       4:	ac8502dc 	sw	a1,732(a0)

00000008 <EnWf_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afb10028 	sw	s1,40(sp)
      10:	00a08825 	move	s1,a1
      14:	afbf002c 	sw	ra,44(sp)
      18:	afb00024 	sw	s0,36(sp)
      1c:	3c050000 	lui	a1,0x0
      20:	00808025 	move	s0,a0
      24:	0c000000 	jal	0 <func_80B33CB0>
      28:	24a50000 	addiu	a1,a1,0
      2c:	44800000 	mtc1	zero,$f0
      30:	3c0e0000 	lui	t6,0x0
      34:	25ce0000 	addiu	t6,t6,0
      38:	3c060000 	lui	a2,0x0
      3c:	44050000 	mfc1	a1,$f0
      40:	44070000 	mfc1	a3,$f0
      44:	ae0e0098 	sw	t6,152(s0)
      48:	24c60000 	addiu	a2,a2,0
      4c:	0c000000 	jal	0 <func_80B33CB0>
      50:	260400b4 	addiu	a0,s0,180
      54:	8e180024 	lw	t8,36(s0)
      58:	8e0f0028 	lw	t7,40(s0)
      5c:	860b001c 	lh	t3,28(s0)
      60:	860e001c 	lh	t6,28(s0)
      64:	3c014120 	lui	at,0x4120
      68:	ae180038 	sw	t8,56(s0)
      6c:	8e18002c 	lw	t8,44(s0)
      70:	44812000 	mtc1	at,$f4
      74:	ae0f003c 	sw	t7,60(s0)
      78:	000b6203 	sra	t4,t3,0x8
      7c:	241900fe 	li	t9,254
      80:	24080008 	li	t0,8
      84:	24090032 	li	t1,50
      88:	240a0064 	li	t2,100
      8c:	318d00ff 	andi	t5,t4,0xff
      90:	31cf00ff 	andi	t7,t6,0xff
      94:	a21900ae 	sb	t9,174(s0)
      98:	a20800af 	sb	t0,175(s0)
      9c:	a60900a8 	sh	t1,168(s0)
      a0:	a60a00aa 	sh	t2,170(s0)
      a4:	a60d02fc 	sh	t5,764(s0)
      a8:	a60f001c 	sh	t7,28(s0)
      ac:	a2000302 	sb	zero,770(s0)
      b0:	26050304 	addiu	a1,s0,772
      b4:	ae180040 	sw	t8,64(s0)
      b8:	e60402f4 	swc1	$f4,756(s0)
      bc:	afa50034 	sw	a1,52(sp)
      c0:	0c000000 	jal	0 <func_80B33CB0>
      c4:	02202025 	move	a0,s1
      c8:	3c070000 	lui	a3,0x0
      cc:	26180324 	addiu	t8,s0,804
      d0:	8fa50034 	lw	a1,52(sp)
      d4:	afb80010 	sw	t8,16(sp)
      d8:	24e70000 	addiu	a3,a3,0
      dc:	02202025 	move	a0,s1
      e0:	0c000000 	jal	0 <func_80B33CB0>
      e4:	02003025 	move	a2,s0
      e8:	26050424 	addiu	a1,s0,1060
      ec:	afa50034 	sw	a1,52(sp)
      f0:	0c000000 	jal	0 <func_80B33CB0>
      f4:	02202025 	move	a0,s1
      f8:	3c070000 	lui	a3,0x0
      fc:	8fa50034 	lw	a1,52(sp)
     100:	24e70000 	addiu	a3,a3,0
     104:	02202025 	move	a0,s1
     108:	0c000000 	jal	0 <func_80B33CB0>
     10c:	02003025 	move	a2,s0
     110:	26050470 	addiu	a1,s0,1136
     114:	afa50034 	sw	a1,52(sp)
     118:	0c000000 	jal	0 <func_80B33CB0>
     11c:	02202025 	move	a0,s1
     120:	3c070000 	lui	a3,0x0
     124:	8fa50034 	lw	a1,52(sp)
     128:	24e70000 	addiu	a3,a3,0
     12c:	02202025 	move	a0,s1
     130:	0c000000 	jal	0 <func_80B33CB0>
     134:	02003025 	move	a2,s0
     138:	8619001c 	lh	t9,28(s0)
     13c:	02202025 	move	a0,s1
     140:	26050188 	addiu	a1,s0,392
     144:	17200015 	bnez	t9,19c <EnWf_Init+0x194>
     148:	3c060600 	lui	a2,0x600
     14c:	3c060601 	lui	a2,0x601
     150:	3c070601 	lui	a3,0x601
     154:	260801cc 	addiu	t0,s0,460
     158:	26090250 	addiu	t1,s0,592
     15c:	240a0016 	li	t2,22
     160:	afaa0018 	sw	t2,24(sp)
     164:	afa90014 	sw	t1,20(sp)
     168:	afa80010 	sw	t0,16(sp)
     16c:	24e7a4ac 	addiu	a3,a3,-23380
     170:	24c69690 	addiu	a2,a2,-26992
     174:	02202025 	move	a0,s1
     178:	0c000000 	jal	0 <func_80B33CB0>
     17c:	26050188 	addiu	a1,s0,392
     180:	3c053bf5 	lui	a1,0x3bf5
     184:	34a5c28f 	ori	a1,a1,0xc28f
     188:	0c000000 	jal	0 <func_80B33CB0>
     18c:	02002025 	move	a0,s0
     190:	240b004c 	li	t3,76
     194:	10000017 	b	1f4 <EnWf_Init+0x1ec>
     198:	a20b0117 	sb	t3,279(s0)
     19c:	3c070601 	lui	a3,0x601
     1a0:	260c01cc 	addiu	t4,s0,460
     1a4:	260d0250 	addiu	t5,s0,592
     1a8:	240e0016 	li	t6,22
     1ac:	afae0018 	sw	t6,24(sp)
     1b0:	afad0014 	sw	t5,20(sp)
     1b4:	afac0010 	sw	t4,16(sp)
     1b8:	24e7a4ac 	addiu	a3,a3,-23380
     1bc:	0c000000 	jal	0 <func_80B33CB0>
     1c0:	24c63bc0 	addiu	a2,a2,15296
     1c4:	3c053c23 	lui	a1,0x3c23
     1c8:	34a5d70a 	ori	a1,a1,0xd70a
     1cc:	0c000000 	jal	0 <func_80B33CB0>
     1d0:	02002025 	move	a0,s0
     1d4:	8e180320 	lw	t8,800(s0)
     1d8:	240f0008 	li	t7,8
     1dc:	24080057 	li	t0,87
     1e0:	a30f0045 	sb	t7,69(t8)
     1e4:	8e020320 	lw	v0,800(s0)
     1e8:	90590045 	lbu	t9,69(v0)
     1ec:	a0590005 	sb	t9,5(v0)
     1f0:	a2080117 	sb	t0,279(s0)
     1f4:	0c000000 	jal	0 <func_80B33CB0>
     1f8:	02002025 	move	a0,s0
     1fc:	860502fc 	lh	a1,764(s0)
     200:	240100ff 	li	at,255
     204:	50a10008 	beql	a1,at,228 <EnWf_Init+0x220>
     208:	8fbf002c 	lw	ra,44(sp)
     20c:	0c000000 	jal	0 <func_80B33CB0>
     210:	02202025 	move	a0,s1
     214:	50400004 	beqzl	v0,228 <EnWf_Init+0x220>
     218:	8fbf002c 	lw	ra,44(sp)
     21c:	0c000000 	jal	0 <func_80B33CB0>
     220:	02002025 	move	a0,s0
     224:	8fbf002c 	lw	ra,44(sp)
     228:	8fb00024 	lw	s0,36(sp)
     22c:	8fb10028 	lw	s1,40(sp)
     230:	03e00008 	jr	ra
     234:	27bd0040 	addiu	sp,sp,64

00000238 <EnWf_Destroy>:
     238:	27bdffd8 	addiu	sp,sp,-40
     23c:	afb00018 	sw	s0,24(sp)
     240:	00808025 	move	s0,a0
     244:	afbf001c 	sw	ra,28(sp)
     248:	afa5002c 	sw	a1,44(sp)
     24c:	00a02025 	move	a0,a1
     250:	0c000000 	jal	0 <func_80B33CB0>
     254:	26050304 	addiu	a1,s0,772
     258:	8fa4002c 	lw	a0,44(sp)
     25c:	0c000000 	jal	0 <func_80B33CB0>
     260:	26050424 	addiu	a1,s0,1060
     264:	8fa4002c 	lw	a0,44(sp)
     268:	0c000000 	jal	0 <func_80B33CB0>
     26c:	26050470 	addiu	a1,s0,1136
     270:	860e001c 	lh	t6,28(s0)
     274:	51c00008 	beqzl	t6,298 <EnWf_Destroy+0x60>
     278:	8e030118 	lw	v1,280(s0)
     27c:	860f02fc 	lh	t7,764(s0)
     280:	240100ff 	li	at,255
     284:	51e10004 	beql	t7,at,298 <EnWf_Destroy+0x60>
     288:	8e030118 	lw	v1,280(s0)
     28c:	0c000000 	jal	0 <func_80B33CB0>
     290:	00000000 	nop
     294:	8e030118 	lw	v1,280(s0)
     298:	50600015 	beqzl	v1,2f0 <EnWf_Destroy+0xb8>
     29c:	8fbf001c 	lw	ra,28(sp)
     2a0:	8c780130 	lw	t8,304(v1)
     2a4:	3c040000 	lui	a0,0x0
     2a8:	00601025 	move	v0,v1
     2ac:	1300000f 	beqz	t8,2ec <EnWf_Destroy+0xb4>
     2b0:	24840000 	addiu	a0,a0,0
     2b4:	84630152 	lh	v1,338(v1)
     2b8:	18600002 	blez	v1,2c4 <EnWf_Destroy+0x8c>
     2bc:	2479ffff 	addiu	t9,v1,-1
     2c0:	a4590152 	sh	t9,338(v0)
     2c4:	0c000000 	jal	0 <func_80B33CB0>
     2c8:	afa20020 	sw	v0,32(sp)
     2cc:	8fa20020 	lw	v0,32(sp)
     2d0:	3c040000 	lui	a0,0x0
     2d4:	24840000 	addiu	a0,a0,0
     2d8:	0c000000 	jal	0 <func_80B33CB0>
     2dc:	84450152 	lh	a1,338(v0)
     2e0:	3c040000 	lui	a0,0x0
     2e4:	0c000000 	jal	0 <func_80B33CB0>
     2e8:	24840000 	addiu	a0,a0,0
     2ec:	8fbf001c 	lw	ra,28(sp)
     2f0:	8fb00018 	lw	s0,24(sp)
     2f4:	27bd0028 	addiu	sp,sp,40
     2f8:	03e00008 	jr	ra
     2fc:	00000000 	nop

00000300 <func_80B33FB0>:
     300:	27bdffc0 	addiu	sp,sp,-64
     304:	afbf0024 	sw	ra,36(sp)
     308:	afb00020 	sw	s0,32(sp)
     30c:	afa60048 	sw	a2,72(sp)
     310:	84ae007e 	lh	t6,126(a1)
     314:	84a200b6 	lh	v0,182(a1)
     318:	00a08025 	move	s0,a1
     31c:	8c891c44 	lw	t1,7236(a0)
     320:	01c24023 	subu	t0,t6,v0
     324:	00084400 	sll	t0,t0,0x10
     328:	00084403 	sra	t0,t0,0x10
     32c:	05010004 	bgez	t0,340 <func_80B33FB0+0x40>
     330:	02002825 	move	a1,s0
     334:	00084023 	negu	t0,t0
     338:	00084400 	sll	t0,t0,0x10
     33c:	00084403 	sra	t0,t0,0x10
     340:	860f008a 	lh	t7,138(s0)
     344:	3c0642c8 	lui	a2,0x42c8
     348:	24072710 	li	a3,10000
     34c:	01e21823 	subu	v1,t7,v0
     350:	00031c00 	sll	v1,v1,0x10
     354:	00031c03 	sra	v1,v1,0x10
     358:	04610004 	bgez	v1,36c <func_80B33FB0+0x6c>
     35c:	24182ee0 	li	t8,12000
     360:	00031823 	negu	v1,v1
     364:	00031c00 	sll	v1,v1,0x10
     368:	00031c03 	sra	v1,v1,0x10
     36c:	afb80010 	sw	t8,16(sp)
     370:	afa20014 	sw	v0,20(sp)
     374:	a7a30034 	sh	v1,52(sp)
     378:	afa40040 	sw	a0,64(sp)
     37c:	a7a80036 	sh	t0,54(sp)
     380:	0c000000 	jal	0 <func_80B33CB0>
     384:	afa9003c 	sw	t1,60(sp)
     388:	87a30034 	lh	v1,52(sp)
     38c:	87a80036 	lh	t0,54(sp)
     390:	10400013 	beqz	v0,3e0 <func_80B33FB0+0xe0>
     394:	8fa9003c 	lw	t1,60(sp)
     398:	81390842 	lb	t9,2114(t1)
     39c:	24010011 	li	at,17
     3a0:	8faa0040 	lw	t2,64(sp)
     3a4:	17210005 	bne	t9,at,3bc <func_80B33FB0+0xbc>
     3a8:	3c0b0001 	lui	t3,0x1
     3ac:	0c000000 	jal	0 <func_80B33CB0>
     3b0:	02002025 	move	a0,s0
     3b4:	100000c1 	b	6bc <func_80B33FB0+0x3bc>
     3b8:	24020001 	li	v0,1
     3bc:	016a5821 	addu	t3,t3,t2
     3c0:	8d6b1de4 	lw	t3,7652(t3)
     3c4:	316c0001 	andi	t4,t3,0x1
     3c8:	51800006 	beqzl	t4,3e4 <func_80B33FB0+0xe4>
     3cc:	240d2aa8 	li	t5,10920
     3d0:	0c000000 	jal	0 <func_80B33CB0>
     3d4:	02002025 	move	a0,s0
     3d8:	100000b8 	b	6bc <func_80B33FB0+0x3bc>
     3dc:	24020001 	li	v0,1
     3e0:	240d2aa8 	li	t5,10920
     3e4:	afad0010 	sw	t5,16(sp)
     3e8:	860e00b6 	lh	t6,182(s0)
     3ec:	afa9003c 	sw	t1,60(sp)
     3f0:	a7a80036 	sh	t0,54(sp)
     3f4:	a7a30034 	sh	v1,52(sp)
     3f8:	8fa40040 	lw	a0,64(sp)
     3fc:	02002825 	move	a1,s0
     400:	3c0642c8 	lui	a2,0x42c8
     404:	24075dc0 	li	a3,24000
     408:	0c000000 	jal	0 <func_80B33CB0>
     40c:	afae0014 	sw	t6,20(sp)
     410:	87a30034 	lh	v1,52(sp)
     414:	87a80036 	lh	t0,54(sp)
     418:	10400035 	beqz	v0,4f0 <func_80B33FB0+0x1f0>
     41c:	8fa9003c 	lw	t1,60(sp)
     420:	960f0088 	lhu	t7,136(s0)
     424:	8603008a 	lh	v1,138(s0)
     428:	31f80008 	andi	t8,t7,0x8
     42c:	a6030032 	sh	v1,50(s0)
     430:	13000012 	beqz	t8,47c <func_80B33FB0+0x17c>
     434:	a60300b6 	sh	v1,182(s0)
     438:	05000003 	bltz	t0,448 <func_80B33FB0+0x148>
     43c:	00081023 	negu	v0,t0
     440:	10000001 	b	448 <func_80B33FB0+0x148>
     444:	01001025 	move	v0,t0
     448:	28412ee0 	slti	at,v0,12000
     44c:	1020000b 	beqz	at,47c <func_80B33FB0+0x17c>
     450:	3c0142f0 	lui	at,0x42f0
     454:	44813000 	mtc1	at,$f6
     458:	c6040090 	lwc1	$f4,144(s0)
     45c:	4606203c 	c.lt.s	$f4,$f6
     460:	00000000 	nop
     464:	45020006 	bc1fl	480 <func_80B33FB0+0x180>
     468:	81390842 	lb	t9,2114(t1)
     46c:	0c000000 	jal	0 <func_80B33CB0>
     470:	02002025 	move	a0,s0
     474:	10000091 	b	6bc <func_80B33FB0+0x3bc>
     478:	24020001 	li	v0,1
     47c:	81390842 	lb	t9,2114(t1)
     480:	24010011 	li	at,17
     484:	57210006 	bnel	t9,at,4a0 <func_80B33FB0+0x1a0>
     488:	3c0142a0 	lui	at,0x42a0
     48c:	0c000000 	jal	0 <func_80B33CB0>
     490:	02002025 	move	a0,s0
     494:	10000089 	b	6bc <func_80B33FB0+0x3bc>
     498:	24020001 	li	v0,1
     49c:	3c0142a0 	lui	at,0x42a0
     4a0:	44815000 	mtc1	at,$f10
     4a4:	c6080090 	lwc1	$f8,144(s0)
     4a8:	8faa0040 	lw	t2,64(sp)
     4ac:	3c0b0001 	lui	t3,0x1
     4b0:	460a403c 	c.lt.s	$f8,$f10
     4b4:	016a5821 	addu	t3,t3,t2
     4b8:	45000009 	bc1f	4e0 <func_80B33FB0+0x1e0>
     4bc:	00000000 	nop
     4c0:	8d6b1de4 	lw	t3,7652(t3)
     4c4:	316c0001 	andi	t4,t3,0x1
     4c8:	11800005 	beqz	t4,4e0 <func_80B33FB0+0x1e0>
     4cc:	00000000 	nop
     4d0:	0c000000 	jal	0 <func_80B33CB0>
     4d4:	02002025 	move	a0,s0
     4d8:	10000078 	b	6bc <func_80B33FB0+0x3bc>
     4dc:	24020001 	li	v0,1
     4e0:	0c000000 	jal	0 <func_80B33CB0>
     4e4:	02002025 	move	a0,s0
     4e8:	10000074 	b	6bc <func_80B33FB0+0x3bc>
     4ec:	24020001 	li	v0,1
     4f0:	3c0142a0 	lui	at,0x42a0
     4f4:	44818000 	mtc1	at,$f16
     4f8:	8fa40040 	lw	a0,64(sp)
     4fc:	02002825 	move	a1,s0
     500:	2406ffff 	li	a2,-1
     504:	24070003 	li	a3,3
     508:	a7a30034 	sh	v1,52(sp)
     50c:	a7a80036 	sh	t0,54(sp)
     510:	afa9003c 	sw	t1,60(sp)
     514:	0c000000 	jal	0 <func_80B33CB0>
     518:	e7b00010 	swc1	$f16,16(sp)
     51c:	87a30034 	lh	v1,52(sp)
     520:	87a80036 	lh	t0,54(sp)
     524:	8fa9003c 	lw	t1,60(sp)
     528:	10400033 	beqz	v0,5f8 <func_80B33FB0+0x2f8>
     52c:	00402825 	move	a1,v0
     530:	960d0088 	lhu	t5,136(s0)
     534:	8603008a 	lh	v1,138(s0)
     538:	29012ee0 	slti	at,t0,12000
     53c:	31ae0008 	andi	t6,t5,0x8
     540:	a6030032 	sh	v1,50(s0)
     544:	11c00003 	beqz	t6,554 <func_80B33FB0+0x254>
     548:	a60300b6 	sh	v1,182(s0)
     54c:	54200006 	bnezl	at,568 <func_80B33FB0+0x268>
     550:	84580000 	lh	t8,0(v0)
     554:	844f0000 	lh	t7,0(v0)
     558:	240100da 	li	at,218
     55c:	15e10022 	bne	t7,at,5e8 <func_80B33FB0+0x2e8>
     560:	00000000 	nop
     564:	84580000 	lh	t8,0(v0)
     568:	240100da 	li	at,218
     56c:	02002025 	move	a0,s0
     570:	57010019 	bnel	t8,at,5d8 <func_80B33FB0+0x2d8>
     574:	02002025 	move	a0,s0
     578:	0c000000 	jal	0 <func_80B33CB0>
     57c:	afa50030 	sw	a1,48(sp)
     580:	3c0142a0 	lui	at,0x42a0
     584:	44819000 	mtc1	at,$f18
     588:	8fa50030 	lw	a1,48(sp)
     58c:	4612003c 	c.lt.s	$f0,$f18
     590:	00000000 	nop
     594:	45020010 	bc1fl	5d8 <func_80B33FB0+0x2d8>
     598:	02002025 	move	a0,s0
     59c:	861900b6 	lh	t9,182(s0)
     5a0:	84aa0032 	lh	t2,50(a1)
     5a4:	34018000 	li	at,0x8000
     5a8:	032a5823 	subu	t3,t9,t2
     5ac:	01616021 	addu	t4,t3,at
     5b0:	000c6c00 	sll	t5,t4,0x10
     5b4:	000d7403 	sra	t6,t5,0x10
     5b8:	29c13e80 	slti	at,t6,16000
     5bc:	50200006 	beqzl	at,5d8 <func_80B33FB0+0x2d8>
     5c0:	02002025 	move	a0,s0
     5c4:	0c000000 	jal	0 <func_80B33CB0>
     5c8:	02002025 	move	a0,s0
     5cc:	1000003b 	b	6bc <func_80B33FB0+0x3bc>
     5d0:	24020001 	li	v0,1
     5d4:	02002025 	move	a0,s0
     5d8:	0c000000 	jal	0 <func_80B33CB0>
     5dc:	8fa50040 	lw	a1,64(sp)
     5e0:	10000036 	b	6bc <func_80B33FB0+0x3bc>
     5e4:	24020001 	li	v0,1
     5e8:	0c000000 	jal	0 <func_80B33CB0>
     5ec:	02002025 	move	a0,s0
     5f0:	10000032 	b	6bc <func_80B33FB0+0x3bc>
     5f4:	24020001 	li	v0,1
     5f8:	87af004a 	lh	t7,74(sp)
     5fc:	28611b58 	slti	at,v1,7000
     600:	00001025 	move	v0,zero
     604:	11e0002d 	beqz	t7,6bc <func_80B33FB0+0x3bc>
     608:	00000000 	nop
     60c:	14200005 	bnez	at,624 <func_80B33FB0+0x324>
     610:	02002025 	move	a0,s0
     614:	0c000000 	jal	0 <func_80B33CB0>
     618:	8fa50040 	lw	a1,64(sp)
     61c:	10000027 	b	6bc <func_80B33FB0+0x3bc>
     620:	24020001 	li	v0,1
     624:	3c0142a0 	lui	at,0x42a0
     628:	44812000 	mtc1	at,$f4
     62c:	c6060090 	lwc1	$f6,144(s0)
     630:	853800b6 	lh	t8,182(t1)
     634:	861900b6 	lh	t9,182(s0)
     638:	4604303e 	c.le.s	$f6,$f4
     63c:	8fa40040 	lw	a0,64(sp)
     640:	03191823 	subu	v1,t8,t9
     644:	00031c00 	sll	v1,v1,0x10
     648:	45000018 	bc1f	6ac <func_80B33FB0+0x3ac>
     64c:	00031c03 	sra	v1,v1,0x10
     650:	02002825 	move	a1,s0
     654:	0c000000 	jal	0 <func_80B33CB0>
     658:	a7a3002e 	sh	v1,46(sp)
     65c:	14400013 	bnez	v0,6ac <func_80B33FB0+0x3ac>
     660:	87a3002e 	lh	v1,46(sp)
     664:	8faa0040 	lw	t2,64(sp)
     668:	3c0b0001 	lui	t3,0x1
     66c:	016a5821 	addu	t3,t3,t2
     670:	8d6b1de4 	lw	t3,7652(t3)
     674:	316c0007 	andi	t4,t3,0x7
     678:	15800008 	bnez	t4,69c <func_80B33FB0+0x39c>
     67c:	00000000 	nop
     680:	04600003 	bltz	v1,690 <func_80B33FB0+0x390>
     684:	00031023 	negu	v0,v1
     688:	10000001 	b	690 <func_80B33FB0+0x390>
     68c:	00601025 	move	v0,v1
     690:	284138e0 	slti	at,v0,14560
     694:	10200005 	beqz	at,6ac <func_80B33FB0+0x3ac>
     698:	00000000 	nop
     69c:	0c000000 	jal	0 <func_80B33CB0>
     6a0:	02002025 	move	a0,s0
     6a4:	10000005 	b	6bc <func_80B33FB0+0x3bc>
     6a8:	24020001 	li	v0,1
     6ac:	0c000000 	jal	0 <func_80B33CB0>
     6b0:	02002025 	move	a0,s0
     6b4:	10000001 	b	6bc <func_80B33FB0+0x3bc>
     6b8:	24020001 	li	v0,1
     6bc:	8fbf0024 	lw	ra,36(sp)
     6c0:	8fb00020 	lw	s0,32(sp)
     6c4:	27bd0040 	addiu	sp,sp,64
     6c8:	03e00008 	jr	ra
     6cc:	00000000 	nop

000006d0 <func_80B34380>:
     6d0:	44800000 	mtc1	zero,$f0
     6d4:	27bdffd0 	addiu	sp,sp,-48
     6d8:	3c0140e0 	lui	at,0x40e0
     6dc:	44812000 	mtc1	at,$f4
     6e0:	afb00028 	sw	s0,40(sp)
     6e4:	00808025 	move	s0,a0
     6e8:	afbf002c 	sw	ra,44(sp)
     6ec:	3c050600 	lui	a1,0x600
     6f0:	240e0003 	li	t6,3
     6f4:	44070000 	mfc1	a3,$f0
     6f8:	afae0014 	sw	t6,20(sp)
     6fc:	24a55430 	addiu	a1,a1,21552
     700:	24840188 	addiu	a0,a0,392
     704:	3c063f00 	lui	a2,0x3f00
     708:	e7a00018 	swc1	$f0,24(sp)
     70c:	0c000000 	jal	0 <func_80B33CB0>
     710:	e7a40010 	swc1	$f4,16(sp)
     714:	3c0140a0 	lui	at,0x40a0
     718:	44814000 	mtc1	at,$f8
     71c:	c606000c 	lwc1	$f6,12(s0)
     720:	8e180004 	lw	t8,4(s0)
     724:	44800000 	mtc1	zero,$f0
     728:	46083281 	sub.s	$f10,$f6,$f8
     72c:	2401fffe 	li	at,-2
     730:	240f0014 	li	t7,20
     734:	3c050000 	lui	a1,0x0
     738:	0301c824 	and	t9,t8,at
     73c:	e60a0028 	swc1	$f10,40(s0)
     740:	ae0f02e8 	sw	t7,744(s0)
     744:	a6000300 	sh	zero,768(s0)
     748:	ae0002d4 	sw	zero,724(s0)
     74c:	ae190004 	sw	t9,4(s0)
     750:	24a50000 	addiu	a1,a1,0
     754:	02002025 	move	a0,s0
     758:	e6000054 	swc1	$f0,84(s0)
     75c:	0c000000 	jal	0 <func_80B33CB0>
     760:	e600006c 	swc1	$f0,108(s0)
     764:	8fbf002c 	lw	ra,44(sp)
     768:	8fb00028 	lw	s0,40(sp)
     76c:	27bd0030 	addiu	sp,sp,48
     770:	03e00008 	jr	ra
     774:	00000000 	nop

00000778 <func_80B34428>:
     778:	27bdffd8 	addiu	sp,sp,-40
     77c:	afbf0024 	sw	ra,36(sp)
     780:	afb00020 	sw	s0,32(sp)
     784:	afa5002c 	sw	a1,44(sp)
     788:	8c8202e8 	lw	v0,744(a0)
     78c:	00808025 	move	s0,a0
     790:	28410006 	slti	at,v0,6
     794:	14200019 	bnez	at,7fc <func_80B34428+0x84>
     798:	3c0140a0 	lui	at,0x40a0
     79c:	44813000 	mtc1	at,$f6
     7a0:	3c014370 	lui	at,0x4370
     7a4:	44818000 	mtc1	at,$f16
     7a8:	c48a0090 	lwc1	$f10,144(a0)
     7ac:	c484000c 	lwc1	$f4,12(a0)
     7b0:	240e0005 	li	t6,5
     7b4:	4610503c 	c.lt.s	$f10,$f16
     7b8:	46062201 	sub.s	$f8,$f4,$f6
     7bc:	45000036 	bc1f	898 <func_80B34428+0x120>
     7c0:	e4880028 	swc1	$f8,40(a0)
     7c4:	8c8f0004 	lw	t7,4(a0)
     7c8:	8499001c 	lh	t9,28(a0)
     7cc:	ac8e02e8 	sw	t6,744(a0)
     7d0:	35f80001 	ori	t8,t7,0x1
     7d4:	13200030 	beqz	t9,898 <func_80B34428+0x120>
     7d8:	ac980004 	sw	t8,4(a0)
     7dc:	848802fc 	lh	t0,764(a0)
     7e0:	240100ff 	li	at,255
     7e4:	5101002d 	beql	t0,at,89c <func_80B34428+0x124>
     7e8:	8fbf0024 	lw	ra,36(sp)
     7ec:	0c000000 	jal	0 <func_80B33CB0>
     7f0:	24040038 	li	a0,56
     7f4:	10000029 	b	89c <func_80B34428+0x124>
     7f8:	8fbf0024 	lw	ra,36(sp)
     7fc:	1040001c 	beqz	v0,870 <func_80B34428+0xf8>
     800:	3c010000 	lui	at,0x0
     804:	c6120050 	lwc1	$f18,80(s0)
     808:	c4240000 	lwc1	$f4,0(at)
     80c:	3c013f00 	lui	at,0x3f00
     810:	c6080054 	lwc1	$f8,84(s0)
     814:	46049182 	mul.s	$f6,$f18,$f4
     818:	44819000 	mtc1	at,$f18
     81c:	c6100028 	lwc1	$f16,40(s0)
     820:	260400c4 	addiu	a0,s0,196
     824:	3c05428c 	lui	a1,0x428c
     828:	46128100 	add.s	$f4,$f16,$f18
     82c:	3c063f80 	lui	a2,0x3f80
     830:	3c074160 	lui	a3,0x4160
     834:	46064280 	add.s	$f10,$f8,$f6
     838:	44804000 	mtc1	zero,$f8
     83c:	e6040028 	swc1	$f4,40(s0)
     840:	e60a0054 	swc1	$f10,84(s0)
     844:	0c000000 	jal	0 <func_80B33CB0>
     848:	e7a80010 	swc1	$f8,16(sp)
     84c:	8e0902e8 	lw	t1,744(s0)
     850:	02002025 	move	a0,s0
     854:	252affff 	addiu	t2,t1,-1
     858:	1540000f 	bnez	t2,898 <func_80B34428+0x120>
     85c:	ae0a02e8 	sw	t2,744(s0)
     860:	0c000000 	jal	0 <func_80B33CB0>
     864:	2405383c 	li	a1,14396
     868:	1000000c 	b	89c <func_80B34428+0x124>
     86c:	8fbf0024 	lw	ra,36(sp)
     870:	0c000000 	jal	0 <func_80B33CB0>
     874:	26040188 	addiu	a0,s0,392
     878:	10400007 	beqz	v0,898 <func_80B34428+0x120>
     87c:	3c01c000 	lui	at,0xc000
     880:	c6060050 	lwc1	$f6,80(s0)
     884:	44815000 	mtc1	at,$f10
     888:	02002025 	move	a0,s0
     88c:	e6060054 	swc1	$f6,84(s0)
     890:	0c000000 	jal	0 <func_80B33CB0>
     894:	e60a006c 	swc1	$f10,108(s0)
     898:	8fbf0024 	lw	ra,36(sp)
     89c:	8fb00020 	lw	s0,32(sp)
     8a0:	27bd0028 	addiu	sp,sp,40
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_80B3455C>:
     8ac:	27bdffe8 	addiu	sp,sp,-24
     8b0:	afbf0014 	sw	ra,20(sp)
     8b4:	00803825 	move	a3,a0
     8b8:	3c050601 	lui	a1,0x601
     8bc:	24a5a4ac 	addiu	a1,a1,-23380
     8c0:	afa70018 	sw	a3,24(sp)
     8c4:	24840188 	addiu	a0,a0,392
     8c8:	0c000000 	jal	0 <func_80B33CB0>
     8cc:	3c06c080 	lui	a2,0xc080
     8d0:	8fa70018 	lw	a3,24(sp)
     8d4:	240e0006 	li	t6,6
     8d8:	0c000000 	jal	0 <func_80B33CB0>
     8dc:	acee02d4 	sw	t6,724(a3)
     8e0:	3c014120 	lui	at,0x4120
     8e4:	44812000 	mtc1	at,$f4
     8e8:	3c014000 	lui	at,0x4000
     8ec:	44814000 	mtc1	at,$f8
     8f0:	46040182 	mul.s	$f6,$f0,$f4
     8f4:	8fa40018 	lw	a0,24(sp)
     8f8:	44809000 	mtc1	zero,$f18
     8fc:	3c050000 	lui	a1,0x0
     900:	849900b6 	lh	t9,182(a0)
     904:	24a50000 	addiu	a1,a1,0
     908:	e4920068 	swc1	$f18,104(a0)
     90c:	46083280 	add.s	$f10,$f6,$f8
     910:	a4990032 	sh	t9,50(a0)
     914:	4600540d 	trunc.w.s	$f16,$f10
     918:	44188000 	mfc1	t8,$f16
     91c:	0c000000 	jal	0 <func_80B33CB0>
     920:	ac9802e8 	sw	t8,744(a0)
     924:	8fbf0014 	lw	ra,20(sp)
     928:	27bd0018 	addiu	sp,sp,24
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_80B345E4>:
     934:	27bdffd0 	addiu	sp,sp,-48
     938:	afbf001c 	sw	ra,28(sp)
     93c:	afb00018 	sw	s0,24(sp)
     940:	afa50034 	sw	a1,52(sp)
     944:	8caf1c44 	lw	t7,7236(a1)
     948:	00808025 	move	s0,a0
     94c:	24840188 	addiu	a0,a0,392
     950:	0c000000 	jal	0 <func_80B33CB0>
     954:	afaf002c 	sw	t7,44(sp)
     958:	860402e2 	lh	a0,738(s0)
     95c:	02002825 	move	a1,s0
     960:	50800014 	beqzl	a0,9b4 <func_80B345E4+0x80>
     964:	860b008a 	lh	t3,138(s0)
     968:	8618008a 	lh	t8,138(s0)
     96c:	861900b6 	lh	t9,182(s0)
     970:	860904d6 	lh	t1,1238(s0)
     974:	248affff 	addiu	t2,a0,-1
     978:	03194023 	subu	t0,t8,t9
     97c:	01091823 	subu	v1,t0,t1
     980:	00031c00 	sll	v1,v1,0x10
     984:	00031c03 	sra	v1,v1,0x10
     988:	04600003 	bltz	v1,998 <func_80B345E4+0x64>
     98c:	00031023 	negu	v0,v1
     990:	10000001 	b	998 <func_80B345E4+0x64>
     994:	00601025 	move	v0,v1
     998:	28412001 	slti	at,v0,8193
     99c:	54200004 	bnezl	at,9b0 <func_80B345E4+0x7c>
     9a0:	a60002e2 	sh	zero,738(s0)
     9a4:	10000064 	b	b38 <func_80B345E4+0x204>
     9a8:	a60a02e2 	sh	t2,738(s0)
     9ac:	a60002e2 	sh	zero,738(s0)
     9b0:	860b008a 	lh	t3,138(s0)
     9b4:	860c00b6 	lh	t4,182(s0)
     9b8:	8fa40034 	lw	a0,52(sp)
     9bc:	016c1823 	subu	v1,t3,t4
     9c0:	00031c00 	sll	v1,v1,0x10
     9c4:	00031c03 	sra	v1,v1,0x10
     9c8:	04610004 	bgez	v1,9dc <func_80B345E4+0xa8>
     9cc:	00000000 	nop
     9d0:	00031823 	negu	v1,v1
     9d4:	00031c00 	sll	v1,v1,0x10
     9d8:	00031c03 	sra	v1,v1,0x10
     9dc:	0c000000 	jal	0 <func_80B33CB0>
     9e0:	a7a30026 	sh	v1,38(sp)
     9e4:	14400054 	bnez	v0,b38 <func_80B345E4+0x204>
     9e8:	87a30026 	lh	v1,38(sp)
     9ec:	860202e0 	lh	v0,736(s0)
     9f0:	8fa40034 	lw	a0,52(sp)
     9f4:	02002825 	move	a1,s0
     9f8:	10400006 	beqz	v0,a14 <func_80B345E4+0xe0>
     9fc:	244dffff 	addiu	t5,v0,-1
     a00:	28611ffe 	slti	at,v1,8190
     a04:	1020004c 	beqz	at,b38 <func_80B345E4+0x204>
     a08:	a60d02e0 	sh	t5,736(s0)
     a0c:	10000005 	b	a24 <func_80B345E4+0xf0>
     a10:	a60002e0 	sh	zero,736(s0)
     a14:	0c000000 	jal	0 <func_80B33CB0>
     a18:	00003025 	move	a2,zero
     a1c:	54400047 	bnezl	v0,b3c <func_80B345E4+0x208>
     a20:	8fbf001c 	lw	ra,28(sp)
     a24:	8fa2002c 	lw	v0,44(sp)
     a28:	860f00b6 	lh	t7,182(s0)
     a2c:	3c0142a0 	lui	at,0x42a0
     a30:	844e00b6 	lh	t6,182(v0)
     a34:	44813000 	mtc1	at,$f6
     a38:	01cf1823 	subu	v1,t6,t7
     a3c:	00031c00 	sll	v1,v1,0x10
     a40:	00031c03 	sra	v1,v1,0x10
     a44:	04630005 	bgezl	v1,a5c <func_80B345E4+0x128>
     a48:	c6040090 	lwc1	$f4,144(s0)
     a4c:	00031823 	negu	v1,v1
     a50:	00031c00 	sll	v1,v1,0x10
     a54:	00031c03 	sra	v1,v1,0x10
     a58:	c6040090 	lwc1	$f4,144(s0)
     a5c:	4606203c 	c.lt.s	$f4,$f6
     a60:	00000000 	nop
     a64:	4502000f 	bc1fl	aa4 <func_80B345E4+0x170>
     a68:	8e1902e8 	lw	t9,744(s0)
     a6c:	80580843 	lb	t8,2115(v0)
     a70:	28611f40 	slti	at,v1,8000
     a74:	5300000b 	beqzl	t8,aa4 <func_80B345E4+0x170>
     a78:	8e1902e8 	lw	t9,744(s0)
     a7c:	54200009 	bnezl	at,aa4 <func_80B345E4+0x170>
     a80:	8e1902e8 	lw	t9,744(s0)
     a84:	8602008a 	lh	v0,138(s0)
     a88:	02002025 	move	a0,s0
     a8c:	a6020032 	sh	v0,50(s0)
     a90:	0c000000 	jal	0 <func_80B33CB0>
     a94:	a60200b6 	sh	v0,182(s0)
     a98:	10000028 	b	b3c <func_80B345E4+0x208>
     a9c:	8fbf001c 	lw	ra,28(sp)
     aa0:	8e1902e8 	lw	t9,744(s0)
     aa4:	02002025 	move	a0,s0
     aa8:	2728ffff 	addiu	t0,t9,-1
     aac:	15000022 	bnez	t0,b38 <func_80B345E4+0x204>
     ab0:	ae0802e8 	sw	t0,744(s0)
     ab4:	0c000000 	jal	0 <func_80B33CB0>
     ab8:	24051555 	li	a1,5461
     abc:	10400012 	beqz	v0,b08 <func_80B345E4+0x1d4>
     ac0:	00000000 	nop
     ac4:	0c000000 	jal	0 <func_80B33CB0>
     ac8:	00000000 	nop
     acc:	3c010000 	lui	at,0x0
     ad0:	c4280000 	lwc1	$f8,0(at)
     ad4:	02002025 	move	a0,s0
     ad8:	4600403c 	c.lt.s	$f8,$f0
     adc:	00000000 	nop
     ae0:	45000005 	bc1f	af8 <func_80B345E4+0x1c4>
     ae4:	00000000 	nop
     ae8:	0c000000 	jal	0 <func_80B33CB0>
     aec:	8fa50034 	lw	a1,52(sp)
     af0:	10000008 	b	b14 <func_80B345E4+0x1e0>
     af4:	8faa0034 	lw	t2,52(sp)
     af8:	0c000000 	jal	0 <func_80B33CB0>
     afc:	02002025 	move	a0,s0
     b00:	10000004 	b	b14 <func_80B345E4+0x1e0>
     b04:	8faa0034 	lw	t2,52(sp)
     b08:	0c000000 	jal	0 <func_80B33CB0>
     b0c:	02002025 	move	a0,s0
     b10:	8faa0034 	lw	t2,52(sp)
     b14:	3c0b0001 	lui	t3,0x1
     b18:	02002025 	move	a0,s0
     b1c:	016a5821 	addu	t3,t3,t2
     b20:	8d6b1de4 	lw	t3,7652(t3)
     b24:	316c005f 	andi	t4,t3,0x5f
     b28:	55800004 	bnezl	t4,b3c <func_80B345E4+0x208>
     b2c:	8fbf001c 	lw	ra,28(sp)
     b30:	0c000000 	jal	0 <func_80B33CB0>
     b34:	2405383e 	li	a1,14398
     b38:	8fbf001c 	lw	ra,28(sp)
     b3c:	8fb00018 	lw	s0,24(sp)
     b40:	27bd0030 	addiu	sp,sp,48
     b44:	03e00008 	jr	ra
     b48:	00000000 	nop

00000b4c <func_80B347FC>:
     b4c:	27bdffd8 	addiu	sp,sp,-40
     b50:	afa40028 	sw	a0,40(sp)
     b54:	afbf0024 	sw	ra,36(sp)
     b58:	3c040600 	lui	a0,0x600
     b5c:	afa5002c 	sw	a1,44(sp)
     b60:	0c000000 	jal	0 <func_80B33CB0>
     b64:	248457a0 	addiu	a0,a0,22432
     b68:	44822000 	mtc1	v0,$f4
     b6c:	3c01c080 	lui	at,0xc080
     b70:	44814000 	mtc1	at,$f8
     b74:	468021a0 	cvt.s.w	$f6,$f4
     b78:	8fa40028 	lw	a0,40(sp)
     b7c:	3c050600 	lui	a1,0x600
     b80:	240e0001 	li	t6,1
     b84:	afae0014 	sw	t6,20(sp)
     b88:	24a557a0 	addiu	a1,a1,22432
     b8c:	e7a60010 	swc1	$f6,16(sp)
     b90:	3c063f80 	lui	a2,0x3f80
     b94:	24070000 	li	a3,0
     b98:	e7a80018 	swc1	$f8,24(sp)
     b9c:	0c000000 	jal	0 <func_80B33CB0>
     ba0:	24840188 	addiu	a0,a0,392
     ba4:	8fa40028 	lw	a0,40(sp)
     ba8:	240f0009 	li	t7,9
     bac:	3c050000 	lui	a1,0x0
     bb0:	24a50000 	addiu	a1,a1,0
     bb4:	0c000000 	jal	0 <func_80B33CB0>
     bb8:	ac8f02d4 	sw	t7,724(a0)
     bbc:	8fbf0024 	lw	ra,36(sp)
     bc0:	27bd0028 	addiu	sp,sp,40
     bc4:	03e00008 	jr	ra
     bc8:	00000000 	nop

00000bcc <func_80B3487C>:
     bcc:	44802000 	mtc1	zero,$f4
     bd0:	27bdffa0 	addiu	sp,sp,-96
     bd4:	afb00030 	sw	s0,48(sp)
     bd8:	afbf0034 	sw	ra,52(sp)
     bdc:	e7a40050 	swc1	$f4,80(sp)
     be0:	8cae1c44 	lw	t6,7236(a1)
     be4:	00808025 	move	s0,a0
     be8:	00a03025 	move	a2,a1
     bec:	00a02025 	move	a0,a1
     bf0:	02002825 	move	a1,s0
     bf4:	afa60064 	sw	a2,100(sp)
     bf8:	0c000000 	jal	0 <func_80B33CB0>
     bfc:	afae0048 	sw	t6,72(sp)
     c00:	1440010d 	bnez	v0,1038 <func_80B3487C+0x46c>
     c04:	260400b6 	addiu	a0,s0,182
     c08:	8605008a 	lh	a1,138(s0)
     c0c:	afa00010 	sw	zero,16(sp)
     c10:	24060001 	li	a2,1
     c14:	0c000000 	jal	0 <func_80B33CB0>
     c18:	240702ee 	li	a3,750
     c1c:	860f00b6 	lh	t7,182(s0)
     c20:	02002825 	move	a1,s0
     c24:	a60f0032 	sh	t7,50(s0)
     c28:	0c000000 	jal	0 <func_80B33CB0>
     c2c:	8fa40064 	lw	a0,100(sp)
     c30:	44801000 	mtc1	zero,$f2
     c34:	10400004 	beqz	v0,c48 <func_80B3487C+0x7c>
     c38:	3c014316 	lui	at,0x4316
     c3c:	44813000 	mtc1	at,$f6
     c40:	00000000 	nop
     c44:	e7a60050 	swc1	$f6,80(sp)
     c48:	3c014248 	lui	at,0x4248
     c4c:	44814000 	mtc1	at,$f8
     c50:	c7aa0050 	lwc1	$f10,80(sp)
     c54:	c6000090 	lwc1	$f0,144(s0)
     c58:	26040068 	addiu	a0,s0,104
     c5c:	460a4400 	add.s	$f16,$f8,$f10
     c60:	3c05c100 	lui	a1,0xc100
     c64:	3c063f80 	lui	a2,0x3f80
     c68:	3c073fc0 	lui	a3,0x3fc0
     c6c:	4610003e 	c.le.s	$f0,$f16
     c70:	3c014282 	lui	at,0x4282
     c74:	c7a40050 	lwc1	$f4,80(sp)
     c78:	45020006 	bc1fl	c94 <func_80B3487C+0xc8>
     c7c:	44819000 	mtc1	at,$f18
     c80:	0c000000 	jal	0 <func_80B33CB0>
     c84:	e7a20010 	swc1	$f2,16(sp)
     c88:	10000016 	b	ce4 <func_80B3487C+0x118>
     c8c:	00000000 	nop
     c90:	44819000 	mtc1	at,$f18
     c94:	3c0740d4 	lui	a3,0x40d4
     c98:	3c054100 	lui	a1,0x4100
     c9c:	46049180 	add.s	$f6,$f18,$f4
     ca0:	34e7cccd 	ori	a3,a3,0xcccd
     ca4:	26040068 	addiu	a0,s0,104
     ca8:	3c063f80 	lui	a2,0x3f80
     cac:	4600303c 	c.lt.s	$f6,$f0
     cb0:	00000000 	nop
     cb4:	45020009 	bc1fl	cdc <func_80B3487C+0x110>
     cb8:	44051000 	mfc1	a1,$f2
     cbc:	26040068 	addiu	a0,s0,104
     cc0:	3c063f80 	lui	a2,0x3f80
     cc4:	3c073fc0 	lui	a3,0x3fc0
     cc8:	0c000000 	jal	0 <func_80B33CB0>
     ccc:	e7a20010 	swc1	$f2,16(sp)
     cd0:	10000004 	b	ce4 <func_80B3487C+0x118>
     cd4:	00000000 	nop
     cd8:	44051000 	mfc1	a1,$f2
     cdc:	0c000000 	jal	0 <func_80B33CB0>
     ce0:	e7a20010 	swc1	$f2,16(sp)
     ce4:	3c010000 	lui	at,0x0
     ce8:	c42a0000 	lwc1	$f10,0(at)
     cec:	c6080068 	lwc1	$f8,104(s0)
     cf0:	860800b6 	lh	t0,182(s0)
     cf4:	3c014316 	lui	at,0x4316
     cf8:	460a4402 	mul.s	$f16,$f8,$f10
     cfc:	44812000 	mtc1	at,$f4
     d00:	e61001a4 	swc1	$f16,420(s0)
     d04:	8fb80048 	lw	t8,72(sp)
     d08:	c7a60050 	lwc1	$f6,80(sp)
     d0c:	8fa90048 	lw	t1,72(sp)
     d10:	871900b6 	lh	t9,182(t8)
     d14:	46062200 	add.s	$f8,$f4,$f6
     d18:	03281023 	subu	v0,t9,t0
     d1c:	00021400 	sll	v0,v0,0x10
     d20:	00021403 	sra	v0,v0,0x10
     d24:	04430005 	bgezl	v0,d3c <func_80B3487C+0x170>
     d28:	c6120090 	lwc1	$f18,144(s0)
     d2c:	00021023 	negu	v0,v0
     d30:	00021400 	sll	v0,v0,0x10
     d34:	00021403 	sra	v0,v0,0x10
     d38:	c6120090 	lwc1	$f18,144(s0)
     d3c:	4608903c 	c.lt.s	$f18,$f8
     d40:	00000000 	nop
     d44:	45020016 	bc1fl	da0 <func_80B3487C+0x1d4>
     d48:	c61001a0 	lwc1	$f16,416(s0)
     d4c:	812a0843 	lb	t2,2115(t1)
     d50:	28411f40 	slti	at,v0,8000
     d54:	51400012 	beqzl	t2,da0 <func_80B3487C+0x1d4>
     d58:	c61001a0 	lwc1	$f16,416(s0)
     d5c:	54200010 	bnezl	at,da0 <func_80B3487C+0x1d4>
     d60:	c61001a0 	lwc1	$f16,416(s0)
     d64:	8602008a 	lh	v0,138(s0)
     d68:	a6020032 	sh	v0,50(s0)
     d6c:	0c000000 	jal	0 <func_80B33CB0>
     d70:	a60200b6 	sh	v0,182(s0)
     d74:	3c010000 	lui	at,0x0
     d78:	c42a0000 	lwc1	$f10,0(at)
     d7c:	4600503c 	c.lt.s	$f10,$f0
     d80:	00000000 	nop
     d84:	45020006 	bc1fl	da0 <func_80B3487C+0x1d4>
     d88:	c61001a0 	lwc1	$f16,416(s0)
     d8c:	0c000000 	jal	0 <func_80B33CB0>
     d90:	02002025 	move	a0,s0
     d94:	100000a9 	b	103c <func_80B3487C+0x470>
     d98:	8fbf0034 	lw	ra,52(sp)
     d9c:	c61001a0 	lwc1	$f16,416(s0)
     da0:	26040188 	addiu	a0,s0,392
     da4:	4600810d 	trunc.w.s	$f4,$f16
     da8:	440c2000 	mfc1	t4,$f4
     dac:	0c000000 	jal	0 <func_80B33CB0>
     db0:	afac005c 	sw	t4,92(sp)
     db4:	44801000 	mtc1	zero,$f2
     db8:	c60001a4 	lwc1	$f0,420(s0)
     dbc:	02002025 	move	a0,s0
     dc0:	4600103e 	c.le.s	$f2,$f0
     dc4:	00000000 	nop
     dc8:	45020004 	bc1fl	ddc <func_80B3487C+0x210>
     dcc:	46000187 	neg.s	$f6,$f0
     dd0:	10000003 	b	de0 <func_80B3487C+0x214>
     dd4:	e7a0003c 	swc1	$f0,60(sp)
     dd8:	46000187 	neg.s	$f6,$f0
     ddc:	e7a6003c 	swc1	$f6,60(sp)
     de0:	c61201a0 	lwc1	$f18,416(s0)
     de4:	c7a8003c 	lwc1	$f8,60(sp)
     de8:	4600103e 	c.le.s	$f2,$f0
     dec:	46089281 	sub.s	$f10,$f18,$f8
     df0:	4600540d 	trunc.w.s	$f16,$f10
     df4:	440e8000 	mfc1	t6,$f16
     df8:	45000003 	bc1f	e08 <func_80B3487C+0x23c>
     dfc:	afae0058 	sw	t6,88(sp)
     e00:	10000003 	b	e10 <func_80B3487C+0x244>
     e04:	e7a0003c 	swc1	$f0,60(sp)
     e08:	46000107 	neg.s	$f4,$f0
     e0c:	e7a4003c 	swc1	$f4,60(sp)
     e10:	0c000000 	jal	0 <func_80B33CB0>
     e14:	240511c7 	li	a1,4551
     e18:	14400012 	bnez	v0,e64 <func_80B3487C+0x298>
     e1c:	3c0142b4 	lui	at,0x42b4
     e20:	0c000000 	jal	0 <func_80B33CB0>
     e24:	00000000 	nop
     e28:	3c013f00 	lui	at,0x3f00
     e2c:	44813000 	mtc1	at,$f6
     e30:	00000000 	nop
     e34:	4600303c 	c.lt.s	$f6,$f0
     e38:	00000000 	nop
     e3c:	45000005 	bc1f	e54 <func_80B3487C+0x288>
     e40:	00000000 	nop
     e44:	0c000000 	jal	0 <func_80B33CB0>
     e48:	02002025 	move	a0,s0
     e4c:	10000049 	b	f74 <func_80B3487C+0x3a8>
     e50:	8fa40064 	lw	a0,100(sp)
     e54:	0c000000 	jal	0 <func_80B33CB0>
     e58:	02002025 	move	a0,s0
     e5c:	10000045 	b	f74 <func_80B3487C+0x3a8>
     e60:	8fa40064 	lw	a0,100(sp)
     e64:	44814000 	mtc1	at,$f8
     e68:	c7aa0050 	lwc1	$f10,80(sp)
     e6c:	c6120090 	lwc1	$f18,144(s0)
     e70:	8faf0048 	lw	t7,72(sp)
     e74:	460a4400 	add.s	$f16,$f8,$f10
     e78:	4610903c 	c.lt.s	$f18,$f16
     e7c:	00000000 	nop
     e80:	4502003c 	bc1fl	f74 <func_80B3487C+0x3a8>
     e84:	8fa40064 	lw	a0,100(sp)
     e88:	85f800b6 	lh	t8,182(t7)
     e8c:	861900b6 	lh	t9,182(s0)
     e90:	8fa40064 	lw	a0,100(sp)
     e94:	02002825 	move	a1,s0
     e98:	03191823 	subu	v1,t8,t9
     e9c:	00031c00 	sll	v1,v1,0x10
     ea0:	00031c03 	sra	v1,v1,0x10
     ea4:	0c000000 	jal	0 <func_80B33CB0>
     ea8:	a7a30042 	sh	v1,66(sp)
     eac:	1440001c 	bnez	v0,f20 <func_80B3487C+0x354>
     eb0:	87a30042 	lh	v1,66(sp)
     eb4:	0c000000 	jal	0 <func_80B33CB0>
     eb8:	a7a30042 	sh	v1,66(sp)
     ebc:	3c010000 	lui	at,0x0
     ec0:	c4240000 	lwc1	$f4,0(at)
     ec4:	3c0142a0 	lui	at,0x42a0
     ec8:	87a30042 	lh	v1,66(sp)
     ecc:	4600203c 	c.lt.s	$f4,$f0
     ed0:	00000000 	nop
     ed4:	4501000e 	bc1t	f10 <func_80B3487C+0x344>
     ed8:	00000000 	nop
     edc:	44813000 	mtc1	at,$f6
     ee0:	c6080090 	lwc1	$f8,144(s0)
     ee4:	4606403e 	c.le.s	$f8,$f6
     ee8:	00000000 	nop
     eec:	4502000d 	bc1fl	f24 <func_80B3487C+0x358>
     ef0:	8fa40064 	lw	a0,100(sp)
     ef4:	04600003 	bltz	v1,f04 <func_80B3487C+0x338>
     ef8:	00031023 	negu	v0,v1
     efc:	10000001 	b	f04 <func_80B3487C+0x338>
     f00:	00601025 	move	v0,v1
     f04:	284138e0 	slti	at,v0,14560
     f08:	50200006 	beqzl	at,f24 <func_80B3487C+0x358>
     f0c:	8fa40064 	lw	a0,100(sp)
     f10:	0c000000 	jal	0 <func_80B33CB0>
     f14:	02002025 	move	a0,s0
     f18:	10000016 	b	f74 <func_80B3487C+0x3a8>
     f1c:	8fa40064 	lw	a0,100(sp)
     f20:	8fa40064 	lw	a0,100(sp)
     f24:	0c000000 	jal	0 <func_80B33CB0>
     f28:	02002825 	move	a1,s0
     f2c:	1040000e 	beqz	v0,f68 <func_80B3487C+0x39c>
     f30:	00000000 	nop
     f34:	0c000000 	jal	0 <func_80B33CB0>
     f38:	00000000 	nop
     f3c:	3c013f00 	lui	at,0x3f00
     f40:	44815000 	mtc1	at,$f10
     f44:	00000000 	nop
     f48:	4600503c 	c.lt.s	$f10,$f0
     f4c:	00000000 	nop
     f50:	45000005 	bc1f	f68 <func_80B3487C+0x39c>
     f54:	00000000 	nop
     f58:	0c000000 	jal	0 <func_80B33CB0>
     f5c:	02002025 	move	a0,s0
     f60:	10000004 	b	f74 <func_80B3487C+0x3a8>
     f64:	8fa40064 	lw	a0,100(sp)
     f68:	0c000000 	jal	0 <func_80B33CB0>
     f6c:	02002025 	move	a0,s0
     f70:	8fa40064 	lw	a0,100(sp)
     f74:	02002825 	move	a1,s0
     f78:	0c000000 	jal	0 <func_80B33CB0>
     f7c:	00003025 	move	a2,zero
     f80:	1440002d 	bnez	v0,1038 <func_80B3487C+0x46c>
     f84:	8fa80064 	lw	t0,100(sp)
     f88:	3c090001 	lui	t1,0x1
     f8c:	01284821 	addu	t1,t1,t0
     f90:	8d291de4 	lw	t1,7652(t1)
     f94:	02002025 	move	a0,s0
     f98:	312a005f 	andi	t2,t1,0x5f
     f9c:	55400004 	bnezl	t2,fb0 <func_80B3487C+0x3e4>
     fa0:	c61201a0 	lwc1	$f18,416(s0)
     fa4:	0c000000 	jal	0 <func_80B33CB0>
     fa8:	2405383e 	li	a1,14398
     fac:	c61201a0 	lwc1	$f18,416(s0)
     fb0:	8fa2005c 	lw	v0,92(sp)
     fb4:	8fad0058 	lw	t5,88(sp)
     fb8:	4600940d 	trunc.w.s	$f16,$f18
     fbc:	440c8000 	mfc1	t4,$f16
     fc0:	00000000 	nop
     fc4:	504c001d 	beql	v0,t4,103c <func_80B3487C+0x470>
     fc8:	8fbf0034 	lw	ra,52(sp)
     fcc:	1da0001a 	bgtz	t5,1038 <func_80B3487C+0x46c>
     fd0:	c7a4003c 	lwc1	$f4,60(sp)
     fd4:	4600218d 	trunc.w.s	$f6,$f4
     fd8:	02002025 	move	a0,s0
     fdc:	440f3000 	mfc1	t7,$f6
     fe0:	00000000 	nop
     fe4:	01e2c021 	addu	t8,t7,v0
     fe8:	5b000014 	blezl	t8,103c <func_80B3487C+0x470>
     fec:	8fbf0034 	lw	ra,52(sp)
     ff0:	0c000000 	jal	0 <func_80B33CB0>
     ff4:	2405385a 	li	a1,14426
     ff8:	3c014040 	lui	at,0x4040
     ffc:	44814000 	mtc1	at,$f8
    1000:	24190003 	li	t9,3
    1004:	24080032 	li	t0,50
    1008:	24090032 	li	t1,50
    100c:	240a0001 	li	t2,1
    1010:	afaa0020 	sw	t2,32(sp)
    1014:	afa9001c 	sw	t1,28(sp)
    1018:	afa80018 	sw	t0,24(sp)
    101c:	afb90010 	sw	t9,16(sp)
    1020:	8fa40064 	lw	a0,100(sp)
    1024:	02002825 	move	a1,s0
    1028:	26060024 	addiu	a2,s0,36
    102c:	3c0741a0 	lui	a3,0x41a0
    1030:	0c000000 	jal	0 <func_80B33CB0>
    1034:	e7a80014 	swc1	$f8,20(sp)
    1038:	8fbf0034 	lw	ra,52(sp)
    103c:	8fb00030 	lw	s0,48(sp)
    1040:	27bd0060 	addiu	sp,sp,96
    1044:	03e00008 	jr	ra
    1048:	00000000 	nop

0000104c <func_80B34CFC>:
    104c:	27bdffe8 	addiu	sp,sp,-24
    1050:	afbf0014 	sw	ra,20(sp)
    1054:	00803825 	move	a3,a0
    1058:	3c050601 	lui	a1,0x601
    105c:	24a598c8 	addiu	a1,a1,-26424
    1060:	afa70018 	sw	a3,24(sp)
    1064:	24840188 	addiu	a0,a0,392
    1068:	0c000000 	jal	0 <func_80B33CB0>
    106c:	3c06c080 	lui	a2,0xc080
    1070:	8fa40018 	lw	a0,24(sp)
    1074:	240e000a 	li	t6,10
    1078:	3c050000 	lui	a1,0x0
    107c:	24a50000 	addiu	a1,a1,0
    1080:	0c000000 	jal	0 <func_80B33CB0>
    1084:	ac8e02d4 	sw	t6,724(a0)
    1088:	8fbf0014 	lw	ra,20(sp)
    108c:	27bd0018 	addiu	sp,sp,24
    1090:	03e00008 	jr	ra
    1094:	00000000 	nop

00001098 <func_80B34D48>:
    1098:	27bdffe0 	addiu	sp,sp,-32
    109c:	afb00018 	sw	s0,24(sp)
    10a0:	00808025 	move	s0,a0
    10a4:	afbf001c 	sw	ra,28(sp)
    10a8:	afa50024 	sw	a1,36(sp)
    10ac:	00a02025 	move	a0,a1
    10b0:	0c000000 	jal	0 <func_80B33CB0>
    10b4:	02002825 	move	a1,s0
    10b8:	1440006a 	bnez	v0,1264 <func_80B34D48+0x1cc>
    10bc:	8fa40024 	lw	a0,36(sp)
    10c0:	02002825 	move	a1,s0
    10c4:	0c000000 	jal	0 <func_80B33CB0>
    10c8:	00003025 	move	a2,zero
    10cc:	54400066 	bnezl	v0,1268 <func_80B34D48+0x1d0>
    10d0:	8fbf001c 	lw	ra,28(sp)
    10d4:	860400b6 	lh	a0,182(s0)
    10d8:	860e008a 	lh	t6,138(s0)
    10dc:	01c41023 	subu	v0,t6,a0
    10e0:	00021400 	sll	v0,v0,0x10
    10e4:	00021403 	sra	v0,v0,0x10
    10e8:	58400010 	blezl	v0,112c <func_80B34D48+0x94>
    10ec:	44823000 	mtc1	v0,$f6
    10f0:	44822000 	mtc1	v0,$f4
    10f4:	3c013e80 	lui	at,0x3e80
    10f8:	44814000 	mtc1	at,$f8
    10fc:	468021a0 	cvt.s.w	$f6,$f4
    1100:	3c0144fa 	lui	at,0x44fa
    1104:	44818000 	mtc1	at,$f16
    1108:	46083282 	mul.s	$f10,$f6,$f8
    110c:	46105480 	add.s	$f18,$f10,$f16
    1110:	4600910d 	trunc.w.s	$f4,$f18
    1114:	44032000 	mfc1	v1,$f4
    1118:	00000000 	nop
    111c:	00031c00 	sll	v1,v1,0x10
    1120:	1000000e 	b	115c <func_80B34D48+0xc4>
    1124:	00031c03 	sra	v1,v1,0x10
    1128:	44823000 	mtc1	v0,$f6
    112c:	3c013e80 	lui	at,0x3e80
    1130:	44815000 	mtc1	at,$f10
    1134:	46803220 	cvt.s.w	$f8,$f6
    1138:	3c0144fa 	lui	at,0x44fa
    113c:	44819000 	mtc1	at,$f18
    1140:	460a4402 	mul.s	$f16,$f8,$f10
    1144:	46128101 	sub.s	$f4,$f16,$f18
    1148:	4600218d 	trunc.w.s	$f6,$f4
    114c:	44033000 	mfc1	v1,$f6
    1150:	00000000 	nop
    1154:	00031c00 	sll	v1,v1,0x10
    1158:	00031c03 	sra	v1,v1,0x10
    115c:	0083c821 	addu	t9,a0,v1
    1160:	a61900b6 	sh	t9,182(s0)
    1164:	860800b6 	lh	t0,182(s0)
    1168:	26040188 	addiu	a0,s0,392
    116c:	1840000f 	blez	v0,11ac <func_80B34D48+0x114>
    1170:	a6080032 	sh	t0,50(s0)
    1174:	44834000 	mtc1	v1,$f8
    1178:	3c013f80 	lui	at,0x3f80
    117c:	44816000 	mtc1	at,$f12
    1180:	468042a0 	cvt.s.w	$f10,$f8
    1184:	3c013f00 	lui	at,0x3f00
    1188:	44818000 	mtc1	at,$f16
    118c:	00000000 	nop
    1190:	46105082 	mul.s	$f2,$f10,$f16
    1194:	4602603c 	c.lt.s	$f12,$f2
    1198:	00000000 	nop
    119c:	45020011 	bc1fl	11e4 <func_80B34D48+0x14c>
    11a0:	46001207 	neg.s	$f8,$f2
    11a4:	1000000e 	b	11e0 <func_80B34D48+0x148>
    11a8:	46006086 	mov.s	$f2,$f12
    11ac:	44839000 	mtc1	v1,$f18
    11b0:	3c01bf80 	lui	at,0xbf80
    11b4:	44816000 	mtc1	at,$f12
    11b8:	46809120 	cvt.s.w	$f4,$f18
    11bc:	3c013f00 	lui	at,0x3f00
    11c0:	44813000 	mtc1	at,$f6
    11c4:	00000000 	nop
    11c8:	46062082 	mul.s	$f2,$f4,$f6
    11cc:	460c103c 	c.lt.s	$f2,$f12
    11d0:	00000000 	nop
    11d4:	45020003 	bc1fl	11e4 <func_80B34D48+0x14c>
    11d8:	46001207 	neg.s	$f8,$f2
    11dc:	46006086 	mov.s	$f2,$f12
    11e0:	46001207 	neg.s	$f8,$f2
    11e4:	0c000000 	jal	0 <func_80B33CB0>
    11e8:	e60801a4 	swc1	$f8,420(s0)
    11ec:	02002025 	move	a0,s0
    11f0:	0c000000 	jal	0 <func_80B33CB0>
    11f4:	24051555 	li	a1,5461
    11f8:	50400011 	beqzl	v0,1240 <func_80B34D48+0x1a8>
    11fc:	8fa90024 	lw	t1,36(sp)
    1200:	0c000000 	jal	0 <func_80B33CB0>
    1204:	00000000 	nop
    1208:	3c010000 	lui	at,0x0
    120c:	c42a0000 	lwc1	$f10,0(at)
    1210:	02002025 	move	a0,s0
    1214:	4600503c 	c.lt.s	$f10,$f0
    1218:	00000000 	nop
    121c:	45000005 	bc1f	1234 <func_80B34D48+0x19c>
    1220:	00000000 	nop
    1224:	0c000000 	jal	0 <func_80B33CB0>
    1228:	02002025 	move	a0,s0
    122c:	10000004 	b	1240 <func_80B34D48+0x1a8>
    1230:	8fa90024 	lw	t1,36(sp)
    1234:	0c000000 	jal	0 <func_80B33CB0>
    1238:	8fa50024 	lw	a1,36(sp)
    123c:	8fa90024 	lw	t1,36(sp)
    1240:	3c0a0001 	lui	t2,0x1
    1244:	02002025 	move	a0,s0
    1248:	01495021 	addu	t2,t2,t1
    124c:	8d4a1de4 	lw	t2,7652(t2)
    1250:	314b005f 	andi	t3,t2,0x5f
    1254:	55600004 	bnezl	t3,1268 <func_80B34D48+0x1d0>
    1258:	8fbf001c 	lw	ra,28(sp)
    125c:	0c000000 	jal	0 <func_80B33CB0>
    1260:	2405383e 	li	a1,14398
    1264:	8fbf001c 	lw	ra,28(sp)
    1268:	8fb00018 	lw	s0,24(sp)
    126c:	27bd0020 	addiu	sp,sp,32
    1270:	03e00008 	jr	ra
    1274:	00000000 	nop

00001278 <func_80B34F28>:
    1278:	27bdffd0 	addiu	sp,sp,-48
    127c:	afb00028 	sw	s0,40(sp)
    1280:	00808025 	move	s0,a0
    1284:	afbf002c 	sw	ra,44(sp)
    1288:	3c040600 	lui	a0,0x600
    128c:	0c000000 	jal	0 <func_80B33CB0>
    1290:	248457a0 	addiu	a0,a0,22432
    1294:	44822000 	mtc1	v0,$f4
    1298:	3c01c080 	lui	at,0xc080
    129c:	44814000 	mtc1	at,$f8
    12a0:	468021a0 	cvt.s.w	$f6,$f4
    12a4:	3c050600 	lui	a1,0x600
    12a8:	240e0001 	li	t6,1
    12ac:	afae0014 	sw	t6,20(sp)
    12b0:	24a557a0 	addiu	a1,a1,22432
    12b4:	26040188 	addiu	a0,s0,392
    12b8:	e7a60010 	swc1	$f6,16(sp)
    12bc:	3c063f80 	lui	a2,0x3f80
    12c0:	24070000 	li	a3,0
    12c4:	0c000000 	jal	0 <func_80B33CB0>
    12c8:	e7a80018 	swc1	$f8,24(sp)
    12cc:	0c000000 	jal	0 <func_80B33CB0>
    12d0:	00000000 	nop
    12d4:	3c013f00 	lui	at,0x3f00
    12d8:	44815000 	mtc1	at,$f10
    12dc:	3c0140c0 	lui	at,0x40c0
    12e0:	240f3e80 	li	t7,16000
    12e4:	4600503c 	c.lt.s	$f10,$f0
    12e8:	44810000 	mtc1	at,$f0
    12ec:	2418c180 	li	t8,-16000
    12f0:	3c010000 	lui	at,0x0
    12f4:	45020004 	bc1fl	1308 <func_80B34F28+0x90>
    12f8:	a61802fe 	sh	t8,766(s0)
    12fc:	10000002 	b	1308 <func_80B34F28+0x90>
    1300:	a60f02fe 	sh	t7,766(s0)
    1304:	a61802fe 	sh	t8,766(s0)
    1308:	e6000068 	swc1	$f0,104(s0)
    130c:	c4300000 	lwc1	$f16,0(at)
    1310:	861900b6 	lh	t9,182(s0)
    1314:	46100482 	mul.s	$f18,$f0,$f16
    1318:	a6190032 	sh	t9,50(s0)
    131c:	0c000000 	jal	0 <func_80B33CB0>
    1320:	e61201a4 	swc1	$f18,420(s0)
    1324:	3c0141f0 	lui	at,0x41f0
    1328:	44811000 	mtc1	at,$f2
    132c:	44805000 	mtc1	zero,$f10
    1330:	240a000b 	li	t2,11
    1334:	46020102 	mul.s	$f4,$f0,$f2
    1338:	3c050000 	lui	a1,0x0
    133c:	ae0a02d4 	sw	t2,724(s0)
    1340:	24a50000 	addiu	a1,a1,0
    1344:	02002025 	move	a0,s0
    1348:	e60a02ec 	swc1	$f10,748(s0)
    134c:	46022180 	add.s	$f6,$f4,$f2
    1350:	4600320d 	trunc.w.s	$f8,$f6
    1354:	44094000 	mfc1	t1,$f8
    1358:	0c000000 	jal	0 <func_80B33CB0>
    135c:	ae0902e8 	sw	t1,744(s0)
    1360:	8fbf002c 	lw	ra,44(sp)
    1364:	8fb00028 	lw	s0,40(sp)
    1368:	27bd0030 	addiu	sp,sp,48
    136c:	03e00008 	jr	ra
    1370:	00000000 	nop

00001374 <func_80B35024>:
    1374:	27bdffa8 	addiu	sp,sp,-88
    1378:	44802000 	mtc1	zero,$f4
    137c:	afbf0034 	sw	ra,52(sp)
    1380:	afb00030 	sw	s0,48(sp)
    1384:	afa5005c 	sw	a1,92(sp)
    1388:	e7a4004c 	swc1	$f4,76(sp)
    138c:	8caf1c44 	lw	t7,7236(a1)
    1390:	00808025 	move	s0,a0
    1394:	24080001 	li	t0,1
    1398:	afaf003c 	sw	t7,60(sp)
    139c:	861902fe 	lh	t9,766(s0)
    13a0:	8618008a 	lh	t8,138(s0)
    13a4:	afa80010 	sw	t0,16(sp)
    13a8:	248400b6 	addiu	a0,a0,182
    13ac:	03192821 	addu	a1,t8,t9
    13b0:	00052c00 	sll	a1,a1,0x10
    13b4:	00052c03 	sra	a1,a1,0x10
    13b8:	24060001 	li	a2,1
    13bc:	0c000000 	jal	0 <func_80B33CB0>
    13c0:	24070fa0 	li	a3,4000
    13c4:	8fa4005c 	lw	a0,92(sp)
    13c8:	0c000000 	jal	0 <func_80B33CB0>
    13cc:	02002825 	move	a1,s0
    13d0:	1440012a 	bnez	v0,187c <func_80B35024+0x508>
    13d4:	8fa4005c 	lw	a0,92(sp)
    13d8:	02002825 	move	a1,s0
    13dc:	0c000000 	jal	0 <func_80B33CB0>
    13e0:	00003025 	move	a2,zero
    13e4:	54400126 	bnezl	v0,1880 <func_80B35024+0x50c>
    13e8:	8fbf0034 	lw	ra,52(sp)
    13ec:	860700b6 	lh	a3,182(s0)
    13f0:	860b02fe 	lh	t3,766(s0)
    13f4:	34018000 	li	at,0x8000
    13f8:	a6070032 	sh	a3,50(s0)
    13fc:	8fa9003c 	lw	t1,60(sp)
    1400:	852a00b6 	lh	t2,182(t1)
    1404:	014b6021 	addu	t4,t2,t3
    1408:	01816821 	addu	t5,t4,at
    140c:	a7ad0056 	sh	t5,86(sp)
    1410:	96020088 	lhu	v0,136(s0)
    1414:	30420008 	andi	v0,v0,0x8
    1418:	14400008 	bnez	v0,143c <func_80B35024+0xc8>
    141c:	02002025 	move	a0,s0
    1420:	8fa5005c 	lw	a1,92(sp)
    1424:	0c000000 	jal	0 <func_80B33CB0>
    1428:	8e060068 	lw	a2,104(s0)
    142c:	54400019 	bnezl	v0,1494 <func_80B35024+0x120>
    1430:	8fa4005c 	lw	a0,92(sp)
    1434:	96020088 	lhu	v0,136(s0)
    1438:	30420008 	andi	v0,v0,0x8
    143c:	5040000a 	beqzl	v0,1468 <func_80B35024+0xf4>
    1440:	00001025 	move	v0,zero
    1444:	860e007e 	lh	t6,126(s0)
    1448:	860f008a 	lh	t7,138(s0)
    144c:	861902fe 	lh	t9,766(s0)
    1450:	01cfc023 	subu	t8,t6,t7
    1454:	03191023 	subu	v0,t8,t9
    1458:	00021400 	sll	v0,v0,0x10
    145c:	10000002 	b	1468 <func_80B35024+0xf4>
    1460:	00021403 	sra	v0,v0,0x10
    1464:	00001025 	move	v0,zero
    1468:	04400003 	bltz	v0,1478 <func_80B35024+0x104>
    146c:	00021823 	negu	v1,v0
    1470:	10000001 	b	1478 <func_80B35024+0x104>
    1474:	00401825 	move	v1,v0
    1478:	28612ee1 	slti	at,v1,12001
    147c:	54200005 	bnezl	at,1494 <func_80B35024+0x120>
    1480:	8fa4005c 	lw	a0,92(sp)
    1484:	860802fe 	lh	t0,766(s0)
    1488:	00084823 	negu	t1,t0
    148c:	a60902fe 	sh	t1,766(s0)
    1490:	8fa4005c 	lw	a0,92(sp)
    1494:	0c000000 	jal	0 <func_80B33CB0>
    1498:	02002825 	move	a1,s0
    149c:	10400004 	beqz	v0,14b0 <func_80B35024+0x13c>
    14a0:	3c014316 	lui	at,0x4316
    14a4:	44811000 	mtc1	at,$f2
    14a8:	00000000 	nop
    14ac:	e7a2004c 	swc1	$f2,76(sp)
    14b0:	3c014270 	lui	at,0x4270
    14b4:	c7a2004c 	lwc1	$f2,76(sp)
    14b8:	44813000 	mtc1	at,$f6
    14bc:	c6000090 	lwc1	$f0,144(s0)
    14c0:	46023200 	add.s	$f8,$f6,$f2
    14c4:	4608003e 	c.le.s	$f0,$f8
    14c8:	00000000 	nop
    14cc:	4502000b 	bc1fl	14fc <func_80B35024+0x188>
    14d0:	3c0142a0 	lui	at,0x42a0
    14d4:	44805000 	mtc1	zero,$f10
    14d8:	260402ec 	addiu	a0,s0,748
    14dc:	3c05c080 	lui	a1,0xc080
    14e0:	3c063f80 	lui	a2,0x3f80
    14e4:	3c073fc0 	lui	a3,0x3fc0
    14e8:	0c000000 	jal	0 <func_80B33CB0>
    14ec:	e7aa0010 	swc1	$f10,16(sp)
    14f0:	1000001a 	b	155c <func_80B35024+0x1e8>
    14f4:	c60c02ec 	lwc1	$f12,748(s0)
    14f8:	3c0142a0 	lui	at,0x42a0
    14fc:	44819000 	mtc1	at,$f18
    1500:	260402ec 	addiu	a0,s0,748
    1504:	24050000 	li	a1,0
    1508:	46029100 	add.s	$f4,$f18,$f2
    150c:	3c063f80 	lui	a2,0x3f80
    1510:	3c0740d4 	lui	a3,0x40d4
    1514:	4600203c 	c.lt.s	$f4,$f0
    1518:	00000000 	nop
    151c:	4502000b 	bc1fl	154c <func_80B35024+0x1d8>
    1520:	44804000 	mtc1	zero,$f8
    1524:	44803000 	mtc1	zero,$f6
    1528:	260402ec 	addiu	a0,s0,748
    152c:	3c054080 	lui	a1,0x4080
    1530:	3c063f80 	lui	a2,0x3f80
    1534:	3c073fc0 	lui	a3,0x3fc0
    1538:	0c000000 	jal	0 <func_80B33CB0>
    153c:	e7a60010 	swc1	$f6,16(sp)
    1540:	10000006 	b	155c <func_80B35024+0x1e8>
    1544:	c60c02ec 	lwc1	$f12,748(s0)
    1548:	44804000 	mtc1	zero,$f8
    154c:	34e7cccd 	ori	a3,a3,0xcccd
    1550:	0c000000 	jal	0 <func_80B33CB0>
    1554:	e7a80010 	swc1	$f8,16(sp)
    1558:	c60c02ec 	lwc1	$f12,748(s0)
    155c:	44805000 	mtc1	zero,$f10
    1560:	00000000 	nop
    1564:	460c5032 	c.eq.s	$f10,$f12
    1568:	00000000 	nop
    156c:	45030010 	bc1tl	15b0 <func_80B35024+0x23c>
    1570:	44808000 	mtc1	zero,$f16
    1574:	0c000000 	jal	0 <func_80B33CB0>
    1578:	860400b6 	lh	a0,182(s0)
    157c:	c60402ec 	lwc1	$f4,748(s0)
    1580:	c6120024 	lwc1	$f18,36(s0)
    1584:	860400b6 	lh	a0,182(s0)
    1588:	46040182 	mul.s	$f6,$f0,$f4
    158c:	46069200 	add.s	$f8,$f18,$f6
    1590:	0c000000 	jal	0 <func_80B33CB0>
    1594:	e6080024 	swc1	$f8,36(s0)
    1598:	c60c02ec 	lwc1	$f12,748(s0)
    159c:	c60a002c 	lwc1	$f10,44(s0)
    15a0:	460c0102 	mul.s	$f4,$f0,$f12
    15a4:	46045480 	add.s	$f18,$f10,$f4
    15a8:	e612002c 	swc1	$f18,44(s0)
    15ac:	44808000 	mtc1	zero,$f16
    15b0:	00000000 	nop
    15b4:	460c803e 	c.le.s	$f16,$f12
    15b8:	00000000 	nop
    15bc:	45020004 	bc1fl	15d0 <func_80B35024+0x25c>
    15c0:	46006387 	neg.s	$f14,$f12
    15c4:	10000002 	b	15d0 <func_80B35024+0x25c>
    15c8:	46006386 	mov.s	$f14,$f12
    15cc:	46006387 	neg.s	$f14,$f12
    15d0:	c6000068 	lwc1	$f0,104(s0)
    15d4:	4600803e 	c.le.s	$f16,$f0
    15d8:	00000000 	nop
    15dc:	45020004 	bc1fl	15f0 <func_80B35024+0x27c>
    15e0:	46000087 	neg.s	$f2,$f0
    15e4:	10000002 	b	15f0 <func_80B35024+0x27c>
    15e8:	46000086 	mov.s	$f2,$f0
    15ec:	46000087 	neg.s	$f2,$f0
    15f0:	4602703c 	c.lt.s	$f14,$f2
    15f4:	3c010000 	lui	at,0x0
    15f8:	45000006 	bc1f	1614 <func_80B35024+0x2a0>
    15fc:	00000000 	nop
    1600:	3c010000 	lui	at,0x0
    1604:	c4260000 	lwc1	$f6,0(at)
    1608:	46060202 	mul.s	$f8,$f0,$f6
    160c:	10000004 	b	1620 <func_80B35024+0x2ac>
    1610:	e60801a4 	swc1	$f8,420(s0)
    1614:	c42a0000 	lwc1	$f10,0(at)
    1618:	460a6102 	mul.s	$f4,$f12,$f10
    161c:	e60401a4 	swc1	$f4,420(s0)
    1620:	3c01c040 	lui	at,0xc040
    1624:	44811000 	mtc1	at,$f2
    1628:	c60001a4 	lwc1	$f0,420(s0)
    162c:	3c014040 	lui	at,0x4040
    1630:	4602003c 	c.lt.s	$f0,$f2
    1634:	00000000 	nop
    1638:	45020004 	bc1fl	164c <func_80B35024+0x2d8>
    163c:	44819000 	mtc1	at,$f18
    1640:	1000000c 	b	1674 <func_80B35024+0x300>
    1644:	e60201a4 	swc1	$f2,420(s0)
    1648:	44819000 	mtc1	at,$f18
    164c:	3c014040 	lui	at,0x4040
    1650:	4600903c 	c.lt.s	$f18,$f0
    1654:	00000000 	nop
    1658:	45020005 	bc1fl	1670 <func_80B35024+0x2fc>
    165c:	46000086 	mov.s	$f2,$f0
    1660:	44811000 	mtc1	at,$f2
    1664:	10000003 	b	1674 <func_80B35024+0x300>
    1668:	e60201a4 	swc1	$f2,420(s0)
    166c:	46000086 	mov.s	$f2,$f0
    1670:	e60201a4 	swc1	$f2,420(s0)
    1674:	c60601a0 	lwc1	$f6,416(s0)
    1678:	26040188 	addiu	a0,s0,392
    167c:	4600320d 	trunc.w.s	$f8,$f6
    1680:	44034000 	mfc1	v1,$f8
    1684:	0c000000 	jal	0 <func_80B33CB0>
    1688:	afa30048 	sw	v1,72(sp)
    168c:	44808000 	mtc1	zero,$f16
    1690:	c60001a4 	lwc1	$f0,420(s0)
    1694:	8fa30048 	lw	v1,72(sp)
    1698:	4600803e 	c.le.s	$f16,$f0
    169c:	00000000 	nop
    16a0:	45020004 	bc1fl	16b4 <func_80B35024+0x340>
    16a4:	46000087 	neg.s	$f2,$f0
    16a8:	10000002 	b	16b4 <func_80B35024+0x340>
    16ac:	46000086 	mov.s	$f2,$f0
    16b0:	46000087 	neg.s	$f2,$f0
    16b4:	c60c01a0 	lwc1	$f12,416(s0)
    16b8:	4600803e 	c.le.s	$f16,$f0
    16bc:	46026281 	sub.s	$f10,$f12,$f2
    16c0:	4600648d 	trunc.w.s	$f18,$f12
    16c4:	4600510d 	trunc.w.s	$f4,$f10
    16c8:	440d9000 	mfc1	t5,$f18
    16cc:	44022000 	mfc1	v0,$f4
    16d0:	45020004 	bc1fl	16e4 <func_80B35024+0x370>
    16d4:	46000087 	neg.s	$f2,$f0
    16d8:	10000002 	b	16e4 <func_80B35024+0x370>
    16dc:	46000086 	mov.s	$f2,$f0
    16e0:	46000087 	neg.s	$f2,$f0
    16e4:	506d001d 	beql	v1,t5,175c <func_80B35024+0x3e8>
    16e8:	8fab005c 	lw	t3,92(sp)
    16ec:	5c40001b 	bgtzl	v0,175c <func_80B35024+0x3e8>
    16f0:	8fab005c 	lw	t3,92(sp)
    16f4:	4600118d 	trunc.w.s	$f6,$f2
    16f8:	02002025 	move	a0,s0
    16fc:	440f3000 	mfc1	t7,$f6
    1700:	00000000 	nop
    1704:	01e3c021 	addu	t8,t7,v1
    1708:	5b000014 	blezl	t8,175c <func_80B35024+0x3e8>
    170c:	8fab005c 	lw	t3,92(sp)
    1710:	0c000000 	jal	0 <func_80B33CB0>
    1714:	2405385a 	li	a1,14426
    1718:	3c014040 	lui	at,0x4040
    171c:	44814000 	mtc1	at,$f8
    1720:	24190003 	li	t9,3
    1724:	24080032 	li	t0,50
    1728:	24090032 	li	t1,50
    172c:	240a0001 	li	t2,1
    1730:	afaa0020 	sw	t2,32(sp)
    1734:	afa9001c 	sw	t1,28(sp)
    1738:	afa80018 	sw	t0,24(sp)
    173c:	afb90010 	sw	t9,16(sp)
    1740:	8fa4005c 	lw	a0,92(sp)
    1744:	02002825 	move	a1,s0
    1748:	26060024 	addiu	a2,s0,36
    174c:	3c0741a0 	lui	a3,0x41a0
    1750:	0c000000 	jal	0 <func_80B33CB0>
    1754:	e7a80014 	swc1	$f8,20(sp)
    1758:	8fab005c 	lw	t3,92(sp)
    175c:	3c0c0001 	lui	t4,0x1
    1760:	02002025 	move	a0,s0
    1764:	018b6021 	addu	t4,t4,t3
    1768:	8d8c1de4 	lw	t4,7652(t4)
    176c:	318d005f 	andi	t5,t4,0x5f
    1770:	55a00004 	bnezl	t5,1784 <func_80B35024+0x410>
    1774:	87ae0056 	lh	t6,86(sp)
    1778:	0c000000 	jal	0 <func_80B33CB0>
    177c:	2405383e 	li	a1,14398
    1780:	87ae0056 	lh	t6,86(sp)
    1784:	860f00b6 	lh	t7,182(s0)
    1788:	01cf2023 	subu	a0,t6,t7
    178c:	00042400 	sll	a0,a0,0x10
    1790:	0c000000 	jal	0 <func_80B33CB0>
    1794:	00042403 	sra	a0,a0,0x10
    1798:	3c010000 	lui	at,0x0
    179c:	c42a0000 	lwc1	$f10,0(at)
    17a0:	8fa4005c 	lw	a0,92(sp)
    17a4:	460a003c 	c.lt.s	$f0,$f10
    17a8:	00000000 	nop
    17ac:	45020010 	bc1fl	17f0 <func_80B35024+0x47c>
    17b0:	8e1802e8 	lw	t8,744(s0)
    17b4:	0c000000 	jal	0 <func_80B33CB0>
    17b8:	02002825 	move	a1,s0
    17bc:	1440000b 	bnez	v0,17ec <func_80B35024+0x478>
    17c0:	3c0142a0 	lui	at,0x42a0
    17c4:	44812000 	mtc1	at,$f4
    17c8:	c6120090 	lwc1	$f18,144(s0)
    17cc:	4604903e 	c.le.s	$f18,$f4
    17d0:	00000000 	nop
    17d4:	45020006 	bc1fl	17f0 <func_80B35024+0x47c>
    17d8:	8e1802e8 	lw	t8,744(s0)
    17dc:	0c000000 	jal	0 <func_80B33CB0>
    17e0:	02002025 	move	a0,s0
    17e4:	10000026 	b	1880 <func_80B35024+0x50c>
    17e8:	8fbf0034 	lw	ra,52(sp)
    17ec:	8e1802e8 	lw	t8,744(s0)
    17f0:	02002825 	move	a1,s0
    17f4:	2719ffff 	addiu	t9,t8,-1
    17f8:	17200020 	bnez	t9,187c <func_80B35024+0x508>
    17fc:	ae1902e8 	sw	t9,744(s0)
    1800:	0c000000 	jal	0 <func_80B33CB0>
    1804:	8fa4005c 	lw	a0,92(sp)
    1808:	1040000e 	beqz	v0,1844 <func_80B35024+0x4d0>
    180c:	00000000 	nop
    1810:	0c000000 	jal	0 <func_80B33CB0>
    1814:	00000000 	nop
    1818:	3c013f00 	lui	at,0x3f00
    181c:	44813000 	mtc1	at,$f6
    1820:	00000000 	nop
    1824:	4600303c 	c.lt.s	$f6,$f0
    1828:	00000000 	nop
    182c:	45000005 	bc1f	1844 <func_80B35024+0x4d0>
    1830:	00000000 	nop
    1834:	0c000000 	jal	0 <func_80B33CB0>
    1838:	02002025 	move	a0,s0
    183c:	10000010 	b	1880 <func_80B35024+0x50c>
    1840:	8fbf0034 	lw	ra,52(sp)
    1844:	0c000000 	jal	0 <func_80B33CB0>
    1848:	02002025 	move	a0,s0
    184c:	0c000000 	jal	0 <func_80B33CB0>
    1850:	00000000 	nop
    1854:	3c014040 	lui	at,0x4040
    1858:	44814000 	mtc1	at,$f8
    185c:	3c013f80 	lui	at,0x3f80
    1860:	44812000 	mtc1	at,$f4
    1864:	46080282 	mul.s	$f10,$f0,$f8
    1868:	46045480 	add.s	$f18,$f10,$f4
    186c:	4600918d 	trunc.w.s	$f6,$f18
    1870:	440a3000 	mfc1	t2,$f6
    1874:	00000000 	nop
    1878:	ae0a02e8 	sw	t2,744(s0)
    187c:	8fbf0034 	lw	ra,52(sp)
    1880:	8fb00030 	lw	s0,48(sp)
    1884:	27bd0058 	addiu	sp,sp,88
    1888:	03e00008 	jr	ra
    188c:	00000000 	nop

00001890 <func_80B35540>:
    1890:	27bdffe8 	addiu	sp,sp,-24
    1894:	afbf0014 	sw	ra,20(sp)
    1898:	00803025 	move	a2,a0
    189c:	3c050600 	lui	a1,0x600
    18a0:	24a54638 	addiu	a1,a1,17976
    18a4:	afa60018 	sw	a2,24(sp)
    18a8:	0c000000 	jal	0 <func_80B33CB0>
    18ac:	24840188 	addiu	a0,a0,392
    18b0:	8fa40018 	lw	a0,24(sp)
    18b4:	3c0141a0 	lui	at,0x41a0
    18b8:	44812000 	mtc1	at,$f4
    18bc:	908e0314 	lbu	t6,788(a0)
    18c0:	44803000 	mtc1	zero,$f6
    18c4:	8498008a 	lh	t8,138(a0)
    18c8:	24190008 	li	t9,8
    18cc:	24080007 	li	t0,7
    18d0:	3c050000 	lui	a1,0x0
    18d4:	31cffffb 	andi	t7,t6,0xfffb
    18d8:	24a50000 	addiu	a1,a1,0
    18dc:	a08f0314 	sb	t7,788(a0)
    18e0:	ac9902d4 	sw	t9,724(a0)
    18e4:	a48002fa 	sh	zero,762(a0)
    18e8:	ac8802e8 	sw	t0,744(a0)
    18ec:	e4840198 	swc1	$f4,408(a0)
    18f0:	a49800b6 	sh	t8,182(a0)
    18f4:	0c000000 	jal	0 <func_80B33CB0>
    18f8:	e4860068 	swc1	$f6,104(a0)
    18fc:	8fbf0014 	lw	ra,20(sp)
    1900:	27bd0018 	addiu	sp,sp,24
    1904:	03e00008 	jr	ra
    1908:	00000000 	nop

0000190c <func_80B355BC>:
    190c:	27bdffb8 	addiu	sp,sp,-72
    1910:	afbf0034 	sw	ra,52(sp)
    1914:	afb00030 	sw	s0,48(sp)
    1918:	afa5004c 	sw	a1,76(sp)
    191c:	8ca31c44 	lw	v1,7236(a1)
    1920:	848200b6 	lh	v0,182(a0)
    1924:	44804000 	mtc1	zero,$f8
    1928:	846f00b6 	lh	t7,182(v1)
    192c:	00808025 	move	s0,a0
    1930:	01e2c023 	subu	t8,t7,v0
    1934:	a7b80042 	sh	t8,66(sp)
    1938:	8499008a 	lh	t9,138(a0)
    193c:	87aa0042 	lh	t2,66(sp)
    1940:	87ab0042 	lh	t3,66(sp)
    1944:	03224023 	subu	t0,t9,v0
    1948:	a7a80040 	sh	t0,64(sp)
    194c:	c48401a0 	lwc1	$f4,416(a0)
    1950:	000b6023 	negu	t4,t3
    1954:	4600218d 	trunc.w.s	$f6,$f4
    1958:	44063000 	mfc1	a2,$f6
    195c:	05430003 	bgezl	t2,196c <func_80B355BC+0x60>
    1960:	87ad0040 	lh	t5,64(sp)
    1964:	a7ac0042 	sh	t4,66(sp)
    1968:	87ad0040 	lh	t5,64(sp)
    196c:	87ae0040 	lh	t6,64(sp)
    1970:	28c10009 	slti	at,a2,9
    1974:	05a10002 	bgez	t5,1980 <func_80B355BC+0x74>
    1978:	000e7823 	negu	t7,t6
    197c:	a7af0040 	sh	t7,64(sp)
    1980:	14200003 	bnez	at,1990 <func_80B355BC+0x84>
    1984:	e6080068 	swc1	$f8,104(s0)
    1988:	28c1000d 	slti	at,a2,13
    198c:	14200005 	bnez	at,19a4 <func_80B355BC+0x98>
    1990:	28c10011 	slti	at,a2,17
    1994:	1420000e 	bnez	at,19d0 <func_80B355BC+0xc4>
    1998:	28c10014 	slti	at,a2,20
    199c:	5020000d 	beqzl	at,19d4 <func_80B355BC+0xc8>
    19a0:	a60002f8 	sh	zero,760(s0)
    19a4:	861802f8 	lh	t8,760(s0)
    19a8:	02002025 	move	a0,s0
    19ac:	2405383f 	li	a1,14399
    19b0:	57000005 	bnezl	t8,19c8 <func_80B355BC+0xbc>
    19b4:	24190001 	li	t9,1
    19b8:	0c000000 	jal	0 <func_80B33CB0>
    19bc:	afa6003c 	sw	a2,60(sp)
    19c0:	8fa6003c 	lw	a2,60(sp)
    19c4:	24190001 	li	t9,1
    19c8:	10000002 	b	19d4 <func_80B355BC+0xc8>
    19cc:	a61902f8 	sh	t9,760(s0)
    19d0:	a60002f8 	sh	zero,760(s0)
    19d4:	2401000f 	li	at,15
    19d8:	14c10012 	bne	a2,at,1a24 <func_80B355BC+0x118>
    19dc:	8fa4004c 	lw	a0,76(sp)
    19e0:	02002825 	move	a1,s0
    19e4:	0c000000 	jal	0 <func_80B33CB0>
    19e8:	afa6003c 	sw	a2,60(sp)
    19ec:	1440000d 	bnez	v0,1a24 <func_80B355BC+0x118>
    19f0:	8fa6003c 	lw	a2,60(sp)
    19f4:	02002025 	move	a0,s0
    19f8:	24052000 	li	a1,8192
    19fc:	0c000000 	jal	0 <func_80B33CB0>
    1a00:	afa6003c 	sw	a2,60(sp)
    1a04:	1040000c 	beqz	v0,1a38 <func_80B355BC+0x12c>
    1a08:	8fa6003c 	lw	a2,60(sp)
    1a0c:	3c0142c8 	lui	at,0x42c8
    1a10:	44818000 	mtc1	at,$f16
    1a14:	c60a0090 	lwc1	$f10,144(s0)
    1a18:	460a803e 	c.le.s	$f16,$f10
    1a1c:	00000000 	nop
    1a20:	45010005 	bc1t	1a38 <func_80B355BC+0x12c>
    1a24:	26040188 	addiu	a0,s0,392
    1a28:	0c000000 	jal	0 <func_80B33CB0>
    1a2c:	afa6003c 	sw	a2,60(sp)
    1a30:	10400085 	beqz	v0,1c48 <func_80B355BC+0x33c>
    1a34:	8fa6003c 	lw	a2,60(sp)
    1a38:	2401000f 	li	at,15
    1a3c:	10c10029 	beq	a2,at,1ae4 <func_80B355BC+0x1d8>
    1a40:	02002025 	move	a0,s0
    1a44:	8e0202e8 	lw	v0,744(s0)
    1a48:	10400026 	beqz	v0,1ae4 <func_80B355BC+0x1d8>
    1a4c:	2448fffc 	addiu	t0,v0,-4
    1a50:	44889000 	mtc1	t0,$f18
    1a54:	3c010000 	lui	at,0x0
    1a58:	c4260000 	lwc1	$f6,0(at)
    1a5c:	46809120 	cvt.s.w	$f4,$f18
    1a60:	3c013fc0 	lui	at,0x3fc0
    1a64:	44815000 	mtc1	at,$f10
    1a68:	3c010000 	lui	at,0x0
    1a6c:	c4320000 	lwc1	$f18,0(at)
    1a70:	860d00b6 	lh	t5,182(s0)
    1a74:	46062202 	mul.s	$f8,$f4,$f6
    1a78:	3c014000 	lui	at,0x4000
    1a7c:	24080001 	li	t0,1
    1a80:	240f0001 	li	t7,1
    1a84:	24180032 	li	t8,50
    1a88:	24190032 	li	t9,50
    1a8c:	02002825 	move	a1,s0
    1a90:	46085400 	add.s	$f16,$f10,$f8
    1a94:	44815000 	mtc1	at,$f10
    1a98:	26060024 	addiu	a2,s0,36
    1a9c:	3c074170 	lui	a3,0x4170
    1aa0:	46109102 	mul.s	$f4,$f18,$f16
    1aa4:	4600218d 	trunc.w.s	$f6,$f4
    1aa8:	440c3000 	mfc1	t4,$f6
    1aac:	00000000 	nop
    1ab0:	01ac7021 	addu	t6,t5,t4
    1ab4:	a60e00b6 	sh	t6,182(s0)
    1ab8:	afa80020 	sw	t0,32(sp)
    1abc:	afb9001c 	sw	t9,28(sp)
    1ac0:	afb80018 	sw	t8,24(sp)
    1ac4:	afaf0010 	sw	t7,16(sp)
    1ac8:	8fa4004c 	lw	a0,76(sp)
    1acc:	0c000000 	jal	0 <func_80B33CB0>
    1ad0:	e7aa0014 	swc1	$f10,20(sp)
    1ad4:	8e0902e8 	lw	t1,744(s0)
    1ad8:	252affff 	addiu	t2,t1,-1
    1adc:	1000005a 	b	1c48 <func_80B355BC+0x33c>
    1ae0:	ae0a02e8 	sw	t2,744(s0)
    1ae4:	24051554 	li	a1,5460
    1ae8:	0c000000 	jal	0 <func_80B33CB0>
    1aec:	afa6003c 	sw	a2,60(sp)
    1af0:	14400017 	bnez	v0,1b50 <func_80B355BC+0x244>
    1af4:	8fa6003c 	lw	a2,60(sp)
    1af8:	2401000f 	li	at,15
    1afc:	10c10014 	beq	a2,at,1b50 <func_80B355BC+0x244>
    1b00:	00000000 	nop
    1b04:	0c000000 	jal	0 <func_80B33CB0>
    1b08:	02002025 	move	a0,s0
    1b0c:	0c000000 	jal	0 <func_80B33CB0>
    1b10:	00000000 	nop
    1b14:	3c0140a0 	lui	at,0x40a0
    1b18:	44811000 	mtc1	at,$f2
    1b1c:	240e0007 	li	t6,7
    1b20:	46020202 	mul.s	$f8,$f0,$f2
    1b24:	46024480 	add.s	$f18,$f8,$f2
    1b28:	4600940d 	trunc.w.s	$f16,$f18
    1b2c:	440d8000 	mfc1	t5,$f16
    1b30:	00000000 	nop
    1b34:	ae0d02e8 	sw	t5,744(s0)
    1b38:	87ac0040 	lh	t4,64(sp)
    1b3c:	298132c9 	slti	at,t4,13001
    1b40:	54200042 	bnezl	at,1c4c <func_80B355BC+0x340>
    1b44:	8fbf0034 	lw	ra,52(sp)
    1b48:	1000003f 	b	1c48 <func_80B355BC+0x33c>
    1b4c:	a60e02e2 	sh	t6,738(s0)
    1b50:	0c000000 	jal	0 <func_80B33CB0>
    1b54:	00000000 	nop
    1b58:	3c010000 	lui	at,0x0
    1b5c:	c4240000 	lwc1	$f4,0(at)
    1b60:	3c0142f0 	lui	at,0x42f0
    1b64:	4600203c 	c.lt.s	$f4,$f0
    1b68:	00000000 	nop
    1b6c:	45010008 	bc1t	1b90 <func_80B355BC+0x284>
    1b70:	00000000 	nop
    1b74:	c6060090 	lwc1	$f6,144(s0)
    1b78:	44815000 	mtc1	at,$f10
    1b7c:	00000000 	nop
    1b80:	4606503e 	c.le.s	$f10,$f6
    1b84:	00000000 	nop
    1b88:	4502000f 	bc1fl	1bc8 <func_80B355BC+0x2bc>
    1b8c:	8619008a 	lh	t9,138(s0)
    1b90:	0c000000 	jal	0 <func_80B33CB0>
    1b94:	02002025 	move	a0,s0
    1b98:	0c000000 	jal	0 <func_80B33CB0>
    1b9c:	00000000 	nop
    1ba0:	3c0140a0 	lui	at,0x40a0
    1ba4:	44811000 	mtc1	at,$f2
    1ba8:	00000000 	nop
    1bac:	46020202 	mul.s	$f8,$f0,$f2
    1bb0:	46024480 	add.s	$f18,$f8,$f2
    1bb4:	4600940d 	trunc.w.s	$f16,$f18
    1bb8:	44188000 	mfc1	t8,$f16
    1bbc:	10000022 	b	1c48 <func_80B355BC+0x33c>
    1bc0:	ae1802e8 	sw	t8,744(s0)
    1bc4:	8619008a 	lh	t9,138(s0)
    1bc8:	0c000000 	jal	0 <func_80B33CB0>
    1bcc:	a6190032 	sh	t9,50(s0)
    1bd0:	3c010000 	lui	at,0x0
    1bd4:	c4240000 	lwc1	$f4,0(at)
    1bd8:	87a80042 	lh	t0,66(sp)
    1bdc:	02002025 	move	a0,s0
    1be0:	4600203c 	c.lt.s	$f4,$f0
    1be4:	29012711 	slti	at,t0,10001
    1be8:	45000005 	bc1f	1c00 <func_80B355BC+0x2f4>
    1bec:	00000000 	nop
    1bf0:	0c000000 	jal	0 <func_80B33CB0>
    1bf4:	8fa5004c 	lw	a1,76(sp)
    1bf8:	10000014 	b	1c4c <func_80B355BC+0x340>
    1bfc:	8fbf0034 	lw	ra,52(sp)
    1c00:	1020000f 	beqz	at,1c40 <func_80B355BC+0x334>
    1c04:	87a90040 	lh	t1,64(sp)
    1c08:	29213e81 	slti	at,t1,16001
    1c0c:	14200007 	bnez	at,1c2c <func_80B355BC+0x320>
    1c10:	8fa4004c 	lw	a0,76(sp)
    1c14:	860a008a 	lh	t2,138(s0)
    1c18:	02002025 	move	a0,s0
    1c1c:	0c000000 	jal	0 <func_80B33CB0>
    1c20:	a60a0032 	sh	t2,50(s0)
    1c24:	10000009 	b	1c4c <func_80B355BC+0x340>
    1c28:	8fbf0034 	lw	ra,52(sp)
    1c2c:	02002825 	move	a1,s0
    1c30:	0c000000 	jal	0 <func_80B33CB0>
    1c34:	24060001 	li	a2,1
    1c38:	10000004 	b	1c4c <func_80B355BC+0x340>
    1c3c:	8fbf0034 	lw	ra,52(sp)
    1c40:	0c000000 	jal	0 <func_80B33CB0>
    1c44:	02002025 	move	a0,s0
    1c48:	8fbf0034 	lw	ra,52(sp)
    1c4c:	8fb00030 	lw	s0,48(sp)
    1c50:	27bd0048 	addiu	sp,sp,72
    1c54:	03e00008 	jr	ra
    1c58:	00000000 	nop

00001c5c <func_80B3590C>:
    1c5c:	27bdffd0 	addiu	sp,sp,-48
    1c60:	afbf002c 	sw	ra,44(sp)
    1c64:	afb00028 	sw	s0,40(sp)
    1c68:	c48201a0 	lwc1	$f2,416(a0)
    1c6c:	3c013f80 	lui	at,0x3f80
    1c70:	44816000 	mtc1	at,$f12
    1c74:	4600110d 	trunc.w.s	$f4,$f2
    1c78:	00808025 	move	s0,a0
    1c7c:	3c050600 	lui	a1,0x600
    1c80:	24a54638 	addiu	a1,a1,17976
    1c84:	440f2000 	mfc1	t7,$f4
    1c88:	26040188 	addiu	a0,s0,392
    1c8c:	3c06bf00 	lui	a2,0xbf00
    1c90:	29e10010 	slti	at,t7,16
    1c94:	14200004 	bnez	at,1ca8 <func_80B3590C+0x4c>
    1c98:	46006006 	mov.s	$f0,$f12
    1c9c:	3c014170 	lui	at,0x4170
    1ca0:	44810000 	mtc1	at,$f0
    1ca4:	00000000 	nop
    1ca8:	460c1181 	sub.s	$f6,$f2,$f12
    1cac:	44804000 	mtc1	zero,$f8
    1cb0:	24180003 	li	t8,3
    1cb4:	afb80014 	sw	t8,20(sp)
    1cb8:	44073000 	mfc1	a3,$f6
    1cbc:	e7a00010 	swc1	$f0,16(sp)
    1cc0:	0c000000 	jal	0 <func_80B33CB0>
    1cc4:	e7a80018 	swc1	$f8,24(sp)
    1cc8:	2419000c 	li	t9,12
    1ccc:	3c050000 	lui	a1,0x0
    1cd0:	ae1902d4 	sw	t9,724(s0)
    1cd4:	a60002f8 	sh	zero,760(s0)
    1cd8:	24a50000 	addiu	a1,a1,0
    1cdc:	0c000000 	jal	0 <func_80B33CB0>
    1ce0:	02002025 	move	a0,s0
    1ce4:	8fbf002c 	lw	ra,44(sp)
    1ce8:	8fb00028 	lw	s0,40(sp)
    1cec:	27bd0030 	addiu	sp,sp,48
    1cf0:	03e00008 	jr	ra
    1cf4:	00000000 	nop

00001cf8 <func_80B359A8>:
    1cf8:	27bdffd8 	addiu	sp,sp,-40
    1cfc:	afbf001c 	sw	ra,28(sp)
    1d00:	afb00018 	sw	s0,24(sp)
    1d04:	afa5002c 	sw	a1,44(sp)
    1d08:	8ca31c44 	lw	v1,7236(a1)
    1d0c:	848200b6 	lh	v0,182(a0)
    1d10:	8498008a 	lh	t8,138(a0)
    1d14:	846f00b6 	lh	t7,182(v1)
    1d18:	00808025 	move	s0,a0
    1d1c:	03023823 	subu	a3,t8,v0
    1d20:	01e23023 	subu	a2,t7,v0
    1d24:	00063400 	sll	a2,a2,0x10
    1d28:	00063403 	sra	a2,a2,0x10
    1d2c:	00073c00 	sll	a3,a3,0x10
    1d30:	04c10004 	bgez	a2,1d44 <func_80B359A8+0x4c>
    1d34:	00073c03 	sra	a3,a3,0x10
    1d38:	00063023 	negu	a2,a2
    1d3c:	00063400 	sll	a2,a2,0x10
    1d40:	00063403 	sra	a2,a2,0x10
    1d44:	04e10004 	bgez	a3,1d58 <func_80B359A8+0x60>
    1d48:	26040188 	addiu	a0,s0,392
    1d4c:	00073823 	negu	a3,a3
    1d50:	00073c00 	sll	a3,a3,0x10
    1d54:	00073c03 	sra	a3,a3,0x10
    1d58:	a7a60022 	sh	a2,34(sp)
    1d5c:	0c000000 	jal	0 <func_80B33CB0>
    1d60:	a7a70020 	sh	a3,32(sp)
    1d64:	1040005a 	beqz	v0,1ed0 <func_80B359A8+0x1d8>
    1d68:	87a60022 	lh	a2,34(sp)
    1d6c:	02002025 	move	a0,s0
    1d70:	24051554 	li	a1,5460
    1d74:	0c000000 	jal	0 <func_80B33CB0>
    1d78:	a7a60022 	sh	a2,34(sp)
    1d7c:	14400014 	bnez	v0,1dd0 <func_80B359A8+0xd8>
    1d80:	87a60022 	lh	a2,34(sp)
    1d84:	0c000000 	jal	0 <func_80B33CB0>
    1d88:	02002025 	move	a0,s0
    1d8c:	0c000000 	jal	0 <func_80B33CB0>
    1d90:	00000000 	nop
    1d94:	3c0140a0 	lui	at,0x40a0
    1d98:	44811000 	mtc1	at,$f2
    1d9c:	240a001e 	li	t2,30
    1da0:	46020102 	mul.s	$f4,$f0,$f2
    1da4:	46022180 	add.s	$f6,$f4,$f2
    1da8:	4600320d 	trunc.w.s	$f8,$f6
    1dac:	44084000 	mfc1	t0,$f8
    1db0:	00000000 	nop
    1db4:	ae0802e8 	sw	t0,744(s0)
    1db8:	87a90020 	lh	t1,32(sp)
    1dbc:	292132c9 	slti	at,t1,13001
    1dc0:	54200044 	bnezl	at,1ed4 <func_80B359A8+0x1dc>
    1dc4:	8fbf001c 	lw	ra,28(sp)
    1dc8:	10000041 	b	1ed0 <func_80B359A8+0x1d8>
    1dcc:	a60a02e2 	sh	t2,738(s0)
    1dd0:	0c000000 	jal	0 <func_80B33CB0>
    1dd4:	a7a60022 	sh	a2,34(sp)
    1dd8:	3c010000 	lui	at,0x0
    1ddc:	c42a0000 	lwc1	$f10,0(at)
    1de0:	3c0142f0 	lui	at,0x42f0
    1de4:	87a60022 	lh	a2,34(sp)
    1de8:	4600503c 	c.lt.s	$f10,$f0
    1dec:	00000000 	nop
    1df0:	45010008 	bc1t	1e14 <func_80B359A8+0x11c>
    1df4:	00000000 	nop
    1df8:	c6100090 	lwc1	$f16,144(s0)
    1dfc:	44819000 	mtc1	at,$f18
    1e00:	00000000 	nop
    1e04:	4610903e 	c.le.s	$f18,$f16
    1e08:	00000000 	nop
    1e0c:	4502000f 	bc1fl	1e4c <func_80B359A8+0x154>
    1e10:	860d008a 	lh	t5,138(s0)
    1e14:	0c000000 	jal	0 <func_80B33CB0>
    1e18:	02002025 	move	a0,s0
    1e1c:	0c000000 	jal	0 <func_80B33CB0>
    1e20:	00000000 	nop
    1e24:	3c0140a0 	lui	at,0x40a0
    1e28:	44811000 	mtc1	at,$f2
    1e2c:	00000000 	nop
    1e30:	46020102 	mul.s	$f4,$f0,$f2
    1e34:	46022180 	add.s	$f6,$f4,$f2
    1e38:	4600320d 	trunc.w.s	$f8,$f6
    1e3c:	440c4000 	mfc1	t4,$f8
    1e40:	10000023 	b	1ed0 <func_80B359A8+0x1d8>
    1e44:	ae0c02e8 	sw	t4,744(s0)
    1e48:	860d008a 	lh	t5,138(s0)
    1e4c:	a60d0032 	sh	t5,50(s0)
    1e50:	0c000000 	jal	0 <func_80B33CB0>
    1e54:	a7a60022 	sh	a2,34(sp)
    1e58:	3c010000 	lui	at,0x0
    1e5c:	c42a0000 	lwc1	$f10,0(at)
    1e60:	87a60022 	lh	a2,34(sp)
    1e64:	02002025 	move	a0,s0
    1e68:	4600503c 	c.lt.s	$f10,$f0
    1e6c:	28c12711 	slti	at,a2,10001
    1e70:	45000005 	bc1f	1e88 <func_80B359A8+0x190>
    1e74:	00000000 	nop
    1e78:	0c000000 	jal	0 <func_80B33CB0>
    1e7c:	8fa5002c 	lw	a1,44(sp)
    1e80:	10000014 	b	1ed4 <func_80B359A8+0x1dc>
    1e84:	8fbf001c 	lw	ra,28(sp)
    1e88:	1020000f 	beqz	at,1ec8 <func_80B359A8+0x1d0>
    1e8c:	87ae0020 	lh	t6,32(sp)
    1e90:	29c13e81 	slti	at,t6,16001
    1e94:	14200007 	bnez	at,1eb4 <func_80B359A8+0x1bc>
    1e98:	8fa4002c 	lw	a0,44(sp)
    1e9c:	860f008a 	lh	t7,138(s0)
    1ea0:	02002025 	move	a0,s0
    1ea4:	0c000000 	jal	0 <func_80B33CB0>
    1ea8:	a60f0032 	sh	t7,50(s0)
    1eac:	10000009 	b	1ed4 <func_80B359A8+0x1dc>
    1eb0:	8fbf001c 	lw	ra,28(sp)
    1eb4:	02002825 	move	a1,s0
    1eb8:	0c000000 	jal	0 <func_80B33CB0>
    1ebc:	24060001 	li	a2,1
    1ec0:	10000004 	b	1ed4 <func_80B359A8+0x1dc>
    1ec4:	8fbf001c 	lw	ra,28(sp)
    1ec8:	0c000000 	jal	0 <func_80B33CB0>
    1ecc:	02002025 	move	a0,s0
    1ed0:	8fbf001c 	lw	ra,28(sp)
    1ed4:	8fb00018 	lw	s0,24(sp)
    1ed8:	27bd0028 	addiu	sp,sp,40
    1edc:	03e00008 	jr	ra
    1ee0:	00000000 	nop

00001ee4 <func_80B35B94>:
    1ee4:	27bdffe8 	addiu	sp,sp,-24
    1ee8:	afbf0014 	sw	ra,20(sp)
    1eec:	00803825 	move	a3,a0
    1ef0:	3c050600 	lui	a1,0x600
    1ef4:	24a54ad0 	addiu	a1,a1,19152
    1ef8:	afa70018 	sw	a3,24(sp)
    1efc:	24840188 	addiu	a0,a0,392
    1f00:	0c000000 	jal	0 <func_80B33CB0>
    1f04:	3c06c040 	lui	a2,0xc040
    1f08:	8fa40018 	lw	a0,24(sp)
    1f0c:	3c01c0c0 	lui	at,0xc0c0
    1f10:	44812000 	mtc1	at,$f4
    1f14:	8482008a 	lh	v0,138(a0)
    1f18:	240e0001 	li	t6,1
    1f1c:	240f0005 	li	t7,5
    1f20:	2405386c 	li	a1,14444
    1f24:	ac8002e8 	sw	zero,744(a0)
    1f28:	a48e0300 	sh	t6,768(a0)
    1f2c:	ac8f02d4 	sw	t7,724(a0)
    1f30:	e4840068 	swc1	$f4,104(a0)
    1f34:	a4820032 	sh	v0,50(a0)
    1f38:	0c000000 	jal	0 <func_80B33CB0>
    1f3c:	a48200b6 	sh	v0,182(a0)
    1f40:	3c050000 	lui	a1,0x0
    1f44:	8fa40018 	lw	a0,24(sp)
    1f48:	0c000000 	jal	0 <func_80B33CB0>
    1f4c:	24a50000 	addiu	a1,a1,0
    1f50:	8fbf0014 	lw	ra,20(sp)
    1f54:	27bd0018 	addiu	sp,sp,24
    1f58:	03e00008 	jr	ra
    1f5c:	00000000 	nop

00001f60 <func_80B35C10>:
    1f60:	27bdffe0 	addiu	sp,sp,-32
    1f64:	afb00018 	sw	s0,24(sp)
    1f68:	00808025 	move	s0,a0
    1f6c:	afbf001c 	sw	ra,28(sp)
    1f70:	afa50024 	sw	a1,36(sp)
    1f74:	0c000000 	jal	0 <func_80B33CB0>
    1f78:	24840188 	addiu	a0,a0,392
    1f7c:	1040002d 	beqz	v0,2034 <func_80B35C10+0xd4>
    1f80:	8fa40024 	lw	a0,36(sp)
    1f84:	0c000000 	jal	0 <func_80B33CB0>
    1f88:	02002825 	move	a1,s0
    1f8c:	1440001b 	bnez	v0,1ffc <func_80B35C10+0x9c>
    1f90:	3c01432a 	lui	at,0x432a
    1f94:	c6000090 	lwc1	$f0,144(s0)
    1f98:	44812000 	mtc1	at,$f4
    1f9c:	3c01430c 	lui	at,0x430c
    1fa0:	4604003c 	c.lt.s	$f0,$f4
    1fa4:	00000000 	nop
    1fa8:	45020015 	bc1fl	2000 <func_80B35C10+0xa0>
    1fac:	8fae0024 	lw	t6,36(sp)
    1fb0:	44813000 	mtc1	at,$f6
    1fb4:	00000000 	nop
    1fb8:	4600303c 	c.lt.s	$f6,$f0
    1fbc:	00000000 	nop
    1fc0:	4502000f 	bc1fl	2000 <func_80B35C10+0xa0>
    1fc4:	8fae0024 	lw	t6,36(sp)
    1fc8:	0c000000 	jal	0 <func_80B33CB0>
    1fcc:	00000000 	nop
    1fd0:	3c010000 	lui	at,0x0
    1fd4:	c4280000 	lwc1	$f8,0(at)
    1fd8:	02002025 	move	a0,s0
    1fdc:	4608003c 	c.lt.s	$f0,$f8
    1fe0:	00000000 	nop
    1fe4:	45020006 	bc1fl	2000 <func_80B35C10+0xa0>
    1fe8:	8fae0024 	lw	t6,36(sp)
    1fec:	0c000000 	jal	0 <func_80B33CB0>
    1ff0:	8fa50024 	lw	a1,36(sp)
    1ff4:	10000010 	b	2038 <func_80B35C10+0xd8>
    1ff8:	8fb90024 	lw	t9,36(sp)
    1ffc:	8fae0024 	lw	t6,36(sp)
    2000:	3c0f0001 	lui	t7,0x1
    2004:	02002025 	move	a0,s0
    2008:	01ee7821 	addu	t7,t7,t6
    200c:	8def1de4 	lw	t7,7652(t7)
    2010:	31f80001 	andi	t8,t7,0x1
    2014:	13000005 	beqz	t8,202c <func_80B35C10+0xcc>
    2018:	00000000 	nop
    201c:	0c000000 	jal	0 <func_80B33CB0>
    2020:	01c02825 	move	a1,t6
    2024:	10000004 	b	2038 <func_80B35C10+0xd8>
    2028:	8fb90024 	lw	t9,36(sp)
    202c:	0c000000 	jal	0 <func_80B33CB0>
    2030:	02002025 	move	a0,s0
    2034:	8fb90024 	lw	t9,36(sp)
    2038:	02002025 	move	a0,s0
    203c:	8f28009c 	lw	t0,156(t9)
    2040:	3109005f 	andi	t1,t0,0x5f
    2044:	55200004 	bnezl	t1,2058 <func_80B35C10+0xf8>
    2048:	8fbf001c 	lw	ra,28(sp)
    204c:	0c000000 	jal	0 <func_80B33CB0>
    2050:	2405383e 	li	a1,14398
    2054:	8fbf001c 	lw	ra,28(sp)
    2058:	8fb00018 	lw	s0,24(sp)
    205c:	27bd0020 	addiu	sp,sp,32
    2060:	03e00008 	jr	ra
    2064:	00000000 	nop

00002068 <func_80B35D18>:
    2068:	27bdffe8 	addiu	sp,sp,-24
    206c:	afbf0014 	sw	ra,20(sp)
    2070:	948e0088 	lhu	t6,136(a0)
    2074:	00803825 	move	a3,a0
    2078:	2405389e 	li	a1,14494
    207c:	31cf0001 	andi	t7,t6,0x1
    2080:	51e00005 	beqzl	t7,2098 <func_80B35D18+0x30>
    2084:	00e02025 	move	a0,a3
    2088:	44802000 	mtc1	zero,$f4
    208c:	00000000 	nop
    2090:	e4840068 	swc1	$f4,104(a0)
    2094:	00e02025 	move	a0,a3
    2098:	0c000000 	jal	0 <func_80B33CB0>
    209c:	afa70018 	sw	a3,24(sp)
    20a0:	8fa70018 	lw	a3,24(sp)
    20a4:	3c050601 	lui	a1,0x601
    20a8:	24a59b20 	addiu	a1,a1,-25824
    20ac:	24060000 	li	a2,0
    20b0:	0c000000 	jal	0 <func_80B33CB0>
    20b4:	24e40188 	addiu	a0,a3,392
    20b8:	8fa40018 	lw	a0,24(sp)
    20bc:	2418000f 	li	t8,15
    20c0:	3c050000 	lui	a1,0x0
    20c4:	24a50000 	addiu	a1,a1,0
    20c8:	0c000000 	jal	0 <func_80B33CB0>
    20cc:	ac9802d4 	sw	t8,724(a0)
    20d0:	8fbf0014 	lw	ra,20(sp)
    20d4:	27bd0018 	addiu	sp,sp,24
    20d8:	03e00008 	jr	ra
    20dc:	00000000 	nop

000020e0 <func_80B35D90>:
    20e0:	27bdffe8 	addiu	sp,sp,-24
    20e4:	afbf0014 	sw	ra,20(sp)
    20e8:	afa5001c 	sw	a1,28(sp)
    20ec:	94820088 	lhu	v0,136(a0)
    20f0:	00803825 	move	a3,a0
    20f4:	304e0002 	andi	t6,v0,0x2
    20f8:	51c00005 	beqzl	t6,2110 <func_80B35D90+0x30>
    20fc:	304f0001 	andi	t7,v0,0x1
    2100:	44802000 	mtc1	zero,$f4
    2104:	94820088 	lhu	v0,136(a0)
    2108:	e4840068 	swc1	$f4,104(a0)
    210c:	304f0001 	andi	t7,v0,0x1
    2110:	51e0000d 	beqzl	t7,2148 <func_80B35D90+0x68>
    2114:	90f80114 	lbu	t8,276(a3)
    2118:	c4e00068 	lwc1	$f0,104(a3)
    211c:	44803000 	mtc1	zero,$f6
    2120:	3c010000 	lui	at,0x0
    2124:	4606003c 	c.lt.s	$f0,$f6
    2128:	00000000 	nop
    212c:	45020005 	bc1fl	2144 <func_80B35D90+0x64>
    2130:	a4e00300 	sh	zero,768(a3)
    2134:	c4280000 	lwc1	$f8,0(at)
    2138:	46080280 	add.s	$f10,$f0,$f8
    213c:	e4ea0068 	swc1	$f10,104(a3)
    2140:	a4e00300 	sh	zero,768(a3)
    2144:	90f80114 	lbu	t8,276(a3)
    2148:	57000011 	bnezl	t8,2190 <func_80B35D90+0xb0>
    214c:	8fbf0014 	lw	ra,20(sp)
    2150:	94f90088 	lhu	t9,136(a3)
    2154:	33280001 	andi	t0,t9,0x1
    2158:	5100000d 	beqzl	t0,2190 <func_80B35D90+0xb0>
    215c:	8fbf0014 	lw	ra,20(sp)
    2160:	90e900af 	lbu	t1,175(a3)
    2164:	8fa4001c 	lw	a0,28(sp)
    2168:	00e02825 	move	a1,a3
    216c:	15200005 	bnez	t1,2184 <func_80B35D90+0xa4>
    2170:	00000000 	nop
    2174:	0c000000 	jal	0 <func_80B33CB0>
    2178:	00e02025 	move	a0,a3
    217c:	10000004 	b	2190 <func_80B35D90+0xb0>
    2180:	8fbf0014 	lw	ra,20(sp)
    2184:	0c000000 	jal	0 <func_80B33CB0>
    2188:	24060001 	li	a2,1
    218c:	8fbf0014 	lw	ra,20(sp)
    2190:	27bd0018 	addiu	sp,sp,24
    2194:	03e00008 	jr	ra
    2198:	00000000 	nop

0000219c <func_80B35E4C>:
    219c:	27bdffe8 	addiu	sp,sp,-24
    21a0:	afbf0014 	sw	ra,20(sp)
    21a4:	00803825 	move	a3,a0
    21a8:	3c050601 	lui	a1,0x601
    21ac:	24a59b20 	addiu	a1,a1,-25824
    21b0:	afa70018 	sw	a3,24(sp)
    21b4:	24840188 	addiu	a0,a0,392
    21b8:	0c000000 	jal	0 <func_80B33CB0>
    21bc:	3c06c080 	lui	a2,0xc080
    21c0:	8fa70018 	lw	a3,24(sp)
    21c4:	3c01c080 	lui	at,0xc080
    21c8:	24180001 	li	t8,1
    21cc:	94ee0088 	lhu	t6,136(a3)
    21d0:	00e02025 	move	a0,a3
    21d4:	31cf0001 	andi	t7,t6,0x1
    21d8:	51e00006 	beqzl	t7,21f4 <func_80B35E4C+0x58>
    21dc:	a4f80300 	sh	t8,768(a3)
    21e0:	44812000 	mtc1	at,$f4
    21e4:	a4e00300 	sh	zero,768(a3)
    21e8:	10000002 	b	21f4 <func_80B35E4C+0x58>
    21ec:	e4e40068 	swc1	$f4,104(a3)
    21f0:	a4f80300 	sh	t8,768(a3)
    21f4:	84f9008a 	lh	t9,138(a3)
    21f8:	a4e002e2 	sh	zero,738(a3)
    21fc:	24053843 	li	a1,14403
    2200:	a4f90032 	sh	t9,50(a3)
    2204:	0c000000 	jal	0 <func_80B33CB0>
    2208:	afa70018 	sw	a3,24(sp)
    220c:	8fa40018 	lw	a0,24(sp)
    2210:	24080003 	li	t0,3
    2214:	3c050000 	lui	a1,0x0
    2218:	24a50000 	addiu	a1,a1,0
    221c:	0c000000 	jal	0 <func_80B33CB0>
    2220:	ac8802d4 	sw	t0,724(a0)
    2224:	8fbf0014 	lw	ra,20(sp)
    2228:	27bd0018 	addiu	sp,sp,24
    222c:	03e00008 	jr	ra
    2230:	00000000 	nop

00002234 <func_80B35EE4>:
    2234:	27bdffd8 	addiu	sp,sp,-40
    2238:	afbf0024 	sw	ra,36(sp)
    223c:	afb00020 	sw	s0,32(sp)
    2240:	afa5002c 	sw	a1,44(sp)
    2244:	94820088 	lhu	v0,136(a0)
    2248:	00808025 	move	s0,a0
    224c:	24060001 	li	a2,1
    2250:	304e0002 	andi	t6,v0,0x2
    2254:	11c00004 	beqz	t6,2268 <func_80B35EE4+0x34>
    2258:	24071194 	li	a3,4500
    225c:	44802000 	mtc1	zero,$f4
    2260:	94820088 	lhu	v0,136(a0)
    2264:	e4840068 	swc1	$f4,104(a0)
    2268:	304f0001 	andi	t7,v0,0x1
    226c:	11e0000c 	beqz	t7,22a0 <func_80B35EE4+0x6c>
    2270:	260400b6 	addiu	a0,s0,182
    2274:	c6000068 	lwc1	$f0,104(s0)
    2278:	44803000 	mtc1	zero,$f6
    227c:	3c010000 	lui	at,0x0
    2280:	4606003c 	c.lt.s	$f0,$f6
    2284:	00000000 	nop
    2288:	45020005 	bc1fl	22a0 <func_80B35EE4+0x6c>
    228c:	a6000300 	sh	zero,768(s0)
    2290:	c4280000 	lwc1	$f8,0(at)
    2294:	46080280 	add.s	$f10,$f0,$f8
    2298:	e60a0068 	swc1	$f10,104(s0)
    229c:	a6000300 	sh	zero,768(s0)
    22a0:	8605008a 	lh	a1,138(s0)
    22a4:	0c000000 	jal	0 <func_80B33CB0>
    22a8:	afa00010 	sw	zero,16(sp)
    22ac:	8fa4002c 	lw	a0,44(sp)
    22b0:	02002825 	move	a1,s0
    22b4:	0c000000 	jal	0 <func_80B33CB0>
    22b8:	00003025 	move	a2,zero
    22bc:	5440005a 	bnezl	v0,2428 <func_80B35EE4+0x1f4>
    22c0:	8fbf0024 	lw	ra,36(sp)
    22c4:	0c000000 	jal	0 <func_80B33CB0>
    22c8:	26040188 	addiu	a0,s0,392
    22cc:	50400056 	beqzl	v0,2428 <func_80B35EE4+0x1f4>
    22d0:	8fbf0024 	lw	ra,36(sp)
    22d4:	96020088 	lhu	v0,136(s0)
    22d8:	30580001 	andi	t8,v0,0x1
    22dc:	13000051 	beqz	t8,2424 <func_80B35EE4+0x1f0>
    22e0:	30490008 	andi	t1,v0,0x8
    22e4:	8619007e 	lh	t9,126(s0)
    22e8:	860800b6 	lh	t0,182(s0)
    22ec:	8fa4002c 	lw	a0,44(sp)
    22f0:	03281823 	subu	v1,t9,t0
    22f4:	00031c00 	sll	v1,v1,0x10
    22f8:	00031c03 	sra	v1,v1,0x10
    22fc:	04610004 	bgez	v1,2310 <func_80B35EE4+0xdc>
    2300:	00000000 	nop
    2304:	00031823 	negu	v1,v1
    2308:	00031c00 	sll	v1,v1,0x10
    230c:	00031c03 	sra	v1,v1,0x10
    2310:	11200012 	beqz	t1,235c <func_80B35EE4+0x128>
    2314:	00000000 	nop
    2318:	04600003 	bltz	v1,2328 <func_80B35EE4+0xf4>
    231c:	00031023 	negu	v0,v1
    2320:	10000001 	b	2328 <func_80B35EE4+0xf4>
    2324:	00601025 	move	v0,v1
    2328:	28412ee0 	slti	at,v0,12000
    232c:	1020000b 	beqz	at,235c <func_80B35EE4+0x128>
    2330:	3c0142f0 	lui	at,0x42f0
    2334:	44819000 	mtc1	at,$f18
    2338:	c6100090 	lwc1	$f16,144(s0)
    233c:	4612803c 	c.lt.s	$f16,$f18
    2340:	00000000 	nop
    2344:	45000005 	bc1f	235c <func_80B35EE4+0x128>
    2348:	00000000 	nop
    234c:	0c000000 	jal	0 <func_80B33CB0>
    2350:	02002025 	move	a0,s0
    2354:	10000034 	b	2428 <func_80B35EE4+0x1f4>
    2358:	8fbf0024 	lw	ra,36(sp)
    235c:	0c000000 	jal	0 <func_80B33CB0>
    2360:	02002825 	move	a1,s0
    2364:	1440002f 	bnez	v0,2424 <func_80B35EE4+0x1f0>
    2368:	3c0142a0 	lui	at,0x42a0
    236c:	44812000 	mtc1	at,$f4
    2370:	c6060090 	lwc1	$f6,144(s0)
    2374:	8fa4002c 	lw	a0,44(sp)
    2378:	4604303e 	c.le.s	$f6,$f4
    237c:	00000000 	nop
    2380:	4500000f 	bc1f	23c0 <func_80B35EE4+0x18c>
    2384:	00000000 	nop
    2388:	0c000000 	jal	0 <func_80B33CB0>
    238c:	02002825 	move	a1,s0
    2390:	1440000b 	bnez	v0,23c0 <func_80B35EE4+0x18c>
    2394:	8faa002c 	lw	t2,44(sp)
    2398:	3c0b0001 	lui	t3,0x1
    239c:	016a5821 	addu	t3,t3,t2
    23a0:	8d6b1de4 	lw	t3,7652(t3)
    23a4:	316c0007 	andi	t4,t3,0x7
    23a8:	11800005 	beqz	t4,23c0 <func_80B35EE4+0x18c>
    23ac:	00000000 	nop
    23b0:	0c000000 	jal	0 <func_80B33CB0>
    23b4:	02002025 	move	a0,s0
    23b8:	1000001b 	b	2428 <func_80B35EE4+0x1f4>
    23bc:	8fbf0024 	lw	ra,36(sp)
    23c0:	0c000000 	jal	0 <func_80B33CB0>
    23c4:	00000000 	nop
    23c8:	3c013f00 	lui	at,0x3f00
    23cc:	44814000 	mtc1	at,$f8
    23d0:	00000000 	nop
    23d4:	4600403c 	c.lt.s	$f8,$f0
    23d8:	00000000 	nop
    23dc:	4500000f 	bc1f	241c <func_80B35EE4+0x1e8>
    23e0:	00000000 	nop
    23e4:	0c000000 	jal	0 <func_80B33CB0>
    23e8:	02002025 	move	a0,s0
    23ec:	0c000000 	jal	0 <func_80B33CB0>
    23f0:	00000000 	nop
    23f4:	3c0140a0 	lui	at,0x40a0
    23f8:	44811000 	mtc1	at,$f2
    23fc:	240f001e 	li	t7,30
    2400:	a60f02e2 	sh	t7,738(s0)
    2404:	46020282 	mul.s	$f10,$f0,$f2
    2408:	46025400 	add.s	$f16,$f10,$f2
    240c:	4600848d 	trunc.w.s	$f18,$f16
    2410:	440e9000 	mfc1	t6,$f18
    2414:	10000003 	b	2424 <func_80B35EE4+0x1f0>
    2418:	ae0e02e8 	sw	t6,744(s0)
    241c:	0c000000 	jal	0 <func_80B33CB0>
    2420:	02002025 	move	a0,s0
    2424:	8fbf0024 	lw	ra,36(sp)
    2428:	8fb00020 	lw	s0,32(sp)
    242c:	27bd0028 	addiu	sp,sp,40
    2430:	03e00008 	jr	ra
    2434:	00000000 	nop

00002438 <func_80B360E8>:
    2438:	27bdffd0 	addiu	sp,sp,-48
    243c:	afb00028 	sw	s0,40(sp)
    2440:	00808025 	move	s0,a0
    2444:	afbf002c 	sw	ra,44(sp)
    2448:	3c040600 	lui	a0,0x600
    244c:	0c000000 	jal	0 <func_80B33CB0>
    2450:	24844ad0 	addiu	a0,a0,19152
    2454:	44822000 	mtc1	v0,$f4
    2458:	3c01c040 	lui	at,0xc040
    245c:	44814000 	mtc1	at,$f8
    2460:	46802120 	cvt.s.w	$f4,$f4
    2464:	44803000 	mtc1	zero,$f6
    2468:	3c050600 	lui	a1,0x600
    246c:	240e0002 	li	t6,2
    2470:	afae0014 	sw	t6,20(sp)
    2474:	24a54ad0 	addiu	a1,a1,19152
    2478:	44072000 	mfc1	a3,$f4
    247c:	26040188 	addiu	a0,s0,392
    2480:	3c06bf80 	lui	a2,0xbf80
    2484:	e7a80018 	swc1	$f8,24(sp)
    2488:	0c000000 	jal	0 <func_80B33CB0>
    248c:	e7a60010 	swc1	$f6,16(sp)
    2490:	3c0140d0 	lui	at,0x40d0
    2494:	44815000 	mtc1	at,$f10
    2498:	3c014170 	lui	at,0x4170
    249c:	44818000 	mtc1	at,$f16
    24a0:	240f0004 	li	t7,4
    24a4:	ae0002e8 	sw	zero,744(s0)
    24a8:	a6000300 	sh	zero,768(s0)
    24ac:	ae0f02d4 	sw	t7,724(s0)
    24b0:	02002025 	move	a0,s0
    24b4:	2405386c 	li	a1,14444
    24b8:	e60a0068 	swc1	$f10,104(s0)
    24bc:	0c000000 	jal	0 <func_80B33CB0>
    24c0:	e6100060 	swc1	$f16,96(s0)
    24c4:	861800b6 	lh	t8,182(s0)
    24c8:	3c050000 	lui	a1,0x0
    24cc:	24a50000 	addiu	a1,a1,0
    24d0:	02002025 	move	a0,s0
    24d4:	0c000000 	jal	0 <func_80B33CB0>
    24d8:	a6180032 	sh	t8,50(s0)
    24dc:	8fbf002c 	lw	ra,44(sp)
    24e0:	8fb00028 	lw	s0,40(sp)
    24e4:	27bd0030 	addiu	sp,sp,48
    24e8:	03e00008 	jr	ra
    24ec:	00000000 	nop

000024f0 <func_80B361A0>:
    24f0:	27bdffd8 	addiu	sp,sp,-40
    24f4:	afb00020 	sw	s0,32(sp)
    24f8:	00808025 	move	s0,a0
    24fc:	afbf0024 	sw	ra,36(sp)
    2500:	afa5002c 	sw	a1,44(sp)
    2504:	8605008a 	lh	a1,138(s0)
    2508:	240e0001 	li	t6,1
    250c:	afae0010 	sw	t6,16(sp)
    2510:	248400b6 	addiu	a0,a0,182
    2514:	24060001 	li	a2,1
    2518:	0c000000 	jal	0 <func_80B33CB0>
    251c:	24070fa0 	li	a3,4000
    2520:	3c0140a0 	lui	at,0x40a0
    2524:	44813000 	mtc1	at,$f6
    2528:	c6040060 	lwc1	$f4,96(s0)
    252c:	8fa4002c 	lw	a0,44(sp)
    2530:	4604303e 	c.le.s	$f6,$f4
    2534:	00000000 	nop
    2538:	45000006 	bc1f	2554 <func_80B361A0+0x64>
    253c:	00000000 	nop
    2540:	0c000000 	jal	0 <func_80B33CB0>
    2544:	260504c8 	addiu	a1,s0,1224
    2548:	8fa4002c 	lw	a0,44(sp)
    254c:	0c000000 	jal	0 <func_80B33CB0>
    2550:	260504bc 	addiu	a1,s0,1212
    2554:	0c000000 	jal	0 <func_80B33CB0>
    2558:	26040188 	addiu	a0,s0,392
    255c:	5040001a 	beqzl	v0,25c8 <func_80B361A0+0xd8>
    2560:	8fbf0024 	lw	ra,36(sp)
    2564:	960f0088 	lhu	t7,136(s0)
    2568:	02002825 	move	a1,s0
    256c:	31f80003 	andi	t8,t7,0x3
    2570:	53000015 	beqzl	t8,25c8 <func_80B361A0+0xd8>
    2574:	8fbf0024 	lw	ra,36(sp)
    2578:	44800000 	mtc1	zero,$f0
    257c:	8602008a 	lh	v0,138(s0)
    2580:	c6080080 	lwc1	$f8,128(s0)
    2584:	a60000b4 	sh	zero,180(s0)
    2588:	a60200b6 	sh	v0,182(s0)
    258c:	a6020032 	sh	v0,50(s0)
    2590:	e6000060 	swc1	$f0,96(s0)
    2594:	e6000068 	swc1	$f0,104(s0)
    2598:	e6080028 	swc1	$f8,40(s0)
    259c:	0c000000 	jal	0 <func_80B33CB0>
    25a0:	8fa4002c 	lw	a0,44(sp)
    25a4:	14400005 	bnez	v0,25bc <func_80B361A0+0xcc>
    25a8:	00000000 	nop
    25ac:	0c000000 	jal	0 <func_80B33CB0>
    25b0:	02002025 	move	a0,s0
    25b4:	10000004 	b	25c8 <func_80B361A0+0xd8>
    25b8:	8fbf0024 	lw	ra,36(sp)
    25bc:	0c000000 	jal	0 <func_80B33CB0>
    25c0:	02002025 	move	a0,s0
    25c4:	8fbf0024 	lw	ra,36(sp)
    25c8:	8fb00020 	lw	s0,32(sp)
    25cc:	27bd0028 	addiu	sp,sp,40
    25d0:	03e00008 	jr	ra
    25d4:	00000000 	nop

000025d8 <func_80B36288>:
    25d8:	27bdffd0 	addiu	sp,sp,-48
    25dc:	afb00028 	sw	s0,40(sp)
    25e0:	00808025 	move	s0,a0
    25e4:	afbf002c 	sw	ra,44(sp)
    25e8:	3c040600 	lui	a0,0x600
    25ec:	0c000000 	jal	0 <func_80B33CB0>
    25f0:	24844ca4 	addiu	a0,a0,19620
    25f4:	860e02f8 	lh	t6,760(s0)
    25f8:	44822000 	mtc1	v0,$f4
    25fc:	44800000 	mtc1	zero,$f0
    2600:	11c00003 	beqz	t6,2610 <func_80B36288+0x38>
    2604:	468020a0 	cvt.s.w	$f2,$f4
    2608:	240fffff 	li	t7,-1
    260c:	a60f02f8 	sh	t7,760(s0)
    2610:	24180007 	li	t8,7
    2614:	2419000a 	li	t9,10
    2618:	3c01c080 	lui	at,0xc080
    261c:	44813000 	mtc1	at,$f6
    2620:	e6000068 	swc1	$f0,104(s0)
    2624:	ae1802d4 	sw	t8,724(s0)
    2628:	ae1902e8 	sw	t9,744(s0)
    262c:	3c050600 	lui	a1,0x600
    2630:	44060000 	mfc1	a2,$f0
    2634:	44070000 	mfc1	a3,$f0
    2638:	24080003 	li	t0,3
    263c:	afa80014 	sw	t0,20(sp)
    2640:	24a54ca4 	addiu	a1,a1,19620
    2644:	e7a20010 	swc1	$f2,16(sp)
    2648:	26040188 	addiu	a0,s0,392
    264c:	0c000000 	jal	0 <func_80B33CB0>
    2650:	e7a60018 	swc1	$f6,24(sp)
    2654:	3c050000 	lui	a1,0x0
    2658:	24a50000 	addiu	a1,a1,0
    265c:	0c000000 	jal	0 <func_80B33CB0>
    2660:	02002025 	move	a0,s0
    2664:	8fbf002c 	lw	ra,44(sp)
    2668:	8fb00028 	lw	s0,40(sp)
    266c:	27bd0030 	addiu	sp,sp,48
    2670:	03e00008 	jr	ra
    2674:	00000000 	nop

00002678 <func_80B36328>:
    2678:	27bdffc8 	addiu	sp,sp,-56
    267c:	afbf0024 	sw	ra,36(sp)
    2680:	afb00020 	sw	s0,32(sp)
    2684:	afa5003c 	sw	a1,60(sp)
    2688:	8c8202e8 	lw	v0,744(a0)
    268c:	00808025 	move	s0,a0
    2690:	8ca91c44 	lw	t1,7236(a1)
    2694:	10400004 	beqz	v0,26a8 <func_80B36328+0x30>
    2698:	3c013f80 	lui	at,0x3f80
    269c:	244fffff 	addiu	t7,v0,-1
    26a0:	10000004 	b	26b4 <func_80B36328+0x3c>
    26a4:	ac8f02e8 	sw	t7,744(a0)
    26a8:	44812000 	mtc1	at,$f4
    26ac:	00000000 	nop
    26b0:	e60401a4 	swc1	$f4,420(s0)
    26b4:	26040188 	addiu	a0,s0,392
    26b8:	0c000000 	jal	0 <func_80B33CB0>
    26bc:	afa90034 	sw	t1,52(sp)
    26c0:	10400066 	beqz	v0,285c <func_80B36328+0x1e4>
    26c4:	8fa90034 	lw	t1,52(sp)
    26c8:	860800b6 	lh	t0,182(s0)
    26cc:	8618008a 	lh	t8,138(s0)
    26d0:	03081023 	subu	v0,t8,t0
    26d4:	00021400 	sll	v0,v0,0x10
    26d8:	00021403 	sra	v0,v0,0x10
    26dc:	04400003 	bltz	v0,26ec <func_80B36328+0x74>
    26e0:	00021823 	negu	v1,v0
    26e4:	10000001 	b	26ec <func_80B36328+0x74>
    26e8:	00401825 	move	v1,v0
    26ec:	28614001 	slti	at,v1,16385
    26f0:	10200056 	beqz	at,284c <func_80B36328+0x1d4>
    26f4:	3c014270 	lui	at,0x4270
    26f8:	44814000 	mtc1	at,$f8
    26fc:	c6060090 	lwc1	$f6,144(s0)
    2700:	3c014248 	lui	at,0x4248
    2704:	4608303c 	c.lt.s	$f6,$f8
    2708:	00000000 	nop
    270c:	4500004f 	bc1f	284c <func_80B36328+0x1d4>
    2710:	00000000 	nop
    2714:	c6000094 	lwc1	$f0,148(s0)
    2718:	44805000 	mtc1	zero,$f10
    271c:	44818000 	mtc1	at,$f16
    2720:	8fa4003c 	lw	a0,60(sp)
    2724:	4600503e 	c.le.s	$f10,$f0
    2728:	02002825 	move	a1,s0
    272c:	3c0642c8 	lui	a2,0x42c8
    2730:	24072710 	li	a3,10000
    2734:	45000003 	bc1f	2744 <func_80B36328+0xcc>
    2738:	24194000 	li	t9,16384
    273c:	10000002 	b	2748 <func_80B36328+0xd0>
    2740:	46000086 	mov.s	$f2,$f0
    2744:	46000087 	neg.s	$f2,$f0
    2748:	4610103c 	c.lt.s	$f2,$f16
    274c:	00000000 	nop
    2750:	4500003e 	bc1f	284c <func_80B36328+0x1d4>
    2754:	00000000 	nop
    2758:	afb90010 	sw	t9,16(sp)
    275c:	afa80014 	sw	t0,20(sp)
    2760:	0c000000 	jal	0 <func_80B33CB0>
    2764:	afa90034 	sw	t1,52(sp)
    2768:	10400017 	beqz	v0,27c8 <func_80B36328+0x150>
    276c:	8fa90034 	lw	t1,52(sp)
    2770:	812a0842 	lb	t2,2114(t1)
    2774:	24010011 	li	at,17
    2778:	8fab003c 	lw	t3,60(sp)
    277c:	15410005 	bne	t2,at,2794 <func_80B36328+0x11c>
    2780:	3c0c0001 	lui	t4,0x1
    2784:	0c000000 	jal	0 <func_80B33CB0>
    2788:	02002025 	move	a0,s0
    278c:	10000056 	b	28e8 <func_80B36328+0x270>
    2790:	8fbf0024 	lw	ra,36(sp)
    2794:	018b6021 	addu	t4,t4,t3
    2798:	8d8c1de4 	lw	t4,7652(t4)
    279c:	318d0001 	andi	t5,t4,0x1
    27a0:	11a00005 	beqz	t5,27b8 <func_80B36328+0x140>
    27a4:	00000000 	nop
    27a8:	0c000000 	jal	0 <func_80B33CB0>
    27ac:	02002025 	move	a0,s0
    27b0:	1000004d 	b	28e8 <func_80B36328+0x270>
    27b4:	8fbf0024 	lw	ra,36(sp)
    27b8:	0c000000 	jal	0 <func_80B33CB0>
    27bc:	02002025 	move	a0,s0
    27c0:	10000049 	b	28e8 <func_80B36328+0x270>
    27c4:	8fbf0024 	lw	ra,36(sp)
    27c8:	852e00b6 	lh	t6,182(t1)
    27cc:	860f00b6 	lh	t7,182(s0)
    27d0:	8fa4003c 	lw	a0,60(sp)
    27d4:	02002825 	move	a1,s0
    27d8:	01cf3023 	subu	a2,t6,t7
    27dc:	00063400 	sll	a2,a2,0x10
    27e0:	00063403 	sra	a2,a2,0x10
    27e4:	0c000000 	jal	0 <func_80B33CB0>
    27e8:	a7a6002c 	sh	a2,44(sp)
    27ec:	14400013 	bnez	v0,283c <func_80B36328+0x1c4>
    27f0:	87a6002c 	lh	a2,44(sp)
    27f4:	8fb8003c 	lw	t8,60(sp)
    27f8:	3c190001 	lui	t9,0x1
    27fc:	0338c821 	addu	t9,t9,t8
    2800:	8f391de4 	lw	t9,7652(t9)
    2804:	332a0001 	andi	t2,t9,0x1
    2808:	15400008 	bnez	t2,282c <func_80B36328+0x1b4>
    280c:	00000000 	nop
    2810:	04c00003 	bltz	a2,2820 <func_80B36328+0x1a8>
    2814:	00061823 	negu	v1,a2
    2818:	10000001 	b	2820 <func_80B36328+0x1a8>
    281c:	00c01825 	move	v1,a2
    2820:	286138e0 	slti	at,v1,14560
    2824:	10200005 	beqz	at,283c <func_80B36328+0x1c4>
    2828:	00000000 	nop
    282c:	0c000000 	jal	0 <func_80B33CB0>
    2830:	02002025 	move	a0,s0
    2834:	1000002c 	b	28e8 <func_80B36328+0x270>
    2838:	8fbf0024 	lw	ra,36(sp)
    283c:	0c000000 	jal	0 <func_80B33CB0>
    2840:	02002025 	move	a0,s0
    2844:	10000028 	b	28e8 <func_80B36328+0x270>
    2848:	8fbf0024 	lw	ra,36(sp)
    284c:	0c000000 	jal	0 <func_80B33CB0>
    2850:	02002025 	move	a0,s0
    2854:	10000024 	b	28e8 <func_80B36328+0x270>
    2858:	8fbf0024 	lw	ra,36(sp)
    285c:	8e0b02e8 	lw	t3,744(s0)
    2860:	8fa4003c 	lw	a0,60(sp)
    2864:	02002825 	move	a1,s0
    2868:	1560001e 	bnez	t3,28e4 <func_80B36328+0x26c>
    286c:	3c0642c8 	lui	a2,0x42c8
    2870:	240c4000 	li	t4,16384
    2874:	afac0010 	sw	t4,16(sp)
    2878:	860d00b6 	lh	t5,182(s0)
    287c:	afa90034 	sw	t1,52(sp)
    2880:	24072710 	li	a3,10000
    2884:	0c000000 	jal	0 <func_80B33CB0>
    2888:	afad0014 	sw	t5,20(sp)
    288c:	10400015 	beqz	v0,28e4 <func_80B36328+0x26c>
    2890:	8fa90034 	lw	t1,52(sp)
    2894:	812e0842 	lb	t6,2114(t1)
    2898:	24010011 	li	at,17
    289c:	8faf003c 	lw	t7,60(sp)
    28a0:	15c10005 	bne	t6,at,28b8 <func_80B36328+0x240>
    28a4:	3c180001 	lui	t8,0x1
    28a8:	0c000000 	jal	0 <func_80B33CB0>
    28ac:	02002025 	move	a0,s0
    28b0:	1000000d 	b	28e8 <func_80B36328+0x270>
    28b4:	8fbf0024 	lw	ra,36(sp)
    28b8:	030fc021 	addu	t8,t8,t7
    28bc:	8f181de4 	lw	t8,7652(t8)
    28c0:	33190001 	andi	t9,t8,0x1
    28c4:	13200005 	beqz	t9,28dc <func_80B36328+0x264>
    28c8:	00000000 	nop
    28cc:	0c000000 	jal	0 <func_80B33CB0>
    28d0:	02002025 	move	a0,s0
    28d4:	10000004 	b	28e8 <func_80B36328+0x270>
    28d8:	8fbf0024 	lw	ra,36(sp)
    28dc:	0c000000 	jal	0 <func_80B33CB0>
    28e0:	02002025 	move	a0,s0
    28e4:	8fbf0024 	lw	ra,36(sp)
    28e8:	8fb00020 	lw	s0,32(sp)
    28ec:	27bd0038 	addiu	sp,sp,56
    28f0:	03e00008 	jr	ra
    28f4:	00000000 	nop

000028f8 <func_80B365A8>:
    28f8:	27bdffc8 	addiu	sp,sp,-56
    28fc:	afb00028 	sw	s0,40(sp)
    2900:	00808025 	move	s0,a0
    2904:	afbf002c 	sw	ra,44(sp)
    2908:	3c040600 	lui	a0,0x600
    290c:	afa5003c 	sw	a1,60(sp)
    2910:	0c000000 	jal	0 <func_80B33CB0>
    2914:	248457a0 	addiu	a0,a0,22432
    2918:	44822000 	mtc1	v0,$f4
    291c:	3c01c080 	lui	at,0xc080
    2920:	44814000 	mtc1	at,$f8
    2924:	468021a0 	cvt.s.w	$f6,$f4
    2928:	3c050600 	lui	a1,0x600
    292c:	240e0001 	li	t6,1
    2930:	afae0014 	sw	t6,20(sp)
    2934:	24a557a0 	addiu	a1,a1,22432
    2938:	26040188 	addiu	a0,s0,392
    293c:	e7a60010 	swc1	$f6,16(sp)
    2940:	3c063f80 	lui	a2,0x3f80
    2944:	24070000 	li	a3,0
    2948:	0c000000 	jal	0 <func_80B33CB0>
    294c:	e7a80018 	swc1	$f8,24(sp)
    2950:	8faf003c 	lw	t7,60(sp)
    2954:	861902fe 	lh	t9,766(s0)
    2958:	8608008a 	lh	t0,138(s0)
    295c:	8de21c44 	lw	v0,7236(t7)
    2960:	845800b6 	lh	t8,182(v0)
    2964:	03191821 	addu	v1,t8,t9
    2968:	00031c00 	sll	v1,v1,0x10
    296c:	00031c03 	sra	v1,v1,0x10
    2970:	00682023 	subu	a0,v1,t0
    2974:	00042400 	sll	a0,a0,0x10
    2978:	00042403 	sra	a0,a0,0x10
    297c:	0c000000 	jal	0 <func_80B33CB0>
    2980:	a7a30036 	sh	v1,54(sp)
    2984:	44805000 	mtc1	zero,$f10
    2988:	87a30036 	lh	v1,54(sp)
    298c:	24093e80 	li	t1,16000
    2990:	4600503c 	c.lt.s	$f10,$f0
    2994:	00000000 	nop
    2998:	45020004 	bc1fl	29ac <func_80B365A8+0xb4>
    299c:	860a008a 	lh	t2,138(s0)
    29a0:	1000001b 	b	2a10 <func_80B365A8+0x118>
    29a4:	a60902fe 	sh	t1,766(s0)
    29a8:	860a008a 	lh	t2,138(s0)
    29ac:	006a2023 	subu	a0,v1,t2
    29b0:	00042400 	sll	a0,a0,0x10
    29b4:	0c000000 	jal	0 <func_80B33CB0>
    29b8:	00042403 	sra	a0,a0,0x10
    29bc:	44808000 	mtc1	zero,$f16
    29c0:	240bc180 	li	t3,-16000
    29c4:	4610003c 	c.lt.s	$f0,$f16
    29c8:	00000000 	nop
    29cc:	45000003 	bc1f	29dc <func_80B365A8+0xe4>
    29d0:	00000000 	nop
    29d4:	1000000e 	b	2a10 <func_80B365A8+0x118>
    29d8:	a60b02fe 	sh	t3,766(s0)
    29dc:	0c000000 	jal	0 <func_80B33CB0>
    29e0:	00000000 	nop
    29e4:	3c013f00 	lui	at,0x3f00
    29e8:	44819000 	mtc1	at,$f18
    29ec:	240c3e80 	li	t4,16000
    29f0:	240dc180 	li	t5,-16000
    29f4:	4600903c 	c.lt.s	$f18,$f0
    29f8:	00000000 	nop
    29fc:	45020004 	bc1fl	2a10 <func_80B365A8+0x118>
    2a00:	a60d02fe 	sh	t5,766(s0)
    2a04:	10000002 	b	2a10 <func_80B365A8+0x118>
    2a08:	a60c02fe 	sh	t4,766(s0)
    2a0c:	a60d02fe 	sh	t5,766(s0)
    2a10:	3c0140c0 	lui	at,0x40c0
    2a14:	44810000 	mtc1	at,$f0
    2a18:	3c010000 	lui	at,0x0
    2a1c:	860e00b6 	lh	t6,182(s0)
    2a20:	e6000068 	swc1	$f0,104(s0)
    2a24:	c4240000 	lwc1	$f4,0(at)
    2a28:	44804000 	mtc1	zero,$f8
    2a2c:	a60e0032 	sh	t6,50(s0)
    2a30:	46040182 	mul.s	$f6,$f0,$f4
    2a34:	e60802ec 	swc1	$f8,748(s0)
    2a38:	0c000000 	jal	0 <func_80B33CB0>
    2a3c:	e60601a4 	swc1	$f6,420(s0)
    2a40:	3c014120 	lui	at,0x4120
    2a44:	44815000 	mtc1	at,$f10
    2a48:	3c0140a0 	lui	at,0x40a0
    2a4c:	44819000 	mtc1	at,$f18
    2a50:	460a0402 	mul.s	$f16,$f0,$f10
    2a54:	2419000e 	li	t9,14
    2a58:	3c050000 	lui	a1,0x0
    2a5c:	ae1902d4 	sw	t9,724(s0)
    2a60:	24a50000 	addiu	a1,a1,0
    2a64:	02002025 	move	a0,s0
    2a68:	46128100 	add.s	$f4,$f16,$f18
    2a6c:	4600218d 	trunc.w.s	$f6,$f4
    2a70:	44183000 	mfc1	t8,$f6
    2a74:	0c000000 	jal	0 <func_80B33CB0>
    2a78:	ae1802e8 	sw	t8,744(s0)
    2a7c:	8fbf002c 	lw	ra,44(sp)
    2a80:	8fb00028 	lw	s0,40(sp)
    2a84:	27bd0038 	addiu	sp,sp,56
    2a88:	03e00008 	jr	ra
    2a8c:	00000000 	nop

00002a90 <func_80B36740>:
    2a90:	27bdff90 	addiu	sp,sp,-112
    2a94:	afbf0034 	sw	ra,52(sp)
    2a98:	afb00030 	sw	s0,48(sp)
    2a9c:	afa50074 	sw	a1,116(sp)
    2aa0:	8caf1c44 	lw	t7,7236(a1)
    2aa4:	44802000 	mtc1	zero,$f4
    2aa8:	00808025 	move	s0,a0
    2aac:	afaf0068 	sw	t7,104(sp)
    2ab0:	e7a40058 	swc1	$f4,88(sp)
    2ab4:	861902fe 	lh	t9,766(s0)
    2ab8:	8618008a 	lh	t8,138(s0)
    2abc:	24080001 	li	t0,1
    2ac0:	afa80010 	sw	t0,16(sp)
    2ac4:	03192821 	addu	a1,t8,t9
    2ac8:	00052c00 	sll	a1,a1,0x10
    2acc:	00052c03 	sra	a1,a1,0x10
    2ad0:	248400b6 	addiu	a0,a0,182
    2ad4:	24060001 	li	a2,1
    2ad8:	0c000000 	jal	0 <func_80B33CB0>
    2adc:	24070bb8 	li	a3,3000
    2ae0:	96030088 	lhu	v1,136(s0)
    2ae4:	30630008 	andi	v1,v1,0x8
    2ae8:	14600009 	bnez	v1,2b10 <func_80B36740+0x80>
    2aec:	02002025 	move	a0,s0
    2af0:	8fa50074 	lw	a1,116(sp)
    2af4:	8e060068 	lw	a2,104(s0)
    2af8:	0c000000 	jal	0 <func_80B33CB0>
    2afc:	860700b6 	lh	a3,182(s0)
    2b00:	54400018 	bnezl	v0,2b64 <func_80B36740+0xd4>
    2b04:	860f00b6 	lh	t7,182(s0)
    2b08:	96030088 	lhu	v1,136(s0)
    2b0c:	30630008 	andi	v1,v1,0x8
    2b10:	10600009 	beqz	v1,2b38 <func_80B36740+0xa8>
    2b14:	00001025 	move	v0,zero
    2b18:	8609007e 	lh	t1,126(s0)
    2b1c:	860a008a 	lh	t2,138(s0)
    2b20:	860c02fe 	lh	t4,766(s0)
    2b24:	012a5823 	subu	t3,t1,t2
    2b28:	016c1023 	subu	v0,t3,t4
    2b2c:	00021400 	sll	v0,v0,0x10
    2b30:	10000001 	b	2b38 <func_80B36740+0xa8>
    2b34:	00021403 	sra	v0,v0,0x10
    2b38:	04400003 	bltz	v0,2b48 <func_80B36740+0xb8>
    2b3c:	00021823 	negu	v1,v0
    2b40:	10000001 	b	2b48 <func_80B36740+0xb8>
    2b44:	00401825 	move	v1,v0
    2b48:	28612ee1 	slti	at,v1,12001
    2b4c:	54200005 	bnezl	at,2b64 <func_80B36740+0xd4>
    2b50:	860f00b6 	lh	t7,182(s0)
    2b54:	860d02fe 	lh	t5,766(s0)
    2b58:	000d7023 	negu	t6,t5
    2b5c:	a60e02fe 	sh	t6,766(s0)
    2b60:	860f00b6 	lh	t7,182(s0)
    2b64:	02002825 	move	a1,s0
    2b68:	a60f0032 	sh	t7,50(s0)
    2b6c:	0c000000 	jal	0 <func_80B33CB0>
    2b70:	8fa40074 	lw	a0,116(sp)
    2b74:	10400004 	beqz	v0,2b88 <func_80B36740+0xf8>
    2b78:	3c014316 	lui	at,0x4316
    2b7c:	44811000 	mtc1	at,$f2
    2b80:	00000000 	nop
    2b84:	e7a20058 	swc1	$f2,88(sp)
    2b88:	3c014270 	lui	at,0x4270
    2b8c:	c7a20058 	lwc1	$f2,88(sp)
    2b90:	44813000 	mtc1	at,$f6
    2b94:	c6000090 	lwc1	$f0,144(s0)
    2b98:	46023200 	add.s	$f8,$f6,$f2
    2b9c:	4608003e 	c.le.s	$f0,$f8
    2ba0:	00000000 	nop
    2ba4:	4502000b 	bc1fl	2bd4 <func_80B36740+0x144>
    2ba8:	3c0142a0 	lui	at,0x42a0
    2bac:	44805000 	mtc1	zero,$f10
    2bb0:	260402ec 	addiu	a0,s0,748
    2bb4:	3c05c080 	lui	a1,0xc080
    2bb8:	3c063f80 	lui	a2,0x3f80
    2bbc:	3c073fc0 	lui	a3,0x3fc0
    2bc0:	0c000000 	jal	0 <func_80B33CB0>
    2bc4:	e7aa0010 	swc1	$f10,16(sp)
    2bc8:	1000001a 	b	2c34 <func_80B36740+0x1a4>
    2bcc:	c60202ec 	lwc1	$f2,748(s0)
    2bd0:	3c0142a0 	lui	at,0x42a0
    2bd4:	44819000 	mtc1	at,$f18
    2bd8:	260402ec 	addiu	a0,s0,748
    2bdc:	24050000 	li	a1,0
    2be0:	46029100 	add.s	$f4,$f18,$f2
    2be4:	3c063f80 	lui	a2,0x3f80
    2be8:	3c0740d4 	lui	a3,0x40d4
    2bec:	4600203c 	c.lt.s	$f4,$f0
    2bf0:	00000000 	nop
    2bf4:	4502000b 	bc1fl	2c24 <func_80B36740+0x194>
    2bf8:	44804000 	mtc1	zero,$f8
    2bfc:	44803000 	mtc1	zero,$f6
    2c00:	260402ec 	addiu	a0,s0,748
    2c04:	3c054080 	lui	a1,0x4080
    2c08:	3c063f80 	lui	a2,0x3f80
    2c0c:	3c073fc0 	lui	a3,0x3fc0
    2c10:	0c000000 	jal	0 <func_80B33CB0>
    2c14:	e7a60010 	swc1	$f6,16(sp)
    2c18:	10000006 	b	2c34 <func_80B36740+0x1a4>
    2c1c:	c60202ec 	lwc1	$f2,748(s0)
    2c20:	44804000 	mtc1	zero,$f8
    2c24:	34e7cccd 	ori	a3,a3,0xcccd
    2c28:	0c000000 	jal	0 <func_80B33CB0>
    2c2c:	e7a80010 	swc1	$f8,16(sp)
    2c30:	c60202ec 	lwc1	$f2,748(s0)
    2c34:	44805000 	mtc1	zero,$f10
    2c38:	00000000 	nop
    2c3c:	46025032 	c.eq.s	$f10,$f2
    2c40:	00000000 	nop
    2c44:	45030010 	bc1tl	2c88 <func_80B36740+0x1f8>
    2c48:	44808000 	mtc1	zero,$f16
    2c4c:	0c000000 	jal	0 <func_80B33CB0>
    2c50:	860400b6 	lh	a0,182(s0)
    2c54:	c60402ec 	lwc1	$f4,748(s0)
    2c58:	c6120024 	lwc1	$f18,36(s0)
    2c5c:	860400b6 	lh	a0,182(s0)
    2c60:	46040182 	mul.s	$f6,$f0,$f4
    2c64:	46069200 	add.s	$f8,$f18,$f6
    2c68:	0c000000 	jal	0 <func_80B33CB0>
    2c6c:	e6080024 	swc1	$f8,36(s0)
    2c70:	c60202ec 	lwc1	$f2,748(s0)
    2c74:	c60a002c 	lwc1	$f10,44(s0)
    2c78:	46020102 	mul.s	$f4,$f0,$f2
    2c7c:	46045480 	add.s	$f18,$f10,$f4
    2c80:	e612002c 	swc1	$f18,44(s0)
    2c84:	44808000 	mtc1	zero,$f16
    2c88:	00000000 	nop
    2c8c:	4602803e 	c.le.s	$f16,$f2
    2c90:	00000000 	nop
    2c94:	45020004 	bc1fl	2ca8 <func_80B36740+0x218>
    2c98:	46001387 	neg.s	$f14,$f2
    2c9c:	10000002 	b	2ca8 <func_80B36740+0x218>
    2ca0:	46001386 	mov.s	$f14,$f2
    2ca4:	46001387 	neg.s	$f14,$f2
    2ca8:	c6000068 	lwc1	$f0,104(s0)
    2cac:	3c010000 	lui	at,0x0
    2cb0:	4600803e 	c.le.s	$f16,$f0
    2cb4:	00000000 	nop
    2cb8:	45020004 	bc1fl	2ccc <func_80B36740+0x23c>
    2cbc:	46000307 	neg.s	$f12,$f0
    2cc0:	10000002 	b	2ccc <func_80B36740+0x23c>
    2cc4:	46000306 	mov.s	$f12,$f0
    2cc8:	46000307 	neg.s	$f12,$f0
    2ccc:	460c703c 	c.lt.s	$f14,$f12
    2cd0:	00000000 	nop
    2cd4:	45000006 	bc1f	2cf0 <func_80B36740+0x260>
    2cd8:	00000000 	nop
    2cdc:	3c010000 	lui	at,0x0
    2ce0:	c4260000 	lwc1	$f6,0(at)
    2ce4:	46060202 	mul.s	$f8,$f0,$f6
    2ce8:	10000004 	b	2cfc <func_80B36740+0x26c>
    2cec:	e60801a4 	swc1	$f8,420(s0)
    2cf0:	c42a0000 	lwc1	$f10,0(at)
    2cf4:	460a1102 	mul.s	$f4,$f2,$f10
    2cf8:	e60401a4 	swc1	$f4,420(s0)
    2cfc:	3c01c040 	lui	at,0xc040
    2d00:	44811000 	mtc1	at,$f2
    2d04:	c60001a4 	lwc1	$f0,420(s0)
    2d08:	3c014040 	lui	at,0x4040
    2d0c:	4602003c 	c.lt.s	$f0,$f2
    2d10:	00000000 	nop
    2d14:	45020004 	bc1fl	2d28 <func_80B36740+0x298>
    2d18:	44819000 	mtc1	at,$f18
    2d1c:	1000000c 	b	2d50 <func_80B36740+0x2c0>
    2d20:	e60201a4 	swc1	$f2,420(s0)
    2d24:	44819000 	mtc1	at,$f18
    2d28:	3c014040 	lui	at,0x4040
    2d2c:	4600903c 	c.lt.s	$f18,$f0
    2d30:	00000000 	nop
    2d34:	45020005 	bc1fl	2d4c <func_80B36740+0x2bc>
    2d38:	46000306 	mov.s	$f12,$f0
    2d3c:	44816000 	mtc1	at,$f12
    2d40:	10000003 	b	2d50 <func_80B36740+0x2c0>
    2d44:	e60c01a4 	swc1	$f12,420(s0)
    2d48:	46000306 	mov.s	$f12,$f0
    2d4c:	e60c01a4 	swc1	$f12,420(s0)
    2d50:	c60601a0 	lwc1	$f6,416(s0)
    2d54:	26040188 	addiu	a0,s0,392
    2d58:	4600320d 	trunc.w.s	$f8,$f6
    2d5c:	44194000 	mfc1	t9,$f8
    2d60:	0c000000 	jal	0 <func_80B33CB0>
    2d64:	afb90064 	sw	t9,100(sp)
    2d68:	44808000 	mtc1	zero,$f16
    2d6c:	c60001a4 	lwc1	$f0,420(s0)
    2d70:	02002825 	move	a1,s0
    2d74:	00003025 	move	a2,zero
    2d78:	4600803e 	c.le.s	$f16,$f0
    2d7c:	00000000 	nop
    2d80:	45020004 	bc1fl	2d94 <func_80B36740+0x304>
    2d84:	46000307 	neg.s	$f12,$f0
    2d88:	10000002 	b	2d94 <func_80B36740+0x304>
    2d8c:	46000306 	mov.s	$f12,$f0
    2d90:	46000307 	neg.s	$f12,$f0
    2d94:	c60a01a0 	lwc1	$f10,416(s0)
    2d98:	4600803e 	c.le.s	$f16,$f0
    2d9c:	8fa40074 	lw	a0,116(sp)
    2da0:	460c5101 	sub.s	$f4,$f10,$f12
    2da4:	4600248d 	trunc.w.s	$f18,$f4
    2da8:	44099000 	mfc1	t1,$f18
    2dac:	45000003 	bc1f	2dbc <func_80B36740+0x32c>
    2db0:	afa90060 	sw	t1,96(sp)
    2db4:	10000002 	b	2dc0 <func_80B36740+0x330>
    2db8:	46000306 	mov.s	$f12,$f0
    2dbc:	46000307 	neg.s	$f12,$f0
    2dc0:	0c000000 	jal	0 <func_80B33CB0>
    2dc4:	e7ac0044 	swc1	$f12,68(sp)
    2dc8:	1440007f 	bnez	v0,2fc8 <func_80B36740+0x538>
    2dcc:	c7ac0044 	lwc1	$f12,68(sp)
    2dd0:	8e0a02e8 	lw	t2,744(s0)
    2dd4:	254bffff 	addiu	t3,t2,-1
    2dd8:	1560004c 	bnez	t3,2f0c <func_80B36740+0x47c>
    2ddc:	ae0b02e8 	sw	t3,744(s0)
    2de0:	8fad0068 	lw	t5,104(sp)
    2de4:	8603008a 	lh	v1,138(s0)
    2de8:	02002025 	move	a0,s0
    2dec:	85ae00b6 	lh	t6,182(t5)
    2df0:	8fb90074 	lw	t9,116(sp)
    2df4:	01c31023 	subu	v0,t6,v1
    2df8:	00021400 	sll	v0,v0,0x10
    2dfc:	00021403 	sra	v0,v0,0x10
    2e00:	04430005 	bgezl	v0,2e18 <func_80B36740+0x388>
    2e04:	28413a98 	slti	at,v0,15000
    2e08:	00021023 	negu	v0,v0
    2e0c:	00021400 	sll	v0,v0,0x10
    2e10:	00021403 	sra	v0,v0,0x10
    2e14:	28413a98 	slti	at,v0,15000
    2e18:	54200011 	bnezl	at,2e60 <func_80B36740+0x3d0>
    2e1c:	8f221c44 	lw	v0,7236(t9)
    2e20:	0c000000 	jal	0 <func_80B33CB0>
    2e24:	e7ac0044 	swc1	$f12,68(sp)
    2e28:	0c000000 	jal	0 <func_80B33CB0>
    2e2c:	00000000 	nop
    2e30:	3c014040 	lui	at,0x4040
    2e34:	44813000 	mtc1	at,$f6
    2e38:	3c013f80 	lui	at,0x3f80
    2e3c:	44815000 	mtc1	at,$f10
    2e40:	46060202 	mul.s	$f8,$f0,$f6
    2e44:	c7ac0044 	lwc1	$f12,68(sp)
    2e48:	460a4100 	add.s	$f4,$f8,$f10
    2e4c:	4600248d 	trunc.w.s	$f18,$f4
    2e50:	44189000 	mfc1	t8,$f18
    2e54:	1000002d 	b	2f0c <func_80B36740+0x47c>
    2e58:	ae1802e8 	sw	t8,744(s0)
    2e5c:	8f221c44 	lw	v0,7236(t9)
    2e60:	3c0142a0 	lui	at,0x42a0
    2e64:	44813000 	mtc1	at,$f6
    2e68:	c6080090 	lwc1	$f8,144(s0)
    2e6c:	844800b6 	lh	t0,182(v0)
    2e70:	860900b6 	lh	t1,182(s0)
    2e74:	4606403e 	c.le.s	$f8,$f6
    2e78:	01033023 	subu	a2,t0,v1
    2e7c:	00063400 	sll	a2,a2,0x10
    2e80:	00063403 	sra	a2,a2,0x10
    2e84:	4500001c 	bc1f	2ef8 <func_80B36740+0x468>
    2e88:	a6090032 	sh	t1,50(s0)
    2e8c:	8fa40074 	lw	a0,116(sp)
    2e90:	02002825 	move	a1,s0
    2e94:	a7a6004e 	sh	a2,78(sp)
    2e98:	0c000000 	jal	0 <func_80B33CB0>
    2e9c:	e7ac0044 	swc1	$f12,68(sp)
    2ea0:	87a6004e 	lh	a2,78(sp)
    2ea4:	14400014 	bnez	v0,2ef8 <func_80B36740+0x468>
    2ea8:	c7ac0044 	lwc1	$f12,68(sp)
    2eac:	8faa0074 	lw	t2,116(sp)
    2eb0:	3c0b0001 	lui	t3,0x1
    2eb4:	02002025 	move	a0,s0
    2eb8:	016a5821 	addu	t3,t3,t2
    2ebc:	8d6b1de4 	lw	t3,7652(t3)
    2ec0:	316c0003 	andi	t4,t3,0x3
    2ec4:	11800008 	beqz	t4,2ee8 <func_80B36740+0x458>
    2ec8:	00000000 	nop
    2ecc:	04c00003 	bltz	a2,2edc <func_80B36740+0x44c>
    2ed0:	00061823 	negu	v1,a2
    2ed4:	10000001 	b	2edc <func_80B36740+0x44c>
    2ed8:	00c01825 	move	v1,a2
    2edc:	286138e0 	slti	at,v1,14560
    2ee0:	50200006 	beqzl	at,2efc <func_80B36740+0x46c>
    2ee4:	02002025 	move	a0,s0
    2ee8:	0c000000 	jal	0 <func_80B33CB0>
    2eec:	e7ac0044 	swc1	$f12,68(sp)
    2ef0:	10000006 	b	2f0c <func_80B36740+0x47c>
    2ef4:	c7ac0044 	lwc1	$f12,68(sp)
    2ef8:	02002025 	move	a0,s0
    2efc:	8fa50074 	lw	a1,116(sp)
    2f00:	0c000000 	jal	0 <func_80B33CB0>
    2f04:	e7ac0044 	swc1	$f12,68(sp)
    2f08:	c7ac0044 	lwc1	$f12,68(sp)
    2f0c:	8fad0074 	lw	t5,116(sp)
    2f10:	3c010001 	lui	at,0x1
    2f14:	8fa20064 	lw	v0,100(sp)
    2f18:	01a17021 	addu	t6,t5,at
    2f1c:	afae003c 	sw	t6,60(sp)
    2f20:	c60a01a0 	lwc1	$f10,416(s0)
    2f24:	8fb90060 	lw	t9,96(sp)
    2f28:	4600510d 	trunc.w.s	$f4,$f10
    2f2c:	44182000 	mfc1	t8,$f4
    2f30:	00000000 	nop
    2f34:	5058001d 	beql	v0,t8,2fac <func_80B36740+0x51c>
    2f38:	8faf003c 	lw	t7,60(sp)
    2f3c:	5f20001b 	bgtzl	t9,2fac <func_80B36740+0x51c>
    2f40:	8faf003c 	lw	t7,60(sp)
    2f44:	4600648d 	trunc.w.s	$f18,$f12
    2f48:	02002025 	move	a0,s0
    2f4c:	44099000 	mfc1	t1,$f18
    2f50:	00000000 	nop
    2f54:	01225021 	addu	t2,t1,v0
    2f58:	59400014 	blezl	t2,2fac <func_80B36740+0x51c>
    2f5c:	8faf003c 	lw	t7,60(sp)
    2f60:	0c000000 	jal	0 <func_80B33CB0>
    2f64:	2405385a 	li	a1,14426
    2f68:	3c014040 	lui	at,0x4040
    2f6c:	44813000 	mtc1	at,$f6
    2f70:	240b0003 	li	t3,3
    2f74:	240c0032 	li	t4,50
    2f78:	240d0032 	li	t5,50
    2f7c:	240e0001 	li	t6,1
    2f80:	afae0020 	sw	t6,32(sp)
    2f84:	afad001c 	sw	t5,28(sp)
    2f88:	afac0018 	sw	t4,24(sp)
    2f8c:	afab0010 	sw	t3,16(sp)
    2f90:	8fa40074 	lw	a0,116(sp)
    2f94:	02002825 	move	a1,s0
    2f98:	26060024 	addiu	a2,s0,36
    2f9c:	3c0741a0 	lui	a3,0x41a0
    2fa0:	0c000000 	jal	0 <func_80B33CB0>
    2fa4:	e7a60014 	swc1	$f6,20(sp)
    2fa8:	8faf003c 	lw	t7,60(sp)
    2fac:	02002025 	move	a0,s0
    2fb0:	8df81de4 	lw	t8,7652(t7)
    2fb4:	3319005f 	andi	t9,t8,0x5f
    2fb8:	57200004 	bnezl	t9,2fcc <func_80B36740+0x53c>
    2fbc:	8fbf0034 	lw	ra,52(sp)
    2fc0:	0c000000 	jal	0 <func_80B33CB0>
    2fc4:	2405383e 	li	a1,14398
    2fc8:	8fbf0034 	lw	ra,52(sp)
    2fcc:	8fb00030 	lw	s0,48(sp)
    2fd0:	27bd0070 	addiu	sp,sp,112
    2fd4:	03e00008 	jr	ra
    2fd8:	00000000 	nop

00002fdc <func_80B36C8C>:
    2fdc:	27bdffe8 	addiu	sp,sp,-24
    2fe0:	afbf0014 	sw	ra,20(sp)
    2fe4:	00803825 	move	a3,a0
    2fe8:	3c050600 	lui	a1,0x600
    2fec:	24a55430 	addiu	a1,a1,21552
    2ff0:	afa70018 	sw	a3,24(sp)
    2ff4:	24840188 	addiu	a0,a0,392
    2ff8:	0c000000 	jal	0 <func_80B33CB0>
    2ffc:	3c06c080 	lui	a2,0xc080
    3000:	8fa70018 	lw	a3,24(sp)
    3004:	3c01c0c0 	lui	at,0xc0c0
    3008:	24190001 	li	t9,1
    300c:	94ef0088 	lhu	t7,136(a3)
    3010:	84ee008a 	lh	t6,138(a3)
    3014:	24080002 	li	t0,2
    3018:	31f80001 	andi	t8,t7,0x1
    301c:	13000005 	beqz	t8,3034 <func_80B36C8C+0x58>
    3020:	a4ee0032 	sh	t6,50(a3)
    3024:	44812000 	mtc1	at,$f4
    3028:	a4e00300 	sh	zero,768(a3)
    302c:	10000002 	b	3038 <func_80B36C8C+0x5c>
    3030:	e4e40068 	swc1	$f4,104(a3)
    3034:	a4f90300 	sh	t9,768(a3)
    3038:	c4e6019c 	lwc1	$f6,412(a3)
    303c:	8ce90004 	lw	t1,4(a3)
    3040:	2401fffe 	li	at,-2
    3044:	4600320d 	trunc.w.s	$f8,$f6
    3048:	01215024 	and	t2,t1,at
    304c:	ace802d4 	sw	t0,724(a3)
    3050:	acea0004 	sw	t2,4(a3)
    3054:	440c4000 	mfc1	t4,$f8
    3058:	00e02025 	move	a0,a3
    305c:	2405384b 	li	a1,14411
    3060:	acec02e8 	sw	t4,744(a3)
    3064:	0c000000 	jal	0 <func_80B33CB0>
    3068:	afa70018 	sw	a3,24(sp)
    306c:	3c050000 	lui	a1,0x0
    3070:	8fa40018 	lw	a0,24(sp)
    3074:	0c000000 	jal	0 <func_80B33CB0>
    3078:	24a50000 	addiu	a1,a1,0
    307c:	8fbf0014 	lw	ra,20(sp)
    3080:	27bd0018 	addiu	sp,sp,24
    3084:	03e00008 	jr	ra
    3088:	00000000 	nop

0000308c <func_80B36D3C>:
    308c:	27bdff68 	addiu	sp,sp,-152
    3090:	afbf0074 	sw	ra,116(sp)
    3094:	afb40070 	sw	s4,112(sp)
    3098:	afb3006c 	sw	s3,108(sp)
    309c:	afb20068 	sw	s2,104(sp)
    30a0:	afb10064 	sw	s1,100(sp)
    30a4:	afb00060 	sw	s0,96(sp)
    30a8:	f7b80058 	sdc1	$f24,88(sp)
    30ac:	f7b60050 	sdc1	$f22,80(sp)
    30b0:	f7b40048 	sdc1	$f20,72(sp)
    30b4:	94820088 	lhu	v0,136(a0)
    30b8:	00808825 	move	s1,a0
    30bc:	00a0a025 	move	s4,a1
    30c0:	304e0002 	andi	t6,v0,0x2
    30c4:	11c00004 	beqz	t6,30d8 <func_80B36D3C+0x4c>
    30c8:	3c063f80 	lui	a2,0x3f80
    30cc:	44800000 	mtc1	zero,$f0
    30d0:	94820088 	lhu	v0,136(a0)
    30d4:	e4800068 	swc1	$f0,104(a0)
    30d8:	44800000 	mtc1	zero,$f0
    30dc:	304f0001 	andi	t7,v0,0x1
    30e0:	11e00006 	beqz	t7,30fc <func_80B36D3C+0x70>
    30e4:	26240068 	addiu	a0,s1,104
    30e8:	44050000 	mfc1	a1,$f0
    30ec:	3c073f00 	lui	a3,0x3f00
    30f0:	0c000000 	jal	0 <func_80B33CB0>
    30f4:	e7a00010 	swc1	$f0,16(sp)
    30f8:	a6200300 	sh	zero,768(s1)
    30fc:	0c000000 	jal	0 <func_80B33CB0>
    3100:	26240188 	addiu	a0,s1,392
    3104:	10400010 	beqz	v0,3148 <func_80B36D3C+0xbc>
    3108:	3c180000 	lui	t8,0x0
    310c:	02802025 	move	a0,s4
    3110:	02202825 	move	a1,s1
    3114:	26260024 	addiu	a2,s1,36
    3118:	0c000000 	jal	0 <func_80B33CB0>
    311c:	240700d0 	li	a3,208
    3120:	862502fc 	lh	a1,764(s1)
    3124:	240100ff 	li	at,255
    3128:	10a10003 	beq	a1,at,3138 <func_80B36D3C+0xac>
    312c:	00000000 	nop
    3130:	0c000000 	jal	0 <func_80B33CB0>
    3134:	02802025 	move	a0,s4
    3138:	0c000000 	jal	0 <func_80B33CB0>
    313c:	02202025 	move	a0,s1
    3140:	10000049 	b	3268 <func_80B36D3C+0x1dc>
    3144:	8fbf0074 	lw	ra,116(sp)
    3148:	27180000 	addiu	t8,t8,0
    314c:	8f080000 	lw	t0,0(t8)
    3150:	27b2007c 	addiu	s2,sp,124
    3154:	3c0141a0 	lui	at,0x41a0
    3158:	ae480000 	sw	t0,0(s2)
    315c:	8f190004 	lw	t9,4(t8)
    3160:	ae590004 	sw	t9,4(s2)
    3164:	8f080008 	lw	t0,8(t8)
    3168:	ae480008 	sw	t0,8(s2)
    316c:	c624019c 	lwc1	$f4,412(s1)
    3170:	8e2902e8 	lw	t1,744(s1)
    3174:	4600218d 	trunc.w.s	$f6,$f4
    3178:	252affff 	addiu	t2,t1,-1
    317c:	ae2a02e8 	sw	t2,744(s1)
    3180:	440c3000 	mfc1	t4,$f6
    3184:	00000000 	nop
    3188:	018a8023 	subu	s0,t4,t2
    318c:	00108043 	sra	s0,s0,0x1
    3190:	06020035 	bltzl	s0,3268 <func_80B36D3C+0x1dc>
    3194:	8fbf0074 	lw	ra,116(sp)
    3198:	4481c000 	mtc1	at,$f24
    319c:	3c014248 	lui	at,0x4248
    31a0:	4481b000 	mtc1	at,$f22
    31a4:	3c014270 	lui	at,0x4270
    31a8:	4481a000 	mtc1	at,$f20
    31ac:	27b30088 	addiu	s3,sp,136
    31b0:	0c000000 	jal	0 <func_80B33CB0>
    31b4:	4600a306 	mov.s	$f12,$f20
    31b8:	c6280024 	lwc1	$f8,36(s1)
    31bc:	4600a306 	mov.s	$f12,$f20
    31c0:	46080280 	add.s	$f10,$f0,$f8
    31c4:	0c000000 	jal	0 <func_80B33CB0>
    31c8:	e7aa0088 	swc1	$f10,136(sp)
    31cc:	c630002c 	lwc1	$f16,44(s1)
    31d0:	4600b306 	mov.s	$f12,$f22
    31d4:	46100480 	add.s	$f18,$f0,$f16
    31d8:	0c000000 	jal	0 <func_80B33CB0>
    31dc:	e7b20090 	swc1	$f18,144(sp)
    31e0:	c6240028 	lwc1	$f4,40(s1)
    31e4:	240e0064 	li	t6,100
    31e8:	240f00ff 	li	t7,255
    31ec:	46182180 	add.s	$f6,$f4,$f24
    31f0:	241800ff 	li	t8,255
    31f4:	241900ff 	li	t9,255
    31f8:	240800ff 	li	t0,255
    31fc:	46060200 	add.s	$f8,$f0,$f6
    3200:	240900ff 	li	t1,255
    3204:	240a0001 	li	t2,1
    3208:	240b0009 	li	t3,9
    320c:	240c0001 	li	t4,1
    3210:	e7a8008c 	swc1	$f8,140(sp)
    3214:	afac003c 	sw	t4,60(sp)
    3218:	afab0038 	sw	t3,56(sp)
    321c:	afaa0034 	sw	t2,52(sp)
    3220:	afa90030 	sw	t1,48(sp)
    3224:	afa80024 	sw	t0,36(sp)
    3228:	afb90020 	sw	t9,32(sp)
    322c:	afb8001c 	sw	t8,28(sp)
    3230:	afaf0018 	sw	t7,24(sp)
    3234:	afae0010 	sw	t6,16(sp)
    3238:	afa0002c 	sw	zero,44(sp)
    323c:	afa00028 	sw	zero,40(sp)
    3240:	afa00014 	sw	zero,20(sp)
    3244:	02802025 	move	a0,s4
    3248:	02602825 	move	a1,s3
    324c:	02403025 	move	a2,s2
    3250:	0c000000 	jal	0 <func_80B33CB0>
    3254:	02403825 	move	a3,s2
    3258:	2610ffff 	addiu	s0,s0,-1
    325c:	0601ffd4 	bgez	s0,31b0 <func_80B36D3C+0x124>
    3260:	00000000 	nop
    3264:	8fbf0074 	lw	ra,116(sp)
    3268:	d7b40048 	ldc1	$f20,72(sp)
    326c:	d7b60050 	ldc1	$f22,80(sp)
    3270:	d7b80058 	ldc1	$f24,88(sp)
    3274:	8fb00060 	lw	s0,96(sp)
    3278:	8fb10064 	lw	s1,100(sp)
    327c:	8fb20068 	lw	s2,104(sp)
    3280:	8fb3006c 	lw	s3,108(sp)
    3284:	8fb40070 	lw	s4,112(sp)
    3288:	03e00008 	jr	ra
    328c:	27bd0098 	addiu	sp,sp,152

00003290 <func_80B36F40>:
    3290:	27bdffd8 	addiu	sp,sp,-40
    3294:	afbf0024 	sw	ra,36(sp)
    3298:	afb00020 	sw	s0,32(sp)
    329c:	afa5002c 	sw	a1,44(sp)
    32a0:	8c8202d4 	lw	v0,724(a0)
    32a4:	24010006 	li	at,6
    32a8:	00808025 	move	s0,a0
    32ac:	54410015 	bnel	v0,at,3304 <func_80B36F40+0x74>
    32b0:	2401000f 	li	at,15
    32b4:	848302e2 	lh	v1,738(a0)
    32b8:	10600011 	beqz	v1,3300 <func_80B36F40+0x70>
    32bc:	00032140 	sll	a0,v1,0x5
    32c0:	00832021 	addu	a0,a0,v1
    32c4:	00042080 	sll	a0,a0,0x2
    32c8:	00832023 	subu	a0,a0,v1
    32cc:	00042080 	sll	a0,a0,0x2
    32d0:	00832021 	addu	a0,a0,v1
    32d4:	000420c0 	sll	a0,a0,0x3
    32d8:	00042400 	sll	a0,a0,0x10
    32dc:	0c000000 	jal	0 <func_80B33CB0>
    32e0:	00042403 	sra	a0,a0,0x10
    32e4:	3c010000 	lui	at,0x0
    32e8:	c4240000 	lwc1	$f4,0(at)
    32ec:	46040182 	mul.s	$f6,$f0,$f4
    32f0:	4600320d 	trunc.w.s	$f8,$f6
    32f4:	440f4000 	mfc1	t7,$f8
    32f8:	1000001e 	b	3374 <func_80B36F40+0xe4>
    32fc:	a60f04d6 	sh	t7,1238(s0)
    3300:	2401000f 	li	at,15
    3304:	1041001b 	beq	v0,at,3374 <func_80B36F40+0xe4>
    3308:	24010008 	li	at,8
    330c:	10410018 	beq	v0,at,3370 <func_80B36F40+0xe0>
    3310:	260404d6 	addiu	a0,s0,1238
    3314:	8618008a 	lh	t8,138(s0)
    3318:	861900b6 	lh	t9,182(s0)
    331c:	afa00010 	sw	zero,16(sp)
    3320:	24060001 	li	a2,1
    3324:	03192823 	subu	a1,t8,t9
    3328:	00052c00 	sll	a1,a1,0x10
    332c:	00052c03 	sra	a1,a1,0x10
    3330:	0c000000 	jal	0 <func_80B33CB0>
    3334:	240705dc 	li	a3,1500
    3338:	860204d6 	lh	v0,1238(s0)
    333c:	2408ced9 	li	t0,-12583
    3340:	2841ced9 	slti	at,v0,-12583
    3344:	50200004 	beqzl	at,3358 <func_80B36F40+0xc8>
    3348:	28413128 	slti	at,v0,12584
    334c:	10000009 	b	3374 <func_80B36F40+0xe4>
    3350:	a60804d6 	sh	t0,1238(s0)
    3354:	28413128 	slti	at,v0,12584
    3358:	14200003 	bnez	at,3368 <func_80B36F40+0xd8>
    335c:	00401825 	move	v1,v0
    3360:	10000001 	b	3368 <func_80B36F40+0xd8>
    3364:	24033127 	li	v1,12583
    3368:	10000002 	b	3374 <func_80B36F40+0xe4>
    336c:	a60304d6 	sh	v1,1238(s0)
    3370:	a60004d6 	sh	zero,1238(s0)
    3374:	8fbf0024 	lw	ra,36(sp)
    3378:	8fb00020 	lw	s0,32(sp)
    337c:	27bd0028 	addiu	sp,sp,40
    3380:	03e00008 	jr	ra
    3384:	00000000 	nop

00003388 <func_80B37038>:
    3388:	27bdffd8 	addiu	sp,sp,-40
    338c:	afbf0024 	sw	ra,36(sp)
    3390:	afb00020 	sw	s0,32(sp)
    3394:	afa5002c 	sw	a1,44(sp)
    3398:	90820315 	lbu	v0,789(a0)
    339c:	00808025 	move	s0,a0
    33a0:	304e0080 	andi	t6,v0,0x80
    33a4:	11c00009 	beqz	t6,33cc <func_80B37038+0x44>
    33a8:	304fff7d 	andi	t7,v0,0xff7d
    33ac:	90980435 	lbu	t8,1077(a0)
    33b0:	90880481 	lbu	t0,1153(a0)
    33b4:	a08f0315 	sb	t7,789(a0)
    33b8:	3319fffd 	andi	t9,t8,0xfffd
    33bc:	3109fffd 	andi	t1,t0,0xfffd
    33c0:	a0990435 	sb	t9,1077(a0)
    33c4:	1000005f 	b	3544 <func_80B37038+0x1bc>
    33c8:	a0890481 	sb	t1,1153(a0)
    33cc:	92040435 	lbu	a0,1077(s0)
    33d0:	30820002 	andi	v0,a0,0x2
    33d4:	54400006 	bnezl	v0,33f0 <func_80B37038+0x68>
    33d8:	8e0c02d4 	lw	t4,724(s0)
    33dc:	920a0481 	lbu	t2,1153(s0)
    33e0:	314b0002 	andi	t3,t2,0x2
    33e4:	51600058 	beqzl	t3,3548 <func_80B37038+0x1c0>
    33e8:	8fbf0024 	lw	ra,36(sp)
    33ec:	8e0c02d4 	lw	t4,724(s0)
    33f0:	29810006 	slti	at,t4,6
    33f4:	54200054 	bnezl	at,3548 <func_80B37038+0x1c0>
    33f8:	8fbf0024 	lw	ra,36(sp)
    33fc:	860d008a 	lh	t5,138(s0)
    3400:	860e00b6 	lh	t6,182(s0)
    3404:	2605043c 	addiu	a1,s0,1084
    3408:	24060001 	li	a2,1
    340c:	01ae1823 	subu	v1,t5,t6
    3410:	00031c00 	sll	v1,v1,0x10
    3414:	14400005 	bnez	v0,342c <func_80B37038+0xa4>
    3418:	00031c03 	sra	v1,v1,0x10
    341c:	920f0481 	lbu	t7,1153(s0)
    3420:	31f80002 	andi	t8,t7,0x2
    3424:	57000009 	bnezl	t8,344c <func_80B37038+0xc4>
    3428:	921900b0 	lbu	t9,176(s0)
    342c:	04600003 	bltz	v1,343c <func_80B37038+0xb4>
    3430:	00031023 	negu	v0,v1
    3434:	10000001 	b	343c <func_80B37038+0xb4>
    3438:	00601025 	move	v0,v1
    343c:	28414a39 	slti	at,v0,19001
    3440:	54200006 	bnezl	at,345c <func_80B37038+0xd4>
    3444:	920a0481 	lbu	t2,1153(s0)
    3448:	921900b0 	lbu	t9,176(s0)
    344c:	92040435 	lbu	a0,1077(s0)
    3450:	00194080 	sll	t0,t9,0x2
    3454:	a20800b0 	sb	t0,176(s0)
    3458:	920a0481 	lbu	t2,1153(s0)
    345c:	920200b1 	lbu	v0,177(s0)
    3460:	3089fffd 	andi	t1,a0,0xfffd
    3464:	24010006 	li	at,6
    3468:	314bfffd 	andi	t3,t2,0xfffd
    346c:	a2090435 	sb	t1,1077(s0)
    3470:	10410034 	beq	v0,at,3544 <func_80B37038+0x1bc>
    3474:	a20b0481 	sb	t3,1153(s0)
    3478:	a20202e6 	sb	v0,742(s0)
    347c:	0c000000 	jal	0 <func_80B33CB0>
    3480:	02002025 	move	a0,s0
    3484:	920200b1 	lbu	v0,177(s0)
    3488:	24010001 	li	at,1
    348c:	a60002f8 	sh	zero,760(s0)
    3490:	10410003 	beq	v0,at,34a0 <func_80B37038+0x118>
    3494:	2401000f 	li	at,15
    3498:	14410011 	bne	v0,at,34e0 <func_80B37038+0x158>
    349c:	02002025 	move	a0,s0
    34a0:	8e0c02d4 	lw	t4,724(s0)
    34a4:	2401000f 	li	at,15
    34a8:	02002025 	move	a0,s0
    34ac:	11810025 	beq	t4,at,3544 <func_80B37038+0x1bc>
    34b0:	00002825 	move	a1,zero
    34b4:	240d0050 	li	t5,80
    34b8:	afad0010 	sw	t5,16(sp)
    34bc:	24060078 	li	a2,120
    34c0:	0c000000 	jal	0 <func_80B33CB0>
    34c4:	00003825 	move	a3,zero
    34c8:	0c000000 	jal	0 <func_80B33CB0>
    34cc:	02002025 	move	a0,s0
    34d0:	0c000000 	jal	0 <func_80B33CB0>
    34d4:	02002025 	move	a0,s0
    34d8:	1000001b 	b	3548 <func_80B37038+0x1c0>
    34dc:	8fbf0024 	lw	ra,36(sp)
    34e0:	240e0008 	li	t6,8
    34e4:	afae0010 	sw	t6,16(sp)
    34e8:	24054000 	li	a1,16384
    34ec:	240600ff 	li	a2,255
    34f0:	0c000000 	jal	0 <func_80B33CB0>
    34f4:	00003825 	move	a3,zero
    34f8:	920f02e6 	lbu	t7,742(s0)
    34fc:	2401000e 	li	at,14
    3500:	24180028 	li	t8,40
    3504:	15e10002 	bne	t7,at,3510 <func_80B37038+0x188>
    3508:	00000000 	nop
    350c:	a61802e4 	sh	t8,740(s0)
    3510:	0c000000 	jal	0 <func_80B33CB0>
    3514:	02002025 	move	a0,s0
    3518:	14400008 	bnez	v0,353c <func_80B37038+0x1b4>
    351c:	00000000 	nop
    3520:	0c000000 	jal	0 <func_80B33CB0>
    3524:	02002025 	move	a0,s0
    3528:	8fa4002c 	lw	a0,44(sp)
    352c:	0c000000 	jal	0 <func_80B33CB0>
    3530:	02002825 	move	a1,s0
    3534:	10000004 	b	3548 <func_80B37038+0x1c0>
    3538:	8fbf0024 	lw	ra,36(sp)
    353c:	0c000000 	jal	0 <func_80B33CB0>
    3540:	02002025 	move	a0,s0
    3544:	8fbf0024 	lw	ra,36(sp)
    3548:	8fb00020 	lw	s0,32(sp)
    354c:	27bd0028 	addiu	sp,sp,40
    3550:	03e00008 	jr	ra
    3554:	00000000 	nop

00003558 <EnWf_Update>:
    3558:	27bdffc0 	addiu	sp,sp,-64
    355c:	afbf0024 	sw	ra,36(sp)
    3560:	afb10020 	sw	s1,32(sp)
    3564:	afb0001c 	sw	s0,28(sp)
    3568:	00808025 	move	s0,a0
    356c:	0c000000 	jal	0 <func_80B33CB0>
    3570:	00a08825 	move	s1,a1
    3574:	920e00b1 	lbu	t6,177(s0)
    3578:	24010006 	li	at,6
    357c:	51c10016 	beql	t6,at,35d8 <EnWf_Update+0x80>
    3580:	96180088 	lhu	t8,136(s0)
    3584:	0c000000 	jal	0 <func_80B33CB0>
    3588:	02002025 	move	a0,s0
    358c:	3c014270 	lui	at,0x4270
    3590:	44812000 	mtc1	at,$f4
    3594:	240f001d 	li	t7,29
    3598:	afaf0014 	sw	t7,20(sp)
    359c:	02202025 	move	a0,s1
    35a0:	02002825 	move	a1,s0
    35a4:	3c064200 	lui	a2,0x4200
    35a8:	3c0741f0 	lui	a3,0x41f0
    35ac:	0c000000 	jal	0 <func_80B33CB0>
    35b0:	e7a40010 	swc1	$f4,16(sp)
    35b4:	8e1902dc 	lw	t9,732(s0)
    35b8:	02002025 	move	a0,s0
    35bc:	02202825 	move	a1,s1
    35c0:	0320f809 	jalr	t9
    35c4:	00000000 	nop
    35c8:	02002025 	move	a0,s0
    35cc:	0c000000 	jal	0 <func_80B33CB0>
    35d0:	02202825 	move	a1,s1
    35d4:	96180088 	lhu	t8,136(s0)
    35d8:	260400b4 	addiu	a0,s0,180
    35dc:	00002825 	move	a1,zero
    35e0:	33080003 	andi	t0,t8,0x3
    35e4:	11000007 	beqz	t0,3604 <EnWf_Update+0xac>
    35e8:	24060001 	li	a2,1
    35ec:	02002025 	move	a0,s0
    35f0:	860500b6 	lh	a1,182(s0)
    35f4:	0c000000 	jal	0 <func_80B33CB0>
    35f8:	260600b4 	addiu	a2,s0,180
    35fc:	1000000b 	b	362c <EnWf_Update+0xd4>
    3600:	3c010001 	lui	at,0x1
    3604:	240703e8 	li	a3,1000
    3608:	0c000000 	jal	0 <func_80B33CB0>
    360c:	afa00010 	sw	zero,16(sp)
    3610:	260400b8 	addiu	a0,s0,184
    3614:	00002825 	move	a1,zero
    3618:	24060001 	li	a2,1
    361c:	240703e8 	li	a3,1000
    3620:	0c000000 	jal	0 <func_80B33CB0>
    3624:	afa00010 	sw	zero,16(sp)
    3628:	3c010001 	lui	at,0x1
    362c:	34211e60 	ori	at,at,0x1e60
    3630:	02212821 	addu	a1,s1,at
    3634:	26060304 	addiu	a2,s0,772
    3638:	afa60030 	sw	a2,48(sp)
    363c:	afa50034 	sw	a1,52(sp)
    3640:	0c000000 	jal	0 <func_80B33CB0>
    3644:	02202025 	move	a0,s1
    3648:	8e0202d4 	lw	v0,724(s0)
    364c:	28410006 	slti	at,v0,6
    3650:	54200016 	bnezl	at,36ac <EnWf_Update+0x154>
    3654:	24010007 	li	at,7
    3658:	92090114 	lbu	t1,276(s0)
    365c:	02002025 	move	a0,s0
    3660:	26050424 	addiu	a1,s0,1060
    3664:	11200005 	beqz	t1,367c <EnWf_Update+0x124>
    3668:	00000000 	nop
    366c:	960a0112 	lhu	t2,274(s0)
    3670:	314b4000 	andi	t3,t2,0x4000
    3674:	5560000d 	bnezl	t3,36ac <EnWf_Update+0x154>
    3678:	24010007 	li	at,7
    367c:	0c000000 	jal	0 <func_80B33CB0>
    3680:	afa5002c 	sw	a1,44(sp)
    3684:	02202025 	move	a0,s1
    3688:	8fa50034 	lw	a1,52(sp)
    368c:	0c000000 	jal	0 <func_80B33CB0>
    3690:	26060470 	addiu	a2,s0,1136
    3694:	02202025 	move	a0,s1
    3698:	8fa50034 	lw	a1,52(sp)
    369c:	0c000000 	jal	0 <func_80B33CB0>
    36a0:	8fa6002c 	lw	a2,44(sp)
    36a4:	8e0202d4 	lw	v0,724(s0)
    36a8:	24010007 	li	at,7
    36ac:	14410004 	bne	v0,at,36c0 <EnWf_Update+0x168>
    36b0:	02202025 	move	a0,s1
    36b4:	8fa50034 	lw	a1,52(sp)
    36b8:	0c000000 	jal	0 <func_80B33CB0>
    36bc:	8fa60030 	lw	a2,48(sp)
    36c0:	860c02f8 	lh	t4,760(s0)
    36c4:	5980000e 	blezl	t4,3700 <EnWf_Update+0x1a8>
    36c8:	8e0f0028 	lw	t7,40(s0)
    36cc:	920d0314 	lbu	t5,788(s0)
    36d0:	02202025 	move	a0,s1
    36d4:	8fa50034 	lw	a1,52(sp)
    36d8:	31ae0004 	andi	t6,t5,0x4
    36dc:	15c00005 	bnez	t6,36f4 <EnWf_Update+0x19c>
    36e0:	00000000 	nop
    36e4:	0c000000 	jal	0 <func_80B33CB0>
    36e8:	8fa60030 	lw	a2,48(sp)
    36ec:	10000004 	b	3700 <EnWf_Update+0x1a8>
    36f0:	8e0f0028 	lw	t7,40(s0)
    36f4:	0c000000 	jal	0 <func_80B33CB0>
    36f8:	02002025 	move	a0,s0
    36fc:	8e0f0028 	lw	t7,40(s0)
    3700:	3c0141c8 	lui	at,0x41c8
    3704:	8e190024 	lw	t9,36(s0)
    3708:	ae0f003c 	sw	t7,60(s0)
    370c:	c606003c 	lwc1	$f6,60(s0)
    3710:	44814000 	mtc1	at,$f8
    3714:	92020302 	lbu	v0,770(s0)
    3718:	ae190038 	sw	t9,56(s0)
    371c:	46083280 	add.s	$f10,$f6,$f8
    3720:	8e19002c 	lw	t9,44(s0)
    3724:	244c0001 	addiu	t4,v0,1
    3728:	318d0003 	andi	t5,t4,0x3
    372c:	e60a003c 	swc1	$f10,60(s0)
    3730:	14400016 	bnez	v0,378c <EnWf_Update+0x234>
    3734:	ae190040 	sw	t9,64(s0)
    3738:	0c000000 	jal	0 <func_80B33CB0>
    373c:	00000000 	nop
    3740:	3c010000 	lui	at,0x0
    3744:	c4300000 	lwc1	$f16,0(at)
    3748:	3c180001 	lui	t8,0x1
    374c:	0311c021 	addu	t8,t8,s1
    3750:	4610003c 	c.lt.s	$f0,$f16
    3754:	00000000 	nop
    3758:	4502000e 	bc1fl	3794 <EnWf_Update+0x23c>
    375c:	8fbf0024 	lw	ra,36(sp)
    3760:	8f181de4 	lw	t8,7652(t8)
    3764:	33080003 	andi	t0,t8,0x3
    3768:	5500000a 	bnezl	t0,3794 <EnWf_Update+0x23c>
    376c:	8fbf0024 	lw	ra,36(sp)
    3770:	92090114 	lbu	t1,276(s0)
    3774:	55200007 	bnezl	t1,3794 <EnWf_Update+0x23c>
    3778:	8fbf0024 	lw	ra,36(sp)
    377c:	920a0302 	lbu	t2,770(s0)
    3780:	254b0001 	addiu	t3,t2,1
    3784:	10000002 	b	3790 <EnWf_Update+0x238>
    3788:	a20b0302 	sb	t3,770(s0)
    378c:	a20d0302 	sb	t5,770(s0)
    3790:	8fbf0024 	lw	ra,36(sp)
    3794:	8fb0001c 	lw	s0,28(sp)
    3798:	8fb10020 	lw	s1,32(sp)
    379c:	03e00008 	jr	ra
    37a0:	27bd0040 	addiu	sp,sp,64

000037a4 <func_80B37454>:
    37a4:	24010011 	li	at,17
    37a8:	afa40000 	sw	a0,0(sp)
    37ac:	afa60008 	sw	a2,8(sp)
    37b0:	10a10004 	beq	a1,at,37c4 <func_80B37454+0x20>
    37b4:	afa7000c 	sw	a3,12(sp)
    37b8:	24010012 	li	at,18
    37bc:	14a10007 	bne	a1,at,37dc <func_80B37454+0x38>
    37c0:	00000000 	nop
    37c4:	8fa20010 	lw	v0,16(sp)
    37c8:	8faf0014 	lw	t7,20(sp)
    37cc:	844e0002 	lh	t6,2(v0)
    37d0:	85f804d6 	lh	t8,1238(t7)
    37d4:	01d8c823 	subu	t9,t6,t8
    37d8:	a4590002 	sh	t9,2(v0)
    37dc:	03e00008 	jr	ra
    37e0:	00001025 	move	v0,zero

000037e4 <func_80B37494>:
    37e4:	27bdffc8 	addiu	sp,sp,-56
    37e8:	afa60040 	sw	a2,64(sp)
    37ec:	8fa60048 	lw	a2,72(sp)
    37f0:	afa40038 	sw	a0,56(sp)
    37f4:	afbf0014 	sw	ra,20(sp)
    37f8:	afa5003c 	sw	a1,60(sp)
    37fc:	2403ffff 	li	v1,-1
    3800:	00a02025 	move	a0,a1
    3804:	afa70044 	sw	a3,68(sp)
    3808:	afa30030 	sw	v1,48(sp)
    380c:	0c000000 	jal	0 <func_80B33CB0>
    3810:	24c50304 	addiu	a1,a2,772
    3814:	8fae003c 	lw	t6,60(sp)
    3818:	24010006 	li	at,6
    381c:	8fa30030 	lw	v1,48(sp)
    3820:	15c10017 	bne	t6,at,3880 <func_80B37494+0x9c>
    3824:	8fa60048 	lw	a2,72(sp)
    3828:	3c040000 	lui	a0,0x0
    382c:	24840000 	addiu	a0,a0,0
    3830:	27a50024 	addiu	a1,sp,36
    3834:	0c000000 	jal	0 <func_80B33CB0>
    3838:	afa30030 	sw	v1,48(sp)
    383c:	c7a40024 	lwc1	$f4,36(sp)
    3840:	8fa60048 	lw	a2,72(sp)
    3844:	8fa30030 	lw	v1,48(sp)
    3848:	4600218d 	trunc.w.s	$f6,$f4
    384c:	44183000 	mfc1	t8,$f6
    3850:	00000000 	nop
    3854:	a4d804b6 	sh	t8,1206(a2)
    3858:	c7a80028 	lwc1	$f8,40(sp)
    385c:	4600428d 	trunc.w.s	$f10,$f8
    3860:	44085000 	mfc1	t0,$f10
    3864:	00000000 	nop
    3868:	a4c804b8 	sh	t0,1208(a2)
    386c:	c7b0002c 	lwc1	$f16,44(sp)
    3870:	4600848d 	trunc.w.s	$f18,$f16
    3874:	440a9000 	mfc1	t2,$f18
    3878:	00000000 	nop
    387c:	a4ca04ba 	sh	t2,1210(a2)
    3880:	84cb02e4 	lh	t3,740(a2)
    3884:	8faf003c 	lw	t7,60(sp)
    3888:	15600007 	bnez	t3,38a8 <func_80B37494+0xc4>
    388c:	25f8fffb 	addiu	t8,t7,-5
    3890:	90cc0114 	lbu	t4,276(a2)
    3894:	5180003a 	beqzl	t4,3980 <L80B375C4+0x6c>
    3898:	8fbf0014 	lw	ra,20(sp)
    389c:	94cd0112 	lhu	t5,274(a2)
    38a0:	31ae4000 	andi	t6,t5,0x4000
    38a4:	11c00035 	beqz	t6,397c <L80B375C4+0x68>
    38a8:	2f010021 	sltiu	at,t8,33
    38ac:	10200019 	beqz	at,3914 <L80B375C4>
    38b0:	0018c080 	sll	t8,t8,0x2
    38b4:	3c010000 	lui	at,0x0
    38b8:	00380821 	addu	at,at,t8
    38bc:	8c380000 	lw	t8,0(at)
    38c0:	03000008 	jr	t8
    38c4:	00000000 	nop

000038c8 <L80B37578>:
    38c8:	10000012 	b	3914 <L80B375C4>
    38cc:	00001825 	move	v1,zero

000038d0 <L80B37580>:
    38d0:	10000010 	b	3914 <L80B375C4>
    38d4:	24030001 	li	v1,1

000038d8 <L80B37588>:
    38d8:	1000000e 	b	3914 <L80B375C4>
    38dc:	24030002 	li	v1,2

000038e0 <L80B37590>:
    38e0:	1000000c 	b	3914 <L80B375C4>
    38e4:	24030003 	li	v1,3

000038e8 <L80B37598>:
    38e8:	1000000a 	b	3914 <L80B375C4>
    38ec:	24030004 	li	v1,4

000038f0 <L80B375A0>:
    38f0:	10000008 	b	3914 <L80B375C4>
    38f4:	24030005 	li	v1,5

000038f8 <L80B375A8>:
    38f8:	10000006 	b	3914 <L80B375C4>
    38fc:	24030006 	li	v1,6

00003900 <L80B375B0>:
    3900:	10000004 	b	3914 <L80B375C4>
    3904:	24030007 	li	v1,7

00003908 <L80B375B8>:
    3908:	10000002 	b	3914 <L80B375C4>
    390c:	24030008 	li	v1,8

00003910 <L80B375C0>:
    3910:	24030009 	li	v1,9

00003914 <L80B375C4>:
    3914:	04600019 	bltz	v1,397c <L80B375C4+0x68>
    3918:	3c040000 	lui	a0,0x0
    391c:	24840000 	addiu	a0,a0,0
    3920:	27a50018 	addiu	a1,sp,24
    3924:	0c000000 	jal	0 <func_80B33CB0>
    3928:	afa30030 	sw	v1,48(sp)
    392c:	c7a40018 	lwc1	$f4,24(sp)
    3930:	8fa30030 	lw	v1,48(sp)
    3934:	8fa60048 	lw	a2,72(sp)
    3938:	4600218d 	trunc.w.s	$f6,$f4
    393c:	0003c880 	sll	t9,v1,0x2
    3940:	0323c823 	subu	t9,t9,v1
    3944:	0019c840 	sll	t9,t9,0x1
    3948:	44093000 	mfc1	t1,$f6
    394c:	00d91021 	addu	v0,a2,t9
    3950:	a449014c 	sh	t1,332(v0)
    3954:	c7a8001c 	lwc1	$f8,28(sp)
    3958:	4600428d 	trunc.w.s	$f10,$f8
    395c:	440b5000 	mfc1	t3,$f10
    3960:	00000000 	nop
    3964:	a44b014e 	sh	t3,334(v0)
    3968:	c7b00020 	lwc1	$f16,32(sp)
    396c:	4600848d 	trunc.w.s	$f18,$f16
    3970:	440d9000 	mfc1	t5,$f18
    3974:	00000000 	nop
    3978:	a44d0150 	sh	t5,336(v0)
    397c:	8fbf0014 	lw	ra,20(sp)
    3980:	27bd0038 	addiu	sp,sp,56
    3984:	03e00008 	jr	ra
    3988:	00000000 	nop

0000398c <EnWf_Draw>:
    398c:	27bdffa8 	addiu	sp,sp,-88
    3990:	afbf002c 	sw	ra,44(sp)
    3994:	afb00028 	sw	s0,40(sp)
    3998:	afa5005c 	sw	a1,92(sp)
    399c:	8ca50000 	lw	a1,0(a1)
    39a0:	00808025 	move	s0,a0
    39a4:	3c060000 	lui	a2,0x0
    39a8:	24c60000 	addiu	a2,a2,0
    39ac:	27a40040 	addiu	a0,sp,64
    39b0:	2407086d 	li	a3,2157
    39b4:	0c000000 	jal	0 <func_80B33CB0>
    39b8:	afa50050 	sw	a1,80(sp)
    39bc:	8e0f02d4 	lw	t7,724(s0)
    39c0:	8fa80050 	lw	t0,80(sp)
    39c4:	8fb9005c 	lw	t9,92(sp)
    39c8:	55e00005 	bnezl	t7,39e0 <EnWf_Draw+0x54>
    39cc:	8f240000 	lw	a0,0(t9)
    39d0:	86180300 	lh	t8,768(s0)
    39d4:	5700005f 	bnezl	t8,3b54 <EnWf_Draw+0x1c8>
    39d8:	8faf005c 	lw	t7,92(sp)
    39dc:	8f240000 	lw	a0,0(t9)
    39e0:	0c000000 	jal	0 <func_80B33CB0>
    39e4:	afa80050 	sw	t0,80(sp)
    39e8:	8609001c 	lh	t1,28(s0)
    39ec:	8fa80050 	lw	t0,80(sp)
    39f0:	5520001b 	bnezl	t1,3a60 <EnWf_Draw+0xd4>
    39f4:	8d0302c0 	lw	v1,704(t0)
    39f8:	8d0302c0 	lw	v1,704(t0)
    39fc:	3c0bdb06 	lui	t3,0xdb06
    3a00:	356b0020 	ori	t3,t3,0x20
    3a04:	246a0008 	addiu	t2,v1,8
    3a08:	ad0a02c0 	sw	t2,704(t0)
    3a0c:	ac6b0000 	sw	t3,0(v1)
    3a10:	920c0302 	lbu	t4,770(s0)
    3a14:	3c040000 	lui	a0,0x0
    3a18:	3c090000 	lui	t1,0x0
    3a1c:	000c6880 	sll	t5,t4,0x2
    3a20:	008d2021 	addu	a0,a0,t5
    3a24:	8c840000 	lw	a0,0(a0)
    3a28:	3c0100ff 	lui	at,0xff
    3a2c:	3421ffff 	ori	at,at,0xffff
    3a30:	00047900 	sll	t7,a0,0x4
    3a34:	000fc702 	srl	t8,t7,0x1c
    3a38:	0018c880 	sll	t9,t8,0x2
    3a3c:	01394821 	addu	t1,t1,t9
    3a40:	8d290000 	lw	t1,0(t1)
    3a44:	00817024 	and	t6,a0,at
    3a48:	3c018000 	lui	at,0x8000
    3a4c:	01c95021 	addu	t2,t6,t1
    3a50:	01415821 	addu	t3,t2,at
    3a54:	10000019 	b	3abc <EnWf_Draw+0x130>
    3a58:	ac6b0004 	sw	t3,4(v1)
    3a5c:	8d0302c0 	lw	v1,704(t0)
    3a60:	3c0ddb06 	lui	t5,0xdb06
    3a64:	35ad0020 	ori	t5,t5,0x20
    3a68:	246c0008 	addiu	t4,v1,8
    3a6c:	ad0c02c0 	sw	t4,704(t0)
    3a70:	ac6d0000 	sw	t5,0(v1)
    3a74:	920f0302 	lbu	t7,770(s0)
    3a78:	3c040000 	lui	a0,0x0
    3a7c:	3c0b0000 	lui	t3,0x0
    3a80:	000fc080 	sll	t8,t7,0x2
    3a84:	00982021 	addu	a0,a0,t8
    3a88:	8c840000 	lw	a0,0(a0)
    3a8c:	3c0100ff 	lui	at,0xff
    3a90:	3421ffff 	ori	at,at,0xffff
    3a94:	00047100 	sll	t6,a0,0x4
    3a98:	000e4f02 	srl	t1,t6,0x1c
    3a9c:	00095080 	sll	t2,t1,0x2
    3aa0:	016a5821 	addu	t3,t3,t2
    3aa4:	8d6b0000 	lw	t3,0(t3)
    3aa8:	0081c824 	and	t9,a0,at
    3aac:	3c018000 	lui	at,0x8000
    3ab0:	032b6021 	addu	t4,t9,t3
    3ab4:	01816821 	addu	t5,t4,at
    3ab8:	ac6d0004 	sw	t5,4(v1)
    3abc:	8e05018c 	lw	a1,396(s0)
    3ac0:	8e0601a8 	lw	a2,424(s0)
    3ac4:	9207018a 	lbu	a3,394(s0)
    3ac8:	3c0f0000 	lui	t7,0x0
    3acc:	3c180000 	lui	t8,0x0
    3ad0:	27180000 	addiu	t8,t8,0
    3ad4:	25ef0000 	addiu	t7,t7,0
    3ad8:	afaf0010 	sw	t7,16(sp)
    3adc:	afb80014 	sw	t8,20(sp)
    3ae0:	afb00018 	sw	s0,24(sp)
    3ae4:	0c000000 	jal	0 <func_80B33CB0>
    3ae8:	8fa4005c 	lw	a0,92(sp)
    3aec:	860e02e4 	lh	t6,740(s0)
    3af0:	51c00018 	beqzl	t6,3b54 <EnWf_Draw+0x1c8>
    3af4:	8faf005c 	lw	t7,92(sp)
    3af8:	861902e4 	lh	t9,740(s0)
    3afc:	92090114 	lbu	t1,276(s0)
    3b00:	02002825 	move	a1,s0
    3b04:	272bffff 	addiu	t3,t9,-1
    3b08:	a60b02e4 	sh	t3,740(s0)
    3b0c:	860302e4 	lh	v1,740(s0)
    3b10:	252a0001 	addiu	t2,t1,1
    3b14:	a20a0114 	sb	t2,276(s0)
    3b18:	306c0003 	andi	t4,v1,0x3
    3b1c:	1580000c 	bnez	t4,3b50 <EnWf_Draw+0x1c4>
    3b20:	00031083 	sra	v0,v1,0x2
    3b24:	00026880 	sll	t5,v0,0x2
    3b28:	01a26823 	subu	t5,t5,v0
    3b2c:	000d6840 	sll	t5,t5,0x1
    3b30:	020d3021 	addu	a2,s0,t5
    3b34:	24c6014c 	addiu	a2,a2,332
    3b38:	8fa4005c 	lw	a0,92(sp)
    3b3c:	2407004b 	li	a3,75
    3b40:	afa00010 	sw	zero,16(sp)
    3b44:	afa00014 	sw	zero,20(sp)
    3b48:	0c000000 	jal	0 <func_80B33CB0>
    3b4c:	afa20018 	sw	v0,24(sp)
    3b50:	8faf005c 	lw	t7,92(sp)
    3b54:	3c060000 	lui	a2,0x0
    3b58:	24c60000 	addiu	a2,a2,0
    3b5c:	27a40040 	addiu	a0,sp,64
    3b60:	2407088e 	li	a3,2190
    3b64:	0c000000 	jal	0 <func_80B33CB0>
    3b68:	8de50000 	lw	a1,0(t7)
    3b6c:	8fbf002c 	lw	ra,44(sp)
    3b70:	8fb00028 	lw	s0,40(sp)
    3b74:	27bd0058 	addiu	sp,sp,88
    3b78:	03e00008 	jr	ra
    3b7c:	00000000 	nop

00003b80 <func_80B37830>:
    3b80:	27bdffd8 	addiu	sp,sp,-40
    3b84:	afbf001c 	sw	ra,28(sp)
    3b88:	afb00018 	sw	s0,24(sp)
    3b8c:	00a08025 	move	s0,a1
    3b90:	afa40028 	sw	a0,40(sp)
    3b94:	0c000000 	jal	0 <func_80B33CB0>
    3b98:	3c064416 	lui	a2,0x4416
    3b9c:	10400049 	beqz	v0,3cc4 <func_80B37830+0x144>
    3ba0:	02002025 	move	a0,s0
    3ba4:	00402825 	move	a1,v0
    3ba8:	0c000000 	jal	0 <func_80B33CB0>
    3bac:	afa20024 	sw	v0,36(sp)
    3bb0:	860f00b6 	lh	t7,182(s0)
    3bb4:	8fa70024 	lw	a3,36(sp)
    3bb8:	02002025 	move	a0,s0
    3bbc:	004f3023 	subu	a2,v0,t7
    3bc0:	00063400 	sll	a2,a2,0x10
    3bc4:	00063403 	sra	a2,a2,0x10
    3bc8:	a60f0032 	sh	t7,50(s0)
    3bcc:	a7a60022 	sh	a2,34(sp)
    3bd0:	0c000000 	jal	0 <func_80B33CB0>
    3bd4:	24e50024 	addiu	a1,a3,36
    3bd8:	87a60022 	lh	a2,34(sp)
    3bdc:	46000086 	mov.s	$f2,$f0
    3be0:	04c00003 	bltz	a2,3bf0 <func_80B37830+0x70>
    3be4:	00061023 	negu	v0,a2
    3be8:	10000001 	b	3bf0 <func_80B37830+0x70>
    3bec:	00c01025 	move	v0,a2
    3bf0:	28412ee0 	slti	at,v0,12000
    3bf4:	50200010 	beqzl	at,3c38 <func_80B37830+0xb8>
    3bf8:	861800b6 	lh	t8,182(s0)
    3bfc:	46001021 	cvt.d.s	$f0,$f2
    3c00:	3c014079 	lui	at,0x4079
    3c04:	46200004 	sqrt.d	$f0,$f0
    3c08:	44812800 	mtc1	at,$f5
    3c0c:	44802000 	mtc1	zero,$f4
    3c10:	00000000 	nop
    3c14:	4624003c 	c.lt.d	$f0,$f4
    3c18:	00000000 	nop
    3c1c:	45020006 	bc1fl	3c38 <func_80B37830+0xb8>
    3c20:	861800b6 	lh	t8,182(s0)
    3c24:	0c000000 	jal	0 <func_80B33CB0>
    3c28:	02002025 	move	a0,s0
    3c2c:	10000026 	b	3cc8 <func_80B37830+0x148>
    3c30:	24020001 	li	v0,1
    3c34:	861800b6 	lh	t8,182(s0)
    3c38:	00061023 	negu	v0,a2
    3c3c:	02002025 	move	a0,s0
    3c40:	27193fff 	addiu	t9,t8,16383
    3c44:	04c00003 	bltz	a2,3c54 <func_80B37830+0xd4>
    3c48:	a6190032 	sh	t9,50(s0)
    3c4c:	10000001 	b	3c54 <func_80B37830+0xd4>
    3c50:	00c01025 	move	v0,a2
    3c54:	28412000 	slti	at,v0,8192
    3c58:	14200008 	bnez	at,3c7c <func_80B37830+0xfc>
    3c5c:	00000000 	nop
    3c60:	04c00003 	bltz	a2,3c70 <func_80B37830+0xf0>
    3c64:	00061023 	negu	v0,a2
    3c68:	10000001 	b	3c70 <func_80B37830+0xf0>
    3c6c:	00c01025 	move	v0,a2
    3c70:	28416000 	slti	at,v0,24576
    3c74:	14200008 	bnez	at,3c98 <func_80B37830+0x118>
    3c78:	00000000 	nop
    3c7c:	0c000000 	jal	0 <func_80B33CB0>
    3c80:	8fa50028 	lw	a1,40(sp)
    3c84:	c6000068 	lwc1	$f0,104(s0)
    3c88:	24020001 	li	v0,1
    3c8c:	46000180 	add.s	$f6,$f0,$f0
    3c90:	1000000d 	b	3cc8 <func_80B37830+0x148>
    3c94:	e6060068 	swc1	$f6,104(s0)
    3c98:	04c00003 	bltz	a2,3ca8 <func_80B37830+0x128>
    3c9c:	00061023 	negu	v0,a2
    3ca0:	10000001 	b	3ca8 <func_80B37830+0x128>
    3ca4:	00c01025 	move	v0,a2
    3ca8:	28415fff 	slti	at,v0,24575
    3cac:	10200003 	beqz	at,3cbc <func_80B37830+0x13c>
    3cb0:	00000000 	nop
    3cb4:	0c000000 	jal	0 <func_80B33CB0>
    3cb8:	02002025 	move	a0,s0
    3cbc:	10000002 	b	3cc8 <func_80B37830+0x148>
    3cc0:	24020001 	li	v0,1
    3cc4:	00001025 	move	v0,zero
    3cc8:	8fbf001c 	lw	ra,28(sp)
    3ccc:	8fb00018 	lw	s0,24(sp)
    3cd0:	27bd0028 	addiu	sp,sp,40
    3cd4:	03e00008 	jr	ra
    3cd8:	00000000 	nop
    3cdc:	00000000 	nop
