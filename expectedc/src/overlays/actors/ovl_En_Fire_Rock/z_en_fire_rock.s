
build/src/overlays/actors/ovl_En_Fire_Rock/z_en_fire_rock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnFireRock_Init>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa5003c 	sw	a1,60(sp)
      10:	8caf1c44 	lw	t7,7236(a1)
      14:	24010005 	li	at,5
      18:	3c060000 	lui	a2,0x0
      1c:	afaf0030 	sw	t7,48(sp)
      20:	8498001c 	lh	t8,28(a0)
      24:	00808025 	move	s0,a0
      28:	24c60000 	addiu	a2,a2,0
      2c:	a498018c 	sh	t8,396(a0)
      30:	8482018c 	lh	v0,396(a0)
      34:	3c074170 	lui	a3,0x4170
      38:	5041001f 	beql	v0,at,b8 <EnFireRock_Init+0xb8>
      3c:	2c410007 	sltiu	at,v0,7
      40:	260400b4 	addiu	a0,s0,180
      44:	0c000000 	jal	0 <EnFireRock_Init>
      48:	24050000 	li	a1,0
      4c:	8602018c 	lh	v0,396(s0)
      50:	24010006 	li	at,6
      54:	10410017 	beq	v0,at,b4 <EnFireRock_Init+0xb4>
      58:	3c014120 	lui	at,0x4120
      5c:	44816000 	mtc1	at,$f12
      60:	0c000000 	jal	0 <EnFireRock_Init>
      64:	00000000 	nop
      68:	3c014170 	lui	at,0x4170
      6c:	44812000 	mtc1	at,$f4
      70:	3c014120 	lui	at,0x4120
      74:	44816000 	mtc1	at,$f12
      78:	46040180 	add.s	$f6,$f0,$f4
      7c:	0c000000 	jal	0 <EnFireRock_Init>
      80:	e606014c 	swc1	$f6,332(s0)
      84:	3c014170 	lui	at,0x4170
      88:	44814000 	mtc1	at,$f8
      8c:	3c014120 	lui	at,0x4120
      90:	44816000 	mtc1	at,$f12
      94:	46080280 	add.s	$f10,$f0,$f8
      98:	0c000000 	jal	0 <EnFireRock_Init>
      9c:	e60a0150 	swc1	$f10,336(s0)
      a0:	3c014170 	lui	at,0x4170
      a4:	44818000 	mtc1	at,$f16
      a8:	8602018c 	lh	v0,396(s0)
      ac:	46100480 	add.s	$f18,$f0,$f16
      b0:	e6120154 	swc1	$f18,340(s0)
      b4:	2c410007 	sltiu	at,v0,7
      b8:	102000cb 	beqz	at,3e8 <L80A12008>
      bc:	0002c880 	sll	t9,v0,0x2
      c0:	3c010000 	lui	at,0x0
      c4:	00390821 	addu	at,at,t9
      c8:	8c390000 	lw	t9,0(at)
      cc:	03200008 	jr	t9
      d0:	00000000 	nop

000000d4 <L80A11CF4>:
      d4:	3c040000 	lui	a0,0x0
      d8:	ae000134 	sw	zero,308(s0)
      dc:	0c000000 	jal	0 <EnFireRock_Init>
      e0:	24840000 	addiu	a0,a0,0
      e4:	3c080000 	lui	t0,0x0
      e8:	25080000 	addiu	t0,t0,0
      ec:	100000c3 	b	3fc <L80A12008+0x14>
      f0:	ae080168 	sw	t0,360(s0)

000000f4 <L80A11D14>:
      f4:	3c053cf5 	lui	a1,0x3cf5
      f8:	34a5c28f 	ori	a1,a1,0xc28f
      fc:	0c000000 	jal	0 <EnFireRock_Init>
     100:	02002025 	move	a0,s0
     104:	26050194 	addiu	a1,s0,404
     108:	afa50024 	sw	a1,36(sp)
     10c:	0c000000 	jal	0 <EnFireRock_Init>
     110:	8fa4003c 	lw	a0,60(sp)
     114:	3c070000 	lui	a3,0x0
     118:	8fa50024 	lw	a1,36(sp)
     11c:	24e70000 	addiu	a3,a3,0
     120:	8fa4003c 	lw	a0,60(sp)
     124:	0c000000 	jal	0 <EnFireRock_Init>
     128:	02003025 	move	a2,s0
     12c:	3c040000 	lui	a0,0x0
     130:	0c000000 	jal	0 <EnFireRock_Init>
     134:	24840000 	addiu	a0,a0,0
     138:	8fa4003c 	lw	a0,60(sp)
     13c:	24090017 	li	t1,23
     140:	240a0025 	li	t2,37
     144:	240bfff6 	li	t3,-10
     148:	a60901d4 	sh	t1,468(s0)
     14c:	a60a01d6 	sh	t2,470(s0)
     150:	a60b01d8 	sh	t3,472(s0)
     154:	02003025 	move	a2,s0
     158:	24070006 	li	a3,6
     15c:	0c000000 	jal	0 <EnFireRock_Init>
     160:	24851c24 	addiu	a1,a0,7204
     164:	3c0d0000 	lui	t5,0x0
     168:	240c00ff 	li	t4,255
     16c:	25ad0000 	addiu	t5,t5,0
     170:	a20c00ae 	sb	t4,174(s0)
     174:	100000a1 	b	3fc <L80A12008+0x14>
     178:	ae0d0168 	sw	t5,360(s0)

0000017c <L80A11D9C>:
     17c:	3c014248 	lui	at,0x4248
     180:	44816000 	mtc1	at,$f12
     184:	0c000000 	jal	0 <EnFireRock_Init>
     188:	00000000 	nop
     18c:	8fae0030 	lw	t6,48(sp)
     190:	3c014248 	lui	at,0x4248
     194:	44816000 	mtc1	at,$f12
     198:	c5c40024 	lwc1	$f4,36(t6)
     19c:	46040180 	add.s	$f6,$f0,$f4
     1a0:	0c000000 	jal	0 <EnFireRock_Init>
     1a4:	e606017c 	swc1	$f6,380(s0)
     1a8:	8faf0030 	lw	t7,48(sp)
     1ac:	c5e8002c 	lwc1	$f8,44(t7)
     1b0:	46080280 	add.s	$f10,$f0,$f8
     1b4:	e60a0184 	swc1	$f10,388(s0)

000001b8 <L80A11DD8>:
     1b8:	3c014000 	lui	at,0x4000
     1bc:	44816000 	mtc1	at,$f12
     1c0:	0c000000 	jal	0 <EnFireRock_Init>
     1c4:	00000000 	nop
     1c8:	3c0142c8 	lui	at,0x42c8
     1cc:	44818000 	mtc1	at,$f16
     1d0:	3c010000 	lui	at,0x0
     1d4:	c4240000 	lwc1	$f4,0(at)
     1d8:	46100483 	div.s	$f18,$f0,$f16
     1dc:	02002025 	move	a0,s0
     1e0:	46049080 	add.s	$f2,$f18,$f4
     1e4:	44051000 	mfc1	a1,$f2
     1e8:	0c000000 	jal	0 <EnFireRock_Init>
     1ec:	e602016c 	swc1	$f2,364(s0)
     1f0:	26050194 	addiu	a1,s0,404
     1f4:	afa50024 	sw	a1,36(sp)
     1f8:	0c000000 	jal	0 <EnFireRock_Init>
     1fc:	8fa4003c 	lw	a0,60(sp)
     200:	3c070000 	lui	a3,0x0
     204:	8fa50024 	lw	a1,36(sp)
     208:	24e70000 	addiu	a3,a3,0
     20c:	8fa4003c 	lw	a0,60(sp)
     210:	0c000000 	jal	0 <EnFireRock_Init>
     214:	02003025 	move	a2,s0
     218:	3c010000 	lui	at,0x0
     21c:	0c000000 	jal	0 <EnFireRock_Init>
     220:	c42c0000 	lwc1	$f12,0(at)
     224:	4600018d 	trunc.w.s	$f6,$f0
     228:	3c014170 	lui	at,0x4170
     22c:	44814000 	mtc1	at,$f8
     230:	3c190000 	lui	t9,0x0
     234:	44023000 	mfc1	v0,$f6
     238:	27390000 	addiu	t9,t9,0
     23c:	ae190168 	sw	t9,360(s0)
     240:	e60800c4 	swc1	$f8,196(s0)
     244:	a60200b6 	sh	v0,182(s0)
     248:	1000006c 	b	3fc <L80A12008+0x14>
     24c:	a6020032 	sh	v0,50(s0)

00000250 <L80A11E70>:
     250:	3c014040 	lui	at,0x4040
     254:	44816000 	mtc1	at,$f12
     258:	0c000000 	jal	0 <EnFireRock_Init>
     25c:	00000000 	nop
     260:	3c014080 	lui	at,0x4080
     264:	44815000 	mtc1	at,$f10
     268:	3c014040 	lui	at,0x4040
     26c:	44816000 	mtc1	at,$f12
     270:	460a0400 	add.s	$f16,$f0,$f10
     274:	0c000000 	jal	0 <EnFireRock_Init>
     278:	e6100060 	swc1	$f16,96(s0)
     27c:	3c014040 	lui	at,0x4040
     280:	44819000 	mtc1	at,$f18
     284:	3c013f80 	lui	at,0x3f80
     288:	44816000 	mtc1	at,$f12
     28c:	46120100 	add.s	$f4,$f0,$f18
     290:	0c000000 	jal	0 <EnFireRock_Init>
     294:	e6040068 	swc1	$f4,104(s0)
     298:	3c0142c8 	lui	at,0x42c8
     29c:	44813000 	mtc1	at,$f6
     2a0:	3c010000 	lui	at,0x0
     2a4:	c42a0000 	lwc1	$f10,0(at)
     2a8:	46060203 	div.s	$f8,$f0,$f6
     2ac:	02002025 	move	a0,s0
     2b0:	460a4080 	add.s	$f2,$f8,$f10
     2b4:	44051000 	mfc1	a1,$f2
     2b8:	0c000000 	jal	0 <EnFireRock_Init>
     2bc:	e602016c 	swc1	$f2,364(s0)
     2c0:	3c01bfc0 	lui	at,0xbfc0
     2c4:	44818000 	mtc1	at,$f16
     2c8:	26050194 	addiu	a1,s0,404
     2cc:	e610006c 	swc1	$f16,108(s0)
     2d0:	afa50024 	sw	a1,36(sp)
     2d4:	0c000000 	jal	0 <EnFireRock_Init>
     2d8:	8fa4003c 	lw	a0,60(sp)
     2dc:	3c070000 	lui	a3,0x0
     2e0:	8fa50024 	lw	a1,36(sp)
     2e4:	24e70000 	addiu	a3,a3,0
     2e8:	8fa4003c 	lw	a0,60(sp)
     2ec:	0c000000 	jal	0 <EnFireRock_Init>
     2f0:	02003025 	move	a2,s0
     2f4:	3c014120 	lui	at,0x4120
     2f8:	44819000 	mtc1	at,$f18
     2fc:	3c010000 	lui	at,0x0
     300:	e61200c4 	swc1	$f18,196(s0)
     304:	0c000000 	jal	0 <EnFireRock_Init>
     308:	c42c0000 	lwc1	$f12,0(at)
     30c:	4600010d 	trunc.w.s	$f4,$f0
     310:	3c090000 	lui	t1,0x0
     314:	25290000 	addiu	t1,t1,0
     318:	ae090168 	sw	t1,360(s0)
     31c:	44022000 	mfc1	v0,$f4
     320:	00000000 	nop
     324:	a60200b6 	sh	v0,182(s0)
     328:	10000034 	b	3fc <L80A12008+0x14>
     32c:	a6020032 	sh	v0,50(s0)

00000330 <L80A11F50>:
     330:	3c014040 	lui	at,0x4040
     334:	44816000 	mtc1	at,$f12
     338:	0c000000 	jal	0 <EnFireRock_Init>
     33c:	00000000 	nop
     340:	3c014080 	lui	at,0x4080
     344:	44813000 	mtc1	at,$f6
     348:	3c014040 	lui	at,0x4040
     34c:	44816000 	mtc1	at,$f12
     350:	46060200 	add.s	$f8,$f0,$f6
     354:	0c000000 	jal	0 <EnFireRock_Init>
     358:	e6080060 	swc1	$f8,96(s0)
     35c:	3c014000 	lui	at,0x4000
     360:	44815000 	mtc1	at,$f10
     364:	3c013f80 	lui	at,0x3f80
     368:	44816000 	mtc1	at,$f12
     36c:	460a0400 	add.s	$f16,$f0,$f10
     370:	0c000000 	jal	0 <EnFireRock_Init>
     374:	e6100068 	swc1	$f16,104(s0)
     378:	3c0143fa 	lui	at,0x43fa
     37c:	44819000 	mtc1	at,$f18
     380:	3c010000 	lui	at,0x0
     384:	c4260000 	lwc1	$f6,0(at)
     388:	46120103 	div.s	$f4,$f0,$f18
     38c:	02002025 	move	a0,s0
     390:	46062080 	add.s	$f2,$f4,$f6
     394:	44051000 	mfc1	a1,$f2
     398:	0c000000 	jal	0 <EnFireRock_Init>
     39c:	e602016c 	swc1	$f2,364(s0)
     3a0:	3c010000 	lui	at,0x0
     3a4:	c4280000 	lwc1	$f8,0(at)
     3a8:	3c0140a0 	lui	at,0x40a0
     3ac:	44815000 	mtc1	at,$f10
     3b0:	3c010000 	lui	at,0x0
     3b4:	e608006c 	swc1	$f8,108(s0)
     3b8:	e60a00c4 	swc1	$f10,196(s0)
     3bc:	0c000000 	jal	0 <EnFireRock_Init>
     3c0:	c42c0000 	lwc1	$f12,0(at)
     3c4:	4600040d 	trunc.w.s	$f16,$f0
     3c8:	3c0b0000 	lui	t3,0x0
     3cc:	256b0000 	addiu	t3,t3,0
     3d0:	ae0b0168 	sw	t3,360(s0)
     3d4:	44028000 	mfc1	v0,$f16
     3d8:	00000000 	nop
     3dc:	a60200b6 	sh	v0,182(s0)
     3e0:	10000006 	b	3fc <L80A12008+0x14>
     3e4:	a6020032 	sh	v0,50(s0)

000003e8 <L80A12008>:
     3e8:	3c040000 	lui	a0,0x0
     3ec:	0c000000 	jal	0 <EnFireRock_Init>
     3f0:	24840000 	addiu	a0,a0,0
     3f4:	0c000000 	jal	0 <EnFireRock_Init>
     3f8:	02002025 	move	a0,s0
     3fc:	8fbf001c 	lw	ra,28(sp)
     400:	8fb00018 	lw	s0,24(sp)
     404:	27bd0038 	addiu	sp,sp,56
     408:	03e00008 	jr	ra
     40c:	00000000 	nop

00000410 <EnFireRock_Destroy>:
     410:	27bdffe0 	addiu	sp,sp,-32
     414:	afbf0014 	sw	ra,20(sp)
     418:	afa50024 	sw	a1,36(sp)
     41c:	8c830118 	lw	v1,280(a0)
     420:	00803025 	move	a2,a0
     424:	5060001b 	beqzl	v1,494 <EnFireRock_Destroy+0x84>
     428:	8fa40024 	lw	a0,36(sp)
     42c:	8c8e0190 	lw	t6,400(a0)
     430:	55c30018 	bnel	t6,v1,494 <EnFireRock_Destroy+0x84>
     434:	8fa40024 	lw	a0,36(sp)
     438:	8c6f0130 	lw	t7,304(v1)
     43c:	00601025 	move	v0,v1
     440:	51e00014 	beqzl	t7,494 <EnFireRock_Destroy+0x84>
     444:	8fa40024 	lw	a0,36(sp)
     448:	84630158 	lh	v1,344(v1)
     44c:	3c040000 	lui	a0,0x0
     450:	24840000 	addiu	a0,a0,0
     454:	1860000e 	blez	v1,490 <EnFireRock_Destroy+0x80>
     458:	2478ffff 	addiu	t8,v1,-1
     45c:	a4580158 	sh	t8,344(v0)
     460:	afa60020 	sw	a2,32(sp)
     464:	0c000000 	jal	0 <EnFireRock_Init>
     468:	afa20018 	sw	v0,24(sp)
     46c:	8fa20018 	lw	v0,24(sp)
     470:	3c040000 	lui	a0,0x0
     474:	24840000 	addiu	a0,a0,0
     478:	0c000000 	jal	0 <EnFireRock_Init>
     47c:	84450158 	lh	a1,344(v0)
     480:	3c040000 	lui	a0,0x0
     484:	0c000000 	jal	0 <EnFireRock_Init>
     488:	24840000 	addiu	a0,a0,0
     48c:	8fa60020 	lw	a2,32(sp)
     490:	8fa40024 	lw	a0,36(sp)
     494:	0c000000 	jal	0 <EnFireRock_Init>
     498:	24c50194 	addiu	a1,a2,404
     49c:	8fbf0014 	lw	ra,20(sp)
     4a0:	27bd0020 	addiu	sp,sp,32
     4a4:	03e00008 	jr	ra
     4a8:	00000000 	nop

000004ac <func_80A120CC>:
     4ac:	27bdff98 	addiu	sp,sp,-104
     4b0:	afbf0044 	sw	ra,68(sp)
     4b4:	afb20040 	sw	s2,64(sp)
     4b8:	afb1003c 	sw	s1,60(sp)
     4bc:	afb00038 	sw	s0,56(sp)
     4c0:	f7b40030 	sdc1	$f20,48(sp)
     4c4:	3c010000 	lui	at,0x0
     4c8:	c4240000 	lwc1	$f4,0(at)
     4cc:	c4860080 	lwc1	$f6,128(a0)
     4d0:	00808825 	move	s1,a0
     4d4:	00a09025 	move	s2,a1
     4d8:	46062032 	c.eq.s	$f4,$f6
     4dc:	8cb01c44 	lw	s0,7236(a1)
     4e0:	3c014348 	lui	at,0x4348
     4e4:	45010009 	bc1t	50c <func_80A120CC+0x60>
     4e8:	00000000 	nop
     4ec:	c6020028 	lwc1	$f2,40(s0)
     4f0:	44814000 	mtc1	at,$f8
     4f4:	c4800028 	lwc1	$f0,40(a0)
     4f8:	46081281 	sub.s	$f10,$f2,$f8
     4fc:	460a003c 	c.lt.s	$f0,$f10
     500:	00000000 	nop
     504:	45020006 	bc1fl	520 <func_80A120CC+0x74>
     508:	8622018c 	lh	v0,396(s1)
     50c:	0c000000 	jal	0 <EnFireRock_Init>
     510:	02202025 	move	a0,s1
     514:	100000b3 	b	7e4 <func_80A120CC+0x338>
     518:	8fbf0044 	lw	ra,68(sp)
     51c:	8622018c 	lh	v0,396(s1)
     520:	24010001 	li	at,1
     524:	5040000a 	beqzl	v0,550 <func_80A120CC+0xa4>
     528:	4600103c 	c.lt.s	$f2,$f0
     52c:	1041004b 	beq	v0,at,65c <func_80A120CC+0x1b0>
     530:	3c0f0001 	lui	t7,0x1
     534:	24010003 	li	at,3
     538:	1041002c 	beq	v0,at,5ec <func_80A120CC+0x140>
     53c:	3c0141a0 	lui	at,0x41a0
     540:	4481a000 	mtc1	at,$f20
     544:	10000051 	b	68c <func_80A120CC+0x1e0>
     548:	96390088 	lhu	t9,136(s1)
     54c:	4600103c 	c.lt.s	$f2,$f0
     550:	3c01c42f 	lui	at,0xc42f
     554:	45020026 	bc1fl	5f0 <func_80A120CC+0x144>
     558:	3c0141a0 	lui	at,0x41a0
     55c:	c6020024 	lwc1	$f2,36(s0)
     560:	44818000 	mtc1	at,$f16
     564:	3c0142c8 	lui	at,0x42c8
     568:	4602803c 	c.lt.s	$f16,$f2
     56c:	00000000 	nop
     570:	45030013 	bc1tl	5c0 <func_80A120CC+0x114>
     574:	3c013f80 	lui	at,0x3f80
     578:	44819000 	mtc1	at,$f18
     57c:	3c010000 	lui	at,0x0
     580:	4612103c 	c.lt.s	$f2,$f18
     584:	00000000 	nop
     588:	4503000d 	bc1tl	5c0 <func_80A120CC+0x114>
     58c:	3c013f80 	lui	at,0x3f80
     590:	c600002c 	lwc1	$f0,44(s0)
     594:	c4240000 	lwc1	$f4,0(at)
     598:	3c010000 	lui	at,0x0
     59c:	4600203c 	c.lt.s	$f4,$f0
     5a0:	00000000 	nop
     5a4:	45030006 	bc1tl	5c0 <func_80A120CC+0x114>
     5a8:	3c013f80 	lui	at,0x3f80
     5ac:	c4260000 	lwc1	$f6,0(at)
     5b0:	4606003c 	c.lt.s	$f0,$f6
     5b4:	00000000 	nop
     5b8:	4500000c 	bc1f	5ec <func_80A120CC+0x140>
     5bc:	3c013f80 	lui	at,0x3f80
     5c0:	4481a000 	mtc1	at,$f20
     5c4:	44051000 	mfc1	a1,$f2
     5c8:	26240024 	addiu	a0,s1,36
     5cc:	4406a000 	mfc1	a2,$f20
     5d0:	0c000000 	jal	0 <EnFireRock_Init>
     5d4:	3c074120 	lui	a3,0x4120
     5d8:	4406a000 	mfc1	a2,$f20
     5dc:	2624002c 	addiu	a0,s1,44
     5e0:	8e05002c 	lw	a1,44(s0)
     5e4:	0c000000 	jal	0 <EnFireRock_Init>
     5e8:	3c074120 	lui	a3,0x4120
     5ec:	3c0141a0 	lui	at,0x41a0
     5f0:	4481a000 	mtc1	at,$f20
     5f4:	0c000000 	jal	0 <EnFireRock_Init>
     5f8:	4600a306 	mov.s	$f12,$f20
     5fc:	c6280024 	lwc1	$f8,36(s1)
     600:	4600a306 	mov.s	$f12,$f20
     604:	46080280 	add.s	$f10,$f0,$f8
     608:	0c000000 	jal	0 <EnFireRock_Init>
     60c:	e7aa0058 	swc1	$f10,88(sp)
     610:	c6300028 	lwc1	$f16,40(s1)
     614:	4600a306 	mov.s	$f12,$f20
     618:	46100480 	add.s	$f18,$f0,$f16
     61c:	0c000000 	jal	0 <EnFireRock_Init>
     620:	e7b2005c 	swc1	$f18,92(sp)
     624:	c624002c 	lwc1	$f4,44(s1)
     628:	240effff 	li	t6,-1
     62c:	afae0018 	sw	t6,24(sp)
     630:	46040180 	add.s	$f6,$f0,$f4
     634:	afa00014 	sw	zero,20(sp)
     638:	afa00010 	sw	zero,16(sp)
     63c:	02402025 	move	a0,s2
     640:	e7a60060 	swc1	$f6,96(sp)
     644:	02202825 	move	a1,s1
     648:	27a60058 	addiu	a2,sp,88
     64c:	0c000000 	jal	0 <EnFireRock_Init>
     650:	24070064 	li	a3,100
     654:	1000000d 	b	68c <func_80A120CC+0x1e0>
     658:	96390088 	lhu	t9,136(s1)
     65c:	01f27821 	addu	t7,t7,s2
     660:	8def1de4 	lw	t7,7652(t7)
     664:	02202025 	move	a0,s1
     668:	31f80003 	andi	t8,t7,0x3
     66c:	57000004 	bnezl	t8,680 <func_80A120CC+0x1d4>
     670:	3c0141a0 	lui	at,0x41a0
     674:	0c000000 	jal	0 <EnFireRock_Init>
     678:	240538d7 	li	a1,14551
     67c:	3c0141a0 	lui	at,0x41a0
     680:	4481a000 	mtc1	at,$f20
     684:	00000000 	nop
     688:	96390088 	lhu	t9,136(s1)
     68c:	33280001 	andi	t0,t9,0x1
     690:	51000054 	beqzl	t0,7e4 <func_80A120CC+0x338>
     694:	8fbf0044 	lw	ra,68(sp)
     698:	86290188 	lh	t1,392(s1)
     69c:	55200051 	bnezl	t1,7e4 <func_80A120CC+0x338>
     6a0:	8fbf0044 	lw	ra,68(sp)
     6a4:	8622018c 	lh	v0,396(s1)
     6a8:	26300024 	addiu	s0,s1,36
     6ac:	24010001 	li	at,1
     6b0:	10400005 	beqz	v0,6c8 <func_80A120CC+0x21c>
     6b4:	02202025 	move	a0,s1
     6b8:	10410007 	beq	v0,at,6d8 <func_80A120CC+0x22c>
     6bc:	24010003 	li	at,3
     6c0:	14410032 	bne	v0,at,78c <func_80A120CC+0x2e0>
     6c4:	02202825 	move	a1,s1
     6c8:	02402825 	move	a1,s2
     6cc:	24060005 	li	a2,5
     6d0:	0c000000 	jal	0 <EnFireRock_Init>
     6d4:	24070002 	li	a3,2
     6d8:	8e2700c4 	lw	a3,196(s1)
     6dc:	3c014100 	lui	at,0x4100
     6e0:	44814000 	mtc1	at,$f8
     6e4:	240a0001 	li	t2,1
     6e8:	240b01f4 	li	t3,500
     6ec:	240c000a 	li	t4,10
     6f0:	afac001c 	sw	t4,28(sp)
     6f4:	afab0018 	sw	t3,24(sp)
     6f8:	afaa0010 	sw	t2,16(sp)
     6fc:	afa00020 	sw	zero,32(sp)
     700:	02402025 	move	a0,s2
     704:	02202825 	move	a1,s1
     708:	02003025 	move	a2,s0
     70c:	0c000000 	jal	0 <EnFireRock_Init>
     710:	e7a80014 	swc1	$f8,20(sp)
     714:	00008025 	move	s0,zero
     718:	0c000000 	jal	0 <EnFireRock_Init>
     71c:	4600a306 	mov.s	$f12,$f20
     720:	c62a0024 	lwc1	$f10,36(s1)
     724:	4600a306 	mov.s	$f12,$f20
     728:	460a0400 	add.s	$f16,$f0,$f10
     72c:	e7b00058 	swc1	$f16,88(sp)
     730:	c6320080 	lwc1	$f18,128(s1)
     734:	0c000000 	jal	0 <EnFireRock_Init>
     738:	e7b2005c 	swc1	$f18,92(sp)
     73c:	c624002c 	lwc1	$f4,44(s1)
     740:	240dffff 	li	t5,-1
     744:	afad0018 	sw	t5,24(sp)
     748:	46040180 	add.s	$f6,$f0,$f4
     74c:	afa00014 	sw	zero,20(sp)
     750:	afa00010 	sw	zero,16(sp)
     754:	02402025 	move	a0,s2
     758:	e7a60060 	swc1	$f6,96(sp)
     75c:	02202825 	move	a1,s1
     760:	27a60058 	addiu	a2,sp,88
     764:	0c000000 	jal	0 <EnFireRock_Init>
     768:	2407012c 	li	a3,300
     76c:	26100001 	addiu	s0,s0,1
     770:	24010005 	li	at,5
     774:	1601ffe8 	bne	s0,at,718 <func_80A120CC+0x26c>
     778:	00000000 	nop
     77c:	3c0e0000 	lui	t6,0x0
     780:	25ce0000 	addiu	t6,t6,0
     784:	10000016 	b	7e0 <func_80A120CC+0x334>
     788:	ae2e0168 	sw	t6,360(s1)
     78c:	8e2700c4 	lw	a3,196(s1)
     790:	3c014100 	lui	at,0x4100
     794:	44814000 	mtc1	at,$f8
     798:	240f0003 	li	t7,3
     79c:	241800c8 	li	t8,200
     7a0:	2419000a 	li	t9,10
     7a4:	afb9001c 	sw	t9,28(sp)
     7a8:	afb80018 	sw	t8,24(sp)
     7ac:	afaf0010 	sw	t7,16(sp)
     7b0:	afa00020 	sw	zero,32(sp)
     7b4:	02402025 	move	a0,s2
     7b8:	02003025 	move	a2,s0
     7bc:	0c000000 	jal	0 <EnFireRock_Init>
     7c0:	e7a80014 	swc1	$f8,20(sp)
     7c4:	02402025 	move	a0,s2
     7c8:	02002825 	move	a1,s0
     7cc:	24060028 	li	a2,40
     7d0:	0c000000 	jal	0 <EnFireRock_Init>
     7d4:	24072802 	li	a3,10242
     7d8:	0c000000 	jal	0 <EnFireRock_Init>
     7dc:	02202025 	move	a0,s1
     7e0:	8fbf0044 	lw	ra,68(sp)
     7e4:	d7b40030 	ldc1	$f20,48(sp)
     7e8:	8fb00038 	lw	s0,56(sp)
     7ec:	8fb1003c 	lw	s1,60(sp)
     7f0:	8fb20040 	lw	s2,64(sp)
     7f4:	03e00008 	jr	ra
     7f8:	27bd0068 	addiu	sp,sp,104

000007fc <func_80A1241C>:
     7fc:	27bdff88 	addiu	sp,sp,-120
     800:	afbf0074 	sw	ra,116(sp)
     804:	afb60070 	sw	s6,112(sp)
     808:	afb5006c 	sw	s5,108(sp)
     80c:	afb40068 	sw	s4,104(sp)
     810:	afb30064 	sw	s3,100(sp)
     814:	afb20060 	sw	s2,96(sp)
     818:	afb1005c 	sw	s1,92(sp)
     81c:	afb00058 	sw	s0,88(sp)
     820:	f7bc0050 	sdc1	$f28,80(sp)
     824:	f7ba0048 	sdc1	$f26,72(sp)
     828:	f7b80040 	sdc1	$f24,64(sp)
     82c:	f7b60038 	sdc1	$f22,56(sp)
     830:	f7b40030 	sdc1	$f20,48(sp)
     834:	8482018c 	lh	v0,396(a0)
     838:	00808825 	move	s1,a0
     83c:	00a0b025 	move	s6,a1
     840:	10400006 	beqz	v0,85c <func_80A1241C+0x60>
     844:	00001825 	move	v1,zero
     848:	24010001 	li	at,1
     84c:	10410005 	beq	v0,at,864 <func_80A1241C+0x68>
     850:	24010003 	li	at,3
     854:	14410004 	bne	v0,at,868 <func_80A1241C+0x6c>
     858:	00000000 	nop
     85c:	10000002 	b	868 <func_80A1241C+0x6c>
     860:	24030001 	li	v1,1
     864:	24030002 	li	v1,2
     868:	1060003a 	beqz	v1,954 <func_80A1241C+0x158>
     86c:	00008025 	move	s0,zero
     870:	3c010000 	lui	at,0x0
     874:	c43c0000 	lwc1	$f28,0(at)
     878:	3c014120 	lui	at,0x4120
     87c:	4481d000 	mtc1	at,$f26
     880:	3c014040 	lui	at,0x4040
     884:	00039c00 	sll	s3,v1,0x10
     888:	3c150000 	lui	s5,0x0
     88c:	4481c000 	mtc1	at,$f24
     890:	26b50000 	addiu	s5,s5,0
     894:	00139c03 	sra	s3,s3,0x10
     898:	26d21c24 	addiu	s2,s6,7204
     89c:	24140002 	li	s4,2
     8a0:	0c000000 	jal	0 <EnFireRock_Init>
     8a4:	4600c306 	mov.s	$f12,$f24
     8a8:	46000506 	mov.s	$f20,$f0
     8ac:	0c000000 	jal	0 <EnFireRock_Init>
     8b0:	4600c306 	mov.s	$f12,$f24
     8b4:	46000586 	mov.s	$f22,$f0
     8b8:	0c000000 	jal	0 <EnFireRock_Init>
     8bc:	4600c306 	mov.s	$f12,$f24
     8c0:	c6280028 	lwc1	$f8,40(s1)
     8c4:	c6240024 	lwc1	$f4,36(s1)
     8c8:	02402025 	move	a0,s2
     8cc:	461a4280 	add.s	$f10,$f8,$f26
     8d0:	02c02825 	move	a1,s6
     8d4:	240600b5 	li	a2,181
     8d8:	4604a180 	add.s	$f6,$f20,$f4
     8dc:	460ab400 	add.s	$f16,$f22,$f10
     8e0:	44073000 	mfc1	a3,$f6
     8e4:	e7b00010 	swc1	$f16,16(sp)
     8e8:	c632002c 	lwc1	$f18,44(s1)
     8ec:	afb30024 	sw	s3,36(sp)
     8f0:	afa00020 	sw	zero,32(sp)
     8f4:	46120100 	add.s	$f4,$f0,$f18
     8f8:	afa0001c 	sw	zero,28(sp)
     8fc:	afa00018 	sw	zero,24(sp)
     900:	0c000000 	jal	0 <EnFireRock_Init>
     904:	e7a40014 	swc1	$f4,20(sp)
     908:	1040000a 	beqz	v0,934 <func_80A1241C+0x138>
     90c:	00000000 	nop
     910:	862e0032 	lh	t6,50(s1)
     914:	16000003 	bnez	s0,924 <func_80A1241C+0x128>
     918:	a44e0032 	sh	t6,50(v0)
     91c:	862f00b6 	lh	t7,182(s1)
     920:	a44f00b6 	sh	t7,182(v0)
     924:	c626016c 	lwc1	$f6,364(s1)
     928:	461c3201 	sub.s	$f8,$f6,$f28
     92c:	10000003 	b	93c <func_80A1241C+0x140>
     930:	e448016c 	swc1	$f8,364(v0)
     934:	0c000000 	jal	0 <EnFireRock_Init>
     938:	02a02025 	move	a0,s5
     93c:	26100001 	addiu	s0,s0,1
     940:	1614ffd7 	bne	s0,s4,8a0 <func_80A1241C+0xa4>
     944:	00000000 	nop
     948:	02202025 	move	a0,s1
     94c:	0c000000 	jal	0 <EnFireRock_Init>
     950:	240538d7 	li	a1,14551
     954:	0c000000 	jal	0 <EnFireRock_Init>
     958:	02202025 	move	a0,s1
     95c:	8fbf0074 	lw	ra,116(sp)
     960:	d7b40030 	ldc1	$f20,48(sp)
     964:	d7b60038 	ldc1	$f22,56(sp)
     968:	d7b80040 	ldc1	$f24,64(sp)
     96c:	d7ba0048 	ldc1	$f26,72(sp)
     970:	d7bc0050 	ldc1	$f28,80(sp)
     974:	8fb00058 	lw	s0,88(sp)
     978:	8fb1005c 	lw	s1,92(sp)
     97c:	8fb20060 	lw	s2,96(sp)
     980:	8fb30064 	lw	s3,100(sp)
     984:	8fb40068 	lw	s4,104(sp)
     988:	8fb5006c 	lw	s5,108(sp)
     98c:	8fb60070 	lw	s6,112(sp)
     990:	03e00008 	jr	ra
     994:	27bd0078 	addiu	sp,sp,120

00000998 <func_80A125B8>:
     998:	27bdffa0 	addiu	sp,sp,-96
     99c:	afbf004c 	sw	ra,76(sp)
     9a0:	afb00048 	sw	s0,72(sp)
     9a4:	afa50064 	sw	a1,100(sp)
     9a8:	3c014348 	lui	at,0x4348
     9ac:	44813000 	mtc1	at,$f6
     9b0:	c4840090 	lwc1	$f4,144(a0)
     9b4:	00808025 	move	s0,a0
     9b8:	4606203c 	c.lt.s	$f4,$f6
     9bc:	00000000 	nop
     9c0:	45020030 	bc1fl	a84 <func_80A125B8+0xec>
     9c4:	a200018e 	sb	zero,398(s0)
     9c8:	908e018e 	lbu	t6,398(a0)
     9cc:	55c0002a 	bnezl	t6,a78 <func_80A125B8+0xe0>
     9d0:	24090001 	li	t1,1
     9d4:	848f018a 	lh	t7,394(a0)
     9d8:	2418001e 	li	t8,30
     9dc:	3c014040 	lui	at,0x4040
     9e0:	55e00025 	bnezl	t7,a78 <func_80A125B8+0xe0>
     9e4:	24090001 	li	t1,1
     9e8:	44816000 	mtc1	at,$f12
     9ec:	0c000000 	jal	0 <EnFireRock_Init>
     9f0:	a498018a 	sh	t8,394(a0)
     9f4:	3c014040 	lui	at,0x4040
     9f8:	44816000 	mtc1	at,$f12
     9fc:	0c000000 	jal	0 <EnFireRock_Init>
     a00:	e7a00054 	swc1	$f0,84(sp)
     a04:	3c014120 	lui	at,0x4120
     a08:	44812000 	mtc1	at,$f4
     a0c:	c6120028 	lwc1	$f18,40(s0)
     a10:	c7a80054 	lwc1	$f8,84(sp)
     a14:	c60a0024 	lwc1	$f10,36(s0)
     a18:	46049180 	add.s	$f6,$f18,$f4
     a1c:	8fa50064 	lw	a1,100(sp)
     a20:	24190003 	li	t9,3
     a24:	460a4400 	add.s	$f16,$f8,$f10
     a28:	e7a60010 	swc1	$f6,16(sp)
     a2c:	c608002c 	lwc1	$f8,44(s0)
     a30:	afb90024 	sw	t9,36(sp)
     a34:	44078000 	mfc1	a3,$f16
     a38:	46080280 	add.s	$f10,$f0,$f8
     a3c:	afa00020 	sw	zero,32(sp)
     a40:	afa0001c 	sw	zero,28(sp)
     a44:	afa00018 	sw	zero,24(sp)
     a48:	e7aa0014 	swc1	$f10,20(sp)
     a4c:	240600b5 	li	a2,181
     a50:	0c000000 	jal	0 <EnFireRock_Init>
     a54:	24a41c24 	addiu	a0,a1,7204
     a58:	10400004 	beqz	v0,a6c <func_80A125B8+0xd4>
     a5c:	3c040000 	lui	a0,0x0
     a60:	2408000a 	li	t0,10
     a64:	10000003 	b	a74 <func_80A125B8+0xdc>
     a68:	a4480188 	sh	t0,392(v0)
     a6c:	0c000000 	jal	0 <EnFireRock_Init>
     a70:	24840000 	addiu	a0,a0,0
     a74:	24090001 	li	t1,1
     a78:	10000002 	b	a84 <func_80A125B8+0xec>
     a7c:	a209018e 	sb	t1,398(s0)
     a80:	a200018e 	sb	zero,398(s0)
     a84:	3c0a0000 	lui	t2,0x0
     a88:	8d4a0000 	lw	t2,0(t2)
     a8c:	3c013f80 	lui	at,0x3f80
     a90:	240e00ff 	li	t6,255
     a94:	854b12d4 	lh	t3,4820(t2)
     a98:	240f00ff 	li	t7,255
     a9c:	24180004 	li	t8,4
     aa0:	51600017 	beqzl	t3,b00 <func_80A125B8+0x168>
     aa4:	8fbf004c 	lw	ra,76(sp)
     aa8:	860c0032 	lh	t4,50(s0)
     aac:	c60c0024 	lwc1	$f12,36(s0)
     ab0:	c60e0028 	lwc1	$f14,40(s0)
     ab4:	8e06002c 	lw	a2,44(s0)
     ab8:	86070030 	lh	a3,48(s0)
     abc:	afac0010 	sw	t4,16(sp)
     ac0:	860d0034 	lh	t5,52(s0)
     ac4:	44810000 	mtc1	at,$f0
     ac8:	8fb90064 	lw	t9,100(sp)
     acc:	afb80034 	sw	t8,52(sp)
     ad0:	afaf0030 	sw	t7,48(sp)
     ad4:	afa0002c 	sw	zero,44(sp)
     ad8:	afae0028 	sw	t6,40(sp)
     adc:	afa00024 	sw	zero,36(sp)
     ae0:	afad0014 	sw	t5,20(sp)
     ae4:	e7a00018 	swc1	$f0,24(sp)
     ae8:	e7a0001c 	swc1	$f0,28(sp)
     aec:	e7a00020 	swc1	$f0,32(sp)
     af0:	8f280000 	lw	t0,0(t9)
     af4:	0c000000 	jal	0 <EnFireRock_Init>
     af8:	afa80038 	sw	t0,56(sp)
     afc:	8fbf004c 	lw	ra,76(sp)
     b00:	8fb00048 	lw	s0,72(sp)
     b04:	27bd0060 	addiu	sp,sp,96
     b08:	03e00008 	jr	ra
     b0c:	00000000 	nop

00000b10 <func_80A12730>:
     b10:	27bdffc0 	addiu	sp,sp,-64
     b14:	afbf002c 	sw	ra,44(sp)
     b18:	afb00028 	sw	s0,40(sp)
     b1c:	afa50044 	sw	a1,68(sp)
     b20:	848e018a 	lh	t6,394(a0)
     b24:	00808025 	move	s0,a0
     b28:	3c0141a0 	lui	at,0x41a0
     b2c:	55c0002d 	bnezl	t6,be4 <func_80A12730+0xd4>
     b30:	8fbf002c 	lw	ra,44(sp)
     b34:	44816000 	mtc1	at,$f12
     b38:	0c000000 	jal	0 <EnFireRock_Init>
     b3c:	00000000 	nop
     b40:	c6040024 	lwc1	$f4,36(s0)
     b44:	3c0141a0 	lui	at,0x41a0
     b48:	44816000 	mtc1	at,$f12
     b4c:	46040180 	add.s	$f6,$f0,$f4
     b50:	0c000000 	jal	0 <EnFireRock_Init>
     b54:	e7a60034 	swc1	$f6,52(sp)
     b58:	c6080028 	lwc1	$f8,40(s0)
     b5c:	3c0141a0 	lui	at,0x41a0
     b60:	44816000 	mtc1	at,$f12
     b64:	46080280 	add.s	$f10,$f0,$f8
     b68:	0c000000 	jal	0 <EnFireRock_Init>
     b6c:	e7aa0038 	swc1	$f10,56(sp)
     b70:	c610002c 	lwc1	$f16,44(s0)
     b74:	3c014270 	lui	at,0x4270
     b78:	44816000 	mtc1	at,$f12
     b7c:	46100480 	add.s	$f18,$f0,$f16
     b80:	0c000000 	jal	0 <EnFireRock_Init>
     b84:	e7b2003c 	swc1	$f18,60(sp)
     b88:	4600010d 	trunc.w.s	$f4,$f0
     b8c:	3c014040 	lui	at,0x4040
     b90:	44816000 	mtc1	at,$f12
     b94:	44082000 	mfc1	t0,$f4
     b98:	00000000 	nop
     b9c:	25090082 	addiu	t1,t0,130
     ba0:	0c000000 	jal	0 <EnFireRock_Init>
     ba4:	a7a90032 	sh	t1,50(sp)
     ba8:	4600018d 	trunc.w.s	$f6,$f0
     bac:	240fffff 	li	t7,-1
     bb0:	02002825 	move	a1,s0
     bb4:	27a60034 	addiu	a2,sp,52
     bb8:	440d3000 	mfc1	t5,$f6
     bbc:	00000000 	nop
     bc0:	25ae0003 	addiu	t6,t5,3
     bc4:	a60e018a 	sh	t6,394(s0)
     bc8:	afaf0018 	sw	t7,24(sp)
     bcc:	afa00014 	sw	zero,20(sp)
     bd0:	afa00010 	sw	zero,16(sp)
     bd4:	87a70032 	lh	a3,50(sp)
     bd8:	0c000000 	jal	0 <EnFireRock_Init>
     bdc:	8fa40044 	lw	a0,68(sp)
     be0:	8fbf002c 	lw	ra,44(sp)
     be4:	8fb00028 	lw	s0,40(sp)
     be8:	27bd0040 	addiu	sp,sp,64
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <EnFireRock_Update>:
     bf4:	27bdffb8 	addiu	sp,sp,-72
     bf8:	afbf0024 	sw	ra,36(sp)
     bfc:	afb00020 	sw	s0,32(sp)
     c00:	8ca21c44 	lw	v0,7236(a1)
     c04:	00808025 	move	s0,a0
     c08:	afa2003c 	sw	v0,60(sp)
     c0c:	afa20038 	sw	v0,56(sp)
     c10:	8483018a 	lh	v1,394(a0)
     c14:	10600002 	beqz	v1,c20 <EnFireRock_Update+0x2c>
     c18:	246effff 	addiu	t6,v1,-1
     c1c:	a48e018a 	sh	t6,394(a0)
     c20:	86020188 	lh	v0,392(s0)
     c24:	10400002 	beqz	v0,c30 <EnFireRock_Update+0x3c>
     c28:	244fffff 	addiu	t7,v0,-1
     c2c:	a60f0188 	sh	t7,392(s0)
     c30:	afa5004c 	sw	a1,76(sp)
     c34:	8e190168 	lw	t9,360(s0)
     c38:	02002025 	move	a0,s0
     c3c:	0320f809 	jalr	t9
     c40:	00000000 	nop
     c44:	8618018c 	lh	t8,396(s0)
     c48:	24010005 	li	at,5
     c4c:	53010094 	beql	t8,at,ea0 <EnFireRock_Update+0x2ac>
     c50:	8fbf0024 	lw	ra,36(sp)
     c54:	c60a015c 	lwc1	$f10,348(s0)
     c58:	c6100150 	lwc1	$f16,336(s0)
     c5c:	c6040158 	lwc1	$f4,344(s0)
     c60:	c606014c 	lwc1	$f6,332(s0)
     c64:	46105480 	add.s	$f18,$f10,$f16
     c68:	3c014120 	lui	at,0x4120
     c6c:	44811000 	mtc1	at,$f2
     c70:	46062200 	add.s	$f8,$f4,$f6
     c74:	3c014040 	lui	at,0x4040
     c78:	44815000 	mtc1	at,$f10
     c7c:	c6060154 	lwc1	$f6,340(s0)
     c80:	c6040160 	lwc1	$f4,352(s0)
     c84:	e612015c 	swc1	$f18,348(s0)
     c88:	3c014396 	lui	at,0x4396
     c8c:	44819000 	mtc1	at,$f18
     c90:	c610016c 	lwc1	$f16,364(s0)
     c94:	e6080158 	swc1	$f8,344(s0)
     c98:	46062200 	add.s	$f8,$f4,$f6
     c9c:	46128102 	mul.s	$f4,$f16,$f18
     ca0:	3c0141a0 	lui	at,0x41a0
     ca4:	e60a0174 	swc1	$f10,372(s0)
     ca8:	e6080160 	swc1	$f8,352(s0)
     cac:	46022000 	add.s	$f0,$f4,$f2
     cb0:	4602003c 	c.lt.s	$f0,$f2
     cb4:	e60000c4 	swc1	$f0,196(s0)
     cb8:	44810000 	mtc1	at,$f0
     cbc:	24010003 	li	at,3
     cc0:	45020003 	bc1fl	cd0 <EnFireRock_Update+0xdc>
     cc4:	c60600c4 	lwc1	$f6,196(s0)
     cc8:	e60200c4 	swc1	$f2,196(s0)
     ccc:	c60600c4 	lwc1	$f6,196(s0)
     cd0:	4606003c 	c.lt.s	$f0,$f6
     cd4:	00000000 	nop
     cd8:	45020003 	bc1fl	ce8 <EnFireRock_Update+0xf4>
     cdc:	8603018c 	lh	v1,396(s0)
     ce0:	e60000c4 	swc1	$f0,196(s0)
     ce4:	8603018c 	lh	v1,396(s0)
     ce8:	50600003 	beqzl	v1,cf8 <EnFireRock_Update+0x104>
     cec:	3c0140e0 	lui	at,0x40e0
     cf0:	14610009 	bne	v1,at,d18 <EnFireRock_Update+0x124>
     cf4:	3c0140e0 	lui	at,0x40e0
     cf8:	44815000 	mtc1	at,$f10
     cfc:	c608016c 	lwc1	$f8,364(s0)
     d00:	3c010000 	lui	at,0x0
     d04:	c4320000 	lwc1	$f18,0(at)
     d08:	460a4402 	mul.s	$f16,$f8,$f10
     d0c:	8603018c 	lh	v1,396(s0)
     d10:	46109101 	sub.s	$f4,$f18,$f16
     d14:	e604006c 	swc1	$f4,108(s0)
     d18:	24010006 	li	at,6
     d1c:	50610011 	beql	v1,at,d64 <EnFireRock_Update+0x170>
     d20:	8e090168 	lw	t1,360(s0)
     d24:	0c000000 	jal	0 <EnFireRock_Init>
     d28:	02002025 	move	a0,s0
     d2c:	3c014248 	lui	at,0x4248
     d30:	44810000 	mtc1	at,$f0
     d34:	3c0142c8 	lui	at,0x42c8
     d38:	44813000 	mtc1	at,$f6
     d3c:	2408001c 	li	t0,28
     d40:	44060000 	mfc1	a2,$f0
     d44:	44070000 	mfc1	a3,$f0
     d48:	afa80014 	sw	t0,20(sp)
     d4c:	8fa4004c 	lw	a0,76(sp)
     d50:	02002825 	move	a1,s0
     d54:	0c000000 	jal	0 <EnFireRock_Init>
     d58:	e7a60010 	swc1	$f6,16(sp)
     d5c:	8603018c 	lh	v1,396(s0)
     d60:	8e090168 	lw	t1,360(s0)
     d64:	3c060000 	lui	a2,0x0
     d68:	24c60000 	addiu	a2,a2,0
     d6c:	10c9001b 	beq	a2,t1,ddc <EnFireRock_Update+0x1e8>
     d70:	00001025 	move	v0,zero
     d74:	10600005 	beqz	v1,d8c <EnFireRock_Update+0x198>
     d78:	24010003 	li	at,3
     d7c:	10610003 	beq	v1,at,d8c <EnFireRock_Update+0x198>
     d80:	24010001 	li	at,1
     d84:	54610016 	bnel	v1,at,de0 <EnFireRock_Update+0x1ec>
     d88:	24010006 	li	at,6
     d8c:	920201a4 	lbu	v0,420(s0)
     d90:	02002025 	move	a0,s0
     d94:	2405280e 	li	a1,10254
     d98:	304a0004 	andi	t2,v0,0x4
     d9c:	1140000e 	beqz	t2,dd8 <EnFireRock_Update+0x1e4>
     da0:	304bfffb 	andi	t3,v0,0xfffb
     da4:	a20b01a4 	sb	t3,420(s0)
     da8:	0c000000 	jal	0 <EnFireRock_Init>
     dac:	afa60030 	sw	a2,48(sp)
     db0:	44800000 	mtc1	zero,$f0
     db4:	8fa60030 	lw	a2,48(sp)
     db8:	3c040000 	lui	a0,0x0
     dbc:	24840000 	addiu	a0,a0,0
     dc0:	e6000060 	swc1	$f0,96(s0)
     dc4:	e6000068 	swc1	$f0,104(s0)
     dc8:	0c000000 	jal	0 <EnFireRock_Init>
     dcc:	ae060168 	sw	a2,360(s0)
     dd0:	10000033 	b	ea0 <EnFireRock_Update+0x2ac>
     dd4:	8fbf0024 	lw	ra,36(sp)
     dd8:	24020001 	li	v0,1
     ddc:	24010006 	li	at,6
     de0:	1461001e 	bne	v1,at,e5c <EnFireRock_Update+0x268>
     de4:	00000000 	nop
     de8:	920201a4 	lbu	v0,420(s0)
     dec:	304c0002 	andi	t4,v0,0x2
     df0:	11800019 	beqz	t4,e58 <EnFireRock_Update+0x264>
     df4:	304dfffd 	andi	t5,v0,0xfffd
     df8:	a20d01a4 	sb	t5,420(s0)
     dfc:	8fae0038 	lw	t6,56(sp)
     e00:	8e0f0198 	lw	t7,408(s0)
     e04:	8fa2003c 	lw	v0,60(sp)
     e08:	55cf0014 	bnel	t6,t7,e5c <EnFireRock_Update+0x268>
     e0c:	24020001 	li	v0,1
     e10:	8c59067c 	lw	t9,1660(v0)
     e14:	8fa4004c 	lw	a0,76(sp)
     e18:	02002825 	move	a1,s0
     e1c:	0019c140 	sll	t8,t9,0x5
     e20:	0700001e 	bltz	t8,e9c <EnFireRock_Update+0x2a8>
     e24:	3c064000 	lui	a2,0x4000
     e28:	84470032 	lh	a3,50(v0)
     e2c:	3c014040 	lui	at,0x4040
     e30:	44814000 	mtc1	at,$f8
     e34:	00073823 	negu	a3,a3
     e38:	00073c00 	sll	a3,a3,0x10
     e3c:	24080004 	li	t0,4
     e40:	afa80014 	sw	t0,20(sp)
     e44:	00073c03 	sra	a3,a3,0x10
     e48:	0c000000 	jal	0 <EnFireRock_Init>
     e4c:	e7a80010 	swc1	$f8,16(sp)
     e50:	10000013 	b	ea0 <EnFireRock_Update+0x2ac>
     e54:	8fbf0024 	lw	ra,36(sp)
     e58:	24020001 	li	v0,1
     e5c:	1040000f 	beqz	v0,e9c <EnFireRock_Update+0x2a8>
     e60:	02002025 	move	a0,s0
     e64:	26050194 	addiu	a1,s0,404
     e68:	0c000000 	jal	0 <EnFireRock_Init>
     e6c:	afa5002c 	sw	a1,44(sp)
     e70:	8fa4004c 	lw	a0,76(sp)
     e74:	3c010001 	lui	at,0x1
     e78:	34211e60 	ori	at,at,0x1e60
     e7c:	00812821 	addu	a1,a0,at
     e80:	afa50030 	sw	a1,48(sp)
     e84:	0c000000 	jal	0 <EnFireRock_Init>
     e88:	8fa6002c 	lw	a2,44(sp)
     e8c:	8fa50030 	lw	a1,48(sp)
     e90:	8fa4004c 	lw	a0,76(sp)
     e94:	0c000000 	jal	0 <EnFireRock_Init>
     e98:	8fa6002c 	lw	a2,44(sp)
     e9c:	8fbf0024 	lw	ra,36(sp)
     ea0:	8fb00020 	lw	s0,32(sp)
     ea4:	27bd0048 	addiu	sp,sp,72
     ea8:	03e00008 	jr	ra
     eac:	00000000 	nop

00000eb0 <EnFireRock_Draw>:
     eb0:	27bdffb0 	addiu	sp,sp,-80
     eb4:	afbf001c 	sw	ra,28(sp)
     eb8:	afb10018 	sw	s1,24(sp)
     ebc:	afb00014 	sw	s0,20(sp)
     ec0:	afa50054 	sw	a1,84(sp)
     ec4:	8ca50000 	lw	a1,0(a1)
     ec8:	00808025 	move	s0,a0
     ecc:	3c060000 	lui	a2,0x0
     ed0:	24c60000 	addiu	a2,a2,0
     ed4:	27a40034 	addiu	a0,sp,52
     ed8:	240702eb 	li	a3,747
     edc:	0c000000 	jal	0 <EnFireRock_Init>
     ee0:	00a08825 	move	s1,a1
     ee4:	c6040024 	lwc1	$f4,36(s0)
     ee8:	c6060170 	lwc1	$f6,368(s0)
     eec:	c610002c 	lwc1	$f16,44(s0)
     ef0:	c6120178 	lwc1	$f18,376(s0)
     ef4:	46062300 	add.s	$f12,$f4,$f6
     ef8:	c6080028 	lwc1	$f8,40(s0)
     efc:	c60a0174 	lwc1	$f10,372(s0)
     f00:	46128100 	add.s	$f4,$f16,$f18
     f04:	00003825 	move	a3,zero
     f08:	460a4380 	add.s	$f14,$f8,$f10
     f0c:	44062000 	mfc1	a2,$f4
     f10:	0c000000 	jal	0 <EnFireRock_Init>
     f14:	00000000 	nop
     f18:	3c010000 	lui	at,0x0
     f1c:	c4280000 	lwc1	$f8,0(at)
     f20:	c6060158 	lwc1	$f6,344(s0)
     f24:	24050001 	li	a1,1
     f28:	46083302 	mul.s	$f12,$f6,$f8
     f2c:	0c000000 	jal	0 <EnFireRock_Init>
     f30:	00000000 	nop
     f34:	3c010000 	lui	at,0x0
     f38:	c4300000 	lwc1	$f16,0(at)
     f3c:	c60a015c 	lwc1	$f10,348(s0)
     f40:	24050001 	li	a1,1
     f44:	46105302 	mul.s	$f12,$f10,$f16
     f48:	0c000000 	jal	0 <EnFireRock_Init>
     f4c:	00000000 	nop
     f50:	3c010000 	lui	at,0x0
     f54:	c4240000 	lwc1	$f4,0(at)
     f58:	c6120160 	lwc1	$f18,352(s0)
     f5c:	24050001 	li	a1,1
     f60:	46049302 	mul.s	$f12,$f18,$f4
     f64:	0c000000 	jal	0 <EnFireRock_Init>
     f68:	00000000 	nop
     f6c:	c60c0050 	lwc1	$f12,80(s0)
     f70:	c60e0054 	lwc1	$f14,84(s0)
     f74:	8e060058 	lw	a2,88(s0)
     f78:	0c000000 	jal	0 <EnFireRock_Init>
     f7c:	24070001 	li	a3,1
     f80:	8faf0054 	lw	t7,84(sp)
     f84:	0c000000 	jal	0 <EnFireRock_Init>
     f88:	8de40000 	lw	a0,0(t7)
     f8c:	8e2202c0 	lw	v0,704(s1)
     f90:	3c08ff9b 	lui	t0,0xff9b
     f94:	350837ff 	ori	t0,t0,0x37ff
     f98:	24580008 	addiu	t8,v0,8
     f9c:	ae3802c0 	sw	t8,704(s1)
     fa0:	3c19fa00 	lui	t9,0xfa00
     fa4:	ac590000 	sw	t9,0(v0)
     fa8:	ac480004 	sw	t0,4(v0)
     fac:	8e2202c0 	lw	v0,704(s1)
     fb0:	3c0b9bff 	lui	t3,0x9bff
     fb4:	356b37ff 	ori	t3,t3,0x37ff
     fb8:	24490008 	addiu	t1,v0,8
     fbc:	ae2902c0 	sw	t1,704(s1)
     fc0:	3c0afb00 	lui	t2,0xfb00
     fc4:	ac4a0000 	sw	t2,0(v0)
     fc8:	ac4b0004 	sw	t3,4(v0)
     fcc:	8e2202c0 	lw	v0,704(s1)
     fd0:	3c0dda38 	lui	t5,0xda38
     fd4:	35ad0003 	ori	t5,t5,0x3
     fd8:	244c0008 	addiu	t4,v0,8
     fdc:	ae2c02c0 	sw	t4,704(s1)
     fe0:	ac4d0000 	sw	t5,0(v0)
     fe4:	8fae0054 	lw	t6,84(sp)
     fe8:	3c050000 	lui	a1,0x0
     fec:	24a50000 	addiu	a1,a1,0
     ff0:	24060300 	li	a2,768
     ff4:	00408025 	move	s0,v0
     ff8:	0c000000 	jal	0 <EnFireRock_Init>
     ffc:	8dc40000 	lw	a0,0(t6)
    1000:	ae020004 	sw	v0,4(s0)
    1004:	8e2202c0 	lw	v0,704(s1)
    1008:	3c190600 	lui	t9,0x600
    100c:	27390de0 	addiu	t9,t9,3552
    1010:	244f0008 	addiu	t7,v0,8
    1014:	ae2f02c0 	sw	t7,704(s1)
    1018:	3c18de00 	lui	t8,0xde00
    101c:	ac580000 	sw	t8,0(v0)
    1020:	ac590004 	sw	t9,4(v0)
    1024:	8fa80054 	lw	t0,84(sp)
    1028:	3c060000 	lui	a2,0x0
    102c:	24c60000 	addiu	a2,a2,0
    1030:	27a40034 	addiu	a0,sp,52
    1034:	24070305 	li	a3,773
    1038:	0c000000 	jal	0 <EnFireRock_Init>
    103c:	8d050000 	lw	a1,0(t0)
    1040:	8fbf001c 	lw	ra,28(sp)
    1044:	8fb00014 	lw	s0,20(sp)
    1048:	8fb10018 	lw	s1,24(sp)
    104c:	03e00008 	jr	ra
    1050:	27bd0050 	addiu	sp,sp,80
	...
