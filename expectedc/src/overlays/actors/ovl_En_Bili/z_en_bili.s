
build/src/overlays/actors/ovl_En_Bili/z_en_bili.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBili_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnBili_Init>
      1c:	24a50000 	addiu	a1,a1,0
      20:	3c060000 	lui	a2,0x0
      24:	24c60000 	addiu	a2,a2,0
      28:	260400b4 	addiu	a0,s0,180
      2c:	24050000 	li	a1,0
      30:	0c000000 	jal	0 <EnBili_Init>
      34:	3c074188 	lui	a3,0x4188
      38:	240e009b 	li	t6,155
      3c:	a20e00c8 	sb	t6,200(s0)
      40:	3c060600 	lui	a2,0x600
      44:	3c070600 	lui	a3,0x600
      48:	260f0198 	addiu	t7,s0,408
      4c:	261801b6 	addiu	t8,s0,438
      50:	24190005 	li	t9,5
      54:	afb90018 	sw	t9,24(sp)
      58:	afb80014 	sw	t8,20(sp)
      5c:	afaf0010 	sw	t7,16(sp)
      60:	24e700a4 	addiu	a3,a3,164
      64:	24c65848 	addiu	a2,a2,22600
      68:	8fa4003c 	lw	a0,60(sp)
      6c:	0c000000 	jal	0 <EnBili_Init>
      70:	2605014c 	addiu	a1,s0,332
      74:	260501d4 	addiu	a1,s0,468
      78:	afa50030 	sw	a1,48(sp)
      7c:	0c000000 	jal	0 <EnBili_Init>
      80:	8fa4003c 	lw	a0,60(sp)
      84:	3c070000 	lui	a3,0x0
      88:	8fa50030 	lw	a1,48(sp)
      8c:	24e70000 	addiu	a3,a3,0
      90:	8fa4003c 	lw	a0,60(sp)
      94:	0c000000 	jal	0 <EnBili_Init>
      98:	02003025 	move	a2,s0
      9c:	3c050000 	lui	a1,0x0
      a0:	3c060000 	lui	a2,0x0
      a4:	24c60000 	addiu	a2,a2,0
      a8:	24a50000 	addiu	a1,a1,0
      ac:	0c000000 	jal	0 <EnBili_Init>
      b0:	26040098 	addiu	a0,s0,152
      b4:	8608001c 	lh	t0,28(s0)
      b8:	2401ffff 	li	at,-1
      bc:	a2000195 	sb	zero,405(s0)
      c0:	15010005 	bne	t0,at,d8 <EnBili_Init+0xd8>
      c4:	00000000 	nop
      c8:	0c000000 	jal	0 <EnBili_Init>
      cc:	02002025 	move	a0,s0
      d0:	10000004 	b	e4 <EnBili_Init+0xe4>
      d4:	8fbf002c 	lw	ra,44(sp)
      d8:	0c000000 	jal	0 <EnBili_Init>
      dc:	02002025 	move	a0,s0
      e0:	8fbf002c 	lw	ra,44(sp)
      e4:	8fb00028 	lw	s0,40(sp)
      e8:	27bd0038 	addiu	sp,sp,56
      ec:	03e00008 	jr	ra
      f0:	00000000 	nop

000000f4 <EnBili_Destroy>:
      f4:	27bdffe8 	addiu	sp,sp,-24
      f8:	00803025 	move	a2,a0
      fc:	afbf0014 	sw	ra,20(sp)
     100:	00a02025 	move	a0,a1
     104:	0c000000 	jal	0 <EnBili_Init>
     108:	24c501d4 	addiu	a1,a2,468
     10c:	8fbf0014 	lw	ra,20(sp)
     110:	27bd0018 	addiu	sp,sp,24
     114:	03e00008 	jr	ra
     118:	00000000 	nop

0000011c <func_809BF9BC>:
     11c:	3c010000 	lui	at,0x0
     120:	c4240000 	lwc1	$f4,0(at)
     124:	909801e4 	lbu	t8,484(a0)
     128:	908801e5 	lbu	t0,485(a0)
     12c:	44800000 	mtc1	zero,$f0
     130:	c4860028 	lwc1	$f6,40(a0)
     134:	3c0a0000 	lui	t2,0x0
     138:	240e0001 	li	t6,1
     13c:	240f0020 	li	t7,32
     140:	254a0000 	addiu	t2,t2,0
     144:	37190001 	ori	t9,t8,0x1
     148:	35090001 	ori	t1,t0,0x1
     14c:	a08e01f8 	sb	t6,504(a0)
     150:	a48f0196 	sh	t7,406(a0)
     154:	a09901e4 	sb	t9,484(a0)
     158:	a08901e5 	sb	t1,485(a0)
     15c:	ac8a0190 	sw	t2,400(a0)
     160:	e4840068 	swc1	$f4,104(a0)
     164:	e486000c 	swc1	$f6,12(a0)
     168:	e480006c 	swc1	$f0,108(a0)
     16c:	03e00008 	jr	ra
     170:	e4800060 	swc1	$f0,96(a0)

00000174 <func_809BFA14>:
     174:	27bdffe8 	addiu	sp,sp,-24
     178:	afbf0014 	sw	ra,20(sp)
     17c:	00803025 	move	a2,a0
     180:	3c050600 	lui	a1,0x600
     184:	24a500a4 	addiu	a1,a1,164
     188:	afa60018 	sw	a2,24(sp)
     18c:	0c000000 	jal	0 <EnBili_Init>
     190:	2484014c 	addiu	a0,a0,332
     194:	8fa60018 	lw	a2,24(sp)
     198:	3c0140c0 	lui	at,0x40c0
     19c:	44812000 	mtc1	at,$f4
     1a0:	240e0019 	li	t6,25
     1a4:	3c010000 	lui	at,0x0
     1a8:	a4ce0196 	sh	t6,406(a2)
     1ac:	e4c40060 	swc1	$f4,96(a2)
     1b0:	c4260000 	lwc1	$f6,0(at)
     1b4:	90cf01e4 	lbu	t7,484(a2)
     1b8:	3c014040 	lui	at,0x4040
     1bc:	44814000 	mtc1	at,$f8
     1c0:	3c190000 	lui	t9,0x0
     1c4:	27390000 	addiu	t9,t9,0
     1c8:	31f8fffe 	andi	t8,t7,0xfffe
     1cc:	a0d801e4 	sb	t8,484(a2)
     1d0:	acd90190 	sw	t9,400(a2)
     1d4:	e4c6006c 	swc1	$f6,108(a2)
     1d8:	e4c80068 	swc1	$f8,104(a2)
     1dc:	8fbf0014 	lw	ra,20(sp)
     1e0:	27bd0018 	addiu	sp,sp,24
     1e4:	03e00008 	jr	ra
     1e8:	00000000 	nop

000001ec <func_809BFA8C>:
     1ec:	27bdffe8 	addiu	sp,sp,-24
     1f0:	afbf0014 	sw	ra,20(sp)
     1f4:	00803025 	move	a2,a0
     1f8:	3c050600 	lui	a1,0x600
     1fc:	24a50024 	addiu	a1,a1,36
     200:	afa60018 	sw	a2,24(sp)
     204:	0c000000 	jal	0 <EnBili_Init>
     208:	2484014c 	addiu	a0,a0,332
     20c:	8fa60018 	lw	a2,24(sp)
     210:	3c01bf80 	lui	at,0xbf80
     214:	44802000 	mtc1	zero,$f4
     218:	44813000 	mtc1	at,$f6
     21c:	3c0f0000 	lui	t7,0x0
     220:	240e000a 	li	t6,10
     224:	25ef0000 	addiu	t7,t7,0
     228:	a4ce0196 	sh	t6,406(a2)
     22c:	accf0190 	sw	t7,400(a2)
     230:	e4c40068 	swc1	$f4,104(a2)
     234:	e4c60060 	swc1	$f6,96(a2)
     238:	8fbf0014 	lw	ra,20(sp)
     23c:	27bd0018 	addiu	sp,sp,24
     240:	03e00008 	jr	ra
     244:	00000000 	nop

00000248 <func_809BFAE8>:
     248:	27bdffe8 	addiu	sp,sp,-24
     24c:	afbf0014 	sw	ra,20(sp)
     250:	00803025 	move	a2,a0
     254:	3c050600 	lui	a1,0x600
     258:	24a50064 	addiu	a1,a1,100
     25c:	afa60018 	sw	a2,24(sp)
     260:	0c000000 	jal	0 <EnBili_Init>
     264:	2484014c 	addiu	a0,a0,332
     268:	8fa60018 	lw	a2,24(sp)
     26c:	44800000 	mtc1	zero,$f0
     270:	3c180000 	lui	t8,0x0
     274:	90ce01e4 	lbu	t6,484(a2)
     278:	27180000 	addiu	t8,t8,0
     27c:	acd80190 	sw	t8,400(a2)
     280:	31cffffe 	andi	t7,t6,0xfffe
     284:	a0cf01e4 	sb	t7,484(a2)
     288:	e4c00068 	swc1	$f0,104(a2)
     28c:	e4c00060 	swc1	$f0,96(a2)
     290:	8fbf0014 	lw	ra,20(sp)
     294:	27bd0018 	addiu	sp,sp,24
     298:	03e00008 	jr	ra
     29c:	00000000 	nop

000002a0 <func_809BFB40>:
     2a0:	3c010000 	lui	at,0x0
     2a4:	c4240000 	lwc1	$f4,0(at)
     2a8:	3c0e0000 	lui	t6,0x0
     2ac:	25ce0000 	addiu	t6,t6,0
     2b0:	ac8e0190 	sw	t6,400(a0)
     2b4:	03e00008 	jr	ra
     2b8:	e4840068 	swc1	$f4,104(a0)

000002bc <func_809BFB5C>:
     2bc:	27bdffe8 	addiu	sp,sp,-24
     2c0:	afbf0014 	sw	ra,20(sp)
     2c4:	00803025 	move	a2,a0
     2c8:	3c050600 	lui	a1,0x600
     2cc:	24a500a4 	addiu	a1,a1,164
     2d0:	afa60018 	sw	a2,24(sp)
     2d4:	0c000000 	jal	0 <EnBili_Init>
     2d8:	2484014c 	addiu	a0,a0,332
     2dc:	8fa60018 	lw	a2,24(sp)
     2e0:	240e0060 	li	t6,96
     2e4:	3c010000 	lui	at,0x0
     2e8:	a4ce0196 	sh	t6,406(a2)
     2ec:	c4240000 	lwc1	$f4,0(at)
     2f0:	90cf01e4 	lbu	t7,484(a2)
     2f4:	c4c60028 	lwc1	$f6,40(a2)
     2f8:	3c190000 	lui	t9,0x0
     2fc:	27390000 	addiu	t9,t9,0
     300:	35f80001 	ori	t8,t7,0x1
     304:	a0d801e4 	sb	t8,484(a2)
     308:	acd90190 	sw	t9,400(a2)
     30c:	e4c40068 	swc1	$f4,104(a2)
     310:	e4c6000c 	swc1	$f6,12(a2)
     314:	8fbf0014 	lw	ra,20(sp)
     318:	27bd0018 	addiu	sp,sp,24
     31c:	03e00008 	jr	ra
     320:	00000000 	nop

00000324 <func_809BFBC4>:
     324:	27bdffe0 	addiu	sp,sp,-32
     328:	afbf001c 	sw	ra,28(sp)
     32c:	afb00018 	sw	s0,24(sp)
     330:	8c8e0154 	lw	t6,340(a0)
     334:	3c050600 	lui	a1,0x600
     338:	24a500a4 	addiu	a1,a1,164
     33c:	10ae0003 	beq	a1,t6,34c <func_809BFBC4+0x28>
     340:	00808025 	move	s0,a0
     344:	0c000000 	jal	0 <EnBili_Init>
     348:	2484014c 	addiu	a0,a0,332
     34c:	8e0501dc 	lw	a1,476(s0)
     350:	02002025 	move	a0,s0
     354:	0c000000 	jal	0 <EnBili_Init>
     358:	24a50100 	addiu	a1,a1,256
     35c:	8e0501dc 	lw	a1,476(s0)
     360:	34018000 	li	at,0x8000
     364:	00417821 	addu	t7,v0,at
     368:	a60f0032 	sh	t7,50(s0)
     36c:	02002025 	move	a0,s0
     370:	0c000000 	jal	0 <EnBili_Init>
     374:	24a50100 	addiu	a1,a1,256
     378:	3c0140a0 	lui	at,0x40a0
     37c:	44812000 	mtc1	at,$f4
     380:	3c180000 	lui	t8,0x0
     384:	27180000 	addiu	t8,t8,0
     388:	a6020030 	sh	v0,48(s0)
     38c:	ae180190 	sw	t8,400(s0)
     390:	e6040068 	swc1	$f4,104(s0)
     394:	8fbf001c 	lw	ra,28(sp)
     398:	8fb00018 	lw	s0,24(sp)
     39c:	27bd0020 	addiu	sp,sp,32
     3a0:	03e00008 	jr	ra
     3a4:	00000000 	nop

000003a8 <func_809BFC48>:
     3a8:	27bdffd8 	addiu	sp,sp,-40
     3ac:	afbf0024 	sw	ra,36(sp)
     3b0:	afb00020 	sw	s0,32(sp)
     3b4:	8c8f0190 	lw	t7,400(a0)
     3b8:	3c0e0000 	lui	t6,0x0
     3bc:	25ce0000 	addiu	t6,t6,0
     3c0:	15cf0005 	bne	t6,t7,3d8 <func_809BFC48+0x30>
     3c4:	00808025 	move	s0,a0
     3c8:	3c050600 	lui	a1,0x600
     3cc:	24a500a4 	addiu	a1,a1,164
     3d0:	0c000000 	jal	0 <EnBili_Init>
     3d4:	2484014c 	addiu	a0,a0,332
     3d8:	921901e4 	lbu	t9,484(s0)
     3dc:	920901e5 	lbu	t1,485(s0)
     3e0:	8e0b0004 	lw	t3,4(s0)
     3e4:	44802000 	mtc1	zero,$f4
     3e8:	24180014 	li	t8,20
     3ec:	3328fffe 	andi	t0,t9,0xfffe
     3f0:	312afffe 	andi	t2,t1,0xfffe
     3f4:	356c0010 	ori	t4,t3,0x10
     3f8:	a6180196 	sh	t8,406(s0)
     3fc:	a20801e4 	sb	t0,484(s0)
     400:	a20a01e5 	sb	t2,485(s0)
     404:	ae0c0004 	sw	t4,4(s0)
     408:	240d0014 	li	t5,20
     40c:	e6040068 	swc1	$f4,104(s0)
     410:	afad0010 	sw	t5,16(sp)
     414:	02002025 	move	a0,s0
     418:	24054000 	li	a1,16384
     41c:	240600c8 	li	a2,200
     420:	0c000000 	jal	0 <EnBili_Init>
     424:	24072000 	li	a3,8192
     428:	3c0e0000 	lui	t6,0x0
     42c:	25ce0000 	addiu	t6,t6,0
     430:	ae0e0190 	sw	t6,400(s0)
     434:	8fbf0024 	lw	ra,36(sp)
     438:	8fb00020 	lw	s0,32(sp)
     43c:	27bd0028 	addiu	sp,sp,40
     440:	03e00008 	jr	ra
     444:	00000000 	nop

00000448 <func_809BFCE8>:
     448:	8c8f0004 	lw	t7,4(a0)
     44c:	44802000 	mtc1	zero,$f4
     450:	2401fffe 	li	at,-2
     454:	3c190000 	lui	t9,0x0
     458:	240e0012 	li	t6,18
     45c:	27390000 	addiu	t9,t9,0
     460:	01e1c024 	and	t8,t7,at
     464:	a48e0196 	sh	t6,406(a0)
     468:	ac980004 	sw	t8,4(a0)
     46c:	ac990190 	sw	t9,400(a0)
     470:	03e00008 	jr	ra
     474:	e4840068 	swc1	$f4,104(a0)

00000478 <func_809BFD18>:
     478:	27bdffe0 	addiu	sp,sp,-32
     47c:	afbf001c 	sw	ra,28(sp)
     480:	3c01bf80 	lui	at,0xbf80
     484:	44812000 	mtc1	at,$f4
     488:	44803000 	mtc1	zero,$f6
     48c:	240e0050 	li	t6,80
     490:	a48e0196 	sh	t6,406(a0)
     494:	a08001f8 	sb	zero,504(a0)
     498:	240f0050 	li	t7,80
     49c:	e484006c 	swc1	$f4,108(a0)
     4a0:	e4860068 	swc1	$f6,104(a0)
     4a4:	afa40020 	sw	a0,32(sp)
     4a8:	afaf0010 	sw	t7,16(sp)
     4ac:	00002825 	move	a1,zero
     4b0:	24060096 	li	a2,150
     4b4:	0c000000 	jal	0 <EnBili_Init>
     4b8:	24072000 	li	a3,8192
     4bc:	8fa40020 	lw	a0,32(sp)
     4c0:	0c000000 	jal	0 <EnBili_Init>
     4c4:	2405389e 	li	a1,14494
     4c8:	8fa40020 	lw	a0,32(sp)
     4cc:	3c080000 	lui	t0,0x0
     4d0:	25080000 	addiu	t0,t0,0
     4d4:	909801e4 	lbu	t8,484(a0)
     4d8:	ac880190 	sw	t0,400(a0)
     4dc:	3319fffe 	andi	t9,t8,0xfffe
     4e0:	a09901e4 	sb	t9,484(a0)
     4e4:	8fbf001c 	lw	ra,28(sp)
     4e8:	27bd0020 	addiu	sp,sp,32
     4ec:	03e00008 	jr	ra
     4f0:	00000000 	nop

000004f4 <func_809BFD94>:
     4f4:	27bdff70 	addiu	sp,sp,-144
     4f8:	afbf0074 	sw	ra,116(sp)
     4fc:	afb40070 	sw	s4,112(sp)
     500:	afb3006c 	sw	s3,108(sp)
     504:	afb20068 	sw	s2,104(sp)
     508:	afb10064 	sw	s1,100(sp)
     50c:	afb00060 	sw	s0,96(sp)
     510:	f7bc0058 	sdc1	$f28,88(sp)
     514:	f7ba0050 	sdc1	$f26,80(sp)
     518:	f7b80048 	sdc1	$f24,72(sp)
     51c:	f7b60040 	sdc1	$f22,64(sp)
     520:	f7b40038 	sdc1	$f20,56(sp)
     524:	8c8e0004 	lw	t6,4(a0)
     528:	44803000 	mtc1	zero,$f6
     52c:	00808825 	move	s1,a0
     530:	31cf8000 	andi	t7,t6,0x8000
     534:	15e00005 	bnez	t7,54c <func_809BFD94+0x58>
     538:	00a0a025 	move	s4,a1
     53c:	3c01bf80 	lui	at,0xbf80
     540:	44812000 	mtc1	at,$f4
     544:	00000000 	nop
     548:	e484006c 	swc1	$f4,108(a0)
     54c:	3c014170 	lui	at,0x4170
     550:	44815000 	mtc1	at,$f10
     554:	e6260060 	swc1	$f6,96(s1)
     558:	3c010000 	lui	at,0x0
     55c:	c43c0000 	lwc1	$f28,0(at)
     560:	3c010000 	lui	at,0x0
     564:	c6280028 	lwc1	$f8,40(s1)
     568:	c43a0000 	lwc1	$f26,0(at)
     56c:	3c014020 	lui	at,0x4020
     570:	4481c000 	mtc1	at,$f24
     574:	460a4401 	sub.s	$f16,$f8,$f10
     578:	3c01c0e0 	lui	at,0xc0e0
     57c:	4481b000 	mtc1	at,$f22
     580:	3c0140e0 	lui	at,0x40e0
     584:	4481a000 	mtc1	at,$f20
     588:	e7b00084 	swc1	$f16,132(sp)
     58c:	00008025 	move	s0,zero
     590:	24130008 	li	s3,8
     594:	27b20080 	addiu	s2,sp,128
     598:	32180001 	andi	t8,s0,0x1
     59c:	53000004 	beqzl	t8,5b0 <func_809BFD94+0xbc>
     5a0:	4600b006 	mov.s	$f0,$f22
     5a4:	10000002 	b	5b0 <func_809BFD94+0xbc>
     5a8:	4600a006 	mov.s	$f0,$f20
     5ac:	4600b006 	mov.s	$f0,$f22
     5b0:	c6320024 	lwc1	$f18,36(s1)
     5b4:	c7a60084 	lwc1	$f6,132(sp)
     5b8:	32190004 	andi	t9,s0,0x4
     5bc:	46120100 	add.s	$f4,$f0,$f18
     5c0:	46183200 	add.s	$f8,$f6,$f24
     5c4:	e7a40080 	swc1	$f4,128(sp)
     5c8:	13200003 	beqz	t9,5d8 <func_809BFD94+0xe4>
     5cc:	e7a80084 	swc1	$f8,132(sp)
     5d0:	10000002 	b	5dc <func_809BFD94+0xe8>
     5d4:	4600a006 	mov.s	$f0,$f20
     5d8:	4600b006 	mov.s	$f0,$f22
     5dc:	c62a002c 	lwc1	$f10,44(s1)
     5e0:	460a0400 	add.s	$f16,$f0,$f10
     5e4:	0c000000 	jal	0 <EnBili_Init>
     5e8:	e7b00088 	swc1	$f16,136(sp)
     5ec:	461a0482 	mul.s	$f18,$f0,$f26
     5f0:	24080096 	li	t0,150
     5f4:	24090096 	li	t1,150
     5f8:	240a00fa 	li	t2,250
     5fc:	240b00eb 	li	t3,235
     600:	240c00f5 	li	t4,245
     604:	240d00ff 	li	t5,255
     608:	461c9100 	add.s	$f4,$f18,$f28
     60c:	afad0024 	sw	t5,36(sp)
     610:	afac0020 	sw	t4,32(sp)
     614:	afab001c 	sw	t3,28(sp)
     618:	e7a40028 	swc1	$f4,40(sp)
     61c:	afaa0018 	sw	t2,24(sp)
     620:	afa90014 	sw	t1,20(sp)
     624:	afa80010 	sw	t0,16(sp)
     628:	02802025 	move	a0,s4
     62c:	02202825 	move	a1,s1
     630:	02403025 	move	a2,s2
     634:	0c000000 	jal	0 <EnBili_Init>
     638:	24070096 	li	a3,150
     63c:	26100001 	addiu	s0,s0,1
     640:	5613ffd6 	bnel	s0,s3,59c <func_809BFD94+0xa8>
     644:	32180001 	andi	t8,s0,0x1
     648:	44803000 	mtc1	zero,$f6
     64c:	240e000a 	li	t6,10
     650:	02202025 	move	a0,s1
     654:	e6260068 	swc1	$f6,104(s1)
     658:	afae0010 	sw	t6,16(sp)
     65c:	00002825 	move	a1,zero
     660:	24060096 	li	a2,150
     664:	0c000000 	jal	0 <EnBili_Init>
     668:	24072000 	li	a3,8192
     66c:	922f01e4 	lbu	t7,484(s1)
     670:	923901e5 	lbu	t9,485(s1)
     674:	3c0a0000 	lui	t2,0x0
     678:	2409012c 	li	t1,300
     67c:	254a0000 	addiu	t2,t2,0
     680:	31f8fffe 	andi	t8,t7,0xfffe
     684:	3328fffe 	andi	t0,t9,0xfffe
     688:	a23801e4 	sb	t8,484(s1)
     68c:	a22801e5 	sb	t0,485(s1)
     690:	a6290196 	sh	t1,406(s1)
     694:	ae2a0190 	sw	t2,400(s1)
     698:	8fbf0074 	lw	ra,116(sp)
     69c:	8fb40070 	lw	s4,112(sp)
     6a0:	8fb3006c 	lw	s3,108(sp)
     6a4:	8fb20068 	lw	s2,104(sp)
     6a8:	8fb10064 	lw	s1,100(sp)
     6ac:	8fb00060 	lw	s0,96(sp)
     6b0:	d7bc0058 	ldc1	$f28,88(sp)
     6b4:	d7ba0050 	ldc1	$f26,80(sp)
     6b8:	d7b80048 	ldc1	$f24,72(sp)
     6bc:	d7b60040 	ldc1	$f22,64(sp)
     6c0:	d7b40038 	ldc1	$f20,56(sp)
     6c4:	03e00008 	jr	ra
     6c8:	27bd0090 	addiu	sp,sp,144

000006cc <func_809BFF6C>:
     6cc:	c4840164 	lwc1	$f4,356(a0)
     6d0:	8c830190 	lw	v1,400(a0)
     6d4:	3c0f0000 	lui	t7,0x0
     6d8:	4600218d 	trunc.w.s	$f6,$f4
     6dc:	25ef0000 	addiu	t7,t7,0
     6e0:	3c090000 	lui	t1,0x0
     6e4:	24180003 	li	t8,3
     6e8:	44023000 	mfc1	v0,$f6
     6ec:	25290000 	addiu	t1,t1,0
     6f0:	00021400 	sll	v0,v0,0x10
     6f4:	15e30010 	bne	t7,v1,738 <func_809BFF6C+0x6c>
     6f8:	00021403 	sra	v0,v0,0x10
     6fc:	03021823 	subu	v1,t8,v0
     700:	00031c00 	sll	v1,v1,0x10
     704:	00031c03 	sra	v1,v1,0x10
     708:	04600003 	bltz	v1,718 <func_809BFF6C+0x4c>
     70c:	00031023 	negu	v0,v1
     710:	10000001 	b	718 <func_809BFF6C+0x4c>
     714:	00601025 	move	v0,v1
     718:	24590005 	addiu	t9,v0,5
     71c:	07210004 	bgez	t9,730 <func_809BFF6C+0x64>
     720:	33280007 	andi	t0,t9,0x7
     724:	11000002 	beqz	t0,730 <func_809BFF6C+0x64>
     728:	00000000 	nop
     72c:	2508fff8 	addiu	t0,t0,-8
     730:	03e00008 	jr	ra
     734:	a0880194 	sb	t0,404(a0)
     738:	15230029 	bne	t1,v1,7e0 <func_809BFF6C+0x114>
     73c:	00025043 	sra	t2,v0,0x1
     740:	2841000a 	slti	at,v0,10
     744:	1020000a 	beqz	at,770 <func_809BFF6C+0xa4>
     748:	00021843 	sra	v1,v0,0x1
     74c:	00031c00 	sll	v1,v1,0x10
     750:	00031c03 	sra	v1,v1,0x10
     754:	28610004 	slti	at,v1,4
     758:	14200003 	bnez	at,768 <func_809BFF6C+0x9c>
     75c:	240a0003 	li	t2,3
     760:	03e00008 	jr	ra
     764:	a08a0194 	sb	t2,404(a0)
     768:	03e00008 	jr	ra
     76c:	a0830194 	sb	v1,404(a0)
     770:	28410013 	slti	at,v0,19
     774:	1020000b 	beqz	at,7a4 <func_809BFF6C+0xd8>
     778:	240b0011 	li	t3,17
     77c:	01621823 	subu	v1,t3,v0
     780:	00031c00 	sll	v1,v1,0x10
     784:	00031c03 	sra	v1,v1,0x10
     788:	04610003 	bgez	v1,798 <func_809BFF6C+0xcc>
     78c:	00601025 	move	v0,v1
     790:	10000001 	b	798 <func_809BFF6C+0xcc>
     794:	00001025 	move	v0,zero
     798:	00026043 	sra	t4,v0,0x1
     79c:	03e00008 	jr	ra
     7a0:	a08c0194 	sb	t4,404(a0)
     7a4:	28410025 	slti	at,v0,37
     7a8:	10200009 	beqz	at,7d0 <func_809BFF6C+0x104>
     7ac:	24190028 	li	t9,40
     7b0:	240d0024 	li	t5,36
     7b4:	01a27023 	subu	t6,t5,v0
     7b8:	24010003 	li	at,3
     7bc:	01c1001a 	div	zero,t6,at
     7c0:	00007812 	mflo	t7
     7c4:	25f80002 	addiu	t8,t7,2
     7c8:	03e00008 	jr	ra
     7cc:	a0980194 	sb	t8,404(a0)
     7d0:	03224023 	subu	t0,t9,v0
     7d4:	00084843 	sra	t1,t0,0x1
     7d8:	03e00008 	jr	ra
     7dc:	a0890194 	sb	t1,404(a0)
     7e0:	a08a0194 	sb	t2,404(a0)
     7e4:	03e00008 	jr	ra
     7e8:	00000000 	nop

000007ec <func_809C008C>:
     7ec:	27bdffe8 	addiu	sp,sp,-24
     7f0:	afbf0014 	sw	ra,20(sp)
     7f4:	8c8f0190 	lw	t7,400(a0)
     7f8:	c4860094 	lwc1	$f6,148(a0)
     7fc:	c4840028 	lwc1	$f4,40(a0)
     800:	3c0e0000 	lui	t6,0x0
     804:	25ce0000 	addiu	t6,t6,0
     808:	00803825 	move	a3,a0
     80c:	15cf0005 	bne	t6,t7,824 <func_809C008C+0x38>
     810:	46062000 	add.s	$f0,$f4,$f6
     814:	3c0142c8 	lui	at,0x42c8
     818:	44817000 	mtc1	at,$f14
     81c:	10000005 	b	834 <func_809C008C+0x48>
     820:	c4e20080 	lwc1	$f2,128(a3)
     824:	3c014220 	lui	at,0x4220
     828:	44817000 	mtc1	at,$f14
     82c:	00000000 	nop
     830:	c4e20080 	lwc1	$f2,128(a3)
     834:	4600103c 	c.lt.s	$f2,$f0
     838:	00000000 	nop
     83c:	45020004 	bc1fl	850 <func_809C008C+0x64>
     840:	46001306 	mov.s	$f12,$f2
     844:	10000002 	b	850 <func_809C008C+0x64>
     848:	46000306 	mov.s	$f12,$f0
     84c:	46001306 	mov.s	$f12,$f2
     850:	460e6200 	add.s	$f8,$f12,$f14
     854:	24e4000c 	addiu	a0,a3,12
     858:	3c063f80 	lui	a2,0x3f80
     85c:	afa70018 	sw	a3,24(sp)
     860:	44054000 	mfc1	a1,$f8
     864:	0c000000 	jal	0 <EnBili_Init>
     868:	00000000 	nop
     86c:	8fa70018 	lw	a3,24(sp)
     870:	3c010000 	lui	at,0x0
     874:	c4320000 	lwc1	$f18,0(at)
     878:	84f80196 	lh	t8,406(a3)
     87c:	44985000 	mtc1	t8,$f10
     880:	00000000 	nop
     884:	46805420 	cvt.s.w	$f16,$f10
     888:	46128302 	mul.s	$f12,$f16,$f18
     88c:	0c000000 	jal	0 <EnBili_Init>
     890:	00000000 	nop
     894:	3c014040 	lui	at,0x4040
     898:	44812000 	mtc1	at,$f4
     89c:	8fa70018 	lw	a3,24(sp)
     8a0:	46040182 	mul.s	$f6,$f0,$f4
     8a4:	c4e8000c 	lwc1	$f8,12(a3)
     8a8:	94f90088 	lhu	t9,136(a3)
     8ac:	33280008 	andi	t0,t9,0x8
     8b0:	46083280 	add.s	$f10,$f6,$f8
     8b4:	11000003 	beqz	t0,8c4 <func_809C008C+0xd8>
     8b8:	e4ea0028 	swc1	$f10,40(a3)
     8bc:	84e9007e 	lh	t1,126(a3)
     8c0:	a4e90032 	sh	t1,50(a3)
     8c4:	8fbf0014 	lw	ra,20(sp)
     8c8:	27bd0018 	addiu	sp,sp,24
     8cc:	03e00008 	jr	ra
     8d0:	00000000 	nop

000008d4 <func_809C0174>:
     8d4:	27bdffe0 	addiu	sp,sp,-32
     8d8:	afb00018 	sw	s0,24(sp)
     8dc:	00808025 	move	s0,a0
     8e0:	afbf001c 	sw	ra,28(sp)
     8e4:	afa50024 	sw	a1,36(sp)
     8e8:	0c000000 	jal	0 <EnBili_Init>
     8ec:	2484014c 	addiu	a0,a0,332
     8f0:	86020196 	lh	v0,406(s0)
     8f4:	3c010000 	lui	at,0x0
     8f8:	10400003 	beqz	v0,908 <func_809C0174+0x34>
     8fc:	244effff 	addiu	t6,v0,-1
     900:	a60e0196 	sh	t6,406(s0)
     904:	86020196 	lh	v0,406(s0)
     908:	04410004 	bgez	v0,91c <func_809C0174+0x48>
     90c:	304f0003 	andi	t7,v0,0x3
     910:	11e00002 	beqz	t7,91c <func_809C0174+0x48>
     914:	00000000 	nop
     918:	25effffc 	addiu	t7,t7,-4
     91c:	15e0000c 	bnez	t7,950 <func_809C0174+0x7c>
     920:	00000000 	nop
     924:	0c000000 	jal	0 <EnBili_Init>
     928:	c42c0000 	lwc1	$f12,0(at)
     92c:	86180032 	lh	t8,50(s0)
     930:	44982000 	mtc1	t8,$f4
     934:	00000000 	nop
     938:	468021a0 	cvt.s.w	$f6,$f4
     93c:	46003200 	add.s	$f8,$f6,$f0
     940:	4600428d 	trunc.w.s	$f10,$f8
     944:	44085000 	mfc1	t0,$f10
     948:	00000000 	nop
     94c:	a6080032 	sh	t0,50(s0)
     950:	0c000000 	jal	0 <EnBili_Init>
     954:	02002025 	move	a0,s0
     958:	86090196 	lh	t1,406(s0)
     95c:	3c014320 	lui	at,0x4320
     960:	44819000 	mtc1	at,$f18
     964:	15200002 	bnez	t1,970 <func_809C0174+0x9c>
     968:	240a0020 	li	t2,32
     96c:	a60a0196 	sh	t2,406(s0)
     970:	c6100090 	lwc1	$f16,144(s0)
     974:	4612803c 	c.lt.s	$f16,$f18
     978:	00000000 	nop
     97c:	4502000c 	bc1fl	9b0 <func_809C0174+0xdc>
     980:	8fbf001c 	lw	ra,28(sp)
     984:	c6000094 	lwc1	$f0,148(s0)
     988:	3c014234 	lui	at,0x4234
     98c:	44812000 	mtc1	at,$f4
     990:	46000005 	abs.s	$f0,$f0
     994:	4604003c 	c.lt.s	$f0,$f4
     998:	00000000 	nop
     99c:	45020004 	bc1fl	9b0 <func_809C0174+0xdc>
     9a0:	8fbf001c 	lw	ra,28(sp)
     9a4:	0c000000 	jal	0 <EnBili_Init>
     9a8:	02002025 	move	a0,s0
     9ac:	8fbf001c 	lw	ra,28(sp)
     9b0:	8fb00018 	lw	s0,24(sp)
     9b4:	27bd0020 	addiu	sp,sp,32
     9b8:	03e00008 	jr	ra
     9bc:	00000000 	nop

000009c0 <func_809C0260>:
     9c0:	27bdffe8 	addiu	sp,sp,-24
     9c4:	afa5001c 	sw	a1,28(sp)
     9c8:	00802825 	move	a1,a0
     9cc:	afbf0014 	sw	ra,20(sp)
     9d0:	afa40018 	sw	a0,24(sp)
     9d4:	afa50018 	sw	a1,24(sp)
     9d8:	0c000000 	jal	0 <EnBili_Init>
     9dc:	2484014c 	addiu	a0,a0,332
     9e0:	8fa50018 	lw	a1,24(sp)
     9e4:	84a20196 	lh	v0,406(a1)
     9e8:	10400003 	beqz	v0,9f8 <func_809C0260+0x38>
     9ec:	244effff 	addiu	t6,v0,-1
     9f0:	a4ae0196 	sh	t6,406(a1)
     9f4:	84a20196 	lh	v0,406(a1)
     9f8:	54400004 	bnezl	v0,a0c <func_809C0260+0x4c>
     9fc:	8fbf0014 	lw	ra,20(sp)
     a00:	0c000000 	jal	0 <EnBili_Init>
     a04:	00a02025 	move	a0,a1
     a08:	8fbf0014 	lw	ra,20(sp)
     a0c:	27bd0018 	addiu	sp,sp,24
     a10:	03e00008 	jr	ra
     a14:	00000000 	nop

00000a18 <func_809C02B8>:
     a18:	27bdff78 	addiu	sp,sp,-136
     a1c:	f7b80038 	sdc1	$f24,56(sp)
     a20:	3c014020 	lui	at,0x4020
     a24:	4481c000 	mtc1	at,$f24
     a28:	f7b60030 	sdc1	$f22,48(sp)
     a2c:	3c014640 	lui	at,0x4640
     a30:	4481b000 	mtc1	at,$f22
     a34:	afb7005c 	sw	s7,92(sp)
     a38:	afb60058 	sw	s6,88(sp)
     a3c:	f7b40028 	sdc1	$f20,40(sp)
     a40:	3c0140a0 	lui	at,0x40a0
     a44:	afbe0060 	sw	s8,96(sp)
     a48:	afb50054 	sw	s5,84(sp)
     a4c:	afb40050 	sw	s4,80(sp)
     a50:	afb3004c 	sw	s3,76(sp)
     a54:	afb00040 	sw	s0,64(sp)
     a58:	3c160000 	lui	s6,0x0
     a5c:	3c170000 	lui	s7,0x0
     a60:	4481a000 	mtc1	at,$f20
     a64:	00809825 	move	s3,a0
     a68:	00a0a025 	move	s4,a1
     a6c:	afbf0064 	sw	ra,100(sp)
     a70:	afb20048 	sw	s2,72(sp)
     a74:	afb10044 	sw	s1,68(sp)
     a78:	26f70000 	addiu	s7,s7,0
     a7c:	26d60000 	addiu	s6,s6,0
     a80:	00008025 	move	s0,zero
     a84:	27b50078 	addiu	s5,sp,120
     a88:	241e0004 	li	s8,4
     a8c:	866e0196 	lh	t6,406(s3)
     a90:	00107840 	sll	t7,s0,0x1
     a94:	00109380 	sll	s2,s0,0xe
     a98:	01cfc021 	addu	t8,t6,t7
     a9c:	07010004 	bgez	t8,ab0 <func_809C02B8+0x98>
     aa0:	33190003 	andi	t9,t8,0x3
     aa4:	13200002 	beqz	t9,ab0 <func_809C02B8+0x98>
     aa8:	00000000 	nop
     aac:	2739fffc 	addiu	t9,t9,-4
     ab0:	57200027 	bnezl	t9,b50 <func_809C02B8+0x138>
     ab4:	26100001 	addiu	s0,s0,1
     ab8:	0c000000 	jal	0 <EnBili_Init>
     abc:	4600b306 	mov.s	$f12,$f22
     ac0:	4600010d 	trunc.w.s	$f4,$f0
     ac4:	4600a306 	mov.s	$f12,$f20
     ac8:	440b2000 	mfc1	t3,$f4
     acc:	00000000 	nop
     ad0:	01728821 	addu	s1,t3,s2
     ad4:	26312000 	addiu	s1,s1,8192
     ad8:	00118c00 	sll	s1,s1,0x10
     adc:	0c000000 	jal	0 <EnBili_Init>
     ae0:	00118c03 	sra	s1,s1,0x10
     ae4:	c6660024 	lwc1	$f6,36(s3)
     ae8:	46060200 	add.s	$f8,$f0,$f6
     aec:	0c000000 	jal	0 <EnBili_Init>
     af0:	e7a80078 	swc1	$f8,120(sp)
     af4:	46140282 	mul.s	$f10,$f0,$f20
     af8:	c6700028 	lwc1	$f16,40(s3)
     afc:	4600a306 	mov.s	$f12,$f20
     b00:	46105480 	add.s	$f18,$f10,$f16
     b04:	46189100 	add.s	$f4,$f18,$f24
     b08:	0c000000 	jal	0 <EnBili_Init>
     b0c:	e7a4007c 	swc1	$f4,124(sp)
     b10:	c666002c 	lwc1	$f6,44(s3)
     b14:	240c000f 	li	t4,15
     b18:	240d0006 	li	t5,6
     b1c:	46060200 	add.s	$f8,$f0,$f6
     b20:	240e0002 	li	t6,2
     b24:	afae001c 	sw	t6,28(sp)
     b28:	afad0018 	sw	t5,24(sp)
     b2c:	e7a80080 	swc1	$f8,128(sp)
     b30:	afac0010 	sw	t4,16(sp)
     b34:	afb10014 	sw	s1,20(sp)
     b38:	02802025 	move	a0,s4
     b3c:	02a02825 	move	a1,s5
     b40:	02c03025 	move	a2,s6
     b44:	0c000000 	jal	0 <EnBili_Init>
     b48:	02e03825 	move	a3,s7
     b4c:	26100001 	addiu	s0,s0,1
     b50:	561effcf 	bnel	s0,s8,a90 <func_809C02B8+0x78>
     b54:	866e0196 	lh	t6,406(s3)
     b58:	2670014c 	addiu	s0,s3,332
     b5c:	0c000000 	jal	0 <EnBili_Init>
     b60:	02002025 	move	a0,s0
     b64:	02602025 	move	a0,s3
     b68:	0c000000 	jal	0 <EnBili_Init>
     b6c:	2405309a 	li	a1,12442
     b70:	86620196 	lh	v0,406(s3)
     b74:	3c01bf80 	lui	at,0xbf80
     b78:	44818000 	mtc1	at,$f16
     b7c:	10400003 	beqz	v0,b8c <func_809C02B8+0x174>
     b80:	244fffff 	addiu	t7,v0,-1
     b84:	a66f0196 	sh	t7,406(s3)
     b88:	86620196 	lh	v0,406(s3)
     b8c:	c66a0060 	lwc1	$f10,96(s3)
     b90:	02002025 	move	a0,s0
     b94:	46105482 	mul.s	$f18,$f10,$f16
     b98:	1440000f 	bnez	v0,bd8 <func_809C02B8+0x1c0>
     b9c:	e6720060 	swc1	$f18,96(s3)
     ba0:	0c000000 	jal	0 <EnBili_Init>
     ba4:	24050000 	li	a1,0
     ba8:	5040000c 	beqzl	v0,bdc <func_809C02B8+0x1c4>
     bac:	8fbf0064 	lw	ra,100(sp)
     bb0:	8678001c 	lh	t8,28(s3)
     bb4:	24010001 	li	at,1
     bb8:	17010005 	bne	t8,at,bd0 <func_809C02B8+0x1b8>
     bbc:	00000000 	nop
     bc0:	0c000000 	jal	0 <EnBili_Init>
     bc4:	02602025 	move	a0,s3
     bc8:	10000004 	b	bdc <func_809C02B8+0x1c4>
     bcc:	8fbf0064 	lw	ra,100(sp)
     bd0:	0c000000 	jal	0 <EnBili_Init>
     bd4:	02602025 	move	a0,s3
     bd8:	8fbf0064 	lw	ra,100(sp)
     bdc:	d7b40028 	ldc1	$f20,40(sp)
     be0:	d7b60030 	ldc1	$f22,48(sp)
     be4:	d7b80038 	ldc1	$f24,56(sp)
     be8:	8fb00040 	lw	s0,64(sp)
     bec:	8fb10044 	lw	s1,68(sp)
     bf0:	8fb20048 	lw	s2,72(sp)
     bf4:	8fb3004c 	lw	s3,76(sp)
     bf8:	8fb40050 	lw	s4,80(sp)
     bfc:	8fb50054 	lw	s5,84(sp)
     c00:	8fb60058 	lw	s6,88(sp)
     c04:	8fb7005c 	lw	s7,92(sp)
     c08:	8fbe0060 	lw	s8,96(sp)
     c0c:	03e00008 	jr	ra
     c10:	27bd0088 	addiu	sp,sp,136

00000c14 <func_809C04B4>:
     c14:	27bdffd0 	addiu	sp,sp,-48
     c18:	afb00018 	sw	s0,24(sp)
     c1c:	00808025 	move	s0,a0
     c20:	afbf001c 	sw	ra,28(sp)
     c24:	2484014c 	addiu	a0,a0,332
     c28:	afa50034 	sw	a1,52(sp)
     c2c:	0c000000 	jal	0 <EnBili_Init>
     c30:	afa40024 	sw	a0,36(sp)
     c34:	afa2002c 	sw	v0,44(sp)
     c38:	c6040164 	lwc1	$f4,356(s0)
     c3c:	8fa40024 	lw	a0,36(sp)
     c40:	3c054110 	lui	a1,0x4110
     c44:	0c000000 	jal	0 <EnBili_Init>
     c48:	e7a40028 	swc1	$f4,40(sp)
     c4c:	10400003 	beqz	v0,c5c <func_809C04B4+0x48>
     c50:	02002025 	move	a0,s0
     c54:	0c000000 	jal	0 <EnBili_Init>
     c58:	24053899 	li	a1,14489
     c5c:	3c014110 	lui	at,0x4110
     c60:	44813000 	mtc1	at,$f6
     c64:	c7a80028 	lwc1	$f8,40(sp)
     c68:	4608303c 	c.lt.s	$f6,$f8
     c6c:	00000000 	nop
     c70:	4502000e 	bc1fl	cac <func_809C04B4+0x98>
     c74:	8fae002c 	lw	t6,44(sp)
     c78:	c60a0028 	lwc1	$f10,40(s0)
     c7c:	c6100094 	lwc1	$f16,148(s0)
     c80:	3c0142c8 	lui	at,0x42c8
     c84:	44812000 	mtc1	at,$f4
     c88:	46105480 	add.s	$f18,$f10,$f16
     c8c:	26040028 	addiu	a0,s0,40
     c90:	3c063f00 	lui	a2,0x3f00
     c94:	3c0740a0 	lui	a3,0x40a0
     c98:	46049180 	add.s	$f6,$f18,$f4
     c9c:	44053000 	mfc1	a1,$f6
     ca0:	0c000000 	jal	0 <EnBili_Init>
     ca4:	00000000 	nop
     ca8:	8fae002c 	lw	t6,44(sp)
     cac:	51c00004 	beqzl	t6,cc0 <func_809C04B4+0xac>
     cb0:	8fbf001c 	lw	ra,28(sp)
     cb4:	0c000000 	jal	0 <EnBili_Init>
     cb8:	02002025 	move	a0,s0
     cbc:	8fbf001c 	lw	ra,28(sp)
     cc0:	8fb00018 	lw	s0,24(sp)
     cc4:	27bd0030 	addiu	sp,sp,48
     cc8:	03e00008 	jr	ra
     ccc:	00000000 	nop

00000cd0 <func_809C0570>:
     cd0:	27bdffe0 	addiu	sp,sp,-32
     cd4:	afb00018 	sw	s0,24(sp)
     cd8:	00808025 	move	s0,a0
     cdc:	afbf001c 	sw	ra,28(sp)
     ce0:	afa50024 	sw	a1,36(sp)
     ce4:	0c000000 	jal	0 <EnBili_Init>
     ce8:	2484014c 	addiu	a0,a0,332
     cec:	26040032 	addiu	a0,s0,50
     cf0:	8605008a 	lh	a1,138(s0)
     cf4:	24060002 	li	a2,2
     cf8:	0c000000 	jal	0 <EnBili_Init>
     cfc:	2407071c 	li	a3,1820
     d00:	86020196 	lh	v0,406(s0)
     d04:	10400002 	beqz	v0,d10 <func_809C0570+0x40>
     d08:	244effff 	addiu	t6,v0,-1
     d0c:	a60e0196 	sh	t6,406(s0)
     d10:	0c000000 	jal	0 <EnBili_Init>
     d14:	02002025 	move	a0,s0
     d18:	860f0196 	lh	t7,406(s0)
     d1c:	3c014348 	lui	at,0x4348
     d20:	44812000 	mtc1	at,$f4
     d24:	15e00002 	bnez	t7,d30 <func_809C0570+0x60>
     d28:	24180020 	li	t8,32
     d2c:	a6180196 	sh	t8,406(s0)
     d30:	c6060090 	lwc1	$f6,144(s0)
     d34:	4606203c 	c.lt.s	$f4,$f6
     d38:	00000000 	nop
     d3c:	45020004 	bc1fl	d50 <func_809C0570+0x80>
     d40:	8fbf001c 	lw	ra,28(sp)
     d44:	0c000000 	jal	0 <EnBili_Init>
     d48:	02002025 	move	a0,s0
     d4c:	8fbf001c 	lw	ra,28(sp)
     d50:	8fb00018 	lw	s0,24(sp)
     d54:	27bd0020 	addiu	sp,sp,32
     d58:	03e00008 	jr	ra
     d5c:	00000000 	nop

00000d60 <func_809C0600>:
     d60:	27bdffe0 	addiu	sp,sp,-32
     d64:	afb00018 	sw	s0,24(sp)
     d68:	00808025 	move	s0,a0
     d6c:	afbf001c 	sw	ra,28(sp)
     d70:	afa50024 	sw	a1,36(sp)
     d74:	0c000000 	jal	0 <EnBili_Init>
     d78:	2484014c 	addiu	a0,a0,332
     d7c:	86020196 	lh	v0,406(s0)
     d80:	26040032 	addiu	a0,s0,50
     d84:	10400002 	beqz	v0,d90 <func_809C0600+0x30>
     d88:	244effff 	addiu	t6,v0,-1
     d8c:	a60e0196 	sh	t6,406(s0)
     d90:	8605008a 	lh	a1,138(s0)
     d94:	34018000 	li	at,0x8000
     d98:	2406038e 	li	a2,910
     d9c:	00a12821 	addu	a1,a1,at
     da0:	00052c00 	sll	a1,a1,0x10
     da4:	0c000000 	jal	0 <EnBili_Init>
     da8:	00052c03 	sra	a1,a1,0x10
     dac:	0c000000 	jal	0 <EnBili_Init>
     db0:	02002025 	move	a0,s0
     db4:	860f0196 	lh	t7,406(s0)
     db8:	55e00004 	bnezl	t7,dcc <func_809C0600+0x6c>
     dbc:	8fbf001c 	lw	ra,28(sp)
     dc0:	0c000000 	jal	0 <EnBili_Init>
     dc4:	02002025 	move	a0,s0
     dc8:	8fbf001c 	lw	ra,28(sp)
     dcc:	8fb00018 	lw	s0,24(sp)
     dd0:	27bd0020 	addiu	sp,sp,32
     dd4:	03e00008 	jr	ra
     dd8:	00000000 	nop

00000ddc <func_809C067C>:
     ddc:	27bdffe8 	addiu	sp,sp,-24
     de0:	afbf0014 	sw	ra,20(sp)
     de4:	00803825 	move	a3,a0
     de8:	afa5001c 	sw	a1,28(sp)
     dec:	afa70018 	sw	a3,24(sp)
     df0:	0c000000 	jal	0 <EnBili_Init>
     df4:	2484014c 	addiu	a0,a0,332
     df8:	8fa70018 	lw	a3,24(sp)
     dfc:	3c063e99 	lui	a2,0x3e99
     e00:	34c6999a 	ori	a2,a2,0x999a
     e04:	24050000 	li	a1,0
     e08:	0c000000 	jal	0 <EnBili_Init>
     e0c:	24e40068 	addiu	a0,a3,104
     e10:	10400007 	beqz	v0,e30 <func_809C067C+0x54>
     e14:	8fa70018 	lw	a3,24(sp)
     e18:	84ee0032 	lh	t6,50(a3)
     e1c:	34018000 	li	at,0x8000
     e20:	00e02025 	move	a0,a3
     e24:	01c17821 	addu	t7,t6,at
     e28:	0c000000 	jal	0 <EnBili_Init>
     e2c:	a4ef0032 	sh	t7,50(a3)
     e30:	8fbf0014 	lw	ra,20(sp)
     e34:	27bd0018 	addiu	sp,sp,24
     e38:	03e00008 	jr	ra
     e3c:	00000000 	nop

00000e40 <func_809C06E0>:
     e40:	27bdffe8 	addiu	sp,sp,-24
     e44:	afa5001c 	sw	a1,28(sp)
     e48:	00802825 	move	a1,a0
     e4c:	afbf0014 	sw	ra,20(sp)
     e50:	afa40018 	sw	a0,24(sp)
     e54:	afa50018 	sw	a1,24(sp)
     e58:	0c000000 	jal	0 <EnBili_Init>
     e5c:	2484014c 	addiu	a0,a0,332
     e60:	8fa50018 	lw	a1,24(sp)
     e64:	24180014 	li	t8,20
     e68:	8cae0004 	lw	t6,4(a1)
     e6c:	31cf8000 	andi	t7,t6,0x8000
     e70:	51e00004 	beqzl	t7,e84 <func_809C06E0+0x44>
     e74:	84a20196 	lh	v0,406(a1)
     e78:	1000000a 	b	ea4 <func_809C06E0+0x64>
     e7c:	a0b80114 	sb	t8,276(a1)
     e80:	84a20196 	lh	v0,406(a1)
     e84:	10400003 	beqz	v0,e94 <func_809C06E0+0x54>
     e88:	2459ffff 	addiu	t9,v0,-1
     e8c:	a4b90196 	sh	t9,406(a1)
     e90:	84a20196 	lh	v0,406(a1)
     e94:	54400004 	bnezl	v0,ea8 <func_809C06E0+0x68>
     e98:	8fbf0014 	lw	ra,20(sp)
     e9c:	0c000000 	jal	0 <EnBili_Init>
     ea0:	00a02025 	move	a0,a1
     ea4:	8fbf0014 	lw	ra,20(sp)
     ea8:	27bd0018 	addiu	sp,sp,24
     eac:	03e00008 	jr	ra
     eb0:	00000000 	nop

00000eb4 <func_809C0754>:
     eb4:	27bdff78 	addiu	sp,sp,-136
     eb8:	afbf006c 	sw	ra,108(sp)
     ebc:	afb70068 	sw	s7,104(sp)
     ec0:	afb60064 	sw	s6,100(sp)
     ec4:	afb50060 	sw	s5,96(sp)
     ec8:	afb4005c 	sw	s4,92(sp)
     ecc:	afb30058 	sw	s3,88(sp)
     ed0:	afb20054 	sw	s2,84(sp)
     ed4:	afb10050 	sw	s1,80(sp)
     ed8:	afb0004c 	sw	s0,76(sp)
     edc:	f7bc0040 	sdc1	$f28,64(sp)
     ee0:	f7ba0038 	sdc1	$f26,56(sp)
     ee4:	f7b80030 	sdc1	$f24,48(sp)
     ee8:	f7b60028 	sdc1	$f22,40(sp)
     eec:	f7b40020 	sdc1	$f20,32(sp)
     ef0:	8c8e0134 	lw	t6,308(a0)
     ef4:	00809025 	move	s2,a0
     ef8:	00a0b025 	move	s6,a1
     efc:	51c0000c 	beqzl	t6,f30 <func_809C0754+0x7c>
     f00:	86420196 	lh	v0,406(s2)
     f04:	8c8f0004 	lw	t7,4(a0)
     f08:	26460024 	addiu	a2,s2,36
     f0c:	24070050 	li	a3,80
     f10:	31f88000 	andi	t8,t7,0x8000
     f14:	57000063 	bnezl	t8,10a4 <func_809C0754+0x1f0>
     f18:	8fbf006c 	lw	ra,108(sp)
     f1c:	ac800134 	sw	zero,308(a0)
     f20:	00a02025 	move	a0,a1
     f24:	0c000000 	jal	0 <EnBili_Init>
     f28:	02402825 	move	a1,s2
     f2c:	86420196 	lh	v0,406(s2)
     f30:	00008825 	move	s1,zero
     f34:	3c010000 	lui	at,0x0
     f38:	10400003 	beqz	v0,f48 <func_809C0754+0x94>
     f3c:	2459ffff 	addiu	t9,v0,-1
     f40:	a6590196 	sh	t9,406(s2)
     f44:	86420196 	lh	v0,406(s2)
     f48:	1040004b 	beqz	v0,1078 <func_809C0754+0x1c4>
     f4c:	24170002 	li	s7,2
     f50:	c43c0000 	lwc1	$f28,0(at)
     f54:	3c013f80 	lui	at,0x3f80
     f58:	4481d000 	mtc1	at,$f26
     f5c:	3c014020 	lui	at,0x4020
     f60:	4481c000 	mtc1	at,$f24
     f64:	3c014120 	lui	at,0x4120
     f68:	4481b000 	mtc1	at,$f22
     f6c:	3c0140a0 	lui	at,0x40a0
     f70:	3c150000 	lui	s5,0x0
     f74:	3c140000 	lui	s4,0x0
     f78:	4481a000 	mtc1	at,$f20
     f7c:	26940000 	addiu	s4,s4,0
     f80:	26b50000 	addiu	s5,s5,0
     f84:	27b30078 	addiu	s3,sp,120
     f88:	0c000000 	jal	0 <EnBili_Init>
     f8c:	00000000 	nop
     f90:	46160102 	mul.s	$f4,$f0,$f22
     f94:	c6460024 	lwc1	$f6,36(s2)
     f98:	46062200 	add.s	$f8,$f4,$f6
     f9c:	46144281 	sub.s	$f10,$f8,$f20
     fa0:	0c000000 	jal	0 <EnBili_Init>
     fa4:	e7aa0078 	swc1	$f10,120(sp)
     fa8:	46140402 	mul.s	$f16,$f0,$f20
     fac:	c6520028 	lwc1	$f18,40(s2)
     fb0:	46128100 	add.s	$f4,$f16,$f18
     fb4:	46182181 	sub.s	$f6,$f4,$f24
     fb8:	0c000000 	jal	0 <EnBili_Init>
     fbc:	e7a6007c 	swc1	$f6,124(sp)
     fc0:	46160202 	mul.s	$f8,$f0,$f22
     fc4:	c64a002c 	lwc1	$f10,44(s2)
     fc8:	460a4400 	add.s	$f16,$f8,$f10
     fcc:	46148481 	sub.s	$f18,$f16,$f20
     fd0:	0c000000 	jal	0 <EnBili_Init>
     fd4:	e7b20080 	swc1	$f18,128(sp)
     fd8:	461a0100 	add.s	$f4,$f0,$f26
     fdc:	3c010000 	lui	at,0x0
     fe0:	24040028 	li	a0,40
     fe4:	24050028 	li	a1,40
     fe8:	0c000000 	jal	0 <EnBili_Init>
     fec:	e4240000 	swc1	$f4,0(at)
     ff0:	00028400 	sll	s0,v0,0x10
     ff4:	0c000000 	jal	0 <EnBili_Init>
     ff8:	00108403 	sra	s0,s0,0x10
     ffc:	461c003c 	c.lt.s	$f0,$f28
    1000:	02c02025 	move	a0,s6
    1004:	02602825 	move	a1,s3
    1008:	02803025 	move	a2,s4
    100c:	4500000e 	bc1f	1048 <func_809C0754+0x194>
    1010:	02a03825 	move	a3,s5
    1014:	24080019 	li	t0,25
    1018:	24090001 	li	t1,1
    101c:	afa9001c 	sw	t1,28(sp)
    1020:	afa80014 	sw	t0,20(sp)
    1024:	02c02025 	move	a0,s6
    1028:	02602825 	move	a1,s3
    102c:	02803025 	move	a2,s4
    1030:	02a03825 	move	a3,s5
    1034:	afb00010 	sw	s0,16(sp)
    1038:	0c000000 	jal	0 <EnBili_Init>
    103c:	afb70018 	sw	s7,24(sp)
    1040:	10000009 	b	1068 <func_809C0754+0x1b4>
    1044:	26310001 	addiu	s1,s1,1
    1048:	240a0019 	li	t2,25
    104c:	240b0001 	li	t3,1
    1050:	afab001c 	sw	t3,28(sp)
    1054:	afaa0014 	sw	t2,20(sp)
    1058:	afb00010 	sw	s0,16(sp)
    105c:	0c000000 	jal	0 <EnBili_Init>
    1060:	afa00018 	sw	zero,24(sp)
    1064:	26310001 	addiu	s1,s1,1
    1068:	1637ffc7 	bne	s1,s7,f88 <func_809C0754+0xd4>
    106c:	00000000 	nop
    1070:	10000004 	b	1084 <func_809C0754+0x1d0>
    1074:	864c0196 	lh	t4,406(s2)
    1078:	0c000000 	jal	0 <EnBili_Init>
    107c:	02402025 	move	a0,s2
    1080:	864c0196 	lh	t4,406(s2)
    1084:	2401000e 	li	at,14
    1088:	02c02025 	move	a0,s6
    108c:	15810004 	bne	t4,at,10a0 <func_809C0754+0x1ec>
    1090:	26450024 	addiu	a1,s2,36
    1094:	24060028 	li	a2,40
    1098:	0c000000 	jal	0 <EnBili_Init>
    109c:	2407389c 	li	a3,14492
    10a0:	8fbf006c 	lw	ra,108(sp)
    10a4:	d7b40020 	ldc1	$f20,32(sp)
    10a8:	d7b60028 	ldc1	$f22,40(sp)
    10ac:	d7b80030 	ldc1	$f24,48(sp)
    10b0:	d7ba0038 	ldc1	$f26,56(sp)
    10b4:	d7bc0040 	ldc1	$f28,64(sp)
    10b8:	8fb0004c 	lw	s0,76(sp)
    10bc:	8fb10050 	lw	s1,80(sp)
    10c0:	8fb20054 	lw	s2,84(sp)
    10c4:	8fb30058 	lw	s3,88(sp)
    10c8:	8fb4005c 	lw	s4,92(sp)
    10cc:	8fb50060 	lw	s5,96(sp)
    10d0:	8fb60064 	lw	s6,100(sp)
    10d4:	8fb70068 	lw	s7,104(sp)
    10d8:	03e00008 	jr	ra
    10dc:	27bd0088 	addiu	sp,sp,136

000010e0 <func_809C0980>:
    10e0:	27bdffe8 	addiu	sp,sp,-24
    10e4:	afbf0014 	sw	ra,20(sp)
    10e8:	afa5001c 	sw	a1,28(sp)
    10ec:	84820196 	lh	v0,406(a0)
    10f0:	2405387b 	li	a1,14459
    10f4:	10400002 	beqz	v0,1100 <func_809C0980+0x20>
    10f8:	244effff 	addiu	t6,v0,-1
    10fc:	a48e0196 	sh	t6,406(a0)
    1100:	948f0088 	lhu	t7,136(a0)
    1104:	31f80002 	andi	t8,t7,0x2
    1108:	53000005 	beqzl	t8,1120 <func_809C0980+0x40>
    110c:	84990196 	lh	t9,406(a0)
    1110:	0c000000 	jal	0 <EnBili_Init>
    1114:	afa40018 	sw	a0,24(sp)
    1118:	8fa40018 	lw	a0,24(sp)
    111c:	84990196 	lh	t9,406(a0)
    1120:	57200004 	bnezl	t9,1134 <func_809C0980+0x54>
    1124:	8fbf0014 	lw	ra,20(sp)
    1128:	0c000000 	jal	0 <EnBili_Init>
    112c:	00000000 	nop
    1130:	8fbf0014 	lw	ra,20(sp)
    1134:	27bd0018 	addiu	sp,sp,24
    1138:	03e00008 	jr	ra
    113c:	00000000 	nop

00001140 <func_809C09E0>:
    1140:	27bdffe8 	addiu	sp,sp,-24
    1144:	afbf0014 	sw	ra,20(sp)
    1148:	afa5001c 	sw	a1,28(sp)
    114c:	84820196 	lh	v0,406(a0)
    1150:	3c01bf80 	lui	at,0xbf80
    1154:	10400002 	beqz	v0,1160 <func_809C09E0+0x20>
    1158:	244effff 	addiu	t6,v0,-1
    115c:	a48e0196 	sh	t6,406(a0)
    1160:	8c8f0004 	lw	t7,4(a0)
    1164:	31f88000 	andi	t8,t7,0x8000
    1168:	57000005 	bnezl	t8,1180 <func_809C09E0+0x40>
    116c:	94990088 	lhu	t9,136(a0)
    1170:	44812000 	mtc1	at,$f4
    1174:	00000000 	nop
    1178:	e484006c 	swc1	$f4,108(a0)
    117c:	94990088 	lhu	t9,136(a0)
    1180:	3c01c6fa 	lui	at,0xc6fa
    1184:	33280001 	andi	t0,t9,0x1
    1188:	15000008 	bnez	t0,11ac <func_809C09E0+0x6c>
    118c:	00000000 	nop
    1190:	44813000 	mtc1	at,$f6
    1194:	c4880080 	lwc1	$f8,128(a0)
    1198:	2409000a 	li	t1,10
    119c:	46083032 	c.eq.s	$f6,$f8
    11a0:	00000000 	nop
    11a4:	45020006 	bc1fl	11c0 <func_809C09E0+0x80>
    11a8:	a0890114 	sb	t1,276(a0)
    11ac:	0c000000 	jal	0 <EnBili_Init>
    11b0:	a0800114 	sb	zero,276(a0)
    11b4:	10000003 	b	11c4 <func_809C09E0+0x84>
    11b8:	8fbf0014 	lw	ra,20(sp)
    11bc:	a0890114 	sb	t1,276(a0)
    11c0:	8fbf0014 	lw	ra,20(sp)
    11c4:	27bd0018 	addiu	sp,sp,24
    11c8:	03e00008 	jr	ra
    11cc:	00000000 	nop

000011d0 <func_809C0A70>:
    11d0:	27bdffd8 	addiu	sp,sp,-40
    11d4:	afbf0024 	sw	ra,36(sp)
    11d8:	afb00020 	sw	s0,32(sp)
    11dc:	afa5002c 	sw	a1,44(sp)
    11e0:	908e00af 	lbu	t6,175(a0)
    11e4:	00808025 	move	s0,a0
    11e8:	51c00067 	beqzl	t6,1388 <func_809C0A70+0x1b8>
    11ec:	8fbf0024 	lw	ra,36(sp)
    11f0:	908201e5 	lbu	v0,485(a0)
    11f4:	260501ec 	addiu	a1,s0,492
    11f8:	24060001 	li	a2,1
    11fc:	304f0002 	andi	t7,v0,0x2
    1200:	11e00060 	beqz	t7,1384 <func_809C0A70+0x1b4>
    1204:	3058fffd 	andi	t8,v0,0xfffd
    1208:	0c000000 	jal	0 <EnBili_Init>
    120c:	a09801e5 	sb	t8,485(a0)
    1210:	921900b1 	lbu	t9,177(s0)
    1214:	17200004 	bnez	t9,1228 <func_809C0A70+0x58>
    1218:	00000000 	nop
    121c:	920800b0 	lbu	t0,176(s0)
    1220:	51000059 	beqzl	t0,1388 <func_809C0A70+0x1b8>
    1224:	8fbf0024 	lw	ra,36(sp)
    1228:	0c000000 	jal	0 <EnBili_Init>
    122c:	02002025 	move	a0,s0
    1230:	1440000a 	bnez	v0,125c <func_809C0A70+0x8c>
    1234:	02002025 	move	a0,s0
    1238:	0c000000 	jal	0 <EnBili_Init>
    123c:	2405389b 	li	a1,14491
    1240:	8fa4002c 	lw	a0,44(sp)
    1244:	0c000000 	jal	0 <EnBili_Init>
    1248:	02002825 	move	a1,s0
    124c:	8e090004 	lw	t1,4(s0)
    1250:	2401fffe 	li	at,-2
    1254:	01215024 	and	t2,t1,at
    1258:	ae0a0004 	sw	t2,4(s0)
    125c:	920200b1 	lbu	v0,177(s0)
    1260:	24010001 	li	at,1
    1264:	5441000b 	bnel	v0,at,1294 <func_809C0A70+0xc4>
    1268:	2401000f 	li	at,15
    126c:	8e0c0190 	lw	t4,400(s0)
    1270:	3c0b0000 	lui	t3,0x0
    1274:	256b0000 	addiu	t3,t3,0
    1278:	516c0039 	beql	t3,t4,1360 <func_809C0A70+0x190>
    127c:	8e090210 	lw	t1,528(s0)
    1280:	0c000000 	jal	0 <EnBili_Init>
    1284:	02002025 	move	a0,s0
    1288:	10000035 	b	1360 <func_809C0A70+0x190>
    128c:	8e090210 	lw	t1,528(s0)
    1290:	2401000f 	li	at,15
    1294:	5441001a 	bnel	v0,at,1300 <func_809C0A70+0x130>
    1298:	24010002 	li	at,2
    129c:	8e0e0190 	lw	t6,400(s0)
    12a0:	3c0d0000 	lui	t5,0x0
    12a4:	25ad0000 	addiu	t5,t5,0
    12a8:	11ae0010 	beq	t5,t6,12ec <func_809C0A70+0x11c>
    12ac:	02002025 	move	a0,s0
    12b0:	240f000a 	li	t7,10
    12b4:	afaf0010 	sw	t7,16(sp)
    12b8:	24054000 	li	a1,16384
    12bc:	240600c8 	li	a2,200
    12c0:	0c000000 	jal	0 <EnBili_Init>
    12c4:	24072000 	li	a3,8192
    12c8:	921800af 	lbu	t8,175(s0)
    12cc:	24190001 	li	t9,1
    12d0:	17000002 	bnez	t8,12dc <func_809C0A70+0x10c>
    12d4:	00000000 	nop
    12d8:	a619001c 	sh	t9,28(s0)
    12dc:	0c000000 	jal	0 <EnBili_Init>
    12e0:	02002025 	move	a0,s0
    12e4:	1000001e 	b	1360 <func_809C0A70+0x190>
    12e8:	8e090210 	lw	t1,528(s0)
    12ec:	0c000000 	jal	0 <EnBili_Init>
    12f0:	02002025 	move	a0,s0
    12f4:	1000001a 	b	1360 <func_809C0A70+0x190>
    12f8:	8e090210 	lw	t1,528(s0)
    12fc:	24010002 	li	at,2
    1300:	54410007 	bnel	v0,at,1320 <func_809C0A70+0x150>
    1304:	24010003 	li	at,3
    1308:	0c000000 	jal	0 <EnBili_Init>
    130c:	02002025 	move	a0,s0
    1310:	24080002 	li	t0,2
    1314:	10000011 	b	135c <func_809C0A70+0x18c>
    1318:	a6080196 	sh	t0,406(s0)
    131c:	24010003 	li	at,3
    1320:	14410005 	bne	v0,at,1338 <func_809C0A70+0x168>
    1324:	02002025 	move	a0,s0
    1328:	0c000000 	jal	0 <EnBili_Init>
    132c:	8fa5002c 	lw	a1,44(sp)
    1330:	1000000b 	b	1360 <func_809C0A70+0x190>
    1334:	8e090210 	lw	t1,528(s0)
    1338:	2401000e 	li	at,14
    133c:	14410005 	bne	v0,at,1354 <func_809C0A70+0x184>
    1340:	00000000 	nop
    1344:	0c000000 	jal	0 <EnBili_Init>
    1348:	02002025 	move	a0,s0
    134c:	10000004 	b	1360 <func_809C0A70+0x190>
    1350:	8e090210 	lw	t1,528(s0)
    1354:	0c000000 	jal	0 <EnBili_Init>
    1358:	02002025 	move	a0,s0
    135c:	8e090210 	lw	t1,528(s0)
    1360:	3c010001 	lui	at,0x1
    1364:	3421f820 	ori	at,at,0xf820
    1368:	8d2a0000 	lw	t2,0(t1)
    136c:	01415824 	and	t3,t2,at
    1370:	51600005 	beqzl	t3,1388 <func_809C0A70+0x1b8>
    1374:	8fbf0024 	lw	ra,36(sp)
    1378:	8e0c0004 	lw	t4,4(s0)
    137c:	358d0010 	ori	t5,t4,0x10
    1380:	ae0d0004 	sw	t5,4(s0)
    1384:	8fbf0024 	lw	ra,36(sp)
    1388:	8fb00020 	lw	s0,32(sp)
    138c:	27bd0028 	addiu	sp,sp,40
    1390:	03e00008 	jr	ra
    1394:	00000000 	nop

00001398 <EnBili_Update>:
    1398:	27bdffc8 	addiu	sp,sp,-56
    139c:	afbf0024 	sw	ra,36(sp)
    13a0:	afb10020 	sw	s1,32(sp)
    13a4:	afb0001c 	sw	s0,28(sp)
    13a8:	908201e4 	lbu	v0,484(a0)
    13ac:	00808025 	move	s0,a0
    13b0:	00a08825 	move	s1,a1
    13b4:	304e0002 	andi	t6,v0,0x2
    13b8:	11c00003 	beqz	t6,13c8 <EnBili_Update+0x30>
    13bc:	304ffffd 	andi	t7,v0,0xfffd
    13c0:	0c000000 	jal	0 <EnBili_Init>
    13c4:	a08f01e4 	sb	t7,484(a0)
    13c8:	02002025 	move	a0,s0
    13cc:	0c000000 	jal	0 <EnBili_Init>
    13d0:	02202825 	move	a1,s1
    13d4:	8e190190 	lw	t9,400(s0)
    13d8:	02002025 	move	a0,s0
    13dc:	02202825 	move	a1,s1
    13e0:	0320f809 	jalr	t9
    13e4:	00000000 	nop
    13e8:	8e080190 	lw	t0,400(s0)
    13ec:	3c180000 	lui	t8,0x0
    13f0:	27180000 	addiu	t8,t8,0
    13f4:	53080058 	beql	t8,t0,1558 <EnBili_Update+0x1c0>
    13f8:	8fbf0024 	lw	ra,36(sp)
    13fc:	0c000000 	jal	0 <EnBili_Init>
    1400:	02002025 	move	a0,s0
    1404:	2604014c 	addiu	a0,s0,332
    1408:	0c000000 	jal	0 <EnBili_Init>
    140c:	3c054110 	lui	a1,0x4110
    1410:	5040001a 	beqzl	v0,147c <EnBili_Update+0xe4>
    1414:	8e190190 	lw	t9,400(s0)
    1418:	8e020190 	lw	v0,400(s0)
    141c:	3c090000 	lui	t1,0x0
    1420:	25290000 	addiu	t1,t1,0
    1424:	1122000a 	beq	t1,v0,1450 <EnBili_Update+0xb8>
    1428:	3c0a0000 	lui	t2,0x0
    142c:	254a0000 	addiu	t2,t2,0
    1430:	11420007 	beq	t2,v0,1450 <EnBili_Update+0xb8>
    1434:	3c0b0000 	lui	t3,0x0
    1438:	256b0000 	addiu	t3,t3,0
    143c:	11620004 	beq	t3,v0,1450 <EnBili_Update+0xb8>
    1440:	3c0c0000 	lui	t4,0x0
    1444:	258c0000 	addiu	t4,t4,0
    1448:	5582000c 	bnel	t4,v0,147c <EnBili_Update+0xe4>
    144c:	8e190190 	lw	t9,400(s0)
    1450:	920d0195 	lbu	t5,405(s0)
    1454:	02002025 	move	a0,s0
    1458:	240e0001 	li	t6,1
    145c:	51a00006 	beqzl	t5,1478 <EnBili_Update+0xe0>
    1460:	a20e0195 	sb	t6,405(s0)
    1464:	0c000000 	jal	0 <EnBili_Init>
    1468:	24053898 	li	a1,14488
    146c:	10000002 	b	1478 <EnBili_Update+0xe0>
    1470:	a2000195 	sb	zero,405(s0)
    1474:	a20e0195 	sb	t6,405(s0)
    1478:	8e190190 	lw	t9,400(s0)
    147c:	3c0f0000 	lui	t7,0x0
    1480:	25ef0000 	addiu	t7,t7,0
    1484:	15f90005 	bne	t7,t9,149c <EnBili_Update+0x104>
    1488:	00000000 	nop
    148c:	0c000000 	jal	0 <EnBili_Init>
    1490:	02002025 	move	a0,s0
    1494:	10000004 	b	14a8 <EnBili_Update+0x110>
    1498:	86180214 	lh	t8,532(s0)
    149c:	0c000000 	jal	0 <EnBili_Init>
    14a0:	02002025 	move	a0,s0
    14a4:	86180214 	lh	t8,532(s0)
    14a8:	86080216 	lh	t0,534(s0)
    14ac:	24090007 	li	t1,7
    14b0:	44982000 	mtc1	t8,$f4
    14b4:	44883000 	mtc1	t0,$f6
    14b8:	afa90014 	sw	t1,20(sp)
    14bc:	46802120 	cvt.s.w	$f4,$f4
    14c0:	02202025 	move	a0,s1
    14c4:	02002825 	move	a1,s0
    14c8:	3c0640a0 	lui	a2,0x40a0
    14cc:	46803220 	cvt.s.w	$f8,$f6
    14d0:	44072000 	mfc1	a3,$f4
    14d4:	0c000000 	jal	0 <EnBili_Init>
    14d8:	e7a80010 	swc1	$f8,16(sp)
    14dc:	260501d4 	addiu	a1,s0,468
    14e0:	afa50028 	sw	a1,40(sp)
    14e4:	0c000000 	jal	0 <EnBili_Init>
    14e8:	02002025 	move	a0,s0
    14ec:	920a01e4 	lbu	t2,484(s0)
    14f0:	3c010001 	lui	at,0x1
    14f4:	34211e60 	ori	at,at,0x1e60
    14f8:	314b0001 	andi	t3,t2,0x1
    14fc:	11600004 	beqz	t3,1510 <EnBili_Update+0x178>
    1500:	02202025 	move	a0,s1
    1504:	02212821 	addu	a1,s1,at
    1508:	0c000000 	jal	0 <EnBili_Init>
    150c:	8fa60028 	lw	a2,40(sp)
    1510:	920c01e5 	lbu	t4,485(s0)
    1514:	3c010001 	lui	at,0x1
    1518:	34211e60 	ori	at,at,0x1e60
    151c:	318d0001 	andi	t5,t4,0x1
    1520:	11a00006 	beqz	t5,153c <EnBili_Update+0x1a4>
    1524:	02212821 	addu	a1,s1,at
    1528:	02202025 	move	a0,s1
    152c:	8fa60028 	lw	a2,40(sp)
    1530:	0c000000 	jal	0 <EnBili_Init>
    1534:	afa5002c 	sw	a1,44(sp)
    1538:	8fa5002c 	lw	a1,44(sp)
    153c:	02202025 	move	a0,s1
    1540:	0c000000 	jal	0 <EnBili_Init>
    1544:	8fa60028 	lw	a2,40(sp)
    1548:	02002025 	move	a0,s0
    154c:	0c000000 	jal	0 <EnBili_Init>
    1550:	24050000 	li	a1,0
    1554:	8fbf0024 	lw	ra,36(sp)
    1558:	8fb0001c 	lw	s0,28(sp)
    155c:	8fb10020 	lw	s1,32(sp)
    1560:	03e00008 	jr	ra
    1564:	27bd0038 	addiu	sp,sp,56

00001568 <func_809C0E08>:
    1568:	27bdffe0 	addiu	sp,sp,-32
    156c:	afbf001c 	sw	ra,28(sp)
    1570:	afb00018 	sw	s0,24(sp)
    1574:	8c820190 	lw	v0,400(a0)
    1578:	3c0e0000 	lui	t6,0x0
    157c:	44857000 	mtc1	a1,$f14
    1580:	25ce0000 	addiu	t6,t6,0
    1584:	15c2000e 	bne	t6,v0,15c0 <func_809C0E08+0x58>
    1588:	00c08025 	move	s0,a2
    158c:	3c010000 	lui	at,0x0
    1590:	c4240000 	lwc1	$f4,0(at)
    1594:	460e2302 	mul.s	$f12,$f4,$f14
    1598:	0c000000 	jal	0 <EnBili_Init>
    159c:	00000000 	nop
    15a0:	3c013f80 	lui	at,0x3f80
    15a4:	44811000 	mtc1	at,$f2
    15a8:	3c010000 	lui	at,0x0
    15ac:	c4260000 	lwc1	$f6,0(at)
    15b0:	46060202 	mul.s	$f8,$f0,$f6
    15b4:	46081281 	sub.s	$f10,$f2,$f8
    15b8:	1000006c 	b	176c <func_809C0E08+0x204>
    15bc:	e60a0004 	swc1	$f10,4(s0)
    15c0:	3c0f0000 	lui	t7,0x0
    15c4:	25ef0000 	addiu	t7,t7,0
    15c8:	15e20044 	bne	t7,v0,16dc <func_809C0E08+0x174>
    15cc:	3c180000 	lui	t8,0x0
    15d0:	3c014100 	lui	at,0x4100
    15d4:	44810000 	mtc1	at,$f0
    15d8:	3c014190 	lui	at,0x4190
    15dc:	4600703e 	c.le.s	$f14,$f0
    15e0:	00000000 	nop
    15e4:	4502000f 	bc1fl	1624 <func_809C0E08+0xbc>
    15e8:	44811000 	mtc1	at,$f2
    15ec:	3c010000 	lui	at,0x0
    15f0:	c4300000 	lwc1	$f16,0(at)
    15f4:	460e8302 	mul.s	$f12,$f16,$f14
    15f8:	0c000000 	jal	0 <EnBili_Init>
    15fc:	00000000 	nop
    1600:	3c010000 	lui	at,0x0
    1604:	c4320000 	lwc1	$f18,0(at)
    1608:	3c010000 	lui	at,0x0
    160c:	c4260000 	lwc1	$f6,0(at)
    1610:	46120102 	mul.s	$f4,$f0,$f18
    1614:	46062200 	add.s	$f8,$f4,$f6
    1618:	1000002d 	b	16d0 <func_809C0E08+0x168>
    161c:	e6080004 	swc1	$f8,4(s0)
    1620:	44811000 	mtc1	at,$f2
    1624:	3c010000 	lui	at,0x0
    1628:	4602703e 	c.le.s	$f14,$f2
    162c:	00000000 	nop
    1630:	45020017 	bc1fl	1690 <func_809C0E08+0x128>
    1634:	46027101 	sub.s	$f4,$f14,$f2
    1638:	46007281 	sub.s	$f10,$f14,$f0
    163c:	3c010000 	lui	at,0x0
    1640:	c4300000 	lwc1	$f16,0(at)
    1644:	46105302 	mul.s	$f12,$f10,$f16
    1648:	0c000000 	jal	0 <EnBili_Init>
    164c:	00000000 	nop
    1650:	3c013f80 	lui	at,0x3f80
    1654:	44811000 	mtc1	at,$f2
    1658:	3c010000 	lui	at,0x0
    165c:	c4320000 	lwc1	$f18,0(at)
    1660:	3c010000 	lui	at,0x0
    1664:	46009102 	mul.s	$f4,$f18,$f0
    1668:	46041181 	sub.s	$f6,$f2,$f4
    166c:	e6060004 	swc1	$f6,4(s0)
    1670:	c4280000 	lwc1	$f8,0(at)
    1674:	3c010000 	lui	at,0x0
    1678:	c4300000 	lwc1	$f16,0(at)
    167c:	46004282 	mul.s	$f10,$f8,$f0
    1680:	46105480 	add.s	$f18,$f10,$f16
    1684:	10000012 	b	16d0 <func_809C0E08+0x168>
    1688:	e6120000 	swc1	$f18,0(s0)
    168c:	46027101 	sub.s	$f4,$f14,$f2
    1690:	c4260000 	lwc1	$f6,0(at)
    1694:	46062302 	mul.s	$f12,$f4,$f6
    1698:	0c000000 	jal	0 <EnBili_Init>
    169c:	00000000 	nop
    16a0:	3c013f80 	lui	at,0x3f80
    16a4:	44811000 	mtc1	at,$f2
    16a8:	3c010000 	lui	at,0x0
    16ac:	c4280000 	lwc1	$f8,0(at)
    16b0:	3c010000 	lui	at,0x0
    16b4:	46004282 	mul.s	$f10,$f8,$f0
    16b8:	46025400 	add.s	$f16,$f10,$f2
    16bc:	e6100004 	swc1	$f16,4(s0)
    16c0:	c4320000 	lwc1	$f18,0(at)
    16c4:	46009102 	mul.s	$f4,$f18,$f0
    16c8:	46041181 	sub.s	$f6,$f2,$f4
    16cc:	e6060000 	swc1	$f6,0(s0)
    16d0:	c6080000 	lwc1	$f8,0(s0)
    16d4:	10000025 	b	176c <func_809C0E08+0x204>
    16d8:	e6080008 	swc1	$f8,8(s0)
    16dc:	27180000 	addiu	t8,t8,0
    16e0:	17020017 	bne	t8,v0,1740 <func_809C0E08+0x1d8>
    16e4:	3c010000 	lui	at,0x0
    16e8:	84990196 	lh	t9,406(a0)
    16ec:	3c010000 	lui	at,0x0
    16f0:	c4320000 	lwc1	$f18,0(at)
    16f4:	44995000 	mtc1	t9,$f10
    16f8:	00000000 	nop
    16fc:	46805420 	cvt.s.w	$f16,$f10
    1700:	46128302 	mul.s	$f12,$f16,$f18
    1704:	0c000000 	jal	0 <EnBili_Init>
    1708:	00000000 	nop
    170c:	3c010000 	lui	at,0x0
    1710:	c4240000 	lwc1	$f4,0(at)
    1714:	c6060000 	lwc1	$f6,0(s0)
    1718:	c60a0004 	lwc1	$f10,4(s0)
    171c:	46040082 	mul.s	$f2,$f0,$f4
    1720:	c6120008 	lwc1	$f18,8(s0)
    1724:	46023201 	sub.s	$f8,$f6,$f2
    1728:	46025400 	add.s	$f16,$f10,$f2
    172c:	e6080000 	swc1	$f8,0(s0)
    1730:	46029101 	sub.s	$f4,$f18,$f2
    1734:	e6100004 	swc1	$f16,4(s0)
    1738:	1000000c 	b	176c <func_809C0E08+0x204>
    173c:	e6040008 	swc1	$f4,8(s0)
    1740:	c4260000 	lwc1	$f6,0(at)
    1744:	460e3302 	mul.s	$f12,$f6,$f14
    1748:	0c000000 	jal	0 <EnBili_Init>
    174c:	00000000 	nop
    1750:	3c010000 	lui	at,0x0
    1754:	c4280000 	lwc1	$f8,0(at)
    1758:	3c010000 	lui	at,0x0
    175c:	c4300000 	lwc1	$f16,0(at)
    1760:	46080282 	mul.s	$f10,$f0,$f8
    1764:	46105480 	add.s	$f18,$f10,$f16
    1768:	e6120004 	swc1	$f18,4(s0)
    176c:	8fbf001c 	lw	ra,28(sp)
    1770:	8fb00018 	lw	s0,24(sp)
    1774:	27bd0020 	addiu	sp,sp,32
    1778:	03e00008 	jr	ra
    177c:	00000000 	nop

00001780 <func_809C1020>:
    1780:	27bdffe0 	addiu	sp,sp,-32
    1784:	afbf001c 	sw	ra,28(sp)
    1788:	afb00018 	sw	s0,24(sp)
    178c:	8c820190 	lw	v0,400(a0)
    1790:	3c0e0000 	lui	t6,0x0
    1794:	44857000 	mtc1	a1,$f14
    1798:	25ce0000 	addiu	t6,t6,0
    179c:	15c2000e 	bne	t6,v0,17d8 <func_809C1020+0x58>
    17a0:	00c08025 	move	s0,a2
    17a4:	3c010000 	lui	at,0x0
    17a8:	c4240000 	lwc1	$f4,0(at)
    17ac:	460e2302 	mul.s	$f12,$f4,$f14
    17b0:	0c000000 	jal	0 <EnBili_Init>
    17b4:	00000000 	nop
    17b8:	3c013f80 	lui	at,0x3f80
    17bc:	44811000 	mtc1	at,$f2
    17c0:	3c010000 	lui	at,0x0
    17c4:	c4260000 	lwc1	$f6,0(at)
    17c8:	46060202 	mul.s	$f8,$f0,$f6
    17cc:	46024280 	add.s	$f10,$f8,$f2
    17d0:	1000006e 	b	198c <func_809C1020+0x20c>
    17d4:	e60a0004 	swc1	$f10,4(s0)
    17d8:	3c0f0000 	lui	t7,0x0
    17dc:	25ef0000 	addiu	t7,t7,0
    17e0:	15e20046 	bne	t7,v0,18fc <func_809C1020+0x17c>
    17e4:	3c180000 	lui	t8,0x0
    17e8:	3c014100 	lui	at,0x4100
    17ec:	44810000 	mtc1	at,$f0
    17f0:	3c014190 	lui	at,0x4190
    17f4:	4600703e 	c.le.s	$f14,$f0
    17f8:	00000000 	nop
    17fc:	45020010 	bc1fl	1840 <func_809C1020+0xc0>
    1800:	44811000 	mtc1	at,$f2
    1804:	3c010000 	lui	at,0x0
    1808:	c4300000 	lwc1	$f16,0(at)
    180c:	460e8302 	mul.s	$f12,$f16,$f14
    1810:	0c000000 	jal	0 <EnBili_Init>
    1814:	00000000 	nop
    1818:	3c013f90 	lui	at,0x3f90
    181c:	44819000 	mtc1	at,$f18
    1820:	3c013e00 	lui	at,0x3e00
    1824:	44812000 	mtc1	at,$f4
    1828:	00000000 	nop
    182c:	46040182 	mul.s	$f6,$f0,$f4
    1830:	46069201 	sub.s	$f8,$f18,$f6
    1834:	1000002e 	b	18f0 <func_809C1020+0x170>
    1838:	e6080000 	swc1	$f8,0(s0)
    183c:	44811000 	mtc1	at,$f2
    1840:	3c010000 	lui	at,0x0
    1844:	4602703e 	c.le.s	$f14,$f2
    1848:	00000000 	nop
    184c:	45020018 	bc1fl	18b0 <func_809C1020+0x130>
    1850:	46027181 	sub.s	$f6,$f14,$f2
    1854:	46007281 	sub.s	$f10,$f14,$f0
    1858:	3c010000 	lui	at,0x0
    185c:	c4300000 	lwc1	$f16,0(at)
    1860:	46105302 	mul.s	$f12,$f10,$f16
    1864:	0c000000 	jal	0 <EnBili_Init>
    1868:	00000000 	nop
    186c:	3c010000 	lui	at,0x0
    1870:	c4240000 	lwc1	$f4,0(at)
    1874:	3c010000 	lui	at,0x0
    1878:	c4260000 	lwc1	$f6,0(at)
    187c:	3c013fa0 	lui	at,0x3fa0
    1880:	44815000 	mtc1	at,$f10
    1884:	3c013e80 	lui	at,0x3e80
    1888:	46002482 	mul.s	$f18,$f4,$f0
    188c:	44818000 	mtc1	at,$f16
    1890:	00000000 	nop
    1894:	46008102 	mul.s	$f4,$f16,$f0
    1898:	46069200 	add.s	$f8,$f18,$f6
    189c:	46045481 	sub.s	$f18,$f10,$f4
    18a0:	e6080000 	swc1	$f8,0(s0)
    18a4:	10000012 	b	18f0 <func_809C1020+0x170>
    18a8:	e6120004 	swc1	$f18,4(s0)
    18ac:	46027181 	sub.s	$f6,$f14,$f2
    18b0:	c4280000 	lwc1	$f8,0(at)
    18b4:	46083302 	mul.s	$f12,$f6,$f8
    18b8:	0c000000 	jal	0 <EnBili_Init>
    18bc:	00000000 	nop
    18c0:	3c013f80 	lui	at,0x3f80
    18c4:	44811000 	mtc1	at,$f2
    18c8:	3c010000 	lui	at,0x0
    18cc:	c4300000 	lwc1	$f16,0(at)
    18d0:	3c010000 	lui	at,0x0
    18d4:	46008282 	mul.s	$f10,$f16,$f0
    18d8:	460a1101 	sub.s	$f4,$f2,$f10
    18dc:	e6040000 	swc1	$f4,0(s0)
    18e0:	c4320000 	lwc1	$f18,0(at)
    18e4:	46009182 	mul.s	$f6,$f18,$f0
    18e8:	46023200 	add.s	$f8,$f6,$f2
    18ec:	e6080004 	swc1	$f8,4(s0)
    18f0:	c6100000 	lwc1	$f16,0(s0)
    18f4:	10000025 	b	198c <func_809C1020+0x20c>
    18f8:	e6100008 	swc1	$f16,8(s0)
    18fc:	27180000 	addiu	t8,t8,0
    1900:	17020017 	bne	t8,v0,1960 <func_809C1020+0x1e0>
    1904:	3c010000 	lui	at,0x0
    1908:	84990196 	lh	t9,406(a0)
    190c:	3c010000 	lui	at,0x0
    1910:	c4320000 	lwc1	$f18,0(at)
    1914:	44995000 	mtc1	t9,$f10
    1918:	00000000 	nop
    191c:	46805120 	cvt.s.w	$f4,$f10
    1920:	46122302 	mul.s	$f12,$f4,$f18
    1924:	0c000000 	jal	0 <EnBili_Init>
    1928:	00000000 	nop
    192c:	3c010000 	lui	at,0x0
    1930:	c4260000 	lwc1	$f6,0(at)
    1934:	c6080000 	lwc1	$f8,0(s0)
    1938:	c60a0004 	lwc1	$f10,4(s0)
    193c:	46060082 	mul.s	$f2,$f0,$f6
    1940:	c6120008 	lwc1	$f18,8(s0)
    1944:	46024400 	add.s	$f16,$f8,$f2
    1948:	46025101 	sub.s	$f4,$f10,$f2
    194c:	e6100000 	swc1	$f16,0(s0)
    1950:	46029180 	add.s	$f6,$f18,$f2
    1954:	e6040004 	swc1	$f4,4(s0)
    1958:	1000000c 	b	198c <func_809C1020+0x20c>
    195c:	e6060008 	swc1	$f6,8(s0)
    1960:	c4280000 	lwc1	$f8,0(at)
    1964:	460e4302 	mul.s	$f12,$f8,$f14
    1968:	0c000000 	jal	0 <EnBili_Init>
    196c:	00000000 	nop
    1970:	3c010000 	lui	at,0x0
    1974:	c4300000 	lwc1	$f16,0(at)
    1978:	3c010000 	lui	at,0x0
    197c:	c42a0000 	lwc1	$f10,0(at)
    1980:	460a0102 	mul.s	$f4,$f0,$f10
    1984:	46048481 	sub.s	$f18,$f16,$f4
    1988:	e6120004 	swc1	$f18,4(s0)
    198c:	8fbf001c 	lw	ra,28(sp)
    1990:	8fb00018 	lw	s0,24(sp)
    1994:	27bd0020 	addiu	sp,sp,32
    1998:	03e00008 	jr	ra
    199c:	00000000 	nop

000019a0 <func_809C1240>:
    19a0:	27bdffe8 	addiu	sp,sp,-24
    19a4:	afbf0014 	sw	ra,20(sp)
    19a8:	8c8f0190 	lw	t7,400(a0)
    19ac:	3c0e0000 	lui	t6,0x0
    19b0:	44857000 	mtc1	a1,$f14
    19b4:	25ce0000 	addiu	t6,t6,0
    19b8:	15cf004f 	bne	t6,t7,1af8 <func_809C1240+0x158>
    19bc:	3c014100 	lui	at,0x4100
    19c0:	44810000 	mtc1	at,$f0
    19c4:	3c014190 	lui	at,0x4190
    19c8:	4600703e 	c.le.s	$f14,$f0
    19cc:	00000000 	nop
    19d0:	45020018 	bc1fl	1a34 <func_809C1240+0x94>
    19d4:	44811000 	mtc1	at,$f2
    19d8:	3c010000 	lui	at,0x0
    19dc:	c4240000 	lwc1	$f4,0(at)
    19e0:	afa60020 	sw	a2,32(sp)
    19e4:	460e2302 	mul.s	$f12,$f4,$f14
    19e8:	0c000000 	jal	0 <EnBili_Init>
    19ec:	00000000 	nop
    19f0:	3c013f90 	lui	at,0x3f90
    19f4:	44813000 	mtc1	at,$f6
    19f8:	3c013e00 	lui	at,0x3e00
    19fc:	44814000 	mtc1	at,$f8
    1a00:	8fa60020 	lw	a2,32(sp)
    1a04:	3c010000 	lui	at,0x0
    1a08:	46004282 	mul.s	$f10,$f8,$f0
    1a0c:	460a3401 	sub.s	$f16,$f6,$f10
    1a10:	e4d00000 	swc1	$f16,0(a2)
    1a14:	c4320000 	lwc1	$f18,0(at)
    1a18:	3c010000 	lui	at,0x0
    1a1c:	c4280000 	lwc1	$f8,0(at)
    1a20:	46009102 	mul.s	$f4,$f18,$f0
    1a24:	46082180 	add.s	$f6,$f4,$f8
    1a28:	10000031 	b	1af0 <func_809C1240+0x150>
    1a2c:	e4c60004 	swc1	$f6,4(a2)
    1a30:	44811000 	mtc1	at,$f2
    1a34:	3c010000 	lui	at,0x0
    1a38:	4602703e 	c.le.s	$f14,$f2
    1a3c:	00000000 	nop
    1a40:	45020019 	bc1fl	1aa8 <func_809C1240+0x108>
    1a44:	46027201 	sub.s	$f8,$f14,$f2
    1a48:	46007281 	sub.s	$f10,$f14,$f0
    1a4c:	3c010000 	lui	at,0x0
    1a50:	c4300000 	lwc1	$f16,0(at)
    1a54:	afa60020 	sw	a2,32(sp)
    1a58:	46105302 	mul.s	$f12,$f10,$f16
    1a5c:	0c000000 	jal	0 <EnBili_Init>
    1a60:	00000000 	nop
    1a64:	3c010000 	lui	at,0x0
    1a68:	c4320000 	lwc1	$f18,0(at)
    1a6c:	3c010000 	lui	at,0x0
    1a70:	c4280000 	lwc1	$f8,0(at)
    1a74:	46009102 	mul.s	$f4,$f18,$f0
    1a78:	8fa60020 	lw	a2,32(sp)
    1a7c:	3c010000 	lui	at,0x0
    1a80:	46082180 	add.s	$f6,$f4,$f8
    1a84:	e4c60000 	swc1	$f6,0(a2)
    1a88:	c42a0000 	lwc1	$f10,0(at)
    1a8c:	3c010000 	lui	at,0x0
    1a90:	c4300000 	lwc1	$f16,0(at)
    1a94:	46008482 	mul.s	$f18,$f16,$f0
    1a98:	46125101 	sub.s	$f4,$f10,$f18
    1a9c:	10000014 	b	1af0 <func_809C1240+0x150>
    1aa0:	e4c40004 	swc1	$f4,4(a2)
    1aa4:	46027201 	sub.s	$f8,$f14,$f2
    1aa8:	c4260000 	lwc1	$f6,0(at)
    1aac:	afa60020 	sw	a2,32(sp)
    1ab0:	46064302 	mul.s	$f12,$f8,$f6
    1ab4:	0c000000 	jal	0 <EnBili_Init>
    1ab8:	00000000 	nop
    1abc:	3c013f80 	lui	at,0x3f80
    1ac0:	44811000 	mtc1	at,$f2
    1ac4:	3c010000 	lui	at,0x0
    1ac8:	c4300000 	lwc1	$f16,0(at)
    1acc:	8fa60020 	lw	a2,32(sp)
    1ad0:	3c010000 	lui	at,0x0
    1ad4:	46008282 	mul.s	$f10,$f16,$f0
    1ad8:	460a1481 	sub.s	$f18,$f2,$f10
    1adc:	e4d20000 	swc1	$f18,0(a2)
    1ae0:	c4240000 	lwc1	$f4,0(at)
    1ae4:	46002202 	mul.s	$f8,$f4,$f0
    1ae8:	46024180 	add.s	$f6,$f8,$f2
    1aec:	e4c60004 	swc1	$f6,4(a2)
    1af0:	c4d00000 	lwc1	$f16,0(a2)
    1af4:	e4d00008 	swc1	$f16,8(a2)
    1af8:	8fbf0014 	lw	ra,20(sp)
    1afc:	27bd0018 	addiu	sp,sp,24
    1b00:	03e00008 	jr	ra
    1b04:	00000000 	nop

00001b08 <func_809C13A8>:
    1b08:	27bdffd0 	addiu	sp,sp,-48
    1b0c:	3c0e0000 	lui	t6,0x0
    1b10:	afbf0014 	sw	ra,20(sp)
    1b14:	afa40030 	sw	a0,48(sp)
    1b18:	afa60038 	sw	a2,56(sp)
    1b1c:	afa7003c 	sw	a3,60(sp)
    1b20:	25ce0000 	addiu	t6,t6,0
    1b24:	8dd80000 	lw	t8,0(t6)
    1b28:	8fa70044 	lw	a3,68(sp)
    1b2c:	27a60020 	addiu	a2,sp,32
    1b30:	acd80000 	sw	t8,0(a2)
    1b34:	8dcf0004 	lw	t7,4(t6)
    1b38:	24010003 	li	at,3
    1b3c:	accf0004 	sw	t7,4(a2)
    1b40:	8dd80008 	lw	t8,8(t6)
    1b44:	acd80008 	sw	t8,8(a2)
    1b48:	14a10006 	bne	a1,at,1b64 <func_809C13A8+0x5c>
    1b4c:	c4e00164 	lwc1	$f0,356(a3)
    1b50:	44050000 	mfc1	a1,$f0
    1b54:	0c000000 	jal	0 <EnBili_Init>
    1b58:	00e02025 	move	a0,a3
    1b5c:	1000001d 	b	1bd4 <func_809C13A8+0xcc>
    1b60:	c7ac0020 	lwc1	$f12,32(sp)
    1b64:	24010002 	li	at,2
    1b68:	54a10007 	bnel	a1,at,1b88 <func_809C13A8+0x80>
    1b6c:	24010004 	li	at,4
    1b70:	44050000 	mfc1	a1,$f0
    1b74:	0c000000 	jal	0 <EnBili_Init>
    1b78:	00e02025 	move	a0,a3
    1b7c:	10000015 	b	1bd4 <func_809C13A8+0xcc>
    1b80:	c7ac0020 	lwc1	$f12,32(sp)
    1b84:	24010004 	li	at,4
    1b88:	54a10012 	bnel	a1,at,1bd4 <func_809C13A8+0xcc>
    1b8c:	c7ac0020 	lwc1	$f12,32(sp)
    1b90:	44050000 	mfc1	a1,$f0
    1b94:	0c000000 	jal	0 <EnBili_Init>
    1b98:	00e02025 	move	a0,a3
    1b9c:	8fa20030 	lw	v0,48(sp)
    1ba0:	845907a0 	lh	t9,1952(v0)
    1ba4:	00194080 	sll	t0,t9,0x2
    1ba8:	00484821 	addu	t1,v0,t0
    1bac:	0c000000 	jal	0 <EnBili_Init>
    1bb0:	8d240790 	lw	a0,1936(t1)
    1bb4:	8fa70044 	lw	a3,68(sp)
    1bb8:	8fad0040 	lw	t5,64(sp)
    1bbc:	34018000 	li	at,0x8000
    1bc0:	84ea00b6 	lh	t2,182(a3)
    1bc4:	004a5823 	subu	t3,v0,t2
    1bc8:	01616021 	addu	t4,t3,at
    1bcc:	a5ac0002 	sh	t4,2(t5)
    1bd0:	c7ac0020 	lwc1	$f12,32(sp)
    1bd4:	c7ae0024 	lwc1	$f14,36(sp)
    1bd8:	8fa60028 	lw	a2,40(sp)
    1bdc:	0c000000 	jal	0 <EnBili_Init>
    1be0:	24070001 	li	a3,1
    1be4:	8fbf0014 	lw	ra,20(sp)
    1be8:	27bd0030 	addiu	sp,sp,48
    1bec:	00001025 	move	v0,zero
    1bf0:	03e00008 	jr	ra
    1bf4:	00000000 	nop

00001bf8 <EnBili_Draw>:
    1bf8:	27bdffa8 	addiu	sp,sp,-88
    1bfc:	afbf002c 	sw	ra,44(sp)
    1c00:	afb10028 	sw	s1,40(sp)
    1c04:	afb00024 	sw	s0,36(sp)
    1c08:	afa5005c 	sw	a1,92(sp)
    1c0c:	8ca50000 	lw	a1,0(a1)
    1c10:	00808025 	move	s0,a0
    1c14:	3c060000 	lui	a2,0x0
    1c18:	24c60000 	addiu	a2,a2,0
    1c1c:	27a40040 	addiu	a0,sp,64
    1c20:	240705f1 	li	a3,1521
    1c24:	0c000000 	jal	0 <EnBili_Init>
    1c28:	00a08825 	move	s1,a1
    1c2c:	8faf005c 	lw	t7,92(sp)
    1c30:	0c000000 	jal	0 <EnBili_Init>
    1c34:	8de40000 	lw	a0,0(t7)
    1c38:	92020194 	lbu	v0,404(s0)
    1c3c:	3c070000 	lui	a3,0x0
    1c40:	24180007 	li	t8,7
    1c44:	28410008 	slti	at,v0,8
    1c48:	14200003 	bnez	at,1c58 <EnBili_Draw+0x60>
    1c4c:	24e70000 	addiu	a3,a3,0
    1c50:	10000002 	b	1c5c <EnBili_Draw+0x64>
    1c54:	a2180194 	sb	t8,404(s0)
    1c58:	a2020194 	sb	v0,404(s0)
    1c5c:	8e2202d0 	lw	v0,720(s1)
    1c60:	3c08db06 	lui	t0,0xdb06
    1c64:	35080020 	ori	t0,t0,0x20
    1c68:	24590008 	addiu	t9,v0,8
    1c6c:	ae3902d0 	sw	t9,720(s1)
    1c70:	ac480000 	sw	t0,0(v0)
    1c74:	92090194 	lbu	t1,404(s0)
    1c78:	3c040000 	lui	a0,0x0
    1c7c:	3c0f0000 	lui	t7,0x0
    1c80:	00095080 	sll	t2,t1,0x2
    1c84:	008a2021 	addu	a0,a0,t2
    1c88:	8c840000 	lw	a0,0(a0)
    1c8c:	3c0100ff 	lui	at,0xff
    1c90:	3421ffff 	ori	at,at,0xffff
    1c94:	00046100 	sll	t4,a0,0x4
    1c98:	000c6f02 	srl	t5,t4,0x1c
    1c9c:	000d7080 	sll	t6,t5,0x2
    1ca0:	01ee7821 	addu	t7,t7,t6
    1ca4:	8def0000 	lw	t7,0(t7)
    1ca8:	00815824 	and	t3,a0,at
    1cac:	3c018000 	lui	at,0x8000
    1cb0:	016fc021 	addu	t8,t3,t7
    1cb4:	0301c821 	addu	t9,t8,at
    1cb8:	ac590004 	sw	t9,4(v0)
    1cbc:	8e090190 	lw	t1,400(s0)
    1cc0:	3c080000 	lui	t0,0x0
    1cc4:	25080000 	addiu	t0,t0,0
    1cc8:	1509000f 	bne	t0,t1,1d08 <EnBili_Draw+0x110>
    1ccc:	3c18db06 	lui	t8,0xdb06
    1cd0:	860a0196 	lh	t2,406(s0)
    1cd4:	3c0edb06 	lui	t6,0xdb06
    1cd8:	35ce0024 	ori	t6,t6,0x24
    1cdc:	314c0001 	andi	t4,t2,0x1
    1ce0:	5180000a 	beqzl	t4,1d0c <EnBili_Draw+0x114>
    1ce4:	8e2202d0 	lw	v0,720(s1)
    1ce8:	8e2202d0 	lw	v0,720(s1)
    1cec:	3c0b0000 	lui	t3,0x0
    1cf0:	256b0000 	addiu	t3,t3,0
    1cf4:	244d0008 	addiu	t5,v0,8
    1cf8:	ae2d02d0 	sw	t5,720(s1)
    1cfc:	ac4b0004 	sw	t3,4(v0)
    1d00:	10000009 	b	1d28 <EnBili_Draw+0x130>
    1d04:	ac4e0000 	sw	t6,0(v0)
    1d08:	8e2202d0 	lw	v0,720(s1)
    1d0c:	3c190000 	lui	t9,0x0
    1d10:	27390000 	addiu	t9,t9,0
    1d14:	244f0008 	addiu	t7,v0,8
    1d18:	ae2f02d0 	sw	t7,720(s1)
    1d1c:	37180024 	ori	t8,t8,0x24
    1d20:	ac580000 	sw	t8,0(v0)
    1d24:	ac590004 	sw	t9,4(v0)
    1d28:	8e050150 	lw	a1,336(s0)
    1d2c:	8e06016c 	lw	a2,364(s0)
    1d30:	afb00014 	sw	s0,20(sp)
    1d34:	afa00010 	sw	zero,16(sp)
    1d38:	8e2802d0 	lw	t0,720(s1)
    1d3c:	8fa4005c 	lw	a0,92(sp)
    1d40:	0c000000 	jal	0 <EnBili_Init>
    1d44:	afa80018 	sw	t0,24(sp)
    1d48:	ae2202d0 	sw	v0,720(s1)
    1d4c:	8fa9005c 	lw	t1,92(sp)
    1d50:	3c060000 	lui	a2,0x0
    1d54:	24c60000 	addiu	a2,a2,0
    1d58:	27a40040 	addiu	a0,sp,64
    1d5c:	24070610 	li	a3,1552
    1d60:	0c000000 	jal	0 <EnBili_Init>
    1d64:	8d250000 	lw	a1,0(t1)
    1d68:	8fbf002c 	lw	ra,44(sp)
    1d6c:	8fb00024 	lw	s0,36(sp)
    1d70:	8fb10028 	lw	s1,40(sp)
    1d74:	03e00008 	jr	ra
    1d78:	27bd0058 	addiu	sp,sp,88
    1d7c:	00000000 	nop
