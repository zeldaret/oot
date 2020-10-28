
build/src/overlays/actors/ovl_En_Horse_Link_Child/z_en_horse_link_child.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A693D0>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb00020 	sw	s0,32(sp)
       c:	8c8201f0 	lw	v0,496(a0)
      10:	3c030000 	lui	v1,0x0
      14:	24630000 	addiu	v1,v1,0
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
      40:	4502001a 	bc1fl	ac <func_80A693D0+0xac>
      44:	8fbf0024 	lw	ra,36(sp)
      48:	14400008 	bnez	v0,6c <func_80A693D0+0x6c>
      4c:	3c070000 	lui	a3,0x0
      50:	8c790004 	lw	t9,4(v1)
      54:	44994000 	mtc1	t9,$f8
      58:	00000000 	nop
      5c:	468042a0 	cvt.s.w	$f10,$f8
      60:	4600503c 	c.lt.s	$f10,$f0
      64:	00000000 	nop
      68:	4501000f 	bc1t	a8 <func_80A693D0+0xa8>
      6c:	3c080000 	lui	t0,0x0
      70:	24e70000 	addiu	a3,a3,0
      74:	25080000 	addiu	t0,t0,0
      78:	afa80014 	sw	t0,20(sp)
      7c:	afa70010 	sw	a3,16(sp)
      80:	24042842 	li	a0,10306
      84:	260500e4 	addiu	a1,s0,228
      88:	0c000000 	jal	0 <func_80A693D0>
      8c:	24060004 	li	a2,4
      90:	8e0901f0 	lw	t1,496(s0)
      94:	252a0001 	addiu	t2,t1,1
      98:	29410002 	slti	at,t2,2
      9c:	14200002 	bnez	at,a8 <func_80A693D0+0xa8>
      a0:	ae0a01f0 	sw	t2,496(s0)
      a4:	ae0001f0 	sw	zero,496(s0)
      a8:	8fbf0024 	lw	ra,36(sp)
      ac:	8fb00020 	lw	s0,32(sp)
      b0:	27bd0028 	addiu	sp,sp,40
      b4:	03e00008 	jr	ra
      b8:	00000000 	nop

000000bc <func_80A6948C>:
      bc:	27bdffd8 	addiu	sp,sp,-40
      c0:	afbf0024 	sw	ra,36(sp)
      c4:	afb00020 	sw	s0,32(sp)
      c8:	8c820150 	lw	v0,336(a0)
      cc:	24010002 	li	at,2
      d0:	00808025 	move	s0,a0
      d4:	54410006 	bnel	v0,at,f0 <func_80A6948C+0x34>
      d8:	44802000 	mtc1	zero,$f4
      dc:	0c000000 	jal	0 <func_80A693D0>
      e0:	00000000 	nop
      e4:	10000037 	b	1c4 <func_80A6948C+0x108>
      e8:	8fbf0024 	lw	ra,36(sp)
      ec:	44802000 	mtc1	zero,$f4
      f0:	c60601b8 	lwc1	$f6,440(s0)
      f4:	24010003 	li	at,3
      f8:	46062032 	c.eq.s	$f4,$f6
      fc:	00000000 	nop
     100:	45020030 	bc1fl	1c4 <func_80A6948C+0x108>
     104:	8fbf0024 	lw	ra,36(sp)
     108:	10410003 	beq	v0,at,118 <func_80A6948C+0x5c>
     10c:	3c070000 	lui	a3,0x0
     110:	24010004 	li	at,4
     114:	1441000b 	bne	v0,at,144 <func_80A6948C+0x88>
     118:	3c0e0000 	lui	t6,0x0
     11c:	24e70000 	addiu	a3,a3,0
     120:	25ce0000 	addiu	t6,t6,0
     124:	afae0014 	sw	t6,20(sp)
     128:	afa70010 	sw	a3,16(sp)
     12c:	24042843 	li	a0,10307
     130:	260500e4 	addiu	a1,s0,228
     134:	0c000000 	jal	0 <func_80A693D0>
     138:	24060004 	li	a2,4
     13c:	10000021 	b	1c4 <func_80A6948C+0x108>
     140:	8fbf0024 	lw	ra,36(sp)
     144:	24010001 	li	at,1
     148:	5441001e 	bnel	v0,at,1c4 <func_80A6948C+0x108>
     14c:	8fbf0024 	lw	ra,36(sp)
     150:	0c000000 	jal	0 <func_80A693D0>
     154:	00000000 	nop
     158:	3c013f00 	lui	at,0x3f00
     15c:	44814000 	mtc1	at,$f8
     160:	3c070000 	lui	a3,0x0
     164:	24e70000 	addiu	a3,a3,0
     168:	4600403c 	c.lt.s	$f8,$f0
     16c:	24042844 	li	a0,10308
     170:	260500e4 	addiu	a1,s0,228
     174:	24060004 	li	a2,4
     178:	4500000d 	bc1f	1b0 <func_80A6948C+0xf4>
     17c:	3c180000 	lui	t8,0x0
     180:	3c070000 	lui	a3,0x0
     184:	3c0f0000 	lui	t7,0x0
     188:	24e70000 	addiu	a3,a3,0
     18c:	25ef0000 	addiu	t7,t7,0
     190:	afaf0014 	sw	t7,20(sp)
     194:	afa70010 	sw	a3,16(sp)
     198:	24042845 	li	a0,10309
     19c:	260500e4 	addiu	a1,s0,228
     1a0:	0c000000 	jal	0 <func_80A693D0>
     1a4:	24060004 	li	a2,4
     1a8:	10000006 	b	1c4 <func_80A6948C+0x108>
     1ac:	8fbf0024 	lw	ra,36(sp)
     1b0:	27180000 	addiu	t8,t8,0
     1b4:	afb80014 	sw	t8,20(sp)
     1b8:	0c000000 	jal	0 <func_80A693D0>
     1bc:	afa70010 	sw	a3,16(sp)
     1c0:	8fbf0024 	lw	ra,36(sp)
     1c4:	8fb00020 	lw	s0,32(sp)
     1c8:	27bd0028 	addiu	sp,sp,40
     1cc:	03e00008 	jr	ra
     1d0:	00000000 	nop

000001d4 <func_80A695A4>:
     1d4:	8c820150 	lw	v0,336(a0)
     1d8:	24010002 	li	at,2
     1dc:	1441000c 	bne	v0,at,210 <func_80A695A4+0x3c>
     1e0:	00027080 	sll	t6,v0,0x2
     1e4:	3c010000 	lui	at,0x0
     1e8:	002e0821 	addu	at,at,t6
     1ec:	c4240000 	lwc1	$f4,0(at)
     1f0:	c4860068 	lwc1	$f6,104(a0)
     1f4:	3c013f00 	lui	at,0x3f00
     1f8:	44815000 	mtc1	at,$f10
     1fc:	46062202 	mul.s	$f8,$f4,$f6
     200:	00000000 	nop
     204:	460a4082 	mul.s	$f2,$f8,$f10
     208:	03e00008 	jr	ra
     20c:	46001006 	mov.s	$f0,$f2
     210:	24010003 	li	at,3
     214:	1441000c 	bne	v0,at,248 <func_80A695A4+0x74>
     218:	00027880 	sll	t7,v0,0x2
     21c:	3c010000 	lui	at,0x0
     220:	002f0821 	addu	at,at,t7
     224:	c4300000 	lwc1	$f16,0(at)
     228:	c4920068 	lwc1	$f18,104(a0)
     22c:	3c010000 	lui	at,0x0
     230:	c4260000 	lwc1	$f6,0(at)
     234:	46128102 	mul.s	$f4,$f16,$f18
     238:	00000000 	nop
     23c:	46062082 	mul.s	$f2,$f4,$f6
     240:	03e00008 	jr	ra
     244:	46001006 	mov.s	$f0,$f2
     248:	24010004 	li	at,4
     24c:	1441000d 	bne	v0,at,284 <func_80A695A4+0xb0>
     250:	0002c880 	sll	t9,v0,0x2
     254:	0002c080 	sll	t8,v0,0x2
     258:	3c010000 	lui	at,0x0
     25c:	00380821 	addu	at,at,t8
     260:	c4280000 	lwc1	$f8,0(at)
     264:	c48a0068 	lwc1	$f10,104(a0)
     268:	3c010000 	lui	at,0x0
     26c:	c4320000 	lwc1	$f18,0(at)
     270:	460a4402 	mul.s	$f16,$f8,$f10
     274:	00000000 	nop
     278:	46128082 	mul.s	$f2,$f16,$f18
     27c:	03e00008 	jr	ra
     280:	46001006 	mov.s	$f0,$f2
     284:	3c010000 	lui	at,0x0
     288:	00390821 	addu	at,at,t9
     28c:	c4220000 	lwc1	$f2,0(at)
     290:	03e00008 	jr	ra
     294:	46001006 	mov.s	$f0,$f2

00000298 <EnHorseLinkChild_Init>:
     298:	27bdffc8 	addiu	sp,sp,-56
     29c:	afa5003c 	sw	a1,60(sp)
     2a0:	afbf0024 	sw	ra,36(sp)
     2a4:	afb00020 	sw	s0,32(sp)
     2a8:	3c050000 	lui	a1,0x0
     2ac:	00808025 	move	s0,a0
     2b0:	0c000000 	jal	0 <func_80A693D0>
     2b4:	24a50000 	addiu	a1,a1,0
     2b8:	3c053ba3 	lui	a1,0x3ba3
     2bc:	34a5d70a 	ori	a1,a1,0xd70a
     2c0:	0c000000 	jal	0 <func_80A693D0>
     2c4:	02002025 	move	a0,s0
     2c8:	3c01c060 	lui	at,0xc060
     2cc:	44812000 	mtc1	at,$f4
     2d0:	3c060000 	lui	a2,0x0
     2d4:	24c60000 	addiu	a2,a2,0
     2d8:	260400b4 	addiu	a0,s0,180
     2dc:	24050000 	li	a1,0
     2e0:	3c0741a0 	lui	a3,0x41a0
     2e4:	0c000000 	jal	0 <func_80A693D0>
     2e8:	e604006c 	swc1	$f4,108(s0)
     2ec:	8e0f0028 	lw	t7,40(s0)
     2f0:	3c01428c 	lui	at,0x428c
     2f4:	8e180024 	lw	t8,36(s0)
     2f8:	ae0f003c 	sw	t7,60(s0)
     2fc:	c608003c 	lwc1	$f8,60(s0)
     300:	44815000 	mtc1	at,$f10
     304:	ae180038 	sw	t8,56(s0)
     308:	44803000 	mtc1	zero,$f6
     30c:	460a4400 	add.s	$f16,$f8,$f10
     310:	8e18002c 	lw	t8,44(s0)
     314:	240e0001 	li	t6,1
     318:	ae0e014c 	sw	t6,332(s0)
     31c:	e610003c 	swc1	$f16,60(s0)
     320:	3c060600 	lui	a2,0x600
     324:	3c070600 	lui	a3,0x600
     328:	e6060068 	swc1	$f6,104(s0)
     32c:	ae180040 	sw	t8,64(s0)
     330:	8fa4003c 	lw	a0,60(sp)
     334:	24e72f98 	addiu	a3,a3,12184
     338:	24c67b20 	addiu	a2,a2,31520
     33c:	0c000000 	jal	0 <func_80A693D0>
     340:	26050154 	addiu	a1,s0,340
     344:	ae000150 	sw	zero,336(s0)
     348:	3c050000 	lui	a1,0x0
     34c:	8ca50000 	lw	a1,0(a1)
     350:	0c000000 	jal	0 <func_80A693D0>
     354:	260401a0 	addiu	a0,s0,416
     358:	260501f4 	addiu	a1,s0,500
     35c:	afa50028 	sw	a1,40(sp)
     360:	0c000000 	jal	0 <func_80A693D0>
     364:	8fa4003c 	lw	a0,60(sp)
     368:	3c070000 	lui	a3,0x0
     36c:	8fa50028 	lw	a1,40(sp)
     370:	24e70000 	addiu	a3,a3,0
     374:	8fa4003c 	lw	a0,60(sp)
     378:	0c000000 	jal	0 <func_80A693D0>
     37c:	02003025 	move	a2,s0
     380:	26050240 	addiu	a1,s0,576
     384:	afa50028 	sw	a1,40(sp)
     388:	0c000000 	jal	0 <func_80A693D0>
     38c:	8fa4003c 	lw	a0,60(sp)
     390:	3c070000 	lui	a3,0x0
     394:	26190260 	addiu	t9,s0,608
     398:	8fa50028 	lw	a1,40(sp)
     39c:	afb90010 	sw	t9,16(sp)
     3a0:	24e70000 	addiu	a3,a3,0
     3a4:	8fa4003c 	lw	a0,60(sp)
     3a8:	0c000000 	jal	0 <func_80A693D0>
     3ac:	02003025 	move	a2,s0
     3b0:	3c060000 	lui	a2,0x0
     3b4:	24c60000 	addiu	a2,a2,0
     3b8:	26040098 	addiu	a0,s0,152
     3bc:	0c000000 	jal	0 <func_80A693D0>
     3c0:	00002825 	move	a1,zero
     3c4:	ae0001f0 	sw	zero,496(s0)
     3c8:	a20001ec 	sb	zero,492(s0)
     3cc:	3c080000 	lui	t0,0x0
     3d0:	8d081360 	lw	t0,4960(t0)
     3d4:	8fa9003c 	lw	t1,60(sp)
     3d8:	29010004 	slti	at,t0,4
     3dc:	54200006 	bnezl	at,3f8 <EnHorseLinkChild_Init+0x160>
     3e0:	852a00a4 	lh	t2,164(t1)
     3e4:	0c000000 	jal	0 <func_80A693D0>
     3e8:	02002025 	move	a0,s0
     3ec:	10000017 	b	44c <EnHorseLinkChild_Init+0x1b4>
     3f0:	a60000b8 	sh	zero,184(s0)
     3f4:	852a00a4 	lh	t2,164(t1)
     3f8:	24010063 	li	at,99
     3fc:	15410010 	bne	t2,at,440 <EnHorseLinkChild_Init+0x1a8>
     400:	00000000 	nop
     404:	0c000000 	jal	0 <func_80A693D0>
     408:	24040014 	li	a0,20
     40c:	14400005 	bnez	v0,424 <EnHorseLinkChild_Init+0x18c>
     410:	3c0b0000 	lui	t3,0x0
     414:	0c000000 	jal	0 <func_80A693D0>
     418:	02002025 	move	a0,s0
     41c:	1000000f 	b	45c <EnHorseLinkChild_Init+0x1c4>
     420:	8fbf0024 	lw	ra,36(sp)
     424:	956b0ed6 	lhu	t3,3798(t3)
     428:	02002025 	move	a0,s0
     42c:	316c0040 	andi	t4,t3,0x40
     430:	0c000000 	jal	0 <func_80A693D0>
     434:	ae0c02a0 	sw	t4,672(s0)
     438:	10000004 	b	44c <EnHorseLinkChild_Init+0x1b4>
     43c:	a60000b8 	sh	zero,184(s0)
     440:	0c000000 	jal	0 <func_80A693D0>
     444:	02002025 	move	a0,s0
     448:	a60000b8 	sh	zero,184(s0)
     44c:	860200b8 	lh	v0,184(s0)
     450:	a6020034 	sh	v0,52(s0)
     454:	a6020018 	sh	v0,24(s0)
     458:	8fbf0024 	lw	ra,36(sp)
     45c:	8fb00020 	lw	s0,32(sp)
     460:	27bd0038 	addiu	sp,sp,56
     464:	03e00008 	jr	ra
     468:	00000000 	nop

0000046c <EnHorseLinkChild_Destroy>:
     46c:	27bdffe8 	addiu	sp,sp,-24
     470:	afa40018 	sw	a0,24(sp)
     474:	afa5001c 	sw	a1,28(sp)
     478:	00a02025 	move	a0,a1
     47c:	8fa50018 	lw	a1,24(sp)
     480:	afbf0014 	sw	ra,20(sp)
     484:	0c000000 	jal	0 <func_80A693D0>
     488:	24a50154 	addiu	a1,a1,340
     48c:	8fa50018 	lw	a1,24(sp)
     490:	8fa4001c 	lw	a0,28(sp)
     494:	0c000000 	jal	0 <func_80A693D0>
     498:	24a501f4 	addiu	a1,a1,500
     49c:	8fa50018 	lw	a1,24(sp)
     4a0:	8fa4001c 	lw	a0,28(sp)
     4a4:	0c000000 	jal	0 <func_80A693D0>
     4a8:	24a50240 	addiu	a1,a1,576
     4ac:	8fbf0014 	lw	ra,20(sp)
     4b0:	27bd0018 	addiu	sp,sp,24
     4b4:	03e00008 	jr	ra
     4b8:	00000000 	nop

000004bc <func_80A6988C>:
     4bc:	27bdffe8 	addiu	sp,sp,-24
     4c0:	afbf0014 	sw	ra,20(sp)
     4c4:	8c8e0150 	lw	t6,336(a0)
     4c8:	00803025 	move	a2,a0
     4cc:	ac80014c 	sw	zero,332(a0)
     4d0:	25c20001 	addiu	v0,t6,1
     4d4:	28410005 	slti	at,v0,5
     4d8:	14200003 	bnez	at,4e8 <func_80A6988C+0x2c>
     4dc:	ac820150 	sw	v0,336(a0)
     4e0:	ac800150 	sw	zero,336(a0)
     4e4:	00001025 	move	v0,zero
     4e8:	0002c080 	sll	t8,v0,0x2
     4ec:	3c050000 	lui	a1,0x0
     4f0:	00b82821 	addu	a1,a1,t8
     4f4:	8ca50000 	lw	a1,0(a1)
     4f8:	24c401a0 	addiu	a0,a2,416
     4fc:	0c000000 	jal	0 <func_80A693D0>
     500:	afa60018 	sw	a2,24(sp)
     504:	0c000000 	jal	0 <func_80A693D0>
     508:	8fa40018 	lw	a0,24(sp)
     50c:	8fa60018 	lw	a2,24(sp)
     510:	e4c001bc 	swc1	$f0,444(a2)
     514:	8fbf0014 	lw	ra,20(sp)
     518:	27bd0018 	addiu	sp,sp,24
     51c:	03e00008 	jr	ra
     520:	00000000 	nop

00000524 <func_80A698F4>:
     524:	27bdffe8 	addiu	sp,sp,-24
     528:	44802000 	mtc1	zero,$f4
     52c:	afa5001c 	sw	a1,28(sp)
     530:	afbf0014 	sw	ra,20(sp)
     534:	afa40018 	sw	a0,24(sp)
     538:	00802825 	move	a1,a0
     53c:	e4840068 	swc1	$f4,104(a0)
     540:	afa50018 	sw	a1,24(sp)
     544:	0c000000 	jal	0 <func_80A693D0>
     548:	248401a0 	addiu	a0,a0,416
     54c:	10400003 	beqz	v0,55c <func_80A698F4+0x38>
     550:	8fa50018 	lw	a1,24(sp)
     554:	0c000000 	jal	0 <func_80A693D0>
     558:	00a02025 	move	a0,a1
     55c:	8fbf0014 	lw	ra,20(sp)
     560:	27bd0018 	addiu	sp,sp,24
     564:	03e00008 	jr	ra
     568:	00000000 	nop

0000056c <func_80A6993C>:
     56c:	27bdffc8 	addiu	sp,sp,-56
     570:	44802000 	mtc1	zero,$f4
     574:	afb00028 	sw	s0,40(sp)
     578:	afbf002c 	sw	ra,44(sp)
     57c:	240e0002 	li	t6,2
     580:	00808025 	move	s0,a0
     584:	ac8e014c 	sw	t6,332(a0)
     588:	10a00005 	beqz	a1,5a0 <func_80A6993C+0x34>
     58c:	e4840068 	swc1	$f4,104(a0)
     590:	24010001 	li	at,1
     594:	50a10003 	beql	a1,at,5a4 <func_80A6993C+0x38>
     598:	8e0f0150 	lw	t7,336(s0)
     59c:	00002825 	move	a1,zero
     5a0:	8e0f0150 	lw	t7,336(s0)
     5a4:	02002025 	move	a0,s0
     5a8:	50af001c 	beql	a1,t7,61c <func_80A6993C+0xb0>
     5ac:	8fbf002c 	lw	ra,44(sp)
     5b0:	0c000000 	jal	0 <func_80A693D0>
     5b4:	ae050150 	sw	a1,336(s0)
     5b8:	e7a00030 	swc1	$f0,48(sp)
     5bc:	8e180150 	lw	t8,336(s0)
     5c0:	3c040000 	lui	a0,0x0
     5c4:	0018c880 	sll	t9,t8,0x2
     5c8:	00992021 	addu	a0,a0,t9
     5cc:	0c000000 	jal	0 <func_80A693D0>
     5d0:	8c840000 	lw	a0,0(a0)
     5d4:	44823000 	mtc1	v0,$f6
     5d8:	8e080150 	lw	t0,336(s0)
     5dc:	3c01c0a0 	lui	at,0xc0a0
     5e0:	46803220 	cvt.s.w	$f8,$f6
     5e4:	44815000 	mtc1	at,$f10
     5e8:	3c050000 	lui	a1,0x0
     5ec:	00084880 	sll	t1,t0,0x2
     5f0:	00a92821 	addu	a1,a1,t1
     5f4:	240a0002 	li	t2,2
     5f8:	afaa0014 	sw	t2,20(sp)
     5fc:	8ca50000 	lw	a1,0(a1)
     600:	e7a80010 	swc1	$f8,16(sp)
     604:	260401a0 	addiu	a0,s0,416
     608:	8fa60030 	lw	a2,48(sp)
     60c:	24070000 	li	a3,0
     610:	0c000000 	jal	0 <func_80A693D0>
     614:	e7aa0018 	swc1	$f10,24(sp)
     618:	8fbf002c 	lw	ra,44(sp)
     61c:	8fb00028 	lw	s0,40(sp)
     620:	27bd0038 	addiu	sp,sp,56
     624:	03e00008 	jr	ra
     628:	00000000 	nop

0000062c <func_80A699FC>:
     62c:	27bdffb8 	addiu	sp,sp,-72
     630:	afbf002c 	sw	ra,44(sp)
     634:	afb00028 	sw	s0,40(sp)
     638:	00808025 	move	s0,a0
     63c:	0c000000 	jal	0 <func_80A693D0>
     640:	8ca51c44 	lw	a1,7236(a1)
     644:	260401a0 	addiu	a0,s0,416
     648:	afa40034 	sw	a0,52(sp)
     64c:	0c000000 	jal	0 <func_80A693D0>
     650:	e7a00044 	swc1	$f0,68(sp)
     654:	10400050 	beqz	v0,798 <func_80A699FC+0x16c>
     658:	c7a20044 	lwc1	$f2,68(sp)
     65c:	3c01447a 	lui	at,0x447a
     660:	44812000 	mtc1	at,$f4
     664:	3c01428c 	lui	at,0x428c
     668:	4604103c 	c.lt.s	$f2,$f4
     66c:	00000000 	nop
     670:	4502000c 	bc1fl	6a4 <func_80A699FC+0x78>
     674:	8e030150 	lw	v1,336(s0)
     678:	44813000 	mtc1	at,$f6
     67c:	00000000 	nop
     680:	4602303c 	c.lt.s	$f6,$f2
     684:	00000000 	nop
     688:	45020006 	bc1fl	6a4 <func_80A699FC+0x78>
     68c:	8e030150 	lw	v1,336(s0)
     690:	0c000000 	jal	0 <func_80A693D0>
     694:	02002025 	move	a0,s0
     698:	10000040 	b	79c <func_80A699FC+0x170>
     69c:	8fbf002c 	lw	ra,44(sp)
     6a0:	8e030150 	lw	v1,336(s0)
     6a4:	24010001 	li	at,1
     6a8:	24020001 	li	v0,1
     6ac:	14610003 	bne	v1,at,6bc <func_80A699FC+0x90>
     6b0:	02002025 	move	a0,s0
     6b4:	10000001 	b	6bc <func_80A699FC+0x90>
     6b8:	00001025 	move	v0,zero
     6bc:	1043001d 	beq	v0,v1,734 <func_80A699FC+0x108>
     6c0:	00000000 	nop
     6c4:	0c000000 	jal	0 <func_80A693D0>
     6c8:	ae020150 	sw	v0,336(s0)
     6cc:	e7a00038 	swc1	$f0,56(sp)
     6d0:	8e0e0150 	lw	t6,336(s0)
     6d4:	3c040000 	lui	a0,0x0
     6d8:	000e7880 	sll	t7,t6,0x2
     6dc:	008f2021 	addu	a0,a0,t7
     6e0:	0c000000 	jal	0 <func_80A693D0>
     6e4:	8c840000 	lw	a0,0(a0)
     6e8:	44824000 	mtc1	v0,$f8
     6ec:	8e180150 	lw	t8,336(s0)
     6f0:	3c01c0a0 	lui	at,0xc0a0
     6f4:	468042a0 	cvt.s.w	$f10,$f8
     6f8:	44818000 	mtc1	at,$f16
     6fc:	3c050000 	lui	a1,0x0
     700:	0018c880 	sll	t9,t8,0x2
     704:	00b92821 	addu	a1,a1,t9
     708:	24080002 	li	t0,2
     70c:	afa80014 	sw	t0,20(sp)
     710:	8ca50000 	lw	a1,0(a1)
     714:	e7aa0010 	swc1	$f10,16(sp)
     718:	8fa40034 	lw	a0,52(sp)
     71c:	8fa60038 	lw	a2,56(sp)
     720:	24070000 	li	a3,0
     724:	0c000000 	jal	0 <func_80A693D0>
     728:	e7b00018 	swc1	$f16,24(sp)
     72c:	1000001b 	b	79c <func_80A699FC+0x170>
     730:	8fbf002c 	lw	ra,44(sp)
     734:	0c000000 	jal	0 <func_80A693D0>
     738:	02002025 	move	a0,s0
     73c:	e7a00038 	swc1	$f0,56(sp)
     740:	8e090150 	lw	t1,336(s0)
     744:	3c040000 	lui	a0,0x0
     748:	00095080 	sll	t2,t1,0x2
     74c:	008a2021 	addu	a0,a0,t2
     750:	0c000000 	jal	0 <func_80A693D0>
     754:	8c840000 	lw	a0,0(a0)
     758:	44829000 	mtc1	v0,$f18
     75c:	8e0b0150 	lw	t3,336(s0)
     760:	44803000 	mtc1	zero,$f6
     764:	46809120 	cvt.s.w	$f4,$f18
     768:	3c050000 	lui	a1,0x0
     76c:	000b6080 	sll	t4,t3,0x2
     770:	00ac2821 	addu	a1,a1,t4
     774:	240d0002 	li	t5,2
     778:	afad0014 	sw	t5,20(sp)
     77c:	8ca50000 	lw	a1,0(a1)
     780:	e7a40010 	swc1	$f4,16(sp)
     784:	8fa40034 	lw	a0,52(sp)
     788:	8fa60038 	lw	a2,56(sp)
     78c:	24070000 	li	a3,0
     790:	0c000000 	jal	0 <func_80A693D0>
     794:	e7a60018 	swc1	$f6,24(sp)
     798:	8fbf002c 	lw	ra,44(sp)
     79c:	8fb00028 	lw	s0,40(sp)
     7a0:	27bd0048 	addiu	sp,sp,72
     7a4:	03e00008 	jr	ra
     7a8:	00000000 	nop

000007ac <func_80A69B7C>:
     7ac:	27bdffc8 	addiu	sp,sp,-56
     7b0:	afbf002c 	sw	ra,44(sp)
     7b4:	afb00028 	sw	s0,40(sp)
     7b8:	44802000 	mtc1	zero,$f4
     7bc:	240e0001 	li	t6,1
     7c0:	00808025 	move	s0,a0
     7c4:	ac8e014c 	sw	t6,332(a0)
     7c8:	ac800150 	sw	zero,336(a0)
     7cc:	0c000000 	jal	0 <func_80A693D0>
     7d0:	e4840068 	swc1	$f4,104(a0)
     7d4:	e7a00030 	swc1	$f0,48(sp)
     7d8:	8e0f0150 	lw	t7,336(s0)
     7dc:	3c040000 	lui	a0,0x0
     7e0:	000fc080 	sll	t8,t7,0x2
     7e4:	00982021 	addu	a0,a0,t8
     7e8:	0c000000 	jal	0 <func_80A693D0>
     7ec:	8c840000 	lw	a0,0(a0)
     7f0:	44823000 	mtc1	v0,$f6
     7f4:	8e190150 	lw	t9,336(s0)
     7f8:	3c01c0a0 	lui	at,0xc0a0
     7fc:	46803220 	cvt.s.w	$f8,$f6
     800:	44815000 	mtc1	at,$f10
     804:	3c050000 	lui	a1,0x0
     808:	00194080 	sll	t0,t9,0x2
     80c:	00a82821 	addu	a1,a1,t0
     810:	24090002 	li	t1,2
     814:	afa90014 	sw	t1,20(sp)
     818:	8ca50000 	lw	a1,0(a1)
     81c:	e7a80010 	swc1	$f8,16(sp)
     820:	260401a0 	addiu	a0,s0,416
     824:	8fa60030 	lw	a2,48(sp)
     828:	24070000 	li	a3,0
     82c:	0c000000 	jal	0 <func_80A693D0>
     830:	e7aa0018 	swc1	$f10,24(sp)
     834:	8fbf002c 	lw	ra,44(sp)
     838:	8fb00028 	lw	s0,40(sp)
     83c:	27bd0038 	addiu	sp,sp,56
     840:	03e00008 	jr	ra
     844:	00000000 	nop

00000848 <func_80A69C18>:
     848:	27bdffb8 	addiu	sp,sp,-72
     84c:	afbf002c 	sw	ra,44(sp)
     850:	afb00028 	sw	s0,40(sp)
     854:	afa5004c 	sw	a1,76(sp)
     858:	8c820150 	lw	v0,336(a0)
     85c:	24010004 	li	at,4
     860:	00808025 	move	s0,a0
     864:	10410005 	beq	v0,at,87c <func_80A69C18+0x34>
     868:	8fae004c 	lw	t6,76(sp)
     86c:	24010003 	li	at,3
     870:	10410002 	beq	v0,at,87c <func_80A69C18+0x34>
     874:	24010002 	li	at,2
     878:	14410015 	bne	v0,at,8d0 <func_80A69C18+0x88>
     87c:	02002025 	move	a0,s0
     880:	0c000000 	jal	0 <func_80A693D0>
     884:	8dc51c44 	lw	a1,7236(t6)
     888:	86030032 	lh	v1,50(s0)
     88c:	00432023 	subu	a0,v0,v1
     890:	00042400 	sll	a0,a0,0x10
     894:	00042403 	sra	a0,a0,0x10
     898:	2881012d 	slti	at,a0,301
     89c:	14200003 	bnez	at,8ac <func_80A69C18+0x64>
     8a0:	246f012c 	addiu	t7,v1,300
     8a4:	10000008 	b	8c8 <func_80A69C18+0x80>
     8a8:	a60f0032 	sh	t7,50(s0)
     8ac:	2881fed4 	slti	at,a0,-300
     8b0:	10200004 	beqz	at,8c4 <func_80A69C18+0x7c>
     8b4:	0064c821 	addu	t9,v1,a0
     8b8:	2478fed4 	addiu	t8,v1,-300
     8bc:	10000002 	b	8c8 <func_80A69C18+0x80>
     8c0:	a6180032 	sh	t8,50(s0)
     8c4:	a6190032 	sh	t9,50(s0)
     8c8:	86080032 	lh	t0,50(s0)
     8cc:	a60800b6 	sh	t0,182(s0)
     8d0:	260401a0 	addiu	a0,s0,416
     8d4:	0c000000 	jal	0 <func_80A693D0>
     8d8:	afa40030 	sw	a0,48(sp)
     8dc:	1040007f 	beqz	v0,adc <func_80A69C18+0x294>
     8e0:	8fa9004c 	lw	t1,76(sp)
     8e4:	02002025 	move	a0,s0
     8e8:	0c000000 	jal	0 <func_80A693D0>
     8ec:	8d251c44 	lw	a1,7236(t1)
     8f0:	3c01447a 	lui	at,0x447a
     8f4:	44811000 	mtc1	at,$f2
     8f8:	02002025 	move	a0,s0
     8fc:	4600103c 	c.lt.s	$f2,$f0
     900:	00000000 	nop
     904:	45020006 	bc1fl	920 <func_80A69C18+0xd8>
     908:	4602003c 	c.lt.s	$f0,$f2
     90c:	0c000000 	jal	0 <func_80A693D0>
     910:	00002825 	move	a1,zero
     914:	10000072 	b	ae0 <func_80A69C18+0x298>
     918:	8fbf002c 	lw	ra,44(sp)
     91c:	4602003c 	c.lt.s	$f0,$f2
     920:	3c014396 	lui	at,0x4396
     924:	4502000c 	bc1fl	958 <func_80A69C18+0x110>
     928:	3c014396 	lui	at,0x4396
     92c:	44812000 	mtc1	at,$f4
     930:	3c0140c0 	lui	at,0x40c0
     934:	4600203e 	c.le.s	$f4,$f0
     938:	00000000 	nop
     93c:	45020006 	bc1fl	958 <func_80A69C18+0x110>
     940:	3c014396 	lui	at,0x4396
     944:	44813000 	mtc1	at,$f6
     948:	24020004 	li	v0,4
     94c:	10000029 	b	9f4 <func_80A69C18+0x1ac>
     950:	e6060068 	swc1	$f6,104(s0)
     954:	3c014396 	lui	at,0x4396
     958:	44814000 	mtc1	at,$f8
     95c:	3c014316 	lui	at,0x4316
     960:	4608003c 	c.lt.s	$f0,$f8
     964:	00000000 	nop
     968:	4502000c 	bc1fl	99c <func_80A69C18+0x154>
     96c:	3c014316 	lui	at,0x4316
     970:	44815000 	mtc1	at,$f10
     974:	3c014080 	lui	at,0x4080
     978:	4600503e 	c.le.s	$f10,$f0
     97c:	00000000 	nop
     980:	45020006 	bc1fl	99c <func_80A69C18+0x154>
     984:	3c014316 	lui	at,0x4316
     988:	44818000 	mtc1	at,$f16
     98c:	24020003 	li	v0,3
     990:	10000018 	b	9f4 <func_80A69C18+0x1ac>
     994:	e6100068 	swc1	$f16,104(s0)
     998:	3c014316 	lui	at,0x4316
     99c:	44819000 	mtc1	at,$f18
     9a0:	3c01428c 	lui	at,0x428c
     9a4:	02002025 	move	a0,s0
     9a8:	4612003c 	c.lt.s	$f0,$f18
     9ac:	00000000 	nop
     9b0:	4500000c 	bc1f	9e4 <func_80A69C18+0x19c>
     9b4:	00000000 	nop
     9b8:	44812000 	mtc1	at,$f4
     9bc:	24020002 	li	v0,2
     9c0:	3c014000 	lui	at,0x4000
     9c4:	4600203e 	c.le.s	$f4,$f0
     9c8:	00000000 	nop
     9cc:	45000005 	bc1f	9e4 <func_80A69C18+0x19c>
     9d0:	00000000 	nop
     9d4:	44813000 	mtc1	at,$f6
     9d8:	ae0001f0 	sw	zero,496(s0)
     9dc:	10000005 	b	9f4 <func_80A69C18+0x1ac>
     9e0:	e6060068 	swc1	$f6,104(s0)
     9e4:	0c000000 	jal	0 <func_80A693D0>
     9e8:	24050001 	li	a1,1
     9ec:	1000003c 	b	ae0 <func_80A69C18+0x298>
     9f0:	8fbf002c 	lw	ra,44(sp)
     9f4:	8e0a0150 	lw	t2,336(s0)
     9f8:	02002025 	move	a0,s0
     9fc:	104a001e 	beq	v0,t2,a78 <func_80A69C18+0x230>
     a00:	00000000 	nop
     a04:	0c000000 	jal	0 <func_80A693D0>
     a08:	ae020150 	sw	v0,336(s0)
     a0c:	e7a00034 	swc1	$f0,52(sp)
     a10:	8e0b0150 	lw	t3,336(s0)
     a14:	3c040000 	lui	a0,0x0
     a18:	000b6080 	sll	t4,t3,0x2
     a1c:	008c2021 	addu	a0,a0,t4
     a20:	0c000000 	jal	0 <func_80A693D0>
     a24:	8c840000 	lw	a0,0(a0)
     a28:	44824000 	mtc1	v0,$f8
     a2c:	8e0d0150 	lw	t5,336(s0)
     a30:	44800000 	mtc1	zero,$f0
     a34:	468042a0 	cvt.s.w	$f10,$f8
     a38:	3c01c0a0 	lui	at,0xc0a0
     a3c:	44818000 	mtc1	at,$f16
     a40:	3c050000 	lui	a1,0x0
     a44:	000d7080 	sll	t6,t5,0x2
     a48:	00ae2821 	addu	a1,a1,t6
     a4c:	240f0002 	li	t7,2
     a50:	44070000 	mfc1	a3,$f0
     a54:	afaf0014 	sw	t7,20(sp)
     a58:	8ca50000 	lw	a1,0(a1)
     a5c:	e7aa0010 	swc1	$f10,16(sp)
     a60:	8fa40030 	lw	a0,48(sp)
     a64:	8fa60034 	lw	a2,52(sp)
     a68:	0c000000 	jal	0 <func_80A693D0>
     a6c:	e7b00018 	swc1	$f16,24(sp)
     a70:	1000001b 	b	ae0 <func_80A69C18+0x298>
     a74:	8fbf002c 	lw	ra,44(sp)
     a78:	0c000000 	jal	0 <func_80A693D0>
     a7c:	02002025 	move	a0,s0
     a80:	e7a00034 	swc1	$f0,52(sp)
     a84:	8e180150 	lw	t8,336(s0)
     a88:	3c040000 	lui	a0,0x0
     a8c:	0018c880 	sll	t9,t8,0x2
     a90:	00992021 	addu	a0,a0,t9
     a94:	0c000000 	jal	0 <func_80A693D0>
     a98:	8c840000 	lw	a0,0(a0)
     a9c:	44829000 	mtc1	v0,$f18
     aa0:	8e080150 	lw	t0,336(s0)
     aa4:	44800000 	mtc1	zero,$f0
     aa8:	46809120 	cvt.s.w	$f4,$f18
     aac:	3c050000 	lui	a1,0x0
     ab0:	00084880 	sll	t1,t0,0x2
     ab4:	00a92821 	addu	a1,a1,t1
     ab8:	240a0002 	li	t2,2
     abc:	44070000 	mfc1	a3,$f0
     ac0:	afaa0014 	sw	t2,20(sp)
     ac4:	8ca50000 	lw	a1,0(a1)
     ac8:	e7a40010 	swc1	$f4,16(sp)
     acc:	8fa40030 	lw	a0,48(sp)
     ad0:	8fa60034 	lw	a2,52(sp)
     ad4:	0c000000 	jal	0 <func_80A693D0>
     ad8:	e7a00018 	swc1	$f0,24(sp)
     adc:	8fbf002c 	lw	ra,44(sp)
     ae0:	8fb00028 	lw	s0,40(sp)
     ae4:	27bd0048 	addiu	sp,sp,72
     ae8:	03e00008 	jr	ra
     aec:	00000000 	nop

00000af0 <func_80A69EC0>:
     af0:	27bdffc8 	addiu	sp,sp,-56
     af4:	afbf002c 	sw	ra,44(sp)
     af8:	afb00028 	sw	s0,40(sp)
     afc:	44802000 	mtc1	zero,$f4
     b00:	240e0003 	li	t6,3
     b04:	00808025 	move	s0,a0
     b08:	ac8e014c 	sw	t6,332(a0)
     b0c:	ac800150 	sw	zero,336(a0)
     b10:	0c000000 	jal	0 <func_80A693D0>
     b14:	e4840068 	swc1	$f4,104(a0)
     b18:	e7a00030 	swc1	$f0,48(sp)
     b1c:	8e0f0150 	lw	t7,336(s0)
     b20:	3c040000 	lui	a0,0x0
     b24:	000fc080 	sll	t8,t7,0x2
     b28:	00982021 	addu	a0,a0,t8
     b2c:	0c000000 	jal	0 <func_80A693D0>
     b30:	8c840000 	lw	a0,0(a0)
     b34:	44823000 	mtc1	v0,$f6
     b38:	8e190150 	lw	t9,336(s0)
     b3c:	3c01c0a0 	lui	at,0xc0a0
     b40:	46803220 	cvt.s.w	$f8,$f6
     b44:	44815000 	mtc1	at,$f10
     b48:	3c050000 	lui	a1,0x0
     b4c:	00194080 	sll	t0,t9,0x2
     b50:	00a82821 	addu	a1,a1,t0
     b54:	24090002 	li	t1,2
     b58:	afa90014 	sw	t1,20(sp)
     b5c:	8ca50000 	lw	a1,0(a1)
     b60:	e7a80010 	swc1	$f8,16(sp)
     b64:	260401a0 	addiu	a0,s0,416
     b68:	8fa60030 	lw	a2,48(sp)
     b6c:	24070000 	li	a3,0
     b70:	0c000000 	jal	0 <func_80A693D0>
     b74:	e7aa0018 	swc1	$f10,24(sp)
     b78:	8fbf002c 	lw	ra,44(sp)
     b7c:	8fb00028 	lw	s0,40(sp)
     b80:	27bd0038 	addiu	sp,sp,56
     b84:	03e00008 	jr	ra
     b88:	00000000 	nop

00000b8c <func_80A69F5C>:
     b8c:	27bdffc8 	addiu	sp,sp,-56
     b90:	afbf001c 	sw	ra,28(sp)
     b94:	afb00018 	sw	s0,24(sp)
     b98:	8c820150 	lw	v0,336(a0)
     b9c:	24010004 	li	at,4
     ba0:	00808025 	move	s0,a0
     ba4:	10410006 	beq	v0,at,bc0 <func_80A69F5C+0x34>
     ba8:	00a03825 	move	a3,a1
     bac:	24010003 	li	at,3
     bb0:	10410003 	beq	v0,at,bc0 <func_80A69F5C+0x34>
     bb4:	24010002 	li	at,2
     bb8:	54410033 	bnel	v0,at,c88 <func_80A69F5C+0xfc>
     bbc:	8fbf001c 	lw	ra,28(sp)
     bc0:	8ce61c44 	lw	a2,7236(a3)
     bc4:	26050008 	addiu	a1,s0,8
     bc8:	afa50024 	sw	a1,36(sp)
     bcc:	24c40024 	addiu	a0,a2,36
     bd0:	0c000000 	jal	0 <func_80A693D0>
     bd4:	afa60034 	sw	a2,52(sp)
     bd8:	3c01437a 	lui	at,0x437a
     bdc:	44812000 	mtc1	at,$f4
     be0:	8fa50024 	lw	a1,36(sp)
     be4:	8fa60034 	lw	a2,52(sp)
     be8:	4604003c 	c.lt.s	$f0,$f4
     bec:	02002025 	move	a0,s0
     bf0:	45000010 	bc1f	c34 <func_80A69F5C+0xa8>
     bf4:	00000000 	nop
     bf8:	84c300b6 	lh	v1,182(a2)
     bfc:	00c02825 	move	a1,a2
     c00:	0c000000 	jal	0 <func_80A693D0>
     c04:	a7a30032 	sh	v1,50(sp)
     c08:	18400003 	blez	v0,c18 <func_80A69F5C+0x8c>
     c0c:	87a30032 	lh	v1,50(sp)
     c10:	10000002 	b	c1c <func_80A69F5C+0x90>
     c14:	24020001 	li	v0,1
     c18:	2402ffff 	li	v0,-1
     c1c:	00027380 	sll	t6,v0,0xe
     c20:	006e1821 	addu	v1,v1,t6
     c24:	00031c00 	sll	v1,v1,0x10
     c28:	00031c03 	sra	v1,v1,0x10
     c2c:	10000007 	b	c4c <func_80A69F5C+0xc0>
     c30:	86040032 	lh	a0,50(s0)
     c34:	0c000000 	jal	0 <func_80A693D0>
     c38:	26040024 	addiu	a0,s0,36
     c3c:	86040032 	lh	a0,50(s0)
     c40:	00441823 	subu	v1,v0,a0
     c44:	00031c00 	sll	v1,v1,0x10
     c48:	00031c03 	sra	v1,v1,0x10
     c4c:	2861012d 	slti	at,v1,301
     c50:	14200003 	bnez	at,c60 <func_80A69F5C+0xd4>
     c54:	248f012c 	addiu	t7,a0,300
     c58:	10000008 	b	c7c <func_80A69F5C+0xf0>
     c5c:	a60f0032 	sh	t7,50(s0)
     c60:	2861fed4 	slti	at,v1,-300
     c64:	10200004 	beqz	at,c78 <func_80A69F5C+0xec>
     c68:	0083c821 	addu	t9,a0,v1
     c6c:	2498fed4 	addiu	t8,a0,-300
     c70:	10000002 	b	c7c <func_80A69F5C+0xf0>
     c74:	a6180032 	sh	t8,50(s0)
     c78:	a6190032 	sh	t9,50(s0)
     c7c:	86080032 	lh	t0,50(s0)
     c80:	a60800b6 	sh	t0,182(s0)
     c84:	8fbf001c 	lw	ra,28(sp)
     c88:	8fb00018 	lw	s0,24(sp)
     c8c:	27bd0038 	addiu	sp,sp,56
     c90:	03e00008 	jr	ra
     c94:	00000000 	nop

00000c98 <func_80A6A068>:
     c98:	27bdffa8 	addiu	sp,sp,-88
     c9c:	afbf002c 	sw	ra,44(sp)
     ca0:	afb00028 	sw	s0,40(sp)
     ca4:	00808025 	move	s0,a0
     ca8:	0c000000 	jal	0 <func_80A693D0>
     cac:	afa5005c 	sw	a1,92(sp)
     cb0:	8fae005c 	lw	t6,92(sp)
     cb4:	02002025 	move	a0,s0
     cb8:	8dc51c44 	lw	a1,7236(t6)
     cbc:	0c000000 	jal	0 <func_80A693D0>
     cc0:	afa50054 	sw	a1,84(sp)
     cc4:	3c050000 	lui	a1,0x0
     cc8:	24a50000 	addiu	a1,a1,0
     ccc:	8caf0000 	lw	t7,0(a1)
     cd0:	240102ae 	li	at,686
     cd4:	e7a00050 	swc1	$f0,80(sp)
     cd8:	15e1000e 	bne	t7,at,d14 <func_80A6A068+0x7c>
     cdc:	3c070000 	lui	a3,0x0
     ce0:	3c180000 	lui	t8,0x0
     ce4:	24e70000 	addiu	a3,a3,0
     ce8:	27180000 	addiu	t8,t8,0
     cec:	afb80014 	sw	t8,20(sp)
     cf0:	afa70010 	sw	a3,16(sp)
     cf4:	24042844 	li	a0,10308
     cf8:	260500e4 	addiu	a1,s0,228
     cfc:	0c000000 	jal	0 <func_80A693D0>
     d00:	24060004 	li	a2,4
     d04:	0c000000 	jal	0 <func_80A693D0>
     d08:	02002025 	move	a0,s0
     d0c:	100000fb 	b	10fc <func_80A6A068+0x464>
     d10:	8fbf002c 	lw	ra,44(sp)
     d14:	94a20ed6 	lhu	v0,3798(a1)
     d18:	3c190000 	lui	t9,0x0
     d1c:	8fa9005c 	lw	t1,92(sp)
     d20:	30420040 	andi	v0,v0,0x40
     d24:	50400006 	beqzl	v0,d40 <func_80A6A068+0xa8>
     d28:	852a00a4 	lh	t2,164(t1)
     d2c:	8f390000 	lw	t9,0(t9)
     d30:	872805be 	lh	t0,1470(t9)
     d34:	15000009 	bnez	t0,d5c <func_80A6A068+0xc4>
     d38:	00000000 	nop
     d3c:	852a00a4 	lh	t2,164(t1)
     d40:	24010063 	li	at,99
     d44:	5541000a 	bnel	t2,at,d70 <func_80A6A068+0xd8>
     d48:	ae0202a0 	sw	v0,672(s0)
     d4c:	8cab0008 	lw	t3,8(a1)
     d50:	3401fff1 	li	at,0xfff1
     d54:	55610006 	bnel	t3,at,d70 <func_80A6A068+0xd8>
     d58:	ae0202a0 	sw	v0,672(s0)
     d5c:	0c000000 	jal	0 <func_80A693D0>
     d60:	02002025 	move	a0,s0
     d64:	10000003 	b	d74 <func_80A6A068+0xdc>
     d68:	8e030150 	lw	v1,336(s0)
     d6c:	ae0202a0 	sw	v0,672(s0)
     d70:	8e030150 	lw	v1,336(s0)
     d74:	260401a0 	addiu	a0,s0,416
     d78:	afa40030 	sw	a0,48(sp)
     d7c:	0c000000 	jal	0 <func_80A693D0>
     d80:	afa30048 	sw	v1,72(sp)
     d84:	3c050000 	lui	a1,0x0
     d88:	24a50000 	addiu	a1,a1,0
     d8c:	8fa30048 	lw	v1,72(sp)
     d90:	14400007 	bnez	v0,db0 <func_80A6A068+0x118>
     d94:	00403825 	move	a3,v0
     d98:	8e040150 	lw	a0,336(s0)
     d9c:	24060001 	li	a2,1
     da0:	50c40004 	beql	a2,a0,db4 <func_80A6A068+0x11c>
     da4:	94ac0ed6 	lhu	t4,3798(a1)
     da8:	14800099 	bnez	a0,1010 <func_80A6A068+0x378>
     dac:	00000000 	nop
     db0:	94ac0ed6 	lhu	t4,3798(a1)
     db4:	24060001 	li	a2,1
     db8:	26050008 	addiu	a1,s0,8
     dbc:	318d0020 	andi	t5,t4,0x20
     dc0:	11a00085 	beqz	t5,fd8 <func_80A6A068+0x340>
     dc4:	26040024 	addiu	a0,s0,36
     dc8:	afa50034 	sw	a1,52(sp)
     dcc:	0c000000 	jal	0 <func_80A693D0>
     dd0:	afa7004c 	sw	a3,76(sp)
     dd4:	8fa40054 	lw	a0,84(sp)
     dd8:	8fa50034 	lw	a1,52(sp)
     ddc:	e7a00044 	swc1	$f0,68(sp)
     de0:	0c000000 	jal	0 <func_80A693D0>
     de4:	24840024 	addiu	a0,a0,36
     de8:	3c01437a 	lui	at,0x437a
     dec:	44812000 	mtc1	at,$f4
     df0:	24060001 	li	a2,1
     df4:	8fa7004c 	lw	a3,76(sp)
     df8:	4600203c 	c.lt.s	$f4,$f0
     dfc:	c7a20044 	lwc1	$f2,68(sp)
     e00:	3c014348 	lui	at,0x4348
     e04:	45020040 	bc1fl	f08 <func_80A6A068+0x270>
     e08:	c7a20050 	lwc1	$f2,80(sp)
     e0c:	3c014396 	lui	at,0x4396
     e10:	44810000 	mtc1	at,$f0
     e14:	24030004 	li	v1,4
     e18:	3c0140c0 	lui	at,0x40c0
     e1c:	4602003e 	c.le.s	$f0,$f2
     e20:	00000000 	nop
     e24:	45020006 	bc1fl	e40 <func_80A6A068+0x1a8>
     e28:	4600103c 	c.lt.s	$f2,$f0
     e2c:	44813000 	mtc1	at,$f6
     e30:	8e040150 	lw	a0,336(s0)
     e34:	10000076 	b	1010 <func_80A6A068+0x378>
     e38:	e6060068 	swc1	$f6,104(s0)
     e3c:	4600103c 	c.lt.s	$f2,$f0
     e40:	3c014316 	lui	at,0x4316
     e44:	4502000d 	bc1fl	e7c <func_80A6A068+0x1e4>
     e48:	3c014316 	lui	at,0x4316
     e4c:	44814000 	mtc1	at,$f8
     e50:	24030003 	li	v1,3
     e54:	3c014080 	lui	at,0x4080
     e58:	4602403e 	c.le.s	$f8,$f2
     e5c:	00000000 	nop
     e60:	45020006 	bc1fl	e7c <func_80A6A068+0x1e4>
     e64:	3c014316 	lui	at,0x4316
     e68:	44815000 	mtc1	at,$f10
     e6c:	8e040150 	lw	a0,336(s0)
     e70:	10000067 	b	1010 <func_80A6A068+0x378>
     e74:	e60a0068 	swc1	$f10,104(s0)
     e78:	3c014316 	lui	at,0x4316
     e7c:	44818000 	mtc1	at,$f16
     e80:	3c01428c 	lui	at,0x428c
     e84:	4610103c 	c.lt.s	$f2,$f16
     e88:	00000000 	nop
     e8c:	4502000e 	bc1fl	ec8 <func_80A6A068+0x230>
     e90:	8e040150 	lw	a0,336(s0)
     e94:	44819000 	mtc1	at,$f18
     e98:	24030002 	li	v1,2
     e9c:	3c014000 	lui	at,0x4000
     ea0:	4602903e 	c.le.s	$f18,$f2
     ea4:	00000000 	nop
     ea8:	45020007 	bc1fl	ec8 <func_80A6A068+0x230>
     eac:	8e040150 	lw	a0,336(s0)
     eb0:	44812000 	mtc1	at,$f4
     eb4:	ae0001f0 	sw	zero,496(s0)
     eb8:	8e040150 	lw	a0,336(s0)
     ebc:	10000054 	b	1010 <func_80A6A068+0x378>
     ec0:	e6040068 	swc1	$f4,104(s0)
     ec4:	8e040150 	lw	a0,336(s0)
     ec8:	44803000 	mtc1	zero,$f6
     ecc:	14800007 	bnez	a0,eec <func_80A6A068+0x254>
     ed0:	e6060068 	swc1	$f6,104(s0)
     ed4:	14e60003 	bne	a3,a2,ee4 <func_80A6A068+0x24c>
     ed8:	00000000 	nop
     edc:	1000004c 	b	1010 <func_80A6A068+0x378>
     ee0:	00c01825 	move	v1,a2
     ee4:	1000004a 	b	1010 <func_80A6A068+0x378>
     ee8:	00001825 	move	v1,zero
     eec:	14e60003 	bne	a3,a2,efc <func_80A6A068+0x264>
     ef0:	00000000 	nop
     ef4:	10000046 	b	1010 <func_80A6A068+0x378>
     ef8:	00001825 	move	v1,zero
     efc:	10000044 	b	1010 <func_80A6A068+0x378>
     f00:	00c01825 	move	v1,a2
     f04:	c7a20050 	lwc1	$f2,80(sp)
     f08:	44814000 	mtc1	at,$f8
     f0c:	24030004 	li	v1,4
     f10:	3c014396 	lui	at,0x4396
     f14:	4608103c 	c.lt.s	$f2,$f8
     f18:	00000000 	nop
     f1c:	45020007 	bc1fl	f3c <func_80A6A068+0x2a4>
     f20:	44810000 	mtc1	at,$f0
     f24:	3c0140c0 	lui	at,0x40c0
     f28:	44815000 	mtc1	at,$f10
     f2c:	8e040150 	lw	a0,336(s0)
     f30:	10000037 	b	1010 <func_80A6A068+0x378>
     f34:	e60a0068 	swc1	$f10,104(s0)
     f38:	44810000 	mtc1	at,$f0
     f3c:	24030003 	li	v1,3
     f40:	3c0143c8 	lui	at,0x43c8
     f44:	4600103c 	c.lt.s	$f2,$f0
     f48:	00000000 	nop
     f4c:	45020007 	bc1fl	f6c <func_80A6A068+0x2d4>
     f50:	44819000 	mtc1	at,$f18
     f54:	3c014080 	lui	at,0x4080
     f58:	44818000 	mtc1	at,$f16
     f5c:	8e040150 	lw	a0,336(s0)
     f60:	1000002b 	b	1010 <func_80A6A068+0x378>
     f64:	e6100068 	swc1	$f16,104(s0)
     f68:	44819000 	mtc1	at,$f18
     f6c:	24030002 	li	v1,2
     f70:	3c014000 	lui	at,0x4000
     f74:	4612103c 	c.lt.s	$f2,$f18
     f78:	00000000 	nop
     f7c:	45020007 	bc1fl	f9c <func_80A6A068+0x304>
     f80:	8e040150 	lw	a0,336(s0)
     f84:	44812000 	mtc1	at,$f4
     f88:	ae0001f0 	sw	zero,496(s0)
     f8c:	8e040150 	lw	a0,336(s0)
     f90:	1000001f 	b	1010 <func_80A6A068+0x378>
     f94:	e6040068 	swc1	$f4,104(s0)
     f98:	8e040150 	lw	a0,336(s0)
     f9c:	44803000 	mtc1	zero,$f6
     fa0:	14800007 	bnez	a0,fc0 <func_80A6A068+0x328>
     fa4:	e6060068 	swc1	$f6,104(s0)
     fa8:	14e60003 	bne	a3,a2,fb8 <func_80A6A068+0x320>
     fac:	00000000 	nop
     fb0:	10000017 	b	1010 <func_80A6A068+0x378>
     fb4:	00c01825 	move	v1,a2
     fb8:	10000015 	b	1010 <func_80A6A068+0x378>
     fbc:	00001825 	move	v1,zero
     fc0:	14e60003 	bne	a3,a2,fd0 <func_80A6A068+0x338>
     fc4:	00000000 	nop
     fc8:	10000011 	b	1010 <func_80A6A068+0x378>
     fcc:	00001825 	move	v1,zero
     fd0:	1000000f 	b	1010 <func_80A6A068+0x378>
     fd4:	00c01825 	move	v1,a2
     fd8:	8e040150 	lw	a0,336(s0)
     fdc:	44804000 	mtc1	zero,$f8
     fe0:	14800007 	bnez	a0,1000 <func_80A6A068+0x368>
     fe4:	e6080068 	swc1	$f8,104(s0)
     fe8:	14460003 	bne	v0,a2,ff8 <func_80A6A068+0x360>
     fec:	00000000 	nop
     ff0:	10000007 	b	1010 <func_80A6A068+0x378>
     ff4:	00c01825 	move	v1,a2
     ff8:	10000005 	b	1010 <func_80A6A068+0x378>
     ffc:	00001825 	move	v1,zero
    1000:	14460003 	bne	v0,a2,1010 <func_80A6A068+0x378>
    1004:	00c01825 	move	v1,a2
    1008:	10000001 	b	1010 <func_80A6A068+0x378>
    100c:	00001825 	move	v1,zero
    1010:	54640004 	bnel	v1,a0,1024 <func_80A6A068+0x38c>
    1014:	ae030150 	sw	v1,336(s0)
    1018:	14e6001e 	bne	a3,a2,1094 <func_80A6A068+0x3fc>
    101c:	00000000 	nop
    1020:	ae030150 	sw	v1,336(s0)
    1024:	0c000000 	jal	0 <func_80A693D0>
    1028:	02002025 	move	a0,s0
    102c:	e7a00038 	swc1	$f0,56(sp)
    1030:	8e0e0150 	lw	t6,336(s0)
    1034:	3c040000 	lui	a0,0x0
    1038:	000e7880 	sll	t7,t6,0x2
    103c:	008f2021 	addu	a0,a0,t7
    1040:	0c000000 	jal	0 <func_80A693D0>
    1044:	8c840000 	lw	a0,0(a0)
    1048:	44825000 	mtc1	v0,$f10
    104c:	8e180150 	lw	t8,336(s0)
    1050:	3c01c0a0 	lui	at,0xc0a0
    1054:	46805420 	cvt.s.w	$f16,$f10
    1058:	44819000 	mtc1	at,$f18
    105c:	3c050000 	lui	a1,0x0
    1060:	0018c880 	sll	t9,t8,0x2
    1064:	00b92821 	addu	a1,a1,t9
    1068:	24080002 	li	t0,2
    106c:	afa80014 	sw	t0,20(sp)
    1070:	8ca50000 	lw	a1,0(a1)
    1074:	e7b00010 	swc1	$f16,16(sp)
    1078:	8fa40030 	lw	a0,48(sp)
    107c:	8fa60038 	lw	a2,56(sp)
    1080:	24070000 	li	a3,0
    1084:	0c000000 	jal	0 <func_80A693D0>
    1088:	e7b20018 	swc1	$f18,24(sp)
    108c:	1000001b 	b	10fc <func_80A6A068+0x464>
    1090:	8fbf002c 	lw	ra,44(sp)
    1094:	0c000000 	jal	0 <func_80A693D0>
    1098:	02002025 	move	a0,s0
    109c:	e7a00038 	swc1	$f0,56(sp)
    10a0:	8e090150 	lw	t1,336(s0)
    10a4:	3c040000 	lui	a0,0x0
    10a8:	00095080 	sll	t2,t1,0x2
    10ac:	008a2021 	addu	a0,a0,t2
    10b0:	0c000000 	jal	0 <func_80A693D0>
    10b4:	8c840000 	lw	a0,0(a0)
    10b8:	44822000 	mtc1	v0,$f4
    10bc:	8e0b0150 	lw	t3,336(s0)
    10c0:	44804000 	mtc1	zero,$f8
    10c4:	468021a0 	cvt.s.w	$f6,$f4
    10c8:	3c050000 	lui	a1,0x0
    10cc:	8e0701b8 	lw	a3,440(s0)
    10d0:	000b6080 	sll	t4,t3,0x2
    10d4:	00ac2821 	addu	a1,a1,t4
    10d8:	240d0002 	li	t5,2
    10dc:	afad0014 	sw	t5,20(sp)
    10e0:	8ca50000 	lw	a1,0(a1)
    10e4:	e7a60010 	swc1	$f6,16(sp)
    10e8:	8fa40030 	lw	a0,48(sp)
    10ec:	8fa60038 	lw	a2,56(sp)
    10f0:	0c000000 	jal	0 <func_80A693D0>
    10f4:	e7a80018 	swc1	$f8,24(sp)
    10f8:	8fbf002c 	lw	ra,44(sp)
    10fc:	8fb00028 	lw	s0,40(sp)
    1100:	27bd0058 	addiu	sp,sp,88
    1104:	03e00008 	jr	ra
    1108:	00000000 	nop

0000110c <func_80A6A4DC>:
    110c:	27bdffc8 	addiu	sp,sp,-56
    1110:	afbf002c 	sw	ra,44(sp)
    1114:	afb00028 	sw	s0,40(sp)
    1118:	240e0005 	li	t6,5
    111c:	00808025 	move	s0,a0
    1120:	0c000000 	jal	0 <func_80A693D0>
    1124:	ac8e014c 	sw	t6,332(a0)
    1128:	3c013f00 	lui	at,0x3f00
    112c:	44812000 	mtc1	at,$f4
    1130:	240f0001 	li	t7,1
    1134:	3c180000 	lui	t8,0x0
    1138:	4600203c 	c.lt.s	$f4,$f0
    113c:	00000000 	nop
    1140:	45020004 	bc1fl	1154 <func_80A6A4DC+0x48>
    1144:	ae0f0150 	sw	t7,336(s0)
    1148:	10000002 	b	1154 <func_80A6A4DC+0x48>
    114c:	ae000150 	sw	zero,336(s0)
    1150:	ae0f0150 	sw	t7,336(s0)
    1154:	8f180000 	lw	t8,0(t8)
    1158:	02002025 	move	a0,s0
    115c:	0c000000 	jal	0 <func_80A693D0>
    1160:	a70005be 	sh	zero,1470(t8)
    1164:	e7a00030 	swc1	$f0,48(sp)
    1168:	8e190150 	lw	t9,336(s0)
    116c:	3c040000 	lui	a0,0x0
    1170:	00194080 	sll	t0,t9,0x2
    1174:	00882021 	addu	a0,a0,t0
    1178:	0c000000 	jal	0 <func_80A693D0>
    117c:	8c840000 	lw	a0,0(a0)
    1180:	44823000 	mtc1	v0,$f6
    1184:	8e090150 	lw	t1,336(s0)
    1188:	44800000 	mtc1	zero,$f0
    118c:	46803220 	cvt.s.w	$f8,$f6
    1190:	3c050000 	lui	a1,0x0
    1194:	00095080 	sll	t2,t1,0x2
    1198:	00aa2821 	addu	a1,a1,t2
    119c:	240b0002 	li	t3,2
    11a0:	44070000 	mfc1	a3,$f0
    11a4:	afab0014 	sw	t3,20(sp)
    11a8:	8ca50000 	lw	a1,0(a1)
    11ac:	e7a80010 	swc1	$f8,16(sp)
    11b0:	260401a0 	addiu	a0,s0,416
    11b4:	8fa60030 	lw	a2,48(sp)
    11b8:	0c000000 	jal	0 <func_80A693D0>
    11bc:	e7a00018 	swc1	$f0,24(sp)
    11c0:	8fbf002c 	lw	ra,44(sp)
    11c4:	8fb00028 	lw	s0,40(sp)
    11c8:	27bd0038 	addiu	sp,sp,56
    11cc:	03e00008 	jr	ra
    11d0:	00000000 	nop

000011d4 <func_80A6A5A4>:
    11d4:	27bdffc8 	addiu	sp,sp,-56
    11d8:	3c020000 	lui	v0,0x0
    11dc:	8c420000 	lw	v0,0(v0)
    11e0:	afbf002c 	sw	ra,44(sp)
    11e4:	afb00028 	sw	s0,40(sp)
    11e8:	afa5003c 	sw	a1,60(sp)
    11ec:	844e05be 	lh	t6,1470(v0)
    11f0:	3c070000 	lui	a3,0x0
    11f4:	00808025 	move	s0,a0
    11f8:	11c0000e 	beqz	t6,1234 <func_80A6A5A4+0x60>
    11fc:	24e70000 	addiu	a3,a3,0
    1200:	3c0f0000 	lui	t7,0x0
    1204:	a44005be 	sh	zero,1470(v0)
    1208:	25ef0000 	addiu	t7,t7,0
    120c:	afaf0014 	sw	t7,20(sp)
    1210:	afa70010 	sw	a3,16(sp)
    1214:	24042844 	li	a0,10308
    1218:	260500e4 	addiu	a1,s0,228
    121c:	0c000000 	jal	0 <func_80A693D0>
    1220:	24060004 	li	a2,4
    1224:	0c000000 	jal	0 <func_80A693D0>
    1228:	02002025 	move	a0,s0
    122c:	10000045 	b	1344 <func_80A6A5A4+0x170>
    1230:	8fbf002c 	lw	ra,44(sp)
    1234:	44802000 	mtc1	zero,$f4
    1238:	02002025 	move	a0,s0
    123c:	e6040068 	swc1	$f4,104(s0)
    1240:	8fb8003c 	lw	t8,60(sp)
    1244:	0c000000 	jal	0 <func_80A693D0>
    1248:	8f051c44 	lw	a1,7236(t8)
    124c:	86190032 	lh	t9,50(s0)
    1250:	00592023 	subu	a0,v0,t9
    1254:	00042400 	sll	a0,a0,0x10
    1258:	00042403 	sra	a0,a0,0x10
    125c:	0c000000 	jal	0 <func_80A693D0>
    1260:	a7a40036 	sh	a0,54(sp)
    1264:	3c010000 	lui	at,0x0
    1268:	c4260000 	lwc1	$f6,0(at)
    126c:	4606003c 	c.lt.s	$f0,$f6
    1270:	00000000 	nop
    1274:	4502000b 	bc1fl	12a4 <func_80A6A5A4+0xd0>
    1278:	260401a0 	addiu	a0,s0,416
    127c:	8e080150 	lw	t0,336(s0)
    1280:	24010002 	li	at,2
    1284:	8fa9003c 	lw	t1,60(sp)
    1288:	15010005 	bne	t0,at,12a0 <func_80A6A5A4+0xcc>
    128c:	2406012c 	li	a2,300
    1290:	8d251c44 	lw	a1,7236(t1)
    1294:	02002025 	move	a0,s0
    1298:	0c000000 	jal	0 <func_80A693D0>
    129c:	24a50024 	addiu	a1,a1,36
    12a0:	260401a0 	addiu	a0,s0,416
    12a4:	0c000000 	jal	0 <func_80A693D0>
    12a8:	afa40030 	sw	a0,48(sp)
    12ac:	50400025 	beqzl	v0,1344 <func_80A6A5A4+0x170>
    12b0:	8fbf002c 	lw	ra,44(sp)
    12b4:	0c000000 	jal	0 <func_80A693D0>
    12b8:	87a40036 	lh	a0,54(sp)
    12bc:	44804000 	mtc1	zero,$f8
    12c0:	240a0002 	li	t2,2
    12c4:	3c040000 	lui	a0,0x0
    12c8:	4608003c 	c.lt.s	$f0,$f8
    12cc:	00000000 	nop
    12d0:	45000019 	bc1f	1338 <func_80A6A5A4+0x164>
    12d4:	00000000 	nop
    12d8:	ae0a0150 	sw	t2,336(s0)
    12dc:	0c000000 	jal	0 <func_80A693D0>
    12e0:	8c840000 	lw	a0,0(a0)
    12e4:	44825000 	mtc1	v0,$f10
    12e8:	8e030150 	lw	v1,336(s0)
    12ec:	3c01c0a0 	lui	at,0xc0a0
    12f0:	46805420 	cvt.s.w	$f16,$f10
    12f4:	00031880 	sll	v1,v1,0x2
    12f8:	44819000 	mtc1	at,$f18
    12fc:	3c050000 	lui	a1,0x0
    1300:	3c060000 	lui	a2,0x0
    1304:	00c33021 	addu	a2,a2,v1
    1308:	00a32821 	addu	a1,a1,v1
    130c:	240b0002 	li	t3,2
    1310:	afab0014 	sw	t3,20(sp)
    1314:	8ca50000 	lw	a1,0(a1)
    1318:	8cc60000 	lw	a2,0(a2)
    131c:	e7b00010 	swc1	$f16,16(sp)
    1320:	8fa40030 	lw	a0,48(sp)
    1324:	24070000 	li	a3,0
    1328:	0c000000 	jal	0 <func_80A693D0>
    132c:	e7b20018 	swc1	$f18,24(sp)
    1330:	10000004 	b	1344 <func_80A6A5A4+0x170>
    1334:	8fbf002c 	lw	ra,44(sp)
    1338:	0c000000 	jal	0 <func_80A693D0>
    133c:	02002025 	move	a0,s0
    1340:	8fbf002c 	lw	ra,44(sp)
    1344:	8fb00028 	lw	s0,40(sp)
    1348:	27bd0038 	addiu	sp,sp,56
    134c:	03e00008 	jr	ra
    1350:	00000000 	nop

00001354 <func_80A6A724>:
    1354:	27bdffc8 	addiu	sp,sp,-56
    1358:	afbf002c 	sw	ra,44(sp)
    135c:	afb00028 	sw	s0,40(sp)
    1360:	3c014000 	lui	at,0x4000
    1364:	44812000 	mtc1	at,$f4
    1368:	240e0004 	li	t6,4
    136c:	240f0002 	li	t7,2
    1370:	00808025 	move	s0,a0
    1374:	ac8001e4 	sw	zero,484(a0)
    1378:	ac8e014c 	sw	t6,332(a0)
    137c:	ac8f0150 	sw	t7,336(a0)
    1380:	ac8001e8 	sw	zero,488(a0)
    1384:	0c000000 	jal	0 <func_80A693D0>
    1388:	e4840068 	swc1	$f4,104(a0)
    138c:	e7a00030 	swc1	$f0,48(sp)
    1390:	8e180150 	lw	t8,336(s0)
    1394:	3c040000 	lui	a0,0x0
    1398:	0018c880 	sll	t9,t8,0x2
    139c:	00992021 	addu	a0,a0,t9
    13a0:	0c000000 	jal	0 <func_80A693D0>
    13a4:	8c840000 	lw	a0,0(a0)
    13a8:	44823000 	mtc1	v0,$f6
    13ac:	8e080150 	lw	t0,336(s0)
    13b0:	3c01c0a0 	lui	at,0xc0a0
    13b4:	46803220 	cvt.s.w	$f8,$f6
    13b8:	44815000 	mtc1	at,$f10
    13bc:	3c050000 	lui	a1,0x0
    13c0:	00084880 	sll	t1,t0,0x2
    13c4:	00a92821 	addu	a1,a1,t1
    13c8:	240a0002 	li	t2,2
    13cc:	afaa0014 	sw	t2,20(sp)
    13d0:	8ca50000 	lw	a1,0(a1)
    13d4:	e7a80010 	swc1	$f8,16(sp)
    13d8:	260401a0 	addiu	a0,s0,416
    13dc:	8fa60030 	lw	a2,48(sp)
    13e0:	24070000 	li	a3,0
    13e4:	0c000000 	jal	0 <func_80A693D0>
    13e8:	e7aa0018 	swc1	$f10,24(sp)
    13ec:	8fbf002c 	lw	ra,44(sp)
    13f0:	8fb00028 	lw	s0,40(sp)
    13f4:	27bd0038 	addiu	sp,sp,56
    13f8:	03e00008 	jr	ra
    13fc:	00000000 	nop

00001400 <func_80A6A7D0>:
    1400:	27bdffb8 	addiu	sp,sp,-72
    1404:	afbf002c 	sw	ra,44(sp)
    1408:	afb00028 	sw	s0,40(sp)
    140c:	afa5004c 	sw	a1,76(sp)
    1410:	8c8f01e4 	lw	t7,484(a0)
    1414:	8ca31c44 	lw	v1,7236(a1)
    1418:	00808025 	move	s0,a0
    141c:	25f80001 	addiu	t8,t7,1
    1420:	2b01012d 	slti	at,t8,301
    1424:	14200003 	bnez	at,1434 <func_80A6A7D0+0x34>
    1428:	ac9801e4 	sw	t8,484(a0)
    142c:	24080001 	li	t0,1
    1430:	ac8801e8 	sw	t0,488(a0)
    1434:	8e020150 	lw	v0,336(s0)
    1438:	24010004 	li	at,4
    143c:	10410005 	beq	v0,at,1454 <func_80A6A7D0+0x54>
    1440:	24010003 	li	at,3
    1444:	10410003 	beq	v0,at,1454 <func_80A6A7D0+0x54>
    1448:	24010002 	li	at,2
    144c:	5441000e 	bnel	v0,at,1488 <func_80A6A7D0+0x88>
    1450:	260401a0 	addiu	a0,s0,416
    1454:	8e0901e8 	lw	t1,488(s0)
    1458:	2406012c 	li	a2,300
    145c:	02002025 	move	a0,s0
    1460:	15200006 	bnez	t1,147c <func_80A6A7D0+0x7c>
    1464:	26050008 	addiu	a1,s0,8
    1468:	02002025 	move	a0,s0
    146c:	0c000000 	jal	0 <func_80A693D0>
    1470:	24650024 	addiu	a1,v1,36
    1474:	10000004 	b	1488 <func_80A6A7D0+0x88>
    1478:	260401a0 	addiu	a0,s0,416
    147c:	0c000000 	jal	0 <func_80A693D0>
    1480:	2406012c 	li	a2,300
    1484:	260401a0 	addiu	a0,s0,416
    1488:	0c000000 	jal	0 <func_80A693D0>
    148c:	afa40030 	sw	a0,48(sp)
    1490:	5040008d 	beqzl	v0,16c8 <func_80A6A7D0+0x2c8>
    1494:	8fbf002c 	lw	ra,44(sp)
    1498:	8e0a01e8 	lw	t2,488(s0)
    149c:	8fab004c 	lw	t3,76(sp)
    14a0:	26040024 	addiu	a0,s0,36
    14a4:	15400006 	bnez	t2,14c0 <func_80A6A7D0+0xc0>
    14a8:	00000000 	nop
    14ac:	02002025 	move	a0,s0
    14b0:	0c000000 	jal	0 <func_80A693D0>
    14b4:	8d651c44 	lw	a1,7236(t3)
    14b8:	10000004 	b	14cc <func_80A6A7D0+0xcc>
    14bc:	8e0c01e8 	lw	t4,488(s0)
    14c0:	0c000000 	jal	0 <func_80A693D0>
    14c4:	26050008 	addiu	a1,s0,8
    14c8:	8e0c01e8 	lw	t4,488(s0)
    14cc:	3c014396 	lui	at,0x4396
    14d0:	5580001e 	bnezl	t4,154c <func_80A6A7D0+0x14c>
    14d4:	44819000 	mtc1	at,$f18
    14d8:	3c014396 	lui	at,0x4396
    14dc:	44812000 	mtc1	at,$f4
    14e0:	3c014316 	lui	at,0x4316
    14e4:	4600203e 	c.le.s	$f4,$f0
    14e8:	00000000 	nop
    14ec:	45020007 	bc1fl	150c <func_80A6A7D0+0x10c>
    14f0:	44814000 	mtc1	at,$f8
    14f4:	3c0140c0 	lui	at,0x40c0
    14f8:	44813000 	mtc1	at,$f6
    14fc:	24020004 	li	v0,4
    1500:	10000036 	b	15dc <func_80A6A7D0+0x1dc>
    1504:	e6060068 	swc1	$f6,104(s0)
    1508:	44814000 	mtc1	at,$f8
    150c:	24020002 	li	v0,2
    1510:	3c014000 	lui	at,0x4000
    1514:	4600403e 	c.le.s	$f8,$f0
    1518:	00000000 	nop
    151c:	45020007 	bc1fl	153c <func_80A6A7D0+0x13c>
    1520:	44818000 	mtc1	at,$f16
    1524:	3c014080 	lui	at,0x4080
    1528:	44815000 	mtc1	at,$f10
    152c:	24020003 	li	v0,3
    1530:	1000002a 	b	15dc <func_80A6A7D0+0x1dc>
    1534:	e60a0068 	swc1	$f10,104(s0)
    1538:	44818000 	mtc1	at,$f16
    153c:	ae0001f0 	sw	zero,496(s0)
    1540:	10000026 	b	15dc <func_80A6A7D0+0x1dc>
    1544:	e6100068 	swc1	$f16,104(s0)
    1548:	44819000 	mtc1	at,$f18
    154c:	3c014316 	lui	at,0x4316
    1550:	4600903e 	c.le.s	$f18,$f0
    1554:	00000000 	nop
    1558:	45020007 	bc1fl	1578 <func_80A6A7D0+0x178>
    155c:	44813000 	mtc1	at,$f6
    1560:	3c0140c0 	lui	at,0x40c0
    1564:	44812000 	mtc1	at,$f4
    1568:	24020004 	li	v0,4
    156c:	1000001b 	b	15dc <func_80A6A7D0+0x1dc>
    1570:	e6040068 	swc1	$f4,104(s0)
    1574:	44813000 	mtc1	at,$f6
    1578:	3c01428c 	lui	at,0x428c
    157c:	4600303e 	c.le.s	$f6,$f0
    1580:	00000000 	nop
    1584:	45020007 	bc1fl	15a4 <func_80A6A7D0+0x1a4>
    1588:	44815000 	mtc1	at,$f10
    158c:	3c014080 	lui	at,0x4080
    1590:	44814000 	mtc1	at,$f8
    1594:	24020003 	li	v0,3
    1598:	10000010 	b	15dc <func_80A6A7D0+0x1dc>
    159c:	e6080068 	swc1	$f8,104(s0)
    15a0:	44815000 	mtc1	at,$f10
    15a4:	24020002 	li	v0,2
    15a8:	3c014000 	lui	at,0x4000
    15ac:	4600503e 	c.le.s	$f10,$f0
    15b0:	00000000 	nop
    15b4:	45000005 	bc1f	15cc <func_80A6A7D0+0x1cc>
    15b8:	00000000 	nop
    15bc:	44818000 	mtc1	at,$f16
    15c0:	ae0001f0 	sw	zero,496(s0)
    15c4:	10000005 	b	15dc <func_80A6A7D0+0x1dc>
    15c8:	e6100068 	swc1	$f16,104(s0)
    15cc:	0c000000 	jal	0 <func_80A693D0>
    15d0:	02002025 	move	a0,s0
    15d4:	1000003c 	b	16c8 <func_80A6A7D0+0x2c8>
    15d8:	8fbf002c 	lw	ra,44(sp)
    15dc:	8e0d0150 	lw	t5,336(s0)
    15e0:	02002025 	move	a0,s0
    15e4:	104d001e 	beq	v0,t5,1660 <func_80A6A7D0+0x260>
    15e8:	00000000 	nop
    15ec:	0c000000 	jal	0 <func_80A693D0>
    15f0:	ae020150 	sw	v0,336(s0)
    15f4:	e7a00034 	swc1	$f0,52(sp)
    15f8:	8e0e0150 	lw	t6,336(s0)
    15fc:	3c040000 	lui	a0,0x0
    1600:	000e7880 	sll	t7,t6,0x2
    1604:	008f2021 	addu	a0,a0,t7
    1608:	0c000000 	jal	0 <func_80A693D0>
    160c:	8c840000 	lw	a0,0(a0)
    1610:	44829000 	mtc1	v0,$f18
    1614:	8e180150 	lw	t8,336(s0)
    1618:	44800000 	mtc1	zero,$f0
    161c:	46809120 	cvt.s.w	$f4,$f18
    1620:	3c01c0a0 	lui	at,0xc0a0
    1624:	44813000 	mtc1	at,$f6
    1628:	3c050000 	lui	a1,0x0
    162c:	0018c880 	sll	t9,t8,0x2
    1630:	00b92821 	addu	a1,a1,t9
    1634:	24080002 	li	t0,2
    1638:	44070000 	mfc1	a3,$f0
    163c:	afa80014 	sw	t0,20(sp)
    1640:	8ca50000 	lw	a1,0(a1)
    1644:	e7a40010 	swc1	$f4,16(sp)
    1648:	8fa40030 	lw	a0,48(sp)
    164c:	8fa60034 	lw	a2,52(sp)
    1650:	0c000000 	jal	0 <func_80A693D0>
    1654:	e7a60018 	swc1	$f6,24(sp)
    1658:	1000001b 	b	16c8 <func_80A6A7D0+0x2c8>
    165c:	8fbf002c 	lw	ra,44(sp)
    1660:	0c000000 	jal	0 <func_80A693D0>
    1664:	02002025 	move	a0,s0
    1668:	e7a00034 	swc1	$f0,52(sp)
    166c:	8e090150 	lw	t1,336(s0)
    1670:	3c040000 	lui	a0,0x0
    1674:	00095080 	sll	t2,t1,0x2
    1678:	008a2021 	addu	a0,a0,t2
    167c:	0c000000 	jal	0 <func_80A693D0>
    1680:	8c840000 	lw	a0,0(a0)
    1684:	44824000 	mtc1	v0,$f8
    1688:	8e0b0150 	lw	t3,336(s0)
    168c:	44800000 	mtc1	zero,$f0
    1690:	468042a0 	cvt.s.w	$f10,$f8
    1694:	3c050000 	lui	a1,0x0
    1698:	000b6080 	sll	t4,t3,0x2
    169c:	00ac2821 	addu	a1,a1,t4
    16a0:	240d0002 	li	t5,2
    16a4:	44070000 	mfc1	a3,$f0
    16a8:	afad0014 	sw	t5,20(sp)
    16ac:	8ca50000 	lw	a1,0(a1)
    16b0:	e7aa0010 	swc1	$f10,16(sp)
    16b4:	8fa40030 	lw	a0,48(sp)
    16b8:	8fa60034 	lw	a2,52(sp)
    16bc:	0c000000 	jal	0 <func_80A693D0>
    16c0:	e7a00018 	swc1	$f0,24(sp)
    16c4:	8fbf002c 	lw	ra,44(sp)
    16c8:	8fb00028 	lw	s0,40(sp)
    16cc:	27bd0048 	addiu	sp,sp,72
    16d0:	03e00008 	jr	ra
    16d4:	00000000 	nop

000016d8 <EnHorseLinkChild_Update>:
    16d8:	27bdffc8 	addiu	sp,sp,-56
    16dc:	afb0001c 	sw	s0,28(sp)
    16e0:	00808025 	move	s0,a0
    16e4:	afbf0024 	sw	ra,36(sp)
    16e8:	afb10020 	sw	s1,32(sp)
    16ec:	8e0e014c 	lw	t6,332(s0)
    16f0:	3c190000 	lui	t9,0x0
    16f4:	00a08825 	move	s1,a1
    16f8:	000e7880 	sll	t7,t6,0x2
    16fc:	032fc821 	addu	t9,t9,t7
    1700:	8f390000 	lw	t9,0(t9)
    1704:	0320f809 	jalr	t9
    1708:	00000000 	nop
    170c:	0c000000 	jal	0 <func_80A693D0>
    1710:	02002025 	move	a0,s0
    1714:	3c0142c8 	lui	at,0x42c8
    1718:	44812000 	mtc1	at,$f4
    171c:	2418001d 	li	t8,29
    1720:	afb80014 	sw	t8,20(sp)
    1724:	02202025 	move	a0,s1
    1728:	02002825 	move	a1,s0
    172c:	3c0641a0 	lui	a2,0x41a0
    1730:	3c07425c 	lui	a3,0x425c
    1734:	0c000000 	jal	0 <func_80A693D0>
    1738:	e7a40010 	swc1	$f4,16(sp)
    173c:	862800a4 	lh	t0,164(s1)
    1740:	24010063 	li	at,99
    1744:	15010008 	bne	t0,at,1768 <EnHorseLinkChild_Update+0x90>
    1748:	3c01c516 	lui	at,0xc516
    174c:	44810000 	mtc1	at,$f0
    1750:	c606002c 	lwc1	$f6,44(s0)
    1754:	4600303c 	c.lt.s	$f6,$f0
    1758:	00000000 	nop
    175c:	45020003 	bc1fl	176c <EnHorseLinkChild_Update+0x94>
    1760:	8e090028 	lw	t1,40(s0)
    1764:	e600002c 	swc1	$f0,44(s0)
    1768:	8e090028 	lw	t1,40(s0)
    176c:	3c01428c 	lui	at,0x428c
    1770:	8e0a0024 	lw	t2,36(s0)
    1774:	ae09003c 	sw	t1,60(s0)
    1778:	c608003c 	lwc1	$f8,60(s0)
    177c:	44815000 	mtc1	at,$f10
    1780:	ae0a0038 	sw	t2,56(s0)
    1784:	8e0a002c 	lw	t2,44(s0)
    1788:	460a4400 	add.s	$f16,$f8,$f10
    178c:	ae0a0040 	sw	t2,64(s0)
    1790:	0c000000 	jal	0 <func_80A693D0>
    1794:	e610003c 	swc1	$f16,60(s0)
    1798:	3c010000 	lui	at,0x0
    179c:	c4320000 	lwc1	$f18,0(at)
    17a0:	260601f4 	addiu	a2,s0,500
    17a4:	00c02825 	move	a1,a2
    17a8:	4612003c 	c.lt.s	$f0,$f18
    17ac:	02002025 	move	a0,s0
    17b0:	45020007 	bc1fl	17d0 <EnHorseLinkChild_Update+0xf8>
    17b4:	920201ec 	lbu	v0,492(s0)
    17b8:	920201ec 	lbu	v0,492(s0)
    17bc:	14400003 	bnez	v0,17cc <EnHorseLinkChild_Update+0xf4>
    17c0:	244b0001 	addiu	t3,v0,1
    17c4:	10000009 	b	17ec <EnHorseLinkChild_Update+0x114>
    17c8:	a20b01ec 	sb	t3,492(s0)
    17cc:	920201ec 	lbu	v0,492(s0)
    17d0:	18400006 	blez	v0,17ec <EnHorseLinkChild_Update+0x114>
    17d4:	244c0001 	addiu	t4,v0,1
    17d8:	318d00ff 	andi	t5,t4,0xff
    17dc:	29a10004 	slti	at,t5,4
    17e0:	14200002 	bnez	at,17ec <EnHorseLinkChild_Update+0x114>
    17e4:	a20c01ec 	sb	t4,492(s0)
    17e8:	a20001ec 	sb	zero,492(s0)
    17ec:	0c000000 	jal	0 <func_80A693D0>
    17f0:	afa6002c 	sw	a2,44(sp)
    17f4:	3c010001 	lui	at,0x1
    17f8:	34211e60 	ori	at,at,0x1e60
    17fc:	8fa6002c 	lw	a2,44(sp)
    1800:	02212821 	addu	a1,s1,at
    1804:	0c000000 	jal	0 <func_80A693D0>
    1808:	02202025 	move	a0,s1
    180c:	0c000000 	jal	0 <func_80A693D0>
    1810:	02002025 	move	a0,s0
    1814:	8fbf0024 	lw	ra,36(sp)
    1818:	8fb0001c 	lw	s0,28(sp)
    181c:	8fb10020 	lw	s1,32(sp)
    1820:	03e00008 	jr	ra
    1824:	27bd0038 	addiu	sp,sp,56

00001828 <func_80A6ABF8>:
    1828:	27bdffa8 	addiu	sp,sp,-88
    182c:	afbf002c 	sw	ra,44(sp)
    1830:	afb50028 	sw	s5,40(sp)
    1834:	afb40024 	sw	s4,36(sp)
    1838:	afb30020 	sw	s3,32(sp)
    183c:	afb2001c 	sw	s2,28(sp)
    1840:	afb10018 	sw	s1,24(sp)
    1844:	afb00014 	sw	s0,20(sp)
    1848:	afa5005c 	sw	a1,92(sp)
    184c:	8c8e0258 	lw	t6,600(a0)
    1850:	00808825 	move	s1,a0
    1854:	00c09825 	move	s3,a2
    1858:	19c00047 	blez	t6,1978 <func_80A6ABF8+0x150>
    185c:	00009025 	move	s2,zero
    1860:	00008025 	move	s0,zero
    1864:	27b50040 	addiu	s5,sp,64
    1868:	27b4004c 	addiu	s4,sp,76
    186c:	8e2f025c 	lw	t7,604(s1)
    1870:	02602025 	move	a0,s3
    1874:	02803025 	move	a2,s4
    1878:	01f0c021 	addu	t8,t7,s0
    187c:	87190028 	lh	t9,40(t8)
    1880:	02a03825 	move	a3,s5
    1884:	44992000 	mtc1	t9,$f4
    1888:	00000000 	nop
    188c:	468021a0 	cvt.s.w	$f6,$f4
    1890:	e7a6004c 	swc1	$f6,76(sp)
    1894:	8e28025c 	lw	t0,604(s1)
    1898:	01104821 	addu	t1,t0,s0
    189c:	852a002a 	lh	t2,42(t1)
    18a0:	448a4000 	mtc1	t2,$f8
    18a4:	00000000 	nop
    18a8:	468042a0 	cvt.s.w	$f10,$f8
    18ac:	e7aa0050 	swc1	$f10,80(sp)
    18b0:	8e2b025c 	lw	t3,604(s1)
    18b4:	01706021 	addu	t4,t3,s0
    18b8:	858d002c 	lh	t5,44(t4)
    18bc:	448d8000 	mtc1	t5,$f16
    18c0:	00000000 	nop
    18c4:	468084a0 	cvt.s.w	$f18,$f16
    18c8:	e7b20054 	swc1	$f18,84(sp)
    18cc:	8e2e025c 	lw	t6,604(s1)
    18d0:	01d07821 	addu	t7,t6,s0
    18d4:	0c000000 	jal	0 <func_80A693D0>
    18d8:	91e5003c 	lbu	a1,60(t7)
    18dc:	c7a40040 	lwc1	$f4,64(sp)
    18e0:	8e28025c 	lw	t0,604(s1)
    18e4:	26520001 	addiu	s2,s2,1
    18e8:	4600218d 	trunc.w.s	$f6,$f4
    18ec:	01104821 	addu	t1,t0,s0
    18f0:	44193000 	mfc1	t9,$f6
    18f4:	00000000 	nop
    18f8:	a5390030 	sh	t9,48(t1)
    18fc:	c7a80044 	lwc1	$f8,68(sp)
    1900:	8e2c025c 	lw	t4,604(s1)
    1904:	4600428d 	trunc.w.s	$f10,$f8
    1908:	01906821 	addu	t5,t4,s0
    190c:	440b5000 	mfc1	t3,$f10
    1910:	00000000 	nop
    1914:	a5ab0032 	sh	t3,50(t5)
    1918:	c7b00048 	lwc1	$f16,72(sp)
    191c:	8e38025c 	lw	t8,604(s1)
    1920:	4600848d 	trunc.w.s	$f18,$f16
    1924:	03104021 	addu	t0,t8,s0
    1928:	440f9000 	mfc1	t7,$f18
    192c:	00000000 	nop
    1930:	a50f0034 	sh	t7,52(t0)
    1934:	8e39025c 	lw	t9,604(s1)
    1938:	03301021 	addu	v0,t9,s0
    193c:	8449002e 	lh	t1,46(v0)
    1940:	c4440038 	lwc1	$f4,56(v0)
    1944:	26100040 	addiu	s0,s0,64
    1948:	44893000 	mtc1	t1,$f6
    194c:	00000000 	nop
    1950:	46803220 	cvt.s.w	$f8,$f6
    1954:	46082282 	mul.s	$f10,$f4,$f8
    1958:	4600540d 	trunc.w.s	$f16,$f10
    195c:	440c8000 	mfc1	t4,$f16
    1960:	00000000 	nop
    1964:	a44c0036 	sh	t4,54(v0)
    1968:	8e2b0258 	lw	t3,600(s1)
    196c:	024b082a 	slt	at,s2,t3
    1970:	5420ffbf 	bnezl	at,1870 <func_80A6ABF8+0x48>
    1974:	8e2f025c 	lw	t7,604(s1)
    1978:	8fa4005c 	lw	a0,92(sp)
    197c:	3c010001 	lui	at,0x1
    1980:	34211e60 	ori	at,at,0x1e60
    1984:	26260240 	addiu	a2,s1,576
    1988:	0c000000 	jal	0 <func_80A693D0>
    198c:	00812821 	addu	a1,a0,at
    1990:	8fbf002c 	lw	ra,44(sp)
    1994:	8fb00014 	lw	s0,20(sp)
    1998:	8fb10018 	lw	s1,24(sp)
    199c:	8fb2001c 	lw	s2,28(sp)
    19a0:	8fb30020 	lw	s3,32(sp)
    19a4:	8fb40024 	lw	s4,36(sp)
    19a8:	8fb50028 	lw	s5,40(sp)
    19ac:	03e00008 	jr	ra
    19b0:	27bd0058 	addiu	sp,sp,88

000019b4 <func_80A6AD84>:
    19b4:	27bdffc0 	addiu	sp,sp,-64
    19b8:	afbf0014 	sw	ra,20(sp)
    19bc:	afa40040 	sw	a0,64(sp)
    19c0:	afa50044 	sw	a1,68(sp)
    19c4:	afa60048 	sw	a2,72(sp)
    19c8:	afa7004c 	sw	a3,76(sp)
    19cc:	8ca50000 	lw	a1,0(a1)
    19d0:	3c060000 	lui	a2,0x0
    19d4:	24c60000 	addiu	a2,a2,0
    19d8:	240705bb 	li	a3,1467
    19dc:	27a40028 	addiu	a0,sp,40
    19e0:	0c000000 	jal	0 <func_80A693D0>
    19e4:	afa50038 	sw	a1,56(sp)
    19e8:	8faf0048 	lw	t7,72(sp)
    19ec:	2401000d 	li	at,13
    19f0:	8fa80038 	lw	t0,56(sp)
    19f4:	15e1001d 	bne	t7,at,1a6c <func_80A6AD84+0xb8>
    19f8:	3c060000 	lui	a2,0x0
    19fc:	8fb80040 	lw	t8,64(sp)
    1a00:	3c050000 	lui	a1,0x0
    1a04:	8d0302c0 	lw	v1,704(t0)
    1a08:	931901ec 	lbu	t9,492(t8)
    1a0c:	3c0adb06 	lui	t2,0xdb06
    1a10:	24690008 	addiu	t1,v1,8
    1a14:	00b92821 	addu	a1,a1,t9
    1a18:	90a50000 	lbu	a1,0(a1)
    1a1c:	ad0902c0 	sw	t1,704(t0)
    1a20:	354a0020 	ori	t2,t2,0x20
    1a24:	3c040000 	lui	a0,0x0
    1a28:	00055880 	sll	t3,a1,0x2
    1a2c:	008b2021 	addu	a0,a0,t3
    1a30:	ac6a0000 	sw	t2,0(v1)
    1a34:	8c840000 	lw	a0,0(a0)
    1a38:	3c180000 	lui	t8,0x0
    1a3c:	3c0100ff 	lui	at,0xff
    1a40:	00046900 	sll	t5,a0,0x4
    1a44:	000d7702 	srl	t6,t5,0x1c
    1a48:	000e7880 	sll	t7,t6,0x2
    1a4c:	030fc021 	addu	t8,t8,t7
    1a50:	8f180000 	lw	t8,0(t8)
    1a54:	3421ffff 	ori	at,at,0xffff
    1a58:	00816024 	and	t4,a0,at
    1a5c:	3c018000 	lui	at,0x8000
    1a60:	0198c821 	addu	t9,t4,t8
    1a64:	03214821 	addu	t1,t9,at
    1a68:	ac690004 	sw	t1,4(v1)
    1a6c:	8faa0044 	lw	t2,68(sp)
    1a70:	27a40028 	addiu	a0,sp,40
    1a74:	24c60000 	addiu	a2,a2,0
    1a78:	240705c7 	li	a3,1479
    1a7c:	0c000000 	jal	0 <func_80A693D0>
    1a80:	8d450000 	lw	a1,0(t2)
    1a84:	8fbf0014 	lw	ra,20(sp)
    1a88:	27bd0040 	addiu	sp,sp,64
    1a8c:	24020001 	li	v0,1
    1a90:	03e00008 	jr	ra
    1a94:	00000000 	nop

00001a98 <EnHorseLinkChild_Draw>:
    1a98:	27bdffe0 	addiu	sp,sp,-32
    1a9c:	afbf001c 	sw	ra,28(sp)
    1aa0:	afa40020 	sw	a0,32(sp)
    1aa4:	afa50024 	sw	a1,36(sp)
    1aa8:	0c000000 	jal	0 <func_80A693D0>
    1aac:	8ca40000 	lw	a0,0(a1)
    1ab0:	8fa40020 	lw	a0,32(sp)
    1ab4:	3c0f0000 	lui	t7,0x0
    1ab8:	25ef0000 	addiu	t7,t7,0
    1abc:	3c070000 	lui	a3,0x0
    1ac0:	24180001 	li	t8,1
    1ac4:	afb80014 	sw	t8,20(sp)
    1ac8:	24e70000 	addiu	a3,a3,0
    1acc:	afaf0010 	sw	t7,16(sp)
    1ad0:	8fa50024 	lw	a1,36(sp)
    1ad4:	0c000000 	jal	0 <func_80A693D0>
    1ad8:	24860154 	addiu	a2,a0,340
    1adc:	8fbf001c 	lw	ra,28(sp)
    1ae0:	27bd0020 	addiu	sp,sp,32
    1ae4:	03e00008 	jr	ra
    1ae8:	00000000 	nop
    1aec:	00000000 	nop
