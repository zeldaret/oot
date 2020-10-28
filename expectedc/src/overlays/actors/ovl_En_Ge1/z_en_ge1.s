
build/src/overlays/actors/ovl_En_Ge1/z_en_ge1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnGe1_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb00028 	sw	s0,40(sp)
       8:	00808025 	move	s0,a0
       c:	afbf002c 	sw	ra,44(sp)
      10:	afa50044 	sw	a1,68(sp)
      14:	3c060000 	lui	a2,0x0
      18:	24c60000 	addiu	a2,a2,0
      1c:	24050000 	li	a1,0
      20:	248400b4 	addiu	a0,a0,180
      24:	0c000000 	jal	0 <EnGe1_Init>
      28:	3c0741f0 	lui	a3,0x41f0
      2c:	26050198 	addiu	a1,s0,408
      30:	3c060600 	lui	a2,0x600
      34:	3c070600 	lui	a3,0x600
      38:	260e01dc 	addiu	t6,s0,476
      3c:	260f023c 	addiu	t7,s0,572
      40:	24180010 	li	t8,16
      44:	afb80018 	sw	t8,24(sp)
      48:	afaf0014 	sw	t7,20(sp)
      4c:	afae0010 	sw	t6,16(sp)
      50:	24e70228 	addiu	a3,a3,552
      54:	24c60330 	addiu	a2,a2,816
      58:	afa50030 	sw	a1,48(sp)
      5c:	0c000000 	jal	0 <EnGe1_Init>
      60:	8fa40044 	lw	a0,68(sp)
      64:	3c050600 	lui	a1,0x600
      68:	24a50228 	addiu	a1,a1,552
      6c:	0c000000 	jal	0 <EnGe1_Init>
      70:	8fa40030 	lw	a0,48(sp)
      74:	2605014c 	addiu	a1,s0,332
      78:	afa50030 	sw	a1,48(sp)
      7c:	0c000000 	jal	0 <EnGe1_Init>
      80:	8fa40044 	lw	a0,68(sp)
      84:	3c070000 	lui	a3,0x0
      88:	8fa50030 	lw	a1,48(sp)
      8c:	24e70000 	addiu	a3,a3,0
      90:	8fa40044 	lw	a0,68(sp)
      94:	0c000000 	jal	0 <EnGe1_Init>
      98:	02003025 	move	a2,s0
      9c:	3c080600 	lui	t0,0x600
      a0:	3c090000 	lui	t1,0x0
      a4:	241900ff 	li	t9,255
      a8:	25080228 	addiu	t0,t0,552
      ac:	25290000 	addiu	t1,t1,0
      b0:	240a0006 	li	t2,6
      b4:	3c053c23 	lui	a1,0x3c23
      b8:	a21900ae 	sb	t9,174(s0)
      bc:	ae0802b0 	sw	t0,688(s0)
      c0:	ae0902b8 	sw	t1,696(s0)
      c4:	a20a001f 	sb	t2,31(s0)
      c8:	34a5d70a 	ori	a1,a1,0xd70a
      cc:	0c000000 	jal	0 <EnGe1_Init>
      d0:	02002025 	move	a0,s0
      d4:	8fab0044 	lw	t3,68(sp)
      d8:	2401005a 	li	at,90
      dc:	3c0e0000 	lui	t6,0x0
      e0:	856c00a4 	lh	t4,164(t3)
      e4:	240d0002 	li	t5,2
      e8:	25ce0000 	addiu	t6,t6,0
      ec:	15810004 	bne	t4,at,100 <EnGe1_Init+0x100>
      f0:	3c01447a 	lui	at,0x447a
      f4:	44812000 	mtc1	at,$f4
      f8:	10000005 	b	110 <EnGe1_Init+0x110>
      fc:	e60400f4 	swc1	$f4,244(s0)
     100:	3c014496 	lui	at,0x4496
     104:	44813000 	mtc1	at,$f6
     108:	00000000 	nop
     10c:	e60600f4 	swc1	$f6,244(s0)
     110:	8602001c 	lh	v0,28(s0)
     114:	24010001 	li	at,1
     118:	304200ff 	andi	v0,v0,0xff
     11c:	50400012 	beqzl	v0,168 <EnGe1_Init+0x168>
     120:	a20d02ae 	sb	t5,686(s0)
     124:	10410012 	beq	v0,at,170 <EnGe1_Init+0x170>
     128:	240f0001 	li	t7,1
     12c:	24010004 	li	at,4
     130:	1041001a 	beq	v0,at,19c <EnGe1_Init+0x19c>
     134:	24080001 	li	t0,1
     138:	24010005 	li	at,5
     13c:	10410022 	beq	v0,at,1c8 <EnGe1_Init+0x1c8>
     140:	3c0b0000 	lui	t3,0x0
     144:	24010045 	li	at,69
     148:	1041002d 	beq	v0,at,200 <EnGe1_Init+0x200>
     14c:	3c0d0000 	lui	t5,0x0
     150:	24010046 	li	at,70
     154:	10410050 	beq	v0,at,298 <EnGe1_Init+0x298>
     158:	240c0001 	li	t4,1
     15c:	10000059 	b	2c4 <EnGe1_Init+0x2c4>
     160:	a60002ac 	sh	zero,684(s0)
     164:	a20d02ae 	sb	t5,686(s0)
     168:	10000055 	b	2c0 <EnGe1_Init+0x2c0>
     16c:	ae0e02b4 	sw	t6,692(s0)
     170:	0c000000 	jal	0 <EnGe1_Init>
     174:	a20f02ae 	sb	t7,686(s0)
     178:	10400005 	beqz	v0,190 <EnGe1_Init+0x190>
     17c:	3c190000 	lui	t9,0x0
     180:	3c180000 	lui	t8,0x0
     184:	27180000 	addiu	t8,t8,0
     188:	1000004d 	b	2c0 <EnGe1_Init+0x2c0>
     18c:	ae1802b4 	sw	t8,692(s0)
     190:	27390000 	addiu	t9,t9,0
     194:	1000004a 	b	2c0 <EnGe1_Init+0x2c0>
     198:	ae1902b4 	sw	t9,692(s0)
     19c:	0c000000 	jal	0 <EnGe1_Init>
     1a0:	a20802ae 	sb	t0,686(s0)
     1a4:	10400005 	beqz	v0,1bc <EnGe1_Init+0x1bc>
     1a8:	3c0a0000 	lui	t2,0x0
     1ac:	3c090000 	lui	t1,0x0
     1b0:	25290000 	addiu	t1,t1,0
     1b4:	10000042 	b	2c0 <EnGe1_Init+0x2c0>
     1b8:	ae0902b4 	sw	t1,692(s0)
     1bc:	254a0000 	addiu	t2,t2,0
     1c0:	1000003f 	b	2c0 <EnGe1_Init+0x2c0>
     1c4:	ae0a02b4 	sw	t2,692(s0)
     1c8:	8d6b0004 	lw	t3,4(t3)
     1cc:	3c0c0000 	lui	t4,0x0
     1d0:	3c040000 	lui	a0,0x0
     1d4:	15600007 	bnez	t3,1f4 <EnGe1_Init+0x1f4>
     1d8:	258c0000 	addiu	t4,t4,0
     1dc:	0c000000 	jal	0 <EnGe1_Init>
     1e0:	24840000 	addiu	a0,a0,0
     1e4:	0c000000 	jal	0 <EnGe1_Init>
     1e8:	02002025 	move	a0,s0
     1ec:	10000036 	b	2c8 <EnGe1_Init+0x2c8>
     1f0:	8fbf002c 	lw	ra,44(sp)
     1f4:	a20002ae 	sb	zero,686(s0)
     1f8:	10000031 	b	2c0 <EnGe1_Init+0x2c0>
     1fc:	ae0c02b4 	sw	t4,692(s0)
     200:	91ad0003 	lbu	t5,3(t5)
     204:	3c020000 	lui	v0,0x0
     208:	24420000 	addiu	v0,v0,0
     20c:	004d7021 	addu	t6,v0,t5
     210:	91cf0074 	lbu	t7,116(t6)
     214:	240100ff 	li	at,255
     218:	24180003 	li	t8,3
     21c:	15e10005 	bne	t7,at,234 <EnGe1_Init+0x234>
     220:	3c040000 	lui	a0,0x0
     224:	0c000000 	jal	0 <EnGe1_Init>
     228:	02002025 	move	a0,s0
     22c:	10000026 	b	2c8 <EnGe1_Init+0x2c8>
     230:	8fbf002c 	lw	ra,44(sp)
     234:	a218001f 	sb	t8,31(s0)
     238:	a20002ae 	sb	zero,686(s0)
     23c:	944513fa 	lhu	a1,5114(v0)
     240:	0c000000 	jal	0 <EnGe1_Init>
     244:	24840000 	addiu	a0,a0,0
     248:	3c190000 	lui	t9,0x0
     24c:	973913fa 	lhu	t9,5114(t9)
     250:	3c090000 	lui	t1,0x0
     254:	25290000 	addiu	t1,t1,0
     258:	33280100 	andi	t0,t9,0x100
     25c:	11000003 	beqz	t0,26c <EnGe1_Init+0x26c>
     260:	00000000 	nop
     264:	10000016 	b	2c0 <EnGe1_Init+0x2c0>
     268:	ae0902b4 	sw	t1,692(s0)
     26c:	0c000000 	jal	0 <EnGe1_Init>
     270:	00000000 	nop
     274:	10400005 	beqz	v0,28c <EnGe1_Init+0x28c>
     278:	3c0b0000 	lui	t3,0x0
     27c:	3c0a0000 	lui	t2,0x0
     280:	254a0000 	addiu	t2,t2,0
     284:	1000000e 	b	2c0 <EnGe1_Init+0x2c0>
     288:	ae0a02b4 	sw	t2,692(s0)
     28c:	256b0000 	addiu	t3,t3,0
     290:	1000000b 	b	2c0 <EnGe1_Init+0x2c0>
     294:	ae0b02b4 	sw	t3,692(s0)
     298:	0c000000 	jal	0 <EnGe1_Init>
     29c:	a20c02ae 	sb	t4,686(s0)
     2a0:	10400005 	beqz	v0,2b8 <EnGe1_Init+0x2b8>
     2a4:	3c0e0000 	lui	t6,0x0
     2a8:	3c0d0000 	lui	t5,0x0
     2ac:	25ad0000 	addiu	t5,t5,0
     2b0:	10000003 	b	2c0 <EnGe1_Init+0x2c0>
     2b4:	ae0d02b4 	sw	t5,692(s0)
     2b8:	25ce0000 	addiu	t6,t6,0
     2bc:	ae0e02b4 	sw	t6,692(s0)
     2c0:	a60002ac 	sh	zero,684(s0)
     2c4:	8fbf002c 	lw	ra,44(sp)
     2c8:	8fb00028 	lw	s0,40(sp)
     2cc:	27bd0040 	addiu	sp,sp,64
     2d0:	03e00008 	jr	ra
     2d4:	00000000 	nop

000002d8 <EnGe1_Destroy>:
     2d8:	27bdffe8 	addiu	sp,sp,-24
     2dc:	00803025 	move	a2,a0
     2e0:	afbf0014 	sw	ra,20(sp)
     2e4:	00a02025 	move	a0,a1
     2e8:	0c000000 	jal	0 <EnGe1_Init>
     2ec:	24c5014c 	addiu	a1,a2,332
     2f0:	8fbf0014 	lw	ra,20(sp)
     2f4:	27bd0018 	addiu	sp,sp,24
     2f8:	03e00008 	jr	ra
     2fc:	00000000 	nop

00000300 <func_80A30C70>:
     300:	27bdffd0 	addiu	sp,sp,-48
     304:	afbf002c 	sw	ra,44(sp)
     308:	afb00028 	sw	s0,40(sp)
     30c:	00808025 	move	s0,a0
     310:	afa50034 	sw	a1,52(sp)
     314:	afa60038 	sw	a2,56(sp)
     318:	0c000000 	jal	0 <EnGe1_Init>
     31c:	afa7003c 	sw	a3,60(sp)
     320:	1040001d 	beqz	v0,398 <func_80A30C70+0x98>
     324:	c7a0003c 	lwc1	$f0,60(sp)
     328:	961802ac 	lhu	t8,684(s0)
     32c:	8fae0040 	lw	t6,64(sp)
     330:	3c040600 	lui	a0,0x600
     334:	3c0f0000 	lui	t7,0x0
     338:	24840228 	addiu	a0,a0,552
     33c:	25ef0000 	addiu	t7,t7,0
     340:	3319fffb 	andi	t9,t8,0xfffb
     344:	ae0f02b8 	sw	t7,696(s0)
     348:	a61902ac 	sh	t9,684(s0)
     34c:	ae0402b0 	sw	a0,688(s0)
     350:	0c000000 	jal	0 <EnGe1_Init>
     354:	ae0e02b4 	sw	t6,692(s0)
     358:	44822000 	mtc1	v0,$f4
     35c:	3c01c100 	lui	at,0xc100
     360:	44814000 	mtc1	at,$f8
     364:	468021a0 	cvt.s.w	$f6,$f4
     368:	3c050600 	lui	a1,0x600
     36c:	24080002 	li	t0,2
     370:	afa80014 	sw	t0,20(sp)
     374:	24a50228 	addiu	a1,a1,552
     378:	26040198 	addiu	a0,s0,408
     37c:	e7a60010 	swc1	$f6,16(sp)
     380:	3c063f80 	lui	a2,0x3f80
     384:	24070000 	li	a3,0
     388:	0c000000 	jal	0 <EnGe1_Init>
     38c:	e7a80018 	swc1	$f8,24(sp)
     390:	1000000c 	b	3c4 <func_80A30C70+0xc4>
     394:	24020001 	li	v0,1
     398:	c60a0090 	lwc1	$f10,144(s0)
     39c:	97a9003a 	lhu	t1,58(sp)
     3a0:	02002025 	move	a0,s0
     3a4:	4600503c 	c.lt.s	$f10,$f0
     3a8:	a609010e 	sh	t1,270(s0)
     3ac:	45020005 	bc1fl	3c4 <func_80A30C70+0xc4>
     3b0:	00001025 	move	v0,zero
     3b4:	44060000 	mfc1	a2,$f0
     3b8:	0c000000 	jal	0 <EnGe1_Init>
     3bc:	8fa50034 	lw	a1,52(sp)
     3c0:	00001025 	move	v0,zero
     3c4:	8fbf002c 	lw	ra,44(sp)
     3c8:	8fb00028 	lw	s0,40(sp)
     3cc:	27bd0030 	addiu	sp,sp,48
     3d0:	03e00008 	jr	ra
     3d4:	00000000 	nop

000003d8 <func_80A30D48>:
     3d8:	27bdffd8 	addiu	sp,sp,-40
     3dc:	afa40028 	sw	a0,40(sp)
     3e0:	afbf0024 	sw	ra,36(sp)
     3e4:	3c040600 	lui	a0,0x600
     3e8:	0c000000 	jal	0 <EnGe1_Init>
     3ec:	24840228 	addiu	a0,a0,552
     3f0:	44822000 	mtc1	v0,$f4
     3f4:	3c014100 	lui	at,0x4100
     3f8:	44814000 	mtc1	at,$f8
     3fc:	46802120 	cvt.s.w	$f4,$f4
     400:	8fa40028 	lw	a0,40(sp)
     404:	44803000 	mtc1	zero,$f6
     408:	3c050600 	lui	a1,0x600
     40c:	240e0002 	li	t6,2
     410:	afae0014 	sw	t6,20(sp)
     414:	44072000 	mfc1	a3,$f4
     418:	24a50228 	addiu	a1,a1,552
     41c:	3c06bf80 	lui	a2,0xbf80
     420:	e7a80018 	swc1	$f8,24(sp)
     424:	24840198 	addiu	a0,a0,408
     428:	0c000000 	jal	0 <EnGe1_Init>
     42c:	e7a60010 	swc1	$f6,16(sp)
     430:	8fa20028 	lw	v0,40(sp)
     434:	3c0f0600 	lui	t7,0x600
     438:	3c180000 	lui	t8,0x0
     43c:	25ef0228 	addiu	t7,t7,552
     440:	27180000 	addiu	t8,t8,0
     444:	ac4f02b0 	sw	t7,688(v0)
     448:	ac5802b8 	sw	t8,696(v0)
     44c:	8fbf0024 	lw	ra,36(sp)
     450:	27bd0028 	addiu	sp,sp,40
     454:	03e00008 	jr	ra
     458:	00000000 	nop

0000045c <func_80A30DCC>:
     45c:	3c020000 	lui	v0,0x0
     460:	94420ee6 	lhu	v0,3814(v0)
     464:	304e0001 	andi	t6,v0,0x1
     468:	11c00007 	beqz	t6,488 <func_80A30DCC+0x2c>
     46c:	304f0002 	andi	t7,v0,0x2
     470:	11e00005 	beqz	t7,488 <func_80A30DCC+0x2c>
     474:	30580004 	andi	t8,v0,0x4
     478:	13000003 	beqz	t8,488 <func_80A30DCC+0x2c>
     47c:	30590008 	andi	t9,v0,0x8
     480:	17200003 	bnez	t9,490 <func_80A30DCC+0x34>
     484:	24020001 	li	v0,1
     488:	03e00008 	jr	ra
     48c:	00001025 	move	v0,zero
     490:	03e00008 	jr	ra
     494:	00000000 	nop

00000498 <func_80A30E08>:
     498:	27bdffe8 	addiu	sp,sp,-24
     49c:	afbf0014 	sw	ra,20(sp)
     4a0:	948e02ac 	lhu	t6,684(a0)
     4a4:	908202af 	lbu	v0,687(a0)
     4a8:	35cf0001 	ori	t7,t6,0x1
     4ac:	18400004 	blez	v0,4c0 <func_80A30E08+0x28>
     4b0:	a48f02ac 	sh	t7,684(a0)
     4b4:	2458ffff 	addiu	t8,v0,-1
     4b8:	1000002b 	b	568 <func_80A30E08+0xd0>
     4bc:	a09802af 	sb	t8,687(a0)
     4c0:	00a02025 	move	a0,a1
     4c4:	0c000000 	jal	0 <EnGe1_Init>
     4c8:	afa5001c 	sw	a1,28(sp)
     4cc:	3c040000 	lui	a0,0x0
     4d0:	24840000 	addiu	a0,a0,0
     4d4:	9099000a 	lbu	t9,10(a0)
     4d8:	3c020000 	lui	v0,0x0
     4dc:	24420000 	addiu	v0,v0,0
     4e0:	00594021 	addu	t0,v0,t9
     4e4:	91090074 	lbu	t1,116(t0)
     4e8:	240300ff 	li	v1,255
     4ec:	8fa5001c 	lw	a1,28(sp)
     4f0:	10690005 	beq	v1,t1,508 <func_80A30E08+0x70>
     4f4:	24080026 	li	t0,38
     4f8:	908a000b 	lbu	t2,11(a0)
     4fc:	004a5821 	addu	t3,v0,t2
     500:	916c0074 	lbu	t4,116(t3)
     504:	146c0005 	bne	v1,t4,51c <func_80A30E08+0x84>
     508:	3c010001 	lui	at,0x1
     50c:	00250821 	addu	at,at,a1
     510:	240d01a5 	li	t5,421
     514:	1000000d 	b	54c <func_80A30E08+0xb4>
     518:	a42d1e1a 	sh	t5,7706(at)
     51c:	944e0eec 	lhu	t6,3820(v0)
     520:	3c010001 	lui	at,0x1
     524:	00250821 	addu	at,at,a1
     528:	31cf0080 	andi	t7,t6,0x80
     52c:	11e00006 	beqz	t7,548 <func_80A30E08+0xb0>
     530:	241903b4 	li	t9,948
     534:	3c010001 	lui	at,0x1
     538:	00250821 	addu	at,at,a1
     53c:	241805f8 	li	t8,1528
     540:	10000002 	b	54c <func_80A30E08+0xb4>
     544:	a4381e1a 	sh	t8,7706(at)
     548:	a4391e1a 	sh	t9,7706(at)
     54c:	3c010001 	lui	at,0x1
     550:	00250821 	addu	at,at,a1
     554:	a0281e5e 	sb	t0,7774(at)
     558:	3c010001 	lui	at,0x1
     55c:	00250821 	addu	at,at,a1
     560:	24090014 	li	t1,20
     564:	a0291e15 	sb	t1,7701(at)
     568:	8fbf0014 	lw	ra,20(sp)
     56c:	27bd0018 	addiu	sp,sp,24
     570:	03e00008 	jr	ra
     574:	00000000 	nop

00000578 <func_80A30EE8>:
     578:	27bdffe8 	addiu	sp,sp,-24
     57c:	afbf0014 	sw	ra,20(sp)
     580:	afa5001c 	sw	a1,28(sp)
     584:	3c0f0000 	lui	t7,0x0
     588:	00803825 	move	a3,a0
     58c:	240e001e 	li	t6,30
     590:	25ef0000 	addiu	t7,t7,0
     594:	a08e02af 	sb	t6,687(a0)
     598:	ac8f02b4 	sw	t7,692(a0)
     59c:	afa70018 	sw	a3,24(sp)
     5a0:	8fa4001c 	lw	a0,28(sp)
     5a4:	00e02825 	move	a1,a3
     5a8:	0c000000 	jal	0 <EnGe1_Init>
     5ac:	2406005f 	li	a2,95
     5b0:	0c000000 	jal	0 <EnGe1_Init>
     5b4:	2404482c 	li	a0,18476
     5b8:	8fa60018 	lw	a2,24(sp)
     5bc:	8fa4001c 	lw	a0,28(sp)
     5c0:	0c000000 	jal	0 <EnGe1_Init>
     5c4:	24056000 	li	a1,24576
     5c8:	8fbf0014 	lw	ra,20(sp)
     5cc:	27bd0018 	addiu	sp,sp,24
     5d0:	03e00008 	jr	ra
     5d4:	00000000 	nop

000005d8 <func_80A30F48>:
     5d8:	27bdffe8 	addiu	sp,sp,-24
     5dc:	afbf0014 	sw	ra,20(sp)
     5e0:	afa5001c 	sw	a1,28(sp)
     5e4:	848f00b6 	lh	t7,182(a0)
     5e8:	848e008a 	lh	t6,138(a0)
     5ec:	00803825 	move	a3,a0
     5f0:	01cf1023 	subu	v0,t6,t7
     5f4:	00021400 	sll	v0,v0,0x10
     5f8:	00021403 	sra	v0,v0,0x10
     5fc:	04400003 	bltz	v0,60c <func_80A30F48+0x34>
     600:	00021823 	negu	v1,v0
     604:	10000001 	b	60c <func_80A30F48+0x34>
     608:	00401825 	move	v1,v0
     60c:	28614301 	slti	at,v1,17153
     610:	1020000c 	beqz	at,644 <func_80A30F48+0x6c>
     614:	3c0142c8 	lui	at,0x42c8
     618:	44813000 	mtc1	at,$f6
     61c:	c4e40090 	lwc1	$f4,144(a3)
     620:	00e02025 	move	a0,a3
     624:	8fa5001c 	lw	a1,28(sp)
     628:	4606203c 	c.lt.s	$f4,$f6
     62c:	00000000 	nop
     630:	45020005 	bc1fl	648 <func_80A30F48+0x70>
     634:	90f8015d 	lbu	t8,349(a3)
     638:	0c000000 	jal	0 <EnGe1_Init>
     63c:	afa70018 	sw	a3,24(sp)
     640:	8fa70018 	lw	a3,24(sp)
     644:	90f8015d 	lbu	t8,349(a3)
     648:	00e02025 	move	a0,a3
     64c:	8fa5001c 	lw	a1,28(sp)
     650:	33190002 	andi	t9,t8,0x2
     654:	53200005 	beqzl	t9,66c <func_80A30F48+0x94>
     658:	8fa4001c 	lw	a0,28(sp)
     65c:	0c000000 	jal	0 <EnGe1_Init>
     660:	afa70018 	sw	a3,24(sp)
     664:	8fa70018 	lw	a3,24(sp)
     668:	8fa4001c 	lw	a0,28(sp)
     66c:	3c010001 	lui	at,0x1
     670:	34211e60 	ori	at,at,0x1e60
     674:	24e6014c 	addiu	a2,a3,332
     678:	0c000000 	jal	0 <EnGe1_Init>
     67c:	00812821 	addu	a1,a0,at
     680:	8fbf0014 	lw	ra,20(sp)
     684:	27bd0018 	addiu	sp,sp,24
     688:	03e00008 	jr	ra
     68c:	00000000 	nop

00000690 <func_80A31000>:
     690:	27bdffe8 	addiu	sp,sp,-24
     694:	afbf0014 	sw	ra,20(sp)
     698:	948e02ac 	lhu	t6,684(a0)
     69c:	35cf0001 	ori	t7,t6,0x1
     6a0:	a48f02ac 	sh	t7,684(a0)
     6a4:	0c000000 	jal	0 <EnGe1_Init>
     6a8:	afa40018 	sw	a0,24(sp)
     6ac:	10400019 	beqz	v0,714 <func_80A31000+0x84>
     6b0:	8fa40018 	lw	a0,24(sp)
     6b4:	9482010e 	lhu	v0,270(a0)
     6b8:	24016001 	li	at,24577
     6bc:	3c190000 	lui	t9,0x0
     6c0:	1041000d 	beq	v0,at,6f8 <func_80A31000+0x68>
     6c4:	27390000 	addiu	t9,t9,0
     6c8:	24016018 	li	at,24600
     6cc:	1041000f 	beq	v0,at,70c <func_80A31000+0x7c>
     6d0:	3c090000 	lui	t1,0x0
     6d4:	24016019 	li	at,24601
     6d8:	10410009 	beq	v0,at,700 <func_80A31000+0x70>
     6dc:	3c080000 	lui	t0,0x0
     6e0:	2401601a 	li	at,24602
     6e4:	10410006 	beq	v0,at,700 <func_80A31000+0x70>
     6e8:	3c180000 	lui	t8,0x0
     6ec:	27180000 	addiu	t8,t8,0
     6f0:	10000008 	b	714 <func_80A31000+0x84>
     6f4:	ac9802b4 	sw	t8,692(a0)
     6f8:	10000006 	b	714 <func_80A31000+0x84>
     6fc:	ac9902b4 	sw	t9,692(a0)
     700:	25080000 	addiu	t0,t0,0
     704:	10000003 	b	714 <func_80A31000+0x84>
     708:	ac8802b4 	sw	t0,692(a0)
     70c:	25290000 	addiu	t1,t1,0
     710:	ac8902b4 	sw	t1,692(a0)
     714:	8fbf0014 	lw	ra,20(sp)
     718:	27bd0018 	addiu	sp,sp,24
     71c:	03e00008 	jr	ra
     720:	00000000 	nop

00000724 <func_80A31094>:
     724:	27bdffe0 	addiu	sp,sp,-32
     728:	3c0e0000 	lui	t6,0x0
     72c:	afbf001c 	sw	ra,28(sp)
     730:	25ce0000 	addiu	t6,t6,0
     734:	afae0010 	sw	t6,16(sp)
     738:	24066001 	li	a2,24577
     73c:	0c000000 	jal	0 <EnGe1_Init>
     740:	3c0742c8 	lui	a3,0x42c8
     744:	8fbf001c 	lw	ra,28(sp)
     748:	27bd0020 	addiu	sp,sp,32
     74c:	03e00008 	jr	ra
     750:	00000000 	nop

00000754 <func_80A310C4>:
     754:	27bdffe8 	addiu	sp,sp,-24
     758:	afbf0014 	sw	ra,20(sp)
     75c:	afa5001c 	sw	a1,28(sp)
     760:	3c014248 	lui	at,0x4248
     764:	44812000 	mtc1	at,$f4
     768:	c4800090 	lwc1	$f0,144(a0)
     76c:	848f00b6 	lh	t7,182(a0)
     770:	848e008a 	lh	t6,138(a0)
     774:	4604003c 	c.lt.s	$f0,$f4
     778:	00803825 	move	a3,a0
     77c:	01cf1023 	subu	v0,t6,t7
     780:	00021400 	sll	v0,v0,0x10
     784:	4501000d 	bc1t	7bc <func_80A310C4+0x68>
     788:	00021403 	sra	v0,v0,0x10
     78c:	04400003 	bltz	v0,79c <func_80A310C4+0x48>
     790:	00021823 	negu	v1,v0
     794:	10000001 	b	79c <func_80A310C4+0x48>
     798:	00401825 	move	v1,v0
     79c:	28614301 	slti	at,v1,17153
     7a0:	1020000b 	beqz	at,7d0 <func_80A310C4+0x7c>
     7a4:	3c0143c8 	lui	at,0x43c8
     7a8:	44813000 	mtc1	at,$f6
     7ac:	00000000 	nop
     7b0:	4606003c 	c.lt.s	$f0,$f6
     7b4:	00000000 	nop
     7b8:	45000005 	bc1f	7d0 <func_80A310C4+0x7c>
     7bc:	00e02025 	move	a0,a3
     7c0:	8fa5001c 	lw	a1,28(sp)
     7c4:	0c000000 	jal	0 <EnGe1_Init>
     7c8:	afa70018 	sw	a3,24(sp)
     7cc:	8fa70018 	lw	a3,24(sp)
     7d0:	90f8015d 	lbu	t8,349(a3)
     7d4:	00e02025 	move	a0,a3
     7d8:	8fa5001c 	lw	a1,28(sp)
     7dc:	33190002 	andi	t9,t8,0x2
     7e0:	53200005 	beqzl	t9,7f8 <func_80A310C4+0xa4>
     7e4:	8fa4001c 	lw	a0,28(sp)
     7e8:	0c000000 	jal	0 <EnGe1_Init>
     7ec:	afa70018 	sw	a3,24(sp)
     7f0:	8fa70018 	lw	a3,24(sp)
     7f4:	8fa4001c 	lw	a0,28(sp)
     7f8:	3c010001 	lui	at,0x1
     7fc:	34211e60 	ori	at,at,0x1e60
     800:	24e6014c 	addiu	a2,a3,332
     804:	0c000000 	jal	0 <EnGe1_Init>
     808:	00812821 	addu	a1,a0,at
     80c:	8fbf0014 	lw	ra,20(sp)
     810:	27bd0018 	addiu	sp,sp,24
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_80A3118C>:
     81c:	27bdffe0 	addiu	sp,sp,-32
     820:	afa40020 	sw	a0,32(sp)
     824:	afbf001c 	sw	ra,28(sp)
     828:	afa50024 	sw	a1,36(sp)
     82c:	00a02025 	move	a0,a1
     830:	0c000000 	jal	0 <EnGe1_Init>
     834:	24050022 	li	a1,34
     838:	14400002 	bnez	v0,844 <func_80A3118C+0x28>
     83c:	3046ffff 	andi	a2,v0,0xffff
     840:	24066019 	li	a2,24601
     844:	3c0e0000 	lui	t6,0x0
     848:	25ce0000 	addiu	t6,t6,0
     84c:	afae0010 	sw	t6,16(sp)
     850:	8fa40020 	lw	a0,32(sp)
     854:	8fa50024 	lw	a1,36(sp)
     858:	0c000000 	jal	0 <EnGe1_Init>
     85c:	3c0742c8 	lui	a3,0x42c8
     860:	8fbf001c 	lw	ra,28(sp)
     864:	27bd0020 	addiu	sp,sp,32
     868:	03e00008 	jr	ra
     86c:	00000000 	nop

00000870 <func_80A311E0>:
     870:	27bdffe8 	addiu	sp,sp,-24
     874:	afbf0014 	sw	ra,20(sp)
     878:	afa5001c 	sw	a1,28(sp)
     87c:	908202af 	lbu	v0,687(a0)
     880:	18400003 	blez	v0,890 <func_80A311E0+0x20>
     884:	244effff 	addiu	t6,v0,-1
     888:	10000007 	b	8a8 <func_80A311E0+0x38>
     88c:	a08e02af 	sb	t6,687(a0)
     890:	0c000000 	jal	0 <EnGe1_Init>
     894:	afa40018 	sw	a0,24(sp)
     898:	8fa40018 	lw	a0,24(sp)
     89c:	3c0f0000 	lui	t7,0x0
     8a0:	25ef0000 	addiu	t7,t7,0
     8a4:	ac8f02b4 	sw	t7,692(a0)
     8a8:	949802ac 	lhu	t8,684(a0)
     8ac:	37190008 	ori	t9,t8,0x8
     8b0:	a49902ac 	sh	t9,684(a0)
     8b4:	8fbf0014 	lw	ra,20(sp)
     8b8:	27bd0018 	addiu	sp,sp,24
     8bc:	03e00008 	jr	ra
     8c0:	00000000 	nop

000008c4 <func_80A31234>:
     8c4:	27bdffe8 	addiu	sp,sp,-24
     8c8:	afbf0014 	sw	ra,20(sp)
     8cc:	afa5001c 	sw	a1,28(sp)
     8d0:	948e02ac 	lhu	t6,684(a0)
     8d4:	00803025 	move	a2,a0
     8d8:	3c180000 	lui	t8,0x0
     8dc:	31cf0004 	andi	t7,t6,0x4
     8e0:	11e00010 	beqz	t7,924 <func_80A31234+0x60>
     8e4:	3c014170 	lui	at,0x4170
     8e8:	27180000 	addiu	t8,t8,0
     8ec:	ac9802b4 	sw	t8,692(a0)
     8f0:	84c5001c 	lh	a1,28(a2)
     8f4:	afa60018 	sw	a2,24(sp)
     8f8:	8fa4001c 	lw	a0,28(sp)
     8fc:	00052a03 	sra	a1,a1,0x8
     900:	0c000000 	jal	0 <EnGe1_Init>
     904:	30a5003f 	andi	a1,a1,0x3f
     908:	8fa60018 	lw	a2,24(sp)
     90c:	24190032 	li	t9,50
     910:	a0d902af 	sb	t9,687(a2)
     914:	0c000000 	jal	0 <EnGe1_Init>
     918:	8fa4001c 	lw	a0,28(sp)
     91c:	10000012 	b	968 <func_80A31234+0xa4>
     920:	8fbf0014 	lw	ra,20(sp)
     924:	c4c001b0 	lwc1	$f0,432(a2)
     928:	44812000 	mtc1	at,$f4
     92c:	3c014198 	lui	at,0x4198
     930:	00c02025 	move	a0,a2
     934:	46002032 	c.eq.s	$f4,$f0
     938:	00000000 	nop
     93c:	45010007 	bc1t	95c <func_80A31234+0x98>
     940:	00000000 	nop
     944:	44813000 	mtc1	at,$f6
     948:	00000000 	nop
     94c:	46003032 	c.eq.s	$f6,$f0
     950:	00000000 	nop
     954:	45020004 	bc1fl	968 <func_80A31234+0xa4>
     958:	8fbf0014 	lw	ra,20(sp)
     95c:	0c000000 	jal	0 <EnGe1_Init>
     960:	2405184d 	li	a1,6221
     964:	8fbf0014 	lw	ra,20(sp)
     968:	27bd0018 	addiu	sp,sp,24
     96c:	03e00008 	jr	ra
     970:	00000000 	nop

00000974 <func_80A312E4>:
     974:	27bdffd0 	addiu	sp,sp,-48
     978:	afb00028 	sw	s0,40(sp)
     97c:	00808025 	move	s0,a0
     980:	afbf002c 	sw	ra,44(sp)
     984:	afa50034 	sw	a1,52(sp)
     988:	0c000000 	jal	0 <EnGe1_Init>
     98c:	24a420d8 	addiu	a0,a1,8408
     990:	24010005 	li	at,5
     994:	54410022 	bnel	v0,at,a20 <func_80A312E4+0xac>
     998:	8fbf002c 	lw	ra,44(sp)
     99c:	0c000000 	jal	0 <EnGe1_Init>
     9a0:	8fa40034 	lw	a0,52(sp)
     9a4:	1040001d 	beqz	v0,a1c <func_80A312E4+0xa8>
     9a8:	3c0e0000 	lui	t6,0x0
     9ac:	25ce0000 	addiu	t6,t6,0
     9b0:	3c040601 	lui	a0,0x601
     9b4:	ae0e02b4 	sw	t6,692(s0)
     9b8:	0c000000 	jal	0 <EnGe1_Init>
     9bc:	2484a048 	addiu	a0,a0,-24504
     9c0:	44822000 	mtc1	v0,$f4
     9c4:	3c01c040 	lui	at,0xc040
     9c8:	44814000 	mtc1	at,$f8
     9cc:	468021a0 	cvt.s.w	$f6,$f4
     9d0:	3c050601 	lui	a1,0x601
     9d4:	240f0002 	li	t7,2
     9d8:	afaf0014 	sw	t7,20(sp)
     9dc:	24a5a048 	addiu	a1,a1,-24504
     9e0:	26040198 	addiu	a0,s0,408
     9e4:	e7a60010 	swc1	$f6,16(sp)
     9e8:	3c063f80 	lui	a2,0x3f80
     9ec:	24070000 	li	a3,0
     9f0:	0c000000 	jal	0 <EnGe1_Init>
     9f4:	e7a80018 	swc1	$f8,24(sp)
     9f8:	960802ac 	lhu	t0,684(s0)
     9fc:	3c180601 	lui	t8,0x601
     a00:	3c190000 	lui	t9,0x0
     a04:	2718a048 	addiu	t8,t8,-24504
     a08:	27390000 	addiu	t9,t9,0
     a0c:	3109fffb 	andi	t1,t0,0xfffb
     a10:	ae1802b0 	sw	t8,688(s0)
     a14:	ae1902b8 	sw	t9,696(s0)
     a18:	a60902ac 	sh	t1,684(s0)
     a1c:	8fbf002c 	lw	ra,44(sp)
     a20:	8fb00028 	lw	s0,40(sp)
     a24:	27bd0030 	addiu	sp,sp,48
     a28:	03e00008 	jr	ra
     a2c:	00000000 	nop

00000a30 <func_80A313A0>:
     a30:	27bdffe8 	addiu	sp,sp,-24
     a34:	afbf0014 	sw	ra,20(sp)
     a38:	afa40018 	sw	a0,24(sp)
     a3c:	0c000000 	jal	0 <EnGe1_Init>
     a40:	24a420d8 	addiu	a0,a1,8408
     a44:	24010002 	li	at,2
     a48:	14410005 	bne	v0,at,a60 <func_80A313A0+0x30>
     a4c:	8fa40018 	lw	a0,24(sp)
     a50:	3c0e0000 	lui	t6,0x0
     a54:	25ce0000 	addiu	t6,t6,0
     a58:	0c000000 	jal	0 <EnGe1_Init>
     a5c:	ac8e02b4 	sw	t6,692(a0)
     a60:	8fbf0014 	lw	ra,20(sp)
     a64:	27bd0018 	addiu	sp,sp,24
     a68:	03e00008 	jr	ra
     a6c:	00000000 	nop

00000a70 <func_80A313E0>:
     a70:	27bdffe0 	addiu	sp,sp,-32
     a74:	afbf001c 	sw	ra,28(sp)
     a78:	afb10018 	sw	s1,24(sp)
     a7c:	afb00014 	sw	s0,20(sp)
     a80:	948e02ac 	lhu	t6,684(a0)
     a84:	00808825 	move	s1,a0
     a88:	00a08025 	move	s0,a1
     a8c:	35cf0001 	ori	t7,t6,0x1
     a90:	a48f02ac 	sh	t7,684(a0)
     a94:	0c000000 	jal	0 <EnGe1_Init>
     a98:	24a420d8 	addiu	a0,a1,8408
     a9c:	24010004 	li	at,4
     aa0:	5441002b 	bnel	v0,at,b50 <func_80A313E0+0xe0>
     aa4:	8fbf001c 	lw	ra,28(sp)
     aa8:	0c000000 	jal	0 <EnGe1_Init>
     aac:	02002025 	move	a0,s0
     ab0:	50400027 	beqzl	v0,b50 <func_80A313E0+0xe0>
     ab4:	8fbf001c 	lw	ra,28(sp)
     ab8:	0c000000 	jal	0 <EnGe1_Init>
     abc:	02002025 	move	a0,s0
     ac0:	3c020001 	lui	v0,0x1
     ac4:	00501021 	addu	v0,v0,s0
     ac8:	904204bd 	lbu	v0,1213(v0)
     acc:	24010001 	li	at,1
     ad0:	3c180000 	lui	t8,0x0
     ad4:	10400005 	beqz	v0,aec <func_80A313E0+0x7c>
     ad8:	00000000 	nop
     adc:	10410017 	beq	v0,at,b3c <func_80A313E0+0xcc>
     ae0:	3c090000 	lui	t1,0x0
     ae4:	1000001a 	b	b50 <func_80A313E0+0xe0>
     ae8:	8fbf001c 	lw	ra,28(sp)
     aec:	87180034 	lh	t8,52(t8)
     af0:	02002025 	move	a0,s0
     af4:	2b01000a 	slti	at,t8,10
     af8:	10200007 	beqz	at,b18 <func_80A313E0+0xa8>
     afc:	00000000 	nop
     b00:	0c000000 	jal	0 <EnGe1_Init>
     b04:	24056016 	li	a1,24598
     b08:	3c190000 	lui	t9,0x0
     b0c:	27390000 	addiu	t9,t9,0
     b10:	1000000e 	b	b4c <func_80A313E0+0xdc>
     b14:	ae3902b4 	sw	t9,692(s1)
     b18:	0c000000 	jal	0 <EnGe1_Init>
     b1c:	2404fff6 	li	a0,-10
     b20:	02002025 	move	a0,s0
     b24:	0c000000 	jal	0 <EnGe1_Init>
     b28:	24056015 	li	a1,24597
     b2c:	3c080000 	lui	t0,0x0
     b30:	25080000 	addiu	t0,t0,0
     b34:	10000005 	b	b4c <func_80A313E0+0xdc>
     b38:	ae2802b4 	sw	t0,692(s1)
     b3c:	25290000 	addiu	t1,t1,0
     b40:	ae2902b4 	sw	t1,692(s1)
     b44:	0c000000 	jal	0 <EnGe1_Init>
     b48:	02202025 	move	a0,s1
     b4c:	8fbf001c 	lw	ra,28(sp)
     b50:	8fb00014 	lw	s0,20(sp)
     b54:	8fb10018 	lw	s1,24(sp)
     b58:	03e00008 	jr	ra
     b5c:	27bd0020 	addiu	sp,sp,32

00000b60 <func_80A314D0>:
     b60:	27bdffe8 	addiu	sp,sp,-24
     b64:	afbf0014 	sw	ra,20(sp)
     b68:	948e02ac 	lhu	t6,684(a0)
     b6c:	35cf0001 	ori	t7,t6,0x1
     b70:	a48f02ac 	sh	t7,684(a0)
     b74:	0c000000 	jal	0 <EnGe1_Init>
     b78:	afa40018 	sw	a0,24(sp)
     b7c:	10400005 	beqz	v0,b94 <func_80A314D0+0x34>
     b80:	8fa40018 	lw	a0,24(sp)
     b84:	3c180000 	lui	t8,0x0
     b88:	27180000 	addiu	t8,t8,0
     b8c:	0c000000 	jal	0 <EnGe1_Init>
     b90:	ac9802b4 	sw	t8,692(a0)
     b94:	8fbf0014 	lw	ra,20(sp)
     b98:	27bd0018 	addiu	sp,sp,24
     b9c:	03e00008 	jr	ra
     ba0:	00000000 	nop

00000ba4 <func_80A31514>:
     ba4:	3c0e0000 	lui	t6,0x0
     ba8:	3c0f0000 	lui	t7,0x0
     bac:	8def00a4 	lw	t7,164(t7)
     bb0:	8dce0058 	lw	t6,88(t6)
     bb4:	27bdffe0 	addiu	sp,sp,-32
     bb8:	afbf001c 	sw	ra,28(sp)
     bbc:	01cfc024 	and	t8,t6,t7
     bc0:	13000009 	beqz	t8,be8 <func_80A31514+0x44>
     bc4:	24066013 	li	a2,24595
     bc8:	3c190000 	lui	t9,0x0
     bcc:	27390000 	addiu	t9,t9,0
     bd0:	afb90010 	sw	t9,16(sp)
     bd4:	24066014 	li	a2,24596
     bd8:	0c000000 	jal	0 <EnGe1_Init>
     bdc:	3c0742c8 	lui	a3,0x42c8
     be0:	10000007 	b	c00 <func_80A31514+0x5c>
     be4:	8fbf001c 	lw	ra,28(sp)
     be8:	3c080000 	lui	t0,0x0
     bec:	25080000 	addiu	t0,t0,0
     bf0:	afa80010 	sw	t0,16(sp)
     bf4:	0c000000 	jal	0 <EnGe1_Init>
     bf8:	3c0742c8 	lui	a3,0x42c8
     bfc:	8fbf001c 	lw	ra,28(sp)
     c00:	27bd0020 	addiu	sp,sp,32
     c04:	03e00008 	jr	ra
     c08:	00000000 	nop

00000c0c <func_80A3157C>:
     c0c:	27bdffe8 	addiu	sp,sp,-24
     c10:	afbf0014 	sw	ra,20(sp)
     c14:	afa5001c 	sw	a1,28(sp)
     c18:	948e02ac 	lhu	t6,684(a0)
     c1c:	00803025 	move	a2,a0
     c20:	35cf0001 	ori	t7,t6,0x1
     c24:	a48f02ac 	sh	t7,684(a0)
     c28:	8fa4001c 	lw	a0,28(sp)
     c2c:	afa60018 	sw	a2,24(sp)
     c30:	0c000000 	jal	0 <EnGe1_Init>
     c34:	248420d8 	addiu	a0,a0,8408
     c38:	24010005 	li	at,5
     c3c:	5441000d 	bnel	v0,at,c74 <func_80A3157C+0x68>
     c40:	8fbf0014 	lw	ra,20(sp)
     c44:	0c000000 	jal	0 <EnGe1_Init>
     c48:	8fa4001c 	lw	a0,28(sp)
     c4c:	50400009 	beqzl	v0,c74 <func_80A3157C+0x68>
     c50:	8fbf0014 	lw	ra,20(sp)
     c54:	0c000000 	jal	0 <EnGe1_Init>
     c58:	8fa4001c 	lw	a0,28(sp)
     c5c:	8fa40018 	lw	a0,24(sp)
     c60:	3c180000 	lui	t8,0x0
     c64:	27180000 	addiu	t8,t8,0
     c68:	0c000000 	jal	0 <EnGe1_Init>
     c6c:	ac9802b4 	sw	t8,692(a0)
     c70:	8fbf0014 	lw	ra,20(sp)
     c74:	27bd0018 	addiu	sp,sp,24
     c78:	03e00008 	jr	ra
     c7c:	00000000 	nop

00000c80 <func_80A315F0>:
     c80:	27bdffe8 	addiu	sp,sp,-24
     c84:	afbf0014 	sw	ra,20(sp)
     c88:	afa5001c 	sw	a1,28(sp)
     c8c:	908202af 	lbu	v0,687(a0)
     c90:	18400003 	blez	v0,ca0 <func_80A315F0+0x20>
     c94:	244effff 	addiu	t6,v0,-1
     c98:	10000007 	b	cb8 <func_80A315F0+0x38>
     c9c:	a08e02af 	sb	t6,687(a0)
     ca0:	0c000000 	jal	0 <EnGe1_Init>
     ca4:	afa40018 	sw	a0,24(sp)
     ca8:	8fa40018 	lw	a0,24(sp)
     cac:	3c0f0000 	lui	t7,0x0
     cb0:	25ef0000 	addiu	t7,t7,0
     cb4:	ac8f02b4 	sw	t7,692(a0)
     cb8:	949802ac 	lhu	t8,684(a0)
     cbc:	37190008 	ori	t9,t8,0x8
     cc0:	a49902ac 	sh	t9,684(a0)
     cc4:	8fbf0014 	lw	ra,20(sp)
     cc8:	27bd0018 	addiu	sp,sp,24
     ccc:	03e00008 	jr	ra
     cd0:	00000000 	nop

00000cd4 <func_80A31644>:
     cd4:	27bdffe8 	addiu	sp,sp,-24
     cd8:	afbf0014 	sw	ra,20(sp)
     cdc:	afa5001c 	sw	a1,28(sp)
     ce0:	948e02ac 	lhu	t6,684(a0)
     ce4:	00803025 	move	a2,a0
     ce8:	3c180000 	lui	t8,0x0
     cec:	31cf0004 	andi	t7,t6,0x4
     cf0:	11e00010 	beqz	t7,d34 <func_80A31644+0x60>
     cf4:	3c014170 	lui	at,0x4170
     cf8:	27180000 	addiu	t8,t8,0
     cfc:	ac9802b4 	sw	t8,692(a0)
     d00:	84c5001c 	lh	a1,28(a2)
     d04:	afa60018 	sw	a2,24(sp)
     d08:	8fa4001c 	lw	a0,28(sp)
     d0c:	00052a03 	sra	a1,a1,0x8
     d10:	0c000000 	jal	0 <EnGe1_Init>
     d14:	30a5003f 	andi	a1,a1,0x3f
     d18:	8fa60018 	lw	a2,24(sp)
     d1c:	24190032 	li	t9,50
     d20:	a0d902af 	sb	t9,687(a2)
     d24:	0c000000 	jal	0 <EnGe1_Init>
     d28:	8fa4001c 	lw	a0,28(sp)
     d2c:	10000012 	b	d78 <func_80A31644+0xa4>
     d30:	8fbf0014 	lw	ra,20(sp)
     d34:	c4c001b0 	lwc1	$f0,432(a2)
     d38:	44812000 	mtc1	at,$f4
     d3c:	3c014198 	lui	at,0x4198
     d40:	00c02025 	move	a0,a2
     d44:	46002032 	c.eq.s	$f4,$f0
     d48:	00000000 	nop
     d4c:	45010007 	bc1t	d6c <func_80A31644+0x98>
     d50:	00000000 	nop
     d54:	44813000 	mtc1	at,$f6
     d58:	00000000 	nop
     d5c:	46003032 	c.eq.s	$f6,$f0
     d60:	00000000 	nop
     d64:	45020004 	bc1fl	d78 <func_80A31644+0xa4>
     d68:	8fbf0014 	lw	ra,20(sp)
     d6c:	0c000000 	jal	0 <EnGe1_Init>
     d70:	2405184d 	li	a1,6221
     d74:	8fbf0014 	lw	ra,20(sp)
     d78:	27bd0018 	addiu	sp,sp,24
     d7c:	03e00008 	jr	ra
     d80:	00000000 	nop

00000d84 <func_80A316F4>:
     d84:	27bdffd0 	addiu	sp,sp,-48
     d88:	afbf002c 	sw	ra,44(sp)
     d8c:	afb00028 	sw	s0,40(sp)
     d90:	afa50034 	sw	a1,52(sp)
     d94:	948e02ac 	lhu	t6,684(a0)
     d98:	00808025 	move	s0,a0
     d9c:	35cf0001 	ori	t7,t6,0x1
     da0:	a48f02ac 	sh	t7,684(a0)
     da4:	8fa40034 	lw	a0,52(sp)
     da8:	0c000000 	jal	0 <EnGe1_Init>
     dac:	248420d8 	addiu	a0,a0,8408
     db0:	24010005 	li	at,5
     db4:	54410022 	bnel	v0,at,e40 <func_80A316F4+0xbc>
     db8:	8fbf002c 	lw	ra,44(sp)
     dbc:	0c000000 	jal	0 <EnGe1_Init>
     dc0:	8fa40034 	lw	a0,52(sp)
     dc4:	1040001d 	beqz	v0,e3c <func_80A316F4+0xb8>
     dc8:	3c180000 	lui	t8,0x0
     dcc:	27180000 	addiu	t8,t8,0
     dd0:	3c040601 	lui	a0,0x601
     dd4:	ae1802b4 	sw	t8,692(s0)
     dd8:	0c000000 	jal	0 <EnGe1_Init>
     ddc:	2484a048 	addiu	a0,a0,-24504
     de0:	44822000 	mtc1	v0,$f4
     de4:	3c01c040 	lui	at,0xc040
     de8:	44814000 	mtc1	at,$f8
     dec:	468021a0 	cvt.s.w	$f6,$f4
     df0:	3c050601 	lui	a1,0x601
     df4:	24190002 	li	t9,2
     df8:	afb90014 	sw	t9,20(sp)
     dfc:	24a5a048 	addiu	a1,a1,-24504
     e00:	26040198 	addiu	a0,s0,408
     e04:	e7a60010 	swc1	$f6,16(sp)
     e08:	3c063f80 	lui	a2,0x3f80
     e0c:	24070000 	li	a3,0
     e10:	0c000000 	jal	0 <EnGe1_Init>
     e14:	e7a80018 	swc1	$f8,24(sp)
     e18:	960a02ac 	lhu	t2,684(s0)
     e1c:	3c080601 	lui	t0,0x601
     e20:	3c090000 	lui	t1,0x0
     e24:	2508a048 	addiu	t0,t0,-24504
     e28:	25290000 	addiu	t1,t1,0
     e2c:	314bfffb 	andi	t3,t2,0xfffb
     e30:	ae0802b0 	sw	t0,688(s0)
     e34:	ae0902b8 	sw	t1,696(s0)
     e38:	a60b02ac 	sh	t3,684(s0)
     e3c:	8fbf002c 	lw	ra,44(sp)
     e40:	8fb00028 	lw	s0,40(sp)
     e44:	27bd0030 	addiu	sp,sp,48
     e48:	03e00008 	jr	ra
     e4c:	00000000 	nop

00000e50 <func_80A317C0>:
     e50:	27bdffe0 	addiu	sp,sp,-32
     e54:	afa40020 	sw	a0,32(sp)
     e58:	8fae0020 	lw	t6,32(sp)
     e5c:	afbf001c 	sw	ra,28(sp)
     e60:	afa50024 	sw	a1,36(sp)
     e64:	00a02025 	move	a0,a1
     e68:	85c5001c 	lh	a1,28(t6)
     e6c:	00052a03 	sra	a1,a1,0x8
     e70:	0c000000 	jal	0 <EnGe1_Init>
     e74:	30a5003f 	andi	a1,a1,0x3f
     e78:	8fa40020 	lw	a0,32(sp)
     e7c:	10400009 	beqz	v0,ea4 <func_80A317C0+0x54>
     e80:	8fa50024 	lw	a1,36(sp)
     e84:	3c0f0000 	lui	t7,0x0
     e88:	25ef0000 	addiu	t7,t7,0
     e8c:	afaf0010 	sw	t7,16(sp)
     e90:	24066018 	li	a2,24600
     e94:	0c000000 	jal	0 <EnGe1_Init>
     e98:	3c0742c8 	lui	a3,0x42c8
     e9c:	10000008 	b	ec0 <func_80A317C0+0x70>
     ea0:	8fbf001c 	lw	ra,28(sp)
     ea4:	3c180000 	lui	t8,0x0
     ea8:	27180000 	addiu	t8,t8,0
     eac:	afb80010 	sw	t8,16(sp)
     eb0:	24066017 	li	a2,24599
     eb4:	0c000000 	jal	0 <EnGe1_Init>
     eb8:	3c0742c8 	lui	a3,0x42c8
     ebc:	8fbf001c 	lw	ra,28(sp)
     ec0:	27bd0020 	addiu	sp,sp,32
     ec4:	03e00008 	jr	ra
     ec8:	00000000 	nop

00000ecc <func_80A3183C>:
     ecc:	27bdffe8 	addiu	sp,sp,-24
     ed0:	afbf0014 	sw	ra,20(sp)
     ed4:	948e02ac 	lhu	t6,684(a0)
     ed8:	35cf0001 	ori	t7,t6,0x1
     edc:	a48f02ac 	sh	t7,684(a0)
     ee0:	0c000000 	jal	0 <EnGe1_Init>
     ee4:	afa40018 	sw	a0,24(sp)
     ee8:	10400005 	beqz	v0,f00 <func_80A3183C+0x34>
     eec:	8fa40018 	lw	a0,24(sp)
     ef0:	3c180000 	lui	t8,0x0
     ef4:	27180000 	addiu	t8,t8,0
     ef8:	0c000000 	jal	0 <EnGe1_Init>
     efc:	ac9802b4 	sw	t8,692(a0)
     f00:	8fbf0014 	lw	ra,20(sp)
     f04:	27bd0018 	addiu	sp,sp,24
     f08:	03e00008 	jr	ra
     f0c:	00000000 	nop

00000f10 <func_80A31880>:
     f10:	27bdffd8 	addiu	sp,sp,-40
     f14:	afa40028 	sw	a0,40(sp)
     f18:	afbf0024 	sw	ra,36(sp)
     f1c:	afa5002c 	sw	a1,44(sp)
     f20:	00a02025 	move	a0,a1
     f24:	0c000000 	jal	0 <EnGe1_Init>
     f28:	24050022 	li	a1,34
     f2c:	14400002 	bnez	v0,f38 <func_80A31880+0x28>
     f30:	3046ffff 	andi	a2,v0,0xffff
     f34:	24066069 	li	a2,24681
     f38:	3c0e0000 	lui	t6,0x0
     f3c:	25ce0000 	addiu	t6,t6,0
     f40:	afae0010 	sw	t6,16(sp)
     f44:	8fa40028 	lw	a0,40(sp)
     f48:	8fa5002c 	lw	a1,44(sp)
     f4c:	0c000000 	jal	0 <EnGe1_Init>
     f50:	3c0742c8 	lui	a3,0x42c8
     f54:	10400017 	beqz	v0,fb4 <func_80A31880+0xa4>
     f58:	3c040601 	lui	a0,0x601
     f5c:	8fa20028 	lw	v0,40(sp)
     f60:	3c0f0000 	lui	t7,0x0
     f64:	2484a498 	addiu	a0,a0,-23400
     f68:	25ef0000 	addiu	t7,t7,0
     f6c:	ac4f02b8 	sw	t7,696(v0)
     f70:	0c000000 	jal	0 <EnGe1_Init>
     f74:	ac4402b0 	sw	a0,688(v0)
     f78:	44822000 	mtc1	v0,$f4
     f7c:	3c01c100 	lui	at,0xc100
     f80:	44814000 	mtc1	at,$f8
     f84:	468021a0 	cvt.s.w	$f6,$f4
     f88:	8fa40028 	lw	a0,40(sp)
     f8c:	3c050601 	lui	a1,0x601
     f90:	24180002 	li	t8,2
     f94:	afb80014 	sw	t8,20(sp)
     f98:	24a5a498 	addiu	a1,a1,-23400
     f9c:	e7a60010 	swc1	$f6,16(sp)
     fa0:	3c063f80 	lui	a2,0x3f80
     fa4:	24070000 	li	a3,0
     fa8:	e7a80018 	swc1	$f8,24(sp)
     fac:	0c000000 	jal	0 <EnGe1_Init>
     fb0:	24840198 	addiu	a0,a0,408
     fb4:	8fbf0024 	lw	ra,36(sp)
     fb8:	27bd0028 	addiu	sp,sp,40
     fbc:	03e00008 	jr	ra
     fc0:	00000000 	nop

00000fc4 <func_80A31934>:
     fc4:	27bdffe8 	addiu	sp,sp,-24
     fc8:	afbf0014 	sw	ra,20(sp)
     fcc:	0c000000 	jal	0 <EnGe1_Init>
     fd0:	afa40018 	sw	a0,24(sp)
     fd4:	10400005 	beqz	v0,fec <func_80A31934+0x28>
     fd8:	8fa40018 	lw	a0,24(sp)
     fdc:	3c0e0000 	lui	t6,0x0
     fe0:	25ce0000 	addiu	t6,t6,0
     fe4:	0c000000 	jal	0 <EnGe1_Init>
     fe8:	ac8e02b4 	sw	t6,692(a0)
     fec:	8fbf0014 	lw	ra,20(sp)
     ff0:	27bd0018 	addiu	sp,sp,24
     ff4:	03e00008 	jr	ra
     ff8:	00000000 	nop

00000ffc <func_80A3196C>:
     ffc:	27bdffd8 	addiu	sp,sp,-40
    1000:	afbf001c 	sw	ra,28(sp)
    1004:	afa5002c 	sw	a1,44(sp)
    1008:	0c000000 	jal	0 <EnGe1_Init>
    100c:	afa40028 	sw	a0,40(sp)
    1010:	10400013 	beqz	v0,1060 <func_80A3196C+0x64>
    1014:	8fa40028 	lw	a0,40(sp)
    1018:	948f02ac 	lhu	t7,684(a0)
    101c:	3c0e0000 	lui	t6,0x0
    1020:	25ce0000 	addiu	t6,t6,0
    1024:	31f80002 	andi	t8,t7,0x2
    1028:	13000007 	beqz	t8,1048 <func_80A3196C+0x4c>
    102c:	ac8e02b4 	sw	t6,692(a0)
    1030:	3c030000 	lui	v1,0x0
    1034:	24630000 	addiu	v1,v1,0
    1038:	94790ef0 	lhu	t9,3824(v1)
    103c:	37288000 	ori	t0,t9,0x8000
    1040:	10000026 	b	10dc <func_80A3196C+0xe0>
    1044:	a4680ef0 	sh	t0,3824(v1)
    1048:	3c030000 	lui	v1,0x0
    104c:	24630000 	addiu	v1,v1,0
    1050:	94690f2a 	lhu	t1,3882(v1)
    1054:	352a0001 	ori	t2,t1,0x1
    1058:	10000020 	b	10dc <func_80A3196C+0xe0>
    105c:	a46a0f2a 	sh	t2,3882(v1)
    1060:	948b02ac 	lhu	t3,684(a0)
    1064:	2406003e 	li	a2,62
    1068:	8fa5002c 	lw	a1,44(sp)
    106c:	316c0002 	andi	t4,t3,0x2
    1070:	11800015 	beqz	t4,10c8 <func_80A3196C+0xcc>
    1074:	3c07461c 	lui	a3,0x461c
    1078:	3c030000 	lui	v1,0x0
    107c:	24630000 	addiu	v1,v1,0
    1080:	3c0e0000 	lui	t6,0x0
    1084:	8dce0000 	lw	t6,0(t6)
    1088:	8c6d00a0 	lw	t5,160(v1)
    108c:	3c180000 	lui	t8,0x0
    1090:	93180000 	lbu	t8,0(t8)
    1094:	01ae7824 	and	t7,t5,t6
    1098:	24010001 	li	at,1
    109c:	030f1007 	srav	v0,t7,t8
    10a0:	10410005 	beq	v0,at,10b8 <func_80A3196C+0xbc>
    10a4:	24010002 	li	at,2
    10a8:	10410005 	beq	v0,at,10c0 <func_80A3196C+0xc4>
    10ac:	00000000 	nop
    10b0:	10000005 	b	10c8 <func_80A3196C+0xcc>
    10b4:	8fa60024 	lw	a2,36(sp)
    10b8:	10000003 	b	10c8 <func_80A3196C+0xcc>
    10bc:	24060030 	li	a2,48
    10c0:	10000001 	b	10c8 <func_80A3196C+0xcc>
    10c4:	24060031 	li	a2,49
    10c8:	3c014248 	lui	at,0x4248
    10cc:	44812000 	mtc1	at,$f4
    10d0:	34e74000 	ori	a3,a3,0x4000
    10d4:	0c000000 	jal	0 <EnGe1_Init>
    10d8:	e7a40010 	swc1	$f4,16(sp)
    10dc:	8fbf001c 	lw	ra,28(sp)
    10e0:	27bd0028 	addiu	sp,sp,40
    10e4:	03e00008 	jr	ra
    10e8:	00000000 	nop

000010ec <func_80A31A5C>:
    10ec:	27bdffd8 	addiu	sp,sp,-40
    10f0:	afbf001c 	sw	ra,28(sp)
    10f4:	afa5002c 	sw	a1,44(sp)
    10f8:	0c000000 	jal	0 <EnGe1_Init>
    10fc:	afa40028 	sw	a0,40(sp)
    1100:	10400009 	beqz	v0,1128 <func_80A31A5C+0x3c>
    1104:	8fa40028 	lw	a0,40(sp)
    1108:	8c8e0004 	lw	t6,4(a0)
    110c:	3c01fffe 	lui	at,0xfffe
    1110:	3421ffff 	ori	at,at,0xffff
    1114:	3c180000 	lui	t8,0x0
    1118:	27180000 	addiu	t8,t8,0
    111c:	01c17824 	and	t7,t6,at
    1120:	ac8f0004 	sw	t7,4(a0)
    1124:	ac9802b4 	sw	t8,692(a0)
    1128:	949902ac 	lhu	t9,684(a0)
    112c:	2406003e 	li	a2,62
    1130:	8fa5002c 	lw	a1,44(sp)
    1134:	33280002 	andi	t0,t9,0x2
    1138:	11000014 	beqz	t0,118c <func_80A31A5C+0xa0>
    113c:	3c07461c 	lui	a3,0x461c
    1140:	3c090000 	lui	t1,0x0
    1144:	3c0a0000 	lui	t2,0x0
    1148:	8d4a0000 	lw	t2,0(t2)
    114c:	8d2900a0 	lw	t1,160(t1)
    1150:	3c0c0000 	lui	t4,0x0
    1154:	918c0000 	lbu	t4,0(t4)
    1158:	012a5824 	and	t3,t1,t2
    115c:	24010001 	li	at,1
    1160:	018b1007 	srav	v0,t3,t4
    1164:	10410005 	beq	v0,at,117c <func_80A31A5C+0x90>
    1168:	24010002 	li	at,2
    116c:	10410005 	beq	v0,at,1184 <func_80A31A5C+0x98>
    1170:	00000000 	nop
    1174:	10000005 	b	118c <func_80A31A5C+0xa0>
    1178:	8fa60024 	lw	a2,36(sp)
    117c:	10000003 	b	118c <func_80A31A5C+0xa0>
    1180:	24060030 	li	a2,48
    1184:	10000001 	b	118c <func_80A31A5C+0xa0>
    1188:	24060031 	li	a2,49
    118c:	3c014248 	lui	at,0x4248
    1190:	44812000 	mtc1	at,$f4
    1194:	34e74000 	ori	a3,a3,0x4000
    1198:	0c000000 	jal	0 <EnGe1_Init>
    119c:	e7a40010 	swc1	$f4,16(sp)
    11a0:	8fbf001c 	lw	ra,28(sp)
    11a4:	27bd0028 	addiu	sp,sp,40
    11a8:	03e00008 	jr	ra
    11ac:	00000000 	nop

000011b0 <func_80A31B20>:
    11b0:	27bdffe8 	addiu	sp,sp,-24
    11b4:	afbf0014 	sw	ra,20(sp)
    11b8:	afa5001c 	sw	a1,28(sp)
    11bc:	0c000000 	jal	0 <EnGe1_Init>
    11c0:	afa40018 	sw	a0,24(sp)
    11c4:	1040000a 	beqz	v0,11f0 <func_80A31B20+0x40>
    11c8:	8fa40018 	lw	a0,24(sp)
    11cc:	8c8f0004 	lw	t7,4(a0)
    11d0:	3c01fffe 	lui	at,0xfffe
    11d4:	3c0e0000 	lui	t6,0x0
    11d8:	3421ffff 	ori	at,at,0xffff
    11dc:	25ce0000 	addiu	t6,t6,0
    11e0:	01e1c024 	and	t8,t7,at
    11e4:	ac8e02b4 	sw	t6,692(a0)
    11e8:	10000004 	b	11fc <func_80A31B20+0x4c>
    11ec:	ac980004 	sw	t8,4(a0)
    11f0:	8fa5001c 	lw	a1,28(sp)
    11f4:	0c000000 	jal	0 <EnGe1_Init>
    11f8:	3c064348 	lui	a2,0x4348
    11fc:	8fbf0014 	lw	ra,20(sp)
    1200:	27bd0018 	addiu	sp,sp,24
    1204:	03e00008 	jr	ra
    1208:	00000000 	nop

0000120c <func_80A31B7C>:
    120c:	27bdffe8 	addiu	sp,sp,-24
    1210:	afbf0014 	sw	ra,20(sp)
    1214:	afa40018 	sw	a0,24(sp)
    1218:	afa5001c 	sw	a1,28(sp)
    121c:	0c000000 	jal	0 <EnGe1_Init>
    1220:	24a420d8 	addiu	a0,a1,8408
    1224:	24010005 	li	at,5
    1228:	5441000d 	bnel	v0,at,1260 <func_80A31B7C+0x54>
    122c:	8fbf0014 	lw	ra,20(sp)
    1230:	0c000000 	jal	0 <EnGe1_Init>
    1234:	8fa4001c 	lw	a0,28(sp)
    1238:	50400009 	beqzl	v0,1260 <func_80A31B7C+0x54>
    123c:	8fbf0014 	lw	ra,20(sp)
    1240:	0c000000 	jal	0 <EnGe1_Init>
    1244:	8fa4001c 	lw	a0,28(sp)
    1248:	8fa40018 	lw	a0,24(sp)
    124c:	3c0e0000 	lui	t6,0x0
    1250:	25ce0000 	addiu	t6,t6,0
    1254:	0c000000 	jal	0 <EnGe1_Init>
    1258:	ac8e02b4 	sw	t6,692(a0)
    125c:	8fbf0014 	lw	ra,20(sp)
    1260:	27bd0018 	addiu	sp,sp,24
    1264:	03e00008 	jr	ra
    1268:	00000000 	nop

0000126c <func_80A31BDC>:
    126c:	afa40000 	sw	a0,0(sp)
    1270:	03e00008 	jr	ra
    1274:	afa50004 	sw	a1,4(sp)

00001278 <func_80A31BE8>:
    1278:	27bdffd0 	addiu	sp,sp,-48
    127c:	afbf0024 	sw	ra,36(sp)
    1280:	afb10020 	sw	s1,32(sp)
    1284:	afb0001c 	sw	s0,28(sp)
    1288:	8cae1c44 	lw	t6,7236(a1)
    128c:	00808825 	move	s1,a0
    1290:	00a08025 	move	s0,a1
    1294:	24a420d8 	addiu	a0,a1,8408
    1298:	0c000000 	jal	0 <EnGe1_Init>
    129c:	afae002c 	sw	t6,44(sp)
    12a0:	24010004 	li	at,4
    12a4:	54410058 	bnel	v0,at,1408 <func_80A31BE8+0x190>
    12a8:	8fbf0024 	lw	ra,36(sp)
    12ac:	0c000000 	jal	0 <EnGe1_Init>
    12b0:	02002025 	move	a0,s0
    12b4:	10400053 	beqz	v0,1404 <func_80A31BE8+0x18c>
    12b8:	3c01fffe 	lui	at,0xfffe
    12bc:	8e2f0004 	lw	t7,4(s1)
    12c0:	3421ffff 	ori	at,at,0xffff
    12c4:	3c020001 	lui	v0,0x1
    12c8:	01e1c024 	and	t8,t7,at
    12cc:	ae380004 	sw	t8,4(s1)
    12d0:	00501021 	addu	v0,v0,s0
    12d4:	904204bd 	lbu	v0,1213(v0)
    12d8:	24010001 	li	at,1
    12dc:	10400005 	beqz	v0,12f4 <func_80A31BE8+0x7c>
    12e0:	00000000 	nop
    12e4:	10410043 	beq	v0,at,13f4 <func_80A31BE8+0x17c>
    12e8:	3c0b0000 	lui	t3,0x0
    12ec:	10000046 	b	1408 <func_80A31BE8+0x190>
    12f0:	8fbf0024 	lw	ra,36(sp)
    12f4:	3c020000 	lui	v0,0x0
    12f8:	24420000 	addiu	v0,v0,0
    12fc:	84590034 	lh	t9,52(v0)
    1300:	02002025 	move	a0,s0
    1304:	2b210014 	slti	at,t9,20
    1308:	10200007 	beqz	at,1328 <func_80A31BE8+0xb0>
    130c:	00000000 	nop
    1310:	0c000000 	jal	0 <EnGe1_Init>
    1314:	24050085 	li	a1,133
    1318:	3c080000 	lui	t0,0x0
    131c:	25080000 	addiu	t0,t0,0
    1320:	10000038 	b	1404 <func_80A31BE8+0x18c>
    1324:	ae2802b4 	sw	t0,692(s1)
    1328:	0c000000 	jal	0 <EnGe1_Init>
    132c:	2404ffec 	li	a0,-20
    1330:	3c010001 	lui	at,0x1
    1334:	8fa5002c 	lw	a1,44(sp)
    1338:	00300821 	addu	at,at,s0
    133c:	24090129 	li	t1,297
    1340:	3c020000 	lui	v0,0x0
    1344:	a4291e1a 	sh	t1,7706(at)
    1348:	24420000 	addiu	v0,v0,0
    134c:	340afff0 	li	t2,0xfff0
    1350:	3c010001 	lui	at,0x1
    1354:	a44a1412 	sh	t2,5138(v0)
    1358:	00300821 	addu	at,at,s0
    135c:	240b0026 	li	t3,38
    1360:	a02b1e5e 	sb	t3,7774(at)
    1364:	3c010001 	lui	at,0x1
    1368:	00300821 	addu	at,at,s0
    136c:	240c0014 	li	t4,20
    1370:	a02c1e15 	sb	t4,7701(at)
    1374:	944d13fa 	lhu	t5,5114(v0)
    1378:	944f0ee0 	lhu	t7,3808(v0)
    137c:	3c014496 	lui	at,0x4496
    1380:	35ae0100 	ori	t6,t5,0x100
    1384:	35f80100 	ori	t8,t7,0x100
    1388:	a44e13fa 	sh	t6,5114(v0)
    138c:	a4580ee0 	sh	t8,3808(v0)
    1390:	8cb9067c 	lw	t9,1660(a1)
    1394:	02002025 	move	a0,s0
    1398:	24060014 	li	a2,20
    139c:	00194200 	sll	t0,t9,0x8
    13a0:	05020008 	bltzl	t0,13c4 <func_80A31BE8+0x14c>
    13a4:	44812000 	mtc1	at,$f4
    13a8:	02002025 	move	a0,s0
    13ac:	02202825 	move	a1,s1
    13b0:	0c000000 	jal	0 <EnGe1_Init>
    13b4:	24060001 	li	a2,1
    13b8:	1000000a 	b	13e4 <func_80A31BE8+0x16c>
    13bc:	00000000 	nop
    13c0:	44812000 	mtc1	at,$f4
    13c4:	24070001 	li	a3,1
    13c8:	0c000000 	jal	0 <EnGe1_Init>
    13cc:	e7a40010 	swc1	$f4,16(sp)
    13d0:	8fa9002c 	lw	t1,44(sp)
    13d4:	240304b0 	li	v1,1200
    13d8:	10400002 	beqz	v0,13e4 <func_80A31BE8+0x16c>
    13dc:	a5230110 	sh	v1,272(t1)
    13e0:	a4430110 	sh	v1,272(v0)
    13e4:	3c0a0000 	lui	t2,0x0
    13e8:	254a0000 	addiu	t2,t2,0
    13ec:	10000005 	b	1404 <func_80A31BE8+0x18c>
    13f0:	ae2a02b4 	sw	t2,692(s1)
    13f4:	256b0000 	addiu	t3,t3,0
    13f8:	ae2b02b4 	sw	t3,692(s1)
    13fc:	0c000000 	jal	0 <EnGe1_Init>
    1400:	02002025 	move	a0,s0
    1404:	8fbf0024 	lw	ra,36(sp)
    1408:	8fb0001c 	lw	s0,28(sp)
    140c:	8fb10020 	lw	s1,32(sp)
    1410:	03e00008 	jr	ra
    1414:	27bd0030 	addiu	sp,sp,48

00001418 <func_80A31D88>:
    1418:	27bdffe8 	addiu	sp,sp,-24
    141c:	afbf0014 	sw	ra,20(sp)
    1420:	afa40018 	sw	a0,24(sp)
    1424:	afa5001c 	sw	a1,28(sp)
    1428:	0c000000 	jal	0 <EnGe1_Init>
    142c:	24a420d8 	addiu	a0,a1,8408
    1430:	24010005 	li	at,5
    1434:	5441000c 	bnel	v0,at,1468 <func_80A31D88+0x50>
    1438:	8fbf0014 	lw	ra,20(sp)
    143c:	0c000000 	jal	0 <EnGe1_Init>
    1440:	8fa4001c 	lw	a0,28(sp)
    1444:	10400007 	beqz	v0,1464 <func_80A31D88+0x4c>
    1448:	8fa4001c 	lw	a0,28(sp)
    144c:	0c000000 	jal	0 <EnGe1_Init>
    1450:	24056041 	li	a1,24641
    1454:	8faf0018 	lw	t7,24(sp)
    1458:	3c0e0000 	lui	t6,0x0
    145c:	25ce0000 	addiu	t6,t6,0
    1460:	adee02b4 	sw	t6,692(t7)
    1464:	8fbf0014 	lw	ra,20(sp)
    1468:	27bd0018 	addiu	sp,sp,24
    146c:	03e00008 	jr	ra
    1470:	00000000 	nop

00001474 <func_80A31DE4>:
    1474:	27bdffe8 	addiu	sp,sp,-24
    1478:	afbf0014 	sw	ra,20(sp)
    147c:	afa5001c 	sw	a1,28(sp)
    1480:	0c000000 	jal	0 <EnGe1_Init>
    1484:	afa40018 	sw	a0,24(sp)
    1488:	10400005 	beqz	v0,14a0 <func_80A31DE4+0x2c>
    148c:	8fa40018 	lw	a0,24(sp)
    1490:	3c0e0000 	lui	t6,0x0
    1494:	25ce0000 	addiu	t6,t6,0
    1498:	10000004 	b	14ac <func_80A31DE4+0x38>
    149c:	ac8e02b4 	sw	t6,692(a0)
    14a0:	8fa5001c 	lw	a1,28(sp)
    14a4:	0c000000 	jal	0 <EnGe1_Init>
    14a8:	3c064396 	lui	a2,0x4396
    14ac:	8fbf0014 	lw	ra,20(sp)
    14b0:	27bd0018 	addiu	sp,sp,24
    14b4:	03e00008 	jr	ra
    14b8:	00000000 	nop

000014bc <func_80A31E2C>:
    14bc:	27bdffe0 	addiu	sp,sp,-32
    14c0:	afb00018 	sw	s0,24(sp)
    14c4:	3c100000 	lui	s0,0x0
    14c8:	26100000 	addiu	s0,s0,0
    14cc:	960e13fa 	lhu	t6,5114(s0)
    14d0:	00803025 	move	a2,a0
    14d4:	afbf001c 	sw	ra,28(sp)
    14d8:	afa50024 	sw	a1,36(sp)
    14dc:	3c040000 	lui	a0,0x0
    14e0:	31cffeff 	andi	t7,t6,0xfeff
    14e4:	a60f13fa 	sh	t7,5114(s0)
    14e8:	24840000 	addiu	a0,a0,0
    14ec:	24050456 	li	a1,1110
    14f0:	0c000000 	jal	0 <EnGe1_Init>
    14f4:	afa60020 	sw	a2,32(sp)
    14f8:	3c040000 	lui	a0,0x0
    14fc:	24840000 	addiu	a0,a0,0
    1500:	0c000000 	jal	0 <EnGe1_Init>
    1504:	96051406 	lhu	a1,5126(s0)
    1508:	8fa60020 	lw	a2,32(sp)
    150c:	3c040000 	lui	a0,0x0
    1510:	24840000 	addiu	a0,a0,0
    1514:	24050457 	li	a1,1111
    1518:	0c000000 	jal	0 <EnGe1_Init>
    151c:	afa60020 	sw	a2,32(sp)
    1520:	3c040000 	lui	a0,0x0
    1524:	24840000 	addiu	a0,a0,0
    1528:	0c000000 	jal	0 <EnGe1_Init>
    152c:	8e050eb8 	lw	a1,3768(s0)
    1530:	8fa60020 	lw	a2,32(sp)
    1534:	3c010001 	lui	at,0x1
    1538:	3c0a0000 	lui	t2,0x0
    153c:	8cd80004 	lw	t8,4(a2)
    1540:	24096045 	li	t1,24645
    1544:	254a0000 	addiu	t2,t2,0
    1548:	0301c825 	or	t9,t8,at
    154c:	acd90004 	sw	t9,4(a2)
    1550:	8e080eb8 	lw	t0,3768(s0)
    1554:	96021406 	lhu	v0,5126(s0)
    1558:	0102082a 	slt	at,t0,v0
    155c:	50200004 	beqzl	at,1570 <func_80A31E2C+0xb4>
    1560:	284103e8 	slti	at,v0,1000
    1564:	ae020eb8 	sw	v0,3768(s0)
    1568:	96021406 	lhu	v0,5126(s0)
    156c:	284103e8 	slti	at,v0,1000
    1570:	50200005 	beqzl	at,1588 <func_80A31E2C+0xcc>
    1574:	960b0f2a 	lhu	t3,3882(s0)
    1578:	a4c9010e 	sh	t1,270(a2)
    157c:	10000026 	b	1618 <func_80A31E2C+0x15c>
    1580:	acca02b4 	sw	t2,692(a2)
    1584:	960b0f2a 	lhu	t3,3882(s0)
    1588:	240d6046 	li	t5,24646
    158c:	3c0e0000 	lui	t6,0x0
    1590:	316c0001 	andi	t4,t3,0x1
    1594:	15800008 	bnez	t4,15b8 <func_80A31E2C+0xfc>
    1598:	284105dc 	slti	at,v0,1500
    159c:	94cf02ac 	lhu	t7,684(a2)
    15a0:	25ce0000 	addiu	t6,t6,0
    15a4:	a4cd010e 	sh	t5,270(a2)
    15a8:	31f8fffd 	andi	t8,t7,0xfffd
    15ac:	acce02b4 	sw	t6,692(a2)
    15b0:	10000019 	b	1618 <func_80A31E2C+0x15c>
    15b4:	a4d802ac 	sh	t8,684(a2)
    15b8:	10200006 	beqz	at,15d4 <func_80A31E2C+0x118>
    15bc:	24196047 	li	t9,24647
    15c0:	3c080000 	lui	t0,0x0
    15c4:	25080000 	addiu	t0,t0,0
    15c8:	a4d9010e 	sh	t9,270(a2)
    15cc:	10000012 	b	1618 <func_80A31E2C+0x15c>
    15d0:	acc802b4 	sw	t0,692(a2)
    15d4:	96090ef0 	lhu	t1,3824(s0)
    15d8:	3c0e0000 	lui	t6,0x0
    15dc:	240d6044 	li	t5,24644
    15e0:	312a8000 	andi	t2,t1,0x8000
    15e4:	11400007 	beqz	t2,1604 <func_80A31E2C+0x148>
    15e8:	25ce0000 	addiu	t6,t6,0
    15ec:	3c0c0000 	lui	t4,0x0
    15f0:	240b6047 	li	t3,24647
    15f4:	258c0000 	addiu	t4,t4,0
    15f8:	a4cb010e 	sh	t3,270(a2)
    15fc:	10000006 	b	1618 <func_80A31E2C+0x15c>
    1600:	accc02b4 	sw	t4,692(a2)
    1604:	94cf02ac 	lhu	t7,684(a2)
    1608:	a4cd010e 	sh	t5,270(a2)
    160c:	acce02b4 	sw	t6,692(a2)
    1610:	35f80002 	ori	t8,t7,0x2
    1614:	a4d802ac 	sh	t8,684(a2)
    1618:	8fbf001c 	lw	ra,28(sp)
    161c:	8fb00018 	lw	s0,24(sp)
    1620:	27bd0020 	addiu	sp,sp,32
    1624:	03e00008 	jr	ra
    1628:	00000000 	nop

0000162c <func_80A31F9C>:
    162c:	27bdffe8 	addiu	sp,sp,-24
    1630:	afbf0014 	sw	ra,20(sp)
    1634:	948e02ac 	lhu	t6,684(a0)
    1638:	35cf0001 	ori	t7,t6,0x1
    163c:	a48f02ac 	sh	t7,684(a0)
    1640:	0c000000 	jal	0 <EnGe1_Init>
    1644:	afa40018 	sw	a0,24(sp)
    1648:	10400005 	beqz	v0,1660 <func_80A31F9C+0x34>
    164c:	8fa40018 	lw	a0,24(sp)
    1650:	3c180000 	lui	t8,0x0
    1654:	27180000 	addiu	t8,t8,0
    1658:	0c000000 	jal	0 <EnGe1_Init>
    165c:	ac9802b4 	sw	t8,692(a0)
    1660:	8fbf0014 	lw	ra,20(sp)
    1664:	27bd0018 	addiu	sp,sp,24
    1668:	03e00008 	jr	ra
    166c:	00000000 	nop

00001670 <func_80A31FE0>:
    1670:	27bdffe0 	addiu	sp,sp,-32
    1674:	afbf001c 	sw	ra,28(sp)
    1678:	8ca21c44 	lw	v0,7236(a1)
    167c:	3c0b0000 	lui	t3,0x0
    1680:	256b0000 	addiu	t3,t3,0
    1684:	8c4e067c 	lw	t6,1660(v0)
    1688:	3c020000 	lui	v0,0x0
    168c:	24420000 	addiu	v0,v0,0
    1690:	000e7a00 	sll	t7,t6,0x8
    1694:	05e00009 	bltz	t7,16bc <func_80A31FE0+0x4c>
    1698:	3c074348 	lui	a3,0x4348
    169c:	3c180000 	lui	t8,0x0
    16a0:	27180000 	addiu	t8,t8,0
    16a4:	afb80010 	sw	t8,16(sp)
    16a8:	2406603f 	li	a2,24639
    16ac:	0c000000 	jal	0 <EnGe1_Init>
    16b0:	3c0742c8 	lui	a3,0x42c8
    16b4:	10000011 	b	16fc <func_80A31FE0+0x8c>
    16b8:	8fbf001c 	lw	ra,28(sp)
    16bc:	94590ee0 	lhu	t9,3808(v0)
    16c0:	24066040 	li	a2,24640
    16c4:	33280100 	andi	t0,t9,0x100
    16c8:	11000009 	beqz	t0,16f0 <func_80A31FE0+0x80>
    16cc:	00000000 	nop
    16d0:	94490f2a 	lhu	t1,3882(v0)
    16d4:	312a0001 	andi	t2,t1,0x1
    16d8:	11400003 	beqz	t2,16e8 <func_80A31FE0+0x78>
    16dc:	00000000 	nop
    16e0:	10000003 	b	16f0 <func_80A31FE0+0x80>
    16e4:	24066042 	li	a2,24642
    16e8:	10000001 	b	16f0 <func_80A31FE0+0x80>
    16ec:	24066043 	li	a2,24643
    16f0:	0c000000 	jal	0 <EnGe1_Init>
    16f4:	afab0010 	sw	t3,16(sp)
    16f8:	8fbf001c 	lw	ra,28(sp)
    16fc:	27bd0020 	addiu	sp,sp,32
    1700:	03e00008 	jr	ra
    1704:	00000000 	nop

00001708 <func_80A32078>:
    1708:	27bdffc0 	addiu	sp,sp,-64
    170c:	afbf002c 	sw	ra,44(sp)
    1710:	afb00028 	sw	s0,40(sp)
    1714:	afa50044 	sw	a1,68(sp)
    1718:	848e008a 	lh	t6,138(a0)
    171c:	00808025 	move	s0,a0
    1720:	24060006 	li	a2,6
    1724:	afae0030 	sw	t6,48(sp)
    1728:	849800b6 	lh	t8,182(a0)
    172c:	260400b6 	addiu	a0,s0,182
    1730:	87a50032 	lh	a1,50(sp)
    1734:	01d81023 	subu	v0,t6,t8
    1738:	00021400 	sll	v0,v0,0x10
    173c:	00021403 	sra	v0,v0,0x10
    1740:	04400003 	bltz	v0,1750 <func_80A32078+0x48>
    1744:	00021823 	negu	v1,v0
    1748:	10000001 	b	1750 <func_80A32078+0x48>
    174c:	00401825 	move	v1,v0
    1750:	28614001 	slti	at,v1,16385
    1754:	10200013 	beqz	at,17a4 <func_80A32078+0x9c>
    1758:	24070fa0 	li	a3,4000
    175c:	24190064 	li	t9,100
    1760:	0c000000 	jal	0 <EnGe1_Init>
    1764:	afb90010 	sw	t9,16(sp)
    1768:	860800b6 	lh	t0,182(s0)
    176c:	8e0a0038 	lw	t2,56(s0)
    1770:	02002825 	move	a1,s0
    1774:	a6080032 	sh	t0,50(s0)
    1778:	afaa0010 	sw	t2,16(sp)
    177c:	8e09003c 	lw	t1,60(s0)
    1780:	8fa40044 	lw	a0,68(sp)
    1784:	2606029c 	addiu	a2,s0,668
    1788:	afa90014 	sw	t1,20(sp)
    178c:	8e0a0040 	lw	t2,64(s0)
    1790:	260702a2 	addiu	a3,s0,674
    1794:	0c000000 	jal	0 <EnGe1_Init>
    1798:	afaa0018 	sw	t2,24(sp)
    179c:	1000001c 	b	1810 <func_80A32078+0x108>
    17a0:	8fbf002c 	lw	ra,44(sp)
    17a4:	0441000a 	bgez	v0,17d0 <func_80A32078+0xc8>
    17a8:	2604029e 	addiu	a0,s0,670
    17ac:	240b0100 	li	t3,256
    17b0:	afab0010 	sw	t3,16(sp)
    17b4:	2604029e 	addiu	a0,s0,670
    17b8:	2405e000 	li	a1,-8192
    17bc:	24060006 	li	a2,6
    17c0:	0c000000 	jal	0 <EnGe1_Init>
    17c4:	24071838 	li	a3,6200
    17c8:	10000008 	b	17ec <func_80A32078+0xe4>
    17cc:	8605008a 	lh	a1,138(s0)
    17d0:	240c0100 	li	t4,256
    17d4:	afac0010 	sw	t4,16(sp)
    17d8:	24052000 	li	a1,8192
    17dc:	24060006 	li	a2,6
    17e0:	0c000000 	jal	0 <EnGe1_Init>
    17e4:	24071838 	li	a3,6200
    17e8:	8605008a 	lh	a1,138(s0)
    17ec:	240d0064 	li	t5,100
    17f0:	afad0010 	sw	t5,16(sp)
    17f4:	260400b6 	addiu	a0,s0,182
    17f8:	2406000c 	li	a2,12
    17fc:	0c000000 	jal	0 <EnGe1_Init>
    1800:	240703e8 	li	a3,1000
    1804:	860e00b6 	lh	t6,182(s0)
    1808:	a60e0032 	sh	t6,50(s0)
    180c:	8fbf002c 	lw	ra,44(sp)
    1810:	8fb00028 	lw	s0,40(sp)
    1814:	27bd0040 	addiu	sp,sp,64
    1818:	03e00008 	jr	ra
    181c:	00000000 	nop

00001820 <func_80A32190>:
    1820:	27bdffd0 	addiu	sp,sp,-48
    1824:	afbf002c 	sw	ra,44(sp)
    1828:	afb00028 	sw	s0,40(sp)
    182c:	afa50034 	sw	a1,52(sp)
    1830:	848f00b6 	lh	t7,182(a0)
    1834:	848e008a 	lh	t6,138(a0)
    1838:	00808025 	move	s0,a0
    183c:	2604029c 	addiu	a0,s0,668
    1840:	01cf1023 	subu	v0,t6,t7
    1844:	00021400 	sll	v0,v0,0x10
    1848:	00021403 	sra	v0,v0,0x10
    184c:	04400003 	bltz	v0,185c <func_80A32190+0x3c>
    1850:	00021823 	negu	v1,v0
    1854:	10000001 	b	185c <func_80A32190+0x3c>
    1858:	00401825 	move	v1,v0
    185c:	28614301 	slti	at,v1,17153
    1860:	10200015 	beqz	at,18b8 <func_80A32190+0x98>
    1864:	00002825 	move	a1,zero
    1868:	3c0142c8 	lui	at,0x42c8
    186c:	44813000 	mtc1	at,$f6
    1870:	c6040090 	lwc1	$f4,144(s0)
    1874:	4606203c 	c.lt.s	$f4,$f6
    1878:	00000000 	nop
    187c:	4502000f 	bc1fl	18bc <func_80A32190+0x9c>
    1880:	24080064 	li	t0,100
    1884:	8e190038 	lw	t9,56(s0)
    1888:	8fa40034 	lw	a0,52(sp)
    188c:	02002825 	move	a1,s0
    1890:	afb90010 	sw	t9,16(sp)
    1894:	8e18003c 	lw	t8,60(s0)
    1898:	2606029c 	addiu	a2,s0,668
    189c:	260702a2 	addiu	a3,s0,674
    18a0:	afb80014 	sw	t8,20(sp)
    18a4:	8e190040 	lw	t9,64(s0)
    18a8:	0c000000 	jal	0 <EnGe1_Init>
    18ac:	afb90018 	sw	t9,24(sp)
    18b0:	1000000e 	b	18ec <func_80A32190+0xcc>
    18b4:	8fbf002c 	lw	ra,44(sp)
    18b8:	24080064 	li	t0,100
    18bc:	afa80010 	sw	t0,16(sp)
    18c0:	24060006 	li	a2,6
    18c4:	0c000000 	jal	0 <EnGe1_Init>
    18c8:	24071838 	li	a3,6200
    18cc:	24090064 	li	t1,100
    18d0:	afa90010 	sw	t1,16(sp)
    18d4:	2604029e 	addiu	a0,s0,670
    18d8:	00002825 	move	a1,zero
    18dc:	24060006 	li	a2,6
    18e0:	0c000000 	jal	0 <EnGe1_Init>
    18e4:	24071838 	li	a3,6200
    18e8:	8fbf002c 	lw	ra,44(sp)
    18ec:	8fb00028 	lw	s0,40(sp)
    18f0:	27bd0030 	addiu	sp,sp,48
    18f4:	03e00008 	jr	ra
    18f8:	00000000 	nop

000018fc <EnGe1_Update>:
    18fc:	27bdffc0 	addiu	sp,sp,-64
    1900:	afb0001c 	sw	s0,28(sp)
    1904:	00808025 	move	s0,a0
    1908:	afb10020 	sw	s1,32(sp)
    190c:	00a08825 	move	s1,a1
    1910:	afbf0024 	sw	ra,36(sp)
    1914:	2606014c 	addiu	a2,s0,332
    1918:	00c02825 	move	a1,a2
    191c:	0c000000 	jal	0 <EnGe1_Init>
    1920:	afa6002c 	sw	a2,44(sp)
    1924:	3c010001 	lui	at,0x1
    1928:	34211e60 	ori	at,at,0x1e60
    192c:	8fa6002c 	lw	a2,44(sp)
    1930:	02212821 	addu	a1,s1,at
    1934:	0c000000 	jal	0 <EnGe1_Init>
    1938:	02202025 	move	a0,s1
    193c:	0c000000 	jal	0 <EnGe1_Init>
    1940:	02002025 	move	a0,s0
    1944:	3c014220 	lui	at,0x4220
    1948:	44810000 	mtc1	at,$f0
    194c:	240e0005 	li	t6,5
    1950:	afae0014 	sw	t6,20(sp)
    1954:	44060000 	mfc1	a2,$f0
    1958:	02202025 	move	a0,s1
    195c:	02002825 	move	a1,s0
    1960:	3c0741c8 	lui	a3,0x41c8
    1964:	0c000000 	jal	0 <EnGe1_Init>
    1968:	e7a00010 	swc1	$f0,16(sp)
    196c:	8e1902b8 	lw	t9,696(s0)
    1970:	02002025 	move	a0,s0
    1974:	0320f809 	jalr	t9
    1978:	00000000 	nop
    197c:	8e1902b4 	lw	t9,692(s0)
    1980:	02002025 	move	a0,s0
    1984:	02202825 	move	a1,s1
    1988:	0320f809 	jalr	t9
    198c:	00000000 	nop
    1990:	960f02ac 	lhu	t7,684(s0)
    1994:	02202825 	move	a1,s1
    1998:	02002025 	move	a0,s0
    199c:	31f80001 	andi	t8,t7,0x1
    19a0:	13000007 	beqz	t8,19c0 <EnGe1_Update+0xc4>
    19a4:	00000000 	nop
    19a8:	0c000000 	jal	0 <EnGe1_Init>
    19ac:	02002025 	move	a0,s0
    19b0:	960802ac 	lhu	t0,684(s0)
    19b4:	3109fffe 	andi	t1,t0,0xfffe
    19b8:	10000003 	b	19c8 <EnGe1_Update+0xcc>
    19bc:	a60902ac 	sh	t1,684(s0)
    19c0:	0c000000 	jal	0 <EnGe1_Init>
    19c4:	02202825 	move	a1,s1
    19c8:	a60002a6 	sh	zero,678(s0)
    19cc:	860202a6 	lh	v0,678(s0)
    19d0:	860302aa 	lh	v1,682(s0)
    19d4:	2404003c 	li	a0,60
    19d8:	a60202a4 	sh	v0,676(s0)
    19dc:	14600003 	bnez	v1,19ec <EnGe1_Update+0xf0>
    19e0:	a60202a2 	sh	v0,674(s0)
    19e4:	10000005 	b	19fc <EnGe1_Update+0x100>
    19e8:	00001025 	move	v0,zero
    19ec:	246affff 	addiu	t2,v1,-1
    19f0:	a60a02aa 	sh	t2,682(s0)
    19f4:	860302aa 	lh	v1,682(s0)
    19f8:	00601025 	move	v0,v1
    19fc:	54400006 	bnezl	v0,1a18 <EnGe1_Update+0x11c>
    1a00:	a60302a8 	sh	v1,680(s0)
    1a04:	0c000000 	jal	0 <EnGe1_Init>
    1a08:	2405003c 	li	a1,60
    1a0c:	a60202aa 	sh	v0,682(s0)
    1a10:	860302aa 	lh	v1,682(s0)
    1a14:	a60302a8 	sh	v1,680(s0)
    1a18:	860b02a8 	lh	t3,680(s0)
    1a1c:	29610003 	slti	at,t3,3
    1a20:	54200003 	bnezl	at,1a30 <EnGe1_Update+0x134>
    1a24:	8fbf0024 	lw	ra,36(sp)
    1a28:	a60002a8 	sh	zero,680(s0)
    1a2c:	8fbf0024 	lw	ra,36(sp)
    1a30:	8fb0001c 	lw	s0,28(sp)
    1a34:	8fb10020 	lw	s1,32(sp)
    1a38:	03e00008 	jr	ra
    1a3c:	27bd0040 	addiu	sp,sp,64

00001a40 <func_80A323B0>:
    1a40:	27bdffe0 	addiu	sp,sp,-32
    1a44:	afa40020 	sw	a0,32(sp)
    1a48:	afbf0014 	sw	ra,20(sp)
    1a4c:	24840198 	addiu	a0,a0,408
    1a50:	0c000000 	jal	0 <EnGe1_Init>
    1a54:	afa4001c 	sw	a0,28(sp)
    1a58:	10400004 	beqz	v0,1a6c <func_80A323B0+0x2c>
    1a5c:	8fa4001c 	lw	a0,28(sp)
    1a60:	8fae0020 	lw	t6,32(sp)
    1a64:	0c000000 	jal	0 <EnGe1_Init>
    1a68:	8dc502b0 	lw	a1,688(t6)
    1a6c:	8fbf0014 	lw	ra,20(sp)
    1a70:	27bd0020 	addiu	sp,sp,32
    1a74:	03e00008 	jr	ra
    1a78:	00000000 	nop

00001a7c <func_80A323EC>:
    1a7c:	27bdffe8 	addiu	sp,sp,-24
    1a80:	afbf0014 	sw	ra,20(sp)
    1a84:	948e02ac 	lhu	t6,684(a0)
    1a88:	00802825 	move	a1,a0
    1a8c:	24840198 	addiu	a0,a0,408
    1a90:	31cf0004 	andi	t7,t6,0x4
    1a94:	55e0000c 	bnezl	t7,1ac8 <func_80A323EC+0x4c>
    1a98:	8fbf0014 	lw	ra,20(sp)
    1a9c:	0c000000 	jal	0 <EnGe1_Init>
    1aa0:	afa50018 	sw	a1,24(sp)
    1aa4:	10400004 	beqz	v0,1ab8 <func_80A323EC+0x3c>
    1aa8:	8fa50018 	lw	a1,24(sp)
    1aac:	94b802ac 	lhu	t8,684(a1)
    1ab0:	37190004 	ori	t9,t8,0x4
    1ab4:	a4b902ac 	sh	t9,684(a1)
    1ab8:	94a802ac 	lhu	t0,684(a1)
    1abc:	35090008 	ori	t1,t0,0x8
    1ac0:	a4a902ac 	sh	t1,684(a1)
    1ac4:	8fbf0014 	lw	ra,20(sp)
    1ac8:	27bd0018 	addiu	sp,sp,24
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop

00001ad4 <func_80A32444>:
    1ad4:	27bdffd8 	addiu	sp,sp,-40
    1ad8:	2401000f 	li	at,15
    1adc:	afbf0014 	sw	ra,20(sp)
    1ae0:	afa40028 	sw	a0,40(sp)
    1ae4:	afa60030 	sw	a2,48(sp)
    1ae8:	14a1000b 	bne	a1,at,1b18 <func_80A32444+0x44>
    1aec:	afa70034 	sw	a3,52(sp)
    1af0:	8fa20038 	lw	v0,56(sp)
    1af4:	8fa3003c 	lw	v1,60(sp)
    1af8:	844e0000 	lh	t6,0(v0)
    1afc:	846f029e 	lh	t7,670(v1)
    1b00:	84590004 	lh	t9,4(v0)
    1b04:	01cfc021 	addu	t8,t6,t7
    1b08:	a4580000 	sh	t8,0(v0)
    1b0c:	8468029c 	lh	t0,668(v1)
    1b10:	03284821 	addu	t1,t9,t0
    1b14:	a4490004 	sh	t1,4(v0)
    1b18:	8fa3003c 	lw	v1,60(sp)
    1b1c:	00001025 	move	v0,zero
    1b20:	24010008 	li	at,8
    1b24:	946402ac 	lhu	a0,684(v1)
    1b28:	308a0008 	andi	t2,a0,0x8
    1b2c:	11400003 	beqz	t2,1b3c <func_80A32444+0x68>
    1b30:	308bfff7 	andi	t3,a0,0xfff7
    1b34:	10000038 	b	1c18 <func_80A32444+0x144>
    1b38:	a46b02ac 	sh	t3,684(v1)
    1b3c:	10a10006 	beq	a1,at,1b58 <func_80A32444+0x84>
    1b40:	00051880 	sll	v1,a1,0x2
    1b44:	2401000a 	li	at,10
    1b48:	10a10003 	beq	a1,at,1b58 <func_80A32444+0x84>
    1b4c:	2401000d 	li	at,13
    1b50:	54a10031 	bnel	a1,at,1c18 <func_80A32444+0x144>
    1b54:	00001025 	move	v0,zero
    1b58:	8fac0028 	lw	t4,40(sp)
    1b5c:	00651823 	subu	v1,v1,a1
    1b60:	000318c0 	sll	v1,v1,0x3
    1b64:	8d8d009c 	lw	t5,156(t4)
    1b68:	00651821 	addu	v1,v1,a1
    1b6c:	00031840 	sll	v1,v1,0x1
    1b70:	246e0814 	addiu	t6,v1,2068
    1b74:	01ae0019 	multu	t5,t6
    1b78:	afa30018 	sw	v1,24(sp)
    1b7c:	00002012 	mflo	a0
    1b80:	00042400 	sll	a0,a0,0x10
    1b84:	0c000000 	jal	0 <EnGe1_Init>
    1b88:	00042403 	sra	a0,a0,0x10
    1b8c:	8fa20038 	lw	v0,56(sp)
    1b90:	3c014348 	lui	at,0x4348
    1b94:	44814000 	mtc1	at,$f8
    1b98:	844f0002 	lh	t7,2(v0)
    1b9c:	8fa30018 	lw	v1,24(sp)
    1ba0:	46080282 	mul.s	$f10,$f0,$f8
    1ba4:	448f2000 	mtc1	t7,$f4
    1ba8:	246a0940 	addiu	t2,v1,2368
    1bac:	468021a0 	cvt.s.w	$f6,$f4
    1bb0:	460a3400 	add.s	$f16,$f6,$f10
    1bb4:	4600848d 	trunc.w.s	$f18,$f16
    1bb8:	44199000 	mfc1	t9,$f18
    1bbc:	00000000 	nop
    1bc0:	a4590002 	sh	t9,2(v0)
    1bc4:	8fa80028 	lw	t0,40(sp)
    1bc8:	8d09009c 	lw	t1,156(t0)
    1bcc:	012a0019 	multu	t1,t2
    1bd0:	00002012 	mflo	a0
    1bd4:	00042400 	sll	a0,a0,0x10
    1bd8:	0c000000 	jal	0 <EnGe1_Init>
    1bdc:	00042403 	sra	a0,a0,0x10
    1be0:	8fa20038 	lw	v0,56(sp)
    1be4:	3c014348 	lui	at,0x4348
    1be8:	44813000 	mtc1	at,$f6
    1bec:	844b0004 	lh	t3,4(v0)
    1bf0:	46060282 	mul.s	$f10,$f0,$f6
    1bf4:	448b2000 	mtc1	t3,$f4
    1bf8:	00000000 	nop
    1bfc:	46802220 	cvt.s.w	$f8,$f4
    1c00:	460a4400 	add.s	$f16,$f8,$f10
    1c04:	4600848d 	trunc.w.s	$f18,$f16
    1c08:	440d9000 	mfc1	t5,$f18
    1c0c:	00000000 	nop
    1c10:	a44d0004 	sh	t5,4(v0)
    1c14:	00001025 	move	v0,zero
    1c18:	8fbf0014 	lw	ra,20(sp)
    1c1c:	27bd0028 	addiu	sp,sp,40
    1c20:	03e00008 	jr	ra
    1c24:	00000000 	nop

00001c28 <func_80A32598>:
    1c28:	27bdffc8 	addiu	sp,sp,-56
    1c2c:	afbf0014 	sw	ra,20(sp)
    1c30:	afa40038 	sw	a0,56(sp)
    1c34:	afa5003c 	sw	a1,60(sp)
    1c38:	afa60040 	sw	a2,64(sp)
    1c3c:	afa70044 	sw	a3,68(sp)
    1c40:	8c850000 	lw	a1,0(a0)
    1c44:	3c060000 	lui	a2,0x0
    1c48:	24c60000 	addiu	a2,a2,0
    1c4c:	27a40020 	addiu	a0,sp,32
    1c50:	2407058b 	li	a3,1419
    1c54:	0c000000 	jal	0 <EnGe1_Init>
    1c58:	afa50030 	sw	a1,48(sp)
    1c5c:	8faf003c 	lw	t7,60(sp)
    1c60:	2401000f 	li	at,15
    1c64:	8fa80030 	lw	t0,48(sp)
    1c68:	15e10010 	bne	t7,at,1cac <func_80A32598+0x84>
    1c6c:	8fa60048 	lw	a2,72(sp)
    1c70:	8d0302c0 	lw	v1,704(t0)
    1c74:	3c19de00 	lui	t9,0xde00
    1c78:	3c0b0000 	lui	t3,0x0
    1c7c:	24780008 	addiu	t8,v1,8
    1c80:	ad1802c0 	sw	t8,704(t0)
    1c84:	ac790000 	sw	t9,0(v1)
    1c88:	90c902ae 	lbu	t1,686(a2)
    1c8c:	3c040000 	lui	a0,0x0
    1c90:	24840000 	addiu	a0,a0,0
    1c94:	00095080 	sll	t2,t1,0x2
    1c98:	016a5821 	addu	t3,t3,t2
    1c9c:	8d6b0000 	lw	t3,0(t3)
    1ca0:	24c50038 	addiu	a1,a2,56
    1ca4:	0c000000 	jal	0 <EnGe1_Init>
    1ca8:	ac6b0004 	sw	t3,4(v1)
    1cac:	8fac0038 	lw	t4,56(sp)
    1cb0:	3c060000 	lui	a2,0x0
    1cb4:	24c60000 	addiu	a2,a2,0
    1cb8:	27a40020 	addiu	a0,sp,32
    1cbc:	24070593 	li	a3,1427
    1cc0:	0c000000 	jal	0 <EnGe1_Init>
    1cc4:	8d850000 	lw	a1,0(t4)
    1cc8:	8fbf0014 	lw	ra,20(sp)
    1ccc:	27bd0038 	addiu	sp,sp,56
    1cd0:	03e00008 	jr	ra
    1cd4:	00000000 	nop

00001cd8 <EnGe1_Draw>:
    1cd8:	27bdffa8 	addiu	sp,sp,-88
    1cdc:	afbf002c 	sw	ra,44(sp)
    1ce0:	afb00028 	sw	s0,40(sp)
    1ce4:	afa5005c 	sw	a1,92(sp)
    1ce8:	8ca50000 	lw	a1,0(a1)
    1cec:	00808025 	move	s0,a0
    1cf0:	3c060000 	lui	a2,0x0
    1cf4:	24c60000 	addiu	a2,a2,0
    1cf8:	27a4003c 	addiu	a0,sp,60
    1cfc:	240705a2 	li	a3,1442
    1d00:	0c000000 	jal	0 <EnGe1_Init>
    1d04:	afa5004c 	sw	a1,76(sp)
    1d08:	8faf005c 	lw	t7,92(sp)
    1d0c:	0c000000 	jal	0 <EnGe1_Init>
    1d10:	8de40000 	lw	a0,0(t7)
    1d14:	8fa5004c 	lw	a1,76(sp)
    1d18:	3c19db06 	lui	t9,0xdb06
    1d1c:	37390020 	ori	t9,t9,0x20
    1d20:	8ca302c0 	lw	v1,704(a1)
    1d24:	3c040000 	lui	a0,0x0
    1d28:	3c0e0000 	lui	t6,0x0
    1d2c:	24780008 	addiu	t8,v1,8
    1d30:	acb802c0 	sw	t8,704(a1)
    1d34:	ac790000 	sw	t9,0(v1)
    1d38:	860802a8 	lh	t0,680(s0)
    1d3c:	3c0100ff 	lui	at,0xff
    1d40:	3421ffff 	ori	at,at,0xffff
    1d44:	00084880 	sll	t1,t0,0x2
    1d48:	00892021 	addu	a0,a0,t1
    1d4c:	8c840000 	lw	a0,0(a0)
    1d50:	3c080000 	lui	t0,0x0
    1d54:	3c190000 	lui	t9,0x0
    1d58:	00045900 	sll	t3,a0,0x4
    1d5c:	000b6702 	srl	t4,t3,0x1c
    1d60:	000c6880 	sll	t5,t4,0x2
    1d64:	01cd7021 	addu	t6,t6,t5
    1d68:	8dce0000 	lw	t6,0(t6)
    1d6c:	00815024 	and	t2,a0,at
    1d70:	3c018000 	lui	at,0x8000
    1d74:	014e7821 	addu	t7,t2,t6
    1d78:	01e1c021 	addu	t8,t7,at
    1d7c:	ac780004 	sw	t8,4(v1)
    1d80:	9207019a 	lbu	a3,410(s0)
    1d84:	8e0601b8 	lw	a2,440(s0)
    1d88:	8e05019c 	lw	a1,412(s0)
    1d8c:	27390000 	addiu	t9,t9,0
    1d90:	25080000 	addiu	t0,t0,0
    1d94:	afa80014 	sw	t0,20(sp)
    1d98:	afb90010 	sw	t9,16(sp)
    1d9c:	afb00018 	sw	s0,24(sp)
    1da0:	0c000000 	jal	0 <EnGe1_Init>
    1da4:	8fa4005c 	lw	a0,92(sp)
    1da8:	8fa9005c 	lw	t1,92(sp)
    1dac:	3c060000 	lui	a2,0x0
    1db0:	24c60000 	addiu	a2,a2,0
    1db4:	27a4003c 	addiu	a0,sp,60
    1db8:	240705b3 	li	a3,1459
    1dbc:	0c000000 	jal	0 <EnGe1_Init>
    1dc0:	8d250000 	lw	a1,0(t1)
    1dc4:	8fbf002c 	lw	ra,44(sp)
    1dc8:	8fb00028 	lw	s0,40(sp)
    1dcc:	27bd0058 	addiu	sp,sp,88
    1dd0:	03e00008 	jr	ra
    1dd4:	00000000 	nop
	...
