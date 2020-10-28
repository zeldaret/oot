
build/src/overlays/actors/ovl_Bg_Heavy_Block/z_bg_heavy_block.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHeavyBlock_SetPieceRandRot>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	3c014480 	lui	at,0x4480
       8:	afbf0014 	sw	ra,20(sp)
       c:	44816000 	mtc1	at,$f12
      10:	afa40018 	sw	a0,24(sp)
      14:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
      18:	afa5001c 	sw	a1,28(sp)
      1c:	c7a4001c 	lwc1	$f4,28(sp)
      20:	8fb80018 	lw	t8,24(sp)
      24:	3c014480 	lui	at,0x4480
      28:	46040182 	mul.s	$f6,$f0,$f4
      2c:	44816000 	mtc1	at,$f12
      30:	4600320d 	trunc.w.s	$f8,$f6
      34:	440f4000 	mfc1	t7,$f8
      38:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
      3c:	a70f0030 	sh	t7,48(t8)
      40:	c7aa001c 	lwc1	$f10,28(sp)
      44:	8fa90018 	lw	t1,24(sp)
      48:	3c014480 	lui	at,0x4480
      4c:	460a0402 	mul.s	$f16,$f0,$f10
      50:	44816000 	mtc1	at,$f12
      54:	4600848d 	trunc.w.s	$f18,$f16
      58:	44089000 	mfc1	t0,$f18
      5c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
      60:	a5280032 	sh	t0,50(t1)
      64:	c7a4001c 	lwc1	$f4,28(sp)
      68:	8fac0018 	lw	t4,24(sp)
      6c:	46040182 	mul.s	$f6,$f0,$f4
      70:	4600320d 	trunc.w.s	$f8,$f6
      74:	440b4000 	mfc1	t3,$f8
      78:	00000000 	nop
      7c:	a58b0034 	sh	t3,52(t4)
      80:	8fbf0014 	lw	ra,20(sp)
      84:	27bd0018 	addiu	sp,sp,24
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <BgHeavyBlock_InitPiece>:
      90:	3c010000 	lui	at,0x0
      94:	c42400c8 	lwc1	$f4,200(at)
      98:	27bdffd8 	addiu	sp,sp,-40
      9c:	3c01c140 	lui	at,0xc140
      a0:	44813000 	mtc1	at,$f6
      a4:	afbf001c 	sw	ra,28(sp)
      a8:	afb00018 	sw	s0,24(sp)
      ac:	afa5002c 	sw	a1,44(sp)
      b0:	3c014140 	lui	at,0x4140
      b4:	e484006c 	swc1	$f4,108(a0)
      b8:	e4860070 	swc1	$f6,112(a0)
      bc:	c7aa002c 	lwc1	$f10,44(sp)
      c0:	44814000 	mtc1	at,$f8
      c4:	00808025 	move	s0,a0
      c8:	460a4302 	mul.s	$f12,$f8,$f10
      cc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
      d0:	00000000 	nop
      d4:	44808000 	mtc1	zero,$f16
      d8:	3c014000 	lui	at,0x4000
      dc:	4610003c 	c.lt.s	$f0,$f16
      e0:	00000000 	nop
      e4:	45020008 	bc1fl	108 <BgHeavyBlock_InitPiece+0x78>
      e8:	44813000 	mtc1	at,$f6
      ec:	3c014000 	lui	at,0x4000
      f0:	44819000 	mtc1	at,$f18
      f4:	00000000 	nop
      f8:	46120101 	sub.s	$f4,$f0,$f18
      fc:	10000005 	b	114 <BgHeavyBlock_InitPiece+0x84>
     100:	e7a40024 	swc1	$f4,36(sp)
     104:	44813000 	mtc1	at,$f6
     108:	00000000 	nop
     10c:	46060200 	add.s	$f8,$f0,$f6
     110:	e7a80024 	swc1	$f8,36(sp)
     114:	3c014100 	lui	at,0x4100
     118:	44816000 	mtc1	at,$f12
     11c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     120:	00000000 	nop
     124:	3c014080 	lui	at,0x4080
     128:	44815000 	mtc1	at,$f10
     12c:	c7a2002c 	lwc1	$f2,44(sp)
     130:	3c01c100 	lui	at,0xc100
     134:	460a0400 	add.s	$f16,$f0,$f10
     138:	44812000 	mtc1	at,$f4
     13c:	46028482 	mul.s	$f18,$f16,$f2
     140:	e6120060 	swc1	$f18,96(s0)
     144:	46022302 	mul.s	$f12,$f4,$f2
     148:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     14c:	00000000 	nop
     150:	e6000064 	swc1	$f0,100(s0)
     154:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     158:	86040032 	lh	a0,50(s0)
     15c:	e7a00020 	swc1	$f0,32(sp)
     160:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     164:	86040032 	lh	a0,50(s0)
     168:	c7a60020 	lwc1	$f6,32(sp)
     16c:	c7a80024 	lwc1	$f8,36(sp)
     170:	c6100064 	lwc1	$f16,100(s0)
     174:	86040032 	lh	a0,50(s0)
     178:	46083282 	mul.s	$f10,$f6,$f8
     17c:	00000000 	nop
     180:	46100482 	mul.s	$f18,$f0,$f16
     184:	460a9100 	add.s	$f4,$f18,$f10
     188:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     18c:	e604005c 	swc1	$f4,92(s0)
     190:	e7a00020 	swc1	$f0,32(sp)
     194:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     198:	86040032 	lh	a0,50(s0)
     19c:	c7a60020 	lwc1	$f6,32(sp)
     1a0:	c7b00024 	lwc1	$f16,36(sp)
     1a4:	c60a0064 	lwc1	$f10,100(s0)
     1a8:	46003207 	neg.s	$f8,$f6
     1ac:	02002025 	move	a0,s0
     1b0:	46104482 	mul.s	$f18,$f8,$f16
     1b4:	00000000 	nop
     1b8:	460a0102 	mul.s	$f4,$f0,$f10
     1bc:	46122180 	add.s	$f6,$f4,$f18
     1c0:	e6060064 	swc1	$f6,100(s0)
     1c4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     1c8:	8fa5002c 	lw	a1,44(sp)
     1cc:	3c010000 	lui	at,0x0
     1d0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     1d4:	c42c00cc 	lwc1	$f12,204(at)
     1d8:	3c013f80 	lui	at,0x3f80
     1dc:	44814000 	mtc1	at,$f8
     1e0:	02002025 	move	a0,s0
     1e4:	46080400 	add.s	$f16,$f0,$f8
     1e8:	44058000 	mfc1	a1,$f16
     1ec:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     1f0:	00000000 	nop
     1f4:	8fbf001c 	lw	ra,28(sp)
     1f8:	8fb00018 	lw	s0,24(sp)
     1fc:	27bd0028 	addiu	sp,sp,40
     200:	03e00008 	jr	ra
     204:	00000000 	nop

00000208 <BgHeavyBlock_SetupDynapoly>:
     208:	27bdffd0 	addiu	sp,sp,-48
     20c:	afbf001c 	sw	ra,28(sp)
     210:	afb00018 	sw	s0,24(sp)
     214:	afa50034 	sw	a1,52(sp)
     218:	afa00024 	sw	zero,36(sp)
     21c:	8c8e0004 	lw	t6,4(a0)
     220:	3c010002 	lui	at,0x2
     224:	34210030 	ori	at,at,0x30
     228:	01c17825 	or	t7,t6,at
     22c:	00808025 	move	s0,a0
     230:	ac8f0004 	sw	t7,4(a0)
     234:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     238:	00002825 	move	a1,zero
     23c:	3c040000 	lui	a0,0x0
     240:	24840000 	addiu	a0,a0,0
     244:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     248:	27a50024 	addiu	a1,sp,36
     24c:	8fa40034 	lw	a0,52(sp)
     250:	02003025 	move	a2,s0
     254:	8fa70024 	lw	a3,36(sp)
     258:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     25c:	24850810 	addiu	a1,a0,2064
     260:	ae02014c 	sw	v0,332(s0)
     264:	8fbf001c 	lw	ra,28(sp)
     268:	8fb00018 	lw	s0,24(sp)
     26c:	27bd0030 	addiu	sp,sp,48
     270:	03e00008 	jr	ra
     274:	00000000 	nop

00000278 <BgHeavyBlock_Init>:
     278:	27bdffe0 	addiu	sp,sp,-32
     27c:	afa50024 	sw	a1,36(sp)
     280:	afbf001c 	sw	ra,28(sp)
     284:	afb00018 	sw	s0,24(sp)
     288:	3c050000 	lui	a1,0x0
     28c:	00808025 	move	s0,a0
     290:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     294:	24a50020 	addiu	a1,a1,32
     298:	44800000 	mtc1	zero,$f0
     29c:	260400b4 	addiu	a0,s0,180
     2a0:	00003025 	move	a2,zero
     2a4:	44050000 	mfc1	a1,$f0
     2a8:	44070000 	mfc1	a3,$f0
     2ac:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     2b0:	00000000 	nop
     2b4:	8fa50024 	lw	a1,36(sp)
     2b8:	a6000172 	sh	zero,370(s0)
     2bc:	24010064 	li	at,100
     2c0:	84ae00a4 	lh	t6,164(a1)
     2c4:	55c10008 	bnel	t6,at,2e8 <BgHeavyBlock_Init+0x70>
     2c8:	8609001c 	lh	t1,28(s0)
     2cc:	860f001c 	lh	t7,28(s0)
     2d0:	31f8ff00 	andi	t8,t7,0xff00
     2d4:	a618001c 	sh	t8,28(s0)
     2d8:	8619001c 	lh	t9,28(s0)
     2dc:	37280004 	ori	t0,t9,0x4
     2e0:	a608001c 	sh	t0,28(s0)
     2e4:	8609001c 	lh	t1,28(s0)
     2e8:	312a00ff 	andi	t2,t1,0xff
     2ec:	2d410005 	sltiu	at,t2,5
     2f0:	10200063 	beqz	at,480 <BgHeavyBlock_Init+0x208>
     2f4:	000a5080 	sll	t2,t2,0x2
     2f8:	3c010000 	lui	at,0x0
     2fc:	002a0821 	addu	at,at,t2
     300:	8c2a00d0 	lw	t2,208(at)
     304:	01400008 	jr	t2
     308:	00000000 	nop
     30c:	3c0b0000 	lui	t3,0x0
     310:	3c0c0000 	lui	t4,0x0
     314:	256b0000 	addiu	t3,t3,0
     318:	258c0000 	addiu	t4,t4,0
     31c:	ae0b0134 	sw	t3,308(s0)
     320:	ae0c0174 	sw	t4,372(s0)
     324:	02002025 	move	a0,s0
     328:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     32c:	3c053f80 	lui	a1,0x3f80
     330:	8e0e0004 	lw	t6,4(s0)
     334:	3c01c248 	lui	at,0xc248
     338:	44812000 	mtc1	at,$f4
     33c:	240d0078 	li	t5,120
     340:	35cf0010 	ori	t7,t6,0x10
     344:	a60d0170 	sh	t5,368(s0)
     348:	ae0f0004 	sw	t7,4(s0)
     34c:	10000051 	b	494 <BgHeavyBlock_Init+0x21c>
     350:	e6040168 	swc1	$f4,360(s0)
     354:	3c180000 	lui	t8,0x0
     358:	3c190000 	lui	t9,0x0
     35c:	27180000 	addiu	t8,t8,0
     360:	27390000 	addiu	t9,t9,0
     364:	ae180134 	sw	t8,308(s0)
     368:	ae190174 	sw	t9,372(s0)
     36c:	02002025 	move	a0,s0
     370:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     374:	3c054000 	lui	a1,0x4000
     378:	8e090004 	lw	t1,4(s0)
     37c:	3c01c1a0 	lui	at,0xc1a0
     380:	44813000 	mtc1	at,$f6
     384:	24080078 	li	t0,120
     388:	352a0010 	ori	t2,t1,0x10
     38c:	a6080170 	sh	t0,368(s0)
     390:	ae0a0004 	sw	t2,4(s0)
     394:	1000003f 	b	494 <BgHeavyBlock_Init+0x21c>
     398:	e6060168 	swc1	$f6,360(s0)
     39c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     3a0:	02002025 	move	a0,s0
     3a4:	8605001c 	lh	a1,28(s0)
     3a8:	8fa40024 	lw	a0,36(sp)
     3ac:	00052a03 	sra	a1,a1,0x8
     3b0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     3b4:	30a5003f 	andi	a1,a1,0x3f
     3b8:	10400005 	beqz	v0,3d0 <BgHeavyBlock_Init+0x158>
     3bc:	3c0b0000 	lui	t3,0x0
     3c0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     3c4:	02002025 	move	a0,s0
     3c8:	10000037 	b	4a8 <BgHeavyBlock_Init+0x230>
     3cc:	8fbf001c 	lw	ra,28(sp)
     3d0:	256b0000 	addiu	t3,t3,0
     3d4:	1000002f 	b	494 <BgHeavyBlock_Init+0x21c>
     3d8:	ae0b0174 	sw	t3,372(s0)
     3dc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     3e0:	02002025 	move	a0,s0
     3e4:	8605001c 	lh	a1,28(s0)
     3e8:	8fa40024 	lw	a0,36(sp)
     3ec:	00052a03 	sra	a1,a1,0x8
     3f0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     3f4:	30a5003f 	andi	a1,a1,0x3f
     3f8:	10400018 	beqz	v0,45c <BgHeavyBlock_Init+0x1e4>
     3fc:	3c080000 	lui	t0,0x0
     400:	3c0144d5 	lui	at,0x44d5
     404:	44814000 	mtc1	at,$f8
     408:	3c0144bc 	lui	at,0x44bc
     40c:	44815000 	mtc1	at,$f10
     410:	240d8ad0 	li	t5,-30000
     414:	240fc000 	li	t7,-16384
     418:	a60d0030 	sh	t5,48(s0)
     41c:	a60f0032 	sh	t7,50(s0)
     420:	a6000034 	sh	zero,52(s0)
     424:	3c014401 	lui	at,0x4401
     428:	860e0030 	lh	t6,48(s0)
     42c:	86180032 	lh	t8,50(s0)
     430:	86190034 	lh	t9,52(s0)
     434:	44818000 	mtc1	at,$f16
     438:	3c0c0000 	lui	t4,0x0
     43c:	258c0000 	addiu	t4,t4,0
     440:	ae0c0174 	sw	t4,372(s0)
     444:	e6080024 	swc1	$f8,36(s0)
     448:	e60a0028 	swc1	$f10,40(s0)
     44c:	a60e00b4 	sh	t6,180(s0)
     450:	a61800b6 	sh	t8,182(s0)
     454:	a61900b8 	sh	t9,184(s0)
     458:	e610002c 	swc1	$f16,44(s0)
     45c:	25080000 	addiu	t0,t0,0
     460:	1000000c 	b	494 <BgHeavyBlock_Init+0x21c>
     464:	ae080174 	sw	t0,372(s0)
     468:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     46c:	02002025 	move	a0,s0
     470:	3c090000 	lui	t1,0x0
     474:	25290000 	addiu	t1,t1,0
     478:	10000006 	b	494 <BgHeavyBlock_Init+0x21c>
     47c:	ae090174 	sw	t1,372(s0)
     480:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     484:	02002025 	move	a0,s0
     488:	3c0a0000 	lui	t2,0x0
     48c:	254a0000 	addiu	t2,t2,0
     490:	ae0a0174 	sw	t2,372(s0)
     494:	3c040000 	lui	a0,0x0
     498:	24840000 	addiu	a0,a0,0
     49c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     4a0:	8605001c 	lh	a1,28(s0)
     4a4:	8fbf001c 	lw	ra,28(sp)
     4a8:	8fb00018 	lw	s0,24(sp)
     4ac:	27bd0020 	addiu	sp,sp,32
     4b0:	03e00008 	jr	ra
     4b4:	00000000 	nop

000004b8 <BgHeavyBlock_Destroy>:
     4b8:	27bdffe8 	addiu	sp,sp,-24
     4bc:	afbf0014 	sw	ra,20(sp)
     4c0:	afa5001c 	sw	a1,28(sp)
     4c4:	8482001c 	lh	v0,28(a0)
     4c8:	24010002 	li	at,2
     4cc:	00803825 	move	a3,a0
     4d0:	304200ff 	andi	v0,v0,0xff
     4d4:	10410006 	beq	v0,at,4f0 <BgHeavyBlock_Destroy+0x38>
     4d8:	24010003 	li	at,3
     4dc:	10410004 	beq	v0,at,4f0 <BgHeavyBlock_Destroy+0x38>
     4e0:	00a02025 	move	a0,a1
     4e4:	24a50810 	addiu	a1,a1,2064
     4e8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     4ec:	8ce6014c 	lw	a2,332(a3)
     4f0:	8fbf0014 	lw	ra,20(sp)
     4f4:	27bd0018 	addiu	sp,sp,24
     4f8:	03e00008 	jr	ra
     4fc:	00000000 	nop

00000500 <BgHeavyBlock_MovePiece>:
     500:	27bdffd8 	addiu	sp,sp,-40
     504:	afbf0024 	sw	ra,36(sp)
     508:	afb00020 	sw	s0,32(sp)
     50c:	afa5002c 	sw	a1,44(sp)
     510:	c4840060 	lwc1	$f4,96(a0)
     514:	c486006c 	lwc1	$f6,108(a0)
     518:	c4800070 	lwc1	$f0,112(a0)
     51c:	00808025 	move	s0,a0
     520:	46062200 	add.s	$f8,$f4,$f6
     524:	3c010000 	lui	at,0x0
     528:	e4880060 	swc1	$f8,96(a0)
     52c:	c48a0060 	lwc1	$f10,96(a0)
     530:	4600503c 	c.lt.s	$f10,$f0
     534:	00000000 	nop
     538:	45000002 	bc1f	544 <BgHeavyBlock_MovePiece+0x44>
     53c:	00000000 	nop
     540:	e4800060 	swc1	$f0,96(a0)
     544:	c42000e4 	lwc1	$f0,228(at)
     548:	c610005c 	lwc1	$f16,92(s0)
     54c:	c6040064 	lwc1	$f4,100(s0)
     550:	02002025 	move	a0,s0
     554:	46008482 	mul.s	$f18,$f16,$f0
     558:	00000000 	nop
     55c:	46002182 	mul.s	$f6,$f4,$f0
     560:	e612005c 	swc1	$f18,92(s0)
     564:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     568:	e6060064 	swc1	$f6,100(s0)
     56c:	860e00b4 	lh	t6,180(s0)
     570:	860f0030 	lh	t7,48(s0)
     574:	861900b6 	lh	t9,182(s0)
     578:	86080032 	lh	t0,50(s0)
     57c:	860a00b8 	lh	t2,184(s0)
     580:	860b0034 	lh	t3,52(s0)
     584:	960d0172 	lhu	t5,370(s0)
     588:	01cfc021 	addu	t8,t6,t7
     58c:	03284821 	addu	t1,t9,t0
     590:	014b6021 	addu	t4,t2,t3
     594:	31ae0001 	andi	t6,t5,0x1
     598:	a61800b4 	sh	t8,180(s0)
     59c:	a60900b6 	sh	t1,182(s0)
     5a0:	15c0003c 	bnez	t6,694 <BgHeavyBlock_MovePiece+0x194>
     5a4:	a60c00b8 	sh	t4,184(s0)
     5a8:	c6080028 	lwc1	$f8,40(s0)
     5ac:	c60a0168 	lwc1	$f10,360(s0)
     5b0:	c6120104 	lwc1	$f18,260(s0)
     5b4:	c6040168 	lwc1	$f4,360(s0)
     5b8:	460a4400 	add.s	$f16,$f8,$f10
     5bc:	3c014248 	lui	at,0x4248
     5c0:	44810000 	mtc1	at,$f0
     5c4:	46049180 	add.s	$f6,$f18,$f4
     5c8:	44804000 	mtc1	zero,$f8
     5cc:	e6100028 	swc1	$f16,40(s0)
     5d0:	240f0005 	li	t7,5
     5d4:	e6060104 	swc1	$f6,260(s0)
     5d8:	44060000 	mfc1	a2,$f0
     5dc:	44070000 	mfc1	a3,$f0
     5e0:	afaf0014 	sw	t7,20(sp)
     5e4:	8fa4002c 	lw	a0,44(sp)
     5e8:	02002825 	move	a1,s0
     5ec:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     5f0:	e7a80010 	swc1	$f8,16(sp)
     5f4:	c60a0028 	lwc1	$f10,40(s0)
     5f8:	c6100168 	lwc1	$f16,360(s0)
     5fc:	c6040104 	lwc1	$f4,260(s0)
     600:	c6060168 	lwc1	$f6,360(s0)
     604:	96180088 	lhu	t8,136(s0)
     608:	46105481 	sub.s	$f18,$f10,$f16
     60c:	33190001 	andi	t9,t8,0x1
     610:	46062201 	sub.s	$f8,$f4,$f6
     614:	e6120028 	swc1	$f18,40(s0)
     618:	1320001e 	beqz	t9,694 <BgHeavyBlock_MovePiece+0x194>
     61c:	e6080104 	swc1	$f8,260(s0)
     620:	96080172 	lhu	t0,370(s0)
     624:	3c014080 	lui	at,0x4080
     628:	44816000 	mtc1	at,$f12
     62c:	35090001 	ori	t1,t0,0x1
     630:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     634:	a6090172 	sh	t1,370(s0)
     638:	3c014000 	lui	at,0x4000
     63c:	44815000 	mtc1	at,$f10
     640:	3c014100 	lui	at,0x4100
     644:	44816000 	mtc1	at,$f12
     648:	460a0400 	add.s	$f16,$f0,$f10
     64c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     650:	e6100060 	swc1	$f16,96(s0)
     654:	3c014100 	lui	at,0x4100
     658:	44816000 	mtc1	at,$f12
     65c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     660:	e600005c 	swc1	$f0,92(s0)
     664:	e6000064 	swc1	$f0,100(s0)
     668:	02002025 	move	a0,s0
     66c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     670:	3c053f80 	lui	a1,0x3f80
     674:	02002025 	move	a0,s0
     678:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     67c:	24052852 	li	a1,10322
     680:	c60c0090 	lwc1	$f12,144(s0)
     684:	24050096 	li	a1,150
     688:	2406000a 	li	a2,10
     68c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     690:	24070008 	li	a3,8
     694:	86020170 	lh	v0,368(s0)
     698:	18400003 	blez	v0,6a8 <BgHeavyBlock_MovePiece+0x1a8>
     69c:	244affff 	addiu	t2,v0,-1
     6a0:	10000003 	b	6b0 <BgHeavyBlock_MovePiece+0x1b0>
     6a4:	a60a0170 	sh	t2,368(s0)
     6a8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     6ac:	02002025 	move	a0,s0
     6b0:	8fbf0024 	lw	ra,36(sp)
     6b4:	8fb00020 	lw	s0,32(sp)
     6b8:	27bd0028 	addiu	sp,sp,40
     6bc:	03e00008 	jr	ra
     6c0:	00000000 	nop

000006c4 <BgHeavyBlock_SpawnDust>:
     6c4:	27bdff70 	addiu	sp,sp,-144
     6c8:	93a300af 	lbu	v1,175(sp)
     6cc:	afa7009c 	sw	a3,156(sp)
     6d0:	44856000 	mtc1	a1,$f12
     6d4:	44867000 	mtc1	a2,$f14
     6d8:	c7a4009c 	lwc1	$f4,156(sp)
     6dc:	306e0001 	andi	t6,v1,0x1
     6e0:	afbf002c 	sw	ra,44(sp)
     6e4:	afa40090 	sw	a0,144(sp)
     6e8:	e7ac0048 	swc1	$f12,72(sp)
     6ec:	e7ae004c 	swc1	$f14,76(sp)
     6f0:	11c0000c 	beqz	t6,724 <BgHeavyBlock_SpawnDust+0x60>
     6f4:	e7a40050 	swc1	$f4,80(sp)
     6f8:	240f0096 	li	t7,150
     6fc:	24180050 	li	t8,80
     700:	a3af008c 	sb	t7,140(sp)
     704:	a3a0008a 	sb	zero,138(sp)
     708:	a3a00089 	sb	zero,137(sp)
     70c:	a3a0008e 	sb	zero,142(sp)
     710:	a3a0008d 	sb	zero,141(sp)
     714:	a3b80088 	sb	t8,136(sp)
     718:	a3a0008b 	sb	zero,139(sp)
     71c:	10000011 	b	764 <BgHeavyBlock_SpawnDust+0xa0>
     720:	a3a0008f 	sb	zero,143(sp)
     724:	241900aa 	li	t9,170
     728:	24080082 	li	t0,130
     72c:	2409005a 	li	t1,90
     730:	240a00ff 	li	t2,255
     734:	240b0064 	li	t3,100
     738:	240c003c 	li	t4,60
     73c:	240d0014 	li	t5,20
     740:	240e00ff 	li	t6,255
     744:	a3aa008f 	sb	t2,143(sp)
     748:	a3a9008e 	sb	t1,142(sp)
     74c:	a3a8008d 	sb	t0,141(sp)
     750:	a3b9008c 	sb	t9,140(sp)
     754:	a3ae008b 	sb	t6,139(sp)
     758:	a3ad008a 	sb	t5,138(sp)
     75c:	a3ac0089 	sb	t4,137(sp)
     760:	a3ab0088 	sb	t3,136(sp)
     764:	44800000 	mtc1	zero,$f0
     768:	306f0008 	andi	t7,v1,0x8
     76c:	3c013f00 	lui	at,0x3f00
     770:	e7a00068 	swc1	$f0,104(sp)
     774:	11e00003 	beqz	t7,784 <BgHeavyBlock_SpawnDust+0xc0>
     778:	e7a00060 	swc1	$f0,96(sp)
     77c:	10000004 	b	790 <BgHeavyBlock_SpawnDust+0xcc>
     780:	e7a00064 	swc1	$f0,100(sp)
     784:	44813000 	mtc1	at,$f6
     788:	00000000 	nop
     78c:	e7a60064 	swc1	$f6,100(sp)
     790:	8fb80090 	lw	t8,144(sp)
     794:	27a4007c 	addiu	a0,sp,124
     798:	27a50070 	addiu	a1,sp,112
     79c:	871907a0 	lh	t9,1952(t8)
     7a0:	30620006 	andi	v0,v1,0x6
     7a4:	00194080 	sll	t0,t9,0x2
     7a8:	03084821 	addu	t1,t8,t0
     7ac:	8d2a0790 	lw	t2,1936(t1)
     7b0:	8d4c005c 	lw	t4,92(t2)
     7b4:	ac8c0000 	sw	t4,0(a0)
     7b8:	8d4b0060 	lw	t3,96(t2)
     7bc:	ac8b0004 	sw	t3,4(a0)
     7c0:	8d4c0064 	lw	t4,100(t2)
     7c4:	240a03e8 	li	t2,1000
     7c8:	240b00a0 	li	t3,160
     7cc:	ac8c0008 	sw	t4,8(a0)
     7d0:	8fad0090 	lw	t5,144(sp)
     7d4:	85ae07a0 	lh	t6,1952(t5)
     7d8:	000e7880 	sll	t7,t6,0x2
     7dc:	01afc821 	addu	t9,t5,t7
     7e0:	8f380790 	lw	t8,1936(t9)
     7e4:	8f090050 	lw	t1,80(t8)
     7e8:	aca90000 	sw	t1,0(a1)
     7ec:	8f080054 	lw	t0,84(t8)
     7f0:	aca80004 	sw	t0,4(a1)
     7f4:	8f090058 	lw	t1,88(t8)
     7f8:	aca90008 	sw	t1,8(a1)
     7fc:	a7aa0040 	sh	t2,64(sp)
     800:	10400034 	beqz	v0,8d4 <BgHeavyBlock_SpawnDust+0x210>
     804:	a7ab0042 	sh	t3,66(sp)
     808:	24010002 	li	at,2
     80c:	10410010 	beq	v0,at,850 <BgHeavyBlock_SpawnDust+0x18c>
     810:	24010004 	li	at,4
     814:	10410004 	beq	v0,at,828 <BgHeavyBlock_SpawnDust+0x164>
     818:	c7a800a0 	lwc1	$f8,160(sp)
     81c:	24010006 	li	at,6
     820:	54410069 	bnel	v0,at,9c8 <BgHeavyBlock_SpawnDust+0x304>
     824:	3c014120 	lui	at,0x4120
     828:	c7aa00a4 	lwc1	$f10,164(sp)
     82c:	c7ac00a8 	lwc1	$f12,168(sp)
     830:	240c012c 	li	t4,300
     834:	240e0032 	li	t6,50
     838:	e7a80054 	swc1	$f8,84(sp)
     83c:	a7ac0040 	sh	t4,64(sp)
     840:	a7ae0042 	sh	t6,66(sp)
     844:	e7aa0058 	swc1	$f10,88(sp)
     848:	1000005e 	b	9c4 <BgHeavyBlock_SpawnDust+0x300>
     84c:	e7ac005c 	swc1	$f12,92(sp)
     850:	3c0140a0 	lui	at,0x40a0
     854:	44816000 	mtc1	at,$f12
     858:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     85c:	00000000 	nop
     860:	3c0140a0 	lui	at,0x40a0
     864:	44818000 	mtc1	at,$f16
     868:	3c01477f 	lui	at,0x477f
     86c:	44816000 	mtc1	at,$f12
     870:	46100480 	add.s	$f18,$f0,$f16
     874:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     878:	e7b20044 	swc1	$f18,68(sp)
     87c:	4600010d 	trunc.w.s	$f4,$f0
     880:	44022000 	mfc1	v0,$f4
     884:	00000000 	nop
     888:	00022400 	sll	a0,v0,0x10
     88c:	00042403 	sra	a0,a0,0x10
     890:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     894:	a7a2006e 	sh	v0,110(sp)
     898:	c7a60044 	lwc1	$f6,68(sp)
     89c:	c7aa00a0 	lwc1	$f10,160(sp)
     8a0:	c7b200a4 	lwc1	$f18,164(sp)
     8a4:	46060202 	mul.s	$f8,$f0,$f6
     8a8:	87a4006e 	lh	a0,110(sp)
     8ac:	e7b20058 	swc1	$f18,88(sp)
     8b0:	460a4400 	add.s	$f16,$f8,$f10
     8b4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     8b8:	e7b00054 	swc1	$f16,84(sp)
     8bc:	c7a40044 	lwc1	$f4,68(sp)
     8c0:	c7a800a8 	lwc1	$f8,168(sp)
     8c4:	46040182 	mul.s	$f6,$f0,$f4
     8c8:	46083300 	add.s	$f12,$f6,$f8
     8cc:	1000003d 	b	9c4 <BgHeavyBlock_SpawnDust+0x300>
     8d0:	e7ac005c 	swc1	$f12,92(sp)
     8d4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     8d8:	00000000 	nop
     8dc:	a7a2006e 	sh	v0,110(sp)
     8e0:	27a4007c 	addiu	a0,sp,124
     8e4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     8e8:	27a50070 	addiu	a1,sp,112
     8ec:	00027823 	negu	t7,v0
     8f0:	a7af006c 	sh	t7,108(sp)
     8f4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     8f8:	87a4006e 	lh	a0,110(sp)
     8fc:	e7a00038 	swc1	$f0,56(sp)
     900:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     904:	87a4006c 	lh	a0,108(sp)
     908:	3c0140a0 	lui	at,0x40a0
     90c:	44815000 	mtc1	at,$f10
     910:	c7b00038 	lwc1	$f16,56(sp)
     914:	c7a600a0 	lwc1	$f6,160(sp)
     918:	87a4006c 	lh	a0,108(sp)
     91c:	46105482 	mul.s	$f18,$f10,$f16
     920:	00000000 	nop
     924:	46120102 	mul.s	$f4,$f0,$f18
     928:	46062200 	add.s	$f8,$f4,$f6
     92c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     930:	e7a80054 	swc1	$f8,84(sp)
     934:	3c0140a0 	lui	at,0x40a0
     938:	44815000 	mtc1	at,$f10
     93c:	c7b200a4 	lwc1	$f18,164(sp)
     940:	87a4006e 	lh	a0,110(sp)
     944:	460a0402 	mul.s	$f16,$f0,$f10
     948:	46128100 	add.s	$f4,$f16,$f18
     94c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     950:	e7a40058 	swc1	$f4,88(sp)
     954:	e7a00038 	swc1	$f0,56(sp)
     958:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     95c:	87a4006c 	lh	a0,108(sp)
     960:	3c0141a0 	lui	at,0x41a0
     964:	44811000 	mtc1	at,$f2
     968:	3c0140a0 	lui	at,0x40a0
     96c:	44813000 	mtc1	at,$f6
     970:	c7a80038 	lwc1	$f8,56(sp)
     974:	c7b200a8 	lwc1	$f18,168(sp)
     978:	c7a40048 	lwc1	$f4,72(sp)
     97c:	46083282 	mul.s	$f10,$f6,$f8
     980:	c7a60054 	lwc1	$f6,84(sp)
     984:	460a0402 	mul.s	$f16,$f0,$f10
     988:	00000000 	nop
     98c:	46023202 	mul.s	$f8,$f6,$f2
     990:	46128300 	add.s	$f12,$f16,$f18
     994:	c7b20058 	lwc1	$f18,88(sp)
     998:	c7b0004c 	lwc1	$f16,76(sp)
     99c:	46082281 	sub.s	$f10,$f4,$f8
     9a0:	46029182 	mul.s	$f6,$f18,$f2
     9a4:	c7a80050 	lwc1	$f8,80(sp)
     9a8:	e7ac005c 	swc1	$f12,92(sp)
     9ac:	e7aa0048 	swc1	$f10,72(sp)
     9b0:	46026282 	mul.s	$f10,$f12,$f2
     9b4:	46068101 	sub.s	$f4,$f16,$f6
     9b8:	460a4481 	sub.s	$f18,$f8,$f10
     9bc:	e7a4004c 	swc1	$f4,76(sp)
     9c0:	e7b20050 	swc1	$f18,80(sp)
     9c4:	3c014120 	lui	at,0x4120
     9c8:	44816000 	mtc1	at,$f12
     9cc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     9d0:	00000000 	nop
     9d4:	4600040d 	trunc.w.s	$f16,$f0
     9d8:	87a80040 	lh	t0,64(sp)
     9dc:	87a90042 	lh	t1,66(sp)
     9e0:	27b9008c 	addiu	t9,sp,140
     9e4:	440b8000 	mfc1	t3,$f16
     9e8:	27b80088 	addiu	t8,sp,136
     9ec:	afb80014 	sw	t8,20(sp)
     9f0:	256c0014 	addiu	t4,t3,20
     9f4:	afac0020 	sw	t4,32(sp)
     9f8:	afb90010 	sw	t9,16(sp)
     9fc:	8fa40090 	lw	a0,144(sp)
     a00:	27a50048 	addiu	a1,sp,72
     a04:	27a60054 	addiu	a2,sp,84
     a08:	27a70060 	addiu	a3,sp,96
     a0c:	afa80018 	sw	t0,24(sp)
     a10:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     a14:	afa9001c 	sw	t1,28(sp)
     a18:	8fbf002c 	lw	ra,44(sp)
     a1c:	27bd0090 	addiu	sp,sp,144
     a20:	03e00008 	jr	ra
     a24:	00000000 	nop

00000a28 <BgHeavyBlock_SpawnPieces>:
     a28:	27bdff10 	addiu	sp,sp,-240
     a2c:	3c0f0000 	lui	t7,0x0
     a30:	afb3006c 	sw	s3,108(sp)
     a34:	afb10064 	sw	s1,100(sp)
     a38:	25ef0030 	addiu	t7,t7,48
     a3c:	00808825 	move	s1,a0
     a40:	00a09825 	move	s3,a1
     a44:	afbf0074 	sw	ra,116(sp)
     a48:	afb40070 	sw	s4,112(sp)
     a4c:	afb20068 	sw	s2,104(sp)
     a50:	afb00060 	sw	s0,96(sp)
     a54:	f7be0058 	sdc1	$f30,88(sp)
     a58:	f7bc0050 	sdc1	$f28,80(sp)
     a5c:	f7ba0048 	sdc1	$f26,72(sp)
     a60:	f7b80040 	sdc1	$f24,64(sp)
     a64:	f7b60038 	sdc1	$f22,56(sp)
     a68:	f7b40030 	sdc1	$f20,48(sp)
     a6c:	25e80048 	addiu	t0,t7,72
     a70:	27ae00a4 	addiu	t6,sp,164
     a74:	8df90000 	lw	t9,0(t7)
     a78:	25ef000c 	addiu	t7,t7,12
     a7c:	25ce000c 	addiu	t6,t6,12
     a80:	add9fff4 	sw	t9,-12(t6)
     a84:	8df8fff8 	lw	t8,-8(t7)
     a88:	add8fff8 	sw	t8,-8(t6)
     a8c:	8df9fffc 	lw	t9,-4(t7)
     a90:	15e8fff8 	bne	t7,t0,a74 <BgHeavyBlock_SpawnPieces+0x4c>
     a94:	add9fffc 	sw	t9,-4(t6)
     a98:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     a9c:	86240030 	lh	a0,48(s1)
     aa0:	46000786 	mov.s	$f30,$f0
     aa4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     aa8:	86240030 	lh	a0,48(s1)
     aac:	e7a0008c 	swc1	$f0,140(sp)
     ab0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     ab4:	86240032 	lh	a0,50(s1)
     ab8:	e7a00088 	swc1	$f0,136(sp)
     abc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     ac0:	86240032 	lh	a0,50(s1)
     ac4:	c7a40088 	lwc1	$f4,136(sp)
     ac8:	4480d000 	mtc1	zero,$f26
     acc:	46000706 	mov.s	$f28,$f0
     ad0:	46002187 	neg.s	$f6,$f4
     ad4:	27b000a4 	addiu	s0,sp,164
     ad8:	e7a6007c 	swc1	$f6,124(sp)
     adc:	26721c24 	addiu	s2,s3,7204
     ae0:	27b400ec 	addiu	s4,sp,236
     ae4:	c7ae008c 	lwc1	$f14,140(sp)
     ae8:	c6000008 	lwc1	$f0,8(s0)
     aec:	c6020004 	lwc1	$f2,4(s0)
     af0:	c60c0000 	lwc1	$f12,0(s0)
     af4:	460e0202 	mul.s	$f8,$f0,$f14
     af8:	c7a60088 	lwc1	$f6,136(sp)
     afc:	c6320024 	lwc1	$f18,36(s1)
     b00:	461e1282 	mul.s	$f10,$f2,$f30
     b04:	240b0002 	li	t3,2
     b08:	02402025 	move	a0,s2
     b0c:	461c6402 	mul.s	$f16,$f12,$f28
     b10:	02602825 	move	a1,s3
     b14:	24060092 	li	a2,146
     b18:	460a4500 	add.s	$f20,$f8,$f10
     b1c:	c62a0028 	lwc1	$f10,40(s1)
     b20:	46128100 	add.s	$f4,$f16,$f18
     b24:	46143202 	mul.s	$f8,$f6,$f20
     b28:	46000187 	neg.s	$f6,$f0
     b2c:	460e1402 	mul.s	$f16,$f2,$f14
     b30:	46082580 	add.s	$f22,$f4,$f8
     b34:	461e3102 	mul.s	$f4,$f6,$f30
     b38:	c7a8007c 	lwc1	$f8,124(sp)
     b3c:	46105480 	add.s	$f18,$f10,$f16
     b40:	c630002c 	lwc1	$f16,44(s1)
     b44:	46086282 	mul.s	$f10,$f12,$f8
     b48:	4407b000 	mfc1	a3,$f22
     b4c:	46122600 	add.s	$f24,$f4,$f18
     b50:	4614e102 	mul.s	$f4,$f28,$f20
     b54:	46105180 	add.s	$f6,$f10,$f16
     b58:	e7b80010 	swc1	$f24,16(sp)
     b5c:	46043500 	add.s	$f20,$f6,$f4
     b60:	e7b40014 	swc1	$f20,20(sp)
     b64:	862900b4 	lh	t1,180(s1)
     b68:	afa90018 	sw	t1,24(sp)
     b6c:	862a00b6 	lh	t2,182(s1)
     b70:	afab0024 	sw	t3,36(sp)
     b74:	afa00020 	sw	zero,32(sp)
     b78:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     b7c:	afaa001c 	sw	t2,28(sp)
     b80:	e7b80010 	swc1	$f24,16(sp)
     b84:	e7b40014 	swc1	$f20,20(sp)
     b88:	862c00b4 	lh	t4,180(s1)
     b8c:	4407b000 	mfc1	a3,$f22
     b90:	24080003 	li	t0,3
     b94:	afac0018 	sw	t4,24(sp)
     b98:	862d00b6 	lh	t5,182(s1)
     b9c:	afa80024 	sw	t0,36(sp)
     ba0:	afa00020 	sw	zero,32(sp)
     ba4:	02402025 	move	a0,s2
     ba8:	02602825 	move	a1,s3
     bac:	24060092 	li	a2,146
     bb0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     bb4:	afad001c 	sw	t5,28(sp)
     bb8:	4405b000 	mfc1	a1,$f22
     bbc:	4406c000 	mfc1	a2,$f24
     bc0:	4407a000 	mfc1	a3,$f20
     bc4:	02602025 	move	a0,s3
     bc8:	e7ba0010 	swc1	$f26,16(sp)
     bcc:	e7ba0014 	swc1	$f26,20(sp)
     bd0:	e7ba0018 	swc1	$f26,24(sp)
     bd4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     bd8:	afa0001c 	sw	zero,28(sp)
     bdc:	2610000c 	addiu	s0,s0,12
     be0:	5614ffc1 	bnel	s0,s4,ae8 <BgHeavyBlock_SpawnPieces+0xc0>
     be4:	c7ae008c 	lwc1	$f14,140(sp)
     be8:	8fbf0074 	lw	ra,116(sp)
     bec:	d7b40030 	ldc1	$f20,48(sp)
     bf0:	d7b60038 	ldc1	$f22,56(sp)
     bf4:	d7b80040 	ldc1	$f24,64(sp)
     bf8:	d7ba0048 	ldc1	$f26,72(sp)
     bfc:	d7bc0050 	ldc1	$f28,80(sp)
     c00:	d7be0058 	ldc1	$f30,88(sp)
     c04:	8fb00060 	lw	s0,96(sp)
     c08:	8fb10064 	lw	s1,100(sp)
     c0c:	8fb20068 	lw	s2,104(sp)
     c10:	8fb3006c 	lw	s3,108(sp)
     c14:	8fb40070 	lw	s4,112(sp)
     c18:	03e00008 	jr	ra
     c1c:	27bd00f0 	addiu	sp,sp,240

00000c20 <BgHeavyBlock_Wait>:
     c20:	27bdffd0 	addiu	sp,sp,-48
     c24:	afbf0024 	sw	ra,36(sp)
     c28:	afb10020 	sw	s1,32(sp)
     c2c:	afb0001c 	sw	s0,28(sp)
     c30:	00a08025 	move	s0,a1
     c34:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     c38:	00808825 	move	s1,a0
     c3c:	5040003c 	beqzl	v0,d30 <BgHeavyBlock_Wait+0x110>
     c40:	8fbf0024 	lw	ra,36(sp)
     c44:	8622001c 	lh	v0,28(s1)
     c48:	a6200170 	sh	zero,368(s1)
     c4c:	02002025 	move	a0,s0
     c50:	304200ff 	andi	v0,v0,0xff
     c54:	10400010 	beqz	v0,c98 <BgHeavyBlock_Wait+0x78>
     c58:	24050fb5 	li	a1,4021
     c5c:	24010001 	li	at,1
     c60:	10410006 	beq	v0,at,c7c <BgHeavyBlock_Wait+0x5c>
     c64:	02002025 	move	a0,s0
     c68:	24010004 	li	at,4
     c6c:	10410010 	beq	v0,at,cb0 <BgHeavyBlock_Wait+0x90>
     c70:	02002025 	move	a0,s0
     c74:	10000014 	b	cc8 <BgHeavyBlock_Wait+0xa8>
     c78:	860e07a0 	lh	t6,1952(s0)
     c7c:	24050fb4 	li	a1,4020
     c80:	2406010e 	li	a2,270
     c84:	02203825 	move	a3,s1
     c88:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     c8c:	afa00010 	sw	zero,16(sp)
     c90:	1000000d 	b	cc8 <BgHeavyBlock_Wait+0xa8>
     c94:	860e07a0 	lh	t6,1952(s0)
     c98:	240600dc 	li	a2,220
     c9c:	02203825 	move	a3,s1
     ca0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     ca4:	afa00010 	sw	zero,16(sp)
     ca8:	10000007 	b	cc8 <BgHeavyBlock_Wait+0xa8>
     cac:	860e07a0 	lh	t6,1952(s0)
     cb0:	24050fb6 	li	a1,4022
     cb4:	240600d2 	li	a2,210
     cb8:	02203825 	move	a3,s1
     cbc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     cc0:	afa00010 	sw	zero,16(sp)
     cc4:	860e07a0 	lh	t6,1952(s0)
     cc8:	24050003 	li	a1,3
     ccc:	000e7880 	sll	t7,t6,0x2
     cd0:	020fc021 	addu	t8,s0,t7
     cd4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     cd8:	8f040790 	lw	a0,1936(t8)
     cdc:	00022400 	sll	a0,v0,0x10
     ce0:	afa2002c 	sw	v0,44(sp)
     ce4:	00042403 	sra	a0,a0,0x10
     ce8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     cec:	240561a8 	li	a1,25000
     cf0:	87b0002e 	lh	s0,46(sp)
     cf4:	24050001 	li	a1,1
     cf8:	24060001 	li	a2,1
     cfc:	00102400 	sll	a0,s0,0x10
     d00:	00042403 	sra	a0,a0,0x10
     d04:	24070005 	li	a3,5
     d08:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     d0c:	afa00010 	sw	zero,16(sp)
     d10:	00102400 	sll	a0,s0,0x10
     d14:	00042403 	sra	a0,a0,0x10
     d18:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     d1c:	2405000a 	li	a1,10
     d20:	3c190000 	lui	t9,0x0
     d24:	27390000 	addiu	t9,t9,0
     d28:	ae390174 	sw	t9,372(s1)
     d2c:	8fbf0024 	lw	ra,36(sp)
     d30:	8fb0001c 	lw	s0,28(sp)
     d34:	8fb10020 	lw	s1,32(sp)
     d38:	03e00008 	jr	ra
     d3c:	27bd0030 	addiu	sp,sp,48

00000d40 <BgHeavyBlock_LiftedUp>:
     d40:	27bdffb8 	addiu	sp,sp,-72
     d44:	afbf002c 	sw	ra,44(sp)
     d48:	afb00028 	sw	s0,40(sp)
     d4c:	afa5004c 	sw	a1,76(sp)
     d50:	8caf1c44 	lw	t7,7236(a1)
     d54:	2401000b 	li	at,11
     d58:	00808025 	move	s0,a0
     d5c:	afaf0044 	sw	t7,68(sp)
     d60:	84820170 	lh	v0,368(a0)
     d64:	240500ff 	li	a1,255
     d68:	24060014 	li	a2,20
     d6c:	54410012 	bnel	v0,at,db8 <BgHeavyBlock_LiftedUp+0x78>
     d70:	28410028 	slti	at,v0,40
     d74:	44806000 	mtc1	zero,$f12
     d78:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     d7c:	24070014 	li	a3,20
     d80:	8fa40044 	lw	a0,68(sp)
     d84:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     d88:	2405086c 	li	a1,2156
     d8c:	3c040000 	lui	a0,0x0
     d90:	24840028 	addiu	a0,a0,40
     d94:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     d98:	240502b3 	li	a1,691
     d9c:	3c040000 	lui	a0,0x0
     da0:	3c050000 	lui	a1,0x0
     da4:	24a50064 	addiu	a1,a1,100
     da8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     dac:	24840040 	addiu	a0,a0,64
     db0:	86020170 	lh	v0,368(s0)
     db4:	28410028 	slti	at,v0,40
     db8:	1020002e 	beqz	at,e74 <BgHeavyBlock_LiftedUp+0x134>
     dbc:	3c0142dc 	lui	at,0x42dc
     dc0:	44816000 	mtc1	at,$f12
     dc4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     dc8:	00000000 	nop
     dcc:	e7a00030 	swc1	$f0,48(sp)
     dd0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     dd4:	860400b6 	lh	a0,182(s0)
     dd8:	3c0142dc 	lui	at,0x42dc
     ddc:	44816000 	mtc1	at,$f12
     de0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     de4:	e7a00034 	swc1	$f0,52(sp)
     de8:	e7a00038 	swc1	$f0,56(sp)
     dec:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     df0:	860400b6 	lh	a0,182(s0)
     df4:	3c01c28c 	lui	at,0xc28c
     df8:	44811000 	mtc1	at,$f2
     dfc:	c7aa0034 	lwc1	$f10,52(sp)
     e00:	c6040024 	lwc1	$f4,36(s0)
     e04:	c7a60030 	lwc1	$f6,48(sp)
     e08:	46025402 	mul.s	$f16,$f10,$f2
     e0c:	3c014120 	lui	at,0x4120
     e10:	46062200 	add.s	$f8,$f4,$f6
     e14:	44813000 	mtc1	at,$f6
     e18:	c6040028 	lwc1	$f4,40(s0)
     e1c:	3c01bf80 	lui	at,0xbf80
     e20:	2418000c 	li	t8,12
     e24:	46088480 	add.s	$f18,$f16,$f8
     e28:	c7a80038 	lwc1	$f8,56(sp)
     e2c:	c610002c 	lwc1	$f16,44(s0)
     e30:	46062280 	add.s	$f10,$f4,$f6
     e34:	46020102 	mul.s	$f4,$f0,$f2
     e38:	44059000 	mfc1	a1,$f18
     e3c:	46088480 	add.s	$f18,$f16,$f8
     e40:	44065000 	mfc1	a2,$f10
     e44:	44805000 	mtc1	zero,$f10
     e48:	44804000 	mtc1	zero,$f8
     e4c:	44818000 	mtc1	at,$f16
     e50:	46122180 	add.s	$f6,$f4,$f18
     e54:	afb8001c 	sw	t8,28(sp)
     e58:	8fa4004c 	lw	a0,76(sp)
     e5c:	e7aa0010 	swc1	$f10,16(sp)
     e60:	44073000 	mfc1	a3,$f6
     e64:	e7a80018 	swc1	$f8,24(sp)
     e68:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     e6c:	e7b00014 	swc1	$f16,20(sp)
     e70:	86020170 	lh	v0,368(s0)
     e74:	24590001 	addiu	t9,v0,1
     e78:	a6190170 	sh	t9,368(s0)
     e7c:	8fa50044 	lw	a1,68(sp)
     e80:	8fa4004c 	lw	a0,76(sp)
     e84:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     e88:	24060008 	li	a2,8
     e8c:	02002025 	move	a0,s0
     e90:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     e94:	8fa5004c 	lw	a1,76(sp)
     e98:	10400006 	beqz	v0,eb4 <BgHeavyBlock_LiftedUp+0x174>
     e9c:	02002025 	move	a0,s0
     ea0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     ea4:	240528e2 	li	a1,10466
     ea8:	3c080000 	lui	t0,0x0
     eac:	25080000 	addiu	t0,t0,0
     eb0:	ae080174 	sw	t0,372(s0)
     eb4:	8fbf002c 	lw	ra,44(sp)
     eb8:	8fb00028 	lw	s0,40(sp)
     ebc:	27bd0048 	addiu	sp,sp,72
     ec0:	03e00008 	jr	ra
     ec4:	00000000 	nop

00000ec8 <BgHeavyBlock_Fly>:
     ec8:	27bdffb8 	addiu	sp,sp,-72
     ecc:	afbf0024 	sw	ra,36(sp)
     ed0:	afb10020 	sw	s1,32(sp)
     ed4:	afb0001c 	sw	s0,28(sp)
     ed8:	00808025 	move	s0,a0
     edc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     ee0:	00a08825 	move	s1,a1
     ee4:	c6040008 	lwc1	$f4,8(s0)
     ee8:	3c01447a 	lui	at,0x447a
     eec:	44814000 	mtc1	at,$f8
     ef0:	e7a40034 	swc1	$f4,52(sp)
     ef4:	c606000c 	lwc1	$f6,12(s0)
     ef8:	27ae0034 	addiu	t6,sp,52
     efc:	262407c0 	addiu	a0,s1,1984
     f00:	46083280 	add.s	$f10,$f6,$f8
     f04:	26050078 	addiu	a1,s0,120
     f08:	27a60044 	addiu	a2,sp,68
     f0c:	02003825 	move	a3,s0
     f10:	e7aa0038 	swc1	$f10,56(sp)
     f14:	c6100010 	lwc1	$f16,16(s0)
     f18:	afae0010 	sw	t6,16(sp)
     f1c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     f20:	e7b0003c 	swc1	$f16,60(sp)
     f24:	c612000c 	lwc1	$f18,12(s0)
     f28:	e6000080 	swc1	$f0,128(s0)
     f2c:	240500ff 	li	a1,255
     f30:	4600903e 	c.le.s	$f18,$f0
     f34:	2406003c 	li	a2,60
     f38:	450200a0 	bc1fl	11bc <BgHeavyBlock_Fly+0x2f4>
     f3c:	c60c0060 	lwc1	$f12,96(s0)
     f40:	44806000 	mtc1	zero,$f12
     f44:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     f48:	24070004 	li	a3,4
     f4c:	8602001c 	lh	v0,28(s0)
     f50:	24010001 	li	at,1
     f54:	02002025 	move	a0,s0
     f58:	304200ff 	andi	v0,v0,0xff
     f5c:	10400063 	beqz	v0,10ec <BgHeavyBlock_Fly+0x224>
     f60:	00000000 	nop
     f64:	10410006 	beq	v0,at,f80 <BgHeavyBlock_Fly+0xb8>
     f68:	02002025 	move	a0,s0
     f6c:	24010004 	li	at,4
     f70:	1041003d 	beq	v0,at,1068 <BgHeavyBlock_Fly+0x1a0>
     f74:	02002025 	move	a0,s0
     f78:	10000078 	b	115c <BgHeavyBlock_Fly+0x294>
     f7c:	862907a0 	lh	t1,1952(s1)
     f80:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     f84:	02202825 	move	a1,s1
     f88:	8605001c 	lh	a1,28(s0)
     f8c:	02202025 	move	a0,s1
     f90:	00052a03 	sra	a1,a1,0x8
     f94:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     f98:	30a5003f 	andi	a1,a1,0x3f
     f9c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     fa0:	02002025 	move	a0,s0
     fa4:	862f07a0 	lh	t7,1952(s1)
     fa8:	24050003 	li	a1,3
     fac:	000fc080 	sll	t8,t7,0x2
     fb0:	0238c821 	addu	t9,s1,t8
     fb4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     fb8:	8f240790 	lw	a0,1936(t9)
     fbc:	00022400 	sll	a0,v0,0x10
     fc0:	afa20040 	sw	v0,64(sp)
     fc4:	00042403 	sra	a0,a0,0x10
     fc8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     fcc:	24056d60 	li	a1,28000
     fd0:	87a40042 	lh	a0,66(sp)
     fd4:	2405000e 	li	a1,14
     fd8:	24060002 	li	a2,2
     fdc:	24070064 	li	a3,100
     fe0:	afa00010 	sw	zero,16(sp)
     fe4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     fe8:	afa40028 	sw	a0,40(sp)
     fec:	8fa40028 	lw	a0,40(sp)
     ff0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
     ff4:	2405001e 	li	a1,30
     ff8:	862807a0 	lh	t0,1952(s1)
     ffc:	24050002 	li	a1,2
    1000:	00084880 	sll	t1,t0,0x2
    1004:	02295021 	addu	t2,s1,t1
    1008:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    100c:	8d440790 	lw	a0,1936(t2)
    1010:	00022400 	sll	a0,v0,0x10
    1014:	afa20040 	sw	v0,64(sp)
    1018:	00042403 	sra	a0,a0,0x10
    101c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1020:	24052ee0 	li	a1,12000
    1024:	87a40042 	lh	a0,66(sp)
    1028:	24050005 	li	a1,5
    102c:	00003025 	move	a2,zero
    1030:	00003825 	move	a3,zero
    1034:	afa00010 	sw	zero,16(sp)
    1038:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    103c:	afa40028 	sw	a0,40(sp)
    1040:	8fa40028 	lw	a0,40(sp)
    1044:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1048:	240503e7 	li	a1,999
    104c:	02202025 	move	a0,s1
    1050:	26050024 	addiu	a1,s0,36
    1054:	2406001e 	li	a2,30
    1058:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    105c:	240728e1 	li	a3,10465
    1060:	1000005a 	b	11cc <BgHeavyBlock_Fly+0x304>
    1064:	8fbf0024 	lw	ra,36(sp)
    1068:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    106c:	2405281d 	li	a1,10269
    1070:	862b07a0 	lh	t3,1952(s1)
    1074:	24050003 	li	a1,3
    1078:	000b6080 	sll	t4,t3,0x2
    107c:	022c6821 	addu	t5,s1,t4
    1080:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1084:	8da40790 	lw	a0,1936(t5)
    1088:	00022400 	sll	a0,v0,0x10
    108c:	afa20040 	sw	v0,64(sp)
    1090:	00042403 	sra	a0,a0,0x10
    1094:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1098:	24056d60 	li	a1,28000
    109c:	87a40042 	lh	a0,66(sp)
    10a0:	24050010 	li	a1,16
    10a4:	24060002 	li	a2,2
    10a8:	24070078 	li	a3,120
    10ac:	afa00010 	sw	zero,16(sp)
    10b0:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    10b4:	afa40028 	sw	a0,40(sp)
    10b8:	8fa40028 	lw	a0,40(sp)
    10bc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    10c0:	24050028 	li	a1,40
    10c4:	8605001c 	lh	a1,28(s0)
    10c8:	3c0e0000 	lui	t6,0x0
    10cc:	25ce0000 	addiu	t6,t6,0
    10d0:	00052a03 	sra	a1,a1,0x8
    10d4:	ae0e0174 	sw	t6,372(s0)
    10d8:	30a5003f 	andi	a1,a1,0x3f
    10dc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    10e0:	02202025 	move	a0,s1
    10e4:	10000035 	b	11bc <BgHeavyBlock_Fly+0x2f4>
    10e8:	c60c0060 	lwc1	$f12,96(s0)
    10ec:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    10f0:	2405289f 	li	a1,10399
    10f4:	862f07a0 	lh	t7,1952(s1)
    10f8:	24050003 	li	a1,3
    10fc:	000fc080 	sll	t8,t7,0x2
    1100:	0238c821 	addu	t9,s1,t8
    1104:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1108:	8f240790 	lw	a0,1936(t9)
    110c:	00022400 	sll	a0,v0,0x10
    1110:	afa20040 	sw	v0,64(sp)
    1114:	00042403 	sra	a0,a0,0x10
    1118:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    111c:	24056d60 	li	a1,28000
    1120:	87a40042 	lh	a0,66(sp)
    1124:	2405000e 	li	a1,14
    1128:	24060002 	li	a2,2
    112c:	24070064 	li	a3,100
    1130:	afa00010 	sw	zero,16(sp)
    1134:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1138:	afa40028 	sw	a0,40(sp)
    113c:	8fa40028 	lw	a0,40(sp)
    1140:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1144:	24050028 	li	a1,40
    1148:	3c080000 	lui	t0,0x0
    114c:	25080000 	addiu	t0,t0,0
    1150:	10000019 	b	11b8 <BgHeavyBlock_Fly+0x2f0>
    1154:	ae080174 	sw	t0,372(s0)
    1158:	862907a0 	lh	t1,1952(s1)
    115c:	24050003 	li	a1,3
    1160:	00095080 	sll	t2,t1,0x2
    1164:	022a5821 	addu	t3,s1,t2
    1168:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    116c:	8d640790 	lw	a0,1936(t3)
    1170:	00022400 	sll	a0,v0,0x10
    1174:	afa20040 	sw	v0,64(sp)
    1178:	00042403 	sra	a0,a0,0x10
    117c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1180:	24056d60 	li	a1,28000
    1184:	87a40042 	lh	a0,66(sp)
    1188:	2405000e 	li	a1,14
    118c:	24060002 	li	a2,2
    1190:	24070064 	li	a3,100
    1194:	afa00010 	sw	zero,16(sp)
    1198:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    119c:	afa40028 	sw	a0,40(sp)
    11a0:	8fa40028 	lw	a0,40(sp)
    11a4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    11a8:	24050028 	li	a1,40
    11ac:	3c0c0000 	lui	t4,0x0
    11b0:	258c0000 	addiu	t4,t4,0
    11b4:	ae0c0174 	sw	t4,372(s0)
    11b8:	c60c0060 	lwc1	$f12,96(s0)
    11bc:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    11c0:	c60e0068 	lwc1	$f14,104(s0)
    11c4:	a60200b4 	sh	v0,180(s0)
    11c8:	8fbf0024 	lw	ra,36(sp)
    11cc:	8fb0001c 	lw	s0,28(sp)
    11d0:	8fb10020 	lw	s1,32(sp)
    11d4:	03e00008 	jr	ra
    11d8:	27bd0048 	addiu	sp,sp,72

000011dc <BgHeavyBlock_DoNothing>:
    11dc:	afa40000 	sw	a0,0(sp)
    11e0:	03e00008 	jr	ra
    11e4:	afa50004 	sw	a1,4(sp)

000011e8 <BgHeavyBlock_Land>:
    11e8:	27bdffa8 	addiu	sp,sp,-88
    11ec:	afb00030 	sw	s0,48(sp)
    11f0:	00808025 	move	s0,a0
    11f4:	afbf0034 	sw	ra,52(sp)
    11f8:	afa5005c 	sw	a1,92(sp)
    11fc:	240e0064 	li	t6,100
    1200:	f7b40028 	sdc1	$f20,40(sp)
    1204:	afae0010 	sw	t6,16(sp)
    1208:	24058ad0 	li	a1,-30000
    120c:	248400b4 	addiu	a0,a0,180
    1210:	24060006 	li	a2,6
    1214:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1218:	240707d0 	li	a3,2000
    121c:	10400083 	beqz	v0,142c <BgHeavyBlock_Land+0x244>
    1220:	2401ffcf 	li	at,-49
    1224:	4480a000 	mtc1	zero,$f20
    1228:	26040068 	addiu	a0,s0,104
    122c:	3c0641a0 	lui	a2,0x41a0
    1230:	4405a000 	mfc1	a1,$f20
    1234:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1238:	00000000 	nop
    123c:	4405a000 	mfc1	a1,$f20
    1240:	26040060 	addiu	a0,s0,96
    1244:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1248:	3c064040 	lui	a2,0x4040
    124c:	e614006c 	swc1	$f20,108(s0)
    1250:	26050008 	addiu	a1,s0,8
    1254:	8cb80000 	lw	t8,0(a1)
    1258:	26030024 	addiu	v1,s0,36
    125c:	02002025 	move	a0,s0
    1260:	ac780000 	sw	t8,0(v1)
    1264:	8caf0004 	lw	t7,4(a1)
    1268:	ac6f0004 	sw	t7,4(v1)
    126c:	8cb80008 	lw	t8,8(a1)
    1270:	ac780008 	sw	t8,8(v1)
    1274:	afa5003c 	sw	a1,60(sp)
    1278:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    127c:	afa30040 	sw	v1,64(sp)
    1280:	8fa30040 	lw	v1,64(sp)
    1284:	8fa5003c 	lw	a1,60(sp)
    1288:	3c0142c8 	lui	at,0x42c8
    128c:	8c680000 	lw	t0,0(v1)
    1290:	aca80000 	sw	t0,0(a1)
    1294:	8c790004 	lw	t9,4(v1)
    1298:	acb90004 	sw	t9,4(a1)
    129c:	8c680008 	lw	t0,8(v1)
    12a0:	aca80008 	sw	t0,8(a1)
    12a4:	8602001c 	lh	v0,28(s0)
    12a8:	304200ff 	andi	v0,v0,0xff
    12ac:	50400046 	beqzl	v0,13c8 <BgHeavyBlock_Land+0x1e0>
    12b0:	44816000 	mtc1	at,$f12
    12b4:	24010004 	li	at,4
    12b8:	14410062 	bne	v0,at,1444 <BgHeavyBlock_Land+0x25c>
    12bc:	3c0141f0 	lui	at,0x41f0
    12c0:	44816000 	mtc1	at,$f12
    12c4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    12c8:	00000000 	nop
    12cc:	3c0142c8 	lui	at,0x42c8
    12d0:	44816000 	mtc1	at,$f12
    12d4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    12d8:	e7a00044 	swc1	$f0,68(sp)
    12dc:	3c0141f0 	lui	at,0x41f0
    12e0:	44816000 	mtc1	at,$f12
    12e4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    12e8:	e7a00048 	swc1	$f0,72(sp)
    12ec:	3c010000 	lui	at,0x0
    12f0:	c42600e8 	lwc1	$f6,232(at)
    12f4:	c7a40044 	lwc1	$f4,68(sp)
    12f8:	3c010000 	lui	at,0x0
    12fc:	c43000ec 	lwc1	$f16,236(at)
    1300:	46062200 	add.s	$f8,$f4,$f6
    1304:	3c01440a 	lui	at,0x440a
    1308:	44812000 	mtc1	at,$f4
    130c:	c7aa0048 	lwc1	$f10,72(sp)
    1310:	44054000 	mfc1	a1,$f8
    1314:	46040180 	add.s	$f6,$f0,$f4
    1318:	8fa4005c 	lw	a0,92(sp)
    131c:	e7b40010 	swc1	$f20,16(sp)
    1320:	46105480 	add.s	$f18,$f10,$f16
    1324:	44073000 	mfc1	a3,$f6
    1328:	e7b40014 	swc1	$f20,20(sp)
    132c:	e7b40018 	swc1	$f20,24(sp)
    1330:	44069000 	mfc1	a2,$f18
    1334:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1338:	afa0001c 	sw	zero,28(sp)
    133c:	3c0141f0 	lui	at,0x41f0
    1340:	44816000 	mtc1	at,$f12
    1344:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1348:	00000000 	nop
    134c:	3c0142a0 	lui	at,0x42a0
    1350:	44816000 	mtc1	at,$f12
    1354:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1358:	e7a00044 	swc1	$f0,68(sp)
    135c:	3c0141f0 	lui	at,0x41f0
    1360:	44816000 	mtc1	at,$f12
    1364:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1368:	e7a00048 	swc1	$f0,72(sp)
    136c:	3c010000 	lui	at,0x0
    1370:	c42a00f0 	lwc1	$f10,240(at)
    1374:	c7a80044 	lwc1	$f8,68(sp)
    1378:	3c010000 	lui	at,0x0
    137c:	c42400f4 	lwc1	$f4,244(at)
    1380:	460a4400 	add.s	$f16,$f8,$f10
    1384:	3c014416 	lui	at,0x4416
    1388:	44814000 	mtc1	at,$f8
    138c:	c7b20048 	lwc1	$f18,72(sp)
    1390:	44058000 	mfc1	a1,$f16
    1394:	46080280 	add.s	$f10,$f0,$f8
    1398:	8fa4005c 	lw	a0,92(sp)
    139c:	e7b40010 	swc1	$f20,16(sp)
    13a0:	46049180 	add.s	$f6,$f18,$f4
    13a4:	44075000 	mfc1	a3,$f10
    13a8:	e7b40014 	swc1	$f20,20(sp)
    13ac:	e7b40018 	swc1	$f20,24(sp)
    13b0:	44063000 	mfc1	a2,$f6
    13b4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    13b8:	afa0001c 	sw	zero,28(sp)
    13bc:	10000022 	b	1448 <BgHeavyBlock_Land+0x260>
    13c0:	8fbf0034 	lw	ra,52(sp)
    13c4:	44816000 	mtc1	at,$f12
    13c8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    13cc:	00000000 	nop
    13d0:	3c0142c8 	lui	at,0x42c8
    13d4:	44816000 	mtc1	at,$f12
    13d8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    13dc:	e7a00048 	swc1	$f0,72(sp)
    13e0:	3c010000 	lui	at,0x0
    13e4:	c43200f8 	lwc1	$f18,248(at)
    13e8:	3c010000 	lui	at,0x0
    13ec:	c42600fc 	lwc1	$f6,252(at)
    13f0:	c7b00048 	lwc1	$f16,72(sp)
    13f4:	24090003 	li	t1,3
    13f8:	46060200 	add.s	$f8,$f0,$f6
    13fc:	afa9001c 	sw	t1,28(sp)
    1400:	8fa4005c 	lw	a0,92(sp)
    1404:	46128100 	add.s	$f4,$f16,$f18
    1408:	44074000 	mfc1	a3,$f8
    140c:	3c0641e8 	lui	a2,0x41e8
    1410:	e7b40010 	swc1	$f20,16(sp)
    1414:	44052000 	mfc1	a1,$f4
    1418:	e7b40014 	swc1	$f20,20(sp)
    141c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1420:	e7b40018 	swc1	$f20,24(sp)
    1424:	10000008 	b	1448 <BgHeavyBlock_Land+0x260>
    1428:	8fbf0034 	lw	ra,52(sp)
    142c:	8e0a0004 	lw	t2,4(s0)
    1430:	3c0c0000 	lui	t4,0x0
    1434:	258c0000 	addiu	t4,t4,0
    1438:	01415824 	and	t3,t2,at
    143c:	ae0b0004 	sw	t3,4(s0)
    1440:	ae0c0174 	sw	t4,372(s0)
    1444:	8fbf0034 	lw	ra,52(sp)
    1448:	d7b40028 	ldc1	$f20,40(sp)
    144c:	8fb00030 	lw	s0,48(sp)
    1450:	03e00008 	jr	ra
    1454:	27bd0058 	addiu	sp,sp,88

00001458 <BgHeavyBlock_Update>:
    1458:	27bdffe8 	addiu	sp,sp,-24
    145c:	afbf0014 	sw	ra,20(sp)
    1460:	8c990174 	lw	t9,372(a0)
    1464:	0320f809 	jalr	t9
    1468:	00000000 	nop
    146c:	8fbf0014 	lw	ra,20(sp)
    1470:	27bd0018 	addiu	sp,sp,24
    1474:	03e00008 	jr	ra
    1478:	00000000 	nop

0000147c <BgHeavyBlock_Draw>:
    147c:	27bdffb0 	addiu	sp,sp,-80
    1480:	afbf001c 	sw	ra,28(sp)
    1484:	afb00018 	sw	s0,24(sp)
    1488:	afa50054 	sw	a1,84(sp)
    148c:	8ca21c44 	lw	v0,7236(a1)
    1490:	8ca50000 	lw	a1,0(a1)
    1494:	00808025 	move	s0,a0
    1498:	3c060000 	lui	a2,0x0
    149c:	24c60080 	addiu	a2,a2,128
    14a0:	27a40030 	addiu	a0,sp,48
    14a4:	24070388 	li	a3,904
    14a8:	afa20044 	sw	v0,68(sp)
    14ac:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    14b0:	afa50040 	sw	a1,64(sp)
    14b4:	8e030174 	lw	v1,372(s0)
    14b8:	3c0f0000 	lui	t7,0x0
    14bc:	25ef0000 	addiu	t7,t7,0
    14c0:	146f0011 	bne	v1,t7,1508 <BgHeavyBlock_Draw+0x8c>
    14c4:	8fa20044 	lw	v0,68(sp)
    14c8:	c44c03b0 	lwc1	$f12,944(v0)
    14cc:	c44e03b4 	lwc1	$f14,948(v0)
    14d0:	8c4603b8 	lw	a2,952(v0)
    14d4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    14d8:	260700b4 	addiu	a3,s0,180
    14dc:	c604016c 	lwc1	$f4,364(s0)
    14e0:	c60c0164 	lwc1	$f12,356(s0)
    14e4:	c60e0168 	lwc1	$f14,360(s0)
    14e8:	46002187 	neg.s	$f6,$f4
    14ec:	24070001 	li	a3,1
    14f0:	44063000 	mfc1	a2,$f6
    14f4:	46006307 	neg.s	$f12,$f12
    14f8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    14fc:	46007387 	neg.s	$f14,$f14
    1500:	10000019 	b	1568 <BgHeavyBlock_Draw+0xec>
    1504:	00000000 	nop
    1508:	44804000 	mtc1	zero,$f8
    150c:	c60a006c 	lwc1	$f10,108(s0)
    1510:	3c180000 	lui	t8,0x0
    1514:	27180000 	addiu	t8,t8,0
    1518:	460a4032 	c.eq.s	$f8,$f10
    151c:	00000000 	nop
    1520:	45000011 	bc1f	1568 <BgHeavyBlock_Draw+0xec>
    1524:	00000000 	nop
    1528:	1478000f 	bne	v1,t8,1568 <BgHeavyBlock_Draw+0xec>
    152c:	260700b4 	addiu	a3,s0,180
    1530:	c60c0008 	lwc1	$f12,8(s0)
    1534:	c60e000c 	lwc1	$f14,12(s0)
    1538:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    153c:	8e060010 	lw	a2,16(s0)
    1540:	3c010000 	lui	at,0x0
    1544:	c430008c 	lwc1	$f16,140(at)
    1548:	c42c0084 	lwc1	$f12,132(at)
    154c:	c42e0088 	lwc1	$f14,136(at)
    1550:	46008487 	neg.s	$f18,$f16
    1554:	24070001 	li	a3,1
    1558:	44069000 	mfc1	a2,$f18
    155c:	46006307 	neg.s	$f12,$f12
    1560:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1564:	46007387 	neg.s	$f14,$f14
    1568:	3c040000 	lui	a0,0x0
    156c:	24840078 	addiu	a0,a0,120
    1570:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1574:	26050024 	addiu	a1,s0,36
    1578:	3c040000 	lui	a0,0x0
    157c:	24840084 	addiu	a0,a0,132
    1580:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1584:	26050008 	addiu	a1,s0,8
    1588:	8fb90054 	lw	t9,84(sp)
    158c:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    1590:	8f240000 	lw	a0,0(t9)
    1594:	8fa30040 	lw	v1,64(sp)
    1598:	3c09da38 	lui	t1,0xda38
    159c:	35290003 	ori	t1,t1,0x3
    15a0:	8c6202c0 	lw	v0,704(v1)
    15a4:	3c050000 	lui	a1,0x0
    15a8:	24a50098 	addiu	a1,a1,152
    15ac:	24480008 	addiu	t0,v0,8
    15b0:	ac6802c0 	sw	t0,704(v1)
    15b4:	ac490000 	sw	t1,0(v0)
    15b8:	8faa0054 	lw	t2,84(sp)
    15bc:	240603a3 	li	a2,931
    15c0:	00408025 	move	s0,v0
    15c4:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    15c8:	8d440000 	lw	a0,0(t2)
    15cc:	ae020004 	sw	v0,4(s0)
    15d0:	8fab0040 	lw	t3,64(sp)
    15d4:	3c0e0000 	lui	t6,0x0
    15d8:	25ce0000 	addiu	t6,t6,0
    15dc:	8d6202c0 	lw	v0,704(t3)
    15e0:	3c0dde00 	lui	t5,0xde00
    15e4:	3c060000 	lui	a2,0x0
    15e8:	244c0008 	addiu	t4,v0,8
    15ec:	ad6c02c0 	sw	t4,704(t3)
    15f0:	ac4e0004 	sw	t6,4(v0)
    15f4:	ac4d0000 	sw	t5,0(v0)
    15f8:	8faf0054 	lw	t7,84(sp)
    15fc:	24c600b0 	addiu	a2,a2,176
    1600:	27a40030 	addiu	a0,sp,48
    1604:	240703a7 	li	a3,935
    1608:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    160c:	8de50000 	lw	a1,0(t7)
    1610:	8fbf001c 	lw	ra,28(sp)
    1614:	8fb00018 	lw	s0,24(sp)
    1618:	27bd0050 	addiu	sp,sp,80
    161c:	03e00008 	jr	ra
    1620:	00000000 	nop

00001624 <BgHeavyBlock_DrawPiece>:
    1624:	27bdffe8 	addiu	sp,sp,-24
    1628:	afbf0014 	sw	ra,20(sp)
    162c:	afa5001c 	sw	a1,28(sp)
    1630:	8482001c 	lh	v0,28(a0)
    1634:	24010002 	li	at,2
    1638:	3c06c1a0 	lui	a2,0xc1a0
    163c:	304200ff 	andi	v0,v0,0xff
    1640:	10410005 	beq	v0,at,1658 <BgHeavyBlock_DrawPiece+0x34>
    1644:	24010003 	li	at,3
    1648:	1041000f 	beq	v0,at,1688 <BgHeavyBlock_DrawPiece+0x64>
    164c:	3c06c0a0 	lui	a2,0xc0a0
    1650:	10000018 	b	16b4 <BgHeavyBlock_DrawPiece+0x90>
    1654:	8fbf0014 	lw	ra,20(sp)
    1658:	3c014248 	lui	at,0x4248
    165c:	44816000 	mtc1	at,$f12
    1660:	3c01c382 	lui	at,0xc382
    1664:	44817000 	mtc1	at,$f14
    1668:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    166c:	24070001 	li	a3,1
    1670:	3c050000 	lui	a1,0x0
    1674:	24a50000 	addiu	a1,a1,0
    1678:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    167c:	8fa4001c 	lw	a0,28(sp)
    1680:	1000000c 	b	16b4 <BgHeavyBlock_DrawPiece+0x90>
    1684:	8fbf0014 	lw	ra,20(sp)
    1688:	3c014234 	lui	at,0x4234
    168c:	44816000 	mtc1	at,$f12
    1690:	3c01c38c 	lui	at,0xc38c
    1694:	44817000 	mtc1	at,$f14
    1698:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    169c:	24070001 	li	a3,1
    16a0:	3c050000 	lui	a1,0x0
    16a4:	24a50000 	addiu	a1,a1,0
    16a8:	0c000000 	jal	0 <BgHeavyBlock_SetPieceRandRot>
    16ac:	8fa4001c 	lw	a0,28(sp)
    16b0:	8fbf0014 	lw	ra,20(sp)
    16b4:	27bd0018 	addiu	sp,sp,24
    16b8:	03e00008 	jr	ra
    16bc:	00000000 	nop
