
build/src/overlays/actors/ovl_En_GeldB/z_en_geldb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A35310>:
       0:	03e00008 	jr	ra
       4:	ac8502f4 	sw	a1,756(a0)

00000008 <EnGeldB_Init>:
       8:	27bdfe18 	addiu	sp,sp,-488
       c:	afb10028 	sw	s1,40(sp)
      10:	00a08825 	move	s1,a1
      14:	afbf002c 	sw	ra,44(sp)
      18:	afb00024 	sw	s0,36(sp)
      1c:	3c050000 	lui	a1,0x0
      20:	00808025 	move	s0,a0
      24:	0c000000 	jal	0 <func_80A35310>
      28:	24a50000 	addiu	a1,a1,0
      2c:	44800000 	mtc1	zero,$f0
      30:	3c0e0000 	lui	t6,0x0
      34:	25ce0000 	addiu	t6,t6,0
      38:	3c060000 	lui	a2,0x0
      3c:	44050000 	mfc1	a1,$f0
      40:	44070000 	mfc1	a3,$f0
      44:	ae0e0098 	sw	t6,152(s0)
      48:	24c60000 	addiu	a2,a2,0
      4c:	0c000000 	jal	0 <func_80A35310>
      50:	260400b4 	addiu	a0,s0,180
      54:	860c001c 	lh	t4,28(s0)
      58:	860e001c 	lh	t6,28(s0)
      5c:	3c014120 	lui	at,0x4120
      60:	44812000 	mtc1	at,$f4
      64:	240f00fe 	li	t7,254
      68:	a20f00ae 	sb	t7,174(s0)
      6c:	24180014 	li	t8,20
      70:	24190032 	li	t9,50
      74:	240a0064 	li	t2,100
      78:	a21800af 	sb	t8,175(s0)
      7c:	a61900a8 	sh	t9,168(s0)
      80:	a60a00aa 	sh	t2,170(s0)
      84:	240b0054 	li	t3,84
      88:	318dff00 	andi	t5,t4,0xff00
      8c:	31cf00ff 	andi	t7,t6,0xff
      90:	a20b0117 	sb	t3,279(s0)
      94:	a60d0314 	sh	t5,788(s0)
      98:	a60f001c 	sh	t7,28(s0)
      9c:	a200031a 	sb	zero,794(s0)
      a0:	e604030c 	swc1	$f4,780(s0)
      a4:	240a0018 	li	t2,24
      a8:	2619025c 	addiu	t9,s0,604
      ac:	261801cc 	addiu	t8,s0,460
      b0:	3c060601 	lui	a2,0x601
      b4:	3c070601 	lui	a3,0x601
      b8:	24e7b6d4 	addiu	a3,a3,-18732
      bc:	24c6a458 	addiu	a2,a2,-23464
      c0:	afb80010 	sw	t8,16(sp)
      c4:	afb90014 	sw	t9,20(sp)
      c8:	afaa0018 	sw	t2,24(sp)
      cc:	02202025 	move	a0,s1
      d0:	0c000000 	jal	0 <func_80A35310>
      d4:	26050188 	addiu	a1,s0,392
      d8:	26050320 	addiu	a1,s0,800
      dc:	afa50030 	sw	a1,48(sp)
      e0:	0c000000 	jal	0 <func_80A35310>
      e4:	02202025 	move	a0,s1
      e8:	3c070000 	lui	a3,0x0
      ec:	8fa50030 	lw	a1,48(sp)
      f0:	24e70000 	addiu	a3,a3,0
      f4:	02202025 	move	a0,s1
      f8:	0c000000 	jal	0 <func_80A35310>
      fc:	02003025 	move	a2,s0
     100:	260503ec 	addiu	a1,s0,1004
     104:	afa50030 	sw	a1,48(sp)
     108:	0c000000 	jal	0 <func_80A35310>
     10c:	02202025 	move	a0,s1
     110:	3c070000 	lui	a3,0x0
     114:	260b040c 	addiu	t3,s0,1036
     118:	8fa50030 	lw	a1,48(sp)
     11c:	afab0010 	sw	t3,16(sp)
     120:	24e70000 	addiu	a3,a3,0
     124:	02202025 	move	a0,s1
     128:	0c000000 	jal	0 <func_80A35310>
     12c:	02003025 	move	a2,s0
     130:	2605036c 	addiu	a1,s0,876
     134:	afa50030 	sw	a1,48(sp)
     138:	0c000000 	jal	0 <func_80A35310>
     13c:	02202025 	move	a0,s1
     140:	3c070000 	lui	a3,0x0
     144:	8fa50030 	lw	a1,48(sp)
     148:	24e70000 	addiu	a3,a3,0
     14c:	02202025 	move	a0,s1
     150:	0c000000 	jal	0 <func_80A35310>
     154:	02003025 	move	a2,s0
     158:	240300ff 	li	v1,255
     15c:	240c0040 	li	t4,64
     160:	240d0008 	li	t5,8
     164:	240e0002 	li	t6,2
     168:	27af0044 	addiu	t7,sp,68
     16c:	a3a301d5 	sb	v1,469(sp)
     170:	a3a301d4 	sb	v1,468(sp)
     174:	a3a301d2 	sb	v1,466(sp)
     178:	a3a301d1 	sb	v1,465(sp)
     17c:	a3a301d0 	sb	v1,464(sp)
     180:	a3a301ce 	sb	v1,462(sp)
     184:	a3a301cd 	sb	v1,461(sp)
     188:	a3a301cc 	sb	v1,460(sp)
     18c:	a3a301cb 	sb	v1,459(sp)
     190:	a3a301ca 	sb	v1,458(sp)
     194:	a3a301c9 	sb	v1,457(sp)
     198:	a3a301c8 	sb	v1,456(sp)
     19c:	a3ac01cf 	sb	t4,463(sp)
     1a0:	a3a001d3 	sb	zero,467(sp)
     1a4:	afad01d8 	sw	t5,472(sp)
     1a8:	afa001dc 	sw	zero,476(sp)
     1ac:	afae01e0 	sw	t6,480(sp)
     1b0:	afaf0014 	sw	t7,20(sp)
     1b4:	a3a301d6 	sb	v1,470(sp)
     1b8:	02202025 	move	a0,s1
     1bc:	2605031c 	addiu	a1,s0,796
     1c0:	24060001 	li	a2,1
     1c4:	00003825 	move	a3,zero
     1c8:	afa00010 	sw	zero,16(sp)
     1cc:	0c000000 	jal	0 <func_80A35310>
     1d0:	a3a001d7 	sb	zero,471(sp)
     1d4:	3c053c4c 	lui	a1,0x3c4c
     1d8:	34a5cccc 	ori	a1,a1,0xcccc
     1dc:	0c000000 	jal	0 <func_80A35310>
     1e0:	02002025 	move	a0,s0
     1e4:	0c000000 	jal	0 <func_80A35310>
     1e8:	02002025 	move	a0,s0
     1ec:	86020314 	lh	v0,788(s0)
     1f0:	02202025 	move	a0,s1
     1f4:	50400008 	beqzl	v0,218 <EnGeldB_Init+0x210>
     1f8:	8fbf002c 	lw	ra,44(sp)
     1fc:	0c000000 	jal	0 <func_80A35310>
     200:	00022a03 	sra	a1,v0,0x8
     204:	50400004 	beqzl	v0,218 <EnGeldB_Init+0x210>
     208:	8fbf002c 	lw	ra,44(sp)
     20c:	0c000000 	jal	0 <func_80A35310>
     210:	02002025 	move	a0,s0
     214:	8fbf002c 	lw	ra,44(sp)
     218:	8fb00024 	lw	s0,36(sp)
     21c:	8fb10028 	lw	s1,40(sp)
     220:	03e00008 	jr	ra
     224:	27bd01e8 	addiu	sp,sp,488

00000228 <EnGeldB_Destroy>:
     228:	27bdffe8 	addiu	sp,sp,-24
     22c:	afbf0014 	sw	ra,20(sp)
     230:	afa40018 	sw	a0,24(sp)
     234:	0c000000 	jal	0 <func_80A35310>
     238:	afa5001c 	sw	a1,28(sp)
     23c:	8fae0018 	lw	t6,24(sp)
     240:	8fa4001c 	lw	a0,28(sp)
     244:	0c000000 	jal	0 <func_80A35310>
     248:	8dc5031c 	lw	a1,796(t6)
     24c:	8fa50018 	lw	a1,24(sp)
     250:	8fa4001c 	lw	a0,28(sp)
     254:	0c000000 	jal	0 <func_80A35310>
     258:	24a503ec 	addiu	a1,a1,1004
     25c:	8fa50018 	lw	a1,24(sp)
     260:	8fa4001c 	lw	a0,28(sp)
     264:	0c000000 	jal	0 <func_80A35310>
     268:	24a50320 	addiu	a1,a1,800
     26c:	8fa50018 	lw	a1,24(sp)
     270:	8fa4001c 	lw	a0,28(sp)
     274:	0c000000 	jal	0 <func_80A35310>
     278:	24a5036c 	addiu	a1,a1,876
     27c:	8fbf0014 	lw	ra,20(sp)
     280:	27bd0018 	addiu	sp,sp,24
     284:	03e00008 	jr	ra
     288:	00000000 	nop

0000028c <func_80A3559C>:
     28c:	27bdffc0 	addiu	sp,sp,-64
     290:	afbf0024 	sw	ra,36(sp)
     294:	afb00020 	sw	s0,32(sp)
     298:	afa60048 	sw	a2,72(sp)
     29c:	84ae007e 	lh	t6,126(a1)
     2a0:	84a200b6 	lh	v0,182(a1)
     2a4:	00a08025 	move	s0,a1
     2a8:	8c891c44 	lw	t1,7236(a0)
     2ac:	01c24023 	subu	t0,t6,v0
     2b0:	00084400 	sll	t0,t0,0x10
     2b4:	00084403 	sra	t0,t0,0x10
     2b8:	05010004 	bgez	t0,2cc <func_80A3559C+0x40>
     2bc:	02002825 	move	a1,s0
     2c0:	00084023 	negu	t0,t0
     2c4:	00084400 	sll	t0,t0,0x10
     2c8:	00084403 	sra	t0,t0,0x10
     2cc:	860f008a 	lh	t7,138(s0)
     2d0:	3c0642c8 	lui	a2,0x42c8
     2d4:	24072710 	li	a3,10000
     2d8:	01e21823 	subu	v1,t7,v0
     2dc:	00031c00 	sll	v1,v1,0x10
     2e0:	00031c03 	sra	v1,v1,0x10
     2e4:	04610004 	bgez	v1,2f8 <func_80A3559C+0x6c>
     2e8:	24183e80 	li	t8,16000
     2ec:	00031823 	negu	v1,v1
     2f0:	00031c00 	sll	v1,v1,0x10
     2f4:	00031c03 	sra	v1,v1,0x10
     2f8:	afb80010 	sw	t8,16(sp)
     2fc:	afa20014 	sw	v0,20(sp)
     300:	a7a30034 	sh	v1,52(sp)
     304:	afa40040 	sw	a0,64(sp)
     308:	a7a80036 	sh	t0,54(sp)
     30c:	0c000000 	jal	0 <func_80A35310>
     310:	afa9003c 	sw	t1,60(sp)
     314:	87a30034 	lh	v1,52(sp)
     318:	87a80036 	lh	t0,54(sp)
     31c:	10400014 	beqz	v0,370 <func_80A3559C+0xe4>
     320:	8fa9003c 	lw	t1,60(sp)
     324:	81390842 	lb	t9,2114(t1)
     328:	24010011 	li	at,17
     32c:	8faa0040 	lw	t2,64(sp)
     330:	17210006 	bne	t9,at,34c <func_80A3559C+0xc0>
     334:	3c0b0001 	lui	t3,0x1
     338:	02002025 	move	a0,s0
     33c:	0c000000 	jal	0 <func_80A35310>
     340:	8fa50040 	lw	a1,64(sp)
     344:	100000c2 	b	650 <func_80A3559C+0x3c4>
     348:	24020001 	li	v0,1
     34c:	016a5821 	addu	t3,t3,t2
     350:	8d6b1de4 	lw	t3,7652(t3)
     354:	316c0001 	andi	t4,t3,0x1
     358:	51800006 	beqzl	t4,374 <func_80A3559C+0xe8>
     35c:	240d2aa8 	li	t5,10920
     360:	0c000000 	jal	0 <func_80A35310>
     364:	02002025 	move	a0,s0
     368:	100000b9 	b	650 <func_80A3559C+0x3c4>
     36c:	24020001 	li	v0,1
     370:	240d2aa8 	li	t5,10920
     374:	afad0010 	sw	t5,16(sp)
     378:	860e00b6 	lh	t6,182(s0)
     37c:	afa9003c 	sw	t1,60(sp)
     380:	a7a80036 	sh	t0,54(sp)
     384:	a7a30034 	sh	v1,52(sp)
     388:	8fa40040 	lw	a0,64(sp)
     38c:	02002825 	move	a1,s0
     390:	3c0642c8 	lui	a2,0x42c8
     394:	24075dc0 	li	a3,24000
     398:	0c000000 	jal	0 <func_80A35310>
     39c:	afae0014 	sw	t6,20(sp)
     3a0:	87a30034 	lh	v1,52(sp)
     3a4:	87a80036 	lh	t0,54(sp)
     3a8:	10400036 	beqz	v0,484 <func_80A3559C+0x1f8>
     3ac:	8fa9003c 	lw	t1,60(sp)
     3b0:	960f0088 	lhu	t7,136(s0)
     3b4:	8603008a 	lh	v1,138(s0)
     3b8:	31f80008 	andi	t8,t7,0x8
     3bc:	a6030032 	sh	v1,50(s0)
     3c0:	13000012 	beqz	t8,40c <func_80A3559C+0x180>
     3c4:	a60300b6 	sh	v1,182(s0)
     3c8:	05000003 	bltz	t0,3d8 <func_80A3559C+0x14c>
     3cc:	00081023 	negu	v0,t0
     3d0:	10000001 	b	3d8 <func_80A3559C+0x14c>
     3d4:	01001025 	move	v0,t0
     3d8:	28412ee0 	slti	at,v0,12000
     3dc:	1020000b 	beqz	at,40c <func_80A3559C+0x180>
     3e0:	3c0142b4 	lui	at,0x42b4
     3e4:	44813000 	mtc1	at,$f6
     3e8:	c6040090 	lwc1	$f4,144(s0)
     3ec:	4606203c 	c.lt.s	$f4,$f6
     3f0:	00000000 	nop
     3f4:	45020006 	bc1fl	410 <func_80A3559C+0x184>
     3f8:	81390842 	lb	t9,2114(t1)
     3fc:	0c000000 	jal	0 <func_80A35310>
     400:	02002025 	move	a0,s0
     404:	10000092 	b	650 <func_80A3559C+0x3c4>
     408:	24020001 	li	v0,1
     40c:	81390842 	lb	t9,2114(t1)
     410:	24010011 	li	at,17
     414:	02002025 	move	a0,s0
     418:	57210006 	bnel	t9,at,434 <func_80A3559C+0x1a8>
     41c:	3c0142b4 	lui	at,0x42b4
     420:	0c000000 	jal	0 <func_80A35310>
     424:	8fa50040 	lw	a1,64(sp)
     428:	10000089 	b	650 <func_80A3559C+0x3c4>
     42c:	24020001 	li	v0,1
     430:	3c0142b4 	lui	at,0x42b4
     434:	44815000 	mtc1	at,$f10
     438:	c6080090 	lwc1	$f8,144(s0)
     43c:	8faa0040 	lw	t2,64(sp)
     440:	3c0b0001 	lui	t3,0x1
     444:	460a403c 	c.lt.s	$f8,$f10
     448:	016a5821 	addu	t3,t3,t2
     44c:	45000009 	bc1f	474 <func_80A3559C+0x1e8>
     450:	00000000 	nop
     454:	8d6b1de4 	lw	t3,7652(t3)
     458:	316c0001 	andi	t4,t3,0x1
     45c:	11800005 	beqz	t4,474 <func_80A3559C+0x1e8>
     460:	00000000 	nop
     464:	0c000000 	jal	0 <func_80A35310>
     468:	02002025 	move	a0,s0
     46c:	10000078 	b	650 <func_80A3559C+0x3c4>
     470:	24020001 	li	v0,1
     474:	0c000000 	jal	0 <func_80A35310>
     478:	02002025 	move	a0,s0
     47c:	10000074 	b	650 <func_80A3559C+0x3c4>
     480:	24020001 	li	v0,1
     484:	3c0142a0 	lui	at,0x42a0
     488:	44818000 	mtc1	at,$f16
     48c:	8fa40040 	lw	a0,64(sp)
     490:	02002825 	move	a1,s0
     494:	2406ffff 	li	a2,-1
     498:	24070003 	li	a3,3
     49c:	a7a30034 	sh	v1,52(sp)
     4a0:	a7a80036 	sh	t0,54(sp)
     4a4:	afa9003c 	sw	t1,60(sp)
     4a8:	0c000000 	jal	0 <func_80A35310>
     4ac:	e7b00010 	swc1	$f16,16(sp)
     4b0:	87a30034 	lh	v1,52(sp)
     4b4:	87a80036 	lh	t0,54(sp)
     4b8:	8fa9003c 	lw	t1,60(sp)
     4bc:	10400033 	beqz	v0,58c <func_80A3559C+0x300>
     4c0:	00402825 	move	a1,v0
     4c4:	960d0088 	lhu	t5,136(s0)
     4c8:	8603008a 	lh	v1,138(s0)
     4cc:	29012ee0 	slti	at,t0,12000
     4d0:	31ae0008 	andi	t6,t5,0x8
     4d4:	a6030032 	sh	v1,50(s0)
     4d8:	11c00003 	beqz	t6,4e8 <func_80A3559C+0x25c>
     4dc:	a60300b6 	sh	v1,182(s0)
     4e0:	54200006 	bnezl	at,4fc <func_80A3559C+0x270>
     4e4:	84580000 	lh	t8,0(v0)
     4e8:	844f0000 	lh	t7,0(v0)
     4ec:	240100da 	li	at,218
     4f0:	15e10022 	bne	t7,at,57c <func_80A3559C+0x2f0>
     4f4:	00000000 	nop
     4f8:	84580000 	lh	t8,0(v0)
     4fc:	240100da 	li	at,218
     500:	02002025 	move	a0,s0
     504:	57010019 	bnel	t8,at,56c <func_80A3559C+0x2e0>
     508:	02002025 	move	a0,s0
     50c:	0c000000 	jal	0 <func_80A35310>
     510:	afa50030 	sw	a1,48(sp)
     514:	3c0142a0 	lui	at,0x42a0
     518:	44819000 	mtc1	at,$f18
     51c:	8fa50030 	lw	a1,48(sp)
     520:	4612003c 	c.lt.s	$f0,$f18
     524:	00000000 	nop
     528:	45020010 	bc1fl	56c <func_80A3559C+0x2e0>
     52c:	02002025 	move	a0,s0
     530:	861900b6 	lh	t9,182(s0)
     534:	84aa0032 	lh	t2,50(a1)
     538:	34018000 	li	at,0x8000
     53c:	032a5823 	subu	t3,t9,t2
     540:	01616021 	addu	t4,t3,at
     544:	000c6c00 	sll	t5,t4,0x10
     548:	000d7403 	sra	t6,t5,0x10
     54c:	29c13e80 	slti	at,t6,16000
     550:	50200006 	beqzl	at,56c <func_80A3559C+0x2e0>
     554:	02002025 	move	a0,s0
     558:	0c000000 	jal	0 <func_80A35310>
     55c:	02002025 	move	a0,s0
     560:	1000003b 	b	650 <func_80A3559C+0x3c4>
     564:	24020001 	li	v0,1
     568:	02002025 	move	a0,s0
     56c:	0c000000 	jal	0 <func_80A35310>
     570:	8fa50040 	lw	a1,64(sp)
     574:	10000036 	b	650 <func_80A3559C+0x3c4>
     578:	24020001 	li	v0,1
     57c:	0c000000 	jal	0 <func_80A35310>
     580:	02002025 	move	a0,s0
     584:	10000032 	b	650 <func_80A3559C+0x3c4>
     588:	24020001 	li	v0,1
     58c:	87af004a 	lh	t7,74(sp)
     590:	28611b58 	slti	at,v1,7000
     594:	00001025 	move	v0,zero
     598:	11e0002d 	beqz	t7,650 <func_80A3559C+0x3c4>
     59c:	00000000 	nop
     5a0:	14200005 	bnez	at,5b8 <func_80A3559C+0x32c>
     5a4:	02002025 	move	a0,s0
     5a8:	0c000000 	jal	0 <func_80A35310>
     5ac:	8fa50040 	lw	a1,64(sp)
     5b0:	10000027 	b	650 <func_80A3559C+0x3c4>
     5b4:	24020001 	li	v0,1
     5b8:	3c014234 	lui	at,0x4234
     5bc:	44812000 	mtc1	at,$f4
     5c0:	c6060090 	lwc1	$f6,144(s0)
     5c4:	853800b6 	lh	t8,182(t1)
     5c8:	861900b6 	lh	t9,182(s0)
     5cc:	4604303e 	c.le.s	$f6,$f4
     5d0:	8fa40040 	lw	a0,64(sp)
     5d4:	03191823 	subu	v1,t8,t9
     5d8:	00031c00 	sll	v1,v1,0x10
     5dc:	45000018 	bc1f	640 <func_80A3559C+0x3b4>
     5e0:	00031c03 	sra	v1,v1,0x10
     5e4:	02002825 	move	a1,s0
     5e8:	0c000000 	jal	0 <func_80A35310>
     5ec:	a7a3002e 	sh	v1,46(sp)
     5f0:	14400013 	bnez	v0,640 <func_80A3559C+0x3b4>
     5f4:	87a3002e 	lh	v1,46(sp)
     5f8:	8faa0040 	lw	t2,64(sp)
     5fc:	3c0b0001 	lui	t3,0x1
     600:	016a5821 	addu	t3,t3,t2
     604:	8d6b1de4 	lw	t3,7652(t3)
     608:	316c0007 	andi	t4,t3,0x7
     60c:	15800008 	bnez	t4,630 <func_80A3559C+0x3a4>
     610:	00000000 	nop
     614:	04600003 	bltz	v1,624 <func_80A3559C+0x398>
     618:	00031023 	negu	v0,v1
     61c:	10000001 	b	624 <func_80A3559C+0x398>
     620:	00601025 	move	v0,v1
     624:	284138e0 	slti	at,v0,14560
     628:	10200005 	beqz	at,640 <func_80A3559C+0x3b4>
     62c:	00000000 	nop
     630:	0c000000 	jal	0 <func_80A35310>
     634:	02002025 	move	a0,s0
     638:	10000005 	b	650 <func_80A3559C+0x3c4>
     63c:	24020001 	li	v0,1
     640:	0c000000 	jal	0 <func_80A35310>
     644:	02002025 	move	a0,s0
     648:	10000001 	b	650 <func_80A3559C+0x3c4>
     64c:	24020001 	li	v0,1
     650:	8fbf0024 	lw	ra,36(sp)
     654:	8fb00020 	lw	s0,32(sp)
     658:	27bd0040 	addiu	sp,sp,64
     65c:	03e00008 	jr	ra
     660:	00000000 	nop

00000664 <func_80A35974>:
     664:	27bdffe8 	addiu	sp,sp,-24
     668:	afbf0014 	sw	ra,20(sp)
     66c:	00803825 	move	a3,a0
     670:	3c050601 	lui	a1,0x601
     674:	24a5adf8 	addiu	a1,a1,-21000
     678:	afa70018 	sw	a3,24(sp)
     67c:	24840188 	addiu	a0,a0,392
     680:	0c000000 	jal	0 <func_80A35310>
     684:	24060000 	li	a2,0
     688:	8fa40018 	lw	a0,24(sp)
     68c:	3c0142f0 	lui	at,0x42f0
     690:	44813000 	mtc1	at,$f6
     694:	c484000c 	lwc1	$f4,12(a0)
     698:	94980088 	lhu	t8,136(a0)
     69c:	8c880004 	lw	t0,4(a0)
     6a0:	3c01c000 	lui	at,0xc000
     6a4:	46062200 	add.s	$f8,$f4,$f6
     6a8:	44815000 	mtc1	at,$f10
     6ac:	2401fffe 	li	at,-2
     6b0:	240e000a 	li	t6,10
     6b4:	240f0001 	li	t7,1
     6b8:	3c050000 	lui	a1,0x0
     6bc:	3319fffc 	andi	t9,t8,0xfffc
     6c0:	01014824 	and	t1,t0,at
     6c4:	24a50000 	addiu	a1,a1,0
     6c8:	e4880028 	swc1	$f8,40(a0)
     6cc:	ac8e0300 	sw	t6,768(a0)
     6d0:	a48f0318 	sh	t7,792(a0)
     6d4:	ac8002ec 	sw	zero,748(a0)
     6d8:	a4990088 	sh	t9,136(a0)
     6dc:	ac890004 	sw	t1,4(a0)
     6e0:	0c000000 	jal	0 <func_80A35310>
     6e4:	e48a006c 	swc1	$f10,108(a0)
     6e8:	8fbf0014 	lw	ra,20(sp)
     6ec:	27bd0018 	addiu	sp,sp,24
     6f0:	03e00008 	jr	ra
     6f4:	00000000 	nop

000006f8 <func_80A35A08>:
     6f8:	27bdffc8 	addiu	sp,sp,-56
     6fc:	afbf0034 	sw	ra,52(sp)
     700:	afb00030 	sw	s0,48(sp)
     704:	afa5003c 	sw	a1,60(sp)
     708:	848e0318 	lh	t6,792(a0)
     70c:	00808025 	move	s0,a0
     710:	00a02025 	move	a0,a1
     714:	51c00005 	beqzl	t6,72c <func_80A35A08+0x34>
     718:	3c014396 	lui	at,0x4396
     71c:	0c000000 	jal	0 <func_80A35310>
     720:	86050018 	lh	a1,24(s0)
     724:	10400009 	beqz	v0,74c <func_80A35A08+0x54>
     728:	3c014396 	lui	at,0x4396
     72c:	44812000 	mtc1	at,$f4
     730:	c6060090 	lwc1	$f6,144(s0)
     734:	3c0142b4 	lui	at,0x42b4
     738:	24040038 	li	a0,56
     73c:	4606203c 	c.lt.s	$f4,$f6
     740:	00000000 	nop
     744:	4502000b 	bc1fl	774 <func_80A35A08+0x7c>
     748:	44819000 	mtc1	at,$f18
     74c:	3c0142f0 	lui	at,0x42f0
     750:	44815000 	mtc1	at,$f10
     754:	c6080080 	lwc1	$f8,128(s0)
     758:	8602008a 	lh	v0,138(s0)
     75c:	460a4400 	add.s	$f16,$f8,$f10
     760:	a6020032 	sh	v0,50(s0)
     764:	a60200b6 	sh	v0,182(s0)
     768:	10000005 	b	780 <func_80A35A08+0x88>
     76c:	e6100028 	swc1	$f16,40(s0)
     770:	44819000 	mtc1	at,$f18
     774:	a6000318 	sh	zero,792(s0)
     778:	0c000000 	jal	0 <func_80A35310>
     77c:	e61200c4 	swc1	$f18,196(s0)
     780:	960f0088 	lhu	t7,136(s0)
     784:	02002025 	move	a0,s0
     788:	31f80002 	andi	t8,t7,0x2
     78c:	13000030 	beqz	t8,850 <func_80A35A08+0x158>
     790:	00000000 	nop
     794:	0c000000 	jal	0 <func_80A35310>
     798:	2405387a 	li	a1,14458
     79c:	c6060080 	lwc1	$f6,128(s0)
     7a0:	8e0a0024 	lw	t2,36(s0)
     7a4:	8e190004 	lw	t9,4(s0)
     7a8:	960b0088 	lhu	t3,136(s0)
     7ac:	3c013f80 	lui	at,0x3f80
     7b0:	e6060028 	swc1	$f6,40(s0)
     7b4:	ae0a0038 	sw	t2,56(s0)
     7b8:	44812000 	mtc1	at,$f4
     7bc:	8e0a002c 	lw	t2,44(s0)
     7c0:	8e090028 	lw	t1,40(s0)
     7c4:	44804000 	mtc1	zero,$f8
     7c8:	37280001 	ori	t0,t9,0x1
     7cc:	316cfffd 	andi	t4,t3,0xfffd
     7d0:	ae080004 	sw	t0,4(s0)
     7d4:	a60c0088 	sh	t4,136(s0)
     7d8:	e60401a4 	swc1	$f4,420(s0)
     7dc:	ae0a0040 	sw	t2,64(s0)
     7e0:	ae09003c 	sw	t1,60(s0)
     7e4:	e6080060 	swc1	$f8,96(s0)
     7e8:	3c014000 	lui	at,0x4000
     7ec:	44815000 	mtc1	at,$f10
     7f0:	240d0002 	li	t5,2
     7f4:	afad0010 	sw	t5,16(sp)
     7f8:	afa00020 	sw	zero,32(sp)
     7fc:	afa0001c 	sw	zero,28(sp)
     800:	afa00018 	sw	zero,24(sp)
     804:	8fa4003c 	lw	a0,60(sp)
     808:	02002825 	move	a1,s0
     80c:	260604d0 	addiu	a2,s0,1232
     810:	3c074040 	lui	a3,0x4040
     814:	0c000000 	jal	0 <func_80A35310>
     818:	e7aa0014 	swc1	$f10,20(sp)
     81c:	3c014000 	lui	at,0x4000
     820:	44818000 	mtc1	at,$f16
     824:	240e0002 	li	t6,2
     828:	afae0010 	sw	t6,16(sp)
     82c:	8fa4003c 	lw	a0,60(sp)
     830:	02002825 	move	a1,s0
     834:	260604c4 	addiu	a2,s0,1220
     838:	3c074040 	lui	a3,0x4040
     83c:	afa00018 	sw	zero,24(sp)
     840:	afa0001c 	sw	zero,28(sp)
     844:	afa00020 	sw	zero,32(sp)
     848:	0c000000 	jal	0 <func_80A35310>
     84c:	e7b00014 	swc1	$f16,20(sp)
     850:	0c000000 	jal	0 <func_80A35310>
     854:	26040188 	addiu	a0,s0,392
     858:	50400004 	beqzl	v0,86c <func_80A35A08+0x174>
     85c:	8fbf0034 	lw	ra,52(sp)
     860:	0c000000 	jal	0 <func_80A35310>
     864:	02002025 	move	a0,s0
     868:	8fbf0034 	lw	ra,52(sp)
     86c:	8fb00030 	lw	s0,48(sp)
     870:	27bd0038 	addiu	sp,sp,56
     874:	03e00008 	jr	ra
     878:	00000000 	nop

0000087c <func_80A35B8C>:
     87c:	27bdffd0 	addiu	sp,sp,-48
     880:	afb00028 	sw	s0,40(sp)
     884:	00808025 	move	s0,a0
     888:	afbf002c 	sw	ra,44(sp)
     88c:	3c040601 	lui	a0,0x601
     890:	0c000000 	jal	0 <func_80A35310>
     894:	2484adf8 	addiu	a0,a0,-21000
     898:	44822000 	mtc1	v0,$f4
     89c:	3c01c080 	lui	at,0xc080
     8a0:	44814000 	mtc1	at,$f8
     8a4:	46802120 	cvt.s.w	$f4,$f4
     8a8:	44803000 	mtc1	zero,$f6
     8ac:	3c050601 	lui	a1,0x601
     8b0:	240e0003 	li	t6,3
     8b4:	afae0014 	sw	t6,20(sp)
     8b8:	24a5adf8 	addiu	a1,a1,-21000
     8bc:	44072000 	mfc1	a3,$f4
     8c0:	26040188 	addiu	a0,s0,392
     8c4:	3c06c000 	lui	a2,0xc000
     8c8:	e7a80018 	swc1	$f8,24(sp)
     8cc:	0c000000 	jal	0 <func_80A35310>
     8d0:	e7a60010 	swc1	$f6,16(sp)
     8d4:	8602008a 	lh	v0,138(s0)
     8d8:	240f0014 	li	t7,20
     8dc:	3c050000 	lui	a1,0x0
     8e0:	ae0f0300 	sw	t7,768(s0)
     8e4:	a6000318 	sh	zero,792(s0)
     8e8:	ae0002ec 	sw	zero,748(s0)
     8ec:	24a50000 	addiu	a1,a1,0
     8f0:	02002025 	move	a0,s0
     8f4:	a6020032 	sh	v0,50(s0)
     8f8:	0c000000 	jal	0 <func_80A35310>
     8fc:	a60200b6 	sh	v0,182(s0)
     900:	8fbf002c 	lw	ra,44(sp)
     904:	8fb00028 	lw	s0,40(sp)
     908:	27bd0030 	addiu	sp,sp,48
     90c:	03e00008 	jr	ra
     910:	00000000 	nop

00000914 <func_80A35C24>:
     914:	27bdffc8 	addiu	sp,sp,-56
     918:	afbf0034 	sw	ra,52(sp)
     91c:	afb00030 	sw	s0,48(sp)
     920:	afa5003c 	sw	a1,60(sp)
     924:	3c014120 	lui	at,0x4120
     928:	44812000 	mtc1	at,$f4
     92c:	c48001a0 	lwc1	$f0,416(a0)
     930:	00808025 	move	s0,a0
     934:	46002032 	c.eq.s	$f4,$f0
     938:	00000000 	nop
     93c:	45020005 	bc1fl	954 <func_80A35C24+0x40>
     940:	3c014000 	lui	at,0x4000
     944:	0c000000 	jal	0 <func_80A35310>
     948:	2405386c 	li	a1,14444
     94c:	c60001a0 	lwc1	$f0,416(s0)
     950:	3c014000 	lui	at,0x4000
     954:	44811000 	mtc1	at,$f2
     958:	02002825 	move	a1,s0
     95c:	260604d0 	addiu	a2,s0,1232
     960:	46001032 	c.eq.s	$f2,$f0
     964:	00000000 	nop
     968:	45000019 	bc1f	9d0 <func_80A35C24+0xbc>
     96c:	00000000 	nop
     970:	44803000 	mtc1	zero,$f6
     974:	240e0002 	li	t6,2
     978:	3c074040 	lui	a3,0x4040
     97c:	e606006c 	swc1	$f6,108(s0)
     980:	afa00020 	sw	zero,32(sp)
     984:	afa0001c 	sw	zero,28(sp)
     988:	afa00018 	sw	zero,24(sp)
     98c:	e7a20014 	swc1	$f2,20(sp)
     990:	afae0010 	sw	t6,16(sp)
     994:	0c000000 	jal	0 <func_80A35310>
     998:	8fa4003c 	lw	a0,60(sp)
     99c:	3c014000 	lui	at,0x4000
     9a0:	44814000 	mtc1	at,$f8
     9a4:	240f0002 	li	t7,2
     9a8:	afaf0010 	sw	t7,16(sp)
     9ac:	8fa4003c 	lw	a0,60(sp)
     9b0:	02002825 	move	a1,s0
     9b4:	260604c4 	addiu	a2,s0,1220
     9b8:	3c074040 	lui	a3,0x4040
     9bc:	afa00018 	sw	zero,24(sp)
     9c0:	afa0001c 	sw	zero,28(sp)
     9c4:	afa00020 	sw	zero,32(sp)
     9c8:	0c000000 	jal	0 <func_80A35310>
     9cc:	e7a80014 	swc1	$f8,20(sp)
     9d0:	0c000000 	jal	0 <func_80A35310>
     9d4:	26040188 	addiu	a0,s0,392
     9d8:	10400012 	beqz	v0,a24 <func_80A35C24+0x110>
     9dc:	3c014396 	lui	at,0x4396
     9e0:	c60a0080 	lwc1	$f10,128(s0)
     9e4:	44818000 	mtc1	at,$f16
     9e8:	44802000 	mtc1	zero,$f4
     9ec:	26040028 	addiu	a0,s0,40
     9f0:	46105480 	add.s	$f18,$f10,$f16
     9f4:	3c063f80 	lui	a2,0x3f80
     9f8:	3c0741a4 	lui	a3,0x41a4
     9fc:	e7a40010 	swc1	$f4,16(sp)
     a00:	44059000 	mfc1	a1,$f18
     a04:	0c000000 	jal	0 <func_80A35310>
     a08:	00000000 	nop
     a0c:	8e180300 	lw	t8,768(s0)
     a10:	2719ffff 	addiu	t9,t8,-1
     a14:	17200003 	bnez	t9,a24 <func_80A35C24+0x110>
     a18:	ae190300 	sw	t9,768(s0)
     a1c:	0c000000 	jal	0 <func_80A35310>
     a20:	02002025 	move	a0,s0
     a24:	8fbf0034 	lw	ra,52(sp)
     a28:	8fb00030 	lw	s0,48(sp)
     a2c:	27bd0038 	addiu	sp,sp,56
     a30:	03e00008 	jr	ra
     a34:	00000000 	nop

00000a38 <func_80A35D48>:
     a38:	27bdffe8 	addiu	sp,sp,-24
     a3c:	afbf0014 	sw	ra,20(sp)
     a40:	00803825 	move	a3,a0
     a44:	3c050601 	lui	a1,0x601
     a48:	24a5b6d4 	addiu	a1,a1,-18732
     a4c:	afa70018 	sw	a3,24(sp)
     a50:	24840188 	addiu	a0,a0,392
     a54:	0c000000 	jal	0 <func_80A35310>
     a58:	3c06c080 	lui	a2,0xc080
     a5c:	8fa70018 	lw	a3,24(sp)
     a60:	240e0005 	li	t6,5
     a64:	0c000000 	jal	0 <func_80A35310>
     a68:	acee02ec 	sw	t6,748(a3)
     a6c:	3c014120 	lui	at,0x4120
     a70:	44812000 	mtc1	at,$f4
     a74:	3c0140a0 	lui	at,0x40a0
     a78:	44814000 	mtc1	at,$f8
     a7c:	46040182 	mul.s	$f6,$f0,$f4
     a80:	8fa40018 	lw	a0,24(sp)
     a84:	44809000 	mtc1	zero,$f18
     a88:	3c050000 	lui	a1,0x0
     a8c:	849900b6 	lh	t9,182(a0)
     a90:	24a50000 	addiu	a1,a1,0
     a94:	e4920068 	swc1	$f18,104(a0)
     a98:	46083280 	add.s	$f10,$f6,$f8
     a9c:	a4990032 	sh	t9,50(a0)
     aa0:	4600540d 	trunc.w.s	$f16,$f10
     aa4:	44188000 	mfc1	t8,$f16
     aa8:	0c000000 	jal	0 <func_80A35310>
     aac:	ac980300 	sw	t8,768(a0)
     ab0:	8fbf0014 	lw	ra,20(sp)
     ab4:	27bd0018 	addiu	sp,sp,24
     ab8:	03e00008 	jr	ra
     abc:	00000000 	nop

00000ac0 <func_80A35DD0>:
     ac0:	27bdffd0 	addiu	sp,sp,-48
     ac4:	afbf001c 	sw	ra,28(sp)
     ac8:	afb00018 	sw	s0,24(sp)
     acc:	afa50034 	sw	a1,52(sp)
     ad0:	8caf1c44 	lw	t7,7236(a1)
     ad4:	00808025 	move	s0,a0
     ad8:	24840188 	addiu	a0,a0,392
     adc:	0c000000 	jal	0 <func_80A35310>
     ae0:	afaf002c 	sw	t7,44(sp)
     ae4:	860402fa 	lh	a0,762(s0)
     ae8:	50800014 	beqzl	a0,b3c <func_80A35DD0+0x7c>
     aec:	860b008a 	lh	t3,138(s0)
     af0:	8618008a 	lh	t8,138(s0)
     af4:	861900b6 	lh	t9,182(s0)
     af8:	860904de 	lh	t1,1246(s0)
     afc:	248affff 	addiu	t2,a0,-1
     b00:	03194023 	subu	t0,t8,t9
     b04:	01091823 	subu	v1,t0,t1
     b08:	00031c00 	sll	v1,v1,0x10
     b0c:	00031c03 	sra	v1,v1,0x10
     b10:	04600003 	bltz	v1,b20 <func_80A35DD0+0x60>
     b14:	00031023 	negu	v0,v1
     b18:	10000001 	b	b20 <func_80A35DD0+0x60>
     b1c:	00601025 	move	v0,v1
     b20:	28412001 	slti	at,v0,8193
     b24:	54200004 	bnezl	at,b38 <func_80A35DD0+0x78>
     b28:	a60002fa 	sh	zero,762(s0)
     b2c:	10000097 	b	d8c <func_80A35DD0+0x2cc>
     b30:	a60a02fa 	sh	t2,762(s0)
     b34:	a60002fa 	sh	zero,762(s0)
     b38:	860b008a 	lh	t3,138(s0)
     b3c:	860c00b6 	lh	t4,182(s0)
     b40:	8fa40034 	lw	a0,52(sp)
     b44:	02002825 	move	a1,s0
     b48:	016c1823 	subu	v1,t3,t4
     b4c:	00031c00 	sll	v1,v1,0x10
     b50:	00031c03 	sra	v1,v1,0x10
     b54:	0c000000 	jal	0 <func_80A35310>
     b58:	a7a30026 	sh	v1,38(sp)
     b5c:	1440008b 	bnez	v0,d8c <func_80A35DD0+0x2cc>
     b60:	87a30026 	lh	v1,38(sp)
     b64:	860202f8 	lh	v0,760(s0)
     b68:	8fa40034 	lw	a0,52(sp)
     b6c:	02002825 	move	a1,s0
     b70:	1040000b 	beqz	v0,ba0 <func_80A35DD0+0xe0>
     b74:	244dffff 	addiu	t5,v0,-1
     b78:	04600003 	bltz	v1,b88 <func_80A35DD0+0xc8>
     b7c:	a60d02f8 	sh	t5,760(s0)
     b80:	10000002 	b	b8c <func_80A35DD0+0xcc>
     b84:	00601025 	move	v0,v1
     b88:	00031023 	negu	v0,v1
     b8c:	28411ffe 	slti	at,v0,8190
     b90:	5020007f 	beqzl	at,d90 <func_80A35DD0+0x2d0>
     b94:	8fbf001c 	lw	ra,28(sp)
     b98:	10000005 	b	bb0 <func_80A35DD0+0xf0>
     b9c:	a60002f8 	sh	zero,760(s0)
     ba0:	0c000000 	jal	0 <func_80A35310>
     ba4:	00003025 	move	a2,zero
     ba8:	54400079 	bnezl	v0,d90 <func_80A35DD0+0x2d0>
     bac:	8fbf001c 	lw	ra,28(sp)
     bb0:	8fa2002c 	lw	v0,44(sp)
     bb4:	3c0142c8 	lui	at,0x42c8
     bb8:	44813000 	mtc1	at,$f6
     bbc:	c6040090 	lwc1	$f4,144(s0)
     bc0:	860f00b6 	lh	t7,182(s0)
     bc4:	844e00b6 	lh	t6,182(v0)
     bc8:	4606203c 	c.lt.s	$f4,$f6
     bcc:	01cf1823 	subu	v1,t6,t7
     bd0:	00031c00 	sll	v1,v1,0x10
     bd4:	45000012 	bc1f	c20 <func_80A35DD0+0x160>
     bd8:	00031c03 	sra	v1,v1,0x10
     bdc:	80580843 	lb	t8,2115(v0)
     be0:	53000010 	beqzl	t8,c24 <func_80A35DD0+0x164>
     be4:	8e190300 	lw	t9,768(s0)
     be8:	04600003 	bltz	v1,bf8 <func_80A35DD0+0x138>
     bec:	00031023 	negu	v0,v1
     bf0:	10000001 	b	bf8 <func_80A35DD0+0x138>
     bf4:	00601025 	move	v0,v1
     bf8:	28411f40 	slti	at,v0,8000
     bfc:	54200009 	bnezl	at,c24 <func_80A35DD0+0x164>
     c00:	8e190300 	lw	t9,768(s0)
     c04:	8602008a 	lh	v0,138(s0)
     c08:	02002025 	move	a0,s0
     c0c:	a6020032 	sh	v0,50(s0)
     c10:	0c000000 	jal	0 <func_80A35310>
     c14:	a60200b6 	sh	v0,182(s0)
     c18:	1000005d 	b	d90 <func_80A35DD0+0x2d0>
     c1c:	8fbf001c 	lw	ra,28(sp)
     c20:	8e190300 	lw	t9,768(s0)
     c24:	02002025 	move	a0,s0
     c28:	24051555 	li	a1,5461
     c2c:	2728ffff 	addiu	t0,t9,-1
     c30:	15000056 	bnez	t0,d8c <func_80A35DD0+0x2cc>
     c34:	ae080300 	sw	t0,768(s0)
     c38:	0c000000 	jal	0 <func_80A35310>
     c3c:	a7a30026 	sh	v1,38(sp)
     c40:	10400046 	beqz	v0,d5c <func_80A35DD0+0x29c>
     c44:	87a30026 	lh	v1,38(sp)
     c48:	3c014352 	lui	at,0x4352
     c4c:	44814000 	mtc1	at,$f8
     c50:	c6000090 	lwc1	$f0,144(s0)
     c54:	3c014316 	lui	at,0x4316
     c58:	4608003c 	c.lt.s	$f0,$f8
     c5c:	00000000 	nop
     c60:	4500002d 	bc1f	d18 <func_80A35DD0+0x258>
     c64:	00000000 	nop
     c68:	44815000 	mtc1	at,$f10
     c6c:	00000000 	nop
     c70:	4600503c 	c.lt.s	$f10,$f0
     c74:	00000000 	nop
     c78:	45000027 	bc1f	d18 <func_80A35DD0+0x258>
     c7c:	00000000 	nop
     c80:	0c000000 	jal	0 <func_80A35310>
     c84:	a7a30026 	sh	v1,38(sp)
     c88:	3c010000 	lui	at,0x0
     c8c:	c4300000 	lwc1	$f16,0(at)
     c90:	87a30026 	lh	v1,38(sp)
     c94:	8fa40034 	lw	a0,52(sp)
     c98:	4610003c 	c.lt.s	$f0,$f16
     c9c:	02002825 	move	a1,s0
     ca0:	4500001d 	bc1f	d18 <func_80A35DD0+0x258>
     ca4:	00000000 	nop
     ca8:	0c000000 	jal	0 <func_80A35310>
     cac:	a7a30026 	sh	v1,38(sp)
     cb0:	14400011 	bnez	v0,cf8 <func_80A35DD0+0x238>
     cb4:	87a30026 	lh	v1,38(sp)
     cb8:	0c000000 	jal	0 <func_80A35310>
     cbc:	a7a30026 	sh	v1,38(sp)
     cc0:	3c013f00 	lui	at,0x3f00
     cc4:	44819000 	mtc1	at,$f18
     cc8:	87a30026 	lh	v1,38(sp)
     ccc:	4600903c 	c.lt.s	$f18,$f0
     cd0:	00000000 	nop
     cd4:	45010008 	bc1t	cf8 <func_80A35DD0+0x238>
     cd8:	00000000 	nop
     cdc:	04600003 	bltz	v1,cec <func_80A35DD0+0x22c>
     ce0:	00031023 	negu	v0,v1
     ce4:	10000001 	b	cec <func_80A35DD0+0x22c>
     ce8:	00601025 	move	v0,v1
     cec:	284138e0 	slti	at,v0,14560
     cf0:	10200005 	beqz	at,d08 <func_80A35DD0+0x248>
     cf4:	00000000 	nop
     cf8:	0c000000 	jal	0 <func_80A35310>
     cfc:	02002025 	move	a0,s0
     d00:	10000019 	b	d68 <func_80A35DD0+0x2a8>
     d04:	8faa0034 	lw	t2,52(sp)
     d08:	0c000000 	jal	0 <func_80A35310>
     d0c:	02002025 	move	a0,s0
     d10:	10000015 	b	d68 <func_80A35DD0+0x2a8>
     d14:	8faa0034 	lw	t2,52(sp)
     d18:	0c000000 	jal	0 <func_80A35310>
     d1c:	00000000 	nop
     d20:	3c010000 	lui	at,0x0
     d24:	c4240000 	lwc1	$f4,0(at)
     d28:	02002025 	move	a0,s0
     d2c:	4600203c 	c.lt.s	$f4,$f0
     d30:	00000000 	nop
     d34:	45000005 	bc1f	d4c <func_80A35DD0+0x28c>
     d38:	00000000 	nop
     d3c:	0c000000 	jal	0 <func_80A35310>
     d40:	8fa50034 	lw	a1,52(sp)
     d44:	10000008 	b	d68 <func_80A35DD0+0x2a8>
     d48:	8faa0034 	lw	t2,52(sp)
     d4c:	0c000000 	jal	0 <func_80A35310>
     d50:	02002025 	move	a0,s0
     d54:	10000004 	b	d68 <func_80A35DD0+0x2a8>
     d58:	8faa0034 	lw	t2,52(sp)
     d5c:	0c000000 	jal	0 <func_80A35310>
     d60:	02002025 	move	a0,s0
     d64:	8faa0034 	lw	t2,52(sp)
     d68:	3c0b0001 	lui	t3,0x1
     d6c:	02002025 	move	a0,s0
     d70:	016a5821 	addu	t3,t3,t2
     d74:	8d6b1de4 	lw	t3,7652(t3)
     d78:	316c005f 	andi	t4,t3,0x5f
     d7c:	55800004 	bnezl	t4,d90 <func_80A35DD0+0x2d0>
     d80:	8fbf001c 	lw	ra,28(sp)
     d84:	0c000000 	jal	0 <func_80A35310>
     d88:	240539c6 	li	a1,14790
     d8c:	8fbf001c 	lw	ra,28(sp)
     d90:	8fb00018 	lw	s0,24(sp)
     d94:	27bd0030 	addiu	sp,sp,48
     d98:	03e00008 	jr	ra
     d9c:	00000000 	nop

00000da0 <func_80A360B0>:
     da0:	27bdffd8 	addiu	sp,sp,-40
     da4:	afa40028 	sw	a0,40(sp)
     da8:	afbf0024 	sw	ra,36(sp)
     dac:	3c040600 	lui	a0,0x600
     db0:	afa5002c 	sw	a1,44(sp)
     db4:	0c000000 	jal	0 <func_80A35310>
     db8:	248424e8 	addiu	a0,a0,9448
     dbc:	44822000 	mtc1	v0,$f4
     dc0:	3c01c080 	lui	at,0xc080
     dc4:	44814000 	mtc1	at,$f8
     dc8:	468021a0 	cvt.s.w	$f6,$f4
     dcc:	8fa40028 	lw	a0,40(sp)
     dd0:	3c050600 	lui	a1,0x600
     dd4:	240e0001 	li	t6,1
     dd8:	afae0014 	sw	t6,20(sp)
     ddc:	24a524e8 	addiu	a1,a1,9448
     de0:	e7a60010 	swc1	$f6,16(sp)
     de4:	3c063f80 	lui	a2,0x3f80
     de8:	24070000 	li	a3,0
     dec:	e7a80018 	swc1	$f8,24(sp)
     df0:	0c000000 	jal	0 <func_80A35310>
     df4:	24840188 	addiu	a0,a0,392
     df8:	8fa40028 	lw	a0,40(sp)
     dfc:	240f0008 	li	t7,8
     e00:	3c050000 	lui	a1,0x0
     e04:	24a50000 	addiu	a1,a1,0
     e08:	0c000000 	jal	0 <func_80A35310>
     e0c:	ac8f02ec 	sw	t7,748(a0)
     e10:	8fbf0024 	lw	ra,36(sp)
     e14:	27bd0028 	addiu	sp,sp,40
     e18:	03e00008 	jr	ra
     e1c:	00000000 	nop

00000e20 <func_80A36130>:
     e20:	27bdffb8 	addiu	sp,sp,-72
     e24:	afb00020 	sw	s0,32(sp)
     e28:	afbf0024 	sw	ra,36(sp)
     e2c:	8cae1c44 	lw	t6,7236(a1)
     e30:	00808025 	move	s0,a0
     e34:	00a03025 	move	a2,a1
     e38:	00a02025 	move	a0,a1
     e3c:	02002825 	move	a1,s0
     e40:	afa6004c 	sw	a2,76(sp)
     e44:	0c000000 	jal	0 <func_80A35310>
     e48:	afae0034 	sw	t6,52(sp)
     e4c:	1440011a 	bnez	v0,12b8 <func_80A36130+0x498>
     e50:	260400b6 	addiu	a0,s0,182
     e54:	8605008a 	lh	a1,138(s0)
     e58:	afa00010 	sw	zero,16(sp)
     e5c:	24060001 	li	a2,1
     e60:	0c000000 	jal	0 <func_80A35310>
     e64:	240702ee 	li	a3,750
     e68:	3c014220 	lui	at,0x4220
     e6c:	44812000 	mtc1	at,$f4
     e70:	c6000090 	lwc1	$f0,144(s0)
     e74:	860f00b6 	lh	t7,182(s0)
     e78:	26040068 	addiu	a0,s0,104
     e7c:	4604003e 	c.le.s	$f0,$f4
     e80:	3c05c100 	lui	a1,0xc100
     e84:	3c063f80 	lui	a2,0x3f80
     e88:	3c01425c 	lui	at,0x425c
     e8c:	45000007 	bc1f	eac <func_80A36130+0x8c>
     e90:	a60f0032 	sh	t7,50(s0)
     e94:	44800000 	mtc1	zero,$f0
     e98:	3c073fc0 	lui	a3,0x3fc0
     e9c:	0c000000 	jal	0 <func_80A35310>
     ea0:	e7a00010 	swc1	$f0,16(sp)
     ea4:	10000017 	b	f04 <func_80A36130+0xe4>
     ea8:	3c013e00 	lui	at,0x3e00
     eac:	44813000 	mtc1	at,$f6
     eb0:	3c054100 	lui	a1,0x4100
     eb4:	3c073fc0 	lui	a3,0x3fc0
     eb8:	4600303c 	c.lt.s	$f6,$f0
     ebc:	26040068 	addiu	a0,s0,104
     ec0:	3c063f80 	lui	a2,0x3f80
     ec4:	45020009 	bc1fl	eec <func_80A36130+0xcc>
     ec8:	44800000 	mtc1	zero,$f0
     ecc:	44800000 	mtc1	zero,$f0
     ed0:	26040068 	addiu	a0,s0,104
     ed4:	3c063f80 	lui	a2,0x3f80
     ed8:	0c000000 	jal	0 <func_80A35310>
     edc:	e7a00010 	swc1	$f0,16(sp)
     ee0:	10000008 	b	f04 <func_80A36130+0xe4>
     ee4:	3c013e00 	lui	at,0x3e00
     ee8:	44800000 	mtc1	zero,$f0
     eec:	3c0740d4 	lui	a3,0x40d4
     ef0:	34e7cccd 	ori	a3,a3,0xcccd
     ef4:	44050000 	mfc1	a1,$f0
     ef8:	0c000000 	jal	0 <func_80A35310>
     efc:	e7a00010 	swc1	$f0,16(sp)
     f00:	3c013e00 	lui	at,0x3e00
     f04:	44815000 	mtc1	at,$f10
     f08:	c6080068 	lwc1	$f8,104(s0)
     f0c:	8fa20034 	lw	v0,52(sp)
     f10:	861900b6 	lh	t9,182(s0)
     f14:	460a4402 	mul.s	$f16,$f8,$f10
     f18:	3c014316 	lui	at,0x4316
     f1c:	44812000 	mtc1	at,$f4
     f20:	e61001a4 	swc1	$f16,420(s0)
     f24:	845800b6 	lh	t8,182(v0)
     f28:	03191823 	subu	v1,t8,t9
     f2c:	00031c00 	sll	v1,v1,0x10
     f30:	00031c03 	sra	v1,v1,0x10
     f34:	04630005 	bgezl	v1,f4c <func_80A36130+0x12c>
     f38:	c6120090 	lwc1	$f18,144(s0)
     f3c:	00031823 	negu	v1,v1
     f40:	00031c00 	sll	v1,v1,0x10
     f44:	00031c03 	sra	v1,v1,0x10
     f48:	c6120090 	lwc1	$f18,144(s0)
     f4c:	4604903c 	c.lt.s	$f18,$f4
     f50:	00000000 	nop
     f54:	45020018 	bc1fl	fb8 <func_80A36130+0x198>
     f58:	c60801a0 	lwc1	$f8,416(s0)
     f5c:	80480843 	lb	t0,2115(v0)
     f60:	28611f40 	slti	at,v1,8000
     f64:	51000014 	beqzl	t0,fb8 <func_80A36130+0x198>
     f68:	c60801a0 	lwc1	$f8,416(s0)
     f6c:	54200012 	bnezl	at,fb8 <func_80A36130+0x198>
     f70:	c60801a0 	lwc1	$f8,416(s0)
     f74:	8602008a 	lh	v0,138(s0)
     f78:	a6020032 	sh	v0,50(s0)
     f7c:	a60200b6 	sh	v0,182(s0)
     f80:	0c000000 	jal	0 <func_80A35310>
     f84:	a7a3003a 	sh	v1,58(sp)
     f88:	3c010000 	lui	at,0x0
     f8c:	c4260000 	lwc1	$f6,0(at)
     f90:	87a3003a 	lh	v1,58(sp)
     f94:	4600303c 	c.lt.s	$f6,$f0
     f98:	00000000 	nop
     f9c:	45020006 	bc1fl	fb8 <func_80A36130+0x198>
     fa0:	c60801a0 	lwc1	$f8,416(s0)
     fa4:	0c000000 	jal	0 <func_80A35310>
     fa8:	02002025 	move	a0,s0
     fac:	100000c3 	b	12bc <func_80A36130+0x49c>
     fb0:	8fbf0024 	lw	ra,36(sp)
     fb4:	c60801a0 	lwc1	$f8,416(s0)
     fb8:	a7a3003a 	sh	v1,58(sp)
     fbc:	26040188 	addiu	a0,s0,392
     fc0:	4600428d 	trunc.w.s	$f10,$f8
     fc4:	440a5000 	mfc1	t2,$f10
     fc8:	0c000000 	jal	0 <func_80A35310>
     fcc:	afaa0044 	sw	t2,68(sp)
     fd0:	44801000 	mtc1	zero,$f2
     fd4:	c60001a4 	lwc1	$f0,420(s0)
     fd8:	87a3003a 	lh	v1,58(sp)
     fdc:	02002025 	move	a0,s0
     fe0:	4600103e 	c.le.s	$f2,$f0
     fe4:	240511c7 	li	a1,4551
     fe8:	45020004 	bc1fl	ffc <func_80A36130+0x1dc>
     fec:	46000407 	neg.s	$f16,$f0
     ff0:	10000003 	b	1000 <func_80A36130+0x1e0>
     ff4:	e7a00028 	swc1	$f0,40(sp)
     ff8:	46000407 	neg.s	$f16,$f0
     ffc:	e7b00028 	swc1	$f16,40(sp)
    1000:	c61201a0 	lwc1	$f18,416(s0)
    1004:	c7a40028 	lwc1	$f4,40(sp)
    1008:	4600103e 	c.le.s	$f2,$f0
    100c:	46049181 	sub.s	$f6,$f18,$f4
    1010:	4600320d 	trunc.w.s	$f8,$f6
    1014:	440c4000 	mfc1	t4,$f8
    1018:	45000003 	bc1f	1028 <func_80A36130+0x208>
    101c:	afac0040 	sw	t4,64(sp)
    1020:	10000003 	b	1030 <func_80A36130+0x210>
    1024:	e7a00028 	swc1	$f0,40(sp)
    1028:	46000287 	neg.s	$f10,$f0
    102c:	e7aa0028 	swc1	$f10,40(sp)
    1030:	0c000000 	jal	0 <func_80A35310>
    1034:	a7a3003a 	sh	v1,58(sp)
    1038:	14400012 	bnez	v0,1084 <func_80A36130+0x264>
    103c:	87a3003a 	lh	v1,58(sp)
    1040:	0c000000 	jal	0 <func_80A35310>
    1044:	00000000 	nop
    1048:	3c013f00 	lui	at,0x3f00
    104c:	44818000 	mtc1	at,$f16
    1050:	00000000 	nop
    1054:	4600803c 	c.lt.s	$f16,$f0
    1058:	00000000 	nop
    105c:	45000005 	bc1f	1074 <func_80A36130+0x254>
    1060:	00000000 	nop
    1064:	0c000000 	jal	0 <func_80A35310>
    1068:	02002025 	move	a0,s0
    106c:	1000003e 	b	1168 <func_80A36130+0x348>
    1070:	8fa4004c 	lw	a0,76(sp)
    1074:	0c000000 	jal	0 <func_80A35310>
    1078:	02002025 	move	a0,s0
    107c:	1000003a 	b	1168 <func_80A36130+0x348>
    1080:	8fa4004c 	lw	a0,76(sp)
    1084:	3c0142b4 	lui	at,0x42b4
    1088:	44812000 	mtc1	at,$f4
    108c:	c6120090 	lwc1	$f18,144(s0)
    1090:	8fa4004c 	lw	a0,76(sp)
    1094:	02002825 	move	a1,s0
    1098:	4604903c 	c.lt.s	$f18,$f4
    109c:	00000000 	nop
    10a0:	45020031 	bc1fl	1168 <func_80A36130+0x348>
    10a4:	8fa4004c 	lw	a0,76(sp)
    10a8:	0c000000 	jal	0 <func_80A35310>
    10ac:	a7a3003a 	sh	v1,58(sp)
    10b0:	14400018 	bnez	v0,1114 <func_80A36130+0x2f4>
    10b4:	87a3003a 	lh	v1,58(sp)
    10b8:	0c000000 	jal	0 <func_80A35310>
    10bc:	a7a3003a 	sh	v1,58(sp)
    10c0:	3c010000 	lui	at,0x0
    10c4:	c4260000 	lwc1	$f6,0(at)
    10c8:	3c014234 	lui	at,0x4234
    10cc:	87a3003a 	lh	v1,58(sp)
    10d0:	4600303c 	c.lt.s	$f6,$f0
    10d4:	00000000 	nop
    10d8:	4501000a 	bc1t	1104 <func_80A36130+0x2e4>
    10dc:	00000000 	nop
    10e0:	44814000 	mtc1	at,$f8
    10e4:	c60a0090 	lwc1	$f10,144(s0)
    10e8:	286138e0 	slti	at,v1,14560
    10ec:	4608503e 	c.le.s	$f10,$f8
    10f0:	00000000 	nop
    10f4:	45020008 	bc1fl	1118 <func_80A36130+0x2f8>
    10f8:	8fa4004c 	lw	a0,76(sp)
    10fc:	50200006 	beqzl	at,1118 <func_80A36130+0x2f8>
    1100:	8fa4004c 	lw	a0,76(sp)
    1104:	0c000000 	jal	0 <func_80A35310>
    1108:	02002025 	move	a0,s0
    110c:	10000016 	b	1168 <func_80A36130+0x348>
    1110:	8fa4004c 	lw	a0,76(sp)
    1114:	8fa4004c 	lw	a0,76(sp)
    1118:	0c000000 	jal	0 <func_80A35310>
    111c:	02002825 	move	a1,s0
    1120:	1040000e 	beqz	v0,115c <func_80A36130+0x33c>
    1124:	00000000 	nop
    1128:	0c000000 	jal	0 <func_80A35310>
    112c:	00000000 	nop
    1130:	3c013f00 	lui	at,0x3f00
    1134:	44818000 	mtc1	at,$f16
    1138:	00000000 	nop
    113c:	4600803c 	c.lt.s	$f16,$f0
    1140:	00000000 	nop
    1144:	45000005 	bc1f	115c <func_80A36130+0x33c>
    1148:	00000000 	nop
    114c:	0c000000 	jal	0 <func_80A35310>
    1150:	02002025 	move	a0,s0
    1154:	10000004 	b	1168 <func_80A36130+0x348>
    1158:	8fa4004c 	lw	a0,76(sp)
    115c:	0c000000 	jal	0 <func_80A35310>
    1160:	02002025 	move	a0,s0
    1164:	8fa4004c 	lw	a0,76(sp)
    1168:	02002825 	move	a1,s0
    116c:	0c000000 	jal	0 <func_80A35310>
    1170:	00003025 	move	a2,zero
    1174:	14400050 	bnez	v0,12b8 <func_80A36130+0x498>
    1178:	3c014352 	lui	at,0x4352
    117c:	c6000090 	lwc1	$f0,144(s0)
    1180:	44819000 	mtc1	at,$f18
    1184:	3c014316 	lui	at,0x4316
    1188:	4612003c 	c.lt.s	$f0,$f18
    118c:	00000000 	nop
    1190:	45020025 	bc1fl	1228 <func_80A36130+0x408>
    1194:	8fad004c 	lw	t5,76(sp)
    1198:	44812000 	mtc1	at,$f4
    119c:	02002025 	move	a0,s0
    11a0:	4600203c 	c.lt.s	$f4,$f0
    11a4:	00000000 	nop
    11a8:	4502001f 	bc1fl	1228 <func_80A36130+0x408>
    11ac:	8fad004c 	lw	t5,76(sp)
    11b0:	0c000000 	jal	0 <func_80A35310>
    11b4:	2405071c 	li	a1,1820
    11b8:	1040001a 	beqz	v0,1224 <func_80A36130+0x404>
    11bc:	8fa4004c 	lw	a0,76(sp)
    11c0:	0c000000 	jal	0 <func_80A35310>
    11c4:	02002825 	move	a1,s0
    11c8:	10400012 	beqz	v0,1214 <func_80A36130+0x3f4>
    11cc:	00000000 	nop
    11d0:	0c000000 	jal	0 <func_80A35310>
    11d4:	00000000 	nop
    11d8:	3c013f00 	lui	at,0x3f00
    11dc:	44813000 	mtc1	at,$f6
    11e0:	00000000 	nop
    11e4:	4600303c 	c.lt.s	$f6,$f0
    11e8:	00000000 	nop
    11ec:	45000005 	bc1f	1204 <func_80A36130+0x3e4>
    11f0:	00000000 	nop
    11f4:	0c000000 	jal	0 <func_80A35310>
    11f8:	02002025 	move	a0,s0
    11fc:	1000000a 	b	1228 <func_80A36130+0x408>
    1200:	8fad004c 	lw	t5,76(sp)
    1204:	0c000000 	jal	0 <func_80A35310>
    1208:	02002025 	move	a0,s0
    120c:	10000006 	b	1228 <func_80A36130+0x408>
    1210:	8fad004c 	lw	t5,76(sp)
    1214:	0c000000 	jal	0 <func_80A35310>
    1218:	02002025 	move	a0,s0
    121c:	10000027 	b	12bc <func_80A36130+0x49c>
    1220:	8fbf0024 	lw	ra,36(sp)
    1224:	8fad004c 	lw	t5,76(sp)
    1228:	3c0e0001 	lui	t6,0x1
    122c:	02002025 	move	a0,s0
    1230:	01cd7021 	addu	t6,t6,t5
    1234:	8dce1de4 	lw	t6,7652(t6)
    1238:	31cf005f 	andi	t7,t6,0x5f
    123c:	55e00004 	bnezl	t7,1250 <func_80A36130+0x430>
    1240:	c60801a0 	lwc1	$f8,416(s0)
    1244:	0c000000 	jal	0 <func_80A35310>
    1248:	240539c6 	li	a1,14790
    124c:	c60801a0 	lwc1	$f8,416(s0)
    1250:	8fa20044 	lw	v0,68(sp)
    1254:	8fa30040 	lw	v1,64(sp)
    1258:	4600428d 	trunc.w.s	$f10,$f8
    125c:	44195000 	mfc1	t9,$f10
    1260:	00000000 	nop
    1264:	50590015 	beql	v0,t9,12bc <func_80A36130+0x49c>
    1268:	8fbf0024 	lw	ra,36(sp)
    126c:	04610006 	bgez	v1,1288 <func_80A36130+0x468>
    1270:	c7b00028 	lwc1	$f16,40(sp)
    1274:	4600848d 	trunc.w.s	$f18,$f16
    1278:	44099000 	mfc1	t1,$f18
    127c:	00000000 	nop
    1280:	01225021 	addu	t2,t1,v0
    1284:	1d400009 	bgtz	t2,12ac <func_80A36130+0x48c>
    1288:	28610004 	slti	at,v1,4
    128c:	1020000a 	beqz	at,12b8 <func_80A36130+0x498>
    1290:	c7a40028 	lwc1	$f4,40(sp)
    1294:	4600218d 	trunc.w.s	$f6,$f4
    1298:	440c3000 	mfc1	t4,$f6
    129c:	00000000 	nop
    12a0:	01826821 	addu	t5,t4,v0
    12a4:	29a10005 	slti	at,t5,5
    12a8:	14200003 	bnez	at,12b8 <func_80A36130+0x498>
    12ac:	02002025 	move	a0,s0
    12b0:	0c000000 	jal	0 <func_80A35310>
    12b4:	240539a0 	li	a1,14752
    12b8:	8fbf0024 	lw	ra,36(sp)
    12bc:	8fb00020 	lw	s0,32(sp)
    12c0:	27bd0048 	addiu	sp,sp,72
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_80A365DC>:
    12cc:	27bdffd0 	addiu	sp,sp,-48
    12d0:	afb00028 	sw	s0,40(sp)
    12d4:	00808025 	move	s0,a0
    12d8:	afbf002c 	sw	ra,44(sp)
    12dc:	3c040600 	lui	a0,0x600
    12e0:	0c000000 	jal	0 <func_80A35310>
    12e4:	24841390 	addiu	a0,a0,5008
    12e8:	44822000 	mtc1	v0,$f4
    12ec:	3c01c040 	lui	at,0xc040
    12f0:	44814000 	mtc1	at,$f8
    12f4:	46802120 	cvt.s.w	$f4,$f4
    12f8:	44803000 	mtc1	zero,$f6
    12fc:	3c050600 	lui	a1,0x600
    1300:	240e0002 	li	t6,2
    1304:	afae0014 	sw	t6,20(sp)
    1308:	24a51390 	addiu	a1,a1,5008
    130c:	44072000 	mfc1	a3,$f4
    1310:	26040188 	addiu	a0,s0,392
    1314:	3c06bf80 	lui	a2,0xbf80
    1318:	e7a80018 	swc1	$f8,24(sp)
    131c:	0c000000 	jal	0 <func_80A35310>
    1320:	e7a60010 	swc1	$f6,16(sp)
    1324:	8602008a 	lh	v0,138(s0)
    1328:	3c014120 	lui	at,0x4120
    132c:	44815000 	mtc1	at,$f10
    1330:	240f0001 	li	t7,1
    1334:	2418000e 	li	t8,14
    1338:	ae000300 	sw	zero,768(s0)
    133c:	a60f0318 	sh	t7,792(s0)
    1340:	ae1802ec 	sw	t8,748(s0)
    1344:	02002025 	move	a0,s0
    1348:	2405386c 	li	a1,14444
    134c:	a60200b6 	sh	v0,182(s0)
    1350:	a6020032 	sh	v0,50(s0)
    1354:	0c000000 	jal	0 <func_80A35310>
    1358:	e60a0068 	swc1	$f10,104(s0)
    135c:	3c050000 	lui	a1,0x0
    1360:	24a50000 	addiu	a1,a1,0
    1364:	0c000000 	jal	0 <func_80A35310>
    1368:	02002025 	move	a0,s0
    136c:	8fbf002c 	lw	ra,44(sp)
    1370:	8fb00028 	lw	s0,40(sp)
    1374:	27bd0030 	addiu	sp,sp,48
    1378:	03e00008 	jr	ra
    137c:	00000000 	nop

00001380 <func_80A36690>:
    1380:	27bdffd8 	addiu	sp,sp,-40
    1384:	afbf001c 	sw	ra,28(sp)
    1388:	afb00018 	sw	s0,24(sp)
    138c:	afa5002c 	sw	a1,44(sp)
    1390:	8ca21c44 	lw	v0,7236(a1)
    1394:	849800b6 	lh	t8,182(a0)
    1398:	00808025 	move	s0,a0
    139c:	844f00b6 	lh	t7,182(v0)
    13a0:	24840188 	addiu	a0,a0,392
    13a4:	01f8c823 	subu	t9,t7,t8
    13a8:	0c000000 	jal	0 <func_80A35310>
    13ac:	a7b90022 	sh	t9,34(sp)
    13b0:	10400039 	beqz	v0,1498 <func_80A36690+0x118>
    13b4:	02002025 	move	a0,s0
    13b8:	44802000 	mtc1	zero,$f4
    13bc:	a6000318 	sh	zero,792(s0)
    13c0:	24051554 	li	a1,5460
    13c4:	0c000000 	jal	0 <func_80A35310>
    13c8:	e6040068 	swc1	$f4,104(s0)
    13cc:	14400017 	bnez	v0,142c <func_80A36690+0xac>
    13d0:	8fa4002c 	lw	a0,44(sp)
    13d4:	0c000000 	jal	0 <func_80A35310>
    13d8:	02002025 	move	a0,s0
    13dc:	0c000000 	jal	0 <func_80A35310>
    13e0:	00000000 	nop
    13e4:	3c0140a0 	lui	at,0x40a0
    13e8:	44811000 	mtc1	at,$f2
    13ec:	87a30022 	lh	v1,34(sp)
    13f0:	240a0014 	li	t2,20
    13f4:	46020182 	mul.s	$f6,$f0,$f2
    13f8:	00031023 	negu	v0,v1
    13fc:	46023200 	add.s	$f8,$f6,$f2
    1400:	4600428d 	trunc.w.s	$f10,$f8
    1404:	44095000 	mfc1	t1,$f10
    1408:	04600003 	bltz	v1,1418 <func_80A36690+0x98>
    140c:	ae090300 	sw	t1,768(s0)
    1410:	10000001 	b	1418 <func_80A36690+0x98>
    1414:	00601025 	move	v0,v1
    1418:	284138e0 	slti	at,v0,14560
    141c:	5020001f 	beqzl	at,149c <func_80A36690+0x11c>
    1420:	8fab002c 	lw	t3,44(sp)
    1424:	1000001c 	b	1498 <func_80A36690+0x118>
    1428:	a60a02fa 	sh	t2,762(s0)
    142c:	0c000000 	jal	0 <func_80A35310>
    1430:	02002825 	move	a1,s0
    1434:	54400016 	bnezl	v0,1490 <func_80A36690+0x110>
    1438:	02002025 	move	a0,s0
    143c:	0c000000 	jal	0 <func_80A35310>
    1440:	00000000 	nop
    1444:	3c013f00 	lui	at,0x3f00
    1448:	44818000 	mtc1	at,$f16
    144c:	87a30022 	lh	v1,34(sp)
    1450:	4600803c 	c.lt.s	$f16,$f0
    1454:	00000000 	nop
    1458:	45010008 	bc1t	147c <func_80A36690+0xfc>
    145c:	00000000 	nop
    1460:	04600003 	bltz	v1,1470 <func_80A36690+0xf0>
    1464:	00031023 	negu	v0,v1
    1468:	10000001 	b	1470 <func_80A36690+0xf0>
    146c:	00601025 	move	v0,v1
    1470:	28413ffc 	slti	at,v0,16380
    1474:	50200006 	beqzl	at,1490 <func_80A36690+0x110>
    1478:	02002025 	move	a0,s0
    147c:	0c000000 	jal	0 <func_80A35310>
    1480:	02002025 	move	a0,s0
    1484:	10000005 	b	149c <func_80A36690+0x11c>
    1488:	8fab002c 	lw	t3,44(sp)
    148c:	02002025 	move	a0,s0
    1490:	0c000000 	jal	0 <func_80A35310>
    1494:	8fa5002c 	lw	a1,44(sp)
    1498:	8fab002c 	lw	t3,44(sp)
    149c:	3c0c0001 	lui	t4,0x1
    14a0:	02002025 	move	a0,s0
    14a4:	018b6021 	addu	t4,t4,t3
    14a8:	8d8c1de4 	lw	t4,7652(t4)
    14ac:	318d005f 	andi	t5,t4,0x5f
    14b0:	55a00004 	bnezl	t5,14c4 <func_80A36690+0x144>
    14b4:	8fbf001c 	lw	ra,28(sp)
    14b8:	0c000000 	jal	0 <func_80A35310>
    14bc:	240539c6 	li	a1,14790
    14c0:	8fbf001c 	lw	ra,28(sp)
    14c4:	8fb00018 	lw	s0,24(sp)
    14c8:	27bd0028 	addiu	sp,sp,40
    14cc:	03e00008 	jr	ra
    14d0:	00000000 	nop

000014d4 <func_80A367E4>:
    14d4:	27bdffe8 	addiu	sp,sp,-24
    14d8:	afbf0014 	sw	ra,20(sp)
    14dc:	00803825 	move	a3,a0
    14e0:	3c050601 	lui	a1,0x601
    14e4:	24a5a814 	addiu	a1,a1,-22508
    14e8:	afa70018 	sw	a3,24(sp)
    14ec:	24840188 	addiu	a0,a0,392
    14f0:	0c000000 	jal	0 <func_80A35310>
    14f4:	3c06c080 	lui	a2,0xc080
    14f8:	8fa40018 	lw	a0,24(sp)
    14fc:	240e0009 	li	t6,9
    1500:	3c050000 	lui	a1,0x0
    1504:	24a50000 	addiu	a1,a1,0
    1508:	0c000000 	jal	0 <func_80A35310>
    150c:	ac8e02ec 	sw	t6,748(a0)
    1510:	8fbf0014 	lw	ra,20(sp)
    1514:	27bd0018 	addiu	sp,sp,24
    1518:	03e00008 	jr	ra
    151c:	00000000 	nop

00001520 <func_80A36830>:
    1520:	27bdffe0 	addiu	sp,sp,-32
    1524:	afb00018 	sw	s0,24(sp)
    1528:	00808025 	move	s0,a0
    152c:	afbf001c 	sw	ra,28(sp)
    1530:	afa50024 	sw	a1,36(sp)
    1534:	00a02025 	move	a0,a1
    1538:	0c000000 	jal	0 <func_80A35310>
    153c:	02002825 	move	a1,s0
    1540:	1440006a 	bnez	v0,16ec <func_80A36830+0x1cc>
    1544:	8fa40024 	lw	a0,36(sp)
    1548:	02002825 	move	a1,s0
    154c:	0c000000 	jal	0 <func_80A35310>
    1550:	00003025 	move	a2,zero
    1554:	54400066 	bnezl	v0,16f0 <func_80A36830+0x1d0>
    1558:	8fbf001c 	lw	ra,28(sp)
    155c:	860400b6 	lh	a0,182(s0)
    1560:	860e008a 	lh	t6,138(s0)
    1564:	01c41023 	subu	v0,t6,a0
    1568:	00021400 	sll	v0,v0,0x10
    156c:	00021403 	sra	v0,v0,0x10
    1570:	58400010 	blezl	v0,15b4 <func_80A36830+0x94>
    1574:	44823000 	mtc1	v0,$f6
    1578:	44822000 	mtc1	v0,$f4
    157c:	3c013e80 	lui	at,0x3e80
    1580:	44814000 	mtc1	at,$f8
    1584:	468021a0 	cvt.s.w	$f6,$f4
    1588:	3c0144fa 	lui	at,0x44fa
    158c:	44818000 	mtc1	at,$f16
    1590:	46083282 	mul.s	$f10,$f6,$f8
    1594:	46105480 	add.s	$f18,$f10,$f16
    1598:	4600910d 	trunc.w.s	$f4,$f18
    159c:	44032000 	mfc1	v1,$f4
    15a0:	00000000 	nop
    15a4:	00031c00 	sll	v1,v1,0x10
    15a8:	1000000e 	b	15e4 <func_80A36830+0xc4>
    15ac:	00031c03 	sra	v1,v1,0x10
    15b0:	44823000 	mtc1	v0,$f6
    15b4:	3c013e80 	lui	at,0x3e80
    15b8:	44815000 	mtc1	at,$f10
    15bc:	46803220 	cvt.s.w	$f8,$f6
    15c0:	3c0144fa 	lui	at,0x44fa
    15c4:	44819000 	mtc1	at,$f18
    15c8:	460a4402 	mul.s	$f16,$f8,$f10
    15cc:	46128101 	sub.s	$f4,$f16,$f18
    15d0:	4600218d 	trunc.w.s	$f6,$f4
    15d4:	44033000 	mfc1	v1,$f6
    15d8:	00000000 	nop
    15dc:	00031c00 	sll	v1,v1,0x10
    15e0:	00031c03 	sra	v1,v1,0x10
    15e4:	0083c821 	addu	t9,a0,v1
    15e8:	a61900b6 	sh	t9,182(s0)
    15ec:	860800b6 	lh	t0,182(s0)
    15f0:	26040188 	addiu	a0,s0,392
    15f4:	1840000f 	blez	v0,1634 <func_80A36830+0x114>
    15f8:	a6080032 	sh	t0,50(s0)
    15fc:	44834000 	mtc1	v1,$f8
    1600:	3c013f80 	lui	at,0x3f80
    1604:	44816000 	mtc1	at,$f12
    1608:	468042a0 	cvt.s.w	$f10,$f8
    160c:	3c013f00 	lui	at,0x3f00
    1610:	44818000 	mtc1	at,$f16
    1614:	00000000 	nop
    1618:	46105082 	mul.s	$f2,$f10,$f16
    161c:	4602603c 	c.lt.s	$f12,$f2
    1620:	00000000 	nop
    1624:	45020011 	bc1fl	166c <func_80A36830+0x14c>
    1628:	46001207 	neg.s	$f8,$f2
    162c:	1000000e 	b	1668 <func_80A36830+0x148>
    1630:	46006086 	mov.s	$f2,$f12
    1634:	44839000 	mtc1	v1,$f18
    1638:	3c01bf80 	lui	at,0xbf80
    163c:	44816000 	mtc1	at,$f12
    1640:	46809120 	cvt.s.w	$f4,$f18
    1644:	3c013f00 	lui	at,0x3f00
    1648:	44813000 	mtc1	at,$f6
    164c:	00000000 	nop
    1650:	46062082 	mul.s	$f2,$f4,$f6
    1654:	460c103c 	c.lt.s	$f2,$f12
    1658:	00000000 	nop
    165c:	45020003 	bc1fl	166c <func_80A36830+0x14c>
    1660:	46001207 	neg.s	$f8,$f2
    1664:	46006086 	mov.s	$f2,$f12
    1668:	46001207 	neg.s	$f8,$f2
    166c:	0c000000 	jal	0 <func_80A35310>
    1670:	e60801a4 	swc1	$f8,420(s0)
    1674:	02002025 	move	a0,s0
    1678:	0c000000 	jal	0 <func_80A35310>
    167c:	24051555 	li	a1,5461
    1680:	50400011 	beqzl	v0,16c8 <func_80A36830+0x1a8>
    1684:	8fa90024 	lw	t1,36(sp)
    1688:	0c000000 	jal	0 <func_80A35310>
    168c:	00000000 	nop
    1690:	3c010000 	lui	at,0x0
    1694:	c42a0000 	lwc1	$f10,0(at)
    1698:	02002025 	move	a0,s0
    169c:	4600503c 	c.lt.s	$f10,$f0
    16a0:	00000000 	nop
    16a4:	45000005 	bc1f	16bc <func_80A36830+0x19c>
    16a8:	00000000 	nop
    16ac:	0c000000 	jal	0 <func_80A35310>
    16b0:	02002025 	move	a0,s0
    16b4:	10000004 	b	16c8 <func_80A36830+0x1a8>
    16b8:	8fa90024 	lw	t1,36(sp)
    16bc:	0c000000 	jal	0 <func_80A35310>
    16c0:	8fa50024 	lw	a1,36(sp)
    16c4:	8fa90024 	lw	t1,36(sp)
    16c8:	3c0a0001 	lui	t2,0x1
    16cc:	02002025 	move	a0,s0
    16d0:	01495021 	addu	t2,t2,t1
    16d4:	8d4a1de4 	lw	t2,7652(t2)
    16d8:	314b005f 	andi	t3,t2,0x5f
    16dc:	55600004 	bnezl	t3,16f0 <func_80A36830+0x1d0>
    16e0:	8fbf001c 	lw	ra,28(sp)
    16e4:	0c000000 	jal	0 <func_80A35310>
    16e8:	240539c6 	li	a1,14790
    16ec:	8fbf001c 	lw	ra,28(sp)
    16f0:	8fb00018 	lw	s0,24(sp)
    16f4:	27bd0020 	addiu	sp,sp,32
    16f8:	03e00008 	jr	ra
    16fc:	00000000 	nop

00001700 <func_80A36A10>:
    1700:	27bdffd0 	addiu	sp,sp,-48
    1704:	afb00028 	sw	s0,40(sp)
    1708:	00808025 	move	s0,a0
    170c:	afbf002c 	sw	ra,44(sp)
    1710:	3c040601 	lui	a0,0x601
    1714:	0c000000 	jal	0 <func_80A35310>
    1718:	2484a814 	addiu	a0,a0,-22508
    171c:	44822000 	mtc1	v0,$f4
    1720:	44800000 	mtc1	zero,$f0
    1724:	3c050601 	lui	a1,0x601
    1728:	468021a0 	cvt.s.w	$f6,$f4
    172c:	240e0001 	li	t6,1
    1730:	44070000 	mfc1	a3,$f0
    1734:	afae0014 	sw	t6,20(sp)
    1738:	24a5a814 	addiu	a1,a1,-22508
    173c:	26040188 	addiu	a0,s0,392
    1740:	e7a60010 	swc1	$f6,16(sp)
    1744:	3c063f80 	lui	a2,0x3f80
    1748:	0c000000 	jal	0 <func_80A35310>
    174c:	e7a00018 	swc1	$f0,24(sp)
    1750:	3c014140 	lui	at,0x4140
    1754:	44816000 	mtc1	at,$f12
    1758:	0c000000 	jal	0 <func_80A35310>
    175c:	00000000 	nop
    1760:	3c013f00 	lui	at,0x3f00
    1764:	44815000 	mtc1	at,$f10
    1768:	46000207 	neg.s	$f8,$f0
    176c:	860f00b6 	lh	t7,182(s0)
    1770:	460a4402 	mul.s	$f16,$f8,$f10
    1774:	e6000068 	swc1	$f0,104(s0)
    1778:	a60f0032 	sh	t7,50(s0)
    177c:	0c000000 	jal	0 <func_80A35310>
    1780:	e61001a4 	swc1	$f16,420(s0)
    1784:	3c0141f0 	lui	at,0x41f0
    1788:	44811000 	mtc1	at,$f2
    178c:	44804000 	mtc1	zero,$f8
    1790:	2408000a 	li	t0,10
    1794:	46020482 	mul.s	$f18,$f0,$f2
    1798:	3c050000 	lui	a1,0x0
    179c:	ae0802ec 	sw	t0,748(s0)
    17a0:	24a50000 	addiu	a1,a1,0
    17a4:	02002025 	move	a0,s0
    17a8:	e6080304 	swc1	$f8,772(s0)
    17ac:	46029100 	add.s	$f4,$f18,$f2
    17b0:	4600218d 	trunc.w.s	$f6,$f4
    17b4:	44193000 	mfc1	t9,$f6
    17b8:	0c000000 	jal	0 <func_80A35310>
    17bc:	ae190300 	sw	t9,768(s0)
    17c0:	8fbf002c 	lw	ra,44(sp)
    17c4:	8fb00028 	lw	s0,40(sp)
    17c8:	27bd0030 	addiu	sp,sp,48
    17cc:	03e00008 	jr	ra
    17d0:	00000000 	nop

000017d4 <func_80A36AE4>:
    17d4:	27bdffc0 	addiu	sp,sp,-64
    17d8:	afbf0024 	sw	ra,36(sp)
    17dc:	afb00020 	sw	s0,32(sp)
    17e0:	afa50044 	sw	a1,68(sp)
    17e4:	8caf1c44 	lw	t7,7236(a1)
    17e8:	00808025 	move	s0,a0
    17ec:	24180001 	li	t8,1
    17f0:	afaf0028 	sw	t7,40(sp)
    17f4:	8605008a 	lh	a1,138(s0)
    17f8:	afb80010 	sw	t8,16(sp)
    17fc:	248400b6 	addiu	a0,a0,182
    1800:	24060001 	li	a2,1
    1804:	0c000000 	jal	0 <func_80A35310>
    1808:	24070fa0 	li	a3,4000
    180c:	8fa40044 	lw	a0,68(sp)
    1810:	0c000000 	jal	0 <func_80A35310>
    1814:	02002825 	move	a1,s0
    1818:	1440015f 	bnez	v0,1d98 <func_80A36AE4+0x5c4>
    181c:	8fa40044 	lw	a0,68(sp)
    1820:	02002825 	move	a1,s0
    1824:	0c000000 	jal	0 <func_80A35310>
    1828:	00003025 	move	a2,zero
    182c:	5440015b 	bnezl	v0,1d9c <func_80A36AE4+0x5c8>
    1830:	8fbf0024 	lw	ra,36(sp)
    1834:	860200b6 	lh	v0,182(s0)
    1838:	34018000 	li	at,0x8000
    183c:	24593a98 	addiu	t9,v0,15000
    1840:	a6190032 	sh	t9,50(s0)
    1844:	8fa80028 	lw	t0,40(sp)
    1848:	850300b6 	lh	v1,182(t0)
    184c:	00611821 	addu	v1,v1,at
    1850:	00031c00 	sll	v1,v1,0x10
    1854:	00031c03 	sra	v1,v1,0x10
    1858:	00622023 	subu	a0,v1,v0
    185c:	00042400 	sll	a0,a0,0x10
    1860:	00042403 	sra	a0,a0,0x10
    1864:	0c000000 	jal	0 <func_80A35310>
    1868:	a7a3003e 	sh	v1,62(sp)
    186c:	44801000 	mtc1	zero,$f2
    1870:	00000000 	nop
    1874:	4600103e 	c.le.s	$f2,$f0
    1878:	00000000 	nop
    187c:	4500000e 	bc1f	18b8 <func_80A36AE4+0xe4>
    1880:	3c01c100 	lui	at,0xc100
    1884:	44810000 	mtc1	at,$f0
    1888:	3c013e80 	lui	at,0x3e80
    188c:	44813000 	mtc1	at,$f6
    1890:	c6040068 	lwc1	$f4,104(s0)
    1894:	46062201 	sub.s	$f8,$f4,$f6
    1898:	e6080068 	swc1	$f8,104(s0)
    189c:	c60a0068 	lwc1	$f10,104(s0)
    18a0:	4600503c 	c.lt.s	$f10,$f0
    18a4:	00000000 	nop
    18a8:	4502001c 	bc1fl	191c <func_80A36AE4+0x148>
    18ac:	96020088 	lhu	v0,136(s0)
    18b0:	10000019 	b	1918 <func_80A36AE4+0x144>
    18b4:	e6000068 	swc1	$f0,104(s0)
    18b8:	87a9003e 	lh	t1,62(sp)
    18bc:	860a00b6 	lh	t2,182(s0)
    18c0:	012a2023 	subu	a0,t1,t2
    18c4:	00042400 	sll	a0,a0,0x10
    18c8:	0c000000 	jal	0 <func_80A35310>
    18cc:	00042403 	sra	a0,a0,0x10
    18d0:	44809000 	mtc1	zero,$f18
    18d4:	3c014100 	lui	at,0x4100
    18d8:	4612003c 	c.lt.s	$f0,$f18
    18dc:	00000000 	nop
    18e0:	4502000e 	bc1fl	191c <func_80A36AE4+0x148>
    18e4:	96020088 	lhu	v0,136(s0)
    18e8:	44810000 	mtc1	at,$f0
    18ec:	3c013e80 	lui	at,0x3e80
    18f0:	44813000 	mtc1	at,$f6
    18f4:	c6040068 	lwc1	$f4,104(s0)
    18f8:	46062200 	add.s	$f8,$f4,$f6
    18fc:	e6080068 	swc1	$f8,104(s0)
    1900:	c60a0068 	lwc1	$f10,104(s0)
    1904:	460a003c 	c.lt.s	$f0,$f10
    1908:	00000000 	nop
    190c:	45020003 	bc1fl	191c <func_80A36AE4+0x148>
    1910:	96020088 	lhu	v0,136(s0)
    1914:	e6000068 	swc1	$f0,104(s0)
    1918:	96020088 	lhu	v0,136(s0)
    191c:	44801000 	mtc1	zero,$f2
    1920:	c6000068 	lwc1	$f0,104(s0)
    1924:	30420008 	andi	v0,v0,0x8
    1928:	1440000f 	bnez	v0,1968 <func_80A36AE4+0x194>
    192c:	00000000 	nop
    1930:	860700b6 	lh	a3,182(s0)
    1934:	44060000 	mfc1	a2,$f0
    1938:	02002025 	move	a0,s0
    193c:	24e73e80 	addiu	a3,a3,16000
    1940:	00073c00 	sll	a3,a3,0x10
    1944:	00073c03 	sra	a3,a3,0x10
    1948:	0c000000 	jal	0 <func_80A35310>
    194c:	8fa50044 	lw	a1,68(sp)
    1950:	54400039 	bnezl	v0,1a38 <func_80A36AE4+0x264>
    1954:	3c014234 	lui	at,0x4234
    1958:	96020088 	lhu	v0,136(s0)
    195c:	44801000 	mtc1	zero,$f2
    1960:	c6000068 	lwc1	$f0,104(s0)
    1964:	30420008 	andi	v0,v0,0x8
    1968:	10400013 	beqz	v0,19b8 <func_80A36AE4+0x1e4>
    196c:	3c010000 	lui	at,0x0
    1970:	4600103e 	c.le.s	$f2,$f0
    1974:	00000000 	nop
    1978:	45020007 	bc1fl	1998 <func_80A36AE4+0x1c4>
    197c:	860200b6 	lh	v0,182(s0)
    1980:	860200b6 	lh	v0,182(s0)
    1984:	24423e80 	addiu	v0,v0,16000
    1988:	00021400 	sll	v0,v0,0x10
    198c:	10000005 	b	19a4 <func_80A36AE4+0x1d0>
    1990:	00021403 	sra	v0,v0,0x10
    1994:	860200b6 	lh	v0,182(s0)
    1998:	2442c180 	addiu	v0,v0,-16000
    199c:	00021400 	sll	v0,v0,0x10
    19a0:	00021403 	sra	v0,v0,0x10
    19a4:	860b007e 	lh	t3,126(s0)
    19a8:	01621023 	subu	v0,t3,v0
    19ac:	00021400 	sll	v0,v0,0x10
    19b0:	10000005 	b	19c8 <func_80A36AE4+0x1f4>
    19b4:	00021403 	sra	v0,v0,0x10
    19b8:	c4320000 	lwc1	$f18,0(at)
    19bc:	00001025 	move	v0,zero
    19c0:	46120102 	mul.s	$f4,$f0,$f18
    19c4:	e6040068 	swc1	$f4,104(s0)
    19c8:	04400003 	bltz	v0,19d8 <func_80A36AE4+0x204>
    19cc:	00021823 	negu	v1,v0
    19d0:	10000001 	b	19d8 <func_80A36AE4+0x204>
    19d4:	00401825 	move	v1,v0
    19d8:	28614001 	slti	at,v1,16385
    19dc:	14200015 	bnez	at,1a34 <func_80A36AE4+0x260>
    19e0:	3c010000 	lui	at,0x0
    19e4:	c4280000 	lwc1	$f8,0(at)
    19e8:	c6060068 	lwc1	$f6,104(s0)
    19ec:	3c013f00 	lui	at,0x3f00
    19f0:	46083282 	mul.s	$f10,$f6,$f8
    19f4:	e60a0068 	swc1	$f10,104(s0)
    19f8:	c6000068 	lwc1	$f0,104(s0)
    19fc:	4602003c 	c.lt.s	$f0,$f2
    1a00:	00000000 	nop
    1a04:	45020008 	bc1fl	1a28 <func_80A36AE4+0x254>
    1a08:	44813000 	mtc1	at,$f6
    1a0c:	3c013f00 	lui	at,0x3f00
    1a10:	44819000 	mtc1	at,$f18
    1a14:	00000000 	nop
    1a18:	46120101 	sub.s	$f4,$f0,$f18
    1a1c:	10000005 	b	1a34 <func_80A36AE4+0x260>
    1a20:	e6040068 	swc1	$f4,104(s0)
    1a24:	44813000 	mtc1	at,$f6
    1a28:	00000000 	nop
    1a2c:	46060200 	add.s	$f8,$f0,$f6
    1a30:	e6080068 	swc1	$f8,104(s0)
    1a34:	3c014234 	lui	at,0x4234
    1a38:	44815000 	mtc1	at,$f10
    1a3c:	c6000090 	lwc1	$f0,144(s0)
    1a40:	44801000 	mtc1	zero,$f2
    1a44:	460a003e 	c.le.s	$f0,$f10
    1a48:	00000000 	nop
    1a4c:	45000008 	bc1f	1a70 <func_80A36AE4+0x29c>
    1a50:	26040304 	addiu	a0,s0,772
    1a54:	3c05c080 	lui	a1,0xc080
    1a58:	3c063f80 	lui	a2,0x3f80
    1a5c:	3c073fc0 	lui	a3,0x3fc0
    1a60:	0c000000 	jal	0 <func_80A35310>
    1a64:	e7a20010 	swc1	$f2,16(sp)
    1a68:	10000016 	b	1ac4 <func_80A36AE4+0x2f0>
    1a6c:	c60c0304 	lwc1	$f12,772(s0)
    1a70:	3c014220 	lui	at,0x4220
    1a74:	44819000 	mtc1	at,$f18
    1a78:	3c0740d4 	lui	a3,0x40d4
    1a7c:	3c054080 	lui	a1,0x4080
    1a80:	4600903c 	c.lt.s	$f18,$f0
    1a84:	34e7cccd 	ori	a3,a3,0xcccd
    1a88:	26040304 	addiu	a0,s0,772
    1a8c:	3c063f80 	lui	a2,0x3f80
    1a90:	45020009 	bc1fl	1ab8 <func_80A36AE4+0x2e4>
    1a94:	44051000 	mfc1	a1,$f2
    1a98:	26040304 	addiu	a0,s0,772
    1a9c:	3c063f80 	lui	a2,0x3f80
    1aa0:	3c073fc0 	lui	a3,0x3fc0
    1aa4:	0c000000 	jal	0 <func_80A35310>
    1aa8:	e7a20010 	swc1	$f2,16(sp)
    1aac:	10000005 	b	1ac4 <func_80A36AE4+0x2f0>
    1ab0:	c60c0304 	lwc1	$f12,772(s0)
    1ab4:	44051000 	mfc1	a1,$f2
    1ab8:	0c000000 	jal	0 <func_80A35310>
    1abc:	e7a20010 	swc1	$f2,16(sp)
    1ac0:	c60c0304 	lwc1	$f12,772(s0)
    1ac4:	44802000 	mtc1	zero,$f4
    1ac8:	00000000 	nop
    1acc:	460c2032 	c.eq.s	$f4,$f12
    1ad0:	00000000 	nop
    1ad4:	45030010 	bc1tl	1b18 <func_80A36AE4+0x344>
    1ad8:	44808000 	mtc1	zero,$f16
    1adc:	0c000000 	jal	0 <func_80A35310>
    1ae0:	860400b6 	lh	a0,182(s0)
    1ae4:	c6080304 	lwc1	$f8,772(s0)
    1ae8:	c6060024 	lwc1	$f6,36(s0)
    1aec:	860400b6 	lh	a0,182(s0)
    1af0:	46080282 	mul.s	$f10,$f0,$f8
    1af4:	460a3480 	add.s	$f18,$f6,$f10
    1af8:	0c000000 	jal	0 <func_80A35310>
    1afc:	e6120024 	swc1	$f18,36(s0)
    1b00:	c60c0304 	lwc1	$f12,772(s0)
    1b04:	c604002c 	lwc1	$f4,44(s0)
    1b08:	460c0202 	mul.s	$f8,$f0,$f12
    1b0c:	46082180 	add.s	$f6,$f4,$f8
    1b10:	e606002c 	swc1	$f6,44(s0)
    1b14:	44808000 	mtc1	zero,$f16
    1b18:	00000000 	nop
    1b1c:	460c803e 	c.le.s	$f16,$f12
    1b20:	00000000 	nop
    1b24:	45020004 	bc1fl	1b38 <func_80A36AE4+0x364>
    1b28:	46006387 	neg.s	$f14,$f12
    1b2c:	10000002 	b	1b38 <func_80A36AE4+0x364>
    1b30:	46006386 	mov.s	$f14,$f12
    1b34:	46006387 	neg.s	$f14,$f12
    1b38:	c6000068 	lwc1	$f0,104(s0)
    1b3c:	4600803e 	c.le.s	$f16,$f0
    1b40:	00000000 	nop
    1b44:	45020004 	bc1fl	1b58 <func_80A36AE4+0x384>
    1b48:	46000087 	neg.s	$f2,$f0
    1b4c:	10000002 	b	1b58 <func_80A36AE4+0x384>
    1b50:	46000086 	mov.s	$f2,$f0
    1b54:	46000087 	neg.s	$f2,$f0
    1b58:	4602703c 	c.lt.s	$f14,$f2
    1b5c:	3c013f00 	lui	at,0x3f00
    1b60:	45020008 	bc1fl	1b84 <func_80A36AE4+0x3b0>
    1b64:	44813000 	mtc1	at,$f6
    1b68:	3c013f00 	lui	at,0x3f00
    1b6c:	44819000 	mtc1	at,$f18
    1b70:	46000287 	neg.s	$f10,$f0
    1b74:	46125102 	mul.s	$f4,$f10,$f18
    1b78:	10000005 	b	1b90 <func_80A36AE4+0x3bc>
    1b7c:	e60401a4 	swc1	$f4,420(s0)
    1b80:	44813000 	mtc1	at,$f6
    1b84:	46006207 	neg.s	$f8,$f12
    1b88:	46064282 	mul.s	$f10,$f8,$f6
    1b8c:	e60a01a4 	swc1	$f10,420(s0)
    1b90:	3c01c040 	lui	at,0xc040
    1b94:	44811000 	mtc1	at,$f2
    1b98:	c60001a4 	lwc1	$f0,420(s0)
    1b9c:	3c014040 	lui	at,0x4040
    1ba0:	4602003c 	c.lt.s	$f0,$f2
    1ba4:	00000000 	nop
    1ba8:	45020004 	bc1fl	1bbc <func_80A36AE4+0x3e8>
    1bac:	44816000 	mtc1	at,$f12
    1bb0:	1000000b 	b	1be0 <func_80A36AE4+0x40c>
    1bb4:	e60201a4 	swc1	$f2,420(s0)
    1bb8:	44816000 	mtc1	at,$f12
    1bbc:	00000000 	nop
    1bc0:	4600603c 	c.lt.s	$f12,$f0
    1bc4:	00000000 	nop
    1bc8:	45020004 	bc1fl	1bdc <func_80A36AE4+0x408>
    1bcc:	46000086 	mov.s	$f2,$f0
    1bd0:	10000002 	b	1bdc <func_80A36AE4+0x408>
    1bd4:	46006086 	mov.s	$f2,$f12
    1bd8:	46000086 	mov.s	$f2,$f0
    1bdc:	e60201a4 	swc1	$f2,420(s0)
    1be0:	c61201a0 	lwc1	$f18,416(s0)
    1be4:	26040188 	addiu	a0,s0,392
    1be8:	4600910d 	trunc.w.s	$f4,$f18
    1bec:	44032000 	mfc1	v1,$f4
    1bf0:	0c000000 	jal	0 <func_80A35310>
    1bf4:	afa30034 	sw	v1,52(sp)
    1bf8:	44808000 	mtc1	zero,$f16
    1bfc:	c60001a4 	lwc1	$f0,420(s0)
    1c00:	8fa30034 	lw	v1,52(sp)
    1c04:	4600803e 	c.le.s	$f16,$f0
    1c08:	00000000 	nop
    1c0c:	45020004 	bc1fl	1c20 <func_80A36AE4+0x44c>
    1c10:	46000087 	neg.s	$f2,$f0
    1c14:	10000002 	b	1c20 <func_80A36AE4+0x44c>
    1c18:	46000086 	mov.s	$f2,$f0
    1c1c:	46000087 	neg.s	$f2,$f0
    1c20:	c60c01a0 	lwc1	$f12,416(s0)
    1c24:	4600803e 	c.le.s	$f16,$f0
    1c28:	46026201 	sub.s	$f8,$f12,$f2
    1c2c:	4600628d 	trunc.w.s	$f10,$f12
    1c30:	4600418d 	trunc.w.s	$f6,$f8
    1c34:	440f5000 	mfc1	t7,$f10
    1c38:	44023000 	mfc1	v0,$f6
    1c3c:	45020004 	bc1fl	1c50 <func_80A36AE4+0x47c>
    1c40:	46000087 	neg.s	$f2,$f0
    1c44:	10000002 	b	1c50 <func_80A36AE4+0x47c>
    1c48:	46000086 	mov.s	$f2,$f0
    1c4c:	46000087 	neg.s	$f2,$f0
    1c50:	506f0015 	beql	v1,t7,1ca8 <func_80A36AE4+0x4d4>
    1c54:	8fac0044 	lw	t4,68(sp)
    1c58:	04410007 	bgez	v0,1c78 <func_80A36AE4+0x4a4>
    1c5c:	28410005 	slti	at,v0,5
    1c60:	4600148d 	trunc.w.s	$f18,$f2
    1c64:	44199000 	mfc1	t9,$f18
    1c68:	00000000 	nop
    1c6c:	03234021 	addu	t0,t9,v1
    1c70:	5d00000a 	bgtzl	t0,1c9c <func_80A36AE4+0x4c8>
    1c74:	02002025 	move	a0,s0
    1c78:	5020000b 	beqzl	at,1ca8 <func_80A36AE4+0x4d4>
    1c7c:	8fac0044 	lw	t4,68(sp)
    1c80:	4600110d 	trunc.w.s	$f4,$f2
    1c84:	440a2000 	mfc1	t2,$f4
    1c88:	00000000 	nop
    1c8c:	01435821 	addu	t3,t2,v1
    1c90:	29610006 	slti	at,t3,6
    1c94:	14200003 	bnez	at,1ca4 <func_80A36AE4+0x4d0>
    1c98:	02002025 	move	a0,s0
    1c9c:	0c000000 	jal	0 <func_80A35310>
    1ca0:	240539a0 	li	a1,14752
    1ca4:	8fac0044 	lw	t4,68(sp)
    1ca8:	3c0d0001 	lui	t5,0x1
    1cac:	02002025 	move	a0,s0
    1cb0:	01ac6821 	addu	t5,t5,t4
    1cb4:	8dad1de4 	lw	t5,7652(t5)
    1cb8:	31ae005f 	andi	t6,t5,0x5f
    1cbc:	55c00004 	bnezl	t6,1cd0 <func_80A36AE4+0x4fc>
    1cc0:	87af003e 	lh	t7,62(sp)
    1cc4:	0c000000 	jal	0 <func_80A35310>
    1cc8:	240539c6 	li	a1,14790
    1ccc:	87af003e 	lh	t7,62(sp)
    1cd0:	861800b6 	lh	t8,182(s0)
    1cd4:	01f82023 	subu	a0,t7,t8
    1cd8:	00042400 	sll	a0,a0,0x10
    1cdc:	0c000000 	jal	0 <func_80A35310>
    1ce0:	00042403 	sra	a0,a0,0x10
    1ce4:	3c010000 	lui	at,0x0
    1ce8:	c4280000 	lwc1	$f8,0(at)
    1cec:	8fa40044 	lw	a0,68(sp)
    1cf0:	4608003c 	c.lt.s	$f0,$f8
    1cf4:	00000000 	nop
    1cf8:	45020010 	bc1fl	1d3c <func_80A36AE4+0x568>
    1cfc:	8e190300 	lw	t9,768(s0)
    1d00:	0c000000 	jal	0 <func_80A35310>
    1d04:	02002825 	move	a1,s0
    1d08:	1440000b 	bnez	v0,1d38 <func_80A36AE4+0x564>
    1d0c:	3c014234 	lui	at,0x4234
    1d10:	44813000 	mtc1	at,$f6
    1d14:	c60a0090 	lwc1	$f10,144(s0)
    1d18:	4606503e 	c.le.s	$f10,$f6
    1d1c:	00000000 	nop
    1d20:	45020006 	bc1fl	1d3c <func_80A36AE4+0x568>
    1d24:	8e190300 	lw	t9,768(s0)
    1d28:	0c000000 	jal	0 <func_80A35310>
    1d2c:	02002025 	move	a0,s0
    1d30:	1000001a 	b	1d9c <func_80A36AE4+0x5c8>
    1d34:	8fbf0024 	lw	ra,36(sp)
    1d38:	8e190300 	lw	t9,768(s0)
    1d3c:	02002825 	move	a1,s0
    1d40:	2728ffff 	addiu	t0,t9,-1
    1d44:	15000014 	bnez	t0,1d98 <func_80A36AE4+0x5c4>
    1d48:	ae080300 	sw	t0,768(s0)
    1d4c:	0c000000 	jal	0 <func_80A35310>
    1d50:	8fa40044 	lw	a0,68(sp)
    1d54:	1040000e 	beqz	v0,1d90 <func_80A36AE4+0x5bc>
    1d58:	00000000 	nop
    1d5c:	0c000000 	jal	0 <func_80A35310>
    1d60:	00000000 	nop
    1d64:	3c013f00 	lui	at,0x3f00
    1d68:	44819000 	mtc1	at,$f18
    1d6c:	00000000 	nop
    1d70:	4600903c 	c.lt.s	$f18,$f0
    1d74:	00000000 	nop
    1d78:	45000005 	bc1f	1d90 <func_80A36AE4+0x5bc>
    1d7c:	00000000 	nop
    1d80:	0c000000 	jal	0 <func_80A35310>
    1d84:	02002025 	move	a0,s0
    1d88:	10000004 	b	1d9c <func_80A36AE4+0x5c8>
    1d8c:	8fbf0024 	lw	ra,36(sp)
    1d90:	0c000000 	jal	0 <func_80A35310>
    1d94:	02002025 	move	a0,s0
    1d98:	8fbf0024 	lw	ra,36(sp)
    1d9c:	8fb00020 	lw	s0,32(sp)
    1da0:	27bd0040 	addiu	sp,sp,64
    1da4:	03e00008 	jr	ra
    1da8:	00000000 	nop

00001dac <func_80A370BC>:
    1dac:	27bdffc0 	addiu	sp,sp,-64
    1db0:	afb00030 	sw	s0,48(sp)
    1db4:	afbf0034 	sw	ra,52(sp)
    1db8:	f7b40028 	sdc1	$f20,40(sp)
    1dbc:	8cae1c44 	lw	t6,7236(a1)
    1dc0:	00808025 	move	s0,a0
    1dc4:	3c040601 	lui	a0,0x601
    1dc8:	2484a814 	addiu	a0,a0,-22508
    1dcc:	0c000000 	jal	0 <func_80A35310>
    1dd0:	afae0038 	sw	t6,56(sp)
    1dd4:	44822000 	mtc1	v0,$f4
    1dd8:	4480a000 	mtc1	zero,$f20
    1ddc:	3c050601 	lui	a1,0x601
    1de0:	468021a0 	cvt.s.w	$f6,$f4
    1de4:	240f0001 	li	t7,1
    1de8:	4407a000 	mfc1	a3,$f20
    1dec:	afaf0014 	sw	t7,20(sp)
    1df0:	24a5a814 	addiu	a1,a1,-22508
    1df4:	26040188 	addiu	a0,s0,392
    1df8:	e7a60010 	swc1	$f6,16(sp)
    1dfc:	3c063f80 	lui	a2,0x3f80
    1e00:	0c000000 	jal	0 <func_80A35310>
    1e04:	e7b40018 	swc1	$f20,24(sp)
    1e08:	8fb80038 	lw	t8,56(sp)
    1e0c:	861900b6 	lh	t9,182(s0)
    1e10:	870200b6 	lh	v0,182(t8)
    1e14:	00592023 	subu	a0,v0,t9
    1e18:	00042400 	sll	a0,a0,0x10
    1e1c:	00042403 	sra	a0,a0,0x10
    1e20:	0c000000 	jal	0 <func_80A35310>
    1e24:	a7a2003e 	sh	v0,62(sp)
    1e28:	4600a03c 	c.lt.s	$f20,$f0
    1e2c:	87a2003e 	lh	v0,62(sp)
    1e30:	3c01c120 	lui	at,0xc120
    1e34:	45020005 	bc1fl	1e4c <func_80A370BC+0xa0>
    1e38:	860800b6 	lh	t0,182(s0)
    1e3c:	44814000 	mtc1	at,$f8
    1e40:	1000001d 	b	1eb8 <func_80A370BC+0x10c>
    1e44:	e6080068 	swc1	$f8,104(s0)
    1e48:	860800b6 	lh	t0,182(s0)
    1e4c:	00482023 	subu	a0,v0,t0
    1e50:	00042400 	sll	a0,a0,0x10
    1e54:	0c000000 	jal	0 <func_80A35310>
    1e58:	00042403 	sra	a0,a0,0x10
    1e5c:	4614003c 	c.lt.s	$f0,$f20
    1e60:	3c014120 	lui	at,0x4120
    1e64:	45000004 	bc1f	1e78 <func_80A370BC+0xcc>
    1e68:	00000000 	nop
    1e6c:	44815000 	mtc1	at,$f10
    1e70:	10000011 	b	1eb8 <func_80A370BC+0x10c>
    1e74:	e60a0068 	swc1	$f10,104(s0)
    1e78:	0c000000 	jal	0 <func_80A35310>
    1e7c:	00000000 	nop
    1e80:	3c013f00 	lui	at,0x3f00
    1e84:	44818000 	mtc1	at,$f16
    1e88:	3c01c120 	lui	at,0xc120
    1e8c:	4600803c 	c.lt.s	$f16,$f0
    1e90:	00000000 	nop
    1e94:	45020006 	bc1fl	1eb0 <func_80A370BC+0x104>
    1e98:	44812000 	mtc1	at,$f4
    1e9c:	3c014120 	lui	at,0x4120
    1ea0:	44819000 	mtc1	at,$f18
    1ea4:	10000004 	b	1eb8 <func_80A370BC+0x10c>
    1ea8:	e6120068 	swc1	$f18,104(s0)
    1eac:	44812000 	mtc1	at,$f4
    1eb0:	00000000 	nop
    1eb4:	e6040068 	swc1	$f4,104(s0)
    1eb8:	c6060068 	lwc1	$f6,104(s0)
    1ebc:	3c013f00 	lui	at,0x3f00
    1ec0:	44815000 	mtc1	at,$f10
    1ec4:	46003207 	neg.s	$f8,$f6
    1ec8:	860900b6 	lh	t1,182(s0)
    1ecc:	460a4402 	mul.s	$f16,$f8,$f10
    1ed0:	240a0006 	li	t2,6
    1ed4:	240b0010 	li	t3,16
    1ed8:	3c050000 	lui	a1,0x0
    1edc:	ae0a0300 	sw	t2,768(s0)
    1ee0:	e6140304 	swc1	$f20,772(s0)
    1ee4:	e614030c 	swc1	$f20,780(s0)
    1ee8:	e61001a4 	swc1	$f16,420(s0)
    1eec:	ae0b02ec 	sw	t3,748(s0)
    1ef0:	24a50000 	addiu	a1,a1,0
    1ef4:	02002025 	move	a0,s0
    1ef8:	0c000000 	jal	0 <func_80A35310>
    1efc:	a6090032 	sh	t1,50(s0)
    1f00:	8fbf0034 	lw	ra,52(sp)
    1f04:	d7b40028 	ldc1	$f20,40(sp)
    1f08:	8fb00030 	lw	s0,48(sp)
    1f0c:	03e00008 	jr	ra
    1f10:	27bd0040 	addiu	sp,sp,64

00001f14 <func_80A37224>:
    1f14:	27bdffd0 	addiu	sp,sp,-48
    1f18:	afbf0024 	sw	ra,36(sp)
    1f1c:	afb00020 	sw	s0,32(sp)
    1f20:	afa50034 	sw	a1,52(sp)
    1f24:	848e008a 	lh	t6,138(a0)
    1f28:	94820088 	lhu	v0,136(a0)
    1f2c:	00808025 	move	s0,a0
    1f30:	25cf3a98 	addiu	t7,t6,15000
    1f34:	30420008 	andi	v0,v0,0x8
    1f38:	1440000c 	bnez	v0,1f6c <func_80A37224+0x58>
    1f3c:	a48f0032 	sh	t7,50(a0)
    1f40:	860700b6 	lh	a3,182(s0)
    1f44:	8fa50034 	lw	a1,52(sp)
    1f48:	8e060068 	lw	a2,104(s0)
    1f4c:	24e73e80 	addiu	a3,a3,16000
    1f50:	00073c00 	sll	a3,a3,0x10
    1f54:	0c000000 	jal	0 <func_80A35310>
    1f58:	00073c03 	sra	a3,a3,0x10
    1f5c:	5440002a 	bnezl	v0,2008 <func_80A37224+0xf4>
    1f60:	3c014234 	lui	at,0x4234
    1f64:	96020088 	lhu	v0,136(s0)
    1f68:	30420008 	andi	v0,v0,0x8
    1f6c:	10400015 	beqz	v0,1fc4 <func_80A37224+0xb0>
    1f70:	3c010000 	lui	at,0x0
    1f74:	44801000 	mtc1	zero,$f2
    1f78:	c6040068 	lwc1	$f4,104(s0)
    1f7c:	4604103e 	c.le.s	$f2,$f4
    1f80:	00000000 	nop
    1f84:	45020007 	bc1fl	1fa4 <func_80A37224+0x90>
    1f88:	860200b6 	lh	v0,182(s0)
    1f8c:	860200b6 	lh	v0,182(s0)
    1f90:	24423e80 	addiu	v0,v0,16000
    1f94:	00021400 	sll	v0,v0,0x10
    1f98:	10000005 	b	1fb0 <func_80A37224+0x9c>
    1f9c:	00021403 	sra	v0,v0,0x10
    1fa0:	860200b6 	lh	v0,182(s0)
    1fa4:	2442c180 	addiu	v0,v0,-16000
    1fa8:	00021400 	sll	v0,v0,0x10
    1fac:	00021403 	sra	v0,v0,0x10
    1fb0:	8618007e 	lh	t8,126(s0)
    1fb4:	03021023 	subu	v0,t8,v0
    1fb8:	00021400 	sll	v0,v0,0x10
    1fbc:	10000006 	b	1fd8 <func_80A37224+0xc4>
    1fc0:	00021403 	sra	v0,v0,0x10
    1fc4:	c6060068 	lwc1	$f6,104(s0)
    1fc8:	c4280000 	lwc1	$f8,0(at)
    1fcc:	00001025 	move	v0,zero
    1fd0:	46083282 	mul.s	$f10,$f6,$f8
    1fd4:	e60a0068 	swc1	$f10,104(s0)
    1fd8:	04400003 	bltz	v0,1fe8 <func_80A37224+0xd4>
    1fdc:	00021823 	negu	v1,v0
    1fe0:	10000001 	b	1fe8 <func_80A37224+0xd4>
    1fe4:	00401825 	move	v1,v0
    1fe8:	28614001 	slti	at,v1,16385
    1fec:	54200006 	bnezl	at,2008 <func_80A37224+0xf4>
    1ff0:	3c014234 	lui	at,0x4234
    1ff4:	0c000000 	jal	0 <func_80A35310>
    1ff8:	02002025 	move	a0,s0
    1ffc:	100000d4 	b	2350 <func_80A37224+0x43c>
    2000:	8fbf0024 	lw	ra,36(sp)
    2004:	3c014234 	lui	at,0x4234
    2008:	44819000 	mtc1	at,$f18
    200c:	c6000090 	lwc1	$f0,144(s0)
    2010:	44801000 	mtc1	zero,$f2
    2014:	4612003e 	c.le.s	$f0,$f18
    2018:	00000000 	nop
    201c:	45000008 	bc1f	2040 <func_80A37224+0x12c>
    2020:	26040304 	addiu	a0,s0,772
    2024:	3c05c080 	lui	a1,0xc080
    2028:	3c063f80 	lui	a2,0x3f80
    202c:	3c073fc0 	lui	a3,0x3fc0
    2030:	0c000000 	jal	0 <func_80A35310>
    2034:	e7a20010 	swc1	$f2,16(sp)
    2038:	10000016 	b	2094 <func_80A37224+0x180>
    203c:	c60c0304 	lwc1	$f12,772(s0)
    2040:	3c014220 	lui	at,0x4220
    2044:	44812000 	mtc1	at,$f4
    2048:	3c0740d4 	lui	a3,0x40d4
    204c:	3c054080 	lui	a1,0x4080
    2050:	4600203c 	c.lt.s	$f4,$f0
    2054:	34e7cccd 	ori	a3,a3,0xcccd
    2058:	26040304 	addiu	a0,s0,772
    205c:	3c063f80 	lui	a2,0x3f80
    2060:	45020009 	bc1fl	2088 <func_80A37224+0x174>
    2064:	44051000 	mfc1	a1,$f2
    2068:	26040304 	addiu	a0,s0,772
    206c:	3c063f80 	lui	a2,0x3f80
    2070:	3c073fc0 	lui	a3,0x3fc0
    2074:	0c000000 	jal	0 <func_80A35310>
    2078:	e7a20010 	swc1	$f2,16(sp)
    207c:	10000005 	b	2094 <func_80A37224+0x180>
    2080:	c60c0304 	lwc1	$f12,772(s0)
    2084:	44051000 	mfc1	a1,$f2
    2088:	0c000000 	jal	0 <func_80A35310>
    208c:	e7a20010 	swc1	$f2,16(sp)
    2090:	c60c0304 	lwc1	$f12,772(s0)
    2094:	44803000 	mtc1	zero,$f6
    2098:	00000000 	nop
    209c:	460c3032 	c.eq.s	$f6,$f12
    20a0:	00000000 	nop
    20a4:	45030010 	bc1tl	20e8 <func_80A37224+0x1d4>
    20a8:	44808000 	mtc1	zero,$f16
    20ac:	0c000000 	jal	0 <func_80A35310>
    20b0:	8604008a 	lh	a0,138(s0)
    20b4:	c60a0304 	lwc1	$f10,772(s0)
    20b8:	c6080024 	lwc1	$f8,36(s0)
    20bc:	8604008a 	lh	a0,138(s0)
    20c0:	460a0482 	mul.s	$f18,$f0,$f10
    20c4:	46124100 	add.s	$f4,$f8,$f18
    20c8:	0c000000 	jal	0 <func_80A35310>
    20cc:	e6040024 	swc1	$f4,36(s0)
    20d0:	c60c0304 	lwc1	$f12,772(s0)
    20d4:	c606002c 	lwc1	$f6,44(s0)
    20d8:	460c0282 	mul.s	$f10,$f0,$f12
    20dc:	460a3200 	add.s	$f8,$f6,$f10
    20e0:	e608002c 	swc1	$f8,44(s0)
    20e4:	44808000 	mtc1	zero,$f16
    20e8:	00000000 	nop
    20ec:	460c803e 	c.le.s	$f16,$f12
    20f0:	00000000 	nop
    20f4:	45020004 	bc1fl	2108 <func_80A37224+0x1f4>
    20f8:	46006387 	neg.s	$f14,$f12
    20fc:	10000002 	b	2108 <func_80A37224+0x1f4>
    2100:	46006386 	mov.s	$f14,$f12
    2104:	46006387 	neg.s	$f14,$f12
    2108:	c6000068 	lwc1	$f0,104(s0)
    210c:	3c013f00 	lui	at,0x3f00
    2110:	4600803e 	c.le.s	$f16,$f0
    2114:	00000000 	nop
    2118:	45020004 	bc1fl	212c <func_80A37224+0x218>
    211c:	46000087 	neg.s	$f2,$f0
    2120:	10000002 	b	212c <func_80A37224+0x218>
    2124:	46000086 	mov.s	$f2,$f0
    2128:	46000087 	neg.s	$f2,$f0
    212c:	4602703c 	c.lt.s	$f14,$f2
    2130:	00000000 	nop
    2134:	45020008 	bc1fl	2158 <func_80A37224+0x244>
    2138:	44814000 	mtc1	at,$f8
    213c:	3c013f00 	lui	at,0x3f00
    2140:	44812000 	mtc1	at,$f4
    2144:	46000487 	neg.s	$f18,$f0
    2148:	46049182 	mul.s	$f6,$f18,$f4
    214c:	10000005 	b	2164 <func_80A37224+0x250>
    2150:	e60601a4 	swc1	$f6,420(s0)
    2154:	44814000 	mtc1	at,$f8
    2158:	46006287 	neg.s	$f10,$f12
    215c:	46085482 	mul.s	$f18,$f10,$f8
    2160:	e61201a4 	swc1	$f18,420(s0)
    2164:	3c01c040 	lui	at,0xc040
    2168:	44811000 	mtc1	at,$f2
    216c:	c60001a4 	lwc1	$f0,420(s0)
    2170:	3c014040 	lui	at,0x4040
    2174:	4602003c 	c.lt.s	$f0,$f2
    2178:	00000000 	nop
    217c:	45020004 	bc1fl	2190 <func_80A37224+0x27c>
    2180:	44816000 	mtc1	at,$f12
    2184:	1000000b 	b	21b4 <func_80A37224+0x2a0>
    2188:	e60201a4 	swc1	$f2,420(s0)
    218c:	44816000 	mtc1	at,$f12
    2190:	00000000 	nop
    2194:	4600603c 	c.lt.s	$f12,$f0
    2198:	00000000 	nop
    219c:	45020004 	bc1fl	21b0 <func_80A37224+0x29c>
    21a0:	46000086 	mov.s	$f2,$f0
    21a4:	10000002 	b	21b0 <func_80A37224+0x29c>
    21a8:	46006086 	mov.s	$f2,$f12
    21ac:	46000086 	mov.s	$f2,$f0
    21b0:	e60201a4 	swc1	$f2,420(s0)
    21b4:	c60401a0 	lwc1	$f4,416(s0)
    21b8:	26040188 	addiu	a0,s0,392
    21bc:	4600218d 	trunc.w.s	$f6,$f4
    21c0:	44033000 	mfc1	v1,$f6
    21c4:	0c000000 	jal	0 <func_80A35310>
    21c8:	afa30028 	sw	v1,40(sp)
    21cc:	44808000 	mtc1	zero,$f16
    21d0:	c60001a4 	lwc1	$f0,420(s0)
    21d4:	8fa30028 	lw	v1,40(sp)
    21d8:	4600803e 	c.le.s	$f16,$f0
    21dc:	00000000 	nop
    21e0:	45020004 	bc1fl	21f4 <func_80A37224+0x2e0>
    21e4:	46000087 	neg.s	$f2,$f0
    21e8:	10000002 	b	21f4 <func_80A37224+0x2e0>
    21ec:	46000086 	mov.s	$f2,$f0
    21f0:	46000087 	neg.s	$f2,$f0
    21f4:	c60c01a0 	lwc1	$f12,416(s0)
    21f8:	4600803e 	c.le.s	$f16,$f0
    21fc:	46026281 	sub.s	$f10,$f12,$f2
    2200:	4600648d 	trunc.w.s	$f18,$f12
    2204:	4600520d 	trunc.w.s	$f8,$f10
    2208:	440a9000 	mfc1	t2,$f18
    220c:	44024000 	mfc1	v0,$f8
    2210:	45020004 	bc1fl	2224 <func_80A37224+0x310>
    2214:	46000087 	neg.s	$f2,$f0
    2218:	10000002 	b	2224 <func_80A37224+0x310>
    221c:	46000086 	mov.s	$f2,$f0
    2220:	46000087 	neg.s	$f2,$f0
    2224:	506a0015 	beql	v1,t2,227c <func_80A37224+0x368>
    2228:	8fb90034 	lw	t9,52(sp)
    222c:	04410007 	bgez	v0,224c <func_80A37224+0x338>
    2230:	28410005 	slti	at,v0,5
    2234:	4600110d 	trunc.w.s	$f4,$f2
    2238:	440c2000 	mfc1	t4,$f4
    223c:	00000000 	nop
    2240:	01836821 	addu	t5,t4,v1
    2244:	5da0000a 	bgtzl	t5,2270 <func_80A37224+0x35c>
    2248:	02002025 	move	a0,s0
    224c:	5020000b 	beqzl	at,227c <func_80A37224+0x368>
    2250:	8fb90034 	lw	t9,52(sp)
    2254:	4600118d 	trunc.w.s	$f6,$f2
    2258:	440f3000 	mfc1	t7,$f6
    225c:	00000000 	nop
    2260:	01e3c021 	addu	t8,t7,v1
    2264:	2b010006 	slti	at,t8,6
    2268:	14200003 	bnez	at,2278 <func_80A37224+0x364>
    226c:	02002025 	move	a0,s0
    2270:	0c000000 	jal	0 <func_80A35310>
    2274:	240539a0 	li	a1,14752
    2278:	8fb90034 	lw	t9,52(sp)
    227c:	3c080001 	lui	t0,0x1
    2280:	02002025 	move	a0,s0
    2284:	01194021 	addu	t0,t0,t9
    2288:	8d081de4 	lw	t0,7652(t0)
    228c:	3109005f 	andi	t1,t0,0x5f
    2290:	55200004 	bnezl	t1,22a4 <func_80A37224+0x390>
    2294:	8e0a0300 	lw	t2,768(s0)
    2298:	0c000000 	jal	0 <func_80A35310>
    229c:	240539c6 	li	a1,14790
    22a0:	8e0a0300 	lw	t2,768(s0)
    22a4:	254bffff 	addiu	t3,t2,-1
    22a8:	1560001a 	bnez	t3,2314 <func_80A37224+0x400>
    22ac:	ae0b0300 	sw	t3,768(s0)
    22b0:	860d008a 	lh	t5,138(s0)
    22b4:	02002825 	move	a1,s0
    22b8:	a60d00b6 	sh	t5,182(s0)
    22bc:	0c000000 	jal	0 <func_80A35310>
    22c0:	8fa40034 	lw	a0,52(sp)
    22c4:	14400021 	bnez	v0,234c <func_80A37224+0x438>
    22c8:	8fa40034 	lw	a0,52(sp)
    22cc:	0c000000 	jal	0 <func_80A35310>
    22d0:	02002825 	move	a1,s0
    22d4:	1440000b 	bnez	v0,2304 <func_80A37224+0x3f0>
    22d8:	3c01428c 	lui	at,0x428c
    22dc:	44815000 	mtc1	at,$f10
    22e0:	c6080090 	lwc1	$f8,144(s0)
    22e4:	460a403e 	c.le.s	$f8,$f10
    22e8:	00000000 	nop
    22ec:	45000005 	bc1f	2304 <func_80A37224+0x3f0>
    22f0:	00000000 	nop
    22f4:	0c000000 	jal	0 <func_80A35310>
    22f8:	02002025 	move	a0,s0
    22fc:	10000014 	b	2350 <func_80A37224+0x43c>
    2300:	8fbf0024 	lw	ra,36(sp)
    2304:	0c000000 	jal	0 <func_80A35310>
    2308:	02002025 	move	a0,s0
    230c:	10000010 	b	2350 <func_80A37224+0x43c>
    2310:	8fbf0024 	lw	ra,36(sp)
    2314:	c6120068 	lwc1	$f18,104(s0)
    2318:	44802000 	mtc1	zero,$f4
    231c:	00000000 	nop
    2320:	4612203e 	c.le.s	$f4,$f18
    2324:	00000000 	nop
    2328:	45020006 	bc1fl	2344 <func_80A37224+0x430>
    232c:	861800b6 	lh	t8,182(s0)
    2330:	860e00b6 	lh	t6,182(s0)
    2334:	25cf4000 	addiu	t7,t6,16384
    2338:	10000004 	b	234c <func_80A37224+0x438>
    233c:	a60f00b6 	sh	t7,182(s0)
    2340:	861800b6 	lh	t8,182(s0)
    2344:	2719c000 	addiu	t9,t8,-16384
    2348:	a61900b6 	sh	t9,182(s0)
    234c:	8fbf0024 	lw	ra,36(sp)
    2350:	8fb00020 	lw	s0,32(sp)
    2354:	27bd0030 	addiu	sp,sp,48
    2358:	03e00008 	jr	ra
    235c:	00000000 	nop

00002360 <func_80A37670>:
    2360:	27bdffe8 	addiu	sp,sp,-24
    2364:	afbf0014 	sw	ra,20(sp)
    2368:	00803025 	move	a2,a0
    236c:	3c050600 	lui	a1,0x600
    2370:	24a503cc 	addiu	a1,a1,972
    2374:	afa60018 	sw	a2,24(sp)
    2378:	0c000000 	jal	0 <func_80A35310>
    237c:	24840188 	addiu	a0,a0,392
    2380:	8fa60018 	lw	a2,24(sp)
    2384:	44802000 	mtc1	zero,$f4
    2388:	24180007 	li	t8,7
    238c:	90ce037c 	lbu	t6,892(a2)
    2390:	240539c6 	li	a1,14790
    2394:	acd802ec 	sw	t8,748(a2)
    2398:	31cffffb 	andi	t7,t6,0xfffb
    239c:	a0cf037c 	sb	t7,892(a2)
    23a0:	a4c00312 	sh	zero,786(a2)
    23a4:	24c400e4 	addiu	a0,a2,228
    23a8:	0c000000 	jal	0 <func_80A35310>
    23ac:	e4c40068 	swc1	$f4,104(a2)
    23b0:	3c050000 	lui	a1,0x0
    23b4:	8fa40018 	lw	a0,24(sp)
    23b8:	0c000000 	jal	0 <func_80A35310>
    23bc:	24a50000 	addiu	a1,a1,0
    23c0:	8fbf0014 	lw	ra,20(sp)
    23c4:	27bd0018 	addiu	sp,sp,24
    23c8:	03e00008 	jr	ra
    23cc:	00000000 	nop

000023d0 <func_80A376E0>:
    23d0:	27bdffd8 	addiu	sp,sp,-40
    23d4:	afbf001c 	sw	ra,28(sp)
    23d8:	afb00018 	sw	s0,24(sp)
    23dc:	afa5002c 	sw	a1,44(sp)
    23e0:	8ca31c44 	lw	v1,7236(a1)
    23e4:	848200b6 	lh	v0,182(a0)
    23e8:	00808025 	move	s0,a0
    23ec:	846f00b6 	lh	t7,182(v1)
    23f0:	24053998 	li	a1,14744
    23f4:	01e2c023 	subu	t8,t7,v0
    23f8:	a7b80022 	sh	t8,34(sp)
    23fc:	8499008a 	lh	t9,138(a0)
    2400:	87a90022 	lh	t1,34(sp)
    2404:	87aa0022 	lh	t2,34(sp)
    2408:	03224023 	subu	t0,t9,v0
    240c:	05210003 	bgez	t1,241c <func_80A376E0+0x4c>
    2410:	a7a80020 	sh	t0,32(sp)
    2414:	000a5823 	negu	t3,t2
    2418:	a7ab0022 	sh	t3,34(sp)
    241c:	87ac0020 	lh	t4,32(sp)
    2420:	87ad0020 	lh	t5,32(sp)
    2424:	05810002 	bgez	t4,2430 <func_80A376E0+0x60>
    2428:	000d7023 	negu	t6,t5
    242c:	a7ae0020 	sh	t6,32(sp)
    2430:	c60601a0 	lwc1	$f6,416(s0)
    2434:	44802000 	mtc1	zero,$f4
    2438:	24010001 	li	at,1
    243c:	4600320d 	trunc.w.s	$f8,$f6
    2440:	e6040068 	swc1	$f4,104(s0)
    2444:	44024000 	mfc1	v0,$f8
    2448:	00000000 	nop
    244c:	54410007 	bnel	v0,at,246c <func_80A376E0+0x9c>
    2450:	24010006 	li	at,6
    2454:	0c000000 	jal	0 <func_80A35310>
    2458:	02002025 	move	a0,s0
    245c:	24180001 	li	t8,1
    2460:	10000005 	b	2478 <func_80A376E0+0xa8>
    2464:	a6180310 	sh	t8,784(s0)
    2468:	24010006 	li	at,6
    246c:	14410002 	bne	v0,at,2478 <func_80A376E0+0xa8>
    2470:	2419ffff 	li	t9,-1
    2474:	a6190310 	sh	t9,784(s0)
    2478:	9202037c 	lbu	v0,892(s0)
    247c:	2409ffff 	li	t1,-1
    2480:	02002025 	move	a0,s0
    2484:	30480004 	andi	t0,v0,0x4
    2488:	11000006 	beqz	t0,24a4 <func_80A376E0+0xd4>
    248c:	304afff9 	andi	t2,v0,0xfff9
    2490:	a6090310 	sh	t1,784(s0)
    2494:	0c000000 	jal	0 <func_80A35310>
    2498:	a20a037c 	sb	t2,892(s0)
    249c:	1000005b 	b	260c <func_80A376E0+0x23c>
    24a0:	8fbf001c 	lw	ra,28(sp)
    24a4:	0c000000 	jal	0 <func_80A35310>
    24a8:	26040188 	addiu	a0,s0,392
    24ac:	10400056 	beqz	v0,2608 <func_80A376E0+0x238>
    24b0:	02002025 	move	a0,s0
    24b4:	0c000000 	jal	0 <func_80A35310>
    24b8:	24051554 	li	a1,5460
    24bc:	14400014 	bnez	v0,2510 <func_80A376E0+0x140>
    24c0:	00000000 	nop
    24c4:	0c000000 	jal	0 <func_80A35310>
    24c8:	02002025 	move	a0,s0
    24cc:	0c000000 	jal	0 <func_80A35310>
    24d0:	00000000 	nop
    24d4:	3c0140a0 	lui	at,0x40a0
    24d8:	44811000 	mtc1	at,$f2
    24dc:	240e0014 	li	t6,20
    24e0:	46020282 	mul.s	$f10,$f0,$f2
    24e4:	46025400 	add.s	$f16,$f10,$f2
    24e8:	4600848d 	trunc.w.s	$f18,$f16
    24ec:	440c9000 	mfc1	t4,$f18
    24f0:	00000000 	nop
    24f4:	ae0c0300 	sw	t4,768(s0)
    24f8:	87ad0020 	lh	t5,32(sp)
    24fc:	29a14001 	slti	at,t5,16385
    2500:	54200042 	bnezl	at,260c <func_80A376E0+0x23c>
    2504:	8fbf001c 	lw	ra,28(sp)
    2508:	1000003f 	b	2608 <func_80A376E0+0x238>
    250c:	a60e02fa 	sh	t6,762(s0)
    2510:	0c000000 	jal	0 <func_80A35310>
    2514:	00000000 	nop
    2518:	3c010000 	lui	at,0x0
    251c:	c4240000 	lwc1	$f4,0(at)
    2520:	3c0142f0 	lui	at,0x42f0
    2524:	4600203c 	c.lt.s	$f4,$f0
    2528:	00000000 	nop
    252c:	45010008 	bc1t	2550 <func_80A376E0+0x180>
    2530:	00000000 	nop
    2534:	c6060090 	lwc1	$f6,144(s0)
    2538:	44814000 	mtc1	at,$f8
    253c:	00000000 	nop
    2540:	4606403e 	c.le.s	$f8,$f6
    2544:	00000000 	nop
    2548:	4502000f 	bc1fl	2588 <func_80A376E0+0x1b8>
    254c:	8619008a 	lh	t9,138(s0)
    2550:	0c000000 	jal	0 <func_80A35310>
    2554:	02002025 	move	a0,s0
    2558:	0c000000 	jal	0 <func_80A35310>
    255c:	00000000 	nop
    2560:	3c0140a0 	lui	at,0x40a0
    2564:	44811000 	mtc1	at,$f2
    2568:	00000000 	nop
    256c:	46020282 	mul.s	$f10,$f0,$f2
    2570:	46025400 	add.s	$f16,$f10,$f2
    2574:	4600848d 	trunc.w.s	$f18,$f16
    2578:	44189000 	mfc1	t8,$f18
    257c:	10000022 	b	2608 <func_80A376E0+0x238>
    2580:	ae180300 	sw	t8,768(s0)
    2584:	8619008a 	lh	t9,138(s0)
    2588:	0c000000 	jal	0 <func_80A35310>
    258c:	a6190032 	sh	t9,50(s0)
    2590:	3c010000 	lui	at,0x0
    2594:	c4240000 	lwc1	$f4,0(at)
    2598:	87a80022 	lh	t0,34(sp)
    259c:	02002025 	move	a0,s0
    25a0:	4600203c 	c.lt.s	$f4,$f0
    25a4:	29012711 	slti	at,t0,10001
    25a8:	45000005 	bc1f	25c0 <func_80A376E0+0x1f0>
    25ac:	00000000 	nop
    25b0:	0c000000 	jal	0 <func_80A35310>
    25b4:	8fa5002c 	lw	a1,44(sp)
    25b8:	10000014 	b	260c <func_80A376E0+0x23c>
    25bc:	8fbf001c 	lw	ra,28(sp)
    25c0:	1020000f 	beqz	at,2600 <func_80A376E0+0x230>
    25c4:	87a90020 	lh	t1,32(sp)
    25c8:	29213e81 	slti	at,t1,16001
    25cc:	14200007 	bnez	at,25ec <func_80A376E0+0x21c>
    25d0:	8fa4002c 	lw	a0,44(sp)
    25d4:	860a008a 	lh	t2,138(s0)
    25d8:	02002025 	move	a0,s0
    25dc:	0c000000 	jal	0 <func_80A35310>
    25e0:	a60a0032 	sh	t2,50(s0)
    25e4:	10000009 	b	260c <func_80A376E0+0x23c>
    25e8:	8fbf001c 	lw	ra,28(sp)
    25ec:	02002825 	move	a1,s0
    25f0:	0c000000 	jal	0 <func_80A35310>
    25f4:	24060001 	li	a2,1
    25f8:	10000004 	b	260c <func_80A376E0+0x23c>
    25fc:	8fbf001c 	lw	ra,28(sp)
    2600:	0c000000 	jal	0 <func_80A35310>
    2604:	02002025 	move	a0,s0
    2608:	8fbf001c 	lw	ra,28(sp)
    260c:	8fb00018 	lw	s0,24(sp)
    2610:	27bd0028 	addiu	sp,sp,40
    2614:	03e00008 	jr	ra
    2618:	00000000 	nop

0000261c <func_80A3792C>:
    261c:	27bdffd0 	addiu	sp,sp,-48
    2620:	afb00028 	sw	s0,40(sp)
    2624:	00808025 	move	s0,a0
    2628:	afbf002c 	sw	ra,44(sp)
    262c:	3c040600 	lui	a0,0x600
    2630:	0c000000 	jal	0 <func_80A35310>
    2634:	24840f5c 	addiu	a0,a0,3932
    2638:	44822000 	mtc1	v0,$f4
    263c:	44800000 	mtc1	zero,$f0
    2640:	3c050600 	lui	a1,0x600
    2644:	468021a0 	cvt.s.w	$f6,$f4
    2648:	240e0003 	li	t6,3
    264c:	44070000 	mfc1	a3,$f0
    2650:	afae0014 	sw	t6,20(sp)
    2654:	24a50f5c 	addiu	a1,a1,3932
    2658:	26040188 	addiu	a0,s0,392
    265c:	e7a60010 	swc1	$f6,16(sp)
    2660:	3c063f80 	lui	a2,0x3f80
    2664:	0c000000 	jal	0 <func_80A35310>
    2668:	e7a00018 	swc1	$f0,24(sp)
    266c:	920f037c 	lbu	t7,892(s0)
    2670:	44804000 	mtc1	zero,$f8
    2674:	2419000c 	li	t9,12
    2678:	3c050000 	lui	a1,0x0
    267c:	31f8fff9 	andi	t8,t7,0xfff9
    2680:	a218037c 	sb	t8,892(s0)
    2684:	ae1902ec 	sw	t9,748(s0)
    2688:	a6000312 	sh	zero,786(s0)
    268c:	24a50000 	addiu	a1,a1,0
    2690:	02002025 	move	a0,s0
    2694:	0c000000 	jal	0 <func_80A35310>
    2698:	e6080068 	swc1	$f8,104(s0)
    269c:	8fbf002c 	lw	ra,44(sp)
    26a0:	8fb00028 	lw	s0,40(sp)
    26a4:	27bd0030 	addiu	sp,sp,48
    26a8:	03e00008 	jr	ra
    26ac:	00000000 	nop

000026b0 <func_80A379C0>:
    26b0:	27bdffc0 	addiu	sp,sp,-64
    26b4:	afbf0034 	sw	ra,52(sp)
    26b8:	afb00030 	sw	s0,48(sp)
    26bc:	afa50044 	sw	a1,68(sp)
    26c0:	8caf1c44 	lw	t7,7236(a1)
    26c4:	00808025 	move	s0,a0
    26c8:	afaf003c 	sw	t7,60(sp)
    26cc:	84980312 	lh	t8,786(a0)
    26d0:	2b010002 	slti	at,t8,2
    26d4:	50200030 	beqzl	at,2798 <func_80A379C0+0xe8>
    26d8:	c60801a0 	lwc1	$f8,416(s0)
    26dc:	9082037c 	lbu	v0,892(a0)
    26e0:	24090001 	li	t1,1
    26e4:	3c013fc0 	lui	at,0x3fc0
    26e8:	30590004 	andi	t9,v0,0x4
    26ec:	13200007 	beqz	t9,270c <func_80A379C0+0x5c>
    26f0:	304a0002 	andi	t2,v0,0x2
    26f4:	44812000 	mtc1	at,$f4
    26f8:	3048fff9 	andi	t0,v0,0xfff9
    26fc:	a088037c 	sb	t0,892(a0)
    2700:	a4890312 	sh	t1,786(a0)
    2704:	10000023 	b	2794 <func_80A379C0+0xe4>
    2708:	e48401a4 	swc1	$f4,420(a0)
    270c:	11400021 	beqz	t2,2794 <func_80A379C0+0xe4>
    2710:	304bfffd 	andi	t3,v0,0xfffd
    2714:	a20b037c 	sb	t3,892(s0)
    2718:	8fac003c 	lw	t4,60(sp)
    271c:	8e0d0370 	lw	t5,880(s0)
    2720:	3c0140c0 	lui	at,0x40c0
    2724:	8fa40044 	lw	a0,68(sp)
    2728:	558d001b 	bnel	t4,t5,2798 <func_80A379C0+0xe8>
    272c:	c60801a0 	lwc1	$f8,416(s0)
    2730:	44810000 	mtc1	at,$f0
    2734:	8607008a 	lh	a3,138(s0)
    2738:	02002825 	move	a1,s0
    273c:	44060000 	mfc1	a2,$f0
    2740:	0c000000 	jal	0 <func_80A35310>
    2744:	e7a00010 	swc1	$f0,16(sp)
    2748:	240e0002 	li	t6,2
    274c:	a60e0312 	sh	t6,786(s0)
    2750:	8fa40044 	lw	a0,68(sp)
    2754:	02002825 	move	a1,s0
    2758:	0c000000 	jal	0 <func_80A35310>
    275c:	24060018 	li	a2,24
    2760:	8fa40044 	lw	a0,68(sp)
    2764:	24056003 	li	a1,24579
    2768:	0c000000 	jal	0 <func_80A35310>
    276c:	02003025 	move	a2,s0
    2770:	44803000 	mtc1	zero,$f6
    2774:	240f001e 	li	t7,30
    2778:	ae0f0300 	sw	t7,768(s0)
    277c:	02002025 	move	a0,s0
    2780:	240539b9 	li	a1,14777
    2784:	0c000000 	jal	0 <func_80A35310>
    2788:	e6060068 	swc1	$f6,104(s0)
    278c:	100000b0 	b	2a50 <func_80A379C0+0x3a0>
    2790:	8fbf0034 	lw	ra,52(sp)
    2794:	c60801a0 	lwc1	$f8,416(s0)
    2798:	4600428d 	trunc.w.s	$f10,$f8
    279c:	44025000 	mfc1	v0,$f10
    27a0:	00000000 	nop
    27a4:	28410009 	slti	at,v0,9
    27a8:	50200006 	beqzl	at,27c4 <func_80A379C0+0x114>
    27ac:	2401000d 	li	at,13
    27b0:	8602008a 	lh	v0,138(s0)
    27b4:	a6020032 	sh	v0,50(s0)
    27b8:	10000031 	b	2880 <func_80A379C0+0x1d0>
    27bc:	a60200b6 	sh	v0,182(s0)
    27c0:	2401000d 	li	at,13
    27c4:	14410024 	bne	v0,at,2858 <func_80A379C0+0x1a8>
    27c8:	8fa40044 	lw	a0,68(sp)
    27cc:	3c014000 	lui	at,0x4000
    27d0:	44818000 	mtc1	at,$f16
    27d4:	24190002 	li	t9,2
    27d8:	afb90010 	sw	t9,16(sp)
    27dc:	02002825 	move	a1,s0
    27e0:	260604d0 	addiu	a2,s0,1232
    27e4:	3c074040 	lui	a3,0x4040
    27e8:	afa00018 	sw	zero,24(sp)
    27ec:	afa0001c 	sw	zero,28(sp)
    27f0:	afa00020 	sw	zero,32(sp)
    27f4:	0c000000 	jal	0 <func_80A35310>
    27f8:	e7b00014 	swc1	$f16,20(sp)
    27fc:	3c014000 	lui	at,0x4000
    2800:	44819000 	mtc1	at,$f18
    2804:	24080002 	li	t0,2
    2808:	afa80010 	sw	t0,16(sp)
    280c:	8fa40044 	lw	a0,68(sp)
    2810:	02002825 	move	a1,s0
    2814:	260604c4 	addiu	a2,s0,1220
    2818:	3c074040 	lui	a3,0x4040
    281c:	afa00018 	sw	zero,24(sp)
    2820:	afa0001c 	sw	zero,28(sp)
    2824:	afa00020 	sw	zero,32(sp)
    2828:	0c000000 	jal	0 <func_80A35310>
    282c:	e7b20014 	swc1	$f18,20(sp)
    2830:	3c014120 	lui	at,0x4120
    2834:	44812000 	mtc1	at,$f4
    2838:	24090001 	li	t1,1
    283c:	a6090310 	sh	t1,784(s0)
    2840:	02002025 	move	a0,s0
    2844:	24053998 	li	a1,14744
    2848:	0c000000 	jal	0 <func_80A35310>
    284c:	e6040068 	swc1	$f4,104(s0)
    2850:	1000000b 	b	2880 <func_80A379C0+0x1d0>
    2854:	00000000 	nop
    2858:	24010015 	li	at,21
    285c:	54410005 	bnel	v0,at,2874 <func_80A379C0+0x1c4>
    2860:	24010018 	li	at,24
    2864:	44803000 	mtc1	zero,$f6
    2868:	10000005 	b	2880 <func_80A379C0+0x1d0>
    286c:	e6060068 	swc1	$f6,104(s0)
    2870:	24010018 	li	at,24
    2874:	14410002 	bne	v0,at,2880 <func_80A379C0+0x1d0>
    2878:	240affff 	li	t2,-1
    287c:	a60a0310 	sh	t2,784(s0)
    2880:	0c000000 	jal	0 <func_80A35310>
    2884:	26040188 	addiu	a0,s0,392
    2888:	50400071 	beqzl	v0,2a50 <func_80A379C0+0x3a0>
    288c:	8fbf0034 	lw	ra,52(sp)
    2890:	860b0312 	lh	t3,786(s0)
    2894:	02002025 	move	a0,s0
    2898:	29610002 	slti	at,t3,2
    289c:	5020006c 	beqzl	at,2a50 <func_80A379C0+0x3a0>
    28a0:	8fbf0034 	lw	ra,52(sp)
    28a4:	0c000000 	jal	0 <func_80A35310>
    28a8:	24051554 	li	a1,5460
    28ac:	54400010 	bnezl	v0,28f0 <func_80A379C0+0x240>
    28b0:	860f0312 	lh	t7,786(s0)
    28b4:	0c000000 	jal	0 <func_80A35310>
    28b8:	02002025 	move	a0,s0
    28bc:	0c000000 	jal	0 <func_80A35310>
    28c0:	00000000 	nop
    28c4:	3c0140a0 	lui	at,0x40a0
    28c8:	44811000 	mtc1	at,$f2
    28cc:	240e002e 	li	t6,46
    28d0:	a60e02fa 	sh	t6,762(s0)
    28d4:	46020202 	mul.s	$f8,$f0,$f2
    28d8:	46024280 	add.s	$f10,$f8,$f2
    28dc:	4600540d 	trunc.w.s	$f16,$f10
    28e0:	440d8000 	mfc1	t5,$f16
    28e4:	10000059 	b	2a4c <func_80A379C0+0x39c>
    28e8:	ae0d0300 	sw	t5,768(s0)
    28ec:	860f0312 	lh	t7,786(s0)
    28f0:	11e00005 	beqz	t7,2908 <func_80A379C0+0x258>
    28f4:	00000000 	nop
    28f8:	0c000000 	jal	0 <func_80A35310>
    28fc:	02002025 	move	a0,s0
    2900:	10000053 	b	2a50 <func_80A379C0+0x3a0>
    2904:	8fbf0034 	lw	ra,52(sp)
    2908:	0c000000 	jal	0 <func_80A35310>
    290c:	00000000 	nop
    2910:	3c010000 	lui	at,0x0
    2914:	c4320000 	lwc1	$f18,0(at)
    2918:	3c0142f0 	lui	at,0x42f0
    291c:	4600903c 	c.lt.s	$f18,$f0
    2920:	00000000 	nop
    2924:	45010008 	bc1t	2948 <func_80A379C0+0x298>
    2928:	00000000 	nop
    292c:	c6040090 	lwc1	$f4,144(s0)
    2930:	44813000 	mtc1	at,$f6
    2934:	00000000 	nop
    2938:	4604303e 	c.le.s	$f6,$f4
    293c:	00000000 	nop
    2940:	4502000f 	bc1fl	2980 <func_80A379C0+0x2d0>
    2944:	8608008a 	lh	t0,138(s0)
    2948:	0c000000 	jal	0 <func_80A35310>
    294c:	02002025 	move	a0,s0
    2950:	0c000000 	jal	0 <func_80A35310>
    2954:	00000000 	nop
    2958:	3c0140a0 	lui	at,0x40a0
    295c:	44811000 	mtc1	at,$f2
    2960:	00000000 	nop
    2964:	46020202 	mul.s	$f8,$f0,$f2
    2968:	46024280 	add.s	$f10,$f8,$f2
    296c:	4600540d 	trunc.w.s	$f16,$f10
    2970:	44198000 	mfc1	t9,$f16
    2974:	10000035 	b	2a4c <func_80A379C0+0x39c>
    2978:	ae190300 	sw	t9,768(s0)
    297c:	8608008a 	lh	t0,138(s0)
    2980:	0c000000 	jal	0 <func_80A35310>
    2984:	a6080032 	sh	t0,50(s0)
    2988:	3c010000 	lui	at,0x0
    298c:	c4320000 	lwc1	$f18,0(at)
    2990:	02002025 	move	a0,s0
    2994:	8fa9003c 	lw	t1,60(sp)
    2998:	4600903c 	c.lt.s	$f18,$f0
    299c:	00000000 	nop
    29a0:	45020006 	bc1fl	29bc <func_80A379C0+0x30c>
    29a4:	860400b6 	lh	a0,182(s0)
    29a8:	0c000000 	jal	0 <func_80A35310>
    29ac:	8fa50044 	lw	a1,68(sp)
    29b0:	10000027 	b	2a50 <func_80A379C0+0x3a0>
    29b4:	8fbf0034 	lw	ra,52(sp)
    29b8:	860400b6 	lh	a0,182(s0)
    29bc:	852a00b6 	lh	t2,182(t1)
    29c0:	01441023 	subu	v0,t2,a0
    29c4:	00021400 	sll	v0,v0,0x10
    29c8:	00021403 	sra	v0,v0,0x10
    29cc:	04430005 	bgezl	v0,29e4 <func_80A379C0+0x334>
    29d0:	28412711 	slti	at,v0,10001
    29d4:	00021023 	negu	v0,v0
    29d8:	00021400 	sll	v0,v0,0x10
    29dc:	00021403 	sra	v0,v0,0x10
    29e0:	28412711 	slti	at,v0,10001
    29e4:	10200017 	beqz	at,2a44 <func_80A379C0+0x394>
    29e8:	00000000 	nop
    29ec:	8603008a 	lh	v1,138(s0)
    29f0:	02002825 	move	a1,s0
    29f4:	00641023 	subu	v0,v1,a0
    29f8:	00021400 	sll	v0,v0,0x10
    29fc:	00021403 	sra	v0,v0,0x10
    2a00:	04410004 	bgez	v0,2a14 <func_80A379C0+0x364>
    2a04:	8fa40044 	lw	a0,68(sp)
    2a08:	00021023 	negu	v0,v0
    2a0c:	00021400 	sll	v0,v0,0x10
    2a10:	00021403 	sra	v0,v0,0x10
    2a14:	28413e81 	slti	at,v0,16001
    2a18:	14200006 	bnez	at,2a34 <func_80A379C0+0x384>
    2a1c:	00000000 	nop
    2a20:	a6030032 	sh	v1,50(s0)
    2a24:	0c000000 	jal	0 <func_80A35310>
    2a28:	02002025 	move	a0,s0
    2a2c:	10000008 	b	2a50 <func_80A379C0+0x3a0>
    2a30:	8fbf0034 	lw	ra,52(sp)
    2a34:	0c000000 	jal	0 <func_80A35310>
    2a38:	24060001 	li	a2,1
    2a3c:	10000004 	b	2a50 <func_80A379C0+0x3a0>
    2a40:	8fbf0034 	lw	ra,52(sp)
    2a44:	0c000000 	jal	0 <func_80A35310>
    2a48:	02002025 	move	a0,s0
    2a4c:	8fbf0034 	lw	ra,52(sp)
    2a50:	8fb00030 	lw	s0,48(sp)
    2a54:	27bd0040 	addiu	sp,sp,64
    2a58:	03e00008 	jr	ra
    2a5c:	00000000 	nop

00002a60 <func_80A37D70>:
    2a60:	27bdffe8 	addiu	sp,sp,-24
    2a64:	afbf0014 	sw	ra,20(sp)
    2a68:	00803825 	move	a3,a0
    2a6c:	3c050600 	lui	a1,0x600
    2a70:	24a51390 	addiu	a1,a1,5008
    2a74:	afa70018 	sw	a3,24(sp)
    2a78:	24840188 	addiu	a0,a0,392
    2a7c:	0c000000 	jal	0 <func_80A35310>
    2a80:	3c06c040 	lui	a2,0xc040
    2a84:	8fa40018 	lw	a0,24(sp)
    2a88:	3c01c100 	lui	at,0xc100
    2a8c:	44812000 	mtc1	at,$f4
    2a90:	240e0001 	li	t6,1
    2a94:	240f0004 	li	t7,4
    2a98:	2405386c 	li	a1,14444
    2a9c:	ac800300 	sw	zero,768(a0)
    2aa0:	a48e0318 	sh	t6,792(a0)
    2aa4:	ac8f02ec 	sw	t7,748(a0)
    2aa8:	0c000000 	jal	0 <func_80A35310>
    2aac:	e4840068 	swc1	$f4,104(a0)
    2ab0:	8fa40018 	lw	a0,24(sp)
    2ab4:	3c050000 	lui	a1,0x0
    2ab8:	24a50000 	addiu	a1,a1,0
    2abc:	8482008a 	lh	v0,138(a0)
    2ac0:	a4820032 	sh	v0,50(a0)
    2ac4:	0c000000 	jal	0 <func_80A35310>
    2ac8:	a48200b6 	sh	v0,182(a0)
    2acc:	8fbf0014 	lw	ra,20(sp)
    2ad0:	27bd0018 	addiu	sp,sp,24
    2ad4:	03e00008 	jr	ra
    2ad8:	00000000 	nop

00002adc <func_80A37DEC>:
    2adc:	27bdffe0 	addiu	sp,sp,-32
    2ae0:	afb00018 	sw	s0,24(sp)
    2ae4:	00808025 	move	s0,a0
    2ae8:	afbf001c 	sw	ra,28(sp)
    2aec:	afa50024 	sw	a1,36(sp)
    2af0:	0c000000 	jal	0 <func_80A35310>
    2af4:	24840188 	addiu	a0,a0,392
    2af8:	1040002c 	beqz	v0,2bac <func_80A37DEC+0xd0>
    2afc:	8fa40024 	lw	a0,36(sp)
    2b00:	0c000000 	jal	0 <func_80A35310>
    2b04:	02002825 	move	a1,s0
    2b08:	1440001a 	bnez	v0,2b74 <func_80A37DEC+0x98>
    2b0c:	3c01432a 	lui	at,0x432a
    2b10:	c6000090 	lwc1	$f0,144(s0)
    2b14:	44812000 	mtc1	at,$f4
    2b18:	3c01430c 	lui	at,0x430c
    2b1c:	4604003c 	c.lt.s	$f0,$f4
    2b20:	00000000 	nop
    2b24:	45020014 	bc1fl	2b78 <func_80A37DEC+0x9c>
    2b28:	8fae0024 	lw	t6,36(sp)
    2b2c:	44813000 	mtc1	at,$f6
    2b30:	00000000 	nop
    2b34:	4600303c 	c.lt.s	$f6,$f0
    2b38:	00000000 	nop
    2b3c:	4502000e 	bc1fl	2b78 <func_80A37DEC+0x9c>
    2b40:	8fae0024 	lw	t6,36(sp)
    2b44:	0c000000 	jal	0 <func_80A35310>
    2b48:	00000000 	nop
    2b4c:	3c010000 	lui	at,0x0
    2b50:	c4280000 	lwc1	$f8,0(at)
    2b54:	4608003c 	c.lt.s	$f0,$f8
    2b58:	00000000 	nop
    2b5c:	45020006 	bc1fl	2b78 <func_80A37DEC+0x9c>
    2b60:	8fae0024 	lw	t6,36(sp)
    2b64:	0c000000 	jal	0 <func_80A35310>
    2b68:	02002025 	move	a0,s0
    2b6c:	10000010 	b	2bb0 <func_80A37DEC+0xd4>
    2b70:	8fb90024 	lw	t9,36(sp)
    2b74:	8fae0024 	lw	t6,36(sp)
    2b78:	3c0f0001 	lui	t7,0x1
    2b7c:	02002025 	move	a0,s0
    2b80:	01ee7821 	addu	t7,t7,t6
    2b84:	8def1de4 	lw	t7,7652(t7)
    2b88:	31f80001 	andi	t8,t7,0x1
    2b8c:	13000005 	beqz	t8,2ba4 <func_80A37DEC+0xc8>
    2b90:	00000000 	nop
    2b94:	0c000000 	jal	0 <func_80A35310>
    2b98:	01c02825 	move	a1,t6
    2b9c:	10000004 	b	2bb0 <func_80A37DEC+0xd4>
    2ba0:	8fb90024 	lw	t9,36(sp)
    2ba4:	0c000000 	jal	0 <func_80A35310>
    2ba8:	02002025 	move	a0,s0
    2bac:	8fb90024 	lw	t9,36(sp)
    2bb0:	02002025 	move	a0,s0
    2bb4:	8f28009c 	lw	t0,156(t9)
    2bb8:	3109005f 	andi	t1,t0,0x5f
    2bbc:	55200004 	bnezl	t1,2bd0 <func_80A37DEC+0xf4>
    2bc0:	8fbf001c 	lw	ra,28(sp)
    2bc4:	0c000000 	jal	0 <func_80A35310>
    2bc8:	240539c6 	li	a1,14790
    2bcc:	8fbf001c 	lw	ra,28(sp)
    2bd0:	8fb00018 	lw	s0,24(sp)
    2bd4:	27bd0020 	addiu	sp,sp,32
    2bd8:	03e00008 	jr	ra
    2bdc:	00000000 	nop

00002be0 <func_80A37EF0>:
    2be0:	27bdffe8 	addiu	sp,sp,-24
    2be4:	afbf0014 	sw	ra,20(sp)
    2be8:	948e0088 	lhu	t6,136(a0)
    2bec:	3c050600 	lui	a1,0x600
    2bf0:	00803825 	move	a3,a0
    2bf4:	31cf0001 	andi	t7,t6,0x1
    2bf8:	11e00004 	beqz	t7,2c0c <func_80A37EF0+0x2c>
    2bfc:	24a52280 	addiu	a1,a1,8832
    2c00:	44802000 	mtc1	zero,$f4
    2c04:	00000000 	nop
    2c08:	e4840068 	swc1	$f4,104(a0)
    2c0c:	90e202fe 	lbu	v0,766(a3)
    2c10:	2401000f 	li	at,15
    2c14:	24e40188 	addiu	a0,a3,392
    2c18:	14410005 	bne	v0,at,2c30 <func_80A37EF0+0x50>
    2c1c:	24060000 	li	a2,0
    2c20:	8cf802ec 	lw	t8,748(a3)
    2c24:	2401000c 	li	at,12
    2c28:	57010006 	bnel	t8,at,2c44 <func_80A37EF0+0x64>
    2c2c:	2401000f 	li	at,15
    2c30:	0c000000 	jal	0 <func_80A35310>
    2c34:	afa70018 	sw	a3,24(sp)
    2c38:	8fa70018 	lw	a3,24(sp)
    2c3c:	90e202fe 	lbu	v0,766(a3)
    2c40:	2401000f 	li	at,15
    2c44:	14410003 	bne	v0,at,2c54 <func_80A37EF0+0x74>
    2c48:	00e02025 	move	a0,a3
    2c4c:	24190024 	li	t9,36
    2c50:	a4f902fc 	sh	t9,764(a3)
    2c54:	2405389e 	li	a1,14494
    2c58:	0c000000 	jal	0 <func_80A35310>
    2c5c:	afa70018 	sw	a3,24(sp)
    2c60:	8fa40018 	lw	a0,24(sp)
    2c64:	2408000f 	li	t0,15
    2c68:	3c050000 	lui	a1,0x0
    2c6c:	24a50000 	addiu	a1,a1,0
    2c70:	0c000000 	jal	0 <func_80A35310>
    2c74:	ac8802ec 	sw	t0,748(a0)
    2c78:	8fbf0014 	lw	ra,20(sp)
    2c7c:	27bd0018 	addiu	sp,sp,24
    2c80:	03e00008 	jr	ra
    2c84:	00000000 	nop

00002c88 <func_80A37F98>:
    2c88:	27bdffe8 	addiu	sp,sp,-24
    2c8c:	afbf0014 	sw	ra,20(sp)
    2c90:	afa5001c 	sw	a1,28(sp)
    2c94:	94820088 	lhu	v0,136(a0)
    2c98:	00803825 	move	a3,a0
    2c9c:	304e0002 	andi	t6,v0,0x2
    2ca0:	51c00005 	beqzl	t6,2cb8 <func_80A37F98+0x30>
    2ca4:	304f0001 	andi	t7,v0,0x1
    2ca8:	44802000 	mtc1	zero,$f4
    2cac:	94820088 	lhu	v0,136(a0)
    2cb0:	e4840068 	swc1	$f4,104(a0)
    2cb4:	304f0001 	andi	t7,v0,0x1
    2cb8:	51e0000d 	beqzl	t7,2cf0 <func_80A37F98+0x68>
    2cbc:	90f80114 	lbu	t8,276(a3)
    2cc0:	c4e00068 	lwc1	$f0,104(a3)
    2cc4:	44803000 	mtc1	zero,$f6
    2cc8:	3c010000 	lui	at,0x0
    2ccc:	4606003c 	c.lt.s	$f0,$f6
    2cd0:	00000000 	nop
    2cd4:	45020005 	bc1fl	2cec <func_80A37F98+0x64>
    2cd8:	a4e00318 	sh	zero,792(a3)
    2cdc:	c4280000 	lwc1	$f8,0(at)
    2ce0:	46080280 	add.s	$f10,$f0,$f8
    2ce4:	e4ea0068 	swc1	$f10,104(a3)
    2ce8:	a4e00318 	sh	zero,792(a3)
    2cec:	90f80114 	lbu	t8,276(a3)
    2cf0:	57000011 	bnezl	t8,2d38 <func_80A37F98+0xb0>
    2cf4:	8fbf0014 	lw	ra,20(sp)
    2cf8:	94f90088 	lhu	t9,136(a3)
    2cfc:	33280001 	andi	t0,t9,0x1
    2d00:	5100000d 	beqzl	t0,2d38 <func_80A37F98+0xb0>
    2d04:	8fbf0014 	lw	ra,20(sp)
    2d08:	90e900af 	lbu	t1,175(a3)
    2d0c:	8fa4001c 	lw	a0,28(sp)
    2d10:	00e02825 	move	a1,a3
    2d14:	15200005 	bnez	t1,2d2c <func_80A37F98+0xa4>
    2d18:	00000000 	nop
    2d1c:	0c000000 	jal	0 <func_80A35310>
    2d20:	00e02025 	move	a0,a3
    2d24:	10000004 	b	2d38 <func_80A37F98+0xb0>
    2d28:	8fbf0014 	lw	ra,20(sp)
    2d2c:	0c000000 	jal	0 <func_80A35310>
    2d30:	24060001 	li	a2,1
    2d34:	8fbf0014 	lw	ra,20(sp)
    2d38:	27bd0018 	addiu	sp,sp,24
    2d3c:	03e00008 	jr	ra
    2d40:	00000000 	nop

00002d44 <func_80A38054>:
    2d44:	27bdffe8 	addiu	sp,sp,-24
    2d48:	afbf0014 	sw	ra,20(sp)
    2d4c:	00803825 	move	a3,a0
    2d50:	3c050600 	lui	a1,0x600
    2d54:	24a52280 	addiu	a1,a1,8832
    2d58:	afa70018 	sw	a3,24(sp)
    2d5c:	24840188 	addiu	a0,a0,392
    2d60:	0c000000 	jal	0 <func_80A35310>
    2d64:	3c06c080 	lui	a2,0xc080
    2d68:	8fa70018 	lw	a3,24(sp)
    2d6c:	3c01c080 	lui	at,0xc080
    2d70:	24180001 	li	t8,1
    2d74:	94ee0088 	lhu	t6,136(a3)
    2d78:	00e02025 	move	a0,a3
    2d7c:	31cf0001 	andi	t7,t6,0x1
    2d80:	51e00006 	beqzl	t7,2d9c <func_80A38054+0x58>
    2d84:	a4f80318 	sh	t8,792(a3)
    2d88:	44812000 	mtc1	at,$f4
    2d8c:	a4e00318 	sh	zero,792(a3)
    2d90:	10000002 	b	2d9c <func_80A38054+0x58>
    2d94:	e4e40068 	swc1	$f4,104(a3)
    2d98:	a4f80318 	sh	t8,792(a3)
    2d9c:	84f9008a 	lh	t9,138(a3)
    2da0:	a4e002fa 	sh	zero,762(a3)
    2da4:	24053999 	li	a1,14745
    2da8:	a4f90032 	sh	t9,50(a3)
    2dac:	0c000000 	jal	0 <func_80A35310>
    2db0:	afa70018 	sw	a3,24(sp)
    2db4:	8fa40018 	lw	a0,24(sp)
    2db8:	24080002 	li	t0,2
    2dbc:	3c050000 	lui	a1,0x0
    2dc0:	24a50000 	addiu	a1,a1,0
    2dc4:	0c000000 	jal	0 <func_80A35310>
    2dc8:	ac8802ec 	sw	t0,748(a0)
    2dcc:	8fbf0014 	lw	ra,20(sp)
    2dd0:	27bd0018 	addiu	sp,sp,24
    2dd4:	03e00008 	jr	ra
    2dd8:	00000000 	nop

00002ddc <func_80A380EC>:
    2ddc:	27bdffd8 	addiu	sp,sp,-40
    2de0:	afbf0024 	sw	ra,36(sp)
    2de4:	afb00020 	sw	s0,32(sp)
    2de8:	afa5002c 	sw	a1,44(sp)
    2dec:	94820088 	lhu	v0,136(a0)
    2df0:	00808025 	move	s0,a0
    2df4:	24060001 	li	a2,1
    2df8:	304e0002 	andi	t6,v0,0x2
    2dfc:	11c00004 	beqz	t6,2e10 <func_80A380EC+0x34>
    2e00:	24071194 	li	a3,4500
    2e04:	44802000 	mtc1	zero,$f4
    2e08:	94820088 	lhu	v0,136(a0)
    2e0c:	e4840068 	swc1	$f4,104(a0)
    2e10:	304f0001 	andi	t7,v0,0x1
    2e14:	11e0000c 	beqz	t7,2e48 <func_80A380EC+0x6c>
    2e18:	260400b6 	addiu	a0,s0,182
    2e1c:	c6000068 	lwc1	$f0,104(s0)
    2e20:	44803000 	mtc1	zero,$f6
    2e24:	3c010000 	lui	at,0x0
    2e28:	4606003c 	c.lt.s	$f0,$f6
    2e2c:	00000000 	nop
    2e30:	45020005 	bc1fl	2e48 <func_80A380EC+0x6c>
    2e34:	a6000318 	sh	zero,792(s0)
    2e38:	c4280000 	lwc1	$f8,0(at)
    2e3c:	46080280 	add.s	$f10,$f0,$f8
    2e40:	e60a0068 	swc1	$f10,104(s0)
    2e44:	a6000318 	sh	zero,792(s0)
    2e48:	8605008a 	lh	a1,138(s0)
    2e4c:	0c000000 	jal	0 <func_80A35310>
    2e50:	afa00010 	sw	zero,16(sp)
    2e54:	8fa4002c 	lw	a0,44(sp)
    2e58:	0c000000 	jal	0 <func_80A35310>
    2e5c:	02002825 	move	a1,s0
    2e60:	14400042 	bnez	v0,2f6c <func_80A380EC+0x190>
    2e64:	8fa4002c 	lw	a0,44(sp)
    2e68:	02002825 	move	a1,s0
    2e6c:	0c000000 	jal	0 <func_80A35310>
    2e70:	00003025 	move	a2,zero
    2e74:	5440003e 	bnezl	v0,2f70 <func_80A380EC+0x194>
    2e78:	8fbf0024 	lw	ra,36(sp)
    2e7c:	0c000000 	jal	0 <func_80A35310>
    2e80:	26040188 	addiu	a0,s0,392
    2e84:	5040003a 	beqzl	v0,2f70 <func_80A380EC+0x194>
    2e88:	8fbf0024 	lw	ra,36(sp)
    2e8c:	96020088 	lhu	v0,136(s0)
    2e90:	30580001 	andi	t8,v0,0x1
    2e94:	53000036 	beqzl	t8,2f70 <func_80A380EC+0x194>
    2e98:	8fbf0024 	lw	ra,36(sp)
    2e9c:	8619007e 	lh	t9,126(s0)
    2ea0:	860800b6 	lh	t0,182(s0)
    2ea4:	30490008 	andi	t1,v0,0x8
    2ea8:	8fa4002c 	lw	a0,44(sp)
    2eac:	03281823 	subu	v1,t9,t0
    2eb0:	00031c00 	sll	v1,v1,0x10
    2eb4:	11200012 	beqz	t1,2f00 <func_80A380EC+0x124>
    2eb8:	00031c03 	sra	v1,v1,0x10
    2ebc:	04600003 	bltz	v1,2ecc <func_80A380EC+0xf0>
    2ec0:	00031023 	negu	v0,v1
    2ec4:	10000001 	b	2ecc <func_80A380EC+0xf0>
    2ec8:	00601025 	move	v0,v1
    2ecc:	28412ee0 	slti	at,v0,12000
    2ed0:	1020000b 	beqz	at,2f00 <func_80A380EC+0x124>
    2ed4:	3c0142b4 	lui	at,0x42b4
    2ed8:	44819000 	mtc1	at,$f18
    2edc:	c6100090 	lwc1	$f16,144(s0)
    2ee0:	4612803c 	c.lt.s	$f16,$f18
    2ee4:	00000000 	nop
    2ee8:	45000005 	bc1f	2f00 <func_80A380EC+0x124>
    2eec:	00000000 	nop
    2ef0:	0c000000 	jal	0 <func_80A35310>
    2ef4:	02002025 	move	a0,s0
    2ef8:	1000001d 	b	2f70 <func_80A380EC+0x194>
    2efc:	8fbf0024 	lw	ra,36(sp)
    2f00:	0c000000 	jal	0 <func_80A35310>
    2f04:	02002825 	move	a1,s0
    2f08:	14400018 	bnez	v0,2f6c <func_80A380EC+0x190>
    2f0c:	3c014234 	lui	at,0x4234
    2f10:	44812000 	mtc1	at,$f4
    2f14:	c6060090 	lwc1	$f6,144(s0)
    2f18:	8fa4002c 	lw	a0,44(sp)
    2f1c:	4604303e 	c.le.s	$f6,$f4
    2f20:	00000000 	nop
    2f24:	4500000f 	bc1f	2f64 <func_80A380EC+0x188>
    2f28:	00000000 	nop
    2f2c:	0c000000 	jal	0 <func_80A35310>
    2f30:	02002825 	move	a1,s0
    2f34:	1440000b 	bnez	v0,2f64 <func_80A380EC+0x188>
    2f38:	8faa002c 	lw	t2,44(sp)
    2f3c:	3c0b0001 	lui	t3,0x1
    2f40:	016a5821 	addu	t3,t3,t2
    2f44:	8d6b1de4 	lw	t3,7652(t3)
    2f48:	316c0007 	andi	t4,t3,0x7
    2f4c:	11800005 	beqz	t4,2f64 <func_80A380EC+0x188>
    2f50:	00000000 	nop
    2f54:	0c000000 	jal	0 <func_80A35310>
    2f58:	02002025 	move	a0,s0
    2f5c:	10000004 	b	2f70 <func_80A380EC+0x194>
    2f60:	8fbf0024 	lw	ra,36(sp)
    2f64:	0c000000 	jal	0 <func_80A35310>
    2f68:	02002025 	move	a0,s0
    2f6c:	8fbf0024 	lw	ra,36(sp)
    2f70:	8fb00020 	lw	s0,32(sp)
    2f74:	27bd0028 	addiu	sp,sp,40
    2f78:	03e00008 	jr	ra
    2f7c:	00000000 	nop

00002f80 <func_80A38290>:
    2f80:	27bdffd0 	addiu	sp,sp,-48
    2f84:	afb00028 	sw	s0,40(sp)
    2f88:	00808025 	move	s0,a0
    2f8c:	afbf002c 	sw	ra,44(sp)
    2f90:	3c040600 	lui	a0,0x600
    2f94:	0c000000 	jal	0 <func_80A35310>
    2f98:	24841390 	addiu	a0,a0,5008
    2f9c:	44822000 	mtc1	v0,$f4
    2fa0:	3c01c040 	lui	at,0xc040
    2fa4:	44814000 	mtc1	at,$f8
    2fa8:	46802120 	cvt.s.w	$f4,$f4
    2fac:	44803000 	mtc1	zero,$f6
    2fb0:	3c050600 	lui	a1,0x600
    2fb4:	240e0002 	li	t6,2
    2fb8:	afae0014 	sw	t6,20(sp)
    2fbc:	24a51390 	addiu	a1,a1,5008
    2fc0:	44072000 	mfc1	a3,$f4
    2fc4:	26040188 	addiu	a0,s0,392
    2fc8:	3c06bf80 	lui	a2,0xbf80
    2fcc:	e7a80018 	swc1	$f8,24(sp)
    2fd0:	0c000000 	jal	0 <func_80A35310>
    2fd4:	e7a60010 	swc1	$f6,16(sp)
    2fd8:	3c0140d0 	lui	at,0x40d0
    2fdc:	44815000 	mtc1	at,$f10
    2fe0:	3c014170 	lui	at,0x4170
    2fe4:	44818000 	mtc1	at,$f16
    2fe8:	240f0003 	li	t7,3
    2fec:	ae000300 	sw	zero,768(s0)
    2ff0:	a6000318 	sh	zero,792(s0)
    2ff4:	ae0f02ec 	sw	t7,748(s0)
    2ff8:	02002025 	move	a0,s0
    2ffc:	2405386c 	li	a1,14444
    3000:	e60a0068 	swc1	$f10,104(s0)
    3004:	0c000000 	jal	0 <func_80A35310>
    3008:	e6100060 	swc1	$f16,96(s0)
    300c:	861800b6 	lh	t8,182(s0)
    3010:	3c050000 	lui	a1,0x0
    3014:	24a50000 	addiu	a1,a1,0
    3018:	02002025 	move	a0,s0
    301c:	0c000000 	jal	0 <func_80A35310>
    3020:	a6180032 	sh	t8,50(s0)
    3024:	8fbf002c 	lw	ra,44(sp)
    3028:	8fb00028 	lw	s0,40(sp)
    302c:	27bd0030 	addiu	sp,sp,48
    3030:	03e00008 	jr	ra
    3034:	00000000 	nop

00003038 <func_80A38348>:
    3038:	27bdffd8 	addiu	sp,sp,-40
    303c:	afb00020 	sw	s0,32(sp)
    3040:	00808025 	move	s0,a0
    3044:	afbf0024 	sw	ra,36(sp)
    3048:	afa5002c 	sw	a1,44(sp)
    304c:	8605008a 	lh	a1,138(s0)
    3050:	240e0001 	li	t6,1
    3054:	afae0010 	sw	t6,16(sp)
    3058:	248400b6 	addiu	a0,a0,182
    305c:	24060001 	li	a2,1
    3060:	0c000000 	jal	0 <func_80A35310>
    3064:	24070fa0 	li	a3,4000
    3068:	3c0140a0 	lui	at,0x40a0
    306c:	44813000 	mtc1	at,$f6
    3070:	c6040060 	lwc1	$f4,96(s0)
    3074:	8fa4002c 	lw	a0,44(sp)
    3078:	4604303e 	c.le.s	$f6,$f4
    307c:	00000000 	nop
    3080:	45000006 	bc1f	309c <func_80A38348+0x64>
    3084:	00000000 	nop
    3088:	0c000000 	jal	0 <func_80A35310>
    308c:	260504d0 	addiu	a1,s0,1232
    3090:	8fa4002c 	lw	a0,44(sp)
    3094:	0c000000 	jal	0 <func_80A35310>
    3098:	260504c4 	addiu	a1,s0,1220
    309c:	0c000000 	jal	0 <func_80A35310>
    30a0:	26040188 	addiu	a0,s0,392
    30a4:	5040001a 	beqzl	v0,3110 <func_80A38348+0xd8>
    30a8:	8fbf0024 	lw	ra,36(sp)
    30ac:	960f0088 	lhu	t7,136(s0)
    30b0:	02002825 	move	a1,s0
    30b4:	31f80003 	andi	t8,t7,0x3
    30b8:	53000015 	beqzl	t8,3110 <func_80A38348+0xd8>
    30bc:	8fbf0024 	lw	ra,36(sp)
    30c0:	44800000 	mtc1	zero,$f0
    30c4:	8602008a 	lh	v0,138(s0)
    30c8:	c6080080 	lwc1	$f8,128(s0)
    30cc:	a60000b4 	sh	zero,180(s0)
    30d0:	a60200b6 	sh	v0,182(s0)
    30d4:	a6020032 	sh	v0,50(s0)
    30d8:	e6000068 	swc1	$f0,104(s0)
    30dc:	e6000060 	swc1	$f0,96(s0)
    30e0:	e6080028 	swc1	$f8,40(s0)
    30e4:	0c000000 	jal	0 <func_80A35310>
    30e8:	8fa4002c 	lw	a0,44(sp)
    30ec:	14400005 	bnez	v0,3104 <func_80A38348+0xcc>
    30f0:	00000000 	nop
    30f4:	0c000000 	jal	0 <func_80A35310>
    30f8:	02002025 	move	a0,s0
    30fc:	10000004 	b	3110 <func_80A38348+0xd8>
    3100:	8fbf0024 	lw	ra,36(sp)
    3104:	0c000000 	jal	0 <func_80A35310>
    3108:	02002025 	move	a0,s0
    310c:	8fbf0024 	lw	ra,36(sp)
    3110:	8fb00020 	lw	s0,32(sp)
    3114:	27bd0028 	addiu	sp,sp,40
    3118:	03e00008 	jr	ra
    311c:	00000000 	nop

00003120 <func_80A38430>:
    3120:	27bdffc8 	addiu	sp,sp,-56
    3124:	afb00028 	sw	s0,40(sp)
    3128:	00808025 	move	s0,a0
    312c:	afbf002c 	sw	ra,44(sp)
    3130:	3c040600 	lui	a0,0x600
    3134:	0c000000 	jal	0 <func_80A35310>
    3138:	24841578 	addiu	a0,a0,5496
    313c:	860e0310 	lh	t6,784(s0)
    3140:	44822000 	mtc1	v0,$f4
    3144:	44801000 	mtc1	zero,$f2
    3148:	11c00003 	beqz	t6,3158 <func_80A38430+0x38>
    314c:	468023a0 	cvt.s.w	$f14,$f4
    3150:	240fffff 	li	t7,-1
    3154:	a60f0310 	sh	t7,784(s0)
    3158:	24180006 	li	t8,6
    315c:	3c014120 	lui	at,0x4120
    3160:	e6020068 	swc1	$f2,104(s0)
    3164:	ae1802ec 	sw	t8,748(s0)
    3168:	44816000 	mtc1	at,$f12
    316c:	0c000000 	jal	0 <func_80A35310>
    3170:	e7ae0034 	swc1	$f14,52(sp)
    3174:	4600018d 	trunc.w.s	$f6,$f0
    3178:	44801000 	mtc1	zero,$f2
    317c:	c7ae0034 	lwc1	$f14,52(sp)
    3180:	3c050600 	lui	a1,0x600
    3184:	44083000 	mfc1	t0,$f6
    3188:	240a0002 	li	t2,2
    318c:	44061000 	mfc1	a2,$f2
    3190:	2509000a 	addiu	t1,t0,10
    3194:	ae090300 	sw	t1,768(s0)
    3198:	44071000 	mfc1	a3,$f2
    319c:	afaa0014 	sw	t2,20(sp)
    31a0:	24a51578 	addiu	a1,a1,5496
    31a4:	26040188 	addiu	a0,s0,392
    31a8:	e7a20018 	swc1	$f2,24(sp)
    31ac:	0c000000 	jal	0 <func_80A35310>
    31b0:	e7ae0010 	swc1	$f14,16(sp)
    31b4:	3c050000 	lui	a1,0x0
    31b8:	24a50000 	addiu	a1,a1,0
    31bc:	0c000000 	jal	0 <func_80A35310>
    31c0:	02002025 	move	a0,s0
    31c4:	8fbf002c 	lw	ra,44(sp)
    31c8:	8fb00028 	lw	s0,40(sp)
    31cc:	27bd0038 	addiu	sp,sp,56
    31d0:	03e00008 	jr	ra
    31d4:	00000000 	nop

000031d8 <func_80A384E8>:
    31d8:	27bdffc8 	addiu	sp,sp,-56
    31dc:	afbf0024 	sw	ra,36(sp)
    31e0:	afb00020 	sw	s0,32(sp)
    31e4:	afa5003c 	sw	a1,60(sp)
    31e8:	8c820300 	lw	v0,768(a0)
    31ec:	00808025 	move	s0,a0
    31f0:	8ca91c44 	lw	t1,7236(a1)
    31f4:	10400004 	beqz	v0,3208 <func_80A384E8+0x30>
    31f8:	3c013f80 	lui	at,0x3f80
    31fc:	244fffff 	addiu	t7,v0,-1
    3200:	10000004 	b	3214 <func_80A384E8+0x3c>
    3204:	ac8f0300 	sw	t7,768(a0)
    3208:	44812000 	mtc1	at,$f4
    320c:	00000000 	nop
    3210:	e60401a4 	swc1	$f4,420(s0)
    3214:	26040188 	addiu	a0,s0,392
    3218:	0c000000 	jal	0 <func_80A35310>
    321c:	afa90034 	sw	t1,52(sp)
    3220:	10400067 	beqz	v0,33c0 <func_80A384E8+0x1e8>
    3224:	8fa90034 	lw	t1,52(sp)
    3228:	860800b6 	lh	t0,182(s0)
    322c:	8618008a 	lh	t8,138(s0)
    3230:	03081023 	subu	v0,t8,t0
    3234:	00021400 	sll	v0,v0,0x10
    3238:	00021403 	sra	v0,v0,0x10
    323c:	04400003 	bltz	v0,324c <func_80A384E8+0x74>
    3240:	00021823 	negu	v1,v0
    3244:	10000001 	b	324c <func_80A384E8+0x74>
    3248:	00401825 	move	v1,v0
    324c:	28614001 	slti	at,v1,16385
    3250:	10200057 	beqz	at,33b0 <func_80A384E8+0x1d8>
    3254:	3c014220 	lui	at,0x4220
    3258:	44814000 	mtc1	at,$f8
    325c:	c6060090 	lwc1	$f6,144(s0)
    3260:	3c014248 	lui	at,0x4248
    3264:	4608303c 	c.lt.s	$f6,$f8
    3268:	00000000 	nop
    326c:	45000050 	bc1f	33b0 <func_80A384E8+0x1d8>
    3270:	00000000 	nop
    3274:	c6000094 	lwc1	$f0,148(s0)
    3278:	44805000 	mtc1	zero,$f10
    327c:	44818000 	mtc1	at,$f16
    3280:	8fa4003c 	lw	a0,60(sp)
    3284:	4600503e 	c.le.s	$f10,$f0
    3288:	02002825 	move	a1,s0
    328c:	3c0642c8 	lui	a2,0x42c8
    3290:	24072710 	li	a3,10000
    3294:	45000003 	bc1f	32a4 <func_80A384E8+0xcc>
    3298:	24194000 	li	t9,16384
    329c:	10000002 	b	32a8 <func_80A384E8+0xd0>
    32a0:	46000086 	mov.s	$f2,$f0
    32a4:	46000087 	neg.s	$f2,$f0
    32a8:	4610103c 	c.lt.s	$f2,$f16
    32ac:	00000000 	nop
    32b0:	4500003f 	bc1f	33b0 <func_80A384E8+0x1d8>
    32b4:	00000000 	nop
    32b8:	afb90010 	sw	t9,16(sp)
    32bc:	afa80014 	sw	t0,20(sp)
    32c0:	0c000000 	jal	0 <func_80A35310>
    32c4:	afa90034 	sw	t1,52(sp)
    32c8:	10400018 	beqz	v0,332c <func_80A384E8+0x154>
    32cc:	8fa90034 	lw	t1,52(sp)
    32d0:	812a0842 	lb	t2,2114(t1)
    32d4:	24010011 	li	at,17
    32d8:	8fab003c 	lw	t3,60(sp)
    32dc:	15410006 	bne	t2,at,32f8 <func_80A384E8+0x120>
    32e0:	3c0c0001 	lui	t4,0x1
    32e4:	02002025 	move	a0,s0
    32e8:	0c000000 	jal	0 <func_80A35310>
    32ec:	8fa5003c 	lw	a1,60(sp)
    32f0:	1000006f 	b	34b0 <func_80A384E8+0x2d8>
    32f4:	8fbf0024 	lw	ra,36(sp)
    32f8:	018b6021 	addu	t4,t4,t3
    32fc:	8d8c1de4 	lw	t4,7652(t4)
    3300:	318d0001 	andi	t5,t4,0x1
    3304:	11a00005 	beqz	t5,331c <func_80A384E8+0x144>
    3308:	00000000 	nop
    330c:	0c000000 	jal	0 <func_80A35310>
    3310:	02002025 	move	a0,s0
    3314:	10000066 	b	34b0 <func_80A384E8+0x2d8>
    3318:	8fbf0024 	lw	ra,36(sp)
    331c:	0c000000 	jal	0 <func_80A35310>
    3320:	02002025 	move	a0,s0
    3324:	10000062 	b	34b0 <func_80A384E8+0x2d8>
    3328:	8fbf0024 	lw	ra,36(sp)
    332c:	852e00b6 	lh	t6,182(t1)
    3330:	860f00b6 	lh	t7,182(s0)
    3334:	8fa4003c 	lw	a0,60(sp)
    3338:	02002825 	move	a1,s0
    333c:	01cf3023 	subu	a2,t6,t7
    3340:	00063400 	sll	a2,a2,0x10
    3344:	00063403 	sra	a2,a2,0x10
    3348:	0c000000 	jal	0 <func_80A35310>
    334c:	a7a6002c 	sh	a2,44(sp)
    3350:	14400013 	bnez	v0,33a0 <func_80A384E8+0x1c8>
    3354:	87a6002c 	lh	a2,44(sp)
    3358:	8fb8003c 	lw	t8,60(sp)
    335c:	3c190001 	lui	t9,0x1
    3360:	0338c821 	addu	t9,t9,t8
    3364:	8f391de4 	lw	t9,7652(t9)
    3368:	332a0001 	andi	t2,t9,0x1
    336c:	15400008 	bnez	t2,3390 <func_80A384E8+0x1b8>
    3370:	00000000 	nop
    3374:	04c00003 	bltz	a2,3384 <func_80A384E8+0x1ac>
    3378:	00061823 	negu	v1,a2
    337c:	10000001 	b	3384 <func_80A384E8+0x1ac>
    3380:	00c01825 	move	v1,a2
    3384:	286138e0 	slti	at,v1,14560
    3388:	10200005 	beqz	at,33a0 <func_80A384E8+0x1c8>
    338c:	00000000 	nop
    3390:	0c000000 	jal	0 <func_80A35310>
    3394:	02002025 	move	a0,s0
    3398:	10000045 	b	34b0 <func_80A384E8+0x2d8>
    339c:	8fbf0024 	lw	ra,36(sp)
    33a0:	0c000000 	jal	0 <func_80A35310>
    33a4:	02002025 	move	a0,s0
    33a8:	10000041 	b	34b0 <func_80A384E8+0x2d8>
    33ac:	8fbf0024 	lw	ra,36(sp)
    33b0:	0c000000 	jal	0 <func_80A35310>
    33b4:	02002025 	move	a0,s0
    33b8:	1000003d 	b	34b0 <func_80A384E8+0x2d8>
    33bc:	8fbf0024 	lw	ra,36(sp)
    33c0:	8e0b0300 	lw	t3,768(s0)
    33c4:	8fa4003c 	lw	a0,60(sp)
    33c8:	02002825 	move	a1,s0
    33cc:	15600037 	bnez	t3,34ac <func_80A384E8+0x2d4>
    33d0:	3c0642c8 	lui	a2,0x42c8
    33d4:	240c4000 	li	t4,16384
    33d8:	afac0010 	sw	t4,16(sp)
    33dc:	860d00b6 	lh	t5,182(s0)
    33e0:	afa90034 	sw	t1,52(sp)
    33e4:	24072710 	li	a3,10000
    33e8:	0c000000 	jal	0 <func_80A35310>
    33ec:	afad0014 	sw	t5,20(sp)
    33f0:	1040002e 	beqz	v0,34ac <func_80A384E8+0x2d4>
    33f4:	8fa90034 	lw	t1,52(sp)
    33f8:	812e0842 	lb	t6,2114(t1)
    33fc:	24010011 	li	at,17
    3400:	8fa5003c 	lw	a1,60(sp)
    3404:	15c10005 	bne	t6,at,341c <func_80A384E8+0x244>
    3408:	8fa4003c 	lw	a0,60(sp)
    340c:	0c000000 	jal	0 <func_80A35310>
    3410:	02002025 	move	a0,s0
    3414:	10000026 	b	34b0 <func_80A384E8+0x2d8>
    3418:	8fbf0024 	lw	ra,36(sp)
    341c:	0c000000 	jal	0 <func_80A35310>
    3420:	02002825 	move	a1,s0
    3424:	14400021 	bnez	v0,34ac <func_80A384E8+0x2d4>
    3428:	8faf003c 	lw	t7,60(sp)
    342c:	3c180001 	lui	t8,0x1
    3430:	030fc021 	addu	t8,t8,t7
    3434:	8f181de4 	lw	t8,7652(t8)
    3438:	3c0142c8 	lui	at,0x42c8
    343c:	33190001 	andi	t9,t8,0x1
    3440:	13200018 	beqz	t9,34a4 <func_80A384E8+0x2cc>
    3444:	00000000 	nop
    3448:	c6120090 	lwc1	$f18,144(s0)
    344c:	44812000 	mtc1	at,$f4
    3450:	00000000 	nop
    3454:	4604903c 	c.lt.s	$f18,$f4
    3458:	00000000 	nop
    345c:	4500000d 	bc1f	3494 <func_80A384E8+0x2bc>
    3460:	00000000 	nop
    3464:	0c000000 	jal	0 <func_80A35310>
    3468:	00000000 	nop
    346c:	3c010000 	lui	at,0x0
    3470:	c4260000 	lwc1	$f6,0(at)
    3474:	4600303c 	c.lt.s	$f6,$f0
    3478:	00000000 	nop
    347c:	45000005 	bc1f	3494 <func_80A384E8+0x2bc>
    3480:	00000000 	nop
    3484:	0c000000 	jal	0 <func_80A35310>
    3488:	02002025 	move	a0,s0
    348c:	10000008 	b	34b0 <func_80A384E8+0x2d8>
    3490:	8fbf0024 	lw	ra,36(sp)
    3494:	0c000000 	jal	0 <func_80A35310>
    3498:	02002025 	move	a0,s0
    349c:	10000004 	b	34b0 <func_80A384E8+0x2d8>
    34a0:	8fbf0024 	lw	ra,36(sp)
    34a4:	0c000000 	jal	0 <func_80A35310>
    34a8:	02002025 	move	a0,s0
    34ac:	8fbf0024 	lw	ra,36(sp)
    34b0:	8fb00020 	lw	s0,32(sp)
    34b4:	27bd0038 	addiu	sp,sp,56
    34b8:	03e00008 	jr	ra
    34bc:	00000000 	nop

000034c0 <func_80A387D0>:
    34c0:	27bdffc8 	addiu	sp,sp,-56
    34c4:	afb00028 	sw	s0,40(sp)
    34c8:	00808025 	move	s0,a0
    34cc:	afbf002c 	sw	ra,44(sp)
    34d0:	3c040601 	lui	a0,0x601
    34d4:	afa5003c 	sw	a1,60(sp)
    34d8:	0c000000 	jal	0 <func_80A35310>
    34dc:	2484a814 	addiu	a0,a0,-22508
    34e0:	44822000 	mtc1	v0,$f4
    34e4:	44800000 	mtc1	zero,$f0
    34e8:	3c050601 	lui	a1,0x601
    34ec:	468021a0 	cvt.s.w	$f6,$f4
    34f0:	240e0001 	li	t6,1
    34f4:	44070000 	mfc1	a3,$f0
    34f8:	afae0014 	sw	t6,20(sp)
    34fc:	24a5a814 	addiu	a1,a1,-22508
    3500:	26040188 	addiu	a0,s0,392
    3504:	e7a60010 	swc1	$f6,16(sp)
    3508:	3c063f80 	lui	a2,0x3f80
    350c:	0c000000 	jal	0 <func_80A35310>
    3510:	e7a00018 	swc1	$f0,24(sp)
    3514:	8faf003c 	lw	t7,60(sp)
    3518:	24190001 	li	t9,1
    351c:	260400b6 	addiu	a0,s0,182
    3520:	8df81c44 	lw	t8,7236(t7)
    3524:	24060001 	li	a2,1
    3528:	24070fa0 	li	a3,4000
    352c:	afb80030 	sw	t8,48(sp)
    3530:	8605008a 	lh	a1,138(s0)
    3534:	0c000000 	jal	0 <func_80A35310>
    3538:	afb90010 	sw	t9,16(sp)
    353c:	8fa80030 	lw	t0,48(sp)
    3540:	860900b6 	lh	t1,182(s0)
    3544:	850300b6 	lh	v1,182(t0)
    3548:	00692023 	subu	a0,v1,t1
    354c:	00042400 	sll	a0,a0,0x10
    3550:	00042403 	sra	a0,a0,0x10
    3554:	0c000000 	jal	0 <func_80A35310>
    3558:	a7a30036 	sh	v1,54(sp)
    355c:	44804000 	mtc1	zero,$f8
    3560:	87a30036 	lh	v1,54(sp)
    3564:	3c01c0c0 	lui	at,0xc0c0
    3568:	4600403c 	c.lt.s	$f8,$f0
    356c:	00000000 	nop
    3570:	45020005 	bc1fl	3588 <func_80A387D0+0xc8>
    3574:	860a00b6 	lh	t2,182(s0)
    3578:	44815000 	mtc1	at,$f10
    357c:	10000014 	b	35d0 <func_80A387D0+0x110>
    3580:	e60a0068 	swc1	$f10,104(s0)
    3584:	860a00b6 	lh	t2,182(s0)
    3588:	006a2023 	subu	a0,v1,t2
    358c:	00042400 	sll	a0,a0,0x10
    3590:	0c000000 	jal	0 <func_80A35310>
    3594:	00042403 	sra	a0,a0,0x10
    3598:	44808000 	mtc1	zero,$f16
    359c:	3c014140 	lui	at,0x4140
    35a0:	4610003c 	c.lt.s	$f0,$f16
    35a4:	00000000 	nop
    35a8:	45020006 	bc1fl	35c4 <func_80A387D0+0x104>
    35ac:	44816000 	mtc1	at,$f12
    35b0:	3c0140c0 	lui	at,0x40c0
    35b4:	44819000 	mtc1	at,$f18
    35b8:	10000005 	b	35d0 <func_80A387D0+0x110>
    35bc:	e6120068 	swc1	$f18,104(s0)
    35c0:	44816000 	mtc1	at,$f12
    35c4:	0c000000 	jal	0 <func_80A35310>
    35c8:	00000000 	nop
    35cc:	e6000068 	swc1	$f0,104(s0)
    35d0:	c6040068 	lwc1	$f4,104(s0)
    35d4:	3c013f00 	lui	at,0x3f00
    35d8:	44814000 	mtc1	at,$f8
    35dc:	46002187 	neg.s	$f6,$f4
    35e0:	860b00b6 	lh	t3,182(s0)
    35e4:	46083282 	mul.s	$f10,$f6,$f8
    35e8:	44808000 	mtc1	zero,$f16
    35ec:	256c3fff 	addiu	t4,t3,16383
    35f0:	a60c0032 	sh	t4,50(s0)
    35f4:	e6100304 	swc1	$f16,772(s0)
    35f8:	0c000000 	jal	0 <func_80A35310>
    35fc:	e60a01a4 	swc1	$f10,420(s0)
    3600:	3c014120 	lui	at,0x4120
    3604:	44819000 	mtc1	at,$f18
    3608:	3c0140a0 	lui	at,0x40a0
    360c:	44813000 	mtc1	at,$f6
    3610:	46120102 	mul.s	$f4,$f0,$f18
    3614:	240f000d 	li	t7,13
    3618:	3c050000 	lui	a1,0x0
    361c:	ae0f02ec 	sw	t7,748(s0)
    3620:	24a50000 	addiu	a1,a1,0
    3624:	02002025 	move	a0,s0
    3628:	46062200 	add.s	$f8,$f4,$f6
    362c:	4600428d 	trunc.w.s	$f10,$f8
    3630:	440e5000 	mfc1	t6,$f10
    3634:	0c000000 	jal	0 <func_80A35310>
    3638:	ae0e0300 	sw	t6,768(s0)
    363c:	8fbf002c 	lw	ra,44(sp)
    3640:	8fb00028 	lw	s0,40(sp)
    3644:	27bd0038 	addiu	sp,sp,56
    3648:	03e00008 	jr	ra
    364c:	00000000 	nop

00003650 <func_80A38960>:
    3650:	27bdffa8 	addiu	sp,sp,-88
    3654:	afbf0024 	sw	ra,36(sp)
    3658:	afb00020 	sw	s0,32(sp)
    365c:	afa5005c 	sw	a1,92(sp)
    3660:	8caf1c44 	lw	t7,7236(a1)
    3664:	00808025 	move	s0,a0
    3668:	24180001 	li	t8,1
    366c:	afaf0050 	sw	t7,80(sp)
    3670:	8605008a 	lh	a1,138(s0)
    3674:	afb80010 	sw	t8,16(sp)
    3678:	248400b6 	addiu	a0,a0,182
    367c:	24060001 	li	a2,1
    3680:	0c000000 	jal	0 <func_80A35310>
    3684:	24070bb8 	li	a3,3000
    3688:	8fb90050 	lw	t9,80(sp)
    368c:	34018000 	li	at,0x8000
    3690:	860800b6 	lh	t0,182(s0)
    3694:	872300b6 	lh	v1,182(t9)
    3698:	00611821 	addu	v1,v1,at
    369c:	00031c00 	sll	v1,v1,0x10
    36a0:	00031c03 	sra	v1,v1,0x10
    36a4:	00682023 	subu	a0,v1,t0
    36a8:	00042400 	sll	a0,a0,0x10
    36ac:	00042403 	sra	a0,a0,0x10
    36b0:	0c000000 	jal	0 <func_80A35310>
    36b4:	a7a30056 	sh	v1,86(sp)
    36b8:	44806000 	mtc1	zero,$f12
    36bc:	87a30056 	lh	v1,86(sp)
    36c0:	4600603c 	c.lt.s	$f12,$f0
    36c4:	00000000 	nop
    36c8:	45000006 	bc1f	36e4 <func_80A38960+0x94>
    36cc:	3c013e00 	lui	at,0x3e00
    36d0:	44813000 	mtc1	at,$f6
    36d4:	c6040068 	lwc1	$f4,104(s0)
    36d8:	46062200 	add.s	$f8,$f4,$f6
    36dc:	10000011 	b	3724 <func_80A38960+0xd4>
    36e0:	e6080068 	swc1	$f8,104(s0)
    36e4:	860900b6 	lh	t1,182(s0)
    36e8:	00692023 	subu	a0,v1,t1
    36ec:	00042400 	sll	a0,a0,0x10
    36f0:	0c000000 	jal	0 <func_80A35310>
    36f4:	00042403 	sra	a0,a0,0x10
    36f8:	44806000 	mtc1	zero,$f12
    36fc:	3c013e00 	lui	at,0x3e00
    3700:	460c003e 	c.le.s	$f0,$f12
    3704:	00000000 	nop
    3708:	45020007 	bc1fl	3728 <func_80A38960+0xd8>
    370c:	96020088 	lhu	v0,136(s0)
    3710:	c60a0068 	lwc1	$f10,104(s0)
    3714:	44819000 	mtc1	at,$f18
    3718:	00000000 	nop
    371c:	46125101 	sub.s	$f4,$f10,$f18
    3720:	e6040068 	swc1	$f4,104(s0)
    3724:	96020088 	lhu	v0,136(s0)
    3728:	30420008 	andi	v0,v0,0x8
    372c:	1440000e 	bnez	v0,3768 <func_80A38960+0x118>
    3730:	00000000 	nop
    3734:	860700b6 	lh	a3,182(s0)
    3738:	02002025 	move	a0,s0
    373c:	8fa5005c 	lw	a1,92(sp)
    3740:	24e73e80 	addiu	a3,a3,16000
    3744:	00073c00 	sll	a3,a3,0x10
    3748:	00073c03 	sra	a3,a3,0x10
    374c:	0c000000 	jal	0 <func_80A35310>
    3750:	8e060068 	lw	a2,104(s0)
    3754:	44806000 	mtc1	zero,$f12
    3758:	54400039 	bnezl	v0,3840 <func_80A38960+0x1f0>
    375c:	c6080068 	lwc1	$f8,104(s0)
    3760:	96020088 	lhu	v0,136(s0)
    3764:	30420008 	andi	v0,v0,0x8
    3768:	10400014 	beqz	v0,37bc <func_80A38960+0x16c>
    376c:	3c010000 	lui	at,0x0
    3770:	c6060068 	lwc1	$f6,104(s0)
    3774:	4606603e 	c.le.s	$f12,$f6
    3778:	00000000 	nop
    377c:	45020007 	bc1fl	379c <func_80A38960+0x14c>
    3780:	860300b6 	lh	v1,182(s0)
    3784:	860300b6 	lh	v1,182(s0)
    3788:	24633e80 	addiu	v1,v1,16000
    378c:	00031c00 	sll	v1,v1,0x10
    3790:	10000005 	b	37a8 <func_80A38960+0x158>
    3794:	00031c03 	sra	v1,v1,0x10
    3798:	860300b6 	lh	v1,182(s0)
    379c:	2463c180 	addiu	v1,v1,-16000
    37a0:	00031c00 	sll	v1,v1,0x10
    37a4:	00031c03 	sra	v1,v1,0x10
    37a8:	860a007e 	lh	t2,126(s0)
    37ac:	01431823 	subu	v1,t2,v1
    37b0:	00031c00 	sll	v1,v1,0x10
    37b4:	10000006 	b	37d0 <func_80A38960+0x180>
    37b8:	00031c03 	sra	v1,v1,0x10
    37bc:	c6080068 	lwc1	$f8,104(s0)
    37c0:	c42a0000 	lwc1	$f10,0(at)
    37c4:	00001825 	move	v1,zero
    37c8:	460a4482 	mul.s	$f18,$f8,$f10
    37cc:	e6120068 	swc1	$f18,104(s0)
    37d0:	04600003 	bltz	v1,37e0 <func_80A38960+0x190>
    37d4:	00031023 	negu	v0,v1
    37d8:	10000001 	b	37e0 <func_80A38960+0x190>
    37dc:	00601025 	move	v0,v1
    37e0:	28414001 	slti	at,v0,16385
    37e4:	14200015 	bnez	at,383c <func_80A38960+0x1ec>
    37e8:	3c010000 	lui	at,0x0
    37ec:	c4260000 	lwc1	$f6,0(at)
    37f0:	c6040068 	lwc1	$f4,104(s0)
    37f4:	3c013f00 	lui	at,0x3f00
    37f8:	46062202 	mul.s	$f8,$f4,$f6
    37fc:	e6080068 	swc1	$f8,104(s0)
    3800:	c6000068 	lwc1	$f0,104(s0)
    3804:	460c003c 	c.lt.s	$f0,$f12
    3808:	00000000 	nop
    380c:	45020008 	bc1fl	3830 <func_80A38960+0x1e0>
    3810:	44812000 	mtc1	at,$f4
    3814:	3c013f00 	lui	at,0x3f00
    3818:	44815000 	mtc1	at,$f10
    381c:	00000000 	nop
    3820:	460a0481 	sub.s	$f18,$f0,$f10
    3824:	10000005 	b	383c <func_80A38960+0x1ec>
    3828:	e6120068 	swc1	$f18,104(s0)
    382c:	44812000 	mtc1	at,$f4
    3830:	00000000 	nop
    3834:	46040180 	add.s	$f6,$f0,$f4
    3838:	e6060068 	swc1	$f6,104(s0)
    383c:	c6080068 	lwc1	$f8,104(s0)
    3840:	3c014234 	lui	at,0x4234
    3844:	44815000 	mtc1	at,$f10
    3848:	4608603e 	c.le.s	$f12,$f8
    384c:	860300b6 	lh	v1,182(s0)
    3850:	45000003 	bc1f	3860 <func_80A38960+0x210>
    3854:	246b3e80 	addiu	t3,v1,16000
    3858:	10000003 	b	3868 <func_80A38960+0x218>
    385c:	a60b0032 	sh	t3,50(s0)
    3860:	246cc180 	addiu	t4,v1,-16000
    3864:	a60c0032 	sh	t4,50(s0)
    3868:	c6000090 	lwc1	$f0,144(s0)
    386c:	460a003e 	c.le.s	$f0,$f10
    3870:	00000000 	nop
    3874:	45000009 	bc1f	389c <func_80A38960+0x24c>
    3878:	26040304 	addiu	a0,s0,772
    387c:	3c05c080 	lui	a1,0xc080
    3880:	3c063f80 	lui	a2,0x3f80
    3884:	3c073fc0 	lui	a3,0x3fc0
    3888:	0c000000 	jal	0 <func_80A35310>
    388c:	e7ac0010 	swc1	$f12,16(sp)
    3890:	44806000 	mtc1	zero,$f12
    3894:	10000019 	b	38fc <func_80A38960+0x2ac>
    3898:	c6020304 	lwc1	$f2,772(s0)
    389c:	3c014220 	lui	at,0x4220
    38a0:	44819000 	mtc1	at,$f18
    38a4:	3c0740d4 	lui	a3,0x40d4
    38a8:	3c054080 	lui	a1,0x4080
    38ac:	4600903c 	c.lt.s	$f18,$f0
    38b0:	34e7cccd 	ori	a3,a3,0xcccd
    38b4:	26040304 	addiu	a0,s0,772
    38b8:	3c063f80 	lui	a2,0x3f80
    38bc:	4502000a 	bc1fl	38e8 <func_80A38960+0x298>
    38c0:	44056000 	mfc1	a1,$f12
    38c4:	26040304 	addiu	a0,s0,772
    38c8:	3c063f80 	lui	a2,0x3f80
    38cc:	3c073fc0 	lui	a3,0x3fc0
    38d0:	0c000000 	jal	0 <func_80A35310>
    38d4:	e7ac0010 	swc1	$f12,16(sp)
    38d8:	44806000 	mtc1	zero,$f12
    38dc:	10000007 	b	38fc <func_80A38960+0x2ac>
    38e0:	c6020304 	lwc1	$f2,772(s0)
    38e4:	44056000 	mfc1	a1,$f12
    38e8:	0c000000 	jal	0 <func_80A35310>
    38ec:	e7ac0010 	swc1	$f12,16(sp)
    38f0:	44806000 	mtc1	zero,$f12
    38f4:	00000000 	nop
    38f8:	c6020304 	lwc1	$f2,772(s0)
    38fc:	46026032 	c.eq.s	$f12,$f2
    3900:	00000000 	nop
    3904:	45030010 	bc1tl	3948 <func_80A38960+0x2f8>
    3908:	44808000 	mtc1	zero,$f16
    390c:	0c000000 	jal	0 <func_80A35310>
    3910:	860400b6 	lh	a0,182(s0)
    3914:	c6060304 	lwc1	$f6,772(s0)
    3918:	c6040024 	lwc1	$f4,36(s0)
    391c:	860400b6 	lh	a0,182(s0)
    3920:	46060202 	mul.s	$f8,$f0,$f6
    3924:	46082280 	add.s	$f10,$f4,$f8
    3928:	0c000000 	jal	0 <func_80A35310>
    392c:	e60a0024 	swc1	$f10,36(s0)
    3930:	c6020304 	lwc1	$f2,772(s0)
    3934:	c612002c 	lwc1	$f18,44(s0)
    3938:	46020182 	mul.s	$f6,$f0,$f2
    393c:	46069100 	add.s	$f4,$f18,$f6
    3940:	e604002c 	swc1	$f4,44(s0)
    3944:	44808000 	mtc1	zero,$f16
    3948:	00000000 	nop
    394c:	4602803e 	c.le.s	$f16,$f2
    3950:	00000000 	nop
    3954:	45020004 	bc1fl	3968 <func_80A38960+0x318>
    3958:	46001307 	neg.s	$f12,$f2
    395c:	10000002 	b	3968 <func_80A38960+0x318>
    3960:	46001306 	mov.s	$f12,$f2
    3964:	46001307 	neg.s	$f12,$f2
    3968:	c6000068 	lwc1	$f0,104(s0)
    396c:	3c013f00 	lui	at,0x3f00
    3970:	4600803e 	c.le.s	$f16,$f0
    3974:	00000000 	nop
    3978:	45020004 	bc1fl	398c <func_80A38960+0x33c>
    397c:	46000387 	neg.s	$f14,$f0
    3980:	10000002 	b	398c <func_80A38960+0x33c>
    3984:	46000386 	mov.s	$f14,$f0
    3988:	46000387 	neg.s	$f14,$f0
    398c:	460e603c 	c.lt.s	$f12,$f14
    3990:	00000000 	nop
    3994:	45020008 	bc1fl	39b8 <func_80A38960+0x368>
    3998:	44812000 	mtc1	at,$f4
    399c:	3c013f00 	lui	at,0x3f00
    39a0:	44815000 	mtc1	at,$f10
    39a4:	46000207 	neg.s	$f8,$f0
    39a8:	460a4482 	mul.s	$f18,$f8,$f10
    39ac:	10000005 	b	39c4 <func_80A38960+0x374>
    39b0:	e61201a4 	swc1	$f18,420(s0)
    39b4:	44812000 	mtc1	at,$f4
    39b8:	46001187 	neg.s	$f6,$f2
    39bc:	46043202 	mul.s	$f8,$f6,$f4
    39c0:	e60801a4 	swc1	$f8,420(s0)
    39c4:	3c01c040 	lui	at,0xc040
    39c8:	44811000 	mtc1	at,$f2
    39cc:	c60001a4 	lwc1	$f0,420(s0)
    39d0:	3c014040 	lui	at,0x4040
    39d4:	4602003c 	c.lt.s	$f0,$f2
    39d8:	00000000 	nop
    39dc:	45020004 	bc1fl	39f0 <func_80A38960+0x3a0>
    39e0:	44811000 	mtc1	at,$f2
    39e4:	1000000b 	b	3a14 <func_80A38960+0x3c4>
    39e8:	e60201a4 	swc1	$f2,420(s0)
    39ec:	44811000 	mtc1	at,$f2
    39f0:	00000000 	nop
    39f4:	4600103c 	c.lt.s	$f2,$f0
    39f8:	00000000 	nop
    39fc:	45020004 	bc1fl	3a10 <func_80A38960+0x3c0>
    3a00:	46000386 	mov.s	$f14,$f0
    3a04:	10000002 	b	3a10 <func_80A38960+0x3c0>
    3a08:	46001386 	mov.s	$f14,$f2
    3a0c:	46000386 	mov.s	$f14,$f0
    3a10:	e60e01a4 	swc1	$f14,420(s0)
    3a14:	c60a01a0 	lwc1	$f10,416(s0)
    3a18:	26040188 	addiu	a0,s0,392
    3a1c:	4600548d 	trunc.w.s	$f18,$f10
    3a20:	440e9000 	mfc1	t6,$f18
    3a24:	0c000000 	jal	0 <func_80A35310>
    3a28:	afae004c 	sw	t6,76(sp)
    3a2c:	44808000 	mtc1	zero,$f16
    3a30:	c60001a4 	lwc1	$f0,420(s0)
    3a34:	02002825 	move	a1,s0
    3a38:	4600803e 	c.le.s	$f16,$f0
    3a3c:	00000000 	nop
    3a40:	45020004 	bc1fl	3a54 <func_80A38960+0x404>
    3a44:	46000387 	neg.s	$f14,$f0
    3a48:	10000002 	b	3a54 <func_80A38960+0x404>
    3a4c:	46000386 	mov.s	$f14,$f0
    3a50:	46000387 	neg.s	$f14,$f0
    3a54:	c60601a0 	lwc1	$f6,416(s0)
    3a58:	4600803e 	c.le.s	$f16,$f0
    3a5c:	8fa4005c 	lw	a0,92(sp)
    3a60:	460e3101 	sub.s	$f4,$f6,$f14
    3a64:	4600220d 	trunc.w.s	$f8,$f4
    3a68:	44184000 	mfc1	t8,$f8
    3a6c:	45000003 	bc1f	3a7c <func_80A38960+0x42c>
    3a70:	afb80048 	sw	t8,72(sp)
    3a74:	10000002 	b	3a80 <func_80A38960+0x430>
    3a78:	46000386 	mov.s	$f14,$f0
    3a7c:	46000387 	neg.s	$f14,$f0
    3a80:	0c000000 	jal	0 <func_80A35310>
    3a84:	e7ae0030 	swc1	$f14,48(sp)
    3a88:	144000b3 	bnez	v0,3d58 <func_80A38960+0x708>
    3a8c:	c7ae0030 	lwc1	$f14,48(sp)
    3a90:	8fa4005c 	lw	a0,92(sp)
    3a94:	02002825 	move	a1,s0
    3a98:	00003025 	move	a2,zero
    3a9c:	0c000000 	jal	0 <func_80A35310>
    3aa0:	e7ae0030 	swc1	$f14,48(sp)
    3aa4:	144000ac 	bnez	v0,3d58 <func_80A38960+0x708>
    3aa8:	c7ae0030 	lwc1	$f14,48(sp)
    3aac:	8e190300 	lw	t9,768(s0)
    3ab0:	2728ffff 	addiu	t0,t9,-1
    3ab4:	15000081 	bnez	t0,3cbc <func_80A38960+0x66c>
    3ab8:	ae080300 	sw	t0,768(s0)
    3abc:	8faa0050 	lw	t2,80(sp)
    3ac0:	860300b6 	lh	v1,182(s0)
    3ac4:	02002025 	move	a0,s0
    3ac8:	854b00b6 	lh	t3,182(t2)
    3acc:	8fa7005c 	lw	a3,92(sp)
    3ad0:	01631023 	subu	v0,t3,v1
    3ad4:	00021400 	sll	v0,v0,0x10
    3ad8:	00021403 	sra	v0,v0,0x10
    3adc:	04430005 	bgezl	v0,3af4 <func_80A38960+0x4a4>
    3ae0:	28413a98 	slti	at,v0,15000
    3ae4:	00021023 	negu	v0,v0
    3ae8:	00021400 	sll	v0,v0,0x10
    3aec:	00021403 	sra	v0,v0,0x10
    3af0:	28413a98 	slti	at,v0,15000
    3af4:	54200011 	bnezl	at,3b3c <func_80A38960+0x4ec>
    3af8:	8ce21c44 	lw	v0,7236(a3)
    3afc:	0c000000 	jal	0 <func_80A35310>
    3b00:	e7ae0030 	swc1	$f14,48(sp)
    3b04:	0c000000 	jal	0 <func_80A35310>
    3b08:	00000000 	nop
    3b0c:	3c0140a0 	lui	at,0x40a0
    3b10:	44815000 	mtc1	at,$f10
    3b14:	3c013f80 	lui	at,0x3f80
    3b18:	44813000 	mtc1	at,$f6
    3b1c:	460a0482 	mul.s	$f18,$f0,$f10
    3b20:	c7ae0030 	lwc1	$f14,48(sp)
    3b24:	46069100 	add.s	$f4,$f18,$f6
    3b28:	4600220d 	trunc.w.s	$f8,$f4
    3b2c:	440d4000 	mfc1	t5,$f8
    3b30:	10000062 	b	3cbc <func_80A38960+0x66c>
    3b34:	ae0d0300 	sw	t5,768(s0)
    3b38:	8ce21c44 	lw	v0,7236(a3)
    3b3c:	3c014234 	lui	at,0x4234
    3b40:	44815000 	mtc1	at,$f10
    3b44:	c6120090 	lwc1	$f18,144(s0)
    3b48:	844e00b6 	lh	t6,182(v0)
    3b4c:	a6030032 	sh	v1,50(s0)
    3b50:	460a903e 	c.le.s	$f18,$f10
    3b54:	01c33023 	subu	a2,t6,v1
    3b58:	00063400 	sll	a2,a2,0x10
    3b5c:	00063403 	sra	a2,a2,0x10
    3b60:	4500001b 	bc1f	3bd0 <func_80A38960+0x580>
    3b64:	00e02025 	move	a0,a3
    3b68:	02002825 	move	a1,s0
    3b6c:	a7a6003a 	sh	a2,58(sp)
    3b70:	0c000000 	jal	0 <func_80A35310>
    3b74:	e7ae0030 	swc1	$f14,48(sp)
    3b78:	87a6003a 	lh	a2,58(sp)
    3b7c:	14400014 	bnez	v0,3bd0 <func_80A38960+0x580>
    3b80:	c7ae0030 	lwc1	$f14,48(sp)
    3b84:	8faf005c 	lw	t7,92(sp)
    3b88:	3c180001 	lui	t8,0x1
    3b8c:	02002025 	move	a0,s0
    3b90:	030fc021 	addu	t8,t8,t7
    3b94:	8f181de4 	lw	t8,7652(t8)
    3b98:	33190003 	andi	t9,t8,0x3
    3b9c:	13200008 	beqz	t9,3bc0 <func_80A38960+0x570>
    3ba0:	00000000 	nop
    3ba4:	04c00003 	bltz	a2,3bb4 <func_80A38960+0x564>
    3ba8:	00061023 	negu	v0,a2
    3bac:	10000001 	b	3bb4 <func_80A38960+0x564>
    3bb0:	00c01025 	move	v0,a2
    3bb4:	284138e0 	slti	at,v0,14560
    3bb8:	50200006 	beqzl	at,3bd4 <func_80A38960+0x584>
    3bbc:	3c014352 	lui	at,0x4352
    3bc0:	0c000000 	jal	0 <func_80A35310>
    3bc4:	e7ae0030 	swc1	$f14,48(sp)
    3bc8:	1000003c 	b	3cbc <func_80A38960+0x66c>
    3bcc:	c7ae0030 	lwc1	$f14,48(sp)
    3bd0:	3c014352 	lui	at,0x4352
    3bd4:	44813000 	mtc1	at,$f6
    3bd8:	c6000090 	lwc1	$f0,144(s0)
    3bdc:	8fa7005c 	lw	a3,92(sp)
    3be0:	3c014316 	lui	at,0x4316
    3be4:	4606003c 	c.lt.s	$f0,$f6
    3be8:	02002025 	move	a0,s0
    3bec:	00e02825 	move	a1,a3
    3bf0:	4500002f 	bc1f	3cb0 <func_80A38960+0x660>
    3bf4:	00000000 	nop
    3bf8:	44812000 	mtc1	at,$f4
    3bfc:	3c080001 	lui	t0,0x1
    3c00:	01074021 	addu	t0,t0,a3
    3c04:	4600203c 	c.lt.s	$f4,$f0
    3c08:	00000000 	nop
    3c0c:	45000028 	bc1f	3cb0 <func_80A38960+0x660>
    3c10:	00000000 	nop
    3c14:	8d081de4 	lw	t0,7652(t0)
    3c18:	31090001 	andi	t1,t0,0x1
    3c1c:	15200024 	bnez	t1,3cb0 <func_80A38960+0x660>
    3c20:	00000000 	nop
    3c24:	00e02025 	move	a0,a3
    3c28:	02002825 	move	a1,s0
    3c2c:	a7a6003a 	sh	a2,58(sp)
    3c30:	0c000000 	jal	0 <func_80A35310>
    3c34:	e7ae0030 	swc1	$f14,48(sp)
    3c38:	87a6003a 	lh	a2,58(sp)
    3c3c:	14400013 	bnez	v0,3c8c <func_80A38960+0x63c>
    3c40:	c7ae0030 	lwc1	$f14,48(sp)
    3c44:	a7a6003a 	sh	a2,58(sp)
    3c48:	0c000000 	jal	0 <func_80A35310>
    3c4c:	e7ae0030 	swc1	$f14,48(sp)
    3c50:	3c013f00 	lui	at,0x3f00
    3c54:	44814000 	mtc1	at,$f8
    3c58:	87a6003a 	lh	a2,58(sp)
    3c5c:	c7ae0030 	lwc1	$f14,48(sp)
    3c60:	4600403c 	c.lt.s	$f8,$f0
    3c64:	00000000 	nop
    3c68:	45030009 	bc1tl	3c90 <func_80A38960+0x640>
    3c6c:	02002025 	move	a0,s0
    3c70:	04c00003 	bltz	a2,3c80 <func_80A38960+0x630>
    3c74:	00061023 	negu	v0,a2
    3c78:	10000001 	b	3c80 <func_80A38960+0x630>
    3c7c:	00c01025 	move	v0,a2
    3c80:	284138e0 	slti	at,v0,14560
    3c84:	10200006 	beqz	at,3ca0 <func_80A38960+0x650>
    3c88:	02002025 	move	a0,s0
    3c8c:	02002025 	move	a0,s0
    3c90:	0c000000 	jal	0 <func_80A35310>
    3c94:	e7ae0030 	swc1	$f14,48(sp)
    3c98:	10000008 	b	3cbc <func_80A38960+0x66c>
    3c9c:	c7ae0030 	lwc1	$f14,48(sp)
    3ca0:	0c000000 	jal	0 <func_80A35310>
    3ca4:	e7ae0030 	swc1	$f14,48(sp)
    3ca8:	10000004 	b	3cbc <func_80A38960+0x66c>
    3cac:	c7ae0030 	lwc1	$f14,48(sp)
    3cb0:	0c000000 	jal	0 <func_80A35310>
    3cb4:	e7ae0030 	swc1	$f14,48(sp)
    3cb8:	c7ae0030 	lwc1	$f14,48(sp)
    3cbc:	c60a01a0 	lwc1	$f10,416(s0)
    3cc0:	8fa3004c 	lw	v1,76(sp)
    3cc4:	8fa2005c 	lw	v0,92(sp)
    3cc8:	4600548d 	trunc.w.s	$f18,$f10
    3ccc:	3c010001 	lui	at,0x1
    3cd0:	8fa40048 	lw	a0,72(sp)
    3cd4:	00411021 	addu	v0,v0,at
    3cd8:	440b9000 	mfc1	t3,$f18
    3cdc:	00000000 	nop
    3ce0:	506b0017 	beql	v1,t3,3d40 <func_80A38960+0x6f0>
    3ce4:	8c481de4 	lw	t0,7652(v0)
    3ce8:	04810007 	bgez	a0,3d08 <func_80A38960+0x6b8>
    3cec:	28810005 	slti	at,a0,5
    3cf0:	4600718d 	trunc.w.s	$f6,$f14
    3cf4:	440d3000 	mfc1	t5,$f6
    3cf8:	00000000 	nop
    3cfc:	01a37021 	addu	t6,t5,v1
    3d00:	5dc0000a 	bgtzl	t6,3d2c <func_80A38960+0x6dc>
    3d04:	02002025 	move	a0,s0
    3d08:	5020000d 	beqzl	at,3d40 <func_80A38960+0x6f0>
    3d0c:	8c481de4 	lw	t0,7652(v0)
    3d10:	4600710d 	trunc.w.s	$f4,$f14
    3d14:	44182000 	mfc1	t8,$f4
    3d18:	00000000 	nop
    3d1c:	0303c821 	addu	t9,t8,v1
    3d20:	2b210006 	slti	at,t9,6
    3d24:	14200005 	bnez	at,3d3c <func_80A38960+0x6ec>
    3d28:	02002025 	move	a0,s0
    3d2c:	240539a0 	li	a1,14752
    3d30:	0c000000 	jal	0 <func_80A35310>
    3d34:	afa20028 	sw	v0,40(sp)
    3d38:	8fa20028 	lw	v0,40(sp)
    3d3c:	8c481de4 	lw	t0,7652(v0)
    3d40:	02002025 	move	a0,s0
    3d44:	3109005f 	andi	t1,t0,0x5f
    3d48:	55200004 	bnezl	t1,3d5c <func_80A38960+0x70c>
    3d4c:	8fbf0024 	lw	ra,36(sp)
    3d50:	0c000000 	jal	0 <func_80A35310>
    3d54:	240539c6 	li	a1,14790
    3d58:	8fbf0024 	lw	ra,36(sp)
    3d5c:	8fb00020 	lw	s0,32(sp)
    3d60:	27bd0058 	addiu	sp,sp,88
    3d64:	03e00008 	jr	ra
    3d68:	00000000 	nop

00003d6c <func_80A3907C>:
    3d6c:	27bdffe8 	addiu	sp,sp,-24
    3d70:	afbf0014 	sw	ra,20(sp)
    3d74:	00803825 	move	a3,a0
    3d78:	3c050600 	lui	a1,0x600
    3d7c:	24a51e10 	addiu	a1,a1,7696
    3d80:	afa70018 	sw	a3,24(sp)
    3d84:	24840188 	addiu	a0,a0,392
    3d88:	0c000000 	jal	0 <func_80A35310>
    3d8c:	3c06c080 	lui	a2,0xc080
    3d90:	8fa70018 	lw	a3,24(sp)
    3d94:	24190001 	li	t9,1
    3d98:	2405399a 	li	a1,14746
    3d9c:	94ee0088 	lhu	t6,136(a3)
    3da0:	84e2008a 	lh	v0,138(a3)
    3da4:	00e02025 	move	a0,a3
    3da8:	31cf0001 	andi	t7,t6,0x1
    3dac:	a4e200b6 	sh	v0,182(a3)
    3db0:	11e00006 	beqz	t7,3dcc <func_80A3907C+0x60>
    3db4:	a4e20032 	sh	v0,50(a3)
    3db8:	3c01c0c0 	lui	at,0xc0c0
    3dbc:	44812000 	mtc1	at,$f4
    3dc0:	a4e00318 	sh	zero,792(a3)
    3dc4:	10000003 	b	3dd4 <func_80A3907C+0x68>
    3dc8:	e4e40068 	swc1	$f4,104(a3)
    3dcc:	24180001 	li	t8,1
    3dd0:	a4f80318 	sh	t8,792(a3)
    3dd4:	8ce80004 	lw	t0,4(a3)
    3dd8:	2401fffe 	li	at,-2
    3ddc:	acf902ec 	sw	t9,748(a3)
    3de0:	01014824 	and	t1,t0,at
    3de4:	ace90004 	sw	t1,4(a3)
    3de8:	0c000000 	jal	0 <func_80A35310>
    3dec:	afa70018 	sw	a3,24(sp)
    3df0:	3c050000 	lui	a1,0x0
    3df4:	8fa40018 	lw	a0,24(sp)
    3df8:	0c000000 	jal	0 <func_80A35310>
    3dfc:	24a50000 	addiu	a1,a1,0
    3e00:	8fbf0014 	lw	ra,20(sp)
    3e04:	27bd0018 	addiu	sp,sp,24
    3e08:	03e00008 	jr	ra
    3e0c:	00000000 	nop

00003e10 <func_80A39120>:
    3e10:	27bdffd8 	addiu	sp,sp,-40
    3e14:	afbf0024 	sw	ra,36(sp)
    3e18:	afb00020 	sw	s0,32(sp)
    3e1c:	afa5002c 	sw	a1,44(sp)
    3e20:	94820088 	lhu	v0,136(a0)
    3e24:	00808025 	move	s0,a0
    3e28:	3c063f80 	lui	a2,0x3f80
    3e2c:	304e0002 	andi	t6,v0,0x2
    3e30:	11c00004 	beqz	t6,3e44 <func_80A39120+0x34>
    3e34:	3c073f00 	lui	a3,0x3f00
    3e38:	44800000 	mtc1	zero,$f0
    3e3c:	94820088 	lhu	v0,136(a0)
    3e40:	e4800068 	swc1	$f0,104(a0)
    3e44:	44800000 	mtc1	zero,$f0
    3e48:	304f0001 	andi	t7,v0,0x1
    3e4c:	11e00005 	beqz	t7,3e64 <func_80A39120+0x54>
    3e50:	26040068 	addiu	a0,s0,104
    3e54:	44050000 	mfc1	a1,$f0
    3e58:	0c000000 	jal	0 <func_80A35310>
    3e5c:	e7a00010 	swc1	$f0,16(sp)
    3e60:	a6000318 	sh	zero,792(s0)
    3e64:	0c000000 	jal	0 <func_80A35310>
    3e68:	26040188 	addiu	a0,s0,392
    3e6c:	50400006 	beqzl	v0,3e88 <func_80A39120+0x78>
    3e70:	c60401a0 	lwc1	$f4,416(s0)
    3e74:	0c000000 	jal	0 <func_80A35310>
    3e78:	02002025 	move	a0,s0
    3e7c:	1000000e 	b	3eb8 <func_80A39120+0xa8>
    3e80:	8fbf0024 	lw	ra,36(sp)
    3e84:	c60401a0 	lwc1	$f4,416(s0)
    3e88:	2401000a 	li	at,10
    3e8c:	02002025 	move	a0,s0
    3e90:	4600218d 	trunc.w.s	$f6,$f4
    3e94:	44193000 	mfc1	t9,$f6
    3e98:	00000000 	nop
    3e9c:	57210006 	bnel	t9,at,3eb8 <func_80A39120+0xa8>
    3ea0:	8fbf0024 	lw	ra,36(sp)
    3ea4:	0c000000 	jal	0 <func_80A35310>
    3ea8:	2405387a 	li	a1,14458
    3eac:	0c000000 	jal	0 <func_80A35310>
    3eb0:	00000000 	nop
    3eb4:	8fbf0024 	lw	ra,36(sp)
    3eb8:	8fb00020 	lw	s0,32(sp)
    3ebc:	27bd0028 	addiu	sp,sp,40
    3ec0:	03e00008 	jr	ra
    3ec4:	00000000 	nop

00003ec8 <func_80A391D8>:
    3ec8:	27bdffd8 	addiu	sp,sp,-40
    3ecc:	afbf0024 	sw	ra,36(sp)
    3ed0:	afb00020 	sw	s0,32(sp)
    3ed4:	afa5002c 	sw	a1,44(sp)
    3ed8:	8c8202ec 	lw	v0,748(a0)
    3edc:	24010005 	li	at,5
    3ee0:	00808025 	move	s0,a0
    3ee4:	54410015 	bnel	v0,at,3f3c <func_80A391D8+0x74>
    3ee8:	2401000f 	li	at,15
    3eec:	848302fa 	lh	v1,762(a0)
    3ef0:	10600011 	beqz	v1,3f38 <func_80A391D8+0x70>
    3ef4:	00032140 	sll	a0,v1,0x5
    3ef8:	00832021 	addu	a0,a0,v1
    3efc:	00042080 	sll	a0,a0,0x2
    3f00:	00832023 	subu	a0,a0,v1
    3f04:	00042080 	sll	a0,a0,0x2
    3f08:	00832021 	addu	a0,a0,v1
    3f0c:	000420c0 	sll	a0,a0,0x3
    3f10:	00042400 	sll	a0,a0,0x10
    3f14:	0c000000 	jal	0 <func_80A35310>
    3f18:	00042403 	sra	a0,a0,0x10
    3f1c:	3c010000 	lui	at,0x0
    3f20:	c4240000 	lwc1	$f4,0(at)
    3f24:	46040182 	mul.s	$f6,$f0,$f4
    3f28:	4600320d 	trunc.w.s	$f8,$f6
    3f2c:	440f4000 	mfc1	t7,$f8
    3f30:	10000020 	b	3fb4 <func_80A391D8+0xec>
    3f34:	a60f04de 	sh	t7,1246(s0)
    3f38:	2401000f 	li	at,15
    3f3c:	1041001d 	beq	v0,at,3fb4 <func_80A391D8+0xec>
    3f40:	24010007 	li	at,7
    3f44:	1041001a 	beq	v0,at,3fb0 <func_80A391D8+0xe8>
    3f48:	2401000c 	li	at,12
    3f4c:	10410018 	beq	v0,at,3fb0 <func_80A391D8+0xe8>
    3f50:	260404de 	addiu	a0,s0,1246
    3f54:	8618008a 	lh	t8,138(s0)
    3f58:	861900b6 	lh	t9,182(s0)
    3f5c:	afa00010 	sw	zero,16(sp)
    3f60:	24060001 	li	a2,1
    3f64:	03192823 	subu	a1,t8,t9
    3f68:	00052c00 	sll	a1,a1,0x10
    3f6c:	00052c03 	sra	a1,a1,0x10
    3f70:	0c000000 	jal	0 <func_80A35310>
    3f74:	240701f4 	li	a3,500
    3f78:	860204de 	lh	v0,1246(s0)
    3f7c:	2408da91 	li	t0,-9583
    3f80:	2841da91 	slti	at,v0,-9583
    3f84:	50200004 	beqzl	at,3f98 <func_80A391D8+0xd0>
    3f88:	28412570 	slti	at,v0,9584
    3f8c:	10000009 	b	3fb4 <func_80A391D8+0xec>
    3f90:	a60804de 	sh	t0,1246(s0)
    3f94:	28412570 	slti	at,v0,9584
    3f98:	14200003 	bnez	at,3fa8 <func_80A391D8+0xe0>
    3f9c:	00401825 	move	v1,v0
    3fa0:	10000001 	b	3fa8 <func_80A391D8+0xe0>
    3fa4:	2403256f 	li	v1,9583
    3fa8:	10000002 	b	3fb4 <func_80A391D8+0xec>
    3fac:	a60304de 	sh	v1,1246(s0)
    3fb0:	a60004de 	sh	zero,1246(s0)
    3fb4:	8fbf0024 	lw	ra,36(sp)
    3fb8:	8fb00020 	lw	s0,32(sp)
    3fbc:	27bd0028 	addiu	sp,sp,40
    3fc0:	03e00008 	jr	ra
    3fc4:	00000000 	nop

00003fc8 <func_80A392D8>:
    3fc8:	27bdffd0 	addiu	sp,sp,-48
    3fcc:	afbf0024 	sw	ra,36(sp)
    3fd0:	afb00020 	sw	s0,32(sp)
    3fd4:	afa50034 	sw	a1,52(sp)
    3fd8:	908203fd 	lbu	v0,1021(a0)
    3fdc:	00808025 	move	s0,a0
    3fe0:	304e0080 	andi	t6,v0,0x80
    3fe4:	51c00008 	beqzl	t6,4008 <func_80A392D8+0x40>
    3fe8:	92020331 	lbu	v0,817(s0)
    3fec:	90980331 	lbu	t8,817(a0)
    3ff0:	304fff7f 	andi	t7,v0,0xff7f
    3ff4:	a08f03fd 	sb	t7,1021(a0)
    3ff8:	3319fffd 	andi	t9,t8,0xfffd
    3ffc:	10000060 	b	4180 <func_80A392D8+0x1b8>
    4000:	a0990331 	sb	t9,817(a0)
    4004:	92020331 	lbu	v0,817(s0)
    4008:	30480002 	andi	t0,v0,0x2
    400c:	5100005d 	beqzl	t0,4184 <func_80A392D8+0x1bc>
    4010:	8fbf0024 	lw	ra,36(sp)
    4014:	8e0902ec 	lw	t1,748(s0)
    4018:	29210005 	slti	at,t1,5
    401c:	54200059 	bnezl	at,4184 <func_80A392D8+0x1bc>
    4020:	8fbf0024 	lw	ra,36(sp)
    4024:	860a0312 	lh	t2,786(s0)
    4028:	29410002 	slti	at,t2,2
    402c:	50200055 	beqzl	at,4184 <func_80A392D8+0x1bc>
    4030:	8fbf0024 	lw	ra,36(sp)
    4034:	920300b1 	lbu	v1,177(s0)
    4038:	304bfffd 	andi	t3,v0,0xfffd
    403c:	24010006 	li	at,6
    4040:	1061004f 	beq	v1,at,4180 <func_80A392D8+0x1b8>
    4044:	a20b0331 	sb	t3,817(s0)
    4048:	a20302fe 	sb	v1,766(s0)
    404c:	02002025 	move	a0,s0
    4050:	26050338 	addiu	a1,s0,824
    4054:	0c000000 	jal	0 <func_80A35310>
    4058:	24060001 	li	a2,1
    405c:	260400e4 	addiu	a0,s0,228
    4060:	0c000000 	jal	0 <func_80A35310>
    4064:	240539c6 	li	a1,14790
    4068:	920200b1 	lbu	v0,177(s0)
    406c:	24010001 	li	at,1
    4070:	10410003 	beq	v0,at,4080 <func_80A392D8+0xb8>
    4074:	2401000f 	li	at,15
    4078:	14410011 	bne	v0,at,40c0 <func_80A392D8+0xf8>
    407c:	02002025 	move	a0,s0
    4080:	8e0c02ec 	lw	t4,748(s0)
    4084:	2401000f 	li	at,15
    4088:	02002025 	move	a0,s0
    408c:	1181003c 	beq	t4,at,4180 <func_80A392D8+0x1b8>
    4090:	00002825 	move	a1,zero
    4094:	240d0050 	li	t5,80
    4098:	afad0010 	sw	t5,16(sp)
    409c:	24060078 	li	a2,120
    40a0:	0c000000 	jal	0 <func_80A35310>
    40a4:	00003825 	move	a3,zero
    40a8:	0c000000 	jal	0 <func_80A35310>
    40ac:	02002025 	move	a0,s0
    40b0:	0c000000 	jal	0 <func_80A35310>
    40b4:	02002025 	move	a0,s0
    40b8:	10000032 	b	4184 <func_80A392D8+0x1bc>
    40bc:	8fbf0024 	lw	ra,36(sp)
    40c0:	240e0008 	li	t6,8
    40c4:	afae0010 	sw	t6,16(sp)
    40c8:	24054000 	li	a1,16384
    40cc:	240600ff 	li	a2,255
    40d0:	0c000000 	jal	0 <func_80A35310>
    40d4:	00003825 	move	a3,zero
    40d8:	0c000000 	jal	0 <func_80A35310>
    40dc:	02002025 	move	a0,s0
    40e0:	14400025 	bnez	v0,4178 <func_80A392D8+0x1b0>
    40e4:	00000000 	nop
    40e8:	86020314 	lh	v0,788(s0)
    40ec:	8fa40034 	lw	a0,52(sp)
    40f0:	26050024 	addiu	a1,s0,36
    40f4:	10400019 	beqz	v0,415c <func_80A392D8+0x194>
    40f8:	34460011 	ori	a2,v0,0x11
    40fc:	00063400 	sll	a2,a2,0x10
    4100:	0c000000 	jal	0 <func_80A35310>
    4104:	00063403 	sra	a2,a2,0x10
    4108:	10400014 	beqz	v0,415c <func_80A392D8+0x194>
    410c:	24440024 	addiu	a0,v0,36
    4110:	26050008 	addiu	a1,s0,8
    4114:	0c000000 	jal	0 <func_80A35310>
    4118:	afa20028 	sw	v0,40(sp)
    411c:	8fa30028 	lw	v1,40(sp)
    4120:	3c0140c0 	lui	at,0x40c0
    4124:	44812000 	mtc1	at,$f4
    4128:	3c070000 	lui	a3,0x0
    412c:	3c0f0000 	lui	t7,0x0
    4130:	24e70000 	addiu	a3,a3,0
    4134:	25ef0000 	addiu	t7,t7,0
    4138:	3c050000 	lui	a1,0x0
    413c:	a4620032 	sh	v0,50(v1)
    4140:	e4640068 	swc1	$f4,104(v1)
    4144:	afaf0014 	sw	t7,20(sp)
    4148:	afa70010 	sw	a3,16(sp)
    414c:	24a50000 	addiu	a1,a1,0
    4150:	24044807 	li	a0,18439
    4154:	0c000000 	jal	0 <func_80A35310>
    4158:	24060004 	li	a2,4
    415c:	0c000000 	jal	0 <func_80A35310>
    4160:	02002025 	move	a0,s0
    4164:	8fa40034 	lw	a0,52(sp)
    4168:	0c000000 	jal	0 <func_80A35310>
    416c:	02002825 	move	a1,s0
    4170:	10000004 	b	4184 <func_80A392D8+0x1bc>
    4174:	8fbf0024 	lw	ra,36(sp)
    4178:	0c000000 	jal	0 <func_80A35310>
    417c:	02002025 	move	a0,s0
    4180:	8fbf0024 	lw	ra,36(sp)
    4184:	8fb00020 	lw	s0,32(sp)
    4188:	27bd0030 	addiu	sp,sp,48
    418c:	03e00008 	jr	ra
    4190:	00000000 	nop

00004194 <EnGeldB_Update>:
    4194:	27bdffc0 	addiu	sp,sp,-64
    4198:	afbf0024 	sw	ra,36(sp)
    419c:	afb10020 	sw	s1,32(sp)
    41a0:	afb0001c 	sw	s0,28(sp)
    41a4:	00808025 	move	s0,a0
    41a8:	0c000000 	jal	0 <func_80A35310>
    41ac:	00a08825 	move	s1,a1
    41b0:	920e00b1 	lbu	t6,177(s0)
    41b4:	24010006 	li	at,6
    41b8:	51c10021 	beql	t6,at,4240 <EnGeldB_Update+0xac>
    41bc:	26050320 	addiu	a1,s0,800
    41c0:	0c000000 	jal	0 <func_80A35310>
    41c4:	02002025 	move	a0,s0
    41c8:	3c014270 	lui	at,0x4270
    41cc:	44812000 	mtc1	at,$f4
    41d0:	240f001d 	li	t7,29
    41d4:	afaf0014 	sw	t7,20(sp)
    41d8:	02202025 	move	a0,s1
    41dc:	02002825 	move	a1,s0
    41e0:	3c064170 	lui	a2,0x4170
    41e4:	3c0741f0 	lui	a3,0x41f0
    41e8:	0c000000 	jal	0 <func_80A35310>
    41ec:	e7a40010 	swc1	$f4,16(sp)
    41f0:	8e1902f4 	lw	t9,756(s0)
    41f4:	02002025 	move	a0,s0
    41f8:	02202825 	move	a1,s1
    41fc:	0320f809 	jalr	t9
    4200:	00000000 	nop
    4204:	8e180028 	lw	t8,40(s0)
    4208:	3c014220 	lui	at,0x4220
    420c:	8e080024 	lw	t0,36(s0)
    4210:	ae18003c 	sw	t8,60(s0)
    4214:	c606003c 	lwc1	$f6,60(s0)
    4218:	44814000 	mtc1	at,$f8
    421c:	ae080038 	sw	t0,56(s0)
    4220:	8e08002c 	lw	t0,44(s0)
    4224:	46083280 	add.s	$f10,$f6,$f8
    4228:	02002025 	move	a0,s0
    422c:	02202825 	move	a1,s1
    4230:	ae080040 	sw	t0,64(s0)
    4234:	0c000000 	jal	0 <func_80A35310>
    4238:	e60a003c 	swc1	$f10,60(s0)
    423c:	26050320 	addiu	a1,s0,800
    4240:	afa5002c 	sw	a1,44(sp)
    4244:	0c000000 	jal	0 <func_80A35310>
    4248:	02002025 	move	a0,s0
    424c:	3c010001 	lui	at,0x1
    4250:	34211e60 	ori	at,at,0x1e60
    4254:	02212821 	addu	a1,s1,at
    4258:	afa50034 	sw	a1,52(sp)
    425c:	02202025 	move	a0,s1
    4260:	0c000000 	jal	0 <func_80A35310>
    4264:	8fa6002c 	lw	a2,44(sp)
    4268:	8e0202ec 	lw	v0,748(s0)
    426c:	28410005 	slti	at,v0,5
    4270:	54200012 	bnezl	at,42bc <EnGeldB_Update+0x128>
    4274:	24010006 	li	at,6
    4278:	86090312 	lh	t1,786(s0)
    427c:	29210002 	slti	at,t1,2
    4280:	5020000e 	beqzl	at,42bc <EnGeldB_Update+0x128>
    4284:	24010006 	li	at,6
    4288:	920a0114 	lbu	t2,276(s0)
    428c:	02202025 	move	a0,s1
    4290:	8fa50034 	lw	a1,52(sp)
    4294:	11400005 	beqz	t2,42ac <EnGeldB_Update+0x118>
    4298:	00000000 	nop
    429c:	960b0112 	lhu	t3,274(s0)
    42a0:	316c4000 	andi	t4,t3,0x4000
    42a4:	55800005 	bnezl	t4,42bc <EnGeldB_Update+0x128>
    42a8:	24010006 	li	at,6
    42ac:	0c000000 	jal	0 <func_80A35310>
    42b0:	8fa6002c 	lw	a2,44(sp)
    42b4:	8e0202ec 	lw	v0,748(s0)
    42b8:	24010006 	li	at,6
    42bc:	5441000c 	bnel	v0,at,42f0 <EnGeldB_Update+0x15c>
    42c0:	860d0310 	lh	t5,784(s0)
    42c4:	44808000 	mtc1	zero,$f16
    42c8:	c61201a0 	lwc1	$f18,416(s0)
    42cc:	02202025 	move	a0,s1
    42d0:	8fa50034 	lw	a1,52(sp)
    42d4:	46128032 	c.eq.s	$f16,$f18
    42d8:	00000000 	nop
    42dc:	45020004 	bc1fl	42f0 <EnGeldB_Update+0x15c>
    42e0:	860d0310 	lh	t5,784(s0)
    42e4:	0c000000 	jal	0 <func_80A35310>
    42e8:	260603ec 	addiu	a2,s0,1004
    42ec:	860d0310 	lh	t5,784(s0)
    42f0:	02202025 	move	a0,s1
    42f4:	8fa50034 	lw	a1,52(sp)
    42f8:	59a00004 	blezl	t5,430c <EnGeldB_Update+0x178>
    42fc:	9202031a 	lbu	v0,794(s0)
    4300:	0c000000 	jal	0 <func_80A35310>
    4304:	2606036c 	addiu	a2,s0,876
    4308:	9202031a 	lbu	v0,794(s0)
    430c:	14400013 	bnez	v0,435c <EnGeldB_Update+0x1c8>
    4310:	24480001 	addiu	t0,v0,1
    4314:	0c000000 	jal	0 <func_80A35310>
    4318:	00000000 	nop
    431c:	3c010000 	lui	at,0x0
    4320:	c4240000 	lwc1	$f4,0(at)
    4324:	3c0e0001 	lui	t6,0x1
    4328:	01d17021 	addu	t6,t6,s1
    432c:	4604003c 	c.lt.s	$f0,$f4
    4330:	00000000 	nop
    4334:	4502000c 	bc1fl	4368 <EnGeldB_Update+0x1d4>
    4338:	8fbf0024 	lw	ra,36(sp)
    433c:	8dce1de4 	lw	t6,7652(t6)
    4340:	31cf0003 	andi	t7,t6,0x3
    4344:	55e00008 	bnezl	t7,4368 <EnGeldB_Update+0x1d4>
    4348:	8fbf0024 	lw	ra,36(sp)
    434c:	9219031a 	lbu	t9,794(s0)
    4350:	27380001 	addiu	t8,t9,1
    4354:	10000003 	b	4364 <EnGeldB_Update+0x1d0>
    4358:	a218031a 	sb	t8,794(s0)
    435c:	31090003 	andi	t1,t0,0x3
    4360:	a209031a 	sb	t1,794(s0)
    4364:	8fbf0024 	lw	ra,36(sp)
    4368:	8fb0001c 	lw	s0,28(sp)
    436c:	8fb10020 	lw	s1,32(sp)
    4370:	03e00008 	jr	ra
    4374:	27bd0040 	addiu	sp,sp,64

00004378 <func_80A39688>:
    4378:	27bdffb0 	addiu	sp,sp,-80
    437c:	afbf0014 	sw	ra,20(sp)
    4380:	afa40050 	sw	a0,80(sp)
    4384:	afa50054 	sw	a1,84(sp)
    4388:	afa60058 	sw	a2,88(sp)
    438c:	afa7005c 	sw	a3,92(sp)
    4390:	8c850000 	lw	a1,0(a0)
    4394:	3c060000 	lui	a2,0x0
    4398:	24c60000 	addiu	a2,a2,0
    439c:	27a40038 	addiu	a0,sp,56
    43a0:	240709cb 	li	a3,2507
    43a4:	0c000000 	jal	0 <func_80A35310>
    43a8:	afa50048 	sw	a1,72(sp)
    43ac:	8fa20054 	lw	v0,84(sp)
    43b0:	24010003 	li	at,3
    43b4:	8fa80048 	lw	t0,72(sp)
    43b8:	14410010 	bne	v0,at,43fc <func_80A39688+0x84>
    43bc:	27a40038 	addiu	a0,sp,56
    43c0:	8fa20060 	lw	v0,96(sp)
    43c4:	8fa30064 	lw	v1,100(sp)
    43c8:	844f0004 	lh	t7,4(v0)
    43cc:	847804dc 	lh	t8,1244(v1)
    43d0:	84490000 	lh	t1,0(v0)
    43d4:	844c0002 	lh	t4,2(v0)
    43d8:	01f8c821 	addu	t9,t7,t8
    43dc:	a4590004 	sh	t9,4(v0)
    43e0:	846a04de 	lh	t2,1246(v1)
    43e4:	012a5821 	addu	t3,t1,t2
    43e8:	a44b0000 	sh	t3,0(v0)
    43ec:	846d04e0 	lh	t5,1248(v1)
    43f0:	018d7021 	addu	t6,t4,t5
    43f4:	1000003c 	b	44e8 <func_80A39688+0x170>
    43f8:	a44e0002 	sh	t6,2(v0)
    43fc:	24010006 	li	at,6
    4400:	54410011 	bnel	v0,at,4448 <func_80A39688+0xd0>
    4404:	2401000b 	li	at,11
    4408:	8d0202c0 	lw	v0,704(t0)
    440c:	3c18e700 	lui	t8,0xe700
    4410:	3c0a503c 	lui	t2,0x503c
    4414:	244f0008 	addiu	t7,v0,8
    4418:	ad0f02c0 	sw	t7,704(t0)
    441c:	ac400004 	sw	zero,4(v0)
    4420:	ac580000 	sw	t8,0(v0)
    4424:	8d0202c0 	lw	v0,704(t0)
    4428:	354a0aff 	ori	t2,t2,0xaff
    442c:	3c09fb00 	lui	t1,0xfb00
    4430:	24590008 	addiu	t9,v0,8
    4434:	ad1902c0 	sw	t9,704(t0)
    4438:	ac4a0004 	sw	t2,4(v0)
    443c:	1000002a 	b	44e8 <func_80A39688+0x170>
    4440:	ac490000 	sw	t1,0(v0)
    4444:	2401000b 	li	at,11
    4448:	10410003 	beq	v0,at,4458 <func_80A39688+0xe0>
    444c:	24010010 	li	at,16
    4450:	54410018 	bnel	v0,at,44b4 <func_80A39688+0x13c>
    4454:	8d0202c0 	lw	v0,704(t0)
    4458:	8d0202c0 	lw	v0,704(t0)
    445c:	3c0ce700 	lui	t4,0xe700
    4460:	3c0f8caa 	lui	t7,0x8caa
    4464:	244b0008 	addiu	t3,v0,8
    4468:	ad0b02c0 	sw	t3,704(t0)
    446c:	ac400004 	sw	zero,4(v0)
    4470:	ac4c0000 	sw	t4,0(v0)
    4474:	8d0202c0 	lw	v0,704(t0)
    4478:	35efe6ff 	ori	t7,t7,0xe6ff
    447c:	3c0efb00 	lui	t6,0xfb00
    4480:	244d0008 	addiu	t5,v0,8
    4484:	ad0d02c0 	sw	t5,704(t0)
    4488:	ac4f0004 	sw	t7,4(v0)
    448c:	ac4e0000 	sw	t6,0(v0)
    4490:	8d0202c0 	lw	v0,704(t0)
    4494:	3c19fa00 	lui	t9,0xfa00
    4498:	2409ffff 	li	t1,-1
    449c:	24580008 	addiu	t8,v0,8
    44a0:	ad1802c0 	sw	t8,704(t0)
    44a4:	ac490004 	sw	t1,4(v0)
    44a8:	1000000f 	b	44e8 <func_80A39688+0x170>
    44ac:	ac590000 	sw	t9,0(v0)
    44b0:	8d0202c0 	lw	v0,704(t0)
    44b4:	3c0be700 	lui	t3,0xe700
    44b8:	3c0e8c00 	lui	t6,0x8c00
    44bc:	244a0008 	addiu	t2,v0,8
    44c0:	ad0a02c0 	sw	t2,704(t0)
    44c4:	ac400004 	sw	zero,4(v0)
    44c8:	ac4b0000 	sw	t3,0(v0)
    44cc:	8d0202c0 	lw	v0,704(t0)
    44d0:	35ce00ff 	ori	t6,t6,0xff
    44d4:	3c0dfb00 	lui	t5,0xfb00
    44d8:	244c0008 	addiu	t4,v0,8
    44dc:	ad0c02c0 	sw	t4,704(t0)
    44e0:	ac4e0004 	sw	t6,4(v0)
    44e4:	ac4d0000 	sw	t5,0(v0)
    44e8:	8faf0050 	lw	t7,80(sp)
    44ec:	3c060000 	lui	a2,0x0
    44f0:	24c60000 	addiu	a2,a2,0
    44f4:	240709e1 	li	a3,2529
    44f8:	0c000000 	jal	0 <func_80A35310>
    44fc:	8de50000 	lw	a1,0(t7)
    4500:	8fbf0014 	lw	ra,20(sp)
    4504:	27bd0050 	addiu	sp,sp,80
    4508:	00001025 	move	v0,zero
    450c:	03e00008 	jr	ra
    4510:	00000000 	nop

00004514 <func_80A39824>:
    4514:	27bdff98 	addiu	sp,sp,-104
    4518:	afb10020 	sw	s1,32(sp)
    451c:	2401000b 	li	at,11
    4520:	afbf0024 	sw	ra,36(sp)
    4524:	afb0001c 	sw	s0,28(sp)
    4528:	afa40068 	sw	a0,104(sp)
    452c:	afa5006c 	sw	a1,108(sp)
    4530:	afa60070 	sw	a2,112(sp)
    4534:	afa70074 	sw	a3,116(sp)
    4538:	14a1003f 	bne	a1,at,4638 <func_80A39824+0x124>
    453c:	2411ffff 	li	s1,-1
    4540:	8fb00078 	lw	s0,120(sp)
    4544:	3c040000 	lui	a0,0x0
    4548:	24840000 	addiu	a0,a0,0
    454c:	260503b8 	addiu	a1,s0,952
    4550:	0c000000 	jal	0 <func_80A35310>
    4554:	afa50030 	sw	a1,48(sp)
    4558:	3c040000 	lui	a0,0x0
    455c:	260503ac 	addiu	a1,s0,940
    4560:	afa50034 	sw	a1,52(sp)
    4564:	0c000000 	jal	0 <func_80A35310>
    4568:	24840000 	addiu	a0,a0,0
    456c:	3c040000 	lui	a0,0x0
    4570:	260503d0 	addiu	a1,s0,976
    4574:	afa50028 	sw	a1,40(sp)
    4578:	0c000000 	jal	0 <func_80A35310>
    457c:	24840000 	addiu	a0,a0,0
    4580:	3c040000 	lui	a0,0x0
    4584:	260703c4 	addiu	a3,s0,964
    4588:	00e02825 	move	a1,a3
    458c:	afa7002c 	sw	a3,44(sp)
    4590:	0c000000 	jal	0 <func_80A35310>
    4594:	24840000 	addiu	a0,a0,0
    4598:	8faf0028 	lw	t7,40(sp)
    459c:	8fa7002c 	lw	a3,44(sp)
    45a0:	2604036c 	addiu	a0,s0,876
    45a4:	8fa50034 	lw	a1,52(sp)
    45a8:	8fa60030 	lw	a2,48(sp)
    45ac:	0c000000 	jal	0 <func_80A35310>
    45b0:	afaf0010 	sw	t7,16(sp)
    45b4:	3c040000 	lui	a0,0x0
    45b8:	24840000 	addiu	a0,a0,0
    45bc:	0c000000 	jal	0 <func_80A35310>
    45c0:	27a5005c 	addiu	a1,sp,92
    45c4:	3c040000 	lui	a0,0x0
    45c8:	24840000 	addiu	a0,a0,0
    45cc:	0c000000 	jal	0 <func_80A35310>
    45d0:	27a50050 	addiu	a1,sp,80
    45d4:	86020310 	lh	v0,784(s0)
    45d8:	04400007 	bltz	v0,45f8 <func_80A39824+0xe4>
    45dc:	00000000 	nop
    45e0:	8e0302ec 	lw	v1,748(s0)
    45e4:	24010007 	li	at,7
    45e8:	10610009 	beq	v1,at,4610 <func_80A39824+0xfc>
    45ec:	2401000c 	li	at,12
    45f0:	10610007 	beq	v1,at,4610 <func_80A39824+0xfc>
    45f4:	00000000 	nop
    45f8:	0c000000 	jal	0 <func_80A35310>
    45fc:	8e04031c 	lw	a0,796(s0)
    4600:	0c000000 	jal	0 <func_80A35310>
    4604:	00402025 	move	a0,v0
    4608:	10000015 	b	4660 <func_80A39824+0x14c>
    460c:	a6000310 	sh	zero,784(s0)
    4610:	58400014 	blezl	v0,4664 <func_80A39824+0x150>
    4614:	8fa2006c 	lw	v0,108(sp)
    4618:	0c000000 	jal	0 <func_80A35310>
    461c:	8e04031c 	lw	a0,796(s0)
    4620:	00402025 	move	a0,v0
    4624:	27a5005c 	addiu	a1,sp,92
    4628:	0c000000 	jal	0 <func_80A35310>
    462c:	27a60050 	addiu	a2,sp,80
    4630:	1000000c 	b	4664 <func_80A39824+0x150>
    4634:	8fa2006c 	lw	v0,108(sp)
    4638:	8fb00078 	lw	s0,120(sp)
    463c:	3c180000 	lui	t8,0x0
    4640:	27070000 	addiu	a3,t8,0
    4644:	24190016 	li	t9,22
    4648:	afb90010 	sw	t9,16(sp)
    464c:	afa70014 	sw	a3,20(sp)
    4650:	8fa5006c 	lw	a1,108(sp)
    4654:	24060013 	li	a2,19
    4658:	0c000000 	jal	0 <func_80A35310>
    465c:	02002025 	move	a0,s0
    4660:	8fa2006c 	lw	v0,108(sp)
    4664:	24010013 	li	at,19
    4668:	3c040000 	lui	a0,0x0
    466c:	14410005 	bne	v0,at,4684 <func_80A39824+0x170>
    4670:	24840000 	addiu	a0,a0,0
    4674:	0c000000 	jal	0 <func_80A35310>
    4678:	260504d0 	addiu	a1,s0,1232
    467c:	10000008 	b	46a0 <func_80A39824+0x18c>
    4680:	8fa2006c 	lw	v0,108(sp)
    4684:	24010016 	li	at,22
    4688:	14410005 	bne	v0,at,46a0 <func_80A39824+0x18c>
    468c:	3c040000 	lui	a0,0x0
    4690:	24840000 	addiu	a0,a0,0
    4694:	0c000000 	jal	0 <func_80A35310>
    4698:	260504c4 	addiu	a1,s0,1220
    469c:	8fa2006c 	lw	v0,108(sp)
    46a0:	860802fc 	lh	t0,764(s0)
    46a4:	2449fffe 	addiu	t1,v0,-2
    46a8:	2d210016 	sltiu	at,t1,22
    46ac:	51000032 	beqzl	t0,4778 <L80A39A24+0x64>
    46b0:	8fbf0024 	lw	ra,36(sp)
    46b4:	10200017 	beqz	at,4714 <L80A39A24>
    46b8:	00094880 	sll	t1,t1,0x2
    46bc:	3c010000 	lui	at,0x0
    46c0:	00290821 	addu	at,at,t1
    46c4:	8c290000 	lw	t1,0(at)
    46c8:	01200008 	jr	t1
    46cc:	00000000 	nop

000046d0 <L80A399E0>:
    46d0:	10000010 	b	4714 <L80A39A24>
    46d4:	00008825 	move	s1,zero

000046d8 <L80A399E8>:
    46d8:	1000000e 	b	4714 <L80A39A24>
    46dc:	24110001 	li	s1,1

000046e0 <L80A399F0>:
    46e0:	1000000c 	b	4714 <L80A39A24>
    46e4:	24110002 	li	s1,2

000046e8 <L80A399F8>:
    46e8:	1000000a 	b	4714 <L80A39A24>
    46ec:	24110003 	li	s1,3

000046f0 <L80A39A00>:
    46f0:	10000008 	b	4714 <L80A39A24>
    46f4:	24110004 	li	s1,4

000046f8 <L80A39A08>:
    46f8:	10000006 	b	4714 <L80A39A24>
    46fc:	24110005 	li	s1,5

00004700 <L80A39A10>:
    4700:	10000004 	b	4714 <L80A39A24>
    4704:	24110006 	li	s1,6

00004708 <L80A39A18>:
    4708:	10000002 	b	4714 <L80A39A24>
    470c:	24110007 	li	s1,7

00004710 <L80A39A20>:
    4710:	24110008 	li	s1,8

00004714 <L80A39A24>:
    4714:	06200017 	bltz	s1,4774 <L80A39A24+0x60>
    4718:	3c040000 	lui	a0,0x0
    471c:	24840000 	addiu	a0,a0,0
    4720:	0c000000 	jal	0 <func_80A35310>
    4724:	27a5003c 	addiu	a1,sp,60
    4728:	c7a4003c 	lwc1	$f4,60(sp)
    472c:	00115080 	sll	t2,s1,0x2
    4730:	01515023 	subu	t2,t2,s1
    4734:	4600218d 	trunc.w.s	$f6,$f4
    4738:	000a5040 	sll	t2,t2,0x1
    473c:	020a1021 	addu	v0,s0,t2
    4740:	440c3000 	mfc1	t4,$f6
    4744:	00000000 	nop
    4748:	a44c014c 	sh	t4,332(v0)
    474c:	c7a80040 	lwc1	$f8,64(sp)
    4750:	4600428d 	trunc.w.s	$f10,$f8
    4754:	440e5000 	mfc1	t6,$f10
    4758:	00000000 	nop
    475c:	a44e014e 	sh	t6,334(v0)
    4760:	c7b00044 	lwc1	$f16,68(sp)
    4764:	4600848d 	trunc.w.s	$f18,$f16
    4768:	44199000 	mfc1	t9,$f18
    476c:	00000000 	nop
    4770:	a4590150 	sh	t9,336(v0)
    4774:	8fbf0024 	lw	ra,36(sp)
    4778:	8fb0001c 	lw	s0,28(sp)
    477c:	8fb10020 	lw	s1,32(sp)
    4780:	03e00008 	jr	ra
    4784:	27bd0068 	addiu	sp,sp,104

00004788 <EnGeldB_Draw>:
    4788:	27bdff28 	addiu	sp,sp,-216
    478c:	afbf004c 	sw	ra,76(sp)
    4790:	afb40048 	sw	s4,72(sp)
    4794:	afb30044 	sw	s3,68(sp)
    4798:	afb20040 	sw	s2,64(sp)
    479c:	afb1003c 	sw	s1,60(sp)
    47a0:	afb00038 	sw	s0,56(sp)
    47a4:	afa500dc 	sw	a1,220(sp)
    47a8:	8ca50000 	lw	a1,0(a1)
    47ac:	0080a025 	move	s4,a0
    47b0:	3c060000 	lui	a2,0x0
    47b4:	24c60000 	addiu	a2,a2,0
    47b8:	27a400bc 	addiu	a0,sp,188
    47bc:	24070a70 	li	a3,2672
    47c0:	0c000000 	jal	0 <func_80A35310>
    47c4:	00a08825 	move	s1,a1
    47c8:	868f0312 	lh	t7,786(s4)
    47cc:	26900188 	addiu	s0,s4,392
    47d0:	29e10002 	slti	at,t7,2
    47d4:	5420004d 	bnezl	at,490c <EnGeldB_Draw+0x184>
    47d8:	8e8b02ec 	lw	t3,748(s4)
    47dc:	0c000000 	jal	0 <func_80A35310>
    47e0:	02002025 	move	a0,s0
    47e4:	50400049 	beqzl	v0,490c <EnGeldB_Draw+0x184>
    47e8:	8e8b02ec 	lw	t3,748(s4)
    47ec:	86980312 	lh	t8,786(s4)
    47f0:	24010002 	li	at,2
    47f4:	02002025 	move	a0,s0
    47f8:	17010014 	bne	t8,at,484c <EnGeldB_Draw+0xc4>
    47fc:	3c050600 	lui	a1,0x600
    4800:	3c014140 	lui	at,0x4140
    4804:	44812000 	mtc1	at,$f4
    4808:	3c014080 	lui	at,0x4080
    480c:	44813000 	mtc1	at,$f6
    4810:	24190003 	li	t9,3
    4814:	afb90014 	sw	t9,20(sp)
    4818:	24a50f5c 	addiu	a1,a1,3932
    481c:	3c063f00 	lui	a2,0x3f00
    4820:	24070000 	li	a3,0
    4824:	e7a40010 	swc1	$f4,16(sp)
    4828:	0c000000 	jal	0 <func_80A35310>
    482c:	e7a60018 	swc1	$f6,24(sp)
    4830:	86880312 	lh	t0,786(s4)
    4834:	8682008a 	lh	v0,138(s4)
    4838:	25090001 	addiu	t1,t0,1
    483c:	a6890312 	sh	t1,786(s4)
    4840:	a68200b6 	sh	v0,182(s4)
    4844:	10000030 	b	4908 <EnGeldB_Draw+0x180>
    4848:	a6820032 	sh	v0,50(s4)
    484c:	8e8a0300 	lw	t2,768(s4)
    4850:	3c040000 	lui	a0,0x0
    4854:	24840000 	addiu	a0,a0,0
    4858:	254bffff 	addiu	t3,t2,-1
    485c:	1560002a 	bnez	t3,4908 <EnGeldB_Draw+0x180>
    4860:	ae8b0300 	sw	t3,768(s4)
    4864:	908d000a 	lbu	t5,10(a0)
    4868:	3c020000 	lui	v0,0x0
    486c:	24420000 	addiu	v0,v0,0
    4870:	004d7021 	addu	t6,v0,t5
    4874:	91cf0074 	lbu	t7,116(t6)
    4878:	240300ff 	li	v1,255
    487c:	8faa00dc 	lw	t2,220(sp)
    4880:	106f0005 	beq	v1,t7,4898 <EnGeldB_Draw+0x110>
    4884:	3c010001 	lui	at,0x1
    4888:	9098000b 	lbu	t8,11(a0)
    488c:	0058c821 	addu	t9,v0,t8
    4890:	93280074 	lbu	t0,116(t9)
    4894:	14680004 	bne	v1,t0,48a8 <EnGeldB_Draw+0x120>
    4898:	240901a5 	li	t1,421
    489c:	002a0821 	addu	at,at,t2
    48a0:	1000000f 	b	48e0 <EnGeldB_Draw+0x158>
    48a4:	a4291e1a 	sh	t1,7706(at)
    48a8:	944b0eec 	lhu	t3,3820(v0)
    48ac:	8fb800dc 	lw	t8,220(sp)
    48b0:	3c010001 	lui	at,0x1
    48b4:	316c0080 	andi	t4,t3,0x80
    48b8:	11800007 	beqz	t4,48d8 <EnGeldB_Draw+0x150>
    48bc:	00380821 	addu	at,at,t8
    48c0:	8fae00dc 	lw	t6,220(sp)
    48c4:	3c010001 	lui	at,0x1
    48c8:	240d05f8 	li	t5,1528
    48cc:	002e0821 	addu	at,at,t6
    48d0:	10000003 	b	48e0 <EnGeldB_Draw+0x158>
    48d4:	a42d1e1a 	sh	t5,7706(at)
    48d8:	240f03b4 	li	t7,948
    48dc:	a42f1e1a 	sh	t7,7706(at)
    48e0:	8fa800dc 	lw	t0,220(sp)
    48e4:	3c010001 	lui	at,0x1
    48e8:	24190026 	li	t9,38
    48ec:	00280821 	addu	at,at,t0
    48f0:	a0391e5e 	sb	t9,7774(at)
    48f4:	8faa00dc 	lw	t2,220(sp)
    48f8:	3c010001 	lui	at,0x1
    48fc:	24090014 	li	t1,20
    4900:	002a0821 	addu	at,at,t2
    4904:	a0291e15 	sb	t1,7701(at)
    4908:	8e8b02ec 	lw	t3,748(s4)
    490c:	8fad00dc 	lw	t5,220(sp)
    4910:	15600004 	bnez	t3,4924 <EnGeldB_Draw+0x19c>
    4914:	00000000 	nop
    4918:	868c0318 	lh	t4,792(s4)
    491c:	55800071 	bnezl	t4,4ae4 <EnGeldB_Draw+0x35c>
    4920:	8fae00dc 	lw	t6,220(sp)
    4924:	0c000000 	jal	0 <func_80A35310>
    4928:	8da40000 	lw	a0,0(t5)
    492c:	8e2302c0 	lw	v1,704(s1)
    4930:	3c0fdb06 	lui	t7,0xdb06
    4934:	35ef0020 	ori	t7,t7,0x20
    4938:	246e0008 	addiu	t6,v1,8
    493c:	ae2e02c0 	sw	t6,704(s1)
    4940:	ac6f0000 	sw	t7,0(v1)
    4944:	9298031a 	lbu	t8,794(s4)
    4948:	3c040000 	lui	a0,0x0
    494c:	3c0c0000 	lui	t4,0x0
    4950:	0018c880 	sll	t9,t8,0x2
    4954:	00992021 	addu	a0,a0,t9
    4958:	8c840000 	lw	a0,0(a0)
    495c:	3c0100ff 	lui	at,0xff
    4960:	3421ffff 	ori	at,at,0xffff
    4964:	00044900 	sll	t1,a0,0x4
    4968:	00095702 	srl	t2,t1,0x1c
    496c:	000a5880 	sll	t3,t2,0x2
    4970:	018b6021 	addu	t4,t4,t3
    4974:	8d8c0000 	lw	t4,0(t4)
    4978:	00814024 	and	t0,a0,at
    497c:	3c018000 	lui	at,0x8000
    4980:	010c6821 	addu	t5,t0,t4
    4984:	01a17021 	addu	t6,t5,at
    4988:	ac6e0004 	sw	t6,4(v1)
    498c:	9287018a 	lbu	a3,394(s4)
    4990:	8e8601a8 	lw	a2,424(s4)
    4994:	8e85018c 	lw	a1,396(s4)
    4998:	3c180000 	lui	t8,0x0
    499c:	3c0f0000 	lui	t7,0x0
    49a0:	25ef0000 	addiu	t7,t7,0
    49a4:	27180000 	addiu	t8,t8,0
    49a8:	afb80014 	sw	t8,20(sp)
    49ac:	afaf0010 	sw	t7,16(sp)
    49b0:	afb40018 	sw	s4,24(sp)
    49b4:	0c000000 	jal	0 <func_80A35310>
    49b8:	8fa400dc 	lw	a0,220(sp)
    49bc:	8e9902ec 	lw	t9,748(s4)
    49c0:	24010006 	li	at,6
    49c4:	3c110000 	lui	s1,0x0
    49c8:	17210020 	bne	t9,at,4a4c <EnGeldB_Draw+0x2c4>
    49cc:	26310000 	addiu	s1,s1,0
    49d0:	3c130000 	lui	s3,0x0
    49d4:	26730000 	addiu	s3,s3,0
    49d8:	27b20090 	addiu	s2,sp,144
    49dc:	27b0006c 	addiu	s0,sp,108
    49e0:	02202025 	move	a0,s1
    49e4:	0c000000 	jal	0 <func_80A35310>
    49e8:	02402825 	move	a1,s2
    49ec:	02602025 	move	a0,s3
    49f0:	0c000000 	jal	0 <func_80A35310>
    49f4:	02002825 	move	a1,s0
    49f8:	2610000c 	addiu	s0,s0,12
    49fc:	27a90090 	addiu	t1,sp,144
    4a00:	2631000c 	addiu	s1,s1,12
    4a04:	2652000c 	addiu	s2,s2,12
    4a08:	1609fff5 	bne	s0,t1,49e0 <EnGeldB_Draw+0x258>
    4a0c:	2673000c 	addiu	s3,s3,12
    4a10:	269003ec 	addiu	s0,s4,1004
    4a14:	27aa00a8 	addiu	t2,sp,168
    4a18:	afaa0010 	sw	t2,16(sp)
    4a1c:	02002025 	move	a0,s0
    4a20:	00002825 	move	a1,zero
    4a24:	27a60090 	addiu	a2,sp,144
    4a28:	0c000000 	jal	0 <func_80A35310>
    4a2c:	27a7009c 	addiu	a3,sp,156
    4a30:	27ab0084 	addiu	t3,sp,132
    4a34:	afab0010 	sw	t3,16(sp)
    4a38:	02002025 	move	a0,s0
    4a3c:	24050001 	li	a1,1
    4a40:	27a6006c 	addiu	a2,sp,108
    4a44:	0c000000 	jal	0 <func_80A35310>
    4a48:	27a70078 	addiu	a3,sp,120
    4a4c:	868802fc 	lh	t0,764(s4)
    4a50:	51000024 	beqzl	t0,4ae4 <EnGeldB_Draw+0x35c>
    4a54:	8fae00dc 	lw	t6,220(sp)
    4a58:	868e02fc 	lh	t6,764(s4)
    4a5c:	928c0114 	lbu	t4,276(s4)
    4a60:	02802825 	move	a1,s4
    4a64:	25cfffff 	addiu	t7,t6,-1
    4a68:	a68f02fc 	sh	t7,764(s4)
    4a6c:	868302fc 	lh	v1,764(s4)
    4a70:	258d0001 	addiu	t5,t4,1
    4a74:	a28d0114 	sb	t5,276(s4)
    4a78:	30780003 	andi	t8,v1,0x3
    4a7c:	17000018 	bnez	t8,4ae0 <EnGeldB_Draw+0x358>
    4a80:	00031083 	sra	v0,v1,0x2
    4a84:	0002c880 	sll	t9,v0,0x2
    4a88:	0322c823 	subu	t9,t9,v0
    4a8c:	3c013fc0 	lui	at,0x3fc0
    4a90:	44814000 	mtc1	at,$f8
    4a94:	0019c840 	sll	t9,t9,0x1
    4a98:	02993021 	addu	a2,s4,t9
    4a9c:	24090096 	li	t1,150
    4aa0:	240a0096 	li	t2,150
    4aa4:	240b00fa 	li	t3,250
    4aa8:	240800eb 	li	t0,235
    4aac:	240c00f5 	li	t4,245
    4ab0:	240d00ff 	li	t5,255
    4ab4:	afad0024 	sw	t5,36(sp)
    4ab8:	afac0020 	sw	t4,32(sp)
    4abc:	afa8001c 	sw	t0,28(sp)
    4ac0:	afab0018 	sw	t3,24(sp)
    4ac4:	afaa0014 	sw	t2,20(sp)
    4ac8:	afa90010 	sw	t1,16(sp)
    4acc:	24c6014c 	addiu	a2,a2,332
    4ad0:	8fa400dc 	lw	a0,220(sp)
    4ad4:	24070096 	li	a3,150
    4ad8:	0c000000 	jal	0 <func_80A35310>
    4adc:	e7a80028 	swc1	$f8,40(sp)
    4ae0:	8fae00dc 	lw	t6,220(sp)
    4ae4:	3c060000 	lui	a2,0x0
    4ae8:	24c60000 	addiu	a2,a2,0
    4aec:	27a400bc 	addiu	a0,sp,188
    4af0:	24070ab8 	li	a3,2744
    4af4:	0c000000 	jal	0 <func_80A35310>
    4af8:	8dc50000 	lw	a1,0(t6)
    4afc:	8fbf004c 	lw	ra,76(sp)
    4b00:	8fb00038 	lw	s0,56(sp)
    4b04:	8fb1003c 	lw	s1,60(sp)
    4b08:	8fb20040 	lw	s2,64(sp)
    4b0c:	8fb30044 	lw	s3,68(sp)
    4b10:	8fb40048 	lw	s4,72(sp)
    4b14:	03e00008 	jr	ra
    4b18:	27bd00d8 	addiu	sp,sp,216

00004b1c <func_80A39E2C>:
    4b1c:	27bdffe0 	addiu	sp,sp,-32
    4b20:	afbf0014 	sw	ra,20(sp)
    4b24:	afa40020 	sw	a0,32(sp)
    4b28:	afa50024 	sw	a1,36(sp)
    4b2c:	0c000000 	jal	0 <func_80A35310>
    4b30:	3c064448 	lui	a2,0x4448
    4b34:	8fa70024 	lw	a3,36(sp)
    4b38:	10400055 	beqz	v0,4c90 <func_80A39E2C+0x174>
    4b3c:	00402825 	move	a1,v0
    4b40:	00e02025 	move	a0,a3
    4b44:	afa2001c 	sw	v0,28(sp)
    4b48:	0c000000 	jal	0 <func_80A35310>
    4b4c:	afa70024 	sw	a3,36(sp)
    4b50:	8fa40024 	lw	a0,36(sp)
    4b54:	848f00b6 	lh	t7,182(a0)
    4b58:	004f3023 	subu	a2,v0,t7
    4b5c:	a48f0032 	sh	t7,50(a0)
    4b60:	8fa5001c 	lw	a1,28(sp)
    4b64:	00063400 	sll	a2,a2,0x10
    4b68:	00063403 	sra	a2,a2,0x10
    4b6c:	a7a6001a 	sh	a2,26(sp)
    4b70:	0c000000 	jal	0 <func_80A35310>
    4b74:	24a50024 	addiu	a1,a1,36
    4b78:	87a6001a 	lh	a2,26(sp)
    4b7c:	8fa70024 	lw	a3,36(sp)
    4b80:	46000086 	mov.s	$f2,$f0
    4b84:	04c00003 	bltz	a2,4b94 <func_80A39E2C+0x78>
    4b88:	00061023 	negu	v0,a2
    4b8c:	10000001 	b	4b94 <func_80A39E2C+0x78>
    4b90:	00c01025 	move	v0,a2
    4b94:	28412ee0 	slti	at,v0,12000
    4b98:	50200017 	beqzl	at,4bf8 <func_80A39E2C+0xdc>
    4b9c:	84e800b6 	lh	t0,182(a3)
    4ba0:	46001021 	cvt.d.s	$f0,$f2
    4ba4:	3c010000 	lui	at,0x0
    4ba8:	46200004 	sqrt.d	$f0,$f0
    4bac:	d4240000 	ldc1	$f4,0(at)
    4bb0:	8fb8001c 	lw	t8,28(sp)
    4bb4:	4624003c 	c.lt.d	$f0,$f4
    4bb8:	00000000 	nop
    4bbc:	4502000e 	bc1fl	4bf8 <func_80A39E2C+0xdc>
    4bc0:	84e800b6 	lh	t0,182(a3)
    4bc4:	87190000 	lh	t9,0(t8)
    4bc8:	24010066 	li	at,102
    4bcc:	17210005 	bne	t9,at,4be4 <func_80A39E2C+0xc8>
    4bd0:	00000000 	nop
    4bd4:	0c000000 	jal	0 <func_80A35310>
    4bd8:	00e02025 	move	a0,a3
    4bdc:	1000002d 	b	4c94 <func_80A39E2C+0x178>
    4be0:	24020001 	li	v0,1
    4be4:	0c000000 	jal	0 <func_80A35310>
    4be8:	00e02025 	move	a0,a3
    4bec:	10000029 	b	4c94 <func_80A39E2C+0x178>
    4bf0:	24020001 	li	v0,1
    4bf4:	84e800b6 	lh	t0,182(a3)
    4bf8:	00061023 	negu	v0,a2
    4bfc:	00e02025 	move	a0,a3
    4c00:	25093fff 	addiu	t1,t0,16383
    4c04:	04c00003 	bltz	a2,4c14 <func_80A39E2C+0xf8>
    4c08:	a4e90032 	sh	t1,50(a3)
    4c0c:	10000001 	b	4c14 <func_80A39E2C+0xf8>
    4c10:	00c01025 	move	v0,a2
    4c14:	28412000 	slti	at,v0,8192
    4c18:	14200008 	bnez	at,4c3c <func_80A39E2C+0x120>
    4c1c:	8fa50020 	lw	a1,32(sp)
    4c20:	04c00003 	bltz	a2,4c30 <func_80A39E2C+0x114>
    4c24:	00061023 	negu	v0,a2
    4c28:	10000001 	b	4c30 <func_80A39E2C+0x114>
    4c2c:	00c01025 	move	v0,a2
    4c30:	28416000 	slti	at,v0,24576
    4c34:	1420000b 	bnez	at,4c64 <func_80A39E2C+0x148>
    4c38:	00000000 	nop
    4c3c:	0c000000 	jal	0 <func_80A35310>
    4c40:	afa70024 	sw	a3,36(sp)
    4c44:	8fa70024 	lw	a3,36(sp)
    4c48:	3c014040 	lui	at,0x4040
    4c4c:	44814000 	mtc1	at,$f8
    4c50:	c4e60068 	lwc1	$f6,104(a3)
    4c54:	24020001 	li	v0,1
    4c58:	46083282 	mul.s	$f10,$f6,$f8
    4c5c:	1000000d 	b	4c94 <func_80A39E2C+0x178>
    4c60:	e4ea0068 	swc1	$f10,104(a3)
    4c64:	04c00003 	bltz	a2,4c74 <func_80A39E2C+0x158>
    4c68:	00061023 	negu	v0,a2
    4c6c:	10000001 	b	4c74 <func_80A39E2C+0x158>
    4c70:	00c01025 	move	v0,a2
    4c74:	28415fff 	slti	at,v0,24575
    4c78:	10200003 	beqz	at,4c88 <func_80A39E2C+0x16c>
    4c7c:	00000000 	nop
    4c80:	0c000000 	jal	0 <func_80A35310>
    4c84:	00e02025 	move	a0,a3
    4c88:	10000002 	b	4c94 <func_80A39E2C+0x178>
    4c8c:	24020001 	li	v0,1
    4c90:	00001025 	move	v0,zero
    4c94:	8fbf0014 	lw	ra,20(sp)
    4c98:	27bd0020 	addiu	sp,sp,32
    4c9c:	03e00008 	jr	ra
    4ca0:	00000000 	nop
	...
