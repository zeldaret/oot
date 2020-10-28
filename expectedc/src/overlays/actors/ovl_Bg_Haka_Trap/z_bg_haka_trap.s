
build/src/overlays/actors/ovl_Bg_Haka_Trap/z_bg_haka_trap.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaTrap_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afa5003c 	sw	a1,60(sp)
       8:	afbf0024 	sw	ra,36(sp)
       c:	afb00020 	sw	s0,32(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	afa0002c 	sw	zero,44(sp)
      1c:	0c000000 	jal	0 <BgHakaTrap_Init>
      20:	24a500e0 	addiu	a1,a1,224
      24:	860e001c 	lh	t6,28(s0)
      28:	24010004 	li	at,4
      2c:	3c0b0000 	lui	t3,0x0
      30:	31cf00ff 	andi	t7,t6,0xff
      34:	a60f001c 	sh	t7,28(s0)
      38:	8618001c 	lh	t8,28(s0)
      3c:	8fa4003c 	lw	a0,60(sp)
      40:	240a0028 	li	t2,40
      44:	13010086 	beq	t8,at,260 <BgHakaTrap_Init+0x260>
      48:	256b0000 	addiu	t3,t3,0
      4c:	26050178 	addiu	a1,s0,376
      50:	0c000000 	jal	0 <BgHakaTrap_Init>
      54:	afa50028 	sw	a1,40(sp)
      58:	3c070000 	lui	a3,0x0
      5c:	8fa50028 	lw	a1,40(sp)
      60:	24e70024 	addiu	a3,a3,36
      64:	8fa4003c 	lw	a0,60(sp)
      68:	0c000000 	jal	0 <BgHakaTrap_Init>
      6c:	02003025 	move	a2,s0
      70:	8603001c 	lh	v1,28(s0)
      74:	24010005 	li	at,5
      78:	24190014 	li	t9,20
      7c:	10600003 	beqz	v1,8c <BgHakaTrap_Init+0x8c>
      80:	2408000a 	li	t0,10
      84:	14610010 	bne	v1,at,c8 <BgHakaTrap_Init+0xc8>
      88:	02002025 	move	a0,s0
      8c:	a2190168 	sb	t9,360(s0)
      90:	a60801bc 	sh	t0,444(s0)
      94:	3c010000 	lui	at,0x0
      98:	c4240000 	lwc1	$f4,0(at)
      9c:	8609001c 	lh	t1,28(s0)
      a0:	24010005 	li	at,5
      a4:	3c0b0000 	lui	t3,0x0
      a8:	15210004 	bne	t1,at,bc <BgHakaTrap_Init+0xbc>
      ac:	e6040060 	swc1	$f4,96(s0)
      b0:	240a0001 	li	t2,1
      b4:	a600001c 	sh	zero,28(s0)
      b8:	a60a016a 	sh	t2,362(s0)
      bc:	256b0000 	addiu	t3,t3,0
      c0:	1000006c 	b	274 <BgHakaTrap_Init+0x274>
      c4:	ae0b0164 	sw	t3,356(s0)
      c8:	0c000000 	jal	0 <BgHakaTrap_Init>
      cc:	24050001 	li	a1,1
      d0:	8e0c0004 	lw	t4,4(s0)
      d4:	8603001c 	lh	v1,28(s0)
      d8:	24010001 	li	at,1
      dc:	358d0010 	ori	t5,t4,0x10
      e0:	1461002c 	bne	v1,at,194 <BgHakaTrap_Init+0x194>
      e4:	ae0d0004 	sw	t5,4(s0)
      e8:	3c040000 	lui	a0,0x0
      ec:	24840000 	addiu	a0,a0,0
      f0:	0c000000 	jal	0 <BgHakaTrap_Init>
      f4:	27a5002c 	addiu	a1,sp,44
      f8:	240e001e 	li	t6,30
      fc:	a20e0168 	sb	t6,360(s0)
     100:	3c0f0000 	lui	t7,0x0
     104:	8def00e4 	lw	t7,228(t7)
     108:	24190001 	li	t9,1
     10c:	3c010000 	lui	at,0x0
     110:	11e00007 	beqz	t7,130 <BgHakaTrap_Init+0x130>
     114:	3c080000 	lui	t0,0x0
     118:	3c180000 	lui	t8,0x0
     11c:	27180000 	addiu	t8,t8,0
     120:	ae180164 	sw	t8,356(s0)
     124:	3c010000 	lui	at,0x0
     128:	10000007 	b	148 <BgHakaTrap_Init+0x148>
     12c:	ac2000e4 	sw	zero,228(at)
     130:	ac3900e4 	sw	t9,228(at)
     134:	3c013f00 	lui	at,0x3f00
     138:	44813000 	mtc1	at,$f6
     13c:	25080000 	addiu	t0,t0,0
     140:	ae080164 	sw	t0,356(s0)
     144:	e6060060 	swc1	$f6,96(s0)
     148:	3c014361 	lui	at,0x4361
     14c:	44815000 	mtc1	at,$f10
     150:	c608000c 	lwc1	$f8,12(s0)
     154:	3c014248 	lui	at,0x4248
     158:	44818000 	mtc1	at,$f16
     15c:	460a4001 	sub.s	$f0,$f8,$f10
     160:	3c0141c8 	lui	at,0x41c8
     164:	44812000 	mtc1	at,$f4
     168:	240b000a 	li	t3,10
     16c:	46100480 	add.s	$f18,$f0,$f16
     170:	240c0028 	li	t4,40
     174:	e6000080 	swc1	$f0,128(s0)
     178:	a60b01b8 	sh	t3,440(s0)
     17c:	46049181 	sub.s	$f6,$f18,$f4
     180:	a60c01ba 	sh	t4,442(s0)
     184:	4600320d 	trunc.w.s	$f8,$f6
     188:	440a4000 	mfc1	t2,$f8
     18c:	1000002d 	b	244 <BgHakaTrap_Init+0x244>
     190:	a60a016a 	sh	t2,362(s0)
     194:	24010002 	li	at,2
     198:	1461000a 	bne	v1,at,1c4 <BgHakaTrap_Init+0x1c4>
     19c:	3c040000 	lui	a0,0x0
     1a0:	24840000 	addiu	a0,a0,0
     1a4:	0c000000 	jal	0 <BgHakaTrap_Init>
     1a8:	27a5002c 	addiu	a1,sp,44
     1ac:	3c014348 	lui	at,0x4348
     1b0:	44818000 	mtc1	at,$f16
     1b4:	c60a0008 	lwc1	$f10,8(s0)
     1b8:	46105481 	sub.s	$f18,$f10,$f16
     1bc:	1000000a 	b	1e8 <BgHakaTrap_Init+0x1e8>
     1c0:	e6120008 	swc1	$f18,8(s0)
     1c4:	3c014348 	lui	at,0x4348
     1c8:	44813000 	mtc1	at,$f6
     1cc:	c6040008 	lwc1	$f4,8(s0)
     1d0:	3c040000 	lui	a0,0x0
     1d4:	24840000 	addiu	a0,a0,0
     1d8:	46062200 	add.s	$f8,$f4,$f6
     1dc:	27a5002c 	addiu	a1,sp,44
     1e0:	0c000000 	jal	0 <BgHakaTrap_Init>
     1e4:	e6080008 	swc1	$f8,8(s0)
     1e8:	260501c4 	addiu	a1,s0,452
     1ec:	afa50028 	sw	a1,40(sp)
     1f0:	0c000000 	jal	0 <BgHakaTrap_Init>
     1f4:	8fa4003c 	lw	a0,60(sp)
     1f8:	3c070000 	lui	a3,0x0
     1fc:	260d01e4 	addiu	t5,s0,484
     200:	8fa50028 	lw	a1,40(sp)
     204:	afad0010 	sw	t5,16(sp)
     208:	24e700c8 	addiu	a3,a3,200
     20c:	8fa4003c 	lw	a0,60(sp)
     210:	0c000000 	jal	0 <BgHakaTrap_Init>
     214:	02003025 	move	a2,s0
     218:	921901a5 	lbu	t9,421(s0)
     21c:	3c090000 	lui	t1,0x0
     220:	240e0012 	li	t6,18
     224:	240f0073 	li	t7,115
     228:	25290000 	addiu	t1,t1,0
     22c:	a21901a5 	sb	t9,421(s0)
     230:	37280010 	ori	t0,t9,0x10
     234:	a60e01b8 	sh	t6,440(s0)
     238:	a60f01ba 	sh	t7,442(s0)
     23c:	a20801a5 	sb	t0,421(s0)
     240:	ae090164 	sw	t1,356(s0)
     244:	8fa4003c 	lw	a0,60(sp)
     248:	02003025 	move	a2,s0
     24c:	8fa7002c 	lw	a3,44(sp)
     250:	0c000000 	jal	0 <BgHakaTrap_Init>
     254:	24850810 	addiu	a1,a0,2064
     258:	10000006 	b	274 <BgHakaTrap_Init+0x274>
     25c:	ae02014c 	sw	v0,332(s0)
     260:	3c0143fa 	lui	at,0x43fa
     264:	44815000 	mtc1	at,$f10
     268:	a20a0168 	sb	t2,360(s0)
     26c:	ae0b0164 	sw	t3,356(s0)
     270:	e60a00f8 	swc1	$f10,248(s0)
     274:	3c060000 	lui	a2,0x0
     278:	24c600d8 	addiu	a2,a2,216
     27c:	26040098 	addiu	a0,s0,152
     280:	0c000000 	jal	0 <BgHakaTrap_Init>
     284:	00002825 	move	a1,zero
     288:	8fbf0024 	lw	ra,36(sp)
     28c:	8fb00020 	lw	s0,32(sp)
     290:	27bd0038 	addiu	sp,sp,56
     294:	03e00008 	jr	ra
     298:	00000000 	nop

0000029c <BgHakaTrap_Destroy>:
     29c:	27bdffe0 	addiu	sp,sp,-32
     2a0:	afbf001c 	sw	ra,28(sp)
     2a4:	afb00018 	sw	s0,24(sp)
     2a8:	afa50024 	sw	a1,36(sp)
     2ac:	8482001c 	lh	v0,28(a0)
     2b0:	24010004 	li	at,4
     2b4:	00808025 	move	s0,a0
     2b8:	10410012 	beq	v0,at,304 <BgHakaTrap_Destroy+0x68>
     2bc:	00000000 	nop
     2c0:	1040000d 	beqz	v0,2f8 <BgHakaTrap_Destroy+0x5c>
     2c4:	00a02025 	move	a0,a1
     2c8:	24a50810 	addiu	a1,a1,2064
     2cc:	0c000000 	jal	0 <BgHakaTrap_Init>
     2d0:	8e06014c 	lw	a2,332(s0)
     2d4:	8602001c 	lh	v0,28(s0)
     2d8:	24010002 	li	at,2
     2dc:	8fa40024 	lw	a0,36(sp)
     2e0:	10410003 	beq	v0,at,2f0 <BgHakaTrap_Destroy+0x54>
     2e4:	24010003 	li	at,3
     2e8:	54410004 	bnel	v0,at,2fc <BgHakaTrap_Destroy+0x60>
     2ec:	8fa40024 	lw	a0,36(sp)
     2f0:	0c000000 	jal	0 <BgHakaTrap_Init>
     2f4:	260501c4 	addiu	a1,s0,452
     2f8:	8fa40024 	lw	a0,36(sp)
     2fc:	0c000000 	jal	0 <BgHakaTrap_Init>
     300:	26050178 	addiu	a1,s0,376
     304:	0c000000 	jal	0 <BgHakaTrap_Init>
     308:	2604016c 	addiu	a0,s0,364
     30c:	8fbf001c 	lw	ra,28(sp)
     310:	8fb00018 	lw	s0,24(sp)
     314:	27bd0020 	addiu	sp,sp,32
     318:	03e00008 	jr	ra
     31c:	00000000 	nop

00000320 <func_8087FFC0>:
     320:	27bdffc8 	addiu	sp,sp,-56
     324:	afbf0014 	sw	ra,20(sp)
     328:	afa5003c 	sw	a1,60(sp)
     32c:	8ca21c44 	lw	v0,7236(a1)
     330:	afa40038 	sw	a0,56(sp)
     334:	27a50028 	addiu	a1,sp,40
     338:	0c000000 	jal	0 <BgHakaTrap_Init>
     33c:	24460024 	addiu	a2,v0,36
     340:	8fa70038 	lw	a3,56(sp)
     344:	0c000000 	jal	0 <BgHakaTrap_Init>
     348:	84e400b6 	lh	a0,182(a3)
     34c:	8fa70038 	lw	a3,56(sp)
     350:	84e400b6 	lh	a0,182(a3)
     354:	0c000000 	jal	0 <BgHakaTrap_Init>
     358:	e7a00024 	swc1	$f0,36(sp)
     35c:	8fa70038 	lw	a3,56(sp)
     360:	c7b00024 	lwc1	$f16,36(sp)
     364:	c7ac0028 	lwc1	$f12,40(sp)
     368:	84ef001c 	lh	t7,28(a3)
     36c:	3c01c322 	lui	at,0xc322
     370:	55e00029 	bnezl	t7,418 <func_8087FFC0+0xf8>
     374:	44819000 	mtc1	at,$f18
     378:	3c01c248 	lui	at,0xc248
     37c:	44811000 	mtc1	at,$f2
     380:	c7ac0028 	lwc1	$f12,40(sp)
     384:	44803000 	mtc1	zero,$f6
     388:	3c014248 	lui	at,0x4248
     38c:	4602603c 	c.lt.s	$f12,$f2
     390:	00000000 	nop
     394:	45020004 	bc1fl	3a8 <func_8087FFC0+0x88>
     398:	44817000 	mtc1	at,$f14
     39c:	1000000b 	b	3cc <func_8087FFC0+0xac>
     3a0:	e7a20028 	swc1	$f2,40(sp)
     3a4:	44817000 	mtc1	at,$f14
     3a8:	00000000 	nop
     3ac:	460c703c 	c.lt.s	$f14,$f12
     3b0:	00000000 	nop
     3b4:	45020004 	bc1fl	3c8 <func_8087FFC0+0xa8>
     3b8:	46006086 	mov.s	$f2,$f12
     3bc:	10000002 	b	3c8 <func_8087FFC0+0xa8>
     3c0:	46007086 	mov.s	$f2,$f14
     3c4:	46006086 	mov.s	$f2,$f12
     3c8:	e7a20028 	swc1	$f2,40(sp)
     3cc:	c7a40030 	lwc1	$f4,48(sp)
     3d0:	3c01bf80 	lui	at,0xbf80
     3d4:	4604303e 	c.le.s	$f6,$f4
     3d8:	00000000 	nop
     3dc:	45020006 	bc1fl	3f8 <func_8087FFC0+0xd8>
     3e0:	44811000 	mtc1	at,$f2
     3e4:	3c013f80 	lui	at,0x3f80
     3e8:	44811000 	mtc1	at,$f2
     3ec:	10000004 	b	400 <func_8087FFC0+0xe0>
     3f0:	3c01c170 	lui	at,0xc170
     3f4:	44811000 	mtc1	at,$f2
     3f8:	00000000 	nop
     3fc:	3c01c170 	lui	at,0xc170
     400:	44814000 	mtc1	at,$f8
     404:	00000000 	nop
     408:	46081282 	mul.s	$f10,$f2,$f8
     40c:	10000028 	b	4b0 <func_8087FFC0+0x190>
     410:	e7aa0030 	swc1	$f10,48(sp)
     414:	44819000 	mtc1	at,$f18
     418:	44803000 	mtc1	zero,$f6
     41c:	3c014322 	lui	at,0x4322
     420:	4612603c 	c.lt.s	$f12,$f18
     424:	00000000 	nop
     428:	45020006 	bc1fl	444 <func_8087FFC0+0x124>
     42c:	44817000 	mtc1	at,$f14
     430:	3c014322 	lui	at,0x4322
     434:	44816000 	mtc1	at,$f12
     438:	1000000c 	b	46c <func_8087FFC0+0x14c>
     43c:	e7ac0028 	swc1	$f12,40(sp)
     440:	44817000 	mtc1	at,$f14
     444:	00000000 	nop
     448:	460c703c 	c.lt.s	$f14,$f12
     44c:	00000000 	nop
     450:	45020004 	bc1fl	464 <func_8087FFC0+0x144>
     454:	46006086 	mov.s	$f2,$f12
     458:	10000002 	b	464 <func_8087FFC0+0x144>
     45c:	46007086 	mov.s	$f2,$f14
     460:	46006086 	mov.s	$f2,$f12
     464:	46001307 	neg.s	$f12,$f2
     468:	e7ac0028 	swc1	$f12,40(sp)
     46c:	c7a40030 	lwc1	$f4,48(sp)
     470:	3c01bf80 	lui	at,0xbf80
     474:	4604303e 	c.le.s	$f6,$f4
     478:	00000000 	nop
     47c:	45020006 	bc1fl	498 <func_8087FFC0+0x178>
     480:	44811000 	mtc1	at,$f2
     484:	3c013f80 	lui	at,0x3f80
     488:	44811000 	mtc1	at,$f2
     48c:	10000004 	b	4a0 <func_8087FFC0+0x180>
     490:	3c014170 	lui	at,0x4170
     494:	44811000 	mtc1	at,$f2
     498:	00000000 	nop
     49c:	3c014170 	lui	at,0x4170
     4a0:	44814000 	mtc1	at,$f8
     4a4:	00000000 	nop
     4a8:	46081282 	mul.s	$f10,$f2,$f8
     4ac:	e7aa0030 	swc1	$f10,48(sp)
     4b0:	c7a40028 	lwc1	$f4,40(sp)
     4b4:	c7aa0030 	lwc1	$f10,48(sp)
     4b8:	c4f20024 	lwc1	$f18,36(a3)
     4bc:	46002182 	mul.s	$f6,$f4,$f0
     4c0:	46069200 	add.s	$f8,$f18,$f6
     4c4:	46105102 	mul.s	$f4,$f10,$f16
     4c8:	c4ea002c 	lwc1	$f10,44(a3)
     4cc:	46044480 	add.s	$f18,$f8,$f4
     4d0:	4600918d 	trunc.w.s	$f6,$f18
     4d4:	44193000 	mfc1	t9,$f6
     4d8:	00000000 	nop
     4dc:	a4f901be 	sh	t9,446(a3)
     4e0:	c7a80028 	lwc1	$f8,40(sp)
     4e4:	c7a60030 	lwc1	$f6,48(sp)
     4e8:	46104102 	mul.s	$f4,$f8,$f16
     4ec:	46045480 	add.s	$f18,$f10,$f4
     4f0:	46003202 	mul.s	$f8,$f6,$f0
     4f4:	46089280 	add.s	$f10,$f18,$f8
     4f8:	4600510d 	trunc.w.s	$f4,$f10
     4fc:	44092000 	mfc1	t1,$f4
     500:	00000000 	nop
     504:	a4e901c2 	sh	t1,450(a3)
     508:	8fbf0014 	lw	ra,20(sp)
     50c:	27bd0038 	addiu	sp,sp,56
     510:	03e00008 	jr	ra
     514:	00000000 	nop

00000518 <func_808801B8>:
     518:	27bdffd8 	addiu	sp,sp,-40
     51c:	3c180000 	lui	t8,0x0
     520:	8f180000 	lw	t8,0(t8)
     524:	afbf001c 	sw	ra,28(sp)
     528:	afb00018 	sw	s0,24(sp)
     52c:	afa5002c 	sw	a1,44(sp)
     530:	8caf1c44 	lw	t7,7236(a1)
     534:	00808025 	move	s0,a0
     538:	1700001f 	bnez	t8,5b8 <func_808801B8+0xa0>
     53c:	afaf0024 	sw	t7,36(sp)
     540:	0c000000 	jal	0 <BgHakaTrap_Init>
     544:	00a02025 	move	a0,a1
     548:	1440001b 	bnez	v0,5b8 <func_808801B8+0xa0>
     54c:	26040024 	addiu	a0,s0,36
     550:	8e050008 	lw	a1,8(s0)
     554:	0c000000 	jal	0 <BgHakaTrap_Init>
     558:	3c063f00 	lui	a2,0x3f00
     55c:	14400005 	bnez	v0,574 <func_808801B8+0x5c>
     560:	02002025 	move	a0,s0
     564:	0c000000 	jal	0 <BgHakaTrap_Init>
     568:	24052058 	li	a1,8280
     56c:	10000013 	b	5bc <func_808801B8+0xa4>
     570:	02002025 	move	a0,s0
     574:	8602001c 	lh	v0,28(s0)
     578:	24010002 	li	at,2
     57c:	3c190000 	lui	t9,0x0
     580:	54410007 	bnel	v0,at,5a0 <func_808801B8+0x88>
     584:	24010003 	li	at,3
     588:	8f3900e8 	lw	t9,232(t9)
     58c:	3c010000 	lui	at,0x0
     590:	37280001 	ori	t0,t9,0x1
     594:	10000008 	b	5b8 <func_808801B8+0xa0>
     598:	ac2800e8 	sw	t0,232(at)
     59c:	24010003 	li	at,3
     5a0:	14410005 	bne	v0,at,5b8 <func_808801B8+0xa0>
     5a4:	3c090000 	lui	t1,0x0
     5a8:	8d2900e8 	lw	t1,232(t1)
     5ac:	3c010000 	lui	at,0x0
     5b0:	352a0002 	ori	t2,t1,0x2
     5b4:	ac2a00e8 	sw	t2,232(at)
     5b8:	02002025 	move	a0,s0
     5bc:	0c000000 	jal	0 <BgHakaTrap_Init>
     5c0:	8fa5002c 	lw	a1,44(sp)
     5c4:	920b01d5 	lbu	t3,469(s0)
     5c8:	240d0014 	li	t5,20
     5cc:	240f0001 	li	t7,1
     5d0:	316c0002 	andi	t4,t3,0x2
     5d4:	11800008 	beqz	t4,5f8 <func_808801B8+0xe0>
     5d8:	3c0e0000 	lui	t6,0x0
     5dc:	a20d0168 	sb	t5,360(s0)
     5e0:	3c010000 	lui	at,0x0
     5e4:	3c180000 	lui	t8,0x0
     5e8:	ac2f0000 	sw	t7,0(at)
     5ec:	27180000 	addiu	t8,t8,0
     5f0:	1000000c 	b	624 <func_808801B8+0x10c>
     5f4:	ae180164 	sw	t8,356(s0)
     5f8:	8dce00e8 	lw	t6,232(t6)
     5fc:	24010003 	li	at,3
     600:	24190004 	li	t9,4
     604:	55c10008 	bnel	t6,at,628 <func_808801B8+0x110>
     608:	8fbf001c 	lw	ra,28(sp)
     60c:	8fa80024 	lw	t0,36(sp)
     610:	3c010000 	lui	at,0x0
     614:	ac3900e8 	sw	t9,232(at)
     618:	95090088 	lhu	t1,136(t0)
     61c:	352a0100 	ori	t2,t1,0x100
     620:	a50a0088 	sh	t2,136(t0)
     624:	8fbf001c 	lw	ra,28(sp)
     628:	8fb00018 	lw	s0,24(sp)
     62c:	27bd0028 	addiu	sp,sp,40
     630:	03e00008 	jr	ra
     634:	00000000 	nop

00000638 <func_808802D8>:
     638:	27bdff60 	addiu	sp,sp,-160
     63c:	afbf007c 	sw	ra,124(sp)
     640:	afb50078 	sw	s5,120(sp)
     644:	afb40074 	sw	s4,116(sp)
     648:	afb30070 	sw	s3,112(sp)
     64c:	afb2006c 	sw	s2,108(sp)
     650:	afb10068 	sw	s1,104(sp)
     654:	afb00064 	sw	s0,100(sp)
     658:	f7ba0058 	sdc1	$f26,88(sp)
     65c:	f7b80050 	sdc1	$f24,80(sp)
     660:	f7b60048 	sdc1	$f22,72(sp)
     664:	f7b40040 	sdc1	$f20,64(sp)
     668:	90820168 	lbu	v0,360(a0)
     66c:	00a0a825 	move	s5,a1
     670:	00808825 	move	s1,a0
     674:	10400003 	beqz	v0,684 <func_808802D8+0x4c>
     678:	2405205b 	li	a1,8283
     67c:	244effff 	addiu	t6,v0,-1
     680:	a08e0168 	sb	t6,360(a0)
     684:	0c000000 	jal	0 <BgHakaTrap_Init>
     688:	02202025 	move	a0,s1
     68c:	3c0143a0 	lui	at,0x43a0
     690:	4481d000 	mtc1	at,$f26
     694:	3c014120 	lui	at,0x4120
     698:	4481c000 	mtc1	at,$f24
     69c:	3c01c1f0 	lui	at,0xc1f0
     6a0:	4481b000 	mtc1	at,$f22
     6a4:	3c0141f0 	lui	at,0x41f0
     6a8:	3c130000 	lui	s3,0x0
     6ac:	4481a000 	mtc1	at,$f20
     6b0:	267300ec 	addiu	s3,s3,236
     6b4:	00008025 	move	s0,zero
     6b8:	27b40094 	addiu	s4,sp,148
     6bc:	24120002 	li	s2,2
     6c0:	0c000000 	jal	0 <BgHakaTrap_Init>
     6c4:	00000000 	nop
     6c8:	862f001c 	lh	t7,28(s1)
     6cc:	46000086 	mov.s	$f2,$f0
     6d0:	564f0004 	bnel	s2,t7,6e4 <func_808802D8+0xac>
     6d4:	4600a006 	mov.s	$f0,$f20
     6d8:	10000002 	b	6e4 <func_808802D8+0xac>
     6dc:	4600b006 	mov.s	$f0,$f22
     6e0:	4600a006 	mov.s	$f0,$f20
     6e4:	46020102 	mul.s	$f4,$f0,$f2
     6e8:	c6260024 	lwc1	$f6,36(s1)
     6ec:	46062200 	add.s	$f8,$f4,$f6
     6f0:	0c000000 	jal	0 <BgHakaTrap_Init>
     6f4:	e7a80094 	swc1	$f8,148(sp)
     6f8:	46180282 	mul.s	$f10,$f0,$f24
     6fc:	c6300028 	lwc1	$f16,40(s1)
     700:	4600d306 	mov.s	$f12,$f26
     704:	46105480 	add.s	$f18,$f10,$f16
     708:	46149100 	add.s	$f4,$f18,$f20
     70c:	0c000000 	jal	0 <BgHakaTrap_Init>
     710:	e7a40098 	swc1	$f4,152(sp)
     714:	c626002c 	lwc1	$f6,44(s1)
     718:	24180082 	li	t8,130
     71c:	24190014 	li	t9,20
     720:	46060200 	add.s	$f8,$f0,$f6
     724:	240800ff 	li	t0,255
     728:	240900ff 	li	t1,255
     72c:	240a0096 	li	t2,150
     730:	240b00aa 	li	t3,170
     734:	240c00ff 	li	t4,255
     738:	240d0001 	li	t5,1
     73c:	240e0009 	li	t6,9
     740:	e7a8009c 	swc1	$f8,156(sp)
     744:	afae0038 	sw	t6,56(sp)
     748:	afad0034 	sw	t5,52(sp)
     74c:	afac0028 	sw	t4,40(sp)
     750:	afab0024 	sw	t3,36(sp)
     754:	afaa0020 	sw	t2,32(sp)
     758:	afa9001c 	sw	t1,28(sp)
     75c:	afa80018 	sw	t0,24(sp)
     760:	afb90014 	sw	t9,20(sp)
     764:	afb80010 	sw	t8,16(sp)
     768:	afa0003c 	sw	zero,60(sp)
     76c:	afa00030 	sw	zero,48(sp)
     770:	afa0002c 	sw	zero,44(sp)
     774:	02a02025 	move	a0,s5
     778:	02802825 	move	a1,s4
     77c:	02603025 	move	a2,s3
     780:	0c000000 	jal	0 <BgHakaTrap_Init>
     784:	02603825 	move	a3,s3
     788:	26100001 	addiu	s0,s0,1
     78c:	1612ffcc 	bne	s0,s2,6c0 <func_808802D8+0x88>
     790:	00000000 	nop
     794:	922f0168 	lbu	t7,360(s1)
     798:	3c010000 	lui	at,0x0
     79c:	02202025 	move	a0,s1
     7a0:	55e00004 	bnezl	t7,7b4 <func_808802D8+0x17c>
     7a4:	8fbf007c 	lw	ra,124(sp)
     7a8:	0c000000 	jal	0 <BgHakaTrap_Init>
     7ac:	ac200000 	sw	zero,0(at)
     7b0:	8fbf007c 	lw	ra,124(sp)
     7b4:	d7b40040 	ldc1	$f20,64(sp)
     7b8:	d7b60048 	ldc1	$f22,72(sp)
     7bc:	d7b80050 	ldc1	$f24,80(sp)
     7c0:	d7ba0058 	ldc1	$f26,88(sp)
     7c4:	8fb00064 	lw	s0,100(sp)
     7c8:	8fb10068 	lw	s1,104(sp)
     7cc:	8fb2006c 	lw	s2,108(sp)
     7d0:	8fb30070 	lw	s3,112(sp)
     7d4:	8fb40074 	lw	s4,116(sp)
     7d8:	8fb50078 	lw	s5,120(sp)
     7dc:	03e00008 	jr	ra
     7e0:	27bd00a0 	addiu	sp,sp,160

000007e4 <func_80880484>:
     7e4:	27bdffd8 	addiu	sp,sp,-40
     7e8:	afbf001c 	sw	ra,28(sp)
     7ec:	afb00018 	sw	s0,24(sp)
     7f0:	afa5002c 	sw	a1,44(sp)
     7f4:	848e016a 	lh	t6,362(a0)
     7f8:	00808025 	move	s0,a0
     7fc:	3c014040 	lui	at,0x4040
     800:	51c00008 	beqzl	t6,824 <func_80880484+0x40>
     804:	c6000060 	lwc1	$f0,96(s0)
     808:	c4840060 	lwc1	$f4,96(a0)
     80c:	44813000 	mtc1	at,$f6
     810:	00000000 	nop
     814:	46062202 	mul.s	$f8,$f4,$f6
     818:	10000004 	b	82c <func_80880484+0x48>
     81c:	e4880060 	swc1	$f8,96(a0)
     820:	c6000060 	lwc1	$f0,96(s0)
     824:	46000280 	add.s	$f10,$f0,$f0
     828:	e60a0060 	swc1	$f10,96(s0)
     82c:	92030168 	lbu	v1,360(s0)
     830:	3c014339 	lui	at,0x4339
     834:	44819000 	mtc1	at,$f18
     838:	10600002 	beqz	v1,844 <func_80880484+0x60>
     83c:	246fffff 	addiu	t7,v1,-1
     840:	a20f0168 	sb	t7,360(s0)
     844:	c610000c 	lwc1	$f16,12(s0)
     848:	26040028 	addiu	a0,s0,40
     84c:	8e060060 	lw	a2,96(s0)
     850:	46128101 	sub.s	$f4,$f16,$f18
     854:	44052000 	mfc1	a1,$f4
     858:	0c000000 	jal	0 <BgHakaTrap_Init>
     85c:	00000000 	nop
     860:	afa20024 	sw	v0,36(sp)
     864:	92030168 	lbu	v1,360(s0)
     868:	2401000a 	li	at,10
     86c:	14610003 	bne	v1,at,87c <func_80880484+0x98>
     870:	00602025 	move	a0,v1
     874:	8618016a 	lh	t8,362(s0)
     878:	13000005 	beqz	t8,890 <func_80880484+0xac>
     87c:	2401000d 	li	at,13
     880:	14810007 	bne	a0,at,8a0 <func_80880484+0xbc>
     884:	00000000 	nop
     888:	8619016a 	lh	t9,362(s0)
     88c:	13200004 	beqz	t9,8a0 <func_80880484+0xbc>
     890:	02002025 	move	a0,s0
     894:	0c000000 	jal	0 <BgHakaTrap_Init>
     898:	2405284b 	li	a1,10315
     89c:	92030168 	lbu	v1,360(s0)
     8a0:	1460000f 	bnez	v1,8e0 <func_80880484+0xfc>
     8a4:	02002025 	move	a0,s0
     8a8:	8608016a 	lh	t0,362(s0)
     8ac:	44803000 	mtc1	zero,$f6
     8b0:	240a0028 	li	t2,40
     8b4:	11000004 	beqz	t0,8c8 <func_80880484+0xe4>
     8b8:	e6060060 	swc1	$f6,96(s0)
     8bc:	2409000a 	li	t1,10
     8c0:	10000002 	b	8cc <func_80880484+0xe8>
     8c4:	a2090168 	sb	t1,360(s0)
     8c8:	a20a0168 	sb	t2,360(s0)
     8cc:	0c000000 	jal	0 <BgHakaTrap_Init>
     8d0:	2405284a 	li	a1,10314
     8d4:	3c0b0000 	lui	t3,0x0
     8d8:	256b0000 	addiu	t3,t3,0
     8dc:	ae0b0164 	sw	t3,356(s0)
     8e0:	02002025 	move	a0,s0
     8e4:	0c000000 	jal	0 <BgHakaTrap_Init>
     8e8:	8fa5002c 	lw	a1,44(sp)
     8ec:	8fac0024 	lw	t4,36(sp)
     8f0:	3c010001 	lui	at,0x1
     8f4:	34211e60 	ori	at,at,0x1e60
     8f8:	15800004 	bnez	t4,90c <func_80880484+0x128>
     8fc:	8fa4002c 	lw	a0,44(sp)
     900:	00812821 	addu	a1,a0,at
     904:	0c000000 	jal	0 <BgHakaTrap_Init>
     908:	26060178 	addiu	a2,s0,376
     90c:	8fbf001c 	lw	ra,28(sp)
     910:	8fb00018 	lw	s0,24(sp)
     914:	27bd0028 	addiu	sp,sp,40
     918:	03e00008 	jr	ra
     91c:	00000000 	nop

00000920 <func_808805C0>:
     920:	27bdffe0 	addiu	sp,sp,-32
     924:	afbf001c 	sw	ra,28(sp)
     928:	afb00018 	sw	s0,24(sp)
     92c:	afa50024 	sw	a1,36(sp)
     930:	90820168 	lbu	v0,360(a0)
     934:	00808025 	move	s0,a0
     938:	3c0641d8 	lui	a2,0x41d8
     93c:	10400002 	beqz	v0,948 <func_808805C0+0x28>
     940:	244effff 	addiu	t6,v0,-1
     944:	a08e0168 	sb	t6,360(a0)
     948:	860f016a 	lh	t7,362(s0)
     94c:	26040028 	addiu	a0,s0,40
     950:	51e00006 	beqzl	t7,96c <func_808805C0+0x4c>
     954:	92180168 	lbu	t8,360(s0)
     958:	0c000000 	jal	0 <BgHakaTrap_Init>
     95c:	8e05000c 	lw	a1,12(s0)
     960:	1000001b 	b	9d0 <func_808805C0+0xb0>
     964:	92020168 	lbu	v0,360(s0)
     968:	92180168 	lbu	t8,360(s0)
     96c:	26040028 	addiu	a0,s0,40
     970:	3c064090 	lui	a2,0x4090
     974:	2b010015 	slti	at,t8,21
     978:	1420000b 	bnez	at,9a8 <func_808805C0+0x88>
     97c:	3c0142b4 	lui	at,0x42b4
     980:	44813000 	mtc1	at,$f6
     984:	c604000c 	lwc1	$f4,12(s0)
     988:	26040028 	addiu	a0,s0,40
     98c:	3c064110 	lui	a2,0x4110
     990:	46062201 	sub.s	$f8,$f4,$f6
     994:	44054000 	mfc1	a1,$f8
     998:	0c000000 	jal	0 <BgHakaTrap_Init>
     99c:	00000000 	nop
     9a0:	10000004 	b	9b4 <func_808805C0+0x94>
     9a4:	92020168 	lbu	v0,360(s0)
     9a8:	0c000000 	jal	0 <BgHakaTrap_Init>
     9ac:	8e05000c 	lw	a1,12(s0)
     9b0:	92020168 	lbu	v0,360(s0)
     9b4:	24010014 	li	at,20
     9b8:	02002025 	move	a0,s0
     9bc:	14410004 	bne	v0,at,9d0 <func_808805C0+0xb0>
     9c0:	00000000 	nop
     9c4:	0c000000 	jal	0 <BgHakaTrap_Init>
     9c8:	2405284a 	li	a1,10314
     9cc:	92020168 	lbu	v0,360(s0)
     9d0:	1440000b 	bnez	v0,a00 <func_808805C0+0xe0>
     9d4:	02002025 	move	a0,s0
     9d8:	c60a000c 	lwc1	$f10,12(s0)
     9dc:	24190014 	li	t9,20
     9e0:	a2190168 	sb	t9,360(s0)
     9e4:	3c010000 	lui	at,0x0
     9e8:	e60a0028 	swc1	$f10,40(s0)
     9ec:	c4300004 	lwc1	$f16,4(at)
     9f0:	3c080000 	lui	t0,0x0
     9f4:	25080000 	addiu	t0,t0,0
     9f8:	ae080164 	sw	t0,356(s0)
     9fc:	e6100060 	swc1	$f16,96(s0)
     a00:	0c000000 	jal	0 <BgHakaTrap_Init>
     a04:	8fa50024 	lw	a1,36(sp)
     a08:	8fbf001c 	lw	ra,28(sp)
     a0c:	8fb00018 	lw	s0,24(sp)
     a10:	27bd0020 	addiu	sp,sp,32
     a14:	03e00008 	jr	ra
     a18:	00000000 	nop

00000a1c <func_808806BC>:
     a1c:	27bdff80 	addiu	sp,sp,-128
     a20:	afbf0054 	sw	ra,84(sp)
     a24:	afb60050 	sw	s6,80(sp)
     a28:	afb5004c 	sw	s5,76(sp)
     a2c:	afb40048 	sw	s4,72(sp)
     a30:	afb30044 	sw	s3,68(sp)
     a34:	afb20040 	sw	s2,64(sp)
     a38:	afb1003c 	sw	s1,60(sp)
     a3c:	afb00038 	sw	s0,56(sp)
     a40:	f7b80030 	sdc1	$f24,48(sp)
     a44:	f7b60028 	sdc1	$f22,40(sp)
     a48:	f7b40020 	sdc1	$f20,32(sp)
     a4c:	3c010000 	lui	at,0x0
     a50:	c4260008 	lwc1	$f6,8(at)
     a54:	c4840060 	lwc1	$f4,96(a0)
     a58:	90820168 	lbu	v0,360(a0)
     a5c:	3c0142b4 	lui	at,0x42b4
     a60:	46062202 	mul.s	$f8,$f4,$f6
     a64:	4481b000 	mtc1	at,$f22
     a68:	00809825 	move	s3,a0
     a6c:	244effff 	addiu	t6,v0,-1
     a70:	10400002 	beqz	v0,a7c <func_808806BC+0x60>
     a74:	e4880060 	swc1	$f8,96(a0)
     a78:	a08e0168 	sb	t6,360(a0)
     a7c:	c66a0024 	lwc1	$f10,36(s3)
     a80:	3c0141c8 	lui	at,0x41c8
     a84:	4481c000 	mtc1	at,$f24
     a88:	46165400 	add.s	$f16,$f10,$f22
     a8c:	3c013f80 	lui	at,0x3f80
     a90:	44812000 	mtc1	at,$f4
     a94:	00008025 	move	s0,zero
     a98:	e7b00074 	swc1	$f16,116(sp)
     a9c:	c6720028 	lwc1	$f18,40(s3)
     aa0:	24b107c0 	addiu	s1,a1,1984
     aa4:	26720078 	addiu	s2,s3,120
     aa8:	46049180 	add.s	$f6,$f18,$f4
     aac:	24160003 	li	s6,3
     ab0:	27b50074 	addiu	s5,sp,116
     ab4:	27b40064 	addiu	s4,sp,100
     ab8:	46183200 	add.s	$f8,$f6,$f24
     abc:	e7a80078 	swc1	$f8,120(sp)
     ac0:	c66a002c 	lwc1	$f10,44(s3)
     ac4:	e7aa007c 	swc1	$f10,124(sp)
     ac8:	c6740080 	lwc1	$f20,128(s3)
     acc:	02202025 	move	a0,s1
     ad0:	02402825 	move	a1,s2
     ad4:	02803025 	move	a2,s4
     ad8:	02603825 	move	a3,s3
     adc:	0c000000 	jal	0 <BgHakaTrap_Init>
     ae0:	afb50010 	sw	s5,16(sp)
     ae4:	46180081 	sub.s	$f2,$f0,$f24
     ae8:	c7b00074 	lwc1	$f16,116(sp)
     aec:	26100001 	addiu	s0,s0,1
     af0:	4602a03c 	c.lt.s	$f20,$f2
     af4:	46168481 	sub.s	$f18,$f16,$f22
     af8:	45000002 	bc1f	b04 <func_808806BC+0xe8>
     afc:	00000000 	nop
     b00:	46001506 	mov.s	$f20,$f2
     b04:	1616fff1 	bne	s0,s6,acc <func_808806BC+0xb0>
     b08:	e7b20074 	swc1	$f18,116(sp)
     b0c:	4405a000 	mfc1	a1,$f20
     b10:	26640028 	addiu	a0,s3,40
     b14:	0c000000 	jal	0 <BgHakaTrap_Init>
     b18:	8e660060 	lw	a2,96(s3)
     b1c:	1040000d 	beqz	v0,b54 <func_808806BC+0x138>
     b20:	3c010000 	lui	at,0x0
     b24:	c424000c 	lwc1	$f4,12(at)
     b28:	c6660060 	lwc1	$f6,96(s3)
     b2c:	02602025 	move	a0,s3
     b30:	4606203c 	c.lt.s	$f4,$f6
     b34:	00000000 	nop
     b38:	45020004 	bc1fl	b4c <func_808806BC+0x130>
     b3c:	44804000 	mtc1	zero,$f8
     b40:	0c000000 	jal	0 <BgHakaTrap_Init>
     b44:	24052851 	li	a1,10321
     b48:	44804000 	mtc1	zero,$f8
     b4c:	00000000 	nop
     b50:	e6680060 	swc1	$f8,96(s3)
     b54:	3c010000 	lui	at,0x0
     b58:	c4300010 	lwc1	$f16,16(at)
     b5c:	c66a0060 	lwc1	$f10,96(s3)
     b60:	02602025 	move	a0,s3
     b64:	460a803e 	c.le.s	$f16,$f10
     b68:	00000000 	nop
     b6c:	45020004 	bc1fl	b80 <func_808806BC+0x164>
     b70:	926f0168 	lbu	t7,360(s3)
     b74:	0c000000 	jal	0 <BgHakaTrap_Init>
     b78:	2405204d 	li	a1,8269
     b7c:	926f0168 	lbu	t7,360(s3)
     b80:	55e00028 	bnezl	t7,c24 <func_808806BC+0x208>
     b84:	8fbf0054 	lw	ra,84(sp)
     b88:	c6640028 	lwc1	$f4,40(s3)
     b8c:	44809000 	mtc1	zero,$f18
     b90:	3c014248 	lui	at,0x4248
     b94:	4600218d 	trunc.w.s	$f6,$f4
     b98:	44818000 	mtc1	at,$f16
     b9c:	e6720060 	swc1	$f18,96(s3)
     ba0:	c660000c 	lwc1	$f0,12(s3)
     ba4:	44083000 	mfc1	t0,$f6
     ba8:	2418001e 	li	t8,30
     bac:	a2780168 	sb	t8,360(s3)
     bb0:	00084c00 	sll	t1,t0,0x10
     bb4:	00095403 	sra	t2,t1,0x10
     bb8:	448a4000 	mtc1	t2,$f8
     bbc:	3c080000 	lui	t0,0x0
     bc0:	25080000 	addiu	t0,t0,0
     bc4:	468042a0 	cvt.s.w	$f10,$f8
     bc8:	46105480 	add.s	$f18,$f10,$f16
     bcc:	4600910d 	trunc.w.s	$f4,$f18
     bd0:	440c2000 	mfc1	t4,$f4
     bd4:	00000000 	nop
     bd8:	a66c016a 	sh	t4,362(s3)
     bdc:	866d016a 	lh	t5,362(s3)
     be0:	448d3000 	mtc1	t5,$f6
     be4:	00000000 	nop
     be8:	468030a0 	cvt.s.w	$f2,$f6
     bec:	4602003c 	c.lt.s	$f0,$f2
     bf0:	00000000 	nop
     bf4:	45020006 	bc1fl	c10 <func_808806BC+0x1f4>
     bf8:	4600128d 	trunc.w.s	$f10,$f2
     bfc:	4600020d 	trunc.w.s	$f8,$f0
     c00:	440f4000 	mfc1	t7,$f8
     c04:	10000005 	b	c1c <func_808806BC+0x200>
     c08:	a66f016a 	sh	t7,362(s3)
     c0c:	4600128d 	trunc.w.s	$f10,$f2
     c10:	44195000 	mfc1	t9,$f10
     c14:	00000000 	nop
     c18:	a679016a 	sh	t9,362(s3)
     c1c:	ae680164 	sw	t0,356(s3)
     c20:	8fbf0054 	lw	ra,84(sp)
     c24:	d7b40020 	ldc1	$f20,32(sp)
     c28:	d7b60028 	ldc1	$f22,40(sp)
     c2c:	d7b80030 	ldc1	$f24,48(sp)
     c30:	8fb00038 	lw	s0,56(sp)
     c34:	8fb1003c 	lw	s1,60(sp)
     c38:	8fb20040 	lw	s2,64(sp)
     c3c:	8fb30044 	lw	s3,68(sp)
     c40:	8fb40048 	lw	s4,72(sp)
     c44:	8fb5004c 	lw	s5,76(sp)
     c48:	8fb60050 	lw	s6,80(sp)
     c4c:	03e00008 	jr	ra
     c50:	27bd0080 	addiu	sp,sp,128

00000c54 <func_808808F4>:
     c54:	27bdffe8 	addiu	sp,sp,-24
     c58:	afbf0014 	sw	ra,20(sp)
     c5c:	afa5001c 	sw	a1,28(sp)
     c60:	90830168 	lbu	v1,360(a0)
     c64:	00803825 	move	a3,a0
     c68:	3c0641a0 	lui	a2,0x41a0
     c6c:	10600004 	beqz	v1,c80 <func_808808F4+0x2c>
     c70:	00601025 	move	v0,v1
     c74:	246effff 	addiu	t6,v1,-1
     c78:	a08e0168 	sb	t6,360(a0)
     c7c:	31c200ff 	andi	v0,t6,0xff
     c80:	28410015 	slti	at,v0,21
     c84:	1420000d 	bnez	at,cbc <func_808808F4+0x68>
     c88:	24e40028 	addiu	a0,a3,40
     c8c:	84ef016a 	lh	t7,362(a3)
     c90:	afa70018 	sw	a3,24(sp)
     c94:	24e40028 	addiu	a0,a3,40
     c98:	448f2000 	mtc1	t7,$f4
     c9c:	3c064170 	lui	a2,0x4170
     ca0:	46802120 	cvt.s.w	$f4,$f4
     ca4:	44052000 	mfc1	a1,$f4
     ca8:	0c000000 	jal	0 <BgHakaTrap_Init>
     cac:	00000000 	nop
     cb0:	8fa70018 	lw	a3,24(sp)
     cb4:	10000006 	b	cd0 <func_808808F4+0x7c>
     cb8:	a0e20169 	sb	v0,361(a3)
     cbc:	8ce5000c 	lw	a1,12(a3)
     cc0:	0c000000 	jal	0 <BgHakaTrap_Init>
     cc4:	afa70018 	sw	a3,24(sp)
     cc8:	8fa70018 	lw	a3,24(sp)
     ccc:	a0e20169 	sb	v0,361(a3)
     cd0:	90f80168 	lbu	t8,360(a3)
     cd4:	2419001e 	li	t9,30
     cd8:	3c013f00 	lui	at,0x3f00
     cdc:	17000008 	bnez	t8,d00 <func_808808F4+0xac>
     ce0:	3c080000 	lui	t0,0x0
     ce4:	c4e6000c 	lwc1	$f6,12(a3)
     ce8:	44814000 	mtc1	at,$f8
     cec:	25080000 	addiu	t0,t0,0
     cf0:	a0f90168 	sb	t9,360(a3)
     cf4:	ace80164 	sw	t0,356(a3)
     cf8:	e4e60028 	swc1	$f6,40(a3)
     cfc:	e4e80060 	swc1	$f8,96(a3)
     d00:	8fbf0014 	lw	ra,20(sp)
     d04:	27bd0018 	addiu	sp,sp,24
     d08:	03e00008 	jr	ra
     d0c:	00000000 	nop

00000d10 <func_808809B0>:
     d10:	afa50004 	sw	a1,4(sp)
     d14:	90820168 	lbu	v0,360(a0)
     d18:	3c0f0000 	lui	t7,0x0
     d1c:	25ef0000 	addiu	t7,t7,0
     d20:	10400003 	beqz	v0,d30 <func_808809B0+0x20>
     d24:	244effff 	addiu	t6,v0,-1
     d28:	a08e0168 	sb	t6,360(a0)
     d2c:	31c200ff 	andi	v0,t6,0xff
     d30:	14400002 	bnez	v0,d3c <func_808809B0+0x2c>
     d34:	00000000 	nop
     d38:	ac8f0164 	sw	t7,356(a0)
     d3c:	03e00008 	jr	ra
     d40:	00000000 	nop

00000d44 <func_808809E4>:
     d44:	27bdffd8 	addiu	sp,sp,-40
     d48:	afbf0014 	sw	ra,20(sp)
     d4c:	afa40028 	sw	a0,40(sp)
     d50:	afa5002c 	sw	a1,44(sp)
     d54:	afa60030 	sw	a2,48(sp)
     d58:	8ca21c44 	lw	v0,7236(a1)
     d5c:	27a50018 	addiu	a1,sp,24
     d60:	24460024 	addiu	a2,v0,36
     d64:	0c000000 	jal	0 <BgHakaTrap_Init>
     d68:	afa20024 	sw	v0,36(sp)
     d6c:	c7a00018 	lwc1	$f0,24(sp)
     d70:	3c01428c 	lui	at,0x428c
     d74:	44812000 	mtc1	at,$f4
     d78:	46000005 	abs.s	$f0,$f0
     d7c:	8fa20024 	lw	v0,36(sp)
     d80:	4604003c 	c.lt.s	$f0,$f4
     d84:	c7a0001c 	lwc1	$f0,28(sp)
     d88:	3c0142c8 	lui	at,0x42c8
     d8c:	4502002b 	bc1fl	e3c <func_808809E4+0xf8>
     d90:	8fbf0014 	lw	ra,20(sp)
     d94:	44813000 	mtc1	at,$f6
     d98:	46000005 	abs.s	$f0,$f0
     d9c:	3c0143fa 	lui	at,0x43fa
     da0:	4606003c 	c.lt.s	$f0,$f6
     da4:	c7a80020 	lwc1	$f8,32(sp)
     da8:	45020024 	bc1fl	e3c <func_808809E4+0xf8>
     dac:	8fbf0014 	lw	ra,20(sp)
     db0:	44810000 	mtc1	at,$f0
     db4:	8faf002c 	lw	t7,44(sp)
     db8:	4600403c 	c.lt.s	$f8,$f0
     dbc:	00000000 	nop
     dc0:	4502001e 	bc1fl	e3c <func_808809E4+0xf8>
     dc4:	8fbf0014 	lw	ra,20(sp)
     dc8:	8df81c44 	lw	t8,7236(t7)
     dcc:	24010001 	li	at,1
     dd0:	8319014f 	lb	t9,335(t8)
     dd4:	53210019 	beql	t9,at,e3c <func_808809E4+0xf8>
     dd8:	8fbf0014 	lw	ra,20(sp)
     ddc:	46080281 	sub.s	$f10,$f0,$f8
     de0:	3c010000 	lui	at,0x0
     de4:	c4300014 	lwc1	$f16,20(at)
     de8:	87a80032 	lh	t0,50(sp)
     dec:	3c0140a0 	lui	at,0x40a0
     df0:	46105482 	mul.s	$f18,$f10,$f16
     df4:	44884000 	mtc1	t0,$f8
     df8:	44812000 	mtc1	at,$f4
     dfc:	3c010000 	lui	at,0x0
     e00:	468042a0 	cvt.s.w	$f10,$f8
     e04:	46049180 	add.s	$f6,$f18,$f4
     e08:	c4320018 	lwc1	$f18,24(at)
     e0c:	3c010000 	lui	at,0x0
     e10:	c428001c 	lwc1	$f8,28(at)
     e14:	460a3402 	mul.s	$f16,$f6,$f10
     e18:	00000000 	nop
     e1c:	46128102 	mul.s	$f4,$f16,$f18
     e20:	00000000 	nop
     e24:	46082182 	mul.s	$f6,$f4,$f8
     e28:	e44608ac 	swc1	$f6,2220(v0)
     e2c:	8fa90028 	lw	t1,40(sp)
     e30:	852a00b6 	lh	t2,182(t1)
     e34:	a44a08b0 	sh	t2,2224(v0)
     e38:	8fbf0014 	lw	ra,20(sp)
     e3c:	27bd0028 	addiu	sp,sp,40
     e40:	03e00008 	jr	ra
     e44:	00000000 	nop

00000e48 <func_80880AE8>:
     e48:	27bdffe0 	addiu	sp,sp,-32
     e4c:	afbf001c 	sw	ra,28(sp)
     e50:	afb00018 	sw	s0,24(sp)
     e54:	afa50024 	sw	a1,36(sp)
     e58:	908e0168 	lbu	t6,360(a0)
     e5c:	00808025 	move	s0,a0
     e60:	51c0001a 	beqzl	t6,ecc <func_80880AE8+0x84>
     e64:	86090034 	lh	t1,52(s0)
     e68:	860f0034 	lh	t7,52(s0)
     e6c:	3c010000 	lui	at,0x0
     e70:	c4280020 	lwc1	$f8,32(at)
     e74:	448f2000 	mtc1	t7,$f4
     e78:	3c0140a0 	lui	at,0x40a0
     e7c:	44818000 	mtc1	at,$f16
     e80:	468021a0 	cvt.s.w	$f6,$f4
     e84:	24840034 	addiu	a0,a0,52
     e88:	00002825 	move	a1,zero
     e8c:	46083282 	mul.s	$f10,$f6,$f8
     e90:	46105480 	add.s	$f18,$f10,$f16
     e94:	4600910d 	trunc.w.s	$f4,$f18
     e98:	44062000 	mfc1	a2,$f4
     e9c:	00000000 	nop
     ea0:	00063400 	sll	a2,a2,0x10
     ea4:	0c000000 	jal	0 <BgHakaTrap_Init>
     ea8:	00063403 	sra	a2,a2,0x10
     eac:	1040001d 	beqz	v0,f24 <func_80880AE8+0xdc>
     eb0:	24190028 	li	t9,40
     eb4:	3c080000 	lui	t0,0x0
     eb8:	25080000 	addiu	t0,t0,0
     ebc:	a2190168 	sb	t9,360(s0)
     ec0:	10000018 	b	f24 <func_80880AE8+0xdc>
     ec4:	ae080164 	sw	t0,356(s0)
     ec8:	86090034 	lh	t1,52(s0)
     ecc:	3c010000 	lui	at,0x0
     ed0:	c42a0024 	lwc1	$f10,36(at)
     ed4:	44893000 	mtc1	t1,$f6
     ed8:	3c0140a0 	lui	at,0x40a0
     edc:	44819000 	mtc1	at,$f18
     ee0:	46803220 	cvt.s.w	$f8,$f6
     ee4:	26040034 	addiu	a0,s0,52
     ee8:	24053a00 	li	a1,14848
     eec:	460a4402 	mul.s	$f16,$f8,$f10
     ef0:	46128100 	add.s	$f4,$f16,$f18
     ef4:	4600218d 	trunc.w.s	$f6,$f4
     ef8:	44063000 	mfc1	a2,$f6
     efc:	00000000 	nop
     f00:	00063400 	sll	a2,a2,0x10
     f04:	0c000000 	jal	0 <BgHakaTrap_Init>
     f08:	00063403 	sra	a2,a2,0x10
     f0c:	10400005 	beqz	v0,f24 <func_80880AE8+0xdc>
     f10:	240b0064 	li	t3,100
     f14:	3c0c0000 	lui	t4,0x0
     f18:	258c0000 	addiu	t4,t4,0
     f1c:	a20b0168 	sb	t3,360(s0)
     f20:	ae0c0164 	sw	t4,356(s0)
     f24:	86060034 	lh	a2,52(s0)
     f28:	860d00b8 	lh	t5,184(s0)
     f2c:	02002025 	move	a0,s0
     f30:	28c11801 	slti	at,a2,6145
     f34:	01a67021 	addu	t6,t5,a2
     f38:	14200004 	bnez	at,f4c <func_80880AE8+0x104>
     f3c:	a60e00b8 	sh	t6,184(s0)
     f40:	0c000000 	jal	0 <BgHakaTrap_Init>
     f44:	24052057 	li	a1,8279
     f48:	86060034 	lh	a2,52(s0)
     f4c:	02002025 	move	a0,s0
     f50:	0c000000 	jal	0 <BgHakaTrap_Init>
     f54:	8fa50024 	lw	a1,36(sp)
     f58:	8fbf001c 	lw	ra,28(sp)
     f5c:	8fb00018 	lw	s0,24(sp)
     f60:	27bd0020 	addiu	sp,sp,32
     f64:	03e00008 	jr	ra
     f68:	00000000 	nop

00000f6c <func_80880C0C>:
     f6c:	27bdffe8 	addiu	sp,sp,-24
     f70:	afbf0014 	sw	ra,20(sp)
     f74:	afa5001c 	sw	a1,28(sp)
     f78:	90820168 	lbu	v0,360(a0)
     f7c:	24052057 	li	a1,8279
     f80:	10400002 	beqz	v0,f8c <func_80880C0C+0x20>
     f84:	244effff 	addiu	t6,v0,-1
     f88:	a08e0168 	sb	t6,360(a0)
     f8c:	0c000000 	jal	0 <BgHakaTrap_Init>
     f90:	afa40018 	sw	a0,24(sp)
     f94:	8fa40018 	lw	a0,24(sp)
     f98:	3c190000 	lui	t9,0x0
     f9c:	24180001 	li	t8,1
     fa0:	908f0168 	lbu	t7,360(a0)
     fa4:	27390000 	addiu	t9,t9,0
     fa8:	55e00004 	bnezl	t7,fbc <func_80880C0C+0x50>
     fac:	84860034 	lh	a2,52(a0)
     fb0:	a0980168 	sb	t8,360(a0)
     fb4:	ac990164 	sw	t9,356(a0)
     fb8:	84860034 	lh	a2,52(a0)
     fbc:	848800b8 	lh	t0,184(a0)
     fc0:	01064821 	addu	t1,t0,a2
     fc4:	a48900b8 	sh	t1,184(a0)
     fc8:	0c000000 	jal	0 <BgHakaTrap_Init>
     fcc:	8fa5001c 	lw	a1,28(sp)
     fd0:	8fbf0014 	lw	ra,20(sp)
     fd4:	27bd0018 	addiu	sp,sp,24
     fd8:	03e00008 	jr	ra
     fdc:	00000000 	nop

00000fe0 <BgHakaTrap_Update>:
     fe0:	27bdffd0 	addiu	sp,sp,-48
     fe4:	afb00014 	sw	s0,20(sp)
     fe8:	00808025 	move	s0,a0
     fec:	afbf001c 	sw	ra,28(sp)
     ff0:	afb10018 	sw	s1,24(sp)
     ff4:	8e190164 	lw	t9,356(s0)
     ff8:	00a08825 	move	s1,a1
     ffc:	0320f809 	jalr	t9
    1000:	00000000 	nop
    1004:	8602001c 	lh	v0,28(s0)
    1008:	24010004 	li	at,4
    100c:	10410029 	beq	v0,at,10b4 <BgHakaTrap_Update+0xd4>
    1010:	24010001 	li	at,1
    1014:	50410028 	beql	v0,at,10b8 <BgHakaTrap_Update+0xd8>
    1018:	8fbf001c 	lw	ra,28(sp)
    101c:	c6040028 	lwc1	$f4,40(s0)
    1020:	8602001c 	lh	v0,28(s0)
    1024:	24010005 	li	at,5
    1028:	4600218d 	trunc.w.s	$f6,$f4
    102c:	02202025 	move	a0,s1
    1030:	26060178 	addiu	a2,s0,376
    1034:	440f3000 	mfc1	t7,$f6
    1038:	10400002 	beqz	v0,1044 <BgHakaTrap_Update+0x64>
    103c:	a60f01c0 	sh	t7,448(s0)
    1040:	1441000c 	bne	v0,at,1074 <BgHakaTrap_Update+0x94>
    1044:	3c010001 	lui	at,0x1
    1048:	34211e60 	ori	at,at,0x1e60
    104c:	02212821 	addu	a1,s1,at
    1050:	afa50024 	sw	a1,36(sp)
    1054:	0c000000 	jal	0 <BgHakaTrap_Init>
    1058:	afa60020 	sw	a2,32(sp)
    105c:	8fa50024 	lw	a1,36(sp)
    1060:	8fa60020 	lw	a2,32(sp)
    1064:	0c000000 	jal	0 <BgHakaTrap_Init>
    1068:	02202025 	move	a0,s1
    106c:	10000012 	b	10b8 <BgHakaTrap_Update+0xd8>
    1070:	8fbf001c 	lw	ra,28(sp)
    1074:	8e080164 	lw	t0,356(s0)
    1078:	3c180000 	lui	t8,0x0
    107c:	27180000 	addiu	t8,t8,0
    1080:	17080006 	bne	t8,t0,109c <BgHakaTrap_Update+0xbc>
    1084:	02202025 	move	a0,s1
    1088:	3c010001 	lui	at,0x1
    108c:	34211e60 	ori	at,at,0x1e60
    1090:	02212821 	addu	a1,s1,at
    1094:	0c000000 	jal	0 <BgHakaTrap_Init>
    1098:	260601c4 	addiu	a2,s0,452
    109c:	3c010001 	lui	at,0x1
    10a0:	34211e60 	ori	at,at,0x1e60
    10a4:	02212821 	addu	a1,s1,at
    10a8:	02202025 	move	a0,s1
    10ac:	0c000000 	jal	0 <BgHakaTrap_Init>
    10b0:	26060178 	addiu	a2,s0,376
    10b4:	8fbf001c 	lw	ra,28(sp)
    10b8:	8fb00014 	lw	s0,20(sp)
    10bc:	8fb10018 	lw	s1,24(sp)
    10c0:	03e00008 	jr	ra
    10c4:	27bd0030 	addiu	sp,sp,48

000010c8 <func_80880D68>:
    10c8:	27bdffb8 	addiu	sp,sp,-72
    10cc:	afa40048 	sw	a0,72(sp)
    10d0:	afbf001c 	sw	ra,28(sp)
    10d4:	3c040000 	lui	a0,0x0
    10d8:	24840068 	addiu	a0,a0,104
    10dc:	0c000000 	jal	0 <BgHakaTrap_Init>
    10e0:	27a50024 	addiu	a1,sp,36
    10e4:	3c040000 	lui	a0,0x0
    10e8:	24840074 	addiu	a0,a0,116
    10ec:	0c000000 	jal	0 <BgHakaTrap_Init>
    10f0:	27a50030 	addiu	a1,sp,48
    10f4:	3c040000 	lui	a0,0x0
    10f8:	24840080 	addiu	a0,a0,128
    10fc:	0c000000 	jal	0 <BgHakaTrap_Init>
    1100:	27a5003c 	addiu	a1,sp,60
    1104:	8fa40048 	lw	a0,72(sp)
    1108:	27ae003c 	addiu	t6,sp,60
    110c:	afae0010 	sw	t6,16(sp)
    1110:	248401c4 	addiu	a0,a0,452
    1114:	afa40020 	sw	a0,32(sp)
    1118:	00002825 	move	a1,zero
    111c:	27a60024 	addiu	a2,sp,36
    1120:	0c000000 	jal	0 <BgHakaTrap_Init>
    1124:	27a70030 	addiu	a3,sp,48
    1128:	3c040000 	lui	a0,0x0
    112c:	248400bc 	addiu	a0,a0,188
    1130:	0c000000 	jal	0 <BgHakaTrap_Init>
    1134:	27a50030 	addiu	a1,sp,48
    1138:	27af0030 	addiu	t7,sp,48
    113c:	afaf0010 	sw	t7,16(sp)
    1140:	8fa40020 	lw	a0,32(sp)
    1144:	24050001 	li	a1,1
    1148:	27a60024 	addiu	a2,sp,36
    114c:	0c000000 	jal	0 <BgHakaTrap_Init>
    1150:	27a7003c 	addiu	a3,sp,60
    1154:	8fbf001c 	lw	ra,28(sp)
    1158:	27bd0048 	addiu	sp,sp,72
    115c:	03e00008 	jr	ra
    1160:	00000000 	nop

00001164 <BgHakaTrap_Draw>:
    1164:	27bdffc0 	addiu	sp,sp,-64
    1168:	3c0e0000 	lui	t6,0x0
    116c:	25ce0000 	addiu	t6,t6,0
    1170:	afbf001c 	sw	ra,28(sp)
    1174:	afb00018 	sw	s0,24(sp)
    1178:	afa50044 	sw	a1,68(sp)
    117c:	afae0028 	sw	t6,40(sp)
    1180:	8c8f0164 	lw	t7,356(a0)
    1184:	00808025 	move	s0,a0
    1188:	00a02025 	move	a0,a1
    118c:	15cf0008 	bne	t6,t7,11b0 <BgHakaTrap_Draw+0x4c>
    1190:	3c050000 	lui	a1,0x0
    1194:	92060168 	lbu	a2,360(s0)
    1198:	24a5010c 	addiu	a1,a1,268
    119c:	24070028 	li	a3,40
    11a0:	24c60014 	addiu	a2,a2,20
    11a4:	00063400 	sll	a2,a2,0x10
    11a8:	0c000000 	jal	0 <BgHakaTrap_Init>
    11ac:	00063403 	sra	a2,a2,0x10
    11b0:	8618001c 	lh	t8,28(s0)
    11b4:	3c050000 	lui	a1,0x0
    11b8:	8fa40044 	lw	a0,68(sp)
    11bc:	0018c880 	sll	t9,t8,0x2
    11c0:	00b92821 	addu	a1,a1,t9
    11c4:	0c000000 	jal	0 <BgHakaTrap_Init>
    11c8:	8ca500f8 	lw	a1,248(a1)
    11cc:	8e020164 	lw	v0,356(s0)
    11d0:	3c080000 	lui	t0,0x0
    11d4:	25080000 	addiu	t0,t0,0
    11d8:	55020005 	bnel	t0,v0,11f0 <BgHakaTrap_Draw+0x8c>
    11dc:	8fa90028 	lw	t1,40(sp)
    11e0:	0c000000 	jal	0 <BgHakaTrap_Init>
    11e4:	02002025 	move	a0,s0
    11e8:	8e020164 	lw	v0,356(s0)
    11ec:	8fa90028 	lw	t1,40(sp)
    11f0:	15220004 	bne	t1,v0,1204 <BgHakaTrap_Draw+0xa0>
    11f4:	00000000 	nop
    11f8:	0c000000 	jal	0 <BgHakaTrap_Init>
    11fc:	8fa40044 	lw	a0,68(sp)
    1200:	8e020164 	lw	v0,356(s0)
    1204:	3c0a0000 	lui	t2,0x0
    1208:	254a0000 	addiu	t2,t2,0
    120c:	55420019 	bnel	t2,v0,1274 <BgHakaTrap_Draw+0x110>
    1210:	8fbf001c 	lw	ra,28(sp)
    1214:	920b0169 	lbu	t3,361(s0)
    1218:	3c0142dc 	lui	at,0x42dc
    121c:	55600015 	bnezl	t3,1274 <BgHakaTrap_Draw+0x110>
    1220:	8fbf001c 	lw	ra,28(sp)
    1224:	c6040024 	lwc1	$f4,36(s0)
    1228:	44815000 	mtc1	at,$f10
    122c:	8fa40044 	lw	a0,68(sp)
    1230:	e7a4002c 	swc1	$f4,44(sp)
    1234:	c606002c 	lwc1	$f6,44(s0)
    1238:	3c010001 	lui	at,0x1
    123c:	34211d60 	ori	at,at,0x1d60
    1240:	e7a60034 	swc1	$f6,52(sp)
    1244:	c6080028 	lwc1	$f8,40(s0)
    1248:	2606016c 	addiu	a2,s0,364
    124c:	afa60028 	sw	a2,40(sp)
    1250:	460a4400 	add.s	$f16,$f8,$f10
    1254:	27a5002c 	addiu	a1,sp,44
    1258:	00812021 	addu	a0,a0,at
    125c:	0c000000 	jal	0 <BgHakaTrap_Init>
    1260:	e7b00030 	swc1	$f16,48(sp)
    1264:	8fa40028 	lw	a0,40(sp)
    1268:	0c000000 	jal	0 <BgHakaTrap_Init>
    126c:	2405200d 	li	a1,8205
    1270:	8fbf001c 	lw	ra,28(sp)
    1274:	8fb00018 	lw	s0,24(sp)
    1278:	27bd0040 	addiu	sp,sp,64
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop
	...
