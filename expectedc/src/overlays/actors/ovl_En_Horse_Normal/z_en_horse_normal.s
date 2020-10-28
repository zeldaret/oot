
build/src/overlays/actors/ovl_En_Horse_Normal/z_en_horse_normal.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A6B250>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb00020 	sw	s0,32(sp)
       c:	8c820200 	lw	v0,512(a0)
      10:	3c030000 	lui	v1,0x0
      14:	24630170 	addiu	v1,v1,368
      18:	00027080 	sll	t6,v0,0x2
      1c:	006e7821 	addu	t7,v1,t6
      20:	8df80000 	lw	t8,0(t7)
      24:	c48001b8 	lwc1	$f0,440(a0)
      28:	00808025 	move	s0,a0
      2c:	44982000 	mtc1	t8,$f4
      30:	00000000 	nop
      34:	468021a0 	cvt.s.w	$f6,$f4
      38:	4600303c 	c.lt.s	$f6,$f0
      3c:	00000000 	nop
      40:	4502001a 	bc1fl	ac <func_80A6B250+0xac>
      44:	8fbf0024 	lw	ra,36(sp)
      48:	14400008 	bnez	v0,6c <func_80A6B250+0x6c>
      4c:	3c070000 	lui	a3,0x0
      50:	8c790004 	lw	t9,4(v1)
      54:	44994000 	mtc1	t9,$f8
      58:	00000000 	nop
      5c:	468042a0 	cvt.s.w	$f10,$f8
      60:	4600503c 	c.lt.s	$f10,$f0
      64:	00000000 	nop
      68:	4501000f 	bc1t	a8 <func_80A6B250+0xa8>
      6c:	3c080000 	lui	t0,0x0
      70:	24e70000 	addiu	a3,a3,0
      74:	25080000 	addiu	t0,t0,0
      78:	afa80014 	sw	t0,20(sp)
      7c:	afa70010 	sw	a3,16(sp)
      80:	24042803 	li	a0,10243
      84:	260500e4 	addiu	a1,s0,228
      88:	0c000000 	jal	0 <func_80A6B250>
      8c:	24060004 	li	a2,4
      90:	8e090200 	lw	t1,512(s0)
      94:	252a0001 	addiu	t2,t1,1
      98:	29410002 	slti	at,t2,2
      9c:	14200002 	bnez	at,a8 <func_80A6B250+0xa8>
      a0:	ae0a0200 	sw	t2,512(s0)
      a4:	ae000200 	sw	zero,512(s0)
      a8:	8fbf0024 	lw	ra,36(sp)
      ac:	8fb00020 	lw	s0,32(sp)
      b0:	27bd0028 	addiu	sp,sp,40
      b4:	03e00008 	jr	ra
      b8:	00000000 	nop

000000bc <func_80A6B30C>:
      bc:	8c820150 	lw	v0,336(a0)
      c0:	24010004 	li	at,4
      c4:	1441000c 	bne	v0,at,f8 <func_80A6B30C+0x3c>
      c8:	00027080 	sll	t6,v0,0x2
      cc:	3c010000 	lui	at,0x0
      d0:	002e0821 	addu	at,at,t6
      d4:	c4240178 	lwc1	$f4,376(at)
      d8:	c4860068 	lwc1	$f6,104(a0)
      dc:	3c013f00 	lui	at,0x3f00
      e0:	44815000 	mtc1	at,$f10
      e4:	46062202 	mul.s	$f8,$f4,$f6
      e8:	00000000 	nop
      ec:	460a4082 	mul.s	$f2,$f8,$f10
      f0:	03e00008 	jr	ra
      f4:	46001006 	mov.s	$f0,$f2
      f8:	24010005 	li	at,5
      fc:	1441000c 	bne	v0,at,130 <func_80A6B30C+0x74>
     100:	00027880 	sll	t7,v0,0x2
     104:	3c010000 	lui	at,0x0
     108:	002f0821 	addu	at,at,t7
     10c:	c4300178 	lwc1	$f16,376(at)
     110:	c4920068 	lwc1	$f18,104(a0)
     114:	3c010000 	lui	at,0x0
     118:	c4260048 	lwc1	$f6,72(at)
     11c:	46128102 	mul.s	$f4,$f16,$f18
     120:	00000000 	nop
     124:	46062082 	mul.s	$f2,$f4,$f6
     128:	03e00008 	jr	ra
     12c:	46001006 	mov.s	$f0,$f2
     130:	24010006 	li	at,6
     134:	1441000d 	bne	v0,at,16c <func_80A6B30C+0xb0>
     138:	0002c880 	sll	t9,v0,0x2
     13c:	0002c080 	sll	t8,v0,0x2
     140:	3c010000 	lui	at,0x0
     144:	00380821 	addu	at,at,t8
     148:	c4280178 	lwc1	$f8,376(at)
     14c:	c48a0068 	lwc1	$f10,104(a0)
     150:	3c010000 	lui	at,0x0
     154:	c432004c 	lwc1	$f18,76(at)
     158:	460a4402 	mul.s	$f16,$f8,$f10
     15c:	00000000 	nop
     160:	46128082 	mul.s	$f2,$f16,$f18
     164:	03e00008 	jr	ra
     168:	46001006 	mov.s	$f0,$f2
     16c:	3c010000 	lui	at,0x0
     170:	00390821 	addu	at,at,t9
     174:	c4220178 	lwc1	$f2,376(at)
     178:	03e00008 	jr	ra
     17c:	46001006 	mov.s	$f0,$f2

00000180 <EnHorseNormal_Init>:
     180:	27bdffc8 	addiu	sp,sp,-56
     184:	afa5003c 	sw	a1,60(sp)
     188:	afbf0024 	sw	ra,36(sp)
     18c:	afb00020 	sw	s0,32(sp)
     190:	3c050000 	lui	a1,0x0
     194:	00808025 	move	s0,a0
     198:	0c000000 	jal	0 <func_80A6B250>
     19c:	24a5019c 	addiu	a1,a1,412
     1a0:	3c053c23 	lui	a1,0x3c23
     1a4:	34a5d70a 	ori	a1,a1,0xd70a
     1a8:	0c000000 	jal	0 <func_80A6B250>
     1ac:	02002025 	move	a0,s0
     1b0:	3c01c060 	lui	at,0xc060
     1b4:	44812000 	mtc1	at,$f4
     1b8:	3c060000 	lui	a2,0x0
     1bc:	24c60000 	addiu	a2,a2,0
     1c0:	260400b4 	addiu	a0,s0,180
     1c4:	24050000 	li	a1,0
     1c8:	3c0741a0 	lui	a3,0x41a0
     1cc:	0c000000 	jal	0 <func_80A6B250>
     1d0:	e604006c 	swc1	$f4,108(s0)
     1d4:	8e0e0028 	lw	t6,40(s0)
     1d8:	3c01428c 	lui	at,0x428c
     1dc:	8e0f0024 	lw	t7,36(s0)
     1e0:	ae0e003c 	sw	t6,60(s0)
     1e4:	c608003c 	lwc1	$f8,60(s0)
     1e8:	44815000 	mtc1	at,$f10
     1ec:	ae0f0038 	sw	t7,56(s0)
     1f0:	44803000 	mtc1	zero,$f6
     1f4:	460a4400 	add.s	$f16,$f8,$f10
     1f8:	8e0f002c 	lw	t7,44(s0)
     1fc:	ae00014c 	sw	zero,332(s0)
     200:	ae000150 	sw	zero,336(s0)
     204:	e610003c 	swc1	$f16,60(s0)
     208:	26050228 	addiu	a1,s0,552
     20c:	e6060068 	swc1	$f6,104(s0)
     210:	ae0f0040 	sw	t7,64(s0)
     214:	afa50028 	sw	a1,40(sp)
     218:	0c000000 	jal	0 <func_80A6B250>
     21c:	8fa4003c 	lw	a0,60(sp)
     220:	3c070000 	lui	a3,0x0
     224:	8fa50028 	lw	a1,40(sp)
     228:	24e70044 	addiu	a3,a3,68
     22c:	8fa4003c 	lw	a0,60(sp)
     230:	0c000000 	jal	0 <func_80A6B250>
     234:	02003025 	move	a2,s0
     238:	26050274 	addiu	a1,s0,628
     23c:	afa50028 	sw	a1,40(sp)
     240:	0c000000 	jal	0 <func_80A6B250>
     244:	8fa4003c 	lw	a0,60(sp)
     248:	3c070000 	lui	a3,0x0
     24c:	26180294 	addiu	t8,s0,660
     250:	8fa50028 	lw	a1,40(sp)
     254:	afb80010 	sw	t8,16(sp)
     258:	24e700c0 	addiu	a3,a3,192
     25c:	8fa4003c 	lw	a0,60(sp)
     260:	0c000000 	jal	0 <func_80A6B250>
     264:	02003025 	move	a2,s0
     268:	260502d4 	addiu	a1,s0,724
     26c:	afa50028 	sw	a1,40(sp)
     270:	0c000000 	jal	0 <func_80A6B250>
     274:	8fa4003c 	lw	a0,60(sp)
     278:	3c070000 	lui	a3,0x0
     27c:	8fa50028 	lw	a1,40(sp)
     280:	24e70070 	addiu	a3,a3,112
     284:	8fa4003c 	lw	a0,60(sp)
     288:	0c000000 	jal	0 <func_80A6B250>
     28c:	02003025 	move	a2,s0
     290:	3c060000 	lui	a2,0x0
     294:	24c600d0 	addiu	a2,a2,208
     298:	26040098 	addiu	a0,s0,152
     29c:	0c000000 	jal	0 <func_80A6B250>
     2a0:	00002825 	move	a1,zero
     2a4:	8fb9003c 	lw	t9,60(sp)
     2a8:	24010063 	li	at,99
     2ac:	872200a4 	lh	v0,164(t9)
     2b0:	5441007a 	bnel	v0,at,49c <EnHorseNormal_Init+0x31c>
     2b4:	24010036 	li	at,54
     2b8:	86080034 	lh	t0,52(s0)
     2bc:	3c020000 	lui	v0,0x0
     2c0:	24420000 	addiu	v0,v0,0
     2c4:	11000004 	beqz	t0,2d8 <EnHorseNormal_Init+0x158>
     2c8:	00000000 	nop
     2cc:	8c490010 	lw	t1,16(v0)
     2d0:	51200006 	beqzl	t1,2ec <EnHorseNormal_Init+0x16c>
     2d4:	8c4a0004 	lw	t2,4(v0)
     2d8:	0c000000 	jal	0 <func_80A6B250>
     2dc:	02002025 	move	a0,s0
     2e0:	100000de 	b	65c <EnHorseNormal_Init+0x4dc>
     2e4:	8fbf0024 	lw	ra,36(sp)
     2e8:	8c4a0004 	lw	t2,4(v0)
     2ec:	11400015 	beqz	t2,344 <EnHorseNormal_Init+0x1c4>
     2f0:	00000000 	nop
     2f4:	0c000000 	jal	0 <func_80A6B250>
     2f8:	24040014 	li	a0,20
     2fc:	5040000a 	beqzl	v0,328 <EnHorseNormal_Init+0x1a8>
     300:	860c0034 	lh	t4,52(s0)
     304:	860b0034 	lh	t3,52(s0)
     308:	24010003 	li	at,3
     30c:	51610026 	beql	t3,at,3a8 <EnHorseNormal_Init+0x228>
     310:	a60000b8 	sh	zero,184(s0)
     314:	0c000000 	jal	0 <func_80A6B250>
     318:	02002025 	move	a0,s0
     31c:	100000cf 	b	65c <EnHorseNormal_Init+0x4dc>
     320:	8fbf0024 	lw	ra,36(sp)
     324:	860c0034 	lh	t4,52(s0)
     328:	24010001 	li	at,1
     32c:	5181001e 	beql	t4,at,3a8 <EnHorseNormal_Init+0x228>
     330:	a60000b8 	sh	zero,184(s0)
     334:	0c000000 	jal	0 <func_80A6B250>
     338:	02002025 	move	a0,s0
     33c:	100000c7 	b	65c <EnHorseNormal_Init+0x4dc>
     340:	8fbf0024 	lw	ra,36(sp)
     344:	0c000000 	jal	0 <func_80A6B250>
     348:	24040018 	li	a0,24
     34c:	14400005 	bnez	v0,364 <EnHorseNormal_Init+0x1e4>
     350:	3c0d0000 	lui	t5,0x0
     354:	8dad0000 	lw	t5,0(t5)
     358:	85ae0556 	lh	t6,1366(t5)
     35c:	51c0000a 	beqzl	t6,388 <EnHorseNormal_Init+0x208>
     360:	86180034 	lh	t8,52(s0)
     364:	860f0034 	lh	t7,52(s0)
     368:	24010007 	li	at,7
     36c:	51e1000e 	beql	t7,at,3a8 <EnHorseNormal_Init+0x228>
     370:	a60000b8 	sh	zero,184(s0)
     374:	0c000000 	jal	0 <func_80A6B250>
     378:	02002025 	move	a0,s0
     37c:	100000b7 	b	65c <EnHorseNormal_Init+0x4dc>
     380:	8fbf0024 	lw	ra,36(sp)
     384:	86180034 	lh	t8,52(s0)
     388:	24010005 	li	at,5
     38c:	53010006 	beql	t8,at,3a8 <EnHorseNormal_Init+0x228>
     390:	a60000b8 	sh	zero,184(s0)
     394:	0c000000 	jal	0 <func_80A6B250>
     398:	02002025 	move	a0,s0
     39c:	100000af 	b	65c <EnHorseNormal_Init+0x4dc>
     3a0:	8fbf0024 	lw	ra,36(sp)
     3a4:	a60000b8 	sh	zero,184(s0)
     3a8:	860200b8 	lh	v0,184(s0)
     3ac:	3c060000 	lui	a2,0x0
     3b0:	3c070000 	lui	a3,0x0
     3b4:	a6020034 	sh	v0,52(s0)
     3b8:	a6020018 	sh	v0,24(s0)
     3bc:	8fa4003c 	lw	a0,60(sp)
     3c0:	24e70000 	addiu	a3,a3,0
     3c4:	24c60000 	addiu	a2,a2,0
     3c8:	0c000000 	jal	0 <func_80A6B250>
     3cc:	26050154 	addiu	a1,s0,340
     3d0:	8e190150 	lw	t9,336(s0)
     3d4:	3c050000 	lui	a1,0x0
     3d8:	260401a0 	addiu	a0,s0,416
     3dc:	00194080 	sll	t0,t9,0x2
     3e0:	00a82821 	addu	a1,a1,t0
     3e4:	0c000000 	jal	0 <func_80A6B250>
     3e8:	8ca50020 	lw	a1,32(a1)
     3ec:	3c010000 	lui	at,0x0
     3f0:	c4320050 	lwc1	$f18,80(at)
     3f4:	c6000024 	lwc1	$f0,36(s0)
     3f8:	46009032 	c.eq.s	$f18,$f0
     3fc:	00000000 	nop
     400:	4502000e 	bc1fl	43c <EnHorseNormal_Init+0x2bc>
     404:	3c01445c 	lui	at,0x445c
     408:	44802000 	mtc1	zero,$f4
     40c:	c6060028 	lwc1	$f6,40(s0)
     410:	3c010000 	lui	at,0x0
     414:	46062032 	c.eq.s	$f4,$f6
     418:	00000000 	nop
     41c:	45020007 	bc1fl	43c <EnHorseNormal_Init+0x2bc>
     420:	3c01445c 	lui	at,0x445c
     424:	c4280054 	lwc1	$f8,84(at)
     428:	c60a002c 	lwc1	$f10,44(s0)
     42c:	460a4032 	c.eq.s	$f8,$f10
     430:	00000000 	nop
     434:	45010014 	bc1t	488 <EnHorseNormal_Init+0x308>
     438:	3c01445c 	lui	at,0x445c
     43c:	44818000 	mtc1	at,$f16
     440:	00000000 	nop
     444:	46008032 	c.eq.s	$f16,$f0
     448:	00000000 	nop
     44c:	45020075 	bc1fl	624 <EnHorseNormal_Init+0x4a4>
     450:	8602001c 	lh	v0,28(s0)
     454:	44809000 	mtc1	zero,$f18
     458:	c6040028 	lwc1	$f4,40(s0)
     45c:	3c010000 	lui	at,0x0
     460:	46049032 	c.eq.s	$f18,$f4
     464:	00000000 	nop
     468:	4502006e 	bc1fl	624 <EnHorseNormal_Init+0x4a4>
     46c:	8602001c 	lh	v0,28(s0)
     470:	c4260058 	lwc1	$f6,88(at)
     474:	c608002c 	lwc1	$f8,44(s0)
     478:	46083032 	c.eq.s	$f6,$f8
     47c:	00000000 	nop
     480:	45020068 	bc1fl	624 <EnHorseNormal_Init+0x4a4>
     484:	8602001c 	lh	v0,28(s0)
     488:	0c000000 	jal	0 <func_80A6B250>
     48c:	02002025 	move	a0,s0
     490:	10000072 	b	65c <EnHorseNormal_Init+0x4dc>
     494:	8fbf0024 	lw	ra,36(sp)
     498:	24010036 	li	at,54
     49c:	5441001c 	bnel	v0,at,510 <EnHorseNormal_Init+0x390>
     4a0:	2401005d 	li	at,93
     4a4:	3c020000 	lui	v0,0x0
     4a8:	24420000 	addiu	v0,v0,0
     4ac:	8c490010 	lw	t1,16(v0)
     4b0:	8fa4003c 	lw	a0,60(sp)
     4b4:	26050154 	addiu	a1,s0,340
     4b8:	15200005 	bnez	t1,4d0 <EnHorseNormal_Init+0x350>
     4bc:	3c060000 	lui	a2,0x0
     4c0:	0c000000 	jal	0 <func_80A6B250>
     4c4:	02002025 	move	a0,s0
     4c8:	10000064 	b	65c <EnHorseNormal_Init+0x4dc>
     4cc:	8fbf0024 	lw	ra,36(sp)
     4d0:	3c070000 	lui	a3,0x0
     4d4:	24e70000 	addiu	a3,a3,0
     4d8:	0c000000 	jal	0 <func_80A6B250>
     4dc:	24c60000 	addiu	a2,a2,0
     4e0:	8e0a0150 	lw	t2,336(s0)
     4e4:	3c050000 	lui	a1,0x0
     4e8:	260401a0 	addiu	a0,s0,416
     4ec:	000a5880 	sll	t3,t2,0x2
     4f0:	00ab2821 	addu	a1,a1,t3
     4f4:	0c000000 	jal	0 <func_80A6B250>
     4f8:	8ca50020 	lw	a1,32(a1)
     4fc:	0c000000 	jal	0 <func_80A6B250>
     500:	02002025 	move	a0,s0
     504:	10000055 	b	65c <EnHorseNormal_Init+0x4dc>
     508:	8fbf0024 	lw	ra,36(sp)
     50c:	2401005d 	li	at,93
     510:	14410036 	bne	v0,at,5ec <EnHorseNormal_Init+0x46c>
     514:	8fa4003c 	lw	a0,60(sp)
     518:	3c010000 	lui	at,0x0
     51c:	c42a005c 	lwc1	$f10,92(at)
     520:	c6100024 	lwc1	$f16,36(s0)
     524:	3c060000 	lui	a2,0x0
     528:	3c010000 	lui	at,0x0
     52c:	46105032 	c.eq.s	$f10,$f16
     530:	24c60000 	addiu	a2,a2,0
     534:	8fa4003c 	lw	a0,60(sp)
     538:	26050154 	addiu	a1,s0,340
     53c:	45000020 	bc1f	5c0 <EnHorseNormal_Init+0x440>
     540:	3c070000 	lui	a3,0x0
     544:	c4320060 	lwc1	$f18,96(at)
     548:	c6040028 	lwc1	$f4,40(s0)
     54c:	3c010000 	lui	at,0x0
     550:	46049032 	c.eq.s	$f18,$f4
     554:	00000000 	nop
     558:	45000019 	bc1f	5c0 <EnHorseNormal_Init+0x440>
     55c:	00000000 	nop
     560:	c4260064 	lwc1	$f6,100(at)
     564:	c608002c 	lwc1	$f8,44(s0)
     568:	46083032 	c.eq.s	$f6,$f8
     56c:	00000000 	nop
     570:	45000013 	bc1f	5c0 <EnHorseNormal_Init+0x440>
     574:	00000000 	nop
     578:	3c060000 	lui	a2,0x0
     57c:	3c070000 	lui	a3,0x0
     580:	24e70000 	addiu	a3,a3,0
     584:	24c60000 	addiu	a2,a2,0
     588:	8fa4003c 	lw	a0,60(sp)
     58c:	0c000000 	jal	0 <func_80A6B250>
     590:	26050154 	addiu	a1,s0,340
     594:	8e0c0150 	lw	t4,336(s0)
     598:	3c050000 	lui	a1,0x0
     59c:	260401a0 	addiu	a0,s0,416
     5a0:	000c6880 	sll	t5,t4,0x2
     5a4:	00ad2821 	addu	a1,a1,t5
     5a8:	0c000000 	jal	0 <func_80A6B250>
     5ac:	8ca50020 	lw	a1,32(a1)
     5b0:	0c000000 	jal	0 <func_80A6B250>
     5b4:	02002025 	move	a0,s0
     5b8:	10000028 	b	65c <EnHorseNormal_Init+0x4dc>
     5bc:	8fbf0024 	lw	ra,36(sp)
     5c0:	0c000000 	jal	0 <func_80A6B250>
     5c4:	24e70000 	addiu	a3,a3,0
     5c8:	8e0e0150 	lw	t6,336(s0)
     5cc:	3c050000 	lui	a1,0x0
     5d0:	260401a0 	addiu	a0,s0,416
     5d4:	000e7880 	sll	t7,t6,0x2
     5d8:	00af2821 	addu	a1,a1,t7
     5dc:	0c000000 	jal	0 <func_80A6B250>
     5e0:	8ca50020 	lw	a1,32(a1)
     5e4:	1000000f 	b	624 <EnHorseNormal_Init+0x4a4>
     5e8:	8602001c 	lh	v0,28(s0)
     5ec:	3c060000 	lui	a2,0x0
     5f0:	3c070000 	lui	a3,0x0
     5f4:	24e70000 	addiu	a3,a3,0
     5f8:	24c60000 	addiu	a2,a2,0
     5fc:	0c000000 	jal	0 <func_80A6B250>
     600:	26050154 	addiu	a1,s0,340
     604:	8e180150 	lw	t8,336(s0)
     608:	3c050000 	lui	a1,0x0
     60c:	260401a0 	addiu	a0,s0,416
     610:	0018c880 	sll	t9,t8,0x2
     614:	00b92821 	addu	a1,a1,t9
     618:	0c000000 	jal	0 <func_80A6B250>
     61c:	8ca50020 	lw	a1,32(a1)
     620:	8602001c 	lh	v0,28(s0)
     624:	24010010 	li	at,16
     628:	304800f0 	andi	t0,v0,0xf0
     62c:	15010008 	bne	t0,at,650 <EnHorseNormal_Init+0x4d0>
     630:	3049000f 	andi	t1,v0,0xf
     634:	2401000f 	li	at,15
     638:	11210005 	beq	t1,at,650 <EnHorseNormal_Init+0x4d0>
     63c:	02002025 	move	a0,s0
     640:	0c000000 	jal	0 <func_80A6B250>
     644:	8fa5003c 	lw	a1,60(sp)
     648:	10000004 	b	65c <EnHorseNormal_Init+0x4dc>
     64c:	8fbf0024 	lw	ra,36(sp)
     650:	0c000000 	jal	0 <func_80A6B250>
     654:	02002025 	move	a0,s0
     658:	8fbf0024 	lw	ra,36(sp)
     65c:	8fb00020 	lw	s0,32(sp)
     660:	27bd0038 	addiu	sp,sp,56
     664:	03e00008 	jr	ra
     668:	00000000 	nop

0000066c <EnHorseNormal_Destroy>:
     66c:	27bdffe8 	addiu	sp,sp,-24
     670:	afa40018 	sw	a0,24(sp)
     674:	afa5001c 	sw	a1,28(sp)
     678:	00a02025 	move	a0,a1
     67c:	8fa50018 	lw	a1,24(sp)
     680:	afbf0014 	sw	ra,20(sp)
     684:	0c000000 	jal	0 <func_80A6B250>
     688:	24a50154 	addiu	a1,a1,340
     68c:	8fa50018 	lw	a1,24(sp)
     690:	8fa4001c 	lw	a0,28(sp)
     694:	0c000000 	jal	0 <func_80A6B250>
     698:	24a50228 	addiu	a1,a1,552
     69c:	8fa50018 	lw	a1,24(sp)
     6a0:	8fa4001c 	lw	a0,28(sp)
     6a4:	0c000000 	jal	0 <func_80A6B250>
     6a8:	24a502d4 	addiu	a1,a1,724
     6ac:	8fa50018 	lw	a1,24(sp)
     6b0:	8fa4001c 	lw	a0,28(sp)
     6b4:	0c000000 	jal	0 <func_80A6B250>
     6b8:	24a50274 	addiu	a1,a1,628
     6bc:	8fbf0014 	lw	ra,20(sp)
     6c0:	27bd0018 	addiu	sp,sp,24
     6c4:	03e00008 	jr	ra
     6c8:	00000000 	nop

000006cc <func_80A6B91C>:
     6cc:	27bdffc8 	addiu	sp,sp,-56
     6d0:	afbf002c 	sw	ra,44(sp)
     6d4:	afb00028 	sw	s0,40(sp)
     6d8:	afa5003c 	sw	a1,60(sp)
     6dc:	8c8e0004 	lw	t6,4(a0)
     6e0:	3c0140e0 	lui	at,0x40e0
     6e4:	44812000 	mtc1	at,$f4
     6e8:	24180004 	li	t8,4
     6ec:	24190006 	li	t9,6
     6f0:	35cf0010 	ori	t7,t6,0x10
     6f4:	00808025 	move	s0,a0
     6f8:	ac8f0004 	sw	t7,4(a0)
     6fc:	ac98014c 	sw	t8,332(a0)
     700:	ac990150 	sw	t9,336(a0)
     704:	ac800324 	sw	zero,804(a0)
     708:	0c000000 	jal	0 <func_80A6B250>
     70c:	e4840068 	swc1	$f4,104(a0)
     710:	e7a00030 	swc1	$f0,48(sp)
     714:	8e080150 	lw	t0,336(s0)
     718:	3c040000 	lui	a0,0x0
     71c:	00084880 	sll	t1,t0,0x2
     720:	00892021 	addu	a0,a0,t1
     724:	0c000000 	jal	0 <func_80A6B250>
     728:	8c840020 	lw	a0,32(a0)
     72c:	44823000 	mtc1	v0,$f6
     730:	8e0a0150 	lw	t2,336(s0)
     734:	44800000 	mtc1	zero,$f0
     738:	46803220 	cvt.s.w	$f8,$f6
     73c:	3c050000 	lui	a1,0x0
     740:	000a5880 	sll	t3,t2,0x2
     744:	00ab2821 	addu	a1,a1,t3
     748:	240c0002 	li	t4,2
     74c:	44070000 	mfc1	a3,$f0
     750:	afac0014 	sw	t4,20(sp)
     754:	8ca50020 	lw	a1,32(a1)
     758:	e7a80010 	swc1	$f8,16(sp)
     75c:	260401a0 	addiu	a0,s0,416
     760:	8fa60030 	lw	a2,48(sp)
     764:	0c000000 	jal	0 <func_80A6B250>
     768:	e7a00018 	swc1	$f0,24(sp)
     76c:	8fbf002c 	lw	ra,44(sp)
     770:	8fb00028 	lw	s0,40(sp)
     774:	27bd0038 	addiu	sp,sp,56
     778:	03e00008 	jr	ra
     77c:	00000000 	nop

00000780 <EnHorseNormal_FollowPath>:
     780:	27bdffb0 	addiu	sp,sp,-80
     784:	afbf002c 	sw	ra,44(sp)
     788:	afb00028 	sw	s0,40(sp)
     78c:	848f001c 	lh	t7,28(a0)
     790:	3c0e0001 	lui	t6,0x1
     794:	01c57021 	addu	t6,t6,a1
     798:	8dce1e08 	lw	t6,7688(t6)
     79c:	31f8000f 	andi	t8,t7,0xf
     7a0:	0018c8c0 	sll	t9,t8,0x3
     7a4:	01d93021 	addu	a2,t6,t9
     7a8:	8cc30004 	lw	v1,4(a2)
     7ac:	3c0b0000 	lui	t3,0x0
     7b0:	8c8d0324 	lw	t5,804(a0)
     7b4:	00034100 	sll	t0,v1,0x4
     7b8:	00084f02 	srl	t1,t0,0x1c
     7bc:	00095080 	sll	t2,t1,0x2
     7c0:	016a5821 	addu	t3,t3,t2
     7c4:	3c0100ff 	lui	at,0xff
     7c8:	8d6b0000 	lw	t3,0(t3)
     7cc:	3421ffff 	ori	at,at,0xffff
     7d0:	00616024 	and	t4,v1,at
     7d4:	000d7880 	sll	t7,t5,0x2
     7d8:	3c018000 	lui	at,0x8000
     7dc:	01ed7823 	subu	t7,t7,t5
     7e0:	016c1021 	addu	v0,t3,t4
     7e4:	00411021 	addu	v0,v0,at
     7e8:	000f7840 	sll	t7,t7,0x1
     7ec:	004f1021 	addu	v0,v0,t7
     7f0:	84580000 	lh	t8,0(v0)
     7f4:	844e0004 	lh	t6,4(v0)
     7f8:	c4880024 	lwc1	$f8,36(a0)
     7fc:	44982000 	mtc1	t8,$f4
     800:	448e5000 	mtc1	t6,$f10
     804:	c492002c 	lwc1	$f18,44(a0)
     808:	468021a0 	cvt.s.w	$f6,$f4
     80c:	00808025 	move	s0,a0
     810:	afa6004c 	sw	a2,76(sp)
     814:	46805420 	cvt.s.w	$f16,$f10
     818:	46083301 	sub.s	$f12,$f6,$f8
     81c:	46128381 	sub.s	$f14,$f16,$f18
     820:	e7ac0044 	swc1	$f12,68(sp)
     824:	0c000000 	jal	0 <func_80A6B250>
     828:	e7ae0040 	swc1	$f14,64(sp)
     82c:	3c010000 	lui	at,0x0
     830:	c4240068 	lwc1	$f4,104(at)
     834:	24080001 	li	t0,1
     838:	afa80010 	sw	t0,16(sp)
     83c:	46040182 	mul.s	$f6,$f0,$f4
     840:	26040032 	addiu	a0,s0,50
     844:	2406000a 	li	a2,10
     848:	240707d0 	li	a3,2000
     84c:	4600320d 	trunc.w.s	$f8,$f6
     850:	44054000 	mfc1	a1,$f8
     854:	00000000 	nop
     858:	00052c00 	sll	a1,a1,0x10
     85c:	0c000000 	jal	0 <func_80A6B250>
     860:	00052c03 	sra	a1,a1,0x10
     864:	c7ac0044 	lwc1	$f12,68(sp)
     868:	c7ae0040 	lwc1	$f14,64(sp)
     86c:	3c014416 	lui	at,0x4416
     870:	460c6282 	mul.s	$f10,$f12,$f12
     874:	44812000 	mtc1	at,$f4
     878:	86090032 	lh	t1,50(s0)
     87c:	460e7402 	mul.s	$f16,$f14,$f14
     880:	a60900b6 	sh	t1,182(s0)
     884:	46105480 	add.s	$f18,$f10,$f16
     888:	4604903c 	c.lt.s	$f18,$f4
     88c:	00000000 	nop
     890:	4500000a 	bc1f	8bc <EnHorseNormal_FollowPath+0x13c>
     894:	00000000 	nop
     898:	8e0a0324 	lw	t2,804(s0)
     89c:	254b0001 	addiu	t3,t2,1
     8a0:	ae0b0324 	sw	t3,804(s0)
     8a4:	8fad004c 	lw	t5,76(sp)
     8a8:	91af0000 	lbu	t7,0(t5)
     8ac:	016f082a 	slt	at,t3,t7
     8b0:	14200002 	bnez	at,8bc <EnHorseNormal_FollowPath+0x13c>
     8b4:	00000000 	nop
     8b8:	ae000324 	sw	zero,804(s0)
     8bc:	0c000000 	jal	0 <func_80A6B250>
     8c0:	02002025 	move	a0,s0
     8c4:	e60001bc 	swc1	$f0,444(s0)
     8c8:	260401a0 	addiu	a0,s0,416
     8cc:	0c000000 	jal	0 <func_80A6B250>
     8d0:	afa40030 	sw	a0,48(sp)
     8d4:	5040001d 	beqzl	v0,94c <EnHorseNormal_FollowPath+0x1cc>
     8d8:	8fbf002c 	lw	ra,44(sp)
     8dc:	0c000000 	jal	0 <func_80A6B250>
     8e0:	02002025 	move	a0,s0
     8e4:	e7a00038 	swc1	$f0,56(sp)
     8e8:	8e180150 	lw	t8,336(s0)
     8ec:	3c040000 	lui	a0,0x0
     8f0:	00187080 	sll	t6,t8,0x2
     8f4:	008e2021 	addu	a0,a0,t6
     8f8:	0c000000 	jal	0 <func_80A6B250>
     8fc:	8c840020 	lw	a0,32(a0)
     900:	44823000 	mtc1	v0,$f6
     904:	8e190150 	lw	t9,336(s0)
     908:	44800000 	mtc1	zero,$f0
     90c:	46803220 	cvt.s.w	$f8,$f6
     910:	3c050000 	lui	a1,0x0
     914:	00194080 	sll	t0,t9,0x2
     918:	00a82821 	addu	a1,a1,t0
     91c:	24090002 	li	t1,2
     920:	44070000 	mfc1	a3,$f0
     924:	afa90014 	sw	t1,20(sp)
     928:	8ca50020 	lw	a1,32(a1)
     92c:	e7a80010 	swc1	$f8,16(sp)
     930:	8fa40030 	lw	a0,48(sp)
     934:	8fa60038 	lw	a2,56(sp)
     938:	0c000000 	jal	0 <func_80A6B250>
     93c:	e7a00018 	swc1	$f0,24(sp)
     940:	0c000000 	jal	0 <func_80A6B250>
     944:	02002025 	move	a0,s0
     948:	8fbf002c 	lw	ra,44(sp)
     94c:	8fb00028 	lw	s0,40(sp)
     950:	27bd0050 	addiu	sp,sp,80
     954:	03e00008 	jr	ra
     958:	00000000 	nop

0000095c <EnHorseNormal_NextAnimation>:
     95c:	27bdffe8 	addiu	sp,sp,-24
     960:	afbf0014 	sw	ra,20(sp)
     964:	8c8e0150 	lw	t6,336(a0)
     968:	00803025 	move	a2,a0
     96c:	ac80014c 	sw	zero,332(a0)
     970:	25c20001 	addiu	v0,t6,1
     974:	28410009 	slti	at,v0,9
     978:	14200003 	bnez	at,988 <EnHorseNormal_NextAnimation+0x2c>
     97c:	ac820150 	sw	v0,336(a0)
     980:	ac800150 	sw	zero,336(a0)
     984:	00001025 	move	v0,zero
     988:	0002c080 	sll	t8,v0,0x2
     98c:	3c050000 	lui	a1,0x0
     990:	00b82821 	addu	a1,a1,t8
     994:	8ca50020 	lw	a1,32(a1)
     998:	0c000000 	jal	0 <func_80A6B250>
     99c:	24c401a0 	addiu	a0,a2,416
     9a0:	8fbf0014 	lw	ra,20(sp)
     9a4:	27bd0018 	addiu	sp,sp,24
     9a8:	03e00008 	jr	ra
     9ac:	00000000 	nop

000009b0 <EnHorseNormal_CycleAnimations>:
     9b0:	27bdffe8 	addiu	sp,sp,-24
     9b4:	44802000 	mtc1	zero,$f4
     9b8:	afa5001c 	sw	a1,28(sp)
     9bc:	afbf0014 	sw	ra,20(sp)
     9c0:	afa40018 	sw	a0,24(sp)
     9c4:	00802825 	move	a1,a0
     9c8:	e4840068 	swc1	$f4,104(a0)
     9cc:	afa50018 	sw	a1,24(sp)
     9d0:	0c000000 	jal	0 <func_80A6B250>
     9d4:	248401a0 	addiu	a0,a0,416
     9d8:	10400003 	beqz	v0,9e8 <EnHorseNormal_CycleAnimations+0x38>
     9dc:	8fa50018 	lw	a1,24(sp)
     9e0:	0c000000 	jal	0 <func_80A6B250>
     9e4:	00a02025 	move	a0,a1
     9e8:	8fbf0014 	lw	ra,20(sp)
     9ec:	27bd0018 	addiu	sp,sp,24
     9f0:	03e00008 	jr	ra
     9f4:	00000000 	nop

000009f8 <func_80A6BC48>:
     9f8:	27bdffc8 	addiu	sp,sp,-56
     9fc:	afbf002c 	sw	ra,44(sp)
     a00:	afb00028 	sw	s0,40(sp)
     a04:	44800000 	mtc1	zero,$f0
     a08:	240e0001 	li	t6,1
     a0c:	00808025 	move	s0,a0
     a10:	ac8e014c 	sw	t6,332(a0)
     a14:	ac800150 	sw	zero,336(a0)
     a18:	a480021c 	sh	zero,540(a0)
     a1c:	a480021e 	sh	zero,542(a0)
     a20:	e4800068 	swc1	$f0,104(a0)
     a24:	0c000000 	jal	0 <func_80A6B250>
     a28:	e4800218 	swc1	$f0,536(a0)
     a2c:	e7a00030 	swc1	$f0,48(sp)
     a30:	8e0f0150 	lw	t7,336(s0)
     a34:	3c040000 	lui	a0,0x0
     a38:	000fc080 	sll	t8,t7,0x2
     a3c:	00982021 	addu	a0,a0,t8
     a40:	0c000000 	jal	0 <func_80A6B250>
     a44:	8c840020 	lw	a0,32(a0)
     a48:	44822000 	mtc1	v0,$f4
     a4c:	8e190150 	lw	t9,336(s0)
     a50:	44800000 	mtc1	zero,$f0
     a54:	468021a0 	cvt.s.w	$f6,$f4
     a58:	3c050000 	lui	a1,0x0
     a5c:	00194080 	sll	t0,t9,0x2
     a60:	00a82821 	addu	a1,a1,t0
     a64:	24090002 	li	t1,2
     a68:	44070000 	mfc1	a3,$f0
     a6c:	afa90014 	sw	t1,20(sp)
     a70:	8ca50020 	lw	a1,32(a1)
     a74:	e7a60010 	swc1	$f6,16(sp)
     a78:	260401a0 	addiu	a0,s0,416
     a7c:	8fa60030 	lw	a2,48(sp)
     a80:	0c000000 	jal	0 <func_80A6B250>
     a84:	e7a00018 	swc1	$f0,24(sp)
     a88:	8fbf002c 	lw	ra,44(sp)
     a8c:	8fb00028 	lw	s0,40(sp)
     a90:	27bd0038 	addiu	sp,sp,56
     a94:	03e00008 	jr	ra
     a98:	00000000 	nop

00000a9c <func_80A6BCEC>:
     a9c:	27bdffe0 	addiu	sp,sp,-32
     aa0:	afbf001c 	sw	ra,28(sp)
     aa4:	afa40020 	sw	a0,32(sp)
     aa8:	8c820150 	lw	v0,336(a0)
     aac:	24010005 	li	at,5
     ab0:	00807025 	move	t6,a0
     ab4:	1441000c 	bne	v0,at,ae8 <func_80A6BCEC+0x4c>
     ab8:	3c070000 	lui	a3,0x0
     abc:	3c0f0000 	lui	t7,0x0
     ac0:	24e70000 	addiu	a3,a3,0
     ac4:	25ef0000 	addiu	t7,t7,0
     ac8:	afaf0014 	sw	t7,20(sp)
     acc:	afa70010 	sw	a3,16(sp)
     ad0:	24042804 	li	a0,10244
     ad4:	25c500e4 	addiu	a1,t6,228
     ad8:	0c000000 	jal	0 <func_80A6B250>
     adc:	24060004 	li	a2,4
     ae0:	1000000f 	b	b20 <func_80A6BCEC+0x84>
     ae4:	8fbf001c 	lw	ra,28(sp)
     ae8:	24010006 	li	at,6
     aec:	1441000b 	bne	v0,at,b1c <func_80A6BCEC+0x80>
     af0:	3c070000 	lui	a3,0x0
     af4:	8fa50020 	lw	a1,32(sp)
     af8:	3c180000 	lui	t8,0x0
     afc:	24e70000 	addiu	a3,a3,0
     b00:	27180000 	addiu	t8,t8,0
     b04:	afb80014 	sw	t8,20(sp)
     b08:	afa70010 	sw	a3,16(sp)
     b0c:	24042804 	li	a0,10244
     b10:	24060004 	li	a2,4
     b14:	0c000000 	jal	0 <func_80A6B250>
     b18:	24a500e4 	addiu	a1,a1,228
     b1c:	8fbf001c 	lw	ra,28(sp)
     b20:	27bd0020 	addiu	sp,sp,32
     b24:	03e00008 	jr	ra
     b28:	00000000 	nop

00000b2c <func_80A6BD7C>:
     b2c:	27bdffd8 	addiu	sp,sp,-40
     b30:	afbf0024 	sw	ra,36(sp)
     b34:	afb00020 	sw	s0,32(sp)
     b38:	8c830150 	lw	v1,336(a0)
     b3c:	00808025 	move	s0,a0
     b40:	c48001b8 	lwc1	$f0,440(a0)
     b44:	14600018 	bnez	v1,ba8 <func_80A6BD7C+0x7c>
     b48:	3c0141e0 	lui	at,0x41e0
     b4c:	44812000 	mtc1	at,$f4
     b50:	00000000 	nop
     b54:	4600203c 	c.lt.s	$f4,$f0
     b58:	00000000 	nop
     b5c:	45020013 	bc1fl	bac <func_80A6BD7C+0x80>
     b60:	24010003 	li	at,3
     b64:	948201e4 	lhu	v0,484(a0)
     b68:	3c070000 	lui	a3,0x0
     b6c:	24e70000 	addiu	a3,a3,0
     b70:	304e0001 	andi	t6,v0,0x1
     b74:	15c0000c 	bnez	t6,ba8 <func_80A6BD7C+0x7c>
     b78:	344f0001 	ori	t7,v0,0x1
     b7c:	a48f01e4 	sh	t7,484(a0)
     b80:	3c180000 	lui	t8,0x0
     b84:	27180000 	addiu	t8,t8,0
     b88:	afb80014 	sw	t8,20(sp)
     b8c:	afa70010 	sw	a3,16(sp)
     b90:	2404282c 	li	a0,10284
     b94:	260500e4 	addiu	a1,s0,228
     b98:	0c000000 	jal	0 <func_80A6B250>
     b9c:	24060004 	li	a2,4
     ba0:	1000001a 	b	c0c <func_80A6BD7C+0xe0>
     ba4:	8fbf0024 	lw	ra,36(sp)
     ba8:	24010003 	li	at,3
     bac:	14610016 	bne	v1,at,c08 <func_80A6BD7C+0xdc>
     bb0:	3c0141c8 	lui	at,0x41c8
     bb4:	44813000 	mtc1	at,$f6
     bb8:	00000000 	nop
     bbc:	4600303c 	c.lt.s	$f6,$f0
     bc0:	00000000 	nop
     bc4:	45020011 	bc1fl	c0c <func_80A6BD7C+0xe0>
     bc8:	8fbf0024 	lw	ra,36(sp)
     bcc:	960201e4 	lhu	v0,484(s0)
     bd0:	3c070000 	lui	a3,0x0
     bd4:	24e70000 	addiu	a3,a3,0
     bd8:	30590002 	andi	t9,v0,0x2
     bdc:	1720000a 	bnez	t9,c08 <func_80A6BD7C+0xdc>
     be0:	34480002 	ori	t0,v0,0x2
     be4:	3c090000 	lui	t1,0x0
     be8:	a60801e4 	sh	t0,484(s0)
     bec:	25290000 	addiu	t1,t1,0
     bf0:	afa90014 	sw	t1,20(sp)
     bf4:	afa70010 	sw	a3,16(sp)
     bf8:	2404282b 	li	a0,10283
     bfc:	260500e4 	addiu	a1,s0,228
     c00:	0c000000 	jal	0 <func_80A6B250>
     c04:	24060004 	li	a2,4
     c08:	8fbf0024 	lw	ra,36(sp)
     c0c:	8fb00020 	lw	s0,32(sp)
     c10:	27bd0028 	addiu	sp,sp,40
     c14:	03e00008 	jr	ra
     c18:	00000000 	nop

00000c1c <EnHorseNormal_Wander>:
     c1c:	27bdffb0 	addiu	sp,sp,-80
     c20:	afbf002c 	sw	ra,44(sp)
     c24:	afb00028 	sw	s0,40(sp)
     c28:	afa50054 	sw	a1,84(sp)
     c2c:	8c830150 	lw	v1,336(a0)
     c30:	3c020000 	lui	v0,0x0
     c34:	00808025 	move	s0,a0
     c38:	00037080 	sll	t6,v1,0x2
     c3c:	004e1021 	addu	v0,v0,t6
     c40:	8c4201c0 	lw	v0,448(v0)
     c44:	24010001 	li	at,1
     c48:	02002025 	move	a0,s0
     c4c:	10400009 	beqz	v0,c74 <EnHorseNormal_Wander+0x58>
     c50:	00604025 	move	t0,v1
     c54:	10410010 	beq	v0,at,c98 <EnHorseNormal_Wander+0x7c>
     c58:	24010002 	li	at,2
     c5c:	104100ac 	beq	v0,at,f10 <EnHorseNormal_Wander+0x2f4>
     c60:	24010003 	li	at,3
     c64:	104100aa 	beq	v0,at,f10 <EnHorseNormal_Wander+0x2f4>
     c68:	00000000 	nop
     c6c:	100000a8 	b	f10 <EnHorseNormal_Wander+0x2f4>
     c70:	00000000 	nop
     c74:	0c000000 	jal	0 <func_80A6B250>
     c78:	afa8004c 	sw	t0,76(sp)
     c7c:	44802000 	mtc1	zero,$f4
     c80:	44803000 	mtc1	zero,$f6
     c84:	8fa8004c 	lw	t0,76(sp)
     c88:	8e030150 	lw	v1,336(s0)
     c8c:	e6040068 	swc1	$f4,104(s0)
     c90:	1000009f 	b	f10 <EnHorseNormal_Wander+0x2f4>
     c94:	e6060218 	swc1	$f6,536(s0)
     c98:	0c000000 	jal	0 <func_80A6B250>
     c9c:	00000000 	nop
     ca0:	3c010000 	lui	at,0x0
     ca4:	c428006c 	lwc1	$f8,108(at)
     ca8:	4608003c 	c.lt.s	$f0,$f8
     cac:	00000000 	nop
     cb0:	4502000a 	bc1fl	cdc <EnHorseNormal_Wander+0xc0>
     cb4:	c6040068 	lwc1	$f4,104(s0)
     cb8:	0c000000 	jal	0 <func_80A6B250>
     cbc:	00000000 	nop
     cc0:	46000280 	add.s	$f10,$f0,$f0
     cc4:	3c013f80 	lui	at,0x3f80
     cc8:	44818000 	mtc1	at,$f16
     ccc:	00000000 	nop
     cd0:	46105481 	sub.s	$f18,$f10,$f16
     cd4:	e6120218 	swc1	$f18,536(s0)
     cd8:	c6040068 	lwc1	$f4,104(s0)
     cdc:	c6060218 	lwc1	$f6,536(s0)
     ce0:	44805000 	mtc1	zero,$f10
     ce4:	3c014040 	lui	at,0x4040
     ce8:	46062200 	add.s	$f8,$f4,$f6
     cec:	e6080068 	swc1	$f8,104(s0)
     cf0:	c6000068 	lwc1	$f0,104(s0)
     cf4:	460a003e 	c.le.s	$f0,$f10
     cf8:	00000000 	nop
     cfc:	45020008 	bc1fl	d20 <EnHorseNormal_Wander+0x104>
     d00:	44812000 	mtc1	at,$f4
     d04:	44808000 	mtc1	zero,$f16
     d08:	44809000 	mtc1	zero,$f18
     d0c:	00004025 	move	t0,zero
     d10:	e6100068 	swc1	$f16,104(s0)
     d14:	1000001c 	b	d88 <EnHorseNormal_Wander+0x16c>
     d18:	e6120218 	swc1	$f18,536(s0)
     d1c:	44812000 	mtc1	at,$f4
     d20:	3c0140c0 	lui	at,0x40c0
     d24:	4604003c 	c.lt.s	$f0,$f4
     d28:	00000000 	nop
     d2c:	45020006 	bc1fl	d48 <EnHorseNormal_Wander+0x12c>
     d30:	44813000 	mtc1	at,$f6
     d34:	0c000000 	jal	0 <func_80A6B250>
     d38:	02002025 	move	a0,s0
     d3c:	10000012 	b	d88 <EnHorseNormal_Wander+0x16c>
     d40:	24080004 	li	t0,4
     d44:	44813000 	mtc1	at,$f6
     d48:	3c014100 	lui	at,0x4100
     d4c:	4606003c 	c.lt.s	$f0,$f6
     d50:	00000000 	nop
     d54:	45020004 	bc1fl	d68 <EnHorseNormal_Wander+0x14c>
     d58:	44811000 	mtc1	at,$f2
     d5c:	1000000a 	b	d88 <EnHorseNormal_Wander+0x16c>
     d60:	24080005 	li	t0,5
     d64:	44811000 	mtc1	at,$f2
     d68:	24080006 	li	t0,6
     d6c:	4602003c 	c.lt.s	$f0,$f2
     d70:	00000000 	nop
     d74:	45020004 	bc1fl	d88 <EnHorseNormal_Wander+0x16c>
     d78:	e6020068 	swc1	$f2,104(s0)
     d7c:	10000002 	b	d88 <EnHorseNormal_Wander+0x16c>
     d80:	24080006 	li	t0,6
     d84:	e6020068 	swc1	$f2,104(s0)
     d88:	0c000000 	jal	0 <func_80A6B250>
     d8c:	afa8004c 	sw	t0,76(sp)
     d90:	3c010000 	lui	at,0x0
     d94:	c4280070 	lwc1	$f8,112(at)
     d98:	8fa8004c 	lw	t0,76(sp)
     d9c:	4608003c 	c.lt.s	$f0,$f8
     da0:	00000000 	nop
     da4:	45010010 	bc1t	de8 <EnHorseNormal_Wander+0x1cc>
     da8:	00000000 	nop
     dac:	8602021e 	lh	v0,542(s0)
     db0:	5440002c 	bnezl	v0,e64 <EnHorseNormal_Wander+0x248>
     db4:	8619021c 	lh	t9,540(s0)
     db8:	960f0088 	lhu	t7,136(s0)
     dbc:	31f80008 	andi	t8,t7,0x8
     dc0:	17000009 	bnez	t8,de8 <EnHorseNormal_Wander+0x1cc>
     dc4:	00000000 	nop
     dc8:	9219023a 	lbu	t9,570(s0)
     dcc:	33290002 	andi	t1,t9,0x2
     dd0:	15200005 	bnez	t1,de8 <EnHorseNormal_Wander+0x1cc>
     dd4:	00000000 	nop
     dd8:	920a0286 	lbu	t2,646(s0)
     ddc:	314b0002 	andi	t3,t2,0x2
     de0:	51600020 	beqzl	t3,e64 <EnHorseNormal_Wander+0x248>
     de4:	8619021c 	lh	t9,540(s0)
     de8:	0c000000 	jal	0 <func_80A6B250>
     dec:	afa8004c 	sw	t0,76(sp)
     df0:	3c0141f0 	lui	at,0x41f0
     df4:	44815000 	mtc1	at,$f10
     df8:	860c021e 	lh	t4,542(s0)
     dfc:	3c014170 	lui	at,0x4170
     e00:	460a0402 	mul.s	$f16,$f0,$f10
     e04:	448c3000 	mtc1	t4,$f6
     e08:	44819000 	mtc1	at,$f18
     e0c:	8fa8004c 	lw	t0,76(sp)
     e10:	240f0032 	li	t7,50
     e14:	46803220 	cvt.s.w	$f8,$f6
     e18:	46128101 	sub.s	$f4,$f16,$f18
     e1c:	46044280 	add.s	$f10,$f8,$f4
     e20:	4600540d 	trunc.w.s	$f16,$f10
     e24:	440e8000 	mfc1	t6,$f16
     e28:	00000000 	nop
     e2c:	a60e021e 	sh	t6,542(s0)
     e30:	8602021e 	lh	v0,542(s0)
     e34:	28410033 	slti	at,v0,51
     e38:	54200005 	bnezl	at,e50 <EnHorseNormal_Wander+0x234>
     e3c:	2841ffce 	slti	at,v0,-50
     e40:	a60f021e 	sh	t7,542(s0)
     e44:	10000006 	b	e60 <EnHorseNormal_Wander+0x244>
     e48:	8602021e 	lh	v0,542(s0)
     e4c:	2841ffce 	slti	at,v0,-50
     e50:	10200003 	beqz	at,e60 <EnHorseNormal_Wander+0x244>
     e54:	2418ffce 	li	t8,-50
     e58:	a618021e 	sh	t8,542(s0)
     e5c:	8602021e 	lh	v0,542(s0)
     e60:	8619021c 	lh	t9,540(s0)
     e64:	240afed4 	li	t2,-300
     e68:	03224821 	addu	t1,t9,v0
     e6c:	a609021c 	sh	t1,540(s0)
     e70:	8603021c 	lh	v1,540(s0)
     e74:	2861fed4 	slti	at,v1,-300
     e78:	50200004 	beqzl	at,e8c <EnHorseNormal_Wander+0x270>
     e7c:	2861012d 	slti	at,v1,301
     e80:	1000001c 	b	ef4 <EnHorseNormal_Wander+0x2d8>
     e84:	a60a021c 	sh	t2,540(s0)
     e88:	2861012d 	slti	at,v1,301
     e8c:	14200003 	bnez	at,e9c <EnHorseNormal_Wander+0x280>
     e90:	240b012c 	li	t3,300
     e94:	10000017 	b	ef4 <EnHorseNormal_Wander+0x2d8>
     e98:	a60b021c 	sh	t3,540(s0)
     e9c:	0c000000 	jal	0 <func_80A6B250>
     ea0:	afa8004c 	sw	t0,76(sp)
     ea4:	3c013e80 	lui	at,0x3e80
     ea8:	44819000 	mtc1	at,$f18
     eac:	8fa8004c 	lw	t0,76(sp)
     eb0:	4612003c 	c.lt.s	$f0,$f18
     eb4:	00000000 	nop
     eb8:	4502000f 	bc1fl	ef8 <EnHorseNormal_Wander+0x2dc>
     ebc:	860d0032 	lh	t5,50(s0)
     ec0:	860c021c 	lh	t4,540(s0)
     ec4:	3c0142c8 	lui	at,0x42c8
     ec8:	44814000 	mtc1	at,$f8
     ecc:	448c3000 	mtc1	t4,$f6
     ed0:	00000000 	nop
     ed4:	46803020 	cvt.s.w	$f0,$f6
     ed8:	46000005 	abs.s	$f0,$f0
     edc:	4608003c 	c.lt.s	$f0,$f8
     ee0:	00000000 	nop
     ee4:	45020004 	bc1fl	ef8 <EnHorseNormal_Wander+0x2dc>
     ee8:	860d0032 	lh	t5,50(s0)
     eec:	a600021c 	sh	zero,540(s0)
     ef0:	a600021e 	sh	zero,542(s0)
     ef4:	860d0032 	lh	t5,50(s0)
     ef8:	860e021c 	lh	t6,540(s0)
     efc:	8e030150 	lw	v1,336(s0)
     f00:	01ae7821 	addu	t7,t5,t6
     f04:	a60f0032 	sh	t7,50(s0)
     f08:	86180032 	lh	t8,50(s0)
     f0c:	a61800b6 	sh	t8,182(s0)
     f10:	15030006 	bne	t0,v1,f2c <EnHorseNormal_Wander+0x310>
     f14:	260401a0 	addiu	a0,s0,416
     f18:	0c000000 	jal	0 <func_80A6B250>
     f1c:	afa8004c 	sw	t0,76(sp)
     f20:	104000d1 	beqz	v0,1268 <EnHorseNormal_Wander+0x64c>
     f24:	8fa8004c 	lw	t0,76(sp)
     f28:	8e030150 	lw	v1,336(s0)
     f2c:	261901a0 	addiu	t9,s0,416
     f30:	11030041 	beq	t0,v1,1038 <EnHorseNormal_Wander+0x41c>
     f34:	afb90034 	sw	t9,52(sp)
     f38:	960901e4 	lhu	t1,484(s0)
     f3c:	24010001 	li	at,1
     f40:	ae080150 	sw	t0,336(s0)
     f44:	312bfffe 	andi	t3,t1,0xfffe
     f48:	a60b01e4 	sh	t3,484(s0)
     f4c:	316cfffd 	andi	t4,t3,0xfffd
     f50:	1501000d 	bne	t0,at,f88 <EnHorseNormal_Wander+0x36c>
     f54:	a60c01e4 	sh	t4,484(s0)
     f58:	3c070000 	lui	a3,0x0
     f5c:	3c0d0000 	lui	t5,0x0
     f60:	24e70000 	addiu	a3,a3,0
     f64:	25ad0000 	addiu	t5,t5,0
     f68:	afad0014 	sw	t5,20(sp)
     f6c:	afa70010 	sw	a3,16(sp)
     f70:	24042816 	li	a0,10262
     f74:	26050204 	addiu	a1,s0,516
     f78:	0c000000 	jal	0 <func_80A6B250>
     f7c:	24060004 	li	a2,4
     f80:	10000011 	b	fc8 <EnHorseNormal_Wander+0x3ac>
     f84:	00000000 	nop
     f88:	24010003 	li	at,3
     f8c:	1501000c 	bne	t0,at,fc0 <EnHorseNormal_Wander+0x3a4>
     f90:	3c070000 	lui	a3,0x0
     f94:	3c0e0000 	lui	t6,0x0
     f98:	24e70000 	addiu	a3,a3,0
     f9c:	25ce0000 	addiu	t6,t6,0
     fa0:	afae0014 	sw	t6,20(sp)
     fa4:	afa70010 	sw	a3,16(sp)
     fa8:	24042805 	li	a0,10245
     fac:	26050204 	addiu	a1,s0,516
     fb0:	0c000000 	jal	0 <func_80A6B250>
     fb4:	24060004 	li	a2,4
     fb8:	10000003 	b	fc8 <EnHorseNormal_Wander+0x3ac>
     fbc:	00000000 	nop
     fc0:	0c000000 	jal	0 <func_80A6B250>
     fc4:	02002025 	move	a0,s0
     fc8:	0c000000 	jal	0 <func_80A6B250>
     fcc:	02002025 	move	a0,s0
     fd0:	e7a00040 	swc1	$f0,64(sp)
     fd4:	8e0f0150 	lw	t7,336(s0)
     fd8:	3c040000 	lui	a0,0x0
     fdc:	000fc080 	sll	t8,t7,0x2
     fe0:	00982021 	addu	a0,a0,t8
     fe4:	0c000000 	jal	0 <func_80A6B250>
     fe8:	8c840020 	lw	a0,32(a0)
     fec:	44822000 	mtc1	v0,$f4
     ff0:	8e190150 	lw	t9,336(s0)
     ff4:	3c01c040 	lui	at,0xc040
     ff8:	468022a0 	cvt.s.w	$f10,$f4
     ffc:	44818000 	mtc1	at,$f16
    1000:	3c050000 	lui	a1,0x0
    1004:	00194880 	sll	t1,t9,0x2
    1008:	00a92821 	addu	a1,a1,t1
    100c:	240a0002 	li	t2,2
    1010:	afaa0014 	sw	t2,20(sp)
    1014:	8ca50020 	lw	a1,32(a1)
    1018:	e7aa0010 	swc1	$f10,16(sp)
    101c:	8fa40034 	lw	a0,52(sp)
    1020:	8fa60040 	lw	a2,64(sp)
    1024:	24070000 	li	a3,0
    1028:	0c000000 	jal	0 <func_80A6B250>
    102c:	e7b00018 	swc1	$f16,24(sp)
    1030:	1000008e 	b	126c <EnHorseNormal_Wander+0x650>
    1034:	8fbf002c 	lw	ra,44(sp)
    1038:	00035880 	sll	t3,v1,0x2
    103c:	3c020000 	lui	v0,0x0
    1040:	004b1021 	addu	v0,v0,t3
    1044:	8c4201c0 	lw	v0,448(v0)
    1048:	24010001 	li	at,1
    104c:	10400009 	beqz	v0,1074 <EnHorseNormal_Wander+0x458>
    1050:	00000000 	nop
    1054:	10410024 	beq	v0,at,10e8 <EnHorseNormal_Wander+0x4cc>
    1058:	24010002 	li	at,2
    105c:	10410022 	beq	v0,at,10e8 <EnHorseNormal_Wander+0x4cc>
    1060:	24010003 	li	at,3
    1064:	50410021 	beql	v0,at,10ec <EnHorseNormal_Wander+0x4d0>
    1068:	960f01e4 	lhu	t7,484(s0)
    106c:	1000001f 	b	10ec <EnHorseNormal_Wander+0x4d0>
    1070:	960f01e4 	lhu	t7,484(s0)
    1074:	0c000000 	jal	0 <func_80A6B250>
    1078:	00000000 	nop
    107c:	3c013e80 	lui	at,0x3e80
    1080:	44819000 	mtc1	at,$f18
    1084:	3c013f80 	lui	at,0x3f80
    1088:	4612003c 	c.lt.s	$f0,$f18
    108c:	00000000 	nop
    1090:	45000005 	bc1f	10a8 <EnHorseNormal_Wander+0x48c>
    1094:	00000000 	nop
    1098:	44813000 	mtc1	at,$f6
    109c:	24080004 	li	t0,4
    10a0:	10000011 	b	10e8 <EnHorseNormal_Wander+0x4cc>
    10a4:	e6060218 	swc1	$f6,536(s0)
    10a8:	0c000000 	jal	0 <func_80A6B250>
    10ac:	00000000 	nop
    10b0:	3c014000 	lui	at,0x4000
    10b4:	44814000 	mtc1	at,$f8
    10b8:	3c080000 	lui	t0,0x0
    10bc:	44808000 	mtc1	zero,$f16
    10c0:	46080102 	mul.s	$f4,$f0,$f8
    10c4:	44809000 	mtc1	zero,$f18
    10c8:	4600228d 	trunc.w.s	$f10,$f4
    10cc:	440d5000 	mfc1	t5,$f10
    10d0:	00000000 	nop
    10d4:	000d7080 	sll	t6,t5,0x2
    10d8:	010e4021 	addu	t0,t0,t6
    10dc:	8d0801a4 	lw	t0,420(t0)
    10e0:	e6100068 	swc1	$f16,104(s0)
    10e4:	e6120218 	swc1	$f18,536(s0)
    10e8:	960f01e4 	lhu	t7,484(s0)
    10ec:	24010001 	li	at,1
    10f0:	3c070000 	lui	a3,0x0
    10f4:	31f9fffe 	andi	t9,t7,0xfffe
    10f8:	a61901e4 	sh	t9,484(s0)
    10fc:	3329fffd 	andi	t1,t9,0xfffd
    1100:	1501000d 	bne	t0,at,1138 <EnHorseNormal_Wander+0x51c>
    1104:	a60901e4 	sh	t1,484(s0)
    1108:	3c0a0000 	lui	t2,0x0
    110c:	24e70000 	addiu	a3,a3,0
    1110:	254a0000 	addiu	t2,t2,0
    1114:	afaa0014 	sw	t2,20(sp)
    1118:	afa70010 	sw	a3,16(sp)
    111c:	24042816 	li	a0,10262
    1120:	26050204 	addiu	a1,s0,516
    1124:	24060004 	li	a2,4
    1128:	0c000000 	jal	0 <func_80A6B250>
    112c:	afa8004c 	sw	t0,76(sp)
    1130:	10000014 	b	1184 <EnHorseNormal_Wander+0x568>
    1134:	8fa8004c 	lw	t0,76(sp)
    1138:	24010003 	li	at,3
    113c:	1501000e 	bne	t0,at,1178 <EnHorseNormal_Wander+0x55c>
    1140:	02002025 	move	a0,s0
    1144:	3c070000 	lui	a3,0x0
    1148:	3c0b0000 	lui	t3,0x0
    114c:	24e70000 	addiu	a3,a3,0
    1150:	256b0000 	addiu	t3,t3,0
    1154:	afab0014 	sw	t3,20(sp)
    1158:	afa70010 	sw	a3,16(sp)
    115c:	24042805 	li	a0,10245
    1160:	26050204 	addiu	a1,s0,516
    1164:	24060004 	li	a2,4
    1168:	0c000000 	jal	0 <func_80A6B250>
    116c:	afa8004c 	sw	t0,76(sp)
    1170:	10000004 	b	1184 <EnHorseNormal_Wander+0x568>
    1174:	8fa8004c 	lw	t0,76(sp)
    1178:	0c000000 	jal	0 <func_80A6B250>
    117c:	afa8004c 	sw	t0,76(sp)
    1180:	8fa8004c 	lw	t0,76(sp)
    1184:	8e0c0150 	lw	t4,336(s0)
    1188:	02002025 	move	a0,s0
    118c:	110c001d 	beq	t0,t4,1204 <EnHorseNormal_Wander+0x5e8>
    1190:	00000000 	nop
    1194:	0c000000 	jal	0 <func_80A6B250>
    1198:	ae080150 	sw	t0,336(s0)
    119c:	e7a00040 	swc1	$f0,64(sp)
    11a0:	8e0d0150 	lw	t5,336(s0)
    11a4:	3c040000 	lui	a0,0x0
    11a8:	000d7080 	sll	t6,t5,0x2
    11ac:	008e2021 	addu	a0,a0,t6
    11b0:	0c000000 	jal	0 <func_80A6B250>
    11b4:	8c840020 	lw	a0,32(a0)
    11b8:	44823000 	mtc1	v0,$f6
    11bc:	8e0f0150 	lw	t7,336(s0)
    11c0:	3c01c040 	lui	at,0xc040
    11c4:	46803220 	cvt.s.w	$f8,$f6
    11c8:	44812000 	mtc1	at,$f4
    11cc:	3c050000 	lui	a1,0x0
    11d0:	000fc080 	sll	t8,t7,0x2
    11d4:	00b82821 	addu	a1,a1,t8
    11d8:	24190002 	li	t9,2
    11dc:	afb90014 	sw	t9,20(sp)
    11e0:	8ca50020 	lw	a1,32(a1)
    11e4:	e7a80010 	swc1	$f8,16(sp)
    11e8:	8fa40034 	lw	a0,52(sp)
    11ec:	8fa60040 	lw	a2,64(sp)
    11f0:	24070000 	li	a3,0
    11f4:	0c000000 	jal	0 <func_80A6B250>
    11f8:	e7a40018 	swc1	$f4,24(sp)
    11fc:	1000001b 	b	126c <EnHorseNormal_Wander+0x650>
    1200:	8fbf002c 	lw	ra,44(sp)
    1204:	0c000000 	jal	0 <func_80A6B250>
    1208:	02002025 	move	a0,s0
    120c:	e7a00040 	swc1	$f0,64(sp)
    1210:	8e090150 	lw	t1,336(s0)
    1214:	3c040000 	lui	a0,0x0
    1218:	00095080 	sll	t2,t1,0x2
    121c:	008a2021 	addu	a0,a0,t2
    1220:	0c000000 	jal	0 <func_80A6B250>
    1224:	8c840020 	lw	a0,32(a0)
    1228:	44825000 	mtc1	v0,$f10
    122c:	8e0b0150 	lw	t3,336(s0)
    1230:	44800000 	mtc1	zero,$f0
    1234:	46805420 	cvt.s.w	$f16,$f10
    1238:	3c050000 	lui	a1,0x0
    123c:	000b6080 	sll	t4,t3,0x2
    1240:	00ac2821 	addu	a1,a1,t4
    1244:	240d0002 	li	t5,2
    1248:	44070000 	mfc1	a3,$f0
    124c:	afad0014 	sw	t5,20(sp)
    1250:	8ca50020 	lw	a1,32(a1)
    1254:	e7b00010 	swc1	$f16,16(sp)
    1258:	8fa40034 	lw	a0,52(sp)
    125c:	8fa60040 	lw	a2,64(sp)
    1260:	0c000000 	jal	0 <func_80A6B250>
    1264:	e7a00018 	swc1	$f0,24(sp)
    1268:	8fbf002c 	lw	ra,44(sp)
    126c:	8fb00028 	lw	s0,40(sp)
    1270:	27bd0050 	addiu	sp,sp,80
    1274:	03e00008 	jr	ra
    1278:	00000000 	nop

0000127c <func_80A6C4CC>:
    127c:	27bdffc8 	addiu	sp,sp,-56
    1280:	afbf002c 	sw	ra,44(sp)
    1284:	afb00028 	sw	s0,40(sp)
    1288:	44800000 	mtc1	zero,$f0
    128c:	240e0002 	li	t6,2
    1290:	00808025 	move	s0,a0
    1294:	ac8e014c 	sw	t6,332(a0)
    1298:	ac800150 	sw	zero,336(a0)
    129c:	a480021c 	sh	zero,540(a0)
    12a0:	a480021e 	sh	zero,542(a0)
    12a4:	e4800068 	swc1	$f0,104(a0)
    12a8:	0c000000 	jal	0 <func_80A6B250>
    12ac:	e4800218 	swc1	$f0,536(a0)
    12b0:	e7a00030 	swc1	$f0,48(sp)
    12b4:	8e0f0150 	lw	t7,336(s0)
    12b8:	3c040000 	lui	a0,0x0
    12bc:	000fc080 	sll	t8,t7,0x2
    12c0:	00982021 	addu	a0,a0,t8
    12c4:	0c000000 	jal	0 <func_80A6B250>
    12c8:	8c840020 	lw	a0,32(a0)
    12cc:	44822000 	mtc1	v0,$f4
    12d0:	8e190150 	lw	t9,336(s0)
    12d4:	44800000 	mtc1	zero,$f0
    12d8:	468021a0 	cvt.s.w	$f6,$f4
    12dc:	3c050000 	lui	a1,0x0
    12e0:	00194080 	sll	t0,t9,0x2
    12e4:	00a82821 	addu	a1,a1,t0
    12e8:	24090002 	li	t1,2
    12ec:	44070000 	mfc1	a3,$f0
    12f0:	afa90014 	sw	t1,20(sp)
    12f4:	8ca50020 	lw	a1,32(a1)
    12f8:	e7a60010 	swc1	$f6,16(sp)
    12fc:	260401a0 	addiu	a0,s0,416
    1300:	8fa60030 	lw	a2,48(sp)
    1304:	0c000000 	jal	0 <func_80A6B250>
    1308:	e7a00018 	swc1	$f0,24(sp)
    130c:	8fbf002c 	lw	ra,44(sp)
    1310:	8fb00028 	lw	s0,40(sp)
    1314:	27bd0038 	addiu	sp,sp,56
    1318:	03e00008 	jr	ra
    131c:	00000000 	nop

00001320 <EnHorseNormal_Wait>:
    1320:	27bdffc0 	addiu	sp,sp,-64
    1324:	afb00028 	sw	s0,40(sp)
    1328:	00808025 	move	s0,a0
    132c:	afbf002c 	sw	ra,44(sp)
    1330:	248401a0 	addiu	a0,a0,416
    1334:	afa50044 	sw	a1,68(sp)
    1338:	0c000000 	jal	0 <func_80A6B250>
    133c:	afa40030 	sw	a0,48(sp)
    1340:	50400043 	beqzl	v0,1450 <EnHorseNormal_Wait+0x130>
    1344:	8fbf002c 	lw	ra,44(sp)
    1348:	0c000000 	jal	0 <func_80A6B250>
    134c:	00000000 	nop
    1350:	3c010000 	lui	at,0x0
    1354:	c4240074 	lwc1	$f4,116(at)
    1358:	3c010000 	lui	at,0x0
    135c:	4604003c 	c.lt.s	$f0,$f4
    1360:	00000000 	nop
    1364:	45000003 	bc1f	1374 <EnHorseNormal_Wait+0x54>
    1368:	00000000 	nop
    136c:	1000001e 	b	13e8 <EnHorseNormal_Wait+0xc8>
    1370:	ae000150 	sw	zero,336(s0)
    1374:	c4260078 	lwc1	$f6,120(at)
    1378:	3c070000 	lui	a3,0x0
    137c:	24e70000 	addiu	a3,a3,0
    1380:	4606003c 	c.lt.s	$f0,$f6
    1384:	24180003 	li	t8,3
    1388:	24042805 	li	a0,10245
    138c:	26050204 	addiu	a1,s0,516
    1390:	4500000f 	bc1f	13d0 <EnHorseNormal_Wait+0xb0>
    1394:	24060004 	li	a2,4
    1398:	3c070000 	lui	a3,0x0
    139c:	240e0001 	li	t6,1
    13a0:	3c0f0000 	lui	t7,0x0
    13a4:	24e70000 	addiu	a3,a3,0
    13a8:	ae0e0150 	sw	t6,336(s0)
    13ac:	25ef0000 	addiu	t7,t7,0
    13b0:	afaf0014 	sw	t7,20(sp)
    13b4:	afa70010 	sw	a3,16(sp)
    13b8:	24042816 	li	a0,10262
    13bc:	26050204 	addiu	a1,s0,516
    13c0:	0c000000 	jal	0 <func_80A6B250>
    13c4:	24060004 	li	a2,4
    13c8:	10000007 	b	13e8 <EnHorseNormal_Wait+0xc8>
    13cc:	00000000 	nop
    13d0:	3c190000 	lui	t9,0x0
    13d4:	ae180150 	sw	t8,336(s0)
    13d8:	27390000 	addiu	t9,t9,0
    13dc:	afb90014 	sw	t9,20(sp)
    13e0:	0c000000 	jal	0 <func_80A6B250>
    13e4:	afa70010 	sw	a3,16(sp)
    13e8:	0c000000 	jal	0 <func_80A6B250>
    13ec:	02002025 	move	a0,s0
    13f0:	e7a00034 	swc1	$f0,52(sp)
    13f4:	8e080150 	lw	t0,336(s0)
    13f8:	3c040000 	lui	a0,0x0
    13fc:	00084880 	sll	t1,t0,0x2
    1400:	00892021 	addu	a0,a0,t1
    1404:	0c000000 	jal	0 <func_80A6B250>
    1408:	8c840020 	lw	a0,32(a0)
    140c:	44824000 	mtc1	v0,$f8
    1410:	8e0a0150 	lw	t2,336(s0)
    1414:	44800000 	mtc1	zero,$f0
    1418:	468042a0 	cvt.s.w	$f10,$f8
    141c:	3c050000 	lui	a1,0x0
    1420:	000a5880 	sll	t3,t2,0x2
    1424:	00ab2821 	addu	a1,a1,t3
    1428:	240c0002 	li	t4,2
    142c:	44070000 	mfc1	a3,$f0
    1430:	afac0014 	sw	t4,20(sp)
    1434:	8ca50020 	lw	a1,32(a1)
    1438:	e7aa0010 	swc1	$f10,16(sp)
    143c:	8fa40030 	lw	a0,48(sp)
    1440:	8fa60034 	lw	a2,52(sp)
    1444:	0c000000 	jal	0 <func_80A6B250>
    1448:	e7a00018 	swc1	$f0,24(sp)
    144c:	8fbf002c 	lw	ra,44(sp)
    1450:	8fb00028 	lw	s0,40(sp)
    1454:	27bd0040 	addiu	sp,sp,64
    1458:	03e00008 	jr	ra
    145c:	00000000 	nop

00001460 <func_80A6C6B0>:
    1460:	27bdffc8 	addiu	sp,sp,-56
    1464:	afbf002c 	sw	ra,44(sp)
    1468:	afb00028 	sw	s0,40(sp)
    146c:	8c8f0004 	lw	t7,4(a0)
    1470:	44800000 	mtc1	zero,$f0
    1474:	240e0003 	li	t6,3
    1478:	35f80030 	ori	t8,t7,0x30
    147c:	00808025 	move	s0,a0
    1480:	ac8e014c 	sw	t6,332(a0)
    1484:	ac800150 	sw	zero,336(a0)
    1488:	a480021c 	sh	zero,540(a0)
    148c:	a480021e 	sh	zero,542(a0)
    1490:	ac980004 	sw	t8,4(a0)
    1494:	e4800068 	swc1	$f0,104(a0)
    1498:	0c000000 	jal	0 <func_80A6B250>
    149c:	e4800218 	swc1	$f0,536(a0)
    14a0:	e7a00030 	swc1	$f0,48(sp)
    14a4:	8e190150 	lw	t9,336(s0)
    14a8:	3c040000 	lui	a0,0x0
    14ac:	00194080 	sll	t0,t9,0x2
    14b0:	00882021 	addu	a0,a0,t0
    14b4:	0c000000 	jal	0 <func_80A6B250>
    14b8:	8c840020 	lw	a0,32(a0)
    14bc:	44822000 	mtc1	v0,$f4
    14c0:	8e090150 	lw	t1,336(s0)
    14c4:	44800000 	mtc1	zero,$f0
    14c8:	468021a0 	cvt.s.w	$f6,$f4
    14cc:	3c050000 	lui	a1,0x0
    14d0:	00095080 	sll	t2,t1,0x2
    14d4:	00aa2821 	addu	a1,a1,t2
    14d8:	240b0002 	li	t3,2
    14dc:	44070000 	mfc1	a3,$f0
    14e0:	afab0014 	sw	t3,20(sp)
    14e4:	8ca50020 	lw	a1,32(a1)
    14e8:	e7a60010 	swc1	$f6,16(sp)
    14ec:	260401a0 	addiu	a0,s0,416
    14f0:	8fa60030 	lw	a2,48(sp)
    14f4:	0c000000 	jal	0 <func_80A6B250>
    14f8:	e7a00018 	swc1	$f0,24(sp)
    14fc:	8fbf002c 	lw	ra,44(sp)
    1500:	8fb00028 	lw	s0,40(sp)
    1504:	27bd0038 	addiu	sp,sp,56
    1508:	03e00008 	jr	ra
    150c:	00000000 	nop

00001510 <EnHorseNormal_WaitClone>:
    1510:	27bdffc0 	addiu	sp,sp,-64
    1514:	afbf002c 	sw	ra,44(sp)
    1518:	afb00028 	sw	s0,40(sp)
    151c:	00808025 	move	s0,a0
    1520:	0c000000 	jal	0 <func_80A6B250>
    1524:	afa50044 	sw	a1,68(sp)
    1528:	260401a0 	addiu	a0,s0,416
    152c:	0c000000 	jal	0 <func_80A6B250>
    1530:	afa40030 	sw	a0,48(sp)
    1534:	50400052 	beqzl	v0,1680 <EnHorseNormal_WaitClone+0x170>
    1538:	8fbf002c 	lw	ra,44(sp)
    153c:	0c000000 	jal	0 <func_80A6B250>
    1540:	00000000 	nop
    1544:	3c010000 	lui	at,0x0
    1548:	c424007c 	lwc1	$f4,124(at)
    154c:	3c010000 	lui	at,0x0
    1550:	4604003c 	c.lt.s	$f0,$f4
    1554:	00000000 	nop
    1558:	45000003 	bc1f	1568 <EnHorseNormal_WaitClone+0x58>
    155c:	00000000 	nop
    1560:	10000024 	b	15f4 <EnHorseNormal_WaitClone+0xe4>
    1564:	ae000150 	sw	zero,336(s0)
    1568:	c4260080 	lwc1	$f6,128(at)
    156c:	3c070000 	lui	a3,0x0
    1570:	24e70000 	addiu	a3,a3,0
    1574:	4606003c 	c.lt.s	$f0,$f6
    1578:	24080003 	li	t0,3
    157c:	24042805 	li	a0,10245
    1580:	26050204 	addiu	a1,s0,516
    1584:	45000012 	bc1f	15d0 <EnHorseNormal_WaitClone+0xc0>
    1588:	24060004 	li	a2,4
    158c:	960f01e4 	lhu	t7,484(s0)
    1590:	3c070000 	lui	a3,0x0
    1594:	240e0001 	li	t6,1
    1598:	3c190000 	lui	t9,0x0
    159c:	35f80020 	ori	t8,t7,0x20
    15a0:	24e70000 	addiu	a3,a3,0
    15a4:	ae0e0150 	sw	t6,336(s0)
    15a8:	a61801e4 	sh	t8,484(s0)
    15ac:	27390000 	addiu	t9,t9,0
    15b0:	afb90014 	sw	t9,20(sp)
    15b4:	afa70010 	sw	a3,16(sp)
    15b8:	24042816 	li	a0,10262
    15bc:	26050204 	addiu	a1,s0,516
    15c0:	0c000000 	jal	0 <func_80A6B250>
    15c4:	24060004 	li	a2,4
    15c8:	1000000a 	b	15f4 <EnHorseNormal_WaitClone+0xe4>
    15cc:	00000000 	nop
    15d0:	960901e4 	lhu	t1,484(s0)
    15d4:	3c0b0000 	lui	t3,0x0
    15d8:	ae080150 	sw	t0,336(s0)
    15dc:	352a0020 	ori	t2,t1,0x20
    15e0:	a60a01e4 	sh	t2,484(s0)
    15e4:	256b0000 	addiu	t3,t3,0
    15e8:	afab0014 	sw	t3,20(sp)
    15ec:	0c000000 	jal	0 <func_80A6B250>
    15f0:	afa70010 	sw	a3,16(sp)
    15f4:	0c000000 	jal	0 <func_80A6B250>
    15f8:	02002025 	move	a0,s0
    15fc:	e7a00034 	swc1	$f0,52(sp)
    1600:	8e0c0150 	lw	t4,336(s0)
    1604:	3c040000 	lui	a0,0x0
    1608:	000c6880 	sll	t5,t4,0x2
    160c:	008d2021 	addu	a0,a0,t5
    1610:	0c000000 	jal	0 <func_80A6B250>
    1614:	8c840020 	lw	a0,32(a0)
    1618:	44824000 	mtc1	v0,$f8
    161c:	8e0e0150 	lw	t6,336(s0)
    1620:	44800000 	mtc1	zero,$f0
    1624:	468042a0 	cvt.s.w	$f10,$f8
    1628:	3c050000 	lui	a1,0x0
    162c:	000e7880 	sll	t7,t6,0x2
    1630:	00af2821 	addu	a1,a1,t7
    1634:	24180002 	li	t8,2
    1638:	44070000 	mfc1	a3,$f0
    163c:	afb80014 	sw	t8,20(sp)
    1640:	8ca50020 	lw	a1,32(a1)
    1644:	e7aa0010 	swc1	$f10,16(sp)
    1648:	8fa40030 	lw	a0,48(sp)
    164c:	8fa60034 	lw	a2,52(sp)
    1650:	0c000000 	jal	0 <func_80A6B250>
    1654:	e7a00018 	swc1	$f0,24(sp)
    1658:	961901e4 	lhu	t9,484(s0)
    165c:	3329fffe 	andi	t1,t9,0xfffe
    1660:	312bfffd 	andi	t3,t1,0xfffd
    1664:	a60901e4 	sh	t1,484(s0)
    1668:	316dfff7 	andi	t5,t3,0xfff7
    166c:	a60b01e4 	sh	t3,484(s0)
    1670:	a60d01e4 	sh	t5,484(s0)
    1674:	31aeffef 	andi	t6,t5,0xffef
    1678:	a60e01e4 	sh	t6,484(s0)
    167c:	8fbf002c 	lw	ra,44(sp)
    1680:	8fb00028 	lw	s0,40(sp)
    1684:	27bd0040 	addiu	sp,sp,64
    1688:	03e00008 	jr	ra
    168c:	00000000 	nop

00001690 <func_80A6C8E0>:
    1690:	27bdffc0 	addiu	sp,sp,-64
    1694:	afb00018 	sw	s0,24(sp)
    1698:	00808025 	move	s0,a0
    169c:	afbf001c 	sw	ra,28(sp)
    16a0:	afa50044 	sw	a1,68(sp)
    16a4:	0c000000 	jal	0 <func_80A6B250>
    16a8:	848400b6 	lh	a0,182(a0)
    16ac:	3c0141f0 	lui	at,0x41f0
    16b0:	44812000 	mtc1	at,$f4
    16b4:	c6080024 	lwc1	$f8,36(s0)
    16b8:	3c014270 	lui	at,0x4270
    16bc:	46040182 	mul.s	$f6,$f0,$f4
    16c0:	44819000 	mtc1	at,$f18
    16c4:	46083280 	add.s	$f10,$f6,$f8
    16c8:	e7aa0028 	swc1	$f10,40(sp)
    16cc:	c6100028 	lwc1	$f16,40(s0)
    16d0:	46128100 	add.s	$f4,$f16,$f18
    16d4:	e7a4002c 	swc1	$f4,44(sp)
    16d8:	0c000000 	jal	0 <func_80A6B250>
    16dc:	860400b6 	lh	a0,182(s0)
    16e0:	3c0141f0 	lui	at,0x41f0
    16e4:	44813000 	mtc1	at,$f6
    16e8:	c60a002c 	lwc1	$f10,44(s0)
    16ec:	8fa40044 	lw	a0,68(sp)
    16f0:	46060202 	mul.s	$f8,$f0,$f6
    16f4:	27a50038 	addiu	a1,sp,56
    16f8:	27a60024 	addiu	a2,sp,36
    16fc:	27a70028 	addiu	a3,sp,40
    1700:	248407c0 	addiu	a0,a0,1984
    1704:	460a4400 	add.s	$f16,$f8,$f10
    1708:	0c000000 	jal	0 <func_80A6B250>
    170c:	e7b00030 	swc1	$f16,48(sp)
    1710:	c6120028 	lwc1	$f18,40(s0)
    1714:	3c0141f0 	lui	at,0x41f0
    1718:	44817000 	mtc1	at,$f14
    171c:	e6000220 	swc1	$f0,544(s0)
    1720:	0c000000 	jal	0 <func_80A6B250>
    1724:	46009301 	sub.s	$f12,$f18,$f0
    1728:	3c010000 	lui	at,0x0
    172c:	c4240084 	lwc1	$f4,132(at)
    1730:	46040182 	mul.s	$f6,$f0,$f4
    1734:	4600320d 	trunc.w.s	$f8,$f6
    1738:	440f4000 	mfc1	t7,$f8
    173c:	00000000 	nop
    1740:	a60f00b4 	sh	t7,180(s0)
    1744:	8fbf001c 	lw	ra,28(sp)
    1748:	8fb00018 	lw	s0,24(sp)
    174c:	27bd0040 	addiu	sp,sp,64
    1750:	03e00008 	jr	ra
    1754:	00000000 	nop

00001758 <EnHorseNormal_Update>:
    1758:	27bdffc8 	addiu	sp,sp,-56
    175c:	afb0001c 	sw	s0,28(sp)
    1760:	00808025 	move	s0,a0
    1764:	afbf0024 	sw	ra,36(sp)
    1768:	afb10020 	sw	s1,32(sp)
    176c:	8e0e014c 	lw	t6,332(s0)
    1770:	3c190000 	lui	t9,0x0
    1774:	00a08825 	move	s1,a1
    1778:	000e7880 	sll	t7,t6,0x2
    177c:	032fc821 	addu	t9,t9,t7
    1780:	8f3901e4 	lw	t9,484(t9)
    1784:	0320f809 	jalr	t9
    1788:	00000000 	nop
    178c:	0c000000 	jal	0 <func_80A6B250>
    1790:	02002025 	move	a0,s0
    1794:	3c0142c8 	lui	at,0x42c8
    1798:	44812000 	mtc1	at,$f4
    179c:	2418001d 	li	t8,29
    17a0:	afb80014 	sw	t8,20(sp)
    17a4:	02202025 	move	a0,s1
    17a8:	02002825 	move	a1,s0
    17ac:	3c0641a0 	lui	a2,0x41a0
    17b0:	3c07420c 	lui	a3,0x420c
    17b4:	0c000000 	jal	0 <func_80A6B250>
    17b8:	e7a40010 	swc1	$f4,16(sp)
    17bc:	862800a4 	lh	t0,164(s1)
    17c0:	24010063 	li	at,99
    17c4:	02002025 	move	a0,s0
    17c8:	15010009 	bne	t0,at,17f0 <EnHorseNormal_Update+0x98>
    17cc:	26060228 	addiu	a2,s0,552
    17d0:	3c01c516 	lui	at,0xc516
    17d4:	44810000 	mtc1	at,$f0
    17d8:	c606002c 	lwc1	$f6,44(s0)
    17dc:	4600303c 	c.lt.s	$f6,$f0
    17e0:	00000000 	nop
    17e4:	45020003 	bc1fl	17f4 <EnHorseNormal_Update+0x9c>
    17e8:	8e090028 	lw	t1,40(s0)
    17ec:	e600002c 	swc1	$f0,44(s0)
    17f0:	8e090028 	lw	t1,40(s0)
    17f4:	8e0b00e8 	lw	t3,232(s0)
    17f8:	3c01428c 	lui	at,0x428c
    17fc:	44815000 	mtc1	at,$f10
    1800:	3c0142f0 	lui	at,0x42f0
    1804:	ae09003c 	sw	t1,60(s0)
    1808:	ae0b0208 	sw	t3,520(s0)
    180c:	8e0a0024 	lw	t2,36(s0)
    1810:	c608003c 	lwc1	$f8,60(s0)
    1814:	8e0c00e4 	lw	t4,228(s0)
    1818:	c6120208 	lwc1	$f18,520(s0)
    181c:	44812000 	mtc1	at,$f4
    1820:	460a4400 	add.s	$f16,$f8,$f10
    1824:	ae0a0038 	sw	t2,56(s0)
    1828:	ae0c0204 	sw	t4,516(s0)
    182c:	46049180 	add.s	$f6,$f18,$f4
    1830:	8e0a002c 	lw	t2,44(s0)
    1834:	8e0c00ec 	lw	t4,236(s0)
    1838:	e610003c 	swc1	$f16,60(s0)
    183c:	e6060208 	swc1	$f6,520(s0)
    1840:	ae0a0040 	sw	t2,64(s0)
    1844:	ae0c020c 	sw	t4,524(s0)
    1848:	afa6002c 	sw	a2,44(sp)
    184c:	0c000000 	jal	0 <func_80A6B250>
    1850:	00c02825 	move	a1,a2
    1854:	3c010001 	lui	at,0x1
    1858:	34211e60 	ori	at,at,0x1e60
    185c:	8fa6002c 	lw	a2,44(sp)
    1860:	02212821 	addu	a1,s1,at
    1864:	0c000000 	jal	0 <func_80A6B250>
    1868:	02202025 	move	a0,s1
    186c:	44804000 	mtc1	zero,$f8
    1870:	c60a0068 	lwc1	$f10,104(s0)
    1874:	240d00ff 	li	t5,255
    1878:	240e00fe 	li	t6,254
    187c:	460a4032 	c.eq.s	$f8,$f10
    1880:	00000000 	nop
    1884:	45020004 	bc1fl	1898 <EnHorseNormal_Update+0x140>
    1888:	a20e00ae 	sb	t6,174(s0)
    188c:	10000002 	b	1898 <EnHorseNormal_Update+0x140>
    1890:	a20d00ae 	sb	t5,174(s0)
    1894:	a20e00ae 	sb	t6,174(s0)
    1898:	8fbf0024 	lw	ra,36(sp)
    189c:	8fb0001c 	lw	s0,28(sp)
    18a0:	8fb10020 	lw	s1,32(sp)
    18a4:	03e00008 	jr	ra
    18a8:	27bd0038 	addiu	sp,sp,56

000018ac <func_80A6CAFC>:
    18ac:	27bdffa8 	addiu	sp,sp,-88
    18b0:	afbf002c 	sw	ra,44(sp)
    18b4:	afb50028 	sw	s5,40(sp)
    18b8:	afb40024 	sw	s4,36(sp)
    18bc:	afb30020 	sw	s3,32(sp)
    18c0:	afb2001c 	sw	s2,28(sp)
    18c4:	afb10018 	sw	s1,24(sp)
    18c8:	afb00014 	sw	s0,20(sp)
    18cc:	afa5005c 	sw	a1,92(sp)
    18d0:	8c8e028c 	lw	t6,652(a0)
    18d4:	00808825 	move	s1,a0
    18d8:	00c09825 	move	s3,a2
    18dc:	19c00047 	blez	t6,19fc <func_80A6CAFC+0x150>
    18e0:	00009025 	move	s2,zero
    18e4:	00008025 	move	s0,zero
    18e8:	27b50040 	addiu	s5,sp,64
    18ec:	27b4004c 	addiu	s4,sp,76
    18f0:	8e2f0290 	lw	t7,656(s1)
    18f4:	02602025 	move	a0,s3
    18f8:	02803025 	move	a2,s4
    18fc:	01f0c021 	addu	t8,t7,s0
    1900:	87190028 	lh	t9,40(t8)
    1904:	02a03825 	move	a3,s5
    1908:	44992000 	mtc1	t9,$f4
    190c:	00000000 	nop
    1910:	468021a0 	cvt.s.w	$f6,$f4
    1914:	e7a6004c 	swc1	$f6,76(sp)
    1918:	8e280290 	lw	t0,656(s1)
    191c:	01104821 	addu	t1,t0,s0
    1920:	852a002a 	lh	t2,42(t1)
    1924:	448a4000 	mtc1	t2,$f8
    1928:	00000000 	nop
    192c:	468042a0 	cvt.s.w	$f10,$f8
    1930:	e7aa0050 	swc1	$f10,80(sp)
    1934:	8e2b0290 	lw	t3,656(s1)
    1938:	01706021 	addu	t4,t3,s0
    193c:	858d002c 	lh	t5,44(t4)
    1940:	448d8000 	mtc1	t5,$f16
    1944:	00000000 	nop
    1948:	468084a0 	cvt.s.w	$f18,$f16
    194c:	e7b20054 	swc1	$f18,84(sp)
    1950:	8e2e0290 	lw	t6,656(s1)
    1954:	01d07821 	addu	t7,t6,s0
    1958:	0c000000 	jal	0 <func_80A6B250>
    195c:	91e5003c 	lbu	a1,60(t7)
    1960:	c7a40040 	lwc1	$f4,64(sp)
    1964:	8e280290 	lw	t0,656(s1)
    1968:	26520001 	addiu	s2,s2,1
    196c:	4600218d 	trunc.w.s	$f6,$f4
    1970:	01104821 	addu	t1,t0,s0
    1974:	44193000 	mfc1	t9,$f6
    1978:	00000000 	nop
    197c:	a5390030 	sh	t9,48(t1)
    1980:	c7a80044 	lwc1	$f8,68(sp)
    1984:	8e2c0290 	lw	t4,656(s1)
    1988:	4600428d 	trunc.w.s	$f10,$f8
    198c:	01906821 	addu	t5,t4,s0
    1990:	440b5000 	mfc1	t3,$f10
    1994:	00000000 	nop
    1998:	a5ab0032 	sh	t3,50(t5)
    199c:	c7b00048 	lwc1	$f16,72(sp)
    19a0:	8e380290 	lw	t8,656(s1)
    19a4:	4600848d 	trunc.w.s	$f18,$f16
    19a8:	03104021 	addu	t0,t8,s0
    19ac:	440f9000 	mfc1	t7,$f18
    19b0:	00000000 	nop
    19b4:	a50f0034 	sh	t7,52(t0)
    19b8:	8e390290 	lw	t9,656(s1)
    19bc:	03301021 	addu	v0,t9,s0
    19c0:	8449002e 	lh	t1,46(v0)
    19c4:	c4440038 	lwc1	$f4,56(v0)
    19c8:	26100040 	addiu	s0,s0,64
    19cc:	44893000 	mtc1	t1,$f6
    19d0:	00000000 	nop
    19d4:	46803220 	cvt.s.w	$f8,$f6
    19d8:	46082282 	mul.s	$f10,$f4,$f8
    19dc:	4600540d 	trunc.w.s	$f16,$f10
    19e0:	440c8000 	mfc1	t4,$f16
    19e4:	00000000 	nop
    19e8:	a44c0036 	sh	t4,54(v0)
    19ec:	8e2b028c 	lw	t3,652(s1)
    19f0:	024b082a 	slt	at,s2,t3
    19f4:	5420ffbf 	bnezl	at,18f4 <func_80A6CAFC+0x48>
    19f8:	8e2f0290 	lw	t7,656(s1)
    19fc:	8fa4005c 	lw	a0,92(sp)
    1a00:	3c010001 	lui	at,0x1
    1a04:	34211e60 	ori	at,at,0x1e60
    1a08:	26260274 	addiu	a2,s1,628
    1a0c:	0c000000 	jal	0 <func_80A6B250>
    1a10:	00812821 	addu	a1,a0,at
    1a14:	8fbf002c 	lw	ra,44(sp)
    1a18:	8fb00014 	lw	s0,20(sp)
    1a1c:	8fb10018 	lw	s1,24(sp)
    1a20:	8fb2001c 	lw	s2,28(sp)
    1a24:	8fb30020 	lw	s3,32(sp)
    1a28:	8fb40024 	lw	s4,36(sp)
    1a2c:	8fb50028 	lw	s5,40(sp)
    1a30:	03e00008 	jr	ra
    1a34:	27bd0058 	addiu	sp,sp,88

00001a38 <func_80A6CC88>:
    1a38:	27bdffc0 	addiu	sp,sp,-64
    1a3c:	afb00020 	sw	s0,32(sp)
    1a40:	afbf0024 	sw	ra,36(sp)
    1a44:	afa40040 	sw	a0,64(sp)
    1a48:	afa60048 	sw	a2,72(sp)
    1a4c:	c4a001b8 	lwc1	$f0,440(a1)
    1a50:	00a08025 	move	s0,a1
    1a54:	00c02825 	move	a1,a2
    1a58:	3c010001 	lui	at,0x1
    1a5c:	34211d60 	ori	at,at,0x1d60
    1a60:	260601e8 	addiu	a2,s0,488
    1a64:	afa60034 	sw	a2,52(sp)
    1a68:	00812021 	addu	a0,a0,at
    1a6c:	27a70038 	addiu	a3,sp,56
    1a70:	0c000000 	jal	0 <func_80A6B250>
    1a74:	e7a0003c 	swc1	$f0,60(sp)
    1a78:	8fae0034 	lw	t6,52(sp)
    1a7c:	c7a0003c 	lwc1	$f0,60(sp)
    1a80:	260501f4 	addiu	a1,s0,500
    1a84:	8dd80000 	lw	t8,0(t6)
    1a88:	3c0142f0 	lui	at,0x42f0
    1a8c:	44813000 	mtc1	at,$f6
    1a90:	acb80000 	sw	t8,0(a1)
    1a94:	8dcf0004 	lw	t7,4(t6)
    1a98:	3c0141e0 	lui	at,0x41e0
    1a9c:	24040003 	li	a0,3
    1aa0:	acaf0004 	sw	t7,4(a1)
    1aa4:	8dd80008 	lw	t8,8(t6)
    1aa8:	acb80008 	sw	t8,8(a1)
    1aac:	c60401f8 	lwc1	$f4,504(s0)
    1ab0:	8e030150 	lw	v1,336(s0)
    1ab4:	46062200 	add.s	$f8,$f4,$f6
    1ab8:	14600018 	bnez	v1,1b1c <func_80A6CC88+0xe4>
    1abc:	e60801f8 	swc1	$f8,504(s0)
    1ac0:	44815000 	mtc1	at,$f10
    1ac4:	00000000 	nop
    1ac8:	4600503c 	c.lt.s	$f10,$f0
    1acc:	00000000 	nop
    1ad0:	45000012 	bc1f	1b1c <func_80A6CC88+0xe4>
    1ad4:	00000000 	nop
    1ad8:	960201e4 	lhu	v0,484(s0)
    1adc:	3c070000 	lui	a3,0x0
    1ae0:	24e70000 	addiu	a3,a3,0
    1ae4:	30590008 	andi	t9,v0,0x8
    1ae8:	1720000c 	bnez	t9,1b1c <func_80A6CC88+0xe4>
    1aec:	34480008 	ori	t0,v0,0x8
    1af0:	a60801e4 	sh	t0,484(s0)
    1af4:	3c090000 	lui	t1,0x0
    1af8:	25290000 	addiu	t1,t1,0
    1afc:	afa90014 	sw	t1,20(sp)
    1b00:	afa70010 	sw	a3,16(sp)
    1b04:	8fa50034 	lw	a1,52(sp)
    1b08:	2404282c 	li	a0,10284
    1b0c:	0c000000 	jal	0 <func_80A6B250>
    1b10:	24060004 	li	a2,4
    1b14:	1000003d 	b	1c0c <func_80A6CC88+0x1d4>
    1b18:	8fbf0024 	lw	ra,36(sp)
    1b1c:	14830018 	bne	a0,v1,1b80 <func_80A6CC88+0x148>
    1b20:	3c0141c8 	lui	at,0x41c8
    1b24:	44818000 	mtc1	at,$f16
    1b28:	00000000 	nop
    1b2c:	4600803c 	c.lt.s	$f16,$f0
    1b30:	00000000 	nop
    1b34:	45000012 	bc1f	1b80 <func_80A6CC88+0x148>
    1b38:	00000000 	nop
    1b3c:	960201e4 	lhu	v0,484(s0)
    1b40:	3c070000 	lui	a3,0x0
    1b44:	24e70000 	addiu	a3,a3,0
    1b48:	304a0010 	andi	t2,v0,0x10
    1b4c:	1540000c 	bnez	t2,1b80 <func_80A6CC88+0x148>
    1b50:	344b0010 	ori	t3,v0,0x10
    1b54:	a60b01e4 	sh	t3,484(s0)
    1b58:	3c0c0000 	lui	t4,0x0
    1b5c:	258c0000 	addiu	t4,t4,0
    1b60:	afac0014 	sw	t4,20(sp)
    1b64:	afa70010 	sw	a3,16(sp)
    1b68:	8fa50034 	lw	a1,52(sp)
    1b6c:	2404282b 	li	a0,10283
    1b70:	0c000000 	jal	0 <func_80A6B250>
    1b74:	24060004 	li	a2,4
    1b78:	10000024 	b	1c0c <func_80A6CC88+0x1d4>
    1b7c:	8fbf0024 	lw	ra,36(sp)
    1b80:	14830011 	bne	a0,v1,1bc8 <func_80A6CC88+0x190>
    1b84:	24010001 	li	at,1
    1b88:	960201e4 	lhu	v0,484(s0)
    1b8c:	3c070000 	lui	a3,0x0
    1b90:	24e70000 	addiu	a3,a3,0
    1b94:	304d0020 	andi	t5,v0,0x20
    1b98:	11a0000b 	beqz	t5,1bc8 <func_80A6CC88+0x190>
    1b9c:	304effdf 	andi	t6,v0,0xffdf
    1ba0:	3c0f0000 	lui	t7,0x0
    1ba4:	a60e01e4 	sh	t6,484(s0)
    1ba8:	25ef0000 	addiu	t7,t7,0
    1bac:	afaf0014 	sw	t7,20(sp)
    1bb0:	afa70010 	sw	a3,16(sp)
    1bb4:	24042805 	li	a0,10245
    1bb8:	0c000000 	jal	0 <func_80A6B250>
    1bbc:	24060004 	li	a2,4
    1bc0:	10000012 	b	1c0c <func_80A6CC88+0x1d4>
    1bc4:	8fbf0024 	lw	ra,36(sp)
    1bc8:	54610010 	bnel	v1,at,1c0c <func_80A6CC88+0x1d4>
    1bcc:	8fbf0024 	lw	ra,36(sp)
    1bd0:	960201e4 	lhu	v0,484(s0)
    1bd4:	3c070000 	lui	a3,0x0
    1bd8:	24e70000 	addiu	a3,a3,0
    1bdc:	30580020 	andi	t8,v0,0x20
    1be0:	13000009 	beqz	t8,1c08 <func_80A6CC88+0x1d0>
    1be4:	3059ffdf 	andi	t9,v0,0xffdf
    1be8:	3c080000 	lui	t0,0x0
    1bec:	a61901e4 	sh	t9,484(s0)
    1bf0:	25080000 	addiu	t0,t0,0
    1bf4:	afa80014 	sw	t0,20(sp)
    1bf8:	afa70010 	sw	a3,16(sp)
    1bfc:	24042816 	li	a0,10262
    1c00:	0c000000 	jal	0 <func_80A6B250>
    1c04:	24060004 	li	a2,4
    1c08:	8fbf0024 	lw	ra,36(sp)
    1c0c:	8fb00020 	lw	s0,32(sp)
    1c10:	27bd0040 	addiu	sp,sp,64
    1c14:	03e00008 	jr	ra
    1c18:	00000000 	nop

00001c1c <EnHorseNormal_Draw>:
    1c1c:	27bdff30 	addiu	sp,sp,-208
    1c20:	afb10030 	sw	s1,48(sp)
    1c24:	00a08825 	move	s1,a1
    1c28:	afbf0034 	sw	ra,52(sp)
    1c2c:	afb0002c 	sw	s0,44(sp)
    1c30:	8ca50000 	lw	a1,0(a1)
    1c34:	00808025 	move	s0,a0
    1c38:	3c060000 	lui	a2,0x0
    1c3c:	24c60000 	addiu	a2,a2,0
    1c40:	27a400b4 	addiu	a0,sp,180
    1c44:	240708b0 	li	a3,2224
    1c48:	0c000000 	jal	0 <func_80A6B250>
    1c4c:	afa500c4 	sw	a1,196(sp)
    1c50:	862200a4 	lh	v0,164(s1)
    1c54:	24010063 	li	at,99
    1c58:	02002025 	move	a0,s0
    1c5c:	14410003 	bne	v0,at,1c6c <EnHorseNormal_Draw+0x50>
    1c60:	24010036 	li	at,54
    1c64:	10410003 	beq	v0,at,1c74 <EnHorseNormal_Draw+0x58>
    1c68:	00000000 	nop
    1c6c:	0c000000 	jal	0 <func_80A6B250>
    1c70:	02202825 	move	a1,s1
    1c74:	0c000000 	jal	0 <func_80A6B250>
    1c78:	8e240000 	lw	a0,0(s1)
    1c7c:	26060154 	addiu	a2,s0,340
    1c80:	3c070000 	lui	a3,0x0
    1c84:	240e0001 	li	t6,1
    1c88:	afae0010 	sw	t6,16(sp)
    1c8c:	24e70000 	addiu	a3,a3,0
    1c90:	afa60038 	sw	a2,56(sp)
    1c94:	02002025 	move	a0,s0
    1c98:	0c000000 	jal	0 <func_80A6B250>
    1c9c:	02202825 	move	a1,s1
    1ca0:	8e0f014c 	lw	t7,332(s0)
    1ca4:	24010003 	li	at,3
    1ca8:	3c180000 	lui	t8,0x0
    1cac:	15e10109 	bne	t7,at,20d4 <EnHorseNormal_Draw+0x4b8>
    1cb0:	271801f8 	addiu	t8,t8,504
    1cb4:	8f0a0000 	lw	t2,0(t8)
    1cb8:	27a60064 	addiu	a2,sp,100
    1cbc:	24010036 	li	at,54
    1cc0:	acca0000 	sw	t2,0(a2)
    1cc4:	8f190004 	lw	t9,4(t8)
    1cc8:	02202025 	move	a0,s1
    1ccc:	acd90004 	sw	t9,4(a2)
    1cd0:	8f0a0008 	lw	t2,8(t8)
    1cd4:	acca0008 	sw	t2,8(a2)
    1cd8:	c6040080 	lwc1	$f4,128(s0)
    1cdc:	c6020028 	lwc1	$f2,40(s0)
    1ce0:	46041181 	sub.s	$f6,$f2,$f4
    1ce4:	e7a6005c 	swc1	$f6,92(sp)
    1ce8:	862200a4 	lh	v0,164(s1)
    1cec:	14410038 	bne	v0,at,1dd0 <EnHorseNormal_Draw+0x1b4>
    1cf0:	3c010000 	lui	at,0x0
    1cf4:	c4280088 	lwc1	$f8,136(at)
    1cf8:	c6000024 	lwc1	$f0,36(s0)
    1cfc:	46004032 	c.eq.s	$f8,$f0
    1d00:	00000000 	nop
    1d04:	45020018 	bc1fl	1d68 <EnHorseNormal_Draw+0x14c>
    1d08:	3c01436e 	lui	at,0x436e
    1d0c:	44806000 	mtc1	zero,$f12
    1d10:	3c01c375 	lui	at,0xc375
    1d14:	46026032 	c.eq.s	$f12,$f2
    1d18:	00000000 	nop
    1d1c:	45020012 	bc1fl	1d68 <EnHorseNormal_Draw+0x14c>
    1d20:	3c01436e 	lui	at,0x436e
    1d24:	44815000 	mtc1	at,$f10
    1d28:	c610002c 	lwc1	$f16,44(s0)
    1d2c:	3c01436b 	lui	at,0x436b
    1d30:	240b7fff 	li	t3,32767
    1d34:	46105032 	c.eq.s	$f10,$f16
    1d38:	00000000 	nop
    1d3c:	4502000a 	bc1fl	1d68 <EnHorseNormal_Draw+0x14c>
    1d40:	3c01436e 	lui	at,0x436e
    1d44:	44819000 	mtc1	at,$f18
    1d48:	3c0142c8 	lui	at,0x42c8
    1d4c:	44812000 	mtc1	at,$f4
    1d50:	e7ac0068 	swc1	$f12,104(sp)
    1d54:	a7ab0062 	sh	t3,98(sp)
    1d58:	e7b20064 	swc1	$f18,100(sp)
    1d5c:	10000053 	b	1eac <EnHorseNormal_Draw+0x290>
    1d60:	e7a4006c 	swc1	$f4,108(sp)
    1d64:	3c01436e 	lui	at,0x436e
    1d68:	44813000 	mtc1	at,$f6
    1d6c:	44806000 	mtc1	zero,$f12
    1d70:	46003032 	c.eq.s	$f6,$f0
    1d74:	00000000 	nop
    1d78:	4500004c 	bc1f	1eac <EnHorseNormal_Draw+0x290>
    1d7c:	00000000 	nop
    1d80:	46026032 	c.eq.s	$f12,$f2
    1d84:	3c01c375 	lui	at,0xc375
    1d88:	45000048 	bc1f	1eac <EnHorseNormal_Draw+0x290>
    1d8c:	00000000 	nop
    1d90:	44814000 	mtc1	at,$f8
    1d94:	c60a002c 	lwc1	$f10,44(s0)
    1d98:	3c0143ef 	lui	at,0x43ef
    1d9c:	240c7fff 	li	t4,32767
    1da0:	460a4032 	c.eq.s	$f8,$f10
    1da4:	00000000 	nop
    1da8:	45000040 	bc1f	1eac <EnHorseNormal_Draw+0x290>
    1dac:	00000000 	nop
    1db0:	44818000 	mtc1	at,$f16
    1db4:	3c0142c8 	lui	at,0x42c8
    1db8:	44819000 	mtc1	at,$f18
    1dbc:	e7ac0068 	swc1	$f12,104(sp)
    1dc0:	a7ac0062 	sh	t4,98(sp)
    1dc4:	e7b00064 	swc1	$f16,100(sp)
    1dc8:	10000038 	b	1eac <EnHorseNormal_Draw+0x290>
    1dcc:	e7b2006c 	swc1	$f18,108(sp)
    1dd0:	24010063 	li	at,99
    1dd4:	14410035 	bne	v0,at,1eac <EnHorseNormal_Draw+0x290>
    1dd8:	3c010000 	lui	at,0x0
    1ddc:	c424008c 	lwc1	$f4,140(at)
    1de0:	c6000024 	lwc1	$f0,36(s0)
    1de4:	46002032 	c.eq.s	$f4,$f0
    1de8:	00000000 	nop
    1dec:	45020017 	bc1fl	1e4c <EnHorseNormal_Draw+0x230>
    1df0:	3c01445c 	lui	at,0x445c
    1df4:	44806000 	mtc1	zero,$f12
    1df8:	3c010000 	lui	at,0x0
    1dfc:	46026032 	c.eq.s	$f12,$f2
    1e00:	00000000 	nop
    1e04:	45020011 	bc1fl	1e4c <EnHorseNormal_Draw+0x230>
    1e08:	3c01445c 	lui	at,0x445c
    1e0c:	c4260090 	lwc1	$f6,144(at)
    1e10:	c608002c 	lwc1	$f8,44(s0)
    1e14:	3c014443 	lui	at,0x4443
    1e18:	46083032 	c.eq.s	$f6,$f8
    1e1c:	00000000 	nop
    1e20:	4502000a 	bc1fl	1e4c <EnHorseNormal_Draw+0x230>
    1e24:	3c01445c 	lui	at,0x445c
    1e28:	44815000 	mtc1	at,$f10
    1e2c:	3c01c2a0 	lui	at,0xc2a0
    1e30:	44818000 	mtc1	at,$f16
    1e34:	e7ac0068 	swc1	$f12,104(sp)
    1e38:	a7a00062 	sh	zero,98(sp)
    1e3c:	e7aa0064 	swc1	$f10,100(sp)
    1e40:	1000001a 	b	1eac <EnHorseNormal_Draw+0x290>
    1e44:	e7b0006c 	swc1	$f16,108(sp)
    1e48:	3c01445c 	lui	at,0x445c
    1e4c:	44819000 	mtc1	at,$f18
    1e50:	44806000 	mtc1	zero,$f12
    1e54:	46009032 	c.eq.s	$f18,$f0
    1e58:	00000000 	nop
    1e5c:	45000013 	bc1f	1eac <EnHorseNormal_Draw+0x290>
    1e60:	00000000 	nop
    1e64:	46026032 	c.eq.s	$f12,$f2
    1e68:	3c010000 	lui	at,0x0
    1e6c:	4500000f 	bc1f	1eac <EnHorseNormal_Draw+0x290>
    1e70:	00000000 	nop
    1e74:	c4240094 	lwc1	$f4,148(at)
    1e78:	c606002c 	lwc1	$f6,44(s0)
    1e7c:	3c01c47a 	lui	at,0xc47a
    1e80:	46062032 	c.eq.s	$f4,$f6
    1e84:	00000000 	nop
    1e88:	45000008 	bc1f	1eac <EnHorseNormal_Draw+0x290>
    1e8c:	00000000 	nop
    1e90:	44814000 	mtc1	at,$f8
    1e94:	3c01c28c 	lui	at,0xc28c
    1e98:	44815000 	mtc1	at,$f10
    1e9c:	e7ac0068 	swc1	$f12,104(sp)
    1ea0:	a7a00062 	sh	zero,98(sp)
    1ea4:	e7a80064 	swc1	$f8,100(sp)
    1ea8:	e7aa006c 	swc1	$f10,108(sp)
    1eac:	0c000000 	jal	0 <func_80A6B250>
    1eb0:	02002825 	move	a1,s0
    1eb4:	860d00b4 	lh	t5,180(s0)
    1eb8:	87ae0062 	lh	t6,98(sp)
    1ebc:	c6000054 	lwc1	$f0,84(s0)
    1ec0:	8e050050 	lw	a1,80(s0)
    1ec4:	8e070058 	lw	a3,88(s0)
    1ec8:	afad0010 	sw	t5,16(sp)
    1ecc:	afae0014 	sw	t6,20(sp)
    1ed0:	860f00b8 	lh	t7,184(s0)
    1ed4:	c7b00064 	lwc1	$f16,100(sp)
    1ed8:	c7a60068 	lwc1	$f6,104(sp)
    1edc:	afaf0018 	sw	t7,24(sp)
    1ee0:	e7b0001c 	swc1	$f16,28(sp)
    1ee4:	c61200bc 	lwc1	$f18,188(s0)
    1ee8:	c7aa006c 	lwc1	$f10,108(sp)
    1eec:	44060000 	mfc1	a2,$f0
    1ef0:	46009102 	mul.s	$f4,$f18,$f0
    1ef4:	27a40074 	addiu	a0,sp,116
    1ef8:	e7aa0024 	swc1	$f10,36(sp)
    1efc:	46062200 	add.s	$f8,$f4,$f6
    1f00:	0c000000 	jal	0 <func_80A6B250>
    1f04:	e7a80020 	swc1	$f8,32(sp)
    1f08:	8e240000 	lw	a0,0(s1)
    1f0c:	0c000000 	jal	0 <func_80A6B250>
    1f10:	27a50074 	addiu	a1,sp,116
    1f14:	10400075 	beqz	v0,20ec <EnHorseNormal_Draw+0x4d0>
    1f18:	8fa800c4 	lw	t0,196(sp)
    1f1c:	8d0402c0 	lw	a0,704(t0)
    1f20:	3c09da38 	lui	t1,0xda38
    1f24:	3c190000 	lui	t9,0x0
    1f28:	24980008 	addiu	t8,a0,8
    1f2c:	ad1802c0 	sw	t8,704(t0)
    1f30:	27390000 	addiu	t9,t9,0
    1f34:	35290003 	ori	t1,t1,0x3
    1f38:	ac890000 	sw	t1,0(a0)
    1f3c:	ac990004 	sw	t9,4(a0)
    1f40:	8d0402c0 	lw	a0,704(t0)
    1f44:	240b0001 	li	t3,1
    1f48:	240c0003 	li	t4,3
    1f4c:	248a0008 	addiu	t2,a0,8
    1f50:	ad0a02c0 	sw	t2,704(t0)
    1f54:	ac820004 	sw	v0,4(a0)
    1f58:	ac890000 	sw	t1,0(a0)
    1f5c:	afac001c 	sw	t4,28(sp)
    1f60:	afa00018 	sw	zero,24(sp)
    1f64:	afab0014 	sw	t3,20(sp)
    1f68:	afa00010 	sw	zero,16(sp)
    1f6c:	8fa60038 	lw	a2,56(sp)
    1f70:	02002025 	move	a0,s0
    1f74:	02202825 	move	a1,s1
    1f78:	0c000000 	jal	0 <func_80A6B250>
    1f7c:	00003825 	move	a3,zero
    1f80:	c7b00064 	lwc1	$f16,100(sp)
    1f84:	3c010001 	lui	at,0x1
    1f88:	34211e60 	ori	at,at,0x1e60
    1f8c:	4600848d 	trunc.w.s	$f18,$f16
    1f90:	02212821 	addu	a1,s1,at
    1f94:	02202025 	move	a0,s1
    1f98:	260602d4 	addiu	a2,s0,724
    1f9c:	440e9000 	mfc1	t6,$f18
    1fa0:	00000000 	nop
    1fa4:	a60e031a 	sh	t6,794(s0)
    1fa8:	c7a40068 	lwc1	$f4,104(sp)
    1fac:	4600218d 	trunc.w.s	$f6,$f4
    1fb0:	44183000 	mfc1	t8,$f6
    1fb4:	00000000 	nop
    1fb8:	a618031c 	sh	t8,796(s0)
    1fbc:	c7a8006c 	lwc1	$f8,108(sp)
    1fc0:	4600428d 	trunc.w.s	$f10,$f8
    1fc4:	440a5000 	mfc1	t2,$f10
    1fc8:	0c000000 	jal	0 <func_80A6B250>
    1fcc:	a60a031e 	sh	t2,798(s0)
    1fd0:	0c000000 	jal	0 <func_80A6B250>
    1fd4:	8e240000 	lw	a0,0(s1)
    1fd8:	8fa400c4 	lw	a0,196(sp)
    1fdc:	3c0cfa00 	lui	t4,0xfa00
    1fe0:	240d00ff 	li	t5,255
    1fe4:	8c8302d0 	lw	v1,720(a0)
    1fe8:	00003825 	move	a3,zero
    1fec:	246b0008 	addiu	t3,v1,8
    1ff0:	ac8b02d0 	sw	t3,720(a0)
    1ff4:	ac6d0004 	sw	t5,4(v1)
    1ff8:	ac6c0000 	sw	t4,0(v1)
    1ffc:	8fa6006c 	lw	a2,108(sp)
    2000:	c7ae0068 	lwc1	$f14,104(sp)
    2004:	0c000000 	jal	0 <func_80A6B250>
    2008:	c7ac0064 	lwc1	$f12,100(sp)
    200c:	3c013f80 	lui	at,0x3f80
    2010:	44817000 	mtc1	at,$f14
    2014:	3c010000 	lui	at,0x0
    2018:	c4320098 	lwc1	$f18,152(at)
    201c:	c7b0005c 	lwc1	$f16,92(sp)
    2020:	c60800c4 	lwc1	$f8,196(s0)
    2024:	c60a0050 	lwc1	$f10,80(s0)
    2028:	46128102 	mul.s	$f4,$f16,$f18
    202c:	c6100058 	lwc1	$f16,88(s0)
    2030:	24070001 	li	a3,1
    2034:	46047181 	sub.s	$f6,$f14,$f4
    2038:	46083002 	mul.s	$f0,$f6,$f8
    203c:	00000000 	nop
    2040:	46005302 	mul.s	$f12,$f10,$f0
    2044:	00000000 	nop
    2048:	46008482 	mul.s	$f18,$f16,$f0
    204c:	44069000 	mfc1	a2,$f18
    2050:	0c000000 	jal	0 <func_80A6B250>
    2054:	00000000 	nop
    2058:	87ae0062 	lh	t6,98(sp)
    205c:	3c010000 	lui	at,0x0
    2060:	c428009c 	lwc1	$f8,156(at)
    2064:	448e2000 	mtc1	t6,$f4
    2068:	24050001 	li	a1,1
    206c:	468021a0 	cvt.s.w	$f6,$f4
    2070:	46083302 	mul.s	$f12,$f6,$f8
    2074:	0c000000 	jal	0 <func_80A6B250>
    2078:	00000000 	nop
    207c:	3c050000 	lui	a1,0x0
    2080:	24a50018 	addiu	a1,a1,24
    2084:	8e240000 	lw	a0,0(s1)
    2088:	0c000000 	jal	0 <func_80A6B250>
    208c:	24060919 	li	a2,2329
    2090:	10400010 	beqz	v0,20d4 <EnHorseNormal_Draw+0x4b8>
    2094:	8fa500c4 	lw	a1,196(sp)
    2098:	8ca302d0 	lw	v1,720(a1)
    209c:	3c18da38 	lui	t8,0xda38
    20a0:	37180003 	ori	t8,t8,0x3
    20a4:	246f0008 	addiu	t7,v1,8
    20a8:	acaf02d0 	sw	t7,720(a1)
    20ac:	ac620004 	sw	v0,4(v1)
    20b0:	ac780000 	sw	t8,0(v1)
    20b4:	8ca302d0 	lw	v1,720(a1)
    20b8:	3c0b0000 	lui	t3,0x0
    20bc:	256b0000 	addiu	t3,t3,0
    20c0:	24790008 	addiu	t9,v1,8
    20c4:	acb902d0 	sw	t9,720(a1)
    20c8:	3c0ade00 	lui	t2,0xde00
    20cc:	ac6a0000 	sw	t2,0(v1)
    20d0:	ac6b0004 	sw	t3,4(v1)
    20d4:	3c060000 	lui	a2,0x0
    20d8:	24c60030 	addiu	a2,a2,48
    20dc:	27a400b4 	addiu	a0,sp,180
    20e0:	8e250000 	lw	a1,0(s1)
    20e4:	0c000000 	jal	0 <func_80A6B250>
    20e8:	24070923 	li	a3,2339
    20ec:	8fbf0034 	lw	ra,52(sp)
    20f0:	8fb0002c 	lw	s0,44(sp)
    20f4:	8fb10030 	lw	s1,48(sp)
    20f8:	03e00008 	jr	ra
    20fc:	27bd00d0 	addiu	sp,sp,208
