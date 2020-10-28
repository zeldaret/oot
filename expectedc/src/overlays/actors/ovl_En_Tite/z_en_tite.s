
build/src/overlays/actors/ovl_En_Tite/z_en_tite.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B18A80>:
       0:	03e00008 	jr	ra
       4:	ac8502c0 	sw	a1,704(a0)

00000008 <EnTite_Init>:
       8:	27bdffc8 	addiu	sp,sp,-56
       c:	afa5003c 	sw	a1,60(sp)
      10:	afbf002c 	sw	ra,44(sp)
      14:	afb00028 	sw	s0,40(sp)
      18:	3c050000 	lui	a1,0x0
      1c:	00808025 	move	s0,a0
      20:	0c000000 	jal	0 <func_80B18A80>
      24:	24a50000 	addiu	a1,a1,0
      28:	240e0003 	li	t6,3
      2c:	3c053c23 	lui	a1,0x3c23
      30:	a20e001f 	sb	t6,31(s0)
      34:	34a5d70a 	ori	a1,a1,0xd70a
      38:	0c000000 	jal	0 <func_80B18A80>
      3c:	02002025 	move	a0,s0
      40:	3c060600 	lui	a2,0x600
      44:	3c070600 	lui	a3,0x600
      48:	260f0190 	addiu	t7,s0,400
      4c:	26180226 	addiu	t8,s0,550
      50:	24190019 	li	t9,25
      54:	afb90018 	sw	t9,24(sp)
      58:	afb80014 	sw	t8,20(sp)
      5c:	afaf0010 	sw	t7,16(sp)
      60:	24e712e4 	addiu	a3,a3,4836
      64:	24c63a20 	addiu	a2,a2,14880
      68:	8fa4003c 	lw	a0,60(sp)
      6c:	0c000000 	jal	0 <func_80B18A80>
      70:	2605014c 	addiu	a1,s0,332
      74:	3c060000 	lui	a2,0x0
      78:	24c60000 	addiu	a2,a2,0
      7c:	260400b4 	addiu	a0,s0,180
      80:	3c05c348 	lui	a1,0xc348
      84:	0c000000 	jal	0 <func_80B18A80>
      88:	3c07428c 	lui	a3,0x428c
      8c:	8e090028 	lw	t1,40(s0)
      90:	3c0141a0 	lui	at,0x41a0
      94:	8e0a0024 	lw	t2,36(s0)
      98:	ae09003c 	sw	t1,60(s0)
      9c:	c604003c 	lwc1	$f4,60(s0)
      a0:	44813000 	mtc1	at,$f6
      a4:	ae0a0038 	sw	t2,56(s0)
      a8:	8e0a002c 	lw	t2,44(s0)
      ac:	46062200 	add.s	$f8,$f4,$f6
      b0:	3c080000 	lui	t0,0x0
      b4:	25080000 	addiu	t0,t0,0
      b8:	240b0002 	li	t3,2
      bc:	240c00fe 	li	t4,254
      c0:	a20002bd 	sb	zero,701(s0)
      c4:	ae080098 	sw	t0,152(s0)
      c8:	a60002e0 	sh	zero,736(s0)
      cc:	ae0002d4 	sw	zero,724(s0)
      d0:	e608003c 	swc1	$f8,60(s0)
      d4:	a20b00af 	sb	t3,175(s0)
      d8:	a20c00ae 	sb	t4,174(s0)
      dc:	260502e8 	addiu	a1,s0,744
      e0:	ae0a0040 	sw	t2,64(s0)
      e4:	afa50030 	sw	a1,48(sp)
      e8:	0c000000 	jal	0 <func_80B18A80>
      ec:	8fa4003c 	lw	a0,60(sp)
      f0:	3c070000 	lui	a3,0x0
      f4:	260d0308 	addiu	t5,s0,776
      f8:	8fa50030 	lw	a1,48(sp)
      fc:	afad0010 	sw	t5,16(sp)
     100:	24e70000 	addiu	a3,a3,0
     104:	8fa4003c 	lw	a0,60(sp)
     108:	0c000000 	jal	0 <func_80B18A80>
     10c:	02003025 	move	a2,s0
     110:	860f001c 	lh	t7,28(s0)
     114:	240e001d 	li	t6,29
     118:	2401fffe 	li	at,-2
     11c:	15e10008 	bne	t7,at,140 <EnTite_Init+0x138>
     120:	ae0e02dc 	sw	t6,732(s0)
     124:	92090117 	lbu	t1,279(s0)
     128:	35d90040 	ori	t9,t6,0x40
     12c:	24080004 	li	t0,4
     130:	252a0001 	addiu	t2,t1,1
     134:	ae1902dc 	sw	t9,732(s0)
     138:	a20800af 	sb	t0,175(s0)
     13c:	a20a0117 	sb	t2,279(s0)
     140:	0c000000 	jal	0 <func_80B18A80>
     144:	02002025 	move	a0,s0
     148:	8fbf002c 	lw	ra,44(sp)
     14c:	8fb00028 	lw	s0,40(sp)
     150:	27bd0038 	addiu	sp,sp,56
     154:	03e00008 	jr	ra
     158:	00000000 	nop

0000015c <EnTite_Destroy>:
     15c:	27bdffe0 	addiu	sp,sp,-32
     160:	afbf0014 	sw	ra,20(sp)
     164:	afa40020 	sw	a0,32(sp)
     168:	afa50024 	sw	a1,36(sp)
     16c:	8c830118 	lw	v1,280(a0)
     170:	50600013 	beqzl	v1,1c0 <EnTite_Destroy+0x64>
     174:	8fa50020 	lw	a1,32(sp)
     178:	84640152 	lh	a0,338(v1)
     17c:	00601025 	move	v0,v1
     180:	18800002 	blez	a0,18c <EnTite_Destroy+0x30>
     184:	248fffff 	addiu	t7,a0,-1
     188:	a46f0152 	sh	t7,338(v1)
     18c:	3c040000 	lui	a0,0x0
     190:	24840000 	addiu	a0,a0,0
     194:	0c000000 	jal	0 <func_80B18A80>
     198:	afa20018 	sw	v0,24(sp)
     19c:	8fa20018 	lw	v0,24(sp)
     1a0:	3c040000 	lui	a0,0x0
     1a4:	24840000 	addiu	a0,a0,0
     1a8:	0c000000 	jal	0 <func_80B18A80>
     1ac:	84450152 	lh	a1,338(v0)
     1b0:	3c040000 	lui	a0,0x0
     1b4:	0c000000 	jal	0 <func_80B18A80>
     1b8:	24840000 	addiu	a0,a0,0
     1bc:	8fa50020 	lw	a1,32(sp)
     1c0:	8fa40024 	lw	a0,36(sp)
     1c4:	0c000000 	jal	0 <func_80B18A80>
     1c8:	24a502e8 	addiu	a1,a1,744
     1cc:	8fbf0014 	lw	ra,20(sp)
     1d0:	27bd0020 	addiu	sp,sp,32
     1d4:	03e00008 	jr	ra
     1d8:	00000000 	nop

000001dc <func_80B18C5C>:
     1dc:	27bdffe8 	addiu	sp,sp,-24
     1e0:	afbf0014 	sw	ra,20(sp)
     1e4:	00803825 	move	a3,a0
     1e8:	3c050600 	lui	a1,0x600
     1ec:	24a512e4 	addiu	a1,a1,4836
     1f0:	afa70018 	sw	a3,24(sp)
     1f4:	2484014c 	addiu	a0,a0,332
     1f8:	0c000000 	jal	0 <func_80B18A80>
     1fc:	3c064080 	lui	a2,0x4080
     200:	8fa70018 	lw	a3,24(sp)
     204:	240e0006 	li	t6,6
     208:	2404000f 	li	a0,15
     20c:	2405001e 	li	a1,30
     210:	0c000000 	jal	0 <func_80B18A80>
     214:	a0ee02bc 	sb	t6,700(a3)
     218:	8fa40018 	lw	a0,24(sp)
     21c:	44802000 	mtc1	zero,$f4
     220:	3c050000 	lui	a1,0x0
     224:	24a50000 	addiu	a1,a1,0
     228:	a48202e0 	sh	v0,736(a0)
     22c:	0c000000 	jal	0 <func_80B18A80>
     230:	e4840068 	swc1	$f4,104(a0)
     234:	8fbf0014 	lw	ra,20(sp)
     238:	27bd0018 	addiu	sp,sp,24
     23c:	03e00008 	jr	ra
     240:	00000000 	nop

00000244 <func_80B18CC4>:
     244:	27bdffd0 	addiu	sp,sp,-48
     248:	afb00028 	sw	s0,40(sp)
     24c:	00808025 	move	s0,a0
     250:	afbf002c 	sw	ra,44(sp)
     254:	f7b40020 	sdc1	$f20,32(sp)
     258:	afa50034 	sw	a1,52(sp)
     25c:	0c000000 	jal	0 <func_80B18A80>
     260:	2484014c 	addiu	a0,a0,332
     264:	4480a000 	mtc1	zero,$f20
     268:	26040068 	addiu	a0,s0,104
     26c:	3c063f80 	lui	a2,0x3f80
     270:	4405a000 	mfc1	a1,$f20
     274:	3c073f00 	lui	a3,0x3f00
     278:	0c000000 	jal	0 <func_80B18A80>
     27c:	e7b40010 	swc1	$f20,16(sp)
     280:	860e001c 	lh	t6,28(s0)
     284:	2401fffe 	li	at,-2
     288:	55c1001c 	bnel	t6,at,2fc <func_80B18CC4+0xb8>
     28c:	96190088 	lhu	t9,136(s0)
     290:	960f0088 	lhu	t7,136(s0)
     294:	26040060 	addiu	a0,s0,96
     298:	3c063f80 	lui	a2,0x3f80
     29c:	31f80020 	andi	t8,t7,0x20
     2a0:	13000012 	beqz	t8,2ec <func_80B18CC4+0xa8>
     2a4:	3c01bf80 	lui	at,0xbf80
     2a8:	e614006c 	swc1	$f20,108(s0)
     2ac:	4405a000 	mfc1	a1,$f20
     2b0:	e7b40010 	swc1	$f20,16(sp)
     2b4:	0c000000 	jal	0 <func_80B18A80>
     2b8:	3c074000 	lui	a3,0x4000
     2bc:	c6040028 	lwc1	$f4,40(s0)
     2c0:	c6060084 	lwc1	$f6,132(s0)
     2c4:	e7b40010 	swc1	$f20,16(sp)
     2c8:	26040028 	addiu	a0,s0,40
     2cc:	46062200 	add.s	$f8,$f4,$f6
     2d0:	3c063f80 	lui	a2,0x3f80
     2d4:	3c074000 	lui	a3,0x4000
     2d8:	44054000 	mfc1	a1,$f8
     2dc:	0c000000 	jal	0 <func_80B18A80>
     2e0:	00000000 	nop
     2e4:	10000005 	b	2fc <func_80B18CC4+0xb8>
     2e8:	96190088 	lhu	t9,136(s0)
     2ec:	44815000 	mtc1	at,$f10
     2f0:	00000000 	nop
     2f4:	e60a006c 	swc1	$f10,108(s0)
     2f8:	96190088 	lhu	t9,136(s0)
     2fc:	3c014396 	lui	at,0x4396
     300:	33280003 	andi	t0,t9,0x3
     304:	51000008 	beqzl	t0,328 <func_80B18CC4+0xe4>
     308:	860202e0 	lh	v0,736(s0)
     30c:	c6100060 	lwc1	$f16,96(s0)
     310:	4614803e 	c.le.s	$f16,$f20
     314:	00000000 	nop
     318:	45020003 	bc1fl	328 <func_80B18CC4+0xe4>
     31c:	860202e0 	lh	v0,736(s0)
     320:	e6140060 	swc1	$f20,96(s0)
     324:	860202e0 	lh	v0,736(s0)
     328:	18400003 	blez	v0,338 <func_80B18CC4+0xf4>
     32c:	2449ffff 	addiu	t1,v0,-1
     330:	10000010 	b	374 <func_80B18CC4+0x130>
     334:	a60902e0 	sh	t1,736(s0)
     338:	c6120090 	lwc1	$f18,144(s0)
     33c:	44812000 	mtc1	at,$f4
     340:	3c0142a0 	lui	at,0x42a0
     344:	4604903c 	c.lt.s	$f18,$f4
     348:	00000000 	nop
     34c:	4502000a 	bc1fl	378 <func_80B18CC4+0x134>
     350:	8fbf002c 	lw	ra,44(sp)
     354:	44813000 	mtc1	at,$f6
     358:	c6080094 	lwc1	$f8,148(s0)
     35c:	4606403e 	c.le.s	$f8,$f6
     360:	00000000 	nop
     364:	45020004 	bc1fl	378 <func_80B18CC4+0x134>
     368:	8fbf002c 	lw	ra,44(sp)
     36c:	0c000000 	jal	0 <func_80B18A80>
     370:	02002025 	move	a0,s0
     374:	8fbf002c 	lw	ra,44(sp)
     378:	d7b40020 	ldc1	$f20,32(sp)
     37c:	8fb00028 	lw	s0,40(sp)
     380:	03e00008 	jr	ra
     384:	27bd0030 	addiu	sp,sp,48

00000388 <func_80B18E08>:
     388:	27bdffe8 	addiu	sp,sp,-24
     38c:	afbf0014 	sw	ra,20(sp)
     390:	00803025 	move	a2,a0
     394:	3c050600 	lui	a1,0x600
     398:	24a5083c 	addiu	a1,a1,2108
     39c:	afa60018 	sw	a2,24(sp)
     3a0:	0c000000 	jal	0 <func_80B18A80>
     3a4:	2484014c 	addiu	a0,a0,332
     3a8:	8fa60018 	lw	a2,24(sp)
     3ac:	240e0009 	li	t6,9
     3b0:	24040001 	li	a0,1
     3b4:	24050003 	li	a1,3
     3b8:	a0ce02bc 	sb	t6,700(a2)
     3bc:	0c000000 	jal	0 <func_80B18A80>
     3c0:	a4c002e0 	sh	zero,736(a2)
     3c4:	8fa40018 	lw	a0,24(sp)
     3c8:	44800000 	mtc1	zero,$f0
     3cc:	3c050000 	lui	a1,0x0
     3d0:	848f00b6 	lh	t7,182(a0)
     3d4:	24a50000 	addiu	a1,a1,0
     3d8:	a08202e2 	sb	v0,738(a0)
     3dc:	e4800068 	swc1	$f0,104(a0)
     3e0:	e4800060 	swc1	$f0,96(a0)
     3e4:	0c000000 	jal	0 <func_80B18A80>
     3e8:	a48f0032 	sh	t7,50(a0)
     3ec:	8fbf0014 	lw	ra,20(sp)
     3f0:	27bd0018 	addiu	sp,sp,24
     3f4:	03e00008 	jr	ra
     3f8:	00000000 	nop

000003fc <func_80B18E7C>:
     3fc:	27bdffa8 	addiu	sp,sp,-88
     400:	afb00028 	sw	s0,40(sp)
     404:	00808025 	move	s0,a0
     408:	afbf002c 	sw	ra,44(sp)
     40c:	2484014c 	addiu	a0,a0,332
     410:	afa5005c 	sw	a1,92(sp)
     414:	0c000000 	jal	0 <func_80B18A80>
     418:	afa40038 	sw	a0,56(sp)
     41c:	504000aa 	beqzl	v0,6c8 <func_80B18E7C+0x2cc>
     420:	860202e0 	lh	v0,736(s0)
     424:	860302e0 	lh	v1,736(s0)
     428:	24010001 	li	at,1
     42c:	10600009 	beqz	v1,454 <func_80B18E7C+0x58>
     430:	afa30050 	sw	v1,80(sp)
     434:	1061002e 	beq	v1,at,4f0 <func_80B18E7C+0xf4>
     438:	24010002 	li	at,2
     43c:	10610082 	beq	v1,at,648 <func_80B18E7C+0x24c>
     440:	24010003 	li	at,3
     444:	5061008e 	beql	v1,at,680 <func_80B18E7C+0x284>
     448:	44809000 	mtc1	zero,$f18
     44c:	10000096 	b	6a8 <func_80B18E7C+0x2ac>
     450:	8fb90050 	lw	t9,80(sp)
     454:	860f001c 	lh	t7,28(s0)
     458:	240e0001 	li	t6,1
     45c:	2401fffe 	li	at,-2
     460:	15e10004 	bne	t7,at,474 <func_80B18E7C+0x78>
     464:	a60e02e0 	sh	t6,736(s0)
     468:	96180088 	lhu	t8,136(s0)
     46c:	33190020 	andi	t9,t8,0x20
     470:	1720000d 	bnez	t9,4a8 <func_80B18E7C+0xac>
     474:	3c01c6fa 	lui	at,0xc6fa
     478:	44812000 	mtc1	at,$f4
     47c:	c6000080 	lwc1	$f0,128(s0)
     480:	02002025 	move	a0,s0
     484:	4600203c 	c.lt.s	$f4,$f0
     488:	00000000 	nop
     48c:	45000002 	bc1f	498 <func_80B18E7C+0x9c>
     490:	00000000 	nop
     494:	e6000028 	swc1	$f0,40(s0)
     498:	0c000000 	jal	0 <func_80B18A80>
     49c:	2405386c 	li	a1,14444
     4a0:	10000009 	b	4c8 <func_80B18E7C+0xcc>
     4a4:	3c014100 	lui	at,0x4100
     4a8:	c6060028 	lwc1	$f6,40(s0)
     4ac:	c6080084 	lwc1	$f8,132(s0)
     4b0:	02002025 	move	a0,s0
     4b4:	2405388e 	li	a1,14478
     4b8:	46083280 	add.s	$f10,$f6,$f8
     4bc:	0c000000 	jal	0 <func_80B18A80>
     4c0:	e60a0028 	swc1	$f10,40(s0)
     4c4:	3c014100 	lui	at,0x4100
     4c8:	44818000 	mtc1	at,$f16
     4cc:	3c01bf80 	lui	at,0xbf80
     4d0:	44819000 	mtc1	at,$f18
     4d4:	3c014080 	lui	at,0x4080
     4d8:	44812000 	mtc1	at,$f4
     4dc:	860302e0 	lh	v1,736(s0)
     4e0:	e6100060 	swc1	$f16,96(s0)
     4e4:	e612006c 	swc1	$f18,108(s0)
     4e8:	1000006e 	b	6a4 <func_80B18E7C+0x2a8>
     4ec:	e6040068 	swc1	$f4,104(s0)
     4f0:	8e080004 	lw	t0,4(s0)
     4f4:	96030088 	lhu	v1,136(s0)
     4f8:	3c010100 	lui	at,0x100
     4fc:	01014825 	or	t1,t0,at
     500:	306a0003 	andi	t2,v1,0x3
     504:	15400008 	bnez	t2,528 <func_80B18E7C+0x12c>
     508:	ae090004 	sw	t1,4(s0)
     50c:	860b001c 	lh	t3,28(s0)
     510:	2401fffe 	li	at,-2
     514:	306c0020 	andi	t4,v1,0x20
     518:	15610049 	bne	t3,at,640 <func_80B18E7C+0x244>
     51c:	00000000 	nop
     520:	11800047 	beqz	t4,640 <func_80B18E7C+0x244>
     524:	00000000 	nop
     528:	44803000 	mtc1	zero,$f6
     52c:	c6080060 	lwc1	$f8,96(s0)
     530:	4606403e 	c.le.s	$f8,$f6
     534:	00000000 	nop
     538:	45000041 	bc1f	640 <func_80B18E7C+0x244>
     53c:	00000000 	nop
     540:	860e001c 	lh	t6,28(s0)
     544:	240d0002 	li	t5,2
     548:	2401fffe 	li	at,-2
     54c:	15c10006 	bne	t6,at,568 <func_80B18E7C+0x16c>
     550:	a60d02e0 	sh	t5,736(s0)
     554:	960f0088 	lhu	t7,136(s0)
     558:	3c01c100 	lui	at,0xc100
     55c:	31f80020 	andi	t8,t7,0x20
     560:	5700000f 	bnezl	t8,5a0 <func_80B18E7C+0x1a4>
     564:	c6060060 	lwc1	$f6,96(s0)
     568:	3c01c6fa 	lui	at,0xc6fa
     56c:	44815000 	mtc1	at,$f10
     570:	c6000080 	lwc1	$f0,128(s0)
     574:	44808000 	mtc1	zero,$f16
     578:	44809000 	mtc1	zero,$f18
     57c:	4600503c 	c.lt.s	$f10,$f0
     580:	00000000 	nop
     584:	45020003 	bc1fl	594 <func_80B18E7C+0x198>
     588:	e6100060 	swc1	$f16,96(s0)
     58c:	e6000028 	swc1	$f0,40(s0)
     590:	e6100060 	swc1	$f16,96(s0)
     594:	10000028 	b	638 <func_80B18E7C+0x23c>
     598:	e6120068 	swc1	$f18,104(s0)
     59c:	c6060060 	lwc1	$f6,96(s0)
     5a0:	44814000 	mtc1	at,$f8
     5a4:	44802000 	mtc1	zero,$f4
     5a8:	4608303c 	c.lt.s	$f6,$f8
     5ac:	e604006c 	swc1	$f4,108(s0)
     5b0:	4502001e 	bc1fl	62c <func_80B18E7C+0x230>
     5b4:	44805000 	mtc1	zero,$f10
     5b8:	8e080024 	lw	t0,36(s0)
     5bc:	27a50044 	addiu	a1,sp,68
     5c0:	3c013f40 	lui	at,0x3f40
     5c4:	aca80000 	sw	t0,0(a1)
     5c8:	8e190028 	lw	t9,40(s0)
     5cc:	44813000 	mtc1	at,$f6
     5d0:	00003025 	move	a2,zero
     5d4:	acb90004 	sw	t9,4(a1)
     5d8:	8e08002c 	lw	t0,44(s0)
     5dc:	240701f4 	li	a3,500
     5e0:	aca80008 	sw	t0,8(a1)
     5e4:	c7aa0048 	lwc1	$f10,72(sp)
     5e8:	c6100084 	lwc1	$f16,132(s0)
     5ec:	46105480 	add.s	$f18,$f10,$f16
     5f0:	e7b20048 	swc1	$f18,72(sp)
     5f4:	c6040060 	lwc1	$f4,96(s0)
     5f8:	860902e0 	lh	t1,736(s0)
     5fc:	46062202 	mul.s	$f8,$f4,$f6
     600:	252a0001 	addiu	t2,t1,1
     604:	a60a02e0 	sh	t2,736(s0)
     608:	860b02e0 	lh	t3,736(s0)
     60c:	e6080060 	swc1	$f8,96(s0)
     610:	afa00010 	sw	zero,16(sp)
     614:	8fa4005c 	lw	a0,92(sp)
     618:	0c000000 	jal	0 <func_80B18A80>
     61c:	afab0050 	sw	t3,80(sp)
     620:	10000006 	b	63c <func_80B18E7C+0x240>
     624:	860c00b6 	lh	t4,182(s0)
     628:	44805000 	mtc1	zero,$f10
     62c:	44808000 	mtc1	zero,$f16
     630:	e60a0060 	swc1	$f10,96(s0)
     634:	e6100068 	swc1	$f16,104(s0)
     638:	860c00b6 	lh	t4,182(s0)
     63c:	a60c0032 	sh	t4,50(s0)
     640:	10000018 	b	6a4 <func_80B18E7C+0x2a8>
     644:	860302e0 	lh	v1,736(s0)
     648:	920202e2 	lbu	v0,738(s0)
     64c:	10400007 	beqz	v0,66c <func_80B18E7C+0x270>
     650:	244dffff 	addiu	t5,v0,-1
     654:	920e02f8 	lbu	t6,760(s0)
     658:	a20d02e2 	sb	t5,738(s0)
     65c:	a60002e0 	sh	zero,736(s0)
     660:	31cffffd 	andi	t7,t6,0xfffd
     664:	10000003 	b	674 <func_80B18E7C+0x278>
     668:	a20f02f8 	sb	t7,760(s0)
     66c:	0c000000 	jal	0 <func_80B18A80>
     670:	02002025 	move	a0,s0
     674:	1000000b 	b	6a4 <func_80B18E7C+0x2a8>
     678:	860302e0 	lh	v1,736(s0)
     67c:	44809000 	mtc1	zero,$f18
     680:	c6040084 	lwc1	$f4,132(s0)
     684:	24180002 	li	t8,2
     688:	46049032 	c.eq.s	$f18,$f4
     68c:	00000000 	nop
     690:	45020005 	bc1fl	6a8 <func_80B18E7C+0x2ac>
     694:	8fb90050 	lw	t9,80(sp)
     698:	a61802e0 	sh	t8,736(s0)
     69c:	860302e0 	lh	v1,736(s0)
     6a0:	afa30050 	sw	v1,80(sp)
     6a4:	8fb90050 	lw	t9,80(sp)
     6a8:	8fa40038 	lw	a0,56(sp)
     6ac:	00034080 	sll	t0,v1,0x2
     6b0:	13230004 	beq	t9,v1,6c4 <func_80B18E7C+0x2c8>
     6b4:	3c050000 	lui	a1,0x0
     6b8:	00a82821 	addu	a1,a1,t0
     6bc:	0c000000 	jal	0 <func_80B18A80>
     6c0:	8ca50000 	lw	a1,0(a1)
     6c4:	860202e0 	lh	v0,736(s0)
     6c8:	26040032 	addiu	a0,s0,50
     6cc:	24060001 	li	a2,1
     6d0:	1040000b 	beqz	v0,700 <func_80B18E7C+0x304>
     6d4:	240703e8 	li	a3,1000
     6d8:	24010001 	li	at,1
     6dc:	1041002d 	beq	v0,at,794 <func_80B18E7C+0x398>
     6e0:	24010002 	li	at,2
     6e4:	1041006f 	beq	v0,at,8a4 <func_80B18E7C+0x4a8>
     6e8:	26040032 	addiu	a0,s0,50
     6ec:	24010003 	li	at,3
     6f0:	10410073 	beq	v0,at,8c0 <func_80B18E7C+0x4c4>
     6f4:	26040060 	addiu	a0,s0,96
     6f8:	1000008a 	b	924 <func_80B18E7C+0x528>
     6fc:	96030088 	lhu	v1,136(s0)
     700:	8605008a 	lh	a1,138(s0)
     704:	0c000000 	jal	0 <func_80B18A80>
     708:	afa00010 	sw	zero,16(sp)
     70c:	86090032 	lh	t1,50(s0)
     710:	3c014396 	lui	at,0x4396
     714:	44813000 	mtc1	at,$f6
     718:	c6080090 	lwc1	$f8,144(s0)
     71c:	a60900b6 	sh	t1,182(s0)
     720:	860b00b6 	lh	t3,182(s0)
     724:	860a008a 	lh	t2,138(s0)
     728:	4608303c 	c.lt.s	$f6,$f8
     72c:	3c0142a0 	lui	at,0x42a0
     730:	014b1823 	subu	v1,t2,t3
     734:	00031c00 	sll	v1,v1,0x10
     738:	4500000b 	bc1f	768 <func_80B18E7C+0x36c>
     73c:	00031c03 	sra	v1,v1,0x10
     740:	44815000 	mtc1	at,$f10
     744:	c6100094 	lwc1	$f16,148(s0)
     748:	4610503c 	c.lt.s	$f10,$f16
     74c:	00000000 	nop
     750:	45000005 	bc1f	768 <func_80B18E7C+0x36c>
     754:	00000000 	nop
     758:	0c000000 	jal	0 <func_80B18A80>
     75c:	02002025 	move	a0,s0
     760:	1000000a 	b	78c <func_80B18E7C+0x390>
     764:	00000000 	nop
     768:	04600003 	bltz	v1,778 <func_80B18E7C+0x37c>
     76c:	00031023 	negu	v0,v1
     770:	10000001 	b	778 <func_80B18E7C+0x37c>
     774:	00601025 	move	v0,v1
     778:	28412328 	slti	at,v0,9000
     77c:	14200003 	bnez	at,78c <func_80B18E7C+0x390>
     780:	00000000 	nop
     784:	0c000000 	jal	0 <func_80B18A80>
     788:	02002025 	move	a0,s0
     78c:	10000065 	b	924 <func_80B18E7C+0x528>
     790:	96030088 	lhu	v1,136(s0)
     794:	3c0140a0 	lui	at,0x40a0
     798:	44812000 	mtc1	at,$f4
     79c:	c6120060 	lwc1	$f18,96(s0)
     7a0:	4612203e 	c.le.s	$f4,$f18
     7a4:	00000000 	nop
     7a8:	45020012 	bc1fl	7f4 <func_80B18E7C+0x3f8>
     7ac:	920202f8 	lbu	v0,760(s0)
     7b0:	960c0088 	lhu	t4,136(s0)
     7b4:	8fa4005c 	lw	a0,92(sp)
     7b8:	318d0001 	andi	t5,t4,0x1
     7bc:	51a0000d 	beqzl	t5,7f4 <func_80B18E7C+0x3f8>
     7c0:	920202f8 	lbu	v0,760(s0)
     7c4:	0c000000 	jal	0 <func_80B18A80>
     7c8:	26050348 	addiu	a1,s0,840
     7cc:	8fa4005c 	lw	a0,92(sp)
     7d0:	0c000000 	jal	0 <func_80B18A80>
     7d4:	26050354 	addiu	a1,s0,852
     7d8:	8fa4005c 	lw	a0,92(sp)
     7dc:	0c000000 	jal	0 <func_80B18A80>
     7e0:	26050360 	addiu	a1,s0,864
     7e4:	8fa4005c 	lw	a0,92(sp)
     7e8:	0c000000 	jal	0 <func_80B18A80>
     7ec:	2605036c 	addiu	a1,s0,876
     7f0:	920202f8 	lbu	v0,760(s0)
     7f4:	8fb9005c 	lw	t9,92(sp)
     7f8:	3c050600 	lui	a1,0x600
     7fc:	304e0002 	andi	t6,v0,0x2
     800:	15c0000c 	bnez	t6,834 <func_80B18E7C+0x438>
     804:	3048fffd 	andi	t0,v0,0xfffd
     808:	8e0f0004 	lw	t7,4(s0)
     80c:	3c010001 	lui	at,0x1
     810:	8fa4005c 	lw	a0,92(sp)
     814:	31f80040 	andi	t8,t7,0x40
     818:	13000006 	beqz	t8,834 <func_80B18E7C+0x438>
     81c:	34211e60 	ori	at,at,0x1e60
     820:	00812821 	addu	a1,a0,at
     824:	0c000000 	jal	0 <func_80B18A80>
     828:	260602e8 	addiu	a2,s0,744
     82c:	1000001b 	b	89c <func_80B18E7C+0x4a0>
     830:	00000000 	nop
     834:	8f271c44 	lw	a3,7236(t9)
     838:	a20802f8 	sb	t0,760(s0)
     83c:	8fa40038 	lw	a0,56(sp)
     840:	24a512e4 	addiu	a1,a1,4836
     844:	3c064080 	lui	a2,0x4080
     848:	0c000000 	jal	0 <func_80B18A80>
     84c:	afa70040 	sw	a3,64(sp)
     850:	8fa70040 	lw	a3,64(sp)
     854:	8e0a02ec 	lw	t2,748(s0)
     858:	8609008a 	lh	t1,138(s0)
     85c:	3c01c0c0 	lui	at,0xc0c0
     860:	44819000 	mtc1	at,$f18
     864:	a6090032 	sh	t1,50(s0)
     868:	14ea0008 	bne	a3,t2,88c <func_80B18E7C+0x490>
     86c:	e6120068 	swc1	$f18,104(s0)
     870:	920b02f8 	lbu	t3,760(s0)
     874:	00e02025 	move	a0,a3
     878:	316c0004 	andi	t4,t3,0x4
     87c:	15800003 	bnez	t4,88c <func_80B18E7C+0x490>
     880:	00000000 	nop
     884:	0c000000 	jal	0 <func_80B18A80>
     888:	2405083e 	li	a1,2110
     88c:	3c050000 	lui	a1,0x0
     890:	24a50000 	addiu	a1,a1,0
     894:	0c000000 	jal	0 <func_80B18A80>
     898:	02002025 	move	a0,s0
     89c:	10000021 	b	924 <func_80B18E7C+0x528>
     8a0:	96030088 	lhu	v1,136(s0)
     8a4:	8605008a 	lh	a1,138(s0)
     8a8:	afa00010 	sw	zero,16(sp)
     8ac:	24060001 	li	a2,1
     8b0:	0c000000 	jal	0 <func_80B18A80>
     8b4:	240705dc 	li	a3,1500
     8b8:	1000001a 	b	924 <func_80B18E7C+0x528>
     8bc:	96030088 	lhu	v1,136(s0)
     8c0:	44800000 	mtc1	zero,$f0
     8c4:	3c063f80 	lui	a2,0x3f80
     8c8:	3c074000 	lui	a3,0x4000
     8cc:	44050000 	mfc1	a1,$f0
     8d0:	0c000000 	jal	0 <func_80B18A80>
     8d4:	e7a00010 	swc1	$f0,16(sp)
     8d8:	44800000 	mtc1	zero,$f0
     8dc:	26040068 	addiu	a0,s0,104
     8e0:	3c063f80 	lui	a2,0x3f80
     8e4:	44050000 	mfc1	a1,$f0
     8e8:	3c073f00 	lui	a3,0x3f00
     8ec:	0c000000 	jal	0 <func_80B18A80>
     8f0:	e7a00010 	swc1	$f0,16(sp)
     8f4:	c6080028 	lwc1	$f8,40(s0)
     8f8:	c60a0084 	lwc1	$f10,132(s0)
     8fc:	44809000 	mtc1	zero,$f18
     900:	26040028 	addiu	a0,s0,40
     904:	460a4400 	add.s	$f16,$f8,$f10
     908:	3c063f80 	lui	a2,0x3f80
     90c:	3c074000 	lui	a3,0x4000
     910:	e7b20010 	swc1	$f18,16(sp)
     914:	44058000 	mfc1	a1,$f16
     918:	0c000000 	jal	0 <func_80B18A80>
     91c:	00000000 	nop
     920:	96030088 	lhu	v1,136(s0)
     924:	306d0002 	andi	t5,v1,0x2
     928:	11a00035 	beqz	t5,a00 <func_80B18E7C+0x604>
     92c:	306e0020 	andi	t6,v1,0x20
     930:	15c00033 	bnez	t6,a00 <func_80B18E7C+0x604>
     934:	8fa4005c 	lw	a0,92(sp)
     938:	240f0050 	li	t7,80
     93c:	2418000f 	li	t8,15
     940:	24190001 	li	t9,1
     944:	26080354 	addiu	t0,s0,852
     948:	26090360 	addiu	t1,s0,864
     94c:	260a036c 	addiu	t2,s0,876
     950:	afaa0030 	sw	t2,48(sp)
     954:	afa90034 	sw	t1,52(sp)
     958:	afa80038 	sw	t0,56(sp)
     95c:	afb90018 	sw	t9,24(sp)
     960:	afb80014 	sw	t8,20(sp)
     964:	afaf0010 	sw	t7,16(sp)
     968:	26050348 	addiu	a1,s0,840
     96c:	3c063f80 	lui	a2,0x3f80
     970:	0c000000 	jal	0 <func_80B18A80>
     974:	24070002 	li	a3,2
     978:	240b0050 	li	t3,80
     97c:	240c000f 	li	t4,15
     980:	240d0001 	li	t5,1
     984:	afad0018 	sw	t5,24(sp)
     988:	afac0014 	sw	t4,20(sp)
     98c:	afab0010 	sw	t3,16(sp)
     990:	8fa4005c 	lw	a0,92(sp)
     994:	8fa50038 	lw	a1,56(sp)
     998:	3c063f80 	lui	a2,0x3f80
     99c:	0c000000 	jal	0 <func_80B18A80>
     9a0:	24070002 	li	a3,2
     9a4:	240e0050 	li	t6,80
     9a8:	240f000f 	li	t7,15
     9ac:	24180001 	li	t8,1
     9b0:	afb80018 	sw	t8,24(sp)
     9b4:	afaf0014 	sw	t7,20(sp)
     9b8:	afae0010 	sw	t6,16(sp)
     9bc:	8fa4005c 	lw	a0,92(sp)
     9c0:	8fa50034 	lw	a1,52(sp)
     9c4:	3c063f80 	lui	a2,0x3f80
     9c8:	0c000000 	jal	0 <func_80B18A80>
     9cc:	24070002 	li	a3,2
     9d0:	24190050 	li	t9,80
     9d4:	2408000f 	li	t0,15
     9d8:	24090001 	li	t1,1
     9dc:	afa90018 	sw	t1,24(sp)
     9e0:	afa80014 	sw	t0,20(sp)
     9e4:	afb90010 	sw	t9,16(sp)
     9e8:	8fa4005c 	lw	a0,92(sp)
     9ec:	8fa50030 	lw	a1,48(sp)
     9f0:	3c063f80 	lui	a2,0x3f80
     9f4:	0c000000 	jal	0 <func_80B18A80>
     9f8:	24070002 	li	a3,2
     9fc:	96030088 	lhu	v1,136(s0)
     a00:	860a001c 	lh	t2,28(s0)
     a04:	2401fffe 	li	at,-2
     a08:	306b0040 	andi	t3,v1,0x40
     a0c:	1541001a 	bne	t2,at,a78 <func_80B18E7C+0x67c>
     a10:	30780002 	andi	t8,v1,0x2
     a14:	11600012 	beqz	t3,a60 <func_80B18E7C+0x664>
     a18:	306f0002 	andi	t7,v1,0x2
     a1c:	860c02e0 	lh	t4,736(s0)
     a20:	44802000 	mtc1	zero,$f4
     a24:	24010003 	li	at,3
     a28:	15810006 	bne	t4,at,a44 <func_80B18E7C+0x648>
     a2c:	e6040068 	swc1	$f4,104(s0)
     a30:	02002025 	move	a0,s0
     a34:	0c000000 	jal	0 <func_80B18A80>
     a38:	2405388a 	li	a1,14474
     a3c:	10000005 	b	a54 <func_80B18E7C+0x658>
     a40:	960d0088 	lhu	t5,136(s0)
     a44:	02002025 	move	a0,s0
     a48:	0c000000 	jal	0 <func_80B18A80>
     a4c:	2405388f 	li	a1,14479
     a50:	960d0088 	lhu	t5,136(s0)
     a54:	31aeffbf 	andi	t6,t5,0xffbf
     a58:	1000000d 	b	a90 <func_80B18E7C+0x694>
     a5c:	a60e0088 	sh	t6,136(s0)
     a60:	11e0000b 	beqz	t7,a90 <func_80B18E7C+0x694>
     a64:	02002025 	move	a0,s0
     a68:	0c000000 	jal	0 <func_80B18A80>
     a6c:	2405387b 	li	a1,14459
     a70:	10000008 	b	a94 <func_80B18E7C+0x698>
     a74:	8fbf002c 	lw	ra,44(sp)
     a78:	13000005 	beqz	t8,a90 <func_80B18E7C+0x694>
     a7c:	02002025 	move	a0,s0
     a80:	44803000 	mtc1	zero,$f6
     a84:	2405387b 	li	a1,14459
     a88:	0c000000 	jal	0 <func_80B18A80>
     a8c:	e6060068 	swc1	$f6,104(s0)
     a90:	8fbf002c 	lw	ra,44(sp)
     a94:	8fb00028 	lw	s0,40(sp)
     a98:	27bd0058 	addiu	sp,sp,88
     a9c:	03e00008 	jr	ra
     aa0:	00000000 	nop

00000aa4 <func_80B19524>:
     aa4:	27bdffe8 	addiu	sp,sp,-24
     aa8:	afbf0014 	sw	ra,20(sp)
     aac:	00803025 	move	a2,a0
     ab0:	3c050600 	lui	a1,0x600
     ab4:	24a50a14 	addiu	a1,a1,2580
     ab8:	afa60018 	sw	a2,24(sp)
     abc:	0c000000 	jal	0 <func_80B18A80>
     ac0:	2484014c 	addiu	a0,a0,332
     ac4:	8fa60018 	lw	a2,24(sp)
     ac8:	240e000a 	li	t6,10
     acc:	3c050000 	lui	a1,0x0
     ad0:	94c20088 	lhu	v0,136(a2)
     ad4:	a0ce02bc 	sb	t6,700(a2)
     ad8:	00c02025 	move	a0,a2
     adc:	304f0003 	andi	t7,v0,0x3
     ae0:	55e00009 	bnezl	t7,b08 <func_80B19524+0x64>
     ae4:	44800000 	mtc1	zero,$f0
     ae8:	84d8001c 	lh	t8,28(a2)
     aec:	2401fffe 	li	at,-2
     af0:	30590020 	andi	t9,v0,0x20
     af4:	1701000c 	bne	t8,at,b28 <func_80B19524+0x84>
     af8:	00000000 	nop
     afc:	1320000a 	beqz	t9,b28 <func_80B19524+0x84>
     b00:	00000000 	nop
     b04:	44800000 	mtc1	zero,$f0
     b08:	c4c40060 	lwc1	$f4,96(a2)
     b0c:	4600203e 	c.le.s	$f4,$f0
     b10:	00000000 	nop
     b14:	45000004 	bc1f	b28 <func_80B19524+0x84>
     b18:	00000000 	nop
     b1c:	e4c0006c 	swc1	$f0,108(a2)
     b20:	e4c00060 	swc1	$f0,96(a2)
     b24:	e4c00068 	swc1	$f0,104(a2)
     b28:	0c000000 	jal	0 <func_80B18A80>
     b2c:	24a50000 	addiu	a1,a1,0
     b30:	8fbf0014 	lw	ra,20(sp)
     b34:	27bd0018 	addiu	sp,sp,24
     b38:	03e00008 	jr	ra
     b3c:	00000000 	nop

00000b40 <func_80B195C0>:
     b40:	27bdffe0 	addiu	sp,sp,-32
     b44:	afbf001c 	sw	ra,28(sp)
     b48:	afb00018 	sw	s0,24(sp)
     b4c:	94820088 	lhu	v0,136(a0)
     b50:	00808025 	move	s0,a0
     b54:	00a03025 	move	a2,a1
     b58:	304e0003 	andi	t6,v0,0x3
     b5c:	55c00009 	bnezl	t6,b84 <func_80B195C0+0x44>
     b60:	44800000 	mtc1	zero,$f0
     b64:	848f001c 	lh	t7,28(a0)
     b68:	2401fffe 	li	at,-2
     b6c:	30580020 	andi	t8,v0,0x20
     b70:	55e1000d 	bnel	t7,at,ba8 <func_80B195C0+0x68>
     b74:	8619001c 	lh	t9,28(s0)
     b78:	5300000b 	beqzl	t8,ba8 <func_80B195C0+0x68>
     b7c:	8619001c 	lh	t9,28(s0)
     b80:	44800000 	mtc1	zero,$f0
     b84:	c6040060 	lwc1	$f4,96(s0)
     b88:	4600203e 	c.le.s	$f4,$f0
     b8c:	00000000 	nop
     b90:	45020005 	bc1fl	ba8 <func_80B195C0+0x68>
     b94:	8619001c 	lh	t9,28(s0)
     b98:	e600006c 	swc1	$f0,108(s0)
     b9c:	e6000060 	swc1	$f0,96(s0)
     ba0:	e6000068 	swc1	$f0,104(s0)
     ba4:	8619001c 	lh	t9,28(s0)
     ba8:	2401fffe 	li	at,-2
     bac:	02002025 	move	a0,s0
     bb0:	17210009 	bne	t9,at,bd8 <func_80B195C0+0x98>
     bb4:	00000000 	nop
     bb8:	96080088 	lhu	t0,136(s0)
     bbc:	31090020 	andi	t1,t0,0x20
     bc0:	11200005 	beqz	t1,bd8 <func_80B195C0+0x98>
     bc4:	00000000 	nop
     bc8:	c6060028 	lwc1	$f6,40(s0)
     bcc:	c6080084 	lwc1	$f8,132(s0)
     bd0:	46083280 	add.s	$f10,$f6,$f8
     bd4:	e60a0028 	swc1	$f10,40(s0)
     bd8:	0c000000 	jal	0 <func_80B18A80>
     bdc:	8cc51c44 	lw	a1,7236(a2)
     be0:	86040032 	lh	a0,50(s0)
     be4:	00441823 	subu	v1,v0,a0
     be8:	00031c00 	sll	v1,v1,0x10
     bec:	00031c03 	sra	v1,v1,0x10
     bf0:	58600013 	blezl	v1,c40 <func_80B195C0+0x100>
     bf4:	44839000 	mtc1	v1,$f18
     bf8:	44838000 	mtc1	v1,$f16
     bfc:	3c014228 	lui	at,0x4228
     c00:	44812000 	mtc1	at,$f4
     c04:	468084a0 	cvt.s.w	$f18,$f16
     c08:	3c014120 	lui	at,0x4120
     c0c:	44814000 	mtc1	at,$f8
     c10:	46049183 	div.s	$f6,$f18,$f4
     c14:	46083280 	add.s	$f10,$f6,$f8
     c18:	4600540d 	trunc.w.s	$f16,$f10
     c1c:	440c8000 	mfc1	t4,$f16
     c20:	00000000 	nop
     c24:	000c6840 	sll	t5,t4,0x1
     c28:	008d7021 	addu	t6,a0,t5
     c2c:	000c2c00 	sll	a1,t4,0x10
     c30:	00052c03 	sra	a1,a1,0x10
     c34:	10000011 	b	c7c <func_80B195C0+0x13c>
     c38:	a60e0032 	sh	t6,50(s0)
     c3c:	44839000 	mtc1	v1,$f18
     c40:	3c014228 	lui	at,0x4228
     c44:	44813000 	mtc1	at,$f6
     c48:	46809120 	cvt.s.w	$f4,$f18
     c4c:	3c014120 	lui	at,0x4120
     c50:	44815000 	mtc1	at,$f10
     c54:	46062203 	div.s	$f8,$f4,$f6
     c58:	460a4401 	sub.s	$f16,$f8,$f10
     c5c:	4600848d 	trunc.w.s	$f18,$f16
     c60:	44199000 	mfc1	t9,$f18
     c64:	00000000 	nop
     c68:	00194040 	sll	t0,t9,0x1
     c6c:	00884821 	addu	t1,a0,t0
     c70:	00192c00 	sll	a1,t9,0x10
     c74:	00052c03 	sra	a1,a1,0x10
     c78:	a6090032 	sh	t1,50(s0)
     c7c:	58600009 	blezl	v1,ca4 <func_80B195C0+0x164>
     c80:	44858000 	mtc1	a1,$f16
     c84:	44852000 	mtc1	a1,$f4
     c88:	3c010000 	lui	at,0x0
     c8c:	c4280000 	lwc1	$f8,0(at)
     c90:	468021a0 	cvt.s.w	$f6,$f4
     c94:	46083282 	mul.s	$f10,$f6,$f8
     c98:	10000007 	b	cb8 <func_80B195C0+0x178>
     c9c:	e60a0168 	swc1	$f10,360(s0)
     ca0:	44858000 	mtc1	a1,$f16
     ca4:	3c010000 	lui	at,0x0
     ca8:	c4240000 	lwc1	$f4,0(at)
     cac:	468084a0 	cvt.s.w	$f18,$f16
     cb0:	46049182 	mul.s	$f6,$f18,$f4
     cb4:	e6060168 	swc1	$f6,360(s0)
     cb8:	0c000000 	jal	0 <func_80B18A80>
     cbc:	2604014c 	addiu	a0,s0,332
     cc0:	c6080164 	lwc1	$f8,356(s0)
     cc4:	4600428d 	trunc.w.s	$f10,$f8
     cc8:	440d5000 	mfc1	t5,$f10
     ccc:	00000000 	nop
     cd0:	31ae0007 	andi	t6,t5,0x7
     cd4:	55c00012 	bnezl	t6,d20 <func_80B195C0+0x1e0>
     cd8:	3c014396 	lui	at,0x4396
     cdc:	860f001c 	lh	t7,28(s0)
     ce0:	2401fffe 	li	at,-2
     ce4:	02002025 	move	a0,s0
     ce8:	15e1000a 	bne	t7,at,d14 <func_80B195C0+0x1d4>
     cec:	00000000 	nop
     cf0:	96180088 	lhu	t8,136(s0)
     cf4:	24053835 	li	a1,14389
     cf8:	33190020 	andi	t9,t8,0x20
     cfc:	13200005 	beqz	t9,d14 <func_80B195C0+0x1d4>
     d00:	00000000 	nop
     d04:	0c000000 	jal	0 <func_80B18A80>
     d08:	02002025 	move	a0,s0
     d0c:	10000004 	b	d20 <func_80B195C0+0x1e0>
     d10:	3c014396 	lui	at,0x4396
     d14:	0c000000 	jal	0 <func_80B18A80>
     d18:	2405386f 	li	a1,14447
     d1c:	3c014396 	lui	at,0x4396
     d20:	44818000 	mtc1	at,$f16
     d24:	c6120090 	lwc1	$f18,144(s0)
     d28:	86080032 	lh	t0,50(s0)
     d2c:	3c0142a0 	lui	at,0x42a0
     d30:	4612803c 	c.lt.s	$f16,$f18
     d34:	02002025 	move	a0,s0
     d38:	a60800b6 	sh	t0,182(s0)
     d3c:	4500000b 	bc1f	d6c <func_80B195C0+0x22c>
     d40:	00000000 	nop
     d44:	44812000 	mtc1	at,$f4
     d48:	c6060094 	lwc1	$f6,148(s0)
     d4c:	4606203c 	c.lt.s	$f4,$f6
     d50:	00000000 	nop
     d54:	45000005 	bc1f	d6c <func_80B195C0+0x22c>
     d58:	00000000 	nop
     d5c:	0c000000 	jal	0 <func_80B18A80>
     d60:	02002025 	move	a0,s0
     d64:	10000019 	b	dcc <func_80B195C0+0x28c>
     d68:	8fbf001c 	lw	ra,28(sp)
     d6c:	0c000000 	jal	0 <func_80B18A80>
     d70:	24050e38 	li	a1,3640
     d74:	10400014 	beqz	v0,dc8 <func_80B195C0+0x288>
     d78:	3c014334 	lui	at,0x4334
     d7c:	44814000 	mtc1	at,$f8
     d80:	c60a0090 	lwc1	$f10,144(s0)
     d84:	3c0142a0 	lui	at,0x42a0
     d88:	4608503e 	c.le.s	$f10,$f8
     d8c:	00000000 	nop
     d90:	4500000b 	bc1f	dc0 <func_80B195C0+0x280>
     d94:	00000000 	nop
     d98:	44818000 	mtc1	at,$f16
     d9c:	c6120094 	lwc1	$f18,148(s0)
     da0:	4610903e 	c.le.s	$f18,$f16
     da4:	00000000 	nop
     da8:	45000005 	bc1f	dc0 <func_80B195C0+0x280>
     dac:	00000000 	nop
     db0:	0c000000 	jal	0 <func_80B18A80>
     db4:	02002025 	move	a0,s0
     db8:	10000004 	b	dcc <func_80B195C0+0x28c>
     dbc:	8fbf001c 	lw	ra,28(sp)
     dc0:	0c000000 	jal	0 <func_80B18A80>
     dc4:	02002025 	move	a0,s0
     dc8:	8fbf001c 	lw	ra,28(sp)
     dcc:	8fb00018 	lw	s0,24(sp)
     dd0:	27bd0020 	addiu	sp,sp,32
     dd4:	03e00008 	jr	ra
     dd8:	00000000 	nop

00000ddc <func_80B1985C>:
     ddc:	27bdffe0 	addiu	sp,sp,-32
     de0:	afb00018 	sw	s0,24(sp)
     de4:	00808025 	move	s0,a0
     de8:	afbf001c 	sw	ra,28(sp)
     dec:	3c050600 	lui	a1,0x600
     df0:	24a50c70 	addiu	a1,a1,3184
     df4:	0c000000 	jal	0 <func_80B18A80>
     df8:	2484014c 	addiu	a0,a0,332
     dfc:	3c014120 	lui	at,0x4120
     e00:	44812000 	mtc1	at,$f4
     e04:	3c01bf80 	lui	at,0xbf80
     e08:	44813000 	mtc1	at,$f6
     e0c:	3c014080 	lui	at,0x4080
     e10:	44814000 	mtc1	at,$f8
     e14:	240e000c 	li	t6,12
     e18:	a20e02bc 	sb	t6,700(s0)
     e1c:	24040001 	li	a0,1
     e20:	24050003 	li	a1,3
     e24:	e6040060 	swc1	$f4,96(s0)
     e28:	e606006c 	swc1	$f6,108(s0)
     e2c:	0c000000 	jal	0 <func_80B18A80>
     e30:	e6080068 	swc1	$f8,104(s0)
     e34:	860f001c 	lh	t7,28(s0)
     e38:	2401fffe 	li	at,-2
     e3c:	a20202e2 	sb	v0,738(s0)
     e40:	15e1000a 	bne	t7,at,e6c <func_80B1985C+0x90>
     e44:	02002025 	move	a0,s0
     e48:	96180088 	lhu	t8,136(s0)
     e4c:	2405388e 	li	a1,14478
     e50:	33190020 	andi	t9,t8,0x20
     e54:	13200005 	beqz	t9,e6c <func_80B1985C+0x90>
     e58:	00000000 	nop
     e5c:	0c000000 	jal	0 <func_80B18A80>
     e60:	02002025 	move	a0,s0
     e64:	10000003 	b	e74 <func_80B1985C+0x98>
     e68:	00000000 	nop
     e6c:	0c000000 	jal	0 <func_80B18A80>
     e70:	2405386c 	li	a1,14444
     e74:	3c050000 	lui	a1,0x0
     e78:	24a50000 	addiu	a1,a1,0
     e7c:	0c000000 	jal	0 <func_80B18A80>
     e80:	02002025 	move	a0,s0
     e84:	8fbf001c 	lw	ra,28(sp)
     e88:	8fb00018 	lw	s0,24(sp)
     e8c:	27bd0020 	addiu	sp,sp,32
     e90:	03e00008 	jr	ra
     e94:	00000000 	nop

00000e98 <func_80B19918>:
     e98:	44800000 	mtc1	zero,$f0
     e9c:	27bdffb8 	addiu	sp,sp,-72
     ea0:	afb00028 	sw	s0,40(sp)
     ea4:	afa5004c 	sw	a1,76(sp)
     ea8:	00808025 	move	s0,a0
     eac:	afbf002c 	sw	ra,44(sp)
     eb0:	3c063dcc 	lui	a2,0x3dcc
     eb4:	44050000 	mfc1	a1,$f0
     eb8:	34c6cccd 	ori	a2,a2,0xcccd
     ebc:	24840068 	addiu	a0,a0,104
     ec0:	3c073f80 	lui	a3,0x3f80
     ec4:	0c000000 	jal	0 <func_80B18A80>
     ec8:	e7a00010 	swc1	$f0,16(sp)
     ecc:	0c000000 	jal	0 <func_80B18A80>
     ed0:	2604014c 	addiu	a0,s0,332
     ed4:	96020088 	lhu	v0,136(s0)
     ed8:	304e0042 	andi	t6,v0,0x42
     edc:	11c00037 	beqz	t6,fbc <func_80B19918+0x124>
     ee0:	304f0040 	andi	t7,v0,0x40
     ee4:	15e00032 	bnez	t7,fb0 <func_80B19918+0x118>
     ee8:	02002025 	move	a0,s0
     eec:	24180050 	li	t8,80
     ef0:	2419000f 	li	t9,15
     ef4:	24080001 	li	t0,1
     ef8:	afa80018 	sw	t0,24(sp)
     efc:	afb90014 	sw	t9,20(sp)
     f00:	afb80010 	sw	t8,16(sp)
     f04:	8fa4004c 	lw	a0,76(sp)
     f08:	26050348 	addiu	a1,s0,840
     f0c:	3c063f80 	lui	a2,0x3f80
     f10:	0c000000 	jal	0 <func_80B18A80>
     f14:	24070002 	li	a3,2
     f18:	24090050 	li	t1,80
     f1c:	240a000f 	li	t2,15
     f20:	240b0001 	li	t3,1
     f24:	afab0018 	sw	t3,24(sp)
     f28:	afaa0014 	sw	t2,20(sp)
     f2c:	afa90010 	sw	t1,16(sp)
     f30:	8fa4004c 	lw	a0,76(sp)
     f34:	26050354 	addiu	a1,s0,852
     f38:	3c063f80 	lui	a2,0x3f80
     f3c:	0c000000 	jal	0 <func_80B18A80>
     f40:	24070002 	li	a3,2
     f44:	240c0050 	li	t4,80
     f48:	240d000f 	li	t5,15
     f4c:	240e0001 	li	t6,1
     f50:	afae0018 	sw	t6,24(sp)
     f54:	afad0014 	sw	t5,20(sp)
     f58:	afac0010 	sw	t4,16(sp)
     f5c:	8fa4004c 	lw	a0,76(sp)
     f60:	26050360 	addiu	a1,s0,864
     f64:	3c063f80 	lui	a2,0x3f80
     f68:	0c000000 	jal	0 <func_80B18A80>
     f6c:	24070002 	li	a3,2
     f70:	240f0050 	li	t7,80
     f74:	2418000f 	li	t8,15
     f78:	24190001 	li	t9,1
     f7c:	afb90018 	sw	t9,24(sp)
     f80:	afb80014 	sw	t8,20(sp)
     f84:	afaf0010 	sw	t7,16(sp)
     f88:	8fa4004c 	lw	a0,76(sp)
     f8c:	2605036c 	addiu	a1,s0,876
     f90:	3c063f80 	lui	a2,0x3f80
     f94:	0c000000 	jal	0 <func_80B18A80>
     f98:	24070002 	li	a3,2
     f9c:	02002025 	move	a0,s0
     fa0:	0c000000 	jal	0 <func_80B18A80>
     fa4:	2405387b 	li	a1,14459
     fa8:	10000004 	b	fbc <func_80B19918+0x124>
     fac:	96020088 	lhu	v0,136(s0)
     fb0:	0c000000 	jal	0 <func_80B18A80>
     fb4:	2405388a 	li	a1,14474
     fb8:	96020088 	lhu	v0,136(s0)
     fbc:	30480002 	andi	t0,v0,0x2
     fc0:	55000009 	bnezl	t0,fe8 <func_80B19918+0x150>
     fc4:	920302e2 	lbu	v1,738(s0)
     fc8:	8609001c 	lh	t1,28(s0)
     fcc:	2401fffe 	li	at,-2
     fd0:	304a0040 	andi	t2,v0,0x40
     fd4:	5521000d 	bnel	t1,at,100c <func_80B19918+0x174>
     fd8:	304c0003 	andi	t4,v0,0x3
     fdc:	5140000b 	beqzl	t2,100c <func_80B19918+0x174>
     fe0:	304c0003 	andi	t4,v0,0x3
     fe4:	920302e2 	lbu	v1,738(s0)
     fe8:	10600004 	beqz	v1,ffc <func_80B19918+0x164>
     fec:	246bffff 	addiu	t3,v1,-1
     ff0:	a20b02e2 	sb	t3,738(s0)
     ff4:	10000004 	b	1008 <func_80B19918+0x170>
     ff8:	96020088 	lhu	v0,136(s0)
     ffc:	0c000000 	jal	0 <func_80B18A80>
    1000:	02002025 	move	a0,s0
    1004:	96020088 	lhu	v0,136(s0)
    1008:	304c0003 	andi	t4,v0,0x3
    100c:	55800009 	bnezl	t4,1034 <func_80B19918+0x19c>
    1010:	44800000 	mtc1	zero,$f0
    1014:	860d001c 	lh	t5,28(s0)
    1018:	2401fffe 	li	at,-2
    101c:	304e0060 	andi	t6,v0,0x60
    1020:	55a100b7 	bnel	t5,at,1300 <func_80B19918+0x468>
    1024:	8e0e0004 	lw	t6,4(s0)
    1028:	51c000b5 	beqzl	t6,1300 <func_80B19918+0x468>
    102c:	8e0e0004 	lw	t6,4(s0)
    1030:	44800000 	mtc1	zero,$f0
    1034:	c6040060 	lwc1	$f4,96(s0)
    1038:	260400b6 	addiu	a0,s0,182
    103c:	24060001 	li	a2,1
    1040:	4600203e 	c.le.s	$f4,$f0
    1044:	24070fa0 	li	a3,4000
    1048:	450200ad 	bc1fl	1300 <func_80B19918+0x468>
    104c:	8e0e0004 	lw	t6,4(s0)
    1050:	e6000068 	swc1	$f0,104(s0)
    1054:	8605008a 	lh	a1,138(s0)
    1058:	0c000000 	jal	0 <func_80B18A80>
    105c:	afa00010 	sw	zero,16(sp)
    1060:	8618001c 	lh	t8,28(s0)
    1064:	860f00b6 	lh	t7,182(s0)
    1068:	2403fffe 	li	v1,-2
    106c:	14780005 	bne	v1,t8,1084 <func_80B19918+0x1ec>
    1070:	a60f0032 	sh	t7,50(s0)
    1074:	96020088 	lhu	v0,136(s0)
    1078:	30590020 	andi	t9,v0,0x20
    107c:	1720000a 	bnez	t9,10a8 <func_80B19918+0x210>
    1080:	30480040 	andi	t0,v0,0x40
    1084:	3c01c6fa 	lui	at,0xc6fa
    1088:	44813000 	mtc1	at,$f6
    108c:	c6000080 	lwc1	$f0,128(s0)
    1090:	4600303c 	c.lt.s	$f6,$f0
    1094:	00000000 	nop
    1098:	45020038 	bc1fl	117c <func_80B19918+0x2e4>
    109c:	3c014396 	lui	at,0x4396
    10a0:	10000035 	b	1178 <func_80B19918+0x2e0>
    10a4:	e6000028 	swc1	$f0,40(s0)
    10a8:	1100001d 	beqz	t0,1120 <func_80B19918+0x288>
    10ac:	26040060 	addiu	a0,s0,96
    10b0:	8e0a0024 	lw	t2,36(s0)
    10b4:	27a5003c 	addiu	a1,sp,60
    10b8:	3c013f40 	lui	at,0x3f40
    10bc:	acaa0000 	sw	t2,0(a1)
    10c0:	8e090028 	lw	t1,40(s0)
    10c4:	44813000 	mtc1	at,$f6
    10c8:	44809000 	mtc1	zero,$f18
    10cc:	aca90004 	sw	t1,4(a1)
    10d0:	8e0a002c 	lw	t2,44(s0)
    10d4:	00003025 	move	a2,zero
    10d8:	240701f4 	li	a3,500
    10dc:	acaa0008 	sw	t2,8(a1)
    10e0:	960b0088 	lhu	t3,136(s0)
    10e4:	c60a0084 	lwc1	$f10,132(s0)
    10e8:	316cffbf 	andi	t4,t3,0xffbf
    10ec:	a60c0088 	sh	t4,136(s0)
    10f0:	c7a80040 	lwc1	$f8,64(sp)
    10f4:	460a4400 	add.s	$f16,$f8,$f10
    10f8:	e7b00040 	swc1	$f16,64(sp)
    10fc:	c6040060 	lwc1	$f4,96(s0)
    1100:	e612006c 	swc1	$f18,108(s0)
    1104:	46062202 	mul.s	$f8,$f4,$f6
    1108:	e6080060 	swc1	$f8,96(s0)
    110c:	afa00010 	sw	zero,16(sp)
    1110:	0c000000 	jal	0 <func_80B18A80>
    1114:	8fa4004c 	lw	a0,76(sp)
    1118:	1000009f 	b	1398 <func_80B19918+0x500>
    111c:	8fbf002c 	lw	ra,44(sp)
    1120:	44800000 	mtc1	zero,$f0
    1124:	3c063f80 	lui	a2,0x3f80
    1128:	3c074000 	lui	a3,0x4000
    112c:	44050000 	mfc1	a1,$f0
    1130:	0c000000 	jal	0 <func_80B18A80>
    1134:	e7a00010 	swc1	$f0,16(sp)
    1138:	c60a0028 	lwc1	$f10,40(s0)
    113c:	c6100084 	lwc1	$f16,132(s0)
    1140:	44802000 	mtc1	zero,$f4
    1144:	26040028 	addiu	a0,s0,40
    1148:	46105480 	add.s	$f18,$f10,$f16
    114c:	3c063f80 	lui	a2,0x3f80
    1150:	3c074000 	lui	a3,0x4000
    1154:	e7a40010 	swc1	$f4,16(sp)
    1158:	44059000 	mfc1	a1,$f18
    115c:	0c000000 	jal	0 <func_80B18A80>
    1160:	00000000 	nop
    1164:	44803000 	mtc1	zero,$f6
    1168:	c6080084 	lwc1	$f8,132(s0)
    116c:	46083032 	c.eq.s	$f6,$f8
    1170:	00000000 	nop
    1174:	45000087 	bc1f	1394 <func_80B19918+0x4fc>
    1178:	3c014396 	lui	at,0x4396
    117c:	44815000 	mtc1	at,$f10
    1180:	c6000090 	lwc1	$f0,144(s0)
    1184:	2403fffe 	li	v1,-2
    1188:	3c0142a0 	lui	at,0x42a0
    118c:	4600503c 	c.lt.s	$f10,$f0
    1190:	00000000 	nop
    1194:	4502000c 	bc1fl	11c8 <func_80B19918+0x330>
    1198:	3c014334 	lui	at,0x4334
    119c:	44818000 	mtc1	at,$f16
    11a0:	c6120094 	lwc1	$f18,148(s0)
    11a4:	4612803c 	c.lt.s	$f16,$f18
    11a8:	00000000 	nop
    11ac:	45020006 	bc1fl	11c8 <func_80B19918+0x330>
    11b0:	3c014334 	lui	at,0x4334
    11b4:	0c000000 	jal	0 <func_80B18A80>
    11b8:	02002025 	move	a0,s0
    11bc:	10000076 	b	1398 <func_80B19918+0x500>
    11c0:	8fbf002c 	lw	ra,44(sp)
    11c4:	3c014334 	lui	at,0x4334
    11c8:	44812000 	mtc1	at,$f4
    11cc:	3c0142a0 	lui	at,0x42a0
    11d0:	4604003e 	c.le.s	$f0,$f4
    11d4:	00000000 	nop
    11d8:	4502002c 	bc1fl	128c <func_80B19918+0x3f4>
    11dc:	3c014120 	lui	at,0x4120
    11e0:	44813000 	mtc1	at,$f6
    11e4:	c6080094 	lwc1	$f8,148(s0)
    11e8:	4606403e 	c.le.s	$f8,$f6
    11ec:	00000000 	nop
    11f0:	45020026 	bc1fl	128c <func_80B19918+0x3f4>
    11f4:	3c014120 	lui	at,0x4120
    11f8:	920d02e2 	lbu	t5,738(s0)
    11fc:	3c014120 	lui	at,0x4120
    1200:	5da00006 	bgtzl	t5,121c <func_80B19918+0x384>
    1204:	44815000 	mtc1	at,$f10
    1208:	0c000000 	jal	0 <func_80B18A80>
    120c:	02002025 	move	a0,s0
    1210:	10000061 	b	1398 <func_80B19918+0x500>
    1214:	8fbf002c 	lw	ra,44(sp)
    1218:	44815000 	mtc1	at,$f10
    121c:	8e0e0004 	lw	t6,4(s0)
    1220:	3c014080 	lui	at,0x4080
    1224:	44818000 	mtc1	at,$f16
    1228:	3c010100 	lui	at,0x100
    122c:	01c17825 	or	t7,t6,at
    1230:	8618001c 	lh	t8,28(s0)
    1234:	3c01bf80 	lui	at,0xbf80
    1238:	44819000 	mtc1	at,$f18
    123c:	ae0f0004 	sw	t7,4(s0)
    1240:	e60a0060 	swc1	$f10,96(s0)
    1244:	e6100068 	swc1	$f16,104(s0)
    1248:	1478000a 	bne	v1,t8,1274 <func_80B19918+0x3dc>
    124c:	e612006c 	swc1	$f18,108(s0)
    1250:	96190088 	lhu	t9,136(s0)
    1254:	02002025 	move	a0,s0
    1258:	33280020 	andi	t0,t9,0x20
    125c:	51000006 	beqzl	t0,1278 <func_80B19918+0x3e0>
    1260:	02002025 	move	a0,s0
    1264:	0c000000 	jal	0 <func_80B18A80>
    1268:	2405388e 	li	a1,14478
    126c:	1000004a 	b	1398 <func_80B19918+0x500>
    1270:	8fbf002c 	lw	ra,44(sp)
    1274:	02002025 	move	a0,s0
    1278:	0c000000 	jal	0 <func_80B18A80>
    127c:	2405386c 	li	a1,14444
    1280:	10000045 	b	1398 <func_80B19918+0x500>
    1284:	8fbf002c 	lw	ra,44(sp)
    1288:	3c014120 	lui	at,0x4120
    128c:	44812000 	mtc1	at,$f4
    1290:	8e090004 	lw	t1,4(s0)
    1294:	3c014080 	lui	at,0x4080
    1298:	44813000 	mtc1	at,$f6
    129c:	3c010100 	lui	at,0x100
    12a0:	01215025 	or	t2,t1,at
    12a4:	860b001c 	lh	t3,28(s0)
    12a8:	3c01bf80 	lui	at,0xbf80
    12ac:	44814000 	mtc1	at,$f8
    12b0:	ae0a0004 	sw	t2,4(s0)
    12b4:	e6040060 	swc1	$f4,96(s0)
    12b8:	e6060068 	swc1	$f6,104(s0)
    12bc:	146b000a 	bne	v1,t3,12e8 <func_80B19918+0x450>
    12c0:	e608006c 	swc1	$f8,108(s0)
    12c4:	960c0088 	lhu	t4,136(s0)
    12c8:	02002025 	move	a0,s0
    12cc:	318d0020 	andi	t5,t4,0x20
    12d0:	51a00006 	beqzl	t5,12ec <func_80B19918+0x454>
    12d4:	02002025 	move	a0,s0
    12d8:	0c000000 	jal	0 <func_80B18A80>
    12dc:	2405388e 	li	a1,14478
    12e0:	1000002d 	b	1398 <func_80B19918+0x500>
    12e4:	8fbf002c 	lw	ra,44(sp)
    12e8:	02002025 	move	a0,s0
    12ec:	0c000000 	jal	0 <func_80B18A80>
    12f0:	2405386c 	li	a1,14444
    12f4:	10000028 	b	1398 <func_80B19918+0x500>
    12f8:	8fbf002c 	lw	ra,44(sp)
    12fc:	8e0e0004 	lw	t6,4(s0)
    1300:	3c010100 	lui	at,0x100
    1304:	8605008a 	lh	a1,138(s0)
    1308:	01c17825 	or	t7,t6,at
    130c:	ae0f0004 	sw	t7,4(s0)
    1310:	afa00010 	sw	zero,16(sp)
    1314:	260400b6 	addiu	a0,s0,182
    1318:	24060001 	li	a2,1
    131c:	0c000000 	jal	0 <func_80B18A80>
    1320:	240703e8 	li	a3,1000
    1324:	3c0140c0 	lui	at,0x40c0
    1328:	44818000 	mtc1	at,$f16
    132c:	c60a0060 	lwc1	$f10,96(s0)
    1330:	460a803e 	c.le.s	$f16,$f10
    1334:	00000000 	nop
    1338:	45020017 	bc1fl	1398 <func_80B19918+0x500>
    133c:	8fbf002c 	lw	ra,44(sp)
    1340:	96180088 	lhu	t8,136(s0)
    1344:	8fa4004c 	lw	a0,76(sp)
    1348:	26050348 	addiu	a1,s0,840
    134c:	33190001 	andi	t9,t8,0x1
    1350:	13200010 	beqz	t9,1394 <func_80B19918+0x4fc>
    1354:	26080354 	addiu	t0,s0,852
    1358:	26090360 	addiu	t1,s0,864
    135c:	260a036c 	addiu	t2,s0,876
    1360:	afaa0030 	sw	t2,48(sp)
    1364:	afa90034 	sw	t1,52(sp)
    1368:	0c000000 	jal	0 <func_80B18A80>
    136c:	afa80038 	sw	t0,56(sp)
    1370:	8fa4004c 	lw	a0,76(sp)
    1374:	0c000000 	jal	0 <func_80B18A80>
    1378:	8fa50038 	lw	a1,56(sp)
    137c:	8fa4004c 	lw	a0,76(sp)
    1380:	0c000000 	jal	0 <func_80B18A80>
    1384:	8fa50034 	lw	a1,52(sp)
    1388:	8fa4004c 	lw	a0,76(sp)
    138c:	0c000000 	jal	0 <func_80B18A80>
    1390:	8fa50030 	lw	a1,48(sp)
    1394:	8fbf002c 	lw	ra,44(sp)
    1398:	8fb00028 	lw	s0,40(sp)
    139c:	27bd0048 	addiu	sp,sp,72
    13a0:	03e00008 	jr	ra
    13a4:	00000000 	nop

000013a8 <func_80B19E28>:
    13a8:	27bdffe8 	addiu	sp,sp,-24
    13ac:	afbf0014 	sw	ra,20(sp)
    13b0:	240e0003 	li	t6,3
    13b4:	00803825 	move	a3,a0
    13b8:	a08e02bc 	sb	t6,700(a0)
    13bc:	3c050600 	lui	a1,0x600
    13c0:	24a512e4 	addiu	a1,a1,4836
    13c4:	afa70018 	sw	a3,24(sp)
    13c8:	2484014c 	addiu	a0,a0,332
    13cc:	0c000000 	jal	0 <func_80B18A80>
    13d0:	3c064080 	lui	a2,0x4080
    13d4:	8fa40018 	lw	a0,24(sp)
    13d8:	3c01c0c0 	lui	at,0xc0c0
    13dc:	44812000 	mtc1	at,$f4
    13e0:	3c01bf80 	lui	at,0xbf80
    13e4:	44813000 	mtc1	at,$f6
    13e8:	848f008a 	lh	t7,138(a0)
    13ec:	3c050000 	lui	a1,0x0
    13f0:	24a50000 	addiu	a1,a1,0
    13f4:	e4840068 	swc1	$f4,104(a0)
    13f8:	a48f0032 	sh	t7,50(a0)
    13fc:	0c000000 	jal	0 <func_80B18A80>
    1400:	e486006c 	swc1	$f6,108(a0)
    1404:	8fbf0014 	lw	ra,20(sp)
    1408:	27bd0018 	addiu	sp,sp,24
    140c:	03e00008 	jr	ra
    1410:	00000000 	nop

00001414 <func_80B19E94>:
    1414:	44800000 	mtc1	zero,$f0
    1418:	27bdffd0 	addiu	sp,sp,-48
    141c:	afb00028 	sw	s0,40(sp)
    1420:	afa50034 	sw	a1,52(sp)
    1424:	00808025 	move	s0,a0
    1428:	afbf002c 	sw	ra,44(sp)
    142c:	44050000 	mfc1	a1,$f0
    1430:	24840068 	addiu	a0,a0,104
    1434:	3c063f80 	lui	a2,0x3f80
    1438:	3c073f00 	lui	a3,0x3f00
    143c:	0c000000 	jal	0 <func_80B18A80>
    1440:	e7a00010 	swc1	$f0,16(sp)
    1444:	96020088 	lhu	v0,136(s0)
    1448:	304e0003 	andi	t6,v0,0x3
    144c:	55c00009 	bnezl	t6,1474 <func_80B19E94+0x60>
    1450:	44801000 	mtc1	zero,$f2
    1454:	860f001c 	lh	t7,28(s0)
    1458:	2408fffe 	li	t0,-2
    145c:	30580020 	andi	t8,v0,0x20
    1460:	550f0023 	bnel	t0,t7,14f0 <func_80B19E94+0xdc>
    1464:	44801000 	mtc1	zero,$f2
    1468:	53000021 	beqzl	t8,14f0 <func_80B19E94+0xdc>
    146c:	44801000 	mtc1	zero,$f2
    1470:	44801000 	mtc1	zero,$f2
    1474:	c6040060 	lwc1	$f4,96(s0)
    1478:	2408fffe 	li	t0,-2
    147c:	4602203e 	c.le.s	$f4,$f2
    1480:	00000000 	nop
    1484:	4502001a 	bc1fl	14f0 <func_80B19E94+0xdc>
    1488:	44801000 	mtc1	zero,$f2
    148c:	8619001c 	lh	t9,28(s0)
    1490:	30490020 	andi	t1,v0,0x20
    1494:	3c01c6fa 	lui	at,0xc6fa
    1498:	55190004 	bnel	t0,t9,14ac <func_80B19E94+0x98>
    149c:	c6000080 	lwc1	$f0,128(s0)
    14a0:	5520000c 	bnezl	t1,14d4 <func_80B19E94+0xc0>
    14a4:	c6080028 	lwc1	$f8,40(s0)
    14a8:	c6000080 	lwc1	$f0,128(s0)
    14ac:	44813000 	mtc1	at,$f6
    14b0:	00000000 	nop
    14b4:	4600303c 	c.lt.s	$f6,$f0
    14b8:	00000000 	nop
    14bc:	4502000c 	bc1fl	14f0 <func_80B19E94+0xdc>
    14c0:	44801000 	mtc1	zero,$f2
    14c4:	e6000028 	swc1	$f0,40(s0)
    14c8:	10000008 	b	14ec <func_80B19E94+0xd8>
    14cc:	96020088 	lhu	v0,136(s0)
    14d0:	c6080028 	lwc1	$f8,40(s0)
    14d4:	c60a0084 	lwc1	$f10,132(s0)
    14d8:	e6020060 	swc1	$f2,96(s0)
    14dc:	e602006c 	swc1	$f2,108(s0)
    14e0:	460a4400 	add.s	$f16,$f8,$f10
    14e4:	96020088 	lhu	v0,136(s0)
    14e8:	e6100028 	swc1	$f16,40(s0)
    14ec:	44801000 	mtc1	zero,$f2
    14f0:	304a0042 	andi	t2,v0,0x42
    14f4:	1140003b 	beqz	t2,15e4 <func_80B19E94+0x1d0>
    14f8:	304b0040 	andi	t3,v0,0x40
    14fc:	15600033 	bnez	t3,15cc <func_80B19E94+0x1b8>
    1500:	304fffbf 	andi	t7,v0,0xffbf
    1504:	240c0050 	li	t4,80
    1508:	240d000f 	li	t5,15
    150c:	240e0001 	li	t6,1
    1510:	afae0018 	sw	t6,24(sp)
    1514:	afad0014 	sw	t5,20(sp)
    1518:	afac0010 	sw	t4,16(sp)
    151c:	8fa40034 	lw	a0,52(sp)
    1520:	26050348 	addiu	a1,s0,840
    1524:	3c063f80 	lui	a2,0x3f80
    1528:	0c000000 	jal	0 <func_80B18A80>
    152c:	24070002 	li	a3,2
    1530:	240f0050 	li	t7,80
    1534:	2418000f 	li	t8,15
    1538:	24190001 	li	t9,1
    153c:	afb90018 	sw	t9,24(sp)
    1540:	afb80014 	sw	t8,20(sp)
    1544:	afaf0010 	sw	t7,16(sp)
    1548:	8fa40034 	lw	a0,52(sp)
    154c:	26050354 	addiu	a1,s0,852
    1550:	3c063f80 	lui	a2,0x3f80
    1554:	0c000000 	jal	0 <func_80B18A80>
    1558:	24070002 	li	a3,2
    155c:	24090050 	li	t1,80
    1560:	240a000f 	li	t2,15
    1564:	240b0001 	li	t3,1
    1568:	afab0018 	sw	t3,24(sp)
    156c:	afaa0014 	sw	t2,20(sp)
    1570:	afa90010 	sw	t1,16(sp)
    1574:	8fa40034 	lw	a0,52(sp)
    1578:	26050360 	addiu	a1,s0,864
    157c:	3c063f80 	lui	a2,0x3f80
    1580:	0c000000 	jal	0 <func_80B18A80>
    1584:	24070002 	li	a3,2
    1588:	240c0050 	li	t4,80
    158c:	240d000f 	li	t5,15
    1590:	240e0001 	li	t6,1
    1594:	afae0018 	sw	t6,24(sp)
    1598:	afad0014 	sw	t5,20(sp)
    159c:	afac0010 	sw	t4,16(sp)
    15a0:	8fa40034 	lw	a0,52(sp)
    15a4:	2605036c 	addiu	a1,s0,876
    15a8:	3c063f80 	lui	a2,0x3f80
    15ac:	0c000000 	jal	0 <func_80B18A80>
    15b0:	24070002 	li	a3,2
    15b4:	02002025 	move	a0,s0
    15b8:	0c000000 	jal	0 <func_80B18A80>
    15bc:	2405387b 	li	a1,14459
    15c0:	44801000 	mtc1	zero,$f2
    15c4:	10000007 	b	15e4 <func_80B19E94+0x1d0>
    15c8:	2408fffe 	li	t0,-2
    15cc:	a60f0088 	sh	t7,136(s0)
    15d0:	02002025 	move	a0,s0
    15d4:	0c000000 	jal	0 <func_80B18A80>
    15d8:	2405388f 	li	a1,14479
    15dc:	44801000 	mtc1	zero,$f2
    15e0:	2408fffe 	li	t0,-2
    15e4:	c6120068 	lwc1	$f18,104(s0)
    15e8:	860300b6 	lh	v1,182(s0)
    15ec:	8618008a 	lh	t8,138(s0)
    15f0:	46121032 	c.eq.s	$f2,$f18
    15f4:	03032023 	subu	a0,t8,v1
    15f8:	00042400 	sll	a0,a0,0x10
    15fc:	45000054 	bc1f	1750 <func_80B19E94+0x33c>
    1600:	00042403 	sra	a0,a0,0x10
    1604:	96020088 	lhu	v0,136(s0)
    1608:	3c014396 	lui	at,0x4396
    160c:	30590001 	andi	t9,v0,0x1
    1610:	57200008 	bnezl	t9,1634 <func_80B19E94+0x220>
    1614:	c6000090 	lwc1	$f0,144(s0)
    1618:	8609001c 	lh	t1,28(s0)
    161c:	304a0020 	andi	t2,v0,0x20
    1620:	1509004b 	bne	t0,t1,1750 <func_80B19E94+0x33c>
    1624:	00000000 	nop
    1628:	11400049 	beqz	t2,1750 <func_80B19E94+0x33c>
    162c:	00000000 	nop
    1630:	c6000090 	lwc1	$f0,144(s0)
    1634:	44812000 	mtc1	at,$f4
    1638:	920b02f8 	lbu	t3,760(s0)
    163c:	a6030032 	sh	v1,50(s0)
    1640:	4600203c 	c.lt.s	$f4,$f0
    1644:	316cfffd 	andi	t4,t3,0xfffd
    1648:	a20c02f8 	sb	t4,760(s0)
    164c:	3c0142a0 	lui	at,0x42a0
    1650:	45020026 	bc1fl	16ec <func_80B19E94+0x2d8>
    1654:	3c014334 	lui	at,0x4334
    1658:	44813000 	mtc1	at,$f6
    165c:	c6080094 	lwc1	$f8,148(s0)
    1660:	4608303c 	c.lt.s	$f6,$f8
    1664:	00000000 	nop
    1668:	45020020 	bc1fl	16ec <func_80B19E94+0x2d8>
    166c:	3c014334 	lui	at,0x4334
    1670:	860200b4 	lh	v0,180(s0)
    1674:	04400003 	bltz	v0,1684 <func_80B19E94+0x270>
    1678:	00021823 	negu	v1,v0
    167c:	10000001 	b	1684 <func_80B19E94+0x270>
    1680:	00401825 	move	v1,v0
    1684:	28610fa0 	slti	at,v1,4000
    1688:	50200018 	beqzl	at,16ec <func_80B19E94+0x2d8>
    168c:	3c014334 	lui	at,0x4334
    1690:	860200b8 	lh	v0,184(s0)
    1694:	04400003 	bltz	v0,16a4 <func_80B19E94+0x290>
    1698:	00021823 	negu	v1,v0
    169c:	10000001 	b	16a4 <func_80B19E94+0x290>
    16a0:	00401825 	move	v1,v0
    16a4:	28610fa0 	slti	at,v1,4000
    16a8:	50200010 	beqzl	at,16ec <func_80B19E94+0x2d8>
    16ac:	3c014334 	lui	at,0x4334
    16b0:	96020088 	lhu	v0,136(s0)
    16b4:	304d0001 	andi	t5,v0,0x1
    16b8:	15a00007 	bnez	t5,16d8 <func_80B19E94+0x2c4>
    16bc:	00000000 	nop
    16c0:	860e001c 	lh	t6,28(s0)
    16c4:	304f0020 	andi	t7,v0,0x20
    16c8:	550e0008 	bnel	t0,t6,16ec <func_80B19E94+0x2d8>
    16cc:	3c014334 	lui	at,0x4334
    16d0:	51e00006 	beqzl	t7,16ec <func_80B19E94+0x2d8>
    16d4:	3c014334 	lui	at,0x4334
    16d8:	0c000000 	jal	0 <func_80B18A80>
    16dc:	02002025 	move	a0,s0
    16e0:	1000001b 	b	1750 <func_80B19E94+0x33c>
    16e4:	00000000 	nop
    16e8:	3c014334 	lui	at,0x4334
    16ec:	44815000 	mtc1	at,$f10
    16f0:	3c0142a0 	lui	at,0x42a0
    16f4:	460a003c 	c.lt.s	$f0,$f10
    16f8:	00000000 	nop
    16fc:	45000012 	bc1f	1748 <func_80B19E94+0x334>
    1700:	00000000 	nop
    1704:	44818000 	mtc1	at,$f16
    1708:	c6120094 	lwc1	$f18,148(s0)
    170c:	4610903e 	c.le.s	$f18,$f16
    1710:	00000000 	nop
    1714:	4500000c 	bc1f	1748 <func_80B19E94+0x334>
    1718:	00000000 	nop
    171c:	04800003 	bltz	a0,172c <func_80B19E94+0x318>
    1720:	00041823 	negu	v1,a0
    1724:	10000001 	b	172c <func_80B19E94+0x318>
    1728:	00801825 	move	v1,a0
    172c:	28611771 	slti	at,v1,6001
    1730:	10200005 	beqz	at,1748 <func_80B19E94+0x334>
    1734:	00000000 	nop
    1738:	0c000000 	jal	0 <func_80B18A80>
    173c:	02002025 	move	a0,s0
    1740:	10000003 	b	1750 <func_80B19E94+0x33c>
    1744:	00000000 	nop
    1748:	0c000000 	jal	0 <func_80B18A80>
    174c:	02002025 	move	a0,s0
    1750:	0c000000 	jal	0 <func_80B18A80>
    1754:	2604014c 	addiu	a0,s0,332
    1758:	8fbf002c 	lw	ra,44(sp)
    175c:	8fb00028 	lw	s0,40(sp)
    1760:	27bd0030 	addiu	sp,sp,48
    1764:	03e00008 	jr	ra
    1768:	00000000 	nop

0000176c <func_80B1A1EC>:
    176c:	27bdffd0 	addiu	sp,sp,-48
    1770:	afb00028 	sw	s0,40(sp)
    1774:	00808025 	move	s0,a0
    1778:	afbf002c 	sw	ra,44(sp)
    177c:	3c040600 	lui	a0,0x600
    1780:	0c000000 	jal	0 <func_80B18A80>
    1784:	248412e4 	addiu	a0,a0,4836
    1788:	44822000 	mtc1	v0,$f4
    178c:	44800000 	mtc1	zero,$f0
    1790:	3c014080 	lui	at,0x4080
    1794:	468021a0 	cvt.s.w	$f6,$f4
    1798:	44814000 	mtc1	at,$f8
    179c:	3c050600 	lui	a1,0x600
    17a0:	44060000 	mfc1	a2,$f0
    17a4:	44070000 	mfc1	a3,$f0
    17a8:	24a512e4 	addiu	a1,a1,4836
    17ac:	e7a60010 	swc1	$f6,16(sp)
    17b0:	2604014c 	addiu	a0,s0,332
    17b4:	afa00014 	sw	zero,20(sp)
    17b8:	0c000000 	jal	0 <func_80B18A80>
    17bc:	e7a80018 	swc1	$f8,24(sp)
    17c0:	3c01c0c0 	lui	at,0xc0c0
    17c4:	44815000 	mtc1	at,$f10
    17c8:	921802e4 	lbu	t8,740(s0)
    17cc:	860f008a 	lh	t7,138(s0)
    17d0:	240e0007 	li	t6,7
    17d4:	2401000f 	li	at,15
    17d8:	a20e02bc 	sb	t6,700(s0)
    17dc:	e60a0068 	swc1	$f10,104(s0)
    17e0:	17010003 	bne	t8,at,17f0 <func_80B1A1EC+0x84>
    17e4:	a60f0032 	sh	t7,50(s0)
    17e8:	24190030 	li	t9,48
    17ec:	a21902e3 	sb	t9,739(s0)
    17f0:	02002025 	move	a0,s0
    17f4:	0c000000 	jal	0 <func_80B18A80>
    17f8:	2405389e 	li	a1,14494
    17fc:	3c050000 	lui	a1,0x0
    1800:	24a50000 	addiu	a1,a1,0
    1804:	0c000000 	jal	0 <func_80B18A80>
    1808:	02002025 	move	a0,s0
    180c:	8fbf002c 	lw	ra,44(sp)
    1810:	8fb00028 	lw	s0,40(sp)
    1814:	27bd0030 	addiu	sp,sp,48
    1818:	03e00008 	jr	ra
    181c:	00000000 	nop

00001820 <func_80B1A2A0>:
    1820:	44800000 	mtc1	zero,$f0
    1824:	27bdffd0 	addiu	sp,sp,-48
    1828:	afb00028 	sw	s0,40(sp)
    182c:	afa50034 	sw	a1,52(sp)
    1830:	00808025 	move	s0,a0
    1834:	afbf002c 	sw	ra,44(sp)
    1838:	44050000 	mfc1	a1,$f0
    183c:	24840068 	addiu	a0,a0,104
    1840:	3c063f80 	lui	a2,0x3f80
    1844:	3c073f00 	lui	a3,0x3f00
    1848:	0c000000 	jal	0 <func_80B18A80>
    184c:	e7a00010 	swc1	$f0,16(sp)
    1850:	96020088 	lhu	v0,136(s0)
    1854:	304e0003 	andi	t6,v0,0x3
    1858:	55c00009 	bnezl	t6,1880 <func_80B1A2A0+0x60>
    185c:	44801000 	mtc1	zero,$f2
    1860:	860f001c 	lh	t7,28(s0)
    1864:	2408fffe 	li	t0,-2
    1868:	30580020 	andi	t8,v0,0x20
    186c:	550f0023 	bnel	t0,t7,18fc <func_80B1A2A0+0xdc>
    1870:	44801000 	mtc1	zero,$f2
    1874:	53000021 	beqzl	t8,18fc <func_80B1A2A0+0xdc>
    1878:	44801000 	mtc1	zero,$f2
    187c:	44801000 	mtc1	zero,$f2
    1880:	c6040060 	lwc1	$f4,96(s0)
    1884:	2408fffe 	li	t0,-2
    1888:	4602203e 	c.le.s	$f4,$f2
    188c:	00000000 	nop
    1890:	4502001a 	bc1fl	18fc <func_80B1A2A0+0xdc>
    1894:	44801000 	mtc1	zero,$f2
    1898:	8619001c 	lh	t9,28(s0)
    189c:	30490020 	andi	t1,v0,0x20
    18a0:	3c01c6fa 	lui	at,0xc6fa
    18a4:	55190004 	bnel	t0,t9,18b8 <func_80B1A2A0+0x98>
    18a8:	c6000080 	lwc1	$f0,128(s0)
    18ac:	5520000c 	bnezl	t1,18e0 <func_80B1A2A0+0xc0>
    18b0:	c6080028 	lwc1	$f8,40(s0)
    18b4:	c6000080 	lwc1	$f0,128(s0)
    18b8:	44813000 	mtc1	at,$f6
    18bc:	00000000 	nop
    18c0:	4600303c 	c.lt.s	$f6,$f0
    18c4:	00000000 	nop
    18c8:	4502000c 	bc1fl	18fc <func_80B1A2A0+0xdc>
    18cc:	44801000 	mtc1	zero,$f2
    18d0:	e6000028 	swc1	$f0,40(s0)
    18d4:	10000008 	b	18f8 <func_80B1A2A0+0xd8>
    18d8:	96020088 	lhu	v0,136(s0)
    18dc:	c6080028 	lwc1	$f8,40(s0)
    18e0:	c60a0084 	lwc1	$f10,132(s0)
    18e4:	e6020060 	swc1	$f2,96(s0)
    18e8:	e602006c 	swc1	$f2,108(s0)
    18ec:	460a4400 	add.s	$f16,$f8,$f10
    18f0:	96020088 	lhu	v0,136(s0)
    18f4:	e6100028 	swc1	$f16,40(s0)
    18f8:	44801000 	mtc1	zero,$f2
    18fc:	304a0042 	andi	t2,v0,0x42
    1900:	1140003b 	beqz	t2,19f0 <func_80B1A2A0+0x1d0>
    1904:	304b0040 	andi	t3,v0,0x40
    1908:	15600033 	bnez	t3,19d8 <func_80B1A2A0+0x1b8>
    190c:	304fffbf 	andi	t7,v0,0xffbf
    1910:	240c0050 	li	t4,80
    1914:	240d000f 	li	t5,15
    1918:	240e0001 	li	t6,1
    191c:	afae0018 	sw	t6,24(sp)
    1920:	afad0014 	sw	t5,20(sp)
    1924:	afac0010 	sw	t4,16(sp)
    1928:	8fa40034 	lw	a0,52(sp)
    192c:	26050348 	addiu	a1,s0,840
    1930:	3c063f80 	lui	a2,0x3f80
    1934:	0c000000 	jal	0 <func_80B18A80>
    1938:	24070002 	li	a3,2
    193c:	240f0050 	li	t7,80
    1940:	2418000f 	li	t8,15
    1944:	24190001 	li	t9,1
    1948:	afb90018 	sw	t9,24(sp)
    194c:	afb80014 	sw	t8,20(sp)
    1950:	afaf0010 	sw	t7,16(sp)
    1954:	8fa40034 	lw	a0,52(sp)
    1958:	26050354 	addiu	a1,s0,852
    195c:	3c063f80 	lui	a2,0x3f80
    1960:	0c000000 	jal	0 <func_80B18A80>
    1964:	24070002 	li	a3,2
    1968:	24090050 	li	t1,80
    196c:	240a000f 	li	t2,15
    1970:	240b0001 	li	t3,1
    1974:	afab0018 	sw	t3,24(sp)
    1978:	afaa0014 	sw	t2,20(sp)
    197c:	afa90010 	sw	t1,16(sp)
    1980:	8fa40034 	lw	a0,52(sp)
    1984:	26050360 	addiu	a1,s0,864
    1988:	3c063f80 	lui	a2,0x3f80
    198c:	0c000000 	jal	0 <func_80B18A80>
    1990:	24070002 	li	a3,2
    1994:	240c0050 	li	t4,80
    1998:	240d000f 	li	t5,15
    199c:	240e0001 	li	t6,1
    19a0:	afae0018 	sw	t6,24(sp)
    19a4:	afad0014 	sw	t5,20(sp)
    19a8:	afac0010 	sw	t4,16(sp)
    19ac:	8fa40034 	lw	a0,52(sp)
    19b0:	2605036c 	addiu	a1,s0,876
    19b4:	3c063f80 	lui	a2,0x3f80
    19b8:	0c000000 	jal	0 <func_80B18A80>
    19bc:	24070002 	li	a3,2
    19c0:	02002025 	move	a0,s0
    19c4:	0c000000 	jal	0 <func_80B18A80>
    19c8:	2405387b 	li	a1,14459
    19cc:	44801000 	mtc1	zero,$f2
    19d0:	10000007 	b	19f0 <func_80B1A2A0+0x1d0>
    19d4:	2408fffe 	li	t0,-2
    19d8:	a60f0088 	sh	t7,136(s0)
    19dc:	02002025 	move	a0,s0
    19e0:	0c000000 	jal	0 <func_80B18A80>
    19e4:	2405388f 	li	a1,14479
    19e8:	44801000 	mtc1	zero,$f2
    19ec:	2408fffe 	li	t0,-2
    19f0:	860300b6 	lh	v1,182(s0)
    19f4:	8618008a 	lh	t8,138(s0)
    19f8:	92190114 	lbu	t9,276(s0)
    19fc:	03032023 	subu	a0,t8,v1
    1a00:	00042400 	sll	a0,a0,0x10
    1a04:	17200066 	bnez	t9,1ba0 <func_80B1A2A0+0x380>
    1a08:	00042403 	sra	a0,a0,0x10
    1a0c:	c6120068 	lwc1	$f18,104(s0)
    1a10:	46121032 	c.eq.s	$f2,$f18
    1a14:	00000000 	nop
    1a18:	45000061 	bc1f	1ba0 <func_80B1A2A0+0x380>
    1a1c:	00000000 	nop
    1a20:	96020088 	lhu	v0,136(s0)
    1a24:	30490001 	andi	t1,v0,0x1
    1a28:	55200008 	bnezl	t1,1a4c <func_80B1A2A0+0x22c>
    1a2c:	920c00af 	lbu	t4,175(s0)
    1a30:	860a001c 	lh	t2,28(s0)
    1a34:	304b0020 	andi	t3,v0,0x20
    1a38:	150a0059 	bne	t0,t2,1ba0 <func_80B1A2A0+0x380>
    1a3c:	00000000 	nop
    1a40:	11600057 	beqz	t3,1ba0 <func_80B1A2A0+0x380>
    1a44:	00000000 	nop
    1a48:	920c00af 	lbu	t4,175(s0)
    1a4c:	a6030032 	sh	v1,50(s0)
    1a50:	55800006 	bnezl	t4,1a6c <func_80B1A2A0+0x24c>
    1a54:	920d02bd 	lbu	t5,701(s0)
    1a58:	0c000000 	jal	0 <func_80B18A80>
    1a5c:	02002025 	move	a0,s0
    1a60:	1000004f 	b	1ba0 <func_80B1A2A0+0x380>
    1a64:	00000000 	nop
    1a68:	920d02bd 	lbu	t5,701(s0)
    1a6c:	24010002 	li	at,2
    1a70:	55a10006 	bnel	t5,at,1a8c <func_80B1A2A0+0x26c>
    1a74:	3c014396 	lui	at,0x4396
    1a78:	0c000000 	jal	0 <func_80B18A80>
    1a7c:	02002025 	move	a0,s0
    1a80:	10000047 	b	1ba0 <func_80B1A2A0+0x380>
    1a84:	00000000 	nop
    1a88:	3c014396 	lui	at,0x4396
    1a8c:	44812000 	mtc1	at,$f4
    1a90:	c6000090 	lwc1	$f0,144(s0)
    1a94:	3c0142a0 	lui	at,0x42a0
    1a98:	4600203c 	c.lt.s	$f4,$f0
    1a9c:	00000000 	nop
    1aa0:	45020026 	bc1fl	1b3c <func_80B1A2A0+0x31c>
    1aa4:	3c014334 	lui	at,0x4334
    1aa8:	44813000 	mtc1	at,$f6
    1aac:	c6080094 	lwc1	$f8,148(s0)
    1ab0:	4608303c 	c.lt.s	$f6,$f8
    1ab4:	00000000 	nop
    1ab8:	45020020 	bc1fl	1b3c <func_80B1A2A0+0x31c>
    1abc:	3c014334 	lui	at,0x4334
    1ac0:	860200b4 	lh	v0,180(s0)
    1ac4:	04400003 	bltz	v0,1ad4 <func_80B1A2A0+0x2b4>
    1ac8:	00021823 	negu	v1,v0
    1acc:	10000001 	b	1ad4 <func_80B1A2A0+0x2b4>
    1ad0:	00401825 	move	v1,v0
    1ad4:	28610fa0 	slti	at,v1,4000
    1ad8:	50200018 	beqzl	at,1b3c <func_80B1A2A0+0x31c>
    1adc:	3c014334 	lui	at,0x4334
    1ae0:	860200b8 	lh	v0,184(s0)
    1ae4:	04400003 	bltz	v0,1af4 <func_80B1A2A0+0x2d4>
    1ae8:	00021823 	negu	v1,v0
    1aec:	10000001 	b	1af4 <func_80B1A2A0+0x2d4>
    1af0:	00401825 	move	v1,v0
    1af4:	28610fa0 	slti	at,v1,4000
    1af8:	50200010 	beqzl	at,1b3c <func_80B1A2A0+0x31c>
    1afc:	3c014334 	lui	at,0x4334
    1b00:	96020088 	lhu	v0,136(s0)
    1b04:	304e0001 	andi	t6,v0,0x1
    1b08:	15c00007 	bnez	t6,1b28 <func_80B1A2A0+0x308>
    1b0c:	00000000 	nop
    1b10:	860f001c 	lh	t7,28(s0)
    1b14:	30580020 	andi	t8,v0,0x20
    1b18:	550f0008 	bnel	t0,t7,1b3c <func_80B1A2A0+0x31c>
    1b1c:	3c014334 	lui	at,0x4334
    1b20:	53000006 	beqzl	t8,1b3c <func_80B1A2A0+0x31c>
    1b24:	3c014334 	lui	at,0x4334
    1b28:	0c000000 	jal	0 <func_80B18A80>
    1b2c:	02002025 	move	a0,s0
    1b30:	1000001b 	b	1ba0 <func_80B1A2A0+0x380>
    1b34:	00000000 	nop
    1b38:	3c014334 	lui	at,0x4334
    1b3c:	44815000 	mtc1	at,$f10
    1b40:	3c0142a0 	lui	at,0x42a0
    1b44:	460a003c 	c.lt.s	$f0,$f10
    1b48:	00000000 	nop
    1b4c:	45000012 	bc1f	1b98 <func_80B1A2A0+0x378>
    1b50:	00000000 	nop
    1b54:	44818000 	mtc1	at,$f16
    1b58:	c6120094 	lwc1	$f18,148(s0)
    1b5c:	4610903e 	c.le.s	$f18,$f16
    1b60:	00000000 	nop
    1b64:	4500000c 	bc1f	1b98 <func_80B1A2A0+0x378>
    1b68:	00000000 	nop
    1b6c:	04800003 	bltz	a0,1b7c <func_80B1A2A0+0x35c>
    1b70:	00041823 	negu	v1,a0
    1b74:	10000001 	b	1b7c <func_80B1A2A0+0x35c>
    1b78:	00801825 	move	v1,a0
    1b7c:	28611771 	slti	at,v1,6001
    1b80:	10200005 	beqz	at,1b98 <func_80B1A2A0+0x378>
    1b84:	00000000 	nop
    1b88:	0c000000 	jal	0 <func_80B18A80>
    1b8c:	02002025 	move	a0,s0
    1b90:	10000003 	b	1ba0 <func_80B1A2A0+0x380>
    1b94:	00000000 	nop
    1b98:	0c000000 	jal	0 <func_80B18A80>
    1b9c:	02002025 	move	a0,s0
    1ba0:	0c000000 	jal	0 <func_80B18A80>
    1ba4:	2604014c 	addiu	a0,s0,332
    1ba8:	8fbf002c 	lw	ra,44(sp)
    1bac:	8fb00028 	lw	s0,40(sp)
    1bb0:	27bd0030 	addiu	sp,sp,48
    1bb4:	03e00008 	jr	ra
    1bb8:	00000000 	nop

00001bbc <func_80B1A63C>:
    1bbc:	27bdffe8 	addiu	sp,sp,-24
    1bc0:	afbf0014 	sw	ra,20(sp)
    1bc4:	44802000 	mtc1	zero,$f4
    1bc8:	3c050000 	lui	a1,0x0
    1bcc:	a08002bc 	sb	zero,700(a0)
    1bd0:	a0800114 	sb	zero,276(a0)
    1bd4:	24a50000 	addiu	a1,a1,0
    1bd8:	0c000000 	jal	0 <func_80B18A80>
    1bdc:	e4840068 	swc1	$f4,104(a0)
    1be0:	8fbf0014 	lw	ra,20(sp)
    1be4:	27bd0018 	addiu	sp,sp,24
    1be8:	03e00008 	jr	ra
    1bec:	00000000 	nop

00001bf0 <func_80B1A670>:
    1bf0:	27bdffe0 	addiu	sp,sp,-32
    1bf4:	afa40020 	sw	a0,32(sp)
    1bf8:	afa50024 	sw	a1,36(sp)
    1bfc:	00a02025 	move	a0,a1
    1c00:	8fa50020 	lw	a1,32(sp)
    1c04:	afbf001c 	sw	ra,28(sp)
    1c08:	240e0001 	li	t6,1
    1c0c:	240f0028 	li	t7,40
    1c10:	afaf0014 	sw	t7,20(sp)
    1c14:	afae0010 	sw	t6,16(sp)
    1c18:	2406386e 	li	a2,14446
    1c1c:	24070001 	li	a3,1
    1c20:	0c000000 	jal	0 <func_80B18A80>
    1c24:	24a500e4 	addiu	a1,a1,228
    1c28:	8fa40020 	lw	a0,32(sp)
    1c2c:	24180005 	li	t8,5
    1c30:	3c050000 	lui	a1,0x0
    1c34:	24a50000 	addiu	a1,a1,0
    1c38:	0c000000 	jal	0 <func_80B18A80>
    1c3c:	a09802bc 	sb	t8,700(a0)
    1c40:	8fa40020 	lw	a0,32(sp)
    1c44:	24050018 	li	a1,24
    1c48:	8fa60024 	lw	a2,36(sp)
    1c4c:	0c000000 	jal	0 <func_80B18A80>
    1c50:	248402c4 	addiu	a0,a0,708
    1c54:	8fbf001c 	lw	ra,28(sp)
    1c58:	27bd0020 	addiu	sp,sp,32
    1c5c:	03e00008 	jr	ra
    1c60:	00000000 	nop

00001c64 <func_80B1A6E4>:
    1c64:	27bdffe0 	addiu	sp,sp,-32
    1c68:	afb00018 	sw	s0,24(sp)
    1c6c:	00808025 	move	s0,a0
    1c70:	afbf001c 	sw	ra,28(sp)
    1c74:	afa50024 	sw	a1,36(sp)
    1c78:	8607001c 	lh	a3,28(s0)
    1c7c:	8fa60024 	lw	a2,36(sp)
    1c80:	260502c4 	addiu	a1,s0,708
    1c84:	24e7000b 	addiu	a3,a3,11
    1c88:	00073c00 	sll	a3,a3,0x10
    1c8c:	0c000000 	jal	0 <func_80B18A80>
    1c90:	00073c03 	sra	a3,a3,0x10
    1c94:	10400010 	beqz	v0,1cd8 <func_80B1A6E4+0x74>
    1c98:	8fa40024 	lw	a0,36(sp)
    1c9c:	860e001c 	lh	t6,28(s0)
    1ca0:	2401fffe 	li	at,-2
    1ca4:	02002825 	move	a1,s0
    1ca8:	15c10007 	bne	t6,at,1cc8 <func_80B1A6E4+0x64>
    1cac:	26060024 	addiu	a2,s0,36
    1cb0:	02002825 	move	a1,s0
    1cb4:	26060024 	addiu	a2,s0,36
    1cb8:	0c000000 	jal	0 <func_80B18A80>
    1cbc:	240700e0 	li	a3,224
    1cc0:	10000003 	b	1cd0 <func_80B1A6E4+0x6c>
    1cc4:	00000000 	nop
    1cc8:	0c000000 	jal	0 <func_80B18A80>
    1ccc:	24070040 	li	a3,64
    1cd0:	0c000000 	jal	0 <func_80B18A80>
    1cd4:	02002025 	move	a0,s0
    1cd8:	8fbf001c 	lw	ra,28(sp)
    1cdc:	8fb00018 	lw	s0,24(sp)
    1ce0:	27bd0020 	addiu	sp,sp,32
    1ce4:	03e00008 	jr	ra
    1ce8:	00000000 	nop

00001cec <func_80B1A76C>:
    1cec:	27bdffe0 	addiu	sp,sp,-32
    1cf0:	afb00018 	sw	s0,24(sp)
    1cf4:	00808025 	move	s0,a0
    1cf8:	afbf001c 	sw	ra,28(sp)
    1cfc:	3c050600 	lui	a1,0x600
    1d00:	24a50a14 	addiu	a1,a1,2580
    1d04:	2484014c 	addiu	a0,a0,332
    1d08:	0c000000 	jal	0 <func_80B18A80>
    1d0c:	3c063fc0 	lui	a2,0x3fc0
    1d10:	02002025 	move	a0,s0
    1d14:	0c000000 	jal	0 <func_80B18A80>
    1d18:	24053888 	li	a1,14472
    1d1c:	3c01bf80 	lui	at,0xbf80
    1d20:	44802000 	mtc1	zero,$f4
    1d24:	44813000 	mtc1	at,$f6
    1d28:	240e0002 	li	t6,2
    1d2c:	240f01f4 	li	t7,500
    1d30:	a20e02bd 	sb	t6,701(s0)
    1d34:	a60f02e0 	sh	t7,736(s0)
    1d38:	e6040068 	swc1	$f4,104(s0)
    1d3c:	0c000000 	jal	0 <func_80B18A80>
    1d40:	e606006c 	swc1	$f6,108(s0)
    1d44:	3c014248 	lui	at,0x4248
    1d48:	44814000 	mtc1	at,$f8
    1d4c:	24190001 	li	t9,1
    1d50:	3c050000 	lui	a1,0x0
    1d54:	46080282 	mul.s	$f10,$f0,$f8
    1d58:	3c014f00 	lui	at,0x4f00
    1d5c:	24a50000 	addiu	a1,a1,0
    1d60:	02002025 	move	a0,s0
    1d64:	4458f800 	cfc1	t8,$31
    1d68:	44d9f800 	ctc1	t9,$31
    1d6c:	00000000 	nop
    1d70:	46005424 	cvt.w.s	$f16,$f10
    1d74:	4459f800 	cfc1	t9,$31
    1d78:	00000000 	nop
    1d7c:	33390078 	andi	t9,t9,0x78
    1d80:	53200013 	beqzl	t9,1dd0 <func_80B1A76C+0xe4>
    1d84:	44198000 	mfc1	t9,$f16
    1d88:	44818000 	mtc1	at,$f16
    1d8c:	24190001 	li	t9,1
    1d90:	46105401 	sub.s	$f16,$f10,$f16
    1d94:	44d9f800 	ctc1	t9,$31
    1d98:	00000000 	nop
    1d9c:	46008424 	cvt.w.s	$f16,$f16
    1da0:	4459f800 	cfc1	t9,$31
    1da4:	00000000 	nop
    1da8:	33390078 	andi	t9,t9,0x78
    1dac:	17200005 	bnez	t9,1dc4 <func_80B1A76C+0xd8>
    1db0:	00000000 	nop
    1db4:	44198000 	mfc1	t9,$f16
    1db8:	3c018000 	lui	at,0x8000
    1dbc:	10000007 	b	1ddc <func_80B1A76C+0xf0>
    1dc0:	0321c825 	or	t9,t9,at
    1dc4:	10000005 	b	1ddc <func_80B1A76C+0xf0>
    1dc8:	2419ffff 	li	t9,-1
    1dcc:	44198000 	mfc1	t9,$f16
    1dd0:	00000000 	nop
    1dd4:	0720fffb 	bltz	t9,1dc4 <func_80B1A76C+0xd8>
    1dd8:	00000000 	nop
    1ddc:	3c014130 	lui	at,0x4130
    1de0:	44819000 	mtc1	at,$f18
    1de4:	44d8f800 	ctc1	t8,$31
    1de8:	a21902e2 	sb	t9,738(s0)
    1dec:	0c000000 	jal	0 <func_80B18A80>
    1df0:	e6120060 	swc1	$f18,96(s0)
    1df4:	8fbf001c 	lw	ra,28(sp)
    1df8:	8fb00018 	lw	s0,24(sp)
    1dfc:	27bd0020 	addiu	sp,sp,32
    1e00:	03e00008 	jr	ra
    1e04:	00000000 	nop

00001e08 <func_80B1A888>:
    1e08:	27bdffc8 	addiu	sp,sp,-56
    1e0c:	afb00030 	sw	s0,48(sp)
    1e10:	00808025 	move	s0,a0
    1e14:	afbf0034 	sw	ra,52(sp)
    1e18:	afa5003c 	sw	a1,60(sp)
    1e1c:	24057fff 	li	a1,32767
    1e20:	248400b8 	addiu	a0,a0,184
    1e24:	afa00010 	sw	zero,16(sp)
    1e28:	24060001 	li	a2,1
    1e2c:	0c000000 	jal	0 <func_80B18A80>
    1e30:	24070fa0 	li	a3,4000
    1e34:	920e02e2 	lbu	t6,738(s0)
    1e38:	25cfffff 	addiu	t7,t6,-1
    1e3c:	31f800ff 	andi	t8,t7,0xff
    1e40:	1700002e 	bnez	t8,1efc <func_80B1A888+0xf4>
    1e44:	a20f02e2 	sb	t7,738(s0)
    1e48:	0c000000 	jal	0 <func_80B18A80>
    1e4c:	00000000 	nop
    1e50:	3c0141f0 	lui	at,0x41f0
    1e54:	44812000 	mtc1	at,$f4
    1e58:	24080001 	li	t0,1
    1e5c:	3c014f00 	lui	at,0x4f00
    1e60:	46040182 	mul.s	$f6,$f0,$f4
    1e64:	4459f800 	cfc1	t9,$31
    1e68:	44c8f800 	ctc1	t0,$31
    1e6c:	00000000 	nop
    1e70:	46003224 	cvt.w.s	$f8,$f6
    1e74:	4448f800 	cfc1	t0,$31
    1e78:	00000000 	nop
    1e7c:	31080078 	andi	t0,t0,0x78
    1e80:	51000013 	beqzl	t0,1ed0 <func_80B1A888+0xc8>
    1e84:	44084000 	mfc1	t0,$f8
    1e88:	44814000 	mtc1	at,$f8
    1e8c:	24080001 	li	t0,1
    1e90:	46083201 	sub.s	$f8,$f6,$f8
    1e94:	44c8f800 	ctc1	t0,$31
    1e98:	00000000 	nop
    1e9c:	46004224 	cvt.w.s	$f8,$f8
    1ea0:	4448f800 	cfc1	t0,$31
    1ea4:	00000000 	nop
    1ea8:	31080078 	andi	t0,t0,0x78
    1eac:	15000005 	bnez	t0,1ec4 <func_80B1A888+0xbc>
    1eb0:	00000000 	nop
    1eb4:	44084000 	mfc1	t0,$f8
    1eb8:	3c018000 	lui	at,0x8000
    1ebc:	10000007 	b	1edc <func_80B1A888+0xd4>
    1ec0:	01014025 	or	t0,t0,at
    1ec4:	10000005 	b	1edc <func_80B1A888+0xd4>
    1ec8:	2408ffff 	li	t0,-1
    1ecc:	44084000 	mfc1	t0,$f8
    1ed0:	00000000 	nop
    1ed4:	0500fffb 	bltz	t0,1ec4 <func_80B1A888+0xbc>
    1ed8:	00000000 	nop
    1edc:	44d9f800 	ctc1	t9,$31
    1ee0:	0c000000 	jal	0 <func_80B18A80>
    1ee4:	a20802e2 	sb	t0,738(s0)
    1ee8:	3c0140a0 	lui	at,0x40a0
    1eec:	44815000 	mtc1	at,$f10
    1ef0:	00000000 	nop
    1ef4:	460a0402 	mul.s	$f16,$f0,$f10
    1ef8:	e6100164 	swc1	$f16,356(s0)
    1efc:	0c000000 	jal	0 <func_80B18A80>
    1f00:	2604014c 	addiu	a0,s0,332
    1f04:	96020088 	lhu	v0,136(s0)
    1f08:	3c01452f 	lui	at,0x452f
    1f0c:	30490003 	andi	t1,v0,0x3
    1f10:	1120001c 	beqz	t1,1f84 <func_80B1A888+0x17c>
    1f14:	304a0002 	andi	t2,v0,0x2
    1f18:	11400010 	beqz	t2,1f5c <func_80B1A888+0x154>
    1f1c:	8fa4003c 	lw	a0,60(sp)
    1f20:	3c014080 	lui	at,0x4080
    1f24:	44819000 	mtc1	at,$f18
    1f28:	240b000b 	li	t3,11
    1f2c:	afab0010 	sw	t3,16(sp)
    1f30:	02002825 	move	a1,s0
    1f34:	26060024 	addiu	a2,s0,36
    1f38:	3c0741a0 	lui	a3,0x41a0
    1f3c:	afa00018 	sw	zero,24(sp)
    1f40:	afa0001c 	sw	zero,28(sp)
    1f44:	afa00020 	sw	zero,32(sp)
    1f48:	0c000000 	jal	0 <func_80B18A80>
    1f4c:	e7b20014 	swc1	$f18,20(sp)
    1f50:	02002025 	move	a0,s0
    1f54:	0c000000 	jal	0 <func_80B18A80>
    1f58:	2405387b 	li	a1,14459
    1f5c:	860c02e0 	lh	t4,736(s0)
    1f60:	258dffff 	addiu	t5,t4,-1
    1f64:	a60d02e0 	sh	t5,736(s0)
    1f68:	860e02e0 	lh	t6,736(s0)
    1f6c:	55c00011 	bnezl	t6,1fb4 <func_80B1A888+0x1ac>
    1f70:	8fbf0034 	lw	ra,52(sp)
    1f74:	0c000000 	jal	0 <func_80B18A80>
    1f78:	02002025 	move	a0,s0
    1f7c:	1000000d 	b	1fb4 <func_80B1A888+0x1ac>
    1f80:	8fbf0034 	lw	ra,52(sp)
    1f84:	c60000bc 	lwc1	$f0,188(s0)
    1f88:	44812000 	mtc1	at,$f4
    1f8c:	3c0143c8 	lui	at,0x43c8
    1f90:	4604003c 	c.lt.s	$f0,$f4
    1f94:	00000000 	nop
    1f98:	45020006 	bc1fl	1fb4 <func_80B1A888+0x1ac>
    1f9c:	8fbf0034 	lw	ra,52(sp)
    1fa0:	44813000 	mtc1	at,$f6
    1fa4:	00000000 	nop
    1fa8:	46060200 	add.s	$f8,$f0,$f6
    1fac:	e60800bc 	swc1	$f8,188(s0)
    1fb0:	8fbf0034 	lw	ra,52(sp)
    1fb4:	8fb00030 	lw	s0,48(sp)
    1fb8:	27bd0038 	addiu	sp,sp,56
    1fbc:	03e00008 	jr	ra
    1fc0:	00000000 	nop

00001fc4 <func_80B1AA44>:
    1fc4:	27bdffe8 	addiu	sp,sp,-24
    1fc8:	3c014150 	lui	at,0x4150
    1fcc:	44812000 	mtc1	at,$f4
    1fd0:	afbf0014 	sw	ra,20(sp)
    1fd4:	240e0001 	li	t6,1
    1fd8:	240f03e8 	li	t7,1000
    1fdc:	a08e02bd 	sb	t6,701(a0)
    1fe0:	a48f02e0 	sh	t7,736(a0)
    1fe4:	e4840060 	swc1	$f4,96(a0)
    1fe8:	afa40018 	sw	a0,24(sp)
    1fec:	0c000000 	jal	0 <func_80B18A80>
    1ff0:	24053888 	li	a1,14472
    1ff4:	3c050000 	lui	a1,0x0
    1ff8:	8fa40018 	lw	a0,24(sp)
    1ffc:	0c000000 	jal	0 <func_80B18A80>
    2000:	24a50000 	addiu	a1,a1,0
    2004:	8fbf0014 	lw	ra,20(sp)
    2008:	27bd0018 	addiu	sp,sp,24
    200c:	03e00008 	jr	ra
    2010:	00000000 	nop

00002014 <func_80B1AA94>:
    2014:	27bdffd0 	addiu	sp,sp,-48
    2018:	afb00028 	sw	s0,40(sp)
    201c:	00808025 	move	s0,a0
    2020:	afbf002c 	sw	ra,44(sp)
    2024:	afa50034 	sw	a1,52(sp)
    2028:	00002825 	move	a1,zero
    202c:	248400b8 	addiu	a0,a0,184
    2030:	afa00010 	sw	zero,16(sp)
    2034:	24060001 	li	a2,1
    2038:	0c000000 	jal	0 <func_80B18A80>
    203c:	24070fa0 	li	a3,4000
    2040:	0c000000 	jal	0 <func_80B18A80>
    2044:	2604014c 	addiu	a0,s0,332
    2048:	960e0088 	lhu	t6,136(s0)
    204c:	8fa40034 	lw	a0,52(sp)
    2050:	26050348 	addiu	a1,s0,840
    2054:	31cf0002 	andi	t7,t6,0x2
    2058:	11e00033 	beqz	t7,2128 <func_80B1AA94+0x114>
    205c:	3c063f80 	lui	a2,0x3f80
    2060:	24180050 	li	t8,80
    2064:	2419000f 	li	t9,15
    2068:	24080001 	li	t0,1
    206c:	afa80018 	sw	t0,24(sp)
    2070:	afb90014 	sw	t9,20(sp)
    2074:	afb80010 	sw	t8,16(sp)
    2078:	0c000000 	jal	0 <func_80B18A80>
    207c:	24070002 	li	a3,2
    2080:	24090050 	li	t1,80
    2084:	240a000f 	li	t2,15
    2088:	240b0001 	li	t3,1
    208c:	afab0018 	sw	t3,24(sp)
    2090:	afaa0014 	sw	t2,20(sp)
    2094:	afa90010 	sw	t1,16(sp)
    2098:	8fa40034 	lw	a0,52(sp)
    209c:	26050354 	addiu	a1,s0,852
    20a0:	3c063f80 	lui	a2,0x3f80
    20a4:	0c000000 	jal	0 <func_80B18A80>
    20a8:	24070002 	li	a3,2
    20ac:	240c0050 	li	t4,80
    20b0:	240d000f 	li	t5,15
    20b4:	240e0001 	li	t6,1
    20b8:	afae0018 	sw	t6,24(sp)
    20bc:	afad0014 	sw	t5,20(sp)
    20c0:	afac0010 	sw	t4,16(sp)
    20c4:	8fa40034 	lw	a0,52(sp)
    20c8:	26050360 	addiu	a1,s0,864
    20cc:	3c063f80 	lui	a2,0x3f80
    20d0:	0c000000 	jal	0 <func_80B18A80>
    20d4:	24070002 	li	a3,2
    20d8:	240f0050 	li	t7,80
    20dc:	2418000f 	li	t8,15
    20e0:	24190001 	li	t9,1
    20e4:	afb90018 	sw	t9,24(sp)
    20e8:	afb80014 	sw	t8,20(sp)
    20ec:	afaf0010 	sw	t7,16(sp)
    20f0:	8fa40034 	lw	a0,52(sp)
    20f4:	2605036c 	addiu	a1,s0,876
    20f8:	3c063f80 	lui	a2,0x3f80
    20fc:	0c000000 	jal	0 <func_80B18A80>
    2100:	24070002 	li	a3,2
    2104:	44802000 	mtc1	zero,$f4
    2108:	c6060080 	lwc1	$f6,128(s0)
    210c:	02002025 	move	a0,s0
    2110:	2405387b 	li	a1,14459
    2114:	e60400bc 	swc1	$f4,188(s0)
    2118:	0c000000 	jal	0 <func_80B18A80>
    211c:	e6060028 	swc1	$f6,40(s0)
    2120:	0c000000 	jal	0 <func_80B18A80>
    2124:	02002025 	move	a0,s0
    2128:	8fbf002c 	lw	ra,44(sp)
    212c:	8fb00028 	lw	s0,40(sp)
    2130:	27bd0030 	addiu	sp,sp,48
    2134:	03e00008 	jr	ra
    2138:	00000000 	nop

0000213c <func_80B1ABBC>:
    213c:	27bdffe0 	addiu	sp,sp,-32
    2140:	afbf001c 	sw	ra,28(sp)
    2144:	908202f9 	lbu	v0,761(a0)
    2148:	304e0002 	andi	t6,v0,0x2
    214c:	51c0004d 	beqzl	t6,2284 <func_80B1ABBC+0x148>
    2150:	908f00af 	lbu	t7,175(a0)
    2154:	908f02bc 	lbu	t7,700(a0)
    2158:	29e10006 	slti	at,t7,6
    215c:	54200049 	bnezl	at,2284 <func_80B1ABBC+0x148>
    2160:	908f00af 	lbu	t7,175(a0)
    2164:	908300b1 	lbu	v1,177(a0)
    2168:	3058fffd 	andi	t8,v0,0xfffd
    216c:	2401000e 	li	at,14
    2170:	10610064 	beq	v1,at,2304 <func_80B1ABBC+0x1c8>
    2174:	a09802f9 	sb	t8,761(a0)
    2178:	a08302e4 	sb	v1,740(a0)
    217c:	8c850304 	lw	a1,772(a0)
    2180:	afa40020 	sw	a0,32(sp)
    2184:	0c000000 	jal	0 <func_80B18A80>
    2188:	00003025 	move	a2,zero
    218c:	8fa40020 	lw	a0,32(sp)
    2190:	24010001 	li	at,1
    2194:	908200b1 	lbu	v0,177(a0)
    2198:	10410003 	beq	v0,at,21a8 <func_80B1ABBC+0x6c>
    219c:	2401000f 	li	at,15
    21a0:	54410012 	bnel	v0,at,21ec <func_80B1ABBC+0xb0>
    21a4:	90890114 	lbu	t1,276(a0)
    21a8:	909902bc 	lbu	t9,700(a0)
    21ac:	24010007 	li	at,7
    21b0:	00002825 	move	a1,zero
    21b4:	13210053 	beq	t9,at,2304 <func_80B1ABBC+0x1c8>
    21b8:	24060078 	li	a2,120
    21bc:	24080050 	li	t0,80
    21c0:	afa80010 	sw	t0,16(sp)
    21c4:	00003825 	move	a3,zero
    21c8:	0c000000 	jal	0 <func_80B18A80>
    21cc:	afa40020 	sw	a0,32(sp)
    21d0:	0c000000 	jal	0 <func_80B18A80>
    21d4:	8fa40020 	lw	a0,32(sp)
    21d8:	0c000000 	jal	0 <func_80B18A80>
    21dc:	8fa40020 	lw	a0,32(sp)
    21e0:	10000049 	b	2308 <func_80B1ABBC+0x1cc>
    21e4:	8fbf001c 	lw	ra,28(sp)
    21e8:	90890114 	lbu	t1,276(a0)
    21ec:	24054000 	li	a1,16384
    21f0:	240600ff 	li	a2,255
    21f4:	11200004 	beqz	t1,2208 <func_80B1ABBC+0xcc>
    21f8:	00003825 	move	a3,zero
    21fc:	948a0112 	lhu	t2,274(a0)
    2200:	314b4000 	andi	t3,t2,0x4000
    2204:	15600007 	bnez	t3,2224 <func_80B1ABBC+0xe8>
    2208:	240c0008 	li	t4,8
    220c:	afac0010 	sw	t4,16(sp)
    2210:	0c000000 	jal	0 <func_80B18A80>
    2214:	afa40020 	sw	a0,32(sp)
    2218:	0c000000 	jal	0 <func_80B18A80>
    221c:	8fa40020 	lw	a0,32(sp)
    2220:	8fa40020 	lw	a0,32(sp)
    2224:	908d00af 	lbu	t5,175(a0)
    2228:	2405386d 	li	a1,14445
    222c:	15a00005 	bnez	t5,2244 <func_80B1ABBC+0x108>
    2230:	00000000 	nop
    2234:	0c000000 	jal	0 <func_80B18A80>
    2238:	00000000 	nop
    223c:	10000032 	b	2308 <func_80B1ABBC+0x1cc>
    2240:	8fbf001c 	lw	ra,28(sp)
    2244:	0c000000 	jal	0 <func_80B18A80>
    2248:	afa40020 	sw	a0,32(sp)
    224c:	8fa40020 	lw	a0,32(sp)
    2250:	24010002 	li	at,2
    2254:	908e02bd 	lbu	t6,701(a0)
    2258:	11c10005 	beq	t6,at,2270 <func_80B1ABBC+0x134>
    225c:	00000000 	nop
    2260:	0c000000 	jal	0 <func_80B18A80>
    2264:	00000000 	nop
    2268:	10000027 	b	2308 <func_80B1ABBC+0x1cc>
    226c:	8fbf001c 	lw	ra,28(sp)
    2270:	0c000000 	jal	0 <func_80B18A80>
    2274:	00000000 	nop
    2278:	10000023 	b	2308 <func_80B1ABBC+0x1cc>
    227c:	8fbf001c 	lw	ra,28(sp)
    2280:	908f00af 	lbu	t7,175(a0)
    2284:	51e00020 	beqzl	t7,2308 <func_80B1ABBC+0x1cc>
    2288:	8fbf001c 	lw	ra,28(sp)
    228c:	90b81c26 	lbu	t8,7206(a1)
    2290:	3c0143c8 	lui	at,0x43c8
    2294:	5300001c 	beqzl	t8,2308 <func_80B1ABBC+0x1cc>
    2298:	8fbf001c 	lw	ra,28(sp)
    229c:	44812000 	mtc1	at,$f4
    22a0:	c4860090 	lwc1	$f6,144(a0)
    22a4:	4604303e 	c.le.s	$f6,$f4
    22a8:	00000000 	nop
    22ac:	45020016 	bc1fl	2308 <func_80B1ABBC+0x1cc>
    22b0:	8fbf001c 	lw	ra,28(sp)
    22b4:	94990088 	lhu	t9,136(a0)
    22b8:	33280001 	andi	t0,t9,0x1
    22bc:	51000012 	beqzl	t0,2308 <func_80B1ABBC+0x1cc>
    22c0:	8fbf001c 	lw	ra,28(sp)
    22c4:	908902bd 	lbu	t1,701(a0)
    22c8:	24010002 	li	at,2
    22cc:	55210006 	bnel	t1,at,22e8 <func_80B1ABBC+0x1ac>
    22d0:	908202bc 	lbu	v0,700(a0)
    22d4:	0c000000 	jal	0 <func_80B18A80>
    22d8:	00000000 	nop
    22dc:	1000000a 	b	2308 <func_80B1ABBC+0x1cc>
    22e0:	8fbf001c 	lw	ra,28(sp)
    22e4:	908202bc 	lbu	v0,700(a0)
    22e8:	28410006 	slti	at,v0,6
    22ec:	10200003 	beqz	at,22fc <func_80B1ABBC+0x1c0>
    22f0:	28410006 	slti	at,v0,6
    22f4:	54200004 	bnezl	at,2308 <func_80B1ABBC+0x1cc>
    22f8:	8fbf001c 	lw	ra,28(sp)
    22fc:	0c000000 	jal	0 <func_80B18A80>
    2300:	00000000 	nop
    2304:	8fbf001c 	lw	ra,28(sp)
    2308:	27bd0020 	addiu	sp,sp,32
    230c:	03e00008 	jr	ra
    2310:	00000000 	nop

00002314 <EnTite_Update>:
    2314:	27bdffb8 	addiu	sp,sp,-72
    2318:	afbf0024 	sw	ra,36(sp)
    231c:	afb10020 	sw	s1,32(sp)
    2320:	afb0001c 	sw	s0,28(sp)
    2324:	00808025 	move	s0,a0
    2328:	0c000000 	jal	0 <func_80B18A80>
    232c:	00a08825 	move	s1,a1
    2330:	920e00b1 	lbu	t6,177(s0)
    2334:	2401000e 	li	at,14
    2338:	51c100d4 	beql	t6,at,268c <EnTite_Update+0x378>
    233c:	8e0c0028 	lw	t4,40(s0)
    2340:	8e1902c0 	lw	t9,704(s0)
    2344:	02002025 	move	a0,s0
    2348:	02202825 	move	a1,s1
    234c:	0320f809 	jalr	t9
    2350:	00000000 	nop
    2354:	0c000000 	jal	0 <func_80B18A80>
    2358:	02002025 	move	a0,s0
    235c:	3c0141a0 	lui	at,0x41a0
    2360:	44812000 	mtc1	at,$f4
    2364:	02202025 	move	a0,s1
    2368:	02002825 	move	a1,s0
    236c:	e7a40010 	swc1	$f4,16(sp)
    2370:	8e0f02dc 	lw	t7,732(s0)
    2374:	3c0641c8 	lui	a2,0x41c8
    2378:	3c074220 	lui	a3,0x4220
    237c:	0c000000 	jal	0 <func_80B18A80>
    2380:	afaf0014 	sw	t7,20(sp)
    2384:	8618001c 	lh	t8,28(s0)
    2388:	2401fffe 	li	at,-2
    238c:	57010096 	bnel	t8,at,25e8 <EnTite_Update+0x2d4>
    2390:	960f0088 	lhu	t7,136(s0)
    2394:	96080088 	lhu	t0,136(s0)
    2398:	3c010001 	lui	at,0x1
    239c:	31090020 	andi	t1,t0,0x20
    23a0:	51200091 	beqzl	t1,25e8 <EnTite_Update+0x2d4>
    23a4:	960f0088 	lhu	t7,136(s0)
    23a8:	8e0a0078 	lw	t2,120(s0)
    23ac:	02215821 	addu	t3,s1,at
    23b0:	afab0030 	sw	t3,48(sp)
    23b4:	afaa003c 	sw	t2,60(sp)
    23b8:	8d6d1de4 	lw	t5,7652(t3)
    23bc:	02202025 	move	a0,s1
    23c0:	262507c0 	addiu	a1,s1,1984
    23c4:	31ae0007 	andi	t6,t5,0x7
    23c8:	11c00008 	beqz	t6,23ec <EnTite_Update+0xd8>
    23cc:	27b90034 	addiu	t9,sp,52
    23d0:	c6060060 	lwc1	$f6,96(s0)
    23d4:	44804000 	mtc1	zero,$f8
    23d8:	00000000 	nop
    23dc:	4608303c 	c.lt.s	$f6,$f8
    23e0:	00000000 	nop
    23e4:	45020015 	bc1fl	243c <EnTite_Update+0x128>
    23e8:	8fb80030 	lw	t8,48(sp)
    23ec:	8e060360 	lw	a2,864(s0)
    23f0:	8e070368 	lw	a3,872(s0)
    23f4:	27af0038 	addiu	t7,sp,56
    23f8:	afaf0014 	sw	t7,20(sp)
    23fc:	0c000000 	jal	0 <func_80B18A80>
    2400:	afb90010 	sw	t9,16(sp)
    2404:	1040000c 	beqz	v0,2438 <EnTite_Update+0x124>
    2408:	c7aa0034 	lwc1	$f10,52(sp)
    240c:	c6100364 	lwc1	$f16,868(s0)
    2410:	02202025 	move	a0,s1
    2414:	26050360 	addiu	a1,s0,864
    2418:	460a803e 	c.le.s	$f16,$f10
    241c:	00003025 	move	a2,zero
    2420:	240700dc 	li	a3,220
    2424:	45020005 	bc1fl	243c <EnTite_Update+0x128>
    2428:	8fb80030 	lw	t8,48(sp)
    242c:	e60a0364 	swc1	$f10,868(s0)
    2430:	0c000000 	jal	0 <func_80B18A80>
    2434:	afa00010 	sw	zero,16(sp)
    2438:	8fb80030 	lw	t8,48(sp)
    243c:	02202025 	move	a0,s1
    2440:	262507c0 	addiu	a1,s1,1984
    2444:	8f081de4 	lw	t0,7652(t8)
    2448:	27ab0034 	addiu	t3,sp,52
    244c:	27ac0038 	addiu	t4,sp,56
    2450:	25090002 	addiu	t1,t0,2
    2454:	312a0007 	andi	t2,t1,0x7
    2458:	51400009 	beqzl	t2,2480 <EnTite_Update+0x16c>
    245c:	8e06036c 	lw	a2,876(s0)
    2460:	c6120060 	lwc1	$f18,96(s0)
    2464:	44802000 	mtc1	zero,$f4
    2468:	00000000 	nop
    246c:	4604903c 	c.lt.s	$f18,$f4
    2470:	00000000 	nop
    2474:	45020014 	bc1fl	24c8 <EnTite_Update+0x1b4>
    2478:	8fad0030 	lw	t5,48(sp)
    247c:	8e06036c 	lw	a2,876(s0)
    2480:	8e070374 	lw	a3,884(s0)
    2484:	afac0014 	sw	t4,20(sp)
    2488:	0c000000 	jal	0 <func_80B18A80>
    248c:	afab0010 	sw	t3,16(sp)
    2490:	1040000c 	beqz	v0,24c4 <EnTite_Update+0x1b0>
    2494:	c7a60034 	lwc1	$f6,52(sp)
    2498:	c6080370 	lwc1	$f8,880(s0)
    249c:	02202025 	move	a0,s1
    24a0:	2605036c 	addiu	a1,s0,876
    24a4:	4606403e 	c.le.s	$f8,$f6
    24a8:	00003025 	move	a2,zero
    24ac:	240700dc 	li	a3,220
    24b0:	45020005 	bc1fl	24c8 <EnTite_Update+0x1b4>
    24b4:	8fad0030 	lw	t5,48(sp)
    24b8:	e6060370 	swc1	$f6,880(s0)
    24bc:	0c000000 	jal	0 <func_80B18A80>
    24c0:	afa00010 	sw	zero,16(sp)
    24c4:	8fad0030 	lw	t5,48(sp)
    24c8:	02202025 	move	a0,s1
    24cc:	262507c0 	addiu	a1,s1,1984
    24d0:	8dae1de4 	lw	t6,7652(t5)
    24d4:	27b80034 	addiu	t8,sp,52
    24d8:	27a80038 	addiu	t0,sp,56
    24dc:	25d90004 	addiu	t9,t6,4
    24e0:	332f0007 	andi	t7,t9,0x7
    24e4:	51e00009 	beqzl	t7,250c <EnTite_Update+0x1f8>
    24e8:	8e060348 	lw	a2,840(s0)
    24ec:	c6100060 	lwc1	$f16,96(s0)
    24f0:	44805000 	mtc1	zero,$f10
    24f4:	00000000 	nop
    24f8:	460a803c 	c.lt.s	$f16,$f10
    24fc:	00000000 	nop
    2500:	45020014 	bc1fl	2554 <EnTite_Update+0x240>
    2504:	8fa90030 	lw	t1,48(sp)
    2508:	8e060348 	lw	a2,840(s0)
    250c:	8e070350 	lw	a3,848(s0)
    2510:	afa80014 	sw	t0,20(sp)
    2514:	0c000000 	jal	0 <func_80B18A80>
    2518:	afb80010 	sw	t8,16(sp)
    251c:	1040000c 	beqz	v0,2550 <EnTite_Update+0x23c>
    2520:	c7b20034 	lwc1	$f18,52(sp)
    2524:	c604034c 	lwc1	$f4,844(s0)
    2528:	02202025 	move	a0,s1
    252c:	26050348 	addiu	a1,s0,840
    2530:	4612203e 	c.le.s	$f4,$f18
    2534:	00003025 	move	a2,zero
    2538:	240700dc 	li	a3,220
    253c:	45020005 	bc1fl	2554 <EnTite_Update+0x240>
    2540:	8fa90030 	lw	t1,48(sp)
    2544:	e612034c 	swc1	$f18,844(s0)
    2548:	0c000000 	jal	0 <func_80B18A80>
    254c:	afa00010 	sw	zero,16(sp)
    2550:	8fa90030 	lw	t1,48(sp)
    2554:	02202025 	move	a0,s1
    2558:	262507c0 	addiu	a1,s1,1984
    255c:	8d2a1de4 	lw	t2,7652(t1)
    2560:	27ad0034 	addiu	t5,sp,52
    2564:	27ae0038 	addiu	t6,sp,56
    2568:	254b0001 	addiu	t3,t2,1
    256c:	316c0007 	andi	t4,t3,0x7
    2570:	51800009 	beqzl	t4,2598 <EnTite_Update+0x284>
    2574:	8e060354 	lw	a2,852(s0)
    2578:	c6080060 	lwc1	$f8,96(s0)
    257c:	44803000 	mtc1	zero,$f6
    2580:	00000000 	nop
    2584:	4606403c 	c.lt.s	$f8,$f6
    2588:	00000000 	nop
    258c:	45020014 	bc1fl	25e0 <EnTite_Update+0x2cc>
    2590:	8fb9003c 	lw	t9,60(sp)
    2594:	8e060354 	lw	a2,852(s0)
    2598:	8e07035c 	lw	a3,860(s0)
    259c:	afae0014 	sw	t6,20(sp)
    25a0:	0c000000 	jal	0 <func_80B18A80>
    25a4:	afad0010 	sw	t5,16(sp)
    25a8:	1040000c 	beqz	v0,25dc <EnTite_Update+0x2c8>
    25ac:	c7b00034 	lwc1	$f16,52(sp)
    25b0:	c60a0358 	lwc1	$f10,856(s0)
    25b4:	02202025 	move	a0,s1
    25b8:	26050354 	addiu	a1,s0,852
    25bc:	4610503e 	c.le.s	$f10,$f16
    25c0:	00003025 	move	a2,zero
    25c4:	240700dc 	li	a3,220
    25c8:	45020005 	bc1fl	25e0 <EnTite_Update+0x2cc>
    25cc:	8fb9003c 	lw	t9,60(sp)
    25d0:	e6100358 	swc1	$f16,856(s0)
    25d4:	0c000000 	jal	0 <func_80B18A80>
    25d8:	afa00010 	sw	zero,16(sp)
    25dc:	8fb9003c 	lw	t9,60(sp)
    25e0:	ae190078 	sw	t9,120(s0)
    25e4:	960f0088 	lhu	t7,136(s0)
    25e8:	260400b4 	addiu	a0,s0,180
    25ec:	00002825 	move	a1,zero
    25f0:	31f80003 	andi	t8,t7,0x3
    25f4:	1300000d 	beqz	t8,262c <EnTite_Update+0x318>
    25f8:	24060001 	li	a2,1
    25fc:	02002025 	move	a0,s0
    2600:	860500b6 	lh	a1,182(s0)
    2604:	0c000000 	jal	0 <func_80B18A80>
    2608:	260600b4 	addiu	a2,s0,180
    260c:	920802bd 	lbu	t0,701(s0)
    2610:	29010002 	slti	at,t0,2
    2614:	5420001d 	bnezl	at,268c <EnTite_Update+0x378>
    2618:	8e0c0028 	lw	t4,40(s0)
    261c:	860900b8 	lh	t1,184(s0)
    2620:	252a7fff 	addiu	t2,t1,32767
    2624:	10000018 	b	2688 <EnTite_Update+0x374>
    2628:	a60a00b8 	sh	t2,184(s0)
    262c:	240703e8 	li	a3,1000
    2630:	0c000000 	jal	0 <func_80B18A80>
    2634:	afa00010 	sw	zero,16(sp)
    2638:	920b02bd 	lbu	t3,701(s0)
    263c:	260400b8 	addiu	a0,s0,184
    2640:	00002825 	move	a1,zero
    2644:	29610002 	slti	at,t3,2
    2648:	1020000f 	beqz	at,2688 <EnTite_Update+0x374>
    264c:	24060001 	li	a2,1
    2650:	240703e8 	li	a3,1000
    2654:	0c000000 	jal	0 <func_80B18A80>
    2658:	afa00010 	sw	zero,16(sp)
    265c:	c60000bc 	lwc1	$f0,188(s0)
    2660:	44802000 	mtc1	zero,$f4
    2664:	3c0143c8 	lui	at,0x43c8
    2668:	4600203c 	c.lt.s	$f4,$f0
    266c:	00000000 	nop
    2670:	45020006 	bc1fl	268c <EnTite_Update+0x378>
    2674:	8e0c0028 	lw	t4,40(s0)
    2678:	44819000 	mtc1	at,$f18
    267c:	00000000 	nop
    2680:	46120201 	sub.s	$f8,$f0,$f18
    2684:	e60800bc 	swc1	$f8,188(s0)
    2688:	8e0c0028 	lw	t4,40(s0)
    268c:	3c0141a0 	lui	at,0x41a0
    2690:	8e0d0024 	lw	t5,36(s0)
    2694:	ae0c003c 	sw	t4,60(s0)
    2698:	c606003c 	lwc1	$f6,60(s0)
    269c:	44815000 	mtc1	at,$f10
    26a0:	ae0d0038 	sw	t5,56(s0)
    26a4:	8e0d002c 	lw	t5,44(s0)
    26a8:	460a3400 	add.s	$f16,$f6,$f10
    26ac:	3c010001 	lui	at,0x1
    26b0:	34211e60 	ori	at,at,0x1e60
    26b4:	02212821 	addu	a1,s1,at
    26b8:	e610003c 	swc1	$f16,60(s0)
    26bc:	260602e8 	addiu	a2,s0,744
    26c0:	ae0d0040 	sw	t5,64(s0)
    26c4:	afa6002c 	sw	a2,44(sp)
    26c8:	afa50030 	sw	a1,48(sp)
    26cc:	0c000000 	jal	0 <func_80B18A80>
    26d0:	02202025 	move	a0,s1
    26d4:	8fa50030 	lw	a1,48(sp)
    26d8:	8fa6002c 	lw	a2,44(sp)
    26dc:	0c000000 	jal	0 <func_80B18A80>
    26e0:	02202025 	move	a0,s1
    26e4:	8fbf0024 	lw	ra,36(sp)
    26e8:	8fb0001c 	lw	s0,28(sp)
    26ec:	8fb10020 	lw	s1,32(sp)
    26f0:	03e00008 	jr	ra
    26f4:	27bd0048 	addiu	sp,sp,72

000026f8 <func_80B1B178>:
    26f8:	27bdffd0 	addiu	sp,sp,-48
    26fc:	afb00028 	sw	s0,40(sp)
    2700:	24010008 	li	at,8
    2704:	00a08025 	move	s0,a1
    2708:	afbf002c 	sw	ra,44(sp)
    270c:	afa40030 	sw	a0,48(sp)
    2710:	afa60038 	sw	a2,56(sp)
    2714:	10a1000c 	beq	a1,at,2748 <func_80B1B178+0x50>
    2718:	afa7003c 	sw	a3,60(sp)
    271c:	2401000d 	li	at,13
    2720:	10a10010 	beq	a1,at,2764 <func_80B1B178+0x6c>
    2724:	3c040000 	lui	a0,0x0
    2728:	24010012 	li	at,18
    272c:	10a10013 	beq	a1,at,277c <func_80B1B178+0x84>
    2730:	3c040000 	lui	a0,0x0
    2734:	24010017 	li	at,23
    2738:	10a10016 	beq	a1,at,2794 <func_80B1B178+0x9c>
    273c:	3c040000 	lui	a0,0x0
    2740:	10000019 	b	27a8 <func_80B1B178+0xb0>
    2744:	8fa40040 	lw	a0,64(sp)
    2748:	8fa50040 	lw	a1,64(sp)
    274c:	3c040000 	lui	a0,0x0
    2750:	24840000 	addiu	a0,a0,0
    2754:	0c000000 	jal	0 <func_80B18A80>
    2758:	24a50360 	addiu	a1,a1,864
    275c:	10000012 	b	27a8 <func_80B1B178+0xb0>
    2760:	8fa40040 	lw	a0,64(sp)
    2764:	8fa50040 	lw	a1,64(sp)
    2768:	24840000 	addiu	a0,a0,0
    276c:	0c000000 	jal	0 <func_80B18A80>
    2770:	24a50354 	addiu	a1,a1,852
    2774:	1000000c 	b	27a8 <func_80B1B178+0xb0>
    2778:	8fa40040 	lw	a0,64(sp)
    277c:	8fa50040 	lw	a1,64(sp)
    2780:	24840000 	addiu	a0,a0,0
    2784:	0c000000 	jal	0 <func_80B18A80>
    2788:	24a5036c 	addiu	a1,a1,876
    278c:	10000006 	b	27a8 <func_80B1B178+0xb0>
    2790:	8fa40040 	lw	a0,64(sp)
    2794:	8fa50040 	lw	a1,64(sp)
    2798:	24840000 	addiu	a0,a0,0
    279c:	0c000000 	jal	0 <func_80B18A80>
    27a0:	24a50348 	addiu	a1,a1,840
    27a4:	8fa40040 	lw	a0,64(sp)
    27a8:	8faf0038 	lw	t7,56(sp)
    27ac:	240e0018 	li	t6,24
    27b0:	2418ffff 	li	t8,-1
    27b4:	afb80018 	sw	t8,24(sp)
    27b8:	afae0010 	sw	t6,16(sp)
    27bc:	02002825 	move	a1,s0
    27c0:	00003025 	move	a2,zero
    27c4:	24070018 	li	a3,24
    27c8:	248402c4 	addiu	a0,a0,708
    27cc:	0c000000 	jal	0 <func_80B18A80>
    27d0:	afaf0014 	sw	t7,20(sp)
    27d4:	8fbf002c 	lw	ra,44(sp)
    27d8:	8fb00028 	lw	s0,40(sp)
    27dc:	27bd0030 	addiu	sp,sp,48
    27e0:	03e00008 	jr	ra
    27e4:	00000000 	nop

000027e8 <EnTite_Draw>:
    27e8:	27bdff78 	addiu	sp,sp,-136
    27ec:	afbf003c 	sw	ra,60(sp)
    27f0:	afb00038 	sw	s0,56(sp)
    27f4:	afa5008c 	sw	a1,140(sp)
    27f8:	8ca50000 	lw	a1,0(a1)
    27fc:	00808025 	move	s0,a0
    2800:	3c060000 	lui	a2,0x0
    2804:	24c60000 	addiu	a2,a2,0
    2808:	27a40070 	addiu	a0,sp,112
    280c:	240706a8 	li	a3,1704
    2810:	0c000000 	jal	0 <func_80B18A80>
    2814:	afa50080 	sw	a1,128(sp)
    2818:	8faf008c 	lw	t7,140(sp)
    281c:	0c000000 	jal	0 <func_80B18A80>
    2820:	8de40000 	lw	a0,0(t7)
    2824:	00002025 	move	a0,zero
    2828:	0c000000 	jal	0 <func_80B18A80>
    282c:	260502e8 	addiu	a1,s0,744
    2830:	8618001c 	lh	t8,28(s0)
    2834:	2401fffe 	li	at,-2
    2838:	8fa80080 	lw	t0,128(sp)
    283c:	1701003a 	bne	t8,at,2928 <EnTite_Draw+0x140>
    2840:	3c050000 	lui	a1,0x0
    2844:	8d0202c0 	lw	v0,704(t0)
    2848:	3c040600 	lui	a0,0x600
    284c:	24841300 	addiu	a0,a0,4864
    2850:	00045100 	sll	t2,a0,0x4
    2854:	000a5f02 	srl	t3,t2,0x1c
    2858:	3c050000 	lui	a1,0x0
    285c:	3c09db06 	lui	t1,0xdb06
    2860:	24590008 	addiu	t9,v0,8
    2864:	ad1902c0 	sw	t9,704(t0)
    2868:	35290020 	ori	t1,t1,0x20
    286c:	24a50000 	addiu	a1,a1,0
    2870:	000b6080 	sll	t4,t3,0x2
    2874:	00ac6821 	addu	t5,a1,t4
    2878:	ac490000 	sw	t1,0(v0)
    287c:	8dae0000 	lw	t6,0(t5)
    2880:	3c0600ff 	lui	a2,0xff
    2884:	34c6ffff 	ori	a2,a2,0xffff
    2888:	00867824 	and	t7,a0,a2
    288c:	3c078000 	lui	a3,0x8000
    2890:	01cfc021 	addu	t8,t6,t7
    2894:	0307c821 	addu	t9,t8,a3
    2898:	ac590004 	sw	t9,4(v0)
    289c:	8d0202c0 	lw	v0,704(t0)
    28a0:	3c040600 	lui	a0,0x600
    28a4:	24841700 	addiu	a0,a0,5888
    28a8:	00045900 	sll	t3,a0,0x4
    28ac:	000b6702 	srl	t4,t3,0x1c
    28b0:	3c0adb06 	lui	t2,0xdb06
    28b4:	24490008 	addiu	t1,v0,8
    28b8:	ad0902c0 	sw	t1,704(t0)
    28bc:	354a0024 	ori	t2,t2,0x24
    28c0:	000c6880 	sll	t5,t4,0x2
    28c4:	00ad7021 	addu	t6,a1,t5
    28c8:	ac4a0000 	sw	t2,0(v0)
    28cc:	8dcf0000 	lw	t7,0(t6)
    28d0:	0086c024 	and	t8,a0,a2
    28d4:	3c040600 	lui	a0,0x600
    28d8:	01f8c821 	addu	t9,t7,t8
    28dc:	03274821 	addu	t1,t9,a3
    28e0:	ac490004 	sw	t1,4(v0)
    28e4:	8d0202c0 	lw	v0,704(t0)
    28e8:	24841900 	addiu	a0,a0,6400
    28ec:	00046100 	sll	t4,a0,0x4
    28f0:	000c6f02 	srl	t5,t4,0x1c
    28f4:	3c0bdb06 	lui	t3,0xdb06
    28f8:	244a0008 	addiu	t2,v0,8
    28fc:	ad0a02c0 	sw	t2,704(t0)
    2900:	356b0028 	ori	t3,t3,0x28
    2904:	000d7080 	sll	t6,t5,0x2
    2908:	00ae7821 	addu	t7,a1,t6
    290c:	ac4b0000 	sw	t3,0(v0)
    2910:	8df80000 	lw	t8,0(t7)
    2914:	0086c824 	and	t9,a0,a2
    2918:	03194821 	addu	t1,t8,t9
    291c:	01275021 	addu	t2,t1,a3
    2920:	10000038 	b	2a04 <EnTite_Draw+0x21c>
    2924:	ac4a0004 	sw	t2,4(v0)
    2928:	8d0202c0 	lw	v0,704(t0)
    292c:	3c040600 	lui	a0,0x600
    2930:	24841b00 	addiu	a0,a0,6912
    2934:	00046900 	sll	t5,a0,0x4
    2938:	000d7702 	srl	t6,t5,0x1c
    293c:	3c0cdb06 	lui	t4,0xdb06
    2940:	244b0008 	addiu	t3,v0,8
    2944:	24a50000 	addiu	a1,a1,0
    2948:	ad0b02c0 	sw	t3,704(t0)
    294c:	358c0020 	ori	t4,t4,0x20
    2950:	000e7880 	sll	t7,t6,0x2
    2954:	00afc021 	addu	t8,a1,t7
    2958:	ac4c0000 	sw	t4,0(v0)
    295c:	8f190000 	lw	t9,0(t8)
    2960:	3c0600ff 	lui	a2,0xff
    2964:	34c6ffff 	ori	a2,a2,0xffff
    2968:	00864824 	and	t1,a0,a2
    296c:	3c078000 	lui	a3,0x8000
    2970:	03295021 	addu	t2,t9,t1
    2974:	01475821 	addu	t3,t2,a3
    2978:	ac4b0004 	sw	t3,4(v0)
    297c:	8d0202c0 	lw	v0,704(t0)
    2980:	3c040600 	lui	a0,0x600
    2984:	24841f00 	addiu	a0,a0,7936
    2988:	00047100 	sll	t6,a0,0x4
    298c:	000e7f02 	srl	t7,t6,0x1c
    2990:	3c0ddb06 	lui	t5,0xdb06
    2994:	244c0008 	addiu	t4,v0,8
    2998:	ad0c02c0 	sw	t4,704(t0)
    299c:	35ad0024 	ori	t5,t5,0x24
    29a0:	000fc080 	sll	t8,t7,0x2
    29a4:	00b8c821 	addu	t9,a1,t8
    29a8:	ac4d0000 	sw	t5,0(v0)
    29ac:	8f290000 	lw	t1,0(t9)
    29b0:	00865024 	and	t2,a0,a2
    29b4:	3c040600 	lui	a0,0x600
    29b8:	012a5821 	addu	t3,t1,t2
    29bc:	01676021 	addu	t4,t3,a3
    29c0:	ac4c0004 	sw	t4,4(v0)
    29c4:	8d0202c0 	lw	v0,704(t0)
    29c8:	24842100 	addiu	a0,a0,8448
    29cc:	00047900 	sll	t7,a0,0x4
    29d0:	000fc702 	srl	t8,t7,0x1c
    29d4:	3c0edb06 	lui	t6,0xdb06
    29d8:	244d0008 	addiu	t5,v0,8
    29dc:	ad0d02c0 	sw	t5,704(t0)
    29e0:	35ce0028 	ori	t6,t6,0x28
    29e4:	0018c880 	sll	t9,t8,0x2
    29e8:	00b94821 	addu	t1,a1,t9
    29ec:	ac4e0000 	sw	t6,0(v0)
    29f0:	8d2a0000 	lw	t2,0(t1)
    29f4:	00865824 	and	t3,a0,a2
    29f8:	014b6021 	addu	t4,t2,t3
    29fc:	01876821 	addu	t5,t4,a3
    2a00:	ac4d0004 	sw	t5,4(v0)
    2a04:	3c0e0000 	lui	t6,0x0
    2a08:	25ce0000 	addiu	t6,t6,0
    2a0c:	8e050150 	lw	a1,336(s0)
    2a10:	8e06016c 	lw	a2,364(s0)
    2a14:	afb00014 	sw	s0,20(sp)
    2a18:	afae0010 	sw	t6,16(sp)
    2a1c:	8fa4008c 	lw	a0,140(sp)
    2a20:	0c000000 	jal	0 <func_80B18A80>
    2a24:	00003825 	move	a3,zero
    2a28:	8faf008c 	lw	t7,140(sp)
    2a2c:	3c060000 	lui	a2,0x0
    2a30:	24c60000 	addiu	a2,a2,0
    2a34:	27a40070 	addiu	a0,sp,112
    2a38:	240706c7 	li	a3,1735
    2a3c:	0c000000 	jal	0 <func_80B18A80>
    2a40:	8de50000 	lw	a1,0(t7)
    2a44:	921802e3 	lbu	t8,739(s0)
    2a48:	53000032 	beqzl	t8,2b14 <EnTite_Draw+0x32c>
    2a4c:	8fbf003c 	lw	ra,60(sp)
    2a50:	920a02e3 	lbu	t2,739(s0)
    2a54:	92190114 	lbu	t9,276(s0)
    2a58:	3c0e0000 	lui	t6,0x0
    2a5c:	254bffff 	addiu	t3,t2,-1
    2a60:	316800ff 	andi	t0,t3,0xff
    2a64:	310c0003 	andi	t4,t0,0x3
    2a68:	27290001 	addiu	t1,t9,1
    2a6c:	a2090114 	sb	t1,276(s0)
    2a70:	15800027 	bnez	t4,2b10 <EnTite_Draw+0x328>
    2a74:	a20b02e3 	sb	t3,739(s0)
    2a78:	00081883 	sra	v1,t0,0x2
    2a7c:	00036880 	sll	t5,v1,0x2
    2a80:	01a36823 	subu	t5,t5,v1
    2a84:	000d6880 	sll	t5,t5,0x2
    2a88:	25ce0000 	addiu	t6,t6,0
    2a8c:	01ae1021 	addu	v0,t5,t6
    2a90:	c4440000 	lwc1	$f4,0(v0)
    2a94:	c6060024 	lwc1	$f6,36(s0)
    2a98:	c44a0004 	lwc1	$f10,4(v0)
    2a9c:	3c013f80 	lui	at,0x3f80
    2aa0:	46062200 	add.s	$f8,$f4,$f6
    2aa4:	c4440008 	lwc1	$f4,8(v0)
    2aa8:	240f0096 	li	t7,150
    2aac:	24180096 	li	t8,150
    2ab0:	e7a8004c 	swc1	$f8,76(sp)
    2ab4:	c6100028 	lwc1	$f16,40(s0)
    2ab8:	241900fa 	li	t9,250
    2abc:	240900eb 	li	t1,235
    2ac0:	46105480 	add.s	$f18,$f10,$f16
    2ac4:	44815000 	mtc1	at,$f10
    2ac8:	240a00f5 	li	t2,245
    2acc:	240b00ff 	li	t3,255
    2ad0:	e7b20050 	swc1	$f18,80(sp)
    2ad4:	c606002c 	lwc1	$f6,44(s0)
    2ad8:	afab0024 	sw	t3,36(sp)
    2adc:	afaa0020 	sw	t2,32(sp)
    2ae0:	46062200 	add.s	$f8,$f4,$f6
    2ae4:	afa9001c 	sw	t1,28(sp)
    2ae8:	afb90018 	sw	t9,24(sp)
    2aec:	afb80014 	sw	t8,20(sp)
    2af0:	e7a80054 	swc1	$f8,84(sp)
    2af4:	afaf0010 	sw	t7,16(sp)
    2af8:	8fa4008c 	lw	a0,140(sp)
    2afc:	02002825 	move	a1,s0
    2b00:	27a6004c 	addiu	a2,sp,76
    2b04:	24070096 	li	a3,150
    2b08:	0c000000 	jal	0 <func_80B18A80>
    2b0c:	e7aa0028 	swc1	$f10,40(sp)
    2b10:	8fbf003c 	lw	ra,60(sp)
    2b14:	8fb00038 	lw	s0,56(sp)
    2b18:	27bd0088 	addiu	sp,sp,136
    2b1c:	03e00008 	jr	ra
    2b20:	00000000 	nop
	...
