
build/src/overlays/actors/ovl_En_Skb/z_en_skb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AFC9A0>:
       0:	03e00008 	jr	ra
       4:	ac850284 	sw	a1,644(a0)

00000008 <func_80AFC9A8>:
       8:	27bdff98 	addiu	sp,sp,-104
       c:	3c0f0000 	lui	t7,0x0
      10:	afbf002c 	sw	ra,44(sp)
      14:	afa40068 	sw	a0,104(sp)
      18:	afa5006c 	sw	a1,108(sp)
      1c:	afa60070 	sw	a2,112(sp)
      20:	25ef0000 	addiu	t7,t7,0
      24:	8df90000 	lw	t9,0(t7)
      28:	27ae0050 	addiu	t6,sp,80
      2c:	8df80004 	lw	t8,4(t7)
      30:	add90000 	sw	t9,0(t6)
      34:	8df90008 	lw	t9,8(t7)
      38:	3c090000 	lui	t1,0x0
      3c:	25290000 	addiu	t1,t1,0
      40:	add80004 	sw	t8,4(t6)
      44:	add90008 	sw	t9,8(t6)
      48:	8d2b0000 	lw	t3,0(t1)
      4c:	27a80044 	addiu	t0,sp,68
      50:	8d2a0004 	lw	t2,4(t1)
      54:	ad0b0000 	sw	t3,0(t0)
      58:	8d2b0008 	lw	t3,8(t1)
      5c:	ad0a0004 	sw	t2,4(t0)
      60:	0c000000 	jal	0 <func_80AFC9A0>
      64:	ad0b0008 	sw	t3,8(t0)
      68:	3c013f00 	lui	at,0x3f00
      6c:	44812000 	mtc1	at,$f4
      70:	3c010000 	lui	at,0x0
      74:	c4280000 	lwc1	$f8,0(at)
      78:	46040181 	sub.s	$f6,$f0,$f4
      7c:	8fac006c 	lw	t4,108(sp)
      80:	46083302 	mul.s	$f12,$f6,$f8
      84:	e7ac0040 	swc1	$f12,64(sp)
      88:	c58a0080 	lwc1	$f10,128(t4)
      8c:	0c000000 	jal	0 <func_80AFC9A0>
      90:	e7aa0060 	swc1	$f10,96(sp)
      94:	3c014170 	lui	at,0x4170
      98:	44818000 	mtc1	at,$f16
      9c:	8fad0070 	lw	t5,112(sp)
      a0:	c7ac0040 	lwc1	$f12,64(sp)
      a4:	46100482 	mul.s	$f18,$f0,$f16
      a8:	c5a40000 	lwc1	$f4,0(t5)
      ac:	46049180 	add.s	$f6,$f18,$f4
      b0:	0c000000 	jal	0 <func_80AFC9A0>
      b4:	e7a6005c 	swc1	$f6,92(sp)
      b8:	3c014170 	lui	at,0x4170
      bc:	44814000 	mtc1	at,$f8
      c0:	8fae0070 	lw	t6,112(sp)
      c4:	3c013f80 	lui	at,0x3f80
      c8:	46080282 	mul.s	$f10,$f0,$f8
      cc:	c5d00008 	lwc1	$f16,8(t6)
      d0:	44816000 	mtc1	at,$f12
      d4:	46105480 	add.s	$f18,$f10,$f16
      d8:	0c000000 	jal	0 <func_80AFC9A0>
      dc:	e7b20064 	swc1	$f18,100(sp)
      e0:	3c013f80 	lui	at,0x3f80
      e4:	44816000 	mtc1	at,$f12
      e8:	0c000000 	jal	0 <func_80AFC9A0>
      ec:	e7a00044 	swc1	$f0,68(sp)
      f0:	0c000000 	jal	0 <func_80AFC9A0>
      f4:	e7a0004c 	swc1	$f0,76(sp)
      f8:	3c013f00 	lui	at,0x3f00
      fc:	44812000 	mtc1	at,$f4
     100:	3c014080 	lui	at,0x4080
     104:	44814000 	mtc1	at,$f8
     108:	46040181 	sub.s	$f6,$f0,$f4
     10c:	c7b00054 	lwc1	$f16,84(sp)
     110:	46083282 	mul.s	$f10,$f6,$f8
     114:	460a8480 	add.s	$f18,$f16,$f10
     118:	0c000000 	jal	0 <func_80AFC9A0>
     11c:	e7b20054 	swc1	$f18,84(sp)
     120:	3c0140a0 	lui	at,0x40a0
     124:	44812000 	mtc1	at,$f4
     128:	3c014140 	lui	at,0x4140
     12c:	44814000 	mtc1	at,$f8
     130:	46040182 	mul.s	$f6,$f0,$f4
     134:	3c010000 	lui	at,0x0
     138:	c42a0000 	lwc1	$f10,0(at)
     13c:	240f0002 	li	t7,2
     140:	2408ffff 	li	t0,-1
     144:	2409000a 	li	t1,10
     148:	afa9001c 	sw	t1,28(sp)
     14c:	46083400 	add.s	$f16,$f6,$f8
     150:	afa80018 	sw	t0,24(sp)
     154:	afaf0010 	sw	t7,16(sp)
     158:	8fa40068 	lw	a0,104(sp)
     15c:	460a8482 	mul.s	$f18,$f16,$f10
     160:	27a5005c 	addiu	a1,sp,92
     164:	27a60050 	addiu	a2,sp,80
     168:	27a70044 	addiu	a3,sp,68
     16c:	afa00020 	sw	zero,32(sp)
     170:	4600910d 	trunc.w.s	$f4,$f18
     174:	44192000 	mfc1	t9,$f4
     178:	0c000000 	jal	0 <func_80AFC9A0>
     17c:	afb90014 	sw	t9,20(sp)
     180:	240a0096 	li	t2,150
     184:	240b0001 	li	t3,1
     188:	afab0018 	sw	t3,24(sp)
     18c:	afaa0010 	sw	t2,16(sp)
     190:	8fa40068 	lw	a0,104(sp)
     194:	27a5005c 	addiu	a1,sp,92
     198:	3c064120 	lui	a2,0x4120
     19c:	24070001 	li	a3,1
     1a0:	0c000000 	jal	0 <func_80AFC9A0>
     1a4:	afa00014 	sw	zero,20(sp)
     1a8:	8fbf002c 	lw	ra,44(sp)
     1ac:	27bd0068 	addiu	sp,sp,104
     1b0:	03e00008 	jr	ra
     1b4:	00000000 	nop

000001b8 <EnSkb_Init>:
     1b8:	27bdffc0 	addiu	sp,sp,-64
     1bc:	afa50044 	sw	a1,68(sp)
     1c0:	afbf002c 	sw	ra,44(sp)
     1c4:	afb00028 	sw	s0,40(sp)
     1c8:	3c050000 	lui	a1,0x0
     1cc:	00808025 	move	s0,a0
     1d0:	0c000000 	jal	0 <func_80AFC9A0>
     1d4:	24a50000 	addiu	a1,a1,0
     1d8:	44800000 	mtc1	zero,$f0
     1dc:	3c0e0000 	lui	t6,0x0
     1e0:	25ce0000 	addiu	t6,t6,0
     1e4:	3c060000 	lui	a2,0x0
     1e8:	44050000 	mfc1	a1,$f0
     1ec:	44070000 	mfc1	a3,$f0
     1f0:	ae0e0098 	sw	t6,152(s0)
     1f4:	24c60000 	addiu	a2,a2,0
     1f8:	0c000000 	jal	0 <func_80AFC9A0>
     1fc:	260400b4 	addiu	a0,s0,180
     200:	26020024 	addiu	v0,s0,36
     204:	8c580000 	lw	t8,0(v0)
     208:	3c01c5fa 	lui	at,0xc5fa
     20c:	44812000 	mtc1	at,$f4
     210:	ae180038 	sw	t8,56(s0)
     214:	8c4f0004 	lw	t7,4(v0)
     218:	241900fe 	li	t9,254
     21c:	24080002 	li	t0,2
     220:	ae0f003c 	sw	t7,60(s0)
     224:	8c580008 	lw	t8,8(v0)
     228:	a21900ae 	sb	t9,174(s0)
     22c:	a20800af 	sb	t0,175(s0)
     230:	e60400bc 	swc1	$f4,188(s0)
     234:	ae180040 	sw	t8,64(s0)
     238:	3c060600 	lui	a2,0x600
     23c:	3c070600 	lui	a3,0x600
     240:	26090190 	addiu	t1,s0,400
     244:	260a0208 	addiu	t2,s0,520
     248:	240b0014 	li	t3,20
     24c:	afab0018 	sw	t3,24(sp)
     250:	afaa0014 	sw	t2,20(sp)
     254:	afa90010 	sw	t1,16(sp)
     258:	24e71854 	addiu	a3,a3,6228
     25c:	24c641f8 	addiu	a2,a2,16888
     260:	afa20034 	sw	v0,52(sp)
     264:	8fa40044 	lw	a0,68(sp)
     268:	0c000000 	jal	0 <func_80AFC9A0>
     26c:	2605014c 	addiu	a1,s0,332
     270:	240c0055 	li	t4,85
     274:	a20c0117 	sb	t4,279(s0)
     278:	260502a4 	addiu	a1,s0,676
     27c:	afa50030 	sw	a1,48(sp)
     280:	0c000000 	jal	0 <func_80AFC9A0>
     284:	8fa40044 	lw	a0,68(sp)
     288:	3c070000 	lui	a3,0x0
     28c:	260d02c4 	addiu	t5,s0,708
     290:	8fa50030 	lw	a1,48(sp)
     294:	afad0010 	sw	t5,16(sp)
     298:	24e70000 	addiu	a3,a3,0
     29c:	8fa40044 	lw	a0,68(sp)
     2a0:	0c000000 	jal	0 <func_80AFC9A0>
     2a4:	02003025 	move	a2,s0
     2a8:	860e001c 	lh	t6,28(s0)
     2ac:	3c010000 	lui	at,0x0
     2b0:	c42a0000 	lwc1	$f10,0(at)
     2b4:	448e3000 	mtc1	t6,$f6
     2b8:	3c013f80 	lui	at,0x3f80
     2bc:	44819000 	mtc1	at,$f18
     2c0:	46803220 	cvt.s.w	$f8,$f6
     2c4:	3c010000 	lui	at,0x0
     2c8:	c4260000 	lwc1	$f6,0(at)
     2cc:	02002025 	move	a0,s0
     2d0:	460a4402 	mul.s	$f16,$f8,$f10
     2d4:	46128100 	add.s	$f4,$f16,$f18
     2d8:	46062202 	mul.s	$f8,$f4,$f6
     2dc:	44054000 	mfc1	a1,$f8
     2e0:	0c000000 	jal	0 <func_80AFC9A0>
     2e4:	00000000 	nop
     2e8:	8602001c 	lh	v0,28(s0)
     2ec:	8e0f02c0 	lw	t7,704(s0)
     2f0:	02002025 	move	a0,s0
     2f4:	2442000a 	addiu	v0,v0,10
     2f8:	00021400 	sll	v0,v0,0x10
     2fc:	00021403 	sra	v0,v0,0x10
     300:	a5e20036 	sh	v0,54(t7)
     304:	8e1802c0 	lw	t8,704(s0)
     308:	a702002e 	sh	v0,46(t8)
     30c:	8602001c 	lh	v0,28(s0)
     310:	8e1902c0 	lw	t9,704(s0)
     314:	00021040 	sll	v0,v0,0x1
     318:	24420014 	addiu	v0,v0,20
     31c:	00021400 	sll	v0,v0,0x10
     320:	00021403 	sra	v0,v0,0x10
     324:	a7220076 	sh	v0,118(t9)
     328:	8e0802c0 	lw	t0,704(s0)
     32c:	a502006e 	sh	v0,110(t0)
     330:	8fa90034 	lw	t1,52(sp)
     334:	c60a0028 	lwc1	$f10,40(s0)
     338:	8d2b0000 	lw	t3,0(t1)
     33c:	ae0b0008 	sw	t3,8(s0)
     340:	8d2a0004 	lw	t2,4(t1)
     344:	ae0a000c 	sw	t2,12(s0)
     348:	8d2b0008 	lw	t3,8(t1)
     34c:	e60a0080 	swc1	$f10,128(s0)
     350:	0c000000 	jal	0 <func_80AFC9A0>
     354:	ae0b0010 	sw	t3,16(s0)
     358:	8fbf002c 	lw	ra,44(sp)
     35c:	8fb00028 	lw	s0,40(sp)
     360:	27bd0040 	addiu	sp,sp,64
     364:	03e00008 	jr	ra
     368:	00000000 	nop

0000036c <EnSkb_Destroy>:
     36c:	27bdffe8 	addiu	sp,sp,-24
     370:	afbf0014 	sw	ra,20(sp)
     374:	8c830118 	lw	v1,280(a0)
     378:	00803025 	move	a2,a0
     37c:	00a03825 	move	a3,a1
     380:	10600009 	beqz	v1,3a8 <EnSkb_Destroy+0x3c>
     384:	00e02025 	move	a0,a3
     388:	8c6e0130 	lw	t6,304(v1)
     38c:	00601025 	move	v0,v1
     390:	11c00005 	beqz	t6,3a8 <EnSkb_Destroy+0x3c>
     394:	00000000 	nop
     398:	84630152 	lh	v1,338(v1)
     39c:	18600002 	blez	v1,3a8 <EnSkb_Destroy+0x3c>
     3a0:	246fffff 	addiu	t7,v1,-1
     3a4:	a44f0152 	sh	t7,338(v0)
     3a8:	0c000000 	jal	0 <func_80AFC9A0>
     3ac:	24c502a4 	addiu	a1,a2,676
     3b0:	8fbf0014 	lw	ra,20(sp)
     3b4:	27bd0018 	addiu	sp,sp,24
     3b8:	03e00008 	jr	ra
     3bc:	00000000 	nop

000003c0 <func_80AFCD60>:
     3c0:	3c0e0000 	lui	t6,0x0
     3c4:	8dce0010 	lw	t6,16(t6)
     3c8:	27bdffe8 	addiu	sp,sp,-24
     3cc:	afbf0014 	sw	ra,20(sp)
     3d0:	15c00005 	bnez	t6,3e8 <func_80AFCD60+0x28>
     3d4:	240511c7 	li	a1,4551
     3d8:	0c000000 	jal	0 <func_80AFC9A0>
     3dc:	00000000 	nop
     3e0:	1000001a 	b	44c <func_80AFCD60+0x8c>
     3e4:	8fbf0014 	lw	ra,20(sp)
     3e8:	0c000000 	jal	0 <func_80AFC9A0>
     3ec:	afa40018 	sw	a0,24(sp)
     3f0:	10400013 	beqz	v0,440 <func_80AFCD60+0x80>
     3f4:	8fa40018 	lw	a0,24(sp)
     3f8:	848f001c 	lh	t7,28(a0)
     3fc:	3c0140c0 	lui	at,0x40c0
     400:	44815000 	mtc1	at,$f10
     404:	448f3000 	mtc1	t7,$f6
     408:	3c014270 	lui	at,0x4270
     40c:	44819000 	mtc1	at,$f18
     410:	46803220 	cvt.s.w	$f8,$f6
     414:	c4840090 	lwc1	$f4,144(a0)
     418:	460a4402 	mul.s	$f16,$f8,$f10
     41c:	46109180 	add.s	$f6,$f18,$f16
     420:	4606203c 	c.lt.s	$f4,$f6
     424:	00000000 	nop
     428:	45000005 	bc1f	440 <func_80AFCD60+0x80>
     42c:	00000000 	nop
     430:	0c000000 	jal	0 <func_80AFC9A0>
     434:	00000000 	nop
     438:	10000004 	b	44c <func_80AFCD60+0x8c>
     43c:	8fbf0014 	lw	ra,20(sp)
     440:	0c000000 	jal	0 <func_80AFC9A0>
     444:	00000000 	nop
     448:	8fbf0014 	lw	ra,20(sp)
     44c:	27bd0018 	addiu	sp,sp,24
     450:	03e00008 	jr	ra
     454:	00000000 	nop

00000458 <func_80AFCDF8>:
     458:	27bdffe8 	addiu	sp,sp,-24
     45c:	afbf0014 	sw	ra,20(sp)
     460:	00803825 	move	a3,a0
     464:	3c050600 	lui	a1,0x600
     468:	24a51854 	addiu	a1,a1,6228
     46c:	afa70018 	sw	a3,24(sp)
     470:	2484014c 	addiu	a0,a0,332
     474:	0c000000 	jal	0 <func_80AFC9A0>
     478:	3c063f80 	lui	a2,0x3f80
     47c:	8fa40018 	lw	a0,24(sp)
     480:	2401fffe 	li	at,-2
     484:	24053986 	li	a1,14726
     488:	8c8e0004 	lw	t6,4(a0)
     48c:	a0800280 	sb	zero,640(a0)
     490:	01c17824 	and	t7,t6,at
     494:	0c000000 	jal	0 <func_80AFC9A0>
     498:	ac8f0004 	sw	t7,4(a0)
     49c:	3c050000 	lui	a1,0x0
     4a0:	8fa40018 	lw	a0,24(sp)
     4a4:	0c000000 	jal	0 <func_80AFC9A0>
     4a8:	24a50000 	addiu	a1,a1,0
     4ac:	8fbf0014 	lw	ra,20(sp)
     4b0:	27bd0018 	addiu	sp,sp,24
     4b4:	03e00008 	jr	ra
     4b8:	00000000 	nop

000004bc <func_80AFCE5C>:
     4bc:	27bdffd8 	addiu	sp,sp,-40
     4c0:	afbf0024 	sw	ra,36(sp)
     4c4:	afb00020 	sw	s0,32(sp)
     4c8:	afa5002c 	sw	a1,44(sp)
     4cc:	3c014080 	lui	at,0x4080
     4d0:	44813000 	mtc1	at,$f6
     4d4:	c4840164 	lwc1	$f4,356(a0)
     4d8:	44800000 	mtc1	zero,$f0
     4dc:	00808025 	move	s0,a0
     4e0:	4606203c 	c.lt.s	$f4,$f6
     4e4:	44050000 	mfc1	a1,$f0
     4e8:	3c063f80 	lui	a2,0x3f80
     4ec:	3c074448 	lui	a3,0x4448
     4f0:	45020006 	bc1fl	50c <func_80AFCE5C+0x50>
     4f4:	8e0e0004 	lw	t6,4(s0)
     4f8:	8482008a 	lh	v0,138(a0)
     4fc:	a4820032 	sh	v0,50(a0)
     500:	10000004 	b	514 <func_80AFCE5C+0x58>
     504:	a48200b6 	sh	v0,182(a0)
     508:	8e0e0004 	lw	t6,4(s0)
     50c:	35cf0001 	ori	t7,t6,0x1
     510:	ae0f0004 	sw	t7,4(s0)
     514:	260400bc 	addiu	a0,s0,188
     518:	0c000000 	jal	0 <func_80AFC9A0>
     51c:	e7a00010 	swc1	$f0,16(sp)
     520:	44804000 	mtc1	zero,$f8
     524:	260400c4 	addiu	a0,s0,196
     528:	3c0541c8 	lui	a1,0x41c8
     52c:	3c063f80 	lui	a2,0x3f80
     530:	3c074020 	lui	a3,0x4020
     534:	0c000000 	jal	0 <func_80AFC9A0>
     538:	e7a80010 	swc1	$f8,16(sp)
     53c:	8fa4002c 	lw	a0,44(sp)
     540:	3c180001 	lui	t8,0x1
     544:	02002825 	move	a1,s0
     548:	0304c021 	addu	t8,t8,a0
     54c:	8f181de4 	lw	t8,7652(t8)
     550:	33190001 	andi	t9,t8,0x1
     554:	13200003 	beqz	t9,564 <func_80AFCE5C+0xa8>
     558:	00000000 	nop
     55c:	0c000000 	jal	0 <func_80AFC9A0>
     560:	26060024 	addiu	a2,s0,36
     564:	0c000000 	jal	0 <func_80AFC9A0>
     568:	2604014c 	addiu	a0,s0,332
     56c:	5040000a 	beqzl	v0,598 <func_80AFCE5C+0xdc>
     570:	8fbf0024 	lw	ra,36(sp)
     574:	44805000 	mtc1	zero,$f10
     578:	c61000bc 	lwc1	$f16,188(s0)
     57c:	46105032 	c.eq.s	$f10,$f16
     580:	00000000 	nop
     584:	45020004 	bc1fl	598 <func_80AFCE5C+0xdc>
     588:	8fbf0024 	lw	ra,36(sp)
     58c:	0c000000 	jal	0 <func_80AFC9A0>
     590:	02002025 	move	a0,s0
     594:	8fbf0024 	lw	ra,36(sp)
     598:	8fb00020 	lw	s0,32(sp)
     59c:	27bd0028 	addiu	sp,sp,40
     5a0:	03e00008 	jr	ra
     5a4:	00000000 	nop

000005a8 <func_80AFCF48>:
     5a8:	27bdffd0 	addiu	sp,sp,-48
     5ac:	afb00028 	sw	s0,40(sp)
     5b0:	00808025 	move	s0,a0
     5b4:	afbf002c 	sw	ra,44(sp)
     5b8:	3c040600 	lui	a0,0x600
     5bc:	0c000000 	jal	0 <func_80AFC9A0>
     5c0:	24841854 	addiu	a0,a0,6228
     5c4:	44822000 	mtc1	v0,$f4
     5c8:	3c01c080 	lui	at,0xc080
     5cc:	44814000 	mtc1	at,$f8
     5d0:	46802120 	cvt.s.w	$f4,$f4
     5d4:	44803000 	mtc1	zero,$f6
     5d8:	3c050600 	lui	a1,0x600
     5dc:	240e0002 	li	t6,2
     5e0:	afae0014 	sw	t6,20(sp)
     5e4:	24a51854 	addiu	a1,a1,6228
     5e8:	44072000 	mfc1	a3,$f4
     5ec:	2604014c 	addiu	a0,s0,332
     5f0:	3c06bf80 	lui	a2,0xbf80
     5f4:	e7a80018 	swc1	$f8,24(sp)
     5f8:	0c000000 	jal	0 <func_80AFC9A0>
     5fc:	e7a60010 	swc1	$f6,16(sp)
     600:	8e0f0004 	lw	t7,4(s0)
     604:	44805000 	mtc1	zero,$f10
     608:	2401fffe 	li	at,-2
     60c:	01e1c024 	and	t8,t7,at
     610:	a2000280 	sb	zero,640(s0)
     614:	a2000281 	sb	zero,641(s0)
     618:	ae180004 	sw	t8,4(s0)
     61c:	02002025 	move	a0,s0
     620:	24053987 	li	a1,14727
     624:	0c000000 	jal	0 <func_80AFC9A0>
     628:	e60a0068 	swc1	$f10,104(s0)
     62c:	3c050000 	lui	a1,0x0
     630:	24a50000 	addiu	a1,a1,0
     634:	0c000000 	jal	0 <func_80AFC9A0>
     638:	02002025 	move	a0,s0
     63c:	8fbf002c 	lw	ra,44(sp)
     640:	8fb00028 	lw	s0,40(sp)
     644:	27bd0030 	addiu	sp,sp,48
     648:	03e00008 	jr	ra
     64c:	00000000 	nop

00000650 <func_80AFCFF0>:
     650:	27bdffd8 	addiu	sp,sp,-40
     654:	44802000 	mtc1	zero,$f4
     658:	afb00020 	sw	s0,32(sp)
     65c:	00808025 	move	s0,a0
     660:	afbf0024 	sw	ra,36(sp)
     664:	afa5002c 	sw	a1,44(sp)
     668:	3c05c5fa 	lui	a1,0xc5fa
     66c:	248400bc 	addiu	a0,a0,188
     670:	3c063f80 	lui	a2,0x3f80
     674:	3c0743fa 	lui	a3,0x43fa
     678:	0c000000 	jal	0 <func_80AFC9A0>
     67c:	e7a40010 	swc1	$f4,16(sp)
     680:	44801000 	mtc1	zero,$f2
     684:	8fa4002c 	lw	a0,44(sp)
     688:	3c0e0001 	lui	t6,0x1
     68c:	46020032 	c.eq.s	$f0,$f2
     690:	01c47021 	addu	t6,t6,a0
     694:	4503000b 	bc1tl	6c4 <func_80AFCFF0+0x74>
     698:	44051000 	mfc1	a1,$f2
     69c:	8dce1de4 	lw	t6,7652(t6)
     6a0:	02002825 	move	a1,s0
     6a4:	31cf0001 	andi	t7,t6,0x1
     6a8:	51e00006 	beqzl	t7,6c4 <func_80AFCFF0+0x74>
     6ac:	44051000 	mfc1	a1,$f2
     6b0:	0c000000 	jal	0 <func_80AFC9A0>
     6b4:	26060024 	addiu	a2,s0,36
     6b8:	44801000 	mtc1	zero,$f2
     6bc:	00000000 	nop
     6c0:	44051000 	mfc1	a1,$f2
     6c4:	260400c4 	addiu	a0,s0,196
     6c8:	3c063f80 	lui	a2,0x3f80
     6cc:	3c074020 	lui	a3,0x4020
     6d0:	0c000000 	jal	0 <func_80AFC9A0>
     6d4:	e7a20010 	swc1	$f2,16(sp)
     6d8:	0c000000 	jal	0 <func_80AFC9A0>
     6dc:	2604014c 	addiu	a0,s0,332
     6e0:	50400004 	beqzl	v0,6f4 <func_80AFCFF0+0xa4>
     6e4:	8fbf0024 	lw	ra,36(sp)
     6e8:	0c000000 	jal	0 <func_80AFC9A0>
     6ec:	02002025 	move	a0,s0
     6f0:	8fbf0024 	lw	ra,36(sp)
     6f4:	8fb00020 	lw	s0,32(sp)
     6f8:	27bd0028 	addiu	sp,sp,40
     6fc:	03e00008 	jr	ra
     700:	00000000 	nop

00000704 <func_80AFD0A4>:
     704:	27bdffd0 	addiu	sp,sp,-48
     708:	afb00028 	sw	s0,40(sp)
     70c:	00808025 	move	s0,a0
     710:	afbf002c 	sw	ra,44(sp)
     714:	3c040600 	lui	a0,0x600
     718:	0c000000 	jal	0 <func_80AFC9A0>
     71c:	248447e0 	addiu	a0,a0,18400
     720:	44822000 	mtc1	v0,$f4
     724:	3c01c080 	lui	at,0xc080
     728:	44814000 	mtc1	at,$f8
     72c:	468021a0 	cvt.s.w	$f6,$f4
     730:	3c050600 	lui	a1,0x600
     734:	3c063f75 	lui	a2,0x3f75
     738:	34c6c290 	ori	a2,a2,0xc290
     73c:	24a547e0 	addiu	a1,a1,18400
     740:	2604014c 	addiu	a0,s0,332
     744:	e7a60010 	swc1	$f6,16(sp)
     748:	24070000 	li	a3,0
     74c:	afa00014 	sw	zero,20(sp)
     750:	0c000000 	jal	0 <func_80AFC9A0>
     754:	e7a80018 	swc1	$f8,24(sp)
     758:	3c014320 	lui	at,0x4320
     75c:	44818000 	mtc1	at,$f16
     760:	c60a0054 	lwc1	$f10,84(s0)
     764:	240e0004 	li	t6,4
     768:	3c050000 	lui	a1,0x0
     76c:	46105482 	mul.s	$f18,$f10,$f16
     770:	a20e0280 	sb	t6,640(s0)
     774:	a6000288 	sh	zero,648(s0)
     778:	24a50000 	addiu	a1,a1,0
     77c:	02002025 	move	a0,s0
     780:	0c000000 	jal	0 <func_80AFC9A0>
     784:	e6120068 	swc1	$f18,104(s0)
     788:	8fbf002c 	lw	ra,44(sp)
     78c:	8fb00028 	lw	s0,40(sp)
     790:	27bd0030 	addiu	sp,sp,48
     794:	03e00008 	jr	ra
     798:	00000000 	nop

0000079c <func_80AFD13C>:
     79c:	27bdffc8 	addiu	sp,sp,-56
     7a0:	afbf0024 	sw	ra,36(sp)
     7a4:	afb00020 	sw	s0,32(sp)
     7a8:	8cae1c44 	lw	t6,7236(a1)
     7ac:	3c180001 	lui	t8,0x1
     7b0:	00808025 	move	s0,a0
     7b4:	afae0028 	sw	t6,40(sp)
     7b8:	908f0283 	lbu	t7,643(a0)
     7bc:	0305c021 	addu	t8,t8,a1
     7c0:	51e0000d 	beqzl	t7,7f8 <func_80AFD13C+0x5c>
     7c4:	860a008a 	lh	t2,138(s0)
     7c8:	8f181de4 	lw	t8,7652(t8)
     7cc:	3c010000 	lui	at,0x0
     7d0:	3319000f 	andi	t9,t8,0xf
     7d4:	57200008 	bnezl	t9,7f8 <func_80AFD13C+0x5c>
     7d8:	860a008a 	lh	t2,138(s0)
     7dc:	0c000000 	jal	0 <func_80AFC9A0>
     7e0:	c42c0000 	lwc1	$f12,0(at)
     7e4:	4600010d 	trunc.w.s	$f4,$f0
     7e8:	44092000 	mfc1	t1,$f4
     7ec:	00000000 	nop
     7f0:	a6090288 	sh	t1,648(s0)
     7f4:	860a008a 	lh	t2,138(s0)
     7f8:	860b0288 	lh	t3,648(s0)
     7fc:	afa00010 	sw	zero,16(sp)
     800:	260400b6 	addiu	a0,s0,182
     804:	014b2821 	addu	a1,t2,t3
     808:	00052c00 	sll	a1,a1,0x10
     80c:	00052c03 	sra	a1,a1,0x10
     810:	24060001 	li	a2,1
     814:	0c000000 	jal	0 <func_80AFC9A0>
     818:	240702ee 	li	a3,750
     81c:	c6060164 	lwc1	$f6,356(s0)
     820:	860c00b6 	lh	t4,182(s0)
     824:	2604014c 	addiu	a0,s0,332
     828:	4600320d 	trunc.w.s	$f8,$f6
     82c:	a60c0032 	sh	t4,50(s0)
     830:	44034000 	mfc1	v1,$f8
     834:	0c000000 	jal	0 <func_80AFC9A0>
     838:	afa30034 	sw	v1,52(sp)
     83c:	44807000 	mtc1	zero,$f14
     840:	c6000168 	lwc1	$f0,360(s0)
     844:	8fa30034 	lw	v1,52(sp)
     848:	4600703e 	c.le.s	$f14,$f0
     84c:	00000000 	nop
     850:	45020004 	bc1fl	864 <func_80AFD13C+0xc8>
     854:	46000087 	neg.s	$f2,$f0
     858:	10000002 	b	864 <func_80AFD13C+0xc8>
     85c:	46000086 	mov.s	$f2,$f0
     860:	46000087 	neg.s	$f2,$f0
     864:	c60c0164 	lwc1	$f12,356(s0)
     868:	4600703e 	c.le.s	$f14,$f0
     86c:	46026281 	sub.s	$f10,$f12,$f2
     870:	4600648d 	trunc.w.s	$f18,$f12
     874:	4600540d 	trunc.w.s	$f16,$f10
     878:	44189000 	mfc1	t8,$f18
     87c:	44028000 	mfc1	v0,$f16
     880:	45020004 	bc1fl	894 <func_80AFD13C+0xf8>
     884:	46000087 	neg.s	$f2,$f0
     888:	10000002 	b	894 <func_80AFD13C+0xf8>
     88c:	46000086 	mov.s	$f2,$f0
     890:	46000087 	neg.s	$f2,$f0
     894:	10780015 	beq	v1,t8,8ec <func_80AFD13C+0x150>
     898:	28410009 	slti	at,v0,9
     89c:	50200008 	beqzl	at,8c0 <func_80AFD13C+0x124>
     8a0:	28410010 	slti	at,v0,16
     8a4:	4600110d 	trunc.w.s	$f4,$f2
     8a8:	44082000 	mfc1	t0,$f4
     8ac:	00000000 	nop
     8b0:	01034821 	addu	t1,t0,v1
     8b4:	29210008 	slti	at,t1,8
     8b8:	10200009 	beqz	at,8e0 <func_80AFD13C+0x144>
     8bc:	28410010 	slti	at,v0,16
     8c0:	5020000b 	beqzl	at,8f0 <func_80AFD13C+0x154>
     8c4:	8fa50028 	lw	a1,40(sp)
     8c8:	4600118d 	trunc.w.s	$f6,$f2
     8cc:	440b3000 	mfc1	t3,$f6
     8d0:	00000000 	nop
     8d4:	01636021 	addu	t4,t3,v1
     8d8:	2981000f 	slti	at,t4,15
     8dc:	14200003 	bnez	at,8ec <func_80AFD13C+0x150>
     8e0:	02002025 	move	a0,s0
     8e4:	0c000000 	jal	0 <func_80AFC9A0>
     8e8:	24053830 	li	a1,14384
     8ec:	8fa50028 	lw	a1,40(sp)
     8f0:	26040008 	addiu	a0,s0,8
     8f4:	0c000000 	jal	0 <func_80AFC9A0>
     8f8:	24a50024 	addiu	a1,a1,36
     8fc:	3c014448 	lui	at,0x4448
     900:	44814000 	mtc1	at,$f8
     904:	3c0d0000 	lui	t5,0x0
     908:	4600403c 	c.lt.s	$f8,$f0
     90c:	00000000 	nop
     910:	45010005 	bc1t	928 <func_80AFD13C+0x18c>
     914:	00000000 	nop
     918:	8dad0010 	lw	t5,16(t5)
     91c:	02002025 	move	a0,s0
     920:	15a00005 	bnez	t5,938 <func_80AFD13C+0x19c>
     924:	00000000 	nop
     928:	0c000000 	jal	0 <func_80AFC9A0>
     92c:	02002025 	move	a0,s0
     930:	10000016 	b	98c <func_80AFD13C+0x1f0>
     934:	8fbf0024 	lw	ra,36(sp)
     938:	0c000000 	jal	0 <func_80AFC9A0>
     93c:	240511c7 	li	a1,4551
     940:	50400012 	beqzl	v0,98c <func_80AFD13C+0x1f0>
     944:	8fbf0024 	lw	ra,36(sp)
     948:	860e001c 	lh	t6,28(s0)
     94c:	3c0140c0 	lui	at,0x40c0
     950:	44812000 	mtc1	at,$f4
     954:	448e8000 	mtc1	t6,$f16
     958:	3c014270 	lui	at,0x4270
     95c:	44814000 	mtc1	at,$f8
     960:	468084a0 	cvt.s.w	$f18,$f16
     964:	c60a0090 	lwc1	$f10,144(s0)
     968:	46049182 	mul.s	$f6,$f18,$f4
     96c:	46064400 	add.s	$f16,$f8,$f6
     970:	4610503c 	c.lt.s	$f10,$f16
     974:	00000000 	nop
     978:	45020004 	bc1fl	98c <func_80AFD13C+0x1f0>
     97c:	8fbf0024 	lw	ra,36(sp)
     980:	0c000000 	jal	0 <func_80AFC9A0>
     984:	02002025 	move	a0,s0
     988:	8fbf0024 	lw	ra,36(sp)
     98c:	8fb00020 	lw	s0,32(sp)
     990:	27bd0038 	addiu	sp,sp,56
     994:	03e00008 	jr	ra
     998:	00000000 	nop

0000099c <func_80AFD33C>:
     99c:	27bdffd0 	addiu	sp,sp,-48
     9a0:	afb00028 	sw	s0,40(sp)
     9a4:	00808025 	move	s0,a0
     9a8:	afbf002c 	sw	ra,44(sp)
     9ac:	3c040600 	lui	a0,0x600
     9b0:	0c000000 	jal	0 <func_80AFC9A0>
     9b4:	24840460 	addiu	a0,a0,1120
     9b8:	44822000 	mtc1	v0,$f4
     9bc:	3c014080 	lui	at,0x4080
     9c0:	44814000 	mtc1	at,$f8
     9c4:	468021a0 	cvt.s.w	$f6,$f4
     9c8:	3c050600 	lui	a1,0x600
     9cc:	3c063f19 	lui	a2,0x3f19
     9d0:	240e0003 	li	t6,3
     9d4:	afae0014 	sw	t6,20(sp)
     9d8:	34c6999a 	ori	a2,a2,0x999a
     9dc:	24a50460 	addiu	a1,a1,1120
     9e0:	e7a60010 	swc1	$f6,16(sp)
     9e4:	2604014c 	addiu	a0,s0,332
     9e8:	24070000 	li	a3,0
     9ec:	0c000000 	jal	0 <func_80AFC9A0>
     9f0:	e7a80018 	swc1	$f8,24(sp)
     9f4:	920f02b4 	lbu	t7,692(s0)
     9f8:	44805000 	mtc1	zero,$f10
     9fc:	24190003 	li	t9,3
     a00:	3c050000 	lui	a1,0x0
     a04:	31f8fffb 	andi	t8,t7,0xfffb
     a08:	a21802b4 	sb	t8,692(s0)
     a0c:	a2190280 	sb	t9,640(s0)
     a10:	24a50000 	addiu	a1,a1,0
     a14:	02002025 	move	a0,s0
     a18:	0c000000 	jal	0 <func_80AFC9A0>
     a1c:	e60a0068 	swc1	$f10,104(s0)
     a20:	8fbf002c 	lw	ra,44(sp)
     a24:	8fb00028 	lw	s0,40(sp)
     a28:	27bd0030 	addiu	sp,sp,48
     a2c:	03e00008 	jr	ra
     a30:	00000000 	nop

00000a34 <func_80AFD3D4>:
     a34:	27bdffe8 	addiu	sp,sp,-24
     a38:	afbf0014 	sw	ra,20(sp)
     a3c:	afa5001c 	sw	a1,28(sp)
     a40:	c4840164 	lwc1	$f4,356(a0)
     a44:	24010003 	li	at,3
     a48:	00803025 	move	a2,a0
     a4c:	4600218d 	trunc.w.s	$f6,$f4
     a50:	24053831 	li	a1,14385
     a54:	44023000 	mfc1	v0,$f6
     a58:	00000000 	nop
     a5c:	54410008 	bnel	v0,at,a80 <func_80AFD3D4+0x4c>
     a60:	24010006 	li	at,6
     a64:	0c000000 	jal	0 <func_80AFC9A0>
     a68:	afa60018 	sw	a2,24(sp)
     a6c:	8fa60018 	lw	a2,24(sp)
     a70:	240f0001 	li	t7,1
     a74:	10000005 	b	a8c <func_80AFD3D4+0x58>
     a78:	a0cf0281 	sb	t7,641(a2)
     a7c:	24010006 	li	at,6
     a80:	54410003 	bnel	v0,at,a90 <func_80AFD3D4+0x5c>
     a84:	90c202b4 	lbu	v0,692(a2)
     a88:	a0c00281 	sb	zero,641(a2)
     a8c:	90c202b4 	lbu	v0,692(a2)
     a90:	24c4014c 	addiu	a0,a2,332
     a94:	30580004 	andi	t8,v0,0x4
     a98:	13000006 	beqz	t8,ab4 <func_80AFD3D4+0x80>
     a9c:	3059fff9 	andi	t9,v0,0xfff9
     aa0:	a0d902b4 	sb	t9,692(a2)
     aa4:	0c000000 	jal	0 <func_80AFC9A0>
     aa8:	00c02025 	move	a0,a2
     aac:	10000008 	b	ad0 <func_80AFD3D4+0x9c>
     ab0:	8fbf0014 	lw	ra,20(sp)
     ab4:	0c000000 	jal	0 <func_80AFC9A0>
     ab8:	afa60018 	sw	a2,24(sp)
     abc:	10400003 	beqz	v0,acc <func_80AFD3D4+0x98>
     ac0:	8fa60018 	lw	a2,24(sp)
     ac4:	0c000000 	jal	0 <func_80AFC9A0>
     ac8:	00c02025 	move	a0,a2
     acc:	8fbf0014 	lw	ra,20(sp)
     ad0:	27bd0018 	addiu	sp,sp,24
     ad4:	03e00008 	jr	ra
     ad8:	00000000 	nop

00000adc <func_80AFD47C>:
     adc:	27bdffd0 	addiu	sp,sp,-48
     ae0:	afb00028 	sw	s0,40(sp)
     ae4:	00808025 	move	s0,a0
     ae8:	afbf002c 	sw	ra,44(sp)
     aec:	3c013f80 	lui	at,0x3f80
     af0:	44813000 	mtc1	at,$f6
     af4:	c6040164 	lwc1	$f4,356(s0)
     af8:	44800000 	mtc1	zero,$f0
     afc:	3c050600 	lui	a1,0x600
     b00:	46062201 	sub.s	$f8,$f4,$f6
     b04:	3c06becc 	lui	a2,0xbecc
     b08:	240e0003 	li	t6,3
     b0c:	afae0014 	sw	t6,20(sp)
     b10:	44074000 	mfc1	a3,$f8
     b14:	34c6cccd 	ori	a2,a2,0xcccd
     b18:	24a50460 	addiu	a1,a1,1120
     b1c:	2484014c 	addiu	a0,a0,332
     b20:	e7a00010 	swc1	$f0,16(sp)
     b24:	0c000000 	jal	0 <func_80AFC9A0>
     b28:	e7a00018 	swc1	$f0,24(sp)
     b2c:	920f02b4 	lbu	t7,692(s0)
     b30:	24190005 	li	t9,5
     b34:	3c050000 	lui	a1,0x0
     b38:	31f8fffb 	andi	t8,t7,0xfffb
     b3c:	a21802b4 	sb	t8,692(s0)
     b40:	a2190280 	sb	t9,640(s0)
     b44:	a2000281 	sb	zero,641(s0)
     b48:	24a50000 	addiu	a1,a1,0
     b4c:	0c000000 	jal	0 <func_80AFC9A0>
     b50:	02002025 	move	a0,s0
     b54:	8fbf002c 	lw	ra,44(sp)
     b58:	8fb00028 	lw	s0,40(sp)
     b5c:	27bd0030 	addiu	sp,sp,48
     b60:	03e00008 	jr	ra
     b64:	00000000 	nop

00000b68 <func_80AFD508>:
     b68:	27bdffe8 	addiu	sp,sp,-24
     b6c:	afbf0014 	sw	ra,20(sp)
     b70:	afa40018 	sw	a0,24(sp)
     b74:	afa5001c 	sw	a1,28(sp)
     b78:	0c000000 	jal	0 <func_80AFC9A0>
     b7c:	2484014c 	addiu	a0,a0,332
     b80:	50400004 	beqzl	v0,b94 <func_80AFD508+0x2c>
     b84:	8fbf0014 	lw	ra,20(sp)
     b88:	0c000000 	jal	0 <func_80AFC9A0>
     b8c:	8fa40018 	lw	a0,24(sp)
     b90:	8fbf0014 	lw	ra,20(sp)
     b94:	27bd0018 	addiu	sp,sp,24
     b98:	03e00008 	jr	ra
     b9c:	00000000 	nop

00000ba0 <func_80AFD540>:
     ba0:	27bdffe8 	addiu	sp,sp,-24
     ba4:	afbf0014 	sw	ra,20(sp)
     ba8:	948e0088 	lhu	t6,136(a0)
     bac:	2405389e 	li	a1,14494
     bb0:	31cf0001 	andi	t7,t6,0x1
     bb4:	11e00004 	beqz	t7,bc8 <func_80AFD540+0x28>
     bb8:	00000000 	nop
     bbc:	44802000 	mtc1	zero,$f4
     bc0:	00000000 	nop
     bc4:	e4840068 	swc1	$f4,104(a0)
     bc8:	0c000000 	jal	0 <func_80AFC9A0>
     bcc:	afa40018 	sw	a0,24(sp)
     bd0:	8fa40018 	lw	a0,24(sp)
     bd4:	24180006 	li	t8,6
     bd8:	3c050000 	lui	a1,0x0
     bdc:	24a50000 	addiu	a1,a1,0
     be0:	a0800281 	sb	zero,641(a0)
     be4:	0c000000 	jal	0 <func_80AFC9A0>
     be8:	a0980280 	sb	t8,640(a0)
     bec:	8fbf0014 	lw	ra,20(sp)
     bf0:	27bd0018 	addiu	sp,sp,24
     bf4:	03e00008 	jr	ra
     bf8:	00000000 	nop

00000bfc <func_80AFD59C>:
     bfc:	27bdffe8 	addiu	sp,sp,-24
     c00:	afbf0014 	sw	ra,20(sp)
     c04:	94820088 	lhu	v0,136(a0)
     c08:	304e0002 	andi	t6,v0,0x2
     c0c:	51c00005 	beqzl	t6,c24 <func_80AFD59C+0x28>
     c10:	304f0001 	andi	t7,v0,0x1
     c14:	44802000 	mtc1	zero,$f4
     c18:	94820088 	lhu	v0,136(a0)
     c1c:	e4840068 	swc1	$f4,104(a0)
     c20:	304f0001 	andi	t7,v0,0x1
     c24:	51e0000c 	beqzl	t7,c58 <func_80AFD59C+0x5c>
     c28:	90980114 	lbu	t8,276(a0)
     c2c:	c4800068 	lwc1	$f0,104(a0)
     c30:	44803000 	mtc1	zero,$f6
     c34:	3c010000 	lui	at,0x0
     c38:	4606003c 	c.lt.s	$f0,$f6
     c3c:	00000000 	nop
     c40:	45020005 	bc1fl	c58 <func_80AFD59C+0x5c>
     c44:	90980114 	lbu	t8,276(a0)
     c48:	c4280000 	lwc1	$f8,0(at)
     c4c:	46080280 	add.s	$f10,$f0,$f8
     c50:	e48a0068 	swc1	$f10,104(a0)
     c54:	90980114 	lbu	t8,276(a0)
     c58:	5700000f 	bnezl	t8,c98 <func_80AFD59C+0x9c>
     c5c:	8fbf0014 	lw	ra,20(sp)
     c60:	94990088 	lhu	t9,136(a0)
     c64:	33280001 	andi	t0,t9,0x1
     c68:	5100000b 	beqzl	t0,c98 <func_80AFD59C+0x9c>
     c6c:	8fbf0014 	lw	ra,20(sp)
     c70:	908900af 	lbu	t1,175(a0)
     c74:	15200005 	bnez	t1,c8c <func_80AFD59C+0x90>
     c78:	00000000 	nop
     c7c:	0c000000 	jal	0 <func_80AFC9A0>
     c80:	00000000 	nop
     c84:	10000004 	b	c98 <func_80AFD59C+0x9c>
     c88:	8fbf0014 	lw	ra,20(sp)
     c8c:	0c000000 	jal	0 <func_80AFC9A0>
     c90:	00000000 	nop
     c94:	8fbf0014 	lw	ra,20(sp)
     c98:	27bd0018 	addiu	sp,sp,24
     c9c:	03e00008 	jr	ra
     ca0:	00000000 	nop

00000ca4 <func_80AFD644>:
     ca4:	27bdffe8 	addiu	sp,sp,-24
     ca8:	afbf0014 	sw	ra,20(sp)
     cac:	00803825 	move	a3,a0
     cb0:	3c050600 	lui	a1,0x600
     cb4:	24a50d98 	addiu	a1,a1,3480
     cb8:	afa70018 	sw	a3,24(sp)
     cbc:	2484014c 	addiu	a0,a0,332
     cc0:	0c000000 	jal	0 <func_80AFC9A0>
     cc4:	3c06c080 	lui	a2,0xc080
     cc8:	8fa70018 	lw	a3,24(sp)
     ccc:	3c01c080 	lui	at,0xc080
     cd0:	94ee0088 	lhu	t6,136(a3)
     cd4:	31cf0001 	andi	t7,t6,0x1
     cd8:	51e00005 	beqzl	t7,cf0 <func_80AFD644+0x4c>
     cdc:	84f8008a 	lh	t8,138(a3)
     ce0:	44812000 	mtc1	at,$f4
     ce4:	00000000 	nop
     ce8:	e4e40068 	swc1	$f4,104(a3)
     cec:	84f8008a 	lh	t8,138(a3)
     cf0:	00e02025 	move	a0,a3
     cf4:	24053832 	li	a1,14386
     cf8:	a4f80032 	sh	t8,50(a3)
     cfc:	0c000000 	jal	0 <func_80AFC9A0>
     d00:	afa70018 	sw	a3,24(sp)
     d04:	8fa40018 	lw	a0,24(sp)
     d08:	24190002 	li	t9,2
     d0c:	3c050000 	lui	a1,0x0
     d10:	24a50000 	addiu	a1,a1,0
     d14:	0c000000 	jal	0 <func_80AFC9A0>
     d18:	a0990280 	sb	t9,640(a0)
     d1c:	8fbf0014 	lw	ra,20(sp)
     d20:	27bd0018 	addiu	sp,sp,24
     d24:	03e00008 	jr	ra
     d28:	00000000 	nop

00000d2c <func_80AFD6CC>:
     d2c:	27bdffd8 	addiu	sp,sp,-40
     d30:	afbf0024 	sw	ra,36(sp)
     d34:	afb00020 	sw	s0,32(sp)
     d38:	908e0283 	lbu	t6,643(a0)
     d3c:	24010001 	li	at,1
     d40:	00808025 	move	s0,a0
     d44:	15c10006 	bne	t6,at,d60 <func_80AFD6CC+0x34>
     d48:	00a03025 	move	a2,a1
     d4c:	2605028c 	addiu	a1,s0,652
     d50:	0c000000 	jal	0 <func_80AFC9A0>
     d54:	24070001 	li	a3,1
     d58:	5040002a 	beqzl	v0,e04 <func_80AFD6CC+0xd8>
     d5c:	8fbf0024 	lw	ra,36(sp)
     d60:	92020283 	lbu	v0,643(s0)
     d64:	260400b6 	addiu	a0,s0,182
     d68:	24060001 	li	a2,1
     d6c:	10400003 	beqz	v0,d7c <func_80AFD6CC+0x50>
     d70:	24071194 	li	a3,4500
     d74:	344f0002 	ori	t7,v0,0x2
     d78:	a20f0283 	sb	t7,643(s0)
     d7c:	96020088 	lhu	v0,136(s0)
     d80:	30580002 	andi	t8,v0,0x2
     d84:	53000005 	beqzl	t8,d9c <func_80AFD6CC+0x70>
     d88:	30590001 	andi	t9,v0,0x1
     d8c:	44802000 	mtc1	zero,$f4
     d90:	96020088 	lhu	v0,136(s0)
     d94:	e6040068 	swc1	$f4,104(s0)
     d98:	30590001 	andi	t9,v0,0x1
     d9c:	5320000c 	beqzl	t9,dd0 <func_80AFD6CC+0xa4>
     da0:	8605008a 	lh	a1,138(s0)
     da4:	c6000068 	lwc1	$f0,104(s0)
     da8:	44803000 	mtc1	zero,$f6
     dac:	3c010000 	lui	at,0x0
     db0:	4606003c 	c.lt.s	$f0,$f6
     db4:	00000000 	nop
     db8:	45020005 	bc1fl	dd0 <func_80AFD6CC+0xa4>
     dbc:	8605008a 	lh	a1,138(s0)
     dc0:	c4280000 	lwc1	$f8,0(at)
     dc4:	46080280 	add.s	$f10,$f0,$f8
     dc8:	e60a0068 	swc1	$f10,104(s0)
     dcc:	8605008a 	lh	a1,138(s0)
     dd0:	0c000000 	jal	0 <func_80AFC9A0>
     dd4:	afa00010 	sw	zero,16(sp)
     dd8:	0c000000 	jal	0 <func_80AFC9A0>
     ddc:	2604014c 	addiu	a0,s0,332
     de0:	50400008 	beqzl	v0,e04 <func_80AFD6CC+0xd8>
     de4:	8fbf0024 	lw	ra,36(sp)
     de8:	96080088 	lhu	t0,136(s0)
     dec:	31090001 	andi	t1,t0,0x1
     df0:	51200004 	beqzl	t1,e04 <func_80AFD6CC+0xd8>
     df4:	8fbf0024 	lw	ra,36(sp)
     df8:	0c000000 	jal	0 <func_80AFC9A0>
     dfc:	02002025 	move	a0,s0
     e00:	8fbf0024 	lw	ra,36(sp)
     e04:	8fb00020 	lw	s0,32(sp)
     e08:	27bd0028 	addiu	sp,sp,40
     e0c:	03e00008 	jr	ra
     e10:	00000000 	nop

00000e14 <func_80AFD7B4>:
     e14:	27bdffd8 	addiu	sp,sp,-40
     e18:	afb00020 	sw	s0,32(sp)
     e1c:	afa5002c 	sw	a1,44(sp)
     e20:	00808025 	move	s0,a0
     e24:	afbf0024 	sw	ra,36(sp)
     e28:	3c050600 	lui	a1,0x600
     e2c:	24a509dc 	addiu	a1,a1,2524
     e30:	2484014c 	addiu	a0,a0,332
     e34:	0c000000 	jal	0 <func_80AFC9A0>
     e38:	3c06c080 	lui	a2,0xc080
     e3c:	960e0088 	lhu	t6,136(s0)
     e40:	8602008a 	lh	v0,138(s0)
     e44:	24180001 	li	t8,1
     e48:	31cf0001 	andi	t7,t6,0x1
     e4c:	a60200b6 	sh	v0,182(s0)
     e50:	11e00005 	beqz	t7,e68 <func_80AFD7B4+0x54>
     e54:	a6020032 	sh	v0,50(s0)
     e58:	3c01c0c0 	lui	at,0xc0c0
     e5c:	44812000 	mtc1	at,$f4
     e60:	00000000 	nop
     e64:	e6040068 	swc1	$f4,104(s0)
     e68:	8e190004 	lw	t9,4(s0)
     e6c:	2401fffe 	li	at,-2
     e70:	a2180280 	sb	t8,640(s0)
     e74:	03214024 	and	t0,t9,at
     e78:	ae080004 	sw	t0,4(s0)
     e7c:	8fa6002c 	lw	a2,44(sp)
     e80:	2604028c 	addiu	a0,s0,652
     e84:	0c000000 	jal	0 <func_80AFC9A0>
     e88:	24050012 	li	a1,18
     e8c:	92090283 	lbu	t1,643(s0)
     e90:	240b0001 	li	t3,1
     e94:	240c0028 	li	t4,40
     e98:	352a0004 	ori	t2,t1,0x4
     e9c:	a20a0283 	sb	t2,643(s0)
     ea0:	afac0014 	sw	t4,20(sp)
     ea4:	afab0010 	sw	t3,16(sp)
     ea8:	8fa4002c 	lw	a0,44(sp)
     eac:	260500e4 	addiu	a1,s0,228
     eb0:	24063833 	li	a2,14387
     eb4:	0c000000 	jal	0 <func_80AFC9A0>
     eb8:	24070001 	li	a3,1
     ebc:	3c050000 	lui	a1,0x0
     ec0:	24a50000 	addiu	a1,a1,0
     ec4:	0c000000 	jal	0 <func_80AFC9A0>
     ec8:	02002025 	move	a0,s0
     ecc:	8fbf0024 	lw	ra,36(sp)
     ed0:	8fb00020 	lw	s0,32(sp)
     ed4:	27bd0028 	addiu	sp,sp,40
     ed8:	03e00008 	jr	ra
     edc:	00000000 	nop

00000ee0 <func_80AFD880>:
     ee0:	27bdffd8 	addiu	sp,sp,-40
     ee4:	afb10018 	sw	s1,24(sp)
     ee8:	afb00014 	sw	s0,20(sp)
     eec:	00808025 	move	s0,a0
     ef0:	00a08825 	move	s1,a1
     ef4:	afbf001c 	sw	ra,28(sp)
     ef8:	02203025 	move	a2,s1
     efc:	2605028c 	addiu	a1,s0,652
     f00:	0c000000 	jal	0 <func_80AFC9A0>
     f04:	24070001 	li	a3,1
     f08:	1040002a 	beqz	v0,fb4 <func_80AFD880+0xd4>
     f0c:	3c010000 	lui	at,0x0
     f10:	c6000050 	lwc1	$f0,80(s0)
     f14:	c4240000 	lwc1	$f4,0(at)
     f18:	02202025 	move	a0,s1
     f1c:	02002825 	move	a1,s0
     f20:	46002032 	c.eq.s	$f4,$f0
     f24:	26060024 	addiu	a2,s0,36
     f28:	3c010000 	lui	at,0x0
     f2c:	45000005 	bc1f	f44 <func_80AFD880+0x64>
     f30:	00000000 	nop
     f34:	0c000000 	jal	0 <func_80AFC9A0>
     f38:	24070010 	li	a3,16
     f3c:	10000019 	b	fa4 <func_80AFD880+0xc4>
     f40:	920e0283 	lbu	t6,643(s0)
     f44:	c4260000 	lwc1	$f6,0(at)
     f48:	02202025 	move	a0,s1
     f4c:	26050024 	addiu	a1,s0,36
     f50:	4606003e 	c.le.s	$f0,$f6
     f54:	24060002 	li	a2,2
     f58:	45000007 	bc1f	f78 <func_80AFD880+0x98>
     f5c:	00000000 	nop
     f60:	02202025 	move	a0,s1
     f64:	26050024 	addiu	a1,s0,36
     f68:	0c000000 	jal	0 <func_80AFC9A0>
     f6c:	24060001 	li	a2,1
     f70:	1000000c 	b	fa4 <func_80AFD880+0xc4>
     f74:	920e0283 	lbu	t6,643(s0)
     f78:	0c000000 	jal	0 <func_80AFC9A0>
     f7c:	afa50024 	sw	a1,36(sp)
     f80:	02202025 	move	a0,s1
     f84:	8fa50024 	lw	a1,36(sp)
     f88:	0c000000 	jal	0 <func_80AFC9A0>
     f8c:	24060002 	li	a2,2
     f90:	02202025 	move	a0,s1
     f94:	8fa50024 	lw	a1,36(sp)
     f98:	0c000000 	jal	0 <func_80AFC9A0>
     f9c:	24060002 	li	a2,2
     fa0:	920e0283 	lbu	t6,643(s0)
     fa4:	02002025 	move	a0,s0
     fa8:	35cf0008 	ori	t7,t6,0x8
     fac:	0c000000 	jal	0 <func_80AFC9A0>
     fb0:	a20f0283 	sb	t7,643(s0)
     fb4:	8fbf001c 	lw	ra,28(sp)
     fb8:	8fb00014 	lw	s0,20(sp)
     fbc:	8fb10018 	lw	s1,24(sp)
     fc0:	03e00008 	jr	ra
     fc4:	27bd0028 	addiu	sp,sp,40

00000fc8 <func_80AFD968>:
     fc8:	27bdff98 	addiu	sp,sp,-104
     fcc:	afbf003c 	sw	ra,60(sp)
     fd0:	afb30038 	sw	s3,56(sp)
     fd4:	afb20034 	sw	s2,52(sp)
     fd8:	afb10030 	sw	s1,48(sp)
     fdc:	afb0002c 	sw	s0,44(sp)
     fe0:	f7b40020 	sdc1	$f20,32(sp)
     fe4:	90820280 	lbu	v0,640(a0)
     fe8:	24110001 	li	s1,1
     fec:	00809025 	move	s2,a0
     ff0:	12220012 	beq	s1,v0,103c <func_80AFD968+0x74>
     ff4:	00a09825 	move	s3,a1
     ff8:	948e0088 	lhu	t6,136(a0)
     ffc:	3c014220 	lui	at,0x4220
    1000:	31cf0060 	andi	t7,t6,0x60
    1004:	51e0000e 	beqzl	t7,1040 <func_80AFD968+0x78>
    1008:	28410003 	slti	at,v0,3
    100c:	c4840084 	lwc1	$f4,132(a0)
    1010:	44813000 	mtc1	at,$f6
    1014:	00000000 	nop
    1018:	4604303e 	c.le.s	$f6,$f4
    101c:	00000000 	nop
    1020:	45020007 	bc1fl	1040 <func_80AFD968+0x78>
    1024:	28410003 	slti	at,v0,3
    1028:	a08000af 	sb	zero,175(a0)
    102c:	0c000000 	jal	0 <func_80AFC9A0>
    1030:	a0800281 	sb	zero,641(a0)
    1034:	10000087 	b	1254 <func_80AFD968+0x28c>
    1038:	8fbf003c 	lw	ra,60(sp)
    103c:	28410003 	slti	at,v0,3
    1040:	54200084 	bnezl	at,1254 <func_80AFD968+0x28c>
    1044:	8fbf003c 	lw	ra,60(sp)
    1048:	924202b5 	lbu	v0,693(s2)
    104c:	30580002 	andi	t8,v0,0x2
    1050:	53000080 	beqzl	t8,1254 <func_80AFD968+0x28c>
    1054:	8fbf003c 	lw	ra,60(sp)
    1058:	924300b1 	lbu	v1,177(s2)
    105c:	24100006 	li	s0,6
    1060:	3059fffd 	andi	t9,v0,0xfffd
    1064:	1203007a 	beq	s0,v1,1250 <func_80AFD968+0x288>
    1068:	a25902b5 	sb	t9,693(s2)
    106c:	8e4502c0 	lw	a1,704(s2)
    1070:	a2430282 	sb	v1,642(s2)
    1074:	02402025 	move	a0,s2
    1078:	02203025 	move	a2,s1
    107c:	0c000000 	jal	0 <func_80AFC9A0>
    1080:	24a50040 	addiu	a1,a1,64
    1084:	924200b1 	lbu	v0,177(s2)
    1088:	a2400281 	sb	zero,641(s2)
    108c:	24010007 	li	at,7
    1090:	16220010 	bne	s1,v0,10d4 <func_80AFD968+0x10c>
    1094:	00000000 	nop
    1098:	92480280 	lbu	t0,640(s2)
    109c:	02402025 	move	a0,s2
    10a0:	00002825 	move	a1,zero
    10a4:	1208006a 	beq	s0,t0,1250 <func_80AFD968+0x288>
    10a8:	24060078 	li	a2,120
    10ac:	24090050 	li	t1,80
    10b0:	afa90010 	sw	t1,16(sp)
    10b4:	0c000000 	jal	0 <func_80AFC9A0>
    10b8:	00003825 	move	a3,zero
    10bc:	0c000000 	jal	0 <func_80AFC9A0>
    10c0:	02402025 	move	a0,s2
    10c4:	0c000000 	jal	0 <func_80AFC9A0>
    10c8:	02402025 	move	a0,s2
    10cc:	10000061 	b	1254 <func_80AFD968+0x28c>
    10d0:	8fbf003c 	lw	ra,60(sp)
    10d4:	14410034 	bne	v0,at,11a8 <func_80AFD968+0x1e0>
    10d8:	24030008 	li	v1,8
    10dc:	3c010000 	lui	at,0x0
    10e0:	c42a0000 	lwc1	$f10,0(at)
    10e4:	c6480054 	lwc1	$f8,84(s2)
    10e8:	3c0141a0 	lui	at,0x41a0
    10ec:	26420024 	addiu	v0,s2,36
    10f0:	460a4402 	mul.s	$f16,$f8,$f10
    10f4:	4481a000 	mtc1	at,$f20
    10f8:	afa20044 	sw	v0,68(sp)
    10fc:	24100004 	li	s0,4
    1100:	27b10054 	addiu	s1,sp,84
    1104:	4600848d 	trunc.w.s	$f18,$f16
    1108:	440b9000 	mfc1	t3,$f18
    110c:	00000000 	nop
    1110:	a7ab0052 	sh	t3,82(sp)
    1114:	8fa20044 	lw	v0,68(sp)
    1118:	4600a306 	mov.s	$f12,$f20
    111c:	8c4d0000 	lw	t5,0(v0)
    1120:	ae2d0000 	sw	t5,0(s1)
    1124:	8c4c0004 	lw	t4,4(v0)
    1128:	ae2c0004 	sw	t4,4(s1)
    112c:	8c4d0008 	lw	t5,8(v0)
    1130:	0c000000 	jal	0 <func_80AFC9A0>
    1134:	ae2d0008 	sw	t5,8(s1)
    1138:	c7a40054 	lwc1	$f4,84(sp)
    113c:	4600a306 	mov.s	$f12,$f20
    1140:	46002180 	add.s	$f6,$f4,$f0
    1144:	0c000000 	jal	0 <func_80AFC9A0>
    1148:	e7a60054 	swc1	$f6,84(sp)
    114c:	c7a8005c 	lwc1	$f8,92(sp)
    1150:	46004280 	add.s	$f10,$f8,$f0
    1154:	0c000000 	jal	0 <func_80AFC9A0>
    1158:	e7aa005c 	swc1	$f10,92(sp)
    115c:	3c0141c8 	lui	at,0x41c8
    1160:	44819000 	mtc1	at,$f18
    1164:	c7b00058 	lwc1	$f16,88(sp)
    1168:	240effff 	li	t6,-1
    116c:	46120102 	mul.s	$f4,$f0,$f18
    1170:	afae0018 	sw	t6,24(sp)
    1174:	02602025 	move	a0,s3
    1178:	02402825 	move	a1,s2
    117c:	02203025 	move	a2,s1
    1180:	87a70052 	lh	a3,82(sp)
    1184:	afa00010 	sw	zero,16(sp)
    1188:	46048180 	add.s	$f6,$f16,$f4
    118c:	afa00014 	sw	zero,20(sp)
    1190:	0c000000 	jal	0 <func_80AFC9A0>
    1194:	e7a60058 	swc1	$f6,88(sp)
    1198:	2610ffff 	addiu	s0,s0,-1
    119c:	0603ffde 	bgezl	s0,1118 <func_80AFD968+0x150>
    11a0:	8fa20044 	lw	v0,68(sp)
    11a4:	24030019 	li	v1,25
    11a8:	02402025 	move	a0,s2
    11ac:	24054000 	li	a1,16384
    11b0:	240600ff 	li	a2,255
    11b4:	00003825 	move	a3,zero
    11b8:	0c000000 	jal	0 <func_80AFC9A0>
    11bc:	afa30010 	sw	v1,16(sp)
    11c0:	0c000000 	jal	0 <func_80AFC9A0>
    11c4:	02402025 	move	a0,s2
    11c8:	14400005 	bnez	v0,11e0 <func_80AFD968+0x218>
    11cc:	02402025 	move	a0,s2
    11d0:	0c000000 	jal	0 <func_80AFC9A0>
    11d4:	02602825 	move	a1,s3
    11d8:	1000001e 	b	1254 <func_80AFD968+0x28c>
    11dc:	8fbf003c 	lw	ra,60(sp)
    11e0:	924f0283 	lbu	t7,643(s2)
    11e4:	8e631c44 	lw	v1,7236(s3)
    11e8:	15e00017 	bnez	t7,1248 <func_80AFD968+0x280>
    11ec:	00000000 	nop
    11f0:	924200b1 	lbu	v0,177(s2)
    11f4:	2401000d 	li	at,13
    11f8:	2644028c 	addiu	a0,s2,652
    11fc:	1041000e 	beq	v0,at,1238 <func_80AFD968+0x270>
    1200:	24050002 	li	a1,2
    1204:	2401000e 	li	at,14
    1208:	1441000f 	bne	v0,at,1248 <func_80AFD968+0x280>
    120c:	00000000 	nop
    1210:	80620842 	lb	v0,2114(v1)
    1214:	28410004 	slti	at,v0,4
    1218:	14200002 	bnez	at,1224 <func_80AFD968+0x25c>
    121c:	2841000c 	slti	at,v0,12
    1220:	14200005 	bnez	at,1238 <func_80AFD968+0x270>
    1224:	24010014 	li	at,20
    1228:	10410003 	beq	v0,at,1238 <func_80AFD968+0x270>
    122c:	24010015 	li	at,21
    1230:	14410005 	bne	v0,at,1248 <func_80AFD968+0x280>
    1234:	00000000 	nop
    1238:	0c000000 	jal	0 <func_80AFC9A0>
    123c:	02603025 	move	a2,s3
    1240:	24180001 	li	t8,1
    1244:	a2580283 	sb	t8,643(s2)
    1248:	0c000000 	jal	0 <func_80AFC9A0>
    124c:	02402025 	move	a0,s2
    1250:	8fbf003c 	lw	ra,60(sp)
    1254:	d7b40020 	ldc1	$f20,32(sp)
    1258:	8fb0002c 	lw	s0,44(sp)
    125c:	8fb10030 	lw	s1,48(sp)
    1260:	8fb20034 	lw	s2,52(sp)
    1264:	8fb30038 	lw	s3,56(sp)
    1268:	03e00008 	jr	ra
    126c:	27bd0068 	addiu	sp,sp,104

00001270 <EnSkb_Update>:
    1270:	27bdffc8 	addiu	sp,sp,-56
    1274:	afbf0024 	sw	ra,36(sp)
    1278:	afb10020 	sw	s1,32(sp)
    127c:	afb0001c 	sw	s0,28(sp)
    1280:	00808025 	move	s0,a0
    1284:	0c000000 	jal	0 <func_80AFC9A0>
    1288:	00a08825 	move	s1,a1
    128c:	0c000000 	jal	0 <func_80AFC9A0>
    1290:	02002025 	move	a0,s0
    1294:	3c014270 	lui	at,0x4270
    1298:	44812000 	mtc1	at,$f4
    129c:	240e001d 	li	t6,29
    12a0:	afae0014 	sw	t6,20(sp)
    12a4:	02202025 	move	a0,s1
    12a8:	02002825 	move	a1,s0
    12ac:	3c064170 	lui	a2,0x4170
    12b0:	3c0741f0 	lui	a3,0x41f0
    12b4:	0c000000 	jal	0 <func_80AFC9A0>
    12b8:	e7a40010 	swc1	$f4,16(sp)
    12bc:	8e190284 	lw	t9,644(s0)
    12c0:	02002025 	move	a0,s0
    12c4:	02202825 	move	a1,s1
    12c8:	0320f809 	jalr	t9
    12cc:	00000000 	nop
    12d0:	8e180024 	lw	t8,36(s0)
    12d4:	8e0f0028 	lw	t7,40(s0)
    12d8:	3c010000 	lui	at,0x0
    12dc:	ae180038 	sw	t8,56(s0)
    12e0:	8e18002c 	lw	t8,44(s0)
    12e4:	ae0f003c 	sw	t7,60(s0)
    12e8:	c6080054 	lwc1	$f8,84(s0)
    12ec:	ae180040 	sw	t8,64(s0)
    12f0:	c4260000 	lwc1	$f6,0(at)
    12f4:	c610003c 	lwc1	$f16,60(s0)
    12f8:	92080281 	lbu	t0,641(s0)
    12fc:	46083282 	mul.s	$f10,$f6,$f8
    1300:	3c010001 	lui	at,0x1
    1304:	34211e60 	ori	at,at,0x1e60
    1308:	02212821 	addu	a1,s1,at
    130c:	02202025 	move	a0,s1
    1310:	460a8480 	add.s	$f18,$f16,$f10
    1314:	11000003 	beqz	t0,1324 <EnSkb_Update+0xb4>
    1318:	e612003c 	swc1	$f18,60(s0)
    131c:	0c000000 	jal	0 <func_80AFC9A0>
    1320:	260602a4 	addiu	a2,s0,676
    1324:	92090280 	lbu	t1,640(s0)
    1328:	3c010001 	lui	at,0x1
    132c:	34211e60 	ori	at,at,0x1e60
    1330:	02212821 	addu	a1,s1,at
    1334:	29210003 	slti	at,t1,3
    1338:	1420000e 	bnez	at,1374 <EnSkb_Update+0x104>
    133c:	260602a4 	addiu	a2,s0,676
    1340:	920a0114 	lbu	t2,276(s0)
    1344:	02202025 	move	a0,s1
    1348:	51400006 	beqzl	t2,1364 <EnSkb_Update+0xf4>
    134c:	afa5002c 	sw	a1,44(sp)
    1350:	960b0112 	lhu	t3,274(s0)
    1354:	316c4000 	andi	t4,t3,0x4000
    1358:	15800006 	bnez	t4,1374 <EnSkb_Update+0x104>
    135c:	00000000 	nop
    1360:	afa5002c 	sw	a1,44(sp)
    1364:	0c000000 	jal	0 <func_80AFC9A0>
    1368:	afa60028 	sw	a2,40(sp)
    136c:	8fa5002c 	lw	a1,44(sp)
    1370:	8fa60028 	lw	a2,40(sp)
    1374:	0c000000 	jal	0 <func_80AFC9A0>
    1378:	02202025 	move	a0,s1
    137c:	8fbf0024 	lw	ra,36(sp)
    1380:	8fb0001c 	lw	s0,28(sp)
    1384:	8fb10020 	lw	s1,32(sp)
    1388:	03e00008 	jr	ra
    138c:	27bd0038 	addiu	sp,sp,56

00001390 <func_80AFDD30>:
    1390:	27bdffb8 	addiu	sp,sp,-72
    1394:	2401000b 	li	at,11
    1398:	afbf0014 	sw	ra,20(sp)
    139c:	afa40048 	sw	a0,72(sp)
    13a0:	14a1006b 	bne	a1,at,1550 <func_80AFDD30+0x1c0>
    13a4:	afa70054 	sw	a3,84(sp)
    13a8:	8fae005c 	lw	t6,92(sp)
    13ac:	240703cc 	li	a3,972
    13b0:	91cf0283 	lbu	t7,643(t6)
    13b4:	31f80002 	andi	t8,t7,0x2
    13b8:	17000063 	bnez	t8,1548 <func_80AFDD30+0x1b8>
    13bc:	00000000 	nop
    13c0:	8c850000 	lw	a1,0(a0)
    13c4:	3c060000 	lui	a2,0x0
    13c8:	24c60000 	addiu	a2,a2,0
    13cc:	27a40028 	addiu	a0,sp,40
    13d0:	0c000000 	jal	0 <func_80AFC9A0>
    13d4:	afa50038 	sw	a1,56(sp)
    13d8:	8fa20048 	lw	v0,72(sp)
    13dc:	3c010001 	lui	at,0x1
    13e0:	00411021 	addu	v0,v0,at
    13e4:	8c441de4 	lw	a0,7652(v0)
    13e8:	afa20018 	sw	v0,24(sp)
    13ec:	00800821 	move	at,a0
    13f0:	00042080 	sll	a0,a0,0x2
    13f4:	00812023 	subu	a0,a0,at
    13f8:	00042100 	sll	a0,a0,0x4
    13fc:	00812023 	subu	a0,a0,at
    1400:	000420c0 	sll	a0,a0,0x3
    1404:	00812023 	subu	a0,a0,at
    1408:	00042100 	sll	a0,a0,0x4
    140c:	00042400 	sll	a0,a0,0x10
    1410:	0c000000 	jal	0 <func_80AFC9A0>
    1414:	00042403 	sra	a0,a0,0x10
    1418:	3c0142be 	lui	at,0x42be
    141c:	44812000 	mtc1	at,$f4
    1420:	8fa20018 	lw	v0,24(sp)
    1424:	24031770 	li	v1,6000
    1428:	46040182 	mul.s	$f6,$f0,$f4
    142c:	4600320d 	trunc.w.s	$f8,$f6
    1430:	44094000 	mfc1	t1,$f8
    1434:	00000000 	nop
    1438:	00095400 	sll	t2,t1,0x10
    143c:	000a5c03 	sra	t3,t2,0x10
    1440:	05620012 	bltzl	t3,148c <func_80AFDD30+0xfc>
    1444:	8c4e1de4 	lw	t6,7652(v0)
    1448:	8c4c1de4 	lw	t4,7652(v0)
    144c:	01830019 	multu	t4,v1
    1450:	00002012 	mflo	a0
    1454:	00042400 	sll	a0,a0,0x10
    1458:	0c000000 	jal	0 <func_80AFC9A0>
    145c:	00042403 	sra	a0,a0,0x10
    1460:	3c0142be 	lui	at,0x42be
    1464:	44815000 	mtc1	at,$f10
    1468:	00000000 	nop
    146c:	460a0402 	mul.s	$f16,$f0,$f10
    1470:	4600848d 	trunc.w.s	$f18,$f16
    1474:	44059000 	mfc1	a1,$f18
    1478:	00000000 	nop
    147c:	00052c00 	sll	a1,a1,0x10
    1480:	10000011 	b	14c8 <func_80AFDD30+0x138>
    1484:	00052c03 	sra	a1,a1,0x10
    1488:	8c4e1de4 	lw	t6,7652(v0)
    148c:	01c30019 	multu	t6,v1
    1490:	00002012 	mflo	a0
    1494:	00042400 	sll	a0,a0,0x10
    1498:	0c000000 	jal	0 <func_80AFC9A0>
    149c:	00042403 	sra	a0,a0,0x10
    14a0:	3c0142be 	lui	at,0x42be
    14a4:	44812000 	mtc1	at,$f4
    14a8:	00000000 	nop
    14ac:	46040182 	mul.s	$f6,$f0,$f4
    14b0:	4600320d 	trunc.w.s	$f8,$f6
    14b4:	44054000 	mfc1	a1,$f8
    14b8:	00000000 	nop
    14bc:	00052c00 	sll	a1,a1,0x10
    14c0:	00052c03 	sra	a1,a1,0x10
    14c4:	00052823 	negu	a1,a1
    14c8:	8fa60038 	lw	a2,56(sp)
    14cc:	24a200a0 	addiu	v0,a1,160
    14d0:	3c19e700 	lui	t9,0xe700
    14d4:	8cc302c0 	lw	v1,704(a2)
    14d8:	00021400 	sll	v0,v0,0x10
    14dc:	00021403 	sra	v0,v0,0x10
    14e0:	24780008 	addiu	t8,v1,8
    14e4:	acd802c0 	sw	t8,704(a2)
    14e8:	ac600004 	sw	zero,4(v1)
    14ec:	ac790000 	sw	t9,0(v1)
    14f0:	8cc302c0 	lw	v1,704(a2)
    14f4:	304200ff 	andi	v0,v0,0xff
    14f8:	00025600 	sll	t2,v0,0x18
    14fc:	00025c00 	sll	t3,v0,0x10
    1500:	014b6025 	or	t4,t2,t3
    1504:	00026a00 	sll	t5,v0,0x8
    1508:	24680008 	addiu	t0,v1,8
    150c:	018d7025 	or	t6,t4,t5
    1510:	acc802c0 	sw	t0,704(a2)
    1514:	35cf00ff 	ori	t7,t6,0xff
    1518:	3c09fb00 	lui	t1,0xfb00
    151c:	ac690000 	sw	t1,0(v1)
    1520:	ac6f0004 	sw	t7,4(v1)
    1524:	8fb80048 	lw	t8,72(sp)
    1528:	3c060000 	lui	a2,0x0
    152c:	24c60000 	addiu	a2,a2,0
    1530:	27a40028 	addiu	a0,sp,40
    1534:	240703d2 	li	a3,978
    1538:	0c000000 	jal	0 <func_80AFC9A0>
    153c:	8f050000 	lw	a1,0(t8)
    1540:	1000000c 	b	1574 <func_80AFDD30+0x1e4>
    1544:	8fbf0014 	lw	ra,20(sp)
    1548:	10000009 	b	1570 <func_80AFDD30+0x1e0>
    154c:	acc00000 	sw	zero,0(a2)
    1550:	2401000c 	li	at,12
    1554:	14a10006 	bne	a1,at,1570 <func_80AFDD30+0x1e0>
    1558:	8fb9005c 	lw	t9,92(sp)
    155c:	93280283 	lbu	t0,643(t9)
    1560:	31090002 	andi	t1,t0,0x2
    1564:	51200003 	beqzl	t1,1574 <func_80AFDD30+0x1e4>
    1568:	8fbf0014 	lw	ra,20(sp)
    156c:	acc00000 	sw	zero,0(a2)
    1570:	8fbf0014 	lw	ra,20(sp)
    1574:	27bd0048 	addiu	sp,sp,72
    1578:	00001025 	move	v0,zero
    157c:	03e00008 	jr	ra
    1580:	00000000 	nop

00001584 <func_80AFDF24>:
    1584:	27bdffd8 	addiu	sp,sp,-40
    1588:	afa40028 	sw	a0,40(sp)
    158c:	afa5002c 	sw	a1,44(sp)
    1590:	00a02025 	move	a0,a1
    1594:	8fa50038 	lw	a1,56(sp)
    1598:	afbf0024 	sw	ra,36(sp)
    159c:	afa60030 	sw	a2,48(sp)
    15a0:	afa70034 	sw	a3,52(sp)
    15a4:	0c000000 	jal	0 <func_80AFC9A0>
    15a8:	24a502a4 	addiu	a1,a1,676
    15ac:	8fa30038 	lw	v1,56(sp)
    15b0:	8fa5002c 	lw	a1,44(sp)
    15b4:	8fa80030 	lw	t0,48(sp)
    15b8:	90620283 	lbu	v0,643(v1)
    15bc:	2406000b 	li	a2,11
    15c0:	2464028c 	addiu	a0,v1,652
    15c4:	384e0001 	xori	t6,v0,0x1
    15c8:	15c0000a 	bnez	t6,15f4 <func_80AFDF24+0x70>
    15cc:	34590004 	ori	t9,v0,0x4
    15d0:	240f0012 	li	t7,18
    15d4:	2418ffff 	li	t8,-1
    15d8:	afb80018 	sw	t8,24(sp)
    15dc:	afaf0010 	sw	t7,16(sp)
    15e0:	2407000c 	li	a3,12
    15e4:	0c000000 	jal	0 <func_80AFC9A0>
    15e8:	afa80014 	sw	t0,20(sp)
    15ec:	1000000c 	b	1620 <func_80AFDF24+0x9c>
    15f0:	8fbf0024 	lw	ra,36(sp)
    15f4:	14590009 	bne	v0,t9,161c <func_80AFDF24+0x98>
    15f8:	2464028c 	addiu	a0,v1,652
    15fc:	240a0012 	li	t2,18
    1600:	240bffff 	li	t3,-1
    1604:	afab0018 	sw	t3,24(sp)
    1608:	afaa0010 	sw	t2,16(sp)
    160c:	00003025 	move	a2,zero
    1610:	24070012 	li	a3,18
    1614:	0c000000 	jal	0 <func_80AFC9A0>
    1618:	afa80014 	sw	t0,20(sp)
    161c:	8fbf0024 	lw	ra,36(sp)
    1620:	27bd0028 	addiu	sp,sp,40
    1624:	03e00008 	jr	ra
    1628:	00000000 	nop

0000162c <EnSkb_Draw>:
    162c:	27bdffe0 	addiu	sp,sp,-32
    1630:	afbf001c 	sw	ra,28(sp)
    1634:	afa40020 	sw	a0,32(sp)
    1638:	afa50024 	sw	a1,36(sp)
    163c:	0c000000 	jal	0 <func_80AFC9A0>
    1640:	8ca40000 	lw	a0,0(a1)
    1644:	8fa20020 	lw	v0,32(sp)
    1648:	3c0f0000 	lui	t7,0x0
    164c:	25ef0000 	addiu	t7,t7,0
    1650:	3c070000 	lui	a3,0x0
    1654:	8c450150 	lw	a1,336(v0)
    1658:	8c46016c 	lw	a2,364(v0)
    165c:	afaf0010 	sw	t7,16(sp)
    1660:	24e70000 	addiu	a3,a3,0
    1664:	8fa40024 	lw	a0,36(sp)
    1668:	0c000000 	jal	0 <func_80AFC9A0>
    166c:	afa20014 	sw	v0,20(sp)
    1670:	8fbf001c 	lw	ra,28(sp)
    1674:	27bd0020 	addiu	sp,sp,32
    1678:	03e00008 	jr	ra
    167c:	00000000 	nop
