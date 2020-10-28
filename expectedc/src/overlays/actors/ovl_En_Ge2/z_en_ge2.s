
build/src/overlays/actors/ovl_En_Ge2/z_en_ge2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A32BD0>:
       0:	00051080 	sll	v0,a1,0x2
       4:	3c0e0000 	lui	t6,0x0
       8:	27bdffd0 	addiu	sp,sp,-48
       c:	01c27021 	addu	t6,t6,v0
      10:	8dce0000 	lw	t6,0(t6)
      14:	3c180000 	lui	t8,0x0
      18:	afbf0024 	sw	ra,36(sp)
      1c:	afa40030 	sw	a0,48(sp)
      20:	afa50034 	sw	a1,52(sp)
      24:	27180000 	addiu	t8,t8,0
      28:	00581821 	addu	v1,v0,t8
      2c:	ac8e0308 	sw	t6,776(a0)
      30:	afa30028 	sw	v1,40(sp)
      34:	0c000000 	jal	0 <func_80A32BD0>
      38:	8c640000 	lw	a0,0(v1)
      3c:	44822000 	mtc1	v0,$f4
      40:	8fb90034 	lw	t9,52(sp)
      44:	3c080000 	lui	t0,0x0
      48:	468021a0 	cvt.s.w	$f6,$f4
      4c:	3c01c100 	lui	at,0xc100
      50:	01194021 	addu	t0,t0,t9
      54:	91080000 	lbu	t0,0(t0)
      58:	44814000 	mtc1	at,$f8
      5c:	8fa30028 	lw	v1,40(sp)
      60:	8fa40030 	lw	a0,48(sp)
      64:	e7a60010 	swc1	$f6,16(sp)
      68:	3c063f80 	lui	a2,0x3f80
      6c:	24070000 	li	a3,0
      70:	afa80014 	sw	t0,20(sp)
      74:	8c650000 	lw	a1,0(v1)
      78:	e7a80018 	swc1	$f8,24(sp)
      7c:	0c000000 	jal	0 <func_80A32BD0>
      80:	24840198 	addiu	a0,a0,408
      84:	8fa20030 	lw	v0,48(sp)
      88:	944902f4 	lhu	t1,756(v0)
      8c:	312afffd 	andi	t2,t1,0xfffd
      90:	a44a02f4 	sh	t2,756(v0)
      94:	8fbf0024 	lw	ra,36(sp)
      98:	27bd0030 	addiu	sp,sp,48
      9c:	03e00008 	jr	ra
      a0:	00000000 	nop

000000a4 <EnGe2_Init>:
      a4:	27bdffc0 	addiu	sp,sp,-64
      a8:	afb00028 	sw	s0,40(sp)
      ac:	00808025 	move	s0,a0
      b0:	afbf002c 	sw	ra,44(sp)
      b4:	afa50044 	sw	a1,68(sp)
      b8:	3c060000 	lui	a2,0x0
      bc:	24c60000 	addiu	a2,a2,0
      c0:	24050000 	li	a1,0
      c4:	248400b4 	addiu	a0,a0,180
      c8:	0c000000 	jal	0 <func_80A32BD0>
      cc:	3c074210 	lui	a3,0x4210
      d0:	26050198 	addiu	a1,s0,408
      d4:	3c060601 	lui	a2,0x601
      d8:	260e01dc 	addiu	t6,s0,476
      dc:	260f0260 	addiu	t7,s0,608
      e0:	24180016 	li	t8,22
      e4:	afb80018 	sw	t8,24(sp)
      e8:	afaf0014 	sw	t7,20(sp)
      ec:	afae0010 	sw	t6,16(sp)
      f0:	24c68968 	addiu	a2,a2,-30360
      f4:	afa50030 	sw	a1,48(sp)
      f8:	8fa40044 	lw	a0,68(sp)
      fc:	0c000000 	jal	0 <func_80A32BD0>
     100:	00003825 	move	a3,zero
     104:	3c050601 	lui	a1,0x601
     108:	24a59ed4 	addiu	a1,a1,-24876
     10c:	0c000000 	jal	0 <func_80A32BD0>
     110:	8fa40030 	lw	a0,48(sp)
     114:	2605014c 	addiu	a1,s0,332
     118:	afa50030 	sw	a1,48(sp)
     11c:	0c000000 	jal	0 <func_80A32BD0>
     120:	8fa40044 	lw	a0,68(sp)
     124:	3c070000 	lui	a3,0x0
     128:	8fa50030 	lw	a1,48(sp)
     12c:	24e70000 	addiu	a3,a3,0
     130:	8fa40044 	lw	a0,68(sp)
     134:	0c000000 	jal	0 <func_80A32BD0>
     138:	02003025 	move	a2,s0
     13c:	241900ff 	li	t9,255
     140:	3c053c23 	lui	a1,0x3c23
     144:	a21900ae 	sb	t9,174(s0)
     148:	34a5d70a 	ori	a1,a1,0xd70a
     14c:	0c000000 	jal	0 <func_80A32BD0>
     150:	02002025 	move	a0,s0
     154:	8fa80044 	lw	t0,68(sp)
     158:	2401005a 	li	at,90
     15c:	02002025 	move	a0,s0
     160:	850900a4 	lh	t1,164(t0)
     164:	15210004 	bne	t1,at,178 <EnGe2_Init+0xd4>
     168:	3c01447a 	lui	at,0x447a
     16c:	44812000 	mtc1	at,$f4
     170:	10000005 	b	188 <EnGe2_Init+0xe4>
     174:	e60400f4 	swc1	$f4,244(s0)
     178:	3c014496 	lui	at,0x4496
     17c:	44813000 	mtc1	at,$f6
     180:	00000000 	nop
     184:	e60600f4 	swc1	$f6,244(s0)
     188:	860a0034 	lh	t2,52(s0)
     18c:	3c014220 	lui	at,0x4220
     190:	44818000 	mtc1	at,$f16
     194:	254b0001 	addiu	t3,t2,1
     198:	448b4000 	mtc1	t3,$f8
     19c:	8602001c 	lh	v0,28(s0)
     1a0:	a6000034 	sh	zero,52(s0)
     1a4:	468042a0 	cvt.s.w	$f10,$f8
     1a8:	304200ff 	andi	v0,v0,0xff
     1ac:	a60000b8 	sh	zero,184(s0)
     1b0:	24010001 	li	at,1
     1b4:	46105482 	mul.s	$f18,$f10,$f16
     1b8:	10400008 	beqz	v0,1dc <EnGe2_Init+0x138>
     1bc:	e61202fc 	swc1	$f18,764(s0)
     1c0:	10410011 	beq	v0,at,208 <EnGe2_Init+0x164>
     1c4:	02002025 	move	a0,s0
     1c8:	24010002 	li	at,2
     1cc:	10410019 	beq	v0,at,234 <EnGe2_Init+0x190>
     1d0:	02002025 	move	a0,s0
     1d4:	10000022 	b	260 <EnGe2_Init+0x1bc>
     1d8:	3c040000 	lui	a0,0x0
     1dc:	0c000000 	jal	0 <func_80A32BD0>
     1e0:	00002825 	move	a1,zero
     1e4:	0c000000 	jal	0 <func_80A32BD0>
     1e8:	00000000 	nop
     1ec:	10400021 	beqz	v0,274 <EnGe2_Init+0x1d0>
     1f0:	3c0c0000 	lui	t4,0x0
     1f4:	258c0000 	addiu	t4,t4,0
     1f8:	240d0006 	li	t5,6
     1fc:	ae0c0130 	sw	t4,304(s0)
     200:	1000001c 	b	274 <EnGe2_Init+0x1d0>
     204:	a20d001f 	sb	t5,31(s0)
     208:	0c000000 	jal	0 <func_80A32BD0>
     20c:	24050007 	li	a1,7
     210:	0c000000 	jal	0 <func_80A32BD0>
     214:	00000000 	nop
     218:	10400016 	beqz	v0,274 <EnGe2_Init+0x1d0>
     21c:	3c0e0000 	lui	t6,0x0
     220:	25ce0000 	addiu	t6,t6,0
     224:	240f0006 	li	t7,6
     228:	ae0e0130 	sw	t6,304(s0)
     22c:	10000011 	b	274 <EnGe2_Init+0x1d0>
     230:	a20f001f 	sb	t7,31(s0)
     234:	0c000000 	jal	0 <func_80A32BD0>
     238:	24050008 	li	a1,8
     23c:	3c180000 	lui	t8,0x0
     240:	3c190000 	lui	t9,0x0
     244:	27180000 	addiu	t8,t8,0
     248:	27390000 	addiu	t9,t9,0
     24c:	24080006 	li	t0,6
     250:	ae180130 	sw	t8,304(s0)
     254:	ae190308 	sw	t9,776(s0)
     258:	10000006 	b	274 <EnGe2_Init+0x1d0>
     25c:	a208001f 	sb	t0,31(s0)
     260:	3c050000 	lui	a1,0x0
     264:	24a50000 	addiu	a1,a1,0
     268:	24840000 	addiu	a0,a0,0
     26c:	0c000000 	jal	0 <func_80A32BD0>
     270:	240601a2 	li	a2,418
     274:	860a001c 	lh	t2,28(s0)
     278:	3c01c080 	lui	at,0xc080
     27c:	44812000 	mtc1	at,$f4
     280:	314bff00 	andi	t3,t2,0xff00
     284:	3c01bf80 	lui	at,0xbf80
     288:	000b6203 	sra	t4,t3,0x8
     28c:	44813000 	mtc1	at,$f6
     290:	86090032 	lh	t1,50(s0)
     294:	000c6880 	sll	t5,t4,0x2
     298:	01ac6821 	addu	t5,t5,t4
     29c:	000d6840 	sll	t5,t5,0x1
     2a0:	a60002f4 	sh	zero,756(s0)
     2a4:	a2000304 	sb	zero,772(s0)
     2a8:	a6000302 	sh	zero,770(s0)
     2ac:	a2000306 	sb	zero,774(s0)
     2b0:	a60d0300 	sh	t5,768(s0)
     2b4:	e6040070 	swc1	$f4,112(s0)
     2b8:	e606006c 	swc1	$f6,108(s0)
     2bc:	a60902f6 	sh	t1,758(s0)
     2c0:	8fbf002c 	lw	ra,44(sp)
     2c4:	8fb00028 	lw	s0,40(sp)
     2c8:	27bd0040 	addiu	sp,sp,64
     2cc:	03e00008 	jr	ra
     2d0:	00000000 	nop

000002d4 <EnGe2_Destroy>:
     2d4:	27bdffe8 	addiu	sp,sp,-24
     2d8:	00803025 	move	a2,a0
     2dc:	afbf0014 	sw	ra,20(sp)
     2e0:	00a02025 	move	a0,a1
     2e4:	0c000000 	jal	0 <func_80A32BD0>
     2e8:	24c5014c 	addiu	a1,a2,332
     2ec:	8fbf0014 	lw	ra,20(sp)
     2f0:	27bd0018 	addiu	sp,sp,24
     2f4:	03e00008 	jr	ra
     2f8:	00000000 	nop

000002fc <func_80A32ECC>:
     2fc:	3c0e0000 	lui	t6,0x0
     300:	8dce0010 	lw	t6,16(t6)
     304:	27bdffe8 	addiu	sp,sp,-24
     308:	afbf0014 	sw	ra,20(sp)
     30c:	11c00005 	beqz	t6,324 <func_80A32ECC+0x28>
     310:	3c013fc0 	lui	at,0x3fc0
     314:	3c013f40 	lui	at,0x3f40
     318:	44810000 	mtc1	at,$f0
     31c:	10000004 	b	330 <func_80A32ECC+0x34>
     320:	3c01437a 	lui	at,0x437a
     324:	44810000 	mtc1	at,$f0
     328:	00000000 	nop
     32c:	3c01437a 	lui	at,0x437a
     330:	44812000 	mtc1	at,$f4
     334:	c4a20090 	lwc1	$f2,144(a1)
     338:	3c014248 	lui	at,0x4248
     33c:	46002182 	mul.s	$f6,$f4,$f0
     340:	4602303c 	c.lt.s	$f6,$f2
     344:	00000000 	nop
     348:	45020004 	bc1fl	35c <func_80A32ECC+0x60>
     34c:	44814000 	mtc1	at,$f8
     350:	10000010 	b	394 <func_80A32ECC+0x98>
     354:	00001025 	move	v0,zero
     358:	44814000 	mtc1	at,$f8
     35c:	00000000 	nop
     360:	4608103c 	c.lt.s	$f2,$f8
     364:	00000000 	nop
     368:	45000003 	bc1f	378 <func_80A32ECC+0x7c>
     36c:	00000000 	nop
     370:	10000008 	b	394 <func_80A32ECC+0x98>
     374:	24020002 	li	v0,2
     378:	0c000000 	jal	0 <func_80A32BD0>
     37c:	00000000 	nop
     380:	50400004 	beqzl	v0,394 <func_80A32ECC+0x98>
     384:	00001025 	move	v0,zero
     388:	10000002 	b	394 <func_80A32ECC+0x98>
     38c:	24020001 	li	v0,1
     390:	00001025 	move	v0,zero
     394:	8fbf0014 	lw	ra,20(sp)
     398:	27bd0018 	addiu	sp,sp,24
     39c:	03e00008 	jr	ra
     3a0:	00000000 	nop

000003a4 <func_80A32F74>:
     3a4:	27bdffb8 	addiu	sp,sp,-72
     3a8:	3c0f0000 	lui	t7,0x0
     3ac:	8def0010 	lw	t7,16(t7)
     3b0:	afa70054 	sw	a3,84(sp)
     3b4:	00073c00 	sll	a3,a3,0x10
     3b8:	afbf001c 	sw	ra,28(sp)
     3bc:	afa40048 	sw	a0,72(sp)
     3c0:	afa60050 	sw	a2,80(sp)
     3c4:	00073c03 	sra	a3,a3,0x10
     3c8:	11e00005 	beqz	t7,3e0 <func_80A32F74+0x3c>
     3cc:	8c881c44 	lw	t0,7236(a0)
     3d0:	3c013f40 	lui	at,0x3f40
     3d4:	44810000 	mtc1	at,$f0
     3d8:	10000005 	b	3f0 <func_80A32F74+0x4c>
     3dc:	3c01437a 	lui	at,0x437a
     3e0:	3c013fc0 	lui	at,0x3fc0
     3e4:	44810000 	mtc1	at,$f0
     3e8:	00000000 	nop
     3ec:	3c01437a 	lui	at,0x437a
     3f0:	44812000 	mtc1	at,$f4
     3f4:	c4a80090 	lwc1	$f8,144(a1)
     3f8:	c7b00058 	lwc1	$f16,88(sp)
     3fc:	46002182 	mul.s	$f6,$f4,$f0
     400:	4608303c 	c.lt.s	$f6,$f8
     404:	00000000 	nop
     408:	45020004 	bc1fl	41c <func_80A32F74+0x78>
     40c:	c4a00094 	lwc1	$f0,148(a1)
     410:	1000002b 	b	4c0 <func_80A32F74+0x11c>
     414:	00001025 	move	v0,zero
     418:	c4a00094 	lwc1	$f0,148(a1)
     41c:	44805000 	mtc1	zero,$f10
     420:	00000000 	nop
     424:	4600503e 	c.le.s	$f10,$f0
     428:	00000000 	nop
     42c:	45020004 	bc1fl	440 <func_80A32F74+0x9c>
     430:	46000087 	neg.s	$f2,$f0
     434:	10000002 	b	440 <func_80A32F74+0x9c>
     438:	46000086 	mov.s	$f2,$f0
     43c:	46000087 	neg.s	$f2,$f0
     440:	4602803c 	c.lt.s	$f16,$f2
     444:	00000000 	nop
     448:	45020004 	bc1fl	45c <func_80A32F74+0xb8>
     44c:	84b8008a 	lh	t8,138(a1)
     450:	1000001b 	b	4c0 <func_80A32F74+0x11c>
     454:	00001025 	move	v0,zero
     458:	84b8008a 	lh	t8,138(a1)
     45c:	8fa50050 	lw	a1,80(sp)
     460:	8fa40048 	lw	a0,72(sp)
     464:	03071023 	subu	v0,t8,a3
     468:	00021400 	sll	v0,v0,0x10
     46c:	00021403 	sra	v0,v0,0x10
     470:	04400003 	bltz	v0,480 <func_80A32F74+0xdc>
     474:	00021823 	negu	v1,v0
     478:	10000001 	b	480 <func_80A32F74+0xdc>
     47c:	00401825 	move	v1,v0
     480:	28612001 	slti	at,v1,8193
     484:	14200003 	bnez	at,494 <func_80A32F74+0xf0>
     488:	248407c0 	addiu	a0,a0,1984
     48c:	1000000c 	b	4c0 <func_80A32F74+0x11c>
     490:	00001025 	move	v0,zero
     494:	27b90034 	addiu	t9,sp,52
     498:	afb90010 	sw	t9,16(sp)
     49c:	2506095c 	addiu	a2,t0,2396
     4a0:	27a70038 	addiu	a3,sp,56
     4a4:	0c000000 	jal	0 <func_80A32BD0>
     4a8:	afa00014 	sw	zero,20(sp)
     4ac:	50400004 	beqzl	v0,4c0 <func_80A32F74+0x11c>
     4b0:	24020001 	li	v0,1
     4b4:	10000002 	b	4c0 <func_80A32F74+0x11c>
     4b8:	00001025 	move	v0,zero
     4bc:	24020001 	li	v0,1
     4c0:	8fbf001c 	lw	ra,28(sp)
     4c4:	27bd0048 	addiu	sp,sp,72
     4c8:	03e00008 	jr	ra
     4cc:	00000000 	nop

000004d0 <func_80A330A0>:
     4d0:	3c0e0000 	lui	t6,0x0
     4d4:	95cf0ee6 	lhu	t7,3814(t6)
     4d8:	2401000f 	li	at,15
     4dc:	00001025 	move	v0,zero
     4e0:	31f8000f 	andi	t8,t7,0xf
     4e4:	17010003 	bne	t8,at,4f4 <func_80A330A0+0x24>
     4e8:	00000000 	nop
     4ec:	03e00008 	jr	ra
     4f0:	24020001 	li	v0,1
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	nop

000004fc <func_80A330CC>:
     4fc:	27bdffe8 	addiu	sp,sp,-24
     500:	afbf0014 	sw	ra,20(sp)
     504:	90820305 	lbu	v0,773(a0)
     508:	18400003 	blez	v0,518 <func_80A330CC+0x1c>
     50c:	244effff 	addiu	t6,v0,-1
     510:	1000002b 	b	5c0 <func_80A330CC+0xc4>
     514:	a08e0305 	sb	t6,773(a0)
     518:	00a02025 	move	a0,a1
     51c:	0c000000 	jal	0 <func_80A32BD0>
     520:	afa5001c 	sw	a1,28(sp)
     524:	3c040000 	lui	a0,0x0
     528:	24840000 	addiu	a0,a0,0
     52c:	908f000a 	lbu	t7,10(a0)
     530:	3c020000 	lui	v0,0x0
     534:	24420000 	addiu	v0,v0,0
     538:	004fc021 	addu	t8,v0,t7
     53c:	93190074 	lbu	t9,116(t8)
     540:	240300ff 	li	v1,255
     544:	8fa5001c 	lw	a1,28(sp)
     548:	10790005 	beq	v1,t9,560 <func_80A330CC+0x64>
     54c:	24180026 	li	t8,38
     550:	9088000b 	lbu	t0,11(a0)
     554:	00484821 	addu	t1,v0,t0
     558:	912a0074 	lbu	t2,116(t1)
     55c:	146a0005 	bne	v1,t2,574 <func_80A330CC+0x78>
     560:	3c010001 	lui	at,0x1
     564:	00250821 	addu	at,at,a1
     568:	240b01a5 	li	t3,421
     56c:	1000000d 	b	5a4 <func_80A330CC+0xa8>
     570:	a42b1e1a 	sh	t3,7706(at)
     574:	944c0eec 	lhu	t4,3820(v0)
     578:	3c010001 	lui	at,0x1
     57c:	00250821 	addu	at,at,a1
     580:	318d0080 	andi	t5,t4,0x80
     584:	11a00006 	beqz	t5,5a0 <func_80A330CC+0xa4>
     588:	240f03b4 	li	t7,948
     58c:	3c010001 	lui	at,0x1
     590:	00250821 	addu	at,at,a1
     594:	240e05f8 	li	t6,1528
     598:	10000002 	b	5a4 <func_80A330CC+0xa8>
     59c:	a42e1e1a 	sh	t6,7706(at)
     5a0:	a42f1e1a 	sh	t7,7706(at)
     5a4:	3c010001 	lui	at,0x1
     5a8:	00250821 	addu	at,at,a1
     5ac:	a0381e5e 	sb	t8,7774(at)
     5b0:	3c010001 	lui	at,0x1
     5b4:	00250821 	addu	at,at,a1
     5b8:	24190014 	li	t9,20
     5bc:	a0391e15 	sb	t9,7701(at)
     5c0:	8fbf0014 	lw	ra,20(sp)
     5c4:	27bd0018 	addiu	sp,sp,24
     5c8:	03e00008 	jr	ra
     5cc:	00000000 	nop

000005d0 <func_80A331A0>:
     5d0:	27bdffd8 	addiu	sp,sp,-40
     5d4:	afb10020 	sw	s1,32(sp)
     5d8:	afb0001c 	sw	s0,28(sp)
     5dc:	00808025 	move	s0,a0
     5e0:	00a08825 	move	s1,a1
     5e4:	afbf0024 	sw	ra,36(sp)
     5e8:	8605008a 	lh	a1,138(s0)
     5ec:	240e0100 	li	t6,256
     5f0:	afae0010 	sw	t6,16(sp)
     5f4:	24840032 	addiu	a0,a0,50
     5f8:	24060002 	li	a2,2
     5fc:	0c000000 	jal	0 <func_80A32BD0>
     600:	24070400 	li	a3,1024
     604:	3c014248 	lui	at,0x4248
     608:	44813000 	mtc1	at,$f6
     60c:	c6040090 	lwc1	$f4,144(s0)
     610:	860f0032 	lh	t7,50(s0)
     614:	02002025 	move	a0,s0
     618:	4606203c 	c.lt.s	$f4,$f6
     61c:	a60f00b6 	sh	t7,182(s0)
     620:	45020007 	bc1fl	640 <func_80A331A0+0x70>
     624:	92020305 	lbu	v0,773(s0)
     628:	0c000000 	jal	0 <func_80A32BD0>
     62c:	24050006 	li	a1,6
     630:	44804000 	mtc1	zero,$f8
     634:	00000000 	nop
     638:	e6080068 	swc1	$f8,104(s0)
     63c:	92020305 	lbu	v0,773(s0)
     640:	18400003 	blez	v0,650 <func_80A331A0+0x80>
     644:	2458ffff 	addiu	t8,v0,-1
     648:	10000029 	b	6f0 <func_80A331A0+0x120>
     64c:	a2180305 	sb	t8,773(s0)
     650:	0c000000 	jal	0 <func_80A32BD0>
     654:	02202025 	move	a0,s1
     658:	3c040000 	lui	a0,0x0
     65c:	24840000 	addiu	a0,a0,0
     660:	9099000a 	lbu	t9,10(a0)
     664:	3c020000 	lui	v0,0x0
     668:	24420000 	addiu	v0,v0,0
     66c:	00594021 	addu	t0,v0,t9
     670:	91090074 	lbu	t1,116(t0)
     674:	240300ff 	li	v1,255
     678:	240d01a5 	li	t5,421
     67c:	10690005 	beq	v1,t1,694 <func_80A331A0+0xc4>
     680:	24080026 	li	t0,38
     684:	908a000b 	lbu	t2,11(a0)
     688:	004a5821 	addu	t3,v0,t2
     68c:	916c0074 	lbu	t4,116(t3)
     690:	146c0004 	bne	v1,t4,6a4 <func_80A331A0+0xd4>
     694:	3c010001 	lui	at,0x1
     698:	00310821 	addu	at,at,s1
     69c:	1000000d 	b	6d4 <func_80A331A0+0x104>
     6a0:	a42d1e1a 	sh	t5,7706(at)
     6a4:	944e0eec 	lhu	t6,3820(v0)
     6a8:	3c010001 	lui	at,0x1
     6ac:	00310821 	addu	at,at,s1
     6b0:	31cf0080 	andi	t7,t6,0x80
     6b4:	11e00006 	beqz	t7,6d0 <func_80A331A0+0x100>
     6b8:	241903b4 	li	t9,948
     6bc:	3c010001 	lui	at,0x1
     6c0:	00310821 	addu	at,at,s1
     6c4:	241805f8 	li	t8,1528
     6c8:	10000002 	b	6d4 <func_80A331A0+0x104>
     6cc:	a4381e1a 	sh	t8,7706(at)
     6d0:	a4391e1a 	sh	t9,7706(at)
     6d4:	3c010001 	lui	at,0x1
     6d8:	00310821 	addu	at,at,s1
     6dc:	a0281e5e 	sb	t0,7774(at)
     6e0:	3c010001 	lui	at,0x1
     6e4:	00310821 	addu	at,at,s1
     6e8:	24090014 	li	t1,20
     6ec:	a0291e15 	sb	t1,7701(at)
     6f0:	8fbf0024 	lw	ra,36(sp)
     6f4:	8fb0001c 	lw	s0,28(sp)
     6f8:	8fb10020 	lw	s1,32(sp)
     6fc:	03e00008 	jr	ra
     700:	27bd0028 	addiu	sp,sp,40

00000704 <func_80A332D4>:
     704:	27bdffd8 	addiu	sp,sp,-40
     708:	afb00020 	sw	s0,32(sp)
     70c:	00808025 	move	s0,a0
     710:	afbf0024 	sw	ra,36(sp)
     714:	afa5002c 	sw	a1,44(sp)
     718:	8605008a 	lh	a1,138(s0)
     71c:	240e0100 	li	t6,256
     720:	afae0010 	sw	t6,16(sp)
     724:	24840032 	addiu	a0,a0,50
     728:	24060002 	li	a2,2
     72c:	0c000000 	jal	0 <func_80A32BD0>
     730:	24070400 	li	a3,1024
     734:	86020032 	lh	v0,50(s0)
     738:	860f008a 	lh	t7,138(s0)
     73c:	02002025 	move	a0,s0
     740:	a60200b6 	sh	v0,182(s0)
     744:	55e20009 	bnel	t7,v0,76c <func_80A332D4+0x68>
     748:	8fbf0024 	lw	ra,36(sp)
     74c:	0c000000 	jal	0 <func_80A32BD0>
     750:	24050005 	li	a1,5
     754:	3c014080 	lui	at,0x4080
     758:	44812000 	mtc1	at,$f4
     75c:	24180032 	li	t8,50
     760:	a2180305 	sb	t8,773(s0)
     764:	e6040068 	swc1	$f4,104(s0)
     768:	8fbf0024 	lw	ra,36(sp)
     76c:	8fb00020 	lw	s0,32(sp)
     770:	27bd0028 	addiu	sp,sp,40
     774:	03e00008 	jr	ra
     778:	00000000 	nop

0000077c <func_80A3334C>:
     77c:	27bdffb8 	addiu	sp,sp,-72
     780:	afbf002c 	sw	ra,44(sp)
     784:	afb00028 	sw	s0,40(sp)
     788:	afa5004c 	sw	a1,76(sp)
     78c:	8c8e0004 	lw	t6,4(a0)
     790:	949802f4 	lhu	t8,756(a0)
     794:	2401fffe 	li	at,-2
     798:	01c17824 	and	t7,t6,at
     79c:	33190002 	andi	t9,t8,0x2
     7a0:	00808025 	move	s0,a0
     7a4:	1320002e 	beqz	t9,860 <func_80A3334C+0xe4>
     7a8:	ac8f0004 	sw	t7,4(a0)
     7ac:	8fa8004c 	lw	t0,76(sp)
     7b0:	8d01009c 	lw	at,156(t0)
     7b4:	00011080 	sll	v0,at,0x2
     7b8:	00411021 	addu	v0,v0,at
     7bc:	000212c0 	sll	v0,v0,0xb
     7c0:	00022400 	sll	a0,v0,0x10
     7c4:	00042403 	sra	a0,a0,0x10
     7c8:	0c000000 	jal	0 <func_80A32BD0>
     7cc:	afa40034 	sw	a0,52(sp)
     7d0:	3c0140a0 	lui	at,0x40a0
     7d4:	44812000 	mtc1	at,$f4
     7d8:	c6080038 	lwc1	$f8,56(s0)
     7dc:	3c014120 	lui	at,0x4120
     7e0:	46040182 	mul.s	$f6,$f0,$f4
     7e4:	44819000 	mtc1	at,$f18
     7e8:	8fa40034 	lw	a0,52(sp)
     7ec:	46083280 	add.s	$f10,$f6,$f8
     7f0:	e7aa0038 	swc1	$f10,56(sp)
     7f4:	c610003c 	lwc1	$f16,60(s0)
     7f8:	46128100 	add.s	$f4,$f16,$f18
     7fc:	0c000000 	jal	0 <func_80A32BD0>
     800:	e7a4003c 	swc1	$f4,60(sp)
     804:	3c0140a0 	lui	at,0x40a0
     808:	44813000 	mtc1	at,$f6
     80c:	c60a0040 	lwc1	$f10,64(s0)
     810:	3c090000 	lui	t1,0x0
     814:	46060202 	mul.s	$f8,$f0,$f6
     818:	3c0a0000 	lui	t2,0x0
     81c:	254a0000 	addiu	t2,t2,0
     820:	25290000 	addiu	t1,t1,0
     824:	3c060000 	lui	a2,0x0
     828:	3c070000 	lui	a3,0x0
     82c:	240b03e8 	li	t3,1000
     830:	460a4400 	add.s	$f16,$f8,$f10
     834:	240c0010 	li	t4,16
     838:	afac001c 	sw	t4,28(sp)
     83c:	afab0018 	sw	t3,24(sp)
     840:	e7b00040 	swc1	$f16,64(sp)
     844:	24e70000 	addiu	a3,a3,0
     848:	24c60000 	addiu	a2,a2,0
     84c:	afa90010 	sw	t1,16(sp)
     850:	afaa0014 	sw	t2,20(sp)
     854:	8fa4004c 	lw	a0,76(sp)
     858:	0c000000 	jal	0 <func_80A32BD0>
     85c:	27a50038 	addiu	a1,sp,56
     860:	8fbf002c 	lw	ra,44(sp)
     864:	8fb00028 	lw	s0,40(sp)
     868:	27bd0048 	addiu	sp,sp,72
     86c:	03e00008 	jr	ra
     870:	00000000 	nop

00000874 <func_80A33444>:
     874:	27bdffd8 	addiu	sp,sp,-40
     878:	afbf0024 	sw	ra,36(sp)
     87c:	afb00020 	sw	s0,32(sp)
     880:	948202f4 	lhu	v0,756(a0)
     884:	44802000 	mtc1	zero,$f4
     888:	00808025 	move	s0,a0
     88c:	304e0010 	andi	t6,v0,0x10
     890:	00a03025 	move	a2,a1
     894:	11c00004 	beqz	t6,8a8 <func_80A33444+0x34>
     898:	e4840068 	swc1	$f4,104(a0)
     89c:	304fffef 	andi	t7,v0,0xffef
     8a0:	10000018 	b	904 <func_80A33444+0x90>
     8a4:	a48f02f4 	sh	t7,756(a0)
     8a8:	00c02025 	move	a0,a2
     8ac:	0c000000 	jal	0 <func_80A32BD0>
     8b0:	02002825 	move	a1,s0
     8b4:	10400009 	beqz	v0,8dc <func_80A33444+0x68>
     8b8:	24180064 	li	t8,100
     8bc:	92080306 	lbu	t0,774(s0)
     8c0:	8619008a 	lh	t9,138(s0)
     8c4:	a2180305 	sb	t8,773(s0)
     8c8:	0102082a 	slt	at,t0,v0
     8cc:	1020000d 	beqz	at,904 <func_80A33444+0x90>
     8d0:	a61902f8 	sh	t9,760(s0)
     8d4:	1000000b 	b	904 <func_80A33444+0x90>
     8d8:	a2020306 	sb	v0,774(s0)
     8dc:	860902f8 	lh	t1,760(s0)
     8e0:	860a0032 	lh	t2,50(s0)
     8e4:	02002025 	move	a0,s0
     8e8:	24050001 	li	a1,1
     8ec:	552a0006 	bnel	t1,t2,908 <func_80A33444+0x94>
     8f0:	92020306 	lbu	v0,774(s0)
     8f4:	0c000000 	jal	0 <func_80A32BD0>
     8f8:	a2000306 	sb	zero,774(s0)
     8fc:	1000001b 	b	96c <func_80A33444+0xf8>
     900:	8fbf0024 	lw	ra,36(sp)
     904:	92020306 	lbu	v0,774(s0)
     908:	24010001 	li	at,1
     90c:	26040032 	addiu	a0,s0,50
     910:	10410006 	beq	v0,at,92c <func_80A33444+0xb8>
     914:	24060002 	li	a2,2
     918:	24010002 	li	at,2
     91c:	1041000a 	beq	v0,at,948 <func_80A33444+0xd4>
     920:	26040032 	addiu	a0,s0,50
     924:	1000000f 	b	964 <func_80A33444+0xf0>
     928:	86030032 	lh	v1,50(s0)
     92c:	860502f8 	lh	a1,760(s0)
     930:	240b0100 	li	t3,256
     934:	afab0010 	sw	t3,16(sp)
     938:	0c000000 	jal	0 <func_80A32BD0>
     93c:	24070200 	li	a3,512
     940:	10000008 	b	964 <func_80A33444+0xf0>
     944:	86030032 	lh	v1,50(s0)
     948:	860502f8 	lh	a1,760(s0)
     94c:	240c0180 	li	t4,384
     950:	afac0010 	sw	t4,16(sp)
     954:	24060002 	li	a2,2
     958:	0c000000 	jal	0 <func_80A32BD0>
     95c:	24070600 	li	a3,1536
     960:	86030032 	lh	v1,50(s0)
     964:	a60300b6 	sh	v1,182(s0)
     968:	8fbf0024 	lw	ra,36(sp)
     96c:	8fb00020 	lw	s0,32(sp)
     970:	27bd0028 	addiu	sp,sp,40
     974:	03e00008 	jr	ra
     978:	00000000 	nop

0000097c <func_80A3354C>:
     97c:	44802000 	mtc1	zero,$f4
     980:	27bdffd0 	addiu	sp,sp,-48
     984:	afb00020 	sw	s0,32(sp)
     988:	afbf0024 	sw	ra,36(sp)
     98c:	00808025 	move	s0,a0
     990:	e4840068 	swc1	$f4,104(a0)
     994:	00a02025 	move	a0,a1
     998:	0c000000 	jal	0 <func_80A32BD0>
     99c:	02002825 	move	a1,s0
     9a0:	1040000b 	beqz	v0,9d0 <func_80A3354C+0x54>
     9a4:	02002025 	move	a0,s0
     9a8:	24050002 	li	a1,2
     9ac:	0c000000 	jal	0 <func_80A32BD0>
     9b0:	afa2002c 	sw	v0,44(sp)
     9b4:	8fa3002c 	lw	v1,44(sp)
     9b8:	860f008a 	lh	t7,138(s0)
     9bc:	240e0064 	li	t6,100
     9c0:	a20e0305 	sb	t6,773(s0)
     9c4:	a2030306 	sb	v1,774(s0)
     9c8:	1000000d 	b	a00 <func_80A3354C+0x84>
     9cc:	a60f02f8 	sh	t7,760(s0)
     9d0:	961802f4 	lhu	t8,756(s0)
     9d4:	26040032 	addiu	a0,s0,50
     9d8:	24060002 	li	a2,2
     9dc:	33190002 	andi	t9,t8,0x2
     9e0:	13200007 	beqz	t9,a00 <func_80A3354C+0x84>
     9e4:	24070400 	li	a3,1024
     9e8:	860502f6 	lh	a1,758(s0)
     9ec:	24080200 	li	t0,512
     9f0:	0c000000 	jal	0 <func_80A32BD0>
     9f4:	afa80010 	sw	t0,16(sp)
     9f8:	86090032 	lh	t1,50(s0)
     9fc:	a60900b6 	sh	t1,182(s0)
     a00:	860a02f6 	lh	t2,758(s0)
     a04:	860b00b6 	lh	t3,182(s0)
     a08:	02002025 	move	a0,s0
     a0c:	554b0004 	bnel	t2,t3,a20 <func_80A3354C+0xa4>
     a10:	8fbf0024 	lw	ra,36(sp)
     a14:	0c000000 	jal	0 <func_80A32BD0>
     a18:	00002825 	move	a1,zero
     a1c:	8fbf0024 	lw	ra,36(sp)
     a20:	8fb00020 	lw	s0,32(sp)
     a24:	27bd0030 	addiu	sp,sp,48
     a28:	03e00008 	jr	ra
     a2c:	00000000 	nop

00000a30 <func_80A33600>:
     a30:	27bdffd8 	addiu	sp,sp,-40
     a34:	afb00018 	sw	s0,24(sp)
     a38:	00808025 	move	s0,a0
     a3c:	afbf001c 	sw	ra,28(sp)
     a40:	00a02025 	move	a0,a1
     a44:	0c000000 	jal	0 <func_80A32BD0>
     a48:	02002825 	move	a1,s0
     a4c:	304e00ff 	andi	t6,v0,0xff
     a50:	11c0000e 	beqz	t6,a8c <func_80A33600+0x5c>
     a54:	304300ff 	andi	v1,v0,0xff
     a58:	44802000 	mtc1	zero,$f4
     a5c:	02002025 	move	a0,s0
     a60:	24050002 	li	a1,2
     a64:	e6040068 	swc1	$f4,104(s0)
     a68:	0c000000 	jal	0 <func_80A32BD0>
     a6c:	a3a30027 	sb	v1,39(sp)
     a70:	93a30027 	lbu	v1,39(sp)
     a74:	8618008a 	lh	t8,138(s0)
     a78:	240f0064 	li	t7,100
     a7c:	a20f0305 	sb	t7,773(s0)
     a80:	a2030306 	sb	v1,774(s0)
     a84:	10000016 	b	ae0 <func_80A33600+0xb0>
     a88:	a61802f8 	sh	t8,760(s0)
     a8c:	96020302 	lhu	v0,770(s0)
     a90:	96190300 	lhu	t9,768(s0)
     a94:	02002025 	move	a0,s0
     a98:	24050001 	li	a1,1
     a9c:	0059082a 	slt	at,v0,t9
     aa0:	5420000b 	bnezl	at,ad0 <func_80A33600+0xa0>
     aa4:	3c014000 	lui	at,0x4000
     aa8:	860802f6 	lh	t0,758(s0)
     aac:	34018000 	li	at,0x8000
     ab0:	a6000302 	sh	zero,770(s0)
     ab4:	01014821 	addu	t1,t0,at
     ab8:	0c000000 	jal	0 <func_80A32BD0>
     abc:	a60902f6 	sh	t1,758(s0)
     ac0:	44803000 	mtc1	zero,$f6
     ac4:	10000006 	b	ae0 <func_80A33600+0xb0>
     ac8:	e6060068 	swc1	$f6,104(s0)
     acc:	3c014000 	lui	at,0x4000
     ad0:	44814000 	mtc1	at,$f8
     ad4:	244a0001 	addiu	t2,v0,1
     ad8:	a60a0302 	sh	t2,770(s0)
     adc:	e6080068 	swc1	$f8,104(s0)
     ae0:	8fbf001c 	lw	ra,28(sp)
     ae4:	8fb00018 	lw	s0,24(sp)
     ae8:	27bd0028 	addiu	sp,sp,40
     aec:	03e00008 	jr	ra
     af0:	00000000 	nop

00000af4 <func_80A336C4>:
     af4:	27bdffe0 	addiu	sp,sp,-32
     af8:	afbf001c 	sw	ra,28(sp)
     afc:	afa40020 	sw	a0,32(sp)
     b00:	afa50024 	sw	a1,36(sp)
     b04:	00807025 	move	t6,a0
     b08:	85c502f6 	lh	a1,758(t6)
     b0c:	240f0200 	li	t7,512
     b10:	afaf0010 	sw	t7,16(sp)
     b14:	24840032 	addiu	a0,a0,50
     b18:	24060002 	li	a2,2
     b1c:	0c000000 	jal	0 <func_80A32BD0>
     b20:	24070400 	li	a3,1024
     b24:	8fbf001c 	lw	ra,28(sp)
     b28:	27bd0020 	addiu	sp,sp,32
     b2c:	03e00008 	jr	ra
     b30:	00000000 	nop

00000b34 <func_80A33704>:
     b34:	27bdffc0 	addiu	sp,sp,-64
     b38:	afbf002c 	sw	ra,44(sp)
     b3c:	afb00028 	sw	s0,40(sp)
     b40:	afa50044 	sw	a1,68(sp)
     b44:	848e008a 	lh	t6,138(a0)
     b48:	00808025 	move	s0,a0
     b4c:	24060006 	li	a2,6
     b50:	afae0030 	sw	t6,48(sp)
     b54:	849800b6 	lh	t8,182(a0)
     b58:	260400b6 	addiu	a0,s0,182
     b5c:	87a50032 	lh	a1,50(sp)
     b60:	01d81023 	subu	v0,t6,t8
     b64:	00021400 	sll	v0,v0,0x10
     b68:	00021403 	sra	v0,v0,0x10
     b6c:	04400003 	bltz	v0,b7c <func_80A33704+0x48>
     b70:	00021823 	negu	v1,v0
     b74:	10000001 	b	b7c <func_80A33704+0x48>
     b78:	00401825 	move	v1,v0
     b7c:	28614001 	slti	at,v1,16385
     b80:	10200013 	beqz	at,bd0 <func_80A33704+0x9c>
     b84:	24070fa0 	li	a3,4000
     b88:	24190064 	li	t9,100
     b8c:	0c000000 	jal	0 <func_80A32BD0>
     b90:	afb90010 	sw	t9,16(sp)
     b94:	860800b6 	lh	t0,182(s0)
     b98:	8e0a0038 	lw	t2,56(s0)
     b9c:	02002825 	move	a1,s0
     ba0:	a6080032 	sh	t0,50(s0)
     ba4:	afaa0010 	sw	t2,16(sp)
     ba8:	8e09003c 	lw	t1,60(s0)
     bac:	8fa40044 	lw	a0,68(sp)
     bb0:	260602e8 	addiu	a2,s0,744
     bb4:	afa90014 	sw	t1,20(sp)
     bb8:	8e0a0040 	lw	t2,64(s0)
     bbc:	260702ee 	addiu	a3,s0,750
     bc0:	0c000000 	jal	0 <func_80A32BD0>
     bc4:	afaa0018 	sw	t2,24(sp)
     bc8:	1000001c 	b	c3c <func_80A33704+0x108>
     bcc:	8fbf002c 	lw	ra,44(sp)
     bd0:	0441000a 	bgez	v0,bfc <func_80A33704+0xc8>
     bd4:	260402ea 	addiu	a0,s0,746
     bd8:	240b0100 	li	t3,256
     bdc:	afab0010 	sw	t3,16(sp)
     be0:	260402ea 	addiu	a0,s0,746
     be4:	2405e000 	li	a1,-8192
     be8:	24060006 	li	a2,6
     bec:	0c000000 	jal	0 <func_80A32BD0>
     bf0:	24071838 	li	a3,6200
     bf4:	10000008 	b	c18 <func_80A33704+0xe4>
     bf8:	8605008a 	lh	a1,138(s0)
     bfc:	240c0100 	li	t4,256
     c00:	afac0010 	sw	t4,16(sp)
     c04:	24052000 	li	a1,8192
     c08:	24060006 	li	a2,6
     c0c:	0c000000 	jal	0 <func_80A32BD0>
     c10:	24071838 	li	a3,6200
     c14:	8605008a 	lh	a1,138(s0)
     c18:	240d0064 	li	t5,100
     c1c:	afad0010 	sw	t5,16(sp)
     c20:	260400b6 	addiu	a0,s0,182
     c24:	2406000c 	li	a2,12
     c28:	0c000000 	jal	0 <func_80A32BD0>
     c2c:	240703e8 	li	a3,1000
     c30:	860e00b6 	lh	t6,182(s0)
     c34:	a60e0032 	sh	t6,50(s0)
     c38:	8fbf002c 	lw	ra,44(sp)
     c3c:	8fb00028 	lw	s0,40(sp)
     c40:	27bd0040 	addiu	sp,sp,64
     c44:	03e00008 	jr	ra
     c48:	00000000 	nop

00000c4c <func_80A3381C>:
     c4c:	27bdffd0 	addiu	sp,sp,-48
     c50:	afbf002c 	sw	ra,44(sp)
     c54:	afb00028 	sw	s0,40(sp)
     c58:	afa50034 	sw	a1,52(sp)
     c5c:	848f00b6 	lh	t7,182(a0)
     c60:	848e008a 	lh	t6,138(a0)
     c64:	00808025 	move	s0,a0
     c68:	260402e8 	addiu	a0,s0,744
     c6c:	01cf1023 	subu	v0,t6,t7
     c70:	00021400 	sll	v0,v0,0x10
     c74:	00021403 	sra	v0,v0,0x10
     c78:	04400003 	bltz	v0,c88 <func_80A3381C+0x3c>
     c7c:	00021823 	negu	v1,v0
     c80:	10000001 	b	c88 <func_80A3381C+0x3c>
     c84:	00401825 	move	v1,v0
     c88:	28614301 	slti	at,v1,17153
     c8c:	10200015 	beqz	at,ce4 <func_80A3381C+0x98>
     c90:	00002825 	move	a1,zero
     c94:	3c014348 	lui	at,0x4348
     c98:	44813000 	mtc1	at,$f6
     c9c:	c6040090 	lwc1	$f4,144(s0)
     ca0:	4606203c 	c.lt.s	$f4,$f6
     ca4:	00000000 	nop
     ca8:	4502000f 	bc1fl	ce8 <func_80A3381C+0x9c>
     cac:	24080064 	li	t0,100
     cb0:	8e190038 	lw	t9,56(s0)
     cb4:	8fa40034 	lw	a0,52(sp)
     cb8:	02002825 	move	a1,s0
     cbc:	afb90010 	sw	t9,16(sp)
     cc0:	8e18003c 	lw	t8,60(s0)
     cc4:	260602e8 	addiu	a2,s0,744
     cc8:	260702ee 	addiu	a3,s0,750
     ccc:	afb80014 	sw	t8,20(sp)
     cd0:	8e190040 	lw	t9,64(s0)
     cd4:	0c000000 	jal	0 <func_80A32BD0>
     cd8:	afb90018 	sw	t9,24(sp)
     cdc:	1000001c 	b	d50 <func_80A3381C+0x104>
     ce0:	8fbf002c 	lw	ra,44(sp)
     ce4:	24080064 	li	t0,100
     ce8:	afa80010 	sw	t0,16(sp)
     cec:	24060006 	li	a2,6
     cf0:	0c000000 	jal	0 <func_80A32BD0>
     cf4:	24071838 	li	a3,6200
     cf8:	24090064 	li	t1,100
     cfc:	afa90010 	sw	t1,16(sp)
     d00:	260402ea 	addiu	a0,s0,746
     d04:	00002825 	move	a1,zero
     d08:	24060006 	li	a2,6
     d0c:	0c000000 	jal	0 <func_80A32BD0>
     d10:	24071838 	li	a3,6200
     d14:	240a0064 	li	t2,100
     d18:	afaa0010 	sw	t2,16(sp)
     d1c:	260402ee 	addiu	a0,s0,750
     d20:	00002825 	move	a1,zero
     d24:	24060006 	li	a2,6
     d28:	0c000000 	jal	0 <func_80A32BD0>
     d2c:	24071838 	li	a3,6200
     d30:	240b0064 	li	t3,100
     d34:	afab0010 	sw	t3,16(sp)
     d38:	260402f0 	addiu	a0,s0,752
     d3c:	00002825 	move	a1,zero
     d40:	24060006 	li	a2,6
     d44:	0c000000 	jal	0 <func_80A32BD0>
     d48:	24071838 	li	a3,6200
     d4c:	8fbf002c 	lw	ra,44(sp)
     d50:	8fb00028 	lw	s0,40(sp)
     d54:	27bd0030 	addiu	sp,sp,48
     d58:	03e00008 	jr	ra
     d5c:	00000000 	nop

00000d60 <func_80A33930>:
     d60:	27bdffe0 	addiu	sp,sp,-32
     d64:	afbf001c 	sw	ra,28(sp)
     d68:	afb00018 	sw	s0,24(sp)
     d6c:	00808025 	move	s0,a0
     d70:	0c000000 	jal	0 <func_80A32BD0>
     d74:	afa50024 	sw	a1,36(sp)
     d78:	50400021 	beqzl	v0,e00 <func_80A33930+0xa0>
     d7c:	02002025 	move	a0,s0
     d80:	8602001c 	lh	v0,28(s0)
     d84:	24010001 	li	at,1
     d88:	02002025 	move	a0,s0
     d8c:	304200ff 	andi	v0,v0,0xff
     d90:	10400008 	beqz	v0,db4 <func_80A33930+0x54>
     d94:	00000000 	nop
     d98:	1041000a 	beq	v0,at,dc4 <func_80A33930+0x64>
     d9c:	02002025 	move	a0,s0
     da0:	24010002 	li	at,2
     da4:	1041000b 	beq	v0,at,dd4 <func_80A33930+0x74>
     da8:	3c0e0000 	lui	t6,0x0
     dac:	1000000c 	b	de0 <func_80A33930+0x80>
     db0:	8e180004 	lw	t8,4(s0)
     db4:	0c000000 	jal	0 <func_80A32BD0>
     db8:	24050001 	li	a1,1
     dbc:	10000008 	b	de0 <func_80A33930+0x80>
     dc0:	8e180004 	lw	t8,4(s0)
     dc4:	0c000000 	jal	0 <func_80A32BD0>
     dc8:	24050007 	li	a1,7
     dcc:	10000004 	b	de0 <func_80A33930+0x80>
     dd0:	8e180004 	lw	t8,4(s0)
     dd4:	25ce0000 	addiu	t6,t6,0
     dd8:	ae0e0308 	sw	t6,776(s0)
     ddc:	8e180004 	lw	t8,4(s0)
     de0:	3c01fffe 	lui	at,0xfffe
     de4:	3c0f0000 	lui	t7,0x0
     de8:	3421ffff 	ori	at,at,0xffff
     dec:	25ef0000 	addiu	t7,t7,0
     df0:	0301c824 	and	t9,t8,at
     df4:	ae0f0130 	sw	t7,304(s0)
     df8:	ae190004 	sw	t9,4(s0)
     dfc:	02002025 	move	a0,s0
     e00:	0c000000 	jal	0 <func_80A32BD0>
     e04:	8fa50024 	lw	a1,36(sp)
     e08:	8fbf001c 	lw	ra,28(sp)
     e0c:	8fb00018 	lw	s0,24(sp)
     e10:	27bd0020 	addiu	sp,sp,32
     e14:	03e00008 	jr	ra
     e18:	00000000 	nop

00000e1c <func_80A339EC>:
     e1c:	27bdffe8 	addiu	sp,sp,-24
     e20:	afbf0014 	sw	ra,20(sp)
     e24:	0c000000 	jal	0 <func_80A32BD0>
     e28:	00000000 	nop
     e2c:	8fbf0014 	lw	ra,20(sp)
     e30:	27bd0018 	addiu	sp,sp,24
     e34:	03e00008 	jr	ra
     e38:	00000000 	nop

00000e3c <func_80A33A0C>:
     e3c:	27bdffe0 	addiu	sp,sp,-32
     e40:	afbf001c 	sw	ra,28(sp)
     e44:	afa50024 	sw	a1,36(sp)
     e48:	0c000000 	jal	0 <func_80A32BD0>
     e4c:	afa40020 	sw	a0,32(sp)
     e50:	10400006 	beqz	v0,e6c <func_80A33A0C+0x30>
     e54:	8fa40020 	lw	a0,32(sp)
     e58:	3c0e0000 	lui	t6,0x0
     e5c:	25ce0000 	addiu	t6,t6,0
     e60:	ac800118 	sw	zero,280(a0)
     e64:	10000009 	b	e8c <func_80A33A0C+0x50>
     e68:	ac8e0308 	sw	t6,776(a0)
     e6c:	3c014248 	lui	at,0x4248
     e70:	44812000 	mtc1	at,$f4
     e74:	3c07461c 	lui	a3,0x461c
     e78:	34e74000 	ori	a3,a3,0x4000
     e7c:	8fa50024 	lw	a1,36(sp)
     e80:	2406003a 	li	a2,58
     e84:	0c000000 	jal	0 <func_80A32BD0>
     e88:	e7a40010 	swc1	$f4,16(sp)
     e8c:	8fbf001c 	lw	ra,28(sp)
     e90:	27bd0020 	addiu	sp,sp,32
     e94:	03e00008 	jr	ra
     e98:	00000000 	nop

00000e9c <func_80A33A6C>:
     e9c:	27bdffe0 	addiu	sp,sp,-32
     ea0:	afbf001c 	sw	ra,28(sp)
     ea4:	afa40020 	sw	a0,32(sp)
     ea8:	afa50024 	sw	a1,36(sp)
     eac:	0c000000 	jal	0 <func_80A32BD0>
     eb0:	24a420d8 	addiu	a0,a1,8408
     eb4:	24010005 	li	at,5
     eb8:	54410019 	bnel	v0,at,f20 <func_80A33A6C+0x84>
     ebc:	8fbf001c 	lw	ra,28(sp)
     ec0:	0c000000 	jal	0 <func_80A32BD0>
     ec4:	8fa40024 	lw	a0,36(sp)
     ec8:	50400015 	beqzl	v0,f20 <func_80A33A6C+0x84>
     ecc:	8fbf001c 	lw	ra,28(sp)
     ed0:	0c000000 	jal	0 <func_80A32BD0>
     ed4:	8fa40024 	lw	a0,36(sp)
     ed8:	8fa40020 	lw	a0,32(sp)
     edc:	3c01fffe 	lui	at,0xfffe
     ee0:	3421ffff 	ori	at,at,0xffff
     ee4:	8c8e0004 	lw	t6,4(a0)
     ee8:	3c180000 	lui	t8,0x0
     eec:	27180000 	addiu	t8,t8,0
     ef0:	01c17824 	and	t7,t6,at
     ef4:	3c014248 	lui	at,0x4248
     ef8:	44812000 	mtc1	at,$f4
     efc:	3c07461c 	lui	a3,0x461c
     f00:	ac8f0004 	sw	t7,4(a0)
     f04:	ac980308 	sw	t8,776(a0)
     f08:	8fa50024 	lw	a1,36(sp)
     f0c:	34e74000 	ori	a3,a3,0x4000
     f10:	2406003a 	li	a2,58
     f14:	0c000000 	jal	0 <func_80A32BD0>
     f18:	e7a40010 	swc1	$f4,16(sp)
     f1c:	8fbf001c 	lw	ra,28(sp)
     f20:	27bd0020 	addiu	sp,sp,32
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <func_80A33AFC>:
     f2c:	27bdffe0 	addiu	sp,sp,-32
     f30:	afbf001c 	sw	ra,28(sp)
     f34:	afa50024 	sw	a1,36(sp)
     f38:	0c000000 	jal	0 <func_80A32BD0>
     f3c:	afa40020 	sw	a0,32(sp)
     f40:	10400005 	beqz	v0,f58 <func_80A33AFC+0x2c>
     f44:	8fa40020 	lw	a0,32(sp)
     f48:	3c0e0000 	lui	t6,0x0
     f4c:	25ce0000 	addiu	t6,t6,0
     f50:	10000010 	b	f94 <func_80A33AFC+0x68>
     f54:	ac8e0308 	sw	t6,776(a0)
     f58:	3c014396 	lui	at,0x4396
     f5c:	44810000 	mtc1	at,$f0
     f60:	8c980004 	lw	t8,4(a0)
     f64:	3c010001 	lui	at,0x1
     f68:	240f6004 	li	t7,24580
     f6c:	0301c825 	or	t9,t8,at
     f70:	a48f010e 	sh	t7,270(a0)
     f74:	ac990004 	sw	t9,4(a0)
     f78:	44060000 	mfc1	a2,$f0
     f7c:	44070000 	mfc1	a3,$f0
     f80:	afa40020 	sw	a0,32(sp)
     f84:	afa00010 	sw	zero,16(sp)
     f88:	0c000000 	jal	0 <func_80A32BD0>
     f8c:	8fa50024 	lw	a1,36(sp)
     f90:	8fa40020 	lw	a0,32(sp)
     f94:	0c000000 	jal	0 <func_80A32BD0>
     f98:	8fa50024 	lw	a1,36(sp)
     f9c:	8fbf001c 	lw	ra,28(sp)
     fa0:	27bd0020 	addiu	sp,sp,32
     fa4:	03e00008 	jr	ra
     fa8:	00000000 	nop

00000fac <func_80A33B7C>:
     fac:	27bdffe0 	addiu	sp,sp,-32
     fb0:	afbf001c 	sw	ra,28(sp)
     fb4:	afb00018 	sw	s0,24(sp)
     fb8:	afa50024 	sw	a1,36(sp)
     fbc:	948e02f4 	lhu	t6,756(a0)
     fc0:	44802000 	mtc1	zero,$f4
     fc4:	00808025 	move	s0,a0
     fc8:	35cf0008 	ori	t7,t6,0x8
     fcc:	a48f02f4 	sh	t7,756(a0)
     fd0:	24050004 	li	a1,4
     fd4:	0c000000 	jal	0 <func_80A32BD0>
     fd8:	e4840068 	swc1	$f4,104(a0)
     fdc:	8fa40024 	lw	a0,36(sp)
     fe0:	02002825 	move	a1,s0
     fe4:	0c000000 	jal	0 <func_80A32BD0>
     fe8:	2406005f 	li	a2,95
     fec:	0c000000 	jal	0 <func_80A32BD0>
     ff0:	2404482c 	li	a0,18476
     ff4:	8fa40024 	lw	a0,36(sp)
     ff8:	24056000 	li	a1,24576
     ffc:	0c000000 	jal	0 <func_80A32BD0>
    1000:	02003025 	move	a2,s0
    1004:	8fbf001c 	lw	ra,28(sp)
    1008:	8fb00018 	lw	s0,24(sp)
    100c:	27bd0020 	addiu	sp,sp,32
    1010:	03e00008 	jr	ra
    1014:	00000000 	nop

00001018 <func_80A33BE8>:
    1018:	27bdffc8 	addiu	sp,sp,-56
    101c:	afb00020 	sw	s0,32(sp)
    1020:	00808025 	move	s0,a0
    1024:	afbf0024 	sw	ra,36(sp)
    1028:	afa5003c 	sw	a1,60(sp)
    102c:	2606014c 	addiu	a2,s0,332
    1030:	00c02825 	move	a1,a2
    1034:	0c000000 	jal	0 <func_80A32BD0>
    1038:	afa6002c 	sw	a2,44(sp)
    103c:	8fa4003c 	lw	a0,60(sp)
    1040:	3c010001 	lui	at,0x1
    1044:	34211e60 	ori	at,at,0x1e60
    1048:	8fa6002c 	lw	a2,44(sp)
    104c:	0c000000 	jal	0 <func_80A32BD0>
    1050:	00812821 	addu	a1,a0,at
    1054:	3c014220 	lui	at,0x4220
    1058:	44810000 	mtc1	at,$f0
    105c:	240e0005 	li	t6,5
    1060:	afae0014 	sw	t6,20(sp)
    1064:	44060000 	mfc1	a2,$f0
    1068:	8fa4003c 	lw	a0,60(sp)
    106c:	02002825 	move	a1,s0
    1070:	3c0741c8 	lui	a3,0x41c8
    1074:	0c000000 	jal	0 <func_80A32BD0>
    1078:	e7a00010 	swc1	$f0,16(sp)
    107c:	960f02f4 	lhu	t7,756(s0)
    1080:	31f80002 	andi	t8,t7,0x2
    1084:	57000009 	bnezl	t8,10ac <func_80A33BE8+0x94>
    1088:	8fbf0024 	lw	ra,36(sp)
    108c:	0c000000 	jal	0 <func_80A32BD0>
    1090:	26040198 	addiu	a0,s0,408
    1094:	50400005 	beqzl	v0,10ac <func_80A33BE8+0x94>
    1098:	8fbf0024 	lw	ra,36(sp)
    109c:	961902f4 	lhu	t9,756(s0)
    10a0:	37280002 	ori	t0,t9,0x2
    10a4:	a60802f4 	sh	t0,756(s0)
    10a8:	8fbf0024 	lw	ra,36(sp)
    10ac:	8fb00020 	lw	s0,32(sp)
    10b0:	27bd0038 	addiu	sp,sp,56
    10b4:	03e00008 	jr	ra
    10b8:	00000000 	nop

000010bc <func_80A33C8C>:
    10bc:	27bdffe8 	addiu	sp,sp,-24
    10c0:	afbf0014 	sw	ra,20(sp)
    10c4:	afa5001c 	sw	a1,28(sp)
    10c8:	0c000000 	jal	0 <func_80A32BD0>
    10cc:	afa40018 	sw	a0,24(sp)
    10d0:	8fa60018 	lw	a2,24(sp)
    10d4:	2404003c 	li	a0,60
    10d8:	2405003c 	li	a1,60
    10dc:	84c302e6 	lh	v1,742(a2)
    10e0:	14600003 	bnez	v1,10f0 <func_80A33C8C+0x34>
    10e4:	246effff 	addiu	t6,v1,-1
    10e8:	10000004 	b	10fc <func_80A33C8C+0x40>
    10ec:	00001025 	move	v0,zero
    10f0:	a4ce02e6 	sh	t6,742(a2)
    10f4:	84c302e6 	lh	v1,742(a2)
    10f8:	00601025 	move	v0,v1
    10fc:	54400007 	bnezl	v0,111c <func_80A33C8C+0x60>
    1100:	a4c302e4 	sh	v1,740(a2)
    1104:	0c000000 	jal	0 <func_80A32BD0>
    1108:	afa60018 	sw	a2,24(sp)
    110c:	8fa60018 	lw	a2,24(sp)
    1110:	a4c202e6 	sh	v0,742(a2)
    1114:	84c302e6 	lh	v1,742(a2)
    1118:	a4c302e4 	sh	v1,740(a2)
    111c:	84cf02e4 	lh	t7,740(a2)
    1120:	29e10003 	slti	at,t7,3
    1124:	54200003 	bnezl	at,1134 <func_80A33C8C+0x78>
    1128:	8fbf0014 	lw	ra,20(sp)
    112c:	a4c002e4 	sh	zero,740(a2)
    1130:	8fbf0014 	lw	ra,20(sp)
    1134:	27bd0018 	addiu	sp,sp,24
    1138:	03e00008 	jr	ra
    113c:	00000000 	nop

00001140 <func_80A33D10>:
    1140:	27bdffe0 	addiu	sp,sp,-32
    1144:	afbf001c 	sw	ra,28(sp)
    1148:	afb10018 	sw	s1,24(sp)
    114c:	afb00014 	sw	s0,20(sp)
    1150:	00808025 	move	s0,a0
    1154:	0c000000 	jal	0 <func_80A32BD0>
    1158:	00a08825 	move	s1,a1
    115c:	8e190308 	lw	t9,776(s0)
    1160:	02002025 	move	a0,s0
    1164:	02202825 	move	a1,s1
    1168:	0320f809 	jalr	t9
    116c:	00000000 	nop
    1170:	02002025 	move	a0,s0
    1174:	0c000000 	jal	0 <func_80A32BD0>
    1178:	02202825 	move	a1,s1
    117c:	10400011 	beqz	v0,11c4 <func_80A33D10+0x84>
    1180:	3c0142c8 	lui	at,0x42c8
    1184:	860e001c 	lh	t6,28(s0)
    1188:	02002025 	move	a0,s0
    118c:	31cf00ff 	andi	t7,t6,0xff
    1190:	15e00005 	bnez	t7,11a8 <func_80A33D10+0x68>
    1194:	00000000 	nop
    1198:	44802000 	mtc1	zero,$f4
    119c:	24050008 	li	a1,8
    11a0:	0c000000 	jal	0 <func_80A32BD0>
    11a4:	e6040068 	swc1	$f4,104(s0)
    11a8:	3c180000 	lui	t8,0x0
    11ac:	3c080000 	lui	t0,0x0
    11b0:	27180000 	addiu	t8,t8,0
    11b4:	25080000 	addiu	t0,t0,0
    11b8:	ae180308 	sw	t8,776(s0)
    11bc:	1000000c 	b	11f0 <func_80A33D10+0xb0>
    11c0:	ae080130 	sw	t0,304(s0)
    11c4:	44810000 	mtc1	at,$f0
    11c8:	c6060090 	lwc1	$f6,144(s0)
    11cc:	24096005 	li	t1,24581
    11d0:	a609010e 	sh	t1,270(s0)
    11d4:	4600303c 	c.lt.s	$f6,$f0
    11d8:	02002025 	move	a0,s0
    11dc:	45020005 	bc1fl	11f4 <func_80A33D10+0xb4>
    11e0:	02002025 	move	a0,s0
    11e4:	44060000 	mfc1	a2,$f0
    11e8:	0c000000 	jal	0 <func_80A32BD0>
    11ec:	02202825 	move	a1,s1
    11f0:	02002025 	move	a0,s0
    11f4:	0c000000 	jal	0 <func_80A32BD0>
    11f8:	02202825 	move	a1,s1
    11fc:	8fbf001c 	lw	ra,28(sp)
    1200:	8fb00014 	lw	s0,20(sp)
    1204:	8fb10018 	lw	s1,24(sp)
    1208:	03e00008 	jr	ra
    120c:	27bd0020 	addiu	sp,sp,32

00001210 <func_80A33DE0>:
    1210:	27bdffe8 	addiu	sp,sp,-24
    1214:	afbf0014 	sw	ra,20(sp)
    1218:	afa5001c 	sw	a1,28(sp)
    121c:	948e02f4 	lhu	t6,756(a0)
    1220:	35cf0010 	ori	t7,t6,0x10
    1224:	a48f02f4 	sh	t7,756(a0)
    1228:	afa40018 	sw	a0,24(sp)
    122c:	0c000000 	jal	0 <func_80A32BD0>
    1230:	8fa5001c 	lw	a1,28(sp)
    1234:	8fa40018 	lw	a0,24(sp)
    1238:	8fa5001c 	lw	a1,28(sp)
    123c:	8c990308 	lw	t9,776(a0)
    1240:	0320f809 	jalr	t9
    1244:	00000000 	nop
    1248:	8fa40018 	lw	a0,24(sp)
    124c:	0c000000 	jal	0 <func_80A32BD0>
    1250:	8fa5001c 	lw	a1,28(sp)
    1254:	8fbf0014 	lw	ra,20(sp)
    1258:	27bd0018 	addiu	sp,sp,24
    125c:	03e00008 	jr	ra
    1260:	00000000 	nop

00001264 <EnGe2_Update>:
    1264:	27bdffd8 	addiu	sp,sp,-40
    1268:	afbf0024 	sw	ra,36(sp)
    126c:	afb00020 	sw	s0,32(sp)
    1270:	00808025 	move	s0,a0
    1274:	0c000000 	jal	0 <func_80A32BD0>
    1278:	afa5002c 	sw	a1,44(sp)
    127c:	960202f4 	lhu	v0,756(s0)
    1280:	304e0004 	andi	t6,v0,0x4
    1284:	15c00003 	bnez	t6,1294 <EnGe2_Update+0x30>
    1288:	304f0008 	andi	t7,v0,0x8
    128c:	51e00009 	beqzl	t7,12b4 <EnGe2_Update+0x50>
    1290:	9218015d 	lbu	t8,349(s0)
    1294:	8e190308 	lw	t9,776(s0)
    1298:	02002025 	move	a0,s0
    129c:	8fa5002c 	lw	a1,44(sp)
    12a0:	0320f809 	jalr	t9
    12a4:	00000000 	nop
    12a8:	1000004a 	b	13d4 <EnGe2_Update+0x170>
    12ac:	960902f4 	lhu	t1,756(s0)
    12b0:	9218015d 	lbu	t8,349(s0)
    12b4:	33080002 	andi	t0,t8,0x2
    12b8:	51000022 	beqzl	t0,1344 <EnGe2_Update+0xe0>
    12bc:	8e190308 	lw	t9,776(s0)
    12c0:	8e020188 	lw	v0,392(s0)
    12c4:	02002025 	move	a0,s0
    12c8:	1040000f 	beqz	v0,1308 <EnGe2_Update+0xa4>
    12cc:	00000000 	nop
    12d0:	8c490000 	lw	t1,0(v0)
    12d4:	00002825 	move	a1,zero
    12d8:	24060078 	li	a2,120
    12dc:	312a0080 	andi	t2,t1,0x80
    12e0:	11400009 	beqz	t2,1308 <EnGe2_Update+0xa4>
    12e4:	00003825 	move	a3,zero
    12e8:	240b0190 	li	t3,400
    12ec:	afab0010 	sw	t3,16(sp)
    12f0:	0c000000 	jal	0 <func_80A32BD0>
    12f4:	02002025 	move	a0,s0
    12f8:	3c0c0000 	lui	t4,0x0
    12fc:	258c0000 	addiu	t4,t4,0
    1300:	10000051 	b	1448 <EnGe2_Update+0x1e4>
    1304:	ae0c0130 	sw	t4,304(s0)
    1308:	0c000000 	jal	0 <func_80A32BD0>
    130c:	24050003 	li	a1,3
    1310:	960e02f4 	lhu	t6,756(s0)
    1314:	44802000 	mtc1	zero,$f4
    1318:	240d0064 	li	t5,100
    131c:	35cf0004 	ori	t7,t6,0x4
    1320:	a20d0305 	sb	t5,773(s0)
    1324:	a60f02f4 	sh	t7,756(s0)
    1328:	02002025 	move	a0,s0
    132c:	24056872 	li	a1,26738
    1330:	0c000000 	jal	0 <func_80A32BD0>
    1334:	e6040068 	swc1	$f4,104(s0)
    1338:	10000026 	b	13d4 <EnGe2_Update+0x170>
    133c:	960902f4 	lhu	t1,756(s0)
    1340:	8e190308 	lw	t9,776(s0)
    1344:	02002025 	move	a0,s0
    1348:	8fa5002c 	lw	a1,44(sp)
    134c:	0320f809 	jalr	t9
    1350:	00000000 	nop
    1354:	c60602fc 	lwc1	$f6,764(s0)
    1358:	860700b6 	lh	a3,182(s0)
    135c:	8fa4002c 	lw	a0,44(sp)
    1360:	02002825 	move	a1,s0
    1364:	26060038 	addiu	a2,s0,56
    1368:	0c000000 	jal	0 <func_80A32BD0>
    136c:	e7a60010 	swc1	$f6,16(sp)
    1370:	10400006 	beqz	v0,138c <EnGe2_Update+0x128>
    1374:	3c040000 	lui	a0,0x0
    1378:	0c000000 	jal	0 <func_80A32BD0>
    137c:	24840000 	addiu	a0,a0,0
    1380:	02002025 	move	a0,s0
    1384:	0c000000 	jal	0 <func_80A32BD0>
    1388:	8fa5002c 	lw	a1,44(sp)
    138c:	8618001c 	lh	t8,28(s0)
    1390:	24010001 	li	at,1
    1394:	330800ff 	andi	t0,t8,0xff
    1398:	1501000d 	bne	t0,at,13d0 <EnGe2_Update+0x16c>
    139c:	3c0142c8 	lui	at,0x42c8
    13a0:	44815000 	mtc1	at,$f10
    13a4:	c6080090 	lwc1	$f8,144(s0)
    13a8:	3c040000 	lui	a0,0x0
    13ac:	460a403c 	c.lt.s	$f8,$f10
    13b0:	00000000 	nop
    13b4:	45020007 	bc1fl	13d4 <EnGe2_Update+0x170>
    13b8:	960902f4 	lhu	t1,756(s0)
    13bc:	0c000000 	jal	0 <func_80A32BD0>
    13c0:	24840000 	addiu	a0,a0,0
    13c4:	02002025 	move	a0,s0
    13c8:	0c000000 	jal	0 <func_80A32BD0>
    13cc:	8fa5002c 	lw	a1,44(sp)
    13d0:	960902f4 	lhu	t1,756(s0)
    13d4:	312a0004 	andi	t2,t1,0x4
    13d8:	5540000d 	bnezl	t2,1410 <EnGe2_Update+0x1ac>
    13dc:	02002025 	move	a0,s0
    13e0:	8602001c 	lh	v0,28(s0)
    13e4:	24010001 	li	at,1
    13e8:	8fa4002c 	lw	a0,44(sp)
    13ec:	304200ff 	andi	v0,v0,0xff
    13f0:	10400002 	beqz	v0,13fc <EnGe2_Update+0x198>
    13f4:	2606014c 	addiu	a2,s0,332
    13f8:	14410004 	bne	v0,at,140c <EnGe2_Update+0x1a8>
    13fc:	3c010001 	lui	at,0x1
    1400:	34211e60 	ori	at,at,0x1e60
    1404:	0c000000 	jal	0 <func_80A32BD0>
    1408:	00812821 	addu	a1,a0,at
    140c:	02002025 	move	a0,s0
    1410:	0c000000 	jal	0 <func_80A32BD0>
    1414:	8fa5002c 	lw	a1,44(sp)
    1418:	0c000000 	jal	0 <func_80A32BD0>
    141c:	00000000 	nop
    1420:	5040000a 	beqzl	v0,144c <EnGe2_Update+0x1e8>
    1424:	8fbf0024 	lw	ra,36(sp)
    1428:	960b02f4 	lhu	t3,756(s0)
    142c:	3c0d0000 	lui	t5,0x0
    1430:	25ad0000 	addiu	t5,t5,0
    1434:	316c0004 	andi	t4,t3,0x4
    1438:	15800003 	bnez	t4,1448 <EnGe2_Update+0x1e4>
    143c:	240e0006 	li	t6,6
    1440:	ae0d0130 	sw	t5,304(s0)
    1444:	a20e001f 	sb	t6,31(s0)
    1448:	8fbf0024 	lw	ra,36(sp)
    144c:	8fb00020 	lw	s0,32(sp)
    1450:	27bd0028 	addiu	sp,sp,40
    1454:	03e00008 	jr	ra
    1458:	00000000 	nop

0000145c <func_80A3402C>:
    145c:	27bdffc8 	addiu	sp,sp,-56
    1460:	afb10020 	sw	s1,32(sp)
    1464:	afb0001c 	sw	s0,28(sp)
    1468:	00808025 	move	s0,a0
    146c:	00a08825 	move	s1,a1
    1470:	afbf0024 	sw	ra,36(sp)
    1474:	2605014c 	addiu	a1,s0,332
    1478:	0c000000 	jal	0 <func_80A32BD0>
    147c:	afa5002c 	sw	a1,44(sp)
    1480:	3c010001 	lui	at,0x1
    1484:	34211e60 	ori	at,at,0x1e60
    1488:	02212821 	addu	a1,s1,at
    148c:	afa50028 	sw	a1,40(sp)
    1490:	02202025 	move	a0,s1
    1494:	0c000000 	jal	0 <func_80A32BD0>
    1498:	8fa6002c 	lw	a2,44(sp)
    149c:	3c014220 	lui	at,0x4220
    14a0:	44810000 	mtc1	at,$f0
    14a4:	240e0005 	li	t6,5
    14a8:	afae0014 	sw	t6,20(sp)
    14ac:	44060000 	mfc1	a2,$f0
    14b0:	02202025 	move	a0,s1
    14b4:	02002825 	move	a1,s0
    14b8:	3c0741c8 	lui	a3,0x41c8
    14bc:	0c000000 	jal	0 <func_80A32BD0>
    14c0:	e7a00010 	swc1	$f0,16(sp)
    14c4:	920f015d 	lbu	t7,349(s0)
    14c8:	31f80002 	andi	t8,t7,0x2
    14cc:	53000017 	beqzl	t8,152c <func_80A3402C+0xd0>
    14d0:	02202025 	move	a0,s1
    14d4:	8e020188 	lw	v0,392(s0)
    14d8:	02002025 	move	a0,s0
    14dc:	24050003 	li	a1,3
    14e0:	10400005 	beqz	v0,14f8 <func_80A3402C+0x9c>
    14e4:	00000000 	nop
    14e8:	8c590000 	lw	t9,0(v0)
    14ec:	33280080 	andi	t0,t9,0x80
    14f0:	5500000e 	bnezl	t0,152c <func_80A3402C+0xd0>
    14f4:	02202025 	move	a0,s1
    14f8:	0c000000 	jal	0 <func_80A32BD0>
    14fc:	a2000114 	sb	zero,276(s0)
    1500:	960a02f4 	lhu	t2,756(s0)
    1504:	44802000 	mtc1	zero,$f4
    1508:	24090064 	li	t1,100
    150c:	354b0004 	ori	t3,t2,0x4
    1510:	a2090305 	sb	t1,773(s0)
    1514:	a60b02f4 	sh	t3,756(s0)
    1518:	02002025 	move	a0,s0
    151c:	24056872 	li	a1,26738
    1520:	0c000000 	jal	0 <func_80A32BD0>
    1524:	e6040068 	swc1	$f4,104(s0)
    1528:	02202025 	move	a0,s1
    152c:	8fa50028 	lw	a1,40(sp)
    1530:	0c000000 	jal	0 <func_80A32BD0>
    1534:	8fa6002c 	lw	a2,44(sp)
    1538:	0c000000 	jal	0 <func_80A32BD0>
    153c:	00000000 	nop
    1540:	10400007 	beqz	v0,1560 <func_80A3402C+0x104>
    1544:	3c0c0000 	lui	t4,0x0
    1548:	258c0000 	addiu	t4,t4,0
    154c:	240d0006 	li	t5,6
    1550:	ae0c0130 	sw	t4,304(s0)
    1554:	a20d001f 	sb	t5,31(s0)
    1558:	10000007 	b	1578 <func_80A3402C+0x11c>
    155c:	a2000114 	sb	zero,276(s0)
    1560:	920e0114 	lbu	t6,276(s0)
    1564:	3c0f0000 	lui	t7,0x0
    1568:	25ef0000 	addiu	t7,t7,0
    156c:	55c00003 	bnezl	t6,157c <func_80A3402C+0x120>
    1570:	8fbf0024 	lw	ra,36(sp)
    1574:	ae0f0130 	sw	t7,304(s0)
    1578:	8fbf0024 	lw	ra,36(sp)
    157c:	8fb0001c 	lw	s0,28(sp)
    1580:	8fb10020 	lw	s1,32(sp)
    1584:	03e00008 	jr	ra
    1588:	27bd0038 	addiu	sp,sp,56

0000158c <func_80A3415C>:
    158c:	24010003 	li	at,3
    1590:	afa40000 	sw	a0,0(sp)
    1594:	afa60008 	sw	a2,8(sp)
    1598:	14a1000b 	bne	a1,at,15c8 <func_80A3415C+0x3c>
    159c:	afa7000c 	sw	a3,12(sp)
    15a0:	8fa20014 	lw	v0,20(sp)
    15a4:	8fa30010 	lw	v1,16(sp)
    15a8:	844f02ea 	lh	t7,746(v0)
    15ac:	846e0000 	lh	t6,0(v1)
    15b0:	84790004 	lh	t9,4(v1)
    15b4:	01cfc021 	addu	t8,t6,t7
    15b8:	a4780000 	sh	t8,0(v1)
    15bc:	844802e8 	lh	t0,744(v0)
    15c0:	03284821 	addu	t1,t9,t0
    15c4:	a4690004 	sh	t1,4(v1)
    15c8:	03e00008 	jr	ra
    15cc:	00001025 	move	v0,zero

000015d0 <func_80A341A0>:
    15d0:	27bdffe8 	addiu	sp,sp,-24
    15d4:	24010006 	li	at,6
    15d8:	afbf0014 	sw	ra,20(sp)
    15dc:	afa40018 	sw	a0,24(sp)
    15e0:	afa60020 	sw	a2,32(sp)
    15e4:	14a10006 	bne	a1,at,1600 <func_80A341A0+0x30>
    15e8:	afa70024 	sw	a3,36(sp)
    15ec:	8fa50028 	lw	a1,40(sp)
    15f0:	3c040000 	lui	a0,0x0
    15f4:	24840000 	addiu	a0,a0,0
    15f8:	0c000000 	jal	0 <func_80A32BD0>
    15fc:	24a50038 	addiu	a1,a1,56
    1600:	8fbf0014 	lw	ra,20(sp)
    1604:	27bd0018 	addiu	sp,sp,24
    1608:	03e00008 	jr	ra
    160c:	00000000 	nop

00001610 <EnGe2_Draw>:
    1610:	27bdffa8 	addiu	sp,sp,-88
    1614:	afb10028 	sw	s1,40(sp)
    1618:	00a08825 	move	s1,a1
    161c:	afbf002c 	sw	ra,44(sp)
    1620:	afb00024 	sw	s0,36(sp)
    1624:	8ca50000 	lw	a1,0(a1)
    1628:	00808025 	move	s0,a0
    162c:	3c060000 	lui	a2,0x0
    1630:	24c60000 	addiu	a2,a2,0
    1634:	27a4003c 	addiu	a0,sp,60
    1638:	240704fa 	li	a3,1274
    163c:	0c000000 	jal	0 <func_80A32BD0>
    1640:	afa5004c 	sw	a1,76(sp)
    1644:	0c000000 	jal	0 <func_80A32BD0>
    1648:	8e240000 	lw	a0,0(s1)
    164c:	8fa5004c 	lw	a1,76(sp)
    1650:	3c0fdb06 	lui	t7,0xdb06
    1654:	35ef0020 	ori	t7,t7,0x20
    1658:	8ca302c0 	lw	v1,704(a1)
    165c:	3c040000 	lui	a0,0x0
    1660:	3c0c0000 	lui	t4,0x0
    1664:	246e0008 	addiu	t6,v1,8
    1668:	acae02c0 	sw	t6,704(a1)
    166c:	ac6f0000 	sw	t7,0(v1)
    1670:	861802e4 	lh	t8,740(s0)
    1674:	3c0100ff 	lui	at,0xff
    1678:	3421ffff 	ori	at,at,0xffff
    167c:	0018c880 	sll	t9,t8,0x2
    1680:	00992021 	addu	a0,a0,t9
    1684:	8c840000 	lw	a0,0(a0)
    1688:	02202825 	move	a1,s1
    168c:	00003025 	move	a2,zero
    1690:	00044900 	sll	t1,a0,0x4
    1694:	00095702 	srl	t2,t1,0x1c
    1698:	000a5880 	sll	t3,t2,0x2
    169c:	018b6021 	addu	t4,t4,t3
    16a0:	8d8c0000 	lw	t4,0(t4)
    16a4:	00814024 	and	t0,a0,at
    16a8:	3c018000 	lui	at,0x8000
    16ac:	010c6821 	addu	t5,t0,t4
    16b0:	01a17021 	addu	t6,t5,at
    16b4:	02002025 	move	a0,s0
    16b8:	0c000000 	jal	0 <func_80A32BD0>
    16bc:	ac6e0004 	sw	t6,4(v1)
    16c0:	8e05019c 	lw	a1,412(s0)
    16c4:	8e0601b8 	lw	a2,440(s0)
    16c8:	9207019a 	lbu	a3,410(s0)
    16cc:	3c0f0000 	lui	t7,0x0
    16d0:	3c180000 	lui	t8,0x0
    16d4:	27180000 	addiu	t8,t8,0
    16d8:	25ef0000 	addiu	t7,t7,0
    16dc:	afaf0010 	sw	t7,16(sp)
    16e0:	afb80014 	sw	t8,20(sp)
    16e4:	afb00018 	sw	s0,24(sp)
    16e8:	0c000000 	jal	0 <func_80A32BD0>
    16ec:	02202025 	move	a0,s1
    16f0:	3c060000 	lui	a2,0x0
    16f4:	24c60000 	addiu	a2,a2,0
    16f8:	27a4003c 	addiu	a0,sp,60
    16fc:	8e250000 	lw	a1,0(s1)
    1700:	0c000000 	jal	0 <func_80A32BD0>
    1704:	2407050b 	li	a3,1291
    1708:	8fbf002c 	lw	ra,44(sp)
    170c:	8fb00024 	lw	s0,36(sp)
    1710:	8fb10028 	lw	s1,40(sp)
    1714:	03e00008 	jr	ra
    1718:	27bd0058 	addiu	sp,sp,88
    171c:	00000000 	nop
